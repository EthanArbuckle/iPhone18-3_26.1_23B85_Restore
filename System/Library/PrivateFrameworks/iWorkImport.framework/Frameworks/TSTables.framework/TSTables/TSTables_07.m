void sub_2211F14E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 8);
  v6 = v4[7];
  v5 = v4[8];
  if (v6 >= v5)
  {
    v8 = v4[6];
    v9 = (v6 - v8) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      sub_22107C148();
    }

    v11 = v5 - v8;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_221086F74((v4 + 6), v12);
    }

    v13 = (16 * v9);
    *v13 = a2;
    v13[1] = a3;
    v7 = 16 * v9 + 16;
    v14 = v4[6];
    v15 = v4[7] - v14;
    v16 = (16 * v9 - v15);
    memcpy(v16, v14, v15);
    v17 = v4[6];
    v4[6] = v16;
    v4[7] = v7;
    v4[8] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v6 = a2;
    v6[1] = a3;
    v7 = (v6 + 2);
  }

  v4[7] = v7;
}

void sub_2211F16CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2211F16EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2211F1704(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v12._lower = a2;
  v12._upper = a3;
  v7 = TSKUIDStruct::description(&v12);
  v8 = *(*(*(a1 + 32) + 8) + 40);
  if (v8)
  {
    objc_msgSend_appendFormat_(v8, v4, @", %@", v5, v6, v7);
  }

  else
  {
    v9 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v4, v7, v5, v6);
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_2211F18BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void *sub_2211F18E0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7[0] = a2;
  v7[1] = a3;
  result = sub_2210875C4((*(a1 + 32) + 8), v7);
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_2211F1A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void *sub_2211F1A54(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7[0] = a2;
  v7[1] = a3;
  result = sub_2210875C4((*(a1 + 32) + 8), v7);
  if (!result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_2211F1C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_2211F1C94(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t sub_2211F1CA4(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = *(*(result + 32) + 8);
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *a4 = 1;
  return result;
}

void sub_2211F24C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2211F24EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_p_addUUID_(*(a1 + 32), a2, a2, a3, a5);
  if (result)
  {
    v11 = *(*(*(a1 + 40) + 8) + 40);
    if (!v11)
    {
      v12 = objc_opt_new();
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      v11 = *(*(*(a1 + 40) + 8) + 40);
    }

    return objc_msgSend_addUUID_(v11, v9, a2, a3, v10);
  }

  return result;
}

void sub_2211F265C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2211F2678(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_p_removeUUID_(*(a1 + 32), a2, a2, a3, a5);
  v7 = *(*(a1 + 40) + 8);
  if (result)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(v7 + 24);
  }

  *(v7 + 24) = v8 & 1;
  return result;
}

void sub_2211F27D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2211F27F4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_p_removeUUID_(*(a1 + 32), a2, a2, a3, a5);
  if (result)
  {
    v11 = *(*(*(a1 + 40) + 8) + 40);
    if (!v11)
    {
      v12 = objc_opt_new();
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      v11 = *(*(*(a1 + 40) + 8) + 40);
    }

    return objc_msgSend_addUUID_(v11, v9, a2, a3, v10);
  }

  return result;
}

void sub_2211F2900(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        *(v8 + 1) = *(a2 + 1);
        v9 = *v8;
        v10 = v8[3] ^ v8[2];
        v8[1] = v10;
        v11 = sub_2211F2A14(a1, v10, v8 + 2);
        sub_2210BD408(a1, v8, v11);
        a2 = *a2;
        v8 = v9;
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_2211F2DE8();
  }
}

void sub_2211F29E0(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void *sub_2211F2A14(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_2211F2B78(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    if (v19 == a2)
    {
      v21 = v16[2] == *a3 && v16[3] == a3[1];
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22 != (v17 & 1);
    v24 = v17 & v23;
    v17 |= v23;
  }

  while (v24 != 1);
  return result;
}

void sub_2211F2B78(uint64_t a1, size_t __n)
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

      sub_2211F2C68(a1, prime);
    }
  }
}

void sub_2211F2C68(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_22107C238();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_2211F2E78(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_221086F38(result, a4);
  }

  return result;
}

void sub_2211F2ED8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2211F2EF4(void *a1, void *a2)
{
  result = sub_2210875C4(a1, a2);
  if (result)
  {
    sub_2210CDD3C(a1, result);
    return 1;
  }

  return result;
}

double sub_2211F2F2C(long double a1, double a2)
{
  v4 = *&qword_27CFB4C68;
  v5 = qword_27CFB4C50;
  v6 = 1.0 / (a1 * 9.0);
  v28 = 1.0;
  sub_2214A7870(a2);
  v8 = 1.0 - v6 - v7 * sqrt(v6);
  v9 = v8 * (v8 * (v8 * a1));
  v10.n128_f64[0] = sub_221289DC8(a1);
  v12 = 0.0;
  v27 = *&v5;
  if (v9 > v4 || v9 < 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v13 = v10.n128_f64[0];
    v14 = 0;
    v15 = 0.0;
    v28 = 1.0;
    do
    {
      v10.n128_f64[0] = a1;
      v11.n128_f64[0] = v9;
      v16 = sub_2213BCD48(v10, v11);
      v10.n128_f64[0] = v28;
      if (v16 < v15 || v16 > v28)
      {
        break;
      }

      if (v16 >= a2)
      {
        v12 = v9;
      }

      else
      {
        v4 = v9;
      }

      if (v16 >= a2)
      {
        v10.n128_f64[0] = v16;
      }

      else
      {
        v15 = v16;
      }

      v28 = v10.n128_f64[0];
      v10.n128_f64[0] = -(v9 - (a1 + -1.0) * log(v9)) - v13;
      if (v10.n128_f64[0] < -*&qword_27CFB4C58)
      {
        break;
      }

      v10.n128_f64[0] = (v16 - a2) / -exp(v10.n128_f64[0]);
      if (fabs(v10.n128_f64[0] / v9) < *&qword_27CFB4C50)
      {
        return v9;
      }

      v9 = v9 - v10.n128_f64[0];
      if (v14 > 8)
      {
        break;
      }

      ++v14;
    }

    while (v9 <= v4 && v9 >= v12);
  }

  v19 = 5.0;
  if (v4 == *&qword_27CFB4C68)
  {
    if (v9 <= 0.0)
    {
      v21 = 1.0;
    }

    else
    {
      v21 = v9;
    }

    v20 = 0.0625;
    while (1)
    {
      v21 = v21 * (v20 + 1.0);
      v10.n128_f64[0] = a1;
      v11.n128_f64[0] = v21;
      v10.n128_f64[0] = sub_2213BCD48(v10, v11);
      if (v10.n128_f64[0] < a2)
      {
        break;
      }

      v20 = v20 + v20;
      if (v4 != *&qword_27CFB4C68)
      {
        v21 = v4;
        goto LABEL_35;
      }
    }

    v15 = v10.n128_f64[0];
LABEL_35:
    v19 = 5.0;
  }

  else
  {
    v21 = v4;
  }

  v22 = 0;
  v23 = v27 * v19;
  v24 = 400;
  v25 = 0.5;
  do
  {
    v9 = v12 + v25 * (v21 - v12);
    v10.n128_f64[0] = a1;
    v11.n128_f64[0] = v9;
    v10.n128_f64[0] = sub_2213BCD48(v10, v11);
    if (fabs((v21 - v12) / (v21 + v12)) < v23 || v9 <= 0.0 || fabs((v10.n128_f64[0] - a2) / a2) < v23)
    {
      break;
    }

    if (v10.n128_f64[0] >= a2)
    {
      if (v22 < 0)
      {
        v22 = 0;
        v25 = 0.5;
      }

      else
      {
        v25 = v22 < 2 ? (a2 - v15) / (v10.n128_f64[0] - v15) : v25 * 0.5 + 0.5;
      }

      ++v22;
      v12 = v9;
      v28 = v10.n128_f64[0];
    }

    else
    {
      if (v22 <= 0)
      {
        v25 = v22 > -2 ? (a2 - v10.n128_f64[0]) / (v28 - v10.n128_f64[0]) : v25 * 0.5;
      }

      else
      {
        v22 = 0;
        v25 = 0.5;
      }

      --v22;
      v21 = v9;
      v15 = v10.n128_f64[0];
    }

    --v24;
  }

  while (v24);
  if (v9 == 0.0)
  {
    sub_22137A674("igami", 4);
  }

  return v9;
}

uint64_t sub_2211F3230(uint64_t a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3)
{
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *v4 = &unk_2834A2E58;
  *(a1 + 136) = objc_opt_new();
  *(a1 + 144) = 0;
  *(a1 + 152) = 256;
  *(a1 + 96) = 1;
  return a1;
}

void sub_2211F32AC(uint64_t a1, int a2)
{
  *(a1 + 152) = a2;
  if (a2 && !*(a1 + 144))
  {
    v3 = objc_opt_new();
    v4 = *(a1 + 144);
    *(a1 + 144) = v3;
  }
}

id sub_2211F330C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 152) == 1 && objc_msgSend_count(*(a1 + 144), a2, a3, a4, a5))
  {
    v10 = objc_msgSend_lastObject(*(a1 + 144), v6, v7, v8, v9);
    objc_msgSend_removeLastObject(*(a1 + 144), v11, v12, v13, v14);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_2211F339C(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6 && (*(a1 + 152) & 1) != 0)
  {
    objc_msgSend_addObject_(*(a1 + 144), v3, v6, v4, v5);
  }
}

void sub_2211F340C(uint64_t a1, void *a2)
{
  v70 = a2;
  if (v70 && (*(a1 + 152) & 1) != 0)
  {
    v8 = sub_2211F330C(a1, v4, v5, v6, v7);
    v13 = sub_2211F330C(a1, v9, v10, v11, v12);
    if (!objc_msgSend_isEqualToString_(v70, v14, @":", v15, v16))
    {
      v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v70, @"(%@ %@ %@)", v18, v19, v13, v70, v8);
      sub_2211F339C(a1, v20);
LABEL_26:

      goto LABEL_27;
    }

    v20 = objc_msgSend_componentsSeparatedByString_(v13, v17, @"::", v18, v19);
    v24 = objc_msgSend_componentsSeparatedByString_(v8, v21, @"::", v22, v23);
    if (objc_msgSend_count(v20, v25, v26, v27, v28) == 2 && objc_msgSend_count(v24, v29, v30, v31, v32) == 2)
    {
      v33 = objc_msgSend_objectAtIndexedSubscript_(v20, v29, 0, v31, v32);
      v2 = objc_msgSend_objectAtIndexedSubscript_(v24, v34, 0, v35, v36);
      isEqualToString = objc_msgSend_isEqualToString_(v33, v37, v2, v38, v39);

      if (isEqualToString)
      {
        v41 = objc_msgSend_objectAtIndexedSubscript_(v24, v29, 1, v31, v32);

        v8 = v41;
      }
    }

    if (objc_msgSend_count(v20, v29, v30, v31, v32) == 2 && objc_msgSend_count(v24, v42, v43, v44, v45) == 2)
    {
      v46 = objc_msgSend_objectAtIndexedSubscript_(v20, v42, 1, v44, v45);
      v2 = objc_msgSend_objectAtIndexedSubscript_(v24, v47, 1, v48, v49);
      if (objc_msgSend_isEqualToString_(v46, v50, v2, v51, v52))
      {

LABEL_24:
        sub_2211F339C(a1, v13);
        goto LABEL_25;
      }

      v69 = v46;
      v53 = 1;
    }

    else
    {
      v53 = 0;
    }

    if (objc_msgSend_count(v20, v42, v43, v44, v45) == 1 && objc_msgSend_count(v24, v54, v55, v56, v57) == 1)
    {
      v59 = objc_msgSend_objectAtIndexedSubscript_(v20, v58, 0, v56, v57);
      v63 = objc_msgSend_objectAtIndexedSubscript_(v24, v60, 0, v61, v62);
      v67 = objc_msgSend_isEqualToString_(v59, v64, v63, v65, v66);

      if (v53)
      {

        if (v67)
        {
          goto LABEL_24;
        }
      }

      else if (v67)
      {
        goto LABEL_24;
      }
    }

    else if (v53)
    {
    }

    v68 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v70, @"%@%@%@", v56, v57, v13, v70, v8);
    sub_2211F339C(a1, v68);

LABEL_25:
    goto LABEL_26;
  }

LABEL_27:
}

void sub_2211F36F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, id a14)
{
  if (v18)
  {
  }

  _Unwind_Resume(a1);
}

void sub_2211F37A4(uint64_t a1, void *a2)
{
  v19 = a2;
  if (v19 && (*(a1 + 152) & 1) != 0)
  {
    v7 = sub_2211F330C(a1, v3, v4, v5, v6);
    if (objc_msgSend_hasPrefix_(v7, v8, @"("), v9, v10 && objc_msgSend_hasSuffix_(v7, v11, @""), v12, v13))
    {
      v14 = v7;
    }

    else
    {
      v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"(%@)", v12, v13, v7);
    }

    v17 = v14;
    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v19, @"(%@%@)", v15, v16, v19, v14);
    sub_2211F339C(a1, v18);
  }
}

void sub_2211F38CC(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (v5 && (*(a1 + 152) & 1) != 0)
  {
    v17 = v5;
    if (a3 < 1)
    {
      goto LABEL_10;
    }

    v10 = 0;
    do
    {
      v14 = sub_2211F330C(a1, v6, v7, v8, v9);
      if (v10)
      {
        v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%@,%@", v12, v13, v14, v10);

        v10 = v15;
      }

      else
      {
        v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%@", v12, v13, v14);
      }

      --a3;
    }

    while (a3);
    if (!v10)
    {
LABEL_10:
      v10 = &stru_2834BADA0;
    }

    v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v17, @"%@(%@)", v8, v9, v17, v10);
    sub_2211F339C(a1, v16);

    v5 = v17;
  }
}

id sub_2211F3A28(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 152) == 1)
  {
    if (objc_msgSend_count(*(a1 + 144), a2, a3, a4, a5) != 1)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "NSString *TSCEASTDescriptionIterator::prettyDescription()", v8, v9);
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTDescriptionIterator.mm", v13, v14);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 142, 0, "Should only have one argument on _argStack at this point, the final result. ArgStack: %@", *(a1 + 144));

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
    }

    v21 = sub_2211F330C(a1, v6, v7, v8, v9);
  }

  else
  {
    v21 = *(a1 + 136);
  }

  return v21;
}

uint64_t sub_2211F3B34(uint64_t a1, uint64_t a2)
{
  v4 = TSCEASTElement::tag(a2, a1);
  if ((v4 - 1) >= 0xC)
  {
    v11 = v4;
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "virtual TSCEASTElement *TSCEASTDescriptionIterator::binaryInfixOperatorNode(TSCEASTBinaryElement *)", v6, v7);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTDescriptionIterator.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 207, 0, "Unknown operator tag: %d", v11);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    v9 = &stru_2834BADA0;
    v10 = &stru_2834BADA0;
  }

  else
  {
    v8 = (v4 - 1);
    v9 = off_278461440[v8];
    v10 = off_2784614A0[v8];
  }

  sub_2211F340C(a1, v9);
  objc_msgSend_appendString_(*(a1 + 136), v23, v10, v24, v25);
  return a2;
}

uint64_t sub_2211F3C64(uint64_t a1, uint64_t a2, int a3)
{
  v6 = TSCEASTElement::tag(a2, a1);
  v11 = v6;
  if (v6 <= 14)
  {
    if (v6 == 13)
    {
      v12 = @"op- ";
      v13 = @"-";
      if (a3)
      {
        goto LABEL_16;
      }

      goto LABEL_20;
    }

    if (v6 == 14)
    {
      v12 = @"op+ ";
      v13 = @"+";
      if (!a3)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

LABEL_19:
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "virtual TSCEASTElement *TSCEASTDescriptionIterator::unaryOperatorNode(TSCEASTUnaryElement *, BOOL)", v9, v10);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTDescriptionIterator.mm", v24, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 249, 0, "Unknown operator tag: %d", v11);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
    v13 = &stru_2834BADA0;
    v12 = &stru_2834BADA0;
    if (a3)
    {
      goto LABEL_16;
    }

LABEL_20:
    sub_2211F37A4(a1, v13);
    goto LABEL_23;
  }

  if (v6 == 15)
  {
    v12 = @"% ";
    v13 = &stru_2834BADA0;
    if (!a3)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (v6 == 69)
  {
    v12 = @"op@ ";
    v13 = @"@";
    if (!a3)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (v6 != 70)
  {
    goto LABEL_19;
  }

  v12 = @"op# ";
  v13 = @"#";
  if (!a3)
  {
    goto LABEL_20;
  }

LABEL_16:
  if (*(a1 + 152) == 1)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = sub_2211F330C(a1, v13, v8, v9, v10);
    v19 = v15;
    if (v11 == 70)
    {
      objc_msgSend_stringWithFormat_(v14, v16, @"((%@)#)", v17, v18, v15);
    }

    else
    {
      objc_msgSend_stringWithFormat_(v14, v16, @"((%@)%%)", v17, v18, v15);
    }
    v20 = ;
    sub_2211F339C(a1, v20);
  }

LABEL_23:
  objc_msgSend_appendString_(*(a1 + 136), v13, v12, v9, v10);
  return a2;
}

TSCEASTFunctionElement *sub_2211F3EDC(TSCEASTIteratorBase *a1, TSCEASTFunctionElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTFunctionElement::functionIndex(this, a1, a3, a4, a5);
  v8 = (*(*this + 48))(this, a1);
  v12 = TSCEASTFunctionElement::whitespace(this, a1, v9, v10, v11);
  v16 = objc_msgSend_englishFunctionNameFromFunctionIndex_(TSCEFunctionSpec, v13, v7, v14, v15);
  sub_2211F38CC(a1, v16, v8);
  v24 = objc_msgSend_length(v12, v17, v18, v19, v20);
  v25 = *(a1 + 17);
  if (v24)
  {
    objc_msgSend_appendFormat_(v25, v21, @"%@{%i args, ws:'%@'} ", v22, v23, v16, v8, v12);
  }

  else
  {
    objc_msgSend_appendFormat_(v25, v21, @"%@{%i args} ", v22, v23, v16, v8);
  }

  return this;
}

TSCEASTUnknownFunctionElement *sub_2211F3FF8(void **a1, TSCEASTUnknownFunctionElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTUnknownFunctionElement::unknownFunctionName(this, a1, a3, a4, a5);
  v8 = (*(*this + 48))(this, a1);
  sub_2211F38CC(a1, v7, v8);
  objc_msgSend_appendFormat_(a1[17], v9, @"unknownFunction: %@{%i args} ", v10, v11, v7, v8);

  return this;
}

uint64_t sub_2211F40AC(uint64_t a1, uint64_t a2)
{
  if (TSCEASTElement::tag(a2, a1) == 45)
  {
    v4 = (*(*a2 + 96))(a2, a1);
    v9 = v4;
    if ((*(a1 + 153) & 1) != 0 || !objc_msgSend_tractCount(v4, v5, v6, v7, v8))
    {
      sub_2211F340C(a1, @":");
      objc_msgSend_appendString_(*(a1 + 136), v20, @":", v21, v22);
    }

    else
    {
      v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"[: %@]", v11, v12, v9);
      sub_2211F340C(a1, v13);
      objc_msgSend_appendFormat_(*(a1 + 136), v14, @"%@ ", v15, v16, v13);
    }
  }

  else
  {
    sub_2211F340C(a1, @":");
    objc_msgSend_appendString_(*(a1 + 136), v17, @":", v18, v19);
  }

  return a2;
}

TSCEASTColonTractElement *sub_2211F41F0(TSCEASTIteratorBase *a1, TSCEASTColonTractElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTColonTractElement::relativeTractRef(this, a1, a3, a4, a5);
  v12 = objc_msgSend_tableUID(v7, v8, v9, v10, v11);
  v14 = v13;
  v92._lower = v12;
  v92._upper = v13;
  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = sub_2211F4694;
  v90 = sub_2211F46A4;
  v91 = 0;
  v85 = 0;
  coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0.coordinate;
  v85 = coordinate;
  if (coordinate.row == 0x7FFFFFFF || (*&coordinate & 0xFFFF00000000) == 0x7FFF00000000)
  {
    if (objc_msgSend_preserveFlags(v7, v15, v16, v17, v18) == 15)
    {
      coordinate = 0;
      v85 = 0;
    }

    else
    {
      coordinate = v85;
    }
  }

  if (coordinate.row != 0x7FFFFFFF && (*&coordinate & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v27 = objc_msgSend_absoluteCellTractRefForHostCell_(v7, v15, &v85, v17, v18);
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = sub_2211F46AC;
    v84[3] = &unk_278461420;
    v84[4] = &v86;
    objc_msgSend_foreachAnyRef_(v27, v28, v84, v29, v30);
LABEL_17:

    goto LABEL_19;
  }

  if (objc_msgSend_isRectangularRange(v7, v15, v16, v17, v18) && !objc_msgSend_preserveFlags(v7, v22, v23, v24, v25))
  {
    v83 = objc_msgSend_relativeTopLeft(v7, v22, v26, v24, v25);
    v82 = objc_msgSend_relativeBottomRight(v7, v71, v72, v73, v74);
    v75 = MEMORY[0x277CCAB68];
    v27 = TSCERelativeCellCoordinate::description(&v83);
    v76 = TSCERelativeCellCoordinate::description(&v82);
    v80 = objc_msgSend_stringWithFormat_(v75, v77, @"%@:%@", v78, v79, v27, v76, v82);
    v81 = v87[5];
    v87[5] = v80;

    goto LABEL_17;
  }

  v34 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v22, @"[%@]", v24, v25, v7);
  v35 = v87[5];
  v87[5] = v34;

LABEL_19:
  if (!v87[5])
  {
    v36 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v31, @"<error in colonTractNode() - got nil>", v32, v33);
    v37 = v87[5];
    v87[5] = v36;

    v38 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "virtual TSCEASTElement *TSCEASTDescriptionIterator::colonTractNode(TSCEASTColonTractElement *)", v40, v41);
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTDescriptionIterator.mm", v44, v45);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v47, v42, v46, 380, 0, "Why would this happen?");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50, v51);
  }

  if (v12 | v14)
  {
    v52 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
    if (v12 != v52->var0.var0._tableUID._lower || v14 != v52->var0.var0._tableUID._upper)
    {
      v53 = MEMORY[0x277CCAB68];
      v54 = TSKUIDStruct::description(&v92);
      v58 = objc_msgSend_stringWithFormat_(v53, v55, @"%@::%@", v56, v57, v54, v87[5]);
      v59 = v87[5];
      v87[5] = v58;
    }
  }

  if ((*(a1 + 153) & 1) == 0)
  {
    v60 = (*(*this + 96))(this, a1);
    if (objc_msgSend_tractCount(v60, v61, v62, v63, v64))
    {
      v68 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v65, @"%@{%@}", v66, v67, v87[5], v60);
      v69 = v87[5];
      v87[5] = v68;
    }
  }

  objc_msgSend_appendString_(*(a1 + 17), v31, v87[5], v32, v33);
  sub_2211F339C(a1, v87[5]);
  _Block_object_dispose(&v86, 8);

  return this;
}

void sub_2211F4610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2211F4694(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2211F46AC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(*(a1 + 32) + 8) + 40);
  if (v7)
  {
    objc_msgSend_appendString_(v7, a2, @" | ", a4, a5);
  }

  else
  {
    v8 = objc_opt_new();
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  if (*a2 - 1 >= 2)
  {
    v16 = *(*(*(a1 + 32) + 8) + 40);
    if (*a2)
    {
      v23 = TSCEAnyRef::description(a2);
      objc_msgSend_appendFormat_(v16, v20, @"Unexpected refType: %@", v21, v22, v23);
    }

    else
    {
      v23 = NSStringFromTSUCellCoord();
      objc_msgSend_appendString_(v16, v17, v23, v18, v19);
    }
  }

  else
  {
    v11 = *(*(*(a1 + 32) + 8) + 40);
    v23 = NSStringFromTSUCellCoord();
    v12 = NSStringFromTSUCellCoord();
    objc_msgSend_appendFormat_(v11, v13, @"%@:%@", v14, v15, v23, v12);
  }
}

