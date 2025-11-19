char *_platform_strncpy(char *a1, char *a2, unint64_t a3)
{
  v6 = _platform_strnlen(a2, a3);
  v7 = a3 - v6;
  if (a3 <= v6)
  {
    _platform_memmove(a1, a2, a3);
  }

  else
  {
    v8 = v6;
    _platform_memmove(a1, a2, v6);
    _platform_memset(&a1[v8], 0, v7);
  }

  return a1;
}

char *_platform_memmove(char *result, char *a2, unint64_t a3)
{
  if (result - a2 < a3)
  {
    if (result != a2)
    {
      v34 = &result[a3];
      v35 = &a2[a3];
      if (a3 < 0x40)
      {
        while (1)
        {
          v31 = a3 >= 8;
          a3 -= 8;
          if (!v31)
          {
            break;
          }

          v50 = *(v35 - 1);
          v35 -= 8;
          *(v34 - 1) = v50;
          v34 -= 8;
        }

        for (i = a3 + 8; i; --i)
        {
          v52 = *--v35;
          *--v34 = v52;
        }
      }

      else
      {
        if (a3 < 0x4000)
        {
          v47 = *(v35 - 2);
          v48 = *(v35 - 1);
          v38 = (v34 - 1) & 0xFFFFFFFFFFFFFFE0;
          v49 = v35 - &v34[-v38];
          v40 = *(v49 - 32);
          v41 = *(v49 - 16);
          *(v34 - 2) = v47;
          *(v34 - 1) = v48;
          v42 = v49 - 32;
          v43 = v38 - result - 64;
          if (v38 - result > 0x40)
          {
            do
            {
              *(v38 - 32) = v40;
              *(v38 - 16) = v41;
              v38 -= 32;
              v40 = *(v42 - 32);
              v41 = *(v42 - 16);
              v42 -= 32;
              v12 = v43 > 0x20;
              v43 -= 32;
            }

            while (v12);
          }
        }

        else
        {
          v36 = *(v35 - 2);
          v37 = *(v35 - 1);
          v38 = (v34 - 1) & 0xFFFFFFFFFFFFFFE0;
          v39 = v35 - &v34[-v38];
          v40 = *(v39 - 32);
          v41 = *(v39 - 16);
          *(v34 - 2) = v36;
          *(v34 - 1) = v37;
          v42 = v39 - 32;
          v43 = v38 - result - 64;
          if (v38 - result > 0x40)
          {
            do
            {
              *(v38 - 32) = v40;
              *(v38 - 16) = v41;
              v38 -= 32;
              v40 = *(v42 - 32);
              v41 = *(v42 - 16);
              v42 -= 32;
              v12 = v43 > 0x20;
              v43 -= 32;
            }

            while (v12);
          }
        }

        v44 = v42 - v43;
        v45 = *(v44 - 32);
        v46 = *(v44 - 16);
        *(v38 - 32) = v40;
        *(v38 - 16) = v41;
        *result = v45;
        *(result + 1) = v46;
      }
    }
  }

  else
  {
    v3 = result;
    if (a3 < 0x40)
    {
      while (1)
      {
        v31 = a3 >= 8;
        a3 -= 8;
        if (!v31)
        {
          break;
        }

        v30 = *a2;
        a2 += 8;
        *v3++ = v30;
      }

      for (j = a3 + 8; j; --j)
      {
        v33 = *a2++;
        *v3 = v33;
        v3 = (v3 + 1);
      }
    }

    else
    {
      if (a2 - result < a3)
      {
        if (a3 < 0x4000)
        {
          v4 = ((result + 32) & 0xFFFFFFFFFFFFFFE0);
          v22 = *a2;
          v23 = *(a2 + 1);
          v24 = &a2[v4 - result];
          v8 = *v24;
          v9 = v24[1];
          v10 = v24 + 2;
          v25 = a3 - (v4 - result);
          *result = v22;
          *(result + 1) = v23;
          v12 = v25 > 0x40;
          for (k = v25 - 64; v12; k -= 32)
          {
            *v4 = v8;
            *(v4 + 1) = v9;
            v4 += 32;
            v8 = *v10;
            v9 = v10[1];
            v10 += 2;
            v12 = k > 0x20;
          }
        }

        else
        {
          v4 = ((result + 32) & 0xFFFFFFFFFFFFFFE0);
          v18 = *a2;
          v19 = *(a2 + 1);
          v20 = &a2[v4 - result];
          v8 = *v20;
          v9 = v20[1];
          v10 = v20 + 2;
          v21 = a3 - (v4 - result);
          *result = v18;
          *(result + 1) = v19;
          v12 = v21 > 0x40;
          for (k = v21 - 64; v12; k -= 32)
          {
            *v4 = v8;
            *(v4 + 1) = v9;
            v4 += 32;
            v8 = *v10;
            v9 = v10[1];
            v10 += 2;
            v12 = k > 0x20;
          }
        }
      }

      else if (a3 < 0x4000)
      {
        v4 = ((result + 32) & 0xFFFFFFFFFFFFFFE0);
        v14 = *a2;
        v15 = *(a2 + 1);
        v16 = &a2[v4 - result];
        v8 = *v16;
        v9 = v16[1];
        v10 = v16 + 2;
        v17 = a3 - (v4 - result);
        *result = v14;
        *(result + 1) = v15;
        v12 = v17 > 0x40;
        for (k = v17 - 64; v12; k -= 32)
        {
          *v4 = v8;
          *(v4 + 1) = v9;
          v4 += 32;
          v8 = *v10;
          v9 = v10[1];
          v10 += 2;
          v12 = k > 0x20;
        }
      }

      else
      {
        v4 = ((result + 32) & 0xFFFFFFFFFFFFFFE0);
        v5 = *a2;
        v6 = *(a2 + 1);
        v7 = &a2[v4 - result];
        v8 = *v7;
        v9 = v7[1];
        v10 = v7 + 2;
        v11 = a3 - (v4 - result);
        *result = v5;
        *(result + 1) = v6;
        v12 = v11 > 0x40;
        for (k = v11 - 64; v12; k -= 32)
        {
          *v4 = v8;
          *(v4 + 1) = v9;
          v4 += 32;
          v8 = *v10;
          v9 = v10[1];
          v10 += 2;
          v12 = k > 0x20;
        }
      }

      v26 = (v10 + k);
      v27 = *v26;
      v28 = v26[1];
      *v4 = v8;
      *(v4 + 1) = v9;
      v29 = &v4[k];
      *(v29 + 2) = v27;
      *(v29 + 3) = v28;
    }
  }

  return result;
}

int8x16_t *_platform_bzero(int8x16_t *result, unint64_t a2, int8x16_t a3)
{
  v3 = veorq_s8(a3, a3);
  if (a2 < 0x40)
  {
    JUMPOUT(0x299E42CB4);
  }

  if (a2 < 0x8000)
  {
    JUMPOUT(0x299E42C6CLL);
  }

  *result = v3;
  result[1] = v3;
  result[2] = v3;
  result[3] = v3;
  v4 = &result[4] & 0xFFFFFFFFFFFFFFC0;
  v5 = result[-4].u64 + a2 - v4;
  if (result->u64 + a2 > v4 + 64)
  {
    do
    {
      __asm { DC              ZVA, X3 }

      v4 += 64;
      v10 = v5 > 0x40;
      v5 -= 64;
    }

    while (v10);
  }

  v11 = (v4 + v5);
  *v11 = v3;
  v11[1] = v3;
  v11[2] = v3;
  v11[3] = v3;
  return result;
}

int64x2_t *_platform_memset(int64x2_t *result, unsigned __int8 a2, unint64_t a3)
{
  v3 = 0x101010101010101 * a2;
  v4 = vdupq_n_s64(v3);
  v5 = result;
  if (a3 < 0x40)
  {
    while (1)
    {
      v15 = a3 >= 8;
      a3 -= 8;
      if (!v15)
      {
        break;
      }

      *v5++ = v3;
    }

    for (i = a3 + 8; i; --i)
    {
      *v5 = v3;
      v5 = (v5 + 1);
    }
  }

  else if (a3 < 0x8000)
  {
    *result = v4;
    result[1] = v4;
    result[2] = v4;
    result[3] = v4;
    v11 = (&result[4] & 0xFFFFFFFFFFFFFFC0);
    v12 = result->u64 + a3;
    v8 = v12 > (v11 + 4);
    for (j = v12 - (v11 + 4); v8; j -= 64)
    {
      *v11 = v4;
      v11[1] = v4;
      v11[2] = v4;
      v11[3] = v4;
      v11 += 4;
      v8 = j > 0x40;
    }

    v14 = (v11 + j);
    *v14 = v4;
    v14[1] = v4;
    v14[2] = v4;
    v14[3] = v4;
  }

  else
  {
    if (!v3)
    {
      JUMPOUT(0x299E42BC0);
    }

    *result = v4;
    result[1] = v4;
    result[2] = v4;
    result[3] = v4;
    v6 = (&result[4] & 0xFFFFFFFFFFFFFFC0);
    v7 = result->u64 + a3;
    v8 = v7 > (v6 + 4);
    for (k = v7 - (v6 + 4); v8; k -= 64)
    {
      *v6 = v4;
      v6[1] = v4;
      v6[2] = v4;
      v6[3] = v4;
      v6 += 4;
      v8 = k > 0x40;
    }

    v10 = (v6 + k);
    *v10 = v4;
    v10[1] = v4;
    v10[2] = v4;
    v10[3] = v4;
  }

  return result;
}

unint64_t _platform_strnlen(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    return _platform_strlen(a1);
  }

  if (!a2)
  {
    return 0;
  }

  v3 = a1 & 0xFFFFFFFFFFFFFFF0;
  v4 = &algn_299E42CF0[-(a1 & 0xF)];
  v5 = *v4;
  v6 = vorrq_s8(*(a1 & 0xFFFFFFFFFFFFFFF0), *v4);
  v7 = a2 + (a1 & 0xF);
  while (1)
  {
    v5.i8[0] = vminvq_u8(v6);
    if (!v5.i32[0])
    {
      break;
    }

    v9 = v7 > 0x10;
    v7 -= 16;
    if (!v9)
    {
      return v3 - a1 + v7 + 16;
    }

    v8 = *(v3 + 16);
    v3 += 16;
    v6 = v8;
  }

  v10 = veorq_s8(v5, v5);
  v10.i8[0] = vminvq_u8(vorrq_s8(vcgtq_u8(v6, v10), xmmword_299E42CE0));
  v11 = v3 - a1;
  if (v7 >= v10.u32[0])
  {
    v7 = v10.u32[0];
  }

  return v11 + v7;
}

unint64_t _platform_strlen(uint64_t a1)
{
  v1 = a1 & 0xFFFFFFFFFFFFFFF0;
  v2 = &algn_299E42CF0[-(a1 & 0xF)];
  v3 = *v2;
  for (i = vorrq_s8(*(a1 & 0xFFFFFFFFFFFFFFF0), *v2); ; i = v5)
  {
    v3.i8[0] = vminvq_u8(i);
    if (!v3.i32[0])
    {
      break;
    }

    v5 = *(v1 + 16);
    v1 += 16;
  }

  v6 = veorq_s8(v3, v3);
  v6.i8[0] = vminvq_u8(vorrq_s8(vcgtq_u8(i, v6), xmmword_299E42CE0));
  return v1 - a1 + v6.u32[0];
}

BOOL os_unfair_recursive_lock_tryunlock4objc(atomic_uint *a1)
{
  v1 = *a1 | 1;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  if (v1 == v2)
  {
    v3 = a1[1];
    if (v3)
    {
      if ((*a1 | 1) != v1)
      {
        _os_unfair_lock_unowned_abort(*a1 | 1);
      }

      a1[1] = v3 - 1;
    }

    else
    {
      os_unfair_recursive_lock_tryunlock4objc_cold_1(a1, v1);
    }
  }

  return v1 == v2;
}

atomic_uint *os_unfair_recursive_lock_tryunlock4objc_cold_1(atomic_uint *result, int a2)
{
  v2 = atomic_exchange_explicit(result, 0, memory_order_release);
  if (v2 != a2)
  {
    return _os_unfair_lock_unlock_slow(result, a2, v2);
  }

  return result;
}

