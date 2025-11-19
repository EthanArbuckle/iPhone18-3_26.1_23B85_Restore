void sub_275CC2D18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C90098(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275CC2D44(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v28 = a2;
  v29 = a1;
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v6 <= 2)
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *a3;
      v28 = a2 - 40;
      if ((v7)())
      {
        v8 = &v29;
        v9 = &v28;
LABEL_30:
        sub_275CC2618(v8, v9);
        return 1;
      }

      return 1;
    }

LABEL_16:
    v16 = a1 + 80;
    v26[0] = a1;
    v32 = a1 + 80;
    v33 = a1 + 40;
    v17 = (*a3)(a1 + 40, a1);
    v18 = (*a3)(a1 + 80, a1 + 40);
    if (v17)
    {
      if (v18)
      {
        v19 = v26;
      }

      else
      {
        sub_275CC2618(v26, &v33);
        if (!(*a3)(v32, v33))
        {
          goto LABEL_35;
        }

        v19 = &v33;
      }

      v20 = &v32;
    }

    else
    {
      if (!v18 || (sub_275CC2618(&v33, &v32), !(*a3)(v33, v26[0])))
      {
LABEL_35:
        v21 = a1 + 120;
        if (v21 != a2)
        {
          v22 = 0;
          while (1)
          {
            if ((*a3)(v21, v16))
            {
              sub_275C8FFF4(v26, v21);
              v27 = *(v21 + 32);
              do
              {
                v23 = v16;
                sub_275C8FFF8(v16 + 40, v16);
                *(v16 + 72) = *(v16 + 32);
                if (v16 == v29)
                {
                  break;
                }

                v16 -= 40;
              }

              while (((*a3)(v26, v23 - 40) & 1) != 0);
              sub_275C8FFF8(v23, v26);
              *(v23 + 32) = v27;
              if (++v22 == 8)
              {
                v24 = v21 + 40 == v28;
                sub_275C90098(v26);
                return v24;
              }

              sub_275C90098(v26);
            }

            v16 = v21;
            v21 += 40;
            if (v21 == v28)
            {
              return 1;
            }
          }
        }

        return 1;
      }

      v19 = v26;
      v20 = &v33;
    }

    sub_275CC2618(v19, v20);
    goto LABEL_35;
  }

  if (v6 != 3)
  {
    if (v6 == 4)
    {
      sub_275CC2694(a1, a1 + 40, a1 + 80, a2 - 40, a3);
      return 1;
    }

    if (v6 != 5)
    {
      goto LABEL_16;
    }

    v26[0] = a1;
    v32 = a1 + 80;
    v33 = a1 + 40;
    v10 = a2 - 40;
    v30 = a2 - 40;
    v31 = a1 + 120;
    sub_275CC2694(a1, a1 + 40, a1 + 80, a1 + 120, a3);
    if (!(*a3)(v10, a1 + 120))
    {
      return 1;
    }

    sub_275CC2618(&v31, &v30);
    if (!(*a3)(v31, a1 + 80))
    {
      return 1;
    }

    sub_275CC2618(&v32, &v31);
    if (!(*a3)(v32, a1 + 40))
    {
      return 1;
    }

    sub_275CC2618(&v33, &v32);
    v11 = (*a3)(v33, a1);
    goto LABEL_22;
  }

  v12 = a1 + 40;
  v13 = a2 - 40;
  v26[0] = a1;
  v32 = a2 - 40;
  v33 = a1 + 40;
  v14 = (*a3)(a1 + 40, a1);
  v15 = (*a3)(v13, v12);
  if (v14)
  {
    if (v15)
    {
      v8 = v26;
    }

    else
    {
      sub_275CC2618(v26, &v33);
      if (!(*a3)(v32, v33))
      {
        return 1;
      }

      v8 = &v33;
    }

    v9 = &v32;
    goto LABEL_30;
  }

  if (v15)
  {
    sub_275CC2618(&v33, &v32);
    v11 = (*a3)(v33, v26[0]);
LABEL_22:
    if (v11)
    {
      v8 = v26;
      v9 = &v33;
      goto LABEL_30;
    }
  }

  return 1;
}

void sub_275CC30C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C90098(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275CC30D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  v18 = a1;
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a1;
    v8 = a2 - a1;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 41)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = a1 + 40 * v10;
      do
      {
        sub_275CC3228(v7, a4, v9, v12);
        v12 -= 40;
        --v11;
      }

      while (v11);
    }

    v17 = v6;
    v13 = v6;
    if (v6 != a3)
    {
      do
      {
        if ((*a4)(v13, v18))
        {
          sub_275CC2618(&v17, &v18);
          sub_275CC3228(v18, a4, v9, v18);
        }

        v13 = v17 + 40;
        v17 = v13;
      }

      while (v13 != a3);
      v7 = v18;
      v8 = v6 - v18;
    }

    if (v8 >= 41)
    {
      v14 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 3);
      do
      {
        sub_275CC33C0(v7, v6, a4, v14);
        v6 -= 40;
      }

      while (v14-- > 2);
      return v17;
    }

    return v13;
  }

  return a3;
}

uint64_t sub_275CC3228(uint64_t result, uint64_t (**a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0xCCCCCCCCCCCCCCCDLL * ((a4 - result) >> 3)))
    {
      v10 = (0x999999999999999ALL * ((a4 - result) >> 3)) | 1;
      v11 = result + 40 * v10;
      v12 = 0x999999999999999ALL * ((a4 - result) >> 3) + 2;
      if (v12 < a3 && (*a2)(result + 40 * v10, v11 + 40))
      {
        v11 += 40;
        v10 = v12;
      }

      result = (*a2)(v11, v5);
      if ((result & 1) == 0)
      {
        sub_275C8FFF4(v15, v5);
        v16 = *(v5 + 32);
        do
        {
          v13 = v11;
          sub_275C8FFF8(v5, v11);
          *(v5 + 32) = *(v11 + 32);
          if (v7 < v10)
          {
            break;
          }

          v14 = (2 * v10) | 1;
          v11 = v6 + 40 * v14;
          v10 = 2 * v10 + 2;
          if (v10 >= a3)
          {
            v10 = v14;
          }

          else if ((*a2)(v6 + 40 * v14, v11 + 40))
          {
            v11 += 40;
          }

          else
          {
            v10 = v14;
          }

          v5 = v13;
        }

        while (!(*a2)(v11, v15));
        sub_275C8FFF8(v13, v15);
        *(v13 + 32) = v16;
        return sub_275C90098(v15);
      }
    }
  }

  return result;
}

void sub_275CC33A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C90098(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275CC33C0(uint64_t result, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = result;
    sub_275C8FFF4(v10, result);
    v11 = *(v7 + 32);
    v8 = sub_275CC34C0(v7, a3, a4);
    v9 = v8;
    if (v8 == a2 - 40)
    {
      sub_275C8FFF8(v8, v10);
      *(v9 + 32) = v11;
    }

    else
    {
      sub_275C8FFF8(v8, a2 - 40);
      *(v9 + 32) = *(a2 - 8);
      sub_275C8FFF8(a2 - 40, v10);
      *(a2 - 8) = v11;
      sub_275CC3584(v7, v9 + 40, a3, 0xCCCCCCCCCCCCCCCDLL * ((v9 + 40 - v7) >> 3));
    }

    return sub_275C90098(v10);
  }

  return result;
}

void sub_275CC34AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C90098(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275CC34C0(uint64_t a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 40 * v6;
    v9 = v8 + 40;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = v8 + 80;
      if ((*a2)(v8 + 40, v8 + 80))
      {
        v9 = v12;
        v10 = v11;
      }
    }

    sub_275C8FFF8(a1, v9);
    *(a1 + 32) = *(v9 + 32);
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

uint64_t sub_275CC3584(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = result;
    v8 = v4 >> 1;
    v9 = result + 40 * (v4 >> 1);
    v10 = a2 - 40;
    result = (*a3)(v9, a2 - 40);
    if (result)
    {
      sub_275C8FFF4(v12, v10);
      v13 = *(a2 - 8);
      do
      {
        v11 = v9;
        sub_275C8FFF8(v10, v9);
        *(v10 + 32) = *(v9 + 32);
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = v7 + 40 * v8;
        v10 = v11;
      }

      while (((*a3)(v9, v12) & 1) != 0);
      sub_275C8FFF8(v11, v12);
      *(v11 + 32) = v13;
      return sub_275C90098(v12);
    }
  }

  return result;
}