TSCEASTViewTractRefElement *sub_2211F481C(void **a1, TSCEASTViewTractRefElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 152) == 1 && (sub_221089E8C(a1), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = TSCEASTViewTractRefElement::viewTractRef(this, a1, a3, a4, a5);
    v9 = sub_221089E8C(a1);
    v46 = objc_msgSend_tableUID(v8, v10, v11, v12, v13);
    v47._lower = v14;
    v17 = objc_msgSend_tableResolverForTableUID_(v9, v14, &v46, v15, v16);

    if (v17)
    {
      v21 = objc_msgSend_cellTractRefForViewTractRef_(v17, v18, v8, v19, v20);
      v26 = objc_msgSend_description(v21, v22, v23, v24, v25);
    }

    else
    {
      v26 = @"<#REF! VTR>";
    }
  }

  else
  {
    TSCEASTViewTractRefElement::uidReference(this, a1, a3, a4, a5, &v46);
    v27 = v46;
    v28 = MEMORY[0x277CCACA8];
    v29 = sub_22122B9BC(&v46);
    v26 = objc_msgSend_stringWithFormat_(v28, v30, @"ViewTractRef(%@ Preserve:%u) ", v31, v32, v27, v29);
    if (v47 != 0uLL)
    {
      v33 = TSKUIDStruct::description(&v47);
      v37 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v34, @"%@::%@", v35, v36, v33, v26);

      v26 = v37;
    }
  }

  objc_msgSend_appendFormat_(a1[17], v38, @"%@ ", v39, v40, v26);
  v44 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v41, @"%@", v42, v43, v26);
  sub_2211F339C(a1, v44);

  return this;
}

TSCEASTNumberElement *sub_2211F4A8C(TSCEASTIteratorBase *a1, TSCEASTNumberElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20._decimal.w[0] = TSCEASTNumberElement::value(this, a1, a3, a4, a5);
  v20._decimal.w[1] = v7;
  v8 = MEMORY[0x277CCACA8];
  v9 = TSUDecimal::description(&v20);
  v13 = objc_msgSend_stringWithFormat_(v8, v10, @"%@", v11, v12, v9);
  sub_2211F339C(a1, v13);

  v14 = *(a1 + 17);
  v15 = TSUDecimal::description(&v20);
  objc_msgSend_appendFormat_(v14, v16, @"%@ ", v17, v18, v15);

  return this;
}

TSCEASTBooleanElement *sub_2211F4B68(void **a1, TSCEASTBooleanElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTBooleanElement::value(this, a1, a3, a4, a5);
  v8 = @"FALSE";
  if (v7)
  {
    v8 = @"TRUE";
  }

  v9 = v8;
  sub_2211F339C(a1, v9);
  objc_msgSend_appendFormat_(a1[17], v10, @"%@ ", v11, v12, v9);

  return this;
}

TSCEASTStringElement *sub_2211F4C00(void **a1, TSCEASTStringElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTStringElement::string(this, a1, a3, a4, a5);
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"%@", v9, v10, v7);
  sub_2211F339C(a1, v11);

  objc_msgSend_appendFormat_(a1[17], v12, @"%@ ", v13, v14, v7);
  return this;
}

TSCEASTDateElement *sub_2211F4CB0(void **a1, TSCEASTDateElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTDateElement::value(this, a1, a3, a4, a5);
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"%@", v9, v10, v7);
  sub_2211F339C(a1, v11);

  objc_msgSend_appendFormat_(a1[17], v12, @"%@ ", v13, v14, v7);
  return this;
}

TSCEASTDurationElement *sub_2211F4D60(void **a1, TSCEASTDurationElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = TSCEASTDurationElement::unitNum(this, a1, a3, a4, a5);
  if (*(a1 + 152) == 1)
  {
    v12 = TSCEASTDurationElement::unit(this, a1, v8, v9, v10);
    sub_221387CBC(v12);
    v13 = TSUDurationFormatterFormatFromDurationUnits();
    v18 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v14, v15, v16, v17);
    v19 = TSUDurationFormatterStringFromTimeIntervalWithFormat();

    v20 = v19;
  }

  else
  {
    v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"unit%lf", v9, v10, v11, *&v11);;
  }

  sub_2211F339C(a1, v20);
  objc_msgSend_appendString_(a1[17], v21, v20, v22, v23);

  return this;
}

uint64_t sub_2211F4E84(uint64_t a1, uint64_t a2)
{
  sub_2211F339C(a1, @"<empty>");
  objc_msgSend_appendString_(*(a1 + 136), v4, @"<empty> ", v5, v6);
  return a2;
}

uint64_t sub_2211F4EC8(uint64_t a1, uint64_t a2)
{
  sub_2211F339C(a1, @"<token>");
  objc_msgSend_appendString_(*(a1 + 136), v4, @"token ", v5, v6);
  return a2;
}

TSCEASTArrayElement *sub_2211F4F0C(void **a1, TSCEASTArrayElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = this;
  v7 = TSCEASTArrayElement::numColumns(this, a1, a3, a4, a5);
  v11 = TSCEASTArrayElement::numRows(v5, a1, v8, v9, v10);
  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"array cols:%d rows:%d ", v13, v14, v7, v11);;
  if (*(a1 + 152) == 1)
  {
    v44 = v15;
    v20 = objc_msgSend_string(MEMORY[0x277CCACA8], v16, v17, v18, v19);
    v25 = v20;
    v43 = v5;
    if (v7)
    {
      v26 = 0;
      do
      {
        if (v11)
        {
          v27 = 0;
          do
          {
            v28 = sub_2211F330C(a1, v21, v22, v23, v24);
            if (objc_msgSend_length(v25, v29, v30, v31, v32))
            {
              v36 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v33, @"%@ %@", v34, v35, v28, v25);;
            }

            else
            {
              v36 = v28;
            }

            v37 = v36;

            ++v27;
            v25 = v37;
          }

          while (v27 < v11);
        }

        else
        {
          v37 = v25;
        }

        ++v26;
        v25 = v37;
      }

      while (v26 < v7);
    }

    else
    {
      v37 = v20;
    }

    v38 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v21, @"{%@ %@}", v23, v24, v44, v37);

    sub_2211F339C(a1, v38);
    v5 = v43;
    objc_msgSend_appendString_(a1[17], v39, v38, v40, v41);
  }

  else
  {
    v38 = v15;
    objc_msgSend_appendString_(a1[17], v16, v15, v18, v19);
  }

  return v5;
}

uint64_t sub_2211F50E4(uint64_t a1, uint64_t a2)
{
  v7 = (*(*a2 + 48))(a2, a1);
  if (*(a1 + 152) == 1)
  {
    sub_2211F38CC(a1, &stru_2834BADA0, v7);
  }

  else
  {
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"<list, len:%d>", v5, v6, v7);
    sub_2211F38CC(a1, v11, v7);
  }

  objc_msgSend_appendFormat_(*(a1 + 136), v8, @"list; length:%d ", v9, v10, v7);
  return a2;
}

TSCEASTLetBindElement *sub_2211F520C(void **a1, TSCEASTLetBindElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTLetBindElement::identifier(this, a1, a3, a4, a5);
  isContinuation = TSCEASTLetBindElement::isContinuation(this, a1, v8, v9, v10);
  v16 = isContinuation;
  if (a1[19])
  {
    v20 = sub_2211F330C(a1, v12, v13, v14, v15);
    if (v16)
    {
      v21 = @"-continued";
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"LET%@(%@, %@, "), v18, v19, CFSTR("-continued"), v7, v20;
    }

    else
    {
      v21 = &stru_2834BADA0;
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"LET%@(%@, %@, "), v18, v19, &stru_2834BADA0, v7, v20;
    }
    v22 = ;
    sub_2211F339C(a1, v22);

    goto LABEL_9;
  }

  if (!isContinuation)
  {
    v21 = &stru_2834BADA0;
LABEL_9:
    objc_msgSend_appendFormat_(a1[17], v12, @"LET%@<ident=%@> ", v14, v15, v21, v7);
    goto LABEL_10;
  }

  objc_msgSend_appendFormat_(a1[17], v12, @"LET%@<ident=%@> ", v14, v15, @"-continued", v7);
LABEL_10:

  return this;
}

TSCEASTLambdaElement *sub_2211F5338(void **a1, TSCEASTLambdaElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = TSCEASTLambdaElement::identifiers(this, a1, a3, a4, a5);
  v11 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v8, @"LAMBDA("), v9, v10;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = v7;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v30, v34, 16);
  if (v17)
  {
    v18 = *v31;
    do
    {
      v19 = 0;
      do
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(v12);
        }

        objc_msgSend_appendFormat_(v11, v14, @"%@, ", v15, v16, *(*(&v30 + 1) + 8 * v19++));
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v30, v34, 16);
    }

    while (v17);
  }

  if (*(a1 + 152) == 1)
  {
    v24 = sub_2211F330C(a1, v20, v21, v22, v23);
    v28 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, @"%@%@"), v26, v27, v11, v24, v30);
    sub_2211F339C(a1, v28);
  }

  objc_msgSend_appendFormat_(a1[17], v20, @"%@, _"), v22, v23, v11);

  return this;
}

const char *sub_2211F5540(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 152) == 1)
  {
    v7 = sub_2211F330C(a1, a2, a3, a4, a5);
    v12 = sub_2211F330C(a1, v8, v9, v10, v11);
    v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%@%@"), v14, v15, v12, v7);
    sub_2211F339C(a1, v16);
  }

  objc_msgSend_appendString_(*(a1 + 136), a2, @" <End Scope>", a4, a5);
  return a2;
}

TSCEASTVariableElement *sub_2211F561C(void **a1, TSCEASTVariableElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = MEMORY[0x277CCACA8];
  v8 = TSCEASTVariableElement::symbol(this, a1, a3, a4, a5);
  v15 = objc_msgSend_stringWithFormat_(v7, v9, @"(var %u)", v10, v11, v8);
  if (*(a1 + 152) == 1)
  {
    sub_2211F339C(a1, v15);
  }

  objc_msgSend_appendString_(a1[17], v12, v15, v13, v14);

  return this;
}

TSCEASTRelativeCoordRefElement *sub_2211F56BC(TSCEASTIteratorBase *a1, TSCEASTRelativeCoordRefElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTRelativeCoordRefElement::relativeCoord(this, a1, a3, a4, a5);
  v8 = HIDWORD(v7);
  v9 = v7;
  v10 = TSCEASTElement::refFlags(this, a1);
  coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0.coordinate;
  v15 = (*&coordinate & 0xFFFF00000000) == 0x7FFF00000000 || coordinate.row == 0x7FFFFFFF;
  if (!v15 || (v10 & 0x30) == 0x30)
  {
    if (v8 == 0x7FFF)
    {
      v16 = 0;
    }

    else
    {
      if ((v10 & 0x10) == 0)
      {
        TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
      }

      v16 = TSUColumnLabel();
    }

    if (v9 == 0x7FFFFFFF)
    {
      v20 = 0;
    }

    else
    {
      if ((v10 & 0x20) == 0)
      {
        TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
      }

      v20 = TSURowLabel();
    }

    if ((v10 & 0x10) != 0)
    {
      v33 = @"$";
    }

    else
    {
      v33 = &stru_2834BADA0;
    }

    v22 = v33;
    if ((v10 & 0x20) != 0)
    {
      v34 = @"$";
    }

    else
    {
      v34 = &stru_2834BADA0;
    }

    v35 = v34;
    v28 = v35;
    v39 = (v10 >> 2) & 3;
    if (v39 > 1)
    {
      if (v39 != 2)
      {
        v43 = MEMORY[0x277D81150];
        v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "virtual TSCEASTElement *TSCEASTDescriptionIterator::anyReferenceNode(TSCEASTRelativeCoordRefElement *)", v37, v38);
        v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTDescriptionIterator.mm", v46, v47);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v49, v44, v48, 638, 0, "We shouldn't actually reach here - the tag indicates this reference is valid or spanning");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
        goto LABEL_48;
      }

      v40 = v22;
      v41 = v16;
    }

    else
    {
      v40 = v35;
      v41 = v20;
      if (!v39)
      {
        v32 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v36, @"%@%@%@%@", v37, v38, v22, v16, v35, v20);
        goto LABEL_45;
      }
    }

    v32 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v36, @"%@%@", v37, v38, v40, v41);
    goto LABEL_45;
  }

  if ((v10 & 0x10) != 0)
  {
    TSUColumnLabel();
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%+d", v12, v13, v8);
  }
  v16 = ;
  if ((v10 & 0x20) != 0)
  {
    TSURowLabel();
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"%+d", v18, v19, v9);
  }
  v20 = ;
  v21 = @"C";
  if ((v10 & 0x10) != 0)
  {
    v21 = @"$";
  }

  v22 = v21;
  v23 = @"R";
  if ((v10 & 0x20) != 0)
  {
    v23 = @"$";
  }

  v24 = v23;
  v28 = v24;
  v29 = (v10 >> 2) & 3;
  if (v29 > 1)
  {
    if (v29 == 2)
    {
      v30 = v22;
      v31 = v16;
      goto LABEL_26;
    }

    v54 = MEMORY[0x277D81150];
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "virtual TSCEASTElement *TSCEASTDescriptionIterator::anyReferenceNode(TSCEASTRelativeCoordRefElement *)", v26, v27);
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTDescriptionIterator.mm", v57, v58);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v60, v55, v59, 656, 0, "We shouldn't actually reach here - the tag indicates this reference is valid or spanning");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62, v63, v64);
LABEL_48:
    v42 = @"#REF!";
    goto LABEL_49;
  }

  v30 = v24;
  v31 = v20;
  if (v29)
  {
LABEL_26:
    v32 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, @"[%@%@]", v26, v27, v30, v31);
    goto LABEL_45;
  }

  v32 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, @"[%@%@, %@%@]", v26, v27, v22, v16, v24, v20);
LABEL_45:
  v42 = v32;
LABEL_49:

  v65 = (*(*this + 96))(this, a1);
  v70 = v65;
  if ((*(a1 + 153) & 1) == 0 && objc_msgSend_tractCount(v65, v66, v67, v68, v69))
  {
    v72 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v71, @"%@ %@", v68, v69, v42, v70);

    v42 = v72;
  }

  if (v10)
  {
    v92._lower = TSCEASTRelativeCoordRefElement::tableUID(this, a1, v67, v68, v69);
    v92._upper = v73;
    v74 = sub_221089E8C(a1);
    v78 = objc_msgSend_tableResolverForTableUID_(v74, v75, &v92, v76, v77);

    if (v78)
    {
      objc_msgSend_tableName(v78, v79, v80, v81, v82);
    }

    else
    {
      TSKUIDStruct::description(&v92);
    }
    v83 = ;
    v87 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v84, @"%@::%@", v85, v86, v83, v42);

    v42 = v87;
  }

  sub_2211F339C(a1, v42);
  objc_msgSend_appendString_(*(a1 + 17), v88, v42, v89, v90);

  return this;
}

uint64_t sub_2211F5C5C(uint64_t a1, uint64_t a2)
{
  sub_2211F339C(a1, @"#REF!");
  objc_msgSend_appendString_(*(a1 + 136), v4, @"#REF!", v5, v6);
  return a2;
}

TSCEASTWhitespaceElement *sub_2211F5CA8(void **a1, TSCEASTWhitespaceElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTWhitespaceElement::whitespace(this, a1, a3, a4, a5);
  objc_msgSend_appendFormat_(a1[17], v8, @"append ws: '%@'", v9, v10, v7);

  return this;
}

TSCEASTWhitespaceElement *sub_2211F5D1C(void **a1, TSCEASTWhitespaceElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTWhitespaceElement::whitespace(this, a1, a3, a4, a5);
  objc_msgSend_appendFormat_(a1[17], v8, @"prepend ws: '%@'", v9, v10, v7);

  return this;
}

TSCEASTRelativeCoordRefElement *sub_2211F5D90(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  v4 = TSCEASTRelativeCoordRefElement::preserveFlags(a2, a1);
  v5 = (*(*a2 + 96))(a2, a1);
  if (*(a1 + 153))
  {
    v6 = @"#REF! ";
  }

  else if (TSCEASTElement::refFlags(a2, a1))
  {
    v26._lower = TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v8, v9, v10);
    v26._upper = v13;
    v14 = MEMORY[0x277CCACA8];
    v15 = TSKUIDStruct::description(&v26);
    v19 = v15;
    v20 = @"$";
    if ((v4 & 2) != 0)
    {
      v21 = @"$";
    }

    else
    {
      v21 = @"-";
    }

    if ((v4 & 1) == 0)
    {
      v20 = @"-";
    }

    v6 = objc_msgSend_stringWithFormat_(v14, v16, @"#REF(%@%@, %@:: %@)! ", v17, v18, v20, v21, v15, v5);
  }

  else
  {
    v11 = @"$";
    if (v4)
    {
      v12 = @"$";
    }

    else
    {
      v12 = @"-";
    }

    if ((v4 & 2) == 0)
    {
      v11 = @"-";
    }

    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"#REF(%@%@, %@)! ", v9, v10, v12, v11, v5);
  }

  sub_2211F339C(a1, v6);
  objc_msgSend_appendString_(*(a1 + 136), v22, v6, v23, v24);

  return a2;
}

uint64_t sub_2211F5F44(uint64_t a1, uint64_t a2)
{
  v23._lower = (*(*a2 + 136))(a2, a1);
  v23._upper = v4;
  v5 = TSCEASTElement::tag(a2, a1);
  v6 = MEMORY[0x277CCACA8];
  if (v5 == 64)
  {
    v7 = TSKUIDStruct::description(&v23);
    v11 = objc_msgSend_stringWithFormat_(v6, v12, @"linkedColumnRef(%@) ", v13, v14, v7);
  }

  else
  {
    if (v5 == 65)
    {
      v7 = TSKUIDStruct::description(&v23);
      objc_msgSend_stringWithFormat_(v6, v8, @"linkedRowRef(%@) ", v9, v10, v7);
    }

    else
    {
      v7 = TSKUIDStruct::description(&v23);
      objc_msgSend_stringWithFormat_(v6, v15, @"linkedCellRef(%@) ", v16, v17, v7);
    }
    v11 = ;
  }

  v18 = v11;

  sub_2211F339C(a1, v18);
  objc_msgSend_appendString_(*(a1 + 136), v19, v18, v20, v21);

  return a2;
}

TSCEASTUidReferenceElement *sub_2211F60B0(void **a1, TSCEASTUidReferenceElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  TSCEASTUidReferenceElement::uidReference(this, a1, a3, a4, a5, &v30);
  v7 = v30;
  v8 = MEMORY[0x277CCACA8];
  v9 = sub_22122B9BC(&v30);
  v16 = objc_msgSend_stringWithFormat_(v8, v10, @"UidRef(%@ Preserve:%u) ", v11, v12, v7, v9);
  if (v31 == 0uLL)
  {
    objc_msgSend_appendFormat_(a1[17], v13, @"%@ ", v14, v15, v16);
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, @"%@", v26, v27, v16);
    sub_2211F339C(a1, v17);
  }

  else
  {
    v29 = v31;
    v17 = TSKUIDStruct::description(&v29);
    objc_msgSend_appendFormat_(a1[17], v18, @"%@::%@ ", v19, v20, v17, v16);
    v24 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v21, @"%@::%@", v22, v23, v17, v16);
    sub_2211F339C(a1, v24);
  }

  return this;
}

TSCEASTCategoryRefElement *sub_2211F623C(void **a1, TSCEASTCategoryRefElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTCategoryRefElement::categoryRef(this, a1, a3, a4, a5);
  v12 = objc_msgSend_description(v7, v8, v9, v10, v11);
  objc_msgSend_appendString_(a1[17], v13, v12, v14, v15);
  sub_2211F339C(a1, v12);

  return this;
}

void sub_2211F62C8(id *a1)
{

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

void sub_2211F630C(id *a1)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);

  JUMPOUT(0x223DA1450);
}

void sub_2211F6EF4(TSCEASTRewriter *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3)
{
  TSCEASTRewriter::TSCEASTRewriter(a1, a2, a3, 0);
  *v3 = &unk_2834A2FC8;
  *(v3 + 200) = 256;
  *(v3 + 202) = 0;
}

void sub_2211F6F38(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  if (TSCEASTElement::tag(a2, a1) == 26 && (*(*v4 + 48))(v4, a1) == 1)
  {
    v4 = TSCEASTElementWithChildren::child(v4, 0);
  }

  if (a3)
  {
    v10 = objc_msgSend_rangeContext(a3, v6, v7, v8, v9);
  }

  else
  {
    v10 = 0;
  }

  TSCEASTRewriter::createIntersectionOp(a1, v10, v4, v8, v9);
}

TSCEASTElementWithChildren *sub_2211F6FF0(uint64_t a1, TSCEASTElementWithChildren *this)
{
  v4 = TSCEASTElementWithChildren::child(this, 0);
  if ((*(*v4 + 88))(v4, a1))
  {
    v5 = (*(*this + 80))(this, a1);
    v8 = objc_msgSend_argumentSpecForIndex_numArgs_(v5, v6, 0, 1, v7);
    sub_2211F6F38(a1, v4, v8);
  }

  return this;
}

TSCEASTElementWithChildren *sub_2211F70D8(uint64_t a1, TSCEASTElementWithChildren *a2)
{
  v4 = TSCEASTElement::tag(a2, a1);
  if (v4 != 28)
  {
    if (v4 == 70)
    {
      *(a1 + 202) = 1;
    }

    else
    {
      v5 = 0;
      v6 = 1;
      do
      {
        v7 = v6;
        v8 = TSCEASTElementWithChildren::child(a2, v5);
        if ((*(*v8 + 88))(v8, a1))
        {
          v9 = (*(*a2 + 80))(a2, a1);
          v12 = objc_msgSend_argumentSpecForIndex_numArgs_(v9, v10, v5, 2, v11);
          sub_2211F6F38(a1, v8, v12);
        }

        v6 = 0;
        v5 = 1;
      }

      while ((v7 & 1) != 0);
    }
  }

  return a2;
}

TSCEASTFunctionElement *sub_2211F7200(TSCEASTIteratorBase *a1, TSCEASTFunctionElement *a2)
{
  v4 = (*(*a2 + 80))(a2, a1);
  v5 = (*(*a2 + 48))(a2, a1);
  v9 = TSCEASTFunctionElement::functionIndex(a2, a1, v6, v7, v8);
  if (objc_msgSend_versionShippedIn(v4, v10, v11, v12, v13) <= 8)
  {
    if (!v5)
    {
      return a2;
    }

    v16 = 0;
    while (1)
    {
      v17 = objc_msgSend_argumentSpecForIndex_numArgs_(v4, v14, v16, v5, v15);
      v22 = objc_msgSend_disallowArrayModeFanout(v17, v18, v19, v20, v21);
      if ((*(a1 + 200) & 1) == 0 && (v9 == 47 || v9 == 314 || v9 == 203))
      {
        v23 = v16 == 0;
        if (!(v23 | (v22 ^ 1) & 1))
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v22)
        {
          goto LABEL_46;
        }

        v23 = 0;
      }

      v24 = TSCEASTElementWithChildren::child(a2, v16);
      if (TSCEASTElement::tag(v24, a1) == 25)
      {
        goto LABEL_46;
      }

      v27 = objc_msgSend_argumentType(v17, v14, v25, v26, v15);
      if (v27 <= 0x15)
      {
        if (((1 << v27) & 0x2001BC) != 0)
        {
          if (objc_msgSend_accessorMode(v17, v14, v28, v29, v15) != 1)
          {
            v34 = objc_msgSend_accessorMode(v17, v30, v31, v32, v33) == 0;
LABEL_27:
            v37 = v34;
            if (((v23 | v37) & 1) == 0)
            {
              goto LABEL_46;
            }
          }

LABEL_44:
          v39 = TSCEASTElementWithChildren::child(a2, v16);
          if ((*(*v39 + 88))(v39, a1))
          {
            sub_2211F6F38(a1, v39, v17);
          }

          goto LABEL_46;
        }

        if (((1 << v27) & 0x10002) != 0)
        {
          goto LABEL_18;
        }

        if (v27 == 6)
        {
          v35 = objc_msgSend_accessorMode(v17, v14, v28, v29, v15);
          v34 = v9 != 323 && v16 != 0 && v35 == 1;
          goto LABEL_27;
        }
      }

      if (v27 != 255)
      {
        goto LABEL_44;
      }

      if ((objc_msgSend_disallowArrayModeFanout(v4, v14, v28, v29, v15) & 1) == 0)
      {
        if (v9 == 235 || !v16)
        {
          goto LABEL_44;
        }

        if (v9 != 19 && v9 != 62)
        {
          if (v9 != 336)
          {
            goto LABEL_44;
          }

          if (v16 != v5 - 1)
          {
            if (v5 < 3)
            {
              goto LABEL_44;
            }

            v38 = 2;
            while (v16 != v38)
            {
              v38 += 2;
              if (v38 >= v5)
              {
                goto LABEL_44;
              }
            }
          }
        }
      }

LABEL_18:
      if (v23)
      {
        goto LABEL_44;
      }

LABEL_46:
      if (++v16 == v5)
      {
        return a2;
      }
    }
  }

  *(a1 + 202) = 1;
  return a2;
}