unint64_t _platform_memcmp(unint64_t *a1, unint64_t *a2, unint64_t a3)
{
  v3 = a3 >= 0x10;
  v4 = a3 - 16;
  if (!v3)
  {
    v3 = __CFADD__(v4, 8);
    v17 = v4 + 8;
    if (v3)
    {
      v19 = *a1++;
      v18 = v19;
      v21 = *a2++;
      v20 = v21;
      v22 = v18 - v21;
      if (v18 != v21)
      {
        goto LABEL_18;
      }

      v17 -= 8;
    }

    v3 = __CFADD__(v17, 4);
    v23 = v17 + 4;
    if (!v3)
    {
      v23 += 4;
      v22 = 0;
      goto LABEL_20;
    }

    v24 = *a1;
    a1 = (a1 + 4);
    v18 = v24;
    v25 = *a2;
    a2 = (a2 + 4);
    v20 = v25;
    v22 = v18 - v25;
    if (v18 == v25)
    {
      do
      {
LABEL_20:
        v3 = v23-- != 0;
        if (!v3)
        {
          break;
        }

        v28 = *a1;
        a1 = (a1 + 1);
        v27 = v28;
        v29 = *a2;
        a2 = (a2 + 1);
        v22 = v27 - v29;
      }

      while (v27 == v29);
      return v22;
    }

LABEL_18:
    v26 = __clz(bswap64(v22)) & 0xFFFFFFFFFFFFFFF8;
    return (v18 >> v26) - (v20 >> v26);
  }

  if (v4)
  {
    v5 = (a1 + v4);
    v6 = (a2 + v4);
    while (1)
    {
      v7 = *a1;
      a1 += 2;
      v8 = v7;
      v9 = *a2;
      a2 += 2;
      v10 = vceqq_s8(v8, v9);
      v8.i8[0] = vminvq_u8(v10);
      if (!v8.i32[0])
      {
        break;
      }

      v11 = v4 > 0x10;
      v4 -= 16;
      if (!v11)
      {
        a1 = v5;
        a2 = v6;
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v12 = *a1;
    a1 += 2;
    v13 = v12;
    v14 = *a2;
    a2 += 2;
    v10 = vceqq_s8(v13, v14);
    v13.i8[0] = vminvq_u8(v10);
    if (v13.i32[0])
    {
      return 0;
    }
  }

  v16 = vorrq_s8(v10, xmmword_299E42EA0);
  v16.i8[0] = vminvq_u8(v16);
  return *(a1 + v16.u32[0] - 16) - *(a2 + v16.u32[0] - 16);
}

unint64_t _platform_strcmp_VARIANT_Base(int8x16_t *a1, int8x16_t *a2)
{
  while ((a1 & 0xF) != 0)
  {
    v3 = a1->u8[0];
    a1 = (a1 + 1);
    v2 = v3;
    v4 = a2->u8[0];
    a2 = (a2 + 1);
    v5 = v2 - v4;
    if (v2 != v4 || v2 == 0)
    {
      return v5;
    }
  }

  if ((a2 & 0xF) != 0)
  {
    v8 = -a2 & 0xFF0;
    if (!v8)
    {
      goto LABEL_12;
    }

LABEL_10:
    while (1)
    {
      v9 = *a1++;
      v10 = v9;
      v11 = *a2++;
      v13 = vceqq_s8(v10, v11);
      v12 = vandq_s8(v10, v13);
      v13.i8[0] = vminvq_u8(v12);
      if (!v13.i32[0])
      {
        break;
      }

      v8 -= 16;
      if (!v8)
      {
LABEL_12:
        while (1)
        {
          v15 = a1->u8[0];
          a1 = (a1 + 1);
          v14 = v15;
          v16 = a2->u8[0];
          a2 = (a2 + 1);
          v5 = v14 - v16;
          if (v14 != v16 || v14 == 0)
          {
            return v5;
          }

          if ((a1 & 0xF) == 0)
          {
            v8 = 4080;
            goto LABEL_10;
          }
        }
      }
    }
  }

  else
  {
    do
    {
      v18 = *a1++;
      v19 = v18;
      v20 = *a2++;
      v13 = vceqq_s8(v19, v20);
      v12 = vandq_s8(v19, v13);
      v13.i8[0] = vminvq_u8(v12);
    }

    while (v13.i32[0]);
  }

  v21 = vorrq_s8(vcgtq_u8(v12, veorq_s8(v13, v13)), xmmword_299E42FE0);
  v21.i8[0] = vminvq_u8(v21);
  return a1[-1].u8[v21.u32[0]] - a2[-1].u8[v21.u32[0]];
}

unint64_t _platform_strncmp_VARIANT_Base(int8x16_t *a1, int8x16_t *a2, unint64_t a3)
{
  v3 = 0;
  if (!a3)
  {
    return v3;
  }

  while ((a1 & 0xF) != 0)
  {
    v5 = a1->u8[0];
    a1 = (a1 + 1);
    v4 = v5;
    v6 = a2->u8[0];
    a2 = (a2 + 1);
    v3 = v4 - v6;
    if (v4 == v6 && v4 != 0)
    {
      if (--a3)
      {
        continue;
      }
    }

    return v3;
  }

  if ((a2 & 0xF) == 0)
  {
    goto LABEL_30;
  }

  v9 = -a2 & 0xFF0;
  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_11:
  if (a3 > v9)
  {
    v10 = a3 - v9;
    while (1)
    {
      v11 = *a1++;
      v12 = v11;
      v13 = *a2++;
      v15 = vceqq_s8(v12, v13);
      v14 = vandq_s8(v12, v15);
      v15.i8[0] = vminvq_u8(v14);
      if (!v15.i32[0])
      {
        break;
      }

      v9 -= 16;
      if (!v9)
      {
        a3 = v10;
LABEL_16:
        while (1)
        {
          v17 = a1->u8[0];
          a1 = (a1 + 1);
          v16 = v17;
          v18 = a2->u8[0];
          a2 = (a2 + 1);
          v3 = v16 - v18;
          if (v16 != v18 || v16 == 0)
          {
            return v3;
          }

          if (!--a3)
          {
            return v3;
          }

          if ((a1 & 0xF) == 0)
          {
            v9 = 4080;
            goto LABEL_11;
          }
        }
      }
    }
  }

  else
  {
LABEL_30:
    while (1)
    {
      v20 = *a1++;
      v21 = v20;
      v22 = *a2++;
      v15 = vceqq_s8(v21, v22);
      v14 = vandq_s8(v21, v15);
      v15.i8[0] = vminvq_u8(v14);
      if (!v15.i32[0])
      {
        break;
      }

      v23 = a3 > 0x10;
      a3 -= 16;
      if (!v23)
      {
        return 0;
      }
    }
  }

  v24 = vorrq_s8(vcgtq_u8(v14, veorq_s8(v15, v15)), xmmword_299E430E0);
  v24.i8[0] = vminvq_u8(v24);
  if (v24.u32[0] >= a3)
  {
    return 0;
  }

  else
  {
    return a1[-1].u8[v24.u32[0]] - a2[-1].u8[v24.u32[0]];
  }
}

unint64_t _platform_strlcpy(char *a1, char *a2, unint64_t a3)
{
  v6 = _platform_strlen(a2);
  v7 = v6;
  if (v6 >= a3)
  {
    if (a3)
    {
      v8 = a3 - 1;
      _platform_memmove(a1, a2, v8);
      a1[v8] = 0;
    }
  }

  else
  {
    _platform_memmove(a1, a2, v6 + 1);
  }

  return v7;
}

char *_platform_strcpy(char *a1, char *a2)
{
  v4 = _platform_strlen(a2);
  _platform_memmove(a1, a2, v4 + 1);
  return a1;
}

unint64_t _platform_strlcat(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = _platform_strlen(a2);
  v7 = _platform_strnlen(a1, a3);
  v8 = a3 - v7;
  if (a3 == v7)
  {
    return v6 + a3;
  }

  v10 = v7;
  if (v6 >= v8)
  {
    _platform_memmove((a1 + v7), a2, v8 - 1);
    *(a1 + a3 - 1) = 0;
  }

  else
  {
    _platform_memmove((a1 + v7), a2, v6 + 1);
  }

  return v10 + v6;
}

void os_apt_msg_async_task_running_4swift_dev(uint64_t a1)
{
  if (MEMORY[0xFFFFFC341])
  {
    _WriteStatusReg(ARM64_SYSREG(3, 5, 15, 1, 4), ((a1 & 1) << 30) | 0x1010101);
    _WriteStatusReg(ARM64_SYSREG(3, 5, 15, 1, 4), a1 & 0xFFFFFFFFFFFFFFFELL);
  }
}

void _platform_memset_pattern4(uint64_t a1, const float *a2, unint64_t a3)
{
  vld1q_dup_f32(a2);
  if (a3 >= 0x40)
  {
    if (a3 >= 0x8000)
    {
      JUMPOUT(0x299E433D4);
    }

    JUMPOUT(0x299E43450);
  }

  JUMPOUT(0x299E434D0);
}

void _platform_memset_pattern8(uint64_t a1, const double *a2, unint64_t a3)
{
  vld1q_dup_f64(a2);
  if (a3 >= 0x40)
  {
    if (a3 >= 0x8000)
    {
      JUMPOUT(0x299E433D4);
    }

    JUMPOUT(0x299E43450);
  }

  JUMPOUT(0x299E434D0);
}

int8x16_t *_platform_memset_pattern16(int8x16_t *result, int8x16_t *a2, unint64_t a3)
{
  v3 = *a2;
  if (a3 < 0x40)
  {
    while (1)
    {
      v16 = a3 >= 0x10;
      a3 -= 16;
      if (!v16)
      {
        break;
      }

      *result++ = v3;
    }

    v17 = a3 + 16;
    if (v17)
    {
      v19 = v3.u64[1];
      v18 = v3.i64[0];
      do
      {
        result->i8[0] = v18;
        result = (result + 1);
        v18 = (v18 >> 8) | (v19 << 56);
        v19 >>= 8;
        --v17;
      }

      while (v17);
    }
  }

  else
  {
    if (a3 < 0x8000)
    {
      v13 = *a2;
      *result = v3;
      result[1] = v3;
      result[2] = v3;
      result[3] = v3;
      v5 = (&result[4] & 0xFFFFFFFFFFFFFFC0);
      v14 = result->u64 + a3;
      v7 = v14 > (v5 + 4);
      v8 = v14 - (v5 + 4);
      v9 = (v5 - result) & 0xF;
      if (v7)
      {
        v15 = vqtbl1q_s8(v3, *(qword_299E43520 + v9));
        do
        {
          *v5 = v15;
          v5[1] = v15;
          v5[2] = v15;
          v5[3] = v15;
          v5 += 4;
          v7 = v8 > 0x40;
          v8 -= 64;
        }

        while (v7);
      }
    }

    else
    {
      v4 = *a2;
      *result = v3;
      result[1] = v3;
      result[2] = v3;
      result[3] = v3;
      v5 = (&result[4] & 0xFFFFFFFFFFFFFFC0);
      v6 = result->u64 + a3;
      v7 = v6 > (v5 + 4);
      v8 = v6 - (v5 + 4);
      v9 = (v5 - result) & 0xF;
      if (v7)
      {
        v10 = vqtbl1q_s8(v3, *(qword_299E43520 + v9));
        do
        {
          *v5 = v10;
          v5[1] = v10;
          v5[2] = v10;
          v5[3] = v10;
          v5 += 4;
          v7 = v8 > 0x40;
          v8 -= 64;
        }

        while (v7);
      }
    }

    v11 = vqtbl1q_s8(v3, *(qword_299E43520 + ((v9 + v8) & 0xF)));
    v12 = (v5 + v8);
    *v12 = v11;
    v12[1] = v11;
    v12[2] = v11;
    v12[3] = v11;
  }

  return result;
}

uint64_t _os_unfair_lock_unlock_slow(uint64_t a1, int a2, unsigned int a3)
{
  result = a3 | 1;
  if (result != a2)
  {
    _os_unfair_lock_unowned_abort(result);
  }

  if (a3)
  {
    qword_2A14EFF58 = "BUG IN LIBPLATFORM: unlock_slow with no waiters";
    qword_2A14EFF88 = a3;
    __break(0xB001u);
LABEL_9:
    qword_2A14EFF58 = "BUG IN LIBPLATFORM: ulock_wake failure";
    qword_2A14EFF88 = -result;
    __break(0xB001u);
  }

  else
  {
    while (1)
    {
      result = __ulock_wake();
      if ((result & 0x80000000) == 0)
      {
        break;
      }

      if (result != -4)
      {
        if (result != -2)
        {
          goto LABEL_9;
        }

        return result;
      }
    }
  }

  return result;
}

void os_unfair_lock_unlock(os_unfair_lock_t lock)
{
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v2 = atomic_exchange_explicit(lock, 0, memory_order_release);
  if (v2 != v1)
  {
    _os_unfair_lock_unlock_slow(lock, v1, v2);
  }
}

atomic_uint *os_unfair_lock_lock_with_options(atomic_uint *result, int a2)
{
  v2 = 0;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  atomic_compare_exchange_strong_explicit(result, &v2, v3, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    return _os_unfair_lock_lock_slow(result, a2, 0, v3);
  }

  return result;
}

void os_unfair_lock_lock(os_unfair_lock_t lock)
{
  v1 = 0;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  atomic_compare_exchange_strong_explicit(lock, &v1, v2, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    _os_unfair_lock_lock_slow(lock, 0, 0, v2);
  }
}

uint64_t _os_unfair_lock_lock_slow(atomic_uint *a1, int a2, uint64_t a3, unsigned int a4)
{
  if ((a2 & 0xFCFAFFFF) != 0)
  {
    qword_2A14EFF58 = "BUG IN CLIENT OF LIBPLATFORM: Invalid options";
    qword_2A14EFF88 = a2 & 0xFEFFFFFF;
    __break(0xB001u);
LABEL_29:
    _os_unfair_lock_recursive_abort(v4);
  }

  v4 = a4;
  v7 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        do
        {
          v8 = *a1;
          if (!*a1)
          {
            atomic_compare_exchange_strong_explicit(a1, &v8, v4 & ~v7, memory_order_acquire, memory_order_acquire);
            if (!v8)
            {
              return 1;
            }
          }

          v9 = v8 | 1;
          v10 = (a2 & 0x1000000) != 0 && v9 == -1;
          v11 = !v10;
          if (v9 == v4 && v11 != 0)
          {
            goto LABEL_29;
          }

          if (v8 == (v8 & 0xFFFFFFFE))
          {
            break;
          }

          v13 = v8;
          atomic_compare_exchange_strong_explicit(a1, &v13, v8 & 0xFFFFFFFE, memory_order_relaxed, memory_order_relaxed);
          v10 = v13 == v8;
          v8 &= ~1u;
        }

        while (!v10);
        v14 = __ulock_wait2();
        if (v14 < 0)
        {
          break;
        }

        if (v14)
        {
          v7 = 1;
        }
      }

      if (v14 <= -5)
      {
        break;
      }

      if (v14 != -4)
      {
        goto LABEL_34;
      }
    }
  }

  while (v14 == -14);
  if (v14 != -60)
  {
    if (v14 == -105)
    {
      _os_unfair_lock_corruption_abort(v8);
    }

LABEL_34:
    qword_2A14EFF58 = "BUG IN LIBPLATFORM: ulock_wait2 failure";
    qword_2A14EFF88 = -v14;
    __break(0xB001u);
    JUMPOUT(0x299E437C8);
  }

  return 0;
}

unsigned __int8 *_platform_strchr(uint64_t a1, unsigned __int8 a2)
{
  v2 = vdupq_n_s8(a2);
  v3 = a1 & 0xF;
  v4 = a1 & 0xFFFFFFFFFFFFFFF0;
  v5 = *&algn_299E437F0[-v3];
  for (i = vorrq_s8(vbicq_s8(*v4, vceqq_s8(*v4, v2)), v5); ; i = vbicq_s8(v7, v5))
  {
    v5.i8[0] = vminvq_u8(i);
    if (!v5.i32[0])
    {
      break;
    }

    v7 = *(v4 + 16);
    v4 += 16;
    v5 = vceqq_s8(v7, v2);
  }

  v8 = vorrq_s8(vcgtq_u8(i, veorq_s8(v5, v5)), xmmword_299E437E0);
  v8.i8[0] = vminvq_u8(v8);
  result = (v4 + v8.u32[0]);
  if (a2 != *result)
  {
    return 0;
  }

  return result;
}

unint64_t _platform_memchr(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  if (a3 < 0)
  {
    v13 = vdupq_n_s8(a2);
    v14 = a1 & 0xF;
    v15 = a1 & 0xFFFFFFFFFFFFFFF0;
    v16 = *&algn_299E43890[-v14];
    for (i = vorrq_s8(vsubq_s8(*v15, v13), v16); ; i = vsubq_s8(v18, v13))
    {
      v16.i8[0] = vminvq_u8(i);
      if (!v16.i32[0])
      {
        break;
      }

      v18 = *(v15 + 16);
      v15 += 16;
    }

    v19 = vorrq_s8(vcgtq_u8(i, veorq_s8(v13, v13)), xmmword_299E43880);
    v19.i8[0] = vminvq_u8(v19);
    return v15 + v19.u32[0];
  }

  else
  {
    v3 = vdupq_n_s8(a2);
    v4 = a1 & 0xF;
    v5 = a1 & 0xFFFFFFFFFFFFFFF0;
    v6 = *&algn_299E43890[-v4];
    v7 = vorrq_s8(vsubq_s8(*v5, v3), v6);
    v8 = a3 + v4;
    while (1)
    {
      v6.i8[0] = vminvq_u8(v7);
      if (!v6.i32[0])
      {
        break;
      }

      v10 = v8 > 0x10;
      v8 -= 16;
      if (!v10)
      {
        return 0;
      }

      v9 = *(v5 + 16);
      v5 += 16;
      v7 = vsubq_s8(v9, v3);
    }

    v12 = vorrq_s8(vcgtq_u8(v7, veorq_s8(v3, v3)), xmmword_299E43880);
    v12.i8[0] = vminvq_u8(v12);
    result = v5 + v12.u32[0];
    if (v12.u32[0] >= v8)
    {
      return 0;
    }
  }

  return result;
}

atomic_ullong _os_alloc_once(atomic_ullong *a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a1;
  v5[1] = a2;
  v5[2] = a3;
  _os_once(a1, v5, _os_alloc);
  return a1[1];
}

uint64_t _simple_asl_init(uint64_t *a1, uint64_t a2)
{
  if (*(MEMORY[0x29EDCA698] + 336) == -1)
  {
    v4 = *(MEMORY[0x29EDCA698] + 344);
  }

  else
  {
    v4 = _os_alloc_once((MEMORY[0x29EDCA698] + 336), 32, _simple_asl_init_context);
  }

  result = _simple_getenv(a1, "ASL_DISABLE");
  if (!result || (result = _platform_strcmp_0(result, "1", v6, v7, v8, v9, v10, v11), result))
  {
    *v4 = 1;
    if (a2)
    {
      v12 = *(a2 + 32);
      if (v12)
      {
        *(v4 + 8) = *v12;
      }
    }
  }

  return result;
}

uint64_t _os_once_cold_1(atomic_ullong *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = 0;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  atomic_compare_exchange_strong_explicit(a1, &v3, v4, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    return _os_once_gate_wait(a1, a2, a3, v4);
  }

  else
  {
    return _os_once_callout(a1, a2, a3, v4);
  }
}

atomic_ullong *_os_once(atomic_ullong *result, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  explicit = atomic_load_explicit(result, memory_order_acquire);
  if ((explicit & 3) != 1)
  {
    return _os_once_cold_1(result, a2, a3);
  }

  if (4 * MEMORY[0xFFFFFC180] - explicit - 15 <= 0xFFFFFFFFFFFFFFEFLL)
  {
    *result = -1;
  }

  return result;
}

uint64_t _os_alloc(uint64_t a1)
{
  v1 = MEMORY[0x29EDCA6D0];
  v2 = (*(a1 + 8) + 15) & 0xFFFFFFF0;
  if (v2 - 1 >= 2 * *MEMORY[0x29EDCA6D0] - 16)
  {
    _os_alloc_cold_1((*(a1 + 8) + 15) & 0xFFFFFFF0);
  }

  v4 = _os_alloc_heap;
  if (_os_alloc_heap && (add_explicit = atomic_fetch_add_explicit(_os_alloc_heap, v2, memory_order_relaxed), add_explicit + v2 <= 2 * *v1 - 16))
  {
    result = v4 + add_explicit + 16;
  }

  else
  {
    result = _os_alloc_slow(v4, v2);
  }

  *(*a1 + 8) = result;
  v7 = *(a1 + 16);
  if (v7)
  {

    return v7();
  }

  return result;
}

atomic_uint *os_unfair_lock_lock_no_tsd(atomic_uint *result, int a2, unsigned int a3)
{
  v3 = 0;
  atomic_compare_exchange_strong_explicit(result, &v3, a3, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    return _os_unfair_lock_lock_slow(result, a2, 0, a3);
  }

  return result;
}

void os_apt_msg_async_task_waiting_on_4swift_dev(uint64_t a1)
{
  if (MEMORY[0xFFFFFC341])
  {
    _WriteStatusReg(ARM64_SYSREG(3, 5, 15, 1, 4), ((a1 & 1) << 30) | 0x1020101);
    _WriteStatusReg(ARM64_SYSREG(3, 5, 15, 1, 4), a1 & 0xFFFFFFFFFFFFFFFELL);
  }
}

uint64_t os_log_simple_type_from_asl(int a1)
{
  v1 = a1 & ~(a1 >> 31);
  if (v1 >= 7)
  {
    v1 = 7;
  }

  return os_log_simple_type_from_asl__level2ostype[v1];
}

uint64_t _os_log_simple_send(char *a1)
{
  if ((_simple_asl_get_fd() & 0x80000000) != 0)
  {
    return 9;
  }

  if ((MEMORY[0xFFFFFC105] & 4) != 0)
  {
    return 0;
  }

  v2 = _platform_strlen(*(a1 + 2)) + 1;
  v3 = *(a1 + 1);
  if (v3)
  {
    v4 = _platform_strlen(v3) + 1;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4 + v2 + 104;
  v7 = __CFADD__(v4, v2 + 104);
  result = 84;
  if (v2 < 0xFFFFFFFFFFFFFF98 && !v7)
  {
    if (v6 <= 0x800)
    {
      v9 = *a1;
      v10 = *(a1 + 24);
      v11 = *(a1 + 40);
      v12 = *(a1 + 56);
      _platform_memmove(v13, a1 + 72, 0x10uLL);
      _platform_memmove(v14, a1 + 88, 0x10uLL);
      _platform_memmove(v15, a1 + 104, 0x10uLL);
      _platform_strlcpy(v16, *(a1 + 2), v2);
      if (v4)
      {
        _platform_strlcpy(&v16[v2], *(a1 + 1), v4);
      }

      v8 = __sendto();
      if ((v8 & 0x8000000000000000) != 0)
      {
        return *__error();
      }

      else if (v8 >= v6)
      {
        return 0;
      }

      else
      {
        return 40;
      }
    }

    else
    {
      return 7;
    }
  }

  return result;
}

uint64_t _simple_asl_get_fd()
{
  if (*(MEMORY[0x29EDCA698] + 336) == -1)
  {
    v0 = *(MEMORY[0x29EDCA698] + 344);
  }

  else
  {
    v0 = _os_alloc_once((MEMORY[0x29EDCA698] + 336), 32, _simple_asl_init_context);
  }

  if (*v0 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v0 + 24) != -1)
  {
    _simple_asl_get_fd_cold_1((v0 + 24));
  }

  return *(v0 + 16);
}

