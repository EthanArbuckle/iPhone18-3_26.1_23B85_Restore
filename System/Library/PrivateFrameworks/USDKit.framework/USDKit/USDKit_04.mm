void sub_27036A948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_270310E24(va);
  sub_270310E24(va1);
  _Unwind_Resume(a1);
}

void sub_27036A988(unint64_t *a1, void *a2, int a3, int a4, int a5, unint64_t a6, pxrInternal__aapl__pxrReserved__::VtValue *a7, int a8)
{
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  sub_2703208AC(v37, (a4 * a8));
  v32 = a7;
  v13 = sub_270327BF8(a7);
  v14 = *(v13 + 16);
  v34 = *v13;
  v35 = v14;
  v15 = *(v13 + 32);
  v36 = v15;
  if (v15)
  {
    v16 = (v15 - 16);
    if (*(&v35 + 1))
    {
      v16 = *(&v35 + 1);
    }

    atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
  }

  if (*a1 >= a6)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      sub_270310DE0(a1);
      if (*(a1[4] + 4 * v17 * a6) != -1)
      {
        if (a5)
        {
          sub_270310DE0(a1);
          v19 = *(a1[4] + 4 * v17 * a6 + 4 * a5 - 4);
        }

        else
        {
          v19 = v17;
        }

        if (a8 >= 1)
        {
          v20 = 4 * v18 * a8;
          v21 = 4 * v19 * a8;
          v22 = a8;
          do
          {
            sub_27032C7E0(&v34);
            v23 = *(v36 + v21);
            sub_27032C7E0(v37);
            *(v38 + v20) = v23;
            v20 += 4;
            v21 += 4;
            --v22;
          }

          while (v22);
        }

        ++v18;
      }

      ++v17;
    }

    while (*a1 / a6 > v17);
  }

  v24 = a6 + 1;
  if (a6 + 1 <= *a2)
  {
    v25 = 0;
    v26 = 4 * a8 * a3;
    do
    {
      sub_270310DE0(a2);
      if (a8 >= 1)
      {
        v27 = a8;
        v28 = 4 * *(a2[4] + 4 * v25 * v24 + 4 * a5) * a8;
        v29 = v26;
        do
        {
          sub_27032C7E0(&v34);
          v30 = *(v36 + v28);
          sub_27032C7E0(v37);
          *(v38 + v29) = v30;
          v29 += 4;
          v28 += 4;
          --v27;
        }

        while (v27);
      }

      ++v25;
      v26 += 4 * a8;
    }

    while (*a2 / v24 > v25);
  }

  sub_27036B7A0(v32, v37);
  sub_270310E24(&v34);
  sub_270310E24(v37);
}

void sub_27036ABD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_270310E24(va);
  sub_270310E24(va1);
  _Unwind_Resume(a1);
}

