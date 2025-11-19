void sub_29A4C39A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A4C3A60(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29A4C39C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x20uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  *(v8 + 4) = **a3;
  result = operator new(0x20uLL);
  *result = 0;
  *(result + 1) = 0;
  *(result + 2) = 0;
  *(result + 6) = 0;
  v8[3] = result;
  atomic_fetch_add_explicit(result + 6, 1u, memory_order_relaxed);
  *(a4 + 16) = 1;
  return result;
}

void sub_29A4C3A60(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A4BF944(v2 + 3);
    }

    operator delete(v2);
  }
}

uint64_t sub_29A4C3AC4(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29A4C3B68((a1 + 8));
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 56));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29A4C3B54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4C3B68(uint64_t *a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  sub_29A4C3088(&v14, "Usd", "Usd_CrateDataImpl::Open", "field data");
  v3 = *a1[4];
  result = sub_29A4C3E68(v3, (a1[2] - a1[1]) >> 2);
  v5 = a1[1];
  if (a1[2] != v5)
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = *a1[3];
      if (*v5 >= ((*(a1[3] + 8) - v8) >> 4))
      {
        break;
      }

      v9 = v8 + 16 * v5[v7];
      v10 = *(v9 + 4);
      v11 = *(*(v2 + 88) + 120);
      if (v10 >= (*(*(v2 + 88) + 128) - v11) >> 3)
      {
        break;
      }

      sub_29A166F2C((*v3 + v6), (v11 + 8 * v10));
      v12 = *(v9 + 8);
      v18 = 0;
      if ((v12 & 0x4000000000000000) != 0 || BYTE6(v12) == 46 || BYTE6(v12) == 41)
      {
        v13 = *(v2 + 88);
        v16[1] = 0;
        pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_UnpackValue(v13, v12, v16);
        sub_29A18606C(&v17, v16);
        sub_29A186B14(v16);
      }

      else
      {
        v17 = v12;
        v18 = &off_2A2051828 + 3;
      }

      sub_29A18606C((*v3 + v6 + 8), &v17);
      result = sub_29A186B14(&v17);
      ++v7;
      v5 = a1[1];
      v6 += 24;
      if (v7 >= (a1[2] - v5) >> 2)
      {
        goto LABEL_13;
      }
    }

    *a1[5] = 1;
  }

LABEL_13:
  if (v14)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v15, v14);
  }

  return result;
}

void sub_29A4C3D1C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void *sub_29A4C3E68(void *result, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    return sub_29A4C3EA4(result, v4);
  }

  if (!v3)
  {
    return sub_29A3218CC(result, *result + 24 * a2);
  }

  return result;
}

void *sub_29A4C3EA4(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = &v4[3 * a2];
      do
      {
        *v4 = 0;
        v4[2] = 0;
        v4 += 3;
      }

      while (v4 != v11);
      v4 = v11;
    }

    result[1] = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
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

    v21 = result;
    if (v9)
    {
      v10 = sub_29A012C48(result, v9);
    }

    else
    {
      v10 = 0;
    }

    v12 = &v10[24 * v6];
    v18 = v10;
    v19 = v12;
    *(&v20 + 1) = &v10[24 * v9];
    v13 = v12;
    do
    {
      *v13 = 0;
      *(v13 + 2) = 0;
      v13 += 24;
    }

    while (v13 != &v12[24 * a2]);
    *&v20 = &v12[24 * a2];
    v14 = *(v3 + 8);
    v15 = &v12[*v3 - v14];
    sub_29A321F84(v3, *v3, v14, v15);
    v16 = *v3;
    *v3 = v15;
    v17 = *(v3 + 16);
    *(v3 + 8) = v20;
    *&v20 = v16;
    *(&v20 + 1) = v17;
    v18 = v16;
    v19 = v16;
    return sub_29A3220F0(&v18);
  }

  return result;
}

void sub_29A4C3FFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A3220F0(va);
  _Unwind_Resume(a1);
}

void *sub_29A4C413C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &off_2A2051828 + 3;
  return result;
}

uint64_t sub_29A4C415C(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v8);
  v2 = *(a1 + 16);
  v3 = 0xAAAAAAAAAAAAAAABLL * ((v2[1] - *v2) >> 2);
  v9[0] = *(a1 + 8);
  v9[1] = v2;
  v10 = *(a1 + 24);
  v11 = *(a1 + 40);
  sub_29A4C423C(0, v3, 1uLL, v9, &v12);
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v5 = v8;
  v6 = atomic_load((v4 + 144));
  if (v5 < v6 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v8, v4))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v8, *(a1 + 48));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v8);
  return 0;
}

void sub_29A4C4228(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void sub_29A4C423C(unint64_t a1, unint64_t a2, unint64_t a3, void *a4, uint64_t a5)
{
  if (a3)
  {
    if (a1 < a2)
    {
      v10 = v5;
      v11 = v6;
      v7[2] = a3;
      v8 = (~a1 + a2) / a3 + 1;
      v9 = xmmword_29B430070;
      v7[0] = a4;
      v7[1] = a1;
      sub_29A4C42B0(&v8, v7, a5, a4);
    }
  }

  else
  {

    tbb::internal::throw_exception_v4(3);
  }
}

void sub_29A4C42B0(__int128 *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x29EDCA608];
  if (*(a1 + 1) < *a1)
  {
    v11[0] = 1;
    v12 = 65539;
    v13 = 49;
    tbb::task_group_context::init(v11, a2, a3, a4);
    v10 = v11;
    v6 = tbb::internal::allocate_root_with_context_proxy::allocate(&v10, 0x48uLL);
    *(v6 - 11) = 1;
    *v6 = &unk_2A2051948;
    v7 = *a1;
    *(v6 + 24) = *(a1 + 2);
    *(v6 + 8) = v7;
    v8 = *a2;
    *(v6 + 48) = *(a2 + 16);
    *(v6 + 32) = v8;
    initial_auto_partitioner_divisor = tbb::internal::get_initial_auto_partitioner_divisor(v6);
    *(v6 + 64) = 0;
    *(v6 + 68) = 5;
    *(v6 + 56) = (initial_auto_partitioner_divisor >> 1) & 0x7FFFFFFFFFFFFFFELL;
    (*(**(v6 - 40) + 16))(*(v6 - 40), v6, v6 - 8);
    tbb::task_group_context::~task_group_context(v11);
  }
}

void sub_29A4C43F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  tbb::task_group_context::~task_group_context(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4C443C(uint64_t a1)
{
  v3 = *(a1 + 56);
  v2 = a1 + 56;
  if (!v3)
  {
    *(a1 + 56) = 1;
    if (*(a1 - 11) < 0)
    {
      v4 = *(a1 - 32);
      if (*(v4 - 24) >= 2)
      {
        __dmb(0xBu);
        *(v4 + 8) = 1;
        v5 = *(a1 + 68);
        if (v5 <= 1)
        {
          LOBYTE(v5) = 1;
        }

        *(a1 + 68) = v5 + 1;
      }
    }
  }

  sub_29A4C44AC(v2, a1, (a1 + 8));
  return 0;
}

void sub_29A4C44AC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3[2] < *a3 - a3[1])
  {
    if (*a1 > 1uLL)
    {
      goto LABEL_6;
    }

    if (*a1)
    {
LABEL_4:
      if (*(a1 + 12))
      {
        --*(a1 + 12);
        *a1 = 0;
LABEL_6:
        while (1)
        {
          sub_29A4C4560(a2);
          if (a3[2] >= *a3 - a3[1])
          {
            break;
          }

          if (*a1 <= 1uLL)
          {
            if (*a1)
            {
              goto LABEL_4;
            }

            break;
          }
        }
      }
    }
  }

  sub_29A4C4684(a1, a2, a3);
}

uint64_t sub_29A4C4560(uint64_t a1)
{
  v2 = tbb::internal::allocate_continuation_proxy::allocate(a1, 0x10uLL);
  *(v2 - 11) = 1;
  *v2 = &unk_2A204C520;
  __dmb(0xBu);
  v2[8] = 0;
  *(a1 - 32) = v2;
  *(v2 - 3) = 2;
  v3 = tbb::internal::allocate_child_proxy::allocate(v2, 0x48uLL);
  *(v3 - 11) = 1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *v3 = &unk_2A2051948;
  *(v3 + 8) = v4;
  v6 = v5 + ((v4 - v5) >> 1);
  *(a1 + 8) = v6;
  v7 = *(a1 + 24);
  *(v3 + 16) = v6;
  *(v3 + 24) = v7;
  v8 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v8;
  v9 = *(a1 + 56) >> 1;
  *(a1 + 56) = v9;
  *(v3 + 56) = v9;
  *(v3 + 64) = 2;
  *(v3 + 68) = *(a1 + 68);
  v10 = ***(v3 - 40);

  return v10();
}

void sub_29A4C4684(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (a3[2] < *a3 - a3[1] && *(a1 + 12))
  {
    *v9 = 0x10000;
    v10 = *a3;
    v11 = a3[2];
    while (1)
    {
      sub_29A3B10B4(v9, *(a1 + 12));
      v5 = *(*(a2 - 32) + 8);
      __dmb(0xBu);
      if (v5)
      {
        v6 = *(a1 + 12) + 1;
        *(a1 + 12) = v6;
        v7 = v9[2];
        if (v9[2] >= 2u)
        {
          sub_29A4C4864(a2, &v10 + 24 * v9[1], v9[v9[1] + 3]);
          v7 = --v9[2];
          v9[1] = (v9[1] + 1) & 7;
          goto LABEL_9;
        }

        v8 = v9[0];
        if (v9[v9[0] + 3] < v6 && *(&v10 + 3 * v9[0] + 2) < *(&v10 + 3 * v9[0]) - *(&v10 + 3 * v9[0] + 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v8 = v9[0];
      }

      sub_29A4C4994((a2 + 32), &v10 + 3 * v8);
      v7 = --v9[2];
      v9[0] = (v9[0] - 1) & 7;
LABEL_9:
      if (!v7 || tbb::task_group_context::is_group_execution_cancelled(*(a2 - 56)))
      {
        return;
      }
    }
  }

  sub_29A4C4994((a2 + 32), a3);
}

uint64_t sub_29A4C4864(uint64_t a1, uint64_t a2, char a3)
{
  v6 = tbb::internal::allocate_continuation_proxy::allocate(a1, 0x10uLL);
  *(v6 - 11) = 1;
  *v6 = &unk_2A204C520;
  __dmb(0xBu);
  v6[8] = 0;
  *(a1 - 32) = v6;
  *(v6 - 3) = 2;
  v7 = tbb::internal::allocate_child_proxy::allocate(v6, 0x48uLL);
  *(v7 - 11) = 1;
  *v7 = &unk_2A2051948;
  v8 = *(a2 + 16);
  *(v7 + 8) = *a2;
  *(v7 + 24) = v8;
  v9 = *(a1 + 32);
  *(v7 + 48) = *(a1 + 48);
  *(v7 + 32) = v9;
  v10 = *(a1 + 56) >> 1;
  *(a1 + 56) = v10;
  *(v7 + 56) = v10;
  *(v7 + 64) = 2;
  *(v7 + 68) = *(a1 + 68) - a3;
  v11 = ***(v7 - 40);

  return v11();
}

uint64_t *sub_29A4C4994(uint64_t *result, void *a2)
{
  v2 = a2[1];
  v3 = *a2 - v2;
  if (*a2 > v2)
  {
    v4 = result;
    v5 = result[2];
    v6 = result[1] + v5 * v2;
    v7 = 12 * v5;
    v8 = 12 * v6 + 8;
    v9 = 8 * v6;
    v10 = 8 * v5;
    do
    {
      v11 = *v4;
      v12 = *(**(*v4 + 16) + v9);
      v13 = (**(*v4 + 8) + v8);
      *(v12 + 8) = *v13;
      result = sub_29A36D5B0(*(v11 + 24), v13 - 1);
      if (result)
      {
        result = sub_29A4C4A50(v12, result + 3);
      }

      else
      {
        atomic_store(0, *(v11 + 32));
      }

      v8 += v7;
      v9 += v10;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t *sub_29A4C4A50(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit((v3 + 24), 1u, memory_order_relaxed);
  }

  sub_29A4BF944(a1);
  *a1 = v3;
  v5 = 0;
  sub_29A4BF944(&v5);
  return a1;
}

uint64_t sub_29A4C4AA8(uint64_t a1)
{
  sub_29A4C4AE4(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A4C4AE4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4BF944(v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4C4B28(int *a1, int *a2, uint64_t a3, void *a4)
{
  if (a2 > a1)
  {
    v6 = (a2 - a1) >> 3;
    if (v6 > 499)
    {

      sub_29A4C4B84(a1, a2, a3, a4);
    }

    else
    {
      *&v7[1] = v4;
      v8 = v5;
      sub_29A4C4CD4(a1, a2, v7, 126 - 2 * __clz(v6), 1);
    }
  }
}

void sub_29A4C4B84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x29EDCA608];
  v14[0] = 1;
  v15 = 65539;
  v16 = 54;
  tbb::task_group_context::init(v14, a2, a3, a4);
  v7 = (a1 + 8);
  v8 = a1;
  while ((sub_29A4C0658(a3, v7, v8) & 1) == 0)
  {
    v8 = (v8 + 8);
    v7 = (v7 + 8);
    if (v8 == (a1 + 72))
    {
      *&v12 = a2;
      *(&v12 + 1) = a1 + 80;
      v13 = 1;
      v11 = a3;
      sub_29A4C5E34(&v12, &v11, &v10, v14);
      if (!tbb::task_group_context::is_group_execution_cancelled(v14))
      {
        goto LABEL_6;
      }

      break;
    }
  }

  *&v12 = a3;
  *(&v12 + 1) = (a2 - a1) >> 3;
  v13 = a1;
  sub_29A4C64B4(&v12, &v11, &v10, v9);
LABEL_6:
  tbb::task_group_context::~task_group_context(v14);
}

void sub_29A4C4CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  tbb::task_group_context::~task_group_context(va);
  _Unwind_Resume(a1);
}

int *sub_29A4C4CD4(int *result, int *a2, int a3, uint64_t a4, char a5)
{
  v12 = a2 - 6;
  v13 = a2 - 4;
  v8 = result;
  v9 = (a2 - result) >> 3;
  if (v9 > 2)
  {
    switch(v9)
    {
      case 3uLL:

        return sub_29A4C07A8(result, result + 2, a2 - 2, a3);
      case 4uLL:

        return sub_29A4C08B0(result, result + 2, result + 4, a2 - 2, a3);
      case 5uLL:

        return sub_29A4C099C(result, result + 2, result + 4, result + 6, a2 - 2, a3);
    }
  }

  else
  {
    if (v9 < 2)
    {
      return result;
    }

    if (v9 == 2)
    {
      result = sub_29A4C0658(a3, (a2 - 2), result);
      if (result)
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(v8, a2 - 2);

        return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(v8 + 1, a2 - 1);
      }

      return result;
    }
  }

  if (v9 <= 23)
  {
    if (a5)
    {

      return sub_29A4C50C4(result, a2, a3);
    }

    else
    {

      return sub_29A4C5210(result, a2, a3);
    }
  }

  else
  {
    if (a4 != 0)
    {
      v10 = v9 >> 1;
      v11 = &result[2 * (v9 >> 1)];
      if (v9 < 0x81)
      {
        sub_29A4C07A8(&result[2 * (v9 >> 1)], result, a2 - 2, a3);
        if (a5)
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_29A4C07A8(result, &result[2 * (v9 >> 1)], a2 - 2, a3);
        sub_29A4C07A8(v8 + 2, v11 - 2, v13, a3);
        sub_29A4C07A8(v8 + 4, &v8[2 * v10 + 2], v12, a3);
        sub_29A4C07A8(v11 - 2, v11, &v8[2 * v10 + 2], a3);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(v8, v11);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(v8 + 1, v11 + 1);
        if (a5)
        {
          goto LABEL_15;
        }
      }

      if ((sub_29A4C0658(a3, (v8 - 2), v8) & 1) == 0)
      {
        sub_29A4C5348(v8, a2, a3);
      }

LABEL_15:
      sub_29A4C5508(v8, a2, a3);
    }

    if (result != a2)
    {

      return sub_29A4C5914(result, a2, a2, a3);
    }
  }

  return result;
}

_DWORD *sub_29A4C50C4(_DWORD *result, _DWORD *a2, int a3)
{
  if (result != a2)
  {
    v4 = (result + 2);
    if (result + 2 != a2)
    {
      v6 = 0;
      v7 = result;
      do
      {
        v8 = v4;
        result = sub_29A4C0658(a3, v4, v7);
        if (result)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(v8);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(v7 + 3);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        v4 = (v8 + 8);
        v6 += 8;
        v7 = v8;
      }

      while ((v8 + 8) != a2);
    }
  }

  return result;
}

void sub_29A4C51FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A4C5210(_DWORD *result, _DWORD *a2, int a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 2);
    if (result + 2 != a2)
    {
      v7 = result + 3;
      do
      {
        v8 = v5;
        result = sub_29A4C0658(a3, v5, v4);
        if (result)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(v8);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(v4 + 3);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        v5 = (v8 + 8);
        v7 += 2;
        v4 = v8;
      }

      while ((v8 + 8) != a2);
    }
  }

  return result;
}

void sub_29A4C5334(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29A4C5348(int *a1, int *a2, int a3)
{
  v9[0] = *a1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(a1);
  v9[1] = a1[1];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(a1 + 1);
  if (sub_29A4C0658(a3, v9, (a2 - 2)))
  {
    v6 = a1;
    do
    {
      v6 += 2;
    }

    while ((sub_29A4C0658(a3, v9, v6) & 1) == 0);
  }

  else
  {
    v7 = (a1 + 2);
    do
    {
      v6 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v8 = sub_29A4C0658(a3, v9, v7);
      v7 = (v6 + 2);
    }

    while (!v8);
  }

  if (v6 < a2)
  {
    do
    {
      a2 -= 2;
    }

    while ((sub_29A4C0658(a3, v9, a2) & 1) != 0);
  }

  while (v6 < a2)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(v6, a2);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(v6 + 1, a2 + 1);
    do
    {
      v6 += 2;
    }

    while (!sub_29A4C0658(a3, v9, v6));
    do
    {
      a2 -= 2;
    }

    while ((sub_29A4C0658(a3, v9, a2) & 1) != 0);
  }

  if (v6 - 2 != a1)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void sub_29A4C54D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29A4C5508(int *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3)
{
  v11[0] = *a1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(a1);
  v11[1] = a1[1];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(a1 + 1);
  v6 = 0;
  do
  {
    v7 = sub_29A4C0658(a3, &a1[v6 + 2], v11);
    v6 += 2;
  }

  while ((v7 & 1) != 0);
  v8 = &a1[v6];
  if (v6 == 2)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      a2 = (a2 - 8);
    }

    while ((sub_29A4C0658(a3, a2, v11) & 1) == 0);
  }

  else
  {
    do
    {
      a2 = (a2 - 8);
    }

    while (!sub_29A4C0658(a3, a2, v11));
  }

  v9 = &a1[v6];
  if (v8 < a2)
  {
    v10 = a2;
    do
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(v9, v10);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(v9 + 1, v10 + 1);
      do
      {
        v9 += 2;
      }

      while ((sub_29A4C0658(a3, v9, v11) & 1) != 0);
      do
      {
        v10 -= 2;
      }

      while (!sub_29A4C0658(a3, v10, v11));
    }

    while (v9 < v10);
  }

  if (v9 - 2 != a1)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void sub_29A4C56AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4C56D0(int *a1, char *a2, int a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_29A4C07A8(a1, a1 + 2, a2 - 2, a3);
        return 1;
      case 4:
        sub_29A4C08B0(a1, a1 + 2, a1 + 4, a2 - 2, a3);
        return 1;
      case 5:
        sub_29A4C099C(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      if (sub_29A4C0658(a3, (a2 - 8), a1))
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a1, a2 - 2);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(a1 + 1, a2 - 1);
      }

      return 1;
    }
  }

  v7 = (a1 + 4);
  sub_29A4C07A8(a1, a1 + 2, a1 + 4, a3);
  v8 = (a1 + 6);
  if (a1 + 6 != a2)
  {
    v9 = 0;
    do
    {
      if (sub_29A4C0658(a3, v8, v7))
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(v8);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(v8 + 1);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }

      v7 = v8;
      v9 += 8;
      v8 = (v8 + 8);
    }

    while (v8 != a2);
  }

  return 1;
}