void sub_275CC366C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C90098(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275CC3684(void *a1, uint64_t a2)
{
  result = sub_275CC1234(a1, a2);
  if (result)
  {
    sub_275C9D8AC(a1, result, v4);
    sub_275CC1644(v4);
    return 1;
  }

  return result;
}

void sub_275CC36D0(void ***a1)
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
        v4 = sub_275C90098(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_275CC3768(void *a1, uint64_t a2)
{
  result = sub_275CC1234(a1, a2);
  if (result)
  {
    sub_275C9D8AC(a1, result, v4);
    sub_275CC37B4(v4);
    return 1;
  }

  return result;
}

char **sub_275CC37B4(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_275C90098(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_275CC3800(void *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = CFHash(v4);
  }

  v5 = *(a2 + 16);
  v6 = v4 ^ v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_20;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4 ^ v5;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_20:
    sub_275CC3A7C();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_20;
    }

LABEL_19:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  if (!sub_275C9009C((v12 + 2), a2))
  {
    goto LABEL_19;
  }

  return v12;
}

void sub_275CC3A68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275CC37B4(va);
  _Unwind_Resume(a1);
}

void *sub_275CC3B0C(void *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = CFHash(v4);
  }

  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4 ^ *(a2 + 16);
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4 ^ *(a2 + 16);
    if (v6 >= *&v5)
    {
      v9 = v6 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v6;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (sub_275CC0C3C((v11 + 2), a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void *sub_275CC3C10(void *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = CFHash(v4);
  }

  v5 = *(a2 + 16);
  v6 = v4 ^ v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_20;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4 ^ v5;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_20:
    sub_275CC3E8C();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_20;
    }

LABEL_19:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  if (!sub_275CC0C3C((v12 + 2), a2))
  {
    goto LABEL_19;
  }

  return v12;
}

void sub_275CC3E78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275CC3F08(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275CC3F08(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_275CC0C08(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_275CC3F54(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  if (v3)
  {
    CFRetain(v3);
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t sub_275CC3FA8(uint64_t a1, uint64_t a2, const void *a3)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0;
  *(a1 + 56) = xmmword_275D0B8C0;
  pthread_rwlock_init((a1 + 72), 0);
  *(a1 + 272) = _Block_copy(a3);
  return a1;
}

uint64_t sub_275CC4044(uint64_t result, int *a2, uint64_t (**a3)(int *, int *), uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 4;
  v96 = a2 - 2;
  v97 = a2 - 12;
  v98 = a2 - 8;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 4;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        result = (*a3)(a2 - 4, v10);
        if (result)
        {
          v89 = *v10;
          *v10 = *(a2 - 4);
          *(a2 - 4) = v89;
          v90 = *(v10 + 8);
          *(v10 + 8) = *(a2 - 1);
          *(a2 - 1) = v90;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      v78 = (*a3)((v10 + 16), v10);
      result = (*a3)(a2 - 4, (v10 + 16));
      if (v78)
      {
        v80 = (v10 + 8);
        v79 = *v10;
        if (result)
        {
          *v10 = *(a2 - 4);
        }

        else
        {
          *v10 = *(v10 + 16);
          *(v10 + 16) = v79;
          v80 = (v10 + 24);
          v94 = *(v10 + 8);
          *(v10 + 8) = *(v10 + 24);
          *(v10 + 24) = v94;
          result = (*a3)(a2 - 4, (v10 + 16));
          if (!result)
          {
            return result;
          }

          v79 = *(v10 + 16);
          *(v10 + 16) = *(a2 - 4);
        }

        *(a2 - 4) = v79;
      }

      else
      {
        if (!result)
        {
          return result;
        }

        v91 = *(v10 + 16);
        *(v10 + 16) = *(a2 - 4);
        *(a2 - 4) = v91;
        v92 = *(v10 + 24);
        v96 = (v10 + 24);
        *(v10 + 24) = *(a2 - 1);
        *(a2 - 1) = v92;
        result = (*a3)((v10 + 16), v10);
        if (!result)
        {
          return result;
        }

        v93 = *v10;
        *v10 = *(v10 + 16);
        *(v10 + 16) = v93;
        v80 = (v10 + 8);
      }

      v95 = *v80;
      *v80 = *v96;
      *v96 = v95;
      return result;
    }

    if (v13 == 4)
    {
      break;
    }

    if (v13 == 5)
    {
      sub_275CC49D8(v10, (v10 + 16), (v10 + 32), (v10 + 48), a3);
      result = (*a3)(a2 - 4, (v10 + 48));
      if (result)
      {
        v81 = *(v10 + 48);
        *(v10 + 48) = *(a2 - 4);
        *(a2 - 4) = v81;
        v82 = *(v10 + 56);
        *(v10 + 56) = *(a2 - 1);
        *(a2 - 1) = v82;
        result = (*a3)((v10 + 48), (v10 + 32));
        if (result)
        {
          v83 = *(v10 + 32);
          *(v10 + 32) = *(v10 + 48);
          *(v10 + 48) = v83;
          v84 = *(v10 + 40);
          *(v10 + 40) = *(v10 + 56);
          *(v10 + 56) = v84;
          result = (*a3)((v10 + 32), (v10 + 16));
          if (result)
          {
            v85 = *(v10 + 16);
            *(v10 + 16) = *(v10 + 32);
            *(v10 + 32) = v85;
            v86 = *(v10 + 24);
            *(v10 + 24) = *(v10 + 40);
            *(v10 + 40) = v86;
            result = (*a3)((v10 + 16), v10);
            if (result)
            {
              v87 = *v10;
              *v10 = *(v10 + 16);
              *(v10 + 16) = v87;
              v88 = *(v10 + 8);
              *(v10 + 8) = *(v10 + 24);
              *(v10 + 24) = v88;
            }
          }
        }
      }

      return result;
    }

LABEL_11:
    if (v13 <= 23)
    {
      if (a5)
      {

        return sub_275CC4BA8(v10, a2, a3);
      }

      else
      {

        return sub_275CC4C8C(v10, a2, a3);
      }
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        return sub_275CC5448(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = v10 + 16 * (v13 >> 1);
    v15 = *a3;
    if (v13 >= 0x81)
    {
      v16 = v15((v10 + 16 * (v13 >> 1)), v10);
      v17 = (*a3)(a2 - 4, v14);
      if (v16)
      {
        v19 = (v8 + 8);
        v18 = *v8;
        if (v17)
        {
          *v8 = *v9;
          goto LABEL_28;
        }

        *v8 = *v14;
        *v14 = v18;
        v19 = (v14 + 8);
        v32 = *(v8 + 8);
        *(v8 + 8) = *(v14 + 8);
        *(v14 + 8) = v32;
        if ((*a3)(a2 - 4, v14))
        {
          v18 = *v14;
          *v14 = *v9;
LABEL_28:
          *v9 = v18;
          v26 = a2 - 2;
LABEL_29:
          v33 = *v19;
          *v19 = *v26;
          *v26 = v33;
        }
      }

      else if (v17)
      {
        v24 = *v14;
        *v14 = *(a2 - 4);
        *(a2 - 4) = v24;
        v26 = (v14 + 8);
        v25 = *(v14 + 8);
        *(v14 + 8) = *(a2 - 1);
        *(a2 - 1) = v25;
        if ((*a3)(v14, v8))
        {
          v27 = *v8;
          *v8 = *v14;
          v19 = (v8 + 8);
          *v14 = v27;
          goto LABEL_29;
        }
      }

      v34 = (v14 - 16);
      v35 = (*a3)((v14 - 16), (v8 + 16));
      v36 = (*a3)(v98, (v14 - 16));
      if (v35)
      {
        v37 = *(v8 + 16);
        v38 = (v8 + 24);
        if (v36)
        {
          *(v8 + 16) = *v98;
          *v98 = v37;
          goto LABEL_41;
        }

        *(v8 + 16) = *v34;
        *v34 = v37;
        v44 = *v38;
        *v38 = *(v14 - 8);
        *(v14 - 8) = v44;
        if ((*a3)(v98, (v14 - 16)))
        {
          v45 = *v34;
          *v34 = *v98;
          *v98 = v45;
          v38 = (v14 - 8);
LABEL_41:
          v41 = a2 - 6;
LABEL_42:
          v46 = *v38;
          *v38 = *v41;
          *v41 = v46;
        }
      }

      else if (v36)
      {
        v39 = *v34;
        *v34 = *(a2 - 8);
        *(a2 - 8) = v39;
        v41 = (v14 - 8);
        v40 = *(v14 - 8);
        *(v14 - 8) = *(a2 - 3);
        *(a2 - 3) = v40;
        if ((*a3)((v14 - 16), (v8 + 16)))
        {
          v42 = *(v8 + 16);
          *(v8 + 16) = *v34;
          *v34 = v42;
          v38 = (v8 + 24);
          goto LABEL_42;
        }
      }

      v47 = (v14 + 16);
      v48 = (*a3)((v14 + 16), (v8 + 32));
      v49 = (*a3)(v97, (v14 + 16));
      if (v48)
      {
        v50 = *(v8 + 32);
        v51 = (v8 + 40);
        if (v49)
        {
          *(v8 + 32) = *v97;
          *v97 = v50;
          goto LABEL_51;
        }

        *(v8 + 32) = *v47;
        *v47 = v50;
        v56 = *v51;
        *v51 = *(v14 + 24);
        *(v14 + 24) = v56;
        if ((*a3)(v97, (v14 + 16)))
        {
          v57 = *v47;
          *v47 = *v97;
          *v97 = v57;
          v51 = (v14 + 24);
LABEL_51:
          v54 = a2 - 10;
LABEL_52:
          v58 = *v51;
          *v51 = *v54;
          *v54 = v58;
        }
      }

      else if (v49)
      {
        v52 = *v47;
        *v47 = *(a2 - 12);
        *(a2 - 12) = v52;
        v54 = (v14 + 24);
        v53 = *(v14 + 24);
        *(v14 + 24) = *(a2 - 5);
        *(a2 - 5) = v53;
        if ((*a3)((v14 + 16), (v8 + 32)))
        {
          v55 = *(v8 + 32);
          *(v8 + 32) = *v47;
          *v47 = v55;
          v51 = (v8 + 40);
          goto LABEL_52;
        }
      }

      v59 = (*a3)(v14, (v14 - 16));
      v60 = (*a3)((v14 + 16), v14);
      if (v59)
      {
        v61 = *v34;
        if (v60)
        {
          *v34 = *v47;
          *v47 = v61;
          v62 = (v14 + 24);
          v63 = *v14;
          v64 = (v14 - 8);
          goto LABEL_61;
        }

        *v34 = *v14;
        *v14 = v61;
        v69 = *(v14 - 8);
        *(v14 - 8) = *(v14 + 8);
        *(v14 + 8) = v69;
        v70 = (*a3)((v14 + 16), v14);
        v63 = *v14;
        if (v70)
        {
          v71 = *v47;
          *v14 = *v47;
          *v47 = v63;
          v62 = (v14 + 24);
          v63 = v71;
          v64 = (v14 + 8);
LABEL_61:
          v66 = v62;
LABEL_62:
          v72 = *v64;
          *v64 = *v66;
          *v66 = v72;
        }
      }

      else
      {
        v63 = *v14;
        if (v60)
        {
          *v14 = *v47;
          *v47 = v63;
          v66 = (v14 + 8);
          v65 = *(v14 + 8);
          *(v14 + 8) = *(v14 + 24);
          *(v14 + 24) = v65;
          v67 = (*a3)(v14, (v14 - 16));
          v63 = *v14;
          if (v67)
          {
            v68 = *v34;
            *v34 = v63;
            v64 = (v14 - 8);
            *v14 = v68;
            v63 = v68;
            goto LABEL_62;
          }
        }
      }

      v73 = *v8;
      *v8 = v63;
      v23 = (v8 + 8);
      *v14 = v73;
      v31 = (v14 + 8);
LABEL_64:
      v74 = *v23;
      *v23 = *v31;
      *v31 = v74;
      goto LABEL_65;
    }

    v20 = v15(v10, (v10 + 16 * (v13 >> 1)));
    v21 = (*a3)(a2 - 4, v10);
    if (v20)
    {
      v23 = (v14 + 8);
      v22 = *v14;
      if (v21)
      {
        *v14 = *v9;
LABEL_38:
        *v9 = v22;
        v31 = a2 - 2;
        goto LABEL_64;
      }

      *v14 = *v10;
      *v10 = v22;
      v23 = (v10 + 8);
      v43 = *(v14 + 8);
      *(v14 + 8) = *(v10 + 8);
      *(v10 + 8) = v43;
      if ((*a3)(a2 - 4, v10))
      {
        v22 = *v10;
        *v10 = *v9;
        goto LABEL_38;
      }
    }

    else if (v21)
    {
      v28 = *v10;
      *v10 = *(a2 - 4);
      *(a2 - 4) = v28;
      v29 = *(v10 + 8);
      *(v10 + 8) = *(a2 - 1);
      *(a2 - 1) = v29;
      if ((*a3)(v10, v14))
      {
        v30 = *v14;
        *v14 = *v10;
        *v10 = v30;
        v23 = (v14 + 8);
        v31 = (v10 + 8);
        goto LABEL_64;
      }
    }

LABEL_65:
    if ((a5 & 1) == 0 && ((*a3)((v8 - 16), v8) & 1) == 0)
    {
      result = sub_275CC4D54(v8, a2, a3);
      v10 = result;
      goto LABEL_72;
    }

    v75 = sub_275CC4E9C(v8, a2, a3);
    if ((v76 & 1) == 0)
    {
      goto LABEL_70;
    }

    v77 = sub_275CC4FE4(v8, v75, a3);
    v10 = (v75 + 4);
    result = sub_275CC4FE4((v75 + 4), a2, a3);
    if (result)
    {
      a4 = -v12;
      a2 = v75;
      if (v77)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v77)
    {
LABEL_70:
      result = sub_275CC4044(v8, v75, a3, -v12, a5 & 1);
      v10 = (v75 + 4);
LABEL_72:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  return sub_275CC49D8(v10, (v10 + 16), (v10 + 32), a2 - 4, a3);
}

uint64_t sub_275CC49D8(int *a1, int *a2, int *a3, int *a4, uint64_t (**a5)(int *, int *))
{
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    v13 = (a1 + 2);
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v12;
      v16 = (a3 + 2);
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v12;
    v13 = (a2 + 2);
    v18 = *(a1 + 1);
    *(a1 + 1) = *(a2 + 1);
    *(a2 + 1) = v18;
    if ((*a5)(a3, a2))
    {
      v12 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v14 = *a2;
    *a2 = *a3;
    *a3 = v14;
    v16 = (a2 + 2);
    v15 = *(a2 + 1);
    *(a2 + 1) = *(a3 + 1);
    *(a3 + 1) = v15;
    if ((*a5)(a2, a1))
    {
      v17 = *a1;
      *a1 = *a2;
      v13 = (a1 + 2);
      *a2 = v17;
LABEL_10:
      v19 = *v13;
      *v13 = *v16;
      *v16 = v19;
    }
  }

  result = (*a5)(a4, a3);
  if (result)
  {
    v21 = *a3;
    *a3 = *a4;
    *a4 = v21;
    v22 = *(a3 + 1);
    *(a3 + 1) = *(a4 + 1);
    *(a4 + 1) = v22;
    result = (*a5)(a3, a2);
    if (result)
    {
      v23 = *a2;
      *a2 = *a3;
      *a3 = v23;
      v24 = *(a2 + 1);
      *(a2 + 1) = *(a3 + 1);
      *(a3 + 1) = v24;
      result = (*a5)(a2, a1);
      if (result)
      {
        v25 = *a1;
        *a1 = *a2;
        *a2 = v25;
        v26 = *(a1 + 1);
        *(a1 + 1) = *(a2 + 1);
        *(a2 + 1) = v26;
      }
    }
  }

  return result;
}

uint64_t sub_275CC4BA8(uint64_t result, _OWORD *a2, uint64_t (**a3)(_OWORD *, void))
{
  if (result != a2)
  {
    v16 = v3;
    v17 = v4;
    v6 = result;
    v7 = (result + 16);
    if ((result + 16) != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = (*a3)(v7, v11);
        if (result)
        {
          v15 = *v10;
          v12 = v9;
          while (1)
          {
            v13 = v6 + v12;
            *(v13 + 16) = *(v6 + v12);
            *(v13 + 24) = *(v6 + v12 + 8);
            if (!v12)
            {
              break;
            }

            v12 -= 16;
            result = (*a3)(&v15, v12 + v6);
            if ((result & 1) == 0)
            {
              v14 = v6 + v12 + 16;
              goto LABEL_10;
            }
          }

          v14 = v6;
LABEL_10:
          *v14 = v15;
          *(v14 + 8) = *(&v15 + 1);
        }

        v7 = v10 + 1;
        v9 += 16;
      }

      while (v10 + 1 != a2);
    }
  }

  return result;
}

uint64_t sub_275CC4C8C(uint64_t result, _OWORD *a2, uint64_t (**a3)(_OWORD *, void))
{
  if (result != a2)
  {
    v13 = v3;
    v14 = v4;
    v6 = result;
    v7 = (result + 16);
    if ((result + 16) != a2)
    {
      v9 = result - 16;
      do
      {
        v10 = v6;
        v6 = v7;
        result = (*a3)(v7, v10);
        if (result)
        {
          v12 = *v6;
          v11 = v9;
          do
          {
            *(v11 + 32) = *(v11 + 16);
            *(v11 + 40) = *(v11 + 24);
            result = (*a3)(&v12, v11);
            v11 -= 16;
          }

          while ((result & 1) != 0);
          *(v11 + 32) = v12;
          *(v11 + 40) = *(&v12 + 1);
        }

        v7 = v6 + 1;
        v9 += 16;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

int *sub_275CC4D54(int *a1, unint64_t a2, uint64_t (**a3)(__int128 *, int *))
{
  v4 = a2;
  v12 = *a1;
  if ((*a3)(&v12, (a2 - 16)))
  {
    v6 = a1;
    do
    {
      v6 += 4;
    }

    while (((*a3)(&v12, v6) & 1) == 0);
  }

  else
  {
    v7 = a1 + 4;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = (*a3)(&v12, v7);
      v7 = v6 + 4;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 -= 16;
    }

    while (((*a3)(&v12, v4) & 1) != 0);
  }

  while (v6 < v4)
  {
    v9 = *v6;
    *v6 = *v4;
    *v4 = v9;
    v10 = *(v6 + 1);
    *(v6 + 1) = *(v4 + 8);
    *(v4 + 8) = v10;
    do
    {
      v6 += 4;
    }

    while (!(*a3)(&v12, v6));
    do
    {
      v4 -= 16;
    }

    while (((*a3)(&v12, v4) & 1) != 0);
  }

  if (v6 - 4 != a1)
  {
    *a1 = *(v6 - 4);
    *(a1 + 1) = *(v6 - 1);
  }

  *(v6 - 4) = v12;
  *(v6 - 1) = *(&v12 + 1);
  return v6;
}

int *sub_275CC4E9C(int *a1, unint64_t a2, uint64_t (**a3)(int *, __int128 *))
{
  v6 = 0;
  v13 = *a1;
  do
  {
    v6 += 4;
  }

  while (((*a3)(&a1[v6], &v13) & 1) != 0);
  v7 = &a1[v6];
  if (v6 == 4)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 16;
    }

    while (((*a3)(a2, &v13) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 16;
    }

    while (!(*a3)(a2, &v13));
  }

  v8 = &a1[v6];
  if (v7 < a2)
  {
    v9 = a2;
    do
    {
      v10 = *v8;
      *v8 = *v9;
      *v9 = v10;
      v11 = *(v8 + 1);
      *(v8 + 1) = *(v9 + 8);
      *(v9 + 8) = v11;
      do
      {
        ++v8;
      }

      while (((*a3)(v8, &v13) & 1) != 0);
      do
      {
        v9 -= 16;
      }

      while (!(*a3)(v9, &v13));
    }

    while (v8 < v9);
  }

  result = (v8 - 1);
  if (v8 - 1 != a1)
  {
    *a1 = *(v8 - 4);
    *(a1 + 1) = *(v8 - 1);
  }

  *(v8 - 4) = v13;
  *(v8 - 1) = *(&v13 + 1);
  return result;
}

BOOL sub_275CC4FE4(uint64_t a1, int *a2, uint64_t (**a3)(int *, int *))
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v17 = (*a3)((a1 + 16), a1);
      v18 = (*a3)(a2 - 4, (a1 + 16));
      if (v17)
      {
        v20 = (a1 + 8);
        v19 = *a1;
        if (v18)
        {
          *a1 = *(a2 - 4);
        }

        else
        {
          *a1 = *(a1 + 16);
          *(a1 + 16) = v19;
          v20 = (a1 + 24);
          v34 = *(a1 + 8);
          *(a1 + 8) = *(a1 + 24);
          *(a1 + 24) = v34;
          if (!(*a3)(a2 - 4, (a1 + 16)))
          {
            return 1;
          }

          v19 = *(a1 + 16);
          *(a1 + 16) = *(a2 - 4);
        }

        *(a2 - 4) = v19;
        v28 = a2 - 2;
      }

      else
      {
        if (!v18)
        {
          return 1;
        }

        v26 = *(a1 + 16);
        *(a1 + 16) = *(a2 - 4);
        *(a2 - 4) = v26;
        v28 = (a1 + 24);
        v27 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v27;
        if (!(*a3)((a1 + 16), a1))
        {
          return 1;
        }

        v29 = *a1;
        *a1 = *(a1 + 16);
        *(a1 + 16) = v29;
        v20 = (a1 + 8);
      }

      v35 = *v20;
      *v20 = *v28;
      *v28 = v35;
      return 1;
    }

    if (v6 != 4)
    {
      if (v6 == 5)
      {
        sub_275CC49D8(a1, (a1 + 16), (a1 + 32), (a1 + 48), a3);
        if ((*a3)(a2 - 4, (a1 + 48)))
        {
          v9 = *(a1 + 48);
          *(a1 + 48) = *(a2 - 4);
          *(a2 - 4) = v9;
          v10 = *(a1 + 56);
          *(a1 + 56) = *(a2 - 1);
          *(a2 - 1) = v10;
          if ((*a3)((a1 + 48), (a1 + 32)))
          {
            v11 = *(a1 + 32);
            *(a1 + 32) = *(a1 + 48);
            *(a1 + 48) = v11;
            v12 = *(a1 + 40);
            *(a1 + 40) = *(a1 + 56);
            *(a1 + 56) = v12;
            if ((*a3)((a1 + 32), (a1 + 16)))
            {
              v13 = *(a1 + 16);
              *(a1 + 16) = *(a1 + 32);
              *(a1 + 32) = v13;
              v14 = *(a1 + 24);
              *(a1 + 24) = *(a1 + 40);
              *(a1 + 40) = v14;
              if ((*a3)((a1 + 16), a1))
              {
                v15 = *a1;
                *a1 = *(a1 + 16);
                *(a1 + 16) = v15;
                v16 = *(a1 + 8);
                *(a1 + 8) = *(a1 + 24);
                *(a1 + 24) = v16;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    sub_275CC49D8(a1, (a1 + 16), (a1 + 32), a2 - 4, a3);
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(a2 - 4, a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 4);
      *(a2 - 4) = v7;
      v8 = *(a1 + 8);
      *(a1 + 8) = *(a2 - 1);
      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_17:
  v21 = (a1 + 32);
  v22 = (*a3)((a1 + 16), a1);
  v23 = (*a3)((a1 + 32), (a1 + 16));
  if (v22)
  {
    v25 = (a1 + 8);
    v24 = *a1;
    if (v23)
    {
      *a1 = *(a1 + 32);
    }

    else
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v24;
      v25 = (a1 + 24);
      v36 = *(a1 + 8);
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 24) = v36;
      if (!(*a3)((a1 + 32), (a1 + 16)))
      {
        goto LABEL_35;
      }

      v24 = *(a1 + 16);
      *(a1 + 16) = *(a1 + 32);
    }

    *(a1 + 32) = v24;
    v32 = (a1 + 40);
    goto LABEL_34;
  }

  if (v23)
  {
    v30 = *(a1 + 16);
    *(a1 + 16) = *(a1 + 32);
    *(a1 + 32) = v30;
    v32 = (a1 + 24);
    v31 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 40);
    *(a1 + 40) = v31;
    if ((*a3)((a1 + 16), a1))
    {
      v33 = *a1;
      *a1 = *(a1 + 16);
      *(a1 + 16) = v33;
      v25 = (a1 + 8);
LABEL_34:
      v37 = *v25;
      *v25 = *v32;
      *v32 = v37;
    }
  }

LABEL_35:
  v38 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v39 = 0;
  v40 = 0;
  while (1)
  {
    if ((*a3)(v38, v21))
    {
      v45 = *v38;
      v41 = v39;
      while (1)
      {
        v42 = a1 + v41;
        *(v42 + 48) = *(a1 + v41 + 32);
        *(v42 + 56) = *(a1 + v41 + 40);
        if (v41 == -32)
        {
          break;
        }

        v41 -= 16;
        if (((*a3)(&v45, (v42 + 16)) & 1) == 0)
        {
          v43 = a1 + v41 + 48;
          goto LABEL_43;
        }
      }

      v43 = a1;
LABEL_43:
      *v43 = v45;
      *(v43 + 8) = *(&v45 + 1);
      if (++v40 == 8)
      {
        return v38 + 4 == a2;
      }
    }

    v21 = v38;
    v39 += 16;
    v38 += 4;
    if (v38 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_275CC5448(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int (**a4)(uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 16 * v9);
      do
      {
        sub_275CC55B8(a1, a4, v8, v11--);
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
        if ((*a4)(v12, a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          v14 = *(v12 + 8);
          *(v12 + 8) = *(a1 + 8);
          *(a1 + 8) = v14;
          sub_275CC55B8(a1, a4, v8, a1);
        }

        v12 += 16;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v15 = a2 - 16;
      do
      {
        v16 = *a1;
        v17 = *(a1 + 8);
        v18 = sub_275CC5700(a1, a4, v8);
        if (v15 == v18)
        {
          *v18 = v16;
          *(v18 + 8) = v17;
        }

        else
        {
          *v18 = *v15;
          *(v18 + 8) = *(v15 + 8);
          *v15 = v16;
          *(v15 + 8) = v17;
          sub_275CC57B4(a1, v18 + 16, a4, (v18 + 16 - a1) >> 4);
        }

        v15 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_275CC55B8(uint64_t result, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3, __int128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v20 = v4;
    v21 = v5;
    v7 = a4;
    v8 = result;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - result) >> 4)
    {
      v12 = (a4 - result) >> 3;
      v13 = v12 + 1;
      v14 = result + 16 * (v12 + 1);
      v15 = v12 + 2;
      if (v12 + 2 < a3 && (*a2)(v14, v14 + 16))
      {
        v14 += 16;
        v13 = v15;
      }

      result = (*a2)(v14, v7);
      if ((result & 1) == 0)
      {
        v19 = *v7;
        do
        {
          v16 = v14;
          *v7 = *v14;
          *(v7 + 1) = *(v14 + 8);
          if (v9 < v13)
          {
            break;
          }

          v17 = (2 * v13) | 1;
          v14 = v8 + 16 * v17;
          v18 = 2 * v13 + 2;
          if (v18 < a3)
          {
            if ((*a2)(v8 + 16 * v17, v14 + 16))
            {
              v14 += 16;
              v17 = v18;
            }
          }

          result = (*a2)(v14, &v19);
          v7 = v16;
          v13 = v17;
        }

        while (!result);
        *v16 = v19;
        *(v16 + 8) = *(&v19 + 1);
      }
    }
  }

  return result;
}

uint64_t sub_275CC5700(uint64_t a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 16 * v6;
    v9 = v8 + 16;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = v8 + 32;
      if ((*a2)(v8 + 16, v8 + 32))
      {
        v9 = v12;
        v10 = v11;
      }
    }

    *a1 = *v9;
    *(a1 + 8) = *(v9 + 8);
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

uint64_t sub_275CC57B4(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v14 = v4;
    v15 = v5;
    v8 = result;
    v9 = v6 >> 1;
    v10 = result + 16 * (v6 >> 1);
    v11 = (a2 - 16);
    result = (*a3)(v10, a2 - 16);
    if (result)
    {
      v13 = *v11;
      do
      {
        v12 = v10;
        *v11 = *v10;
        *(v11 + 1) = *(v10 + 8);
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = v8 + 16 * v9;
        result = (*a3)(v10, &v13);
        v11 = v12;
      }

      while ((result & 1) != 0);
      *v12 = v13;
      *(v12 + 8) = *(&v13 + 1);
    }
  }

  return result;
}

uint64_t *sub_275CC5870(void *a1, unsigned int *a2)
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
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
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
  }

  return result;
}

uint64_t *sub_275CC5924(void *a1, unsigned int *a2)
{
  result = sub_275CC5870(a1, a2);
  if (result)
  {
    sub_275CB0BDC(a1, result);
    return 1;
  }

  return result;
}

uint64_t *sub_275CC595C(void *a1, unsigned int *a2)
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
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

id sub_275CC5BA0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB18];
  v6 = objc_msgSend_count(a1, a2, a3, a4);
  v9 = objc_msgSend_arrayWithCapacity_(v5, v7, v6, v8);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v10, &v20, v24, 16);
  if (v11)
  {
    v15 = v11;
    v16 = *v21;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(a1);
        }

        v18 = *(*(&v20 + 1) + 8 * i);
        if ((objc_msgSend_isSpaceLike(v18, v12, v13, v14) & 1) == 0)
        {
          objc_msgSend_addObject_(v9, v12, v18, v14);
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v12, &v20, v24, 16);
    }

    while (v15);
  }

  return objc_msgSend_copy(v9, v12, v13, v14);
}

void sub_275CC5FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_275CC67F8(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_275CC6BF8(uint64_t a1)
{
  *a1 = &unk_2884CB990;

  return a1;
}

void sub_275CC6C50(uint64_t a1)
{
  sub_275CC6BF8(a1);

  JUMPOUT(0x277C8CFC0);
}

uint64_t sub_275CC6C88(uint64_t result)
{
  *result = &unk_2884CB990;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_275CC6CB0(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {

    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = objc_msgSend_copy(*(a2 + 24), v4, v5, v6);
  }

  return a1;
}

uint64_t sub_275CC7468(uint64_t a1)
{
  if (*(a1 + 8) == 4)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275CC7484(uint64_t a1)
{
  if (*(a1 + 8) == 5)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275CC74A0(uint64_t a1)
{
  if (*(a1 + 8) == 19)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275CC74BC(uint64_t a1)
{
  if (*(a1 + 8) == 20)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275CC74D8(uint64_t a1)
{
  if (*(a1 + 8) == 12)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275CC74F4(uint64_t a1)
{
  if (*(a1 + 8) == 13)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275CC7510(uint64_t a1)
{
  if (*(a1 + 8) == 14)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275CC752C(uint64_t a1)
{
  if (*(a1 + 8) == 6)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275CC7548(uint64_t a1)
{
  if (*(a1 + 8) == 22)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275CC7564(uint64_t a1)
{
  if (*(a1 + 8) == 15)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275CC7580(uint64_t a1)
{
  if (*(a1 + 8) == 16)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275CC759C(uint64_t a1)
{
  if (*(a1 + 8) == 17)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275CC75B8(uint64_t a1)
{
  if ((*(a1 + 8) & 0xFFFFFFFC) == 8)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275CC75EC(uint64_t a1)
{
  if (*(a1 + 8) == 3)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275CC7608(uint64_t a1)
{
  if ((*(a1 + 8) & 0xFFFFFFFE) == 0xA)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275CC7628(uint64_t a1)
{
  if (*(a1 + 8) == 7)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275CC7644(uint64_t a1)
{
  if (*(a1 + 8) == 18)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275CC7660(uint64_t a1)
{
  if (*(a1 + 8) == 23)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275CC767C(uint64_t a1)
{
  if (*(a1 + 8) == 25)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275CC7698(uint64_t a1)
{
  if (*(a1 + 8) == 28)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

id sub_275CC76B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2884CB990;
  *(a2 + 8) = 1;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_275CC7700(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275CC771C@<X0>(void *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = &unk_2884CB990;
  *(a5 + 8) = 2;
  *(a5 + 16) = 0;
  result = objc_msgSend_copy(a1, a2, a3, a4);
  *(a5 + 24) = result;
  return result;
}

uint64_t sub_275CC776C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 8) != 2)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  if (!v4)
  {
    return objc_msgSend_schemataChildren(*(a1 + 16), a2, a3, a4);
  }

  return v4;
}

uint64_t *sub_275CC7794(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 40) - v2) >> 3) >= a2)
    {
      return (v2 + 24 * a2 - 24);
    }
  }

  if (atomic_load_explicit(&qword_280A38A98, memory_order_acquire))
  {
    return &qword_280A38A80;
  }

  if (__cxa_guard_acquire(&qword_280A38A98))
  {
    qword_280A38A80 = 0;
    *algn_280A38A88 = 0;
    qword_280A38A90 = 0;
    __cxa_guard_release(&qword_280A38A98);
  }

  return &qword_280A38A80;
}

uint64_t sub_275CC7844(unsigned __int16 *a1, uint64_t a2)
{
  v4 = sub_275CC85C0((a1 + 4), a2);
  if (a1 + 8 != v4)
  {
    return *(v4 + 56);
  }

  v5 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_275CAF534(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v8 = *(a2 + 16);
  }

  v9 = v5;
  sub_275CC8650((a1 + 4), __p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  sub_275CC791C(a1 + 4, a2);
  ++*a1;
  return v5;
}

void sub_275CC7900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275CC791C(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_275CC87E8(a1, a2);
  }

  else
  {
    sub_275CC8788(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_275CC795C(uint64_t a1)
{
  sub_275C8EC0C(a1 + 104, *(a1 + 112));
  sub_275C8EC0C(a1 + 80, *(a1 + 88));
  sub_275C8EC0C(a1 + 56, *(a1 + 64));
  v3 = (a1 + 32);
  sub_275C97BF0(&v3);
  sub_275CC83F0(a1 + 8, *(a1 + 16));
  return a1;
}

unsigned __int16 *sub_275CC79CC(void *a1)
{
  v123 = *MEMORY[0x277D85DE8];
  v120 = 0;
  v2 = objc_alloc(MEMORY[0x277CBEA60]);
  v4 = objc_msgSend_initWithContentsOfURL_error_(v2, v3, a1, &v120);
  obj = v4;
  if (!v4)
  {
    *&v111 = 0;
    objc_msgSend_getResourceValue_forKey_error_(a1, v5, &v111, *MEMORY[0x277CBE8E8], 0);
    NSLog(&cfstr_FailedToReadWi.isa, v111, v120);
    v4 = 0;
  }

  if (!objc_msgSend_count(v4, v5, v6, v7) || (v8 = operator new(0x80uLL, MEMORY[0x277D826F0])) == 0)
  {
LABEL_82:
    v100 = 0;
    goto LABEL_83;
  }

  *v8 = 1;
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = 0;
  v8[1] = v8 + 2;
  v8[8] = 0;
  v8[5] = 0;
  v8[6] = 0;
  v8[7] = v8 + 8;
  v91 = (v8 + 7);
  v8[9] = 0;
  v8[11] = 0;
  v8[10] = v8 + 11;
  v96 = (v8 + 10);
  v8[12] = 0;
  v8[14] = 0;
  v99 = (v8 + 14);
  v100 = v8;
  v8[13] = v8 + 14;
  v93 = (v8 + 13);
  v8[15] = 0;
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v116, v122, 16);
  if (!v94)
  {
    v80 = 0;
    goto LABEL_68;
  }

  v92 = *v117;
  while (2)
  {
    v10 = 0;
    do
    {
      if (*v117 != v92)
      {
        v11 = v10;
        objc_enumerationMutation(obj);
        v10 = v11;
      }

      v98 = v10;
      v12 = *(*(&v116 + 1) + 8 * v10);
      LODWORD(v111) = 1;
      *(&v111 + 1) = 0;
      LODWORD(v112) = 1;
      *(&v112 + 1) = 0;
      v114 = 0.0;
      bzero(v115, 1uLL);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        NSLog(&cfstr_InvalidItemCla.isa, v12);
LABEL_67:
        v80 = 1;
        goto LABEL_68;
      }

      v15 = objc_msgSend_objectForKey_(v12, v13, @"char", v14);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        NSLog(&cfstr_MissingInvalid.isa, @"char", v12);
        goto LABEL_67;
      }

      v19 = objc_msgSend_UTF8String(v15, v16, v17, v18);
      sub_275CA6274(__p, v19);
      v22 = sub_275CC7844(v100, __p);
      if (v109 < 0)
      {
        operator delete(__p[0]);
      }

      v110 = v22;
      v23 = objc_msgSend_objectForKey_(v12, v20, @"form", v21);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = objc_msgSend_UTF8String(v23, v24, v25, v26);
        sub_275CA6274(__p, v27);
        v101 = sub_275C95B44(__p, 0);
        if (v109 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v101 = 0;
      }

      v28 = objc_msgSend_objectForKey_(v12, v24, @"lspace", v26);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v33 = 0.0;
      if (isKindOfClass)
      {
        v33 = objc_msgSend_integerValue(v28, v30, v31, v32, 0.0);
      }

      LODWORD(v111) = 3;
      *(&v111 + 1) = v33 / 18.0;
      v34 = objc_msgSend_objectForKey_(v12, v30, @"rspace", v32);
      objc_opt_class();
      v35 = objc_opt_isKindOfClass();
      v39 = 0.0;
      if (v35)
      {
        v39 = objc_msgSend_integerValue(v34, v36, v37, v38, 0.0);
      }

      LODWORD(v112) = 3;
      *(&v112 + 1) = v39 / 18.0;
      v40 = objc_msgSend_objectForKey_(v12, v36, @"prio", v38);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v44 = objc_msgSend_unsignedIntegerValue(v40, v41, v42, v43);
      }

      else
      {
        v44 = 0;
      }

      v97 = v44;
      v113 = v44;
      v45 = objc_msgSend_objectForKey_(v12, v41, @"flags", v43);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (objc_msgSend_length(v45, v46, v47, v48))
        {
          v51 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v49, @",", v50);
          v54 = objc_msgSend_componentsSeparatedByCharactersInSet_(v45, v52, v51, v53);
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v55, &v104, v121, 16);
          if (v58)
          {
            v59 = *v105;
            v60 = v115[0];
            v61 = v114;
            do
            {
              for (i = 0; i != v58; ++i)
              {
                if (*v105 != v59)
                {
                  objc_enumerationMutation(v54);
                }

                v63 = *(*(&v104 + 1) + 8 * i);
                if (objc_msgSend_isEqualToString_(v63, v56, @"stretchy", v57))
                {
                  v60 |= 1u;
                }

                else if (objc_msgSend_isEqualToString_(v63, v56, @"symmetric", v57))
                {
                  v60 |= 2u;
                }

                else if (objc_msgSend_isEqualToString_(v63, v56, @"largeop", v57))
                {
                  if ((v60 & 0x80u) != 0)
                  {
                    v64 = 4;
                  }

                  else
                  {
                    v61 = 1.0;
                    v64 = -124;
                  }

                  v60 |= v64;
                }

                else if (objc_msgSend_isEqualToString_(v63, v56, @"fence", v57))
                {
                  v60 |= 0x10u;
                }

                else if (objc_msgSend_isEqualToString_(v63, v56, @"accent", v57))
                {
                  v60 |= 8u;
                }

                else if (objc_msgSend_isEqualToString_(v63, v56, @"movablelimits", v57))
                {
                  v60 |= 0x20u;
                }

                else if (objc_msgSend_isEqualToString_(v63, v56, @"relational", v57))
                {
                  v60 |= 0x40u;
                }

                else if (objc_msgSend_hasPrefix_(v63, v56, @"cramped=", v57))
                {
                  v65 = objc_alloc(MEMORY[0x277CCAC80]);
                  v68 = objc_msgSend_initWithString_(v65, v66, v63, v67);
                  LODWORD(__p[0]) = 0;
                  if (objc_msgSend_scanString_intoString_(v68, v69, @"cramped=", 0) && objc_msgSend_scanFloat_(v68, v70, __p, v71))
                  {
                    v75 = objc_msgSend_isAtEnd(v68, v72, v73, v74);
                    v76 = *__p == 0.0 ? 0 : v75;
                    if (v76 == 1)
                    {
                      v60 |= 0xFFFFFF80;
                      v61 = *__p;
                    }
                  }
                }
              }

              v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v56, &v104, v121, 16);
            }

            while (v58);
            v115[0] = v60;
            v114 = v61;
          }
        }
      }

      v102[0] = v110;
      v103 = v101;
      __p[0] = v102;
      v77 = sub_275CC8928(v91, v102);
      *(v77 + 40) = v111;
      *(v77 + 56) = v112;
      *(v77 + 72) = v97;
      *(v77 + 80) = v114;
      *(v77 + 88) = v115[0];
      __p[0] = &v110;
      *(sub_275CC8A4C(v96, &v110) + 8) = v101;
      __p[0] = &v110;
      v78 = sub_275CC8B20(v93, &v110);
      v78[5] |= 1 << v101;
      v10 = v98 + 1;
    }

    while (v98 + 1 != v94);
    v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v79, &v116, v122, 16);
    v80 = 0;
    if (v94)
    {
      continue;
    }

    break;
  }

LABEL_68:
  v81 = *v93;
  v82 = v100;
  if (*v93 != v99)
  {
    do
    {
      v83 = *(v81 + 5);
      if (v83)
      {
        v84 = 0;
        do
        {
          v84 += v83 & 1;
          v85 = v83 > 1;
          v83 >>= 1;
        }

        while (v85);
        if (v84 >= 2)
        {
          sub_275CC8BF4(v96, v81 + 16);
          v82 = v100;
        }
      }

      v86 = *(v81 + 1);
      if (v86)
      {
        do
        {
          v87 = v86;
          v86 = *v86;
        }

        while (v86);
      }

      else
      {
        do
        {
          v87 = *(v81 + 2);
          v88 = *v87 == v81;
          v81 = v87;
        }

        while (!v88);
      }

      v81 = v87;
    }

    while (v87 != v99);
  }

  if (v80)
  {
    v89 = sub_275CC795C(v82);
    MEMORY[0x277C8CFC0](v89, 0x1020C40EAA897C4);
    goto LABEL_82;
  }

LABEL_83:

  return v100;
}

void sub_275CC81F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_275CC8220(uint64_t a1, unsigned __int16 a2, int a3)
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = 2;
  }

  v7[0] = a2;
  v8 = v4;
  v5 = sub_275CC8C78(a1 + 56, v7);
  if ((a1 + 64) == v5)
  {
    return 0;
  }

  else
  {
    return v5 + 5;
  }
}

uint64_t sub_275CC8278(uint64_t a1, const void **a2)
{
  v3 = sub_275CC85C0(a1 + 8, a2);
  if (a1 + 16 == v3)
  {
    return 0;
  }

  else
  {
    return *(v3 + 56);
  }
}

uint64_t sub_275CC82B8(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 88);
  v2 = a1 + 88;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 28);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (v5 != v2 && *(v5 + 28) <= a2)
  {
    return *(v5 + 32);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275CC8300(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 112);
  v2 = a1 + 112;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (v5 != v2 && *(v5 + 32) <= a2)
  {
    return *(v5 + 40);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275CC8348(uint64_t result, uint64_t a2)
{
  v2 = *(result + 56);
  v3 = (result + 64);
  if (v2 != (result + 64))
  {
    v5 = result;
    do
    {
      v6 = *(v2 + 9);
      v7 = sub_275CC7794(v5, *(v2 + 16));
      result = (*(a2 + 16))(a2, v7, v6, v2 + 5);
      v8 = v2[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v2[2];
          v10 = *v9 == v2;
          v2 = v9;
        }

        while (!v10);
      }

      v2 = v9;
    }

    while (v9 != v3);
  }

  return result;
}

void sub_275CC83F0(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_275CC83F0(a1, *a2);
    sub_275CC83F0(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

BOOL sub_275CC8454(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t sub_275CC84C0(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_275CC8454(a1, a3, (v4 + 32)))
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

      if (!sub_275CC8454(a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void sub_275CC855C(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
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

uint64_t sub_275CC85C0(uint64_t a1, const void **a2)
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
    v7 = sub_275CC8454(a1, (v3 + 32), a2);
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
  if (v6 == v2 || sub_275CC8454(a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t sub_275CC8650(uint64_t a1, const void **a2)
{
  result = *sub_275CC84C0(a1, &v3, a2);
  if (!result)
  {
    sub_275CC86D0();
  }

  return result;
}

void sub_275CC876C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_275CC855C(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_275CC8788(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_275CAF534(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_275CC87E8(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_275C8D77C();
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

  v21 = a1;
  if (v6)
  {
    sub_275C97C94(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_275CAF534(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_275C97CEC(&v17);
  return v11;
}

void sub_275CC8914(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C97CEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275CC8928(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *sub_275CC89E4(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_275CC89E4(uint64_t a1, void *a2, unsigned __int16 *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = *(a3 + 1);
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 16);
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = *(v8 + 9);
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

uint64_t *sub_275CC8A4C(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_275CC8B20(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_275CC8BF4(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 28);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 28))
  {
    return 0;
  }

  sub_275C94C50(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t *sub_275CC8C78(uint64_t a1, unsigned __int16 *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = v2;
  do
  {
    v8 = *(v3 + 16);
    if (v8 >= v5)
    {
      if (v5 >= v8)
      {
        if (*(v3 + 9) >= v6)
        {
          v7 = v3;
        }

        v3 += *(v3 + 9) < v6;
      }

      else
      {
        v7 = v3;
      }
    }

    else
    {
      ++v3;
    }

    v3 = *v3;
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v9 = *(v7 + 16);
  if (v5 < v9 || v9 >= v5 && v6 < *(v7 + 9))
  {
    return v2;
  }

  return v7;
}

uint64_t sub_275CC9388(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], a2, a3, a4);
  if (v4)
  {
    v7 = objc_msgSend_pathForResource_ofType_(v4, v5, @"EQKitDefaultEnvironment", @"plist");
    if (v7)
    {
      v10 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v8, v7, v9);
      v41 = 0;
      v11 = objc_alloc(MEMORY[0x277CBEA90]);
      result = objc_msgSend_initWithContentsOfURL_options_error_(v11, v12, v10, 2, &v41);
      qword_280A38B00 = result;
      if (!result)
      {
        v16 = MEMORY[0x277D81150];
        v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "+[EQKitEnvironmentInstance dataForDefaultEnvironment]_block_invoke", v15);
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/EquationKit/EQKitEnvironmentInstance.mm", v19);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 54, 0, "failed to read data for equationKit environment %@: error %@", v10, v41);
        return objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
      }

      return result;
    }

    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "+[EQKitEnvironmentInstance dataForDefaultEnvironment]_block_invoke", v9);
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/EquationKit/EQKitEnvironmentInstance.mm", v37);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v39, v35, v38, 49, 0, "failed to get path for equationKit environment");
  }

  else
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "+[EQKitEnvironmentInstance dataForDefaultEnvironment]_block_invoke", v6);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/EquationKit/EQKitEnvironmentInstance.mm", v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v30, v26, v29, 46, 0, "failed to get resources bundle for equationKit environment");
  }

  v40 = MEMORY[0x277D81150];

  return objc_msgSend_logBacktraceThrottled(v40, v31, v32, v33);
}

uint64_t sub_275CC95DC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_dataForDefaultEnvironment(*(a1 + 32), a2, a3, a4);
  if (!v4)
  {
    goto LABEL_4;
  }

  v8 = v4;
  v29 = 0;
  v30 = 0;
  v9 = objc_opt_class();
  v11 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x277CCAC58], v10, v8, 0, &v30, &v29);
  v12 = sub_275C950F4(v9, v11);
  if (!v12)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "+[EQKitEnvironmentInstance defaultEnvironment]_block_invoke", v14);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/EquationKit/EQKitEnvironmentInstance.mm", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 75, 0, "Unable to parse default equation environment: %@", v29);
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
LABEL_4:
    v12 = objc_msgSend_dictionary(MEMORY[0x277CBEAC0], v5, v6, v7);
  }

  v24 = v12;
  v25 = [EQKitEnvironmentInstance alloc];
  result = objc_msgSend_initWithConfig_(v25, v26, v24, v27);
  qword_280A38B10 = result;
  return result;
}

uint64_t sub_275CCE8E0(uint64_t a1, uint64_t *a2, uint64_t *a3, char **a4, unint64_t a5)
{
  if (a4[1] - *a4 != 4 || (result = **a4, !result))
  {
    v6 = *a3;
    v7 = a3[1];
    if (*a3 == v7)
    {
      goto LABEL_8;
    }

    v8 = ((v7 - v6) >> 2) - 1;
    if (v8 >= a5)
    {
      v8 = a5;
    }

    result = *(v6 + 4 * v8);
    if (!result)
    {
LABEL_8:
      v9 = *a2;
      v10 = a2[1];
      if (*a2 == v10)
      {
        return 2;
      }

      v11 = ((v10 - v9) >> 2) - 1;
      if (v11 >= a5)
      {
        v11 = a5;
      }

      result = *(v9 + 4 * v11);
      if (!result)
      {
        return 2;
      }
    }
  }

  return result;
}

uint64_t sub_275CCE954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = *(a4 + 24);
  if (*(a4 + 32) - v5 != 4 || (result = *v5, !result))
  {
    v7 = *(a3 + 24);
    if (*(a3 + 32) - v7 != 4 || (result = *v7, !result))
    {
      v8 = *(a2 + 24);
      v9 = *(a2 + 32);
      if (v8 == v9)
      {
        return 4;
      }

      v10 = ((v9 - v8) >> 2) - 1;
      if (v10 >= a5)
      {
        v10 = a5;
      }

      result = *(v8 + 4 * v10);
      if (!result)
      {
        return 4;
      }
    }
  }

  return result;
}

uint64_t sub_275CCE9B8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = result;
    for (i = 0; i != a3; ++i)
    {
      memset(v15, 0, sizeof(v15));
      if (a2)
      {
        v7 = 0;
        v8 = a2;
        do
        {
          v9 = *(*(v5 + 64) + v7 + 56);
          if (i < 0xAF8AF8AF8AF8AF8BLL * ((*(*(v5 + 64) + v7 + 64) - v9) >> 3))
          {
            sub_275CD2F80(v9 + 280 * i + 64, v15);
          }

          v7 += 80;
          --v8;
        }

        while (v8);
        v10 = 0;
        v11 = a2;
        do
        {
          v12 = *(*(v5 + 64) + v10 + 56);
          if (i < 0xAF8AF8AF8AF8AF8BLL * ((*(*(v5 + 64) + v10 + 64) - v12) >> 3))
          {
            v13 = v12 + 280 * i;
            sub_275CD2F90(v13 + 64, v15, v14);
            sub_275C93FE8(v13 + 224, v14);
            sub_275C93FE4(v14);
          }

          v10 += 80;
          --v11;
        }

        while (v11);
      }

      result = sub_275CCF0EC(v15);
    }
  }

  return result;
}

void sub_275CCEAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_275CCF0EC(va);
  _Unwind_Resume(a1);
}

id *sub_275CCEB10@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 64);
  v4 = *(a1 + 72);
  if (v4 == v5)
  {

    return sub_275C93D90(a3, 0, 0.0);
  }

  else
  {
    v8 = 0;
    v9 = 1.79769313e308;
    do
    {
      v10 = 0;
      v11 = 0;
      for (i = 224; ; i += 280)
      {
        v13 = v4 == v5 ? 0 : 0xAF8AF8AF8AF8AF8BLL * ((*(v5 + 64) - *(v5 + 56)) >> 3);
        if (((v10 < v13) & (v11 ^ 1)) == 0)
        {
          break;
        }

        v14 = *(v5 + 80 * v8 + 56);
        sub_275C93D90(v19, 0, 0.0);
        if (sub_275C940E4(v14 + i, 1, v19))
        {
          v17 = sub_275C93E84(v19, *a2, v15, v16);
          if (v9 == 1.79769313e308 || vabdd_f64(v17, v9) < 0.00100000005)
          {
            v11 = 0;
            v9 = v17;
          }

          else
          {
            v11 = 1;
            v9 = 1.79769313e308;
          }
        }

        else
        {
          v11 = 0;
        }

        sub_275C93E08(v19);
        ++v10;
        v5 = *(a1 + 64);
        v4 = *(a1 + 72);
      }

      ++v8;
    }

    while (!((v8 >= 0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 4)) | v11 & 1));
    result = sub_275C93D90(a3, 0, 0.0);
    if (v9 != 1.79769313e308)
    {
      sub_275C93D90(v19, *a2, v9);
      sub_275C93E38(a3, v19);
      return sub_275C93E08(v19);
    }
  }

  return result;
}

void sub_275CCED18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  sub_275C93E08(&a9);
  sub_275C93E08(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_275CCED4C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v42 = *MEMORY[0x277D85DE8];
  result = sub_275C93F10(a3, 0);
  if (a2)
  {
    v9 = objc_msgSend_schemataChildren(a2, v6, v7, v8);
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    result = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v35, v41, 16);
    v11 = result;
    if (result)
    {
      v12 = *v36;
      obj = v9;
      do
      {
        v13 = 0;
        do
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v35 + 1) + 8 * v13);
          v15 = *(a1 + 72);
          sub_275CD02B0(v30);
          v16 = *(v15 - 16);
          if (v16 >= *(v15 - 8))
          {
            v17 = sub_275CD0578((v15 - 24), v30);
          }

          else
          {
            sub_275CD06C0(*(v15 - 16), v30);
            v17 = v16 + 280;
            *(v15 - 16) = v16 + 280;
          }

          *(v15 - 16) = v17;
          sub_275C93FE4(&v34);
          sub_275CD23FC(&v33);
          if (*(&v31 + 1))
          {
            *&v32 = *(&v31 + 1);
            operator delete(*(&v31 + 1));
          }

          if (v30[0])
          {
            v30[1] = v30[0];
            operator delete(v30[0]);
          }

          v18 = *(*(a1 + 72) - 16);
          v26 = 0;
          v27 = &v26;
          v28 = 0x2020000000;
          v29 = 0;
          v19 = *(a1 + 8);
          v20 = *(a1 + 88);
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = sub_275CCF08C;
          v25[3] = &unk_27A6779C8;
          v25[5] = &v26;
          v25[6] = a1;
          v25[4] = v14;
          sub_275CA440C(v19, (v18 - 216), v14, 0, v20, v25);
          v31 = 0u;
          v32 = 0u;
          *v30 = 0u;
          v21 = *(*(a1 + 8) + 616);
          v39 = v14;
          v40 = 3;
          sub_275C8D5D4(v21, v21 + 248, &v39, &v31 + 1);
          v22 = *(*(a1 + 8) + 616);
          v39 = v14;
          v40 = 4;
          sub_275C8D5D4(v22, v22 + 272, &v39, v30);
          if ((v18 - 280) != v30)
          {
            sub_275C8E0E0((v18 - 280), v30[0], v30[1], (v30[1] - v30[0]) >> 2);
            sub_275C8E0E0((v18 - 256), *(&v31 + 1), v32, (v32 - *(&v31 + 1)) >> 2);
          }

          *(v18 - 224) = v27[3];
          if (*(&v31 + 1))
          {
            *&v32 = *(&v31 + 1);
            operator delete(*(&v31 + 1));
          }

          if (v30[0])
          {
            v30[1] = v30[0];
            operator delete(v30[0]);
          }

          _Block_object_dispose(&v26, 8);
          ++v13;
        }

        while (v11 != v13);
        result = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v35, v41, 16);
        v11 = result;
      }

      while (result);
    }
  }

  return result;
}

void sub_275CCF08C(void *a1, uint64_t a2)
{
  if (a1[4] == a2)
  {
    v3 = sub_275CA3150(*(a1[6] + 8));
    if ((*(v3 + 120) & 2) != 0)
    {
      v4 = *(v3 + 136);
    }

    else
    {
      v4 = sub_275CB80E8(v3);
    }

    *(*(a1[5] + 8) + 24) = v4;
  }
}

uint64_t sub_275CCF0EC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_275CCF130(uint64_t a1, void *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, a2, &v58, v64, 16);
  if (v3)
  {
    v4 = *v59;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v59 != v4)
        {
          objc_enumerationMutation(a2);
        }

        v6 = *(*(&v58 + 1) + 8 * i);
        memset(v57, 0, sizeof(v57));
        *v55 = 0u;
        v56 = 0u;
        *v54 = 0u;
        sub_275CCF5E4((a1 + 64), v54);
        sub_275CA3EF0(*(a1 + 8), v6, 0, v53);
        sub_275C93FE4(v53);
        *__p = 0u;
        v52 = 0u;
        *v50 = 0u;
        v7 = *(*(a1 + 8) + 616);
        v62 = v6;
        v63 = 3;
        sub_275C8D5D4(v7, v7 + 248, &v62, &__p[1]);
        v8 = *(*(a1 + 8) + 616);
        v62 = v6;
        v63 = 4;
        sub_275C8D5D4(v8, v8 + 272, &v62, v50);
        if ((a1 + 16) != v50)
        {
          sub_275C8E0E0((a1 + 16), v50[0], v50[1], (v50[1] - v50[0]) >> 2);
          sub_275C8E0E0((a1 + 40), __p[1], v52, (v52 - __p[1]) >> 2);
        }

        v9 = *(a1 + 72);
        if ((v9 - 80) != v50)
        {
          sub_275C8E0E0((v9 - 80), v50[0], v50[1], (v50[1] - v50[0]) >> 2);
          sub_275C8E0E0((v9 - 56), __p[1], v52, (v52 - __p[1]) >> 2);
        }

        if (__p[1])
        {
          *&v52 = __p[1];
          operator delete(__p[1]);
        }

        if (v50[0])
        {
          v50[1] = v50[0];
          operator delete(v50[0]);
        }

        v50[0] = v57 + 8;
        sub_275CAF158(v50);
        if (v55[1])
        {
          *&v56 = v55[1];
          operator delete(v55[1]);
        }

        if (v54[0])
        {
          v54[1] = v54[0];
          operator delete(v54[0]);
        }
      }

      v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, v10, &v58, v64, 16);
    }

    while (v3);
  }

  v12 = *(a1 + 64);
  v11 = *(a1 + 72);
  v13 = (v11 - v12) >> 4;
  v14 = 0xCCCCCCCCCCCCCCCDLL * v13;
  v15 = 0;
  if (v11 != v12)
  {
    if (v14 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = 0xCCCCCCCCCCCCCCCDLL * v13;
    }

    v17 = (v12 + 64);
    do
    {
      if (v15 <= 0xAF8AF8AF8AF8AF8BLL * ((*v17 - *(v17 - 1)) >> 3))
      {
        v15 = 0xAF8AF8AF8AF8AF8BLL * ((*v17 - *(v17 - 1)) >> 3);
      }

      v17 += 10;
      --v16;
    }

    while (v16);
  }

  sub_275CCE9B8(a1, v14, v15);
  v54[0] = 0;
  v54[1] = 0;
  v55[0] = 0;
  v50[0] = 0;
  sub_275C9E05C(v54, v15, v50);
  if (v11 == v12)
  {
    v44 = v54[0];
    if (!v54[0])
    {
      return;
    }

    goto LABEL_50;
  }

  v18 = 0;
  if (v14 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v14;
  }

  v20 = *(a1 + 64);
  do
  {
    v21 = v20 + 80 * v18;
    v22 = *(v21 + 56);
    v23 = *(v21 + 64);
    sub_275CCF624((v21 + 56), v15);
    v20 = *(a1 + 64);
    v27 = v20 + 80 * v18;
    *(v27 + 48) = 0;
    if (v15)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0xAF8AF8AF8AF8AF8BLL * ((v23 - v22) >> 3);
      do
      {
        if (v29 >= v30)
        {
          v31 = *(v20 + 80 * v18 + 56);
          if (v31 + v28 != v27)
          {
            sub_275C8E0E0((v31 + v28), *v27, *(v27 + 8), (*(v27 + 8) - *v27) >> 2);
            sub_275C8E0E0((v31 + v28 + 24), *(v27 + 24), *(v27 + 32), (*(v27 + 32) - *(v27 + 24)) >> 2);
            v20 = *(a1 + 64);
          }
        }

        v32 = *(*(v20 + 80 * v18 + 56) + v28 + 224);
        objc_msgSend_width(v32, v24, v25, v26);
        v37 = v36;
        v38 = v54[0];
        v39 = *(v54[0] + v29);
        if (v37 > v39)
        {
          objc_msgSend_width(v32, v33, v34, v35);
          v38 = v54[0];
        }

        v38[v29] = v39;
        objc_msgSend_layoutVSize(v32, v33, v34, v35);
        v41 = v40;
        v20 = *(a1 + 64);
        v42 = *(v20 + 80 * v18 + 48);
        if (v41 > v42)
        {
          objc_msgSend_layoutVSize(v32, v24, v25, v26);
          v20 = *(a1 + 64);
        }

        *(v20 + 80 * v18 + 48) = v42;
        ++v29;
        v28 += 280;
      }

      while (v15 != v29);
    }

    ++v18;
  }

  while (v18 != v19);
  v43 = 0;
  v44 = v54[0];
  do
  {
    if (v15)
    {
      v45 = (*(*(a1 + 64) + 80 * v43 + 56) + 48);
      v46 = v44;
      v47 = v15;
      do
      {
        v48 = *v46++;
        *v45 = v48;
        v45 += 35;
        --v47;
      }

      while (v47);
    }

    ++v43;
  }

  while (v43 != v19);
  if (v44)
  {
LABEL_50:
    v54[1] = v44;
    operator delete(v44);
  }
}

void sub_275CCF590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275CCF5E4(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_275CD0B8C(a1, a2);
  }

  else
  {
    sub_275CD0AA8(a1, a2);
    result = v3 + 80;
  }

  a1[1] = result;
  return result;
}

void sub_275CCF624(uint64_t *a1, unint64_t a2)
{
  v2 = 0xAF8AF8AF8AF8AF8BLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_275CD119C(a1, v4);
  }

  else if (!v3)
  {
    sub_275CD03C8(a1, *a1 + 280 * a2);
  }
}

void sub_275CCF668(uint64_t *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  sub_275C93F10(a5, 0);
  v10 = 0;
  v11 = 0;
  v12 = 0.0;
  v13 = 56;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  while (1)
  {
    v18 = a1[8];
    v19 = a1[9] == v18 ? 0 : 0xAF8AF8AF8AF8AF8BLL * ((*(v18 + 64) - *(v18 + 56)) >> 3);
    if (v10 >= v19)
    {
      break;
    }

    v20 = objc_msgSend_objectAtIndex_(a2, v8, v10, v9);
    v21 = sub_275CCE954(v20, (a1 + 2), a1[8] + 80 * a3, *(a1[8] + 80 * a3 + 56) + v13 - 56, a3);
    if (v21 <= 5)
    {
      if (((1 << v21) & 0x2A) != 0)
      {
        objc_msgSend_layoutVSize(v20, v8, v22, v9);
        if (v17 <= v24)
        {
          objc_msgSend_layoutVSize(v20, v8, v23, v9);
          v17 = v25;
        }
      }

      else if (((1 << v21) & 0x14) != 0)
      {
        objc_msgSend_layoutHeight(v20, v8, v22, v9);
        if (v16 <= v29)
        {
          objc_msgSend_layoutHeight(v20, v26, v27, v28);
          v16 = v30;
        }

        objc_msgSend_layoutDepth(v20, v26, v27, v28);
        if (v15 <= v32)
        {
          objc_msgSend_layoutDepth(v20, v8, v31, v9);
          v15 = v33;
        }

        v34 = *(a1[8] + 80 * a3 + 56);
        v35 = *(v34 + v13);
        v36 = v35;
        if (v11)
        {
          v36 = v12;
          if (v12 >= v35)
          {
            v36 = *(v34 + v13);
          }
        }

        v11 = 1;
        v12 = v36;
        if (v14 <= v35)
        {
          v14 = *(v34 + v13);
        }
      }
    }

    ++v10;
    v13 += 280;
  }

  if (v17 <= 0.0 && v16 <= 0.0 && v15 <= 0.0)
  {
    return;
  }

  if (v17 == 0.0)
  {
    v17 = v15 + v16;
  }

  else if (v16 == 0.0 && v15 == 0.0)
  {
    v15 = v17 * 0.5;
    v16 = v17 * 0.5;
  }

  else if (v15 + v16 <= v17)
  {
    if (v15 + v16 < v17)
    {
      v37 = (v17 - (v15 + v16)) * 0.5;
      v16 = v16 + v37;
      v15 = v15 + v37;
    }
  }

  else
  {
    v17 = v15 + v16;
  }

  if (v17 == v15 + v16)
  {
    v38 = v17;
  }

  else
  {
    v38 = v15 + v16;
  }

  v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v43 = 0;
  v44 = 0;
  v45 = v12 + (v14 - v12) * 0.5;
  for (i = 56; ; i += 280)
  {
    v47 = a1[8];
    v48 = a1[9] == v47 ? 0 : 0xAF8AF8AF8AF8AF8BLL * ((*(v47 + 64) - *(v47 + 56)) >> 3);
    if (v44 >= v48)
    {
      break;
    }

    v49 = objc_msgSend_objectAtIndex_(a2, v39, v44, v41);
    v50 = sub_275CCE954(v49, (a1 + 2), a1[8] + 80 * a3, *(a1[8] + 80 * a3 + 56) + i - 56, a3);
    objc_msgSend_layoutDepth(v49, v51, v52, v53);
    v55 = v54;
    objc_msgSend_layoutVSize(v49, v56, v57, v58);
    v60 = v16 + v55 + 0.0;
    if (v50 <= 2)
    {
      if (v50 != 1)
      {
        if (v50 != 2)
        {
          goto LABEL_53;
        }

        v61 = *(*(a1[8] + 80 * a3 + 56) + i);
        v62 = v45 + v60 - v16 - v55;
        goto LABEL_50;
      }

      v60 = v60 - v59;
    }

    else
    {
      switch(v50)
      {
        case 3:
          v62 = v60 - v38 * 0.5;
          v61 = v59 * -0.5;
LABEL_50:
          v60 = v62 + v61;
          break;
        case 4:
          v60 = v60 - v16 - v55;
          break;
        case 5:
          v60 = v60 - v38;
          break;
      }
    }

LABEL_53:
    if (v60 == 0.0)
    {
      v66 = v49;
    }

    else
    {
      v63 = [EQKitVShift alloc];
      v66 = objc_msgSend_initWithBox_offset_(v63, v64, v49, v65, v60);
    }

    v69 = v66;
    objc_msgSend_addObject_(v42, v67, v66, v68);

    v70 = v44 + 1;
    v71 = a1[8];
    if (a1[9] != v71 && v70 < 0xAF8AF8AF8AF8AF8BLL * ((*(v71 + 64) - *(v71 + 56)) >> 3))
    {
      sub_275CAC500(a1[1], 0xF, v40, v41);
      v73 = v72;
      v75 = *a4;
      v74 = a4[1];
      if (v44 < (v74 - *a4) >> 4)
      {
        v76 = sub_275CA3150(a1[1]);
        v77 = (v75 + v43);
        goto LABEL_62;
      }

      if (v74 != v75)
      {
        v76 = sub_275CA3150(a1[1]);
        v77 = (v74 - 16);
LABEL_62:
        v73 = sub_275CBB0A0(v77, v76, v73);
      }

      v78 = [EQKitHSpace alloc];
      v82 = objc_msgSend_initWithWidth_(v78, v79, v80, v81, v73);
      objc_msgSend_addObject_(v42, v83, v82, v84);
    }

    v43 += 16;
    v44 = v70;
  }

  if (objc_msgSend_count(v42, v39, v40, v41))
  {
    v85 = [EQKitHBox alloc];
    v88 = objc_msgSend_initWithChildBoxes_(v85, v86, v42, v87);
    sub_275C93F10(v91, v88);
    sub_275C93FE8(a5, v91);
    sub_275C93FE4(v91);
  }
}

void sub_275CCFB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_275C93FE4(va);
  sub_275C93FE4(a3);
  _Unwind_Resume(a1);
}

