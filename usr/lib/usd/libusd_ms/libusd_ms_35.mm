uint64_t sub_29A1B08DC(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v2 = HIDWORD(a2);
    if (!HIDWORD(a2))
    {
      v2 = a2;
    }

    if (v2 >= 0x10000)
    {
      v3 = (32 * (HIDWORD(a2) != 0)) | 0x10;
    }

    else
    {
      v3 = 32 * (HIDWORD(a2) != 0);
    }

    if (v2 >= 0x10000)
    {
      v2 >>= 16;
    }

    if (v2 >= 0x100)
    {
      v3 |= 8uLL;
      v2 >>= 8;
    }

    if (v2 >= 0x10)
    {
      v3 |= 4uLL;
      v2 >>= 4;
    }

    if (v2 >= 4)
    {
      v3 += 2;
      v2 >>= 2;
    }

    v4 = ((v2 >> 1) & 1) + v3;
  }

  else
  {
    LOBYTE(v4) = -1;
  }

  return a2 & ~(1 << v4);
}

BOOL sub_29A1B0968(uint64_t a1, unint64_t a2)
{
  v4 = sub_29A0EC0EC(a2);
  v5 = *(a1 + 48 + 8 * v4);
  __dmb(0xBu);
  if (!v5)
  {
    return 0;
  }

  v6 = *(a1 + 48 + 8 * v4);
  __dmb(0xBu);
  return *(v6 + 8 * (a2 - ((1 << v4) & 0x1FFFFFFFFFFFFFFELL))) != 0;
}

