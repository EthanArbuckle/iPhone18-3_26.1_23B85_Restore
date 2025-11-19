void sub_27633E124(uint64_t a1, unint64_t a2)
{
  v23[0] = a2;
  if (sub_276344534((*(*(a1 + 32) + 8) + 48), v23))
  {
    if (*(a1 + 64) == 1)
    {
      v3 = *(*(a1 + 40) + 8);
      v4 = *(*(a1 + 48) + 8);
      v23[2] = v23;
      v5 = sub_2763445E8((v4 + 48), v23);
      v6 = v3[7];
      v7 = v3[8];
      if (v6 >= v7)
      {
        v11 = v3[6];
        v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v11) >> 4);
        v13 = v12 + 1;
        if (v12 + 1 > 0x555555555555555)
        {
          sub_276161760();
        }

        v14 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v11) >> 4);
        if (2 * v14 > v13)
        {
          v13 = 2 * v14;
        }

        if (v14 >= 0x2AAAAAAAAAAAAAALL)
        {
          v15 = 0x555555555555555;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          sub_276344828((v3 + 6), v15);
        }

        v16 = 48 * v12;
        v17 = *(v5 + 3);
        v18 = *(v5 + 7);
        *(v16 + 16) = *(v5 + 5);
        *(v16 + 32) = v18;
        *v16 = v17;
        v10 = 48 * v12 + 48;
        v19 = v3[6];
        v20 = v3[7] - v19;
        v21 = v16 - v20;
        memcpy((v16 - v20), v19, v20);
        v22 = v3[6];
        v3[6] = v21;
        v3[7] = v10;
        v3[8] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        v8 = *(v5 + 3);
        v9 = *(v5 + 7);
        v6[1] = *(v5 + 5);
        v6[2] = v9;
        *v6 = v8;
        v10 = (v6 + 3);
      }

      v3[7] = v10;
    }

    ++*(*(*(a1 + 56) + 8) + 24);
  }
}

uint64_t sub_27633EC80(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) != 1)
  {
    return 0;
  }

  v4 = *a2;
  v5 = *(a2 + 8);
  v20.x = *a2;
  v20.y = v5;
  if (!CGRectContainsPoint(*(a1 + 48), v20))
  {
    return 0;
  }

  memset(&v19, 0, sizeof(v19));
  CGAffineTransformMakeTranslation(&v19, v4, v5);
  v7 = *(a2 + 16);
  if (v7 == -1.0 || (v8 = *(a1 + 136), v7 == v8) || (v9 = vabdd_f64(v7, v8), v9 < 0.1))
  {
    v10 = CGPathRetain(*(a1 + 80));
    v21 = *(a1 + 88);
    v18 = v19;
    v22 = CGRectApplyAffineTransform(v21, &v18);
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
  }

  else
  {
    v10 = objc_msgSend_p_newUnitPathForSymbol_symbolSize_stroke_forHitCheck_(*(a1 + 32), v6, v7, v9, 0.1, *(a1 + 140), *(a1 + 40), 1);
    x = *(a1 + 48);
    y = *(a1 + 56);
    width = *(a1 + 64);
    height = *(a1 + 72);
  }

  v17 = v19;
  memset(&v18, 0, sizeof(v18));
  CGAffineTransformInvert(&v18, &v17);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  if (CGRectContainsPoint(v23, *(a1 + 120)))
  {
    v15 = CGPathContainsPointSafe();
  }

  else
  {
    v15 = 0;
  }

  CGPathRelease(v10);
  return v15;
}

void sub_27633F9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15)
{
  v19 = *(v17 - 232);
  if (v19)
  {
    *(v17 - 224) = v19;
    operator delete(v19);
  }

  v20 = *(v17 - 208);
  if (v20)
  {
    *(v17 - 200) = v20;
    operator delete(v20);
  }

  v21 = *(v17 - 184);
  if (v21)
  {
    *(v17 - 176) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(a1);
}

void sub_276340778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, void *a25, void *a26)
{
  _Block_object_dispose(&STACK[0x230], 8);
  sub_276343E2C(&STACK[0x260]);
  _Block_object_dispose(&STACK[0x288], 8);
  sub_276343E2C(&STACK[0x2B8]);
  _Block_object_dispose(&STACK[0x2E0], 8);
  sub_276343E2C(&STACK[0x310]);
  _Block_object_dispose((v26 - 248), 8);
  sub_276343E2C(v26 - 200);

  _Unwind_Resume(a1);
}