void sub_275CCFBB0(uint64_t a1)
{
  objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_alloc_init(MEMORY[0x277CBEB18]);
  v2 = sub_275CA3150(*(a1 + 8));
  if ((*(v2 + 120) & 2) == 0)
  {
    sub_275CB80E8(v2);
  }

  v3 = sub_275CA3150(*(a1 + 8));
  v5 = v3;
  v6 = *(v3 + 88);
  if (*(v3 + 120))
  {
    v4.n128_u64[0] = *(v3 + 128);
  }

  else
  {
    v4.n128_f64[0] = sub_275CB80C0(v3);
  }

  (*(*v6 + 40))(v6, 15, v5 + 8, v4);
  memset(__p, 0, 24);
  sub_275C9A8F4(__p, 1uLL);
}

void sub_275CD006C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_275CD00F0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = sub_275C93F10(a3, 0);
  if (a2)
  {
    v9 = objc_msgSend_schemataChildren(a2, v6, v7, v8);
    *(a1 + 88) = 0;
    LODWORD(v18[0]) = 0;
    v10 = *(a1 + 8);
    v11 = *(v10 + 616);
    v16 = sub_275CA632C(v10);
    v17 = 8;
    if (sub_275C8D3A8(v11, v11 + 8, &v16, v18))
    {
      *(a1 + 88) = LODWORD(v18[0]) == 2;
    }

    sub_275CCF130(a1, v9);
    *__p = 0u;
    v20 = 0u;
    *v18 = 0u;
    v12 = *(a1 + 8);
    v13 = *(v12 + 616);
    v16 = sub_275CA632C(v12);
    v17 = 3;
    sub_275C8D5D4(v13, v13 + 248, &v16, &__p[1]);
    v14 = *(a1 + 8);
    v15 = *(v14 + 616);
    v16 = sub_275CA632C(v14);
    v17 = 4;
    sub_275C8D5D4(v15, v15 + 272, &v16, v18);
    if ((a1 + 16) != v18)
    {
      sub_275C8E0E0((a1 + 16), v18[0], v18[1], (v18[1] - v18[0]) >> 2);
      sub_275C8E0E0((a1 + 40), __p[1], v20, (v20 - __p[1]) >> 2);
    }

    sub_275CCFBB0(a1);
  }

  return result;
}