void sub_27036AC10(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = (a1 + 8);
  if (v4 == v3)
  {
    return;
  }

  NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v3);
  v7 = *(a1 + 8);
  if (*(a1 + 16) == v7)
  {
    goto LABEL_19;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    MEMORY[0x27439E610](v43, "faceVarying");
    if ((v43[0] ^ *(v7 + v8 + 72)) > 7)
    {
      if ((v43[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v43[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = *v5;
      goto LABEL_12;
    }

    v7 = *v5;
    v10 = *(*v5 + v8 + 16);
    if ((v43[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v43[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      v7 = *v5;
    }

    if (!v10)
    {
      break;
    }

LABEL_12:
    ++v9;
    v8 += 88;
    if (0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - v7) >> 3) <= v9)
    {
      goto LABEL_19;
    }
  }

  v11 = *(a1 + 16);
  while (v7 != v11)
  {
    sub_270367224(v7, (a1 + 32), (a1 + 72));
    v7 += 88;
  }

  if (*(a1 + 72))
  {
    v12 = 0;
    do
    {
      sub_270310DE0(a1 + 72);
      *(*(a1 + 104) + 4 * v12) = v12;
      ++v12;
    }

    while (*(a1 + 72) > v12);
  }

LABEL_19:
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  v40 = 0;
  v41 = 0;
  v42 = 0;
  sub_270368854(v43, v5, (a1 + 32), (a1 + 72), &v40);
  if (v41 - v40 == 40)
  {
    v13 = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(*v5);
    v14 = *(a1 + 8);
    v15 = *(a1 + 16);
    if (v14 != v15)
    {
      v16 = v13;
      v17 = v14 + 72;
      do
      {
        MEMORY[0x27439E610](v39, "constant");
        v18 = *v17;
        v19 = *v39;
        if ((v39[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v19 ^ v18) <= 7)
        {
          sub_270368338((v17 - 72), v16);
        }

        MEMORY[0x27439E610](v39, "vertex");
        if (v17 == v39)
        {
          if ((v39[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((*v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          if ((*v17 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v17 = *v39;
        }

        sub_2703118DC(v17 - 7);
        v20 = v17 + 16;
        v17 += 88;
      }

      while (v20 != v15);
    }
  }

  else
  {
    memset(v39, 0, sizeof(v39));
    sub_27030E054(v39, *(a1 + 72));
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    v34 = 0;
    sub_270368E30(v39, v37, v35, &v40, NumElements, &v34);
    v21 = *(a1 + 8);
    v22 = *(a1 + 16);
    if (v21 != v22)
    {
      v23 = 0;
      v24 = v34;
      v25 = 0xCCCCCCCCCCCCCCCDLL * ((v41 - v40) >> 3);
      v26 = *&v35[0] / (v25 + 1);
      v27 = v25;
      v28 = v21 + 9;
      do
      {
        sub_270310DE0(v43);
        sub_270369550((v28 - 9), *(v44 + v23), v34, v26 + v24, v27, v37, v35);
        MEMORY[0x27439E610](v46, "vertex");
        if (v28 == v46)
        {
          if ((v46[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((v46[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          if ((*v28 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v28 = v46[0];
        }

        sub_2703118DC(v28 - 7);
        v23 += 4;
        v29 = v28 + 2;
        v28 += 11;
      }

      while (v29 != v22);
    }

    v30 = *(a1 + 72);
    v45 = 0;
    v46[0] = &v45;
    sub_27031192C(v39, v30, v46);
    v31 = *(a1 + 88);
    v32 = *(a1 + 72);
    *(a1 + 72) = *v39;
    *(a1 + 88) = *&v39[16];
    *v39 = v32;
    *&v39[16] = v31;
    v33 = *(a1 + 96);
    *(a1 + 96) = *&v39[24];
    *&v39[24] = v33;
    sub_270310E24(v35);
    sub_270310E24(v37);
    sub_270310E24(v39);
  }

  *v39 = &v40;
  sub_27036BD4C(v39);
  sub_270310E24(v43);
}

void sub_27036B044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_270310E24(&a11);
  sub_270310E24(&a17);
  sub_270310E24(&a23);
  a23 = &a28;
  sub_27036BD4C(&a23);
  sub_270310E24(&a31);
  _Unwind_Resume(a1);
}

__n128 sub_27036B0BC(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_270328724(a1) & 1) == 0)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    sub_27036B174(a1);
  }

  v4 = sub_27036B248(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

void sub_27036B174(uint64_t a1)
{
  v2[2] = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  v2[1] = 0;
  sub_270311CD0(v2, a1);
  *(a1 + 8) = off_288041290;
  sub_270318A3C();
}

void sub_27036B20C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_27030E880(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27036B248(uint64_t *a1)
{
  v2 = a1[1];
  if ((v2 & 4) != 0)
  {
    sub_27036DA7C(v2);
  }

  return sub_270330154(a1);
}

__n128 sub_27036B284(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_2703279AC(a1) & 1) == 0)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    sub_27036B33C(a1);
  }

  v4 = sub_2703484AC(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

void sub_27036B33C(uint64_t a1)
{
  v2[2] = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  v2[1] = 0;
  sub_270311CD0(v2, a1);
  *(a1 + 8) = &off_288040CB8;
  sub_27032C360();
}

void sub_27036B3D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_27030E880(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_27036B410(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_270328A2C(a1) & 1) == 0)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    sub_27036B4C8(a1);
  }

  v4 = sub_27036B59C(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

void sub_27036B4C8(uint64_t a1)
{
  v2[2] = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  v2[1] = 0;
  sub_270311CD0(v2, a1);
  *(a1 + 8) = &off_288040008;
  sub_270318A3C();
}

void sub_27036B560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_27030E880(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27036B59C(uint64_t *a1)
{
  v2 = a1[1];
  if ((v2 & 4) != 0)
  {
    sub_27036DAE8(v2);
  }

  return sub_270319CF8(a1);
}

__n128 sub_27036B5D8(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_27032845C(a1) & 1) == 0)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    sub_27036B690(a1);
  }

  v4 = sub_27036B764(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

void sub_27036B690(uint64_t a1)
{
  v2[2] = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  v2[1] = 0;
  sub_270311CD0(v2, a1);
  *(a1 + 8) = &off_2880411D8;
  sub_27032FBF4();
}

void sub_27036B728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_27030E880(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27036B764(uint64_t *a1)
{
  v2 = a1[1];
  if ((v2 & 4) != 0)
  {
    sub_27036DB54(v2);
  }

  return sub_27032FAFC(a1);
}

__n128 sub_27036B7A0(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_270327BC0(a1) & 1) == 0)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    sub_27036B858(a1);
  }

  v4 = sub_27036B92C(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

void sub_27036B858(uint64_t a1)
{
  v2[2] = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  v2[1] = 0;
  sub_270311CD0(v2, a1);
  *(a1 + 8) = &off_288040D70;
  sub_27032C360();
}

void sub_27036B8F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_27030E880(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27036B92C(uint64_t *a1)
{
  v2 = a1[1];
  if ((v2 & 4) != 0)
  {
    sub_27036DBC0(v2);
  }

  return sub_27032CA60(a1);
}

uint64_t sub_27036B968(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_27030E894();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_270348864(a1, v6);
  }

  v7 = 40 * v2;
  v17 = 0;
  v18 = v7;
  *(&v19 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  v9 = *(a2 + 32);
  *(v7 + 32) = v9;
  if (v9)
  {
    v10 = (v9 - 16);
    if (*(40 * v2 + 0x18))
    {
      v10 = *(40 * v2 + 0x18);
    }

    atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
  }

  *&v19 = v7 + 40;
  v11 = a1[1];
  v12 = v7 + *a1 - v11;
  sub_27036BAB4(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_27036BC28(&v17);
  return v16;
}

void sub_27036BAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27036BC28(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27036BAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v10 = 0;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *(v4 + 16);
      *a4 = *v4;
      *(a4 + 16) = v5;
      v6 = *(v4 + 32);
      *(a4 + 32) = v6;
      if (v6)
      {
        v7 = (v6 - 16);
        if (*(a4 + 24))
        {
          v7 = *(a4 + 24);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
        a4 = v12;
      }

      v4 += 40;
      a4 += 40;
      v12 = a4;
    }

    while (v4 != a3);
  }

  LOBYTE(v10) = 1;
  sub_27036BB68(a1, a2, a3);
  return sub_27036BBAC(v9);
}

void sub_27036BB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      sub_270310E24(v4);
      v4 += 40;
    }

    while (v4 != a3);
  }
}

uint64_t sub_27036BBAC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_27036BBE4(a1);
  }

  return a1;
}

void sub_27036BBE4(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 40;
    sub_270310E24(v1);
  }
}

uint64_t sub_27036BC28(uint64_t a1)
{
  sub_27036BC60(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_27036BC60(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    *(a1 + 16) = v4 - 40;
    sub_270310E24(v4 - 40);
  }
}

void sub_27036BCA4(uint64_t a1, _DWORD *a2)
{
  if (!*(a1 + 8))
  {
    v4 = *a1;
    if (!*(a1 + 24))
    {
      v5 = *(a1 + 32);
      if (!v5)
      {
        goto LABEL_10;
      }

      v6 = atomic_load((v5 - 16));
      if (v6 != 1)
      {
        goto LABEL_14;
      }

      v5 = *(a1 + 32);
      if (v5)
      {
        if (*(a1 + 24))
        {
          v7 = a1;
        }

        else
        {
          v7 = (v5 - 8);
        }

        v8 = *v7;
      }

      else
      {
LABEL_10:
        v8 = 0;
      }

      if (v4 != v8)
      {
        *(v5 + 4 * v4) = *a2;
LABEL_13:
        ++*a1;
        return;
      }
    }

LABEL_14:
    sub_27036DCA8(a1);
    goto LABEL_13;
  }

  sub_27036DC2C(a1);
}

void sub_27036BD4C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_27036BDA0(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_27036BDA0(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_270310E24(i))
  {
    i -= 40;
  }

  *(a1 + 8) = a2;
}

void *sub_27036BE28(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_270312D2C(v1, va);
}

void sub_27036BE40(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a1, int **a2)
{
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(a1, "void pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique() [T = int]");
  v4 = *a2;
  v5 = *a1;
  v6 = sub_270310E90(a1, *a1);
  v7 = v6;
  if (v5)
  {
    v8 = 4 * v5;
    v9 = v6;
    do
    {
      v10 = *v4++;
      *v9++ = v10;
      v8 -= 4;
    }

    while (v8);
  }

  sub_270310E24(a1);
  *a2 = v7;
}

atomic_ullong *sub_27036BEC0(atomic_ullong *result, atomic_ullong **a2)
{
  if (atomic_fetch_add_explicit(result, 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
  {
    __dmb(9u);
    result = *a2;
    v2 = (*a2)[1];
    if (v2)
    {
      return v2();
    }
  }

  return result;
}

uint64_t sub_27036BEE8(uint64_t a1)
{
  if (*(a1 + 12))
  {
    *(a1 + 16);
  }

  return pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
}

void sub_27036BF64(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 32);
  v7 = a2 + 1;
  v8 = 1;
  do
  {
    v9 = v8;
    v8 *= 2;
  }

  while (v9 < v7);
  v10 = sub_270310E90(a1, v9);
  v11 = v10;
  if (a2)
  {
    v12 = 4 * a2;
    v13 = v10;
    do
    {
      v14 = *v6++;
      *v13++ = v14;
      v12 -= 4;
    }

    while (v12);
  }

  *(v10 + a2) = *a3;
  sub_270310E24(a1);
  *(a1 + 32) = v11;
}

void sub_27036BFF4(int a1, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter *this)
{
  if (!this)
  {
    return;
  }

  v3 = *(this + 2);
  if (v3 < 0)
  {
    if (v3 == -2)
    {
      v5 = 4294967294;
    }

    else
    {
      v5 = *(this + 2);
      atomic_compare_exchange_strong_explicit(this + 2, &v5, v3 + 1, memory_order_release, memory_order_relaxed);
      if (v5 == v3)
      {
        if (v3 != -1)
        {
          return;
        }

        goto LABEL_4;
      }
    }

    if ((pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter::_RemoveRefMaybeLocked(this, v5) & 1) == 0)
    {
      return;
    }

    goto LABEL_4;
  }

  if (atomic_fetch_add_explicit(this + 2, 0xFFFFFFFF, memory_order_release) != 1)
  {
    return;
  }

LABEL_4:
  v4 = *(*this + 8);

  v4(this);
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **sub_27036C0B4(uint64_t a1, __int128 *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **a4)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v8 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v8;
  *(a2 + 23) = 0;
  *a2 = 0;
  v9 = *(a3 + 8);
  if (v9 && atomic_fetch_add_explicit(v9 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v9 + 8))(v9);
  }

  return sub_270312AB8(a4);
}

uint64_t sub_27036C158(void *a1)
{
  sub_2703143D8((a1 + 12));
  v2 = a1[7];
  if (v2)
  {
    v3 = sub_270315EC0(v2);
    if (v4)
    {
      (*(*v3 + 8))(v3);
    }
  }

  result = a1[5];
  if (result)
  {
    result = sub_270315EC0(result);
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v6 = a1[3];
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t sub_27036C22C(uint64_t a1, void *a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  (*((a1 & 0xFFFFFFFFFFFFFFF8) + 176))(v5, a2);
  if (v5 != a2)
  {
    sub_270317F54(v5, a2);
  }

  result = sub_270311D34(v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_27036C2B8(uint64_t a1)
{
  if (*(a1 + 12))
  {
    *(a1 + 16);
  }

  return pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
}

void sub_27036C334(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 32);
  v7 = a2 + 1;
  v8 = 1;
  do
  {
    v9 = v8;
    v8 *= 2;
  }

  while (v9 < v7);
  v10 = sub_2703192E8(a1, v9);
  if (a2)
  {
    do
    {
      sub_270319D8C();
    }

    while (!v11);
  }

  v12 = *a3;
  v13 = v10 + 12 * a2;
  *(v13 + 2) = *(a3 + 2);
  *v13 = v12;
  sub_270310E24(a1);
  *(a1 + 32) = v10;
}

void sub_27036C3D0(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(a1, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec4f]");
  v6 = sub_270319D78();
  v8 = sub_270319488(v6, v7);
  v9 = v8;
  if (v2)
  {
    v10 = 16 * v2;
    v11 = v8;
    do
    {
      v12 = *v3++;
      *v11++ = v12;
      v10 -= 16;
    }

    while (v10);
  }

  sub_270310E24(a1);
  *a2 = v9;
}

void sub_27036C444(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(a1, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec3f]");
  v5 = sub_270319D78();
  v7 = sub_2703192E8(v5, v6);
  if (v2)
  {
    do
    {
      sub_270319D8C();
    }

    while (!v8);
  }

  sub_270310E24(a1);
  *a2 = v7;
}

uint64_t sub_27036C4B4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2)
  {
    v3 = (*(result + 8) & 3) == 3;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    result = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 32))(result);
  }

  *(v1 + 8) = 0;
  return result;
}

void sub_27036C4FC()
{
  sub_270332008();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v3, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfQuatf]");
  v4 = sub_270319D78();
  v6 = sub_270328194(v4, v5);
  if (v2)
  {
    do
    {
      sub_270332014();
    }

    while (!v7);
  }

  sub_270310E24(v1);
  *v0 = v6;
}

void sub_27036C564()
{
  sub_270332008();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v4, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec2f]");
  v5 = sub_270319D78();
  v7 = sub_2703288E0(v5, v6);
  v8 = v7;
  if (v2)
  {
    v9 = 8 * v2;
    v10 = v7;
    do
    {
      v11 = *v3++;
      *v10++ = v11;
      v9 -= 8;
    }

    while (v9);
  }

  sub_270310E24(v1);
  *v0 = v8;
}

void sub_27036C5D4()
{
  sub_270332008();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v2, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfMatrix4d]");
  v3 = *v0;
  v4 = *v1;
  v5 = sub_270329000(v1, *v1);
  v6 = v5;
  if (v4)
  {
    v7 = v4 << 7;
    v8 = v5;
    do
    {
      memcpy(v8, v3, 0x80uLL);
      v3 += 128;
      v8 += 128;
      v7 -= 128;
    }

    while (v7);
  }

  sub_270310E24(v1);
  *v0 = v6;
}

void sub_27036C660()
{
  sub_270332008();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v3, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec2d]");
  v4 = sub_270319D78();
  v6 = sub_270329668(v4, v5);
  if (v2)
  {
    do
    {
      sub_270332014();
    }

    while (!v7);
  }

  sub_270310E24(v1);
  *v0 = v6;
}

void sub_27036C6C8()
{
  sub_270332008();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v4, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec3d]");
  v5 = sub_270319D78();
  v7 = sub_270329A08(v5, v6);
  v8 = v7;
  if (v2)
  {
    v9 = 24 * v2;
    v10 = v7;
    do
    {
      v11 = *v3;
      v10[2] = *(v3 + 2);
      *v10 = v11;
      v10 += 3;
      v3 = (v3 + 24);
      v9 -= 24;
    }

    while (v9);
  }

  sub_270310E24(v1);
  *v0 = v8;
}

void sub_27036C748()
{
  sub_270332008();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v4, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec4d]");
  v5 = sub_270319D78();
  v7 = sub_270329DB0(v5, v6);
  v8 = v7;
  if (v2)
  {
    v9 = 32 * v2;
    v10 = v7;
    do
    {
      v11 = *v3;
      v12 = v3[1];
      v3 += 2;
      *v10 = v11;
      v10[1] = v12;
      v10 += 2;
      v9 -= 32;
    }

    while (v9);
  }

  sub_270310E24(v1);
  *v0 = v8;
}

void sub_27036C7B8()
{
  sub_270332008();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v4, "void pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DetachIfNotUnique() [T = unsigned int]");
  v5 = sub_270319D78();
  v7 = sub_27032C748(v5, v6);
  v8 = v7;
  if (v2)
  {
    v9 = 4 * v2;
    v10 = v7;
    do
    {
      v11 = *v3++;
      *v10++ = v11;
      v9 -= 4;
    }

    while (v9);
  }

  sub_270310E24(v1);
  *v0 = v8;
}

void sub_27036C828()
{
  sub_270332008();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v2, "void pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DetachIfNotUnique() [T = std::string]");
  v3 = sub_270332038();
  v7 = sub_27032D48C(v3, v4, v5, v6);
  sub_27032D288(v1);
  *v0 = v7;
}

void sub_27036C874()
{
  sub_270332008();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v2, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::TfToken]");
  v3 = sub_270332038();
  v7 = sub_27032DDF4(v3, v4, v5, v6);
  sub_27032DCBC(v1);
  *v0 = v7;
}

void sub_27036C8C0()
{
  sub_270332008();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v4, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfPath>::_DetachIfNotUnique() [ELEM = pxrInternal__aapl__pxrReserved__::SdfPath]");
  v5 = sub_270332024();
  v7 = sub_27032E4BC(v5, v6);
  sub_27032E5B4(v2, &v2[2 * v3], v7);
  sub_27032E41C(v1);
  *v0 = v7;
}

void sub_27036C924()
{
  sub_270332008();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v4, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DetachIfNotUnique() [ELEM = pxrInternal__aapl__pxrReserved__::SdfAssetPath]");
  v5 = sub_270332024();
  v7 = sub_27032ECCC(v5, v6);
  sub_27032EED0(v2, v2 + 48 * v3, v7);
  sub_27032EC14(v1);
  *v0 = v7;
}

void sub_27036C98C()
{
  sub_270332008();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v4, "void pxrInternal__aapl__pxrReserved__::VtArray<float>::_DetachIfNotUnique() [T = float]");
  v5 = sub_270319D78();
  v7 = sub_27032F744(v5, v6);
  v8 = v7;
  if (v2)
  {
    v9 = 4 * v2;
    v10 = v7;
    do
    {
      v11 = *v3++;
      *v10++ = v11;
      v9 -= 4;
    }

    while (v9);
  }

  sub_270310E24(v1);
  *v0 = v8;
}

void sub_27036C9FC()
{
  sub_270332008();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v4, "void pxrInternal__aapl__pxrReserved__::VtArray<double>::_DetachIfNotUnique() [T = double]");
  v5 = sub_270319D78();
  v7 = sub_270330480(v5, v6);
  v8 = v7;
  if (v2)
  {
    v9 = 8 * v2;
    v10 = v7;
    do
    {
      v11 = *v3++;
      *v10++ = v11;
      v9 -= 8;
    }

    while (v9);
  }

  sub_270310E24(v1);
  *v0 = v8;
}

uint64_t sub_27036CABC(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    v2 = *(result + 8);
    if (v2 < 0)
    {
      if (v2 == -1)
      {
        return MEMORY[0x2822067A8]();
      }

      v3 = *(result + 8);
      atomic_compare_exchange_strong_explicit((result + 8), &v3, v2 - 1, memory_order_relaxed, memory_order_relaxed);
      if (v3 != v2)
      {
        return MEMORY[0x2822067A8]();
      }
    }

    else
    {
      atomic_fetch_add_explicit((result + 8), 1u, memory_order_relaxed);
    }
  }

  return result;
}

uint64_t *sub_27036CB50(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = sub_270315EC0(result);
    if (v2)
    {
      v3 = sub_27033F4D4(result);
      return (*(v4 + 8))(v3);
    }
  }

  return result;
}