tbb::internal *sub_29A1B09D0@<X0>(uint64_t a1@<X0>, atomic_ullong **a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
{
  i = **a2;
  result = tbb::internal::allocate_via_handler_v3(0x48);
  *(result + 8) = a3;
  *result = 0;
  if (i)
  {
    goto LABEL_2;
  }

LABEL_3:
  while (1)
  {
    v11 = *a2;
    *result = i;
    while (1)
    {
      v12 = i;
      atomic_compare_exchange_strong(v11, &v12, result);
      if (v12 == i)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v11, 0, memory_order_relaxed);
      if (add_explicit != i)
      {
        goto LABEL_8;
      }
    }

    add_explicit = i;
LABEL_8:
    if (i == add_explicit || result == add_explicit)
    {
      break;
    }

    for (i = *a2; ; *a2 = i)
    {
      i = *i;
      if (!i)
      {
        break;
      }

LABEL_2:
      v10 = i[8];
      if (v10 > a3)
      {
        goto LABEL_3;
      }

      if (v10 == a3)
      {
        result = sub_29A1A8254(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

char *sub_29A1B0AA4(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_29A008D14(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  return __dst;
}

void sub_29A1B0B1C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A1B0B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = *(a3 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a3 + 8);
  }

  if (v5 != v6)
  {
    return 0;
  }

  v9 = v4 >= 0 ? a2 : *a2;
  v10 = v7 >= 0 ? a3 : *a3;
  if (memcmp(v9, v10, v5))
  {
    return 0;
  }

  v11 = *(a2 + 47);
  if (v11 >= 0)
  {
    v12 = *(a2 + 47);
  }

  else
  {
    v12 = *(a2 + 32);
  }

  v13 = *(a3 + 47);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a3 + 32);
  }

  if (v12 != v13)
  {
    return 0;
  }

  v17 = *(a2 + 24);
  v16 = (a2 + 24);
  v15 = v17;
  if (v11 >= 0)
  {
    v18 = v16;
  }

  else
  {
    v18 = v15;
  }

  v21 = *(a3 + 24);
  v20 = (a3 + 24);
  v19 = v21;
  if (v14 >= 0)
  {
    v22 = v20;
  }

  else
  {
    v22 = v19;
  }

  return memcmp(v18, v22, v12) == 0;
}

void *sub_29A1B0C08(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29A008E78(a1, (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL));
  sub_29A008E78(v5 + 3, (*(*a3 + 8) & 0x7FFFFFFFFFFFFFFFLL));
  return a1;
}

void sub_29A1B0C54(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1B0C70(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_29A1B0794(a1, a2);
  v15 = 0;
  v16 = v6;
  v7 = &v16;
  for (i = 7; i != -1; --i)
  {
    v9 = *v7++;
    *(&v15 + i) = byte_29B734F74[v9];
  }

  v10 = v15;
  sub_29A1B067C(a1, v6, &v16);
  v11 = v16;
  if (v16)
  {
    v12 = v10 | 1;
    while (1)
    {
      v13 = v11[8];
      if (v13 > v12)
      {
        break;
      }

      if (v13 == v12)
      {
        v14 = sub_29A1B0B38(a1 + 1, (v11 + 1), a2);
        v11 = v16;
        if (v14)
        {
          goto LABEL_11;
        }
      }

      v11 = *v11;
      v16 = v11;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v11 = 0;
LABEL_11:
    *a3 = v11;
  }

  else
  {
LABEL_9:
    *a3 = 0;
  }

  a3[1] = a1 + 16;
}

void sub_29A1B0D7C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A1B0D7C(a1, *a2);
    sub_29A1B0D7C(a1, a2[1]);
    sub_29A1B0DD8((a2 + 4));

    operator delete(a2);
  }
}

void sub_29A1B0DD8(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

_OWORD *sub_29A1B0E2C(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_29A00B0D0(a1, &v11, a2);
  v8 = *v7;
  if (!*v7)
  {
    v9 = v7;
    v8 = operator new(0x50uLL);
    v8[2] = *a3;
    *(v8 + 6) = *(a3 + 16);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(v8 + 56) = *a4;
    *a4 = 0;
    *(v8 + 9) = *(a4 + 16);
    sub_29A00B204(a1, v11, v9, v8);
  }

  return v8;
}

void sub_29A1B0EE0(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29A1B0EEC(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29A1B0EF8(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29A1B0F04(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29A1B0F10(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29A1B0F1C(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29A1B0F28(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29A1B0F34(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29A1B0F40(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29A1B0F4C(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29A1B0F58(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29A1B0F64(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29A1B0F70(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29A1B0F7C(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29A1B0F88(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29A1B0F94(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29A1B0FA0(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29A1B0FAC(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29A1B0FB8(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29A1B0FC4(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29A1B0FD0(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29A1B0FDC(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29A1B0FE8(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29A1B0FF4(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29A1B1000(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void pxrInternal__aapl__pxrReserved__::Ts_BinaryDataAccess::GetBinaryData(pxrInternal__aapl__pxrReserved__::TsSpline *a1, uint64_t *a2, __int128 **a3)
{
  v142 = *MEMORY[0x29EDCA608];
  if (*a1)
  {
    v132 = *a1;
    ValueType = pxrInternal__aapl__pxrReserved__::TsSpline::GetValueType(a1);
    pxrInternal__aapl__pxrReserved__::TsSpline::GetInnerLoopParams(a1, &v134);
    memset(v133, 0, sizeof(v133));
    v6 = pxrInternal__aapl__pxrReserved__::TsLoopParams::operator!=(&v134, v133);
    CurveType = pxrInternal__aapl__pxrReserved__::TsSpline::GetCurveType(a1);
    v8 = *(v132 + 80);
    v7 = *(v132 + 88);
    v123 = (*(*v132 + 24))(v132) * ((v7 - v8) >> 3) + 50;
    sub_29A1B1D0C(a2, v123);
    if ((atomic_load_explicit(&qword_2A173F450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A173F450))
    {
      pxrInternal__aapl__pxrReserved__::TfType::TfType(v133);
      v134 = *&v133[0];
      LOBYTE(v135) = 0;
      v136 = pxrInternal__aapl__pxrReserved__::Ts_GetType<double>();
      LOBYTE(v137) = 1;
      v138 = pxrInternal__aapl__pxrReserved__::Ts_GetType<float>();
      v139 = 2;
      v140 = pxrInternal__aapl__pxrReserved__::Ts_GetType<pxrInternal__aapl__pxrReserved__::pxr_half::half>();
      v141 = 3;
      sub_29A1B29C8(&unk_2A173F438, &v134, 4);
      __cxa_atexit(sub_29A1B1DB8, &unk_2A173F438, &dword_299FE7000);
      __cxa_guard_release(&qword_2A173F450);
    }

    v9 = qword_2A173F440;
    if (!qword_2A173F440)
    {
      goto LABEL_12;
    }

    v10 = &qword_2A173F440;
    do
    {
      v11 = *(v9 + 32);
      v12 = v11 >= ValueType;
      v13 = v11 < ValueType;
      if (v12)
      {
        v10 = v9;
      }

      v9 = *(v9 + 8 * v13);
    }

    while (v9);
    if (v10 == &qword_2A173F440)
    {
LABEL_12:
      v14 = 1;
    }

    else
    {
      v14 = 1;
      if (v10[4] <= ValueType)
      {
        v14 = (16 * *(v10 + 40)) | 1;
      }
    }

    v15 = *(v132 + 8);
    v16 = *a2;
    v17 = a2[1] - *a2;
    if (v17 == -1)
    {
      a2[1] = v16;
    }

    else
    {
      sub_29A1B2C78(a2, 1uLL);
      v16 = *a2;
    }

    *(v16 + v17) = v14 | ((v15 >> 1) << 6);
    v19 = *(v132 + 16);
    v20 = *(v132 + 32);
    if (v6)
    {
      v21 = 64;
    }

    else
    {
      v21 = 0;
    }

    v22 = *a2;
    v23 = a2[1] - *a2;
    if (v23 == -1)
    {
      a2[1] = v22;
    }

    else
    {
      sub_29A1B2C78(a2, 1uLL);
      v22 = *a2;
    }

    *(v22 + v23) = v19 | v21 | (8 * v20);
    v24 = v132;
    if (*(v132 + 16) == 3)
    {
      v25 = *a2;
      v26 = a2[1] - *a2;
      if (v26 > 0xFFFFFFFFFFFFFFF7)
      {
        a2[1] = v25 + v26 + 8;
      }

      else
      {
        sub_29A1B2C78(a2, 8uLL);
        v25 = *a2;
        v24 = v132;
      }

      *(v25 + v26) = *(v24 + 24);
    }

    if (*(v24 + 32) == 3)
    {
      v27 = *a2;
      v28 = a2[1] - *a2;
      if (v28 > 0xFFFFFFFFFFFFFFF7)
      {
        a2[1] = v27 + v28 + 8;
      }

      else
      {
        sub_29A1B2C78(a2, 8uLL);
        v27 = *a2;
        v24 = v132;
      }

      *(v27 + v28) = *(v24 + 40);
    }

    if (v6)
    {
      v29 = *a2;
      v30 = a2[1] - *a2;
      if (v30 > 0xFFFFFFFFFFFFFFF7)
      {
        a2[1] = v29 + v30 + 8;
      }

      else
      {
        sub_29A1B2C78(a2, 8uLL);
        v29 = *a2;
        v24 = v132;
      }

      *(v29 + v30) = *(v24 + 48);
      v31 = *a2;
      v32 = a2[1] - *a2;
      if (v32 > 0xFFFFFFFFFFFFFFF7)
      {
        a2[1] = v31 + v32 + 8;
      }

      else
      {
        sub_29A1B2C78(a2, 8uLL);
        v31 = *a2;
        v24 = v132;
      }

      *(v31 + v32) = *(v24 + 56);
      v33 = *a2;
      v34 = a2[1] - *a2;
      if (v34 > 0xFFFFFFFFFFFFFFFBLL)
      {
        a2[1] = v33 + v34 + 4;
      }

      else
      {
        sub_29A1B2C78(a2, 4uLL);
        v33 = *a2;
        v24 = v132;
      }

      *(v33 + v34) = *(v24 + 64);
      v35 = *a2;
      v36 = a2[1] - *a2;
      if (v36 > 0xFFFFFFFFFFFFFFFBLL)
      {
        a2[1] = v35 + v36 + 4;
      }

      else
      {
        sub_29A1B2C78(a2, 4uLL);
        v35 = *a2;
        v24 = v132;
      }

      *(v35 + v36) = *(v24 + 68);
      v37 = *a2;
      v38 = a2[1] - *a2;
      if (v38 > 0xFFFFFFFFFFFFFFF7)
      {
        a2[1] = v37 + v38 + 8;
      }

      else
      {
        sub_29A1B2C78(a2, 8uLL);
        v37 = *a2;
        v24 = v132;
      }

      *(v37 + v38) = *(v24 + 72);
    }

    pxrInternal__aapl__pxrReserved__::TfType::TfType(&v134);
    if (v134 != ValueType)
    {
      if (pxrInternal__aapl__pxrReserved__::Ts_GetType<double>() == ValueType)
      {
        v39 = *(v132 + 152) - *(v132 + 144);
        if ((v39 >> 6) >> 32)
        {
          v134 = "ts/binary.cpp";
          v135 = "operator()";
          v136 = 86;
          v137 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_BinaryDataWriter<double>::operator()(const Ts_SplineData &, const BOOL, std::vector<uint8_t> *const) [T = double]";
          LOBYTE(v138) = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v134, 1, "Huge number of spline knots, cannot write");
        }

        else
        {
          v41 = *a2;
          v42 = a2[1] - *a2;
          if (v42 > 0xFFFFFFFFFFFFFFFBLL)
          {
            a2[1] = v41 + v42 + 4;
          }

          else
          {
            sub_29A1B2C78(a2, 4uLL);
            v41 = *a2;
          }

          *(v41 + v42) = v39 >> 6;
          v45 = *(v132 + 144);
          v44 = *(v132 + 152);
          v125 = v44;
          while (v45 != v44)
          {
            v46 = *v45;
            v47 = v45[1];
            v128 = v45[2];
            v48 = *(v45 + 24);
            v50 = v45[4];
            v49 = v45[5];
            v52 = v45[6];
            v51 = v45[7];
            v53 = *a2;
            v54 = a2[1] - *a2;
            if (v54 == -1)
            {
              a2[1] = v53;
            }

            else
            {
              sub_29A1B2C78(a2, 1uLL);
              v53 = *a2;
            }

            *(v53 + v54) = (2 * (v48 & 7)) | v48 & 0x18 | ((v48 & 0x20) != 0);
            v55 = *a2;
            v56 = a2[1] - *a2;
            if (v56 > 0xFFFFFFFFFFFFFFF7)
            {
              a2[1] = v55 + v56 + 8;
            }

            else
            {
              sub_29A1B2C78(a2, 8uLL);
              v55 = *a2;
            }

            *(v55 + v56) = v46;
            v57 = *a2;
            v58 = a2[1] - *a2;
            if (v58 > 0xFFFFFFFFFFFFFFF7)
            {
              a2[1] = v57 + v58 + 8;
            }

            else
            {
              sub_29A1B2C78(a2, 8uLL);
              v57 = *a2;
            }

            *(v57 + v58) = v50;
            if ((v48 & 0x20) != 0)
            {
              v59 = *a2;
              v60 = a2[1] - *a2;
              if (v60 > 0xFFFFFFFFFFFFFFF7)
              {
                a2[1] = v59 + v60 + 8;
              }

              else
              {
                sub_29A1B2C78(a2, 8uLL);
                v59 = *a2;
              }

              *(v59 + v60) = v49;
            }

            if (CurveType != 1)
            {
              v61 = *a2;
              v62 = a2[1] - *a2;
              if (v62 > 0xFFFFFFFFFFFFFFF7)
              {
                a2[1] = v61 + v62 + 8;
              }

              else
              {
                sub_29A1B2C78(a2, 8uLL);
                v61 = *a2;
              }

              *(v61 + v62) = v47;
              v63 = *a2;
              v64 = a2[1] - *a2;
              if (v64 > 0xFFFFFFFFFFFFFFF7)
              {
                a2[1] = v63 + v64 + 8;
              }

              else
              {
                sub_29A1B2C78(a2, 8uLL);
                v63 = *a2;
              }

              *(v63 + v64) = v128;
            }

            v65 = *a2;
            v66 = a2[1] - *a2;
            if (v66 > 0xFFFFFFFFFFFFFFF7)
            {
              a2[1] = v65 + v66 + 8;
            }

            else
            {
              sub_29A1B2C78(a2, 8uLL);
              v65 = *a2;
            }

            *(v65 + v66) = v52;
            v67 = *a2;
            v68 = a2[1] - *a2;
            if (v68 > 0xFFFFFFFFFFFFFFF7)
            {
              a2[1] = v67 + v68 + 8;
            }

            else
            {
              sub_29A1B2C78(a2, 8uLL);
              v67 = *a2;
            }

            *(v67 + v68) = v51;
            v45 += 8;
            v44 = v125;
          }
        }
      }

      else if (pxrInternal__aapl__pxrReserved__::Ts_GetType<float>() == ValueType)
      {
        v40 = 0xAAAAAAAAAAAAAAABLL * ((*(v132 + 152) - *(v132 + 144)) >> 4);
        if (HIDWORD(v40))
        {
          v134 = "ts/binary.cpp";
          v135 = "operator()";
          v136 = 86;
          v137 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_BinaryDataWriter<float>::operator()(const Ts_SplineData &, const BOOL, std::vector<uint8_t> *const) [T = float]";
          LOBYTE(v138) = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v134, 1, "Huge number of spline knots, cannot write");
        }

        else
        {
          v69 = *a2;
          v70 = a2[1] - *a2;
          if (v70 > 0xFFFFFFFFFFFFFFFBLL)
          {
            a2[1] = v69 + v70 + 4;
          }

          else
          {
            sub_29A1B2C78(a2, 4uLL);
            v69 = *a2;
          }

          *(v69 + v70) = v40;
          v72 = *(v132 + 144);
          v71 = *(v132 + 152);
          v126 = v71;
          while (v72 != v71)
          {
            v74 = *v72;
            v73 = v72[1];
            v129 = v72[2];
            v75 = *(v72 + 24);
            v77 = *(v72 + 7);
            v76 = *(v72 + 8);
            v79 = *(v72 + 9);
            v78 = *(v72 + 10);
            v80 = *a2;
            v81 = a2[1] - *a2;
            if (v81 == -1)
            {
              a2[1] = v80;
            }

            else
            {
              sub_29A1B2C78(a2, 1uLL);
              v80 = *a2;
            }

            *(v80 + v81) = (2 * (v75 & 7)) | v75 & 0x18 | ((v75 & 0x20) != 0);
            v82 = *a2;
            v83 = a2[1] - *a2;
            if (v83 > 0xFFFFFFFFFFFFFFF7)
            {
              a2[1] = v82 + v83 + 8;
            }

            else
            {
              sub_29A1B2C78(a2, 8uLL);
              v82 = *a2;
            }

            *(v82 + v83) = v74;
            v84 = *a2;
            v85 = a2[1] - *a2;
            if (v85 > 0xFFFFFFFFFFFFFFFBLL)
            {
              a2[1] = v84 + v85 + 4;
            }

            else
            {
              sub_29A1B2C78(a2, 4uLL);
              v84 = *a2;
            }

            *(v84 + v85) = v77;
            if ((v75 & 0x20) != 0)
            {
              v86 = *a2;
              v87 = a2[1] - *a2;
              if (v87 > 0xFFFFFFFFFFFFFFFBLL)
              {
                a2[1] = v86 + v87 + 4;
              }

              else
              {
                sub_29A1B2C78(a2, 4uLL);
                v86 = *a2;
              }

              *(v86 + v87) = v76;
            }

            if (CurveType != 1)
            {
              v88 = *a2;
              v89 = a2[1] - *a2;
              if (v89 > 0xFFFFFFFFFFFFFFF7)
              {
                a2[1] = v88 + v89 + 8;
              }

              else
              {
                sub_29A1B2C78(a2, 8uLL);
                v88 = *a2;
              }

              *(v88 + v89) = v73;
              v90 = *a2;
              v91 = a2[1] - *a2;
              if (v91 > 0xFFFFFFFFFFFFFFF7)
              {
                a2[1] = v90 + v91 + 8;
              }

              else
              {
                sub_29A1B2C78(a2, 8uLL);
                v90 = *a2;
              }

              *(v90 + v91) = v129;
            }

            v92 = *a2;
            v93 = a2[1] - *a2;
            if (v93 > 0xFFFFFFFFFFFFFFFBLL)
            {
              a2[1] = v92 + v93 + 4;
            }

            else
            {
              sub_29A1B2C78(a2, 4uLL);
              v92 = *a2;
            }

            *(v92 + v93) = v79;
            v94 = *a2;
            v95 = a2[1] - *a2;
            if (v95 > 0xFFFFFFFFFFFFFFFBLL)
            {
              a2[1] = v94 + v95 + 4;
            }

            else
            {
              sub_29A1B2C78(a2, 4uLL);
              v94 = *a2;
            }

            *(v94 + v95) = v78;
            v72 += 6;
            v71 = v126;
          }
        }
      }

      else if (pxrInternal__aapl__pxrReserved__::Ts_GetType<pxrInternal__aapl__pxrReserved__::pxr_half::half>() == ValueType)
      {
        v43 = 0xCCCCCCCCCCCCCCCDLL * ((*(v132 + 152) - *(v132 + 144)) >> 3);
        if (HIDWORD(v43))
        {
          v134 = "ts/binary.cpp";
          v135 = "operator()";
          v136 = 86;
          v137 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_BinaryDataWriter<pxrInternal__aapl__pxrReserved__::pxr_half::half>::operator()(const Ts_SplineData &, const BOOL, std::vector<uint8_t> *const) [T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
          LOBYTE(v138) = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v134, 1, "Huge number of spline knots, cannot write");
        }

        else
        {
          v96 = *a2;
          v97 = a2[1] - *a2;
          if (v97 > 0xFFFFFFFFFFFFFFFBLL)
          {
            a2[1] = v96 + v97 + 4;
          }

          else
          {
            sub_29A1B2C78(a2, 4uLL);
            v96 = *a2;
          }

          *(v96 + v97) = v43;
          v99 = *(v132 + 144);
          v98 = *(v132 + 152);
          v127 = v98;
          while (v99 != v98)
          {
            v101 = *v99;
            v100 = v99[1];
            v130 = v99[2];
            v102 = *(v99 + 24);
            v103 = *(v99 + 13);
            v104 = *(v99 + 14);
            v105 = *(v99 + 15);
            v106 = *(v99 + 16);
            v107 = *a2;
            v108 = a2[1] - *a2;
            if (v108 == -1)
            {
              a2[1] = v107;
            }

            else
            {
              sub_29A1B2C78(a2, 1uLL);
              v107 = *a2;
            }

            *(v107 + v108) = (2 * (v102 & 7)) | v102 & 0x18 | ((v102 & 0x20) != 0);
            v109 = *a2;
            v110 = a2[1] - *a2;
            if (v110 > 0xFFFFFFFFFFFFFFF7)
            {
              a2[1] = v109 + v110 + 8;
            }

            else
            {
              sub_29A1B2C78(a2, 8uLL);
              v109 = *a2;
            }

            *(v109 + v110) = v101;
            v111 = *a2;
            v112 = a2[1] - *a2;
            if (v112 > 0xFFFFFFFFFFFFFFFDLL)
            {
              a2[1] = v111 + v112 + 2;
            }

            else
            {
              sub_29A1B2C78(a2, 2uLL);
              v111 = *a2;
            }

            *(v111 + v112) = v103;
            if ((v102 & 0x20) != 0)
            {
              v113 = *a2;
              v114 = a2[1] - *a2;
              if (v114 > 0xFFFFFFFFFFFFFFFDLL)
              {
                a2[1] = v113 + v114 + 2;
              }

              else
              {
                sub_29A1B2C78(a2, 2uLL);
                v113 = *a2;
              }

              *(v113 + v114) = v104;
            }

            if (CurveType != 1)
            {
              v115 = *a2;
              v116 = a2[1] - *a2;
              if (v116 > 0xFFFFFFFFFFFFFFF7)
              {
                a2[1] = v115 + v116 + 8;
              }

              else
              {
                sub_29A1B2C78(a2, 8uLL);
                v115 = *a2;
              }

              *(v115 + v116) = v100;
              v117 = *a2;
              v118 = a2[1] - *a2;
              if (v118 > 0xFFFFFFFFFFFFFFF7)
              {
                a2[1] = v117 + v118 + 8;
              }

              else
              {
                sub_29A1B2C78(a2, 8uLL);
                v117 = *a2;
              }

              *(v117 + v118) = v130;
            }

            v119 = *a2;
            v120 = a2[1] - *a2;
            if (v120 > 0xFFFFFFFFFFFFFFFDLL)
            {
              a2[1] = v119 + v120 + 2;
            }

            else
            {
              sub_29A1B2C78(a2, 2uLL);
              v119 = *a2;
            }

            *(v119 + v120) = v105;
            v121 = *a2;
            v122 = a2[1] - *a2;
            if (v122 > 0xFFFFFFFFFFFFFFFDLL)
            {
              a2[1] = v121 + v122 + 2;
            }

            else
            {
              sub_29A1B2C78(a2, 2uLL);
              v121 = *a2;
            }

            *(v121 + v122) = v106;
            v99 += 5;
            v98 = v127;
          }
        }
      }

      else
      {
        v134 = "ts/valueTypeDispatch.h";
        v135 = "TsDispatchToValueTypeTemplate";
        v136 = 64;
        v137 = "void pxrInternal__aapl__pxrReserved__::TsDispatchToValueTypeTemplate(TfType, Args &&...) [Cls = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_BinaryDataWriter, Args = <const pxrInternal__aapl__pxrReserved__::Ts_SplineData &, const BOOL &, std::vector<unsigned char> *const &>]";
        LOBYTE(v138) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v134, 1, "Unsupported spline value type");
      }
    }

    if (a2[1] - *a2 > v123)
    {
      sub_29B292E70(&v134);
    }

    v18 = (v132 + 104);
  }

  else if (atomic_load_explicit(&qword_2A173F478, memory_order_acquire))
  {
    v18 = &xmmword_2A173F480;
  }

  else
  {
    sub_29B292EBC(&v134);
    v18 = v134;
  }

  *a3 = v18;
}

void sub_29A1B1D0C(uint64_t a1, size_t __sz)
{
  v2 = *a1;
  if (*(a1 + 16) - *a1 < __sz)
  {
    if ((__sz & 0x8000000000000000) != 0)
    {
      sub_29A00C9A4();
    }

    v5 = *(a1 + 8) - v2;
    v6 = operator new(__sz);
    memcpy(v6, v2, v5);
    *a1 = v6;
    *(a1 + 8) = &v6[v5];
    *(a1 + 16) = &v6[__sz];
    if (v2)
    {

      operator delete(v2);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::Ts_BinaryDataAccess::_ParseV1(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v35 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 8);
  v28 = *a1;
  v27 = v5 - v28;
  if ((atomic_load_explicit(&qword_2A173F470, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A173F470))
  {
    LOBYTE(v31) = 0;
    *(&v31 + 1) = pxrInternal__aapl__pxrReserved__::Ts_GetType<double>();
    LOBYTE(v32) = 1;
    *v33 = pxrInternal__aapl__pxrReserved__::Ts_GetType<double>();
    v33[8] = 2;
    *&v33[16] = pxrInternal__aapl__pxrReserved__::Ts_GetType<float>();
    LOBYTE(v34) = 3;
    *(&v34 + 1) = pxrInternal__aapl__pxrReserved__::Ts_GetType<pxrInternal__aapl__pxrReserved__::pxr_half::half>();
    sub_29A1B2D88(&unk_2A173F458, &v31, 4);
    __cxa_atexit(sub_29A1B262C, &unk_2A173F458, &dword_299FE7000);
    __cxa_guard_release(&qword_2A173F470);
  }

  v26 = 0;
  if (!sub_29A1B2658(&v28, &v27, &v26))
  {
    pxrInternal__aapl__pxrReserved__::TsSpline::TsSpline(a3);
    return;
  }

  v6 = v26;
  pxrInternal__aapl__pxrReserved__::TfType::TfType(&v31);
  v7 = (v6 >> 4) & 3;
  v8 = qword_2A173F460;
  if (qword_2A173F460)
  {
    v9 = &qword_2A173F460;
    do
    {
      v10 = *(v8 + 32);
      v11 = v10 >= v7;
      v12 = v10 < v7;
      if (v11)
      {
        v9 = v8;
      }

      v8 = *(v8 + 8 * v12);
    }

    while (v8);
    v13 = &v31;
    if (v9 != &qword_2A173F460)
    {
      v14 = *(v9 + 32);
      v15 = v9 + 5;
      if (v7 >= v14)
      {
        v13 = v15;
      }
    }
  }

  else
  {
    v13 = &v31;
  }

  v16 = *v13;
  pxrInternal__aapl__pxrReserved__::TfType::TfType(&v31);
  if (v16 == v31)
  {
    *&v31 = "ts/binary.cpp";
    *(&v31 + 1) = "_ParseV1";
    v32 = 330;
    *v33 = "static TsSpline pxrInternal__aapl__pxrReserved__::Ts_BinaryDataAccess::_ParseV1(const std::vector<uint8_t> &, std::unordered_map<TsTime, VtDictionary> &&)";
    v33[8] = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v31, 3, "Bad spline type descriptor");
    pxrInternal__aapl__pxrReserved__::TsSpline::TsSpline(a3);
    return;
  }

  v17 = pxrInternal__aapl__pxrReserved__::Ts_SplineData::Create(v16, 0);
  v18 = v17;
  v19 = (v6 >> 5) & 6;
  if (v7)
  {
    LOBYTE(v19) = v19 + 1;
  }

  *(v17 + 8) = v19 | *(v17 + 8) & 0xF0;
  if (!sub_29A1B2658(&v28, &v27, &v26))
  {
    goto LABEL_49;
  }

  v20 = v26;
  v21 = v26 & 7;
  *(v18 + 16) = v21;
  v22 = (v20 >> 3) & 3;
  *(v18 + 32) = v22;
  if (v21 == 3)
  {
    if (!sub_29A1B26F0(&v28, &v27, (v18 + 24)))
    {
LABEL_49:
      pxrInternal__aapl__pxrReserved__::TsSpline::TsSpline(a3);
LABEL_84:
      (*(*v18 + 8))(v18);
      return;
    }

    v22 = *(v18 + 32);
  }

  if (v22 == 3 && !sub_29A1B26F0(&v28, &v27, (v18 + 40)) || (v20 & 0x40) != 0 && (!sub_29A1B26F0(&v28, &v27, (v18 + 48)) || !sub_29A1B26F0(&v28, &v27, (v18 + 56)) || !sub_29A1B278C(&v28, &v27, (v18 + 64)) || !sub_29A1B278C(&v28, &v27, (v18 + 68)) || !sub_29A1B26F0(&v28, &v27, (v18 + 72))))
  {
    goto LABEL_49;
  }

  pxrInternal__aapl__pxrReserved__::TfType::TfType(&v31);
  if (v16 == v31)
  {
    goto LABEL_79;
  }

  if (pxrInternal__aapl__pxrReserved__::Ts_GetType<double>() != v16)
  {
    if (pxrInternal__aapl__pxrReserved__::Ts_GetType<float>() == v16)
    {
      v30 = 0;
      if (!sub_29A1B3038(&v28, &v27, &v30))
      {
        goto LABEL_83;
      }

      v24 = v30;
      if (!v30)
      {
        goto LABEL_79;
      }

      while (1)
      {
        pxrInternal__aapl__pxrReserved__::Ts_KnotData::Ts_KnotData(&v31);
        *&v33[12] = 0;
        *&v33[4] = 0;
        v29 = 0;
        if (!sub_29A1B2658(&v28, &v27, &v29))
        {
          break;
        }

        v33[0] = v29 & 8 | (32 * (v29 & 1)) | v33[0] & 0xC0 | (v29 >> 1) & 3;
        if (!sub_29A1B26F0(&v28, &v27, &v31) || !sub_29A1B31BC(&v28, &v27, &v33[4]) || (v33[0] & 0x20) != 0 && !sub_29A1B31BC(&v28, &v27, &v33[8]))
        {
          break;
        }

        if ((v6 & 0x80000000) == 0 && (!sub_29A1B26F0(&v28, &v27, &v31 + 1) || !sub_29A1B26F0(&v28, &v27, &v32)) || !sub_29A1B31BC(&v28, &v27, &v33[12]) || !sub_29A1B31BC(&v28, &v27, &v33[16]))
        {
          break;
        }

        sub_29A08B03C((v18 + 80), &v31);
        usdStl::StlModel::AddFacet(v18 + 144, &v31);
        if (!--v24)
        {
          goto LABEL_79;
        }
      }
    }

    else
    {
      if (pxrInternal__aapl__pxrReserved__::Ts_GetType<pxrInternal__aapl__pxrReserved__::pxr_half::half>() != v16)
      {
        *&v31 = "ts/valueTypeDispatch.h";
        *(&v31 + 1) = "TsDispatchToValueTypeTemplate";
        v32 = 64;
        *v33 = "void pxrInternal__aapl__pxrReserved__::TsDispatchToValueTypeTemplate(TfType, Args &&...) [Cls = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_BinaryDataReaderV1, Args = <pxrInternal__aapl__pxrReserved__::Ts_SplineData *, const BOOL &, const unsigned char **, unsigned long *, BOOL *>]";
        v33[8] = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v31, 1, "Unsupported spline value type");
        goto LABEL_83;
      }

      v30 = 0;
      if (!sub_29A1B3038(&v28, &v27, &v30))
      {
        goto LABEL_83;
      }

      v25 = v30;
      if (!v30)
      {
        goto LABEL_79;
      }

      while (1)
      {
        pxrInternal__aapl__pxrReserved__::Ts_KnotData::Ts_KnotData(&v31);
        *&v33[2] = 0;
        v29 = 0;
        if (!sub_29A1B2658(&v28, &v27, &v29))
        {
          break;
        }

        v33[0] = v29 & 8 | (32 * (v29 & 1)) | v33[0] & 0xC0 | (v29 >> 1) & 3;
        if (!sub_29A1B26F0(&v28, &v27, &v31) || !sub_29A1B3360(&v28, &v27, &v33[2]) || (v33[0] & 0x20) != 0 && !sub_29A1B3360(&v28, &v27, &v33[4]))
        {
          break;
        }

        if ((v6 & 0x80000000) == 0 && (!sub_29A1B26F0(&v28, &v27, &v31 + 1) || !sub_29A1B26F0(&v28, &v27, &v32)) || !sub_29A1B3360(&v28, &v27, &v33[6]) || !sub_29A1B3360(&v28, &v27, &v33[8]))
        {
          break;
        }

        sub_29A08B03C((v18 + 80), &v31);
        sub_29A1B33FC(v18 + 144, &v31);
        if (!--v25)
        {
          goto LABEL_79;
        }
      }
    }

LABEL_83:
    pxrInternal__aapl__pxrReserved__::TsSpline::TsSpline(a3);
    if (!v18)
    {
      return;
    }

    goto LABEL_84;
  }

  v30 = 0;
  if (!sub_29A1B3038(&v28, &v27, &v30))
  {
    goto LABEL_83;
  }

  v23 = v30;
  if (v30)
  {
    do
    {
      pxrInternal__aapl__pxrReserved__::Ts_KnotData::Ts_KnotData(&v31);
      *&v33[8] = 0u;
      v34 = 0u;
      v29 = 0;
      if (!sub_29A1B2658(&v28, &v27, &v29))
      {
        goto LABEL_83;
      }

      v33[0] = v29 & 8 | (32 * (v29 & 1)) | v33[0] & 0xC0 | (v29 >> 1) & 3;
      if (!sub_29A1B26F0(&v28, &v27, &v31) || !sub_29A1B26F0(&v28, &v27, &v33[8]) || (v33[0] & 0x20) != 0 && !sub_29A1B26F0(&v28, &v27, &v33[16]))
      {
        goto LABEL_83;
      }

      if ((v6 & 0x80000000) == 0 && (!sub_29A1B26F0(&v28, &v27, &v31 + 1) || !sub_29A1B26F0(&v28, &v27, &v32)) || !sub_29A1B26F0(&v28, &v27, &v34) || !sub_29A1B26F0(&v28, &v27, &v34 + 1))
      {
        goto LABEL_83;
      }

      sub_29A08B03C((v18 + 80), &v31);
      sub_29A1B30D4(v18 + 144, &v31);
    }

    while (--v23);
  }

LABEL_79:
  if (v27)
  {
    *&v31 = "ts/binary.cpp";
    *(&v31 + 1) = "_ParseV1";
    v32 = 385;
    *v33 = "static TsSpline pxrInternal__aapl__pxrReserved__::Ts_BinaryDataAccess::_ParseV1(const std::vector<uint8_t> &, std::unordered_map<TsTime, VtDictionary> &&)";
    v33[8] = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v31, "remain == 0", 0);
  }

  sub_29A1B3504(v18 + 104, a2);
  pxrInternal__aapl__pxrReserved__::TsSpline::TsSpline(a3);
  sub_29A1B2828(a3, v18);
}

BOOL sub_29A1B2658(void *a1, uint64_t *a2, _BYTE *a3)
{
  v3 = *a2;
  if (*a2)
  {
    *a3 = *(*a1)++;
    --*a2;
  }

  else
  {
    v5[0] = "ts/binary.cpp";
    v5[1] = "_ReadBytes";
    v5[2] = 55;
    v5[3] = "BOOL pxrInternal__aapl__pxrReserved__::_ReadBytes(const uint8_t **const, size_t *const, T *const) [T = unsigned char]";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 3, "Unexpected end of data while parsing");
  }

  return v3 != 0;
}

BOOL sub_29A1B26F0(void **a1, unint64_t *a2, void *a3)
{
  v3 = *a2;
  if (*a2 <= 7)
  {
    v5[0] = "ts/binary.cpp";
    v5[1] = "_ReadBytes";
    v5[2] = 55;
    v5[3] = "BOOL pxrInternal__aapl__pxrReserved__::_ReadBytes(const uint8_t **const, size_t *const, T *const) [T = double]";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 3, "Unexpected end of data while parsing");
  }

  else
  {
    *a3 = *(*a1)++;
    *a2 -= 8;
  }

  return v3 > 7;
}

BOOL sub_29A1B278C(_DWORD **a1, unint64_t *a2, _DWORD *a3)
{
  v3 = *a2;
  if (*a2 <= 3)
  {
    v5[0] = "ts/binary.cpp";
    v5[1] = "_ReadBytes";
    v5[2] = 55;
    v5[3] = "BOOL pxrInternal__aapl__pxrReserved__::_ReadBytes(const uint8_t **const, size_t *const, T *const) [T = int]";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 3, "Unexpected end of data while parsing");
  }

  else
  {
    *a3 = *(*a1)++;
    *a2 -= 4;
  }

  return v3 > 3;
}

void sub_29A1B2828(void *a1, uint64_t a2)
{
  sub_29A1B3604(&v5, a2);
  v3 = a1[1];
  v4 = v5;
  *&v5 = *a1;
  *(&v5 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_29A014BEC(v3);
  }
}

void pxrInternal__aapl__pxrReserved__::Ts_BinaryDataAccess::CreateSplineFromBinaryData(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  if (*a1 == *(a1 + 8))
  {

    pxrInternal__aapl__pxrReserved__::TsSpline::TsSpline(a3);
  }

  else
  {
    v4 = **a1 & 0xF;
    if (v4 == 1)
    {

      pxrInternal__aapl__pxrReserved__::Ts_BinaryDataAccess::_ParseV1(a1, a2, a3);
    }

    else
    {
      v5[0] = "ts/binary.cpp";
      v5[1] = "CreateSplineFromBinaryData";
      v5[2] = 420;
      v5[3] = "static TsSpline pxrInternal__aapl__pxrReserved__::Ts_BinaryDataAccess::CreateSplineFromBinaryData(const std::vector<uint8_t> &, std::unordered_map<TsTime, VtDictionary> &&)";
      v6 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "Unknown spline data version %u", v4);
      pxrInternal__aapl__pxrReserved__::TsSpline::TsSpline(a3);
    }
  }
}

uint64_t sub_29A1B2944(uint64_t a1)
{
  sub_29A1B2980(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A1B2980(uint64_t a1, void ***a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A184A10(v2 + 3, 0);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_29A1B29C8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      sub_29A1B2A48(a1, v4, a2, a2);
      a2 += 2;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t *sub_29A1B2A48(uint64_t **a1, void *a2, unint64_t *a3, _OWORD *a4)
{
  v6 = sub_29A1B2AD0(a1, a2, &v11, &v10, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x30uLL);
    *(v7 + 2) = *a4;
    sub_29A00B204(a1, v11, v8, v7);
  }

  return v7;
}

void *sub_29A1B2AD0(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_29A1B2C78(uint64_t a1, size_t a2)
{
  v6 = a1 + 8;
  v4 = *(a1 + 8);
  v5 = *(v6 + 8);
  if (v5 - v4 >= a2)
  {
    if (a2)
    {
      v13 = &v4[a2];
      bzero(v4, a2);
      v4 = v13;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v7 = *a1;
    v8 = &v4[-*a1];
    v9 = v8 + a2;
    if ((v8 + a2) < 0)
    {
      sub_29A00C9A4();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = operator new(v11);
    }

    else
    {
      v12 = 0;
    }

    bzero(&v12[v8], a2);
    memcpy(v12, v7, v8);
    *a1 = v12;
    *(a1 + 8) = &v12[v8 + a2];
    *(a1 + 16) = &v12[v11];
    if (v7)
    {

      operator delete(v7);
    }
  }
}

uint64_t sub_29A1B2D88(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      sub_29A1B2E08(a1, v4, a2, a2);
      a2 += 16;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t *sub_29A1B2E08(uint64_t **a1, uint64_t *a2, unsigned __int8 *a3, _OWORD *a4)
{
  v6 = sub_29A1B2E90(a1, a2, &v11, &v10, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x30uLL);
    *(v7 + 2) = *a4;
    sub_29A00B204(a1, v11, v8, v7);
  }

  return v7;
}

uint64_t *sub_29A1B2E90(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int8 *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 32), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 32) < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 32))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

BOOL sub_29A1B3038(_DWORD **a1, unint64_t *a2, _DWORD *a3)
{
  v3 = *a2;
  if (*a2 <= 3)
  {
    v5[0] = "ts/binary.cpp";
    v5[1] = "_ReadBytes";
    v5[2] = 55;
    v5[3] = "BOOL pxrInternal__aapl__pxrReserved__::_ReadBytes(const uint8_t **const, size_t *const, T *const) [T = unsigned int]";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 3, "Unexpected end of data while parsing");
  }

  else
  {
    *a3 = *(*a1)++;
    *a2 -= 4;
  }

  return v3 > 3;
}

void sub_29A1B30D4(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v10 = (v4 - *a1) >> 6;
    v11 = v10 + 1;
    if ((v10 + 1) >> 58)
    {
      sub_29A00C9A4();
    }

    v12 = v5 - *a1;
    if (v12 >> 5 > v11)
    {
      v11 = v12 >> 5;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFC0)
    {
      v13 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      v14 = sub_29A0BE3C0(a1, v13);
    }

    else
    {
      v14 = 0;
    }

    v15 = &v14[64 * v10];
    v16 = &v14[64 * v13];
    v17 = *a2;
    v18 = a2[1];
    v19 = a2[3];
    *(v15 + 2) = a2[2];
    *(v15 + 3) = v19;
    *v15 = v17;
    *(v15 + 1) = v18;
    v9 = v15 + 64;
    v20 = *(a1 + 8) - *a1;
    v21 = &v15[-v20];
    memcpy(&v15[-v20], *a1, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v9;
    *(a1 + 16) = v16;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[3];
    v4[2] = a2[2];
    v4[3] = v8;
    *v4 = v6;
    v4[1] = v7;
    v9 = v4 + 4;
  }

  *(a1 + 8) = v9;
}

BOOL sub_29A1B31BC(_DWORD **a1, unint64_t *a2, _DWORD *a3)
{
  v3 = *a2;
  if (*a2 <= 3)
  {
    v5[0] = "ts/binary.cpp";
    v5[1] = "_ReadBytes";
    v5[2] = 55;
    v5[3] = "BOOL pxrInternal__aapl__pxrReserved__::_ReadBytes(const uint8_t **const, size_t *const, T *const) [T = float]";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 3, "Unexpected end of data while parsing");
  }

  else
  {
    *a3 = *(*a1)++;
    *a2 -= 4;
  }

  return v3 > 3;
}

void usdStl::StlModel::AddFacet(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_29A00C9A4();
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
      v13 = sub_29A08E058(a1, v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[48 * v9];
    v15 = &v13[48 * v12];
    v16 = *a2;
    v17 = a2[2];
    *(v14 + 1) = a2[1];
    *(v14 + 2) = v17;
    *v14 = v16;
    v8 = v14 + 48;
    v18 = *(a1 + 8) - *a1;
    v19 = &v14[-v18];
    memcpy(&v14[-v18], *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v8;
    *(a1 + 16) = v15;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    v4[1] = a2[1];
    v4[2] = v7;
    *v4 = v6;
    v8 = v4 + 3;
  }

  *(a1 + 8) = v8;
}

BOOL sub_29A1B3360(_WORD **a1, unint64_t *a2, _WORD *a3)
{
  v3 = *a2;
  if (*a2 <= 1)
  {
    v5[0] = "ts/binary.cpp";
    v5[1] = "_ReadBytes";
    v5[2] = 55;
    v5[3] = "BOOL pxrInternal__aapl__pxrReserved__::_ReadBytes(const uint8_t **const, size_t *const, T *const) [T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 3, "Unexpected end of data while parsing");
  }

  else
  {
    *a3 = *(*a1)++;
    *a2 -= 2;
  }

  return v3 > 1;
}

void sub_29A1B33FC(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x666666666666666)
    {
      sub_29A00C9A4();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      v13 = sub_29A10E224(a1, v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[40 * v9];
    v15 = &v13[40 * v12];
    v16 = *a2;
    v17 = a2[1];
    *(v14 + 4) = *(a2 + 4);
    *v14 = v16;
    *(v14 + 1) = v17;
    v8 = v14 + 40;
    v18 = *(a1 + 8) - *a1;
    v19 = &v14[-v18];
    memcpy(&v14[-v18], *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v8;
    *(a1 + 16) = v15;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(v4 + 32) = *(a2 + 4);
    *v4 = v6;
    *(v4 + 16) = v7;
    v8 = (v4 + 40);
  }

  *(a1 + 8) = v8;
}

void sub_29A1B3504(uint64_t a1, uint64_t *a2)
{
  sub_29A1B35A8(a1);
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

void sub_29A1B35A8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29A1B2980(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void *sub_29A1B3604(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2044F60;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A1B365C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B292F38(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1B3678(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A1B36A0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A1B36D0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2044FB0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Ts_Eval(uint64_t a1, unsigned int a2, int a3, double a4)
{
  v194[0] = *MEMORY[0x29EDCA608];
  if (*(a1 + 80) == *(a1 + 88))
  {
    return 0;
  }

  v146 = a1;
  v147 = a2;
  v148 = a4;
  v149 = a3;
  v152 = 0;
  v156 = 0;
  v157 = 0;
  v151 = 0;
  memset(v150, 0, 11);
  v153 = 0.0;
  v154 = 0.0;
  v155 = 0;
  pxrInternal__aapl__pxrReserved__::Ts_KnotData::Ts_KnotData(&v158);
  v161 = 0u;
  v160 = 0u;
  pxrInternal__aapl__pxrReserved__::Ts_KnotData::Ts_KnotData(&v162);
  v165 = 0u;
  v164 = 0u;
  BYTE2(v150[1]) = pxrInternal__aapl__pxrReserved__::Ts_SplineData::HasInnerLoops(v146, &v151);
  if ((BYTE2(v150[1]) & 1) == 0 && *(v146 + 11) - *(v146 + 10) <= 8uLL)
  {
    v152 = 0;
    goto LABEL_102;
  }

  LOBYTE(v152) = pxrInternal__aapl__pxrReserved__::TsExtrapolation::IsLooping((v146 + 16));
  IsLooping = pxrInternal__aapl__pxrReserved__::TsExtrapolation::IsLooping((v146 + 32));
  HIBYTE(v152) = IsLooping;
  if (((BYTE2(v150[1]) | v152 | IsLooping) & 1) == 0)
  {
    goto LABEL_102;
  }

  v6 = *(v146 + 11);
  v7 = **(v146 + 10);
  v153 = v7;
  v8 = *(v6 - 8);
  v154 = v8;
  if (BYTE2(v150[1]))
  {
    pxrInternal__aapl__pxrReserved__::TsLoopParams::GetLoopedInterval(v146 + 48, &v186);
    if (*&v186 < v7)
    {
      v153 = *&v186;
      LOBYTE(v155) = 1;
    }

    if (*&v187 > v8)
    {
      v154 = *&v187;
      BYTE1(v155) = 1;
    }

    if ((v152 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_15:
    v9 = 1;
    goto LABEL_16;
  }

  if (v152)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (HIBYTE(v152) != 1)
  {
    goto LABEL_36;
  }

  v9 = 0;
LABEL_16:
  v11 = fabs(v154) == INFINITY || v149 != 0;
  if (v153 >= v148 && ((v12 = fabs(v153) == INFINITY, v153 != v148) || v12 || !v149) || v154 <= v148 && (v154 != v148 || v11))
  {
    if (v148 >= v154)
    {
      v9 = 0;
    }

    BYTE2(v155) = v9;
    HIBYTE(v155) = (v153 < v148) & HIBYTE(v152);
    if ((v9 & 1) != 0 || ((v153 < v148) & HIBYTE(v152)) != 0)
    {
      if (v9)
      {
        sub_29A1B4AAC(&v146, 1, v153 - v148);
      }

      else if (((v153 < v148) & HIBYTE(v152)) != 0)
      {
        sub_29A1B4AAC(&v146, 0, v148 - v154);
      }
    }
  }

LABEL_36:
  if (BYTE2(v150[1]) != 1)
  {
    goto LABEL_102;
  }

  v13 = v146;
  pxrInternal__aapl__pxrReserved__::TsLoopParams::GetLoopedInterval(v146 + 48, &v182);
  pxrInternal__aapl__pxrReserved__::TsLoopParams::GetPrototypeInterval(v13 + 6, &v174);
  v14 = v148;
  if ((*&v182 < v148 || *&v182 == v148 && BYTE8(v182) == 1) && (*&v183 > v148 || *&v183 == v148 && BYTE8(v183) == 1) && (*&v174 >= v148 && (*&v174 != v148 || BYTE8(v174) != 1) || *&v175 <= v148 && (*&v175 != v148 || (BYTE8(v175) & 1) == 0)))
  {
    v15 = fmax(*&v175 - *&v174, 0.0);
    v16 = *(v13 + 6);
    if (v148 >= v16)
    {
      v19 = (((v148 - *(v13 + 7)) / v15) + 1);
      v14 = v148 - v15 * v19;
      v148 = v14;
      if (v147)
      {
        goto LABEL_55;
      }

      v18 = v150[0] + *(v13 + 9) * v19;
    }

    else
    {
      v17 = vcvtpd_s64_f64((v16 - v148) / v15);
      v14 = v148 + v15 * v17;
      v148 = v14;
      if (v147)
      {
        goto LABEL_55;
      }

      v18 = v150[0] - *(v13 + 9) * v17;
    }

    v150[0] = v18;
  }

LABEL_55:
  v20 = v146;
  v21 = v151;
  v22 = *(v146 + 10);
  v23 = &v22[v151];
  if ((*&v174 < v14 || *&v174 == v14 && BYTE8(v174) == 1) && (*&v175 > v14 || *&v175 == v14 && BYTE8(v175) == 1))
  {
    v24 = *(v146 + 11);
    if (v23 != v24)
    {
      v25 = v24 - v23;
      do
      {
        v26 = v25 >> 1;
        v27 = &v23[v25 >> 1];
        v29 = *v27;
        v28 = v27 + 1;
        v25 += ~(v25 >> 1);
        if (v29 < *(v13 + 7))
        {
          v23 = v28;
        }

        else
        {
          v25 = v26;
        }
      }

      while (v25);
    }

    if (v14 > *(v23 - 1))
    {
      BYTE1(v150[1]) = 1;
    }

    goto LABEL_102;
  }

  if (v14 < v153)
  {
    if (v155 != 1)
    {
      goto LABEL_102;
    }

    sub_29A1B4D0C(&v146, v151, -*(v13 + 16), &v186);
    v158 = v186;
    v159 = v187;
    v160 = v188;
    v161 = v189;
    v30 = *(v146 + 10);
    if (v151 + 1 < ((*(v146 + 11) - v30) >> 3) && ((v31 = *(v30 + 8 * (v151 + 1)), *&v174 < v31) || *&v174 == v31 && BYTE8(v174) == 1) && (*&v175 > v31 || *&v175 == v31 && BYTE8(v175) == 1))
    {
      sub_29A1B4D0C(&v146, v151 + 1, -*(v13 + 16), &v186);
    }

    else
    {
      sub_29A1B4D0C(&v146, v151, 1 - *(v13 + 16), &v186);
    }

LABEL_101:
    v162 = v186;
    v163 = v187;
    v164 = v188;
    v165 = v189;
    goto LABEL_102;
  }

  if (v14 > v154)
  {
    if (BYTE1(v155) != 1)
    {
      goto LABEL_102;
    }

    sub_29A1B4D0C(&v146, v151, *(v13 + 17) + 1, &v186);
    v158 = v186;
    v159 = v187;
    v160 = v188;
    v161 = v189;
    v32 = *(v20 + 11);
    if (v23 != v32)
    {
      v33 = v32 - v23;
      do
      {
        v34 = v33 >> 1;
        v35 = &v23[v33 >> 1];
        v37 = *v35;
        v36 = v35 + 1;
        v33 += ~(v33 >> 1);
        if (v37 < *(v13 + 7))
        {
          v23 = v36;
        }

        else
        {
          v33 = v34;
        }
      }

      while (v33);
    }

    sub_29A1B4D0C(&v146, (v23 - *(v146 + 10) - 8) >> 3, *(v13 + 17), &v186);
    goto LABEL_101;
  }

  if (v14 >= *&v182)
  {
    if (v14 > *&v183)
    {
      v83 = v23 + 1;
      v84 = *(v146 + 11);
      if (v23 + 1 != v84)
      {
        v85 = v84 - v83;
        do
        {
          v86 = v85 >> 1;
          v87 = &v83[v85 >> 1];
          v89 = *v87;
          v88 = v87 + 1;
          v85 += ~(v85 >> 1);
          if (*&v183 < v89)
          {
            v85 = v86;
          }

          else
          {
            v83 = v88;
          }
        }

        while (v85);
        if (v83 != v84 && v14 < *v83)
        {
          HIBYTE(v157) = 1;
        }
      }
    }
  }

  else
  {
    if (v151)
    {
      v23 = *(v146 + 10);
      do
      {
        v38 = &v23[v21 >> 1];
        v40 = *v38;
        v39 = v38 + 1;
        _NF = v40 < *&v182;
        if (v40 >= *&v182)
        {
          v21 >>= 1;
        }

        else
        {
          v21 += ~(v21 >> 1);
        }

        if (_NF)
        {
          v23 = v39;
        }
      }

      while (v21);
    }

    if (v22 != v23 && v14 > *(v23 - 1))
    {
      LOBYTE(v157) = 1;
    }
  }

LABEL_102:
  v42 = v148;
  v44 = *(a1 + 80);
  v43 = *(a1 + 88);
  if (v43 == v44)
  {
    v46 = *(a1 + 88);
  }

  else
  {
    v45 = v43 - v44;
    v46 = *(a1 + 80);
    do
    {
      v47 = v45 >> 1;
      v48 = &v46[v45 >> 1];
      v50 = *v48;
      v49 = v48 + 1;
      v45 += ~(v45 >> 1);
      if (v50 < v148)
      {
        v46 = v49;
      }

      else
      {
        v45 = v47;
      }
    }

    while (v45);
  }

  if (v44 == v46)
  {
    v51 = *(a1 + 88);
  }

  else
  {
    v51 = v46 - 1;
  }

  v143 = v43 - v44;
  if (v43 == v46 || *v46 != v148)
  {
    v53 = 0;
    v52 = v46;
    v54 = *(a1 + 88);
    v55 = v54;
  }

  else
  {
    v52 = v46 + 1;
    v53 = 1;
    v54 = v46;
    v55 = v46++;
  }

  v56 = v149;
  v57 = v43 - 1;
  v139 = v57;
  v58 = BYTE1(v150[1]) != 1 && v51 == v57;
  v141 = v58;
  pxrInternal__aapl__pxrReserved__::Ts_KnotData::Ts_KnotData(&v174);
  v176 = 0u;
  v177 = 0u;
  pxrInternal__aapl__pxrReserved__::Ts_KnotData::Ts_KnotData(&v170);
  v172 = 0u;
  v173 = 0u;
  pxrInternal__aapl__pxrReserved__::Ts_KnotData::Ts_KnotData(&v166);
  v168 = 0u;
  v169 = 0u;
  v60 = *(a1 + 88);
  if (v54 != v60)
  {
    (*(*a1 + 96))(&v186, a1, (v55 - *(a1 + 80)) >> 3);
    v174 = v186;
    v175 = v187;
    v176 = v188;
    v177 = v189;
    v60 = *(a1 + 88);
  }

  if (v60 != v51)
  {
    (*(*a1 + 96))(&v186, a1, (v51 - *(a1 + 80)) >> 3);
    v170 = v186;
    v171 = v187;
    v172 = v188;
    v173 = v189;
    v60 = *(a1 + 88);
  }

  if (v60 != v52)
  {
    (*(*a1 + 96))(&v186, a1, (v46 - *(a1 + 80)) >> 3);
    v166 = v186;
    v167 = v187;
    v168 = v188;
    v169 = v189;
  }

  if (!v53)
  {
    if (v44 == v52)
    {
      pxrInternal__aapl__pxrReserved__::Ts_KnotData::Ts_KnotData(&v186);
      v188 = 0u;
      v189 = 0u;
      if (*(a1 + 88) != v46 + 1)
      {
        (*(*a1 + 96))(&v182, a1, (v46 - *(a1 + 80) + 8) >> 3);
        v186 = v182;
        v187 = v183;
        v188 = v184;
        v189 = v185;
      }

      if (v155 == 1)
      {
        v166 = v158;
        v167 = v159;
        v168 = v160;
        v169 = v161;
        v186 = v162;
        v187 = v163;
        v188 = v164;
        v189 = v165;
      }

      if (a2 == 1)
      {
        if ((BYTE8(v167) & 0x20) != 0)
        {
          v68 = &v168 + 1;
        }

        else
        {
          v68 = &v168;
        }

        v62 = *v68;
        goto LABEL_157;
      }

      sub_29A1B4DF0((a1 + 16), v143 > 8, &v166, &v186, 0);
      if (v74)
      {
        v62 = v73;
        if (a2 != 2)
        {
          if ((BYTE8(v167) & 0x20) != 0)
          {
            v75 = &v168 + 1;
          }

          else
          {
            v75 = &v168;
          }

          v62 = *v75 - (*&v166 - v42) * v73;
        }

        goto LABEL_157;
      }

LABEL_193:
      v69 = 0;
      v62 = 0.0;
LABEL_204:
      if (v69)
      {
        goto LABEL_205;
      }

      return 0;
    }

    if (v141)
    {
      pxrInternal__aapl__pxrReserved__::Ts_KnotData::Ts_KnotData(&v186);
      v188 = 0u;
      v189 = 0u;
      v61 = *(a1 + 80);
      if (v61 != v51)
      {
        (*(*a1 + 96))(&v182, a1, (v51 - v61 - 8) >> 3);
        v186 = v182;
        v187 = v183;
        v188 = v184;
        v189 = v185;
      }

      if (BYTE1(v155) == 1)
      {
        v170 = v158;
        v171 = v159;
        v172 = v160;
        v173 = v161;
        v186 = v162;
        v187 = v163;
        v188 = v164;
        v189 = v165;
      }

      if (a2 == 1)
      {
        v62 = *&v172;
LABEL_157:
        v69 = 1;
        goto LABEL_204;
      }

      sub_29A1B4DF0((a1 + 32), v143 > 8, &v170, &v186, 2);
      if (v78)
      {
        v62 = v77;
        if (a2 != 2)
        {
          v62 = *&v172 + (v42 - *&v170) * v77;
        }

        goto LABEL_157;
      }

      goto LABEL_193;
    }

    if (BYTE1(v150[1]) == 1)
    {
      sub_29A1B4D0C(&v146, v151, 1, &v186);
    }

    else
    {
      if (v157 != 1)
      {
        if (HIBYTE(v157) == 1)
        {
          sub_29A1B4D0C(&v146, v151, *(v146 + 17) + 1, &v186);
          v170 = v186;
          v171 = v187;
          v172 = v188;
          v173 = v189;
        }

LABEL_183:
        if (a2 == 1)
        {
LABEL_184:
          v62 = *&v172;
          goto LABEL_205;
        }

        v76 = BYTE8(v171) & 7;
        if (v76 <= 1)
        {
          if (v76)
          {
            v62 = *&v172;
            if (a2)
            {
              v62 = 0.0;
            }

            goto LABEL_205;
          }

          return 0;
        }

        if (v76 == 2)
        {
          if ((BYTE8(v167) & 0x20) != 0)
          {
            v82 = &v168 + 1;
          }

          else
          {
            v82 = &v168;
          }

          v62 = (*v82 - *&v172) / (*&v166 - *&v170);
          if (a2 != 2)
          {
            v62 = *&v172 + (v42 - *&v170) * v62;
          }

          goto LABEL_205;
        }

        if (v76 != 3)
        {
          *&v186 = "ts/eval.cpp";
          *(&v186 + 1) = "_Interpolate";
          *&v187 = 1112;
          *(&v187 + 1) = "std::optional<double> pxrInternal__aapl__pxrReserved__::_Interpolate(const Ts_TypedKnotData<double> &, const Ts_TypedKnotData<double> &, const TsTime, const Ts_EvalAspect)";
          LOBYTE(v188) = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v186, 1, "Unexpected interpolation type");
          return 0;
        }

        if ((BYTE8(v171) & 0x18) != 0)
        {
          *&v186 = "ts/eval.cpp";
          *(&v186 + 1) = "_EvalHermite";
          *&v187 = 303;
          *(&v187 + 1) = "double pxrInternal__aapl__pxrReserved__::_EvalHermite(const Ts_TypedKnotData<double> &, const Ts_TypedKnotData<double> &, const TsTime, const Ts_EvalAspect)";
          LOBYTE(v188) = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v186, "Hermite evaluation is not yet implemented", v59);
          goto LABEL_201;
        }

        v186 = v170;
        v187 = v171;
        v188 = v172;
        v189 = v173;
        v182 = v166;
        v183 = v167;
        v184 = v168;
        v185 = v169;
        pxrInternal__aapl__pxrReserved__::Ts_RegressionPreventerBatchAccess::ProcessSegment(&v186, &v182, 2);
        v90 = *&v186 - v42;
        v91 = *&v186 + *&v187 - v42;
        v92 = *&v182 - *(&v182 + 1) - v42;
        v93 = *&v182 - v42;
        v94 = v91 * 3.0;
        v95 = v92 * 3.0;
        v96 = v90 * 3.0;
        v140 = v93 + v91 * 3.0 - v90 - v95;
        v97 = fabs(v140);
        v144 = v90 * 3.0 + v91 * -6.0 + v95;
        v98 = fabs(v144) >= 1.0e-10 || v97 >= 1.0e-10;
        if (!v98 && vabdd_f64(v94, v96) < 1.0e-10 && (sub_29B292F5C(v190) & 1) == 0)
        {
LABEL_264:
          v62 = *&v188;
          goto LABEL_205;
        }

        v99 = v94 - v96;
        v142 = v94 - v96;
        if (v98)
        {
          if (v97 < 1.0e-10)
          {
            v114 = sqrt(v99 * v99 + v90 * (v144 * -4.0));
            v191 = (-v99 - v114) / (v144 + v144);
            v192 = (v114 - v99) / (v144 + v144);
            v179 = 0;
            v180 = 0;
            __p = 0;
            sub_29A1B4FBC(&__p, &v191, &v193, 2uLL);
            v115 = sub_29A1B4F08(&__p);
          }

          else
          {
            v100 = v144 / v140;
            v101 = (v99 / v140 * 3.0 - v100 * v100) / 3.0 / 3.0;
            v102 = v101 * (v101 * v101);
            v103 = (v90 / v140 * 27.0 + v100 * (v100 * (v100 + v100)) + v99 / v140 * (v144 / v140 * -9.0)) / 27.0;
            v104 = v103 * 0.5;
            v105 = v102 + v104 * v104;
            v106 = v144 / v140 / 3.0;
            if (v105 >= 0.0)
            {
              if (v105 != 0.0)
              {
                v121 = sqrt(v105);
                v122 = v121 - v104;
                if (v121 - v104 >= 0.0)
                {
                  v123 = pow(v122, 0.333333333);
                }

                else
                {
                  v123 = -pow(-v122, 0.333333333);
                }

                v124 = a2;
                v136 = v104 + v121;
                if (v104 + v121 >= 0.0)
                {
                  v137 = pow(v136, 0.333333333);
                }

                else
                {
                  v137 = -pow(-v136, 0.333333333);
                }

                v113 = v123 - v137 - v106;
                goto LABEL_256;
              }

              if (v104 >= 0.0)
              {
                v116 = pow(v104, 0.333333333);
              }

              else
              {
                v116 = -pow(-v104, 0.333333333);
              }

              v191 = v116 * -2.0 - v106;
              v192 = v116 - v106;
              v179 = 0;
              v180 = 0;
              __p = 0;
              sub_29A1B4FBC(&__p, &v191, &v193, 2uLL);
              v115 = sub_29A1B4F08(&__p);
            }

            else
            {
              v107 = sqrt(-v102);
              v108 = -v103 / (v107 + v107);
              v109 = 1.0;
              if (v108 <= 1.0)
              {
                v109 = v108;
              }

              if (v108 >= -1.0)
              {
                v110 = v109;
              }

              else
              {
                v110 = -1.0;
              }

              v111 = acos(v110);
              if (v107 >= 0.0)
              {
                v112 = pow(v107, 0.333333333);
              }

              else
              {
                v112 = -pow(-v107, 0.333333333);
              }

              v117 = v112 + v112;
              v118 = cos(v111 / 3.0) * (v112 + v112) - v106;
              v119 = cos((v111 + 6.28318531) / 3.0) * v117 - v106;
              v120 = cos((v111 + 12.5663706) / 3.0);
              v191 = v118;
              v192 = v119;
              v193 = v120 * v117 - v106;
              v179 = 0;
              v180 = 0;
              __p = 0;
              sub_29A1B4FBC(&__p, &v191, v194, 3uLL);
              v115 = sub_29A1B4F08(&__p);
            }
          }

          v113 = v115;
          if (__p)
          {
            v179 = __p;
            v138 = v115;
            operator delete(__p);
            v113 = v138;
          }
        }

        else
        {
          v113 = -v90 / v99;
        }

        v124 = a2;
LABEL_256:
        if (v113 > 0.0)
        {
          if (v113 >= 1.0)
          {
            if (v113 >= 1.0)
            {
              sub_29B292FEC(&__p);
            }

            v62 = *&v184;
          }

          else
          {
            v125 = *&v188 + *&v187 * *(&v189 + 1);
            v126 = 40;
            if ((BYTE8(v183) & 0x20) == 0)
            {
              v126 = 32;
            }

            v127 = *(&v182 + v126);
            v128 = (v127 - *(&v182 + 1) * *&v185) * 3.0;
            v129.f64[0] = v127 + v125 * 3.0 - *&v188 - v128;
            v130.f64[0] = *&v188 * 3.0 + v125 * -6.0 + v128;
            v131.f64[0] = v125 * 3.0 - *&v188 * 3.0;
            if (v124)
            {
              v129.f64[1] = v140;
              __asm { FMOV            V0.2D, #3.0 }

              v130.f64[1] = v144;
              v131.f64[1] = v142;
              v135 = vaddq_f64(v131, vmulq_n_f64(vaddq_f64(vaddq_f64(v130, v130), vmulq_n_f64(vmulq_f64(v129, _Q0), v113)), v113));
              *&v62 = *&vdivq_f64(v135, vdupq_laneq_s64(v135, 1));
            }

            else
            {
              v62 = *&v188 + v113 * (v131.f64[0] + v113 * (v130.f64[0] + v113 * v129.f64[0]));
            }
          }

          goto LABEL_205;
        }

        if (v113 <= -1.0e-10)
        {
          sub_29B292FA4(v181);
        }

        goto LABEL_264;
      }

      sub_29A1B4D0C(&v146, v151, -*(v146 + 16), &v186);
    }

    v166 = v186;
    v167 = v187;
    v168 = v188;
    v169 = v189;
    goto LABEL_183;
  }

  if (a2 > 1)
  {
    if (v56)
    {
      if (v54 != v139)
      {
        v63 = BYTE8(v175) & 7;
        if (v63 != 1)
        {
          if (v63 != 2)
          {
            v62 = *(&v177 + 1);
            goto LABEL_205;
          }

          if ((BYTE8(v167) & 0x20) != 0)
          {
            v64 = &v168 + 1;
          }

          else
          {
            v64 = &v168;
          }

          v65 = *&v174;
          v66 = *v64 - *&v176;
          v67 = *&v166;
          goto LABEL_173;
        }

        goto LABEL_201;
      }

      sub_29A1B4DF0((a1 + 32), v143 > 8, &v174, &v170, 2);
    }

    else
    {
      if (v54 != v44)
      {
        v71 = BYTE8(v171) & 7;
        if (v71 != 1)
        {
          if (v71 != 2)
          {
            v62 = *&v177;
            goto LABEL_205;
          }

          if ((BYTE8(v175) & 0x20) != 0)
          {
            v72 = &v176 + 1;
          }

          else
          {
            v72 = &v176;
          }

          v65 = *&v170;
          v66 = *v72 - *&v172;
          v67 = *&v174;
LABEL_173:
          v62 = v66 / (v67 - v65);
          goto LABEL_205;
        }

LABEL_201:
        v62 = 0.0;
        goto LABEL_205;
      }

      sub_29A1B4DF0((a1 + 16), v143 > 8, &v174, &v166, 0);
    }

    v62 = v79;
    goto LABEL_204;
  }

  if (!v56 && v54 != v44)
  {
    if ((BYTE8(v171) & 7) == 1)
    {
      goto LABEL_184;
    }

LABEL_162:
    if ((BYTE8(v175) & 0x20) != 0)
    {
      v70 = &v176 + 1;
    }

    else
    {
      v70 = &v176;
    }

    v62 = *v70;
    goto LABEL_205;
  }

  if (!v56)
  {
    goto LABEL_162;
  }

  v62 = *&v176;
LABEL_205:
  v80 = v62 + v150[0];
  if (LOBYTE(v150[1]))
  {
    v80 = -v80;
  }

  return *&v80;
}

void sub_29A1B4A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double *sub_29A1B4AAC(double *result, int a2, double a3)
{
  v3 = result;
  v4 = result[8];
  v5 = result[9] - v4;
  v6 = a3 / v5;
  if (v6 == v6)
  {
    v7 = *(result + 6);
    v8 = v7 == 0;
    v9 = v7 != 0;
    v10 = v8;
    if (a2)
    {
      v9 = v10;
    }
  }

  else
  {
    v9 = 1;
  }

  v11 = v9 + v6;
  if (!a2)
  {
    v11 = -v11;
  }

  v12 = v11;
  v13 = result[2] + v5 * v11;
  result[2] = v13;
  v14 = *result;
  v15 = *(*result + 16);
  if (v15 == 4)
  {
    if (*(result + 2) != 2)
    {
      if (result[10])
      {
        (*(**&v14 + 96))(v21, *result, *(result + 6));
        v16 = 5;
        if ((v22 & 0x20) == 0)
        {
          v16 = 4;
        }

        v17 = *&v21[v16] - *(*&v14 + 72) * *(*&v14 + 64);
      }

      else
      {
        (*(**&v14 + 96))(v21, *result, 0);
        v18 = 5;
        if ((v22 & 0x20) == 0)
        {
          v18 = 4;
        }

        v17 = *&v21[v18];
      }

      if (*(v3 + 81))
      {
        result = (*(**v3 + 96))(v21);
        v19 = v23 + *(*&v14 + 72) * (*(*&v14 + 68) + 1);
      }

      else
      {
        result = (*(**v3 + 96))(v21);
        v19 = v23;
      }

      v20 = v19 - v17;
      v3[11] = v20;
      v3[4] = v3[4] - v20 * v12;
    }
  }

  else if (v15 == 6 && (v11 & 1) != 0)
  {
    result[2] = v4 + v5 - (v13 - v4);
    *(result + 6) = 2 * (*(result + 6) == 0);
    if (*(result + 2) == 2)
    {
      *(result + 40) = 1;
    }
  }

  return result;
}

uint64_t sub_29A1B4D0C@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  pxrInternal__aapl__pxrReserved__::TsLoopParams::GetPrototypeInterval((*a1 + 48), v12);
  v9 = fmax(v12[2] - v12[0], 0.0);
  result = (*(**a1 + 96))(*a1, a2);
  *a4 = v9 * a3 + *a4;
  if (!a1[2])
  {
    v11 = *(v8 + 72) * a3;
    *(a4 + 32) = *(a4 + 32) + v11;
    if ((*(a4 + 24) & 0x20) != 0)
    {
      *(a4 + 40) = v11 + *(a4 + 40);
    }
  }

  return result;
}

double sub_29A1B4DF0(double *a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = *a1;
  result = 0.0;
  if (*a1)
  {
    if (v8 == 3)
    {
      return a1[1];
    }

    else if (v8 != 1)
    {
      if (a2)
      {
        if (v8 == 2 || (v20[5] = v5, v20[6] = v6, v19 = a3, v17 = a4, v18 = a5, v16 = sub_29B293034(v20), result = 0.0, a5 = v18, a4 = v17, a3 = v19, (v16 & 1) != 0))
        {
          v10 = *(a3 + 24);
          if ((v10 & 0x20) == 0)
          {
            if (a5)
            {
              v11 = *(a4 + 24) & 7;
              if (v11 != 1)
              {
                if (v11 == 2)
                {
                  v12 = *(a3 + 32) - *(a4 + 32);
                  v13 = *a3;
                  v14 = *a4;
                  return v12 / (v13 - v14);
                }

                return *(a3 + 48);
              }
            }

            else if ((v10 & 7) != 1)
            {
              if ((v10 & 7) == 2)
              {
                v15 = 40;
                if ((*(a4 + 24) & 0x20) == 0)
                {
                  v15 = 32;
                }

                v12 = *(a4 + v15) - *(a3 + 32);
                v13 = *a4;
                v14 = *a3;
                return v12 / (v13 - v14);
              }

              return *(a3 + 56);
            }
          }
        }
      }
    }
  }

  return result;
}

double sub_29A1B4F08(double **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    v4 = 0.0;
LABEL_9:
    v8[0] = "ts/eval.cpp";
    v8[1] = "_FilterZeroes";
    v8[2] = 116;
    v8[3] = "double pxrInternal__aapl__pxrReserved__::_FilterZeroes(const std::vector<double> &)";
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v8, "numFound == 1", 0);
    return v4;
  }

  v3 = 0;
  v4 = 0.0;
  do
  {
    v5 = *v1++;
    v6 = v5;
    v3 += v5 >= 0.0 && v5 <= 1.0;
    if (v5 >= 0.0 && v5 <= 1.0)
    {
      v4 = v6;
    }
  }

  while (v1 != v2);
  if (v3 != 1)
  {
    goto LABEL_9;
  }

  return v4;
}

char *sub_29A1B4FBC(char *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A00C968(result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_29A1B5014(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1B5030@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 16) = a2;
  *(result + 24) = v2;
  *(result + 32) = 0;
  return result;
}

pxrInternal__aapl__pxrReserved__::TsKnot *pxrInternal__aapl__pxrReserved__::TsKnot::TsKnot(pxrInternal__aapl__pxrReserved__::TsKnot *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::Ts_GetType<double>();
  v3 = pxrInternal__aapl__pxrReserved__::Ts_KnotData::Create(v2);
  *this = v3;
  pxrInternal__aapl__pxrReserved__::Ts_KnotDataProxy::Create(v3, v2, this + 1);
  *(this + 2) = 0;
  *(*this + 24) &= 0xE7u;
  return this;
}

{
  v2 = pxrInternal__aapl__pxrReserved__::Ts_GetType<double>();
  v3 = pxrInternal__aapl__pxrReserved__::Ts_KnotData::Create(v2);
  *this = v3;
  pxrInternal__aapl__pxrReserved__::Ts_KnotDataProxy::Create(v3, v2, this + 1);
  *(this + 2) = 0;
  *(*this + 24) &= 0xE7u;
  return this;
}

void *pxrInternal__aapl__pxrReserved__::TsKnot::TsKnot(void *a1, uint64_t a2, char a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::Ts_KnotData::Create(a2);
  *a1 = v6;
  pxrInternal__aapl__pxrReserved__::Ts_KnotDataProxy::Create(v6, a2, a1 + 1);
  a1[2] = 0;
  *(*a1 + 24) = *(*a1 + 24) & 0xE7 | (8 * (a3 & 3));
  return a1;
}

uint64_t *pxrInternal__aapl__pxrReserved__::TsKnot::TsKnot(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *a1 = a2;
  pxrInternal__aapl__pxrReserved__::Ts_KnotDataProxy::Create(a2, a3, a1 + 1);
  v6 = *a4;
  *a4 = 0;
  a1[2] = v6;
  return a1;
}

{
  *a1 = a2;
  pxrInternal__aapl__pxrReserved__::Ts_KnotDataProxy::Create(a2, a3, a1 + 1);
  v6 = *a4;
  *a4 = 0;
  a1[2] = v6;
  return a1;
}

pxrInternal__aapl__pxrReserved__::TsKnot *pxrInternal__aapl__pxrReserved__::TsKnot::TsKnot(pxrInternal__aapl__pxrReserved__::TsKnot *this, const pxrInternal__aapl__pxrReserved__::TsKnot *a2)
{
  v4 = (*(**(a2 + 1) + 16))(*(a2 + 1));
  *this = v4;
  v5 = (*(**(a2 + 1) + 32))(*(a2 + 1));
  pxrInternal__aapl__pxrReserved__::Ts_KnotDataProxy::Create(v4, v5, this + 1);
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary((this + 16), (a2 + 16));
  return this;
}

void sub_29A1B52A8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v3)
  {
    sub_29B29307C(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::TsKnot::TsKnot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 8) = v4;
  v5 = (*(*v4.n128_u64[0] + 32))(v4.n128_u64[0], v4);
  v6 = pxrInternal__aapl__pxrReserved__::Ts_KnotData::Create(v5);
  *a2 = v6;
  pxrInternal__aapl__pxrReserved__::Ts_KnotDataProxy::Create(v6, v5, &v11);
  v7 = v11;
  v11 = 0;
  v8 = *(a2 + 8);
  *(a2 + 8) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
    v9 = v11;
    v11 = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  return a1;
}

void sub_29A1B53BC(_Unwind_Exception *a1)
{
  sub_29A184A10((v1 + 16), 0);
  v3 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot(pxrInternal__aapl__pxrReserved__::TsKnot *this)
{
  v2 = *(this + 1);
  if (v2 && *this)
  {
    (*(*v2 + 24))(v2);
  }

  sub_29A184A10(this + 2, 0);
  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TsKnot::operator=(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 8) + 24))(*(a1 + 8));
  v4 = (*(**(a2 + 8) + 16))(*(a2 + 8));
  *a1 = v4;
  v5 = (*(**(a2 + 8) + 32))(*(a2 + 8));
  pxrInternal__aapl__pxrReserved__::Ts_KnotDataProxy::Create(v4, v5, &v10);
  v6 = v10;
  v10 = 0;
  v7 = *(a1 + 8);
  *(a1 + 8) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
    v8 = v10;
    v10 = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  pxrInternal__aapl__pxrReserved__::VtDictionary::operator=((a1 + 16), (a2 + 16));
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TsKnot::operator=(uint64_t a1, __int128 *a2)
{
  (*(**(a1 + 8) + 24))(*(a1 + 8));
  v4 = *a2;
  *(a2 + 1) = 0;
  v5 = *(a1 + 8);
  *a1 = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a2 + 2);
  *(a2 + 2) = 0;
  sub_29A184A10((a1 + 16), v6);
  v7 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  v8 = pxrInternal__aapl__pxrReserved__::Ts_KnotData::Create(v7);
  *a2 = v8;
  pxrInternal__aapl__pxrReserved__::Ts_KnotDataProxy::Create(v8, v7, &v13);
  v9 = v13;
  v13 = 0;
  v10 = *(a2 + 1);
  *(a2 + 1) = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
    v11 = v13;
    v13 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TsKnot::operator==(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a2 + 8) + 32))(*(a2 + 8));
  if (v4 != (*(**(a1 + 8) + 32))(*(a1 + 8)) || !(*(**(a1 + 8) + 40))(*(a1 + 8), *a2))
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::operator==((a1 + 16), (a2 + 16), v5);
}

BOOL pxrInternal__aapl__pxrReserved__::TsKnot::SetTime(double **this, double a2)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v4[0] = "ts/knot.cpp";
    v4[1] = "SetTime";
    v4[2] = 125;
    v4[3] = "BOOL pxrInternal__aapl__pxrReserved__::TsKnot::SetTime(const TsTime)";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Knot time must be finite.");
  }

  else
  {
    **this = a2;
  }

  return (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
}

BOOL pxrInternal__aapl__pxrReserved__::TsKnot::SetValue(uint64_t a1, void *a2)
{
  v8[2] = *MEMORY[0x29EDCA608];
  sub_29A186EF4(v8, a2);
  v4 = pxrInternal__aapl__pxrReserved__::TsKnot::_CheckInParamVt(a1, v8);
  sub_29A186B14(v8);
  if (v4)
  {
    v5 = *(a1 + 8);
    sub_29A186EF4(v7, a2);
    (*(*v5 + 48))(v5, v7);
    sub_29A186B14(v7);
  }

  return v4;
}

void sub_29A1B59F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::TsKnot::_CheckInParamVt(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v24 = *MEMORY[0x29EDCA608];
  Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType(a2, a2);
  if (Type == (*(**(a1 + 8) + 32))(*(a1 + 8)))
  {
    v6 = pxrInternal__aapl__pxrReserved__::VtValue::GetType(a2, v5);
    if (pxrInternal__aapl__pxrReserved__::Ts_GetType<double>() == v6)
    {
      v7 = sub_29A186EF4(&v22, a2);
      if ((v23 & 4) != 0)
      {
        v7 = (*((v23 & 0xFFFFFFFFFFFFFFF8) + 168))(v7);
      }

      v8 = (*v7 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      if ((*v7 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        v17 = "ts/knot.cpp";
        v18 = "operator()";
        v19 = 410;
        v20 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ValueChecker<double>::operator()(const VtValue, BOOL *const) [T = double]";
        v21 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 1, "Cannot set undefined value");
      }

LABEL_25:
      sub_29A186B14(&v22);
      return v8;
    }

    if (pxrInternal__aapl__pxrReserved__::Ts_GetType<float>() == v6)
    {
      v13 = sub_29A186EF4(&v22, a2);
      if ((v23 & 4) != 0)
      {
        v13 = (*((v23 & 0xFFFFFFFFFFFFFFF8) + 168))(v13);
      }

      v8 = (*v13 & 0x7FFFFFFFu) < 0x7F800000;
      if ((*v13 & 0x7FFFFFFFu) >= 0x7F800000)
      {
        v17 = "ts/knot.cpp";
        v18 = "operator()";
        v19 = 410;
        v20 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ValueChecker<float>::operator()(const VtValue, BOOL *const) [T = float]";
        v21 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 1, "Cannot set undefined value");
      }

      goto LABEL_25;
    }

    if (pxrInternal__aapl__pxrReserved__::Ts_GetType<pxrInternal__aapl__pxrReserved__::pxr_half::half>() == v6)
    {
      v14 = sub_29A186EF4(&v22, a2);
      if ((v23 & 4) != 0)
      {
        v14 = (*((v23 & 0xFFFFFFFFFFFFFFF8) + 168))(v14);
      }

      v8 = pxrInternal__aapl__pxrReserved__::Ts_IsFinite<pxrInternal__aapl__pxrReserved__::pxr_half::half>(*v14);
      if (!v8)
      {
        v17 = "ts/knot.cpp";
        v18 = "operator()";
        v19 = 410;
        v20 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ValueChecker<pxrInternal__aapl__pxrReserved__::pxr_half::half>::operator()(const VtValue, BOOL *const) [T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
        v21 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 1, "Cannot set undefined value");
      }

      goto LABEL_25;
    }

    v17 = "ts/valueTypeDispatch.h";
    v18 = "TsDispatchToValueTypeTemplate";
    v19 = 64;
    v20 = "void pxrInternal__aapl__pxrReserved__::TsDispatchToValueTypeTemplate(TfType, Args &&...) [Cls = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ValueChecker, Args = <const pxrInternal__aapl__pxrReserved__::VtValue &, BOOL *>]";
    v21 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 1, "Unsupported spline value type");
  }

  else
  {
    v17 = "ts/knot.cpp";
    v18 = "_CheckInParamVt";
    v19 = 424;
    v20 = "BOOL pxrInternal__aapl__pxrReserved__::TsKnot::_CheckInParamVt(const VtValue) const";
    v21 = 0;
    v22 = pxrInternal__aapl__pxrReserved__::VtValue::GetType(a2, v5);
    TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v22);
    if (*(TypeName + 23) >= 0)
    {
      v10 = TypeName;
    }

    else
    {
      v10 = *TypeName;
    }

    v16 = (*(**(a1 + 8) + 32))(*(a1 + 8));
    v11 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v16);
    if (*(v11 + 23) >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = *v11;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 1, "Cannot set '%s' VtValue into knot of type '%s'", v10, v12);
  }

  return 0;
}

BOOL pxrInternal__aapl__pxrReserved__::TsKnot::GetValue(pxrInternal__aapl__pxrReserved__::TsKnot *this, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  if (a2)
  {
    (*(**(this + 1) + 56))(*(this + 1), a2);
  }

  else
  {
    v4[0] = "ts/knot.cpp";
    v4[1] = "_CheckOutParamVt";
    v4[2] = 443;
    v4[3] = "BOOL pxrInternal__aapl__pxrReserved__::TsKnot::_CheckOutParamVt(VtValue *const) const";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Null pointer");
  }

  return a2 != 0;
}

BOOL pxrInternal__aapl__pxrReserved__::TsKnot::_CheckOutParamVt(pxrInternal__aapl__pxrReserved__::TsKnot *this, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  if (!a2)
  {
    v4[0] = "ts/knot.cpp";
    v4[1] = "_CheckOutParamVt";
    v4[2] = 443;
    v4[3] = "BOOL pxrInternal__aapl__pxrReserved__::TsKnot::_CheckOutParamVt(VtValue *const) const";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Null pointer");
  }

  return a2 != 0;
}

BOOL pxrInternal__aapl__pxrReserved__::TsKnot::SetPreValue(void *a1, void *a2)
{
  v8[2] = *MEMORY[0x29EDCA608];
  sub_29A186EF4(v8, a2);
  v4 = pxrInternal__aapl__pxrReserved__::TsKnot::_CheckInParamVt(a1, v8);
  sub_29A186B14(v8);
  if (v4)
  {
    *(*a1 + 24) |= 0x20u;
    v5 = a1[1];
    sub_29A186EF4(v7, a2);
    (*(*v5 + 64))(v5, v7);
    sub_29A186B14(v7);
  }

  return v4;
}

void sub_29A1B5F6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::TsKnot::GetPreValue(pxrInternal__aapl__pxrReserved__::TsKnot *this, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  if (a2)
  {
    v3 = **(this + 1);
    if ((*(*this + 24) & 0x20) != 0)
    {
      (*(v3 + 72))();
    }

    else
    {
      (*(v3 + 56))();
    }
  }

  else
  {
    v5[0] = "ts/knot.cpp";
    v5[1] = "_CheckOutParamVt";
    v5[2] = 443;
    v5[3] = "BOOL pxrInternal__aapl__pxrReserved__::TsKnot::_CheckOutParamVt(VtValue *const) const";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "Null pointer");
  }

  return a2 != 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::TsKnot::SetPreTanWidth(pxrInternal__aapl__pxrReserved__::TsKnot *this, double a2)
{
  result = pxrInternal__aapl__pxrReserved__::TsKnot::_CheckSetWidth(this, a2);
  if (result)
  {
    *(*this + 8) = a2;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TsKnot::_CheckSetWidth(pxrInternal__aapl__pxrReserved__::TsKnot *this, double a2)
{
  if ((*(*this + 24) & 0x18) == 8)
  {
    v3 = "ts/knot.cpp";
    v4 = "_CheckSetWidth";
    v5 = 380;
    v6 = "BOOL pxrInternal__aapl__pxrReserved__::TsKnot::_CheckSetWidth(const TsTime) const";
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v3, 1, "Cannot set widths for Hermite knots", a2);
  }

  else if (a2 >= 0.0)
  {
    if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      return 1;
    }

    v3 = "ts/knot.cpp";
    v4 = "_CheckSetWidth";
    v5 = 392;
    v6 = "BOOL pxrInternal__aapl__pxrReserved__::TsKnot::_CheckSetWidth(const TsTime) const";
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v3, 1, "Tangent width values must be finite", a2);
  }

  else
  {
    v3 = "ts/knot.cpp";
    v4 = "_CheckSetWidth";
    v5 = 386;
    v6 = "BOOL pxrInternal__aapl__pxrReserved__::TsKnot::_CheckSetWidth(const TsTime) const";
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v3, 1, "Cannot set negative tangent width", a2);
  }

  return 0;
}

double pxrInternal__aapl__pxrReserved__::TsKnot::GetPreTanWidth(pxrInternal__aapl__pxrReserved__::TsKnot *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::TsKnot::_CheckGetWidth(this);
  result = 0.0;
  if (v2)
  {
    return *(*this + 8);
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::TsKnot::_CheckGetWidth(pxrInternal__aapl__pxrReserved__::TsKnot *this)
{
  v1 = *(*this + 24) & 0x18;
  if (v1 == 8)
  {
    v3[0] = "ts/knot.cpp";
    v3[1] = "_CheckGetWidth";
    v3[2] = 369;
    v3[3] = "BOOL pxrInternal__aapl__pxrReserved__::TsKnot::_CheckGetWidth() const";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Cannot read widths for Hermite knots");
  }

  return v1 != 8;
}

BOOL pxrInternal__aapl__pxrReserved__::TsKnot::SetPreTanSlope(uint64_t a1, void *a2)
{
  v8[2] = *MEMORY[0x29EDCA608];
  sub_29A186EF4(v8, a2);
  v4 = pxrInternal__aapl__pxrReserved__::TsKnot::_CheckInParamVt(a1, v8);
  sub_29A186B14(v8);
  if (v4)
  {
    v5 = *(a1 + 8);
    sub_29A186EF4(v7, a2);
    (*(*v5 + 80))(v5, v7);
    sub_29A186B14(v7);
  }

  return v4;
}

void sub_29A1B6344(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::TsKnot::GetPreTanSlope(pxrInternal__aapl__pxrReserved__::TsKnot *this, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  if (a2)
  {
    (*(**(this + 1) + 88))(*(this + 1), a2);
  }

  else
  {
    v4[0] = "ts/knot.cpp";
    v4[1] = "_CheckOutParamVt";
    v4[2] = 443;
    v4[3] = "BOOL pxrInternal__aapl__pxrReserved__::TsKnot::_CheckOutParamVt(VtValue *const) const";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Null pointer");
  }

  return a2 != 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::TsKnot::SetPostTanWidth(pxrInternal__aapl__pxrReserved__::TsKnot *this, double a2)
{
  result = pxrInternal__aapl__pxrReserved__::TsKnot::_CheckSetWidth(this, a2);
  if (result)
  {
    *(*this + 16) = a2;
  }

  return result;
}

double pxrInternal__aapl__pxrReserved__::TsKnot::GetPostTanWidth(pxrInternal__aapl__pxrReserved__::TsKnot *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::TsKnot::_CheckGetWidth(this);
  result = 0.0;
  if (v2)
  {
    return *(*this + 16);
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::TsKnot::SetPostTanSlope(uint64_t a1, void *a2)
{
  v8[2] = *MEMORY[0x29EDCA608];
  sub_29A186EF4(v8, a2);
  v4 = pxrInternal__aapl__pxrReserved__::TsKnot::_CheckInParamVt(a1, v8);
  sub_29A186B14(v8);
  if (v4)
  {
    v5 = *(a1 + 8);
    sub_29A186EF4(v7, a2);
    (*(*v5 + 96))(v5, v7);
    sub_29A186B14(v7);
  }

  return v4;
}

void sub_29A1B6548(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::TsKnot::GetPostTanSlope(pxrInternal__aapl__pxrReserved__::TsKnot *this, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  if (a2)
  {
    (*(**(this + 1) + 104))(*(this + 1), a2);
  }

  else
  {
    v4[0] = "ts/knot.cpp";
    v4[1] = "_CheckOutParamVt";
    v4[2] = 443;
    v4[3] = "BOOL pxrInternal__aapl__pxrReserved__::TsKnot::_CheckOutParamVt(VtValue *const) const";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Null pointer");
  }

  return a2 != 0;
}

void *pxrInternal__aapl__pxrReserved__::TsKnot::GetCustomDataByKey@<X0>(uint64_t a1@<X0>, std::string *a2@<X1>, void *a3@<X8>)
{
  ValueAtPath = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath((a1 + 16), a2, ":");

  return sub_29A186EF4(a3, ValueAtPath);
}

void *pxrInternal__aapl__pxrReserved__::operator<<(void *a1, double **a2)
{
  v70 = *MEMORY[0x29EDCA608];
  v4 = sub_29A00911C(a1, "Knot:", 5);
  std::ios_base::getloc((v4 + *(*v4 - 24)));
  v5 = std::locale::use_facet(&v69, MEMORY[0x29EDC93D0]);
  (v5->__vftable[2].~facet_0)(v5, 10);
  std::locale::~locale(&v69);
  std::ostream::put();
  std::ostream::flush();
  v6 = sub_29A00911C(v4, "  value type ", 13);
  v65 = (*(*a2[1] + 32))(a2[1]);
  TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v65);
  v8 = *(TypeName + 23);
  if (v8 >= 0)
  {
    v9 = TypeName;
  }

  else
  {
    v9 = *TypeName;
  }

  if (v8 >= 0)
  {
    v10 = *(TypeName + 23);
  }

  else
  {
    v10 = *(TypeName + 8);
  }

  v11 = sub_29A00911C(v6, v9, v10);
  std::ios_base::getloc((v11 + *(*v11 - 24)));
  v12 = std::locale::use_facet(&v69, MEMORY[0x29EDC93D0]);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(&v69);
  std::ostream::put();
  std::ostream::flush();
  v13 = sub_29A00911C(v11, "  curve type ", 13);
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(qword_2A2044FC8, (*(*a2 + 24) >> 3) & 3, &__str);
  std::string::basic_string(&v69, &__str, 0xBuLL, 0xFFFFFFFFFFFFFFFFLL, &v61);
  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v69;
  }

  else
  {
    v14 = v69.__r_.__value_.__r.__words[0];
  }

  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v69.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v69.__r_.__value_.__l.__size_;
  }

  v16 = sub_29A00911C(v13, v14, size);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v61, MEMORY[0x29EDC93D0]);
  (v17->__vftable[2].~facet_0)(v17, 10);
  std::locale::~locale(&v61);
  std::ostream::put();
  std::ostream::flush();
  v18 = sub_29A00911C(v16, "  time ", 7);
  pxrInternal__aapl__pxrReserved__::TfStringify(**a2, &v61);
  if ((v63 & 0x80u) == 0)
  {
    locale = &v61;
  }

  else
  {
    locale = v61.__locale_;
  }

  if ((v63 & 0x80u) == 0)
  {
    v20 = v63;
  }

  else
  {
    v20 = v62;
  }

  v21 = sub_29A00911C(v18, locale, v20);
  std::ios_base::getloc((v21 + *(*v21 - 24)));
  v22 = std::locale::use_facet(&v60, MEMORY[0x29EDC93D0]);
  (v22->__vftable[2].~facet_0)(v22, 10);
  std::locale::~locale(&v60);
  std::ostream::put();
  std::ostream::flush();
  v23 = sub_29A00911C(v21, "  value ", 8);
  v68 = 0;
  (*(*a2[1] + 56))(a2[1], v67);
  v24 = pxrInternal__aapl__pxrReserved__::operator<<(v23, v67);
  std::ios_base::getloc((v24 + *(*v24 - 24)));
  v25 = std::locale::use_facet(&v60, MEMORY[0x29EDC93D0]);
  (v25->__vftable[2].~facet_0)(v25, 10);
  std::locale::~locale(&v60);
  std::ostream::put();
  std::ostream::flush();
  v26 = sub_29A00911C(v24, "  next interp ", 14);
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(qword_2A2044FD8, (*a2)[3] & 7, &__p);
  std::string::basic_string(&v60, &__p, 8uLL, 0xFFFFFFFFFFFFFFFFLL, &v66);
  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &v60;
  }

  else
  {
    v27 = v60.__r_.__value_.__r.__words[0];
  }

  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v28 = v60.__r_.__value_.__l.__size_;
  }

  v29 = sub_29A00911C(v26, v27, v28);
  std::ios_base::getloc((v29 + *(*v29 - 24)));
  v30 = std::locale::use_facet(&v66, MEMORY[0x29EDC93D0]);
  (v30->__vftable[2].~facet_0)(v30, 10);
  std::locale::~locale(&v66);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A186B14(v67);
  if (v63 < 0)
  {
    operator delete(v61.__locale_);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v31 = *(*a2 + 24);
  if ((v31 & 0x20) != 0)
  {
    v32 = sub_29A00911C(a1, "  preValue ", 11);
    v69.__r_.__value_.__l.__size_ = 0;
    pxrInternal__aapl__pxrReserved__::TsKnot::GetPreValue(a2, &v69);
    v33 = pxrInternal__aapl__pxrReserved__::operator<<(v32, &v69);
    std::ios_base::getloc((v33 + *(*v33 - 24)));
    v34 = std::locale::use_facet(&__str, MEMORY[0x29EDC93D0]);
    (v34->__vftable[2].~facet_0)(v34, 10);
    std::locale::~locale(&__str);
    std::ostream::put();
    std::ostream::flush();
    sub_29A186B14(&v69);
    v31 = *(*a2 + 24);
  }

  if ((v31 & 0x18) == 0)
  {
    v35 = sub_29A00911C(a1, "  pre-tan width ", 16);
    v36 = pxrInternal__aapl__pxrReserved__::TsKnot::_CheckGetWidth(a2);
    v37 = 0.0;
    if (v36)
    {
      v37 = (*a2)[1];
    }

    pxrInternal__aapl__pxrReserved__::TfStringify(v37, &v69);
    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = &v69;
    }

    else
    {
      v38 = v69.__r_.__value_.__r.__words[0];
    }

    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v39 = v69.__r_.__value_.__l.__size_;
    }

    v40 = sub_29A00911C(v35, v38, v39);
    std::ios_base::getloc((v40 + *(*v40 - 24)));
    v41 = std::locale::use_facet(&__str, MEMORY[0x29EDC93D0]);
    (v41->__vftable[2].~facet_0)(v41, 10);
    std::locale::~locale(&__str);
    std::ostream::put();
    std::ostream::flush();
    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }
  }

  v42 = sub_29A00911C(a1, "  pre-tan slope ", 16);
  v69.__r_.__value_.__l.__size_ = 0;
  (*(*a2[1] + 88))(a2[1], &v69);
  v43 = pxrInternal__aapl__pxrReserved__::operator<<(v42, &v69);
  std::ios_base::getloc((v43 + *(*v43 - 24)));
  v44 = std::locale::use_facet(&__str, MEMORY[0x29EDC93D0]);
  (v44->__vftable[2].~facet_0)(v44, 10);
  std::locale::~locale(&__str);
  std::ostream::put();
  std::ostream::flush();
  sub_29A186B14(&v69);
  if (((*a2)[3] & 0x18) == 0)
  {
    v45 = sub_29A00911C(a1, "  post-tan width ", 17);
    v46 = pxrInternal__aapl__pxrReserved__::TsKnot::_CheckGetWidth(a2);
    v47 = 0.0;
    if (v46)
    {
      v47 = (*a2)[2];
    }

    pxrInternal__aapl__pxrReserved__::TfStringify(v47, &v69);
    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = &v69;
    }

    else
    {
      v48 = v69.__r_.__value_.__r.__words[0];
    }

    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v49 = v69.__r_.__value_.__l.__size_;
    }

    v50 = sub_29A00911C(v45, v48, v49);
    std::ios_base::getloc((v50 + *(*v50 - 24)));
    v51 = std::locale::use_facet(&__str, MEMORY[0x29EDC93D0]);
    (v51->__vftable[2].~facet_0)(v51, 10);
    std::locale::~locale(&__str);
    std::ostream::put();
    std::ostream::flush();
    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }
  }

  v52 = sub_29A00911C(a1, "  post-tan slope ", 17);
  v69.__r_.__value_.__l.__size_ = 0;
  (*(*a2[1] + 104))(a2[1], &v69);
  v53 = pxrInternal__aapl__pxrReserved__::operator<<(v52, &v69);
  std::ios_base::getloc((v53 + *(*v53 - 24)));
  v54 = std::locale::use_facet(&__str, MEMORY[0x29EDC93D0]);
  (v54->__vftable[2].~facet_0)(v54, 10);
  std::locale::~locale(&__str);
  std::ostream::put();
  std::ostream::flush();
  sub_29A186B14(&v69);
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(&__str, (a2 + 2));
  if (!pxrInternal__aapl__pxrReserved__::VtDictionary::empty(&__str))
  {
    v55 = sub_29A00911C(a1, "  custom data ", 14);
    v56 = pxrInternal__aapl__pxrReserved__::operator<<(v55, &__str);
    std::ios_base::getloc((v56 + *(*v56 - 24)));
    v57 = std::locale::use_facet(&v69, MEMORY[0x29EDC93D0]);
    (v57->__vftable[2].~facet_0)(v57, 10);
    std::locale::~locale(&v69);
    std::ostream::put();
    std::ostream::flush();
  }

  sub_29A184A10(&__str, 0);
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::Ts_KnotData::Ts_KnotData(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = *(this + 24) & 0xC0 | 1;
  return this;
}

{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = *(this + 24) & 0xC0 | 1;
  return this;
}

void *pxrInternal__aapl__pxrReserved__::Ts_KnotData::Create(uint64_t a1)
{
  if (pxrInternal__aapl__pxrReserved__::Ts_GetType<double>() == a1)
  {
    result = operator new(0x40uLL);
    result[1] = 0;
    result[2] = 0;
    *result = 0;
    *(result + 24) = 1;
    *(result + 2) = 0u;
    *(result + 3) = 0u;
  }

  else if (pxrInternal__aapl__pxrReserved__::Ts_GetType<float>() == a1)
  {
    result = operator new(0x30uLL);
    result[1] = 0;
    result[2] = 0;
    *result = 0;
    *(result + 24) = 1;
    *(result + 36) = 0;
    *(result + 28) = 0;
  }

  else if (pxrInternal__aapl__pxrReserved__::Ts_GetType<pxrInternal__aapl__pxrReserved__::pxr_half::half>() == a1)
  {
    result = operator new(0x28uLL);
    result[1] = 0;
    result[2] = 0;
    *result = 0;
    *(result + 24) = 1;
    *(result + 26) = 0;
  }

  else
  {
    v3[0] = "ts/valueTypeDispatch.h";
    v3[1] = "TsDispatchToValueTypeTemplate";
    v3[2] = 64;
    v3[3] = "void pxrInternal__aapl__pxrReserved__::TsDispatchToValueTypeTemplate(TfType, Args &&...) [Cls = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_DataCreator, Args = <pxrInternal__aapl__pxrReserved__::Ts_KnotData **>]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Unsupported spline value type");
    return 0;
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::Ts_KnotData::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  if (((*(a2 + 24) ^ *(a1 + 24)) & 0x27) != 0)
  {
    return 0;
  }

  return ((*(a2 + 24) ^ *(a1 + 24)) & 0x18) == 0;
}

void *pxrInternal__aapl__pxrReserved__::Ts_KnotDataProxy::Create@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::Ts_GetType<double>() == a2)
  {
    result = operator new(0x10uLL);
    v7 = &unk_2A2045088;
  }

  else if (pxrInternal__aapl__pxrReserved__::Ts_GetType<float>() == a2)
  {
    result = operator new(0x10uLL);
    v7 = &unk_2A2045120;
  }

  else
  {
    if (pxrInternal__aapl__pxrReserved__::Ts_GetType<pxrInternal__aapl__pxrReserved__::pxr_half::half>() != a2)
    {
      v8[0] = "ts/valueTypeDispatch.h";
      v8[1] = "TsDispatchToValueTypeTemplate";
      v8[2] = 64;
      v8[3] = "void pxrInternal__aapl__pxrReserved__::TsDispatchToValueTypeTemplate(TfType, Args &&...) [Cls = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ProxyCreator, Args = <pxrInternal__aapl__pxrReserved__::Ts_KnotData *&, pxrInternal__aapl__pxrReserved__::Ts_KnotDataProxy **>]";
      v9 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v8, 1, "Unsupported spline value type");
      result = 0;
      goto LABEL_8;
    }

    result = operator new(0x10uLL);
    v7 = &unk_2A20451B8;
  }

  *result = v7;
  result[1] = a1;
LABEL_8:
  *a3 = result;
  return result;
}

__n128 sub_29A1B7598(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  v3 = *(a1 + 8);
  v4 = *(v3 + 16);
  *v2 = *v3;
  v2[1] = v4;
  result = *(v3 + 32);
  v6 = *(v3 + 48);
  v2[2] = result;
  v2[3] = v6;
  return result;
}

void sub_29A1B75D4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    operator delete(v1);
  }
}

double sub_29A1B75F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if ((v3 & 4) != 0)
  {
    a2 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
  }

  result = *a2;
  *(*(a1 + 8) + 32) = *a2;
  return result;
}

uint64_t sub_29A1B763C(uint64_t a1, void *a2)
{
  v4[2] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  v4[1] = &unk_2A2044D1B;
  v4[0] = *(v2 + 32);
  sub_29A18606C(a2, v4);
  return sub_29A186B14(v4);
}

double sub_29A1B76B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if ((v3 & 4) != 0)
  {
    a2 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
  }

  result = *a2;
  *(*(a1 + 8) + 40) = *a2;
  return result;
}

uint64_t sub_29A1B7704(uint64_t a1, void *a2)
{
  v4[2] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  v4[1] = &unk_2A2044D1B;
  v4[0] = *(v2 + 40);
  sub_29A18606C(a2, v4);
  return sub_29A186B14(v4);
}

double sub_29A1B7780(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if ((v3 & 4) != 0)
  {
    a2 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
  }

  result = *a2;
  *(*(a1 + 8) + 48) = *a2;
  return result;
}

uint64_t sub_29A1B77CC(uint64_t a1, void *a2)
{
  v4[2] = *MEMORY[0x29EDCA608];
  v2 = *(*(a1 + 8) + 48);
  v4[1] = &unk_2A2044D1B;
  v4[0] = v2;
  sub_29A18606C(a2, v4);
  return sub_29A186B14(v4);
}

double sub_29A1B7848(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if ((v3 & 4) != 0)
  {
    a2 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
  }

  result = *a2;
  *(*(a1 + 8) + 56) = *a2;
  return result;
}

uint64_t sub_29A1B7894(uint64_t a1, void *a2)
{
  v4[2] = *MEMORY[0x29EDCA608];
  v2 = *(*(a1 + 8) + 56);
  v4[1] = &unk_2A2044D1B;
  v4[0] = v2;
  sub_29A18606C(a2, v4);
  return sub_29A186B14(v4);
}

__n128 sub_29A1B79A8(uint64_t a1)
{
  v2 = operator new(0x30uLL);
  v3 = *(a1 + 8);
  v4 = *(v3 + 16);
  *v2 = *v3;
  v2[1] = v4;
  result = *(v3 + 32);
  v2[2] = result;
  return result;
}

float sub_29A1B79F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if ((v3 & 4) != 0)
  {
    a2 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
  }

  result = *a2;
  *(*(a1 + 8) + 28) = *a2;
  return result;
}

uint64_t sub_29A1B7A3C(uint64_t a1, void *a2)
{
  v4[2] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  v4[1] = &unk_2A2044C63;
  LODWORD(v4[0]) = *(v2 + 28);
  sub_29A18606C(a2, v4);
  return sub_29A186B14(v4);
}

float sub_29A1B7AB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if ((v3 & 4) != 0)
  {
    a2 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
  }

  result = *a2;
  *(*(a1 + 8) + 32) = *a2;
  return result;
}

uint64_t sub_29A1B7B04(uint64_t a1, void *a2)
{
  v4[2] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  v4[1] = &unk_2A2044C63;
  LODWORD(v4[0]) = *(v2 + 32);
  sub_29A18606C(a2, v4);
  return sub_29A186B14(v4);
}

float sub_29A1B7B80(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if ((v3 & 4) != 0)
  {
    a2 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
  }

  result = *a2;
  *(*(a1 + 8) + 36) = *a2;
  return result;
}

uint64_t sub_29A1B7BCC(uint64_t a1, void *a2)
{
  v4[2] = *MEMORY[0x29EDCA608];
  v2 = *(*(a1 + 8) + 36);
  v4[1] = &unk_2A2044C63;
  LODWORD(v4[0]) = v2;
  sub_29A18606C(a2, v4);
  return sub_29A186B14(v4);
}

float sub_29A1B7C48(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if ((v3 & 4) != 0)
  {
    a2 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
  }

  result = *a2;
  *(*(a1 + 8) + 40) = *a2;
  return result;
}

uint64_t sub_29A1B7C94(uint64_t a1, void *a2)
{
  v4[2] = *MEMORY[0x29EDCA608];
  v2 = *(*(a1 + 8) + 40);
  v4[1] = &unk_2A2044C63;
  LODWORD(v4[0]) = v2;
  sub_29A18606C(a2, v4);
  return sub_29A186B14(v4);
}

__n128 sub_29A1B7DA8(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  v3 = *(a1 + 8);
  result = *v3;
  v5 = *(v3 + 16);
  *v2 = *v3;
  v2[1] = v5;
  *(v2 + 4) = *(v3 + 32);
  return result;
}

uint64_t sub_29A1B7DF0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    a2 = result;
  }

  *(*(v2 + 8) + 26) = *a2;
  return result;
}

uint64_t sub_29A1B7E3C(uint64_t a1, void *a2)
{
  v4[2] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  v4[1] = &off_2A2044BA8 + 3;
  LOWORD(v4[0]) = *(v2 + 26);
  sub_29A18606C(a2, v4);
  return sub_29A186B14(v4);
}

uint64_t sub_29A1B7EB8(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    a2 = result;
  }

  *(*(v2 + 8) + 28) = *a2;
  return result;
}

uint64_t sub_29A1B7F04(uint64_t a1, void *a2)
{
  v4[2] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  v4[1] = &off_2A2044BA8 + 3;
  LOWORD(v4[0]) = *(v2 + 28);
  sub_29A18606C(a2, v4);
  return sub_29A186B14(v4);
}

uint64_t sub_29A1B7F80(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    a2 = result;
  }

  *(*(v2 + 8) + 30) = *a2;
  return result;
}

uint64_t sub_29A1B7FCC(uint64_t a1, void *a2)
{
  v4[2] = *MEMORY[0x29EDCA608];
  v2 = *(*(a1 + 8) + 30);
  v4[1] = &off_2A2044BA8 + 3;
  LOWORD(v4[0]) = v2;
  sub_29A18606C(a2, v4);
  return sub_29A186B14(v4);
}

uint64_t sub_29A1B8048(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    a2 = result;
  }

  *(*(v2 + 8) + 32) = *a2;
  return result;
}