void sub_275CD0274(_Unwind_Exception *a1, uint64_t a2, ...)
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
  sub_275C93FE4(va);
  sub_275CCF0EC(va1);
  sub_275C93FE4(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_275CD02B0(uint64_t a1)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_275CD21CC(a1 + 64, 0);
  sub_275C93F10((a1 + 224), 0);
  return a1;
}

void sub_275CD02F4(_Unwind_Exception *a1)
{
  sub_275CD23FC(v1 + 64);
  sub_275CCF0EC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_275CD0318(uint64_t a1)
{
  sub_275C93FE4(a1 + 224);
  sub_275CD23FC(a1 + 64);
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_275CD036C(uint64_t a1)
{
  v5 = (a1 + 56);
  sub_275CAF158(&v5);
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_275CD03C8(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_275CD041C(a1, i))
  {
    i -= 280;
  }

  *(a1 + 8) = a2;
}

void sub_275CD041C(uint64_t a1, uint64_t a2)
{
  sub_275C93FE4(a2 + 224);
  sub_275CD23FC(a2 + 64);
  v3 = *(a2 + 24);
  if (v3)
  {
    *(a2 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v4;

    operator delete(v4);
  }
}

uint64_t sub_275CD0484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_275C8D478(a2, a3);
  v10 = v7;
  if ((a2 + 8) != v7)
  {
    if (v7 + 6 == a4)
    {
      return 1;
    }

    v11 = v7[6];
    v12 = v7[7];
LABEL_4:
    sub_275C9AB20(a4, v11, v12, (v12 - v11) >> 4);
    return 1;
  }

  result = objc_msgSend_isAttributeDefaultInheritableFromStyle_(*a3, v8, *(a3 + 8), v9);
  if (result)
  {
    result = objc_msgSend_parent(*a3, v14, v15, v16);
    if (result)
    {
      v20 = result;
      while (1)
      {
        v21 = objc_msgSend_layoutStyleNode(v20, v17, v18, v19);
        if (v21)
        {
          v26 = v21;
          v27 = *(a3 + 8);
          v25 = sub_275C8D478(a2, &v26);
          if (v10 != v25)
          {
            break;
          }
        }

        result = objc_msgSend_parent(v20, v22, v23, v24);
        v20 = result;
        if (!result)
        {
          return result;
        }
      }

      if (v25 + 6 == a4)
      {
        return 1;
      }

      v11 = v25[6];
      v12 = v25[7];
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t sub_275CD0578(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAF8AF8AF8AF8AF8BLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xEA0EA0EA0EA0EALL)
  {
    sub_275C8D77C();
  }

  if (0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 3);
  }

  if (0xAF8AF8AF8AF8AF8BLL * ((a1[2] - *a1) >> 3) >= 0x75075075075075)
  {
    v6 = 0xEA0EA0EA0EA0EALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_275CD0874(a1, v6);
  }

  v13 = 0;
  v14 = 280 * v2;
  sub_275CD06C0(280 * v2, a2);
  v15 = 280 * v2 + 280;
  v7 = a1[1];
  v8 = 280 * v2 + *a1 - v7;
  sub_275CD08D0(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_275CD0A28(&v13);
  return v12;
}

void sub_275CD06AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_275CD0A28(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275CD06C0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_275CD077C(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_275CD07F8(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  *(a1 + 48) = *(a2 + 48);
  sub_275CD236C(a1 + 64, a2 + 64);
  sub_275C93F58(a1 + 224, a2 + 224);
  return a1;
}

void sub_275CD0740(_Unwind_Exception *a1)
{
  sub_275CD23FC(v1 + 64);
  sub_275CCF0EC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_275CD077C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_275C8E0A4(result, a4);
  }

  return result;
}

void sub_275CD07DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275CD07F8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_275C8E0A4(result, a4);
  }

  return result;
}

void sub_275CD0858(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_275CD0874(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xEA0EA0EA0EA0EBLL)
  {
    operator new();
  }

  sub_275C8D86C();
}

uint64_t sub_275CD08D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_275CD06C0(a4, v7);
      v7 += 280;
      a4 = v12 + 280;
      v12 += 280;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_275CD041C(a1, v5);
      v5 += 280;
    }
  }

  return sub_275CD099C(v9);
}