__n128 sub_276340A40(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_276340A64(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

__n128 sub_276340A7C(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_276340AA0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

__n128 sub_276340AB8(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_276340ADC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_276340AF4(void *a1, unint64_t a2)
{
  v28 = a2;
  if (sub_276344534((*(a1[5] + 8) + 48), &v28))
  {
    v3 = *(a1[6] + 8);
    v4 = *(a1[7] + 8);
    v29 = &v28;
    v5 = sub_276344F94((v4 + 48), &v28);
    sub_276298934(v3 + 48, (v5 + 3));
    v6 = *(a1[8] + 8);
    v7 = *(a1[9] + 8);
    v29 = &v28;
    v8 = sub_2763451D4((v7 + 48), &v28);
    sub_276298A3C(v6 + 48, v8 + 3);
    v9 = *(a1[10] + 8);
    v10 = *(a1[11] + 8);
    v29 = &v28;
    v11 = sub_276345408((v10 + 48), &v28);
    sub_27627D7DC(v9 + 48, v11 + 3);
    v12 = *(*(a1[12] + 8) + 40);
    v13 = a1[4];
    v18 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v14, v15, v16, v17, v28);
    v23 = objc_msgSend_objectForKeyedSubscript_(v13, v19, v20, v21, v22, v18);
    objc_msgSend_addObject_(v12, v24, v25, v26, v27, v23);

    ++*(*(a1[13] + 8) + 24);
  }
}

__n128 sub_2763410CC(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_2763410F0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_276341108(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  **(a1 + 72) = 0;
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v11 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v7, v8, v9, v10, a2);
  v12 = *(a1 + 40);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  if (*(a1 + 80))
  {
    v15 = &v39;
  }

  else
  {
    v15 = 0;
  }

  if (v14 == 1)
  {
    v39 = 0;
  }

  v38.receiver = v5;
  v38.super_class = TSCHScatterElementBuilder;
  v16 = objc_msgSendSuper2(&v38, sel_countOfHitCheckRegionsInSeries_forGroups_forBodyLayout_outNewElementPaths_outSelectionKnobLocations_, v6, v11, v12, v13, v15);
  if (v14)
  {
    v17 = v39;
  }

  else
  {
    v17 = 0;
  }

  if (v16)
  {
    for (i = 0; i != v16; i = i + 1)
    {
      v19 = *(*(a1 + 64) + 8);
      v20 = **(a1 + 72);
      v22 = v19[7];
      v21 = v19[8];
      if (v22 >= v21)
      {
        v24 = v19[6];
        v25 = (v22 - v24) >> 3;
        if ((v25 + 1) >> 61)
        {
          sub_276161760();
        }

        v26 = v21 - v24;
        v27 = v26 >> 2;
        if (v26 >> 2 <= (v25 + 1))
        {
          v27 = v25 + 1;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFF8)
        {
          v28 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v27;
        }

        if (v28)
        {
          sub_276282880((v19 + 6), v28);
        }

        v29 = (8 * v25);
        *v29 = *(v20 + 8 * i);
        v23 = 8 * v25 + 8;
        v30 = v19[6];
        v31 = v19[7] - v30;
        v32 = v29 - v31;
        memcpy(v29 - v31, v30, v31);
        v33 = v19[6];
        v19[6] = v32;
        v19[7] = v23;
        v19[8] = 0;
        if (v33)
        {
          operator delete(v33);
        }
      }

      else
      {
        *v22 = *(v20 + 8 * i);
        v23 = (v22 + 1);
      }

      v19[7] = v23;
    }
  }

  free(**(a1 + 72));
  if (*(a1 + 80))
  {
    objc_msgSend_addObjectsFromArray_(*(a1 + 56), v34, v35, v36, v37, v17);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_276341740(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_276343164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, uint64_t a20, void *a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  _Block_object_dispose(&STACK[0x260], 8);
  sub_276343E2C(&STACK[0x290]);
  _Block_object_dispose(&STACK[0x2B8], 8);
  sub_276343E2C(&STACK[0x2E8]);
  _Block_object_dispose(&STACK[0x310], 8);
  sub_276343E2C(&STACK[0x340]);
  _Block_object_dispose((v29 - 248), 8);
  sub_276343E2C(v29 - 200);

  _Unwind_Resume(a1);
}

void sub_2763434F4(void *a1, unint64_t a2)
{
  v28 = a2;
  if (sub_276344534((*(a1[5] + 8) + 48), &v28))
  {
    v3 = *(a1[6] + 8);
    v4 = *(a1[7] + 8);
    v29 = &v28;
    v5 = sub_276344F94((v4 + 48), &v28);
    sub_276298934(v3 + 48, (v5 + 3));
    v6 = *(a1[8] + 8);
    v7 = *(a1[9] + 8);
    v29 = &v28;
    v8 = sub_2763451D4((v7 + 48), &v28);
    sub_276298A3C(v6 + 48, v8 + 3);
    v9 = *(a1[10] + 8);
    v10 = *(a1[11] + 8);
    v29 = &v28;
    v11 = sub_276345408((v10 + 48), &v28);
    sub_27627D7DC(v9 + 48, v11 + 3);
    v12 = *(*(a1[12] + 8) + 40);
    v13 = a1[4];
    v18 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v14, v15, v16, v17, v28);
    v23 = objc_msgSend_objectForKeyedSubscript_(v13, v19, v20, v21, v22, v18);
    objc_msgSend_addObject_(v12, v24, v25, v26, v27, v23);

    ++*(*(a1[13] + 8) + 24);
  }
}

void sub_2763436B8()
{
  v0 = objc_alloc_init(TSCHPolarElementBuilderCoordinateAdapter);
  v1 = qword_280A47B00;
  qword_280A47B00 = v0;
}

id sub_276343D14(unsigned int a1, const char *a2, double a3, double a4, double a5)
{
  if (a1 < 2)
  {
    v5 = 8;
    v6 = a2;
LABEL_3:
    v7 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], a2, *v6, *&a2[v5], a5);
    goto LABEL_11;
  }

  if (a1 == 2)
  {
    v6 = (a2 + 16);
    v5 = 24;
    goto LABEL_3;
  }

  if (a1 != 4)
  {
    if (a1 == 3)
    {
      v6 = (a2 + 32);
      v5 = 40;
      goto LABEL_3;
    }

    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "NSValue *TSCHPathElementEndPoint(CGPathElement)");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLineAreaScatterElementBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 1411, 0, "Can't find end point.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v7 = 0;
LABEL_11:

  return v7;
}

uint64_t sub_276343E2C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *sub_276343E78(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_2763440B4(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_2763441A4(a1, prime);
    }
  }
}

void sub_2763441A4(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_2761617D0();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *sub_276344308(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *sub_276344534(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_2763445E8(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_276344828(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_2761617D0();
}

uint64_t sub_276344880(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

void *sub_2763448F0(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *sub_276344B2C(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *sub_276344D60(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *sub_276344F94(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *sub_2763451D4(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *sub_276345408(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

double sub_27634600C(int a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  result = a4 + a2 * a6;
  if (a1)
  {
    return result + a8;
  }

  return result;
}

void sub_27634695C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x238], 8);
  _Block_object_dispose(&STACK[0x258], 8);
  _Unwind_Resume(a1);
}

void sub_2763469D0(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v7 = objc_msgSend_seriesAtIndex_(*(a1 + 32), a2, a3, a4, a5, a2);
  v12 = objc_msgSend_seriesType(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_elementBuilder(v12, v13, v14, v15, v16);

  v22 = objc_msgSend_renderGroupIndexSetForSeriesIndex_(*(a1 + 40), v18, v19, v20, v21, a2);
  if (objc_msgSend_count(v22, v23, v24, v25, v26))
  {
    if (objc_msgSend_renderElements(*(a1 + 40), v27, v28, v29, v30))
    {
      v116.a = 0.0;
      v35 = objc_msgSend_countOfElementsInSeries_forGroups_forBodyLayout_outNewElementBounds_outNewClipRects_outNewElementPaths_outSelectionKnobLocations_forHighlightPath_(v17, v31, v32, v33, v34, v7, v22, *(a1 + 48), 0, &v116, 0, 0, 0);
      a = v116.a;
      if (*&v116.a && v35)
      {
        v37 = 0;
        v38 = 1;
        do
        {
          *(*(*(a1 + 56) + 8) + 32) = CGRectUnion(*(*(*(a1 + 56) + 8) + 32), *(*&a + v37));
          a = v116.a;
          if (!*&v116.a)
          {
            break;
          }

          v37 += 32;
          v39 = v38++ >= v35;
        }

        while (!v39);
      }

      *(*(*(a1 + 64) + 8) + 24) += v35;
      free(*&a);
    }

    if (objc_msgSend_renderLabels(*(a1 + 40), v31, v32, v33, v34))
    {
      v117 = 0;
      v118 = 0;
      v44 = objc_msgSend_countOfLabelsForSeries_forGroups_forBodyLayout_outNewTransforms_outNewElementSizes_outNewClipRects_outNewStrings_(v17, v40, v41, v42, v43, v7, v22, *(a1 + 48), &v118, 0, &v117, 0);
      v45 = v117;
      if (v117 && v44)
      {
        v46 = 0;
        v47 = 0;
        v48 = 1;
        do
        {
          v119 = *&v45[v46];
          v49 = *&v118[v47];
          v50 = *&v118[v47 + 32];
          *&v116.c = *&v118[v47 + 16];
          *&v116.tx = v50;
          *&v116.a = v49;
          v121 = CGRectApplyAffineTransform(v119, &v116);
          *(*(*(a1 + 56) + 8) + 32) = CGRectUnion(*(*(*(a1 + 56) + 8) + 32), v121);
          v45 = v117;
          if (!v117)
          {
            break;
          }

          v47 += 48;
          v46 += 32;
          v39 = v48++ >= v44;
        }

        while (!v39);
      }

      *(*(*(a1 + 64) + 8) + 24) += v44;
      free(v45);
      free(v118);
      v113 = *(MEMORY[0x277CBF398] + 16);
      v114 = *MEMORY[0x277CBF398];
      *&v116.a = *MEMORY[0x277CBF398];
      *&v116.c = v113;
      v53 = objc_msgSend_countOfCalloutLinesForSeries_forGroups_forBodyLayout_outNewClipRects_(v17, v51, v116.a, v113.width, v52, v7, v22, *(a1 + 48), &v116);
      if (v53)
      {
        v56 = v53;
        v122.origin.x = v116.a;
        v122.origin.y = v116.b;
        v122.size.width = v116.c;
        v122.size.height = v116.d;
        *(&v55 - 2) = CGRectUnion(*(*(*(a1 + 56) + 8) + 32), v122);
        v57 = *(*(a1 + 56) + 8);
        *(v57 + 4) = v58;
        *(v57 + 5) = v59;
        v57[6] = v55;
        *(v57 + 7) = v60;
        *(*(*(a1 + 64) + 8) + 24) += v56;
      }

      v115.origin = v114;
      v115.size = v113;
      v61 = objc_msgSend_countOfErrorBarsInSeries_forGroups_forAxisID_forBodyLayout_outClipRect_outNewErrorBarDescriptors_(v17, v54, v113.width, v114.x, v55, v7, v22, 0, *(a1 + 48), &v115, 0);
      if (v61)
      {
        v62 = v61;
        *(*(*(a1 + 56) + 8) + 32) = CGRectUnion(*(*(*(a1 + 56) + 8) + 32), v115);
        *(*(*(a1 + 64) + 8) + 24) += v62;
      }
    }

    objc_opt_class();
    v67 = objc_msgSend_model(v7, v63, v64, v65, v66);
    v72 = objc_msgSend_firstValueAxis(v67, v68, v69, v70, v71);
    v73 = TSUDynamicCast();

    if (v73)
    {
      v78 = objc_msgSend_model(v7, v74, v75, v76, v77);
      v83 = objc_msgSend_chartInfo(v78, v79, v80, v81, v82);
      HasStackedSummaryLabels = objc_msgSend_supportsAndHasStackedSummaryLabels(v83, v84, v85, v86, v87);

      if (HasStackedSummaryLabels)
      {
        v93 = objc_msgSend_groupIndexesWhereSeriesIsLastSeries_fromRenderGroupIndexSet_(v73, v89, v90, v91, v92, v7, v22);
        if (objc_msgSend_count(v93, v94, v95, v96, v97) && objc_msgSend_renderLabels(*(a1 + 40), v98, v99, v100, v101))
        {
          v115.origin.x = 0.0;
          v118 = 0;
          v106 = objc_msgSend_countOfSummaryLabelsForGroups_forBodyLayout_outNewTransforms_outNewElementSizes_outNewClipRects_outNewStrings_(v17, v102, v103, v104, v105, v93, *(a1 + 48), &v115, 0, &v118, 0);
          v107 = v118;
          if (v118 && v106)
          {
            v108 = 0;
            v109 = 0;
            v110 = 1;
            do
            {
              v120 = *&v107[v108];
              v111 = *(*&v115.origin.x + v109);
              v112 = *(*&v115.origin.x + v109 + 32);
              *&v116.c = *(*&v115.origin.x + v109 + 16);
              *&v116.tx = v112;
              *&v116.a = v111;
              v123 = CGRectApplyAffineTransform(v120, &v116);
              *(*(*(a1 + 56) + 8) + 32) = CGRectUnion(*(*(*(a1 + 56) + 8) + 32), v123);
              v107 = v118;
              if (!v118)
              {
                break;
              }

              v109 += 48;
              v108 += 32;
              v39 = v110++ >= v106;
            }

            while (!v39);
          }

          *(*(*(a1 + 64) + 8) + 24) += v106;
          free(v107);
          free(*&v115.origin.x);
        }
      }
    }
  }
}

void sub_276346E90(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  if (objc_msgSend_renderTrendLinesForSeriesIndex_(*(a1 + 32), a2, a3, a4, a5, a2))
  {
    v11 = objc_msgSend_seriesAtIndex_(*(a1 + 40), v7, v8, v9, v10, a2);
    v16 = objc_msgSend_seriesType(v11, v12, v13, v14, v15);
    v21 = objc_msgSend_elementBuilder(v16, v17, v18, v19, v20);

    v24 = *MEMORY[0x277CBF398];
    v31 = *(MEMORY[0x277CBF398] + 16);
    v33 = *MEMORY[0x277CBF398];
    v35.origin = *MEMORY[0x277CBF398];
    v35.size = v31;
    v25 = *(a1 + 48);
    if (v25)
    {
      objc_msgSend_trendlineElementForSeries_forBodyLayout_outElementBounds_outElementClipRect_outElementPath_(v21, v22, *&v24, v31.width, v23, v11, v25, 0, &v35, 0);
      *(*(*(a1 + 64) + 8) + 24) += !CGRectIsNull(v35);
      *(&v23 - 2) = CGRectUnion(*(*(*(a1 + 72) + 8) + 32), v35);
      v26 = *(*(a1 + 72) + 8);
      *(v26 + 4) = v27;
      *(v26 + 5) = v28;
      v26[6] = v23;
      *(v26 + 7) = v29;
    }

    v35.origin = v33;
    v35.size = v31;
    objc_msgSend_transformForRenderingTrendlineTextForSeries_forAreaLayout_outElementSize_outClipRect_outParagraphStyle_outNewString_(v21, v22, v31.width, v33.x, v23, v11, *(a1 + 56), 0, &v35, 0, 0, v31, v33);
    *(*(*(a1 + 64) + 8) + 24) += !CGRectIsNull(v35);
    v36 = CGRectUnion(*(*(*(a1 + 72) + 8) + 32), v35);
    *(*(*(a1 + 72) + 8) + 32) = v36;
    v35.origin = v34;
    v35.size = v32;
    objc_msgSend_transformForRenderingR2TextForSeries_forAreaLayout_outElementSize_outClipRect_outParagraphStyle_outString_(v21, v30, v32.width, v34.x, v36.size.width, v11, *(a1 + 56), 0, &v35, 0, 0);
    *(*(*(a1 + 64) + 8) + 24) += !CGRectIsNull(v35);
    *(*(*(a1 + 72) + 8) + 32) = CGRectUnion(*(*(*(a1 + 72) + 8) + 32), v35);
  }
}

uint64_t sub_276348208(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  objc_msgSend_CGRectValue(a2, v6, v7, v8, v9);
  v11 = v10;
  v13 = v12;
  objc_msgSend_CGRectValue(v5, v14, v10, v12, v15);
  v17 = v16;
  v19 = v18;

  v20 = v13 < v19;
  if (v4)
  {
    v20 = v11 < v17;
  }

  if (v20)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

void sub_276348294(CGPathRef path, _OWORD *a2, uint64_t a3, CGRect *a4, CGMutablePathRef *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (a2)
  {
    v18 = MEMORY[0x277CBF2C0];
    v19 = *(MEMORY[0x277CBF2C0] + 16);
    *a2 = *MEMORY[0x277CBF2C0];
    a2[1] = v19;
    a2[2] = *(v18 + 32);
  }

  if (a3)
  {
    *a3 = *MEMORY[0x277CBF3A8];
  }

  if (a4)
  {
    v20 = *(MEMORY[0x277CBF398] + 16);
    a4->origin = *MEMORY[0x277CBF398];
    a4->size = v20;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (path)
  {
    if (!CGPathIsEmpty(path))
    {
      BoundingBox = CGPathGetBoundingBox(path);
      x = BoundingBox.origin.x;
      y = BoundingBox.origin.y;
      width = BoundingBox.size.width;
      height = BoundingBox.size.height;
      if (!CGRectIsNull(BoundingBox))
      {
        memset(&v29, 0, sizeof(v29));
        CGAffineTransformMakeTranslation(&v29, x, y);
        v27 = v29;
        memset(&v28, 0, sizeof(v28));
        CGAffineTransformInvert(&v28, &v27);
        if (a3)
        {
          *a3 = width;
          *(a3 + 8) = height;
        }

        if (a2)
        {
          v25 = *&v29.c;
          *a2 = *&v29.a;
          a2[1] = v25;
          a2[2] = *&v29.tx;
        }

        if (a4)
        {
          v31.origin.x = a6;
          v31.origin.y = a7;
          v31.size.width = a8;
          v31.size.height = a9;
          if (!CGRectIsNull(v31))
          {
            v27 = v28;
            v32.origin.x = a6;
            v32.origin.y = a7;
            v32.size.width = a8;
            v32.size.height = a9;
            *a4 = CGRectApplyAffineTransform(v32, &v27);
          }
        }

        if (a5)
        {
          Mutable = CGPathCreateMutable();
          CGPathAddPathSafe();
          *a5 = Mutable;
        }
      }
    }
  }
}

uint64_t sub_27634844C@<X0>(uint64_t result@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  *(a4 + 40) = 0;
  *a4 = a5;
  *(a4 + 8) = a6;
  *(a4 + 16) = a7;
  *(a4 + 24) = a8;
  *(a4 + 32) = result;
  *(a4 + 36) = a2;
  *(a4 + 40) = a3;
  return result;
}

uint64_t sub_276348464(void *a1, const char *a2, double a3, double a4, double a5)
{
  if (!a1)
  {
    return 10;
  }

  v5 = objc_msgSend_identifier(a1, a2, a3, a4, a5);
  if (objc_msgSend_isEqualToString_(v5, v6, v7, v8, v9, @"simple arrow"))
  {
    v14 = 0;
  }

  else if (objc_msgSend_isEqualToString_(v5, v10, v11, v12, v13, @"filled circle"))
  {
    v14 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v5, v15, v16, v17, v18, @"filled diamond"))
  {
    v14 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v5, v19, v20, v21, v22, @"open arrow"))
  {
    v14 = 3;
  }

  else if (objc_msgSend_isEqualToString_(v5, v23, v24, v25, v26, @"filled arrow"))
  {
    v14 = 4;
  }

  else if (objc_msgSend_isEqualToString_(v5, v27, v28, v29, v30, @"filled square"))
  {
    v14 = 5;
  }

  else if (objc_msgSend_isEqualToString_(v5, v31, v32, v33, v34, @"open square"))
  {
    v14 = 6;
  }

  else if (objc_msgSend_isEqualToString_(v5, v35, v36, v37, v38, @"open circle"))
  {
    v14 = 7;
  }

  else if (objc_msgSend_isEqualToString_(v5, v39, v40, v41, v42, @"inverted arrow"))
  {
    v14 = 8;
  }

  else if (objc_msgSend_isEqualToString_(v5, v43, v44, v45, v46, @"line"))
  {
    v14 = 9;
  }

  else
  {
    if ((objc_msgSend_isEqualToString_(v5, v47, v48, v49, v50, @"none") & 1) == 0)
    {
      v55 = MEMORY[0x277D81150];
      v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v52, v53, v54, "TSDLineEndType TSCHLineEndTypeForLineEnd(TSDLineEnd *__strong)");
      v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHElementBuilder.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v62, v63, v64, v65, v56, v61, 1140, 0, "Unexpected line end identifier: %@", v5);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68, v69);
    }

    v14 = 10;
  }

  return v14;
}

uint64_t sub_276348654(void *a1, void *a2, uint64_t a3, uint64_t a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v126[1] = *MEMORY[0x277D85DE8];
  v18 = a1;
  v19 = a2;
  v131.origin.x = a5;
  v131.origin.y = a6;
  v131.size.width = a7;
  v131.size.height = a8;
  if (CGRectIsNull(v131) || (v132.origin.x = a5, v132.origin.y = a6, v132.size.width = a7, v132.size.height = a8, v127.x = a9, v127.y = a10, CGRectContainsPoint(v132, v127)))
  {
    *point = a9;
    v25 = objc_msgSend_errorBarData(v18, v20, v21, v22, v23);
    if (v25)
    {
      v113 = v19;
      if (v19)
      {
        v126[0] = v19;
        v29 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v24, v26, v27, v28, v126, 1);
      }

      else
      {
        v31 = objc_msgSend_model(v18, v24, v26, v27, v28);
        v36 = objc_msgSend_chartInfo(v31, v32, v33, v34, v35);
        v41 = objc_msgSend_chartType(v36, v37, v38, v39, v40);
        v29 = objc_msgSend_valueAxisIDs(v41, v42, v43, v44, v45);
      }

      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      obj = v29;
      v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v46, v47, v48, v49, &v121, v125, 16);
      if (v50)
      {
        v54 = v50;
        v55 = *v122;
        v111 = (a3 + 40);
        v56 = 3.14159265;
        v57 = MEMORY[0x277CBF2C0];
        v112 = v18;
        v115 = *v122;
        while (2)
        {
          for (i = 0; i != v54; ++i)
          {
            if (*v122 != v55)
            {
              objc_enumerationMutation(obj);
            }

            v59 = *(*(&v121 + 1) + 8 * i);
            if (objc_msgSend_showErrorBarsForAxisID_(v25, v51, v56, v52, v53, v59))
            {
              v60 = objc_msgSend_strokeForAxisID_(v25, v51, v56, v52, v53, v59);
              v65 = v60;
              if (v60 && objc_msgSend_shouldRender(v60, v61, v62, v63, v64))
              {
                objc_msgSend_width(v65, v66, v67, v68, v69);
                v71 = v70;
                v72 = (v70 + -1.0) * 0.6 + 1.0;
                if (v71 <= 1.0)
                {
                  v72 = v71;
                }

                v117 = v72;
                if (v71 != 0.0 && a4 != 0)
                {
                  v74 = v111;
                  v75 = a4;
                  while (1)
                  {
                    v76 = *(v74 - 5);
                    v77 = *(v74 - 4);
                    v78 = *(v74 - 3);
                    v79 = *(v74 - 2);
                    v81 = *(v74 - 2);
                    v80 = *(v74 - 1);
                    v82 = *v74;
                    TSUAveragePoints();
                    v83 = a10;
                    TSUDistance();
                    TSURectWithCenterAndSize();
                    v134 = CGRectInset(v133, -1.5, -1.5);
                    *&v128.x = point[0];
                    v128.y = a10;
                    if (CGRectContainsPoint(v134, v128))
                    {
                      break;
                    }

                    if (v81 != 10)
                    {
                      v86 = (v82 & 1) != 0 ? 3.14159265 : 4.71238898;
                      v87 = objc_msgSend_lineEndWithType_(MEMORY[0x277D80308], v84, 4.71238898, 3.14159265, v85, v81);
                      v88 = v57[1];
                      *&point[1] = *v57;
                      v119 = v88;
                      v120 = v57[2];
                      objc_msgSend_boundsForLineEnd_atPoint_atAngle_withScale_transform_(v65, v89, v76, v77, v86, v87, &point[1], v117);
                      v91 = v90;
                      v93 = v92;
                      v95 = v94;
                      v97 = v96;

                      v135.origin.x = v91;
                      a10 = v83;
                      v135.origin.y = v93;
                      v135.size.width = v95;
                      v135.size.height = v97;
                      v136 = CGRectInset(v135, -1.5, -1.5);
                      *&v129.x = point[0];
                      v129.y = v83;
                      if (CGRectContainsPoint(v136, v129))
                      {
                        break;
                      }
                    }

                    if (v80 != 10)
                    {
                      v98 = (v82 & 1) != 0 ? 3.14159265 : 4.71238898;
                      v99 = objc_msgSend_lineEndWithType_(MEMORY[0x277D80308], v84, 4.71238898, 3.14159265, v85, v80);
                      v100 = v57[1];
                      *&point[1] = *v57;
                      v119 = v100;
                      v120 = v57[2];
                      objc_msgSend_boundsForLineEnd_atPoint_atAngle_withScale_transform_(v65, v101, v78, v79, v98, v99, &point[1], v117);
                      v103 = v102;
                      v105 = v104;
                      v107 = v106;
                      v109 = v108;

                      v137.origin.x = v103;
                      a10 = v83;
                      v137.origin.y = v105;
                      v137.size.width = v107;
                      v137.size.height = v109;
                      v138 = CGRectInset(v137, -1.5, -1.5);
                      *&v130.x = point[0];
                      v130.y = v83;
                      if (CGRectContainsPoint(v138, v130))
                      {
                        break;
                      }
                    }

                    v74 += 6;
                    if (!--v75)
                    {
                      goto LABEL_36;
                    }
                  }

                  v30 = 1;
                  v18 = v112;
                  goto LABEL_42;
                }
              }

LABEL_36:

              v55 = v115;
            }
          }

          v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v51, v56, v52, v53, &v121, v125, 16);
          v30 = 0;
          v18 = v112;
          if (v54)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v30 = 0;
      }

LABEL_42:

      v19 = v113;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

BOOL sub_276348D78(void *a1, uint64_t a2)
{
  v3 = a1;
  v8 = objc_msgSend_model(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_seriesIndex(v3, v9, v10, v11, v12);
  v18 = objc_msgSend_barModelCacheForSeries_(v8, v14, v15, v16, v17, v13);

  v23 = objc_msgSend_valueAxis(v18, v19, v20, v21, v22);
  objc_msgSend_unitSpaceValueForSeries_groupIndex_(v23, v24, v25, v26, v27, v3, a2);
  v29 = v28;

  objc_msgSend_unitSpaceIntercept(v18, v30, v31, v32, v33);
  v35 = v29 >= v34;

  return v35;
}

void sub_276349FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, void *a24)
{
  _Block_object_dispose(&STACK[0x2F8], 8);
  sub_276343E2C(&STACK[0x328]);
  _Block_object_dispose(&STACK[0x350], 8);
  sub_276343E2C(&STACK[0x380]);
  _Block_object_dispose(&STACK[0x3A8], 8);
  sub_276343E2C(&STACK[0x3D8]);
  _Block_object_dispose((v27 - 240), 8);
  sub_276343E2C(v27 - 192);

  _Unwind_Resume(a1);
}

uint64_t sub_27634A274(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27634A28C(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v228 = a2;
  v7 = objc_msgSend_valueForAxis_groupIndex_(*(a1 + 32), a2, a3, a4, a5, *(a1 + 40), a2);
  v12 = v7;
  if (v7)
  {
    objc_msgSend_doubleValue(v7, v8, v9, v10, v11);
    v14 = v13;
    objc_msgSend_doubleModelToAxisValue_forSeries_(*(a1 + 40), v15, v13, v16, v17, *(a1 + 32));
  }

  else
  {
    v14 = NAN;
    objc_msgSend_doubleModelToAxisValue_forSeries_(*(a1 + 40), v8, NAN, v10, v11, *(a1 + 32));
  }

  v22 = v19;
  v23 = objc_msgSend_model(*(a1 + 32), v18, v19, v20, v21);
  isMultiData = objc_msgSend_isMultiData(v23, v24, v25, v26, v27);

  objc_opt_class();
  v30 = TSUDynamicCast();
  if (v30)
  {
    v34 = objc_msgSend_dataFormatterForSeries_groupIndex_(*(a1 + 40), v29, v31, v32, v33, *(a1 + 32), a2);
    if (objc_msgSend_usesNumberFormatStructForDataFormatter_(TSCHDataFormatterSupport, v35, v36, v37, v38, v34) && (v44 = objc_msgSend_numberOfDecimalPlaces(v34, v39, v40, v41, v42), v44 != 253))
    {
      objc_msgSend_totalForGroupIndex_series_(v30, v43, v45, v46, v47, a2, *(a1 + 32));
      v50 = v14 / v49 * 100.0;
      v51 = __exp10(v44);
      v48 = round(v51 * v50) / v51 == 0.0;
    }

    else
    {
      v48 = 0;
    }

    if ((isMultiData & 1) == 0)
    {
LABEL_12:
      if (!v12 || (v14 == 0.0) & *(a1 + 216) | v48)
      {
        goto LABEL_84;
      }
    }
  }

  else
  {
    v48 = 0;
    if ((isMultiData & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  objc_msgSend_unitSpaceValueForSeries_groupIndex_(*(a1 + 40), v29, v31, v32, v33, *(a1 + 32), a2);
  v53 = v52;
  objc_msgSend_beginValueForSeries_groupIndex_unitSpaceIntercept_relativelyPositive_valueAxis_(*(a1 + 48), v54, *(a1 + 144), v55, v56, *(a1 + 136), a2, v52 >= *(a1 + 144), *(a1 + 40));
  v58 = v57;
  objc_msgSend_unitSpaceValueForCountSpaceValue_min_count_(*(a1 + 56), v59, a2, 0.0, *(a1 + 152));
  v61 = v60;
  if (v58 <= v53)
  {
    v62 = v58;
  }

  else
  {
    v62 = v53;
  }

  if (v58 <= v53)
  {
    *&v63 = v53;
  }

  else
  {
    *&v63 = v58;
  }

  if ((isMultiData & 1) != 0 || fabs(v62) != INFINITY && (v63 > -1 ? (v93 = ((v63 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) : (v93 = 1), v93 ? (v94 = (v63 - 1) >= 0xFFFFFFFFFFFFFLL) : (v94 = 0), v94 ? (v95 = (v63 & 0x7FFFFFFFFFFFFFFFLL) == 0) : (v95 = 1), v95 ? (v96 = v62 > 1.0) : (v96 = 1), !v96))
  {
    TSUClamp();
    v65 = v64;
    v220 = *&v63;
    TSUClamp();
    v67 = v66;
    v217 = v58;
    v218 = v53;
    v219 = v22;
    v216 = v14;
    v71 = objc_msgSend_p_logicalSeriesIndexForSeries_(*(a1 + 64), v68, v66, v69, v70, *(a1 + 32));
    v72 = *(a1 + 160);
    objc_msgSend_barGroupGapRatio(*(a1 + 72), v73, v74, v75, v76);
    v78 = v77;
    v79 = *(a1 + 160);
    v80 = *(a1 + 168);
    objc_msgSend_barGapRatio(*(a1 + 72), v81, v77, v82, v83);
    v84 = *(a1 + 160);
    v86 = v61 * v72 + 0.0 + v78 * v79 + v80 * v71 + v85 * v84 * v71;
    v87 = v67 - v65;
    if (*(*(a1 + 64) + 8) == 1)
    {
      v88 = *(a1 + 200);
      v89 = v87 * v88;
      v90 = v88 + *(a1 + 184) - v87 * v88 - v65 * v88;
      v91 = *(a1 + 168);
      v92 = v86 + *(a1 + 176);
    }

    else
    {
      v97 = *(a1 + 192);
      v98 = v65 * v97;
      v99 = v84 - v86;
      v91 = v87 * v97;
      v89 = *(a1 + 168);
      v92 = v98 + *(a1 + 176);
      v90 = *(a1 + 184) + *(a1 + 200) - (v99 + 1.0);
    }

    sub_27628CE1C(v92, v90, v91, v89);
    v227.origin.x = v100;
    v227.origin.y = v101;
    v227.size.width = v102;
    v227.size.height = v103;
    v226 = v227;
    objc_msgSend_p_nudgeBarElementFrame_inPlotAreaFrame_usingBarModelCache_unitSpaceValueBegin_unitSpaceValueEnd_withViewScale_(*(a1 + 64), v104, *(a1 + 176), *(a1 + 184), *(a1 + 192), &v226, *(a1 + 72), *(a1 + 200), v62, v220, 1.0);
    IsNull = CGRectIsNull(v226);
    v108 = &v226;
    if (IsNull)
    {
      v108 = &v227;
    }

    origin = v108->origin;
    size = v108->size;
    v227.origin = v108->origin;
    v227.size = size;
    if (v12 && (objc_msgSend_formattedStringForSeries_groupIndex_(*(a1 + 40), v106, origin.x, size.width, v107, *(a1 + 32), a2), v111 = objc_claimAutoreleasedReturnValue(), (v116 = v111) != 0))
    {
      if (objc_msgSend_length(v111, v112, v113, v114, v115))
      {
        v117 = v116;
        v118 = *(MEMORY[0x277CBF398] + 16);
        v224 = *MEMORY[0x277CBF398];
        v225 = v118;
        v121 = objc_msgSend_sharedText(TSCHText, v119, *&v224, *&v118, v120);
        v126 = objc_msgSend_paragraphStyle(*(a1 + 72), v122, v123, v124, v125);
        objc_msgSend_measureText_paragraphStyle_outErasableFrame_(v121, v127, v128, v129, v130, v117, v126, &v224);
        v132 = v131;
        v134 = v133;

        v135 = *(a1 + 48);
        v140 = objc_msgSend_labelPosition(*(a1 + 72), v136, v137, v138, v139);
        v143 = objc_msgSend_adjustLabelPosition_forAxisValue_intercept_(v135, v141, v219, *(a1 + 208), v142, v140);
        v148 = objc_msgSend_seriesType(*(a1 + 32), v144, v145, v146, v147);
        v153 = objc_msgSend_elementBuilder(v148, v149, v150, v151, v152);

        v158 = objc_msgSend_chartInfo(*(a1 + 80), v154, v155, v156, v157);
        v163 = objc_msgSend_intValueForProperty_defaultValue_(v158, v159, v160, v161, v162, 1110, 0);
        if (v217 <= v218)
        {
          v166 = 24;
        }

        else
        {
          v166 = 36;
        }

        if (v217 <= v218)
        {
          v167 = 36;
        }

        else
        {
          v167 = 24;
        }

        v168 = v167 | v166;
        v170 = (v143 & v166) != 0 && v163 != 0;
        v171 = 2.0;
        if ((v143 & v168) != 0 && (v143 & 2) == 0 && !v170)
        {
          objc_msgSend_floatValueForProperty_defaultValue_(v158, v164, 0.0, v217, v165, 1111);
          v171 = v172 * 5.0 + 2.0;
        }

        v173 = v227.origin;
        v174 = v227.size;
        objc_msgSend_labelPointForPosition_rect_stringSize_offset_(v153, v164, v227.origin.x, v227.origin.y, v227.size.width, v143, v227.size.height, v132, v134, v171);
        v177 = v176;
        v179 = v178;
        if (!v143 || (v143 & 1) != 0)
        {
          if (v216 >= *(a1 + 208))
          {
            if (*(*(a1 + 64) + 8))
            {
              objc_msgSend_labelPointForPosition_rect_stringSize_(v153, v175, v173.x, v173.y, v174.width, 9, v174.height, v132, v134);
            }

            else
            {
              objc_msgSend_labelPointForPosition_rect_stringSize_(v153, v175, v173.x, v173.y, v174.width, 17, v174.height, v132, v134);
            }

            v182 = *(*(a1 + 64) + 8);
            v183 = v181 >= v179;
            v184 = v180 <= v177;
          }

          else
          {
            if (*(*(a1 + 64) + 8))
            {
              objc_msgSend_labelPointForPosition_rect_stringSize_(v153, v175, v173.x, v173.y, v174.width, 5, v174.height, v132, v134);
            }

            else
            {
              objc_msgSend_labelPointForPosition_rect_stringSize_(v153, v175, v173.x, v173.y, v174.width, 33, v174.height, v132, v134);
            }

            v182 = *(*(a1 + 64) + 8);
            v183 = v181 <= v179;
            v184 = v180 >= v177;
          }

          if (!(v182 ? v183 : v184))
          {
            v179 = v181;
            v177 = v180;
          }
        }

        v186 = v132;
        TSURectWithOriginAndSize();
        v192 = v188;
        v193 = v189;
        v194 = v190;
        v195 = v191;
        if ((*(a1 + 217) & 1) != 0 || objc_msgSend_p_testIntersectionOfRect_againstSortedRects_withInset_isVertical_(*(a1 + 64), v187, v188, v189, v190, *(*(*(a1 + 96) + 8) + 40), *(*(a1 + 64) + 8), v191, 1.0))
        {
          v196 = *(*(a1 + 104) + 8);
          CGAffineTransformMakeTranslation(&v221, v177, v179);
          v222 = a2;
          v223 = v221;
          sub_2763448F0((v196 + 48), &v222);
          v197 = *(*(a1 + 112) + 8);
          v222 = a2;
          v223.a = v186;
          v223.b = v134;
          sub_276344B2C((v197 + 48), &v222);
          v198 = *(*(a1 + 120) + 8);
          v222 = a2;
          *&v223.a = v224;
          *&v223.c = v225;
          sub_276344D60((v198 + 48), &v222);
          v199 = *(a1 + 88);
          v204 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v200, v201, v202, v203, a2);
          objc_msgSend_setObject_forKeyedSubscript_(v199, v205, v206, v207, v208, v117, v204);

          sub_276344308((*(*(a1 + 128) + 8) + 48), &v228);
          v209 = *(a1 + 64);
          v211 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v210, v192, v193, v194, v195);
          objc_msgSend_p_insertRectValue_intoArray_isVertical_showAll_(v209, v212, v213, v214, v215, v211, *(*(*(a1 + 96) + 8) + 40), *(*(a1 + 64) + 8), *(a1 + 217));
        }
      }

      else
      {
        v117 = v116;
      }
    }

    else
    {
      v117 = 0;
    }
  }

LABEL_84:
}

__n128 sub_27634AB14(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_27634AB38(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

__n128 sub_27634AB50(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_27634AB74(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

__n128 sub_27634AB8C(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_27634ABB0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_27634ABC8(void *a1, unint64_t a2)
{
  v28 = a2;
  if (sub_276344534((*(a1[6] + 8) + 48), &v28))
  {
    v3 = *(a1[7] + 8);
    v4 = *(a1[8] + 8);
    v29 = &v28;
    v5 = sub_276344F94((v4 + 48), &v28);
    sub_276298934(v3 + 48, (v5 + 3));
    v6 = *(a1[9] + 8);
    v7 = *(a1[10] + 8);
    v29 = &v28;
    v8 = sub_2763451D4((v7 + 48), &v28);
    sub_276298A3C(v6 + 48, v8 + 3);
    v9 = *(a1[11] + 8);
    v10 = *(a1[12] + 8);
    v29 = &v28;
    v11 = sub_276345408((v10 + 48), &v28);
    sub_27627D7DC(v9 + 48, v11 + 3);
    v12 = a1[4];
    v13 = a1[5];
    v18 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v14, v15, v16, v17, v28);
    v23 = objc_msgSend_objectForKeyedSubscript_(v13, v19, v20, v21, v22, v18);
    objc_msgSend_addObject_(v12, v24, v25, v26, v27, v23);

    ++*(*(a1[13] + 8) + 24);
  }
}

__n128 sub_27634B400(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_27634B424(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_27634B43C(uint64_t a1, const char *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  LODWORD(a7) = *(a1 + 136);
  LODWORD(a8) = *(a1 + 140);
  LODWORD(a9) = *(a1 + 144);
  objc_msgSend_p_createBarRectInFrame_forSeries_groupIndex_count_valueAxis_groupAxis_barWidth_barGroupGap_barGap_(*(a1 + 32), a2, *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 40), a2, *(a1 + 128), *(a1 + 48), *(a1 + 56), *(a1 + 120), a7, a8, a9);
  x = v37.origin.x;
  y = v37.origin.y;
  width = v37.size.width;
  height = v37.size.height;
  *&v34 = v37.origin.x;
  *(&v34 + 1) = *&v37.origin.y;
  v35 = v37.size.width;
  v36 = v37.size.height;
  if (!CGRectIsNull(v37))
  {
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    v38 = CGRectIntersection(*(a1 + 96), v39);
    if (*(a1 + 148) == 1)
    {
      objc_msgSend_shadowBoundsForRect_(*(a1 + 64), v15, v38.origin.x, v38.origin.y, v38.size.width, v38.size.height);
    }

    *&v31 = v38.origin.x;
    *(&v31 + 1) = *&v38.origin.y;
    v32 = v38.size.width;
    v33 = v38.size.height;
    sub_27627D7DC(*(*(a1 + 72) + 8) + 48, &v34);
    sub_27627D7DC(*(*(a1 + 80) + 8) + 48, &v31);
    v16 = *(*(a1 + 88) + 8);
    v18 = v16[7];
    v17 = v16[8];
    if (v18 >= v17)
    {
      v20 = v16[6];
      v21 = v18 - v20;
      v22 = (v18 - v20) >> 3;
      v23 = v22 + 1;
      if ((v22 + 1) >> 61)
      {
        sub_276161760();
      }

      v24 = v17 - v20;
      if (v24 >> 2 > v23)
      {
        v23 = v24 >> 2;
      }

      v25 = v24 >= 0x7FFFFFFFFFFFFFF8;
      v26 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v25)
      {
        v26 = v23;
      }

      if (v26)
      {
        sub_2761AAC20((v16 + 6), v26);
      }

      v27 = (v18 - v20) >> 3;
      v28 = (8 * v22);
      v29 = (8 * v22 - 8 * v27);
      *v28 = a2;
      v19 = v28 + 1;
      memcpy(v29, v20, v21);
      v30 = v16[6];
      v16[6] = v29;
      v16[7] = v19;
      v16[8] = 0;
      if (v30)
      {
        operator delete(v30);
      }
    }

    else
    {
      *v18 = a2;
      v19 = v18 + 8;
    }

    v16[7] = v19;
  }
}

void sub_27634C478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&STACK[0x4B8], 8);

  _Unwind_Resume(a1);
}

__n128 sub_27634C698(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_27634C6BC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

__n128 sub_27634C6E8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_27634C6F8(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v86 = a2;
  v84 = *MEMORY[0x277CBF348];
  v85 = v84;
  v83 = v84;
  if (objc_msgSend_hasErrorDataForInputAxis_outputAxis_inputAxisContinuous_outputAxisContinuous_groupIndex_groupsCount_barVertical_barType_outUnitValue_outUnitPositive_outUnitNegative_(*(a1 + 32), a2, *&v84, a4, a5, *(a1 + 40), *(a1 + 48), *(a1 + 188), *(a1 + 189), a2, *(a1 + 112), *(a1 + 190), *(a1 + 120), &v85, &v84, &v83))
  {
    sub_27634600C(*(a1 + 191), *&v85, *(&v85 + 1), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160));
    v7 = sub_27634600C(*(a1 + 191), *&v84, *(&v84 + 1), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160));
    v9 = v8;
    v74 = sub_27634600C(*(a1 + 191), *&v83, *(&v83 + 1), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160));
    y = v87.origin.y;
    v10 = *(a1 + 184);
    v87.origin.x = v74;
    v12 = *(a1 + 128);
    v11 = *(a1 + 136);
    v76 = v9;
    v77 = v7;
    v13 = v7 - v74;
    v14 = v9 - v87.origin.y;
    v16 = *(a1 + 144);
    v15 = *(a1 + 152);
    v78 = v87.origin.y;
    v87.size.width = v7 - v74;
    v87.size.height = v9 - v87.origin.y;
    v93 = CGRectStandardize(v87);
    v88.origin.x = v12;
    v88.origin.y = v11;
    v88.size.width = v16;
    v88.size.height = v15;
    if (CGRectIntersectsRect(v88, v93))
    {
      v17 = *(a1 + 168) * 0.5;
      if (*(a1 + 190) == 1)
      {
        v18 = v78;
        v19 = v74 - v17;
        v13 = *(a1 + 168);
      }

      else
      {
        v19 = v74;
        v18 = v78 - v17;
        v14 = *(a1 + 168);
      }

      v94.origin.x = v19;
      v94.origin.y = v18;
      v94.size.width = v13;
      v94.size.height = v14;
      *(*(*(a1 + 80) + 8) + 48) = CGRectUnion(*(*(*(a1 + 80) + 8) + 48), v94);
      if (*(a1 + 184) != 10)
      {
        if (*(a1 + 190) == 1)
        {
          v21 = v9 + *(a1 + 176);
          v22 = 0.0;
        }

        else
        {
          v21 = v9 + 0.0;
          v22 = -*(a1 + 176);
        }

        v23 = *(a1 + 56);
        if (v23)
        {
          v24 = 4.71238898;
          if (*(a1 + 190))
          {
            v24 = 3.14159265;
          }

          v25 = *(a1 + 64);
          v26 = *(MEMORY[0x277CBF2C0] + 16);
          *v79 = *MEMORY[0x277CBF2C0];
          *&v79[16] = v26;
          *&v79[32] = *(MEMORY[0x277CBF2C0] + 32);
          objc_msgSend_boundsForLineEnd_atPoint_atAngle_withScale_transform_(v23, v20, v7 + v22, v21, v24, v25, v79);
          v28 = v27;
          v30 = v29;
          v32 = v31;
          v34 = v33;
          v35 = *(*(a1 + 80) + 8);
          v36 = v35[6];
          v37 = v35[7];
          v38 = v35[8];
          v39 = v35[9];
        }

        else
        {
          v40 = *(*(a1 + 80) + 8);
          v36 = v40[6];
          v37 = v40[7];
          v38 = v40[8];
          v39 = v40[9];
          v34 = v39;
          v32 = v38;
          v30 = v37;
          v28 = v36;
        }

        v95.origin.x = v28;
        v95.origin.y = v30;
        v95.size.width = v32;
        v95.size.height = v34;
        *(*(*(a1 + 80) + 8) + 48) = CGRectUnion(*&v36, v95);
        v89.origin.x = v19;
        v89.origin.y = v18;
        v89.size.width = v13;
        v89.size.height = v14;
        v96.origin.x = v28;
        v96.origin.y = v30;
        v96.size.width = v32;
        v96.size.height = v34;
        v90 = CGRectUnion(v89, v96);
        x = v90.origin.x;
        v43 = v90.origin.y;
        width = v90.size.width;
        height = v90.size.height;
        if (*(a1 + 190) == 1)
        {
          v46 = y - *(a1 + 176);
          v47 = 0.0;
        }

        else
        {
          v46 = y + 0.0;
          v47 = *(a1 + 176);
        }

        v48 = *(a1 + 56);
        if (v48)
        {
          v49 = 1.57079633;
          if (*(a1 + 190))
          {
            v49 = 0.0;
          }

          v50 = *(a1 + 64);
          v51 = *(MEMORY[0x277CBF2C0] + 16);
          *v79 = *MEMORY[0x277CBF2C0];
          *&v79[16] = v51;
          *&v79[32] = *(MEMORY[0x277CBF2C0] + 32);
          objc_msgSend_boundsForLineEnd_atPoint_atAngle_withScale_transform_(v48, v41, v74 + v47, v46, v49, v50, v79);
          v53 = v52;
          v55 = v54;
          v57 = v56;
          v59 = v58;
          v60 = *(*(a1 + 80) + 8);
          v61 = v60[6];
          v62 = v60[7];
          v63 = v60[8];
          v64 = v60[9];
        }

        else
        {
          v65 = *(*(a1 + 80) + 8);
          v61 = v65[6];
          v62 = v65[7];
          v63 = v65[8];
          v64 = v65[9];
          v59 = v64;
          v57 = v63;
          v55 = v62;
          v53 = v61;
        }

        v97.origin.x = v53;
        v97.origin.y = v55;
        v97.size.width = v57;
        v97.size.height = v59;
        *(*(*(a1 + 80) + 8) + 48) = CGRectUnion(*&v61, v97);
        v91.origin.x = x;
        v91.origin.y = v43;
        v91.size.width = width;
        v91.size.height = height;
        v98.origin.x = v53;
        v98.origin.y = v55;
        v98.size.width = v57;
        v98.size.height = v59;
        v92 = CGRectUnion(v91, v98);
        v19 = v92.origin.x;
        v18 = v92.origin.y;
        v13 = v92.size.width;
        v14 = v92.size.height;
      }

      if ((*(a1 + 192) & 1) != 0 || objc_msgSend_p_testIntersectionOfRect_againstSortedRects_withInset_isVertical_(*(a1 + 72), v20, v19, v18, v13, *(*(*(a1 + 88) + 8) + 40), *(*(a1 + 72) + 8), v14, 0.0))
      {
        if (*(a1 + 193) == 1)
        {
          v81 = 0u;
          v82 = 0u;
          v80 = 0u;
          sub_27634844C(v10, v10, *(a1 + 190), &v80, v74, v78, v77, v76);
          v66 = *(*(a1 + 96) + 8);
          *v79 = a2;
          *&v79[8] = v80;
          *&v79[24] = v81;
          *&v79[40] = v82;
          sub_276343E78((v66 + 48), v79);
        }

        sub_276344308((*(*(a1 + 104) + 8) + 48), &v86);
        v67 = *(*(*(a1 + 88) + 8) + 40);
        v69 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v68, v19, v18, v13, v14);
        objc_msgSend_addObject_(v67, v70, v71, v72, v73, v69);
      }
    }
  }
}

void sub_27634CD50(uint64_t a1, unint64_t a2)
{
  v23[0] = a2;
  if (sub_276344534((*(*(a1 + 32) + 8) + 48), v23))
  {
    if (*(a1 + 64) == 1)
    {
      v3 = *(*(a1 + 40) + 8);
      v4 = *(*(a1 + 48) + 8);
      v23[2] = v23;
      v5 = sub_2763445E8((v4 + 48), v23);
      v6 = v3[7];
      v7 = v3[8];
      if (v6 >= v7)
      {
        v11 = v3[6];
        v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v11) >> 4);
        v13 = v12 + 1;
        if (v12 + 1 > 0x555555555555555)
        {
          sub_276161760();
        }

        v14 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v11) >> 4);
        if (2 * v14 > v13)
        {
          v13 = 2 * v14;
        }

        if (v14 >= 0x2AAAAAAAAAAAAAALL)
        {
          v15 = 0x555555555555555;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          sub_276344828((v3 + 6), v15);
        }

        v16 = 48 * v12;
        v17 = *(v5 + 3);
        v18 = *(v5 + 7);
        *(v16 + 16) = *(v5 + 5);
        *(v16 + 32) = v18;
        *v16 = v17;
        v10 = 48 * v12 + 48;
        v19 = v3[6];
        v20 = v3[7] - v19;
        v21 = v16 - v20;
        memcpy((v16 - v20), v19, v20);
        v22 = v3[6];
        v3[6] = v21;
        v3[7] = v10;
        v3[8] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        v8 = *(v5 + 3);
        v9 = *(v5 + 7);
        v6[1] = *(v5 + 5);
        v6[2] = v9;
        *v6 = v8;
        v10 = (v6 + 3);
      }

      v3[7] = v10;
    }

    ++*(*(*(a1 + 56) + 8) + 24);
  }
}

void sub_27634ECA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24)
{
  _Block_object_dispose(&STACK[0x2E8], 8);
  sub_276343E2C(&STACK[0x318]);
  _Block_object_dispose(&STACK[0x340], 8);
  sub_276343E2C(&STACK[0x370]);
  _Block_object_dispose(&STACK[0x398], 8);
  sub_276343E2C(&STACK[0x3C8]);
  _Block_object_dispose((v28 - 224), 8);
  sub_276343E2C(v28 - 176);

  _Unwind_Resume(a1);
}

id sub_27634EF74(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = *(a1 + 32);
  v7 = objc_msgSend_chart(*(a1 + 40), a2, a3, a4, a5);
  v12 = objc_msgSend_p_stackedRectsWithChartInfo_forGroups_forBodyLayout_(v6, v8, v9, v10, v11, v7, *(a1 + 48), *(a1 + 56));

  return v12;
}

void sub_27634EFEC(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v108 = a2;
  v7 = *(a1 + 32);
  v8 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], a2, a3, a4, a5, a2);
  v13 = objc_msgSend_objectForKey_(v7, v9, v10, v11, v12, v8);

  if (v13)
  {
    objc_msgSend_getValue_(v13, v14, v15, v16, v17, &v107);
    v109 = CGRectStandardize(v107);
    x = v109.origin.x;
    y = v109.origin.y;
    width = v109.size.width;
    height = v109.size.height;
    if (*(*(a1 + 40) + 8) == 1)
    {
      if (v109.size.height == 0.0)
      {
        goto LABEL_15;
      }
    }

    else if (v109.size.width == 0.0)
    {
      goto LABEL_15;
    }

    v23 = *(MEMORY[0x277CBF398] + 16);
    v105 = *MEMORY[0x277CBF398];
    v106 = v23;
    objc_msgSend_totalForGroupIndex_(*(a1 + 48), v18, *&v105, *&v23, v109.size.width, a2);
    v24 = *(a1 + 56);
    v29 = objc_msgSend_numberValueWithDouble_(TSCHChartGridValue, v25, v26, v27, v28);
    v34 = objc_msgSend_locale(*(a1 + 48), v30, v31, v32, v33);
    v39 = objc_msgSend_chartFormattedStringForValue_locale_(v24, v35, v36, v37, v38, v29, v34);

    if (v39 && objc_msgSend_length(v39, v40, v41, v42, v43))
    {
      v48 = objc_msgSend_sharedText(TSCHText, v44, v45, v46, v47);
      objc_msgSend_measureText_paragraphStyle_outErasableFrame_(v48, v49, v50, v51, v52, v39, *(a1 + 64), &v105);
      v54 = v53;
      v56 = v55;

      if (*(*(a1 + 40) + 8))
      {
        v61 = 6;
      }

      else
      {
        v61 = 34;
      }

      v62 = objc_msgSend_chart(*(a1 + 72), v57, v58, v59, v60);
      objc_msgSend_floatValueForProperty_defaultValue_(v62, v63, 0.0, v64, v65, 1120);
      v67 = v66;

      objc_msgSend_labelPointForPosition_rect_stringSize_offset_(*(a1 + 80), v68, x, y, width, v61, height, v54, v56, v67);
      v70 = v69;
      v72 = v71;
      TSURectWithOriginAndSize();
      v78 = v74;
      v79 = v75;
      v80 = v76;
      v81 = v77;
      if ((*(a1 + 136) & 1) != 0 || objc_msgSend_p_testIntersectionOfRect_againstSortedRects_withInset_isVertical_(*(a1 + 40), v73, v74, v75, v76, *(*(*(a1 + 96) + 8) + 40), *(*(a1 + 40) + 8), v77, 1.0))
      {
        v82 = *(*(a1 + 104) + 8);
        CGAffineTransformMakeTranslation(&v102, v70, v72);
        v103 = a2;
        v104 = v102;
        sub_2763448F0((v82 + 48), &v103);
        v83 = *(*(a1 + 112) + 8);
        v103 = a2;
        v104.a = v54;
        v104.b = v56;
        sub_276344B2C((v83 + 48), &v103);
        v84 = *(*(a1 + 120) + 8);
        v103 = a2;
        *&v104.a = v105;
        *&v104.c = v106;
        sub_276344D60((v84 + 48), &v103);
        v85 = *(a1 + 88);
        v90 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v86, v87, v88, v89, a2);
        objc_msgSend_setObject_forKeyedSubscript_(v85, v91, v92, v93, v94, v39, v90);

        sub_276344308((*(*(a1 + 128) + 8) + 48), &v108);
        v95 = *(a1 + 40);
        v97 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v96, v78, v79, v80, v81);
        objc_msgSend_p_insertRectValue_intoArray_isVertical_showAll_(v95, v98, v99, v100, v101, v97, *(*(*(a1 + 96) + 8) + 40), *(*(a1 + 40) + 8), *(a1 + 136));
      }
    }
  }

LABEL_15:
}

void sub_27634F3FC(void *a1, unint64_t a2)
{
  v28 = a2;
  if (sub_276344534((*(a1[6] + 8) + 48), &v28))
  {
    v3 = *(a1[7] + 8);
    v4 = *(a1[8] + 8);
    v29 = &v28;
    v5 = sub_276344F94((v4 + 48), &v28);
    sub_276298934(v3 + 48, (v5 + 3));
    v6 = *(a1[9] + 8);
    v7 = *(a1[10] + 8);
    v29 = &v28;
    v8 = sub_2763451D4((v7 + 48), &v28);
    sub_276298A3C(v6 + 48, v8 + 3);
    v9 = *(a1[11] + 8);
    v10 = *(a1[12] + 8);
    v29 = &v28;
    v11 = sub_276345408((v10 + 48), &v28);
    sub_27627D7DC(v9 + 48, v11 + 3);
    v12 = a1[4];
    v13 = a1[5];
    v18 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v14, v15, v16, v17, v28);
    v23 = objc_msgSend_objectForKeyedSubscript_(v13, v19, v20, v21, v22, v18);
    objc_msgSend_addObject_(v12, v24, v25, v26, v27, v23);

    ++*(*(a1[13] + 8) + 24);
  }
}

void sub_276353C54()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47B08;
  qword_280A47B08 = v0;
}

