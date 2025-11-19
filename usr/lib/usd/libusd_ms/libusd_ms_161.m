unint64_t sub_29AE4136C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(*a1 + 8);
  v7 = *(*(*a2 + 8) + 56);
  v8 = (*(*v7 + 24))(v7);
  v9 = (*(**(v6 + 56) + 24))(*(v6 + 56));
  v10 = *(*a2 + 8);
  v11 = *(*(*a3 + 8) + 56);
  v12 = (*(*v11 + 24))(v11);
  result = (*(**(v10 + 56) + 24))(*(v10 + 56));
  if (v8 >= v9)
  {
    if (v12 < result)
    {
      v15 = *a2;
      *a2 = *a3;
      *a3 = v15;
      v16 = *(*a1 + 8);
      v17 = *(*(*a2 + 8) + 56);
      v18 = (*(*v17 + 24))(v17);
      result = (*(**(v16 + 56) + 24))(*(v16 + 56));
      if (v18 < result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  else
  {
    v14 = *a1;
    if (v12 >= result)
    {
      *a1 = *a2;
      *a2 = v14;
      v20 = *(v14 + 8);
      v21 = *(*(*a3 + 8) + 56);
      v22 = (*(*v21 + 24))(v21);
      result = (*(**(v20 + 56) + 24))(*(v20 + 56));
      if (v22 >= result)
      {
        return result;
      }

      v14 = *a2;
      *a2 = *a3;
    }

    else
    {
      *a1 = *a3;
    }

    *a3 = v14;
  }

  return result;
}

unint64_t sub_29AE415B4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  sub_29AE4136C(a1, a2, a3);
  v8 = *(*a3 + 8);
  v9 = *(*(*a4 + 8) + 56);
  v10 = (*(*v9 + 24))(v9);
  result = (*(**(v8 + 56) + 24))(*(v8 + 56));
  if (v10 < result)
  {
    v12 = *a3;
    *a3 = *a4;
    *a4 = v12;
    v13 = *(*a2 + 8);
    v14 = *(*(*a3 + 8) + 56);
    v15 = (*(*v14 + 24))(v14);
    result = (*(**(v13 + 56) + 24))(*(v13 + 56));
    if (v15 < result)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v17 = *(*a1 + 8);
      v18 = *(*(*a2 + 8) + 56);
      v19 = (*(*v18 + 24))(v18);
      result = (*(**(v17 + 56) + 24))(*(v17 + 56));
      if (v19 < result)
      {
        v20 = *a1;
        *a1 = *a2;
        *a2 = v20;
      }
    }
  }

  return result;
}

unint64_t sub_29AE41768(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  sub_29AE415B4(a1, a2, a3, a4);
  v10 = *(*a4 + 8);
  v11 = *(*(*a5 + 8) + 56);
  v12 = (*(*v11 + 24))(v11);
  result = (*(**(v10 + 56) + 24))(*(v10 + 56));
  if (v12 < result)
  {
    v14 = *a4;
    *a4 = *a5;
    *a5 = v14;
    v15 = *(*a3 + 8);
    v16 = *(*(*a4 + 8) + 56);
    v17 = (*(*v16 + 24))(v16);
    result = (*(**(v15 + 56) + 24))(*(v15 + 56));
    if (v17 < result)
    {
      v18 = *a3;
      *a3 = *a4;
      *a4 = v18;
      v19 = *(*a2 + 8);
      v20 = *(*(*a3 + 8) + 56);
      v21 = (*(*v20 + 24))(v20);
      result = (*(**(v19 + 56) + 24))(*(v19 + 56));
      if (v21 < result)
      {
        v22 = *a2;
        *a2 = *a3;
        *a3 = v22;
        v23 = *(*a1 + 8);
        v24 = *(*(*a2 + 8) + 56);
        v25 = (*(*v24 + 24))(v24);
        result = (*(**(v23 + 56) + 24))(*(v23 + 56));
        if (v25 < result)
        {
          v26 = *a1;
          *a1 = *a2;
          *a2 = v26;
        }
      }
    }
  }

  return result;
}

BOOL sub_29AE419A4(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(*a1 + 8);
        v6 = *(*(*(a2 - 1) + 8) + 56);
        v7 = (*(*v6 + 24))(v6);
        if (v7 < (*(**(v5 + 56) + 24))(*(v5 + 56)))
        {
          v8 = *a1;
          *a1 = *(a2 - 1);
          *(a2 - 1) = v8;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      sub_29AE4136C(a1, a1 + 1, a2 - 1);
      return 1;
    case 4:
      sub_29AE415B4(a1, a1 + 1, a1 + 2, a2 - 1);
      return 1;
    case 5:
      sub_29AE41768(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
  }

LABEL_11:
  v9 = a1 + 2;
  sub_29AE4136C(a1, a1 + 1, a1 + 2);
  v10 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = *(*v9 + 8);
    v14 = *(*(*v10 + 8) + 56);
    v15 = (*(*v14 + 24))(v14);
    if (v15 < (*(**(v13 + 56) + 24))(*(v13 + 56)))
    {
      v16 = *v10;
      v17 = v11;
      while (1)
      {
        *(a1 + v17 + 24) = *(a1 + v17 + 16);
        if (v17 == -16)
        {
          break;
        }

        v18 = *(*(a1 + v17 + 8) + 8);
        v19 = (*(**(*(v16 + 8) + 56) + 24))(*(*(v16 + 8) + 56));
        v17 -= 8;
        if (v19 >= (*(**(v18 + 56) + 24))(*(v18 + 56)))
        {
          v20 = (a1 + v17 + 24);
          goto LABEL_19;
        }
      }

      v20 = a1;
LABEL_19:
      *v20 = v16;
      if (++v12 == 8)
      {
        return v10 + 1 == a2;
      }
    }

    v9 = v10;
    v11 += 8;
    if (++v10 == a2)
    {
      return 1;
    }
  }
}

BOOL sub_29AE41C4C(uint64_t a1)
{
  v3 = *(*(a1 + 24) + 336);
  if (v3 == -1)
  {
    v8 = v1;
    v9 = v2;
    v6[0] = "hdSt/drawItem.h";
    v6[1] = "HasInstancer";
    v6[2] = 36;
    v6[3] = "BOOL pxrInternal__aapl__pxrReserved__::HdStDrawItem::HasInstancer() const";
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v6, "_GetSharedData()->instancerLevels != -1", 0);
    v3 = *(*(a1 + 24) + 336);
  }

  return v3 > 0;
}

void sub_29AE41CD8(void ***a1)
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
        pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance::~HdStDrawItemInstance((v4 - 32));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance *sub_29AE41D5C(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      v10 = *v8;
      v11 = *(v8 + 1);
      v8 = (v8 + 32);
      *v9 = v10;
      v9[1] = v11;
      v9 += 2;
    }

    while (v8 != v5);
    do
    {
      pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance::~HdStDrawItemInstance(result);
      result = (v12 + 32);
    }

    while (result != v5);
  }

  a2[1] = v7;
  v13 = *a1;
  *a1 = v7;
  *(a1 + 8) = v13;
  a2[1] = v13;
  v14 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v14;
  v15 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
  return result;
}

uint64_t sub_29AE41E00(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance::~HdStDrawItemInstance((i - 32));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29AE41E58(tbb::internal::allocate_continuation_proxy *this)
{
  v31 = *MEMORY[0x29EDCA608];
  if (!*(this + 5))
  {
    *(this + 5) = 1;
    if (*(this - 11) < 0)
    {
      v2 = *(this - 4);
      if (*(v2 - 24) >= 2)
      {
        __dmb(0xBu);
        *(v2 + 8) = 1;
        v3 = *(this + 52);
        if (v3 <= 1)
        {
          LOBYTE(v3) = 1;
        }

        *(this + 52) = v3 + 1;
      }
    }
  }

  v4 = (this + 8);
  v5 = *(this + 3);
  v6 = *(this + 1) - *(this + 2);
  if (v5 < v6)
  {
    v7 = *(this + 5);
    if (v7 > 1)
    {
      goto LABEL_12;
    }

    if (v7 && *(this + 52))
    {
      --*(this + 52);
      *(this + 5) = 0;
LABEL_12:
      while (1)
      {
        v8 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
        *(v8 - 11) = 1;
        *v8 = &unk_2A204C520;
        __dmb(0xBu);
        v8[8] = 0;
        *(this - 4) = v8;
        *(v8 - 3) = 2;
        v9 = tbb::internal::allocate_child_proxy::allocate(v8, 0x38uLL);
        *(v9 - 11) = 1;
        v10 = *(this + 1);
        v11 = *(this + 2);
        *v9 = &unk_2A20969F8;
        *(v9 + 8) = v10;
        v12 = v11 + ((v10 - v11) >> 1);
        *(this + 1) = v12;
        *(v9 + 16) = v12;
        *(v9 + 24) = *(this + 24);
        v13 = *(this + 5) >> 1;
        *(this + 5) = v13;
        *(v9 + 40) = v13;
        *(v9 + 48) = 2;
        *(v9 + 52) = *(this + 52);
        (***(v9 - 40))();
        v5 = *(this + 3);
        v6 = *(this + 1) - *(this + 2);
        if (v5 >= v6)
        {
          break;
        }

        v14 = *(this + 5);
        if (v14 <= 1)
        {
          if (!v14 || !*(this + 52))
          {
            break;
          }

          --*(this + 52);
          *(this + 5) = 0;
        }
      }
    }
  }

  if (v5 < v6 && *(this + 52))
  {
    *v28 = 0x10000;
    v29 = *v4;
    v30 = *(this + 3);
    while (1)
    {
      sub_29A3B10B4(v28, *(this + 52));
      v15 = *(*(this - 4) + 8);
      __dmb(0xBu);
      if (v15)
      {
        v16 = *(this + 52) + 1;
        *(this + 52) = v16;
        v17 = v28[2];
        if (v28[2] >= 2u)
        {
          v18 = v28[1];
          v19 = v28[v28[1] + 3];
          v20 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
          *(v20 - 11) = 1;
          *v20 = &unk_2A204C520;
          __dmb(0xBu);
          v20[8] = 0;
          *(this - 4) = v20;
          *(v20 - 3) = 2;
          v21 = tbb::internal::allocate_child_proxy::allocate(v20, 0x38uLL);
          v22 = &v29 + 24 * v18;
          *(v21 - 11) = 1;
          *v21 = &unk_2A20969F8;
          v23 = *v22;
          *(v21 + 24) = *(v22 + 2);
          *(v21 + 8) = v23;
          v24 = *(this + 4);
          v25 = *(this + 5) >> 1;
          *(this + 5) = v25;
          *(v21 + 32) = v24;
          *(v21 + 40) = v25;
          *(v21 + 48) = 2;
          *(v21 + 52) = *(this + 52) - v19;
          (***(v21 - 40))();
          v17 = --v28[2];
          v28[1] = (v28[1] + 1) & 7;
          goto LABEL_25;
        }

        v26 = v28[0];
        if (v28[v28[0] + 3] < v16 && *(&v29 + 3 * v28[0] + 2) < *(&v29 + 3 * v28[0]) - *(&v29 + 3 * v28[0] + 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        v26 = v28[0];
      }

      sub_29AE42278(this, &v29 + 3 * v26);
      v17 = --v28[2];
      v28[0] = (v28[0] - 1) & 7;
LABEL_25:
      if (!v17 || tbb::task_group_context::is_group_execution_cancelled(*(this - 7)))
      {
        return 0;
      }
    }
  }

  sub_29AE42278(this, this + 1);
  return 0;
}

uint64_t sub_29AE42278(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = 10000 * v3;
  v5 = *v2;
  v6 = *(v2 + 8);
  if ((*(v6 + 24) - *(v6 + 16)) >> 5 >= (10000 * *a2))
  {
    v7 = 10000 * *a2;
  }

  else
  {
    v7 = (*(v6 + 24) - *(v6 + 16)) >> 5;
  }

  v15 = 0;
  result = sub_29A0ED084(v5, &v15);
  v9 = v7 >= v4;
  v10 = v7 - v4;
  if (v10 != 0 && v9)
  {
    v11 = result;
    v12 = 320000 * v3;
    do
    {
      v13 = *(v6 + 16) + v12;
      result = *(v13 + 8);
      v14 = *(*(result + 24) + 340);
      if (*(v13 + 24) == v14)
      {
        if (*(*(result + 24) + 340))
        {
          result = sub_29AE41C4C(result);
          if (result)
          {
            result = pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance::SetVisible((*(v6 + 16) + v12), 1);
          }

LABEL_12:
          ++*v11;
        }
      }

      else
      {
        result = pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance::SetVisible((*(v6 + 16) + v12), v14);
        if (v14)
        {
          goto LABEL_12;
        }
      }

      v12 += 32;
      --v10;
    }

    while (v10);
  }

  return result;
}

void sub_29AE42364(pxrInternal__aapl__pxrReserved__ *a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(a1))
    {
      v15[0] = 0;
      v16 = 65539;
      v17 = 55;
      tbb::task_group_context::init(v15, v6, v7, v8);
      v13[0] = a1;
      v13[1] = 0;
      v13[2] = a3;
      v12 = a2;
      sub_29AE42484(v13, &v12, &v14, v15);
      tbb::task_group_context::~task_group_context(v15);
    }

    else
    {
      v9 = *(a2 + 8);
      v10 = *(a2 + 16);
      v11 = *a2;

      v11(v9, v10, 0, a1);
    }
  }
}

void sub_29AE42468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  tbb::task_group_context::~task_group_context(va);
  _Unwind_Resume(a1);
}

void *sub_29AE42484(void *result, void *a2, uint64_t a3, tbb::task_group_context *a4)
{
  if (result[1] < *result)
  {
    v5 = result;
    v9 = a4;
    v6 = tbb::internal::allocate_root_with_context_proxy::allocate(&v9, 0x38uLL);
    *(v6 - 11) = 1;
    *v6 = &unk_2A2096A40;
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

uint64_t sub_29AE42584(uint64_t a1)
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

  sub_29AE425F4(v2, a1, a1 + 8);
  return 0;
}

void sub_29AE425F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) < *a3 - *(a3 + 8))
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
          sub_29AE426A8(a2);
          if (*(a3 + 16) >= *a3 - *(a3 + 8))
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

  sub_29AE427C0(a1, a2, a3);
}

uint64_t sub_29AE426A8(uint64_t a1)
{
  v2 = tbb::internal::allocate_continuation_proxy::allocate(a1, 0x10uLL);
  *(v2 - 11) = 1;
  *v2 = &unk_2A204C520;
  __dmb(0xBu);
  v2[8] = 0;
  *(a1 - 32) = v2;
  *(v2 - 3) = 2;
  v3 = tbb::internal::allocate_child_proxy::allocate(v2, 0x38uLL);
  *(v3 - 11) = 1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *v3 = &unk_2A2096A40;
  *(v3 + 8) = v4;
  v6 = v5 + ((v4 - v5) >> 1);
  *(a1 + 8) = v6;
  *(v3 + 16) = v6;
  *(v3 + 24) = *(a1 + 24);
  v7 = *(a1 + 40) >> 1;
  *(a1 + 40) = v7;
  *(v3 + 40) = v7;
  *(v3 + 48) = 2;
  *(v3 + 52) = *(a1 + 52);
  v8 = ***(v3 - 40);

  return v8();
}

void sub_29AE427C0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v18 = *MEMORY[0x29EDCA608];
  if (*(a3 + 2) < *a3 - *(a3 + 1) && *(a1 + 12))
  {
    *v15 = 0x10000;
    v16 = *a3;
    v17 = *(a3 + 2);
    while (1)
    {
      v5 = sub_29A3B10B4(v15, *(a1 + 12));
      v6 = *(*(a2 - 32) + 8);
      __dmb(0xBu);
      if (v6)
      {
        v7 = *(a1 + 12) + 1;
        *(a1 + 12) = v7;
        v8 = v15[2];
        if (v15[2] >= 2u)
        {
          sub_29AE429B4(a2, (&v16 + 24 * v15[1]), v15[v15[1] + 3]);
          v8 = --v15[2];
          v15[1] = (v15[1] + 1) & 7;
          goto LABEL_9;
        }

        v9 = v15[0];
        if (v15[v15[0] + 3] < v7 && *(&v16 + 3 * v15[0] + 2) < *(&v16 + 3 * v15[0]) - *(&v16 + 3 * v15[0] + 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v9 = v15[0];
      }

      (**(a2 + 32))(*(*(a2 + 32) + 8), *(*(a2 + 32) + 16), *(&v16 + 3 * v9 + 1), *(&v16 + 3 * v9), v5);
      v8 = --v15[2];
      v15[0] = (v15[0] - 1) & 7;
LABEL_9:
      if (!v8 || tbb::task_group_context::is_group_execution_cancelled(*(a2 - 56)))
      {
        return;
      }
    }
  }

  v10 = *(a2 + 32);
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v13 = *v10;
  v14 = *(a3 + 1);

  v13(v11, v12, v14);
}

uint64_t sub_29AE429B4(uint64_t a1, __int128 *a2, char a3)
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
  *v7 = &unk_2A2096A40;
  v8 = *a2;
  *(v7 + 24) = *(a2 + 2);
  *(v7 + 8) = v8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40) >> 1;
  *(a1 + 40) = v10;
  *(v7 + 32) = v9;
  *(v7 + 40) = v10;
  *(v7 + 48) = 2;
  *(v7 + 52) = *(a1 + 52) - a3;
  v11 = ***(v7 - 40);

  return v11();
}

void *pxrInternal__aapl__pxrReserved__::HdStCopyComputationGPU::HdStCopyComputationGPU(void *result, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  v3 = a2[1];
  *result = &unk_2A2096AD0;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *a3;
  result[3] = *a3;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[3] &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStCopyComputationGPU::Execute(void *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *a3)
{
  sub_29A0ECEEC(&v35, "hdSt", "virtual void pxrInternal__aapl__pxrReserved__::HdStCopyComputationGPU::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *)");
  v7 = a1[1];
  v6 = a1[2];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v7 + 168))(&v33, v7, a1 + 3);
  (*(*v9 + 168))(&v31, v9, a1 + 3);
  if (v33 || (*&v26 = "hdSt/copyComputation.cpp", *(&v26 + 1) = "Execute", v27 = 45, v28 = "virtual void pxrInternal__aapl__pxrReserved__::HdStCopyComputationGPU::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *)", LOBYTE(v29) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v26, "srcRes", 0) & 1) != 0))
  {
    if (v31 || (*&v26 = "hdSt/copyComputation.cpp", *(&v26 + 1) = "Execute", v27 = 48, v28 = "virtual void pxrInternal__aapl__pxrReserved__::HdStCopyComputationGPU::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *)", LOBYTE(v29) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v26, "dstRes", 0) & 1) != 0))
    {
      v10 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfTupleType(*(v33 + 4), *(v33 + 5));
      v11 = (*(*v7 + 88))(v7);
      v12 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfTupleType(*(v31 + 4), *(v31 + 5));
      v13 = v11 * v10;
      v14 = (*(*v9 + 88))(v9) * v12;
      if (v13 <= v14 || (*&v26 = "hdSt/copyComputation.cpp", *(&v26 + 1) = "Execute", v27 = 57, v28 = "virtual void pxrInternal__aapl__pxrReserved__::HdStCopyComputationGPU::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *)", LOBYTE(v29) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v26, "srcResSize <= dstResSize", 0) & 1) != 0))
      {
        v15 = (*(*v7 + 80))(v7, a1 + 3);
        v16 = *(v33 + 12);
        v17 = (*(*v9 + 80))(v9, a1 + 3);
        if (v13 < 1)
        {
          goto LABEL_16;
        }

        v18 = v17;
        v19 = v31;
        v20 = *(v31 + 12);
        if (!*v33)
        {
          *&v26 = "hdSt/copyComputation.cpp";
          *(&v26 + 1) = "Execute";
          v27 = 80;
          v28 = "virtual void pxrInternal__aapl__pxrReserved__::HdStCopyComputationGPU::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *)";
          LOBYTE(v29) = 0;
          if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v26, "srcRes->GetHandle()", 0))
          {
            goto LABEL_16;
          }

          v19 = v31;
        }

        if (*v19 || (*&v26 = "hdSt/copyComputation.cpp", *(&v26 + 1) = "Execute", v27 = 83, v28 = "virtual void pxrInternal__aapl__pxrReserved__::HdStCopyComputationGPU::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *)", LOBYTE(v29) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v26, "dstRes->GetHandle()", 0) & 1) != 0))
        {
          v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
          if (!v21)
          {
            pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
          }

          v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStPerfTokens);
          if (!v22)
          {
            v22 = sub_29ADCD5DC(&pxrInternal__aapl__pxrReserved__::HdStPerfTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v21, v22);
          v26 = *v33;
          v29 = *v31;
          v27 = v16 + v15;
          v28 = v13;
          v30 = v20 + v18;
          GlobalBlitCmds = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetGlobalBlitCmds(a3);
          (*(*GlobalBlitCmds + 56))(GlobalBlitCmds, &v26);
        }
      }

      else
      {
        *&v26 = "hdSt/copyComputation.cpp";
        *(&v26 + 1) = "Execute";
        v27 = 63;
        v28 = "virtual void pxrInternal__aapl__pxrReserved__::HdStCopyComputationGPU::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *)";
        LOBYTE(v29) = 0;
        v24 = a1[3] & 0xFFFFFFFFFFFFFFF8;
        if (v24)
        {
          v25 = (v24 + 16);
          if (*(v24 + 39) < 0)
          {
            v25 = *v25;
          }
        }

        else
        {
          v25 = "";
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v26, 1, "Migration error for %s: Source resource (%d) size is larger than destination resource size (%d)\n", v25, v13, v14);
      }
    }
  }

LABEL_16:
  if (v32)
  {
    sub_29A014BEC(v32);
  }

  if (v34)
  {
    sub_29A014BEC(v34);
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }

  if (v35)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v36, v35);
  }
}

void sub_29AE42FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a22)
  {
    sub_29A014BEC(a22);
  }

  if (a24)
  {
    sub_29A014BEC(a24);
    if (!v25)
    {
LABEL_5:
      if (!v24)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if (!v25)
  {
    goto LABEL_5;
  }

  sub_29A014BEC(v25);
  if (!v24)
  {
LABEL_7:
    sub_29A0E9CEC(v26 - 96);
    _Unwind_Resume(a1);
  }

LABEL_6:
  sub_29A014BEC(v24);
  goto LABEL_7;
}

void pxrInternal__aapl__pxrReserved__::HdStCopyComputationGPU::GetBufferSpecs(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v4 + 168))(&v11);
  v6 = *(v11 + 32);
  v7 = *(v11 + 40);
  *&v13 = v6;
  *(&v13 + 1) = v7;
  v8 = a2[1];
  if (v8 >= a2[2])
  {
    v10 = sub_29AE03FE4(a2, a1 + 3, &v13);
  }

  else
  {
    v9 = a1[3];
    *v8 = v9;
    if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v8 &= 0xFFFFFFFFFFFFFFF8;
    }

    v8[1] = v6;
    v8[2] = v7;
    v10 = (v8 + 3);
    a2[1] = v8 + 3;
  }

  a2[1] = v10;
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }
}

void sub_29AE43198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE431C4(pxrInternal__aapl__pxrReserved__::HdStComputation *this)
{
  *this = &unk_2A2096AD0;
  v2 = *(this + 3);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 2);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdStComputation::~HdStComputation(this);
}

void sub_29AE43238(pxrInternal__aapl__pxrReserved__::HdStComputation *this)
{
  *this = &unk_2A2096AD0;
  v2 = *(this + 3);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 2);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdStComputation::~HdStComputation(this);

  operator delete(v4);
}

void sub_29AE432B0()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2096B10, 0, "HDST_DRAW", 0);
  v0 = sub_29ADCBDE8();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v0, "HDST_DRAW", "Reports diagnostics for drawing");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2096B10, 1, "HDST_DRAW_BATCH", 0);
  v1 = sub_29ADCBDE8();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v1 + 4, "HDST_DRAW_BATCH", "Reports diagnostics for draw batches");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2096B10, 2, "HDST_FORCE_DRAW_BATCH_REBUILD", 0);
  v2 = sub_29ADCBDE8();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v2 + 8, "HDST_FORCE_DRAW_BATCH_REBUILD", "Forces rebuild of draw batches.");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2096B10, 3, "HDST_DRAW_ITEM_GATHER", 0);
  v3 = sub_29ADCBDE8();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v3 + 12, "HDST_DRAW_ITEM_GATHER", "Reports when draw items are fetched for a render pass.");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2096B10, 4, "HDST_DRAWITEMS_CACHE", 0);
  v4 = sub_29ADCBDE8();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v4 + 16, "HDST_DRAWITEMS_CACHE", "Reports lookups from the draw items cache.");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2096B10, 5, "HDST_DISABLE_FRUSTUM_CULLING", 0);
  v5 = sub_29ADCBDE8();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v5 + 20, "HDST_DISABLE_FRUSTUM_CULLING", "Disable view frustum culling");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2096B10, 6, "HDST_DISABLE_MULTITHREADED_CULLING", 0);
  v6 = sub_29ADCBDE8();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v6 + 24, "HDST_DISABLE_MULTITHREADED_CULLING", "Force the use of the single threaded version of frustum culling");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2096B10, 7, "HDST_DUMP_GLSLFX_CONFIG", 0);
  v7 = sub_29ADCBDE8();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v7 + 28, "HDST_DUMP_GLSLFX_CONFIG", "Print composed GLSLFX configuration");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2096B10, 8, "HDST_DUMP_FAILING_SHADER_SOURCE", 0);
  v8 = sub_29ADCBDE8();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v8 + 32, "HDST_DUMP_FAILING_SHADER_SOURCE", "Print generated shader source code for shaders that fail compilation");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2096B10, 9, "HDST_DUMP_FAILING_SHADER_SOURCEFILE", 0);
  v9 = sub_29ADCBDE8();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v9 + 36, "HDST_DUMP_FAILING_SHADER_SOURCEFILE", "Write out generated shader source code to files for shaders that fail compilation");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2096B10, 10, "HDST_DUMP_SHADER_SOURCE", 0);
  v10 = sub_29ADCBDE8();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v10 + 40, "HDST_DUMP_SHADER_SOURCE", "Print generated shader source code");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2096B10, 11, "HDST_DUMP_SHADER_SOURCEFILE", 0);
  v11 = sub_29ADCBDE8();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v11 + 44, "HDST_DUMP_SHADER_SOURCEFILE", "Write out generated shader source code to files");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2096B10, 12, "HDST_LOG_COMPUTE_SHADER_PROGRAM_HITS", 0);
  v12 = sub_29ADCBDE8();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v12 + 48, "HDST_LOG_COMPUTE_SHADER_PROGRAM_HITS", "Log compute shader program hits in the resource registry.");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2096B10, 13, "HDST_LOG_COMPUTE_SHADER_PROGRAM_MISSES", 0);
  v13 = sub_29ADCBDE8();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v13 + 52, "HDST_LOG_COMPUTE_SHADER_PROGRAM_MISSES", "Log compute shader program misses in the resource registry.");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2096B10, 14, "HDST_LOG_DRAWING_SHADER_PROGRAM_HITS", 0);
  v14 = sub_29ADCBDE8();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v14 + 56, "HDST_LOG_DRAWING_SHADER_PROGRAM_HITS", "Log drawing shader program hits in the resource registry. Use env var 'HDST_DEBUG_SHADER_PROGRAM_FOR_PRIM' to limit logging to a subset of prims.");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2096B10, 15, "HDST_LOG_DRAWING_SHADER_PROGRAM_MISSES", 0);
  v15 = sub_29ADCBDE8();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v15 + 60, "HDST_LOG_DRAWING_SHADER_PROGRAM_MISSES", "Log drawing shader program misses in the resource registry.Use env var 'HDST_DEBUG_SHADER_PROGRAM_FOR_PRIM' to limit logging to a subset of prims.");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2096B10, 16, "HDST_MATERIAL_ADDED", 0);
  v16 = sub_29ADCBDE8();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v16 + 64, "HDST_MATERIAL_ADDED", "Report when a material is added");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2096B10, 17, "HDST_MATERIAL_REMOVED", 0);
  v17 = sub_29ADCBDE8() + 68;

  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v17, "HDST_MATERIAL_REMOVED", "Report when a material is removed");
}