uint64_t sub_275CD099C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_275CD09D4(a1);
  }

  return a1;
}

void sub_275CD09D4(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 280;
      sub_275CD041C(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_275CD0A28(uint64_t a1)
{
  sub_275CD0A60(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_275CD0A60(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 280;
    sub_275CD041C(v5, v4 - 280);
  }
}

uint64_t sub_275CD0AA8(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  sub_275CD077C(v4, *a2, a2[1], (a2[1] - *a2) >> 2);
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  sub_275CD07F8((v4 + 3), a2[3], a2[4], (a2[4] - a2[3]) >> 2);
  v5 = a2[6];
  v4[7] = 0;
  v4[6] = v5;
  v4[8] = 0;
  v4[9] = 0;
  result = sub_275CD0D48((v4 + 7), a2[7], a2[8], 0xAF8AF8AF8AF8AF8BLL * ((a2[8] - a2[7]) >> 3));
  *(a1 + 8) = v4 + 10;
  return result;
}

void sub_275CD0B54(_Unwind_Exception *a1)
{
  sub_275CCF0EC(v2);
  *(v1 + 8) = v2;
  _Unwind_Resume(a1);
}

uint64_t sub_275CD0B8C(uint64_t *a1, uint64_t *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_275C8D77C();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_275CD0EC4(a1, v6);
  }

  v7 = 80 * v2;
  v15 = 0;
  v16 = v7;
  v17 = v7;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_275CD077C(v7, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  sub_275CD07F8(v7 + 24, a2[3], a2[4], (a2[4] - a2[3]) >> 2);
  v8 = a2[6];
  *(v7 + 56) = 0;
  *(v7 + 48) = v8;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  sub_275CD0D48(v7 + 56, a2[7], a2[8], 0xAF8AF8AF8AF8AF8BLL * ((a2[8] - a2[7]) >> 3));
  *&v17 = v17 + 80;
  v9 = a1[1];
  v10 = (v16 + *a1 - v9);
  sub_275CD0F1C(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_275CD111C(&v15);
  return v14;
}

void sub_275CD0D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_275CCF0EC(v4);
  sub_275CD111C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275CD0D48(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_275CD0DD0(result, a4);
  }

  return result;
}

void sub_275CD0DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_275CAF158(&a9);
  _Unwind_Resume(a1);
}

void sub_275CD0DD0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xEA0EA0EA0EA0EBLL)
  {
    sub_275CD0874(a1, a2);
  }

  sub_275C8D77C();
}

uint64_t sub_275CD0E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_275CD06C0(v4, v6);
      v6 += 280;
      v4 = v11 + 280;
      v11 += 280;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_275CD099C(v8);
  return v4;
}

void sub_275CD0EC4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_275C8D86C();
}

uint64_t sub_275CD0F1C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v7;
      a4[2] = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      *(a4 + 3) = *(v7 + 24);
      a4[5] = *(v7 + 40);
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      a4[6] = *(v7 + 48);
      a4[8] = 0;
      a4[9] = 0;
      a4[7] = 0;
      *(a4 + 7) = *(v7 + 56);
      a4[9] = *(v7 + 72);
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      v7 += 80;
      a4 += 10;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      sub_275CD1038(a1, v5);
      v5 += 80;
    }
  }

  return sub_275CD1090(v9);
}

void sub_275CD1038(uint64_t a1, uint64_t a2)
{
  v5 = (a2 + 56);
  sub_275CAF158(&v5);
  v3 = *(a2 + 24);
  if (v3)
  {
    *(a2 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v4;
    operator delete(v4);
  }
}

uint64_t sub_275CD1090(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_275CD10C8(a1);
  }

  return a1;
}

void sub_275CD10C8(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 80;
      sub_275CD1038(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_275CD111C(uint64_t a1)
{
  sub_275CD1154(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_275CD1154(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 80;
    sub_275CD1038(v5, v4 - 80);
  }
}

uint64_t *sub_275CD119C(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (0xAF8AF8AF8AF8AF8BLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v5 + 280 * a2;
      v11 = 280 * a2;
      do
      {
        result = sub_275CD02B0(v5);
        v5 += 280;
        v11 -= 280;
      }

      while (v11);
      v5 = v10;
    }

    v3[1] = v5;
  }

  else
  {
    v6 = 0xAF8AF8AF8AF8AF8BLL * ((v5 - *result) >> 3);
    if (v6 + a2 > 0xEA0EA0EA0EA0EALL)
    {
      sub_275C8D77C();
    }

    v7 = 0xAF8AF8AF8AF8AF8BLL * ((v4 - *result) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x75075075075075)
    {
      v9 = 0xEA0EA0EA0EA0EALL;
    }

    else
    {
      v9 = v8;
    }

    v22 = result;
    if (v9)
    {
      sub_275CD0874(result, v9);
    }

    v12 = 280 * v6;
    v19 = 0;
    v20 = v12;
    v21 = v12;
    v13 = 280 * a2;
    v14 = v12 + 280 * a2;
    do
    {
      sub_275CD02B0(v12);
      v12 += 280;
      v13 -= 280;
    }

    while (v13);
    *&v21 = v14;
    v15 = v3[1];
    v16 = v20 + *v3 - v15;
    sub_275CD08D0(v3, *v3, v15, v16);
    v17 = *v3;
    *v3 = v16;
    v18 = v3[2];
    *(v3 + 1) = v21;
    *&v21 = v17;
    *(&v21 + 1) = v18;
    v19 = v17;
    v20 = v17;
    return sub_275CD0A28(&v19);
  }

  return result;
}

void sub_275CD1318(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275CD0A28(va);
  _Unwind_Resume(a1);
}

double sub_275CD1F94(uint64_t *a1, double *a2)
{
  v4 = *a1;
  *a1 = *a2;
  *a2 = v4;
  v5 = a1[1];
  a1[1] = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = a1[2];
  a1[2] = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = a1[3];
  a1[3] = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = a1[4];
  a1[4] = *(a2 + 4);
  *(a2 + 4) = v8;
  v9 = a1[5];
  a1[5] = *(a2 + 5);
  *(a2 + 5) = v9;
  v10 = a1[6];
  a1[6] = *(a2 + 6);
  *(a2 + 6) = v10;
  v11 = a1[7];
  a1[7] = *(a2 + 7);
  *(a2 + 7) = v11;
  v12 = a1[8];
  a1[8] = *(a2 + 8);
  *(a2 + 8) = v12;
  sub_275CD3280(a1 + 9, (a2 + 9));
  v13 = a1[12];
  a1[12] = *(a2 + 12);
  *(a2 + 12) = v13;
  v14 = a1[13];
  a1[13] = *(a2 + 13);
  *(a2 + 13) = v14;
  v15 = a1[14];
  a1[14] = *(a2 + 14);
  *(a2 + 14) = v15;
  v16 = a1[15];
  a1[15] = *(a2 + 15);
  *(a2 + 15) = v16;
  v17 = a1[16];
  a1[16] = *(a2 + 16);
  *(a2 + 16) = v17;
  v18 = a1[17];
  a1[17] = *(a2 + 17);
  *(a2 + 17) = v18;
  result = *(a1 + 18);
  a1[18] = *(a2 + 18);
  a2[18] = result;
  LODWORD(v18) = *(a1 + 38);
  *(a1 + 38) = *(a2 + 38);
  *(a2 + 38) = v18;
  LOBYTE(v18) = *(a1 + 156);
  *(a1 + 156) = *(a2 + 156);
  *(a2 + 156) = v18;
  return result;
}

uint64_t sub_275CD20E4(uint64_t a1, char a2)
{
  *(a1 + 8) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 72) = a1 + 80;
  *(a1 + 88) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *a1 = objc_alloc_init(MEMORY[0x277CBEB18]);
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 156) = a2;
  return a1;
}

