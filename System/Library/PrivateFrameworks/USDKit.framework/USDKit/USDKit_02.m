uint64_t *sub_270331C34(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_270331E60(result);
}

unint64_t sub_270331C4C(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v7[0] = 0;
      v7[1] = 0;
      sub_270315288(v7, v2, v2 + 1, v2 + 2, v2 + 3, v2 + 4, v2 + 5, v2 + 6, v2 + 7, v2 + 8, v2 + 9, v2 + 10, v2 + 11, v2 + 12, v2 + 13, v2 + 14, v2 + 15);
      v4 = bswap64(0x9E3779B97F4A7C55 * v7[0]);
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 16;
    }

    while (v3);
    v5 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_270331D54(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void sub_270331E48(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = off_288041628;
  sub_270318A3C();
}

uint64_t *sub_270331E60(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_270310E24(v1);

    JUMPOUT(0x27439F3D0);
  }

  return result;
}

uint64_t sub_270331ED8(uint64_t *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && sub_27031885C(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_27031885C(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  v8 = (v5 << 7) - 128;
  do
  {
    result = pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator==();
    if (!result)
    {
      break;
    }

    v6 += 128;
    v7 += 128;
    v9 = v8;
    v8 -= 128;
  }

  while (v9);
  return result;
}

uint64_t sub_270331F88(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_2703189A8();
  }

  return *a1;
}

uint64_t sub_270331FF0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 += 128;
  return MEMORY[0x282206C60](a2, v3);
}

double sub_270332014()
{
  result = *v1;
  *v0 = *v1;
  return result;
}

uint64_t *sub_270332024()
{
  v2 = *v0;
  v3 = *v1;
  return v1;
}

uint64_t *sub_270332038()
{
  v2 = *v0;
  v3 = *v1;
  return v1;
}