void sub_29AE43688(pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry *a1)
{
  Instance = pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry::GetInstance(a1);
  sub_29A008E78(__p, "GL");
  v2 = atomic_load(&qword_2A174EF78);
  if (!v2)
  {
    v2 = sub_29AE43A40();
  }

  v3 = 0;
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry::RegisterSceneIndexForRenderer(Instance, __p, v2, &v3, 1000, 1);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29AE43718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdSt_DependencyForwardingSceneIndexPlugin::HdSt_DependencyForwardingSceneIndexPlugin(void *this)
{
  *this = &unk_2A2096B30;
  return this;
}

{
  *this = &unk_2A2096B30;
  return this;
}

void sub_29AE437FC(uint64_t *a1)
{
  operator new(0x950uLL);
  v2 = *a1;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AE4388C(pxrInternal__aapl__pxrReserved__::HdSceneIndexPlugin *a1)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexPlugin::~HdSceneIndexPlugin(a1);

  operator delete(v1);
}

uint64_t sub_29AE438B4()
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = nullsub_1694;
  v3.__vftable = &unk_2A2086100;
  v3.__type_name = pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin<pxrInternal__aapl__pxrReserved__::HdSt_DependencyForwardingSceneIndexPlugin>;
  v4 = &v3;
  pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_SetFactory(&v1, &v3);
  return sub_29AB10084(&v3);
}

void sub_29AE43990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AB10084(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin<pxrInternal__aapl__pxrReserved__::HdSt_DependencyForwardingSceneIndexPlugin>()
{
  sub_29A0ECEEC(&v2, "hdSt", "static HfPluginBase *pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin() [T = pxrInternal__aapl__pxrReserved__::HdSt_DependencyForwardingSceneIndexPlugin]");
  v0 = operator new(8uLL);
  *v0 = &unk_2A2096B30;
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v3, v2);
  }

  return v0;
}

unint64_t sub_29AE43A40()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "HdSt_DependencyForwardingSceneIndexPlugin", 0);
  v1 = *v0;
  v5 = v1;
  if ((v1 & 7) != 0)
  {
    v2 = (v1 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed) & 1) == 0)
    {
      v5 = v2;
    }
  }

  v0[1] = 0;
  v0[2] = 0;
  v0[3] = 0;
  sub_29A12EF7C(v0 + 1, &v5, &v6, 1uLL);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = 0;
  atomic_compare_exchange_strong(&qword_2A174EF78, &v3, v0);
  if (v3)
  {
    v5 = (v0 + 1);
    sub_29A124AB0(&v5);
    if ((*v0 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v0 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(v0);
    return atomic_load(&qword_2A174EF78);
  }

  return v0;
}

void sub_29AE43B60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_29AE43BE0(pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry *a1)
{
  Instance = pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry::GetInstance(a1);
  sub_29A008E78(__p, "GL");
  v2 = atomic_load(qword_2A174EF80);
  if (!v2)
  {
    v2 = sub_29AE4400C();
  }

  v3 = 0;
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry::RegisterSceneIndexForRenderer(Instance, __p, v2, &v3, 100, 0);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29AE43C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdSt_DependencySceneIndexPlugin::HdSt_DependencySceneIndexPlugin(void *this)
{
  *this = &unk_2A2096B78;
  return this;
}

{
  *this = &unk_2A2096B78;
  return this;
}

void sub_29AE43D80(int a1, const void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_29AC113C4(v15, a2);
}

atomic_uint **sub_29AE43DBC(atomic_uint **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = v2[2];
    if ((v3 & 0x80000000) == 0)
    {
      if (atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) != 1)
      {
        return a1;
      }

LABEL_11:
      sub_29B2C7560(v2);
      return a1;
    }

    if (v3 == -2)
    {
      v5 = 4294967294;
    }

    else
    {
      v5 = v2[2];
      atomic_compare_exchange_strong_explicit(v2 + 2, &v5, v3 + 1, memory_order_release, memory_order_relaxed);
      if (v5 == v3)
      {
        if (v3 != -1)
        {
          return a1;
        }

        goto LABEL_11;
      }
    }

    if (!pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter::_RemoveRefMaybeLocked(v2, v5))
    {
      return a1;
    }

    goto LABEL_11;
  }

  return a1;
}

void sub_29AE43E58(pxrInternal__aapl__pxrReserved__::HdSceneIndexPlugin *a1)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexPlugin::~HdSceneIndexPlugin(a1);

  operator delete(v1);
}

uint64_t sub_29AE43E80()
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = nullsub_1695;
  v3.__vftable = &unk_2A2086100;
  v3.__type_name = pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin<pxrInternal__aapl__pxrReserved__::HdSt_DependencySceneIndexPlugin>;
  v4 = &v3;
  pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_SetFactory(&v1, &v3);
  return sub_29AB10084(&v3);
}

void sub_29AE43F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AB10084(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin<pxrInternal__aapl__pxrReserved__::HdSt_DependencySceneIndexPlugin>()
{
  sub_29A0ECEEC(&v2, "hdSt", "static HfPluginBase *pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin() [T = pxrInternal__aapl__pxrReserved__::HdSt_DependencySceneIndexPlugin]");
  v0 = operator new(8uLL);
  *v0 = &unk_2A2096B78;
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v3, v2);
  }

  return v0;
}

unint64_t sub_29AE4400C()
{
  v19 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x38uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "HdSt_DependencySceneIndexPlugin", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "storm_volumeFieldBindingToDependency", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "storm_materialToMaterialBindings", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "storm_materialBindingsToDependency", 0);
  v1 = v0 + 4;
  v2 = *v0;
  v15 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v3;
    }
  }

  v4 = v0[1];
  v16 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v16 = v5;
    }
  }

  v6 = v0[2];
  v17 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 = v7;
    }
  }

  v8 = v0[3];
  v18 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 = v9;
    }
  }

  *v1 = 0;
  v0[5] = 0;
  v0[6] = 0;
  sub_29A12EF7C(v1, &v15, &v19, 4uLL);
  for (i = 24; i != -8; i -= 8)
  {
    v11 = *(&v15 + i);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v12 = 0;
  atomic_compare_exchange_strong(qword_2A174EF80, &v12, v0);
  if (v12)
  {
    v13 = sub_29A1CF24C(v0);
    operator delete(v13);
    return atomic_load(qword_2A174EF80);
  }

  return v0;
}

void sub_29AE441C0(_Unwind_Exception *a1)
{
  v4 = 24;
  while (1)
  {
    v5 = *(v2 + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
    if (v4 == -8)
    {
      v6 = v1[3];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[2];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[1];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

void sub_29AE4427C(void *a1, const void *a2)
{
  *a1 = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 15), a2);
  sub_29ABD4DDC();
}

void sub_29AE442E0(void *a1, const void *a2)
{
  *a1 = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 15), a2);
  sub_29ABD4DDC();
}

void sub_29AE44348(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_29AC1199C((a1 + 112));
  (*(*v5 + 16))(v5, a2);
  if (a3[1])
  {
    v6 = operator new(0x20uLL);
    v7 = v6;
    v8 = *a3;
    *v6 = &unk_2A2096C38;
    v6[1] = v8;
    if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v6[1] &= 0xFFFFFFFFFFFFFFF8;
    }

    v9 = a3[2];
    v6[2] = a3[1];
    v6[3] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = operator new(0x20uLL);
    *v10 = &unk_2A2096DA8;
    v10[1] = 0;
    v10[2] = 0;
    v10[3] = v7;
    v11 = a3[2];
    a3[1] = v7;
    a3[2] = v10;
    if (v11)
    {

      sub_29A014BEC(v11);
    }
  }
}

void sub_29AE44470(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  sub_29AC2B620(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE444B4(uint64_t a1)
{
  v1 = *(*sub_29AC1199C((a1 + 112)) + 24);

  return v1();
}

void sub_29AE44530(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2096C38;
  v2 = *(this + 3);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 1);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AE445A4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2096C38;
  v2 = *(this + 3);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 1);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v4);
}

void sub_29AE4461C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (a1 + 16);
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v5)
  {
    v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v5 + 15) ^ *(a1 + 8)) < 8)
  {
    goto LABEL_7;
  }

  pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchema::GetFromParent(v4, &v10);
  IsDefined = pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v10);
  v5 = v11;
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (IsDefined)
  {
LABEL_7:
    SchemaToken = pxrInternal__aapl__pxrReserved__::HdDependenciesSchema::GetSchemaToken(v5);
    v8 = *a2;
    v9 = a2[1];
    if (*a2 != v9)
    {
      while ((*v8 ^ *SchemaToken) >= 8)
      {
        if (++v8 == v9)
        {
          goto LABEL_12;
        }
      }
    }

    if (v8 == v9)
    {
LABEL_12:
      sub_29A1D8028(a2, SchemaToken);
    }
  }
}

void sub_29AE44720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  sub_29A124AB0(&a9);
  _Unwind_Resume(a1);
}

void sub_29AE44750(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v73 = *MEMORY[0x29EDCA608];
  if ((*pxrInternal__aapl__pxrReserved__::HdDependenciesSchema::GetSchemaToken(a1) ^ *a2) <= 7)
  {
    memset(v66, 0, sizeof(v66));
    v62 = 0;
    pxrInternal__aapl__pxrReserved__::HdDependenciesSchema::GetFromParent(a1 + 2, &v70);
    pxrInternal__aapl__pxrReserved__::HdSchema::GetContainer(&v70, &v67);
    if (*(&v70 + 1))
    {
      sub_29A014BEC(*(&v70 + 1));
    }

    v5 = v67;
    if (v67)
    {
      v6 = *(&v67 + 1);
      if (*(&v67 + 1))
      {
        atomic_fetch_add_explicit((*(&v67 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v7 = *(&v66[0] + 1);
      *&v66[0] = v5;
      *(&v66[0] + 1) = v6;
      if (v7)
      {
        sub_29A014BEC(v7);
      }

      v62 = 1;
    }

    if (*(&v67 + 1))
    {
      sub_29A014BEC(*(&v67 + 1));
    }

    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v8)
    {
      v8 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(v8 + 7) ^ a1[1]) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchema::GetFromParent(a1 + 2, &v65);
      v72 = 0uLL;
      v70 = 0u;
      v71 = 0u;
      if ((atomic_load_explicit(qword_2A174EFA0, memory_order_acquire) & 1) == 0)
      {
        v46 = __cxa_guard_acquire(qword_2A174EFA0);
        if (v46)
        {
          DefaultLocator = pxrInternal__aapl__pxrReserved__::HdMaterialSchema::GetDefaultLocator(v46);
          sub_29AD24300(DefaultLocator, &v67);
          xmmword_2A174EF90 = v67;
          __cxa_atexit(sub_29AD2436C, &xmmword_2A174EF90, &dword_299FE7000);
          __cxa_guard_release(qword_2A174EFA0);
        }
      }

      if ((atomic_load_explicit(qword_2A174EFC0, memory_order_acquire) & 1) == 0)
      {
        v48 = __cxa_guard_acquire(qword_2A174EFC0);
        if (v48)
        {
          v49 = pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchema::GetDefaultLocator(v48);
          sub_29AD24300(v49, &v67);
          xmmword_2A174EFB0 = v67;
          __cxa_atexit(sub_29AD2436C, &xmmword_2A174EFB0, &dword_299FE7000);
          __cxa_guard_release(qword_2A174EFC0);
        }
      }

      pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchema::GetMaterialBinding(&v65, &v67);
      pxrInternal__aapl__pxrReserved__::HdMaterialBindingSchema::GetPath(&v67, &v64);
      if (*(&v67 + 1))
      {
        sub_29A014BEC(*(&v67 + 1));
      }

      if (v64 && ((*(*v64 + 32))(&v67, 0.0), v9 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v67), pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v67 + 1), v10 = sub_29A1DE3A4(&v67), v9))
      {
        v68 = 0u;
        v69 = 0u;
        v67 = 0u;
        v11 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnPrimPath(v10, &v64);
        v12 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnDataSourceLocator(v11, &xmmword_2A174EF90);
        v13 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetAffectedDataSourceLocator(v12, &xmmword_2A174EFB0);
        pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::Build(v13, &v63);
        v14 = v63;
        v63 = 0uLL;
        if (*(&v69 + 1))
        {
          sub_29A014BEC(*(&v69 + 1));
        }

        if (*(&v68 + 1))
        {
          sub_29A014BEC(*(&v68 + 1));
        }

        if (*(&v67 + 1))
        {
          sub_29A014BEC(*(&v67 + 1));
        }

        v15 = atomic_load(qword_2A174EF80);
        if (!v15)
        {
          v15 = sub_29AE4400C();
        }

        sub_29A166F2C(&v72, (v15 + 16));
        if (*(&v14 + 1))
        {
          atomic_fetch_add_explicit((*(&v14 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v16 = &v71;
        v17 = *(&v70 + 1);
        v18 = (&v72 + 8);
        v70 = v14;
        if (v17)
        {
          sub_29A014BEC(v17);
        }

        if (*(&v14 + 1))
        {
          sub_29A014BEC(*(&v14 + 1));
        }

        v19 = 2;
      }

      else
      {
        v18 = &v72;
        v16 = &v70;
        v19 = 1;
      }

      if (*(&v64 + 1))
      {
        sub_29A014BEC(*(&v64 + 1));
      }

      if ((atomic_load_explicit(qword_2A174EFE0, memory_order_acquire) & 1) == 0)
      {
        v50 = __cxa_guard_acquire(qword_2A174EFE0);
        if (v50)
        {
          v51 = pxrInternal__aapl__pxrReserved__::HdDependenciesSchema::GetDefaultLocator(v50);
          v52 = atomic_load(qword_2A174EF80);
          if (!v52)
          {
            v52 = sub_29AE4400C();
          }

          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v51, (v52 + 16), &v67);
          sub_29AD24300(&v67, &v64);
          xmmword_2A174EFD0 = v64;
          v64 = 0uLL;
          sub_29ABC3488(&v67);
          __cxa_atexit(sub_29AD2436C, &xmmword_2A174EFD0, &dword_299FE7000);
          __cxa_guard_release(qword_2A174EFE0);
        }
      }

      if ((atomic_load_explicit(qword_2A174F000, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_2A174F000))
      {
        v68 = 0u;
        v69 = 0u;
        v67 = 0u;
        v53 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnDataSourceLocator(&v67, &xmmword_2A174EFB0);
        v54 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetAffectedDataSourceLocator(v53, &xmmword_2A174EFD0);
        pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::Build(v54, &v64);
        xmmword_2A174EFF0 = v64;
        v64 = 0uLL;
        sub_29ABF2F5C(&v67);
        __cxa_atexit(sub_29AD26C2C, &xmmword_2A174EFF0, &dword_299FE7000);
        __cxa_guard_release(qword_2A174F000);
      }

      v21 = atomic_load(qword_2A174EF80);
      if (!v21)
      {
        v21 = sub_29AE4400C();
      }

      sub_29A166F2C(v18, (v21 + 24));
      v22 = xmmword_2A174EFF0;
      if (*(&xmmword_2A174EFF0 + 1))
      {
        atomic_fetch_add_explicit((*(&xmmword_2A174EFF0 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v23 = *(v16 + 1);
      *v16 = v22;
      if (v23)
      {
        sub_29A014BEC(v23);
      }

      pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v19, &v72, &v70, &v67);
      v59 = v67;
      for (i = 24; i != -8; i -= 16)
      {
        v25 = *(&v70 + i);
        if (v25)
        {
          sub_29A014BEC(v25);
        }
      }

      for (j = 8; j != -8; j -= 8)
      {
        v27 = *(&v72 + j);
        if ((v27 & 7) != 0)
        {
          atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      if (*(&v65 + 1))
      {
        sub_29A014BEC(*(&v65 + 1));
      }

      v28 = v62;
      v29 = &v66[v62];
      v30 = *(v29 + 1);
      *v29 = v59;
      if (v30)
      {
        sub_29A014BEC(v30);
      }

      v62 = v28 + 1;
    }

    v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v31)
    {
      v31 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(v31 + 15) ^ a1[1]) > 7)
    {
      v41 = v62;
      if (!v62)
      {
LABEL_89:
        v42 = 0;
        v43 = 0;
LABEL_95:
        for (k = 152; k != -8; k -= 16)
        {
          v45 = *(v66 + k);
          if (v45)
          {
            sub_29A014BEC(v45);
          }
        }

        *a3 = v42;
        a3[1] = v43;
        return;
      }
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchema::GetFromParent(a1 + 2, &v65);
      pxrInternal__aapl__pxrReserved__::HdSchema::GetContainer(&v65, &v70);
      sub_29AE4529C(sub_29AE4537C, &v70, &v67);
      v60 = v67;
      v67 = 0uLL;
      if (*(&v70 + 1))
      {
        sub_29A014BEC(*(&v70 + 1));
      }

      if (*(&v65 + 1))
      {
        sub_29A014BEC(*(&v65 + 1));
      }

      v32 = v62;
      v33 = &v66[v62];
      v34 = *(v33 + 1);
      *v33 = v60;
      if (v34)
      {
        sub_29A014BEC(v34);
      }

      v62 = v32 + 1;
      if ((atomic_load_explicit(qword_2A174F060, memory_order_acquire) & 1) == 0)
      {
        v55 = __cxa_guard_acquire(qword_2A174F060);
        if (v55)
        {
          v56 = pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchema::GetDefaultLocator(v55);
          sub_29AD24300(v56, &v67);
          xmmword_2A174F050 = v67;
          __cxa_atexit(sub_29AD2436C, &xmmword_2A174F050, &dword_299FE7000);
          __cxa_guard_release(qword_2A174F060);
        }
      }

      if ((atomic_load_explicit(&qword_2A174F080, memory_order_acquire) & 1) == 0)
      {
        v57 = __cxa_guard_acquire(&qword_2A174F080);
        if (v57)
        {
          v58 = pxrInternal__aapl__pxrReserved__::HdDependenciesSchema::GetDefaultLocator(v57);
          sub_29AD24300(v58, &v67);
          xmmword_2A174F070 = v67;
          __cxa_atexit(sub_29AD2436C, &xmmword_2A174F070, &dword_299FE7000);
          __cxa_guard_release(&qword_2A174F080);
        }
      }

      v35 = atomic_load(qword_2A174EF80);
      if (!v35)
      {
        v35 = sub_29AE4400C();
      }

      v68 = 0u;
      v69 = 0u;
      v67 = 0u;
      v36 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnDataSourceLocator(&v67, &xmmword_2A174F050);
      v37 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetAffectedDataSourceLocator(v36, &xmmword_2A174F070);
      pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::Build(v37, &v72);
      v65 = v72;
      v72 = 0uLL;
      pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New((v35 + 8), &v65, &v70);
      v61 = v70;
      v70 = 0uLL;
      if (*(&v65 + 1))
      {
        sub_29A014BEC(*(&v65 + 1));
      }

      if (*(&v72 + 1))
      {
        sub_29A014BEC(*(&v72 + 1));
      }

      if (*(&v69 + 1))
      {
        sub_29A014BEC(*(&v69 + 1));
      }

      if (*(&v68 + 1))
      {
        sub_29A014BEC(*(&v68 + 1));
      }

      if (*(&v67 + 1))
      {
        sub_29A014BEC(*(&v67 + 1));
      }

      v38 = v62;
      v39 = &v66[v62];
      v40 = *(v39 + 1);
      *v39 = v61;
      if (v40)
      {
        sub_29A014BEC(v40);
      }

      v41 = v38 + 1;
      v62 = v38 + 1;
      if (v38 == -1)
      {
        goto LABEL_89;
      }
    }

    if (v41 == 1)
    {
      v43 = *(&v66[0] + 1);
      v42 = *&v66[0];
      if (*(&v66[0] + 1))
      {
        atomic_fetch_add_explicit((*(&v66[0] + 1) + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      sub_29AE45228(&v62, v66, &v67);
      v43 = *(&v67 + 1);
      v42 = v67;
    }

    goto LABEL_95;
  }

  v20 = *(*a1[2] + 24);

  v20();
}

void sub_29AE45048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, char a19)
{
  sub_29ABC3488(v19 - 208);
  __cxa_guard_abort(qword_2A174EFE0);
  v21 = 24;
  while (1)
  {
    v22 = *(v19 - 144 + v21);
    if (v22)
    {
      sub_29A014BEC(v22);
    }

    v21 -= 16;
    if (v21 == -8)
    {
      v23 = 8;
      while (1)
      {
        v24 = *(v19 - 112 + v23);
        if ((v24 & 7) != 0)
        {
          atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v23 -= 8;
        if (v23 == -8)
        {
          if (a18)
          {
            sub_29A014BEC(a18);
          }

          v25 = 152;
          while (1)
          {
            v26 = *(&a19 + v25);
            if (v26)
            {
              sub_29A014BEC(v26);
            }

            v25 -= 16;
            if (v25 == -8)
            {
              _Unwind_Resume(a1);
            }
          }
        }
      }
    }
  }
}

void *sub_29AE45228@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x90uLL);
  pxrInternal__aapl__pxrReserved__::HdOverlayContainerDataSource::HdOverlayContainerDataSource(v6, *a1, a2);

  return sub_29ABDE960(a3, v6);
}

uint64_t sub_29AE4529C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8[4] = *MEMORY[0x29EDCA608];
  v6 = operator new(0x38uLL);
  v8[0] = &unk_2A2096C80;
  v8[1] = a1;
  v8[3] = v8;
  pxrInternal__aapl__pxrReserved__::HdMapContainerDataSource::HdMapContainerDataSource(v6, v8, a2);
  sub_29AE45610(a3, v6);
  return sub_29AC42F5C(v8);
}

void sub_29AE45350(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AC42F5C(va);
  _Unwind_Resume(a1);
}

void sub_29AE4537C(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if ((atomic_load_explicit(qword_2A174F020, memory_order_acquire) & 1) == 0)
  {
    v7 = __cxa_guard_acquire(qword_2A174F020);
    if (v7)
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchema::GetDefaultLocator(v7);
      sub_29AD24300(DefaultLocator, &v13);
      xmmword_2A174F010 = v13;
      __cxa_atexit(sub_29AD2436C, &xmmword_2A174F010, &dword_299FE7000);
      __cxa_guard_release(qword_2A174F020);
    }
  }

  if ((atomic_load_explicit(qword_2A174F040, memory_order_acquire) & 1) == 0)
  {
    v9 = __cxa_guard_acquire(qword_2A174F040);
    if (v9)
    {
      v10 = pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchema::GetDefaultLocator(v9);
      sub_29AD24300(v10, &v13);
      xmmword_2A174F030 = v13;
      __cxa_atexit(sub_29AD2436C, &xmmword_2A174F030, &dword_299FE7000);
      __cxa_guard_release(qword_2A174F040);
    }
  }

  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  sub_29ABE1B68(a1, &v11);
  v4 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnPrimPath(&v13, &v11);
  v5 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnDataSourceLocator(v4, &xmmword_2A174F010);
  v6 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetAffectedDataSourceLocator(v5, &xmmword_2A174F030);
  pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::Build(v6, &v16);
  *a2 = v16;
  v16 = 0uLL;
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  if (*(&v15 + 1))
  {
    sub_29A014BEC(*(&v15 + 1));
  }

  if (*(&v14 + 1))
  {
    sub_29A014BEC(*(&v14 + 1));
  }

  if (*(&v13 + 1))
  {
    sub_29A014BEC(*(&v13 + 1));
  }
}

void *sub_29AE45544(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A2096C80;
  result[1] = v3;
  return result;
}

uint64_t sub_29AE4558C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A2096C80;
  a2[1] = v2;
  return result;
}

uint64_t sub_29AE455C4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2096D00))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_29AE45610(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2096D30;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AE45668(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE45684(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AE456AC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AE456DC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2096D80))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AE45720(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AE45748(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AE45778(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2096DF8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer *pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::HdStDispatchBuffer(pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer *this, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, int a4, unsigned int a5)
{
  v8 = a2;
  v31 = 0;
  v32 = a2;
  pxrInternal__aapl__pxrReserved__::HdBufferArray::HdBufferArray(this, a3, &v31, 0);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    v8 = v32;
  }

  *this = &unk_2A2096E20;
  *(this + 21) = v8;
  *(this + 44) = a4;
  *(this + 45) = a5;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 29) = 0;
  sub_29A0ECEEC(&v29, "hdSt", "pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::HdStDispatchBuffer(HdStResourceRegistry *, const TfToken &, int, unsigned int)");
  v28 = 4 * a5;
  v10 = v28 * a4;
  __p[0] = 0;
  __p[1] = 0;
  v23 = 0;
  v27 = 0;
  v24 = 28;
  v25 = v10;
  v26 = 4 * a5;
  MEMORY[0x29C2C1A60](__p, "Dispatch");
  Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(*(this + 21));
  v21.n128_u64[0] = (*(*Hgi + 96))(Hgi, __p);
  v21.n128_u64[1] = v12;
  v18 = 0;
  LODWORD(v19[0]) = 5;
  v19[1] = 1;
  sub_29AE46054(a3, v19, &v18, &v28, &v20);
  v13 = v20;
  v20 = 0uLL;
  v14 = *(this + 27);
  *(this + 13) = v13;
  if (v14)
  {
    sub_29A014BEC(v14);
    if (*(&v20 + 1))
    {
      sub_29A014BEC(*(&v20 + 1));
    }
  }

  pxrInternal__aapl__pxrReserved__::HdStBufferResource::SetAllocation(*(this + 26), &v21, v10);
  v19[0] = this;
  sub_29AE461B4(&v32, v19, &v20);
  v15 = v20;
  v20 = 0uLL;
  v16 = *(this + 29);
  *(this + 14) = v15;
  if (v16)
  {
    sub_29A014BEC(v16);
    if (*(&v20 + 1))
    {
      sub_29A014BEC(*(&v20 + 1));
    }
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  if (v29)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v30, v29);
  }

  return this;
}

void sub_29AE459BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_29A0E9CEC(v24 - 88);
  v26 = *(v23 + 232);
  if (v26)
  {
    sub_29A014BEC(v26);
  }

  v27 = *(v23 + 216);
  if (v27)
  {
    sub_29A014BEC(v27);
  }

  sub_29A3E01A4(&__p);
  pxrInternal__aapl__pxrReserved__::HdBufferArray::~HdBufferArray(v23);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::~HdStDispatchBuffer(pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer *this)
{
  *this = &unk_2A2096E20;
  v2 = *(this + 26);
  Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(*(this + 21));
  (*(*Hgi + 104))(Hgi, v2);
  v4 = *(this + 26);
  v7 = 0uLL;
  pxrInternal__aapl__pxrReserved__::HdStBufferResource::SetAllocation(v4, &v7, 0);
  v5 = *(this + 29);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v6 = *(this + 27);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  v7.n128_u64[0] = this + 184;
  sub_29A3E01A4(&v7);
  pxrInternal__aapl__pxrReserved__::HdBufferArray::~HdBufferArray(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::~HdStDispatchBuffer(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::CopyData(uint64_t a1, void *a2)
{
  if (a2[1] - *a2 == *(*(a1 + 208) + 16) || (result = sub_29B2C9FC0(v14), (result & 1) != 0))
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
    if (!v4)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStPerfTokens);
    if (!v5)
    {
      v5 = sub_29ADCD5DC(&pxrInternal__aapl__pxrReserved__::HdStPerfTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v4, (v5 + 8));
    Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(*(a1 + 168));
    (*(*Hgi + 32))(&v13);
    v7 = *(a1 + 208);
    v12 = *(v7 + 2);
    v9[0] = *a2;
    v9[1] = 0;
    v10 = *v7;
    v11 = 0;
    (*(*v13 + 64))(v13, v9);
    pxrInternal__aapl__pxrReserved__::Hgi::SubmitCmds(Hgi, v13, 0);
    result = v13;
    v13 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_29AE45C98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a15)
  {
    sub_29B2CA00C(a15);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::AddBufferResourceView(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::_AddResource(a1, a2, a3, a4, a5, 4 * *(a1 + 180), &v6);
  pxrInternal__aapl__pxrReserved__::HdStBufferResource::SetAllocation(v6, *(a1 + 208), 0);
  if (v7)
  {
    sub_29A014BEC(v7);
  }
}

void sub_29AE45D08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::_AddResource@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t *a7@<X8>)
{
  v17[0] = a3;
  v17[1] = a4;
  v15 = a6;
  v16 = a5;
  if (sub_29ABCF8C0(27))
  {
    pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::GetResource(a1, a2, a7);
    if (*a7)
    {
      v13[0] = "hdSt/dispatchBuffer.cpp";
      v13[1] = "_AddResource";
      v13[2] = 306;
      v13[3] = "HdStBufferResourceSharedPtr pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::_AddResource(const TfToken &, HdTupleType, int, int)";
      v14 = 0;
      result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v13, "!bufferRes", 0);
      if ((result & 1) == 0)
      {
        return result;
      }
    }

    v10 = a7[1];
    if (v10)
    {
      sub_29A014BEC(v10);
    }
  }

  sub_29AE467A0(a1 + 16, v17, &v16, &v15, a7);
  v11 = a1[24];
  if (v11 >= a1[25])
  {
    result = sub_29AE46890((a1 + 23), a2, a7);
  }

  else
  {
    result = (sub_29AE469C4(v11, a2, a7) + 3);
  }

  a1[24] = result;
  return result;
}

void sub_29AE45E24(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::GarbageCollect(pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer *this)
{
  v2[0] = "hdSt/dispatchBuffer.cpp";
  v2[1] = "GarbageCollect";
  v2[2] = 240;
  v2[3] = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::GarbageCollect()";
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v2, 1, "HdStDispatchBuffer doesn't support this operation");
  return 0;
}

void pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::Reallocate()
{
  v0[0] = "hdSt/dispatchBuffer.cpp";
  v0[1] = "Reallocate";
  v0[2] = 249;
  v0[3] = "virtual void pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::Reallocate(const std::vector<HdBufferArrayRangeSharedPtr> &, const HdBufferArraySharedPtr &)";
  v1 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v0, 1, "HdStDispatchBuffer doesn't support this operation");
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::GetResource@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  if (*(this + 184) == *(this + 192))
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v3 = this;
    this = sub_29ABCF8C0(27);
    v4 = *(v3 + 184);
    if (this)
    {
      v5 = *(v4 + 8);
      v6 = *(v3 + 192);
      v11 = *(v3 + 184);
      v12 = v6;
      if (v4 != v6)
      {
        do
        {
          if (*(*(*sub_29ADF30C4(&v11) + 8) + 8) != *(v5 + 8))
          {
            v9[0] = "hdSt/dispatchBuffer.cpp";
            v9[1] = "GetResource";
            v9[2] = 272;
            v9[3] = "HdStBufferResourceSharedPtr pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::GetResource() const";
            v10 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v9, 1, "GetResource(void) called onHdBufferArray having multiple GPU resources");
          }

          this = sub_29ADF30FC(&v11);
        }

        while (v11 != v12);
        v4 = *(v3 + 184);
      }
    }

    v8 = *(v4 + 8);
    v7 = *(v4 + 16);
    *a2 = v8;
    a2[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::GetResource@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = *(result + 184);
  v4 = *(result + 192);
  if (v3 == v4)
  {
LABEL_4:
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    while ((*a2 ^ *v3) > 7)
    {
      v3 += 3;
      if (v3 == v4)
      {
        goto LABEL_4;
      }
    }

    v6 = v3[1];
    v5 = v3[2];
    *a3 = v6;
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

void *sub_29AE46054@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, int *a3@<X3>, int *a4@<X4>, void *a5@<X8>)
{
  v10 = operator new(0x50uLL);
  result = sub_29AE460D0(v10, a1, a2, a3, a4);
  *a5 = v10 + 3;
  a5[1] = v10;
  return result;
}

void *sub_29AE460D0(void *a1, uint64_t *a2, uint64_t *a3, int *a4, int *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2096E78;
  pxrInternal__aapl__pxrReserved__::HdStBufferResource::HdStBufferResource((a1 + 3), a2, *a3, a3[1], *a4, *a5);
  return a1;
}

void sub_29AE46164(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2096E78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29AE461B4@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x30uLL);
  result = sub_29AE46218(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29AE46218(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2096EC8;
  v4 = *a3;
  pxrInternal__aapl__pxrReserved__::HdStBufferArrayRange::HdStBufferArrayRange(a1 + 3, *a2);
  a1[3] = &unk_2A2096F18;
  a1[5] = v4;
  return a1;
}

void sub_29AE462BC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2096EC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE4632C(pxrInternal__aapl__pxrReserved__::HdStBufferArrayRange *a1)
{
  pxrInternal__aapl__pxrReserved__::HdStBufferArrayRange::~HdStBufferArrayRange(a1);

  operator delete(v1);
}

uint64_t sub_29AE4637C()
{
  v1[0] = "hdSt/dispatchBuffer.cpp";
  v1[1] = "Resize";
  v1[2] = 54;
  v1[3] = "virtual BOOL pxrInternal__aapl__pxrReserved__::Hd_DispatchBufferArrayRange::Resize(int)";
  v2 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v1, 1, "Hd_DispatchBufferArrayRange doesn't support this operation");
  return 0;
}

void sub_29AE463D8()
{
  v0[0] = "hdSt/dispatchBuffer.cpp";
  v0[1] = "CopyData";
  v0[2] = 60;
  v0[3] = "virtual void pxrInternal__aapl__pxrReserved__::Hd_DispatchBufferArrayRange::CopyData(const HdBufferSourceSharedPtr &)";
  v1 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v0, 1, "Hd_DispatchBufferArrayRange doesn't support this operation");
}

void sub_29AE46430(uint64_t a1@<X8>)
{
  v2[0] = "hdSt/dispatchBuffer.cpp";
  v2[1] = "ReadData";
  v2[2] = 65;
  v2[3] = "virtual VtValue pxrInternal__aapl__pxrReserved__::Hd_DispatchBufferArrayRange::ReadData(const TfToken &) const";
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v2, 1, "Hd_DispatchBufferArrayRange doesn't support this operation");
  *(a1 + 8) = 0;
}

uint64_t sub_29AE46498()
{
  v1[0] = "hdSt/dispatchBuffer.cpp";
  v1[1] = "GetElementOffset";
  v1[2] = 72;
  v1[3] = "virtual int pxrInternal__aapl__pxrReserved__::Hd_DispatchBufferArrayRange::GetElementOffset() const";
  v2 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v1, 1, "Hd_DispatchBufferArrayRange doesn't support this operation");
  return 0;
}

uint64_t sub_29AE464F4()
{
  v1[0] = "hdSt/dispatchBuffer.cpp";
  v1[1] = "GetByteOffset";
  v1[2] = 79;
  v1[3] = "virtual int pxrInternal__aapl__pxrReserved__::Hd_DispatchBufferArrayRange::GetByteOffset(const TfToken &) const";
  v2 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v1, 1, "Hd_DispatchBufferArrayRange doesn't support this operation");
  return 0;
}

uint64_t sub_29AE46550()
{
  v1[0] = "hdSt/dispatchBuffer.cpp";
  v1[1] = "GetNumElements";
  v1[2] = 85;
  v1[3] = "virtual size_t pxrInternal__aapl__pxrReserved__::Hd_DispatchBufferArrayRange::GetNumElements() const";
  v2 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v1, 1, "Hd_DispatchBufferArrayRange doesn't support this operation");
  return 0;
}

uint64_t sub_29AE465AC()
{
  v1[0] = "hdSt/dispatchBuffer.cpp";
  v1[1] = "GetVersion";
  v1[2] = 97;
  v1[3] = "virtual size_t pxrInternal__aapl__pxrReserved__::Hd_DispatchBufferArrayRange::GetVersion() const";
  v2 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v1, 1, "Hd_DispatchBufferArrayRange doesn't support this operation");
  return 0;
}