uint64_t *sub_27036CBA0(pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **a1, uint64_t a2)
{
  sub_270312AB8(a1);
  result = *(a2 + 8);
  if (result)
  {
    result = sub_270315EC0(result);
    if (v4)
    {
      v5 = sub_27033F4D4(result);
      return (*(v6 + 8))(v5);
    }
  }

  return result;
}

uint64_t *sub_27036CBF4(uint64_t a1)
{
  result = sub_270315EC0(a1);
  if (v2)
  {
    v3 = sub_27033F4D4(result);
    return (*(v4 + 8))(v3);
  }

  return result;
}

uint64_t sub_27036CC3C(uint64_t a1)
{
  v2 = j__strrchr("/AppleInternal/Library/BuildRoots/4~B_v6ugBY-l5sUVfK5EJf9R7tbqpF46xGwO4Ng7I/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/weakPtrFacade.h", 47);
  *a1 = sub_270312AE8("/AppleInternal/Library/BuildRoots/4~B_v6ugBY-l5sUVfK5EJf9R7tbqpF46xGwO4Ng7I/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/weakPtrFacade.h", v2, 0x2Fu);
  *(a1 + 8) = "operator->";
  *(a1 + 16) = 186;
  *(a1 + 24) = "DataType *pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr, pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->() const [PtrTemplate = pxrInternal__aapl__pxrReserved__::TfWeakPtr, Type = pxrInternal__aapl__pxrReserved__::SdfLayer]";
  *(a1 + 32) = 0;
  v3 = pxrInternal__aapl__pxrReserved__::Tf_PostNullSmartPtrDereferenceFatalError();
  return sub_27036CCA8(v3, v4);
}