void sub_2211F74D4(uint64_t *a1)
{
  v2 = a1[13];
  if (v2)
  {
    if ((*(*v2 + 88))(v2, a1))
    {
      if (TSCEASTElement::tag(a1[13], a1) != 66 || (TSCEASTCategoryRefElement::categoryRef(a1[13], a1, v3, v4, v5), v6 = objc_claimAutoreleasedReturnValue(), mayReturnArray = objc_msgSend_mayReturnArray(v6, v7, v8, v9, v10), v6, (mayReturnArray & 1) != 0))
      {
        sub_2211F6F38(a1, a1[13], 0);
      }
    }
  }
}

void sub_2211F7590(TSCEASTRewriter *a1)
{
  TSCEASTRewriter::~TSCEASTRewriter(a1);

  JUMPOUT(0x223DA1450);
}

id sub_2211F78B4(void *a1, void *a2, void *a3, uint64_t a4, int a5, void *a6)
{
  v133 = *MEMORY[0x277D85DE8];
  v116 = a1;
  v11 = a3;
  v114 = a6;
  v16 = objc_msgSend_uppercaseString(v11, v12, v13, v14, v15);

  TSUDecimal::operator=();
  TSUDecimal::operator=();
  switch(a4)
  {
    case 2:
      v20 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v17, @"0B", v18, v19, 0);
      v115 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v27, @"B", v28, v29, 0);
      break;
    case 8:
      v20 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v17, @"0O", v18, v19, @"O", 0);
      v115 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v24, @"O", v25, v26, 0);
      break;
    case 0x10:
      v20 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v17, @"0X", v18, v19, @"U+", 0);
      v115 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v21, @"H", v22, v23, 0);
      break;
    default:
      v20 = 0;
      v115 = 0;
      break;
  }

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v30 = v20;
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v126, v132, 16);
  if (v32)
  {
    v33 = *v127;
    while (2)
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v127 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v126 + 1) + 8 * i);
        if (objc_msgSend_hasPrefix_(v16, v36, v35, v37, v38))
        {
          v58 = objc_msgSend_length(v35, v39, v40, v41, v42);
          v57 = objc_msgSend_substringFromIndex_(v16, v59, v58, v60, v61);
          v44 = v30;
LABEL_27:

          goto LABEL_28;
        }
      }

      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v43, &v126, v132, 16);
      if (v32)
      {
        continue;
      }

      break;
    }
  }

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v44 = v115;
  v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v45, &v122, v131, 16);
  if (v46)
  {
    v47 = *v123;
    while (2)
    {
      for (j = 0; j != v46; ++j)
      {
        if (*v123 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v35 = *(*(&v122 + 1) + 8 * j);
        if (objc_msgSend_hasSuffix_(v16, v49, v35, v50, v51))
        {
          v62 = objc_msgSend_length(v16, v52, v53, v54, v55);
          v67 = objc_msgSend_length(v35, v63, v64, v65, v66);
          v57 = objc_msgSend_substringToIndex_(v16, v68, v62 - v67, v69, v70);
          goto LABEL_27;
        }
      }

      v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v56, &v122, v131, 16);
      if (v46)
      {
        continue;
      }

      break;
    }
  }

  v57 = v16;
LABEL_28:

  v78 = objc_msgSend_length(v57, v71, v72, v73, v74) - 1;
  while ((v78 & 0x8000000000000000) == 0)
  {
    v79 = objc_msgSend_characterAtIndex_(v57, v75, v78, v76, v77);
    v82 = v79;
    if (a4 == 26)
    {
      TSUDecimal::operator+=();
      v83 = v82 - 65;
    }

    else
    {
      if (v79 <= 0x39)
      {
        v84 = -48;
      }

      else
      {
        v84 = -55;
      }

      v83 = v84 + v79;
    }

    if (a4 <= v83 || v83 < 0)
    {
      v99 = objc_msgSend_invalidBaseCharacterErrorForCharacter_base_(TSCEError, v80, v82, a4, v81);
      v94 = objc_msgSend_raiseErrorOrConvert_(v116, v100, v99, v101, v102);

      goto LABEL_52;
    }

    TSUDecimal::operator=();
    *&v119._tskFormat = v120;
    TSUDecimal::operator*=();
    v121 = v120;
    TSUDecimal::operator+=();
    TSUDecimal::operator=();
    TSUDecimal::operator*=();
    TSUDecimal::operator=();
    --v78;
    if ((TSUDecimal::operator<=() & 1) == 0)
    {
      v86 = objc_msgSend_functionName(a2, v75, v85, v76, v77);
      v90 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v87, v86, v88, v89);
      v94 = objc_msgSend_raiseErrorOrConvert_(v116, v91, v90, v92, v93);

      goto LABEL_52;
    }
  }

  if (a5)
  {
    TSUDecimal::operator=();
    if ((TSUDecimal::operator<=() & 1) == 0 && objc_msgSend_characterAtIndex_(v57, v95, 0, v96, v97) != 48)
    {
      for (k = 0x80000000; ; k *= 2)
      {
        TSUDecimal::operator=();
        if ((TSUDecimal::operator<=() & 1) != 0 && !TSUDecimal::operator==())
        {
          break;
        }
      }

      TSUDecimal::operator=();
      TSUDecimal::operator-=();
    }
  }

  v103 = [TSCENumberValue alloc];
  v94 = objc_msgSend_initWithDecimal_(v103, v104, v130, v105, v106);
  if (v114)
  {
    TSCEFormat::TSCEFormat(&v118, v114, 0);
    TSCEFormat::TSCEFormat(&v119, &v118);
    objc_msgSend_setFormat_(v94, v107, &v119, v108, v109);
  }

  else
  {
    TSCEFormat::TSCEFormat(&v117, 256);
    TSCEFormat::TSCEFormat(&v119, &v117);
    objc_msgSend_setFormat_(v94, v110, &v119, v111, v112);
  }

LABEL_52:

  return v94;
}

id sub_2211F8024(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a1;
  v16 = a3;
  if ((atomic_load_explicit(&qword_27CFB52B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27CFB52B0))
  {
    TSUDecimal::operator=();
    __cxa_guard_release(&qword_27CFB52B0);
  }

  v38[0] = objc_msgSend_decimalRepresentation(v16, v12, v13, v14, v15);
  v38[1] = v17;
  if (TSUDecimal::operator<())
  {
    v22 = objc_msgSend_functionName(a2, v18, v19, v20, v21);
    v26 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v23, v22, v24, v25);
    v30 = objc_msgSend_raiseErrorOrConvert_(v11, v27, v26, v28, v29);
  }

  else
  {
    v31 = objc_alloc(MEMORY[0x277D80620]);
    v22 = objc_msgSend_initWithBase_basePlaces_baseUseMinusSign_(v31, v32, a4, a5, a6);
    v33 = [TSCENumberValue alloc];
    TSCEFormat::TSCEFormat(&v37, v22, 0);
    v30 = objc_msgSend_initWithDecimal_format_(v33, v34, v38, &v37, v35);
  }

  return v30;
}

void sub_2211F819C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27CFB52B0);

  _Unwind_Resume(a1);
}

void sub_2211F82F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSCEFormulaObject;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2211F8A3C(_Unwind_Exception *a1, TSCEASTNodeArray *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(va, a2);
  _Unwind_Resume(a1);
}

void sub_2211F8BDC(_Unwind_Exception *a1, TSCEASTNodeArray *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(va, a2);
  _Unwind_Resume(a1);
}

void sub_2211F8C6C(_Unwind_Exception *a1, TSCEASTNodeArray *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(va, a2);
  _Unwind_Resume(a1);
}

void sub_2211F95EC()
{
  v0 = objc_alloc(MEMORY[0x277D806A0]);
  v2 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v0, v1, 258, 2, 0, 0);
  v3 = qword_27CFB52B8;
  qword_27CFB52B8 = v2;
}

void sub_2211F9D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_2211FEA54(&a9);

  _Unwind_Resume(a1);
}

void sub_2211F9DCC(TSCEASTNodeArray *a1@<X0>, TSCECalculationEngine *a2@<X1>, void *a3@<X8>)
{
  memset(v10, 0, 24);
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v15, a2, v10);
  TSCEASTStreamIterator::TSCEASTStreamIterator(v10, a1, &v15);
  v10[0].coordinate = &unk_2834A3150;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v11 = 1;
  TSCEASTStreamIterator::rewrite(v10, v5, v6, v7, v8);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_2211FECD0(a3, v12, v13, (v13 - v12) >> 3);
  v10[0].coordinate = &unk_2834A3150;
  v16 = &v12;
  sub_22107C2C0(&v16);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(v10, v9);
}

void sub_2211F9F60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2211FEDAC(va);
  _Unwind_Resume(a1);
}

void sub_2211FA0D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22134B390(va);
  _Unwind_Resume(a1);
}

void sub_2211FA2E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_22134B390(va);
  _Unwind_Resume(a1);
}

void sub_2211FA4AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2210F3B18(va);

  _Unwind_Resume(a1);
}

void sub_2211FB47C(_Unwind_Exception *a1, TSCEASTNodeArray *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(va, a2);

  _Unwind_Resume(a1);
}

void sub_2211FB764(id *a1)
{

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

void sub_2211FB7A8(TSCEASTStreamIterator *a1)
{
  *a1 = &unk_2834A4B40;
  sub_2210BDEC0(a1 + 152);

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

BOOL sub_2211FB7FC(void *a1, uint64_t a2)
{
  v3 = (a2 + 16);
  do
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    v4 = sub_221119F90(a1, v3 + 2);
    if (!v4)
    {
      break;
    }
  }

  while (v4[4] == v3[4] && v4[5] == v3[5]);
  return v3 == 0;
}

void sub_2211FC3E0(_Unwind_Exception *a1, TSCEASTNodeArray *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(&a9, a2);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(&a26, v27);
  _Unwind_Resume(a1);
}

void sub_2211FC4C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TSCEASTRewriter::~TSCEASTRewriter(va);

  _Unwind_Resume(a1);
}

void sub_2211FC5C0(_Unwind_Exception *a1, TSCEASTNodeArray *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(&a9, a2);

  _Unwind_Resume(a1);
}

void sub_2211FC6D0(_Unwind_Exception *a1, TSCEASTNodeArray *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(&a9, a2);

  _Unwind_Resume(a1);
}

void sub_2211FCA08(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v3, 0x10F1C40BB21CAEALL);

  _Unwind_Resume(a1);
}

void sub_2211FD5D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  TSCEPartialEvalRewriter::~TSCEPartialEvalRewriter(&a9);

  TSCEASTStreamIterator::~TSCEASTStreamIterator(&a39, v43);
  _Unwind_Resume(a1);
}

void sub_2211FD72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  TSCEASTRewriter::~TSCEASTRewriter(&a10);

  _Unwind_Resume(a1);
}

void sub_2211FD91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  TSCEPartialEvalRewriter::~TSCEPartialEvalRewriter(&a10);

  TSCEASTRewriter::~TSCEASTRewriter(&a39);
  _Unwind_Resume(a1);
}

void sub_2211FDAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  TSCEPartialEvalRewriter::~TSCEPartialEvalRewriter(&a9);

  _Unwind_Resume(a1);
}

void sub_2211FDDBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  TSCEPartialEvalRewriter::~TSCEPartialEvalRewriter(&a9);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(&a38, v42);

  _Unwind_Resume(a1);
}

void sub_2211FE9F0(TSCEASTStreamIterator *a1)
{
  *a1 = &unk_2834A49B0;
  v2 = a1 + 136;
  sub_2210BDEC0(a1 + 176);
  sub_2210BDEC0(v2);

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v3);
}

void sub_2211FEA54(void **a1)
{
  *a1 = &unk_2834A37F0;

  v3 = a1 + 17;
  sub_2211FEAB8(&v3);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

void sub_2211FEAB8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 10;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_2211FEB44(void **a1)
{
  *a1 = &unk_2834A3150;
  v4 = a1 + 17;
  sub_22107C2C0(&v4);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
  return MEMORY[0x223DA1450]();
}

TSCEASTCategoryRefElement *sub_2211FEBB4(TSCEASTIteratorBase *a1, TSCEASTCategoryRefElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTCategoryRefElement::categoryRef(this, a1, a3, a4, a5);
  v9 = *(a1 + 18);
  v8 = *(a1 + 19);
  if (v9 >= v8)
  {
    v11 = *(a1 + 17);
    v12 = (v9 - v11) >> 3;
    if ((v12 + 1) >> 61)
    {
      sub_22107C148();
    }

    v13 = v8 - v11;
    v14 = v13 >> 2;
    if (v13 >> 2 <= (v12 + 1))
    {
      v14 = v12 + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v21 = a1 + 136;
    if (v15)
    {
      sub_22107C1F0(a1 + 136, v15);
    }

    v17 = 0;
    v18 = (8 * v12);
    v20 = 0;
    *v18 = v7;
    v19 = 8 * v12 + 8;
    sub_22107C098(a1 + 136, &v17);
    v10 = *(a1 + 18);
    sub_22107C26C(&v17);
  }

  else
  {
    *v9 = v7;
    v10 = v9 + 1;
    *(a1 + 18) = v10;
  }

  *(a1 + 18) = v10;
  return this;
}

void sub_2211FECB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2211FECD0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2210BC26C(result, a4);
  }

  return result;
}

void sub_2211FED50(void **a1)
{
  *a1 = &unk_2834A3150;
  v3 = a1 + 17;
  sub_22107C2C0(&v3);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

void sub_2211FEDAC(id *a1)
{

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

void sub_2211FEDF0(id *a1)
{
  *a1 = &unk_2834A1A70;
  sub_2210BDEC0((a1 + 36));
  sub_2210BDEC0((a1 + 31));
  sub_2210BDEC0((a1 + 26));

  TSCEASTRewriter::~TSCEASTRewriter(a1);
}

void sub_2211FEE60(id *a1)
{
  *a1 = &unk_2834A83C8;
  sub_2210BDEC0((a1 + 26));

  TSCEASTRewriter::~TSCEASTRewriter(a1);
}

void sub_2211FEEBC(TSCEASTStreamIterator *a1)
{
  *a1 = &unk_2834A9B38;
  sub_2210BDEC0(a1 + 152);

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

void sub_2211FEF10(TSCEASTStreamIterator *a1)
{
  *a1 = &unk_2834A4B40;
  sub_2210BDEC0(a1 + 152);

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

void sub_2211FFE84(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22108CD88();
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

void sub_2211FFF7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2212004E0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2212076E4(_Unwind_Exception *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_22107C2C0(va);

  _Unwind_Resume(a1);
}

void sub_221207E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26)
{
  a26 = &a14;
  sub_22107C2C0(&a26);

  _Unwind_Resume(a1);
}

void sub_221207F00(TSCEPartialEvalRewriter *a1, TSCEFormulaObject *a2, TSCEFormulaRewriteContext *a3, TSCEEvaluationContext *a4)
{
  TSCEPartialEvalRewriter::TSCEPartialEvalRewriter(a1, a2, a3, a4);
  *v4 = &unk_2834A32C0;
  *(v4 + 232) = 0;
}

uint64_t sub_221207F38(uint64_t a1, uint64_t a2)
{
  if (TSCEASTElement::tag(a2, a1) == 70)
  {
    *(a1 + 233) = 1;
  }

  return a2;
}

TSCEASTElementWithChildren *sub_221207F8C(id *a1, TSCEASTFunctionElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = this;
  v7 = TSCEASTFunctionElement::functionIndex(this, a1, a3, a4, a5);
  v11 = (*(*v5 + 48))(v5, a1);
  if (v7 == 280)
  {
    v12 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v8, 280, v9, v10);
    TSCEPartialEvalRewriter::bakeChildNodesToValues(a1, v5, v11, v12, 0);
  }

  v17 = a1[28];
  v18 = v7 == 23 || v7 == 130;
  if (v18 && v11 == 2)
  {
    v19 = TSCEASTElementWithChildren::child(v5, 0);
    TSCEASTRewriter::createFunction(a1, v7, v19, v20, v21, v22, v23, v24, 0);
  }

  v25 = objc_msgSend_value(v17, v13, v14, v15, v16);
  v30 = v25;
  if (v7 == 280 && (objc_msgSend_isError(v25, v26, v27, v28, v29) & 1) != 0)
  {
    TSCEASTIteratorBase::createReferenceError(a1, v26, v31, v28, v29);
  }

  v32 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v26, v7, v28, v29);
  v37 = v32;
  if (v32)
  {
    if (objc_msgSend_versionShippedIn(v32, v33, v34, v35, v36) >= 2 && v7 != 280 && v7 != 285)
    {
      v5 = TSCEPartialEvalRewriter::bakeForSingleValue(a1, v30, 0, v37, 1);
      v38 = [TSCEPartialResult alloc];
      v42 = objc_msgSend_initWithValue_(v38, v39, v30, v40, v41);
      TSCEPartialEvalRewriter::setPartialResult(a1, v42);
    }
  }

  else
  {
    *(a1 + 233) = 1;
  }

  return v5;
}

TSCEASTArrayElement *sub_221208234(TSCEASTIteratorBase *a1, TSCEASTArrayElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTArrayElement::numColumns(this, a1, a3, a4, a5);
  v11 = TSCEASTArrayElement::numRows(this, a1, v8, v9, v10);
  TSCEPartialEvalRewriter::bakeChildNodesToValues(a1, this, v11 * v7, 0, 1);
  return this;
}

TSCEASTRelativeCoordRefElement *sub_221208298(void **a1, TSCEASTRelativeCoordRefElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a1[29] & 1) == 0)
  {
    v7 = TSCEASTRelativeCoordRefElement::tableUID(this, a1, a3, a4, a5);
    if (v7 | v8)
    {
      v12 = v7;
      v13 = v8;
      v14 = objc_msgSend_containingTable(a1[25], v8, v9, v10, v11);
      if (v12 != *v14 || v13 != v14[1])
      {
        *(a1 + 233) = 1;
      }
    }
  }

  return this;
}

void sub_221208310(id *a1)
{
  TSCEPartialEvalRewriter::~TSCEPartialEvalRewriter(a1);

  JUMPOUT(0x223DA1450);
}

void sub_221208378(void *a1, TSUCellCoord a2, $925F2A0F20B28CD67DCCD182188DAC27 a3, uint64_t a4)
{
  v57 = *MEMORY[0x277D85DE8];
  v48.origin = a2;
  v48.size = a3;
  v5 = a1[2];
  if (v5)
  {
    v6 = a1[1];
    v59.location = TSUCellRect::rows(&v48);
    v59.length = v7;
    v58.location = v6;
    v58.length = v5;
    v10 = NSUnionRange(v58, v59);
    length = v10.length;
    location = v10.location;
  }

  else
  {
    location = TSUCellRect::rows(&v48);
  }

  a1[1] = location;
  a1[2] = length;
  origin = v48.origin;
  v11 = TSUCellCoord::encodeAsUInt(&origin);
  origin = ((v48.origin.row + v48.size.numberOfRows - 1) | *&v48.origin & 0xFFFF00000000);
  v12 = TSUCellCoord::encodeAsUInt(&origin);
  origin = ((*&v48.origin + (*&v48.size << 32) + 0xFFFF00000000) & 0xFFFF00000000 | v48.origin.row);
  v13 = TSUCellCoord::encodeAsUInt(&origin);
  v14 = 0;
  origin = v11;
  v50 = 1;
  v51 = v11;
  v52 = 3;
  v53 = v12;
  v54 = 2;
  v55 = v13;
  v56 = 4;
  do
  {
    v47 = *(&origin.row + v14);
    v15 = sub_22120ABE8(a1 + 8, &v47);
    if (v15)
    {
      v46 = v15[4];
      v19 = sub_2210BE30C(a1 + 3, &v46);
      if (!v19)
      {
        v20 = MEMORY[0x277D81150];
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "void TSTCellRegionGathererMap::joinAndAddRange(TSTCellRange, NSUInteger)", v17, v18);
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellRegionGatherer.mm", v23, v24);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 184, 0, "_cellRanges does not match encodedCoordToCandidateIndexMap");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
      }

      v31 = v19[3];
      v32 = v19[4];
      size = v48.size;
      v34 = sub_2211C1FC4(v31, v32, *&v48.origin, *&v48.size);
      v36 = (HIDWORD(v35) * v35);
      v37 = size.numberOfRows * size.numberOfColumns + (HIDWORD(v32) * v32);
      v38 = v36 == v37;
      v39 = (v36 == v37 ? v34 : 0x7FFF7FFFFFFFLL);
      v40 = v38 ? v35 : 0;
      v45.origin = v39;
      v45.size = v40;
      if (TSUCellRect::isValid(&v45))
      {
        sub_2211E5A9C(a1 + 3, &v46);
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = sub_221208878;
        v44[3] = &unk_278461500;
        v44[4] = a1;
        sub_221208710(v31, v32, v44);
        sub_221208378(a1, *&v45.origin, *&v45.size, a4 + 1);
        return;
      }
    }

    v14 += 16;
  }

  while (v14 != 64);
  if (TSUCellRect::isValidOrSpanning(&v48))
  {
    *&v47 = *a1;
    *a1 = v47 + 1;
    origin = &v47;
    v41 = sub_22120ACE4(a1 + 3, &v47);
    *(v41 + 3) = v48;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = sub_2212088A8;
    v43[3] = &unk_278461520;
    v43[4] = a1;
    v43[5] = v47;
    sub_221208710(*&v48.origin, *&v48.size, v43);
  }
}

void sub_221208710(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1 + 0xFFFF00000000;
  v7 = a1 & 0xFFFF00000000;
  if ((a1 & 0xFFFF00000000) != 0)
  {
    v16 = (v6 & 0xFFFF00000000 | a1);
    v8 = TSUCellCoord::encodeAsUInt(&v16);
    v5[2](v5, v8, 4);
  }

  v9 = a1;
  v10 = a1 + 0xFFFFFFFFLL;
  if (v9)
  {
    v16 = (v10 | v7);
    v11 = TSUCellCoord::encodeAsUInt(&v16);
    v5[2](v5, v11, 2);
  }

  v12 = v6 + (a2 << 32);
  if ((v12 & 0xFFF800000000uLL) >> 35 <= 0x7C)
  {
    v16 = ((v12 + 0x100000000) & 0xFFFF00000000 | v9);
    v13 = TSUCellCoord::encodeAsUInt(&v16);
    v5[2](v5, v13, 3);
  }

  v14 = v10 + HIDWORD(a2);
  if (v14 <= 0xF423F)
  {
    v16 = ((v14 + 1) & 0x1FFFFF | v7);
    v15 = TSUCellCoord::encodeAsUInt(&v16);
    v5[2](v5, v15, 1);
  }
}

uint64_t *sub_221208878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return sub_22120ACAC((*(a1 + 32) + 64), v4);
}

