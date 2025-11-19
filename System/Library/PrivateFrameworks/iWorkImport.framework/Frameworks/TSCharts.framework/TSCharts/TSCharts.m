float32x4_t sub_2761526F4@<Q0>(uint64_t a1@<X0>, float32x2_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  v6.i64[0] = *a1;
  v7 = *(a1 + 8);
  v8 = vcgt_f32(*v6.f32, *&v7);
  if ((v8.i32[0] | v8.i32[1]) & 1) != 0 || (v8 = *a2, v9 = a2[1], v10 = vcgt_f32(v8, v9), ((v10.i32[0] | v10.i32[1])))
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, *v6.i64, v7, *&v8, "sourceType TSCH3D::Math::CommonFunctions::toGlobal(const sourceType &, const boxType &) [sourceType = TSCH3D::Math::ExtendedTypesDetails::box<glm::detail::tvec2<float>>, boxType = TSCH3D::Math::ExtendedTypesDetails::box<glm::detail::tvec2<float>>]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMath.h");
    v18 = MEMORY[0x277CCACA8];
    sub_276152EB4(a1, v19, v20, v21, v22, v23, v24, v25);
    if (v56 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v18, v26, v27, v28, v29, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v18, v26, v27, v28, v29, __p[0]);
    }
    v37 = ;
    if (v56 < 0)
    {
      operator delete(__p[0]);
    }

    v38 = MEMORY[0x277CCACA8];
    sub_276152EB4(a2, v30, v31, v32, v33, v34, v35, v36);
    if (v56 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v38, v39, v40, v41, v42, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v38, v39, v40, v41, v42, __p[0]);
    }
    v44 = ;
    if (v56 < 0)
    {
      operator delete(__p[0]);
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v43, v45, v46, v47, v12, v17, 1006, 0, "invalid source %@ space %@", v37, v44);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50, v51);
    v6 = *a1;
    v8 = *a2;
    v9 = a2[1];
  }

  else
  {
    v6.i64[1] = *(a1 + 8);
  }

  *v52.f32 = v8;
  *&v52.u32[2] = v8;
  *v53.f32 = vsub_f32(v9, v8);
  v53.i64[1] = v53.i64[0];
  result = vaddq_f32(v52, vmulq_f32(v6, v53));
  *a3 = result;
  return result;
}

void sub_27615294C(uint64_t a1@<X0>, uint64_t a2@<X1>, int8x8_t *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  LODWORD(a5) = *a1;
  LODWORD(a4) = *(a1 + 4);
  LODWORD(a6) = *(a1 + 8);
  LODWORD(a7) = *(a1 + 12);
  v10 = *&a6 < *a1 || *&a7 < *&a4;
  if (v10 || (v56 = *a2, LODWORD(a6) = *(a2 + 4), (LODWORD(a7) = *(a2 + 8), v52 = *(a2 + 12), *&a7 < v56) || v52 < *&a6))
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a4, a5, a6, "box2 TSCH3D::Math::CommonFunctions::toFlippedGlobal(const box2 &, const box2 &)", a7);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMath.h");
    v18 = MEMORY[0x277CCACA8];
    sub_276152EB4(a1, v19, v20, v21, v22, v23, v24, v25);
    if (v58 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v18, v26, v27, v28, v29, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v18, v26, v27, v28, v29, __p[0]);
    }
    v37 = ;
    if (v58 < 0)
    {
      operator delete(__p[0]);
    }

    v38 = MEMORY[0x277CCACA8];
    sub_276152EB4(a2, v30, v31, v32, v33, v34, v35, v36);
    if (v58 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v38, v39, v40, v41, v42, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v38, v39, v40, v41, v42, __p[0]);
    }
    v44 = ;
    if (v58 < 0)
    {
      operator delete(__p[0]);
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v43, v45, v46, v47, v12, v17, 1032, 0, "invalid source %@ space %@", v37, v44);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50, v51);
    LODWORD(a7) = *(a2 + 8);
    v52 = *(a2 + 12);
    v56 = *a2;
    LODWORD(a6) = *(a2 + 4);
    LODWORD(a5) = *a1;
    LODWORD(a4) = *(a1 + 4);
  }

  v53 = *&a7 - v56;
  v54 = v52 - *&a6;
  *a3->i8 = xmmword_2764D5EE0;
  *__p = v56 + ((*&a7 - v56) * *&a5);
  *(__p + 1) = v52 - ((v52 - *&a6) * *&a4);
  sub_276152BD8(a3, __p);
  v55 = v52 - (v54 * *(a1 + 12));
  *__p = v56 + (v53 * *(a1 + 8));
  *(__p + 1) = v55;
  sub_276152BD8(a3, __p);
}

int8x8_t sub_276152BD8(int8x8_t *a1, float32x2_t *a2)
{
  result = *a1;
  v3 = a1[1];
  v4 = vcgt_f32(result, v3);
  if ((v4.i32[0] | v4.i32[1]))
  {
    a1->i32[0] = a2->i32[0];
    a1->i32[1] = a2->i32[1];
    a1[1].i32[0] = a2->i32[0];
    result.i32[0] = a2->i32[1];
    a1[1].i32[1] = result.i32[0];
  }

  else
  {
    *a1 = vbsl_s8(vcgt_f32(*a2, result), result, *a2);
    result = vbsl_s8(vcgt_f32(v3, *a2), v3, *a2);
    a1[1] = result;
  }

  return result;
}

float32x4_t sub_276152C5C@<Q0>(uint64_t a1@<X0>, float32x2_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  v6.i64[0] = *a1;
  v7 = *(a1 + 8);
  v8 = vcge_f32(*v6.f32, *&v7);
  if ((v8.i32[0] | v8.i32[1]) & 1) != 0 || (v8 = *a2, v9 = a2[1], v10 = vcge_f32(v8, v9), ((v10.i32[0] | v10.i32[1])))
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, *v6.i64, *&v8, v7, "sourceType TSCH3D::Math::CommonFunctions::toLocal(const sourceType &, const boxType &) [sourceType = TSCH3D::Math::ExtendedTypesDetails::box<glm::detail::tvec2<float>>, boxType = TSCH3D::Math::ExtendedTypesDetails::box<glm::detail::tvec2<float>>]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMath.h");
    v18 = MEMORY[0x277CCACA8];
    sub_276152EB4(a1, v19, v20, v21, v22, v23, v24, v25);
    if (v56 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v18, v26, v27, v28, v29, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v18, v26, v27, v28, v29, __p[0]);
    }
    v37 = ;
    if (v56 < 0)
    {
      operator delete(__p[0]);
    }

    v38 = MEMORY[0x277CCACA8];
    sub_276152EB4(a2, v30, v31, v32, v33, v34, v35, v36);
    if (v56 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v38, v39, v40, v41, v42, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v38, v39, v40, v41, v42, __p[0]);
    }
    v44 = ;
    if (v56 < 0)
    {
      operator delete(__p[0]);
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v43, v45, v46, v47, v12, v17, 1013, 0, "invalid source %@ space %@", v37, v44);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50, v51);
    v6 = *a1;
    v8 = *a2;
    v9 = a2[1];
  }

  else
  {
    v6.i64[1] = *(a1 + 8);
  }

  *v52.f32 = v8;
  *&v52.u32[2] = v8;
  *v53.f32 = vsub_f32(v9, v8);
  v53.i64[1] = v53.i64[0];
  result = vdivq_f32(vsubq_f32(v6, v52), v53);
  *a3 = result;
  return result;
}

void sub_276152EB4(float *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = *a1;
  sub_276152FD4("vec2(%f, %f)", a2, a3, a4, a5, a6, a7, a8, SLOBYTE(v23));
  v24 = (a1[2] - *a1);
  sub_276152FD4("vec2(%f, %f)", v9, v10, v11, v12, v13, v14, v15, SLOBYTE(v24));
  sub_276152FD4("box%u(%s, %s)", v16, v17, v18, v19, v20, v21, v22, 2);
  if (v26 < 0)
  {
    operator delete(__p);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }
}

void sub_276152FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

const char *sub_276152FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  result = MEMORY[0x28223BE20]();
  v11 = v10;
  v14 = *MEMORY[0x277D85DE8];
  if (result)
  {
    vsnprintf(__str, 0x1000uLL, result, &a9);
    result = strlen(__str);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_2761530FC();
    }

    v12 = result;
    if (result >= 0x17)
    {
      operator new();
    }

    *(v11 + 23) = result;
    if (result)
    {
      result = memcpy(v11, __str, result);
    }

    v12[v11] = 0;
  }

  else
  {
    *v10 = 0;
    v10[1] = 0;
    v10[2] = 0;
  }

  return result;
}

void sub_276153114(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_276153170(exception, a1);
  __cxa_throw(exception, off_27A6B6240, MEMORY[0x277D825F0]);
}

std::logic_error *sub_276153170(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

float32x4_t sub_276154554@<Q0>(uint64_t a1@<X0>, float32x4_t *a2@<X8>)
{
  v4 = *(a1 + 56);
  v3 = *(a1 + 60);
  v5 = *(a1 + 40);
  v6 = *(a1 + 44);
  v7 = (v5 * v3) - (v4 * v6);
  v8 = *(a1 + 48);
  v2.i32[0] = *(a1 + 52);
  v10 = *(a1 + 32);
  v9 = *(a1 + 36);
  v11 = (v9 * v3) - (*v2.i32 * v6);
  v12 = (v9 * v4) - (*v2.i32 * v5);
  v13 = (v10 * v3) - (v8 * v6);
  v14 = (v10 * v4) - (v8 * v5);
  v15 = (v10 * *v2.i32) - (v8 * v9);
  v16 = *(a1 + 24);
  v17 = *(a1 + 28);
  v18 = (v16 * v3) - (v4 * v17);
  v20 = *(a1 + 16);
  v19 = *(a1 + 20);
  v21 = (v19 * v3) - (*v2.i32 * v17);
  v22 = (v19 * v4) - (*v2.i32 * v16);
  v23 = (v20 * v3) - (v8 * v17);
  v24 = (v20 * v4) - (v8 * v16);
  *v2.i32 = (v20 * *v2.i32) - (v8 * v19);
  v25 = (v16 * v6) - (v5 * v17);
  v26 = (v19 * v6) - (v9 * v17);
  v27 = (v19 * v5) - (v9 * v16);
  v28 = (v20 * v6) - (v10 * v17);
  v29 = (v20 * v5) - (v10 * v16);
  v30 = (v20 * v9) - (v10 * v19);
  v31.f32[0] = ((v19 * v7) - (v16 * v11)) + (v17 * v12);
  v32 = ((v20 * v7) - (v16 * v13)) + (v17 * v14);
  v33 = ((v20 * v11) - (v19 * v13)) + (v17 * v15);
  v34 = ((v20 * v12) - (v19 * v14)) + (v16 * v15);
  v36 = *(a1 + 8);
  v35 = *(a1 + 12);
  v37 = *(a1 + 4);
  v38.f32[0] = -(((v37 * v7) - (v36 * v11)) + (v35 * v12));
  v39 = ((*a1 * v7) - (v36 * v13)) + (v35 * v14);
  *&v40 = -(((*a1 * v11) - (v37 * v13)) + (v35 * v15));
  *&v41 = ((*a1 * v12) - (v37 * v14)) + (v36 * v15);
  v42.f32[0] = ((v37 * v18) - (v36 * v21)) + (v35 * v22);
  v43 = -(((*a1 * v18) - (v36 * v23)) + (v35 * v24));
  *&v44 = ((*a1 * v21) - (v37 * v23)) + (v35 * *v2.i32);
  *&v45 = -(((*a1 * v22) - (v37 * v24)) + (v36 * *v2.i32));
  v46.f32[0] = -(((v37 * v25) - (v36 * v26)) + (v35 * v27));
  v47 = ((*a1 * v25) - (v36 * v28)) + (v35 * v29);
  *&v48 = -(((*a1 * v26) - (v37 * v28)) + (v35 * v30));
  *&v49 = ((*a1 * v27) - (v37 * v29)) + (v36 * v30);
  *v2.i32 = (((*a1 * v31.f32[0]) - (v32 * v37)) + (v36 * v33)) - (v35 * v34);
  v31.f32[1] = -v32;
  v31.f32[2] = v33;
  v31.f32[3] = -v34;
  v50 = vdupq_lane_s32(v2, 0);
  v38.f32[1] = v39;
  v38.i64[1] = __PAIR64__(v41, v40);
  *a2 = vdivq_f32(v31, v50);
  a2[1] = vdivq_f32(v38, v50);
  v42.f32[1] = v43;
  v42.i64[1] = __PAIR64__(v45, v44);
  v46.f32[1] = v47;
  v46.i64[1] = __PAIR64__(v49, v48);
  result = vdivq_f32(v42, v50);
  a2[2] = result;
  a2[3] = vdivq_f32(v46, v50);
  return result;
}

float32_t sub_276154744@<S0>(uint64_t a1@<X0>, float32x2_t *a2@<X1>, float32x2_t *a3@<X8>, double a4@<D2>)
{
  v5 = *a1;
  v6 = *(a1 + 4);
  LODWORD(a4) = *(a1 + 8);
  v7 = *a2;
  v8 = a2[2];
  v9 = a2[4];
  v10 = a2[6];
  v11 = a2[1].f32[0];
  v12 = a2[3].f32[0];
  v13 = a2[5].f32[0];
  v14 = a2[7].f32[0];
  v15 = a2[7].f32[1] + (((v6 * a2[3].f32[1]) + (a2[1].f32[1] * *a1)) + (a2[5].f32[1] * *&a4));
  if (v15 != 1.0)
  {
    v16 = v15;
    v17 = fabs(v15 + -1.0);
    if (v17 >= 0.000000999999997)
    {
      v34 = *(a1 + 4);
      v35 = a2[4];
      v36 = *a1;
      v37 = *(a1 + 8);
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v17, 0.000000999999997, a4, "vec3 TSCH3D::Math::CommonFunctions::apply(vec3cref, mat4cref)");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMath.h");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v26, v27, v28, v19, v24, 197, 0, "w must be 1 but got %f", *&v16);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
      v5 = v36;
      LODWORD(a4) = v37;
      v9 = v35;
      v6 = v34;
    }
  }

  result = v14 + (((v6 * v12) + (v11 * v5)) + (v13 * *&a4));
  *a3 = vadd_f32(v10, vmla_n_f32(vmla_n_f32(vmul_n_f32(v8, v6), v7, v5), v9, *&a4));
  a3[1].f32[0] = result;
  return result;
}

BOOL sub_2761548CC(float *a1, void *a2, float32x2_t *a3)
{
  v3 = *(a2 + 12);
  v4 = a1[1];
  v5 = *(a2 + 5);
  v6 = a1[2];
  v7 = (vmuls_lane_f32(v4, v3, 1) + (v3.f32[0] * *a1)) + (v5 * v6);
  if (v7 != 0.0)
  {
    v8 = *(a2 + 2);
    v9 = (a1[3] - ((vmuls_lane_f32(v4, *a2, 1) + (*a1 * COERCE_FLOAT(*a2))) + (v6 * v8))) / v7;
    *a3 = vadd_f32(*a2, vmul_n_f32(v3, v9));
    a3[1].f32[0] = v8 + (v5 * v9);
  }

  return v7 != 0.0;
}

uint64_t *sub_276154934(uint64_t *result, uint64_t a2)
{
  v2 = 0;
  v7 = *result;
  v8 = *(result + 2);
  v5 = *(result + 12);
  v6 = *(result + 5);
  do
  {
    for (i = 0; i != 3; ++i)
    {
      if ((v2 >> i))
      {
        v4 = &v7;
      }

      else
      {
        v4 = &v5;
      }

      *(a2 + 4 * i) = *(v4 + i);
    }

    ++v2;
    a2 += 12;
  }

  while (v2 != 8);
  return result;
}

uint64_t sub_2761549A0(float32x2_t *a1, float *a2, float *a3, float *a4, float32x2_t *a5, float *a6, BOOL *a7)
{
  v7 = a2[1];
  v8 = *a3 - *a2;
  v9 = a3[1] - v7;
  v10 = a2[2];
  v11 = a3[2] - v10;
  v12 = *a4 - *a2;
  v13 = a4[1] - v7;
  v14 = a4[2] - v10;
  v16 = a1[2].f32[0];
  v15 = a1[2].f32[1];
  v17 = a1[1].f32[1];
  v18 = (v16 * v14) - (v13 * v15);
  v19 = (v15 * v12) - (v14 * v17);
  v20 = (v17 * v13) - (v12 * v16);
  v21 = ((v9 * v19) + (v8 * v18)) + (v11 * v20);
  if (fabsf(v21) <= 0.00000011921)
  {
    return 0;
  }

  if (a7)
  {
    *a7 = v21 > 0.0;
  }

  v22 = 1.0 / v21;
  v23 = COERCE_FLOAT(*a1) - *a2;
  v24 = COERCE_FLOAT(HIDWORD(*a1)) - a2[1];
  v25 = a1[1].f32[0];
  v26 = v25 - a2[2];
  v27 = (1.0 / v21) * (((v19 * v24) + (v23 * v18)) + (v26 * v20));
  if (v27 < 0.0 || v27 > 1.0)
  {
    return 0;
  }

  v29 = (v24 * v11) - (v9 * v26);
  v30 = (v26 * v8) - (v11 * v23);
  v31 = (v23 * v9) - (v8 * v24);
  v32 = *(a1 + 12);
  v33 = a1[2].f32[1];
  v34 = v22 * ((vmuls_lane_f32(v30, v32, 1) + (v32.f32[0] * v29)) + (v33 * v31));
  if (v34 < 0.0 || (v27 + v34) > 1.0)
  {
    return 0;
  }

  if (a5)
  {
    v37 = v22 * (((v13 * v30) + (v12 * v29)) + (v14 * v31));
    *a5 = vadd_f32(*a1, vmul_n_f32(v32, v37));
    a5[1].f32[0] = v25 + (v37 * v33);
  }

  if (a6)
  {
    *a6 = (1.0 - v27) - v34;
    a6[1] = v27;
    a6[2] = v34;
  }

  return 1;
}

float sub_276154AF4@<S0>(float *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D1>)
{
  *&a4 = a1[1] + a1[1];
  v24 = (*a1 + *a1) + -1.0;
  v23 = *&a4 + -1.0;
  sub_276154C0C(a2, &v25, a4);
  v5 = (v23 * v27) + (v25.f32[2] * v24);
  v6 = (v23 * v28) + (v25.f32[3] * v24);
  *v7.i32 = v34 + (v6 - v31);
  v8 = (v33 + (v5 - v30)) / *v7.i32;
  *v9.i32 = v34 + (v31 + v6);
  v10 = (v33 + (v30 + v5)) / *v9.i32;
  v11 = vmla_n_f32(vmul_n_f32(v26, v23), *v25.f32, v24);
  __asm { FMOV            V6.2S, #-1.0 }

  v17 = vadd_f32(v29, v11);
  v18 = v32;
  v19 = vdiv_f32(vadd_f32(v32, vmla_f32(v11, _D6, v29)), vdup_lane_s32(v7, 0));
  *a3 = v19;
  *(a3 + 8) = v8;
  v20 = v10 - v8;
  v21 = vsub_f32(vdiv_f32(vadd_f32(v18, v17), vdup_lane_s32(v9, 0)), v19);
  v18.f32[0] = 1.0 / sqrtf((COERCE_FLOAT(vmul_f32(v21, v21).i32[1]) + (v21.f32[0] * v21.f32[0])) + (v20 * v20));
  result = v20 * v18.f32[0];
  *(a3 + 12) = vmul_n_f32(v21, v18.f32[0]);
  *(a3 + 20) = result;
  return result;
}

float32x4_t sub_276154C0C@<Q0>(uint64_t a1@<X0>, float32x4_t *a2@<X8>, double a3@<D1>)
{
  v3 = *(a1 + 56);
  LODWORD(a3) = *(a1 + 60);
  v4 = *(a1 + 40);
  v5 = *(a1 + 44);
  v6 = (v4 * *&a3) - (v3 * v5);
  v7 = *(a1 + 24);
  v8 = *(a1 + 28);
  v9 = (v7 * *&a3) - (v3 * v8);
  v10 = (v7 * v5) - (v4 * v8);
  v12 = *(a1 + 48);
  v11 = *(a1 + 52);
  v14 = *(a1 + 32);
  v13 = *(a1 + 36);
  v15 = (v13 * *&a3) - (v11 * v5);
  v17 = *(a1 + 16);
  v16 = *(a1 + 20);
  v18 = (v16 * *&a3) - (v11 * v8);
  v19 = (v16 * v5) - (v13 * v8);
  v20 = (v13 * v3) - (v11 * v4);
  v21 = (v16 * v3) - (v11 * v7);
  v22 = (v16 * v4) - (v13 * v7);
  v23 = (v14 * *&a3) - (v12 * v5);
  v24 = (v17 * *&a3) - (v12 * v8);
  v25 = (v17 * v5) - (v14 * v8);
  v26 = (v14 * v3) - (v12 * v4);
  v27 = (v17 * v3) - (v12 * v7);
  v28 = (v17 * v4) - (v14 * v7);
  v29 = (v14 * v11) - (v12 * v13);
  v30 = (v17 * v11) - (v12 * v16);
  v31 = (v17 * v13) - (v14 * v16);
  v32 = *(a1 + 4);
  v33 = *(a1 + 8);
  LODWORD(a3) = *(a1 + 12);
  v34.f32[0] = (v8 * v20) + ((v6 * v16) - (v7 * v15));
  v35 = ((v6 * v32) - (v15 * v33)) + (v20 * *&a3);
  v36 = ((v9 * v32) - (v18 * v33)) + (v21 * *&a3);
  v53 = ((v10 * v32) - (v19 * v33)) + (v22 * *&a3);
  v37 = (v8 * v26) + ((v6 * v17) - (v7 * v23));
  v38 = ((v6 * *a1) - (v23 * v33)) + (v26 * *&a3);
  v39 = ((v10 * *a1) - (v25 * v33)) + (v28 * *&a3);
  v40 = (v18 * *a1) - (v24 * v32);
  v41.f32[0] = (v8 * v29) + ((v15 * v17) - (v16 * v23));
  v42 = ((v15 * *a1) - (v23 * v32)) + (v29 * *&a3);
  v43 = v40 + (v30 * *&a3);
  v44 = ((v19 * *a1) - (v25 * v32)) + (v31 * *&a3);
  v45 = (v7 * v29) + ((v20 * v17) - (v16 * v26));
  v46 = ((v20 * *a1) - (v26 * v32)) + (v29 * v33);
  v47 = ((v21 * *a1) - (v27 * v32)) + (v30 * v33);
  v34.f32[1] = -v35;
  v48 = ((v22 * *a1) - (v28 * v32)) + (v31 * v33);
  v34.f32[2] = v36;
  v34.f32[3] = -v53;
  v49.f32[0] = -v37;
  v49.f32[1] = v38;
  v49.f32[2] = -(((v9 * *a1) - (v24 * v33)) + (v27 * *&a3));
  v49.f32[3] = v39;
  v41.f32[1] = -v42;
  *&a3 = (((*a1 * v34.f32[0]) - (v37 * v32)) + (v33 * v41.f32[0])) - (*&a3 * v45);
  v50 = vdupq_lane_s32(*&a3, 0);
  *a2 = vdivq_f32(v34, v50);
  a2[1] = vdivq_f32(v49, v50);
  v41.f32[2] = v43;
  v41.f32[3] = -v44;
  v51.f32[0] = -v45;
  v51.f32[1] = v46;
  v51.f32[2] = -v47;
  v51.f32[3] = v48;
  result = vdivq_f32(v41, v50);
  a2[2] = result;
  a2[3] = vdivq_f32(v51, v50);
  return result;
}

float sub_276154EAC@<S0>(float *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_276155178(a1);
  if (a2 > 7 || v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "value_type TSCH3D::Math::ExtendedTypesDetails::box<glm::detail::tvec3<float>>::pointAtIndex(NSUInteger) const [T = glm::detail::tvec3<float>]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMath.h");
    if (sub_276155178(a1))
    {
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 459, 0, "invalid index %lu >= %lu", a2, 0);
    }

    else
    {
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 459, 0, "invalid index %lu >= %lu", a2, 8);
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  do
  {
    if ((a2 >> v26))
    {
      v27 = 0;
    }

    else
    {
      v27 = 3;
    }

    result = a1[v27 + v26];
    *(a3 + 4 * v26++) = result;
  }

  while (v26 != 3);
  return result;
}

uint64_t sub_276154FD8(uint64_t a1, float32x2_t *a2)
{
  if (sub_276155178(a1))
  {
    *a1 = a2->i32[0];
    *(a1 + 4) = a2->i32[1];
    *(a1 + 8) = a2[1].i32[0];
    *(a1 + 12) = a2->i32[0];
    *(a1 + 16) = a2->i32[1];
    v4 = a2[1].f32[0];
  }

  else
  {
    v5 = *(a1 + 8);
    if (v5 >= a2[1].f32[0])
    {
      v5 = a2[1].f32[0];
    }

    *a1 = vbsl_s8(vcgt_f32(*a2, *a1), *a1, *a2);
    *(a1 + 8) = v5;
    v4 = *(a1 + 20);
    if (v4 <= a2[1].f32[0])
    {
      v4 = a2[1].f32[0];
    }

    *(a1 + 12) = vbsl_s8(vcgt_f32(*(a1 + 12), *a2), *(a1 + 12), *a2);
  }

  *(a1 + 20) = v4;
  return a1;
}

BOOL sub_276155088(float32x2_t *a1, float *a2, float32x2_t *a3, float32x2_t *a4, float a5)
{
  v5 = a1[1].f32[0];
  v6 = *a1;
  v7 = *(a1 + 12);
  v8 = a1[2].f32[1];
  LODWORD(v9) = HIDWORD(*a1);
  v10 = a2[1];
  v11 = a2[2];
  v12 = ((vmuls_lane_f32(v9, v7, 1) + (COERCE_FLOAT(*a1) * v7.f32[0])) + (v5 * v8)) - ((vmuls_lane_f32(v10, v7, 1) + (*a2 * v7.f32[0])) + (v11 * v8));
  v13 = v12 + v12;
  v14 = ((((((vmuls_lane_f32(v9, *a1, 1) + (v6.f32[0] * v6.f32[0])) + (v5 * v5)) + (((v10 * v10) + (*a2 * *a2)) + (v11 * v11))) + (((vmuls_lane_f32(v10, *a1, 1) + (COERCE_FLOAT(*a1) * *a2)) + (v5 * v11)) * -2.0)) - (a5 * a5)) * -4.0) + (v13 * v13);
  if (v14 >= 0.0)
  {
    v15 = sqrtf(v14);
    v16 = (v15 - v13) * 0.5;
    v17 = -v13 - v15;
    v18 = v17 * 0.5;
    v19 = v16 <= (v17 * 0.5);
    if (v16 <= (v17 * 0.5))
    {
      v20 = v17 * 0.5;
    }

    else
    {
      v20 = v16;
    }

    if (a3)
    {
      if (!v19)
      {
        v16 = v18;
      }

      *a3 = vadd_f32(v6, vmul_n_f32(v7, v16));
      a3[1].f32[0] = v5 + (v8 * v16);
    }

    if (a4)
    {
      *a4 = vadd_f32(v6, vmul_n_f32(v7, v20));
      a4[1].f32[0] = v5 + (v8 * v20);
    }
  }

  return v14 >= 0.0;
}