void sub_2763542F4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2763543B8(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A47B18;
  qword_280A47B18 = v2;

  v4 = qword_280A47B18;
  v25.receiver = *(a1 + 32);
  v25.super_class = TSCHChartFeaturePieFamily;
  v5 = objc_msgSendSuper2(&v25, sel_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);

  v10 = qword_280A47B18;
  v15 = objc_msgSend_chartType(*(a1 + 32), v11, v12, v13, v14);
  v20 = objc_msgSend_g_genericToSpecificPropertyMapPie(v15, v16, v17, v18, v19);
  objc_msgSend_applyFromIntToIntDictionary_(v10, v21, v22, v23, v24, v20);
}

void sub_276354474(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_276354BC8(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A47B28;
  qword_280A47B28 = v2;

  v4 = qword_280A47B28;
  v25.receiver = *(a1 + 32);
  v25.super_class = TSCHChartFeatureDonut;
  v5 = objc_msgSendSuper2(&v25, sel_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);

  v10 = qword_280A47B28;
  v15 = objc_msgSend_chartType(*(a1 + 32), v11, v12, v13, v14);
  v20 = objc_msgSend_g_genericToSpecificPropertyMapDonut(v15, v16, v17, v18, v19);
  objc_msgSend_applyFromIntToIntDictionary_(v10, v21, v22, v23, v24, v20);
}

void sub_276354C84(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_276354E68(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_276355320(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_276355524(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A47B38;
  qword_280A47B38 = v2;

  v4 = qword_280A47B38;
  v25.receiver = *(a1 + 32);
  v25.super_class = TSCHChartFeatureBar;
  v5 = objc_msgSendSuper2(&v25, sel_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);

  v10 = qword_280A47B38;
  v15 = objc_msgSend_chartType(*(a1 + 32), v11, v12, v13, v14);
  v20 = objc_msgSend_g_genericToSpecificPropertyMapBar(v15, v16, v17, v18, v19);
  objc_msgSend_applyFromIntToIntDictionary_(v10, v21, v22, v23, v24, v20);
}

void sub_2763555E0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_276355A8C(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A47B48;
  qword_280A47B48 = v2;

  v4 = qword_280A47B48;
  v25.receiver = *(a1 + 32);
  v25.super_class = TSCHChartFeatureColumn;
  v5 = objc_msgSendSuper2(&v25, sel_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);

  v10 = qword_280A47B48;
  v15 = objc_msgSend_chartType(*(a1 + 32), v11, v12, v13, v14);
  v20 = objc_msgSend_g_genericToSpecificPropertyMapColumn(v15, v16, v17, v18, v19);
  objc_msgSend_applyFromIntToIntDictionary_(v10, v21, v22, v23, v24, v20);
}

void sub_276355B48(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_276355EB0(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A47B58;
  qword_280A47B58 = v2;

  v4 = qword_280A47B58;
  v25.receiver = *(a1 + 32);
  v25.super_class = TSCHChartFeatureLine;
  v5 = objc_msgSendSuper2(&v25, sel_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);

  v10 = qword_280A47B58;
  v15 = objc_msgSend_chartType(*(a1 + 32), v11, v12, v13, v14);
  v20 = objc_msgSend_g_genericToSpecificPropertyMapLine(v15, v16, v17, v18, v19);
  objc_msgSend_applyFromIntToIntDictionary_(v10, v21, v22, v23, v24, v20);
}

void sub_276355F6C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_27635627C(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A47B68;
  qword_280A47B68 = v2;

  v4 = qword_280A47B68;
  v25.receiver = *(a1 + 32);
  v25.super_class = TSCHChartFeatureArea;
  v5 = objc_msgSendSuper2(&v25, sel_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);

  v10 = qword_280A47B68;
  v15 = objc_msgSend_chartType(*(a1 + 32), v11, v12, v13, v14);
  v20 = objc_msgSend_g_genericToSpecificPropertyMapArea(v15, v16, v17, v18, v19);
  objc_msgSend_applyFromIntToIntDictionary_(v10, v21, v22, v23, v24, v20);
}

void sub_276356338(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_276356578(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2763567B0(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A47B78;
  qword_280A47B78 = v2;

  v4 = qword_280A47B78;
  v25.receiver = *(a1 + 32);
  v25.super_class = TSCHChartFeatureScatter;
  v5 = objc_msgSendSuper2(&v25, sel_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);

  v10 = qword_280A47B78;
  v15 = objc_msgSend_chartType(*(a1 + 32), v11, v12, v13, v14);
  v20 = objc_msgSend_g_genericToSpecificPropertyMapScatter(v15, v16, v17, v18, v19);
  objc_msgSend_applyFromIntToIntDictionary_(v10, v21, v22, v23, v24, v20);
}

void sub_27635686C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_276356E20(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A47B88;
  qword_280A47B88 = v2;

  v4 = qword_280A47B88;
  v25.receiver = *(a1 + 32);
  v25.super_class = TSCHChartFeatureStackedColumn;
  v5 = objc_msgSendSuper2(&v25, sel_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);

  v10 = qword_280A47B88;
  v15 = objc_msgSend_chartType(*(a1 + 32), v11, v12, v13, v14);
  v20 = objc_msgSend_g_genericToSpecificPropertyMapStackedColumn(v15, v16, v17, v18, v19);
  objc_msgSend_applyFromIntToIntDictionary_(v10, v21, v22, v23, v24, v20);
}

void sub_276356EDC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_276357184(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A47B98;
  qword_280A47B98 = v2;

  v4 = qword_280A47B98;
  v25.receiver = *(a1 + 32);
  v25.super_class = TSCHChartFeatureStackedBar;
  v5 = objc_msgSendSuper2(&v25, sel_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);

  v10 = qword_280A47B98;
  v15 = objc_msgSend_chartType(*(a1 + 32), v11, v12, v13, v14);
  v20 = objc_msgSend_g_genericToSpecificPropertyMapStackedBar(v15, v16, v17, v18, v19);
  objc_msgSend_applyFromIntToIntDictionary_(v10, v21, v22, v23, v24, v20);
}

void sub_276357240(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2763574E0(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A47BA8;
  qword_280A47BA8 = v2;

  v4 = qword_280A47BA8;
  v25.receiver = *(a1 + 32);
  v25.super_class = TSCHChartFeatureStackedArea;
  v5 = objc_msgSendSuper2(&v25, sel_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);

  v10 = qword_280A47BA8;
  v15 = objc_msgSend_chartType(*(a1 + 32), v11, v12, v13, v14);
  v20 = objc_msgSend_g_genericToSpecificPropertyMapStackedArea(v15, v16, v17, v18, v19);
  objc_msgSend_applyFromIntToIntDictionary_(v10, v21, v22, v23, v24, v20);
}

void sub_27635759C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_276357844(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A47BB8;
  qword_280A47BB8 = v2;

  v4 = qword_280A47BB8;
  v25.receiver = *(a1 + 32);
  v25.super_class = TSCHChartFeatureMixed;
  v5 = objc_msgSendSuper2(&v25, sel_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);

  v10 = qword_280A47BB8;
  v15 = objc_msgSend_chartType(*(a1 + 32), v11, v12, v13, v14);
  v20 = objc_msgSend_g_genericToSpecificPropertyMapMixed(v15, v16, v17, v18, v19);
  objc_msgSend_applyFromIntToIntDictionary_(v10, v21, v22, v23, v24, v20);
}

void sub_276357900(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_276357E48(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A47BC8;
  qword_280A47BC8 = v2;

  v4 = qword_280A47BC8;
  v25.receiver = *(a1 + 32);
  v25.super_class = TSCHChartFeatureTwoAxis;
  v5 = objc_msgSendSuper2(&v25, sel_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);

  v10 = qword_280A47BC8;
  v15 = objc_msgSend_chartType(*(a1 + 32), v11, v12, v13, v14);
  v20 = objc_msgSend_g_genericToSpecificPropertyMapTwoAxis(v15, v16, v17, v18, v19);
  objc_msgSend_applyFromIntToIntDictionary_(v10, v21, v22, v23, v24, v20);
}

void sub_276357F04(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2763583C8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_276358648(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A47BD8;
  qword_280A47BD8 = v2;

  v4 = qword_280A47BD8;
  v25.receiver = *(a1 + 32);
  v25.super_class = TSCHChartFeatureBubble;
  v5 = objc_msgSendSuper2(&v25, sel_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);

  v10 = qword_280A47BD8;
  v15 = objc_msgSend_chartType(*(a1 + 32), v11, v12, v13, v14);
  v20 = objc_msgSend_g_genericToSpecificPropertyMapBubble(v15, v16, v17, v18, v19);
  objc_msgSend_applyFromIntToIntDictionary_(v10, v21, v22, v23, v24, v20);
}

void sub_276358704(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_276358D1C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_27635949C()
{
  v0 = [TSCH3DShaderVariable alloc];
  v5 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v0, v1, v2, v3, v4, @"BlurTexCoord", @"vec2", @"mediump", 8, 3, 0, 0);
  v6 = qword_280A47BF0;
  v26 = v5;
  qword_280A47BF0 = v5;

  if (!qword_280A47BF0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "+[TSCH3DOnePassBlurShaderEffect variableBlurTexCoord]_block_invoke");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFramebufferOnepassBlurPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 35, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }
}

void sub_276359650()
{
  v0 = [TSCH3DShaderVariable alloc];
  v5 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v0, v1, v2, v3, v4, @"PixelSize", @"vec2", @"mediump", 0, 3, 0, 0);
  v6 = qword_280A47C00;
  v26 = v5;
  qword_280A47C00 = v5;

  if (!qword_280A47C00)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "+[TSCH3DOnePassBlurShaderEffect variablePixelSize]_block_invoke");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFramebufferOnepassBlurPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 36, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }
}

void sub_276359C94(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_276359CC4(void *a1@<X0>, const char *a2@<X1>, void *a3@<X8>)
{
  v29 = a1;
  v9 = objc_msgSend_valueStateForKey_(v29, v5, v6, v7, v8, a2);

  if (!v9)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "T TSCH3D::AssertCTypeFromEffectsStates(TSCH3DShaderEffectsStates *__strong, __unsafe_unretained Class) [T = glm::detail::tvec2<float>]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffectsStates.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 104, 0, "invalid nil value for '%{public}s'", "[states valueStateForKey:key]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  sub_2761AC6E8(v29, a2, a3, v11, v12, v13);
}

void sub_276359F78(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_27635A61C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  __asm { FMOV            V0.4S, #1.0 }

  *a2 = _Q0;
  if (v3)
  {
    v31 = v3;
    objc_msgSend_redComponent(v3, v4, *&_Q0, v5, v6);
    v13 = v12;
    objc_msgSend_greenComponent(v31, v14, v12, v15, v16);
    v18 = v17;
    objc_msgSend_blueComponent(v31, v19, v17, v20, v21);
    v23 = v22;
    objc_msgSend_alphaComponent(v31, v24, v22, v25, v26);
    v27 = v13;
    v28 = v18;
    v29 = v23;
    *a2 = v27;
    *(a2 + 4) = v28;
    *&v30 = v30;
    *(a2 + 8) = v29;
    *(a2 + 12) = LODWORD(v30);
    v3 = v31;
  }
}

BOOL sub_27635A6DC(uint64_t a1, void *a2)
{
  v2 = a2;
  if ((objc_msgSend_isOpaque(v2, v3, v4, v5, v6) & 1) != 0 || ((objc_msgSend_fillSize(v2, v7, v8, v9, v10), v12.f64[1] = v11, v13 = vcvt_s32_f32(vcvt_f32_f64(v12)), v32 = vmin_s32(v13, 0x10000000100), v13.i32[0] >= 1) ? (v14 = v13.i32[1] < 1) : (v14 = 1), v14))
  {
    v15 = 0;
  }

  else
  {
    v29 = objc_opt_class();
    LOBYTE(v30) = 0;
    v16 = sub_2761D67F0(&v29, v2, &v32, 4);
    v21 = v16;
    if (v16)
    {
      objc_msgSend_dataAtLevel_(v16, v17, v18, v19, v20, 0);
    }

    else
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
    }

    sub_2761E72B0(&v29, v17, &v28, v18, v19, v20);
    v22 = SHIDWORD(v28) * SLODWORD(v28);
    if (v22 < 1)
    {
      v15 = 0;
    }

    else if (*(v29 + 3) == 255)
    {
      v23 = (v29 + 7);
      v24 = 1;
      do
      {
        v25 = v24;
        if (v22 == v24)
        {
          break;
        }

        v26 = *v23;
        v23 += 4;
        ++v24;
      }

      while (v26 == 255);
      v15 = v25 < v22;
    }

    else
    {
      v15 = 1;
    }
  }

  return v15;
}

void sub_27635AEB0(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_27635B144(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

uint64_t sub_27635BCB8(uint64_t result)
{
  if ((*(result + 12) & 1) == 0)
  {
    v1 = *(result + 8);
    if (v1 >= 5)
    {
      sub_27635C460("bitset set argument out of range");
    }

    **result |= 1 << v1;
  }

  return result;
}

void sub_27635C064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_27635BCB8(va);
  _Unwind_Resume(a1);
}

void sub_27635C460(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_27635C4BC(exception, a1);
  __cxa_throw(exception, off_27A6B6248, MEMORY[0x277D825F8]);
}

std::logic_error *sub_27635C4BC(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void sub_27635C4F0(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

id sub_27635C7DC(const char *a1, unint64_t a2, int a3, _DWORD *a4, uint64_t a5, double *a6, double a7, double a8, double a9)
{
  sub_27635CD94(v55, a1, a2, a7, a8, a9);
  v13 = sub_27635CA10(v55, a3);
  v50 = objc_msgSend_bufferWithCapacity_(TSCH3Dvec3DataBuffer, v14, v15, v16, v17, v13[1] - *v13);
  v23 = objc_msgSend_container(v50, v18, v19, v20, v21);
  v27 = a5 == 0;
  v28 = 1;
  if (!a5)
  {
    v28 = 2;
  }

  if (v28 == a5)
  {
    v29 = a5 + 1;
  }

  else
  {
    v29 = v28;
  }

  if (v29 == v27)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v24, v25, v26, "TSCH3Dvec3DataBuffer *TSCH3D::GenerateCircularBoundsDataBuffer(double, glm::drangecref, NSUInteger, BOOL, vec2cref, NSUInteger, dvec2cref)");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DCircularBoundsGenerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v37, v38, v39, v40, v31, v36, 84, 0, "invalid indices (%lu, %lu, %lu)", a5 == 0, a5 == 0, a5);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
  }

  v45 = *v13;
  if (*v13 != v13[1])
  {
    v46 = (&v53 | (4 * v27));
    do
    {
      v47 = *v45 + *a6;
      v48 = v45[1] + a6[1];
      v53 = 0;
      v54 = 0;
      *v46 = v47;
      *(&v53 + v29) = v48;
      *(&v53 + a5) = *a4;
      sub_27618F4B4(v23, &v53);
      v51 = v53;
      v52 = v54;
      *(&v51 + a5) = a4[1];
      sub_27618F4B4(v23, &v51);
      v45 += 2;
    }

    while (v45 != v13[1]);
  }

  if (__p)
  {
    v57 = __p;
    operator delete(__p);
  }

  return v50;
}

void sub_27635C9BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_27635CA10(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  v71 = (a1 + 40);
  *(a1 + 48) = v3;
  if (a2)
  {
    v4 = __sincos_stret(*(a1 + 8) + *(a1 + 16) * (0.0 / *(a1 + 24)));
    v5 = v4.__sinval * *a1;
    v6 = *a1 * v4.__cosval;
    *&__p = v5;
    v73 = v6;
    if (v3 >= *(a1 + 56))
    {
      v7 = sub_27635CFD0(v71, &__p);
    }

    else
    {
      *v3 = v5;
      v3[1] = v6;
      v7 = v3 + 2;
    }

    *(a1 + 48) = v7;
    v8 = __sincos_stret(*(a1 + 8) + *(a1 + 16) * (*(a1 + 24) / *(a1 + 24)));
    v9 = v8.__sinval * *a1;
    v10 = *a1 * v8.__cosval;
    *&__p = v9;
    v73 = v10;
    if (v7 >= *(a1 + 56))
    {
      v3 = sub_27635CFD0(v71, &__p);
    }

    else
    {
      *v7 = v9;
      v7[1] = v73;
      v3 = v7 + 2;
    }

    *(a1 + 48) = v3;
  }

  v11 = 0;
  v12 = *(a1 + 24);
  do
  {
    v13 = v12;
    v14 = *(a1 + 8);
    v15 = *(a1 + 16);
    v16 = __sincos_stret(v14 + v15 * (v11 / v12));
    v17 = *a1;
    v18 = *a1 * v16.__sinval;
    v19 = *a1 * v16.__cosval;
    v21 = __sincos_stret(v14 + v15 * (++v11 / v13));
    v22 = v17 * v21.__sinval;
    v23 = v17 * v21.__cosval;
    v24 = (v18 + v22) * 0.5;
    v25 = (v19 + v23) * 0.5;
    v26 = v25 * v25 + v24 * v24;
    v27 = sqrt(v26);
    if (v27 <= 2.22044605e-16)
    {
      v28 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v26, v19 + v23, 0.5, "const Points &TSCH3D::CircularBoundsGenerator::generateIncludingEndPoints(BOOL)");
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DCircularBoundsGenerator.mm");
      v35 = MEMORY[0x277CCACA8];
      sub_276152FD4("dvec2(%f, %f)", v36, v37, v38, v39, v40, v41, v42, SLOBYTE(v18));
      if (v74 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v35, v43, v44, v45, v46, &__p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v35, v43, v44, v45, v46, __p);
      }
      v54 = ;
      if (v74 < 0)
      {
        operator delete(__p);
      }

      v55 = MEMORY[0x277CCACA8];
      sub_276152FD4("dvec2(%f, %f)", v47, v48, v49, v50, v51, v52, v53, SLOBYTE(v22));
      if (v74 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v55, v56, v57, v58, v59, &__p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v55, v56, v57, v58, v59, __p);
      }
      v61 = ;
      if (v74 < 0)
      {
        operator delete(__p);
      }

      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v60, v62, v63, v64, v29, v34, 51, 0, "invalid zero length for points %@ %@", v54, v61);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66, v67, v68);
      v3 = *(a1 + 48);
    }

    v69 = v27 + *(a1 + 32);
    *&__p = v24 / v27 * v69;
    v73 = v25 / v27 * v69;
    if (v3 >= *(a1 + 56))
    {
      v3 = sub_27635D174(v71, &__p);
    }

    else
    {
      *v3 = v24 / v27 * v69;
      v3[1] = v73;
      v3 += 2;
    }

    *(a1 + 48) = v3;
    v12 = *(a1 + 24);
  }

  while (v11 <= v12 - 1);
  return v71;
}

uint64_t sub_27635CD94(uint64_t a1, const char *a2, unint64_t a3, double a4, double a5, double a6)
{
  *a1 = a4;
  v7 = *a2;
  *(a1 + 40) = 0;
  *(a1 + 8) = v7;
  *(a1 + 24) = a3;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  if (!a3)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, *&v7, a5, a6, "TSCH3D::CircularBoundsGenerator::CircularBoundsGenerator(double, glm::drangecref, NSUInteger)");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DCircularBoundsGenerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 29, 0, "invalid steps %lu", *(a1 + 24));

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    a3 = *(a1 + 24);
  }

  v23 = *(a1 + 16);
  v24 = a3;
  v25 = v23 / a3;
  if (v25 > 1.57079633)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, *&v7, a5, a6, "TSCH3D::CircularBoundsGenerator::CircularBoundsGenerator(double, glm::drangecref, NSUInteger)");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DCircularBoundsGenerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v34, v35, v36, v27, v32, 31, 0, "step angle exceeds 90 degrees %f", *&v25);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
    v23 = *(a1 + 16);
    v24 = *(a1 + 24);
  }

  v41 = *(a1 + 8);
  v42 = __sincos_stret(v41 + v23 * (1.0 / v24));
  v43 = *a1;
  v44 = *a1 * v42.__sinval;
  v45 = *a1 * v42.__cosval;
  v46 = __sincos_stret(v41 + v23 * (0.0 / v24));
  *(a1 + 32) = tan(1.57079633 - (3.14159265 - v25) * 0.5) * (sqrt((v45 - v43 * v46.__cosval) * (v45 - v43 * v46.__cosval) + (v44 - v43 * v46.__sinval) * (v44 - v43 * v46.__sinval)) * 0.5);
  return a1;
}