uint64_t *sub_2212088A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[3] = v6;
  result = sub_22120AF18((v3 + 64), v6);
  result[4] = v4;
  return result;
}

void sub_2212088FC(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  for (i = *(a1 + 40); i; i = *i)
  {
    v4 = *(i + 1);
    v5 = i[4];
    sub_221083454(a2, (&v4 + 8));
  }
}

void sub_221208964(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_221209574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2212095A0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  objc_msgSend_combineNonOverlappingCellRanges_addingOverlappingCellRanges_(TSTCellRegion, a2, &__p, a1, a5);
  v6 = v9;
  if (v9 != v10)
  {
    do
    {
      v7 = *v6;
      v8 = *(v6 + 8);
      sub_221208378(a2, v7, v8, 0);
      v6 += 16;
    }

    while (v6 != v10);
    v6 = v9;
  }

  if (v6)
  {
    operator delete(v6);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_22120963C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_221209670(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *(a5 + 24) = 0u;
  v6 = (a5 + 24);
  *(a5 + 40) = 0u;
  *(a5 + 56) = 1065353216;
  *(a5 + 64) = 0u;
  v7 = (a5 + 64);
  *(a5 + 80) = 0u;
  *(a5 + 96) = 1065353216;
  *a5 = xmmword_2217E08F0;
  *(a5 + 16) = 0;
  v9 = *a1;
  v8 = *(a1 + 8);
  v10 = v8 - *a1;
  v11 = v10 >> 4;
  if ((v10 >> 4) < 0x65 || a3 < 2)
  {
    v47 = 0;
    v48 = 0;
    v49 = 0;
    sub_22116C9DC(&v47, v9, v8, v10 >> 4);
    sub_2212095A0(&v47, a5, v13, v14, v15);
    v16 = v47;
    if (!v47)
    {
      return;
    }

    v48 = v47;
    goto LABEL_37;
  }

  v45 = v7;
  v46 = v6;
  v18 = a2 + (a3 >> 1);
  v19 = a3 - (a3 >> 1);
  v43 = a3 >> 1;
  v20 = sub_221209C58(0, 0x3E8, a2, a3 >> 1, a4);
  v22 = v21;
  v41 = v19;
  v42 = v18;
  v24 = sub_221209C58(0, 0x3E8, v18, v19, v23);
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  if (v9 != v8)
  {
    v26 = v24;
    v27 = v25;
    do
    {
      v28 = *v9;
      v29 = v9[1];
      v77.origin = sub_221119E0C(*v9, v29, v20, v22);
      v77.size = v30;
      v66.origin = sub_221119E0C(v28, v29, v26, v27);
      v66.size = v31;
      if (TSUCellRect::isValid(&v77))
      {
        sub_221083454(&v91, &v77);
      }

      if (TSUCellRect::isValid(&v66))
      {
        sub_221083454(&v88, &v66);
      }

      v9 += 2;
    }

    while (v9 != v8);
    v9 = *a1;
    v8 = *(a1 + 8);
    v11 = (v8 - *a1) >> 4;
  }

  v77.origin = 0;
  v77.size = &v77;
  v78 = 0x9812000000;
  v79 = sub_221209E10;
  v80 = sub_221209E68;
  v81 = &unk_22188E88F;
  memset(v84, 0, sizeof(v84));
  v85 = 1065353216;
  memset(v86, 0, sizeof(v86));
  v87 = 1065353216;
  v82 = xmmword_2217E08F0;
  v83 = 0;
  v66.origin = 0;
  v66.size = &v66;
  v67 = 0x9812000000;
  v68 = sub_221209E10;
  v69 = sub_221209E68;
  v70 = &unk_22188E88F;
  memset(v73, 0, sizeof(v73));
  memset(v75, 0, sizeof(v75));
  v74 = 1065353216;
  v76 = 1065353216;
  v71 = xmmword_2217E08F0;
  v72 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = sub_221209EA4;
  block[3] = &unk_2834A3450;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  sub_22116C9DC(&v53, v9, v8, v11);
  v56 = 0;
  v57 = 0;
  v58 = 0;
  sub_22116C9DC(&v56, v91, v92, (v92 - v91) >> 4);
  block[4] = &v77;
  v59 = a2;
  v60 = v43;
  __p = 0;
  v62 = 0;
  v63 = 0;
  sub_22116C9DC(&__p, v88, v89, (v89 - v88) >> 4);
  block[5] = &v66;
  v64 = v42;
  v65 = v41;
  dispatch_apply(2uLL, 0, block);
  size = v77.size;
  v33 = v66.size;
  if (*(*&v77.size + 96) <= *(*&v66.size + 96))
  {
    v35 = *(*&v66.size + 48);
    *(a5 + 16) = *(*&v66.size + 64);
    *a5 = v35;
    if (*&v33 + 48 != a5)
    {
      *(a5 + 56) = *(*&v33 + 104);
      sub_22120A47C(v46, *(*&v33 + 88), 0);
      *(a5 + 96) = *(*&v33 + 144);
      sub_22120A624(v45, *(*&v33 + 128), 0);
      size = v77.size;
    }

    sub_2212088FC(*&size + 48, &v50);
  }

  else
  {
    v34 = *(*&v77.size + 48);
    *(a5 + 16) = *(*&v77.size + 64);
    *a5 = v34;
    if (*&size + 48 != a5)
    {
      *(a5 + 56) = *(*&size + 104);
      sub_22120A47C(v46, *(*&size + 88), 0);
      *(a5 + 96) = *(*&size + 144);
      sub_22120A624(v45, *(*&size + 128), 0);
      v33 = v66.size;
    }

    sub_2212088FC(*&v33 + 48, &v50);
  }

  v36 = v50;
  v37 = v51;
  if (v50 != v51)
  {
    v38 = v50;
    do
    {
      v39 = *v38;
      v40 = *(v38 + 1);
      sub_221208378(a5, v39, v40, 0);
      v38 += 16;
    }

    while (v38 != v37);
  }

  if (v36)
  {
    operator delete(v36);
  }

  if (__p)
  {
    v62 = __p;
    operator delete(__p);
  }

  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }

  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }

  _Block_object_dispose(&v66, 8);
  sub_2210BDEC0(v75);
  sub_2210BDEC0(v73);
  _Block_object_dispose(&v77, 8);
  sub_2210BDEC0(v86);
  sub_2210BDEC0(v84);
  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  v16 = v91;
  if (v91)
  {
    v92 = v91;
LABEL_37:
    operator delete(v16);
  }
}

void sub_221209B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a32)
  {
    operator delete(a32);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Block_object_dispose(&a42, 8);
  sub_2210BDEC0(v62 + 112);
  sub_2210BDEC0(v62 + 72);
  _Block_object_dispose(&a61, 8);
  sub_2210BDEC0(v61 + 112);
  sub_2210BDEC0(v61 + 72);
  v65 = *(v63 - 136);
  if (v65)
  {
    *(v63 - 128) = v65;
    operator delete(v65);
  }

  v66 = *(v63 - 112);
  if (v66)
  {
    *(v63 - 104) = v66;
    operator delete(v66);
  }

  sub_2210BDEC0(a15);
  sub_2210BDEC0(a16);
  _Unwind_Resume(a1);
}

uint64_t sub_221209C58(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUMakeCellRectFromNSRanges(NSRange, NSRange)", a4, a5);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 168, 0, "Invalid column range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUMakeCellRectFromNSRanges(NSRange, NSRange)", a4, a5);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 169, 0, "Invalid row range");
    v27 = 0x7FFF7FFFFFFFLL;

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  else
  {
    v32 = a3 | (a1 << 32);
    if (!a4)
    {
      v32 = 0x7FFF7FFFFFFFLL;
    }

    if (!a2)
    {
      v32 = 0x7FFF7FFFFFFFLL;
    }

    if (a1 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0x7FFF7FFFFFFFLL;
    }

    else
    {
      return v32;
    }
  }

  return v27;
}

uint64_t sub_221209E10(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v4;
  sub_221088030(a1 + 72, (a2 + 72));

  return sub_221088030(a1 + 112, (a2 + 112));
}

uint64_t sub_221209E68(uint64_t a1)
{
  sub_2210BDEC0(a1 + 112);

  return sub_2210BDEC0(a1 + 72);
}

void sub_221209EA4(void *a1, uint64_t a2)
{
  v3 = a1[7] - a1[6];
  if (a2)
  {
    v4 = a1[14];
    v5 = a1[15];
    v6 = (v5 - v4) >> 4;
    if (v3 <= v5 - v4)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      sub_22116C9DC(&v19, v4, v5, v6);
      sub_2212095A0(&v19, (*(a1[5] + 8) + 48), v13, v14, v15);
      v8 = v19;
      if (!v19)
      {
        return;
      }

      v20 = v19;
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v22 = 0;
      sub_22116C9DC(&v22, v4, v5, v6);
      sub_221209670(&v31, &v22, a1[17], a1[18]);
      v7 = *(a1[5] + 8);
      *(v7 + 48) = v31;
      *(v7 + 64) = v32;
      sub_22120A3D8(v7 + 72, v33);
      sub_22120A3D8(v7 + 112, v34);
      sub_2210BDEC0(v34);
      sub_2210BDEC0(v33);
      v8 = v22;
      if (!v22)
      {
        return;
      }

      v23 = v22;
    }
  }

  else
  {
    v9 = a1[9];
    v10 = a1[10];
    v11 = (v10 - v9) >> 4;
    if (v3 <= v10 - v9)
    {
      __p = 0;
      v26 = 0;
      v27 = 0;
      sub_22116C9DC(&__p, v9, v10, v11);
      sub_2212095A0(&__p, (*(a1[4] + 8) + 48), v16, v17, v18);
      v8 = __p;
      if (!__p)
      {
        return;
      }

      v26 = __p;
    }

    else
    {
      v29 = 0;
      v30 = 0;
      v28 = 0;
      sub_22116C9DC(&v28, v9, v10, v11);
      sub_221209670(&v31, &v28, a1[12], a1[13]);
      v12 = *(a1[4] + 8);
      *(v12 + 48) = v31;
      *(v12 + 64) = v32;
      sub_22120A3D8(v12 + 72, v33);
      sub_22120A3D8(v12 + 112, v34);
      sub_2210BDEC0(v34);
      sub_2210BDEC0(v33);
      v8 = v28;
      if (!v28)
      {
        return;
      }

      v29 = v28;
    }
  }

  operator delete(v8);
}

void sub_22120A050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_22120A0A8(void *a1, uint64_t *a2)
{
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_22116C9DC((a1 + 6), a2[6], a2[7], (a2[7] - a2[6]) >> 4);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  sub_22116C9DC((a1 + 9), a2[9], a2[10], (a2[10] - a2[9]) >> 4);
  a1[14] = 0;
  a1[15] = 0;
  a1[16] = 0;
  return sub_22116C9DC((a1 + 14), a2[14], a2[15], (a2[15] - a2[14]) >> 4);
}

void sub_22120A134(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 80) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void sub_22120A168(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    a1[7] = v4;

    operator delete(v4);
  }
}

void sub_22120A2E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  v16 = *(v14 - 56);
  if (v16)
  {
    *(v14 - 48) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_22120A3D8(uint64_t a1, uint64_t *a2)
{
  sub_2210BE918(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void sub_22120A47C(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = a2[2];
        v8[2] = v9;
        *(v8 + 3) = *(a2 + 3);
        v10 = *v8;
        v8[1] = v9;
        v11 = sub_2210BD2A8(a1, v9, v8 + 2);
        sub_2210BD408(a1, v8, v11);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_22120A590();
  }
}

void sub_22120A55C(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void sub_22120A624(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = a2[2];
        v8[6] = *(a2 + 6);
        *(v8 + 2) = v9;
        *(v8 + 4) = a2[4];
        v10 = *v8;
        sub_22120A72C(a1, v8);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v11 = *v8;
        operator delete(v8);
        v8 = v11;
      }

      while (v11);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_22120AB60();
  }
}

void sub_22120A6F8(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t sub_22120A72C(void *a1, uint64_t a2)
{
  v4 = a2 + 16;
  v5 = *(a2 + 16) ^ (*(a2 + 24) << 12);
  *(a2 + 8) = v5;
  v6 = sub_22120A77C(a1, v5, v4);
  sub_2210BD408(a1, a2, v6);
  return a2;
}

uint64_t sub_22120A77C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_22120A8E8(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = *(v16 + 8);
    if (v14.u32[0] > 1uLL)
    {
      v20 = *(v16 + 8);
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    if (v19 == a2)
    {
      v21 = *(v16 + 16) == *a3 && *(v16 + 24) == *(a3 + 8);
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22 != (v17 & 1);
    v24 = v17 & v23;
    v17 |= v23;
  }

  while (v24 != 1);
  return result;
}

void sub_22120A8E8(uint64_t a1, size_t __n)
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

      sub_22120A9D8(a1, prime);
    }
  }
}

void sub_22120A9D8(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_22107C238();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t *sub_22120ABE8(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *(a2 + 8);
  v4 = *a2 ^ (v3 << 12);
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2 ^ (v3 << 12);
    if (v4 >= *&v2)
    {
      v6 = v4 % *&v2;
    }
  }

  else
  {
    v6 = v4 & (*&v2 - 1);
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  for (result = *v7; result; result = *result)
  {
    v9 = result[1];
    if (v9 == v4)
    {
      if (result[2] == *a2 && *(result + 6) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v5.u32[0] > 1uLL)
      {
        if (v9 >= *&v2)
        {
          v9 %= *&v2;
        }
      }

      else
      {
        v9 &= *&v2 - 1;
      }

      if (v9 != v6)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_22120ACAC(void *a1, uint64_t a2)
{
  result = sub_22120ABE8(a1, a2);
  if (result)
  {
    sub_2210CDD3C(a1, result);
    return 1;
  }

  return result;
}

void *sub_22120ACE4(void *a1, unint64_t *a2)
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

uint64_t *sub_22120AF18(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *a2 ^ (v2 << 12);
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2 ^ (v2 << 12);
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = v3 & (*&v4 - 1);
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (v8[2] != *a2 || *(v8 + 6) != v2)
  {
    goto LABEL_21;
  }

  return v8;
}

void *sub_22120B15C(void *a1, unsigned int *a2)
{
  v2 = *a2 + 16 * *(a2 + 2);
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2 + 16 * *(a2 + 2);
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
LABEL_23:
    operator new();
  }

  v8 = *a2;
  while (1)
  {
    v9 = v7[1];
    if (v9 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v5)
    {
      goto LABEL_23;
    }

LABEL_22:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v10 = v7[2];
  v12 = v10 == v8;
  v11 = (v8 ^ v10) & 0x101FFFF00000000;
  v12 = v12 && v11 == 0;
  if (!v12)
  {
    goto LABEL_22;
  }

  return v7;
}

void TSCEASTRewriter::TSCEASTRewriter(TSCEASTRewriter *this, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, TSCESymbolTable *a4)
{
  TSCEASTIteratorBase::TSCEASTIteratorBase(this, a2, a3);
  *v5 = &unk_2834A3490;
  *(v5 + 140) = 0;
  *(v5 + 104) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 144) = a4;
  *(v5 + 152) = 1;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 1065353216;
}

{
  TSCEASTIteratorBase::TSCEASTIteratorBase(this, a2, a3);
  *v5 = &unk_2834A3490;
  *(v5 + 140) = 0;
  *(v5 + 104) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 144) = a4;
  *(v5 + 152) = 1;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 1065353216;
}

void TSCEASTRewriter::~TSCEASTRewriter(TSCEASTRewriter *this)
{
  *this = &unk_2834A3490;
  v2 = *(this + 13);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_2210BDEC0(this + 160);
  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  TSCEASTIteratorBase::~TSCEASTIteratorBase(this, v3);
}

{
  TSCEASTRewriter::~TSCEASTRewriter(this);

  JUMPOUT(0x223DA1450);
}

uint64_t TSCEASTRewriter::loadAsTree(TSCEASTRewriter *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *(this + 13);
  if (result)
  {
    return result;
  }

  v7 = *(this + 2);
  if (!v7)
  {
    return 0;
  }

  v67 = *(this + 2);
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v69 = *(v7 + 8);
  v64 = 0;
  v65 = 0;
  v66 = 0;
  __p = 0;
  v62 = 0;
  v63 = 0;
  if (v69)
  {
    while (1)
    {
      v9 = v68;
      v8 = v69;
      if (v68 < v69)
      {
        if (!v70)
        {
          break;
        }

        v10 = v70[1];
        if (*v70 == v10 || v68 < *(v10 - 8))
        {
          break;
        }
      }

      v11 = v62;
      v12 = *(v62 - 1);
      if (v12)
      {
        if (v65 == v64)
        {
          v13 = MEMORY[0x277D81150];
          v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSCEASTElement *TSCEASTRewriter::loadAsTree()", a4, a5);
          v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTRewriter.mm", v16, v17);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 47, 0, "An incomplete node needs one argument - the root of the thunk expression");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
        }

        if (TSCEASTElement::tag(v12, this) != 27 && TSCEASTElement::tag(v12, this) != 56)
        {
          v27 = MEMORY[0x277D81150];
          v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "TSCEASTElement *TSCEASTRewriter::loadAsTree()", v25, v26);
          v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTRewriter.mm", v30, v31);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v33, v28, v32, 48, 0, "ONLY expecting embedded thunk nodes to exercise this path");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
        }

        v38 = *(v65 - 1);
        v65 -= 8;
        TSCEASTElementWithChildren::appendChild(v12, v38);
        v60 = v12;
        sub_221126E28(&v64, &v60);
        v11 = v62;
      }

      v62 = v11 - 1;
      TSCEASTNodeArrayReader::popEndPoint(&v67);
      if (__p == v62)
      {
        v9 = v68;
        v8 = v69;
        break;
      }
    }

    if (v9 < v8 && (!v70 || (v39 = v70[1], *v70 == v39) || v9 < *(v39 - 8)) || __p != v62)
    {
      v60 = 0;
      v40 = *(*v67 + v9);
      v68 = v9 + 1;
      switch(v40)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
          operator new();
        case 13:
        case 14:
        case 15:
        case 70:
          operator new();
        case 16:
        case 17:
        case 33:
        case 34:
          operator new();
        case 18:
          operator new();
        case 19:
          operator new();
        case 20:
          operator new();
        case 21:
          operator new();
        case 22:
          operator new();
        case 23:
          operator new();
        case 24:
          operator new();
        case 25:
          operator new();
        case 26:
          operator new();
        case 27:
        case 56:
          operator new();
        case 28:
        case 45:
          operator new();
        case 29:
        case 36:
          operator new();
        case 30:
          operator new();
        case 31:
        case 32:
          operator new();
        case 50:
          operator new();
        case 52:
          operator new();
        case 53:
          operator new();
        case 54:
          operator new();
        case 55:
          operator new();
        case 63:
        case 64:
        case 65:
          operator new();
        case 66:
          operator new();
        case 67:
          operator new();
        case 68:
          operator new();
        case 69:
          operator new();
        default:
          v43 = MEMORY[0x277D81150];
          v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSCEASTElement *TSCEASTRewriter::loadAsTree()", a4, a5);
          v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTRewriter.mm", v46, v47);
          if (v60)
          {
            v53 = *(v60 + 1);
          }

          else
          {
            v53 = 0;
          }

          v54 = TSCEASTNodeArray::codeString(*(this + 2), v48, v49, v50, v51);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v55, v44, v52, 281, 0, "%d is not a valid node tag, seen at offset: %lu, seen in %{public}@", v40, v53, v54);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58, v59);
          break;
      }

      goto LABEL_54;
    }
  }

  v42 = v64;
  v41 = v65;
  if (v65 - v64 == 8)
  {
    goto LABEL_52;
  }

  if (!*(*(this + 2) + 8))
  {
    if (v65 == v64)
    {
LABEL_60:
      while (v42 != v41)
      {
        if (*v42)
        {
          (*(**v42 + 8))(*v42);
        }

        v42 += 8;
      }

      goto LABEL_61;
    }

LABEL_52:
    v41 = v65 - 8;
    *(this + 13) = *(v65 - 1);
    v65 = v41;
    goto LABEL_60;
  }

LABEL_54:
  *(this + 13) = 0;
LABEL_61:
  if (__p)
  {
    v62 = __p;
    operator delete(__p);
  }

  if (v64)
  {
    v65 = v64;
    operator delete(v64);
  }

  sub_22120E388(&v67);
  return *(this + 13);
}

void sub_22120C5D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  sub_22120E388(v27 - 120);
  _Unwind_Resume(a1);
}

void *sub_22120C7F0(void *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*result)
  {
    if (*(*result + 8) >= a2)
    {
      result[1] = a2;
    }

    else
    {
      v6 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEASTNodeArrayReader::setOffset(size_t)", a4, a5);
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeArray.h", v9, v10);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 232, 0, "Can't set offset more than one past bytes used, offset: %lu in formula", a2);

      v17 = MEMORY[0x277D81150];

      return objc_msgSend_logBacktraceThrottled(v17, v13, v14, v15, v16);
    }
  }

  return result;
}

void *TSCEASTRewriter::removeFunctionNode(void *this, TSCEASTFunctionElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a2;
  if (a2)
  {
    v6 = this;
    sub_22120CA10(this, a2, a3, a4, a5);
    *(v6 + 140) = 1;
    sub_22120CA10(v6, v7, v8, v9, v10);
    if ((*(*a2 + 56))(a2) != 1)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "void TSCEASTRewriter::removeFunctionNode(TSCEASTFunctionElement *)", v12, v13);
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTRewriter.mm", v17, v18);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 348, 0, "removeFunctionNode error: node has more than one child");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    }

    return sub_22120E3DC(v6 + 20, &v25);
  }

  return this;
}

uint64_t sub_22120CA10(uint64_t result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = result;
  if (*(result + 96) == 1)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEASTIteratorBase::willModify()", a4, a5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTIteratorBase.h", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 86, 0, "Attempting to modify an iterator marked as readOnly.");

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  }

  *(v5 + 97) = 1;
  return result;
}

uint64_t TSCEASTRewriter::clearRemovalOfFunctionNode(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  if (!a2)
  {
    return 0;
  }

  v3 = sub_2210CDC18((a1 + 160), &v15);
  if (!v3)
  {
    return 0;
  }

  v8 = v3;
  sub_22120CA10(a1, v4, v5, v6, v7);
  v9 = 1;
  *(a1 + 140) = 1;
  sub_22120CA10(a1, v10, v11, v12, v13);
  sub_2210CDD3C((a1 + 160), v8);
  return v9;
}