uint64_t sub_276155178(float *a1)
{
  if (sub_2761551FC())
  {
    v2 = 1;
  }

  else
  {
    v3 = v8;
    v4 = 3;
    do
    {
      v5 = a1[3];
      v6 = *a1++;
      *v3++ = v5 < v6;
      --v4;
    }

    while (v4);
    v2 = 0;
    do
    {
      if (v2)
      {
        v2 = 1;
      }

      else
      {
        v2 = v8[v4];
      }

      ++v4;
    }

    while (v4 != 3);
  }

  return v2 & 1;
}

uint64_t sub_2761551FC()
{
  v0 = 0;
  v1 = 0;
  v6[0] = 0;
  v6[1] = 0;
  v6[2] = 0;
  do
  {
    while ((v1 & 1) != 0)
    {
      ++v0;
      v1 = 1;
      if (v0 == 3)
      {
        goto LABEL_7;
      }
    }

    v1 = v6[v0++];
  }

  while (v0 != 3);
  if (v1)
  {
LABEL_7:
    v2 = 1;
    return v2 & 1;
  }

  v3 = 0;
  v2 = 0;
  v5[0] = 0;
  v5[1] = 0;
  v5[2] = 0;
  do
  {
    if (v2)
    {
      v2 = 1;
    }

    else
    {
      v2 = v5[v3];
    }

    ++v3;
  }

  while (v3 != 3);
  return v2 & 1;
}

float32x4_t sub_2761558A0@<Q0>(float32x4_t *a1@<X0>, uint64_t a2@<X1>, float32x4_t *a3@<X8>)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 36);
  v6 = *(a2 + 40);
  v7 = *(a2 + 44);
  v8 = *(a2 + 52);
  v9 = *(a2 + 56);
  v10 = *(a2 + 60);
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  v15 = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*a1, COERCE_FLOAT(*(a2 + 16))), vmulq_n_f32(v12, COERCE_FLOAT(*(a2 + 20)))), vmulq_n_f32(v13, COERCE_FLOAT(*(a2 + 24)))), vmulq_n_f32(v14, COERCE_FLOAT(*(a2 + 28))));
  *a3 = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*a1, COERCE_FLOAT(*a2)), vmulq_n_f32(v12, COERCE_FLOAT(*(a2 + 4)))), vmulq_n_f32(v13, COERCE_FLOAT(*(a2 + 8)))), vmulq_n_f32(v14, COERCE_FLOAT(*(a2 + 12))));
  a3[1] = v15;
  result = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v11, *&v3), vmulq_n_f32(v12, *&v5)), vmulq_n_f32(v13, *&v6)), vmulq_n_f32(v14, *&v7));
  a3[2] = result;
  a3[3] = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v11, *&v4), vmulq_n_f32(v12, *&v8)), vmulq_n_f32(v13, *&v9)), vmulq_n_f32(v14, v10));
  return result;
}

BOOL sub_276155D3C(float *a1, float32x2_t *a2, float *a3, float32x2_t *a4)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a2[1].f32[1];
  v8 = a2[2].f32[0];
  v9 = a2[2].f32[1];
  v10 = ((v5 * v8) + (v4 * v7)) + (v6 * v9);
  v11 = fabsf(v10);
  if (v11 <= 1.0)
  {
    v13 = a1[1];
    v12 = a1[2];
    v14 = ((((v5 * (a2->f32[1] - v13)) + ((a2->f32[0] - *a1) * v4)) + ((a2[1].f32[0] - v12) * v6)) - (v10 * (((v8 * (a2->f32[1] - v13)) + ((a2->f32[0] - *a1) * v7)) + ((a2[1].f32[0] - v12) * v9)))) / (1.0 - (v10 * v10));
    v15 = *a1 + (v4 * v14);
    v16 = v13 + (v5 * v14);
    v17 = v12 + (v6 * v14);
    *a3 = v15;
    a3[1] = v16;
    a3[2] = v17;
    v18 = a2[1].f32[0];
    v19 = a2[2].f32[1];
    v20 = *(a2 + 12);
    v21 = (vmuls_lane_f32(v16 - COERCE_FLOAT(HIDWORD(*a2)), v20, 1) + ((v15 - COERCE_FLOAT(*a2)) * v20.f32[0])) + ((v17 - v18) * v19);
    *a4 = vadd_f32(*a2, vmul_n_f32(v20, v21));
    a4[1].f32[0] = v18 + (v19 * v21);
  }

  return v11 <= 1.0;
}

double sub_27615613C@<D0>(void *a1@<X8>)
{
  *&result = 1092616192;
  *a1 = 1092616192;
  return result;
}

float32x2_t sub_27615615C@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v4 = *a1;
  *&a4 = *(a1 + 12) - *a1;
  v5 = *(a1 + 4);
  v6 = vsub_f32(*(a1 + 16), v5);
  v7 = *a1 + (*&a4 * 0.5);
  if (v6.f32[0] > *&a4)
  {
    *&a4 = v6.f32[0];
  }

  if (v6.f32[1] > *&a4)
  {
    *&a4 = v6.f32[1];
  }

  *&a4 = *&a4 * 0.5;
  v8 = 0.0;
  v9 = v7 - *&a4;
  v10 = COERCE_DOUBLE(vsub_f32(vadd_f32(v5, vmul_f32(v6, 0x3F0000003F000000)), vdup_lane_s32(*&a4, 0)));
  if (a2 == 2)
  {
    v8 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  if (a2 == 1)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  if (a2 == 1)
  {
    v10 = *(a1 + 4);
  }

  if (a2)
  {
    v4 = v11;
  }

  else
  {
    v10 = *(a1 + 4);
  }

  *&a4 = *&a4 + *&a4;
  *a3 = v4;
  *(a3 + 4) = v10;
  *(a3 + 12) = *&a4 + v4;
  result = vadd_f32(vdup_lane_s32(*&a4, 0), *&v10);
  *(a3 + 16) = result;
  return result;
}

void sub_276156200(float a1)
{
  if (a1 < 0.5)
  {
    sin(a1 * 3.14159265);
  }
}

uint64_t sub_276156254@<X0>(uint64_t a1@<X8>, float a2@<S0>)
{
  *a1 = xmmword_2764D5FA0;
  *(a1 + 16) = 0;
  v3 = a2 * 3.14159265;
  v7 = cosf(v3) * 0.5;
  v8 = 0;
  sub_276154FD8(a1, &v7);
  v4 = 1.5708;
  if (v3 <= 1.5708)
  {
    v4 = v3;
  }

  v5 = sinf(v4);
  v7 = 0.0;
  *&v8 = v5 * 0.5;
  HIDWORD(v8) = -1108622439;
  sub_276154FD8(a1, &v7);
  v7 = 0.0;
  *&v8 = -(v5 * 0.5);
  HIDWORD(v8) = 1041965721;
  return sub_276154FD8(a1, &v7);
}

float32x2_t sub_276156350@<D0>(int a1@<W0>, float32x2_t *a2@<X8>, float a3@<S0>)
{
  v3 = 1.4919;
  if (a1)
  {
    v3 = 0.2;
  }

  v4 = -1.061;
  if (a1)
  {
    v4 = -0.2;
    v5 = -1;
  }

  else
  {
    v5 = 0;
  }

  v6 = vbsl_s8(vdup_n_s32(v5), 0x3E4CCCCDBE4CCCCDLL, 0x3F9D87E8BFBEF7E4);
  v7 = a3 / 0.10417;
  v8.i32[0] = 1.0;
  if (a1)
  {
    v8.f32[0] = v7;
  }

  a2->f32[0] = v7 * v4;
  v8.f32[1] = v7;
  a2->i32[1] = 0;
  result = vmul_f32(v8, v6);
  a2[1] = result;
  a2[2].i32[0] = 1084227584;
  a2[2].f32[1] = v8.f32[0] * v3;
  return result;
}

float32_t sub_2761563D8(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, int a6, float32x4_t a7, double a8, float32x4_t a9)
{
  a7.i64[0] = *(a2 + 12);
  v9 = *a2;
  a9.i64[0] = *(a1 + 12);
  v10 = *a1;
  a7.i32[2] = *(a2 + 20);
  v9.i32[2] = *(a2 + 8);
  v11 = vsubq_f32(a7, v9);
  a9.i32[2] = *(a1 + 20);
  v10.i32[2] = *(a1 + 8);
  v12 = vsubq_f32(a9, v10);
  v13 = vdivq_f32(vsubq_f32(v9, v10), v12);
  v13.i32[3] = v13.i32[2];
  v14 = vdivq_f32(v11, v12);
  v14.i32[3] = v14.i32[2];
  *a5 = vmulq_f32(v14, *a3);
  v15 = vmulq_f32(v13, *a3);
  *a4 = v15;
  if (a6 == 1)
  {
    goto LABEL_4;
  }

  if (!a6)
  {
    a4->i32[0] = 0;
LABEL_4:
    a4->i32[1] = 0;
    a4->f32[2] = -a5->f32[2];
    v15.f32[0] = -a5->f32[3];
    a4->i32[3] = v15.i32[0];
  }

  return v15.f32[0];
}

float sub_27615646C@<S0>(int a1@<W0>, float32x2_t *a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  v4 = 1.4919;
  if (a1)
  {
    v4 = 0.2;
  }

  v5 = -1.061;
  if (a1)
  {
    v5 = -0.2;
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  v7 = vbsl_s8(vdup_n_s32(v6), 0x3E4CCCCDBE4CCCCDLL, 0x3F9D87E8BFBEF7E4);
  v8 = a3 / 0.10417;
  v9.i32[0] = 1.0;
  if (a1)
  {
    v9.f32[0] = v8;
  }

  a2->f32[0] = v8 * v5;
  v9.f32[1] = v8;
  a2->i32[1] = 0;
  a2[1] = vmul_f32(v9, v7);
  result = a4 * 10.0;
  a2[2].f32[0] = a4 * 10.0;
  a2[2].f32[1] = v9.f32[0] * v4;
  return result;
}

float sub_276156578(_DWORD *a1, int a2, int a3)
{
  result = 1.0;
  if (a2)
  {
    v4 = a1[1];
    v5 = 8.0;
    if (a3)
    {
      v5 = 4.0;
      v4 = 1;
    }

    return v5 / (v4 * *a1);
  }

  return result;
}

float sub_2761565A8(uint64_t a1, unsigned int a2)
{
  v2 = (&v4 | (4 * a2));
  result = *(a1 + 8) / *v2;
  if (*v2 == 0.0)
  {
    return 0.0;
  }

  return result;
}

_DWORD *sub_2761565DC@<X0>(_DWORD *result@<X0>, int a2@<W1>, int a3@<W2>, char a4@<W3>, float *a5@<X8>, float a6@<S0>, float a7@<S1>, float a8@<S2>, float a9@<S3>)
{
  v9 = 3.0;
  v10 = 1.0;
  if (a2)
  {
    v9 = 1.0;
  }

  v11 = v9 * a6;
  if (a2)
  {
    v12 = result[1];
    v13 = 8.0;
    if (a3)
    {
      v13 = 4.0;
      v12 = 1;
    }

    v14 = v13 / (v12 * *result);
    v10 = 1.0;
    if (v14 != 1.0)
    {
      v15 = v14;
      if (fabs(v15 + -1.0) >= 0.000000999999997)
      {
        v10 = 1.0 / (v15 * 1.5);
      }
    }
  }

  v16 = v11 / 6.0;
  if (a3)
  {
    if ((a4 & 1) == 0)
    {
      v16 = v16 * (a8 / a9);
    }
  }

  else if ((a4 & 1) == 0)
  {
    v16 = 1.0 / a7 * v16;
  }

  *a5 = v10;
  a5[1] = v16;
  return result;
}

void sub_2761572E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = TSCH3DResourceCache;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_276159B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = TSCH3DSession;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_27615C4EC(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend__singletonAlloc(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_init(v6, v7, v8, v9, v10);
  v12 = qword_280A467A0;
  qword_280A467A0 = v11;

  if (!qword_280A467A0)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "+[TSCH3DSceneRenderNullSetup setup]_block_invoke");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSceneRenderSetup.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 87, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    v32 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v32, v28, v29, v30, v31);
  }
}

void sub_27615C790(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend__singletonAlloc(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_init(v6, v7, v8, v9, v10);
  v12 = qword_280A467B0;
  qword_280A467B0 = v11;

  if (!qword_280A467B0)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "+[TSCH3DSceneRenderIdentitySetup setup]_block_invoke");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSceneRenderSetup.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 96, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    v32 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v32, v28, v29, v30, v31);
  }
}

void sub_27615CB38(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend__singletonAlloc(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_init(v6, v7, v8, v9, v10);
  v12 = qword_280A467C0;
  qword_280A467C0 = v11;

  if (!qword_280A467C0)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "+[TSCH3DSceneRenderViewportSetup setup]_block_invoke");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSceneRenderSetup.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 110, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    v32 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v32, v28, v29, v30, v31);
  }
}

void sub_27615CE68(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend__singletonAlloc(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_init(v6, v7, v8, v9, v10);
  v12 = qword_280A467D0;
  qword_280A467D0 = v11;

  if (!qword_280A467D0)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "+[TSCH3DSceneRenderCameraSetup setup]_block_invoke");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSceneRenderSetup.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 120, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    v32 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v32, v28, v29, v30, v31);
  }
}

void sub_27615D1F4(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend__singletonAlloc(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_init(v6, v7, v8, v9, v10);
  v12 = qword_280A467E0;
  qword_280A467E0 = v11;

  if (!qword_280A467E0)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "+[TSCH3DSceneRenderSceneTransformSetup setup]_block_invoke");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSceneRenderSetup.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 131, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    v32 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v32, v28, v29, v30, v31);
  }
}

void sub_27615D544(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend__singletonAlloc(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_init(v6, v7, v8, v9, v10);
  v12 = qword_280A467F0;
  qword_280A467F0 = v11;

  if (!qword_280A467F0)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "+[TSCH3DSceneRenderCameraAndSceneTransformSetup setup]_block_invoke");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSceneRenderSetup.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 141, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    v32 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v32, v28, v29, v30, v31);
  }
}

void sub_27615D7A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_27615D8A8(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend__singletonAlloc(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_init(v6, v7, v8, v9, v10);
  v12 = qword_280A46800;
  qword_280A46800 = v11;

  if (!qword_280A46800)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "+[TSCH3DSceneRenderFullSetup setup]_block_invoke");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSceneRenderSetup.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 154, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    v32 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v32, v28, v29, v30, v31);
  }
}

void sub_27615DB28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_27615F360(_Unwind_Exception *exception_object)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_27615F788(uint64_t *a1, const char *a2, double a3, double a4, double a5)
{
  v6 = *a1;
  if (*a1 >= 8)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "void TSCH3D::StateStack<glm::detail::tmat4x4<float>, 8>::push() [T = glm::detail::tmat4x4<float>, N = 8]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DStateStack.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 25, 0, "state stack out of bounds %lu", *a1);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    v6 = *a1;
  }

  v22 = &a1[8 * v6];
  *a1 = v6 + 1;
  *(v22 + 9) = *(a1 + 1);
  *(v22 + 11) = *(a1 + 3);
  *(v22 + 13) = *(a1 + 5);
  result = *(a1 + 7);
  *(v22 + 15) = result;
  return result;
}

__n128 sub_27615F8AC(uint64_t *a1, const char *a2, double a3, double a4, double a5)
{
  v6 = *a1;
  if (!*a1)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "const T &TSCH3D::StateStack<glm::detail::tmat4x4<float>, 8>::pop() [T = glm::detail::tmat4x4<float>, N = 8]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DStateStack.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 30, 0, "cannot pop matrix stack is empty");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    v6 = *a1;
  }

  v22 = v6 - 1;
  v23 = &a1[8 * v22];
  *a1 = v22;
  *(a1 + 1) = *(v23 + 9);
  *(a1 + 3) = *(v23 + 11);
  *(a1 + 5) = *(v23 + 13);
  result = *(v23 + 15);
  *(a1 + 7) = result;
  return result;
}

uint64_t sub_27615FAC8(uint64_t result)
{
  v1 = 0;
  *result = 0;
  *(result + 8) = 1065353216;
  *(result + 20) = 0;
  *(result + 12) = 0;
  *(result + 28) = 1065353216;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 1065353216;
  *(result + 60) = 0;
  *(result + 52) = 0;
  *(result + 68) = 1065353216;
  do
  {
    v2 = result + v1;
    *(v2 + 72) = 1065353216;
    *(v2 + 84) = 0;
    *(v2 + 76) = 0;
    *(v2 + 92) = 1065353216;
    *(v2 + 96) = 0;
    *(v2 + 104) = 0;
    *(v2 + 112) = 1065353216;
    *(v2 + 124) = 0;
    *(v2 + 116) = 0;
    v1 += 64;
    *(v2 + 132) = 1065353216;
  }

  while (v1 != 512);
  return result;
}

void sub_27615FD9C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_276160690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2761606C0(uint64_t *a1, const char *a2, double a3, double a4, double a5)
{
  v6 = *a1;
  if (*a1 >= 6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "void TSCH3D::StateStack<TSCH3D::ObjectState, 6>::push() [T = TSCH3D::ObjectState, N = 6]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DStateStack.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 25, 0, "state stack out of bounds %lu", *a1);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    v6 = *a1;
  }

  *a1 = v6 + 1;
  v22 = 56 * v6 + 64;
  v23 = a1 + v22;
  sub_276161210((a1 + v22), a1[1]);
  if (v22 != 8)
  {
    sub_2761613C0((v23 + 8), a1[2], a1[3], 0xCCCCCCCCCCCCCCCDLL * ((a1[3] - a1[2]) >> 3));
    v24 = a1[5];
    v25 = a1[6];

    sub_276161804((v23 + 32), v24, v25, 0xAAAAAAAAAAAAAAABLL * ((v25 - v24) >> 4));
  }
}

uint64_t *sub_2761608D0(uint64_t *a1, const char *a2, double a3, double a4, double a5)
{
  v6 = *a1;
  if (!*a1)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "const T &TSCH3D::StateStack<TSCH3D::ObjectState, 6>::pop() [T = TSCH3D::ObjectState, N = 6]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DStateStack.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 30, 0, "cannot pop matrix stack is empty");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    v6 = *a1;
  }

  *a1 = v6 - 1;
  v22 = 56 * v6 + 8;
  v23 = (a1 + v22);
  sub_276161210(a1 + 1, *(a1 + v22));
  if (v22 != 8)
  {
    sub_2761613C0(a1 + 2, v23[1], v23[2], 0xCCCCCCCCCCCCCCCDLL * ((v23[2] - v23[1]) >> 3));
    sub_276161804(a1 + 5, v23[4], v23[5], 0xAAAAAAAAAAAAAAABLL * ((v23[5] - v23[4]) >> 4));
  }

  return a1 + 1;
}

void sub_276160A80(uint64_t a1)
{
  sub_276161270(a1 + 8, *(a1 + 8));
  sub_2761612C4(a1 + 32, *(a1 + 32));

  sub_276161210(a1, 0);
}

__n128 sub_276160DDC(uint64_t *a1, const char *a2, double a3, double a4, double a5)
{
  v6 = *a1;
  if (*a1 >= 0xA)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "void TSCH3D::StateStack<TSCH3D::RenderState, 10>::push() [T = TSCH3D::RenderState, N = 10]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DStateStack.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 25, 0, "state stack out of bounds %lu", *a1);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    v6 = *a1;
  }

  v22 = &a1[4 * v6];
  *a1 = v6 + 1;
  result = *(a1 + 3);
  *(v22 + 5) = *(a1 + 1);
  *(v22 + 7) = result;
  return result;
}

uint64_t *sub_276160F48(uint64_t *a1, const char *a2, double a3, double a4, double a5)
{
  v6 = *a1;
  if (!*a1)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "const T &TSCH3D::StateStack<TSCH3D::RenderState, 10>::pop() [T = TSCH3D::RenderState, N = 10]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DStateStack.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 30, 0, "cannot pop matrix stack is empty");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    v6 = *a1;
  }

  v22 = v6 - 1;
  v23 = &a1[4 * v22];
  *a1 = v22;
  v24 = *(v23 + 5);
  *(a1 + 3) = *(v23 + 7);
  *(a1 + 1) = v24;
  return a1 + 1;
}

void sub_276161210(id *a1, void *a2)
{
  v4 = a2;
  if (*a1 != v4)
  {
    v5 = v4;
    objc_storeStrong(a1, a2);
    v4 = v5;
  }
}

void sub_276161270(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 40)
  {

    v5 = *(i - 40);
  }

  *(a1 + 8) = a2;
}

void sub_2761612C4(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 48)
  {

    v5 = *(i - 48);
  }

  *(a1 + 8) = a2;
}

void sub_276161318(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2761612C4(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_27616136C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_276161270(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2761613C0(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_27616150C(a1);
    if (a4 <= 0x666666666666666)
    {
      v9 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
      {
        v10 = 0x666666666666666;
      }

      else
      {
        v10 = v9;
      }

      sub_27616154C(a1, v10);
    }

    sub_276161760();
  }

  v11 = a1[1] - v8;
  if (0xCCCCCCCCCCCCCCCDLL * (v11 >> 3) >= a4)
  {
    sub_2761616E0(&v14, a2, a3, v8);
    sub_276161270(a1, v12);
  }

  else
  {
    sub_2761616E0(&v13, a2, a2 + v11, v8);
    a1[1] = sub_276161598(a1, a2 + v11, a3, a1[1]);
  }
}

void sub_27616150C(uint64_t *a1)
{
  if (*a1)
  {
    sub_276161270(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_27616154C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_276161778(a1, a2);
  }

  sub_276161760();
}

uint64_t sub_276161598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v7 = a4;
  }

  else
  {
    v6 = a2;
    v7 = v13;
    do
    {
      *v4 = *v6;
      *(v4 + 8) = *(v6 + 8);
      v8 = *(v6 + 32);
      *(v4 + 16) = *(v6 + 16);
      *(v4 + 32) = v8;
      v6 += 40;
      v7 += 40;
      v4 = v7;
    }

    while (v6 != a3);
    v13 = v7;
  }

  v11 = 1;
  sub_27616164C(v10);
  return v7;
}

uint64_t sub_27616164C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_276161698(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_276161698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {

      v7 = *(v6 - 40);
      v6 -= 40;
    }

    while (v6 != a5);
  }
}

uint64_t sub_2761616E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    sub_276161210(a4, *v5);
    sub_276161210((a4 + 8), *(v5 + 8));
    v7 = *(v5 + 16);
    *(a4 + 32) = *(v5 + 32);
    *(a4 + 16) = v7;
    v5 += 40;
    a4 += 40;
  }

  while (v5 != v6);
  return v6;
}

void sub_276161778(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_2761617D0();
}

void sub_2761617D0()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_276161804(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) < a4)
  {
    sub_276161950(a1);
    if (a4 <= 0x555555555555555)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v10 = 0x555555555555555;
      }

      else
      {
        v10 = v9;
      }

      sub_276161990(a1, v10);
    }

    sub_276161760();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 4) >= a4)
  {
    sub_276161B44(&v14, a2, a3, v8);
    sub_2761612C4(a1, v12);
  }

  else
  {
    sub_276161B44(&v13, a2, a2 + v11, v8);
    a1[1] = sub_2761619DC(a1, a2 + v11, a3, a1[1]);
  }
}

void sub_276161950(uint64_t *a1)
{
  if (*a1)
  {
    sub_2761612C4(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_276161990(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_276161BE4(a1, a2);
  }

  sub_276161760();
}

uint64_t sub_2761619DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v7 = a4;
  }

  else
  {
    v6 = a2;
    v7 = v13;
    do
    {
      *v4 = *v6;
      *(v4 + 8) = *(v6 + 8);
      v8 = *(v6 + 16);
      *(v4 + 23) = *(v6 + 23);
      *(v4 + 16) = v8;
      *(v4 + 28) = *(v6 + 28);
      *(v4 + 32) = *(v6 + 32);
      *(v4 + 36) = *(v6 + 36);
      *(v4 + 40) = *(v6 + 40);
      v6 += 48;
      v7 += 48;
      v4 = v7;
    }

    while (v6 != a3);
    v13 = v7;
  }

  v11 = 1;
  sub_276161AB0(v10);
  return v7;
}

uint64_t sub_276161AB0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_276161AFC(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_276161AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {

      v7 = *(v6 - 48);
      v6 -= 48;
    }

    while (v6 != a5);
  }
}

uint64_t sub_276161B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    sub_276161210(a4, *v5);
    sub_276161210((a4 + 8), *(v5 + 8));
    v7 = *(v5 + 16);
    *(a4 + 23) = *(v5 + 23);
    *(a4 + 16) = v7;
    *(a4 + 28) = *(v5 + 28);
    *(a4 + 32) = *(v5 + 32);
    *(a4 + 36) = *(v5 + 36);
    *(a4 + 40) = *(v5 + 40);
    v5 += 48;
    a4 += 48;
  }

  while (v5 != v6);
  return v6;
}

void sub_276161BE4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_2761617D0();
}

_OWORD *sub_276161C3C(_OWORD *a1)
{
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  sub_276160A80(a1 + 8);
  for (i = 64; i != 400; i += 56)
  {
    v3 = a1 + i;
    *(v3 + 6) = 0;
    *(v3 + 1) = 0u;
    *(v3 + 2) = 0u;
    *v3 = 0u;
    sub_276160A80(a1 + i);
  }

  return a1;
}

void sub_276161DEC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t sub_276161E1C(void *a1, _DWORD *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_276162068(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v3[1] = a2[1];
    v3[2] = a2[2];
    v3[3] = a2[3];
    result = (v3 + 4);
  }

  a1[1] = result;
  return result;
}

