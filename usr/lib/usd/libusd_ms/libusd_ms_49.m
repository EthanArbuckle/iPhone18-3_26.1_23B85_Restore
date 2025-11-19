BOOL sub_29A2823AC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v7 = a2 - 1;
        v13 = sub_29A153D90(a3, a1 + 1, a1);
        v14 = sub_29A153D90(a3, v7, a1 + 1);
        if (v13)
        {
          v8 = *a1;
          if (!v14)
          {
            *a1 = a1[1];
            a1[1] = v8;
            if (!sub_29A153D90(a3, v7, a1 + 1))
            {
              return 1;
            }

            v8 = a1[1];
            a1[1] = *v7;
            goto LABEL_16;
          }

LABEL_15:
          *a1 = *v7;
LABEL_16:
          *v7 = v8;
          return 1;
        }

        if (!v14)
        {
          return 1;
        }

        v19 = a1[1];
        a1[1] = *v7;
        *v7 = v19;
        break;
      case 4:
        sub_29A281D08(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        v9 = a2 - 1;
        sub_29A281D08(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!sub_29A153D90(a3, v9, a1 + 3))
        {
          return 1;
        }

        v10 = a1[3];
        a1[3] = *v9;
        *v9 = v10;
        if (!sub_29A153D90(a3, a1 + 3, a1 + 2))
        {
          return 1;
        }

        v11 = a1[2];
        a1[2] = a1[3];
        a1[3] = v11;
        if (!sub_29A153D90(a3, a1 + 2, a1 + 1))
        {
          return 1;
        }

        v12 = a1[1];
        a1[1] = a1[2];
        a1[2] = v12;
        break;
      default:
        goto LABEL_17;
    }

    if (sub_29A153D90(a3, a1 + 1, a1))
    {
      v20 = *a1;
      *a1 = a1[1];
      a1[1] = v20;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 1;
    if (sub_29A153D90(a3, a2 - 1, a1))
    {
      v8 = *a1;
      goto LABEL_15;
    }

    return 1;
  }