atomic_uint *os_unfair_recursive_lock_lock_with_options(atomic_uint *result, int a2)
{
  v3 = 0;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  atomic_compare_exchange_strong_explicit(result, &v3, v2, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    if ((v3 | 1) == v2)
    {
      ++result[1];
    }

    else
    {
      return _os_unfair_lock_lock_slow(result, a2, 0, v2);
    }
  }

  return result;
}

atomic_uint *os_unfair_recursive_lock_unlock(atomic_uint *result)
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v3 = result[1];
  if (v3)
  {
    v5 = *result | 1;
    if (v5 != v2)
    {
      _os_unfair_lock_unowned_abort(v5);
    }

    result[1] = v3 - 1;
  }

  else
  {
    v4 = atomic_exchange_explicit(result, 0, memory_order_release);
    if (v4 != v2)
    {

      return _os_unfair_lock_unlock_slow(result, v2, v4);
    }
  }

  return result;
}

void os_unfair_lock_assert_not_owner(const os_unfair_lock *lock)
{
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  os_unfair_lock_opaque = lock->_os_unfair_lock_opaque;
  if ((os_unfair_lock_opaque | 1) == v1)
  {
    os_unfair_lock_assert_not_owner_cold_1(os_unfair_lock_opaque);
  }
}

void os_unfair_lock_assert_owner(const os_unfair_lock *lock)
{
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  os_unfair_lock_opaque = lock->_os_unfair_lock_opaque;
  if ((os_unfair_lock_opaque | 1) != v1)
  {
    os_unfair_lock_assert_owner_cold_1(os_unfair_lock_opaque);
  }
}

uint64_t _os_log_simple_parse(unsigned __int16 *a1, unint64_t a2, uint64_t a3)
{
  if (a2 < 0x68)
  {
    return 94;
  }

  v5 = *a1;
  v6 = a1[1];
  if (v5 + v6 + 104 > a2)
  {
    return 7;
  }

  v7 = *(a1 + 4);
  if (v7 > 0x10 || ((1 << v7) & 0x10007) == 0)
  {
    return 22;
  }

  *a3 = v7;
  if (v6)
  {
    v10 = a1 + v5 + 104;
    if (*(v10 + (v6 - 1)))
    {
      return 22;
    }
  }

  else
  {
    v10 = 0;
  }

  *(a3 + 8) = v10;
  if (v5)
  {
    if (!*(a1 + (v5 - 1) + 104))
    {
      v11 = *(a1 + 1);
      *(a3 + 16) = a1 + 52;
      *(a3 + 24) = v11;
      if (v11)
      {
        if (v11 <= mach_continuous_time())
        {
          v12 = *(a1 + 2);
          *(a3 + 32) = v12;
          *(a3 + 40) = *(a1 + 3);
          *(a3 + 48) = *(a1 + 4);
          *(a3 + 56) = *(a1 + 5);
          if (v12)
          {
            *(a3 + 64) = *(a1 + 6);
            _platform_memmove((a3 + 72), a1 + 56, 0x10uLL);
            _platform_memmove((a3 + 88), a1 + 72, 0x10uLL);
            _platform_memmove((a3 + 104), a1 + 88, 0x10uLL);
            return 0;
          }
        }
      }
    }
  }

  return 22;
}

_BYTE *_platform_strstr(_BYTE *a1, _BYTE *a2)
{
  v2 = a1;
  v3 = (a2 + 1);
  v4 = *a2;
  if (!*a2)
  {
    return a1;
  }

  v10 = _platform_strlen((a2 + 1));
  while (1)
  {
    v11 = *v2;
    if (!*v2)
    {
      break;
    }

    v12 = v2++;
    if (v11 == v4 && !_platform_strncmp_0(v2, v3, v10, v5, v6, v7, v8, v9))
    {
      return v12;
    }
  }

  return 0;
}

uint64_t _simple_getenv(uint64_t *a1, uint64_t a2)
{
  v4 = _platform_strlen(a2);
  if (!a1)
  {
    return 0;
  }

  v5 = v4;
  result = *a1;
  if (!*a1)
  {
    return result;
  }

  while (1)
  {
    if (_platform_strlen(result) >= v5)
    {
      v7 = *a1;
      if (v5)
      {
        v8 = v5;
        v9 = *a1;
        v10 = a2;
        while (*v9 == *v10)
        {
          ++v10;
          ++v9;
          if (!--v8)
          {
            goto LABEL_8;
          }
        }

        goto LABEL_9;
      }

LABEL_8:
      if (*(v7 + v5) == 61)
      {
        return v7 + v5 + 1;
      }
    }

LABEL_9:
    v11 = a1[1];
    ++a1;
    result = v11;
    if (!v11)
    {
      return result;
    }
  }
}

uint64_t __libplatform_init(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  __os_security_config_init(a3);
  __pfz_setup(a3);
  _simple_asl_init(a2, a4);

  return MEMORY[0x2A1C75D18](&_platform_string_functions);
}

_BYTE *__pfz_setup(uint64_t *a1)
{
  result = _simple_getenv(a1, "pfz");
  if (result)
  {
    if (*result == 48 && result[1] == 120)
    {
      v2 = result[2];
      if (v2)
      {
        v3 = 0;
        v4 = result + 3;
        while (1)
        {
          v5 = v2 - 48;
          if ((v2 - 48) >= 0xAu)
          {
            if ((v2 - 97) > 5u && (v2 - 65) > 5u)
            {
              break;
            }

            v5 = (v2 + 9) & 0x1F;
          }

          v3 = 16 * v3 + v5;
          v6 = *v4++;
          v2 = v6;
          if (!v6)
          {
            goto LABEL_13;
          }
        }
      }
    }

    v3 = 0;
LABEL_13:
    v7 = (result - 4);
    v8 = _platform_strlen(result);
    result = _platform_bzero(v7, v8 + 4, v9);
    if (v3)
    {
      commpage_pfz_base = v3;
    }
  }

  return result;
}

uint64_t _os_once_callout(atomic_ullong *a1, uint64_t a2, uint64_t (*a3)(uint64_t), int a4)
{
  result = a3(a2);
  v7 = atomic_exchange_explicit(a1, (4 * MEMORY[0xFFFFFC180]) | 1, memory_order_release);
  if (v7 != a4)
  {

    return _os_once_gate_broadcast(a1, v7, a4);
  }

  return result;
}

uint64_t __platform_sigaction(int a1, uint64_t *a2)
{
  if ((a1 - 32) < 0xFFFFFFE1 || a1 == 17 || a1 == 9)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  else
  {
    if (a2)
    {
      v5 = *a2;
      v6 = *(a2 + 2);
      v7 = *(a2 + 3) | 0x400;
    }

    return __sigaction();
  }
}

atomic_uint *os_unfair_lock_unlock_no_tsd(atomic_uint *result, int a2)
{
  v2 = atomic_exchange_explicit(result, 0, memory_order_release);
  if (v2 != a2)
  {
    return _os_unfair_lock_unlock_slow(result, a2, v2);
  }

  return result;
}

void *__cdecl OSAtomicDequeue(OSQueueHead *__list, size_t a2)
{
  if ((__list & 0xF) != 0)
  {
    return _OSAtomicDequeue_misalign(__list, a2);
  }

  explicit = atomic_load_explicit(__list, memory_order_acquire);
  if (explicit)
  {
    do
    {
      _X4 = *&explicit[a2];
      _X7 = __list->opaque2;
      __asm { CASPA           X6, X7, X4, X5, [X0] }

      v10 = _X6 == explicit;
      if (_X6 != explicit)
      {
        explicit = _X6;
      }
    }

    while (!v10 && explicit);
  }

  return explicit;
}

uint64_t _os_alloc_slow(atomic_ullong *a1, unint64_t a2)
{
  v4 = MEMORY[0x29EDCA6D0];
  v5 = MEMORY[0x29EDCA6B0];
  v6 = *MEMORY[0x29EDCA6D0];
  while (1)
  {
    address = v6;
    result = mach_vm_map(*v5, &address, 2 * v6, 0, 1224736769, 0, 0, 0, 3, 7, 1u);
    if (result)
    {
      break;
    }

    v8 = address;
    v9 = a1;
    atomic_compare_exchange_strong_explicit(&_os_alloc_heap, &v9, address, memory_order_relaxed, memory_order_relaxed);
    if (v9 == a1)
    {
      *(v8 + 8) = a1;
      a1 = v8;
LABEL_6:
      add_explicit = atomic_fetch_add_explicit(a1, a2, memory_order_relaxed);
      v6 = *v4;
      if (add_explicit + a2 <= 2 * *v4 - 16)
      {
        return a1 + add_explicit + 16;
      }
    }

    else
    {
      mach_vm_deallocate(*v5, v8, 2 * *v4);
      a1 = _os_alloc_heap;
      if (_os_alloc_heap)
      {
        goto LABEL_6;
      }

      v6 = *v4;
    }
  }

  qword_2A14EFF58 = "BUG IN LIBPLATFORM: Failed to allocate in os_alloc_once";
  qword_2A14EFF88 = result;
  __break(0xB001u);
  return result;
}

uint64_t _simple_asl_init_context(uint64_t result)
{
  *(result + 8) = "unknown";
  *(result + 16) = -1;
  return result;
}

unint64_t (*_platform_strncmp())(int8x16_t *a1, int8x16_t *a2, unint64_t a3)
{
  if ((__security_config & 4) != 0)
  {
    return _platform_strncmp_VARIANT_MTE;
  }

  else
  {
    return _platform_strncmp_VARIANT_Base;
  }
}

unint64_t (*_platform_strcmp())(int8x16_t *a1, int8x16_t *a2)
{
  if ((__security_config & 4) != 0)
  {
    return _platform_strcmp_VARIANT_MTE;
  }

  else
  {
    return _platform_strcmp_VARIANT_Base;
  }
}

void (*os_apt_msg_async_task_running_4swift())(uint64_t a1)
{
  v0 = os_apt_msg_async_task_running_4swift_dev;
  if ((MEMORY[0xFFFFFC340] & 1) == 0)
  {
    v0 = os_apt_msg_async_task_running_4swift_nop;
  }

  if ((MEMORY[0xFFFFFC340] & 2) != 0)
  {
    v0 = os_apt_msg_async_task_running_4swift_prodel0;
  }

  if ((~MEMORY[0xFFFFFC340] & 3) != 0)
  {
    return v0;
  }

  else
  {
    return os_apt_msg_async_task_running_4swift_dev_prodel0;
  }
}

uint64_t _os_unfair_lock_trylock_with_options_slow(atomic_uint *a1, int a2, uint64_t a3, unsigned int a4)
{
  if ((a2 & 0x2000000) == 0)
  {
    if (a3)
    {
      mach_timebase_info(&info);
      v8 = info.denom * a3 / info.numer;
      v9 = mach_absolute_time();
      return _os_unfair_lock_lock_slow(a1, a2 | 0x2000000u, v9 + v8, a4);
    }

    return 0;
  }

  if (mach_absolute_time() > a3)
  {
    return 0;
  }

  return _os_unfair_lock_lock_slow(a1, a2, a3, a4);
}

uint64_t os_unfair_lock_trylock_with_options(atomic_uint *a1, int a2, uint64_t a3)
{
  v3 = 0;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  atomic_compare_exchange_strong_explicit(a1, &v3, v4, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    return _os_unfair_lock_trylock_with_options_slow(a1, a2, a3, v4);
  }

  else
  {
    return 1;
  }
}

uint64_t __os_log_simple_offset(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, uint64_t a7, uint64_t a8)
{
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v17[0] = a6;
  v17[1] = a7;
  v17[2] = a8;
  v17[3] = mach_continuous_time();
  v13 = getpid();
  *&v18 = v13;
  if (proc_pidinfo(v13, 17, 0, buffer, 56) == 56)
  {
    *(&v18 + 1) = v25;
    *&v19 = v26;
    _platform_memmove(&v21 + 8, buffer, 0x10uLL);
  }

  *(&v19 + 1) = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 8);
  if (a1)
  {
    if (*(a1 + 24) >= 0)
    {
      v14 = a1;
    }

    else
    {
      v14 = a4;
    }

    *&v20 = a5 - v14;
    v15 = a2;
  }

  else
  {
    v15 = &v21 + 8;
  }

  _platform_memmove(&v20 + 8, v15, 0x10uLL);
  _platform_memmove(&v22 + 8, a3, 0x10uLL);
  return _os_log_simple_send(v17);
}

void OSAtomicEnqueue(OSQueueHead *__list, void *__new, size_t a3)
{
  _X4 = __new;
  if ((__list & 0xF) != 0)
  {
    _OSAtomicEnqueue_misalign(__list, __new, a3);
  }

  else
  {
    opaque1 = __list->opaque1;
    opaque2 = __list->opaque2;
    do
    {
      *(__new + a3) = opaque1;
      _X9 = opaque2;
      __asm { CASPL           X8, X9, X4, X5, [X0] }

      _ZF = _X8 == opaque1;
      opaque1 = _X8;
    }

    while (!_ZF);
  }
}

void (*os_apt_msg_async_task_waiting_on_4swift())(uint64_t a1)
{
  v0 = os_apt_msg_async_task_waiting_on_4swift_dev;
  if ((MEMORY[0xFFFFFC340] & 1) == 0)
  {
    v0 = os_apt_msg_async_task_waiting_on_4swift_nop;
  }

  if ((MEMORY[0xFFFFFC340] & 2) != 0)
  {
    v0 = os_apt_msg_async_task_waiting_on_4swift_prodel0;
  }

  if ((~MEMORY[0xFFFFFC340] & 3) != 0)
  {
    return v0;
  }

  else
  {
    return os_apt_msg_async_task_waiting_on_4swift_dev_prodel0;
  }
}

uint64_t _os_once_gate_wait(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t), unsigned int a4)
{
  v4 = *result;
  if (*result != -1)
  {
    v8 = result;
    v9 = a4;
    while ((v4 & 3) != 1)
    {
      if (v4)
      {
        if ((v4 & 0xFFFFFFFFFFFFFFFELL) == v4 || (v10 = v4, atomic_compare_exchange_strong_explicit(v8, &v10, v4 & 0xFFFFFFFFFFFFFFFELL, memory_order_relaxed, memory_order_relaxed), v10 == v4))
        {
          if ((v4 | 1) == a4)
          {
            _os_once_gate_recursive_abort(a4);
          }

          result = __ulock_wait();
          if ((result & 0x80000000) != 0 && result != -14 && result != -4)
          {
            if (result == -105)
            {
              _os_once_gate_corruption_abort(v4);
            }

            qword_2A14EFF58 = "BUG IN LIBPLATFORM: ulock_wait failure";
            qword_2A14EFF88 = -result;
            __break(0xB001u);
            return result;
          }

          v4 = *v8;
        }

        else
        {
          v4 = v10;
        }
      }

      else
      {
        v11 = 0;
        atomic_compare_exchange_strong_explicit(v8, &v11, v9, memory_order_relaxed, memory_order_relaxed);
        if (!v11)
        {
          __dmb(9u);

          return _os_once_callout(v8, a2, a3, a4);
        }

        v4 = v11;
      }

      if (v4 == -1)
      {
        return result;
      }
    }

    __dmb(9u);
    if ((4 * MEMORY[0xFFFFFC180] - v4 - 15) <= 0xFFFFFFFFFFFFFFEFLL)
    {
      *v8 = -1;
    }
  }

  return result;
}

unint64_t _OSAtomicDequeue_misalign(unint64_t *a1, uint64_t a2)
{
  while (1)
  {
    result = __ldaxr(a1);
    if (!result)
    {
      break;
    }

    if (!__stxr(*(result + a2), a1))
    {
      return result;
    }
  }

  __clrex();
  return result;
}

int _setjmp(jmp_buf a1)
{
  v21 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 56);
  *a1 = v1;
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 3) = v4;
  *(a1 + 4) = v5;
  *(a1 + 5) = v6;
  *(a1 + 6) = v7;
  *(a1 + 7) = v8;
  *(a1 + 8) = v9;
  *(a1 + 9) = v10;
  *(a1 + 10) = v11 ^ v21;
  *(a1 + 11) = v12 ^ v21;
  *(a1 + 12) = &v23 ^ v21;
  *(a1 + 14) = v13;
  *(a1 + 15) = v14;
  *(a1 + 16) = v15;
  *(a1 + 17) = v16;
  *(a1 + 18) = v17;
  *(a1 + 19) = v18;
  *(a1 + 20) = v19;
  *(a1 + 21) = v20;
  return 0;
}

void _longjmp(jmp_buf a1, int a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = *(a1 + 4);
  v7 = *(a1 + 5);
  v8 = *(a1 + 6);
  v9 = *(a1 + 7);
  v10 = *(a1 + 8);
  v11 = *(a1 + 9);
  v12 = *(a1 + 10);
  v13 = *(a1 + 11);
  v14 = *(a1 + 12);
  v15 = *(a1 + 14);
  v16 = *(a1 + 15);
  v17 = *(a1 + 16);
  v18 = *(a1 + 17);
  v19 = *(a1 + 18);
  v20 = *(a1 + 19);
  v21 = *(a1 + 20);
  v22 = *(a1 + 21);
  v23 = *(v14 ^ *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 56));
}

int sigsetjmp(sigjmp_buf a1, int a2)
{
  a1[46] = a2;
  if (a2)
  {
    return setjmp(a1);
  }

  else
  {
    return _setjmp(a1);
  }
}

int setjmp(jmp_buf a1)
{
  *a1 = v1;
  *(a1 + 1) = v2;
  sigprocmask(1, 0, a1 + 44);
  v4 = a1;
  v5 = *a1;

  return _setjmp(v4);
}

void siglongjmp(sigjmp_buf a1, int a2)
{
  if (!a1[46])
  {
    _longjmp(a1, a2);
  }

  longjmp(a1, a2);
}

void longjmp(jmp_buf a1, int a2)
{
  *v5 = *(a1 + 22);
  sigprocmask(3, v5, 0);
  v4 = *(a1 + 47);
  _sigunaltstack();
  _longjmp(a1, a2);
}