uint64_t sub_276162068(void *a1, _DWORD *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_276161760();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15 = a1;
  if (v7)
  {
    sub_27616222C(a1, v7);
  }

  v8 = (16 * v2);
  __p = 0;
  v12 = v8;
  v14 = 0;
  *v8 = *a2;
  v8[1] = a2[1];
  v8[2] = a2[2];
  v8[3] = a2[3];
  v13 = 16 * v2 + 16;
  sub_2761621A4(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += (v12 - v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_27616216C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2761621A4(uint64_t result, void *a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = (a2[1] + *result - v3);
    do
    {
      *v5 = *v2;
      v5[1] = v2[1];
      v5[2] = v2[2];
      v5[3] = v2[3];
      v2 += 4;
      v5 += 4;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  *(result + 8) = v2;
  a2[1] = v2;
  v6 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v6;
  v7 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

void sub_27616222C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_2761617D0();
}

void sub_276162394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = TSCH3DFramebufferTransformPipeline;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_276162A58(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_276162C94(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setRenderState_(v3, v4, v5, v6, v7, *(a1 + 32) + 72);
  v12 = objc_msgSend_effects(v3, v8, v9, v10, v11);
  v17 = objc_msgSend_effects(*(a1 + 32), v13, v14, v15, v16);
  objc_msgSend_resetToArray_(v12, v18, v19, v20, v21, v17);

  objc_msgSend_updateShaderEffectsStates(*(a1 + 32), v22, v23, v24, v25);
  v30 = *(a1 + 32);
  if (v30)
  {
    objc_msgSend_targetViewport(v30, v26, v27, v28, v29);
    v32 = LODWORD(v101);
    v31 = HIDWORD(v101);
    v34 = v100;
    v33 = HIDWORD(v100);
  }

  else
  {
    v33 = 0;
    v31 = 0;
    v34 = 0;
    v32 = 0;
    v100 = 0;
    v101 = 0.0;
  }

  if (v32 < v34 || v31 < v33)
  {
    v35 = *(*(a1 + 32) + 32);
    if (v35)
    {
      objc_msgSend_size(v35, v26, v27, v28, v29);
      v27 = *&v96;
    }

    else
    {
      v27 = 0.0;
    }

    v100 = 0;
    v101 = v27;
  }

  v36 = objc_msgSend_orthographicPerPixelWithBounds_(TSCH3DCamera, v26, v27, v28, v29, &v100);
  v41 = objc_msgSend_lens(v36, v37, v38, v39, v40);
  objc_msgSend_normalize(v41, v42, v43, v44, v45);

  v51 = objc_msgSend_context(*(a1 + 32), v46, v47, v48, v49);
  if (v36)
  {
    objc_msgSend_viewport(v36, v50, v52, v53, v54);
  }

  else
  {
    v96 = 0uLL;
  }

  objc_msgSend_viewport_(v51, v50, v52, v53, v54, &v96);

  if (v36)
  {
    objc_msgSend_projection(v36, v55, v56, v57, v58);
  }

  else
  {
    v59 = 0.0;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
  }

  objc_msgSend_projection_(v3, v55, v59, v57, v58, &v96);
  if (v36)
  {
    objc_msgSend_space(v36, v60, v61, v62, v63);
  }

  else
  {
    v64 = 0.0;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
  }

  objc_msgSend_replace_(v3, v60, v64, v62, v63, &v96);
  objc_msgSend_multiply_(v3, v65, v66, v67, v68, *(a1 + 32) + 104);
  v73 = objc_msgSend_vertices(*(a1 + 32), v69, v70, v71, v72);
  objc_msgSend_geometry_(v3, v74, v75, v76, v77, v73);

  v82 = objc_msgSend_texcoords(*(a1 + 32), v78, v79, v80, v81);
  objc_msgSend_texcoords_(v3, v83, v84, v85, v86, v82);

  v91 = objc_msgSend_infoWithType_(TSCH3DPrimitiveInfo, v87, v88, v89, v90, 1);
  objc_msgSend_submit_(v3, v92, v93, v94, v95, v91);
}

void sub_276163560(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_2761647E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_27616482C(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  *(*(*(a1 + 56) + 8) + 24) = objc_msgSend_render(*(a1 + 32), a2, a3, a4, a5);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 32);

  return objc_msgSend_didRunForScene_pipeline_(v10, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_276165208(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  if (v3 != objc_opt_class())
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "const typename DataBufferTraits<T>::ContainerType &TSCH3D::ContainerFrom(TSCH3DDataBuffer *__strong) [T = glm::detail::tvec2<float>]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DDataBuffer.h");
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = NSStringFromClass(v2);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v18, v19, v20, v21, v9, v14, 116, 0, "ContainerFrom data buffer type mismatch %@ expected %@", v16, v17);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_container(v1, v4, v5, v6, v7);

  return v26;
}

void sub_276165328(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

uint64_t sub_27616536C(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  if (v3 != objc_opt_class())
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "const typename DataBufferTraits<T>::ContainerType &TSCH3D::ContainerFrom(TSCH3DDataBuffer *__strong) [T = glm::detail::tvec3<float>]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DDataBuffer.h");
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = NSStringFromClass(v2);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v18, v19, v20, v21, v9, v14, 116, 0, "ContainerFrom data buffer type mismatch %@ expected %@", v16, v17);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_container(v1, v4, v5, v6, v7);

  return v26;
}

void sub_27616548C(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

uint64_t sub_2761654D0(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  if (v3 != objc_opt_class())
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "const typename DataBufferTraits<T>::ContainerType &TSCH3D::ContainerFrom(TSCH3DDataBuffer *__strong) [T = glm::detail::tvec4<float>]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DDataBuffer.h");
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = NSStringFromClass(v2);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v18, v19, v20, v21, v9, v14, 116, 0, "ContainerFrom data buffer type mismatch %@ expected %@", v16, v17);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_container(v1, v4, v5, v6, v7);

  return v26;
}

void sub_2761655F0(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

id sub_276165634(float *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = MEMORY[0x277CCACA8];
  sub_276166580(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v48 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v9, v10, v11, v12, v13, __p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v9, v10, v11, v12, v13, __p[0]);
  }
  v21 = ;
  if (v48 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = MEMORY[0x277CCACA8];
  sub_276166580(a1 + 6, v14, v15, v16, v17, v18, v19, v20);
  if (v48 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v22, v23, v24, v25, v26, __p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v22, v23, v24, v25, v26, __p[0]);
  }
  v34 = ;
  if (v48 < 0)
  {
    operator delete(__p[0]);
  }

  v35 = MEMORY[0x277CCACA8];
  sub_276166580(a1 + 12, v27, v28, v29, v30, v31, v32, v33);
  if (v48 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v35, v36, v37, v38, v39, __p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v35, v36, v37, v38, v39, __p[0]);
  }
  v41 = ;
  if (v48 < 0)
  {
    operator delete(__p[0]);
  }

  v45 = objc_msgSend_stringWithFormat_(v9, v40, v42, v43, v44, @"ObjectBounds(%@, %@, %@)", v21, v34, v41);

  return v45;
}

void sub_2761657D0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2761657C8);
}

uint64_t sub_2761660AC(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = byte_280A46760;
  objc_msgSend_setupRendering(*(a1 + 32), a2, a3, a4, a5);
  objc_msgSend_get3DBounds_(*(a1 + 32), v7, v8, v9, v10, *(a1 + 40));
  result = objc_msgSend_getProjectedBounds_(*(a1 + 32), v11, v12, v13, v14, *(a1 + 40));
  byte_280A46760 = v6;
  return result;
}

uint64_t sub_276166138(uint64_t a1, uint64_t a2)
{
  v4 = sub_276155178(a1);
  v5 = *a2;
  if (v4)
  {
    *a1 = v5;
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 12) = *(a2 + 12);
    *(a1 + 16) = *(a2 + 16);
    v6 = *(a2 + 20);
  }

  else
  {
    if (*a1 < v5)
    {
      v5 = *a1;
    }

    v7 = vbsl_s8(vcgt_f32(*(a2 + 4), *(a1 + 4)), *(a1 + 4), *(a2 + 4));
    *a1 = v5;
    *(a1 + 4) = v7;
    v6 = *(a1 + 20);
    if (v6 <= *(a2 + 20))
    {
      v6 = *(a2 + 20);
    }

    *(a1 + 12) = vbsl_s8(vcgt_f32(*(a1 + 12), *(a2 + 12)), *(a1 + 12), *(a2 + 12));
  }

  *(a1 + 20) = v6;
  return a1;
}

uint64_t sub_2761661E4(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v5 = a2[1];
  v11 = *a2;
  v12 = v5;
  v6 = a2[3];
  v13 = a2[2];
  v14 = v6;
  sub_276166248(a1, &v11);
  v7 = a3[1];
  v11 = *a3;
  v12 = v7;
  v8 = a3[3];
  v13 = a3[2];
  v14 = v8;
  sub_276166248(v9 + 88, &v11);
  return a1;
}

float sub_276166248(uint64_t a1, uint64_t a2)
{
  *a1 = xmmword_2764D5F00;
  *(a1 + 16) = 0x80000000800000;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 24) = *a2;
  *(a1 + 28) = *(a2 + 4);
  *(a1 + 32) = *(a2 + 8);
  *(a1 + 36) = *(a2 + 12);
  *(a1 + 40) = *(a2 + 16);
  *(a1 + 44) = *(a2 + 20);
  *(a1 + 48) = *(a2 + 24);
  *(a1 + 52) = *(a2 + 28);
  *(a1 + 56) = *(a2 + 32);
  *(a1 + 60) = *(a2 + 36);
  *(a1 + 64) = *(a2 + 40);
  *(a1 + 68) = *(a2 + 44);
  *(a1 + 72) = *(a2 + 48);
  *(a1 + 76) = *(a2 + 52);
  *(a1 + 80) = *(a2 + 56);
  result = *(a2 + 60);
  *(a1 + 84) = result;
  return result;
}

uint64_t sub_2761662F4(void *a1, _DWORD *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_276161760();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v14 = a1;
  if (v6)
  {
    sub_276166528(a1, v6);
  }

  v7 = 24 * v2;
  __p = 0;
  v11 = v7;
  v13 = 0;
  *v7 = *a2;
  *(v7 + 4) = a2[1];
  *(v7 + 8) = a2[2];
  *(v7 + 12) = a2[3];
  *(v7 + 16) = a2[4];
  *(v7 + 20) = a2[5];
  v12 = 24 * v2 + 24;
  sub_276166490(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 = (v12 - v11 - 24) % 0x18uLL + v11;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_276166440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276166490(uint64_t result, void *a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = (a2[1] + *result - v3);
    do
    {
      *v5 = *v2;
      v5[1] = v2[1];
      v5[2] = v2[2];
      v5[3] = v2[3];
      v5[4] = v2[4];
      v5[5] = v2[5];
      v2 += 6;
      v5 += 6;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  *(result + 8) = v2;
  a2[1] = v2;
  v6 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v6;
  v7 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

void sub_276166528(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2761617D0();
}

void sub_276166580(float *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  sub_276152FD4("vec3(%f, %f, %f)", a2, a3, a4, a5, a6, a7, a8, SLOBYTE(v9));
  v10 = (a1[3] - *a1);
  sub_276152FD4("vec3(%f, %f, %f)", v11, v12, v13, v14, v15, v16, v17, SLOBYTE(v10));
  sub_276152FD4("box%u(%s, %s)", v18, v19, v20, v21, v22, v23, v24, 3);
  if (v26 < 0)
  {
    operator delete(__p);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }
}

void sub_276166688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2761666BC(uint64_t a1, int32x4_t *a2)
{
  v4 = *a2;
  sub_276166708(a1, v4.i32, &v5);
  return sub_276166708(a1 + 88, v5.i32, &v4);
}

uint64_t sub_276166708@<X0>(uint64_t a1@<X0>, float *a2@<X1>, int32x4_t *a3@<X8>)
{
  v3 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(a1 + 40), a2[1]), *(a1 + 24), *a2), *(a1 + 56), a2[2]), *(a1 + 72), a2[3]);
  *a3 = v3;
  v5 = vdiv_f32(*v3.i8, vdup_laneq_s32(v3, 3));
  v6 = *&v3.i32[2] / *&v3.i32[3];
  return sub_276154FD8(a1, &v5);
}

uint64_t sub_276166C34(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = a3;
  if (!v4)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DRayPickPipeline pickedPoints]_block_invoke");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DRayPickPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 98, 0, "invalid nil value for '%{public}s'", "obj1");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  if (!v6)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DRayPickPipeline pickedPoints]_block_invoke");
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DRayPickPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v32, v33, v34, v35, v26, v31, 99, 0, "invalid nil value for '%{public}s'", "obj2");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
  }

  objc_opt_class();
  v40 = TSUCheckedDynamicCast();
  if (v40)
  {
    objc_opt_class();
    v41 = TSUCheckedDynamicCast();
    v46 = v41;
    if (v41)
    {
      objc_msgSend_cameraSpacePoint(v41, v42, v43, v44, v45);
    }

    else
    {
      v57 = 0.0;
    }
  }

  else
  {
    v57 = 0.0;
  }

  objc_opt_class();
  v47 = TSUCheckedDynamicCast();
  if (v47)
  {
    objc_opt_class();
    v48 = TSUCheckedDynamicCast();
    v53 = v48;
    if (v48)
    {
      objc_msgSend_cameraSpacePoint(v48, v49, v50, v51, v52);
    }

    else
    {
      v56 = 0.0;
    }
  }

  else
  {
    v56 = 0.0;
  }

  if (v57 <= v56)
  {
    v54 = v57 < v56;
  }

  else
  {
    v54 = -1;
  }

  return v54;
}

BOOL sub_276167BFC(float *a1, float *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  if (v4 < v2 || v5 < v3)
  {
    return 0;
  }

  v7 = a2[1];
  if (*a2 < v2 || v7 < v3)
  {
    return 0;
  }

  else
  {
    return v7 <= v5 && *a2 <= v4;
  }
}

float sub_276168C80(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 73 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_276168D80(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x49)) + 56 * (v7 % 0x49);
  *v8 = *a2;
  *(v8 + 4) = *(a2 + 4);
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 12) = *(a2 + 12);
  *(v8 + 16) = *(a2 + 16);
  *(v8 + 20) = *(a2 + 20);
  *(v8 + 24) = *(a2 + 24);
  *(v8 + 40) = *(a2 + 40);
  *(v8 + 44) = *(a2 + 44);
  result = *(a2 + 48);
  *(v8 + 48) = result;
  *(v8 + 52) = *(a2 + 52);
  ++a1[5];
  return result;
}

void *sub_276168D80(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x49;
  v3 = v1 - 73;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_27616937C(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_276168F54(a1, &v10);
}

void sub_276168F08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_276168F54(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_27616937C(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_27616905C(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_27616937C(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_276169168(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_27616937C(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_276169270(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_27616937C(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_27616937C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_2761617D0();
}

void sub_276169788(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = a1;
  if (!v5)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "T TSCH3D::AssertSafeValue(__strong id, SEL, __strong id, T) [T = TSCH3D::Transform]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DUtilities.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 17, 0, "cannot get safe value from nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    v5 = 0;
  }

  *a3 = *a2;
  *(a3 + 16) = *(a2 + 16);
  *(a3 + 24) = *(a2 + 24);
  *(a3 + 40) = *(a2 + 40);
  *(a3 + 48) = *(a2 + 48);
  *(a3 + 52) = *(a2 + 52);
}

void sub_276169AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_27616B32C(va1);
  sub_27616B32C(va);

  _Unwind_Resume(a1);
}

void sub_276169AD4(void *a1@<X0>, uint64_t a2@<X8>, float32x4_t a3@<Q2>)
{
  *a2 = 1065353216;
  *(a2 + 12) = 0;
  *(a2 + 4) = 0;
  *(a2 + 20) = 1065353216;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1065353216;
  *(a2 + 52) = 0;
  *(a2 + 44) = 0;
  *(a2 + 60) = 1065353216;
  v5 = a1[10];
  v6 = a1[7];
  v7 = a1[8];
  v8 = (v6 + 8 * (v5 / 0x49));
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = (*v8 + 56 * (v5 % 0x49));
  }

  while (1)
  {
    if (v7 == v6)
    {
      v11 = 0;
    }

    else
    {
      v10 = a1[11] + a1[10];
      v11 = *(v6 + 8 * (v10 / 0x49)) + 56 * (v10 % 0x49);
    }

    if (v9 == v11)
    {
      break;
    }

    sub_27616AF8C(v9, v25, a3);
    sub_2761558A0(a2, v25, &v26);
    v12 = v27;
    *a2 = v26;
    *(a2 + 16) = v12;
    v13 = v29;
    *(a2 + 32) = v28;
    *(a2 + 48) = v13;
    v9 += 7;
    if ((v9 - *v8) == 4088)
    {
      v14 = v8[1];
      ++v8;
      v9 = v14;
    }

    v6 = a1[7];
    v7 = a1[8];
  }

  v15 = a1[4];
  v16 = a1[1];
  v17 = a1[2];
  v18 = (v16 + 8 * (v15 / 0x49));
  if (v17 == v16)
  {
    v19 = 0;
  }

  else
  {
    v19 = (*v18 + 56 * (v15 % 0x49));
  }

  while (1)
  {
    if (v17 == v16)
    {
      v21 = 0;
    }

    else
    {
      v20 = a1[5] + a1[4];
      v21 = *(v16 + 8 * (v20 / 0x49)) + 56 * (v20 % 0x49);
    }

    if (v19 == v21)
    {
      break;
    }

    sub_27616AF8C(v19, v25, a3);
    sub_2761558A0(a2, v25, &v26);
    v22 = v27;
    *a2 = v26;
    *(a2 + 16) = v22;
    v23 = v29;
    *(a2 + 32) = v28;
    *(a2 + 48) = v23;
    v19 += 7;
    if ((v19 - *v18) == 4088)
    {
      v24 = v18[1];
      ++v18;
      v19 = v24;
    }

    v16 = a1[1];
    v17 = a1[2];
  }
}

int64x2_t sub_27616AC4C(int64x2_t *a1, uint64_t a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    sub_27616AD3C(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x49));
  v7 = *v6 + 56 * (v4 % 0x49);
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4088;
  }

  *(v7 - 56) = *a2;
  *(v7 - 52) = *(a2 + 4);
  *(v7 - 48) = *(a2 + 8);
  *(v7 - 44) = *(a2 + 12);
  *(v7 - 40) = *(a2 + 16);
  *(v7 - 36) = *(a2 + 20);
  *(v7 - 32) = *(a2 + 24);
  *(v7 - 16) = *(a2 + 40);
  *(v7 - 12) = *(a2 + 44);
  *(v7 - 8) = *(a2 + 48);
  *(v7 - 4) = *(a2 + 52);
  result = vaddq_s64(a1[2], xmmword_2764D60E0);
  a1[2] = result;
  return result;
}

const void **sub_27616AD3C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 73 * ((v2 - v1) >> 3) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x49)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    sub_27616937C(a1, v10);
  }

  *(a1 + 32) = v5 + 73;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return sub_27616905C(a1, v11);
}

void sub_27616AF40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27616AF8C(float32x2_t *a1@<X0>, uint64_t a2@<X8>, float32x4_t a3@<Q2>)
{
  v5 = a1[3].f32[0];
  if (v5 == 0.0 && a1[3].f32[1] == 0.0 && a1[4].f32[0] == 0.0 && a1[4].f32[1] == 1.0 && a1[1].f32[1] == 1.0 && a1[2].f32[0] == 1.0 && a1[2].f32[1] == 1.0)
  {
    *a2 = 1065353216;
    *(a2 + 12) = 0;
    *(a2 + 4) = 0;
    *(a2 + 20) = 1065353216;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *v6.f32 = *a1;
    *&v6.u32[2] = vmul_f32(*a1, 0);
    *a3.f32 = vrev64_s32(*&v6.u32[2]);
    a3.i32[3] = 0;
    v7 = vaddq_f32(v6, vdupq_lane_s64(a3.i64[0], 0));
    v6.i32[3] = a1[1].i32[0];
    *(a2 + 40) = 1065353216;
    v7.i32[3] = vmulq_f32(v6, a3).i32[3];
    *(a2 + 48) = vaddq_f32(vaddq_f32(vzip2q_s32(vtrn2q_s32(v7, v6), vrev64q_s32(v7)), v7), xmmword_2764D5F20);
    return;
  }

  *a2 = 1065353216;
  *(a2 + 12) = 0;
  *(a2 + 4) = 0;
  *(a2 + 20) = 1065353216;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v8 = vadd_f32(a1[5], *a1);
  v9 = vmul_f32(v8, 0);
  v10 = vrev64_s32(v9);
  v11 = vadd_f32(v8, v10);
  v10.i32[0] = a1[6].i32[0];
  v9.i32[0] = a1[1].i32[0];
  v12 = vadd_f32(v10, v9);
  v13.i32[0] = vdup_lane_s32(v12, 1).u32[0];
  v13.f32[1] = 0.0 * v12.f32[0];
  *(a2 + 40) = 1065353216;
  *(a2 + 48) = vadd_f32(vadd_f32(v11, vdup_lane_s32(COERCE_UNSIGNED_INT(0.0 * v12.f32[0]), 0)), 0);
  *(a2 + 56) = vadd_f32(vadd_f32(v12, v13), 0x3F80000000000000);
  v14 = a1[3].f32[1];
  if (v5 != 0.0 || v14 != 0.0 || a1[4].f32[0] != 0.0 || a1[4].f32[1] != 1.0)
  {
    v15 = a1[4].f32[0];
    v16 = a1[4].f32[1];
    v17 = v16 + v16;
    v18 = (v15 * (v16 + v16)) + ((v5 + v5) * v14);
    v19 = v16 * -2.0;
    v20 = ((v5 * -2.0) * v5) + 1.0;
    v35 = (((v14 * -2.0) * v14) + 1.0) + ((v15 * -2.0) * v15);
    *&v36 = v18;
    *(&v36 + 1) = (v14 * v19) + ((v5 + v5) * v15);
    LODWORD(v37) = 0;
    *(&v37 + 1) = (v15 * v19) + ((v5 + v5) * v14);
    v38 = v20 + ((v15 * -2.0) * v15);
    v39 = COERCE_UNSIGNED_INT((v5 * v17) + ((v14 + v14) * v15));
    *&v40 = (v14 * v17) + ((v5 + v5) * v15);
    *(&v40 + 1) = (v5 * v19) + ((v14 + v14) * v15);
    *v41 = v20 + ((v14 * -2.0) * v14);
    *&v41[4] = 0uLL;
    *&v41[20] = 1065353216;
    sub_2761558A0(a2, &v35, &v42);
    v21 = v43;
    *a2 = v42;
    *(a2 + 16) = v21;
    v22 = v45;
    *(a2 + 32) = v44;
    *(a2 + 48) = v22;
  }

  v24 = a1[1].f32[1];
  v23 = a1[2].f32[0];
  if (v24 != 1.0 || v23 != 1.0 || (v23 = 1.0, a1[2].f32[1] != 1.0))
  {
    v35 = a1[1].f32[1];
    *&v36 = v24 * 0.0;
    *(&v36 + 1) = v24 * 0.0;
    *&v37 = v24 * 0.0;
    *(&v37 + 1) = v23 * 0.0;
    v38 = v23;
    *&v39 = v23 * 0.0;
    *(&v39 + 1) = v23 * 0.0;
    v25 = a1[2].f32[1];
    *&v40 = v25 * 0.0;
    *(&v40 + 1) = v25 * 0.0;
    *v41 = v25;
    *&v41[4] = v25 * 0.0;
    *&v41[8] = xmmword_2764D5F20;
    sub_2761558A0(a2, &v35, &v42);
    v26 = v43;
    *a2 = v42;
    *(a2 + 16) = v26;
    v27 = v45;
    *(a2 + 32) = v44;
    *(a2 + 48) = v27;
  }

  v28 = a1[5];
  if (v28.f32[0] != 0.0)
  {
    v29 = a1[6].f32[0];
LABEL_20:
    v30 = vmul_f32(v28, 0x8000000080000000);
    v31 = vaddv_f32(v30);
    v32.i32[1] = 0x80000000;
    *v32.i32 = v29 * -0.0;
    v35 = 1.0;
    v37 = 0;
    v36 = 0;
    v38 = 1.0;
    v39 = 0;
    v40 = 0;
    *v41 = 1065353216;
    *&v41[8] = vadd_f32(vadd_f32(vsub_f32(vrev64_s32(v30), v28), vdup_lane_s32(v32, 0)), 0);
    *&v41[16] = (v31 - v29) + 0.0;
    *&v41[20] = (v31 + (v29 * -0.0)) + 1.0;
    sub_2761558A0(a2, &v35, &v42);
    v33 = v43;
    *a2 = v42;
    *(a2 + 16) = v33;
    v34 = v45;
    *(a2 + 32) = v44;
    *(a2 + 48) = v34;
    return;
  }

  v29 = a1[6].f32[0];
  if (v28.f32[1] != 0.0 || v29 != 0.0)
  {
    goto LABEL_20;
  }
}

uint64_t sub_27616B32C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 36;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 73;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_27616B3D8(a1);
}

uint64_t sub_27616B3D8(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_27616B510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = TSCH3DChartBasicElementProperties;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_27616BF04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSCH3DChartBarElementProperties;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_27616D7F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void *sub_27616D88C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!(a2 >> 60))
    {
      operator new();
    }

    sub_276161760();
  }

  return result;
}

void sub_27616D910(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_27616DE40(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    sub_27616F218(a1, a2 - v2);
  }
}

void sub_27616DE70(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_27616F348(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void sub_27616E1C4()
{
  v65[2] = *MEMORY[0x277D85DE8];
  v65[0] = objc_opt_class();
  v65[1] = objc_opt_class();
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v0, v1, v2, v3, v65, 2);
  v10 = objc_msgSend_count(v4, v5, v6, v7, v8);
  if (v10)
  {
    v14 = 0;
    do
    {
      v15 = objc_msgSend_objectAtIndexedSubscript_(v4, v9, v11, v12, v13, v14);
      v20 = v14 == objc_msgSend_shapeType(v15, v16, v17, v18, v19);

      if (!v20)
      {
        v21 = MEMORY[0x277D81150];
        v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "[TSCH3DChartBarElementProperties p_appearanceClasses]_block_invoke");
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartBarElementProperties.mm");
        v32 = objc_msgSend_objectAtIndexedSubscript_(v4, v28, v29, v30, v31, v14);
        v37 = objc_msgSend_shapeType(v32, v33, v34, v35, v36);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v38, v39, v40, v41, v22, v27, 544, 0, "index %lu and shape type %lu mismatch", v14, v37);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
      }

      ++v14;
    }

    while (v10 != v14);
  }

  objc_storeStrong(&qword_280A46818, v4);
  if (!qword_280A46818)
  {
    v50 = MEMORY[0x277D81150];
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v47, v48, v49, "[TSCH3DChartBarElementProperties p_appearanceClasses]_block_invoke");
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartBarElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v57, v58, v59, v60, v51, v56, 548, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62, v63, v64);
  }
}

void *sub_27616EE68(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_27616EF94(v6, v10);
    }

    sub_276161760();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_27616EF94(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_27616EFD0(a1, a2);
  }

  sub_276161760();
}

void sub_27616EFD0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_2761617D0();
}

void *sub_27616F018(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      sub_27616F174(v6, v11);
    }

    sub_276161760();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void sub_27616F174(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_27616F1C0(a1, a2);
  }

  sub_276161760();
}

void sub_27616F1C0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2761617D0();
}