void sub_27635CF90(_Unwind_Exception *a1)
{
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 48) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27635CFD0(void *a1, void *a2)
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
  v13 = 16 * v2 + 16;
  sub_27635D0FC(a1, &__p);
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

void sub_27635D0C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27635D0FC(uint64_t result, void *a2)
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

uint64_t sub_27635D174(void *a1, void *a2)
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
  v13 = 16 * v2 + 16;
  sub_27635D0FC(a1, &__p);
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

void sub_27635D268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27635E6B8(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v13 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a5, a1, a2, a3);
  if ((objc_msgSend_BOOLForKey_(v13, v5, v6, v7, v8, @"kTSCHBackgroundChartConversionKey") & 1) == 0)
  {
    objc_msgSend_setBool_forKey_(v13, v9, v10, v11, v12, 1, @"kTSCHBackgroundChartConversionKey");
  }
}

uint64_t sub_27635F98C(unint64_t a1, const char *a2, double a3, double a4, double a5)
{
  if (!a1)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "NSUInteger p_adjustedGridSizeFromSize(NSUInteger)");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHGridPartitioner.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 22, 0, "require nonzero target grid size");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  if (a1 <= 1)
  {
    return 1;
  }

  else
  {
    return a1;
  }
}

double sub_27635FB94@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_2764D70C8;
  *(a1 + 16) = 2;
  return result;
}

__n128 sub_27635FBB0@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  a2->n128_u32[0] = 16843009;
  return result;
}

__n128 sub_27635FBCC@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  a2->n128_u32[0] = 0;
  return result;
}

void sub_276360A18(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

void sub_2763639B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2763639F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276363A0C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    if (a4)
    {
      *a4 = 1;
    }
  }
}

void sub_276363C80(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

BOOL sub_276363CAC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v9 = objc_msgSend_rowRange(v3, v5, v6, v7, v8);
  v11 = v10;
  v19 = 0;
  if (v9 == objc_msgSend_rowRange(v4, v10, v12, v13, v14) && v11 == v15)
  {
    v20 = objc_msgSend_columnRange(v3, v15, v16, v17, v18);
    v22 = v21;
    v19 = v20 == objc_msgSend_columnRange(v4, v21, v23, v24, v25) && v22 == v26;
  }

  return v19;
}

void sub_2763645E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_276365000(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v15 = objc_msgSend_mutableCopyWithZone_(a3, v7, v8, v9, v10, v5);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v11, v12, v13, v14, v15, v6);
}

void sub_276365D28(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 32);
  v10 = objc_msgSend_pairWithStyle_property_(TSCHStyleAndPropertyPair, a2, a3, a4, a5, *(a1 + 40), a2);
  objc_msgSend_addObject_(v5, v6, v7, v8, v9, v10);
}

void sub_2763677A4(uint64_t a1, const char *a2, _BYTE *a3, double a4, double a5, double a6)
{
  v9 = objc_msgSend_intValueForMUXedProperty_(*(a1 + 32), a2, a4, a5, a6, a2);
  v14 = objc_msgSend_intValueForMUXedProperty_(*(a1 + 40), v10, v11, v12, v13, a2);
  if (v9 == 0x80000000 || v14 == 0x80000000)
  {
    if (v9 != 0x80000000 && v14 == 0x80000000)
    {
      *(*(*(a1 + 72) + 8) + 24) = 0;
      *a3 = 1;
    }
  }

  else
  {
    v21 = v14;
    v22 = objc_msgSend_paragraphStyles(*(a1 + 48), v15, v16, v17, v18);
    v27 = objc_msgSend_count(v22, v23, v24, v25, v26);

    if (v27 <= v9)
    {
      v32 = MEMORY[0x277D81150];
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "[TSCHChartStyleState otherStateIsEquivalent:ignoringSeriesThemeStyles:]_block_invoke");
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v39, v40, v41, v42, v33, v38, 472, 0, "Index out of range");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
    }

    v47 = v9;
    v48 = objc_msgSend_paragraphStyles(*(a1 + 56), v28, v29, v30, v31);
    v53 = objc_msgSend_count(v48, v49, v50, v51, v52);

    if (v53 <= v21)
    {
      v58 = MEMORY[0x277D81150];
      v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, v55, v56, v57, "[TSCHChartStyleState otherStateIsEquivalent:ignoringSeriesThemeStyles:]_block_invoke");
      v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, v61, v62, v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v65, v66, v67, v68, v59, v64, 473, 0, "Index out of range");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70, v71, v72);
    }

    v73 = objc_msgSend_paragraphStyles(*(a1 + 64), v54, v55, v56, v57);
    v78 = objc_msgSend_count(v73, v74, v75, v76, v77);
    v83 = objc_msgSend_paragraphStyles(*(a1 + 48), v79, v80, v81, v82);
    v88 = v83;
    if (v78 <= v47)
    {
      objc_msgSend_objectAtIndexedSubscript_(v83, v84, v85, v86, v87, 0);
    }

    else
    {
      objc_msgSend_objectAtIndexedSubscript_(v83, v84, v85, v86, v87, v47);
    }
    v188 = ;

    v93 = objc_msgSend_paragraphStyles(*(a1 + 56), v89, v90, v91, v92);
    if (objc_msgSend_count(v93, v94, v95, v96, v97) <= v21)
    {
      v102 = 0;
    }

    else
    {
      v102 = v21;
    }

    v103 = objc_msgSend_paragraphStyles(*(a1 + 56), v98, v99, v100, v101);
    v108 = objc_msgSend_objectAtIndexedSubscript_(v103, v104, v105, v106, v107, v102);

    v109 = objc_opt_class();
    v110 = sub_2762CD788(v109, v188);

    if (!v110)
    {
      v115 = MEMORY[0x277D81150];
      v116 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v111, v112, v113, v114, "[TSCHChartStyleState otherStateIsEquivalent:ignoringSeriesThemeStyles:]_block_invoke");
      v121 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v117, v118, v119, v120, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v115, v122, v123, v124, v125, v116, v121, 478, 0, "invalid nil value for '%{public}s'", "TSCHCheckedCastAsTSSStyleClass(selfParaStyle)");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v126, v127, v128, v129);
    }

    v130 = objc_opt_class();
    v131 = sub_2762CD788(v130, v108);

    if (!v131)
    {
      v136 = MEMORY[0x277D81150];
      v137 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v132, v133, v134, v135, "[TSCHChartStyleState otherStateIsEquivalent:ignoringSeriesThemeStyles:]_block_invoke");
      v142 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v138, v139, v140, v141, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v136, v143, v144, v145, v146, v137, v142, 479, 0, "invalid nil value for '%{public}s'", "TSCHCheckedCastAsTSSStyleClass(otherParaStyle)");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v147, v148, v149, v150);
    }

    v152 = objc_msgSend_propertyMap(v188, v132, v133, v134, v135);
    if (!v152)
    {
      v152 = objc_msgSend_propertyMap(MEMORY[0x277D80AB8], v151, v153, v154, v155);
    }

    v157 = objc_msgSend_propertyMap(v108, v151, v153, v154, v155);
    if (!v157)
    {
      v157 = objc_msgSend_propertyMap(MEMORY[0x277D80AB8], v156, v158, v159, v160);
    }

    v161 = objc_msgSend_allProperties(v152, v156, v158, v159, v160);
    objc_msgSend_filterWithProperties_(v157, v162, v163, v164, v165, v161);

    v170 = objc_msgSend_paragraphStylePropertiesChartsUse(TSCHChartInfo, v166, v167, v168, v169);
    objc_msgSend_filterWithProperties_(v152, v171, v172, v173, v174, v170);

    v179 = objc_msgSend_paragraphStylePropertiesChartsUse(TSCHChartInfo, v175, v176, v177, v178);
    objc_msgSend_filterWithProperties_(v157, v180, v181, v182, v183, v179);

    if ((objc_msgSend_isEqual_(v152, v184, v185, v186, v187, v157) & 1) == 0)
    {
      *(*(*(a1 + 72) + 8) + 24) = 0;
      *a3 = 1;
    }
  }
}

void sub_2763681B4(uint64_t a1, void *a2)
{
  v50 = a2;
  v7 = objc_msgSend_referenceLineStyles(*(a1 + 32), v3, v4, v5, v6);
  v12 = objc_msgSend_objectForKeyedSubscript_(v7, v8, v9, v10, v11, v50);

  v17 = objc_msgSend_count(v12, v13, v14, v15, v16);
  if (!*(a1 + 40))
  {
    v24 = 0;
    goto LABEL_16;
  }

  v22 = v17;
  v23 = 0;
  v24 = 0;
  do
  {
    if (v23 >= v22)
    {
      if (!v24)
      {
        v24 = objc_msgSend_mutableCopy(v12, v18, v19, v20, v21);
      }

      v36 = objc_msgSend_referenceLineThemeStyle(*(a1 + 32), v18, v19, v20, v21);
      objc_msgSend_addObject_(v24, v41, v42, v43, v44, v36);
    }

    else
    {
      v25 = objc_msgSend_null(MEMORY[0x277CBEB68], v18, v19, v20, v21);
      v30 = objc_msgSend_objectAtIndexedSubscript_(v12, v26, v27, v28, v29, v23);
      isEqual = objc_msgSend_isEqual_(v25, v31, v32, v33, v34, v30);

      if (!isEqual)
      {
        goto LABEL_12;
      }

      if (!v24)
      {
        v24 = objc_msgSend_mutableCopy(v12, v18, v19, v20, v21);
      }

      v36 = objc_msgSend_referenceLineThemeStyle(*(a1 + 32), v18, v19, v20, v21);
      objc_msgSend_replaceObjectAtIndex_withObject_(v24, v37, v38, v39, v40, v23, v36);
    }

LABEL_12:
    ++v23;
  }

  while (v23 < *(a1 + 40));
  if (v24)
  {
    v45 = objc_msgSend_referenceLineStyles(*(a1 + 32), v18, v19, v20, v21);
    objc_msgSend_setObject_forKeyedSubscript_(v45, v46, v47, v48, v49, v24, v50);
  }

LABEL_16:
}

BOOL sub_27636877C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v8 = objc_msgSend_referenceLineThemeStyle(v2, v4, v5, v6, v7);

  return v8 == v3;
}

void sub_2763687D0(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = *(a1 + 32);
  v11 = objc_msgSend_null(MEMORY[0x277CBEB68], a2, a3, a4, a5);
  objc_msgSend_replaceObjectAtIndex_withObject_(v6, v7, v8, v9, v10, a2, v11);
}

void sub_276368C74(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = *(a1 + 32);
    v10 = objc_msgSend_styleSemanticTagWithType_index_(TSCHStyleSemanticTag, v5, v6, v7, v8, 5, a3);
    objc_msgSend_setObject_forKey_(v9, v11, v12, v13, v14, v15, v10);
  }
}

void sub_276368D0C(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = *(a1 + 32);
    v10 = objc_msgSend_styleSemanticTagWithType_index_(TSCHStyleSemanticTag, v5, v6, v7, v8, 7, a3);
    objc_msgSend_setObject_forKey_(v9, v11, v12, v13, v14, v15, v10);
  }
}

void sub_276368DA4(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = *(a1 + 32);
    v10 = objc_msgSend_styleSemanticTagWithType_index_(TSCHStyleSemanticTag, v5, v6, v7, v8, 9, a3);
    objc_msgSend_setObject_forKey_(v9, v11, v12, v13, v14, v15, v10);
  }
}

void sub_276368E3C(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = *(a1 + 32);
    v10 = objc_msgSend_styleSemanticTagWithType_index_(TSCHStyleSemanticTag, v5, v6, v7, v8, 10, a3);
    objc_msgSend_setObject_forKey_(v9, v11, v12, v13, v14, v15, v10);
  }
}

void sub_276368ED4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_276368F8C;
  v11[3] = &unk_27A6B9F30;
  v12 = v5;
  v13 = *(a1 + 32);
  v6 = v5;
  objc_msgSend_enumerateObjectsUsingBlock_(a3, v7, v8, v9, v10, v11);
}

void sub_276368F8C(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_msgSend_styleSwapOrStyleOwnerIndexFromAxisID_refLineIndex_(TSCHReferenceLine, v5, v6, v7, v8, *(a1 + 32), a3);
    v10 = *(a1 + 40);
    v15 = objc_msgSend_styleSemanticTagWithType_index_(TSCHStyleSemanticTag, v11, v12, v13, v14, 13, v9);
    objc_msgSend_setObject_forKey_(v10, v16, v17, v18, v19, v20, v15);
  }
}

void sub_2763690FC(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = objc_opt_class();
  v16 = objc_msgSend_tsu_objectForKey_withDefaultOfClass_(v4, v8, v9, v10, v11, v5, v7);

  objc_msgSend_addObject_(v16, v12, v13, v14, v15, v6);
}

void sub_276369428(uint64_t a1, const char *a2, _BYTE *a3, double a4, double a5, double a6)
{
  if (objc_msgSend_intValueForMUXedProperty_(*(a1 + 32), a2, a4, a5, a6, a2) != 0x80000000)
  {
    v13 = objc_msgSend_pairWithSemanticTag_property_(TSCHSemanticTagAndPropertyPair, v9, v10, v11, v12, *(a1 + 40), a2);
    (*(*(a1 + 48) + 16))();
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

void sub_2763695C0(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  v86 = a2;
  v8 = a3;
  v12 = *(a1 + 32);
  if (!v12 || objc_msgSend_containsObject_(v12, v7, v9, v10, v11, v8))
  {
    v13 = objc_msgSend_paragraphStyles(*(a1 + 40), v7, v9, v10, v11);
    v18 = objc_msgSend_count(v13, v14, v15, v16, v17);

    if (v18 <= a4)
    {
      v33 = MEMORY[0x277D81150];
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "[TSCHChartStyleState semanticUsagesToParagraphStyleMapWithPropertySetType:filteredBySemanticUsages:]_block_invoke");
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
      v44 = objc_msgSend_paragraphStyles(*(a1 + 40), v40, v41, v42, v43);
      v49 = objc_msgSend_count(v44, v45, v46, v47, v48);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v50, v51, v52, v53, v34, v39, 782, 0, "Paragraph style index out of range %lu count %lu", a4, v49);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57);
      objc_opt_class();
      v27 = objc_msgSend_paragraphStyles(*(a1 + 40), v58, v59, v60, v61);
      objc_msgSend_firstObject(v27, v62, v63, v64, v65);
    }

    else
    {
      objc_opt_class();
      v27 = objc_msgSend_paragraphStyles(*(a1 + 40), v23, v24, v25, v26);
      objc_msgSend_tsu_rangeCheckedObjectAtIndex_(v27, v28, v29, v30, v31, a4);
    }
    v32 = ;
    v66 = TSUCheckedDynamicCast();

    if (v66)
    {
      objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 48), v67, v68, v69, v70, v66, v8);
    }

    else
    {
      v71 = MEMORY[0x277D81150];
      v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, v68, v69, v70, "[TSCHChartStyleState semanticUsagesToParagraphStyleMapWithPropertySetType:filteredBySemanticUsages:]_block_invoke");
      v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, v74, v75, v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v71, v78, v79, v80, v81, v72, v77, 784, 0, "invalid nil value for '%{public}s'", "paragraphStyle");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v82, v83, v84, v85);
    }
  }
}