TSCEASTElementWithChildren *TSCEASTRewriter::nodeByRemovingNodeIfNeeded(TSCEASTRewriter *a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    if (*(a1 + 23))
    {
      v4 = TSCEASTElement::tag(a2, a1);
      if (v4 <= 0x22 && ((1 << v4) & 0x600030000) != 0)
      {
        v7 = v2;
        if (sub_22120E640(a1 + 20, &v7))
        {
          if ((*(*v2 + 56))(v2))
          {
            v5 = TSCEASTElementWithChildren::child(v2, 0);
            return TSCEASTRewriter::nodeByRemovingNodeIfNeeded(a1, v5);
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

id TSCEASTRewriter::description(TSCEASTRewriter *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(this + 13);
  if (v6 || (TSCEASTRewriter::loadAsTree(this, a2, a3, a4, a5), (v6 = *(this + 13)) != 0))
  {
    v10 = MEMORY[0x277CCAB68];
    v11 = (*(*v6 + 104))(v6, this, 0);
    v15 = objc_msgSend_stringWithFormat_(v10, v12, @"TSCEASTRewriter<%p>:\n%@", v13, v14, this, v11);
  }

  else
  {
    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v7, @"TSCEASTRewriter<%p>:\n%@", v8, v9, this, @"no tree (root is NULL)");
  }

  return v15;
}

void TSCEASTRewriter::rewrite(TSCEASTRewriter *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  TSCEASTRewriter::loadAsTree(this, a2, a3, a4, a5);
  v6 = *(this + 13);
  if (v6)
  {
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v7 = (this + 112);
    *(this + 15) = *(this + 14);
    *(this + 34) = 0;
    *&v47 = v6;
    DWORD2(v47) = 0;
    sub_22120D118(&v48, &v47);
    *&v47 = 0;
    sub_221126E28(this + 112, &v47);
    v8 = v48;
    v9 = v49;
    while (v48 != v49)
    {
      v12 = *(v9 - 2);
      v10 = v9 - 4;
      v11 = v12;
      v13 = v10[2];
      v49 = v10;
      *(this + 34) = v13;
      v14 = *(this + 15);
      v17 = *(v14 - 8);
      v15 = v14 - 8;
      v16 = v17;
      if (v11)
      {
        (*(*this + 312))(this, v11);
        v18 = (*(*this + 40))(this, v11);
        if (v18 == v11)
        {
          goto LABEL_14;
        }

        v11 = v18;
        if (v16)
        {
          TSCEASTElementWithChildren::setChildAtIndex(v16, v18, v13, this, v22);
          if (v11)
          {
            goto LABEL_14;
          }
        }

        else
        {
          sub_22120CA10(this, v19, v20, v21, v22);
          *(this + 140) = 1;
          sub_22120CA10(this, v24, v25, v26, v27);
          *(this + 13) = v11;
          if (v11)
          {
LABEL_14:
            if ((*(v11 + 16) & 2) != 0)
            {
              if ((*(*v11 + 56))(v11))
              {
                v29 = *(this + 34);
                *&v47 = 0;
                DWORD2(v47) = v29;
                sub_22120D118(&v48, &v47);
                v31 = *(this + 15);
                v30 = *(this + 16);
                if (v31 >= v30)
                {
                  v34 = (v31 - *v7) >> 3;
                  if ((v34 + 1) >> 61)
                  {
                    sub_22107C148();
                  }

                  v35 = v30 - *v7;
                  v36 = v35 >> 2;
                  if (v35 >> 2 <= (v34 + 1))
                  {
                    v36 = v34 + 1;
                  }

                  if (v35 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v37 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v37 = v36;
                  }

                  if (v37)
                  {
                    sub_221122DC8(this + 112, v37);
                  }

                  *(8 * v34) = v11;
                  v32 = 8 * v34 + 8;
                  v38 = *(this + 14);
                  v39 = *(this + 15) - v38;
                  v40 = (8 * v34 - v39);
                  memcpy(v40, v38, v39);
                  v41 = *(this + 14);
                  *(this + 14) = v40;
                  *(this + 15) = v32;
                  *(this + 16) = 0;
                  if (v41)
                  {
                    operator delete(v41);
                  }
                }

                else
                {
                  *v31 = v11;
                  v32 = (v31 + 1);
                }

                *(this + 15) = v32;
                v42 = *(v11 + 3);
                v43 = *(v11 + 4);
                if (v43 != v42)
                {
                  v44 = ((v43 - v42) >> 3) - 1;
                  do
                  {
                    v46 = *(v43 - 8);
                    v43 -= 8;
                    v45 = v46;
                    if (v46)
                    {
                      *&v47 = v45;
                      DWORD2(v47) = v44;
                      sub_22120D118(&v48, &v47);
                      v42 = *(v11 + 3);
                    }

                    --v44;
                  }

                  while (v43 != v42);
                }
              }
            }

            else
            {
              v28 = *(this + 34);
              *&v47 = v11;
              DWORD2(v47) = v28;
              sub_22120D118(&v48, &v47);
            }
          }
        }
      }

      else
      {
        *(this + 15) = v15;
        if (v16)
        {
          v23 = TSCEASTElement::tag(v16, this);
          if (v23 <= 44)
          {
            if (v23 == 27)
            {
LABEL_21:
              v33 = (*this + 192);
            }

            else
            {
              if (v23 != 28)
              {
                goto LABEL_39;
              }

LABEL_22:
              v33 = (*this + 72);
            }

            (*v33)(this, v16);
            goto LABEL_39;
          }

          if (v23 == 45)
          {
            goto LABEL_22;
          }

          if (v23 == 56)
          {
            goto LABEL_21;
          }
        }
      }

LABEL_39:
      v8 = v48;
      v9 = v49;
    }

    if (v8)
    {
      operator delete(v8);
    }
  }
}

void sub_22120D0D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22120D118(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      sub_22107C148();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      sub_22107C238();
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t TSCEASTRewriter::resultArray(TSCEASTRewriter *this)
{
  v1 = *(this + 2);
  if ((*(this + 140) & 1) != 0 || *(this + 4))
  {
    operator new();
  }

  *(this + 2) = 0;
  return v1;
}

void sub_22120D758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_2210BDEC0(&a15);
  if (a20)
  {
    a21 = a20;
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void sub_22120D7E8(TSCEASTNodeArray *this, const char *__src, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!this->var0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], __src, "void TSCEASTNodeArray::writeBytes(const uint8_t *, size_t)", a4, a5);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeArray.h", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 180, 0, "invalid nil value for '%{public}s'", "_nodeArray");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  var1 = this->var1;
  if (this->var2 - var1 < a3 || (var0 = this->var0) == 0)
  {
    TSCEASTNodeArray::resizeCapacity(this, a3, a3, a4, a5);
    var0 = this->var0;
    if (!this->var0)
    {
      return;
    }

    var1 = this->var1;
  }

  memcpy(&var0[var1], __src, a3);
  this->var1 += a3;
}

void sub_22120D918(TSCEASTNodeArray *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!this->var0)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEASTNodeArray::write(const T &) [T = unsigned long]", a4, a5);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeArray.h", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 171, 0, "invalid nil value for '%{public}s'", "_nodeArray");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  var1 = this->var1;
  if (this->var2 - var1 < 8 || (var0 = this->var0) == 0)
  {
    TSCEASTNodeArray::resizeCapacity(this, 8uLL, a3, a4, a5);
    var0 = this->var0;
    if (!this->var0)
    {
      return;
    }

    var1 = this->var1;
  }

  *&var0[var1] = *a2;
  this->var1 += 8;
}

_BYTE *TSCEASTRewriter::createDeepCopy(TSCEASTRewriter *this, TSCEASTElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22120CA10(this, a2, a3, a4, a5);
  v7 = (*(*a2 + 24))(a2, this + 24, this);
  v7[16] = v7[16] & 0xFC | 1;
  v8 = *a2;
  if (v9)
  {
    v10 = v9;
    v11 = (*(v8 + 56))(a2);
    if (v11)
    {
      v12 = v11;
      if (v13)
      {
        v14 = v13;
        v15 = 0;
        do
        {
          v16 = TSCEASTElementWithChildren::child(v10, v15);
          DeepCopy = TSCEASTRewriter::createDeepCopy(this, v16);
          TSCEASTElementWithChildren::setChildAtIndex(v14, DeepCopy, v15, this, v18);
          v15 = (v15 + 1);
        }

        while (v12 != v15);
      }
    }
  }

  return v7;
}

void TSCEASTRewriter::createUnaryOp(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  sub_22120CA10(a1, a2, a3, a4, a5);
  TSCEASTTagOnlyElement::appendTagOnlyElement((a1 + 24), v5, v7, v8, v9);
  operator new();
}

void TSCEASTRewriter::createIntersectionOp(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  sub_22120CA10(a1, a2, a3, a4, a5);
  TSCEASTIntersectionElement::appendIntersectionElement((a1 + 24), v5, v7, v8, v9);
  operator new();
}

void TSCEASTRewriter::createBinaryOp(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  sub_22120CA10(a1, a2, a3, a4, a5);
  TSCEASTTagOnlyElement::appendTagOnlyElement((a1 + 24), v5, v7, v8, v9);
  operator new();
}

void TSCEASTRewriter::createThunk(TSCEASTRewriter *this, TSCEASTElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22120CA10(this, a2, a3, a4, a5);
  TSCEASTThunkElement::appendThunkNodeHeader((this + 24), 0, 27, v6, v7);
  operator new();
}

void TSCEASTRewriter::createFunction(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = a3;
  memset(__p, 0, sizeof(__p));
  if (a3)
  {
    sub_221126E28(__p, &v15);
    v13 = &a9;
    do
    {
      v11 = v13++;
      v12 = *v11;
      if (!v12)
      {
        break;
      }

      sub_221126E28(__p, &v12);
    }

    while (v12);
  }

  TSCEASTRewriter::createFunction(a1, a2, __p, a4, a5);
}

void sub_22120DEDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TSCEASTRewriter::createFunction(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_22120CA10(a1, a2, a3, a4, a5);
  TSCEASTFunctionElement::appendFunctionElement((a1 + 24), a2, (a3[1] - *a3) >> 3, 0, v8);
  operator new();
}

void TSCEASTRewriter::createIf(TSCEASTRewriter *this, TSCEASTElement *a2, TSCEASTElement *a3, TSCEASTElement *a4)
{
  if (TSCEASTElement::tag(a3, this) != 27)
  {
    TSCEASTRewriter::createThunk(this, a3, v8, v9, v10);
  }

  if (a4)
  {
    if (TSCEASTElement::tag(a4, this) != 27)
    {
      TSCEASTRewriter::createThunk(this, a4, v14, v9, v10);
    }
  }

  TSCEASTRewriter::createFunction(this, 0x3E, a2, v9, v10, v11, v12, v13, a3);
}

void TSCEASTRewriter::createColonWithUidTractList(TSCEASTRewriter *this, TSCEUndoTractList *a2, TSCEASTElement *a3, TSCEASTElement *a4)
{
  v11 = a2;
  if (v11)
  {
    sub_22120CA10(this, v7, v8, v9, v10);
    TSCEASTColonElement::appendColonWithUidTractListElement((this + 24), v11, v12);
    operator new();
  }

  TSCEASTRewriter::createBinaryOp(this, 0x1C, a3, a4, v10);
}

void TSCEASTRewriter::createList(TSCEASTRewriter *this, TSCEASTElement *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v10 = a2;
  memset(__p, 0, sizeof(__p));
  if (a2)
  {
    sub_221126E28(__p, &v10);
    va_copy(v8, va);
    do
    {
      v6 = v8;
      v8 += 8;
      v7 = *v6;
      if (!v7)
      {
        break;
      }

      sub_221126E28(__p, &v7);
    }

    while (v7);
  }

  TSCEASTRewriter::createList(this, __p, a3, a4, a5);
}

void sub_22120E1F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TSCEASTRewriter::createList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22120CA10(a1, a2, a3, a4, a5);
  TSCEASTListElement::appendListNode((a1 + 24), ((*(a2 + 8) - *a2) >> 3), v7, v8, v9);
  operator new();
}

void TSCEASTRewriter::createArray(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22120CA10(a1, a2, a3, a4, a5);
  TSCEASTArrayElement::appendArrayNode((a1 + 24), a2, WORD2(a2), v7, v8);
  operator new();
}

uint64_t sub_22120E388(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x223DA1450](v2, 0x10C402FEFCB83);
  }

  return a1;
}

void *sub_22120E3DC(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void *sub_22120E640(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v5 == v10)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
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

void *sub_22120E72C(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_22120F158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  _Block_object_dispose(&a15, 8);

  _Block_object_dispose(&a24, 8);
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_22120F1BC(__n128 *a1, __n128 *a2)
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

void sub_22120F1E0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void *sub_22120F1F8(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_2210CDBC0(result, a2);
    }

    sub_22107C148();
  }

  return result;
}

__n128 sub_22120F2B8(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  return result;
}

void sub_22120F2F4(uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_22107C148();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_2210CDBC0(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

void sub_22120F60C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22120F650(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_msgSend_aggNodeForColumnUid_(v3, v4, *(a1 + 32) + 72, v5, v6);
  v12 = objc_msgSend_formulaCoord(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_groupByUid(*(a1 + 40), v13, v14, v15, v16);
  *&v19 = v12;
  *(&v19 + 1) = v17;
  v20 = v18;
  sub_22120F2F4(*(*(a1 + 48) + 8) + 48, &v19);
}

void sub_22120F950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_22120F980(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22120F998(uint64_t a1, void *a2)
{
  v12 = a2;
  v6 = objc_msgSend_aggNodeForGroupNode_(*(a1 + 32), v3, v12, v4, v5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  objc_msgSend_rebuildFormulasForAggNode_(v12, v9, *(*(*(a1 + 40) + 8) + 40), v10, v11);
}

uint64_t sub_22120FC6C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_22120FCE8(result, a4);
  }

  return result;
}

void sub_22120FCCC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22120FCE8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_2210CDBC0(a1, a2);
  }

  sub_22107C148();
}

void TSCETableResolverWrapper::~TSCETableResolverWrapper(TSCETableResolverWrapper *this)
{
}

{
}

uint64_t TSCETableResolverWrapper::apparentTractRefForTractRef@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  result = *a1;
  if (result)
  {
    return MEMORY[0x2821F9670](result, sel_apparentTractRefForTractRef_rangeContext_, a2, a3, a4);
  }

  *(a5 + 80) = 0;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  return result;
}

id TSCETableResolverWrapper::cellsModifiedInCurrentRecalcCycle@<X0>(TSCETableResolverWrapper *this@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  result = this->var0;
  if (result)
  {
    return MEMORY[0x2821F9670](result, sel_cellsModifiedInCurrentRecalcCycle, a2, a3, a4);
  }

  *(a5 + 32) = 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  return result;
}

id TSCETableResolverWrapper::readValueForReference(void **a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_readValueForReference_fromCellRef_outValue_readOptions_(*a1, a2, a2, a3, a4, a5);

  return v5;
}

void TSCETableResolverWrapper::formatFromCell(TSCETableResolverWrapper *this@<X0>, TSCEEvalRef *a2@<X1>, const TSUCellCoord *a3@<X2>, _OWORD *a4@<X8>)
{
  v7 = a2;
  v9 = v7;
  if (this->var0)
  {
    objc_msgSend_format_fromCell_(this->var0, v7, v7, a3, v8);
  }

  else
  {
    *a4 = 0u;
    a4[1] = 0u;
  }
}

id TSCETableResolverWrapper::canonicalCellReferenceForReference(TSCETableResolverWrapper *this, TSCEEvalRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_canonicalCellReferenceForReference_(this->var0, a2, a2, a4, a5);

  return v5;
}

id TSCETableResolverWrapper::valuesForViewTractRef(void **a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_valuesForViewTractRef_hidingActionMask_outError_outGeometricPrecedents_forceHidingOfPivotFiltered_(*a1, a2, a2, a3, a4, a5, a6);

  return v6;
}

id TSCETableResolverWrapper::cellTractRefForViewTractRef(TSCETableResolverWrapper *this, TSCEViewTractRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_cellTractRefForViewTractRef_(this->var0, a2, a2, a4, a5);

  return v5;
}

id TSCETableResolverWrapper::makeReferenceWithTopLeft(TSCETableResolverWrapper *this, const TSUCellCoord *a2, const TSUCellCoord *a3, const TSUPreserveFlags *a4)
{
  v8 = [TSCEEvalRef alloc];
  v10 = objc_msgSend_initWithTableResolver_topLeft_bottomRight_preserveFlags_(v8, v9, this, a2, a3, a4);

  return v10;
}

void sub_221210CFC(_Unwind_Exception *a1)
{
  v7 = *(v5 - 120);
  if (v7)
  {
    *(v5 - 112) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

void sub_221213A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, void *a36)
{
  v42 = *(v40 - 152);
  if (v42)
  {
    *(v40 - 144) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(a1);
}

void sub_221213C50(uint64_t a1, unsigned int *a2, void *a3)
{
  v15 = a3;
  v8 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v5, *a2, v6, v7);
  v12 = objc_msgSend_reorganizeValueForSorting_(v15, v9, *(a1 + 40), v10, v11);
  objc_msgSend_setReorganizeValue_atIndex_(v8, v13, v12, *(a1 + 48), v14);
}

void sub_221213D0C(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = a3;
  v8 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v5, *(a2 + 4), v6, v7);
  v12 = objc_msgSend_reorganizeValueForSorting_(v15, v9, *(a1 + 40), v10, v11);
  objc_msgSend_setReorganizeValue_atIndex_(v8, v13, v12, *(a1 + 48), v14);
}

uint64_t sub_221213F6C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v10 = a3;
  v11 = *(*(a1 + 32) + 8) - **(a1 + 32);
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = 0;
  v13 = v11 >> 3;
  do
  {
    v14 = *(**(a1 + 32) + 8 * v12) != 1;
    v15 = objc_msgSend_reorganizeValueAtIndex_(v5, v6, v12, v8, v9);
    v19 = objc_msgSend_reorganizeValueAtIndex_(v10, v16, v12, v17, v18);
    v20 = sub_2216AE13C(v15, v19, v14, *(a1 + 40));
    v21 = v20;
    ++v12;
    if (v20)
    {
      v22 = 1;
    }

    else
    {
      v22 = v12 >= v13;
    }
  }

  while (!v22);
  if (!v20)
  {
LABEL_9:
    v23 = objc_msgSend_columnOrRowIndex(v5, v6, v7, v8, v9);
    if (v23 < objc_msgSend_columnOrRowIndex(v10, v24, v25, v26, v27))
    {
      v21 = -1;
    }

    else
    {
      v21 = 1;
    }
  }

  return v21;
}

void sub_22121470C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  v36 = *(v34 - 160);
  if (v36)
  {
    *(v34 - 152) = v36;
    operator delete(v36);
  }

  *(v34 - 160) = v34 - 136;
  sub_22107C2C0((v34 - 160));

  _Unwind_Resume(a1);
}

id sub_22121488C(void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_22107C148();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      sub_22107C1F0(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    sub_22107C098(a1, v13);
    v7 = a1[1];
    result = sub_22107C26C(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_22121496C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_221214980(uint64_t a1, unsigned int *a2, void *a3)
{
  v15 = a3;
  v8 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v5, *a2, v6, v7);
  v12 = objc_msgSend_reorganizeValueForSorting_(v15, v9, *(a1 + 40), v10, v11);
  objc_msgSend_setReorganizeValue_atIndex_(v8, v13, v12, *(a1 + 48), v14);
}

void sub_221214A3C(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = a3;
  v8 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v5, *(a2 + 4), v6, v7);
  v12 = objc_msgSend_reorganizeValueForSorting_(v15, v9, *(a1 + 40), v10, v11);
  objc_msgSend_setReorganizeValue_atIndex_(v8, v13, v12, *(a1 + 48), v14);
}

void sub_221215D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, void **a12, uint64_t a13, id a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  sub_22107C2C0(&a12);

  _Unwind_Resume(a1);
}

__n128 sub_2212163F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 48) = v2;
  v3 = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 64) = v3;
  result = *(a2 + 72);
  v5 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v5;
  *(a1 + 72) = result;
  return result;
}

void sub_221216428(uint64_t a1)
{
  v2 = *(a1 + 48);
}

void sub_221216474(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 64))
  {
    v6 = 0;
    v7 = a2 << 32;
    do
    {
      v8 = objc_msgSend_valueAtGridCoord_accessContext_(*(a1 + 32), a2, v7, *(*(a1 + 48) + 8) + 48, a5);
      objc_msgSend_setValue_atCoord_(*(a1 + 40), v9, v8, *(*(a1 + 56) + 8) + 48, v10);
      sub_2211786BC((*(*(a1 + 56) + 8) + 48), (a1 + 72));

      ++v6;
      ++v7;
    }

    while (v6 < *(a1 + 64));
  }

  *(*(*(a1 + 56) + 8) + 48) = (*(*(*(a1 + 56) + 8) + 52) + 1) << 32;
}

void sub_221216538(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 68))
  {
    v6 = 0;
    v7 = a2;
    do
    {
      v8 = objc_msgSend_valueAtGridCoord_accessContext_(*(a1 + 32), a2, v7, *(*(a1 + 48) + 8) + 48, a5);
      objc_msgSend_setValue_atCoord_(*(a1 + 40), v9, v8, *(*(a1 + 56) + 8) + 48, v10);
      sub_2211786BC((*(*(a1 + 56) + 8) + 48), (a1 + 72));

      ++v6;
      v7 += 0x100000000;
    }

    while (v6 < *(a1 + 68));
  }

  *(*(*(a1 + 56) + 8) + 48) = (*(*(*(a1 + 56) + 8) + 48) + 1);
}

void sub_221216EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *a17)
{
  v22 = v21;

  _Unwind_Resume(a1);
}

void sub_2212171F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13)
{
  v19 = v18;

  _Unwind_Resume(a1);
}

void sub_2212189EC(uint64_t a1, void *a2)
{
  v24 = a2;
  objc_storeStrong((*(a1 + 32) + 64), a2);
  if (*(a1 + 40) == 1)
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 80);
    if (v9 != objc_msgSend_presetID(*(v8 + 64), v4, v5, v6, v7))
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTTableStylePreset loadFromUnarchiver:]_block_invoke", v11, v12);
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStylePreset.mm", v16, v17);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 168, 0, "expected equality between %{public}s and %{public}s", "_tempUpgradePresetID", "_styleNetwork.presetID");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
    }

    *(*(a1 + 32) + 80) = 0x7FFFFFFFFFFFFFFFLL;
  }
}

id sub_221218FAC(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();

  return v1;
}

void sub_2212192F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_221219314(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  v4 = *(*(*(result + 32) + 8) + 24);
  if (v4 >= a3)
  {
    v4 = a3;
  }

  if (v4)
  {
    v5 = *(*(result + 40) + 8);
    if (*(v5 + 24) >= v4)
    {
      *(v5 + 24) = a2 + a3 - v4;
      *(*(*(result + 32) + 8) + 24) -= v4;
      if (*(*(*(result + 32) + 8) + 24))
      {
        return result;
      }
    }

    else
    {
      *(v5 + 24) = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  *a4 = 1;
  return result;
}

void sub_221219494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2212194B8(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  v4 = *(*(result + 32) + 8);
  v5 = *(v4 + 24);
  if (v5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = *(v4 + 24);
  }

  *(v4 + 24) = v5 - v6;
  if (!*(*(*(result + 32) + 8) + 24))
  {
    *(*(*(result + 40) + 8) + 24) = a2 + v6 - 1;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_221219970(uint64_t a1)
{
  if ((a1 - 1) > 0x19)
  {
    return 0;
  }

  else
  {
    return qword_2217E0930[a1 - 1];
  }
}

uint64_t sub_221219994(unint64_t a1)
{
  if (a1 > 0x19)
  {
    return 0;
  }

  else
  {
    return qword_2217E0A00[a1];
  }
}

uint64_t sub_2212199B4(uint64_t a1)
{
  if ((a1 - 1) > 0x19)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return qword_2217E0AD0[a1 - 1];
  }
}

uint64_t sub_2212199D8(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return qword_2217E0BA0[a1];
  }
}

uint64_t sub_2212199F8(uint64_t a1)
{
  if (a1 <= 19)
  {
    if (a1 == 9)
    {
      return 2;
    }

    if (a1 == 10)
    {
      return 3;
    }
  }

  else
  {
    switch(a1)
    {
      case 20:
        return 1;
      case 23:
        return 0;
      case 25:
        return 4;
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t sub_221219A58(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_2217E0BC8[a1];
  }
}

uint64_t sub_221219A78(uint64_t a1)
{
  if ((a1 - 1) > 0x17)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return qword_2217E0C20[a1 - 1];
  }
}

uint64_t sub_221219A9C(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_2217E0CE0[a1];
  }
}

uint64_t sub_221219ABC(uint64_t a1)
{
  if (a1 > 19)
  {
    if (a1 != 20)
    {
      if (a1 == 23)
      {
        return 0;
      }

      return 0x7FFFFFFFFFFFFFFFLL;
    }

    return 1;
  }

  else
  {
    if (a1 != 9)
    {
      if (a1 == 10)
      {
        return 3;
      }

      return 0x7FFFFFFFFFFFFFFFLL;
    }

    return 2;
  }
}

__CFString *sub_221219B0C(uint64_t a1)
{
  if ((a1 - 1) > 0x1A)
  {
    return 0;
  }

  else
  {
    return off_278461718[a1 - 1];
  }
}

__CFString *sub_221219B30(uint64_t a1)
{
  if ((a1 - 1) > 0x1A)
  {
    return @"Not Set";
  }

  else
  {
    return off_2784617F0[a1 - 1];
  }
}

void sub_221219BE0(_Unwind_Exception *a1, uint64_t a2, TSUIndexSet *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  TSUIndexSet::~TSUIndexSet(&a11);

  _Unwind_Resume(a1);
}

void sub_22121A218(_Unwind_Exception *a1)
{
  TSUIndexSet::~TSUIndexSet((v3 - 208));
  TSUIndexSet::~TSUIndexSet((v3 - 176));
  TSUIndexSet::~TSUIndexSet((v3 - 144));
  TSUIndexSet::~TSUIndexSet((v3 - 112));

  _Unwind_Resume(a1);
}

uint64_t sub_22121A2E4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v1 = a1 + 48;
  *v1 = v2 | 3;
  *&v3.f64[0] = 0x8000000080000000;
  *&v3.f64[1] = 0x8000000080000000;
  *(v1 + 8) = vnegq_f64(v3);
  *(v1 + 24) = 0;
  return TSUIndexSet::operator=();
}

uint64_t sub_22121A310(uint64_t a1, int64x2_t *a2)
{
  v2 = *(a1 + 32);
  v4 = vsubq_s64(*a2, vdupq_n_s64(*(*(a1 + 40) + 4)));
  return TSUIndexSet::addIndexesInRange((*(v2 + 8) + 48), &v4);
}

uint64_t sub_22121A354(uint64_t a1, int64x2_t *a2)
{
  v2 = *(a1 + 32);
  v4 = vsubq_s64(*a2, vdupq_n_s64(**(a1 + 40)));
  return TSUIndexSet::addIndexesInRange((*(v2 + 8) + 48), &v4);
}

void sub_22121C220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  TSUIndexSet::~TSUIndexSet((v46 + 48));
  _Block_object_dispose(&a43, 8);
  TSUIndexSet::~TSUIndexSet((v45 + 48));
  _Block_object_dispose((v47 - 256), 8);
  TSUIndexSet::~TSUIndexSet((v44 + 48));
  _Block_object_dispose((v47 - 176), 8);
  TSUIndexSet::~TSUIndexSet((v43 + 48));
  _Unwind_Resume(a1);
}