mach_vm_address_t *_os_log_simple(uint64_t a1, char *a2, char *a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, char *a7, uint64_t a8, const char *a9)
{
  result = _simple_salloc();
  if (result)
  {
    v18 = result;
    _simple_vesprintf(result, 0, a7, &a9);
    v19 = _simple_string(v18);
    __os_log_simple_offset(a1, a2, a3, a4, v9, a5, a6, v19);
    return _simple_sfree(v18);
  }

  return result;
}

void _simple_asl_connect_once()
{
  if (*(MEMORY[0x29EDCA698] + 336) == -1)
  {
    v0 = *(MEMORY[0x29EDCA698] + 344);
  }

  else
  {
    v0 = _os_alloc_once((MEMORY[0x29EDCA698] + 336), 32, _simple_asl_init_context);
  }

  if (*(v0 + 16) == -1)
  {
    *(v0 + 16) = _simple_asl_connect();
  }
}

mach_vm_address_t *_simple_asl_msg_new()
{
  v0 = _simple_salloc();
  v7 = v0;
  if (v0 && _simple_sprintf(v0, "         0", v1, v2, v3, v4, v5, v6, v9))
  {
    _simple_sfree(v7);
    return 0;
  }

  return v7;
}

vm_address_t _simple_salloc()
{
  v0 = MEMORY[0x29EDCA6D0];
  if (vm_allocate(*MEMORY[0x29EDCA6B0], &address, *MEMORY[0x29EDCA6D0], 1))
  {
    return 0;
  }

  v2 = address + 40;
  *address = address + 40;
  result = address;
  v3 = address + *v0 - 1;
  *(address + 8) = v2;
  *(result + 16) = v3;
  *(result + 32) = _enlarge;
  return result;
}

uint64_t _simple_asl_log(int a1, uint64_t a2, uint64_t a3)
{
  if (*(MEMORY[0x29EDCA698] + 336) != -1)
  {
    _simple_asl_log_cold_1();
  }

  v6 = os_log_simple_type_from_asl(a1);

  return _os_log_simple_shim(v6, a2, a3);
}

uint64_t _simple_asl_connect()
{
  v0 = socket(1, 2, 0);
  v1 = v0;
  if (v0 != -1)
  {
    fcntl(v0, 2, 1);
    v5.sa_family = 1;
    v2 = _platform_strlen("/var/run/syslog");
    if (v2 + 1 < 0x68)
    {
      v3 = v2 + 1;
    }

    else
    {
      v3 = 104;
    }

    _platform_memmove(v5.sa_data, "/var/run/syslog", v3);
    if (connect(v1, &v5, 0x6Au) == -1)
    {
      close(v1);
      return 0xFFFFFFFFLL;
    }
  }

  return v1;
}

uint64_t _os_once_gate_broadcast(uint64_t a1, unsigned int a2, int a3)
{
  result = a2 | 1;
  if (result != a3)
  {
    _os_once_gate_unowned_abort(result);
  }

  if (a2)
  {
    qword_2A14EFF58 = "BUG IN LIBPLATFORM: unlock_slow with no waiters";
    qword_2A14EFF88 = a2;
    __break(0xB001u);
LABEL_9:
    qword_2A14EFF58 = "BUG IN LIBPLATFORM: ulock_wake failure";
    qword_2A14EFF88 = -result;
    __break(0xB001u);
  }

  else
  {
    while (1)
    {
      result = __ulock_wake();
      if ((result & 0x80000000) == 0)
      {
        break;
      }

      if (result != -4)
      {
        if (result != -2)
        {
          goto LABEL_9;
        }

        return result;
      }
    }
  }

  return result;
}

_BYTE *__simple_bprintf(_BYTE *result, uint64_t (*a2)(uint64_t), char *a3, const char **a4)
{
  if (*a3)
  {
    v4 = a3;
    v6 = result;
    while (1)
    {
      result = _platform_strchr(v4, 0x25u);
      if (!result)
      {
        break;
      }

      v12 = result;
      v13 = result - v4;
      if (result - v4 >= 1)
      {
        do
        {
          v15 = *v4++;
          v14 = v15;
          if (a2 && (result = a2(v14)) != 0)
          {
            v16 = *result;
            if (*result)
            {
              v17 = result + 1;
              while (1)
              {
                v18 = *(v6 + 8);
                if (v18 < *(v6 + 16))
                {
                  goto LABEL_12;
                }

                result = (*(v6 + 32))(v6);
                if (result)
                {
                  break;
                }

LABEL_13:
                v19 = *v17++;
                v16 = v19;
                if (!v19)
                {
                  goto LABEL_19;
                }
              }

              v18 = *(v6 + 8);
LABEL_12:
              *(v6 + 8) = v18 + 1;
              *v18 = v16;
              goto LABEL_13;
            }
          }

          else
          {
            v20 = *(v6 + 8);
            if (v20 < *(v6 + 16))
            {
              goto LABEL_18;
            }

            result = (*(v6 + 32))(v6);
            if (result)
            {
              v20 = *(v6 + 8);
LABEL_18:
              *(v6 + 8) = v20 + 1;
              *v20 = v14;
            }
          }

LABEL_19:
          v21 = v13-- <= 1;
        }

        while (!v21);
      }

      v22 = v12 + 1;
      if (v12[1] != 37)
      {
        result = _platform_strncmp_0((v12 + 1), ".*s", 3, v7, v8, v9, v10, v11);
        if (result)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          while (1)
          {
            v35 = *v22;
            if (v35 > 0x6B)
            {
              if (*v22 <= 0x6Eu)
              {
                if (v35 != 108)
                {
                  goto LABEL_169;
                }

                ++v32;
                ++v22;
                goto LABEL_38;
              }

              if (*v22 <= 0x74u)
              {
                if (v35 == 111)
                {
                  v89 = a4++;
                  if (v32)
                  {
                    v99 = *v89;
                  }

                  else
                  {
                    v90 = *v89;
                  }

                  result = oct(v6);
                  goto LABEL_193;
                }

                if (v35 != 112)
                {
                  if (v35 == 115)
                  {
                    v50 = a4++;
                    v51 = *v50;
                    if (v51)
                    {
                      v52 = v51;
                    }

                    else
                    {
                      v52 = "(null)";
                    }

                    result = _platform_strlen(v52);
                    v53 = v34 - result;
                    if (v34 - result >= 1)
                    {
                      if (v33)
                      {
                        v54 = 48;
                      }

                      else
                      {
                        v54 = 32;
                      }

                      do
                      {
                        if (a2 && (result = a2(v54)) != 0)
                        {
                          v55 = *result;
                          if (*result)
                          {
                            v56 = result + 1;
                            while (1)
                            {
                              v57 = *(v6 + 8);
                              if (v57 < *(v6 + 16))
                              {
                                goto LABEL_89;
                              }

                              result = (*(v6 + 32))(v6);
                              if (result)
                              {
                                break;
                              }

LABEL_90:
                              v58 = *v56++;
                              v55 = v58;
                              if (!v58)
                              {
                                goto LABEL_96;
                              }
                            }

                            v57 = *(v6 + 8);
LABEL_89:
                            *(v6 + 8) = v57 + 1;
                            *v57 = v55;
                            goto LABEL_90;
                          }
                        }

                        else
                        {
                          v59 = *(v6 + 8);
                          if (v59 < *(v6 + 16))
                          {
                            goto LABEL_95;
                          }

                          result = (*(v6 + 32))(v6);
                          if (result)
                          {
                            v59 = *(v6 + 8);
LABEL_95:
                            *(v6 + 8) = v59 + 1;
                            *v59 = v54;
                          }
                        }

LABEL_96:
                        v21 = v53-- <= 1;
                      }

                      while (!v21);
                    }

                    v60 = *v52;
                    if (*v52)
                    {
                      while (1)
                      {
                        if (a2 && (result = a2(v60)) != 0)
                        {
                          v61 = *result;
                          if (*result)
                          {
                            v62 = result + 1;
                            while (1)
                            {
                              v63 = *(v6 + 8);
                              if (v63 < *(v6 + 16))
                              {
                                goto LABEL_106;
                              }

                              result = (*(v6 + 32))(v6);
                              if (result)
                              {
                                break;
                              }

LABEL_107:
                              v64 = *v62++;
                              v61 = v64;
                              if (!v64)
                              {
                                goto LABEL_113;
                              }
                            }

                            v63 = *(v6 + 8);
LABEL_106:
                            *(v6 + 8) = v63 + 1;
                            *v63 = v61;
                            goto LABEL_107;
                          }
                        }

                        else
                        {
                          v65 = *(v6 + 8);
                          if (v65 < *(v6 + 16))
                          {
                            goto LABEL_112;
                          }

                          result = (*(v6 + 32))(v6);
                          if (result)
                          {
                            v65 = *(v6 + 8);
LABEL_112:
                            *(v6 + 8) = v65 + 1;
                            *v65 = v60;
                          }
                        }

LABEL_113:
                        v66 = *++v52;
                        v60 = v66;
                        if (!v66)
                        {
                          goto LABEL_193;
                        }
                      }
                    }

                    goto LABEL_193;
                  }

LABEL_169:
                  if (!a2 || (result = a2(*v22)) == 0)
                  {
                    v101 = *(v6 + 8);
                    if (v101 >= *(v6 + 16))
                    {
                      result = (*(v6 + 32))(v6);
                      if (!result)
                      {
                        goto LABEL_193;
                      }

                      v101 = *(v6 + 8);
                    }

                    *(v6 + 8) = v101 + 1;
                    *v101 = v35;
                    goto LABEL_193;
                  }

                  v95 = *result;
                  if (*result)
                  {
                    v96 = result + 1;
                    while (1)
                    {
                      v97 = *(v6 + 8);
                      if (v97 < *(v6 + 16))
                      {
                        goto LABEL_176;
                      }

                      result = (*(v6 + 32))(v6);
                      if (result)
                      {
                        break;
                      }

LABEL_177:
                      v98 = *v96++;
                      v95 = v98;
                      if (!v98)
                      {
                        goto LABEL_193;
                      }
                    }

                    v97 = *(v6 + 8);
LABEL_176:
                    *(v6 + 8) = v97 + 1;
                    *v97 = v95;
                    goto LABEL_177;
                  }

LABEL_193:
                  v4 = (v22 + 1);
                  goto LABEL_194;
                }

                v93 = a4++;
                v94 = *v93;
                v88 = v6;
LABEL_168:
                result = hex(v88);
                goto LABEL_193;
              }

              if (v35 == 117)
              {
                v91 = a4++;
                if (v32)
                {
                  v92 = *v91;
                }

                else
                {
                  v92 = *v91;
                }

                result = udec(v6, a2, v92, v34, v33);
                goto LABEL_193;
              }

              if (v35 != 120)
              {
                if (v35 == 121)
                {
                  v79 = a4++;
                  if (v32)
                  {
                    v80 = *v79;
                  }

                  else
                  {
                    v80 = *v79;
                  }

                  result = ydec(v6, a2, v80, v34, v33);
                  goto LABEL_193;
                }

                goto LABEL_169;
              }

LABEL_157:
              v83 = a4++;
              if (v32)
              {
                v86 = *v83;
              }

              else
              {
                v84 = *v83;
              }

              v87 = *v22;
              v88 = v6;
              goto LABEL_168;
            }

            if (*v22 > 0x57u)
            {
              break;
            }

            if (v35 - 49 >= 9)
            {
              if (v35 != 48)
              {
                goto LABEL_169;
              }

              ++v33;
              v38 = *++v22;
              v35 = v38;
            }

            if (v35 - 48 <= 9)
            {
              do
              {
                v36 = v35 - 48;
                v37 = *++v22;
                LOBYTE(v35) = v37;
                v34 = 10 * v34 + v36;
              }

              while ((v37 - 48) < 0xA);
            }

LABEL_38:
            result = _platform_strncmp_0(v22, ".*s", 3, v27, v28, v29, v30, v31);
            if (!result)
            {
              goto LABEL_52;
            }
          }

          if (*v22 > 0x63u)
          {
            if (v35 == 100 || v35 == 105)
            {
              v81 = a4++;
              if (v32)
              {
                v85 = *v81;
              }

              else
              {
                v82 = *v81;
              }

              result = dec(v6);
              goto LABEL_193;
            }

            goto LABEL_169;
          }

          if (v35 == 88)
          {
            goto LABEL_157;
          }

          if (v35 != 99)
          {
            goto LABEL_169;
          }

          if (v34 >= 2)
          {
            if (v33)
            {
              v67 = 48;
            }

            else
            {
              v67 = 32;
            }

            do
            {
              if (a2 && (result = a2(v67)) != 0)
              {
                v68 = *result;
                if (*result)
                {
                  v69 = result + 1;
                  while (1)
                  {
                    v70 = *(v6 + 8);
                    if (v70 < *(v6 + 16))
                    {
                      goto LABEL_129;
                    }

                    result = (*(v6 + 32))(v6);
                    if (result)
                    {
                      break;
                    }

LABEL_130:
                    v71 = *v69++;
                    v68 = v71;
                    if (!v71)
                    {
                      goto LABEL_136;
                    }
                  }

                  v70 = *(v6 + 8);
LABEL_129:
                  *(v6 + 8) = v70 + 1;
                  *v70 = v68;
                  goto LABEL_130;
                }
              }

              else
              {
                v72 = *(v6 + 8);
                if (v72 < *(v6 + 16))
                {
                  goto LABEL_135;
                }

                result = (*(v6 + 32))(v6);
                if (result)
                {
                  v72 = *(v6 + 8);
LABEL_135:
                  *(v6 + 8) = v72 + 1;
                  *v72 = v67;
                }
              }

LABEL_136:
              v21 = v34-- <= 2;
            }

            while (!v21);
          }

          v73 = a4++;
          v74 = *v73;
          if (!a2 || (result = a2(*v73)) == 0)
          {
            v100 = *(v6 + 8);
            if (v100 >= *(v6 + 16))
            {
              result = (*(v6 + 32))(v6);
              if (!result)
              {
                goto LABEL_193;
              }

              v100 = *(v6 + 8);
            }

            *(v6 + 8) = v100 + 1;
            *v100 = v74;
            goto LABEL_193;
          }

          v75 = *result;
          if (!*result)
          {
            goto LABEL_193;
          }

          v76 = result + 1;
          while (1)
          {
            v77 = *(v6 + 8);
            if (v77 < *(v6 + 16))
            {
              goto LABEL_145;
            }

            result = (*(v6 + 32))(v6);
            if (result)
            {
              break;
            }

LABEL_146:
            v78 = *v76++;
            v75 = v78;
            if (!v78)
            {
              goto LABEL_193;
            }
          }

          v77 = *(v6 + 8);
LABEL_145:
          *(v6 + 8) = v77 + 1;
          *v77 = v75;
          goto LABEL_146;
        }

LABEL_52:
        v40 = a4;
        v41 = *a4;
        a4 += 2;
        if (v41 < 1)
        {
LABEL_70:
          v22 += 2;
          goto LABEL_193;
        }

        v42 = v40[1];
        while (1)
        {
          v44 = *v42++;
          v43 = v44;
          if (a2 && (result = a2(v43)) != 0)
          {
            v45 = *result;
            if (*result)
            {
              v46 = result + 1;
              while (1)
              {
                v47 = *(v6 + 8);
                if (v47 < *(v6 + 16))
                {
                  goto LABEL_61;
                }

                result = (*(v6 + 32))(v6);
                if (result)
                {
                  break;
                }

LABEL_62:
                v48 = *v46++;
                v45 = v48;
                if (!v48)
                {
                  goto LABEL_68;
                }
              }

              v47 = *(v6 + 8);
LABEL_61:
              *(v6 + 8) = v47 + 1;
              *v47 = v45;
              goto LABEL_62;
            }
          }

          else
          {
            v49 = *(v6 + 8);
            if (v49 < *(v6 + 16))
            {
              goto LABEL_67;
            }

            result = (*(v6 + 32))(v6);
            if (result)
            {
              v49 = *(v6 + 8);
LABEL_67:
              *(v6 + 8) = v49 + 1;
              *v49 = v43;
            }
          }

LABEL_68:
          v21 = v41-- <= 1;
          if (v21)
          {
            goto LABEL_70;
          }
        }
      }

      if (a2)
      {
        result = a2(37);
        if (result)
        {
          v23 = *result;
          if (*result)
          {
            v24 = result + 1;
            while (1)
            {
              v25 = *(v6 + 8);
              if (v25 < *(v6 + 16))
              {
                goto LABEL_29;
              }

              result = (*(v6 + 32))(v6);
              if (result)
              {
                break;
              }

LABEL_30:
              v26 = *v24++;
              v23 = v26;
              if (!v26)
              {
                goto LABEL_51;
              }
            }

            v25 = *(v6 + 8);
LABEL_29:
            *(v6 + 8) = v25 + 1;
            *v25 = v23;
            goto LABEL_30;
          }

          goto LABEL_51;
        }
      }

      v39 = *(v6 + 8);
      if (v39 < *(v6 + 16))
      {
        goto LABEL_50;
      }

      result = (*(v6 + 32))(v6);
      if (result)
      {
        v39 = *(v6 + 8);
LABEL_50:
        *(v6 + 8) = v39 + 1;
        *v39 = 37;
      }

LABEL_51:
      v4 = v12 + 2;
LABEL_194:
      if (!*v4)
      {
        return result;
      }
    }

    while (1)
    {
      v107 = *v4;
      if (!*v4)
      {
        return result;
      }

      if (a2 && (result = a2(*v4)) != 0)
      {
        v102 = *result;
        if (*result)
        {
          v103 = result + 1;
          while (1)
          {
            v104 = *(v6 + 8);
            if (v104 < *(v6 + 16))
            {
              goto LABEL_203;
            }

            result = (*(v6 + 32))(v6);
            if (result)
            {
              break;
            }

LABEL_204:
            v105 = *v103++;
            v102 = v105;
            if (!v105)
            {
              goto LABEL_210;
            }
          }

          v104 = *(v6 + 8);
LABEL_203:
          *(v6 + 8) = v104 + 1;
          *v104 = v102;
          goto LABEL_204;
        }
      }

      else
      {
        v106 = *(v6 + 8);
        if (v106 >= *(v6 + 16))
        {
          result = (*(v6 + 32))(v6);
          if (!result)
          {
            goto LABEL_210;
          }

          v106 = *(v6 + 8);
        }

        *(v6 + 8) = v106 + 1;
        *v106 = v107;
      }

LABEL_210:
      ++v4;
    }
  }

  return result;
}