void sub_29A4C5900(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

int *sub_29A4C5914(int *a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, int *a3, int a4)
{
  if (a1 != this)
  {
    v6 = this;
    v8 = (this - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        sub_29A4C5A30(a1, a4, v8, v11);
        v11 = (v11 - 8);
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
        if (sub_29A4C0658(a4, v12, a1))
        {
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(v12, a1);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(v12 + 1, a1 + 1);
          sub_29A4C5A30(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        sub_29A4C5BDC(a1, v6, a4, v8);
        v6 = (v6 - 8);
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_29A4C5A30(uint64_t result, int a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::SdfPath *a4)
{
  if (a3 >= 2 && ((a3 - 2) >> 1) >= (a4 - result) >> 3)
  {
    v6 = (a4 - result) >> 2;
    v7 = result + 8 * (v6 + 1);
    if (v6 + 2 < a3)
    {
      if (sub_29A4C0658(a2, (result + 8 * (v6 + 1)), (v7 + 8)))
      {
        v7 += 8;
      }
    }

    result = sub_29A4C0658(a2, v7, a4);
    if ((result & 1) == 0)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(a4);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(a4 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }
  }

  return result;
}

void sub_29A4C5BC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

int *sub_29A4C5BDC(int *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v6 = result;
    v7 = *result;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(result);
    v8 = *(v6 + 4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((v6 + 4));
    sub_29A4C1700(v6, a3, a4);
  }

  return result;
}

void sub_29A4C5CF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4C5D0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v5 = (a2 - 8);
    result = sub_29A4C0658(a3, (result + 8 * ((a4 - 2) >> 1)), (a2 - 8));
    if (result)
    {
      v6 = *v5;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(v5);
      v7 = *(a2 - 4);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((a2 - 4));
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }
  }

  return result;
}

void sub_29A4C5E20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void *sub_29A4C5E34(void *result, void *a2, uint64_t a3, tbb::task_group_context *a4)
{
  if (result[1] < *result)
  {
    v5 = result;
    v9 = a4;
    v6 = tbb::internal::allocate_root_with_context_proxy::allocate(&v9, 0x38uLL);
    *(v6 - 11) = 1;
    *v6 = &unk_2A2051990;
    v7 = v5[2];
    *(v6 + 8) = *v5;
    *(v6 + 24) = v7;
    *(v6 + 32) = *a2;
    initial_auto_partitioner_divisor = tbb::internal::get_initial_auto_partitioner_divisor(v6);
    *(v6 + 48) = 0;
    *(v6 + 52) = 5;
    *(v6 + 40) = (initial_auto_partitioner_divisor >> 1) & 0x7FFFFFFFFFFFFFFELL;
    return (*(**(v6 - 40) + 16))(*(v6 - 40), v6, v6 - 8);
  }

  return result;
}

uint64_t sub_29A4C5F34(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = a1 + 40;
  if (!v3)
  {
    *(a1 + 40) = 1;
    if (*(a1 - 11) < 0)
    {
      v4 = *(a1 - 32);
      if (*(v4 - 24) >= 2)
      {
        __dmb(0xBu);
        *(v4 + 8) = 1;
        v5 = *(a1 + 52);
        if (v5 <= 1)
        {
          LOBYTE(v5) = 1;
        }

        *(a1 + 52) = v5 + 1;
      }
    }
  }

  sub_29A4C5FA4(v2, a1, a1 + 8);
  return 0;
}

void sub_29A4C5FA4(uint64_t a1, tbb::internal::allocate_continuation_proxy *a2, uint64_t a3)
{
  if (*(a3 + 16) < ((*a3 - *(a3 + 8)) >> 3))
  {
    if (*a1 > 1uLL)
    {
      goto LABEL_6;
    }

    if (*a1)
    {
LABEL_4:
      if (*(a1 + 12))
      {
        --*(a1 + 12);
        *a1 = 0;
LABEL_6:
        while (1)
        {
          sub_29A4C6058(a2);
          if (*(a3 + 16) >= ((*a3 - *(a3 + 8)) >> 3))
          {
            break;
          }

          if (*a1 <= 1uLL)
          {
            if (*a1)
            {
              goto LABEL_4;
            }

            break;
          }
        }
      }
    }
  }

  sub_29A4C612C(a1, a2, a3);
}

uint64_t sub_29A4C6058(tbb::internal::allocate_continuation_proxy *a1)
{
  v2 = tbb::internal::allocate_continuation_proxy::allocate(a1, 0x10uLL);
  *(v2 - 11) = 1;
  *v2 = &unk_2A204C520;
  __dmb(0xBu);
  v2[8] = 0;
  *(a1 - 4) = v2;
  *(v2 - 3) = 2;
  v3 = tbb::internal::allocate_child_proxy::allocate(v2, 0x38uLL);
  v4 = ***(sub_29A4C630C(v3, a1) - 40);

  return v4();
}

void sub_29A4C612C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(a3 + 2) < ((*a3 - *(a3 + 1)) >> 3) && *(a1 + 12))
  {
    *v9 = 0x10000;
    v10 = *a3;
    v11 = *(a3 + 2);
    while (1)
    {
      sub_29A4C1E3C(v9, *(a1 + 12));
      v5 = *(*(a2 - 32) + 8);
      __dmb(0xBu);
      if (v5)
      {
        v6 = *(a1 + 12) + 1;
        *(a1 + 12) = v6;
        v7 = v9[2];
        if (v9[2] >= 2u)
        {
          sub_29A4C638C(a2, &v10 + 24 * v9[1], v9[v9[1] + 3]);
          v7 = --v9[2];
          v9[1] = (v9[1] + 1) & 7;
          goto LABEL_9;
        }

        v8 = v9[0];
        if (v9[v9[0] + 3] < v6 && *(&v10 + 3 * v9[0] + 2) < ((*(&v10 + 3 * v9[0]) - *(&v10 + 3 * v9[0] + 1)) >> 3))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v8 = v9[0];
      }

      sub_29A4C2018((a2 + 32), &v10 + 3 * v8);
      v7 = --v9[2];
      v9[0] = (v9[0] - 1) & 7;
LABEL_9:
      if (!v7 || tbb::task_group_context::is_group_execution_cancelled(*(a2 - 56)))
      {
        return;
      }
    }
  }

  sub_29A4C2018((a2 + 32), a3);
}

uint64_t sub_29A4C630C(uint64_t result, uint64_t a2)
{
  *(result - 11) = 1;
  *result = &unk_2A2051990;
  v2 = *(a2 + 8);
  *(result + 8) = v2;
  v3 = *(a2 + 16) + 8 * ((((v2 - *(a2 + 16)) >> 3) + ((v2 - *(a2 + 16)) >> 63)) >> 1);
  *(a2 + 8) = v3;
  *(result + 16) = v3;
  *(result + 24) = *(a2 + 24);
  *(result + 32) = *(a2 + 32);
  v4 = *(a2 + 40) >> 1;
  *(a2 + 40) = v4;
  *(result + 40) = v4;
  *(result + 48) = 2;
  *(result + 52) = *(a2 + 52);
  return result;
}

uint64_t sub_29A4C638C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = tbb::internal::allocate_continuation_proxy::allocate(a1, 0x10uLL);
  *(v6 - 11) = 1;
  *v6 = &unk_2A204C520;
  __dmb(0xBu);
  v6[8] = 0;
  *(a1 - 32) = v6;
  *(v6 - 3) = 2;
  v7 = tbb::internal::allocate_child_proxy::allocate(v6, 0x38uLL);
  *(v7 - 11) = 1;
  *v7 = &unk_2A2051990;
  v8 = *(a2 + 16);
  *(v7 + 8) = *a2;
  *(v7 + 24) = v8;
  *(v7 + 32) = *(a1 + 32);
  v9 = *(a1 + 40) >> 1;
  *(a1 + 40) = v9;
  *(v7 + 40) = v9;
  *(v7 + 48) = 2;
  *(v7 + 52) = *(a1 + 52) - a3;
  v10 = ***(v7 - 40);

  return v10();
}

void sub_29A4C64B4(__int128 *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(a1 + 1))
  {
    v9[0] = 1;
    v10 = 65539;
    v11 = 49;
    tbb::task_group_context::init(v9, a2, a3, a4);
    v8 = v9;
    v5 = tbb::internal::allocate_root_with_context_proxy::allocate(&v8, 0x38uLL);
    *(v5 - 11) = 1;
    *v5 = &unk_2A20519D8;
    v6 = *a1;
    *(v5 + 24) = *(a1 + 2);
    *(v5 + 8) = v6;
    initial_auto_partitioner_divisor = tbb::internal::get_initial_auto_partitioner_divisor(v5);
    *(v5 + 48) = 0;
    *(v5 + 52) = 5;
    *(v5 + 40) = (initial_auto_partitioner_divisor >> 1) & 0x7FFFFFFFFFFFFFFELL;
    (*(**(v5 - 40) + 16))(*(v5 - 40), v5, v5 - 8);
    tbb::task_group_context::~task_group_context(v9);
  }
}

void sub_29A4C65DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  tbb::task_group_context::~task_group_context(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4C6628(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = a1 + 40;
  if (!v3)
  {
    *(a1 + 40) = 1;
    if (*(a1 - 11) < 0)
    {
      v4 = *(a1 - 32);
      if (*(v4 - 24) >= 2)
      {
        __dmb(0xBu);
        *(v4 + 8) = 1;
        v5 = *(a1 + 52);
        if (v5 <= 1)
        {
          LOBYTE(v5) = 1;
        }

        *(a1 + 52) = v5 + 1;
      }
    }
  }

  sub_29A4C6698(v2, a1, a1 + 8);
  return 0;
}

uint64_t sub_29A4C6698(uint64_t a1, tbb::internal::allocate_continuation_proxy *a2, uint64_t a3)
{
  if (*(a3 + 8) >= 0x1F4uLL)
  {
    if (*a1 <= 1uLL)
    {
      if (!*a1 || !*(a1 + 12))
      {
        return sub_29A4C6840(a1, a2, a3);
      }

      --*(a1 + 12);
      *a1 = 0;
    }

    sub_29A4C676C(a2);
    if (*(a3 + 8) >= 0x1F4uLL)
    {
      do
      {
        if (*a1 <= 1uLL)
        {
          if (!*a1 || !*(a1 + 12))
          {
            return sub_29A4C6840(a1, a2, a3);
          }

          --*(a1 + 12);
          *a1 = 0;
        }

        sub_29A4C676C(a2);
      }

      while (*(a3 + 8) > 0x1F3uLL);
    }
  }

  return sub_29A4C6840(a1, a2, a3);
}

uint64_t sub_29A4C676C(tbb::internal::allocate_continuation_proxy *a1)
{
  v2 = tbb::internal::allocate_continuation_proxy::allocate(a1, 0x10uLL);
  *(v2 - 11) = 1;
  *v2 = &unk_2A204C520;
  __dmb(0xBu);
  v2[8] = 0;
  *(a1 - 4) = v2;
  *(v2 - 3) = 2;
  v3 = tbb::internal::allocate_child_proxy::allocate(v2, 0x38uLL);
  v4 = ***(sub_29A4C6A0C(v3, a1) - 40);

  return v4();
}

uint64_t sub_29A4C6840(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = *(a3 + 1);
  if (v3 >= 0x1F4 && *(a1 + 12))
  {
    *v18 = 0x10000;
    v19 = *a3;
    v20 = *(a3 + 2);
    while (1)
    {
      result = sub_29A4C2A28(v18, *(a1 + 12));
      v7 = *(*(a2 - 32) + 8);
      __dmb(0xBu);
      if ((v7 & 1) == 0)
      {
        break;
      }

      v8 = *(a1 + 12) + 1;
      *(a1 + 12) = v8;
      v9 = v18[2];
      if (v18[2] < 2u)
      {
        v10 = v18[0];
        if (v18[v18[0] + 3] >= v8 || *(&v19 + 3 * v18[0] + 1) <= 0x1F3uLL)
        {
          goto LABEL_8;
        }
      }

      else
      {
        result = sub_29A4C6A9C(a2, (&v19 + 24 * v18[1]), v18[v18[1] + 3]);
        v9 = --v18[2];
        v18[1] = (v18[1] + 1) & 7;
      }

LABEL_12:
      if (v9)
      {
        result = tbb::task_group_context::is_group_execution_cancelled(*(a2 - 56));
        if (!result)
        {
          continue;
        }
      }

      return result;
    }

    v10 = v18[0];
LABEL_8:
    v12 = *(&v19 + 3 * v10 + 1);
    v11 = *(&v19 + 3 * v10 + 2);
    v13 = 126 - 2 * __clz(v12);
    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    result = sub_29A4C4CD4(v11, &v11[2 * v12], &v17, v14, 1);
    v9 = --v18[2];
    v18[0] = (v18[0] - 1) & 7;
    goto LABEL_12;
  }

  v15 = 126 - 2 * __clz(v3);
  if (v3)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return sub_29A4C4CD4(*(a3 + 2), (*(a3 + 2) + 8 * v3), v18, v16, 1);
}

uint64_t sub_29A4C6A0C(uint64_t a1, uint64_t a2)
{
  *(a1 - 11) = 1;
  *a1 = &unk_2A20519D8;
  v3 = a2 + 8;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = sub_29A4C26B4((a1 + 8), a2 + 8);
  *(a1 + 24) = *(v3 + 16) + 8 * *(v3 + 8) + 8;
  v4 = *(v3 + 32) >> 1;
  *(v3 + 32) = v4;
  *(a1 + 40) = v4;
  *(a1 + 48) = 2;
  *(a1 + 52) = *(v3 + 44);
  return a1;
}

uint64_t sub_29A4C6A9C(uint64_t a1, __int128 *a2, char a3)
{
  v6 = tbb::internal::allocate_continuation_proxy::allocate(a1, 0x10uLL);
  *(v6 - 11) = 1;
  *v6 = &unk_2A204C520;
  __dmb(0xBu);
  v6[8] = 0;
  *(a1 - 32) = v6;
  *(v6 - 3) = 2;
  v7 = tbb::internal::allocate_child_proxy::allocate(v6, 0x38uLL);
  *(v7 - 11) = 1;
  *v7 = &unk_2A20519D8;
  v8 = *a2;
  *(v7 + 24) = *(a2 + 2);
  *(v7 + 8) = v8;
  v9 = *(a1 + 40) >> 1;
  *(a1 + 40) = v9;
  *(v7 + 40) = v9;
  *(v7 + 48) = 2;
  *(v7 + 52) = *(a1 + 52) - a3;
  v10 = ***(v7 - 40);

  return v10();
}

BOOL sub_29A4C6BBC(void *a1, pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  v19 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(this, &v15);
  TargetPath = pxrInternal__aapl__pxrReserved__::SdfPath::GetTargetPath(this);
  sub_29A1E21F4(&v14, TargetPath);
  sub_29A1E2240(&v14 + 1, TargetPath + 1);
  sub_29A4C6DEC(&v17, &v15, a1, 0);
  if (v18)
  {
    if ((v18 & 4) != 0)
    {
      v5 = (*((v18 & 0xFFFFFFFFFFFFFFF8) + 168))(&v17);
    }

    else
    {
      v5 = v17;
    }

    if (*v5 == 1)
    {
      v6 = *(v5 + 8);
      v7 = *(v5 + 16);
      if (v6 != v7)
      {
        while (*v6 != v14)
        {
          if (++v6 == v7)
          {
            goto LABEL_24;
          }
        }
      }

LABEL_25:
      v8 = v6 != v7;
      goto LABEL_26;
    }

    v9 = *(v5 + 32);
    v10 = *(v5 + 40);
    if (v9 != v10)
    {
      while (*v9 != v14)
      {
        if (++v9 == v10)
        {
          goto LABEL_15;
        }
      }
    }

    if (v9 == v10)
    {
LABEL_15:
      v11 = *(v5 + 56);
      v12 = *(v5 + 64);
      if (v11 != v12)
      {
        while (*v11 != v14)
        {
          if (++v11 == v12)
          {
            goto LABEL_21;
          }
        }
      }

      if (v11 == v12)
      {
LABEL_21:
        v6 = *(v5 + 80);
        v7 = *(v5 + 88);
        if (v6 != v7)
        {
          while (*v6 != v14)
          {
            if (++v6 == v7)
            {
LABEL_24:
              v6 = v7;
              goto LABEL_25;
            }
          }
        }

        goto LABEL_25;
      }
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

LABEL_26:
  sub_29A186B14(&v17);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14 + 1);
  sub_29A1DE3A4(&v14);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
  sub_29A1DE3A4(&v15);
  return v8;
}

void sub_29A4C6D9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  sub_29A186B14(va2);
  sub_29A1DCEA8(va);
  sub_29A1DCEA8(va1);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A4C6DEC@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::SdfPath *this@<X1>, void *a3@<X0>, int *a4@<X2>)
{
  v12[2] = *MEMORY[0x29EDCA608];
  *(a1 + 1) = 0;
  result = pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPropertyPath(this);
  if (!result)
  {
    goto LABEL_11;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v9)
  {
    v9 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  if (sub_29A4BD988(a3, this, v9 + 55, a1, 0))
  {
    v10 = 8;
  }

  else
  {
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v11)
    {
      v11 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    v10 = sub_29A4BD988(a3, this, v11 + 7, a1, 0);
  }

  result = sub_29A1E1F54(a1);
  if ((result & 1) == 0)
  {
    v12[1] = 0;
    sub_29A18606C(a1, v12);
    result = sub_29A186B14(v12);
LABEL_11:
    v10 = 0;
  }

  if (a4)
  {
    *a4 = v10;
  }

  return result;
}

uint64_t sub_29A4C6F28(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *a1 & a3;
  v6 = v4 + 32 * v5;
  if (*(v6 + 4) < 0)
  {
LABEL_5:
    v9 = *(a1 + 40);
    v6 = v4 + 32 * v9;
  }

  else
  {
    LOWORD(v7) = 0;
    v8 = *a2;
    while (*(v6 + 8) != v8)
    {
      v7 = (v7 + 1);
      v5 = (v5 + 1) & *a1;
      v6 = v4 + 32 * v5;
      if (v7 > *(v6 + 4))
      {
        goto LABEL_5;
      }
    }

    v9 = *(a1 + 40);
  }

  if (v6 == v4 + 32 * v9)
  {
    return 0;
  }

  sub_29A4C6FB8(a1, v6);
  return 1;
}

_DWORD *sub_29A4C6FB8(_DWORD *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 4) != -1)
  {
    result = sub_29A4BF8B4(a2);
    *(a2 + 4) = -1;
  }

  --*(v3 + 6);
  v4 = *(v3 + 4);
  v5 = (a2 - v4) >> 5;
  v6 = (v5 + 1) & *v3;
  v7 = (v4 + 32 * v6);
  v8 = *(v7 + 2);
  if (v8 >= 1)
  {
    do
    {
      v9 = v8 - 1;
      v10 = v4 + 32 * v5;
      v11 = *v7;
      sub_29A1DDD84((v10 + 8), v7 + 2);
      result = sub_29A1DDDC0((v10 + 12), v7 + 3);
      *(v10 + 16) = *(v7 + 2);
      *(v7 + 2) = 0;
      *(v10 + 24) = v7[6];
      *v10 = v11;
      *(v10 + 4) = v9;
      v4 = *(v3 + 4);
      v12 = v4 + 32 * v6;
      if (*(v12 + 4) != -1)
      {
        result = sub_29A4BF8B4(v4 + 32 * v6);
        *(v12 + 4) = -1;
        v4 = *(v3 + 4);
      }

      v5 = v6;
      v6 = *v3 & (v6 + 1);
      v7 = (v4 + 32 * v6);
      v8 = *(v7 + 2);
    }

    while (v8 > 0);
  }

  *(v3 + 73) = 1;
  return result;
}

uint64_t sub_29A4C70D4(uint64_t *a1, _DWORD *a2, uint64_t a3)
{
  sub_29A1E21F4(&v8, a2);
  sub_29A1E2240(&v9, a2 + 1);
  v10 = *a3;
  *a3 = 0;
  v11 = *(a3 + 8);
  v6 = sub_29A4C33F4(a1, &v8, &v8);
  sub_29A4BF944(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  return v6;
}

void sub_29A4C7174(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A4BF8FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4C7188(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *MEMORY[0x29EDCA608];
  if (a3 == 8 || a3 == 1)
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::SdfListOp();
  }

  return 1;
}

void sub_29A4C7440(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_29A186B14(v2 - 88);
  *(v2 - 88) = va;
  sub_29A1E234C((v2 - 88));
  sub_29A1E1E38(va1);
  _Unwind_Resume(a1);
}

void sub_29A4C749C(void *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  JUMPOUT(0x29A4C7494);
}

uint64_t *sub_29A4C74AC(uint64_t *a1, uint64_t *a2)
{
  result = a2;
  if (a1 != a2)
  {
    v4 = a1 + 1;
    while (v4 != a2)
    {
      v5 = *(v4 - 1);
      v6 = *v4++;
      if (v5 == v6)
      {
        v7 = v4 - 2;
        goto LABEL_7;
      }
    }

    v7 = a2;
LABEL_7:
    result = a2;
    if (v7 != a2)
    {
      for (i = v7 + 2; i != a2; ++i)
      {
        if (*v7 != *i)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }
      }

      return v7 + 1;
    }
  }

  return result;
}

void sub_29A4C7564(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, pxrInternal__aapl__pxrReserved__::VtValue *a3@<X8>)
{
  v21[2] = *MEMORY[0x29EDCA608];
  if (sub_29A4C7ACC(a2))
  {
    v18[0] = 0;
    v18[1] = 0;
    v17 = v18;
    v6 = *(a2 + 1);
    if ((v6 & 4) != 0)
    {
      v7 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v7 = *a2;
    }

    v8 = v7[1];
    v9 = *v8;
    if (v8[1] != *v8)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      do
      {
        if (*v7)
        {
          pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetTimeSampleValueImpl(*(a1 + 88), v7, v12, &v19);
        }

        else
        {
          sub_29A186EF4(&v19, (v7[2] + v10));
        }

        if (sub_29A4C7A40(&v19))
        {
          v13 = *(a1 + 88);
          if ((v20 & 4) != 0)
          {
            v14 = (*((v20 & 0xFFFFFFFFFFFFFFF8) + 168))(&v19);
          }

          else
          {
            v14 = &v19;
          }

          v15 = *v14;
          v21[1] = 0;
          pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_UnpackValue(v13, v15, v21);
        }

        else
        {
          sub_29A186EF4(v21, &v19);
        }

        sub_29A4C7B58(&v17, (v9 + v11), (v9 + v11), v21);
        sub_29A186B14(v21);
        sub_29A186B14(&v19);
        ++v12;
        v16 = v7[1];
        v9 = *v16;
        v11 += 8;
        v10 += 16;
      }

      while (v12 != (v16[1] - *v16) >> 3);
    }

    sub_29A328254(&v17, a3);
    sub_29A1F9B0C(&v17, v18[0]);
  }

  else
  {

    sub_29A186EF4(a3, a2);
  }
}

void *sub_29A4C77A4@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X1>, void *a2@<X8>)
{
  if (sub_29A3DF5E8(a1))
  {
    v4 = *(a1 + 1);
    if ((v4 & 4) != 0)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
    }

    pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::SdfListOp();
  }

  return sub_29A186EF4(a2, a1);
}

void sub_29A4C78F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v6 - 24) = v5;
  sub_29A24A5D0((v6 - 24));
  sub_29A24A2DC(va);
  _Unwind_Resume(a1);
}

BOOL sub_29A4C791C(void *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x29EDCA608];
  sub_29A4C6DEC(&v7, a2, a1, 0);
  v5 = v8;
  if (a4 && v8)
  {
    if ((v8 & 4) != 0)
    {
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 168))(&v7);
    }

    pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::ApplyOperations();
  }

  sub_29A186B14(&v7);
  return v5 != 0;
}

void sub_29A4C79FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4C7A40(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B49756BLL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20518E0);
}

uint64_t sub_29A4C7ACC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B497921 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2051A10);
}

uint64_t *sub_29A4C7B58(uint64_t **a1, double *a2, uint64_t *a3, void *a4)
{
  v8 = a1 + 1;
  v7 = a1[1];
  if (v7)
  {
    v9 = *a2;
    while (1)
    {
      while (1)
      {
        v10 = v7;
        v11 = *(v7 + 4);
        if (v9 >= v11)
        {
          break;
        }

        v7 = *v7;
        v8 = v10;
        if (!*v10)
        {
          goto LABEL_10;
        }
      }

      if (v11 >= v9)
      {
        break;
      }

      v7 = v7[1];
      if (!v7)
      {
        v8 = v10 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v10 = a1 + 1;
LABEL_10:
    v12 = operator new(0x38uLL);
    v12[4] = *a3;
    sub_29A186A3C(v12 + 5, a4);
    sub_29A00B204(a1, v10, v8, v12);
    return v12;
  }

  return v10;
}

void *sub_29A4C7C24(void *a1, unint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A1C11FC(a1, a2);
    v6 = a1[1];
    v7 = 3 * a2;
    v8 = &v6[3 * a2];
    v9 = 16 * v7;
    do
    {
      sub_29A2496A8(a1, v6, a3);
      v6 += 3;
      v9 -= 48;
    }

    while (v9);
    a1[1] = v8;
  }

  return a1;
}

BOOL sub_29A4C7CD4(uint64_t a1, _DWORD **a2)
{
  *(a1 + 24) = 0;
  v4 = strcmp((0x800000029B4855AFLL & 0x7FFFFFFFFFFFFFFFLL), (*(*(a1 + 16) + 8) & 0x7FFFFFFFFFFFFFFFLL));
  if (v4)
  {
    *(a1 + 25) = 1;
  }

  else
  {
    v5 = *(a1 + 8);
    if (v5 != a2)
    {
      sub_29A324D54(v5, *a2, a2[1], (a2[1] - *a2) >> 3);
    }
  }

  return v4 == 0;
}

BOOL sub_29A4C7D60(int a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x29EDCA608];
  sub_29A4C6DEC(&v7, a1, a2);
  v5 = v8;
  if (a4 && v8)
  {
    if ((v8 & 4) != 0)
    {
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 168))(&v7);
    }

    pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::ApplyOperations();
  }

  sub_29A186B14(&v7);
  return v5 != 0;
}

void sub_29A4C7E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29A4C7E84(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X1>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  if (sub_29A1F650C(a1))
  {
    v13 = 0;
    v4 = operator new(0x20uLL);
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = 0;
    v4[6] = 0;
    v14 = v4;
    atomic_fetch_add_explicit(v4 + 6, 1u, memory_order_relaxed);
    memset(v15, 0, sizeof(v15));
    v5 = *(a1 + 1);
    if ((v5 & 4) != 0)
    {
      v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      v4 = v14;
    }

    else
    {
      v6 = *a1;
    }

    sub_29A08AF9C(v4, v6[2]);
    sub_29A4C81F0(v15, v6[2]);
    v9 = *v6;
    v7 = v6 + 1;
    v8 = v9;
    if (v9 != v7)
    {
      do
      {
        sub_29A08B03C(v14, v8 + 4);
        sub_29A4C82AC(v15, v8 + 5);
        v10 = v8[1];
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = v8[2];
            v12 = *v11 == v8;
            v8 = v11;
          }

          while (!v12);
        }

        v8 = v11;
      }

      while (v11 != v7);
    }

    sub_29A4C8300(&v13, a2);
    v16 = v15;
    sub_29A1D0D38(&v16);
    sub_29A22B614(&v14);
  }

  else
  {

    sub_29A186EF4(a2, a1);
  }
}

void sub_29A4C7FF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A4C8344(va);
  _Unwind_Resume(a1);
}

void sub_29A4C8008(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X1>, uint64_t a2@<X8>)
{
  if (!sub_29A1EF030(a1))
  {
    goto LABEL_18;
  }

  v4 = *(a1 + 1);
  v5 = (v4 & 4) != 0 ? (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1) : *a1;
  if (*v5 != 1)
  {
    goto LABEL_18;
  }

  v6 = *(v5 + 8);
  v7 = 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 16) - v6) >> 4);
  if (v7 != 1)
  {
    if (!v7)
    {
      v11[0] = 0;
      v11[1] = 0;
      v12 = 0;
      v10 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
      pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(v9, 0.0, 1.0);
      pxrInternal__aapl__pxrReserved__::SdfPayload::SdfPayload(__p, v11, &v10, v9);
      *(a2 + 8) = &off_2A204CF78;
      sub_29A3C6FEC(a2, __p);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v16);
      sub_29A1DE3A4(&v15);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
      sub_29A1DE3A4(&v10);
      if (SHIBYTE(v12) < 0)
      {
        operator delete(v11[0]);
      }

      return;
    }

    goto LABEL_18;
  }

  v8 = *(v6 + 23);
  if (v8 < 0)
  {
    v8 = *(v6 + 8);
  }

  if (!v8)
  {
LABEL_18:

    sub_29A186EF4(a2, a1);
    return;
  }

  *(a2 + 8) = &off_2A204CF78;

  sub_29A3C6FEC(a2, v6);
}

