uint64_t sub_26225A7AC(uint64_t a1, uint64_t a2, const void **a3)
{
  if (a2 == a1)
  {
    return 0;
  }

  v4 = *(a3 + 23);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (*(a3 + 23))
    {
      v5 = a3[1];
      goto LABEL_7;
    }

    return 0;
  }

  v5 = a3[1];
  if (!v5)
  {
    return 0;
  }

LABEL_7:
  if (v4 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = v5;
  }

  if (v4 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  for (i = a1 + 128; ; i += 176)
  {
    v10 = *(i + 23);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(i + 8);
    }

    if (v10 == v7)
    {
      v12 = v11 >= 0 ? i : *i;
      if (!memcmp(v12, v8, v7))
      {
        break;
      }
    }

    v13 = i + 48;
    if (v13 == a2)
    {
      return 0;
    }
  }

  return 1;
}

void sub_26225A86C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 8);
  v16 = v3;
  if (v3)
  {
    sub_2622C534C(v4, v3);
    v7 = objc_msgSend_parentIdentifier(*(a1 + 8), v5, v6);
    v10 = objc_msgSend_UUIDString(v7, v8, v9);
    v11 = v10;
    v14 = objc_msgSend_UTF8String(v11, v12, v13);
    sub_2621DA094((a1 + 152), v14);
  }

  else
  {
    sub_2622C534C(v4, 0);
    if (*(a1 + 175) < 0)
    {
      *(a1 + 160) = 0;
      v15 = *(a1 + 152);
    }

    else
    {
      v15 = (a1 + 152);
      *(a1 + 175) = 0;
    }

    *v15 = 0;
  }
}

uint64_t sub_26225A954(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3 == v4)
  {
    return a1 + 208;
  }

  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (v5 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  for (i = v3 + 128; ; i += 176)
  {
    v9 = *(i + 23);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(i + 8);
    }

    if (v9 == v6)
    {
      v11 = v10 >= 0 ? i : *i;
      if (!memcmp(v11, v7, v6))
      {
        break;
      }
    }

    v12 = i + 48;
    if (v12 == v4)
    {
      return a1 + 208;
    }
  }

  return i - 128;
}

void sub_26225AA00(uint64_t a1, float *a2)
{
  v2 = a2[2];
  if (a2[6] < v2)
  {
    v2 = a2[6];
  }

  *(a1 + 64) = v2;
  v3 = a2[2];
  if (v3 < a2[6])
  {
    v3 = a2[6];
  }

  *(a1 + 68) = v3;
  v4 = *a2;
  v5 = *(a2 + 1);
  *&v6 = *a2;
  *(&v6 + 1) = *(a2 + 2);
  v7 = *a2;
  *(&v7 + 2) = v2;
  v8 = v5;
  *(&v8 + 2) = v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(&v4 + 2) = v3;
  *(&v5 + 2) = v2;
  *(a1 + 72) = v3 - v2;
  v9 = *(a1 + 8);
  v10[0] = v4;
  v10[1] = v8;
  v10[2] = v5;
  v10[3] = v7;
  if (v9)
  {
    objc_copyStruct((v9 + 272), v10, 64, 1, 0);
  }
}

uint64_t sub_26225AAA0(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_26225AADC(uint64_t a1, float32x2_t *a2, const void **a3, const void **a4)
{
  v4 = *(a1 + 544);
  v37 = *(a1 + 528);
  v38 = v4;
  v39 = *(a1 + 560);
  v40 = *(a1 + 576);
  v5 = *(a1 + 480);
  v33 = *(a1 + 464);
  v34 = v5;
  v6 = *(a1 + 512);
  v35 = *(a1 + 496);
  v36 = v6;
  HIDWORD(v34) = 1041865114;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  if (a3 == a4)
  {
    goto LABEL_32;
  }

  v9 = a2 + 16;
  v10 = a3 + 16;
  do
  {
    v11 = *(v10 + 23);
    if (v11 >= 0)
    {
      v12 = *(v10 + 23);
    }

    else
    {
      v12 = v10[1];
    }

    v13 = a2[18].u8[7];
    v14 = v13.i8[0];
    if (v13.i8[0] < 0)
    {
      v13 = a2[17];
    }

    if (v12 != *&v13 || (v11 >= 0 ? (v15 = v10) : (v15 = *v10), (v16 = *v9, v14 >= 0) ? (v17 = v9) : (v17 = *v9), memcmp(v15, v17, v12)))
    {
      sub_26229DAC8(v25, a2 + 2, v10 - 14, &v33);
      sub_26225AE14(&v30, v25);
      if (__p)
      {
        v29 = __p;
        operator delete(__p);
      }

      if (v26)
      {
        v27 = v26;
        operator delete(v26);
      }
    }

    v18 = v10 + 6;
    v10 += 22;
  }

  while (v18 != a4);
  v19 = v30;
  if (v30 == v31)
  {
LABEL_32:
    v23 = 0;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    do
    {
      if (*(v19 + 14) == 1)
      {
        v22 = *(v19 + 4);
        if (!v22)
        {
          ++v20;
        }

        if (v22 == 1)
        {
          ++v21;
        }
      }

      v19 += 104;
    }

    while (v19 != v31);
    if (v20)
    {
      v23 = (v21 != 0) + 1;
    }

    else
    {
      v23 = v21 != 0;
    }
  }

  *&v25[0] = &v30;
  sub_26225B070(v25);
  return v23;
}

void sub_26225AC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  a9 = &a22;
  sub_26225B070(&a9);
  _Unwind_Resume(a1);
}

BOOL sub_26225AC9C(uint64_t a1, float32x2_t *a2, const void **a3, const void **a4)
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
  if (a3 == a4)
  {
    goto LABEL_28;
  }

  v7 = a2 + 16;
  v8 = a3 + 16;
  do
  {
    v9 = *(v8 + 23);
    if (v9 >= 0)
    {
      v10 = *(v8 + 23);
    }

    else
    {
      v10 = v8[1];
    }

    v11 = a2[18].u8[7];
    v12 = v11.i8[0];
    if (v11.i8[0] < 0)
    {
      v11 = a2[17];
    }

    if (v10 != *&v11 || (v9 >= 0 ? (v13 = v8) : (v13 = *v8), (v14 = *v7, v12 >= 0) ? (v15 = v7) : (v15 = *v7), memcmp(v13, v15, v10)))
    {
      sub_26229DAC8(v22, a2 + 2, v8 - 14, (a1 + 464));
      sub_26225AE14(&v27, v22);
      if (__p)
      {
        v26 = __p;
        operator delete(__p);
      }

      if (v23)
      {
        v24 = v23;
        operator delete(v23);
      }
    }

    v16 = v8 + 6;
    v8 += 22;
  }

  while (v16 != a4);
  v17 = v27;
  if (v27 == v28)
  {
LABEL_28:
    v20 = 0;
  }

  else
  {
    v18 = 0;
    do
    {
      if (*(v17 + 14))
      {
        v19 = *(v17 + 13);
      }

      else
      {
        v19 = 0;
      }

      v18 += v19;
      v17 += 104;
    }

    while (v17 != v28);
    v20 = v18 != 0;
  }

  *&v22[0] = &v27;
  sub_26225B070(v22);
  return v20;
}

void sub_26225ADE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 - 72);
  sub_26225B070(&a9);
  _Unwind_Resume(a1);
}

void sub_26225AE14(uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v9 = 0x4EC4EC4EC4EC4EC5 * ((v3 - *a1) >> 3);
    v10 = v9 + 1;
    if ((v9 + 1) > 0x276276276276276)
    {
      sub_2621CBEB0();
    }

    v11 = 0x4EC4EC4EC4EC4EC5 * ((v4 - *a1) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x13B13B13B13B13BLL)
    {
      v12 = 0x276276276276276;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 <= 0x276276276276276)
      {
        operator new();
      }

      sub_2621C6A34();
    }

    v13 = 104 * v9;
    v14 = a2[1];
    *v13 = *a2;
    *(v13 + 16) = v14;
    *(v13 + 32) = a2[2];
    *(v13 + 48) = *(a2 + 24);
    *(v13 + 56) = *(a2 + 56);
    *(v13 + 72) = *(a2 + 9);
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(v13 + 80) = a2[5];
    *(v13 + 96) = *(a2 + 12);
    *(a2 + 11) = 0;
    *(a2 + 12) = 0;
    *(a2 + 9) = 0;
    *(a2 + 10) = 0;
    v8 = 104 * v9 + 104;
    v24 = (v13 + 104);
    v15 = *a1;
    v16 = a1[1];
    v17 = v13 + *a1 - v16;
    if (*a1 != v16)
    {
      v18 = *a1;
      v19 = v13 + *a1 - v16;
      do
      {
        v20 = *v18;
        v21 = *(v18 + 1);
        v22 = *(v18 + 2);
        *(v19 + 48) = *(v18 + 24);
        *(v19 + 16) = v21;
        *(v19 + 32) = v22;
        *v19 = v20;
        *(v19 + 64) = 0;
        *(v19 + 72) = 0;
        *(v19 + 56) = 0;
        *(v19 + 56) = *(v18 + 7);
        *(v19 + 72) = v18[9];
        v18[7] = 0;
        v18[8] = 0;
        v18[9] = 0;
        *(v19 + 80) = 0;
        *(v19 + 88) = 0;
        *(v19 + 96) = 0;
        *(v19 + 80) = *(v18 + 5);
        *(v19 + 96) = v18[12];
        v18[10] = 0;
        v18[11] = 0;
        v18[12] = 0;
        v18 += 13;
        v19 += 104;
      }

      while (v18 != v16);
      do
      {
        sub_26225B0F4(v15);
        v15 += 13;
      }

      while (v15 != v16);
    }

    v23 = *a1;
    *a1 = v17;
    *(a1 + 1) = v24;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    *(v3 + 48) = *(a2 + 24);
    *(v3 + 16) = v6;
    *(v3 + 32) = v7;
    *v3 = v5;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 9);
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(a2 + 9) = 0;
    *(v3 + 80) = 0;
    *(v3 + 88) = 0;
    *(v3 + 96) = 0;
    *(v3 + 80) = a2[5];
    *(v3 + 96) = *(a2 + 12);
    *(a2 + 10) = 0;
    *(a2 + 11) = 0;
    *(a2 + 12) = 0;
    v8 = v3 + 104;
  }

  a1[1] = v8;
}

void sub_26225B070(void ***a1)
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
        v4 -= 13;
        sub_26225B0F4(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_26225B0F4(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;

    operator delete(v3);
  }
}

void sub_26225B14C(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_2621CBEB0();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_2621CBEC8(v11);
    }

    v12 = (8 * (v8 >> 3));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

uint64_t sub_26225B224(const void **a1, uint64_t *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2621CBEB0();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    v20 = a1;
    if (v10)
    {
      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2621C6A34();
    }

    v11 = 24 * v7;
    v16 = 0;
    v17 = v11;
    v18 = 24 * v7;
    v19 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = 0;
    sub_26225B3B0(24 * v7, *a2, a2[1], (a2[1] - *a2) >> 3);
    v6 = (v18 + 24);
    v12 = a1[1] - *a1;
    v13 = &v17[-v12];
    memcpy(&v17[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v6;
    v15 = a1[2];
    a1[2] = v19;
    v18 = v14;
    v19 = v15;
    v16 = v14;
    v17 = v14;
    result = sub_26220AA90(&v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    result = sub_26225B3B0(v4, *a2, a2[1], (a2[1] - *a2) >> 3);
    v6 = v4 + 24;
    a1[1] = v6;
  }

  a1[1] = v6;
  return result;
}

void sub_26225B390(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_26220AA90(va);
  _Unwind_Resume(a1);
}

uint64_t sub_26225B3B0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2621CC71C(result, a4);
  }

  return result;
}

void sub_26225B410(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_26225B42C(uint64_t *result, uint64_t (***a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v8 = result;
    v10 = result[1];
    v9 = result[2];
    if (0x2E8BA2E8BA2E8BA3 * ((v9 - v10) >> 4) >= a5)
    {
      v15 = v10 - a2;
      if (0x2E8BA2E8BA2E8BA3 * ((v10 - a2) >> 4) >= a5)
      {
        v17 = 176 * a5;
        sub_26225B684(result, a2, result[1], &a2[22 * a5]);
        v16 = v17 + v6;
      }

      else
      {
        result = sub_26225185C(v15 + a3, a4, v10);
        v8[1] = result;
        if (v15 < 1)
        {
          return result;
        }

        sub_26225B684(v8, a2, v10, &a2[22 * a5]);
        v16 = v15 + v6;
      }

      return sub_2622517A0(v6, v16, a2);
    }

    else
    {
      v11 = *result;
      v12 = a5 + 0x2E8BA2E8BA2E8BA3 * ((v10 - *result) >> 4);
      if (v12 > 0x1745D1745D1745DLL)
      {
        sub_2621CBEB0();
      }

      v13 = 0x2E8BA2E8BA2E8BA3 * ((v9 - v11) >> 4);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0xBA2E8BA2E8BA2ELL)
      {
        v14 = 0x1745D1745D1745DLL;
      }

      else
      {
        v14 = v12;
      }

      v29 = v8;
      if (v14)
      {
        sub_2622469FC(v14);
      }

      v18 = 16 * ((a2 - v11) >> 4);
      v26 = 0;
      v27 = v18;
      v28 = v18;
      v19 = 176 * a5;
      v20 = v18 + 176 * a5;
      do
      {
        sub_262246794(v18, v6, a3);
        v18 += 176;
        v6 += 176;
        v19 -= 176;
      }

      while (v19);
      *&v28 = v20;
      sub_262246A58(a2, v8[1], v20);
      v21 = *v8;
      v22 = v27;
      *&v28 = v20 + v8[1] - a2;
      v8[1] = a2;
      v23 = v22 + v21 - a2;
      sub_262246A58(v21, a2, v23);
      v24 = *v8;
      *v8 = v23;
      v25 = v8[2];
      *(v8 + 1) = v28;
      *&v28 = v24;
      *(&v28 + 1) = v25;
      v26 = v24;
      v27 = v24;
      return sub_262246B64(&v26);
    }
  }

  return result;
}

uint64_t sub_26225B684(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(result + 8);
  v7 = a2 + v6 - a4;
  if (v7 >= a3)
  {
    v10 = *(result + 8);
  }

  else
  {
    v9 = a2 + v6 - a4;
    v10 = *(result + 8);
    do
    {
      result = sub_262246794(v10, v9, a3);
      v9 += 176;
      v10 += 176;
    }

    while (v9 < a3);
  }

  *(v5 + 8) = v10;
  if (v6 != a4)
  {
    v11 = 0;
    v12 = a4 - v6;
    do
    {
      v13 = v6 + v11;
      objc_storeStrong((v6 + v11 - 168), *(v7 + v11 - 168));
      v14 = *(v7 + v11 - 160);
      v15 = *(v7 + v11 - 128);
      *(v13 - 144) = *(v7 + v11 - 144);
      *(v13 - 128) = v15;
      *(v13 - 160) = v14;
      v16 = *(v7 + v11 - 112);
      v17 = *(v7 + v11 - 96);
      v18 = *(v7 + v11 - 80);
      *(v13 - 71) = *(v7 + v11 - 71);
      *(v13 - 96) = v17;
      *(v13 - 80) = v18;
      *(v13 - 112) = v16;
      std::string::operator=((v6 + v11 - 48), (v7 + v11 - 48));
      result = std::string::operator=((v6 + v11 - 24), (v7 + v11 - 24));
      v11 -= 176;
    }

    while (v12 != v11);
  }

  return result;
}

uint64_t sub_26225B780(_BYTE *a1, float32x2_t *a2, __n128 a3, float32x2_t a4)
{
  v4 = a3.n128_u64[0];
  a3.n128_u64[0] = a2[2];
  sub_26229E5CC(&v22, a3, a2[3], v4, a4);
  if (v22.i8[0])
  {
    sub_262246794(&v15, a2, v7);
    v17 = v23;
    v9 = v23;
    v10 = v23;
    DWORD2(v10) = v20;
    *&v11 = *(&v23 + 1);
    v12 = v11;
    DWORD2(v12) = v21;
    DWORD2(v9) = v21;
    DWORD2(v11) = v20;
    v18 = v10;
    v19 = v12;
    src[0] = v9;
    src[1] = v12;
    src[2] = v11;
    src[3] = v10;
    if (v16)
    {
      objc_copyStruct((v16 + 272), src, 64, 1, 0);
    }

    *a1 = 1;
    sub_262246794((a1 + 16), &v15, v8);
  }

  else
  {
    sub_2621C5224(&v15);
    *a1 = 0;
    sub_262246794((a1 + 16), &v15, v13);
  }

  return sub_2621C50C4(&v15);
}

void sub_26225B888(uint64_t a1, uint64_t a2, void *a3)
{
  v7[17] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v6 = *(a2 + 16);
  memset(v5, 0, sizeof(v5));
  sub_2621DC054(v5, &v6, v7, 1uLL);
}

void sub_26225BD88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v31 = *(v29 + 128);
  if (v31)
  {
    sub_2621D1B78(v31);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_26225BE64(float *a1, float32x2_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, void *a6)
{
  v70[17] = *MEMORY[0x277D85DE8];
  v32 = a6;
  sub_2621C5224(v59);
  v11 = *a3;
  v10 = a3[1];
  if (*a3 == v10)
  {
LABEL_6:
    v12 = 1;
  }

  else
  {
    while (1)
    {
      sub_26223FEB8(v34, a2 + 2, (v11 + 16));
      if (v35 > 0.5 && v37 < a1[120] && *(&v36 + 1) < a1[118])
      {
        break;
      }

      v11 += 176;
      if (v11 == v10)
      {
        goto LABEL_6;
      }
    }

    objc_storeStrong(&v60, *(v11 + 8));
    v18 = *(v11 + 16);
    v19 = *(v11 + 48);
    v62 = *(v11 + 32);
    v63 = v19;
    v61 = v18;
    v20 = *(v11 + 64);
    v21 = *(v11 + 80);
    v22 = *(v11 + 96);
    *(v66 + 9) = *(v11 + 105);
    v65 = v21;
    v66[0] = v22;
    v64 = v20;
    std::string::operator=(&v67, (v11 + 128));
    std::string::operator=(&v68, (v11 + 152));
    v12 = 0;
  }

  sub_2621C5224(v49);
  v14 = *a4;
  v13 = a4[1];
  if (*a4 == v13)
  {
LABEL_13:
    sub_2621C5224(v39);
    if (v12)
    {
      v16 = 0;
      v17 = v32;
      goto LABEL_21;
    }

    objc_storeStrong(&v40, v60);
    v45 = v65;
    v46[0] = v66[0];
    *(v46 + 9) = *(v66 + 9);
    v41 = v61;
    v42 = v62;
    v43 = v63;
    v44 = v64;
    std::string::operator=(&v47, &v67);
    v15 = &v68;
  }

  else
  {
    v15 = &v58;
    while (1)
    {
      sub_26223FEB8(v34, a2 + 2, (v14 + 16));
      if (v35 > 0.5 && v37 < a1[120] && *(&v36 + 1) < a1[118])
      {
        break;
      }

      v14 += 176;
      if (v14 == v13)
      {
        goto LABEL_13;
      }
    }

    objc_storeStrong(&v50, *(v14 + 8));
    v23 = *(v14 + 16);
    v24 = *(v14 + 48);
    v52 = *(v14 + 32);
    v53 = v24;
    v51 = v23;
    v25 = *(v14 + 64);
    v26 = *(v14 + 80);
    v27 = *(v14 + 96);
    *(v56 + 9) = *(v14 + 105);
    v55 = v26;
    v56[0] = v27;
    v54 = v25;
    std::string::operator=(&v57, (v14 + 128));
    std::string::operator=(&v58, (v14 + 152));
    sub_2621C5224(v39);
    objc_storeStrong(&v40, v50);
    v45 = v55;
    v46[0] = v56[0];
    *(v46 + 9) = *(v56 + 9);
    v41 = v51;
    v42 = v52;
    v43 = v53;
    v44 = v54;
    std::string::operator=(&v47, &v57);
  }

  std::string::operator=(&v48, v15);
  v28.n128_u64[0] = v41;
  sub_26225B780(v34, a2, v28, *(&v41 + 8));
  v17 = v32;
  if (v34[0] == 1)
  {
    v29 = vsub_f32(*&v38, *(&v38 + 8));
    if (sqrtf(vaddv_f32(vmul_f32(v29, v29))) >= a1[128])
    {
      v69 = v38;
      memset(v33, 0, sizeof(v33));
      sub_2621DC054(v33, &v69, v70, 1uLL);
    }
  }

  v16 = 1;
  sub_2621C50C4(&v36);
LABEL_21:
  sub_2621C50C4(v39);
  sub_2621C50C4(v49);
  sub_2621C50C4(v59);

  v30 = *MEMORY[0x277D85DE8];
  return v16;
}

void sub_26225C2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v66 + 176) = &unk_2874EF0B8;
  v68 = *(v66 + 304);
  if (v68)
  {
    sub_2621D1B78(v68);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_2621C50C4(v65 + 16);
  sub_2621C50C4(&a43);
  sub_2621C50C4(&a65);
  sub_2621C50C4(&STACK[0x270]);

  _Unwind_Resume(a1);
}

uint64_t sub_26225C370(uint64_t a1, float32x2_t *a2, const void **a3, const void **a4)
{
  v29 = 0;
  v30 = 0;
  v31 = 0;
  if (a3 == a4)
  {
    goto LABEL_35;
  }

  v7 = a2 + 16;
  v8 = a3 + 16;
  do
  {
    v9 = *(v8 + 23);
    if (v9 >= 0)
    {
      v10 = *(v8 + 23);
    }

    else
    {
      v10 = v8[1];
    }

    v11 = a2[18].u8[7];
    v12 = v11.i8[0];
    if (v11.i8[0] < 0)
    {
      v11 = a2[17];
    }

    if (v10 != *&v11 || (v9 >= 0 ? (v13 = v8) : (v13 = *v8), (v14 = *v7, v12 >= 0) ? (v15 = v7) : (v15 = *v7), memcmp(v13, v15, v10)))
    {
      sub_26229DAC8(v24, a2 + 2, v8 - 14, (a1 + 464));
      sub_26225AE14(&v29, v24);
      if (__p)
      {
        v28 = __p;
        operator delete(__p);
      }

      if (v25)
      {
        v26 = v25;
        operator delete(v25);
      }
    }

    v16 = v8 + 6;
    v8 += 22;
  }

  while (v16 != a4);
  v17 = v29;
  if (v29 == v30)
  {
LABEL_35:
    v22 = 0;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    do
    {
      if (*(v17 + 14) == 1)
      {
        v20 = *(v17 + 4);
        if (!v20)
        {
          ++v19;
        }

        if (v20 == 1)
        {
          ++v18;
        }
      }

      v17 += 104;
    }

    while (v17 != v30);
    if (v19)
    {
      v21 = v18 == 0;
    }

    else
    {
      v21 = 1;
    }

    v22 = !v21;
  }

  *&v24[0] = &v29;
  sub_26225B070(v24);
  return v22;
}

void sub_26225C4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 - 72);
  sub_26225B070(&a9);
  _Unwind_Resume(a1);
}

void sub_26225C4FC(uint64_t a1, float *a2, int a3, void *a4, float a5)
{
  v26 = a4;
  v9 = objc_alloc_init(RS3DSurface);
  v10 = *(a1 + 8);
  *(a1 + 8) = v9;

  v11 = *(a1 + 8);
  if (v11)
  {
    *(v11 + 104) = 0;
    *(v11 + 108) = a5;
    v12 = *(a1 + 8);
  }

  else
  {
    v12 = 0;
  }

  sub_2622C533C(v12, v26);
  sub_2622C534C(*(a1 + 8), 0);
  v13 = *(a1 + 8);
  if (v13)
  {
    *(v13 + 116) = a3;
    v14 = *(a1 + 8);
    if (v14)
    {
      *(v14 + 120) = -1;
    }
  }

  sub_26225AA00(a1, a2);
  v17 = objc_msgSend_identifier(*(a1 + 8), v15, v16);
  v20 = objc_msgSend_UUIDString(v17, v18, v19);
  v21 = v20;
  v24 = objc_msgSend_UTF8String(v21, v22, v23);
  sub_2621DA094((a1 + 128), v24);

  if (*(a1 + 175) < 0)
  {
    *(a1 + 160) = 0;
    v25 = *(a1 + 152);
  }

  else
  {
    v25 = (a1 + 152);
    *(a1 + 175) = 0;
  }

  *v25 = 0;
}