void sub_27616F218(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_276161760();
    }

    v9 = v4 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_27616EFD0(a1, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[4 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void sub_27616F348(uint64_t a1, unint64_t a2)
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
      sub_276161760();
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

    if (v9)
    {
      sub_27616F1C0(a1, v9);
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
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void sub_276170584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TSCH3DPixelBuffer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_276171128(int32x2_t *a1, int32x2_t *a2, unsigned int a3)
{
  v3 = vdup_n_s32(a3);
  v4 = vcge_s32(v3, vabd_s32(*a1, *a2));
  if (v4.i32[0] & v4.i32[1])
  {
    v5 = vcge_u32(v3, vabd_s32(a1[1], a2[1]));
    v6 = v5.i8[0] & v5.i8[4];
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void *sub_276171178(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2761711EC(result, a2);
  }

  return result;
}

void sub_2761711D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2761711EC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_276161760();
}

void sub_27617365C()
{
  v0 = objc_autoreleasePoolPush();
  qword_2812EE5F0 = 0;
  dword_2812EE5F8 = 0;
  xmmword_2812EE600 = xmmword_2764D6150;
  __asm { FMOV            V1.4S, #1.0 }

  xmmword_2812EE610 = _Q1;
  __asm { FMOV            V1.2S, #1.0 }

  qword_2812EE620 = _Q1;
  dword_2812EE628 = 1065353216;
  qword_2812EE630 = 0x4120000041B00000;
  dword_2812EE638 = 1068552874;
  qword_2812EE640 = 0;
  dword_2812EE648 = 0;
  qword_2812EE650 = 0x4440000044800000;

  objc_autoreleasePoolPop(v0);
}

void sub_276173C34(uint64_t a1, void *a2)
{
  v35 = a2;
  v7 = objc_msgSend_scene(v35, v3, v4, v5, v6);
  v12 = objc_msgSend_delegateForSceneObject_(v7, v8, v9, v10, v11, *(a1 + 32));

  v17 = objc_msgSend_processor(v35, v13, v14, v15, v16);
  v22 = objc_msgSend_effects(v17, v18, v19, v20, v21);
  objc_msgSend_didGenerateShaderEffects_sceneObject_pipeline_(v12, v23, v24, v25, v26, v22, *(a1 + 32), v35);

  if ((objc_msgSend_willSubmitSceneObject_pipeline_(v12, v27, v28, v29, v30, *(a1 + 32), v35) & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
    objc_msgSend_didSubmitSceneObject_pipeline_(v12, v31, v32, v33, v34, *(a1 + 32), v35);
  }
}

void sub_2761740B0(uint64_t a1, void *a2)
{
  v15 = a2;
  objc_msgSend_renderLabels_(*(a1 + 32), v3, v4, v5, v6);
  objc_msgSend_renderAnnotatedLabels_(*(a1 + 32), v7, v8, v9, v10, v15);
  objc_msgSend_didSubmitSceneObject_pipeline_(*(a1 + 40), v11, v12, v13, v14, *(a1 + 32), v15);
}

uint64_t sub_276174308(uint64_t a1, int a2, double a3, double a4, double a5)
{
  if (a2)
  {
    (*(*(a1 + 56) + 16))();
  }

  v6 = *(a1 + 32);

  return MEMORY[0x2821F9670](v6, sel_labelsResourcesSessionWillEndForSceneObject_pipeline_, a3, a4, a5);
}

void sub_276174FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_27617504C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276175064(uint64_t a1, void *a2)
{
  v24 = a2;
  if (objc_opt_isKindOfClass())
  {
    v8 = *(*(a1 + 32) + 8);
    if (*(v8 + 40))
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "+[TSCH3DChartAxisLabelsSceneObject valueAxisLabelAlignmentForScene:]_block_invoke");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAxisLabelsSceneObject.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 179, 0, "found multiple instance of %@: %@, %@", *(a1 + 40), *(*(*(a1 + 32) + 8) + 40), v24);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
      v8 = *(*(a1 + 32) + 8);
    }

    objc_storeStrong((v8 + 40), a2);
  }
}

void sub_276175D20(uint64_t a1)
{
  v2 = (*(*(a1 + 88) + 16))();
  (*(*(a1 + 96) + 16))(&v89);
  v7 = objc_msgSend_enumerator(*(a1 + 32), v3, v4, v5, v6);
  v12 = objc_msgSend_enumerator(v7, v8, v9, v10, v11);

  v17 = 0;
  v77 = v12;
  v78 = objc_msgSend_count(v12, v13, v14, v15, v16) - 1;
  while (1)
  {
    v22 = objc_msgSend_nextObject(v12, v18, v19, v20, v21);
    v27 = v22;
    if (!v22)
    {
      break;
    }

    if (v17 % v2)
    {
      if (*(a1 + 141) != 1)
      {
        goto LABEL_19;
      }

LABEL_10:
      if (v78 != v17)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v28 = objc_msgSend_stringForLabelResources_(v22, v23, v24, v25, v26, *(a1 + 40));
    if (!v28 || !v17 && (*(a1 + 140) & 1) != 0)
    {
      v29 = *(a1 + 141);

      if (v29 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_10;
    }

LABEL_13:
    if (!*(a1 + 48) || *(a1 + 142) != (v17 == *(a1 + 104)))
    {
      v30 = *(a1 + 56);
      objc_msgSend_value(v27, v23, v24, v25, v26);
      v32 = v31;
      v36 = objc_msgSend_count(v12, v33, v31, v34, v35);
      if (v30)
      {
        objc_msgSend_positionForValue_count_chartDirection_(v30, v37, v32, v39, v40, v36, a1 + 120);
      }

      else
      {
        v88 = 0;
        v87 = 0;
      }

      v41 = objc_msgSend_index(v27, v37, v38, v39, v40);
      v46 = objc_msgSend_index(v27, v42, v43, v44, v45);
      v47 = *(a1 + 132);
      v52 = objc_msgSend_stringForLabelResources_(v27, v48, v49, v50, v51, *(a1 + 40));
      v53 = *(a1 + 64);
      v86[0] = v46;
      v86[1] = v47;
      v85[0] = v41;
      v85[1] = 0;
      v83 = v87;
      v84 = v88;
      v54 = *(a1 + 112);
      v55 = *v54;
      v82 = *(v54 + 2);
      v56 = *(a1 + 136);
      v80 = v89;
      v81 = v55;
      sub_27615613C(&v79);
      LODWORD(v76) = v56;
      v59 = objc_msgSend_infoWithPipeline_index_resourceIndex_renderString_position_offset_alignment_wrapWidth_offset2D_rotation_alignmentPadding_(TSCH3DChartLabelsContainingLabelRenderInfo, v57, 0.0, 0.0, v58, v53, v86, v85, v52, &v83, &v81, v76, &v80, &v79);
      v60 = *(a1 + 72);
      v61 = *(a1 + 132);
      v62 = *(a1 + 136);
      v67 = objc_msgSend_index(v27, v63, v64, v65, v66);
      objc_msgSend_willSubmitLabelType_boundsIndex_alignment_elementIndex_forSceneObject_(v60, v68, v69, v70, v71, v61, v62, 0, v67, *(a1 + 80));
      objc_msgSend_renderLabelRenderInfo_(*(a1 + 80), v72, v73, v74, v75, v59);

      v12 = v77;
    }

LABEL_19:
    ++v17;
  }
}

float sub_27617600C(uint64_t a1, uint64_t a2)
{
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  result = *(a2 + 128);
  *(a1 + 128) = result;
  return result;
}

void sub_2761764A8(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = 0;
  v8 = objc_msgSend_properties(*(a1 + 32), a2, a4, a5, a6);
  v13 = objc_msgSend_info(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_chartType(v13, v14, v15, v16, v17);
  isHorizontal = objc_msgSend_isHorizontal(v18, v19, v20, v21, v22);

  if (isHorizontal)
  {
    v28 = *(a1 + 40);
    v29 = objc_msgSend_scene(*(a1 + 48), v24, v25, v26, v27);
    v35 = objc_msgSend_enumerator(*(a1 + 32), v30, v31, v32, v33);
    if (v28)
    {
      objc_msgSend_labelPositionDirectionForScene_enumerator_(v28, v34, v36, v37, v38, v29, v35);
    }

    else
    {
      v39 = 0.0;
    }

    *a3 = 0;
    *(a3 + 4) = v39 * 18.0;
  }
}

void sub_276176FE0(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = 0;
  v8 = objc_msgSend_info(*(a1 + 32), a2, a4, a5, a6);
  v13 = objc_msgSend_chartType(v8, v9, v10, v11, v12);

  if (objc_msgSend_intValueForProperty_defaultValue_(*(a1 + 40), v14, v15, v16, v17, 1059, 0) && objc_msgSend_supportsSeriesLabels(v13, v18, v19, v20, v21))
  {
    isHorizontal = objc_msgSend_isHorizontal(v13, v22, v23, v24, v25);
    v31 = objc_msgSend_info(*(a1 + 32), v27, v28, v29, v30);
    objc_msgSend_sizeOfSeriesLabelsForInfo_onlyHeight_(TSCHChartCategoryAxis, v32, v33, v34, v35, v31, isHorizontal ^ 1u);

    if (isHorizontal)
    {
      v40 = objc_msgSend_info(*(a1 + 32), v36, v37, v38, v39);
      v45 = objc_msgSend_paragraphStyleForLabelsFontForInfo_(TSCHChartCategoryAxis, v41, v42, v43, v44, v40);

      objc_msgSend_floatValueForProperty_(v45, v46, v47, v48, v49, 17);
      *a3 = -(v50 + (v51 + 12.0));
    }

    else
    {
      *(a3 + 4) = -(v52 + 12.0);
    }
  }
}

void sub_2761788E0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_276178AE8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_276179094(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v6 = *(a1 + 80);
  v23 = *(a1 + 72);
  HIDWORD(v5) = HIDWORD(v23);
  v24 = v4;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v21 = v6;
  v22 = *(a1 + 88);
  v9 = *(a1 + 112);
  v20 = *(a1 + 120);
  v10 = *(a1 + 100);
  *&v5 = v3;
  v18 = *(a1 + 92);
  HIDWORD(v3) = HIDWORD(v18);
  v19 = v9;
  LODWORD(v3) = *(a1 + 104);
  v17 = 0;
  v16 = v10;
  v11 = objc_msgSend_infoWithPipeline_index_resourceIndex_renderString_position_offset_alignment_wrapWidth_offset2D_rotation_alignmentPadding_(TSCH3DChartLabelsContainingLabelRenderInfo, a2, v5, v3, v9, v7, &v24, &v23, v8, &v21, &v19, v16, &v18, &v17);
  objc_msgSend_renderLabelRenderInfo_(*(a1 + 48), v12, v13, v14, v15, v11);
}

float sub_276179150(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  v2 = *(a2 + 100);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 100) = v2;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  result = *(a2 + 120);
  *(a1 + 120) = result;
  return result;
}

double sub_27617A3D8(void *a1)
{
  v2 = objc_getAssociatedObject(a1, qword_280A44948);
  v7 = v2;
  if (v2)
  {
    objc_msgSend_doubleValue(v2, v3, v4, v5, v6);
  }

  else
  {
    FontForStyle = TSWPFastCreateFontForStyle();
    v10 = FontForStyle;
    if (FontForStyle)
    {
      Ascent = CTFontGetAscent(FontForStyle);
      v7 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v12, Ascent, v13, v14);
      CFRelease(v10);
    }

    else
    {
      v7 = &unk_28856BC20;
    }

    objc_setAssociatedObject(a1, qword_280A44948, v7, 0x301);
    objc_msgSend_doubleValue(v7, v15, v16, v17, v18);
  }

  v19 = v8;

  return v19;
}

void sub_27617C23C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_applyChartElementsTransformToProcessor_(*(*(a1 + 32) + 24), v4, v5, v6, v7, v3);
  if (byte_280A46430 == 1)
  {
    v8 = objc_opt_class();
    v9 = *(a1 + 32);
    v10 = NSStringFromSelector(*(a1 + 40));
    v15 = objc_msgSend_count(*(*(a1 + 32) + 32), v11, v12, v13, v14);
    NSLog(&cfstr_PRenderingDela.isa, v8, v9, v10, v15);
  }

  v31 = *(*(a1 + 32) + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  objc_msgSend_sortElements_pipeline_(WeakRetained, v17, v18, v19, v20, &v31, *(*(a1 + 32) + 16));

  objc_storeStrong((*(a1 + 32) + 32), v31);
  v21 = objc_loadWeakRetained((*(a1 + 32) + 8));
  objc_msgSend_setTransparencyBlendingForProcessor_(v21, v22, v23, v24, v25, v3);

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_27617C3D4;
  v29[3] = &unk_27A6B6508;
  v30 = *(a1 + 48);
  v29[4] = *(a1 + 32);
  objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorStateSession, v26, COERCE_DOUBLE(v30), v27, v28, v3, v29);
}

void sub_27617C3D4(uint64_t a1, void *a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v57 = *(a1 + 40) < 1.0;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = *(*(a1 + 32) + 32);
  v8 = 0;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, v5, v6, v7, &v62, v66, 16);
  if (v10)
  {
    v14 = *v63;
    v15 = 1;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v63 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v62 + 1) + 8 * i);
        v18 = objc_msgSend_series(v17, v9, v11, v12, v13);
        v19 = v18 == v8;

        if (v19)
        {
          if ((v15 & 1) == 0)
          {
            v15 = 0;
            continue;
          }

          goto LABEL_14;
        }

        objc_msgSend_popState(v3, v9, v11, v12, v13);
        objc_msgSend_pushState(v3, v20, v21, v22, v23);
        v28 = objc_msgSend_session(*(*(a1 + 32) + 16), v24, v25, v26, v27);
        objc_msgSend_flushResourcesIfNecessary(v28, v29, v30, v31, v32);

        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
        v34 = *(*(a1 + 32) + 24);
        v40 = objc_msgSend_series(v17, v35, v36, v37, v38);
        if (v17)
        {
          objc_msgSend_index(v17, v39, v41, v42, v43);
        }

        else
        {
          v61 = 0;
        }

        v44 = *(*(a1 + 32) + 16);
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = sub_27617C6F0;
        v58[3] = &unk_27A6B64E0;
        v60 = v57;
        v58[4] = v17;
        v59 = *(a1 + 40);
        LODWORD(v41) = v59;
        v45 = objc_msgSend_applyEffectsForProperties_series_index_pipeline_injectEffectsUsingBlock_(WeakRetained, v39, v41, v42, v43, v34, v40, &v61, v44, v58);

        v50 = objc_msgSend_series(v17, v46, v47, v48, v49);

        if (v45)
        {
          v8 = v50;
LABEL_14:
          v51 = objc_loadWeakRetained((*(a1 + 32) + 8));
          objc_msgSend_render_pushMatrix_delayedPass_(v51, v52, v53, v54, v55, v17, 1, 1);

          v15 = 1;
          continue;
        }

        v15 = 0;
        v8 = v50;
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, v11, v12, v13, &v62, v66, 16);
    }

    while (v10);
  }
}

void sub_27617C6F0(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v6 = a3;
  if ((*(a1 + 44) & 1) != 0 || objc_msgSend_transparent(*(a1 + 32), v5, v7, v8, v9))
  {
    v10 = objc_msgSend_effect(TSCH3DAlphaBlendShaderEffect, v5, v7, v8, v9);
    objc_msgSend_addEffectOnce_toSection_(v19, v11, v12, v13, v14, v10, 3);

    LODWORD(v15) = *(a1 + 40);
    objc_msgSend_setChartAlpha_effectsStates_(TSCH3DAlphaBlendShaderEffect, v16, v15, v17, v18, v6);
  }
}

void sub_27617CAAC(void **a1, void *a2)
{
  v3 = a2;
  objc_msgSend_applyChartElementsTransformToProcessor_(*(a1[4] + 3), v4, v5, v6, v7, v3);
  while (1)
  {
    v12 = objc_msgSend_nextSeries(a1[5], v8, v9, v10, v11);
    if (!v12)
    {
      break;
    }

    WeakRetained = objc_loadWeakRetained(a1[4] + 1);
    shouldRenderSeries = objc_msgSend_shouldRenderSeries_(WeakRetained, v14, v15, v16, v17, v12);

    if (shouldRenderSeries)
    {
      v19 = a1[6];
      v20 = objc_loadWeakRetained(a1[4] + 1);
      LODWORD(v19) = objc_msgSend_willProcessSeries_sceneObject_pipeline_(v19, v21, v22, v23, v24, v12, v20, *(a1[4] + 2));

      if (v19)
      {
        v29 = objc_msgSend_session(*(a1[4] + 2), v25, v26, v27, v28);
        objc_msgSend_flushResourcesIfNecessary(v29, v30, v31, v32, v33);
      }

      else
      {
        v34 = objc_msgSend_pushStates(a1[4], v25, v26, v27, v28);
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = sub_27617CC94;
        v39[3] = &unk_27A6B6558;
        v39[4] = a1[4];
        v40 = v12;
        v41 = a1[6];
        objc_msgSend_performBlockWithProcessor_flag_block_(TSCH3DRenderProcessorMatrixSession, v35, v36, v37, v38, v3, v34, v39);
      }
    }
  }
}

void sub_27617CC94(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_pushStates(*(a1 + 32), v4, v5, v6, v7);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_27617CD90;
  v14[3] = &unk_27A6B6558;
  v9 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v15 = v9;
  v16 = *(a1 + 48);
  objc_msgSend_performBlockWithProcessor_flag_block_(TSCH3DRenderProcessorStateSession, v10, v11, v12, v13, v3, v8, v14);
}

void sub_27617CD90(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_processEnumeratorSeries_(*(a1 + 32), v4, v5, v6, v7, *(a1 + 40)))
  {
    v9 = *(a1 + 40);
    v8 = *(a1 + 48);
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    LOBYTE(v8) = objc_msgSend_willProcessElements_sceneObject_pipeline_(v8, v11, v12, v13, v14, v9, WeakRetained, *(*(a1 + 32) + 16));

    if ((v8 & 1) == 0)
    {
      v15 = objc_loadWeakRetained((*(a1 + 32) + 8));
      shouldRenderEachValue = objc_msgSend_shouldRenderEachValue(v15, v16, v17, v18, v19);

      if (shouldRenderEachValue)
      {
        v26 = objc_msgSend_elementEnumerator(*(a1 + 40), v21, v22, v23, v24);
        while (1)
        {
          v31 = objc_msgSend_nextElement(v26, v25, v27, v28, v29);
          if (!v31)
          {
            break;
          }

          v35 = *(a1 + 32);
          v36 = objc_msgSend_series(*(a1 + 40), v30, v32, v33, v34);
          objc_msgSend_position(v31, v37, v38, v39, v40);
          objc_msgSend_p_processElementInfoWithSeries_position_(v35, v41, v42, v43, v44, v36, &v67);
        }
      }

      else
      {
        v45 = *(a1 + 32);
        v26 = objc_msgSend_series(*(a1 + 40), v21, v22, v23, v24);
        v50 = *(a1 + 40);
        if (v50)
        {
          objc_msgSend_position(v50, v46, v47, v48, v49);
        }

        else
        {
          v67 = 0;
        }

        objc_msgSend_p_processElementInfoWithSeries_position_(v45, v46, v47, v48, v49, v26, &v67);
      }

      v55 = objc_msgSend_session(*(*(a1 + 32) + 16), v51, v52, v53, v54);
      objc_msgSend_flushResourcesIfNecessary(v55, v56, v57, v58, v59);

      v61 = *(a1 + 40);
      v60 = *(a1 + 48);
      v62 = objc_loadWeakRetained((*(a1 + 32) + 8));
      objc_msgSend_didProcessElements_sceneObject_pipeline_(v60, v63, v64, v65, v66, v61, v62, *(*(a1 + 32) + 16));
    }
  }
}

void sub_27617D194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TSCH3DChartElementSceneObjectProcessGeometryOnlyItems;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_27617DDB4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_27617E68C(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    objc_msgSend_renderState(v3, v4, v5, v6, v7);
    HIBYTE(v15) = 0;
    if ((v15 & 0x100) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
    v15 = 65792;
    v18 = 0;
  }

  v16 = 1;
  __asm { FMOV            V0.2S, #1.0 }

  v17 = _D0;
LABEL_6:
  objc_msgSend_setRenderState_(v8, v4, _D0, v6, v7, &v14);
  (*(*(a1 + 32) + 16))();
}

void sub_27617EC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_27617ED18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27617EFD0(void **a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_scene(a1[4], v4, v5, v6, v7);
  v13 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v9, v10, v11, v12, v8);

  if ((objc_msgSend_geometryOnly(a1[5], v14, v15, v16, v17) & 1) == 0 && (objc_msgSend_willUpdateElementEffectsStatesForElement_sceneObject_(a1[6], v18, v19, v20, v21, a1[5], a1[7]) & 1) == 0)
  {
    objc_msgSend_depthToWidthRatio(v13, v18, v19, v20, v21);
    objc_msgSend_updateElementEffectsStates_depthToWidthRatio_(a1[7], v22, v23, v24, v25, a1[5]);
  }

  v26 = objc_msgSend_properties(a1[5], v18, v19, v20, v21);
  v32 = objc_msgSend_series(a1[5], v27, v28, v29, v30);
  v36 = a1[5];
  if (v36)
  {
    objc_msgSend_index(v36, v31, v33, v34, v35);
  }

  else
  {
    v49 = 0;
  }

  v37 = objc_msgSend_applyElementTransformToProcessor_series_index_propertyAccessor_(v26, v31, v33, v34, v35, v3, v32, &v49, v13);

  if (v37)
  {
    objc_msgSend_didTransformElement_sceneObject_(a1[6], v38, v39, v40, v41, a1[5], a1[7]);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = sub_27617F1D4;
    v46[3] = &unk_27A6B6558;
    v46[4] = a1[7];
    v47 = a1[5];
    v48 = a1[6];
    objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorRenderStateSession, v42, v43, v44, v45, v3, v46);
  }
}

uint64_t sub_27617F1D4(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  objc_msgSend_prerenderElement_(*(a1 + 32), a2, a3, a4, a5, *(a1 + 40));
  if ((objc_msgSend_willRenderElement_sceneObject_(*(a1 + 48), v6, v7, v8, v9, *(a1 + 40), *(a1 + 32)) & 1) == 0)
  {
    objc_msgSend_renderElement_(*(a1 + 32), v10, v11, v12, v13, *(a1 + 40));
  }

  v14 = *(a1 + 32);

  return MEMORY[0x2821F9670](v14, sel_postrenderElement_, v11, v12, v13);
}

float sub_27617F7E4(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  for (i = 0; i != 128; i += 64)
  {
    v4 = a1 + i;
    *v4 = 1065353216;
    *(v4 + 12) = 0;
    *(v4 + 4) = 0;
    *(v4 + 20) = 1065353216;
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *(v4 + 40) = 1065353216;
    *(v4 + 52) = 0;
    *(v4 + 44) = 0;
    *(v4 + 60) = 1065353216;
  }

  *a1 = *a2;
  *(a1 + 4) = a2[1];
  *(a1 + 8) = a2[2];
  *(a1 + 12) = a2[3];
  *(a1 + 16) = a2[4];
  *(a1 + 20) = a2[5];
  *(a1 + 24) = a2[6];
  *(a1 + 28) = a2[7];
  *(a1 + 32) = a2[8];
  *(a1 + 36) = a2[9];
  *(a1 + 40) = a2[10];
  *(a1 + 44) = a2[11];
  *(a1 + 48) = a2[12];
  *(a1 + 52) = a2[13];
  *(a1 + 56) = a2[14];
  *(a1 + 60) = a2[15];
  *(a1 + 64) = *a3;
  *(a1 + 68) = *(a3 + 4);
  *(a1 + 72) = *(a3 + 8);
  *(a1 + 76) = *(a3 + 12);
  *(a1 + 80) = *(a3 + 16);
  *(a1 + 84) = *(a3 + 20);
  *(a1 + 88) = *(a3 + 24);
  *(a1 + 92) = *(a3 + 28);
  *(a1 + 96) = *(a3 + 32);
  *(a1 + 100) = *(a3 + 36);
  *(a1 + 104) = *(a3 + 40);
  *(a1 + 108) = *(a3 + 44);
  *(a1 + 112) = *(a3 + 48);
  *(a1 + 116) = *(a3 + 52);
  *(a1 + 120) = *(a3 + 56);
  result = *(a3 + 60);
  *(a1 + 124) = result;
  return result;
}

void sub_27617F924(void *a1)
{
  if (a1)
  {
    sub_27617F924(*a1);
    sub_27617F924(a1[1]);

    operator delete(a1);
  }
}

uint64_t *sub_27617F970(uint64_t *result, uint64_t *a2)
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

void sub_276181410(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = a1;
  v9 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v5, v6, v7, v8, a3, "{TexCoordTilingShaderEffectState={array<TSCH3D::TexCoordTilingShaderEffectState::Data, 3UL>=[3{Data={tvec2<float>=(?=fff)(?=fff)}{tvec2<float>=(?=fff)(?=fff)}}]}}");
  objc_msgSend_setValueState_forKey_(v14, v10, v11, v12, v13, v9, a2);
}

void *sub_276182010(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_2761820B0(result, a2);
    }

    sub_276161760();
  }

  return result;
}

void sub_2761820B0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_2761617D0();
}

uint64_t sub_2761820F8(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
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
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      break;
    }

    switch(v12)
    {
      case 3uLL:

        return sub_276182584(v9, v9 + 16, a2 - 16);
      case 4uLL:
        result = sub_276182584(v9, v9 + 16, v9 + 32);
        v25 = *(a2 - 16);
        v26 = *(v9 + 32);
        if (v25 >= v26)
        {
          if (v26 < v25)
          {
            return result;
          }

          v28 = *(a2 - 8);
          v27 = *(v9 + 40);
          if (v28 >= v27)
          {
            return result;
          }
        }

        else
        {
          v27 = *(v9 + 40);
          v28 = *(a2 - 8);
        }

        *(v9 + 32) = v25;
        *(a2 - 16) = v26;
        *(v9 + 40) = v28;
        *(a2 - 8) = v27;
        v29 = *(v9 + 32);
        v30 = *(v9 + 16);
        if (v29 >= v30)
        {
          if (v30 < v29)
          {
            return result;
          }

          v32 = *(v9 + 40);
          v31 = *(v9 + 24);
          if (v32 >= v31)
          {
            return result;
          }
        }

        else
        {
          v31 = *(v9 + 24);
          v32 = *(v9 + 40);
        }

        *(v9 + 16) = v29;
        *(v9 + 32) = v30;
        *(v9 + 24) = v32;
        *(v9 + 40) = v31;
        v33 = *v9;
        if (v29 >= *v9)
        {
          if (v33 < v29)
          {
            return result;
          }

          v34 = *(v9 + 8);
          if (v32 >= v34)
          {
            return result;
          }
        }

        else
        {
          v34 = *(v9 + 8);
        }

        *v9 = v29;
        *(v9 + 16) = v33;
        *(v9 + 8) = v32;
        *(v9 + 24) = v34;
        return result;
      case 5uLL:

        return sub_2761826DC(v9, v9 + 16, v9 + 32, v9 + 48, a2 - 16);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return sub_276182900(v9, a2);
      }

      else
      {

        return sub_2761829E0(v9, a2);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return sub_276182FE8(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = v9 + 16 * (v12 >> 1);
    if (v12 < 0x81)
    {
      sub_276182584(v9 + 16 * (v12 >> 1), v9, a2 - 16);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_276182584(v9, v9 + 16 * (v12 >> 1), a2 - 16);
      sub_276182584(v9 + 16, v14 - 16, a2 - 32);
      sub_276182584(v9 + 32, v9 + 16 + 16 * v13, a2 - 48);
      sub_276182584(v14 - 16, v14, v9 + 16 + 16 * v13);
      v15 = *v9;
      *v9 = *v14;
      *v14 = v15;
      v16 = *(v9 + 8);
      *(v9 + 8) = *(v14 + 8);
      *(v14 + 8) = v16;
      if (a5)
      {
        goto LABEL_20;
      }
    }

    v17 = *(v9 - 16);
    if (v17 >= *v9 && (*v9 < v17 || *(v9 - 8) >= *(v9 + 8)))
    {
      result = sub_276182A84(v9, a2);
      v9 = result;
      goto LABEL_25;
    }

LABEL_20:
    v18 = sub_276182BD8(v9, a2);
    if ((v19 & 1) == 0)
    {
      goto LABEL_23;
    }

    v20 = sub_276182D24(v9, v18);
    v9 = v18 + 16;
    result = sub_276182D24(v18 + 16, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v18;
      if (v20)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v20)
    {
LABEL_23:
      result = sub_2761820F8(v8, v18, a3, -v11, a5 & 1);
      v9 = v18 + 16;
LABEL_25:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v12 < 2)
  {
    return result;
  }

  if (v12 != 2)
  {
    goto LABEL_11;
  }

  v21 = *(a2 - 16);
  v22 = *v9;
  if (v21 < *v9)
  {
    v23 = *(v9 + 8);
    v24 = *(a2 - 8);
LABEL_30:
    *v9 = v21;
    *(a2 - 16) = v22;
    *(v9 + 8) = v24;
    *(a2 - 8) = v23;
    return result;
  }

  if (v22 >= v21)
  {
    v24 = *(a2 - 8);
    v23 = *(v9 + 8);
    if (v24 < v23)
    {
      goto LABEL_30;
    }
  }

  return result;
}

uint64_t sub_276182584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 < *a1 || v4 >= v3 && *(a2 + 8) < *(a1 + 8))
  {
    v5 = *a3;
    if (*a3 < v3)
    {
      v6 = *(a3 + 8);
LABEL_4:
      *a1 = v5;
      *a3 = v4;
      v7 = *(a1 + 8);
      *(a1 + 8) = v6;
      *(a3 + 8) = v7;
      return 1;
    }

    if (v3 >= v5)
    {
      v6 = *(a3 + 8);
      v16 = *(a2 + 8);
      if (v6 < v16)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v16 = *(a2 + 8);
    }

    *a1 = v3;
    *a2 = v4;
    v17 = *(a1 + 8);
    *(a1 + 8) = v16;
    *(a2 + 8) = v17;
    v18 = *a3;
    if (*a3 >= v4)
    {
      if (v4 < v18)
      {
        return 1;
      }

      v19 = *(a3 + 8);
      if (v19 >= v17)
      {
        return 1;
      }
    }

    else
    {
      v19 = *(a3 + 8);
    }

    *a2 = v18;
    *a3 = v4;
    *(a2 + 8) = v19;
    result = 1;
    *(a3 + 8) = v17;
    return result;
  }

  v9 = *a3;
  if (*a3 < v3)
  {
    v10 = *(a2 + 8);
    v11 = *(a3 + 8);
LABEL_10:
    *a2 = v9;
    *a3 = v3;
    *(a2 + 8) = v11;
    *(a3 + 8) = v10;
    v12 = *a2;
    v13 = *a1;
    if (*a2 < *a1)
    {
      v14 = *(a1 + 8);
      v15 = *(a2 + 8);
LABEL_12:
      *a1 = v12;
      *a2 = v13;
      *(a1 + 8) = v15;
      result = 1;
      *(a2 + 8) = v14;
      return result;
    }

    if (v13 >= v12)
    {
      v15 = *(a2 + 8);
      v14 = *(a1 + 8);
      if (v15 < v14)
      {
        goto LABEL_12;
      }
    }

    return 1;
  }

  if (v3 >= v9)
  {
    v11 = *(a3 + 8);
    v10 = *(a2 + 8);
    if (v11 < v10)
    {
      goto LABEL_10;
    }
  }

  return 0;
}