void sub_29AE46608()
{
  v0[0] = "hdSt/dispatchBuffer.cpp";
  v0[1] = "IncrementVersion";
  v0[2] = 103;
  v0[3] = "virtual void pxrInternal__aapl__pxrReserved__::Hd_DispatchBufferArrayRange::IncrementVersion()";
  v1 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v0, 1, "Hd_DispatchBufferArrayRange doesn't support this operation");
}

uint64_t sub_29AE46660()
{
  v1[0] = "hdSt/dispatchBuffer.cpp";
  v1[1] = "GetMaxNumElements";
  v1[2] = 108;
  v1[3] = "virtual size_t pxrInternal__aapl__pxrReserved__::Hd_DispatchBufferArrayRange::GetMaxNumElements() const";
  v2 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v1, 1, "Hd_DispatchBufferArrayRange doesn't support this operation");
  return 1;
}

void sub_29AE466C8()
{
  v0[0] = "hdSt/dispatchBuffer.cpp";
  v0[1] = "SetBufferArray";
  v0[2] = 135;
  v0[3] = "virtual void pxrInternal__aapl__pxrReserved__::Hd_DispatchBufferArrayRange::SetBufferArray(HdBufferArray *)";
  v1 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v0, 1, "Hd_DispatchBufferArrayRange doesn't support this operation");
}

uint64_t sub_29AE46744()
{
  v1[0] = "hdSt/dispatchBuffer.cpp";
  v1[1] = "GetCapacity";
  v1[2] = 91;
  v1[3] = "virtual int pxrInternal__aapl__pxrReserved__::Hd_DispatchBufferArrayRange::GetCapacity() const";
  v2 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v1, 1, "Hd_DispatchBufferArrayRange doesn't support this operation");
  return 0;
}

void *sub_29AE467A0@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, int *a3@<X3>, int *a4@<X4>, void *a5@<X8>)
{
  v10 = operator new(0x50uLL);
  result = sub_29AE4681C(v10, a1, a2, a3, a4);
  *a5 = v10 + 3;
  a5[1] = v10;
  return result;
}

void *sub_29AE4681C(void *a1, uint64_t *a2, uint64_t *a3, int *a4, int *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2096E78;
  pxrInternal__aapl__pxrReserved__::HdStBufferResource::HdStBufferResource((a1 + 3), a2, *a3, a3[1], *a4, *a5);
  return a1;
}

uint64_t sub_29AE46890(uint64_t a1, uint64_t *a2, uint64_t *a3)
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
  sub_29AE469C4(v17, a2, a3);
  *&v18 = v17 + 3;
  v10 = *(a1 + 8);
  v11 = v17 + *a1 - v10;
  sub_29AE46A0C(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29A3E0E04(&v16);
  return v15;
}

void sub_29AE469B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A3E0E04(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29AE469C4(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  *result = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *result &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = a3[1];
  result[1] = *a3;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29AE46A0C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v9 = a4;
  v8 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      *a4 = *v4;
      *v4 = 0;
      *(a4 + 8) = *(v4 + 1);
      v4[1] = 0;
      v4[2] = 0;
      v4 += 3;
      a4 += 24;
    }

    while (v4 != a3);
    v9 = a4;
  }

  v7 = 1;
  sub_29A3E0D9C(a1, a2, a3);
  return sub_29AE46AA8(v6);
}

uint64_t sub_29AE46AA8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A3E0140(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_DomeLightComputationGPU::HdSt_DomeLightComputationGPU(uint64_t result, uint64_t *a2, void *a3, int a4, int a5, float a6)
{
  v6 = *a2;
  *result = &unk_2A2097008;
  *(result + 8) = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = a3[1];
  *(result + 16) = *a3;
  *(result + 24) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  *(result + 32) = a4;
  *(result + 36) = a5;
  *(result + 40) = a6;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_DomeLightComputationGPU::Execute(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *a3)
{
  v93[4] = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v91, "hdSt", "virtual void pxrInternal__aapl__pxrReserved__::HdSt_DomeLightComputationGPU::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *const)");
  v90 = *(a1 + 40) >= 0.0;
  pxrInternal__aapl__pxrReserved__::HdStPackageDomeLightShader(v65);
  sub_29A008E78(&__p, "");
  v93[0] = &unk_2A2097068;
  v93[1] = a1;
  v93[2] = &v90;
  v93[3] = v93;
  pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::GetComputeProgram(v65, (a1 + 8), &__p, a3, v93, &v88);
  sub_29ADEC314(v93);
  if (SHIBYTE(v79) < 0)
  {
    operator delete(__p);
  }

  if ((v65[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v65[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v88 || (__p = "hdSt/domeLightComputations.cpp", v78 = "Execute", v79 = 150, *v80 = "virtual void pxrInternal__aapl__pxrReserved__::HdSt_DomeLightComputationGPU::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *const)", v80[8] = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "computeProgram", 0) & 1) != 0))
  {
    v5 = *(a1 + 24);
    if (v5 && (v6 = std::__shared_weak_count::lock(v5)) != 0)
    {
      v7 = v6;
      v8 = *(a1 + 16);
      if (v8)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v7 = 0;
    }

    __p = "hdSt/domeLightComputations.cpp";
    v78 = "Execute";
    v79 = 155;
    *v80 = "virtual void pxrInternal__aapl__pxrReserved__::HdSt_DomeLightComputationGPU::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *const)";
    v80[8] = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "shader", 0) & 1) == 0)
    {
      goto LABEL_76;
    }

    v8 = 0;
LABEL_13:
    v87 = 0uLL;
    v86 = 0uLL;
    v9 = *(v8 + 9);
    if (!v9)
    {
      __p = "hdSt/domeLightComputations.cpp";
      v78 = "_GetSrcTextureDimensionsAndName";
      v79 = 73;
      *v80 = "BOOL pxrInternal__aapl__pxrReserved__::_GetSrcTextureDimensionsAndName(const HdStSimpleLightingShaderSharedPtr &, GfVec3i *, HgiTextureHandle *, HgiSamplerHandle *)";
      v80[8] = 0;
      if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "srcTextureHandle", 0))
      {
        goto LABEL_76;
      }

      v9 = *(v8 + 9);
    }

    {
      v11 = v10;
    }

    else
    {
      __p = "hdSt/domeLightComputations.cpp";
      v78 = "_GetSrcTextureDimensionsAndName";
      v79 = 80;
      *v80 = "BOOL pxrInternal__aapl__pxrReserved__::_GetSrcTextureDimensionsAndName(const HdStSimpleLightingShaderSharedPtr &, GfVec3i *, HgiTextureHandle *, HgiSamplerHandle *)";
      v80[8] = 0;
      if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "srcTextureObject", 0))
      {
        goto LABEL_76;
      }

      v11 = 0;
      v9 = *(v8 + 9);
    }

    v12 = *(v9 + 16);
    {
      v14 = v13;
    }

    else
    {
      __p = "hdSt/domeLightComputations.cpp";
      v78 = "_GetSrcTextureDimensionsAndName";
      v79 = 87;
      *v80 = "BOOL pxrInternal__aapl__pxrReserved__::_GetSrcTextureDimensionsAndName(const HdStSimpleLightingShaderSharedPtr &, GfVec3i *, HgiTextureHandle *, HgiSamplerHandle *)";
      v80[8] = 0;
      if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "srcSamplerObject", 0) & 1) == 0)
      {
        goto LABEL_76;
      }

      v14 = 0;
    }

    v15 = (**v11)(v11);
    if ((v15 & 1) == 0)
    {
      if ((v11[4] & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((v11[4] & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v15);
      }

      __p = "hdSt/domeLightComputations.cpp";
      v78 = "_GetSrcTextureDimensionsAndName";
      v79 = 95;
      *v80 = "BOOL pxrInternal__aapl__pxrReserved__::_GetSrcTextureDimensionsAndName(const HdStSimpleLightingShaderSharedPtr &, GfVec3i *, HgiTextureHandle *, HgiSamplerHandle *)";
      v80[8] = 0;
      if (*(EmptyString + 23) < 0)
      {
        EmptyString = *EmptyString;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "Could not open dome light texture file at %s.", v16, EmptyString);
      goto LABEL_76;
    }

    v19 = v11[9];
    v18 = (v11 + 9);
    v17 = v19;
    if (v19 || (__p = "hdSt/domeLightComputations.cpp", v78 = "_GetSrcTextureDimensionsAndName", v79 = 100, *v80 = "BOOL pxrInternal__aapl__pxrReserved__::_GetSrcTextureDimensionsAndName(const HdStSimpleLightingShaderSharedPtr &, GfVec3i *, HgiTextureHandle *, HgiSamplerHandle *)", v80[8] = 0, v50 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "srcTexture", 0), v17 = 0, v50))
    {
      Descriptor = pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(v17);
      v21 = *(Descriptor + 52);
      v22 = *(Descriptor + 56);
      v87 = *v18;
      v86 = v14[1];
      v23 = v21 <= 256 || v22 <= 256;
      v24 = !v23;
      v25 = v21 >> v24;
      v26 = v22 >> v24;
      v27 = v25 + 7;
      v23 = v25 < -7;
      v28 = v25 + 14;
      v29 = v23 ? v28 : v27;
      v30 = v26 + 7;
      v23 = v26 < -7;
      v31 = v26 + 14;
      v32 = v23 ? v31 : v30;
      TextureHandle = pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::GetTextureHandle(v8, (a1 + 8));
      if (*TextureHandle || (__p = "hdSt/domeLightComputations.cpp", v78 = "Execute", v79 = 182, *v80 = "virtual void pxrInternal__aapl__pxrReserved__::HdSt_DomeLightComputationGPU::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *const)", v80[8] = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "dstTextureHandle", 0) & 1) != 0))
      {
        v34 = **TextureHandle;
        {
          v36 = v35;
        }

        else
        {
          __p = "hdSt/domeLightComputations.cpp";
          v78 = "Execute";
          v79 = 189;
          *v80 = "virtual void pxrInternal__aapl__pxrReserved__::HdSt_DomeLightComputationGPU::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *const)";
          v80[8] = 0;
          if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "dstUvTextureObject", 0) & 1) == 0)
          {
            goto LABEL_76;
          }

          v36 = 0;
        }

        v38 = v29 & 0xFFFFFFF8;
        v39 = *(a1 + 36);
        if (!v39)
        {
          __p = 0;
          v78 = 0;
          v79 = 0;
          *&v80[4] = xmmword_29B70A5A0;
          v81 = xmmword_29B70A5B0;
          v82 = 0x1000100000000;
          *v80 = 0;
          v83 = 1;
          v84 = 0;
          v85 = 0;
          v40 = *(a1 + 8) & 0xFFFFFFFFFFFFFFF8;
          if (v40)
          {
            v41 = (v40 + 16);
            if (*(v40 + 39) < 0)
            {
              v41 = *v41;
            }
          }

          else
          {
            v41 = "";
          }

          MEMORY[0x29C2C1A60](&__p, v41);
          DWORD2(v81) = v29 & 0xFFFFFFF8;
          HIDWORD(v81) = v32 & 0xFFFFFFF8;
          LODWORD(v82) = 1;
          WORD2(v82) = 1;
          HIWORD(v82) = *(a1 + 32);
          *v80 = 0x900000018;
          v84 = pxrInternal__aapl__pxrReserved__::HgiGetDataSizeOfFormat(9, 0, 0) * v38 * (v32 & 0xFFFFFFF8);
          pxrInternal__aapl__pxrReserved__::HdStUvTextureObject::_CreateTexture(v36, &__p);
          if (SHIBYTE(v79) < 0)
          {
            operator delete(__p);
          }

          v39 = *(a1 + 36);
        }

        v71[0] = 0;
        v71[1] = 0;
        v72 = 0;
        v73 = 0x1000100000009;
        v75 = 0;
        v76 = v39;
        v74 = *(v36 + 72);
        Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(a3);
        v70[0] = (*(*Hgi + 64))(Hgi, v71);
        v70[1] = v43;
        v44 = pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc::HgiResourceBindingsDesc(&__p);
        MEMORY[0x29C2C1A60](&__p, "DomeLightComputation", v44);
        pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc::HgiTextureBindDesc(v65);
        v68 = 0x400000000;
        v69 = 0;
        sub_29A03A998(v65, &v87);
        sub_29A03A998(v66, &v86);
        v67 = 2;
        sub_29ADF42D0((&v81 + 4), v65);
        pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc::HgiTextureBindDesc(v60);
        v63 = 0x400000001;
        v64 = 1;
        ViewTexture = pxrInternal__aapl__pxrReserved__::HgiTextureView::GetViewTexture(v70[0]);
        sub_29A03A998(v60, ViewTexture);
        sub_29A03A998(v61, &v86);
        v62 = 3;
        sub_29ADF42D0((&v81 + 4), v60);
        v58 = (*(*Hgi + 144))(Hgi, &__p);
        v59 = v46;
        v57 = *(a1 + 40);
        v47 = pxrInternal__aapl__pxrReserved__::HgiComputePipelineDesc::HgiComputePipelineDesc(v53);
        MEMORY[0x29C2C1A60](v53, "DomeLightComputation", v47);
        v55 = *(v88 + 64);
        if (v90)
        {
          v56 = 4;
        }

        v51 = (*(*Hgi + 176))(Hgi, v53);
        v52 = v48;
        GlobalComputeCmds = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetGlobalComputeCmds(a3, 0);
        (*(*GlobalComputeCmds + 24))(GlobalComputeCmds, "DomeLightComputationCmds");
        (*(*GlobalComputeCmds + 48))(GlobalComputeCmds, v58, v59);
        (*(*GlobalComputeCmds + 40))(GlobalComputeCmds, v51, v52);
        if (v90)
        {
          (*(*GlobalComputeCmds + 56))(GlobalComputeCmds, v51, v52, 0, 4, &v57);
        }

        (*(*GlobalComputeCmds + 64))(GlobalComputeCmds, v38, v32 & 0xFFFFFFF8);
        (*(*GlobalComputeCmds + 32))(GlobalComputeCmds);
        (*(*Hgi + 72))(Hgi, v70);
        (*(*Hgi + 184))(Hgi, &v51);
        (*(*Hgi + 152))(Hgi, &v58);
        if (v54 < 0)
        {
          operator delete(v53[0]);
        }

        if (v61[0])
        {
          v61[1] = v61[0];
          operator delete(v61[0]);
        }

        if (v60[0])
        {
          v60[1] = v60[0];
          operator delete(v60[0]);
        }

        if (v66[0])
        {
          v66[1] = v66[0];
          operator delete(v66[0]);
        }

        if (v65[0])
        {
          v65[1] = v65[0];
          operator delete(v65[0]);
        }

        v65[0] = &v81 + 4;
        sub_29AB88D58(v65);
        v65[0] = v80;
        sub_29AB88B40(v65);
        if (SHIBYTE(v79) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v72) < 0)
        {
          operator delete(v71[0]);
        }
      }
    }