void sub_27636ADC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v14 = objc_msgSend_mutableCopy(a3, v6, v7, v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v10, v11, v12, v13, v14, v5);
}

id sub_27636B508(uint64_t a1, void *a2, void *a3, unsigned int a4, void *a5)
{
  v7 = a2;
  v8 = a3;
  v9 = a5;
  v60 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11, v12, v13);
  v62 = v7;
  v18 = objc_msgSend_count(v7, v14, v15, v16, v17);
  v61 = v8;
  v23 = objc_msgSend_count(v8, v19, v20, v21, v22);
  if (v18 <= v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v18;
  }

  if (v24)
  {
    v25 = v23;
    v26 = 0;
    v57 = v9 + 16;
    do
    {
      v27 = objc_opt_class();
      v32 = v27;
      if (v26 >= v18)
      {
        v34 = sub_2762CD788(v27, 0);
      }

      else
      {
        v33 = objc_msgSend_objectAtIndexedSubscript_(v62, v28, v29, v30, v31, v26);
        v34 = sub_2762CD788(v32, v33);
      }

      v35 = objc_opt_class();
      v40 = v35;
      if (v26 >= v25)
      {
        v42 = sub_2762CD788(v35, 0);
      }

      else
      {
        v41 = objc_msgSend_objectAtIndexedSubscript_(v61, v36, v37, v38, v39, v26);
        v42 = sub_2762CD788(v40, v41);
      }

      if (v34 | v42)
      {
        v43 = v34 == v42;
      }

      else
      {
        v43 = 1;
      }

      if (!v43)
      {
        v45 = [TSCHStyleSwapUndoTuple alloc];
        v49 = *(a1 + 32);
        v50 = v26;
        if (v9)
        {
          v50 = (*(v9 + 2))(v9, v26);
        }

        v51 = objc_msgSend_initWithChartInfo_swapType_index_oldValue_newValue_(v45, v44, v46, v47, v48, v49, a4, v50, v34, v42, v57);
        objc_msgSend_addObject_(v60, v52, v53, v54, v55, v51);
      }

      ++v26;
    }

    while (v24 != v26);
  }

  return v60;
}

BOOL sub_27636B73C(uint64_t a1, void *a2)
{
  v2 = a2;
  v7 = objc_msgSend_beforeValue(v2, v3, v4, v5, v6);
  v12 = objc_msgSend_afterValue(v2, v8, v9, v10, v11);

  return v7 == v12;
}

void sub_27636B9DC()
{
  v0 = [TSCH3DShaderVariable alloc];
  v5 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v0, v1, v2, v3, v4, @"Accum", @"vec4", @"mediump", 0, 3, 0, 0);
  v6 = qword_280A47C60;
  v26 = v5;
  qword_280A47C60 = v5;

  if (!qword_280A47C60)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "+[TSCH3DGaussianBlurShaderEffect variableAccum]_block_invoke");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFramebufferGaussianBlurPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 45, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }
}

void sub_27636BB90()
{
  v0 = [TSCH3DShaderVariable alloc];
  v5 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v0, v1, v2, v3, v4, @"TapUnit", @"vec2", @"mediump", 0, 3, 0, 0);
  v6 = qword_280A47C70;
  v26 = v5;
  qword_280A47C70 = v5;

  if (!qword_280A47C70)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "+[TSCH3DGaussianBlurShaderEffect variableTapUnit]_block_invoke");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFramebufferGaussianBlurPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 46, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }
}

void sub_27636C31C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_27636C4AC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_27636C588(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_27636D274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  for (i = 8; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_27636D804(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v37[6] = *MEMORY[0x277D85DE8];
  LODWORD(a2) = 1.0;
  v5 = objc_msgSend_paramsWithQuality_numPasses_shadowSize_kernelScale_(TSCH3DChartShadowsBlurParameters, a5, 0.0, a2, a3, 1, 80);
  v37[0] = v5;
  LODWORD(v6) = 1028443341;
  LODWORD(v7) = 1.0;
  v10 = objc_msgSend_paramsWithQuality_numPasses_shadowSize_kernelScale_(TSCH3DChartShadowsBlurParameters, v8, v6, v7, v9, 4, 77);
  v37[1] = v10;
  LODWORD(v11) = 1036831949;
  LODWORD(v12) = 1.0;
  v15 = objc_msgSend_paramsWithQuality_numPasses_shadowSize_kernelScale_(TSCH3DChartShadowsBlurParameters, v13, v11, v12, v14, 5, 72);
  v37[2] = v15;
  LODWORD(v16) = 1045220557;
  LODWORD(v17) = 1.0;
  v20 = objc_msgSend_paramsWithQuality_numPasses_shadowSize_kernelScale_(TSCH3DChartShadowsBlurParameters, v18, v16, v17, v19, 8, 62);
  v37[3] = v20;
  LODWORD(v21) = 0.5;
  LODWORD(v22) = 1.0;
  v25 = objc_msgSend_paramsWithQuality_numPasses_shadowSize_kernelScale_(TSCH3DChartShadowsBlurParameters, v23, v21, v22, v24, 15, 32);
  v37[4] = v25;
  LODWORD(v26) = 1.0;
  LODWORD(v27) = 1.0;
  v30 = objc_msgSend_paramsWithQuality_numPasses_shadowSize_kernelScale_(TSCH3DChartShadowsBlurParameters, v28, v26, v27, v29, 28, 16);
  v37[5] = v30;
  v35 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v31, v32, v33, v34, v37, 6);
  v36 = qword_280A47C80;
  qword_280A47C80 = v35;
}

void sub_27636D98C(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_27636DA28(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v37[6] = *MEMORY[0x277D85DE8];
  LODWORD(a2) = 1.0;
  v5 = objc_msgSend_paramsWithQuality_numPasses_shadowSize_kernelScale_(TSCH3DChartShadowsBlurParameters, a5, 0.0, a2, a3, 1, 600);
  v37[0] = v5;
  LODWORD(v6) = 1028443341;
  LODWORD(v7) = 1.0;
  v10 = objc_msgSend_paramsWithQuality_numPasses_shadowSize_kernelScale_(TSCH3DChartShadowsBlurParameters, v8, v6, v7, v9, 10, 500);
  v37[1] = v10;
  LODWORD(v11) = 1036831949;
  LODWORD(v12) = 1.0;
  v15 = objc_msgSend_paramsWithQuality_numPasses_shadowSize_kernelScale_(TSCH3DChartShadowsBlurParameters, v13, v11, v12, v14, 6, 200);
  v37[2] = v15;
  LODWORD(v16) = 1045220557;
  LODWORD(v17) = 1.0;
  v20 = objc_msgSend_paramsWithQuality_numPasses_shadowSize_kernelScale_(TSCH3DChartShadowsBlurParameters, v18, v16, v17, v19, 8, 160);
  v37[3] = v20;
  LODWORD(v21) = 0.5;
  LODWORD(v22) = 1.0;
  v25 = objc_msgSend_paramsWithQuality_numPasses_shadowSize_kernelScale_(TSCH3DChartShadowsBlurParameters, v23, v21, v22, v24, 15, 100);
  v37[4] = v25;
  LODWORD(v26) = 1.0;
  LODWORD(v27) = 1.0;
  v30 = objc_msgSend_paramsWithQuality_numPasses_shadowSize_kernelScale_(TSCH3DChartShadowsBlurParameters, v28, v26, v27, v29, 28, 60);
  v37[5] = v30;
  v35 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v31, v32, v33, v34, v37, 6);
  v36 = qword_280A47C90;
  qword_280A47C90 = v35;
}

void sub_27636DBB0(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_27636DE08(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_27636F3BC(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend__singletonAlloc(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_init(v6, v7, v8, v9, v10);
  v12 = qword_280A47CA0;
  qword_280A47CA0 = v11;

  if (!qword_280A47CA0)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "+[TSCH3DTextureBlendShaderEffect effect]_block_invoke");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTextureBlendShaderEffect.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 35, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    v32 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v32, v28, v29, v30, v31);
  }
}

void sub_27636F5C4()
{
  v0 = [TSCH3DShaderVariable alloc];
  v5 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v0, v1, v2, v3, v4, @"BlendFactor", @"float", @"mediump", 0, 3, 0, 0);
  v6 = qword_280A47CB0;
  v26 = v5;
  qword_280A47CB0 = v5;

  if (!qword_280A47CB0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "+[TSCH3DTextureBlendShaderEffect variableBlendFactor]_block_invoke");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTextureBlendShaderEffect.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 37, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }
}

void sub_27636F778()
{
  v0 = [TSCH3DShaderVariable alloc];
  v5 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v0, v1, v2, v3, v4, @"BlendTexture", @"sampler2D", @"lowp", 0, 3, 0, 0);
  v6 = qword_280A47CC0;
  v26 = v5;
  qword_280A47CC0 = v5;

  if (!qword_280A47CC0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "+[TSCH3DTextureBlendShaderEffect variableBlendTexture]_block_invoke");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTextureBlendShaderEffect.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 38, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }
}

void sub_27636F994(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_27636FBBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14)
{
  v20 = v18;

  _Unwind_Resume(a1);
}

void sub_2763706FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_276372940(&a37);

  _Unwind_Resume(a1);
}

uint64_t sub_276370790(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  if (a2 < 0 || *(a1 + 16) / 3 <= a2)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "Face TSCH3DMeshEdgeFinder::Mesh::faceAtIndex(NSInteger) const");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMeshEdgeFinder.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 86, 0, "face index out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  return a2;
}

void sub_27637086C(uint64_t **a1@<X0>, uint64_t *a2@<X1>, float *a3@<X8>, double a4@<D1>, double a5@<D2>)
{
  v33 = *a2;
  v32 = 0x100000000;
  v31[1] = v33;
  v31[0] = 0x200000000;
  v7 = sub_276371D68(a1, &v32, *a1, &v34, COERCE_DOUBLE(0x200000000), a4, a5);
  *&v7 = v37 - v34;
  *&v8 = v38 - v35;
  *&v9 = v39 - v36;
  v10 = ((*&v8 * *&v8) + (*&v7 * *&v7)) + (*&v9 * *&v9);
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  if (v10 > 0.00000011921)
  {
    v15 = 1.0 / sqrtf(v10);
    v12 = *&v7 * v15;
    v13 = *&v8 * v15;
    v14 = *&v9 * v15;
  }

  sub_276371D68(a1, v31, *a1, &v34, v7, v8, v9);
  v16 = v37 - v34;
  v17 = v38 - v35;
  v18 = v39 - v36;
  v19 = ((v17 * v17) + (v16 * v16)) + (v18 * v18);
  v20 = 0.0;
  v21 = 0.0;
  if (v19 > 0.00000011921)
  {
    v22 = 1.0 / sqrtf(v19);
    v11 = v16 * v22;
    v20 = v17 * v22;
    v21 = v18 * v22;
  }

  v23 = (v13 * v21) - (v20 * v14);
  v24 = (v14 * v11) - (v21 * v12);
  v25 = (v12 * v20) - (v11 * v13);
  v26 = ((v24 * v24) + (v23 * v23)) + (v25 * v25);
  v27 = 0.0;
  v28 = 0.0;
  v29 = 0.0;
  if (v26 > 0.00000011921)
  {
    v30 = 1.0 / sqrtf(v26);
    v27 = v23 * v30;
    v28 = v24 * v30;
    v29 = v25 * v30;
  }

  *a3 = v27;
  a3[1] = v28;
  a3[2] = v29;
}

uint64_t sub_2763709F4@<X0>(uint64_t result@<X0>, const char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v7 = result;
  if (a2 >= 3)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a4, a5, a6, "Edge TSCH3DMeshEdgeFinder::Mesh::Face::edgeAtIndex(NSInteger) const");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMeshEdgeFinder.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 63, 0, "edge index out of bounds %ld", a2);

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  *(a3 + 8) = *v7;
  *a3 = a2;
  *(a3 + 4) = (a2 + 1) % 3;
  return result;
}

float sub_276370B00(uint64_t *a1, uint64_t *a2, const char *a3, double a4, double a5, double a6)
{
  v9 = a1 + 5;
  sub_276371D68(*a1, a3, **a1, v63, a4, a5, a6);
  sub_2763720C0(v65, v63);
  v13 = sub_276372158((a1 + 4), v65, v10, v11, v12);
  if (v9 == v13)
  {
    *&v58 = *a2;
    *(&v58 + 1) = -1;
    v59 = *a3;
    v60 = *(a3 + 1);
    v61 = -1;
    v62 = -1;
    sub_276372364(v63, v65, &v58);
    sub_2763723D8((a1 + 4), v63, v23, v24, v25);
    if ((v19 & 1) == 0)
    {
      v26 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "void TSCH3DMeshEdgeFinder::EdgeFaceFinder::addFaceToEdge(const Mesh::Face &, const Mesh::Edge &)");
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMeshEdgeFinder.h");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v34, v35, v36, v27, v32, 224, 0, "failed to find and insert");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
    }
  }

  else
  {
    v18 = v13;
    sub_276372630((v13 + 64), v14, v15, v16, v17);
    *(v18 + 72) = *a2;
    *(v18 + 96) = *a3;
    *(v18 + 100) = *(a3 + 1);
    *(v18 + 104) = *(a3 + 1);
  }

  if (*a2 < 0 || *a2 >= (0xAAAAAAAAAAAAAAABLL * ((a1[2] - a1[1]) >> 2)))
  {
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "void TSCH3DMeshEdgeFinder::EdgeFaceFinder::addFaceToEdge(const Mesh::Face &, const Mesh::Edge &)");
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMeshEdgeFinder.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v48, v49, v50, v51, v42, v47, 229, 0, "face index out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54, v55);
  }

  sub_27637086C(*a1, a2, v63, v21, v22);
  v56 = a1[1] + 12 * *a2;
  *v56 = v63[0];
  *(v56 + 4) = v63[1];
  result = v64;
  *(v56 + 8) = v64;
  return result;
}

double sub_276370D48@<D0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *&v9 = sub_27637278C(a1, a2, &v16, a4, a5, a6);
  sub_27637278C(a1, a2 + 8, &v14, v9, v10, v11);
  *&v12 = v16;
  *(&v12 + 1) = __PAIR64__(v14, v17);
  *a3 = v12;
  result = v15;
  *(a3 + 16) = v15;
  return result;
}

void sub_276371410(_Unwind_Exception *a1)
{
  v7 = v4;

  _Unwind_Resume(a1);
}

void sub_2763716E8(uint64_t a1, uint64_t a2)
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_276371818;
  v12[3] = &unk_27A6BA090;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v13 = v9;
  v14 = v8;
  v15 = *(a1 + 64);
  objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorStateSession, v10, *&v6, *&v4, v11, a2, v12);
}

void sub_276371818(uint64_t a1, void *a2)
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *v61 = 1065353216;
  *v62 = 0;
  *&v61[4] = 0;
  *&v62[8] = 1065353216;
  v63 = 0;
  v64 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 1065353216;
  v68 = 1065353216;
  objc_msgSend_replace_(v3, v4, v5, v6, v7, v61);
  if (v3)
  {
    objc_msgSend_renderState(v3, v8, v9, v10, v11);
  }

  else
  {
    *v61 = 0;
    *&v61[8] = 16843008;
    v63 = 0;
  }

  v62[0] = 1;
  *&v62[4] = 0xC1A00000BF800000;
  objc_msgSend_setRenderState_(v3, v8, -134217824.0, v10, v11, v61);
  v16 = objc_msgSend_renderer(*(a1 + 32), v12, v13, v14, v15);
  v21 = objc_msgSend_effects(v3, v17, v18, v19, v20);
  if (objc_msgSend_beginWithPipeline_(v16, v22, v23, v24, v25, *(a1 + 40)))
  {
    v31 = objc_msgSend_setting(TSCH3DPrefilteredLineSetting, v26, v27, v28, v29);
    v35 = *(a1 + 32);
    if (v35)
    {
      objc_msgSend_color(v35, v30, v32, v33, v34);
      v36 = v59;
    }

    else
    {
      v59 = 0uLL;
      v36 = 0uLL;
    }

    v60 = v36;
    objc_msgSend_setStrokeColor_(v31, v30, *&v36, v33, v34, &v60);
    LODWORD(v37) = 1.5;
    objc_msgSend_setLineWidth_(v31, v38, v37, v39, v40);
    v60 = xmmword_2764D7110;
    objc_msgSend_setFilterRadius_(v31, v41, 128.00003, v42, v43, &v60);
    objc_msgSend_renderLineBufferWithSetting_vertices_normals_diffuseTexcoords_(v16, v44, v45, v46, v47, v31, *(a1 + 48), 0, 0);
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = sub_276371AB4;
    v54[3] = &unk_27A6B67F0;
    v55 = *(a1 + 56);
    v48 = v21;
    v49 = *(a1 + 64);
    v56 = v48;
    v57 = v49;
    v58 = *(a1 + 40);
    objc_msgSend_endWithDidGenerateShaderEffectsBlock_(v16, v50, v51, v52, v53, v54);
  }
}

const char **sub_276371C74(const char **a1, const char *a2, const char *a3, const char *a4, double a5, double a6, double a7)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  if (0xAAAAAAAAAAAAAAABLL * a4 + 0x2AAAAAAAAAAAAAAALL >= 0x5555555555555555)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a5, a6, a7, "TSCH3DMeshEdgeFinder::Mesh::Mesh(const TSCH3Dvec3DataBufferContainerType &, NSInteger, NSInteger)");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMeshEdgeFinder.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 79, 0, "invalid count %ld for triangles", a1[2]);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  return a1;
}

double sub_276371D68@<D0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  if (a3[1] - *a3 != *(*a1 + 8) - **a1)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a5, a6, a7, "Duad<typename DataBufferContainerT::value_type> TSCH3DMeshEdgeFinder::Mesh::edgeVectorsForContainer(const Edge &, const DataBufferContainerT &) const [DataBufferContainerT = std::vector<glm::detail::tvec3<float>>]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMeshEdgeFinder.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 104, 0, "array size mismatch %lu should be %zu", 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 2), 0xAAAAAAAAAAAAAAABLL * ((*(*a1 + 8) - **a1) >> 2));

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = 3 * *(a2 + 2);
  v27 = (*a2 + v26);
  v28 = (*(a2 + 1) + v26);
  *&v29 = sub_276371EE8(a1, v27, a3, &v36, a5, a6, a7);
  sub_276371EE8(a1, v28, a3, &v34, v29, v30, v31);
  *&v32 = v36;
  *(&v32 + 1) = __PAIR64__(v34, v37);
  *a4 = v32;
  result = v35;
  *(a4 + 16) = v35;
  return result;
}

float sub_276371EE8@<S0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  if ((a2 & 0x8000000000000000) != 0 || *(a1 + 16) <= a2)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a5, a6, a7, "typename DataBufferContainerT::value_type TSCH3DMeshEdgeFinder::Mesh::pointAtContainerIndex(NSInteger, const DataBufferContainerT &) const [DataBufferContainerT = std::vector<glm::detail::tvec3<float>>]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMeshEdgeFinder.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 93, 0, "index out of bound %ld, total %ld", a2, *(a1 + 16));

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
    v11 = &a2[*(a1 + 8)];
    if ((a2 & 0x8000000000000000) != 0)
    {
LABEL_6:
      v28 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a5, a6, a7, "typename DataBufferContainerT::value_type TSCH3DMeshEdgeFinder::Mesh::pointAtContainerIndex(NSInteger, const DataBufferContainerT &) const [DataBufferContainerT = std::vector<glm::detail::tvec3<float>>]");
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMeshEdgeFinder.h");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v35, v36, v37, v38, v29, v34, 96, 0, "offset index out of bound %ld, total %lu", v11, 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 2));

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
      v27 = *a3;
      goto LABEL_7;
    }
  }

  else
  {
    v11 = &a2[*(a1 + 8)];
  }

  v27 = *a3;
  if (v11 >= (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 2)))
  {
    goto LABEL_6;
  }

LABEL_7:
  v43 = v27 + 12 * v11;
  *a4 = *v43;
  result = *(v43 + 8);
  *(a4 + 8) = result;
  return result;
}

uint64_t sub_2763720C0(uint64_t result, uint64_t a2)
{
  v2 = 0;
  *result = 1;
  do
  {
    v3 = (result + v2);
    v3[1] = *(a2 + v2);
    v3[2] = *(a2 + v2 + 4);
    v3[3] = *(a2 + v2 + 8);
    v2 += 12;
  }

  while (v2 != 24);
  v4 = *(result + 4);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v6 = *(result + 8);
    v7 = *(result + 20);
    if (v5 < v4 || v6 >= v7 && (v7 < v6 || *(result + 12) >= *(result + 24)))
    {
      v8 = *(result + 12);
      *(result + 4) = v5;
      *(result + 8) = v7;
      *(result + 12) = *(result + 24);
      *(result + 16) = v4;
      *(result + 20) = v6;
      *(result + 24) = v8;
    }
  }

  return result;
}

uint64_t sub_276372158(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v5 = a1 + 8;
  v6 = *(a1 + 8);
  if (!v6)
  {
    return v5;
  }

  v8 = a1 + 8;
  do
  {
    v9 = sub_2763721DC(v6 + 32, a2, a3, a4, a5);
    if (v9)
    {
      v10 = 8;
    }

    else
    {
      v10 = 0;
    }

    if (!v9)
    {
      v8 = v6;
    }

    v6 = *(v6 + v10);
  }

  while (v6);
  if (v8 == v5 || sub_2763721DC(a2, v8 + 32, a3, a4, a5))
  {
    return v5;
  }

  return v8;
}

BOOL sub_2763721DC(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  if (*a1 != 1 || (*a2 & 1) == 0)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "BOOL TSCH3DMeshEdgeFinder::EdgeFaceFinder::Edge::operator<(const Edge &) const");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMeshEdgeFinder.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 156, 0, "cannot compare invalid points");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = *(a1 + 4);
  v23 = *(a2 + 4);
  if (v22 < v23)
  {
    return 1;
  }

  if (v23 < v22)
  {
    return 0;
  }

  v25 = *(a1 + 8);
  v26 = *(a2 + 8);
  if (v25 < v26 || v26 >= v25 && *(a1 + 12) < *(a2 + 12))
  {
    return 1;
  }

  v27 = *(a2 + 8);
  v28 = *(a1 + 8);
  if (v27 < v28 || v28 >= v27 && *(a2 + 12) < *(a1 + 12))
  {
    return 0;
  }

  v29 = *(a1 + 16);
  v30 = *(a2 + 16);
  if (v29 < v30)
  {
    return 1;
  }

  if (v30 < v29)
  {
    return 0;
  }

  v31 = *(a1 + 20);
  v32 = *(a2 + 20);
  if (v31 < v32)
  {
    return 1;
  }

  if (v32 < v31)
  {
    return 0;
  }

  return *(a1 + 24) < *(a2 + 24);
}

uint64_t sub_276372364(uint64_t result, _BYTE *a2, _OWORD *a3)
{
  v4 = *a2;
  v3 = a2 + 8;
  *result = v4;
  for (i = 12; i != 36; i += 12)
  {
    v6 = (result + i);
    *(v6 - 2) = *(v3 - 1);
    *(v6 - 1) = *v3;
    *v6 = v3[1];
    v3 += 3;
  }

  *(result + 32) = *a3;
  v7 = a3 + 3;
  for (j = 16; j != 48; j += 16)
  {
    v9 = result + j;
    *(v9 + 32) = *(v7 - 2);
    *(v9 + 36) = *(v7 - 1);
    v10 = *v7;
    v7 += 2;
    *(v9 + 40) = v10;
  }

  return result;
}

uint64_t sub_2763723D8(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  result = *sub_276372458(a1, &v6, a2, a3, a4, a5);
  if (!result)
  {
    sub_2763724E0();
  }

  return result;
}