LABEL_17:
  v15 = a1 + 2;
  v16 = sub_29A153D90(a3, a1 + 1, a1);
  v17 = sub_29A153D90(a3, a1 + 2, a1 + 1);
  if (v16)
  {
    v18 = *a1;
    if (v17)
    {
      *a1 = a1[2];
      a1[2] = v18;
    }

    else
    {
      *a1 = a1[1];
      a1[1] = v18;
      if (sub_29A153D90(a3, a1 + 2, a1 + 1))
      {
        v23 = a1[1];
        a1[1] = *v15;
        *v15 = v23;
      }
    }
  }

  else if (v17)
  {
    v21 = a1[1];
    a1[1] = a1[2];
    a1[2] = v21;
    if (sub_29A153D90(a3, a1 + 1, a1))
    {
      v22 = *a1;
      *a1 = a1[1];
      a1[1] = v22;
    }
  }

  v24 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v25 = 0;
  v26 = 0;
  while (1)
  {
    if (sub_29A153D90(a3, v24, v15))
    {
      v34 = *v24;
      *v24 = 0;
      v27 = v25;
      while (1)
      {
        v28 = (a1 + v27 + 24);
        v29 = (a1 + v27 + 16);
        if (v29 != v28)
        {
          if ((*v28 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v28 = *v29;
          *v29 = 0;
        }

        if (v27 == -16)
        {
          break;
        }

        v30 = sub_29A153D90(a3, &v34, (a1 + v27 + 8));
        v27 -= 8;
        if ((v30 & 1) == 0)
        {
          v31 = (a1 + v27 + 24);
          goto LABEL_44;
        }
      }

      v31 = a1;
LABEL_44:
      if (&v34 == v31)
      {
        v32 = v34;
      }

      else
      {
        if ((*v31 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v32 = 0;
        *v31 = v34;
        v34 = 0;
      }

      if ((v32 & 7) != 0)
      {
        atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (++v26 == 8)
      {
        return v24 + 1 == a2;
      }
    }

    v15 = v24;
    v25 += 8;
    if (++v24 == a2)
    {
      return 1;
    }
  }
}

uint64_t *sub_29A28274C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_29A2828D8(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if (sub_29A153D90(a4, v12, a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          sub_29A2828D8(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 1;
      do
      {
        v15 = *a1;
        *a1 = 0;
        v16 = sub_29A282A78(a1, a4, v8);
        v17 = *v16;
        v18 = *v16 & 7;
        if (v14 == v16)
        {
          if (v18)
          {
            atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v16 = v15;
        }

        else
        {
          if (v18)
          {
            atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v16 = *v14;
          *v14 = v15;
          sub_29A282B50(a1, (v16 + 1), a4, v16 + 1 - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_29A2828D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v19[11] = v4;
    v19[12] = v5;
    v7 = a4;
    v8 = result;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - result) >> 3)
    {
      v12 = (a4 - result) >> 2;
      v13 = v12 + 1;
      v14 = (result + 8 * (v12 + 1));
      v15 = v12 + 2;
      if (v12 + 2 < a3 && sub_29A153D90(a2, (result + 8 * (v12 + 1)), v14 + 1))
      {
        ++v14;
        v13 = v15;
      }

      result = sub_29A153D90(a2, v14, v7);
      if ((result & 1) == 0)
      {
        v19[0] = *v7;
        *v7 = 0;
        do
        {
          v16 = v14;
          if (v14 != v7)
          {
            if ((*v7 & 7) != 0)
            {
              atomic_fetch_add_explicit((*v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            *v7 = *v14;
            *v14 = 0;
          }

          if (v9 < v13)
          {
            break;
          }

          v17 = (2 * v13) | 1;
          v14 = (v8 + 8 * v17);
          v18 = 2 * v13 + 2;
          if (v18 < a3 && sub_29A153D90(a2, (v8 + 8 * v17), v14 + 1))
          {
            ++v14;
            v17 = v18;
          }

          result = sub_29A153D90(a2, v14, v19);
          v7 = v16;
          v13 = v17;
        }

        while (!result);
        if (v19 == v16)
        {
          if ((v19[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((v19[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          if ((*v16 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v16 = v19[0];
        }
      }
    }
  }

  return result;
}

void *sub_29A282A78(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 < a3)
    {
      v12 = v8 + 2;
      if (sub_29A153D90(a2, v8 + 1, v8 + 2))
      {
        v9 = v12;
        v6 = v11;
      }
    }

    if (v9 != a1)
    {
      if ((*a1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *a1 = *v9;
      *v9 = 0;
    }

    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t sub_29A282B50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v13[9] = v4;
    v13[10] = v5;
    v8 = result;
    v9 = v6 >> 1;
    v10 = (result + 8 * (v6 >> 1));
    v11 = (a2 - 8);
    result = sub_29A153D90(a3, v10, (a2 - 8));
    if (result)
    {
      v13[0] = *v11;
      *v11 = 0;
      do
      {
        v12 = v10;
        if (v10 != v11)
        {
          if ((*v11 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v11 = *v10;
          *v10 = 0;
        }

        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = (v8 + 8 * v9);
        result = sub_29A153D90(a3, v10, v13);
        v11 = v12;
      }

      while ((result & 1) != 0);
      if (v13 == v12)
      {
        if ((v13[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v13[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        if ((*v12 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *v12 = v13[0];
      }
    }
  }

  return result;
}

void sub_29A282C6C(uint64_t a1, _BYTE *a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29A282D7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  sub_29A124AB0(va);
  sub_29A124AB0(va);
  sub_29A124AB0(va);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29A282DE4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if ((sub_29A1F0060(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::SdfListOp();
  }

  sub_29A283588(a1);
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::Swap();
}

void sub_29A282EBC(uint64_t a1, _BYTE *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  sub_29A186978(v4, a1);
  *(a1 + 8) = &off_2A2049C30;
  sub_29A283520(a1, a2);
}

void sub_29A282F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A282F8C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 152), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A282FAC(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A2830BC(a1);
}

void sub_29A2830A4(_BYTE **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2A2049C30;
  sub_29A283520(a2, v2);
}

void sub_29A2830BC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (atomic_fetch_add_explicit((v1 + 152), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      v2 = (v1 + 128);
      sub_29A124AB0(&v2);
      v2 = (v1 + 104);
      sub_29A124AB0(&v2);
      v2 = (v1 + 80);
      sub_29A124AB0(&v2);
      v2 = (v1 + 56);
      sub_29A124AB0(&v2);
      v2 = (v1 + 32);
      sub_29A124AB0(&v2);
      v2 = (v1 + 8);
      sub_29A124AB0(&v2);
      operator delete(v1);
    }
  }
}

unint64_t sub_29A283168(unsigned __int8 *a1)
{
  v2 = 0;
  v3 = 0;
  sub_29A2831D4(&v2, a1, (a1 + 8), (a1 + 32), (a1 + 56), (a1 + 80), (a1 + 104), (a1 + 128));
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2));
}

uint64_t sub_29A2831D4(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  if (*(a1 + 8))
  {
    v8 += (*a1 + v8 + (*a1 + v8) * (*a1 + v8)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v8;
  return sub_29A28321C(a1, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_29A28321C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a2;
  v8 = *(a2 + 8) - *a2;
  if (v8)
  {
    v9 = v8 >> 3;
    v10 = *a1;
    v11 = *(a1 + 8);
    do
    {
      v12 = *v7++;
      v13 = v12 & 0xFFFFFFFFFFFFFFF8;
      if (v11)
      {
        v10 = v13 + ((v13 + v10 + (v13 + v10) * (v13 + v10)) >> 1);
      }

      else
      {
        *(a1 + 8) = 1;
        v10 = v13;
      }

      v11 = 1;
      --v9;
    }

    while (v9);
    *a1 = v10;
  }

  return sub_29A283284(a1, a3, a4, a5, a6, a7);
}

uint64_t sub_29A283284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  v7 = *(a2 + 8) - *a2;
  if (v7)
  {
    v8 = v7 >> 3;
    v9 = *a1;
    v10 = *(a1 + 8);
    do
    {
      v11 = *v6++;
      v12 = v11 & 0xFFFFFFFFFFFFFFF8;
      if (v10)
      {
        v9 = v12 + ((v12 + v9 + (v12 + v9) * (v12 + v9)) >> 1);
      }

      else
      {
        *(a1 + 8) = 1;
        v9 = v12;
      }

      v10 = 1;
      --v8;
    }

    while (v8);
    *a1 = v9;
  }

  return sub_29A2832E8(a1, a3, a4, a5, a6);
}

uint64_t sub_29A2832E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *(a2 + 8) - *a2;
  if (v6)
  {
    v7 = v6 >> 3;
    v8 = *a1;
    v9 = *(a1 + 8);
    do
    {
      v10 = *v5++;
      v11 = v10 & 0xFFFFFFFFFFFFFFF8;
      if (v9)
      {
        v8 = v11 + ((v11 + v8 + (v11 + v8) * (v11 + v8)) >> 1);
      }

      else
      {
        *(a1 + 8) = 1;
        v8 = v11;
      }

      v9 = 1;
      --v7;
    }

    while (v7);
    *a1 = v8;
  }

  return sub_29A283348(a1, a3, a4, a5);
}

uint64_t sub_29A283348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  v5 = *(a2 + 8) - *a2;
  if (v5)
  {
    v6 = v5 >> 3;
    v7 = *a1;
    v8 = *(a1 + 8);
    do
    {
      v9 = *v4++;
      v10 = v9 & 0xFFFFFFFFFFFFFFF8;
      if (v8)
      {
        v7 = v10 + ((v10 + v7 + (v10 + v7) * (v10 + v7)) >> 1);
      }

      else
      {
        *(a1 + 8) = 1;
        v7 = v10;
      }

      v8 = 1;
      --v6;
    }

    while (v6);
    *a1 = v7;
  }

  return sub_29A2833A4(a1, a3, a4);
}

uint64_t sub_29A2833A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a2 + 8) - *a2;
  if (v4)
  {
    v5 = v4 >> 3;
    v6 = *a1;
    v7 = *(a1 + 8);
    do
    {
      v8 = *v3++;
      v9 = v8 & 0xFFFFFFFFFFFFFFF8;
      if (v7)
      {
        v6 = v9 + ((v9 + v6 + (v9 + v6) * (v9 + v6)) >> 1);
      }

      else
      {
        *(a1 + 8) = 1;
        v6 = v9;
      }

      v7 = 1;
      --v5;
    }

    while (v5);
    *a1 = v6;
  }

  return sub_29A2833FC(a1, a3);
}

uint64_t sub_29A2833FC(uint64_t result, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8) - *a2;
  if (v3)
  {
    v4 = v3 >> 3;
    v5 = *result;
    v6 = *(result + 8);
    do
    {
      v7 = *v2++;
      v8 = v7 & 0xFFFFFFFFFFFFFFF8;
      if (v6)
      {
        v5 = v8 + ((v8 + v5 + (v8 + v5) * (v8 + v5)) >> 1);
      }

      else
      {
        *(result + 8) = 1;
        v5 = v8;
      }

      v6 = 1;
      --v4;
    }

    while (v4);
    *result = v5;
  }

  return result;
}

uint64_t sub_29A283450(_BYTE **a1)
{
  v1 = atomic_load(*a1 + 38);
  if (v1 != 1)
  {
    sub_29A2834B8(*a1);
  }

  return *a1;
}

uint64_t sub_29A283588(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B294F50();
  }

  return sub_29A283450(a1);
}

void *sub_29A2835C4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  result[1] = v2;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ValueTypePrivate::CoreType::CoreType(uint64_t a1)
{
  v2 = pxrInternal__aapl__pxrReserved__::TfType::TfType(a1);
  *(v2 + 12) = 0;
  *(v2 + 8) = 0u;
  *(v2 + 7) = 0;
  *(v2 + 24) = 0u;
  v3 = MEMORY[0x29EDC94D0];
  *(v2 + 9) = 0;
  *(v2 + 10) = v3;
  *(v2 + 22) = 0;
  *(v2 + 13) = 0;
  *(v2 + 14) = 0;
  v5 = 0;
  sub_29A153214(v2 + 12, &v5);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(a1 + 80) = &unk_2A2049CE8;
  *(a1 + 88) = 1;
  return a1;
}

void sub_29A283680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A124AB0(&a10);
  sub_29A186B14(v11);
  v14 = *(v10 + 32);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(v10 + 31) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::Sdf_ValueTypePrivate::GetEmptyTypeName(pxrInternal__aapl__pxrReserved__::Sdf_ValueTypePrivate *this)
{
  if ((atomic_load_explicit(&qword_2A173F748, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A173F748))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeImpl::Sdf_ValueTypeImpl(&unk_2A173F728);
    __cxa_atexit(sub_29A2837B0, &unk_2A173F728, &dword_299FE7000);
    __cxa_guard_release(&qword_2A173F748);
  }

  return &unk_2A173F728;
}

uint64_t sub_29A2837B0(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeImpl *pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeImpl::Sdf_ValueTypeImpl(pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeImpl *this)
{
  *(this + 1) = 0;
  if ((atomic_load_explicit(&qword_2A173F7C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A173F7C8))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_ValueTypePrivate::CoreType::CoreType(&unk_2A173F750);
    __cxa_atexit(sub_29A28443C, &unk_2A173F750, &dword_299FE7000);
    __cxa_guard_release(&qword_2A173F7C8);
  }

  *this = &unk_2A173F750;
  *(this + 2) = this;
  *(this + 3) = this;
  return this;
}

void sub_29A283864(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_2A173F7C8);
  v3 = *(v1 + 8);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry *pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::Sdf_ValueTypeRegistry(pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry *this)
{
  v2 = operator new(0xC0uLL);
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *(v2 + 10) = 1065353216;
  v2[3] = 0u;
  v2[4] = 0u;
  *(v2 + 20) = 1065353216;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 17) = 0;
  *(v2 + 36) = 1065353216;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 46) = 1065353216;
  *this = v2;
  return this;
}

{
  v2 = operator new(0xC0uLL);
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *(v2 + 10) = 1065353216;
  v2[3] = 0u;
  v2[4] = 0u;
  *(v2 + 20) = 1065353216;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 17) = 0;
  *(v2 + 36) = 1065353216;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 46) = 1065353216;
  *this = v2;
  return this;
}

void pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::~Sdf_ValueTypeRegistry(pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    sub_29A286098(this, v1);
  }
}

{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    sub_29A286098(this, v1);
  }
}

void *pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::GetAllTypes@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry *this@<X0>, void *a2@<X8>)
{
  v3 = *this;
  v6 = 0;
  v5 = v3;
  tbb::spin_rw_mutex_v3::internal_acquire_reader(v3);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_29A284748(a2, *(v3 + 88), *(v3 + 96), (*(v3 + 96) - *(v3 + 88)) >> 3);
  return sub_29A0F845C(&v5);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(atomic_ullong **this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = *this;
  v9 = 0;
  v8 = v3;
  tbb::spin_rw_mutex_v3::internal_acquire_reader(v3);
  v4 = sub_29A16039C(v3 + 6, a2);
  if (v4)
  {
    v5 = v4 + 3;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::Sdf_ValueTypePrivate::GetEmptyTypeName(0);
    v5 = &unk_2A173F728;
  }

  sub_29A0F845C(&v8);
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName(&v7, v5);
  return v7;
}

void sub_29A283AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A0F845C(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(atomic_ullong **this, const char *a2)
{
  v2 = *this;
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v6, a2);
  v9 = 0;
  v8 = v2;
  tbb::spin_rw_mutex_v3::internal_acquire_reader(v2);
  v3 = sub_29A16039C(v2 + 6, &v6);
  if (v3)
  {
    v4 = v3 + 3;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::Sdf_ValueTypePrivate::GetEmptyTypeName(0);
    v4 = &unk_2A173F728;
  }

  sub_29A0F845C(&v8);
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName(&v7, v4);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v7;
}

void sub_29A283B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A0F845C(va);
  if ((a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(atomic_ullong **a1)
{
  v1 = *a1;
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v5);
  v8 = 0;
  v7 = v1;
  tbb::spin_rw_mutex_v3::internal_acquire_reader(v1);
  v2 = sub_29A16039C(v1 + 6, &v5);
  if (v2)
  {
    v3 = v2 + 3;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::Sdf_ValueTypePrivate::GetEmptyTypeName(0);
    v3 = &unk_2A173F728;
  }

  sub_29A0F845C(&v7);
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName(&v6, v3);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v6;
}

void sub_29A283C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A0F845C(va);
  if ((a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(atomic_ullong **this, const pxrInternal__aapl__pxrReserved__::TfType *a2, atomic_uint **a3)
{
  v3 = sub_29A283CA0(*this, a2, a3);
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName(&v5, v3);
  return v5;
}

void *sub_29A283CA0(atomic_ullong *a1, uint64_t *a2, atomic_uint **a3)
{
  v12 = 0;
  v11 = a1;
  tbb::spin_rw_mutex_v3::internal_acquire_reader(a1);
  v6 = *a3;
  v13 = *a2;
  v14 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v7;
    }
  }

  v8 = sub_29A2847C4(a1 + 1, &v13);
  if (v8 && (v8 = sub_29A16039C(a1 + 6, v8[16])) != 0)
  {
    v9 = v8 + 3;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::Sdf_ValueTypePrivate::GetEmptyTypeName(v8);
    v9 = &unk_2A173F728;
  }

  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0F845C(&v11);
  return v9;
}

void sub_29A283D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0F845C(&a9);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindType(atomic_ullong **this, const pxrInternal__aapl__pxrReserved__::VtValue *a2, atomic_uint **a3)
{
  v4 = *this;
  Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType(a2, a2);
  v5 = sub_29A283CA0(v4, &Type, a3);
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName(&v8, v5);
  return v8;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::FindOrCreateTypeName(atomic_ullong **this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = *this;
  v14 = 1;
  v13 = v3;
  tbb::spin_rw_mutex_v3::internal_acquire_writer(v3);
  v4 = sub_29A160470(v3 + 6, a2);
  if (v4 || (v4 = sub_29A160470(v3 + 19, a2)) != 0)
  {
    v5 = (v4 + 3);
  }

  else
  {
    v15 = a2;
    v7 = sub_29A2848A8((v3 + 14), a2, &unk_29B4D6118, &v15);
    v8 = v7;
    v9 = *a2;
    v15 = v9;
    if ((v9 & 7) != 0)
    {
      v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
      {
        v15 = v10;
      }
    }

    sub_29A153214(v7 + 15, &v15);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v15 = a2;
    v11 = sub_29A284C64((v3 + 19), a2, &unk_29B4D6118, &v15);
    v11[3] = v8 + 3;
    v5 = (v11 + 3);
    sub_29A166F2C(v11 + 4, (v8[16] - 8));
  }

  sub_29A0F845C(&v13);
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName(&v12, v5);
  return v12;
}

void sub_29A283F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0F845C(&a11);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::AddType(atomic_ullong **a1, uint64_t a2)
{
  if (*(a2 + 24) | *(a2 + 40))
  {
    Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType((a2 + 16), a2);
    sub_29A2841D8(&Type, a2 + 48, v9);
    v5 = pxrInternal__aapl__pxrReserved__::VtValue::GetType((a2 + 32), v4);
    sub_29A2841D8(&v5, a2 + 72, __p);
    pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::AddType(a1, a2, (a2 + 16), (a2 + 32), v9, __p, *(a2 + 96), *(a2 + 104), (a2 + 112), (a2 + 120));
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::TfType::TfType(&Type);
    sub_29A2841D8((a2 + 8), a2 + 48, v9);
    __p[0] = 0;
    __p[1] = 0;
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::AddType(a1, a2, (a2 + 8), &Type, v9, __p, *(a2 + 96), *(a2 + 104), (a2 + 112), (a2 + 120));
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_29A284060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v17 - 17) < 0)
  {
    operator delete(*(v17 - 40));
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::AddType(atomic_ullong **a1, unint64_t *a2, pxrInternal__aapl__pxrReserved__::VtValue *a3, pxrInternal__aapl__pxrReserved__::VtValue *a4, uint64_t a5, uint64_t a6, void *a7, _BOOL4 a8, uint64_t *a9, void *a10)
{
  v17 = *a1;
  v30 = 1;
  v29 = v17;
  tbb::spin_rw_mutex_v3::internal_acquire_writer(v17);
  Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType(a3, v18);
  v21 = pxrInternal__aapl__pxrReserved__::VtValue::GetType(a4, v20);
  v27 = 0;
  v28 = 0;
  if (*pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x29EDC9500], v22) == Type)
  {
    pxrInternal__aapl__pxrReserved__::TfType::TfType(&v26);
  }

  else
  {
    v26 = Type;
  }

  if (*pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x29EDC9500], v23) == v21)
  {
    pxrInternal__aapl__pxrReserved__::TfType::TfType(&v25);
  }

  else
  {
    v25 = v21;
  }

  sub_29A285014(v17, &v28, &v27, a2, &v26, &v25, a5, a6, a9, a10, a3, a4, a7, a8);
  return sub_29A0F845C(&v29);
}

void sub_29A2841B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A0F845C(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::TfType *sub_29A2841D8@<X0>(pxrInternal__aapl__pxrReserved__::TfType *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result;
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    if (*(a2 + 23))
    {
      *a3 = *a2;
      *(a3 + 16) = *(a2 + 16);
      return result;
    }

    goto LABEL_8;
  }

  v5 = *(a2 + 8);
  if (!v5)
  {
LABEL_8:
    result = pxrInternal__aapl__pxrReserved__::TfType::TfType(&v8);
    if (*v3 == v8)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }

    else
    {
      result = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v3);
      if (*(result + 23) < 0)
      {
        return sub_29A008D14(a3, *result, *(result + 1));
      }

      else
      {
        v7 = *result;
        *(a3 + 16) = *(result + 2);
        *a3 = v7;
      }
    }

    return result;
  }

  v6 = *a2;

  return sub_29A008D14(a3, v6, v5);
}

void *pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::AddType(atomic_ullong **a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5, uint64_t a6, void *a7, _BOOL4 a8, uint64_t *a9, void *a10)
{
  v24[2] = *MEMORY[0x29EDCA608];
  v17 = *a1;
  v22 = 1;
  v21 = v17;
  tbb::spin_rw_mutex_v3::internal_acquire_writer(v17);
  v19 = 0;
  v20 = 0;
  v24[1] = 0;
  v23[1] = 0;
  sub_29A285014(v17, &v20, &v19, a2, a3, a4, a5, a6, a9, a10, v24, v23, a7, a8);
  sub_29A186B14(v23);
  sub_29A186B14(v24);
  return sub_29A0F845C(&v21);
}

void sub_29A2843AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va2, a10);
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  sub_29A186B14(va1);
  sub_29A186B14(va2);
  sub_29A0F845C(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeRegistry::Clear(atomic_ullong **this)
{
  v1 = *this;
  v4 = 1;
  v3 = v1;
  tbb::spin_rw_mutex_v3::internal_acquire_writer(v1);
  sub_29A285F84((v1 + 1));
  sub_29A285FE0((v1 + 6));
  v1[12] = v1[11];
  sub_29A28603C((v1 + 14));
  sub_29A285FE0((v1 + 19));
  return sub_29A0F845C(&v3);
}

uint64_t sub_29A28443C(uint64_t a1)
{
  v4 = (a1 + 96);
  sub_29A124AB0(&v4);
  sub_29A186B14(a1 + 64);
  v2 = *(a1 + 32);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_29A2844A8(uint64_t a1)
{
  sub_29A2844E4(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A2844E4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A284528((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A284528(uint64_t a1)
{
  v3 = (a1 + 104);
  sub_29A124AB0(&v3);
  sub_29A186B14(a1 + 72);
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t sub_29A2845A8(uint64_t a1)
{
  sub_29A2845E4(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A2845E4(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v5 = v2[2];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_29A284648(uint64_t a1)
{
  sub_29A284684(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A284684(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A2846C8((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A2846C8(uint64_t a1)
{
  v4 = (a1 + 112);
  sub_29A124AB0(&v4);
  sub_29A186B14(a1 + 80);
  v2 = *(a1 + 48);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = *(a1 + 8);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void *sub_29A284748(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A00C968(result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_29A2847A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A2847C4(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2[1];
  v4 = bswap64(0x9E3779B97F4A7C55 * ((v3 & 0xFFFFFFFFFFFFFFF8) + (((v3 & 0xFFFFFFFFFFFFFFF8) + *a2 + ((v3 & 0xFFFFFFFFFFFFFFF8) + *a2) * ((v3 & 0xFFFFFFFFFFFFFFF8) + *a2)) >> 1)));
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v4;
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

  result = *v7;
  if (*v7)
  {
    do
    {
      v9 = result[1];
      if (v4 == v9)
      {
        if (result[2] == *a2 && (result[3] ^ v3) < 8)
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

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_29A2848A8(uint64_t a1, void *a2, uint64_t a3, uint64_t **a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v4 = v6;
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }
    }

    else
    {
      v4 = v6 & (v7 - 1);
    }

    v9 = *(*a1 + 8 * v4);
    if (v9)
    {
      result = *v9;
      if (*v9)
      {
        do
        {
          v11 = result[1];
          if (v11 == v6)
          {
            if ((result[2] ^ *a2) < 8)
            {
              return result;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v11 >= v7)
              {
                v11 %= v7;
              }
            }

            else
            {
              v11 &= v7 - 1;
            }

            if (v11 != v4)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29A284AE8(a1, v6, a4, &v22);
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_29A019AA0(a1, v17);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }

      else
      {
        v4 = v6;
      }
    }

    else
    {
      v4 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v4);
  if (v19)
  {
    result = v22;
    *v22 = *v19;
    *v19 = result;
  }

  else
  {
    v20 = v22;
    *v22 = *(a1 + 16);
    *(a1 + 16) = v20;
    *(v18 + 8 * v4) = a1 + 16;
    result = v22;
    if (*v22)
    {
      v21 = *(*v22 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v21 >= v7)
        {
          v21 %= v7;
        }
      }

      else
      {
        v21 &= v7 - 1;
      }

      *(*a1 + 8 * v21) = v22;
      result = v22;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29A284AD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A284C08(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29A284AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x90uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v10 = *a3;
  result = sub_29A284B6C((v8 + 2), &v10);
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_29A284B6C(uint64_t a1, uint64_t **a2)
{
  v3 = **a2;
  *a1 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::TfType::TfType((a1 + 8));
  *(a1 + 64) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v4 = MEMORY[0x29EDC94D0];
  *(a1 + 80) = 0;
  *(a1 + 88) = v4;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  return a1;
}

void sub_29A284C08(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A284528(v2 + 16);
    }

    operator delete(v2);
  }
}

void *sub_29A284C64(uint64_t a1, void *a2, uint64_t a3, uint64_t **a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v4 = v6;
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }
    }

    else
    {
      v4 = v6 & (v7 - 1);
    }

    v9 = *(*a1 + 8 * v4);
    if (v9)
    {
      result = *v9;
      if (*v9)
      {
        do
        {
          v11 = result[1];
          if (v11 == v6)
          {
            if ((result[2] ^ *a2) < 8)
            {
              return result;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v11 >= v7)
              {
                v11 %= v7;
              }
            }

            else
            {
              v11 &= v7 - 1;
            }

            if (v11 != v4)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29A284EB0(a1, v6, a4, &v22);
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_29A019AA0(a1, v17);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }

      else
      {
        v4 = v6;
      }
    }

    else
    {
      v4 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v4);
  if (v19)
  {
    result = v22;
    *v22 = *v19;
    *v19 = result;
  }

  else
  {
    v20 = v22;
    *v22 = *(a1 + 16);
    *(a1 + 16) = v20;
    *(v18 + 8 * v4) = a1 + 16;
    result = v22;
    if (*v22)
    {
      v21 = *(*v22 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v21 >= v7)
        {
          v21 %= v7;
        }
      }

      else
      {
        v21 &= v7 - 1;
      }

      *(*a1 + 8 * v21) = v22;
      result = v22;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29A284E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A284FC4(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A284EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x38uLL);
  a4[1] = a1;
  *a4 = v8;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v10 = *a3;
  result = sub_29A284F4C(v8 + 2, &v10);
  *(a4 + 16) = 1;
  return result;
}

void sub_29A284F30(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A284FC4(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_29A284F4C(void *a1, uint64_t **a2)
{
  v3 = **a2;
  *a1 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeImpl::Sdf_ValueTypeImpl((a1 + 1));
  return a1;
}

void sub_29A284FC4(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v2 = __p[4];
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 = __p[2];
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_29A285014(uint64_t a1, uint64_t *a2, char *a3, unint64_t *a4, unint64_t *a5, unint64_t *a6, uint64_t a7, uint64_t a8, uint64_t *a9, void *a10, void *a11, void *a12, void *a13, _BOOL4 a14)
{
  if (*a4 || (sub_29B294FBC(v68, a2, a3) & 1) != 0)
  {
    v20 = *(a7 + 23);
    if ((v20 & 0x80u) != 0)
    {
      v20 = *(a7 + 8);
    }

    if (v20)
    {
      goto LABEL_80;
    }

    v21 = *(a8 + 23);
    if ((v21 & 0x80u) != 0)
    {
      v21 = *(a8 + 8);
    }

    if (v21 || (sub_29B295024(v67) & 1) != 0)
    {
LABEL_80:
      pxrInternal__aapl__pxrReserved__::TfType::TfType(v66);
      if (*a5 != v66[0] || (pxrInternal__aapl__pxrReserved__::TfType::TfType(v66), *a6 != v66[0]) || (sub_29B2950B0(v66) & 1) != 0)
      {
        v22 = sub_29A16039C((a1 + 48), a4);
        if (v22)
        {
          v23 = v22 + 24;
          EmptyTypeName = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypePrivate::GetEmptyTypeName(v22);
          if (v23 != &unk_2A173F728)
          {
            EmptyTypeName = sub_29B29513C(v65);
            if ((EmptyTypeName & 1) == 0)
            {
              return;
            }
          }
        }

        else
        {
          v25 = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypePrivate::GetEmptyTypeName(0);
          EmptyTypeName = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypePrivate::GetEmptyTypeName(v25);
        }

        v56 = a8;
        if ((*a4 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          EmptyString = ((*a4 & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyTypeName);
        }

        if (*(EmptyString + 23) >= 0)
        {
          v27 = *(EmptyString + 23);
        }

        else
        {
          v27 = EmptyString[1];
        }

        sub_29A022DE0(__p, v27 + 2);
        if (v61 >= 0)
        {
          v28 = __p;
        }

        else
        {
          v28 = __p[0];
        }

        if (v27)
        {
          if (*(EmptyString + 23) >= 0)
          {
            v29 = EmptyString;
          }

          else
          {
            v29 = *EmptyString;
          }

          memmove(v28, v29, v27);
        }

        strcpy(v28 + v27, "[]");
        pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v64, __p, 0);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(__p[0]);
        }

        v30 = sub_29A16039C((a1 + 48), &v64);
        if (v30)
        {
          v31 = (v30 + 24) == &unk_2A173F728;
        }

        else
        {
          v30 = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypePrivate::GetEmptyTypeName(0);
          v31 = 1;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_ValueTypePrivate::GetEmptyTypeName(v30);
        if (!v31)
        {
          __p[0] = "sdf/valueTypeRegistry.cpp";
          __p[1] = "_AddType";
          v61 = 295;
          v62 = "BOOL pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Registry::_AddType(Sdf_ValueTypeImpl **, Sdf_ValueTypeImpl **, const TfToken &, const TfType &, const TfType &, const std::string &, const std::string &, const TfToken &, const SdfTupleDimensions &, const VtValue &, const VtValue &, TfEnum)";
          v63 = 0;
          v53 = v64 & 0xFFFFFFFFFFFFFFF8;
          if ((v64 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v54 = (v53 + 16);
            if (*(v53 + 39) < 0)
            {
              v54 = *v54;
            }
          }

          else
          {
            v54 = "";
          }

          v55 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Type '%s' already exists", v32, v33, v54);
          if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(__p, "existing == Sdf_ValueTypePrivate::GetEmptyTypeName()", v55) & 1) == 0)
          {
LABEL_70:
            if ((v64 & 7) != 0)
            {
              atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            return;
          }
        }

        v34 = a13;
        if (a14)
        {
          v35 = a14;
        }

        else
        {
          v36 = strcmp((*(MEMORY[0x29EDC94D0] + 8) & 0x7FFFFFFFFFFFFFFFLL), (a13[1] & 0x7FFFFFFFFFFFFFFFLL));
          v35 = v36 == 0;
          if (!v36)
          {
            v34 = &unk_2A2049CE8;
          }
        }

        pxrInternal__aapl__pxrReserved__::TfType::TfType(__p);
        if (*a5 == __p[0])
        {
          v38 = 0;
        }

        else
        {
          v38 = sub_29A2855BC(a1, a4, a5, a7, a9, a10, a11, v37, v34, v35);
          if (!v38)
          {
            goto LABEL_70;
          }
        }

        v39 = pxrInternal__aapl__pxrReserved__::TfType::TfType(__p);
        if (*a6 == __p[0])
        {
          v41 = 0;
          if (v38)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v39 = sub_29A2855BC(a1, &v64, a6, v56, a9, a10, a12, v40, v34, v35);
          v41 = v39;
          if (!v39)
          {
            goto LABEL_70;
          }

          if (v38)
          {
LABEL_46:
            __p[0] = a4;
            v39 = sub_29A284C64(a1 + 48, a4, &unk_29B4D6118, __p);
            *a2 = v39 + 24;
            *(v39 + 3) = v38;
            v42 = *a4;
            if ((*a4 & 7) != 0 && (atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v42 &= 0xFFFFFFFFFFFFFFF8;
            }

            v43 = *a2;
            v44 = *(*a2 + 8);
            if ((v44 & 7) != 0)
            {
              atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            *(v43 + 8) = v42;
            if (v41)
            {
              goto LABEL_52;
            }

            goto LABEL_60;
          }
        }

        *a2 = 0;
        if (v41)
        {
LABEL_52:
          __p[0] = &v64;
          v39 = sub_29A284C64(a1 + 48, &v64, &unk_29B4D6118, __p);
          *a3 = v39 + 24;
          *(v39 + 3) = v41;
          v45 = v64;
          if ((v64 & 7) != 0 && (atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v45 &= 0xFFFFFFFFFFFFFFF8;
          }

          v46 = *a3;
          v47 = *(*a3 + 8);
          if ((v47 & 7) != 0)
          {
            atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *(v46 + 8) = v45;
          goto LABEL_61;
        }

LABEL_60:
        *a3 = 0;
LABEL_61:
        if (*a2)
        {
          *(*a2 + 16) = *a2;
          v48 = *a3;
          if (!*a3)
          {
            pxrInternal__aapl__pxrReserved__::Sdf_ValueTypePrivate::GetEmptyTypeName(v39);
            v48 = &unk_2A173F728;
          }

          *(*a2 + 24) = v48;
          pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName(__p, *a2);
          v59 = __p[0];
          sub_29A0A71C8(a1 + 88, &v59);
        }

        v49 = *a3;
        if (*a3)
        {
          v50 = *a2;
          if (*a2)
          {
            v51 = a3;
          }

          else
          {
            pxrInternal__aapl__pxrReserved__::Sdf_ValueTypePrivate::GetEmptyTypeName(v39);
            v51 = a3;
            v49 = *a3;
            v50 = &unk_2A173F728;
          }

          *(v49 + 16) = v50;
          v52 = *v51;
          *(v52 + 24) = v52;
          pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName(__p, v52);
          v59 = __p[0];
          sub_29A0A71C8(a1 + 88, &v59);
        }

        goto LABEL_70;
      }
    }
  }
}

void sub_29A285570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if ((a24 & 7) != 0)
  {
    atomic_fetch_add_explicit((a24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A2855BC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, int a10)
{
  pxrInternal__aapl__pxrReserved__::TfType::TfType(v66);
  if (*a3 == v66[0] && (sub_29B2951C8(v66) & 1) == 0)
  {
    return 0;
  }

  v18 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x29EDC9500], v17);
  v19 = *a3;
  if (*a3 == *v18)
  {
    if (sub_29B295254(v65, a2, a3, &v58))
    {
      return 0;
    }

    v19 = v58;
  }

  v20 = *a5;
  v63 = v19;
  v64 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v64 &= 0xFFFFFFFFFFFFFFF8;
  }

  v58 = &v63;
  v21 = sub_29A285BAC(a1 + 8, &v63, &unk_29B4D6118, &v58);
  pxrInternal__aapl__pxrReserved__::TfType::TfType(&v58);
  v24 = v21 + 4;
  v25 = v21[4];
  if (v25 == v58)
  {
    v21[4] = *a3;
    std::string::operator=((v21 + 5), a4);
    sub_29A166F2C(v21 + 8, a5);
    v34 = a6[2];
    *(v21 + 9) = *a6;
    v21[11] = v34;
    sub_29A1854E8(v21 + 12, a7);
    v21[14] = a9;
    *(v21 + 30) = a10;
    v35 = *a2;
    v58 = v35;
    if ((v35 & 7) != 0)
    {
      v36 = (v35 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed) & 1) == 0)
      {
        v58 = v36;
      }
    }

    sub_29A153214(v21 + 16, &v58);
    if ((v58 & 7) != 0)
    {
      atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if (v25 == *a3)
    {
      goto LABEL_8;
    }

    v58 = "sdf/valueTypeRegistry.cpp";
    v59 = "_AddCoreType";
    v60 = 438;
    v61 = "const Registry::CoreType *pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Registry::_AddCoreType(const TfToken &, const TfType &, const std::string &, const TfToken &, const SdfTupleDimensions &, const VtValue &, TfEnum)";
    LOBYTE(v62) = 0;
    v38 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v38)
    {
      v39 = (v38 + 16);
      if (*(v38 + 39) < 0)
      {
        v39 = *v39;
      }
    }

    else
    {
      v39 = "";
    }

    v49 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Internal error: unexpected core type for '%s'", v22, v23, v39);
    if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v58, "coreType.type == tfType", v49))
    {
LABEL_8:
      v26 = *(v21 + 63);
      if (v26 >= 0)
      {
        v27 = *(v21 + 63);
      }

      else
      {
        v27 = v21[6];
      }

      v28 = *(a4 + 23);
      v29 = v28;
      if ((v28 & 0x80u) != 0)
      {
        v28 = *(a4 + 8);
      }

      if (v27 == v28)
      {
        v30 = v26 >= 0 ? v21 + 5 : v21[5];
        v31 = v29 >= 0 ? a4 : *a4;
        if (!memcmp(v30, v31, v27))
        {
          goto LABEL_21;
        }
      }

      v58 = "sdf/valueTypeRegistry.cpp";
      v59 = "_AddCoreType";
      v60 = 442;
      v61 = "const Registry::CoreType *pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Registry::_AddCoreType(const TfToken &, const TfType &, const std::string &, const TfToken &, const SdfTupleDimensions &, const VtValue &, TfEnum)";
      LOBYTE(v62) = 0;
      v40 = *a2 & 0xFFFFFFFFFFFFFFF8;
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

      v50 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Mismatched C++ name for core type '%s'", v22, v27, v41);
      if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v58, "coreType.cppTypeName == cppTypeName", v50))
      {
LABEL_21:
        v32 = v21[8];
        v33 = *a5;
        if ((*a5 ^ v32) < 8)
        {
          goto LABEL_69;
        }

        v58 = "sdf/valueTypeRegistry.cpp";
        v59 = "_AddCoreType";
        v60 = 449;
        v61 = "const Registry::CoreType *pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Registry::_AddCoreType(const TfToken &, const TfType &, const std::string &, const TfToken &, const SdfTupleDimensions &, const VtValue &, TfEnum)";
        LOBYTE(v62) = 0;
        v42 = v32 & 0xFFFFFFFFFFFFFFF8;
        if (v42)
        {
          v43 = (v42 + 16);
          if (*(v42 + 39) < 0)
          {
            v43 = *v43;
          }
        }

        else
        {
          v43 = "";
        }

        v51 = v33 & 0xFFFFFFFFFFFFFFF8;
        if (v51)
        {
          v52 = (v51 + 16);
          if (*(v51 + 39) < 0)
          {
            v52 = *v52;
          }
        }

        else
        {
          v52 = "";
        }

        TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a3);
        v56 = *(TypeName + 23) >= 0 ? TypeName : *TypeName;
        v57 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Mismatched roles '%s' and '%s' for core type '%s'", v54, v55, v43, v52, v56, v58, v59, v60, v61, v62, v63);
        if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v58, "coreType.role == role", v57))
        {
LABEL_69:
          if (pxrInternal__aapl__pxrReserved__::SdfTupleDimensions::operator==(v21 + 9, a6) || ((v58 = "sdf/valueTypeRegistry.cpp", v59 = "_AddCoreType", v60 = 454, v61 = "const Registry::CoreType *pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Registry::_AddCoreType(const TfToken &, const TfType &, const std::string &, const TfToken &, const SdfTupleDimensions &, const VtValue &, TfEnum)", LOBYTE(v62) = 0, v44 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a3), *(v44 + 23) >= 0) ? (v47 = v44) : (v47 = *v44), v48 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Mismatched dimensions for core type '%s'", v45, v46, v47), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v58, "coreType.dim == dimensions", v48) & 1) != 0))
          {
            pxrInternal__aapl__pxrReserved__::VtValue::operator==();
          }
        }
      }
    }

    v24 = 0;
  }

  if ((v64 & 7) != 0)
  {
    atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v24;
}

void sub_29A285B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if ((a18 & 7) != 0)
  {
    atomic_fetch_add_explicit((a18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void *sub_29A285BAC(uint64_t a1, void *a2, uint64_t a3, void **a4)
{
  v6 = a2[1];
  v7 = bswap64(0x9E3779B97F4A7C55 * ((v6 & 0xFFFFFFFFFFFFFFF8) + (((v6 & 0xFFFFFFFFFFFFFFF8) + *a2 + ((v6 & 0xFFFFFFFFFFFFFFF8) + *a2) * ((v6 & 0xFFFFFFFFFFFFFFF8) + *a2)) >> 1)));
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v4 = v7;
      if (v7 >= v8)
      {
        v4 = v7 % v8;
      }
    }

    else
    {
      v4 = v7 & (v8 - 1);
    }

    v10 = *(*a1 + 8 * v4);
    if (v10)
    {
      result = *v10;
      if (*v10)
      {
        do
        {
          v12 = result[1];
          if (v12 == v7)
          {
            if (result[2] == *a2 && (result[3] ^ v6) < 8)
            {
              return result;
            }
          }

          else
          {
            if (v9.u32[0] > 1uLL)
            {
              if (v12 >= v8)
              {
                v12 %= v8;
              }
            }

            else
            {
              v12 &= v8 - 1;
            }

            if (v12 != v4)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29A285DFC(a1, v7, a4, &v24);
  v14 = (*(a1 + 24) + 1);
  v15 = *(a1 + 32);
  if (!v8 || (v15 * v8) < v14)
  {
    v16 = 1;
    if (v8 >= 3)
    {
      v16 = (v8 & (v8 - 1)) != 0;
    }

    v17 = v16 | (2 * v8);
    v18 = vcvtps_u32_f32(v14 / v15);
    if (v17 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    sub_29A019AA0(a1, v19);
    v8 = *(a1 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v4 = v7 % v8;
      }

      else
      {
        v4 = v7;
      }
    }

    else
    {
      v4 = (v8 - 1) & v7;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * v4);
  if (v21)
  {
    result = v24;
    *v24 = *v21;
    *v21 = result;
  }

  else
  {
    v22 = v24;
    *v24 = *(a1 + 16);
    *(a1 + 16) = v22;
    *(v20 + 8 * v4) = a1 + 16;
    result = v24;
    if (*v24)
    {
      v23 = *(*v24 + 8);
      if ((v8 & (v8 - 1)) != 0)
      {
        if (v23 >= v8)
        {
          v23 %= v8;
        }
      }

      else
      {
        v23 &= v8 - 1;
      }

      *(*a1 + 8 * v23) = v24;
      result = v24;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29A285DE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A285F28(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29A285DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x98uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v10 = *a3;
  result = sub_29A285E80((v8 + 2), &v10);
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_29A285E80(uint64_t a1, void **a2)
{
  v3 = *a2;
  *a1 = **a2;
  v4 = v3[1];
  *(a1 + 8) = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::TfType::TfType((a1 + 16));
  *(a1 + 72) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v5 = MEMORY[0x29EDC94D0];
  *(a1 + 88) = 0;
  *(a1 + 96) = v5;
  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  return a1;
}

void sub_29A285F28(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A2846C8(v2 + 16);
    }

    operator delete(v2);
  }
}

void sub_29A285F84(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29A284684(a1, *(a1 + 16));
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

void sub_29A285FE0(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29A2845E4(a1, *(a1 + 16));
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

void sub_29A28603C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29A2844E4(a1, *(a1 + 16));
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

void sub_29A286098(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A2845A8((a2 + 19));
    sub_29A2844A8((a2 + 14));
    v3 = a2[11];
    if (v3)
    {
      a2[12] = v3;
      operator delete(v3);
    }

    sub_29A2845A8((a2 + 6));
    sub_29A284648((a2 + 1));

    operator delete(a2);
  }
}

uint64_t sub_29A286104@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 16) = v2;
  *(result + 24) = a2;
  *(result + 32) = 0;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::ConstantNode<long long>::ConstantNode(void *result, uint64_t a2)
{
  *result = &unk_2A2049D08;
  result[1] = a2;
  return result;
}

{
  *result = &unk_2A2049D08;
  result[1] = a2;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::ConstantNode<long long>::Evaluate@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = *(result + 8);
  a2[1] = &unk_2A2044A3B;
  a2[3] = 0;
  a2[4] = 0;
  a2[2] = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::ConstantNode<BOOL>::ConstantNode(uint64_t result, char a2)
{
  *result = &unk_2A2049D30;
  *(result + 8) = a2;
  return result;
}

{
  *result = &unk_2A2049D30;
  *(result + 8) = a2;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::ConstantNode<BOOL>::Evaluate@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(result + 8);
  *(a2 + 8) = &unk_2A20443C3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::ComparisonNode<std::equal_to>::ComparisonNode(void *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  *a2 = 0;
  *result = &unk_2A2049D58;
  result[1] = v3;
  v4 = *a3;
  *a3 = 0;
  result[2] = v4;
  return result;
}

{
  v3 = *a2;
  *a2 = 0;
  *result = &unk_2A2049D58;
  result[1] = v3;
  v4 = *a3;
  *a3 = 0;
  result[2] = v4;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::ComparisonNode<std::equal_to>::Evaluate@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38[3] = *MEMORY[0x29EDCA608];
  (*(**(a1 + 8) + 16))(v37);
  (*(**(a1 + 16) + 16))(&v35);
  sub_29A28658C(v37, &v35, &v29);
  v6 = v29;
  v5 = v30;
  if (v29 == v30)
  {
    Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType(v37, v4);
    if (Type == pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v35, v9))
    {
      *&v27 = &v35;
      sub_29A2866A4(v37, &v27, a2);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::GetValueTypeName(v37, &v23);
      v10 = v24;
      v11 = v23.__vftable;
      pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::GetValueTypeName(&v35, &v21);
      v14 = &v23;
      if (v10 < 0)
      {
        v14 = v11;
      }

      if (v22 >= 0)
      {
        v15 = &v21;
      }

      else
      {
        v15 = v21.__vftable;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Cannot compare values of type %s and %s", v12, v13, v14, v15);
      if (v26 >= 0)
      {
        v18 = &v25;
      }

      else
      {
        v18 = v25;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v16, v17, "eq", v18);
      v27 = 0uLL;
      v28 = 0;
      sub_29A280C48(&v27, &__p, &v35, 1uLL);
      *(a2 + 8) = 0;
      *(a2 + 16) = v27;
      *(a2 + 32) = v28;
      v27 = 0uLL;
      v28 = 0;
      v32 = &v27;
      sub_29A012C90(&v32);
      if (v34 < 0)
      {
        operator delete(__p);
      }

      if (v26 < 0)
      {
        operator delete(v25);
      }

      if (v22 < 0)
      {
        operator delete(v21.__vftable);
      }

      if (v24 < 0)
      {
        operator delete(v23.__vftable);
      }
    }
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = v6;
    v7 = v31;
    *(a2 + 24) = v5;
    *(a2 + 32) = v7;
    v30 = 0;
    v31 = 0;
    v29 = 0;
  }

  *&v27 = &v29;
  sub_29A012C90(&v27);
  v29 = &v36;
  sub_29A012C90(&v29);
  v19 = sub_29A186B14(&v35);
  *&v35 = v38;
  sub_29A012C90(v19);
  return sub_29A186B14(v37);
}

void sub_29A2864DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char *a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a43 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  a30 = &a34;
  sub_29A012C90(&a30);
  sub_29A2884E8(v43 - 136);
  sub_29A2884E8(v43 - 96);
  _Unwind_Resume(a1);
}

char *sub_29A28658C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  sub_29A2932AC(a3, a1);
  return sub_29A2932AC(a3, a2);
}

void sub_29A2865D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A012C90(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::GetValueTypeName(pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl *this@<X0>, std::type_info *a2@<X8>)
{
  v5 = sub_29A293714(this);
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v6 = "BOOL";
      goto LABEL_12;
    }

    if (v5 == 2)
    {
      v6 = "int";
      goto LABEL_12;
    }

LABEL_14:
    pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(this, a2);
    return;
  }

  if (v5 == 5)
  {
    v6 = "None";
    goto LABEL_12;
  }

  if (v5 == 4)
  {
    v6 = "list";
    goto LABEL_12;
  }

  if (v5 != 3)
  {
    goto LABEL_14;
  }

  v6 = "string";
LABEL_12:
  sub_29A008E78(a2, v6);
}

void sub_29A2866A4(uint64_t a1@<X0>, unsigned __int8 **a2@<X1>, uint64_t a3@<X8>)
{
  switch(sub_29A29C774(a1))
  {
    case 0u:

      sub_29A29C828(a1, a2, a3);
      break;
    case 1u:
      v53 = *(a1 + 8);
      if ((v53 & 4) != 0)
      {
        (*((v53 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29C950(a3);
      break;
    case 2u:
      v49 = *(a1 + 8);
      if ((v49 & 4) != 0)
      {
        (*((v49 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29CA90(a3);
      break;
    case 3u:
      v52 = *(a1 + 8);
      if ((v52 & 4) != 0)
      {
        (*((v52 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29CBD0(a3);
      break;
    case 4u:
      v40 = *(a1 + 8);
      if ((v40 & 4) != 0)
      {
        (*((v40 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29CD10(a3);
      break;
    case 5u:
      v62 = *(a1 + 8);
      if ((v62 & 4) != 0)
      {
        (*((v62 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29CE50(a3);
      break;
    case 6u:
      v67 = *(a1 + 8);
      if ((v67 & 4) != 0)
      {
        (*((v67 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29CF90(a3);
      break;
    case 7u:

      sub_29A29C8BC(a1, a2, a3);
      break;
    case 8u:
      v70 = *(a1 + 8);
      if ((v70 & 4) != 0)
      {
        (*((v70 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29D0D0(a3);
      break;
    case 9u:
      v46 = *(a1 + 8);
      if ((v46 & 4) != 0)
      {
        (*((v46 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29D210(a3);
      break;
    case 0xAu:
      v69 = *(a1 + 8);
      if ((v69 & 4) != 0)
      {
        (*((v69 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29D350(a3);
      break;
    case 0xBu:
      v37 = *(a1 + 8);
      if ((v37 & 4) != 0)
      {
        (*((v37 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29D490(a3);
      break;
    case 0xCu:
      v44 = *(a1 + 8);
      if ((v44 & 4) != 0)
      {
        v45 = (*((v44 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      else
      {
        v45 = *a1;
      }

      sub_29A29D5D0(a2, v45, a3);
      break;
    case 0xDu:
      v66 = *(a1 + 8);
      if ((v66 & 4) != 0)
      {
        (*((v66 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29D644(a3);
      break;
    case 0xEu:
      v32 = *(a1 + 8);
      if ((v32 & 4) != 0)
      {
        (*((v32 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29D784(a3);
      break;
    case 0xFu:
      v50 = *(a1 + 8);
      if ((v50 & 4) != 0)
      {
        (*((v50 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29D8C4(a3);
      break;
    case 0x10u:
      v29 = *(a1 + 8);
      if ((v29 & 4) != 0)
      {
        (*((v29 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29DA04(a3);
      break;
    case 0x11u:
      v56 = *(a1 + 8);
      if ((v56 & 4) != 0)
      {
        (*((v56 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29DB44(a3);
      break;
    case 0x12u:
      v68 = *(a1 + 8);
      if ((v68 & 4) != 0)
      {
        (*((v68 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29DC84(a3);
      break;
    case 0x13u:
      v78 = *(a1 + 8);
      if ((v78 & 4) != 0)
      {
        (*((v78 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29DDC4(a3);
      break;
    case 0x14u:
      v60 = *(a1 + 8);
      if ((v60 & 4) != 0)
      {
        (*((v60 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29DF04(a3);
      break;
    case 0x15u:
      v65 = *(a1 + 8);
      if ((v65 & 4) != 0)
      {
        (*((v65 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29E044(a3);
      break;
    case 0x16u:
      v75 = *(a1 + 8);
      if ((v75 & 4) != 0)
      {
        (*((v75 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29E184(a3);
      break;
    case 0x17u:
      v82 = *(a1 + 8);
      if ((v82 & 4) != 0)
      {
        (*((v82 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29E2C4(a3);
      break;
    case 0x18u:
      v48 = *(a1 + 8);
      if ((v48 & 4) != 0)
      {
        (*((v48 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29E404(a3);
      break;
    case 0x19u:
      v47 = *(a1 + 8);
      if ((v47 & 4) != 0)
      {
        (*((v47 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29E544(a3);
      break;
    case 0x1Au:
      v86 = *(a1 + 8);
      if ((v86 & 4) != 0)
      {
        (*((v86 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29E684(a3);
      break;
    case 0x1Bu:
      v27 = *(a1 + 8);
      if ((v27 & 4) != 0)
      {
        (*((v27 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29E7C4(a3);
      break;
    case 0x1Cu:
      v83 = *(a1 + 8);
      if ((v83 & 4) != 0)
      {
        (*((v83 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29E904(a3);
      break;
    case 0x1Du:
      v84 = *(a1 + 8);
      if ((v84 & 4) != 0)
      {
        (*((v84 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29EA44(a3);
      break;
    case 0x1Eu:
      v71 = *(a1 + 8);
      if ((v71 & 4) != 0)
      {
        (*((v71 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29EB84(a3);
      break;
    case 0x1Fu:
      v55 = *(a1 + 8);
      if ((v55 & 4) != 0)
      {
        (*((v55 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29ECC4(a3);
      break;
    case 0x20u:
      v72 = *(a1 + 8);
      if ((v72 & 4) != 0)
      {
        (*((v72 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29EE04(a3);
      break;
    case 0x21u:
      v33 = *(a1 + 8);
      if ((v33 & 4) != 0)
      {
        (*((v33 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29EF44(a3);
      break;
    case 0x22u:
      v28 = *(a1 + 8);
      if ((v28 & 4) != 0)
      {
        (*((v28 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29F084(a3);
      break;
    case 0x23u:
      v24 = *(a1 + 8);
      if ((v24 & 4) != 0)
      {
        (*((v24 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29F1C4(a3);
      break;
    case 0x24u:
      v25 = *(a1 + 8);
      if ((v25 & 4) != 0)
      {
        (*((v25 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29F304(a3);
      break;
    case 0x25u:
      v19 = *(a1 + 8);
      if ((v19 & 4) != 0)
      {
        (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29F444(a3);
      break;
    case 0x26u:
      v85 = *(a1 + 8);
      if ((v85 & 4) != 0)
      {
        (*((v85 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29F584(a3);
      break;
    case 0x27u:
      v77 = *(a1 + 8);
      if ((v77 & 4) != 0)
      {
        (*((v77 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29F6C4(a3);
      break;
    case 0x28u:
      v41 = *(a1 + 8);
      if ((v41 & 4) != 0)
      {
        (*((v41 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29F804(a3);
      break;
    case 0x29u:
      v58 = *(a1 + 8);
      if ((v58 & 4) != 0)
      {
        (*((v58 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29F944(a3);
      break;
    case 0x2Au:
      v80 = *(a1 + 8);
      if ((v80 & 4) != 0)
      {
        (*((v80 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29FA84(a3);
      break;
    case 0x2Bu:
      v15 = *(a1 + 8);
      if ((v15 & 4) != 0)
      {
        (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29FBC4(a3);
      break;
    case 0x2Cu:
      v31 = *(a1 + 8);
      if ((v31 & 4) != 0)
      {
        (*((v31 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29FD04(a3);
      break;
    case 0x2Du:
      v73 = *(a1 + 8);
      if ((v73 & 4) != 0)
      {
        (*((v73 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29FE44(a3);
      break;
    case 0x2Eu:
      v91 = *(a1 + 8);
      if ((v91 & 4) != 0)
      {
        (*((v91 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A29FF84(a3);
      break;
    case 0x2Fu:
      v21 = *(a1 + 8);
      if ((v21 & 4) != 0)
      {
        (*((v21 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A00C4(a3);
      break;
    case 0x30u:
      v34 = *(a1 + 8);
      if ((v34 & 4) != 0)
      {
        (*((v34 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A0204(a3);
      break;
    case 0x31u:
      v39 = *(a1 + 8);
      if ((v39 & 4) != 0)
      {
        (*((v39 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A0344(a3);
      break;
    case 0x32u:
      v13 = *(a1 + 8);
      if ((v13 & 4) != 0)
      {
        (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A0484(a3);
      break;
    case 0x33u:
      v95 = *(a1 + 8);
      if ((v95 & 4) != 0)
      {
        (*((v95 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A05C4(a3);
      break;
    case 0x34u:
      v90 = *(a1 + 8);
      if ((v90 & 4) != 0)
      {
        (*((v90 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A0704(a3);
      break;
    case 0x35u:
      v20 = *(a1 + 8);
      if ((v20 & 4) != 0)
      {
        (*((v20 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A0844(a3);
      break;
    case 0x36u:
      v87 = *(a1 + 8);
      if ((v87 & 4) != 0)
      {
        (*((v87 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A0984(a3);
      break;
    case 0x37u:
      v89 = *(a1 + 8);
      if ((v89 & 4) != 0)
      {
        (*((v89 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A0AC4(a3);
      break;
    case 0x38u:
      v22 = *(a1 + 8);
      if ((v22 & 4) != 0)
      {
        (*((v22 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A0C04(a3);
      break;
    case 0x39u:
      v79 = *(a1 + 8);
      if ((v79 & 4) != 0)
      {
        (*((v79 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A0D44(a3);
      break;
    case 0x3Au:
      v35 = *(a1 + 8);
      if ((v35 & 4) != 0)
      {
        (*((v35 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A0E84(a3);
      break;
    case 0x3Bu:
      v81 = *(a1 + 8);
      if ((v81 & 4) != 0)
      {
        (*((v81 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A0FC4(a3);
      break;
    case 0x3Cu:
      v42 = *(a1 + 8);
      if ((v42 & 4) != 0)
      {
        (*((v42 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A1104(a3);
      break;
    case 0x3Du:
      v61 = *(a1 + 8);
      if ((v61 & 4) != 0)
      {
        (*((v61 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A1244(a3);
      break;
    case 0x3Eu:
      v64 = *(a1 + 8);
      if ((v64 & 4) != 0)
      {
        (*((v64 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A1384(a3);
      break;
    case 0x3Fu:
      v51 = *(a1 + 8);
      if ((v51 & 4) != 0)
      {
        (*((v51 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A14C4(a3);
      break;
    case 0x40u:
      v43 = *(a1 + 8);
      if ((v43 & 4) != 0)
      {
        (*((v43 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A1604(a3);
      break;
    case 0x41u:
      v63 = *(a1 + 8);
      if ((v63 & 4) != 0)
      {
        (*((v63 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A1744(a3);
      break;
    case 0x42u:
      v16 = *(a1 + 8);
      if ((v16 & 4) != 0)
      {
        (*((v16 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A1884(a3);
      break;
    case 0x43u:
      v30 = *(a1 + 8);
      if ((v30 & 4) != 0)
      {
        (*((v30 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A19C4(a3);
      break;
    case 0x44u:
      v97 = *(a1 + 8);
      if ((v97 & 4) != 0)
      {
        (*((v97 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A1B04(a3);
      break;
    case 0x45u:
      v26 = *(a1 + 8);
      if ((v26 & 4) != 0)
      {
        (*((v26 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A1C44(a3);
      break;
    case 0x46u:
      v10 = *(a1 + 8);
      if ((v10 & 4) != 0)
      {
        (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A1D84(a3);
      break;
    case 0x47u:
      v18 = *(a1 + 8);
      if ((v18 & 4) != 0)
      {
        (*((v18 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A1EC4(a3);
      break;
    case 0x48u:
      v88 = *(a1 + 8);
      if ((v88 & 4) != 0)
      {
        (*((v88 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A2004(a3);
      break;
    case 0x49u:
      v92 = *(a1 + 8);
      if ((v92 & 4) != 0)
      {
        (*((v92 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A2144(a3);
      break;
    case 0x4Au:
      v94 = *(a1 + 8);
      if ((v94 & 4) != 0)
      {
        (*((v94 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A2284(a3);
      break;
    case 0x4Bu:
      v23 = *(a1 + 8);
      if ((v23 & 4) != 0)
      {
        (*((v23 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A23C4(a3);
      break;
    case 0x4Cu:
      v59 = *(a1 + 8);
      if ((v59 & 4) != 0)
      {
        (*((v59 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A2504(a3);
      break;
    case 0x4Du:
      v11 = *(a1 + 8);
      if ((v11 & 4) != 0)
      {
        (*((v11 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A2644(a3);
      break;
    case 0x4Eu:
      v96 = *(a1 + 8);
      if ((v96 & 4) != 0)
      {
        (*((v96 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A2784(a3);
      break;
    case 0x4Fu:
      v9 = *(a1 + 8);
      if ((v9 & 4) != 0)
      {
        (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A28C4(a3);
      break;
    case 0x50u:
      v17 = *(a1 + 8);
      if ((v17 & 4) != 0)
      {
        (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A2A04(a3);
      break;
    case 0x51u:
      v38 = *(a1 + 8);
      if ((v38 & 4) != 0)
      {
        (*((v38 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A2B44(a3);
      break;
    case 0x52u:
      v36 = *(a1 + 8);
      if ((v36 & 4) != 0)
      {
        (*((v36 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A2C84(a3);
      break;
    case 0x53u:
      v7 = *(a1 + 8);
      if ((v7 & 4) != 0)
      {
        (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A2DC4(a3);
      break;
    case 0x54u:
      v6 = *(a1 + 8);
      if ((v6 & 4) != 0)
      {
        (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A2F04(a3);
      break;
    case 0x55u:
      v74 = *(a1 + 8);
      if ((v74 & 4) != 0)
      {
        (*((v74 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A3044(a3);
      break;
    case 0x56u:
      v76 = *(a1 + 8);
      if ((v76 & 4) != 0)
      {
        (*((v76 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A3184(a3);
      break;
    case 0x57u:
      v93 = *(a1 + 8);
      if ((v93 & 4) != 0)
      {
        (*((v93 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A32C4(a3);
      break;
    case 0x58u:
      v14 = *(a1 + 8);
      if ((v14 & 4) != 0)
      {
        (*((v14 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A3404(a3);
      break;
    case 0x59u:
      v100 = *(a1 + 8);
      if ((v100 & 4) != 0)
      {
        (*((v100 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A3544(a3);
      break;
    case 0x5Au:
      v99 = *(a1 + 8);
      if ((v99 & 4) != 0)
      {
        (*((v99 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A3684(a3);
      break;
    case 0x5Bu:
      v8 = *(a1 + 8);
      if ((v8 & 4) != 0)
      {
        (*((v8 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A37C4(a3);
      break;
    case 0x5Cu:
      v54 = *(a1 + 8);
      if ((v54 & 4) != 0)
      {
        (*((v54 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A3904(a3);
      break;
    case 0x5Du:
      v12 = *(a1 + 8);
      if ((v12 & 4) != 0)
      {
        (*((v12 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A3A44(a3);
      break;
    case 0x5Eu:
      v57 = *(a1 + 8);
      if ((v57 & 4) != 0)
      {
        (*((v57 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A3B84(a3);
      break;
    case 0x5Fu:
      v98 = *(a1 + 8);
      if ((v98 & 4) != 0)
      {
        (*((v98 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A3CC4(a3);
      break;
    default:

      sub_29A2A3E04(a2, a1, a3);
      break;
  }
}

uint64_t sub_29A2884E8(uint64_t a1)
{
  v3 = (a1 + 16);
  sub_29A012C90(&v3);
  return sub_29A186B14(a1);
}

void *pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::ComparisonNode<std::not_equal_to>::ComparisonNode(void *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  *a2 = 0;
  *result = &unk_2A2049D80;
  result[1] = v3;
  v4 = *a3;
  *a3 = 0;
  result[2] = v4;
  return result;
}

{
  v3 = *a2;
  *a2 = 0;
  *result = &unk_2A2049D80;
  result[1] = v3;
  v4 = *a3;
  *a3 = 0;
  result[2] = v4;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::ComparisonNode<std::not_equal_to>::Evaluate@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38[3] = *MEMORY[0x29EDCA608];
  (*(**(a1 + 8) + 16))(v37);
  (*(**(a1 + 16) + 16))(&v35);
  sub_29A28658C(v37, &v35, &v29);
  v6 = v29;
  v5 = v30;
  if (v29 == v30)
  {
    Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType(v37, v4);
    if (Type == pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v35, v9))
    {
      *&v27 = &v35;
      sub_29A2888C8(v37, &v27, a2);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::GetValueTypeName(v37, &v23);
      v10 = v24;
      v11 = v23.__vftable;
      pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::GetValueTypeName(&v35, &v21);
      v14 = &v23;
      if (v10 < 0)
      {
        v14 = v11;
      }

      if (v22 >= 0)
      {
        v15 = &v21;
      }

      else
      {
        v15 = v21.__vftable;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Cannot compare values of type %s and %s", v12, v13, v14, v15);
      if (v26 >= 0)
      {
        v18 = &v25;
      }

      else
      {
        v18 = v25;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v16, v17, "neq", v18);
      v27 = 0uLL;
      v28 = 0;
      sub_29A280C48(&v27, &__p, &v35, 1uLL);
      *(a2 + 8) = 0;
      *(a2 + 16) = v27;
      *(a2 + 32) = v28;
      v27 = 0uLL;
      v28 = 0;
      v32 = &v27;
      sub_29A012C90(&v32);
      if (v34 < 0)
      {
        operator delete(__p);
      }

      if (v26 < 0)
      {
        operator delete(v25);
      }

      if (v22 < 0)
      {
        operator delete(v21.__vftable);
      }

      if (v24 < 0)
      {
        operator delete(v23.__vftable);
      }
    }
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = v6;
    v7 = v31;
    *(a2 + 24) = v5;
    *(a2 + 32) = v7;
    v30 = 0;
    v31 = 0;
    v29 = 0;
  }

  *&v27 = &v29;
  sub_29A012C90(&v27);
  v29 = &v36;
  sub_29A012C90(&v29);
  v19 = sub_29A186B14(&v35);
  *&v35 = v38;
  sub_29A012C90(v19);
  return sub_29A186B14(v37);
}

void sub_29A288818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char *a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a43 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  a30 = &a34;
  sub_29A012C90(&a30);
  sub_29A2884E8(v43 - 136);
  sub_29A2884E8(v43 - 96);
  _Unwind_Resume(a1);
}

void sub_29A2888C8(uint64_t a1@<X0>, unsigned __int8 **a2@<X1>, uint64_t a3@<X8>)
{
  switch(sub_29A29C774(a1))
  {
    case 0u:

      sub_29A2A3E68(a1, a2, a3);
      break;
    case 1u:
      v53 = *(a1 + 8);
      if ((v53 & 4) != 0)
      {
        (*((v53 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A3F90(a3);
      break;
    case 2u:
      v49 = *(a1 + 8);
      if ((v49 & 4) != 0)
      {
        (*((v49 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A40D0(a3);
      break;
    case 3u:
      v52 = *(a1 + 8);
      if ((v52 & 4) != 0)
      {
        (*((v52 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A4210(a3);
      break;
    case 4u:
      v40 = *(a1 + 8);
      if ((v40 & 4) != 0)
      {
        (*((v40 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A4350(a3);
      break;
    case 5u:
      v62 = *(a1 + 8);
      if ((v62 & 4) != 0)
      {
        (*((v62 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A4490(a3);
      break;
    case 6u:
      v67 = *(a1 + 8);
      if ((v67 & 4) != 0)
      {
        (*((v67 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A45D0(a3);
      break;
    case 7u:

      sub_29A2A3EFC(a1, a2, a3);
      break;
    case 8u:
      v70 = *(a1 + 8);
      if ((v70 & 4) != 0)
      {
        (*((v70 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A4710(a3);
      break;
    case 9u:
      v46 = *(a1 + 8);
      if ((v46 & 4) != 0)
      {
        (*((v46 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A4850(a3);
      break;
    case 0xAu:
      v69 = *(a1 + 8);
      if ((v69 & 4) != 0)
      {
        (*((v69 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A4990(a3);
      break;
    case 0xBu:
      v37 = *(a1 + 8);
      if ((v37 & 4) != 0)
      {
        (*((v37 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A4AD0(a3);
      break;
    case 0xCu:
      v44 = *(a1 + 8);
      if ((v44 & 4) != 0)
      {
        v45 = (*((v44 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      else
      {
        v45 = *a1;
      }

      sub_29A2A4C10(a2, v45, a3);
      break;
    case 0xDu:
      v66 = *(a1 + 8);
      if ((v66 & 4) != 0)
      {
        (*((v66 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A4CFC(a3);
      break;
    case 0xEu:
      v32 = *(a1 + 8);
      if ((v32 & 4) != 0)
      {
        (*((v32 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A4E3C(a3);
      break;
    case 0xFu:
      v50 = *(a1 + 8);
      if ((v50 & 4) != 0)
      {
        (*((v50 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A4F7C(a3);
      break;
    case 0x10u:
      v29 = *(a1 + 8);
      if ((v29 & 4) != 0)
      {
        (*((v29 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A50BC(a3);
      break;
    case 0x11u:
      v56 = *(a1 + 8);
      if ((v56 & 4) != 0)
      {
        (*((v56 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A51FC(a3);
      break;
    case 0x12u:
      v68 = *(a1 + 8);
      if ((v68 & 4) != 0)
      {
        (*((v68 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A533C(a3);
      break;
    case 0x13u:
      v78 = *(a1 + 8);
      if ((v78 & 4) != 0)
      {
        (*((v78 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A547C(a3);
      break;
    case 0x14u:
      v60 = *(a1 + 8);
      if ((v60 & 4) != 0)
      {
        (*((v60 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A55BC(a3);
      break;
    case 0x15u:
      v65 = *(a1 + 8);
      if ((v65 & 4) != 0)
      {
        (*((v65 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A56FC(a3);
      break;
    case 0x16u:
      v75 = *(a1 + 8);
      if ((v75 & 4) != 0)
      {
        (*((v75 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A583C(a3);
      break;
    case 0x17u:
      v82 = *(a1 + 8);
      if ((v82 & 4) != 0)
      {
        (*((v82 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A597C(a3);
      break;
    case 0x18u:
      v48 = *(a1 + 8);
      if ((v48 & 4) != 0)
      {
        (*((v48 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A5ABC(a3);
      break;
    case 0x19u:
      v47 = *(a1 + 8);
      if ((v47 & 4) != 0)
      {
        (*((v47 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A5BFC(a3);
      break;
    case 0x1Au:
      v86 = *(a1 + 8);
      if ((v86 & 4) != 0)
      {
        (*((v86 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A5D3C(a3);
      break;
    case 0x1Bu:
      v27 = *(a1 + 8);
      if ((v27 & 4) != 0)
      {
        (*((v27 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A5E7C(a3);
      break;
    case 0x1Cu:
      v83 = *(a1 + 8);
      if ((v83 & 4) != 0)
      {
        (*((v83 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A5FBC(a3);
      break;
    case 0x1Du:
      v84 = *(a1 + 8);
      if ((v84 & 4) != 0)
      {
        (*((v84 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A60FC(a3);
      break;
    case 0x1Eu:
      v71 = *(a1 + 8);
      if ((v71 & 4) != 0)
      {
        (*((v71 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A623C(a3);
      break;
    case 0x1Fu:
      v55 = *(a1 + 8);
      if ((v55 & 4) != 0)
      {
        (*((v55 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A637C(a3);
      break;
    case 0x20u:
      v72 = *(a1 + 8);
      if ((v72 & 4) != 0)
      {
        (*((v72 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A64BC(a3);
      break;
    case 0x21u:
      v33 = *(a1 + 8);
      if ((v33 & 4) != 0)
      {
        (*((v33 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A65FC(a3);
      break;
    case 0x22u:
      v28 = *(a1 + 8);
      if ((v28 & 4) != 0)
      {
        (*((v28 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A673C(a3);
      break;
    case 0x23u:
      v24 = *(a1 + 8);
      if ((v24 & 4) != 0)
      {
        (*((v24 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A687C(a3);
      break;
    case 0x24u:
      v25 = *(a1 + 8);
      if ((v25 & 4) != 0)
      {
        (*((v25 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A69BC(a3);
      break;
    case 0x25u:
      v19 = *(a1 + 8);
      if ((v19 & 4) != 0)
      {
        (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A6AFC(a3);
      break;
    case 0x26u:
      v85 = *(a1 + 8);
      if ((v85 & 4) != 0)
      {
        (*((v85 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A6C3C(a3);
      break;
    case 0x27u:
      v77 = *(a1 + 8);
      if ((v77 & 4) != 0)
      {
        (*((v77 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A6D7C(a3);
      break;
    case 0x28u:
      v41 = *(a1 + 8);
      if ((v41 & 4) != 0)
      {
        (*((v41 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A6EBC(a3);
      break;
    case 0x29u:
      v58 = *(a1 + 8);
      if ((v58 & 4) != 0)
      {
        (*((v58 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A6FFC(a3);
      break;
    case 0x2Au:
      v80 = *(a1 + 8);
      if ((v80 & 4) != 0)
      {
        (*((v80 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A713C(a3);
      break;
    case 0x2Bu:
      v15 = *(a1 + 8);
      if ((v15 & 4) != 0)
      {
        (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A727C(a3);
      break;
    case 0x2Cu:
      v31 = *(a1 + 8);
      if ((v31 & 4) != 0)
      {
        (*((v31 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A73BC(a3);
      break;
    case 0x2Du:
      v73 = *(a1 + 8);
      if ((v73 & 4) != 0)
      {
        (*((v73 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A74FC(a3);
      break;
    case 0x2Eu:
      v91 = *(a1 + 8);
      if ((v91 & 4) != 0)
      {
        (*((v91 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A763C(a3);
      break;
    case 0x2Fu:
      v21 = *(a1 + 8);
      if ((v21 & 4) != 0)
      {
        (*((v21 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A777C(a3);
      break;
    case 0x30u:
      v34 = *(a1 + 8);
      if ((v34 & 4) != 0)
      {
        (*((v34 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A78BC(a3);
      break;
    case 0x31u:
      v39 = *(a1 + 8);
      if ((v39 & 4) != 0)
      {
        (*((v39 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A79FC(a3);
      break;
    case 0x32u:
      v13 = *(a1 + 8);
      if ((v13 & 4) != 0)
      {
        (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A7B3C(a3);
      break;
    case 0x33u:
      v95 = *(a1 + 8);
      if ((v95 & 4) != 0)
      {
        (*((v95 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A7C7C(a3);
      break;
    case 0x34u:
      v90 = *(a1 + 8);
      if ((v90 & 4) != 0)
      {
        (*((v90 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A7DBC(a3);
      break;
    case 0x35u:
      v20 = *(a1 + 8);
      if ((v20 & 4) != 0)
      {
        (*((v20 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A7EFC(a3);
      break;
    case 0x36u:
      v87 = *(a1 + 8);
      if ((v87 & 4) != 0)
      {
        (*((v87 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A803C(a3);
      break;
    case 0x37u:
      v89 = *(a1 + 8);
      if ((v89 & 4) != 0)
      {
        (*((v89 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A817C(a3);
      break;
    case 0x38u:
      v22 = *(a1 + 8);
      if ((v22 & 4) != 0)
      {
        (*((v22 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A82BC(a3);
      break;
    case 0x39u:
      v79 = *(a1 + 8);
      if ((v79 & 4) != 0)
      {
        (*((v79 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A83FC(a3);
      break;
    case 0x3Au:
      v35 = *(a1 + 8);
      if ((v35 & 4) != 0)
      {
        (*((v35 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A853C(a3);
      break;
    case 0x3Bu:
      v81 = *(a1 + 8);
      if ((v81 & 4) != 0)
      {
        (*((v81 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A867C(a3);
      break;
    case 0x3Cu:
      v42 = *(a1 + 8);
      if ((v42 & 4) != 0)
      {
        (*((v42 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A87BC(a3);
      break;
    case 0x3Du:
      v61 = *(a1 + 8);
      if ((v61 & 4) != 0)
      {
        (*((v61 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A88FC(a3);
      break;
    case 0x3Eu:
      v64 = *(a1 + 8);
      if ((v64 & 4) != 0)
      {
        (*((v64 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A8A3C(a3);
      break;
    case 0x3Fu:
      v51 = *(a1 + 8);
      if ((v51 & 4) != 0)
      {
        (*((v51 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A8B7C(a3);
      break;
    case 0x40u:
      v43 = *(a1 + 8);
      if ((v43 & 4) != 0)
      {
        (*((v43 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A8CBC(a3);
      break;
    case 0x41u:
      v63 = *(a1 + 8);
      if ((v63 & 4) != 0)
      {
        (*((v63 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A8DFC(a3);
      break;
    case 0x42u:
      v16 = *(a1 + 8);
      if ((v16 & 4) != 0)
      {
        (*((v16 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A8F3C(a3);
      break;
    case 0x43u:
      v30 = *(a1 + 8);
      if ((v30 & 4) != 0)
      {
        (*((v30 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A907C(a3);
      break;
    case 0x44u:
      v97 = *(a1 + 8);
      if ((v97 & 4) != 0)
      {
        (*((v97 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A91BC(a3);
      break;
    case 0x45u:
      v26 = *(a1 + 8);
      if ((v26 & 4) != 0)
      {
        (*((v26 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A92FC(a3);
      break;
    case 0x46u:
      v10 = *(a1 + 8);
      if ((v10 & 4) != 0)
      {
        (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A943C(a3);
      break;
    case 0x47u:
      v18 = *(a1 + 8);
      if ((v18 & 4) != 0)
      {
        (*((v18 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A957C(a3);
      break;
    case 0x48u:
      v88 = *(a1 + 8);
      if ((v88 & 4) != 0)
      {
        (*((v88 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A96BC(a3);
      break;
    case 0x49u:
      v92 = *(a1 + 8);
      if ((v92 & 4) != 0)
      {
        (*((v92 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A97FC(a3);
      break;
    case 0x4Au:
      v94 = *(a1 + 8);
      if ((v94 & 4) != 0)
      {
        (*((v94 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A993C(a3);
      break;
    case 0x4Bu:
      v23 = *(a1 + 8);
      if ((v23 & 4) != 0)
      {
        (*((v23 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A9A7C(a3);
      break;
    case 0x4Cu:
      v59 = *(a1 + 8);
      if ((v59 & 4) != 0)
      {
        (*((v59 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A9BBC(a3);
      break;
    case 0x4Du:
      v11 = *(a1 + 8);
      if ((v11 & 4) != 0)
      {
        (*((v11 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A9CFC(a3);
      break;
    case 0x4Eu:
      v96 = *(a1 + 8);
      if ((v96 & 4) != 0)
      {
        (*((v96 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A9E3C(a3);
      break;
    case 0x4Fu:
      v9 = *(a1 + 8);
      if ((v9 & 4) != 0)
      {
        (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2A9F7C(a3);
      break;
    case 0x50u:
      v17 = *(a1 + 8);
      if ((v17 & 4) != 0)
      {
        (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AA0BC(a3);
      break;
    case 0x51u:
      v38 = *(a1 + 8);
      if ((v38 & 4) != 0)
      {
        (*((v38 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AA1FC(a3);
      break;
    case 0x52u:
      v36 = *(a1 + 8);
      if ((v36 & 4) != 0)
      {
        (*((v36 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AA33C(a3);
      break;
    case 0x53u:
      v7 = *(a1 + 8);
      if ((v7 & 4) != 0)
      {
        (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AA47C(a3);
      break;
    case 0x54u:
      v6 = *(a1 + 8);
      if ((v6 & 4) != 0)
      {
        (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AA5BC(a3);
      break;
    case 0x55u:
      v74 = *(a1 + 8);
      if ((v74 & 4) != 0)
      {
        (*((v74 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AA6FC(a3);
      break;
    case 0x56u:
      v76 = *(a1 + 8);
      if ((v76 & 4) != 0)
      {
        (*((v76 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AA83C(a3);
      break;
    case 0x57u:
      v93 = *(a1 + 8);
      if ((v93 & 4) != 0)
      {
        (*((v93 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AA97C(a3);
      break;
    case 0x58u:
      v14 = *(a1 + 8);
      if ((v14 & 4) != 0)
      {
        (*((v14 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AAABC(a3);
      break;
    case 0x59u:
      v100 = *(a1 + 8);
      if ((v100 & 4) != 0)
      {
        (*((v100 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AABFC(a3);
      break;
    case 0x5Au:
      v99 = *(a1 + 8);
      if ((v99 & 4) != 0)
      {
        (*((v99 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AAD3C(a3);
      break;
    case 0x5Bu:
      v8 = *(a1 + 8);
      if ((v8 & 4) != 0)
      {
        (*((v8 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AAE7C(a3);
      break;
    case 0x5Cu:
      v54 = *(a1 + 8);
      if ((v54 & 4) != 0)
      {
        (*((v54 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AAFBC(a3);
      break;
    case 0x5Du:
      v12 = *(a1 + 8);
      if ((v12 & 4) != 0)
      {
        (*((v12 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AB0FC(a3);
      break;
    case 0x5Eu:
      v57 = *(a1 + 8);
      if ((v57 & 4) != 0)
      {
        (*((v57 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AB23C(a3);
      break;
    case 0x5Fu:
      v98 = *(a1 + 8);
      if ((v98 & 4) != 0)
      {
        (*((v98 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AB37C(a3);
      break;
    default:

      sub_29A2AB4BC(a2, a1, a3);
      break;
  }
}

void *pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::ComparisonNode<std::less>::ComparisonNode(void *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  *a2 = 0;
  *result = &unk_2A2049DA8;
  result[1] = v3;
  v4 = *a3;
  *a3 = 0;
  result[2] = v4;
  return result;
}

{
  v3 = *a2;
  *a2 = 0;
  *result = &unk_2A2049DA8;
  result[1] = v3;
  v4 = *a3;
  *a3 = 0;
  result[2] = v4;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::ComparisonNode<std::less>::Evaluate@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38[3] = *MEMORY[0x29EDCA608];
  (*(**(a1 + 8) + 16))(v37);
  (*(**(a1 + 16) + 16))(&v35);
  sub_29A28658C(v37, &v35, &v29);
  v6 = v29;
  v5 = v30;
  if (v29 == v30)
  {
    Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType(v37, v4);
    if (Type == pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v35, v9))
    {
      *&v27 = &v35;
      sub_29A28AAAC(v37, &v27, a2);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::GetValueTypeName(v37, &v23);
      v10 = v24;
      v11 = v23.__vftable;
      pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::GetValueTypeName(&v35, &v21);
      v14 = &v23;
      if (v10 < 0)
      {
        v14 = v11;
      }

      if (v22 >= 0)
      {
        v15 = &v21;
      }

      else
      {
        v15 = v21.__vftable;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Cannot compare values of type %s and %s", v12, v13, v14, v15);
      if (v26 >= 0)
      {
        v18 = &v25;
      }

      else
      {
        v18 = v25;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v16, v17, "lt", v18);
      v27 = 0uLL;
      v28 = 0;
      sub_29A280C48(&v27, &__p, &v35, 1uLL);
      *(a2 + 8) = 0;
      *(a2 + 16) = v27;
      *(a2 + 32) = v28;
      v27 = 0uLL;
      v28 = 0;
      v32 = &v27;
      sub_29A012C90(&v32);
      if (v34 < 0)
      {
        operator delete(__p);
      }

      if (v26 < 0)
      {
        operator delete(v25);
      }

      if (v22 < 0)
      {
        operator delete(v21.__vftable);
      }

      if (v24 < 0)
      {
        operator delete(v23.__vftable);
      }
    }
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = v6;
    v7 = v31;
    *(a2 + 24) = v5;
    *(a2 + 32) = v7;
    v30 = 0;
    v31 = 0;
    v29 = 0;
  }

  *&v27 = &v29;
  sub_29A012C90(&v27);
  v29 = &v36;
  sub_29A012C90(&v29);
  v19 = sub_29A186B14(&v35);
  *&v35 = v38;
  sub_29A012C90(v19);
  return sub_29A186B14(v37);
}

void sub_29A28A9FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char *a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a43 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  a30 = &a34;
  sub_29A012C90(&a30);
  sub_29A2884E8(v43 - 136);
  sub_29A2884E8(v43 - 96);
  _Unwind_Resume(a1);
}

void sub_29A28AAAC(uint64_t a1@<X0>, unsigned __int8 **a2@<X1>, uint64_t a3@<X8>)
{
  switch(sub_29A29C774(a1))
  {
    case 0u:

      sub_29A2AB51C(a1, a2, a3);
      break;
    case 1u:
      v53 = *(a1 + 8);
      if ((v53 & 4) != 0)
      {
        (*((v53 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AB644(a3);
      break;
    case 2u:
      v49 = *(a1 + 8);
      if ((v49 & 4) != 0)
      {
        (*((v49 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AB784(a3);
      break;
    case 3u:
      v52 = *(a1 + 8);
      if ((v52 & 4) != 0)
      {
        (*((v52 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AB8C4(a3);
      break;
    case 4u:
      v40 = *(a1 + 8);
      if ((v40 & 4) != 0)
      {
        (*((v40 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2ABA04(a3);
      break;
    case 5u:
      v62 = *(a1 + 8);
      if ((v62 & 4) != 0)
      {
        (*((v62 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2ABB44(a3);
      break;
    case 6u:
      v67 = *(a1 + 8);
      if ((v67 & 4) != 0)
      {
        (*((v67 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2ABC84(a3);
      break;
    case 7u:

      sub_29A2AB5B0(a1, a2, a3);
      break;
    case 8u:
      v70 = *(a1 + 8);
      if ((v70 & 4) != 0)
      {
        (*((v70 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2ABDC4(a3);
      break;
    case 9u:
      v46 = *(a1 + 8);
      if ((v46 & 4) != 0)
      {
        (*((v46 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2ABF04(a3);
      break;
    case 0xAu:
      v69 = *(a1 + 8);
      if ((v69 & 4) != 0)
      {
        (*((v69 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AC044(a3);
      break;
    case 0xBu:
      v37 = *(a1 + 8);
      if ((v37 & 4) != 0)
      {
        (*((v37 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AC184(a3);
      break;
    case 0xCu:
      v44 = *(a1 + 8);
      if ((v44 & 4) != 0)
      {
        v45 = (*((v44 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      else
      {
        v45 = *a1;
      }

      sub_29A2AC2C4(a2, v45, a3);
      break;
    case 0xDu:
      v66 = *(a1 + 8);
      if ((v66 & 4) != 0)
      {
        (*((v66 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AC338(a3);
      break;
    case 0xEu:
      v32 = *(a1 + 8);
      if ((v32 & 4) != 0)
      {
        (*((v32 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AC478(a3);
      break;
    case 0xFu:
      v50 = *(a1 + 8);
      if ((v50 & 4) != 0)
      {
        (*((v50 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AC5B8(a3);
      break;
    case 0x10u:
      v29 = *(a1 + 8);
      if ((v29 & 4) != 0)
      {
        (*((v29 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AC6F8(a3);
      break;
    case 0x11u:
      v56 = *(a1 + 8);
      if ((v56 & 4) != 0)
      {
        (*((v56 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AC838(a3);
      break;
    case 0x12u:
      v68 = *(a1 + 8);
      if ((v68 & 4) != 0)
      {
        (*((v68 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AC978(a3);
      break;
    case 0x13u:
      v78 = *(a1 + 8);
      if ((v78 & 4) != 0)
      {
        (*((v78 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2ACAB8(a3);
      break;
    case 0x14u:
      v60 = *(a1 + 8);
      if ((v60 & 4) != 0)
      {
        (*((v60 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2ACBF8(a3);
      break;
    case 0x15u:
      v65 = *(a1 + 8);
      if ((v65 & 4) != 0)
      {
        (*((v65 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2ACD38(a3);
      break;
    case 0x16u:
      v75 = *(a1 + 8);
      if ((v75 & 4) != 0)
      {
        (*((v75 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2ACE78(a3);
      break;
    case 0x17u:
      v82 = *(a1 + 8);
      if ((v82 & 4) != 0)
      {
        (*((v82 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2ACFB8(a3);
      break;
    case 0x18u:
      v48 = *(a1 + 8);
      if ((v48 & 4) != 0)
      {
        (*((v48 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AD0F8(a3);
      break;
    case 0x19u:
      v47 = *(a1 + 8);
      if ((v47 & 4) != 0)
      {
        (*((v47 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AD238(a3);
      break;
    case 0x1Au:
      v86 = *(a1 + 8);
      if ((v86 & 4) != 0)
      {
        (*((v86 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AD378(a3);
      break;
    case 0x1Bu:
      v27 = *(a1 + 8);
      if ((v27 & 4) != 0)
      {
        (*((v27 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AD4B8(a3);
      break;
    case 0x1Cu:
      v83 = *(a1 + 8);
      if ((v83 & 4) != 0)
      {
        (*((v83 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AD5F8(a3);
      break;
    case 0x1Du:
      v84 = *(a1 + 8);
      if ((v84 & 4) != 0)
      {
        (*((v84 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AD738(a3);
      break;
    case 0x1Eu:
      v71 = *(a1 + 8);
      if ((v71 & 4) != 0)
      {
        (*((v71 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AD878(a3);
      break;
    case 0x1Fu:
      v55 = *(a1 + 8);
      if ((v55 & 4) != 0)
      {
        (*((v55 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AD9B8(a3);
      break;
    case 0x20u:
      v72 = *(a1 + 8);
      if ((v72 & 4) != 0)
      {
        (*((v72 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2ADAF8(a3);
      break;
    case 0x21u:
      v33 = *(a1 + 8);
      if ((v33 & 4) != 0)
      {
        (*((v33 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2ADC38(a3);
      break;
    case 0x22u:
      v28 = *(a1 + 8);
      if ((v28 & 4) != 0)
      {
        (*((v28 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2ADD78(a3);
      break;
    case 0x23u:
      v24 = *(a1 + 8);
      if ((v24 & 4) != 0)
      {
        (*((v24 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2ADEB8(a3);
      break;
    case 0x24u:
      v25 = *(a1 + 8);
      if ((v25 & 4) != 0)
      {
        (*((v25 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2ADFF8(a3);
      break;
    case 0x25u:
      v19 = *(a1 + 8);
      if ((v19 & 4) != 0)
      {
        (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AE138(a3);
      break;
    case 0x26u:
      v85 = *(a1 + 8);
      if ((v85 & 4) != 0)
      {
        (*((v85 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AE278(a3);
      break;
    case 0x27u:
      v77 = *(a1 + 8);
      if ((v77 & 4) != 0)
      {
        (*((v77 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AE3B8(a3);
      break;
    case 0x28u:
      v41 = *(a1 + 8);
      if ((v41 & 4) != 0)
      {
        (*((v41 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AE4F8(a3);
      break;
    case 0x29u:
      v58 = *(a1 + 8);
      if ((v58 & 4) != 0)
      {
        (*((v58 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AE638(a3);
      break;
    case 0x2Au:
      v80 = *(a1 + 8);
      if ((v80 & 4) != 0)
      {
        (*((v80 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AE778(a3);
      break;
    case 0x2Bu:
      v15 = *(a1 + 8);
      if ((v15 & 4) != 0)
      {
        (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AE8B8(a3);
      break;
    case 0x2Cu:
      v31 = *(a1 + 8);
      if ((v31 & 4) != 0)
      {
        (*((v31 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AE9F8(a3);
      break;
    case 0x2Du:
      v73 = *(a1 + 8);
      if ((v73 & 4) != 0)
      {
        (*((v73 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AEB38(a3);
      break;
    case 0x2Eu:
      v91 = *(a1 + 8);
      if ((v91 & 4) != 0)
      {
        (*((v91 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AEC78(a3);
      break;
    case 0x2Fu:
      v21 = *(a1 + 8);
      if ((v21 & 4) != 0)
      {
        (*((v21 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AEDB8(a3);
      break;
    case 0x30u:
      v34 = *(a1 + 8);
      if ((v34 & 4) != 0)
      {
        (*((v34 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AEEF8(a3);
      break;
    case 0x31u:
      v39 = *(a1 + 8);
      if ((v39 & 4) != 0)
      {
        (*((v39 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AF038(a3);
      break;
    case 0x32u:
      v13 = *(a1 + 8);
      if ((v13 & 4) != 0)
      {
        (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AF178(a3);
      break;
    case 0x33u:
      v95 = *(a1 + 8);
      if ((v95 & 4) != 0)
      {
        (*((v95 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AF2B8(a3);
      break;
    case 0x34u:
      v90 = *(a1 + 8);
      if ((v90 & 4) != 0)
      {
        (*((v90 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AF3F8(a3);
      break;
    case 0x35u:
      v20 = *(a1 + 8);
      if ((v20 & 4) != 0)
      {
        (*((v20 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AF538(a3);
      break;
    case 0x36u:
      v87 = *(a1 + 8);
      if ((v87 & 4) != 0)
      {
        (*((v87 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AF678(a3);
      break;
    case 0x37u:
      v89 = *(a1 + 8);
      if ((v89 & 4) != 0)
      {
        (*((v89 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AF7B8(a3);
      break;
    case 0x38u:
      v22 = *(a1 + 8);
      if ((v22 & 4) != 0)
      {
        (*((v22 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AF8F8(a3);
      break;
    case 0x39u:
      v79 = *(a1 + 8);
      if ((v79 & 4) != 0)
      {
        (*((v79 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AFA38(a3);
      break;
    case 0x3Au:
      v35 = *(a1 + 8);
      if ((v35 & 4) != 0)
      {
        (*((v35 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AFB78(a3);
      break;
    case 0x3Bu:
      v81 = *(a1 + 8);
      if ((v81 & 4) != 0)
      {
        (*((v81 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AFCB8(a3);
      break;
    case 0x3Cu:
      v42 = *(a1 + 8);
      if ((v42 & 4) != 0)
      {
        (*((v42 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AFDF8(a3);
      break;
    case 0x3Du:
      v61 = *(a1 + 8);
      if ((v61 & 4) != 0)
      {
        (*((v61 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2AFF38(a3);
      break;
    case 0x3Eu:
      v64 = *(a1 + 8);
      if ((v64 & 4) != 0)
      {
        (*((v64 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B0078(a3);
      break;
    case 0x3Fu:
      v51 = *(a1 + 8);
      if ((v51 & 4) != 0)
      {
        (*((v51 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B01B8(a3);
      break;
    case 0x40u:
      v43 = *(a1 + 8);
      if ((v43 & 4) != 0)
      {
        (*((v43 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B02F8(a3);
      break;
    case 0x41u:
      v63 = *(a1 + 8);
      if ((v63 & 4) != 0)
      {
        (*((v63 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B0438(a3);
      break;
    case 0x42u:
      v16 = *(a1 + 8);
      if ((v16 & 4) != 0)
      {
        (*((v16 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B0578(a3);
      break;
    case 0x43u:
      v30 = *(a1 + 8);
      if ((v30 & 4) != 0)
      {
        (*((v30 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B06B8(a3);
      break;
    case 0x44u:
      v97 = *(a1 + 8);
      if ((v97 & 4) != 0)
      {
        (*((v97 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B07F8(a3);
      break;
    case 0x45u:
      v26 = *(a1 + 8);
      if ((v26 & 4) != 0)
      {
        (*((v26 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B0938(a3);
      break;
    case 0x46u:
      v10 = *(a1 + 8);
      if ((v10 & 4) != 0)
      {
        (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B0A78(a3);
      break;
    case 0x47u:
      v18 = *(a1 + 8);
      if ((v18 & 4) != 0)
      {
        (*((v18 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B0BB8(a3);
      break;
    case 0x48u:
      v88 = *(a1 + 8);
      if ((v88 & 4) != 0)
      {
        (*((v88 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B0CF8(a3);
      break;
    case 0x49u:
      v92 = *(a1 + 8);
      if ((v92 & 4) != 0)
      {
        (*((v92 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B0E38(a3);
      break;
    case 0x4Au:
      v94 = *(a1 + 8);
      if ((v94 & 4) != 0)
      {
        (*((v94 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B0F78(a3);
      break;
    case 0x4Bu:
      v23 = *(a1 + 8);
      if ((v23 & 4) != 0)
      {
        (*((v23 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B10B8(a3);
      break;
    case 0x4Cu:
      v59 = *(a1 + 8);
      if ((v59 & 4) != 0)
      {
        (*((v59 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B11F8(a3);
      break;
    case 0x4Du:
      v11 = *(a1 + 8);
      if ((v11 & 4) != 0)
      {
        (*((v11 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B1338(a3);
      break;
    case 0x4Eu:
      v96 = *(a1 + 8);
      if ((v96 & 4) != 0)
      {
        (*((v96 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B1478(a3);
      break;
    case 0x4Fu:
      v9 = *(a1 + 8);
      if ((v9 & 4) != 0)
      {
        (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B15B8(a3);
      break;
    case 0x50u:
      v17 = *(a1 + 8);
      if ((v17 & 4) != 0)
      {
        (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B16F8(a3);
      break;
    case 0x51u:
      v38 = *(a1 + 8);
      if ((v38 & 4) != 0)
      {
        (*((v38 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B1838(a3);
      break;
    case 0x52u:
      v36 = *(a1 + 8);
      if ((v36 & 4) != 0)
      {
        (*((v36 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B1978(a3);
      break;
    case 0x53u:
      v7 = *(a1 + 8);
      if ((v7 & 4) != 0)
      {
        (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B1AB8(a3);
      break;
    case 0x54u:
      v6 = *(a1 + 8);
      if ((v6 & 4) != 0)
      {
        (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B1BF8(a3);
      break;
    case 0x55u:
      v74 = *(a1 + 8);
      if ((v74 & 4) != 0)
      {
        (*((v74 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B1D38(a3);
      break;
    case 0x56u:
      v76 = *(a1 + 8);
      if ((v76 & 4) != 0)
      {
        (*((v76 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B1E78(a3);
      break;
    case 0x57u:
      v93 = *(a1 + 8);
      if ((v93 & 4) != 0)
      {
        (*((v93 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B1FB8(a3);
      break;
    case 0x58u:
      v14 = *(a1 + 8);
      if ((v14 & 4) != 0)
      {
        (*((v14 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B20F8(a3);
      break;
    case 0x59u:
      v100 = *(a1 + 8);
      if ((v100 & 4) != 0)
      {
        (*((v100 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B2238(a3);
      break;
    case 0x5Au:
      v99 = *(a1 + 8);
      if ((v99 & 4) != 0)
      {
        (*((v99 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B2378(a3);
      break;
    case 0x5Bu:
      v8 = *(a1 + 8);
      if ((v8 & 4) != 0)
      {
        (*((v8 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B24B8(a3);
      break;
    case 0x5Cu:
      v54 = *(a1 + 8);
      if ((v54 & 4) != 0)
      {
        (*((v54 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B25F8(a3);
      break;
    case 0x5Du:
      v12 = *(a1 + 8);
      if ((v12 & 4) != 0)
      {
        (*((v12 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B2738(a3);
      break;
    case 0x5Eu:
      v57 = *(a1 + 8);
      if ((v57 & 4) != 0)
      {
        (*((v57 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B2878(a3);
      break;
    case 0x5Fu:
      v98 = *(a1 + 8);
      if ((v98 & 4) != 0)
      {
        (*((v98 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B29B8(a3);
      break;
    default:

      sub_29A2B2AF8(a2, a1, a3);
      break;
  }
}

void *pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::ComparisonNode<std::less_equal>::ComparisonNode(void *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  *a2 = 0;
  *result = &unk_2A2049DD0;
  result[1] = v3;
  v4 = *a3;
  *a3 = 0;
  result[2] = v4;
  return result;
}

{
  v3 = *a2;
  *a2 = 0;
  *result = &unk_2A2049DD0;
  result[1] = v3;
  v4 = *a3;
  *a3 = 0;
  result[2] = v4;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::ComparisonNode<std::less_equal>::Evaluate@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38[3] = *MEMORY[0x29EDCA608];
  (*(**(a1 + 8) + 16))(v37);
  (*(**(a1 + 16) + 16))(&v35);
  sub_29A28658C(v37, &v35, &v29);
  v6 = v29;
  v5 = v30;
  if (v29 == v30)
  {
    Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType(v37, v4);
    if (Type == pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v35, v9))
    {
      *&v27 = &v35;
      sub_29A28CC90(v37, &v27, a2);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::GetValueTypeName(v37, &v23);
      v10 = v24;
      v11 = v23.__vftable;
      pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::GetValueTypeName(&v35, &v21);
      v14 = &v23;
      if (v10 < 0)
      {
        v14 = v11;
      }

      if (v22 >= 0)
      {
        v15 = &v21;
      }

      else
      {
        v15 = v21.__vftable;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Cannot compare values of type %s and %s", v12, v13, v14, v15);
      if (v26 >= 0)
      {
        v18 = &v25;
      }

      else
      {
        v18 = v25;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v16, v17, "leq", v18);
      v27 = 0uLL;
      v28 = 0;
      sub_29A280C48(&v27, &__p, &v35, 1uLL);
      *(a2 + 8) = 0;
      *(a2 + 16) = v27;
      *(a2 + 32) = v28;
      v27 = 0uLL;
      v28 = 0;
      v32 = &v27;
      sub_29A012C90(&v32);
      if (v34 < 0)
      {
        operator delete(__p);
      }

      if (v26 < 0)
      {
        operator delete(v25);
      }

      if (v22 < 0)
      {
        operator delete(v21.__vftable);
      }

      if (v24 < 0)
      {
        operator delete(v23.__vftable);
      }
    }
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = v6;
    v7 = v31;
    *(a2 + 24) = v5;
    *(a2 + 32) = v7;
    v30 = 0;
    v31 = 0;
    v29 = 0;
  }

  *&v27 = &v29;
  sub_29A012C90(&v27);
  v29 = &v36;
  sub_29A012C90(&v29);
  v19 = sub_29A186B14(&v35);
  *&v35 = v38;
  sub_29A012C90(v19);
  return sub_29A186B14(v37);
}

void sub_29A28CBE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char *a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a43 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  a30 = &a34;
  sub_29A012C90(&a30);
  sub_29A2884E8(v43 - 136);
  sub_29A2884E8(v43 - 96);
  _Unwind_Resume(a1);
}

void sub_29A28CC90(uint64_t a1@<X0>, unsigned __int8 **a2@<X1>, uint64_t a3@<X8>)
{
  switch(sub_29A29C774(a1))
  {
    case 0u:

      sub_29A2B2CD4(a1, a2, a3);
      break;
    case 1u:
      v53 = *(a1 + 8);
      if ((v53 & 4) != 0)
      {
        (*((v53 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B2DFC(a3);
      break;
    case 2u:
      v49 = *(a1 + 8);
      if ((v49 & 4) != 0)
      {
        (*((v49 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B2F3C(a3);
      break;
    case 3u:
      v52 = *(a1 + 8);
      if ((v52 & 4) != 0)
      {
        (*((v52 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B307C(a3);
      break;
    case 4u:
      v40 = *(a1 + 8);
      if ((v40 & 4) != 0)
      {
        (*((v40 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B31BC(a3);
      break;
    case 5u:
      v62 = *(a1 + 8);
      if ((v62 & 4) != 0)
      {
        (*((v62 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B32FC(a3);
      break;
    case 6u:
      v67 = *(a1 + 8);
      if ((v67 & 4) != 0)
      {
        (*((v67 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B343C(a3);
      break;
    case 7u:

      sub_29A2B2D68(a1, a2, a3);
      break;
    case 8u:
      v70 = *(a1 + 8);
      if ((v70 & 4) != 0)
      {
        (*((v70 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B357C(a3);
      break;
    case 9u:
      v46 = *(a1 + 8);
      if ((v46 & 4) != 0)
      {
        (*((v46 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B36BC(a3);
      break;
    case 0xAu:
      v69 = *(a1 + 8);
      if ((v69 & 4) != 0)
      {
        (*((v69 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B37FC(a3);
      break;
    case 0xBu:
      v37 = *(a1 + 8);
      if ((v37 & 4) != 0)
      {
        (*((v37 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B393C(a3);
      break;
    case 0xCu:
      v44 = *(a1 + 8);
      if ((v44 & 4) != 0)
      {
        v45 = (*((v44 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      else
      {
        v45 = *a1;
      }

      sub_29A2B3A7C(a2, v45, a3);
      break;
    case 0xDu:
      v66 = *(a1 + 8);
      if ((v66 & 4) != 0)
      {
        (*((v66 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B3B5C(a3);
      break;
    case 0xEu:
      v32 = *(a1 + 8);
      if ((v32 & 4) != 0)
      {
        (*((v32 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B3C9C(a3);
      break;
    case 0xFu:
      v50 = *(a1 + 8);
      if ((v50 & 4) != 0)
      {
        (*((v50 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B3DDC(a3);
      break;
    case 0x10u:
      v29 = *(a1 + 8);
      if ((v29 & 4) != 0)
      {
        (*((v29 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B3F1C(a3);
      break;
    case 0x11u:
      v56 = *(a1 + 8);
      if ((v56 & 4) != 0)
      {
        (*((v56 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B405C(a3);
      break;
    case 0x12u:
      v68 = *(a1 + 8);
      if ((v68 & 4) != 0)
      {
        (*((v68 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B419C(a3);
      break;
    case 0x13u:
      v78 = *(a1 + 8);
      if ((v78 & 4) != 0)
      {
        (*((v78 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B42DC(a3);
      break;
    case 0x14u:
      v60 = *(a1 + 8);
      if ((v60 & 4) != 0)
      {
        (*((v60 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B441C(a3);
      break;
    case 0x15u:
      v65 = *(a1 + 8);
      if ((v65 & 4) != 0)
      {
        (*((v65 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B455C(a3);
      break;
    case 0x16u:
      v75 = *(a1 + 8);
      if ((v75 & 4) != 0)
      {
        (*((v75 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B469C(a3);
      break;
    case 0x17u:
      v82 = *(a1 + 8);
      if ((v82 & 4) != 0)
      {
        (*((v82 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B47DC(a3);
      break;
    case 0x18u:
      v48 = *(a1 + 8);
      if ((v48 & 4) != 0)
      {
        (*((v48 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B491C(a3);
      break;
    case 0x19u:
      v47 = *(a1 + 8);
      if ((v47 & 4) != 0)
      {
        (*((v47 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B4A5C(a3);
      break;
    case 0x1Au:
      v86 = *(a1 + 8);
      if ((v86 & 4) != 0)
      {
        (*((v86 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B4B9C(a3);
      break;
    case 0x1Bu:
      v27 = *(a1 + 8);
      if ((v27 & 4) != 0)
      {
        (*((v27 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B4CDC(a3);
      break;
    case 0x1Cu:
      v83 = *(a1 + 8);
      if ((v83 & 4) != 0)
      {
        (*((v83 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B4E1C(a3);
      break;
    case 0x1Du:
      v84 = *(a1 + 8);
      if ((v84 & 4) != 0)
      {
        (*((v84 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B4F5C(a3);
      break;
    case 0x1Eu:
      v71 = *(a1 + 8);
      if ((v71 & 4) != 0)
      {
        (*((v71 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B509C(a3);
      break;
    case 0x1Fu:
      v55 = *(a1 + 8);
      if ((v55 & 4) != 0)
      {
        (*((v55 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B51DC(a3);
      break;
    case 0x20u:
      v72 = *(a1 + 8);
      if ((v72 & 4) != 0)
      {
        (*((v72 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B531C(a3);
      break;
    case 0x21u:
      v33 = *(a1 + 8);
      if ((v33 & 4) != 0)
      {
        (*((v33 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B545C(a3);
      break;
    case 0x22u:
      v28 = *(a1 + 8);
      if ((v28 & 4) != 0)
      {
        (*((v28 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B559C(a3);
      break;
    case 0x23u:
      v24 = *(a1 + 8);
      if ((v24 & 4) != 0)
      {
        (*((v24 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B56DC(a3);
      break;
    case 0x24u:
      v25 = *(a1 + 8);
      if ((v25 & 4) != 0)
      {
        (*((v25 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B581C(a3);
      break;
    case 0x25u:
      v19 = *(a1 + 8);
      if ((v19 & 4) != 0)
      {
        (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B595C(a3);
      break;
    case 0x26u:
      v85 = *(a1 + 8);
      if ((v85 & 4) != 0)
      {
        (*((v85 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B5A9C(a3);
      break;
    case 0x27u:
      v77 = *(a1 + 8);
      if ((v77 & 4) != 0)
      {
        (*((v77 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B5BDC(a3);
      break;
    case 0x28u:
      v41 = *(a1 + 8);
      if ((v41 & 4) != 0)
      {
        (*((v41 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B5D1C(a3);
      break;
    case 0x29u:
      v58 = *(a1 + 8);
      if ((v58 & 4) != 0)
      {
        (*((v58 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B5E5C(a3);
      break;
    case 0x2Au:
      v80 = *(a1 + 8);
      if ((v80 & 4) != 0)
      {
        (*((v80 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B5F9C(a3);
      break;
    case 0x2Bu:
      v15 = *(a1 + 8);
      if ((v15 & 4) != 0)
      {
        (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B60DC(a3);
      break;
    case 0x2Cu:
      v31 = *(a1 + 8);
      if ((v31 & 4) != 0)
      {
        (*((v31 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B621C(a3);
      break;
    case 0x2Du:
      v73 = *(a1 + 8);
      if ((v73 & 4) != 0)
      {
        (*((v73 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B635C(a3);
      break;
    case 0x2Eu:
      v91 = *(a1 + 8);
      if ((v91 & 4) != 0)
      {
        (*((v91 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B649C(a3);
      break;
    case 0x2Fu:
      v21 = *(a1 + 8);
      if ((v21 & 4) != 0)
      {
        (*((v21 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B65DC(a3);
      break;
    case 0x30u:
      v34 = *(a1 + 8);
      if ((v34 & 4) != 0)
      {
        (*((v34 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B671C(a3);
      break;
    case 0x31u:
      v39 = *(a1 + 8);
      if ((v39 & 4) != 0)
      {
        (*((v39 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B685C(a3);
      break;
    case 0x32u:
      v13 = *(a1 + 8);
      if ((v13 & 4) != 0)
      {
        (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B699C(a3);
      break;
    case 0x33u:
      v95 = *(a1 + 8);
      if ((v95 & 4) != 0)
      {
        (*((v95 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B6ADC(a3);
      break;
    case 0x34u:
      v90 = *(a1 + 8);
      if ((v90 & 4) != 0)
      {
        (*((v90 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B6C1C(a3);
      break;
    case 0x35u:
      v20 = *(a1 + 8);
      if ((v20 & 4) != 0)
      {
        (*((v20 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B6D5C(a3);
      break;
    case 0x36u:
      v87 = *(a1 + 8);
      if ((v87 & 4) != 0)
      {
        (*((v87 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B6E9C(a3);
      break;
    case 0x37u:
      v89 = *(a1 + 8);
      if ((v89 & 4) != 0)
      {
        (*((v89 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B6FDC(a3);
      break;
    case 0x38u:
      v22 = *(a1 + 8);
      if ((v22 & 4) != 0)
      {
        (*((v22 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B711C(a3);
      break;
    case 0x39u:
      v79 = *(a1 + 8);
      if ((v79 & 4) != 0)
      {
        (*((v79 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B725C(a3);
      break;
    case 0x3Au:
      v35 = *(a1 + 8);
      if ((v35 & 4) != 0)
      {
        (*((v35 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B739C(a3);
      break;
    case 0x3Bu:
      v81 = *(a1 + 8);
      if ((v81 & 4) != 0)
      {
        (*((v81 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B74DC(a3);
      break;
    case 0x3Cu:
      v42 = *(a1 + 8);
      if ((v42 & 4) != 0)
      {
        (*((v42 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B761C(a3);
      break;
    case 0x3Du:
      v61 = *(a1 + 8);
      if ((v61 & 4) != 0)
      {
        (*((v61 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B775C(a3);
      break;
    case 0x3Eu:
      v64 = *(a1 + 8);
      if ((v64 & 4) != 0)
      {
        (*((v64 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B789C(a3);
      break;
    case 0x3Fu:
      v51 = *(a1 + 8);
      if ((v51 & 4) != 0)
      {
        (*((v51 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B79DC(a3);
      break;
    case 0x40u:
      v43 = *(a1 + 8);
      if ((v43 & 4) != 0)
      {
        (*((v43 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B7B1C(a3);
      break;
    case 0x41u:
      v63 = *(a1 + 8);
      if ((v63 & 4) != 0)
      {
        (*((v63 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B7C5C(a3);
      break;
    case 0x42u:
      v16 = *(a1 + 8);
      if ((v16 & 4) != 0)
      {
        (*((v16 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B7D9C(a3);
      break;
    case 0x43u:
      v30 = *(a1 + 8);
      if ((v30 & 4) != 0)
      {
        (*((v30 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B7EDC(a3);
      break;
    case 0x44u:
      v97 = *(a1 + 8);
      if ((v97 & 4) != 0)
      {
        (*((v97 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B801C(a3);
      break;
    case 0x45u:
      v26 = *(a1 + 8);
      if ((v26 & 4) != 0)
      {
        (*((v26 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B815C(a3);
      break;
    case 0x46u:
      v10 = *(a1 + 8);
      if ((v10 & 4) != 0)
      {
        (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B829C(a3);
      break;
    case 0x47u:
      v18 = *(a1 + 8);
      if ((v18 & 4) != 0)
      {
        (*((v18 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B83DC(a3);
      break;
    case 0x48u:
      v88 = *(a1 + 8);
      if ((v88 & 4) != 0)
      {
        (*((v88 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B851C(a3);
      break;
    case 0x49u:
      v92 = *(a1 + 8);
      if ((v92 & 4) != 0)
      {
        (*((v92 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B865C(a3);
      break;
    case 0x4Au:
      v94 = *(a1 + 8);
      if ((v94 & 4) != 0)
      {
        (*((v94 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B879C(a3);
      break;
    case 0x4Bu:
      v23 = *(a1 + 8);
      if ((v23 & 4) != 0)
      {
        (*((v23 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B88DC(a3);
      break;
    case 0x4Cu:
      v59 = *(a1 + 8);
      if ((v59 & 4) != 0)
      {
        (*((v59 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B8A1C(a3);
      break;
    case 0x4Du:
      v11 = *(a1 + 8);
      if ((v11 & 4) != 0)
      {
        (*((v11 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B8B5C(a3);
      break;
    case 0x4Eu:
      v96 = *(a1 + 8);
      if ((v96 & 4) != 0)
      {
        (*((v96 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B8C9C(a3);
      break;
    case 0x4Fu:
      v9 = *(a1 + 8);
      if ((v9 & 4) != 0)
      {
        (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B8DDC(a3);
      break;
    case 0x50u:
      v17 = *(a1 + 8);
      if ((v17 & 4) != 0)
      {
        (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B8F1C(a3);
      break;
    case 0x51u:
      v38 = *(a1 + 8);
      if ((v38 & 4) != 0)
      {
        (*((v38 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B905C(a3);
      break;
    case 0x52u:
      v36 = *(a1 + 8);
      if ((v36 & 4) != 0)
      {
        (*((v36 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B919C(a3);
      break;
    case 0x53u:
      v7 = *(a1 + 8);
      if ((v7 & 4) != 0)
      {
        (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B92DC(a3);
      break;
    case 0x54u:
      v6 = *(a1 + 8);
      if ((v6 & 4) != 0)
      {
        (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B941C(a3);
      break;
    case 0x55u:
      v74 = *(a1 + 8);
      if ((v74 & 4) != 0)
      {
        (*((v74 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B955C(a3);
      break;
    case 0x56u:
      v76 = *(a1 + 8);
      if ((v76 & 4) != 0)
      {
        (*((v76 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B969C(a3);
      break;
    case 0x57u:
      v93 = *(a1 + 8);
      if ((v93 & 4) != 0)
      {
        (*((v93 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B97DC(a3);
      break;
    case 0x58u:
      v14 = *(a1 + 8);
      if ((v14 & 4) != 0)
      {
        (*((v14 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B991C(a3);
      break;
    case 0x59u:
      v100 = *(a1 + 8);
      if ((v100 & 4) != 0)
      {
        (*((v100 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B9A5C(a3);
      break;
    case 0x5Au:
      v99 = *(a1 + 8);
      if ((v99 & 4) != 0)
      {
        (*((v99 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B9B9C(a3);
      break;
    case 0x5Bu:
      v8 = *(a1 + 8);
      if ((v8 & 4) != 0)
      {
        (*((v8 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B9CDC(a3);
      break;
    case 0x5Cu:
      v54 = *(a1 + 8);
      if ((v54 & 4) != 0)
      {
        (*((v54 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B9E1C(a3);
      break;
    case 0x5Du:
      v12 = *(a1 + 8);
      if ((v12 & 4) != 0)
      {
        (*((v12 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2B9F5C(a3);
      break;
    case 0x5Eu:
      v57 = *(a1 + 8);
      if ((v57 & 4) != 0)
      {
        (*((v57 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BA09C(a3);
      break;
    case 0x5Fu:
      v98 = *(a1 + 8);
      if ((v98 & 4) != 0)
      {
        (*((v98 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BA1DC(a3);
      break;
    default:

      sub_29A2BA31C(a2, a1, a3);
      break;
  }
}

void *pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::ComparisonNode<std::greater>::ComparisonNode(void *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  *a2 = 0;
  *result = &unk_2A2049DF8;
  result[1] = v3;
  v4 = *a3;
  *a3 = 0;
  result[2] = v4;
  return result;
}

{
  v3 = *a2;
  *a2 = 0;
  *result = &unk_2A2049DF8;
  result[1] = v3;
  v4 = *a3;
  *a3 = 0;
  result[2] = v4;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::ComparisonNode<std::greater>::Evaluate@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38[3] = *MEMORY[0x29EDCA608];
  (*(**(a1 + 8) + 16))(v37);
  (*(**(a1 + 16) + 16))(&v35);
  sub_29A28658C(v37, &v35, &v29);
  v6 = v29;
  v5 = v30;
  if (v29 == v30)
  {
    Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType(v37, v4);
    if (Type == pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v35, v9))
    {
      *&v27 = &v35;
      sub_29A28EE74(v37, &v27, a2);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::GetValueTypeName(v37, &v23);
      v10 = v24;
      v11 = v23.__vftable;
      pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::GetValueTypeName(&v35, &v21);
      v14 = &v23;
      if (v10 < 0)
      {
        v14 = v11;
      }

      if (v22 >= 0)
      {
        v15 = &v21;
      }

      else
      {
        v15 = v21.__vftable;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Cannot compare values of type %s and %s", v12, v13, v14, v15);
      if (v26 >= 0)
      {
        v18 = &v25;
      }

      else
      {
        v18 = v25;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v16, v17, "gt", v18);
      v27 = 0uLL;
      v28 = 0;
      sub_29A280C48(&v27, &__p, &v35, 1uLL);
      *(a2 + 8) = 0;
      *(a2 + 16) = v27;
      *(a2 + 32) = v28;
      v27 = 0uLL;
      v28 = 0;
      v32 = &v27;
      sub_29A012C90(&v32);
      if (v34 < 0)
      {
        operator delete(__p);
      }

      if (v26 < 0)
      {
        operator delete(v25);
      }

      if (v22 < 0)
      {
        operator delete(v21.__vftable);
      }

      if (v24 < 0)
      {
        operator delete(v23.__vftable);
      }
    }
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = v6;
    v7 = v31;
    *(a2 + 24) = v5;
    *(a2 + 32) = v7;
    v30 = 0;
    v31 = 0;
    v29 = 0;
  }

  *&v27 = &v29;
  sub_29A012C90(&v27);
  v29 = &v36;
  sub_29A012C90(&v29);
  v19 = sub_29A186B14(&v35);
  *&v35 = v38;
  sub_29A012C90(v19);
  return sub_29A186B14(v37);
}

void sub_29A28EDC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char *a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a43 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  a30 = &a34;
  sub_29A012C90(&a30);
  sub_29A2884E8(v43 - 136);
  sub_29A2884E8(v43 - 96);
  _Unwind_Resume(a1);
}

void sub_29A28EE74(uint64_t a1@<X0>, unsigned __int8 **a2@<X1>, uint64_t a3@<X8>)
{
  switch(sub_29A29C774(a1))
  {
    case 0u:

      sub_29A2BA4F8(a1, a2, a3);
      break;
    case 1u:
      v53 = *(a1 + 8);
      if ((v53 & 4) != 0)
      {
        (*((v53 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BA620(a3);
      break;
    case 2u:
      v49 = *(a1 + 8);
      if ((v49 & 4) != 0)
      {
        (*((v49 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BA760(a3);
      break;
    case 3u:
      v52 = *(a1 + 8);
      if ((v52 & 4) != 0)
      {
        (*((v52 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BA8A0(a3);
      break;
    case 4u:
      v40 = *(a1 + 8);
      if ((v40 & 4) != 0)
      {
        (*((v40 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BA9E0(a3);
      break;
    case 5u:
      v62 = *(a1 + 8);
      if ((v62 & 4) != 0)
      {
        (*((v62 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BAB20(a3);
      break;
    case 6u:
      v67 = *(a1 + 8);
      if ((v67 & 4) != 0)
      {
        (*((v67 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BAC60(a3);
      break;
    case 7u:

      sub_29A2BA58C(a1, a2, a3);
      break;
    case 8u:
      v70 = *(a1 + 8);
      if ((v70 & 4) != 0)
      {
        (*((v70 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BADA0(a3);
      break;
    case 9u:
      v46 = *(a1 + 8);
      if ((v46 & 4) != 0)
      {
        (*((v46 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BAEE0(a3);
      break;
    case 0xAu:
      v69 = *(a1 + 8);
      if ((v69 & 4) != 0)
      {
        (*((v69 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BB020(a3);
      break;
    case 0xBu:
      v37 = *(a1 + 8);
      if ((v37 & 4) != 0)
      {
        (*((v37 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BB160(a3);
      break;
    case 0xCu:
      v44 = *(a1 + 8);
      if ((v44 & 4) != 0)
      {
        v45 = (*((v44 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      else
      {
        v45 = *a1;
      }

      sub_29A2BB2A0(a2, v45, a3);
      break;
    case 0xDu:
      v66 = *(a1 + 8);
      if ((v66 & 4) != 0)
      {
        (*((v66 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BB380(a3);
      break;
    case 0xEu:
      v32 = *(a1 + 8);
      if ((v32 & 4) != 0)
      {
        (*((v32 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BB4C0(a3);
      break;
    case 0xFu:
      v50 = *(a1 + 8);
      if ((v50 & 4) != 0)
      {
        (*((v50 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BB600(a3);
      break;
    case 0x10u:
      v29 = *(a1 + 8);
      if ((v29 & 4) != 0)
      {
        (*((v29 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BB740(a3);
      break;
    case 0x11u:
      v56 = *(a1 + 8);
      if ((v56 & 4) != 0)
      {
        (*((v56 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BB880(a3);
      break;
    case 0x12u:
      v68 = *(a1 + 8);
      if ((v68 & 4) != 0)
      {
        (*((v68 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BB9C0(a3);
      break;
    case 0x13u:
      v78 = *(a1 + 8);
      if ((v78 & 4) != 0)
      {
        (*((v78 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BBB00(a3);
      break;
    case 0x14u:
      v60 = *(a1 + 8);
      if ((v60 & 4) != 0)
      {
        (*((v60 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BBC40(a3);
      break;
    case 0x15u:
      v65 = *(a1 + 8);
      if ((v65 & 4) != 0)
      {
        (*((v65 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BBD80(a3);
      break;
    case 0x16u:
      v75 = *(a1 + 8);
      if ((v75 & 4) != 0)
      {
        (*((v75 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BBEC0(a3);
      break;
    case 0x17u:
      v82 = *(a1 + 8);
      if ((v82 & 4) != 0)
      {
        (*((v82 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BC000(a3);
      break;
    case 0x18u:
      v48 = *(a1 + 8);
      if ((v48 & 4) != 0)
      {
        (*((v48 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BC140(a3);
      break;
    case 0x19u:
      v47 = *(a1 + 8);
      if ((v47 & 4) != 0)
      {
        (*((v47 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BC280(a3);
      break;
    case 0x1Au:
      v86 = *(a1 + 8);
      if ((v86 & 4) != 0)
      {
        (*((v86 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BC3C0(a3);
      break;
    case 0x1Bu:
      v27 = *(a1 + 8);
      if ((v27 & 4) != 0)
      {
        (*((v27 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BC500(a3);
      break;
    case 0x1Cu:
      v83 = *(a1 + 8);
      if ((v83 & 4) != 0)
      {
        (*((v83 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BC640(a3);
      break;
    case 0x1Du:
      v84 = *(a1 + 8);
      if ((v84 & 4) != 0)
      {
        (*((v84 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BC780(a3);
      break;
    case 0x1Eu:
      v71 = *(a1 + 8);
      if ((v71 & 4) != 0)
      {
        (*((v71 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BC8C0(a3);
      break;
    case 0x1Fu:
      v55 = *(a1 + 8);
      if ((v55 & 4) != 0)
      {
        (*((v55 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BCA00(a3);
      break;
    case 0x20u:
      v72 = *(a1 + 8);
      if ((v72 & 4) != 0)
      {
        (*((v72 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BCB40(a3);
      break;
    case 0x21u:
      v33 = *(a1 + 8);
      if ((v33 & 4) != 0)
      {
        (*((v33 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BCC80(a3);
      break;
    case 0x22u:
      v28 = *(a1 + 8);
      if ((v28 & 4) != 0)
      {
        (*((v28 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BCDC0(a3);
      break;
    case 0x23u:
      v24 = *(a1 + 8);
      if ((v24 & 4) != 0)
      {
        (*((v24 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BCF00(a3);
      break;
    case 0x24u:
      v25 = *(a1 + 8);
      if ((v25 & 4) != 0)
      {
        (*((v25 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BD040(a3);
      break;
    case 0x25u:
      v19 = *(a1 + 8);
      if ((v19 & 4) != 0)
      {
        (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BD180(a3);
      break;
    case 0x26u:
      v85 = *(a1 + 8);
      if ((v85 & 4) != 0)
      {
        (*((v85 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BD2C0(a3);
      break;
    case 0x27u:
      v77 = *(a1 + 8);
      if ((v77 & 4) != 0)
      {
        (*((v77 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BD400(a3);
      break;
    case 0x28u:
      v41 = *(a1 + 8);
      if ((v41 & 4) != 0)
      {
        (*((v41 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BD540(a3);
      break;
    case 0x29u:
      v58 = *(a1 + 8);
      if ((v58 & 4) != 0)
      {
        (*((v58 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BD680(a3);
      break;
    case 0x2Au:
      v80 = *(a1 + 8);
      if ((v80 & 4) != 0)
      {
        (*((v80 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BD7C0(a3);
      break;
    case 0x2Bu:
      v15 = *(a1 + 8);
      if ((v15 & 4) != 0)
      {
        (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BD900(a3);
      break;
    case 0x2Cu:
      v31 = *(a1 + 8);
      if ((v31 & 4) != 0)
      {
        (*((v31 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BDA40(a3);
      break;
    case 0x2Du:
      v73 = *(a1 + 8);
      if ((v73 & 4) != 0)
      {
        (*((v73 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BDB80(a3);
      break;
    case 0x2Eu:
      v91 = *(a1 + 8);
      if ((v91 & 4) != 0)
      {
        (*((v91 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BDCC0(a3);
      break;
    case 0x2Fu:
      v21 = *(a1 + 8);
      if ((v21 & 4) != 0)
      {
        (*((v21 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BDE00(a3);
      break;
    case 0x30u:
      v34 = *(a1 + 8);
      if ((v34 & 4) != 0)
      {
        (*((v34 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BDF40(a3);
      break;
    case 0x31u:
      v39 = *(a1 + 8);
      if ((v39 & 4) != 0)
      {
        (*((v39 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BE080(a3);
      break;
    case 0x32u:
      v13 = *(a1 + 8);
      if ((v13 & 4) != 0)
      {
        (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BE1C0(a3);
      break;
    case 0x33u:
      v95 = *(a1 + 8);
      if ((v95 & 4) != 0)
      {
        (*((v95 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BE300(a3);
      break;
    case 0x34u:
      v90 = *(a1 + 8);
      if ((v90 & 4) != 0)
      {
        (*((v90 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BE440(a3);
      break;
    case 0x35u:
      v20 = *(a1 + 8);
      if ((v20 & 4) != 0)
      {
        (*((v20 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BE580(a3);
      break;
    case 0x36u:
      v87 = *(a1 + 8);
      if ((v87 & 4) != 0)
      {
        (*((v87 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BE6C0(a3);
      break;
    case 0x37u:
      v89 = *(a1 + 8);
      if ((v89 & 4) != 0)
      {
        (*((v89 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BE800(a3);
      break;
    case 0x38u:
      v22 = *(a1 + 8);
      if ((v22 & 4) != 0)
      {
        (*((v22 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BE940(a3);
      break;
    case 0x39u:
      v79 = *(a1 + 8);
      if ((v79 & 4) != 0)
      {
        (*((v79 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BEA80(a3);
      break;
    case 0x3Au:
      v35 = *(a1 + 8);
      if ((v35 & 4) != 0)
      {
        (*((v35 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BEBC0(a3);
      break;
    case 0x3Bu:
      v81 = *(a1 + 8);
      if ((v81 & 4) != 0)
      {
        (*((v81 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BED00(a3);
      break;
    case 0x3Cu:
      v42 = *(a1 + 8);
      if ((v42 & 4) != 0)
      {
        (*((v42 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BEE40(a3);
      break;
    case 0x3Du:
      v61 = *(a1 + 8);
      if ((v61 & 4) != 0)
      {
        (*((v61 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BEF80(a3);
      break;
    case 0x3Eu:
      v64 = *(a1 + 8);
      if ((v64 & 4) != 0)
      {
        (*((v64 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BF0C0(a3);
      break;
    case 0x3Fu:
      v51 = *(a1 + 8);
      if ((v51 & 4) != 0)
      {
        (*((v51 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BF200(a3);
      break;
    case 0x40u:
      v43 = *(a1 + 8);
      if ((v43 & 4) != 0)
      {
        (*((v43 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BF340(a3);
      break;
    case 0x41u:
      v63 = *(a1 + 8);
      if ((v63 & 4) != 0)
      {
        (*((v63 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BF480(a3);
      break;
    case 0x42u:
      v16 = *(a1 + 8);
      if ((v16 & 4) != 0)
      {
        (*((v16 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BF5C0(a3);
      break;
    case 0x43u:
      v30 = *(a1 + 8);
      if ((v30 & 4) != 0)
      {
        (*((v30 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BF700(a3);
      break;
    case 0x44u:
      v97 = *(a1 + 8);
      if ((v97 & 4) != 0)
      {
        (*((v97 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BF840(a3);
      break;
    case 0x45u:
      v26 = *(a1 + 8);
      if ((v26 & 4) != 0)
      {
        (*((v26 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BF980(a3);
      break;
    case 0x46u:
      v10 = *(a1 + 8);
      if ((v10 & 4) != 0)
      {
        (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BFAC0(a3);
      break;
    case 0x47u:
      v18 = *(a1 + 8);
      if ((v18 & 4) != 0)
      {
        (*((v18 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BFC00(a3);
      break;
    case 0x48u:
      v88 = *(a1 + 8);
      if ((v88 & 4) != 0)
      {
        (*((v88 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BFD40(a3);
      break;
    case 0x49u:
      v92 = *(a1 + 8);
      if ((v92 & 4) != 0)
      {
        (*((v92 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BFE80(a3);
      break;
    case 0x4Au:
      v94 = *(a1 + 8);
      if ((v94 & 4) != 0)
      {
        (*((v94 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2BFFC0(a3);
      break;
    case 0x4Bu:
      v23 = *(a1 + 8);
      if ((v23 & 4) != 0)
      {
        (*((v23 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C0100(a3);
      break;
    case 0x4Cu:
      v59 = *(a1 + 8);
      if ((v59 & 4) != 0)
      {
        (*((v59 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C0240(a3);
      break;
    case 0x4Du:
      v11 = *(a1 + 8);
      if ((v11 & 4) != 0)
      {
        (*((v11 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C0380(a3);
      break;
    case 0x4Eu:
      v96 = *(a1 + 8);
      if ((v96 & 4) != 0)
      {
        (*((v96 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C04C0(a3);
      break;
    case 0x4Fu:
      v9 = *(a1 + 8);
      if ((v9 & 4) != 0)
      {
        (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C0600(a3);
      break;
    case 0x50u:
      v17 = *(a1 + 8);
      if ((v17 & 4) != 0)
      {
        (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C0740(a3);
      break;
    case 0x51u:
      v38 = *(a1 + 8);
      if ((v38 & 4) != 0)
      {
        (*((v38 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C0880(a3);
      break;
    case 0x52u:
      v36 = *(a1 + 8);
      if ((v36 & 4) != 0)
      {
        (*((v36 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C09C0(a3);
      break;
    case 0x53u:
      v7 = *(a1 + 8);
      if ((v7 & 4) != 0)
      {
        (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C0B00(a3);
      break;
    case 0x54u:
      v6 = *(a1 + 8);
      if ((v6 & 4) != 0)
      {
        (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C0C40(a3);
      break;
    case 0x55u:
      v74 = *(a1 + 8);
      if ((v74 & 4) != 0)
      {
        (*((v74 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C0D80(a3);
      break;
    case 0x56u:
      v76 = *(a1 + 8);
      if ((v76 & 4) != 0)
      {
        (*((v76 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C0EC0(a3);
      break;
    case 0x57u:
      v93 = *(a1 + 8);
      if ((v93 & 4) != 0)
      {
        (*((v93 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C1000(a3);
      break;
    case 0x58u:
      v14 = *(a1 + 8);
      if ((v14 & 4) != 0)
      {
        (*((v14 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C1140(a3);
      break;
    case 0x59u:
      v100 = *(a1 + 8);
      if ((v100 & 4) != 0)
      {
        (*((v100 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C1280(a3);
      break;
    case 0x5Au:
      v99 = *(a1 + 8);
      if ((v99 & 4) != 0)
      {
        (*((v99 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C13C0(a3);
      break;
    case 0x5Bu:
      v8 = *(a1 + 8);
      if ((v8 & 4) != 0)
      {
        (*((v8 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C1500(a3);
      break;
    case 0x5Cu:
      v54 = *(a1 + 8);
      if ((v54 & 4) != 0)
      {
        (*((v54 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C1640(a3);
      break;
    case 0x5Du:
      v12 = *(a1 + 8);
      if ((v12 & 4) != 0)
      {
        (*((v12 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C1780(a3);
      break;
    case 0x5Eu:
      v57 = *(a1 + 8);
      if ((v57 & 4) != 0)
      {
        (*((v57 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C18C0(a3);
      break;
    case 0x5Fu:
      v98 = *(a1 + 8);
      if ((v98 & 4) != 0)
      {
        (*((v98 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C1A00(a3);
      break;
    default:

      sub_29A2C1B40(a2, a1, a3);
      break;
  }
}

void *pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::ComparisonNode<std::greater_equal>::ComparisonNode(void *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  *a2 = 0;
  *result = &unk_2A2049E20;
  result[1] = v3;
  v4 = *a3;
  *a3 = 0;
  result[2] = v4;
  return result;
}

{
  v3 = *a2;
  *a2 = 0;
  *result = &unk_2A2049E20;
  result[1] = v3;
  v4 = *a3;
  *a3 = 0;
  result[2] = v4;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::ComparisonNode<std::greater_equal>::Evaluate@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38[3] = *MEMORY[0x29EDCA608];
  (*(**(a1 + 8) + 16))(v37);
  (*(**(a1 + 16) + 16))(&v35);
  sub_29A28658C(v37, &v35, &v29);
  v6 = v29;
  v5 = v30;
  if (v29 == v30)
  {
    Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType(v37, v4);
    if (Type == pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v35, v9))
    {
      *&v27 = &v35;
      sub_29A291058(v37, &v27, a2);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::GetValueTypeName(v37, &v23);
      v10 = v24;
      v11 = v23.__vftable;
      pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::GetValueTypeName(&v35, &v21);
      v14 = &v23;
      if (v10 < 0)
      {
        v14 = v11;
      }

      if (v22 >= 0)
      {
        v15 = &v21;
      }

      else
      {
        v15 = v21.__vftable;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Cannot compare values of type %s and %s", v12, v13, v14, v15);
      if (v26 >= 0)
      {
        v18 = &v25;
      }

      else
      {
        v18 = v25;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v16, v17, "geq", v18);
      v27 = 0uLL;
      v28 = 0;
      sub_29A280C48(&v27, &__p, &v35, 1uLL);
      *(a2 + 8) = 0;
      *(a2 + 16) = v27;
      *(a2 + 32) = v28;
      v27 = 0uLL;
      v28 = 0;
      v32 = &v27;
      sub_29A012C90(&v32);
      if (v34 < 0)
      {
        operator delete(__p);
      }

      if (v26 < 0)
      {
        operator delete(v25);
      }

      if (v22 < 0)
      {
        operator delete(v21.__vftable);
      }

      if (v24 < 0)
      {
        operator delete(v23.__vftable);
      }
    }
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = v6;
    v7 = v31;
    *(a2 + 24) = v5;
    *(a2 + 32) = v7;
    v30 = 0;
    v31 = 0;
    v29 = 0;
  }

  *&v27 = &v29;
  sub_29A012C90(&v27);
  v29 = &v36;
  sub_29A012C90(&v29);
  v19 = sub_29A186B14(&v35);
  *&v35 = v38;
  sub_29A012C90(v19);
  return sub_29A186B14(v37);
}

void sub_29A290FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char *a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a43 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  a30 = &a34;
  sub_29A012C90(&a30);
  sub_29A2884E8(v43 - 136);
  sub_29A2884E8(v43 - 96);
  _Unwind_Resume(a1);
}

void sub_29A291058(uint64_t a1@<X0>, unsigned __int8 **a2@<X1>, uint64_t a3@<X8>)
{
  switch(sub_29A29C774(a1))
  {
    case 0u:

      sub_29A2C1D1C(a1, a2, a3);
      break;
    case 1u:
      v53 = *(a1 + 8);
      if ((v53 & 4) != 0)
      {
        (*((v53 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C1E44(a3);
      break;
    case 2u:
      v49 = *(a1 + 8);
      if ((v49 & 4) != 0)
      {
        (*((v49 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C1F84(a3);
      break;
    case 3u:
      v52 = *(a1 + 8);
      if ((v52 & 4) != 0)
      {
        (*((v52 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C20C4(a3);
      break;
    case 4u:
      v40 = *(a1 + 8);
      if ((v40 & 4) != 0)
      {
        (*((v40 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C2204(a3);
      break;
    case 5u:
      v62 = *(a1 + 8);
      if ((v62 & 4) != 0)
      {
        (*((v62 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C2344(a3);
      break;
    case 6u:
      v67 = *(a1 + 8);
      if ((v67 & 4) != 0)
      {
        (*((v67 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C2484(a3);
      break;
    case 7u:

      sub_29A2C1DB0(a1, a2, a3);
      break;
    case 8u:
      v70 = *(a1 + 8);
      if ((v70 & 4) != 0)
      {
        (*((v70 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C25C4(a3);
      break;
    case 9u:
      v46 = *(a1 + 8);
      if ((v46 & 4) != 0)
      {
        (*((v46 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C2704(a3);
      break;
    case 0xAu:
      v69 = *(a1 + 8);
      if ((v69 & 4) != 0)
      {
        (*((v69 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C2844(a3);
      break;
    case 0xBu:
      v37 = *(a1 + 8);
      if ((v37 & 4) != 0)
      {
        (*((v37 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C2984(a3);
      break;
    case 0xCu:
      v44 = *(a1 + 8);
      if ((v44 & 4) != 0)
      {
        v45 = (*((v44 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      else
      {
        v45 = *a1;
      }

      sub_29A2C2AC4(a2, v45, a3);
      break;
    case 0xDu:
      v66 = *(a1 + 8);
      if ((v66 & 4) != 0)
      {
        (*((v66 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C2BA4(a3);
      break;
    case 0xEu:
      v32 = *(a1 + 8);
      if ((v32 & 4) != 0)
      {
        (*((v32 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C2CE4(a3);
      break;
    case 0xFu:
      v50 = *(a1 + 8);
      if ((v50 & 4) != 0)
      {
        (*((v50 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C2E24(a3);
      break;
    case 0x10u:
      v29 = *(a1 + 8);
      if ((v29 & 4) != 0)
      {
        (*((v29 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C2F64(a3);
      break;
    case 0x11u:
      v56 = *(a1 + 8);
      if ((v56 & 4) != 0)
      {
        (*((v56 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C30A4(a3);
      break;
    case 0x12u:
      v68 = *(a1 + 8);
      if ((v68 & 4) != 0)
      {
        (*((v68 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C31E4(a3);
      break;
    case 0x13u:
      v78 = *(a1 + 8);
      if ((v78 & 4) != 0)
      {
        (*((v78 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C3324(a3);
      break;
    case 0x14u:
      v60 = *(a1 + 8);
      if ((v60 & 4) != 0)
      {
        (*((v60 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C3464(a3);
      break;
    case 0x15u:
      v65 = *(a1 + 8);
      if ((v65 & 4) != 0)
      {
        (*((v65 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C35A4(a3);
      break;
    case 0x16u:
      v75 = *(a1 + 8);
      if ((v75 & 4) != 0)
      {
        (*((v75 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C36E4(a3);
      break;
    case 0x17u:
      v82 = *(a1 + 8);
      if ((v82 & 4) != 0)
      {
        (*((v82 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C3824(a3);
      break;
    case 0x18u:
      v48 = *(a1 + 8);
      if ((v48 & 4) != 0)
      {
        (*((v48 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C3964(a3);
      break;
    case 0x19u:
      v47 = *(a1 + 8);
      if ((v47 & 4) != 0)
      {
        (*((v47 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C3AA4(a3);
      break;
    case 0x1Au:
      v86 = *(a1 + 8);
      if ((v86 & 4) != 0)
      {
        (*((v86 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C3BE4(a3);
      break;
    case 0x1Bu:
      v27 = *(a1 + 8);
      if ((v27 & 4) != 0)
      {
        (*((v27 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C3D24(a3);
      break;
    case 0x1Cu:
      v83 = *(a1 + 8);
      if ((v83 & 4) != 0)
      {
        (*((v83 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C3E64(a3);
      break;
    case 0x1Du:
      v84 = *(a1 + 8);
      if ((v84 & 4) != 0)
      {
        (*((v84 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C3FA4(a3);
      break;
    case 0x1Eu:
      v71 = *(a1 + 8);
      if ((v71 & 4) != 0)
      {
        (*((v71 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C40E4(a3);
      break;
    case 0x1Fu:
      v55 = *(a1 + 8);
      if ((v55 & 4) != 0)
      {
        (*((v55 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C4224(a3);
      break;
    case 0x20u:
      v72 = *(a1 + 8);
      if ((v72 & 4) != 0)
      {
        (*((v72 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C4364(a3);
      break;
    case 0x21u:
      v33 = *(a1 + 8);
      if ((v33 & 4) != 0)
      {
        (*((v33 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C44A4(a3);
      break;
    case 0x22u:
      v28 = *(a1 + 8);
      if ((v28 & 4) != 0)
      {
        (*((v28 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C45E4(a3);
      break;
    case 0x23u:
      v24 = *(a1 + 8);
      if ((v24 & 4) != 0)
      {
        (*((v24 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C4724(a3);
      break;
    case 0x24u:
      v25 = *(a1 + 8);
      if ((v25 & 4) != 0)
      {
        (*((v25 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C4864(a3);
      break;
    case 0x25u:
      v19 = *(a1 + 8);
      if ((v19 & 4) != 0)
      {
        (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C49A4(a3);
      break;
    case 0x26u:
      v85 = *(a1 + 8);
      if ((v85 & 4) != 0)
      {
        (*((v85 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C4AE4(a3);
      break;
    case 0x27u:
      v77 = *(a1 + 8);
      if ((v77 & 4) != 0)
      {
        (*((v77 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C4C24(a3);
      break;
    case 0x28u:
      v41 = *(a1 + 8);
      if ((v41 & 4) != 0)
      {
        (*((v41 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C4D64(a3);
      break;
    case 0x29u:
      v58 = *(a1 + 8);
      if ((v58 & 4) != 0)
      {
        (*((v58 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C4EA4(a3);
      break;
    case 0x2Au:
      v80 = *(a1 + 8);
      if ((v80 & 4) != 0)
      {
        (*((v80 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C4FE4(a3);
      break;
    case 0x2Bu:
      v15 = *(a1 + 8);
      if ((v15 & 4) != 0)
      {
        (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C5124(a3);
      break;
    case 0x2Cu:
      v31 = *(a1 + 8);
      if ((v31 & 4) != 0)
      {
        (*((v31 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C5264(a3);
      break;
    case 0x2Du:
      v73 = *(a1 + 8);
      if ((v73 & 4) != 0)
      {
        (*((v73 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C53A4(a3);
      break;
    case 0x2Eu:
      v91 = *(a1 + 8);
      if ((v91 & 4) != 0)
      {
        (*((v91 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C54E4(a3);
      break;
    case 0x2Fu:
      v21 = *(a1 + 8);
      if ((v21 & 4) != 0)
      {
        (*((v21 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C5624(a3);
      break;
    case 0x30u:
      v34 = *(a1 + 8);
      if ((v34 & 4) != 0)
      {
        (*((v34 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C5764(a3);
      break;
    case 0x31u:
      v39 = *(a1 + 8);
      if ((v39 & 4) != 0)
      {
        (*((v39 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C58A4(a3);
      break;
    case 0x32u:
      v13 = *(a1 + 8);
      if ((v13 & 4) != 0)
      {
        (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C59E4(a3);
      break;
    case 0x33u:
      v95 = *(a1 + 8);
      if ((v95 & 4) != 0)
      {
        (*((v95 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C5B24(a3);
      break;
    case 0x34u:
      v90 = *(a1 + 8);
      if ((v90 & 4) != 0)
      {
        (*((v90 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C5C64(a3);
      break;
    case 0x35u:
      v20 = *(a1 + 8);
      if ((v20 & 4) != 0)
      {
        (*((v20 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C5DA4(a3);
      break;
    case 0x36u:
      v87 = *(a1 + 8);
      if ((v87 & 4) != 0)
      {
        (*((v87 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C5EE4(a3);
      break;
    case 0x37u:
      v89 = *(a1 + 8);
      if ((v89 & 4) != 0)
      {
        (*((v89 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C6024(a3);
      break;
    case 0x38u:
      v22 = *(a1 + 8);
      if ((v22 & 4) != 0)
      {
        (*((v22 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C6164(a3);
      break;
    case 0x39u:
      v79 = *(a1 + 8);
      if ((v79 & 4) != 0)
      {
        (*((v79 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C62A4(a3);
      break;
    case 0x3Au:
      v35 = *(a1 + 8);
      if ((v35 & 4) != 0)
      {
        (*((v35 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C63E4(a3);
      break;
    case 0x3Bu:
      v81 = *(a1 + 8);
      if ((v81 & 4) != 0)
      {
        (*((v81 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C6524(a3);
      break;
    case 0x3Cu:
      v42 = *(a1 + 8);
      if ((v42 & 4) != 0)
      {
        (*((v42 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C6664(a3);
      break;
    case 0x3Du:
      v61 = *(a1 + 8);
      if ((v61 & 4) != 0)
      {
        (*((v61 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C67A4(a3);
      break;
    case 0x3Eu:
      v64 = *(a1 + 8);
      if ((v64 & 4) != 0)
      {
        (*((v64 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C68E4(a3);
      break;
    case 0x3Fu:
      v51 = *(a1 + 8);
      if ((v51 & 4) != 0)
      {
        (*((v51 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C6A24(a3);
      break;
    case 0x40u:
      v43 = *(a1 + 8);
      if ((v43 & 4) != 0)
      {
        (*((v43 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C6B64(a3);
      break;
    case 0x41u:
      v63 = *(a1 + 8);
      if ((v63 & 4) != 0)
      {
        (*((v63 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C6CA4(a3);
      break;
    case 0x42u:
      v16 = *(a1 + 8);
      if ((v16 & 4) != 0)
      {
        (*((v16 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C6DE4(a3);
      break;
    case 0x43u:
      v30 = *(a1 + 8);
      if ((v30 & 4) != 0)
      {
        (*((v30 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C6F24(a3);
      break;
    case 0x44u:
      v97 = *(a1 + 8);
      if ((v97 & 4) != 0)
      {
        (*((v97 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C7064(a3);
      break;
    case 0x45u:
      v26 = *(a1 + 8);
      if ((v26 & 4) != 0)
      {
        (*((v26 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C71A4(a3);
      break;
    case 0x46u:
      v10 = *(a1 + 8);
      if ((v10 & 4) != 0)
      {
        (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C72E4(a3);
      break;
    case 0x47u:
      v18 = *(a1 + 8);
      if ((v18 & 4) != 0)
      {
        (*((v18 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C7424(a3);
      break;
    case 0x48u:
      v88 = *(a1 + 8);
      if ((v88 & 4) != 0)
      {
        (*((v88 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C7564(a3);
      break;
    case 0x49u:
      v92 = *(a1 + 8);
      if ((v92 & 4) != 0)
      {
        (*((v92 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C76A4(a3);
      break;
    case 0x4Au:
      v94 = *(a1 + 8);
      if ((v94 & 4) != 0)
      {
        (*((v94 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C77E4(a3);
      break;
    case 0x4Bu:
      v23 = *(a1 + 8);
      if ((v23 & 4) != 0)
      {
        (*((v23 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C7924(a3);
      break;
    case 0x4Cu:
      v59 = *(a1 + 8);
      if ((v59 & 4) != 0)
      {
        (*((v59 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C7A64(a3);
      break;
    case 0x4Du:
      v11 = *(a1 + 8);
      if ((v11 & 4) != 0)
      {
        (*((v11 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C7BA4(a3);
      break;
    case 0x4Eu:
      v96 = *(a1 + 8);
      if ((v96 & 4) != 0)
      {
        (*((v96 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C7CE4(a3);
      break;
    case 0x4Fu:
      v9 = *(a1 + 8);
      if ((v9 & 4) != 0)
      {
        (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C7E24(a3);
      break;
    case 0x50u:
      v17 = *(a1 + 8);
      if ((v17 & 4) != 0)
      {
        (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C7F64(a3);
      break;
    case 0x51u:
      v38 = *(a1 + 8);
      if ((v38 & 4) != 0)
      {
        (*((v38 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C80A4(a3);
      break;
    case 0x52u:
      v36 = *(a1 + 8);
      if ((v36 & 4) != 0)
      {
        (*((v36 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C81E4(a3);
      break;
    case 0x53u:
      v7 = *(a1 + 8);
      if ((v7 & 4) != 0)
      {
        (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C8324(a3);
      break;
    case 0x54u:
      v6 = *(a1 + 8);
      if ((v6 & 4) != 0)
      {
        (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C8464(a3);
      break;
    case 0x55u:
      v74 = *(a1 + 8);
      if ((v74 & 4) != 0)
      {
        (*((v74 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C85A4(a3);
      break;
    case 0x56u:
      v76 = *(a1 + 8);
      if ((v76 & 4) != 0)
      {
        (*((v76 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C86E4(a3);
      break;
    case 0x57u:
      v93 = *(a1 + 8);
      if ((v93 & 4) != 0)
      {
        (*((v93 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C8824(a3);
      break;
    case 0x58u:
      v14 = *(a1 + 8);
      if ((v14 & 4) != 0)
      {
        (*((v14 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C8964(a3);
      break;
    case 0x59u:
      v100 = *(a1 + 8);
      if ((v100 & 4) != 0)
      {
        (*((v100 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C8AA4(a3);
      break;
    case 0x5Au:
      v99 = *(a1 + 8);
      if ((v99 & 4) != 0)
      {
        (*((v99 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C8BE4(a3);
      break;
    case 0x5Bu:
      v8 = *(a1 + 8);
      if ((v8 & 4) != 0)
      {
        (*((v8 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C8D24(a3);
      break;
    case 0x5Cu:
      v54 = *(a1 + 8);
      if ((v54 & 4) != 0)
      {
        (*((v54 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C8E64(a3);
      break;
    case 0x5Du:
      v12 = *(a1 + 8);
      if ((v12 & 4) != 0)
      {
        (*((v12 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C8FA4(a3);
      break;
    case 0x5Eu:
      v57 = *(a1 + 8);
      if ((v57 & 4) != 0)
      {
        (*((v57 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C90E4(a3);
      break;
    case 0x5Fu:
      v98 = *(a1 + 8);
      if ((v98 & 4) != 0)
      {
        (*((v98 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2C9224(a3);
      break;
    default:

      sub_29A2C9364(a2, a1, a3);
      break;
  }
}

__n128 pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::LogicalNode<std::logical_and>::LogicalNode(void *a1, __n128 *a2)
{
  *a1 = &unk_2A2049E48;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  result = *a2;
  *(a1 + 1) = *a2;
  a1[3] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

{
  *a1 = &unk_2A2049E48;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  result = *a2;
  *(a1 + 1) = *a2;
  a1[3] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::LogicalNode<std::logical_and>::Evaluate@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v37 = *MEMORY[0x29EDCA608];
  v36 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v3 = *(a1 + 8);
  if (*(a1 + 16) == v3)
  {
    goto LABEL_38;
  }

  v5 = 0;
  do
  {
    (*(**(v3 + 8 * v5) + 16))(&v31);
    if (v33 == v34)
    {
      if (sub_29A1EFCDC(&v31))
      {
        if (v36)
        {
          if ((v36 & 4) != 0)
          {
            v6 = (*((v36 & 0xFFFFFFFFFFFFFFF8) + 168))(&v35);
          }

          else
          {
            v6 = &v35;
          }

          if ((v32 & 4) != 0)
          {
            v7 = (*((v32 & 0xFFFFFFFFFFFFFFF8) + 168))(&v31);
          }

          else
          {
            v7 = &v31;
          }

          v8 = *v6;
          v9 = *v7;
          if (v36 && (v36 & 3) != 3)
          {
            (*((v36 & 0xFFFFFFFFFFFFFFF8) + 32))(&v35);
          }

          v36 = &unk_2A20443C3;
          LOBYTE(v35) = v8 & v9 & 1;
        }

        else
        {
          if ((v32 & 4) != 0)
          {
            v16 = *(*((v32 & 0xFFFFFFFFFFFFFFF8) + 168))(&v31);
            if (v36 && (v36 & 3) != 3)
            {
              (*((v36 & 0xFFFFFFFFFFFFFFF8) + 32))(&v35);
            }
          }

          else
          {
            v16 = v31;
          }

          v36 = &unk_2A20443C3;
          LOBYTE(v35) = v16;
        }
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::GetValueTypeName(&v31, &v22);
        v12 = &v22;
        if (v23 < 0)
        {
          v12 = v22.__vftable;
        }

        pxrInternal__aapl__pxrReserved__::TfStringPrintf("Invalid type %s for argument %zu", v10, v11, v12, v5);
        if (v25 >= 0)
        {
          v15 = &v24;
        }

        else
        {
          v15 = v24;
        }

        pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v13, v14, "and", v15);
        sub_29A091654(&v28, __p);
        if (v27 < 0)
        {
          operator delete(__p[0]);
        }

        if (v25 < 0)
        {
          operator delete(v24);
        }

        if (v23 < 0)
        {
          operator delete(v22.__vftable);
        }
      }
    }

    else
    {
      sub_29A2C9540(&v28, v29, v33, v34, 0xAAAAAAAAAAAAAAABLL * ((v34 - v33) >> 3));
    }

    __p[0] = &v33;
    sub_29A012C90(__p);
    sub_29A186B14(&v31);
    ++v5;
    v3 = *(a1 + 8);
  }

  while (v5 < (*(a1 + 16) - v3) >> 3);
  v18 = v28;
  v17 = v29;
  if (v28 == v29)
  {
LABEL_38:
    sub_29A186A3C(a2, &v35);
    v20 = (a2 + 2);
  }

  else
  {
    a2[1] = 0;
    a2[2] = v18;
    v19 = v30;
    a2[3] = v17;
    a2[4] = v19;
    v20 = &v28;
  }

  *v20 = 0;
  v20[1] = 0;
  v20[2] = 0;
  v31 = &v28;
  sub_29A012C90(&v31);
  return sub_29A186B14(&v35);
}

void sub_29A293228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, char *a33)
{
  sub_29A2884E8(&a33);
  a33 = &a30;
  sub_29A012C90(&a33);
  sub_29A186B14(v33 - 112);
  _Unwind_Resume(a1);
}

char *sub_29A2932AC(char *result, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(a2 + 16);
  if (v3 != v2)
  {
    return sub_29A2C9540(result, *(result + 1), v3, v2, 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 3));
  }

  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::LogicalNode<std::logical_or>::LogicalNode(void *a1, __n128 *a2)
{
  *a1 = &unk_2A2049E70;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  result = *a2;
  *(a1 + 1) = *a2;
  a1[3] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

{
  *a1 = &unk_2A2049E70;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  result = *a2;
  *(a1 + 1) = *a2;
  a1[3] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::LogicalNode<std::logical_or>::Evaluate@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v37 = *MEMORY[0x29EDCA608];
  v36 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v3 = *(a1 + 8);
  if (*(a1 + 16) == v3)
  {
    goto LABEL_38;
  }

  v5 = 0;
  do
  {
    (*(**(v3 + 8 * v5) + 16))(&v31);
    if (v33 == v34)
    {
      if (sub_29A1EFCDC(&v31))
      {
        if (v36)
        {
          if ((v36 & 4) != 0)
          {
            v6 = (*((v36 & 0xFFFFFFFFFFFFFFF8) + 168))(&v35);
          }

          else
          {
            v6 = &v35;
          }

          if ((v32 & 4) != 0)
          {
            v7 = (*((v32 & 0xFFFFFFFFFFFFFFF8) + 168))(&v31);
          }

          else
          {
            v7 = &v31;
          }

          v8 = *v6;
          v9 = *v7;
          if (v36 && (v36 & 3) != 3)
          {
            (*((v36 & 0xFFFFFFFFFFFFFFF8) + 32))(&v35);
          }

          v36 = &unk_2A20443C3;
          LOBYTE(v35) = (v8 | v9) & 1;
        }

        else
        {
          if ((v32 & 4) != 0)
          {
            v16 = *(*((v32 & 0xFFFFFFFFFFFFFFF8) + 168))(&v31);
            if (v36 && (v36 & 3) != 3)
            {
              (*((v36 & 0xFFFFFFFFFFFFFFF8) + 32))(&v35);
            }
          }

          else
          {
            v16 = v31;
          }

          v36 = &unk_2A20443C3;
          LOBYTE(v35) = v16;
        }
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::GetValueTypeName(&v31, &v22);
        v12 = &v22;
        if (v23 < 0)
        {
          v12 = v22.__vftable;
        }

        pxrInternal__aapl__pxrReserved__::TfStringPrintf("Invalid type %s for argument %zu", v10, v11, v12, v5);
        if (v25 >= 0)
        {
          v15 = &v24;
        }

        else
        {
          v15 = v24;
        }

        pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v13, v14, "or", v15);
        sub_29A091654(&v28, __p);
        if (v27 < 0)
        {
          operator delete(__p[0]);
        }

        if (v25 < 0)
        {
          operator delete(v24);
        }

        if (v23 < 0)
        {
          operator delete(v22.__vftable);
        }
      }
    }

    else
    {
      sub_29A2C9540(&v28, v29, v33, v34, 0xAAAAAAAAAAAAAAABLL * ((v34 - v33) >> 3));
    }

    __p[0] = &v33;
    sub_29A012C90(__p);
    sub_29A186B14(&v31);
    ++v5;
    v3 = *(a1 + 8);
  }

  while (v5 < (*(a1 + 16) - v3) >> 3);
  v18 = v28;
  v17 = v29;
  if (v28 == v29)
  {
LABEL_38:
    sub_29A186A3C(a2, &v35);
    v20 = (a2 + 2);
  }

  else
  {
    a2[1] = 0;
    a2[2] = v18;
    v19 = v30;
    a2[3] = v17;
    a2[4] = v19;
    v20 = &v28;
  }

  *v20 = 0;
  v20[1] = 0;
  v20[2] = 0;
  v31 = &v28;
  sub_29A012C90(&v31);
  return sub_29A186B14(&v35);
}

void sub_29A29366C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, char *a33)
{
  sub_29A2884E8(&a33);
  a33 = &a30;
  sub_29A012C90(&a33);
  sub_29A186B14(v33 - 112);
  _Unwind_Resume(a1);
}

uint64_t sub_29A293714(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = sub_29A29C774(a1);
  v3 = *(a1 + 1);
  switch(v2)
  {
    case 0:
      if ((v3 & 4) != 0)
      {
        (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      result = 1;
      break;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    case 9:
    case 10:
    case 11:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 55:
    case 56:
    case 57:
    case 58:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
      if ((v3 & 4) != 0)
      {
        (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      result = 0;
      break;
    case 7:
      if ((v3 & 4) != 0)
      {
        (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      result = 2;
      break;
    case 12:
      if ((v3 & 4) != 0)
      {
        (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      result = 3;
      break;
    case 47:
    case 54:
    case 59:
      if ((v3 & 4) != 0)
      {
        (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      result = 4;
      break;
    default:
      if (v3)
      {
        if (sub_29A296B08(a1))
        {
          result = 4;
        }

        else
        {
          result = 0;
        }
      }

      else
      {
        result = 5;
      }

      break;
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl *pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::CoerceIfUnsupportedValueType@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl *this@<X0>, void *a2@<X8>)
{
  v3 = this;
  result = sub_29A293A9C(this);
  if (result)
  {
    v6 = *(v3 + 1);
    if ((v6 & 4) != 0)
    {
      result = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(v3);
      v3 = result;
    }

    *a2 = *v3;
    a2[1] = &unk_2A2044A3B;
  }

  else
  {
    result = sub_29A19D610(v3);
    if (result)
    {
      v7 = *(v3 + 1);
      if ((v7 & 4) != 0)
      {
        v8 = (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(v3);
      }

      else
      {
        v8 = *v3;
      }

      sub_29A293AD4(v9, v8[4], v8[4] + 4 * *v8);
      a2[1] = &off_2A2047630;
      sub_29A18ECC8(a2, v9);
      pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
    }

    a2[1] = 0;
  }

  return result;
}

uint64_t sub_29A293A9C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 5)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x29EDC94D0]);
  }

  else
  {
    return 0;
  }
}