void sub_29A4C81BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_29A249058(&a18);
  sub_29A1DCEA8(&a11);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_29A4C81F0(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (a2 >> 60)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A017BD4(result, a2);
    v5 = &v4[v3];
    v12 = v4;
    v13 = &v4[v3];
    v7 = &v4[16 * v6];
    v14 = &v4[v3];
    v15 = v7;
    v8 = *(v2 + 8);
    v9 = &v4[v3 + *v2 - v8];
    sub_29A1D1BB4(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    *(v2 + 8) = v5;
    v11 = *(v2 + 16);
    *(v2 + 16) = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29A1D1C24(&v12);
  }

  return result;
}

void sub_29A4C8298(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1D1C24(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4C82AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29A4C8388(a1, a2);
  }

  else
  {
    sub_29A186EF4(*(a1 + 8), a2);
    result = v3 + 16;
    *(a1 + 8) = v3 + 16;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29A4C8344(uint64_t a1)
{
  v3 = (a1 + 16);
  sub_29A1D0D38(&v3);
  sub_29A22B614((a1 + 8));
  return a1;
}

uint64_t sub_29A4C8388(uint64_t a1, void *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_29A00C9A4();
  }

  v6 = *(a1 + 16) - *a1;
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

  v18 = a1;
  if (v7)
  {
    v8 = sub_29A017BD4(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[16 * v2];
  *(&v17 + 1) = &v8[16 * v7];
  sub_29A186EF4(v16, a2);
  *&v17 = v16 + 16;
  v9 = *(a1 + 8);
  v10 = &v16[*a1 - v9];
  sub_29A1D1BB4(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29A1D1C24(&v15);
  return v14;
}

void sub_29A4C8484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1D1C24(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A4C8498(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t *a2)
{
  if ((sub_29A4C7ACC(a1) & 1) == 0)
  {
    v6 = 0;
    v4 = operator new(0x20uLL);
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = 0;
    *(v4 + 6) = 0;
    v7 = v4;
    atomic_fetch_add_explicit(v4 + 6, 1u, memory_order_relaxed);
    memset(v8, 0, sizeof(v8));
    sub_29A4C8550(a1, &v6);
    v9 = v8;
    sub_29A1D0D38(&v9);
    sub_29A22B614(&v7);
  }

  return sub_29A4C861C(a1, a2);
}

void sub_29A4C853C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A4C8344(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4C8550(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  *(a1 + 8) = &off_2A2051A20;
  sub_29A4C8CA4(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A4C85E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

uint64_t *sub_29A4C861C(uint64_t *a1, uint64_t *a2)
{
  result = sub_29A4C8D08(a1);
  v4 = a2[1];
  v5 = *result;
  v6 = result[1];
  *result = *a2;
  *a2 = v5;
  a2[1] = v6;
  result[1] = v4;
  v7 = result[2];
  result[2] = a2[2];
  a2[2] = v7;
  v8 = result[3];
  result[3] = a2[3];
  a2[3] = v8;
  v9 = result[4];
  v10 = result[5];
  v11 = a2[5];
  result[4] = a2[4];
  result[5] = v11;
  a2[4] = v9;
  a2[5] = v10;
  return result;
}

uint64_t *sub_29A4C8684(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 48), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A4C86A4(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A4C880C(a1);
}

unint64_t sub_29A4C86BC(uint64_t **a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  sub_29A4C8870(&v3, v1, v1 + 1, (v1 + 2), v1 + 5);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

uint64_t sub_29A4C87F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2A2051A20;
  return sub_29A4C8CA4(a2, v2);
}

void sub_29A4C880C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (atomic_fetch_add_explicit((v1 + 48), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      v2 = (v1 + 16);
      sub_29A1D0D38(&v2);
      sub_29A22B614((v1 + 8));
      operator delete(v1);
    }
  }
}

uint64_t sub_29A4C8870(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a2;
  if (*(a1 + 8))
  {
    v5 += (*a1 + v5 + (*a1 + v5) * (*a1 + v5)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  return sub_29A4C88AC(a1, a3, a4, a5);
}

uint64_t sub_29A4C88AC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_29A4C898C(&v9, *a2);
  if (*(a1 + 8))
  {
    v7 += (*a1 + v7 + (*a1 + v7) * (*a1 + v7)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v7;
  return sub_29A4C8928(a1, a3, a4);
}

uint64_t sub_29A4C8928(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = sub_29A3FF1B0(a1, *a2, (*(a2 + 8) - *a2) >> 4);
  v6 = *a3;
  if (*(a1 + 8))
  {
    v6 += (*a1 + v6 + (*a1 + v6) * (*a1 + v6)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v6;
  return result;
}

unint64_t sub_29A4C898C(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8) - *a2;
  if (v3)
  {
    v4 = 0.0;
    v5 = 0;
    v6 = v3 >> 3;
    do
    {
      v7 = *v2++;
      v8 = v7;
      if (v7 == 0.0)
      {
        v8 = 0.0;
      }

      v9 = v8;
      if (v5)
      {
        *&v9 = *&v8 + ((*&v4 + *&v8 + (*&v4 + *&v8) * (*&v4 + *&v8)) >> 1);
      }

      v5 = 1;
      v4 = v9;
      --v6;
    }

    while (v6);
    v10 = 0x9E3779B97F4A7C55 * *&v9;
  }

  else
  {
    v10 = 0;
  }

  return bswap64(v10);
}

BOOL sub_29A4C89FC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  result = sub_29A4C8AB0((a1 + 8), (a2 + 8));
  if (result)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    if (v6 - v5 == *(a2 + 24) - *(a2 + 16))
    {
      if (v5 != v6)
      {
        pxrInternal__aapl__pxrReserved__::VtValue::operator==();
      }

      return *(a1 + 40) == *(a2 + 40);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_29A4C8AB0(double ***a1, double ***a2)
{
  if (*a1 == *a2)
  {
    return 1;
  }

  v3 = **a1;
  v2 = (*a1)[1];
  v4 = **a2;
  if (v2 - v3 != (*a2)[1] - v4)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  v5 = v3 + 1;
  do
  {
    v6 = *v4++;
    result = *(v5 - 1) == v6;
    v8 = *(v5 - 1) != v6 || v5 == v2;
    ++v5;
  }

  while (!v8);
  return result;
}

uint64_t sub_29A4C8B14(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 48));
  if (v2 != 1)
  {
    sub_29A4C8B7C(*a1, &v4);
    sub_29A4C880C(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A4C880C(&v4);
  }

  return *a1;
}

uint64_t sub_29A4C8B7C@<X0>(uint64_t a1@<X0>, atomic_uint **a2@<X8>)
{
  v4 = operator new(0x38uLL);
  result = sub_29A4C8BE0(v4, a1);
  *a2 = v4;
  atomic_fetch_add_explicit(v4 + 12, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A4C8BE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 24), 1u, memory_order_relaxed);
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_29A1D128C((a1 + 16), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 4);
  *(a1 + 40) = *(a2 + 40);
  atomic_store(0, (a1 + 48));
  return a1;
}

uint64_t sub_29A4C8C70(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_29A4C8CA4(atomic_uint **a1, uint64_t a2)
{
  v4 = operator new(0x38uLL);
  result = sub_29A4C8BE0(v4, a2);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 12, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A4C8D08(uint64_t *a1)
{
  v2 = a1[1];
  if ((v2 & 4) != 0)
  {
    sub_29B2AA5A0(v2, a1);
  }

  return sub_29A4C8B14(a1);
}

void sub_29A4C8D44(uint64_t ***a1)
{
  sub_29A4C8D94(*a1, &v2);
  sub_29A4BF944(a1);
  *a1 = v2;
  v2 = 0;
  sub_29A4BF944(&v2);
}

uint64_t *sub_29A4C8D94@<X0>(uint64_t **a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x20uLL);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = 0;
  result = sub_29A32851C(v4, *a1, a1[1], 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1));
  *(v4 + 6) = 0;
  *a2 = v4;
  atomic_fetch_add_explicit(v4 + 6, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A4C8E18(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v8 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v8 = v4;
  }

  v19 = a1;
  if (v8)
  {
    v9 = sub_29A012C48(a1, v8);
  }

  else
  {
    v9 = 0;
  }

  v16 = v9;
  v17 = &v9[3 * v3];
  *(&v18 + 1) = &v9[3 * v8];
  sub_29A4C8F50(v17, a2, a3);
  *&v18 = v17 + 3;
  v10 = *(a1 + 8);
  v11 = (v17 + *a1 - v10);
  sub_29A321F84(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29A3220F0(&v16);
  return v15;
}

void sub_29A4C8F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A3220F0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A4C8F50(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A186EF4(a1 + 1, a3);
  return a1;
}

void sub_29A4C8FC8(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = a1[4];
  v4 = a1[5];
  v6 = 0;
  if (v4)
  {
    v7 = (v5 + 4);
    while (1)
    {
      v8 = *v7;
      v7 += 16;
      if (v8 != -1)
      {
        break;
      }

      if (v4 == ++v6)
      {
        return;
      }
    }
  }

  if (v6 != v4)
  {
    v9 = 0;
    v10 = 0;
    v11 = v5 + 32 * v4;
    v12 = v5 + 32 * v6;
    do
    {
      v13 = v10;
      v14 = v9;
      v9 = *a2;
      v15 = *(a2 + 8);
      v10 = *(a2 + 16);
      *(a2 + 8) = v14;
      *(a2 + 16) = v13;
      *a2 = v14;
      v16 = sub_29A4C90F4(a1, (v12 + 8));
      sub_29A4C927C(v9, v15, *v16, v16[1], a2, &v18);
      v17 = v12 + 32;
      do
      {
        v12 = v17;
        if (*(v17 - 26))
        {
          break;
        }

        v17 += 32;
      }

      while (*(v12 + 4) == -1);
    }

    while (v12 != v11);
    if (v9)
    {
      operator delete(v9);
    }
  }
}

void sub_29A4C90CC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A4C90F4(void *a1, unsigned int *a2)
{
  v4 = a1[11];
  v5 = (v4 + 6720);
  if (*(v4 + 6743) < 0)
  {
    v5 = *v5;
  }

  v17[0] = "usd/crateData.cpp";
  v17[1] = "_ListTimeSamplesForPath";
  v17[2] = 982;
  v17[3] = "const std::vector<double> &pxrInternal__aapl__pxrReserved__::Usd_CrateDataImpl::_ListTimeSamplesForPath(const SdfPath &) const";
  v18 = 0;
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::TfScopeDescription(v19, v5, v17);
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
  if (!v6)
  {
    v6 = sub_29A3294B0(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
  }

  v7 = sub_29A4C2C3C(a1, a2);
  if (a1[4] + 32 * a1[5] == v7)
  {
    goto LABEL_15;
  }

  v8 = *(v7 + 16);
  v9 = *v8;
  v10 = v8[1] - *v8;
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
  v12 = (v9 + 8);
  while ((*(v12 - 1) ^ *v6) > 7)
  {
    v12 += 3;
    if (!--v11)
    {
      goto LABEL_15;
    }
  }

  if (sub_29A4C7ACC(v12))
  {
    v13 = v12[1];
    if ((v13 & 4) != 0)
    {
      v14 = (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(v12);
    }

    else
    {
      v14 = *v12;
    }

    v15 = *(v14 + 8);
  }

  else
  {
LABEL_15:
    if (atomic_load_explicit(&qword_2A14F7F70, memory_order_acquire))
    {
      v15 = &qword_2A14F7F58;
    }

    else
    {
      sub_29B2AA618(v17);
      v15 = v17[0];
    }
  }

  pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(v19);
  return v15;
}

void sub_29A4C9268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(va);
  _Unwind_Resume(a1);
}

void sub_29A4C927C(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, const void **a5@<X4>, uint64_t **a6@<X8>)
{
  v9 = a1;
  if (a1 == a2)
  {
LABEL_10:
    while (a3 != a4)
    {
      sub_29A08B03C(a5, a3++);
    }

    v11 = v9;
  }

  else
  {
    v11 = a2;
    while (a3 != a4)
    {
      if (*a3 >= *v9)
      {
        a3 += *v9 >= *a3;
        sub_29A08B03C(a5, v9++);
      }

      else
      {
        sub_29A08B03C(a5, a3++);
      }

      if (v9 == v11)
      {
        v9 = v11;
        goto LABEL_10;
      }
    }

    while (v9 != v11)
    {
      sub_29A08B03C(a5, v9++);
    }
  }

  *a6 = v11;
  a6[1] = a4;
  a6[2] = a5;
}

uint64_t sub_29A4C9360(uint64_t a1, double *a2, double *a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29A329428(a1, v4, v6, v6);
      ++v6;
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t sub_29A4C93E4(uint64_t a1, double *a2, double *a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29A329428(a1, v4, v6, v6);
      ++v6;
    }

    while (v6 != a3);
  }

  return a1;
}

char *sub_29A4C9468(void *a1, uint64_t a2, char *a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v10 = *a1;
    v11 = ((v7 - *a1) >> 4) + 1;
    if (v11 >> 60)
    {
      sub_29A00C9A4();
    }

    v12 = a2 - v10;
    v13 = v6 - v10;
    v14 = v13 >> 3;
    if (v13 >> 3 <= v11)
    {
      v14 = ((v7 - *a1) >> 4) + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 4;
    v23 = a1;
    if (v15)
    {
      v17 = sub_29A017BD4(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v19 = v17;
    v20 = &v17[16 * v16];
    v21 = v20;
    v22 = &v17[16 * v15];
    sub_29A4C9684(&v19, a3);
    v4 = sub_29A3741E8(a1, &v19, v4);
    sub_29A1D1C24(&v19);
  }

  else if (a2 == v7)
  {
    sub_29A186EF4(a1[1], a3);
    a1[1] = v7 + 16;
  }

  else
  {
    sub_29A37413C(a1, a2, a1[1], a2 + 16);
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 16;
    if (v8)
    {
      v9 = 0;
    }

    sub_29A1854E8(v4, &a3[v9]);
  }

  return v4;
}

void sub_29A4C95BC(uint64_t *a1)
{
  sub_29A4C960C(*a1, &v2);
  sub_29A22B614(a1);
  *a1 = v2;
  v2 = 0;
  sub_29A22B614(&v2);
}

void *sub_29A4C960C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  result = sub_29A00C8EC(v4, *a1, *(a1 + 8), (*(a1 + 8) - *a1) >> 3);
  *(v4 + 6) = 0;
  *a2 = v4;
  atomic_fetch_add_explicit(v4 + 6, 1u, memory_order_relaxed);
  return result;
}

void *sub_29A4C9684(void *a1, void *a2)
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
        v9 = (v4 - *a1) >> 3;
      }

      v10 = a1[4];
      v25 = a1[4];
      v11 = sub_29A017BD4(v10, v9);
      v12 = &v11[16 * (v9 >> 2)];
      v14 = &v11[16 * v13];
      v15 = *(a1 + 1);
      v16 = v15;
      v17 = v12;
      v18 = *(&v15 + 1) - v15;
      if (*(&v15 + 1) != v15)
      {
        v17 = &v12[v18];
        v19 = v12;
        do
        {
          v19 = (sub_29A186A3C(v19, v16) + 2);
          v16 += 2;
          v18 -= 16;
        }

        while (v18);
        v15 = *(a1 + 1);
      }

      v22 = *a1;
      *a1 = v11;
      a1[1] = v12;
      v23 = v15;
      v20 = a1[3];
      a1[2] = v17;
      a1[3] = v14;
      v24 = v20;
      sub_29A1D1C24(&v22);
      v5 = a1[2];
    }

    else
    {
      v8 = ((v7 >> 4) + 1) / -2;
      v5 = &v6[-2 * (((v7 >> 4) + 1) / 2)];
      if (v6 != v4)
      {
        do
        {
          sub_29A18606C(v5, v6);
          v6 += 2;
          v5 += 2;
        }

        while (v6 != v4);
        v6 = a1[1];
      }

      a1[1] = &v6[2 * v8];
      a1[2] = v5;
    }
  }

  result = sub_29A186EF4(v5, a2);
  a1[2] += 16;
  return result;
}

void sub_29A4C97D8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4C9814(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A4C9814(uint64_t a1)
{
  sub_29A4C9874((a1 + 88), 0);
  sub_29A4C98B0(a1);
  sub_29A4C9874((a1 + 88), 0);
  v3 = (a1 + 8);
  sub_29A4BF7B8(&v3);
  return a1;
}

void sub_29A4C9874(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **a1, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::~CrateFile(v3);

    operator delete(v4);
  }
}

void sub_29A4C98B0(uint64_t a1)
{
  v1 = sub_29A4C99DC(v2, a1);
  if ((pxrInternal__aapl__pxrReserved__::Work_ShouldSynchronizeAsyncDestroyCalls(v1) & 1) == 0)
  {
    sub_29A4C9924(v2);
  }

  v4 = &v3;
  sub_29A4BF7B8(&v4);
}

void sub_29A4C9904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 - 24) = &a11;
  sub_29A4BF7B8((v11 - 24));
  _Unwind_Resume(a1);
}

void sub_29A4C9924(uint64_t a1)
{
  v1 = sub_29A4C99DC(v6, a1);
  HasConcurrency = pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(v1);
  if (HasConcurrency)
  {
    DetachedDispatcher = pxrInternal__aapl__pxrReserved__::Work_GetDetachedDispatcher(HasConcurrency);
    v4 = sub_29A4C9B30(DetachedDispatcher, v6);
    v5 = (***(v4 - 5))(*(v4 - 5), v4, (v4 - 1));
    pxrInternal__aapl__pxrReserved__::Work_EnsureDetachedTaskProgress(v5);
  }

  else
  {
    sub_29A4C9A90();
  }

  v8 = &v7;
  sub_29A4BF7B8(&v8);
}

void sub_29A4C99BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 - 24) = &a11;
  sub_29A4BF7B8((v11 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_29A4C99DC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v4 = (a2 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *(a1 + 8);
  if (v5 == *(a1 + 16))
  {
    v5 = sub_29A4BF6F8();
  }

  *(a1 + 32) = v5;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *a2 = 0;
  sub_29A4BF80C(v4);
  v6 = sub_29A4BF6F8();
  *(a2 + 72) = 0;
  *(a2 + 32) = v6;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return a1;
}

void sub_29A4C9A90()
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v3);
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v1 = sub_29A0FE7E0(&v3, 0);
  v4 = 0;
  v2 = sub_29A0ED084(v0 + 19, &v4);
  if (v2 != v1)
  {
    pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseRange(v0, v1, v2);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v3);
}

void *sub_29A4C9B30(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 256);
  v7[0] = 0;
  v7[1] = v4;
  v5 = tbb::internal::allocate_additional_child_of_proxy::allocate(v7, 0x60uLL);
  *(v5 - 11) = 1;
  *v5 = &unk_2A2051AE8;
  sub_29A4C99DC((v5 + 1), a2);
  v5[11] = a1 + 272;
  return v5;
}

uint64_t sub_29A4C9BB4(uint64_t a1)
{
  *a1 = &unk_2A2051AE8;
  v3 = (a1 + 16);
  sub_29A4BF7B8(&v3);
  return a1;
}

void sub_29A4C9C0C(char *a1)
{
  *a1 = &unk_2A2051AE8;
  v2 = (a1 + 16);
  sub_29A4BF7B8(&v2);
  operator delete(a1);
}

uint64_t sub_29A4C9C68(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29A4C9A90();
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 88));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29A4C9CF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void *sub_29A4C9D0C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  if (a2)
  {
    sub_29A0ECFD4((a2 + 16), &v5);
    v3 = a1[1];
    a1[1] = v5;
    v5 = 0;
    if (v3)
    {
      sub_29B28D0B0(v3, &v5);
    }
  }

  return a1;
}

void sub_29A4C9D68(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28FFF4(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4C9DC8()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::USD_WRITE_NEW_USDC_FILES_AS_VERSION))
  {
    sub_29B2AA698();
  }
}

void sub_29A4C9DF8()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::USDC_MMAP_PREFETCH_KB))
  {
    sub_29B2AA6C8();
  }
}

void sub_29A4C9E28()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::USDC_ENABLE_ZERO_COPY_ARRAYS))
  {
    sub_29B2AA6F8();
  }
}

void sub_29A4C9E58()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::USDC_USE_ASSET))
  {
    sub_29B2AA728();
  }
}