LABEL_76:
    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }

  if (v89)
  {
    sub_29A014BEC(v89);
  }

  if (v91)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v92, v91);
  }
}

void sub_29AE475F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (v57)
  {
    sub_29A014BEC(v57);
  }

  v60 = *(v58 - 168);
  if (v60)
  {
    sub_29A014BEC(v60);
  }

  sub_29A0E9CEC(v58 - 152);
  _Unwind_Resume(a1);
}

void sub_29AE4772C(pxrInternal__aapl__pxrReserved__::HdStComputation *this)
{
  *this = &unk_2A2097008;
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 1);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdStComputation::~HdStComputation(this);
}

void sub_29AE477A0(pxrInternal__aapl__pxrReserved__::HdStComputation *this)
{
  *this = &unk_2A2097008;
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 1);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdStComputation::~HdStComputation(this);

  operator delete(v4);
}

__n128 sub_29AE47828(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2097068;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29AE47874(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2097068;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_29AE478A4(uint64_t a1, std::string *this)
{
  if ((*(*(a1 + 8) + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*(*(a1 + 8) + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  std::string::operator=(this, EmptyString);
  LODWORD(this[1].__r_.__value_.__l.__data_) = 4;
  this[10].__r_.__value_.__l.__size_ = 0x800000008;
  LODWORD(this[10].__r_.__value_.__r.__words[2]) = 1;
  sub_29A008E78(&__p, "inTexture");
  LODWORD(v9.__r_.__value_.__l.__data_) = 13;
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddTexture(this, &__p, 0, 2u, &v9, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "outTexture");
  LODWORD(v9.__r_.__value_.__l.__data_) = 9;
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddWritableTexture(this, &__p, 1u, 2u, &v9, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (**(a1 + 16) == 1)
  {
    sub_29A008E78(&__p, "inRoughness");
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    if (!v5)
    {
      v5 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    }

    if ((*(v5 + 12) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v6 = ((*(v5 + 12) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v6 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
    }

    memset(&v9, 0, sizeof(v9));
    pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddConstantParam(this, &__p, v6, &v9);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  sub_29A008E78(&__p, "hd_GlobalInvocationID");
  sub_29A008E78(&v9, "uvec3");
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  if (!v7)
  {
    v7 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  }

  if ((*(v7 + 17) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v8 = ((*(v7 + 17) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v8 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(this, &__p, &v9, v8);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29AE47AB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AE47AFC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20970C8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStDrawItem::HdStDrawItem(uint64_t a1, uint64_t a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::HdDrawItem::HdDrawItem(a1, a2);
  *v3 = &unk_2A20970E8;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0;
  sub_29A0ECEEC(&v5, "hdSt", "pxrInternal__aapl__pxrReserved__::HdStDrawItem::HdStDrawItem(const HdRprimSharedData *)");
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v6, v5);
  }

  return a1;
}

void sub_29AE47BD0(_Unwind_Exception *a1)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(v1 + 6);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdDrawItem::~HdDrawItem(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStDrawItem::~HdStDrawItem(pxrInternal__aapl__pxrReserved__::HdStDrawItem *this)
{
  *this = &unk_2A20970E8;
  v2 = *(this + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdDrawItem::~HdDrawItem(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdStDrawItem::~HdStDrawItem(this);

  free(v1);
}

unint64_t pxrInternal__aapl__pxrReserved__::HdStDrawItem::GetBufferArraysHash(pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer **this)
{
  v2 = *pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(this[3], *(this + 12));
  if (v2)
  {
    v3 = (*(*v2 + 96))(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(this[3], *(this + 14));
  if (v4)
  {
    v36 = (*(*v4 + 96))(v4);
  }

  else
  {
    v36 = 0;
  }

  v5 = *pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(this[3], *(this + 13));
  if (v5)
  {
    v6 = (*(*v5 + 96))(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(this[3], *(this + 18));
  if (v7)
  {
    v8 = (*(*v7 + 96))(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = *pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(this[3], *(this + 16));
  if (v9)
  {
    v10 = (*(*v9 + 96))(v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = *pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(this[3], *(this + 4));
  if (v11)
  {
    v12 = (*(*v11 + 96))(v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = *pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(this[3], *(this + 17));
  if (v13)
  {
    v14 = (*(*v13 + 96))(v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = *pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(this[3], *(this + 15));
  if (v15)
  {
    v16 = (*(*v15 + 96))(v15);
  }

  else
  {
    v16 = 0;
  }

  v17 = this[7];
  if (v17)
  {
    v18 = (*(*v17 + 72))(v17);
    v17 = *v18;
    v19 = v18[1];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v17)
    {
      v17 = (*(*v17 + 96))(v17);
    }

    v20 = v3;
  }

  else
  {
    v20 = v3;
    v19 = 0;
  }

  v21 = v36 + ((v36 + v20 + (v36 + v20) * (v36 + v20)) >> 1) + v6;
  v22 = v6 + ((v21 + v21 * v21) >> 1) + v8;
  v23 = v8 + ((v22 + v22 * v22) >> 1) + v10;
  v24 = v10 + ((v23 + v23 * v23) >> 1) + v12;
  v25 = v12 + ((v24 + v24 * v24) >> 1) + v14;
  v26 = v14 + ((v25 + v25 * v25) >> 1) + v16;
  v27 = v16 + ((v26 + v26 * v26) >> 1) + v17;
  v28 = bswap64(0x9E3779B97F4A7C55 * (v17 + ((v27 + v27 * v27) >> 1)));
  if (v19)
  {
    sub_29A014BEC(v19);
  }

  v29 = sub_29ADC9478(this);
  if (v29 >= 1)
  {
    v30 = v29;
    for (i = 0; i != v30; ++i)
    {
      v32 = this[3];
      v33 = sub_29ADCA7A8((this + 1), i);
      v34 = *pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(v32, v33);
      if (v34)
      {
        v34 = (*(*v34 + 96))(v34);
      }

      v28 = bswap64(0x9E3779B97F4A7C55 * (v34 + ((v34 + v28 + (v34 + v28) * (v34 + v28)) >> 1)));
    }
  }

  return v28;
}

void sub_29AE4808C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t pxrInternal__aapl__pxrReserved__::HdStDrawItem::GetElementOffsetsHash(pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer **this)
{
  v2 = *pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(this[3], *(this + 12));
  if (v2)
  {
    v3 = (*(*v2 + 72))(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(this[3], *(this + 14));
  if (v4)
  {
    v40 = (*(*v4 + 72))(v4);
  }

  else
  {
    v40 = 0;
  }

  v5 = *pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(this[3], *(this + 13));
  if (v5)
  {
    v6 = (*(*v5 + 72))(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(this[3], *(this + 18));
  if (v7)
  {
    v8 = (*(*v7 + 72))(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = *pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(this[3], *(this + 16));
  if (v9)
  {
    v10 = (*(*v9 + 72))(v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = *pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(this[3], *(this + 4));
  if (v11)
  {
    v12 = (*(*v11 + 72))(v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = *pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(this[3], *(this + 17));
  if (v13)
  {
    v14 = (*(*v13 + 72))(v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = *pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(this[3], *(this + 15));
  if (v15)
  {
    v16 = (*(*v15 + 72))(v15);
  }

  else
  {
    v16 = 0;
  }

  v17 = this[7];
  if (v17)
  {
    v18 = (*(*v17 + 72))(v17);
    v19 = *v18;
    v20 = v18[1];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v19)
    {
      v21 = (*(*v19 + 72))(v19);
      v22 = v3;
      v23 = v21;
      goto LABEL_33;
    }

    v22 = v3;
  }

  else
  {
    v22 = v3;
    v20 = 0;
  }

  v23 = 0;
LABEL_33:
  v24 = v40 + ((v40 + v22 + (v40 + v22) * (v40 + v22)) >> 1) + v6;
  v25 = v6 + ((v24 + v24 * v24) >> 1) + v8;
  v26 = v8 + ((v25 + v25 * v25) >> 1) + v10;
  v27 = v10 + ((v26 + v26 * v26) >> 1) + v12;
  v28 = v12 + ((v27 + v27 * v27) >> 1) + v14;
  v29 = v14 + ((v28 + v28 * v28) >> 1) + v16;
  v30 = v16 + ((v29 + v29 * v29) >> 1) + v23;
  v31 = bswap64(0x9E3779B97F4A7C55 * (v23 + ((v30 + v30 * v30) >> 1)));
  if (v20)
  {
    sub_29A014BEC(v20);
  }

  v32 = sub_29ADC9478(this);
  if (v32 >= 1)
  {
    v33 = v32;
    for (i = 0; i != v33; ++i)
    {
      v35 = this[3];
      v36 = sub_29ADCA7A8((this + 1), i);
      v37 = *pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(v35, v36);
      if (v37)
      {
        v38 = (*(*v37 + 72))(v37);
      }

      else
      {
        v38 = 0;
      }

      v31 = bswap64(0x9E3779B97F4A7C55 * (v38 + ((v38 + v31 + (v38 + v31) * (v38 + v31)) >> 1)));
    }
  }

  return v31;
}

void sub_29AE484BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL pxrInternal__aapl__pxrReserved__::HdStDrawItem::IntersectsViewVolume(pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer **this, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a2)
{
  if (*pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(this[3], *(this + 15)))
  {
    return 1;
  }

  v6 = (this[3] + 24);

  return pxrInternal__aapl__pxrReserved__::GfFrustum::IntersectsViewVolume(v6, a2, v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance::HdStDrawItemInstance(uint64_t this, const pxrInternal__aapl__pxrReserved__::HdStDrawItem *a2)
{
  *this = 0;
  *(this + 8) = a2;
  *(this + 16) = 0;
  *(this + 24) = *(*(a2 + 3) + 340);
  return this;
}

{
  *this = 0;
  *(this + 8) = a2;
  *(this + 16) = 0;
  *(this + 24) = *(*(a2 + 3) + 340);
  return this;
}

_BYTE *pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance::SetVisible(_BYTE *this, int a2)
{
  if (this[24] != a2)
  {
    v2 = this;
    this[24] = a2;
    this = *this;
    if (this)
    {
      return (*(*this + 48))(this, v2);
    }
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens_StaticTokenType::~HdStDrawTargetTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens_StaticTokenType *this)
{
  v7 = (this + 48);
  sub_29A124AB0(&v7);
  v2 = *(this + 5);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 4);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 3);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 2);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 1);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens_StaticTokenType::HdStDrawTargetTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens_StaticTokenType *this)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "camera", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "collection", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "enable", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "resolution", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "aovBindings", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "depthPriority", 0);
  v3 = (this + 48);
  v4 = *this;
  v19 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v5;
    }
  }

  v6 = *(this + 1);
  v20 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v7;
    }
  }

  v8 = *(this + 2);
  v21 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v9;
    }
  }

  v10 = *(this + 3);
  v22 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v11;
    }
  }

  v12 = *(this + 4);
  v23 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v13;
    }
  }

  v14 = *(this + 5);
  v24 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v15;
    }
  }

  *v3 = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  sub_29A12EF7C(v3, &v19, &v25, 6uLL);
  for (i = 40; i != -8; i -= 8)
  {
    v17 = *(&v19 + i);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AE48884(_Unwind_Exception *a1)
{
  v3 = 40;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[5];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[4];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[3];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[2];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[1];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

pxrInternal__aapl__pxrReserved__::HdStDrawTarget *pxrInternal__aapl__pxrReserved__::HdStDrawTarget::HdStDrawTarget(pxrInternal__aapl__pxrReserved__::HdStDrawTarget *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::HdSprim::HdSprim(this, a2);
  *v3 = &unk_2A2097120;
  *(v3 + 16) = 1;
  *(v3 + 20) = 0x20000000200;
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection((v3 + 32));
  pxrInternal__aapl__pxrReserved__::HdStDrawTargetRenderPassState::HdStDrawTargetRenderPassState((this + 136));
  return this;
}

void sub_29AE489BC(_Unwind_Exception *a1)
{
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection((v1 + 32));
  pxrInternal__aapl__pxrReserved__::HdSprim::~HdSprim(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStDrawTarget::~HdStDrawTarget(pxrInternal__aapl__pxrReserved__::HdStDrawTarget *this)
{
  *this = &unk_2A2097120;
  v2 = (this + 32);
  pxrInternal__aapl__pxrReserved__::HdStDrawTargetRenderPassState::~HdStDrawTargetRenderPassState((this + 136));
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection(v2);

  pxrInternal__aapl__pxrReserved__::HdSprim::~HdSprim(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdStDrawTarget::~HdStDrawTarget(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStDrawTarget::Sync(pxrInternal__aapl__pxrReserved__::HdStDrawTarget *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, unsigned int *a4)
{
  v35[2] = *MEMORY[0x29EDCA608];
  result = sub_29A0ECEEC(&v21, "hdSt", "virtual void pxrInternal__aapl__pxrReserved__::HdStDrawTarget::Sync(HdSceneDelegate *, HdRenderParam *, HdDirtyBits *)");
  if (a2 || (v23 = "hdSt/drawTarget.cpp", v24 = "Sync", v25 = 37, v26 = "virtual void pxrInternal__aapl__pxrReserved__::HdStDrawTarget::Sync(HdSceneDelegate *, HdRenderParam *, HdDirtyBits *)", LOBYTE(v27) = 0, result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v23, "sceneDelegate != nullptr", 0), (result & 1) != 0))
  {
    v9 = *a4;
    if (*a4)
    {
      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens);
      if (!v10)
      {
        v10 = sub_29AE49338(&pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens);
      }

      (*(*a2 + 120))(&v23, a2, this + 8, v10 + 16);
      if (sub_29A1EFCDC(&v23))
      {
        if ((v24 & 4) != 0)
        {
          v11 = *(*((v24 & 0xFFFFFFFFFFFFFFF8) + 168))(&v23);
        }

        else
        {
          v11 = v23;
        }
      }

      else
      {
        v11 = 1;
      }

      *(this + 16) = v11 & 1;
      pxrInternal__aapl__pxrReserved__::HdStRenderParam::MarkActiveDrawTargetSetDirty(a3);
      result = sub_29A186B14(&v23);
    }

    if ((v9 & 2) != 0)
    {
      if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens))
      {
        sub_29AE49338(&pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens);
      }

      (*(*a2 + 120))(&v23, a2, this + 8);
      v13 = sub_29A1F5A34(&v23);
      pxrInternal__aapl__pxrReserved__::HdStDrawTargetRenderPassState::SetCamera((this + 136), v13);
      result = sub_29A186B14(&v23);
    }

    if ((v9 & 4) != 0)
    {
      v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens);
      if (!v14)
      {
        v14 = sub_29AE49338(&pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens);
      }

      (*(*a2 + 120))(&v23, a2, this + 8, v14 + 24);
      *(this + 20) = *sub_29AE49014(&v23);
      result = sub_29A186B14(&v23);
    }

    if ((v9 & 0x10) != 0)
    {
      v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens);
      if (!v15)
      {
        v15 = sub_29AE49338(&pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens);
      }

      (*(*a2 + 120))(v35, a2, this + 8, v15 + 32);
      memset(v34, 0, sizeof(v34));
      sub_29AE490A8(v35, &v23);
    }

    if ((v9 & 0x40) != 0)
    {
      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens);
      if (!v16)
      {
        v16 = sub_29AE49338(&pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens);
      }

      (*(*a2 + 120))(&v23, a2, this + 8, v16 + 40);
      if (sub_29AE49450(&v23))
      {
        if ((v24 & 4) != 0)
        {
          v17 = *(*((v24 & 0xFFFFFFFFFFFFFFF8) + 168))(&v23);
        }

        else
        {
          v17 = v23;
        }
      }

      else
      {
        v17 = 0;
      }

      pxrInternal__aapl__pxrReserved__::HdStDrawTargetRenderPassState::SetDepthPriority(this + 136, v17);
      result = sub_29A186B14(&v23);
    }

    if ((v9 & 0x80) != 0)
    {
      v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens);
      if (!v18)
      {
        v18 = sub_29AE49338(&pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens);
      }

      (*(*a2 + 120))(v34, a2, this + 8, v18 + 8);
      v19 = sub_29AE49138(v34);
      pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection(&v23, v19);
      v20 = *(a2 + 1);
      if ((v24 ^ *(this + 5)) >= 8)
      {
        pxrInternal__aapl__pxrReserved__::HdChangeTracker::AddCollection((v20 + 440), &v24);
      }

      pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkCollectionDirty((v20 + 440), &v24);
      pxrInternal__aapl__pxrReserved__::HdStDrawTargetRenderPassState::SetRprimCollection((this + 136), &v23);
      sub_29A166F2C(this + 5, &v24);
      sub_29A166F2C(this + 6, &v25);
      sub_29A166F2C(this + 7, &v26);
      sub_29A166F2C(this + 8, &v27);
      *(this + 72) = v28;
      sub_29A166F2C(this + 10, &v29);
      if ((this + 32) != &v23)
      {
        sub_29A324D54(this + 88, v30, v31, (v31 - v30) >> 3);
        sub_29A324D54(this + 112, v32, v33, (v33 - v32) >> 3);
      }

      pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection(&v23);
      result = sub_29A186B14(v34);
    }

    *a4 = 0;
  }

  if (v21)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v22, v21);
  }

  return result;
}

void **sub_29AE49014(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FCE54(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfVec2i>::Invoke, &stru_2A2040978);
  }
}

void sub_29AE490A8(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, void *a2@<X8>)
{
  if (sub_29AE493C4(a1))
  {
    v4 = *(a1 + 1);
    if ((v4 & 4) != 0)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;

  std::vector<pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding*,pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding*>();
}

void **sub_29AE49138(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29AC0660C(a1))
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
  }
}

pxrInternal__aapl__pxrReserved__::SdfPath *pxrInternal__aapl__pxrReserved__::HdStDrawTarget::GetDrawTargets(uint64_t a1)
{
  sub_29A0ECEEC(&v6, "hdSt", "static void pxrInternal__aapl__pxrReserved__::HdStDrawTarget::GetDrawTargets(HdRenderIndex *const, HdStDrawTargetPtrVector *const)");
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v2)
  {
    v2 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  result = pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsSprimTypeSupported(a1, v2 + 18);
  if (result)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
    {
      result = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(result);
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetSprimSubtree(&v5);
  }

  if (v6)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  return result;
}

void sub_29AE492FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens_StaticTokenType *sub_29AE49338(atomic_ullong *a1)
{
  result = sub_29AE49380();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens_StaticTokenType::~HdStDrawTargetTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens_StaticTokenType *sub_29AE49380()
{
  v0 = operator new(0x48uLL);
  pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens_StaticTokenType::HdStDrawTargetTokens_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29AE493C4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B71378CLL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2097160);
}

uint64_t sub_29AE49450(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B70F10DLL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2097170);
}

uint64_t sub_29AE494E0@<X0>(uint64_t a1@<X8>)
{
  sub_29AE49534(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 8) = v2;
  v4[0] = 0;
  return (v2)(0);
}

uint64_t sub_29AE49534@<X0>(pxrInternal__aapl__pxrReserved__::HdRprimCollection **a1@<X8>)
{
  v2 = operator new(0x68uLL);
  result = pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection(v2);
  *a1 = v2;
  a1[1] = sub_29AE49588;
  return result;
}

uint64_t sub_29AE49588(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdStDrawTargetRenderPassState *pxrInternal__aapl__pxrReserved__::HdStDrawTargetRenderPassState::HdStDrawTargetRenderPassState(pxrInternal__aapl__pxrReserved__::HdStDrawTargetRenderPassState *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 0;
  v2 = (this + 32);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 7);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v2);
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection((this + 40));
  *(this + 36) = 1;
  return this;
}

void sub_29AE49618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_29A1DCEA8((v10 + 28));
  a10 = v10;
  sub_29AC943DC(&a10);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStDrawTargetRenderPassState::~HdStDrawTargetRenderPassState(pxrInternal__aapl__pxrReserved__::HdStDrawTargetRenderPassState *this)
{
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection((this + 40));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 8);
  sub_29A1DE3A4(this + 7);
  v2 = this;
  sub_29AC943DC(&v2);
}

int *pxrInternal__aapl__pxrReserved__::HdStDrawTargetRenderPassState::SetCamera(pxrInternal__aapl__pxrReserved__::HdStDrawTargetRenderPassState *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29A2258F0(this + 7, a2);

  return sub_29A225948(this + 8, a2 + 1);
}

void *pxrInternal__aapl__pxrReserved__::HdStDrawTargetRenderPassState::SetRprimCollection(pxrInternal__aapl__pxrReserved__::HdStDrawTargetRenderPassState *this, const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a2)
{
  v4 = (this + 40);
  sub_29A166F2C(this + 6, a2 + 1);
  sub_29A166F2C(this + 7, a2 + 2);
  sub_29A166F2C(this + 8, a2 + 3);
  sub_29A166F2C(this + 9, a2 + 4);
  *(this + 80) = *(a2 + 40);
  result = sub_29A166F2C(this + 11, a2 + 6);
  if (v4 != a2)
  {
    sub_29A324D54(this + 96, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 3);
    result = sub_29A324D54(this + 120, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 3);
  }

  ++*(this + 36);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStDrawTargetRenderPassState::SetAovBindings(uint64_t result, uint64_t *a2)
{
  if (result != a2)
  {
    return sub_29AC944C0(result, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 4));
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStDynamicUvTextureObject::HdStDynamicUvTextureObject(pxrInternal__aapl__pxrReserved__::HdStDynamicUvTextureObject *this, const pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *a2, pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry *a3)
{
  pxrInternal__aapl__pxrReserved__::HdStUvTextureObject::HdStUvTextureObject(this, a2, a3);
  *v3 = &unk_2A2097190;
}

{
  pxrInternal__aapl__pxrReserved__::HdStUvTextureObject::HdStUvTextureObject(this, a2, a3);
  *v3 = &unk_2A2097190;
}

void pxrInternal__aapl__pxrReserved__::HdStDynamicUvTextureObject::~HdStDynamicUvTextureObject(atomic_ullong **this)
{
  pxrInternal__aapl__pxrReserved__::HdStUvTextureObject::_DestroyTexture(this);

  pxrInternal__aapl__pxrReserved__::HdStUvTextureObject::~HdStUvTextureObject(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdStDynamicUvTextureObject::~HdStDynamicUvTextureObject(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStDynamicUvTextureObject::_GetImpl(pxrInternal__aapl__pxrReserved__::HdStDynamicUvTextureObject *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    if (v2)
    {
      return (*(*v2 + 32))(v2);
    }
  }

  v5 = sub_29B2CA044(v6);
  v2 = 0;
  v3 = 0;
  if (v5)
  {
    return (*(*v2 + 32))(v2);
  }

  return v3;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStDynamicUvTextureObject::IsValid(pxrInternal__aapl__pxrReserved__::HdStDynamicUvTextureObject *this)
{
  Impl = pxrInternal__aapl__pxrReserved__::HdStDynamicUvTextureObject::_GetImpl(this);
  if (!Impl)
  {
    return 1;
  }

  v2 = *(*Impl + 16);

  return v2();
}

uint64_t (***pxrInternal__aapl__pxrReserved__::HdStDynamicUvTextureObject::_Load(pxrInternal__aapl__pxrReserved__::HdStDynamicUvTextureObject *this))(void)
{
  result = pxrInternal__aapl__pxrReserved__::HdStDynamicUvTextureObject::_GetImpl(this);
  if (result)
  {
    v2 = **result;

    return v2();
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStDynamicUvTextureObject::_Commit(pxrInternal__aapl__pxrReserved__::HdStDynamicUvTextureObject *this)
{
  result = pxrInternal__aapl__pxrReserved__::HdStDynamicUvTextureObject::_GetImpl(this);
  if (result)
  {
    v2 = *(*result + 8);

    return v2();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStExtComputation::HdStExtComputation(pxrInternal__aapl__pxrReserved__::HdStExtComputation *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  pxrInternal__aapl__pxrReserved__::HdExtComputation::HdExtComputation(this, a2);
  *v2 = &unk_2A20971E8;
  v2[16] = 0;
  v2[17] = 0;
}

{
  pxrInternal__aapl__pxrReserved__::HdExtComputation::HdExtComputation(this, a2);
  *v2 = &unk_2A20971E8;
  v2[16] = 0;
  v2[17] = 0;
}

void pxrInternal__aapl__pxrReserved__::HdStExtComputation::~HdStExtComputation(pxrInternal__aapl__pxrReserved__::HdStExtComputation *this)
{
  *this = &unk_2A20971E8;
  v2 = *(this + 17);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdExtComputation::~HdExtComputation(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdStExtComputation::~HdStExtComputation(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdStExtComputation::Sync(pxrInternal__aapl__pxrReserved__::HdStExtComputation *this, pxrInternal__aapl__pxrReserved__::HdRenderIndex **a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, unsigned int *a4)
{
  v77 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v73, "hdSt", "virtual void pxrInternal__aapl__pxrReserved__::HdStExtComputation::Sync(HdSceneDelegate *, HdRenderParam *, HdDirtyBits *)");
  pxrInternal__aapl__pxrReserved__::HdExtComputation::_Sync(this, a2, a3, a4);
  if (sub_29ABCF8C0(14))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 8));
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("HdStExtComputation::Sync for %s (dirty bits = 0x%x)\n", v9, v10, Text, *a4);
  }

  if ((*(this + 127) & 0x8000000000000000) != 0)
  {
    if (!*(this + 14))
    {
      goto LABEL_7;
    }
  }

  else if (!*(this + 127))
  {
LABEL_7:
    if (!pxrInternal__aapl__pxrReserved__::HdExtComputation::IsInputAggregation(this))
    {
      goto LABEL_83;
    }
  }

  if ((*a4 & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(lpsrc, a2[1]);
    {
      v12 = v11;
      v71 = v11;
      v72 = lpsrc[1];
      if (lpsrc[1])
      {
        v58 = lpsrc[1];
        atomic_fetch_add_explicit(lpsrc[1] + 1, 1uLL, memory_order_relaxed);
      }

      else
      {
        v58 = 0;
      }
    }

    else
    {
      v58 = 0;
      v12 = 0;
      v71 = 0;
      v72 = 0;
    }

    if (lpsrc[1])
    {
      sub_29A014BEC(lpsrc[1]);
    }

    v56 = a3;
    v57 = a4;
    Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v12);
    v14 = (*(*Hgi + 200))(Hgi);
    v70 = *(v14 + 49) & 1;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v15 = *(this + 4);
    for (i = *(this + 5); v15 != i; v15 = (v15 + 8))
    {
      (*(*a2 + 47))(&v75, a2, this + 8, v15);
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsArrayValued(&v75))
      {
        NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(&v75);
      }

      else
      {
        NumElements = 1;
      }

      v66 = NumElements;
      sub_29AE4A434(v15, &v75, &v66, &v70, lpsrc);
      v65 = *lpsrc;
      if (pxrInternal__aapl__pxrReserved__::HdBufferSource::IsValid(lpsrc[0]))
      {
        sub_29A017F80(&v67, &v65);
      }

      else
      {
        lpsrc[0] = "hdSt/extComputation.cpp";
        lpsrc[1] = "Sync";
        v60 = 127;
        v61 = "virtual void pxrInternal__aapl__pxrReserved__::HdStExtComputation::Sync(HdSceneDelegate *, HdRenderParam *, HdDirtyBits *)";
        v62 = 0;
        Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v75, v18);
        TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&Type);
        if (*(TypeName + 23) >= 0)
        {
          v20 = TypeName;
        }

        else
        {
          v20 = *TypeName;
        }

        v21 = *v15 & 0xFFFFFFFFFFFFFFF8;
        if (v21)
        {
          v22 = (v21 + 16);
          if (*(v21 + 39) < 0)
          {
            v22 = *v22;
          }
        }

        else
        {
          v22 = "";
        }

        v23 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 8));
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(lpsrc, "Unsupported type %s for source %s in extComputation %s.", v24, v20, v22, v23);
      }

      if (*(&v65 + 1))
      {
        sub_29A014BEC(*(&v65 + 1));
      }

      v14 = sub_29A186B14(&v75);
    }

    v27 = *(this + 16);
    v25 = *(this + 17);
    v26 = (this + 128);
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v67 != v68)
    {
      if (pxrInternal__aapl__pxrReserved__::HdExtComputation::_IsEnabledSharedExtComputationData(v14) && pxrInternal__aapl__pxrReserved__::HdExtComputation::IsInputAggregation(this))
      {
        v28 = v67;
        v29 = v68;
        if (v67 == v68)
        {
          v30 = 0;
        }

        else
        {
          v30 = 0;
          do
          {
            *&v75 = (*(**v28 + 32))();
            v30 = pxrInternal__aapl__pxrReserved__::ArchHash64(&v75, 8, v30);
            v28 += 16;
          }

          while (v28 != v29);
        }

        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterExtComputationDataRange(v12, v30, lpsrc);
        if (v63 == 1)
        {
          sub_29AE4A358(&v67, &v71, &v75);
          v45 = v75;
          v75 = 0uLL;
          v46 = *(this + 17);
          *(this + 8) = v45;
          if (v46)
          {
            sub_29A014BEC(v46);
            if (*(&v75 + 1))
            {
              sub_29A014BEC(*(&v75 + 1));
            }
          }

          sub_29AE227C0(lpsrc, this + 16);
          if (sub_29ABCF8C0(29))
          {
            v47 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 8));
            pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Allocated shared ExtComputation buffer range: %s: %p\n", v48, v49, v47, *v26);
          }
        }

        else
        {
          v51 = lpsrc[1];
          v50 = v60;
          if (v60)
          {
            atomic_fetch_add_explicit((v60 + 8), 1uLL, memory_order_relaxed);
          }

          v52 = *(this + 17);
          *(this + 16) = v51;
          *(this + 17) = v50;
          if (v52)
          {
            sub_29A014BEC(v52);
          }

          if (sub_29ABCF8C0(29))
          {
            v53 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 8));
            pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Reused shared ExtComputation buffer range: %s: %p\n", v54, v55, v53, *v26);
          }
        }

        if (v62 == 1)
        {
          std::mutex::unlock(v61);
        }

        if (v60)
        {
          sub_29A014BEC(v60);
        }
      }

      else if (*v26 && ((*(**v26 + 16))(*v26) & 1) != 0)
      {
        lpsrc[0] = 0;
        lpsrc[1] = 0;
        v60 = 0;
        sub_29AE22748(&v67, lpsrc);
        v75 = 0uLL;
        v76 = 0;
        (*(**v26 + 144))(*v26, &v75);
        if (pxrInternal__aapl__pxrReserved__::HdBufferSpec::IsSubset(lpsrc, &v75))
        {
          pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(v12, this + 16, &v67);
          if (sub_29ABCF8C0(29))
          {
            v31 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 8));
            pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Reused unshared ExtComputation buffer range: %s: %p\n", v32, v33, v31, *v26);
          }
        }

        else
        {
          sub_29AE4A358(&v67, &v71, &v65);
          v40 = v65;
          v65 = 0uLL;
          v41 = *(this + 17);
          *(this + 8) = v40;
          if (v41)
          {
            sub_29A014BEC(v41);
            if (*(&v65 + 1))
            {
              sub_29A014BEC(*(&v65 + 1));
            }
          }

          if (sub_29ABCF8C0(29))
          {
            v42 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 8));
            pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Couldn't reuse existing unshared range. Allocated a new one.%s: %p\n", v43, v44, v42, *v26);
          }
        }

        *&v65 = &v75;
        sub_29ABC6FA0(&v65);
        *&v75 = lpsrc;
        sub_29ABC6FA0(&v75);
      }

      else
      {
        sub_29AE4A358(&v67, &v71, lpsrc);
        v34 = *lpsrc;
        lpsrc[0] = 0;
        lpsrc[1] = 0;
        v35 = *(this + 17);
        *(this + 8) = v34;
        if (v35)
        {
          sub_29A014BEC(v35);
          if (lpsrc[1])
          {
            sub_29A014BEC(lpsrc[1]);
          }
        }

        if (sub_29ABCF8C0(29))
        {
          v37 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 8));
          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Allocated unshared ExtComputation buffer range: %s: %p\n", v38, v39, v37, *v26);
        }
      }

      if (v27 && v27 != *v26)
      {
        pxrInternal__aapl__pxrReserved__::HdStMarkGarbageCollectionNeeded(v56, v36);
      }
    }

    *v57 &= ~8u;
    if (v25)
    {
      sub_29A014BEC(v25);
    }

    lpsrc[0] = &v67;
    sub_29A0176E4(lpsrc);
    if (v58)
    {
      sub_29A014BEC(v58);
    }
  }

LABEL_83:
  if (v73)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v74, v73);
  }
}

void sub_29AE4A248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  a25 = (v30 - 128);
  sub_29ABC6FA0(&a25);
  *(v30 - 128) = &a17;
  sub_29ABC6FA0((v30 - 128));
  if (v29)
  {
    sub_29A014BEC(v29);
  }

  a17 = &a29;
  sub_29A0176E4(&a17);
  if (a16)
  {
    sub_29A014BEC(a16);
  }

  sub_29A0E9CEC(v30 - 144);
  _Unwind_Resume(a1);
}

void sub_29AE4A358(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  memset(v8, 0, sizeof(v8));
  sub_29AE22748(a1, v8);
  v6 = *a2;
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v7)
  {
    v7 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateShaderStorageBufferArrayRange(v6, v7 + 304, v8, 8u, a3);
  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(*a2, a3, a1);
  v9 = v8;
  sub_29ABC6FA0(&v9);
}

void sub_29AE4A3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  a12 = &a9;
  sub_29ABC6FA0(&a12);
  _Unwind_Resume(a1);
}

void *sub_29AE4A434@<X0>(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X2>, int *a3@<X3>, BOOL *a4@<X4>, void *a5@<X8>)
{
  v10 = operator new(0x58uLL);
  result = sub_29AE4A4B0(v10, a1, a2, a3, a4);
  *a5 = v10 + 3;
  a5[1] = v10;
  return result;
}

void *sub_29AE4A4B0(void *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3, int *a4, BOOL *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20928E0;
  pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource((a1 + 3), a2, a3, *a4, *a5);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdStExtCompCpuComputation::HdStExtCompCpuComputation(uint64_t a1, _DWORD *a2, void **a3)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2A2097238;
  sub_29A1E21F4((a1 + 12), a2);
  sub_29A1E2240((a1 + 16), a2 + 1);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_29AE4ADA4((a1 + 24), *a3, a3[1], (a3[1] - *a3) >> 4);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29AE4A5E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0176E4(va);
  sub_29A1DCEA8(v2 + 3);
  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(v2);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStExtCompCpuComputation::~HdStExtCompCpuComputation(pxrInternal__aapl__pxrReserved__::HdStExtCompCpuComputation *this)
{
  v2 = (this + 88);
  sub_29A1D0D38(&v2);
  v2 = (this + 48);
  sub_29A124AB0(&v2);
  v2 = (this + 24);
  sub_29A0176E4(&v2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 4);
  sub_29A1DE3A4(this + 3);
  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdStExtCompCpuComputation::~HdStExtCompCpuComputation(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdStExtCompCpuComputation::CreateComputation(void *a1, uint64_t a2, void **a3)
{
  v14[3] = *MEMORY[0x29EDCA608];
  v13[3] = a1;
  v5 = a1[1];
  memset(v13, 0, 24);
  v6 = *(a2 + 32);
  for (i = *(a2 + 40); v6 != i; v6 = (v6 + 8))
  {
    (*(*a1 + 376))(v14, a1, a2 + 8, v6);
    sub_29AE4AEEC(v6, v14, &v11);
    v12 = v11;
    if (*(&v11 + 1))
    {
      atomic_fetch_add_explicit((*(&v11 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    sub_29A01729C(a3, &v11);
    if (*(&v11 + 1))
    {
      sub_29A014BEC(*(&v11 + 1));
    }

    sub_29A017F80(v13, &v12);
    if (*(&v12 + 1))
    {
      sub_29A014BEC(*(&v12 + 1));
    }

    sub_29A186B14(v14);
  }

  v9 = *(a2 + 56);
  if (v9 != *(a2 + 64))
  {
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v10)
    {
      v10 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetSprim(v5, (v10 + 304), (v9 + 8));
  }

  pxrInternal__aapl__pxrReserved__::HdExtComputation::GetOutputNames(a2, v14);
  *&v12 = *(a2 + 24);
  sub_29AE4B15C(&v11, (a2 + 8), v13);
}

void sub_29AE4AA04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_29A014BEC(a20);
  }

  v22 = *(v20 + 8);
  if (v22)
  {
    sub_29A014BEC(v22);
  }

  a19 = &a14;
  sub_29A0176E4(&a19);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStExtCompCpuComputation::Resolve(pxrInternal__aapl__pxrReserved__::HdStExtCompCpuComputation *this)
{
  v2 = *(this + 4) - *(this + 3);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = v2 >> 4;
    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    v7 = v6;
    do
    {
      if (pxrInternal__aapl__pxrReserved__::HdBufferSource::IsValid(*(*(this + 3) + v3)))
      {
        v8 = atomic_load((*(*(this + 3) + v3) + 8));
        if (v8 < 2)
        {
          return 0;
        }

        v9 = atomic_load((*(*(this + 3) + v3) + 8));
        v4 |= v9 == 3;
      }

      else
      {
        v4 = 1;
      }

      v3 += 16;
      --v7;
    }

    while (v7);
    v10 = 0;
    atomic_compare_exchange_strong(this + 2, &v10, 1u);
    if (!v10)
    {
      if ((v4 & 1) == 0)
      {
        pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::HdExtComputationContextInternal(v21);
        v12 = *(this + 3);
        Name = pxrInternal__aapl__pxrReserved__::HdSt_ExtCompInputSource::GetName(*v12);
        v14 = (*(**v12 + 112))(*v12);
        pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::SetInputValue(v21, Name, v14);
      }

      sub_29ADCDBFC(this);
      return 1;
    }

    return 0;
  }

  atomic_compare_exchange_strong(this + 2, &v2, 1u);
  if (v2)
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::HdExtComputationContextInternal(v21);
  (*(**(this + 10) + 408))(*(this + 10), this + 12, v21);
  if (pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::HasComputationError(v21))
  {
    goto LABEL_25;
  }

  v17 = *(this + 6);
  v16 = *(this + 7);
  v18 = (v16 - v17) >> 3;
  sub_29A1D1958(this + 11, v18);
  if (v16 != v17)
  {
    v19 = 0;
    v20 = 0;
    if (v18 <= 1)
    {
      v18 = 1;
    }

    while (pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::GetOutputValue(v21, (*(this + 6) + v20), (*(this + 11) + v19)))
    {
      v20 += 8;
      v19 += 16;
      if (!--v18)
      {
        goto LABEL_24;
      }
    }

LABEL_25:
    sub_29ADCDBFC(this);
    goto LABEL_26;
  }

LABEL_24:
  sub_29AD1019C(this);
LABEL_26:
  pxrInternal__aapl__pxrReserved__::HdExtComputationContextInternal::~HdExtComputationContextInternal(v21);
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStExtCompCpuComputation::GetOutputIndex(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56) - v2;
  if (!v3)
  {
    return -1;
  }

  result = 0;
  v5 = v3 >> 3;
  if ((v3 >> 3) <= 1)
  {
    v5 = 1;
  }

  while ((*(v2 + 8 * result) ^ *a2) >= 8)
  {
    if (v5 == ++result)
    {
      return -1;
    }
  }

  return result;
}

void *sub_29AE4ADA4(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A0D0518(result, a4);
    result = sub_29AE4AE2C(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AE4AE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

void *sub_29AE4AE2C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_29AE4AEB4(v7);
  return v4;
}

uint64_t sub_29AE4AEB4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A14D2C0(a1);
  }

  return a1;
}

void *sub_29AE4AEEC@<X0>(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  result = sub_29AE4AF50(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29AE4AF50(void *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20972D0;
  pxrInternal__aapl__pxrReserved__::HdSt_ExtCompSceneInputSource::HdSt_ExtCompSceneInputSource((a1 + 3), a2, a3);
  return a1;
}

void sub_29AE4AFCC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20972D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29AE4B01C@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x48uLL);
  result = sub_29AE4B090(v2);
  *a1 = v2 + 3;
  a1[1] = v2;
  return result;
}

void *sub_29AE4B090(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2097320;
  pxrInternal__aapl__pxrReserved__::HdSt_ExtCompComputedInputSource::HdSt_ExtCompComputedInputSource(a1 + 3);
  return a1;
}

void sub_29AE4B10C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2097320;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE4B1E8(void *a1, _DWORD *a2, void **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2097370;
  pxrInternal__aapl__pxrReserved__::HdStExtCompCpuComputation::HdStExtCompCpuComputation((a1 + 3), a2, a3);
}

void sub_29AE4B26C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2097370;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

__n128 *pxrInternal__aapl__pxrReserved__::HdStExtCompGpuComputation::HdStExtCompGpuComputation(__n128 *a1, _DWORD *a2, unint64_t *a3, __n128 **a4, unsigned __int32 a5, unsigned __int32 a6)
{
  a1->n128_u64[0] = &unk_2A20973C0;
  sub_29A1E21F4(&a1->n128_u32[2], a2);
  sub_29A1E2240(&a1->n128_u32[3], a2 + 1);
  v12 = a3[1];
  a1[1].n128_u64[0] = *a3;
  a1[1].n128_u64[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  a1[2].n128_u64[0] = 0;
  a1[2].n128_u64[1] = 0;
  a1[3].n128_u64[0] = 0;
  sub_29ACCD7C0(a1 + 2, *a4, a4[1], (a4[1] - *a4) >> 6);
  a1[3].n128_u32[2] = a5;
  a1[3].n128_u32[3] = a6;
  return a1;
}

void sub_29AE4B368(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29A1DCEA8((v1 + 8));
  pxrInternal__aapl__pxrReserved__::HdStComputation::~HdStComputation(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStExtCompGpuComputation::~HdStExtCompGpuComputation(pxrInternal__aapl__pxrReserved__::HdStExtCompGpuComputation *this)
{
  v3 = (this + 32);
  sub_29ABF15A8(&v3);
  v2 = *(this + 3);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 3);
  sub_29A1DE3A4(this + 2);
  pxrInternal__aapl__pxrReserved__::HdStComputation::~HdStComputation(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdStExtCompGpuComputation::~HdStExtCompGpuComputation(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdStExtCompGpuComputation::Execute(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *a3)
{
  sub_29A0ECEEC(&v109, "hdSt", "virtual void pxrInternal__aapl__pxrReserved__::HdStExtCompGpuComputation::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *)");
  if (!*a2)
  {
    __p.__r_.__value_.__r.__words[0] = "hdSt/extCompGpuComputation.cpp";
    __p.__r_.__value_.__l.__size_ = "Execute";
    __p.__r_.__value_.__r.__words[2] = 104;
    *&v91 = "virtual void pxrInternal__aapl__pxrReserved__::HdStExtCompGpuComputation::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *)";
    BYTE8(v91) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "outputRange", 0);
  }

  if (!a3)
  {
    __p.__r_.__value_.__r.__words[0] = "hdSt/extCompGpuComputation.cpp";
    __p.__r_.__value_.__l.__size_ = "Execute";
    __p.__r_.__value_.__r.__words[2] = 105;
    *&v91 = "virtual void pxrInternal__aapl__pxrReserved__::HdStExtCompGpuComputation::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *)";
    BYTE8(v91) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "resourceRegistry", 0);
  }

  if (sub_29ABCF8C0(14))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 8));
    sub_29AE4C16C((a1 + 32), &__p);
    v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("GPU computation '%s' executed for primvars: %s\n", v9, v10, Text, v11);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v12 = *(a1 + 16);
  if (*(v12 + 96))
  {
    v13 = v12 + 112;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::HdStExtCompGpuComputationResource::_Resolve(*(a1 + 16), v6, v7);
    v16 = *(a1 + 16);
    if (!*(v16 + 96))
    {
      pxrInternal__aapl__pxrReserved__::HdStExtCompGpuComputationResource::_Resolve(*(a1 + 16), v14, v15);
    }

    v13 = v16 + 112;
    if (!*(v12 + 96))
    {
      __p.__r_.__value_.__r.__words[0] = "hdSt/extCompGpuComputation.cpp";
      __p.__r_.__value_.__l.__size_ = "Execute";
      __p.__r_.__value_.__r.__words[2] = 116;
      *&v91 = "virtual void pxrInternal__aapl__pxrReserved__::HdStExtCompGpuComputation::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *)";
      BYTE8(v91) = 0;
      if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "computeProgram", 0) & 1) == 0)
      {
        goto LABEL_97;
      }
    }
  }

  v18 = *a2;
  v17 = a2[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v73 = v17;
  if (!v18)
  {
    __p.__r_.__value_.__r.__words[0] = "hdSt/extCompGpuComputation.cpp";
    __p.__r_.__value_.__l.__size_ = "Execute";
    __p.__r_.__value_.__r.__words[2] = 122;
    *&v91 = "virtual void pxrInternal__aapl__pxrReserved__::HdStExtCompGpuComputation::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *)";
    BYTE8(v91) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "outputBar", 0);
  }

  v74 = a3;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  LODWORD(__p.__r_.__value_.__l.__data_) = (*(*v18 + 72))(v18);
  sub_29A00D250(&v106, &__p);
  v75 = v12;
  v76 = a1;
  v78 = v18;
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  if (v19 != v20)
  {
    v21 = 0;
    while (1)
    {
      (*(*v78 + 168))(&v94);
      v22 = v19 + 40;
      if ((sub_29ADD2604(v13, (v19 + 40), -1) & 0x80000000) != 0)
      {
        __p.__r_.__value_.__r.__words[0] = "hdSt/extCompGpuComputation.cpp";
        __p.__r_.__value_.__l.__size_ = "Execute";
        __p.__r_.__value_.__r.__words[2] = 141;
        *&v91 = "virtual void pxrInternal__aapl__pxrReserved__::HdStExtCompGpuComputation::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *)";
        BYTE8(v91) = 0;
        if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "binding.IsValid()", 0))
        {
          goto LABEL_25;
        }
      }

      v23 = v94;
      if (!v94->__vftable)
      {
        v100 = "hdSt/extCompGpuComputation.cpp";
        v101 = "Execute";
        v102 = 141;
        v103 = "virtual void pxrInternal__aapl__pxrReserved__::HdStExtCompGpuComputation::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *)";
        v104 = 0;
        if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v100, "buffer->GetHandle()", 0))
        {
          goto LABEL_25;
        }

        v23 = v94;
      }

      ComponentType = pxrInternal__aapl__pxrReserved__::HdGetComponentType(*(v23 + 32));
      v25 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfType(ComponentType);
      LODWORD(__p.__r_.__value_.__l.__data_) = SLODWORD(v94[2].__vftable) / v25;
      sub_29A00D250(&v106, &__p);
      LODWORD(__p.__r_.__value_.__l.__data_) = SHIDWORD(v94[2].__vftable) / v25;
      sub_29A00D250(&v106, &__p);
      v21 = bswap64(0x9E3779B97F4A7C55 * (v94->__shared_owners_ + ((v94->__shared_owners_ + v21 + (v94->__shared_owners_ + v21) * (v94->__shared_owners_ + v21)) >> 1)));
LABEL_25:
      if (v95)
      {
        sub_29A014BEC(v95);
      }

      v19 = v22 + 24;
      if (v22 + 24 == v20)
      {
        goto LABEL_34;
      }
    }
  }

  v21 = 0;
LABEL_34:
  v26 = *(v76 + 16);
  v28 = *(v26 + 72);
  v27 = *(v26 + 80);
  v77 = v27;
  while (v28 != v27)
  {
    v30 = *v28;
    v29 = v28[1];
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v79 = v29;
    v31 = (*(*v30 + 176))(v30);
    v33 = *v31;
    v32 = *(v31 + 8);
    while (v33 != v32)
    {
      v34 = sub_29ADD2604(v13, v33, -1);
      v35 = v34;
      if (v34 & 0x80000000) == 0 || (__p.__r_.__value_.__r.__words[0] = "hdSt/extCompGpuComputation.cpp", __p.__r_.__value_.__l.__size_ = "Execute", __p.__r_.__value_.__r.__words[2] = 163, *&v91 = "virtual void pxrInternal__aapl__pxrReserved__::HdStExtCompGpuComputation::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *)", BYTE8(v91) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "binding.IsValid()", 0)))
      {
        v36 = *(v33[1] + 32);
        v37 = pxrInternal__aapl__pxrReserved__::HdGetComponentType(v36);
        v38 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfType(v37);
        LODWORD(__p.__r_.__value_.__l.__data_) = (*(v33[1] + 48) + (*(*v30 + 80))(v30, v33)) / v38;
        sub_29A00D250(&v106, &__p);
        LODWORD(__p.__r_.__value_.__l.__data_) = pxrInternal__aapl__pxrReserved__::HdGetComponentCount(v36);
        sub_29A00D250(&v106, &__p);
        if (v35 != 7)
        {
          __p.__r_.__value_.__r.__words[0] = "hdSt/extCompGpuComputation.cpp";
          __p.__r_.__value_.__l.__size_ = "Execute";
          __p.__r_.__value_.__r.__words[2] = 178;
          *&v91 = "virtual void pxrInternal__aapl__pxrReserved__::HdStExtCompGpuComputation::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *)";
          BYTE8(v91) = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Unsupported binding type %d for ExtComputation", v35);
        }

        v21 = bswap64(0x9E3779B97F4A7C55 * (*(v33[1] + 8) + ((*(v33[1] + 8) + v21 + (*(v33[1] + 8) + v21) * (*(v33[1] + 8) + v21)) >> 1)));
      }

      v33 += 3;
    }

    if (v79)
    {
      sub_29A014BEC(v79);
    }

    v28 += 2;
    v27 = v77;
  }

  LODWORD(__p.__r_.__value_.__l.__data_) = *(v76 + 56);
  sub_29A00D250(&v106, &__p);
  v39 = a3;
  Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(a3);
  v41 = v107 - v106;
  v42 = v107 - v106 + *(*(v75 + 96) + 64);
  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterComputePipeline(a3, bswap64(0x9E3779B97F4A7C55 * (v107 - v106 + ((v42 + v42 * v42) >> 1))), &v100);
  if (v105 == 1)
  {
    v43 = *(v75 + 96);
    v44 = pxrInternal__aapl__pxrReserved__::HgiComputePipelineDesc::HgiComputePipelineDesc(&__p);
    MEMORY[0x29C2C1A60](&__p, "ExtComputation", v44);
    v91 = *(v43 + 64);
    v92 = v41;
    v45 = (*(*Hgi + 176))(Hgi, &__p);
    v47 = v46;
    v48 = operator new(0x28uLL);
    v48->__shared_owners_ = 0;
    v48->__shared_weak_owners_ = 0;
    v48->__vftable = &unk_2A2093EA8;
    v48[1].__vftable = v45;
    v48[1].__shared_owners_ = v47;
    v94 = v48 + 1;
    v95 = v48;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_29ADE7EC8(&v100, &v94);
    if (v95)
    {
      sub_29A014BEC(v95);
    }
  }

  v50 = *v101;
  v49 = *(v101 + 1);
  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterResourceBindings(v74, v21, &v94);
  if (v99 == 1)
  {
    v51 = pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc::HgiResourceBindingsDesc(&__p);
    v80 = v49;
    MEMORY[0x29C2C1A60](&__p, "ExtComputation", v51);
    v52 = *(v76 + 32);
    v53 = *(v76 + 40);
    while (v52 != v53)
    {
      (*(*v78 + 168))(&v88);
      v54 = v52 + 5;
      v55 = sub_29ADD2604(v13, v54, -1);
      if ((v55 & 0x80000000) != 0)
      {
        v83 = "hdSt/extCompGpuComputation.cpp";
        v84 = "Execute";
        v85 = 223;
        v86 = "virtual void pxrInternal__aapl__pxrReserved__::HdStExtCompGpuComputation::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *)";
        v87 = 0;
        if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v83, "binding.IsValid()", 0))
        {
          goto LABEL_60;
        }
      }

      v56 = v88;
      if (!*v88)
      {
        v81[0] = "hdSt/extCompGpuComputation.cpp";
        v81[1] = "Execute";
        v81[2] = 224;
        v81[3] = "virtual void pxrInternal__aapl__pxrReserved__::HdStExtCompGpuComputation::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *)";
        v82 = 0;
        if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v81, "buffer->GetHandle()", 0))
        {
          goto LABEL_60;
        }

        v56 = v88;
      }

      sub_29AE4C240(&__p, v56, (v55 >> 8), 1);