uint64_t sub_2761826DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_276182584(a1, a2, a3);
  v11 = *a4;
  v12 = *a3;
  if (*a4 >= *a3)
  {
    if (v12 < v11)
    {
      goto LABEL_16;
    }

    v14 = *(a4 + 8);
    v13 = *(a3 + 8);
    if (v14 >= v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = *(a3 + 8);
    v14 = *(a4 + 8);
  }

  *a3 = v11;
  *a4 = v12;
  *(a3 + 8) = v14;
  *(a4 + 8) = v13;
  v15 = *a3;
  v16 = *a2;
  if (*a3 >= *a2)
  {
    if (v16 < v15)
    {
      goto LABEL_16;
    }

    v18 = *(a3 + 8);
    v17 = *(a2 + 8);
    if (v18 >= v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = *(a2 + 8);
    v18 = *(a3 + 8);
  }

  *a2 = v15;
  *a3 = v16;
  *(a2 + 8) = v18;
  *(a3 + 8) = v17;
  v19 = *a2;
  v20 = *a1;
  if (*a2 < *a1)
  {
    v21 = *(a1 + 8);
    v22 = *(a2 + 8);
LABEL_7:
    *a1 = v19;
    *a2 = v20;
    *(a1 + 8) = v22;
    *(a2 + 8) = v21;
    goto LABEL_16;
  }

  if (v20 >= v19)
  {
    v22 = *(a2 + 8);
    v21 = *(a1 + 8);
    if (v22 < v21)
    {
      goto LABEL_7;
    }
  }

LABEL_16:
  v23 = *a5;
  v24 = *a4;
  if (*a5 >= *a4)
  {
    if (v24 < v23)
    {
      return result;
    }

    v26 = *(a5 + 8);
    v25 = *(a4 + 8);
    if (v26 >= v25)
    {
      return result;
    }
  }

  else
  {
    v25 = *(a4 + 8);
    v26 = *(a5 + 8);
  }

  *a4 = v23;
  *a5 = v24;
  *(a4 + 8) = v26;
  *(a5 + 8) = v25;
  v27 = *a4;
  v28 = *a3;
  if (*a4 >= *a3)
  {
    if (v28 < v27)
    {
      return result;
    }

    v30 = *(a4 + 8);
    v29 = *(a3 + 8);
    if (v30 >= v29)
    {
      return result;
    }
  }

  else
  {
    v29 = *(a3 + 8);
    v30 = *(a4 + 8);
  }

  *a3 = v27;
  *a4 = v28;
  *(a3 + 8) = v30;
  *(a4 + 8) = v29;
  v31 = *a3;
  v32 = *a2;
  if (*a3 >= *a2)
  {
    if (v32 < v31)
    {
      return result;
    }

    v34 = *(a3 + 8);
    v33 = *(a2 + 8);
    if (v34 >= v33)
    {
      return result;
    }
  }

  else
  {
    v33 = *(a2 + 8);
    v34 = *(a3 + 8);
  }

  *a2 = v31;
  *a3 = v32;
  *(a2 + 8) = v34;
  *(a3 + 8) = v33;
  v35 = *a2;
  v36 = *a1;
  if (*a2 < *a1)
  {
    v37 = *(a1 + 8);
    v38 = *(a2 + 8);
LABEL_24:
    *a1 = v35;
    *a2 = v36;
    *(a1 + 8) = v38;
    *(a2 + 8) = v37;
    return result;
  }

  if (v36 >= v35)
  {
    v38 = *(a2 + 8);
    v37 = *(a1 + 8);
    if (v38 < v37)
    {
      goto LABEL_24;
    }
  }

  return result;
}

uint64_t sub_276182900(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return result;
  }

  v2 = result + 16;
  if (result + 16 == a2)
  {
    return result;
  }

  v3 = 0;
  v4 = result;
  do
  {
    v5 = v4;
    v4 = v2;
    v6 = *(v5 + 16);
    v7 = *v5;
    if (v6 >= *v5)
    {
      if (v7 < v6)
      {
        goto LABEL_19;
      }

      v8 = *(v5 + 24);
      v9 = *(v5 + 8);
      if (v8 >= v9)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v8 = *(v5 + 24);
      v9 = *(v5 + 8);
    }

    *(v5 + 16) = v7;
    *(v4 + 8) = v9;
    v10 = result;
    if (v5 == result)
    {
      goto LABEL_18;
    }

    v11 = v3;
    while (1)
    {
      v12 = *(result + v11 - 16);
      if (v6 >= v12)
      {
        break;
      }

      v13 = *(result + v11 - 8);
LABEL_12:
      v5 -= 16;
      v14 = result + v11;
      *v14 = v12;
      *(v14 + 8) = v13;
      v11 -= 16;
      if (!v11)
      {
        v10 = result;
        goto LABEL_18;
      }
    }

    if (v12 >= v6)
    {
      v10 = result + v11;
      v13 = *(result + v11 - 8);
      if (v8 >= v13)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    }

    v10 = v5;
LABEL_18:
    *v10 = v6;
    *(v10 + 8) = v8;
LABEL_19:
    v2 = v4 + 16;
    v3 += 16;
  }

  while (v4 + 16 != a2);
  return result;
}

uint64_t sub_2761829E0(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 16;
    if (result + 16 != a2)
    {
      for (i = result + 8; ; i += 16)
      {
        v4 = result;
        result = v2;
        v5 = *(v4 + 16);
        v6 = *v4;
        if (v5 < *v4)
        {
          break;
        }

        if (v6 >= v5)
        {
          v7 = *(v4 + 24);
          if (v7 < *(v4 + 8))
          {
            goto LABEL_6;
          }
        }

LABEL_14:
        v2 = result + 16;
        if (result + 16 == a2)
        {
          return result;
        }
      }

      v7 = *(v4 + 24);
LABEL_6:
      for (j = i; ; j -= 16)
      {
        *(j + 8) = v6;
        *(j + 16) = *j;
        v6 = *(j - 24);
        if (v5 >= v6 && (v6 < v5 || v7 >= *(j - 16)))
        {
          break;
        }
      }

      *(j - 8) = v5;
      *j = v7;
      goto LABEL_14;
    }
  }

  return result;
}

unint64_t sub_276182A84(unint64_t a1, unint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a2 - 16);
  if (*a1 < v4 || v4 >= v2 && v3 < *(a2 - 8))
  {
    i = a1;
    do
    {
      v6 = *(i + 16);
      i += 16;
      v7 = v6;
    }

    while (v2 >= v6 && (v7 < v2 || v3 >= *(i + 8)));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 16; v2 < v4 || v4 >= v2 && v3 < *(a2 + 8); a2 -= 16)
    {
      v8 = *(a2 - 16);
      v4 = v8;
    }
  }

  if (i < a2)
  {
    v9 = *i;
    v10 = *a2;
    do
    {
      *i = v10;
      *a2 = v9;
      v11 = *(i + 16);
      i += 16;
      v9 = v11;
      v12 = *(i - 8);
      *(i - 8) = *(a2 + 8);
      *(a2 + 8) = v12;
      while (v2 >= v9 && (v9 < v2 || v3 >= *(i + 8)))
      {
        v13 = *(i + 16);
        i += 16;
        v9 = v13;
      }

      do
      {
        do
        {
          v14 = *(a2 - 16);
          a2 -= 16;
          v10 = v14;
        }

        while (v2 < v14);
      }

      while (v10 >= v2 && v3 < *(a2 + 8));
    }

    while (i < a2);
  }

  if (i - 16 != a1)
  {
    *a1 = *(i - 16);
    *(a1 + 8) = *(i - 8);
  }

  *(i - 16) = v2;
  *(i - 8) = v3;
  return i;
}

unint64_t sub_276182BD8(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 8);
  while (1)
  {
    v5 = *(a1 + v2 + 16);
    if (v5 >= v3 && (v3 < v5 || *(a1 + v2 + 24) >= v4))
    {
      break;
    }

    v2 += 16;
  }

  v6 = a1 + v2 + 16;
  if (v2)
  {
    do
    {
      v7 = *(a2 - 16);
      a2 -= 16;
      v8 = v7;
    }

    while (v7 >= v3 && (v3 < v8 || *(a2 + 8) >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v9 = *(a2 - 16);
        a2 -= 16;
        v10 = v9;
        if (v9 < v3)
        {
          break;
        }

        if (v3 < v10)
        {
          goto LABEL_19;
        }
      }

      while (*(a2 + 8) >= v4 && v6 < a2);
    }
  }

  if (v6 >= a2)
  {
    v13 = a1 + v2 + 16;
  }

  else
  {
    v12 = *a2;
    v13 = a1 + v2 + 16;
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v5;
      v15 = *(v13 + 8);
      *(v13 + 8) = *(v14 + 8);
      *(v14 + 8) = v15;
      do
      {
        do
        {
          v16 = *(v13 + 16);
          v13 += 16;
          v5 = v16;
        }

        while (v16 < v3);
      }

      while (v3 >= v5 && *(v13 + 8) < v4);
      do
      {
        v17 = *(v14 - 16);
        v14 -= 16;
        v12 = v17;
      }

      while (v17 >= v3 && (v3 < v12 || *(v14 + 8) >= v4));
    }

    while (v13 < v14);
  }

  if (v13 - 16 != a1)
  {
    *a1 = *(v13 - 16);
    *(a1 + 8) = *(v13 - 8);
  }

  *(v13 - 16) = v3;
  *(v13 - 8) = v4;
  return v13 - 16;
}

BOOL sub_276182D24(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_276182584(a1, a1 + 16, a2 - 16);
        return 1;
      case 4:
        sub_276182584(a1, a1 + 16, a1 + 32);
        v23 = *(a2 - 16);
        v24 = *(a1 + 32);
        if (v23 >= v24)
        {
          if (v24 < v23)
          {
            return 1;
          }

          v26 = *(a2 - 8);
          v25 = *(a1 + 40);
          if (v26 >= v25)
          {
            return 1;
          }
        }

        else
        {
          v25 = *(a1 + 40);
          v26 = *(a2 - 8);
        }

        *(a1 + 32) = v23;
        *(a2 - 16) = v24;
        *(a1 + 40) = v26;
        *(a2 - 8) = v25;
        v27 = *(a1 + 32);
        v28 = *(a1 + 16);
        if (v27 >= v28)
        {
          if (v28 < v27)
          {
            return 1;
          }

          v30 = *(a1 + 40);
          v29 = *(a1 + 24);
          if (v30 >= v29)
          {
            return 1;
          }
        }

        else
        {
          v29 = *(a1 + 24);
          v30 = *(a1 + 40);
        }

        *(a1 + 16) = v27;
        *(a1 + 32) = v28;
        *(a1 + 24) = v30;
        *(a1 + 40) = v29;
        v31 = *a1;
        if (v27 >= *a1)
        {
          if (v31 < v27)
          {
            return 1;
          }

          v32 = *(a1 + 8);
          if (v30 >= v32)
          {
            return 1;
          }
        }

        else
        {
          v32 = *(a1 + 8);
        }

        *a1 = v27;
        *(a1 + 16) = v31;
        *(a1 + 8) = v30;
        result = 1;
        *(a1 + 24) = v32;
        return result;
      case 5:
        sub_2761826DC(a1, a1 + 16, a1 + 32, a1 + 48, a2 - 16);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 16);
      v6 = *a1;
      if (v5 < *a1)
      {
        v7 = *(a1 + 8);
        v8 = *(a2 - 8);
LABEL_6:
        *a1 = v5;
        *(a2 - 16) = v6;
        *(a1 + 8) = v8;
        result = 1;
        *(a2 - 8) = v7;
        return result;
      }

      if (v6 >= v5)
      {
        v8 = *(a2 - 8);
        v7 = *(a1 + 8);
        if (v8 < v7)
        {
          goto LABEL_6;
        }
      }

      return 1;
    }
  }

  v10 = a1 + 32;
  sub_276182584(a1, a1 + 16, a1 + 32);
  v11 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (2)
  {
    v14 = *v11;
    v15 = *v10;
    if (*v11 >= *v10)
    {
      if (v15 < v14)
      {
        goto LABEL_28;
      }

      v16 = *(v11 + 8);
      v17 = *(v10 + 8);
      if (v16 >= v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *(v11 + 8);
      v17 = *(v10 + 8);
    }

    *v11 = v15;
    *(v11 + 8) = v17;
    v18 = v12;
    while (1)
    {
      v19 = a1 + v18;
      v20 = *(a1 + v18 + 16);
      if (v14 >= v20)
      {
        break;
      }

      v21 = *(v19 + 24);
LABEL_21:
      *(v19 + 32) = v20;
      *(a1 + v18 + 40) = v21;
      v18 -= 16;
      if (v18 == -32)
      {
        v22 = a1;
        goto LABEL_27;
      }
    }

    if (v20 >= v14)
    {
      v21 = *(a1 + v18 + 24);
      if (v16 < v21)
      {
        goto LABEL_21;
      }
    }

    v22 = a1 + v18 + 32;
LABEL_27:
    *v22 = v14;
    *(v22 + 8) = v16;
    if (++v13 != 8)
    {
LABEL_28:
      v10 = v11;
      v12 += 16;
      v11 += 16;
      if (v11 == a2)
      {
        return 1;
      }

      continue;
    }

    return v11 + 16 == a2;
  }
}

uint64_t sub_276182FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = a1 + 16 * v9;
      do
      {
        sub_276183170(a1, a4, v8, v11);
        v11 -= 16;
        --v10;
      }

      while (v10);
    }

    i = a2;
    if (a2 != a3)
    {
      for (i = a2; i != a3; i += 16)
      {
        v13 = *i;
        v14 = *a1;
        if (*i >= *a1)
        {
          if (v14 < v13)
          {
            continue;
          }

          v15 = *(i + 8);
          v16 = *(a1 + 8);
          if (v15 >= v16)
          {
            continue;
          }
        }

        else
        {
          v15 = *(i + 8);
          v16 = *(a1 + 8);
        }

        *i = v14;
        *a1 = v13;
        *(i + 8) = v16;
        *(a1 + 8) = v15;
        sub_276183170(a1, a4, v8, a1);
      }
    }

    if (v8 >= 2)
    {
      v17 = a2 - 16;
      do
      {
        v18 = *a1;
        v19 = *(a1 + 8);
        sub_2761832B8(a1, a4, v8);
        if (v17 == v20)
        {
          *v20 = v18;
          *(v20 + 8) = v19;
        }

        else
        {
          *v20 = *v17;
          *(v20 + 8) = *(v17 + 8);
          *v17 = v18;
          *(v17 + 8) = v19;
          sub_276183344(a1, v20 + 16, a4, (v20 + 16 - a1) >> 4);
        }

        v17 -= 16;
      }

      while (v8-- > 2);
    }

    return i;
  }

  return a3;
}

uint64_t sub_276183170(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = result + 16 * v7;
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = *(v8 + 16);
        if (*v8 < v10 || v10 >= *v8 && *(v8 + 8) < *(v8 + 24))
        {
          v8 += 16;
          v7 = v9;
        }
      }

      v11 = *v8;
      v12 = *a4;
      if (*v8 >= *a4)
      {
        if (v12 >= v11)
        {
          v14 = *(v8 + 8);
          v13 = *(a4 + 8);
          if (v14 < v13)
          {
            return result;
          }
        }

        else
        {
          v13 = *(a4 + 8);
          v14 = *(v8 + 8);
        }

        *a4 = v11;
        *(a4 + 8) = v14;
        if (v5 >= v7)
        {
          while (1)
          {
            v16 = 2 * v7;
            v7 = (2 * v7) | 1;
            v15 = result + 16 * v7;
            v17 = v16 + 2;
            if (v17 < a3)
            {
              v18 = *(v15 + 16);
              if (*v15 < v18 || v18 >= *v15 && *(v15 + 8) < *(v15 + 24))
              {
                v15 += 16;
                v7 = v17;
              }
            }

            v19 = *v15;
            if (*v15 < v12)
            {
              break;
            }

            v20 = *(v15 + 8);
            if (v12 >= v19 && v20 < v13)
            {
              break;
            }

            *v8 = v19;
            *(v8 + 8) = v20;
            v8 = v15;
            if (v5 < v7)
            {
              goto LABEL_14;
            }
          }
        }

        v15 = v8;
LABEL_14:
        *v15 = v12;
        *(v15 + 8) = v13;
      }
    }
  }

  return result;
}

float sub_2761832B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1;
    v5 = a1 + 16 * v3;
    a1 = v5 + 16;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = *(v5 + 32);
      v9 = *(v5 + 16);
      if (v9 < v8 || v8 >= v9 && *(v5 + 24) < *(v5 + 40))
      {
        a1 = v5 + 32;
        v3 = v7;
      }
    }

    result = *a1;
    *v4 = *a1;
    *(v4 + 8) = *(a1 + 8);
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t sub_276183344(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = result + 16 * (v4 >> 1);
    v7 = *v6;
    v8 = *(a2 - 16);
    if (*v6 >= v8)
    {
      if (v8 < v7)
      {
        return result;
      }

      v10 = *(v6 + 8);
      v9 = *(a2 - 8);
      if (v10 >= v9)
      {
        return result;
      }
    }

    else
    {
      v9 = *(a2 - 8);
      v10 = *(v6 + 8);
    }

    *(a2 - 16) = v7;
    *(a2 - 8) = v10;
    if (v4 >= 2)
    {
      while (1)
      {
        v12 = v5 - 1;
        v5 = (v5 - 1) >> 1;
        v11 = result + 16 * v5;
        v13 = *v11;
        if (*v11 >= v8)
        {
          if (v8 < v13)
          {
            break;
          }

          v14 = *(v11 + 8);
          if (v14 >= v9)
          {
            break;
          }
        }

        else
        {
          v14 = *(v11 + 8);
        }

        *v6 = v13;
        *(v6 + 8) = v14;
        v6 = result + 16 * v5;
        if (v12 <= 1)
        {
          goto LABEL_11;
        }
      }
    }

    v11 = v6;
LABEL_11:
    *v11 = v8;
    *(v11 + 8) = v9;
  }

  return result;
}

void sub_2761847C4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_276184F04(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_2761850B4(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void *sub_2761864D4(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_27616EF94(result, a2);
  }

  return result;
}

void sub_276186530(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_276186F78(void *a1, const void **a2, const void **a3, float a4)
{
  v7 = a1;
  v12 = v7;
  v44 = a4;
  if (v7)
  {
    objc_msgSend_size(v7, v8, v9, v10, v11);
    v13 = v43;
  }

  else
  {
    v13 = 0;
  }

  sub_27616DE40(a2, v13);
  sub_27616DE40(a3, v13);
  v19 = objc_msgSend_elementEnumerator(v12, v14, v15, v16, v17);
  while (1)
  {
    v23 = objc_msgSend_nextElement(v19, v18, v20, v21, v22);
    v28 = v23;
    if (!v23)
    {
      break;
    }

    objc_msgSend_position(v23, v24, v25, v26, v27);
    v29 = v43;
    objc_msgSend_groupValue(v28, v30, v31, v32, v33);
    v35 = v34;
    objc_msgSend_unitSpaceValue(v28, v36, v34, v37, v38);
    *&v40 = v40;
    v39 = v35;
    *(*a2 + v43) = v39;
    *(*a3 + v29) = LODWORD(v40);
  }

  v42 = *a3;
  v41 = a3[1];
  if (v41 == *a3)
  {
    v43 = 0;
    sub_276187114(a2, &v43);
    sub_276187114(a3, &v44);
    v42 = *a3;
    v41 = a3[1];
  }

  if (v41 - v42 == 4)
  {
    v43 = 1065353216;
    sub_276187114(a2, &v43);
    sub_276187114(a3, *a3);
  }
}

void sub_276187114(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_276161760();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_27616EFD0(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

id sub_2761877AC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v10 = objc_msgSend_asDurationFormat(v5, v6, v7, v8, v9);
  v15 = v10;
  if (v10)
  {
    v16 = objc_msgSend_chartDurationFormatProperties(v10, v11, v12, v13, v14);
    v17 = v4[2](v4, v16);
    v22 = objc_msgSend_formatByApplyingTSCHDurationFormatProperties_(v15, v18, v19, v20, v21, v17);
    v27 = v22;
    if (v22)
    {
      v28 = v22;

      v5 = v28;
    }

    else
    {
      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "[TSKFormat(TSCHTimeBasedFormatSupport) formatByUpdatingIfDurationFormatWithBlock:]");
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTimeBasedFormat.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v36, v37, v38, v39, v30, v35, 62, 0, "invalid nil value for '%{public}s'", "updatedFormat");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
    }
  }

  return v5;
}

uint64_t sub_27618792C(void *a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend_useAutomaticUnits(a1, a2, a3, a4, a5);
  v11 = objc_msgSend_durationUnitSmallest(a1, v7, v8, v9, v10);
  v16 = objc_msgSend_durationUnitLargest(a1, v12, v13, v14, v15);
  return (v16 << 16) | (objc_msgSend_durationStyle(a1, v17, v18, v19, v20) << 24) | (v11 << 8) | v6;
}

id sub_27618798C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = objc_alloc(MEMORY[0x277D80678]);
  v9 = objc_msgSend_initWithUseAutomaticUnits_durationUnitSmallest_durationUnitLargest_durationStyle_(v4, v5, v6, v7, v8, a3 & 1, BYTE1(a3), BYTE2(a3), HIBYTE(a3));

  return v9;
}

void sub_27618A790(uint64_t a1)
{
  v2 = [TSCH3DDataBufferResource alloc];
  v7 = objc_msgSend_p_wholePieBounds(*(a1 + 32), v3, v4, v5, v6);
  obj = objc_msgSend_initWithBuffer_(v2, v8, v9, v10, v11, v7);

  objc_storeStrong(&qword_280A46828, obj);
  if (!qword_280A46828)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "+[TSCH3DChartPieFamilySceneObject wholePieBoundsResource]_block_invoke");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPieFamilySceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 166, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }
}

void sub_27618BEBC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t sub_27618C374(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v2, v3, v4, v5, "typename DataBufferTraits<T>::ContainerType &TSCH3D::MutableContainerFrom(TSCH3DResource *__strong) [T = glm::detail::tvec4<float>]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DDataBufferResource.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 41, 0, "invalid resource %@", v1);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  v22 = objc_msgSend_buffer(v1, v2, v3, v4, v5);
  if (!v22)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v23, v24, v25, "typename DataBufferTraits<T>::ContainerType &TSCH3D::MutableContainerFrom(TSCH3DResource *__strong) [T = glm::detail::tvec4<float>]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DDataBufferResource.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v34, v35, v36, v27, v32, 43, 0, "invalid nil value for '%{public}s'", "buffer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
  }

  v41 = objc_opt_class();
  if (v41 != objc_opt_class())
  {
    v46 = MEMORY[0x277D81150];
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, "typename DataBufferTraits<T>::ContainerType &TSCH3D::MutableContainerFrom(TSCH3DResource *__strong) [T = glm::detail::tvec4<float>]");
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, v49, v50, v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DDataBufferResource.h");
    v53 = objc_opt_class();
    v54 = NSStringFromClass(v53);
    v55 = objc_opt_class();
    v56 = NSStringFromClass(v55);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v57, v58, v59, v60, v47, v52, 44, 0, "ContainerFrom data buffer type mismatch %@ expected %@", v54, v56);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62, v63, v64);
  }

  objc_msgSend_setChanged_(v1, v42, v43, v44, v45, 1);
  v69 = objc_msgSend_container(v22, v65, v66, v67, v68);

  return v69;
}

uint64_t sub_27618C648(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v2, v3, v4, v5, "typename DataBufferTraits<T>::ContainerType &TSCH3D::MutableContainerFrom(TSCH3DResource *__strong) [T = glm::detail::tvec3<float>]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DDataBufferResource.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 41, 0, "invalid resource %@", v1);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  v22 = objc_msgSend_buffer(v1, v2, v3, v4, v5);
  if (!v22)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v23, v24, v25, "typename DataBufferTraits<T>::ContainerType &TSCH3D::MutableContainerFrom(TSCH3DResource *__strong) [T = glm::detail::tvec3<float>]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DDataBufferResource.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v34, v35, v36, v27, v32, 43, 0, "invalid nil value for '%{public}s'", "buffer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
  }

  v41 = objc_opt_class();
  if (v41 != objc_opt_class())
  {
    v46 = MEMORY[0x277D81150];
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, "typename DataBufferTraits<T>::ContainerType &TSCH3D::MutableContainerFrom(TSCH3DResource *__strong) [T = glm::detail::tvec3<float>]");
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, v49, v50, v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DDataBufferResource.h");
    v53 = objc_opt_class();
    v54 = NSStringFromClass(v53);
    v55 = objc_opt_class();
    v56 = NSStringFromClass(v55);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v57, v58, v59, v60, v47, v52, 44, 0, "ContainerFrom data buffer type mismatch %@ expected %@", v54, v56);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62, v63, v64);
  }

  objc_msgSend_setChanged_(v1, v42, v43, v44, v45, 1);
  v69 = objc_msgSend_container(v22, v65, v66, v67, v68);

  return v69;
}