void *sub_22121C2B4(void *result, void *a2)
{
  v2 = result;
  v3 = *(result[7] + 4);
  v4 = a2[1];
  v5 = *a2 + v3;
  v6 = v5 < 0 != __OFADD__(*a2, v3);
  *(*(result[4] + 8) + 24) |= v6;
  if (v4 + v3 < 0 || (v7 = v3 + v4, v7 == 0x7FFF) || (v8 = (v5 & ~(v5 >> 31)), v8 > v7))
  {
    *(*(result[4] + 8) + 24) = 1;
  }

  else
  {
    v9._begin = v8;
    v9._end = v7;
    TSUIndexSet::addIndexesInRange((*(result[5] + 8) + 48), &v9);
    return TSUIndexSet::addIndexesInRange((*(v2[6] + 8) + 48), &v9);
  }

  return result;
}

uint64_t sub_22121C370(uint64_t result, void *a2)
{
  v2 = result;
  v3 = **(result + 56);
  v4 = a2[1];
  v5 = *a2 + v3;
  v6 = v5 < 0 != __OFADD__(*a2, v3);
  *(*(*(result + 32) + 8) + 24) |= v6;
  if (v4 + v3 < 0 || ((v7 = v5 & ~(v5 >> 31), v8 = (v3 + v4), v8 != 0x7FFFFFFF) ? (v9 = v7 > v8) : (v9 = 1), v9 || (v10._begin = v7, v10._end = v8, (v8 & 0x80000000) != 0)))
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  else
  {
    TSUIndexSet::addIndexesInRange((*(*(result + 40) + 8) + 48), &v10);
    return TSUIndexSet::addIndexesInRange((*(*(v2 + 48) + 8) + 48), &v10);
  }

  return result;
}

unint64_t sub_22121C524(void *a1, void *a2, unsigned int a3, void *a4, char a5, int a6, void *a7, void *a8, _DWORD *a9, void *a10)
{
  v12 = a1;
  v13 = a4;
  TSUDecimal::operator=();
  v216 = objc_msgSend_nilValue(TSCENilValue, v14, v15, v16, v17);
  v212 = objc_msgSend_zero(TSCENumberValue, v18, v19, v20, v21);
  v26 = objc_msgSend_count(v13, v22, v23, v24, v25);
  v210 = a7;
  v27 = v12;
  v227[0] = v27;
  v227[1] = a2;
  v228 = 0;
  *v229 = 0;
  v230 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v231 = 0;
  v232 = 0;
  v36 = objc_msgSend_hidingActionMask(v27, v28, v29, v30, v31);
  *&v229[7] = v36 != 0;
  v226[0] = 0;
  v226[1] = 0;
  v225 = v226;
  if (v26)
  {
    v215 = 0;
    v209 = 0;
    v37 = 0;
    v38 = 0;
    while (1)
    {
      v39 = objc_msgSend_valueAtIndex_accessContext_(v13, v32, v38, v227, v35);
      v44 = v39;
      if (!v36)
      {
        goto LABEL_31;
      }

      if ((v229[10] & v36) == 0)
      {
        break;
      }

LABEL_56:

LABEL_57:
      if (++v38 == v26)
      {
        goto LABEL_63;
      }
    }

    if ((v36 & 0x40) != 0 && (objc_msgSend_isNil(v39, v40, v41, v42, v43) & 1) == 0)
    {
      if (objc_msgSend_isThunk(v44, v40, v45, v42, v43))
      {
        v50 = objc_msgSend_unwrapThunk_(v27, v46, v44, v48, v49);

        v44 = v50;
      }

      if (objc_msgSend_isReferenceValue(v44, v46, v47, v48, v49))
      {
        v51 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v44, v40, v27, a2, a3, a10);
        v218._decimal.w[0] = objc_msgSend_tableUID(v51, v52, v53, v54, v55);
        v218._decimal.w[1] = v56;
        objc_msgSend_subtotalPrecedentForTableUID_(TSCEHauntedOwner, v56, &v218, v57, v58);
        v223._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
        v223._coordsForOwnerUid.__tree_.__size_ = 0;
        v223._coordsForOwnerUid.__tree_.__begin_node_ = &v223._coordsForOwnerUid.__tree_.__end_node_;
        if (*a10)
        {
          TSUDecimal::operator=();
          v63 = 1;
        }

        else
        {
          v64 = objc_msgSend_tableUID(v51, v59, v60, v61, v62);
          for (i = v226[0]; i; i = *i)
          {
            if (__PAIR128__(v65, v64) >= *(i + 2))
            {
              if (i[5] >= v65 && i[4] >= v64)
              {
                v218._decimal.w[0] = objc_msgSend_tableUID(v51, v65, v66, v67, v68);
                v218._decimal.w[1] = v118;
                v119 = sub_22121D288(&v225, v218._decimal.w);
                TSCECellRefSet::operator=(&v223, v119);
                goto LABEL_22;
              }

              ++i;
            }
          }

          v70 = objc_msgSend_calcEngine(v27, v65, v66, v67, v68);
          v74 = v70;
          if (v70)
          {
            objc_msgSend_cellDependentsOfCell_(v70, v71, v224, v72, v73);
          }

          else
          {
            v218 = 0;
            *v219 = 0;
          }

          TSCECellRefSet::operator=(&v223, &v218);
          sub_22107C800(&v218, v218._decimal.w[1]);

          v218._decimal.w[0] = objc_msgSend_tableUID(v51, v75, v76, v77, v78);
          v218._decimal.w[1] = v79;
          TSCECellRefSet::TSCECellRefSet(v219, &v223);
          sub_22121E5E0(&v225, v218._decimal.w);
          sub_22107C800(v219, *&v219[8]);
LABEL_22:
          if (v51)
          {
            objc_msgSend_anyRef(v51, v80, v81, v82, v83);
            v84 = v218._decimal.w[1];
            v85 = *(&v221 + 1);
          }

          else
          {
            v85 = 0;
            v84 = 0;
            v220 = 0u;
            v221 = 0u;
            memset(v219, 0, sizeof(v219));
            v218 = 0;
          }

          v222.coordinate = v84;
          v222._tableUID = *&v219[8];

          v63 = TSCECellRefSet::containsCellRef(&v223, &v222) ? 4 : 0;
        }

        sub_22107C800(&v223, v223._coordsForOwnerUid.__tree_.__end_node_.__left_);

        if (v63)
        {

          if (v63 != 4)
          {
            goto LABEL_124;
          }

          goto LABEL_57;
        }
      }
    }

LABEL_31:
    v86 = objc_msgSend_deepType_(v44, v40, v27, v42, v43);
    if ((objc_msgSend_isNil(v44, v87, v88, v89, v90) & 1) == 0)
    {
      if (objc_msgSend_isNil(v216, v91, v92, v93, v94))
      {
        v99 = v44;

        v216 = v99;
      }

      if (a6 && v86 == 2)
      {
        if ((v37 & 0xFFFFFFFE) == 2)
        {
          v190 = objc_msgSend_functionName(a2, v95, v96, v97, v98);
          *a10 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v191, v190, v192, v193);

LABEL_116:
          TSUDecimal::operator=();
          goto LABEL_123;
        }

        objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v44, v95, v27, a2, 0, a10);
        TSUDecimal::operator=();
        TSUDecimal::operator+=();
        if (*a10)
        {
          goto LABEL_116;
        }

        v37 = 1;
      }

      else
      {
        v218._decimal.w[0] = sub_2212560F4(v27, a2, v44, 0, a10);
        v218._decimal.w[1] = v100;
        if (*a10)
        {
          goto LABEL_116;
        }

        if (v86 == 5)
        {
          v104 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v44, v100, v27, a2, 0, a10);
          v108 = v104;
          if (*a10)
          {
            goto LABEL_121;
          }

          if (v209)
          {
            if ((objc_msgSend_dimensionsMatchModuloCurrency_(v212, v105, v104, v106, v107) & 1) == 0)
            {
              v202 = objc_msgSend_functionName(a2, v109, v110, v111, v112);
              *a10 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v203, v202, v204, v205);

LABEL_121:
              TSUDecimal::operator=();
LABEL_122:

LABEL_123:
              goto LABEL_124;
            }
          }

          else
          {
            v113 = v104;

            v212 = v113;
          }

          if (objc_msgSend_hasUnits(v108, v109, v110, v111, v112) && !objc_msgSend_dimension(v108, v114, v115, v116, v117))
          {
            if ((v37 - 1) <= 1)
            {
LABEL_120:
              v198 = objc_msgSend_functionName(a2, v114, v115, v116, v117);
              *a10 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v199, v198, v200, v201);

              TSUDecimal::operator=();
              goto LABEL_122;
            }

            v37 = 3;
          }

          else
          {
            if (v37 == 2)
            {
              goto LABEL_120;
            }

            v37 = 1;
          }

          v209 = 1;
        }

        else if (v86 == 3)
        {
          if ((v37 & 0xFFFFFFFD) == 1)
          {
            v194 = objc_msgSend_functionName(a2, v100, v101, v102, v103);
            *a10 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v195, v194, v196, v197);

            goto LABEL_116;
          }

          v37 = 2;
        }

        TSUDecimal::operator+=();
      }

      ++v215;
    }

    goto LABEL_56;
  }

  v215 = 0;
LABEL_63:
  if (v210)
  {
    *v210 = v216;
  }

  if (v215)
  {
    TSUDecimal::operator=();
    v218 = v233;
    TSUDecimal::operator/=();
    v217 = v218;
    if (a8)
    {
      *a8 = sub_22125621C(&v217, v216, v27, a2, 0);
    }

    if (a9)
    {
      *a9 = v215;
    }

    TSUDecimal::operator=();
    if (v26)
    {
      v124 = 0;
      while (1)
      {
        v125 = objc_msgSend_valueAtIndex_accessContext_(v13, v120, v124, v227, v123);
        v130 = v125;
        if (!v36)
        {
          goto LABEL_100;
        }

        if ((v229[10] & v36) == 0)
        {
          break;
        }

LABEL_106:

LABEL_107:
        if (++v124 == v26)
        {
          goto LABEL_110;
        }
      }

      if ((v36 & 0x40) != 0 && (objc_msgSend_isNil(v125, v126, v127, v128, v129) & 1) == 0)
      {
        if (objc_msgSend_isThunk(v130, v126, v131, v128, v129))
        {
          v136 = objc_msgSend_unwrapThunk_(v27, v132, v130, v134, v135);

          v130 = v136;
        }

        if (objc_msgSend_isReferenceValue(v130, v132, v133, v134, v135))
        {
          v137 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v130, v126, v27, a2, a3, a10);
          v218._decimal.w[0] = objc_msgSend_tableUID(v137, v138, v139, v140, v141);
          v218._decimal.w[1] = v142;
          objc_msgSend_subtotalPrecedentForTableUID_(TSCEHauntedOwner, v142, &v218, v143, v144);
          v223._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
          v223._coordsForOwnerUid.__tree_.__size_ = 0;
          v223._coordsForOwnerUid.__tree_.__begin_node_ = &v223._coordsForOwnerUid.__tree_.__end_node_;
          if (*a10)
          {
            TSUDecimal::operator=();
            v149 = 1;
          }

          else
          {
            v150 = objc_msgSend_tableUID(v137, v145, v146, v147, v148);
            for (j = v226[0]; j; j = *j)
            {
              if (__PAIR128__(v151, v150) >= *(j + 2))
              {
                if (j[5] >= v151 && j[4] >= v150)
                {
                  v218._decimal.w[0] = objc_msgSend_tableUID(v137, v151, v152, v153, v154);
                  v218._decimal.w[1] = v188;
                  v189 = sub_22121D288(&v225, v218._decimal.w);
                  TSCECellRefSet::operator=(&v223, v189);
                  goto LABEL_91;
                }

                ++j;
              }
            }

            v156 = objc_msgSend_calcEngine(v27, v151, v152, v153, v154);
            v160 = v156;
            if (v156)
            {
              objc_msgSend_cellDependentsOfCell_(v156, v157, v224, v158, v159);
            }

            else
            {
              v218 = 0;
              *v219 = 0;
            }

            TSCECellRefSet::operator=(&v223, &v218);
            sub_22107C800(&v218, v218._decimal.w[1]);

            v218._decimal.w[0] = objc_msgSend_tableUID(v137, v161, v162, v163, v164);
            v218._decimal.w[1] = v165;
            TSCECellRefSet::TSCECellRefSet(v219, &v223);
            sub_22121E5E0(&v225, v218._decimal.w);
            sub_22107C800(v219, *&v219[8]);
LABEL_91:
            if (v137)
            {
              objc_msgSend_anyRef(v137, v166, v167, v168, v169);
              v170 = v218._decimal.w[1];
              v171 = *(&v221 + 1);
            }

            else
            {
              v171 = 0;
              v170 = 0;
              v220 = 0u;
              v221 = 0u;
              memset(v219, 0, sizeof(v219));
              v218 = 0;
            }

            v222.coordinate = v170;
            v222._tableUID = *&v219[8];

            v149 = TSCECellRefSet::containsCellRef(&v223, &v222) ? 7 : 0;
          }

          sub_22107C800(&v223, v223._coordsForOwnerUid.__tree_.__end_node_.__left_);

          if (v149)
          {

            if (v149 != 7)
            {
              goto LABEL_124;
            }

            goto LABEL_107;
          }
        }
      }

LABEL_100:
      v172 = objc_msgSend_deepType_(v130, v126, v27, v128, v129);
      if ((objc_msgSend_isNil(v130, v173, v174, v175, v176) & 1) == 0)
      {
        if (a6 && v172 == 2)
        {
          v181 = objc_msgSend_asBooleanValue(v130, v177, v178, v179, v180);
          objc_msgSend_asBool(v181, v182, v183, v184, v185);
          TSUDecimal::operator=();
          v218 = *&v223._coordsForOwnerUid.__tree_.__begin_node_;
          TSUDecimal::operator-=();
          v224[0] = v218;

          TSUDecimal::operator*=();
          TSUDecimal::operator+=();
        }

        else
        {
          v186 = sub_2212560F4(v27, a2, v130, 0, a10);
          if (*a10)
          {
            TSUDecimal::operator=();

            goto LABEL_124;
          }

          v218._decimal.w[0] = v186;
          v218._decimal.w[1] = v187;
          TSUDecimal::operator-=();
          v224[0] = v218;
          TSUDecimal::operator*=();
          *&v223._coordsForOwnerUid.__tree_.__begin_node_ = v218;
          TSUDecimal::operator+=();
        }
      }

      goto LABEL_106;
    }

LABEL_110:
    if (v215 != 1 || (a5 & 1) != 0)
    {
      TSUDecimal::operator=();
      v218 = v233;
      TSUDecimal::operator/=();
      v234 = v218;
    }

    else
    {
      *a10 = objc_msgSend_divideByZeroError(TSCEError, (v215 - 1), v121, v122, v123);
      TSUDecimal::operator=();
    }
  }

  else
  {
    *a10 = objc_msgSend_divideByZeroError(TSCEError, 0, v33, v34, v35);
    TSUDecimal::operator=();
  }

LABEL_124:
  sub_22121E580(&v225, v226[0]);

  return v234._decimal.w[0];
}

void sub_22121D09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  sub_22121E580(v24 - 240, *(v24 - 232));

  _Unwind_Resume(a1);
}

uint64_t sub_22121D288(uint64_t a1, unint64_t *a2)
{
  v2 = *sub_22112C810(a1, &v4, a2);
  if (!v2)
  {
    sub_2211E6334("map::at:  key not found");
  }

  return v2 + 48;
}

id sub_22121D2C8(void *a1, void *a2, void *a3, uint64_t a4, char a5, int a6, void *a7, _DWORD *a8)
{
  v15 = a1;
  v16 = a3;
  v78[0] = 0;
  v71 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v16, v17, v15, a2, a4, 1, v78);
  v18 = v78[0];
  if (v18)
  {
    v23 = v18;
    v24 = objc_msgSend_raiseErrorOrConvert_(v15, v19, v18, v21, v22);
    v25 = v71;
    goto LABEL_19;
  }

  v26 = objc_msgSend_nilValue(TSCENilValue, v19, v20, v21, v22);
  v75 = 0;
  v76 = v26;
  v70 = a8;
  v25 = v71;
  v27 = sub_22121C524(v15, a2, a4, v71, a5, a6, &v76, a7, v70, &v75);
  v29 = v28;
  v30 = v76;

  v31 = v75;
  v77._decimal.w[0] = v27;
  v77._decimal.w[1] = v29;
  if (!v31)
  {
    v35 = objc_msgSend_deepType_(v30, v32, v15, v33, v34);
    if (v35 == 5)
    {
      v74 = 0;
      v49 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v30, v36, v15, a2, a4, &v74);
      v23 = v74;
      if (v23)
      {
        v24 = objc_msgSend_raiseErrorOrConvert_(v15, v50, v23, v52, v53);

        goto LABEL_18;
      }

      if (objc_msgSend_isDuration(v49, v50, v51, v52, v53))
      {
        v61 = objc_msgSend_unit(v49, v57, v58, v59, v60);
        TSUDecimal::doubleValue(&v77);
        sub_22121D648(v61, v62);
        TSUDecimal::operator=();
      }

      TSUDecimal::doubleValue(&v77);
      TSUDecimal::operator=();
      v24 = objc_msgSend_variantWithDecimal_(v49, v63, &v73, v64, v65);

      if (v71)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v35 == 3)
      {
        v37 = [TSCENumberValue alloc];
        TSUDecimal::doubleValue(&v77);
        objc_msgSend_daysToSeconds_(TSCECalendar, v39, v40, v41, v42, sqrt(v38));
        TSUDecimal::operator=();
        v45 = objc_msgSend_initWithDecimal_baseUnit_(v37, v43, &v73, 3, v44);
      }

      else
      {
        TSUDecimal::doubleValue(&v77);
        TSUDecimal::operator=();
        v45 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v54, &v73, v55, v56);
      }

      v24 = v45;
      if (v71)
      {
LABEL_12:
        objc_msgSend_formatWithContext_(v71, v46, v15, v47, v48);
LABEL_17:
        TSCEFormat::TSCEFormat(&v73, &v72);
        objc_msgSend_setFormat_(v24, v66, &v73, v67, v68);
        v23 = 0;
        goto LABEL_18;
      }
    }

    memset(&v72, 0, sizeof(v72));
    goto LABEL_17;
  }

  v23 = v31;
  v24 = objc_msgSend_raiseErrorOrConvert_(v15, v32, v31, v33, v34);
LABEL_18:

LABEL_19:

  return v24;
}

double sub_22121D648(int a1, double result)
{
  if (a1 <= 3)
  {
    if (a1 == 2)
    {
      v2 = 2.73386103e-12;
    }

    else
    {
      if (a1 != 3)
      {
        return result;
      }

      v2 = 1.33959191e-10;
    }
  }

  else
  {
    switch(a1)
    {
      case 4:
        v2 = 0.0000000771604938;
        break;
      case 5:
        v2 = 0.000277777778;
        break;
      case 7:
        v2 = 1000000.0;
        break;
      default:
        return result;
    }
  }

  return result * v2;
}

id sub_22121D6B8(void *a1, void *a2, void *a3, char a4, int a5)
{
  v5 = sub_22121D2C8(a1, a2, a3, 0, a4, a5, 0, 0);

  return v5;
}

id sub_22121D6F8(void *a1, void *a2, void *a3, char a4, int a5)
{
  v9 = a1;
  v10 = a3;
  v15 = objc_msgSend_nilValue(TSCENilValue, v11, v12, v13, v14);
  v59 = 0;
  v60 = v15;
  v16 = sub_22121C524(v9, a2, 0, v10, a4, a5, &v60, 0, 0, &v59);
  v18 = v17;
  v19 = v60;

  v20 = v59;
  v25 = v20;
  v61[0] = v16;
  v61[1] = v18;
  if (v20)
  {
    if (objc_msgSend_isMismatchedUnitsError(v20, v21, v22, v23, v24))
    {
      v30 = objc_msgSend_functionName(a2, v26, v27, v28, v29);
      v33 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v31, v30, 1, v32);

      v25 = v33;
    }

    v34 = objc_msgSend_errorValue_(TSCEErrorValue, v26, v25, v28, v29);
    goto LABEL_15;
  }

  if (objc_msgSend_deepType_(v19, v21, v9, v23, v24) == 5)
  {
    v58 = 0;
    v38 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v19, v35, v9, a2, 0, &v58);
    v39 = v58;
    v25 = v39;
    if (v39)
    {
      if (objc_msgSend_isMismatchedUnitsError(v39, v40, v41, v42, v43))
      {
        v48 = objc_msgSend_functionName(a2, v44, v45, v46, v47);
        v51 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v49, v48, 1, v50);

        v25 = v51;
      }

      v52 = objc_msgSend_errorValue_(TSCEErrorValue, v44, v25, v46, v47);
      goto LABEL_12;
    }

    v56 = objc_msgSend_errorForDuration_argumentIndex_(v38, v40, a2, 1, v43);
    if (v56)
    {
      v52 = objc_msgSend_errorValue_(TSCEErrorValue, v53, v56, v54, v55);
      v25 = v56;
LABEL_12:

      goto LABEL_16;
    }
  }

  v25 = 0;
  v34 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v35, v61, v36, v37);
LABEL_15:
  v52 = v34;
LABEL_16:

  return v52;
}

id sub_22121D9AC(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v11 = objc_msgSend_count(v6, v7, v8, v9, v10);
  v12 = v5;
  v47[0] = v12;
  v47[1] = a2;
  v48 = 0;
  v49[0] = 0;
  *(v49 + 7) = 0;
  v50 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v51 = 0;
  v52 = 0;
  v17 = objc_msgSend_locale(v12, v13, v14, v15, v16);
  v22 = objc_opt_new();
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      v24 = objc_msgSend_valueAtIndex_accessContext_(v6, v18, i, v47, v21);
      v29 = objc_msgSend_nativeType(v24, v25, v26, v27, v28);
      if (v29 && v29 != 10)
      {
        v32 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v30, v24, v17, v31);
        v40 = objc_msgSend_canonicalKeyString(v32, v33, v34, v35, v36);
        if (v40)
        {
          objc_msgSend_addObject_(v22, v37, v40, v38, v39);
        }
      }
    }
  }

  objc_msgSend_count(v22, v18, v19, v20, v21);
  TSUDecimal::operator=();
  v44 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v41, v46, v42, v43);

  return v44;
}