void pxrInternal__aapl__pxrReserved__::UsdReadOutOfBoundsError::~UsdReadOutOfBoundsError(std::exception *this)
{
  pxrInternal__aapl__pxrReserved__::TfBaseException::~TfBaseException(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::Version::FromString(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::Version *this, const char *a2)
{
  v8 = 0;
  v7 = 0;
  v2 = sscanf(this, "%u.%u.%u", &v8 + 4, &v8, &v7);
  if (v7 > 0xFF || v2 != 3 || v8 > 0xFF || HIDWORD(v8) > 0xFF)
  {
    return 0;
  }

  else
  {
    return (v8 << 8) | (v7 << 16) | BYTE4(v8);
  }
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileRange::~_FileRange(FILE **this)
{
  v2 = *this;
  if (v2)
  {
    if (*(this + 24) == 1)
    {
      fclose(v2);
    }
  }
}

{
  v2 = *this;
  if (v2)
  {
    if (*(this + 24) == 1)
    {
      fclose(v2);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping::_Impl::_AddRangeReference(atomic_ullong *this, const void *a2, uint64_t a3)
{
  v6 = tbb::internal::allocate_via_handler_v3(0x38);
  *(v6 + 8) = 0;
  *(v6 + 16) = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping::_Impl::ZeroCopySource::_Detached;
  *(v6 + 24) = this;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  sub_29A4E4B0C((this + 5), v6 + 8, v6, v8);
  result = v8[0] + 8;
  if (!atomic_fetch_add_explicit((v8[0] + 8), 1uLL, memory_order_relaxed))
  {
    atomic_fetch_add_explicit(this, 1uLL, memory_order_relaxed);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping::_Impl::_DetachReferencedRanges(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping::_Impl *this)
{
  v1 = *(this + 9);
  if (v1)
  {
    while ((v1[6] & 1) == 0)
    {
      v1 = *v1;
      if (!v1)
      {
        return;
      }
    }

LABEL_5:
    if (atomic_load(v1 + 1))
    {
      v3 = v1[4];
      v4 = sub_29A4CA1A0();
      v5 = v3 + v1[5] - 1;
      v6 = v3 / v4;
      v7 = v5 / sub_29A4CA1A0();
      v8 = v6 * sub_29A4CA1A0();
      v9 = v7 - v6 + 1;
      v10 = sub_29A4CA1A0();
      if (pxrInternal__aapl__pxrReserved__::ArchSetMemoryProtection(v8, v9 * v10, 3))
      {
        v12 = sub_29A4CA1A0();
        if (v9)
        {
          v13 = v6 * v12;
          do
          {
            --v9;
            *v13 = *v13;
            v13 += sub_29A4CA1A0();
          }

          while (v9);
        }
      }

      else
      {
        v14[0] = "usd/crateFile.cpp";
        v14[1] = "_DetachReferencedRanges";
        v14[2] = 543;
        v14[3] = "void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping::_Impl::_DetachReferencedRanges()";
        v15 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v14, "could not set address range permissions to copy-on-write", v11);
      }
    }

    while (1)
    {
      v1 = *v1;
      if (!v1)
      {
        break;
      }

      if (v1[6])
      {
        goto LABEL_5;
      }
    }
  }
}

uint64_t sub_29A4CA1A0()
{
  if ((atomic_load_explicit(&qword_2A1742128, memory_order_acquire) & 1) == 0)
  {
    v1 = __cxa_guard_acquire(&qword_2A1742128);
    if (v1)
    {
      dword_2A1742120 = pxrInternal__aapl__pxrReserved__::ArchGetPageSize(v1);
      __cxa_guard_release(&qword_2A1742128);
    }
  }

  return dword_2A1742120;
}

void *pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping::_Impl::ZeroCopySource::ZeroCopySource(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 0;
  result[1] = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping::_Impl::ZeroCopySource::_Detached;
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  return result;
}

{
  *result = 0;
  result[1] = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping::_Impl::ZeroCopySource::_Detached;
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  return result;
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping::_Impl::ZeroCopySource::_Detached(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping::_Impl::ZeroCopySource *this, pxrInternal__aapl__pxrReserved__::Vt_ArrayForeignDataSource *a2)
{
  v2 = *(this + 2);
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
  {
    __dmb(9u);
    if (v2)
    {
      sub_29A4DA884(v2 + 40, a2);
      sub_29A0D8AA8(v2 + 8, 0);

      operator delete(v2);
    }
  }
}

const char *pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_TableOfContents::GetSection(const char **a1, char *__s1)
{
  v3 = *a1;
  v4 = a1[1];
  while (v3 != v4)
  {
    if (!strcmp(__s1, v3))
    {
      return v3;
    }

    v3 += 32;
  }

  v6[0] = "usd/crateFile.cpp";
  v6[1] = "GetSection";
  v6[2] = 803;
  v6[3] = "const CrateFile::_Section *pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_TableOfContents::GetSection(_SectionName) const";
  v7 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v6, 3, "Crate file missing %s section", __s1);
  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_TableOfContents::GetMinimumSectionStart(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_TableOfContents *this)
{
  v1 = *this;
  v2 = *(this + 1);
  v3 = *this + 32;
  if (*this != v2 && v3 != v2)
  {
    do
    {
      if (*(v3 + 16) < *(v1 + 16))
      {
        v1 = v3;
      }

      v3 += 32;
    }

    while (v3 != v2);
  }

  if (v1 == v2)
  {
    return 88;
  }

  else
  {
    return *(v1 + 16);
  }
}

BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::CanRead(uint64_t a1)
{
  Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(a1);
  if (*(a1 + 23) < 0)
  {
    sub_29A008D14(__p, *a1, *(a1 + 8));
  }

  else
  {
    *__p = *a1;
    v7 = *(a1 + 16);
  }

  v3 = pxrInternal__aapl__pxrReserved__::ArResolver::OpenAsset(Resolver);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (v8)
  {
    CanRead = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::CanRead(v3, &v8);
  }

  else
  {
    CanRead = 0;
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }

  return CanRead;
}

void sub_29A4CA47C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::CanRead(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = (*(**a2 + 40))();
  v5 = v4;
  if (v3)
  {
    (*(**a2 + 16))();
    pxrInternal__aapl__pxrReserved__::ArchFileAdvise(v3, v5);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v16);
  v6 = *a2;
  v7 = a2[1];
  v13 = *a2;
  v14 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *a2;
  }

  v15 = 0;
  v8 = (*(*v6 + 16))(v6);
  sub_29A4CA6D4(&v13, v8, v17);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v9)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v10 = sub_29A0FE7E0(&v16, 0);
  v17[0] = 0;
  v11 = sub_29A0ED084(v9 + 19, v17);
  if (v11 != v10)
  {
    pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseRange(v9, v10, v11);
  }

  if (v3)
  {
    (*(**a2 + 16))(*a2);
    pxrInternal__aapl__pxrReserved__::ArchFileAdvise(v3, v5);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v16);
  return v11 == v10;
}

void sub_29A4CA698(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (a3)
  {
    sub_29A014BEC(a3);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void sub_29A4CA6D4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  *a3 = 0x434453552D525850;
  *(a3 + 9) = 12;
  if (a2 > 87)
  {
    a1[2] = 0;
    sub_29A4E5308(a1, a3, 0x58uLL);
    if (*a3 == 0x434453552D525850)
    {
      v7 = *(a3 + 8);
      v8 = *(a3 + 9);
      if (*(a3 + 8) || v8 >= 0xD)
      {
        v17 = "usd/crateFile.cpp";
        v18 = "_ReadBootStrap";
        v19 = 3837;
        v20 = "static CrateFile::_BootStrap pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadBootStrap(ByteStream, int64_t) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream]";
        v21 = 0;
        pxrInternal__aapl__pxrReserved__::TfStringPrintf("%hhd.%hhd.%hhd", v5, v6, v7, v8, *(a3 + 10));
        pxrInternal__aapl__pxrReserved__::TfStringPrintf("%hhd.%hhd.%hhd", v9, v10, 0, 12, 0);
        if (v16 >= 0)
        {
          v11 = &v15;
        }

        else
        {
          v11 = v15;
        }

        if (v14 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 3, "Usd crate file version mismatch -- file is %s, software supports %s", v11, p_p);
        if (v14 < 0)
        {
          operator delete(__p);
        }

        if (v16 < 0)
        {
          operator delete(v15);
        }
      }

      else if (*(a3 + 16) >= a2)
      {
        v17 = "usd/crateFile.cpp";
        v18 = "_ReadBootStrap";
        v19 = 3845;
        v20 = "static CrateFile::_BootStrap pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadBootStrap(ByteStream, int64_t) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream]";
        v21 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 3, "Usd crate file corrupt, possibly truncated: table of contents at offset %lld but file size is %lld");
      }
    }

    else
    {
      v17 = "usd/crateFile.cpp";
      v18 = "_ReadBootStrap";
      v19 = 3830;
      v20 = "static CrateFile::_BootStrap pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadBootStrap(ByteStream, int64_t) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream]";
      v21 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 3, "Usd crate bootstrap section corrupt");
    }
  }

  else
  {
    v17 = "usd/crateFile.cpp";
    v18 = "_ReadBootStrap";
    v19 = 3823;
    v20 = "static CrateFile::_BootStrap pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadBootStrap(ByteStream, int64_t) [ByteStream = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream]";
    v21 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 3, "File too small to contain bootstrap structure");
  }
}

void sub_29A4CA8F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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

uint64_t pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::CreateNew@<X0>(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *this@<X0>, void *a2@<X8>)
{
  v2 = this;
  v4 = atomic_load(pxrInternal__aapl__pxrReserved__::USDC_USE_ASSET);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
  }

  if (*v4)
  {
    v5 = 0;
  }

  else
  {
    sub_29A008E78(__p, "USDC_USE_PREAD");
    v5 = !pxrInternal__aapl__pxrReserved__::TfGetenvBool(__p, 0);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v2)
  {
    v5 = 2;
  }

  v6 = operator new(0x1A68uLL);
  result = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::CrateFile(v6, v5);
  *a2 = v6;
  return result;
}

void sub_29A4CA9EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_MmapAsset(const char *a1@<X0>, uint64_t a2@<X1>, atomic_ullong **a3@<X8>)
{
  v6 = (*(**a2 + 40))();
  v8 = v7;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  pxrInternal__aapl__pxrReserved__::ArchMapFileReadOnly(v12, v6, &v14);
  v9 = (*(**a2 + 16))();
  sub_29A4DA910(a3, v12, v8, v9);
  sub_29A0D8AA8(v12, 0);
  if (!(*a3)[3])
  {
    v12[0] = "usd/crateFile.cpp";
    v12[1] = "_MmapAsset";
    v12[2] = 2595;
    v12[3] = "static CrateFile::_FileMapping pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_MmapAsset(const char *, const ArAssetSharedPtr &)";
    v13 = 0;
    if (SHIBYTE(v16) < 0)
    {
      v10 = ": ";
      v11 = v14;
      if (!v15)
      {
        v10 = "";
      }
    }

    else
    {
      if (HIBYTE(v16))
      {
        v10 = ": ";
      }

      else
      {
        v10 = "";
      }

      v11 = &v14;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v12, 3, "Couldn't map asset '%s'%s%s", a1, v10, v11);
    sub_29A4CABC8(a3);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v14);
  }
}

void sub_29A4CAB84(_Unwind_Exception *a1)
{
  sub_29A4DABB4(v1);
  if (*(v2 - 33) < 0)
  {
    operator delete(*(v2 - 56));
  }

  _Unwind_Resume(a1);
}

void sub_29A4CABC8(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping::_Impl::_DetachReferencedRanges(v2);
    sub_29A4DAB48(a1, v3);
    *a1 = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_MmapFile(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *this@<X0>, const char *a2@<X1>, atomic_ullong **a3@<X8>)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::ArchMapFileReadOnly(v8, a2, &v10);
  sub_29A4DA910(a3, v8, 0, -1);
  sub_29A0D8AA8(v8, 0);
  if (!(*a3)[3])
  {
    v8[0] = "usd/crateFile.cpp";
    v8[1] = "_MmapFile";
    v8[2] = 2610;
    v8[3] = "static CrateFile::_FileMapping pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_MmapFile(const char *, FILE *)";
    v9 = 0;
    if (SHIBYTE(v12) < 0)
    {
      v6 = ": ";
      v7 = v10;
      if (!v11)
      {
        v6 = "";
      }
    }

    else
    {
      if (HIBYTE(v12))
      {
        v6 = ": ";
      }

      else
      {
        v6 = "";
      }

      v7 = &v10;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v8, 3, "Couldn't map file '%s'%s%s", this, v6, v7);
    sub_29A4CABC8(a3);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v10);
  }
}

void sub_29A4CAD14(_Unwind_Exception *a1)
{
  sub_29A4DABB4(v1);
  if (*(v2 - 17) < 0)
  {
    operator delete(*(v2 - 40));
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_MmapBuffer(const char *a1@<X0>, uint64_t *a2@<X1>, atomic_ullong **a3@<X8>)
{
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  v5 = a2[1] - *a2;
  v8[0] = *a2;
  v8[1] = v5;
  sub_29A4DA910(a3, v8, 0, -1);
  if (!(*a3)[3])
  {
    v6[0] = "usd/crateFile.cpp";
    v6[1] = "_MmapBuffer";
    v6[2] = 2630;
    v6[3] = "static CrateFile::_FileMapping pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_MmapBuffer(const char *, const std::vector<std::byte> &)";
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v6, 3, "Couldn't map file '%s'%s%s", a1, "", v9);
    sub_29A4CABC8(a3);
  }

  sub_29A0D8AA8(v8, 0);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_29A4CAE18(_Unwind_Exception *a1)
{
  sub_29A4DABB4(v1);
  sub_29A0D8AA8(v2 - 56, 0);
  if (*(v2 - 17) < 0)
  {
    operator delete(*(v2 - 40));
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::Open(pxrInternal__aapl__pxrReserved__ *a1@<X0>, int a2@<W1>, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **a3@<X8>)
{
  v4 = a1;
  v6 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v6)
  {
    a1 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("Usd_CrateFile::CrateFile::Open", 0);
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  v12 = v7;
  v13 = v7 != 0;
  Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(a1);
  if (*(v4 + 23) < 0)
  {
    sub_29A008D14(__p, *v4, *(v4 + 8));
  }

  else
  {
    *__p = *v4;
    v10 = *(v4 + 16);
  }

  pxrInternal__aapl__pxrReserved__::ArResolver::OpenAsset(Resolver);
  pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::Open(v4, &v11, a2, a3);
  if (*(&v11 + 1))
  {
    sub_29A014BEC(*(&v11 + 1));
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
    if (!v7)
    {
      return;
    }

    goto LABEL_13;
  }

  if (v7)
  {
LABEL_13:
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7 != 0, v7);
  }
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::Open(uint64_t a1@<X0>, __int128 *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **a4@<X8>)
{
  v8 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v8)
  {
    v9 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("Usd_CrateFile::CrateFile::Open", 0);
  }

  else
  {
    v9 = 0;
  }

  v32 = v9;
  v33 = v9 != 0;
  *a4 = 0;
  v31 = 0uLL;
  v10 = *a2;
  if (a3)
  {
    if (!v10)
    {
LABEL_10:
      __p[0] = "usd/crateFile.cpp";
      __p[1] = "Open";
      v28 = 2664;
      v29 = "static std::unique_ptr<CrateFile> pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::Open(const string &, const ArAssetSharedPtr &, BOOL)";
      v30 = 0;
      if (*(a1 + 23) >= 0)
      {
        v12 = a1;
      }

      else
      {
        v12 = *a1;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 3, "Failed to open asset '%s'", v12);
      goto LABEL_38;
    }

    (*(*v10 + 48))(__p);
    v31 = *__p;
    v10 = __p[0];
    a2 = &v31;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  if (pxrInternal__aapl__pxrReserved__::ArIsPackageRelativePath(a1))
  {
    v11 = operator new(0x1A68uLL);
    pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::CrateFile(v11, a1, a2, a3);
  }

  else
  {
    v13 = atomic_load(pxrInternal__aapl__pxrReserved__::USDC_USE_ASSET);
    if (!v13)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
    }

    if ((*v13 & 1) == 0)
    {
      v15 = (*(**a2 + 40))();
      if (v15)
      {
        v16 = v14;
        sub_29A008E78(__p, "USDC_USE_PREAD");
        v17 = pxrInternal__aapl__pxrReserved__::TfGetenvBool(__p, 0);
        if (SHIBYTE(v28) < 0)
        {
          operator delete(__p[0]);
        }

        if (v17)
        {
          v18 = operator new(0x1A68uLL);
          pxrInternal__aapl__pxrReserved__::ArchGetFileName(v15, v25);
          v19 = (*(**a2 + 16))();
          __p[0] = v15;
          __p[1] = v16;
          if (v19 == -1)
          {
            v19 = pxrInternal__aapl__pxrReserved__::ArchGetFileLength(v15, v20) - v16;
          }

          v28 = v19;
          LOBYTE(v29) = 0;
          pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::CrateFile(v18, a1, v21, __p, a2);
          sub_29A4C9874(a4, v18);
          if (__p[0] && v29 == 1)
          {
            fclose(__p[0]);
          }

          if (v26 < 0)
          {
            operator delete(v25[0]);
          }
        }

        else
        {
          if (*(a1 + 23) >= 0)
          {
            v22 = a1;
          }

          else
          {
            v22 = *a1;
          }

          pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_MmapAsset(v22, a2, v25);
          v23 = operator new(0x1A68uLL);
          pxrInternal__aapl__pxrReserved__::ArchGetFileName(v15, __p);
          pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::CrateFile(v23, a1, v24, v25);
          sub_29A4C9874(a4, v23);
          if (SHIBYTE(v28) < 0)
          {
            operator delete(__p[0]);
          }

          sub_29A4DABB4(v25);
        }
      }
    }

    if (*a4)
    {
      goto LABEL_36;
    }

    v11 = operator new(0x1A68uLL);
    pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::CrateFile(v11, a1, a2, a3);
  }

  sub_29A4C9874(a4, v11);
LABEL_36:
  if ((*(*a4 + 6743) & 0x8000000000000000) != 0)
  {
    if (*(*a4 + 841))
    {
      goto LABEL_38;
    }
  }

  else if (*(*a4 + 6743))
  {
    goto LABEL_38;
  }

  sub_29A4C9874(a4, 0);
LABEL_38:
  if (*(&v31 + 1))
  {
    sub_29A014BEC(*(&v31 + 1));
  }

  if (v32)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v33, v32);
  }
}

void sub_29A4CB310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, FILE *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a16 && a22 == 1)
  {
    fclose(a16);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete(v27);
  if (a26)
  {
    sub_29A014BEC(a26);
  }

  sub_29A4C9874(v26, 0);
  sub_29A0E9CEC(v28 - 80);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::Open(pxrInternal__aapl__pxrReserved__ *a1@<X0>, uint64_t *a2@<X1>, pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **a3@<X8>)
{
  v4 = a1;
  v6 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v6)
  {
    a1 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("Usd_CrateFile::CrateFile::Open", 0);
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  v15 = v7;
  v16 = v7 != 0;
  Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(a1);
  if (*(v4 + 23) < 0)
  {
    sub_29A008D14(__p, *v4, *(v4 + 1));
  }

  else
  {
    *__p = *v4;
    v13 = *(v4 + 2);
  }

  pxrInternal__aapl__pxrReserved__::ArResolver::OpenAsset(Resolver);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  *a3 = 0;
  if (*(v4 + 23) >= 0)
  {
    v9 = v4;
  }

  else
  {
    v9 = *v4;
  }

  pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_MmapBuffer(v9, a2, __p);
  v10 = operator new(0x1A68uLL);
  pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::CrateFile(v10, v4, v11, __p);
  sub_29A4C9874(a3, v10);
  sub_29A4DABB4(__p);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7 != 0, v7);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::GetSoftwareVersionToken(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *this)
{
  if ((atomic_load_explicit(&qword_2A17420E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17420E8))
  {
    v2 = operator new(8uLL);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%hhd.%hhd.%hhd", v3, v4, 0, 12, 0);
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2);
    if (v6 < 0)
    {
      operator delete(__p);
    }

    qword_2A17420E0 = v2;
    __cxa_guard_release(&qword_2A17420E8);
  }

  return qword_2A17420E0;
}

void sub_29A4CB65C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  operator delete(v17);
  __cxa_guard_abort(&qword_2A17420E8);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::GetFileVersionToken(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *this@<X0>, const char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%hhd.%hhd.%hhd", a2, a3, *(this + 6576), *(this + 6577), *(this + 6578));
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a4);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_29A4CB71C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::CrateFile(uint64_t a1, int a2)
{
  *(a1 + 96) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 200) = 1065353216;
  *(a1 + 208) = 0;
  sub_29A4E5468(a1 + 216, 0, 0.0, 0.5);
  for (i = 320; i != 2240; i += 32)
  {
    *(a1 + i) = 0;
  }

  do
  {
    *(a1 + i) = 0;
    i += 32;
  }

  while (i != 4160);
  v5 = -1920;
  do
  {
    *(a1 + v5 + 6080) = 0;
    v5 += 32;
  }

  while (v5);
  *(a1 + 6640) = 0u;
  *(a1 + 6624) = 0u;
  *(a1 + 6608) = 0u;
  *(a1 + 6592) = 0u;
  *(a1 + 6576) = 0u;
  *(a1 + 6536) = 0u;
  *(a1 + 6552) = 0u;
  *(a1 + 6568) = 0x434453552D525850;
  *(a1 + 6577) = 12;
  *(a1 + 6696) = 0u;
  *(a1 + 6656) = 0u;
  *(a1 + 6672) = 0u;
  *(a1 + 6688) = 0;
  *(a1 + 6712) = a2 == 2;
  *(a1 + 6720) = 0u;
  *(a1 + 6736) = 0u;
  *(a1 + 6752) = a2 == 1;
  pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_DoAllTypeRegistrations(a1);
  return a1;
}

void sub_29A4CB89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v16 = *(v10 + 6744);
  *(v10 + 6744) = 0;
  if (v16)
  {
    operator delete[](v16);
  }

  if (*(v13 + 2647) < 0)
  {
    operator delete(*(v10 + v14));
  }

  v17 = *(v10 + 6704);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  v18 = *(v10 + 6664);
  if (v18 && *(v13 + 2592) == 1)
  {
    fclose(v18);
  }

  sub_29A4DABB4(v12);
  v19 = *(v10 + 6544);
  if (v19)
  {
    *(v10 + 6552) = v19;
    operator delete(v19);
  }

  sub_29A4CF4F0(v11, 0);
  v20 = v10 + 6024;
  v21 = -1920;
  do
  {
    v20 = sub_29A4E5688(v20) - 32;
    v21 += 32;
  }

  while (v21);
  v22 = v10 + 4104;
  v23 = -1920;
  do
  {
    v22 = sub_29A4E5688(v22) - 32;
    v23 += 32;
  }

  while (v23);
  v24 = v10 + 2184;
  v25 = -1920;
  do
  {
    v24 = sub_29A4E5688(v24) - 32;
    v25 += 32;
  }

  while (v25);
  a10 = (v10 + 224);
  sub_29A4DABE8(&a10);
  sub_29A4E57E8(v10 + 168);
  v26 = *(v10 + 144);
  if (v26)
  {
    *(v10 + 152) = v26;
    operator delete(v26);
  }

  a10 = (v10 + 120);
  sub_29A124AB0(&a10);
  sub_29A1E234C(&a10);
  v27 = *(v10 + 72);
  if (v27)
  {
    *(v10 + 80) = v27;
    operator delete(v27);
  }

  v28 = *(v10 + 48);
  if (v28)
  {
    *(v10 + 56) = v28;
    operator delete(v28);
  }

  a10 = (v10 + 24);
  sub_29A4E5708(&a10);
  v29 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

double pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_BootStrap::_BootStrap(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_BootStrap *this)
{
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *this = 0x434453552D525850;
  *(this + 9) = 12;
  return result;
}

{
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *this = 0x434453552D525850;
  *(this + 9) = 12;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_DoAllTypeRegistrations(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *this)
{
  v2 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v2)
  {
    v3 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("Usd_CrateFile::CrateFile::_DoAllTypeRegistrations", 0);
  }

  else
  {
    v3 = 0;
  }

  sub_29A4D3D58(this);
  sub_29A4D3F18(this);
  sub_29A4D40D8(this);
  sub_29A4D4298(this);
  sub_29A4D4458(this);
  sub_29A4D4618(this);
  sub_29A4D47D8(this);
  sub_29A4D499C(this);
  sub_29A4D4B5C(this);
  sub_29A4D4D1C(this);
  sub_29A4D4EE0(this);
  sub_29A4D50A4(this);
  sub_29A4D5268(this);
  sub_29A4D542C(this);
  sub_29A4D55F0(this);
  sub_29A4D57B4(this);
  sub_29A4D5978(this);
  sub_29A4D5B3C(this);
  sub_29A4D5D00(this);
  sub_29A4D5EC4(this);
  sub_29A4D6088(this);
  sub_29A4D624C(this);
  sub_29A4D6410(this);
  sub_29A4D65D4(this);
  sub_29A4D6798(this);
  sub_29A4D695C(this);
  sub_29A4D6B20(this);
  sub_29A4D6CE4(this);
  sub_29A4D6EA8(this);
  sub_29A4D706C(this);
  sub_29A4D7230(this);
  sub_29A4D73F4(this);
  sub_29A4D75B8(this);
  sub_29A4D777C(this);
  sub_29A4D7940(this);
  sub_29A4D7B04(this);
  sub_29A4D7CC8(this);
  sub_29A4D7E8C(this);
  sub_29A4D8050(this);
  sub_29A4D8214(this);
  sub_29A4D83D8(this);
  sub_29A4D859C(this);
  sub_29A4D8760(this);
  sub_29A4D8924(this);
  sub_29A4D8AE8(this);
  sub_29A4D8CAC(this);
  sub_29A4D8E70(this);
  sub_29A4D9034(this);
  sub_29A4D91F8(this);
  sub_29A4D93BC(this);
  sub_29A4D9580(this);
  sub_29A4D9744(this);
  sub_29A4D9908(this);
  sub_29A4D9ACC(this);
  sub_29A4D9C90(this);
  sub_29A4D9E54(this);
  sub_29A4DA018(this);
  sub_29A4DA1DC(this);
  result = sub_29A4DA3A0(this);
  if (v3)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v3 != 0, v3);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::CrateFile(uint64_t a1, __int128 *a2, uint64_t a3, void **a4)
{
  *(a1 + 96) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 200) = 1065353216;
  *(a1 + 208) = 0;
  sub_29A4E5468(a1 + 216, 0, 0.0, 0.5);
  for (i = 320; i != 2240; i += 32)
  {
    *(a1 + i) = 0;
  }

  do
  {
    *(a1 + i) = 0;
    i += 32;
  }

  while (i != 4160);
  v9 = -1920;
  do
  {
    *(a1 + v9 + 6080) = 0;
    v9 += 32;
  }

  while (v9);
  *(a1 + 6640) = 0u;
  *(a1 + 6624) = 0u;
  *(a1 + 6608) = 0u;
  *(a1 + 6592) = 0u;
  *(a1 + 6576) = 0u;
  *(a1 + 6536) = 0u;
  *(a1 + 6552) = 0u;
  *(a1 + 6568) = 0x434453552D525850;
  *(a1 + 6577) = 12;
  *(a1 + 6656) = *a4;
  *a4 = 0;
  sub_29A4DAB48(a4, v7);
  *a4 = 0;
  *(a1 + 6688) = 0;
  *(a1 + 6680) = 0;
  *(a1 + 6664) = 0u;
  *(a1 + 6696) = 0u;
  *(a1 + 6712) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14((a1 + 6720), *a2, *(a2 + 1));
  }

  else
  {
    v10 = *a2;
    *(a1 + 6736) = *(a2 + 2);
    *(a1 + 6720) = v10;
  }

  *(a1 + 6744) = 0;
  *(a1 + 6752) = 1;
  pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_DoAllTypeRegistrations(a1);
  pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_InitMMap(a1);
  return a1;
}