LABEL_60:
      if (v89)
      {
        sub_29A014BEC(v89);
      }

      v52 = v54 + 3;
    }

    v57 = *(v76 + 16);
    v58 = *(v57 + 72);
    for (i = *(v57 + 80); v58 != i; v58 += 2)
    {
      v60 = *v58;
      v61 = v58[1];
      if (v61)
      {
        atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v62 = (*(*v60 + 176))(v60);
      v63 = *v62;
      v64 = v62[1];
      while (v63 != v64)
      {
        v65 = sub_29ADD2604(v13, v63, -1);
        if (v65 & 0x80000000) == 0 || (v83 = "hdSt/extCompGpuComputation.cpp", v84 = "Execute", v85 = 243, v86 = "virtual void pxrInternal__aapl__pxrReserved__::HdStExtCompGpuComputation::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *)", v87 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v83, "binding.IsValid()", 0)))
        {
          sub_29AE4C240(&__p, *(v63 + 8), (v65 >> 8), 0);
        }

        v63 += 24;
      }

      if (v61)
      {
        sub_29A014BEC(v61);
      }
    }

    v66 = (*(*Hgi + 144))(Hgi, &__p);
    v68 = v67;
    v69 = operator new(0x28uLL);
    v69->__shared_owners_ = 0;
    v69->__shared_weak_owners_ = 0;
    v69->__vftable = &unk_2A2094318;
    v69[1].__vftable = v66;
    v69[1].__shared_owners_ = v68;
    v83 = &v69[1].__vftable;
    v84 = v69;
    sub_29ADEB100(&v94, &v83);
    v39 = v74;
    v49 = v80;
    if (v84)
    {
      sub_29A014BEC(v84);
    }

    v83 = &v93;
    sub_29AB88D58(&v83);
    v83 = &v91;
    sub_29AB88B40(&v83);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v70 = v95->__vftable;
  shared_owners = v95->__shared_owners_;
  GlobalComputeCmds = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetGlobalComputeCmds(v39, 0);
  (*(*GlobalComputeCmds + 24))(GlobalComputeCmds, "ExtComputation");
  (*(*GlobalComputeCmds + 48))(GlobalComputeCmds, v70, shared_owners);
  (*(*GlobalComputeCmds + 40))(GlobalComputeCmds, v50, v49);
  (*(*GlobalComputeCmds + 56))(GlobalComputeCmds, v50, v49, 0, v41, v106);
  (*(*GlobalComputeCmds + 64))(GlobalComputeCmds, *(v76 + 56), 1);
  (*(*GlobalComputeCmds + 32))(GlobalComputeCmds);
  if (v98 == 1)
  {
    std::mutex::unlock(v97);
  }

  if (v96)
  {
    sub_29A014BEC(v96);
  }

  if (v104 == 1)
  {
    std::mutex::unlock(v103);
  }

  if (v102)
  {
    sub_29A014BEC(v102);
  }

  if (v106)
  {
    v107 = v106;
    operator delete(v106);
  }

  if (v73)
  {
    sub_29A014BEC(v73);
  }