id sub_22121DBB4(void *a1, void *a2, void *a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  v11 = objc_msgSend_count(v6, v7, v8, v9, v10);
  v12 = v5;
  v58[0] = v12;
  v58[1] = a2;
  v59 = 0;
  v60[0] = 0;
  *(v60 + 7) = 0;
  v61 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v62 = 0;
  v63 = 0;
  v17 = objc_msgSend_locale(v12, v13, v14, v15, v16);
  v20 = objc_opt_new();
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      v22 = objc_msgSend_valueAtIndex_accessContext_(v6, v18, i, v58, v19);
      v27 = objc_msgSend_nativeType(v22, v23, v24, v25, v26);
      if (v27 && v27 != 10)
      {
        v30 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v28, v22, v17, v29);
        v38 = objc_msgSend_canonicalKeyString(v30, v31, v32, v33, v34);
        if (v38)
        {
          objc_msgSend_addObject_(v20, v35, v38, v36, v37);
        }
      }
    }
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v39 = v20;
  v41 = 0;
  v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v54, v64, 16);
  if (v45)
  {
    v46 = *v55;
    do
    {
      for (j = 0; j != v45; ++j)
      {
        if (*v55 != v46)
        {
          objc_enumerationMutation(v39);
        }

        if (objc_msgSend_countForObject_(v39, v42, *(*(&v54 + 1) + 8 * j), v43, v44) > 1)
        {
          ++v41;
        }
      }

      v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v42, &v54, v64, 16);
    }

    while (v45);
  }

  TSUDecimal::operator=();
  v51 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v48, v53, v49, v50);

  return v51;
}

id sub_22121DE90(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v12 = objc_msgSend_nilValue(TSCENilValue, v7, v8, v9, v10);
  if (v6)
  {
    v13 = objc_msgSend_evaluateVector_context_functionSpec_(TSCEFunction_MEDIAN, v11, v6, v5, a2);

    v12 = v13;
  }

  return v12;
}

id sub_22121DF48(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v12 = objc_msgSend_nilValue(TSCENilValue, v7, v8, v9, v10);
  if (v6)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 1057;
    v19 = 1;
    v20 = -50266102;
    v21 = 253;
    v13 = objc_msgSend_evaluateVector_context_functionSpec_resultFormat_(TSCEFunction_MODE, v11, v6, v5, a2, &v15);

    v12 = v13;
  }

  return v12;
}

id sub_22121E03C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v12 = v5;
  if (objc_msgSend_deepType_(v5, v6, v4, v7, v8) == 9)
  {
    v13 = objc_msgSend_errorWithContext_(v5, v9, v4, v10, v11);
    v12 = v5;
    if ((objc_msgSend_isAbortedError(v13, v14, v15, v16, v17) & 1) == 0)
    {
      v12 = v5;
      if ((objc_msgSend_isCircularReferenceError(v13, v18, v19, v20, v21) & 1) == 0)
      {
        v12 = objc_msgSend_stringValue_(TSCEStringValue, v22, @"–", v23, v24);
      }
    }
  }

  return v12;
}

id sub_22121E128(void *a1, void *a2, TSCEValue *a3)
{
  v5 = a1;
  v10 = a2;
  if (!a3)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "TSCEValue *TSCEComputeSubtraction(TSCEValue *__strong, TSCEValue *__strong, TSULocale *__unsafe_unretained)", v8, v9);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAggregateEval.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 449, 0, "invalid nil value for '%{public}s'", "locale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  if (TSCEArgumentAccessor::shouldTreatValueAsDateArgumentWithLocale(v5, a3, v7, v8, v9))
  {
    if (!TSCEArgumentAccessor::shouldTreatValueAsDateArgumentWithLocale(v10, a3, v23, v24, v25))
    {
      v50 = objc_msgSend_asDateWithLocale_(v5, v26, a3, v27, v28);
      v54 = objc_msgSend_asNumberWithLocale_(v10, v51, a3, v52, v53);
      if (objc_msgSend_isDuration(v54, v55, v56, v57, v58))
      {
        objc_msgSend_rawTimeIntervalValue(v54, v59, v60, v61, v62);
      }

      else
      {
        objc_msgSend_timeIntervalRepresentation(v54, v59, v60, v61, v62);
        v67 = v80 * 24.0 * 60.0 * 60.0;
      }

      v81 = objc_msgSend_dateByAddingTimeInterval_(v50, v63, v64, v65, v66, -v67);

      if (v5)
      {
        objc_msgSend_format(v5, v82, v83, v84, v85);
      }

      else
      {
        memset(&v102, 0, sizeof(v102));
      }

      v42 = objc_msgSend_dateValue_format_(TSCEDateValue, v82, v81, &v102, v85);

      goto LABEL_32;
    }

    v29 = objc_msgSend_asDateWithLocale_(v5, v26, a3, v27, v28);
    v33 = objc_msgSend_asDateWithLocale_(v10, v30, a3, v31, v32);
    objc_msgSend_timeIntervalSinceDate_(v29, v34, v33, v35, v36);
    v38 = sub_221387C00(v37);
    v39 = [TSCENumberValue alloc];
    TSUDecimal::operator=();
    v42 = objc_msgSend_initWithDecimal_baseUnit_(v39, v40, &v102, v38, v41);
    goto LABEL_30;
  }

  if (objc_msgSend_deepType_(v10, v22, 0, v24, v25) != 3)
  {
    if (objc_msgSend_isNil(v5, v43, v44, v45, v46))
    {
      objc_msgSend_unitlessZero(TSCENumberValue, v68, v69, v70, v71);
    }

    else
    {
      objc_msgSend_asNumberWithLocale_(v5, v68, a3, v70, v71);
    }
    v29 = ;
    if (objc_msgSend_isNil(v10, v72, v73, v74, v75))
    {
      objc_msgSend_unitlessZero(TSCENumberValue, v76, v77, v78, v79);
    }

    else
    {
      objc_msgSend_asNumberWithLocale_(v10, v76, a3, v78, v79);
    }
    v33 = ;
    v101 = 0;
    v87 = objc_msgSend_subtract_functionSpec_outError_(v29, v86, v33, 0, &v101);
    v92 = v101;
    if (v92)
    {
      v93 = objc_msgSend_errorValue_(TSCEErrorValue, v88, v92, v90, v91);
LABEL_29:
      v42 = v93;

LABEL_30:
      goto LABEL_31;
    }

    if (v5)
    {
      objc_msgSend_format(v5, v88, v89, v90, v91);
      if (v10)
      {
LABEL_25:
        objc_msgSend_format(v10, v88, v89, v90, v91);
LABEL_28:
        TSCEFormat::formatByMergingWithFormat(&v100, &v99, v89, v90, v91, &v98);
        TSCEFormat::TSCEFormat(&v102, &v98);
        objc_msgSend_setFormat_(v87, v94, &v102, v95, v96);
        v93 = v87;
        goto LABEL_29;
      }
    }

    else
    {
      memset(&v100, 0, sizeof(v100));
      if (v10)
      {
        goto LABEL_25;
      }
    }

    memset(&v99, 0, sizeof(v99));
    goto LABEL_28;
  }

  v29 = objc_msgSend_numberMinusDateError(TSCEError, v43, v44, v45, v46);
  v42 = objc_msgSend_errorValue_(TSCEErrorValue, v47, v29, v48, v49);
LABEL_31:

LABEL_32:

  return v42;
}

void sub_22121E580(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_22121E580(a1, *a2);
    sub_22121E580(a1, a2[1]);
    sub_22107C800((a2 + 6), a2[7]);

    operator delete(a2);
  }
}

uint64_t sub_22121E5E0(uint64_t a1, unint64_t *a2)
{
  result = *sub_22112C810(a1, &v3, a2);
  if (!result)
  {
    sub_22121E660();
  }

  return result;
}

void sub_22121E6E0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_22121E6FC(v3, v2);
  _Unwind_Resume(a1);
}

void sub_22121E6FC(uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_22107C800((a2 + 6), a2[7]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t sub_22121E75C(int a1)
{
  result = 0;
  switch(a1)
  {
    case 256:
    case 258:
    case 259:
    case 262:
    case 267:
    case 269:
    case 270:
      result = 1;
      break;
    case 257:
    case 274:
      result = 2;
      break;
    case 260:
    case 271:
      result = 5;
      break;
    case 261:
    case 272:
      result = 3;
      break;
    case 263:
      goto LABEL_8;
    case 264:
    case 265:
    case 266:
    case 273:
      return result;
    case 268:
      result = 4;
      break;
    default:
      if (a1 == 1)
      {
LABEL_8:
        result = 6;
      }

      break;
  }

  return result;
}

uint64_t sub_22121E814(int a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return word_2217E0D20[(a1 - 1)];
  }
}

uint64_t sub_22121E83C(int a1)
{
  v1 = sub_22121E75C(a1);

  return sub_22121E814(v1);
}

id sub_221220220(uint64_t *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D80AB8]);
  objc_msgSend_initDefaultPropertyMap_presetID_colors_alternate_(TSTTableStyle, v3, v2, a1[6], a1[4], a1[7]);
  v4 = [TSTTableStyle alloc];
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v4, v5, a1[5], 0, v2, 0);

  return isVariation;
}

id sub_2212202B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_defaultStyleWithContext_(MEMORY[0x277D80EC8], a2, *(a1 + 32), a4, a5);
  v10 = objc_msgSend_defaultValueForProperty_(MEMORY[0x277D80EC8], v7, 16, v8, v9);
  objc_msgSend_setValue_forProperty_(v6, v11, v10, 16, v12);

  objc_msgSend_setCGFloatValue_forProperty_(v6, v13, 17, v14, v15, *(a1 + 40));

  return v6;
}

id sub_221220360(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_defaultTableNameShapeStyleWithContext_(TSTTableStyleNetwork, a2, *(a1 + 32), a4, a5);

  return v5;
}

id sub_22122039C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_alloc_init(MEMORY[0x277D80AB8]);
  objc_msgSend_initDefaultPropertyMap_forTableStyleArea_presetID_colors_alternate_(TSTCellStyle, v8, v7, a5, a1[6], a1[4], a1[7]);
  v9 = [TSTCellStyle alloc];
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v9, v10, a1[5], 0, v7, 0);

  return isVariation;
}

id sub_22122043C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_defaultStyleWithContext_(MEMORY[0x277D80EC8], a2, *(a1 + 32), a4, a5);
  v10 = objc_msgSend_defaultValueForProperty_(MEMORY[0x277D80EC8], v7, 16, v8, v9);
  objc_msgSend_setValue_forProperty_(v6, v11, v10, 16, v12);

  objc_msgSend_setCGFloatValue_forProperty_(v6, v13, 17, v14, v15, *(a1 + 40));

  return v6;
}

void sub_221220934(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, a2, *(a1 + 56), a2, a5);
  v9 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v7, *(a1 + 56), a2, v8);
  v10 = objc_alloc_init(MEMORY[0x277D80AB8]);
  objc_msgSend_initDefaultPropertyMap_forTableStyleArea_presetID_colors_alternate_(TSTCellStyle, v11, v10, a2, *(a1 + 56), *(a1 + 32), *(a1 + 64));
  v12 = [TSTCellStyle alloc];
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v12, v13, *(a1 + 40), 0, v10, 0);
  objc_msgSend_addStyle_withIdentifier_(*(a1 + 48), v15, isVariation, v43, v16);
  if ((a2 - 15) >= 3)
  {
    v17 = objc_alloc(MEMORY[0x277D80EC8]);
    v18 = *(a1 + 40);
    v23 = objc_msgSend_defaultPropertyMap(MEMORY[0x277D80EC8], v19, v20, v21, v22);
    v25 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v17, v24, v18, 0, v23, 0);

    v29 = objc_msgSend_defaultValueForProperty_(MEMORY[0x277D80EC8], v26, 16, v27, v28);
    objc_msgSend_setValue_forProperty_(v25, v30, v29, 16, v31);

    objc_msgSend_setCGFloatValue_forProperty_(v25, v32, 17, v33, v34, *(a1 + 72));
    v39 = *(a1 + 64);
    if ((v39 | 2) == 6)
    {
      if (a2 != 1)
      {
        goto LABEL_8;
      }
    }

    else if (a2 != 1 || v39 != 2)
    {
      goto LABEL_8;
    }

    v40 = objc_msgSend_whiteColor(MEMORY[0x277D801F8], v35, v36, v37, v38);
    objc_msgSend_setValue_forProperty_(v25, v41, v40, 48, v42);

LABEL_8:
    objc_msgSend_addStyle_withIdentifier_(*(a1 + 48), v35, v25, v9, v38);
  }
}

void sub_221220FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23)
{
  _Block_object_dispose(&a18, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_221221094(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2212210AC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, a2, *(a1 + 48), a2, a5);
  objc_opt_class();
  v10 = objc_msgSend_cascadedStyleWithIdentifier_(*(a1 + 32), v7, v22, v8, v9);
  v11 = TSUCheckedDynamicCast();

  if (v11)
  {
    objc_msgSend_setCellStyle_forTableStyleArea_(*(*(*(a1 + 40) + 8) + 40), v12, v11, a2, v13);
  }

  if ((a2 - 15) >= 3)
  {
    v14 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v12, *(a1 + 48), a2, v13);
    objc_opt_class();
    v18 = objc_msgSend_cascadedStyleWithIdentifier_(*(a1 + 32), v15, v14, v16, v17);
    v19 = TSUCheckedDynamicCast();

    if (v19)
    {
      objc_msgSend_setTextStyle_forTableStyleArea_(*(*(*(a1 + 40) + 8) + 40), v20, v19, a2, v21);
    }
  }
}

void sub_221221DB4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = objc_msgSend_cellStyleForTableStyleArea_(*(a1 + 32), a2, a2, a4, a5);
  v9 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v7, *(a1 + 48), a2, v8);
  objc_opt_class();
  v10 = (*(*(a1 + 40) + 16))();
  v11 = TSUCheckedDynamicCast();

  objc_msgSend_setCellStyle_forTableStyleArea_(*(a1 + 32), v12, v11, a2, v13);
}

void sub_221221ED4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = objc_msgSend_textStyleForTableStyleArea_(*(a1 + 32), a2, a2, a4, a5);
  v9 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v7, *(a1 + 48), a2, v8);
  objc_opt_class();
  v10 = (*(*(a1 + 40) + 16))();
  v11 = TSUCheckedDynamicCast();

  objc_msgSend_setTextStyle_forTableStyleArea_(*(a1 + 32), v12, v11, a2, v13);
}

id sub_221222128(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();

  return v1;
}

void sub_2212223A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_22122243C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_msgSend_stylesheet(*(a1 + 32), a2, a3, a4, a5);
  v8 = objc_msgSend_variationOfStyle_propertyMap_(v11, v6, *(a1 + 32), *(a1 + 40), v7);
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_22122258C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_221222660(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        v3 -= 8;
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_22122B648(a1, v5);
  }
}

void sub_2212226E8(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        v3 -= 8;
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_22122B748(a1, v5);
  }
}

void sub_2212235A8(_Unwind_Exception *a1)
{
  *(v7 - 120) = v6;

  _Unwind_Resume(a1);
}

BOOL sub_2212236D4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(a1 + 8) - v2;
  v5 = *a2;
  return v4 == *(a2 + 8) - v5 && memcmp(v2, v5, v4) == 0;
}

void sub_2212237C0()
{
  v0 = objc_opt_class();
  v23 = objc_msgSend_properties(v0, v1, v2, v3, v4);
  v8 = objc_msgSend_propertySetWithProperties_(MEMORY[0x277D80AC0], v5, 790, v6, v7, 792, 794, 798, 799, 0);
  v13 = objc_msgSend_mutableCopy(v23, v9, v10, v11, v12);
  objc_msgSend_removeProperties_(v13, v14, v8, v15, v16);
  v21 = objc_msgSend_copy(v13, v17, v18, v19, v20);
  v22 = qword_27CFB52D0;
  qword_27CFB52D0 = v21;
}

void sub_2212239A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2212239D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v14 = a2;
  v11 = objc_msgSend_styleForStyleNetworkIndex_(*(a1 + 32), v8, a4, v9, v10);
  v12 = *(*(a1 + 48) + 8);
  if (*(v12 + 24) == 1)
  {
    v13 = (*(*(a1 + 40) + 16))();
    v12 = *(*(a1 + 48) + 8);
  }

  else
  {
    v13 = 0;
  }

  *(v12 + 24) = v13;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    *a5 = 1;
  }
}

void sub_221224320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221224358(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v18 = v7;
  v9 = v8;
  if ((objc_msgSend_containsStyle_(v9, v10, v18, v11, v12) & 1) == 0)
  {

    goto LABEL_5;
  }

  v17 = objc_msgSend_stylesheet(v18, v13, v14, v15, v16);

  if (v17 != v9)
  {
LABEL_5:
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a5 = 1;
  }
}

void sub_221224F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221224FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1 + 32;
  v6 = *(a1 + 32);
  v7 = *(v8 + 8);
  v9 = *(v6[12] + 8 * a2);
  v10 = objc_msgSend_presetID(v6, a2, a3, a4, a5);
  v13 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v11, v10, a2, v12);
  (*(v7 + 16))(v7, v9);
}

void sub_2212250B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1 + 32;
  v6 = *(a1 + 32);
  v7 = *(v8 + 8);
  v9 = *(v6[15] + 8 * a2);
  v10 = objc_msgSend_presetID(v6, a2, a3, a4, a5);
  v13 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v11, v10, a2, v12);
  (*(v7 + 16))(v7, v9);
}

void sub_2212255B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(a1[4] + 96) + 8 * a2);
  if (v5)
  {
    v6 = a1[5];
    v9 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, a2, a1[6], a2, a5);
    objc_msgSend_setObject_forKey_(v6, v7, v5, v9, v8);
  }
}

void sub_221225658(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(a1[4] + 120) + 8 * a2);
  if (v5)
  {
    v6 = a1[5];
    v9 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, a2, a1[6], a2, a5);
    objc_msgSend_setObject_forKey_(v6, v7, v5, v9, v8);
  }
}

void sub_221225D04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1[5];
  v14 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, a2, a1[6], a2, a5);
  v11 = objc_msgSend_objectForKey_(v7, v8, v14, v9, v10);
  v12 = *(a1[4] + 96);
  v13 = *(v12 + 8 * a2);
  *(v12 + 8 * a2) = v11;
}

void sub_221225DA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1[5];
  v14 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, a2, a1[6], a2, a5);
  v11 = objc_msgSend_objectForKey_(v7, v8, v14, v9, v10);
  v12 = *(a1[4] + 120);
  v13 = *(v12 + 8 * a2);
  *(v12 + 8 * a2) = v11;
}

void sub_221226FEC(uint64_t a1, void *a2)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (*(v7 + 72))
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSTTableStyleNetwork loadFromArchive:unarchiver:]_block_invoke", v4, v5);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyleNetwork.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 1267, 0, "_tableStyle must be nil when loading from an archive");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
    v7 = *(a1 + 32);
  }

  v19 = *(v7 + 72);
  *(v7 + 72) = v6;
}

void sub_221227390(uint64_t a1, void *a2)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (*(v7 + 80))
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSTTableStyleNetwork loadFromArchive:unarchiver:]_block_invoke_30", v4, v5);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyleNetwork.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 1407, 0, "_tableNameStyle must be nil when loading from an archive");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
    v7 = *(a1 + 32);
  }

  v19 = *(v7 + 80);
  *(v7 + 80) = v6;
}

void sub_221227494(uint64_t a1, void *a2)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (*(v7 + 88))
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSTTableStyleNetwork loadFromArchive:unarchiver:]_block_invoke_31", v4, v5);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyleNetwork.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 1413, 0, "_tableNameShapeStyle must be nil when loading from an archive");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
    v7 = *(a1 + 32);
  }

  v19 = *(v7 + 88);
  *(v7 + 88) = v6;
}

uint64_t sub_2212275E0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_generateCategoryStylesConnectedToStylesheet_(*(a1 + 32), a2, 1, a4, a5);
  v9 = *(a1 + 32);

  return objc_msgSend_generatePivotStylesConnectedToStylesheet_(v9, v6, 1, v7, v8);
}

void sub_221228C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

void sub_2212290B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_221229694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14)
{
  if (v20 != a14)
  {
  }

  _Unwind_Resume(a1);
}

void sub_221229A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v13 != v12)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t sub_221229CA8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 0x10)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSTColumnRowTypeWithIndex TSTMakeColumnRowTypeWithIndex(TSTColumnRowType, NSUInteger)", a4, a5);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableConstants.h", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 216, 0, "Type:%ldl or index:%lul is too large for TSTIndexedColumnRowType.", a1, a2);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  return (a2 + 16 * a1);
}

void sub_22122B648(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_22107C148();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v11[4] = a1;
    if (v10)
    {
      sub_22107C1F0(a1, v10);
    }

    v11[0] = 0;
    v11[1] = 8 * v8;
    v11[3] = 0;
    bzero((8 * v8), 8 * a2);
    v11[2] = 8 * v8 + 8 * a2;
    sub_22107C098(a1, v11);
    sub_22107C26C(v11);
  }
}

void sub_22122B734(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_22122B748(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_22107C148();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v11[4] = a1;
    if (v10)
    {
      sub_22107C1F0(a1, v10);
    }

    v11[0] = 0;
    v11[1] = 8 * v8;
    v11[3] = 0;
    bzero((8 * v8), 8 * a2);
    v11[2] = 8 * v8 + 8 * a2;
    sub_22107C098(a1, v11);
    sub_22107C26C(v11);
  }
}

void sub_22122B834(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22122B8B4(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v5;
  v6 = *(a1 + 24) & 0xFE | *a3 & 1;
  *(a1 + 24) = v6;
  v7 = v6 & 0xFFFFFFFD | (2 * ((*a3 >> 1) & 1));
  *(a1 + 24) = v7;
  v8 = v7 & 0xFFFFFFFB | (4 * ((*a3 >> 2) & 1));
  *(a1 + 24) = v8;
  *(a1 + 24) = v8 & 0xF7 | *a3 & 8;
  return a1;
}

uint64_t sub_22122B930(uint64_t a1, _OWORD *a2, void *a3, _BYTE *a4)
{
  *a1 = a3;
  *(a1 + 8) = *a2;
  v7 = *(a1 + 24) & 0xFE | *a4 & 1;
  *(a1 + 24) = v7;
  v8 = v7 & 0xFFFFFFFD | (2 * ((*a4 >> 1) & 1));
  *(a1 + 24) = v8;
  v9 = v8 & 0xFFFFFFFB | (4 * ((*a4 >> 2) & 1));
  *(a1 + 24) = v9;
  *(a1 + 24) = v9 & 0xF7 | *a4 & 8;
  return a1;
}

void TSCEASTNodeArray::TSCEASTNodeArray(TSCEASTNodeArray *this, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  this->var0 = 0;
  this->var1 = 0;
  this->var2 = 0;
  this->var3 = 1;
  TSCEASTNodeArray::resizeCapacity(this, a2, a3, a4, a5);
}

{
  this->var0 = 0;
  this->var1 = 0;
  this->var2 = 0;
  this->var3 = 1;
  TSCEASTNodeArray::resizeCapacity(this, a2, a3, a4, a5);
}

void TSCEASTNodeArray::resizeCapacity(TSCEASTNodeArray *this, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!this->var0)
  {
    v7 = a2 <= 8 ? 8 : a2;
    this->var1 = 0;
    this->var2 = v7;
    v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
    this->var0 = v8;
    if (!v8)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEASTNodeArray::resizeCapacity(size_t)", a4, a5);
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeArray.mm", v12, v13);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 177, 0, "No nodeArray allocated.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
    }
  }

  var1 = this->var1;
  var2 = this->var2;
  if (var2 < var1)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEASTNodeArray::resizeCapacity(size_t)", a4, a5);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeArray.mm", v25, v26);
    v32 = TSCEASTNodeArray::codeString(this, v28, v29, v30, v31);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v33, v23, v27, 180, 0, "You are going to crash very soon. You have overwritten your node array: %{public}@", v32);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
    var1 = this->var1;
    var2 = this->var2;
  }

  if (var2 - var1 < a2)
  {
    v38 = var2 + a2;
    v39 = 2 * var2;
    v40 = var2 == 0;
    v41 = 8;
    if (!v40)
    {
      v41 = v39;
    }

    if (v38 > v41)
    {
      v41 = v38;
    }

    v42 = (v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = malloc_type_malloc(v42, 0x100004077774924uLL);
    memcpy(v43, this->var0, this->var1);
    free(this->var0);
    this->var0 = v43;
    this->var2 = v42;
    if (v42 - this->var1 < a2)
    {
      v47 = MEMORY[0x277D81150];
      v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "void TSCEASTNodeArray::resizeCapacity(size_t)", v45, v46);
      v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeArray.mm", v50, v51);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v53, v48, v52, 197, 0, "resize didn't grow array enough");

      v58 = MEMORY[0x277D81150];

      objc_msgSend_logBacktraceThrottled(v58, v54, v55, v56, v57);
    }
  }
}