void sub_29A4CBE3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v15 = *(v10 + 6704);
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  if (*v13 && *(v12 + 2592) == 1)
  {
    fclose(*v13);
  }

  sub_29A4DABB4((v10 + 6656));
  v16 = *(v10 + 6544);
  if (v16)
  {
    *(v10 + 6552) = v16;
    operator delete(v16);
  }

  sub_29A4CF4F0(v11, 0);
  v17 = v10 + 6024;
  v18 = -1920;
  do
  {
    v17 = sub_29A4E5688(v17) - 32;
    v18 += 32;
  }

  while (v18);
  v19 = v10 + 4104;
  v20 = -1920;
  do
  {
    v19 = sub_29A4E5688(v19) - 32;
    v20 += 32;
  }

  while (v20);
  v21 = v10 + 2184;
  v22 = -1920;
  do
  {
    v21 = sub_29A4E5688(v21) - 32;
    v22 += 32;
  }

  while (v22);
  a10 = (v10 + 224);
  sub_29A4DABE8(&a10);
  sub_29A4E57E8(v10 + 168);
  v23 = *(v10 + 144);
  if (v23)
  {
    *(v10 + 152) = v23;
    operator delete(v23);
  }

  a10 = (v10 + 120);
  sub_29A124AB0(&a10);
  sub_29A1E234C(&a10);
  v24 = *(v10 + 72);
  if (v24)
  {
    *(v10 + 80) = v24;
    operator delete(v24);
  }

  v25 = *(v10 + 48);
  if (v25)
  {
    *(v10 + 56) = v25;
    operator delete(v25);
  }

  a10 = (v10 + 24);
  sub_29A4E5708(&a10);
  v26 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_InitMMap(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *this)
{
  v2 = this + 4096;
  v3 = *(this + 832);
  if (!v3)
  {
    if (*(this + 6743) < 0)
    {
      **(this + 840) = 0;
      *(this + 841) = 0;
    }

    else
    {
      *(this + 6720) = 0;
      *(this + 6743) = 0;
    }

    return;
  }

  v4 = *(v3 + 32);
  pxrInternal__aapl__pxrReserved__::ArchMemAdvise(*(v3 + 24), v4, 3);
  if ((atomic_load_explicit(&qword_2A1742108, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1742108))
  {
    sub_29A008E78(&v20, "USDC_DUMP_PAGE_MAPS");
    sub_29A008E78(__p, "");
    pxrInternal__aapl__pxrReserved__::TfGetenv(&v20, __p, &qword_2A17420F0);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(v20);
    }

    __cxa_atexit(MEMORY[0x29EDC9388], &qword_2A17420F0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1742108);
  }

  v5 = byte_2A1742107;
  if (byte_2A1742107 < 0)
  {
    v5 = qword_2A17420F8;
  }

  if (!v5)
  {
    goto LABEL_19;
  }

  if (byte_2A1742107 < 0)
  {
    if (qword_2A17420F8 != 1)
    {
      goto LABEL_15;
    }

    v6 = *qword_2A17420F0;
  }

  else
  {
    if (byte_2A1742107 != 1)
    {
      goto LABEL_15;
    }

    v6 = qword_2A17420F0;
  }

  if (v6 == 42 || v6 == 49)
  {
    goto LABEL_16;
  }

LABEL_15:
  pxrInternal__aapl__pxrReserved__::ArchRegex::ArchRegex(&v20, &qword_2A17420F0, 2);
  v7 = pxrInternal__aapl__pxrReserved__::ArchRegex::Match(&v20, this + 6720);
  pxrInternal__aapl__pxrReserved__::ArchRegex::~ArchRegex(&v20);
  if (v7)
  {
LABEL_16:
    v8 = *(*(this + 832) + 24);
    v9 = v8 + v4;
    v10 = sub_29A4DAE4C() & v8;
    v11 = ~v10 + v9 + sub_29A4CA1A0();
    v12 = v11 / sub_29A4CA1A0();
    v13 = operator new[](v12);
    v14 = *(this + 843);
    *(this + 843) = v13;
    if (v14)
    {
      operator delete[](v14);
      v13 = *(this + 843);
    }

    bzero(v13, v12);
  }

LABEL_19:
  v15 = *(this + 843);
  v16 = *(*(this + 832) + 24);
  sub_29A4CCA14();
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(__p);
  *&v20 = this;
  *(&v20 + 1) = v16;
  v21 = this + 6656;
  v22 = v15;
  v23 = 0;
  sub_29A4CC2C8(this, &v20, v4);
  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v17)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v18 = __p[0];
  v19 = atomic_load((v17 + 144));
  if (v18 < v19 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(__p, v17))
  {
    if (v2[2647] < 0)
    {
      **(this + 840) = 0;
      *(this + 841) = 0;
    }

    else
    {
      v2[2624] = 0;
      v2[2647] = 0;
    }
  }

  if (!sub_29A4CCA14())
  {
    pxrInternal__aapl__pxrReserved__::ArchMemAdvise(*(*(this + 832) + 24), v4, 0);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(__p);
}

void sub_29A4CC260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  __cxa_guard_abort(&qword_2A1742108);
  _Unwind_Resume(a1);
}

void sub_29A4CC2C8(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v70 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v63);
  v6 = *(a2 + 24);
  v60 = *(a2 + 8);
  v61 = v6;
  sub_29A4E5868(&v60, a3, &v64);
  *(a1 + 6648) = v69;
  v7 = v67;
  *(a1 + 6600) = v66;
  *(a1 + 6616) = v7;
  *(a1 + 6632) = v68;
  v8 = v65;
  *(a1 + 6568) = v64;
  *(a1 + 6584) = v8;
  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v9)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v10 = v63;
  v11 = atomic_load((v9 + 144));
  if (v10 >= v11 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v63, v9))
  {
    v12 = a2[1];
    v60 = *a2;
    v61 = v12;
    v62 = *(a2 + 4);
    sub_29A4E5AC8(&v60, a1 + 6568, &v64);
    v13 = *(a1 + 6544);
    if (v13)
    {
      *(a1 + 6552) = v13;
      operator delete(v13);
      *(a1 + 6544) = 0;
      *(a1 + 6552) = 0;
      *(a1 + 6560) = 0;
    }

    *(a1 + 6544) = v64;
    *(a1 + 6560) = v65;
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v14)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v15 = v63;
  v16 = atomic_load((v14 + 144));
  if (v15 >= v16 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v63, v14))
  {
    v17 = a2[1];
    v60 = *a2;
    v61 = v17;
    v62 = *(a2 + 4);
    sub_29A4E5B68(a1, &v60);
  }

  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v18)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v19 = v63;
  v20 = atomic_load((v18 + 144));
  if (v19 >= v20 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v63, v18))
  {
    v21 = a2[1];
    v60 = *a2;
    v61 = v21;
    v62 = *(a2 + 4);
    sub_29A4E5C58(a1, &v60);
  }

  v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v22)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v23 = v63;
  v24 = atomic_load((v22 + 144));
  if (v23 >= v24 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v63, v22))
  {
    v25 = a2[1];
    v60 = *a2;
    v61 = v25;
    v62 = *(a2 + 4);
    sub_29A4E6360(a1, &v60);
  }

  v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v26)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v27 = v63;
  v28 = atomic_load((v26 + 144));
  if (v27 >= v28 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v63, v26))
  {
    v29 = a2[1];
    v60 = *a2;
    v61 = v29;
    v62 = *(a2 + 4);
    sub_29A4E6438(a1, &v60);
  }

  v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v30)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v31 = v63;
  v32 = atomic_load((v30 + 144));
  if (v31 >= v32 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v63, v30))
  {
    v33 = a2[1];
    v60 = *a2;
    v61 = v33;
    v62 = *(a2 + 4);
    sub_29A4E67D4(a1, &v60);
  }

  v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v34)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v35 = v63;
  v36 = atomic_load((v34 + 144));
  if (v35 >= v36 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v63, v34))
  {
    v37 = a2[1];
    v60 = *a2;
    v61 = v37;
    v62 = *(a2 + 4);
    sub_29A4E6A90(a1, &v60);
  }

  v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v38)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v39 = v63;
  v40 = atomic_load((v38 + 144));
  if (v39 >= v40 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v63, v38))
  {
    v41 = a2[1];
    v60 = *a2;
    v61 = v41;
    v62 = *(a2 + 4);
    sub_29A4E6E64(a1, &v60);
  }

  v42 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v42)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v43 = v63;
  v44 = atomic_load((v42 + 144));
  if (v43 >= v44 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v63, v42))
  {
    v45 = *(a1 + 48);
    v46 = *(a1 + 56);
    if (v45 != v46)
    {
      v47 = *(a1 + 48);
      while ((*(a1 + 128) - *(a1 + 120)) >> 3 > *(v47 + 4))
      {
        v47 += 16;
        if (v47 == v46)
        {
          goto LABEL_51;
        }
      }

      *&v64 = "usd/crateFile.cpp";
      *(&v64 + 1) = "operator()";
      *&v65 = 3771;
      *(&v65 + 1) = "auto pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadStructuralSections(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, int64_t)::(anonymous class)::operator()() const";
      LOBYTE(v66) = 0;
      v59 = (a1 + 6720);
      if (*(a1 + 6743) < 0)
      {
        v59 = *v59;
      }

      goto LABEL_77;
    }

LABEL_51:
    v48 = *(a1 + 72);
    v49 = *(a1 + 80);
    if (v48 != v49)
    {
      v50 = (v46 - v45) >> 4;
      v51 = *(a1 + 72);
      while (1)
      {
        v52 = *v51;
        if (v52 != -1 && v50 <= v52)
        {
          break;
        }

        if (++v51 == v49)
        {
          goto LABEL_59;
        }
      }

      *&v64 = "usd/crateFile.cpp";
      *(&v64 + 1) = "operator()";
      *&v65 = 3771;
      *(&v65 + 1) = "auto pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadStructuralSections(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, int64_t)::(anonymous class)::operator()() const";
      LOBYTE(v66) = 0;
      v59 = (a1 + 6720);
      if (*(a1 + 6743) < 0)
      {
        v59 = *v59;
      }

      goto LABEL_77;
    }

LABEL_59:
    v54 = *a1;
    v55 = *(a1 + 8);
    if (*a1 != v55)
    {
      v56 = v49 - v48;
      while ((*(a1 + 104) - *(a1 + 96)) >> 3 > *v54)
      {
        v57 = v54[1];
        if (v56 <= v57 || v57 && v48[(v57 - 1)] != -1)
        {
          break;
        }

        v58 = v54[2];
        if (!v58 || v58 >= 12)
        {
          break;
        }

        v54 += 3;
        if (v54 == v55)
        {
          goto LABEL_78;
        }
      }

      *&v64 = "usd/crateFile.cpp";
      *(&v64 + 1) = "operator()";
      *&v65 = 3771;
      *(&v65 + 1) = "auto pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadStructuralSections(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_MmapStream<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_FileMapping *>>, int64_t)::(anonymous class)::operator()() const";
      LOBYTE(v66) = 0;
      v59 = (a1 + 6720);
      if (*(a1 + 6743) < 0)
      {
        v59 = *v59;
      }

LABEL_77:
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v64, 3, "Corrupt asset @%s@", v59);
      *(a1 + 8) = *a1;
      *(a1 + 80) = *(a1 + 72);
      *(a1 + 56) = *(a1 + 48);
    }
  }

LABEL_78:
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v63);
}

void sub_29A4CC89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void sub_29A4CC98C(void *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  JUMPOUT(0x29A4CC8C4);
}

BOOL sub_29A4CC99C(pxrInternal__aapl__pxrReserved__::TfErrorMark *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v1)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v2 = *this;
  v3 = atomic_load((v1 + 144));
  if (v2 >= v3)
  {
    return 1;
  }

  return pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(this, v1);
}

uint64_t sub_29A4CCA14()
{
  if ((atomic_load_explicit(&qword_2A1742138, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1742138))
  {
    dword_2A1742130 = sub_29A4DADB4();
    __cxa_guard_release(&qword_2A1742138);
  }

  return dword_2A1742130;
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::CrateFile(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(a1 + 96) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 200) = 1065353216;
  *(a1 + 208) = 0;
  sub_29A4E5468(a1 + 216, 0, 0.0, 0.5);
  for (i = 320; i != 2240; i += 32)
  {
    *(a1 + i) = 0;
  }

  do
  {
    *(a1 + i) = 0;
    i += 32;
  }

  while (i != 4160);
  v10 = -1920;
  do
  {
    *(a1 + v10 + 6080) = 0;
    v10 += 32;
  }

  while (v10);
  *(a1 + 6640) = 0u;
  *(a1 + 6624) = 0u;
  *(a1 + 6608) = 0u;
  *(a1 + 6592) = 0u;
  *(a1 + 6576) = 0u;
  *(a1 + 6536) = 0u;
  *(a1 + 6552) = 0u;
  *(a1 + 6568) = 0x434453552D525850;
  *(a1 + 6577) = 12;
  *(a1 + 6656) = 0;
  *(a1 + 6664) = *a4;
  *(a1 + 6672) = *(a4 + 8);
  *(a1 + 6688) = *(a4 + 24);
  *a4 = 0;
  *(a1 + 6696) = *a5;
  v11 = a5[1];
  *(a1 + 6704) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 6712) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14((a1 + 6720), *a2, *(a2 + 1));
  }

  else
  {
    v12 = *a2;
    *(a1 + 6736) = *(a2 + 2);
    *(a1 + 6720) = v12;
  }

  *(a1 + 6744) = 0;
  *(a1 + 6752) = 0;
  pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_DoAllTypeRegistrations(a1);
  pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_InitPread(a1);
  return a1;
}

void sub_29A4CCC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v14 = *(v10 + 6704);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  v15 = *(v10 + 6664);
  if (v15 && *(v12 + 2592) == 1)
  {
    fclose(v15);
  }

  sub_29A4DABB4((v10 + 6656));
  v16 = *(v10 + 6544);
  if (v16)
  {
    *(v10 + 6552) = v16;
    operator delete(v16);
  }

  sub_29A4CF4F0(v11, 0);
  v17 = v10 + 6024;
  v18 = -1920;
  do
  {
    v17 = sub_29A4E5688(v17) - 32;
    v18 += 32;
  }

  while (v18);
  v19 = v10 + 4104;
  v20 = -1920;
  do
  {
    v19 = sub_29A4E5688(v19) - 32;
    v20 += 32;
  }

  while (v20);
  v21 = v10 + 2184;
  v22 = -1920;
  do
  {
    v21 = sub_29A4E5688(v21) - 32;
    v22 += 32;
  }

  while (v22);
  a10 = (v10 + 224);
  sub_29A4DABE8(&a10);
  sub_29A4E57E8(v10 + 168);
  v23 = *(v10 + 144);
  if (v23)
  {
    *(v10 + 152) = v23;
    operator delete(v23);
  }

  a10 = (v10 + 120);
  sub_29A124AB0(&a10);
  sub_29A1E234C(&a10);
  v24 = *(v10 + 72);
  if (v24)
  {
    *(v10 + 80) = v24;
    operator delete(v24);
  }

  v25 = *(v10 + 48);
  if (v25)
  {
    *(v10 + 56) = v25;
    operator delete(v25);
  }

  a10 = (v10 + 24);
  sub_29A4E5708(&a10);
  v26 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_InitPread(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *this)
{
  v2 = *(this + 835);
  pxrInternal__aapl__pxrReserved__::ArchFileAdvise(*(this + 833), *(this + 834));
  v3 = *(this + 834);
  v4 = *(this + 835);
  v5 = *(this + 833);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v13);
  *&v9 = this;
  *(&v9 + 1) = v3;
  v10 = 0;
  v11 = v4;
  v12 = v5;
  sub_29A4CCEA8(this, &v9, v2);
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v7 = v13;
  v8 = atomic_load((v6 + 144));
  if (v7 < v8 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v13, v6))
  {
    if (*(this + 6743) < 0)
    {
      **(this + 840) = 0;
      *(this + 841) = 0;
    }

    else
    {
      *(this + 6720) = 0;
      *(this + 6743) = 0;
    }
  }

  pxrInternal__aapl__pxrReserved__::ArchFileAdvise(*(this + 833), *(this + 834));
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v13);
}

void sub_29A4CCE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void sub_29A4CCEA8(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v70 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v63);
  v6 = *(a2 + 24);
  v60 = *(a2 + 8);
  v61 = v6;
  sub_29A4ED40C(&v60, a3, &v64);
  *(a1 + 6648) = v69;
  v7 = v67;
  *(a1 + 6600) = v66;
  *(a1 + 6616) = v7;
  *(a1 + 6632) = v68;
  v8 = v65;
  *(a1 + 6568) = v64;
  *(a1 + 6584) = v8;
  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v9)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v10 = v63;
  v11 = atomic_load((v9 + 144));
  if (v10 >= v11 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v63, v9))
  {
    v12 = a2[1];
    v60 = *a2;
    v61 = v12;
    v62 = *(a2 + 4);
    sub_29A4ED680(&v60, a1 + 6568, &v64);
    v13 = *(a1 + 6544);
    if (v13)
    {
      *(a1 + 6552) = v13;
      operator delete(v13);
      *(a1 + 6544) = 0;
      *(a1 + 6552) = 0;
      *(a1 + 6560) = 0;
    }

    *(a1 + 6544) = v64;
    *(a1 + 6560) = v65;
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v14)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v15 = v63;
  v16 = atomic_load((v14 + 144));
  if (v15 >= v16 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v63, v14))
  {
    v17 = a2[1];
    v60 = *a2;
    v61 = v17;
    v62 = *(a2 + 4);
    sub_29A4ED710(a1, &v60);
  }

  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v18)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v19 = v63;
  v20 = atomic_load((v18 + 144));
  if (v19 >= v20 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v63, v18))
  {
    v21 = a2[1];
    v60 = *a2;
    v61 = v21;
    v62 = *(a2 + 4);
    sub_29A4ED7FC(a1, &v60);
  }

  v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v22)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v23 = v63;
  v24 = atomic_load((v22 + 144));
  if (v23 >= v24 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v63, v22))
  {
    v25 = a2[1];
    v60 = *a2;
    v61 = v25;
    v62 = *(a2 + 4);
    sub_29A4EDEDC(a1, &v60);
  }

  v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v26)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v27 = v63;
  v28 = atomic_load((v26 + 144));
  if (v27 >= v28 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v63, v26))
  {
    v29 = a2[1];
    v60 = *a2;
    v61 = v29;
    v62 = *(a2 + 4);
    sub_29A4EDFA4(a1, &v60);
  }

  v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v30)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v31 = v63;
  v32 = atomic_load((v30 + 144));
  if (v31 >= v32 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v63, v30))
  {
    v33 = a2[1];
    v60 = *a2;
    v61 = v33;
    v62 = *(a2 + 4);
    sub_29A4EE320(a1, &v60);
  }

  v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v34)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v35 = v63;
  v36 = atomic_load((v34 + 144));
  if (v35 >= v36 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v63, v34))
  {
    v37 = a2[1];
    v60 = *a2;
    v61 = v37;
    v62 = *(a2 + 4);
    sub_29A4EE5CC(a1, &v60);
  }

  v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v38)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v39 = v63;
  v40 = atomic_load((v38 + 144));
  if (v39 >= v40 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v63, v38))
  {
    v41 = a2[1];
    v60 = *a2;
    v61 = v41;
    v62 = *(a2 + 4);
    sub_29A4EE984(a1, &v60);
  }

  v42 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v42)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v43 = v63;
  v44 = atomic_load((v42 + 144));
  if (v43 >= v44 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v63, v42))
  {
    v45 = *(a1 + 48);
    v46 = *(a1 + 56);
    if (v45 != v46)
    {
      v47 = *(a1 + 48);
      while ((*(a1 + 128) - *(a1 + 120)) >> 3 > *(v47 + 4))
      {
        v47 += 16;
        if (v47 == v46)
        {
          goto LABEL_51;
        }
      }

      *&v64 = "usd/crateFile.cpp";
      *(&v64 + 1) = "operator()";
      *&v65 = 3771;
      *(&v65 + 1) = "auto pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadStructuralSections(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, int64_t)::(anonymous class)::operator()() const";
      LOBYTE(v66) = 0;
      v59 = (a1 + 6720);
      if (*(a1 + 6743) < 0)
      {
        v59 = *v59;
      }

      goto LABEL_77;
    }

LABEL_51:
    v48 = *(a1 + 72);
    v49 = *(a1 + 80);
    if (v48 != v49)
    {
      v50 = (v46 - v45) >> 4;
      v51 = *(a1 + 72);
      while (1)
      {
        v52 = *v51;
        if (v52 != -1 && v50 <= v52)
        {
          break;
        }

        if (++v51 == v49)
        {
          goto LABEL_59;
        }
      }

      *&v64 = "usd/crateFile.cpp";
      *(&v64 + 1) = "operator()";
      *&v65 = 3771;
      *(&v65 + 1) = "auto pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadStructuralSections(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, int64_t)::(anonymous class)::operator()() const";
      LOBYTE(v66) = 0;
      v59 = (a1 + 6720);
      if (*(a1 + 6743) < 0)
      {
        v59 = *v59;
      }

      goto LABEL_77;
    }

LABEL_59:
    v54 = *a1;
    v55 = *(a1 + 8);
    if (*a1 != v55)
    {
      v56 = v49 - v48;
      while ((*(a1 + 104) - *(a1 + 96)) >> 3 > *v54)
      {
        v57 = v54[1];
        if (v56 <= v57 || v57 && v48[(v57 - 1)] != -1)
        {
          break;
        }

        v58 = v54[2];
        if (!v58 || v58 >= 12)
        {
          break;
        }

        v54 += 3;
        if (v54 == v55)
        {
          goto LABEL_78;
        }
      }

      *&v64 = "usd/crateFile.cpp";
      *(&v64 + 1) = "operator()";
      *&v65 = 3771;
      *(&v65 + 1) = "auto pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadStructuralSections(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_PreadStream>, int64_t)::(anonymous class)::operator()() const";
      LOBYTE(v66) = 0;
      v59 = (a1 + 6720);
      if (*(a1 + 6743) < 0)
      {
        v59 = *v59;
      }

LABEL_77:
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v64, 3, "Corrupt asset @%s@", v59);
      *(a1 + 8) = *a1;
      *(a1 + 80) = *(a1 + 72);
      *(a1 + 56) = *(a1 + 48);
    }
  }

LABEL_78:
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v63);
}

void sub_29A4CD47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void sub_29A4CD56C(void *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  JUMPOUT(0x29A4CD4A4);
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::CrateFile(uint64_t a1, __int128 *a2, void *a3, char a4)
{
  *(a1 + 96) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 200) = 1065353216;
  *(a1 + 208) = 0;
  sub_29A4E5468(a1 + 216, 0, 0.0, 0.5);
  for (i = 320; i != 2240; i += 32)
  {
    *(a1 + i) = 0;
  }

  do
  {
    *(a1 + i) = 0;
    i += 32;
  }

  while (i != 4160);
  v9 = -1920;
  do
  {
    *(a1 + v9 + 6080) = 0;
    v9 += 32;
  }

  while (v9);
  *(a1 + 6640) = 0u;
  *(a1 + 6624) = 0u;
  *(a1 + 6608) = 0u;
  *(a1 + 6592) = 0u;
  *(a1 + 6576) = 0u;
  *(a1 + 6536) = 0u;
  *(a1 + 6552) = 0u;
  *(a1 + 6568) = 0x434453552D525850;
  *(a1 + 6577) = 12;
  *(a1 + 6656) = 0u;
  *(a1 + 6672) = 0u;
  *(a1 + 6688) = 0;
  *(a1 + 6696) = *a3;
  v10 = a3[1];
  *(a1 + 6704) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 6712) = a4;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14((a1 + 6720), *a2, *(a2 + 1));
  }

  else
  {
    v11 = *a2;
    *(a1 + 6736) = *(a2 + 2);
    *(a1 + 6720) = v11;
  }

  *(a1 + 6744) = 0;
  *(a1 + 6752) = 0;
  pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_DoAllTypeRegistrations(a1);
  pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_InitAsset(a1);
  return a1;
}