id sub_27036CCA8(uint64_t a1, id a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = sub_270315EC0(v3);
    if (v5)
    {
      v6 = sub_27033F4D4(v4);
      (*(v7 + 8))(v6);
    }
  }

  return a2;
}

id sub_27036CD0C(int a1, uint64_t a2, id a3)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = sub_270315EC0(v4);
    if (v6)
    {
      v7 = sub_27033F4D4(v5);
      (*(v8 + 8))(v7);
    }
  }

  return a3;
}

uint64_t *sub_27036CD70(uint64_t a1, uint64_t **a2)
{
  v3 = sub_270315EC0(a1);
  if (v4)
  {
    (*(*v3 + 8))(v3);
  }

  result = *a2;
  if (*a2)
  {
    result = sub_270315EC0(result);
    if (v4)
    {
      v6 = sub_27033F4D4(result);
      return (*(v7 + 8))(v6);
    }
  }

  return result;
}

uint64_t sub_27036CDEC(uint64_t a1)
{
  if (*(a1 + 12))
  {
    *(a1 + 16);
  }

  return pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
}

void sub_27036CE68(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[4];
  v7 = a2 + 1;
  v8 = 1;
  do
  {
    v9 = v8;
    v8 *= 2;
  }

  while (v9 < v7);
  v10 = sub_27032ECCC(a1, v9);
  v11 = 3 * a2;
  sub_27032EED0(v6, v6 + 16 * v11, v10);
  v12 = *(a3 + 16);
  v13 = &v10[2 * v11];
  *v13 = *a3;
  v13[2] = v12;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v14 = *(a3 + 24);
  v13[5] = *(a3 + 40);
  *(v13 + 3) = v14;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 24) = 0;
  sub_27032EC14(a1);
  a1[4] = v10;
}