void sub_26225C650(uint64_t a1, __int128 *a2, void *a3, void *a4, float a5, float a6, float a7)
{
  v50 = a3;
  v13 = a4;
  v14 = objc_alloc_init(RS3DSurface);
  v15 = *(a1 + 8);
  *(a1 + 8) = v14;

  v16 = *(a1 + 8);
  if (v16)
  {
    *(v16 + 104) = 0;
    *(v16 + 108) = a7;
    v17 = *(a1 + 8);
  }

  else
  {
    v17 = 0;
  }

  sub_2622C533C(v17, v50);
  sub_2622C534C(*(a1 + 8), v13);
  v21 = *(a1 + 8);
  if (v21 && (*(v21 + 116) = -1, (v22 = *(a1 + 8)) != 0))
  {
    *(v22 + 120) = -1;
    v23 = *(a1 + 8);
  }

  else
  {
    v23 = 0;
  }

  if (a6 >= a5)
  {
    v24 = a5;
  }

  else
  {
    v24 = a6;
  }

  if (a5 >= a6)
  {
    v25 = a5;
  }

  else
  {
    v25 = a6;
  }

  *(a1 + 64) = v24;
  *(a1 + 68) = v25;
  v26 = *a2;
  *(a1 + 16) = *a2;
  *&v26 = *(a1 + 16);
  *&v20 = *(a1 + 24);
  v27 = v26;
  *(&v27 + 2) = v24;
  v28 = v20;
  *(&v28 + 2) = v25;
  *(a1 + 32) = v27;
  *(a1 + 48) = v28;
  *(a1 + 72) = v25 - v24;
  *(&v26 + 2) = v25;
  *(&v20 + 2) = v24;
  src[0] = v26;
  src[1] = v28;
  src[2] = v20;
  src[3] = v27;
  if (v23)
  {
    objc_copyStruct((v23 + 272), src, 64, 1, 0);
    objc_msgSend_identifier(*(a1 + 8), v29, v30);
  }

  else
  {
    objc_msgSend_identifier(0, v18, v19);
  }
  v31 = ;
  v34 = objc_msgSend_UUIDString(v31, v32, v33);
  v35 = v34;
  v38 = objc_msgSend_UTF8String(v35, v36, v37);
  sub_2621DA094((a1 + 128), v38);

  if (v13)
  {
    v41 = objc_msgSend_parentIdentifier(*(a1 + 8), v39, v40);
    v44 = objc_msgSend_UUIDString(v41, v42, v43);
    v45 = v44;
    v48 = objc_msgSend_UTF8String(v45, v46, v47);
    sub_2621DA094((a1 + 152), v48);
  }

  else
  {
    if (*(a1 + 175) < 0)
    {
      *(a1 + 160) = 0;
      v49 = *(a1 + 152);
    }

    else
    {
      v49 = (a1 + 152);
      *(a1 + 175) = 0;
    }

    *v49 = 0;
  }
}

void sub_26225C87C()
{
  v35 = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  *v34 = 0x1A00000006;
  size = 128;
  if (sysctl(v34, 2u, v33, &size, 0, 0))
  {
    if (*__error() != 12)
    {
      if (qword_27FF0C060 != -1)
      {
        dispatch_once(&qword_27FF0C060, &unk_2874EE100);
      }

      v1 = qword_27FF0C058;
      if (!os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

LABEL_34:
      v28 = *__error();
      *buf = 67240192;
      v32 = v28;
      v24 = "sysctl failed: %{public, errno}d";
LABEL_35:
      _os_log_error_impl(&dword_2621C3000, v1, OS_LOG_TYPE_ERROR, v24, buf, 8u);
LABEL_15:

      goto LABEL_16;
    }

    if (sysctl(v34, 2u, 0, &size, 0, 0))
    {
      if (qword_27FF0C060 != -1)
      {
        dispatch_once(&qword_27FF0C060, &unk_2874EE100);
      }

      v1 = qword_27FF0C058;
      if (!os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      goto LABEL_34;
    }

    v18 = malloc_type_malloc(size, 0xDADA5F92uLL);
    if (!v18)
    {
      if (qword_27FF0C060 != -1)
      {
        dispatch_once(&qword_27FF0C060, &unk_2874EE100);
      }

      v1 = qword_27FF0C058;
      if (!os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      v23 = *__error();
      *buf = 67240192;
      v32 = v23;
      v24 = "malloc failed: %{public, errno}d";
      goto LABEL_35;
    }

    v19 = v18;
    if (sysctl(v34, 2u, v18, &size, 0, 0))
    {
      if (qword_27FF0C060 != -1)
      {
        dispatch_once(&qword_27FF0C060, &unk_2874EE100);
      }

      v20 = qword_27FF0C058;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v29 = *__error();
        *buf = 67240192;
        v32 = v29;
        _os_log_error_impl(&dword_2621C3000, v20, OS_LOG_TYPE_ERROR, "sysctl failed: %{public, errno}d", buf, 8u);
      }

      free(v19);
      goto LABEL_16;
    }

    v25 = objc_alloc(MEMORY[0x277CCACA8]);
    v26 = strlen(v19);
    v4 = objc_msgSend_initWithBytesNoCopy_length_encoding_freeWhenDone_(v25, v27, v19, v26, 1, 1);
  }

  else
  {
    v2 = objc_alloc(MEMORY[0x277CCACA8]);
    v4 = objc_msgSend_initWithCString_encoding_(v2, v3, v33, 1);
  }

  v6 = v4;
  if (!v4)
  {
LABEL_16:
    v11 = MGCopyAnswer();
    v6 = qword_27FF0C148;
    qword_27FF0C148 = v11;
    goto LABEL_28;
  }

  if (objc_msgSend_hasSuffix_(v4, v5, @"DEV"))
  {
    v9 = objc_msgSend_length(v6, v7, v8) - 3;
    objc_msgSend_substringToIndex_(v6, v10, v9);
  }

  else
  {
    if (!objc_msgSend_hasSuffix_(v6, v7, @"AP"))
    {
      v21 = qword_27FF0C148;
      qword_27FF0C148 = v6;
      v6 = v6;

      goto LABEL_28;
    }

    v14 = objc_msgSend_length(v6, v12, v13) - 2;
    objc_msgSend_substringToIndex_(v6, v15, v14);
  }
  v16 = ;
  v17 = qword_27FF0C148;
  qword_27FF0C148 = v16;

LABEL_28:
  objc_autoreleasePoolPop(v0);
  v22 = *MEMORY[0x277D85DE8];
}

void sub_26225CC70()
{
  v0 = objc_autoreleasePoolPush();
  byte_27FF0C158 = sub_26225CCBC(&unk_2874FACF0);

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_26225CCBC(void *a1)
{
  v1 = qword_27FF0C150;
  v3 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_27FF0C150, &unk_2874EE468);
  }

  v4 = objc_msgSend_containsObject_(v3, v2, qword_27FF0C148);

  return v4;
}

void sub_26225CD24()
{
  v0 = objc_autoreleasePoolPush();
  byte_27FF0C168 = sub_26225CCBC(&unk_2874FAD08);

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_26225CD70()
{
  if (qword_27FF0C160 != -1)
  {
    dispatch_once(&qword_27FF0C160, &unk_2874EE488);
  }

  if (byte_27FF0C158)
  {
    v0 = 1;
  }

  else
  {
    if (qword_27FF0C170 != -1)
    {
      dispatch_once(&qword_27FF0C170, &unk_2874EE4A8);
    }

    v0 = byte_27FF0C168;
  }

  return v0 & 1;
}

void sub_26225CDF4(void *a1)
{
  if (a1)
  {
    sub_26225CDF4(*a1);
    sub_26225CDF4(a1[1]);
    sub_26225CF48(a1[6]);

    operator delete(a1);
  }
}

void sub_26225CE48(void *a1)
{
  if (a1)
  {
    sub_26225CE48(*a1);
    sub_26225CE48(a1[1]);
    sub_26225CE9C(a1[6]);

    operator delete(a1);
  }
}

void sub_26225CE9C(void *a1)
{
  if (a1)
  {
    sub_26225CE9C(*a1);
    sub_26225CE9C(a1[1]);
    sub_26225CEF0((a1 + 4));

    operator delete(a1);
  }
}

void sub_26225CEF0(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    v2 = *(a1 + 16);

    operator delete(v2);
  }
}

void sub_26225CF48(void *a1)
{
  if (a1)
  {
    sub_26225CF48(*a1);
    sub_26225CF48(a1[1]);
    sub_26225CF9C((a1 + 4));

    operator delete(a1);
  }
}

void sub_26225CF9C(uint64_t a1)
{
  sub_26225CFEC(a1 + 32);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_26225CFEC(uint64_t a1)
{
  *a1 = &unk_2874EE728;
  v2 = *(a1 + 720);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 688);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 656);
  if (v4)
  {
    *(a1 + 664) = v4;
    operator delete(v4);
  }

  if (*(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
  }

  if (*(a1 + 607) < 0)
  {
    operator delete(*(a1 + 584));
  }

  v5 = *(a1 + 552);
  if (v5)
  {
    operator delete(v5);
  }

  v7 = (a1 + 528);
  sub_26225D098(&v7);
  return a1;
}

void sub_26225D098(void ***a1)
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
        v4 -= 3;
        v6 = v4;
        sub_26225D12C(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_26225D12C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_26225D180(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_26225D180(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

void sub_26225D1D0(uint64_t a1)
{
  sub_26225CFEC(a1);

  JUMPOUT(0x266727420);
}

void sub_26225D224(void *a1)
{
  *a1 = &unk_2874EE4D8;
  sub_2621C74C4((a1 + 19));

  JUMPOUT(0x266727420);
}

void *sub_26225D288(void *a1)
{
  *a1 = &unk_2874EE4D8;
  sub_2621C74C4((a1 + 19));
  return a1;
}

uint64_t **sub_26225D2CC(void *a1, unsigned __int8 a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % a1[1];
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 16) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_26225D3F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26225D40C(uint64_t a1, const std::string *a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t a6, unsigned __int8 **a7, int a8, std::string *__str)
{
  v60 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2874EE728;
  *(a1 + 408) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 520) = 0;
  v56 = (a1 + 608);
  v57 = (a1 + 552);
  v58 = (a1 + 656);
  *(a1 + 656) = 0;
  *(a1 + 672) = 0;
  *(a1 + 664) = 0;
  v16 = (a1 + 688);
  *(a1 + 688) = 0;
  *(a1 + 704) = 0;
  *(a1 + 696) = 0;
  v17 = (a1 + 720);
  *(a1 + 720) = 0;
  *(a1 + 736) = 0;
  *(a1 + 728) = 0;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 636) = 0;
  std::string::operator=((a1 + 584), a2);
  std::string::operator=(v56, __str);
  *(a1 + 632) = a8;
  v18 = *a4;
  v19 = a4[1];
  v20 = a4[3];
  *(a1 + 112) = a4[2];
  *(a1 + 128) = v20;
  *(a1 + 80) = v18;
  *(a1 + 96) = v19;
  v21 = *a5;
  v22 = a5[2];
  *(a1 + 160) = a5[1];
  *(a1 + 176) = v22;
  *(a1 + 144) = v21;
  *(a1 + 576) = a6;
  sub_2622E82B0(a1, a3);
  v23 = *(a1 + 128);
  v24 = *(a1 + 208);
  v25 = vsub_f32(*(a1 + 200), *&v23);
  v26 = vmul_f32(v25, v25);
  *(a1 + 636) = **a7 | 0x100;
  *(a1 + 638) = (*a7)[1] | 0x100;
  *&v23 = vsub_f32(v24, *&v23);
  *&v23 = vmul_f32(*&v23, *&v23);
  *(a1 + 640) = 16843009;
  __src = vsqrt_f32(vzip1_s32(vadd_f32(v26, vdup_lane_s32(v26, 1)), vadd_f32(*&v23, vdup_lane_s32(*&v23, 1))));
  sub_26225E46C(v58, &__src, &v60, 2uLL);
  *(a1 + 680) = 1;
  v27 = *(a1 + 536);
  v28 = *(a1 + 528);
  v29 = v27 - v28;
  v30 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v28) >> 3);
  if (v30 > 1)
  {
    if (v29 != 48)
    {
      v36 = (v28 + 48);
      while (v27 != v36)
      {
        v27 -= 3;
        __src = v27;
        sub_26225D12C(&__src);
      }

      *(a1 + 536) = v36;
    }
  }

  else
  {
    v31 = 2 - v30;
    v32 = *(a1 + 544);
    if (0xAAAAAAAAAAAAAAABLL * ((v32 - v27) >> 3) < v31)
    {
      v33 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v28) >> 3);
      v34 = 2 * v33;
      if (2 * v33 <= 2)
      {
        v34 = 2;
      }

      if (v33 >= 0x555555555555555)
      {
        v35 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v35 = v34;
      }

      sub_26225E0A4(v35);
    }

    v37 = 24 * ((24 - v29) / 0x18uLL) + 24;
    bzero(*(a1 + 536), v37);
    *(a1 + 536) = v27 + v37;
  }

  LOWORD(__src) = 257;
  sub_26225E59C(v57, &__src, &__src + 2);
  LOWORD(__src) = 257;
  sub_26225E59C(v16, &__src, &__src + 2);
  *v44.i64 = sub_262240264((a1 + 80), a1 + 144, 384, 288, v38, v39, v40, v41, v42, v43);
  v45.i64[0] = *(a1 + 216);
  v45.i32[2] = 0;
  v46 = vmlaq_f32(vmulq_f32(v45, xmmword_2623A7910), xmmword_2623A7700, vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL));
  v47 = vmulq_f32(v44, vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL));
  v48 = vmulq_f32(v44, v44);
  v49 = vmulq_f32(v46, v46);
  v50 = (v47.f32[2] + vaddv_f32(*v47.f32)) / fmaxf(sqrtf(v48.f32[2] + vaddv_f32(*v48.f32)) * sqrtf(v49.f32[1] + (v49.f32[2] + v49.f32[0])), 1.1755e-38);
  v51 = 1.0;
  if (v50 <= 1.0)
  {
    v51 = v50;
  }

  if (v50 >= -1.0)
  {
    v52 = v51;
  }

  else
  {
    v52 = -1.0;
  }

  v53 = acosf(v52) * 180.0 / 3.14159274;
  if ((180.0 - v53) < v53)
  {
    v53 = 180.0 - v53;
  }

  *(a1 + 712) = v53;
  LOWORD(__src) = 0;
  sub_26225E59C(v17, &__src, &__src + 2);
  v54 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_26225D890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, void **a12, void **a13)
{
  if (*v16)
  {
    operator delete(*v16);
  }

  if (*v15)
  {
    operator delete(*v15);
  }

  v18 = *a12;
  if (*a12)
  {
    *(v13 + 664) = v18;
    operator delete(v18);
  }

  if (*(v13 + 631) < 0)
  {
    operator delete(*a10);
  }

  if (*(v13 + 607) < 0)
  {
    operator delete(*v14);
  }

  if (*a11)
  {
    operator delete(*a11);
  }

  a13 = (v13 + 528);
  sub_26225D098(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_26225D91C(uint64_t a1, void *a2)
{
  v2 = *sub_26225E318(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_26225DAA0(uint64_t a1, uint64_t a2)
{
  memcpy((a1 + 16), (a2 + 16), 0x1F9uLL);
  if (a1 != a2)
  {
    v4 = (a1 + 528);
    v5 = *(a2 + 528);
    v6 = *(a2 + 536);
    v7 = v6 - v5;
    v8 = *(a1 + 544);
    v9 = *(a1 + 528);
    if (v8 - v9 < v6 - v5)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      if (v9)
      {
        v11 = *(a1 + 536);
        v12 = *(a1 + 528);
        if (v11 != v9)
        {
          do
          {
            v11 -= 3;
            v23 = v11;
            sub_26225D12C(&v23);
          }

          while (v11 != v9);
          v12 = *v4;
        }

        *(a1 + 536) = v9;
        operator delete(v12);
        v8 = 0;
        *v4 = 0;
        *(a1 + 536) = 0;
        *(a1 + 544) = 0;
      }

      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
        v14 = 2 * v13;
        if (2 * v13 <= v10)
        {
          v14 = v10;
        }

        if (v13 >= 0x555555555555555)
        {
          v15 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v15 = v14;
        }

        sub_26225E054(a1 + 528, v15);
      }

      sub_2621CBEB0();
    }

    v16 = *(a1 + 536) - v9;
    if (v16 >= v7)
    {
      sub_26225DD8C(*(a2 + 528), *(a2 + 536), *(a1 + 528));
      v19 = v18;
      v20 = *(a1 + 536);
      if (v20 != v18)
      {
        do
        {
          v20 -= 3;
          v23 = v20;
          sub_26225D12C(&v23);
        }

        while (v20 != v19);
      }

      *(a1 + 536) = v19;
    }

    else
    {
      v17 = sub_26225DD8C(*(a2 + 528), (v5 + v16), *(a1 + 528));
      *(a1 + 536) = sub_26225DF6C(a1 + 528, v17, v6, *(a1 + 536));
    }
  }

  sub_26225DCF4(a1 + 552, a2 + 552);
  *(a1 + 576) = *(a2 + 576);
  std::string::operator=((a1 + 584), (a2 + 584));
  std::string::operator=((a1 + 608), (a2 + 608));
  v21 = *(a2 + 648);
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 648) = v21;
  if (a1 != a2)
  {
    sub_2621CA9DC((a1 + 656), *(a2 + 656), *(a2 + 664), (*(a2 + 664) - *(a2 + 656)) >> 2);
  }

  *(a1 + 680) = *(a2 + 680);
  sub_26225DCF4(a1 + 688, a2 + 688);
  *(a1 + 712) = *(a2 + 712);
  sub_26225DCF4(a1 + 720, a2 + 720);
  return a1;
}

uint64_t sub_26225DCF4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      if (v4 > *(a1 + 16) << 6)
      {
        v5 = *a1;
        if (*a1)
        {
          operator delete(v5);
          *a1 = 0;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          v4 = *(a2 + 8);
        }

        sub_2621DC9F8(a1, v4);
      }

      memmove(*a1, *a2, (((v4 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8) + 8);
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    *(a1 + 8) = v6;
  }

  return a1;
}

uint64_t *sub_26225DD8C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      if (a3 != v4)
      {
        v7 = *v4;
        v6 = v4[1];
        v8 = v6 - *v4;
        v9 = a3[2];
        v10 = *a3;
        if (v9 - *a3 < v8)
        {
          if (v10)
          {
            sub_26225D180(a3);
            operator delete(*a3);
            v9 = 0;
            *a3 = 0;
            a3[1] = 0;
            a3[2] = 0;
          }

          v11 = v8 >> 5;
          if (!((v8 >> 5) >> 59))
          {
            if (v9 >> 4 > v11)
            {
              v11 = v9 >> 4;
            }

            if (v9 >= 0x7FFFFFFFFFFFFFE0)
            {
              v12 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v12 = v11;
            }

            sub_26225E160(a3, v12);
          }

          sub_2621CBEB0();
        }

        v13 = a3[1];
        if (v13 - v10 >= v8)
        {
          if (v7 != v6)
          {
            v18 = *v4;
            v19 = *a3;
            do
            {
              v20 = *v18;
              v18 += 8;
              *v19 = v20;
              v19 += 8;
              std::string::operator=((v10 + 8), (v7 + 2));
              v10 = v19;
              v7 = v18;
            }

            while (v18 != v6);
            v13 = a3[1];
            v10 = v19;
          }

          while (v13 != v10)
          {
            if (*(v13 - 1) < 0)
            {
              operator delete(*(v13 - 24));
            }

            v13 -= 32;
          }

          a3[1] = v10;
        }

        else
        {
          if (v13 == v10)
          {
            v14 = *v4;
          }

          else
          {
            v14 = v7 + v13 - v10;
            v15 = *v4;
            v16 = *a3;
            do
            {
              v17 = *v15;
              v15 += 8;
              *v16 = v17;
              v16 += 8;
              std::string::operator=((v10 + 8), (v7 + 2));
              v10 = v16;
              v7 = v15;
            }

            while (v15 != v14);
            v13 = a3[1];
          }

          a3[1] = sub_26225E1A0(a3, v14, v6, v13);
        }
      }

      v4 += 3;
      a3 += 3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void *sub_26225DF6C(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        sub_26225E160(a4, (v6 - *v5) >> 5);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_26225E02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  sub_26225D12C(&a15);
  sub_26225E0FC(&a9);
  _Unwind_Resume(a1);
}

void sub_26225E054(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_26225E0A4(a2);
  }

  sub_2621CBEB0();
}

void sub_26225E0A4(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2621C6A34();
}

uint64_t sub_26225E0FC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v3 -= 3;
      v5 = v3;
      sub_26225D12C(&v5);
    }
  }

  return a1;
}

void sub_26225E160(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_26225E2D0(a2);
  }

  sub_2621CBEB0();
}

uint64_t sub_26225E1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = (a2 + 8);
    do
    {
      v7 = v6 - 8;
      *v4 = *(v6 - 2);
      v8 = (v4 + 8);
      if (*(v6 + 23) < 0)
      {
        sub_2621CC810(v8, *v6, *(v6 + 1));
        v4 = v14;
      }

      else
      {
        v9 = *v6;
        *(v4 + 24) = *(v6 + 2);
        *v8 = v9;
      }

      v4 += 32;
      v14 = v4;
      v6 += 2;
    }

    while (v7 + 32 != a3);
  }

  v12 = 1;
  sub_26225E270(v11);
  return v4;
}

uint64_t sub_26225E270(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
      }

      v3 -= 32;
    }
  }

  return a1;
}

void sub_26225E2D0(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  sub_2621C6A34();
}