LABEL_97:
  if (v109)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v110, v109);
  }
}

void sub_29AE4BFD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  sub_29A0E9CEC(v43 - 104);
  _Unwind_Resume(a1);
}

std::string *sub_29AE4C16C@<X0>(std::string *result@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v2 = result->__r_.__value_.__r.__words[0];
  size = result->__r_.__value_.__l.__size_;
  if (result->__r_.__value_.__l.__data_ != size)
  {
    do
    {
      v5 = std::string::append(a2, " '");
      if ((*v2 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((*v2 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
      }

      v7 = *(EmptyString + 23);
      if (v7 >= 0)
      {
        v8 = EmptyString;
      }

      else
      {
        v8 = *EmptyString;
      }

      if (v7 >= 0)
      {
        v9 = *(EmptyString + 23);
      }

      else
      {
        v9 = EmptyString[1];
      }

      std::string::append(a2, v8, v9);
      result = std::string::append(a2, "'");
      v2 += 8;
    }

    while (v2 != size);
  }

  return result;
}

void sub_29AE4C21C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE4C240(uint64_t a1, _OWORD *a2, int a3, char a4)
{
  pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc::HgiBufferBindDesc(v9);
  v13 = 5;
  v14 = a3;
  v15 = 4;
  v16 = a4;
  v8 = 0;
  sub_29A00D250(v10, &v8);
  sub_29A03A998(v9, a2);
  sub_29ADEB7F8((a1 + 24), v9);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

void sub_29AE4C2FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ADEB844(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStExtCompGpuComputation::CreateGpuComputation(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X2>, void *a4@<X8>)
{
  v39 = a2;
  if (sub_29ABCF8C0(14))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a2 + 8));
    sub_29AE4C16C(a3, &__p);
    v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("GPU computation '%s' created for primvars: %s\n", v9, v10, Text, v11);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v12 = *(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&__p, v12);
  {
    v37 = v13;
    size = __p.__r_.__value_.__l.__size_;
    if (__p.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((__p.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v37 = 0;
    size = 0;
  }

  if (__p.__r_.__value_.__l.__size_)
  {
    sub_29A014BEC(__p.__r_.__value_.__l.__size_);
  }

  sub_29AE4CE3C(&v39, &v35);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  sub_29AE4C758(&v32, (a3->__r_.__value_.__l.__size_ - a3->__r_.__value_.__r.__words[0]) >> 6);
  v14 = a3->__r_.__value_.__l.__size_;
  if (a3->__r_.__value_.__r.__words[0] != v14)
  {
    v15 = v33;
    v16 = (a3->__r_.__value_.__r.__words[0] + 48);
    do
    {
      if (v15 >= v34)
      {
        v15 = sub_29AE4CF80(&v32, v16 - 1, v16);
      }

      else
      {
        v17 = *v16;
        v18 = *(v16 - 1);
        *v15 = v18;
        if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *v15 &= 0xFFFFFFFFFFFFFFF8;
        }

        *(v15 + 8) = v17;
        v15 += 24;
      }

      v33 = v15;
      v19 = v16 + 1;
      v16 += 4;
    }

    while (v19 != v14);
  }

  v20 = v39;
  if (v39 || (__p.__r_.__value_.__r.__words[0] = "hdSt/extCompGpuComputation.cpp", __p.__r_.__value_.__l.__size_ = "CreateGpuComputation", __p.__r_.__value_.__r.__words[2] = 333, v30 = "static HdStExtCompGpuComputationSharedPtr pxrInternal__aapl__pxrReserved__::HdStExtCompGpuComputation::CreateGpuComputation(HdSceneDelegate *, const HdExtComputation *, const HdExtComputationPrimvarDescriptorVector &)", v31 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "deviceSourceComp", 0) & 1) != 0))
  {
    memset(&__p, 0, sizeof(__p));
    sub_29A017F80(&__p.__r_.__value_.__l.__data_, v20 + 8);
    v21 = *(v39 + 7);
    if (v21 != *(v39 + 8))
    {
      v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v22)
      {
        v22 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetSprim(v12, (v22 + 304), (v21 + 8));
    }

    sub_29AE4D0AC(&p_p);
    v23 = v39;
    DispatchCount = pxrInternal__aapl__pxrReserved__::HdExtComputation::GetDispatchCount(v39);
    v25 = *(v39 + 3);
    v26 = DispatchCount;
    sub_29AE4D270(v23 + 2, &p_p, a3, &v26, &v25, a4);
    if (v28)
    {
      sub_29A014BEC(v28);
    }

    p_p = &__p;
    sub_29A0176E4(&p_p);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }

  __p.__r_.__value_.__r.__words[0] = &v32;
  sub_29ABC6FA0(&__p);
  if (v36)
  {
    sub_29A014BEC(v36);
  }

  if (size)
  {
    sub_29A014BEC(size);
  }
}

void sub_29AE4C6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27)
{
  __p = &a23;
  sub_29ABC6FA0(&__p);
  if (a27)
  {
    sub_29A014BEC(a27);
  }

  v29 = *(v27 - 88);
  if (v29)
  {
    sub_29A014BEC(v29);
  }

  _Unwind_Resume(a1);
}

void *sub_29AE4C758(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 >= 0xAAAAAAAAAAAAAABLL)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v5[4] = result;
    v5[0] = sub_29A012C48(result, a2);
    v5[1] = v5[0] + v3;
    v5[2] = v5[0] + v3;
    v5[3] = v5[0] + 24 * v4;
    sub_29ABC711C(v2, v5);
    return sub_29ABC71C0(v5);
  }

  return result;
}

void sub_29AE4C7F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ABC71C0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_GetExtComputationPrimvarsComputations(uint64_t a1, uint64_t a2, __n128 **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5)
  {
    if (a6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_29B2CA090(&v22);
    if (a6)
    {
      goto LABEL_3;
    }
  }

  sub_29B2CA0D8(&v22);
LABEL_3:
  if (!a7)
  {
    sub_29B2CA120(&v22);
  }

  if (!a8)
  {
    sub_29B2CA168(&v22);
  }

  v11 = *(a2 + 8);
  v21[0] = 0;
  v21[1] = 0;
  v17 = v11;
  v20 = v21;
  v13 = *a3;
  v12 = a3[1];
  if (*a3 != v12)
  {
    do
    {
      *&v22 = v13 + 28;
      v14 = sub_29A55C168(&v20, &v13[1].n128_i64[1] + 4, &unk_29B4D6118, &v22);
      sub_29AE4CD3C((v14 + 10), v13);
      v13 += 4;
    }

    while (v13 != v12);
    if (v20 != v21)
    {
      sub_29AE4CDD4(v19, (v20 + 4));
      v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v15)
      {
        v15 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetSprim(v17, (v15 + 304), v19);
    }
  }

  sub_29AE4D3D0(&v20, v21[0]);
}

void sub_29AE4CCA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, void *a29)
{
  if (v29)
  {
    sub_29A014BEC(v29);
  }

  sub_29AE4CD88(&a24);
  sub_29AE4D3D0(&a28, a29);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE4CD3C(uint64_t a1, __n128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29AE4D478(a1, a2);
  }

  else
  {
    sub_29ACCD8DC(a1, *(a1 + 8), a2);
    result = v3 + 64;
  }

  *(a1 + 8) = result;
  return result;
}

_DWORD *sub_29AE4CD88(uint64_t a1)
{
  v3 = (a1 + 8);
  sub_29ABF15A8(&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

uint64_t sub_29AE4CDD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, (a2 + 4));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_29ACCD7C0((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 6);
  return a1;
}

void sub_29AE4CE3C(const pxrInternal__aapl__pxrReserved__::HdExtComputation **a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x38uLL);
  sub_29AE4CEB0(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;

  sub_29A017894(a2, v4 + 4, (v4 + 3));
}

void *sub_29AE4CEB0(void *a1, const pxrInternal__aapl__pxrReserved__::HdExtComputation **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2097410;
  pxrInternal__aapl__pxrReserved__::HdSt_ExtCompComputeShader::HdSt_ExtCompComputeShader((a1 + 3), *a2);
  return a1;
}

void sub_29AE4CF30(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2097410;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AE4CF80(void *a1, uint64_t *a2, __int128 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v8 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v8 = v4;
  }

  v15[4] = a1;
  if (v8)
  {
    v9 = sub_29A012C48(a1, v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = &v9[24 * v3];
  v15[0] = v9;
  v15[1] = v10;
  v15[3] = &v9[24 * v8];
  v11 = *a3;
  v12 = *a2;
  *v10 = *a2;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v10 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(v10 + 8) = v11;
  v15[2] = v10 + 24;
  sub_29ABC711C(a1, v15);
  v13 = a1[1];
  sub_29ABC71C0(v15);
  return v13;
}

void sub_29AE4D098(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ABC71C0(va);
  _Unwind_Resume(a1);
}

void *sub_29AE4D0AC@<X0>(void *a1@<X8>)
{
  v2 = operator new(0xA0uLL);
  result = sub_29AE4D128(v2);
  *a1 = v2 + 3;
  a1[1] = v2;
  return result;
}

void *sub_29AE4D128(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2097460;
  pxrInternal__aapl__pxrReserved__::HdStExtCompGpuComputationResource::HdStExtCompGpuComputationResource(a1 + 3);
  return a1;
}

void sub_29AE4D1A4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2097460;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AE4D1F4(uint64_t a1)
{
  sub_29A1602D4(a1 + 112, *(a1 + 120));
  v2 = *(a1 + 104);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v6 = (a1 + 72);
  sub_29A0176E4(&v6);
  v3 = *(a1 + 56);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v6 = (a1 + 8);
  sub_29ABC6FA0(&v6);
  return a1;
}

uint64_t sub_29AE4D270@<X0>(_DWORD *a1@<X1>, unint64_t *a2@<X2>, __n128 **a3@<X3>, unsigned __int32 *a4@<X4>, unsigned __int32 *a5@<X5>, void *a6@<X8>)
{
  v12 = operator new(0x58uLL);
  result = sub_29AE4D2FC(v12, a1, a2, a3, a4, a5);
  *a6 = v12 + 24;
  a6[1] = v12;
  return result;
}

uint64_t sub_29AE4D2FC(uint64_t a1, _DWORD *a2, unint64_t *a3, __n128 **a4, unsigned __int32 *a5, unsigned __int32 *a6)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20974B0;
  pxrInternal__aapl__pxrReserved__::HdStExtCompGpuComputation::HdStExtCompGpuComputation((a1 + 24), a2, a3, a4, *a5, *a6);
  return a1;
}

void sub_29AE4D380(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20974B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE4D3D0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AE4D3D0(a1, *a2);
    sub_29AE4D3D0(a1, a2[1]);
    sub_29AE4D42C((a2 + 4));

    operator delete(a2);
  }
}

_DWORD *sub_29AE4D42C(uint64_t a1)
{
  v3 = (a1 + 8);
  sub_29ABF15A8(&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

uint64_t sub_29AE4D478(uint64_t a1, __n128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_29A00C9A4();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    v8 = sub_29A0BE3C0(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[4 * v2];
  *(&v17 + 1) = &v8[4 * v7];
  sub_29ACCD8DC(a1, v16, a2);
  *&v17 = v16 + 4;
  v9 = *(a1 + 8);
  v10 = (v16 + *a1 - v9);
  sub_29ACCDBC8(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29ACCDC7C(&v15);
  return v14;
}

void sub_29AE4D574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ACCDC7C(va);
  _Unwind_Resume(a1);
}

void *sub_29AE4D588@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unsigned int *a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x50uLL);
  result = sub_29AE4D604(v8, a1, a2, a3);
  *a4 = v8 + 3;
  a4[1] = v8;
  return result;
}

void *sub_29AE4D604(void *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2097500;
  pxrInternal__aapl__pxrReserved__::HdStExtCompGpuPrimvarBufferSource::HdStExtCompGpuPrimvarBufferSource(a1 + 3, a2, a3, *a4);
  return a1;
}

void sub_29AE4D684(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2097500;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE4D6D4(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 52));
  sub_29A1DE3A4((a1 + 48));
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(a1);
}

void *sub_29AE4D734@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x60uLL);
  result = sub_29AE4D7B0(v2);
  *a1 = v2 + 3;
  a1[1] = v2;
  return result;
}

void *sub_29AE4D7B0(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2097550;
  pxrInternal__aapl__pxrReserved__::HdStExtCompPrimvarBufferSource::HdStExtCompPrimvarBufferSource(a1 + 3);
  return a1;
}

void sub_29AE4D82C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2097550;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStExtCompGpuComputationResource::HdStExtCompGpuComputationResource(uint64_t a1, uint64_t **a2, void *a3, void **a4, void *a5)
{
  *a1 = &unk_2A20975A0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_29AE4DFCC((a1 + 8), *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  *(a1 + 32) = *a3;
  v9 = a3[1];
  *(a1 + 40) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = *a5;
  v10 = a5[1];
  *(a1 + 56) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  sub_29AE4E044((a1 + 72), *a4, a4[1], (a4[1] - *a4) >> 4);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::HdSt_ResourceBinder((a1 + 112));
  return a1;
}

void sub_29AE4D97C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = v2[13];
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  sub_29A0176E4(va);
  v5 = v2[7];
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v6 = v2[5];
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  sub_29ABC6FA0(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStExtCompGpuComputationResource::_Resolve(pxrInternal__aapl__pxrReserved__::HdStExtCompGpuComputationResource *this, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](this, a2, a3);
  memset(v63, 0, sizeof(v63));
  v4 = *(v3 + 72);
  for (i = *(v3 + 80); v4 != i; v4 += 2)
  {
    v6 = *v4;
    if (!*v4)
    {
      v51 = "hdSt/extCompGpuComputationResource.cpp";
      v52 = "_Resolve";
      v53 = 52;
      v54 = "BOOL pxrInternal__aapl__pxrReserved__::HdStExtCompGpuComputationResource::_Resolve()";
      v55 = 0;
      if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v51, "input", 0))
      {
        continue;
      }

      v6 = *v4;
    }

    (*(*v6 + 144))(v6, v63);
  }

  v7 = pxrInternal__aapl__pxrReserved__::HdSt_ExtCompComputeShader::ComputeHash(*(v3 + 32));
  LOBYTE(v52) = 1;
  v51 = v7;
  sub_29AE4E18C(&v51, v3 + 8, v63);
  v8 = bswap64(0x9E3779B97F4A7C55 * v51);
  if (*(v3 + 96) && *(v3 + 64) == v8)
  {
    goto LABEL_38;
  }

  memset(v62, 0, sizeof(v62));
  v9 = *(v3 + 40);
  v51 = *(v3 + 32);
  v52 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A01729C(v62, &v51);
  if (v52)
  {
    sub_29A014BEC(v52);
  }

  v10 = operator new(0x2A0uLL);
  sub_29ADCBF48(v10);
  v61 = v10;
  Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(*(v3 + 48));
  v12 = (*(*Hgi + 200))(Hgi);
  pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::ResolveComputeBindings(v3 + 112, (v3 + 8), v63, v62, v10, v12);
  v13 = pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::MetaData::ComputeHash(v61);
  v16 = pxrInternal__aapl__pxrReserved__::HdStShaderCode::ComputeHash(v62, v14, v15);
  v17 = v13 + ((v13 + v13 * v13) >> 1) + v16;
  v18 = bswap64(0x9E3779B97F4A7C55 * (v16 + ((v17 + v17 * v17) >> 1)));
  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterGLSLProgram(*(v3 + 48), v18, v56);
  if (v60 == 1)
  {
    pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::HdSt_CodeGen(&v51, v62, &v61);
    if (sub_29ADC9798(13))
    {
      ExtComputationId = pxrInternal__aapl__pxrReserved__::HdSt_ExtCompComputeShader::GetExtComputationId(*(v3 + 32));
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(ExtComputationId);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("(MISS) First ext comp program instance for %s (hash = %zu)\n", v21, v22, Text, v18);
    }

    pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::CompileComputeProgram(&v51, *(v3 + 48), &v49);
    v23 = v49;
    if (!v49)
    {
      v44 = "hdSt/extCompGpuComputationResource.cpp";
      v45 = "_Resolve";
      v46 = 113;
      v47 = "BOOL pxrInternal__aapl__pxrReserved__::HdStExtCompGpuComputationResource::_Resolve()";
      v48 = 0;
      if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v44, "glslProgram", 0))
      {
        goto LABEL_44;
      }

      v23 = v49;
    }

    if (pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::Link(v23))
    {
      sub_29ADCA55C(v56, &v49);
      if (sub_29ABCF8C0(14))
      {
        v24 = pxrInternal__aapl__pxrReserved__::HdSt_ExtCompComputeShader::GetExtComputationId(*(v3 + 32));
        v25 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v24);
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Compiled and linked compute program for computation %s\n ", v26, v27, v25);
      }

      if (v50)
      {
        sub_29A014BEC(v50);
      }

      sub_29ADCAE34(&v51);
      goto LABEL_26;
    }

    v39 = (*(**(v49 + 8) + 24))(*(v49 + 8));
    v44 = "hdSt/extCompGpuComputationResource.cpp";
    v45 = "_Resolve";
    v46 = 121;
    v47 = "BOOL pxrInternal__aapl__pxrReserved__::HdStExtCompGpuComputationResource::_Resolve()";
    v48 = 0;
    if (*(v39 + 23) >= 0)
    {
      v41 = v39;
    }

    else
    {
      v41 = *v39;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v44, "Failed to link compute shader: %s", v40, v41);
LABEL_44:
    if (v50)
    {
      sub_29A014BEC(v50);
    }

    sub_29ADCAE34(&v51);
    if (v59 == 1)
    {
      std::mutex::unlock(v58);
    }

    if (v57)
    {
      sub_29A014BEC(v57);
    }

    goto LABEL_50;
  }

  if (sub_29ADC9798(12))
  {
    v28 = pxrInternal__aapl__pxrReserved__::HdSt_ExtCompComputeShader::GetExtComputationId(*(v3 + 32));
    v29 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v28);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("(HIT) Found ext comp program instance for %s (hash = %zu)\n", v30, v31, v29, v18);
  }

LABEL_26:
  v33 = v56[1];
  v32 = v57;
  if (v57)
  {
    atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v34 = *(v3 + 104);
  *(v3 + 96) = v33;
  *(v3 + 104) = v32;
  if (v34)
  {
    sub_29A014BEC(v34);
  }

  if (v59 == 1)
  {
    std::mutex::unlock(v58);
  }

  if (v57)
  {
    sub_29A014BEC(v57);
  }

  if (*(v3 + 96) || (v51 = "hdSt/extCompGpuComputationResource.cpp", v52 = "_Resolve", v53 = 141, v54 = "BOOL pxrInternal__aapl__pxrReserved__::HdStExtCompGpuComputationResource::_Resolve()", v55 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v51, "_computeProgram", 0) & 1) != 0))
  {
    *(v3 + 64) = v8;
    v35 = v61;
    v61 = 0;
    if (v35)
    {
      v36 = sub_29ADC3FD8(v35);
      operator delete(v36);
    }

    v51 = v62;
    sub_29A0176E4(&v51);
LABEL_38:
    v37 = 1;
    goto LABEL_39;
  }

LABEL_50:
  v42 = v61;
  v61 = 0;
  if (v42)
  {
    v43 = sub_29ADC3FD8(v42);
    operator delete(v43);
  }

  v51 = v62;
  sub_29A0176E4(&v51);
  v37 = 0;
LABEL_39:
  v51 = v63;
  sub_29ABC6FA0(&v51);
  return v37;
}

void sub_29AE4DEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void **a19)
{
  if (a18)
  {
    sub_29A014BEC(a18);
  }

  sub_29ADCAE34(&a19);
  sub_29ADCA62C(v19 - 192);
  v21 = *(v19 - 136);
  *(v19 - 136) = 0;
  if (v21)
  {
    v22 = sub_29ADC3FD8(v21);
    operator delete(v22);
  }

  a19 = (v19 - 128);
  sub_29A0176E4(&a19);
  *(v19 - 192) = v19 - 104;
  sub_29ABC6FA0((v19 - 192));
  _Unwind_Resume(a1);
}

void sub_29AE4DFA4(uint64_t a1)
{
  v1 = sub_29AE4D1F4(a1);

  operator delete(v1);
}

void *sub_29AE4DFCC(void *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A012BFC(result, a4);
    return sub_29ADD6D14(v6, a2, a3);
  }

  return result;
}

void *sub_29AE4E044(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A0D0518(result, a4);
    result = sub_29AE4E0CC(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AE4E0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

void *sub_29AE4E0CC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_29AE4E154(v7);
  return v4;
}

uint64_t sub_29AE4E154(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A14D2C0(a1);
  }

  return a1;
}

uint64_t sub_29AE4E18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8) - *a2;
  if (v6)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
    do
    {
      --v7;
      sub_29ABC697C(a1, v5, (v5 + 1));
      v5 += 3;
    }

    while (v7);
  }

  return sub_29AE4E208(a1, a3);
}

uint64_t sub_29AE4E208(uint64_t result, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8) - *a2;
  if (v3)
  {
    v4 = result;
    v5 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3);
    do
    {
      --v5;
      result = sub_29ABC697C(v4, v2, (v2 + 1));
      v2 += 3;
    }

    while (v5);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStExtCompGpuPrimvarBufferSource::HdStExtCompGpuPrimvarBufferSource(uint64_t a1, uint64_t *a2, _OWORD *a3, int a4, _DWORD *a5)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2A20975D0;
  v7 = *a2;
  *(a1 + 16) = *a2;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 24) = *a3;
  *(a1 + 40) = a4;
  sub_29A1E21F4((a1 + 48), a5);
  sub_29A1E2240((a1 + 52), a5 + 1);
  return a1;
}

unint64_t pxrInternal__aapl__pxrReserved__::HdStExtCompGpuPrimvarBufferSource::ComputeHash(pxrInternal__aapl__pxrReserved__::HdStExtCompGpuPrimvarBufferSource *this)
{
  v2 = 0;
  v3 = 0;
  sub_29A5BD508(&v2, this + 12, this + 2);
  return bswap64(0x9E3779B97F4A7C55 * v2);
}