void sub_27618CA98()
{
  v0 = [TSCH3DShaderVariable alloc];
  v5 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v0, v1, v2, v3, v4, @"ShadowColor", @"vec4", @"lowp", 0, 3, 0, 0);
  v6 = qword_280A46838;
  v26 = v5;
  qword_280A46838 = v5;

  if (!qword_280A46838)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "+[TSCH3DProjectiveTextureShaderEffect variableShadowColor]_block_invoke");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartShadowsSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 250, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }
}

void sub_27618CC4C()
{
  v0 = [TSCH3DShaderVariable alloc];
  v5 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v0, v1, v2, v3, v4, @"ShadowBorderFade", @"vec2", @"mediump", 0, 3, 0, 0);
  v6 = qword_280A46848;
  v26 = v5;
  qword_280A46848 = v5;

  if (!qword_280A46848)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "+[TSCH3DProjectiveTextureShaderEffect variableShadowBorderFade]_block_invoke");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartShadowsSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 251, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }
}

void sub_27618D9A4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_27618DFA0(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  objc_msgSend_renderShadowScene_(*(a1 + 32), a2, a3, a4, a5, *(a1 + 40));
  objc_msgSend_setOriginal_(*(a1 + 48), v6, v7, v8, v9, 0);
  if (byte_280A46430 == 1)
  {
    v10 = objc_opt_class();
    v11 = *(a1 + 32);
    v17 = NSStringFromSelector(*(a1 + 64));
    v16 = objc_msgSend_processor(*(a1 + 56), v12, v13, v14, v15);
    NSLog(&cfstr_PShadowIsPrere.isa, v10, v11, v17, v16);
  }
}

void sub_27618E2AC(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v9 = objc_msgSend_camera(*(a1 + 32), v4, v5, v6, v7);
  if (v3)
  {
    objc_msgSend_size(v3, v8, v10, v11, v12);
  }

  else
  {
    *&v41 = 0;
  }

  objc_msgSend_setContainingViewportSize_(v9, v8, v10, v11, v12, &v41);

  v18 = objc_msgSend_processor(*(a1 + 40), v13, v14, v15, v16);
  if (v18)
  {
    v22 = objc_msgSend_processor(*(a1 + 40), v17, v19, v20, v21);
    v27 = v22;
    if (v22)
    {
      objc_msgSend_renderState(v22, v23, v24, v25, v26);
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
    }
  }

  else
  {
    *&v41 = 0;
    DWORD2(v41) = 16843008;
    BYTE12(v41) = 0;
    v42 = 0uLL;
  }

  WORD4(v41) = 0;
  v32 = objc_msgSend_processor(*(a1 + 40), v28, v29, v30, v31);
  objc_msgSend_setRenderState_(v32, v33, v34, v35, v36, &v41);

  LODWORD(v37) = *(a1 + 56);
  LODWORD(v38) = *(a1 + 60);
  LODWORD(v39) = *(a1 + 64);
  objc_msgSend_prerenderShadows_blurslack_angle_quality_targetFBO_(*(a1 + 48), v40, v37, v38, v39, *(a1 + 40), v3);
}

void sub_27618E580(void **a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_scene(a1[4], v4, v5, v6, v7);
  v13 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v9, v10, v11, v12, v8);

  if (v13)
  {
    objc_msgSend_stageTransform(v13, v14, v15, v16, v17);
  }

  else
  {
    v18 = 0.0;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
  }

  objc_msgSend_multiply_(v3, v14, v18, v16, v17, &v114);
  v23 = objc_msgSend_quad(a1[5], v19, v20, v21, v22);
  objc_msgSend_geometry_(v3, v24, v25, v26, v27, v23);

  v32 = objc_msgSend_texcoords(a1[5], v28, v29, v30, v31);
  objc_msgSend_texcoords_(v3, v33, v34, v35, v36, v32);

  v37 = qword_280A46620;
  v42 = objc_msgSend_fadecoords(a1[5], v38, v39, v40, v41);
  v114 = 0uLL;
  *&v115 = 0;
  objc_msgSend_attribute_resource_specs_(v3, v43, v44, v45, v46, v37, v42, &v114);

  v51 = objc_msgSend_scene(a1[4], v47, v48, v49, v50);
  v56 = objc_msgSend_delegateForSceneObject_(v51, v52, v53, v54, v55, a1[6]);

  v61 = objc_msgSend_effects(v3, v57, v58, v59, v60);
  v66 = objc_msgSend_effects(a1[6], v62, v63, v64, v65);
  objc_msgSend_resetToArray_(v61, v67, v68, v69, v70, v66);

  v75 = objc_msgSend_effects(v3, v71, v72, v73, v74);
  objc_msgSend_didGenerateShaderEffects_sceneObject_pipeline_(v56, v76, v77, v78, v79, v75, a1[6], a1[4]);

  if ((objc_msgSend_willSubmitSceneObject_pipeline_(v56, v80, v81, v82, v83, a1[6], a1[4]) & 1) == 0)
  {
    v88 = objc_msgSend_effectsStates(v3, v84, v85, v86, v87);
    v93 = objc_msgSend_stateSharingID(TSCH3DAlphaBlendShaderEffect, v89, v90, v91, v92);
    __asm { FMOV            V0.2S, #1.0 }

    v113 = _D0;
    sub_27618E84C(v88, v93, &v113, &v114, v99, v100);

    if ((*&v114 * *(&v114 + 1)) >= 0.00000011921)
    {
      *&v102 = *&v114 * *(&v114 + 1);
      v104 = objc_msgSend_infoWithType_(TSCH3DPrimitiveInfo, v101, v102, 3.18618444e-58, v103, 1);
      objc_msgSend_submit_(v3, v105, v106, v107, v108, v104);

      objc_msgSend_didSubmitSceneObject_pipeline_(v56, v109, v110, v111, v112, a1[6], a1[4]);
    }
  }
}

void sub_27618E84C(void *a1@<X0>, const char *a2@<X1>, double *a3@<X2>, void *a4@<X8>, double a5@<D1>, double a6@<D2>)
{
  v7 = *a3;
  *a4 = *a3;
  v12 = objc_msgSend_valueStateForKey_(a1, a2, v7, a5, a6, a2);
  if (v12)
  {
    objc_msgSend_getValue_(v12, v8, v9, v10, v11, a4);
  }
}

void sub_27618E974(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

uint64_t sub_27618F4B4(void *a1, _DWORD *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_27618FC50(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v3[1] = a2[1];
    v3[2] = a2[2];
    result = (v3 + 3);
  }

  a1[1] = result;
  return result;
}

void sub_27618F980(_Unwind_Exception *a1)
{
  v8 = *(v6 - 168);
  if (v8)
  {
    *(v6 - 160) = v8;
    operator delete(v8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27618F9F8@<X0>(float *a1@<X0>, float32x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = xmmword_2764D5F00;
  *(a3 + 16) = 0x80000000800000;
  result = sub_276155178(a1);
  if ((result & 1) == 0)
  {
    v7 = -1;
    do
    {
      sub_276154EAC(a1, ++v7, &v12);
      *v8.i32 = a2[7].f32[1] + (((v13 * a2[3].f32[1]) + (a2[1].f32[1] * v12)) + (a2[5].f32[1] * v14));
      v9 = (a2[7].f32[0] + (((v13 * a2[3].f32[0]) + (a2[1].f32[0] * v12)) + (a2[5].f32[0] * v14))) / *v8.i32;
      v10 = vdiv_f32(vadd_f32(a2[6], vmla_n_f32(vmla_n_f32(vmul_n_f32(a2[2], v13), *a2, v12), a2[4], v14)), vdup_lane_s32(v8, 0));
      v11 = v9;
      result = sub_276154FD8(a3, &v10);
    }

    while (v7 <= 6);
  }

  return result;
}

uint64_t sub_27618FB60(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_27618FC04(result, a4);
  }

  return result;
}

void sub_27618FBE8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_27618FC04(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_276166528(a1, a2);
  }

  sub_276161760();
}

uint64_t sub_27618FC50(void *a1, _DWORD *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1555555555555555)
  {
    sub_276161760();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 2) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 2);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 2) >= 0xAAAAAAAAAAAAAAALL)
  {
    v6 = 0x1555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v14 = a1;
  if (v6)
  {
    sub_27618FE54(a1, v6);
  }

  v7 = 12 * v2;
  __p = 0;
  v11 = v7;
  v13 = 0;
  *v7 = *a2;
  *(v7 + 4) = a2[1];
  *(v7 + 8) = a2[2];
  v12 = 12 * v2 + 12;
  sub_27618FDD4(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 = (v12 - v11 - 12) % 0xCuLL + v11;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_27618FD84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27618FDD4(uint64_t result, void *a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = (a2[1] + *result - v3);
    do
    {
      *v5 = *v2;
      v5[1] = v2[1];
      v5[2] = v2[2];
      v2 += 3;
      v5 += 3;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  *(result + 8) = v2;
  a2[1] = v2;
  v6 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v6;
  v7 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

void sub_27618FE54(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  sub_2761617D0();
}

void sub_2761902D4(void *a1@<X2>, _OWORD *a2@<X3>, _OWORD *a3@<X8>)
{
  v5 = a1;
  if (!v5)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "T TSCH3D::AssertSafeValue(__strong id, SEL, __strong id, T) [T = glm::detail::tmat4x4<float>]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DUtilities.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 17, 0, "cannot get safe value from nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    v5 = 0;
  }

  v25 = a2[1];
  *a3 = *a2;
  a3[1] = v25;
  v26 = a2[3];
  a3[2] = a2[2];
  a3[3] = v26;
}

void sub_276190DBC(_Unwind_Exception *a1)
{
  v10 = *(v8 - 184);
  if (v10)
  {
    *(v8 - 176) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

void sub_276190F04()
{
  v24[3] = *MEMORY[0x277D85DE8];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v24[2] = objc_opt_class();
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v0, v1, v2, v3, v24, 3);
  objc_storeStrong(&qword_280A46870, v4);
  if (!qword_280A46870)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, "+[TSCH3DLight lightClasses]_block_invoke");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLight.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 56, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }
}

uint64_t sub_276191510(void *a1, void *a2)
{
  v3 = a1;
  v5 = a2;
  if (v3 | v5)
  {
    isEqual = objc_msgSend_isEqual_(v3, v4, v6, v7, v8, v5);
  }

  else
  {
    isEqual = 1;
  }

  return isEqual;
}

void sub_276192594(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2761530FC();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_27619268C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276193330()
{
  v0 = [TSCH3DShaderVariable alloc];
  v5 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v0, v1, v2, v3, v4, @"SpotLightLightIntensities", @"mat4", @"mediump", 8, 3, 0, 0);
  v6 = qword_280A46880;
  v26 = v5;
  qword_280A46880 = v5;

  if (!qword_280A46880)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "+[TSCH3DSpotLightShaderEffect variableSpotLightLightIntensities]_block_invoke");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSpotLight.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 38, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }
}

void sub_2761944D4()
{
  v0 = [TSCH3DShaderVariable alloc];
  v5 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v0, v1, v2, v3, v4, @"DirectionalLightIntensities", @"mat4", @"mediump", 8, 3, 0, 0);
  v6 = qword_280A46890;
  v26 = v5;
  qword_280A46890 = v5;

  if (!qword_280A46890)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "+[TSCH3DDirectionalLightShaderEffect variableDirectionalLightIntensities]_block_invoke");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DDirectionalLight.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 33, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }
}

void sub_276194E88()
{
  v0 = [TSCH3DShaderVariable alloc];
  v5 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v0, v1, v2, v3, v4, @"LightIntensities", @"mat4", @"mediump", 8, 3, 0, 0);
  v6 = qword_280A468A0;
  v26 = v5;
  qword_280A468A0 = v5;

  if (!qword_280A468A0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "+[TSCH3DPointLightShaderEffect variableLightIntensities]_block_invoke");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPointLight.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 35, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }
}

void sub_276195970(double a1, double a2, double a3)
{
  v75[7] = *MEMORY[0x277D85DE8];
  v74[0] = @"Default";
  v73 = sub_276360774(a1, a2, a3);
  v75[0] = objc_msgSend_localizedStringForKey_value_table_(v73, v3, v4, v5, v6, @"Default", &stru_288528678, @"TSCharts");
  v74[1] = @"Glossy";
  v72 = v75[0];
  v71 = sub_276360774(v7, v8, v9);
  v70 = objc_msgSend_localizedStringForKey_value_table_(v71, v10, v11, v12, v13, @"Glossy", &stru_288528678, @"TSCharts");
  v75[1] = v70;
  v74[2] = @"Medium Center";
  v69 = sub_276360774(v14, v15, v16);
  v21 = objc_msgSend_localizedStringForKey_value_table_(v69, v17, v18, v19, v20, @"Medium Center", &stru_288528678, @"TSCharts");
  v75[2] = v21;
  v74[3] = @"Medium Left";
  v25 = sub_276360774(v22, v23, v24);
  v30 = objc_msgSend_localizedStringForKey_value_table_(v25, v26, v27, v28, v29, @"Medium Left", &stru_288528678, @"TSCharts");
  v75[3] = v30;
  v74[4] = @"Medium Right";
  v34 = sub_276360774(v31, v32, v33);
  v39 = objc_msgSend_localizedStringForKey_value_table_(v34, v35, v36, v37, v38, @"Medium Right", &stru_288528678, @"TSCharts");
  v75[4] = v39;
  v74[5] = @"Soft Fill";
  v43 = sub_276360774(v40, v41, v42);
  v48 = objc_msgSend_localizedStringForKey_value_table_(v43, v44, v45, v46, v47, @"Soft Fill", &stru_288528678, @"TSCharts");
  v75[5] = v48;
  v74[6] = @"Soft Light";
  v52 = sub_276360774(v49, v50, v51);
  v57 = objc_msgSend_localizedStringForKey_value_table_(v52, v53, v54, v55, v56, @"Soft Light", &stru_288528678, @"TSCharts");
  v75[6] = v57;
  v62 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v58, v59, v60, v61, v75, v74, 7);

  v67 = objc_msgSend_copy(v62, v63, v64, v65, v66);
  v68 = qword_280A468B0;
  qword_280A468B0 = v67;
}

void sub_276195DA0(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3, a4, a5);
  v10 = sub_276360774(v7, v8, v9);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v14 = objc_msgSend_URLsForResourcesWithExtension_subdirectory_(v10, v11, 0.0, v12, v13, @"lpg.plist", 0, 0);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, v16, v17, v18, &v52, v56, 16);
  if (v20)
  {
    v24 = *v53;
    do
    {
      v25 = 0;
      do
      {
        if (*v53 != v24)
        {
          objc_enumerationMutation(v14);
        }

        v26 = objc_msgSend_lastPathComponent(*(*(&v52 + 1) + 8 * v25), v19, v21, v22, v23);
        v31 = objc_msgSend_stringByDeletingPathExtension(v26, v27, v28, v29, v30);
        v36 = objc_msgSend_stringByDeletingPathExtension(v31, v32, v33, v34, v35);

        v42 = objc_msgSend_packageFromName_(*(a1 + 32), v37, v38, v39, v40, v36);
        if (v42)
        {
          objc_msgSend_addObject_(v6, v41, v43, v44, v45, v42);
        }

        ++v25;
      }

      while (v20 != v25);
      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v19, v21, v22, v23, &v52, v56, 16);
    }

    while (v20);
  }

  v50 = objc_msgSend_copy(v6, v46, v47, v48, v49);
  v51 = qword_280A468C0;
  qword_280A468C0 = v50;
}

void sub_276197000(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2761530FC();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_2761970F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276199A54(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = a1;
  v9 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v5, v6, v7, v8, a3, "f");
  objc_msgSend_setValueState_forKey_(v14, v10, v11, v12, v13, v9, a2);
}

id sub_27619B234(uint64_t *a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, a3, a4, a5);
  v11 = v6;
  v12 = *a1;
  if (*a1)
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    objc_msgSend_appendFormat_(v11, v7, v8, v9, v10, @"%@, ", @"Vertex");
    v12 = *a1;
    if ((*a1 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  objc_msgSend_appendFormat_(v6, v7, v8, v9, v10, @"%@, ", @"None");
  v12 = *a1;
  if (*a1)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v12 & 2) != 0)
  {
LABEL_7:
    objc_msgSend_appendFormat_(v11, v7, v8, v9, v10, @"%@, ", @"Fragment");
    v12 = *a1;
  }

LABEL_8:
  if ((~v12 & 3) == 0)
  {
    objc_msgSend_appendFormat_(v11, v7, v8, v9, v10, @"%@, ", @"Any");
  }

  return v11;
}

void sub_27619B8BC()
{
  if (qword_280A468D0 != -1)
  {
    sub_2764A6B48();
  }
}