void *sub_26225E318(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((sub_26225E3EC(a3, v4 + 4) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((sub_26225E3EC(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t sub_26225E3A0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_26225CF9C(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_26225E3EC(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}

void *sub_26225E46C(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 2)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v10 = v8 >> 1;
      if (v8 >> 1 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v11 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_2621C8EEC(v7, v11);
    }

    sub_2621CBEB0();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 2)
  {
    v18 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v9[v18];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = v12;
    if (&__src[v13] != a3)
    {
      v15 = v12;
      do
      {
        v16 = *v14;
        v14 += 4;
        *v15 = v16;
        v15 += 4;
      }

      while (v14 != a3);
    }

    v17 = v15;
  }

  v7[1] = v17;
  return result;
}

void *sub_26225E59C(void **a1, _BYTE *a2, _BYTE *a3)
{
  a1[1] = 0;
  if ((a1[2] & 0x3FFFFFFFFFFFFFFLL) == 0)
  {
    v4 = *a1;
    if (*a1)
    {
      operator delete(v4);
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    operator new();
  }

  return sub_26225E638(a1, a2, a3, 2);
}

void *sub_26225E638(void *result, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = result[1];
  v5 = v4 + a4;
  result[1] = v4 + a4;
  if (v4)
  {
    v6 = v5 - 1;
    if (((v5 - 1) ^ (v4 - 1)) < 0x40)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = v5 - 1;
  }

  v7 = v6 >> 6;
  if (v5 >= 0x41)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  *(*result + 8 * v8) = 0;
LABEL_9:
  if (a2 != a3)
  {
    v9 = v4 & 0x3F;
    v10 = (*result + 8 * (v4 >> 6));
    do
    {
      v11 = 1 << v9;
      if (*a2 == 1)
      {
        v12 = *v10 | v11;
      }

      else
      {
        v12 = *v10 & ~v11;
      }

      *v10 = v12;
      ++a2;
      v10 += v9 == 63;
      if (v9 == 63)
      {
        v9 = 0;
      }

      else
      {
        ++v9;
      }
    }

    while (a2 != a3);
  }

  return result;
}

uint64_t *sub_26225E6DC(uint64_t a1, unsigned __int8 a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_26225E7AC(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = 1;
    do
    {
      if ((sub_26225E3EC(a2, v3 + 4) & 0x80) == 0)
      {
        if ((sub_26225E3EC(v3 + 4, a2) & 0x80) == 0)
        {
          return v4;
        }

        ++v3;
      }

      v3 = *v3;
    }

    while (v3);
  }

  return 0;
}

uint64_t sub_26225E814(uint64_t a1, void *a2)
{
  v2 = *sub_26225E318(a1, &v4, a2);
  if (!v2)
  {
    sub_2621C84A8("map::at:  key not found");
  }

  return v2 + 64;
}

uint64_t sub_26225E854(uint64_t a1, int a2, int a3)
{
  v3 = *sub_26225E930(a1, &v5, a2, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_26225E930(uint64_t a1, void *a2, int a3, int a4)
{
  v6 = *(a1 + 8);
  result = (a1 + 8);
  v5 = v6;
  if (v6)
  {
    while (1)
    {
      v7 = v5;
      v8 = *(v5 + 8);
      if (v8 == a3)
      {
        v9 = *(v7 + 9);
        v10 = v9 == a4;
        if (v9 <= a4)
        {
          if (v9 >= a4)
          {
            v11 = 1;
          }

          else
          {
            v11 = -1;
          }

          if (v10)
          {
            v11 = 0;
          }

          if ((v11 & 0x80) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_18;
        }

LABEL_12:
        v5 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v8 > a3)
        {
          goto LABEL_12;
        }

        if (v8 >= a3)
        {
          v12 = 1;
        }

        else
        {
          v12 = -1;
        }

        if ((v12 & 0x80) == 0)
        {
          goto LABEL_21;
        }

LABEL_18:
        result = v7 + 1;
        v5 = v7[1];
        if (!v5)
        {
          goto LABEL_21;
        }
      }
    }
  }

  v7 = result;
LABEL_21:
  *a2 = v7;
  return result;
}

uint64_t sub_26225E9A4(uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_26225E3EC((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (sub_26225E3EC(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t sub_26225EA24(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2874EE728;
  memcpy((a1 + 16), (a2 + 16), 0x1F9uLL);
  *(a1 + 528) = 0;
  *(a1 + 544) = 0;
  *(a1 + 536) = 0;
  v4 = *(a2 + 528);
  v5 = *(a2 + 536);
  if (v5 != v4)
  {
    sub_26225E054(a1 + 528, 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3));
  }

  sub_2621DDAB4((a1 + 552), a2 + 552);
  *(a1 + 576) = *(a2 + 576);
  if (*(a2 + 607) < 0)
  {
    sub_2621CC810((a1 + 584), *(a2 + 584), *(a2 + 592));
  }

  else
  {
    v6 = *(a2 + 584);
    *(a1 + 600) = *(a2 + 600);
    *(a1 + 584) = v6;
  }

  if (*(a2 + 631) < 0)
  {
    sub_2621CC810((a1 + 608), *(a2 + 608), *(a2 + 616));
  }

  else
  {
    v7 = *(a2 + 608);
    *(a1 + 624) = *(a2 + 624);
    *(a1 + 608) = v7;
  }

  v8 = *(a2 + 632);
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 632) = v8;
  *(a1 + 656) = 0;
  *(a1 + 672) = 0;
  *(a1 + 664) = 0;
  sub_2621C8E70(a1 + 656, *(a2 + 656), *(a2 + 664), (*(a2 + 664) - *(a2 + 656)) >> 2);
  *(a1 + 680) = *(a2 + 680);
  sub_2621DDAB4((a1 + 688), a2 + 688);
  *(a1 + 712) = *(a2 + 712);
  sub_2621DDAB4((a1 + 720), a2 + 720);
  return a1;
}

void sub_26225EBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (*(v9 + 607) < 0)
  {
    operator delete(*v11);
  }

  if (*v10)
  {
    operator delete(*v10);
  }

  sub_26225D098(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_26225EC78(uint64_t result, int a2, int a3)
{
  if (result)
  {
    v3 = result;
    result = 1;
    while (1)
    {
      v4 = *(v3 + 32);
      if (v4 == a2)
      {
        v5 = *(v3 + 36);
        v6 = v5 == a3;
        if (v5 <= a3)
        {
          if (v5 >= a3)
          {
            v7 = 1;
          }

          else
          {
            v7 = -1;
          }

          if (v6)
          {
            v7 = 0;
          }

          if ((v7 & 0x80) == 0)
          {
            return result;
          }

LABEL_17:
          v3 += 8;
        }
      }

      else if (v4 <= a2)
      {
        if (v4 >= a2)
        {
          v8 = 1;
        }

        else
        {
          v8 = -1;
        }

        if ((v8 & 0x80) == 0)
        {
          return result;
        }

        goto LABEL_17;
      }

      v3 = *v3;
      if (!v3)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_26225ECD4(uint64_t a1, uint64_t a2)
{
  v2 = *sub_26225EE54(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_26225EDD8(char *a1)
{
  if (a1)
  {
    sub_26225EDD8(*a1);
    sub_26225EDD8(*(a1 + 1));
    if (a1[119] < 0)
    {
      operator delete(*(a1 + 12));
    }

    if (a1[95] < 0)
    {
      operator delete(*(a1 + 9));
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t *sub_26225EE54(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = *(a3 + 24);
    do
    {
      while (1)
      {
        v8 = v4;
        v9 = sub_26225E3EC(a3, v4 + 4);
        if (!v9)
        {
          v10 = *(v8 + 14);
          v9 = v7 < v10 ? -1 : 1;
          if (v7 == v10)
          {
            break;
          }
        }

        if ((v9 & 0x80) == 0)
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_20;
        }
      }

      v11 = sub_26225E3EC(v8 + 4, a3);
      if (!v11)
      {
        v12 = *(v8 + 14);
        v11 = v12 < v7 ? -1 : 1;
        if (v12 == v7)
        {
          break;
        }
      }

      if ((v11 & 0x80) == 0)
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_20:
  *a2 = v8;
  return v5;
}

void sub_26225EF1C(char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 119) < 0)
    {
      operator delete(__p[12]);
    }

    if (*(__p + 95) < 0)
    {
      operator delete(__p[9]);
    }

    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_26225EF98(void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v6 = a1[1];
      v7 = v3;
      if (*a1 == v3)
      {
        goto LABEL_9;
      }

      v8 = a1[1];
      v9 = v3;
      if (v6)
      {
        do
        {
          v7 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v7 = v9[2];
          v10 = *v7 == v9;
          v9 = v7;
        }

        while (v10);
      }

      if ((sub_26225E3EC(v7 + 4, v5 + 4) & 0x80) != 0)
      {
LABEL_9:
        if (!v6)
        {
          v15 = v3;
LABEL_14:
          operator new();
        }

        v15 = v7;
        v11 = v7 + 1;
      }

      else
      {
        v11 = sub_26225E318(a1, &v15, v5 + 4);
      }

      if (!*v11)
      {
        goto LABEL_14;
      }

      v12 = v5[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v5[2];
          v10 = *v13 == v5;
          v5 = v13;
        }

        while (!v10);
      }

      v5 = v13;
    }

    while (v13 != v4);
  }

  return a1;
}

void sub_26225F140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_26225E3A0(&a9);
  sub_26225CF48(*v9);
  _Unwind_Resume(a1);
}

uint64_t sub_26225F17C(uint64_t a1, char a2, _OWORD *a3)
{
  v5 = a2;
  v3 = sub_26225F3EC(a1, a3);
  return sub_26225F4E8(v3, &v5);
}

void sub_26225F1B8(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2874EEC38;
  v3 = v1[16];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26225F1EC(uint64_t result, _OWORD *a2)
{
  *result = &unk_2874EEC38;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 88) = 0u;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 1;
  v3 = a2[1];
  v2 = a2[2];
  *(result + 8) = *a2;
  *(result + 40) = v2;
  *(result + 24) = v3;
  v5 = *(result + 8);
  v4 = *(result + 16);
  *(result + 56) = v4;
  *(result + 64) = 1;
  v6 = v5 * v4;
  *(result + 104) = v6;
  *(result + 112) = 0;
  if (v6)
  {
    operator new();
  }

  *(result + 137) = 1;
  return result;
}

void sub_26225F30C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 128);
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26225F328(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    v1 = result;
    result = *(result + 24);
    if (result)
    {
      result = MEMORY[0x266727400](result, 0x1000C8077774924);
      *(v1 + 24) = 0;
    }
  }

  return result;
}

void sub_26225F378(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2874EEC58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x266727420);
}

uint64_t sub_26225F3EC(uint64_t result, _OWORD *a2)
{
  *result = &unk_2874EEC38;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 88) = 0u;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 1;
  v3 = a2[1];
  v2 = a2[2];
  *(result + 8) = *a2;
  *(result + 40) = v2;
  *(result + 24) = v3;
  v5 = *(result + 8);
  v4 = *(result + 16);
  *(result + 56) = v4;
  *(result + 64) = 1;
  v6 = v5 * v4;
  *(result + 104) = v6;
  *(result + 112) = 0;
  if (v6)
  {
    sub_26225F984();
  }

  *(result + 137) = 1;
  return result;
}

void sub_26225F4D0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 128);
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26225F4E8(uint64_t a1, char *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  if (*(a1 + 137) == 1)
  {
    v4 = MEMORY[0x277D82670];
    v5 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v6 = sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v7 = sub_2621D552C(v6, " ", 1);
    v8 = MEMORY[0x266727260](v7, 664);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = sub_2621D552C(v9, "operator=", 9);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(v37, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(v37);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D5EE8("err", "scalar assign should create a storage first");
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v12 = std::locale::use_facet(v37, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(v37);
    std::ostream::put();
    std::ostream::flush();
  }

  v13 = *a2;
  memset(v37, 0, sizeof(v37));
  v14 = *(a1 + 104);
  v15 = *(a1 + 144);
  if (*(a1 + 136))
  {
    if (v14)
    {
      v16 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
      v17 = vdupq_n_s64(v14 - 1);
      v18 = xmmword_2623A7950;
      v19 = xmmword_2623A7960;
      v20 = xmmword_2623A7970;
      v21 = xmmword_2623A7980;
      v22 = xmmword_2623A77F0;
      v23 = xmmword_2623A7800;
      v24 = xmmword_2623A7630;
      v25 = xmmword_2623A7620;
      v26 = (v15 + 7);
      v27 = vdupq_n_s64(0x10uLL);
      do
      {
        v28 = vmovn_s64(vcgeq_u64(v17, v25));
        if (vuzp1_s8(vuzp1_s16(v28, *v17.i8), *v17.i8).u8[0])
        {
          *(v26 - 7) = v13;
        }

        if (vuzp1_s8(vuzp1_s16(v28, *&v17), *&v17).i8[1])
        {
          *(v26 - 6) = v13;
        }

        if (vuzp1_s8(vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, *&v24))), *&v17).i8[2])
        {
          *(v26 - 5) = v13;
          *(v26 - 4) = v13;
        }

        v29 = vmovn_s64(vcgeq_u64(v17, v23));
        if (vuzp1_s8(*&v17, vuzp1_s16(v29, *&v17)).i32[1])
        {
          *(v26 - 3) = v13;
        }

        if (vuzp1_s8(*&v17, vuzp1_s16(v29, *&v17)).i8[5])
        {
          *(v26 - 2) = v13;
        }

        if (vuzp1_s8(*&v17, vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, *&v22)))).i8[6])
        {
          *(v26 - 1) = v13;
          *v26 = v13;
        }

        v30 = vmovn_s64(vcgeq_u64(v17, v21));
        if (vuzp1_s8(vuzp1_s16(v30, *v17.i8), *v17.i8).u8[0])
        {
          v26[1] = v13;
        }

        if (vuzp1_s8(vuzp1_s16(v30, *&v17), *&v17).i8[1])
        {
          v26[2] = v13;
        }

        if (vuzp1_s8(vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, *&v20))), *&v17).i8[2])
        {
          v26[3] = v13;
          v26[4] = v13;
        }

        v31 = vmovn_s64(vcgeq_u64(v17, v19));
        if (vuzp1_s8(*&v17, vuzp1_s16(v31, *&v17)).i32[1])
        {
          v26[5] = v13;
        }

        if (vuzp1_s8(*&v17, vuzp1_s16(v31, *&v17)).i8[5])
        {
          v26[6] = v13;
        }

        if (vuzp1_s8(*&v17, vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, *&v18)))).i8[6])
        {
          v26[7] = v13;
          v26[8] = v13;
        }

        v23 = vaddq_s64(v23, v27);
        v24 = vaddq_s64(v24, v27);
        v25 = vaddq_s64(v25, v27);
        v22 = vaddq_s64(v22, v27);
        v21 = vaddq_s64(v21, v27);
        v20 = vaddq_s64(v20, v27);
        v19 = vaddq_s64(v19, v27);
        v26 += 16;
        v18 = vaddq_s64(v18, v27);
        v16 -= 16;
      }

      while (v16);
    }
  }

  else if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      v33 = 0;
      *(v15 + *(a1 + 64) * *(&v37[0] + 1) + *(a1 + 56) * *&v37[0]) = v13;
      do
      {
        v34 = *(v37 + v33 + 8) + 1;
        *(v37 + v33 + 8) = v34;
        if (v34 != *(a1 + 16 + v33))
        {
          break;
        }

        *(v37 + v33 + 8) = 0;
        v33 -= 8;
      }

      while (v33 != -16);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_26225FA1C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_26225FA34(void *a1, uint64_t a2, unsigned int a3, void *a4, void *a5, void *a6, char a7)
{
  v801 = *MEMORY[0x277D85DE8];
  v738 = a3;
  v9 = a4;
  v10 = a5;
  v700 = v9;
  objc_msgSend_referenceOriginTransform(v9, v11, v12);
  v803 = __invert_f4(v802);
  v15 = 0;
  v771[0] = v803;
  do
  {
    *(&v787[0].data + v15 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_2623A7990, COERCE_FLOAT(*&v771[0].columns[v15])), xmmword_2623A7700, *v771[0].columns[v15].f32, 1), xmmword_2623A79A0, v771[0].columns[v15], 2), xmmword_2623A7810, v771[0].columns[v15], 3);
    ++v15;
  }

  while (v15 != 4);
  v710 = *&v787[0].width;
  v714 = *&v787[0].data;
  v705 = *&v787[1].width;
  v709 = *&v787[1].data;
  v16 = objc_msgSend_camera(v9, v13, v14);
  objc_msgSend_transform(v16, v17, v18);
  v19 = 0;
  v771[0].columns[0] = v20;
  v771[0].columns[1] = v21;
  v771[0].columns[2] = v22;
  v771[0].columns[3] = v23;
  do
  {
    *(&v787[0].data + v19 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v714, COERCE_FLOAT(*&v771[0].columns[v19])), v710, *v771[0].columns[v19].f32, 1), v709, v771[0].columns[v19], 2), v705, v771[0].columns[v19], 3);
    ++v19;
  }

  while (v19 != 4);
  v24 = 0;
  v25 = *&v787[0].data;
  v26 = *&v787[0].width;
  v27 = *&v787[1].data;
  v28 = *&v787[1].width;
  v771[0].columns[0] = xmmword_2623A78C0;
  v771[0].columns[1] = xmmword_2623A7990;
  v771[0].columns[2] = xmmword_2623A79B0;
  v771[0].columns[3] = xmmword_2623A7810;
  do
  {
    *(&v787[0].data + v24 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, COERCE_FLOAT(*&v771[0].columns[v24])), v26, *v771[0].columns[v24].f32, 1), v27, v771[0].columns[v24], 2), v28, v771[0].columns[v24], 3);
    ++v24;
  }

  while (v24 != 4);
  v736 = v787[0];
  v737 = v787[1];

  v734 = 0u;
  v735 = 0u;
  v733 = 0u;
  v31 = objc_msgSend_camera(v700, v29, v30);
  objc_msgSend_intrinsics(v31, v32, v33);
  DWORD2(v733) = v34;
  DWORD2(v734) = v35;
  *&v733 = v36;
  *&v734 = v37;
  DWORD2(v735) = v38;
  *&v735 = v39;

  v40 = v10;
  v732[0] = 0;
  v732[1] = 0;
  v731 = v732;
  v715 = a2;
  v701 = v40;
  if (a3)
  {
    if (objc_msgSend_count(v40, v41, v42))
    {
      v44 = objc_msgSend_objectAtIndexedSubscript_(v701, v43, 0);
      v47 = objc_msgSend_identifier(v44, v45, v46);
      v50 = objc_msgSend_UUIDString(v47, v48, v49);
      v51 = v50;
      v54 = objc_msgSend_UTF8String(v50, v52, v53);
      sub_2621D0F64(&v777, v54);

      sub_2621D0F64(__p, "");
      v57 = objc_msgSend_parentIdentifier(v44, v55, v56);
      LOBYTE(v50) = v57 == 0;

      if ((v50 & 1) == 0)
      {
        v60 = objc_msgSend_parentIdentifier(v44, v58, v59);
        v63 = objc_msgSend_UUIDString(v60, v61, v62);
        v64 = v63;
        v67 = objc_msgSend_UTF8String(v63, v65, v66);
        sub_2621D0F64(v787, v67);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = *&v787[0].data;
        __p[2] = v787[0].width;
        HIBYTE(v787[0].width) = 0;
        LOBYTE(v787[0].data) = 0;
      }

      objc_msgSend_quad(v44, v58, v59);
      v771[0].columns[0].i32[2] = v68;
      v771[0].columns[1].i32[2] = v69;
      v771[0].columns[0].i64[0] = v70;
      v771[0].columns[1].i64[0] = v71;
      v771[0].columns[2].i32[2] = v72;
      v771[0].columns[3].i32[2] = v73;
      v771[0].columns[2].i64[0] = v74;
      v771[0].columns[3].i64[0] = v75;
      sub_26225D2CC((*(a2 + 120) + 152), a3);
      LOWORD(v795[0].__locale_) = -1;
      v742 = 0;
      v743 = 0uLL;
      sub_26225D384();
    }

    goto LABEL_139;
  }

  v779 = 0u;
  *v780 = 0u;
  v777 = 0u;
  v778 = 0u;
  obj = v40;
  if (objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v76, &v777, v771, 16))
  {
    *v778;
    *v778;
    v79 = **(&v777 + 1);
    v80 = objc_msgSend_identifier(**(&v777 + 1), v77, v78);
    v83 = objc_msgSend_UUIDString(v80, v81, v82);
    v84 = v83;
    v87 = objc_msgSend_UTF8String(v83, v85, v86);
    sub_2621D0F64(&v742, v87);

    objc_msgSend_quad(v79, v88, v89);
    LODWORD(__p[1]) = v90;
    LODWORD(v755) = v91;
    __p[0] = v92;
    __p[2] = v93;
    LODWORD(v756) = v94;
    LODWORD(v757) = v95;
    *(&v755 + 1) = v96;
    *(&v756 + 1) = v97;
    sub_26225D2CC((*(v715 + 120) + 152), 0);
    v769 = objc_msgSend_edgeStates(v79, v98, v99) >> 24;
    v770 = objc_msgSend_edgeStates(v79, v100, v101) >> 8;
    __dst[1] = 0;
    *&v740 = 0;
    __dst[0] = 0;
    sub_26225D384();
  }

  v104 = v731;
  if (v731 != v732)
  {
    do
    {
      if (*(v104 + 55) < 0)
      {
        v105 = v104;
        sub_2621CC810(__dst, v104[4], v104[5]);
      }

      else
      {
        *__dst = *(v104 + 2);
        v105 = v104;
        *&v740 = v104[6];
      }

      v106 = v731;
      obja = BYTE7(v740);
      if (v731 != v732)
      {
        v107 = *(v715 + 20);
        if ((SBYTE7(v740) & 0x80u) == 0)
        {
          v108 = BYTE7(v740);
        }

        else
        {
          v108 = __dst[1];
        }

        if ((SBYTE7(v740) & 0x80u) == 0)
        {
          v109 = __dst;
        }

        else
        {
          v109 = __dst[0];
        }

        do
        {
          v110 = (v106 + 4);
          v111 = *(v106 + 55);
          v112 = v111;
          v31 = v106[5];
          if (v111 < 0)
          {
            v111 = v106[5];
          }

          if (v111 != v108 || ((v113 = *v110, v112 >= 0) ? (v114 = v106 + 4) : (v114 = *v110), memcmp(v114, v109, v108)))
          {
            v115 = v105[33];
            v116 = vsub_f32(v115, v106[33]);
            if (sqrtf(vaddv_f32(vmul_f32(v116, v116))) < v107)
            {
              v117 = v105[74];
              LODWORD(v787[0].data) = 0;
              if (v112 < 0)
              {
                sub_2621CC810(&v787[0].height, *v110, v31);
              }

              else
              {
                *&v787[0].height = *v110;
                v787[0].rowBytes = v106[6];
              }

              sub_2622E8724(v117, v787);
              if (SHIBYTE(v787[0].rowBytes) < 0)
              {
                operator delete(v787[0].height);
              }

              v115 = v105[33];
            }

            v118 = vsub_f32(v115, v106[34]);
            if (sqrtf(vaddv_f32(vmul_f32(v118, v118))) < v107)
            {
              v31 = v105[74];
              LODWORD(v787[0].data) = 1;
              if (*(v106 + 55) < 0)
              {
                sub_2621CC810(&v787[0].height, v106[4], v106[5]);
              }

              else
              {
                *&v787[0].height = *v110;
                v787[0].rowBytes = v106[6];
              }

              sub_2622E8724(v31, v787);
              if (SHIBYTE(v787[0].rowBytes) < 0)
              {
                operator delete(v787[0].height);
              }
            }

            v119 = v105[34];
            v120 = vsub_f32(v119, v106[33]);
            if (sqrtf(vaddv_f32(vmul_f32(v120, v120))) < v107)
            {
              v31 = v105[74];
              LODWORD(v787[0].data) = 0;
              if (*(v106 + 55) < 0)
              {
                sub_2621CC810(&v787[0].height, v106[4], v106[5]);
              }

              else
              {
                *&v787[0].height = *v110;
                v787[0].rowBytes = v106[6];
              }

              sub_2622E8724(v31 + 24, v787);
              if (SHIBYTE(v787[0].rowBytes) < 0)
              {
                operator delete(v787[0].height);
              }

              v119 = v105[34];
            }

            v121 = vsub_f32(v119, v106[34]);
            if (sqrtf(vaddv_f32(vmul_f32(v121, v121))) < v107)
            {
              v31 = v105[74];
              LODWORD(v787[0].data) = 1;
              if (*(v106 + 55) < 0)
              {
                sub_2621CC810(&v787[0].height, v106[4], v106[5]);
              }

              else
              {
                *&v787[0].height = *v110;
                v787[0].rowBytes = v106[6];
              }

              sub_2622E8724(v31 + 24, v787);
              if (SHIBYTE(v787[0].rowBytes) < 0)
              {
                operator delete(v787[0].height);
              }
            }
          }

          v122 = v106[1];
          if (v122)
          {
            do
            {
              v123 = v122;
              v122 = *v122;
            }

            while (v122);
          }

          else
          {
            do
            {
              v123 = v106[2];
              v161 = *v123 == v106;
              v106 = v123;
            }

            while (!v161);
          }

          v106 = v123;
        }

        while (v123 != v732);
      }

      if (obja < 0)
      {
        operator delete(__dst[0]);
      }

      v124 = v105[1];
      if (v124)
      {
        do
        {
          v125 = v124;
          v124 = *v124;
        }

        while (v124);
      }

      else
      {
        do
        {
          v125 = v105[2];
          v161 = *v125 == v105;
          v105 = v125;
        }

        while (!v161);
      }

      v104 = v125;
    }

    while (v125 != v732);
    v104 = v731;
  }

  if (v104 != v732)
  {
    v126 = 0x572620AE4C415CLL;
    v127 = 0x51B3BEA3677D46CFLL;
    while (1)
    {
      v787[0].data = 0x100000000;
      memset(__p, 0, sizeof(__p));
      sub_2621DD5D0(__p, v787, &v787[0].height, 2uLL);
      v31 = __p[0];
      v703 = __p[1];
      v706 = v104;
      if (__p[0] == __p[1])
      {
        goto LABEL_117;
      }

      do
      {
        v743 = 0uLL;
        v742 = 0;
        v711 = v31;
        v128 = &v104[74][3 * *v31];
        v130 = *v128;
        v129 = v128[1];
        v716 = v129;
        if (*v128 == v129)
        {
          v150 = 0;
          v133 = 0;
          v153 = 1;
          v104 = v706;
        }

        else
        {
          do
          {
            v787[0].data = (v130 + 8);
            v131 = sub_26225D91C(&v731, (v130 + 8));
            v132 = v743;
            if (v743 >= *(&v743 + 1))
            {
              v134 = ((v743 - v742) >> 4) * v127;
              v135 = v134 + 1;
              if (v134 + 1 > v126)
              {
                sub_2621CBEB0();
              }

              v136 = ((*(&v743 + 1) - v742) >> 4) * v127;
              if (2 * v136 > v135)
              {
                v135 = 2 * v136;
              }

              if (v136 >= 0x2B9310572620AELL)
              {
                v137 = v126;
              }

              else
              {
                v137 = v135;
              }

              v787[1].data = &v742;
              if (v137)
              {
                if (v137 <= v126)
                {
                  operator new();
                }

                sub_2621C6A34();
              }

              v787[0].data = 0;
              v787[0].height = 752 * v134;
              v787[0].width = 752 * v134;
              v787[0].rowBytes = 0;
              sub_26225EA24(752 * v134, v131 + 64);
              v138 = v743;
              v139 = v742;
              v140 = (v787[0].height - (v743 - v742));
              v787[0].width += 752;
              if (v743 != v742)
              {
                v141 = v127;
                v142 = v126;
                v143 = 0;
                v144 = v787[0].height - 16 * ((v743 - v742) >> 4) - 752;
                v145 = v742;
                v146 = v787[0].height - (v743 - v742);
                do
                {
                  sub_26225EA24(v146, v145);
                  v145 += 752;
                  v146 += 752;
                  v143 -= 752;
                  v144 += 752;
                }

                while (v145 != v138);
                v147 = v139;
                v126 = v142;
                v127 = v141;
                v129 = v716;
                do
                {
                  (**v139)(v139);
                  v139 += 752;
                  v147 += 752;
                }

                while (v139 != v138);
              }

              v148 = v742;
              v149 = *(&v743 + 1);
              v742 = v140;
              objf = v787[0].width;
              v743 = *&v787[0].width;
              v787[0].width = v148;
              v787[0].rowBytes = v149;
              v787[0].height = v148;
              v787[0].data = v148;
              sub_2622E89E8(v787);
              v133 = objf;
            }

            else
            {
              sub_26225EA24(v743, v131 + 64);
              v133 = (v132 + 752);
            }

            *&v743 = v133;
            v130 += 32;
          }

          while (v130 != v129);
          v150 = v742;
          v151 = v742;
          v104 = v706;
          v31 = v711;
          if (v742 != v133)
          {
            while (1)
            {
              v152 = vsub_f32(v151[25], v151[26]);
              if (sqrtf(vaddv_f32(vmul_f32(v152, v152))) <= 0.5)
              {
                break;
              }

              v151 += 94;
              if (v151 == v133)
              {
                v153 = 0;
                goto LABEL_103;
              }
            }

            v158 = *v711;
            v155 = v158 >> 6;
            v156 = 1 << v158;
            v706[77][v155] |= v156;
            goto LABEL_106;
          }

          v153 = 1;
        }

LABEL_103:
        v154 = *v31;
        v155 = v154 >> 6;
        v156 = 1 << v154;
        v104[77][v155] &= ~v156;
        if (v153)
        {
          v157 = &v104[94][v155];
LABEL_113:
          v162 = *v157 & ~v156;
          goto LABEL_115;
        }

LABEL_106:
        v159 = v150 + 752;
        do
        {
          v160 = *(v159 - 72);
          v161 = v160 != 1 || v159 == v133;
          v159 += 752;
        }

        while (!v161);
        v157 = &v104[94][v155];
        if (v160)
        {
          goto LABEL_113;
        }

        v162 = *v157 | v156;
LABEL_115:
        *v157 = v162;
        v787[0].data = &v742;
        sub_2622E8928(v787);
        v31 += 4;
      }

      while (v31 != v703);
      v31 = __p[0];
LABEL_117:
      if (v31)
      {
        operator delete(v31);
      }

      v163 = v104[1];
      if (v163)
      {
        do
        {
          v164 = v163;
          v163 = *v163;
        }

        while (v163);
      }

      else
      {
        do
        {
          v164 = v104[2];
          v161 = *v164 == v104;
          v104 = v164;
        }

        while (!v161);
      }

      v104 = v164;
      if (v164 == v732)
      {
        v104 = v731;
        break;
      }
    }
  }

  if (v104 != v732)
  {
    v165 = v104[35];
    v166 = vmla_f32(v104[33], vdup_n_s32(0xBE4CCCCD), v165);
    v167 = vmla_f32(v104[34], vdup_n_s32(0x3E4CCCCDu), v165);
    sub_2621CBF10(1uLL);
  }

  HIDWORD(v168) = 0;
  v787[0].data = v737.width;
  v169 = *a6;
  v170 = a6[1];
  if (*a6 != v170)
  {
    v787[0].width = 0;
    v787[0].height = 0;
    v787[0].data = &v787[0].height;
    do
    {
      v171 = v169[1];
      LODWORD(v102) = llround(COERCE_FLOAT(*v169) / 0.2);
      LODWORD(v103) = llround(COERCE_FLOAT(HIDWORD(*v169)) / 0.2);
      __p[0] = (v102 | (v103 << 32));
      LODWORD(v31) = llround(*&v171 / 0.2);
      LODWORD(v168) = llround(*(&v171 + 1) / 0.2);
      v742 = (v31 | (v168 << 32));
      sub_2622E8B7C(v787, v102, v103);
      sub_2622E8B7C(v787, v31, v168);
      v169 += 4;
    }

    while (v169 != v170);
    v172 = v731;
    height = v787[0].height;
    if (v731 != v732)
    {
      do
      {
        v174 = llround(COERCE_FLOAT(v172[34]) / 0.2);
        v175 = llround(COERCE_FLOAT(HIDWORD(v172[34])) / 0.2);
        v176 = sub_2622E8C74(height, llround(COERCE_FLOAT(v172[33]) / 0.2), llround(COERCE_FLOAT(HIDWORD(v172[33])) / 0.2));
        v177 = v172[98];
        v178 = *v177 & 0xFFFFFFFFFFFFFFFELL | v176;
        *v177 = v178;
        *v177 = v178 & 0xFFFFFFFFFFFFFFFDLL | (2 * (sub_2622E8C74(height, v174, v175) != 0));
        v179 = v172[1];
        if (v179)
        {
          do
          {
            v180 = v179;
            v179 = *v179;
          }

          while (v179);
        }

        else
        {
          do
          {
            v180 = v172[2];
            v161 = *v180 == v172;
            v172 = v180;
          }

          while (!v161);
        }

        v172 = v180;
      }

      while (v180 != v732);
    }

    sub_2621C6C04(height);
  }