void sub_275CD2178(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v6 = *(v2 + 120);
  if (v6)
  {
    *(v2 + 128) = v6;
    operator delete(v6);
  }

  v7 = *v4;
  if (*v4)
  {
    *(v2 + 104) = v7;
    operator delete(v7);
  }

  sub_275C945BC(v3, *(v2 + 80));
  v8 = *(v2 + 32);
  if (v8)
  {
    *(v2 + 40) = v8;
    operator delete(v8);
  }

  sub_275CAF4B0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275CD21D0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_275CAF2F8(a1 + 8, *(a2 + 8), *(a2 + 16), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_275CD32D8(a1 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 4);
  *(a1 + 64) = *(a2 + 64);
  sub_275C947AC((a1 + 72), a2 + 72);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  sub_275CD334C(a1 + 96, *(a2 + 96), *(a2 + 104), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 104) - *(a2 + 96)) >> 3));
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  sub_275C9A978(a1 + 120, *(a2 + 120), *(a2 + 128), (*(a2 + 128) - *(a2 + 120)) >> 3);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 156) = *(a2 + 156);
  *a1 = objc_msgSend_mutableCopy(*a2, v4, v5, v6);
  *(a1 + 56) = objc_msgSend_mutableCopy(*(a2 + 56), v7, v8, v9);
  return a1;
}

void sub_275CD22F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 104) = v6;
    operator delete(v6);
  }

  sub_275C945BC(v2 + 72, *(v2 + 80));
  v7 = *v3;
  if (*v3)
  {
    *(v2 + 40) = v7;
    operator delete(v7);
  }

  sub_275CAF4B0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275CD2370(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    *(a1 + 104) = v3;
    operator delete(v3);
  }

  sub_275C945BC(a1 + 72, *(a1 + 80));
  v4 = *(a1 + 32);
  if (v4)
  {
    *(a1 + 40) = v4;
    operator delete(v4);
  }

  v6 = (a1 + 8);
  sub_275CAF4B0(&v6);
  return a1;
}

uint64_t sub_275CD2428(uint64_t a1, const char *a2, uint64_t *a3, uint64_t a4)
{
  v5 = a2;
  v7 = objc_msgSend_count(*a1, a2, a3, a4);
  v8 = *a3;
  v9 = *(a1 + 16);
  if (v9 >= *(a1 + 24))
  {
    v13 = sub_275CD3488((a1 + 8), a3);
  }

  else
  {
    sub_275C93F58(*(a1 + 16), a3);
    v13 = v9 + 56;
    *(a1 + 16) = v9 + 56;
  }

  *(a1 + 16) = v13;
  if (!(v5 | v8))
  {
    goto LABEL_8;
  }

  v14 = *a1;
  if (!v5)
  {
    v5 = objc_msgSend_null(MEMORY[0x277CBEB68], v10, v11, v12);
  }

  result = objc_msgSend_addObject_(v14, v10, v5, v12);
  if (!v8)
  {
LABEL_8:
    v16 = *(a1 + 56);
    if (!v16)
    {
      v16 = objc_alloc_init(MEMORY[0x277CCAB58]);
      *(a1 + 56) = v16;
    }

    result = objc_msgSend_addIndex_(v16, v10, v7, v12);
  }

  v17 = a3[1];
  v18 = a3 + 2;
  if (v17 != v18)
  {
    v19 = (a1 + 80);
    do
    {
      v20 = *v19;
      v21 = *(v17 + 8);
      if (!*v19)
      {
        goto LABEL_20;
      }

      v22 = a1 + 80;
      do
      {
        if (*(v20 + 32) >= v21)
        {
          v22 = v20;
        }

        v20 = *(v20 + 8 * (*(v20 + 32) < v21));
      }

      while (v20);
      if (v22 == v19 || v21 < *(v22 + 32))
      {
LABEL_20:
        v26 = *(v17 + 8);
        sub_275C93DCC(v27, (v17 + 5));
        sub_275C94AB8(a1 + 72, &v26);
        result = sub_275C93E08(v27);
      }

      v23 = v17[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v17[2];
          v25 = *v24 == v17;
          v17 = v24;
        }

        while (!v25);
      }

      v17 = v24;
    }

    while (v24 != v18);
  }

  return result;
}

double sub_275CD25D0(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  sub_275CD36C4((a1 + 8), v4, a2[1], a2[2], 0x6DB6DB6DB6DB6DB7 * ((a2[2] - a2[1]) >> 3));
  objc_msgSend_addObjectsFromArray_(*a1, v6, *a2, v7);
  v8 = a2[9];
  if (v8 != a2 + 10)
  {
    v9 = (a1 + 80);
    do
    {
      v10 = *v9;
      v11 = *(v8 + 8);
      if (!*v9)
      {
        goto LABEL_10;
      }

      v12 = a1 + 80;
      do
      {
        if (*(v10 + 32) >= v11)
        {
          v12 = v10;
        }

        v10 = *(v10 + 8 * (*(v10 + 32) < v11));
      }

      while (v10);
      if (v12 == v9 || v11 < *(v12 + 32))
      {
LABEL_10:
        LODWORD(v21) = *(v8 + 8);
        sub_275C93DCC(v22, (v8 + 5));
        sub_275C94AB8(a1 + 72, &v21);
        sub_275C93E08(v22);
      }

      v13 = v8[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v8[2];
          v15 = *v14 == v8;
          v8 = v14;
        }

        while (!v15);
      }

      v8 = v14;
    }

    while (v14 != a2 + 10);
  }

  sub_275CD3B04((a1 + 96), *(a1 + 104), a2[12], a2[13], 0xAAAAAAAAAAAAAAABLL * ((a2[13] - a2[12]) >> 3));
  v16 = a2[15];
  v17 = a2[16];
  if (v16 != v17)
  {
    v18 = 0x6DB6DB6DB6DB6DB7 * ((v4 - v5) >> 3);
    do
    {
      v19 = *v16++;
      v21 = v19 + v18;
      sub_275C986F8((a1 + 120), &v21);
    }

    while (v16 != v17);
  }

  result = *(a2 + 18);
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_275CD2794(uint64_t result)
{
  v1 = *(result + 64);
  if (v1)
  {
    *(result + 64) = v1 - 1;
  }

  return result;
}

uint64_t sub_275CD27A8(void **a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_count(*a1, a2, a3, a4) <= a2)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_objectAtIndex_(*a1, v6, a2, v7);
  }

  if (objc_opt_respondsToSelector())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275CD280C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_275C93F10(a2, 0);
  v4 = *(a1 + 8);
  if (*(a1 + 16) - v4 == 56)
  {
    return sub_275C93FE8(a2, v4);
  }

  v6 = sub_275CD2914(a1);
  sub_275C93F10(v9, v6);
  sub_275C93FE8(a2, v9);
  sub_275C93FE4(v9);

  if (a2 + 8 != a1 + 72)
  {
    sub_275C94330((a2 + 8), *(a1 + 72), (a1 + 80));
  }

  v7 = *(a1 + 8);
  v8 = 6;
  while (v7 != *(a1 + 16))
  {
    if (v8 >= ((*(v7 + 32) >> 10) & 7))
    {
      v8 = (*(v7 + 32) >> 10) & 7;
    }

    v7 += 56;
  }

  return sub_275C940CC(a2, v8);
}

uint64_t sub_275CD2914(void *a1)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = 0x6DB6DB6DB6DB6DB7 * ((v2 - v3) >> 3);
  v6 = a1[4];
  v5 = a1[5];
  v7 = objc_alloc(MEMORY[0x277CBEB18]);
  v12 = objc_msgSend_initWithCapacity_(v7, v8, v4, v9);
  if (v2 != v3)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = (v5 - v6) >> 4;
    if (v4 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v4;
    }

    do
    {
      v18 = *(a1[1] + v14);
      if (v18)
      {
        objc_msgSend_addObject_(v12, v10, v18, v11);
      }

      if (v15 < v16)
      {
        v19 = *(a1[4] + v13);
        if (v19 != 0.0)
        {
          v20 = [EQKitHSpace alloc];
          v24 = objc_msgSend_initWithWidth_(v20, v21, v22, v23, v19);
          objc_msgSend_addObject_(v12, v25, v24, v26);
        }
      }

      ++v15;
      v14 += 56;
      v13 += 16;
    }

    while (v17 != v15);
  }

  v27 = [EQKitHBox alloc];
  v30 = objc_msgSend_initWithChildBoxes_(v27, v28, v12, v29);

  return v30;
}

void sub_275CD2A68(void *a1, void *a2, void *a3)
{
  v13 = sub_275CD2914(a1);
  objc_msgSend_height(v13, v5, v6, v7);
  *a2 = v8;
  objc_msgSend_depth(v13, v9, v10, v11);
  *a3 = v12;
}

double sub_275CD2AC4(void *a1)
{
  v1 = sub_275CD2914(a1);
  objc_msgSend_width(v1, v2, v3, v4);
  v6 = v5;

  return v6;
}

void sub_275CD2B00(void *a1, uint64_t a2)
{
  v2 = a1 + 4;
  if (a1[4] == a1[5])
  {
    v4 = 0x6DB6DB6DB6DB6DB7 * ((a1[2] - a1[1]) >> 3);
    sub_275CD2C60(a1 + 4, v4);
    if (v4 >= 2)
    {
      v8 = 0;
      for (i = 1; i < v4; ++i)
      {
        v10 = a1[1];
        v11 = v10 + 56 * v8;
        if ((*(v11 + 32) & 0x200) == 0 && i < v4)
        {
          v12 = v10 + 56 * i + 32;
          while ((*v12 & 0x200) != 0)
          {
            ++i;
            v12 += 56;
            if (v4 == i)
            {
              i = v4;
              goto LABEL_14;
            }
          }

          v13 = *v11;
          v14 = *(v12 - 32);
          v15 = *MEMORY[0x277CBF348];
          v16 = *(MEMORY[0x277CBF348] + 8);
          objc_msgSend_opticalAlignWidth(*v11, v5, v6, v7);
          if (*(v11 + 48) >= *(v12 + 8))
          {
            v18 = *(v11 + 48);
          }

          else
          {
            v18 = *(v12 + 8);
          }

          v19 = sub_275C9B51C(a2, ((*(v11 + 32) >> 2) & 3), v13, *v12 & 3, v14, v15, v16, v17, 0.0, v18);
          v20 = *v2 + 16 * v8;
          *v20 = v19;
          *(v20 + 8) = i;
        }

LABEL_14:
        v8 = i;
      }
    }
  }
}

void sub_275CD2C60(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    sub_275CD3F90(a1, a2 - v2);
  }
}

void sub_275CD2C90(uint64_t a1, void *a2)
{
  *(a1 + 56) = 0;
  v4 = *(a1 + 8);
  *(a1 + 8) = *a2;
  *a2 = v4;
  v5 = *(a1 + 16);
  *(a1 + 16) = a2[1];
  a2[1] = v5;
  v6 = *(a1 + 24);
  *(a1 + 24) = a2[2];
  a2[2] = v6;
}

void sub_275CD2CF0(uint64_t a1, int a2)
{
  if (*(a1 + 8) == *(a1 + 16) || *(a1 + 120) != *(a1 + 128))
  {
    sub_275CD9448(v5, a2);
    v3 = *(a1 + 104);
    if (v3 >= *(a1 + 112))
    {
      v4 = sub_275CD40A4((a1 + 96), v5);
    }

    else
    {
      sub_275CD945C(*(a1 + 104), v5);
      v4 = v3 + 24;
      *(a1 + 104) = v3 + 24;
    }

    *(a1 + 104) = v4;
    v5[0] = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *(a1 + 8)) >> 3);
    sub_275C986F8((a1 + 120), v5);
  }
}

id *sub_275CD2DA4(id *result)
{
  v1 = result[13] - result[12];
  if (v1)
  {
    v2 = result;
    v3 = 0;
    v4 = v1 >> 3;
    v5 = 0xAAAAAAAAAAAAAAABLL * v4;
    if (0xAAAAAAAAAAAAAAABLL * v4 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 0xAAAAAAAAAAAAAAABLL * v4;
    }

    v28 = v6;
    do
    {
      v7 = v3;
      v8 = v2[15];
      if (++v3 >= v5)
      {
        v9 = 0x6DB6DB6DB6DB6DB7 * ((v2[2] - v2[1]) >> 3);
      }

      else
      {
        v9 = v8[v3];
      }

      v10 = v8[v7];
      v11 = v9 - v10;
      if (v9 > v10)
      {
        v12 = (v2[12] + 24 * v7);
        v13 = 56 * v10;
        v14 = 16 * v10;
        do
        {
          v15 = v2[1];
          v16 = *&v15[v13];
          sub_275C93D90(v30, 0, 0.0);
          if (sub_275C940E4(&v15[v13], 3, v30))
          {
            v19 = sub_275C93E84(v30, v16, v17, v18);
            sub_275CD94B4(v12, v19);
          }

          if (sub_275CD9488(v12))
          {
            sub_275C93D90(v29, 0, 0.0);
            if (sub_275C940E4(&v15[v13], 2, v29))
            {
              v25 = sub_275C93E84(v29, v16, v23, v24);
              sub_275CD94B4(v12, v25);
            }

            sub_275C93E08(v29);
          }

          objc_msgSend_width(v16, v20, v21, v22);
          sub_275CD9478(v12, v26);
          v27 = v2[4] + v14;
          if (*(v27 + 8) < v9)
          {
            sub_275CD9478(v12, *v27);
          }

          result = sub_275C93E08(v30);
          v13 += 56;
          v14 += 16;
          --v11;
        }

        while (v11);
      }
    }

    while (v3 != v28);
  }

  return result;
}

void sub_275CD2F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_275C93E08(va);
  _Unwind_Resume(a1);
}

void sub_275CD2F90(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  sub_275C93F10(a3, 0);
  if (*(a1 + 96) == *(a1 + 104))
  {
    sub_275CD280C(a1, v54);
    sub_275C93FE8(a3, v54);
    sub_275C93FE4(v54);
  }

  else
  {
    v53 = a3;
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    for (i = 0; ; i = v21)
    {
      v8 = *(a1 + 96);
      if (i >= 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 104) - v8) >> 3))
      {
        break;
      }

      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = [EQKitHSpace alloc];
      v11 = v8 + 24 * i;
      v12 = sub_275CBB658(a2, v11, i);
      v16 = objc_msgSend_initWithWidth_(v10, v13, v14, v15, v12);
      objc_msgSend_addObject_(v9, v17, v16, v18);

      v21 = i + 1;
      v22 = *(a1 + 120);
      if (i + 1 >= (*(a1 + 128) - v22) >> 3)
      {
        v23 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *(a1 + 8)) >> 3);
      }

      else
      {
        v23 = *(v22 + 8 * v21);
      }

      v24 = *(v22 + 8 * i);
      v25 = v23 - v24;
      if (v23 > v24)
      {
        v26 = 56 * v24;
        do
        {
          objc_msgSend_addObject_(v9, v19, *(*(a1 + 8) + v26), v20, v53);
          v26 += 56;
          --v25;
        }

        while (v25);
      }

      v27 = [EQKitHSpace alloc];
      v28 = sub_275CBB69C(a2, v11, i);
      v32 = objc_msgSend_initWithWidth_(v27, v29, v30, v31, v28);
      objc_msgSend_addObject_(v9, v33, v32, v34);

      v35 = [EQKitHBox alloc];
      v38 = objc_msgSend_initWithChildBoxes_(v35, v36, v9, v37);
      objc_msgSend_addObject_(v6, v39, v38, v40);
    }

    v41 = [EQKitHSpace alloc];
    v42 = sub_275CBB6E0(a2, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 104) - *(a1 + 96)) >> 3) - 1);
    v46 = objc_msgSend_initWithWidth_(v41, v43, v44, v45, v42);
    objc_msgSend_addObject_(v6, v47, v46, v48);

    v49 = [EQKitHBox alloc];
    v52 = objc_msgSend_initWithChildBoxes_(v49, v50, v6, v51);
    sub_275C93F10(v54, v52);
    sub_275C93FE8(v53, v54);
    sub_275C93FE4(v54);
    if (v53 + 8 != a1 + 72)
    {
      sub_275C94330((v53 + 8), *(a1 + 72), (a1 + 80));
    }
  }
}

void sub_275CD322C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C93FE4(va);
  sub_275C93FE4(v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_275CD3280(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v5 = result[1];
  v4 = result[2];
  v3 = result + 1;
  *(result + 1) = *(a2 + 8);
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (result[2])
  {
    result = (*v3 + 16);
  }

  *result = v3;
  v6 = (*(a2 + 8) + 16);
  if (!v4)
  {
    v6 = a2;
  }

  *v6 = a2 + 8;
  return result;
}

uint64_t sub_275CD32D8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_275C93920(result, a4);
  }

  return result;
}

void sub_275CD3330(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275CD334C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_275CD33E4(result, a4);
  }

  return result;
}

void sub_275CD33BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_275CD33E4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_275CD3430(a1, a2);
  }

  sub_275C8D77C();
}

void sub_275CD3430(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_275C8D86C();
}

uint64_t sub_275CD3488(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_275C8D77C();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_275CAF3D0(a1, v6);
  }

  v13 = 0;
  v14 = 56 * v2;
  sub_275C93F58(56 * v2, a2);
  v15 = (56 * v2 + 56);
  v7 = a1[1];
  v8 = 56 * v2 + *a1 - v7;
  sub_275CD35D0(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_275CD3674(&v13);
  return v12;
}

void sub_275CD35BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_275CD3674(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275CD35D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = sub_275C93F58(a4, v8);
      v8 += 56;
      a4 += 56;
      v7 -= 56;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      result = sub_275C93FE4(v6);
      v6 += 56;
    }
  }

  return result;
}