void *sub_276372458(uint64_t a1, void *a2, uint64_t a3, double a4, double a5, double a6)
{
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  if (v7)
  {
    do
    {
      while (1)
      {
        v10 = v7;
        if (!sub_2763721DC(a3, (v7 + 4), a4, a5, a6))
        {
          break;
        }

        v7 = *v10;
        v8 = v10;
        if (!*v10)
        {
          goto LABEL_9;
        }
      }

      if (!sub_2763721DC((v10 + 4), a3, a4, a5, a6))
      {
        break;
      }

      v8 = v10 + 1;
      v7 = v10[1];
    }

    while (v7);
  }

  else
  {
    v10 = (a1 + 8);
  }

LABEL_9:
  *a2 = v10;
  return v8;
}

void sub_276372548(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_276372560(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

  result = sub_27617F970(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t sub_2763725B8(uint64_t result, uint64_t a2)
{
  v2 = (a2 + 8);
  *result = *a2;
  for (i = 12; i != 36; i += 12)
  {
    v4 = (result + i);
    *(v4 - 2) = *(v2 - 1);
    *(v4 - 1) = *v2;
    *v4 = v2[1];
    v2 += 3;
  }

  v5 = 0;
  *(result + 32) = *(a2 + 32);
  do
  {
    v6 = result + v5;
    *(v6 + 48) = *(a2 + v5 + 48);
    *(v6 + 52) = *(a2 + v5 + 52);
    *(v6 + 56) = *(a2 + v5 + 56);
    v5 += 16;
  }

  while (v5 != 32);
  return result;
}

void *sub_276372630(void *result, const char *a2, double a3, double a4, double a5)
{
  v5 = result;
  if ((*result & 0x8000000000000000) != 0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "void TSCH3DMeshEdgeFinder::EdgeFaceFinder::EdgeFaces::assertOnly1() const");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMeshEdgeFinder.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 187, 0, "first face is invalid");

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  if ((v5[1] & 0x8000000000000000) == 0)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "void TSCH3DMeshEdgeFinder::EdgeFaceFinder::EdgeFaces::assertOnly1() const");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMeshEdgeFinder.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v29, v30, v31, v22, v27, 188, 0, "second face is already valid");

    v36 = MEMORY[0x277D81150];

    return objc_msgSend_logBacktraceThrottled(v36, v32, v33, v34, v35);
  }

  return result;
}

float sub_27637278C@<S0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v9 = *a2;
  if ((*a2 & 0x8000000000000000) != 0 && (v10 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a4, a5, a6, "vec3 TSCH3DMeshEdgeFinder::EdgeFaceFinder::normalForFace(const Mesh::Face &) const"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMeshEdgeFinder.h"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 234, 0, "face is not valid"), v16, v11, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24), v9 = *a2, (*a2 & 0x8000000000000000) != 0) || (v25 = *(a1 + 8), v9 >= (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v25) >> 2))))
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a4, a5, a6, "vec3 TSCH3DMeshEdgeFinder::EdgeFaceFinder::normalForFace(const Mesh::Face &) const");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMeshEdgeFinder.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v34, v35, v36, v27, v32, 236, 0, "face out of bounds %ld total %zu", *a2, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *(a1 + 8)) >> 2));

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
    v9 = *a2;
    v25 = *(a1 + 8);
  }

  v41 = v25 + 12 * v9;
  *a3 = *v41;
  result = *(v41 + 8);
  *(a3 + 8) = result;
  return result;
}

uint64_t sub_276372940(uint64_t a1)
{
  sub_276372980(a1 + 32, *(a1 + 40));
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_276372980(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_276372980(a1, *a2);
    sub_276372980(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_276372C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = TSCHMultiDataChartRep;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_276372DB4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_2763731D0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  v12 = objc_msgSend_seriesIndex(v6, v8, v9, v10, v11);
  if (v12 <= objc_msgSend_seriesIndex(v7, v13, v14, v15, v16))
  {
    v22 = objc_msgSend_seriesIndex(v6, v17, v18, v19, v20);
    if (v22 < objc_msgSend_seriesIndex(v7, v23, v24, v25, v26))
    {
      v21 = 1;
      goto LABEL_7;
    }

    v31 = objc_msgSend_valueIndex(v6, v27, v28, v29, v30);
    if (v31 <= objc_msgSend_valueIndex(v7, v32, v33, v34, v35))
    {
      v40 = objc_msgSend_valueIndex(v6, v36, v37, v38, v39);
      v21 = v40 < objc_msgSend_valueIndex(v7, v41, v42, v43, v44);
      goto LABEL_7;
    }
  }

  v21 = -1;
LABEL_7:

  return v21;
}

void sub_2763747F0(uint64_t a1, void *a2)
{
  v13 = a2;
  if (v13)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 112);
    if (v4)
    {
      v5 = v4;
      v6 = *(v3 + 112);
      *(v3 + 112) = v5;
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v8 = *(a1 + 32);
      v6 = *(v8 + 112);
      *(v8 + 112) = v7;
    }

    objc_msgSend_setObject_forKey_(*(*(a1 + 32) + 112), v9, v10, v11, v12, v13, *(a1 + 40));
  }
}

double sub_276377A04(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  if (a2)
  {
    return CGRectGetHeight(*&v2);
  }

  else
  {
    return CGRectGetWidth(*&v2);
  }
}

void sub_276379DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18)
{
  _Block_object_dispose((v20 - 152), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_276379FB4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27637A12C(uint64_t a1, void *a2)
{
  v10 = a2;
  v7 = objc_msgSend_copy(v10, v3, v4, v5, v6);
  v8 = *(a1 + 32);
  v9 = *(v8 + 272);
  *(v8 + 272) = v7;
}

void sub_27637A1A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v20 = v3;
    v4 = *(a1 + 32);
    v5 = *(v4 + 152);
    if (v5)
    {
      v6 = v5;
      v7 = *(v4 + 152);
      *(v4 + 152) = v6;
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v9 = *(a1 + 32);
      v7 = *(v9 + 152);
      *(v9 + 152) = v8;
    }

    v10 = *(*(a1 + 32) + 152);
    v15 = objc_msgSend_mutableCopy(v20, v11, v12, v13, v14);
    objc_msgSend_setObject_forKey_(v10, v16, v17, v18, v19, v15, *(a1 + 40));

    v3 = v20;
  }
}

void sub_27637A298(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v5 = a1;
  v828 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  if (!*(v6 + 56))
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "[TSCHChartInfo(NewArchiving) loadFromUnityArchive:unarchiver:persistentChartInfo:]_block_invoke_19");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_UnityArchiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 415, 0, "No Chart Style found while unarchiving.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    v26 = objc_msgSend_defaultStyleWithContext_(TSCHChartStyle, v22, v23, v24, v25, *(a1 + 40));
    v5 = a1;
    v27 = *(a1 + 32);
    v28 = *(v27 + 56);
    *(v27 + 56) = v26;

    objc_msgSend_addObject_(*(v5 + 48), v29, v30, v31, v32, *(*(v5 + 32) + 56));
    v6 = *(a1 + 32);
  }

  if (!*(v6 + 72))
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "[TSCHChartInfo(NewArchiving) loadFromUnityArchive:unarchiver:persistentChartInfo:]_block_invoke_19");
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_UnityArchiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v40, v41, v42, v43, v34, v39, 421, 0, "No legend style while unarchiving.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
    v52 = objc_msgSend_defaultStyleWithContext_(TSCHLegendStyle, v48, v49, v50, v51, *(a1 + 40));
    v5 = a1;
    v53 = *(a1 + 32);
    v54 = *(v53 + 72);
    *(v53 + 72) = v52;

    v6 = *(a1 + 32);
  }

  if (!*(v6 + 80))
  {
    v55 = MEMORY[0x277D81150];
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "[TSCHChartInfo(NewArchiving) loadFromUnityArchive:unarchiver:persistentChartInfo:]_block_invoke_19");
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_UnityArchiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v62, v63, v64, v65, v56, v61, 426, 0, "No Legend Non-Style while unarchiving.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68, v69);
    v74 = objc_msgSend_defaultStyleWithContext_(TSCHLegendNonStyle, v70, v71, v72, v73, *(a1 + 40));
    v5 = a1;
    v75 = *(a1 + 32);
    v76 = *(v75 + 80);
    *(v75 + 80) = v74;

    v6 = *(a1 + 32);
  }

  if (!*(v6 + 64))
  {
    v77 = MEMORY[0x277D81150];
    v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "[TSCHChartInfo(NewArchiving) loadFromUnityArchive:unarchiver:persistentChartInfo:]_block_invoke_19");
    v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, v80, v81, v82, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_UnityArchiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v77, v84, v85, v86, v87, v78, v83, 431, 0, "No Chart NonStyle found while unarchiving.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v88, v89, v90, v91);
    v96 = objc_msgSend_defaultStyleWithContext_(TSCHChartNonStyle, v92, v93, v94, v95, *(a1 + 40));
    v5 = a1;
    v97 = *(a1 + 32);
    v98 = *(v97 + 64);
    *(v97 + 64) = v96;

    v6 = *(a1 + 32);
  }

  if (!objc_msgSend_count(*(v6 + 96), a2, a3, a4, a5))
  {
    v103 = MEMORY[0x277D81150];
    v104 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v99, v100, v101, v102, "[TSCHChartInfo(NewArchiving) loadFromUnityArchive:unarchiver:persistentChartInfo:]_block_invoke_19");
    v109 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v105, v106, v107, v108, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_UnityArchiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v103, v110, v111, v112, v113, v104, v109, 437, 0, "No Axis Styles found while unarchiving.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v114, v115, v116, v117);
    v123 = objc_msgSend_array(MEMORY[0x277CBEB18], v118, v119, v120, v121);
    v127 = 1;
    do
    {
      v128 = v127;
      v129 = objc_msgSend_defaultStyleWithContext_(TSCHChartAxisStyle, v122, v124, v125, v126, *(a1 + 40));
      objc_msgSend_addObject_(v123, v130, v131, v132, v133, v129);

      v127 = 0;
    }

    while ((v128 & 1) != 0);
    v134 = objc_alloc(MEMORY[0x277CBEB18]);
    v139 = objc_msgSend_initWithArray_(v134, v135, v136, v137, v138, v123);
    v140 = *(a1 + 32);
    v141 = *(v140 + 96);
    *(v140 + 96) = v139;

    objc_msgSend_addObjectsFromArray_(*(a1 + 48), v142, v143, v144, v145, *(*(a1 + 32) + 96));
    v5 = a1;
  }

  if (!objc_msgSend_count(*(*(v5 + 32) + 104), v99, v100, v101, v102))
  {
    v150 = MEMORY[0x277D81150];
    v151 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v146, v147, v148, v149, "[TSCHChartInfo(NewArchiving) loadFromUnityArchive:unarchiver:persistentChartInfo:]_block_invoke_19");
    v156 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v152, v153, v154, v155, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_UnityArchiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v150, v157, v158, v159, v160, v151, v156, 452, 0, "No Axis Styles found while unarchiving.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v161, v162, v163, v164);
    v169 = objc_msgSend_array(MEMORY[0x277CBEB18], v165, v166, v167, v168);
    v174 = objc_msgSend_defaultStyleWithContext_(TSCHChartAxisStyle, v170, v171, v172, v173, *(a1 + 40));
    objc_msgSend_addObject_(v169, v175, v176, v177, v178, v174);

    v179 = objc_alloc(MEMORY[0x277CBEB18]);
    v184 = objc_msgSend_initWithArray_(v179, v180, v181, v182, v183, v169);
    v185 = *(a1 + 32);
    v186 = *(v185 + 104);
    *(v185 + 104) = v184;

    objc_msgSend_addObjectsFromArray_(*(a1 + 48), v187, v188, v189, v190, *(*(a1 + 32) + 104));
    v5 = a1;
  }

  if (!objc_msgSend_count(*(*(v5 + 32) + 128), v146, v147, v148, v149))
  {
    v195 = MEMORY[0x277D81150];
    v196 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v191, v192, v193, v194, "[TSCHChartInfo(NewArchiving) loadFromUnityArchive:unarchiver:persistentChartInfo:]_block_invoke_19");
    v201 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v197, v198, v199, v200, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_UnityArchiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v195, v202, v203, v204, v205, v196, v201, 466, 0, "No Series Styles found while unarchiving.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v206, v207, v208, v209);
    v215 = objc_msgSend_array(MEMORY[0x277CBEB18], v210, v211, v212, v213);
    for (i = 0; i != 6; ++i)
    {
      v220 = objc_msgSend_bootstrappedSeriesStyleWithContext_seriesIndex_presetIndex_(TSCHChartSeriesStyle, v214, v216, v217, v218, *(a1 + 40), i, 0);
      objc_msgSend_addObject_(v215, v221, v222, v223, v224, v220);
    }

    v225 = objc_alloc(MEMORY[0x277CBEB18]);
    v230 = objc_msgSend_initWithArray_(v225, v226, v227, v228, v229, v215);
    v231 = *(a1 + 32);
    v232 = *(v231 + 128);
    *(v231 + 128) = v230;

    objc_msgSend_addObjectsFromArray_(*(a1 + 48), v233, v234, v235, v236, *(*(a1 + 32) + 128));
    v5 = a1;
  }

  if (!objc_msgSend_count(*(*(v5 + 32) + 136), v191, v192, v193, v194))
  {
    v241 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v242 = *(v5 + 32);
    v243 = *(v242 + 136);
    *(v242 + 136) = v241;
  }

  if (!objc_msgSend_count(*(*(v5 + 32) + 112), v237, v238, v239, v240))
  {
    v248 = MEMORY[0x277D81150];
    v249 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v244, v245, v246, v247, "[TSCHChartInfo(NewArchiving) loadFromUnityArchive:unarchiver:persistentChartInfo:]_block_invoke_19");
    v254 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v250, v251, v252, v253, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_UnityArchiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v248, v255, v256, v257, v258, v249, v254, 484, 0, "No Axis NonStyles found while unarchiving.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v259, v260, v261, v262);
    v263 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v264 = *(a1 + 32);
    v265 = *(v264 + 112);
    *(v264 + 112) = v263;

    v270 = objc_msgSend_count(*(*(a1 + 32) + 96), v266, v267, v268, v269);
    if (v270)
    {
      v271 = v270;
      do
      {
        v272 = *(*(a1 + 32) + 112);
        v273 = objc_msgSend_defaultStyleWithContext_(TSCHChartAxisNonStyle, v244, v245, v246, v247, *(a1 + 40));
        objc_msgSend_addObject_(v272, v274, v275, v276, v277, v273);

        --v271;
      }

      while (v271);
    }
  }

  if (!objc_msgSend_count(*(*(a1 + 32) + 120), v244, v245, v246, v247))
  {
    v282 = MEMORY[0x277D81150];
    v283 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v278, v279, v280, v281, "[TSCHChartInfo(NewArchiving) loadFromUnityArchive:unarchiver:persistentChartInfo:]_block_invoke_19");
    v288 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v284, v285, v286, v287, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_UnityArchiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v282, v289, v290, v291, v292, v283, v288, 497, 0, "No Axis NonStyles found while unarchiving.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v293, v294, v295, v296);
    v297 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v298 = *(a1 + 32);
    v299 = *(v298 + 120);
    *(v298 + 120) = v297;

    v304 = objc_msgSend_count(*(*(a1 + 32) + 104), v300, v301, v302, v303);
    if (v304)
    {
      v305 = v304;
      do
      {
        v306 = *(*(a1 + 32) + 120);
        v307 = objc_msgSend_defaultStyleWithContext_(TSCHChartAxisNonStyle, v278, v279, v280, v281, *(a1 + 40));
        objc_msgSend_addObject_(v306, v308, v309, v310, v311, v307);

        --v305;
      }

      while (v305);
    }
  }

  if (!objc_msgSend_count(*(*(a1 + 32) + 144), v278, v279, v280, v281))
  {
    v312 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v313 = *(a1 + 32);
    v314 = *(v313 + 144);
    *(v313 + 144) = v312;
  }

  v315 = *(a1 + 32);
  v316 = *(v315 + 160);
  if (v316)
  {
    v317 = v316;
    v318 = *(v315 + 160);
    *(v315 + 160) = v317;
  }

  else
  {
    v318 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objc_storeStrong((*(a1 + 32) + 160), v318);
  }

  v319 = *(a1 + 32);
  v320 = *(v319 + 152);
  if (v320)
  {
    v321 = v320;
    v322 = *(v319 + 152);
    *(v319 + 152) = v321;
  }

  else
  {
    v322 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objc_storeStrong((*(a1 + 32) + 152), v322);
  }

  v323 = a1;
  if (objc_msgSend_count(*(a1 + 48), v324, v325, v326, v327))
  {
    v332 = objc_alloc(MEMORY[0x277D80AE0]);
    v337 = objc_msgSend_initWithContext_(v332, v333, v334, v335, v336, *(a1 + 40));
    v817 = 0u;
    v818 = 0u;
    v819 = 0u;
    v820 = 0u;
    v338 = *(a1 + 48);
    v344 = objc_msgSend_countByEnumeratingWithState_objects_count_(v338, v339, v340, v341, v342, &v817, v827, 16);
    if (v344)
    {
      v348 = *v818;
      do
      {
        for (j = 0; j != v344; ++j)
        {
          if (*v818 != v348)
          {
            objc_enumerationMutation(v338);
          }

          v350 = *(*(&v817 + 1) + 8 * j);
          v351 = objc_msgSend_stylesheet(v350, v343, v345, v346, v347);
          v352 = v351 == 0;

          if (v352)
          {
            objc_msgSend_addStyle_(v337, v343, v345, v346, v347, v350);
          }
        }

        v344 = objc_msgSend_countByEnumeratingWithState_objects_count_(v338, v343, v345, v346, v347, &v817, v827, 16);
      }

      while (v344);
    }

    objc_setAssociatedObject(*(a1 + 32), *(a1 + 32), v337, 1);
    v323 = a1;
  }

  v353 = v323;
  v354 = *(*(*(v323 + 64) + 8) + 40);
  if (v354)
  {
    v355 = objc_msgSend_context(*(v323 + 32), v328, v329, v330, v331);
    v360 = objc_msgSend_copyWithContext_shallowCopyStyles_(v354, v356, v357, v358, v359, v355, 1);

    if (*(*(a1 + 32) + 264))
    {
      v365 = MEMORY[0x277D81150];
      v366 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v361, v362, v363, v364, "[TSCHChartInfo(NewArchiving) loadFromUnityArchive:unarchiver:persistentChartInfo:]_block_invoke_19");
      v371 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v367, v368, v369, v370, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_UnityArchiving.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v365, v372, v373, v374, v375, v366, v371, 548, 0, "expected nil value for '%{public}s'", "_lazyPreset");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v376, v377, v378, v379);
    }

    v380 = objc_alloc(MEMORY[0x277D80868]);
    inited = objc_msgSend_initWeakReferenceWithObject_retainedUntilArchived_(v380, v381, v382, v383, v384, v360, 1);
    v386 = *(a1 + 32);
    v387 = *(v386 + 264);
    *(v386 + 264) = inited;

    v353 = a1;
  }

  v388 = *(v353 + 32);
  if (!*(v388 + 256) || *(*(*(v353 + 64) + 8) + 40))
  {
    objc_opt_class();
    v393 = objc_msgSend_objectAndReturnError_(*(*(a1 + 32) + 264), v389, v390, v391, v392, 0);
    v394 = TSUCheckedDynamicCast();

    if (objc_msgSend_shouldOwnPreset_(*(a1 + 32), v395, v396, v397, v398, v394))
    {
      v399 = objc_alloc(MEMORY[0x277D80868]);
      v404 = objc_msgSend_initWithObject_(v399, v400, v401, v402, v403, v394);
      v405 = *(a1 + 32);
      v406 = *(v405 + 256);
      *(v405 + 256) = v404;
    }

    v388 = *(a1 + 32);
  }

  if (!*(v388 + 264))
  {
    objc_opt_class();
    v411 = objc_msgSend_documentRoot(*(a1 + 32), v407, v408, v409, v410);
    v416 = objc_msgSend_theme(v411, v412, v413, v414, v415);
    v421 = objc_msgSend_presetOfKind_index_(v416, v417, v418, v419, v420, *MEMORY[0x277D80B08], 0);
    v422 = TSUDynamicCast();

    if (v422)
    {
      v423 = objc_alloc(MEMORY[0x277D80868]);
      v428 = objc_msgSend_initWeakReferenceWithObject_(v423, v424, v425, v426, v427, v422);
      v429 = *(a1 + 32);
      v430 = *(v429 + 264);
      *(v429 + 264) = v428;

      v431 = *(*(a1 + 32) + 256);
      *(*(a1 + 32) + 256) = 0;
    }
  }

  objc_opt_class();
  v432 = objc_getAssociatedObject(*(a1 + 32), qword_280A462E0);
  v805 = TSUCheckedDynamicCast();

  v437 = a1;
  if (v805)
  {
    v438 = objc_msgSend_drawableInfo(*(a1 + 32), v433, v434, v435, v436);
    v443 = objc_msgSend_documentRoot(v438, v439, v440, v441, v442);
    v448 = objc_msgSend_theme(v443, v444, v445, v446, v447);
    v453 = objc_msgSend_objectAndReturnError_(*(*(a1 + 32) + 264), v449, v450, v451, v452, 0);
    v458 = objc_msgSend_indexOfPreset_(v448, v454, v455, v456, v457, v453) == 0x7FFFFFFFFFFFFFFFLL;

    if (v458)
    {
      v463 = objc_msgSend_drawableInfo(*(a1 + 32), v459, v460, v461, v462);
      v468 = objc_msgSend_documentRoot(v463, v464, v465, v466, v467);
      v473 = objc_msgSend_theme(v468, v469, v470, v471, v472);
      v478 = objc_msgSend_presetsOfKind_(v473, v474, v475, v476, v477, *MEMORY[0x277D80B08]);

      v815 = 0u;
      v816 = 0u;
      v813 = 0u;
      v814 = 0u;
      v479 = v478;
      v485 = objc_msgSend_countByEnumeratingWithState_objects_count_(v479, v480, v481, v482, v483, &v813, v826, 16);
      v489 = v479;
      if (v485)
      {
        v490 = *v814;
LABEL_65:
        v491 = 0;
        while (1)
        {
          if (*v814 != v490)
          {
            objc_enumerationMutation(v479);
          }

          v492 = *(*(&v813 + 1) + 8 * v491);
          v493 = objc_msgSend_uuid(v492, v484, v486, v487, v488);
          isEqual = objc_msgSend_isEqual_(v805, v494, v495, v496, v497, v493);

          if (isEqual)
          {
            break;
          }

          if (v485 == ++v491)
          {
            v485 = objc_msgSend_countByEnumeratingWithState_objects_count_(v479, v484, v486, v487, v488, &v813, v826, 16);
            if (v485)
            {
              goto LABEL_65;
            }

            v489 = v479;
            goto LABEL_74;
          }
        }

        v489 = v492;

        if (!v489)
        {
          goto LABEL_75;
        }

        v499 = objc_alloc(MEMORY[0x277D80868]);
        v504 = objc_msgSend_initWeakReferenceWithObject_(v499, v500, v501, v502, v503, v489);
        v505 = *(a1 + 32);
        v506 = *(v505 + 264);
        *(v505 + 264) = v504;

        v507 = *(*(a1 + 32) + 256);
        *(*(a1 + 32) + 256) = 0;
      }

LABEL_74:

LABEL_75:
    }

    v437 = a1;
    objc_setAssociatedObject(*(a1 + 32), qword_280A462E0, 0, 1);
  }

  v804 = objc_getAssociatedObject(*(v437 + 32), qword_280A462D8);
  if (v804)
  {
    v512 = objc_msgSend_drawableInfo(*(v437 + 32), v508, v509, v510, v511);
    v517 = objc_msgSend_documentRoot(v512, v513, v514, v515, v516);
    v522 = objc_msgSend_theme(v517, v518, v519, v520, v521);
    v527 = objc_msgSend_objectAndReturnError_(*(*(v437 + 32) + 264), v523, v524, v525, v526, 0);
    v532 = objc_msgSend_indexOfPreset_(v522, v528, v529, v530, v531, v527);

    if (v532 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v537 = objc_msgSend_unsignedIntegerValue(v804, v533, v534, v535, v536);
      v542 = objc_msgSend_drawableInfo(*(a1 + 32), v538, v539, v540, v541);
      v547 = objc_msgSend_documentRoot(v542, v543, v544, v545, v546);
      v552 = objc_msgSend_theme(v547, v548, v549, v550, v551);
      v557 = objc_msgSend_presetsOfKind_(v552, v553, v554, v555, v556, *MEMORY[0x277D80B08]);

      if (v537 >= objc_msgSend_count(v557, v558, v559, v560, v561))
      {
        objc_msgSend_objectAtIndexedSubscript_(v557, v562, v563, v564, v565, 0);
      }

      else
      {
        objc_msgSend_objectAtIndexedSubscript_(v557, v562, v563, v564, v565, v537);
      }
      v566 = ;
      v567 = objc_alloc(MEMORY[0x277D80868]);
      v572 = objc_msgSend_initWeakReferenceWithObject_(v567, v568, v569, v570, v571, v566);
      v573 = *(a1 + 32);
      v574 = *(v573 + 264);
      *(v573 + 264) = v572;

      v575 = *(*(a1 + 32) + 256);
      *(*(a1 + 32) + 256) = 0;
    }

    v437 = a1;
    objc_setAssociatedObject(*(a1 + 32), qword_280A462D8, 0, 0x303);
  }

  v576 = sub_2762A6FF8(*(v437 + 80), v508, v509, v510, v511);
  v577 = *(v437 + 32);
  v578 = *(v577 + 16);
  *(v577 + 16) = v576;

  v583 = a1;
  if ((*(a1 + 88) & 1) == 0)
  {
    v811 = 0u;
    v812 = 0u;
    v809 = 0u;
    v810 = 0u;
    v584 = *(*(a1 + 32) + 144);
    v589 = objc_msgSend_countByEnumeratingWithState_objects_count_(v584, v585, v586, v587, v588, &v809, v825, 16);
    if (v589)
    {
      v590 = *v810;
      do
      {
        for (k = 0; k != v589; ++k)
        {
          if (*v810 != v590)
          {
            objc_enumerationMutation(v584);
          }

          v592 = *(*(&v809 + 1) + 8 * k);
          v593 = objc_opt_class();
          v594 = sub_2762CD788(v593, v592);
          v599 = v594;
          if (v594)
          {
            objc_msgSend_floatValueForProperty_(v594, v595, v596, v597, v598, 1366);
            v601 = *&v600;
            v605 = objc_msgSend_supportsCalloutLines(*(*(a1 + 32) + 16), v602, v600, v603, v604);
            if (objc_msgSend_intValueForProperty_(*(*(a1 + 32) + 64), v606, v607, v608, v609, 1327) == 1)
            {
              v614 = v605;
            }

            else
            {
              v614 = 0;
            }

            if (v614 == 1)
            {
              v615 = *(a1 + 32);
              v616 = v615[4];
              v617 = objc_msgSend_geometry(v615, v610, v611, v612, v613);
              objc_msgSend_size(v617, v618, v619, v620, v621);
              objc_msgSend_bendedCalloutLineLabelExplosionValueFromPre2_4ExplosionValue_chartModel_bodySize_(TSCHStyleUtilities, v622, v601, v623, v624, v616);
              v626 = v625;

              v601 = v626;
            }

            objc_msgSend_willModifyForUpgrade(v599, v610, v611, v612, v613);
            *&v627 = v601;
            objc_msgSend_setFloatValue_forProperty_(v599, v628, v627, v629, v630, 1418);
          }
        }

        v589 = objc_msgSend_countByEnumeratingWithState_objects_count_(v584, v631, v632, v633, v634, &v809, v825, 16);
      }

      while (v589);
    }

    v583 = a1;
  }

  if ((*(v583 + 89) & 1) == 0 && (*(v583 + 90) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((*(v583 + 32) + 8));
    objc_msgSend_willModifyForUpgrade(WeakRetained, v636, v637, v638, v639);

    v583 = a1;
    objc_msgSend_upgradeChartRoundedCornerRadiusWithValue_(*(a1 + 32), v640, 0.0, v641, v642);
  }

  if ((*(v583 + 91) & 1) == 0)
  {
    v643 = objc_loadWeakRetained((*(v583 + 32) + 8));
    objc_msgSend_willModifyForUpgrade(v643, v644, v645, v646, v647);

    v583 = a1;
    v652 = objc_msgSend_intValueForProperty_(*(*(a1 + 32) + 56), v648, v649, v650, v651, 1362);
    objc_msgSend_upgradeStackedSummaryLabelPropertiesWithTitleParagraphStyleIndex_(*(a1 + 32), v653, v654, v655, v656, v652);
    if (objc_msgSend_p_isDownsampledStackedChart(*(a1 + 32), v657, v658, v659, v660))
    {
      v661 = objc_msgSend_context(*(a1 + 32), v579, v580, v581, v582);
      v666 = objc_msgSend_delegate(v661, v662, v663, v664, v665);
      v671 = objc_msgSend_sharedPropertiesProvider(MEMORY[0x277D80610], v667, v668, v669, v670);
      v676 = objc_msgSend_applicationName(v671, v672, v673, v674, v675);

      if (objc_opt_respondsToSelector())
      {
        v680 = sub_276360774(v677, v678, v679);
        v685 = objc_msgSend_localizedStringForKey_value_table_(v680, v681, v682, v683, v684, @"The representative samples of stacked charts with large amounts of data have been improved in the latest version of %@. Stacked charts may look different.", &stru_288528678, @"TSCharts");

        v690 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v686, v687, v688, v689, v685, v676);
        v695 = objc_msgSend_warningWithMessage_(MEMORY[0x277D81368], v691, v692, v693, v694, v690);
        v700 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v696, v697, v698, v699, v695);
        objc_msgSend_addPersistenceWarnings_(v666, v701, v702, v703, v704, v700);
      }

      v583 = a1;
    }
  }

  if ((*(v583 + 92) & 1) == 0)
  {
    v705 = objc_msgSend_sharedPropertiesProvider(MEMORY[0x277D80610], v579, v580, v581, v582);
    v710 = objc_msgSend_designModeEnabled(v705, v706, v707, v708, v709);

    v823 = &unk_28856E8B8;
    v715 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v711, v712, v713, v714, v710 ^ 1u);
    v824 = v715;
    v720 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v716, v717, v718, v719, &v824, &v823, 1);

    objc_msgSend_p_applySeriesTuplesWithThemeSeriesStyles_privateSeriesStyles_propertyDictionary_(*(a1 + 32), v721, v722, v723, v724, *(*(a1 + 32) + 128), *(*(a1 + 32) + 136), v720);
    v583 = a1;
  }

  if ((*(v583 + 93) & 1) == 0)
  {
    v725 = objc_msgSend_sharedPropertiesProvider(MEMORY[0x277D80610], v579, v580, v581, v582);
    v730 = objc_msgSend_designModeEnabled(v725, v726, v727, v728, v729);

    v731 = v730 ^ 1u;
    v821[0] = &unk_28856E8D0;
    v736 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v732, v733, v734, v735, v731);
    v821[1] = &unk_28856E8E8;
    v822[0] = v736;
    v741 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v737, v738, v739, v740, v731);
    v822[1] = v741;
    v746 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v742, v743, v744, v745, v822, v821, 2);

    objc_msgSend_p_applySeriesTuplesWithThemeSeriesStyles_privateSeriesStyles_propertyDictionary_(*(a1 + 32), v747, v748, v749, v750, *(*(a1 + 32) + 128), *(*(a1 + 32) + 136), v746);
    v583 = a1;
  }

  v751 = objc_msgSend_model(*(v583 + 32), v579, v580, v581, v582);
  v756 = objc_msgSend_grid(v751, v752, v753, v754, v755);
  objc_msgSend_validateRowColumnIdMapsAndFix_(v756, v757, v758, v759, v760, 1);

  v765 = a1;
  if (*(a1 + 84) == 2)
  {
    objc_msgSend_reassignPasteboardCustomFormatKeys(*(a1 + 32), v761, v762, v763, v764);
    v766 = objc_loadWeakRetained((*(a1 + 32) + 8));
    objc_msgSend_willModifyForUpgrade(v766, v767, v768, v769, v770);

    v765 = a1;
    objc_msgSend_preserveAppearanceForCurrentPresetAdoptingStylesheet_(*(a1 + 32), v771, v772, v773, v774, 1);
  }

  if ((*(v765 + 94) & 1) == 0)
  {
    v775 = objc_msgSend_chartType(*(v765 + 32), v761, v762, v763, v764);
    v780 = objc_msgSend_is3D(v775, v776, v777, v778, v779);

    v765 = a1;
    if (v780)
    {
      v781 = *(a1 + 32);
      v807[0] = MEMORY[0x277D85DD0];
      v807[1] = 3221225472;
      v807[2] = sub_27637BD80;
      v807[3] = &unk_27A6B6888;
      v808 = *(a1 + 56);
      objc_msgSend_upgradeSceneDepthSettingsForChartInfo_hasConstantDepth_willModifyBlock_(TSCH3DChartLayout, v782, v783, v784, v785, v781, 1, v807);

      v765 = a1;
    }
  }

  if (*(v765 + 72) < *MEMORY[0x277D808C8])
  {
    objc_msgSend_p_upgradeLineChartsFor10(*(v765 + 32), v761, v762, v763, v764);
  }

  v786 = objc_msgSend_sharedPropertiesProvider(MEMORY[0x277D80610], v761, v762, v763, v764);
  v791 = objc_msgSend_designModeEnabled(v786, v787, v788, v789, v790);

  if (v791)
  {
    v796 = objc_msgSend_preset(*(a1 + 32), v792, v793, v794, v795);
    v801 = objc_msgSend_refLineStyle(v796, v797, v798, v799, v800);
    v802 = *(a1 + 32);
    v803 = *(v802 + 88);
    *(v802 + 88) = v801;
  }

  objc_msgSend_debugVerifyPreset(*(a1 + 32), v792, v793, v794, v795);
}