LABEL_139:

  v181 = a3;
  LOBYTE(v777) = a3;
  v182 = v715;
  if (!a3)
  {
    v787[0].width = 0;
    v787[0].height = 0;
    v787[0].data = &v787[0].height;
    v771[0].columns[0].i64[0] = &v777;
    v183 = sub_26225E6DC(v715 + 128, 0);
    v184 = v183[5];
    v185 = v183 + 6;
    if (v184 != v183 + 6)
    {
      do
      {
        if (sub_26225E7AC(v732[0], v184 + 6))
        {
          v186 = sub_26225E814(&v731, v184 + 6);
          v187 = *(v184 + 24) ? 432 : 408;
          if (*(v186 + v187 + 16) == 1 && ((*(*(sub_26225E814(&v731, v184 + 6) + 552) + ((*(v184 + 24) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(v184 + 24)) & 1) == 0)
          {
            v771[0].columns[0].i64[0] = (v184 + 4);
            v188 = sub_26225E854(v787, *(v184 + 8), *(v184 + 9));
            *(v188 + 40) = v184[5];
            std::string::operator=((v188 + 48), v184 + 2);
            std::string::operator=((v188 + 72), v184 + 3);
            v189 = *(v184 + 6);
            *(v188 + 112) = v184[14];
            *(v188 + 96) = v189;
          }
        }

        v190 = v184[1];
        if (v190)
        {
          do
          {
            v191 = v190;
            v190 = *v190;
          }

          while (v190);
        }

        else
        {
          do
          {
            v191 = v184[2];
            v161 = *v191 == v184;
            v184 = v191;
          }

          while (!v161);
        }

        v184 = v191;
      }

      while (v191 != v185);
    }

    v771[0].columns[0].i64[0] = &v777;
    v192 = sub_26225E6DC(v715 + 128, v777);
    v193 = v192[7];
    v194 = *&v787[0].height;
    v195 = v192 + 5;
    v196 = *(v192 + 5);
    v192[5] = v787[0].data;
    *(v192 + 3) = v194;
    v197 = v192 + 6;
    *&v787[0].data = v196;
    v787[0].width = v193;
    if (*(&v194 + 1))
    {
      v198 = (v194 + 16);
    }

    else
    {
      v198 = v195;
    }

    *v198 = v197;
    v199 = v787[0].height;
    v200 = (v787[0].height + 16);
    if (!v193)
    {
      v200 = v787;
    }

    v200->data = &v787[0].height;
    sub_26225CE9C(v199);
    v181 = 0;
  }

  v717 = v181 - 1;
  if ((v181 - 1) > 1u)
  {
LABEL_228:
    v729 = 0;
    v730 = 0;
    v728 = &v729;
    v204 = v731;
    if (a3)
    {
      goto LABEL_229;
    }

    if (v731 == v732)
    {
LABEL_613:
      v655 = *(v182 + 136);
      if (!v655)
      {
LABEL_619:
        operator new();
      }

      while (1)
      {
        v656 = v655;
        if (!*(v655 + 32))
        {
          break;
        }

        v655 = *v655;
        if (!*v656)
        {
          goto LABEL_619;
        }
      }

      if (!v730)
      {
        goto LABEL_578;
      }

      v659 = v728;
      if (v728 == &v729)
      {
        goto LABEL_578;
      }

      while (1)
      {
        v660 = *(v659 + 8);
        v661 = (v659 + 6);
        v662 = v659 + 12;
        v663 = *(v659 + 24);
        v664 = *(v659 + 25);
        v665 = *(v659 + 27);
        v666 = *(v659 + 9);
        if (sub_26225EC78(v656[6], v660, v666))
        {
          v667 = v663;
          obje = (v659 + 6);
          v668 = *sub_26225E930((v656 + 5), v787, v660, v666);
          if (!v668)
          {
            sub_2621C84A8("map::at:  key not found");
          }

          v669 = (v668 + 48);
          v670 = *(v668 + 71);
          v671 = v670;
          v672 = *(v668 + 56);
          if ((v670 & 0x80u) == 0)
          {
            v673 = *(v668 + 71);
          }

          else
          {
            v673 = *(v668 + 56);
          }

          v674 = *(v659 + 71);
          v675 = v674;
          v676 = v659[7];
          if ((v674 & 0x80u) == 0)
          {
            v677 = *(v659 + 71);
          }

          else
          {
            v677 = v659[7];
          }

          if (v673 == v677)
          {
            v708 = *(v668 + 56);
            v678 = *(v668 + 100);
            v679 = *(v668 + 108);
            v704 = *(v668 + 96);
            if ((v670 & 0x80u) == 0)
            {
              v680 = (v668 + 48);
            }

            else
            {
              v680 = *(v668 + 48);
            }

            v681 = obje->__r_.__value_.__r.__words[0];
            if ((v674 & 0x80u) == 0)
            {
              v682 = v659 + 6;
            }

            else
            {
              v682 = obje->__r_.__value_.__r.__words[0];
            }

            if (!memcmp(v680, v682, v673) && v704 == v667)
            {
              v685 = (v664 - v678) <= 0.05 && (v665 - v679) <= 5.0;
              v669 = (v668 + 48);
              v672 = v708;
              if (!v685)
              {
                v787[0].data = v659 + 4;
                v686 = sub_26225E854((v656 + 5), *(v659 + 8), *(v659 + 9));
                *(v686 + 40) = v659[5];
                std::string::operator=((v686 + 48), obje);
                std::string::operator=((v686 + 72), v659 + 3);
                v687 = *(v659 + 6);
                *(v686 + 112) = v659[14];
                *(v686 + 96) = v687;
                v670 = *(v668 + 71);
                v672 = *(v668 + 56);
                v674 = *(v659 + 71);
                v676 = v659[7];
                v675 = *(v659 + 71);
                v671 = *(v668 + 71);
                v669 = (v668 + 48);
              }
            }

            else
            {
              v669 = (v668 + 48);
              v672 = v708;
            }
          }

          if (v671 >= 0)
          {
            v688 = v670;
          }

          else
          {
            v688 = v672;
          }

          if (v675 >= 0)
          {
            v689 = v674;
          }

          else
          {
            v689 = v676;
          }

          v182 = v715;
          v661 = (v659 + 6);
          if (v688 == v689)
          {
            v690 = v671 >= 0 ? v669 : *v669;
            v691 = obje->__r_.__value_.__r.__words[0];
            v692 = v675 >= 0 ? v659 + 6 : obje->__r_.__value_.__r.__words[0];
            if (!memcmp(v690, v692, v688))
            {
              goto LABEL_664;
            }
          }

          v787[0].data = v659 + 4;
          v684 = sub_26225E854((v656 + 5), *(v659 + 8), *(v659 + 9));
          v662 = v659 + 12;
        }

        else
        {
          v787[0].data = v659 + 4;
          v684 = sub_26225E854((v656 + 5), v660, *(v659 + 9));
        }

        v693 = v684;
        v684[1].__r_.__value_.__r.__words[2] = v659[5];
        std::string::operator=(v684 + 2, v661);
        std::string::operator=(v693 + 3, v659 + 3);
        v694 = *v662;
        v693[4].__r_.__value_.__r.__words[2] = v662[2];
        *&v693[4].__r_.__value_.__l.__data_ = v694;
LABEL_664:
        v695 = v659[1];
        if (v695)
        {
          do
          {
            v696 = v695;
            v695 = *v695;
          }

          while (v695);
        }

        else
        {
          do
          {
            v696 = v659[2];
            v161 = *v696 == v659;
            v659 = v696;
          }

          while (!v161);
        }

        v659 = v696;
        if (v696 == &v729)
        {
          goto LABEL_578;
        }
      }
    }

    v244 = *(v182 + 120);
    while (1)
    {
      if ((v204[61].i8[0] & 1) != 0 || v204[64].i8[0] == 1)
      {
        v245 = vsub_f32(v204[33], v204[34]);
        if (sqrtf(vaddv_f32(vmul_f32(v245, v245))) > *(v244 + 20) && v204[93].i8[0] == 1)
        {
          break;
        }
      }

LABEL_264:
      v251 = v204[1];
      if (v251)
      {
        do
        {
          v252 = v251;
          v251 = *v251;
        }

        while (v251);
      }

      else
      {
        do
        {
          v252 = v204[2];
          v161 = *v252 == v204;
          v204 = v252;
        }

        while (!v161);
      }

      v204 = v252;
      if (v252 == v732)
      {
        goto LABEL_478;
      }
    }

    v771[0].columns[0].i64[0] = 0x100000000;
    memset(v787, 0, 24);
    sub_2621DD5D0(v787, v771, &v771[0].columns[0].i64[1], 2uLL);
    data = v787[0].data;
    v247 = v787[0].height;
    if (v787[0].data == v787[0].height)
    {
      v250 = 1;
      if (v787[0].data)
      {
LABEL_262:
        operator delete(data);
      }
    }

    else
    {
      v248 = v787[0].data + 4;
      do
      {
        v249 = sub_2622CFE08(v244, &v204[8], *(v248 - 1));
        if (v249)
        {
          break;
        }

        v161 = v248 == v247;
        v248 += 4;
      }

      while (!v161);
      v250 = !v249;
      if (data)
      {
        goto LABEL_262;
      }
    }

    if (!v250)
    {
      goto LABEL_273;
    }

    goto LABEL_264;
  }

  v201 = *(v715 + 160);
  if (v201)
  {
    v202 = *(v715 + 160);
    while (1)
    {
      v203 = *(v202 + 32);
      if (v203 <= a3)
      {
        if (v203 >= a3)
        {
          if (a7)
          {
            goto LABEL_228;
          }

          LOBYTE(__p[0]) = a3;
          while (1)
          {
            v205 = *(v201 + 32);
            if (v205 <= a3)
            {
              if (v205 >= a3)
              {
                v206 = v731;
                if (v731 != v732)
                {
                  do
                  {
                    v787[0].data = __p;
                    v207 = sub_26225E6DC(v182 + 152, __p[0]);
                    v208 = sub_26225E9A4((v207 + 5), v206 + 4);
                    v787[0].data = __p;
                    if (sub_26225E6DC(v182 + 152, __p[0]) + 6 != v208)
                    {
                      if (*(v208 + 695) < 0)
                      {
                        sub_2621CC810(&v777, *(v208 + 672), *(v208 + 680));
                      }

                      else
                      {
                        v777 = *(v208 + 672);
                        *&v778 = *(v208 + 688);
                      }

                      v210 = *(v208 + 80);
                      v211 = *(v208 + 112);
                      v212 = *(v208 + 260);
                      objb = *(v208 + 256);
                      if (LOBYTE(__p[0]) == 2)
                      {
                        v209.i32[0] = *(v206 + 65);
                        if (vabds_f32(*v209.i32, v212) > 0.1)
                        {
                          v712 = v209;
                          v787[0].data = __p;
                          v213 = sub_26225E6DC(v182 + 128, 2u);
                          v214 = v213[5];
                          v215 = v213 + 6;
                          v216 = *v712.i32;
                          if (v214 != v213 + 6)
                          {
                            v217 = vdup_lane_s32(v712, 0);
                            do
                            {
                              if (*(v214 + 71) < 0)
                              {
                                sub_2621CC810(v787, v214[6], v214[7]);
                              }

                              else
                              {
                                *&v787[0].data = *(v214 + 3);
                                v787[0].width = v214[8];
                              }

                              v218 = *(v206 + 55);
                              if (v218 >= 0)
                              {
                                v219 = *(v206 + 55);
                              }

                              else
                              {
                                v219 = v206[5];
                              }

                              width_high = HIBYTE(v787[0].width);
                              v221 = SHIBYTE(v787[0].width);
                              if ((v787[0].width & 0x8000000000000000) != 0)
                              {
                                width_high = v787[0].height;
                              }

                              if (v219 == width_high)
                              {
                                v222 = *(v214 + 24);
                                v223 = v218 >= 0 ? v206 + 4 : v206[4];
                                v224 = (v787[0].width & 0x8000000000000000) == 0 ? v787 : v787[0].data;
                                v225 = !memcmp(v223, v224, v219) && v222 == 3;
                                v182 = v715;
                                if (v225)
                                {
                                  v214[14] = v217;
                                  *(v214 + 25) = 0;
                                }
                              }

                              if (v221 < 0)
                              {
                                operator delete(v787[0].data);
                              }

                              v226 = v214[1];
                              if (v226)
                              {
                                do
                                {
                                  v227 = v226;
                                  v226 = *v226;
                                }

                                while (v226);
                              }

                              else
                              {
                                do
                                {
                                  v227 = v214[2];
                                  v161 = *v227 == v214;
                                  v214 = v227;
                                }

                                while (!v161);
                              }

                              v214 = v227;
                            }

                            while (v227 != v215);
                            v216 = *v712.i32;
                          }

                          v212 = v216;
                        }
                      }

                      v713 = LODWORD(v212);
                      v771[0].columns[0].i8[0] = 0;
                      v787[0].data = v771;
                      v228 = sub_26225E6DC(v182 + 152, 0);
                      v229 = sub_26225E9A4((v228 + 5), &v777);
                      v771[0].columns[0].i8[0] = 0;
                      v787[0].data = v771;
                      if (sub_26225E6DC(v182 + 152, 0) + 6 != v229)
                      {
                        sub_26225EA24(v787, (v229 + 8));
                        v232 = vsub_f32(*&v793, *(&v792 + 8));
                        v233 = vaddv_f32(vmul_f32(vsub_f32(v210, *(&v792 + 8)), v232));
                        v234 = vaddv_f32(vmul_f32(v232, v232));
                        if (v234 < 0.000001)
                        {
                          v234 = 0.000001;
                        }

                        *v231.f32 = vmla_n_f32(*(&v792 + 8), v232, v233 / v234);
                        v235 = vaddv_f32(vmul_f32(vsub_f32(v211, *(&v792 + 8)), v232)) / v234;
                        v236 = v231;
                        v236.i32[2] = objb;
                        *v230.f32 = vmla_n_f32(*(&v792 + 8), v232, v235);
                        v237 = v230;
                        v237.i32[2] = objb;
                        v771[0].columns[0] = v236;
                        v771[0].columns[1] = v237;
                        v230.i32[2] = v713;
                        v231.i32[2] = v713;
                        v771[0].columns[2] = v230;
                        v771[0].columns[3] = v231;
                        sub_2622E82B0((v206 + 8), v771);
                        sub_2622E82B0(v208 + 64, v771);
                        sub_26225CFEC(v787);
                      }

                      if (SBYTE7(v778) < 0)
                      {
                        operator delete(v777);
                      }
                    }

                    v238 = v206[1];
                    if (v238)
                    {
                      do
                      {
                        v239 = v238;
                        v238 = *v238;
                      }

                      while (v238);
                    }

                    else
                    {
                      do
                      {
                        v239 = v206[2];
                        v161 = *v239 == v206;
                        v206 = v239;
                      }

                      while (!v161);
                    }

                    v206 = v239;
                  }

                  while (v239 != v732);
                }

                goto LABEL_228;
              }

              ++v201;
            }

            v201 = *v201;
            if (!v201)
            {
              goto LABEL_228;
            }
          }
        }

        ++v202;
      }

      v202 = *v202;
      if (!v202)
      {
        goto LABEL_228;
      }
    }
  }

  v729 = 0;
  v730 = 0;
  v728 = &v729;
  v204 = v731;
LABEL_229:
  if (v204 == v732)
  {
    goto LABEL_478;
  }

  v240 = *(v182 + 120);
  while (1)
  {
    if ((v204[61].i8[0] & 1) != 0 || (v204[64].i8[0] & 1) != 0 || (v204[70].i8[0] & 1) != 0 || v204[73].i8[0] == 1)
    {
      v241 = vsub_f32(v204[33], v204[34]);
      if (sqrtf(vaddv_f32(vmul_f32(v241, v241))) > *(v240 + 72) && (v204[61].i8[0] && v204[88].f32[1] > *(v240 + 76) || v204[64].i8[0] == 1 && v204[89].f32[0] > *(v240 + 76) || a3 == 1 && (v204[70].i8[0] & 1) != 0 || (v204[73].i8[0] & 1) != 0))
      {
        break;
      }
    }

    v242 = v204[1];
    if (v242)
    {
      do
      {
        v243 = v242;
        v242 = *v242;
      }

      while (v242);
    }

    else
    {
      do
      {
        v243 = v204[2];
        v161 = *v243 == v204;
        v204 = v243;
      }

      while (!v161);
    }

    v204 = v243;
    if (v243 == v732)
    {
      goto LABEL_478;
    }
  }

LABEL_273:
  v253 = v700;
  if (!*(v182 + 216))
  {
    v254 = objc_alloc_init(RSSemanticSegmentation);
    v255 = *(v182 + 216);
    *(v182 + 216) = v254;

    v182 = v715;
  }

  if (*(v182 + 208))
  {

    v182 = v715;
    goto LABEL_277;
  }

  v264 = *(v182 + 216);
  v265 = v253;
  v266 = v265;
  if (!v264)
  {
    goto LABEL_312;
  }

  v267 = v265;
  v270 = v267;
  if ((*(v264 + 96) & 1) == 0)
  {
    v271 = objc_msgSend_colorBuffer(v267, v268, v269);
    PixelFormatType = CVPixelBufferGetPixelFormatType(v271);
    v275 = objc_msgSend_colorBuffer(v270, v273, v274);
    Width = CVPixelBufferGetWidth(v275);
    v279 = objc_msgSend_colorBuffer(v270, v277, v278);
    v280 = CVPixelBufferGetHeight(v279);
    v281 = sub_2623091D4([RSCVPixelRotate alloc], v280, Width, 90, PixelFormatType);
    v282 = *(v264 + 8);
    *(v264 + 8) = v281;

    v283 = sub_2623091D4([RSCVPixelRotate alloc], 256.0, 192.0, 270, 1278226488);
    v284 = *(v264 + 16);
    *(v264 + 16) = v283;

    v285 = sub_2623091D4([RSCVPixelRotate alloc], Width, v280, 180, PixelFormatType);
    v286 = *(v264 + 24);
    *(v264 + 24) = v285;

    v287 = sub_2623091D4([RSCVPixelRotate alloc], 256.0, 192.0, 180, 1278226488);
    v288 = *(v264 + 32);
    *(v264 + 32) = v287;

    v289 = sub_2623091D4([RSCVPixelRotate alloc], v280, Width, 270, PixelFormatType);
    v290 = *(v264 + 40);
    *(v264 + 40) = v289;

    v291 = sub_2623091D4([RSCVPixelRotate alloc], 256.0, 192.0, 90, 1278226488);
    v292 = *(v264 + 48);
    *(v264 + 48) = v291;

    *(v264 + 96) = 1;
  }

  if (*(v264 + 97) != 1 || (v293 = *(v264 + 88), v293 != objc_msgSend_deviceOrientation(v270, v268, v269)))
  {
    if (MEMORY[0x277D4B6F8] && MEMORY[0x277D4B720] && MEMORY[0x277D4B710])
    {
      *(v264 + 88) = objc_msgSend_deviceOrientation(v270, v268, v269);
      v294 = objc_alloc_init(MEMORY[0x277D4B720]);
      v295 = *(v264 + 64);
      *(v264 + 64) = v294;

      v298 = objc_msgSend_deviceOrientation(v270, v296, v297);
      if ((v298 - 3) < 2)
      {
        objc_msgSend_setNetworkModeEnum_(*(v264 + 64), v299, 1);
        v346 = objc_alloc(MEMORY[0x277D4B710]);
        v303 = objc_msgSend_initWithOutputResolution_(v346, v347, v348, 256.0, 192.0);
        goto LABEL_314;
      }

      if ((v298 - 1) <= 1)
      {
        objc_msgSend_setNetworkModeEnum_(*(v264 + 64), v299, 2);
        v300 = objc_alloc(MEMORY[0x277D4B710]);
        v303 = objc_msgSend_initWithOutputResolution_(v300, v301, v302, 192.0, 256.0);
LABEL_314:
        v349 = *(v264 + 72);
        *(v264 + 72) = v303;

        *(v264 + 80) = objc_msgSend_networkModeEnum(*(v264 + 64), v350, v351);
        objc_msgSend_setEngineType_(*(v264 + 64), v352, 1);
        objc_msgSend_setRunByE5RT_(*(v264 + 64), v353, 1);
        LODWORD(v354) = 1053609165;
        objc_msgSend_setUncertaintyThreshold_(*(v264 + 64), v355, v356, v354);
        objc_msgSend_setModelConfig_(*(v264 + 64), v357, 0);
        v358 = objc_alloc(MEMORY[0x277D4B6F8]);
        LODWORD(v359) = 1053609165;
        v361 = objc_msgSend_initWithComputeEngine_andNetworkConfiguration_uncertaintyThreshold_(v358, v360, 1, 0, v359);
        v362 = *(v264 + 56);
        *(v264 + 56) = v361;

        *(v264 + 97) = 1;
        goto LABEL_315;
      }
    }

LABEL_312:
    *(v715 + 208) = 0;

    v182 = v715;
    goto LABEL_478;
  }

LABEL_315:

  v365 = objc_msgSend_colorBuffer(v270, v363, v364);
  v368 = objc_msgSend_deviceOrientation(v270, v366, v367);
  v371 = 0;
  if (v368 <= 2)
  {
    if (v368 == 1)
    {
      v374 = 16;
      v375 = 8;
    }

    else
    {
      v372 = 0;
      v373 = 0;
      if (v368 != 2)
      {
        goto LABEL_386;
      }

      v374 = 48;
      v375 = 40;
    }

LABEL_384:
    v371 = *(v264 + v375);
    v372 = *(v264 + v374);
    v453 = sub_2623092DC(v371, v365);
    v454 = *(v264 + 56);
    v457 = objc_msgSend_semantic(*(v264 + 72), v455, v456);
    IOSurface = CVPixelBufferGetIOSurface(v457);
    v461 = objc_msgSend_confidence(*(v264 + 72), v459, v460);
    v462 = CVPixelBufferGetIOSurface(v461);
    v465 = objc_msgSend_uncertainty(*(v264 + 72), v463, v464);
    v466 = CVPixelBufferGetIOSurface(v465);
    objc_msgSend_runWithInput_output_confidenceOutput_uncertaintyOutput_resampleOutput_networkConfiguration_(v454, v467, v453, IOSurface, v462, v466, 1, *(v264 + 80));
    v470 = objc_msgSend_semantic(*(v264 + 72), v468, v469);
    v373 = sub_2623092DC(v372, v470);
    goto LABEL_386;
  }

  if (v368 != 3)
  {
    v372 = 0;
    v373 = 0;
    if (v368 != 4)
    {
      goto LABEL_386;
    }

    v374 = 32;
    v375 = 24;
    goto LABEL_384;
  }

  v471 = *(v264 + 56);
  v472 = objc_msgSend_semantic(*(v264 + 72), v369, v370);
  v473 = CVPixelBufferGetIOSurface(v472);
  v476 = objc_msgSend_confidence(*(v264 + 72), v474, v475);
  v477 = CVPixelBufferGetIOSurface(v476);
  v480 = objc_msgSend_uncertainty(*(v264 + 72), v478, v479);
  v481 = CVPixelBufferGetIOSurface(v480);
  objc_msgSend_runWithInput_output_confidenceOutput_uncertaintyOutput_resampleOutput_networkConfiguration_(v471, v482, v365, v473, v477, v481, 1, 1);
  v373 = objc_msgSend_semantic(*(v264 + 72), v483, v484);
  v371 = 0;
  v372 = 0;
LABEL_386:

  *(v715 + 208) = v373;
  v485 = v373 == 0;

  v182 = v715;
  if (v485)
  {
    goto LABEL_478;
  }

LABEL_277:
  if (v717 <= 1u)
  {
    CVPixelBufferLockBaseAddress(*(v182 + 208), 1uLL);
  }

  v256 = v253;
  v259 = v256;
  *&__p[1] = 0u;
  v755 = 0u;
  v756 = 0u;
  v757 = 0u;
  v758 = 0u;
  v759 = 0u;
  v763 = 0;
  __p[0] = &unk_2874EEB10;
  v762 = 0;
  v764 = 257;
  v260 = &unk_2874EEC38;
  v743 = 0u;
  v744 = 0u;
  v745 = 0u;
  v746 = 0u;
  v747 = 0u;
  v748 = 0u;
  v751 = 0;
  v742 = &unk_2874EEC38;
  v750 = 0;
  v752 = 257;
  if (!a3)
  {
    v304 = objc_msgSend_colorBuffer(v256, v257, v258);
    v305 = CVPixelBufferGetWidth(v304);
    v308 = objc_msgSend_colorBuffer(v259, v306, v307);
    v311 = (CVPixelBufferGetHeight(v308) / *v182);
    objc = (v305 / *v182);
    v707 = v311;
    v312 = *(v182 + 224);
    if (!v312)
    {
      v313 = *(v182 + 4);
      operator new();
    }

    v314 = objc_msgSend_colorBuffer(v259, v309, v310);
    (*(*v312 + 2))(v312, v314);
    sub_26222B530(v312, v315, v316);
    v319 = sub_26222B4BC(v312, v317, v318);
    (*(*v312 + 3))(v312);
    v320 = v312[5];
    v323 = objc_msgSend_width(v320, v321, v322);
    v328 = objc_msgSend_height(v320, v324, v325);
    if (*(v715 + 369) == 1)
    {
      __dst[0] = objc_msgSend_height(v320, v326, v327);
      v795[0].__locale_ = objc_msgSend_width(v320, v329, v330);
      sub_262223490(&v777, __dst, v795);
      sub_26225F17C(v787, 0, &v777);
      v331 = *&v787[1].rowBytes;
      v332 = *&v787[2].rowBytes;
      *(v715 + 304) = *&v787[2].height;
      *(v715 + 320) = v332;
      *(v715 + 336) = *&v787[3].height;
      v333 = *&v787[0].rowBytes;
      *(v715 + 240) = *&v787[0].height;
      *(v715 + 256) = v333;
      *(v715 + 272) = *&v787[1].height;
      *(v715 + 288) = v331;
      rowBytes = v787[3].rowBytes;
      v335 = v788;
      if (v788)
      {
        atomic_fetch_add_explicit((v788 + 8), 1uLL, memory_order_relaxed);
      }

      v336 = *(v715 + 360);
      *(v715 + 352) = rowBytes;
      *(v715 + 360) = v335;
      if (v336)
      {
        sub_2621D1B78(v336);
      }

      *(v715 + 376) = v789;
      *(v715 + 368) = WORD4(v788);
      v787[0].data = &unk_2874EEC38;
      if (v788)
      {
        sub_2621D1B78(v788);
      }
    }

    v337 = *(v715 + 376);
    v338 = objc_msgSend_width(v320, v326, v327);
    memset(v787, 0, 24);
    v787[0].rowBytes = v323;
    v787[1].data = v328;
    v787[1].height = 1;
    objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v320, v339, v337, v338, v787, 0);

    v778 = 0u;
    v779 = 0u;
    v777 = 0u;
    sub_26222D2A8(v780, v715 + 232);
    v777 = *&v780[1];
    v778 = *&v780[3];
    v779 = *&v780[5];
    if (v785 == 1)
    {
      v340 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
      v341 = sub_2621D552C(v340, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
      sub_2621D552C(v341, " ", 1);
      v342 = MEMORY[0x277D82670];
      v343 = MEMORY[0x266727260](MEMORY[0x277D82670], 664);
      sub_2621D552C(v343, " ", 1);
      sub_2621D552C(v343, "operator=", 9);
      std::ios_base::getloc((v343 + *(*v343 - 24)));
      v344 = std::locale::use_facet(v787, MEMORY[0x277D82680]);
      (v344->__vftable[2].~facet_0)(v344, 10);
      std::locale::~locale(v787);
      std::ostream::put();
      std::ostream::flush();
      sub_2621D8074("err", "empty tensor in");
      std::ios_base::getloc((v342 + *(*v342 - 24)));
      v345 = std::locale::use_facet(v787, MEMORY[0x277D82680]);
      (v345->__vftable[2].~facet_0)(v345, 10);
      std::locale::~locale(v787);
      std::ostream::put();
      std::ostream::flush();
    }

    if (HIBYTE(v764) == 1)
    {
      *&__p[1] = v777;
      v755 = v778;
      v756 = v779;
      *&v757 = *(&v777 + 1);
      *(&v757 + 1) = 1;
      v760 = v777 * *(&v777 + 1);
      v761 = 0;
      sub_2621D7174();
    }

    v376 = 0;
    v377 = &v777;
    v378 = 1;
    do
    {
      v379 = __p[v376 + 1];
      v380 = *v377;
      if ((v378 & 1) == 0)
      {
        break;
      }

      v378 = 0;
      v377 = (&v777 + 8);
      v376 = 1;
    }

    while (v379 == v380);
    if (v379 == v380)
    {
      if (v784)
      {
        memset(v787, 0, 48);
        v381 = v760;
        v382 = v765;
        if (v764)
        {
          if (v760)
          {
            v383 = v786;
            do
            {
              v384 = *v383++;
              *v382++ = v384;
              --v381;
            }

            while (v381);
          }
        }

        else if (v760)
        {
          v486 = 0;
          v487 = v757;
          v488 = v786;
          do
          {
            v489 = 0;
            v382[*(&v487 + 1) * v787[0].height + v487 * v787[0].data] = v488[v486];
            do
            {
              v490 = (*(&v787[0].height + v489 * 8) + 1);
              *(&v787[0].height + v489 * 8) = v490;
              if (v490 != __p[v489 + 2])
              {
                break;
              }

              *(&v787[0].height + v489 * 8) = 0;
              --v489;
            }

            while (v489 != -2);
            ++v486;
          }

          while (v486 != v381);
        }
      }

      else
      {
        memset(v787, 0, 48);
        v413 = v760;
        v414 = v765;
        if (v764)
        {
          if (v760)
          {
            v415 = 0;
            v416 = v781;
            v417 = v782;
            v418 = v786;
            do
            {
              v419 = 0;
              v414[v415] = v418[v417 * v787[0].height + v416 * v787[0].data];
              do
              {
                v420 = (*(&v787[0].height + v419 * 8) + 1);
                *(&v787[0].height + v419 * 8) = v420;
                if (v420 != __p[v419 + 2])
                {
                  break;
                }

                *(&v787[0].height + v419 * 8) = 0;
                --v419;
              }

              while (v419 != -2);
              ++v415;
            }

            while (v415 != v413);
          }
        }

        else if (v760)
        {
          v491 = 0;
          v492 = v757;
          v493 = v781;
          v494 = v782;
          v495 = v786;
          do
          {
            v496 = 0;
            v414[*(&v492 + 1) * v787[0].height + v492 * v787[0].data] = v495[v494 * v787[0].height + v493 * v787[0].data];
            do
            {
              v497 = (*(&v787[0].height + v496 * 8) + 1);
              *(&v787[0].height + v496 * 8) = v497;
              if (v497 != __p[v496 + 2])
              {
                break;
              }

              *(&v787[0].height + v496 * 8) = 0;
              --v496;
            }

            while (v496 != -2);
            ++v491;
          }

          while (v491 != v413);
        }
      }
    }

    else
    {
      if (v784)
      {
        v793 = 0uLL;
        v794 = 0uLL;
        v791 = 0uLL;
        v792 = 0uLL;
        v789 = 0uLL;
        v790 = 0uLL;
        v788 = 0uLL;
        memset(v787, 0, sizeof(v787));
        v740 = 0uLL;
        v741 = 0uLL;
        *__dst = 0uLL;
        sub_2621D96E4(v787, &__p[1], &v777, __dst);
        v385 = 0;
        v386 = __dst;
        v387 = 1;
        do
        {
          v388 = *v386;
          v389 = __p[v385 + 1];
          if ((v387 & 1) == 0)
          {
            break;
          }

          v387 = 0;
          v386 = &__dst[1];
          v385 = 1;
        }

        while (v388 == v389);
        if (v388 != v389)
        {
          v390 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
          v391 = sub_2621D552C(v390, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
          sub_2621D552C(v391, " ", 1);
          v392 = MEMORY[0x277D82670];
          v393 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
          sub_2621D552C(v393, " ", 1);
          sub_2621D552C(v393, "broadcast_assign_continue", 25);
          std::ios_base::getloc((v393 + *(*v393 - 24)));
          v394 = std::locale::use_facet(v795, MEMORY[0x277D82680]);
          (v394->__vftable[2].~facet_0)(v394, 10);
          std::locale::~locale(v795);
          std::ostream::put();
          std::ostream::flush();
          sub_2621D58EC("err", "broadcast assign issue");
          std::ios_base::getloc((v392 + *(*v392 - 24)));
          v395 = std::locale::use_facet(v795, MEMORY[0x277D82680]);
          (v395->__vftable[2].~facet_0)(v395, 10);
          std::locale::~locale(v795);
          std::ostream::put();
          std::ostream::flush();
        }

        v796 = 0u;
        v797 = 0u;
        *&v795[0].__locale_ = 0u;
        v799 = 0u;
        v800 = 0u;
        v798 = 0u;
        v396 = v760;
        v397 = v765;
        if (v764)
        {
          if (v760)
          {
            v398 = 0;
            v399 = v787[1].data;
            v400 = v787[0].rowBytes;
            v401 = (v787[1].data - v787[0].rowBytes) >> 3;
            if (v401 <= 1)
            {
              v401 = 1;
            }

            v402 = v786;
            do
            {
              v798 = *&v795[0].__locale_;
              if (v399 != v400)
              {
                v403 = v400;
                v404 = v401;
                do
                {
                  v405 = *v403++;
                  *(&v798 + v405) = 0;
                  --v404;
                }

                while (v404);
              }

              v406 = 0;
              v407 = 0;
              v408 = &v798;
              v409 = 1;
              do
              {
                v410 = v409;
                v407 += *(&v792 + v406) * *v408;
                v408 = (&v798 + 8);
                v406 = 1;
                v409 = 0;
              }

              while ((v410 & 1) != 0);
              v397[v398] = v402[v407];
              for (i = 1; i != -1; --i)
              {
                v412 = (v795[i].__locale_ + 1);
                v795[i].__locale_ = v412;
                if (v412 != __dst[i])
                {
                  break;
                }

                v795[i].__locale_ = 0;
              }

              ++v398;
            }

            while (v398 != v396);
          }
        }

        else if (v760)
        {
          v498 = 0;
          v499 = v787[1].data;
          v500 = v787[0].rowBytes;
          v501 = (v787[1].data - v787[0].rowBytes) >> 3;
          if (v501 <= 1)
          {
            v501 = 1;
          }

          v502 = v757;
          v503 = v786;
          do
          {
            locale = v795[0].__locale_;
            v505 = v795[1].__locale_;
            v798 = *&v795[0].__locale_;
            if (v499 != v500)
            {
              v506 = v500;
              v507 = v501;
              do
              {
                v508 = *v506++;
                *(&v798 + v508) = 0;
                --v507;
              }

              while (v507);
            }

            v509 = 0;
            v510 = 0;
            v511 = &v798;
            v512 = 1;
            do
            {
              v513 = v512;
              v510 += *(&v792 + v509) * *v511;
              v511 = (&v798 + 8);
              v509 = 1;
              v512 = 0;
            }

            while ((v513 & 1) != 0);
            v397[v505 * *(&v502 + 1) + locale * v502] = v503[v510];
            for (j = 1; j != -1; --j)
            {
              v515 = (v795[j].__locale_ + 1);
              v795[j].__locale_ = v515;
              if (v515 != __dst[j])
              {
                break;
              }

              v795[j].__locale_ = 0;
            }

            ++v498;
          }

          while (v498 != v396);
        }
      }

      else
      {
        v793 = 0uLL;
        v794 = 0uLL;
        v791 = 0uLL;
        v792 = 0uLL;
        v789 = 0uLL;
        v790 = 0uLL;
        v788 = 0uLL;
        memset(v787, 0, sizeof(v787));
        v740 = 0uLL;
        v741 = 0uLL;
        *__dst = 0uLL;
        sub_2621D96E4(v787, &__p[1], &v777, __dst);
        v421 = 0;
        v422 = __dst;
        v423 = 1;
        do
        {
          v424 = *v422;
          v425 = __p[v421 + 1];
          if ((v423 & 1) == 0)
          {
            break;
          }

          v423 = 0;
          v422 = &__dst[1];
          v421 = 1;
        }

        while (v424 == v425);
        if (v424 != v425)
        {
          v426 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
          v427 = sub_2621D552C(v426, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
          sub_2621D552C(v427, " ", 1);
          v428 = MEMORY[0x277D82670];
          v429 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
          sub_2621D552C(v429, " ", 1);
          sub_2621D552C(v429, "broadcast_assign_stride", 23);
          std::ios_base::getloc((v429 + *(*v429 - 24)));
          v430 = std::locale::use_facet(v795, MEMORY[0x277D82680]);
          (v430->__vftable[2].~facet_0)(v430, 10);
          std::locale::~locale(v795);
          std::ostream::put();
          std::ostream::flush();
          sub_2621D58EC("err", "broadcast assign issue");
          std::ios_base::getloc((v428 + *(*v428 - 24)));
          v431 = std::locale::use_facet(v795, MEMORY[0x277D82680]);
          (v431->__vftable[2].~facet_0)(v431, 10);
          std::locale::~locale(v795);
          std::ostream::put();
          std::ostream::flush();
        }

        v796 = 0u;
        v797 = 0u;
        *&v795[0].__locale_ = 0u;
        v799 = 0u;
        v800 = 0u;
        v798 = 0u;
        v432 = v760;
        v433 = v765;
        if (v764)
        {
          if (v760)
          {
            v434 = 0;
            v435 = v787[1].data;
            v436 = v787[0].rowBytes;
            v437 = (v787[1].data - v787[0].rowBytes) >> 3;
            if (v437 <= 1)
            {
              v437 = 1;
            }

            v438 = v784;
            v439 = v781;
            v440 = v782;
            v441 = v786;
            do
            {
              v798 = *&v795[0].__locale_;
              if (v435 != v436)
              {
                v442 = v436;
                v443 = v437;
                do
                {
                  v444 = *v442++;
                  *(&v798 + v444) = 0;
                  --v443;
                }

                while (v443);
              }

              v445 = 0;
              v446 = 0;
              v447 = &v798;
              v448 = 1;
              do
              {
                v449 = v448;
                v446 += *(&v792 + v445) * *v447;
                v447 = (&v798 + 8);
                v445 = 1;
                v448 = 0;
              }

              while ((v449 & 1) != 0);
              v450 = &v441[v446];
              if (!v438)
              {
                v450 = &v441[*(&v798 + 1) * v440 + v798 * v439];
              }

              v433[v434] = *v450;
              for (k = 1; k != -1; --k)
              {
                v452 = (v795[k].__locale_ + 1);
                v795[k].__locale_ = v452;
                if (v452 != __dst[k])
                {
                  break;
                }

                v795[k].__locale_ = 0;
              }

              ++v434;
            }

            while (v434 != v432);
          }
        }

        else if (v760)
        {
          v516 = 0;
          v517 = v787[1].data;
          v518 = v787[0].rowBytes;
          v519 = (v787[1].data - v787[0].rowBytes) >> 3;
          if (v519 <= 1)
          {
            v519 = 1;
          }

          v520 = v757;
          v521 = v784;
          v522 = v781;
          v523 = v782;
          v524 = v786;
          do
          {
            v525 = v260;
            v526 = v795[0].__locale_;
            v527 = v795[1].__locale_;
            v798 = *&v795[0].__locale_;
            if (v517 != v518)
            {
              v528 = v518;
              v529 = v519;
              do
              {
                v530 = *v528++;
                *(&v798 + v530) = 0;
                --v529;
              }

              while (v529);
            }

            v531 = 0;
            v532 = 0;
            v533 = &v798;
            v534 = 1;
            do
            {
              v535 = v534;
              v532 += *(&v792 + v531) * *v533;
              v533 = (&v798 + 8);
              v531 = 1;
              v534 = 0;
            }

            while ((v535 & 1) != 0);
            v536 = v526 * v520;
            v537 = v527 * *(&v520 + 1);
            v538 = &v524[v532];
            if (!v521)
            {
              v538 = &v524[*(&v798 + 1) * v523 + v798 * v522];
            }

            v433[v537 + v536] = *v538;
            v539 = 1;
            v260 = v525;
            do
            {
              v540 = (v795[v539].__locale_ + 1);
              v795[v539].__locale_ = v540;
              if (v540 != __dst[v539])
              {
                break;
              }

              v795[v539--].__locale_ = 0;
            }

            while (v539 != -1);
            ++v516;
          }

          while (v516 != v432);
        }
      }

      sub_2621C57C8(v787);
    }

    v780[0] = &unk_2874EEC38;
    if (v783)
    {
      sub_2621D1B78(v783);
    }

    v541 = *(v715 + 208);
    CVPixelBufferLockBaseAddress(v541, 1uLL);
    v542 = CVPixelBufferGetWidth(v541);
    v543 = CVPixelBufferGetHeight(v541);
    BaseAddress = CVPixelBufferGetBaseAddress(v541);
    BytesPerRow = CVPixelBufferGetBytesPerRow(v541);
    v787[0].data = BaseAddress;
    v787[0].height = v543;
    v787[0].width = v542;
    v787[0].rowBytes = BytesPerRow;
    if (*(v715 + 192) == objc)
    {
      v546 = *(v715 + 176);
      if (*(v715 + 184) == v707 && v546)
      {
LABEL_442:
        vImageScale_Planar8(v787, (v715 + 176), 0, 0);
        CVPixelBufferUnlockBaseAddress(v541, 1uLL);
LABEL_443:
        __dst[0] = v707;
        v795[0].__locale_ = objc;
        sub_262223490(&v777, __dst, v795);
        v547 = *(v715 + 176);
        sub_26225F1EC(v787, &v777);
        v746 = *&v787[1].rowBytes;
        v747 = *&v787[2].height;
        v748 = *&v787[2].rowBytes;
        v749 = *&v787[3].height;
        v743 = *&v787[0].height;
        v744 = *&v787[0].rowBytes;
        v745 = *&v787[1].height;
        v548 = v787[3].rowBytes;
        v549 = v788;
        if (v788)
        {
          atomic_fetch_add_explicit((v788 + 8), 1uLL, memory_order_relaxed);
        }

        v550 = v751;
        v750 = v548;
        v751 = v549;
        if (v550)
        {
          sub_2621D1B78(v550);
        }

        v753 = v789;
        v752 = WORD4(v788);
        v787[0].data = &unk_2874EEC38;
        if (v788)
        {
          sub_2621D1B78(v788);
        }

        goto LABEL_450;
      }
    }

    else
    {
      v546 = *(v715 + 176);
    }

    if (v546)
    {
      free(v546);
    }

    if (MEMORY[0x266728070](v715 + 176, v707, objc, 8, 0))
    {
      goto LABEL_443;
    }

    goto LABEL_442;
  }

  CVPixelBufferGetBaseAddress(*(v182 + 208));
  __dst[0] = CVPixelBufferGetWidth(*(v182 + 208));
  v795[0].__locale_ = CVPixelBufferGetHeight(*(v182 + 208));
  sub_262223490(&v777, v795, __dst);
  sub_26225F1EC(v787, &v777);
  v746 = *&v787[1].rowBytes;
  v747 = *&v787[2].height;
  v748 = *&v787[2].rowBytes;
  v749 = *&v787[3].height;
  v743 = *&v787[0].height;
  v744 = *&v787[0].rowBytes;
  v745 = *&v787[1].height;
  v261 = v787[3].rowBytes;
  v262 = v788;
  if (v788)
  {
    atomic_fetch_add_explicit((v788 + 8), 1uLL, memory_order_relaxed);
  }

  v263 = v751;
  v750 = v261;
  v751 = v262;
  if (v263)
  {
    sub_2621D1B78(v263);
  }

  v753 = v789;
  v752 = WORD4(v788);
  v787[0].data = &unk_2874EEC38;
  if (v788)
  {
    sub_2621D1B78(v788);
  }

  CVPixelBufferUnlockBaseAddress(*(v182 + 208), 1uLL);
LABEL_450:
  sub_2621D1AA0(v771, __p);
  sub_26222D2A8(&v773, &v742);
  v742 = v260;
  if (v751)
  {
    sub_2621D1B78(v751);
  }

  __p[0] = &unk_2874EEB10;
  if (v763)
  {
    sub_2621D1B78(v763);
  }

  v182 = v715;
  v551 = *(v715 + 120);
  if (a3)
  {
    v552 = *(&v774 + 1) * v774;
    if (*(&v774 + 1) * v774)
    {
      v553 = 0;
      v554 = *(&v774 + 1) * v774;
      v555 = v776;
      do
      {
        v556 = *v555++;
        if (v556 == 31)
        {
          ++v553;
        }

        --v554;
      }

      while (v554);
      v768 = 0;
      v767 = 0;
      v766 = &v767;
      if (v553 >= 0x2711)
      {
        LOWORD(v787[0].data) = 7943;
        sub_2622E70F4(&v766, v787, &v787[0].data + 2);
        goto LABEL_465;
      }
    }

    else
    {
      v768 = 0;
      v767 = 0;
      v766 = &v767;
    }

    LOWORD(v787[0].data) = 1798;
    BYTE2(v787[0].data) = 31;
    sub_2622E70F4(&v766, v787, &v787[0].data + 3);
LABEL_465:
    if (v552)
    {
      if ((v552 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_2621CBEB0();
    }

    sub_26225F1EC(&v777, &v774);
    sub_2622CEEEC(__p, &v777);
  }

  v557 = *(v715 + 120);
  sub_2622CFEEC(&v725);
  sub_26225CE9C(v729);
  v558 = v726;
  v728 = v725;
  v729 = v726;
  v730 = v727;
  if (v727)
  {
    v726[2] = &v729;
    v725 = &v726;
    v726 = 0;
    v727 = 0;
    v558 = 0;
  }

  else
  {
    v728 = &v729;
  }

  sub_26225CE9C(v558);
  if (v717 <= 1u)
  {
    CVPixelBufferUnlockBaseAddress(*(v715 + 208), 1uLL);
  }

  v773 = &unk_2874EEC38;
  if (v775)
  {
    sub_2621D1B78(v775);
  }

  v771[0].columns[0].i64[0] = &unk_2874EEB10;
  if (v772)
  {
    sub_2621D1B78(v772);
  }

LABEL_478:
  if (v717 <= 1u)
  {
    v559 = *(v182 + 160);
    if (!v559)
    {
      goto LABEL_509;
    }

    while (*(v559 + 32))
    {
      v559 = *v559;
      if (!v559)
      {
        goto LABEL_508;
      }
    }

    v560 = v728;
    if (v728 != &v729)
    {
      do
      {
        if (*(v560 + 95) < 0)
        {
          sub_2621CC810(v787, v560[9], v560[10]);
        }

        else
        {
          *&v787[0].data = *(v560 + 9);
          v787[0].width = v560[11];
        }

        v561 = *(v560 + 24);
        objd = v560[14];
        LOBYTE(v777) = 0;
        v771[0].columns[0].i64[0] = &v777;
        v562 = sub_26225E6DC(v182 + 152, 0);
        v563 = sub_26225E9A4((v562 + 5), v787);
        LOBYTE(v777) = 0;
        v771[0].columns[0].i64[0] = &v777;
        if (sub_26225E6DC(v182 + 152, 0) + 6 != v563)
        {
          if (v561 > 1)
          {
            v572 = *(v563 + 260);
            if (v561 == 2 && (v573 = *(v563 + 256), objd.f32[0] <= v573))
            {
              *(v560 + 28) = v573;
            }

            else if (v561 == 3 && objd.f32[0] >= v572)
            {
              *(v560 + 28) = v572;
            }
          }

          else
          {
            v564 = *(v563 + 264);
            v565 = *(v563 + 272);
            v566 = vsub_f32(objd, v564);
            v567 = vmul_f32(v566, v566);
            v568 = vsub_f32(objd, v565);
            v569 = vmul_f32(v568, v568);
            v570 = vsqrt_f32(vadd_f32(vzip1_s32(v567, v569), vzip2_s32(v567, v569)));
            if (v570.f32[0] >= v570.f32[1])
            {
              v574 = vsub_f32(v565, v564);
              if (v570.f32[0] > sqrtf(vaddv_f32(vmul_f32(v574, v574))))
              {
                v560[14] = v565;
              }
            }

            else
            {
              v571 = vsub_f32(v564, v565);
              if (v570.f32[1] > sqrtf(vaddv_f32(vmul_f32(v571, v571))))
              {
                v560[14] = v564;
              }
            }
          }
        }

        if (SHIBYTE(v787[0].width) < 0)
        {
          operator delete(v787[0].data);
        }

        v575 = v560[1];
        if (v575)
        {
          do
          {
            v576 = v575;
            v575 = *v575;
          }

          while (v575);
        }

        else
        {
          do
          {
            v576 = v560[2];
            v161 = *v576 == v560;
            v560 = v576;
          }

          while (!v161);
        }

        v560 = v576;
      }

      while (v576 != &v729);
    }
  }

LABEL_508:
  if (!a3)
  {
    goto LABEL_613;
  }

LABEL_509:
  LOBYTE(__p[0]) = a3;
  v787[0].data = __p;
  v577 = sub_26225E6DC(v182 + 128, a3);
  v578 = v577[5];
  v771[0].columns[1].i64[0] = 0;
  v771[0].columns[0].i64[1] = 0;
  v771[0].columns[0].i64[0] = &v771[0].columns[0].i64[1];
  v579 = v577 + 6;
  if (v578 != v577 + 6)
  {
    do
    {
      if (*(v578 + 71) < 0)
      {
        sub_2621CC810(v787, v578[6], v578[7]);
      }

      else
      {
        *&v787[0].data = *(v578 + 3);
        v787[0].width = v578[8];
      }

      LODWORD(v787[0].rowBytes) = *(v578 + 24);
      *&v777 = v787;
      v580 = sub_26225ECD4(v771, v787);
      *(v580 + 64) = v578[5];
      std::string::operator=((v580 + 72), v578 + 2);
      std::string::operator=((v580 + 96), v578 + 3);
      v581 = *(v578 + 6);
      *(v580 + 136) = v578[14];
      *(v580 + 120) = v581;
      if (SHIBYTE(v787[0].width) < 0)
      {
        operator delete(v787[0].data);
      }

      v582 = v578[1];
      if (v582)
      {
        do
        {
          v583 = v582;
          v582 = *v582;
        }

        while (v582);
      }

      else
      {
        do
        {
          v583 = v578[2];
          v161 = *v583 == v578;
          v578 = v583;
        }

        while (!v161);
      }

      v578 = v583;
    }

    while (v583 != v579);
  }

  v584 = v728;
  if (v728 == &v729)
  {
    goto LABEL_569;
  }

  do
  {
    v586 = *(v584 + 26);
    v585 = *(v584 + 27);
    v587 = *(v584 + 25);
    if (*(v584 + 71) < 0)
    {
      sub_2621CC810(v787, v584[6], v584[7]);
    }

    else
    {
      *&v787[0].data = *(v584 + 3);
      v787[0].width = v584[8];
    }

    v588 = *(v584 + 24);
    LODWORD(v787[0].rowBytes) = v588;
    v589 = v771[0].columns[0].i64[1];
    if (!v771[0].columns[0].i64[1])
    {
      goto LABEL_540;
    }

    while (1)
    {
      v590 = sub_26225E3EC(v787, (v589 + 32));
      if (v590 || ((v591 = *(v589 + 56), v588 < v591) ? (v590 = -1) : (v590 = 1), v588 != v591))
      {
        if (v590 < 0)
        {
          goto LABEL_539;
        }
      }

      v592 = sub_26225E3EC((v589 + 32), v787);
      if (!v592)
      {
        v593 = *(v589 + 56);
        v592 = v593 < v588 ? -1 : 1;
        if (v593 == v588)
        {
          break;
        }
      }

      if ((v592 & 0x80) == 0)
      {
        break;
      }

      v589 += 8;
LABEL_539:
      v589 = *v589;
      if (!v589)
      {
        goto LABEL_540;
      }
    }

    v598 = *sub_26225EE54(v771, &v777, v787);
    if (!v598)
    {
      sub_2621C84A8("map::at:  key not found");
    }

    v599 = v598[33];
    v600 = v598[31];
    v601 = v585 - v599;
    if ((v587 - v600) > 0.05 || v601 > 5.0 || (v586 - v598[32]) > 100.0)
    {
      *&v777 = v787;
      v604 = sub_26225ECD4(v771, v787);
      *(v604 + 64) = v584[5];
      std::string::operator=((v604 + 72), v584 + 2);
      std::string::operator=((v604 + 96), v584 + 3);
      v605 = *(v584 + 6);
      *(v604 + 136) = v584[14];
      *(v604 + 120) = v605;
    }

    v606 = fabsf(v601);
    if (fabsf(v587 - v600) < 0.05 && v606 > 5.0)
    {
      *&v777 = v787;
      v608 = sub_26225ECD4(v771, v787);
      *(v608 + 64) = v584[5];
      std::string::operator=((v608 + 72), v584 + 2);
      std::string::operator=((v608 + 96), v584 + 3);
      v609 = *(v584 + 6);
      *(v608 + 136) = v584[14];
      *(v608 + 120) = v609;
    }

    if (v585 > 70.0 && v599 > 70.0 && v587 > 0.9 && v600 > 0.9)
    {
LABEL_540:
      *&v777 = v787;
      v594 = sub_26225ECD4(v771, v787);
      *(v594 + 64) = v584[5];
      std::string::operator=((v594 + 72), v584 + 2);
      std::string::operator=((v594 + 96), v584 + 3);
      v595 = *(v584 + 6);
      *(v594 + 136) = v584[14];
      *(v594 + 120) = v595;
    }

    if (SHIBYTE(v787[0].width) < 0)
    {
      operator delete(v787[0].data);
    }

    v596 = v584[1];
    if (v596)
    {
      do
      {
        v597 = v596;
        v596 = *v596;
      }

      while (v596);
    }

    else
    {
      do
      {
        v597 = v584[2];
        v161 = *v597 == v584;
        v584 = v597;
      }

      while (!v161);
    }

    v584 = v597;
  }

  while (v597 != &v729);
LABEL_569:
  sub_26225CE9C(v577[6]);
  v577[6] = 0;
  v577[7] = 0;
  v577[5] = v579;
  v610 = v771[0].columns[0].i64[0];
  v182 = v715;
  if (v771[0].columns[0].i64[0] != &v771[0].columns[0].u32[2])
  {
    v611 = 0;
    do
    {
      *&v777 = v611 | (*(v610 + 120) << 32);
      v787[0].data = &v777;
      v612 = sub_26225E854((v577 + 5), v611, SDWORD1(v777));
      *(v612 + 40) = *(v610 + 64);
      std::string::operator=((v612 + 48), (v610 + 72));
      std::string::operator=((v612 + 72), (v610 + 96));
      v613 = *(v610 + 120);
      *(v612 + 112) = *(v610 + 136);
      *(v612 + 96) = v613;
      v614 = *(v610 + 8);
      if (v614)
      {
        do
        {
          v615 = v614;
          v614 = v614->columns[0].i64[0];
        }

        while (v614);
      }

      else
      {
        do
        {
          v615 = *(v610 + 16);
          v161 = v615->columns[0].i64[0] == v610;
          v610 = v615;
        }

        while (!v161);
      }

      ++v611;
      v610 = v615;
    }

    while (v615 != &v771[0].columns[0].u32[2]);
  }

  sub_26225EDD8(v771[0].columns[0].i64[1]);
LABEL_578:
  v787[0].data = &v738;
  v616 = sub_26225E6DC(v182 + 128, v738);
  if (v616[7])
  {
    v617 = v616[5];
    v618 = v616 + 6;
    if (v617 != v616 + 6)
    {
      while (2)
      {
        if (!sub_26225E7AC(v732[0], v617 + 6))
        {
          goto LABEL_590;
        }

        v787[0].data = v617 + 6;
        v619 = sub_26225D91C(&v731, v617 + 6);
        v620 = *(v617 + 24);
        v621 = v617[14];
        *&v622 = v619[34];
        v623 = v619[32];
        if (!v620)
        {
          *&v624 = v617[14];
          goto LABEL_589;
        }

        *&v624 = v619[33];
        if (v620 == 2)
        {
          v621.i32[1] = HIDWORD(v619[32]);
        }

        else
        {
          if (v620 == 1)
          {
            *&v622 = v617[14];
LABEL_589:
            *&v625 = v624;
            *(&v625 + 1) = v623;
            *&v626 = v622;
            *(&v626 + 1) = v623;
            *&v787[0].data = v625;
            *&v787[0].width = v626;
            *(&v622 + 1) = vdup_lane_s32(v623, 1);
            *(&v624 + 1) = *(&v622 + 1);
            *&v787[1].data = v622;
            *&v787[1].width = v624;
            sub_2622E82B0((v619 + 8), v787);
            if (!a3)
            {
              v787[0].data = v617 + 6;
              v629 = sub_26225D91C(&v731, v617 + 6);
              v630 = v629[74];
              v631 = *v630;
              v632 = *(v630 + 8);
              if (*v630 != v632)
              {
                do
                {
                  if (*v631 == 1)
                  {
                    v787[0].data = v631 + 2;
                    v637 = sub_26225D91C(&v731, v631 + 1);
                    v638 = v637[6];
                    *&v787[0].data = v637[5];
                    *&v787[0].width = v638;
                    v639 = v637[8];
                    *&v787[1].data = v637[7];
                    *&v787[1].width = v639;
                    v787[0].width = v629[33];
                    v787[1].data = v787[0].width;
                    *&v777 = v631 + 2;
                    v640 = sub_26225D91C(&v731, v631 + 1);
                    sub_2622E82B0(v640 + 64, v787);
                  }

                  else if (!*v631)
                  {
                    v787[0].data = v631 + 2;
                    v633 = sub_26225D91C(&v731, v631 + 1);
                    v634 = v633[6];
                    *&v787[0].data = v633[5];
                    *&v787[0].width = v634;
                    v635 = v633[8];
                    *&v787[1].data = v633[7];
                    *&v787[1].width = v635;
                    v787[0].data = v629[33];
                    v787[1].width = v787[0].data;
                    *&v777 = v631 + 2;
                    v636 = sub_26225D91C(&v731, v631 + 1);
                    sub_2622E82B0(v636 + 64, v787);
                  }

                  v631 += 8;
                }

                while (v631 != v632);
                v630 = v629[74];
              }

              v641 = *(v630 + 24);
              v642 = *(v630 + 32);
              while (v641 != v642)
              {
                if (*v641 == 1)
                {
                  v787[0].data = v641 + 2;
                  v647 = sub_26225D91C(&v731, v641 + 1);
                  v648 = v647[6];
                  *&v787[0].data = v647[5];
                  *&v787[0].width = v648;
                  v649 = v647[8];
                  *&v787[1].data = v647[7];
                  *&v787[1].width = v649;
                  v787[0].width = v629[34];
                  v787[1].data = v787[0].width;
                  *&v777 = v641 + 2;
                  v650 = sub_26225D91C(&v731, v641 + 1);
                  sub_2622E82B0(v650 + 64, v787);
                }

                else if (!*v641)
                {
                  v787[0].data = v641 + 2;
                  v643 = sub_26225D91C(&v731, v641 + 1);
                  v644 = v643[6];
                  *&v787[0].data = v643[5];
                  *&v787[0].width = v644;
                  v645 = v643[8];
                  *&v787[1].data = v643[7];
                  *&v787[1].width = v645;
                  v787[0].data = v629[34];
                  v787[1].width = v787[0].data;
                  *&v777 = v641 + 2;
                  v646 = sub_26225D91C(&v731, v641 + 1);
                  sub_2622E82B0(v646 + 64, v787);
                }

                v641 += 8;
              }
            }

LABEL_590:
            v627 = v617[1];
            if (v627)
            {
              do
              {
                v628 = v627;
                v627 = *v627;
              }

              while (v627);
            }

            else
            {
              do
              {
                v628 = v617[2];
                v161 = *v628 == v617;
                v617 = v628;
              }

              while (!v161);
            }

            v617 = v628;
            if (v628 == v618)
            {
              goto LABEL_611;
            }

            continue;
          }

          v621 = vdup_lane_s32(v621, 0);
          v621.i32[0] = v619[32];
        }

        break;
      }

      v623 = v621;
      goto LABEL_589;
    }
  }

LABEL_611:
  sub_26225EF98(v771, &v731);
  v787[0].data = &v738;
  v651 = sub_26225E6DC(v182 + 152, v738);
  v652 = v651 + 6;
  sub_26225CF48(v651[6]);
  v653 = v771[0].columns[0].i64[1];
  v651[5] = v771[0].columns[0].i64[0];
  v651[6] = v653;
  v654 = v771[0].columns[1].i64[0];
  v651[7] = v771[0].columns[1].i64[0];
  if (v654)
  {
    v653[2] = v652;
    v771[0].columns[0].i64[0] = &v771[0].columns[0].i64[1];
    v771[0].columns[0].i64[1] = 0;
    v771[0].columns[1].i64[0] = 0;
    v653 = 0;
  }

  else
  {
    v651[5] = v652;
  }

  sub_26225CF48(v653);
  v787[0].data = &v738;
  v657 = sub_26225E6DC(v182 + 152, v738);
  sub_26225EF98(a1, v657 + 5);
  sub_26225CE9C(v729);
  sub_26225CF48(v732[0]);

  v658 = *MEMORY[0x277D85DE8];
}

void sub_2622646CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41)
{
  sub_26225CE9C(a38);
  sub_26225CF48(a41);

  _Unwind_Resume(a1);
}

void *sub_262264EB4(void *a1)
{
  a1[19] = &unk_2874EEC38;
  v2 = a1[35];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  *a1 = &unk_2874EEB10;
  v3 = a1[16];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  return a1;
}

id sub_262264F2C(uint64_t a1, uint64_t a2, void *a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v4 = a3;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v53, v61, 16);
  if (v8)
  {
    v9 = *v54;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v54 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v53 + 1) + 8 * i);
        v12 = objc_msgSend_parentIdentifier(v11, v6, v7, v49.i64[0]);
        v15 = v12;
        if (v12)
        {
          v16 = objc_msgSend_UUIDString(v12, v13, v14);
          v17 = v16;
          v20 = objc_msgSend_UTF8String(v16, v18, v19);
          sub_2621D0F64(__p, v20);

          objc_msgSend_quad(v11, v21, v22);
          v50 = v23;
          v49 = v24;
          v25 = sub_26225E9A4(a2, __p);
          if (a2 + 8 != v25)
          {
            sub_26225EA24(v58, v25 + 64);
            v28 = vsub_f32(v60, v59);
            v29 = vaddv_f32(vmul_f32(vsub_f32(*v50.i8, v59), v28));
            v30 = vaddv_f32(vmul_f32(v28, v28));
            if (v30 < 0.000001)
            {
              v30 = 0.000001;
            }

            *&v31 = vmla_n_f32(v59, v28, v29 / v30);
            v32 = vsub_f32(*&v31, v59);
            v33 = vsub_f32(*&v31, v60);
            if (vaddv_f32(vmul_f32(v32, v33)) > 0.00001)
            {
              v34 = vmul_f32(v32, v32);
              v35 = vmul_f32(v33, v33);
              v36 = vsqrt_f32(vadd_f32(vzip1_s32(v34, v35), vzip2_s32(v34, v35)));
              *&v31 = vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(vdup_lane_s32(v36, 1), v36)), 0), v60, v59);
            }

            *&v37 = vmla_n_f32(v59, v28, vaddv_f32(vmul_f32(vsub_f32(*v49.i8, v59), v28)) / v30);
            v38 = vsub_f32(*&v37, v59);
            v39 = vsub_f32(*&v37, v60);
            if (vaddv_f32(vmul_f32(v38, v39)) > 0.00001)
            {
              v40 = vmul_f32(v38, v38);
              v41 = vmul_f32(v39, v39);
              v42 = vsqrt_f32(vadd_f32(vzip1_s32(v40, v41), vzip2_s32(v40, v41)));
              *&v37 = vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(vdup_lane_s32(v42, 1), v42)), 0), v60, v59);
            }

            v43 = vsub_f32(*v50.i8, *&v31);
            if (sqrtf(vaddv_f32(vmul_f32(v43, v43))) > 0.000001 || (v44 = vsub_f32(*v49.i8, *&v37), sqrtf(vaddv_f32(vmul_f32(v44, v44))) > 0.000001))
            {
              *&v45 = v31;
              *(&v45 + 1) = vextq_s8(v50, v50, 8uLL).u64[0];
              *&v46 = v37;
              *(&v46 + 1) = *(&v45 + 1);
              *(&v37 + 1) = vextq_s8(v49, v49, 8uLL).u64[0];
              *(&v31 + 1) = *(&v37 + 1);
              src[0] = v45;
              src[1] = v46;
              src[2] = v37;
              src[3] = v31;
              if (v11)
              {
                objc_copyStruct(v11 + 272, src, 64, 1, 0);
              }

              if (objc_msgSend_individualUpdate(v11, v26, v27, v49.i64[0]) == 2 && v11)
              {
                v11[105] = 1;
              }
            }

            sub_26225CFEC(v58);
          }

          if (v52 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v53, v61, 16);
    }

    while (v8);
  }

  v47 = *MEMORY[0x277D85DE8];

  return v4;
}