void sub_275CD3650(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 56;
    do
    {
      v4 = sub_275C93FE4(v4) - 56;
      v2 += 56;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275CD3674(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    sub_275C93FE4(i - 56);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_275CD36C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v9 - v10) >> 3) >= a5)
    {
      v16 = v10 - a2;
      if (0x6DB6DB6DB6DB6DB7 * ((v10 - a2) >> 3) >= a5)
      {
        v19 = 56 * a5;
        sub_275CD3904(a1, a2, a1[1], a2 + 56 * a5);
        v20 = v19 + v7;
        v21 = v5;
        do
        {
          sub_275C93FE8(v21, v7);
          v7 += 56;
          v21 += 56;
        }

        while (v7 != v20);
      }

      else
      {
        v17 = v16 + a3;
        a1[1] = sub_275CD3A80(a1, v16 + a3, a4, a1[1]);
        if (v16 >= 1)
        {
          sub_275CD3904(a1, v5, v10, v5 + 56 * a5);
          v18 = v5;
          do
          {
            sub_275C93FE8(v18, v7);
            v7 += 56;
            v18 += 56;
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + 0x6DB6DB6DB6DB6DB7 * ((v10 - *a1) >> 3);
      if (v12 > 0x492492492492492)
      {
        sub_275C8D77C();
      }

      v13 = a2 - v11;
      v14 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v11) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x249249249249249)
      {
        v15 = 0x492492492492492;
      }

      else
      {
        v15 = v12;
      }

      v29 = a1;
      if (v15)
      {
        sub_275CAF3D0(a1, v15);
      }

      v22 = 8 * (v13 >> 3);
      v26[0] = 0;
      v26[1] = v22;
      v27 = v22;
      v28 = 0;
      v23 = 56 * a5;
      v24 = v22 + 56 * a5;
      do
      {
        sub_275C93F58(v22, v7);
        v22 += 56;
        v7 += 56;
        v23 -= 56;
      }

      while (v23);
      v27 = v24;
      v5 = sub_275CD39C4(a1, v26, v5);
      sub_275CD3674(v26);
    }
  }

  return v5;
}