void sub_27619B8E8()
{
  v0 = [TSCH3DShaderVariable alloc];
  isSpecial_generic = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v0, v1, v2, v3, v4, @"Ambient", @"vec4", @"mediump", 0, 3, 0, 0);
  v6 = qword_280A46438;
  qword_280A46438 = isSpecial_generic;

  v7 = [TSCH3DShaderVariable alloc];
  v12 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v7, v8, v9, v10, v11, @"AmbientColor", @"vec4", @"mediump", 0, 3, 0, 0);
  v13 = qword_280A46440;
  qword_280A46440 = v12;

  v14 = [TSCH3DShaderVariable alloc];
  v19 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v14, v15, v16, v17, v18, @"AmbientIntensity", @"vec4", @"mediump", 0, 3, 0, 0);
  v20 = qword_280A46448;
  qword_280A46448 = v19;

  v21 = [TSCH3DShaderVariable alloc];
  v26 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v21, v22, v23, v24, v25, @"AmbientLightModelColor", @"vec4", @"mediump", 0, 3, 0, 0);
  v27 = qword_280A46450;
  qword_280A46450 = v26;

  v28 = [TSCH3DShaderVariable alloc];
  v33 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v28, v29, v30, v31, v32, @"B", @"vec3", @"mediump", 0, 3, 0, 0);
  v34 = qword_280A46458;
  qword_280A46458 = v33;

  v35 = [TSCH3DShaderVariable alloc];
  v40 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v35, v36, v37, v38, v39, @"BumpTexture", 0);
  v41 = qword_280A46460;
  qword_280A46460 = v40;

  v42 = [TSCH3DShaderVariable alloc];
  v47 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v42, v43, v44, v45, v46, @"BumpTextureCoordinate", @"vec4", @"mediump", 0, 3, 0, 0);
  v48 = qword_280A46468;
  qword_280A46468 = v47;

  v49 = [TSCH3DShaderVariable alloc];
  v54 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v49, v50, v51, v52, v53, @"DiffuseLightenPercentage", @"float", @"mediump", 0, 3, 0, 0);
  v55 = qword_280A46470;
  qword_280A46470 = v54;

  v56 = [TSCH3DShaderVariable alloc];
  v61 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v56, v57, v58, v59, v60, @"Eye", @"vec3", @"mediump", 0, 3, 0, 0);
  v62 = qword_280A46478;
  qword_280A46478 = v61;

  v63 = [TSCH3DShaderVariable alloc];
  v68 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v63, v64, v65, v66, v67, @"EyeSpaceEyeDirection", @"vec3", @"mediump", 0, 3, 0, 0);
  v69 = qword_280A46480;
  qword_280A46480 = v68;

  v70 = [TSCH3DShaderVariable alloc];
  v75 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v70, v71, v72, v73, v74, @"EyeSpaceLightDirection", @"vec3", @"mediump", 0, 3, 0, 0);
  v76 = qword_280A46488;
  qword_280A46488 = v75;

  v77 = [TSCH3DShaderVariable alloc];
  v82 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v77, v78, v79, v80, v81, @"EyeSpacePosition", @"vec4", @"mediump", 0, 3, 0, 0);
  v83 = qword_280A46490;
  qword_280A46490 = v82;

  v84 = [TSCH3DShaderVariable alloc];
  v89 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v84, v85, v86, v87, v88, @"EyeSpacePosition3", @"vec3", @"mediump", 0, 3, 0, 0);
  v90 = qword_280A46498;
  qword_280A46498 = v89;

  v91 = [TSCH3DShaderVariable alloc];
  v96 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v91, v92, v93, v94, v95, @"Factor0", @"float", @"mediump", 0, 3, 0, 0);
  v97 = qword_280A464A0;
  qword_280A464A0 = v96;

  v98 = [TSCH3DShaderVariable alloc];
  v103 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v98, v99, v100, v101, v102, @"Factor1", @"float", @"mediump", 0, 3, 0, 0);
  v104 = qword_280A464A8;
  qword_280A464A8 = v103;

  v105 = [TSCH3DShaderVariable alloc];
  v110 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v105, v106, v107, v108, v109, @"Factor2", @"float", @"mediump", 0, 3, 0, 0);
  v111 = qword_280A464B0;
  qword_280A464B0 = v110;

  v112 = [TSCH3DShaderVariable alloc];
  v117 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v112, v113, v114, v115, v116, @"FinalColor", @"vec4", @"mediump", 0, 3, 0, 0);
  v118 = qword_280A464B8;
  qword_280A464B8 = v117;

  v119 = [TSCH3DShaderVariable alloc];
  v124 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v119, v120, v121, v122, v123, @"Half", @"vec3", @"mediump", 0, 3, 0, 0);
  v125 = qword_280A464C0;
  qword_280A464C0 = v124;

  v126 = [TSCH3DShaderVariable alloc];
  v131 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v126, v127, v128, v129, v130, @"InverseView", @"mat4", @"mediump", 0, 3, 0, 0);
  v132 = qword_280A464C8;
  qword_280A464C8 = v131;

  v133 = [TSCH3DShaderVariable alloc];
  v138 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v133, v134, v135, v136, v137, @"LightingColor", @"vec4", @"mediump", 0, 3, 0, 0);
  v139 = qword_280A464D0;
  qword_280A464D0 = v138;

  v140 = [TSCH3DShaderVariable alloc];
  v145 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v140, v141, v142, v143, v144, @"ModelView", @"mat4", @"mediump", 0, 3, 0, 0);
  v146 = qword_280A464D8;
  qword_280A464D8 = v145;

  v147 = [TSCH3DShaderVariable alloc];
  v152 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v147, v148, v149, v150, v151, @"ModelViewProjection", @"mat4", @"highp", 0, 3, 0, 0);
  v153 = qword_280A464E0;
  qword_280A464E0 = v152;

  v154 = [TSCH3DShaderVariable alloc];
  v159 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v154, v155, v156, v157, v158, @"N", @"vec3", @"mediump", 0, 3, 0, 0);
  v160 = qword_280A464E8;
  qword_280A464E8 = v159;

  v161 = [TSCH3DShaderVariable alloc];
  v166 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v161, v162, v163, v164, v165, @"NDotH", @"float", @"mediump", 0, 3, 0, 0);
  v167 = qword_280A464F0;
  qword_280A464F0 = v166;

  v168 = [TSCH3DShaderVariable alloc];
  v173 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v168, v169, v170, v171, v172, @"NDotL", @"float", @"mediump", 0, 3, 0, 0);
  v174 = qword_280A464F8;
  qword_280A464F8 = v173;

  v175 = [TSCH3DShaderVariable alloc];
  v180 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v175, v176, v177, v178, v179, @"Normal", @"vec3", @"highp", 0, 3, 0, 0);
  v181 = qword_280A46500;
  qword_280A46500 = v180;

  v182 = [TSCH3DShaderVariable alloc];
  v187 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v182, v183, v184, v185, v186, @"NormalMatrix", @"mat3", @"highp", 0, 3, 0, 0);
  v188 = qword_280A46508;
  qword_280A46508 = v187;

  v189 = [TSCH3DShaderVariable alloc];
  v194 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v189, v190, v191, v192, v193, @"PhongLightingColor", @"vec4", @"mediump", 0, 3, 0, qword_280A464D0);
  v195 = qword_280A46510;
  qword_280A46510 = v194;

  v196 = [TSCH3DShaderVariable alloc];
  v201 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v196, v197, v198, v199, v200, @"PulsationDiffuse", @"float", @"mediump", 0, 3, 0, 0);
  v202 = qword_280A46518;
  qword_280A46518 = v201;

  v203 = [TSCH3DShaderVariable alloc];
  v208 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v203, v204, v205, v206, v207, @"SeparateSpecularColor", @"vec4", @"mediump", 0, 3, 0, 0);
  v209 = qword_280A46520;
  qword_280A46520 = v208;

  v210 = [TSCH3DShaderVariable alloc];
  v215 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v210, v211, v212, v213, v214, @"T", @"vec3", @"mediump", 0, 3, 0, 0);
  v216 = qword_280A46528;
  qword_280A46528 = v215;

  v217 = [TSCH3DShaderVariable alloc];
  v222 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v217, v218, v219, v220, v221, @"TBN", @"mat3", @"mediump", 0, 3, 0, 0);
  v223 = qword_280A46530;
  qword_280A46530 = v222;

  v224 = [TSCH3DShaderVariable alloc];
  v229 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v224, v225, v226, v227, v228, @"Tangent", @"vec3", @"mediump", 0, 3, 0, 0);
  v230 = qword_280A46538;
  qword_280A46538 = v229;

  v231 = [TSCH3DShaderVariable alloc];
  v236 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v231, v232, v233, v234, v235, @"TemporaryTextureCoordinate", @"vec4", @"mediump", 0, 3, 0, 0);
  v237 = qword_280A46540;
  qword_280A46540 = v236;

  v238 = [TSCH3DShaderVariable alloc];
  v243 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v238, v239, v240, v241, v242, @"TemporaryDecalColor", @"vec4", @"mediump", 0, 3, 0, 0);
  v244 = qword_280A46548;
  qword_280A46548 = v243;

  v245 = [TSCH3DShaderVariable alloc];
  v250 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v245, v246, v247, v248, v249, @"Vertex", @"vec3", @"highp", 0, 3, 0, 0);
  v251 = qword_280A46550;
  qword_280A46550 = v250;

  v252 = [TSCH3DShaderVariable alloc];
  v257 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v252, v253, v254, v255, v256, @"Emissive", @"vec4", @"mediump", 0, 3, 0, 0);
  v258 = qword_280A46558;
  qword_280A46558 = v257;

  v259 = [TSCH3DShaderVariable alloc];
  v264 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v259, v260, v261, v262, v263, @"EmissiveColor", @"vec4", @"mediump", 0, 3, 0, 0);
  v265 = qword_280A46560;
  qword_280A46560 = v264;

  v266 = [TSCH3DShaderVariable alloc];
  v271 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v266, v267, v268, v269, v270, @"EmissiveFactor", @"vec4", @"mediump", 0, 3, 0, 0);
  v272 = qword_280A46568;
  qword_280A46568 = v271;

  v273 = [TSCH3DShaderVariable alloc];
  v278 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v273, v274, v275, v276, v277, @"EmissiveIntensity", @"vec4", @"mediump", 0, 3, 0, 0);
  v279 = qword_280A46570;
  qword_280A46570 = v278;

  v280 = [TSCH3DShaderVariable alloc];
  v285 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v280, v281, v282, v283, v284, @"EmissiveModulation", @"vec4", @"mediump", 0, 3, 0, 0);
  v286 = qword_280A46578;
  qword_280A46578 = v285;

  v287 = [TSCH3DShaderVariable alloc];
  v292 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v287, v288, v289, v290, v291, @"EmissiveTexture", @"sampler2D", @"lowp", 0, 3, 0, 0);
  v293 = qword_280A46580;
  qword_280A46580 = v292;

  v294 = [TSCH3DShaderVariable alloc];
  v299 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v294, v295, v296, v297, v298, @"EmissiveTextureColor", @"vec4", @"mediump", 0, 3, 0, 0);
  v300 = qword_280A46588;
  qword_280A46588 = v299;

  v301 = [TSCH3DShaderVariable alloc];
  v306 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v301, v302, v303, v304, v305, @"EmissiveTextureCoordinate", @"vec4", @"mediump", 0, 3, 0, 0);
  v307 = qword_280A46590;
  qword_280A46590 = v306;

  v308 = [TSCH3DShaderVariable alloc];
  v313 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v308, v309, v310, v311, v312, @"EmissiveTextureMatrix", @"mat4", @"mediump", 0, 3, 0, 0);
  v314 = qword_280A46598;
  qword_280A46598 = v313;

  v315 = [TSCH3DShaderVariable alloc];
  v320 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v315, v316, v317, v318, v319, @"Diffuse", @"vec4", @"mediump", 0, 3, 0, 0);
  v321 = qword_280A465A0;
  qword_280A465A0 = v320;

  v322 = [TSCH3DShaderVariable alloc];
  v327 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v322, v323, v324, v325, v326, @"DiffuseColor", @"vec4", @"mediump", 0, 3, 0, 0);
  v328 = qword_280A465A8;
  qword_280A465A8 = v327;

  v329 = [TSCH3DShaderVariable alloc];
  v334 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v329, v330, v331, v332, v333, @"DiffuseFactor", @"vec4", @"mediump", 0, 3, 0, 0);
  v335 = qword_280A465B0;
  qword_280A465B0 = v334;

  v336 = [TSCH3DShaderVariable alloc];
  v341 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v336, v337, v338, v339, v340, @"DiffuseIntensity", @"vec4", @"mediump", 0, 3, 0, 0);
  v342 = qword_280A465B8;
  qword_280A465B8 = v341;

  v343 = [TSCH3DShaderVariable alloc];
  v348 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v343, v344, v345, v346, v347, @"DiffuseModulation", @"vec4", @"mediump", 0, 3, 0, 0);
  v349 = qword_280A465C0;
  qword_280A465C0 = v348;

  v350 = [TSCH3DShaderVariable alloc];
  v355 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v350, v351, v352, v353, v354, @"DiffuseTexture", @"sampler2D", @"lowp", 0, 3, 0, 0);
  v356 = qword_280A465C8;
  qword_280A465C8 = v355;

  v357 = [TSCH3DShaderVariable alloc];
  v362 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v357, v358, v359, v360, v361, @"DiffuseTextureColor", @"vec4", @"mediump", 0, 3, 0, 0);
  v363 = qword_280A465D0;
  qword_280A465D0 = v362;

  v364 = [TSCH3DShaderVariable alloc];
  v369 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v364, v365, v366, v367, v368, @"DiffuseTextureCoordinate", @"vec4", @"mediump", 0, 3, 0, 0);
  v370 = qword_280A465D8;
  qword_280A465D8 = v369;

  v371 = [TSCH3DShaderVariable alloc];
  v376 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v371, v372, v373, v374, v375, @"DiffuseTextureMatrix", @"mat4", @"mediump", 0, 3, 0, 0);
  v377 = qword_280A465E0;
  qword_280A465E0 = v376;

  v378 = [TSCH3DShaderVariable alloc];
  v383 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v378, v379, v380, v381, v382, @"Modulate", @"vec4", @"mediump", 0, 3, 0, 0);
  v384 = qword_280A465E8;
  qword_280A465E8 = v383;

  v385 = [TSCH3DShaderVariable alloc];
  v390 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v385, v386, v387, v388, v389, @"ModulateColor", @"vec4", @"mediump", 0, 3, 0, 0);
  v391 = qword_280A465F0;
  qword_280A465F0 = v390;

  v392 = [TSCH3DShaderVariable alloc];
  v397 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v392, v393, v394, v395, v396, @"ModulateFactor", @"vec4", @"mediump", 0, 3, 0, 0);
  v398 = qword_280A465F8;
  qword_280A465F8 = v397;

  v399 = [TSCH3DShaderVariable alloc];
  v404 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v399, v400, v401, v402, v403, @"ModulateIntensity", @"vec4", @"mediump", 0, 3, 0, 0);
  v405 = qword_280A46600;
  qword_280A46600 = v404;

  v406 = [TSCH3DShaderVariable alloc];
  v411 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v406, v407, v408, v409, v410, @"ModulateModulation", @"vec4", @"mediump", 0, 3, 0, 0);
  v412 = qword_280A46608;
  qword_280A46608 = v411;

  v413 = [TSCH3DShaderVariable alloc];
  v418 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v413, v414, v415, v416, v417, @"ModulateTexture", @"sampler2D", @"lowp", 0, 3, 0, 0);
  v419 = qword_280A46610;
  qword_280A46610 = v418;

  v420 = [TSCH3DShaderVariable alloc];
  v425 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v420, v421, v422, v423, v424, @"ModulateTextureColor", @"vec4", @"mediump", 0, 3, 0, 0);
  v426 = qword_280A46618;
  qword_280A46618 = v425;

  v427 = [TSCH3DShaderVariable alloc];
  v432 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v427, v428, v429, v430, v431, @"ModulateTextureCoordinate", @"vec4", @"mediump", 0, 3, 0, 0);
  v433 = qword_280A46620;
  qword_280A46620 = v432;

  v434 = [TSCH3DShaderVariable alloc];
  v439 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v434, v435, v436, v437, v438, @"ModulateTextureMatrix", @"mat4", @"mediump", 0, 3, 0, 0);
  v440 = qword_280A46628;
  qword_280A46628 = v439;

  v441 = [TSCH3DShaderVariable alloc];
  v446 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v441, v442, v443, v444, v445, @"Specular", @"vec4", @"mediump", 0, 3, 0, 0);
  v447 = qword_280A46630;
  qword_280A46630 = v446;

  v448 = [TSCH3DShaderVariable alloc];
  v453 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v448, v449, v450, v451, v452, @"SpecularColor", @"vec4", @"mediump", 0, 3, 0, 0);
  v454 = qword_280A46638;
  qword_280A46638 = v453;

  v455 = [TSCH3DShaderVariable alloc];
  v460 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v455, v456, v457, v458, v459, @"SpecularFactor", @"vec4", @"mediump", 0, 3, 0, 0);
  v461 = qword_280A46640;
  qword_280A46640 = v460;

  v462 = [TSCH3DShaderVariable alloc];
  v467 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v462, v463, v464, v465, v466, @"SpecularIntensity", @"vec4", @"mediump", 0, 3, 0, 0);
  v468 = qword_280A46648;
  qword_280A46648 = v467;

  v469 = [TSCH3DShaderVariable alloc];
  v474 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v469, v470, v471, v472, v473, @"SpecularModulation", @"vec4", @"mediump", 0, 3, 0, 0);
  v475 = qword_280A46650;
  qword_280A46650 = v474;

  v476 = [TSCH3DShaderVariable alloc];
  v481 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v476, v477, v478, v479, v480, @"SpecularTexture", @"sampler2D", @"lowp", 0, 3, 0, 0);
  v482 = qword_280A46658;
  qword_280A46658 = v481;

  v483 = [TSCH3DShaderVariable alloc];
  v488 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v483, v484, v485, v486, v487, @"SpecularTextureColor", @"vec4", @"mediump", 0, 3, 0, 0);
  v489 = qword_280A46660;
  qword_280A46660 = v488;

  v490 = [TSCH3DShaderVariable alloc];
  v495 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v490, v491, v492, v493, v494, @"SpecularTextureCoordinate", @"vec4", @"mediump", 0, 3, 0, 0);
  v496 = qword_280A46668;
  qword_280A46668 = v495;

  v497 = [TSCH3DShaderVariable alloc];
  v502 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v497, v498, v499, v500, v501, @"SpecularTextureMatrix", @"mat4", @"mediump", 0, 3, 0, 0);
  v503 = qword_280A46670;
  qword_280A46670 = v502;

  v504 = [TSCH3DShaderVariable alloc];
  v509 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v504, v505, v506, v507, v508, @"Shininess", @"vec4", @"mediump", 0, 3, 0, 0);
  v510 = qword_280A46678;
  qword_280A46678 = v509;

  v511 = [TSCH3DShaderVariable alloc];
  v516 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v511, v512, v513, v514, v515, @"ShininessColor", @"vec4", @"mediump", 0, 3, 0, 0);
  v517 = qword_280A46680;
  qword_280A46680 = v516;

  v518 = [TSCH3DShaderVariable alloc];
  v523 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v518, v519, v520, v521, v522, @"ShininessFactor", @"vec4", @"mediump", 0, 3, 0, 0);
  v524 = qword_280A46688;
  qword_280A46688 = v523;

  v525 = [TSCH3DShaderVariable alloc];
  v530 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v525, v526, v527, v528, v529, @"ShininessIntensity", @"vec4", @"mediump", 0, 3, 0, 0);
  v531 = qword_280A46690;
  qword_280A46690 = v530;

  v532 = [TSCH3DShaderVariable alloc];
  v537 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v532, v533, v534, v535, v536, @"ShininessModulation", @"vec4", @"mediump", 0, 3, 0, 0);
  v538 = qword_280A46698;
  qword_280A46698 = v537;

  v539 = [TSCH3DShaderVariable alloc];
  v544 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v539, v540, v541, v542, v543, @"ShininessTexture", @"sampler2D", @"lowp", 0, 3, 0, 0);
  v545 = qword_280A466A0;
  qword_280A466A0 = v544;

  v546 = [TSCH3DShaderVariable alloc];
  v551 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v546, v547, v548, v549, v550, @"ShininessTextureColor", @"vec4", @"mediump", 0, 3, 0, 0);
  v552 = qword_280A466A8;
  qword_280A466A8 = v551;

  v553 = [TSCH3DShaderVariable alloc];
  v558 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v553, v554, v555, v556, v557, @"ShininessTextureCoordinate", @"vec4", @"mediump", 0, 3, 0, 0);
  v559 = qword_280A466B0;
  qword_280A466B0 = v558;

  v560 = [TSCH3DShaderVariable alloc];
  v565 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v560, v561, v562, v563, v564, @"ShininessTextureMatrix", @"mat4", @"mediump", 0, 3, 0, 0);
  v566 = qword_280A466B8;
  qword_280A466B8 = v565;

  v567 = [TSCH3DShaderVariable alloc];
  v572 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v567, v568, v569, v570, v571, @"Environment", @"vec4", @"mediump", 0, 3, 0, 0);
  v573 = qword_280A466C0;
  qword_280A466C0 = v572;

  v574 = [TSCH3DShaderVariable alloc];
  v579 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v574, v575, v576, v577, v578, @"EnvironmentColor", @"vec4", @"mediump", 0, 3, 0, 0);
  v580 = qword_280A466C8;
  qword_280A466C8 = v579;

  v581 = [TSCH3DShaderVariable alloc];
  v586 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v581, v582, v583, v584, v585, @"EnvironmentFactor", @"vec4", @"mediump", 0, 3, 0, 0);
  v587 = qword_280A466D0;
  qword_280A466D0 = v586;

  v588 = [TSCH3DShaderVariable alloc];
  v593 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v588, v589, v590, v591, v592, @"EnvironmentIntensity", @"vec4", @"mediump", 0, 3, 0, 0);
  v594 = qword_280A466D8;
  qword_280A466D8 = v593;

  v595 = [TSCH3DShaderVariable alloc];
  v600 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v595, v596, v597, v598, v599, @"EnvironmentModulation", @"vec4", @"mediump", 0, 3, 0, 0);
  v601 = qword_280A466E0;
  qword_280A466E0 = v600;

  v602 = [TSCH3DShaderVariable alloc];
  v607 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v602, v603, v604, v605, v606, @"EnvironmentTexture", @"sampler2D", @"lowp", 0, 3, 0, 0);
  v608 = qword_280A466E8;
  qword_280A466E8 = v607;

  v609 = [TSCH3DShaderVariable alloc];
  v614 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v609, v610, v611, v612, v613, @"EnvironmentTextureColor", @"vec4", @"mediump", 0, 3, 0, 0);
  v615 = qword_280A466F0;
  qword_280A466F0 = v614;

  v616 = [TSCH3DShaderVariable alloc];
  v621 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v616, v617, v618, v619, v620, @"EnvironmentTextureCoordinate", @"vec4", @"mediump", 0, 3, 0, 0);
  v622 = qword_280A466F8;
  qword_280A466F8 = v621;

  v623 = [TSCH3DShaderVariable alloc];
  v628 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v623, v624, v625, v626, v627, @"EnvironmentTextureMatrix", @"mat4", @"mediump", 0, 3, 0, 0);
  v629 = qword_280A46700;
  qword_280A46700 = v628;

  v630 = [TSCH3DShaderVariable alloc];
  v635 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v630, v631, v632, v633, v634, @"Environment1", @"vec4", @"mediump", 0, 3, 0, 0);
  v636 = qword_280A46708;
  qword_280A46708 = v635;

  v637 = [TSCH3DShaderVariable alloc];
  v642 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v637, v638, v639, v640, v641, @"Environment1Color", @"vec4", @"mediump", 0, 3, 0, 0);
  v643 = qword_280A46710;
  qword_280A46710 = v642;

  v644 = [TSCH3DShaderVariable alloc];
  v649 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v644, v645, v646, v647, v648, @"Environment1Factor", @"vec4", @"mediump", 0, 3, 0, 0);
  v650 = qword_280A46718;
  qword_280A46718 = v649;

  v651 = [TSCH3DShaderVariable alloc];
  v656 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v651, v652, v653, v654, v655, @"Environment1Intensity", @"vec4", @"mediump", 0, 3, 0, 0);
  v657 = qword_280A46720;
  qword_280A46720 = v656;

  v658 = [TSCH3DShaderVariable alloc];
  v663 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v658, v659, v660, v661, v662, @"Environment1Modulation", @"vec4", @"mediump", 0, 3, 0, 0);
  v664 = qword_280A46728;
  qword_280A46728 = v663;

  v665 = [TSCH3DShaderVariable alloc];
  v670 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v665, v666, v667, v668, v669, @"Environment1Texture", @"sampler2D", @"lowp", 0, 3, 0, 0);
  v671 = qword_280A46730;
  qword_280A46730 = v670;

  v672 = [TSCH3DShaderVariable alloc];
  v677 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v672, v673, v674, v675, v676, @"Environment1TextureColor", @"vec4", @"mediump", 0, 3, 0, 0);
  v678 = qword_280A46738;
  qword_280A46738 = v677;

  v679 = [TSCH3DShaderVariable alloc];
  v684 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v679, v680, v681, v682, v683, @"Environment1TextureCoordinate", @"vec4", @"mediump", 0, 3, 0, 0);
  v685 = qword_280A46740;
  qword_280A46740 = v684;

  v686 = [TSCH3DShaderVariable alloc];
  v691 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v686, v687, v688, v689, v690, @"Environment1TextureMatrix", @"mat4", @"mediump", 0, 3, 0, 0);
  v692 = qword_280A46748;
  qword_280A46748 = v691;

  v693 = [TSCH3DShaderVariable alloc];
  v698 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v693, v694, v695, v696, v697, @"gl_Position", @"vec4", @"mediump", 0, 1, 1, 0);
  v699 = qword_280A46750;
  qword_280A46750 = v698;

  v700 = [TSCH3DShaderVariable alloc];
  v705 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v700, v701, v702, v703, v704, @"FragColor", @"vec4", @"mediump", 0, 2, 0, 0);
  v706 = qword_280A46758;
  qword_280A46758 = v705;
}

char *sub_27619DF3C(uint64_t a1, const void *__src, char *a3, char *a4, int64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v6 = a5;
  v7 = a3;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 >= a5)
  {
    v16 = v10 - __src;
    if (v10 - __src >= a5)
    {
      v21 = __src + a5;
      v22 = &v10[-a5];
      v23 = *(a1 + 8);
      if (v10 >= a5)
      {
        do
        {
          v24 = *v22++;
          *v23++ = v24;
        }

        while (v22 != v10);
      }

      *(a1 + 8) = v23;
      if (v10 != v21)
      {
        memmove(__src + a5, __src, v10 - v21);
      }

      v25 = __src;
      do
      {
        v26 = *v7++;
        *v25++ = v26;
        --v6;
      }

      while (v6);
    }

    else
    {
      v17 = &a3[v16];
      if (&a3[v16] == a4)
      {
        v18 = *(a1 + 8);
        v19 = v18;
      }

      else
      {
        v18 = (&a4[__src] - a3);
        v19 = *(a1 + 8);
        do
        {
          v20 = *v17++;
          *v19++ = v20;
        }

        while (v17 != a4);
      }

      *(a1 + 8) = v18;
      if (v16 >= 1)
      {
        v27 = __src + a5;
        v28 = &v18[-a5];
        v29 = v18;
        if (&v18[-a5] < v10)
        {
          do
          {
            v30 = *v28++;
            *v29++ = v30;
          }

          while (v28 != v10);
        }

        *(a1 + 8) = v29;
        if (v19 != v27)
        {
          memmove(__src + a5, __src, v18 - v27);
        }

        v31 = __src;
        do
        {
          v32 = *v7++;
          *v31++ = v32;
          --v16;
        }

        while (v16);
      }
    }

    return __src;
  }

  v11 = *a1;
  v12 = &v10[a5 - *a1];
  if (v12 < 0)
  {
    sub_276161760();
  }

  v13 = (__src - v11);
  v14 = v9 - v11;
  if (2 * v14 > v12)
  {
    v12 = 2 * v14;
  }

  if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    operator new();
  }

  memcpy(v13, a3, a5);
  memcpy(&v13[v6], __src, v10 - __src);
  *(a1 + 8) = __src;
  memcpy(&v13[v11 - __src], v11, __src - v11);
  *a1 = &v13[v11 - __src];
  *(a1 + 8) = &v13[v6 + v10 - __src];
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v13;
}

void sub_2761A04F4(void *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v9 = objc_msgSend_valueStateForKey_(v29, v5, v6, v7, v8, a2);

  if (!v9)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "T TSCH3D::AssertCTypeFromEffectsStates(TSCH3DShaderEffectsStates *__strong, __unsafe_unretained Class) [T = TSCH3D::VertexShaderState]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffectsStates.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 104, 0, "invalid nil value for '%{public}s'", "[states valueStateForKey:key]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  sub_2761A0824(v29, a2, a3, v12, v13);
}

void sub_2761A0824(void *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>, double a4@<D1>, double a5@<D2>)
{
  *a3 = 0;
  *(a3 + 4) = 0u;
  *(a3 + 20) = 0u;
  *(a3 + 36) = 0u;
  *(a3 + 52) = 0u;
  *(a3 + 68) = 0u;
  *(a3 + 84) = 0u;
  *(a3 + 100) = 0u;
  *(a3 + 116) = 0u;
  v6 = objc_msgSend_valueStateForKey_(a1, a2, 0.0, a4, a5, a2);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    v13 = objc_msgSend_objCType(v8, v9, v10, v11, v12);
    if (!sub_2761A099C(v13))
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "T TSCH3D::CTypeFromEffectsStates(TSCH3DShaderEffectsStates *__strong, __unsafe_unretained Class) [T = TSCH3D::VertexShaderState]");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffectsStates.h");
      v25 = v7;
      v30 = objc_msgSend_objCType(v25, v26, v27, v28, v29);
      v31 = v7;
      v36 = objc_msgSend_objCType(v31, v32, v33, v34, v35);
      sizep = 0;
      NSGetSizeAndAlignment(v36, &sizep, 0);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v37, v38, v39, v40, v19, v24, 88, 0, "type mismatch between objCType %s size %lu and template %s size %zu", v30, sizep, "{VertexShaderState=B{tmat4x4<float>=[4{tvec4<float>=(?=fff)(?=fff)(?=fff)(?=fff)}]}{tmat4x4<float>=[4{tvec4<float>=(?=fff)(?=fff)(?=fff)(?=fff)}]}}", 132);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
    }

    objc_msgSend_getValue_(v7, v14, v15, v16, v17, a3);
  }
}

BOOL sub_2761A099C(const char *a1)
{
  if (strcmp(a1, "{VertexShaderState=B{tmat4x4<float>=[4{tvec4<float>=(?=fff)(?=fff)(?=fff)(?=fff)}]}{tmat4x4<float>=[4{tvec4<float>=(?=fff)(?=fff)(?=fff)(?=fff)}]}}"))
  {
    return 0;
  }

  sizep = 0;
  NSGetSizeAndAlignment(a1, &sizep, 0);
  return sizep == 132;
}

void sub_2761A0B34(void *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v9 = objc_msgSend_valueStateForKey_(v29, v5, v6, v7, v8, a2);

  if (!v9)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "T TSCH3D::AssertCTypeFromEffectsStates(TSCH3DShaderEffectsStates *__strong, __unsafe_unretained Class) [T = TSCH3D::NormalShaderState]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffectsStates.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 104, 0, "invalid nil value for '%{public}s'", "[states valueStateForKey:key]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  sub_2761A0D90(v29, a2, a3, v12, v13);
}

void sub_2761A0D90(void *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>, double a4@<D1>, double a5@<D2>)
{
  *a3 = 0;
  *(a3 + 4) = 0u;
  *(a3 + 20) = 0u;
  *(a3 + 36) = 0;
  v6 = objc_msgSend_valueStateForKey_(a1, a2, 0.0, a4, a5, a2);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    v13 = objc_msgSend_objCType(v8, v9, v10, v11, v12);
    if (!sub_2761A0EF4(v13))
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "T TSCH3D::CTypeFromEffectsStates(TSCH3DShaderEffectsStates *__strong, __unsafe_unretained Class) [T = TSCH3D::NormalShaderState]");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffectsStates.h");
      v25 = v7;
      v30 = objc_msgSend_objCType(v25, v26, v27, v28, v29);
      v31 = v7;
      v36 = objc_msgSend_objCType(v31, v32, v33, v34, v35);
      sizep = 0;
      NSGetSizeAndAlignment(v36, &sizep, 0);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v37, v38, v39, v40, v19, v24, 88, 0, "type mismatch between objCType %s size %lu and template %s size %zu", v30, sizep, "{NormalShaderState=B{tmat3x3<float>=[3{tvec3<float>=(?=fff)(?=fff)(?=fff)}]}}", 40);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
    }

    objc_msgSend_getValue_(v7, v14, v15, v16, v17, a3);
  }
}

BOOL sub_2761A0EF4(const char *a1)
{
  if (strcmp(a1, "{NormalShaderState=B{tmat3x3<float>=[3{tvec3<float>=(?=fff)(?=fff)(?=fff)}]}}"))
  {
    return 0;
  }

  sizep = 0;
  NSGetSizeAndAlignment(a1, &sizep, 0);
  return sizep == 40;
}

void sub_2761A1268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  v16 = v14;

  _Unwind_Resume(a1);
}

void sub_2761A1640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  v16 = v14;

  _Unwind_Resume(a1);
}

id sub_2761A17CC(uint64_t *a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, a3, a4, a5);
  v11 = v6;
  v12 = *a1;
  if (*a1)
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    objc_msgSend_appendFormat_(v6, v7, v8, v9, v10, @"%@, ", @"None");
    v12 = *a1;
    if ((*a1 & 1) == 0)
    {
LABEL_3:
      if ((v12 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  objc_msgSend_appendFormat_(v11, v7, v8, v9, v10, @"%@, ", @"Body");
  v12 = *a1;
  if ((*a1 & 2) == 0)
  {
LABEL_4:
    if ((v12 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  objc_msgSend_appendFormat_(v11, v7, v8, v9, v10, @"%@, ", @"Special");
  v12 = *a1;
  if ((*a1 & 4) == 0)
  {
LABEL_5:
    if ((v12 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    objc_msgSend_appendFormat_(v11, v7, v8, v9, v10, @"%@, ", @"Attribute");
    if ((*a1 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_11:
  objc_msgSend_appendFormat_(v11, v7, v8, v9, v10, @"%@, ", @"Uniform");
  v12 = *a1;
  if ((*a1 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v12 & 0x10) != 0)
  {
LABEL_13:
    objc_msgSend_appendFormat_(v11, v7, v8, v9, v10, @"%@, ", @"Varying");
  }

LABEL_14:

  return v11;
}

void sub_2761A2008(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_276161760();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_2761AAC20(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t sub_2761A7300(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = TSUCheckedDynamicCast();
  v9 = objc_msgSend_interleavedAttributeVariables(*(a1 + 32), v5, v6, v7, v8);
  v14 = objc_msgSend_variable(v4, v10, v11, v12, v13);
  v19 = objc_msgSend_containsObject_(v9, v15, v16, v17, v18, v14);

  return v19;
}

BOOL sub_2761A8C34(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = TSUCheckedDynamicCast();
  v9 = objc_msgSend_variable(v4, v5, v6, v7, v8);
  v14 = *(a1 + 32) == objc_msgSend_isTexture(v9, v10, v11, v12, v13);

  return v14;
}

uint64_t sub_2761A8DB0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = TSUCheckedDynamicCast();
  v9 = objc_msgSend_variable(v4, v5, v6, v7, v8);
  v14 = objc_msgSend_existingLinkageOfVariable_(*(a1 + 32), v10, v11, v12, v13, v9);
  if (objc_msgSend_isUsed(v14, v15, v16, v17, v18))
  {
    isTexture = objc_msgSend_isTexture(v9, v19, v20, v21, v22);
  }

  else
  {
    isTexture = 0;
  }

  return isTexture;
}

id sub_2761AA0D4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = TSUCheckedDynamicCast();
  v8 = objc_msgSend_variable(v3, v4, v5, v6, v7);

  return v8;
}

id sub_2761AA1C8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = TSUCheckedDynamicCast();
  v8 = objc_msgSend_variable(v3, v4, v5, v6, v7);

  return v8;
}

const char *sub_2761AAAA4(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v42 = a5;
  if (a5 == 3 || !a5)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a5, a1, a2, a3, "NSUInteger TSCH3DShaderVariableScopes::index(TSCH3DShaderType) const");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderVariableLinkage.h");
    v16 = sub_27619B234(&v42, v12, v13, v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v17, v18, v19, v20, v6, v11, 105, 0, "invalid shader type %@ to get", v16);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    a5 = v42;
  }

  v25 = a5 - 1;
  if ((a5 - 1) >= 2)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a5, a1, a2, a3, "NSUInteger TSCH3DShaderVariableScopes::index(TSCH3DShaderType) const");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderVariableLinkage.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v34, v35, v36, v27, v32, 108, 0, "index out of bound %lu", v25);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
  }

  return v25;
}

void sub_2761AAC20(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_2761617D0();
}

id sub_2761AAE98(uint64_t *a1, const char *a2, double a3, double a4, double a5)
{
  v7 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, a3, a4, a5);
  v11 = 16;
  v12 = 0x100000000;
  do
  {
    v24 = v12 >> 32;
    v13 = sub_27619B234(&v24, v6, v8, v9, v10);
    v18 = sub_2761A17CC(a1, v14, v15, v16, v17);
    objc_msgSend_appendFormat_(v7, v19, v20, v21, v22, @"%@(%@), ", v13, v18);

    v12 += 0x100000000;
    ++a1;
    v11 -= 8;
  }

  while (v11);

  return v7;
}

__CFString *sub_2761ABB18(int *a1)
{
  v1 = @"Uniform";
  v2 = @"Attribute";
  v3 = *a1;
  v4 = @"Varying";
  if (*a1 != 16)
  {
    v4 = 0;
  }

  if (v3 != 8)
  {
    v2 = v4;
  }

  if (v3 != 4)
  {
    v1 = v2;
  }

  v5 = @"Special";
  if (v3 != 2)
  {
    v5 = 0;
  }

  if (v3 == 1)
  {
    v5 = @"Body";
  }

  if (!v3)
  {
    v5 = @"None";
  }

  if (v3 <= 3)
  {
    return v5;
  }

  else
  {
    return v1;
  }
}

void sub_2761ABEAC(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend__singletonAlloc(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_init(v6, v7, v8, v9, v10);
  v12 = qword_280A468D8;
  qword_280A468D8 = v11;

  if (!qword_280A468D8)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "+[TSCH3DAlphaBlendShaderEffect effect]_block_invoke");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DAlphaBlendShaderEffect.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 27, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    v32 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v32, v28, v29, v30, v31);
  }
}

void sub_2761AC0B4()
{
  v0 = [TSCH3DShaderVariable alloc];
  v5 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v0, v1, v2, v3, v4, @"AlphaBlendValue", @"float", @"mediump", 0, 3, 0, 0);
  v6 = qword_280A468E8;
  v26 = v5;
  qword_280A468E8 = v5;

  if (!qword_280A468E8)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "+[TSCH3DAlphaBlendShaderEffect variableAlphaBlendValue]_block_invoke");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DAlphaBlendShaderEffect.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 29, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }
}