std::ios_base *__cdecl dec(std::ios_base *__str)
{
  v5 = v1;
  v7 = (v2 >> 63) + v3;
  v8 = v2 >> 63;
  v39 = 0;
  if (v2)
  {
    v9 = &v39;
    if (v2 >= 0)
    {
      v10 = v2;
    }

    else
    {
      v10 = -v2;
    }

    do
    {
      *--v9 = (v10 % 0xA) | 0x30;
      v11 = v10 >= 0xA;
      v10 /= 0xAuLL;
    }

    while (v11);
    v12 = v4 != 0;
    if ((v2 & 0x8000000000000000) == 0 || !v4)
    {
      goto LABEL_24;
    }

    if (v1)
    {
      v13 = v1(45);
      if (v13)
      {
        LODWORD(v8) = *v13;
        if (*v13)
        {
          v14 = v13 + 1;
          while (1)
          {
            v15 = *&__str->__fmtflags_;
            if (v15 < __str->__precision_)
            {
              goto LABEL_15;
            }

            if ((*&__str->__rdstate_)(__str))
            {
              break;
            }

LABEL_16:
            v16 = *v14++;
            LODWORD(v8) = v16;
            if (!v16)
            {
              goto LABEL_23;
            }
          }

          v15 = *&__str->__fmtflags_;
LABEL_15:
          *&__str->__fmtflags_ = v15 + 1;
          *v15 = v8;
          goto LABEL_16;
        }

        goto LABEL_23;
      }
    }

    v17 = *&__str->__fmtflags_;
    if (v17 >= __str->__precision_)
    {
      if (!(*&__str->__rdstate_)(__str))
      {
        LODWORD(v8) = 0;
        goto LABEL_23;
      }

      v17 = *&__str->__fmtflags_;
    }

    LODWORD(v8) = 0;
    *&__str->__fmtflags_ = v17 + 1;
    *v17 = 45;
LABEL_23:
    v12 = 1;
    goto LABEL_24;
  }

  v9 = &v38;
  v38 = 48;
  v12 = v4 != 0;
LABEL_24:
  result = _platform_strlen(v9);
  v19 = v7 - result;
  if (v19 >= 1)
  {
    if (v12)
    {
      v20 = 48;
    }

    else
    {
      v20 = 32;
    }

    do
    {
      if (v5 && (result = v5(v20)) != 0)
      {
        v21 = result->__vftable;
        if (LOBYTE(result->__vftable))
        {
          v22 = &result->__vftable + 1;
          while (1)
          {
            v23 = *&__str->__fmtflags_;
            if (v23 < __str->__precision_)
            {
              goto LABEL_35;
            }

            result = (*&__str->__rdstate_)(__str);
            if (result)
            {
              break;
            }

LABEL_36:
            v24 = *v22++;
            v21 = v24;
            if (!v24)
            {
              goto LABEL_42;
            }
          }

          v23 = *&__str->__fmtflags_;
LABEL_35:
          *&__str->__fmtflags_ = v23 + 1;
          *v23 = v21;
          goto LABEL_36;
        }
      }

      else
      {
        v25 = *&__str->__fmtflags_;
        if (v25 < __str->__precision_)
        {
          goto LABEL_41;
        }

        result = (*&__str->__rdstate_)(__str);
        if (result)
        {
          v25 = *&__str->__fmtflags_;
LABEL_41:
          *&__str->__fmtflags_ = v25 + 1;
          *v25 = v20;
        }
      }

LABEL_42:
      ;
    }

    while (v19-- > 1);
  }

  if (!v8)
  {
    goto LABEL_74;
  }

  if (v5)
  {
    result = v5(45);
    if (result)
    {
      v27 = result->__vftable;
      if (!LOBYTE(result->__vftable))
      {
        goto LABEL_74;
      }

      v28 = &result->__vftable + 1;
      while (1)
      {
        v29 = *&__str->__fmtflags_;
        if (v29 < __str->__precision_)
        {
          goto LABEL_52;
        }

        result = (*&__str->__rdstate_)(__str);
        if (result)
        {
          break;
        }

LABEL_53:
        v30 = *v28++;
        v27 = v30;
        if (!v30)
        {
          goto LABEL_74;
        }
      }

      v29 = *&__str->__fmtflags_;
LABEL_52:
      *&__str->__fmtflags_ = v29 + 1;
      *v29 = v27;
      goto LABEL_53;
    }
  }

  v31 = *&__str->__fmtflags_;
  if (v31 >= __str->__precision_)
  {
    result = (*&__str->__rdstate_)(__str);
    if (!result)
    {
      goto LABEL_74;
    }

    v31 = *&__str->__fmtflags_;
  }

  *&__str->__fmtflags_ = v31 + 1;
  *v31 = 45;
LABEL_74:
  while (1)
  {
    v37 = *v9;
    if (!*v9)
    {
      return result;
    }

    if (v5 && (result = v5(*v9)) != 0)
    {
      v32 = result->__vftable;
      if (LOBYTE(result->__vftable))
      {
        v33 = &result->__vftable + 1;
        while (1)
        {
          v34 = *&__str->__fmtflags_;
          if (v34 < __str->__precision_)
          {
            goto LABEL_66;
          }

          result = (*&__str->__rdstate_)(__str);
          if (result)
          {
            break;
          }

LABEL_67:
          v35 = *v33++;
          v32 = v35;
          if (!v35)
          {
            goto LABEL_73;
          }
        }

        v34 = *&__str->__fmtflags_;
LABEL_66:
        *&__str->__fmtflags_ = v34 + 1;
        *v34 = v32;
        goto LABEL_67;
      }
    }

    else
    {
      v36 = *&__str->__fmtflags_;
      if (v36 >= __str->__precision_)
      {
        result = (*&__str->__rdstate_)(__str);
        if (!result)
        {
          goto LABEL_73;
        }

        v36 = *&__str->__fmtflags_;
      }

      *&__str->__fmtflags_ = v36 + 1;
      *v36 = v37;
    }

LABEL_73:
    ++v9;
  }
}

std::ios_base *__cdecl hex(std::ios_base *__str)
{
  v7 = v4;
  v8 = v3;
  v9 = v1;
  v11 = "0123456789ABCDEF";
  if (!v5)
  {
    v11 = "0123456789abcdef";
  }

  v46 = 0;
  if (v2)
  {
    v12 = &v46;
    do
    {
      *--v12 = v11[v2 & 0xF];
      v13 = v2 >= 0x10;
      v2 >>= 4;
    }

    while (v13);
    if (!v6)
    {
      goto LABEL_26;
    }

    goto LABEL_9;
  }

  v12 = &v45;
  v45 = 48;
  if (v6)
  {
LABEL_9:
    v8 = v3 - 2;
    if (!v4)
    {
      v22 = 0;
      goto LABEL_28;
    }

    v14 = 0;
    v15 = 48;
    do
    {
      if (v9 && (v16 = v9(v15)) != 0)
      {
        v17 = *v16;
        if (*v16)
        {
          v18 = v16 + 1;
          while (1)
          {
            v19 = *&__str->__fmtflags_;
            if (v19 < __str->__precision_)
            {
              goto LABEL_18;
            }

            if ((*&__str->__rdstate_)(__str))
            {
              break;
            }

LABEL_19:
            v20 = *v18++;
            v17 = v20;
            if (!v20)
            {
              goto LABEL_25;
            }
          }

          v19 = *&__str->__fmtflags_;
LABEL_18:
          *&__str->__fmtflags_ = v19 + 1;
          *v19 = v17;
          goto LABEL_19;
        }
      }

      else
      {
        v21 = *&__str->__fmtflags_;
        if (v21 < __str->__precision_)
        {
          goto LABEL_24;
        }

        if ((*&__str->__rdstate_)(__str))
        {
          v21 = *&__str->__fmtflags_;
LABEL_24:
          *&__str->__fmtflags_ = v21 + 1;
          *v21 = v15;
        }
      }

LABEL_25:
      v15 = _0x[++v14];
    }

    while (v14 != 2);
  }

LABEL_26:
  v22 = 1;
LABEL_28:
  result = _platform_strlen(v12);
  v24 = v8 - result;
  if (v24 >= 1)
  {
    if (v7)
    {
      v25 = 48;
    }

    else
    {
      v25 = 32;
    }

    do
    {
      if (v9 && (result = v9(v25)) != 0)
      {
        v26 = result->__vftable;
        if (LOBYTE(result->__vftable))
        {
          v27 = &result->__vftable + 1;
          while (1)
          {
            v28 = *&__str->__fmtflags_;
            if (v28 < __str->__precision_)
            {
              goto LABEL_39;
            }

            result = (*&__str->__rdstate_)(__str);
            if (result)
            {
              break;
            }

LABEL_40:
            v29 = *v27++;
            v26 = v29;
            if (!v29)
            {
              goto LABEL_46;
            }
          }

          v28 = *&__str->__fmtflags_;
LABEL_39:
          *&__str->__fmtflags_ = v28 + 1;
          *v28 = v26;
          goto LABEL_40;
        }
      }

      else
      {
        v30 = *&__str->__fmtflags_;
        if (v30 < __str->__precision_)
        {
          goto LABEL_45;
        }

        result = (*&__str->__rdstate_)(__str);
        if (result)
        {
          v30 = *&__str->__fmtflags_;
LABEL_45:
          *&__str->__fmtflags_ = v30 + 1;
          *v30 = v25;
        }
      }

LABEL_46:
      ;
    }

    while (v24-- > 1);
  }

  if (v22)
  {
    goto LABEL_81;
  }

  v32 = 0;
  v33 = 48;
  do
  {
    if (v9 && (result = v9(v33)) != 0)
    {
      v34 = result->__vftable;
      if (LOBYTE(result->__vftable))
      {
        v35 = &result->__vftable + 1;
        while (1)
        {
          v36 = *&__str->__fmtflags_;
          if (v36 < __str->__precision_)
          {
            goto LABEL_57;
          }

          result = (*&__str->__rdstate_)(__str);
          if (result)
          {
            break;
          }

LABEL_58:
          v37 = *v35++;
          v34 = v37;
          if (!v37)
          {
            goto LABEL_64;
          }
        }

        v36 = *&__str->__fmtflags_;
LABEL_57:
        *&__str->__fmtflags_ = v36 + 1;
        *v36 = v34;
        goto LABEL_58;
      }
    }

    else
    {
      v38 = *&__str->__fmtflags_;
      if (v38 >= __str->__precision_)
      {
        result = (*&__str->__rdstate_)(__str);
        if (!result)
        {
          goto LABEL_64;
        }

        v38 = *&__str->__fmtflags_;
      }

      *&__str->__fmtflags_ = v38 + 1;
      *v38 = v33;
    }

LABEL_64:
    v33 = _0x[++v32];
  }

  while (v32 != 2);
LABEL_81:
  while (1)
  {
    v44 = *v12;
    if (!*v12)
    {
      return result;
    }

    if (v9)
    {
      result = v9(*v12);
      if (result)
      {
        v39 = result->__vftable;
        if (!LOBYTE(result->__vftable))
        {
          goto LABEL_80;
        }

        v40 = &result->__vftable + 1;
        while (2)
        {
          v41 = *&__str->__fmtflags_;
          if (v41 < __str->__precision_)
          {
LABEL_73:
            *&__str->__fmtflags_ = v41 + 1;
            *v41 = v39;
          }

          else
          {
            result = (*&__str->__rdstate_)(__str);
            if (result)
            {
              v41 = *&__str->__fmtflags_;
              goto LABEL_73;
            }
          }

          v42 = *v40++;
          v39 = v42;
          if (!v42)
          {
            goto LABEL_80;
          }

          continue;
        }
      }
    }

    v43 = *&__str->__fmtflags_;
    if (v43 >= __str->__precision_)
    {
      result = (*&__str->__rdstate_)(__str);
      if (!result)
      {
        goto LABEL_80;
      }

      v43 = *&__str->__fmtflags_;
    }

    *&__str->__fmtflags_ = v43 + 1;
    *v43 = v44;
LABEL_80:
    ++v12;
  }
}

BOOL os_unfair_lock_trylock(os_unfair_lock_t lock)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit(lock, &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  return v1 == 0;
}

mach_vm_address_t *_simple_sfree(mach_vm_address_t *address)
{
  if (address)
  {
    v1 = address;
    v2 = MEMORY[0x29EDCA6D0];
    v3 = MEMORY[0x29EDCA6B0];
    if (((*MEMORY[0x29EDCA6D0] - 1) & *address) != 0)
    {
      v4 = address[2] - address + 1;
    }

    else
    {
      mach_vm_deallocate(*MEMORY[0x29EDCA6B0], *address, address[2] - *address + 1);
      v4 = *v2;
    }

    v5 = *v3;

    return mach_vm_deallocate(v5, v1, v4);
  }

  return address;
}