void sub_27637E9CC(uint64_t a1, void *a2, void *a3, unsigned int a4, uint64_t a5, unsigned int a6, void *a7, uint64_t a8)
{
  v67 = a2;
  v14 = a3;
  v15 = a7;
  v16 = v14;
  v21 = objc_msgSend_formatType(v16, v17, v18, v19, v20);
  v26 = v21;
  v27 = v16;
  if (v21 == 261 || v21 == 272)
  {
    goto LABEL_8;
  }

  v27 = v16;
  if (v21 == 269)
  {
    v27 = objc_msgSend_defaultDecimalNumberFormat(TSCHNumberFormat, v22, v23, v24, v25);
  }

  if (v26 != 268)
  {
    a5 = a4;
LABEL_8:
    v28 = objc_msgSend_specificPropertyForGeneric_(v67, v22, v23, v24, v25, a5);
    goto LABEL_9;
  }

  a5 = a6;
  v28 = objc_msgSend_specificPropertyForGeneric_(v67, v22, v23, v24, v25, a6);
LABEL_9:
  v33 = v28;
  if (!v28)
  {
    v33 = objc_msgSend_defaultPropertyForGeneric_(v67, v29, v30, v31, v32, a5);
    if (!v33)
    {
      v34 = MEMORY[0x277D81150];
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "[TSCHChartInfo(NewArchiving) p_saveToUnityArchive:persistentChartInfo:archiver:]_block_invoke");
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_UnityArchiving.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v41, v42, v43, v44, v35, v40, 938, 0, "Unable to find specific or default property");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
      v33 = 0;
    }
  }

  v49 = objc_msgSend_valueForProperty_(v67, v29, v30, v31, v32, a5);
  v50 = TSUCheckedProtocolCast();

  v51 = v27;
  v53 = v50;
  if (v51 | v53)
  {
    isEqual = objc_msgSend_isEqual_(v51, v52, v54, v55, v56, v53, &unk_288578E50);

    if ((isEqual & 1) == 0)
    {
      v62 = objc_msgSend_propertyMapWithPropertiesAndValues_(MEMORY[0x277D80AB8], v58, v59, v60, v61, v33, v51, 0);
      objc_msgSend_setObject_atIndexedSubscript_(v15, v63, v64, v65, v66, v62, a8);
    }
  }
}

void sub_27637F20C(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, void *a5, ...)
{
  va_start(va, a5);

  TSCH::CachedDataFormatterPersistableStyleObjects::~CachedDataFormatterPersistableStyleObjects(va);
  _Unwind_Resume(a1);
}

void sub_27637F2E4(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend_grid(*(a1 + 32), a2, a3, a4, a5);

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCHChartModel(NewArchiving) loadFromUnityArchive:unarchiver:contextForUpgradeOnly:chartInfo:]_block_invoke");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_UnityArchiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 1312, 0, "We should have gotten a grid from SOMEWHERE!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
    v26 = objc_alloc_init(TSCHChartGrid);
    objc_msgSend_setGrid_(*(a1 + 32), v27, v28, v29, v30, v26);
  }

  v31 = *(a1 + 32);
  v32 = objc_msgSend_grid(v31, v7, v8, v9, v10);
  objc_msgSend_setObjectToNotify_(v32, v33, v34, v35, v36, v31);

  *(*(a1 + 32) + 88) = 1;
}

void *sub_276380DF4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276380E38(a1, 0);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_276380E38(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764A8990(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 24, sub_276380EC0);
}

void sub_276380EC0(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_2763811BC(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(a1 + 32) + 208), a2);
  v24 = v4;
  v9 = objc_msgSend_mediator(v24, v5, v6, v7, v8);
  objc_msgSend_setMediator_(*(*(a1 + 32) + 200), v10, v11, v12, v13, v9);

  v14 = *(*(a1 + 32) + 200);
  v19 = objc_msgSend_mediator(v14, v15, v16, v17, v18);
  objc_msgSend_setChartInfo_(v19, v20, v21, v22, v23, v14);
}

id sub_276381538(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  *(v3 + 40) |= 1u;
  v4 = *(v3 + 48);
  if (!v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = MEMORY[0x277C97AC0](v5);
    *(v3 + 48) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = TSCHChartDrawableInfo;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

uint64_t sub_2763815C0(TSCH::ChartArchive *a1)
{
  TSCH::ChartArchive::default_instance(a1);
  v2 = google::protobuf::internal::ExtensionSet::MutableMessage();
  result = objc_msgSend_saveToUnityArchive_persistentChartInfo_archiver_(*(*(a1 + 4) + 200), v3, v4, v5, v6, v2, *(a1 + 4), *(a1 + 5));
  v12 = *(*(a1 + 4) + 208);
  if (v12)
  {
    v13 = *(a1 + 5);
    *(v2 + 40) |= 8u;
    v14 = *(v2 + 216);
    if (!v14)
    {
      v15 = *(v2 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x277C97B90](v15);
      *(v2 + 216) = v14;
    }

    return objc_msgSend_setStrongReference_message_(v13, v8, v9, v10, v11, v12, v14);
  }

  return result;
}

id sub_2763816AC(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v7 = objc_msgSend_null(MEMORY[0x277CBEB68], a2, a3, a4, a5);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = objc_msgSend_numberValueWithDouble_(TSCHChartGridValue, v6, *(a1 + 24), v8, v9);
  }

  else if ((v10 & 8) != 0)
  {
    v11 = objc_msgSend_dateValueWithDouble_(TSCHChartGridValue, v6, *(a1 + 48), v8, v9);
  }

  else
  {
    if ((v10 & 4) == 0)
    {
      goto LABEL_8;
    }

    v11 = objc_msgSend_durationValueWithDouble_(TSCHChartGridValue, v6, *(a1 + 40), v8, v9);
  }

  v12 = v11;

  v7 = v12;
LABEL_8:

  return v7;
}

void sub_276381784(void *a1, uint64_t a2)
{
  v15 = a1;
  v7 = objc_msgSend_chartGridValueType(v15, v3, v4, v5, v6);
  switch(v7)
  {
    case 1:
      objc_msgSend_doubleValue(v15, v8, v9, v10, v11);
      v13 = 1;
      v14 = 24;
      break;
    case 2:
      objc_msgSend_doubleValue(v15, v8, v9, v10, v11);
      v13 = 8;
      v14 = 48;
      break;
    case 3:
      objc_msgSend_doubleValue(v15, v8, v9, v10, v11);
      v13 = 4;
      v14 = 40;
      break;
    default:
      goto LABEL_8;
  }

  *(a2 + 16) |= v13;
  *(a2 + v14) = v12;
LABEL_8:
}

id sub_276381840(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = *(a1 + 24);
  v8 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3, a4, a5);
  if (v6 >= 1)
  {
    v12 = 8;
    do
    {
      v13 = sub_2763816AC(*(*(a1 + 32) + v12), v7, v9, v10, v11);
      objc_msgSend_addObject_(v8, v14, v15, v16, v17, v13);

      v12 += 8;
      --v6;
    }

    while (v6);
  }

  return v8;
}

void sub_2763818F4(void *a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = a1;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, v5, v6, v7, &v22, v26, 16);
  if (v8)
  {
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = TSUProtocolCast();
        v12 = *(a2 + 32);
        if (!v12)
        {
          goto LABEL_11;
        }

        v13 = *(a2 + 24);
        v14 = *v12;
        if (v13 < *v12)
        {
          *(a2 + 24) = v13 + 1;
          v15 = *&v12[2 * v13 + 2];
          goto LABEL_13;
        }

        if (v14 == *(a2 + 28))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 16));
          v12 = *(a2 + 32);
          v14 = *v12;
        }

        *v12 = v14 + 1;
        v15 = sub_276407010(*(a2 + 16));
        v16 = *(a2 + 24);
        v17 = *(a2 + 32) + 8 * v16;
        *(a2 + 24) = v16 + 1;
        *(v17 + 8) = v15;
LABEL_13:
        sub_276381784(v11, v15);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v18, v19, v20, v21, &v22, v26, 16, &unk_2885724B0);
    }

    while (v8);
  }
}

void sub_27638228C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, "[TSKDocumentRoot(ChartUIStateAccess) UIStateForChart:]");
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartUIState.mm");
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v17, v18, v19, v20, v9, v14, 136, 0, "Abstract method not overridden by %{public}@", v16);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  v25 = MEMORY[0x277CBEAD8];
  v26 = MEMORY[0x277CCACA8];
  v27 = objc_opt_class();
  v28 = NSStringFromClass(v27);
  v33 = objc_msgSend_stringWithFormat_(v26, v29, v30, v31, v32, @"Abstract method not overridden by %@: %s", v28, "[TSKDocumentRoot(ChartUIStateAccess) UIStateForChart:]");
  v38 = objc_msgSend_exceptionWithName_reason_userInfo_(v25, v34, v35, v36, v37, *MEMORY[0x277CBE658], v33, 0);
  v39 = v38;

  objc_exception_throw(v38);
}

void sub_27638240C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277D81150];
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSKDocumentRoot(ChartUIStateAccess) setUIState:forChart:]");
  v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartUIState.mm");
  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v20, v21, v22, v23, v12, v17, 140, 0, "Abstract method not overridden by %{public}@", v19);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  v28 = MEMORY[0x277CBEAD8];
  v29 = MEMORY[0x277CCACA8];
  v30 = objc_opt_class();
  v31 = NSStringFromClass(v30);
  v36 = objc_msgSend_stringWithFormat_(v29, v32, v33, v34, v35, @"Abstract method not overridden by %@: %s", v31, "[TSKDocumentRoot(ChartUIStateAccess) setUIState:forChart:]");
  v41 = objc_msgSend_exceptionWithName_reason_userInfo_(v28, v37, v38, v39, v40, *MEMORY[0x277CBE658], v36, 0);
  v42 = v41;

  objc_exception_throw(v41);
}

void sub_276382950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276382968(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  result = objc_msgSend_calcMinSizeForModel_(*(a1 + 32), a2, a3, a4, a5, a2);
  v9 = *(*(a1 + 40) + 8);
  if (*(v9 + 40) >= v8)
  {
    v8 = *(v9 + 40);
  }

  *(v9 + 40) = v8;
  v10 = *(*(a1 + 40) + 8);
  if (*(v10 + 32) >= v7)
  {
    v7 = *(v10 + 32);
  }

  *(v10 + 32) = v7;
  return result;
}

id sub_276383F54(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = a1;
  objc_opt_class();
  v13 = TSUCheckedDynamicCast();

  objc_opt_class();
  v14 = TSUCheckedDynamicCast();

  v19 = objc_msgSend_objectForKey_(v9, v15, v16, v17, v18, v14);

  if (a5)
  {
    v24 = objc_msgSend_propertyMap(v14, v20, v21, v22, v23);
    v29 = v24;
    if (v24)
    {
      v30 = v24;
    }

    else
    {
      v30 = objc_msgSend_propertyMap(MEMORY[0x277D80AB8], v25, v26, v27, v28);
    }

    v41 = v30;
    v42 = objc_msgSend_allProperties(v30, v31, v32, v33, v34);
    v47 = objc_msgSend_propertyMap(v13, v43, v44, v45, v46);
    v52 = objc_msgSend_allProperties(v47, v48, v49, v50, v51);
    v57 = objc_msgSend_propertySetByRemovingPropertiesFromSet_(v52, v53, v54, v55, v56, v42);

    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = sub_2763846E0;
    v88[3] = &unk_27A6B6D88;
    v89 = v14;
    v58 = v41;
    v90 = v58;
    objc_msgSend_enumeratePropertiesUsingBlock_(v57, v59, v60, v61, v62, v88);
  }

  else
  {
    v35 = objc_msgSend_overridePropertyMap(v14, v20, v21, v22, v23);
    v29 = v35;
    if (v35)
    {
      v40 = v35;
    }

    else
    {
      v40 = objc_msgSend_propertyMap(MEMORY[0x277D80AB8], v36, v37, v38, v39);
    }

    v58 = v40;
  }

  if (!v58)
  {
    v67 = MEMORY[0x277D81150];
    v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v64, v65, v66, "id GetVariation(TSSStylesheet *__strong, __strong id, __strong id, TSUNoCopyDictionary *__strong, BOOL)");
    v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, v70, v71, v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoApplyPreset.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v74, v75, v76, v77, v68, v73, 93, 0, "invalid nil value for '%{public}s'", "map");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v78, v79, v80, v81);
  }

  objc_msgSend_addValuesFromPropertyMap_(v58, v63, v64, v65, v66, v19);
  v86 = objc_msgSend_variationOfStyle_propertyMap_(v12, v82, v83, v84, v85, v13, v58);

  return v86;
}

void sub_27638420C(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  v12 = objc_msgSend_valueAxisStyles(v6, v8, v9, v10, v11);
  v17 = v12;
  if (*(a1 + 64) >= a3)
  {
    objc_msgSend_objectAtIndexedSubscript_(v12, v13, v14, v15, v16, a3);
  }

  else
  {
    objc_msgSend_objectAtIndexedSubscript_(v12, v13, v14, v15, v16, *(a1 + 64));
  }
  v18 = ;
  v23 = sub_276383F54(v5, v18, v7, *(a1 + 48), *(a1 + 72));

  objc_msgSend_addObject_(*(a1 + 56), v19, v20, v21, v22, v23);
}

void sub_2763842C8(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  v12 = objc_msgSend_categoryAxisStyles(v6, v8, v9, v10, v11);
  v17 = v12;
  if (*(a1 + 64) >= a3)
  {
    objc_msgSend_objectAtIndexedSubscript_(v12, v13, v14, v15, v16, a3);
  }

  else
  {
    objc_msgSend_objectAtIndexedSubscript_(v12, v13, v14, v15, v16, *(a1 + 64));
  }
  v18 = ;
  v23 = sub_276383F54(v5, v18, v7, *(a1 + 48), *(a1 + 72));

  objc_msgSend_addObject_(*(a1 + 56), v19, v20, v21, v22, v23);
}

void sub_276384384(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = objc_opt_class();
  v45 = sub_2762CD788(v6, v5);

  v11 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v7, v8, v9, v10, a3 % *(a1 + 72));

  objc_opt_class();
  v16 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40), v12, v13, v14, v15, v45);
  v17 = TSUCheckedDynamicCast();

  if ((v45 != v11 || (*(a1 + 88) & 1) != 0 || objc_msgSend_count(v17, v18, v19, v20, v21)) && (objc_msgSend_null(MEMORY[0x277CBEB68], v18, v19, v20, v21), v22 = objc_claimAutoreleasedReturnValue(), isEqual = objc_msgSend_isEqual_(v22, v23, v24, v25, v26, v45), v22, !isEqual))
  {
    v34 = *(a1 + 56);
    v35 = objc_msgSend_seriesThemeStyles(*(a1 + 64), v18, v19, v20, v21);
    v40 = objc_msgSend_objectAtIndexedSubscript_(v35, v36, v37, v38, v39, a3 % *(a1 + 80));
    v29 = sub_276383F54(v34, v40, v45, *(a1 + 40), *(a1 + 88));

    objc_msgSend_addObject_(*(a1 + 48), v41, v42, v43, v44, v29);
  }

  else
  {
    v28 = *(a1 + 48);
    v29 = objc_msgSend_null(MEMORY[0x277CBEB68], v18, v19, v20, v21);
    objc_msgSend_addObject_(v28, v30, v31, v32, v33, v29);
  }
}