void sub_2761AC2E4(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = a1;
  v9 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v5, v6, v7, v8, a3, "{tvec2<float>=(?=fff)(?=fff)}");
  objc_msgSend_setValueState_forKey_(v14, v10, v11, v12, v13, v9, a2);
}

void sub_2761AC6E8(void *a1@<X0>, const char *a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = 0;
  v7 = objc_msgSend_valueStateForKey_(a1, a2, a4, a5, a6, a2);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    v14 = objc_msgSend_objCType(v9, v10, v11, v12, v13);
    if (!sub_2761AC83C(v14))
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "T TSCH3D::CTypeFromEffectsStates(TSCH3DShaderEffectsStates *__strong, __unsafe_unretained Class) [T = glm::detail::tvec2<float>]");
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffectsStates.h");
      v26 = v8;
      v31 = objc_msgSend_objCType(v26, v27, v28, v29, v30);
      v32 = v8;
      v37 = objc_msgSend_objCType(v32, v33, v34, v35, v36);
      sizep = 0;
      NSGetSizeAndAlignment(v37, &sizep, 0);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v38, v39, v40, v41, v20, v25, 88, 0, "type mismatch between objCType %s size %lu and template %s size %zu", v31, sizep, "{tvec2<float>=(?=fff)(?=fff)}", 8);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
    }

    objc_msgSend_getValue_(v8, v15, v16, v17, v18, a3);
  }
}

BOOL sub_2761AC83C(const char *a1)
{
  if (strcmp(a1, "{tvec2<float>=(?=fff)(?=fff)}"))
  {
    return 0;
  }

  sizep = 0;
  NSGetSizeAndAlignment(a1, &sizep, 0);
  return sizep == 8;
}

void sub_2761ACD6C(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend__singletonAlloc(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_init(v6, v7, v8, v9, v10);
  v12 = qword_280A46928;
  qword_280A46928 = v11;

  if (!qword_280A46928)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "+[TSCH3DTexCoordTilingShaderEffect effect]_block_invoke");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTexCoordTilingShaderEffect.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 53, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    v32 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v32, v28, v29, v30, v31);
  }
}

void sub_2761AD5AC(void *a1@<X0>, const char *a2@<X1>, _OWORD *a3@<X8>)
{
  v29 = a1;
  v9 = objc_msgSend_valueStateForKey_(v29, v5, v6, v7, v8, a2);

  if (!v9)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "T TSCH3D::AssertCTypeFromEffectsStates(TSCH3DShaderEffectsStates *__strong, __unsafe_unretained Class) [T = TSCH3D::TexCoordTilingShaderEffectState]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffectsStates.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 104, 0, "invalid nil value for '%{public}s'", "[states valueStateForKey:key]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  sub_2761ADA3C(v29, a2, a3, v12, v13);
}

uint64_t sub_2761AD6D0(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  if (a2 >= 3)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "vec2cref TSCH3D::TexCoordTilingShaderEffectState::offsetAtIndex(NSUInteger) const");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTexCoordTilingShaderEffect.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 56, 0, "index out of bounds %lu %zu", a2, 3);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  return a1 + 16 * a2 + 8;
}

uint64_t sub_2761AD7AC(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  if (a2 >= 3)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "vec2cref TSCH3D::TexCoordTilingShaderEffectState::scaleAtIndex(NSUInteger) const");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTexCoordTilingShaderEffect.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 51, 0, "index out of bounds %lu %zu", a2, 3);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  return a1 + 16 * a2;
}

void sub_2761ADA14(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2761ADA3C(void *a1@<X0>, const char *a2@<X1>, _OWORD *a3@<X8>, double a4@<D1>, double a5@<D2>)
{
  *a3 = xmmword_2764D5F30;
  a3[1] = xmmword_2764D5F30;
  a3[2] = xmmword_2764D5F30;
  v6 = objc_msgSend_valueStateForKey_(a1, a2, 0.00781250185, a4, a5, a2);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    v13 = objc_msgSend_objCType(v8, v9, v10, v11, v12);
    if (!sub_2761ADB9C(v13))
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "T TSCH3D::CTypeFromEffectsStates(TSCH3DShaderEffectsStates *__strong, __unsafe_unretained Class) [T = TSCH3D::TexCoordTilingShaderEffectState]");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffectsStates.h");
      v25 = v7;
      v30 = objc_msgSend_objCType(v25, v26, v27, v28, v29);
      v31 = v7;
      v36 = objc_msgSend_objCType(v31, v32, v33, v34, v35);
      sizep = 0;
      NSGetSizeAndAlignment(v36, &sizep, 0);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v37, v38, v39, v40, v19, v24, 88, 0, "type mismatch between objCType %s size %lu and template %s size %zu", v30, sizep, "{TexCoordTilingShaderEffectState={array<TSCH3D::TexCoordTilingShaderEffectState::Data, 3UL>=[3{Data={tvec2<float>=(?=fff)(?=fff)}{tvec2<float>=(?=fff)(?=fff)}}]}}", 48);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
    }

    objc_msgSend_getValue_(v7, v14, v15, v16, v17, a3);
  }
}

BOOL sub_2761ADB9C(const char *a1)
{
  if (strcmp(a1, "{TexCoordTilingShaderEffectState={array<TSCH3D::TexCoordTilingShaderEffectState::Data, 3UL>=[3{Data={tvec2<float>=(?=fff)(?=fff)}{tvec2<float>=(?=fff)(?=fff)}}]}}"))
  {
    return 0;
  }

  sizep = 0;
  NSGetSizeAndAlignment(a1, &sizep, 0);
  return sizep == 48;
}

uint64_t sub_2761ADBFC(void *a1, _DWORD *a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_276161760();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15 = a1;
  if (v7)
  {
    sub_2761AAC20(a1, v7);
  }

  v8 = (8 * v2);
  __p = 0;
  v12 = v8;
  v14 = 0;
  *v8 = *a2;
  v8[1] = a2[1];
  v13 = 8 * v2 + 8;
  sub_2761ADD28(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += (v12 - v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_2761ADCF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2761ADD28(uint64_t result, void *a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = (a2[1] + *result - v3);
    do
    {
      *v5 = *v2;
      v5[1] = v2[1];
      v2 += 2;
      v5 += 2;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  *(result + 8) = v2;
  a2[1] = v2;
  v6 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v6;
  v7 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

float sub_2761ADED8(void *a1, const char *a2)
{
  v3 = a1;
  v8 = objc_msgSend_valueStateForKey_(v3, v4, v5, v6, v7, a2);

  if (!v8)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "T TSCH3D::AssertCTypeFromEffectsStates(TSCH3DShaderEffectsStates *__strong, __unsafe_unretained Class) [T = float]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffectsStates.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 104, 0, "invalid nil value for '%{public}s'", "[states valueStateForKey:key]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = sub_2761ADFF0(v3, a2, v10, v11, v12);

  return v28;
}

float sub_2761ADFF0(void *a1, const char *a2, double a3, double a4, double a5)
{
  v45 = 0.0;
  v5 = objc_msgSend_valueStateForKey_(a1, a2, a3, a4, a5, a2);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v12 = objc_msgSend_objCType(v7, v8, v9, v10, v11);
    if (!sub_2761AE13C(v12))
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "T TSCH3D::CTypeFromEffectsStates(TSCH3DShaderEffectsStates *__strong, __unsafe_unretained Class) [T = float]");
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffectsStates.h");
      v24 = v6;
      v29 = objc_msgSend_objCType(v24, v25, v26, v27, v28);
      v30 = v6;
      v35 = objc_msgSend_objCType(v30, v31, v32, v33, v34);
      sizep = 0;
      NSGetSizeAndAlignment(v35, &sizep, 0);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v36, v37, v38, v39, v18, v23, 88, 0, "type mismatch between objCType %s size %lu and template %s size %zu", v29, sizep, "f", 4);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
    }

    objc_msgSend_getValue_(v6, v13, v14, v15, v16, &v45);
  }

  return v45;
}

BOOL sub_2761AE13C(uint64_t a1)
{
  if (*a1 != 102 || *(a1 + 1))
  {
    return 0;
  }

  sizep[1] = v1;
  sizep[2] = v2;
  sizep[0] = 0;
  NSGetSizeAndAlignment(a1, sizep, 0);
  return sizep[0] == 4;
}

void sub_2761AE9A8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2761AF1C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = TSCH3DShaderCache;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_2761AF380(uint64_t a1, void *a2)
{
  v14 = a2;
  objc_opt_class();
  v3 = TSUCheckedDynamicCast();
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v9 = objc_msgSend_shader(v3, v5, v6, v7, v8);
  objc_msgSend_unprotectResource_(WeakRetained, v10, v11, v12, v13, v9);
}

void sub_2761AF420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_2761B07C4(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_variablesWithTexture_texcoords_textureMatrix_(TSCH3DTextureVariables, a5, a1, a2, a3, qword_280A466E8, qword_280A466F8, qword_280A46700);
  v22[0] = v5;
  v10 = objc_msgSend_variablesWithTexture_texcoords_textureMatrix_(TSCH3DTextureVariables, v6, v7, v8, v9, qword_280A46730, qword_280A46740, qword_280A46748);
  v22[1] = v10;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v12, v13, v14, v22, 2);
  v20 = objc_msgSend_copy(v15, v16, v17, v18, v19);
  v21 = qword_280A46938;
  qword_280A46938 = v20;
}

void sub_2761B08CC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2761B1B0C(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend__singletonAlloc(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_init(v6, v7, v8, v9, v10);
  v12 = qword_280A46948;
  qword_280A46948 = v11;

  if (!qword_280A46948)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "+[TSCH3DPointLightUniformArrayShaderVariables variables]_block_invoke");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightUniformArrayShaderVariables.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 65, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    v32 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v32, v28, v29, v30, v31);
  }
}

void sub_2761B1E80(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend__singletonAlloc(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_init(v6, v7, v8, v9, v10);
  v12 = qword_280A46958;
  qword_280A46958 = v11;

  if (!qword_280A46958)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "+[TSCH3DDirectionalLightUniformArrayShaderVariables variables]_block_invoke");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightUniformArrayShaderVariables.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 85, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    v32 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v32, v28, v29, v30, v31);
  }
}

void sub_2761B21F4(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend__singletonAlloc(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_init(v6, v7, v8, v9, v10);
  v12 = qword_280A46968;
  qword_280A46968 = v11;

  if (!qword_280A46968)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "+[TSCH3DSpotLightUniformArrayShaderVariables variables]_block_invoke");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightUniformArrayShaderVariables.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 105, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    v32 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v32, v28, v29, v30, v31);
  }
}

uint64_t sub_2761B38CC(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  if (a2 >= 3)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "glm::mat4cref TSCH3D::LightingPackageShaderEffectState::operator[](NSUInteger) const");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightingPackageShaderEffectState.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 25, 0, "index out of bounds %lu, %lu", a2, 2);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  return a1 + (a2 << 6);
}

uint64_t sub_2761B3F30(void *a1, _DWORD *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_2761B7788(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v3[1] = a2[1];
    v3[2] = a2[2];
    v3[3] = a2[3];
    result = (v3 + 4);
  }

  a1[1] = result;
  return result;
}

float sub_2761B4B70@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X2>, float *a4@<X8>)
{
  v4 = a1[1];
  v5 = *a2 - *a1;
  v6 = a2[1] - v4;
  v7 = a1[2];
  v8 = a2[2] - v7;
  v9 = *a3 - *a1;
  v10 = a3[1] - v4;
  v11 = a3[2] - v7;
  v12 = (v6 * v11) - (v10 * v8);
  v13 = (v8 * v9) - (v11 * v5);
  v14 = (v5 * v10) - (v9 * v6);
  v15 = 1.0 / sqrtf(((v13 * v13) + (v12 * v12)) + (v14 * v14));
  v16 = v12 * v15;
  v17 = v13 * v15;
  result = v14 * v15;
  v19 = (v4 * v17) + ((v12 * v15) * *a1);
  *a4 = v16;
  a4[1] = v17;
  a4[2] = result;
  a4[3] = v19 + (result * v7);
  return result;
}

id sub_2761B4E18(float *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v9 = MEMORY[0x277CCACA8];
  sub_276152FD4("mat4x4((%f, %f, %f, %f), (%f, %f, %f, %f), (%f, %f, %f, %f), (%f, %f, %f, %f))", a2, a3, a4, a5, a6, a7, a8, SLOBYTE(v8));
  if (v17 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v9, v10, v11, v12, v13, &v16);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v9, v10, v11, v12, v13, v16);
  }
  v14 = ;
  if (v17 < 0)
  {
    operator delete(v16);
  }

  return v14;
}

void sub_2761B4F1C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 17) < 0)
  {
    operator delete(*(v1 - 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_2761B502C(void *a1, float *a2, float *a3, float *a4, float *a5)
{
  v19 = a1;
  objc_msgSend_width(v19, v9, v10, v11, v12);
  v14 = *&v13;
  objc_msgSend_height(v19, v15, v13, v16, v17);
  *a2 = -(v14 * 0.5);
  *a3 = v14 * 0.5;
  *a4 = -(v18 * 0.5);
  *a5 = v18 * 0.5;
}

float32x2_t sub_2761B63E0@<D0>(float32x2_t *a1@<X0>, double *a2@<X1>, float32x2_t *a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = COERCE_DOUBLE(vcge_f32(*&v6, *&v7));
  if ((LODWORD(v8) | HIDWORD(v8)))
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, "sourceType TSCH3D::Math::CommonFunctions::toLocal(const sourceType &, const boxType &) [sourceType = glm::detail::tvec2<float>, boxType = TSCH3D::Math::ExtendedTypesDetails::box<glm::detail::tvec2<float>>]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMath.h");
    v16 = MEMORY[0x277CCACA8];
    v51 = a1->f32[0];
    sub_276152FD4("vec2(%f, %f)", v17, v18, v19, v20, v21, v22, v23, SLOBYTE(v51));
    if (v53 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v16, v24, v25, v26, v27, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v16, v24, v25, v26, v27, __p[0]);
    }
    v35 = ;
    if (v53 < 0)
    {
      operator delete(__p[0]);
    }

    v36 = MEMORY[0x277CCACA8];
    sub_276152EB4(a2, v28, v29, v30, v31, v32, v33, v34);
    if (v53 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v36, v37, v38, v39, v40, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v36, v37, v38, v39, v40, __p[0]);
    }
    v42 = ;
    if (v53 < 0)
    {
      operator delete(__p[0]);
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v41, v43, v44, v45, v10, v15, 1013, 0, "invalid source %@ space %@", v35, v42);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
    v6 = *a2;
    v7 = a2[1];
  }

  result = vdiv_f32(vsub_f32(*a1, *&v6), vsub_f32(*&v7, *&v6));
  *a3 = result;
  return result;
}

float32x2_t sub_2761B65FC@<D0>(float32x2_t *a1@<X0>, double *a2@<X1>, float32x2_t *a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = COERCE_DOUBLE(vcgt_f32(*&v6, *&v7));
  if ((LODWORD(v8) | HIDWORD(v8)))
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, "sourceType TSCH3D::Math::CommonFunctions::toGlobal(const sourceType &, const boxType &) [sourceType = glm::detail::tvec2<float>, boxType = TSCH3D::Math::ExtendedTypesDetails::box<glm::detail::tvec2<float>>]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMath.h");
    v16 = MEMORY[0x277CCACA8];
    v51 = a1->f32[0];
    sub_276152FD4("vec2(%f, %f)", v17, v18, v19, v20, v21, v22, v23, SLOBYTE(v51));
    if (v53 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v16, v24, v25, v26, v27, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v16, v24, v25, v26, v27, __p[0]);
    }
    v35 = ;
    if (v53 < 0)
    {
      operator delete(__p[0]);
    }

    v36 = MEMORY[0x277CCACA8];
    sub_276152EB4(a2, v28, v29, v30, v31, v32, v33, v34);
    if (v53 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v36, v37, v38, v39, v40, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v36, v37, v38, v39, v40, __p[0]);
    }
    v42 = ;
    if (v53 < 0)
    {
      operator delete(__p[0]);
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v41, v43, v44, v45, v10, v15, 1006, 0, "invalid source %@ space %@", v35, v42);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
    v6 = *a2;
    v7 = a2[1];
  }

  result = vadd_f32(*&v6, vmul_f32(vsub_f32(*&v7, *&v6), *a1));
  *a3 = result;
  return result;
}

void sub_2761B7678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_276152FD4("ivec2(%d, %d)", a2, a3, a4, a5, a6, a7, a8, *a1);
  sub_276152FD4("ivec2(%d, %d)", v9, v10, v11, v12, v13, v14, v15, *(a1 + 8) - *a1);
  sub_276152FD4("box%u(%s, %s)", v16, v17, v18, v19, v20, v21, v22, 2);
  if (v24 < 0)
  {
    operator delete(__p);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }
}

void sub_2761B7754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2761B7788(void *a1, _DWORD *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_276161760();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15 = a1;
  if (v7)
  {
    sub_27616222C(a1, v7);
  }

  v8 = (16 * v2);
  __p = 0;
  v12 = v8;
  v14 = 0;
  *v8 = *a2;
  v8[1] = a2[1];
  v8[2] = a2[2];
  v8[3] = a2[3];
  v13 = 16 * v2 + 16;
  sub_2761621A4(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += (v12 - v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_2761B788C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2761BC934(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = a1;
  if (!v5)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "T TSCH3D::AssertSafeValue(__strong id, SEL, __strong id, T) [T = glm::detail::tvec3<float>]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DUtilities.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 17, 0, "cannot get safe value from nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    v5 = 0;
  }

  *a3 = *a2;
  *(a3 + 8) = *(a2 + 8);
}

void sub_2761BCFC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

void sub_2761BDAC8(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_2761BDB34(uint64_t a1, void *a2)
{
  v4 = a2;
  v8 = *(a1 + 32);
  if (v8)
  {
    objc_msgSend_unitTransform(v8, v3, v5, v6, v7);
  }

  else
  {
    v9 = 0.0;
    memset(v17, 0, sizeof(v17));
  }

  objc_msgSend_multiply_(v4, v3, v9, v6, v7, v17);
  (*(*(a1 + 40) + 16))(*(a1 + 40), v10, v11, v12, v13, v14, v15, v16);
}

void sub_2761BE4D8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2761BE8EC(uint64_t a1, void *a2)
{
  v4 = a2;
  v8 = *(a1 + 32);
  if (v8)
  {
    objc_msgSend_p_gridlineTransformForPipeline_(v8, v3, v5, v6, v7, *(a1 + 40));
  }

  else
  {
    v9 = 0.0;
    memset(v271, 0, 64);
  }

  objc_msgSend_multiply_(v4, v3, v9, v6, v7, v271);
  v14 = objc_msgSend_scene(*(a1 + 40), v10, v11, v12, v13);
  v19 = objc_msgSend_delegateForSceneObject_(v14, v15, v16, v17, v18, *(a1 + 32));

  if ((objc_msgSend_willSubmitSceneObject_pipeline_(v19, v20, v21, v22, v23, *(a1 + 32), *(a1 + 40)) & 1) == 0)
  {
    v264 = *(*(a1 + 32) + 8);
    v259 = objc_msgSend_effects(v4, v24, v25, v26, v27);
    if ((objc_msgSend_beginWithPipeline_(v264, v28, v29, v30, v31, *(a1 + 40)) & 1) == 0)
    {
      v36 = objc_msgSend_effects(*(a1 + 32), v32, v33, v34, v35);
      objc_msgSend_resetToArray_(v259, v37, v38, v39, v40, v36);

      v264 = 0;
    }

    v41 = objc_msgSend_scene(*(a1 + 40), v32, v33, v34, v35);
    v42 = objc_opt_class();
    v47 = objc_msgSend_partForType_(v41, v43, v44, v45, v46, v42);

    v258 = objc_msgSend_properties(v47, v48, v49, v50, v51);
    v57 = objc_msgSend_objectEnumerator(v258, v52, v53, v54, v55);
    v260 = v4;
    v261 = v57;
    v262 = v47;
    v263 = v19;
    while (1)
    {
      v61 = objc_msgSend_nextObject(v57, v56, v58, v59, v60);
      v66 = v61;
      if (!v61)
      {
        break;
      }

      v67 = objc_msgSend_stroke(v61, v62, v63, v64, v65);
      if (objc_msgSend_enabled(v66, v68, v69, v70, v71) && (objc_msgSend_shouldRender(v67, v72, v73, v74, v75) & 1) != 0)
      {
        if (v264)
        {
          v80 = objc_msgSend_setting(TSCH3DPrefilteredLineSetting, v76, v77, v78, v79);
          v85 = objc_msgSend_scene(*(a1 + 40), v81, v82, v83, v84);
          v90 = objc_msgSend_contextInfoForScene_(TSCH3DLabelBitmapContextInfo, v86, v87, v88, v89, v85);

          v95 = objc_msgSend_color(v67, v91, v92, v93, v94);
          if (objc_msgSend_hasSuppressedBackgrounds(v90, v96, v97, v98, v99))
          {
            v104 = objc_msgSend_blackColor(MEMORY[0x277D81180], v100, v101, v102, v103);

            v95 = v104;
          }

          objc_msgSend_opacity(v66, v100, v101, v102, v103);
          v106 = v105;
          v108 = v95;
          if (!v108)
          {
            v112 = MEMORY[0x277D81150];
            v113 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v107, v109, v110, v111, "vec4 (anonymous namespace)::Vec4FromColorAndOpacity(TSUColor *__strong, float)");
            v118 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v114, v115, v116, v117, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGridlinesSceneObject.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v112, v119, v120, v121, v122, v113, v118, 74, 0, "invalid nil value for '%{public}s'", "color");

            v4 = v260;
            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v123, v124, v125, v126);
          }

          objc_msgSend_redComponent(v108, v107, v109, v110, v111);
          v128 = v127;
          objc_msgSend_greenComponent(v108, v129, v127, v130, v131);
          v133 = v132;
          objc_msgSend_blueComponent(v108, v134, v132, v135, v136);
          v138 = v137;
          objc_msgSend_alphaComponent(v108, v139, v137, v140, v141);
          v143 = v142 * v106;
          *&v144 = v128;
          *&v128 = v133;
          *&v133 = v138;
          *&v138 = v143;

          v270.i64[0] = __PAIR64__(LODWORD(v128), v144);
          v270.i64[1] = __PAIR64__(LODWORD(v138), LODWORD(v133));
          objc_msgSend_setStrokeColor_(v80, v145, v146, v147, v148, &v270);
          if (!*(a1 + 40))
          {
            v153 = MEMORY[0x277D81150];
            v154 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v149, v150, v151, v152, "[TSCH3DChartGridlinesSceneObject p_render:]_block_invoke");
            v159 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v155, v156, v157, v158, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGridlinesSceneObject.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v153, v160, v161, v162, v163, v154, v159, 138, 0, "invalid nil value for '%{public}s'", "pipeline");

            v4 = v260;
            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v164, v165, v166, v167);
          }

          objc_msgSend_width(v67, v149, v150, v151, v152);
          v169 = v168;
          objc_msgSend_renderScale(*(a1 + 40), v170, v168, v171, v172);
          v174 = *&v173;
          objc_msgSend_superSamples(*(a1 + 40), v175, v173, v176, v177);
          v178 = v169 * v174;
          v180 = v178 / v179;
          v181 = v180;
          *&v180 = v181;
          objc_msgSend_setLineWidth_(v80, v182, v180, v178, v183);
          v188 = objc_msgSend_sharedInstance(TSCH3DChartPlatformSettings, v184, v185, v186, v187);
          objc_msgSend_prefilteredLinesFilterRadius(v188, v189, v190, v191, v192);
          v270 = vdupq_lane_s32(v193, 0);
          objc_msgSend_setFilterRadius_(v80, v194, *v270.i64, v195, v196, &v270);

          v201 = objc_msgSend_pattern(v67, v197, v198, v199, v200);
          v206 = objc_msgSend_patternType(v201, v202, v203, v204, v205);

          if (v206 != 1)
          {
            objc_msgSend_width(v67, v207, v208, v209, v210);
            v215 = v181;
            if (v212 == v215 || (v212 = vabdd_f64(v212, v215), v212 < 0.00999999978))
            {
              v216 = v67;
            }

            else
            {
              v216 = objc_msgSend_mutableCopy(v67, v211, v212, v213, v214);
              objc_msgSend_setWidth_(v216, v217, v215, v218, v219);
            }

            v67 = v216;
            objc_msgSend_setStroke_(v80, v211, v212, v213, v214, v216);
          }

          v228 = objc_msgSend_pattern(v67, v207, v208, v209, v210);
          if (objc_msgSend_patternType(v228, v229, v230, v231, v232) == 1)
          {
            objc_msgSend_setStroke_(v80, v233, v234, v235, v236, 0);
          }

          else
          {
            objc_msgSend_setStroke_(v80, v233, v234, v235, v236, v67);
          }

          v241 = objc_msgSend_buffer(v66, v237, v238, v239, v240);
          objc_msgSend_renderLineBufferWithSetting_vertices_normals_diffuseTexcoords_(v264, v242, v243, v244, v245, v80, v241, 0, 0);

          v19 = v263;
          v57 = v261;
        }

        else
        {
          objc_msgSend_geometry_(v4, v76, v77, v78, v79, v66);
          v80 = objc_msgSend_infoWithType_(TSCH3DPrimitiveInfo, v220, v221, v222, v223, 3);
          objc_msgSend_submit_(v4, v224, v225, v226, v227, v80);
        }
      }
    }

    v265[0] = MEMORY[0x277D85DD0];
    v265[1] = 3221225472;
    v265[2] = sub_2761BF0AC;
    v265[3] = &unk_27A6B67F0;
    v246 = v19;
    v266 = v246;
    v247 = v259;
    v248 = *(a1 + 32);
    v249 = *(a1 + 40);
    v267 = v247;
    v268 = v248;
    v269 = v249;
    objc_msgSend_endWithDidGenerateShaderEffectsBlock_(v264, v250, v251, v252, v253, v265);
    objc_msgSend_didSubmitSceneObject_pipeline_(v246, v254, v255, v256, v257, *(a1 + 32), *(a1 + 40));

    v19 = v263;
  }
}