void TSCEASTNodeArray::TSCEASTNodeArray(TSCEASTNodeArray *this, char *a2, unint64_t a3)
{
  this->var0 = a2;
  this->var1 = a3;
  this->var2 = a3;
  this->var3 = 0;
}

{
  this->var0 = a2;
  this->var1 = a3;
  this->var2 = a3;
  this->var3 = 0;
}

void TSCEASTNodeArray::~TSCEASTNodeArray(TSCEASTNodeArray *this)
{
  if (this->var3)
  {
    free(this->var0);
  }
}

{
  if (this->var3)
  {
    free(this->var0);
  }
}

void TSCEASTNodeArray::TSCEASTNodeArray(TSCEASTNodeArray *this, const TSCEASTNodeArray *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  this->var0 = 0;
  this->var1 = 0;
  this->var2 = 0;
  this->var3 = 1;
  TSCEASTNodeArray::resizeCapacity(this, a2->var2, a3, a4, a5);
  TSCEASTNodeArray::appendNodeArrayContents(this, a2, v7, v8, v9);
}

{
  this->var0 = 0;
  this->var1 = 0;
  this->var2 = 0;
  this->var3 = 1;
  TSCEASTNodeArray::resizeCapacity(this, a2->var2, a3, a4, a5);
  TSCEASTNodeArray::appendNodeArrayContents(this, a2, v7, v8, v9);
}

TSCEASTNodeArray *TSCEASTNodeArray::appendNodeArrayContents(TSCEASTNodeArray *this, const TSCEASTNodeArray *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (a2->var0)
    {
      v6 = this;
      v7 = a2->var1 + this->var1;
      TSCEASTNodeArray::resizeCapacity(this, v7, a3, a4, a5);
      this = memcpy(&v6->var0[v6->var1], a2->var0, a2->var1);
      v6->var1 = v7;
    }
  }

  return this;
}

TSCEASTNodeArray *TSCEASTNodeArray::copyNodeArray(TSCEASTNodeArray *this, const TSCEASTNodeArray *a2)
{
  if (this)
  {
    TSCEASTNodeArray::deepCopy(this);
  }

  return this;
}

TSCEASTNodeArray *TSCEASTNodeArray::freeNodeArray(TSCEASTNodeArray *this, TSCEASTNodeArray *a2)
{
  if (this)
  {
    if (this->var3)
    {
      free(this->var0);
    }

    JUMPOUT(0x223DA1450);
  }

  return this;
}

id TSCEASTNodeArray::codeString(TSCEASTNodeArray *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  var1 = this->var1;
  if (this->var2 >= var1)
  {
    var2 = this->var1;
  }

  else
  {
    var2 = this->var2;
  }

  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], a2, @"uint8_t _nodeArray[%d] = {\n\t", a4, a5, var1);
  if (var2)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      objc_msgSend_appendFormat_(v11, v8, @"%d, ", v9, v10, this->var0[v12]);
      if (v13 >= 20)
      {
        objc_msgSend_appendFormat_(v11, v8, @"\n\t", v9, v10);
        v13 = 0;
      }

      else
      {
        ++v13;
      }

      ++v12;
    }

    while (var2 != v12);
  }

  objc_msgSend_appendFormat_(v11, v8, @" };\n", v9, v10);
  if (this->var1 > this->var2)
  {
    objc_msgSend_appendFormat_(v11, v14, @"(limited by _capacity of %lu)\n", v15, v16, this->var2);
  }

  return v11;
}

void TSCEASTNodeArray::writeString(TSCEASTNodeArray *this, id a2)
{
  v4 = a2;
  v9 = objc_msgSend_UTF8String(a2, v5, v6, v7, v8);
  v13 = v9;
  if (v9)
  {
    v14 = strlen(v9) + 1;
  }

  else
  {
    v14 = 1;
  }

  TSCEASTNodeArray::resizeCapacity(this, v14 + 8, v10, v11, v12);
  if (this->var0)
  {
    *&this->var0[this->var1] = v14;
    v18 = this->var1 + 8;
    this->var1 = v18;
    if (v13)
    {
      memcpy(&this->var0[v18], v13, v14);
      this->var1 += v14;
    }

    else
    {

      TSCEASTNodeArray::writeUInt8(this, 0, v15, v16, v17);
    }
  }
}

void TSCEASTNodeArray::writeUInt8(TSCEASTNodeArray *this, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  var1 = this->var1;
  if (this->var2 == var1 || (var0 = this->var0) == 0)
  {
    TSCEASTNodeArray::resizeCapacity(this, 1uLL, a3, a4, a5);
    var0 = this->var0;
    if (!this->var0)
    {
      return;
    }

    var1 = this->var1;
  }

  var0[var1] = a2;
  ++this->var1;
}

void TSCEASTNodeArray::writeUInt16(TSCEASTNodeArray *this, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  var1 = this->var1;
  if (this->var2 - var1 < 2 || (var0 = this->var0) == 0)
  {
    TSCEASTNodeArray::resizeCapacity(this, 2uLL, a3, a4, a5);
    var0 = this->var0;
    if (!this->var0)
    {
      return;
    }

    var1 = this->var1;
  }

  *&var0[var1] = a2;
  this->var1 += 2;
}

void TSCEASTNodeArray::writeUInt32(TSCEASTNodeArray *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  var1 = this->var1;
  if (this->var2 - var1 < 4 || (var0 = this->var0) == 0)
  {
    TSCEASTNodeArray::resizeCapacity(this, 4uLL, a3, a4, a5);
    var0 = this->var0;
    if (!this->var0)
    {
      return;
    }

    var1 = this->var1;
  }

  *&var0[var1] = a2;
  this->var1 += 4;
}

void TSCEASTNodeArray::writeUInt64(TSCEASTNodeArray *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  var1 = this->var1;
  if (this->var2 - var1 < 8 || (var0 = this->var0) == 0)
  {
    TSCEASTNodeArray::resizeCapacity(this, 8uLL, a3, a4, a5);
    var0 = this->var0;
    if (!this->var0)
    {
      return;
    }

    var1 = this->var1;
  }

  *&var0[var1] = a2;
  this->var1 += 8;
}

void TSCEASTNodeArray::writeDouble(TSCEASTNodeArray *this, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  var1 = this->var1;
  if (this->var2 - var1 < 8 || (var0 = this->var0) == 0)
  {
    TSCEASTNodeArray::resizeCapacity(this, 8uLL, a4, a5, a6);
    var0 = this->var0;
    if (!this->var0)
    {
      return;
    }

    var1 = this->var1;
  }

  *&var0[var1] = a2;
  this->var1 += 8;
}

void TSCEASTNodeArray::writeUidList(TSCEASTNodeArray *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2[1] - *a2;
  TSCEASTNodeArray::writeUInt32(a1, v7 >> 4, a3, a4, a5);
  if ((v7 >> 4))
  {
    v11 = 0;
    v12 = v7 & 0xFFFFFFFF0;
    do
    {
      sub_22122C498(a1, (*a2 + v11), v8, v9, v10);
      v11 += 16;
    }

    while (v12 != v11);
  }
}

__n128 sub_22122C498(TSCEASTNodeArray *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!this->var0)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEASTNodeArray::write(const T &) [T = TSKUIDStruct]", a4, a5);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeArray.h", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 171, 0, "invalid nil value for '%{public}s'", "_nodeArray");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  var1 = this->var1;
  if (this->var2 - var1 < 0x10 || (var0 = this->var0) == 0)
  {
    TSCEASTNodeArray::resizeCapacity(this, 0x10uLL, a3, a4, a5);
    var0 = this->var0;
    if (!this->var0)
    {
      return result;
    }

    var1 = this->var1;
  }

  result = *a2;
  *&var0[var1] = *a2;
  this->var1 += 16;
  return result;
}

void TSCEASTNodeArray::writeUidSet(TSCEASTNodeArray *this, TSCEUIDSet *a2)
{
  v3 = a2;
  v8 = objc_msgSend_count(v3, v4, v5, v6, v7);
  TSCEASTNodeArray::writeUInt32(this, v8, v9, v10, v11);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22122C65C;
  v15[3] = &unk_27845D920;
  v15[4] = this;
  objc_msgSend_foreachUuid_(v3, v12, v15, v13, v14);
}

double sub_22122C65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a2;
  v6[1] = a3;
  *&result = sub_22122C498(*(a1 + 32), v6, a3, a4, a5).n128_u64[0];
  return result;
}

void TSCEASTNodeArray::writeUidTract(TSCEASTNodeArray *this, TSCEUndoTract *a2)
{
  v43 = a2;
  v7 = objc_msgSend_columnUids(v43, v3, v4, v5, v6);
  TSCEASTNodeArray::writeUidList(this, v7, v8, v9, v10);
  v15 = objc_msgSend_rowUids(v43, v11, v12, v13, v14);
  TSCEASTNodeArray::writeUidList(this, v15, v16, v17, v18);
  isRangeRef = objc_msgSend_isRangeRef(v43, v19, v20, v21, v22);
  TSCEASTNodeArray::writeUInt8(this, isRangeRef, v24, v25, v26);
  v31 = objc_msgSend_preserveRectangularRange(v43, v27, v28, v29, v30);
  TSCEASTNodeArray::writeUInt8(this, v31, v32, v33, v34);
  v39 = objc_msgSend_purpose(v43, v35, v36, v37, v38);
  TSCEASTNodeArray::writeUInt8(this, v39, v40, v41, v42);
}

void TSCEASTNodeArray::writeUidTractList(TSCEASTNodeArray *this, TSCEUndoTractList *a2)
{
  v21 = a2;
  v7 = objc_msgSend_tractCount(v21, v3, v4, v5, v6);
  TSCEASTNodeArray::writeUInt8(this, v7, v8, v9, v10);
  if (v7)
  {
    v15 = 0;
    do
    {
      v16 = objc_msgSend_uidTractAtIndex_(v21, v11, v15, v13, v14);
      TSCEASTNodeArray::writeUidTract(this, v16);

      ++v15;
    }

    while (v7 > v15);
  }

  v17 = objc_msgSend_preserveFlags(v21, v11, v12, v13, v14);
  TSCEASTNodeArray::writeUInt8(this, v17, v18, v19, v20);
}

uint64_t TSCEASTNodeArray::writeIndexSet(TSCEASTNodeArray *this, const TSUIndexSet *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2)
  {
    v5 = 0;
  }

  else if ((*a2 & 2) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(a2->_multipleRanges + 2);
  }

  TSCEASTNodeArray::writeUInt32(this, v5, a3, a4, a5);
  return TSUIndexSet::enumerateRangesUsingBlock();
}

void sub_22122C8C0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  v6 = *a2;
  v10 = a2[1];
  v11 = v6;
  sub_22122C908(v5, &v11, a3, a4, a5);
  sub_22122C908(v5, &v10, v7, v8, v9);
}

void sub_22122C908(TSCEASTNodeArray *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!this->var0)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEASTNodeArray::write(const T &) [T = int]", a4, a5);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeArray.h", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 171, 0, "invalid nil value for '%{public}s'", "_nodeArray");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  var1 = this->var1;
  if (this->var2 - var1 < 4 || (var0 = this->var0) == 0)
  {
    TSCEASTNodeArray::resizeCapacity(this, 4uLL, a3, a4, a5);
    var0 = this->var0;
    if (!this->var0)
    {
      return;
    }

    var1 = this->var1;
  }

  *&var0[var1] = *a2;
  this->var1 += 4;
}

void TSCEASTNodeArray::writeRelativeTractRef(TSCEASTNodeArray *this, TSCEASTRefFlags a2, TSCEASTColonTractFlags a3, TSCERelativeTractRef *a4)
{
  v7 = a4;
  v12 = v7;
  if (v7)
  {
    objc_msgSend_verifySpanningSettings(v7, v8, v9, v10, v11);
    TSCEASTNodeArray::writeUInt8(this, a3._flags, v13, v14, v15);
    if (a2._flags)
    {
      v43[0] = objc_msgSend_tableUID(v12, v16, v17, v18, v19);
      v43[1] = v21;
      *&v20 = sub_22122C498(this, v43, v22, v23, v24).n128_u64[0];
    }

    v25 = a2._flags & 0xC;
    if (v25 == 4 || (v26 = objc_msgSend_relativeColumns(v12, v16, v17, v18, v19, v20), TSCEASTNodeArray::writeIndexSet(this, v26, v27, v28, v29), v25 != 8))
    {
      v31 = objc_msgSend_relativeRows(v12, v16, v17, v18, v19, v20);
      TSCEASTNodeArray::writeIndexSet(this, v31, v32, v33, v34);
      if (v25 == 4)
      {
LABEL_10:
        v39 = objc_msgSend_rows(v12, v16, v17, v18, v19);
        TSCEASTNodeArray::writeIndexSet(this, v39, v40, v41, v42);
        goto LABEL_11;
      }

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v35 = objc_msgSend_columns(v12, v16, v17, v18, v19);
    TSCEASTNodeArray::writeIndexSet(this, v35, v36, v37, v38);
    if ((v30 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
}

uint64_t TSCEASTNodeArray::nodeTagAtOffset(TSCEASTNodeArray *this, unint64_t a2)
{
  if (this->var1 <= a2)
  {
    return 0;
  }

  else
  {
    return this->var0[a2];
  }
}

void *TSCEASTNodeArray::appendAsThunk(TSCEASTNodeArray *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  v8 = *(a2 + 8) + 9;
  TSCEASTNodeArray::resizeCapacity(a1, v8, a3, a4, a5);
  a1->var0[a1->var1] = v5;
  *&a1->var0[a1->var1 + 1] = *(a2 + 8);
  result = memcpy(&a1->var0[a1->var1 + 9], *a2, *(a2 + 8));
  a1->var1 += v8;
  return result;
}

unint64_t TSCEASTNodeArray::appendReference(TSCEASTNodeArray *this, const TSCECellRef *a2, BOOL a3, const TSUPreserveFlags *a4)
{
  v6 = *&a4->_flags;
  lower = a2->_tableUID._lower;
  upper = a2->_tableUID._upper;
  coordinate = a2->coordinate;
  v11 = *&a4[8]._flags != lower || *&a4[16]._flags != upper;
  *(&v18.var3 + 7) = a3;
  v12 = (&v18.var3 + 7);
  RelativeCellCoordinateFromAbsoluteCoordinates = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(v6, coordinate, v12, a4);
  v15 = a2->_tableUID._lower;
  v16 = a2->_tableUID._upper;
  if (!v11)
  {
    v15 = 0;
    v16 = 0;
  }

  v18.var0 = v15;
  v18.var1 = v16;
  v18.var2 = RelativeCellCoordinateFromAbsoluteCoordinates;
  return TSCEASTRelativeCoordRefElement::appendRelativeCoordRefElement(this, &v18, &v18.var2, (&v18.var3 + 7), 0, v14);
}

uint64_t TSCEASTNodeArray::appendRangeReference(TSCEASTNodeArray *this, const TSCERangeRef *a2, unsigned int a3, const TSUPreserveFlags *a4)
{
  v14.coordinate = a2->range._topLeft;
  v14._tableUID = a2->_tableUID;
  result = TSCEASTNodeArray::appendReference(this, &v14, a3 & 3, a4);
  bottomRight = a2->range._bottomRight;
  if (*&a2->range._topLeft != bottomRight.row || ((*&bottomRight ^ *&a2->range._topLeft) & 0x101FFFF00000000) != 0)
  {
    v14 = *&a2->range._bottomRight.row;
    TSCEASTNodeArray::appendReference(this, &v14, (a3 >> 2) & 3, a4);

    return TSCEASTBinaryElement::appendBinaryElement(this, 28, v11, v12, v13);
  }

  return result;
}

BOOL TSCEASTNodeArray::containsTag(uint64_t a1, unsigned __int8 a2)
{
  memset(v6, 0, sizeof(v6));
  v7 = 1065353216;
  v5 = a2;
  sub_22122DC98(v6, &v5);
  v3 = TSCEASTNodeArray::containsAnyOfTags(a1, v6);
  sub_2210BDEC0(v6);
  return v3;
}

void sub_22122CD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2210BDEC0(va);
  _Unwind_Resume(a1);
}

BOOL TSCEASTNodeArray::containsAnyOfTags(uint64_t a1, void *a2)
{
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v9);
  sub_22134B2F4(v8, a1, &v9);
  v4 = sub_22134B3CC(v8);
  v5 = 0;
  while (v4 && !v5)
  {
    v7 = TSCEASTElement::tag(v4, v8);
    v5 = sub_22122DECC(a2, &v7) != 0;
    v4 = sub_22134B3CC(v8);
  }

  sub_22134B390(v8);
  return v5;
}

void sub_22122CE30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22134B390(va);
  _Unwind_Resume(a1);
}

__CFString *TSCEASTNodeArray::description(TSCEASTNodeArray *this)
{
  if (this->var1)
  {
    v2 = [TSCEFormulaObject alloc];
    v6 = objc_msgSend_initWithNodeArray_(v2, v3, this, v4, v5);
    v10 = objc_msgSend_descriptionForLevel_(v6, v7, 3, v8, v9);
  }

  else
  {
    v10 = @"empty nodeArray";
  }

  return v10;
}

void TSCEASTNodeArrayReader::pushEndPoint(TSCEASTNodeArrayReader *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(this + 2) < a2)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEASTNodeArrayReader::pushEndPoint(size_t)", a4, a5);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeArray.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 453, 0, "We shouldn't be making the array seem larger when pushing a new end-point");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  v18 = *(this + 3);
  if (!v18)
  {
    operator new();
  }

  v20 = v18[1];
  v19 = v18[2];
  if (v20 >= v19)
  {
    v22 = *v18;
    v23 = v20 - *v18;
    v24 = v23 >> 3;
    v25 = (v23 >> 3) + 1;
    if (v25 >> 61)
    {
      sub_22107C148();
    }

    v26 = v19 - v22;
    if (v26 >> 2 > v25)
    {
      v25 = v26 >> 2;
    }

    v27 = v26 >= 0x7FFFFFFFFFFFFFF8;
    v28 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v27)
    {
      v28 = v25;
    }

    if (v28)
    {
      sub_2210874C4(v18, v28);
    }

    *(8 * v24) = a2;
    v21 = 8 * v24 + 8;
    memcpy(0, v22, v23);
    v29 = *v18;
    *v18 = 0;
    v18[1] = v21;
    v18[2] = 0;
    if (v29)
    {
      operator delete(v29);
    }
  }

  else
  {
    *v20 = a2;
    v21 = (v20 + 1);
  }

  v18[1] = v21;
}

void *TSCEASTNodeArrayReader::popEndPoint(void *this)
{
  v1 = this[3];
  if (!v1 || (v2 = v1[1], *v1 == v2))
  {
    this[1] = this[2] + 1;
  }

  else
  {
    v1[1] = v2 - 8;
  }

  return this;
}

void TSCEASTNodeArrayReader::readUidList(TSCEASTNodeArrayReader *this@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(this + 1);
  v4 = *(**this + v3);
  *(this + 1) = v3 + 4;
  if (v4)
  {
    v6 = 0;
    do
    {
      v7 = *(this + 1);
      v8 = *(**this + v7);
      *(this + 1) = v7 + 16;
      v9 = a2[2];
      if (v6 >= v9)
      {
        v10 = *a2;
        v11 = v6 - *a2;
        v12 = v11 >> 4;
        v13 = (v11 >> 4) + 1;
        if (v13 >> 60)
        {
          sub_22107C148();
        }

        v14 = v9 - v10;
        if (v14 >> 3 > v13)
        {
          v13 = v14 >> 3;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF0)
        {
          v15 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          sub_221086F74(a2, v15);
        }

        *(16 * v12) = v8;
        v6 = (16 * v12 + 16);
        memcpy(0, v10, v11);
        v16 = *a2;
        *a2 = 0;
        a2[1] = v6;
        a2[2] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v6 = v8;
        v6 += 16;
      }

      a2[1] = v6;
      --v4;
    }

    while (v4);
  }
}

void sub_22122D1DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **TSCEASTNodeArrayReader::skipUndoTract(uint64_t **this)
{
  v1 = **this;
  v2 = &this[1][2 * *(this[1] + v1)] + 4;
  this[1] = v2;
  this[1] = (v2 + 16 * *(v1 + v2) + 7);
  return this;
}

id TSCEASTNodeArrayReader::readUidSet(TSCEASTNodeArrayReader *this)
{
  v4 = objc_opt_new();
  v5 = *(this + 1);
  v6 = *(**this + v5);
  for (*(this + 1) = v5 + 4; v6; --v6)
  {
    v7 = *(this + 1);
    v8 = (**this + v7);
    v9 = *v8;
    v10 = v8[1];
    *(this + 1) = v7 + 16;
    objc_msgSend_addUUID_(v4, v2, v9, v10, v3);
  }

  return v4;
}

id TSCEASTNodeArrayReader::readUndoTractList(uint64_t **this)
{
  v5 = objc_opt_new();
  v6 = this[1];
  v7 = **this;
  v8 = *(v6 + v7);
  v9 = (v6 + 1);
  this[1] = (v6 + 1);
  if (v8)
  {
    for (i = 0; i < v8; ++i)
    {
      v11 = objc_opt_new();
      TSCEASTNodeArrayReader::readUidList(this, &v44);
      v16 = objc_msgSend_columnUids(v11, v12, v13, v14, v15);
      v17 = *v16;
      if (*v16)
      {
        *(v16 + 8) = v17;
        operator delete(v17);
        *v16 = 0;
        *(v16 + 8) = 0;
        *(v16 + 16) = 0;
      }

      *v16 = v44;
      *(v16 + 16) = v45;
      TSCEASTNodeArrayReader::readUidList(this, &v44);
      v25 = objc_msgSend_rowUids(v11, v18, v19, v20, v21);
      v26 = *v25;
      if (*v25)
      {
        *(v25 + 8) = v26;
        operator delete(v26);
        *v25 = 0;
        *(v25 + 8) = 0;
        *(v25 + 16) = 0;
      }

      *v25 = v44;
      *(v25 + 16) = v45;
      v27 = this[1];
      v28 = *(v27 + **this);
      this[1] = (v27 + 1);
      objc_msgSend_setIsRangeRef_(v11, v22, v28 == 1, v23, v24);
      v29 = this[1];
      v30 = *(v29 + **this);
      this[1] = (v29 + 1);
      objc_msgSend_setPreserveRectangularRange_(v11, v31, v30 == 1, v32, v33);
      v34 = this[1];
      v35 = *(v34 + **this);
      this[1] = (v34 + 1);
      objc_msgSend_setPurpose_(v11, v36, v35, v37, v38);
      objc_msgSend_appendUidTract_(v5, v39, v11, v40, v41);
    }

    v9 = this[1];
    v7 = **this;
  }

  v42 = *(v9 + v7);
  this[1] = (v9 + 1);
  objc_msgSend_setPreserveFlags_(v5, v2, v42, v3, v4);

  return v5;
}