void sub_276384524(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = objc_opt_class();
  v13 = objc_msgSend_tsu_objectForKey_withDefaultOfClass_(v5, v9, v10, v11, v12, v7, v8);

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_27638464C;
  v20[3] = &unk_27A6BA1D0;
  v21 = *(a1 + 40);
  v22 = *(a1 + 48);
  v14 = *(a1 + 56);
  v25 = *(a1 + 64);
  v23 = v14;
  v24 = v13;
  v15 = v13;
  objc_msgSend_enumerateObjectsUsingBlock_(v6, v16, v17, v18, v19, v20);
}

void sub_27638464C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v10 = objc_msgSend_refLineStyle(v4, v6, v7, v8, v9);
  v15 = sub_276383F54(v3, v10, v5, *(a1 + 48), *(a1 + 64));

  objc_msgSend_addObject_(*(a1 + 56), v11, v12, v13, v14, v15);
}

void sub_2763846E0(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v7 = objc_msgSend_boxedValueForProperty_(*(a1 + 32), a2, a3, a4, a5, a2);
  if (v7)
  {
    v11 = v7;
    objc_msgSend_setBoxedObject_forProperty_(*(a1 + 40), v7, v8, v9, v10, v7, a2);
    v7 = v11;
  }
}

void sub_2763853A4(void *a1@<X2>, _OWORD *a2@<X3>, _OWORD *a3@<X8>)
{
  v5 = a1;
  if (!v5)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "T TSCH3D::AssertSafeValue(__strong id, SEL, __strong id, T) [T = glm::detail::tvec4<float>]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DUtilities.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 17, 0, "cannot get safe value from nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    v5 = 0;
  }

  *a3 = *a2;
}

uint64_t sub_2763931BC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.sos.pb.cc", a4);
  qword_2812EE828 = 0;
  unk_2812EE830 = 0;
  qword_2812EE820 = &unk_28851F840;
  dword_2812EE838 = 0;
  if (atomic_load_explicit(dword_2812EC620, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EE910 = 0;
  xmmword_2812EE8F0 = 0u;
  unk_2812EE900 = 0u;
  xmmword_2812EE8D0 = 0u;
  unk_2812EE8E0 = 0u;
  xmmword_2812EE8B0 = 0u;
  unk_2812EE8C0 = 0u;
  xmmword_2812EE890 = 0u;
  unk_2812EE8A0 = 0u;
  xmmword_2812EE870 = 0u;
  unk_2812EE880 = 0u;
  xmmword_2812EE850 = 0u;
  unk_2812EE860 = 0u;
  xmmword_2812EE840 = 0u;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &qword_2812EE820);
}

uint64_t sub_276393288(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.sos.pb.cc", a4);
  qword_2812EE920 = 0;
  unk_2812EE928 = 0;
  qword_2812EE918 = &unk_28851F8F0;
  qword_2812EE930 = 0;
  if (atomic_load_explicit(dword_2812EC670, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  xmmword_2812EEAA8 = 0u;
  unk_2812EEAB8 = 0u;
  xmmword_2812EEA88 = 0u;
  unk_2812EEA98 = 0u;
  xmmword_2812EEA68 = 0u;
  unk_2812EEA78 = 0u;
  xmmword_2812EEA48 = 0u;
  unk_2812EEA58 = 0u;
  xmmword_2812EEA28 = 0u;
  unk_2812EEA38 = 0u;
  xmmword_2812EEA08 = 0u;
  unk_2812EEA18 = 0u;
  xmmword_2812EE9E8 = 0u;
  unk_2812EE9F8 = 0u;
  xmmword_2812EE9C8 = 0u;
  unk_2812EE9D8 = 0u;
  xmmword_2812EE9A8 = 0u;
  unk_2812EE9B8 = 0u;
  xmmword_2812EE988 = 0u;
  unk_2812EE998 = 0u;
  xmmword_2812EE968 = 0u;
  unk_2812EE978 = 0u;
  xmmword_2812EE948 = 0u;
  unk_2812EE958 = 0u;
  xmmword_2812EE938 = 0u;
  xmmword_2812EEAC6 = 0u;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &qword_2812EE918);
}

uint64_t sub_276393370(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.sos.pb.cc", a4);
  qword_2812EEAD8 = &unk_28851F9A0;
  unk_2812EEAE0 = 0;
  dword_2812EEAE8 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &qword_2812EEAD8);
}

uint64_t sub_2763933E8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812EEAF8 = v4;
  qword_2812EEAF0 = &unk_28851FA50;
  if (atomic_load_explicit(dword_2812EC6C8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812EEB25 = 0u;
  unk_2812EEB18 = 0u;
  unk_2812EEB08 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812EEAF0);
}

uint64_t sub_2763934A4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.sos.pb.cc", a4);
  qword_2812EEB40 = 0;
  unk_2812EEB48 = 0;
  qword_2812EEB38 = &unk_28851FB00;
  qword_2812EEB50 = 0;
  if (atomic_load_explicit(dword_2812EC708, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  xmmword_2812EEC78 = 0u;
  unk_2812EEC88 = 0u;
  xmmword_2812EEC58 = 0u;
  unk_2812EEC68 = 0u;
  xmmword_2812EEC38 = 0u;
  unk_2812EEC48 = 0u;
  xmmword_2812EEC18 = 0u;
  unk_2812EEC28 = 0u;
  xmmword_2812EEBF8 = 0u;
  unk_2812EEC08 = 0u;
  xmmword_2812EEBD8 = 0u;
  unk_2812EEBE8 = 0u;
  xmmword_2812EEBB8 = 0u;
  unk_2812EEBC8 = 0u;
  xmmword_2812EEB98 = 0u;
  unk_2812EEBA8 = 0u;
  xmmword_2812EEB78 = 0u;
  unk_2812EEB88 = 0u;
  xmmword_2812EEB58 = 0u;
  unk_2812EEB68 = 0u;
  xmmword_2812EEC95 = 0u;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &qword_2812EEB38);
}

uint64_t sub_276393580(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812EECB0 = v4;
  qword_2812EECA8 = &unk_28851FBB0;
  if (atomic_load_explicit(dword_2812EC758, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812EECEE = 0;
  unk_2812EECE0 = 0u;
  unk_2812EECD0 = 0u;
  unk_2812EECC0 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812EECA8);
}

uint64_t sub_276393640(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812EED00 = v4;
  qword_2812EECF8 = &unk_28851FC60;
  if (atomic_load_explicit(dword_2812EC790, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812EED30 = 0;
  unk_2812EED20 = 0u;
  unk_2812EED10 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812EECF8);
}

uint64_t sub_2763936FC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.sos.pb.cc", a4);
  qword_2812EED38 = &unk_28851FD10;
  unk_2812EED40 = 0;
  xmmword_2812EED48 = 0u;
  unk_2812EED58 = 0u;
  if (atomic_load_explicit(dword_2812EC7C0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  bzero(&unk_2812EED68, 0x372uLL);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &qword_2812EED38);
}

uint64_t sub_2763937B0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.sos.pb.cc", a4);
  qword_2812EF0E0 = &unk_28851FDC0;
  *algn_2812EF0E8 = 0;
  xmmword_2812EF0F0 = 0u;
  unk_2812EF100 = 0u;
  dword_2812EF110 = 0;
  if (atomic_load_explicit(dword_2812EC810, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  bzero(&unk_2812EF118, 0x426uLL);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &qword_2812EF0E0);
}

uint64_t sub_276393868(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.sos.pb.cc", a4);
  qword_2812EF548 = 0;
  unk_2812EF550 = 0;
  qword_2812EF540 = &unk_28851FE70;
  dword_2812EF558 = 0;
  if (atomic_load_explicit(dword_2812EC860, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  xmmword_2812EF630 = 0u;
  unk_2812EF640 = 0u;
  xmmword_2812EF610 = 0u;
  unk_2812EF620 = 0u;
  xmmword_2812EF5F0 = 0u;
  unk_2812EF600 = 0u;
  xmmword_2812EF5D0 = 0u;
  unk_2812EF5E0 = 0u;
  xmmword_2812EF5B0 = 0u;
  unk_2812EF5C0 = 0u;
  xmmword_2812EF590 = 0u;
  unk_2812EF5A0 = 0u;
  xmmword_2812EF560 = 0u;
  xmmword_2812EF570 = 0u;
  unk_2812EF580 = 0u;
  unk_2812EF64C = 0u;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &qword_2812EF540);
}

uint64_t sub_27639393C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812EE768 = v4;
  qword_2812EE760 = &unk_28851F420;
  if (atomic_load_explicit(dword_2812EC8B8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EE778 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812EE760);
}

uint64_t sub_2763939EC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812EE788 = v4;
  qword_2812EE780 = &unk_28851F4D0;
  if (atomic_load_explicit(dword_2812EC8D8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EE798 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812EE780);
}

uint64_t sub_276393A9C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812EE7A8 = v4;
  qword_2812EE7A0 = &unk_28851F580;
  if (atomic_load_explicit(dword_2812EC8F8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EE7B8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812EE7A0);
}

uint64_t sub_276393B4C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812EE7C8 = v4;
  qword_2812EE7C0 = &unk_28851F630;
  if (atomic_load_explicit(dword_2812EC918, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EE7D8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812EE7C0);
}

uint64_t sub_276393BFC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812EE7E8 = v4;
  qword_2812EE7E0 = &unk_28851F6E0;
  if (atomic_load_explicit(dword_2812EC938, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EE7F8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812EE7E0);
}

uint64_t sub_276393CAC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812EE808 = v4;
  qword_2812EE800 = &unk_28851F790;
  if (atomic_load_explicit(dword_2812EC958, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EE818 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812EE800);
}

uint64_t sub_276393D5C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812EE678 = v4;
  qword_2812EE670 = &unk_28851F000;
  if (atomic_load_explicit(dword_2812EC978, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812EE690 = 0;
  qword_2812EE688 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812EE670);
}

uint64_t sub_276393E10(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812EE6A0 = v4;
  qword_2812EE698 = &unk_28851F0B0;
  if (atomic_load_explicit(dword_2812EC998, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812EE6B8 = 0;
  qword_2812EE6B0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812EE698);
}

uint64_t sub_276393EC4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812EE6C8 = v4;
  qword_2812EE6C0 = &unk_28851F160;
  if (atomic_load_explicit(dword_2812EC9B8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812EE6E0 = 0;
  qword_2812EE6D8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812EE6C0);
}

uint64_t sub_276393F78(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.sos.pb.cc", a4);
  *&v4 = 0;
  *algn_2812EE6F0 = v4;
  qword_2812EE6E8 = &unk_28851F210;
  if (atomic_load_explicit(dword_2812EC9D8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812EE708 = 0;
  qword_2812EE700 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812EE6E8);
}

uint64_t sub_27639402C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812EE718 = v4;
  qword_2812EE710 = &unk_28851F2C0;
  if (atomic_load_explicit(dword_2812EC9F8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812EE730 = 0;
  qword_2812EE728 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812EE710);
}

uint64_t sub_2763940E0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812EE740 = v4;
  qword_2812EE738 = &unk_28851F370;
  if (atomic_load_explicit(dword_2812ECA18, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812EE758 = 0;
  qword_2812EE750 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812EE738);
}

uint64_t *sub_276394194(uint64_t *a1)
{
  if (a1 != &qword_2812EE670 && a1[3])
  {
    v2 = sub_27643EBB8();
    MEMORY[0x277C98580](v2, 0x10A1C4000E43543);
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

uint64_t *sub_2763941F4(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = v1 & 0xFFFFFFFFFFFFFFFELL;
    if (!*(v1 & 0xFFFFFFFFFFFFFFFELL) && v2 != 0)
    {
      v4 = *(v2 + 8);
      if (v4 != *(v2 + 16))
      {
        google::protobuf::UnknownFieldSet::ClearFallback((v2 + 8));
        v4 = *(v2 + 8);
      }

      if (v4)
      {
        *(v2 + 16) = v4;
        operator delete(v4);
      }

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_27639428C(uint64_t *a1)
{
  sub_276394194(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_2763942CC(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = sub_27643EBFC(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 24) = 0;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_2763D4FD4(v2);
  }

  return result;
}

google::protobuf::internal *sub_27639432C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v22) & 1) == 0)
  {
    while (1)
    {
      v7 = (v22 + 1);
      v8 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v9 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v16 = *(a1 + 24);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = sub_276447688(v17);
            *(a1 + 24) = v16;
            v7 = v22;
          }

          v12 = sub_2764A89C8(a3, v16, v7);
        }

        else
        {
LABEL_12:
          if (v8)
          {
            v11 = (v8 & 7) == 4;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2763D4E10((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v22 = v12;
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v14 = (v7 + 1);
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_23:
        v22 = v14;
        *(a1 + 32) = v13 != 0;
        goto LABEL_30;
      }

      v20 = google::protobuf::internal::VarintParseSlow64(v7, v13);
      v22 = v20;
      *(a1 + 32) = v21 != 0;
      if (!v20)
      {
LABEL_37:
        v22 = 0;
        goto LABEL_2;
      }

LABEL_30:
      if (sub_2763D4D98(a3, &v22))
      {
        goto LABEL_2;
      }
    }

    v7 = (v22 + 2);
LABEL_6:
    v22 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v22;
}

unsigned __int8 *sub_276394518(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 10;
    v7 = *(v6 + 20);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = sub_27643EEC4(v6, v8, this);
  }

  if ((v5 & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v12 = *(a1 + 32);
    *a2 = 16;
    a2[1] = v12;
    a2 += 2;
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276394648(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v2 & 2;
  if (v2)
  {
    v4 = sub_27643F014(*(a1 + 24));
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_2763946D8(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_28851FF10, 0);
  if (v4)
  {

    return sub_276394780(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276394780(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = sub_276447688(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &unk_2812F12A8;
      }

      result = sub_27643F1BC(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return result;
}

uint64_t *sub_276394834(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2763942CC(result);

    return sub_2763946D8(v4, a2);
  }

  return result;
}

BOOL sub_276394880(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 2) == 0)
  {
    return 0;
  }

  if ((v1 & 1) == 0)
  {
    return 1;
  }

  result = sub_27643F2FC(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_2763948BC(uint64_t *result, uint64_t *a2)
{
  v2 = result;
  v3 = *a2;
  if (*result)
  {
    if ((v3 & 1) == 0)
    {
      v4 = sub_2763D4E10(a2);
      goto LABEL_6;
    }
  }

  else if ((v3 & 1) == 0)
  {
    return result;
  }

  v4 = ((v3 & 0xFFFFFFFFFFFFFFFELL) + 8);
LABEL_6:

  return sub_2763D5024(v2, v4);
}

uint64_t *sub_276394960(uint64_t *a1)
{
  if (a1 != &qword_2812EE698)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = sub_276446C88(v2);
      MEMORY[0x277C98580](v3, 0x1081C40825B58B5);
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_2763949C4(uint64_t *a1)
{
  sub_276394960(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276394A04(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = sub_27643B6DC(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 24) = 0;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_2763D4FD4(v2);
  }

  return result;
}

google::protobuf::internal *sub_276394A64(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v22) & 1) == 0)
  {
    while (1)
    {
      v7 = (v22 + 1);
      v8 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v9 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v16 = *(a1 + 24);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = sub_276447FD4(v17);
            *(a1 + 24) = v16;
            v7 = v22;
          }

          v12 = sub_2764A8A98(a3, v16, v7);
        }

        else
        {
LABEL_12:
          if (v8)
          {
            v11 = (v8 & 7) == 4;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2763D4E10((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v22 = v12;
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v14 = (v7 + 1);
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_23:
        v22 = v14;
        *(a1 + 32) = v13 != 0;
        goto LABEL_30;
      }

      v20 = google::protobuf::internal::VarintParseSlow64(v7, v13);
      v22 = v20;
      *(a1 + 32) = v21 != 0;
      if (!v20)
      {
LABEL_37:
        v22 = 0;
        goto LABEL_2;
      }

LABEL_30:
      if (sub_2763D4D98(a3, &v22))
      {
        goto LABEL_2;
      }
    }

    v7 = (v22 + 2);
LABEL_6:
    v22 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v22;
}

unsigned __int8 *sub_276394C50(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 10;
    v7 = *(v6 + 20);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = (a2 + 3);
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = (a2 + 3);
      }
    }

    else
    {
      a2[1] = v7;
      v8 = (a2 + 2);
    }

    a2 = sub_276446ECC(v6, v8, this);
  }

  if ((v5 & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v12 = *(a1 + 32);
    *a2 = 16;
    a2[1] = v12;
    a2 += 2;
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276394D80(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v2 & 2;
  if (v2)
  {
    v4 = sub_276447014(*(a1 + 24));
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_276394E10(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_28851FF28, 0);
  if (v4)
  {

    return sub_276394EB8(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276394EB8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = sub_276447FD4(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &qword_2812F15A8;
      }

      result = sub_27643BB14(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return result;
}

uint64_t *sub_276394F6C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276394A04(result);

    return sub_276394E10(v4, a2);
  }

  return result;
}

BOOL sub_276394FB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 2) == 0)
  {
    return 0;
  }

  if ((v1 & 1) == 0)
  {
    return 1;
  }

  result = sub_27643BC1C(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_27639502C(uint64_t *a1)
{
  if (a1 != &qword_2812EE6C0 && a1[3])
  {
    v2 = sub_2764009F8();
    MEMORY[0x277C98580](v2, 0x1081C4085BC40B3);
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_276395090(uint64_t *a1)
{
  sub_27639502C(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_2763950D0(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = sub_276400A3C(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 24) = 0;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_2763D4FD4(v2);
  }

  return result;
}

google::protobuf::internal *sub_276395130(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v22) & 1) == 0)
  {
    while (1)
    {
      v7 = (v22 + 1);
      v8 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v9 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v16 = *(a1 + 24);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = sub_276406A94(v17);
            *(a1 + 24) = v16;
            v7 = v22;
          }

          v12 = sub_2764A8B68(a3, v16, v7);
        }

        else
        {
LABEL_12:
          if (v8)
          {
            v11 = (v8 & 7) == 4;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2763D4E10((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v22 = v12;
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v14 = (v7 + 1);
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_23:
        v22 = v14;
        *(a1 + 32) = v13 != 0;
        goto LABEL_30;
      }

      v20 = google::protobuf::internal::VarintParseSlow64(v7, v13);
      v22 = v20;
      *(a1 + 32) = v21 != 0;
      if (!v20)
      {
LABEL_37:
        v22 = 0;
        goto LABEL_2;
      }

LABEL_30:
      if (sub_2763D4D98(a3, &v22))
      {
        goto LABEL_2;
      }
    }

    v7 = (v22 + 2);
LABEL_6:
    v22 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v22;
}

unsigned __int8 *sub_27639531C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 10;
    v7 = *(v6 + 32);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = (a2 + 3);
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = (a2 + 3);
      }
    }

    else
    {
      a2[1] = v7;
      v8 = (a2 + 2);
    }

    a2 = sub_276400C0C(v6, v8, this);
  }

  if ((v5 & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v12 = *(a1 + 32);
    *a2 = 16;
    a2[1] = v12;
    a2 += 2;
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_27639544C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v2 & 2;
  if (v2)
  {
    v4 = sub_276400CD4(*(a1 + 24));
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_2763954DC(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_28851FF40, 0);
  if (v4)
  {

    return sub_276395584(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276395584(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = sub_276406A94(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &qword_2812F01D8;
      }

      result = sub_276400DA8(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return result;
}

uint64_t *sub_276395638(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2763950D0(result);

    return sub_2763954DC(v4, a2);
  }

  return result;
}

uint64_t *sub_2763956C8(uint64_t *a1)
{
  if (a1 != &qword_2812EE6E8)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = sub_276400574(v2);
      MEMORY[0x277C98580](v3, 0x1081C404FE48876);
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_27639572C(uint64_t *a1)
{
  sub_2763956C8(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27639576C(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = sub_2764005FC(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 24) = 0;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_2763D4FD4(v2);
  }

  return result;
}

google::protobuf::internal *sub_2763957CC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v22) & 1) == 0)
  {
    while (1)
    {
      v7 = (v22 + 1);
      v8 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v9 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v16 = *(a1 + 24);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = sub_276406A24(v17);
            *(a1 + 24) = v16;
            v7 = v22;
          }

          v12 = sub_2764A8C38(a3, v16, v7);
        }

        else
        {
LABEL_12:
          if (v8)
          {
            v11 = (v8 & 7) == 4;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2763D4E10((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v22 = v12;
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v14 = (v7 + 1);
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_23:
        v22 = v14;
        *(a1 + 32) = v13 != 0;
        goto LABEL_30;
      }

      v20 = google::protobuf::internal::VarintParseSlow64(v7, v13);
      v22 = v20;
      *(a1 + 32) = v21 != 0;
      if (!v20)
      {
LABEL_37:
        v22 = 0;
        goto LABEL_2;
      }

LABEL_30:
      if (sub_2763D4D98(a3, &v22))
      {
        goto LABEL_2;
      }
    }

    v7 = (v22 + 2);
LABEL_6:
    v22 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v22;
}

unsigned __int8 *sub_2763959B8(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 10;
    v7 = *(v6 + 20);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = (a2 + 3);
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = (a2 + 3);
      }
    }

    else
    {
      a2[1] = v7;
      v8 = (a2 + 2);
    }

    a2 = sub_27640074C(v6, v8, this);
  }

  if ((v5 & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v12 = *(a1 + 32);
    *a2 = 16;
    a2[1] = v12;
    a2 += 2;
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276395AE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v2 & 2;
  if (v2)
  {
    v4 = sub_2764007DC(*(a1 + 24));
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

void sub_276395B78(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_28851FF58, 0);
  if (v4)
  {

    sub_276395C20(a1, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

void sub_276395C20(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_2763D4F88((a1 + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(a1 + 16) |= 1u;
      v6 = *(a1 + 24);
      if (!v6)
      {
        v7 = *(a1 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = sub_276406A24(v7);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &qword_2812F01B8;
      }

      sub_2764008B8(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(a1 + 32) = *(a2 + 32);
    }

    *(a1 + 16) |= v5;
  }
}

void sub_276395CD4(uint64_t *a1, uint64_t *a2)
{
  if (a2 != a1)
  {
    sub_27639576C(a1);

    sub_276395B78(a1, a2);
  }
}

uint64_t *sub_276395D64(uint64_t *a1)
{
  if (a1 != &qword_2812EE710 && a1[3])
  {
    v2 = MEMORY[0x277C97400]();
    MEMORY[0x277C98580](v2, 0x10A1C4029F168B5);
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_276395DC8(uint64_t *a1)
{
  sub_276395D64(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276395E08(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = TSK::FormatStructArchive::Clear(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 24) = 0;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_2763D4FD4(v2);
  }

  return result;
}

google::protobuf::internal *sub_276395E68(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v23) & 1) == 0)
  {
    while (1)
    {
      v7 = (v23 + 1);
      v8 = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v9 - 128));
      v23 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v20;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v16 = *(a1 + 24);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v18 = MEMORY[0x277C97B00](v17);
            LODWORD(v16) = v18;
            *(a1 + 24) = v18;
            v7 = v23;
          }

          v12 = sub_2764A8D08(a3, v16, v7);
        }

        else
        {
LABEL_12:
          if (v8)
          {
            v11 = (v8 & 7) == 4;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2763D4E10((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v23 = v12;
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v14 = (v7 + 1);
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_23:
        v23 = v14;
        *(a1 + 32) = v13 != 0;
        goto LABEL_30;
      }

      v21 = google::protobuf::internal::VarintParseSlow64(v7, v13);
      v23 = v21;
      *(a1 + 32) = v22 != 0;
      if (!v21)
      {
LABEL_37:
        v23 = 0;
        goto LABEL_2;
      }

LABEL_30:
      if (sub_2763D4D98(a3, &v23))
      {
        goto LABEL_2;
      }
    }

    v7 = (v23 + 2);
LABEL_6:
    v23 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v23;
}

unsigned __int8 *sub_276396054(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 10;
    v7 = *(v6 + 12);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSK::FormatStructArchive::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(a1 + 32);
    *a2 = 16;
    a2[1] = v12;
    a2 += 2;
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276396184(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v2 & 2;
  if (v2)
  {
    v4 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 24));
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}