void sub_29A4CD720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v15 = *(v10 + 6704);
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  v16 = *(v10 + 6664);
  if (v16 && *(v13 + 2592) == 1)
  {
    fclose(v16);
  }

  sub_29A4DABB4(v12);
  v17 = *(v10 + 6544);
  if (v17)
  {
    *(v10 + 6552) = v17;
    operator delete(v17);
  }

  sub_29A4CF4F0(v11, 0);
  v18 = v10 + 6024;
  v19 = -1920;
  do
  {
    v18 = sub_29A4E5688(v18) - 32;
    v19 += 32;
  }

  while (v19);
  v20 = v10 + 4104;
  v21 = -1920;
  do
  {
    v20 = sub_29A4E5688(v20) - 32;
    v21 += 32;
  }

  while (v21);
  v22 = v10 + 2184;
  v23 = -1920;
  do
  {
    v22 = sub_29A4E5688(v22) - 32;
    v23 += 32;
  }

  while (v23);
  a10 = (v10 + 224);
  sub_29A4DABE8(&a10);
  sub_29A4E57E8(v10 + 168);
  v24 = *(v10 + 144);
  if (v24)
  {
    *(v10 + 152) = v24;
    operator delete(v24);
  }

  a10 = (v10 + 120);
  sub_29A124AB0(&a10);
  sub_29A1E234C(&a10);
  v25 = *(v10 + 72);
  if (v25)
  {
    *(v10 + 80) = v25;
    operator delete(v25);
  }

  v26 = *(v10 + 48);
  if (v26)
  {
    *(v10 + 56) = v26;
    operator delete(v26);
  }

  a10 = (v10 + 24);
  sub_29A4E5708(&a10);
  v27 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_InitAsset(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *this)
{
  v2 = *(this + 837);
  v3 = *(this + 838);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v11);
  *&v8 = this;
  *(&v8 + 1) = v2;
  v9 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = 0;
  v4 = (*(**(this + 837) + 16))(*(this + 837));
  sub_29A4CD9E8(this, &v8, v4);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v6 = v11;
  v7 = atomic_load((v5 + 144));
  if (v6 < v7 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v11, v5))
  {
    if (*(this + 6743) < 0)
    {
      **(this + 840) = 0;
      *(this + 841) = 0;
    }

    else
    {
      *(this + 6720) = 0;
      *(this + 6743) = 0;
    }
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v11);
  if (v3)
  {
    sub_29A014BEC(v3);
  }
}

void sub_29A4CD9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  _Unwind_Resume(a1);
}

void sub_29A4CD9E8(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v94 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v87);
  v6 = *(a2 + 2);
  v84 = *(a2 + 1);
  v85 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v86 = *(a2 + 3);
  sub_29A4CA6D4(&v84, a3, &v88);
  *(a1 + 6648) = v93;
  v7 = v91;
  *(a1 + 6600) = v90;
  *(a1 + 6616) = v7;
  *(a1 + 6632) = v92;
  v8 = v89;
  *(a1 + 6568) = v88;
  *(a1 + 6584) = v8;
  if (v85)
  {
    sub_29A014BEC(v85);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v9)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v10 = v87;
  v11 = atomic_load((v9 + 144));
  if (v10 >= v11 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v87, v9))
  {
    v81 = *a2;
    v12 = *(a2 + 2);
    v82 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v83 = *(a2 + 3);
    sub_29A4F10FC(&v81, a1 + 6568, &v88);
    v13 = *(a1 + 6544);
    if (v13)
    {
      *(a1 + 6552) = v13;
      operator delete(v13);
      *(a1 + 6544) = 0;
      *(a1 + 6552) = 0;
      *(a1 + 6560) = 0;
    }

    *(a1 + 6544) = v88;
    *(a1 + 6560) = v89;
    *&v89 = 0;
    v88 = 0uLL;
    if (v82)
    {
      sub_29A014BEC(v82);
    }
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v14)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v15 = v87;
  v16 = atomic_load((v14 + 144));
  if (v15 >= v16 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v87, v14))
  {
    v78 = *a2;
    v17 = *(a2 + 2);
    v79 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v80 = *(a2 + 3);
    sub_29A4F118C(a1, &v78);
    if (v79)
    {
      sub_29A014BEC(v79);
    }
  }

  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v18)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v19 = v87;
  v20 = atomic_load((v18 + 144));
  if (v19 >= v20 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v87, v18))
  {
    v75 = *a2;
    v21 = *(a2 + 2);
    v76 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v77 = *(a2 + 3);
    sub_29A4F127C(a1, &v75);
    if (v76)
    {
      sub_29A014BEC(v76);
    }
  }

  v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v22)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v23 = v87;
  v24 = atomic_load((v22 + 144));
  if (v23 >= v24 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v87, v22))
  {
    v72 = *a2;
    v25 = *(a2 + 2);
    v73 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v74 = *(a2 + 3);
    sub_29A4F1A5C(a1, &v72);
    if (v73)
    {
      sub_29A014BEC(v73);
    }
  }

  v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v26)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v27 = v87;
  v28 = atomic_load((v26 + 144));
  if (v27 >= v28 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v87, v26))
  {
    v69 = *a2;
    v29 = *(a2 + 2);
    v70 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v71 = *(a2 + 3);
    sub_29A4F1B24(a1, &v69);
    if (v70)
    {
      sub_29A014BEC(v70);
    }
  }

  v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v30)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v31 = v87;
  v32 = atomic_load((v30 + 144));
  if (v31 >= v32 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v87, v30))
  {
    v66 = *a2;
    v33 = *(a2 + 2);
    v67 = v33;
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v68 = *(a2 + 3);
    sub_29A4F1EF4(a1, &v66);
    if (v67)
    {
      sub_29A014BEC(v67);
    }
  }

  v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v34)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v35 = v87;
  v36 = atomic_load((v34 + 144));
  if (v35 >= v36 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v87, v34))
  {
    v63 = *a2;
    v37 = *(a2 + 2);
    v64 = v37;
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v65 = *(a2 + 3);
    sub_29A4F21A0(a1, &v63);
    if (v64)
    {
      sub_29A014BEC(v64);
    }
  }

  v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v38)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v39 = v87;
  v40 = atomic_load((v38 + 144));
  if (v39 >= v40 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v87, v38))
  {
    v60 = *a2;
    v41 = *(a2 + 2);
    v61 = v41;
    if (v41)
    {
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v62 = *(a2 + 3);
    sub_29A4F2610(a1, &v60);
    if (v61)
    {
      sub_29A014BEC(v61);
    }
  }

  v42 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v42)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v43 = v87;
  v44 = atomic_load((v42 + 144));
  if (v43 >= v44 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v87, v42))
  {
    v45 = *(a1 + 48);
    v46 = *(a1 + 56);
    if (v45 != v46)
    {
      v47 = *(a1 + 48);
      while ((*(a1 + 128) - *(a1 + 120)) >> 3 > *(v47 + 4))
      {
        v47 += 16;
        if (v47 == v46)
        {
          goto LABEL_79;
        }
      }

      *&v88 = "usd/crateFile.cpp";
      *(&v88 + 1) = "operator()";
      *&v89 = 3771;
      *(&v89 + 1) = "auto pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadStructuralSections(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, int64_t)::(anonymous class)::operator()() const";
      LOBYTE(v90) = 0;
      v59 = (a1 + 6720);
      if (*(a1 + 6743) < 0)
      {
        v59 = *v59;
      }

      goto LABEL_105;
    }

LABEL_79:
    v48 = *(a1 + 72);
    v49 = *(a1 + 80);
    if (v48 != v49)
    {
      v50 = (v46 - v45) >> 4;
      v51 = *(a1 + 72);
      while (1)
      {
        v52 = *v51;
        if (v52 != -1 && v50 <= v52)
        {
          break;
        }

        if (++v51 == v49)
        {
          goto LABEL_87;
        }
      }

      *&v88 = "usd/crateFile.cpp";
      *(&v88 + 1) = "operator()";
      *&v89 = 3771;
      *(&v89 + 1) = "auto pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadStructuralSections(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, int64_t)::(anonymous class)::operator()() const";
      LOBYTE(v90) = 0;
      v59 = (a1 + 6720);
      if (*(a1 + 6743) < 0)
      {
        v59 = *v59;
      }

      goto LABEL_105;
    }

LABEL_87:
    v54 = *a1;
    v55 = *(a1 + 8);
    if (*a1 != v55)
    {
      v56 = v49 - v48;
      while ((*(a1 + 104) - *(a1 + 96)) >> 3 > *v54)
      {
        v57 = v54[1];
        if (v56 <= v57 || v57 && v48[(v57 - 1)] != -1)
        {
          break;
        }

        v58 = v54[2];
        if (!v58 || v58 >= 12)
        {
          break;
        }

        v54 += 3;
        if (v54 == v55)
        {
          goto LABEL_106;
        }
      }

      *&v88 = "usd/crateFile.cpp";
      *(&v88 + 1) = "operator()";
      *&v89 = 3771;
      *(&v89 + 1) = "auto pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ReadStructuralSections(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Reader<pxrInternal__aapl__pxrReserved__::Usd_CrateFile::_AssetStream>, int64_t)::(anonymous class)::operator()() const";
      LOBYTE(v90) = 0;
      v59 = (a1 + 6720);
      if (*(a1 + 6743) < 0)
      {
        v59 = *v59;
      }

LABEL_105:
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v88, 3, "Corrupt asset @%s@", v59);
      *(a1 + 8) = *a1;
      *(a1 + 80) = *(a1 + 72);
      *(a1 + 56) = *(a1 + 48);
    }
  }

LABEL_106:
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v87);
}

void sub_29A4CE2B0(void *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  JUMPOUT(0x29A4CE1E4);
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::~CrateFile(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *this)
{
  v2 = this + 4096;
  if ((atomic_load_explicit(&qword_2A1742110, memory_order_acquire) & 1) == 0)
  {
    sub_29B2AA758();
  }

  if (v2[2656] == 1)
  {
    v3 = *(this + 832);
    if (!v3 || !*(this + 843))
    {
      goto LABEL_58;
    }

    v4 = *(v3 + 24);
    v5 = sub_29A4CE69C(v4);
    v6 = sub_29A4CE69C(v4 + *(*(this + 832) + 32) - 1) - v5 + 1;
    v7 = operator new[](v6);
    v8 = sub_29A4DAE4C();
    v9 = sub_29A4CA1A0();
    if (!pxrInternal__aapl__pxrReserved__::ArchQueryMappedMemoryResidency((v8 & v4), v6 * v9, v7, v10))
    {
      v38[0] = "usd/crateFile.cpp";
      v38[1] = "~CrateFile";
      v38[2] = 2890;
      v38[3] = "pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::~CrateFile()";
      v39 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v38, "failed to obtain memory residency information", v11);
      operator delete[](v7);
      goto LABEL_32;
    }

    if (v6)
    {
      v12 = 0;
      v13 = 0;
      v14 = *(this + 843);
      v15 = v7;
      v16 = v6;
      do
      {
        v17 = *v14++;
        v18 = *v15 & 1;
        v19 = v17 & 1;
        v12 += v18;
        v13 += v19;
        v20 = v18 == 0;
        if (*v15)
        {
          v21 = 45;
        }

        else
        {
          v21 = 32;
        }

        if (v20)
        {
          v22 = 33;
        }

        else
        {
          v22 = 43;
        }

        if (v19)
        {
          v21 = v22;
        }

        *v15++ = v21;
        --v16;
      }

      while (v16);
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }

    std::mutex::lock(&stru_2A14F7FF8);
    v23 = this + 6720;
    if (v2[2647] < 0)
    {
      v23 = *v23;
    }

    printf(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>\npage map for %s\n%lld pages, %lld used (%.1f%%), %lld in mem (%.1f%%)\nused %.1f%% of pages in mem\nlegend: '+': in mem & used,     '-': in mem & unused\n        '!': not in mem & used, ' ': not in mem & unused\n>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>\n", v23, v6, v13, v13 * 100.0 / v6, v12, v12 * 100.0 / v6, v13 * 100.0 / v12);
    if (v6)
    {
      v24 = 0;
      v25 = v7;
      do
      {
        v26 = *v25++;
        putchar(v26);
        if (v24 == 80)
        {
          putchar(10);
          v24 = -1;
        }

        ++v24;
        --v6;
      }

      while (v6);
    }

    puts("\n<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<");
    std::mutex::unlock(&stru_2A14F7FF8);
    operator delete[](v7);
    if (v2[2656])
    {
LABEL_58:
      if (*(this + 832))
      {
        sub_29A4CABC8(this + 832);
      }
    }
  }

  sub_29A4CE744((this + 96));
  sub_29A4CE7BC((this + 120));
  sub_29A4CE834((this + 144));
  sub_29A4CE8B8(this + 21);
  sub_29A4CE914(this + 216);
  pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_DeleteValueHandlers(this);
LABEL_32:
  v27 = *(this + 843);
  *(this + 843) = 0;
  if (v27)
  {
    operator delete[](v27);
  }

  if (v2[2647] < 0)
  {
    operator delete(*(this + 840));
  }

  v28 = *(this + 838);
  if (v28)
  {
    sub_29A014BEC(v28);
  }

  v29 = *(this + 833);
  if (v29 && v2[2592] == 1)
  {
    fclose(v29);
  }

  sub_29A4DABB4(this + 832);
  v30 = *(this + 818);
  if (v30)
  {
    *(this + 819) = v30;
    operator delete(v30);
  }

  sub_29A4CF4F0(this + 817, 0);
  v31 = this + 6024;
  v32 = -1920;
  do
  {
    v31 = (sub_29A4E5688(v31) - 32);
    v32 += 32;
  }

  while (v32);
  for (i = 4104; i != 2184; i -= 32)
  {
    sub_29A4E5688(this + i);
  }

  do
  {
    sub_29A4E5688(this + i);
    i -= 32;
  }

  while (i != 264);
  v38[0] = (this + 224);
  sub_29A4DABE8(v38);
  sub_29A4E57E8(this + 168);
  v34 = *(this + 18);
  if (v34)
  {
    *(this + 19) = v34;
    operator delete(v34);
  }

  v38[0] = (this + 120);
  sub_29A124AB0(v38);
  v38[0] = (this + 96);
  sub_29A1E234C(v38);
  v35 = *(this + 9);
  if (v35)
  {
    *(this + 10) = v35;
    operator delete(v35);
  }

  v36 = *(this + 6);
  if (v36)
  {
    *(this + 7) = v36;
    operator delete(v36);
  }

  v38[0] = (this + 24);
  sub_29A4E5708(v38);
  v37 = *this;
  if (*this)
  {
    *(this + 1) = v37;
    operator delete(v37);
  }
}

unint64_t sub_29A4CE69C(unint64_t a1)
{
  if ((atomic_load_explicit(&qword_2A1742158, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1742158))
  {
    qword_2A1742150 = sub_29A4DAE4C();
    __cxa_guard_release(&qword_2A1742158);
  }

  v2 = ~qword_2A1742150;
  qword_2A1742150 = v2;
  v3 = __clz(v2 >> 1);
  v4 = 65 - v3;
  v5 = v3 - 65;
  do
  {
    v2 >>= 1;
  }

  while (!__CFADD__(v5++, 1));
  qword_2A1742150 = v2;
  return a1 >> v4;
}

void sub_29A4CE744(pxrInternal__aapl__pxrReserved__ *a1)
{
  v1 = *a1;
  v2 = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  if ((pxrInternal__aapl__pxrReserved__::Work_ShouldSynchronizeAsyncDestroyCalls(a1) & 1) == 0)
  {
    sub_29A4F4D10(&v1);
  }

  v3 = &v1;
  sub_29A1E234C(&v3);
}

void sub_29A4CE7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A1E234C(&a12);
  _Unwind_Resume(a1);
}

void sub_29A4CE7BC(pxrInternal__aapl__pxrReserved__ *a1)
{
  v1 = *a1;
  v2 = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  if ((pxrInternal__aapl__pxrReserved__::Work_ShouldSynchronizeAsyncDestroyCalls(a1) & 1) == 0)
  {
    sub_29A4F502C(&v1);
  }

  v3 = &v1;
  sub_29A124AB0(&v3);
}

void sub_29A4CE818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A124AB0(&a12);
  _Unwind_Resume(a1);
}

void sub_29A4CE834(pxrInternal__aapl__pxrReserved__ *a1)
{
  *__p = *a1;
  v3 = __p[0];
  v5 = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  ShouldSynchronizeAsyncDestroyCalls = pxrInternal__aapl__pxrReserved__::Work_ShouldSynchronizeAsyncDestroyCalls(a1);
  v2 = v3;
  if ((ShouldSynchronizeAsyncDestroyCalls & 1) == 0)
  {
    sub_29A4F5348(__p);
    v2 = __p[0];
  }

  if (v2)
  {
    __p[1] = v2;
    operator delete(v2);
  }
}

void sub_29A4CE89C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4CE8B8(uint64_t *a1)
{
  v1 = sub_29A155CF8(v3, a1);
  if ((pxrInternal__aapl__pxrReserved__::Work_ShouldSynchronizeAsyncDestroyCalls(v1) & 1) == 0)
  {
    sub_29A4F565C(v3);
  }

  return sub_29A4E57E8(v3);
}

void sub_29A4CE900(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A4E57E8(va);
  _Unwind_Resume(a1);
}

void sub_29A4CE914(uint64_t a1)
{
  v1 = sub_29A4F5A14(v2, a1);
  if ((pxrInternal__aapl__pxrReserved__::Work_ShouldSynchronizeAsyncDestroyCalls(v1) & 1) == 0)
  {
    sub_29A4F595C(v2);
  }

  v4 = &v3;
  sub_29A4DABE8(&v4);
}