void sub_2622652C4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = 126 - 2 * __clz((v4 - v3) >> 4);
  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  sub_262265680(v3, v4, v6, 1);
  v7 = *a2;
  v8 = a2[1];
  if (*a2 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      v10 = v9;
      if (v9 >= 0x11)
      {
        do
        {
          v11 = *(v10 - 32);
          v12 = vsubq_f32(*(v10 - 16), v11).u64[0];
          v11.i64[0] = vsubq_f32(*v7, v11).u64[0];
          if ((vmuls_lane_f32(-v11.f32[0], v12, 1) + (v12.f32[0] * v11.f32[1])) > 0.0)
          {
            break;
          }

          v9 -= 16;
          v10 -= 16;
        }

        while (v10 > 0x10);
      }

      if (!v9 || (v13 = vmovn_s32(vmvnq_s8(vceqq_f32(*(v10 - 16), *v7))), v13.i8[0] & 1 | v13.i8[2] & 1))
      {
        v14 = v9;
        if (((v9 >> 4) + 1) >> 60)
        {
          sub_2621CBEB0();
        }

        if (v9 >> 4 != -1)
        {
          sub_2621CBF10((v9 >> 4) + 1);
        }

        v15 = (16 * (v9 >> 4));
        *v15 = *v7;
        v9 = &v15[1];
        memcpy(0, 0, v14);
      }

      ++v7;
    }

    while (v7 != v8);
    v7 = *a2;
    v8 = a2[1];
  }

  *a1 = 0;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v8 == v7)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0;
    do
    {
      --v8;
      v17 = v16;
      if (v16 >= 0x11)
      {
        do
        {
          v18 = *(v17 - 32);
          v19 = vsubq_f32(*(v17 - 16), v18).u64[0];
          v18.i64[0] = vsubq_f32(*v8, v18).u64[0];
          if ((vmuls_lane_f32(-v18.f32[0], v19, 1) + (v19.f32[0] * v18.f32[1])) > 0.0)
          {
            break;
          }

          v16 -= 16;
          v17 -= 16;
        }

        while (v17 > 0x10);
      }

      if (v16)
      {
        v20 = vmovn_s32(vmvnq_s8(vceqq_f32(*(v17 - 16), *v8)));
        if (!(v20.i8[0] & 1 | v20.i8[2] & 1))
        {
          continue;
        }
      }

      v21 = v16;
      v22 = v16 >> 4;
      if (((v16 >> 4) + 1) >> 60)
      {
        sub_2621CBEB0();
      }

      if (v16 >> 4 != -1)
      {
        sub_2621CBF10((v16 >> 4) + 1);
      }

      *(16 * v22) = *v8;
      v16 = 16 * v22 + 16;
      memcpy(0, 0, v21);
    }

    while (v8 != v7);
  }

  if (v16 >= 0x11)
  {
    sub_2622669D0(a1, *(a1 + 8), 0x10, (v16 - 16), (v16 - 32) >> 4);
  }
}