uint64_t sub_29A1B8094(uint64_t a1, void *a2)
{
  v4[2] = *MEMORY[0x29EDCA608];
  v2 = *(*(a1 + 8) + 32);
  v4[1] = &off_2A2044BA8 + 3;
  LOWORD(v4[0]) = v2;
  sub_29A18606C(a2, v4);
  return sub_29A186B14(v4);
}

void *pxrInternal__aapl__pxrReserved__::TsKnotMap::TsKnotMap(void *this)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

pxrInternal__aapl__pxrReserved__::TsKnotMap *pxrInternal__aapl__pxrReserved__::TsKnotMap::TsKnotMap(pxrInternal__aapl__pxrReserved__::TsKnotMap *a1, const pxrInternal__aapl__pxrReserved__::TsKnot *a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  if (a3)
  {
    v5 = 24 * a3;
    do
    {
      pxrInternal__aapl__pxrReserved__::TsKnotMap::insert(a1, a2);
      a2 = (a2 + 24);
      v5 -= 24;
    }

    while (v5);
  }

  return a1;
}

void sub_29A1B8244(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1B8EE4(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::TsKnot *pxrInternal__aapl__pxrReserved__::TsKnotMap::insert(pxrInternal__aapl__pxrReserved__::TsKnotMap *this, const pxrInternal__aapl__pxrReserved__::TsKnot *a2)
{
  Time = pxrInternal__aapl__pxrReserved__::TsKnot::GetTime(a2);
  v5 = pxrInternal__aapl__pxrReserved__::TsKnotMap::lower_bound(this, Time);
  v6 = v5;
  if (*(this + 1) == v5)
  {
    return sub_29A1B8828(this, v6, a2);
  }

  v7 = pxrInternal__aapl__pxrReserved__::TsKnot::GetTime(v5);
  if (v7 != pxrInternal__aapl__pxrReserved__::TsKnot::GetTime(a2))
  {
    return sub_29A1B8828(this, v6, a2);
  }

  return v6;
}

pxrInternal__aapl__pxrReserved__::TsKnotMap *pxrInternal__aapl__pxrReserved__::TsKnotMap::TsKnotMap(pxrInternal__aapl__pxrReserved__::TsKnotMap *this, const pxrInternal__aapl__pxrReserved__::Ts_SplineData *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v4 = (*(*a2 + 16))(a2);
  v6 = *(a2 + 10);
  v5 = *(a2 + 11);
  v7 = (v5 - v6) >> 3;
  pxrInternal__aapl__pxrReserved__::TsKnotMap::reserve(this, v7);
  v21 = 0;
  if (v5 != v6)
  {
    v8 = 0;
    v9 = 0;
    v10 = *(a2 + 16);
    if (v7 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v7;
    }

    do
    {
      if (v10)
      {
        v12 = *(a2 + 10);
        v20 = 0;
        v13 = sub_29A1B905C(a2 + 13, (v12 + v8));
        if (v13)
        {
          v14 = (v13 + 3);
        }

        else
        {
          v14 = &v20;
        }

        pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(v19, v14);
        pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(&v21, v19);
        sub_29A184A10(v19, 0);
        sub_29A184A10(&v20, 0);
      }

      v15 = (*(*a2 + 72))(a2, v9);
      pxrInternal__aapl__pxrReserved__::TsKnot::TsKnot(v19, v15, v4, &v21);
      v16 = *(this + 1);
      if (v16 >= *(this + 2))
      {
        v17 = sub_29A1B911C(this, v19);
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::TsKnot::TsKnot(*(this + 1), v19);
        v17 = v16 + 24;
        *(this + 1) = v16 + 24;
      }

      *(this + 1) = v17;
      pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot(v19);
      ++v9;
      v8 += 8;
    }

    while (v11 != v9);
  }

  sub_29A184A10(&v21, 0);
  return this;
}

void sub_29A1B849C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1B8EE4(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::TsKnot **pxrInternal__aapl__pxrReserved__::TsKnotMap::reserve(pxrInternal__aapl__pxrReserved__::TsKnot **this, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((this[2] - *this) >> 3) < a2)
  {
    if (a2 >= 0xAAAAAAAAAAAAAABLL)
    {
      sub_29A00C9A4();
    }

    v2 = this;
    v3 = this[1] - *this;
    v16 = this;
    v4 = sub_29A012C48(this, a2);
    v5 = (v4 + v3);
    v12 = v4;
    v13 = (v4 + v3);
    v7 = (v4 + 24 * v6);
    v14 = (v4 + v3);
    v15 = v7;
    v8 = v2[1];
    v9 = (v4 + v3 + *v2 - v8);
    sub_29A1B8F68(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    v2[1] = v5;
    v11 = v2[2];
    v2[2] = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29A1B900C(&v12);
  }

  return this;
}

void sub_29A1B85D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1B900C(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TsKnotMap::operator==(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 != a2[1] - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = pxrInternal__aapl__pxrReserved__::TsKnot::operator==(v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 24;
    v4 += 24;
  }

  while (v2 != v3);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TsKnotMap::begin(pxrInternal__aapl__pxrReserved__::TsKnotMap *this)
{
  return *this;
}

{
  return *this;
}

uint64_t pxrInternal__aapl__pxrReserved__::TsKnotMap::end(pxrInternal__aapl__pxrReserved__::TsKnotMap *this)
{
  return *(this + 1);
}

{
  return *(this + 1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TsKnotMap::rbegin(pxrInternal__aapl__pxrReserved__::TsKnotMap *this)
{
  return *(this + 1);
}

{
  return *(this + 1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TsKnotMap::rend(pxrInternal__aapl__pxrReserved__::TsKnotMap *this)
{
  return *this;
}

{
  return *this;
}

void pxrInternal__aapl__pxrReserved__::TsKnotMap::clear(pxrInternal__aapl__pxrReserved__::TsKnotMap *this)
{
  v2 = *(this + 1);
  v3 = *this;
  while (v2 != v3)
  {
    pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot((v2 - 24));
  }

  *(this + 1) = v3;
}

uint64_t *pxrInternal__aapl__pxrReserved__::TsKnotMap::swap(uint64_t *this, pxrInternal__aapl__pxrReserved__::TsKnotMap *a2)
{
  v2 = *this;
  *this = *a2;
  *a2 = v2;
  v3 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  return this;
}

char *pxrInternal__aapl__pxrReserved__::TsKnotMap::lower_bound(pxrInternal__aapl__pxrReserved__::TsKnotMap *this, double a2)
{
  v2 = *this;
  v3 = *(this + 1) - *this;
  if (v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3);
    do
    {
      v6 = &v2[24 * (v5 >> 1)];
      Time = pxrInternal__aapl__pxrReserved__::TsKnot::GetTime(v6);
      if (Time >= a2)
      {
        v5 >>= 1;
      }

      else
      {
        v5 += ~(v5 >> 1);
      }

      if (Time < a2)
      {
        v2 = v6 + 24;
      }
    }

    while (v5);
  }

  return v2;
}

{
  v2 = *this;
  v3 = *(this + 1) - *this;
  if (v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3);
    do
    {
      v6 = &v2[24 * (v5 >> 1)];
      Time = pxrInternal__aapl__pxrReserved__::TsKnot::GetTime(v6);
      if (Time >= a2)
      {
        v5 >>= 1;
      }

      else
      {
        v5 += ~(v5 >> 1);
      }

      if (Time < a2)
      {
        v2 = v6 + 24;
      }
    }

    while (v5);
  }

  return v2;
}

pxrInternal__aapl__pxrReserved__::TsKnot *sub_29A1B8828(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::TsKnot *a3)
{
  v4 = a2;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v7 >= v6)
  {
    v10 = *a1;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) + 1;
    if (v11 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v12 = a2 - v10;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v10) >> 3);
    v14 = 2 * v13;
    if (2 * v13 <= v11)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) + 1;
    }

    if (v13 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v14;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
    v23 = a1;
    if (v15)
    {
      v17 = sub_29A012C48(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v19 = v17;
    v20 = v17 + 24 * v16;
    v21 = v20;
    v22 = v17 + 24 * v15;
    sub_29A1B930C(&v19, a3);
    v4 = sub_29A1B94A4(a1, &v19, v4);
    sub_29A1B900C(&v19);
  }

  else if (a2 == v7)
  {
    pxrInternal__aapl__pxrReserved__::TsKnot::TsKnot(*(a1 + 8), a3);
    *(a1 + 8) = v7 + 24;
  }

  else
  {
    sub_29A1B924C(a1, a2, *(a1 + 8), a2 + 24);
    v8 = *(a1 + 8) <= a3 || v4 > a3;
    v9 = 24;
    if (v8)
    {
      v9 = 0;
    }

    pxrInternal__aapl__pxrReserved__::TsKnot::operator=(v4, a3 + v9);
  }

  return v4;
}

uint64_t pxrInternal__aapl__pxrReserved__::TsKnotMap::erase(pxrInternal__aapl__pxrReserved__::TsKnot **this, double a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::TsKnotMap::lower_bound(this, a2);
  if (this[1] == v4)
  {
    return 0;
  }

  v5 = v4;
  if (pxrInternal__aapl__pxrReserved__::TsKnot::GetTime(v4) != a2)
  {
    return 0;
  }

  v7 = this[1];
  if ((v5 + 24) != v7)
  {
    do
    {
      v8 = v5 + 24;
      pxrInternal__aapl__pxrReserved__::TsKnot::operator=(v5, (v5 + 24));
      v9 = (v5 + 48);
      v5 += 24;
    }

    while (v9 != v7);
    v7 = this[1];
    v5 = v8;
  }

  while (v7 != v5)
  {
    v7 = (v7 - 24);
    pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot(v7);
  }

  this[1] = v5;
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TsKnotMap::erase(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if ((a2 + 24) == v4)
  {
    v6 = a2;
  }

  else
  {
    v5 = a2;
    do
    {
      v6 = (v5 + 24);
      pxrInternal__aapl__pxrReserved__::TsKnot::operator=(v5, (v5 + 24));
      v7 = (v5 + 48);
      v5 += 24;
    }

    while (v7 != v4);
    v4 = *(a1 + 8);
  }

  while (v4 != v6)
  {
    v4 = (v4 - 24);
    pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot(v4);
  }

  *(a1 + 8) = v6;
  return a2;
}

uint64_t sub_29A1B8AEC(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        pxrInternal__aapl__pxrReserved__::TsKnot::operator=(v7, v4);
        v4 = (v4 + 24);
        v7 += 24;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v6 = (v6 - 24);
      pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot(v6);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

char *pxrInternal__aapl__pxrReserved__::TsKnotMap::find(pxrInternal__aapl__pxrReserved__::TsKnotMap *this, double a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::TsKnotMap::lower_bound(this, a2);
  if (*(this + 1) == v4)
  {
    return *(this + 1);
  }

  v5 = v4;
  if (pxrInternal__aapl__pxrReserved__::TsKnot::GetTime(v4) != a2)
  {
    return *(this + 1);
  }

  return v5;
}

{
  v4 = pxrInternal__aapl__pxrReserved__::TsKnotMap::lower_bound(this, a2);
  if (*(this + 1) == v4)
  {
    return *(this + 1);
  }

  v5 = v4;
  if (pxrInternal__aapl__pxrReserved__::TsKnot::GetTime(v4) != a2)
  {
    return *(this + 1);
  }

  return v5;
}

pxrInternal__aapl__pxrReserved__::TsKnot *pxrInternal__aapl__pxrReserved__::TsKnotMap::FindClosest(pxrInternal__aapl__pxrReserved__::TsKnot **this, double a2)
{
  return pxrInternal__aapl__pxrReserved__::TsKnotMap::FindClosest(this, a2);
}

{
  v3 = *this;
  if (*this != this[1])
  {
    v5 = pxrInternal__aapl__pxrReserved__::TsKnotMap::lower_bound(this, a2);
    v3 = v5;
    if (*this != v5)
    {
      if (this[1] == v5)
      {
        return (v5 - 24);
      }

      else if (pxrInternal__aapl__pxrReserved__::TsKnot::GetTime(v5) != a2)
      {
        v6 = a2 - pxrInternal__aapl__pxrReserved__::TsKnot::GetTime((v3 - 24));
        if (pxrInternal__aapl__pxrReserved__::TsKnot::GetTime(v3) - a2 > v6)
        {
          return (v3 - 24);
        }
      }
    }
  }

  return v3;
}

uint64_t pxrInternal__aapl__pxrReserved__::TsKnotMap::GetValueType(pxrInternal__aapl__pxrReserved__::TsKnot **this)
{
  v4 = *this;
  if (v4 == this[1])
  {
    v6[1] = v1;
    v6[2] = v2;
    pxrInternal__aapl__pxrReserved__::TfType::TfType(v6);
    return v6[0];
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::TsKnot::GetValueType(v4);
  }
}

void pxrInternal__aapl__pxrReserved__::TsKnotMap::GetTimeSpan(pxrInternal__aapl__pxrReserved__::TsKnot **this@<X0>, uint64_t a2@<X8>)
{
  v4 = *this;
  if (v4 == this[1])
  {
    v7 = 0;
    v8 = 0;
    Time = 0.0;
    v6 = 0.0;
  }

  else
  {
    Time = pxrInternal__aapl__pxrReserved__::TsKnot::GetTime(v4);
    v6 = pxrInternal__aapl__pxrReserved__::TsKnot::GetTime((this[1] - 24));
    v7 = fabs(Time) != INFINITY;
    v8 = fabs(v6) != INFINITY;
  }

  *a2 = Time;
  *(a2 + 8) = v7;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
}

BOOL pxrInternal__aapl__pxrReserved__::TsKnotMap::HasCurveSegments(pxrInternal__aapl__pxrReserved__::TsKnotMap *this)
{
  v2 = 0;
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 3);
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 3);
  }

  v5 = 1;
  do
  {
    v6 = v5;
    if (v4 == v5)
    {
      break;
    }

    NextInterpolation = pxrInternal__aapl__pxrReserved__::TsKnot::GetNextInterpolation((*this + v2));
    v5 = v6 + 1;
    v2 += 24;
  }

  while (NextInterpolation != 3);
  return v6 < v3;
}

void sub_29A1B8EE4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot((v4 - 24));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29A1B8F68(int a1, pxrInternal__aapl__pxrReserved__::TsKnot *a2, pxrInternal__aapl__pxrReserved__::TsKnot *a3, pxrInternal__aapl__pxrReserved__::TsKnot *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      pxrInternal__aapl__pxrReserved__::TsKnot::TsKnot(this, v8);
      v8 = (v8 + 24);
      this = (this + 24);
      v7 -= 24;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot(v6);
      v6 = (v6 + 24);
    }
  }
}

void sub_29A1B8FE8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 24);
    do
    {
      pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot(v4);
      v4 = (v5 - 24);
      v2 += 24;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1B900C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot((i - 24));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double *sub_29A1B905C(void *a1, double *a2)
{
  v2 = *a2;
  if (*a2 == 0.0)
  {
    v2 = 0.0;
  }

  v3 = a1[1];
  if (!*&v3)
  {
    return 0;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v2;
    if (*&v2 >= *&v3)
    {
      *&v5 = *&v2 % *&v3;
    }
  }

  else
  {
    *&v5 = (*&v3 - 1) & *&v2;
  }

  v6 = *(*a1 + 8 * *&v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = *(result + 1);
    if (*&v2 == v8)
    {
      if (result[2] == *a2)
      {
        return result;
      }
    }

    else
    {
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

      if (v8 != *&v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_29A1B911C(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A012C48(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = (v7 + 24 * v2);
  *(&v16 + 1) = v7 + 24 * v6;
  pxrInternal__aapl__pxrReserved__::TsKnot::TsKnot(v15, a2);
  *&v16 = v15 + 24;
  v8 = *(a1 + 8);
  v9 = (v15 + *a1 - v8);
  sub_29A1B8F68(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A1B900C(&v14);
  return v13;
}

void sub_29A1B9238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1B900C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A1B924C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = *(result + 8);
  v8 = a2 + v7 - a4;
  if (v8 >= a3)
  {
    v10 = *(result + 8);
  }

  else
  {
    v10 = *(result + 8);
    do
    {
      result = pxrInternal__aapl__pxrReserved__::TsKnot::TsKnot(v10, v8);
      v8 += 24;
      v10 += 24;
    }

    while (v8 < a3);
  }

  *(v6 + 8) = v10;
  if (v7 != a4)
  {
    v11 = v7 - 24;
    v12 = a4 - v7;
    v13 = (a2 + v7 - 24 - a4);
    do
    {
      result = pxrInternal__aapl__pxrReserved__::TsKnot::operator=(v11, v13);
      v11 -= 24;
      v13 = (v13 - 24);
      v12 += 24;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_29A1B930C(pxrInternal__aapl__pxrReserved__::TsKnot **a1, pxrInternal__aapl__pxrReserved__::TsKnot *a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0x5555555555555556 * ((v4 - *a1) >> 3);
      }

      v10 = v9 >> 2;
      v11 = a1[4];
      v25 = a1[4];
      v12 = sub_29A012C48(v11, v9);
      v13 = v12 + 24 * v10;
      v22 = v12;
      *&v23 = v13;
      v15 = v12 + 24 * v14;
      *(&v23 + 1) = v13;
      v24 = v15;
      v16 = *(a1 + 1);
      v17 = v16;
      v18 = *(&v16 + 1) - v16;
      if (*(&v16 + 1) == v16)
      {
        v19 = v13;
      }

      else
      {
        v19 = &v13[v18];
        do
        {
          pxrInternal__aapl__pxrReserved__::TsKnot::TsKnot(v13, v17);
          v13 += 24;
          v17 += 24;
          v18 -= 24;
        }

        while (v18);
        v12 = v22;
        v13 = v23;
        v16 = *(a1 + 1);
        v15 = v24;
      }

      v22 = *a1;
      *a1 = v12;
      a1[1] = v13;
      v23 = v16;
      v20 = a1[3];
      a1[2] = v19;
      a1[3] = v15;
      v24 = v20;
      sub_29A1B900C(&v22);
      v5 = a1[2];
    }

    else
    {
      v8 = (0xAAAAAAAAAAAAAAABLL * (v7 >> 3) + 1) / -2;
      v5 = (v6 - 24 * ((0xAAAAAAAAAAAAAAABLL * (v7 >> 3) + 1) / 2));
      if (v6 != v4)
      {
        do
        {
          pxrInternal__aapl__pxrReserved__::TsKnot::operator=(v5, v6);
          v6 = (v6 + 24);
          v5 = (v5 + 24);
        }

        while (v6 != v4);
        v6 = a1[1];
      }

      a1[1] = (v6 + 24 * v8);
      a1[2] = v5;
    }
  }

  result = pxrInternal__aapl__pxrReserved__::TsKnot::TsKnot(v5, a2);
  a1[2] = (a1[2] + 24);
  return result;
}

void sub_29A1B948C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1B900C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A1B94A4(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::TsKnot *a3)
{
  v6 = *(a2 + 8);
  sub_29A1B8F68(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_29A1B8F68(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

void sub_29A1B9560()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2045240, 100, "TsRegressionPreventer::ModeLimitActive", "Limit Active");

  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2045240, 101, "TsRegressionPreventer::ModeLimitOpposite", "Limit Opposite");
}

uint64_t pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::TsRegressionPreventer(pxrInternal__aapl__pxrReserved__::TsRegressionPreventer *this, pxrInternal__aapl__pxrReserved__::TsSpline *a2, double a3, char a4)
{
  AntiRegressionAuthoringMode = pxrInternal__aapl__pxrReserved__::TsSpline::GetAntiRegressionAuthoringMode(this);

  return pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::TsRegressionPreventer(this, a2, AntiRegressionAuthoringMode, a4, a3);
}

{
  AntiRegressionAuthoringMode = pxrInternal__aapl__pxrReserved__::TsSpline::GetAntiRegressionAuthoringMode(this);

  return pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::TsRegressionPreventer(this, a2, AntiRegressionAuthoringMode, a4, a3);
}

uint64_t pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::TsRegressionPreventer(uint64_t a1, pxrInternal__aapl__pxrReserved__::TsSpline *a2, int a3, char a4, double a5)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  *(a1 + 16) = 0;
  v6 = a1 + 16;
  *(a1 + 13) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v7 = a1 + 88;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v8 = a1 + 160;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 296) = 0;
  if (!a2)
  {
    v18 = COERCE_DOUBLE("ts/regressionPreventer.cpp");
    v19 = "TsRegressionPreventer";
    v20 = 225;
    v21 = "pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::TsRegressionPreventer(TsSpline *const, const TsTime, const _Mode, const BOOL)";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Null spline");
    goto LABEL_5;
  }

  if (!pxrInternal__aapl__pxrReserved__::TsSpline::GetCurveType(a2))
  {
    pxrInternal__aapl__pxrReserved__::TsSpline::GetKnots(*a1, v17);
    v10 = pxrInternal__aapl__pxrReserved__::TsKnotMap::find(v17, a5);
    if (v10 == pxrInternal__aapl__pxrReserved__::TsKnotMap::end(v17))
    {
      v18 = COERCE_DOUBLE("ts/regressionPreventer.cpp");
      v19 = "TsRegressionPreventer";
      v20 = 243;
      v21 = "pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::TsRegressionPreventer(TsSpline *const, const TsTime, const _Mode, const BOOL)";
      v22 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "No knot at time %g", a5);
    }

    else
    {
      if (!pxrInternal__aapl__pxrReserved__::TsSpline::HasInnerLoops(*a1) || (pxrInternal__aapl__pxrReserved__::TsSpline::GetInnerLoopParams(*a1, v16), pxrInternal__aapl__pxrReserved__::TsLoopParams::GetLoopedInterval(v16, &v18), v18 >= a5) && (v18 != a5 || v19 != 1) || *&v20 <= a5 && (*&v20 != a5 || v21 != 1) || ((pxrInternal__aapl__pxrReserved__::TsLoopParams::GetPrototypeInterval(v16, &v12), v12 < a5) || v12 == a5 && v13 == 1) && (v14 > a5 || v14 == a5 && (v15 & 1) != 0))
      {
        sub_29A1B9A40(v6, a1, v10);
        if (v10 != pxrInternal__aapl__pxrReserved__::TsKnotMap::begin(v17) && pxrInternal__aapl__pxrReserved__::TsKnot::GetNextInterpolation((v10 - 24)) == 3)
        {
          sub_29A1B9A40(v7, a1, (v10 - 24));
        }

        if (v10 + 24 != pxrInternal__aapl__pxrReserved__::TsKnotMap::end(v17) && pxrInternal__aapl__pxrReserved__::TsKnot::GetNextInterpolation(v10) == 3)
        {
          sub_29A1B9A40(v8, a1, (v10 + 24));
        }

        goto LABEL_28;
      }

      v18 = COERCE_DOUBLE("ts/regressionPreventer.cpp");
      v19 = "TsRegressionPreventer";
      v20 = 256;
      v21 = "pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::TsRegressionPreventer(TsSpline *const, const TsTime, const _Mode, const BOOL)";
      v22 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Cannot edit echoed knot at time %g", a5);
    }

    *(a1 + 13) = 0;
LABEL_28:
    v18 = COERCE_DOUBLE(v17);
    sub_29A1B8EE4(&v18);
    return a1;
  }

  v18 = COERCE_DOUBLE("ts/regressionPreventer.cpp");
  v19 = "TsRegressionPreventer";
  v20 = 233;
  v21 = "pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::TsRegressionPreventer(TsSpline *const, const TsTime, const _Mode, const BOOL)";
  v22 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Cannot use TsRegressionPreventer on non-Bezier spline");
LABEL_5:
  *(a1 + 13) = 0;
  return a1;
}

void sub_29A1B9924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void **a22)
{
  a22 = &a19;
  sub_29A1B8EE4(&a22);
  if (v22[296] == 1)
  {
    pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot((v22 + 240));
  }

  if (v22[224] == 1)
  {
    pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot((v22 + 168));
  }

  if (v22[152] == 1)
  {
    pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot((v22 + 96));
  }

  if (v22[80] == 1)
  {
    pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot((v22 + 24));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A1B9A40(uint64_t a1, void *a2, pxrInternal__aapl__pxrReserved__::TsKnot *a3)
{
  if (*(a1 + 64) == 1)
  {
    pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot((a1 + 8));
    *(a1 + 64) = 0;
  }

  *a1 = *a2;
  pxrInternal__aapl__pxrReserved__::TsKnot::TsKnot((a1 + 8), a3);
  v6 = *(*a3 + 16);
  *(a1 + 32) = **a3;
  *(a1 + 48) = v6;
  *(a1 + 64) = 1;
  return a1;
}

void pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_InitSetResult(pxrInternal__aapl__pxrReserved__::TsRegressionPreventer *this, const pxrInternal__aapl__pxrReserved__::TsKnot *a2, pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::SetResult *a3)
{
  if (a3)
  {
    *(a3 + 1) = *(this + 152);
    *(a3 + 32) = *(this + 224);
    *(a3 + 1) = pxrInternal__aapl__pxrReserved__::TsKnot::GetPreTanWidth(a2);
    *(a3 + 5) = pxrInternal__aapl__pxrReserved__::TsKnot::GetPostTanWidth(a2);
    if (*(this + 152) == 1)
    {
      *(a3 + 3) = pxrInternal__aapl__pxrReserved__::TsKnot::GetPostTanWidth((this + 96));
    }

    if (*(this + 224) == 1)
    {
      *(a3 + 7) = pxrInternal__aapl__pxrReserved__::TsKnot::GetPreTanWidth((this + 168));
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::Set(pxrInternal__aapl__pxrReserved__::TsRegressionPreventer *this, const pxrInternal__aapl__pxrReserved__::TsKnot *a2, pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::SetResult *a3)
{
  pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_InitSetResult(this, a2, a3);
  v7 = *(this + 13);
  if (v7 == 1)
  {
    if (*(this + 2))
    {
      pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_HandleInitialAdjustment(this, v6, a3);
      Time = pxrInternal__aapl__pxrReserved__::TsKnot::GetTime(a2);
      pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_HandleTimeChange(this, Time);
      pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_DoSet(this, a2, *(this + 2), a3);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::TsSpline::RemoveKnot(*(this + 2), *(this + 6));
      pxrInternal__aapl__pxrReserved__::TsSpline::_SetKnotUnchecked(*(this + 2), a2);
      v9 = **a2;
      *(this + 57) = *(*a2 + 9);
      *(this + 3) = v9;
    }
  }

  return v7;
}

__n128 pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_KnotState::Write(pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_KnotState *this, const pxrInternal__aapl__pxrReserved__::TsKnot *a2)
{
  pxrInternal__aapl__pxrReserved__::TsSpline::RemoveKnot(*this, *(this + 4));
  pxrInternal__aapl__pxrReserved__::TsSpline::_SetKnotUnchecked(*this, a2);
  result = **a2;
  *(this + 41) = *(*a2 + 9);
  *(this + 2) = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_HandleInitialAdjustment(pxrInternal__aapl__pxrReserved__::TsRegressionPreventer *this, const pxrInternal__aapl__pxrReserved__::TsKnot *a2, pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::SetResult *a3)
{
  if ((*(this + 14) & 1) == 0)
  {
    *(this + 14) = 1;
    if (*(this + 2) == 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 101;
    }

    pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_DoSet(this, (this + 24), v5, a3);
    if (*(this + 152) == 1)
    {
      pxrInternal__aapl__pxrReserved__::TsKnot::TsKnot(v6, (this + 96));
      *(v6[0] + 16) = *(this + 17);
      sub_29A1B9A40(this + 88, this, v6);
      pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot(v6);
    }

    if (*(this + 224) == 1)
    {
      pxrInternal__aapl__pxrReserved__::TsKnot::TsKnot(v6, (this + 168));
      *(v6[0] + 8) = *(this + 25);
      sub_29A1B9A40(this + 160, this, v6);
      pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot(v6);
    }
  }
}

void sub_29A1B9D14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_HandleTimeChange(pxrInternal__aapl__pxrReserved__::TsRegressionPreventer *this, double a2)
{
  v3 = *(this + 6);
  if (v3 != a2)
  {
    if (pxrInternal__aapl__pxrReserved__::TsSpline::RemoveKnot(*(this + 2), v3), (*(this + 296)) || *(this + 152) == 1 && pxrInternal__aapl__pxrReserved__::TsKnot::GetTime((this + 96)) >= a2 || *(this + 224) == 1 && pxrInternal__aapl__pxrReserved__::TsKnot::GetTime((this + 168)) <= a2)
    {
      if (*(this + 296) == 1)
      {
        pxrInternal__aapl__pxrReserved__::TsSpline::_SetKnotUnchecked(*(this + 29), (this + 240));
        if (*(this + 296) == 1)
        {
          pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot((this + 240));
          *(this + 296) = 0;
        }
      }

      if (*(this + 152) == 1)
      {
        pxrInternal__aapl__pxrReserved__::TsSpline::_SetKnotUnchecked(*(this + 11), (this + 96));
        if (*(this + 152) == 1)
        {
          pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot((this + 96));
          *(this + 152) = 0;
        }
      }

      if (*(this + 224) == 1)
      {
        pxrInternal__aapl__pxrReserved__::TsSpline::_SetKnotUnchecked(*(this + 20), (this + 168));
        if (*(this + 224) == 1)
        {
          pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot((this + 168));
          *(this + 224) = 0;
        }
      }

      pxrInternal__aapl__pxrReserved__::TsSpline::GetKnots(*this, v9);
      v5 = pxrInternal__aapl__pxrReserved__::TsKnotMap::lower_bound(v9, a2);
      if (v5 != pxrInternal__aapl__pxrReserved__::TsKnotMap::end(v9) && pxrInternal__aapl__pxrReserved__::TsKnot::GetTime(v5) == a2)
      {
        sub_29A1B9A40(this + 232, this, v5);
      }

      if (v5 != pxrInternal__aapl__pxrReserved__::TsKnotMap::begin(v9))
      {
        sub_29A1B9A40(this + 88, this, (v5 - 24));
      }

      v6 = *(this + 296);
      v7 = pxrInternal__aapl__pxrReserved__::TsKnotMap::end(v9);
      v8 = &v5[24 * v6];
      if (v8 != v7)
      {
        sub_29A1B9A40(this + 160, this, v8);
      }

      v10 = v9;
      sub_29A1B8EE4(&v10);
    }
  }
}

void sub_29A1B9EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A1B8EE4(&a12);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_DoSet(_BYTE *a1, const pxrInternal__aapl__pxrReserved__::TsKnot *a2, int a3, uint64_t a4)
{
  v21 = a1 + 16;
  pxrInternal__aapl__pxrReserved__::TsKnot::TsKnot(v22, a2);
  v7 = *(v22[0] + 16);
  v23 = *v22[0];
  v24 = v7;
  v8 = *(v22[0] + 16);
  v25 = *v22[0];
  v26 = v8;
  v18[0] = 0;
  v20 = 0;
  v15[0] = 0;
  v17 = 0;
  if (a1[152] == 1)
  {
    v11 = a1 + 88;
    sub_29A1BA170(v18, &v11);
    LODWORD(v11) = 0;
    HIDWORD(v11) = a3;
    v12 = &v21;
    v13 = v18;
    v14 = a4;
    pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::Adjust(&v11);
  }

  if (a1[224] == 1)
  {
    v11 = a1 + 160;
    sub_29A1BA170(v15, &v11);
    LODWORD(v11) = 1;
    HIDWORD(v11) = a3;
    v12 = &v21;
    v13 = v15;
    v14 = a4;
    pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::Adjust(&v11);
  }

  if (a1[12] == 1)
  {
    pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_WorkingKnotState::WriteWorking(&v21);
    if (v20 == 1)
    {
      pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_WorkingKnotState::WriteWorking(v18);
    }

    if (v17 == 1)
    {
      pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_WorkingKnotState::WriteWorking(v15);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::TsSpline::_SetKnotUnchecked(*v21, v22);
    v9 = v21;
    v10 = *(v22[0] + 9);
    *(v21 + 2) = *v22[0];
    *(v9 + 41) = v10;
  }

  if (v17 == 1)
  {
    pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot(&v16);
  }

  if (v20 == 1)
  {
    pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot(&v19);
  }

  pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot(v22);
}

void sub_29A1BA0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a25 == 1)
  {
    pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot(&a14);
  }

  if (a38 == 1)
  {
    pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot(&a27);
  }

  pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot((v38 + 8));
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_WorkingKnotState *pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_WorkingKnotState::_WorkingKnotState(pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_WorkingKnotState *this, pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_KnotState *a2, const pxrInternal__aapl__pxrReserved__::TsKnot *a3)
{
  *this = a2;
  pxrInternal__aapl__pxrReserved__::TsKnot::TsKnot((this + 8), a3);
  v4 = *(this + 1);
  v5 = v4[1];
  *(this + 2) = *v4;
  *(this + 3) = v5;
  v6 = v4[1];
  *(this + 4) = *v4;
  *(this + 5) = v6;
  return this;
}

{
  *this = a2;
  pxrInternal__aapl__pxrReserved__::TsKnot::TsKnot((this + 8), a3);
  v4 = *(this + 1);
  v5 = v4[1];
  *(this + 2) = *v4;
  *(this + 3) = v5;
  v6 = v4[1];
  *(this + 4) = *v4;
  *(this + 5) = v6;
  return this;
}

uint64_t sub_29A1BA170(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 96) == 1)
  {
    pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot((a1 + 8));
    *(a1 + 96) = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  pxrInternal__aapl__pxrReserved__::TsKnot::TsKnot((a1 + 8), (v4 + 8));
  v5 = *(a1 + 8);
  v6 = v5[1];
  *(a1 + 32) = *v5;
  *(a1 + 48) = v6;
  v7 = v5[1];
  *(a1 + 64) = *v5;
  *(a1 + 80) = v7;
  *(a1 + 96) = 1;
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_SegmentSolver(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = a2;
  *(result + 4) = a3;
  *(result + 8) = a4;
  *(result + 16) = a5;
  *(result + 24) = a6;
  return result;
}

{
  *result = a2;
  *(result + 4) = a3;
  *(result + 8) = a4;
  *(result + 16) = a5;
  *(result + 24) = a6;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::Adjust(pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver *this)
{
  if (*(this + 1) != 1)
  {
    if (*this)
    {
      v2 = 48;
    }

    else
    {
      v2 = 40;
    }

    v3 = *(*(this + 1) + v2);
    SegmentWidth = pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetSegmentWidth(this);
    if (*this)
    {
      v5 = 40;
    }

    else
    {
      v5 = 48;
    }

    v6 = *(*(this + 2) + v5);
    v7 = v3 / SegmentWidth;
    v8 = v6 / pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetSegmentWidth(this);
    if (v7 <= 1.0 && v8 <= 1.0)
    {
      return 1;
    }

    v10 = (v7 + 0.000001) * (v8 + 0.000001) + (v7 + 0.000001) * (v7 + 0.000001) + (v8 + 0.000001) * (v8 + 0.000001) - (v7 + 0.000001 + v8 + 0.000001 + v7 + 0.000001 + v8 + 0.000001) + 1.0;
    if (v10 <= 0.0)
    {
      return 1;
    }

    v11 = *(this + 1);
    if (v11 > 99)
    {
      if (v11 == 100)
      {
        pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_AdjustWithLimitActive(this);
        return 1;
      }

      if (v11 == 101)
      {
        pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_AdjustWithLimitOpposite(this);
        return 1;
      }
    }

    else
    {
      if (v11 == 2)
      {
        pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_AdjustWithKeepRatio(this);
        return 1;
      }

      if (v11 == 3)
      {
        pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_AdjustWithKeepStart(this);
        return 1;
      }
    }

    v13[0] = "ts/regressionPreventer.cpp";
    v13[1] = "Adjust";
    v13[2] = 625;
    v13[3] = "BOOL pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::Adjust()";
    v14 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v13, 1, "Unexpected mode", v10);
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_AdjustWithContain(this);
  return 1;
}

__n128 pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_WorkingKnotState::WriteWorking(pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_WorkingKnotState *this)
{
  pxrInternal__aapl__pxrReserved__::TsKnot::TsKnot(v5, (this + 8));
  *(v5[0] + 8) = *(this + 72);
  pxrInternal__aapl__pxrReserved__::TsSpline::_SetKnotUnchecked(**this, v5);
  v2 = *this;
  v3 = *(this + 4);
  *(v2 + 41) = *(this + 73);
  *(v2 + 2) = v3;
  pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot(v5);
  return result;
}

void sub_29A1BA3E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot(va);
  _Unwind_Resume(a1);
}

__n128 pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_WorkingKnotState::WriteProposed(pxrInternal__aapl__pxrReserved__::TsSpline ***this)
{
  pxrInternal__aapl__pxrReserved__::TsSpline::_SetKnotUnchecked(**this, (this + 1));
  v3 = *this;
  v2 = this[1];
  result = *v2;
  *(v3 + 41) = *(v2 + 9);
  *(v3 + 2) = result;
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::Ts_RegressionPreventerBatchAccess::IsSegmentRegressive(uint64_t a1, double *a2, int a3)
{
  if ((*(a1 + 24) & 7) != 3)
  {
    return 0;
  }

  v3 = *a2 - *a1;
  v4 = *(a1 + 16) / v3;
  v5 = a2[1] / v3;
  if (a3 == 1)
  {
    v6 = fmax(v4, v5) <= 1.0;
    return !v6;
  }

  if (v4 <= 1.0 && v5 <= 1.0)
  {
    return 0;
  }

  v6 = (v4 + 0.000001) * (v5 + 0.000001) + (v4 + 0.000001) * (v4 + 0.000001) + (v5 + 0.000001) * (v5 + 0.000001) - (v4 + 0.000001 + v5 + 0.000001 + v4 + 0.000001 + v5 + 0.000001) + 1.0 <= 0.0;
  return !v6;
}

uint64_t pxrInternal__aapl__pxrReserved__::Ts_RegressionPreventerBatchAccess::ProcessSegment(__int128 *a1, __int128 *a2, int a3)
{
  if (a3 && (*(a1 + 24) & 7) == 3)
  {
    v29 = 0;
    pxrInternal__aapl__pxrReserved__::TsKnot::TsKnot(v30);
    v6 = a1[1];
    v31 = *a1;
    v32 = v6;
    v33 = v31;
    v34 = v6;
    v23 = 0;
    pxrInternal__aapl__pxrReserved__::TsKnot::TsKnot(v24);
    v7 = a2[1];
    v25 = *a2;
    v26 = v7;
    v27 = v25;
    v28 = v7;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v10[0] = 1;
    v10[1] = a3;
    v11 = &v29;
    v12 = &v23;
    v13 = &v14;
    pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::Adjust(v10);
    if (HIBYTE(v19) == 1)
    {
      *(a1 + 2) = v34;
    }

    if (v21 == 1)
    {
      *(a2 + 1) = *(&v27 + 1);
    }

    v8 = v14;
    pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot(v24);
    pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot(v30);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_29A1BA5E4(_Unwind_Exception *a1)
{
  pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot((v2 + 8));
  pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot((v1 + 8));
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_WorkingKnotState *pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_WorkingKnotState::_WorkingKnotState(pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_WorkingKnotState *this, const pxrInternal__aapl__pxrReserved__::Ts_KnotData *a2)
{
  *this = 0;
  pxrInternal__aapl__pxrReserved__::TsKnot::TsKnot((this + 8));
  v4 = *(a2 + 1);
  *(this + 2) = *a2;
  *(this + 3) = v4;
  v5 = *(a2 + 1);
  *(this + 4) = *a2;
  *(this + 5) = v5;
  return this;
}

{
  *this = 0;
  pxrInternal__aapl__pxrReserved__::TsKnot::TsKnot((this + 8));
  v4 = *(a2 + 1);
  *(this + 2) = *a2;
  *(this + 3) = v4;
  v5 = *(a2 + 1);
  *(this + 4) = *a2;
  *(this + 5) = v5;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_AdjustWithContain(pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver *this)
{
  v2 = 48;
  if (!*this)
  {
    v2 = 40;
  }

  v3 = *(*(this + 1) + v2);
  if (v3 / pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetSegmentWidth(this) > 1.0)
  {
    pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_SetActiveWidth(this, 1.0);
  }

  v4 = 40;
  if (!*this)
  {
    v4 = 48;
  }

  v5 = *(*(this + 2) + v4);
  if (v5 / pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetSegmentWidth(this) > 1.0)
  {
    pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_SetOppositeWidth(this, 1.0);
  }

  return 1;
}

double pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetProposedActiveWidth(pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver *this)
{
  v1 = 48;
  if (!*this)
  {
    v1 = 40;
  }

  v2 = *(*(this + 1) + v1);
  return v2 / pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetSegmentWidth(this);
}

double pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetProposedOppositeWidth(pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver *this)
{
  v1 = 40;
  if (!*this)
  {
    v1 = 48;
  }

  v2 = *(*(this + 2) + v1);
  return v2 / pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetSegmentWidth(this);
}

uint64_t pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_AdjustWithKeepRatio(pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver *this)
{
  v2 = 48;
  if (!*this)
  {
    v2 = 40;
  }

  v3 = *(*(this + 1) + v2);
  if (v3 / pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetSegmentWidth(this) < 0.000001)
  {
    v4 = 0.99999;
LABEL_16:
    pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_SetOppositeWidth(this, v4);
    return 1;
  }

  v5 = 40;
  if (!*this)
  {
    v5 = 48;
  }

  v6 = *(*(this + 2) + v5);
  if (v6 / pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetSegmentWidth(this) >= 0.000001)
  {
    if (*this)
    {
      v7 = 48;
    }

    else
    {
      v7 = 40;
    }

    v8 = *(*(this + 1) + v7);
    SegmentWidth = pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetSegmentWidth(this);
    if (*this)
    {
      v10 = 40;
    }

    else
    {
      v10 = 48;
    }

    v11 = *(*(this + 2) + v10);
    v12 = v8 / SegmentWidth / (v11 / pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetSegmentWidth(this));
    v13 = (v12 + sqrt(v12) + 1.0) / (v12 + v12 * v12 + 1.0);
    pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_SetActiveWidth(this, v12 * v13 + -0.00001);
    v4 = v13 + -0.00001;
    goto LABEL_16;
  }

  pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_SetActiveWidth(this, 0.99999);
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_AdjustWithKeepStart(pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver *this)
{
  v2 = 8;
  if (!*this)
  {
    v2 = 16;
  }

  v3 = *(*(this + v2) + 48);
  if (v3 / pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetSegmentWidth(this) >= 1.33333333)
  {
    pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_SetStartWidth(this, 1.33332333);
    v13 = 0.333323333;
  }

  else
  {
    if (*this)
    {
      v4 = 8;
    }

    else
    {
      v4 = 16;
    }

    v5 = *(*(this + v4) + 48);
    v6 = v5 / pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetSegmentWidth(this);
    if (*this)
    {
      v7 = 16;
    }

    else
    {
      v7 = 8;
    }

    v8 = *(*(this + v7) + 40);
    SegmentWidth = pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetSegmentWidth(this);
    v13 = sub_29A1BAE38(v6, v8 / SegmentWidth, v10, v11, v12) + -0.00001;
  }

  pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_SetEndWidth(this, v13);
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_AdjustWithLimitActive(pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver *this)
{
  v2 = 40;
  if (!*this)
  {
    v2 = 48;
  }

  v3 = *(*(this + 2) + v2);
  if (v3 / pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetSegmentWidth(this) >= 1.33333333)
  {
    pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_SetOppositeWidth(this, 1.33332333);
    v15 = 48;
    if (!*this)
    {
      v15 = 40;
    }

    v16 = *(*(this + 1) + v15);
    v14 = v16 / pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetSegmentWidth(this);
    if (v14 > 0.333323333)
    {
      v14 = 0.333323333;
    }
  }

  else
  {
    if (*this)
    {
      v4 = 40;
    }

    else
    {
      v4 = 48;
    }

    v5 = *(*(this + 2) + v4);
    SegmentWidth = pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetSegmentWidth(this);
    if (*this)
    {
      v7 = 48;
    }

    else
    {
      v7 = 40;
    }

    v8 = *(*(this + 1) + v7);
    v9 = v5 / SegmentWidth;
    v10 = pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetSegmentWidth(this);
    v14 = sub_29A1BAE38(v9, v8 / v10, v11, v12, v13) + -0.00001;
  }

  pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_SetActiveWidth(this, v14);
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_AdjustWithLimitOpposite(pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver *this)
{
  v2 = 40;
  if (!*this)
  {
    v2 = 48;
  }

  v3 = *(*(this + 2) + v2);
  SegmentWidth = pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetSegmentWidth(this);
  v5 = *this;
  if (v3 / SegmentWidth <= 0.333333333)
  {
    if (v5)
    {
      v20 = 40;
    }

    else
    {
      v20 = 48;
    }

    v21 = *(*(this + 2) + v20);
    v22 = pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetSegmentWidth(this);
    if (*this)
    {
      v23 = 48;
    }

    else
    {
      v23 = 40;
    }

    v24 = *(*(this + 1) + v23);
    v25 = v21 / v22;
    v26 = pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetSegmentWidth(this);
    v30 = sub_29A1BAE38(v25, v24 / v26, v27, v28, v29);
    pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_SetActiveWidth(this, v30 + -0.00001);
  }

  else
  {
    v6 = v5 == 0;
    v7 = 48;
    if (v6)
    {
      v7 = 40;
    }

    v8 = *(*(this + 1) + v7);
    if (v8 / pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetSegmentWidth(this) >= 1.33333333)
    {
      pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_SetActiveWidth(this, 1.33332333);
      v19 = 0.333323333;
    }

    else
    {
      if (*this)
      {
        v9 = 48;
      }

      else
      {
        v9 = 40;
      }

      v10 = *(*(this + 1) + v9);
      v11 = pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetSegmentWidth(this);
      if (*this)
      {
        v12 = 40;
      }

      else
      {
        v12 = 48;
      }

      v13 = *(*(this + 2) + v12);
      v14 = v10 / v11;
      v15 = pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetSegmentWidth(this);
      v19 = sub_29A1BAE38(v14, v13 / v15, v16, v17, v18) + -0.00001;
    }

    pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_SetOppositeWidth(this, v19);
  }

  return 1;
}

void pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_SetActiveWidth(pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver *this, double a2)
{
  v4 = 48;
  if (!*this)
  {
    v4 = 40;
  }

  v5 = *(*(this + 1) + v4);
  v6 = v5 / pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetSegmentWidth(this);
  v7 = pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetSegmentWidth(this) * a2;
  v8 = *(this + 1);
  if (*this)
  {
    *(v8 + 80) = v7;
    v9 = *(this + 3);
    if (!v9)
    {
      return;
    }

    *v9 |= v6 != a2;
    v9[33] |= v6 != a2;
    v10 = (v9 + 40);
  }

  else
  {
    *(v8 + 72) = v7;
    v11 = *(this + 3);
    if (!v11)
    {
      return;
    }

    *v11 |= v6 != a2;
    v11[2] |= v6 != a2;
    v10 = (v11 + 8);
  }

  *v10 = v7;
}

void pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_SetOppositeWidth(pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver *this, double a2)
{
  v4 = 40;
  if (!*this)
  {
    v4 = 48;
  }

  v5 = *(*(this + 2) + v4);
  v6 = v5 / pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetSegmentWidth(this);
  v7 = pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetSegmentWidth(this) * a2;
  v8 = *(this + 2);
  if (*this)
  {
    *(v8 + 72) = v7;
    v9 = *(this + 3);
    if (!v9)
    {
      return;
    }

    *v9 |= v6 != a2;
    v9[48] |= v6 != a2;
    v10 = (v9 + 56);
  }

  else
  {
    *(v8 + 80) = v7;
    v11 = *(this + 3);
    if (!v11)
    {
      return;
    }

    *v11 |= v6 != a2;
    v11[16] |= v6 != a2;
    v10 = (v11 + 24);
  }

  *v10 = v7;
}

double pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetProposedStartWidth(pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver *this)
{
  v1 = 8;
  if (!*this)
  {
    v1 = 16;
  }

  v2 = *(*(this + v1) + 48);
  return v2 / pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetSegmentWidth(this);
}

void pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_SetStartWidth(pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver *this, double a2)
{
  if (*this)
  {
    pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_SetActiveWidth(this, a2);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_SetOppositeWidth(this, a2);
  }
}

void pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_SetEndWidth(pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver *this, double a2)
{
  if (*this)
  {
    pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_SetOppositeWidth(this, a2);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_SetActiveWidth(this, a2);
  }
}

double sub_29A1BAE38(double a1, double a2, uint64_t a3, uint64_t a4, char *a5)
{
  if (a1 <= 1.33333333)
  {
    v8 = (a1 + -2.0) * -0.5;
    v9 = sqrt((a1 + -2.0) * (a1 + -2.0) + (a1 + -1.0) * (a1 + -1.0) * -4.0) * 0.5;
    v10 = -v9;
    if (v8 < a2)
    {
      v10 = v9;
    }

    return v8 + v10;
  }

  else
  {
    v13 = v5;
    v14 = v6;
    v11[0] = "ts/regressionPreventer.cpp";
    v11[1] = "_ComputeOtherWidthForVert";
    v11[2] = 786;
    v11[3] = "TsTime pxrInternal__aapl__pxrReserved__::_ComputeOtherWidthForVert(const TsTime, const TsTime)";
    v12 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v11, "Unexpectedly long tangent", a5);
    return 0.333333333;
  }
}

double pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetProposedEndWidth(pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver *this)
{
  v1 = 16;
  if (!*this)
  {
    v1 = 8;
  }

  v2 = *(*(this + v1) + 40);
  return v2 / pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetSegmentWidth(this);
}

double pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetSegmentWidth(pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver *this)
{
  if (*this == 1)
  {
    v1 = -(*(*(this + 1) + 32) - *(*(this + 2) + 32));
  }

  else
  {
    v1 = *(*(this + 1) + 32) - *(*(this + 2) + 32);
  }

  if (v1 <= 0.0)
  {
    v3[0] = "ts/regressionPreventer.cpp";
    v3[1] = "_GetSegmentWidth";
    v3[2] = 948;
    v3[3] = "TsTime pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_SegmentSolver::_GetSegmentWidth() const";
    v4 = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v3, "width > 0", 0) & 1) == 0)
    {
      return 1.0;
    }
  }

  return v1;
}

pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_KnotState *pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_KnotState::_KnotState(pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_KnotState *this, pxrInternal__aapl__pxrReserved__::TsSpline *a2, const pxrInternal__aapl__pxrReserved__::TsKnot *a3)
{
  *this = a2;
  pxrInternal__aapl__pxrReserved__::TsKnot::TsKnot((this + 8), a3);
  v5 = *(*a3 + 16);
  *(this + 2) = **a3;
  *(this + 3) = v5;
  return this;
}

{
  *this = a2;
  pxrInternal__aapl__pxrReserved__::TsKnot::TsKnot((this + 8), a3);
  v5 = *(*a3 + 16);
  *(this + 2) = **a3;
  *(this + 3) = v5;
  return this;
}

pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_WorkingKnotState *pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_WorkingKnotState::_WorkingKnotState(pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_WorkingKnotState *this, pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::_KnotState *a2)
{
  *this = a2;
  pxrInternal__aapl__pxrReserved__::TsKnot::TsKnot((this + 8), (a2 + 8));
  v3 = *(this + 1);
  v4 = v3[1];
  *(this + 2) = *v3;
  *(this + 3) = v4;
  v5 = v3[1];
  *(this + 4) = *v3;
  *(this + 5) = v5;
  return this;
}

{
  *this = a2;
  pxrInternal__aapl__pxrReserved__::TsKnot::TsKnot((this + 8), (a2 + 8));
  v3 = *(this + 1);
  v4 = v3[1];
  *(this + 2) = *v3;
  *(this + 3) = v4;
  v5 = v3[1];
  *(this + 4) = *v3;
  *(this + 5) = v5;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::SetResult::GetDebugDescription(pxrInternal__aapl__pxrReserved__::TsRegressionPreventer::SetResult *this, int a2)
{
  sub_29A00B6DC(&v41);
  v4 = v41;
  *(&v41 + *(v41 - 24) + 8) = *(&v41 + *(v41 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v43[0].__locale_ + *(v4 - 24)) = a2;
  *(&v41 + *(v4 - 24) + 8) |= 1u;
  v5 = sub_29A00911C(&v41, "TsRegressionPreventer::SetResult:", 33);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v6 = std::locale::use_facet(&v46, MEMORY[0x29EDC93D0]);
  (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(&v46);
  std::ostream::put();
  std::ostream::flush();
  v7 = sub_29A00911C(&v41, "  adjusted: ", 12);
  v8 = MEMORY[0x29C2C1EA0](v7, *this);
  std::ios_base::getloc((v8 + *(*v8 - 24)));
  v9 = std::locale::use_facet(&v46, MEMORY[0x29EDC93D0]);
  (v9->__vftable[2].~facet_0)(v9, 10);
  std::locale::~locale(&v46);
  std::ostream::put();
  std::ostream::flush();
  v10 = sub_29A00911C(&v41, "  havePreSegment: ", 18);
  v11 = MEMORY[0x29C2C1EA0](v10, *(this + 1));
  std::ios_base::getloc((v11 + *(*v11 - 24)));
  v12 = std::locale::use_facet(&v46, MEMORY[0x29EDC93D0]);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(&v46);
  std::ostream::put();
  std::ostream::flush();
  v13 = sub_29A00911C(&v41, "  preActiveAdjusted: ", 21);
  v14 = MEMORY[0x29C2C1EA0](v13, *(this + 2));
  std::ios_base::getloc((v14 + *(*v14 - 24)));
  v15 = std::locale::use_facet(&v46, MEMORY[0x29EDC93D0]);
  (v15->__vftable[2].~facet_0)(v15, 10);
  std::locale::~locale(&v46);
  std::ostream::put();
  std::ostream::flush();
  v16 = sub_29A00911C(&v41, "  preActiveAdjustedWidth: ", 26);
  v17 = MEMORY[0x29C2C1EB0](v16, *(this + 1));
  std::ios_base::getloc((v17 + *(*v17 - 24)));
  v18 = std::locale::use_facet(&v46, MEMORY[0x29EDC93D0]);
  (v18->__vftable[2].~facet_0)(v18, 10);
  std::locale::~locale(&v46);
  std::ostream::put();
  std::ostream::flush();
  v19 = sub_29A00911C(&v41, "  preOppositeAdjusted: ", 23);
  v20 = MEMORY[0x29C2C1EA0](v19, *(this + 16));
  std::ios_base::getloc((v20 + *(*v20 - 24)));
  v21 = std::locale::use_facet(&v46, MEMORY[0x29EDC93D0]);
  (v21->__vftable[2].~facet_0)(v21, 10);
  std::locale::~locale(&v46);
  std::ostream::put();
  std::ostream::flush();
  v22 = sub_29A00911C(&v41, "  preOppositeAdjustedWidth: ", 28);
  v23 = MEMORY[0x29C2C1EB0](v22, *(this + 3));
  std::ios_base::getloc((v23 + *(*v23 - 24)));
  v24 = std::locale::use_facet(&v46, MEMORY[0x29EDC93D0]);
  (v24->__vftable[2].~facet_0)(v24, 10);
  std::locale::~locale(&v46);
  std::ostream::put();
  std::ostream::flush();
  v25 = sub_29A00911C(&v41, "  havePostSegment: ", 19);
  v26 = MEMORY[0x29C2C1EA0](v25, *(this + 32));
  std::ios_base::getloc((v26 + *(*v26 - 24)));
  v27 = std::locale::use_facet(&v46, MEMORY[0x29EDC93D0]);
  (v27->__vftable[2].~facet_0)(v27, 10);
  std::locale::~locale(&v46);
  std::ostream::put();
  std::ostream::flush();
  v28 = sub_29A00911C(&v41, "  postActiveAdjusted: ", 22);
  v29 = MEMORY[0x29C2C1EA0](v28, *(this + 33));
  std::ios_base::getloc((v29 + *(*v29 - 24)));
  v30 = std::locale::use_facet(&v46, MEMORY[0x29EDC93D0]);
  (v30->__vftable[2].~facet_0)(v30, 10);
  std::locale::~locale(&v46);
  std::ostream::put();
  std::ostream::flush();
  v31 = sub_29A00911C(&v41, "  postActiveAdjustedWidth: ", 27);
  v32 = MEMORY[0x29C2C1EB0](v31, *(this + 5));
  std::ios_base::getloc((v32 + *(*v32 - 24)));
  v33 = std::locale::use_facet(&v46, MEMORY[0x29EDC93D0]);
  (v33->__vftable[2].~facet_0)(v33, 10);
  std::locale::~locale(&v46);
  std::ostream::put();
  std::ostream::flush();
  v34 = sub_29A00911C(&v41, "  postOppositeAdjusted: ", 24);
  v35 = MEMORY[0x29C2C1EA0](v34, *(this + 48));
  std::ios_base::getloc((v35 + *(*v35 - 24)));
  v36 = std::locale::use_facet(&v46, MEMORY[0x29EDC93D0]);
  (v36->__vftable[2].~facet_0)(v36, 10);
  std::locale::~locale(&v46);
  std::ostream::put();
  std::ostream::flush();
  v37 = sub_29A00911C(&v41, "  postOppositeAdjustedWidth: ", 29);
  v38 = MEMORY[0x29C2C1EB0](v37, *(this + 7));
  std::ios_base::getloc((v38 + *(*v38 - 24)));
  v39 = std::locale::use_facet(&v46, MEMORY[0x29EDC93D0]);
  (v39->__vftable[2].~facet_0)(v39, 10);
  std::locale::~locale(&v46);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str();
  v41 = *MEMORY[0x29EDC9538];
  *(&v41 + *(v41 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v42 = MEMORY[0x29EDC9570] + 16;
  if (v44 < 0)
  {
    operator delete(v43[7].__locale_);
  }

  v42 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v43);
  std::ostream::~ostream();
  return MEMORY[0x29C2C4390](&v45);
}

void sub_29A1BBA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 56));
  sub_29A00B848(&a9);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::TsSpline::TsSpline(void *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

{
  *this = 0;
  this[1] = 0;
  return this;
}

void *pxrInternal__aapl__pxrReserved__::TsSpline::TsSpline(void *a1, uint64_t a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::Ts_SplineData::Create(a2, 0);

  return sub_29A1B3604(a1, v3);
}

{
  v3 = pxrInternal__aapl__pxrReserved__::Ts_SplineData::Create(a2, 0);

  return sub_29A1B3604(a1, v3);
}

void *pxrInternal__aapl__pxrReserved__::TsSpline::TsSpline(void *this, const pxrInternal__aapl__pxrReserved__::TsSpline *a2)
{
  v2 = *(a2 + 1);
  *this = *a2;
  this[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

{
  v2 = *(a2 + 1);
  *this = *a2;
  this[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void *pxrInternal__aapl__pxrReserved__::TsSpline::operator=(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TsSpline::operator==(pxrInternal__aapl__pxrReserved__::TsSpline *a1, pxrInternal__aapl__pxrReserved__::TsSpline *a2)
{
  Data = pxrInternal__aapl__pxrReserved__::TsSpline::_GetData(a1);
  v4 = pxrInternal__aapl__pxrReserved__::TsSpline::_GetData(a2);
  if (Data == v4)
  {
    return 1;
  }

  v5 = *(*Data + 40);

  return v5(Data, v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::TsSpline::_GetData(pxrInternal__aapl__pxrReserved__::TsSpline *this)
{
  if ((atomic_load_explicit(&qword_2A173F4B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A173F4B0))
  {
    pxrInternal__aapl__pxrReserved__::TfType::TfType(&v3);
    qword_2A173F4A8 = pxrInternal__aapl__pxrReserved__::Ts_SplineData::Create(v3, 0);
    __cxa_guard_release(&qword_2A173F4B0);
  }

  if (*this)
  {
    return *this;
  }

  else
  {
    return qword_2A173F4A8;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TsSpline::GetValueType(pxrInternal__aapl__pxrReserved__::TsSpline *this)
{
  v1 = *(*pxrInternal__aapl__pxrReserved__::TsSpline::_GetData(this) + 16);

  return v1();
}

void pxrInternal__aapl__pxrReserved__::TsSpline::SetTimeValued(pxrInternal__aapl__pxrReserved__::TsSpline *this, int a2)
{
  pxrInternal__aapl__pxrReserved__::TfType::TfType(&v5);
  pxrInternal__aapl__pxrReserved__::TsSpline::_PrepareForWrite(this, v5);
  if (a2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  *(*this + 8) = *(*this + 8) & 0xFD | v4;
}

void pxrInternal__aapl__pxrReserved__::TsSpline::_PrepareForWrite(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    if (v4[8])
    {
      goto LABEL_3;
    }

    pxrInternal__aapl__pxrReserved__::TfType::TfType(&v10);
    if (v10 != a2)
    {
      v8 = pxrInternal__aapl__pxrReserved__::Ts_GetType<double>();
      v9 = *a1;
      if (v8 == a2)
      {
        *(v9 + 8) |= 1u;
        return;
      }

      v6 = pxrInternal__aapl__pxrReserved__::Ts_SplineData::Create(a2, v9);
      goto LABEL_15;
    }

    v4 = *a1;
    if (*a1)
    {
LABEL_3:
      v5 = a1[1];
      if (v5 && *(v5 + 8) >= 1)
      {
        v6 = (*(*v4 + 32))(v4);
LABEL_15:
        sub_29A1B2828(a1, v6);
      }
    }
  }

  else
  {
    v7 = pxrInternal__aapl__pxrReserved__::Ts_SplineData::Create(a2, 0);

    sub_29A1B2828(a1, v7);
  }
}

void pxrInternal__aapl__pxrReserved__::TsSpline::SetCurveType(uint64_t *a1, char a2)
{
  pxrInternal__aapl__pxrReserved__::TfType::TfType(&v4);
  pxrInternal__aapl__pxrReserved__::TsSpline::_PrepareForWrite(a1, v4);
  *(*a1 + 8) = *(*a1 + 8) & 0xF3 | (4 * (a2 & 3));
}

__n128 pxrInternal__aapl__pxrReserved__::TsSpline::SetPreExtrapolation(pxrInternal__aapl__pxrReserved__::TsSpline *this, __n128 *a2)
{
  pxrInternal__aapl__pxrReserved__::TfType::TfType(&v5);
  pxrInternal__aapl__pxrReserved__::TsSpline::_PrepareForWrite(this, v5);
  result = *a2;
  *(*this + 16) = *a2;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::TsSpline::SetPostExtrapolation(pxrInternal__aapl__pxrReserved__::TsSpline *this, __n128 *a2)
{
  pxrInternal__aapl__pxrReserved__::TfType::TfType(&v5);
  pxrInternal__aapl__pxrReserved__::TsSpline::_PrepareForWrite(this, v5);
  result = *a2;
  *(*this + 32) = *a2;
  return result;
}

void pxrInternal__aapl__pxrReserved__::TsSpline::SetInnerLoopParams(pxrInternal__aapl__pxrReserved__::TsSpline *this, const pxrInternal__aapl__pxrReserved__::TsLoopParams *a2)
{
  pxrInternal__aapl__pxrReserved__::TfType::TfType(&v7);
  pxrInternal__aapl__pxrReserved__::TsSpline::_PrepareForWrite(this, v7);
  v4 = *this;
  v5 = *(a2 + 1);
  *(v4 + 48) = *a2;
  *(v4 + 64) = v5;
  v6 = *this;
  if ((*(*this + 64) & 0x80000000) != 0)
  {
    *(v6 + 64) = 0;
  }

  if ((*(v6 + 68) & 0x80000000) != 0)
  {
    *(v6 + 68) = 0;
  }
}

__n128 pxrInternal__aapl__pxrReserved__::TsSpline::GetInnerLoopParams@<Q0>(pxrInternal__aapl__pxrReserved__::TsSpline *this@<X0>, uint64_t a2@<X8>)
{
  Data = pxrInternal__aapl__pxrReserved__::TsSpline::_GetData(this);
  result = *(Data + 48);
  v5 = *(Data + 64);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

void pxrInternal__aapl__pxrReserved__::TsSpline::SetKnots(pxrInternal__aapl__pxrReserved__::TsSpline *this, pxrInternal__aapl__pxrReserved__::TsKnot **a2)
{
  if ((*(pxrInternal__aapl__pxrReserved__::TsSpline::_GetData(this) + 8) & 1) != 0 && (v4 = pxrInternal__aapl__pxrReserved__::TsKnotMap::GetValueType(a2), v5 = pxrInternal__aapl__pxrReserved__::TsSpline::_GetData(this), v4 != (*(*v5 + 16))(v5)))
  {
    v22[0] = "ts/spline.cpp";
    v22[1] = "SetKnots";
    v22[2] = 183;
    v22[3] = "void pxrInternal__aapl__pxrReserved__::TsSpline::SetKnots(const TsKnotMap &)";
    v23 = 0;
    ValueType = pxrInternal__aapl__pxrReserved__::TsKnotMap::GetValueType(a2);
    TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&ValueType);
    if (*(TypeName + 23) >= 0)
    {
      v16 = TypeName;
    }

    else
    {
      v16 = *TypeName;
    }

    Data = pxrInternal__aapl__pxrReserved__::TsSpline::_GetData(this);
    v20 = (*(*Data + 16))(Data);
    v18 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v20);
    if (*(v18 + 23) >= 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = *v18;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v22, 1, "Mismatched knot map type '%s' passed to TsSpline::SetKnots for spline of type '%s'", v16, v19);
  }

  else
  {
    v6 = pxrInternal__aapl__pxrReserved__::TsKnotMap::GetValueType(a2);
    pxrInternal__aapl__pxrReserved__::TsSpline::_PrepareForWrite(this, v6);
    (*(**this + 104))();
    v7 = *this;
    v8 = pxrInternal__aapl__pxrReserved__::TsKnotMap::size(a2);
    (*(*v7 + 48))(v7, v8);
    v9 = pxrInternal__aapl__pxrReserved__::TsKnotMap::begin(a2);
    v10 = pxrInternal__aapl__pxrReserved__::TsKnotMap::end(a2);
    if (v9 != v10)
    {
      v11 = v10;
      do
      {
        v12 = *this;
        v13 = *v9;
        pxrInternal__aapl__pxrReserved__::TsKnot::GetCustomData(v9, v22);
        (*(*v12 + 56))(v12, v13, v22);
        sub_29A184A10(v22, 0);
        v9 = (v9 + 24);
      }

      while (v9 != v11);
    }

    v14 = sub_29A1BDD24();
    if (*v14 == v14[1])
    {
      pxrInternal__aapl__pxrReserved__::TsSpline::AdjustRegressiveTangents(this);
    }
  }
}

void sub_29A1BC34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A184A10(va, 0);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TsSpline::AdjustRegressiveTangents(pxrInternal__aapl__pxrReserved__::TsSpline *this)
{
  v1 = *this;
  if (!*this)
  {
    goto LABEL_23;
  }

  if ((*(v1 + 8) & 0xC) != 0)
  {
    goto LABEL_23;
  }

  v2 = (*(v1 + 88) - *(v1 + 80)) >> 3;
  if (v2 < 2)
  {
    goto LABEL_23;
  }

  v4 = *(this + 1);
  if (v4 && *(v4 + 8) >= 1)
  {
    v5 = v2 - 1;
    v6 = 1;
    while (v2 != v6)
    {
      v7 = (*(**this + 88))(*this, v6 - 1);
      v8 = (*(**this + 88))(*this, v6);
      v9 = sub_29A1BE184();
      v10 = v9[1];
      if (*v9 == v10 || (v11 = *(v10 - 8)) == 0)
      {
        v12 = 2;
      }

      else
      {
        v12 = *v11;
      }

      ++v6;
      if (pxrInternal__aapl__pxrReserved__::Ts_RegressionPreventerBatchAccess::IsSegmentRegressive(v7, v8, v12))
      {
        pxrInternal__aapl__pxrReserved__::TfType::TfType(&v22);
        pxrInternal__aapl__pxrReserved__::TsSpline::_PrepareForWrite(this, v22);
        v5 = v6 - 2;
        break;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if (v5 >= v2 - 1)
  {
LABEL_23:
    LOBYTE(v13) = 0;
  }

  else
  {
    v13 = 0;
    v14 = v5 + 1;
    do
    {
      v15 = (*(**this + 88))(*this, v14 - 1);
      v16 = (*(**this + 88))(*this, v14);
      v17 = sub_29A1BE184();
      v18 = v17[1];
      if (*v17 == v18 || (v19 = *(v18 - 8)) == 0)
      {
        v20 = 2;
      }

      else
      {
        v20 = *v19;
      }

      v13 |= pxrInternal__aapl__pxrReserved__::Ts_RegressionPreventerBatchAccess::ProcessSegment(v15, v16, v20);
      ++v14;
    }

    while (v2 != v14);
  }

  return v13 & 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TsSpline::CanSetKnot(pxrInternal__aapl__pxrReserved__::TsSpline *a1, pxrInternal__aapl__pxrReserved__::TsKnot *a2, uint64_t a3)
{
  if ((*(pxrInternal__aapl__pxrReserved__::TsSpline::_GetData(a1) + 8) & 1) == 0 || (ValueType = pxrInternal__aapl__pxrReserved__::TsKnot::GetValueType(a2), v7 = pxrInternal__aapl__pxrReserved__::TsSpline::_GetData(a1), ValueType == (*(*v7 + 16))(v7)))
  {
    CurveType = pxrInternal__aapl__pxrReserved__::TsKnot::GetCurveType(a2);
    if (CurveType == ((*(pxrInternal__aapl__pxrReserved__::TsSpline::_GetData(a1) + 8) >> 2) & 3))
    {
      return 1;
    }

    if (a3)
    {
      v10 = pxrInternal__aapl__pxrReserved__::TsKnot::GetCurveType(a2);
      v11 = v25;
      pxrInternal__aapl__pxrReserved__::TfEnum::GetName(&unk_2A2044FC8, v10, v25);
      if (v26 < 0)
      {
        v11 = v25[0];
      }

      Data = pxrInternal__aapl__pxrReserved__::TsSpline::_GetData(a1);
      pxrInternal__aapl__pxrReserved__::TfEnum::GetName(&unk_2A2044FC8, (*(Data + 8) >> 2) & 3, __p);
      if (v24 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Cannot set knot of curve type '%s' into spline of curve type '%s'", v13, v14, v11, v15);
      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

      *a3 = v27;
      *(a3 + 16) = v28;
      HIBYTE(v28) = 0;
      LOBYTE(v27) = 0;
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      if (v26 < 0)
      {
        operator delete(v25[0]);
      }
    }

    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  v25[0] = pxrInternal__aapl__pxrReserved__::TsKnot::GetValueType(a2);
  TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v25);
  if (*(TypeName + 23) >= 0)
  {
    v17 = TypeName;
  }

  else
  {
    v17 = *TypeName;
  }

  v18 = pxrInternal__aapl__pxrReserved__::TsSpline::_GetData(a1);
  __p[0] = (*(*v18 + 16))(v18);
  v19 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(__p);
  if (*(v19 + 23) >= 0)
  {
    v22 = v19;
  }

  else
  {
    v22 = *v19;
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("Cannot set knot of value type '%s' into spline of value type '%s'", v20, v21, v17, v22);
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  result = 0;
  *a3 = v27;
  *(a3 + 16) = v28;
  return result;
}

void sub_29A1BC790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::TsSpline::SetKnot(pxrInternal__aapl__pxrReserved__::TsSpline *a1, pxrInternal__aapl__pxrReserved__::TsKnot *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v22 = 0;
  CanSetKnot = pxrInternal__aapl__pxrReserved__::TsSpline::CanSetKnot(a1, a2, __p);
  if (CanSetKnot)
  {
    ValueType = pxrInternal__aapl__pxrReserved__::TsKnot::GetValueType(a2);
    pxrInternal__aapl__pxrReserved__::TsSpline::_PrepareForWrite(a1, ValueType);
    v6 = *a1;
    v7 = *a2;
    pxrInternal__aapl__pxrReserved__::TsKnot::GetCustomData(a2, v19);
    v8 = (*(*v6 + 64))(v6, v7, v19);
    sub_29A184A10(v19, 0);
    v9 = sub_29A1BDD24();
    if (*v9 == v9[1] && (*(*a1 + 8) & 0xC) == 0)
    {
      if (v8)
      {
        v10 = v8 - 1;
      }

      else
      {
        v10 = 0;
      }

      if (v8 == ((*(*a1 + 88) - *(*a1 + 80)) >> 3) - 1)
      {
        v11 = v8;
      }

      else
      {
        v11 = v8 + 1;
      }

      while (v10 < v11)
      {
        v12 = (*(**a1 + 88))(*a1, v10);
        v13 = (*(**a1 + 88))(*a1, v10 + 1);
        v14 = sub_29A1BE184();
        v15 = v14[1];
        if (*v14 == v15 || (v16 = *(v15 - 8)) == 0)
        {
          v17 = 2;
        }

        else
        {
          v17 = *v16;
        }

        ++v10;
        pxrInternal__aapl__pxrReserved__::Ts_RegressionPreventerBatchAccess::ProcessSegment(v12, v13, v17);
      }
    }
  }

  else
  {
    v19[0] = "ts/spline.cpp";
    v19[1] = "SetKnot";
    v19[2] = 246;
    v19[3] = "BOOL pxrInternal__aapl__pxrReserved__::TsSpline::SetKnot(const TsKnot &, GfInterval *)";
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v19, 1, __p);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  return CanSetKnot;
}

void sub_29A1BC9AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::TsSpline::GetAntiRegressionAuthoringMode(pxrInternal__aapl__pxrReserved__::TsSpline *this)
{
  v1 = sub_29A1BE184();
  v2 = v1[1];
  if (*v1 == v2)
  {
    return 2;
  }

  v3 = *(v2 - 8);
  if (!v3)
  {
    return 2;
  }

  else
  {
    return *v3;
  }
}

void pxrInternal__aapl__pxrReserved__::TsSpline::_SetKnotUnchecked(pxrInternal__aapl__pxrReserved__::TsSpline *this, const pxrInternal__aapl__pxrReserved__::TsKnot *a2)
{
  ValueType = pxrInternal__aapl__pxrReserved__::TsKnot::GetValueType(a2);
  pxrInternal__aapl__pxrReserved__::TsSpline::_PrepareForWrite(this, ValueType);
  v5 = *this;
  v6 = *a2;
  pxrInternal__aapl__pxrReserved__::TsKnot::GetCustomData(a2, &v7);
  (*(*v5 + 64))(v5, v6, &v7);
  sub_29A184A10(&v7, 0);
}

void sub_29A1BCAC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A184A10(va, 0);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TsSpline::GetKnots@<X0>(pxrInternal__aapl__pxrReserved__::TsSpline *this@<X0>, pxrInternal__aapl__pxrReserved__::TsKnotMap *a2@<X8>)
{
  Data = pxrInternal__aapl__pxrReserved__::TsSpline::_GetData(this);

  return pxrInternal__aapl__pxrReserved__::TsKnotMap::TsKnotMap(a2, Data);
}

uint64_t pxrInternal__aapl__pxrReserved__::TsSpline::GetKnot(pxrInternal__aapl__pxrReserved__::TsSpline *this, double a2, pxrInternal__aapl__pxrReserved__::TsKnot *a3)
{
  v12 = a2;
  result = *this;
  if (result)
  {
    result = (*(*result + 80))(result);
    if (result)
    {
      v6 = result;
      v11 = 0;
      v7 = sub_29A1B905C((*this + 104), &v12);
      if (v7)
      {
        pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(&v11, v7 + 3);
      }

      Data = pxrInternal__aapl__pxrReserved__::TsSpline::_GetData(this);
      v9 = (*(*Data + 16))(Data);
      pxrInternal__aapl__pxrReserved__::TsKnot::TsKnot(&v10, v6, v9, &v11);
      pxrInternal__aapl__pxrReserved__::TsKnot::operator=(a3, &v10);
      pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot(&v10);
      sub_29A184A10(&v11, 0);
      return 1;
    }
  }

  return result;
}

void sub_29A1BCC0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::TsKnot::~TsKnot(va);
  sub_29A184A10(va1, 0);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TsSpline::ClearKnots(pxrInternal__aapl__pxrReserved__::TsSpline *this)
{
  pxrInternal__aapl__pxrReserved__::TfType::TfType(&v3);
  pxrInternal__aapl__pxrReserved__::TsSpline::_PrepareForWrite(this, v3);
  return (*(**this + 104))();
}

uint64_t pxrInternal__aapl__pxrReserved__::TsSpline::RemoveKnot(uint64_t *a1, double a2)
{
  pxrInternal__aapl__pxrReserved__::TfType::TfType(&v5);
  pxrInternal__aapl__pxrReserved__::TsSpline::_PrepareForWrite(a1, v5);
  return (*(**a1 + 112))(a2);
}

BOOL pxrInternal__aapl__pxrReserved__::TsSpline::DoSidesDiffer(pxrInternal__aapl__pxrReserved__::TsSpline *this, double a2)
{
  Data = pxrInternal__aapl__pxrReserved__::TsSpline::_GetData(this);
  v5 = COERCE_DOUBLE(pxrInternal__aapl__pxrReserved__::Ts_Eval(Data, 0, 0, a2));
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = pxrInternal__aapl__pxrReserved__::TsSpline::_GetData(this);
  v9 = COERCE_DOUBLE(pxrInternal__aapl__pxrReserved__::Ts_Eval(v8, 0, 1, a2));
  if ((v10 & 1) == 0)
  {
    v9 = 0.0;
  }

  return v9 == v7;
}

uint64_t pxrInternal__aapl__pxrReserved__::TsSpline::HasValueBlocks(pxrInternal__aapl__pxrReserved__::TsSpline *this)
{
  v1 = *(*pxrInternal__aapl__pxrReserved__::TsSpline::_GetData(this) + 128);

  return v1();
}

BOOL pxrInternal__aapl__pxrReserved__::TsSpline::HasLoops(pxrInternal__aapl__pxrReserved__::TsSpline *this)
{
  Data = pxrInternal__aapl__pxrReserved__::TsSpline::_GetData(this);
  if (pxrInternal__aapl__pxrReserved__::Ts_SplineData::HasInnerLoops(Data, 0))
  {
    return 1;
  }

  return pxrInternal__aapl__pxrReserved__::TsSpline::HasExtrapolatingLoops(this);
}

uint64_t pxrInternal__aapl__pxrReserved__::TsSpline::HasInnerLoops(pxrInternal__aapl__pxrReserved__::TsSpline *this)
{
  Data = pxrInternal__aapl__pxrReserved__::TsSpline::_GetData(this);

  return pxrInternal__aapl__pxrReserved__::Ts_SplineData::HasInnerLoops(Data, 0);
}

BOOL pxrInternal__aapl__pxrReserved__::TsSpline::HasExtrapolatingLoops(pxrInternal__aapl__pxrReserved__::TsSpline *this)
{
  Data = pxrInternal__aapl__pxrReserved__::TsSpline::_GetData(this);
  if (pxrInternal__aapl__pxrReserved__::TsExtrapolation::IsLooping((Data + 16)))
  {
    return 1;
  }

  v4 = (pxrInternal__aapl__pxrReserved__::TsSpline::_GetData(this) + 32);

  return pxrInternal__aapl__pxrReserved__::TsExtrapolation::IsLooping(v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::TsSpline::HasValueBlockAtTime(pxrInternal__aapl__pxrReserved__::TsSpline *this, double a2)
{
  v3 = *(*pxrInternal__aapl__pxrReserved__::TsSpline::_GetData(this) + 136);
  v4.n128_f64[0] = a2;

  return v3(v4);
}

void *pxrInternal__aapl__pxrReserved__::operator<<(void *a1, pxrInternal__aapl__pxrReserved__::TsSpline *a2)
{
  v4 = sub_29A00911C(a1, "Spline:", 7);
  std::ios_base::getloc((v4 + *(*v4 - 24)));
  v5 = std::locale::use_facet(&v73, MEMORY[0x29EDC93D0]);
  (v5->__vftable[2].~facet_0)(v5, 10);
  std::locale::~locale(&v73);
  std::ostream::put();
  std::ostream::flush();
  v6 = sub_29A00911C(v4, "  value type ", 13);
  Data = pxrInternal__aapl__pxrReserved__::TsSpline::_GetData(a2);
  v74 = (*(*Data + 16))(Data);
  TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v74);
  v9 = *(TypeName + 23);
  if (v9 >= 0)
  {
    v10 = TypeName;
  }

  else
  {
    v10 = *TypeName;
  }

  if (v9 >= 0)
  {
    v11 = *(TypeName + 23);
  }

  else
  {
    v11 = *(TypeName + 8);
  }

  v12 = sub_29A00911C(v6, v10, v11);
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&v73, MEMORY[0x29EDC93D0]);
  (v13->__vftable[2].~facet_0)(v13, 10);
  std::locale::~locale(&v73);
  std::ostream::put();
  std::ostream::flush();
  v14 = sub_29A00911C(v12, "  time valued ", 14);
  v15 = pxrInternal__aapl__pxrReserved__::TsSpline::_GetData(a2);
  v16 = MEMORY[0x29C2C1EA0](v14, (*(v15 + 8) >> 1) & 1);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v73, MEMORY[0x29EDC93D0]);
  (v17->__vftable[2].~facet_0)(v17, 10);
  std::locale::~locale(&v73);
  std::ostream::put();
  std::ostream::flush();
  v18 = sub_29A00911C(v16, "  curve type ", 13);
  v19 = pxrInternal__aapl__pxrReserved__::TsSpline::_GetData(a2);
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(qword_2A2044FC8, (*(v19 + 8) >> 2) & 3, &__str);
  std::string::basic_string(&v73, &__str, 0xBuLL, 0xFFFFFFFFFFFFFFFFLL, &v69);
  if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v73;
  }

  else
  {
    v20 = v73.__r_.__value_.__r.__words[0];
  }

  if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v73.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v73.__r_.__value_.__l.__size_;
  }

  v22 = sub_29A00911C(v18, v20, size);
  std::ios_base::getloc((v22 + *(*v22 - 24)));
  v23 = std::locale::use_facet(&v69, MEMORY[0x29EDC93D0]);
  (v23->__vftable[2].~facet_0)(v23, 10);
  std::locale::~locale(&v69);
  std::ostream::put();
  std::ostream::flush();
  v24 = sub_29A00911C(v22, "  pre extrap ", 13);
  *v68 = *(pxrInternal__aapl__pxrReserved__::TsSpline::_GetData(a2) + 16);
  sub_29A1BD878(v68);
  if ((v71 & 0x80u) == 0)
  {
    locale = &v69;
  }

  else
  {
    locale = v69.__locale_;
  }

  if ((v71 & 0x80u) == 0)
  {
    v26 = v71;
  }

  else
  {
    v26 = v70;
  }

  v27 = sub_29A00911C(v24, locale, v26);
  std::ios_base::getloc((v27 + *(*v27 - 24)));
  v28 = std::locale::use_facet(&v65, MEMORY[0x29EDC93D0]);
  (v28->__vftable[2].~facet_0)(v28, 10);
  std::locale::~locale(&v65);
  std::ostream::put();
  std::ostream::flush();
  v29 = sub_29A00911C(v27, "  post extrap ", 14);
  *v64 = *(pxrInternal__aapl__pxrReserved__::TsSpline::_GetData(a2) + 32);
  sub_29A1BD878(v64);
  if ((v67 & 0x80u) == 0)
  {
    v30 = &v65;
  }

  else
  {
    v30 = v65.__locale_;
  }

  if ((v67 & 0x80u) == 0)
  {
    v31 = v67;
  }

  else
  {
    v31 = v66;
  }

  v32 = sub_29A00911C(v29, v30, v31);
  std::ios_base::getloc((v32 + *(*v32 - 24)));
  v33 = std::locale::use_facet(&v75, MEMORY[0x29EDC93D0]);
  (v33->__vftable[2].~facet_0)(v33, 10);
  std::locale::~locale(&v75);
  std::ostream::put();
  std::ostream::flush();
  if (v67 < 0)
  {
    operator delete(v65.__locale_);
  }

  if (v71 < 0)
  {
    operator delete(v69.__locale_);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v34 = pxrInternal__aapl__pxrReserved__::TsSpline::_GetData(a2);
  if (pxrInternal__aapl__pxrReserved__::Ts_SplineData::HasInnerLoops(v34, 0))
  {
    v35 = pxrInternal__aapl__pxrReserved__::TsSpline::_GetData(a2);
    v37 = *(v35 + 48);
    v36 = *(v35 + 56);
    v39 = *(v35 + 64);
    v38 = *(v35 + 68);
    v40 = *(v35 + 72);
    v41 = sub_29A00911C(a1, "Loop:", 5);
    std::ios_base::getloc((v41 + *(*v41 - 24)));
    v42 = std::locale::use_facet(&v73, MEMORY[0x29EDC93D0]);
    (v42->__vftable[2].~facet_0)(v42, 10);
    std::locale::~locale(&v73);
    std::ostream::put();
    std::ostream::flush();
    v43 = sub_29A00911C(v41, "  start ", 8);
    pxrInternal__aapl__pxrReserved__::TfStringify(v37, &v73);
    if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = &v73;
    }

    else
    {
      v44 = v73.__r_.__value_.__r.__words[0];
    }

    if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v45 = HIBYTE(v73.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v45 = v73.__r_.__value_.__l.__size_;
    }

    v46 = sub_29A00911C(v43, v44, v45);
    v47 = sub_29A00911C(v46, ", end ", 6);
    pxrInternal__aapl__pxrReserved__::TfStringify(v36, &__str);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v49 = __str.__r_.__value_.__l.__size_;
    }

    v50 = sub_29A00911C(v47, p_str, v49);
    v51 = sub_29A00911C(v50, ", numPreLoops ", 14);
    v52 = MEMORY[0x29C2C1ED0](v51, v39);
    v53 = sub_29A00911C(v52, ", numPostLoops ", 15);
    v54 = MEMORY[0x29C2C1ED0](v53, v38);
    v55 = sub_29A00911C(v54, ", valueOffset ", 14);
    pxrInternal__aapl__pxrReserved__::TfStringify(v40, &v69);
    if ((v71 & 0x80u) == 0)
    {
      v56 = &v69;
    }

    else
    {
      v56 = v69.__locale_;
    }

    if ((v71 & 0x80u) == 0)
    {
      v57 = v71;
    }

    else
    {
      v57 = v70;
    }

    v58 = sub_29A00911C(v55, v56, v57);
    std::ios_base::getloc((v58 + *(*v58 - 24)));
    v59 = std::locale::use_facet(&v65, MEMORY[0x29EDC93D0]);
    (v59->__vftable[2].~facet_0)(v59, 10);
    std::locale::~locale(&v65);
    std::ostream::put();
    std::ostream::flush();
    if (v71 < 0)
    {
      operator delete(v69.__locale_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }
  }

  v60 = pxrInternal__aapl__pxrReserved__::TsSpline::_GetData(a2);
  pxrInternal__aapl__pxrReserved__::TsKnotMap::TsKnotMap(&v73, v60);
  v61 = pxrInternal__aapl__pxrReserved__::TsKnotMap::begin(&v73);
  v62 = pxrInternal__aapl__pxrReserved__::TsKnotMap::end(&v73);
  while (v61 != v62)
  {
    pxrInternal__aapl__pxrReserved__::operator<<(a1, v61);
    v61 += 3;
  }

  __str.__r_.__value_.__r.__words[0] = &v73;
  sub_29A1B8EE4(&__str);
  return a1;
}

void sub_29A1BD744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, std::locale a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, std::locale a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33.__locale_);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1BD878(double *a1)
{
  sub_29A00B6DC(&v10);
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(qword_2A2045260, *a1, &__p);
  std::string::basic_string(&v9, &__p, 8uLL, 0xFFFFFFFFFFFFFFFFLL, &v15);
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v2 = &v9;
  }

  else
  {
    v2 = v9.__r_.__value_.__r.__words[0];
  }

  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v9.__r_.__value_.__l.__size_;
  }

  sub_29A00911C(&v10, v2, size);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*a1 == 3)
  {
    v4 = sub_29A00911C(&v10, " ", 1);
    pxrInternal__aapl__pxrReserved__::TfStringify(a1[1], &v9);
    v5 = (v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v9 : v9.__r_.__value_.__r.__words[0];
    v6 = (v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v9.__r_.__value_.__r.__words[2]) : v9.__r_.__value_.__l.__size_;
    sub_29A00911C(v4, v5, v6);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }
  }

  std::stringbuf::str();
  v10 = *MEMORY[0x29EDC9538];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v11 = MEMORY[0x29EDC9570] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x29C2C4390](&v14);
}

void sub_29A1BDA90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_29A00B848(&a21);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Ts_SplineOffsetAccess::ApplyOffsetAndScale(pxrInternal__aapl__pxrReserved__::Ts_SplineOffsetAccess *this, pxrInternal__aapl__pxrReserved__::TsSpline *a2, double a3, double a4)
{
  pxrInternal__aapl__pxrReserved__::TfType::TfType(&v8);
  pxrInternal__aapl__pxrReserved__::TsSpline::_PrepareForWrite(this, v8);
  return (*(**this + 120))(a3, a4);
}

BOOL pxrInternal__aapl__pxrReserved__::TsSpline::HasRegressiveTangents(pxrInternal__aapl__pxrReserved__::TsSpline *this)
{
  v1 = *this;
  if (!*this)
  {
    return 0;
  }

  if ((*(v1 + 8) & 0xC) != 0)
  {
    return 0;
  }

  v2 = (*(v1 + 88) - *(v1 + 80)) >> 3;
  if (v2 < 2)
  {
    return 0;
  }

  v6 = 1;
  do
  {
    v3 = v2 != v6;
    if (v2 == v6)
    {
      break;
    }

    v7 = (*(**this + 88))(*this, v6 - 1);
    v8 = (*(**this + 88))(*this, v6);
    v9 = sub_29A1BE184();
    v10 = v9[1];
    if (*v9 == v10 || (v11 = *(v10 - 8)) == 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = *v11;
    }

    ++v6;
  }

  while (!pxrInternal__aapl__pxrReserved__::Ts_RegressionPreventerBatchAccess::IsSegmentRegressive(v7, v8, v12));
  return v3;
}

void pxrInternal__aapl__pxrReserved__::swap(pxrInternal__aapl__pxrReserved__ *this, pxrInternal__aapl__pxrReserved__::TsSpline *a2, pxrInternal__aapl__pxrReserved__::TsSpline *a3)
{
  v5 = *this;
  v4 = *(this + 1);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *a2;
  v6 = *(a2 + 1);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 1);
  *a2 = v5;
  *(a2 + 1) = v4;
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  if (v4)
  {

    sub_29A014BEC(v4);
  }
}

uint64_t sub_29A1BDD24()
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::Tf_ExportedStackedStorage<pxrInternal__aapl__pxrReserved__::TsEditBehaviorBlock,true>::value))
  {
    v2 = operator new(0x60uLL);
    sub_29A1BDDA8(v2);
    sub_29B2930A0(v2);
  }

  v3 = 0;
  result = sub_29A0ED084(pxrInternal__aapl__pxrReserved__::Tf_ExportedStackedStorage<pxrInternal__aapl__pxrReserved__::TsEditBehaviorBlock,true>::value, &v3);
  if ((*(result + 24) & 1) == 0)
  {
    *(result + 24) = 1;
  }

  return result;
}

void *sub_29A1BDDA8(void *a1)
{
  *a1 = &unk_2A203F6D8;
  __dmb(0xBu);
  a1[1] = 0;
  __dmb(0xBu);
  a1[2] = 0;
  *a1 = &unk_2A2045280;
  v2 = tbb::internal::allocate_via_handler_v3(8);
  *v2 = &unk_2A20452E0;
  a1[3] = v2;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  a1[7] = 0;
  a1[6] = 0;
  a1[8] = a1 + 9;
  a1[5] = sub_29A1BE00C;
  return a1;
}

uint64_t sub_29A1BDE74(uint64_t a1)
{
  v2 = tbb::internal::concurrent_vector_base_v3::internal_grow_by((a1 + 40), 1uLL, 0x80, tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<pxrInternal__aapl__pxrReserved__::Tf_StackedStorageType<pxrInternal__aapl__pxrReserved__::TsEditBehaviorBlock,true>::_StackHolder>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<pxrInternal__aapl__pxrReserved__::Tf_StackedStorageType<pxrInternal__aapl__pxrReserved__::TsEditBehaviorBlock,true>::_StackHolder>,128ul>>>::initialize_array, 0);
  v3 = sub_29A0EC0EC(v2);
  v4 = *(a1 + 64);
  __dmb(0xBu);
  v5 = *(v4 + 8 * v3) + ((v2 - ((1 << v3) & 0x1FFFFFFFFFFFFFELL)) << 7);
  (*(**(a1 + 24) + 32))(*(a1 + 24), v5);
  *(v5 + 32) = 1;
  return v5;
}

void sub_29A1BDF3C(void *a1)
{
  v1 = sub_29A1BE02C(a1);

  operator delete(v1);
}

void *sub_29A1BDF64()
{
  result = tbb::internal::allocate_via_handler_v3(8);
  *result = &unk_2A20452E0;
  return result;
}

uint64_t sub_29A1BDF9C(uint64_t a1)
{
  (*(*a1 + 16))(a1);

  return tbb::internal::deallocate_via_handler_v3(a1, v2);
}

void sub_29A1BDFFC(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
}

void tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<pxrInternal__aapl__pxrReserved__::Tf_StackedStorageType<pxrInternal__aapl__pxrReserved__::TsEditBehaviorBlock,true>::_StackHolder>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<pxrInternal__aapl__pxrReserved__::Tf_StackedStorageType<pxrInternal__aapl__pxrReserved__::TsEditBehaviorBlock,true>::_StackHolder>,128ul>>>::initialize_array(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    bzero(a1, a3 << 7);
  }
}

void *sub_29A1BE02C(void *a1)
{
  *a1 = &unk_2A2045280;
  v2 = a1[3];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_29A0EBE40(a1);
  sub_29A1BE0C8(a1 + 4);
  *a1 = &unk_2A203F6D8;
  return a1;
}

unint64_t *sub_29A1BE0C8(unint64_t *a1)
{
  v2 = a1[4];
  v3 = tbb::internal::concurrent_vector_base_v3::internal_clear((a1 + 1), tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<pxrInternal__aapl__pxrReserved__::Tf_StackedStorageType<pxrInternal__aapl__pxrReserved__::TsEditBehaviorBlock,true>::_StackHolder>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<pxrInternal__aapl__pxrReserved__::Tf_StackedStorageType<pxrInternal__aapl__pxrReserved__::TsEditBehaviorBlock,true>::_StackHolder>,128ul>>>::destroy_array);
  sub_29A0EC010(a1, v2, v3, a1[2]);
  tbb::internal::concurrent_vector_base_v3::~concurrent_vector_base_v3((a1 + 1), v4);
  return a1;
}

void tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<pxrInternal__aapl__pxrReserved__::Tf_StackedStorageType<pxrInternal__aapl__pxrReserved__::TsEditBehaviorBlock,true>::_StackHolder>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<pxrInternal__aapl__pxrReserved__::Tf_StackedStorageType<pxrInternal__aapl__pxrReserved__::TsEditBehaviorBlock,true>::_StackHolder>,128ul>>>::destroy_array(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = a1 + (a2 << 7) - 128;
    do
    {
      if (*(v3 + 32) == 1)
      {
        v4 = *v3;
        if (*v3)
        {
          *(v3 + 8) = v4;
          operator delete(v4);
        }

        *(v3 + 32) = 0;
      }

      v3 -= 128;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_29A1BE184()
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::Tf_ExportedStackedStorage<pxrInternal__aapl__pxrReserved__::TsAntiRegressionAuthoringSelector,true>::value))
  {
    v2 = operator new(0x60uLL);
    sub_29A1BE208(v2);
    sub_29B2930E4(v2);
  }

  v3 = 0;
  result = sub_29A0ED084(pxrInternal__aapl__pxrReserved__::Tf_ExportedStackedStorage<pxrInternal__aapl__pxrReserved__::TsAntiRegressionAuthoringSelector,true>::value, &v3);
  if ((*(result + 24) & 1) == 0)
  {
    *(result + 24) = 1;
  }

  return result;
}

void *sub_29A1BE208(void *a1)
{
  *a1 = &unk_2A203F6D8;
  __dmb(0xBu);
  a1[1] = 0;
  __dmb(0xBu);
  a1[2] = 0;
  *a1 = &unk_2A2045378;
  v2 = tbb::internal::allocate_via_handler_v3(8);
  *v2 = &unk_2A20453D8;
  a1[3] = v2;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  a1[7] = 0;
  a1[6] = 0;
  a1[8] = a1 + 9;
  a1[5] = sub_29A1BE46C;
  return a1;
}

uint64_t sub_29A1BE2D4(uint64_t a1)
{
  v2 = tbb::internal::concurrent_vector_base_v3::internal_grow_by((a1 + 40), 1uLL, 0x80, tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<pxrInternal__aapl__pxrReserved__::Tf_StackedStorageType<pxrInternal__aapl__pxrReserved__::TsAntiRegressionAuthoringSelector,true>::_StackHolder>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<pxrInternal__aapl__pxrReserved__::Tf_StackedStorageType<pxrInternal__aapl__pxrReserved__::TsAntiRegressionAuthoringSelector,true>::_StackHolder>,128ul>>>::initialize_array, 0);
  v3 = sub_29A0EC0EC(v2);
  v4 = *(a1 + 64);
  __dmb(0xBu);
  v5 = *(v4 + 8 * v3) + ((v2 - ((1 << v3) & 0x1FFFFFFFFFFFFFELL)) << 7);
  (*(**(a1 + 24) + 32))(*(a1 + 24), v5);
  *(v5 + 32) = 1;
  return v5;
}

void sub_29A1BE39C(void *a1)
{
  v1 = sub_29A1BE48C(a1);

  operator delete(v1);
}

void *sub_29A1BE3C4()
{
  result = tbb::internal::allocate_via_handler_v3(8);
  *result = &unk_2A20453D8;
  return result;
}

uint64_t sub_29A1BE3FC(uint64_t a1)
{
  (*(*a1 + 16))(a1);

  return tbb::internal::deallocate_via_handler_v3(a1, v2);
}

void sub_29A1BE45C(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
}

void tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<pxrInternal__aapl__pxrReserved__::Tf_StackedStorageType<pxrInternal__aapl__pxrReserved__::TsAntiRegressionAuthoringSelector,true>::_StackHolder>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<pxrInternal__aapl__pxrReserved__::Tf_StackedStorageType<pxrInternal__aapl__pxrReserved__::TsAntiRegressionAuthoringSelector,true>::_StackHolder>,128ul>>>::initialize_array(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    bzero(a1, a3 << 7);
  }
}

void *sub_29A1BE48C(void *a1)
{
  *a1 = &unk_2A2045378;
  v2 = a1[3];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_29A0EBE40(a1);
  sub_29A1BE528(a1 + 4);
  *a1 = &unk_2A203F6D8;
  return a1;
}

unint64_t *sub_29A1BE528(unint64_t *a1)
{
  v2 = a1[4];
  v3 = tbb::internal::concurrent_vector_base_v3::internal_clear((a1 + 1), tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<pxrInternal__aapl__pxrReserved__::Tf_StackedStorageType<pxrInternal__aapl__pxrReserved__::TsAntiRegressionAuthoringSelector,true>::_StackHolder>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<pxrInternal__aapl__pxrReserved__::Tf_StackedStorageType<pxrInternal__aapl__pxrReserved__::TsAntiRegressionAuthoringSelector,true>::_StackHolder>,128ul>>>::destroy_array);
  sub_29A0EC010(a1, v2, v3, a1[2]);
  tbb::internal::concurrent_vector_base_v3::~concurrent_vector_base_v3((a1 + 1), v4);
  return a1;
}

void tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<pxrInternal__aapl__pxrReserved__::Tf_StackedStorageType<pxrInternal__aapl__pxrReserved__::TsAntiRegressionAuthoringSelector,true>::_StackHolder>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<pxrInternal__aapl__pxrReserved__::Tf_StackedStorageType<pxrInternal__aapl__pxrReserved__::TsAntiRegressionAuthoringSelector,true>::_StackHolder>,128ul>>>::destroy_array(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = a1 + (a2 << 7) - 128;
    do
    {
      if (*(v3 + 32) == 1)
      {
        v4 = *v3;
        if (*v3)
        {
          *(v3 + 8) = v4;
          operator delete(v4);
        }

        *(v3 + 32) = 0;
      }

      v3 -= 128;
      --v2;
    }

    while (v2);
  }
}

_OWORD *pxrInternal__aapl__pxrReserved__::Ts_SplineData::Create(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfType::TfType(v11);
  v4 = a1;
  if (v11[0] == a1)
  {
    v4 = pxrInternal__aapl__pxrReserved__::Ts_GetType<double>();
  }

  if (pxrInternal__aapl__pxrReserved__::Ts_GetType<double>() == v4)
  {
    v5 = operator new(0xA8uLL);
    *v5 = 0u;
    v5[2] = 0u;
    v5[3] = 0u;
    v5[4] = 0u;
    v5[5] = 0u;
    v5[6] = 0u;
    v5[7] = 0u;
    v5[8] = 0u;
    v5[9] = 0u;
    *(v5 + 20) = 0;
    v5[1] = 0u;
    *v5 = &unk_2A2045470;
    pxrInternal__aapl__pxrReserved__::TsExtrapolation::TsExtrapolation((v5 + 1));
    pxrInternal__aapl__pxrReserved__::TsExtrapolation::TsExtrapolation((v5 + 2));
    *(v5 + 16) = 0;
    v5[6] = 0u;
    v5[7] = 0u;
    v5[4] = 0u;
    v5[5] = 0u;
    v5[3] = 0u;
    *(v5 + 34) = 1065353216;
    v6 = &unk_2A2045520;
  }

  else if (pxrInternal__aapl__pxrReserved__::Ts_GetType<float>() == v4)
  {
    v5 = operator new(0xA8uLL);
    *v5 = 0u;
    v5[2] = 0u;
    v5[3] = 0u;
    v5[4] = 0u;
    v5[5] = 0u;
    v5[6] = 0u;
    v5[7] = 0u;
    v5[8] = 0u;
    v5[9] = 0u;
    *(v5 + 20) = 0;
    v5[1] = 0u;
    *v5 = &unk_2A2045470;
    pxrInternal__aapl__pxrReserved__::TsExtrapolation::TsExtrapolation((v5 + 1));
    pxrInternal__aapl__pxrReserved__::TsExtrapolation::TsExtrapolation((v5 + 2));
    *(v5 + 16) = 0;
    v5[6] = 0u;
    v5[7] = 0u;
    v5[4] = 0u;
    v5[5] = 0u;
    v5[3] = 0u;
    *(v5 + 34) = 1065353216;
    v6 = &unk_2A20455D8;
  }

  else
  {
    if (pxrInternal__aapl__pxrReserved__::Ts_GetType<pxrInternal__aapl__pxrReserved__::pxr_half::half>() != v4)
    {
      v11[0] = "ts/valueTypeDispatch.h";
      v11[1] = "TsDispatchToValueTypeTemplate";
      v11[2] = 64;
      v11[3] = "void pxrInternal__aapl__pxrReserved__::TsDispatchToValueTypeTemplate(TfType, Args &&...) [Cls = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_Creator, Args = <pxrInternal__aapl__pxrReserved__::Ts_SplineData **>]";
      v12 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v11, 1, "Unsupported spline value type");
      return 0;
    }

    v5 = operator new(0xA8uLL);
    *v5 = 0u;
    v5[2] = 0u;
    v5[3] = 0u;
    v5[4] = 0u;
    v5[5] = 0u;
    v5[6] = 0u;
    v5[7] = 0u;
    v5[8] = 0u;
    v5[9] = 0u;
    *(v5 + 20) = 0;
    v5[1] = 0u;
    *v5 = &unk_2A2045470;
    pxrInternal__aapl__pxrReserved__::TsExtrapolation::TsExtrapolation((v5 + 1));
    pxrInternal__aapl__pxrReserved__::TsExtrapolation::TsExtrapolation((v5 + 2));
    *(v5 + 16) = 0;
    v5[6] = 0u;
    v5[7] = 0u;
    v5[4] = 0u;
    v5[5] = 0u;
    v5[3] = 0u;
    *(v5 + 34) = 1065353216;
    v6 = &unk_2A2045690;
  }

  *v5 = v6;
  *(v5 + 19) = 0;
  *(v5 + 20) = 0;
  *(v5 + 18) = 0;
  *(v5 + 8) &= 0xF1u;
  pxrInternal__aapl__pxrReserved__::TfType::TfType(v11);
  v7 = *(v5 + 8) & 0xFE;
  if (v11[0] != a1)
  {
    ++v7;
  }

  *(v5 + 8) = v7;
  if (a2)
  {
    *(v5 + 8) = *(a2 + 8) & 0xC | v7 & 0xF3;
    v8 = *(a2 + 32);
    v5[1] = *(a2 + 16);
    v5[2] = v8;
    v9 = *(a2 + 64);
    v5[3] = *(a2 + 48);
    v5[4] = v9;
  }

  return v5;
}

void pxrInternal__aapl__pxrReserved__::Ts_SplineData::~Ts_SplineData(pxrInternal__aapl__pxrReserved__::Ts_SplineData *this)
{
  *this = &unk_2A2045470;
  sub_29A1B2944(this + 104);
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Ts_SplineData::HasInnerLoops(pxrInternal__aapl__pxrReserved__::Ts_SplineData *this, unint64_t *a2)
{
  v2 = *(this + 6);
  if (*(this + 7) <= v2 || !*(this + 16) && !*(this + 17))
  {
    return 0;
  }

  v3 = *(this + 10);
  v4 = *(this + 11);
  if (v4 == v3)
  {
    v6 = *(this + 11);
  }

  else
  {
    v5 = v4 - v3;
    v6 = *(this + 10);
    do
    {
      v7 = v5 >> 1;
      v8 = &v6[v5 >> 1];
      v10 = *v8;
      v9 = v8 + 1;
      v5 += ~(v5 >> 1);
      if (v10 < v2)
      {
        v6 = v9;
      }

      else
      {
        v5 = v7;
      }
    }

    while (v5);
  }

  if (v4 == v6 || *v6 != v2)
  {
    return 0;
  }

  if (a2)
  {
    *a2 = v6 - v3;
  }

  return 1;
}

void sub_29A1BE9C0(pxrInternal__aapl__pxrReserved__::Ts_SplineData *this)
{
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  pxrInternal__aapl__pxrReserved__::Ts_SplineData::~Ts_SplineData(this);
}

void sub_29A1BEA04(pxrInternal__aapl__pxrReserved__::Ts_SplineData *this)
{
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  pxrInternal__aapl__pxrReserved__::Ts_SplineData::~Ts_SplineData(this);

  operator delete(v3);
}

uint64_t sub_29A1BEA4C(uint64_t a1)
{
  if (*(a1 + 8))
  {

    return pxrInternal__aapl__pxrReserved__::Ts_GetType<double>();
  }

  else
  {
    v4[1] = v1;
    v4[2] = v2;
    pxrInternal__aapl__pxrReserved__::TfType::TfType(v4);
    return v4[0];
  }
}

char *sub_29A1BEA94(uint64_t a1)
{
  v2 = operator new(0xA8uLL);
  *v2 = &unk_2A2045470;
  *(v2 + 24) = *(a1 + 24);
  *(v2 + 40) = *(a1 + 40);
  *(v2 + 56) = *(a1 + 56);
  v3 = *(a1 + 80);
  *(v2 + 9) = *(a1 + 72);
  v4 = *(a1 + 8);
  *(v2 + 10) = 0;
  *(v2 + 8) = v4;
  v5 = *(a1 + 88);
  *(v2 + 11) = 0;
  *(v2 + 12) = 0;
  sub_29A00C8EC(v2 + 10, v3, v5, (v5 - v3) >> 3);
  sub_29A1BF534((v2 + 104), a1 + 104);
  *v2 = &unk_2A2045520;
  *(v2 + 19) = 0;
  *(v2 + 20) = 0;
  *(v2 + 18) = 0;
  sub_29A1BF8D0(v2 + 18, *(a1 + 144), *(a1 + 152), (*(a1 + 152) - *(a1 + 144)) >> 6);
  return v2;
}

void sub_29A1BEB74(_Unwind_Exception *a1)
{
  pxrInternal__aapl__pxrReserved__::Ts_SplineData::~Ts_SplineData(v1);
  operator delete(v1);
  _Unwind_Resume(a1);
}

BOOL sub_29A1BEBB0(uint64_t a1, uint64_t a2)
{
  if (((*(a2 + 8) ^ *(a1 + 8)) & 0xF) != 0)
  {
    return 0;
  }

  if (pxrInternal__aapl__pxrReserved__::TsExtrapolation::operator!=(a1 + 16, a2 + 16))
  {
    return 0;
  }

  if (pxrInternal__aapl__pxrReserved__::TsExtrapolation::operator!=(a1 + 32, a2 + 32))
  {
    return 0;
  }

  if (pxrInternal__aapl__pxrReserved__::TsLoopParams::operator!=(a1 + 48, a2 + 48))
  {
    return 0;
  }

  if (!sub_29A1BF9FC(a1 + 104, (a2 + 104)))
  {
    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  return sub_29A1BF988((a1 + 144), v4 + 18);
}

void sub_29A1BEC9C(uint64_t a1, unint64_t a2)
{
  sub_29A08AF9C(a1 + 80, a2);

  sub_29A1BFA88(a1 + 144, a2);
}

const void ****sub_29A1BECE0(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtDictionary *a3)
{
  sub_29A08B03C((a1 + 80), a2);
  sub_29A1B30D4(a1 + 144, a2);
  result = pxrInternal__aapl__pxrReserved__::VtDictionary::empty(a3);
  if ((result & 1) == 0)
  {
    v8 = a2;
    v7 = sub_29A1BFB28(a1 + 104, a2, &unk_29B4D6118, &v8);
    return pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(v7 + 3, a3);
  }

  return result;
}

uint64_t sub_29A1BED64(uint64_t a1, unint64_t a2, const void ****this)
{
  v7 = *(a1 + 80);
  v8 = *(a1 + 88);
  v6 = (a1 + 80);
  if (v8 == v7)
  {
    v11 = v8;
  }

  else
  {
    v9 = (v8 - v7) >> 3;
    v10 = *a2;
    v11 = v7;
    do
    {
      v12 = v9 >> 1;
      v13 = &v11[8 * (v9 >> 1)];
      v15 = *v13;
      v14 = (v13 + 1);
      v9 += ~(v9 >> 1);
      if (v15 < v10)
      {
        v11 = v14;
      }

      else
      {
        v9 = v12;
      }
    }

    while (v9);
  }

  v16 = (v11 - v7);
  v17 = (v11 - v7) >> 3;
  if (v8 == v11 || *v11 != *a2)
  {
    sub_29A1BFD8C(v6, v11, a2);
    sub_29A1BFF60((a1 + 144), (*(a1 + 144) + 8 * v16), a2);
  }

  else
  {
    *v11 = *a2;
    v18 = (*(a1 + 144) + (v17 << 6));
    v19 = *a2;
    v20 = *(a2 + 16);
    v21 = *(a2 + 48);
    v18[2] = *(a2 + 32);
    v18[3] = v21;
    *v18 = v19;
    v18[1] = v20;
  }

  if (!pxrInternal__aapl__pxrReserved__::VtDictionary::empty(this))
  {
    v24 = a2;
    v22 = sub_29A1BFB28(a1 + 104, a2, &unk_29B4D6118, &v24);
    pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(v22 + 3, this);
  }

  return v17;
}

__n128 sub_29A1BEE84(uint64_t a1, uint64_t a2)
{
  v4 = operator new(0x40uLL);
  v5 = *(a1 + 144) + (a2 << 6);
  v6 = *(v5 + 16);
  *v4 = *v5;
  v4[1] = v6;
  result = *(v5 + 32);
  v8 = *(v5 + 48);
  v4[2] = result;
  v4[3] = v8;
  return result;
}

__n128 sub_29A1BEEC8(void *a1, __n128 result)
{
  v2 = a1[10];
  v3 = a1[11];
  if (v3 == v2)
  {
    v5 = a1[11];
  }

  else
  {
    v4 = v3 - v2;
    v5 = a1[10];
    do
    {
      v6 = v4 >> 1;
      v7 = &v5[v4 >> 1];
      v9 = *v7;
      v8 = v7 + 1;
      v4 += ~(v4 >> 1);
      if (v9 < result.n128_f64[0])
      {
        v5 = v8;
      }

      else
      {
        v4 = v6;
      }
    }

    while (v4);
  }

  if (v3 != v5 && *v5 == result.n128_f64[0])
  {
    v10 = a1[18] + 8 * (v5 - v2);
    v11 = operator new(0x40uLL);
    v12 = *(v10 + 16);
    *v11 = *v10;
    v11[1] = v12;
    result = *(v10 + 32);
    v13 = *(v10 + 48);
    v11[2] = result;
    v11[3] = v13;
  }

  return result;
}

__n128 sub_29A1BEF74@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (*(a1 + 144) + (a2 << 6));
  pxrInternal__aapl__pxrReserved__::Ts_KnotData::Ts_KnotData(a3);
  v5 = *v4;
  *(a3 + 9) = *(v4 + 9);
  *a3 = v5;
  *(a3 + 32) = v4[2];
  result = v4[3];
  *(a3 + 48) = result;
  return result;
}