uint64_t sub_275CD3904(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
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
      result = sub_275C93F58(v10, v8);
      v8 += 56;
      v10 += 56;
    }

    while (v8 < a3);
  }

  *(v6 + 8) = v10;
  if (v7 != a4)
  {
    v11 = v7 - 56;
    v12 = a4 - v7;
    v13 = a2 + v7 - 56 - a4;
    do
    {
      result = sub_275C93FE8(v11, v13);
      v11 -= 56;
      v13 -= 56;
      v12 += 56;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_275CD39C4(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  sub_275CD35D0(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  sub_275CD35D0(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_275CD3A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_275C93F58(a4, v6);
      v6 += 56;
      a4 += 56;
      v7 -= 56;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_275CD3AE0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 56;
    do
    {
      v4 = sub_275C93FE4(v4) - 56;
      v2 += 56;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275CD3B04(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) >= a5)
      {
        v26 = 3 * a5;
        sub_275CD3DE8(a1, a2, a1[1], a2 + 24 * a5);
        v27 = 0;
        v28 = v7 + 8 * v26;
        do
        {
          v29 = v27 + v5;
          v30 = *v7;
          *(v29 + 16) = *(v7 + 16);
          *v29 = v30;
          v7 += 24;
          v27 += 24;
        }

        while (v7 != v28);
      }

      else
      {
        v18 = v16 + a3;
        v19 = a1[1];
        if (v16 + a3 != a4)
        {
          v19 = a1[1];
          v20 = v16 + a3;
          v21 = v19;
          do
          {
            sub_275CD945C(v21, v20);
            v20 += 24;
            v21 = v22 + 24;
            v19 += 24;
          }

          while (v20 != a4);
        }

        a1[1] = v19;
        if (v16 >= 1)
        {
          sub_275CD3DE8(a1, v5, v10, v5 + 24 * a5);
          v23 = 0;
          do
          {
            v24 = v23 + v5;
            v25 = *v7;
            *(v24 + 16) = *(v7 + 16);
            *v24 = v25;
            v7 += 24;
            v23 += 24;
          }

          while (v7 != v18);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_275C8D77C();
      }

      v13 = a2 - v11;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v12;
      }

      v39 = a1;
      if (v15)
      {
        sub_275CD3430(a1, v15);
      }

      v31 = 8 * (v13 >> 3);
      __p = 0;
      v36 = v31;
      v37 = v31;
      v38 = 0;
      v32 = v31 + 24 * a5;
      v33 = 24 * a5;
      do
      {
        sub_275CD945C(v31, v7);
        v31 += 24;
        v7 += 24;
        v33 -= 24;
      }

      while (v33);
      v37 = v32;
      v5 = sub_275CD3EA0(a1, &__p, v5);
      if (v37 != v36)
      {
        v37 = (v37 - v36 - 24) % 0x18uLL + v36;
      }

      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  return v5;
}

void sub_275CD3D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_275CD3DE8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v8 = v7 - a4;
  v9 = a2 + v7 - a4;
  if (v9 >= a3)
  {
    v11 = *(a1 + 8);
  }

  else
  {
    v11 = *(a1 + 8);
    do
    {
      result.n128_f64[0] = sub_275CD945C(v11, v9);
      v9 += 24;
      v11 += 24;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v11;
  if (v7 != a4)
  {
    v13 = (v7 - 24);
    v14 = a2 - 24;
    do
    {
      result = *(v14 + v8);
      v13[1].n128_u64[0] = *(v14 + v8 + 16);
      *v13 = result;
      v13 = (v13 - 24);
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_275CD3EA0(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a1[1];
  v8 = a2[1];
  v7 = a2[2];
  if (v6 == a3)
  {
    v12 = a2[1];
    v11 = a3;
  }

  else
  {
    v9 = a3;
    do
    {
      sub_275CD945C(v7, v9);
      v9 += 24;
      v7 = v10 + 24;
    }

    while (v9 != v6);
    v11 = a1[1];
    v12 = a2[1];
    v7 = a2[2];
  }

  a2[2] = v7 + v11 - a3;
  a1[1] = a3;
  v13 = *a1;
  v14 = v12 + *a1 - a3;
  if (*a1 != a3)
  {
    v15 = v12 + *a1 - a3;
    do
    {
      sub_275CD945C(v15, v13);
      v13 += 24;
      v15 = v16 + 24;
    }

    while (v13 != a3);
    v13 = *a1;
  }

  a2[1] = v14;
  *a1 = v14;
  a1[1] = v13;
  a2[1] = v13;
  v17 = a1[1];
  a1[1] = a2[2];
  a2[2] = v17;
  v18 = a1[2];
  a1[2] = a2[3];
  a2[3] = v18;
  *a2 = a2[1];
  return v8;
}

void sub_275CD3F90(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 4)
  {
    if (a2)
    {
      v11 = &v4[2 * a2];
      do
      {
        *v4 = 0;
        v4[1] = 0x7FFFFFFFFFFFFFFFLL;
        v4 += 2;
      }

      while (v4 != v11);
      v4 = v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = v4 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_275C8D77C();
    }

    v8 = v6 >> 4;
    v9 = v5 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      sub_275C9395C(a1, v10);
    }

    v12 = 16 * v8;
    v13 = 16 * v8 + 16 * a2;
    v14 = v12;
    do
    {
      *v14 = 0;
      v14[1] = 0x7FFFFFFFFFFFFFFFLL;
      v14 += 2;
    }

    while (v14 != v13);
    v15 = *(a1 + 8) - *a1;
    v16 = v12 - v15;
    memcpy((v12 - v15), *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

uint64_t sub_275CD40A4(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_275C8D77C();
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

  v13 = a1;
  if (v6)
  {
    sub_275CD3430(a1, v6);
  }

  __p = 0;
  v10 = 24 * v2;
  v12 = 0;
  sub_275CD945C(24 * v2, a2);
  v11 = 24 * v2 + 24;
  sub_275CD4220(a1, &__p);
  v7 = a1[1];
  if (v11 != v10)
  {
    v11 = (v11 - v10 - 24) % 0x18uLL + v10;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_275CD41D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_275CD4220(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  v5 = *result;
  v6 = result[1];
  v7 = v4 + *result - v6;
  if (v6 != *result)
  {
    result = (v4 + *result - v6);
    do
    {
      sub_275CD945C(result, v5);
      v5 += 24;
      result = (v8 + 24);
    }

    while (v5 != v6);
    v5 = *v3;
  }

  a2[1] = v7;
  *v3 = v7;
  v3[1] = v5;
  a2[1] = v5;
  v9 = v3[1];
  v3[1] = a2[2];
  a2[2] = v9;
  v10 = v3[2];
  v3[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void sub_275CD4564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_275CD5B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (*(v23 - 145) < 0)
  {
    operator delete(*(v22 + 24));
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_275CD5CEC(uint64_t a1, const std::string *a2, int a3, unint64_t a4)
{
  v7 = a4;
  v8 = a3;
  v9 = &v7;
  v5 = sub_275CD7210(a1 + 80, &v7);
  return std::string::operator=(v5 + 2, a2);
}

CGColorRef sub_275CD5D4C(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *components = xmmword_275D0C1E0;
  v18 = unk_275D0C1F0;
  v1 = *(a1 + 23);
  if ((v1 & 0x80) != 0)
  {
    v2 = *(a1 + 8);
    if (v2 <= 1)
    {
      return 0;
    }

    if (**a1 != 35)
    {
      sub_275CAF534(__p, *a1, v2);
      goto LABEL_10;
    }

LABEL_7:
    if ((sub_275CD6A84(a1, components, &components[1], &v18) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (v1 < 2)
  {
    return 0;
  }

  if (*a1 == 35)
  {
    goto LABEL_7;
  }

  *__p = *a1;
  v16 = *(a1 + 16);
LABEL_10:
  v5 = HIBYTE(v16);
  v6 = __p[1];
  if (v16 >= 0)
  {
    v7 = HIBYTE(v16);
  }

  else
  {
    v7 = __p[1];
  }

  if (!v7)
  {
LABEL_28:
    v13 = sub_275CD686C(__p, components, &components[1], &v18);
    if (v16 < 0)
    {
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  v8 = __p[0];
  if (v16 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  while (1)
  {
    v10 = *v9;
    if (*v9 > 90)
    {
      break;
    }

    if (v10 < 65)
    {
      goto LABEL_33;
    }

    *v9 = v10 + 32;
    v5 = HIBYTE(v16);
    v8 = __p[0];
    v6 = __p[1];
LABEL_21:
    v9 = (v9 + 1);
    if (v5 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = v8;
    }

    if (v5 >= 0)
    {
      v12 = v5;
    }

    else
    {
      v12 = v6;
    }

    if (v9 == &v12[v11])
    {
      goto LABEL_28;
    }
  }

  if ((v10 - 97) <= 0x19)
  {
    goto LABEL_21;
  }

LABEL_33:
  v13 = 0;
  if ((v5 & 0x80) != 0)
  {
LABEL_29:
    operator delete(__p[0]);
  }

LABEL_30:
  if (!v13)
  {
    return 0;
  }

LABEL_8:
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v4 = CGColorCreate(DeviceRGB, components);
  CGColorSpaceRelease(DeviceRGB);
  return v4;
}

void sub_275CD5F00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_275CD60CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id *sub_275CD610C(id *result, std::string *__str, _BYTE *a3, _BYTE *a4, int a5)
{
  if (*a3 != 1)
  {
    return result;
  }

  v37 = v5;
  v38 = v6;
  v10 = result;
  if (*a4 == 1)
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v12 = __str;
    }

    else
    {
      v12 = __str->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = __str->__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      goto LABEL_42;
    }

    v13 = 0;
    while (1)
    {
      v14 = v12->__r_.__value_.__s.__data_[v13];
      v15 = v14 > 0x20;
      v16 = (1 << v14) & 0x100000600;
      if (v15 || v16 == 0)
      {
        break;
      }

      if (size == ++v13)
      {
        goto LABEL_42;
      }
    }

    if (v13 == -1)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v13 = 0;
  }

  v18 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (!a5)
  {
    v19 = __str->__r_.__value_.__l.__size_;
    if ((v18 & 0x80u) == 0)
    {
      v26 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v26 = __str->__r_.__value_.__l.__size_;
    }

    v22 = v26 - 1;
    goto LABEL_33;
  }

  v20 = __str->__r_.__value_.__r.__words[0];
  v19 = __str->__r_.__value_.__l.__size_;
  if ((v18 & 0x80u) != 0)
  {
    v21 = __str->__r_.__value_.__l.__size_;
  }

  else
  {
    v20 = __str;
    v21 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  if (v21)
  {
    v22 = v21 - 1;
    do
    {
      v23 = v20->__r_.__value_.__s.__data_[v22];
      v15 = v23 > 0x20;
      v24 = (1 << v23) & 0x100000600;
      if (v15 || v24 == 0)
      {
        break;
      }

      --v22;
    }

    while (v22 != -1);
LABEL_33:
    if (!v13)
    {
      goto LABEL_34;
    }

    goto LABEL_39;
  }

  v22 = -1;
  if (!v13)
  {
LABEL_34:
    if ((v18 & 0x80u) != 0)
    {
      v18 = v19;
    }

    if (v22 == v18 - 1)
    {
      goto LABEL_42;
    }
  }

LABEL_39:
  std::string::basic_string(&v35, __str, v13, v22 - v13 + 1, &v36);
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str->__r_.__value_.__l.__data_);
  }

  *__str = v35;
LABEL_42:
  v27 = objc_alloc(MEMORY[0x277CCACA8]);
  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = objc_msgSend_initWithUTF8String_(v27, v28, __str, v29);
  }

  else
  {
    v30 = objc_msgSend_initWithUTF8String_(v27, v28, __str->__r_.__value_.__r.__words[0], v29);
  }

  if (v30)
  {
    v33 = v30;
    v34 = *v10;
    if (!*v10)
    {
      v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
      *v10 = v34;
    }

    objc_msgSend_addObject_(v34, v31, v33, v32);
  }

  result = MEMORY[0x277C8CD20](__str, "");
  *a3 = 0;
  *a4 = 0;
  return result;
}

void sub_275CD65EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

xmlEntityPtr sub_275CD67B0(void *a1, char *__s)
{
  if (qword_280A38BB8 != -1)
  {
    sub_275D01FF0();
  }

  v4 = qword_280A38BB0;
  sub_275CA6274(__p, __s);
  v5 = sub_275CD7CA8(v4, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v4 + 8 == v5)
  {
    return xmlSAX2GetEntity(a1, __s);
  }

  result = *(v5 + 56);
  if (!result)
  {
    return xmlSAX2GetEntity(a1, __s);
  }

  return result;
}

void sub_275CD6850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275CD686C(std::string::size_type a1, double *a2, double *a3, double *a4)
{
  if (qword_280A38BA8 != -1)
  {
    sub_275D02004();
  }

  if (!qword_280A38BA0)
  {
    return 1;
  }

  v8 = *(a1 + 23);
  if ((v8 & 0x80u) == 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  __dst.__r_.__value_.__r.__words[0] = v9;
  __dst.__r_.__value_.__l.__size_ = v8;
  v10 = sub_275C977C4(qword_280A38BA0, &__dst);
  if (qword_280A38BA0 + 8 == v10)
  {
    return 0;
  }

  v11 = *(v10 + 56);
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_275C8EE7C();
  }

  v12 = *(v10 + 48);
  if (v11 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = *(v10 + 56);
  if (v11)
  {
    memmove(&__dst, v12, v11);
  }

  __dst.__r_.__value_.__s.__data_[v11] = 0;
  v13 = sub_275CD6A84(&__dst, a2, a3, a4);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v13;
}

void sub_275CD69C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275CD69E4()
{
  result = operator new(0x18uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    v1 = result;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = result + 8;
    v2 = &off_27A6779E8;
    v3 = 147;
    do
    {
      result = sub_275CD7DBC(v1, v2);
      *(result + 48) = *(v2 + 1);
      v2 += 4;
      --v3;
    }

    while (v3);
    qword_280A38BA0 = v1;
  }

  return result;
}

uint64_t sub_275CD6A84(std::string *__str, double *a2, double *a3, double *a4)
{
  v4 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v4 >= 0)
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (v4 >= 0)
  {
    v6 = __str;
  }

  else
  {
    v6 = __str->__r_.__value_.__r.__words[0];
  }

  v7 = v6->__r_.__value_.__s.__data_[0];
  v8 = size - (v7 == 35);
  if (v8 != 6 && v8 != 3)
  {
    return 0;
  }

  if (size)
  {
    v14 = 0;
    while (memchr("#0123456789abcdefABCDEF", v6->__r_.__value_.__s.__data_[v14], 0x17uLL))
    {
      if (size == ++v14)
      {
        goto LABEL_19;
      }
    }

    if (v14 != -1)
    {
      return 0;
    }
  }

LABEL_19:
  v16 = 3;
  if (v7 == 35)
  {
    v16 = 4;
  }

  v17 = size > v16;
  if (v17)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  if (v17)
  {
    v19 = 255.0;
  }

  else
  {
    v19 = 15.0;
  }

  std::string::basic_string(&v22, __str, (-3 << v17) + size, v18, &v21);
  std::string::basic_string(&v21, __str, size - 2 * v18, v18, &__p);
  std::string::basic_string(&__p, __str, size - v18, v18, &v23);
  *a2 = sub_275CD6C90(&v22) / v19;
  *a3 = sub_275CD6C90(&v21) / v19;
  *a4 = sub_275CD6C90(&__p) / v19;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_275CD6C44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275CD6C90(const std::string *a1)
{
  sub_275C95420(v4, a1, 8);
  v3 = 0;
  *(&v4[1] + *(v4[0] - 24)) = *(&v4[1] + *(v4[0] - 24)) & 0xFFFFFFB5 | 8;
  MEMORY[0x277C8CE60](v4, &v3);
  v1 = v3;
  v4[0] = *MEMORY[0x277D82820];
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v5 = MEMORY[0x277D82878] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v6);
  std::istream::~istream();
  MEMORY[0x277C8CF70](&v8);
  return v1;
}

void sub_275CD6E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_275C96970(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275CD6E20(uint64_t a1, unint64_t *a2)
{
  v2 = *sub_275CD6EBC(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_275CD6EBC(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = *(a3 + 2);
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = v4[4];
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = *(v8 + 10);
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

uint64_t sub_275CD6F24(uint64_t a1, unint64_t *a2)
{
  v2 = *sub_275CD6EBC(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_275CD6FC8(uint64_t a1, unint64_t *a2)
{
  v2 = *sub_275CD6EBC(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

char **sub_275CD706C(uint64_t a1, uint64_t a2, char **a3, unint64_t *a4)
{
  result = (sub_275CD70D4(a2, a4) + 48);
  if (result != a3)
  {
    return sub_275C9AB20(result, *a3, a3[1], (a3[1] - *a3) >> 4);
  }

  return result;
}

uint64_t sub_275CD70D4(uint64_t a1, unint64_t *a2)
{
  v2 = *sub_275CD6EBC(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_275CD7174(uint64_t a1, unint64_t *a2)
{
  v2 = *sub_275CD6EBC(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_275CD7210(uint64_t a1, unint64_t *a2)
{
  v2 = *sub_275CD6EBC(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

char **sub_275CD72B0(uint64_t a1, uint64_t a2, char **a3, unint64_t *a4)
{
  result = (sub_275CD7318(a2, a4) + 48);
  if (result != a3)
  {
    return sub_275C8E0E0(result, *a3, a3[1], (a3[1] - *a3) >> 2);
  }

  return result;
}

uint64_t sub_275CD7318(uint64_t a1, unint64_t *a2)
{
  v2 = *sub_275CD6EBC(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_275CD73B8(uint64_t a1, uint64_t a2, std::string **a3, unint64_t *a4)
{
  v5 = (sub_275CD70D4(a2, a4) + 48);
  if (v5 != a3)
  {
    sub_275CAECE0(v5, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  }
}

uint64_t sub_275CD742C(uint64_t a1, unint64_t *a2)
{
  v2 = *sub_275CD6EBC(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_275CD74D0(uint64_t a1, unint64_t *a2)
{
  v2 = *sub_275CD6EBC(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_275CD756C(uint64_t a1, unint64_t *a2)
{
  v2 = *sub_275CD6EBC(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_275CD7624(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_275CB42BC(v2 + 6);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_275CD7670(void *a1)
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
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_275C8D358(a1);
}

void sub_275CD780C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275CD7828(uint64_t a1, const void **a2)
{
  v2 = *sub_275CD78D4(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_275CD78D4(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

void *sub_275CD79DC(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 7) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = sub_275CD7A64(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v8 & 0x3FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *sub_275CD7A64(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
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
    sub_275C8DF28(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_275C8DB00(a1, &v10);
}

void sub_275CD7BEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_275CD7C38(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 7) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x400)
  {
    a2 = 1;
  }

  if (v5 < 0x800)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

uint64_t sub_275CD7CA8(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

uint64_t sub_275CD7DBC(uint64_t a1, uint64_t a2)
{
  v2 = *sub_275C976DC(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_275CD8144(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    sub_275C9B8F0(v4);
  }

  return a1;
}

uint64_t sub_275CD8194(uint64_t a1, CFTypeRef cf, double a3, double a4)
{
  *a1 = 1;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = cf;
  *(a1 + 32) = 0;
  *(a1 + 40) = -1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

void sub_275CD81E4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    sub_275C9B8F0(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275CD81FC(uint64_t a1, CFTypeRef cf, __int16 a3, double a4, double a5)
{
  *a1 = 2;
  *(a1 + 8) = a4;
  *(a1 + 16) = a5;
  *(a1 + 24) = 0;
  *(a1 + 32) = cf;
  *(a1 + 40) = a3;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

void sub_275CD8248(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    sub_275C9B8F0(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275CD8260(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (v4)
  {
    CFRetain(v4);
    v3 = *(a1 + 32);
  }

  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

void sub_275CD82C8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    sub_275C9B8F0(v3);
  }

  _Unwind_Resume(exception_object);
}

CGPathRef sub_275CD82E0(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v3 = *(a1 + 24);

    return CFRetain(v3);
  }

  else
  {
    v8 = v1;
    v9 = v2;
    v5 = *(a1 + 32);
    if (!v5)
    {
      return 0;
    }

    v6 = *(a1 + 40);
    if (v6 == 0xFFFF)
    {
      return 0;
    }

    else
    {
      memset(&v7, 0, sizeof(v7));
      CGAffineTransformMakeScale(&v7, 1.0, -1.0);
      return CTFontCreatePathForGlyph(v5, v6, &v7);
    }
  }
}

void *sub_275CD836C(uint64_t a1, const void *a2, double a3, double a4)
{
  sub_275CD8194(v6, a2, a3, a4);
  sub_275CD83C4(a1, v6);
  return sub_275CD8144(v6);
}

void sub_275CD83B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275CD8144(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275CD83C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_275CD84D8(a1, a2);
  }

  else
  {
    sub_275CD8260(*(a1 + 8), a2);
    result = v3 + 72;
    *(a1 + 8) = v3 + 72;
  }

  *(a1 + 8) = result;
  return result;
}

void *sub_275CD8418(uint64_t a1, const void *a2, __int16 a3, double a4, double a5)
{
  sub_275CD81FC(v7, a2, a3, a4, a5);
  sub_275CD83C4(a1, v7);
  return sub_275CD8144(v7);
}

void sub_275CD845C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275CD8144(va);
  _Unwind_Resume(a1);
}

void *sub_275CD8470(uint64_t a1, double a2, double a3, double a4)
{
  LODWORD(v5[0]) = 3;
  *&v5[1] = a2;
  *&v5[2] = a3;
  v5[3] = 0;
  v5[4] = 0;
  v6 = -1;
  v7 = a4;
  v8 = 0;
  v9 = 0;
  sub_275CD83C4(a1, v5);
  return sub_275CD8144(v5);
}

void sub_275CD84C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275CD8144(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275CD84D8(uint64_t a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_275C8D77C();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_275CD8620(a1, v6);
  }

  v13 = 0;
  v14 = 72 * v2;
  sub_275CD8260(72 * v2, a2);
  v15 = 72 * v2 + 72;
  v7 = *(a1 + 8);
  v8 = 72 * v2 + *a1 - v7;
  sub_275CD867C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_275CD8720(&v13);
  return v12;
}

void sub_275CD860C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_275CD8720(va);
  _Unwind_Resume(a1);
}

void sub_275CD8620(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_275C8D86C();
}

uint64_t sub_275CD867C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = sub_275CD8260(a4, v8);
      v8 += 72;
      a4 += 72;
      v7 -= 72;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      result = sub_275CD8144(v6);
      v6 += 9;
    }
  }

  return result;
}

void sub_275CD86FC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 72);
    do
    {
      v4 = sub_275CD8144(v4) - 9;
      v2 += 72;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275CD8720(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    sub_275CD8144((i - 72));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_275CD9448(uint64_t result, int a2)
{
  *result = 0;
  *(result + 8) = a2;
  *(result + 16) = 0x7FEFFFFFFFFFFFFFLL;
  return result;
}

double sub_275CD945C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

double sub_275CD9478(double *a1, double a2)
{
  result = *a1 + a2;
  *a1 = result;
  return result;
}

double sub_275CD94B4(double *a1, double a2)
{
  result = *a1 + a2;
  a1[2] = result;
  return result;
}

double sub_275CD94C4(uint64_t a1)
{
  result = *(a1 + 16);
  if (result == 1.79769313e308)
  {
    v2 = *(a1 + 8);
    if ((v2 - 3) >= 2)
    {
      result = 0.0;
      if (v2 == 2)
      {
        return *a1 * 0.5;
      }
    }

    else
    {
      return *a1;
    }
  }

  return result;
}

double sub_275CD950C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 16);
  if (v2 == 1.79769313e308)
  {
    v3 = *(a1 + 8);
    v2 = *a1;
    if ((v3 - 3) >= 2)
    {
      v2 = 0.0;
      if (v3 == 2)
      {
        v2 = v1 * 0.5;
      }
    }
  }

  return v1 - v2;
}

void blahtex::translateToken(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if ((atomic_load_explicit(&qword_280A38C68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38C68))
  {
    sub_275CD975C(qword_280A38C40, &unk_27A680F18, &unk_27A680F18 + 2442);
    __cxa_guard_release(&qword_280A38C68);
  }

  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    v5 = *a1;
    v6 = *(a1 + 8);
    if (v6 != 1)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v5 = a1;
    if (v4 != 1)
    {
      goto LABEL_12;
    }
  }

  v7 = sub_275CD9A0C(qword_280A38C40, v5);
  if (v7)
  {
    v8 = v7[4];
    if (v8 >= 0x3FFFFFFFFFFFFFF8)
    {
      sub_275C8EE7C();
    }

    v9 = v7[3];
    if (v8 >= 5)
    {
      if ((v8 | 1) == 5)
      {
        v10 = 7;
      }

      else
      {
        v10 = (v8 | 1) + 1;
      }

      sub_275C8DFE0(a2, v10);
    }

    *(a2 + 23) = v8;
    if (v8)
    {
      memmove(a2, v9, 4 * v8);
    }

    *(a2 + v8) = 0;
    return;
  }

  if ((*(a1 + 23) & 0x80000000) == 0)
  {
LABEL_12:
    *a2 = *a1;
    *(a2 + 2) = *(a1 + 16);
    return;
  }

  v5 = *a1;
  v6 = *(a1 + 8);
LABEL_20:

  sub_275CD96C4(a2, v5, v6);
}

void *sub_275CD96C4(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 4)
  {
    if (a3 < 0x3FFFFFFFFFFFFFF8)
    {
      if ((a3 | 1) == 5)
      {
        v3 = 7;
      }

      else
      {
        v3 = (a3 | 1) + 1;
      }

      sub_275C8DFE0(__dst, v3);
    }

    sub_275C8EE7C();
  }

  __dst[23] = a3;
  v4 = 4 * a3 + 4;

  return memmove(__dst, __src, v4);
}

uint64_t sub_275CD975C(uint64_t a1, int *a2, int *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      sub_275CD97D8(a1, v5);
      v5 += 6;
    }

    while (v5 != a3);
  }

  return a1;
}

uint64_t *sub_275CD97D8(void *a1, int *a2)
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
    if (*&v3 <= v2)
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *sub_275CD9A0C(void *a1, int *a2)
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
    if (*&v2 <= v3)
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

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
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
  }

  return result;
}

uint64_t blahtex::Interface::GetMathml@<X0>(blahtex::Interface *this@<X0>, uint64_t a2@<X8>)
{
  sub_275CD9D50(&v6);
  blahtex::Manager::GenerateMathml(*this, (this + 8));
  blahtex::MathmlNode::Print(v5, &v6, this + 32, *(this + 121), 0);
  sub_275CDA92C(&v7, a2);
  sub_275CD9E4C(&v5);
  v6 = &unk_2884CBA50;
  v10 = &unk_2884CBA78;
  v7 = &unk_2884CBB20;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(v8);
  std::wostream::~wostream();
  return MEMORY[0x277C8CF80](&v10);
}

void sub_275CD9D18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_275CD9EE0(va, &off_2884CBA88);
  MEMORY[0x277C8CF80](va1);
  _Unwind_Resume(a1);
}

uint64_t sub_275CD9D50(uint64_t a1)
{
  *(a1 + 160) = 0;
  *a1 = &unk_2884CBAC0;
  *(a1 + 112) = &unk_2884CBAE8;
  std::ios_base::init((a1 + 112), (a1 + 8));
  *(a1 + 248) = 0;
  *(a1 + 256) = -1;
  *a1 = &unk_2884CBA50;
  *(a1 + 112) = &unk_2884CBA78;
  sub_275CDA770(a1 + 8, 16);
  return a1;
}

void sub_275CD9E1C(_Unwind_Exception *a1)
{
  std::wostream::~wostream();
  MEMORY[0x277C8CF80](v1);
  _Unwind_Resume(a1);
}

blahtex::MathmlNode **sub_275CD9E4C(blahtex::MathmlNode **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    blahtex::MathmlNode::~MathmlNode(v2);
    MEMORY[0x277C8CFC0]();
  }

  return a1;
}

uint64_t sub_275CD9E94(uint64_t a1)
{
  v2 = sub_275CD9EE0(a1, &off_2884CBA88);
  MEMORY[0x277C8CF80](v2 + 112);
  return a1;
}

uint64_t sub_275CD9EE0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = &unk_2884CBB20;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82870] + 16;
  std::locale::~locale((a1 + 16));

  return std::wostream::~wostream();
}

void sub_275CD9FFC(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1->__locale_ = &unk_2884CBA50;
  v1[14].__locale_ = &unk_2884CBA78;
  v1[1].__locale_ = &unk_2884CBB20;
  if (SHIBYTE(v1[11].__locale_) < 0)
  {
    operator delete(v1[9].__locale_);
  }

  v1[1].__locale_ = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(v1 + 2);
  std::wostream::~wostream();

  JUMPOUT(0x277C8CF80);
}

void sub_275CDA0F0(uint64_t a1)
{
  *a1 = &unk_2884CBA50;
  v2 = a1 + 112;
  *(a1 + 112) = &unk_2884CBA78;
  *(a1 + 8) = &unk_2884CBB20;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82870] + 16;
  std::locale::~locale((a1 + 16));
  std::wostream::~wostream();
  MEMORY[0x277C8CF80](v2);

  JUMPOUT(0x277C8CFC0);
}

void sub_275CDA1E8(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1->__locale_ = &unk_2884CBA50;
  v1[14].__locale_ = &unk_2884CBA78;
  v1[1].__locale_ = &unk_2884CBB20;
  if (SHIBYTE(v1[11].__locale_) < 0)
  {
    operator delete(v1[9].__locale_);
  }

  v1[1].__locale_ = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(v1 + 2);
  std::wostream::~wostream();
  MEMORY[0x277C8CF80](&v1[14]);

  JUMPOUT(0x277C8CFC0);
}

uint64_t sub_275CDA2F4(uint64_t a1)
{
  *a1 = &unk_2884CBB20;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = MEMORY[0x277D82870] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_275CDA368(uint64_t a1)
{
  *a1 = &unk_2884CBB20;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = MEMORY[0x277D82870] + 16;
  std::locale::~locale((a1 + 8));

  JUMPOUT(0x277C8CFC0);
}

double sub_275CDA3FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 88);
  v6 = *(a1 + 48);
  if (v5 < v6)
  {
    *(a1 + 88) = v6;
    v5 = v6;
  }

  if ((a4 & 0x18) == 0 || a3 == 1 && (a4 & 0x18) == 0x18)
  {
    goto LABEL_6;
  }

  if (!v5)
  {
    v10 = 0;
    if (a3)
    {
      goto LABEL_12;
    }

LABEL_17:
    v12 = a3;
    goto LABEL_21;
  }

  v9 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    v9 = *v9;
  }

  v10 = (v5 - v9) >> 2;
  if (!a3)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (a3 == 2)
  {
    v12 = v10;
  }

  else
  {
    if (a3 != 1)
    {
LABEL_6:
      v7 = -1;
      goto LABEL_7;
    }

    if ((a4 & 8) != 0)
    {
      v11 = *(a1 + 24) - *(a1 + 16);
    }

    else
    {
      v11 = v6 - *(a1 + 40);
    }

    v12 = v11 >> 2;
  }

LABEL_21:
  v7 = -1;
  v13 = v12 + a2;
  if (v13 >= 0 && v10 >= v13 && (!v13 || ((a4 & 8) == 0 || *(a1 + 24)) && ((a4 & 0x10) == 0 || v6)))
  {
    if ((a4 & 8) != 0)
    {
      *(a1 + 24) = *(a1 + 16) + 4 * v13;
      *(a1 + 32) = v5;
    }

    if ((a4 & 0x10) != 0)
    {
      *(a1 + 48) = *(a1 + 40) + 4 * v13;
    }

    v7 = v13;
  }

LABEL_7:
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 128) = v7;
  return result;
}

uint64_t sub_275CDA534(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(a1 + 48);
  if (v1 < v2)
  {
    *(a1 + 88) = v2;
    v1 = v2;
  }

  if ((*(a1 + 96) & 8) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 32);
  if (v3 < v1)
  {
    *(a1 + 32) = v1;
    v3 = v1;
  }

  v4 = *(a1 + 24);
  if (v4 < v3)
  {
    return *v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_275CDA584(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 48);
  if (v2 < v3)
  {
    *(a1 + 88) = v3;
    v2 = v3;
  }

  v4 = *(a1 + 24);
  if (*(a1 + 16) < v4)
  {
    if (a2 == -1)
    {
      a2 = 0;
      v5 = v4 - 4;
      goto LABEL_10;
    }

    if ((*(a1 + 96) & 0x10) != 0 || *(v4 - 4) == a2)
    {
      *(v4 - 4) = a2;
      v5 = v4 - 4;
LABEL_10:
      *(a1 + 24) = v5;
      *(a1 + 32) = v2;
      return a2;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_275CDA5E8(uint64_t a1, uint64_t a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  v2 = a2;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  if (v7 != v6)
  {
    v8 = *(a1 + 88);
    goto LABEL_13;
  }

  if ((*(a1 + 96) & 0x10) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(a1 + 40);
  v10 = *(a1 + 88);
  v11 = a1 + 64;
  std::wstring::push_back((a1 + 64), 0);
  if (*(a1 + 87) < 0)
  {
    v12 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    v12 = 4;
  }

  std::wstring::resize((a1 + 64), v12, 0);
  v13 = *(a1 + 87);
  if (v13 < 0)
  {
    v11 = *(a1 + 64);
    v13 = *(a1 + 72);
  }

  v6 = (v11 + 4 * v13);
  v7 = (v11 + 4 * ((v7 - v9) >> 2));
  *(a1 + 40) = v11;
  *(a1 + 48) = v7;
  *(a1 + 56) = v6;
  v8 = v11 + v10 - v9;
LABEL_13:
  if ((v7 + 1) >= v8)
  {
    v8 = (v7 + 1);
  }

  *(a1 + 88) = v8;
  if ((*(a1 + 96) & 8) != 0)
  {
    v14 = (a1 + 64);
    if (*(a1 + 87) < 0)
    {
      v14 = *v14;
    }

    *(a1 + 16) = v14;
    *(a1 + 24) = v14 + v4 - v5;
    *(a1 + 32) = v8;
  }

  if (v7 != v6)
  {
    *(a1 + 48) = v7 + 1;
    *v7 = v2;
    return v2;
  }

  v16 = *(*a1 + 104);

  return v16(a1, v2);
}