void sub_262265634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  v12 = *a10;
  if (*a10)
  {
    *(a10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262265680(uint64_t result, float32x4_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = a2 - 2;
  v10 = a2 - 3;
  v11 = v7;
  while (1)
  {
    v7 = v11;
    v12 = a2 - v11;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      v126 = vmovn_s32(vcgtq_f32(*v11, *v8));
      if (vmovn_s32(vmvnq_s8(vceqq_f32(*v8, *v11))).u8[0])
      {
        if ((v126.i8[0] & 1) == 0)
        {
          return result;
        }
      }

      else if ((v126.i8[2] & 1) == 0)
      {
        return result;
      }

      v191 = *v11;
      goto LABEL_370;
    }

LABEL_10:
    if (v12 <= 23)
    {
      v139 = v11 + 1;
      v141 = v11 == a2 || v139 == a2;
      if (a4)
      {
        if (v141)
        {
          return result;
        }

        v142 = 0;
        v143 = v11;
        while (1)
        {
          v144 = v143;
          v143 = v139;
          v145 = v144[1];
          v146 = vmovn_s32(vmvnq_s8(vceqq_f32(v145, *v144))).u8[0];
          v147 = vmovn_s32(vcgtq_f32(*v144, v145));
          if (v146)
          {
            if ((v147.i8[0] & 1) == 0)
            {
              goto LABEL_242;
            }
          }

          else if ((v147.i8[2] & 1) == 0)
          {
            goto LABEL_242;
          }

          v148 = v144[1];
          v144[1] = *v144;
          v149 = v11;
          if (v144 == v11)
          {
            goto LABEL_241;
          }

          v150 = v142;
          while (1)
          {
            v151 = *(&v11[-1] + v150);
            if (v148.f32[0] != *&v151)
            {
              if (v148.f32[0] >= *&v151)
              {
                v149 = (v11 + v150);
                goto LABEL_241;
              }

              goto LABEL_238;
            }

            if (v148.f32[1] >= *(&v151 + 1))
            {
              break;
            }

LABEL_238:
            --v144;
            *(v11 + v150) = *(v11 + v150 - 16);
            v150 -= 16;
            if (!v150)
            {
              v149 = v11;
              goto LABEL_241;
            }
          }

          v149 = v144;
LABEL_241:
          *v149 = v148;
LABEL_242:
          v139 = v143 + 1;
          v142 += 16;
          if (&v143[1] == a2)
          {
            return result;
          }
        }
      }

      if (v141)
      {
        return result;
      }

      while (2)
      {
        v196 = v7;
        v7 = v139;
        v197 = v196[1];
        v198 = vmovn_s32(vmvnq_s8(vceqq_f32(v197, *v196))).u8[0];
        v199 = vmovn_s32(vcgtq_f32(*v196, v197));
        if (v198)
        {
          if ((v199.i8[0] & 1) == 0)
          {
LABEL_326:
            ++v139;
            if (&v7[1] == a2)
            {
              return result;
            }

            continue;
          }
        }

        else if ((v199.i8[2] & 1) == 0)
        {
          goto LABEL_326;
        }

        break;
      }

      v200 = *v139;
      LODWORD(v201) = HIDWORD(v139->i64[0]);
      do
      {
        while (1)
        {
          v202 = v196;
          v196[1] = *v196;
          v203 = v196[-1];
          --v196;
          v204 = v203.f32[1];
          v205 = v200.f32[0] < v203.f32[0];
          if (v200.f32[0] == v203.f32[0])
          {
            break;
          }

          if (!v205)
          {
            goto LABEL_325;
          }
        }
      }

      while (v201 < v204);
LABEL_325:
      *v202 = v200;
      goto LABEL_326;
    }

    if (!a3)
    {
      if (v11 == a2)
      {
        return result;
      }

      v152 = (v12 - 2) >> 1;
      v153 = v152;
      while (2)
      {
        v154 = v153;
        if (v152 < v153)
        {
          goto LABEL_270;
        }

        v155 = (2 * v153) | 1;
        v156 = &v11[v155];
        if (2 * v154 + 2 >= v12)
        {
          goto LABEL_253;
        }

        v157 = v156[1];
        v158 = vmovn_s32(vmvnq_s8(vceqq_f32(*v156, v157))).u8[0];
        v159 = vmovn_s32(vcgtq_f32(v157, *v156)).u32[0];
        if (v158)
        {
          if ((v159 & 1) == 0)
          {
LABEL_253:
            v160 = v11[v154];
            v161 = vmovn_s32(vcgtq_f32(v160, *v156)).u32[0];
            if (vmovn_s32(vmvnq_s8(vceqq_f32(*v156, v160))).u8[0])
            {
              if (v161)
              {
                goto LABEL_270;
              }
            }

            else if ((v161 & 0x10000) != 0)
            {
              goto LABEL_270;
            }

            v162 = v11[v154];
            v11[v154] = *v156;
            if (v152 < v155)
            {
LABEL_258:
              v163 = v156;
LABEL_269:
              *v163 = v162;
LABEL_270:
              v153 = v154 - 1;
              if (v154)
              {
                continue;
              }

              while (2)
              {
                v170 = 0;
                v171 = *v11;
                v172 = v11;
LABEL_272:
                v173 = v172;
                v174 = &v172[v170];
                v172 = v174 + 1;
                v175 = 2 * v170;
                v170 = (2 * v170) | 1;
                v176 = v175 + 2;
                if (v176 < v12)
                {
                  v178 = v174[2];
                  v177 = v174 + 2;
                  v179 = v177[-1];
                  v180 = vmovn_s32(vcgtq_f32(v178, v179)).u32[0];
                  if (vmovn_s32(vmvnq_s8(vceqq_f32(v179, v178))).u8[0])
                  {
                    if ((v180 & 1) == 0)
                    {
                      goto LABEL_278;
                    }
                  }

                  else if ((v180 & 0x10000) == 0)
                  {
                    goto LABEL_278;
                  }

                  v172 = v177;
                  v170 = v176;
                }

LABEL_278:
                *v173 = *v172;
                if (v170 > ((v12 - 2) >> 1))
                {
                  if (v172 == --a2)
                  {
                    goto LABEL_292;
                  }

                  *v172 = *a2;
                  *a2 = v171;
                  v181 = (v172 - v11 + 16) >> 4;
                  v182 = v181 - 2;
                  if (v181 < 2)
                  {
                    goto LABEL_293;
                  }

                  v183 = v182 >> 1;
                  v184 = &v11[v182 >> 1];
                  v185 = vmovn_s32(vcgtq_f32(*v172, *v184));
                  if ((vmovn_s32(vmvnq_s8(vceqq_f32(*v184, *v172))).u8[0] & 1) == 0)
                  {
                    if ((v185.i8[2] & 1) == 0)
                    {
                      goto LABEL_293;
                    }

LABEL_285:
                    v171 = *v172;
                    *v172 = *v184;
                    if (v182 >= 2)
                    {
                      while (1)
                      {
                        v186 = v183 - 1;
                        v183 = (v183 - 1) >> 1;
                        v172 = &v11[v183];
                        v187 = COERCE_FLOAT(*v172) < v171.f32[0];
                        if (COERCE_FLOAT(*v172) == v171.f32[0])
                        {
                          v187 = COERCE_FLOAT(HIDWORD(v172->i64[0])) < v171.f32[1];
                        }

                        if (!v187)
                        {
                          break;
                        }

                        *v184 = *v172;
                        v184 = &v11[v183];
                        if (v186 <= 1)
                        {
                          goto LABEL_292;
                        }
                      }
                    }

                    v172 = v184;
LABEL_292:
                    *v172 = v171;
                    goto LABEL_293;
                  }

                  if (v185.i8[0])
                  {
                    goto LABEL_285;
                  }

LABEL_293:
                  if (v12-- <= 2)
                  {
                    return result;
                  }

                  continue;
                }

                goto LABEL_272;
              }
            }

            while (2)
            {
              v164 = 2 * v155;
              v155 = (2 * v155) | 1;
              v163 = &v11[v155];
              v165 = v164 + 2;
              if (v165 < v12)
              {
                v166 = v163[1];
                v167 = vmovn_s32(vmvnq_s8(vceqq_f32(*v163, v166))).u8[0];
                v168 = vmovn_s32(vcgtq_f32(v166, *v163)).u32[0];
                if (v167)
                {
                  if ((v168 & 1) == 0)
                  {
                    goto LABEL_265;
                  }

LABEL_264:
                  ++v163;
                  v155 = v165;
                }

                else if ((v168 & 0x10000) != 0)
                {
                  goto LABEL_264;
                }
              }

LABEL_265:
              v169 = COERCE_FLOAT(*v163) < v162.f32[0];
              if (COERCE_FLOAT(*v163) == v162.f32[0])
              {
                v169 = COERCE_FLOAT(HIDWORD(v163->i64[0])) < v162.f32[1];
              }

              if (v169)
              {
                goto LABEL_258;
              }

              *v156 = *v163;
              v156 = v163;
              if (v152 < v155)
              {
                goto LABEL_269;
              }

              continue;
            }
          }
        }

        else if ((v159 & 0x10000) == 0)
        {
          goto LABEL_253;
        }

        break;
      }

      ++v156;
      v155 = 2 * v154 + 2;
      goto LABEL_253;
    }

    v13 = &v11[v12 >> 1];
    v14 = v13;
    if (v12 >= 0x81)
    {
      v15 = *v13;
      v16 = vmovn_s32(vcgtq_f32(*v11, *v13)).u32[0];
      if (vmovn_s32(vmvnq_s8(vceqq_f32(*v13, *v11))).u8[0])
      {
        if ((v16 & 1) == 0)
        {
          goto LABEL_15;
        }

LABEL_24:
        v23 = vmovn_s32(vmvnq_s8(vceqq_f32(*v8, v15))).u8[0];
        v24 = vmovn_s32(vcgtq_f32(v15, *v8)).u32[0];
        if (v23)
        {
          v25 = v24;
        }

        else
        {
          v25 = BYTE2(v24);
        }

        v35 = a2 - 1;
        if ((v25 & 1) == 0)
        {
          v36 = *v11;
          *v11 = *v13;
          *v13 = v36;
          v37 = COERCE_FLOAT(*v8) < v36.f32[0];
          if (COERCE_FLOAT(*v8) == v36.f32[0])
          {
            v37 = COERCE_FLOAT(HIDWORD(v8->i64[0])) < v36.f32[1];
          }

          v35 = a2 - 1;
          v38 = v13;
          if (!v37)
          {
            goto LABEL_51;
          }

LABEL_50:
          *v38 = *v35;
          *v35 = v36;
          goto LABEL_51;
        }

LABEL_49:
        v36 = *v11;
        v38 = v11;
        goto LABEL_50;
      }

      if ((v16 & 0x10000) != 0)
      {
        goto LABEL_24;
      }

LABEL_15:
      v17 = vmovn_s32(vmvnq_s8(vceqq_f32(*v8, v15))).u8[0];
      v18 = vmovn_s32(vcgtq_f32(v15, *v8)).u32[0];
      if (v17)
      {
        if ((v18 & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      else if ((v18 & 0x10000) == 0)
      {
        goto LABEL_51;
      }

      v29 = *v13;
      *v13 = *v8;
      *v8 = v29;
      v30 = vmovn_s32(vcgtq_f32(*v11, *v13)).u32[0];
      if (vmovn_s32(vmvnq_s8(vceqq_f32(*v13, *v11))).u8[0])
      {
        v31 = v30;
      }

      else
      {
        v31 = BYTE2(v30);
      }

      v35 = &v11[v12 >> 1];
      if (v31)
      {
        goto LABEL_49;
      }

LABEL_51:
      v42 = v11 + 1;
      v43 = v11[1];
      v44 = v13 - 1;
      v45 = v13[-1];
      v46 = vmovn_s32(vmvnq_s8(vceqq_f32(v45, v43))).u8[0];
      v47 = vmovn_s32(vcgtq_f32(v43, v45)).u32[0];
      if (v46)
      {
        if ((v47 & 1) == 0)
        {
          goto LABEL_53;
        }

LABEL_57:
        v50 = vmovn_s32(vmvnq_s8(vceqq_f32(*v9, v45))).u8[0];
        v51 = vmovn_s32(vcgtq_f32(v45, *v9)).u32[0];
        if (v50)
        {
          v52 = v51;
        }

        else
        {
          v52 = BYTE2(v51);
        }

        v56 = a2 - 2;
        if ((v52 & 1) == 0)
        {
          v57 = *v42;
          *v42 = *v44;
          *v44 = v57;
          v58 = COERCE_FLOAT(*v9) < v57.f32[0];
          if (COERCE_FLOAT(*v9) == v57.f32[0])
          {
            v58 = COERCE_FLOAT(HIDWORD(v9->i64[0])) < v57.f32[1];
          }

          v56 = a2 - 2;
          v42 = v13 - 1;
          if (!v58)
          {
            goto LABEL_76;
          }

LABEL_75:
          *v42 = *v56;
          *v56 = v57;
          goto LABEL_76;
        }

LABEL_74:
        v57 = *v42;
        goto LABEL_75;
      }

      if ((v47 & 0x10000) != 0)
      {
        goto LABEL_57;
      }

LABEL_53:
      v48 = vmovn_s32(vmvnq_s8(vceqq_f32(*v9, v45))).u8[0];
      v49 = vmovn_s32(vcgtq_f32(v45, *v9)).u32[0];
      if (v48)
      {
        if ((v49 & 1) == 0)
        {
          goto LABEL_76;
        }
      }

      else if ((v49 & 0x10000) == 0)
      {
        goto LABEL_76;
      }

      v53 = *v44;
      *v44 = *v9;
      *v9 = v53;
      v54 = vmovn_s32(vcgtq_f32(*v42, *v44)).u32[0];
      if (vmovn_s32(vmvnq_s8(vceqq_f32(*v44, *v42))).u8[0])
      {
        v55 = v54;
      }

      else
      {
        v55 = BYTE2(v54);
      }

      v56 = v13 - 1;
      if (v55)
      {
        goto LABEL_74;
      }

LABEL_76:
      v59 = v11 + 2;
      v60 = v11[2];
      v62 = v13[1];
      v61 = v13 + 1;
      v63 = v62;
      v64 = vmovn_s32(vmvnq_s8(vceqq_f32(v62, v60))).u8[0];
      v65 = vmovn_s32(vcgtq_f32(v60, v62)).u32[0];
      if (v64)
      {
        if ((v65 & 1) == 0)
        {
          goto LABEL_78;
        }

LABEL_82:
        v68 = vmovn_s32(vmvnq_s8(vceqq_f32(*v10, v63))).u8[0];
        v69 = vmovn_s32(vcgtq_f32(v63, *v10)).u32[0];
        if (v68)
        {
          v70 = v69;
        }

        else
        {
          v70 = BYTE2(v69);
        }

        v74 = a2 - 3;
        if ((v70 & 1) == 0)
        {
          v75 = *v59;
          *v59 = *v61;
          *v61 = v75;
          v76 = COERCE_FLOAT(*v10) < v75.f32[0];
          if (COERCE_FLOAT(*v10) == v75.f32[0])
          {
            v76 = COERCE_FLOAT(HIDWORD(v10->i64[0])) < v75.f32[1];
          }

          v74 = a2 - 3;
          v59 = v61;
          if (!v76)
          {
            goto LABEL_97;
          }

LABEL_96:
          *v59 = *v74;
          *v74 = v75;
          goto LABEL_97;
        }

LABEL_95:
        v75 = *v59;
        goto LABEL_96;
      }

      if ((v65 & 0x10000) != 0)
      {
        goto LABEL_82;
      }

LABEL_78:
      v66 = vmovn_s32(vmvnq_s8(vceqq_f32(*v10, v63))).u8[0];
      v67 = vmovn_s32(vcgtq_f32(v63, *v10)).u32[0];
      if (v66)
      {
        if ((v67 & 1) == 0)
        {
          goto LABEL_97;
        }
      }

      else if ((v67 & 0x10000) == 0)
      {
        goto LABEL_97;
      }

      v71 = *v61;
      *v61 = *v10;
      *v10 = v71;
      v72 = vmovn_s32(vcgtq_f32(*v59, *v61)).u32[0];
      if (vmovn_s32(vmvnq_s8(vceqq_f32(*v61, *v59))).u8[0])
      {
        v73 = v72;
      }

      else
      {
        v73 = BYTE2(v72);
      }

      v74 = v61;
      if (v73)
      {
        goto LABEL_95;
      }

LABEL_97:
      v77 = *v14;
      v78 = *v44;
      v79 = vmovn_s32(vcgtq_f32(*v44, *v14)).u32[0];
      if (vmovn_s32(vmvnq_s8(vceqq_f32(*v14, *v44))).u8[0])
      {
        if ((v79 & 1) == 0)
        {
          goto LABEL_99;
        }

LABEL_103:
        v82 = *v61;
        v83 = vmovn_s32(vcgtq_f32(v77, *v61)).u32[0];
        if (vmovn_s32(vmvnq_s8(vceqq_f32(*v61, v77))).u8[0])
        {
          if ((v83 & 1) == 0)
          {
LABEL_113:
            v87 = *v44;
            *v44 = *v14;
            *v14 = v87;
            v88 = v82.f32[0] < v87.f32[0];
            if (v82.f32[0] == v87.f32[0])
            {
              v88 = v82.f32[1] < v87.f32[1];
            }

            v44 = v14;
            if (!v88)
            {
              goto LABEL_118;
            }

LABEL_117:
            *v44 = *v61;
            *v61 = v87;
LABEL_118:
            v89 = *v11;
            *v11 = *v14;
            *v14 = v89;
            goto LABEL_119;
          }
        }

        else if ((v83 & 0x10000) == 0)
        {
          goto LABEL_113;
        }
      }

      else
      {
        if ((v79 & 0x10000) != 0)
        {
          goto LABEL_103;
        }

LABEL_99:
        v80 = vmovn_s32(vmvnq_s8(vceqq_f32(*v61, v77))).u8[0];
        v81 = vmovn_s32(vcgtq_f32(v77, *v61)).u32[0];
        if (v80)
        {
          if ((v81 & 1) == 0)
          {
            goto LABEL_118;
          }
        }

        else if ((v81 & 0x10000) == 0)
        {
          goto LABEL_118;
        }

        v84 = *v14;
        v85 = *v61;
        *v14 = *v61;
        *v61 = v84;
        v86 = v85.f32[0] < v78.f32[0];
        if (v85.f32[0] == v78.f32[0])
        {
          v86 = v85.f32[1] < v78.f32[1];
        }

        v61 = v14;
        if (!v86)
        {
          goto LABEL_118;
        }
      }

      v87 = *v44;
      goto LABEL_117;
    }

    v19 = *v11;
    v20 = vmovn_s32(vcgtq_f32(*v13, *v11)).u32[0];
    if (vmovn_s32(vmvnq_s8(vceqq_f32(*v11, *v13))).u8[0])
    {
      if (v20)
      {
        goto LABEL_27;
      }
    }

    else if ((v20 & 0x10000) != 0)
    {
LABEL_27:
      v26 = vmovn_s32(vmvnq_s8(vceqq_f32(*v8, v19))).u8[0];
      v27 = vmovn_s32(vcgtq_f32(v19, *v8)).u32[0];
      if (v26)
      {
        v28 = v27;
      }

      else
      {
        v28 = BYTE2(v27);
      }

      v39 = a2 - 1;
      if ((v28 & 1) == 0)
      {
        v40 = *v14;
        *v14 = *v11;
        *v11 = v40;
        v41 = COERCE_FLOAT(*v8) < v40.f32[0];
        if (COERCE_FLOAT(*v8) == v40.f32[0])
        {
          v41 = COERCE_FLOAT(HIDWORD(v8->i64[0])) < v40.f32[1];
        }

        v39 = a2 - 1;
        v14 = v11;
        if (!v41)
        {
          goto LABEL_119;
        }

        goto LABEL_71;
      }

LABEL_70:
      v40 = *v14;
LABEL_71:
      *v14 = *v39;
      *v39 = v40;
      goto LABEL_119;
    }

    v21 = vmovn_s32(vmvnq_s8(vceqq_f32(*v8, v19))).u8[0];
    v22 = vmovn_s32(vcgtq_f32(v19, *v8)).u32[0];
    if (v21)
    {
      if ((v22 & 1) == 0)
      {
        goto LABEL_119;
      }

LABEL_33:
      v32 = *v11;
      *v11 = *v8;
      *v8 = v32;
      v33 = vmovn_s32(vcgtq_f32(*v13, *v11)).u32[0];
      if (vmovn_s32(vmvnq_s8(vceqq_f32(*v11, *v13))).u8[0])
      {
        v34 = v33;
      }

      else
      {
        v34 = BYTE2(v33);
      }

      v39 = v11;
      if ((v34 & 1) == 0)
      {
        goto LABEL_119;
      }

      goto LABEL_70;
    }

    if ((v22 & 0x10000) != 0)
    {
      goto LABEL_33;
    }

LABEL_119:
    --a3;
    if (a4)
    {
      goto LABEL_131;
    }

    v90 = v11[-1];
    v91 = vmovn_s32(vmvnq_s8(vceqq_f32(v90, *v11))).u8[0];
    v92 = vmovn_s32(vcgtq_f32(*v11, v90)).u32[0];
    if (v91)
    {
      if ((v92 & 1) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_131;
    }

    if ((v92 & 0x10000) != 0)
    {
LABEL_131:
      v96 = v11 + 1;
      v97 = *v11;
      LODWORD(v98) = HIDWORD(v11->i64[0]);
      while (COERCE_FLOAT(*v96) != v97.f32[0])
      {
        if (COERCE_FLOAT(*v96) >= v97.f32[0])
        {
          goto LABEL_137;
        }

LABEL_136:
        ++v96;
      }

      if (COERCE_FLOAT(HIDWORD(v96->i64[0])) < v98)
      {
        goto LABEL_136;
      }

LABEL_137:
      v99 = v96 - 1;
      i = a2 - 1;
      if (&v96[-1] == v11)
      {
        i = a2;
        if (v96 < a2)
        {
          for (i = a2 - 1; ; --i)
          {
            v102 = *i;
            if (COERCE_FLOAT(*i) == v97.f32[0])
            {
              if (v96 >= i || v102.f32[1] < v98)
              {
                break;
              }
            }

            else if (v96 >= i || v102.f32[0] < v97.f32[0])
            {
              break;
            }
          }
        }
      }

      else
      {
        while (1)
        {
          v101 = COERCE_FLOAT(*i) < v97.f32[0];
          if (COERCE_FLOAT(*i) == v97.f32[0])
          {
            v101 = COERCE_FLOAT(HIDWORD(i->i64[0])) < v98;
          }

          if (v101)
          {
            break;
          }

          --i;
        }
      }

      if (v96 >= i)
      {
        goto LABEL_166;
      }

      v103 = v96;
      v104 = i;
      while (2)
      {
        v105 = *v103;
        *v103++ = *v104;
        *v104 = v105;
        while (2)
        {
          if (COERCE_FLOAT(*v103) != v97.f32[0])
          {
            if (COERCE_FLOAT(*v103) >= v97.f32[0])
            {
              break;
            }

            goto LABEL_158;
          }

          if (COERCE_FLOAT(HIDWORD(v103->i64[0])) < v98)
          {
LABEL_158:
            ++v103;
            continue;
          }

          break;
        }

        v99 = v103 - 1;
        do
        {
          while (1)
          {
            v106 = v104[-1];
            --v104;
            v107 = v106.f32[1];
            v108 = v106.f32[0] < v97.f32[0];
            if (v106.f32[0] == v97.f32[0])
            {
              break;
            }

            if (v108)
            {
              goto LABEL_165;
            }
          }
        }

        while (v107 >= v98);
LABEL_165:
        if (v103 < v104)
        {
          continue;
        }

        break;
      }

LABEL_166:
      if (v99 != v11)
      {
        *v11 = *v99;
      }

      *v99 = v97;
      if (v96 < i)
      {
LABEL_171:
        result = sub_262265680(v7, v99, a3, a4 & 1);
        a4 = 0;
        v11 = v99 + 1;
      }

      else
      {
        v109 = sub_262266C3C(v11, v99);
        v11 = v99 + 1;
        result = sub_262266C3C(v99 + 1, a2);
        if (result)
        {
          a2 = v99;
          if (v109)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v109)
        {
          goto LABEL_171;
        }
      }
    }

    else
    {
LABEL_122:
      v93 = *v11;
      v94 = *v8;
      LODWORD(v95) = HIDWORD(v11->i64[0]);
      if (COERCE_FLOAT(*v11) == COERCE_FLOAT(*v8))
      {
        if (v95 < v94.f32[1])
        {
LABEL_124:
          for (++v11; ; ++v11)
          {
            if (v93.f32[0] == COERCE_FLOAT(*v11))
            {
              if (v95 < COERCE_FLOAT(HIDWORD(v11->i64[0])))
              {
                goto LABEL_179;
              }
            }

            else if (v93.f32[0] < COERCE_FLOAT(*v11))
            {
              goto LABEL_179;
            }
          }
        }
      }

      else if (COERCE_FLOAT(*v11) < COERCE_FLOAT(*v8))
      {
        goto LABEL_124;
      }

      for (++v11; v11 < a2; ++v11)
      {
        v110 = v93.f32[0] < COERCE_FLOAT(*v11);
        if (v93.f32[0] == COERCE_FLOAT(*v11))
        {
          v110 = v95 < COERCE_FLOAT(HIDWORD(v11->i64[0]));
        }

        if (v110)
        {
          break;
        }
      }

LABEL_179:
      j = a2;
      if (v11 < a2)
      {
        for (j = a2 - 1; ; --j)
        {
          if (v93.f32[0] == v94.f32[0])
          {
            if (v93.f32[1] >= v94.f32[1])
            {
              break;
            }
          }

          else if (v93.f32[0] >= v94.f32[0])
          {
            break;
          }

          v112 = j[-1];
          v94.i64[0] = v112.i64[0];
        }
      }

      while (v11 < j)
      {
        v113 = *v11;
        *v11++ = *j;
        *j = v113;
        while (1)
        {
          v114 = v93.f32[0] < COERCE_FLOAT(*v11);
          if (v93.f32[0] == COERCE_FLOAT(*v11))
          {
            v114 = v93.f32[1] < COERCE_FLOAT(HIDWORD(v11->i64[0]));
          }

          if (v114)
          {
            break;
          }

          ++v11;
        }

        do
        {
          while (1)
          {
            v115 = j[-1];
            --j;
            v116 = v115.f32[1];
            v117 = v93.f32[0] < v115.f32[0];
            if (v93.f32[0] != v115.f32[0])
            {
              break;
            }

            if (v93.f32[1] >= v116)
            {
              goto LABEL_195;
            }
          }
        }

        while (v117);
LABEL_195:
        ;
      }

      v118 = v11 - 1;
      if (&v11[-1] != v7)
      {
        *v7 = *v118;
      }

      a4 = 0;
      *v118 = v93;
    }
  }

  if (v12 == 3)
  {
    v127 = v11 + 1;
    v128 = v11[1];
    v129 = vmovn_s32(vcgtq_f32(*v11, v128)).u32[0];
    if (vmovn_s32(vmvnq_s8(vceqq_f32(v128, *v11))).u8[0])
    {
      if ((v129 & 1) == 0)
      {
LABEL_211:
        v130 = vmovn_s32(vmvnq_s8(vceqq_f32(*v8, v128))).u8[0];
        v131 = vmovn_s32(vcgtq_f32(v128, *v8));
        if (v130)
        {
          if ((v131.i8[0] & 1) == 0)
          {
            return result;
          }
        }

        else if ((v131.i8[2] & 1) == 0)
        {
          return result;
        }

        v228 = v11[1];
        v11[1] = *v8;
        *v8 = v228;
        v229 = v11[1];
        v230 = vmovn_s32(vmvnq_s8(vceqq_f32(v229, *v11))).u8[0];
        v231 = vmovn_s32(vcgtq_f32(*v11, v229));
        if (v230)
        {
          if ((v231.i8[0] & 1) == 0)
          {
            return result;
          }
        }

        else if ((v231.i8[2] & 1) == 0)
        {
          return result;
        }

        goto LABEL_369;
      }
    }

    else if ((v129 & 0x10000) == 0)
    {
      goto LABEL_211;
    }

    v192 = vmovn_s32(vmvnq_s8(vceqq_f32(*v8, v128))).u8[0];
    v193 = vmovn_s32(vcgtq_f32(v128, *v8)).u32[0];
    if (v192)
    {
      if ((v193 & 1) == 0)
      {
        goto LABEL_308;
      }
    }

    else if ((v193 & 0x10000) == 0)
    {
LABEL_308:
      v191 = *v11;
      *v11 = v11[1];
      v11[1] = v191;
      v194 = COERCE_FLOAT(*v8) < v191.f32[0];
      if (COERCE_FLOAT(*v8) == v191.f32[0])
      {
        v194 = COERCE_FLOAT(HIDWORD(v8->i64[0])) < v191.f32[1];
      }

      v7 = v11 + 1;
      if (!v194)
      {
        return result;
      }

LABEL_370:
      *v7 = *v8;
      *v8 = v191;
      return result;
    }

    v127 = a2 - 1;
LABEL_369:
    v191 = *v11;
    v8 = v127;
    goto LABEL_370;
  }

  if (v12 == 4)
  {
    v132 = v11 + 1;
    v133 = v11[1];
    v134 = v11 + 2;
    v135 = *v11;
    if (vmovn_s32(vmvnq_s8(vceqq_f32(v133, *v11))).u8[0])
    {
      if ((vmovn_s32(vcgtq_f32(v135, v133)).u8[0] & 1) == 0)
      {
LABEL_216:
        v136 = *v134;
        v137 = vmovn_s32(vmvnq_s8(vceqq_f32(*v134, v133))).u8[0];
        v138 = vmovn_s32(vcgtq_f32(v133, *v134)).u32[0];
        if (v137)
        {
          if ((v138 & 1) == 0)
          {
            goto LABEL_385;
          }
        }

        else if ((v138 & 0x10000) == 0)
        {
LABEL_385:
          v238 = vmovn_s32(vmvnq_s8(vceqq_f32(*v8, v136))).u8[0];
          v239 = vmovn_s32(vcgtq_f32(v136, *v8));
          if (v238)
          {
            if ((v239.i8[0] & 1) == 0)
            {
              return result;
            }
          }

          else if ((v239.i8[2] & 1) == 0)
          {
            return result;
          }

          v240 = *v134;
          *v134 = *v8;
          *v8 = v240;
          v241 = vmovn_s32(vcgtq_f32(*v132, *v134));
          if (vmovn_s32(vmvnq_s8(vceqq_f32(*v134, *v132))).u8[0])
          {
            if ((v241.i8[0] & 1) == 0)
            {
              return result;
            }
          }

          else if ((v241.i8[2] & 1) == 0)
          {
            return result;
          }

          v224 = v11[2];
          goto LABEL_394;
        }

        v136 = *v132;
        v232 = *v134;
        *v132 = *v134;
        *v134 = v136;
        v233 = v232.f32[0] < v135.f32[0];
        if (v232.f32[0] == v135.f32[0])
        {
          v233 = v232.f32[1] < v135.f32[1];
        }

        v234 = v11 + 1;
        if (!v233)
        {
          goto LABEL_385;
        }

        goto LABEL_379;
      }
    }

    else if ((vmovn_s32(vcgtq_f32(v135, v133)).i8[2] & 1) == 0)
    {
      goto LABEL_216;
    }

    v136 = *v134;
    if (vmovn_s32(vmvnq_s8(vceqq_f32(*v134, v133))).u8[0])
    {
      LOBYTE(v195) = vmovn_s32(vcgtq_f32(v133, v136)).u8[0];
    }

    else
    {
      v195 = vmovn_s32(vcgtq_f32(v133, v136)).i16[1];
    }

    v234 = v11 + 2;
    if ((v195 & 1) == 0)
    {
      v235 = *v11;
      *v11 = v11[1];
      v11[1] = v235;
      v237 = v136.f32[0] < v235.f32[0];
      if (v136.f32[0] == v235.f32[0])
      {
        v237 = v136.f32[1] < v235.f32[1];
      }

      v234 = v11 + 2;
      v236 = v11 + 1;
      if (!v237)
      {
        goto LABEL_385;
      }

      goto LABEL_384;
    }

LABEL_379:
    v235 = *v11;
    v236 = v11;
LABEL_384:
    *v236 = *v234;
    *v234 = v235;
    v136 = v11[2];
    goto LABEL_385;
  }

  if (v12 != 5)
  {
    goto LABEL_10;
  }

  v119 = v11 + 1;
  v120 = v11[1];
  v121 = v11 + 2;
  v122 = *v11;
  if (vmovn_s32(vmvnq_s8(vceqq_f32(v120, *v11))).u8[0])
  {
    if ((vmovn_s32(vcgtq_f32(v122, v120)).u8[0] & 1) == 0)
    {
      goto LABEL_203;
    }

LABEL_297:
    v123 = *v121;
    if (vmovn_s32(vmvnq_s8(vceqq_f32(*v121, v120))).u8[0])
    {
      if ((vmovn_s32(vcgtq_f32(v120, v123)).u8[0] & 1) == 0)
      {
        goto LABEL_299;
      }

LABEL_334:
      v119 = v11 + 2;
LABEL_335:
      v189 = *v11;
      v121 = v119;
      v119 = v11;
LABEL_336:
      *v119 = *v121;
      *v121 = v189;
      v123 = v11[2];
    }

    else
    {
      if (vmovn_s32(vcgtq_f32(v120, v123)).i8[2])
      {
        goto LABEL_334;
      }

LABEL_299:
      v189 = *v11;
      *v11 = v11[1];
      v11[1] = v189;
      v190 = v123.f32[0] < v189.f32[0];
      if (v123.f32[0] == v189.f32[0])
      {
        v190 = v123.f32[1] < v189.f32[1];
      }

      if (v190)
      {
        goto LABEL_336;
      }
    }
  }

  else
  {
    if (vmovn_s32(vcgtq_f32(v122, v120)).i8[2])
    {
      goto LABEL_297;
    }

LABEL_203:
    v123 = *v121;
    v124 = vmovn_s32(vmvnq_s8(vceqq_f32(*v121, v120))).u8[0];
    v125 = vmovn_s32(vcgtq_f32(v120, *v121)).u32[0];
    if (v124)
    {
      if ((v125 & 1) == 0)
      {
        goto LABEL_337;
      }
    }

    else if ((v125 & 0x10000) == 0)
    {
      goto LABEL_337;
    }

    v123 = *v119;
    v206 = *v121;
    *v119 = *v121;
    *v121 = v123;
    v207 = v206.f32[0] < v122.f32[0];
    if (v206.f32[0] == v122.f32[0])
    {
      v207 = v206.f32[1] < v122.f32[1];
    }

    if (v207)
    {
      goto LABEL_335;
    }
  }

LABEL_337:
  v208 = v11[3];
  v209 = vmovn_s32(vmvnq_s8(vceqq_f32(v208, v123))).u8[0];
  v210 = vmovn_s32(vcgtq_f32(v123, v208)).u32[0];
  if (v209)
  {
    if ((v210 & 1) == 0)
    {
      goto LABEL_350;
    }
  }

  else if ((v210 & 0x10000) == 0)
  {
    goto LABEL_350;
  }

  v208 = v11[2];
  v211 = v11[3];
  v212 = v11[1];
  v11[2] = v211;
  v11[3] = v208;
  v213 = v211.f32[0] < v212.f32[0];
  if (v211.f32[0] == v212.f32[0])
  {
    v213 = v211.f32[1] < v212.f32[1];
  }

  if (v213)
  {
    v214 = *v11;
    v215 = v11[1];
    v11[1] = v211;
    v11[2] = v215;
    v216 = v211.f32[0] < v214.f32[0];
    if (v211.f32[0] == v214.f32[0])
    {
      v216 = v211.f32[1] < v214.f32[1];
    }

    if (v216)
    {
      v217 = *v11;
      *v11 = v211;
      v11[1] = v217;
    }
  }

LABEL_350:
  v218 = vmovn_s32(vcgtq_f32(v208, *v8));
  if (vmovn_s32(vmvnq_s8(vceqq_f32(*v8, v208))).u8[0])
  {
    if ((v218.i8[0] & 1) == 0)
    {
      return result;
    }
  }

  else if ((v218.i8[2] & 1) == 0)
  {
    return result;
  }

  v219 = v11[3];
  v11[3] = *v8;
  *v8 = v219;
  v221 = v11[2];
  v220 = v11[3];
  v222 = vmovn_s32(vmvnq_s8(vceqq_f32(v220, v221))).u8[0];
  v223 = vmovn_s32(vcgtq_f32(v221, v220));
  if (v222)
  {
    if ((v223.i8[0] & 1) == 0)
    {
      return result;
    }
  }

  else if ((v223.i8[2] & 1) == 0)
  {
    return result;
  }

  v225 = v11[2];
  v224 = v11[3];
  v226 = v11[1];
  v11[2] = v224;
  v11[3] = v225;
  v227 = v224.f32[0] < v226.f32[0];
  if (v224.f32[0] == v226.f32[0])
  {
    v227 = v224.f32[1] < v226.f32[1];
  }

  if (v227)
  {
LABEL_394:
    v242 = *v11;
    v243 = v11[1];
    v11[1] = v224;
    v11[2] = v243;
    v244 = v224.f32[0] < v242.f32[0];
    if (v224.f32[0] == v242.f32[0])
    {
      v244 = v224.f32[1] < v242.f32[1];
    }

    if (v244)
    {
      v245 = *v11;
      *v11 = v224;
      v11[1] = v245;
    }
  }

  return result;
}

void sub_2622669D0(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v6 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 4)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 4);
    if (v12 >> 60)
    {
      sub_2621CBEB0();
    }

    v13 = v9 - v11;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    v15 = (__dst - v11) >> 4;
    if (v14)
    {
      sub_2621CBF10(v14);
    }

    v32 = 16 * v15;
    v33 = 16 * a5;
    v34 = (16 * v15);
    do
    {
      v35 = *v6++;
      *v34++ = v35;
      v33 -= 16;
    }

    while (v33);
    memcpy((v32 + 16 * a5), __dst, *(a1 + 8) - __dst);
    v36 = *a1;
    v37 = v32 + 16 * a5 + *(a1 + 8) - __dst;
    *(a1 + 8) = __dst;
    v38 = (__dst - v36);
    v39 = (v32 - (__dst - v36));
    memcpy(v39, v36, v38);
    v40 = *a1;
    *a1 = v39;
    *(a1 + 8) = v37;
    *(a1 + 16) = 0;
    if (v40)
    {

      operator delete(v40);
    }

    return;
  }

  v16 = v10 - __dst;
  v17 = (v10 - __dst) >> 4;
  if (v17 >= a5)
  {
    v28 = &__dst[16 * a5];
    v29 = &v10[-16 * a5];
    v30 = *(a1 + 8);
    while (v29 < v10)
    {
      v31 = *v29;
      v29 += 16;
      *v30++ = v31;
    }

    *(a1 + 8) = v30;
    if (v10 != v28)
    {
      memmove(&__dst[16 * a5], __dst, v10 - v28);
    }

    v27 = 16 * a5;
    v25 = __dst;
    v26 = v6;
    goto LABEL_29;
  }

  v19 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v20 = &v10[v19];
  *(a1 + 8) = &v10[v19];
  if (v17 >= 1)
  {
    v21 = &__dst[16 * a5];
    v22 = &v10[v19];
    if (&v20[-16 * a5] < v10)
    {
      v23 = &__dst[a4];
      v24 = &__dst[a4 + -16 * a5];
      do
      {
        *(v23 - v6) = *(v24 - v6);
        v24 += 16;
        v23 += 16;
      }

      while (v24 - v6 < v10);
      v22 = (v23 - v6);
    }

    *(a1 + 8) = v22;
    if (v20 != v21)
    {
      memmove(&__dst[16 * a5], __dst, v20 - v21);
    }

    if (v10 != __dst)
    {
      v25 = __dst;
      v26 = v6;
      v27 = v10 - __dst;
LABEL_29:

      memmove(v25, v26, v27);
    }
  }
}

BOOL sub_262266C3C(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 != 4)
      {
        if (v2 != 5)
        {
          goto LABEL_21;
        }

        v4 = a1 + 1;
        v5 = a1[1];
        v6 = a1 + 2;
        v7 = *a1;
        if (vmovn_s32(vmvnq_s8(vceqq_f32(v5, *a1))).u8[0])
        {
          if ((vmovn_s32(vcgtq_f32(v7, v5)).u8[0] & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        else if ((vmovn_s32(vcgtq_f32(v7, v5)).i8[2] & 1) == 0)
        {
LABEL_9:
          v8 = *v6;
          v9 = vmovn_s32(vmvnq_s8(vceqq_f32(*v6, v5))).u8[0];
          v10 = vmovn_s32(vcgtq_f32(v5, *v6)).u32[0];
          if (v9)
          {
            if ((v10 & 1) == 0)
            {
              goto LABEL_100;
            }
          }

          else if ((v10 & 0x10000) == 0)
          {
            goto LABEL_100;
          }

          v8 = *v4;
          v63 = *v6;
          *v4 = *v6;
          *v6 = v8;
          v64 = v63.f32[0] < v7.f32[0];
          if (v63.f32[0] == v7.f32[0])
          {
            v64 = v63.f32[1] < v7.f32[1];
          }

          if (!v64)
          {
LABEL_100:
            v65 = a1[3];
            v66 = vmovn_s32(vmvnq_s8(vceqq_f32(v65, v8))).u8[0];
            v67 = vmovn_s32(vcgtq_f32(v8, v65)).u32[0];
            if (v66)
            {
              if ((v67 & 1) == 0)
              {
                goto LABEL_113;
              }
            }

            else if ((v67 & 0x10000) == 0)
            {
LABEL_113:
              v75 = a2[-1];
              v76 = vmovn_s32(vmvnq_s8(vceqq_f32(v75, v65))).u8[0];
              v77 = vmovn_s32(vcgtq_f32(v65, v75));
              if (v76)
              {
                if ((v77.i8[0] & 1) == 0)
                {
                  return 1;
                }
              }

              else if ((v77.i8[2] & 1) == 0)
              {
                return 1;
              }

              v78 = a1[3];
              a1[3] = a2[-1];
              a2[-1] = v78;
              v80 = a1[2];
              v79 = a1[3];
              v81 = vmovn_s32(vmvnq_s8(vceqq_f32(v79, v80))).u8[0];
              v82 = vmovn_s32(vcgtq_f32(v80, v79));
              if (v81)
              {
                if ((v82.i8[0] & 1) == 0)
                {
                  return 1;
                }
              }

              else if ((v82.i8[2] & 1) == 0)
              {
                return 1;
              }

              v84 = a1[2];
              v83 = a1[3];
              v85 = a1[1];
              a1[2] = v83;
              a1[3] = v84;
              v86 = v83.f32[0] < v85.f32[0];
              if (v83.f32[0] == v85.f32[0])
              {
                v86 = v83.f32[1] < v85.f32[1];
              }

              if (!v86)
              {
                return 1;
              }

LABEL_148:
              v98 = *a1;
              v99 = a1[1];
              a1[1] = v83;
              a1[2] = v99;
              v100 = v83.f32[0] < v98.f32[0];
              if (v83.f32[0] == v98.f32[0])
              {
                v100 = v83.f32[1] < v98.f32[1];
              }

              if (v100)
              {
                v101 = *a1;
                *a1 = v83;
                a1[1] = v101;
              }

              return 1;
            }

            v65 = a1[2];
            v68 = a1[3];
            v69 = a1[1];
            a1[2] = v68;
            a1[3] = v65;
            v70 = v68.f32[0] < v69.f32[0];
            if (v68.f32[0] == v69.f32[0])
            {
              v70 = v68.f32[1] < v69.f32[1];
            }

            if (v70)
            {
              v71 = *a1;
              v72 = a1[1];
              a1[1] = v68;
              a1[2] = v72;
              v73 = v68.f32[0] < v71.f32[0];
              if (v68.f32[0] == v71.f32[0])
              {
                v73 = v68.f32[1] < v71.f32[1];
              }

              if (v73)
              {
                v74 = *a1;
                *a1 = v68;
                a1[1] = v74;
              }
            }

            goto LABEL_113;
          }

          goto LABEL_98;
        }

        v8 = *v6;
        if (vmovn_s32(vmvnq_s8(vceqq_f32(*v6, v5))).u8[0])
        {
          if ((vmovn_s32(vcgtq_f32(v5, v8)).u8[0] & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        else if ((vmovn_s32(vcgtq_f32(v5, v8)).i8[2] & 1) == 0)
        {
LABEL_47:
          v42 = *a1;
          *a1 = a1[1];
          a1[1] = v42;
          v43 = v8.f32[0] < v42.f32[0];
          if (v8.f32[0] == v42.f32[0])
          {
            v43 = v8.f32[1] < v42.f32[1];
          }

          if (!v43)
          {
            goto LABEL_100;
          }

LABEL_99:
          *v4 = *v6;
          *v6 = v42;
          v8 = a1[2];
          goto LABEL_100;
        }

        v4 = a1 + 2;
LABEL_98:
        v42 = *a1;
        v6 = v4;
        v4 = a1;
        goto LABEL_99;
      }

      v26 = a1 + 1;
      v27 = a1[1];
      v28 = a1 + 2;
      v29 = *a1;
      if (vmovn_s32(vmvnq_s8(vceqq_f32(v27, *a1))).u8[0])
      {
        if ((vmovn_s32(vcgtq_f32(v29, v27)).u8[0] & 1) == 0)
        {
LABEL_28:
          v30 = *v28;
          v31 = vmovn_s32(vmvnq_s8(vceqq_f32(*v28, v27))).u8[0];
          v32 = vmovn_s32(vcgtq_f32(v27, *v28)).u32[0];
          if (v31)
          {
            if ((v32 & 1) == 0)
            {
              goto LABEL_139;
            }
          }

          else if ((v32 & 0x10000) == 0)
          {
LABEL_139:
            v93 = a2[-1];
            v94 = vmovn_s32(vmvnq_s8(vceqq_f32(v93, v30))).u8[0];
            v95 = vmovn_s32(vcgtq_f32(v30, v93));
            if (v94)
            {
              if ((v95.i8[0] & 1) == 0)
              {
                return 1;
              }
            }

            else if ((v95.i8[2] & 1) == 0)
            {
              return 1;
            }

            v96 = *v28;
            *v28 = a2[-1];
            a2[-1] = v96;
            v97 = vmovn_s32(vcgtq_f32(*v26, *v28));
            if (vmovn_s32(vmvnq_s8(vceqq_f32(*v28, *v26))).u8[0])
            {
              if ((v97.i8[0] & 1) == 0)
              {
                return 1;
              }
            }

            else if ((v97.i8[2] & 1) == 0)
            {
              return 1;
            }

            v83 = a1[2];
            goto LABEL_148;
          }

          v30 = *v26;
          v87 = *v28;
          *v26 = *v28;
          *v28 = v30;
          v88 = v87.f32[0] < v29.f32[0];
          if (v87.f32[0] == v29.f32[0])
          {
            v88 = v87.f32[1] < v29.f32[1];
          }

          v89 = a1 + 1;
          if (!v88)
          {
            goto LABEL_139;
          }

          goto LABEL_133;
        }
      }

      else if ((vmovn_s32(vcgtq_f32(v29, v27)).i8[2] & 1) == 0)
      {
        goto LABEL_28;
      }

      v30 = *v28;
      if (vmovn_s32(vmvnq_s8(vceqq_f32(*v28, v27))).u8[0])
      {
        LOBYTE(v44) = vmovn_s32(vcgtq_f32(v27, v30)).u8[0];
      }

      else
      {
        v44 = vmovn_s32(vcgtq_f32(v27, v30)).i16[1];
      }

      v89 = a1 + 2;
      if ((v44 & 1) == 0)
      {
        v90 = *a1;
        *a1 = a1[1];
        a1[1] = v90;
        v92 = v30.f32[0] < v90.f32[0];
        if (v30.f32[0] == v90.f32[0])
        {
          v92 = v30.f32[1] < v90.f32[1];
        }

        v89 = a1 + 2;
        v91 = a1 + 1;
        if (!v92)
        {
          goto LABEL_139;
        }

        goto LABEL_138;
      }

LABEL_133:
      v90 = *a1;
      v91 = a1;
LABEL_138:
      *v91 = *v89;
      *v89 = v90;
      v30 = a1[2];
      goto LABEL_139;
    }

    v14 = a1 + 1;
    v15 = a1[1];
    v16 = a2 - 1;
    v17 = vmovn_s32(vcgtq_f32(*a1, v15)).u32[0];
    if (vmovn_s32(vmvnq_s8(vceqq_f32(v15, *a1))).u8[0])
    {
      if ((v17 & 1) == 0)
      {
LABEL_18:
        v18 = vmovn_s32(vmvnq_s8(vceqq_f32(*v16, v15))).u8[0];
        v19 = vmovn_s32(vcgtq_f32(v15, *v16));
        if (v18)
        {
          if ((v19.i8[0] & 1) == 0)
          {
            return 1;
          }
        }

        else if ((v19.i8[2] & 1) == 0)
        {
          return 1;
        }

        v45 = a1[1];
        a1[1] = *v16;
        *v16 = v45;
        v46 = a1[1];
        v47 = vmovn_s32(vmvnq_s8(vceqq_f32(v46, *a1))).u8[0];
        v48 = vmovn_s32(vcgtq_f32(*a1, v46));
        if (v47)
        {
          if ((v48.i8[0] & 1) == 0)
          {
            return 1;
          }
        }

        else if ((v48.i8[2] & 1) == 0)
        {
          return 1;
        }

        goto LABEL_60;
      }
    }

    else if ((v17 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    v33 = vmovn_s32(vmvnq_s8(vceqq_f32(*v16, v15))).u8[0];
    v34 = vmovn_s32(vcgtq_f32(v15, *v16)).u32[0];
    if (v33)
    {
      if ((v34 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if ((v34 & 0x10000) == 0)
    {
LABEL_34:
      v35 = *a1;
      *a1 = a1[1];
      a1[1] = v35;
      v36 = COERCE_FLOAT(*v16) < v35.f32[0];
      if (COERCE_FLOAT(*v16) == v35.f32[0])
      {
        v36 = COERCE_FLOAT(HIDWORD(v16->i64[0])) < v35.f32[1];
      }

      ++a1;
      if (!v36)
      {
        return 1;
      }

      goto LABEL_61;
    }

    v14 = a2 - 1;
LABEL_60:
    v35 = *a1;
    v16 = v14;
LABEL_61:
    *a1 = *v16;
    *v16 = v35;
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v11 = a2[-1];
    v12 = vmovn_s32(vmvnq_s8(vceqq_f32(v11, *a1))).u8[0];
    v13 = vmovn_s32(vcgtq_f32(*a1, v11));
    if (v12)
    {
      if ((v13.i8[0] & 1) == 0)
      {
        return 1;
      }
    }

    else if ((v13.i8[2] & 1) == 0)
    {
      return 1;
    }

    v41 = *a1;
    *a1 = a2[-1];
    a2[-1] = v41;
    return 1;
  }

LABEL_21:
  v20 = a1 + 2;
  v21 = a1 + 1;
  v22 = a1[1];
  v23 = *a1;
  if (vmovn_s32(vmvnq_s8(vceqq_f32(v22, *a1))).u8[0])
  {
    if ((vmovn_s32(vcgtq_f32(v23, v22)).u8[0] & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_40:
    v37 = *v20;
    v38 = vmovn_s32(vmvnq_s8(vceqq_f32(*v20, v22))).u8[0];
    v39 = vmovn_s32(vcgtq_f32(v22, *v20)).u32[0];
    if (v38)
    {
      v40 = v39;
    }

    else
    {
      v40 = BYTE2(v39);
    }

    v52 = a1 + 2;
    if ((v40 & 1) == 0)
    {
      v53 = *a1;
      *a1 = a1[1];
      a1[1] = v53;
      v54 = v37.f32[0] < v53.f32[0];
      if (v37.f32[0] == v53.f32[0])
      {
        v54 = v37.f32[1] < v53.f32[1];
      }

      v52 = a1 + 2;
      if (!v54)
      {
        goto LABEL_75;
      }

      goto LABEL_74;
    }

LABEL_69:
    v53 = *a1;
    v21 = a1;
LABEL_74:
    *v21 = *v52;
    *v52 = v53;
    goto LABEL_75;
  }

  if (vmovn_s32(vcgtq_f32(v23, v22)).i8[2])
  {
    goto LABEL_40;
  }

LABEL_23:
  v24 = vmovn_s32(vmvnq_s8(vceqq_f32(*v20, v22))).u8[0];
  v25 = vmovn_s32(vcgtq_f32(v22, *v20)).u32[0];
  if (v24)
  {
    if ((v25 & 1) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_63;
  }

  if ((v25 & 0x10000) != 0)
  {
LABEL_63:
    v49 = *v21;
    v50 = *v20;
    *v21 = *v20;
    *v20 = v49;
    v51 = v50.f32[0] < v23.f32[0];
    if (v50.f32[0] == v23.f32[0])
    {
      v51 = v50.f32[1] < v23.f32[1];
    }

    v52 = a1 + 1;
    if (!v51)
    {
      goto LABEL_75;
    }

    goto LABEL_69;
  }

LABEL_75:
  v55 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v56 = 0;
  v57 = 0;
  while (1)
  {
    v58 = vmovn_s32(vcgtq_f32(*v20, *v55));
    if ((vmovn_s32(vmvnq_s8(vceqq_f32(*v55, *v20))).u8[0] & 1) == 0)
    {
      break;
    }

    if (v58.i8[0])
    {
      goto LABEL_81;
    }

LABEL_89:
    v20 = v55;
    v56 += 16;
    if (++v55 == a2)
    {
      return 1;
    }
  }

  if ((v58.i8[2] & 1) == 0)
  {
    goto LABEL_89;
  }

LABEL_81:
  v59 = *v55;
  LODWORD(v60) = HIDWORD(v55->i64[0]);
  *v55 = *v20;
  v61 = v56;
  do
  {
    v62 = *(&a1[1] + v61);
    if (v59.f32[0] == *&v62)
    {
      if (v60 >= *(&v62 + 1))
      {
        goto LABEL_88;
      }
    }

    else if (v59.f32[0] >= *&v62)
    {
      v20 = (a1 + v61 + 32);
      goto LABEL_88;
    }

    --v20;
    *(a1 + v61 + 32) = *(a1 + v61 + 16);
    v61 -= 16;
  }

  while (v61 != -32);
  v20 = a1;
LABEL_88:
  *v20 = v59;
  if (++v57 != 8)
  {
    goto LABEL_89;
  }

  return &v55[1] == a2;
}

uint64_t sub_262267420(uint64_t result, unint64_t a2, double a3, float a4)
{
  v4 = result;
  v27 = LODWORD(a3);
  v26 = a2;
  if (a2)
  {
    sub_26222AF58(v25, &v26);
    result = sub_262224FE8(v4, v25);
    v9 = a2 - 1;
    if (a2 == 1)
    {
      return sub_26226B214(v4, &v27, v7);
    }

    else
    {
      v10 = 0;
      *v8.i32 = (a4 - *&a3) / v9;
      v11 = *(v4 + 144);
      v12 = vdupq_n_s64(v9);
      v13 = vdupq_lane_s32(v8, 0);
      v14 = vdupq_lane_s32(*&a3, 0);
      v15 = xmmword_2623A7620;
      v16 = vdupq_n_s64(4uLL);
      v17 = (v11 + 4);
      v18 = xmmword_2623A7630;
      do
      {
        v19 = vorrq_s8(vdupq_n_s64(v10), xmmword_2623A7630);
        v20 = vmovn_s64(vcgeq_u64(v12, v15));
        *v21.i32 = v10;
        v22 = v10 + 1;
        *&v21.i32[1] = v22;
        v23 = vmlaq_f32(v14, vcvt_hight_f32_f64(v21, vcvtq_f64_u64(v19)), v13);
        if (vuzp1_s16(v20, *v12.i8).u8[0])
        {
          *(v17 - 1) = v23.i32[0];
        }

        if (vuzp1_s16(v20, *&v12).i8[2])
        {
          *v17 = v23.i32[1];
        }

        if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, *&v18))).i32[1])
        {
          *(v11 + 4 * v19.i64[0]) = v23.i32[2];
          *(v11 + 4 * v19.i64[1]) = v23.i32[3];
        }

        v18 = vaddq_s64(v18, v16);
        v15 = vaddq_s64(v15, v16);
        v17 += 4;
        v10 = v22 + 3;
      }

      while (v10 != ((a2 + 3) & 0xFFFFFFFFFFFFFFFCLL));
    }
  }

  else
  {
    *result = &unk_2874EF6A8;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 120) = 0;
    *(result + 128) = 0;
    *(result + 136) = 257;
  }

  return result;
}