BOOL pxrInternal__aapl__pxrReserved__::HdStExtCompGpuPrimvarBufferSource::Resolve(atomic_uint *this)
{
  v1 = 0;
  atomic_compare_exchange_strong(this + 2, &v1, 1u);
  v2 = v1 == 0;
  if (!v1)
  {
    sub_29AD1019C(this);
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStExtCompGpuPrimvarBufferSource::GetBufferSpecs(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v5 = (a1 + 16);
  v6 = (a1 + 24);
  if (v4 >= v3)
  {
    result = sub_29AE4CF80(a2, v5, v6);
  }

  else
  {
    sub_29AE4E438(a2, v5, v6);
    result = v4 + 24;
  }

  a2[1] = result;
  return result;
}

void sub_29AE4E410(uint64_t a1)
{
  sub_29AE4D6D4(a1);

  operator delete(v1);
}

uint64_t sub_29AE4E438(uint64_t result, uint64_t *a2, __int128 *a3)
{
  v3 = *(result + 8);
  v4 = *a3;
  v5 = *a2;
  *v3 = *a2;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v3 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(v3 + 8) = v4;
  *(result + 8) = v3 + 24;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStExtCompPrimvarBufferSource::HdStExtCompPrimvarBufferSource(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4, _OWORD *a5)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2A2097668;
  v6 = *a2;
  *(a1 + 16) = *a2;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = a3[1];
  *(a1 + 24) = *a3;
  *(a1 + 32) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = -1;
  *(a1 + 48) = *a5;
  *(a1 + 64) = 0;
  *(a1 + 40) = pxrInternal__aapl__pxrReserved__::HdStExtCompCpuComputation::GetOutputIndex(*a3, a4);
  return a1;
}

void sub_29AE4E53C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 4);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  sub_29B294B14(v2);
  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStExtCompPrimvarBufferSource::~HdStExtCompPrimvarBufferSource(pxrInternal__aapl__pxrReserved__::HdStExtCompPrimvarBufferSource *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 2);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdStExtCompPrimvarBufferSource::~HdStExtCompPrimvarBufferSource(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStExtCompPrimvarBufferSource::GetBufferSpecs(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v5 = (a1 + 16);
  v6 = (a1 + 48);
  if (v4 >= v3)
  {
    result = sub_29AE4CF80(a2, v5, v6);
  }

  else
  {
    sub_29AE4E438(a2, v5, v6);
    result = v4 + 24;
  }

  a2[1] = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStExtCompPrimvarBufferSource::Resolve(pxrInternal__aapl__pxrReserved__::HdStExtCompPrimvarBufferSource *this)
{
  v24 = *MEMORY[0x29EDCA608];
  if (pxrInternal__aapl__pxrReserved__::HdBufferSource::IsValid(*(this + 3)))
  {
    v2 = atomic_load((*(this + 3) + 8));
    if (v2 >= 2)
    {
      v3 = 0;
      atomic_compare_exchange_strong(this + 2, &v3, 1u);
      if (!v3)
      {
        v4 = atomic_load((*(this + 3) + 8));
        if (v4 != 3)
        {
          OutputByIndex = pxrInternal__aapl__pxrReserved__::HdStExtCompCpuComputation::GetOutputByIndex(*(this + 3), *(this + 5));
          pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource(v21, (this + 16), OutputByIndex, 1, 1);
          if (*(this + 12) == v22[4] && v23 == *(this + 7))
          {
            NumElements = pxrInternal__aapl__pxrReserved__::HdVtBufferSource::GetNumElements(v21);
            if (NumElements == pxrInternal__aapl__pxrReserved__::HdStExtCompCpuComputation::GetNumElements(*(this + 3)))
            {
              *(this + 8) = pxrInternal__aapl__pxrReserved__::HdGetValueData(v22, v8);
              sub_29AD1019C(this);
LABEL_19:
              pxrInternal__aapl__pxrReserved__::HdVtBufferSource::~HdVtBufferSource(v21);
              return 1;
            }

            v16 = "hdSt/extCompPrimvarBufferSource.cpp";
            v17 = "Resolve";
            v18 = 87;
            v19 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdStExtCompPrimvarBufferSource::Resolve()";
            v20 = 0;
            v14 = *(this + 2) & 0xFFFFFFFFFFFFFFF8;
            if (v14)
            {
              v15 = (v14 + 16);
              if (*(v14 + 39) < 0)
              {
                v15 = *v15;
              }
            }

            else
            {
              v15 = "";
            }

            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v16, "Output elements mismatch on %s. ", v9, v15);
          }

          else
          {
            v16 = "hdSt/extCompPrimvarBufferSource.cpp";
            v17 = "Resolve";
            v18 = 82;
            v19 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdStExtCompPrimvarBufferSource::Resolve()";
            v20 = 0;
            v12 = *(this + 2) & 0xFFFFFFFFFFFFFFF8;
            if (v12)
            {
              v13 = (v12 + 16);
              if (*(v12 + 39) < 0)
              {
                v13 = *v13;
              }
            }

            else
            {
              v13 = "";
            }

            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v16, "Output type mismatch on %s. ", v6, v13);
          }

          sub_29ADCDBFC(this);
          goto LABEL_19;
        }

LABEL_10:
        sub_29ADCDBFC(this);
        return 1;
      }
    }
  }

  else
  {
    v10 = 0;
    atomic_compare_exchange_strong(this + 2, &v10, 1u);
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  return 0;
}

void sub_29AE4E8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  pxrInternal__aapl__pxrReserved__::HdVtBufferSource::~HdVtBufferSource(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdSt_FallbackLightingShader *pxrInternal__aapl__pxrReserved__::HdSt_FallbackLightingShader::HdSt_FallbackLightingShader(pxrInternal__aapl__pxrReserved__::HdSt_FallbackLightingShader *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::HdStLightingShader::HdStLightingShader(this);
  *v2 = &unk_2A2097700;
  v2[3] = 0;
  v3 = v2 + 3;
  v4 = operator new(0x138uLL);
  pxrInternal__aapl__pxrReserved__::HdStPackageFallbackLightingShader(&v9);
  if ((v9 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v9 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  if (!v7)
  {
    v7 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  }

  pxrInternal__aapl__pxrReserved__::HioGlslfx::HioGlslfx(v4, EmptyString, v7 + 112);
  sub_29AE064D0(v3, v4);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return this;
}

void sub_29AE4EA20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v12);
  sub_29AE064D0(v11, 0);
  pxrInternal__aapl__pxrReserved__::HdStLightingShader::~HdStLightingShader(v10);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_FallbackLightingShader::~HdSt_FallbackLightingShader(pxrInternal__aapl__pxrReserved__::HdSt_FallbackLightingShader *this)
{
  *this = &unk_2A2097700;
  sub_29AE064D0(this + 3, 0);

  pxrInternal__aapl__pxrReserved__::HdStLightingShader::~HdStLightingShader(this);
}

{
  *this = &unk_2A2097700;
  sub_29AE064D0(this + 3, 0);

  pxrInternal__aapl__pxrReserved__::HdStLightingShader::~HdStLightingShader(this);
}

{
  *this = &unk_2A2097700;
  sub_29AE064D0(this + 3, 0);
  pxrInternal__aapl__pxrReserved__::HdStLightingShader::~HdStLightingShader(this);

  operator delete(v2);
}

unint64_t pxrInternal__aapl__pxrReserved__::HdSt_FallbackLightingShader::ComputeHash(pxrInternal__aapl__pxrReserved__::HdSt_FallbackLightingShader *this)
{
  pxrInternal__aapl__pxrReserved__::HdStPackageFallbackLightingShader(&v3);
  v1 = v3 & 0xFFFFFFFFFFFFFFF8;
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit(v1, 0xFFFFFFFE, memory_order_release);
  }

  return bswap64(0x9E3779B97F4A7C55 * v1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdSt_FallbackLightingShader::GetSource@<X0>(pxrInternal__aapl__pxrReserved__::HioGlslfx **this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_29A0ECEEC(&v7, "hdSt", "virtual std::string pxrInternal__aapl__pxrReserved__::HdSt_FallbackLightingShader::GetSource(const TfToken &) const");
  result = pxrInternal__aapl__pxrReserved__::HioGlslfx::GetSource(a3, this[3], a2);
  if (v7)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v8, v7);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdStField *pxrInternal__aapl__pxrReserved__::HdStField::HdStField(pxrInternal__aapl__pxrReserved__::HdStField *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v5 = pxrInternal__aapl__pxrReserved__::HdField::HdField(this, a2);
  *v5 = &unk_2A20977B0;
  v6 = *a3;
  *(v5 + 2) = *a3;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 2) &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::HdStTextureIdentifier(this + 3);
  *(this + 5) = 0;
  *(this + 48) &= ~1u;
  return this;
}

void sub_29AE4ECF8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 2);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdField::~HdField(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStField::~HdStField(pxrInternal__aapl__pxrReserved__::HdStField *this)
{
  *this = &unk_2A20977B0;
  pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::~HdStTextureIdentifier((this + 24));
  v2 = *(this + 2);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdField::~HdField(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdStField::~HdStField(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStField::Sync(uint64_t this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, unsigned int *a4)
{
  v5 = this;
  v37[2] = *MEMORY[0x29EDCA608];
  if ((*a4 & 2) != 0)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdFieldTokens))
    {
      sub_29AE4F5C4(&pxrInternal__aapl__pxrReserved__::HdFieldTokens);
    }

    (*(*a2 + 120))(v37, a2, v5 + 8);
    v8 = sub_29A3467F8(v37);
    v9 = v8;
    if (*(v8 + 23) < 0)
    {
      sub_29A008D14(__dst, *v8, v8[1]);
    }

    else
    {
      v10 = *v8;
      v30 = v8[2];
      *__dst = v10;
    }

    if (*(v9 + 47) < 0)
    {
      sub_29A008D14(&__p, v9[3], v9[4]);
    }

    else
    {
      v11 = *(v9 + 3);
      v32 = v9[5];
      __p = v11;
    }

    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v28);
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdFieldTokens);
    if (!v12)
    {
      v12 = sub_29AE4F5C4(&pxrInternal__aapl__pxrReserved__::HdFieldTokens);
    }

    (*(*a2 + 120))(v36, a2, v5 + 8, v12 + 8);
    v13 = sub_29A27A0F8(v36);
    if (!atomic_load(&qword_2A174F088))
    {
      sub_29AE4F650();
    }

    (*(*a2 + 120))(v35, a2, v5 + 8);
    v15 = *sub_29A346A20(v35);
    v16 = atomic_load(&qword_2A174F088);
    if (!v16)
    {
      v16 = sub_29AE4F650();
    }

    if ((*(v16 + 24) ^ *(v5 + 16)) > 7)
    {
      v19 = atomic_load(&qword_2A174F088);
      if (!v19)
      {
        v19 = sub_29AE4F650();
      }

      (*(*a2 + 120))(&v33, a2, v5 + 8, v19 + 8);
      v20 = sub_29A27A0F8(&v33);
      v21 = operator new(0x20uLL);
      pxrInternal__aapl__pxrReserved__::HdStField3DAssetSubtextureIdentifier::HdStField3DAssetSubtextureIdentifier(v21, v13, v15, v20);
      v26 = v21;
      pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::HdStTextureIdentifier(v27, &v28, &v26);
      pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::operator=((v5 + 24), v27);
      pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::~HdStTextureIdentifier(v27);
      v22 = v26;
      v26 = 0;
      if (v22)
      {
        (*(*v22 + 16))(v22);
      }

      sub_29A186B14(&v33);
    }

    else
    {
      v17 = operator new(0x18uLL);
      pxrInternal__aapl__pxrReserved__::HdStOpenVDBAssetSubtextureIdentifier::HdStOpenVDBAssetSubtextureIdentifier(v17, v13, v15);
      v27[0] = v17;
      pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::HdStTextureIdentifier(&v33, &v28, v27);
      pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::operator=((v5 + 24), &v33);
      pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::~HdStTextureIdentifier(&v33);
      v18 = v27[0];
      v27[0] = 0;
      if (v18)
      {
        (*(*v18 + 16))(v18);
      }
    }

    v23 = atomic_load(&qword_2A174F088);
    if (!v23)
    {
      v23 = sub_29AE4F650();
    }

    (*(*a2 + 120))(&v33, a2, v5 + 8, v23 + 16);
    v24 = sub_29A3F9DF4(&v33);
    v25 = 0.0;
    if (v24)
    {
      if ((v34 & 4) != 0)
      {
        v25 = *(*((v34 & 0xFFFFFFFFFFFFFFF8) + 168))(&v33, 0.0);
      }

      else
      {
        v25 = *&v33;
      }
    }

    *(v5 + 40) = vcvts_n_u32_f32(v25, 0x14uLL);
    if (*(v5 + 48))
    {
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkAllRprimsDirty((*(a2 + 1) + 440), 0x400000);
    }

    sub_29A186B14(&v33);
    sub_29A186B14(v35);
    sub_29A186B14(v36);
    if ((v28 & 7) != 0)
    {
      atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(__dst[0]);
    }

    this = sub_29A186B14(v37);
  }

  *(v5 + 48) |= 1u;
  *a4 = 0;
  return this;
}

void sub_29AE4F210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_29A186B14(v25 - 88);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdStField::GetSupportedBprimTypes(pxrInternal__aapl__pxrReserved__::HdStField *this)
{
  v12 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A174F0A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F0A8))
  {
    v2 = atomic_load(&qword_2A174F088);
    if (!v2)
    {
      v2 = sub_29AE4F650();
    }

    v3 = *(v2 + 24);
    v10 = v3;
    if ((v3 & 7) != 0)
    {
      v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
      {
        v10 = v4;
      }
    }

    v5 = atomic_load(&qword_2A174F088);
    if (!v5)
    {
      v5 = sub_29AE4F650();
    }

    v6 = *(v5 + 32);
    v11 = v6;
    if ((v6 & 7) != 0)
    {
      v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
      {
        v11 = v7;
      }
    }

    qword_2A174F090 = 0;
    *algn_2A174F098 = 0;
    qword_2A174F0A0 = 0;
    sub_29A12EF7C(&qword_2A174F090, &v10, &v12, 2uLL);
    for (i = 8; i != -8; i -= 8)
    {
      v9 = *(&v10 + i);
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A174F090, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174F0A8);
  }

  return &qword_2A174F090;
}

void sub_29AE4F4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __cxa_guard_abort(&qword_2A174F0A8);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::HdStField::IsSupportedBprimType(pxrInternal__aapl__pxrReserved__::HdStField *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = atomic_load(&qword_2A174F088);
  if (!v3)
  {
    v3 = sub_29AE4F650();
  }

  if ((*(v3 + 24) ^ *this) < 8)
  {
    return 1;
  }

  v5 = atomic_load(&qword_2A174F088);
  if (!v5)
  {
    v5 = sub_29AE4F650();
  }

  return (*(v5 + 32) ^ *this) < 8uLL;
}

pxrInternal__aapl__pxrReserved__::HdFieldTokens_StaticTokenType *sub_29AE4F5C4(atomic_ullong *a1)
{
  result = sub_29AE4F60C();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdFieldTokens_StaticTokenType::~HdFieldTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdFieldTokens_StaticTokenType *sub_29AE4F60C()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::HdFieldTokens_StaticTokenType::HdFieldTokens_StaticTokenType(v0);
  return v0;
}