void sub_29A4CE968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 - 24) = &a11;
  sub_29A4DABE8((v11 - 24));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_DeleteValueHandlers(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *this)
{
  v2 = *(this + 758);
  if (v2)
  {
    sub_29A4DFEF0((v2 + 8), 0);
    sub_29A160214(v2, 0);
    operator delete(v2);
  }

  v3 = *(this + 759);
  if (v3)
  {
    sub_29A4DFFAC((v3 + 8), 0);
    sub_29A160214(v3, 0);
    operator delete(v3);
  }

  v4 = *(this + 760);
  if (v4)
  {
    sub_29A4E0068((v4 + 8), 0);
    sub_29A160214(v4, 0);
    operator delete(v4);
  }

  v5 = *(this + 761);
  if (v5)
  {
    sub_29A4E0124((v5 + 8), 0);
    sub_29A160214(v5, 0);
    operator delete(v5);
  }

  v6 = *(this + 762);
  if (v6)
  {
    sub_29A4E01E0((v6 + 8), 0);
    sub_29A160214(v6, 0);
    operator delete(v6);
  }

  v7 = *(this + 763);
  if (v7)
  {
    sub_29A4E029C((v7 + 8), 0);
    sub_29A160214(v7, 0);
    operator delete(v7);
  }

  v8 = *(this + 764);
  if (v8)
  {
    sub_29A4E0358((v8 + 8), 0);
    sub_29A160214(v8, 0);
    operator delete(v8);
  }

  v9 = *(this + 765);
  if (v9)
  {
    sub_29A4E0414((v9 + 8), 0);
    sub_29A160214(v9, 0);
    operator delete(v9);
  }

  v10 = *(this + 766);
  if (v10)
  {
    sub_29A4E04D0((v10 + 8), 0);
    sub_29A160214(v10, 0);
    operator delete(v10);
  }

  v11 = *(this + 767);
  if (v11)
  {
    sub_29A4E058C((v11 + 8), 0);
    sub_29A12581C(v11, 0);
    operator delete(v11);
  }

  v12 = *(this + 768);
  if (v12)
  {
    sub_29A4E0648((v12 + 8), 0);
    sub_29A1601D8(v12, 0);
    operator delete(v12);
  }

  v13 = *(this + 769);
  if (v13)
  {
    sub_29A4E0704(v13 + 1, 0);
    sub_29A4E07C0(v13, 0);
    operator delete(v13);
  }

  v14 = *(this + 773);
  if (v14)
  {
    sub_29A4E087C((v14 + 8), 0);
    sub_29A160214(v14, 0);
    operator delete(v14);
  }

  v15 = *(this + 774);
  if (v15)
  {
    sub_29A4E0938((v15 + 8), 0);
    sub_29A160214(v15, 0);
    operator delete(v15);
  }

  v16 = *(this + 775);
  if (v16)
  {
    sub_29A4E09F4((v16 + 8), 0);
    sub_29A160214(v16, 0);
    operator delete(v16);
  }

  v17 = *(this + 776);
  if (v17)
  {
    sub_29A4E0AB0((v17 + 8), 0);
    sub_29A160214(v17, 0);
    operator delete(v17);
  }

  v18 = *(this + 777);
  if (v18)
  {
    sub_29A4E0B6C((v18 + 8), 0);
    sub_29A160214(v18, 0);
    operator delete(v18);
  }

  v19 = *(this + 778);
  if (v19)
  {
    sub_29A4E0C28((v19 + 8), 0);
    sub_29A160214(v19, 0);
    operator delete(v19);
  }

  v20 = *(this + 779);
  if (v20)
  {
    sub_29A4E0CE4((v20 + 8), 0);
    sub_29A160214(v20, 0);
    operator delete(v20);
  }

  v21 = *(this + 780);
  if (v21)
  {
    sub_29A4E0DA0((v21 + 8), 0);
    sub_29A160214(v21, 0);
    operator delete(v21);
  }

  v22 = *(this + 781);
  if (v22)
  {
    sub_29A4E0E5C((v22 + 8), 0);
    sub_29A160214(v22, 0);
    operator delete(v22);
  }

  v23 = *(this + 782);
  if (v23)
  {
    sub_29A4E0F18((v23 + 8), 0);
    sub_29A160214(v23, 0);
    operator delete(v23);
  }

  v24 = *(this + 783);
  if (v24)
  {
    sub_29A4E0FD4((v24 + 8), 0);
    sub_29A160214(v24, 0);
    operator delete(v24);
  }

  v25 = *(this + 784);
  if (v25)
  {
    sub_29A4E1090((v25 + 8), 0);
    sub_29A160214(v25, 0);
    operator delete(v25);
  }

  v26 = *(this + 785);
  if (v26)
  {
    sub_29A4E114C((v26 + 8), 0);
    sub_29A160214(v26, 0);
    operator delete(v26);
  }

  v27 = *(this + 786);
  if (v27)
  {
    sub_29A4E1208((v27 + 8), 0);
    sub_29A160214(v27, 0);
    operator delete(v27);
  }

  v28 = *(this + 787);
  if (v28)
  {
    sub_29A4E12C4((v28 + 8), 0);
    sub_29A160214(v28, 0);
    operator delete(v28);
  }

  v29 = *(this + 770);
  if (v29)
  {
    sub_29A4E1380((v29 + 8), 0);
    sub_29A160214(v29, 0);
    operator delete(v29);
  }

  v30 = *(this + 771);
  if (v30)
  {
    sub_29A4E143C((v30 + 8), 0);
    sub_29A160214(v30, 0);
    operator delete(v30);
  }

  v31 = *(this + 772);
  if (v31)
  {
    sub_29A4E14F8((v31 + 8), 0);
    sub_29A160214(v31, 0);
    operator delete(v31);
  }

  v32 = *(this + 788);
  if (v32)
  {
    sub_29A4E15B4(v32 + 1, 0);
    sub_29A4E170C(v32, 0);
    operator delete(v32);
  }

  v33 = *(this + 789);
  if (v33)
  {
    sub_29A4E17CC(v33 + 1, 0);
    sub_29A4E1994(v33, 0);
    operator delete(v33);
  }

  v34 = *(this + 790);
  if (v34)
  {
    sub_29A4E1AD8(v34 + 1, 0);
    sub_29A4E1CA0(v34, 0);
    operator delete(v34);
  }

  v35 = *(this + 791);
  if (v35)
  {
    sub_29A4E1DE4(v35 + 1, 0);
    sub_29A4E1FAC(v35, 0);
    operator delete(v35);
  }

  v36 = *(this + 792);
  if (v36)
  {
    sub_29A4E20F0(v36 + 1, 0);
    sub_29A4E22B8(v36, 0);
    operator delete(v36);
  }

  v37 = *(this + 793);
  if (v37)
  {
    sub_29A4E23FC(v37 + 1, 0);
    sub_29A4E25B0(v37, 0);
    operator delete(v37);
  }

  v38 = *(this + 794);
  if (v38)
  {
    sub_29A4E2704(v38 + 1, 0);
    sub_29A4E25B0(v38, 0);
    operator delete(v38);
  }

  v39 = *(this + 795);
  if (v39)
  {
    sub_29A4E27C0(v39 + 1, 0);
    sub_29A4E25B0(v39, 0);
    operator delete(v39);
  }

  v40 = *(this + 796);
  if (v40)
  {
    sub_29A4E287C(v40 + 1, 0);
    sub_29A4E25B0(v40, 0);
    operator delete(v40);
  }

  v41 = *(this + 797);
  if (v41)
  {
    sub_29A4E2938(v41 + 1, 0);
    sub_29A4E2A9C(v41, 0);
    operator delete(v41);
  }

  v42 = *(this + 798);
  if (v42)
  {
    sub_29A4E2B68(v42 + 1, 0);
    sub_29A4E2CCC(v42, 0);
    operator delete(v42);
  }

  v43 = *(this + 799);
  if (v43)
  {
    sub_29A4E2D98(v43 + 1, 0);
    sub_29A160214(v43, 0);
    operator delete(v43);
  }

  v44 = *(this + 800);
  if (v44)
  {
    sub_29A4E2E54(v44 + 1, 0);
    sub_29A160214(v44, 0);
    operator delete(v44);
  }

  v45 = *(this + 801);
  if (v45)
  {
    sub_29A4E2F10(v45 + 1, 0);
    sub_29A160214(v45, 0);
    operator delete(v45);
  }

  v46 = *(this + 802);
  if (v46)
  {
    sub_29A4E2FCC(v46 + 1, 0);
    sub_29A4E3128(v46, 0);
    operator delete(v46);
  }

  v47 = *(this + 803);
  if (v47)
  {
    sub_29A4E31E8(v47 + 1, 0);
    sub_29A4E3358(v47, 0);
    operator delete(v47);
  }

  v48 = *(this + 804);
  if (v48)
  {
    sub_29A4E3438(v48 + 1, 0);
    sub_29A4E35AC(v48, 0);
    operator delete(v48);
  }

  v49 = *(this + 805);
  if (v49)
  {
    sub_29A4E36C4(v49 + 1, 0);
    sub_29A4E3828(v49, 0);
    operator delete(v49);
  }

  v50 = *(this + 806);
  if (v50)
  {
    sub_29A4E3864(v50 + 1, 0);
    sub_29A4E3828(v50, 0);
    operator delete(v50);
  }

  v51 = *(this + 807);
  if (v51)
  {
    sub_29A4E3920(v51 + 1, 0);
    sub_29A4E3A84(v51, 0);
    operator delete(v51);
  }

  v52 = *(this + 808);
  if (v52)
  {
    sub_29A4E3B50(v52 + 1, 0);
    sub_29A160214(v52, 0);
    operator delete(v52);
  }

  v53 = *(this + 809);
  if (v53)
  {
    sub_29A4E3C0C(v53 + 1, 0);
    sub_29A3747F8(v53, 0);
    operator delete(v53);
  }

  v54 = *(this + 810);
  if (v54)
  {
    sub_29A4E3D5C(v54 + 1, 0);
    sub_29A3747F8(v54, 0);
    operator delete(v54);
  }

  v55 = *(this + 811);
  if (v55)
  {
    sub_29A4E3E18(v55 + 1, 0);
    sub_29A4E3FE0(v55, 0);
    operator delete(v55);
  }

  v56 = *(this + 812);
  if (v56)
  {
    sub_29A4E4124(v56 + 1, 0);
    sub_29A4E42EC(v56, 0);
    operator delete(v56);
  }

  v57 = *(this + 813);
  if (v57)
  {
    sub_29A4E4430(v57 + 1, 0);
    sub_29A160214(v57, 0);
    operator delete(v57);
  }

  v58 = *(this + 814);
  if (v58)
  {
    sub_29A4E44EC(v58 + 1, 0);
    sub_29A4E45A8(v58, 0);
    operator delete(v58);
  }

  v59 = *(this + 815);
  if (v59)
  {
    sub_29A4E4664(v59 + 1, 0);
    sub_29A4E47C8(v59, 0);
    operator delete(v59);
  }

  v60 = *(this + 816);
  if (v60)
  {
    sub_29A4E4894(v60 + 1, 0);
    sub_29A4E49F0(v60, 0);

    operator delete(v60);
  }
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::StartPacking(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(a1);
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v11 = *(a2 + 16);
  }

  pxrInternal__aapl__pxrReserved__::ArResolver::OpenAssetForWrite(Resolver);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (v14)
  {
    v7 = operator new(0x320uLL);
    sub_29A4DAEC8(v7, a1, &v14, a2);
    sub_29A4CF4F0(a1 + 817, v7);
    v8 = *a1;
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    if (v8)
    {
      operator delete(v8);
    }

    if (a1[15] == a1[16])
    {
      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(__p, ";-)");
      pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddToken(a1, __p);
      if ((__p[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  else
  {
    __p[0] = "usd/crateFile.cpp";
    __p[1] = "StartPacking";
    v11 = 2966;
    v12 = "CrateFile::Packer pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::StartPacking(const string &)";
    v13 = 0;
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 3, "Unable to open %s for write", v9);
  }

  *a3 = a1;
  if (v15)
  {
    sub_29A014BEC(v15);
  }
}

{
  v6 = operator new(0x320uLL);
  sub_29A4DE990(v6, a1, a2);
  sub_29A4CF4F0(a1 + 817, v6);
  v7 = *a1;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (v7)
  {
    operator delete(v7);
  }

  if (a1[15] == a1[16])
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v8, ";-)");
    pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddToken(a1, &v8);
    if ((v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  *a3 = a1;
}

void sub_29A4CF488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, unint64_t __p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if ((__p & 7) != 0)
  {
    atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(v16 - 40);
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4CF4F0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A4F5D44(v3);

    operator delete(v4);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddToken(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v4 = *(this + 817);
  v10 = -1;
  v5 = sub_29A4FA83C(v4, a2, a2, &v10);
  if (v6)
  {
    *(v5 + 6) = (*(this + 16) - *(this + 15)) >> 3;
    v7 = *(this + 16);
    if (v7 >= *(this + 17))
    {
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::TfToken const&>();
    }

    v8 = *a2;
    *v7 = *a2;
    if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v7 &= 0xFFFFFFFFFFFFFFF8;
    }

    *(this + 16) = v7 + 1;
  }

  return *(v5 + 6);
}

void sub_29A4CF69C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::Packer::Close(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile **this)
{
  v2 = *this;
  if (!v2 || !*(v2 + 817))
  {
    __p[0] = "usd/crateFile.cpp";
    __p[1] = "Close";
    v30 = 3014;
    v31 = "BOOL pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::Packer::Close()";
    v32 = 0;
    v10 = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(__p, "_crate && _crate->_packCtx", 0))
    {
      return v10;
    }

    v2 = *this;
  }

  pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Write(v2);
  v3 = *(*this + 838);
  *(*this + 6696) = 0u;
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = sub_29A4CFEB0(*(*this + 817));
  v5 = *this;
  if (!v4)
  {
    sub_29A4CF4F0(&v5[272].__r_.__value_.__l.__size_, 0);
    return 0;
  }

  std::string::operator=(v5 + 280, (v5[272].__r_.__value_.__l.__size_ + 232));
  sub_29A4CF4F0(*this + 817, 0);
  Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(v6);
  v8 = *this;
  if (*(*this + 6743) < 0)
  {
    sub_29A008D14(__p, *(v8 + 840), *(v8 + 841));
  }

  else
  {
    v9 = v8 + 6720;
    *__p = *v9;
    v30 = *(v9 + 2);
  }

  pxrInternal__aapl__pxrReserved__::ArResolver::OpenAsset(Resolver);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

  if (!v28)
  {
    goto LABEL_30;
  }

  if (*(*this + 6712) == 1)
  {
    (*(*v28 + 48))(__p);
    v11 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v12 = *(&v28 + 1);
    v28 = v11;
    if (v12)
    {
      sub_29A014BEC(v12);
      if (__p[1])
      {
        sub_29A014BEC(__p[1]);
      }

      if (!v28)
      {
        goto LABEL_30;
      }
    }

    else if (!v11)
    {
      goto LABEL_30;
    }
  }

  v13 = atomic_load(pxrInternal__aapl__pxrReserved__::USDC_USE_ASSET);
  if (!v13)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
  }

  if ((*v13 & 1) != 0 || (v15 = (*(*v28 + 40))(v28)) == 0)
  {
    sub_29A4CABC8(*this + 832);
    v19 = *this;
    v20 = *this + 6664;
    *(*this + 835) = 0;
    *(v20 + 24) = 0;
    *v20 = 0u;
    if (*(&v28 + 1))
    {
      atomic_fetch_add_explicit((*(&v28 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    *(v19 + 837) = v28;
    v21 = *(v19 + 838);
    *(v19 + 838) = *(&v28 + 1);
    if (v21)
    {
      sub_29A014BEC(v21);
    }

    pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_InitAsset(*this);
    goto LABEL_36;
  }

  if (*(*this + 6752) != 1)
  {
    v23 = v14;
    v24 = (*(*v28 + 16))(v28);
    if (v24 == -1)
    {
      v24 = pxrInternal__aapl__pxrReserved__::ArchGetFileLength(v15, v25) - v23;
    }

    v26 = *this;
    *(v26 + 833) = v15;
    *(v26 + 834) = v23;
    *(v26 + 835) = v24;
    *(v26 + 6688) = 0;
    if (*(&v28 + 1))
    {
      atomic_fetch_add_explicit((*(&v28 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    *(v26 + 837) = v28;
    v27 = *(v26 + 838);
    *(v26 + 838) = *(&v28 + 1);
    if (v27)
    {
      sub_29A014BEC(v27);
    }

    pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_InitPread(*this);
    goto LABEL_36;
  }

  v16 = (*this + 6720);
  if (*(*this + 6743) < 0)
  {
    v16 = *v16;
  }

  pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_MmapFile(v16, v15, __p);
  sub_29A4D0060(*this + 832, __p);
  sub_29A4DABB4(__p);
  v17 = *this;
  if (!*(*this + 832))
  {
LABEL_30:
    v10 = 0;
    goto LABEL_37;
  }

  v18 = *(v17 + 838);
  *(v17 + 6696) = 0u;
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_InitMMap(*this);
LABEL_36:
  v10 = 1;
LABEL_37:
  if (*(&v28 + 1))
  {
    sub_29A014BEC(*(&v28 + 1));
  }

  return v10;
}

void sub_29A4CFAB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Write(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *this)
{
  v29 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddDeferredSpecs(this);
  v2 = *(this + 817);
  v3 = v2 + 33;
  v24 = this;
  v25 = v2 + 33;
  __p = 0;
  v22 = 0;
  v23 = 0;
  v4 = v2[25];
  v5 = v2[26];
  if (v4 != v5)
  {
    do
    {
      v6 = v4;
      if (*(v4 + 23) < 0)
      {
        v6 = *v4;
      }

      pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_Section::_Section(__src, v6, v25[2], *(v4 + 32));
      sub_29A4D0BB8(&v24, *(v4 + 24), *&__src[24]);
      sub_29A4D0C64(&__p, __src);
      v4 += 40;
    }

    while (v4 != v5);
    v3 = v25;
  }

  v27 = v3[2];
  *__src = "TOKENS";
  v26 = 0;
  sub_29A4F677C(&__p, __src, &v27, &v26);
  sub_29A4F68B8(this, &v24);
  v7 = v25[2];
  *(v22 - 1) = v7 - *(v22 - 2);
  v27 = v7;
  *__src = "STRINGS";
  v26 = 0;
  sub_29A4F677C(&__p, __src, &v27, &v26);
  sub_29A4D2138(&v24, this + 144);
  v8 = v25[2];
  *(v22 - 1) = v8 - *(v22 - 2);
  v27 = v8;
  *__src = "FIELDS";
  v26 = 0;
  sub_29A4F677C(&__p, __src, &v27, &v26);
  pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_WriteFields(this, &v24);
  v9 = v25[2];
  *(v22 - 1) = v9 - *(v22 - 2);
  v27 = v9;
  *__src = "FIELDSETS";
  v26 = 0;
  sub_29A4F677C(&__p, __src, &v27, &v26);
  pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_WriteFieldSets(this, &v24);
  v10 = v25[2];
  *(v22 - 1) = v10 - *(v22 - 2);
  v27 = v10;
  *__src = "PATHS";
  v26 = 0;
  sub_29A4F677C(&__p, __src, &v27, &v26);
  pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_WritePaths(this, &v24);
  v11 = v25[2];
  *(v22 - 1) = v11 - *(v22 - 2);
  v27 = v11;
  *__src = "SPECS";
  v26 = 0;
  sub_29A4F677C(&__p, __src, &v27, &v26);
  pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_WriteSpecs(this, &v24);
  v12 = v25[2];
  *(v22 - 1) = v12 - *(v22 - 2);
  v13 = *(this + 817);
  memset(&__src[8], 0, 80);
  *__src = 0x434453552D525850;
  __src[8] = *(v13 + 256);
  *&__src[9] = *(v13 + 257);
  *&__src[16] = v12;
  sub_29A4DFCC4(&v24, &__p);
  v14 = v25;
  v16 = v25 + 4;
  v15 = v25[4];
  if (v15 > 0 || v25[6] + v15 < 0)
  {
    sub_29A4DE434(v25);
    v14[2] = 0;
  }

  else
  {
    v16 = v25 + 2;
  }

  *v16 = 0;
  sub_29A4D0D84(&v24, __src);
  v17 = v25;
  sub_29A4DE434(v25);
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::Wait((v17 + 13));
  if ((this + 6544) != &__p)
  {
    sub_29A4DFDC4(this + 818, __p, v22, (v22 - __p) >> 5);
  }

  *(this + 831) = *&__src[80];
  v18 = *&__src[48];
  *(this + 6600) = *&__src[32];
  *(this + 6616) = v18;
  *(this + 6632) = *&__src[64];
  v19 = *&__src[16];
  *(this + 6568) = *__src;
  *(this + 6584) = v19;
  pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ClearValueHandlerDedupTables(this);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_29A4CFE8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4CFEB0(uint64_t a1)
{
  if (*(a1 + 224) == 1)
  {
    v2 = *(**(a1 + 752) + 16);

    return v2();
  }

  else
  {
    v4 = *(a1 + 776);
    v5 = *(a1 + 784);
    if (v4 != v5)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v15 = *v4;
        v18 = 0;
        v19 = 0;
        v17 = 0;
        sub_29A4DC2E8(&v17, *(v4 + 1), *(v4 + 2), *(v4 + 2) - *(v4 + 1));
        v8 = v7 >= v15;
        if (v7 <= v15)
        {
          v7 = v15;
        }

        if (!v8)
        {
          v6 = v18 - v17;
        }

        if (v17)
        {
          v18 = v17;
          operator delete(v17);
        }

        v4 += 8;
      }

      while (v4 != v5);
      v9 = v6 + v7;
      if (v6 + v7)
      {
        v10 = *(a1 + 768);
        v11 = v10[1] - *v10;
        if (v9 <= v11)
        {
          if (v9 < v11)
          {
            v10[1] = *v10 + v9;
          }
        }

        else
        {
          sub_29A1B2C78(v10, v9 - v11);
        }

        v12 = *(a1 + 776);
        for (i = *(a1 + 784); v12 != i; v12 += 8)
        {
          v16 = *v12;
          v18 = 0;
          v19 = 0;
          v17 = 0;
          sub_29A4DC2E8(&v17, *(v12 + 1), *(v12 + 2), *(v12 + 2) - *(v12 + 1));
          v14 = v17;
          if (v18 - v17 + v16 <= v9)
          {
            memcpy((**(a1 + 768) + v16), v17, v18 - v17);
            v14 = v17;
          }

          if (v14)
          {
            v18 = v14;
            operator delete(v14);
          }
        }
      }
    }

    return 1;
  }
}

void **sub_29A4D0060(void **a1, void **a2)
{
  if (a1 != a2)
  {
    sub_29A4DAB48(a1, a2);
    *a1 = *a2;
    *a2 = 0;
    sub_29A4DAB48(a2, v4);
    *a2 = 0;
  }

  return a1;
}

void *pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::Packer::Packer(void *result, void *a2)
{
  *result = *a2;
  *a2 = 0;
  return result;
}

{
  *result = *a2;
  *a2 = 0;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::Packer::operator=(void *result, void *a2)
{
  *result = *a2;
  *a2 = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::Packer::~Packer(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::Packer *this)
{
  if (*this)
  {
    sub_29A4CF4F0((*this + 6536), 0);
  }
}

{
  if (*this)
  {
    sub_29A4CF4F0((*this + 6536), 0);
  }
}

void *pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::GetSectionsNameStartSize@<X0>(void *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = this[818];
  v4 = this[819];
  if (v3 != v4)
  {
    v5 = 0;
    v6 = v3 + 3;
    do
    {
      v7 = (v6 - 3);
      if (v5 >= a2[2])
      {
        this = sub_29A4F5E00(a2, v7, v6 - 1, v6);
        v5 = this;
      }

      else
      {
        this = sub_29A008E78(v5, v7);
        v5[3] = *(v6 - 1);
        v5[4] = *v6;
        v5 += 5;
      }

      a2[1] = v5;
      v8 = v6 + 1;
      v6 += 4;
    }

    while (v8 != v4);
  }

  return this;
}

void sub_29A4D0200(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A120E54(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddDeferredSpecs(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *this)
{
  v64[2] = *MEMORY[0x29EDCA608];
  sub_29A4F5F40(&v57, 0, 0.0, 0.5);
  v2 = *(this + 3);
  for (i = *(this + 4); v2 != i; v2 += 80)
  {
    v4 = *(v2 + 56);
    v5 = *(v2 + 64);
    while (v4 != v5)
    {
      v6 = *(v4 + 24);
      if (*(v4 + 32) != v6)
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        do
        {
          if ((sub_29A4C7A40((v6 + v8)) & 1) == 0)
          {
            __p = (**(v4 + 16) + v7);
            v10 = sub_29A4F6170(&v57, __p, &unk_29B4D6118, &__p);
            v63 = *(v4 + 24) + v8;
            sub_29A0A71C8(v10 + 16, &v63);
          }

          ++v9;
          v6 = *(v4 + 24);
          v8 += 16;
          v7 += 8;
        }

        while (v9 != (*(v4 + 32) - v6) >> 4);
      }

      v4 += 56;
    }
  }

  sub_29A0124A0(&__p, v61);
  v11 = 0;
  if (v60)
  {
    v12 = (v59 + 4);
    while (1)
    {
      v13 = *v12;
      v12 += 20;
      if (v13 != -1)
      {
        break;
      }

      if (v60 == ++v11)
      {
        goto LABEL_22;
      }
    }
  }

  if (v11 != v60)
  {
    v14 = v59 + 40 * v60;
    v15 = v59 + 40 * v11;
    v16 = __p;
    do
    {
      *v16 = *(v15 + 8);
      v17 = v15 + 40;
      do
      {
        v15 = v17;
        if (*(v17 - 34))
        {
          break;
        }

        v17 += 40;
      }

      while (*(v15 + 4) == -1);
      ++v16;
    }

    while (v15 != v14);
  }

LABEL_22:
  std::__sort<std::__less<double,double> &,double *>();
  v18 = __p;
  v19 = v56;
  if (__p != v56)
  {
    do
    {
      if (*v18 == 0.0)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = *v18;
      }

      v21 = bswap64(0x9E3779B97F4A7C55 * *&v20) & v57;
      v22 = v59 + 40 * v21;
      if (*(v22 + 4) < 0)
      {
LABEL_30:
        v22 = v59 + 40 * v60;
      }

      else
      {
        LOWORD(v23) = 0;
        while (*(v22 + 8) != *v18)
        {
          v23 = (v23 + 1);
          v21 = (v21 + 1) & v57;
          v22 = v59 + 40 * v21;
          if (v23 > *(v22 + 4))
          {
            goto LABEL_30;
          }
        }
      }

      v24 = *(v22 + 16);
      v25 = *(v22 + 24);
      while (v24 != v25)
      {
        v26 = *v24;
        v27 = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_PackValue(this, *v24);
        v28 = *(v26 + 1);
        if (v28)
        {
          v29 = (*(v26 + 1) & 3) == 3;
        }

        else
        {
          v29 = 1;
        }

        if (!v29)
        {
          (*((v28 & 0xFFFFFFFFFFFFFFF8) + 32))(v26);
        }

        *v26 = v27;
        *(v26 + 1) = &off_2A2051828 + 3;
        ++v24;
      }

      ++v18;
    }

    while (v18 != v19);
  }

  v31 = *(this + 3);
  v30 = *(this + 4);
  if (v31 != v30)
  {
    do
    {
      v32 = *(v31 + 32);
      v33 = *(v31 + 40);
      while (v32 != v33)
      {
        LODWORD(v63) = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddField(this, v32);
        sub_29A486024(v31 + 8, &v63);
        v32 += 24;
      }

      v34 = *(v31 + 56);
      v35 = *(v31 + 64);
      while (v34 != v35)
      {
        sub_29A4C8300(v34 + 1, v62);
        sub_29A3216A8(&v63, v34, v62);
        v54 = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddField(this, &v63);
        sub_29A486024(v31 + 8, &v54);
        sub_29A186B14(v64);
        if ((v63 & 7) != 0)
        {
          atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        sub_29A186B14(v62);
        v34 += 7;
      }

      v36 = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddFieldSet(this, (v31 + 8));
      v37 = v36;
      v38 = *(this + 1);
      v39 = *(this + 2);
      if (v38 >= v39)
      {
        v42 = 0xAAAAAAAAAAAAAAABLL * ((v38 - *this) >> 2);
        v43 = v42 + 1;
        if (v42 + 1 > 0x1555555555555555)
        {
          sub_29A00C9A4();
        }

        v44 = 0xAAAAAAAAAAAAAAABLL * ((v39 - *this) >> 2);
        if (2 * v44 > v43)
        {
          v43 = 2 * v44;
        }

        if (v44 >= 0xAAAAAAAAAAAAAAALL)
        {
          v45 = 0x1555555555555555;
        }

        else
        {
          v45 = v43;
        }

        if (v45)
        {
          v46 = sub_29A379A50(this, v45);
        }

        else
        {
          v46 = 0;
        }

        v47 = &v46[12 * v42];
        v48 = &v46[12 * v45];
        v49 = *(v31 + 4);
        *v47 = *v31;
        *(v47 + 1) = v37;
        *(v47 + 2) = v49;
        v41 = v47 + 12;
        v50 = *(this + 1) - *this;
        v51 = &v47[-v50];
        memcpy(&v47[-v50], *this, v50);
        v52 = *this;
        *this = v51;
        *(this + 1) = v41;
        *(this + 2) = v48;
        if (v52)
        {
          operator delete(v52);
        }
      }

      else
      {
        v40 = *(v31 + 4);
        *v38 = *v31;
        v38[1] = v36;
        v38[2] = v40;
        v41 = v38 + 3;
      }

      *(this + 1) = v41;
      v31 += 80;
    }

    while (v31 != v30);
    v31 = *(this + 3);
    v30 = *(this + 4);
  }

  v63 = v31;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v53 = *(this + 5);
  v64[0] = v30;
  v64[1] = v53;
  *(this + 5) = 0;
  v62[0] = &v63;
  sub_29A4E5708(v62);
  if (__p)
  {
    v56 = __p;
    operator delete(__p);
  }

  v63 = &v58;
  sub_29A108030(&v63);
}

void sub_29A4D0700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t *a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  a26 = &a15;
  sub_29A108030(&a26);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_PackValue(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *this, const pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = a2;
  v27 = *MEMORY[0x29EDCA608];
  if (sub_29A4C7A40(a2))
  {
    v4 = *(v2 + 1);
    if ((v4 & 4) != 0)
    {
      v2 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    v5 = *v2;
    if ((*v2 & 0xFF000000000000) == 0x2F000000000000 && ((*(this + 6576) << 16) | (*(this + 6577) << 8)) <= 0x7FFu && ((*(*(this + 817) + 256) << 16) | (*(*(this + 817) + 257) << 8)) >= 0x800u)
    {
      v23 = 0;
      pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_UnpackValue(this, v5, &__p);
      v5 = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_PackValue(this, &__p);
      sub_29A186B14(&__p);
    }
  }

  else if (!sub_29A4C7ACC(v2) || ((v6 = *(v2 + 1), (v6 & 4) != 0) ? (v7 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(v2)) : (v7 = *v2), (v5 = *v7) == 0))
  {
    if (pxrInternal__aapl__pxrReserved__::VtValue::IsArrayValued(v2))
    {
      ElementTypeid = pxrInternal__aapl__pxrReserved__::VtValue::GetElementTypeid(v2);
    }

    else
    {
      ElementTypeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v2);
    }

    v9 = ElementTypeid;
    sub_29A008E78(&__p, (*(ElementTypeid + 8) & 0x7FFFFFFFFFFFFFFFLL));
    v10 = sub_29A12A708(v20, &__p);
    v11 = sub_29A4FADE4(this + 27, &__p, v10);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p);
    }

    if (*(this + 31) + (*(this + 32) << 6) == v11)
    {
      __p = "usd/crateFile.cpp";
      v23 = "_PackValue";
      v24 = 4801;
      v25 = "ValueRep pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_PackValue(const VtValue &)";
      v26 = 0;
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(v9 + 8) & 0x7FFFFFFFFFFFFFFFLL), v20);
      v13 = v21;
      v14 = v20[0];
      sub_29A1F87E8(v2);
      v15 = v20;
      if (v13 < 0)
      {
        v15 = v14;
      }

      if (v19 >= 0)
      {
        v16 = &v18;
      }

      else
      {
        v16 = v18;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Attempted to pack unsupported type '%s' (%s)", v15, v16);
      if (v19 < 0)
      {
        operator delete(v18);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      return 0;
    }

    else
    {
      v12 = *(v11 + 56);
      if (!v12)
      {
        sub_29A0DDCB0();
      }

      return (*(*v12 + 48))(v12, v2);
    }
  }

  return v5;
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddField(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *a1, uint64_t a2)
{
  DWORD1(v10) = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddToken(a1, a2);
  *(&v10 + 1) = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_PackValue(a1, (a2 + 8));
  v4 = *(a1 + 817);
  v9 = -1;
  v5 = sub_29A4FA5CC(v4 + 120, &v10, &v10, &v9);
  v6 = v5;
  if (v7)
  {
    *(v5 + 8) = (*(a1 + 7) - *(a1 + 6)) >> 4;
    sub_29A03A998(a1 + 48, &v10);
  }

  return *(v6 + 8);
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddFieldSet(void *a1, char **a2)
{
  v4 = a1[817];
  v13 = -1;
  v5 = sub_29A4FA290(v4 + 160, a2, a2, &v13);
  v6 = v5;
  if (v7)
  {
    v8 = a1[9];
    v9 = a1[10];
    v10 = (a1 + 9);
    *(v5 + 10) = (v9 - v8) >> 2;
    sub_29A36BEB4(v10, *(v10 + 8), *a2, a2[1], (a2[1] - *a2) >> 2);
    v12 = -1;
    sub_29A486024(v10, &v12);
  }

  return *(v6 + 10);
}

uint64_t sub_29A4D0BB8(uint64_t result, char *__src, int64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = *(result + 8);
    do
    {
      v6 = v5[2];
      v7 = v5[4];
      v8 = v7 - v6 + 0x80000;
      if (v3 >= v8)
      {
        v9 = v7 - v6 + 0x80000;
      }

      else
      {
        v9 = v3;
      }

      v10 = v6 - v7;
      if ((v9 + v10) > v5[6])
      {
        v5[6] = v9 + v10;
      }

      result = memcpy((v5[5] + v10), __src, v9);
      v5[2] += v9;
      if (v8 <= v3)
      {
        result = sub_29A4DE434(v5);
      }

      __src += v9;
      v3 -= v9;
    }

    while (v3);
  }

  return result;
}

void sub_29A4D0C64(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_29A00C9A4();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = sub_29A10CB10(a1, v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[32 * v8];
    v14 = &v12[32 * v11];
    v15 = a2[1];
    *v13 = *a2;
    *(v13 + 1) = v15;
    v7 = v13 + 32;
    v16 = *(a1 + 8) - *a1;
    v17 = &v13[-v16];
    memcpy(&v13[-v16], *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v7;
    *(a1 + 16) = v14;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = v4 + 2;
  }

  *(a1 + 8) = v7;
}

double pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_BootStrap::_BootStrap(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_BootStrap *this, const pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::Version *a2)
{
  result = 0.0;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = 0x434453552D525850;
  *(this + 8) = *a2;
  *(this + 9) = *(a2 + 1);
  *(this + 10) = *(a2 + 2);
  return result;
}

{
  result = 0.0;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = 0x434453552D525850;
  *(this + 8) = *a2;
  *(this + 9) = *(a2 + 1);
  *(this + 10) = *(a2 + 2);
  return result;
}

uint64_t sub_29A4D0D84(uint64_t a1, char *__src)
{
  v3 = *(a1 + 8);
  v4 = 88;
  do
  {
    v5 = v3[2];
    v6 = v3[4];
    v7 = v6 - v5 + 0x80000;
    if (v4 >= v7)
    {
      v8 = v6 - v5 + 0x80000;
    }

    else
    {
      v8 = v4;
    }

    v9 = v5 - v6;
    if ((v8 + v9) > v3[6])
    {
      v3[6] = v8 + v9;
    }

    result = memcpy((v3[5] + v9), __src, v8);
    v3[2] += v8;
    if (v7 <= v4)
    {
      result = sub_29A4DE434(v3);
    }

    __src += v8;
    v4 -= v8;
  }

  while (v4);
  return result;
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_ClearValueHandlerDedupTables(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *this)
{
  sub_29A4DFEF0((*(this + 758) + 8), 0);
  sub_29A4DFFAC((*(this + 759) + 8), 0);
  sub_29A4E0068((*(this + 760) + 8), 0);
  sub_29A4E0124((*(this + 761) + 8), 0);
  v2 = *(this + 762);
  sub_29A160214(v2, 0);
  sub_29A4E01E0((v2 + 8), 0);
  v3 = *(this + 763);
  sub_29A160214(v3, 0);
  sub_29A4E029C((v3 + 8), 0);
  sub_29A4E0358((*(this + 764) + 8), 0);
  sub_29A4E0414((*(this + 765) + 8), 0);
  v4 = *(this + 766);
  sub_29A160214(v4, 0);
  sub_29A4E04D0((v4 + 8), 0);
  sub_29A4E058C((*(this + 767) + 8), 0);
  sub_29A4E0648((*(this + 768) + 8), 0);
  sub_29A4E0704((*(this + 769) + 8), 0);
  v5 = *(this + 773);
  sub_29A160214(v5, 0);
  sub_29A4E087C((v5 + 8), 0);
  v6 = *(this + 774);
  sub_29A160214(v6, 0);
  sub_29A4E0938((v6 + 8), 0);
  v7 = *(this + 775);
  sub_29A160214(v7, 0);
  sub_29A4E09F4((v7 + 8), 0);
  v8 = *(this + 776);
  sub_29A160214(v8, 0);
  sub_29A4E0AB0((v8 + 8), 0);
  v9 = *(this + 777);
  sub_29A160214(v9, 0);
  sub_29A4E0B6C((v9 + 8), 0);
  sub_29A4E0C28((*(this + 778) + 8), 0);
  v10 = *(this + 779);
  sub_29A160214(v10, 0);
  sub_29A4E0CE4((v10 + 8), 0);
  v11 = *(this + 780);
  sub_29A160214(v11, 0);
  sub_29A4E0DA0((v11 + 8), 0);
  v12 = *(this + 781);
  sub_29A160214(v12, 0);
  sub_29A4E0E5C((v12 + 8), 0);
  v13 = *(this + 782);
  sub_29A160214(v13, 0);
  sub_29A4E0F18((v13 + 8), 0);
  v14 = *(this + 783);
  sub_29A160214(v14, 0);
  sub_29A4E0FD4((v14 + 8), 0);
  v15 = *(this + 784);
  sub_29A160214(v15, 0);
  sub_29A4E1090((v15 + 8), 0);
  v16 = *(this + 785);
  sub_29A160214(v16, 0);
  sub_29A4E114C((v16 + 8), 0);
  v17 = *(this + 786);
  sub_29A160214(v17, 0);
  sub_29A4E1208((v17 + 8), 0);
  v18 = *(this + 787);
  sub_29A160214(v18, 0);
  sub_29A4E12C4((v18 + 8), 0);
  v19 = *(this + 770);
  sub_29A160214(v19, 0);
  sub_29A4E1380((v19 + 8), 0);
  v20 = *(this + 771);
  sub_29A160214(v20, 0);
  sub_29A4E143C((v20 + 8), 0);
  v21 = *(this + 772);
  sub_29A160214(v21, 0);
  sub_29A4E14F8((v21 + 8), 0);
  sub_29A4E170C(*(this + 788), 0);
  sub_29A4E1994(*(this + 789), 0);
  sub_29A4E1CA0(*(this + 790), 0);
  sub_29A4E1FAC(*(this + 791), 0);
  sub_29A4E22B8(*(this + 792), 0);
  sub_29A4E25B0(*(this + 793), 0);
  sub_29A4E25B0(*(this + 794), 0);
  sub_29A4E25B0(*(this + 795), 0);
  sub_29A4E25B0(*(this + 796), 0);
  sub_29A4E2A9C(*(this + 797), 0);
  sub_29A4E2CCC(*(this + 798), 0);
  sub_29A4E3128(*(this + 802), 0);
  sub_29A4E3358(*(this + 803), 0);
  sub_29A4E35AC(*(this + 804), 0);
  sub_29A4E3828(*(this + 805), 0);
  sub_29A4E3828(*(this + 806), 0);
  sub_29A4E3A84(*(this + 807), 0);
  sub_29A3747F8(*(this + 809), 0);
  sub_29A3747F8(*(this + 810), 0);
  sub_29A4E3FE0(*(this + 811), 0);
  sub_29A4E42EC(*(this + 812), 0);
  v22 = *(this + 813);
  sub_29A160214(v22, 0);
  sub_29A4E4430(v22 + 1, 0);
  v23 = *(this + 814);
  sub_29A4E45A8(v23, 0);
  sub_29A4E44EC(v23 + 1, 0);
  sub_29A4E47C8(*(this + 815), 0);
  v24 = *(this + 816);

  sub_29A4E49F0(v24, 0);
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddSpec(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3, void *a4)
{
  v50 = a3;
  __p[0] = 0;
  __p[1] = 0;
  v49 = 0;
  v46 = 0uLL;
  v47 = 0;
  v44 = 0uLL;
  v45 = 0;
  sub_29A0A6994(__p, 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  v7 = a4[1];
  if (*a4 != v7)
  {
    v8 = (*a4 + 8);
    do
    {
      if (sub_29A4C7ACC(v8) && ((v9 = v8[1], (v9 & 4) != 0) ? (v10 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(v8)) : (v10 = *v8), !*v10))
      {
        v17 = v8[1];
        if ((v17 & 4) != 0)
        {
          v18 = (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(v8);
        }

        else
        {
          v18 = *v8;
        }

        v19 = v46.n128_u64[1];
        if (v46.n128_u64[1] >= v47)
        {
          v20 = sub_29A4F6D98(&v46, v8 - 1, v18);
        }

        else
        {
          sub_29A4F6EE8(v46.n128_u64[1], v8 - 1, v18);
          v20 = v19 + 56;
        }

        v46.n128_u64[1] = v20;
      }

      else
      {
        if (((*(*(a1 + 6536) + 256) << 16) | (*(*(a1 + 6536) + 257) << 8)) > 0x7FFu)
        {
          goto LABEL_21;
        }

        if (sub_29A3DF5E8(v8))
        {
          v11 = v8[1];
          v12 = (v11 & 4) != 0 ? (*((v11 & 0xFFFFFFFFFFFFFFF8) + 168))(v8) : *v8;
          if (pxrInternal__aapl__pxrReserved__::SdfLayerOffset::IsIdentity((v12 + 32)))
          {
            goto LABEL_17;
          }
        }

        if (((*(a1 + 6576) << 16) | (*(a1 + 6577) << 8)) > 0x7FFu || !sub_29A4C7A40(v8))
        {
          goto LABEL_21;
        }

        v13 = v8[1];
        v14 = v8;
        if ((v13 & 4) != 0)
        {
          v14 = (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(v8);
        }

        if (*(v14 + 6) << 48 == 0x2F000000000000)
        {
LABEL_17:
          sub_29A4D16F4(&v44, v8 - 1);
        }

        else
        {
LABEL_21:
          if (!sub_29A1F1D6C(v8) || ((v15 = v8[1], (v15 & 4) != 0) ? (v16 = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(v8)) : (v16 = *v8), !pxrInternal__aapl__pxrReserved__::TsSpline::IsEmpty(v16)))
          {
            LODWORD(v51) = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddField(a1, (v8 - 1));
            sub_29A486024(__p, &v51);
          }
        }
      }

      v21 = v8 + 2;
      v8 += 3;
    }

    while (v21 != v7);
  }

  if (v46.n128_u64[0] == v46.n128_u64[1] && v44 == *(&v44 + 1))
  {
    v26 = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddPath(a1, a2);
    v27 = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddFieldSet(a1, __p);
    v28 = v27;
    v30 = *(a1 + 8);
    v29 = *(a1 + 16);
    if (v30 >= v29)
    {
      v33 = 0xAAAAAAAAAAAAAAABLL * ((v30 - *a1) >> 2);
      v34 = v33 + 1;
      if (v33 + 1 > 0x1555555555555555)
      {
        sub_29A00C9A4();
      }

      v35 = 0xAAAAAAAAAAAAAAABLL * ((v29 - *a1) >> 2);
      if (2 * v35 > v34)
      {
        v34 = 2 * v35;
      }

      if (v35 >= 0xAAAAAAAAAAAAAAALL)
      {
        v36 = 0x1555555555555555;
      }

      else
      {
        v36 = v34;
      }

      if (v36)
      {
        v37 = sub_29A379A50(a1, v36);
      }

      else
      {
        v37 = 0;
      }

      v38 = &v37[12 * v33];
      v39 = &v37[12 * v36];
      v40 = v50;
      *v38 = v26;
      *(v38 + 1) = v28;
      *(v38 + 2) = v40;
      v32 = v38 + 12;
      v41 = *(a1 + 8) - *a1;
      v42 = &v38[-v41];
      memcpy(&v38[-v41], *a1, v41);
      v43 = *a1;
      *a1 = v42;
      *(a1 + 8) = v32;
      *(a1 + 16) = v39;
      if (v43)
      {
        operator delete(v43);
      }
    }

    else
    {
      v31 = v50;
      *v30 = v26;
      v30[1] = v27;
      v30[2] = v31;
      v32 = v30 + 3;
    }

    *(a1 + 8) = v32;
  }

  else
  {
    v22 = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddPath(a1, a2);
    LODWORD(v51) = v22;
    v23 = *(a1 + 32);
    if (v23 >= *(a1 + 40))
    {
      v25 = sub_29A4F72C8((a1 + 24), &v51, &v50, __p, &v44, &v46);
    }

    else
    {
      v24 = v50;
      *v23 = v22;
      *(v23 + 4) = v24;
      *(v23 + 16) = 0;
      *(v23 + 24) = 0;
      *(v23 + 8) = *__p;
      *(v23 + 24) = v49;
      __p[0] = 0;
      __p[1] = 0;
      v49 = 0;
      *(v23 + 32) = v44;
      *(v23 + 48) = v45;
      v44 = 0uLL;
      v45 = 0;
      *(v23 + 56) = v46;
      *(v23 + 72) = v47;
      v46 = 0uLL;
      v47 = 0;
      v25 = v23 + 80;
      *(a1 + 32) = v23 + 80;
    }

    *(a1 + 32) = v25;
  }

  v51 = &v44;
  sub_29A321878(&v51);
  *&v44 = &v46;
  sub_29A4E4A2C(&v44);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_29A4D1694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  *(v18 - 72) = &a9;
  sub_29A321878((v18 - 72));
  a9 = &a13;
  sub_29A4E4A2C(&a9);
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A4D16F4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29A4F7198(a1, a2);
  }

  else
  {
    sub_29A328648(*(a1 + 8), a2);
    result = v3 + 24;
    *(a1 + 8) = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddPath(pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v4 = *(this + 817);
  LODWORD(v12) = -1;
  v5 = sub_29A4F9FCC(v4 + 80, a2, a2, &v12);
  if (v6)
  {
    IsTargetPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsTargetPath(a2);
    if (IsTargetPath)
    {
      TargetPath = pxrInternal__aapl__pxrReserved__::SdfPath::GetTargetPath(a2);
      IsTargetPath = pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddPath(this, TargetPath);
    }

    if (*a2 != *pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(IsTargetPath))
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v12);
      pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddPath(this, &v12);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12 + 1);
      sub_29A1DE3A4(&v12);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPropertyPath(a2))
    {
      v9 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(a2);
      v12 = v9;
      if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v12 &= 0xFFFFFFFFFFFFFFF8;
      }
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetElementToken(a2, &v12);
    }

    pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_AddToken(this, &v12);
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(v5 + 6) = (*(this + 13) - *(this + 12)) >> 3;
    v10 = *(this + 13);
    if (v10 >= *(this + 14))
    {
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath const&>();
    }

    sub_29A1E21F4(*(this + 13), a2);
    sub_29A1E2240((v10 + 4), a2 + 1);
    *(this + 13) = v10 + 8;
  }

  return *(v5 + 6);
}

void sub_29A4D18C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_GetTimeSampleValueImpl(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *(a2 + 40) + 8 * a3;
  if (*(a1 + 6752) == 1)
  {
    v7 = *(a1 + 6744);
    v18 = (a1 + 6656);
    v19 = v7;
    v20 = sub_29A4CCA14();
    v8 = *(*(a1 + 6656) + 24) + v6;
    v16 = a1;
    v17 = v8;
    if (sub_29A4F76C0(&v17, &v15, 8uLL))
    {
      v9 = &off_2A2051828 + 3;
      v10 = v15;
LABEL_7:
      *a4 = v10;
LABEL_9:
      a4[1] = v9;
      return;
    }

    goto LABEL_8;
  }

  v11 = *(a1 + 6664);
  if (v11)
  {
    if (pxrInternal__aapl__pxrReserved__::ArchPRead(v11, &v16, 8, *(a1 + 6672) + v6) != -1)
    {
      v9 = &off_2A2051828 + 3;
      v10 = v16;
      goto LABEL_7;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v12 = *(a1 + 6696);
  v13 = *(a1 + 6704);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v16 = a1;
    v17 = v12;
    v18 = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v19 = 0;
    sub_29A014BEC(v13);
  }

  else
  {
    v16 = a1;
    v17 = v12;
    v18 = 0;
    v19 = 0;
  }

  v19 = v6;
  if (sub_29A4E5308(&v17, &v15, 8uLL))
  {
    v14 = &off_2A2051828 + 3;
    *a4 = v15;
  }

  else
  {
    v14 = 0;
  }

  a4[1] = v14;
  if (v18)
  {
    sub_29A014BEC(v18);
  }
}

void sub_29A4D1A78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_MakeTimeSampleValuesMutableImpl(uint64_t a1, void *a2)
{
  sub_29A1D1958(a2 + 2, (*(a2[1] + 8) - *a2[1]) >> 3);
  if (*(a1 + 6752) == 1)
  {
    v4 = *(a1 + 6744);
    v38 = (a1 + 6656);
    v39 = v4;
    v40 = sub_29A4CCA14();
    v5 = *(*(a1 + 6656) + 24) + a2[5];
    v36 = a1;
    v37 = v5;
    v6 = *(a2[1] + 8) - *a2[1];
    if (v6)
    {
      v7 = 0;
      v8 = v6 >> 3;
      while (sub_29A4F76C0(&v37, &v35, 8uLL))
      {
        v9 = v35;
        v10 = (a2[2] + v7);
        v11 = v10[1];
        if (v11)
        {
          v12 = (v10[1] & 3) == 3;
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          (*((v11 & 0xFFFFFFFFFFFFFFF8) + 32))(a2[2] + v7);
        }

        *v10 = v9;
        v10[1] = &off_2A2051828 + 3;
        v7 += 16;
        if (!--v8)
        {
          goto LABEL_40;
        }
      }

      return;
    }

LABEL_40:
    *a2 = 0;
    return;
  }

  v13 = *(a1 + 6664);
  if (v13)
  {
    v14 = *(a2[1] + 8) - *a2[1];
    if (!v14)
    {
      goto LABEL_40;
    }

    v15 = 0;
    v16 = *(a1 + 6672);
    v17 = v14 >> 3;
    v18 = a2[5];
    while (1)
    {
      v19 = pxrInternal__aapl__pxrReserved__::ArchPRead(v13, &v36, 8, v18 + v16);
      if (v19 == -1)
      {
        break;
      }

      v20 = v19;
      v21 = v36;
      v22 = (a2[2] + v15);
      v23 = v22[1];
      if (v23)
      {
        v24 = (v22[1] & 3) == 3;
      }

      else
      {
        v24 = 1;
      }

      if (!v24)
      {
        (*((v23 & 0xFFFFFFFFFFFFFFF8) + 32))(a2[2] + v15);
      }

      v18 += v20;
      *v22 = v21;
      v22[1] = &off_2A2051828 + 3;
      v15 += 16;
      if (!--v17)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    v25 = *(a1 + 6696);
    v26 = *(a1 + 6704);
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      v36 = a1;
      v37 = v25;
      v38 = v26;
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v26);
    }

    else
    {
      v36 = a1;
      v37 = v25;
      v38 = 0;
      v39 = 0;
    }

    v39 = a2[5];
    v27 = *(a2[1] + 8) - *a2[1];
    if (v27)
    {
      v28 = 0;
      v29 = v27 >> 3;
      while ((sub_29A4E5308(&v37, &v35, 8uLL) & 1) != 0)
      {
        v30 = v35;
        v31 = (a2[2] + v28);
        v32 = v31[1];
        if (v32)
        {
          v33 = (v31[1] & 3) == 3;
        }

        else
        {
          v33 = 1;
        }

        if (!v33)
        {
          (*((v32 & 0xFFFFFFFFFFFFFFF8) + 32))(a2[2] + v28);
        }

        *v31 = v30;
        v31[1] = &off_2A2051828 + 3;
        v28 += 16;
        if (!--v29)
        {
          goto LABEL_35;
        }
      }

      v34 = 0;
    }

    else
    {
LABEL_35:
      v34 = 1;
    }

    if (v38)
    {
      sub_29A014BEC(v38);
    }

    if (v34)
    {
      goto LABEL_40;
    }
  }
}

void sub_29A4D1D30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Usd_CrateFile::CrateFile::_WriteFields(void *a1, uint64_t a2)
{
  if (((*(a1[817] + 256) << 16) | (*(a1[817] + 257) << 8)) > 0x3FFu)
  {
    __src = ((a1[7] - a1[6]) >> 4);
    sub_29A4E5264(a2, &__src);
    sub_29A01112C(&__src, (a1[7] - a1[6]) >> 4);
    v4 = a1[6];
    v5 = a1[7];
    v6 = __src;
    if (v4 != v5)
    {
      v7 = __src;
      do
      {
        *v7++ = *(v4 + 4);
        v4 += 16;
      }

      while (v4 != v5);
    }

    CompressedBufferSize = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::GetCompressedBufferSize(((v22 - v6) >> 2));
    v9 = operator new[](CompressedBufferSize);
    v11 = pxrInternal__aapl__pxrReserved__::Usd_IntegerCompression::CompressToBuffer(__src, (v22 - __src) >> 2, v9, v10);
    __p = v11;
    sub_29A4E5264(a2, &__p);
    sub_29A4D0BB8(a2, v9, v11);
    sub_29A011718(&__p, (a1[7] - a1[6]) >> 4);
    v12 = a1[6];
    v13 = a1[7];
    v14 = __p;
    if (v12 != v13)
    {
      v15 = __p;
      do
      {
        *v15++ = *(v12 + 8);
        v12 += 16;
      }

      while (v12 != v13);
    }

    v16 = pxrInternal__aapl__pxrReserved__::TfFastCompression::GetCompressedBufferSize((v20 - v14));
    v17 = operator new[](v16);
    v18 = pxrInternal__aapl__pxrReserved__::TfFastCompression::CompressToBuffer(__p, v17, v20 - __p);
    v23 = v18;
    sub_29A4E5264(a2, &v23);
    sub_29A4D0BB8(a2, v17, v18);
    operator delete[](v17);
    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }

    operator delete[](v9);
    if (__src)
    {
      v22 = __src;
      operator delete(__src);
    }
  }

  else
  {

    sub_29A4D1F78(a2, (a1 + 6));
  }
}