uint64_t sub_27036CF1C(uint64_t a1, uint64_t a2)
{
  result = pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  v4 = *(result + 16);
  *a2 = *result;
  *(a2 + 16) = v4;
  v5 = *(result + 32);
  *(a2 + 32) = v5;
  if (v5)
  {
    v6 = (v5 - 16);
    if (*(a2 + 24))
    {
      v6 = *(a2 + 24);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  return result;
}

atomic_uint **sub_27036CF84(uint64_t a1, atomic_uint **a2)
{
  result = pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  v4 = *result;
  *a2 = *result;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v5;
    }
  }

  return result;
}

uint64_t sub_27036CFE4(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  sub_270348CA0(a1);
  v5(v8, v4);
  sub_270312D2C(a2, v8);
  result = sub_270311D34(v8);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_27036D05C(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  sub_270348CA0(a1);
  v5(v8, v4);
  sub_270312D2C(a2, v8);
  result = sub_270311D34(v8);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_27036D0D4(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  sub_270348CA0(a1);
  v5(v8, v4);
  sub_270312D2C(a2, v8);
  result = sub_270311D34(v8);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_27036D14C(uint64_t a1, uint64_t a2)
{
  result = pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  v4 = *(result + 16);
  *a2 = *result;
  *(a2 + 16) = v4;
  v5 = *(result + 32);
  *(a2 + 32) = v5;
  if (v5)
  {
    v6 = (v5 - 16);
    if (*(a2 + 24))
    {
      v6 = *(a2 + 24);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_27036D1B4(uint64_t a1)
{
  v2 = j__strrchr("/AppleInternal/Library/BuildRoots/4~B_v6ugBY-l5sUVfK5EJf9R7tbqpF46xGwO4Ng7I/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/weakPtrFacade.h", 47);
  *a1 = sub_270312AE8("/AppleInternal/Library/BuildRoots/4~B_v6ugBY-l5sUVfK5EJf9R7tbqpF46xGwO4Ng7I/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/weakPtrFacade.h", v2, 0x2Fu);
  *(a1 + 8) = "operator->";
  *(a1 + 16) = 186;
  *(a1 + 24) = "DataType *pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr, pxrInternal__aapl__pxrReserved__::UsdStage>::operator->() const [PtrTemplate = pxrInternal__aapl__pxrReserved__::TfWeakPtr, Type = pxrInternal__aapl__pxrReserved__::UsdStage]";
  *(a1 + 32) = 0;
  v3 = pxrInternal__aapl__pxrReserved__::Tf_PostNullSmartPtrDereferenceFatalError();
  return sub_27036D220(v3, v4);
}

uint64_t sub_27036D220(uint64_t a1, void *a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  (*((a1 & 0xFFFFFFFFFFFFFFF8) + 176))(v5, a2);
  sub_270312D2C(a2, v5);
  result = sub_270311D34(v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27036D2A0()
{
  sub_270332008();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v4, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4f>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfMatrix4f]");
  v5 = sub_270319D78();
  v7 = sub_27035895C(v5, v6);
  v8 = v7;
  if (v2)
  {
    v9 = v2 << 6;
    v10 = v7;
    do
    {
      v11 = *v3;
      v12 = v3[1];
      v13 = v3[3];
      v10[2] = v3[2];
      v10[3] = v13;
      *v10 = v11;
      v10[1] = v12;
      v10 += 4;
      v3 += 4;
      v9 -= 64;
    }

    while (v9);
  }

  sub_270310E24(v1);
  *v0 = v8;
}

uint64_t sub_27036D818(uint64_t a1)
{
  sub_27036534C(a1 + 32);
  v2 = *(a1 + 24);
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 8);
  if (v3 && atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t *sub_27036D8C4(uint64_t a1, uint64_t a2)
{
  sub_27036534C(a1 + 32);
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = sub_270315EC0(v4);
    if (v6)
    {
      v7 = sub_27033F4D4(v5);
      (*(v8 + 8))(v7);
    }
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = sub_270315EC0(v9);
    if (v6)
    {
      v11 = sub_27033F4D4(v10);
      (*(v12 + 8))(v11);
    }
  }

  result = *(a2 + 8);
  if (result)
  {
    result = sub_270315EC0(result);
    if (v6)
    {
      v14 = sub_27033F4D4(result);
      return (*(v15 + 8))(v14);
    }
  }

  return result;
}

void sub_27036D980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = sub_270315EC0(v5);
    if (v7)
    {
      v8 = sub_27033F4D4(v6);
      (*(v9 + 8))(v8);
    }
  }

  MEMORY[0x27439E160](a2);
  if (*(a3 + 55) < 0)
  {
    operator delete(*(a3 + 32));
  }

  v10 = *(a3 + 24);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t sub_27036DA04(uint64_t a1)
{
  *a1 = "usd/primRange.h";
  *(a1 + 8) = "set_begin";
  *(a1 + 16) = 348;
  *(a1 + 24) = "void pxrInternal__aapl__pxrReserved__::UsdPrimRange::set_begin(const iterator &)";
  *(a1 + 32) = 0;
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper();
}

uint64_t sub_27036DA7C(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = sub_270348CA0(a1);
  v4 = sub_27036BE00(v2, v3);
  v6 = v5(v4);
  sub_27036BE28(v6);
  result = sub_270311D34(v9);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_27036DAE8(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = sub_270348CA0(a1);
  v4 = sub_27036BE00(v2, v3);
  v6 = v5(v4);
  sub_27036BE28(v6);
  result = sub_270311D34(v9);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_27036DB54(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = sub_270348CA0(a1);
  v4 = sub_27036BE00(v2, v3);
  v6 = v5(v4);
  sub_27036BE28(v6);
  result = sub_270311D34(v9);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_27036DBC0(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = sub_270348CA0(a1);
  v4 = sub_27036BE00(v2, v3);
  v6 = v5(v4);
  sub_27036BE28(v6);
  result = sub_270311D34(v9);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_27036DC2C(uint64_t a1)
{
  if (*(a1 + 12))
  {
    *(a1 + 16);
  }

  return pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
}

void sub_27036DCA8(uint64_t a1)
{
  sub_27036BE0C(a1);
  do
  {
    v6 = v5;
    v5 *= 2;
  }

  while (v6 < v4);
  v7 = sub_270310E90(v1, v6);
  if (v2)
  {
    do
    {
      sub_27036BDF0();
    }

    while (!v8);
  }

  *(v7 + v2) = *v3;
  sub_270310E24(v1);
  *(v1 + 32) = v7;
}

void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance()
{
    ;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtStreamOut()
{
  return MEMORY[0x282205FA8]();
}

{
  return MEMORY[0x282205FB0]();
}

{
  return MEMORY[0x282205FB8]();
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath()
{
  return MEMORY[0x282205FD0]();
}

{
  return MEMORY[0x282205FD8]();
}

void pxrInternal__aapl__pxrReserved__::UsdStage::_SetMetadataImpl<pxrInternal__aapl__pxrReserved__::SdfAbstractDataConstValue>()
{
    ;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdStage::Open()
{
  return MEMORY[0x282206BD8]();
}

{
  return MEMORY[0x282206BE8]();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::SdfAssetPath>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<int>>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::GfMatrix4d>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::SdfAssetPath>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::TfToken>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<std::string>()
{
    ;
  }
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void operator new()
{
    ;
  }
}