void sub_2703322F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_270332D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v30 = (v28 + 472);
  v31 = -480;
  while (1)
  {

    if ((*(v30 - 1) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(v30 - 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v30 -= 2;
    v31 += 16;
    if (!v31)
    {
      if ((a11 & 7) != 0)
      {
        atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a12 & 7) != 0)
      {
        atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a13 & 7) != 0)
      {
        atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a14 & 7) != 0)
      {
        atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a15 & 7) != 0)
      {
        atomic_fetch_add_explicit((a15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a16 & 7) != 0)
      {
        atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a17 & 7) != 0)
      {
        atomic_fetch_add_explicit((a17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a18 & 7) != 0)
      {
        atomic_fetch_add_explicit((a18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a19 & 7) != 0)
      {
        atomic_fetch_add_explicit((a19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a20 & 7) != 0)
      {
        atomic_fetch_add_explicit((a20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a21 & 7) != 0)
      {
        atomic_fetch_add_explicit((a21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a22 & 7) != 0)
      {
        atomic_fetch_add_explicit((a22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a23 & 7) != 0)
      {
        atomic_fetch_add_explicit((a23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a24 & 7) != 0)
      {
        atomic_fetch_add_explicit((a24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a25 & 7) != 0)
      {
        atomic_fetch_add_explicit((a25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a26 & 7) != 0)
      {
        atomic_fetch_add_explicit((a26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v32 = v27[1];
      if ((v32 & 7) != 0)
      {
        atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v33 = v27[2];
      if ((v33 & 7) != 0)
      {
        atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v34 = v27[3];
      if ((v34 & 7) != 0)
      {
        atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v35 = v27[4];
      if ((v35 & 7) != 0)
      {
        atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v36 = v27[5];
      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v37 = v27[6];
      if ((v37 & 7) != 0)
      {
        atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v38 = v27[7];
      if ((v38 & 7) != 0)
      {
        atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v39 = v27[8];
      if ((v39 & 7) != 0)
      {
        atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v40 = v27[9];
      if ((v40 & 7) != 0)
      {
        atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v41 = v27[10];
      if ((v41 & 7) != 0)
      {
        atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v42 = v27[11];
      if ((v42 & 7) != 0)
      {
        atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v43 = v27[12];
      if ((v43 & 7) != 0)
      {
        atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x27439F3D0](v26, 0x1020C4062D53EE8);
      __cxa_guard_abort(&qword_2807CE4E0);
      _Unwind_Resume(a1);
    }
  }
}

void sub_2703337B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v26 = (v24 + 200);
  v27 = -208;
  while (1)
  {

    if ((*(v26 - 1) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(v26 - 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v26 -= 2;
    v27 += 16;
    if (!v27)
    {
      if ((a11 & 7) != 0)
      {
        atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a12 & 7) != 0)
      {
        atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a13 & 7) != 0)
      {
        atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a14 & 7) != 0)
      {
        atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a15 & 7) != 0)
      {
        atomic_fetch_add_explicit((a15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a16 & 7) != 0)
      {
        atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a17 & 7) != 0)
      {
        atomic_fetch_add_explicit((a17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a18 & 7) != 0)
      {
        atomic_fetch_add_explicit((a18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a19 & 7) != 0)
      {
        atomic_fetch_add_explicit((a19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a20 & 7) != 0)
      {
        atomic_fetch_add_explicit((a20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a21 & 7) != 0)
      {
        atomic_fetch_add_explicit((a21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a22 & 7) != 0)
      {
        atomic_fetch_add_explicit((a22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a23 & 7) != 0)
      {
        atomic_fetch_add_explicit((a23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x27439F3D0](v23, 0x1020C4062D53EE8);
      __cxa_guard_abort(&qword_2807CE4F0);
      _Unwind_Resume(a1);
    }
  }
}

void sub_270333D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v18 = (v16 + 72);
  v19 = -80;
  while (1)
  {

    if ((*(v18 - 1) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(v18 - 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v18 -= 2;
    v19 += 16;
    if (!v19)
    {
      if ((a11 & 7) != 0)
      {
        atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a12 & 7) != 0)
      {
        atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a13 & 7) != 0)
      {
        atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a14 & 7) != 0)
      {
        atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a15 & 7) != 0)
      {
        atomic_fetch_add_explicit((a15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x27439F3D0](v15, 0x1020C4062D53EE8);
      __cxa_guard_abort(&qword_2807CE500);
      _Unwind_Resume(a1);
    }
  }
}

void sub_270334D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v29 = (v27 + 696);
  v30 = -704;
  while (1)
  {

    if ((*(v29 - 1) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(v29 - 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v29 -= 2;
    v30 += 16;
    if (!v30)
    {
      if ((a10 & 7) != 0)
      {
        atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a11 & 7) != 0)
      {
        atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a12 & 7) != 0)
      {
        atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a13 & 7) != 0)
      {
        atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a14 & 7) != 0)
      {
        atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a15 & 7) != 0)
      {
        atomic_fetch_add_explicit((a15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a16 & 7) != 0)
      {
        atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a17 & 7) != 0)
      {
        atomic_fetch_add_explicit((a17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a18 & 7) != 0)
      {
        atomic_fetch_add_explicit((a18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a19 & 7) != 0)
      {
        atomic_fetch_add_explicit((a19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a20 & 7) != 0)
      {
        atomic_fetch_add_explicit((a20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a21 & 7) != 0)
      {
        atomic_fetch_add_explicit((a21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a22 & 7) != 0)
      {
        atomic_fetch_add_explicit((a22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a23 & 7) != 0)
      {
        atomic_fetch_add_explicit((a23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a24 & 7) != 0)
      {
        atomic_fetch_add_explicit((a24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a25 & 7) != 0)
      {
        atomic_fetch_add_explicit((a25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v31 = v26[1];
      if ((v31 & 7) != 0)
      {
        atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v32 = v26[2];
      if ((v32 & 7) != 0)
      {
        atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v33 = v26[3];
      if ((v33 & 7) != 0)
      {
        atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v34 = v26[4];
      if ((v34 & 7) != 0)
      {
        atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v35 = v26[5];
      if ((v35 & 7) != 0)
      {
        atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v36 = v26[6];
      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v37 = v26[7];
      if ((v37 & 7) != 0)
      {
        atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v38 = v26[8];
      if ((v38 & 7) != 0)
      {
        atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v39 = v26[9];
      if ((v39 & 7) != 0)
      {
        atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v40 = v26[10];
      if ((v40 & 7) != 0)
      {
        atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v41 = v26[11];
      if ((v41 & 7) != 0)
      {
        atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v42 = v26[12];
      if ((v42 & 7) != 0)
      {
        atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v43 = v26[13];
      if ((v43 & 7) != 0)
      {
        atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v44 = v26[14];
      if ((v44 & 7) != 0)
      {
        atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v45 = v26[15];
      if ((v45 & 7) != 0)
      {
        atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v46 = v26[16];
      if ((v46 & 7) != 0)
      {
        atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v47 = v26[17];
      if ((v47 & 7) != 0)
      {
        atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v48 = v26[18];
      if ((v48 & 7) != 0)
      {
        atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v49 = v26[19];
      if ((v49 & 7) != 0)
      {
        atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v50 = v26[20];
      if ((v50 & 7) != 0)
      {
        atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v51 = v26[21];
      if ((v51 & 7) != 0)
      {
        atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v52 = v26[22];
      if ((v52 & 7) != 0)
      {
        atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v53 = v26[23];
      if ((v53 & 7) != 0)
      {
        atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v54 = v26[24];
      if ((v54 & 7) != 0)
      {
        atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v55 = v26[25];
      if ((v55 & 7) != 0)
      {
        atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v56 = v26[26];
      if ((v56 & 7) != 0)
      {
        atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v57 = v26[27];
      if ((v57 & 7) != 0)
      {
        atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x27439F3D0](v25, 0x1020C4062D53EE8);
      __cxa_guard_abort(&qword_2807CE510);
      _Unwind_Resume(a1);
    }
  }
}

void sub_270335594(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_2807CE528);

  _Unwind_Resume(a1);
}

void sub_2703355EC()
{
  v0 = [USKToken alloc];
  MEMORY[0x27439E610](&v185, "Mesh");
  v3 = objc_msgSend_initWithTfToken_(v0, v1, &v185, v2);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE520, v4, v3, @"Mesh");

  if ((v185 & 7) != 0)
  {
    atomic_fetch_add_explicit((v185 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = [USKToken alloc];
  MEMORY[0x27439E610](&v184, "Points");
  v8 = objc_msgSend_initWithTfToken_(v5, v6, &v184, v7);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE520, v9, v8, @"Points");

  if ((v184 & 7) != 0)
  {
    atomic_fetch_add_explicit((v184 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = [USKToken alloc];
  MEMORY[0x27439E610](&v183, "BasisCurves");
  v13 = objc_msgSend_initWithTfToken_(v10, v11, &v183, v12);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE520, v14, v13, @"BasisCurves");

  if ((v183 & 7) != 0)
  {
    atomic_fetch_add_explicit((v183 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = [USKToken alloc];
  MEMORY[0x27439E610](&v182, "GeomSubset");
  v18 = objc_msgSend_initWithTfToken_(v15, v16, &v182, v17);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE520, v19, v18, @"GeomSubset");

  if ((v182 & 7) != 0)
  {
    atomic_fetch_add_explicit((v182 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = [USKToken alloc];
  MEMORY[0x27439E610](&v181, "Xform");
  v23 = objc_msgSend_initWithTfToken_(v20, v21, &v181, v22);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE520, v24, v23, @"Xform");

  if ((v181 & 7) != 0)
  {
    atomic_fetch_add_explicit((v181 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = [USKToken alloc];
  MEMORY[0x27439E610](&v180, "Scope");
  v28 = objc_msgSend_initWithTfToken_(v25, v26, &v180, v27);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE520, v29, v28, @"Scope");

  if ((v180 & 7) != 0)
  {
    atomic_fetch_add_explicit((v180 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = [USKToken alloc];
  MEMORY[0x27439E610](&v179, "Material");
  v33 = objc_msgSend_initWithTfToken_(v30, v31, &v179, v32);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE520, v34, v33, @"Material");

  if ((v179 & 7) != 0)
  {
    atomic_fetch_add_explicit((v179 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v35 = [USKToken alloc];
  MEMORY[0x27439E610](&v178, "Shader");
  v38 = objc_msgSend_initWithTfToken_(v35, v36, &v178, v37);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE520, v39, v38, @"Shader");

  if ((v178 & 7) != 0)
  {
    atomic_fetch_add_explicit((v178 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v40 = [USKToken alloc];
  MEMORY[0x27439E610](&v177, "Skeleton");
  v43 = objc_msgSend_initWithTfToken_(v40, v41, &v177, v42);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE520, v44, v43, @"Skeleton");

  if ((v177 & 7) != 0)
  {
    atomic_fetch_add_explicit((v177 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v45 = [USKToken alloc];
  MEMORY[0x27439E610](&v176, "SkelRoot");
  v48 = objc_msgSend_initWithTfToken_(v45, v46, &v176, v47);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE520, v49, v48, @"SkelRoot");

  if ((v176 & 7) != 0)
  {
    atomic_fetch_add_explicit((v176 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v50 = [USKToken alloc];
  MEMORY[0x27439E610](&v175, "SkelAnimation");
  v53 = objc_msgSend_initWithTfToken_(v50, v51, &v175, v52);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE520, v54, v53, @"SkelAnimation");

  if ((v175 & 7) != 0)
  {
    atomic_fetch_add_explicit((v175 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v55 = [USKToken alloc];
  MEMORY[0x27439E610](&v174, "BlendShape");
  v58 = objc_msgSend_initWithTfToken_(v55, v56, &v174, v57);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE520, v59, v58, @"BlendShape");

  if ((v174 & 7) != 0)
  {
    atomic_fetch_add_explicit((v174 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v60 = [USKToken alloc];
  MEMORY[0x27439E610](&v173, "Cube");
  v63 = objc_msgSend_initWithTfToken_(v60, v61, &v173, v62);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE520, v64, v63, @"Cube");

  if ((v173 & 7) != 0)
  {
    atomic_fetch_add_explicit((v173 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v65 = [USKToken alloc];
  MEMORY[0x27439E610](&v172, "Cone");
  v68 = objc_msgSend_initWithTfToken_(v65, v66, &v172, v67);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE520, v69, v68, @"Cone");

  if ((v172 & 7) != 0)
  {
    atomic_fetch_add_explicit((v172 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v70 = [USKToken alloc];
  MEMORY[0x27439E610](&v171, "Capsule");
  v73 = objc_msgSend_initWithTfToken_(v70, v71, &v171, v72);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE520, v74, v73, @"Capsule");

  if ((v171 & 7) != 0)
  {
    atomic_fetch_add_explicit((v171 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v75 = [USKToken alloc];
  MEMORY[0x27439E610](&v170, "Cylinder");
  v78 = objc_msgSend_initWithTfToken_(v75, v76, &v170, v77);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE520, v79, v78, @"Cylinder");

  if ((v170 & 7) != 0)
  {
    atomic_fetch_add_explicit((v170 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v80 = [USKToken alloc];
  MEMORY[0x27439E610](&v169, "Sphere");
  v83 = objc_msgSend_initWithTfToken_(v80, v81, &v169, v82);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE520, v84, v83, @"Sphere");

  if ((v169 & 7) != 0)
  {
    atomic_fetch_add_explicit((v169 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v85 = [USKToken alloc];
  MEMORY[0x27439E610](&v168, "Camera");
  v88 = objc_msgSend_initWithTfToken_(v85, v86, &v168, v87);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE520, v89, v88, @"Camera");

  if ((v168 & 7) != 0)
  {
    atomic_fetch_add_explicit((v168 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v90 = [USKToken alloc];
  MEMORY[0x27439E610](&v167, "SpatialAudio");
  v93 = objc_msgSend_initWithTfToken_(v90, v91, &v167, v92);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE520, v94, v93, @"SpatialAudio");

  if ((v167 & 7) != 0)
  {
    atomic_fetch_add_explicit((v167 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v95 = [USKToken alloc];
  MEMORY[0x27439E610](&v166, "PhysicsScene");
  v98 = objc_msgSend_initWithTfToken_(v95, v96, &v166, v97);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE520, v99, v98, @"PhysicsScene");

  if ((v166 & 7) != 0)
  {
    atomic_fetch_add_explicit((v166 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v100 = [USKToken alloc];
  MEMORY[0x27439E610](&v165, "PhysicsCollisionGroup");
  v103 = objc_msgSend_initWithTfToken_(v100, v101, &v165, v102);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE520, v104, v103, @"PhysicsCollisionGroup");

  if ((v165 & 7) != 0)
  {
    atomic_fetch_add_explicit((v165 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v105 = [USKToken alloc];
  MEMORY[0x27439E610](&v164, "Preliminary_Text");
  v108 = objc_msgSend_initWithTfToken_(v105, v106, &v164, v107);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE520, v109, v108, @"Preliminary_Text");

  if ((v164 & 7) != 0)
  {
    atomic_fetch_add_explicit((v164 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v110 = [USKToken alloc];
  MEMORY[0x27439E610](&v163, "Preliminary_ReferenceImage");
  v113 = objc_msgSend_initWithTfToken_(v110, v111, &v163, v112);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE520, v114, v113, @"Preliminary_ReferenceImage");

  if ((v163 & 7) != 0)
  {
    atomic_fetch_add_explicit((v163 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v115 = [USKToken alloc];
  MEMORY[0x27439E610](&v162, "Preliminary_PhysicsForce");
  v118 = objc_msgSend_initWithTfToken_(v115, v116, &v162, v117);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE520, v119, v118, @"Preliminary_PhysicsForce");

  if ((v162 & 7) != 0)
  {
    atomic_fetch_add_explicit((v162 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v120 = [USKToken alloc];
  MEMORY[0x27439E610](&v161, "Preliminary_PhysicsGravitationalForce");
  v123 = objc_msgSend_initWithTfToken_(v120, v121, &v161, v122);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE520, v124, v123, @"Preliminary_PhysicsGravitationalForce");

  if ((v161 & 7) != 0)
  {
    atomic_fetch_add_explicit((v161 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v125 = [USKToken alloc];
  MEMORY[0x27439E610](&v160, "Preliminary_InfiniteColliderPlane");
  v128 = objc_msgSend_initWithTfToken_(v125, v126, &v160, v127);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE520, v129, v128, @"Preliminary_InfiniteColliderPlane");

  if ((v160 & 7) != 0)
  {
    atomic_fetch_add_explicit((v160 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v130 = [USKToken alloc];
  MEMORY[0x27439E610](&v159, "Preliminary_Behavior");
  v133 = objc_msgSend_initWithTfToken_(v130, v131, &v159, v132);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE520, v134, v133, @"Preliminary_Behavior");

  if ((v159 & 7) != 0)
  {
    atomic_fetch_add_explicit((v159 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v135 = [USKToken alloc];
  MEMORY[0x27439E610](&v158, "Preliminary_Trigger");
  v138 = objc_msgSend_initWithTfToken_(v135, v136, &v158, v137);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE520, v139, v138, @"Preliminary_Trigger");

  if ((v158 & 7) != 0)
  {
    atomic_fetch_add_explicit((v158 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v140 = [USKToken alloc];
  MEMORY[0x27439E610](&v157, "Preliminary_Action");
  v143 = objc_msgSend_initWithTfToken_(v140, v141, &v157, v142);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE520, v144, v143, @"Preliminary_Action");

  if ((v157 & 7) != 0)
  {
    atomic_fetch_add_explicit((v157 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v145 = [USKToken alloc];
  v156 = 0;
  v148 = objc_msgSend_initWithTfToken_(v145, v146, &v156, v147);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE520, v149, v148, &stru_2880420B0);

  if ((v156 & 7) != 0)
  {
    atomic_fetch_add_explicit((v156 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v150 = [USKToken alloc];
  v155 = 0;
  v153 = objc_msgSend_initWithTfToken_(v150, v151, &v155, v152);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE520, v154, v153, @"Unknown");

  if ((v155 & 7) != 0)
  {
    atomic_fetch_add_explicit((v155 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_270336198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;

  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_270336668(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_2807CE540);

  _Unwind_Resume(a1);
}

void sub_2703366C0()
{
  v0 = [USKToken alloc];
  MEMORY[0x27439E610](&v35, "Color");
  v3 = objc_msgSend_initWithTfToken_(v0, v1, &v35, v2);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE538, v4, v3, @"Color");

  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = [USKToken alloc];
  MEMORY[0x27439E610](&v34, "Normal");
  v8 = objc_msgSend_initWithTfToken_(v5, v6, &v34, v7);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE538, v9, v8, @"Normal");

  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = [USKToken alloc];
  MEMORY[0x27439E610](&v33, "TextureCoordinate");
  v13 = objc_msgSend_initWithTfToken_(v10, v11, &v33, v12);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE538, v14, v13, @"TextureCoordinate");

  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = [USKToken alloc];
  MEMORY[0x27439E610](&v32, "Point");
  v18 = objc_msgSend_initWithTfToken_(v15, v16, &v32, v17);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE538, v19, v18, @"Point");

  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = [USKToken alloc];
  MEMORY[0x27439E610](&v31, "Vector");
  v23 = objc_msgSend_initWithTfToken_(v20, v21, &v31, v22);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE538, v24, v23, @"Vector");

  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = [USKToken alloc];
  v30 = 0;
  v28 = objc_msgSend_initWithTfToken_(v25, v26, &v30, v27);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE538, v29, v28, @"None");

  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_270336920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;

  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_270336B34(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_2807CE558);

  _Unwind_Resume(a1);
}

void sub_270336B8C()
{
  v0 = [USKToken alloc];
  MEMORY[0x27439E610](&v281, "double");
  v3 = objc_msgSend_initWithTfToken_(v0, v1, &v281, v2);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v4, v3, @"double");

  if ((v281 & 7) != 0)
  {
    atomic_fetch_add_explicit((v281 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = [USKToken alloc];
  MEMORY[0x27439E610](&v280, "double2");
  v8 = objc_msgSend_initWithTfToken_(v5, v6, &v280, v7);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v9, v8, @"double2");

  if ((v280 & 7) != 0)
  {
    atomic_fetch_add_explicit((v280 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = [USKToken alloc];
  MEMORY[0x27439E610](&v279, "double3");
  v13 = objc_msgSend_initWithTfToken_(v10, v11, &v279, v12);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v14, v13, @"double3");

  if ((v279 & 7) != 0)
  {
    atomic_fetch_add_explicit((v279 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = [USKToken alloc];
  MEMORY[0x27439E610](&v278, "double4");
  v18 = objc_msgSend_initWithTfToken_(v15, v16, &v278, v17);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v19, v18, @"double4");

  if ((v278 & 7) != 0)
  {
    atomic_fetch_add_explicit((v278 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = [USKToken alloc];
  MEMORY[0x27439E610](&v277, "matrix4d");
  v23 = objc_msgSend_initWithTfToken_(v20, v21, &v277, v22);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v24, v23, @"double4x4");

  if ((v277 & 7) != 0)
  {
    atomic_fetch_add_explicit((v277 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = [USKToken alloc];
  MEMORY[0x27439E610](&v276, "double[]");
  v28 = objc_msgSend_initWithTfToken_(v25, v26, &v276, v27);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v29, v28, @"double[]");

  if ((v276 & 7) != 0)
  {
    atomic_fetch_add_explicit((v276 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = [USKToken alloc];
  MEMORY[0x27439E610](&v275, "double2[]");
  v33 = objc_msgSend_initWithTfToken_(v30, v31, &v275, v32);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v34, v33, @"double2[]");

  if ((v275 & 7) != 0)
  {
    atomic_fetch_add_explicit((v275 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v35 = [USKToken alloc];
  MEMORY[0x27439E610](&v274, "double3[]");
  v38 = objc_msgSend_initWithTfToken_(v35, v36, &v274, v37);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v39, v38, @"double3[]");

  if ((v274 & 7) != 0)
  {
    atomic_fetch_add_explicit((v274 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v40 = [USKToken alloc];
  MEMORY[0x27439E610](&v273, "double4[]");
  v43 = objc_msgSend_initWithTfToken_(v40, v41, &v273, v42);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v44, v43, @"double4[]");

  if ((v273 & 7) != 0)
  {
    atomic_fetch_add_explicit((v273 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v45 = [USKToken alloc];
  MEMORY[0x27439E610](&v272, "matrix4d[]");
  v48 = objc_msgSend_initWithTfToken_(v45, v46, &v272, v47);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v49, v48, @"double4x4[]");

  if ((v272 & 7) != 0)
  {
    atomic_fetch_add_explicit((v272 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v50 = [USKToken alloc];
  MEMORY[0x27439E610](&v271, "half");
  v53 = objc_msgSend_initWithTfToken_(v50, v51, &v271, v52);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v54, v53, @"half");

  if ((v271 & 7) != 0)
  {
    atomic_fetch_add_explicit((v271 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v55 = [USKToken alloc];
  MEMORY[0x27439E610](&v270, "half2");
  v58 = objc_msgSend_initWithTfToken_(v55, v56, &v270, v57);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v59, v58, @"half2");

  if ((v270 & 7) != 0)
  {
    atomic_fetch_add_explicit((v270 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v60 = [USKToken alloc];
  MEMORY[0x27439E610](&v269, "half3");
  v63 = objc_msgSend_initWithTfToken_(v60, v61, &v269, v62);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v64, v63, @"half3");

  if ((v269 & 7) != 0)
  {
    atomic_fetch_add_explicit((v269 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v65 = [USKToken alloc];
  MEMORY[0x27439E610](&v268, "half4");
  v68 = objc_msgSend_initWithTfToken_(v65, v66, &v268, v67);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v69, v68, @"half4");

  if ((v268 & 7) != 0)
  {
    atomic_fetch_add_explicit((v268 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v70 = [USKToken alloc];
  MEMORY[0x27439E610](&v267, "half[]");
  v73 = objc_msgSend_initWithTfToken_(v70, v71, &v267, v72);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v74, v73, @"half[]");

  if ((v267 & 7) != 0)
  {
    atomic_fetch_add_explicit((v267 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v75 = [USKToken alloc];
  MEMORY[0x27439E610](&v266, "half2[]");
  v78 = objc_msgSend_initWithTfToken_(v75, v76, &v266, v77);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v79, v78, @"half2[]");

  if ((v266 & 7) != 0)
  {
    atomic_fetch_add_explicit((v266 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v80 = [USKToken alloc];
  MEMORY[0x27439E610](&v265, "half3[]");
  v83 = objc_msgSend_initWithTfToken_(v80, v81, &v265, v82);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v84, v83, @"half3[]");

  if ((v265 & 7) != 0)
  {
    atomic_fetch_add_explicit((v265 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v85 = [USKToken alloc];
  MEMORY[0x27439E610](&v264, "half4[]");
  v88 = objc_msgSend_initWithTfToken_(v85, v86, &v264, v87);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v89, v88, @"half4[]");

  if ((v264 & 7) != 0)
  {
    atomic_fetch_add_explicit((v264 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v90 = [USKToken alloc];
  MEMORY[0x27439E610](&v263, "float");
  v93 = objc_msgSend_initWithTfToken_(v90, v91, &v263, v92);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v94, v93, @"float");

  if ((v263 & 7) != 0)
  {
    atomic_fetch_add_explicit((v263 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v95 = [USKToken alloc];
  MEMORY[0x27439E610](&v262, "float2");
  v98 = objc_msgSend_initWithTfToken_(v95, v96, &v262, v97);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v99, v98, @"float2");

  if ((v262 & 7) != 0)
  {
    atomic_fetch_add_explicit((v262 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v100 = [USKToken alloc];
  MEMORY[0x27439E610](&v261, "float3");
  v103 = objc_msgSend_initWithTfToken_(v100, v101, &v261, v102);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v104, v103, @"float3");

  if ((v261 & 7) != 0)
  {
    atomic_fetch_add_explicit((v261 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v105 = [USKToken alloc];
  MEMORY[0x27439E610](&v260, "float4");
  v108 = objc_msgSend_initWithTfToken_(v105, v106, &v260, v107);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v109, v108, @"float4");

  if ((v260 & 7) != 0)
  {
    atomic_fetch_add_explicit((v260 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v110 = [USKToken alloc];
  MEMORY[0x27439E610](&v259, "matrix4f");
  v113 = objc_msgSend_initWithTfToken_(v110, v111, &v259, v112);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v114, v113, @"float4x4");

  if ((v259 & 7) != 0)
  {
    atomic_fetch_add_explicit((v259 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v115 = [USKToken alloc];
  MEMORY[0x27439E610](&v258, "float[]");
  v118 = objc_msgSend_initWithTfToken_(v115, v116, &v258, v117);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v119, v118, @"float[]");

  if ((v258 & 7) != 0)
  {
    atomic_fetch_add_explicit((v258 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v120 = [USKToken alloc];
  MEMORY[0x27439E610](&v257, "float2[]");
  v123 = objc_msgSend_initWithTfToken_(v120, v121, &v257, v122);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v124, v123, @"float2[]");

  if ((v257 & 7) != 0)
  {
    atomic_fetch_add_explicit((v257 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v125 = [USKToken alloc];
  MEMORY[0x27439E610](&v256, "float3[]");
  v128 = objc_msgSend_initWithTfToken_(v125, v126, &v256, v127);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v129, v128, @"float3[]");

  if ((v256 & 7) != 0)
  {
    atomic_fetch_add_explicit((v256 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v130 = [USKToken alloc];
  MEMORY[0x27439E610](&v255, "float4[]");
  v133 = objc_msgSend_initWithTfToken_(v130, v131, &v255, v132);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v134, v133, @"float4[]");

  if ((v255 & 7) != 0)
  {
    atomic_fetch_add_explicit((v255 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v135 = [USKToken alloc];
  MEMORY[0x27439E610](&v254, "matrix4f[]");
  v138 = objc_msgSend_initWithTfToken_(v135, v136, &v254, v137);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v139, v138, @"float4x4[]");

  if ((v254 & 7) != 0)
  {
    atomic_fetch_add_explicit((v254 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v140 = [USKToken alloc];
  MEMORY[0x27439E610](&v253, "int");
  v143 = objc_msgSend_initWithTfToken_(v140, v141, &v253, v142);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v144, v143, @"int");

  if ((v253 & 7) != 0)
  {
    atomic_fetch_add_explicit((v253 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v145 = [USKToken alloc];
  MEMORY[0x27439E610](&v252, "int[]");
  v148 = objc_msgSend_initWithTfToken_(v145, v146, &v252, v147);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v149, v148, @"int[]");

  if ((v252 & 7) != 0)
  {
    atomic_fetch_add_explicit((v252 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v150 = [USKToken alloc];
  MEMORY[0x27439E610](&v251, "BOOL");
  v153 = objc_msgSend_initWithTfToken_(v150, v151, &v251, v152);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v154, v153, @"BOOL");

  if ((v251 & 7) != 0)
  {
    atomic_fetch_add_explicit((v251 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v155 = [USKToken alloc];
  MEMORY[0x27439E610](&v250, "BOOL[]");
  v158 = objc_msgSend_initWithTfToken_(v155, v156, &v250, v157);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v159, v158, @"BOOL[]");

  if ((v250 & 7) != 0)
  {
    atomic_fetch_add_explicit((v250 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v160 = [USKToken alloc];
  MEMORY[0x27439E610](&v249, "uint");
  v163 = objc_msgSend_initWithTfToken_(v160, v161, &v249, v162);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v164, v163, @"uint");

  if ((v249 & 7) != 0)
  {
    atomic_fetch_add_explicit((v249 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v165 = [USKToken alloc];
  MEMORY[0x27439E610](&v248, "uint[]");
  v168 = objc_msgSend_initWithTfToken_(v165, v166, &v248, v167);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v169, v168, @"uint[]");

  if ((v248 & 7) != 0)
  {
    atomic_fetch_add_explicit((v248 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v170 = [USKToken alloc];
  MEMORY[0x27439E610](&v247, "timecode");
  v173 = objc_msgSend_initWithTfToken_(v170, v171, &v247, v172);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v174, v173, @"timecode");

  if ((v247 & 7) != 0)
  {
    atomic_fetch_add_explicit((v247 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v175 = [USKToken alloc];
  MEMORY[0x27439E610](&v246, "token");
  v178 = objc_msgSend_initWithTfToken_(v175, v176, &v246, v177);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v179, v178, @"token");

  if ((v246 & 7) != 0)
  {
    atomic_fetch_add_explicit((v246 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v180 = [USKToken alloc];
  MEMORY[0x27439E610](&v245, "token[]");
  v183 = objc_msgSend_initWithTfToken_(v180, v181, &v245, v182);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v184, v183, @"token[]");

  if ((v245 & 7) != 0)
  {
    atomic_fetch_add_explicit((v245 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v185 = [USKToken alloc];
  MEMORY[0x27439E610](&v244, "string");
  v188 = objc_msgSend_initWithTfToken_(v185, v186, &v244, v187);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v189, v188, @"string");

  if ((v244 & 7) != 0)
  {
    atomic_fetch_add_explicit((v244 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v190 = [USKToken alloc];
  MEMORY[0x27439E610](&v243, "string[]");
  v193 = objc_msgSend_initWithTfToken_(v190, v191, &v243, v192);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v194, v193, @"string[]");

  if ((v243 & 7) != 0)
  {
    atomic_fetch_add_explicit((v243 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v195 = [USKToken alloc];
  MEMORY[0x27439E610](&v242, "quatf");
  v198 = objc_msgSend_initWithTfToken_(v195, v196, &v242, v197);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v199, v198, @"quatf");

  if ((v242 & 7) != 0)
  {
    atomic_fetch_add_explicit((v242 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v200 = [USKToken alloc];
  MEMORY[0x27439E610](&v241, "quatf[]");
  v203 = objc_msgSend_initWithTfToken_(v200, v201, &v241, v202);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v204, v203, @"quatf[]");

  if ((v241 & 7) != 0)
  {
    atomic_fetch_add_explicit((v241 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v205 = [USKToken alloc];
  MEMORY[0x27439E610](&v240, "rel");
  v208 = objc_msgSend_initWithTfToken_(v205, v206, &v240, v207);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v209, v208, @"rel");

  if ((v240 & 7) != 0)
  {
    atomic_fetch_add_explicit((v240 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v210 = [USKToken alloc];
  MEMORY[0x27439E610](&v239, "rel");
  v213 = objc_msgSend_initWithTfToken_(v210, v211, &v239, v212);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v214, v213, @"rel");

  if ((v239 & 7) != 0)
  {
    atomic_fetch_add_explicit((v239 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v215 = [USKToken alloc];
  MEMORY[0x27439E610](&v238, "asset[]");
  v218 = objc_msgSend_initWithTfToken_(v215, v216, &v238, v217);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v219, v218, @"asset[]");

  if ((v238 & 7) != 0)
  {
    atomic_fetch_add_explicit((v238 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v220 = [USKToken alloc];
  MEMORY[0x27439E610](&v237, "asset");
  v223 = objc_msgSend_initWithTfToken_(v220, v221, &v237, v222);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v224, v223, @"asset");

  if ((v237 & 7) != 0)
  {
    atomic_fetch_add_explicit((v237 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v225 = [USKToken alloc];
  MEMORY[0x27439E610](&v236, "asset");
  v228 = objc_msgSend_initWithTfToken_(v225, v226, &v236, v227);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v229, v228, @"asset");

  if ((v236 & 7) != 0)
  {
    atomic_fetch_add_explicit((v236 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v230 = [USKToken alloc];
  v235 = 0;
  v233 = objc_msgSend_initWithTfToken_(v230, v231, &v235, v232);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE550, v234, v233, @"unknown");

  if ((v235 & 7) != 0)
  {
    atomic_fetch_add_explicit((v235 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_270337D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;

  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_2703383DC(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_2807CE570);

  _Unwind_Resume(a1);
}

void sub_270338434()
{
  v0 = [USKToken alloc];
  MEMORY[0x27439E610](&v77, "BindingAPI");
  v3 = objc_msgSend_initWithTfToken_(v0, v1, &v77, v2);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE568, v4, v3, @"BindingAPI");

  if ((v77 & 7) != 0)
  {
    atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = [USKToken alloc];
  MEMORY[0x27439E610](&v76, "Preliminary_AnchoringAPI");
  v8 = objc_msgSend_initWithTfToken_(v5, v6, &v76, v7);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE568, v9, v8, @"Preliminary_AnchoringAPI");

  if ((v76 & 7) != 0)
  {
    atomic_fetch_add_explicit((v76 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = [USKToken alloc];
  MEMORY[0x27439E610](&v75, "MaterialBindingAPI");
  v13 = objc_msgSend_initWithTfToken_(v10, v11, &v75, v12);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE568, v14, v13, @"MaterialBindingAPI");

  if ((v75 & 7) != 0)
  {
    atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = [USKToken alloc];
  MEMORY[0x27439E610](&v74, "PhysicsRigidBodyAPI");
  v18 = objc_msgSend_initWithTfToken_(v15, v16, &v74, v17);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE568, v19, v18, @"PhysicsRigidBodyAPI");

  if ((v74 & 7) != 0)
  {
    atomic_fetch_add_explicit((v74 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = [USKToken alloc];
  MEMORY[0x27439E610](&v73, "PhysicsMassAPI");
  v23 = objc_msgSend_initWithTfToken_(v20, v21, &v73, v22);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE568, v24, v23, @"PhysicsMassAPI");

  if ((v73 & 7) != 0)
  {
    atomic_fetch_add_explicit((v73 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = [USKToken alloc];
  MEMORY[0x27439E610](&v72, "PhysicsCollisionAPI");
  v28 = objc_msgSend_initWithTfToken_(v25, v26, &v72, v27);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE568, v29, v28, @"PhysicsCollisionAPI");

  if ((v72 & 7) != 0)
  {
    atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = [USKToken alloc];
  MEMORY[0x27439E610](&v71, "PhysicsMeshCollisionAPI");
  v33 = objc_msgSend_initWithTfToken_(v30, v31, &v71, v32);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE568, v34, v33, @"PhysicsMeshCollisionAPI");

  if ((v71 & 7) != 0)
  {
    atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v35 = [USKToken alloc];
  MEMORY[0x27439E610](&v70, "PhysicsMaterialAPI");
  v38 = objc_msgSend_initWithTfToken_(v35, v36, &v70, v37);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE568, v39, v38, @"PhysicsMaterialAPI");

  if ((v70 & 7) != 0)
  {
    atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v40 = [USKToken alloc];
  MEMORY[0x27439E610](&v69, "PhysicsFilteredPairsAPI");
  v43 = objc_msgSend_initWithTfToken_(v40, v41, &v69, v42);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE568, v44, v43, @"PhysicsFilteredPairsAPI");

  if ((v69 & 7) != 0)
  {
    atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v45 = [USKToken alloc];
  MEMORY[0x27439E610](&v68, "Preliminary_PhysicsColliderAPI");
  v48 = objc_msgSend_initWithTfToken_(v45, v46, &v68, v47);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE568, v49, v48, @"Preliminary_PhysicsColliderAPI");

  if ((v68 & 7) != 0)
  {
    atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v50 = [USKToken alloc];
  MEMORY[0x27439E610](&v67, "Preliminary_PhysicsMaterialAPI");
  v53 = objc_msgSend_initWithTfToken_(v50, v51, &v67, v52);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE568, v54, v53, @"Preliminary_PhysicsMaterialAPI");

  if ((v67 & 7) != 0)
  {
    atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v55 = [USKToken alloc];
  MEMORY[0x27439E610](&v66, "Preliminary_PhysicsRigidBodyAPI");
  v58 = objc_msgSend_initWithTfToken_(v55, v56, &v66, v57);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE568, v59, v58, @"Preliminary_PhysicsRigidBodyAPI");

  if ((v66 & 7) != 0)
  {
    atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v60 = [USKToken alloc];
  v65 = 0;
  v63 = objc_msgSend_initWithTfToken_(v60, v61, &v65, v62);
  objc_msgSend_setObject_forKeyedSubscript_(qword_2807CE568, v64, v63, @"Unknown");

  if ((v65 & 7) != 0)
  {
    atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_270338934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;

  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void *sub_270338C34(void *a1, uint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      sub_270338CB4(a1, v4, a2);
      a2 += 2;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_270338CB4(void *a1, void *a2, uint64_t *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_270338D54(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_270338D54(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !sub_270338EF8(a1, a5, a2 + 4))
  {
    if (!sub_270338EF8(a1, a2 + 4, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_270338EF8(a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_270338EF8(a1, v12 + 4, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_270338FC8(a1, a3, a5);
}

uint64_t sub_270338EF8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (*a2)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (v3)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 == 0;
    }

    return !v6;
  }

  else
  {
    if (v3 == v4)
    {
      return 0;
    }

    v8 = v3 & 0xFFFFFFFFFFFFFFF8;
    v9 = v4 & 0xFFFFFFFFFFFFFFF8;
    v10 = *(v8 + 8);
    v11 = *(v9 + 8);
    if (v10 < v11)
    {
      return 1;
    }

    if (v10 != v11)
    {
      return 0;
    }

    else
    {
      v14 = *(v9 + 16);
      v12 = v9 + 16;
      v13 = v14;
      v15 = *(v12 + 23);
      v18 = *(v8 + 16);
      v16 = v8 + 16;
      v17 = v18;
      v19 = *(v16 + 23);
      if (v19 >= 0)
      {
        v20 = *(v16 + 23);
      }

      else
      {
        v20 = *(v16 + 8);
      }

      if (v19 >= 0)
      {
        v21 = v16;
      }

      else
      {
        v21 = v17;
      }

      if (v15 >= 0)
      {
        v22 = *(v12 + 23);
      }

      else
      {
        v22 = *(v12 + 8);
      }

      if (v15 >= 0)
      {
        v23 = v12;
      }

      else
      {
        v23 = v13;
      }

      if (v22 >= v20)
      {
        v24 = v20;
      }

      else
      {
        v24 = v22;
      }

      v25 = memcmp(v21, v23, v24);
      if (v25)
      {
        return v25 < 0;
      }

      else
      {
        return v20 < v22;
      }
    }
  }
}

void *sub_270338FC8(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_270338EF8(a1, a3, v4 + 4))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_270338EF8(a1, v8 + 4, a3))
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

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t *sub_270339064(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  a1[1] = a2[1];
  return a1;
}

void sub_2703390C0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2703390C0(a1, *a2);
    sub_2703390C0(a1, a2[1]);

    v4 = a2[4];
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a2);
  }
}

uint64_t sub_270339134(uint64_t a1, uint64_t *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_270338EF8(a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_270338EF8(a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t sub_2703391C4(uint64_t a1, uint64_t *a2)
{
  v3 = 0;
  result = *sub_270338FC8(a1, &v3, a2);
  if (!result)
  {
    sub_270339268();
  }

  return result;
}

void sub_2703395E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2703398AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27031CBCC(va);
  sub_27031CBCC(va1);

  _Unwind_Resume(a1);
}

void sub_270339A58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27031CBCC(va);
  _Unwind_Resume(a1);
}

void sub_270339DDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter *a17, __int16 a18, char a19, char a20)
{
  sub_270312AB8(&a10);
  sub_270312AB8(&a17);
  sub_27033F57C(&a18);

  _Unwind_Resume(a1);
}

id sub_270339E4C()
{
  if (qword_2807CE580 != -1)
  {
    sub_27036CB3C();
  }

  v1 = qword_2807CE578;

  return v1;
}

void sub_27033A0AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter *a12, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter *a20, __int16 a21, char a22, char a23)
{
  sub_270312AB8(&a12);
  sub_270312AB8(&a13);
  sub_27033E9EC(&a20);
  sub_27033F57C(&a21);
  if (*(v26 - 49) < 0)
  {
    operator delete(*(v26 - 72));
  }

  _Unwind_Resume(a1);
}

void sub_27033A298(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270312AB8(va);

  _Unwind_Resume(a1);
}

void sub_27033A484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter *a15, __int16 a16, char a17, char a18)
{
  sub_270312AB8(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_27033F57C(&a16);
  _Unwind_Resume(a1);
}

void sub_27033A744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter *a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_27033E9EC(&a20);
  sub_27033F57C(&a21);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27033AA30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_27033EB54(&a9, a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27033AABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_27036CBF4(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27033AAD4(uint64_t *a1)
{
  v3 = a1[1];
  v2 = a1 + 1;
  if (!v3)
  {
    return sub_27036CC3C(v7);
  }

  v4 = *(sub_27033EBB0(v2) + 14);
  result = *a1;
  if (v4 != 1 || result == 0)
  {
    return sub_27036CC3C(v7);
  }

  return result;
}

void sub_27033B238(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_27033B284(va);
  sub_27033B284(va1);

  _Unwind_Resume(a1);
}

uint64_t sub_27033B284(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_270314574(v3);
  }

  return a1;
}

void sub_27033B4E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_27033B624(va);
  sub_27033B624(va1);

  _Unwind_Resume(a1);
}

uint64_t sub_27033B548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1 < 2)
  {
    *a2 = 2;
    *(a2 + 8) = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    *(a2 + 24) = 0;
  }

  else
  {

    return sub_27033EC28(a2, v3, (a1 + 8), (a1 + 16), (a1 + 24));
  }

  return result;
}

uint64_t sub_27033B5C8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_270314574(v3);
  }

  return a1;
}

uint64_t sub_27033B624(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_270314574(v3);
  }

  return a1;
}

void sub_27033B9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_27033B624(&a9);
  sub_27033B624(&a13);
  sub_27033B284(&a21);
  sub_27033B5C8(v22 - 80);

  _Unwind_Resume(a1);
}

uint64_t sub_27033BA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 == 1)
  {

    return sub_27033EC28(a2, 1, (a1 + 8), (a1 + 16), (a1 + 24));
  }

  else
  {
    *a2 = 1;
    *(a2 + 8) = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    *(a2 + 24) = 0;
  }

  return result;
}

void sub_27033C01C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_27030E880(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27033C288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_27033B284(&a9);
  sub_27033B284(&a13);
  _Unwind_Resume(a1);
}

void sub_27033C3C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, atomic_uint *a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    if (atomic_fetch_add_explicit(a19 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a19 + 8))(a19);
    }
  }

  _Unwind_Resume(a1);
}

void sub_27033C664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_270312A4C(a14);
  }

  _Unwind_Resume(exception_object);
}

void *sub_27033C6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_27033EDE0(a1);
  result = *a1;
  if (*a1)
  {
    result = (*(*result + 112))(result, *(a1 + 16));
    v6 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3);
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  *(a2 + 8) = v7;
  *(a2 + 16) = v6;
  return result;
}

void sub_27033C8B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27033CE88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24)
{
  sub_27033F310(v25 - 176, *(v25 - 168));

  _Unwind_Resume(a1);
}

void sub_27033D208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_270311D34(va);
  sub_270311D34(va1);
  if ((a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_27033D5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_270311D34(va1);
  sub_270311D34(va);
  if ((a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a4 & 7) != 0)
  {
    atomic_fetch_add_explicit((a4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_27033DA14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_270311D34(va);
  sub_270311D34(va1);

  _Unwind_Resume(a1);
}

void sub_27033DED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_270311D34(v35 - 152);
  sub_270311D34(v35 - 88);

  _Unwind_Resume(a1);
}

uint64_t sub_27033E064(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__7VtArrayINS_12SdfAssetPathEEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2880401F0);
}

void sub_27033E2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_270311D34(va);
  sub_270311D34(va1);

  _Unwind_Resume(a1);
}

void sub_27033E3BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_27036CBF4(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_27033E45C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    sub_27036CBF4(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_27033E584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  std::locale::~locale(&a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27033E658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = USKScene;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **sub_27033E684(pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **a1)
{
  v1 = *a1;
  *a1 = 0;
  v3 = 0;
  sub_27036BFF4(a1, v1);
  return sub_270312AB8(&v3);
}

void sub_27033E6C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270312AB8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27033E734()
{
  qword_2807CE578 = os_log_create("com.apple.usdkit", "uskscene");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_27033E778(pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  if (*this > 4u || ((1 << *this) & 0x1A) == 0)
  {
    return 0;
  }

  v3 = *(this + 1);
  if (!v3 || (*(v3 + 57) & 8) != 0)
  {
    return 0;
  }

  if (*this == 1)
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::UsdObject::_GetDefiningSpecType(this);
  if (*this != 3 || result != 1)
  {
    return *this == 4 && result == 8;
  }

  return result;
}

uint64_t *sub_27033E814(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_270313C14(a1 + 1, a2 + 1);
  return a1;
}

void sub_27033E88C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_27033E8E0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_27033E8E0(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t *sub_27033EA1C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  a1[1] = 0;
  if (v3)
  {
    sub_27033EA94((v3 + 16), &v6);
    v4 = a1[1];
    a1[1] = v6;
    v6 = 0;
    if (v4)
    {
      sub_27036CD70(v4, &v6);
    }
  }

  return a1;
}

void sub_27033EA7C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_27036CBF4(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_27033EA94@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = atomic_load(a1);
  if (!result)
  {
    operator new();
  }

  *a2 = result;
  atomic_fetch_add_explicit((result + 8), 1u, memory_order_relaxed);
  return result;
}

void sub_27033EB54(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_27033EB54(a1, *a2);
    sub_27033EB54(a1, a2[1]);
    sub_27032EE78((a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_27033EBB0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v2 = j__strrchr("/AppleInternal/Library/BuildRoots/4~B_v6ugBY-l5sUVfK5EJf9R7tbqpF46xGwO4Ng7I/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/refPtr.h", 47);
    sub_270312AE8("/AppleInternal/Library/BuildRoots/4~B_v6ugBY-l5sUVfK5EJf9R7tbqpF46xGwO4Ng7I/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/refPtr.h", v2, 0x2Fu);
    v3 = pxrInternal__aapl__pxrReserved__::Tf_PostNullSmartPtrDereferenceFatalError();
    return sub_27033EC28(v3);
  }

  return result;
}

uint64_t sub_27033EC28(uint64_t a1, int a2, uint64_t *a3, _DWORD *a4, uint64_t *a5)
{
  *a1 = a2;
  v8 = *a3;
  *(a1 + 8) = *a3;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 48), 1uLL, memory_order_relaxed);
  }

  sub_2703256DC((a1 + 16), a4);
  sub_270325728((a1 + 20), a4 + 1);
  v9 = *a5;
  *(a1 + 24) = *a5;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(a1 + 8);
  if (v10 && (*(v10 + 57) & 8) == 0 && *(v10 + 16) == *(a1 + 16))
  {
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper();
  }

  return a1;
}

void sub_27033ED24(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_27031CBCC(v1 + 16);
  v4 = *(v1 + 8);
  if (v4)
  {
    sub_270314574(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27033ED5C(uint64_t a1)
{
  if (!*a1)
  {
    return 0;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((*a1 + 8)))
  {
    return 1;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
  return 0;
}

uint64_t sub_27033EDE0(uint64_t a1)
{
  if (!*a1)
  {
    return 0;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((*a1 + 8)))
  {
    return 1;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
  return 0;
}

uint64_t sub_27033EE64(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    sub_27033EF28(result, a4);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27033EF28(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_27033F008(a1, a2);
  }

  sub_27030E894();
}

void *sub_27033EF74(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v9 = *a2;
  v10 = *(a2 + 2);
  v7 = *a3;
  v8 = *(a3 + 2);
  result = sub_27033F060(a1, &v9, &v7, v4);
  *(a1 + 8) = result;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27033F008(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_27030E994();
}

void *sub_27033F060(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  v9 = 0;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  while (!sub_27033F10C(a2, a3))
  {
    sub_27033F190(*(a2 + 8), *(a2 + 16), v11);
    ++*(a2 + 16);
    v11 += 3;
  }

  LOBYTE(v9) = 1;
  v6 = v11;
  sub_27033F290(v8);
  return v6;
}

BOOL sub_27033F10C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    return *(a1 + 16) == *(a2 + 16);
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
  return 0;
}

void *sub_27033F190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_27033ED5C(a1);
  if (result)
  {
    v7 = *a1;
    v8 = *(a1 + 16);

    return sub_27033F200(v7, a2, a3);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void *sub_27033F200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = (*(*a1 + 112))(a1);
  v6 = *result + 24 * a2;
  if (*(v6 + 23) < 0)
  {
    v8 = *v6;
    v9 = *(v6 + 8);

    return sub_2703129A8(a3, v8, v9);
  }

  else
  {
    v7 = *v6;
    *(a3 + 16) = *(v6 + 16);
    *a3 = v7;
  }

  return result;
}

uint64_t sub_27033F290(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_27033F2C8(a1);
  }

  return a1;
}

void sub_27033F2C8(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void sub_27033F310(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_27033F310(a1, *a2);
    sub_27033F310(a1, a2[1]);
    sub_270311D34((a2 + 5));
    v4 = a2[4];
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a2);
  }
}

void sub_27033F384(uint64_t a1, uint64_t a2)
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
        v9 = v5 + 48 * v4;
        v10 = *a2;
        *(v9 + 16) = *(a2 + 16);
        *v9 = v10;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *a2 = 0;
        v11 = *(a2 + 24);
        *(v9 + 40) = *(a2 + 40);
        *(v9 + 24) = v11;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        *(a2 + 24) = 0;
LABEL_13:
        ++*a1;
        return;
      }
    }

LABEL_14:
    sub_27036CE68(a1, v4, a2);
    goto LABEL_13;
  }

  sub_27036CDEC(a1);
}

uint64_t *sub_27033F45C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  a1[1] = 0;
  if (v3)
  {
    sub_27033EA94((v3 + 16), &v6);
    v4 = a1[1];
    a1[1] = v6;
    v6 = 0;
    if (v4)
    {
      sub_27036CD70(v4, &v6);
    }
  }

  return a1;
}

void sub_27033F4BC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_27036CBF4(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_27033F4E0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void *sub_27033F508(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_288041790;
  a1[1] = 0;
  v5 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3, a4);
  v6 = a1[1];
  a1[1] = v5;

  return a1;
}

void sub_27033F5A8(uint64_t a1)
{

  JUMPOUT(0x27439F3D0);
}

uint64_t sub_27033F5F4()
{
  if (!atomic_load(off_279E01250))
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  return MEMORY[0x2822062D0]();
}

uint64_t sub_27033F644()
{
  if (!atomic_load(off_279E01250))
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  return MEMORY[0x2822062D8]();
}

id sub_27033F694(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_firstObject(*(a1 + 8), a2, a3, a4);
  if (objc_msgSend_count(*(a1 + 8), v6, v7, v8) >= 2)
  {
    v12 = objc_msgSend_userInfo(v5, v9, v10, v11);
    v16 = objc_msgSend_mutableCopy(v12, v13, v14, v15);

    v17 = *(a1 + 8);
    v21 = objc_msgSend_count(v17, v18, v19, v20);
    v23 = objc_msgSend_subarrayWithRange_(v17, v22, 1, v21 - 1);
    objc_msgSend_setObject_forKey_(v16, v24, v23, @"AdditionalErrors");
    v25 = MEMORY[0x277CCA9B8];
    v29 = objc_msgSend_domain(v5, v26, v27, v28);
    v33 = objc_msgSend_code(v5, v30, v31, v32);
    v37 = objc_msgSend_copy(v16, v34, v35, v36);
    v39 = objc_msgSend_errorWithDomain_code_userInfo_(v25, v38, v29, v33, v37);

    v5 = v39;
  }

  return v5;
}

void sub_27033F808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_27033F8A0(*(a2 + 72), a2 + 40, a3, a4);
  v5 = *(a1 + 8);
  objc_sync_enter(v5);
  objc_msgSend_addObject_(*(a1 + 8), v6, v8, v7);
  objc_sync_exit(v5);
}

void sub_27033F880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

id sub_27033F8A0(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) >= 0)
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a2, a4);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, *a2, a4);
  }
  v5 = ;
  if (v5)
  {
    v8 = v5;
    hasPrefix = objc_msgSend_hasPrefix_(v5, v6, @"Usd crate file version mismatch", v7);
  }

  else
  {
    v8 = @"Unkown error.";
    hasPrefix = objc_msgSend_hasPrefix_(@"Unkown error.", v6, @"Usd crate file version mismatch", v7);
  }

  v11 = hasPrefix;
  v17 = *MEMORY[0x277CCA450];
  v18[0] = v8;
  v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v18, &v17, 1);
  if (v11)
  {
    objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v12, @"USDKitErrorDomain", 1001, v13);
  }

  else
  {
    objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v12, @"USDKitErrorDomain", a1, v13);
  }
  v14 = ;

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void sub_27033F9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_27033F8A0(4, a3, a3, a4);
  v5 = *(a1 + 8);
  objc_sync_enter(v5);
  objc_msgSend_addObject_(*(a1 + 8), v6, v8, v7);
  objc_sync_exit(v5);
}

void sub_27033FA5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_27033FC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  *(v28 - 88) = &a27;
  sub_270348098((v28 - 88));
  MEMORY[0x27439E280](v28 - 112);

  _Unwind_Resume(a1);
}

void sub_27033FF10(_Unwind_Exception *a1)
{
  MEMORY[0x27439E280](v4 - 240);

  _Unwind_Resume(a1);
}

void sub_270340118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v18 - 56) = &a17;
  sub_270348098((v18 - 56));
  MEMORY[0x27439E280](v18 - 80);

  _Unwind_Resume(a1);
}

void sub_270340370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void **a33)
{
  if ((a17 & 7) != 0)
  {
    atomic_fetch_add_explicit((a17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  a33 = (v34 - 104);
  sub_270348098(&a33);
  MEMORY[0x27439E280](v34 - 72);

  _Unwind_Resume(a1);
}

uint64_t sub_2703403F0(pxrInternal__aapl__pxrReserved__::UsdGeomXformOp *a1)
{
  if (*(a1 + 132) != 1)
  {
    sub_270315E64(a1);

    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::GfMatrix4d>();
  }

  v4[1] = "usdGeom/xformOp.h";
  v4[2] = "Set";
  v4[3] = 406;
  v4[4] = "BOOL pxrInternal__aapl__pxrReserved__::UsdGeomXformOp::Set(const T &, UsdTimeCode) const [T = pxrInternal__aapl__pxrReserved__::GfMatrix4d]";
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::UsdGeomXformOp::GetOpName(v4, a1);
  v1 = v4[0] & 0xFFFFFFFFFFFFFFF8;
  if ((v4[0] & 0xFFFFFFFFFFFFFFF8) != 0 && *(v1 + 39) < 0)
  {
    v2 = *(v1 + 16);
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
  if ((v4[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v4[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return 0;
}

void sub_27034064C(_Unwind_Exception *a1)
{
  MEMORY[0x27439E250](v2 - 120);
  sub_27033B284(v2 - 96);

  _Unwind_Resume(a1);
}

void sub_2703408D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    sub_27030E880(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_270340A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27033B284(va);

  _Unwind_Resume(a1);
}

uint64_t sub_270340D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 == 3)
  {

    return sub_27033EC28(a2, 3, (a1 + 8), (a1 + 16), (a1 + 24));
  }

  else
  {
    *a2 = 3;
    *(a2 + 8) = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    *(a2 + 24) = 0;
  }

  return result;
}

uint64_t sub_270340DF4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_270314574(v3);
  }

  return a1;
}

uint64_t sub_270340E50(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_270314574(v3);
  }

  return a1;
}

void sub_270341210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_270340E50(va);
  if ((a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x27439E1B0](va1);

  _Unwind_Resume(a1);
}

uint64_t sub_270341294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *a2 = *a1;
  v4 = *(a1 + 8);
  *(a2 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  sub_2703256DC((a2 + 16), (a1 + 16));
  sub_270325728((a2 + 20), (a1 + 20));
  v5 = *(a1 + 24);
  *(a2 + 24) = v5;
  v6 = (a2 + 24);
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v6 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = 0u;
  *v20 = 1;
  *&v20[8] = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  memset(&v20[24], 0, 24);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v20[32], v20);
  *(&v21 + 1) = 0;
  *&v20[32] = MEMORY[0x277D867A8] + 16;
  if ((v20[24] & 7) != 0)
  {
    atomic_fetch_add_explicit((*&v20[24] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v20[16]);
  if (*&v20[8])
  {
    sub_270314574(*&v20[8]);
  }

  v19 = 0;
  v18 = 0;
  while (pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetConnectedSource())
  {
    if (v18 == 2)
    {
      pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetOutput(&v13, &v20[32], &v19);
      *v20 = v13;
      *&v20[8] = v14;
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 48), 1uLL, memory_order_relaxed);
      }

      sub_2703256DC(&v20[16], &v15);
      sub_270325728(&v20[20], &v16);
      *&v20[24] = v17;
      if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *&v20[24] &= 0xFFFFFFFFFFFFFFF8;
      }

      *a2 = *v20;
      v10 = *(a2 + 8);
      if (v10)
      {
        sub_270314574(v10);
      }

      *(a2 + 8) = *&v20[8];
      *&v20[8] = 0;
      sub_270325804(a2 + 16, &v20[16]);
      sub_27032585C(a2 + 20, &v20[20]);
      if (v20 == a2)
      {
        if ((v20[24] & 7) != 0)
        {
          atomic_fetch_add_explicit((*&v20[24] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        if ((*v6 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *v6 = *&v20[24];
        *&v20[24] = 0;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_2703143D8(&v20[16]);
      if (*&v20[8])
      {
        sub_270314574(*&v20[8]);
      }

      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if (v18 == 1)
      {
        pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetInput(v20, &v20[32], &v19);
        *a2 = *v20;
        v7 = *&v20[8];
        if (*&v20[8])
        {
          atomic_fetch_add_explicit((*&v20[8] + 48), 1uLL, memory_order_relaxed);
        }

        v8 = *(a2 + 8);
        if (v8)
        {
          sub_270314574(v8);
        }

        *(a2 + 8) = v7;
        sub_27032787C(a2 + 16, &v20[16]);
        sub_2703278D4(a2 + 20, &v20[20]);
        sub_270325CAC((a2 + 24), &v20[24]);
        if ((v20[24] & 7) != 0)
        {
          atomic_fetch_add_explicit((*&v20[24] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_2703143D8(&v20[16]);
        v9 = *&v20[8];
        if (!*&v20[8])
        {
          goto LABEL_54;
        }

LABEL_53:
        sub_270314574(v9);
        goto LABEL_54;
      }

      sub_270347BF8(&v13, &v20[40], &v21);
      pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(v20, &v13, &v19);
      *a2 = *v20;
      v11 = *(a2 + 8);
      if (v11)
      {
        sub_270314574(v11);
      }

      *(a2 + 8) = *&v20[8];
      *&v20[8] = 0;
      sub_270325804(a2 + 16, &v20[16]);
      sub_27032585C(a2 + 20, &v20[20]);
      if (v20 == a2)
      {
        if ((v20[24] & 7) != 0)
        {
          atomic_fetch_add_explicit((*&v20[24] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        if ((*v6 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *v6 = *&v20[24];
        *&v20[24] = 0;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_2703143D8(&v20[16]);
      if (*&v20[8])
      {
        sub_270314574(*&v20[8]);
      }

      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v15);
    v9 = v14;
    if (v14)
    {
      goto LABEL_53;
    }

LABEL_54:
    if ((sub_27033E778(a2) & 1) == 0)
    {
      break;
    }
  }

  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return MEMORY[0x27439E3F0](&v20[32]);
}

void sub_2703416F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27033B284(va);
  sub_270340E50(v7);
  _Unwind_Resume(a1);
}

uint64_t sub_270341768(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_270314574(v3);
  }

  return a1;
}

uint64_t sub_2703417C4@<X0>(UsdPrim *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdShadeShader *a2@<X8>)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v3 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v10, a1);
  v10 = MEMORY[0x277D86758] + 16;
  if (v11 && (*(v11 + 57) & 8) == 0 && (*(MEMORY[0x277D86758] + 48))(v3))
  {
    memset(&v9, 0, 32);
    pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::GetSurfaceAttr(&v7[32], &v10);
    MEMORY[0x27439E190](&v9, &v7[32]);
    if ((BYTE8(v8) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v8 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v8);
    if (*&v7[40])
    {
      sub_270314574(*&v7[40]);
    }

    if (pxrInternal__aapl__pxrReserved__::UsdShadeOutput::IsOutput(&v9, v4))
    {
      *&v7[32] = 0u;
      v8 = 0u;
      *v7 = 1;
      *&v7[8] = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      *&v7[24] = 0;
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v7[32], v7);
      *(&v8 + 1) = 0;
      *&v7[32] = MEMORY[0x277D867A8] + 16;
      if ((v7[24] & 7) != 0)
      {
        atomic_fetch_add_explicit((*&v7[24] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_2703143D8(&v7[16]);
      if (*&v7[8])
      {
        sub_270314574(*&v7[8]);
      }

      pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetConnectedSource();
      if (*&v7[40] && (*(*&v7[40] + 57) & 8) == 0 && (*(*&v7[32] + 32))(&v7[32]))
      {
        *a2 = 0;
        *(a2 + 1) = 0;
        *(a2 + 2) = 0;
        pxrInternal__aapl__pxrReserved__::UsdShadeShader::UsdShadeShader();
        v5 = *(a2 + 1);
        if (v5 && (*(v5 + 57) & 8) == 0 && (*(*a2 + 32))(a2))
        {
          memset(v7, 0, 32);
          pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetIdAttr(v7, a2);
          pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
        }

        MEMORY[0x27439E1B0](a2);
      }

      MEMORY[0x27439E3F0](&v7[32]);
    }

    if ((v9._proxyPrimPath._propPart._poolHandle & 7) != 0)
    {
      atomic_fetch_add_explicit((v9._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v9._proxyPrimPath);
    if (v9._prim._p._pointer)
    {
      sub_270314574(v9._prim._p._pointer);
    }
  }

  v9._type = 1;
  v9._prim._p._pointer = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  v9._proxyPrimPath._propPart._poolHandle = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a2, &v9);
  *a2 = MEMORY[0x277D86708] + 16;
  if ((v9._proxyPrimPath._propPart._poolHandle & 7) != 0)
  {
    atomic_fetch_add_explicit((v9._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v9._proxyPrimPath);
  if (v9._prim._p._pointer)
  {
    sub_270314574(v9._prim._p._pointer);
  }

  return MEMORY[0x27439E290](&v10);
}

void sub_270341BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  sub_270340E50(va);
  if ((a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x27439E1B0](v5);
  if ((a5 & 7) != 0)
  {
    atomic_fetch_add_explicit((a5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x27439E3F0](va1);
  sub_270340DF4(va2);
  MEMORY[0x27439E290](v6 - 56);
  _Unwind_Resume(a1);
}

uint64_t sub_270341C94@<X0>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  MEMORY[0x27439E610](a2, "unknown");
  result = sub_27033E778(a1);
  if (result)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v6, a1);
    v6 = MEMORY[0x277D86708] + 16;
    if (v7 && (*(v7 + 57) & 8) == 0 && (*(MEMORY[0x277D86708] + 48))(&v6))
    {
      v4 = 0u;
      v5 = 0u;
      pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetIdAttr(&v4, &v6);
      if (sub_27033E778(&v4))
      {
        pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
      }

      if ((BYTE8(v5) & 7) != 0)
      {
        atomic_fetch_add_explicit((*(&v5 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_2703143D8(&v5);
      if (*(&v4 + 1))
      {
        sub_270314574(*(&v4 + 1));
      }
    }

    return MEMORY[0x27439E1B0](&v6);
  }

  return result;
}

void sub_270341DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MEMORY[0x27439E1B0](va);
  if ((*v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

id sub_270341E10(uint64_t a1, unsigned __int8 *a2)
{
  v70[2] = *MEMORY[0x277D85DE8];
  v70[0] = 0;
  v70[1] = 0;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
  v4 = a2[23];
  if (a2[23] < 0)
  {
    if ((*(a2 + 1) != 1 || **a2 != 114) && (*(a2 + 1) != 1 || **a2 != 103) && (*(a2 + 1) != 1 || **a2 != 98))
    {
      if (*(a2 + 1) == 1)
      {
        if (**a2 == 97)
        {
          goto LABEL_38;
        }

        if ((v4 & 0x80) == 0)
        {
          goto LABEL_50;
        }
      }

      if (*(a2 + 1) == 3)
      {
        if (**a2 == 26482 && *(*a2 + 2) == 98)
        {
          goto LABEL_38;
        }

        if ((v4 & 0x80) == 0)
        {
          goto LABEL_50;
        }
      }

      if (*(a2 + 1) != 4)
      {
        goto LABEL_50;
      }

      v5 = *a2;
LABEL_5:
      if (*v5 == 1633838962)
      {
        goto LABEL_38;
      }

LABEL_50:
      if (sub_270342848(a2, "result"))
      {
        v22 = [USKData alloc];
        sub_270313C14(v60, v70);
        v23 = atomic_load(off_279E01258);
        if (!v23)
        {
          pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
        }

        TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a1);
        Type = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetType(&TypeName);
        v53 = 0;
        v51[0] = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FindType(v23, Type, &v53);
        pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v52, v51);
        v26 = objc_msgSend_initWithVtValue_typeName_(v22, v25, v60, &v52);
        if ((v52 & 7) != 0)
        {
          atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v53 & 7) != 0)
        {
          atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v27 = v60;
        goto LABEL_118;
      }

      if (a2[23] < 0)
      {
        a2 = *a2;
      }

      sub_270347BF8(v51, (a1 + 8), (a1 + 16));
      v30 = *sub_2703428CC(v51) & 0xFFFFFFFFFFFFFFF8;
      if (v30)
      {
        v31 = (v30 + 16);
        if (*(v30 + 39) < 0)
        {
          v31 = *v31;
        }
      }

      else
      {
        v31 = "";
      }

      NSLog(&cfstr_UnrecognizedOu.isa, a2, v31);
      sub_27033B284(v51);
LABEL_80:
      v26 = 0;
      goto LABEL_119;
    }
  }

  else if (v4 == 1)
  {
    v7 = *a2 - 98;
    v8 = v7 > 0x10;
    v9 = (1 << v7) & 0x10021;
    v10 = v8 || v9 == 0;
    if (v10 && *a2 != 97)
    {
      goto LABEL_50;
    }
  }

  else
  {
    if (v4 != 3)
    {
      v5 = a2;
      if (v4 != 4)
      {
        goto LABEL_50;
      }

      goto LABEL_5;
    }

    if (*a2 != 26482 || a2[2] != 98)
    {
      goto LABEL_50;
    }
  }

LABEL_38:
  v51[0] = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a1);
  v12 = MEMORY[0x277D86578];
  if (!atomic_load(MEMORY[0x277D86578]))
  {
    sub_270318AF4(MEMORY[0x277D86578]);
  }

  if ((pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==() & 1) == 0)
  {
    TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a1);
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(v51, &TypeName);
    v28 = v51[0] & 0xFFFFFFFFFFFFFFF8;
    if ((v51[0] & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v29 = (v28 + 16);
      if (*(v28 + 39) < 0)
      {
        v29 = *v29;
      }
    }

    else
    {
      v29 = "";
    }

    if (a2[23] < 0)
    {
      a2 = *a2;
    }

    NSLog(&cfstr_WarningIncorre.isa, v29, a2);
    if ((v51[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v51[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    goto LABEL_80;
  }

  v14 = sub_270326C14(v70);
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[2];
  v18 = v14[3];
  v19 = a2[23];
  if ((a2[23] & 0x80000000) == 0)
  {
    if (v19 != 1)
    {
      if (v19 == 3)
      {
        goto LABEL_44;
      }

      goto LABEL_111;
    }

    v32 = *a2;
    if (v32 != 98)
    {
      if (v32 != 103)
      {
        if (v32 == 114)
        {
LABEL_84:
          v33 = [USKData alloc];
          v69 = &unk_28803FCC3;
          v68 = v15;
          v34 = atomic_load(v12);
          if (!v34)
          {
            v34 = sub_270318AF4(MEMORY[0x277D86578]);
          }

          pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v58, (v34 + 56));
          v26 = objc_msgSend_initWithVtValue_typeName_(v33, v35, &v68, &v58);
          if ((v58 & 7) != 0)
          {
            atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v27 = &v68;
          goto LABEL_118;
        }

        if (*a2 != 97)
        {
          goto LABEL_111;
        }

LABEL_103:
        v42 = [USKData alloc];
        v63 = &unk_28803FCC3;
        v62 = v18;
        v43 = atomic_load(v12);
        if (!v43)
        {
          v43 = sub_270318AF4(MEMORY[0x277D86578]);
        }

        pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v55, (v43 + 56));
        v26 = objc_msgSend_initWithVtValue_typeName_(v42, v44, &v62, &v55);
        if ((v55 & 7) != 0)
        {
          atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v27 = &v62;
        goto LABEL_118;
      }

LABEL_89:
      v36 = [USKData alloc];
      v67 = &unk_28803FCC3;
      v66 = v16;
      v37 = atomic_load(v12);
      if (!v37)
      {
        v37 = sub_270318AF4(MEMORY[0x277D86578]);
      }

      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v57, (v37 + 56));
      v26 = objc_msgSend_initWithVtValue_typeName_(v36, v38, &v66, &v57);
      if ((v57 & 7) != 0)
      {
        atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v27 = &v66;
      goto LABEL_118;
    }

    goto LABEL_94;
  }

  if (*(a2 + 1) == 1 && **a2 == 114)
  {
    goto LABEL_84;
  }

  if (*(a2 + 1) == 1 && **a2 == 103)
  {
    goto LABEL_89;
  }

  if (*(a2 + 1) == 1 && **a2 == 98)
  {
LABEL_94:
    v39 = [USKData alloc];
    v65 = &unk_28803FCC3;
    v64 = v17;
    v40 = atomic_load(v12);
    if (!v40)
    {
      v40 = sub_270318AF4(MEMORY[0x277D86578]);
    }

    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v56, (v40 + 56));
    v26 = objc_msgSend_initWithVtValue_typeName_(v39, v41, &v64, &v56);
    if ((v56 & 7) != 0)
    {
      atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v27 = &v64;
    goto LABEL_118;
  }

  if (*(a2 + 1) == 1)
  {
    if (**a2 == 97)
    {
      goto LABEL_103;
    }

    if ((v19 & 0x80) == 0)
    {
      goto LABEL_111;
    }
  }

  if (*(a2 + 1) == 3)
  {
    a2 = *a2;
LABEL_44:
    if (*a2 == 26482 && a2[2] == 98)
    {
      v21 = [USKData alloc];
      v61[3] = &off_28803FBF8 + 2;
      operator new();
    }
  }

LABEL_111:
  v45 = [USKData alloc];
  sub_270313C14(v61, v70);
  v46 = atomic_load(off_279E01258);
  if (!v46)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
  }

  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a1);
  v47 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetType(&TypeName);
  v53 = 0;
  v51[0] = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FindType(v46, v47, &v53);
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v54, v51);
  v26 = objc_msgSend_initWithVtValue_typeName_(v45, v48, v61, &v54);
  if ((v54 & 7) != 0)
  {
    atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v53 & 7) != 0)
  {
    atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = v61;
LABEL_118:
  sub_270311D34(v27);
LABEL_119:
  sub_270311D34(v70);
  v49 = *MEMORY[0x277D85DE8];

  return v26;
}

void sub_270342670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if ((a19 & 7) != 0)
  {
    atomic_fetch_add_explicit((a19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_270311D34(v19 - 152);
  sub_270311D34(v19 - 88);
  _Unwind_Resume(a1);
}

BOOL sub_270342848(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_270348AAC();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t sub_2703428CC(_DWORD *a1)
{
  if (*a1 != 1)
  {
    return (a1 + 6);
  }

  v2 = sub_270347E1C(a1);

  return pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v2);
}

void sub_270343008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_270340E50(&a25);
  MEMORY[0x27439E1B0](&a30);
  sub_270340E50(&a37);
  v41 = sub_270341768(v39 - 144);
  *(v39 - 144) = v39 - 168;
  sub_27034811C(v41);
  MEMORY[0x27439E1B0](v39 - 112);

  _Unwind_Resume(a1);
}

void sub_2703436A0(_Unwind_Exception *a1)
{
  MEMORY[0x27439E1B0](v3 - 112);

  _Unwind_Resume(a1);
}

void sub_270343C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  MEMORY[0x27439E1B0](v11 - 112);

  _Unwind_Resume(a1);
}

void sub_2703448F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_270311D34(v48 - 120);
  sub_270340E50(&a20);
  sub_270341768(&a24);
  if ((a29 & 7) != 0)
  {
    atomic_fetch_add_explicit((a29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_27033B284(&a30);
  sub_27033B284(&a34);
  sub_270340E50(&a38);
  sub_270340E50(&a42);
  sub_27033B284(&a46);
  sub_270340E50(v48 - 240);
  v50 = sub_270341768(v48 - 176);
  *(v48 - 176) = v48 - 200;
  sub_27034811C(v50);

  MEMORY[0x27439E1B0](v48 - 144);
  _Unwind_Resume(a1);
}

uint64_t sub_270344B44(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 12)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_288040408);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_270344B7C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_270344B44(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

std::type_info *sub_270344C10(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_270344B44(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_288040408, v1, v2);
    v1 = sub_270312D2C(v1, v5);
    sub_270311D34(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_2703454FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, char a32, uint64_t a33, char a34, uint64_t a35, char a36)
{
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_270311D34(&a26);

  _Unwind_Resume(a1);
}

void sub_270345E10(uint64_t a1, void *a2, void *a3)
{
  v110 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_property_(v5, v7, v6, v8);
  v108 = 0;
  v109 = 0;
  v13 = objc_msgSend_data(v9, v10, v11, v12);
  v17 = v13;
  if (v13)
  {
    objc_msgSend_value(v13, v14, v15, v16);
  }

  else
  {
    v108 = 0;
    v109 = 0;
  }

  v98 = 0;
  v96 = 0u;
  v97 = 0u;
  v20 = objc_msgSend_stringByAppendingString_(v6, v18, @":indices", v19);
  v23 = objc_msgSend_property_(v5, v21, v20, v22);
  v24 = v23 == 0;

  if (!v24)
  {
    v28 = objc_msgSend_stringByAppendingString_(v6, v25, @":indices", v27);
    v31 = objc_msgSend_property_(v5, v29, v28, v30);
    v35 = objc_msgSend_data(v31, v32, v33, v34);
    v39 = v35;
    if (v35)
    {
      objc_msgSend_value(v35, v36, v37, v38);
    }

    else
    {
      v107[0] = 0;
      v107[1] = 0;
    }

    sub_270346560(v107, &v99);
    sub_270310E24(&v96);
    v96 = v99;
    v97 = v100;
    v99 = 0u;
    v100 = 0u;
    v98 = v101;
    *&v101 = 0;
    sub_270310E24(&v99);
    sub_270311D34(v107);
  }

  v40 = objc_msgSend_metadata(v9, v25, v26, v27);
  v107[0] = 0;
  MEMORY[0x27439E610](v107, "constant");
  v43 = objc_msgSend_objectForKeyedSubscript_(v40, v41, @"interpolation", v42);
  v44 = v43 == 0;

  if (!v44)
  {
    v47 = objc_msgSend_objectForKeyedSubscript_(v40, v45, @"interpolation", v46);
    v51 = v47;
    if (v47)
    {
      objc_msgSend_value(v47, v48, v49, v50);
    }

    else
    {
      v99 = 0uLL;
    }

    sub_2703465E4(&v99, &v95);
    if ((v107[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v107[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v107[0] = v95;
    v95 = 0;
    sub_270311D34(&v99);
  }

  v52 = objc_msgSend_objectForKeyedSubscript_(v40, v45, @"elementSize", v46);
  v53 = v52 == 0;

  if (v53)
  {
    v61 = 1;
  }

  else
  {
    v56 = objc_msgSend_objectForKeyedSubscript_(v40, v54, @"elementSize", v55);
    v60 = v56;
    if (v56)
    {
      objc_msgSend_value(v56, v57, v58, v59);
    }

    else
    {
      v99 = 0uLL;
    }

    v61 = sub_270346668(&v99);
    sub_270311D34(&v99);
  }

  v95 = 0;
  v62 = objc_msgSend_objectForKeyedSubscript_(v40, v54, @"typeName", v55);
  v63 = v62 == 0;

  if (!v63)
  {
    v66 = objc_msgSend_objectForKeyedSubscript_(v40, v64, @"typeName", v65);
    v70 = v66;
    if (v66)
    {
      objc_msgSend_value(v66, v67, v68, v69);
    }

    else
    {
      v99 = 0uLL;
    }

    sub_2703465E4(&v99, &v94);
    if ((v95 & 7) != 0)
    {
      atomic_fetch_add_explicit((v95 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v71 = v94;
    v94 = 0;
    v95 = v71;
    sub_270311D34(&v99);
  }

  v94 = 0;
  v72 = v6;
  v76 = objc_msgSend_UTF8String(v6, v73, v74, v75);
  MEMORY[0x27439E610](&v94, v76);
  if (objc_msgSend_hasPrefix_(v6, v77, @"primvars:", v78))
  {
    v82 = objc_msgSend_length(@"primvars:", v79, v80, v81);
    v85 = objc_msgSend_substringFromIndex_(v6, v83, v82, v84);
    v86 = v85;
    v90 = objc_msgSend_UTF8String(v85, v87, v88, v89);
    MEMORY[0x27439E610](&v99, v90);
    if ((v94 & 7) != 0)
    {
      atomic_fetch_add_explicit((v94 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v94 = v99;
    *&v99 = 0;
  }

  sub_270313C14(&v99, &v108);
  v100 = v96;
  v101 = v97;
  v102 = v98;
  if (v98)
  {
    v91 = (v98 - 16);
    if (*(&v101 + 1))
    {
      v91 = *(&v101 + 1);
    }

    atomic_fetch_add_explicit(v91, 1uLL, memory_order_relaxed);
  }

  v103 = v94;
  if ((v94 & 7) != 0 && (atomic_fetch_add_explicit((v94 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v103 &= 0xFFFFFFFFFFFFFFF8;
  }

  v92 = atomic_load(off_279E01258);
  if (!v92)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
  }

  Type = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FindType(v92, &v95);
  v105 = v107[0];
  if ((v107[0] & 7) != 0 && (atomic_fetch_add_explicit((v107[0] & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v105 &= 0xFFFFFFFFFFFFFFF8;
  }

  v106 = v61;
  sub_2703163EC((a1 + 8), &v99);
  if ((v105 & 7) != 0)
  {
    atomic_fetch_add_explicit((v105 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v103 & 7) != 0)
  {
    atomic_fetch_add_explicit((v103 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_270310E24(&v100);
  sub_270311D34(&v99);
  if ((v94 & 7) != 0)
  {
    atomic_fetch_add_explicit((v94 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v95 & 7) != 0)
  {
    atomic_fetch_add_explicit((v95 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v107[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v107[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_270310E24(&v96);
  sub_270311D34(&v108);

  v93 = *MEMORY[0x277D85DE8];
}

void sub_270346370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  if ((a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(v8 - 104);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_270310E24(va);
  sub_270311D34(v8 - 88);

  _Unwind_Resume(a1);
}

uint64_t sub_270346560@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 1);
  if (!v4 || *((v4 & 0xFFFFFFFFFFFFFFF8) + 16) != 52 && ((v4 & 4) == 0 || (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(this, &stru_288040178) & 1) == 0))
  {
    return sub_27036CF1C(this, a2);
  }

  return sub_2703483F8(this, a2);
}

uint64_t *sub_2703465E4@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *this@<X0>, atomic_uint **a2@<X8>)
{
  v4 = *(this + 1);
  if (!v4 || *((v4 & 0xFFFFFFFFFFFFFFF8) + 16) != 13 && ((v4 & 4) == 0 || (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(this, &stru_2880400E8) & 1) == 0))
  {
    return sub_27036CF84(this, a2);
  }

  return sub_270348B54(this, a2);
}

uint64_t sub_270346668(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v2 = *(this + 1);
  if (!v2 || *((v2 & 0xFFFFFFFFFFFFFFF8) + 16) != 5 && ((v2 & 4) == 0 || (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(this, MEMORY[0x277D827C0]) & 1) == 0))
  {
    return *pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }

  return sub_270348C10(this);
}

uint64_t sub_2703466FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_inheritedProperty_(v3, v4, @"primvars:normals", v5);

  if (v6)
  {
    v9 = @"primvars:normals";
  }

  else
  {
    v10 = objc_msgSend_property_(v3, v7, @"normals", v8);

    if (!v10)
    {
      v11 = 0;
      goto LABEL_6;
    }

    v9 = @"normals";
  }

  sub_270345E10(a1, v3, v9);
  v11 = 1;
LABEL_6:

  return v11;
}

BOOL sub_2703467AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_inheritedProperty_(v3, v4, @"primvars:tangent", v5);

  if (v6)
  {
    sub_270345E10(a1, v3, @"primvars:tangent");
  }

  return v6 != 0;
}

void sub_270347640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, char a60)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  STACK[0x3D0] = &a41;
  sub_270348338(&STACK[0x3D0]);
  MEMORY[0x27439E470](&a44);
  STACK[0x3D0] = &a57;
  sub_270348044(&STACK[0x3D0]);
  sub_270311D34(v60 - 248);
  sub_270347F24(&a60);
  sub_27033B284(&STACK[0x250]);

  _Unwind_Resume(a1);
}

uint64_t sub_2703479E0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_270348728(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(v3 + 32) = *(a2 + 32);
    *(a2 + 32) = 0;
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_270347A3C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 120) = -1;
  sub_270347A84(a1, a2);
  return a1;
}

uint64_t sub_270347A84(uint64_t a1, uint64_t a2)
{
  result = sub_270314308(a1);
  v5 = *(a2 + 120);
  if (v5 != -1)
  {
    v6 = a1;
    result = (*(&off_2880417F8 + v5))(&v6, a2);
    *(a1 + 120) = v5;
  }

  return result;
}

_DWORD *sub_270347AE8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = *a2;
  v4 = *(a2 + 8);
  *(v3 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  sub_2703256DC((v3 + 16), (a2 + 16));
  result = sub_270325728((v3 + 20), (a2 + 20));
  v6 = *(a2 + 24);
  *(v3 + 24) = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(v3 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

uint64_t sub_270347B78(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    sub_270314574(v5);
  }

  *(a1 + 8) = v4;
  sub_27032787C(a1 + 16, (a2 + 16));
  sub_2703278D4(a1 + 20, (a2 + 20));
  sub_270325CAC((a1 + 24), (a2 + 24));
  return a1;
}

uint64_t sub_270347BF8(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  *a1 = 1;
  v5 = *a2;
  *(a1 + 8) = *a2;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 48), 1uLL, memory_order_relaxed);
  }

  sub_2703256DC((a1 + 16), a3);
  sub_270325728((a1 + 20), a3 + 1);
  *(a1 + 24) = 0;
  v6 = *(a1 + 8);
  if (v6 && (*(v6 + 57) & 8) == 0 && *(v6 + 16) == *(a1 + 16))
  {
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper();
  }

  return a1;
}

void sub_270347CC4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_27031CBCC(v1 + 16);
  v4 = *(v1 + 8);
  if (v4)
  {
    sub_270314574(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_270347CFC(uint64_t result, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(result + 8))
  {
    v3 = result;
    v9 = 0;
    v10 = 0;
    result = sub_270311CD0(&v9, a2);
    v4 = v3[1];
    v5 = ~*(v3 + 2);
    a2[1] = v4;
    if ((v5 & 3) != 0)
    {
      result = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 24))(v3, a2);
    }

    else
    {
      *a2 = *v3;
    }

    if (v10)
    {
      result = (*(v10 + 32))(&v9);
    }
  }

  else
  {
    v6 = a2[1];
    if (v6)
    {
      v7 = (a2[1] & 3) == 3;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      result = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 32))(a2);
    }

    a2[1] = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_270347DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a11)
  {
    (*(a11 + 32))(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_270347E1C(uint64_t a1)
{
  v2 = a1 + 16;
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
  {
    return v2;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    return v3 + 16;
  }

  return MEMORY[0x2822068F8]();
}

void sub_270347E7C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_270347ED0(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_270347ED0(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = sub_270319078(v3, i))
  {
    i -= 88;
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t sub_270347F24(uint64_t a1)
{
  v3 = (a1 + 112);
  sub_270347FA0(&v3);
  sub_270310E24(a1 + 72);
  sub_270310E24(a1 + 32);
  v3 = (a1 + 8);
  sub_270347E7C(&v3);
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void sub_270347FA0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_270347FF4(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_270347FF4(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_270310E24(i))
  {
    i -= 40;
  }

  *(a1 + 8) = a2;
}

void sub_270348044(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 1);
        v3 -= 8;
        v5 = v6;
        if ((v6 & 7) != 0)
        {
          atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    operator delete(v4);
  }
}

void sub_270348098(void ***a1)
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
        v4 -= 136;
        sub_270314308(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_27034811C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_270348170(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_270348170(void *result)
{
  v1 = result;
  v3 = *result;
  v2 = result[1];
  if (v2 != *result)
  {
    v4 = v2 - 12;
    do
    {
      v5 = *(v4 + 4);
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_2703143D8(v4 - 4);
      result = *(v4 - 12);
      if (result)
      {
        result = sub_270314574(result);
      }

      v6 = v4 - 20;
      v4 -= 32;
    }

    while (v6 != v3);
  }

  v1[1] = v3;
  return result;
}

uint64_t sub_2703481F4(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_270312990();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t sub_2703482DC(uint64_t result)
{
  if (result)
  {
    if (*(result + 23) < 0)
    {
      operator delete(*result);
    }

    JUMPOUT(0x27439F3D0);
  }

  return result;
}

void sub_270348338(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 24;
      v7 = v4 - 24;
      v8 = v4 - 24;
      do
      {
        v9 = *v8;
        v8 -= 24;
        (*v9)(v7);
        v6 -= 24;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_2703483F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  result = sub_2703484AC(a1);
  v5 = *(result + 32);
  *(result + 32) = 0;
  *(a2 + 32) = v5;
  v6 = *(result + 16);
  v7 = *result;
  v8 = *(a2 + 16);
  *result = *a2;
  *(result + 16) = v8;
  *a2 = v7;
  *(a2 + 16) = v6;
  v9 = *(result + 24);
  *(result + 24) = 0;
  *(a2 + 24) = v9;
  v10 = a1[1];
  if (v10 && (a1[1] & 3) != 3)
  {
    result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
  }

  a1[1] = 0;
  return result;
}

uint64_t sub_2703484AC(uint64_t *a1)
{
  v2 = a1[1];
  if ((v2 & 4) != 0)
  {
    sub_27036CFE4(v2, a1);
  }

  return sub_27032C27C(a1);
}

uint64_t sub_2703484E8(void *a1, uint64_t *a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_27030E894();
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
    sub_27034867C(a1, v7);
  }

  v8 = (8 * v2);
  v12[0] = 0;
  v12[1] = v8;
  v13 = 0;
  v14 = 0;
  v9 = *a2;
  *v8 = *a2;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v8 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = v8 + 1;
  sub_2703485E8(a1, v12);
  v10 = a1[1];
  sub_2703486C4(v12);
  return v10;
}

void sub_2703485D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2703486C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2703485E8(uint64_t result, void *a2)
{
  v3 = *result;
  v2 = *(result + 8);
  v4 = a2[1] + *result - v2;
  if (v2 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v2);
    do
    {
      *v6++ = *v5;
      *v5++ = 0;
    }

    while (v5 != v2);
    do
    {
      if ((*v3 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  *(result + 8) = v7;
  a2[1] = v7;
  v8 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v8;
  v9 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void sub_27034867C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_27030E994();
}

uint64_t sub_2703486C4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  while (v3 != v2)
  {
    v5 = *(v3 - 8);
    v3 -= 8;
    v4 = v5;
    *(a1 + 16) = v3;
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      v3 = *(a1 + 16);
    }
  }

  v6 = *a1;
  if (*a1)
  {
    operator delete(v6);
  }

  return a1;
}

uint64_t sub_270348728(uint64_t *a1, uint64_t a2)
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

  v18 = a1;
  if (v6)
  {
    sub_270348864(a1, v6);
  }

  v7 = 40 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(v7 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *&v17 = 40 * v2 + 40;
  v9 = a1[1];
  v10 = 40 * v2 + *a1 - v9;
  sub_2703488BC(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_270348A30(&v15);
  return v14;
}

void sub_270348850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_270348A30(va);
  _Unwind_Resume(a1);
}

void sub_270348864(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_27030E994();
}

uint64_t sub_2703488BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  sub_270348970(a1, a2, a3);
  return sub_2703489B4(v9);
}

void sub_270348970(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_2703489B4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2703489EC(a1);
  }

  return a1;
}

void sub_2703489EC(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 40;
    sub_270310E24(v1);
  }
}

uint64_t sub_270348A30(uint64_t a1)
{
  sub_270348A68(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_270348A68(uint64_t a1, uint64_t a2)
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

void sub_270348AC4(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_270348B20(exception, a1);
  __cxa_throw(exception, off_279E01268, MEMORY[0x277D825F8]);
}

std::logic_error *sub_270348B20(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t *sub_270348B54@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  result = sub_270348BD8(a1);
  v5 = *result;
  *result = 0;
  *a2 = v5;
  v6 = a1[1];
  if (v6)
  {
    v7 = (a1[1] & 3) == 3;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    result = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
  }

  a1[1] = 0;
  return result;
}

void *sub_270348BD8(void *a1)
{
  v2 = a1[1];
  if ((v2 & 4) != 0)
  {
    sub_27036D05C(v2, a1);
  }

  return a1;
}

uint64_t sub_270348C10(void *a1)
{
  v2 = sub_270348C68(a1);
  v3 = *v2;
  *v2 = 0;
  v4 = a1[1];
  if (v4)
  {
    v5 = (a1[1] & 3) == 3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
  }

  a1[1] = 0;
  return v3;
}

void *sub_270348C68(void *a1)
{
  v2 = a1[1];
  if ((v2 & 4) != 0)
  {
    sub_27036D0D4(v2, a1);
  }

  return a1;
}

void sub_270348D24(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_270348E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_270348F30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_270349198(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v1 = 0uLL;
  operator new();
}

void sub_270349230(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_270312A4C(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_270349284(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    v4 = *(a1 + 8);
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v2)
    {
      sub_270312A4C(v2);
    }

    v6 = v4[7];
    v5 = v4[8];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = *(a1 + 16);
    *(a1 + 8) = v6;
    *(a1 + 16) = v5;
    if (v7)
    {
      sub_270312A4C(v7);
    }

    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = v4 + 3;
    v9 = v4[3];
    v10 = v3;
    if (v9)
    {
      v11 = v3;
      do
      {
        v12 = v9;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          v12 = *v8;
        }

        v10 = v4[4];
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v11)
        {
          sub_270312A4C(v11);
          sub_270312A4C(v11);
        }

        v8 = v12 + 3;
        v9 = v12[3];
        v11 = v10;
        v4 = v12;
      }

      while (v9);
    }

    v13 = *(a1 + 8);
    if (v10)
    {
      sub_270312A4C(v10);
    }

    v2 = v3;
    if (!v13)
    {
      v14 = 0uLL;
      operator new();
    }
  }
}

void sub_2703493FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_270312A4C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_270349418()
{
  v0 = 0;
  v1 = 0;
  operator new();
}

void sub_270349988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    sub_270312A4C(a14);
    if (!v16)
    {
LABEL_3:
      if (!v17)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v16)
  {
    goto LABEL_3;
  }

  sub_270312A4C(v16);
  if (!v17)
  {
LABEL_5:
    if (a16)
    {
      sub_270312A4C(a16);
    }

    _Unwind_Resume(exception_object);
  }

LABEL_4:
  sub_270312A4C(v17);
  goto LABEL_5;
}

void sub_2703499EC(uint64_t a1, uint64_t a2)
{
  v25 = 0;
  v26 = 0;
  sub_270349C48(a1, a2, &v25);
  v3 = v25;
  if (v25)
  {
    v4 = v26;
    v5 = v26;
    while (1)
    {
      v6 = v3[2];
      if (v6)
      {
        v7 = std::__shared_weak_count::lock(v6);
        v8 = v7 ? v3[1] : 0;
      }

      else
      {
        v8 = 0;
        v7 = 0;
      }

      v9 = *(a1 + 8);
      if (v8 == v9 && !v3[3])
      {
        v22 = *(v9 + 56);
        if (v22)
        {
          break;
        }
      }

      v10 = v3[2];
      if (v10)
      {
        v11 = std::__shared_weak_count::lock(v10);
        if (v11)
        {
          v12 = v3[1];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
        v11 = 0;
      }

      v14 = v3[3];
      v13 = v3[4];
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      v15 = *(v12 + 32);
      *(v12 + 24) = v14;
      *(v12 + 32) = v13;
      if (v15)
      {
        sub_270312A4C(v15);
      }

      v16 = v3[3];
      if (v16)
      {
        v18 = v3[1];
        v17 = v3[2];
        if (v17)
        {
          atomic_fetch_add_explicit((v17 + 16), 1uLL, memory_order_relaxed);
        }

        v19 = *(v16 + 16);
        *(v16 + 8) = v18;
        *(v16 + 16) = v17;
        if (v19)
        {
          std::__shared_weak_count::__release_weak(v19);
        }
      }

      v20 = v3[7];
      if (!v20)
      {
        v21 = 3;
        if (!v11)
        {
          goto LABEL_37;
        }

LABEL_36:
        sub_270312A4C(v11);
        goto LABEL_37;
      }

      v4 = v3[8];
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = v4;
      if (v5)
      {
        sub_270312A4C(v5);
      }

      if (v4)
      {
        sub_270312A4C(v4);
        v21 = 0;
LABEL_31:
        v5 = v4;
        goto LABEL_35;
      }

      v5 = 0;
      v21 = 0;
LABEL_35:
      v3 = v20;
      if (v11)
      {
        goto LABEL_36;
      }

LABEL_37:
      if (v7)
      {
        sub_270312A4C(v7);
      }

      if (v21 == 3)
      {
        goto LABEL_56;
      }
    }

    v11 = *(v9 + 64);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = *(a1 + 16);
    *(a1 + 8) = v22;
    *(a1 + 16) = v11;
    if (v23)
    {
      sub_270312A4C(v23);
      v22 = *(a1 + 8);
    }

    v24 = *(v22 + 48);
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    if (v24)
    {
      std::__shared_weak_count::__release_weak(v24);
    }

    v20 = v3[7];
    v4 = v3[8];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v26 = v4;
    if (v5)
    {
      sub_270312A4C(v5);
    }

    --*a1;
    if (v4)
    {
      sub_270312A4C(v4);
    }

    v21 = 2;
    goto LABEL_31;
  }

  v4 = v26;
LABEL_56:
  if (v4)
  {

    sub_270312A4C(v4);
  }
}

void sub_270349C48(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  while (1)
  {
    while (1)
    {
      v7 = v6;
      if (*(v5 + 72) == -1 || *(*v5 + 4) < *(a2 + 4))
      {
        break;
      }

      if (*v5 == a2)
      {
        *a3 = v5;
        a3[1] = v6;
        return;
      }

      v9 = *(v5 + 16);
      if (v9)
      {
        v10 = std::__shared_weak_count::lock(v9);
        if (v10)
        {
          v11 = *(v5 + 8);
          if (!v7)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v11 = 0;
          if (!v7)
          {
            goto LABEL_20;
          }
        }

LABEL_19:
        sub_270312A4C(v7);
        goto LABEL_20;
      }

      v11 = 0;
      v10 = 0;
      if (v7)
      {
        goto LABEL_19;
      }

LABEL_20:
      v5 = *(v11 + 56);
      if (!v5)
      {
        goto LABEL_29;
      }

      v6 = *(v11 + 64);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = v10;
      v8 = v5;
      if (v10)
      {
LABEL_24:
        sub_270312A4C(v7);
        v5 = v8;
      }
    }

    v8 = *(v5 + 24);
    if (!v8)
    {
      break;
    }

    v6 = *(v5 + 32);
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_8:
    v5 = v8;
    if (v7)
    {
      goto LABEL_24;
    }
  }

  v8 = *(v5 + 56);
  if (v8)
  {
    v6 = *(v5 + 64);
    if (!v6)
    {
      goto LABEL_8;
    }

LABEL_7:
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_8;
  }

  v10 = v6;
LABEL_29:
  *a3 = 0;
  a3[1] = 0;
  if (v10)
  {

    sub_270312A4C(v10);
  }
}

void *sub_270349DB4(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = 0;
  sub_270349C48(a1, a2, &v10);
  v2 = v10;
  if (!v10)
  {
    v7 = v11;
    if (!v11)
    {
      return v2;
    }

    goto LABEL_21;
  }

  v3 = v10[7];
  if (v3)
  {
    v4 = v11;
    do
    {
      v5 = v2[8];
      v2 = v3;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v4)
      {
        sub_270312A4C(v4);
      }

      v3 = v2[7];
      v4 = v5;
    }

    while (v3);
    v11 = v5;
  }

  v6 = v2[2];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v2[1];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  if (v11)
  {
    sub_270312A4C(v11);
  }

  if (*(v8 + 72) == -1)
  {
    v2 = 0;
    if (!v7)
    {
      return v2;
    }

    goto LABEL_21;
  }

  v2 = *v8;
  if (v7)
  {
LABEL_21:
    sub_270312A4C(v7);
  }

  return v2;
}

void *sub_270349EA0(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  sub_270349C48(a1, a2, &v8);
  v2 = v8;
  if (v8)
  {
    v3 = v8[7];
    if (v3)
    {
      v4 = v9;
      do
      {
        v5 = v2[8];
        v2 = v3;
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v4)
        {
          sub_270312A4C(v4);
        }

        v3 = v2[7];
        v4 = v5;
      }

      while (v3);
      v9 = v5;
    }

    v6 = v2[3];
    if (v6)
    {
      v2 = *v6;
    }

    else
    {
      v2 = 0;
    }
  }

  if (v9)
  {
    sub_270312A4C(v9);
  }

  return v2;
}

void sub_270349F40(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_270349FC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270349FD4(va);
  _Unwind_Resume(a1);
}

void **sub_270349FD4(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_27034A0DC(v2);
    MEMORY[0x27439F3D0](v3, 0x1020C40DCAD37ECLL);
  }

  return a1;
}

void sub_27034A020(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x27439F3D0);
}

void *sub_27034A058(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_27034A0DC(result);

    JUMPOUT(0x27439F3D0);
  }

  return result;
}

uint64_t sub_27034A09C(uint64_t a1, uint64_t a2)
{
  if (sub_27034A130(a2, &unk_288041868))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_27034A0DC(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    sub_270312A4C(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    sub_270312A4C(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

BOOL sub_27034A130(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void sub_27034A328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_270340E50(va);
  _Unwind_Resume(a1);
}

void sub_27034A524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if ((a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_270340E50(va);
  _Unwind_Resume(a1);
}

void sub_27034AA54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_27034AA70@<X0>(_DWORD *result@<X0>, void *a2@<X8>)
{
  v9[2] = *MEMORY[0x277D85DE8];
  if (*result != 3)
  {
LABEL_17:
    a2[1] = 0;
    goto LABEL_18;
  }

  v7 = 0u;
  v8 = 0u;
  sub_270340D70(result, &v7);
  if (sub_27033E778(&v7))
  {
    v9[0] = 0;
    v9[1] = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      sub_270313C14(a2, v9);
      sub_270311D34(v9);
      v3 = 0;
      goto LABEL_12;
    }

    sub_270311D34(v9);
  }

  else
  {
    v4 = *sub_2703428CC(&v7) & 0xFFFFFFFFFFFFFFF8;
    if (v4)
    {
      v5 = (v4 + 16);
      if (*(v4 + 39) < 0)
      {
        v5 = *v5;
      }
    }

    else
    {
      v5 = "";
    }

    NSLog(&cfstr_WarningInvalid_0.isa, v5);
  }

  v3 = 1;
LABEL_12:
  if ((BYTE8(v8) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v8 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v8);
  result = *(&v7 + 1);
  if (*(&v7 + 1))
  {
    result = sub_270314574(*(&v7 + 1));
  }

  if (v3)
  {
    goto LABEL_17;
  }

LABEL_18:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27034ABC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_270311D34(va1);
  sub_270340E50(va);
  _Unwind_Resume(a1);
}

void sub_27034AC7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_27034ADE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27031CBCC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_27034ADF8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
  {
    if (*a1 == 1)
    {
      sub_2703256DC(a2, (a1 + 16));
      v4 = a2 + 1;
      v5 = (a1 + 20);
LABEL_7:

      return sub_270325728(v4, v5);
    }

    v8 = (a1 + 16);
LABEL_15:

    return pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(a2, v8, (a1 + 24));
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    if (*a1 == 1)
    {
      sub_2703256DC(a2, (v6 + 16));
      v4 = a2 + 1;
      v5 = (v6 + 20);
      goto LABEL_7;
    }

    v8 = (v6 + 16);
    goto LABEL_15;
  }

  *a2 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();

  return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
}

void sub_27034B4C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24)
{
  sub_27033F310(v25 - 176, *(v25 - 168));

  _Unwind_Resume(a1);
}

uint64_t sub_27034B61C(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x27439F390](a1 + 128);
  return a1;
}

void sub_27034B950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_270311D34(va);
  sub_270311D34(va1);
  if ((a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_27034BD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_270311D34(va1);
  sub_270311D34(va);
  if ((a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a4 & 7) != 0)
  {
    atomic_fetch_add_explicit((a4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_27034C12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_270311D34(va);
  sub_270311D34(va1);

  _Unwind_Resume(a1);
}

void sub_27034C3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_270311D34(va);
  sub_270311D34(va1);

  _Unwind_Resume(a1);
}

void sub_27034C62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_270311D34(va);
  sub_270311D34(va1);

  _Unwind_Resume(a1);
}

void sub_27034C818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_27031CBCC(&a9);
  *(v13 - 40) = &a10;
  sub_270325B58((v13 - 40));
  sub_270340E50(&a13);
  _Unwind_Resume(a1);
}

void sub_27034CA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18)
{
  a18 = &a10;
  sub_270325B58(&a18);
  sub_270340E50(&a13);
  _Unwind_Resume(a1);
}

void sub_27034CC4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a2)
  {
    sub_27030E880(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_27034CCC0(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_2703106C4(result, a2);
    }

    sub_27030E894();
  }

  return result;
}

void sub_27034CD68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270357B34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27034CD7C(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = sub_270357954(a1, a2);
  }

  else
  {
    sub_2703258B8(*(a1 + 8), a2);
    sub_2703258F4((v4 + 4), a2 + 1);
    result = v4 + 8;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_27034D02C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a2)
  {
    sub_27030E880(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27034D19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 == 4)
  {

    return sub_27033EC28(a2, 4, (a1 + 8), (a1 + 16), (a1 + 24));
  }

  else
  {
    *a2 = 4;
    *(a2 + 8) = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    *(a2 + 24) = 0;
  }

  return result;
}

uint64_t sub_27034D220(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_270314574(v3);
  }

  return a1;
}

void sub_27034D56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_270311D34(v7 - 64);
  sub_270340E50(va);
  _Unwind_Resume(a1);
}

void sub_27034D8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_270311D34(v7 - 56);
  sub_270340E50(va);
  sub_270340E50(va1);
  _Unwind_Resume(a1);
}

void sub_27034DC20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

uint64_t sub_27034E104@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, uint64_t a2@<X8>)
{
  if ((sub_270329094(a1) & 1) == 0)
  {
    return sub_27036D14C(a1, a2);
  }

  return sub_270357FFC(a1, a2);
}

_DWORD *sub_27034E204@<X0>(_DWORD *result@<X0>, atomic_uint **a2@<X8>)
{
  v20[2] = *MEMORY[0x277D85DE8];
  if (*result != 3)
  {
LABEL_28:
    *a2 = 0;
    goto LABEL_29;
  }

  v16 = 0u;
  v17 = 0u;
  sub_270340D70(result, &v16);
  if (sub_27033E778(&v16))
  {
    v20[0] = 0;
    v20[1] = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (sub_270325BE0(v20))
      {
        v3 = sub_270325C18(v20);
        v4 = *v3;
        *a2 = *v3;
        if ((v4 & 7) != 0)
        {
          v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
          if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
          {
            *a2 = v5;
          }
        }

LABEL_19:
        sub_270311D34(v20);
        v14 = 0;
        goto LABEL_23;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v20);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_2880400E8, v9))
      {
        v18 = 0;
        v19 = 0;
        v10 = sub_270325D00(v20);
        sub_270313C14(&v18, v10);
        if (v19)
        {
          v11 = sub_270325C18(&v18);
          v12 = *v11;
          *a2 = *v11;
          if ((v12 & 7) != 0)
          {
            v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
            if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
            {
              *a2 = v13;
            }
          }

          sub_270311D34(&v18);
          goto LABEL_19;
        }

        sub_270311D34(&v18);
      }
    }

    sub_270311D34(v20);
  }

  else
  {
    v6 = *sub_2703428CC(&v16) & 0xFFFFFFFFFFFFFFF8;
    if (v6)
    {
      v7 = (v6 + 16);
      if (*(v6 + 39) < 0)
      {
        v7 = *v7;
      }
    }

    else
    {
      v7 = "";
    }

    NSLog(&cfstr_WarningInvalid_0.isa, v7);
  }

  v14 = 1;
LABEL_23:
  if ((BYTE8(v17) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v17 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v17);
  result = *(&v16 + 1);
  if (*(&v16 + 1))
  {
    result = sub_270314574(*(&v16 + 1));
  }

  if (v14)
  {
    goto LABEL_28;
  }

LABEL_29:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27034E3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  sub_270311D34(va1);
  sub_270311D34(va2);
  sub_270340E50(va);
  _Unwind_Resume(a1);
}

void sub_27034E5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_27031CE90(&a9);
  sub_270340E50(&a15);
  _Unwind_Resume(a1);
}

void sub_27034E7BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_27031CE90(&a18);
  sub_270340E50(v18 - 48);
  _Unwind_Resume(a1);
}

void sub_27034EA20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_27032EC14(&a18);
  sub_270340E50(&a24);

  _Unwind_Resume(a1);
}

double sub_27034EAF8(_DWORD *a1, double a2)
{
  v15[2] = *MEMORY[0x277D85DE8];
  if (*a1 != 3)
  {
LABEL_23:
    a2 = 0.0;
    goto LABEL_24;
  }

  v11 = 0u;
  v12 = 0u;
  sub_270340D70(a1, &v11);
  if (sub_27033E778(&v11))
  {
    v15[0] = 0;
    v15[1] = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (sub_270326248(v15))
      {
        a2 = *sub_2703262CC(v15);
LABEL_14:
        sub_270311D34(v15);
        v8 = 0;
        goto LABEL_18;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v15);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_288040118, v6))
      {
        v13 = 0;
        v14 = 0;
        v7 = sub_270326360(v15);
        sub_270313C14(&v13, v7);
        if (v14)
        {
          a2 = *sub_2703262CC(&v13);
          sub_270311D34(&v13);
          goto LABEL_14;
        }

        sub_270311D34(&v13);
      }
    }

    sub_270311D34(v15);
  }

  else
  {
    v3 = *sub_2703428CC(&v11) & 0xFFFFFFFFFFFFFFF8;
    if (v3)
    {
      v4 = (v3 + 16);
      if (*(v3 + 39) < 0)
      {
        v4 = *v4;
      }
    }

    else
    {
      v4 = "";
    }

    NSLog(&cfstr_WarningInvalid_0.isa, v4);
  }

  v8 = 1;
LABEL_18:
  if ((BYTE8(v12) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v12 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v12);
  if (*(&v11 + 1))
  {
    sub_270314574(*(&v11 + 1));
  }

  if (v8)
  {
    goto LABEL_23;
  }

LABEL_24:
  v9 = *MEMORY[0x277D85DE8];
  return a2;
}

void sub_27034ECA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_270311D34(va1);
  sub_270311D34(v3 - 56);
  sub_270340E50(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27034ED10(_DWORD *a1)
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (*a1 != 3)
  {
LABEL_23:
    v1 = 0;
    goto LABEL_24;
  }

  v10 = 0u;
  v11 = 0u;
  sub_270340D70(a1, &v10);
  if (sub_27033E778(&v10))
  {
    v14[0] = 0;
    v14[1] = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (sub_270326460(v14))
      {
        v1 = *sub_270326494(v14);
LABEL_14:
        sub_270311D34(v14);
        v7 = 0;
        goto LABEL_18;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v14);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, MEMORY[0x277D82798], v5))
      {
        v12 = 0;
        v13 = 0;
        v6 = sub_270326528(v14);
        sub_270313C14(&v12, v6);
        if (v13)
        {
          v1 = *sub_270326494(&v12);
          sub_270311D34(&v12);
          goto LABEL_14;
        }

        sub_270311D34(&v12);
      }
    }

    sub_270311D34(v14);
  }

  else
  {
    v2 = *sub_2703428CC(&v10) & 0xFFFFFFFFFFFFFFF8;
    if (v2)
    {
      v3 = (v2 + 16);
      if (*(v2 + 39) < 0)
      {
        v3 = *v3;
      }
    }

    else
    {
      v3 = "";
    }

    NSLog(&cfstr_WarningInvalid_0.isa, v3);
  }

  v7 = 1;
LABEL_18:
  if ((BYTE8(v11) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v11 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v11);
  if (*(&v10 + 1))
  {
    sub_270314574(*(&v10 + 1));
  }

  if (v7)
  {
    goto LABEL_23;
  }

LABEL_24:
  v8 = *MEMORY[0x277D85DE8];
  return v1 & 1;
}

void sub_27034EEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  sub_270311D34(va1);
  sub_270311D34(va2);
  sub_270340E50(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27034EF30(_DWORD *a1)
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (*a1 != 3)
  {
LABEL_23:
    v1 = 0;
    goto LABEL_24;
  }

  v10 = 0u;
  v11 = 0u;
  sub_270340D70(a1, &v10);
  if (sub_27033E778(&v10))
  {
    v14[0] = 0;
    v14[1] = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (sub_270326628(v14))
      {
        v1 = *sub_270326660(v14);
LABEL_14:
        sub_270311D34(v14);
        v7 = 0;
        goto LABEL_18;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v14);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, MEMORY[0x277D827C0], v5))
      {
        v12 = 0;
        v13 = 0;
        v6 = sub_2703266F4(v14);
        sub_270313C14(&v12, v6);
        if (v13)
        {
          v1 = *sub_270326660(&v12);
          sub_270311D34(&v12);
          goto LABEL_14;
        }

        sub_270311D34(&v12);
      }
    }

    sub_270311D34(v14);
  }

  else
  {
    v2 = *sub_2703428CC(&v10) & 0xFFFFFFFFFFFFFFF8;
    if (v2)
    {
      v3 = (v2 + 16);
      if (*(v2 + 39) < 0)
      {
        v3 = *v3;
      }
    }

    else
    {
      v3 = "";
    }

    NSLog(&cfstr_WarningInvalid_0.isa, v3);
  }

  v7 = 1;
LABEL_18:
  if ((BYTE8(v11) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v11 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v11);
  if (*(&v10 + 1))
  {
    sub_270314574(*(&v10 + 1));
  }

  if (v7)
  {
    goto LABEL_23;
  }

LABEL_24:
  v8 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_27034F0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  sub_270311D34(va1);
  sub_270311D34(va2);
  sub_270340E50(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27034F150(_DWORD *a1)
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (*a1 != 3)
  {
LABEL_23:
    v1 = 0;
    goto LABEL_24;
  }

  v10 = 0u;
  v11 = 0u;
  sub_270340D70(a1, &v10);
  if (sub_27033E778(&v10))
  {
    v14[0] = 0;
    v14[1] = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (sub_2703267F4(v14))
      {
        v1 = *sub_27032682C(v14);
LABEL_14:
        sub_270311D34(v14);
        v7 = 0;
        goto LABEL_18;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v14);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, MEMORY[0x277D827C8], v5))
      {
        v12 = 0;
        v13 = 0;
        v6 = sub_2703268C0(v14);
        sub_270313C14(&v12, v6);
        if (v13)
        {
          v1 = *sub_27032682C(&v12);
          sub_270311D34(&v12);
          goto LABEL_14;
        }

        sub_270311D34(&v12);
      }
    }

    sub_270311D34(v14);
  }

  else
  {
    v2 = *sub_2703428CC(&v10) & 0xFFFFFFFFFFFFFFF8;
    if (v2)
    {
      v3 = (v2 + 16);
      if (*(v2 + 39) < 0)
      {
        v3 = *v3;
      }
    }

    else
    {
      v3 = "";
    }

    NSLog(&cfstr_WarningInvalid_0.isa, v3);
  }

  v7 = 1;
LABEL_18:
  if ((BYTE8(v11) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v11 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v11);
  if (*(&v10 + 1))
  {
    sub_270314574(*(&v10 + 1));
  }

  if (v7)
  {
    goto LABEL_23;
  }

LABEL_24:
  v8 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_27034F308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  sub_270311D34(va1);
  sub_270311D34(va2);
  sub_270340E50(va);
  _Unwind_Resume(a1);
}

double sub_27034F380(_DWORD *a1, double a2)
{
  v15[2] = *MEMORY[0x277D85DE8];
  if (*a1 != 3)
  {
LABEL_23:
    a2 = 0.0;
    goto LABEL_24;
  }

  v11 = 0u;
  v12 = 0u;
  sub_270340D70(a1, &v11);
  if (sub_27033E778(&v11))
  {
    v15[0] = 0;
    v15[1] = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (sub_270326E8C(v15))
      {
        a2 = *sub_270326EC4(v15);
LABEL_14:
        sub_270311D34(v15);
        v8 = 0;
        goto LABEL_18;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v15);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, MEMORY[0x277D827A8], v6))
      {
        v13 = 0;
        v14 = 0;
        v7 = sub_270326F58(v15);
        sub_270313C14(&v13, v7);
        if (v14)
        {
          a2 = *sub_270326EC4(&v13);
          sub_270311D34(&v13);
          goto LABEL_14;
        }

        sub_270311D34(&v13);
      }
    }

    sub_270311D34(v15);
  }

  else
  {
    v3 = *sub_2703428CC(&v11) & 0xFFFFFFFFFFFFFFF8;
    if (v3)
    {
      v4 = (v3 + 16);
      if (*(v3 + 39) < 0)
      {
        v4 = *v4;
      }
    }

    else
    {
      v4 = "";
    }

    NSLog(&cfstr_WarningInvalid_0.isa, v4);
  }

  v8 = 1;
LABEL_18:
  if ((BYTE8(v12) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v12 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v12);
  if (*(&v11 + 1))
  {
    sub_270314574(*(&v11 + 1));
  }

  if (v8)
  {
    goto LABEL_23;
  }

LABEL_24:
  v9 = *MEMORY[0x277D85DE8];
  return a2;
}

void sub_27034F530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_270311D34(va1);
  sub_270311D34(v3 - 56);
  sub_270340E50(va);
  _Unwind_Resume(a1);
}

double sub_27034F5C0(_DWORD *a1)
{
  v18[2] = *MEMORY[0x277D85DE8];
  if (*a1 != 3)
  {
LABEL_23:
    v1 = 0.0;
    goto LABEL_24;
  }

  v14 = 0u;
  v15 = 0u;
  sub_270340D70(a1, &v14);
  if (sub_27033E778(&v14))
  {
    v18[0] = 0;
    v18[1] = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (sub_270327058(v18))
      {
        v2 = sub_270327090(v18);
        v1 = *v2;
        v3 = *(v2 + 1);
LABEL_14:
        sub_270311D34(v18);
        v11 = 0;
        goto LABEL_18;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v18);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_288040138, v7))
      {
        v16 = 0;
        v17 = 0;
        v8 = sub_270327124(v18);
        sub_270313C14(&v16, v8);
        if (v17)
        {
          v9 = sub_270327090(&v16);
          v1 = *v9;
          v10 = *(v9 + 1);
          sub_270311D34(&v16);
          goto LABEL_14;
        }

        sub_270311D34(&v16);
      }
    }

    sub_270311D34(v18);
  }

  else
  {
    v4 = *sub_2703428CC(&v14) & 0xFFFFFFFFFFFFFFF8;
    if (v4)
    {
      v5 = (v4 + 16);
      if (*(v4 + 39) < 0)
      {
        v5 = *v5;
      }
    }

    else
    {
      v5 = "";
    }

    NSLog(&cfstr_WarningInvalid_0.isa, v5);
  }

  v11 = 1;
LABEL_18:
  if ((BYTE8(v15) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v15 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v15);
  if (*(&v14 + 1))
  {
    sub_270314574(*(&v14 + 1));
  }

  if (v11)
  {
    goto LABEL_23;
  }

LABEL_24:
  v12 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_27034F778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_270311D34(va1);
  sub_270311D34(v3 - 56);
  sub_270340E50(va);
  _Unwind_Resume(a1);
}

double sub_27034F830(_DWORD *a1)
{
  v20[2] = *MEMORY[0x277D85DE8];
  if (*a1 != 3)
  {
LABEL_23:
    v1 = 0.0;
    goto LABEL_24;
  }

  v16 = 0u;
  v17 = 0u;
  sub_270340D70(a1, &v16);
  if (sub_27033E778(&v16))
  {
    v20[0] = 0;
    v20[1] = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (sub_2703271B0(v20))
      {
        v2 = sub_2703271E8(v20);
        v1 = *v2;
        v3 = *(v2 + 1);
        v4 = *(v2 + 2);
LABEL_14:
        sub_270311D34(v20);
        v13 = 0;
        goto LABEL_18;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v20);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_288040148, v8))
      {
        v18 = 0;
        v19 = 0;
        v9 = sub_27032727C(v20);
        sub_270313C14(&v18, v9);
        if (v19)
        {
          v10 = sub_2703271E8(&v18);
          v1 = *v10;
          v11 = *(v10 + 1);
          v12 = *(v10 + 2);
          sub_270311D34(&v18);
          goto LABEL_14;
        }

        sub_270311D34(&v18);
      }
    }

    sub_270311D34(v20);
  }

  else
  {
    v5 = *sub_2703428CC(&v16) & 0xFFFFFFFFFFFFFFF8;
    if (v5)
    {
      v6 = (v5 + 16);
      if (*(v5 + 39) < 0)
      {
        v6 = *v6;
      }
    }

    else
    {
      v6 = "";
    }

    NSLog(&cfstr_WarningInvalid_0.isa, v6);
  }

  v13 = 1;
LABEL_18:
  if ((BYTE8(v17) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v17 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v17);
  if (*(&v16 + 1))
  {
    sub_270314574(*(&v16 + 1));
  }

  if (v13)
  {
    goto LABEL_23;
  }

LABEL_24:
  v14 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_27034FA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  sub_270311D34(va1);
  sub_270311D34(va2);
  sub_270340E50(va);
  _Unwind_Resume(a1);
}

double sub_27034FACC(_DWORD *a1)
{
  v22[2] = *MEMORY[0x277D85DE8];
  if (*a1 != 3)
  {
LABEL_23:
    v1 = 0.0;
    goto LABEL_24;
  }

  v18 = 0u;
  v19 = 0u;
  sub_270340D70(a1, &v18);
  if (sub_27033E778(&v18))
  {
    v22[0] = 0;
    v22[1] = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (sub_270327308(v22))
      {
        v2 = sub_270327340(v22);
        v1 = *v2;
        v3 = *(v2 + 1);
        v5 = *(v2 + 2);
        v4 = *(v2 + 3);
LABEL_14:
        sub_270311D34(v22);
        v15 = 0;
        goto LABEL_18;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v22);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_288040158, v9))
      {
        v20 = 0;
        v21 = 0;
        v10 = sub_2703273D4(v22);
        sub_270313C14(&v20, v10);
        if (v21)
        {
          v11 = sub_270327340(&v20);
          v1 = *v11;
          v12 = *(v11 + 1);
          v14 = *(v11 + 2);
          v13 = *(v11 + 3);
          sub_270311D34(&v20);
          goto LABEL_14;
        }

        sub_270311D34(&v20);
      }
    }

    sub_270311D34(v22);
  }

  else
  {
    v6 = *sub_2703428CC(&v18) & 0xFFFFFFFFFFFFFFF8;
    if (v6)
    {
      v7 = (v6 + 16);
      if (*(v6 + 39) < 0)
      {
        v7 = *v7;
      }
    }

    else
    {
      v7 = "";
    }

    NSLog(&cfstr_WarningInvalid_0.isa, v7);
  }

  v15 = 1;
LABEL_18:
  if ((BYTE8(v19) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v19 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v19);
  if (*(&v18 + 1))
  {
    sub_270314574(*(&v18 + 1));
  }

  if (v15)
  {
    goto LABEL_23;
  }

LABEL_24:
  v16 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_27034FCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  sub_270311D34(va1);
  sub_270311D34(va2);
  sub_270340E50(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_27034FDC8@<X0>(_DWORD *result@<X0>, _OWORD *a2@<X8>)
{
  v24[2] = *MEMORY[0x277D85DE8];
  if (*result != 3)
  {
LABEL_23:
    a2[6] = 0u;
    a2[7] = 0u;
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
    goto LABEL_24;
  }

  v20 = 0u;
  v21 = 0u;
  sub_270340D70(result, &v20);
  if (sub_27033E778(&v20))
  {
    v24[0] = 0;
    v24[1] = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (sub_270326D34(v24))
      {
        v3 = sub_270326D6C(v24);
        v4 = v3[5];
        a2[4] = v3[4];
        a2[5] = v4;
        v5 = v3[7];
        a2[6] = v3[6];
        a2[7] = v5;
        v6 = v3[1];
        *a2 = *v3;
        a2[1] = v6;
        v7 = v3[3];
        a2[2] = v3[2];
        a2[3] = v7;
LABEL_14:
        sub_270311D34(v24);
        v18 = 0;
        goto LABEL_18;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v24);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_28803FEF8, v11))
      {
        v22 = 0;
        v23 = 0;
        v12 = sub_270326E00(v24);
        sub_270313C14(&v22, v12);
        if (v23)
        {
          v13 = sub_270326D6C(&v22);
          v14 = v13[5];
          a2[4] = v13[4];
          a2[5] = v14;
          v15 = v13[7];
          a2[6] = v13[6];
          a2[7] = v15;
          v16 = v13[1];
          *a2 = *v13;
          a2[1] = v16;
          v17 = v13[3];
          a2[2] = v13[2];
          a2[3] = v17;
          sub_270311D34(&v22);
          goto LABEL_14;
        }

        sub_270311D34(&v22);
      }
    }

    sub_270311D34(v24);
  }

  else
  {
    v8 = *sub_2703428CC(&v20) & 0xFFFFFFFFFFFFFFF8;
    if (v8)
    {
      v9 = (v8 + 16);
      if (*(v8 + 39) < 0)
      {
        v9 = *v9;
      }
    }

    else
    {
      v9 = "";
    }

    NSLog(&cfstr_WarningInvalid_0.isa, v9);
  }

  v18 = 1;
LABEL_18:
  if ((BYTE8(v21) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v21 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v21);
  result = *(&v20 + 1);
  if (*(&v20 + 1))
  {
    result = sub_270314574(*(&v20 + 1));
  }

  if (v18)
  {
    goto LABEL_23;
  }

LABEL_24:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27034FFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  sub_270311D34(va1);
  sub_270311D34(va2);
  sub_270340E50(va);
  _Unwind_Resume(a1);
}

float sub_2703500C0(_DWORD *a1, float a2)
{
  v15[2] = *MEMORY[0x277D85DE8];
  if (*a1 != 3)
  {
LABEL_23:
    a2 = 0.0;
    goto LABEL_24;
  }

  v11 = 0u;
  v12 = 0u;
  sub_270340D70(a1, &v11);
  if (sub_27033E778(&v11))
  {
    v15[0] = 0;
    v15[1] = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (sub_2703269C0(v15))
      {
        a2 = *sub_2703139B4(v15);
LABEL_14:
        sub_270311D34(v15);
        v8 = 0;
        goto LABEL_18;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v15);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, MEMORY[0x277D827B0], v6))
      {
        v13 = 0;
        v14 = 0;
        v7 = sub_2703269F8(v15);
        sub_270313C14(&v13, v7);
        if (v14)
        {
          a2 = *sub_2703139B4(&v13);
          sub_270311D34(&v13);
          goto LABEL_14;
        }

        sub_270311D34(&v13);
      }
    }

    sub_270311D34(v15);
  }

  else
  {
    v3 = *sub_2703428CC(&v11) & 0xFFFFFFFFFFFFFFF8;
    if (v3)
    {
      v4 = (v3 + 16);
      if (*(v3 + 39) < 0)
      {
        v4 = *v4;
      }
    }

    else
    {
      v4 = "";
    }

    NSLog(&cfstr_WarningInvalid_0.isa, v4);
  }

  v8 = 1;
LABEL_18:
  if ((BYTE8(v12) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v12 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v12);
  if (*(&v11 + 1))
  {
    sub_270314574(*(&v11 + 1));
  }

  if (v8)
  {
    goto LABEL_23;
  }

LABEL_24:
  v9 = *MEMORY[0x277D85DE8];
  return a2;
}

void sub_270350270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_270311D34(va1);
  sub_270311D34(v3 - 56);
  sub_270340E50(va);
  _Unwind_Resume(a1);
}

float sub_270350300(_DWORD *a1)
{
  v18[2] = *MEMORY[0x277D85DE8];
  if (*a1 != 3)
  {
LABEL_23:
    v1 = 0.0;
    goto LABEL_24;
  }

  v14 = 0u;
  v15 = 0u;
  sub_270340D70(a1, &v14);
  if (sub_27033E778(&v14))
  {
    v18[0] = 0;
    v18[1] = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (sub_270326A84(v18))
      {
        v2 = sub_270326ABC(v18);
        v1 = *v2;
        v3 = *(v2 + 1);
LABEL_14:
        sub_270311D34(v18);
        v11 = 0;
        goto LABEL_18;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v18);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_288040128, v7))
      {
        v16 = 0;
        v17 = 0;
        v8 = sub_270326B50(v18);
        sub_270313C14(&v16, v8);
        if (v17)
        {
          v9 = sub_270326ABC(&v16);
          v1 = *v9;
          v10 = *(v9 + 1);
          sub_270311D34(&v16);
          goto LABEL_14;
        }

        sub_270311D34(&v16);
      }
    }

    sub_270311D34(v18);
  }

  else
  {
    v4 = *sub_2703428CC(&v14) & 0xFFFFFFFFFFFFFFF8;
    if (v4)
    {
      v5 = (v4 + 16);
      if (*(v4 + 39) < 0)
      {
        v5 = *v5;
      }
    }

    else
    {
      v5 = "";
    }

    NSLog(&cfstr_WarningInvalid_0.isa, v5);
  }

  v11 = 1;
LABEL_18:
  if ((BYTE8(v15) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v15 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v15);
  if (*(&v14 + 1))
  {
    sub_270314574(*(&v14 + 1));
  }

  if (v11)
  {
    goto LABEL_23;
  }

LABEL_24:
  v12 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_2703504B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_270311D34(va1);
  sub_270311D34(v3 - 56);
  sub_270340E50(va);
  _Unwind_Resume(a1);
}

float sub_270350564(_DWORD *a1)
{
  v20[2] = *MEMORY[0x277D85DE8];
  if (*a1 != 3)
  {
LABEL_23:
    v1 = 0.0;
    goto LABEL_24;
  }

  v16 = 0u;
  v17 = 0u;
  sub_270340D70(a1, &v16);
  if (sub_27033E778(&v16))
  {
    v20[0] = 0;
    v20[1] = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (sub_2703159A0(v20))
      {
        v2 = sub_2703159D8(v20);
        v1 = *v2;
        v3 = *(v2 + 1);
        v4 = *(v2 + 2);
LABEL_14:
        sub_270311D34(v20);
        v13 = 0;
        goto LABEL_18;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v20);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_28803FCB0, v8))
      {
        v18 = 0;
        v19 = 0;
        v9 = sub_270315A6C(v20);
        sub_270313C14(&v18, v9);
        if (v19)
        {
          v10 = sub_2703159D8(&v18);
          v1 = *v10;
          v11 = *(v10 + 1);
          v12 = *(v10 + 2);
          sub_270311D34(&v18);
          goto LABEL_14;
        }

        sub_270311D34(&v18);
      }
    }

    sub_270311D34(v20);
  }

  else
  {
    v5 = *sub_2703428CC(&v16) & 0xFFFFFFFFFFFFFFF8;
    if (v5)
    {
      v6 = (v5 + 16);
      if (*(v5 + 39) < 0)
      {
        v6 = *v6;
      }
    }

    else
    {
      v6 = "";
    }

    NSLog(&cfstr_WarningInvalid_0.isa, v6);
  }

  v13 = 1;
LABEL_18:
  if ((BYTE8(v17) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v17 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v17);
  if (*(&v16 + 1))
  {
    sub_270314574(*(&v16 + 1));
  }

  if (v13)
  {
    goto LABEL_23;
  }

LABEL_24:
  v14 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_270350734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  sub_270311D34(va1);
  sub_270311D34(va2);
  sub_270340E50(va);
  _Unwind_Resume(a1);
}

float sub_2703507E8(_DWORD *a1)
{
  v22[2] = *MEMORY[0x277D85DE8];
  if (*a1 != 3)
  {
LABEL_23:
    v1 = 0.0;
    goto LABEL_24;
  }

  v18 = 0u;
  v19 = 0u;
  sub_270340D70(a1, &v18);
  if (sub_27033E778(&v18))
  {
    v22[0] = 0;
    v22[1] = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (sub_270326BDC(v22))
      {
        v2 = sub_270326C14(v22);
        v1 = *v2;
        v3 = *(v2 + 1);
        v5 = *(v2 + 2);
        v4 = *(v2 + 3);
LABEL_14:
        sub_270311D34(v22);
        v15 = 0;
        goto LABEL_18;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v22);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_2880400D8, v9))
      {
        v20 = 0;
        v21 = 0;
        v10 = sub_270326CA8(v22);
        sub_270313C14(&v20, v10);
        if (v21)
        {
          v11 = sub_270326C14(&v20);
          v1 = *v11;
          v12 = *(v11 + 1);
          v14 = *(v11 + 2);
          v13 = *(v11 + 3);
          sub_270311D34(&v20);
          goto LABEL_14;
        }

        sub_270311D34(&v20);
      }
    }

    sub_270311D34(v22);
  }

  else
  {
    v6 = *sub_2703428CC(&v18) & 0xFFFFFFFFFFFFFFF8;
    if (v6)
    {
      v7 = (v6 + 16);
      if (*(v6 + 39) < 0)
      {
        v7 = *v7;
      }
    }

    else
    {
      v7 = "";
    }

    NSLog(&cfstr_WarningInvalid_0.isa, v7);
  }

  v15 = 1;
LABEL_18:
  if ((BYTE8(v19) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v19 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v19);
  if (*(&v18 + 1))
  {
    sub_270314574(*(&v18 + 1));
  }

  if (v15)
  {
    goto LABEL_23;
  }

LABEL_24:
  v16 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_2703509C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  sub_270311D34(va1);
  sub_270311D34(va2);
  sub_270340E50(va);
  _Unwind_Resume(a1);
}

float sub_270350A78(_DWORD *a1)
{
  v21[2] = *MEMORY[0x277D85DE8];
  if (*a1 == 3)
  {
    v17 = 0u;
    v18 = 0u;
    sub_270340D70(a1, &v17);
    if (sub_27033E778(&v17))
    {
      v21[0] = 0;
      v21[1] = 0;
      if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
      {
        if (sub_270327460(v21))
        {
          v2 = sub_270327498(v21);
          v1 = *v2;
          v3 = *(v2 + 1);
          v5 = *(v2 + 2);
          v4 = *(v2 + 3);
        }

        else
        {
          Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v21);
          if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_28803FE30, v9))
          {
            v19 = 0;
            v20 = 0;
            v10 = sub_27032752C(v21);
            sub_270313C14(&v19, v10);
            if (v20)
            {
              v11 = sub_270327498(&v19);
              v1 = *v11;
              v12 = *(v11 + 1);
              v14 = *(v11 + 2);
              v13 = *(v11 + 3);
            }

            sub_270311D34(&v19);
          }
        }
      }

      sub_270311D34(v21);
    }

    else
    {
      v6 = *sub_2703428CC(&v17) & 0xFFFFFFFFFFFFFFF8;
      if (v6)
      {
        v7 = (v6 + 16);
        if (*(v6 + 39) < 0)
        {
          v7 = *v7;
        }
      }

      else
      {
        v7 = "";
      }

      NSLog(&cfstr_WarningInvalid_0.isa, v7);
    }

    if ((BYTE8(v18) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v18 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v18);
    if (*(&v17 + 1))
    {
      sub_270314574(*(&v17 + 1));
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_270350C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  sub_270311D34(va1);
  sub_270311D34(va2);
  sub_270340E50(va);
  _Unwind_Resume(a1);
}

unint64_t sub_270350CDC(_DWORD *a1, void *a2, unint64_t a3)
{
  v15[2] = *MEMORY[0x277D85DE8];
  sub_27034AA70(a1, v15);
  NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v15);
  v6 = NumElements;
  if (NumElements < a3)
  {
    a3 = NumElements;
  }

  if (v15[1])
  {
    if (sub_2703279AC(v15))
    {
      v7 = sub_2703279E4(v15);
      memcpy(a2, *(v7 + 32), 4 * a3);
    }

    else
    {
      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v15);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_288040178, v9))
      {
        v14[0] = 0;
        v14[1] = 0;
        sub_2703580EC(v15, v13);
        sub_270312D2C(v14, v13);
        sub_270311D34(v13);
        v10 = sub_2703279E4(v14);
        memcpy(a2, *(v10 + 32), 4 * a3);
        sub_270311D34(v14);
      }

      else
      {
        v6 = 0;
      }
    }
  }

  sub_270311D34(v15);
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_270350DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_270311D34(va);
  sub_270311D34(va1);
  _Unwind_Resume(a1);
}

unint64_t sub_270350E64(_DWORD *a1, void *a2, unint64_t a3)
{
  v15[2] = *MEMORY[0x277D85DE8];
  sub_27034AA70(a1, v15);
  NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v15);
  v6 = NumElements;
  if (NumElements < a3)
  {
    a3 = NumElements;
  }

  if (v15[1])
  {
    if (sub_270327BC0(v15))
    {
      v7 = sub_270327BF8(v15);
      memcpy(a2, *(v7 + 32), 4 * a3);
    }

    else
    {
      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v15);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_288040190, v9))
      {
        v14[0] = 0;
        v14[1] = 0;
        sub_270358138(v15, v13);
        sub_270312D2C(v14, v13);
        sub_270311D34(v13);
        v10 = sub_270327BF8(v14);
        memcpy(a2, *(v10 + 32), 4 * a3);
        sub_270311D34(v14);
      }

      else
      {
        v6 = 0;
      }
    }
  }

  sub_270311D34(v15);
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_270350F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_270311D34(va);
  sub_270311D34(va1);
  _Unwind_Resume(a1);
}

unint64_t sub_270350FEC(_DWORD *a1, void *a2, unint64_t a3)
{
  v15[2] = *MEMORY[0x277D85DE8];
  sub_27034AA70(a1, v15);
  NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v15);
  v6 = NumElements;
  if (NumElements < a3)
  {
    a3 = NumElements;
  }

  if (v15[1])
  {
    if (sub_270327E88(v15))
    {
      v7 = sub_270327EC0(v15);
      memcpy(a2, *(v7 + 32), 16 * a3);
    }

    else
    {
      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v15);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_2880401A8, v9))
      {
        v14[0] = 0;
        v14[1] = 0;
        sub_270358184(v15, v13);
        sub_270312D2C(v14, v13);
        sub_270311D34(v13);
        v10 = sub_270327EC0(v14);
        memcpy(a2, *(v10 + 32), 16 * a3);
        sub_270311D34(v14);
      }

      else
      {
        v6 = 0;
      }
    }
  }

  sub_270311D34(v15);
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_270351108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_270311D34(va);
  sub_270311D34(va1);
  _Unwind_Resume(a1);
}

void sub_270351348(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_270351500(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_2703516C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_27035189C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_270351A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_27031CBCC(&a9);
  *(v13 - 40) = &a10;
  sub_270325B58((v13 - 40));
  sub_27034D220(&a13);
  _Unwind_Resume(a1);
}

void sub_270351C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void **);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  sub_27032E41C(va);
  va_copy(v4, va1);
  sub_270325B58(va);
  sub_27034D220(va2);
  _Unwind_Resume(a1);
}

void sub_270351F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19)
{
  sub_27033B624(&a9);
  sub_2703577D8(&a19);
  a19 = (v19 - 72);
  sub_270325B58(&a19);
  sub_27034D220(v19 - 48);
  _Unwind_Resume(a1);
}

uint64_t sub_270351FC8(uint64_t *a1)
{
  v3 = a1[1];
  v2 = a1 + 1;
  if (!v3)
  {
    return sub_27036D1B4(v7);
  }

  v4 = *(sub_27033EBB0(v2) + 14);
  result = *a1;
  if (v4 != 1 || result == 0)
  {
    return sub_27036D1B4(v7);
  }

  return result;
}

unint64_t sub_270352038(_DWORD *a1, void *a2, unint64_t a3)
{
  v15[2] = *MEMORY[0x277D85DE8];
  sub_27034AA70(a1, v15);
  NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v15);
  v6 = NumElements;
  if (NumElements < a3)
  {
    a3 = NumElements;
  }

  if (v15[1])
  {
    if (sub_27032845C(v15))
    {
      v7 = sub_270328494(v15);
      memcpy(a2, *(v7 + 32), 4 * a3);
    }

    else
    {
      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v15);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_288040208, v9))
      {
        v14[0] = 0;
        v14[1] = 0;
        sub_2703581D0(v15, v13);
        sub_270312D2C(v14, v13);
        sub_270311D34(v13);
        v10 = sub_270328494(v14);
        memcpy(a2, *(v10 + 32), 4 * a3);
        sub_270311D34(v14);
      }

      else
      {
        v6 = 0;
      }
    }
  }

  sub_270311D34(v15);
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_270352154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_270311D34(va);
  sub_270311D34(va1);
  _Unwind_Resume(a1);
}

unint64_t sub_2703521C0(_DWORD *a1, void *a2, unint64_t a3)
{
  v15[2] = *MEMORY[0x277D85DE8];
  sub_27034AA70(a1, v15);
  NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v15);
  v6 = NumElements;
  if (NumElements < a3)
  {
    a3 = NumElements;
  }

  if (v15[1])
  {
    if (sub_270328724(v15))
    {
      v7 = sub_270316D54(v15);
      memcpy(a2, *(v7 + 32), 8 * a3);
    }

    else
    {
      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v15);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_28803FFF0, v9))
      {
        v14[0] = 0;
        v14[1] = 0;
        sub_27035821C(v15, v13);
        sub_270312D2C(v14, v13);
        sub_270311D34(v13);
        v10 = sub_270316D54(v14);
        memcpy(a2, *(v10 + 32), 8 * a3);
        sub_270311D34(v14);
      }

      else
      {
        v6 = 0;
      }
    }
  }

  sub_270311D34(v15);
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_2703522DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_270311D34(va);
  sub_270311D34(va1);
  _Unwind_Resume(a1);
}

unint64_t sub_270352348(_DWORD *a1, _OWORD *a2, unint64_t a3)
{
  v21[2] = *MEMORY[0x277D85DE8];
  sub_27034AA70(a1, v21);
  NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v21);
  v6 = NumElements;
  if (NumElements < a3)
  {
    a3 = NumElements;
  }

  if (v21[1])
  {
    if (sub_270311C98(v21))
    {
      v7 = sub_27030E788(v21);
      if (a3)
      {
        v9 = 0;
        do
        {
          v10 = *(v7 + 32) + v9;
          *&v8 = *v10;
          DWORD2(v8) = *(v10 + 8);
          *a2++ = v8;
          v9 += 12;
          --a3;
        }

        while (a3);
      }
    }

    else
    {
      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v21);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_28803FBC0, v12))
      {
        v20[0] = 0;
        v20[1] = 0;
        sub_270358268(v21, &v19);
        sub_270312D2C(v20, &v19);
        sub_270311D34(&v19);
        v13 = sub_27030E788(v20);
        if (a3)
        {
          v15 = 0;
          do
          {
            v16 = *(v13 + 32) + v15;
            *&v14 = *v16;
            DWORD2(v14) = *(v16 + 8);
            *a2++ = v14;
            v15 += 12;
            --a3;
          }

          while (a3);
        }

        sub_270311D34(v20);
      }
    }
  }

  sub_270311D34(v21);
  v17 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_27035248C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_270311D34(va);
  sub_270311D34(va1);
  _Unwind_Resume(a1);
}

unint64_t sub_2703524FC(_DWORD *a1, void *a2, unint64_t a3)
{
  v15[2] = *MEMORY[0x277D85DE8];
  sub_27034AA70(a1, v15);
  NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v15);
  v6 = NumElements;
  if (NumElements < a3)
  {
    a3 = NumElements;
  }

  if (v15[1])
  {
    if (sub_270328A2C(v15))
    {
      v7 = sub_270328A64(v15);
      memcpy(a2, *(v7 + 32), 16 * a3);
    }

    else
    {
      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v15);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_2880400C0, v9))
      {
        v14[0] = 0;
        v14[1] = 0;
        sub_2703582B4(v15, v13);
        sub_270312D2C(v14, v13);
        sub_270311D34(v13);
        v10 = sub_270328A64(v14);
        memcpy(a2, *(v10 + 32), 16 * a3);
        sub_270311D34(v14);
      }

      else
      {
        v6 = 0;
      }
    }
  }

  sub_270311D34(v15);
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_270352618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_270311D34(va);
  sub_270311D34(va1);
  _Unwind_Resume(a1);
}

unint64_t sub_270352684(_DWORD *a1, void *a2, unint64_t a3)
{
  v15[2] = *MEMORY[0x277D85DE8];
  sub_27034AA70(a1, v15);
  NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v15);
  v6 = NumElements;
  if (NumElements < a3)
  {
    a3 = NumElements;
  }

  if (v15[1])
  {
    if (sub_270358300(v15))
    {
      v7 = sub_270358338(v15);
      memcpy(a2, *(v7 + 32), a3 << 6);
    }

    else
    {
      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v15);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_288041938, v9))
      {
        v14[0] = 0;
        v14[1] = 0;
        sub_2703583CC(v15, v13);
        sub_270312D2C(v14, v13);
        sub_270311D34(v13);
        v10 = sub_270358338(v14);
        memcpy(a2, *(v10 + 32), a3 << 6);
        sub_270311D34(v14);
      }

      else
      {
        v6 = 0;
      }
    }
  }

  sub_270311D34(v15);
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_2703527A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_270311D34(va);
  sub_270311D34(va1);
  _Unwind_Resume(a1);
}

unint64_t sub_27035280C(_DWORD *a1, void *a2, unint64_t a3)
{
  v15[2] = *MEMORY[0x277D85DE8];
  sub_27034AA70(a1, v15);
  NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v15);
  v6 = NumElements;
  if (NumElements < a3)
  {
    a3 = NumElements;
  }

  if (v15[1])
  {
    if (sub_270329094(v15))
    {
      v7 = sub_2703290CC(v15);
      memcpy(a2, *(v7 + 32), 8 * a3);
    }

    else
    {
      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v15);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_288040238, v9))
      {
        v14[0] = 0;
        v14[1] = 0;
        sub_270358560(v15, v13);
        sub_270312D2C(v14, v13);
        sub_270311D34(v13);
        v10 = sub_2703290CC(v14);
        memcpy(a2, *(v10 + 32), 8 * a3);
        sub_270311D34(v14);
      }

      else
      {
        v6 = 0;
      }
    }
  }

  sub_270311D34(v15);
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_270352928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_270311D34(va);
  sub_270311D34(va1);
  _Unwind_Resume(a1);
}

unint64_t sub_270352994(_DWORD *a1, void *a2, unint64_t a3)
{
  v15[2] = *MEMORY[0x277D85DE8];
  sub_27034AA70(a1, v15);
  NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v15);
  v6 = NumElements;
  if (NumElements < a3)
  {
    a3 = NumElements;
  }

  if (v15[1])
  {
    if (sub_27032935C(v15))
    {
      v7 = sub_270329394(v15);
      memcpy(a2, *(v7 + 32), 16 * a3);
    }

    else
    {
      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v15);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_288040250, v9))
      {
        v14[0] = 0;
        v14[1] = 0;
        sub_2703585AC(v15, v13);
        sub_270312D2C(v14, v13);
        sub_270311D34(v13);
        v10 = sub_270329394(v14);
        memcpy(a2, *(v10 + 32), 16 * a3);
        sub_270311D34(v14);
      }

      else
      {
        v6 = 0;
      }
    }
  }

  sub_270311D34(v15);
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_270352AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_270311D34(va);
  sub_270311D34(va1);
  _Unwind_Resume(a1);
}

unint64_t sub_270352B1C(_DWORD *a1, _OWORD *a2, unint64_t a3)
{
  v21[2] = *MEMORY[0x277D85DE8];
  sub_27034AA70(a1, v21);
  NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v21);
  v6 = NumElements;
  if (NumElements < a3)
  {
    a3 = NumElements;
  }

  if (v21[1])
  {
    if (sub_2703296FC(v21))
    {
      v7 = sub_270329734(v21);
      if (a3)
      {
        v9 = 0;
        do
        {
          v10 = *(v7 + 32) + v9;
          *&v8 = *(v10 + 16);
          *a2 = *v10;
          a2[1] = v8;
          a2 += 2;
          v9 += 24;
          --a3;
        }

        while (a3);
      }
    }

    else
    {
      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v21);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_288040268, v12))
      {
        v20[0] = 0;
        v20[1] = 0;
        sub_2703585F8(v21, v19);
        sub_270312D2C(v20, v19);
        sub_270311D34(v19);
        v13 = sub_270329734(v20);
        if (a3)
        {
          v15 = 0;
          do
          {
            v16 = *(v13 + 32) + v15;
            *&v14 = *(v16 + 16);
            *a2 = *v16;
            a2[1] = v14;
            a2 += 2;
            v15 += 24;
            --a3;
          }

          while (a3);
        }

        sub_270311D34(v20);
      }
    }
  }

  sub_270311D34(v21);
  v17 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_270352C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_270311D34(va);
  sub_270311D34(va1);
  _Unwind_Resume(a1);
}

unint64_t sub_270352CE0(_DWORD *a1, void *a2, unint64_t a3)
{
  v15[2] = *MEMORY[0x277D85DE8];
  sub_27034AA70(a1, v15);
  NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v15);
  v6 = NumElements;
  if (NumElements < a3)
  {
    a3 = NumElements;
  }

  if (v15[1])
  {
    if (sub_270329AA4(v15))
    {
      v7 = sub_270329ADC(v15);
      memcpy(a2, *(v7 + 32), 32 * a3);
    }

    else
    {
      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v15);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_288040280, v9))
      {
        v14[0] = 0;
        v14[1] = 0;
        sub_270358644(v15, v13);
        sub_270312D2C(v14, v13);
        sub_270311D34(v13);
        v10 = sub_270329ADC(v14);
        memcpy(a2, *(v10 + 32), 32 * a3);
        sub_270311D34(v14);
      }

      else
      {
        v6 = 0;
      }
    }
  }

  sub_270311D34(v15);
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_270352DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_270311D34(va);
  sub_270311D34(va1);
  _Unwind_Resume(a1);
}

unint64_t sub_270352E68(_DWORD *a1, void *a2, unint64_t a3)
{
  v15[2] = *MEMORY[0x277D85DE8];
  sub_27034AA70(a1, v15);
  NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v15);
  v6 = NumElements;
  if (NumElements < a3)
  {
    a3 = NumElements;
  }

  if (v15[1])
  {
    if (sub_270328CF4(v15))
    {
      v7 = sub_270328D2C(v15);
      memcpy(a2, *(v7 + 32), a3 << 7);
    }

    else
    {
      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v15);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_288040220, v9))
      {
        v14[0] = 0;
        v14[1] = 0;
        sub_270358690(v15, v13);
        sub_270312D2C(v14, v13);
        sub_270311D34(v13);
        v10 = sub_270328D2C(v14);
        memcpy(a2, *(v10 + 32), a3 << 7);
        sub_270311D34(v14);
      }

      else
      {
        v6 = 0;
      }
    }
  }

  sub_270311D34(v15);
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_270352F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_270311D34(va);
  sub_270311D34(va1);
  _Unwind_Resume(a1);
}

void sub_270352FD0(_DWORD *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v26[2] = *MEMORY[0x277D85DE8];
  if (*a1 == 4)
  {
    NSLog(&cfstr_CanTSetDataOnR.isa);
    goto LABEL_29;
  }

  if (*a1 == 3)
  {
    v24 = 0u;
    v25 = 0u;
    sub_270340D70(a1, &v24);
    if (!sub_27033E778(&v24))
    {
LABEL_25:
      if ((BYTE8(v25) & 7) != 0)
      {
        atomic_fetch_add_explicit((*(&v25 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_2703143D8(&v25);
      if (*(&v24 + 1))
      {
        sub_270314574(*(&v24 + 1));
      }

      goto LABEL_29;
    }

    v23 = 0;
    v26[0] = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(&v24);
    v23 = *pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetType(v26);
    if (v23 == pxrInternal__aapl__pxrReserved__::VtValue::GetType(a2))
    {
      pxrInternal__aapl__pxrReserved__::UsdAttribute::Set();
      goto LABEL_25;
    }

    Typeid = pxrInternal__aapl__pxrReserved__::TfType::GetTypeid(&v23);
    v4 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a2);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(v4, Typeid, v5))
    {
      v6 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeid(&v23);
      pxrInternal__aapl__pxrReserved__::VtValue::CastToTypeid(v26, a2, v6, v7);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::Set();
      sub_270311D34(v26);
      goto LABEL_25;
    }

    v26[0] = 0;
    v8 = atomic_load(off_279E01258);
    if (!v8)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
    }

    v20 = 0;
    Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType(a2);
    v22 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FindType(v8, &Type, &v20);
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(v26, &v22);
    if ((v20 & 7) != 0)
    {
      atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v19 = v26[0];
    if ((v26[0] & 7) != 0 && (atomic_fetch_add_explicit((v26[0] & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 &= 0xFFFFFFFFFFFFFFF8;
    }

    v11 = objc_msgSend_dataTypeWithTfToken_(USKToken, v9, &v19, v10);
    v12 = MEMORY[0x277CCACA8];
    v15 = *sub_2703428CC(&v24) & 0xFFFFFFFFFFFFFFF8;
    if (v15)
    {
      v16 = (v15 + 16);
      if (*(v15 + 39) < 0)
      {
        objc_msgSend_stringWithUTF8String_(v12, v13, *v16, v14);
        v17 = LABEL_21:;
        NSLog(&cfstr_CanTSetDataTyp.isa, v11, v17);

        if ((v19 & 7) != 0)
        {
          atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v26[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v26[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        goto LABEL_25;
      }
    }

    else
    {
      v16 = "";
    }

    objc_msgSend_stringWithUTF8String_(v12, v13, v16, v14);
    goto LABEL_21;
  }

LABEL_29:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_270353280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_270340E50(va);
  _Unwind_Resume(a1);
}

void sub_270353918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_27031CE90(&a11);
  sub_270340E50(&a17);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  sub_270311D34(v27 - 56);

  _Unwind_Resume(a1);
}

void sub_270353A8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_270353B28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_270353BC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_270353C60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_270353CF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_270353D90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_270353E28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_270353EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_270353FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_2703540C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_2703541A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_270354280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}