unint64_t sub_29AE4F650()
{
  v22 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x40uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "fieldIndex", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "fieldPurpose", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "textureMemory", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "openvdbAsset", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "field3dAsset", 0);
  v1 = v0 + 5;
  v2 = *v0;
  v17 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 = v3;
    }
  }

  v4 = v0[1];
  v18 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 = v5;
    }
  }

  v6 = v0[2];
  v19 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v7;
    }
  }

  v8 = v0[3];
  v20 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v9;
    }
  }

  v10 = v0[4];
  v21 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v11;
    }
  }

  *v1 = 0;
  v0[6] = 0;
  v0[7] = 0;
  sub_29A12EF7C(v1, &v17, &v22, 5uLL);
  for (i = 32; i != -8; i -= 8)
  {
    v13 = *(&v17 + i);
    if ((v13 & 7) != 0)
    {
      atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v14 = 0;
  atomic_compare_exchange_strong(&qword_2A174F088, &v14, v0);
  if (v14)
  {
    v15 = sub_29AB82814(v0);
    operator delete(v15);
    return atomic_load(&qword_2A174F088);
  }

  return v0;
}

void sub_29AE4F83C(_Unwind_Exception *a1)
{
  v4 = 32;
  while (1)
  {
    v5 = *(v2 + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
    if (v4 == -8)
    {
      v6 = v1[4];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[3];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[2];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[1];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdStOpenVDBAssetSubtextureIdentifier::HdStOpenVDBAssetSubtextureIdentifier(pxrInternal__aapl__pxrReserved__::HdStOpenVDBAssetSubtextureIdentifier *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, int a3)
{
  result = pxrInternal__aapl__pxrReserved__::HdStFieldBaseSubtextureIdentifier::HdStFieldBaseSubtextureIdentifier(this, a2, a3);
  *result = &unk_2A2097800;
  return result;
}

{
  result = pxrInternal__aapl__pxrReserved__::HdStFieldBaseSubtextureIdentifier::HdStFieldBaseSubtextureIdentifier(this, a2, a3);
  *result = &unk_2A2097800;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStOpenVDBAssetSubtextureIdentifier::~HdStOpenVDBAssetSubtextureIdentifier(pxrInternal__aapl__pxrReserved__::HdStOpenVDBAssetSubtextureIdentifier *this)
{
  pxrInternal__aapl__pxrReserved__::HdStFieldBaseSubtextureIdentifier::~HdStFieldBaseSubtextureIdentifier(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStOpenVDBAssetSubtextureIdentifier::Clone@<X0>(pxrInternal__aapl__pxrReserved__::HdStOpenVDBAssetSubtextureIdentifier *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 4);
  v5 = operator new(0x18uLL);
  result = pxrInternal__aapl__pxrReserved__::HdStFieldBaseSubtextureIdentifier::HdStFieldBaseSubtextureIdentifier(v5, this + 1, v4);
  *v5 = &unk_2A2097800;
  *a2 = v5;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::HdStOpenVDBAssetSubtextureIdentifier::_Hash(pxrInternal__aapl__pxrReserved__::HdStOpenVDBAssetSubtextureIdentifier *this)
{
  if ((atomic_load_explicit(&qword_2A174F0B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F0B8))
  {
    sub_29A008E78(__p, "vdb");
    v4 = sub_29AE4FB24(&v7, __p);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A174F0B0 = v4;
    __cxa_guard_release(&qword_2A174F0B8);
  }

  v2 = pxrInternal__aapl__pxrReserved__::HdStFieldBaseSubtextureIdentifier::_Hash(this);
  return bswap64(0x9E3779B97F4A7C55 * (v2 + ((qword_2A174F0B0 + v2 + (qword_2A174F0B0 + v2) * (qword_2A174F0B0 + v2)) >> 1)));
}

void sub_29AE4FAF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A174F0B8);
  _Unwind_Resume(a1);
}

unint64_t sub_29AE4FB24(uint64_t a1, pxrInternal__aapl__pxrReserved__ *a2)
{
  v5 = 0;
  v6 = 0;
  v2 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v5, a2, v3);
  return bswap64(0x9E3779B97F4A7C55 * v5);
}

void *pxrInternal__aapl__pxrReserved__::HdStField3DAssetSubtextureIdentifier::HdStField3DAssetSubtextureIdentifier(pxrInternal__aapl__pxrReserved__::HdStField3DAssetSubtextureIdentifier *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, int a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  result = pxrInternal__aapl__pxrReserved__::HdStFieldBaseSubtextureIdentifier::HdStFieldBaseSubtextureIdentifier(this, a2, a3);
  *result = &unk_2A2097830;
  v6 = *a4;
  result[3] = *a4;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[3] &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStField3DAssetSubtextureIdentifier::~HdStField3DAssetSubtextureIdentifier(pxrInternal__aapl__pxrReserved__::HdStField3DAssetSubtextureIdentifier *this)
{
  v1 = *(this + 3);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdStFieldBaseSubtextureIdentifier::~HdStFieldBaseSubtextureIdentifier(this);
}

{
  v1 = *(this + 3);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdStFieldBaseSubtextureIdentifier::~HdStFieldBaseSubtextureIdentifier(this);
}

{
  v2 = *(this + 3);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdStFieldBaseSubtextureIdentifier::~HdStFieldBaseSubtextureIdentifier(this);

  operator delete(v3);
}

void *pxrInternal__aapl__pxrReserved__::HdStField3DAssetSubtextureIdentifier::Clone@<X0>(pxrInternal__aapl__pxrReserved__::HdStField3DAssetSubtextureIdentifier *this@<X0>, pxrInternal__aapl__pxrReserved__::HdStField3DAssetSubtextureIdentifier **a2@<X8>)
{
  v4 = *(this + 4);
  v5 = operator new(0x20uLL);
  result = pxrInternal__aapl__pxrReserved__::HdStField3DAssetSubtextureIdentifier::HdStField3DAssetSubtextureIdentifier(v5, (this + 8), v4, (this + 24));
  *a2 = v5;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::HdStField3DAssetSubtextureIdentifier::_Hash(pxrInternal__aapl__pxrReserved__::HdStField3DAssetSubtextureIdentifier *this)
{
  if ((atomic_load_explicit(&qword_2A174F0C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F0C8))
  {
    sub_29A008E78(&__p, "Field3D");
    v3 = sub_29AE4FB24(&v4, &__p);
    if (v7 < 0)
    {
      operator delete(__p);
    }

    qword_2A174F0C0 = v3;
    __cxa_guard_release(&qword_2A174F0C8);
  }

  v4 = pxrInternal__aapl__pxrReserved__::HdStFieldBaseSubtextureIdentifier::_Hash(this);
  __p = 0;
  v6 = 0;
  sub_29AE4FDD4(&__p, &qword_2A174F0C0, &v4, this + 3);
  return bswap64(0x9E3779B97F4A7C55 * __p);
}

void sub_29AE4FDA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A174F0C8);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE4FDD4(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = *a2;
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return sub_29AE4FE0C(a1, a3, a4);
}

uint64_t sub_29AE4FE0C(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (*(result + 8))
  {
    v3 += (*result + v3 + (*result + v3) * (*result + v3)) >> 1;
  }

  else
  {
    *(result + 8) = 1;
  }

  *result = (*a3 & 0xFFFFFFFFFFFFFFF8) + (((*a3 & 0xFFFFFFFFFFFFFFF8) + v3 + ((*a3 & 0xFFFFFFFFFFFFFFF8) + v3) * ((*a3 & 0xFFFFFFFFFFFFFFF8) + v3)) >> 1);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_FlatNormalsComputationCPU::HdSt_FlatNormalsComputationCPU(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4, char a5)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *result = &unk_2A2097890;
  v6 = *a3;
  v5 = a3[1];
  *(result + 32) = a2;
  *(result + 40) = v6;
  *(result + 48) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *a4;
  *(result + 56) = *a4;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 56) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(result + 64) = a5;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_FlatNormalsComputationCPU::GetBufferSpecs(uint64_t a1, void *a2)
{
  if (*(a1 + 64) == 1)
  {
    LODWORD(v9) = 29;
    v4 = 1;
  }

  else
  {
    *&v9 = (*(**(a1 + 40) + 56))(*(a1 + 40));
  }

  *(&v9 + 1) = v4;
  v5 = a2[1];
  if (v5 >= a2[2])
  {
    result = sub_29AE03FE4(a2, (a1 + 56), &v9);
  }

  else
  {
    v6 = v9;
    v7 = *(a1 + 56);
    *v5 = v7;
    if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v5 &= 0xFFFFFFFFFFFFFFF8;
    }

    v5[1] = v6;
    v5[2] = v4;
    result = (v5 + 3);
  }

  a2[1] = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_FlatNormalsComputationCPU::Resolve(pxrInternal__aapl__pxrReserved__::HdSt_FlatNormalsComputationCPU *this)
{
  v26[2] = *MEMORY[0x29EDCA608];
  v1 = atomic_load((*(this + 5) + 8));
  if (v1 < 2)
  {
    return 0;
  }

  v3 = 0;
  atomic_compare_exchange_strong(this + 2, &v3, 1u);
  if (v3)
  {
    return 0;
  }

  sub_29A0ECEEC(&v23, "hdSt", "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_FlatNormalsComputationCPU::Resolve()");
  if (*(this + 4) || (v18 = "hdSt/flatNormals.cpp", v19 = "Resolve", v20 = 74, v21 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_FlatNormalsComputationCPU::Resolve()", v22 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v18, "_topology", 0) & 1) != 0))
  {
    v26[1] = 0;
    v4 = (*(**(this + 5) + 56))(*(this + 5));
    if (v4 == 15)
    {
      if (*(this + 64) != 1)
      {
        v12 = *(this + 4);
        v13 = (*(**(this + 5) + 48))(*(this + 5));
        pxrInternal__aapl__pxrReserved__::Hd_FlatNormals::ComputeFlatNormals(&v18, v12, v13);
        sub_29A193700(v26, &v18);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
      }

      v8 = *(this + 4);
      v9 = (*(**(this + 5) + 48))(*(this + 5));
      pxrInternal__aapl__pxrReserved__::Hd_FlatNormals::ComputeFlatNormalsPacked(&v18, v8, v9);
      sub_29AE503E4(v26, &v18);
      sub_29A213190(&v18);
    }

    else if (v4 == 21)
    {
      if (*(this + 64) != 1)
      {
        v10 = *(this + 4);
        v11 = (*(**(this + 5) + 48))(*(this + 5));
        pxrInternal__aapl__pxrReserved__::Hd_FlatNormals::ComputeFlatNormals(&v18, v10, v11);
        sub_29A194DFC(v26, &v18);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
      }

      v5 = *(this + 4);
      v6 = (*(**(this + 5) + 48))(*(this + 5));
      pxrInternal__aapl__pxrReserved__::Hd_FlatNormals::ComputeFlatNormalsPacked(&v18, v5, v6);
      sub_29AE503E4(v26, &v18);
      sub_29A213190(&v18);
    }

    else
    {
      v18 = "hdSt/flatNormals.cpp";
      v19 = "Resolve";
      v20 = 98;
      v21 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_FlatNormalsComputationCPU::Resolve()";
      v22 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Unsupported points type for computing flat normals");
    }

    v14 = operator new(0x40uLL);
    sub_29A186EF4(v25, v26);
    pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource(v14, (this + 56), v25, 1, 1);
    sub_29AD9CE74(&v18, v14);
    sub_29A186B14(v25);
    v16 = v18;
    v15 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = *(this + 3);
    *(this + 2) = v16;
    *(this + 3) = v15;
    if (v17)
    {
      sub_29A014BEC(v17);
    }

    sub_29AD1019C(this);
    if (v19)
    {
      sub_29A014BEC(v19);
    }

    sub_29A186B14(v26);
  }

  if (v23)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v24, v23);
  }

  return 1;
}

void sub_29AE502EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void *sub_29AE503E4(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2097968;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29AE50478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::HdBufferSource *pxrInternal__aapl__pxrReserved__::HdSt_FlatNormalsComputationCPU::_CheckValid(pxrInternal__aapl__pxrReserved__::HdSt_FlatNormalsComputationCPU *this)
{
  result = *(this + 5);
  if (result)
  {
    return pxrInternal__aapl__pxrReserved__::HdBufferSource::IsValid(result);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_FlatNormalsComputationGPU::HdSt_FlatNormalsComputationGPU(uint64_t a1, uint64_t *a2, void *a3, int a4, uint64_t *a5, uint64_t *a6, unsigned int a7, int a8)
{
  v11 = *a2;
  v10 = a2[1];
  *a1 = &unk_2A2097910;
  *(a1 + 8) = v11;
  *(a1 + 16) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = a3[1];
  *(a1 + 24) = *a3;
  *(a1 + 32) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = a4;
  v13 = *a5;
  *(a1 + 48) = *a5;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 48) &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *a6;
  *(a1 + 56) = *a6;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 56) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 64) = a7;
  if (a7 != 15 && a7 != 21)
  {
    v20[0] = "hdSt/flatNormals.cpp";
    v20[1] = "HdSt_FlatNormalsComputationGPU";
    v20[2] = 217;
    v20[3] = "pxrInternal__aapl__pxrReserved__::HdSt_FlatNormalsComputationGPU::HdSt_FlatNormalsComputationGPU(const HdBufferArrayRangeSharedPtr &, const HdBufferArrayRangeSharedPtr &, int, const TfToken &, const TfToken &, HdType, BOOL)";
    v21 = 0;
    pxrInternal__aapl__pxrReserved__::TfEnum::GetName(qword_2A2076058, a7, __p);
    if (v19 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v20, 1, "Unsupported points type %s for computing flat normals", v15);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    a7 = -1;
    *(a1 + 64) = -1;
  }

  if (a8)
  {
    v16 = 29;
  }

  else
  {
    v16 = a7;
  }

  *(a1 + 68) = v16;
  return a1;
}

void sub_29AE50648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  v18 = *(v16 + 7);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(v16 + 6);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(v16 + 4);
  if (v20)
  {
    sub_29A014BEC(v20);
  }

  v21 = *(v16 + 2);
  if (v21)
  {
    sub_29A014BEC(v21);
  }

  pxrInternal__aapl__pxrReserved__::HdStComputation::~HdStComputation(v16);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_FlatNormalsComputationGPU::Execute(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *a3)
{
  v116[4] = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v98, "hdSt", "virtual void pxrInternal__aapl__pxrReserved__::HdSt_FlatNormalsComputationGPU::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *)");
  if (*(a1 + 64) == -1)
  {
    goto LABEL_136;
  }

  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 24);
  v8 = *(a1 + 32);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v76 = v8;
  v77 = v6;
  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v9 + 168))(&v96, v9, a1 + 48);
  (*(*v7 + 168))(&v94, v7, a1 + 56);
  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v12)
  {
    v12 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  (*(*v11 + 168))(&v92, v11, v12 + 312);
  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v13)
  {
    v13 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  (*(*v11 + 168))(&v90, v11, v13 + 536);
  v89 = 0;
  if (pxrInternal__aapl__pxrReserved__::HdGetComponentCount(*(v92 + 32)) == 3)
  {
    v14 = *(a1 + 64);
    if (v14 == 21)
    {
      v22 = *(a1 + 68);
      if (v22 == 29)
      {
        v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
        if (!v30)
        {
          v30 = sub_29ADEBD78(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
        }

        v17 = (v30 + 56);
      }

      else
      {
        if (v22 != 21)
        {
          goto LABEL_70;
        }

        v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
        if (!v23)
        {
          v23 = sub_29ADEBD78(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
        }

        v17 = (v23 + 48);
      }
    }

    else
    {
      if (v14 != 15)
      {
        goto LABEL_70;
      }

      v15 = *(a1 + 68);
      if (v15 == 29)
      {
        v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
        if (!v27)
        {
          v27 = sub_29ADEBD78(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
        }

        v17 = (v27 + 40);
      }

      else
      {
        if (v15 != 15)
        {
          goto LABEL_70;
        }

        v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
        if (!v16)
        {
          v16 = sub_29ADEBD78(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
        }

        v17 = (v16 + 32);
      }
    }
  }

  else
  {
    v18 = *(v92 + 40);
    if (v18 == 6)
    {
      v24 = *(a1 + 64);
      if (v24 == 21)
      {
        v31 = *(a1 + 68);
        if (v31 == 29)
        {
          v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
          if (!v36)
          {
            v36 = sub_29ADEBD78(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
          }

          v17 = (v36 + 120);
        }

        else
        {
          if (v31 != 21)
          {
            goto LABEL_70;
          }

          v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
          if (!v32)
          {
            v32 = sub_29ADEBD78(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
          }

          v17 = (v32 + 112);
        }
      }

      else
      {
        if (v24 != 15)
        {
          goto LABEL_70;
        }

        v25 = *(a1 + 68);
        if (v25 == 29)
        {
          v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
          if (!v34)
          {
            v34 = sub_29ADEBD78(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
          }

          v17 = (v34 + 104);
        }

        else
        {
          if (v25 != 15)
          {
            goto LABEL_70;
          }

          v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
          if (!v26)
          {
            v26 = sub_29ADEBD78(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
          }

          v17 = (v26 + 96);
        }
      }
    }

    else
    {
      if (v18 != 4)
      {
        goto LABEL_70;
      }

      v19 = *(a1 + 64);
      if (v19 == 21)
      {
        v28 = *(a1 + 68);
        if (v28 == 29)
        {
          v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
          if (!v35)
          {
            v35 = sub_29ADEBD78(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
          }

          v17 = (v35 + 88);
        }

        else
        {
          if (v28 != 21)
          {
            goto LABEL_70;
          }

          v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
          if (!v29)
          {
            v29 = sub_29ADEBD78(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
          }

          v17 = (v29 + 80);
        }
      }

      else
      {
        if (v19 != 15)
        {
          goto LABEL_70;
        }

        v20 = *(a1 + 68);
        if (v20 == 29)
        {
          v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
          if (!v33)
          {
            v33 = sub_29ADEBD78(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
          }

          v17 = (v33 + 72);
        }

        else
        {
          if (v20 != 15)
          {
            goto LABEL_70;
          }

          v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
          if (!v21)
          {
            v21 = sub_29ADEBD78(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
          }

          v17 = (v21 + 64);
        }
      }
    }
  }

  sub_29A166F2C(&v89, v17);
LABEL_70:
  if (v89 || (v101 = "hdSt/flatNormals.cpp", v102 = "Execute", v103 = 302, v104 = "virtual void pxrInternal__aapl__pxrReserved__::HdSt_FlatNormalsComputationGPU::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *)", LOBYTE(v105) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v101, "!shaderToken.IsEmpty()", 0) & 1) != 0))
  {
    v116[0] = &unk_2A2097A58;
    v116[1] = &v89;
    v116[2] = a1;
    v116[3] = v116;
    pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::GetComputeProgram(&v89, a3, v116, &v86);
    sub_29ADEC314(v116);
    if (v86)
    {
      v88[0] = (*(*v9 + 72))(v9);
      v88[1] = (*(*v7 + 72))(v7);
      v88[2] = (*(*v11 + 72))(v11);
      ComponentType = pxrInternal__aapl__pxrReserved__::HdGetComponentType(*(v96 + 32));
      v38 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfType(ComponentType);
      v39 = *(v96 + 52) / v38;
      v88[3] = *(v96 + 48) / v38;
      v88[4] = v39;
      v40 = pxrInternal__aapl__pxrReserved__::HdGetComponentType(*(v94 + 32));
      v41 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfType(v40);
      v42 = *(v94 + 52) / v41;
      v88[5] = *(v94 + 48) / v41;
      v88[6] = v42;
      v43 = pxrInternal__aapl__pxrReserved__::HdGetComponentType(*(v92 + 32));
      v44 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfType(v43);
      v45 = *(v92 + 52) / v44;
      v88[7] = *(v92 + 48) / v44;
      v88[8] = v45;
      v46 = pxrInternal__aapl__pxrReserved__::HdGetComponentType(*(v90 + 32));
      v47 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfType(v46);
      v48 = *(v90 + 52) / v47;
      v88[9] = *(v90 + 48) / v47;
      v88[10] = v48;
      v49 = (*(*v11 + 88))(v11);
      v88[11] = v49;
      Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(a3);
      v51 = *(v92 + 8);
      v52 = *(v90 + 8);
      v53 = v51 + *(v94 + 8) + ((*(v94 + 8) + *(v96 + 8) + (*(v94 + 8) + *(v96 + 8)) * (*(v94 + 8) + *(v96 + 8))) >> 1);
      v54 = v52 + v51 + ((v53 + v53 * v53) >> 1);
      v55 = *(v86 + 64);
      pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterResourceBindings(a3, bswap64(0x9E3779B97F4A7C55 * (v52 + ((v54 + v54 * v54) >> 1))), &v80);
      if (v85 == 1)
      {
        v56 = v96;
        v57 = v94;
        v58 = v92;
        v59 = v90;
        v60 = pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc::HgiResourceBindingsDesc(v111);
        MEMORY[0x29C2C1A60](v60);
        if (*v56)
        {
          pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc::HgiBufferBindDesc(&v101);
          v108 = 0x100000005;
          v109 = 4;
          v110 = 0;
          v100 = 0;
          sub_29A00D250(&v104, &v100);
          sub_29A03A998(&v101, v56);
          sub_29ADEB7F8(&v113, &v101);
          if (__p)
          {
            v107 = __p;
            operator delete(__p);
          }

          if (v104)
          {
            v105 = v104;
            operator delete(v104);
          }

          if (v101)
          {
            v102 = v101;
            operator delete(v101);
          }
        }

        if (*v57)
        {
          pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc::HgiBufferBindDesc(&v101);
          v108 = 0x200000005;
          v109 = 4;
          v110 = 1;
          v100 = 0;
          sub_29A00D250(&v104, &v100);
          sub_29A03A998(&v101, v57);
          sub_29ADEB7F8(&v113, &v101);
          if (__p)
          {
            v107 = __p;
            operator delete(__p);
          }

          if (v104)
          {
            v105 = v104;
            operator delete(v104);
          }

          if (v101)
          {
            v102 = v101;
            operator delete(v101);
          }
        }

        if (*v58)
        {
          pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc::HgiBufferBindDesc(&v101);
          v108 = 0x300000005;
          v109 = 4;
          v110 = 0;
          v100 = 0;
          sub_29A00D250(&v104, &v100);
          sub_29A03A998(&v101, v58);
          sub_29ADEB7F8(&v113, &v101);
          if (__p)
          {
            v107 = __p;
            operator delete(__p);
          }

          if (v104)
          {
            v105 = v104;
            operator delete(v104);
          }

          if (v101)
          {
            v102 = v101;
            operator delete(v101);
          }
        }

        if (*v59)
        {
          pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc::HgiBufferBindDesc(&v101);
          v108 = 0x400000005;
          v109 = 4;
          v110 = 0;
          v100 = 0;
          sub_29A00D250(&v104, &v100);
          sub_29A03A998(&v101, v59);
          sub_29ADEB7F8(&v113, &v101);
          if (__p)
          {
            v107 = __p;
            operator delete(__p);
          }

          if (v104)
          {
            v105 = v104;
            operator delete(v104);
          }

          if (v101)
          {
            v102 = v101;
            operator delete(v101);
          }
        }

        v61 = (*(*Hgi + 144))(Hgi, v111);
        v63 = v62;
        v64 = operator new(0x28uLL);
        v64->__shared_owners_ = 0;
        v64->__shared_weak_owners_ = 0;
        v64->__vftable = &unk_2A2094318;
        v64[1].__vftable = v61;
        v64[1].__shared_owners_ = v63;
        v78 = v64 + 1;
        v79 = v64;
        v101 = &v115;
        sub_29AB88D58(&v101);
        v101 = &v113;
        sub_29AB88B40(&v101);
        if (v112 < 0)
        {
          operator delete(v111[0]);
        }

        sub_29ADEB100(&v80, &v78);
        if (v79)
        {
          sub_29A014BEC(v79);
        }
      }

      v65 = *v81;
      v66 = v81[1];
      pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterComputePipeline(a3, bswap64(0x9E3779B97F4A7C55 * (((v55 + 49) * (v55 + 48)) >> 1) - 0x55992D382208B010), &v101);
      if (__p == 1)
      {
        v67 = v86;
        v68 = pxrInternal__aapl__pxrReserved__::HgiComputePipelineDesc::HgiComputePipelineDesc(v111);
        MEMORY[0x29C2C1A60](v68);
        v113 = *(v67 + 64);
        v114 = 48;
        v69 = (*(*Hgi + 176))(Hgi, v111);
        v71 = v70;
        v72 = operator new(0x28uLL);
        v72->__shared_owners_ = 0;
        v72->__shared_weak_owners_ = 0;
        v72->__vftable = &unk_2A2093EA8;
        v72[1].__vftable = v69;
        v72[1].__shared_owners_ = v71;
        v78 = v72 + 1;
        v79 = v72;
        if (v112 < 0)
        {
          operator delete(v111[0]);
        }

        sub_29ADE7EC8(&v101, &v78);
        if (v79)
        {
          sub_29A014BEC(v79);
        }
      }

      v73 = *v102;
      v74 = *(v102 + 1);
      GlobalComputeCmds = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetGlobalComputeCmds(a3, 0);
      (*(*GlobalComputeCmds + 24))(GlobalComputeCmds, "Flat Normals Cmds");
      (*(*GlobalComputeCmds + 48))(GlobalComputeCmds, v65, v66);
      (*(*GlobalComputeCmds + 40))(GlobalComputeCmds, v73, v74);
      (*(*GlobalComputeCmds + 56))(GlobalComputeCmds, v73, v74, 0, 48, v88);
      (*(*GlobalComputeCmds + 64))(GlobalComputeCmds, v49, 1);
      (*(*GlobalComputeCmds + 32))(GlobalComputeCmds);
      if (v105 == 1)
      {
        std::mutex::unlock(v104);
      }

      if (v103)
      {
        sub_29A014BEC(v103);
      }

      if (v84 == 1)
      {
        std::mutex::unlock(v83);
      }

      if (v82)
      {
        sub_29A014BEC(v82);
      }
    }

    if (v87)
    {
      sub_29A014BEC(v87);
    }
  }

  if ((v89 & 7) != 0)
  {
    atomic_fetch_add_explicit((v89 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v91)
  {
    sub_29A014BEC(v91);
  }

  if (v93)
  {
    sub_29A014BEC(v93);
  }

  if (v95)
  {
    sub_29A014BEC(v95);
  }

  if (v97)
  {
    sub_29A014BEC(v97);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if (v76)
  {
    sub_29A014BEC(v76);
  }

  if (v77)
  {
    sub_29A014BEC(v77);
  }

LABEL_136:
  if (v98)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v99, v98);
  }
}

void sub_29AE513DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, std::__shared_weak_count *a35, uint64_t a36, std::__shared_weak_count *a37, char a38)
{
  if ((a29 & 7) != 0)
  {
    atomic_fetch_add_explicit((a29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a31)
  {
    sub_29A014BEC(a31);
  }

  if (a33)
  {
    sub_29A014BEC(a33);
  }

  if (a35)
  {
    sub_29A014BEC(a35);
  }

  if (a37)
  {
    sub_29A014BEC(a37);
  }

  if (v38)
  {
    sub_29A014BEC(v38);
  }

  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a11)
  {
    sub_29A014BEC(a11);
  }

  sub_29A0E9CEC(&a38);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_FlatNormalsComputationGPU::GetBufferSpecs(uint64_t a1, void *a2)
{
  LODWORD(v7) = *(a1 + 68);
  *(&v7 + 1) = 1;
  v3 = a2[1];
  if (v3 >= a2[2])
  {
    result = sub_29AE03FE4(a2, (a1 + 56), &v7);
  }

  else
  {
    v4 = v7;
    v5 = *(a1 + 56);
    *v3 = v5;
    if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v3 &= 0xFFFFFFFFFFFFFFF8;
    }

    v3[1] = v4;
    v3[2] = 1;
    result = (v3 + 3);
  }

  a2[1] = result;
  return result;
}

void sub_29AE51638(pxrInternal__aapl__pxrReserved__::HdBufferSource *this)
{
  *this = &unk_2A2097890;
  v2 = *(this + 7);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 6);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  *this = &unk_2A2075F38;
  v4 = *(this + 3);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(this);
}

void sub_29AE516D4(pxrInternal__aapl__pxrReserved__::HdBufferSource *this)
{
  *this = &unk_2A2097890;
  v2 = *(this + 7);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 6);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  *this = &unk_2A2075F38;
  v4 = *(this + 3);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(this);

  operator delete(v5);
}

void sub_29AE51774(pxrInternal__aapl__pxrReserved__::HdStComputation *this)
{
  *this = &unk_2A2097910;
  v2 = *(this + 7);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 6);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 4);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  pxrInternal__aapl__pxrReserved__::HdStComputation::~HdStComputation(this);
}

void sub_29AE5180C(pxrInternal__aapl__pxrReserved__::HdStComputation *this)
{
  *this = &unk_2A2097910;
  v2 = *(this + 7);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 6);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 4);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  pxrInternal__aapl__pxrReserved__::HdStComputation::~HdStComputation(this);

  operator delete(v6);
}

uint64_t *sub_29AE518A8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AE518C8(atomic_uint **a1, atomic_uint **a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29AE51A3C(a1);
}

void *sub_29AE51928(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29AE51BAC);
  return a2;
}

void *sub_29AE51A24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2097968;
  return sub_29A18ECC8(a2, v2);
}

void sub_29AE51A3C(atomic_uint **a1)
{
  v1 = *a1;
  if (*a1 && atomic_fetch_add_explicit(v1 + 10, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_29A213190(v1);

    operator delete(v1);
  }
}

BOOL sub_29AE51AA4(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && sub_29A18EAFC(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_29A18EAFC(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = *(a2 + 32);
  v7 = 4 * *a1 - 4;
  do
  {
    v9 = *v6++;
    v8 = v9;
    v10 = *v5++;
    result = v8 == v10;
    v11 = v8 != v10 || v7 == 0;
    v7 -= 4;
  }

  while (!v11);
  return result;
}

uint64_t sub_29AE51B44(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29AE51A3C(a1);
    *a1 = v4;
    v4 = 0;
    sub_29AE51A3C(&v4);
  }

  return *a1;
}

void *sub_29AE51BAC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  *a1 += 4;
  return pxrInternal__aapl__pxrReserved__::Vt_StreamOutGeneric(&unk_2A2097A38, v3, a2);
}

__n128 sub_29AE51BD0(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2097A58;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29AE51C1C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2097A58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_29AE51C4C(uint64_t a1, std::string *this)
{
  v3 = *(a1 + 16);
  if ((**(a1 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((**(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  std::string::operator=(this, EmptyString);
  LODWORD(this[1].__r_.__value_.__l.__data_) = 4;
  this[10].__r_.__value_.__l.__size_ = 0x100000040;
  LODWORD(this[10].__r_.__value_.__r.__words[2]) = 1;
  v30 = 0;
  v29 = 0;
  v5 = *(v3 + 64);
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  if (v5 == 15)
  {
    if (!v6)
    {
      v6 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    }

    v7 = (v6 + 96);
  }

  else
  {
    if (!v6)
    {
      v6 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    }

    v7 = (v6 + 88);
  }

  sub_29A166F2C(&v30, v7);
  v8 = *(v3 + 68);
  switch(v8)
  {
    case 29:
      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      if (!v12)
      {
        v12 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      }

      v10 = (v12 + 104);
      break;
    case 21:
      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      if (!v11)
      {
        v11 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      }

      v10 = (v11 + 88);
      break;
    case 15:
      v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      if (!v9)
      {
        v9 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      }

      v10 = (v9 + 96);
      break;
    default:
      goto LABEL_24;
  }

  sub_29A166F2C(&v29, v10);
LABEL_24:
  v13 = sub_29A008E78(&__p, "points");
  if ((v30 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v14 = ((v30 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v14 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v13);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddBuffer(this, &__p, v14, 1, 4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v15 = sub_29A008E78(&__p, "normals");
  if ((v29 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v16 = ((v29 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v16 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v15);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddWritableBuffer(this, &__p, v16, 2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "indices");
  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  if (!v17)
  {
    v17 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  }

  if ((*(v17 + 13) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v18 = ((*(v17 + 13) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v18 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v17);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddBuffer(this, &__p, v18, 3, 4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "primitiveParam");
  v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  if (!v19)
  {
    v19 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  }

  if ((*(v19 + 13) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v20 = ((*(v19 + 13) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v20 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v19);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddBuffer(this, &__p, v20, 4, 4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((atomic_load_explicit(&qword_2A174F1F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F1F0))
  {
    sub_29A008E78(qword_2A174F0D0, "vertexOffset");
    sub_29A008E78(qword_2A174F0E8, "elementOffset");
    sub_29A008E78(qword_2A174F100, "topologyOffset");
    sub_29A008E78(qword_2A174F118, "pointsOffset");
    sub_29A008E78(qword_2A174F130, "pointsStride");
    sub_29A008E78(qword_2A174F148, "normalsOffset");
    sub_29A008E78(qword_2A174F160, "normalsStride");
    sub_29A008E78(qword_2A174F178, "indexOffset");
    sub_29A008E78(qword_2A174F190, "indexStride");
    sub_29A008E78(qword_2A174F1A8, "pParamOffset");
    sub_29A008E78(qword_2A174F1C0, "pParamStride");
    sub_29A008E78(qword_2A174F1D8, "primIndexEnd");
    __cxa_atexit(sub_29AE522B8, 0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174F1F0);
  }

  v21 = qword_2A174F0D0;
  v22 = 288;
  do
  {
    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    if (!v23)
    {
      v23 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    }

    if ((*(v23 + 13) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v24 = ((*(v23 + 13) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v24 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v23);
    }

    memset(&__p, 0, sizeof(__p));
    pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddConstantParam(this, v21, v24, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    ++v21;
    v22 -= 24;
  }

  while (v22);
  sub_29A008E78(&__p, "hd_GlobalInvocationID");
  sub_29A008E78(&v27, "uvec3");
  v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  if (!v25)
  {
    v25 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  }

  if ((*(v25 + 17) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v26 = ((*(v25 + 17) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v26 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v25);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(this, &__p, &v27, v26);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AE521B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21)
{
  __cxa_guard_abort(&qword_2A174F1F0);
  if ((a21 & 7) != 0)
  {
    atomic_fetch_add_explicit((a21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(v21 - 40);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AE5226C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2097AB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29AE522B8()
{
  v0 = &byte_2A174F1EF;
  v1 = -288;
  v2 = &byte_2A174F1EF;
  do
  {
    v3 = *v2;
    v2 -= 24;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 24;
  }

  while (v1);
}

void *pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::HdSt_GeometricShader(void *a1, uint64_t a2, int a3, unsigned int a4, char a5, char a6, char a7, unsigned __int8 a8, float a9, int a10, char a11, int a12, pxrInternal__aapl__pxrReserved__::SdfPath *a13)
{
  v21 = a12;
  v46 = a4;
  v47 = a3;
  v45 = a8;
  v44 = a11;
  v22 = pxrInternal__aapl__pxrReserved__::HdStShaderCode::HdStShaderCode(a1);
  *v22 = &unk_2A2097AD8;
  *(v22 + 6) = a3;
  *(v22 + 7) = a4;
  *(v22 + 32) = a5;
  *(v22 + 33) = a6;
  *(v22 + 34) = a7;
  *(v22 + 35) = a8;
  *(v22 + 9) = a10;
  v22[6] = 0;
  v23 = v22 + 6;
  *(v22 + 10) = a9;
  *(v22 + 56) = a11;
  *(v22 + 15) = v21;
  v22[8] = 0;
  v24 = v22 + 8;
  sub_29A0ECEEC(&v42, "hdSt", "pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::HdSt_GeometricShader(const std::string &, PrimitiveType, HdCullStyle, BOOL, BOOL, BOOL, BOOL, HdPolygonMode, BOOL, FvarPatchType, const SdfPath &, float)");
  if (sub_29ADC9798(7))
  {
    v25 = pxrInternal__aapl__pxrReserved__::operator<<(MEMORY[0x29EDC93C8], a13);
    v26 = sub_29A00911C(v25, "\n", 1);
    v27 = *(a2 + 23);
    if (v27 >= 0)
    {
      v28 = a2;
    }

    else
    {
      v28 = *a2;
    }

    if (v27 >= 0)
    {
      v29 = *(a2 + 23);
    }

    else
    {
      v29 = *(a2 + 8);
    }

    v30 = sub_29A00911C(v26, v28, v29);
    sub_29A00911C(v30, "\n", 1);
  }

  sub_29A9EE25C(v37, a2, 24);
  v31 = operator new(0x138uLL);
  v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  if (!v32)
  {
    v32 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  }

  pxrInternal__aapl__pxrReserved__::HioGlslfx::HioGlslfx(v31, v37, v32 + 112);
  sub_29AE064D0(v23, v31);
  v36 = *(*v23 + 304);
  v48 = 0;
  v49 = 0;
  sub_29AE52DEC(&v48, v24, &v36, &v44, &v47, &v46, &v45, &a12);
  *v24 = bswap64(0x9E3779B97F4A7C55 * v48);
  v37[0] = *MEMORY[0x29EDC9528];
  v33 = *(MEMORY[0x29EDC9528] + 72);
  *(v37 + *(v37[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v37[2] = v33;
  v38 = MEMORY[0x29EDC9570] + 16;
  if (v40 < 0)
  {
    operator delete(v39[7].__locale_);
  }

  v38 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v39);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](&v41);
  if (v42)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v43, v42);
  }

  return a1;
}

{
  return pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::HdSt_GeometricShader(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}