void _sigtramp(void (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __in_sigtramp = a3;
  a1(a3, a4, a5);
  __in_sigtramp = 0;
  __sigreturn();
  __break(1u);
}

void sys_icache_invalidate(void *start, size_t len)
{
  if (len)
  {
    v2 = start & 0xFFFFFFFFFFFFFFC0;
    v3 = ~((len + (start & 0x3F) - 1) >> 6);
    __dsb(0xBu);
    v4 = 20;
    v5 = 0;
    do
    {
      __asm { IC              IVAU, X9 }

      v2 += 64;
      if (!--v4)
      {
        if (v5)
        {
LABEL_5:
          __dsb(0xBu);
          v4 = 20;
        }

        else
        {
          v10 = &cpus_that_need_dsb_for_ic_ivau;
          while (1)
          {
            v11 = *v10++;
            v5 = v11;
            if (!v11)
            {
              break;
            }

            if (v5 == MEMORY[0xFFFFFC080])
            {
              goto LABEL_5;
            }
          }

          v4 = 0;
          v5 = 1;
        }
      }

      ++v3;
    }

    while (v3);
    __dsb(0xBu);
    __isb(0xFu);
  }
}

unint64_t _platform_strncmp_VARIANT_MTE(int8x16_t *a1, int8x16_t *a2, unint64_t a3)
{
  v3 = 0;
  if (!a3)
  {
    return v3;
  }

  while ((a1 & 0xF) != 0)
  {
    v5 = a1->u8[0];
    a1 = (a1 + 1);
    v4 = v5;
    v6 = a2->u8[0];
    a2 = (a2 + 1);
    v3 = v4 - v6;
    if (v4 == v6 && v4 != 0)
    {
      if (--a3)
      {
        continue;
      }
    }

    return v3;
  }

  v9 = a1->u8[0];
  v10 = a2->u8[0];
  __asm { MSR             TCO, #1 }

  if ((a2 & 0xF) == 0)
  {
    goto LABEL_32;
  }

  v15 = -a2 & 0xFF0;
  if (!v15)
  {
    goto LABEL_16;
  }

LABEL_11:
  if (a3 > v15)
  {
    v16 = a3 - v15;
    while (1)
    {
      v17 = *a1++;
      v18 = v17;
      v19 = *a2++;
      v21 = vceqq_s8(v18, v19);
      v20 = vandq_s8(v18, v21);
      v21.i8[0] = vminvq_u8(v20);
      if (!v21.i32[0])
      {
        break;
      }

      v15 -= 16;
      if (!v15)
      {
        a3 = v16;
LABEL_16:
        while (1)
        {
          v23 = a1->u8[0];
          a1 = (a1 + 1);
          v22 = v23;
          v24 = a2->u8[0];
          a2 = (a2 + 1);
          if (v22 != v24 || v22 == 0)
          {
            break;
          }

          if (!--a3)
          {
            break;
          }

          if ((a1 & 0xF) == 0)
          {
            v15 = 4080;
            goto LABEL_11;
          }
        }

        __asm { MSR             TCO, #0 }

        return a1[-1].u8[15] - a2[-1].u8[15];
      }
    }
  }

  else
  {
LABEL_32:
    while (1)
    {
      v27 = *a1++;
      v28 = v27;
      v29 = *a2++;
      v21 = vceqq_s8(v28, v29);
      v20 = vandq_s8(v28, v21);
      v21.i8[0] = vminvq_u8(v20);
      if (!v21.i32[0])
      {
        break;
      }

      v30 = a3 > 0x10;
      a3 -= 16;
      if (!v30)
      {
        __asm { MSR             TCO, #0 }

        v32 = a3 - 1;
        v33 = a1->u8[v32];
        v34 = a2->u8[v32];
        return 0;
      }
    }
  }

  __asm { MSR             TCO, #0 }

  v36 = vorrq_s8(vcgtq_u8(v20, veorq_s8(v21, v21)), xmmword_299E46240);
  v36.i8[0] = vminvq_u8(v36);
  if (v36.u32[0] < a3)
  {
    return a1[-1].u8[v36.u32[0]] - a2[-1].u8[v36.u32[0]];
  }

  v37 = a3 - 17;
  v38 = a1->u8[v37];
  v39 = a2->u8[v37];
  return 0;
}

BOOL _platform_memcmp_zero_aligned8(int8x16_t *a1, unint64_t a2)
{
  if (a2 < 0x40)
  {
    if (a2)
    {
      v12 = 0;
      do
      {
        v13 = a1->i64[0];
        a1 = (a1 + 8);
        v12 |= v13;
        v9 = a2 > 8;
        a2 -= 8;
      }

      while (v9);
      return v12 != 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a1;
    v3 = (&a1[4] & 0xFFFFFFFFFFFFFFC0);
    v4 = *v2;
    v5 = v2[1];
    v6 = v2[2];
    v7 = v2[3];
    v8 = a2 - (v3 - v2);
    v9 = v8 > 0x40;
    for (i = v8 - 64; v9; i -= 64)
    {
      v4 = vorrq_s8(v4, *v3);
      v5 = vorrq_s8(v5, v3[1]);
      v6 = vorrq_s8(v6, v3[2]);
      v7 = vorrq_s8(v7, v3[3]);
      v3 += 4;
      v9 = i > 0x40;
    }

    return vmaxvq_u8(vorrq_s8(vorrq_s8(vorrq_s8(v4, *(v3 + i)), vorrq_s8(v5, *(&v3[1] + i))), vorrq_s8(vorrq_s8(v6, *(&v3[2] + i)), vorrq_s8(v7, *(&v3[3] + i))))) != 0;
  }
}

unint64_t _platform_strcmp_VARIANT_MTE(int8x16_t *a1, int8x16_t *a2)
{
  while ((a1 & 0xF) != 0)
  {
    v3 = a1->u8[0];
    a1 = (a1 + 1);
    v2 = v3;
    v4 = a2->u8[0];
    a2 = (a2 + 1);
    v5 = v2 - v4;
    if (v2 != v4 || v2 == 0)
    {
      return v5;
    }
  }

  v8 = a1->u8[0];
  v9 = a2->u8[0];
  __asm { MSR             TCO, #1 }

  if ((a2 & 0xF) != 0)
  {
    v14 = -a2 & 0xFF0;
    if (!v14)
    {
      goto LABEL_12;
    }

LABEL_10:
    while (1)
    {
      v15 = *a1++;
      v16 = v15;
      v17 = *a2++;
      v19 = vceqq_s8(v16, v17);
      v18 = vandq_s8(v16, v19);
      v19.i8[0] = vminvq_u8(v18);
      if (!v19.i32[0])
      {
        break;
      }

      v14 -= 16;
      if (!v14)
      {
LABEL_12:
        while (1)
        {
          v21 = a1->u8[0];
          a1 = (a1 + 1);
          v20 = v21;
          v22 = a2->u8[0];
          a2 = (a2 + 1);
          v23 = v20 - v22;
          if (v20 != v22 || v20 == 0)
          {
            break;
          }

          if ((a1 & 0xF) == 0)
          {
            v14 = 4080;
            goto LABEL_10;
          }
        }

        __asm { MSR             TCO, #0 }

        v26 = a1[-1].u8[15];
        v27 = a2[-1].u8[15];
        return v23;
      }
    }
  }

  else
  {
    do
    {
      v28 = *a1++;
      v29 = v28;
      v30 = *a2++;
      v19 = vceqq_s8(v29, v30);
      v18 = vandq_s8(v29, v19);
      v19.i8[0] = vminvq_u8(v18);
    }

    while (v19.i32[0]);
  }

  __asm { MSR             TCO, #0 }

  v32 = vorrq_s8(vcgtq_u8(v18, veorq_s8(v19, v19)), xmmword_299E46480);
  v32.i8[0] = vminvq_u8(v32);
  return a1[-1].u8[v32.u32[0]] - a2[-1].u8[v32.u32[0]];
}

uint64_t _os_log_simple_parse_type(_BYTE *a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (v2 > 0x10 || ((1 << v2) & 0x10007) == 0)
  {
    return 22;
  }

  v4 = 0;
  *a1 = v2;
  return v4;
}

uint64_t _os_log_simple_parse_subsystem(uint64_t a1, unsigned __int16 *a2)
{
  if (!a2[1])
  {
    v2 = 0;
    goto LABEL_5;
  }

  v2 = a2 + *a2 + 104;
  if (!*(v2 + a2[1] - 1))
  {
LABEL_5:
    v3 = 0;
    *(a1 + 8) = v2;
    return v3;
  }

  return 22;
}

uint64_t _os_log_simple_parse_message(uint64_t a1, _WORD *a2)
{
  if (!*a2 || *(a2 + *a2 + 103))
  {
    return 22;
  }

  result = 0;
  *(a1 + 16) = a2 + 52;
  return result;
}

uint64_t _os_log_simple_parse_timestamp(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  *(a1 + 24) = v2;
  v3 = 22;
  if (v2)
  {
    if (v2 <= mach_continuous_time())
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v3;
}

uint64_t _os_log_simple_parse_identifiers(void *a1, void *a2)
{
  v2 = a2[2];
  a1[4] = v2;
  a1[5] = a2[3];
  a1[6] = a2[4];
  a1[7] = a2[5];
  if (v2)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

void _os_log_simple_reinit_4launchd()
{
  if (*(MEMORY[0x29EDCA698] + 336) == -1)
  {
    v0 = *(MEMORY[0x29EDCA698] + 344);
  }

  else
  {
    v0 = _os_alloc_once((MEMORY[0x29EDCA698] + 336), 32, _simple_asl_init_context);
  }

  if (*v0 == 1)
  {
    v1 = *(v0 + 16);
    if (v1 != -1)
    {
      _os_log_simple_reinit_4launchd_cold_1(v1);
    }

    *(v0 + 16) = _simple_asl_connect();
  }
}

_BYTE *_simple_asl_msg_set(_BYTE *result, const char *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    if (a2)
    {
      v10 = result;
      result = _simple_sprintf(result, " [", a3, a4, a5, a6, a7, a8, v43);
      if (!result)
      {
        result = _simple_esprintf(v10, _simple_asl_escape_key, "%s", v11, v12, v13, v14, v15, a2);
        if (!result)
        {
          if (a3)
          {
            result = _simple_esprintf(v10, _simple_asl_escape_val, " %s", v16, v17, v18, v19, v20, a3);
            if (result)
            {
              return result;
            }

            if (!_platform_strcmp_0(a2, "Message", v21, v22, v23, v24, v25, v26))
            {
              v27 = _simple_string(v10);
              v28 = _platform_strlen(v27);
              if (!_platform_strcmp_0(v27 + v28 - 2, "\\n", v29, v30, v31, v32, v33, v34))
              {
                v41 = v28 + v27 - 4;
                do
                {
                  *(v41 + 2) = 0;
                  v42 = _platform_strcmp_0(v41, "\\n", v35, v36, v37, v38, v39, v40);
                  v41 -= 2;
                }

                while (!v42);
              }

              _simple_sresize(v10);
            }
          }

          return _simple_sappend(v10, "]");
        }
      }
    }
  }

  return result;
}

const char *_simple_asl_escape_key(int a1)
{
  if (a1 <= 90)
  {
    if (a1 == 10)
    {
      return "\\n";
    }

    if (a1 == 32)
    {
      return "\\s";
    }
  }

  else
  {
    switch(a1)
    {
      case ']':
        return "\\]";
      case '\\':
        return "\\\";
      case '[':
        return "\\[";
    }
  }

  return 0;
}

const char *_simple_asl_escape_val(int a1)
{
  if (a1 > 91)
  {
    if (a1 != 92)
    {
      if (a1 == 93)
      {
        return "\\]";
      }

      return 0;
    }

    return "\\\";
  }

  else
  {
    if (a1 != 10)
    {
      if (a1 == 91)
      {
        return "\\[";
      }

      return 0;
    }

    return "\\n";
  }
}

uint64_t _simple_asl_send(_BYTE *a1)
{
  result = _simple_asl_get_fd();
  if ((result & 0x80000000) == 0)
  {
    __gettimeofday();
    result = _simple_sprintf(a1, " [PID ", v3, v4, v5, v6, v7, v8, v56);
    if (!result)
    {
      v9 = getpid();
      result = _simple_esprintf(a1, _simple_asl_escape_val, "%u", v10, v11, v12, v13, v14, v9);
      if (!result)
      {
        result = _simple_sprintf(a1, "] [UID ", v15, v16, v17, v18, v19, v20, v57);
        if (!result)
        {
          v21 = getuid();
          result = _simple_esprintf(a1, _simple_asl_escape_val, "%u", v22, v23, v24, v25, v26, v21);
          if (!result)
          {
            result = _simple_sprintf(a1, "] [GID ", v27, v28, v29, v30, v31, v32, v58);
            if (!result)
            {
              v33 = getgid();
              result = _simple_esprintf(a1, _simple_asl_escape_val, "%u", v34, v35, v36, v37, v38, v33);
              if (!result)
              {
                result = _simple_sprintf(a1, "] [Time ", v39, v40, v41, v42, v43, v44, v59);
                if (!result)
                {
                  result = _simple_esprintf(a1, _simple_asl_escape_val, "%lu", v45, v46, v47, v48, v49, v60);
                  if (!result)
                  {
                    result = _simple_sappend(a1, "] [TimeNanoSec ");
                    if (!result)
                    {
                      result = _simple_esprintf(a1, _simple_asl_escape_val, "%d", v50, v51, v52, v53, v54, (1000 * v61));
                      if (!result)
                      {
                        result = _simple_sappend(a1, "]\n");
                        if (!result)
                        {
                          v55 = _simple_string(a1);
                          _platform_strlen(v55);
                          return __sendto();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t _simple_asl_log_prog(int a1, uint64_t a2, uint64_t a3)
{
  v5 = os_log_simple_type_from_asl(a1);

  return _os_log_simple_shim(v5, a2, a3);
}

ssize_t _simple_vdprintf(int a1, char *a2, const char **a3)
{
  v6 = a1;
  v5[0] = v4;
  v5[1] = v4;
  v5[2] = v5;
  v7 = _flush_reset;
  __simple_bprintf(v5, 0, a2, a3);
  return _flush(v5);
}

uint64_t _flush_reset(void *a1)
{
  _flush(a1);
  a1[1] = *a1;
  return 1;
}

ssize_t _flush(ssize_t result)
{
  v1 = *result;
  v2 = *(result + 8) - *result;
  if (v2 >= 1)
  {
    v3 = result;
    while (1)
    {
      while (1)
      {
        result = write(*(v3 + 24), v1, v2);
        if (result < 0)
        {
          break;
        }

        v4 = v2 <= result;
        v2 -= result;
        v1 += v2;
        if (v4)
        {
          return result;
        }
      }

      if (*__error() != 4)
      {
        result = __error();
        if (*result != 35)
        {
          break;
        }
      }
    }
  }

  return result;
}

uint64_t _enlarge(uint64_t a1)
{
  v2 = (a1 + 16);
  address = *(a1 + 16) + 1;
  v3 = MEMORY[0x29EDCA6B0];
  v4 = MEMORY[0x29EDCA6D0];
  if (vm_allocate(*MEMORY[0x29EDCA6B0], &address, *MEMORY[0x29EDCA6D0], 0))
  {
    v5 = *(a1 + 16) - *a1 + 1;
    v6 = (v5 + *v4) & -*v4;
    v7 = vm_allocate(*v3, &address, v6, 1);
    if (v7)
    {
      _enlarge_cold_1(v7);
    }

    v8 = address - *a1;
    _platform_memmove(address, *a1, v5);
    v9 = *a1;
    v10 = *v4;
    if (((*v4 - 1) & *a1) != 0)
    {
      v5 &= -v10;
      v9 = (&v9[v10] & -v10);
      *a1 = v9;
      v11 = v6 + address - 1;
    }

    else
    {
      v11 = *v2 + v8 + v10;
    }

    *v2 = v11;
    if (v5)
    {
      mach_vm_deallocate(*v3, v9, v5);
    }

    *a1 = address;
    v2 = (a1 + 8);
  }

  else
  {
    v8 = *v4;
  }

  *v2 += v8;
  return 1;
}

unint64_t _simple_sresize(uint64_t *a1)
{
  v2 = *a1;
  result = _platform_strlen(*a1);
  a1[1] = v2 + result;
  return result;
}

uint64_t _simple_sappend(uint64_t a1, _BYTE *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = a2 + 1;
    while (1)
    {
      v5 = *(a1 + 8);
      if (v5 < *(a1 + 16))
      {
        goto LABEL_6;
      }

      if ((*(a1 + 32))(a1))
      {
        break;
      }

LABEL_7:
      v6 = *v4++;
      v2 = v6;
      if (!v6)
      {
        return 0;
      }
    }

    v5 = *(a1 + 8);
LABEL_6:
    *(a1 + 8) = v5 + 1;
    *v5 = v2;
    goto LABEL_7;
  }

  return 0;
}

uint64_t _simple_esappend(uint64_t a1, uint64_t (*a2)(void), unsigned __int8 *a3)
{
  v3 = *a3;
  if (*a3)
  {
    v4 = a3;
    do
    {
      if (a2 && (v7 = a2(v3)) != 0)
      {
        v8 = *v7;
        if (*v7)
        {
          v9 = v7 + 1;
          while (1)
          {
            v10 = *(a1 + 8);
            if (v10 < *(a1 + 16))
            {
              goto LABEL_10;
            }

            if ((*(a1 + 32))(a1))
            {
              break;
            }

LABEL_11:
            v11 = *v9++;
            v8 = v11;
            if (!v11)
            {
              goto LABEL_17;
            }
          }

          v10 = *(a1 + 8);
LABEL_10:
          *(a1 + 8) = v10 + 1;
          *v10 = v8;
          goto LABEL_11;
        }
      }

      else
      {
        v12 = *(a1 + 8);
        if (v12 < *(a1 + 16))
        {
          goto LABEL_16;
        }

        if ((*(a1 + 32))(a1))
        {
          v12 = *(a1 + 8);
LABEL_16:
          *(a1 + 8) = v12 + 1;
          *v12 = v3;
        }
      }

LABEL_17:
      v13 = *++v4;
      v3 = v13;
    }

    while (v13);
  }

  return 0;
}

ssize_t _simple_putline(ssize_t a1, int a2)
{
  *(a1 + 24) = a2;
  v3 = *(a1 + 8);
  *(a1 + 8) = v3 + 1;
  *v3 = 10;
  result = _flush(a1);
  --*(a1 + 8);
  return result;
}

uint64_t _simple_vsnprintf(unint64_t a1, unint64_t a2, char *a3, const char **a4)
{
  if (a2 - 0x7FFFFFFF < 0xFFFFFFFF80000002)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a1;
  v10 = a1;
  v11 = a1 + a2 - 1;
  v12 = 0;
  v13 = _snprintf_out_of_space;
  __simple_bprintf(&v9, 0, a3, a4);
  v7 = &v10[-a1];
  if (v10 < a1 || v7 >= a2)
  {
    _simple_vsnprintf_cold_1(v7);
  }

  *v10 = 0;
  if (&v10[v12 - v9] >= 0x7FFFFFFF)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return &v10[v12 - v9];
  }
}

uint64_t _snprintf_out_of_space(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 != 0x7FFFFFFF)
  {
    *(a1 + 24) = v1 + 1;
  }

  return 0;
}

std::ios_base *__cdecl oct(std::ios_base *__str)
{
  v5 = v4;
  v6 = v1;
  v27 = 0;
  if (v2)
  {
    v8 = &v27;
    do
    {
      *--v8 = v2 & 7 | 0x30;
      v9 = v2 >= 8;
      v2 >>= 3;
    }

    while (v9);
  }

  else
  {
    v8 = &v26;
    v26 = 48;
  }

  v10 = v3;
  result = _platform_strlen(v8);
  v12 = v10 - result;
  if (v12 >= 1)
  {
    if (v5)
    {
      v13 = 48;
    }

    else
    {
      v13 = 32;
    }

    do
    {
      if (v6 && (result = v6(v13)) != 0)
      {
        v14 = result->__vftable;
        if (LOBYTE(result->__vftable))
        {
          v15 = &result->__vftable + 1;
          while (1)
          {
            v16 = *&__str->__fmtflags_;
            if (v16 < __str->__precision_)
            {
              goto LABEL_17;
            }

            result = (*&__str->__rdstate_)(__str);
            if (result)
            {
              break;
            }

LABEL_18:
            v17 = *v15++;
            v14 = v17;
            if (!v17)
            {
              goto LABEL_24;
            }
          }

          v16 = *&__str->__fmtflags_;
LABEL_17:
          *&__str->__fmtflags_ = v16 + 1;
          *v16 = v14;
          goto LABEL_18;
        }
      }

      else
      {
        v18 = *&__str->__fmtflags_;
        if (v18 < __str->__precision_)
        {
          goto LABEL_23;
        }

        result = (*&__str->__rdstate_)(__str);
        if (result)
        {
          v18 = *&__str->__fmtflags_;
LABEL_23:
          *&__str->__fmtflags_ = v18 + 1;
          *v18 = v13;
        }
      }

LABEL_24:
      ;
    }

    while (v12-- > 1);
  }

  while (1)
  {
    v25 = *v8;
    if (!*v8)
    {
      return result;
    }

    if (v6 && (result = v6(*v8)) != 0)
    {
      v20 = result->__vftable;
      if (LOBYTE(result->__vftable))
      {
        v21 = &result->__vftable + 1;
        while (1)
        {
          v22 = *&__str->__fmtflags_;
          if (v22 < __str->__precision_)
          {
            goto LABEL_34;
          }

          result = (*&__str->__rdstate_)(__str);
          if (result)
          {
            break;
          }

LABEL_35:
          v23 = *v21++;
          v20 = v23;
          if (!v23)
          {
            goto LABEL_41;
          }
        }

        v22 = *&__str->__fmtflags_;
LABEL_34:
        *&__str->__fmtflags_ = v22 + 1;
        *v22 = v20;
        goto LABEL_35;
      }
    }

    else
    {
      v24 = *&__str->__fmtflags_;
      if (v24 >= __str->__precision_)
      {
        result = (*&__str->__rdstate_)(__str);
        if (!result)
        {
          goto LABEL_41;
        }

        v24 = *&__str->__fmtflags_;
      }

      *&__str->__fmtflags_ = v24 + 1;
      *v24 = v25;
    }

LABEL_41:
    ++v8;
  }
}

_BYTE *udec(uint64_t a1, uint64_t (*a2)(uint64_t), unint64_t a3, int a4, int a5)
{
  v27 = 0;
  if (a3)
  {
    v8 = &v27;
    do
    {
      *--v8 = (a3 % 0xA) | 0x30;
      v9 = a3 >= 0xA;
      a3 /= 0xAuLL;
    }

    while (v9);
  }

  else
  {
    v8 = &v26;
    v26 = 48;
  }

  v10 = a4;
  result = _platform_strlen(v8);
  v12 = v10 - result;
  if (v12 >= 1)
  {
    if (a5)
    {
      v13 = 48;
    }

    else
    {
      v13 = 32;
    }

    do
    {
      if (a2 && (result = a2(v13)) != 0)
      {
        v14 = *result;
        if (*result)
        {
          v15 = result + 1;
          while (1)
          {
            v16 = *(a1 + 8);
            if (v16 < *(a1 + 16))
            {
              goto LABEL_17;
            }

            result = (*(a1 + 32))(a1);
            if (result)
            {
              break;
            }

LABEL_18:
            v17 = *v15++;
            v14 = v17;
            if (!v17)
            {
              goto LABEL_24;
            }
          }

          v16 = *(a1 + 8);
LABEL_17:
          *(a1 + 8) = v16 + 1;
          *v16 = v14;
          goto LABEL_18;
        }
      }

      else
      {
        v18 = *(a1 + 8);
        if (v18 < *(a1 + 16))
        {
          goto LABEL_23;
        }

        result = (*(a1 + 32))(a1);
        if (result)
        {
          v18 = *(a1 + 8);
LABEL_23:
          *(a1 + 8) = v18 + 1;
          *v18 = v13;
        }
      }

LABEL_24:
      ;
    }

    while (v12-- > 1);
  }

  while (1)
  {
    v25 = *v8;
    if (!*v8)
    {
      return result;
    }

    if (a2 && (result = a2(*v8)) != 0)
    {
      v20 = *result;
      if (*result)
      {
        v21 = result + 1;
        while (1)
        {
          v22 = *(a1 + 8);
          if (v22 < *(a1 + 16))
          {
            goto LABEL_34;
          }

          result = (*(a1 + 32))(a1);
          if (result)
          {
            break;
          }

LABEL_35:
          v23 = *v21++;
          v20 = v23;
          if (!v23)
          {
            goto LABEL_41;
          }
        }

        v22 = *(a1 + 8);
LABEL_34:
        *(a1 + 8) = v22 + 1;
        *v22 = v20;
        goto LABEL_35;
      }
    }

    else
    {
      v24 = *(a1 + 8);
      if (v24 >= *(a1 + 16))
      {
        result = (*(a1 + 32))(a1);
        if (!result)
        {
          goto LABEL_41;
        }

        v24 = *(a1 + 8);
      }

      *(a1 + 8) = v24 + 1;
      *v24 = v25;
    }

LABEL_41:
    ++v8;
  }
}

_BYTE *ydec(uint64_t a1, uint64_t (*a2)(uint64_t), unint64_t a3, int a4, int a5)
{
  if (a3 >= 0xA00000)
  {
    result = udec(a1, a2, (a3 + 0x80000) >> 20, a4, a5);
    v8 = 0;
    v9 = 77;
    while (1)
    {
      if (a2 && (result = a2(v9)) != 0)
      {
        v10 = *result;
        if (*result)
        {
          v11 = result + 1;
          while (1)
          {
            v12 = *(a1 + 8);
            if (v12 < *(a1 + 16))
            {
              goto LABEL_10;
            }

            result = (*(a1 + 32))(a1);
            if (result)
            {
              break;
            }

LABEL_11:
            v13 = *v11++;
            v10 = v13;
            if (!v13)
            {
              goto LABEL_17;
            }
          }

          v12 = *(a1 + 8);
LABEL_10:
          *(a1 + 8) = v12 + 1;
          *v12 = v10;
          goto LABEL_11;
        }
      }

      else
      {
        v14 = *(a1 + 8);
        if (v14 < *(a1 + 16))
        {
          goto LABEL_16;
        }

        result = (*(a1 + 32))(a1);
        if (result)
        {
          v14 = *(a1 + 8);
LABEL_16:
          *(a1 + 8) = v14 + 1;
          *v14 = v9;
        }
      }

LABEL_17:
      v9 = aMb[++v8];
      if (v8 == 2)
      {
        return result;
      }
    }
  }

  if (a3 >> 11 >= 5)
  {
    result = udec(a1, a2, (a3 + 512) >> 10, a4, a5);
    v15 = 0;
    v16 = 75;
    while (1)
    {
      if (a2 && (result = a2(v16)) != 0)
      {
        v17 = *result;
        if (*result)
        {
          v18 = result + 1;
          while (1)
          {
            v19 = *(a1 + 8);
            if (v19 < *(a1 + 16))
            {
              goto LABEL_28;
            }

            result = (*(a1 + 32))(a1);
            if (result)
            {
              break;
            }

LABEL_29:
            v20 = *v18++;
            v17 = v20;
            if (!v20)
            {
              goto LABEL_35;
            }
          }

          v19 = *(a1 + 8);
LABEL_28:
          *(a1 + 8) = v19 + 1;
          *v19 = v17;
          goto LABEL_29;
        }
      }

      else
      {
        v21 = *(a1 + 8);
        if (v21 < *(a1 + 16))
        {
          goto LABEL_34;
        }

        result = (*(a1 + 32))(a1);
        if (result)
        {
          v21 = *(a1 + 8);
LABEL_34:
          *(a1 + 8) = v21 + 1;
          *v21 = v16;
        }
      }

LABEL_35:
      v16 = aKb[++v15];
      if (v15 == 2)
      {
        return result;
      }
    }
  }

  result = udec(a1, a2, a3, a4, a5);
  if (a2 && (result = a2(98)) != 0)
  {
    v22 = *result;
    if (*result)
    {
      v23 = result + 1;
      while (1)
      {
        v24 = *(a1 + 8);
        if (v24 < *(a1 + 16))
        {
          goto LABEL_44;
        }

        result = (*(a1 + 32))(a1);
        if (result)
        {
          break;
        }

LABEL_45:
        v25 = *v23++;
        v22 = v25;
        if (!v25)
        {
          return result;
        }
      }

      v24 = *(a1 + 8);
LABEL_44:
      *(a1 + 8) = v24 + 1;
      *v24 = v22;
      goto LABEL_45;
    }
  }

  else
  {
    v26 = *(a1 + 8);
    if (v26 >= *(a1 + 16))
    {
      result = (*(a1 + 32))(a1);
      if (!result)
      {
        return result;
      }

      v26 = *(a1 + 8);
    }

    *(a1 + 8) = v26 + 1;
    *v26 = 98;
  }

  return result;
}

int sys_cache_control(int function, void *start, size_t len)
{
  if (function == 2)
  {
    sys_dcache_flush(start, len);
    return 0;
  }

  if (function == 1)
  {
    sys_icache_invalidate(start, len);
    return 0;
  }

  return 45;
}

_BYTE *__os_security_config_init(uint64_t *a1)
{
  v2 = _simple_getenv(a1, "security_config");
  if (!v2)
  {
    goto LABEL_32;
  }

  if (*v2 != 48)
  {
    goto LABEL_40;
  }

  v3 = 2 * (v2[1] == 120);
  v4 = v2[v3];
  if (v2[1] != 120 || v4 == 0)
  {
    goto LABEL_40;
  }

  v6 = 0;
  v7 = 0;
  v8 = &v2[v3 + 1];
  do
  {
    v9 = v4 - 48;
    v10 = (v4 - 48);
    v11 = (v4 - 65);
    v12 = (v4 - 97);
    v13 = v12 >= 6;
    if (v12 >= 6)
    {
      v14 = v4;
    }

    else
    {
      v14 = v4 - 87;
    }

    if (v13)
    {
      v15 = -1;
    }

    else
    {
      v15 = v6;
    }

    v16 = v4 - 55;
    if (v11 <= 5)
    {
      v17 = v6;
    }

    else
    {
      v16 = v14;
      v17 = v15;
    }

    if (v10 >= 0xA)
    {
      v6 = v17;
    }

    else
    {
      v16 = v9;
    }

    v18 = v16 < 0x10u;
    v19 = 16 * v7 + v16;
    if (v7 >> 60)
    {
      v20 = -1;
    }

    else
    {
      v20 = 1;
    }

    if (v6 >= 0 && v18)
    {
      v7 = v19;
      v6 = v20;
    }

    v21 = *v8++;
    LOBYTE(v4) = v21;
  }

  while (v21 && v6 != -1);
  if (v6 <= 0)
  {
LABEL_40:
    __os_security_config_init_cold_1();
  }

  if ((v7 & 1) == 0)
  {
    if ((v7 & 2) == 0)
    {
      goto LABEL_30;
    }

LABEL_38:
    __security_config |= 2uLL;
    if ((v7 & 4) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  __security_config |= 1uLL;
  if ((v7 & 2) != 0)
  {
    goto LABEL_38;
  }

LABEL_30:
  if ((v7 & 4) != 0)
  {
LABEL_31:
    __security_config |= 4uLL;
  }

LABEL_32:
  result = _simple_getenv(a1, "has_sec_transition");
  if (result && *result == 49 && !result[1])
  {
    __security_config |= 4uLL;
  }

  return result;
}

uint64_t os_security_config_get_for_proc(int a1, void *a2)
{
  if (proc_pidinfo(a1, 3, 0, buffer, 136) == 136)
  {
    result = 0;
    v4 = HIBYTE(buffer[0]) & 4 | (buffer[0] >> 28) & 3u;
  }

  else
  {
    v4 = 0;
    result = 0xFFFFFFFFLL;
  }

  *a2 = v4;
  return result;
}

uint64_t os_security_config_get_for_task(task_name_t a1, void *a2)
{
  task_info_outCnt = 1;
  task_info_out = 0;
  v3 = task_info(a1, 0x20u, &task_info_out, &task_info_outCnt);
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = task_info_out & 7;
  }

  if (v3)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  *a2 = v4;
  return result;
}

unsigned int *_OSSpinLockLockSlow(unsigned int *result)
{
  for (i = 100; ; --i)
  {
    while (1)
    {
      v2 = __ldxr(result);
      if (v2)
      {
        break;
      }

      __clrex();
      atomic_compare_exchange_strong_explicit(result, &v2, 1u, memory_order_acquire, memory_order_acquire);
      if (!v2)
      {
        return result;
      }
    }

    if (v2 != 1)
    {
      __clrex();
      _os_lock_corruption_abort(result, v2);
    }

    if (!i)
    {
      break;
    }

    __wfe();
  }

  __clrex();

  return _OSSpinLockLockYield(result);
}

unint64_t _OSSpinLockLockYield(atomic_uint *a1)
{
  result = mach_timebase_info(&info);
  if (result)
  {
    v3 = -1;
  }

  else
  {
    v4 = 1000000 * info.denom / info.numer;
    result = mach_absolute_time();
    v3 = result + v4;
  }

  v5 = 1;
  v6 = 1;
  while (1)
  {
    v7 = *a1;
    if (!*a1)
    {
      atomic_compare_exchange_strong_explicit(a1, &v7, 1u, memory_order_acquire, memory_order_acquire);
      if (!v7)
      {
        break;
      }
    }

    if (v7 != 1)
    {
      _os_lock_corruption_abort(result, v7);
    }

    result = MEMORY[0x29C2B2BD0](0, v6, v5);
    if (v6 == 2)
    {
      v5 = (v5 + 1);
    }

    else
    {
      result = mach_absolute_time();
      if (result < v3)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }
    }
  }

  return result;
}

void spin_lock(OSSpinLock *__lock)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit(__lock, &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    _OSSpinLockLockSlow(__lock);
  }
}

BOOL OSSpinLockTry(OSSpinLock *__lock)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit(__lock, &v1, 1u, memory_order_acquire, memory_order_acquire);
  return v1 == 0;
}

BOOL spin_lock_try(atomic_uint *a1)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit(a1, &v1, 1u, memory_order_acquire, memory_order_acquire);
  return v1 == 0;
}

unsigned int *_os_lock_spin_lock(uint64_t a1)
{
  v1 = 0;
  result = (a1 + 8);
  atomic_compare_exchange_strong_explicit(result, &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    return _OSSpinLockLockSlow(result);
  }

  return result;
}

BOOL _os_lock_spin_trylock(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 8), &v1, 1u, memory_order_acquire, memory_order_acquire);
  return v1 == 0;
}

void _os_lock_handoff_lock(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 8), &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    _os_lock_handoff_lock_slow(a1);
  }
}

BOOL _os_lock_handoff_trylock(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 8), &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  return v1 == 0;
}

void _os_lock_handoff_lock_slow(uint64_t a1)
{
  v2 = 0;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v4 = 100;
  v5 = 1;
LABEL_2:
  v6 = 1 - v4;
  while (1)
  {
    v7 = v6;
    v8 = *(a1 + 8);
    if (!v8)
    {
      atomic_compare_exchange_strong_explicit((a1 + 8), &v8, v3, memory_order_acquire, memory_order_acquire);
      if (!v8)
      {
        break;
      }
    }

    if (v8 == v3)
    {
      _os_lock_recursive_abort(v3);
    }

    ++v6;
    if (v7 == 1)
    {
      MEMORY[0x29C2B2BD0]();
LABEL_8:
      ++v5;
      v4 = -v7;
      v2 = 1;
      goto LABEL_2;
    }

    MEMORY[0x29C2B2BD0]();
    if (v2)
    {
      goto LABEL_8;
    }
  }
}

atomic_uint *os_unfair_lock_lock_with_flags(atomic_uint *result, int a2)
{
  v2 = 0;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  atomic_compare_exchange_strong_explicit(result, &v2, v3, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    return _os_unfair_lock_lock_slow(result, a2, 0, v3);
  }

  return result;
}

_DWORD *os_unfair_recursive_lock_unlock_forked_child(_DWORD *result)
{
  if (!*result)
  {
    os_unfair_recursive_lock_unlock_forked_child_cold_1();
  }

  v1 = result[1];
  if (v1)
  {
    v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    result[1] = v1 - 1;
  }

  else
  {
    v2 = 0;
  }

  *result = v2;
  return result;
}

atomic_uint *_os_lock_unfair_lock(uint64_t a1)
{
  v1 = 0;
  result = (a1 + 8);
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  atomic_compare_exchange_strong_explicit(result, &v1, v3, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    return _os_unfair_lock_lock_slow(result, 0, 0, v3);
  }

  return result;
}

BOOL _os_lock_unfair_trylock(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 8), &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  return v1 == 0;
}

atomic_uint *_os_lock_unfair_unlock(uint64_t a1)
{
  result = (a1 + 8);
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v3 = atomic_exchange_explicit(result, 0, memory_order_release);
  if (v3 != v2)
  {
    return _os_unfair_lock_unlock_slow(result, v2, v3);
  }

  return result;
}

uint64_t _os_nospin_lock_lock(uint64_t result)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit(result, &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    return _os_nospin_lock_lock_slow(result);
  }

  return result;
}

uint64_t _os_nospin_lock_lock_slow(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v4 = 1;
  while (1)
  {
    v5 = *v1;
    if (!*v1)
    {
      atomic_compare_exchange_strong_explicit(v1, &v5, v3 & ~v2, memory_order_acquire, memory_order_acquire);
      if (!v5)
      {
        break;
      }
    }

    v6 = v5 & 0xFFFFFFFE;
    if (v5 != (v5 & 0xFFFFFFFE) && v6 != 0)
    {
      v8 = v5;
      atomic_compare_exchange_strong_explicit(v1, &v8, v6, memory_order_relaxed, memory_order_relaxed);
      if (v8 != v5)
      {
        continue;
      }
    }

    result = __ulock_wait();
    if ((result & 0x80000000) != 0)
    {
      if (result != -14 && result != -4)
      {
        if (result != -60)
        {
          qword_2A14EFF58 = "BUG IN LIBPLATFORM: ulock_wait failure";
          qword_2A14EFF88 = -result;
          __break(0xB001u);
          return result;
        }

        ++v4;
      }
    }

    else if (result)
    {
      v2 = 1;
    }
  }

  return result;
}

BOOL _os_nospin_lock_trylock(atomic_uint *a1)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit(a1, &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  return v1 == 0;
}

atomic_uint *_os_nospin_lock_unlock(atomic_uint *result)
{
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v2 = atomic_exchange_explicit(result, 0, memory_order_release);
  if (v2 != v1)
  {
    return _os_nospin_lock_unlock_slow(result, v2);
  }

  return result;
}

uint64_t _os_nospin_lock_unlock_slow(uint64_t result, unsigned int a2)
{
  if ((a2 | 1) == *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24))
  {
    if (a2)
    {
      qword_2A14EFF58 = "BUG IN LIBPLATFORM: unlock_slow with no waiters";
      qword_2A14EFF88 = a2;
      __break(0xB001u);
LABEL_8:
      qword_2A14EFF58 = "BUG IN LIBPLATFORM: ulock_wake failure";
      qword_2A14EFF88 = -result;
      __break(0xB001u);
    }

    else
    {
      while (1)
      {
        result = __ulock_wake();
        if ((result & 0x80000000) == 0)
        {
          break;
        }

        if (result != -4)
        {
          if (result != -2)
          {
            goto LABEL_8;
          }

          return result;
        }
      }
    }
  }

  return result;
}

atomic_uint *_os_lock_nospin_lock(uint64_t a1)
{
  v1 = 0;
  result = (a1 + 8);
  atomic_compare_exchange_strong_explicit(result, &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    return _os_nospin_lock_lock_slow(result);
  }

  return result;
}

BOOL _os_lock_nospin_trylock(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 8), &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  return v1 == 0;
}

atomic_uint *_os_lock_nospin_unlock(uint64_t a1)
{
  result = (a1 + 8);
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v3 = atomic_exchange_explicit(result, 0, memory_order_release);
  if (v3 != v2)
  {
    return _os_nospin_lock_unlock_slow(result, v3);
  }

  return result;
}

atomic_ullong *__os_once_reset(atomic_ullong *result)
{
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v2 = atomic_exchange_explicit(result, 0, memory_order_release);
  if (v1 != v2)
  {
    return _os_once_gate_broadcast(result, v2, v1);
  }

  return result;
}

uint64_t os_sync_wait_on_address_with_deadline(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6)
{
  if (a4 <= 1 && (a3 == 8 || a3 == 4))
  {
    v6 = 22;
    if (a6 && a5 == 32)
    {
      result = __ulock_wait2();
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      v6 = -result;
    }
  }

  else
  {
    v6 = 22;
  }

  *__error() = v6;
  return 0xFFFFFFFFLL;
}

uint64_t os_sync_wait_on_address_with_timeout(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6)
{
  if (a4 <= 1 && (a3 == 8 || a3 == 4))
  {
    v6 = 22;
    if (a6 && a5 == 32)
    {
      result = __ulock_wait2();
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      v6 = -result;
    }
  }

  else
  {
    v6 = 22;
  }

  *__error() = v6;
  return 0xFFFFFFFFLL;
}

uint64_t os_sync_wait_on_address(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 <= 1 && (a3 == 8 || a3 == 4))
  {
    result = __ulock_wait2();
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    v5 = -result;
  }

  else
  {
    v5 = 22;
  }

  *__error() = v5;
  return 0xFFFFFFFFLL;
}

uint64_t os_sync_wake_by_address_any(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 1 && (a2 == 8 || a2 == 4))
  {
    result = __ulock_wake();
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    v4 = -result;
  }

  else
  {
    v4 = 22;
  }

  *__error() = v4;
  return 0xFFFFFFFFLL;
}

uint64_t os_sync_wake_by_address_all(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 1 && (a2 == 8 || a2 == 4))
  {
    result = __ulock_wake();
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    v4 = -result;
  }

  else
  {
    v4 = 22;
  }

  *__error() = v4;
  return 0xFFFFFFFFLL;
}

void os_apt_msg_async_task_running_4swift_dev_prodel0(uint64_t a1)
{
  if (MEMORY[0xFFFFFC341])
  {
    v1 = ((a1 & 1) << 30) | 0x1010101;
    _WriteStatusReg(ARM64_SYSREG(3, 5, 15, 1, 4), v1);
    _WriteStatusReg(ARM64_SYSREG(3, 5, 15, 11, 6), v1);
    _WriteStatusReg(ARM64_SYSREG(3, 5, 15, 1, 4), a1 & 0xFFFFFFFFFFFFFFFELL);
    _WriteStatusReg(ARM64_SYSREG(3, 5, 15, 11, 6), a1 & 0xFFFFFFFFFFFFFFFELL);
  }
}

void os_apt_msg_async_task_running_4swift_prodel0(uint64_t a1)
{
  if (MEMORY[0xFFFFFC341])
  {
    _WriteStatusReg(ARM64_SYSREG(3, 5, 15, 11, 6), ((a1 & 1) << 30) | 0x1010101);
    _WriteStatusReg(ARM64_SYSREG(3, 5, 15, 11, 6), a1 & 0xFFFFFFFFFFFFFFFELL);
  }
}

void os_apt_msg_async_task_waiting_on_4swift_dev_prodel0(uint64_t a1)
{
  if (MEMORY[0xFFFFFC341])
  {
    v1 = ((a1 & 1) << 30) | 0x1020101;
    _WriteStatusReg(ARM64_SYSREG(3, 5, 15, 1, 4), v1);
    _WriteStatusReg(ARM64_SYSREG(3, 5, 15, 11, 6), v1);
    _WriteStatusReg(ARM64_SYSREG(3, 5, 15, 1, 4), a1 & 0xFFFFFFFFFFFFFFFELL);
    _WriteStatusReg(ARM64_SYSREG(3, 5, 15, 11, 6), a1 & 0xFFFFFFFFFFFFFFFELL);
  }
}

void os_apt_msg_async_task_waiting_on_4swift_prodel0(uint64_t a1)
{
  if (MEMORY[0xFFFFFC341])
  {
    _WriteStatusReg(ARM64_SYSREG(3, 5, 15, 11, 6), ((a1 & 1) << 30) | 0x1020101);
    _WriteStatusReg(ARM64_SYSREG(3, 5, 15, 11, 6), a1 & 0xFFFFFFFFFFFFFFFELL);
  }
}

uint64_t _os_semaphore_create()
{
  v0 = semaphore_create(*MEMORY[0x29EDCA6B0], &semaphore, 0, 0);
  if (v0)
  {
    if (v0 == -301)
    {
      _os_semaphore_create_cold_1();
    }

    _os_semaphore_create_cold_2(v0);
  }

  return semaphore;
}

uint64_t _os_semaphore_dispose(semaphore_t semaphore)
{
  result = semaphore_destroy(*MEMORY[0x29EDCA6B0], semaphore);
  if (result)
  {
    _os_semaphore_dispose_cold_1(result);
  }

  return result;
}

uint64_t _os_semaphore_signal()
{
  result = MEMORY[0x29C2B2B80]();
  if (result)
  {
    _os_semaphore_signal_cold_1(result);
  }

  return result;
}

uint64_t _os_semaphore_wait(uint64_t a1)
{
  while (1)
  {
    result = MEMORY[0x29C2B2B90](a1);
    if (!result)
    {
      break;
    }

    if (result != 14)
    {
      _os_semaphore_wait_cold_1(result);
    }
  }

  return result;
}

BOOL OSAtomicCompareAndSwap32(int32_t __oldValue, int32_t __newValue, int32_t *__theValue)
{
  v3 = __oldValue;
  atomic_compare_exchange_strong_explicit(__theValue, &v3, __newValue, memory_order_relaxed, memory_order_relaxed);
  return v3 == __oldValue;
}

BOOL OSAtomicCompareAndSwap32Barrier(int32_t __oldValue, int32_t __newValue, int32_t *__theValue)
{
  v3 = __oldValue;
  atomic_compare_exchange_strong(__theValue, &v3, __newValue);
  return v3 == __oldValue;
}

BOOL OSAtomicCompareAndSwapPtr(void *__oldValue, void *__newValue, void **__theValue)
{
  v3 = __oldValue;
  atomic_compare_exchange_strong_explicit(__theValue, &v3, __newValue, memory_order_relaxed, memory_order_relaxed);
  return v3 == __oldValue;
}

BOOL OSAtomicCompareAndSwapPtrBarrier(void *__oldValue, void *__newValue, void **__theValue)
{
  v3 = __oldValue;
  atomic_compare_exchange_strong(__theValue, &v3, __newValue);
  return v3 == __oldValue;
}

BOOL OSAtomicCompareAndSwapInt(int __oldValue, int __newValue, int *__theValue)
{
  v3 = __oldValue;
  atomic_compare_exchange_strong_explicit(__theValue, &v3, __newValue, memory_order_relaxed, memory_order_relaxed);
  return v3 == __oldValue;
}

BOOL OSAtomicCompareAndSwapIntBarrier(int __oldValue, int __newValue, int *__theValue)
{
  v3 = __oldValue;
  atomic_compare_exchange_strong(__theValue, &v3, __newValue);
  return v3 == __oldValue;
}

BOOL OSAtomicCompareAndSwapLong(uint64_t __oldValue, uint64_t __newValue, uint64_t *__theValue)
{
  v3 = __oldValue;
  atomic_compare_exchange_strong_explicit(__theValue, &v3, __newValue, memory_order_relaxed, memory_order_relaxed);
  return v3 == __oldValue;
}

BOOL OSAtomicCompareAndSwapLongBarrier(uint64_t __oldValue, uint64_t __newValue, uint64_t *__theValue)
{
  v3 = __oldValue;
  atomic_compare_exchange_strong(__theValue, &v3, __newValue);
  return v3 == __oldValue;
}

BOOL OSAtomicCompareAndSwap64(int64_t __oldValue, int64_t __newValue, OSAtomic_int64_aligned64_t *__theValue)
{
  v3 = __oldValue;
  atomic_compare_exchange_strong_explicit(__theValue, &v3, __newValue, memory_order_relaxed, memory_order_relaxed);
  return v3 == __oldValue;
}

BOOL OSAtomicCompareAndSwap64Barrier(int64_t __oldValue, int64_t __newValue, OSAtomic_int64_aligned64_t *__theValue)
{
  v3 = __oldValue;
  atomic_compare_exchange_strong(__theValue, &v3, __newValue);
  return v3 == __oldValue;
}

BOOL OSAtomicTestAndSet(uint32_t __n, void *__theAddress)
{
  v2 = __theAddress & 0xFFFFFFFFFFFFFFFCLL;
  if ((__theAddress & 3) == 0)
  {
    v2 = __theAddress;
  }

  return (atomic_fetch_or_explicit((v2 + (((__n + 8 * (__theAddress & 3)) >> 3) & 0x1FFFFFFC)), 0x80u >> (__n & 7) << ((__n + 8 * (__theAddress & 3)) & 0x18), memory_order_relaxed) & (0x80u >> (__n & 7) << ((__n + 8 * (__theAddress & 3)) & 0x18))) != 0;
}

BOOL OSAtomicTestAndSetBarrier(uint32_t __n, void *__theAddress)
{
  v2 = __theAddress & 0xFFFFFFFFFFFFFFFCLL;
  if ((__theAddress & 3) == 0)
  {
    v2 = __theAddress;
  }

  return (atomic_fetch_or((v2 + (((__n + 8 * (__theAddress & 3)) >> 3) & 0x1FFFFFFC)), 0x80u >> (__n & 7) << ((__n + 8 * (__theAddress & 3)) & 0x18)) & (0x80u >> (__n & 7) << ((__n + 8 * (__theAddress & 3)) & 0x18))) != 0;
}

BOOL OSAtomicTestAndClear(uint32_t __n, void *__theAddress)
{
  v2 = __theAddress & 0xFFFFFFFFFFFFFFFCLL;
  if ((__theAddress & 3) == 0)
  {
    v2 = __theAddress;
  }

  return (atomic_fetch_and_explicit((v2 + (((__n + 8 * (__theAddress & 3)) >> 3) & 0x1FFFFFFC)), ~(0x80u >> (__n & 7) << ((__n + 8 * (__theAddress & 3)) & 0x18)), memory_order_relaxed) & (0x80u >> (__n & 7) << ((__n + 8 * (__theAddress & 3)) & 0x18))) != 0;
}

BOOL OSAtomicTestAndClearBarrier(uint32_t __n, void *__theAddress)
{
  v2 = __theAddress & 0xFFFFFFFFFFFFFFFCLL;
  if ((__theAddress & 3) == 0)
  {
    v2 = __theAddress;
  }

  return (atomic_fetch_and((v2 + (((__n + 8 * (__theAddress & 3)) >> 3) & 0x1FFFFFFC)), ~(0x80u >> (__n & 7) << ((__n + 8 * (__theAddress & 3)) & 0x18))) & (0x80u >> (__n & 7) << ((__n + 8 * (__theAddress & 3)) & 0x18))) != 0;
}

unint64_t *_OSAtomicEnqueue_misalign(unint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = *result;
  do
  {
    do
    {
      *(a2 + a3) = v3;
      v4 = __ldxr(result);
      v5 = v3 == v4;
      v3 = v4;
    }

    while (!v5);
    v3 = v4;
  }

  while (__stlxr(a2, result));
  return result;
}

char *_platform_memccpy(char *a1, char *a2, unsigned int a3, unint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v7 = _platform_memchr(a2, a3, a4);
  if (v7)
  {
    v8 = v7 - a2 + 1;
    _platform_memmove(a1, a2, v8);
    return &a1[v8];
  }

  else
  {
    _platform_memmove(a1, a2, a4);
    return 0;
  }
}

unint64_t timingsafe_enable_if_supported()
{
  v0 = MEMORY[0xFFFFFC010];
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) != 0)
  {
    v1 = (_ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 5)) >> 24) & 1;
    __asm { MSR             DIT, #1 }

    if ((v0 & 0x200000000000) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    __dsb(0xFu);
    __isb(0xFu);
    return v1;
  }

  v1 = 0;
  if ((MEMORY[0xFFFFFC010] & 0x200000000000) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  sb();
  return v1;
}

uint64_t timingsafe_restore_if_supported(uint64_t result)
{
  if ((result & 1) == 0 && (MEMORY[0xFFFFFC010] & 0x200000000000000) != 0)
  {
    __asm { MSR             DIT, #0 }
  }

  return result;
}

void _os_log_simple_reinit_4launchd_cold_1(int a1)
{
  qword_2A14EFF58 = "BUG IN CLIENT OF LIBPLATFORM: asl fd already initialized";
  qword_2A14EFF88 = a1;
  __break(0xB001u);
}

void _enlarge_cold_1(int a1)
{
  qword_2A14EFF58 = "BUG IN CLIENT OF LIBPLATFORM: Failed to allocate memory for buffer";
  qword_2A14EFF88 = a1;
  __break(0xB001u);
}

void _simple_vsnprintf_cold_1(uint64_t a1)
{
  qword_2A14EFF58 = "BUG IN LIBPLATFORM: Overflow in _simple_snprintf";
  qword_2A14EFF88 = a1;
  __break(0xB001u);
}

void _os_lock_corruption_abort(uint64_t a1, uint64_t a2)
{
  qword_2A14EFF58 = "BUG IN CLIENT OF LIBPLATFORM: os_lock is corrupt";
  qword_2A14EFF88 = a2;
  __break(0xB001u);
}

void _os_unfair_lock_recursive_abort(unsigned int a1)
{
  qword_2A14EFF58 = "BUG IN CLIENT OF LIBPLATFORM: Trying to recursively lock an os_unfair_lock";
  qword_2A14EFF88 = a1;
  __break(0xB001u);
}

void _os_unfair_lock_unowned_abort(unsigned int a1)
{
  qword_2A14EFF58 = "BUG IN CLIENT OF LIBPLATFORM: Unlock of an os_unfair_lock not owned by current thread";
  qword_2A14EFF88 = a1;
  __break(0xB001u);
}

void _os_unfair_lock_corruption_abort(unsigned int a1)
{
  if (a1 - 512 <= 0x3FE00)
  {
    qword_2A14EFF58 = "BUG IN CLIENT OF LIBPLATFORM: os_unfair_lock is corrupt, or owner thread exited without unlocking";
    qword_2A14EFF88 = a1;
    __break(0xB001u);
  }

  qword_2A14EFF58 = "BUG IN CLIENT OF LIBPLATFORM: os_unfair_lock is corrupt";
  qword_2A14EFF88 = a1;
  __break(0xB001u);
}

uint64_t os_unfair_recursive_lock_trylock(atomic_uint *a1)
{
  v2 = 0;
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  atomic_compare_exchange_strong_explicit(a1, &v2, v1, memory_order_acquire, memory_order_acquire);
  if (!v2)
  {
    return 1;
  }

  if ((v2 | 1) == v1)
  {
    ++a1[1];
    return 1;
  }

  return 0;
}

void _os_once_gate_recursive_abort(unsigned int a1)
{
  qword_2A14EFF58 = "BUG IN CLIENT OF LIBPLATFORM: Trying to recursively lock an os_once_t";
  qword_2A14EFF88 = a1;
  __break(0xB001u);
}

void _os_once_gate_unowned_abort(unsigned int a1)
{
  qword_2A14EFF58 = "BUG IN CLIENT OF LIBPLATFORM: Unlock of an os_once_t not owned by current thread";
  qword_2A14EFF88 = a1;
  __break(0xB001u);
}

void _os_once_gate_corruption_abort(unsigned int a1)
{
  qword_2A14EFF58 = "BUG IN CLIENT OF LIBPLATFORM: os_once_t is corrupt";
  qword_2A14EFF88 = a1;
  __break(0xB001u);
}

void _os_lock_recursive_abort(unsigned int a1)
{
  qword_2A14EFF58 = "BUG IN CLIENT OF LIBPLATFORM: Trying to recursively lock an os_lock";
  qword_2A14EFF88 = a1;
  __break(0xB001u);
}

void os_unfair_lock_assert_owner_cold_1(unsigned int a1)
{
  qword_2A14EFF58 = "BUG IN CLIENT OF LIBPLATFORM: Assertion failed: Lock unexpectedly not owned by current thread";
  qword_2A14EFF88 = a1;
  __break(0xB001u);
}

void os_unfair_lock_assert_not_owner_cold_1(unsigned int a1)
{
  qword_2A14EFF58 = "BUG IN CLIENT OF LIBPLATFORM: Assertion failed: Lock unexpectedly owned by current thread";
  qword_2A14EFF88 = a1;
  __break(0xB001u);
}

void _os_alloc_cold_1(uint64_t a1)
{
  qword_2A14EFF58 = "BUG IN CLIENT OF LIBPLATFORM: Requested allocation size is invalid";
  qword_2A14EFF88 = a1;
  __break(0xB001u);
}

void _os_semaphore_create_cold_1()
{
  qword_2A14EFF58 = "BUG IN CLIENT OF LIBPLATFORM: Allocating semaphore failed with MIG_REPLY_MISMATCH";
  qword_2A14EFF88 = -301;
  __break(0xB001u);
}

void _os_semaphore_create_cold_2(int a1)
{
  qword_2A14EFF58 = "BUG IN CLIENT OF LIBPLATFORM: Creating semaphore failed, possible port leak";
  qword_2A14EFF88 = a1;
  __break(0xB001u);
}

void _os_semaphore_dispose_cold_1(int a1)
{
  qword_2A14EFF58 = "BUG IN CLIENT OF LIBPLATFORM: Destroying semaphore failed";
  qword_2A14EFF88 = a1;
  __break(0xB001u);
}

void _os_semaphore_signal_cold_1(int a1)
{
  qword_2A14EFF58 = "BUG IN CLIENT OF LIBPLATFORM: Signaling semaphore failed";
  qword_2A14EFF88 = a1;
  __break(0xB001u);
}

void _os_semaphore_wait_cold_1(int a1)
{
  qword_2A14EFF58 = "BUG IN CLIENT OF LIBPLATFORM: Waiting on semaphore failed";
  qword_2A14EFF88 = a1;
  __break(0xB001u);
  _platform_strcmp_0();
}