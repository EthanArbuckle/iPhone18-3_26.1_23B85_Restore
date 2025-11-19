void atomic_thread_fence(memory_order a1)
{
  if (a1 > memory_order_release)
  {
    if (a1 == memory_order_acq_rel || a1 == memory_order_seq_cst)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (a1 - 1 < 2)
    {
      __dmb(9u);
      return;
    }

    if (a1 == memory_order_release)
    {
LABEL_9:
      __dmb(0xBu);
    }
  }
}

uint64_t __clzti2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    a1 = 0;
  }

  return __clz(a1 | a2) + ((a2 == 0) << 6);
}

unint64_t __udivmodti4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t *a5)
{
  v5 = a2;
  if (__PAIR128__(a2, a1) >= __PAIR128__(a4, a3))
  {
    if (a4)
    {
      v7 = __clz(a4);
      v8 = __clz(a2);
      v6 = 0;
      v9 = v7 - v8;
      if (v7 - v8 >= 0)
      {
        v10 = a3 << v9;
        v11 = (v9 & 0x40) == 0;
        if (((v7 - v8) & 0x40) != 0)
        {
          v12 = a3 << v9;
        }

        else
        {
          v12 = (a4 << v9) | (a3 >> 1 >> ~v9);
        }

        if (v11)
        {
          v13 = v10;
        }

        else
        {
          v13 = 0;
        }

        v14 = ~v7 + v8;
        do
        {
          v15 = ~v5 + __CFADD__(v13, ~a1) + v12;
          *(&v16 + 1) = v6;
          *&v16 = v15;
          v6 = v16 >> 63;
          v5 = (__PAIR128__(v5, a1) - __PAIR128__(v12 & (v15 >> 63), v13 & (v15 >> 63))) >> 64;
          a1 -= v13 & (v15 >> 63);
          *(&v16 + 1) = v12;
          *&v16 = v13;
          v13 = v16 >> 1;
          v12 >>= 1;
        }

        while (!__CFADD__(v14++, 1));
      }

      if (a5)
      {
        *a5 = a1;
        a5[1] = v5;
      }
    }

    else
    {
      if (a2 >= a3)
      {
        v19 = __clz(a3);
        v20 = a3 << v19;
        v32 = ((a2 % a3) << v19) | (a1 >> 1 >> ~v19);
        v33 = a3 << v19 >> 32;
        v34 = (a3 << v19);
        v35 = a1 << v19 >> 32;
        v36 = (a1 << v19);
        v26 = v32 / v33;
        v37 = v32 % v33;
        do
        {
          if (!HIDWORD(v26) && v26 * v34 <= (v35 | (v37 << 32)))
          {
            break;
          }

          --v26;
          v37 += v33;
        }

        while (!HIDWORD(v37));
        v38 = (v35 | (v32 << 32)) - v26 * v20;
        v29 = v38 / v33;
        v39 = v38 % v33;
        do
        {
          if (!HIDWORD(v29) && v29 * v34 <= (v36 | (v39 << 32)))
          {
            break;
          }

          --v29;
          v39 += v33;
        }

        while (!HIDWORD(v39));
        v31 = v36 | (v38 << 32);
      }

      else
      {
        v19 = __clz(a3);
        v20 = a3 << v19;
        v21 = (a2 << v19) | (a1 >> 1 >> ~v19);
        v22 = a3 << v19 >> 32;
        v23 = (a3 << v19);
        v24 = a1 << v19 >> 32;
        v25 = (a1 << v19);
        v26 = v21 / v22;
        v27 = v21 % v22;
        do
        {
          if (!HIDWORD(v26) && v26 * v23 <= (v24 | (v27 << 32)))
          {
            break;
          }

          --v26;
          v27 += v22;
        }

        while (!HIDWORD(v27));
        v28 = (v24 | (v21 << 32)) - v26 * v20;
        v29 = v28 / v22;
        v30 = v28 % v22;
        do
        {
          if (!HIDWORD(v29) && v29 * v23 <= (v25 | (v30 << 32)))
          {
            break;
          }

          --v29;
          v30 += v22;
        }

        while (!HIDWORD(v30));
        v31 = v25 | (v28 << 32);
      }

      v40 = (v31 - v29 * v20) >> v19;
      v6 = v29 + (v26 << 32);
      if (a5)
      {
        *a5 = v40;
        a5[1] = 0;
      }
    }
  }

  else
  {
    v6 = 0;
    if (a5)
    {
      *a5 = a1;
      a5[1] = a2;
    }
  }

  return v6;
}

uint64_t __atomic_is_lock_free(uint64_t result, char a2)
{
  if (result > 3)
  {
    if (result == 4)
    {
      if ((a2 & 3) == 0)
      {
        return 1;
      }
    }

    else if (result == 8 && (a2 & 7) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (result == 1)
    {
      return result;
    }

    if (result == 2 && (a2 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t __atomic_load(uint64_t result, unsigned int *a2, unsigned int *a3, int a4)
{
  v6 = result;
  if (result > 3)
  {
    if (result == 4)
    {
      if ((a2 & 3) == 0)
      {
        if ((a4 - 1) >= 2)
        {
          if (a4 == 5)
          {
            explicit = atomic_load(a2);
          }

          else
          {
            explicit = *a2;
          }
        }

        else
        {
          explicit = atomic_load_explicit(a2, memory_order_acquire);
        }

        *a3 = explicit;
        return result;
      }
    }

    else if (result == 8 && (a2 & 7) == 0)
    {
      if ((a4 - 1) >= 2)
      {
        if (a4 == 5)
        {
          v8 = atomic_load(a2);
        }

        else
        {
          v8 = *a2;
        }
      }

      else
      {
        v8 = atomic_load_explicit(a2, memory_order_acquire);
      }

      *a3 = v8;
      return result;
    }
  }

  else
  {
    if (result == 1)
    {
      if ((a4 - 1) >= 2)
      {
        if (a4 == 5)
        {
          v9 = atomic_load(a2);
        }

        else
        {
          v9 = *a2;
        }
      }

      else
      {
        v9 = atomic_load_explicit(a2, memory_order_acquire);
      }

      *a3 = v9;
      return result;
    }

    if (result == 2 && (a2 & 1) == 0)
    {
      if ((a4 - 1) >= 2)
      {
        if (a4 == 5)
        {
          v7 = atomic_load(a2);
        }

        else
        {
          v7 = *a2;
        }
      }

      else
      {
        v7 = atomic_load_explicit(a2, memory_order_acquire);
      }

      *a3 = v7;
      return result;
    }
  }

  _os_nospin_lock_lock();
  memcpy(a3, a2, v6);

  return _os_nospin_lock_unlock();
}

uint64_t __atomic_store(uint64_t result, unsigned int *a2, unsigned int *a3, int a4)
{
  v6 = result;
  if (result > 3)
  {
    if (result == 4)
    {
      if ((a2 & 3) == 0)
      {
        v10 = *a3;
        if (a4 == 3 || a4 == 5)
        {
          atomic_store(v10, a2);
        }

        else
        {
          *a2 = v10;
        }

        return result;
      }
    }

    else if (result == 8 && (a2 & 7) == 0)
    {
      v8 = *a3;
      if (a4 == 3 || a4 == 5)
      {
        atomic_store(v8, a2);
      }

      else
      {
        *a2 = v8;
      }

      return result;
    }
  }

  else
  {
    if (result == 1)
    {
      v9 = *a3;
      if (a4 == 3 || a4 == 5)
      {
        atomic_store(v9, a2);
      }

      else
      {
        *a2 = v9;
      }

      return result;
    }

    if (result == 2 && (a2 & 1) == 0)
    {
      v7 = *a3;
      if (a4 == 3 || a4 == 5)
      {
        atomic_store(v7, a2);
      }

      else
      {
        *a2 = v7;
      }

      return result;
    }
  }

  _os_nospin_lock_lock();
  memcpy(a2, a3, v6);

  return _os_nospin_lock_unlock();
}

uint64_t __atomic_compare_exchange(int a1, atomic_ushort *a2, _WORD *a3, unsigned __int16 *a4, int a5, int a6)
{
  if (a1 <= 3)
  {
    if (a1 != 1)
    {
      if (a1 == 2 && (a2 & 1) == 0)
      {
        v10 = *a4;
        if (a5 > 3)
        {
          if (a5 == 4 || a5 == 5)
          {
            goto LABEL_73;
          }
        }

        else
        {
          if ((a5 - 1) < 2)
          {
            if ((a6 - 1) >= 2 && a6 == 5)
            {
              goto LABEL_73;
            }

            goto LABEL_63;
          }

          if (a5 == 3)
          {
            if ((a6 - 1) >= 2 && a6 != 5)
            {
              v17 = *a3;
              v18 = v17;
              atomic_compare_exchange_strong_explicit(a2, &v18, v10, memory_order_release, memory_order_relaxed);
              goto LABEL_74;
            }

            goto LABEL_73;
          }
        }

        if ((a6 - 1) >= 2)
        {
          if (a6 != 5)
          {
            v17 = *a3;
            v18 = v17;
            atomic_compare_exchange_strong_explicit(a2, &v18, v10, memory_order_relaxed, memory_order_relaxed);
LABEL_74:
            if (v18 != v17)
            {
              result = 0;
              *a3 = v18;
              return result;
            }

            return 1;
          }

LABEL_73:
          v17 = *a3;
          v18 = v17;
          atomic_compare_exchange_strong(a2, &v18, v10);
          goto LABEL_74;
        }

LABEL_63:
        v17 = *a3;
        v18 = v17;
        atomic_compare_exchange_strong_explicit(a2, &v18, v10, memory_order_acquire, memory_order_acquire);
        goto LABEL_74;
      }

      goto LABEL_24;
    }

    v12 = *a4;
    if (a5 > 3)
    {
      if (a5 == 4 || a5 == 5)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if ((a5 - 1) < 2)
      {
        if ((a6 - 1) >= 2 && a6 == 5)
        {
          goto LABEL_65;
        }

        goto LABEL_43;
      }

      if (a5 == 3)
      {
        if ((a6 - 1) >= 2 && a6 != 5)
        {
          v15 = *a3;
          v16 = v15;
          atomic_compare_exchange_strong_explicit(a2, &v16, v12, memory_order_release, memory_order_relaxed);
          goto LABEL_66;
        }

        goto LABEL_65;
      }
    }

    if ((a6 - 1) >= 2)
    {
      if (a6 != 5)
      {
        v15 = *a3;
        v16 = v15;
        atomic_compare_exchange_strong_explicit(a2, &v16, v12, memory_order_relaxed, memory_order_relaxed);
LABEL_66:
        if (v16 != v15)
        {
          result = 0;
          *a3 = v16;
          return result;
        }

        return 1;
      }

LABEL_65:
      v15 = *a3;
      v16 = v15;
      atomic_compare_exchange_strong(a2, &v16, v12);
      goto LABEL_66;
    }

LABEL_43:
    v15 = *a3;
    v16 = v15;
    atomic_compare_exchange_strong_explicit(a2, &v16, v12, memory_order_acquire, memory_order_acquire);
    goto LABEL_66;
  }

  if (a1 != 4)
  {
    if (a1 == 8 && (a2 & 7) == 0)
    {
      v11 = *a4;
      if (a5 > 3)
      {
        if (a5 == 4 || a5 == 5)
        {
          goto LABEL_78;
        }
      }

      else
      {
        if ((a5 - 1) < 2)
        {
          if ((a6 - 1) >= 2 && a6 == 5)
          {
            goto LABEL_78;
          }

          goto LABEL_69;
        }

        if (a5 == 3)
        {
          if ((a6 - 1) >= 2 && a6 != 5)
          {
            v19 = *a3;
            v20 = *a3;
            atomic_compare_exchange_strong_explicit(a2, &v20, v11, memory_order_release, memory_order_relaxed);
            goto LABEL_79;
          }

          goto LABEL_78;
        }
      }

      if ((a6 - 1) >= 2)
      {
        if (a6 != 5)
        {
          v19 = *a3;
          v20 = *a3;
          atomic_compare_exchange_strong_explicit(a2, &v20, v11, memory_order_relaxed, memory_order_relaxed);
LABEL_79:
          if (v20 != v19)
          {
            result = 0;
            *a3 = v20;
            return result;
          }

          return 1;
        }

LABEL_78:
        v19 = *a3;
        v20 = *a3;
        atomic_compare_exchange_strong(a2, &v20, v11);
        goto LABEL_79;
      }

LABEL_69:
      v19 = *a3;
      v20 = *a3;
      atomic_compare_exchange_strong_explicit(a2, &v20, v11, memory_order_acquire, memory_order_acquire);
      goto LABEL_79;
    }

LABEL_24:
    _os_nospin_lock_lock();
    if (memcmp(a2, a3, a1))
    {
      memcpy(a3, a2, a1);
      _os_nospin_lock_unlock();
      return 0;
    }

    memcpy(a2, a4, a1);
    _os_nospin_lock_unlock();
    return 1;
  }

  if ((a2 & 3) != 0)
  {
    goto LABEL_24;
  }

  v14 = *a4;
  if (a5 > 3)
  {
    if (a5 == 4 || a5 == 5)
    {
      goto LABEL_82;
    }
  }

  else
  {
    if ((a5 - 1) < 2)
    {
      if ((a6 - 1) >= 2 && a6 == 5)
      {
        goto LABEL_82;
      }

LABEL_71:
      v21 = *a3;
      v22 = *a3;
      atomic_compare_exchange_strong_explicit(a2, &v22, v14, memory_order_acquire, memory_order_acquire);
      goto LABEL_83;
    }

    if (a5 == 3)
    {
      if ((a6 - 1) >= 2 && a6 != 5)
      {
        v21 = *a3;
        v22 = *a3;
        atomic_compare_exchange_strong_explicit(a2, &v22, v14, memory_order_release, memory_order_relaxed);
        goto LABEL_83;
      }

      goto LABEL_82;
    }
  }

  if ((a6 - 1) < 2)
  {
    goto LABEL_71;
  }

  if (a6 == 5)
  {
LABEL_82:
    v21 = *a3;
    v22 = *a3;
    atomic_compare_exchange_strong(a2, &v22, v14);
    goto LABEL_83;
  }

  v21 = *a3;
  v22 = *a3;
  atomic_compare_exchange_strong_explicit(a2, &v22, v14, memory_order_relaxed, memory_order_relaxed);
LABEL_83:
  if (v22 == v21)
  {
    return 1;
  }

  result = 0;
  *a3 = v22;
  return result;
}

uint64_t __atomic_exchange(uint64_t result, atomic_ushort *a2, unsigned int *a3, unsigned __int16 *a4, int a5)
{
  v8 = result;
  if (result <= 3)
  {
    if (result != 1)
    {
      if (result == 2 && (a2 & 1) == 0)
      {
        v9 = *a3;
        if (a5 > 3)
        {
          if (a5 == 4 || a5 == 5)
          {
            v10 = atomic_exchange(a2, v9);
            goto LABEL_47;
          }
        }

        else
        {
          if ((a5 - 1) < 2)
          {
            v10 = atomic_exchange_explicit(a2, v9, memory_order_acquire);
LABEL_47:
            *a4 = v10;
            return result;
          }

          if (a5 == 3)
          {
            v10 = atomic_exchange_explicit(a2, v9, memory_order_release);
            goto LABEL_47;
          }
        }

        v10 = __swp(v9, a2);
        goto LABEL_47;
      }

      goto LABEL_18;
    }

    v13 = *a3;
    if (a5 > 3)
    {
      if (a5 == 4 || a5 == 5)
      {
        v14 = atomic_exchange(a2, v13);
        goto LABEL_33;
      }
    }

    else
    {
      if ((a5 - 1) < 2)
      {
        v14 = atomic_exchange_explicit(a2, v13, memory_order_acquire);
LABEL_33:
        *a4 = v14;
        return result;
      }

      if (a5 == 3)
      {
        v14 = atomic_exchange_explicit(a2, v13, memory_order_release);
        goto LABEL_33;
      }
    }

    v14 = __swp(v13, a2);
    goto LABEL_33;
  }

  if (result == 4)
  {
    if ((a2 & 3) != 0)
    {
      goto LABEL_18;
    }

    v15 = *a3;
    if (a5 > 3)
    {
      if (a5 == 4 || a5 == 5)
      {
        v16 = atomic_exchange(a2, v15);
        goto LABEL_51;
      }
    }

    else
    {
      if ((a5 - 1) < 2)
      {
        v16 = atomic_exchange_explicit(a2, v15, memory_order_acquire);
LABEL_51:
        *a4 = v16;
        return result;
      }

      if (a5 == 3)
      {
        v16 = atomic_exchange_explicit(a2, v15, memory_order_release);
        goto LABEL_51;
      }
    }

    v16 = __swp(v15, a2);
    goto LABEL_51;
  }

  if (result == 8 && (a2 & 7) == 0)
  {
    v11 = *a3;
    if (a5 > 3)
    {
      if (a5 == 4 || a5 == 5)
      {
        v12 = atomic_exchange(a2, v11);
        goto LABEL_49;
      }
    }

    else
    {
      if ((a5 - 1) < 2)
      {
        v12 = atomic_exchange_explicit(a2, v11, memory_order_acquire);
LABEL_49:
        *a4 = v12;
        return result;
      }

      if (a5 == 3)
      {
        v12 = atomic_exchange_explicit(a2, v11, memory_order_release);
        goto LABEL_49;
      }
    }

    v12 = __swp(v11, a2);
    goto LABEL_49;
  }

LABEL_18:
  _os_nospin_lock_lock();
  memcpy(a4, a2, v8);
  memcpy(a2, a3, v8);

  return _os_nospin_lock_unlock();
}

unsigned __int8 __atomic_load_1(atomic_uchar *a1, int a2)
{
  if ((a2 - 1) < 2)
  {
    return atomic_load_explicit(a1, memory_order_acquire);
  }

  if (a2 == 5)
  {
    return atomic_load(a1);
  }

  return *a1;
}

unsigned __int16 __atomic_load_2(atomic_ushort *a1, int a2)
{
  if ((a2 - 1) < 2)
  {
    return atomic_load_explicit(a1, memory_order_acquire);
  }

  if (a2 == 5)
  {
    return atomic_load(a1);
  }

  return *a1;
}

uint64_t __atomic_load_4(atomic_uint *a1, int a2)
{
  if ((a2 - 1) < 2)
  {
    return atomic_load_explicit(a1, memory_order_acquire);
  }

  if (a2 == 5)
  {
    return atomic_load(a1);
  }

  return *a1;
}

unint64_t __atomic_load_8(atomic_ullong *a1, int a2)
{
  if ((a2 - 1) < 2)
  {
    return atomic_load_explicit(a1, memory_order_acquire);
  }

  if (a2 == 5)
  {
    return atomic_load(a1);
  }

  return *a1;
}

unsigned __int8 *__atomic_store_1(unsigned __int8 *result, unsigned __int8 a2, int a3)
{
  if (a3 == 3 || a3 == 5)
  {
    atomic_store(a2, result);
  }

  else
  {
    *result = a2;
  }

  return result;
}

unsigned __int16 *__atomic_store_2(unsigned __int16 *result, unsigned __int16 a2, int a3)
{
  if (a3 == 3 || a3 == 5)
  {
    atomic_store(a2, result);
  }

  else
  {
    *result = a2;
  }

  return result;
}

unsigned int *__atomic_store_4(unsigned int *result, unsigned int a2, int a3)
{
  if (a3 == 3 || a3 == 5)
  {
    atomic_store(a2, result);
  }

  else
  {
    *result = a2;
  }

  return result;
}

unint64_t *__atomic_store_8(unint64_t *result, unint64_t a2, int a3)
{
  if (a3 == 3 || a3 == 5)
  {
    atomic_store(a2, result);
  }

  else
  {
    *result = a2;
  }

  return result;
}

atomic_uchar *__atomic_exchange_1(atomic_uchar *result, unsigned __int8 a2, int a3)
{
  if (a3 > 3)
  {
    if (a3 == 4 || a3 == 5)
    {
      return atomic_exchange(result, a2);
    }
  }

  else
  {
    if ((a3 - 1) < 2)
    {
      return atomic_exchange_explicit(result, a2, memory_order_acquire);
    }

    if (a3 == 3)
    {
      return atomic_exchange_explicit(result, a2, memory_order_release);
    }
  }

  __swp(result, result);
  return result;
}

atomic_ushort *__atomic_exchange_2(atomic_ushort *result, unsigned __int16 a2, int a3)
{
  if (a3 > 3)
  {
    if (a3 == 4 || a3 == 5)
    {
      return atomic_exchange(result, a2);
    }
  }

  else
  {
    if ((a3 - 1) < 2)
    {
      return atomic_exchange_explicit(result, a2, memory_order_acquire);
    }

    if (a3 == 3)
    {
      return atomic_exchange_explicit(result, a2, memory_order_release);
    }
  }

  __swp(result, result);
  return result;
}

atomic_uint *__atomic_exchange_4(atomic_uint *result, unsigned int a2, int a3)
{
  if (a3 > 3)
  {
    if (a3 == 4 || a3 == 5)
    {
      return atomic_exchange(result, a2);
    }
  }

  else
  {
    if ((a3 - 1) < 2)
    {
      return atomic_exchange_explicit(result, a2, memory_order_acquire);
    }

    if (a3 == 3)
    {
      return atomic_exchange_explicit(result, a2, memory_order_release);
    }
  }

  __swp(result, result);
  return result;
}

atomic_ullong *__atomic_exchange_8(atomic_ullong *result, unint64_t a2, int a3)
{
  if (a3 > 3)
  {
    if (a3 == 4 || a3 == 5)
    {
      return atomic_exchange(result, a2);
    }
  }

  else
  {
    if ((a3 - 1) < 2)
    {
      return atomic_exchange_explicit(result, a2, memory_order_acquire);
    }

    if (a3 == 3)
    {
      return atomic_exchange_explicit(result, a2, memory_order_release);
    }
  }

  __swp(result, result);
  return result;
}

uint64_t __atomic_compare_exchange_1(atomic_uchar *a1, _BYTE *a2, unsigned __int8 a3, int a4, int a5)
{
  if (a4 > 3)
  {
    if (a4 == 4 || a4 == 5)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((a4 - 1) < 2)
    {
      if ((a5 - 1) >= 2 && a5 == 5)
      {
        goto LABEL_16;
      }

LABEL_14:
      v5 = *a2;
      v6 = v5;
      atomic_compare_exchange_strong_explicit(a1, &v6, a3, memory_order_acquire, memory_order_acquire);
      goto LABEL_17;
    }

    if (a4 == 3)
    {
      if ((a5 - 1) >= 2 && a5 != 5)
      {
        v5 = *a2;
        v6 = v5;
        atomic_compare_exchange_strong_explicit(a1, &v6, a3, memory_order_release, memory_order_relaxed);
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  if ((a5 - 1) < 2)
  {
    goto LABEL_14;
  }

  if (a5 == 5)
  {
LABEL_16:
    v5 = *a2;
    v6 = v5;
    atomic_compare_exchange_strong(a1, &v6, a3);
    goto LABEL_17;
  }

  v5 = *a2;
  v6 = v5;
  atomic_compare_exchange_strong_explicit(a1, &v6, a3, memory_order_relaxed, memory_order_relaxed);
LABEL_17:
  if (v6 == v5)
  {
    return 1;
  }

  result = 0;
  *a2 = v6;
  return result;
}

uint64_t __atomic_compare_exchange_2(atomic_ushort *a1, _WORD *a2, unsigned __int16 a3, int a4, int a5)
{
  if (a4 > 3)
  {
    if (a4 == 4 || a4 == 5)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((a4 - 1) < 2)
    {
      if ((a5 - 1) >= 2 && a5 == 5)
      {
        goto LABEL_16;
      }

LABEL_14:
      v5 = *a2;
      v6 = v5;
      atomic_compare_exchange_strong_explicit(a1, &v6, a3, memory_order_acquire, memory_order_acquire);
      goto LABEL_17;
    }

    if (a4 == 3)
    {
      if ((a5 - 1) >= 2 && a5 != 5)
      {
        v5 = *a2;
        v6 = v5;
        atomic_compare_exchange_strong_explicit(a1, &v6, a3, memory_order_release, memory_order_relaxed);
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  if ((a5 - 1) < 2)
  {
    goto LABEL_14;
  }

  if (a5 == 5)
  {
LABEL_16:
    v5 = *a2;
    v6 = v5;
    atomic_compare_exchange_strong(a1, &v6, a3);
    goto LABEL_17;
  }

  v5 = *a2;
  v6 = v5;
  atomic_compare_exchange_strong_explicit(a1, &v6, a3, memory_order_relaxed, memory_order_relaxed);
LABEL_17:
  if (v6 == v5)
  {
    return 1;
  }

  result = 0;
  *a2 = v6;
  return result;
}

uint64_t __atomic_compare_exchange_4(atomic_uint *a1, int *a2, unsigned int a3, int a4, int a5)
{
  if (a4 > 3)
  {
    if (a4 == 4 || a4 == 5)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((a4 - 1) < 2)
    {
      if ((a5 - 1) >= 2 && a5 == 5)
      {
        goto LABEL_16;
      }

LABEL_14:
      v5 = *a2;
      v6 = *a2;
      atomic_compare_exchange_strong_explicit(a1, &v6, a3, memory_order_acquire, memory_order_acquire);
      goto LABEL_17;
    }

    if (a4 == 3)
    {
      if ((a5 - 1) >= 2 && a5 != 5)
      {
        v5 = *a2;
        v6 = *a2;
        atomic_compare_exchange_strong_explicit(a1, &v6, a3, memory_order_release, memory_order_relaxed);
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  if ((a5 - 1) < 2)
  {
    goto LABEL_14;
  }

  if (a5 == 5)
  {
LABEL_16:
    v5 = *a2;
    v6 = *a2;
    atomic_compare_exchange_strong(a1, &v6, a3);
    goto LABEL_17;
  }

  v5 = *a2;
  v6 = *a2;
  atomic_compare_exchange_strong_explicit(a1, &v6, a3, memory_order_relaxed, memory_order_relaxed);
LABEL_17:
  if (v6 == v5)
  {
    return 1;
  }

  result = 0;
  *a2 = v6;
  return result;
}

uint64_t __atomic_compare_exchange_8(atomic_ullong *a1, uint64_t *a2, unint64_t a3, int a4, int a5)
{
  if (a4 > 3)
  {
    if (a4 == 4 || a4 == 5)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((a4 - 1) < 2)
    {
      if ((a5 - 1) >= 2 && a5 == 5)
      {
        goto LABEL_16;
      }

LABEL_14:
      v5 = *a2;
      v6 = *a2;
      atomic_compare_exchange_strong_explicit(a1, &v6, a3, memory_order_acquire, memory_order_acquire);
      goto LABEL_17;
    }

    if (a4 == 3)
    {
      if ((a5 - 1) >= 2 && a5 != 5)
      {
        v5 = *a2;
        v6 = *a2;
        atomic_compare_exchange_strong_explicit(a1, &v6, a3, memory_order_release, memory_order_relaxed);
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  if ((a5 - 1) < 2)
  {
    goto LABEL_14;
  }

  if (a5 == 5)
  {
LABEL_16:
    v5 = *a2;
    v6 = *a2;
    atomic_compare_exchange_strong(a1, &v6, a3);
    goto LABEL_17;
  }

  v5 = *a2;
  v6 = *a2;
  atomic_compare_exchange_strong_explicit(a1, &v6, a3, memory_order_relaxed, memory_order_relaxed);
LABEL_17:
  if (v6 == v5)
  {
    return 1;
  }

  result = 0;
  *a2 = v6;
  return result;
}

uint64_t __atomic_fetch_add_1(atomic_uchar *a1, unsigned __int8 a2, int a3)
{
  if (a3 > 3)
  {
    if (a3 == 4 || a3 == 5)
    {
      return atomic_fetch_add(a1, a2);
    }
  }

  else
  {
    if ((a3 - 1) < 2)
    {
      return atomic_fetch_add_explicit(a1, a2, memory_order_acquire);
    }

    if (a3 == 3)
    {
      return atomic_fetch_add_explicit(a1, a2, memory_order_release);
    }
  }

  return atomic_fetch_add_explicit(a1, a2, memory_order_relaxed);
}

uint64_t __atomic_fetch_add_2(atomic_ushort *a1, unsigned __int16 a2, int a3)
{
  if (a3 > 3)
  {
    if (a3 == 4 || a3 == 5)
    {
      return atomic_fetch_add(a1, a2);
    }
  }

  else
  {
    if ((a3 - 1) < 2)
    {
      return atomic_fetch_add_explicit(a1, a2, memory_order_acquire);
    }

    if (a3 == 3)
    {
      return atomic_fetch_add_explicit(a1, a2, memory_order_release);
    }
  }

  return atomic_fetch_add_explicit(a1, a2, memory_order_relaxed);
}

uint64_t __atomic_fetch_add_4(atomic_uint *a1, unsigned int a2, int a3)
{
  if (a3 > 3)
  {
    if (a3 == 4 || a3 == 5)
    {
      return atomic_fetch_add(a1, a2);
    }
  }

  else
  {
    if ((a3 - 1) < 2)
    {
      return atomic_fetch_add_explicit(a1, a2, memory_order_acquire);
    }

    if (a3 == 3)
    {
      return atomic_fetch_add_explicit(a1, a2, memory_order_release);
    }
  }

  return atomic_fetch_add_explicit(a1, a2, memory_order_relaxed);
}

unint64_t __atomic_fetch_add_8(atomic_ullong *a1, unint64_t a2, int a3)
{
  if (a3 > 3)
  {
    if (a3 == 4 || a3 == 5)
    {
      return atomic_fetch_add(a1, a2);
    }
  }

  else
  {
    if ((a3 - 1) < 2)
    {
      return atomic_fetch_add_explicit(a1, a2, memory_order_acquire);
    }

    if (a3 == 3)
    {
      return atomic_fetch_add_explicit(a1, a2, memory_order_release);
    }
  }

  return atomic_fetch_add_explicit(a1, a2, memory_order_relaxed);
}

uint64_t __atomic_fetch_sub_1(atomic_uchar *a1, char a2, int a3)
{
  if (a3 > 3)
  {
    if (a3 == 4 || a3 == 5)
    {
      return atomic_fetch_add(a1, -a2);
    }
  }

  else
  {
    if ((a3 - 1) < 2)
    {
      return atomic_fetch_add_explicit(a1, -a2, memory_order_acquire);
    }

    if (a3 == 3)
    {
      return atomic_fetch_add_explicit(a1, -a2, memory_order_release);
    }
  }

  return atomic_fetch_add_explicit(a1, -a2, memory_order_relaxed);
}

uint64_t __atomic_fetch_sub_2(atomic_ushort *a1, __int16 a2, int a3)
{
  if (a3 > 3)
  {
    if (a3 == 4 || a3 == 5)
    {
      return atomic_fetch_add(a1, -a2);
    }
  }

  else
  {
    if ((a3 - 1) < 2)
    {
      return atomic_fetch_add_explicit(a1, -a2, memory_order_acquire);
    }

    if (a3 == 3)
    {
      return atomic_fetch_add_explicit(a1, -a2, memory_order_release);
    }
  }

  return atomic_fetch_add_explicit(a1, -a2, memory_order_relaxed);
}

uint64_t __atomic_fetch_sub_4(atomic_uint *a1, int a2, int a3)
{
  if (a3 > 3)
  {
    if (a3 == 4 || a3 == 5)
    {
      return atomic_fetch_add(a1, -a2);
    }
  }

  else
  {
    if ((a3 - 1) < 2)
    {
      return atomic_fetch_add_explicit(a1, -a2, memory_order_acquire);
    }

    if (a3 == 3)
    {
      return atomic_fetch_add_explicit(a1, -a2, memory_order_release);
    }
  }

  return atomic_fetch_add_explicit(a1, -a2, memory_order_relaxed);
}

unint64_t __atomic_fetch_sub_8(atomic_ullong *a1, uint64_t a2, int a3)
{
  if (a3 > 3)
  {
    if (a3 == 4 || a3 == 5)
    {
      return atomic_fetch_add(a1, -a2);
    }
  }

  else
  {
    if ((a3 - 1) < 2)
    {
      return atomic_fetch_add_explicit(a1, -a2, memory_order_acquire);
    }

    if (a3 == 3)
    {
      return atomic_fetch_add_explicit(a1, -a2, memory_order_release);
    }
  }

  return atomic_fetch_add_explicit(a1, -a2, memory_order_relaxed);
}

uint64_t __atomic_fetch_and_1(atomic_uchar *a1, unsigned __int8 a2, int a3)
{
  if (a3 > 3)
  {
    if (a3 == 4 || a3 == 5)
    {
      return atomic_fetch_and(a1, a2);
    }
  }

  else
  {
    if ((a3 - 1) < 2)
    {
      return atomic_fetch_and_explicit(a1, a2, memory_order_acquire);
    }

    if (a3 == 3)
    {
      return atomic_fetch_and_explicit(a1, a2, memory_order_release);
    }
  }

  return atomic_fetch_and_explicit(a1, a2, memory_order_relaxed);
}

uint64_t __atomic_fetch_and_2(atomic_ushort *a1, unsigned __int16 a2, int a3)
{
  if (a3 > 3)
  {
    if (a3 == 4 || a3 == 5)
    {
      return atomic_fetch_and(a1, a2);
    }
  }

  else
  {
    if ((a3 - 1) < 2)
    {
      return atomic_fetch_and_explicit(a1, a2, memory_order_acquire);
    }

    if (a3 == 3)
    {
      return atomic_fetch_and_explicit(a1, a2, memory_order_release);
    }
  }

  return atomic_fetch_and_explicit(a1, a2, memory_order_relaxed);
}

uint64_t __atomic_fetch_and_4(atomic_uint *a1, unsigned int a2, int a3)
{
  if (a3 > 3)
  {
    if (a3 == 4 || a3 == 5)
    {
      return atomic_fetch_and(a1, a2);
    }
  }

  else
  {
    if ((a3 - 1) < 2)
    {
      return atomic_fetch_and_explicit(a1, a2, memory_order_acquire);
    }

    if (a3 == 3)
    {
      return atomic_fetch_and_explicit(a1, a2, memory_order_release);
    }
  }

  return atomic_fetch_and_explicit(a1, a2, memory_order_relaxed);
}

unint64_t __atomic_fetch_and_8(atomic_ullong *a1, unint64_t a2, int a3)
{
  if (a3 > 3)
  {
    if (a3 == 4 || a3 == 5)
    {
      return atomic_fetch_and(a1, a2);
    }
  }

  else
  {
    if ((a3 - 1) < 2)
    {
      return atomic_fetch_and_explicit(a1, a2, memory_order_acquire);
    }

    if (a3 == 3)
    {
      return atomic_fetch_and_explicit(a1, a2, memory_order_release);
    }
  }

  return atomic_fetch_and_explicit(a1, a2, memory_order_relaxed);
}

uint64_t __atomic_fetch_or_1(atomic_uchar *a1, unsigned __int8 a2, int a3)
{
  if (a3 > 3)
  {
    if (a3 == 4 || a3 == 5)
    {
      return atomic_fetch_or(a1, a2);
    }
  }

  else
  {
    if ((a3 - 1) < 2)
    {
      return atomic_fetch_or_explicit(a1, a2, memory_order_acquire);
    }

    if (a3 == 3)
    {
      return atomic_fetch_or_explicit(a1, a2, memory_order_release);
    }
  }

  return atomic_fetch_or_explicit(a1, a2, memory_order_relaxed);
}

uint64_t __atomic_fetch_or_2(atomic_ushort *a1, unsigned __int16 a2, int a3)
{
  if (a3 > 3)
  {
    if (a3 == 4 || a3 == 5)
    {
      return atomic_fetch_or(a1, a2);
    }
  }

  else
  {
    if ((a3 - 1) < 2)
    {
      return atomic_fetch_or_explicit(a1, a2, memory_order_acquire);
    }

    if (a3 == 3)
    {
      return atomic_fetch_or_explicit(a1, a2, memory_order_release);
    }
  }

  return atomic_fetch_or_explicit(a1, a2, memory_order_relaxed);
}

uint64_t __atomic_fetch_or_4(atomic_uint *a1, unsigned int a2, int a3)
{
  if (a3 > 3)
  {
    if (a3 == 4 || a3 == 5)
    {
      return atomic_fetch_or(a1, a2);
    }
  }

  else
  {
    if ((a3 - 1) < 2)
    {
      return atomic_fetch_or_explicit(a1, a2, memory_order_acquire);
    }

    if (a3 == 3)
    {
      return atomic_fetch_or_explicit(a1, a2, memory_order_release);
    }
  }

  return atomic_fetch_or_explicit(a1, a2, memory_order_relaxed);
}

unint64_t __atomic_fetch_or_8(atomic_ullong *a1, unint64_t a2, int a3)
{
  if (a3 > 3)
  {
    if (a3 == 4 || a3 == 5)
    {
      return atomic_fetch_or(a1, a2);
    }
  }

  else
  {
    if ((a3 - 1) < 2)
    {
      return atomic_fetch_or_explicit(a1, a2, memory_order_acquire);
    }

    if (a3 == 3)
    {
      return atomic_fetch_or_explicit(a1, a2, memory_order_release);
    }
  }

  return atomic_fetch_or_explicit(a1, a2, memory_order_relaxed);
}

uint64_t __atomic_fetch_xor_1(atomic_uchar *a1, unsigned __int8 a2, int a3)
{
  if (a3 > 3)
  {
    if (a3 == 4 || a3 == 5)
    {
      return atomic_fetch_xor(a1, a2);
    }
  }

  else
  {
    if ((a3 - 1) < 2)
    {
      return atomic_fetch_xor_explicit(a1, a2, memory_order_acquire);
    }

    if (a3 == 3)
    {
      return atomic_fetch_xor_explicit(a1, a2, memory_order_release);
    }
  }

  return atomic_fetch_xor_explicit(a1, a2, memory_order_relaxed);
}

uint64_t __atomic_fetch_xor_2(atomic_ushort *a1, unsigned __int16 a2, int a3)
{
  if (a3 > 3)
  {
    if (a3 == 4 || a3 == 5)
    {
      return atomic_fetch_xor(a1, a2);
    }
  }

  else
  {
    if ((a3 - 1) < 2)
    {
      return atomic_fetch_xor_explicit(a1, a2, memory_order_acquire);
    }

    if (a3 == 3)
    {
      return atomic_fetch_xor_explicit(a1, a2, memory_order_release);
    }
  }

  return atomic_fetch_xor_explicit(a1, a2, memory_order_relaxed);
}

uint64_t __atomic_fetch_xor_4(atomic_uint *a1, unsigned int a2, int a3)
{
  if (a3 > 3)
  {
    if (a3 == 4 || a3 == 5)
    {
      return atomic_fetch_xor(a1, a2);
    }
  }

  else
  {
    if ((a3 - 1) < 2)
    {
      return atomic_fetch_xor_explicit(a1, a2, memory_order_acquire);
    }

    if (a3 == 3)
    {
      return atomic_fetch_xor_explicit(a1, a2, memory_order_release);
    }
  }

  return atomic_fetch_xor_explicit(a1, a2, memory_order_relaxed);
}

unint64_t __atomic_fetch_xor_8(atomic_ullong *a1, unint64_t a2, int a3)
{
  if (a3 > 3)
  {
    if (a3 == 4 || a3 == 5)
    {
      return atomic_fetch_xor(a1, a2);
    }
  }

  else
  {
    if ((a3 - 1) < 2)
    {
      return atomic_fetch_xor_explicit(a1, a2, memory_order_acquire);
    }

    if (a3 == 3)
    {
      return atomic_fetch_xor_explicit(a1, a2, memory_order_release);
    }
  }

  return atomic_fetch_xor_explicit(a1, a2, memory_order_relaxed);
}

void atomic_flag_clear_explicit(atomic_flag *a1, memory_order a2)
{
  if (a2 == memory_order_release || a2 == memory_order_seq_cst)
  {
    atomic_store(0, a1);
  }

  else
  {
    a1->_Value = 0;
  }
}

BOOL atomic_flag_test_and_set_explicit(atomic_flag *a1, memory_order a2)
{
  if (a2 > memory_order_release)
  {
    if (a2 == memory_order_acq_rel || a2 == memory_order_seq_cst)
    {
      v2 = atomic_exchange(&a1->_Value, 1u);
      return v2 & 1;
    }

LABEL_9:
    v2 = __swp(1u, a1);
    return v2 & 1;
  }

  if ((a2 - 1) >= 2)
  {
    if (a2 == memory_order_release)
    {
      v2 = atomic_exchange_explicit(&a1->_Value, 1u, memory_order_release);
      return v2 & 1;
    }

    goto LABEL_9;
  }

  v2 = atomic_exchange_explicit(&a1->_Value, 1u, memory_order_acquire);
  return v2 & 1;
}

unint64_t __divti3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 ^ (a2 >> 63);
  v5 = a4 >> 63;
  v6 = v4 + (a2 >> 63);
  if (__CFADD__(v4, a2 >> 63))
  {
    v7 = (a2 ^ (a2 >> 63)) + 1;
  }

  else
  {
    v7 = a2 ^ (a2 >> 63);
  }

  v8 = a3 ^ (a4 >> 63);
  v9 = v8 + (a4 >> 63);
  if (__CFADD__(v8, a4 >> 63))
  {
    v10 = (a4 ^ (a4 >> 63)) + 1;
  }

  else
  {
    v10 = a4 ^ (a4 >> 63);
  }

  return (__udivmodti4(v6, v7, v9, v10, 0) ^ v5 ^ (a2 >> 63)) - (v5 ^ (a2 >> 63));
}

float __extendhfsf2(__int16 a1)
{
  v1 = a1 & 0x7FFF;
  v2 = __clz(v1);
  v3 = (v1 << (v2 - 8)) ^ 0x800000 | (1124073472 - (v2 << 23));
  if ((a1 & 0x7FFF) == 0)
  {
    v3 = 0;
  }

  if ((a1 & 0x7FFF) >> 10 >= 0x1Fu)
  {
    v4 = (v1 << 13) | 0x7F800000;
  }

  else
  {
    v4 = v3;
  }

  v5 = (v1 << 13) + 939524096;
  if (((a1 & 0x7FFFu) - 1024) >> 11 > 0xE)
  {
    v5 = v4;
  }

  LODWORD(result) = v5 | ((a1 & 0x8000) << 16);
  return result;
}

uint64_t __gcc_personality_v0(int a1, char a2, int a3, uint64_t a4, _Unwind_Context *context)
{
  if (a2)
  {
    return 8;
  }

  LanguageSpecificData = _Unwind_GetLanguageSpecificData(context);
  if (!LanguageSpecificData)
  {
    return 8;
  }

  v8 = LanguageSpecificData;
  IP = _Unwind_GetIP(context);
  RegionStart = _Unwind_GetRegionStart(context);
  if (RegionStart)
  {
    v41 = RegionStart;
    v11 = ~RegionStart;
  }

  else
  {
    v41 = 0;
    v11 = -1;
  }

  v15 = *v8;
  v14 = (v8 + 1);
  v13 = v15;
  v42 = v14;
  if (v15 != 255)
  {
    readEncodedPointer(&v42, v13);
    v14 = v42;
  }

  v17 = *v14;
  v16 = (v14 + 1);
  v42 = v16;
  if (v17 != 255)
  {
    do
    {
      v18 = *v16;
      v16 = (v16 + 1);
    }

    while (v18 < 0);
  }

  v19 = 0;
  v20 = 0;
  v21 = v11 + IP;
  v22 = (v16 + 1);
  v42 = (v16 + 1);
  v23 = *v16;
  do
  {
    v24 = *v22;
    v22 = (v22 + 1);
    v19 |= (v24 & 0x7F) << v20;
    v20 += 7;
  }

  while (v24 < 0);
  v40 = v22;
  if (!v19)
  {
    return 8;
  }

  v25 = (v22 + v19);
  while (1)
  {
    v26 = readEncodedPointer(&v40, v23);
    if (v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v39 = v27;
    v28 = readEncodedPointer(&v40, v23);
    if (v28)
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v38 = v29;
    v30 = readEncodedPointer(&v40, v23);
    if (v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v37 = v31;
    v32 = v40;
    do
    {
      v33 = *v32;
      v32 = (v32 + 1);
    }

    while (v33 < 0);
    v40 = v32;
    if (!v31)
    {
      goto LABEL_32;
    }

    if (v39)
    {
      v34 = v39;
      if (v39 > v21)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v34 = 0;
    }

    if (v21 < v38 + v34)
    {
      break;
    }

LABEL_32:
    if (v32 >= v25)
    {
      return 8;
    }
  }

  MEMORY[0x29C2B0240](context, 0, a4);
  MEMORY[0x29C2B0240](context, 1, 0);
  if (v41)
  {
    v35 = v41;
  }

  else
  {
    v35 = 0;
  }

  v36 = v37 + v35;
  _Unwind_GetGR(context, -2);
  _Unwind_SetIP(context, v36);
  return 7;
}

unint64_t readEncodedPointer(unsigned __int16 **a1, unsigned int a2)
{
  if (a2 == 255)
  {
    return 0;
  }

  v2 = *a1;
  v3 = a2 & 0xF;
  if (v3 <= 3)
  {
    if ((a2 & 0xF) <= 1)
    {
      if ((a2 & 0xF) != 0)
      {
        v4 = 0;
        v5 = 0;
        v6 = *a1;
        do
        {
          v7 = *v6;
          v6 = (v6 + 1);
          v4 |= (v7 & 0x7F) << v5;
          v5 += 7;
        }

        while (v7 < 0);
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    if (v3 == 2)
    {
      v6 = v2 + 1;
      v4 = *v2;
      goto LABEL_21;
    }

    if (v3 == 3)
    {
      v6 = v2 + 2;
      v4 = *v2;
      goto LABEL_21;
    }

    goto LABEL_29;
  }

  if ((a2 & 0xF) > 0xA)
  {
    if (v3 == 11)
    {
      v6 = v2 + 2;
      v4 = *v2;
      goto LABEL_21;
    }

    if (v3 == 12)
    {
      goto LABEL_18;
    }

    goto LABEL_29;
  }

  if (v3 == 4)
  {
LABEL_18:
    v6 = v2 + 4;
    v4 = *v2;
    goto LABEL_21;
  }

  if (v3 != 10)
  {
LABEL_29:
    __compilerrt_abort_impl("/Library/Caches/com.apple.xbs/Sources/Libcompiler_rt/lib/builtins/gcc_personality_v0.c", 121, "readEncodedPointer");
  }

  v6 = v2 + 1;
  v4 = *v2;
LABEL_21:
  v8 = (a2 >> 4) & 7;
  if (v8)
  {
    if (v8 != 1)
    {
      __compilerrt_abort_impl("/Library/Caches/com.apple.xbs/Sources/Libcompiler_rt/lib/builtins/gcc_personality_v0.c", 139, "readEncodedPointer");
    }

    v4 += v2;
  }

  if ((a2 & 0x80) != 0)
  {
    v4 = *v4;
  }

  *a1 = v6;
  return v4;
}

unint64_t __modti3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 ^ (a4 >> 63);
  v6 = v5 + (a4 >> 63);
  if (__CFADD__(v5, a4 >> 63))
  {
    v7 = (a4 ^ (a4 >> 63)) + 1;
  }

  else
  {
    v7 = a4 ^ (a4 >> 63);
  }

  v8 = a1 ^ (a2 >> 63);
  v9 = v8 + (a2 >> 63);
  if (__CFADD__(v8, a2 >> 63))
  {
    v10 = (a2 ^ (a2 >> 63)) + 1;
  }

  else
  {
    v10 = a2 ^ (a2 >> 63);
  }

  v12[0] = 0;
  v12[1] = 0;
  __udivmodti4(v9, v10, v6, v7, v12);
  return (v12[0] ^ (a2 >> 63)) + (a2 >> 63);
}

float __mulsc3(float a1, float a2, float a3, float a4, double a5, int32x4_t a6)
{
  *a6.i32 = a1;
  v6 = a6;
  *&v6.i32[1] = a2;
  v7 = vmulq_f32(vzip1q_s32(v6, vrev64q_s32(v6)), vdupq_lane_s64(__SPAIR64__(LODWORD(a4), LODWORD(a3)), 0)).u64[0];
  return *&v7 - *(&v7 + 1);
}

double __powidf2(int a1, double a2)
{
  if (a1)
  {
    v2 = a2;
  }

  else
  {
    v2 = 1.0;
  }

  if ((a1 + 1) >= 3)
  {
    v3 = a1;
    do
    {
      v4 = v3;
      v3 /= 2;
      a2 = a2 * a2;
      if ((v4 / 2))
      {
        v2 = a2 * v2;
      }
    }

    while ((v3 + 1) > 2);
  }

  result = 1.0 / v2;
  if (a1 >= 0)
  {
    return v2;
  }

  return result;
}

float __powisf2(int a1, float a2)
{
  if (a1)
  {
    v2 = a2;
  }

  else
  {
    v2 = 1.0;
  }

  if ((a1 + 1) >= 3)
  {
    v3 = a1;
    do
    {
      v4 = v3;
      v3 /= 2;
      a2 = a2 * a2;
      if ((v4 / 2))
      {
        v2 = a2 * v2;
      }
    }

    while ((v3 + 1) > 2);
  }

  result = 1.0 / v2;
  if (a1 >= 0)
  {
    return v2;
  }

  return result;
}

uint64_t __truncdfhf2(double a1)
{
  v1 = *&a1 & 0x7FFFFFFFFFFFFFFFLL;
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) - 0x3F10000000000000 >= (*&a1 & 0x7FFFFFFFFFFFFFFFuLL) - 0x40F0000000000000)
  {
    if (v1 < 0x7FF0000000000001)
    {
      v4 = v1 >> 52;
      if (v4 <= 0x40E)
      {
        if (v4 >= 0x3BD)
        {
          v5 = -15 - v4;
          v6 = *&a1 & 0xFFFFFFFFFFFFFLL | 0x10000000000000;
          v7 = v6 << (v4 + 79) != 0;
          v8 = v6 >> v5;
          v9 = v8 >> 42;
          v10 = v8 & 0x3FFFFFFFFFFLL | v7;
          v11 = ((v8 >> 42) & 1) + (v8 >> 42);
          if (v10 != 0x20000000000)
          {
            LOWORD(v11) = v9;
          }

          if (v10 >= 0x20000000001)
          {
            LOWORD(v2) = v9 + 1;
          }

          else
          {
            LOWORD(v2) = v11;
          }
        }

        else
        {
          LOWORD(v2) = 0;
        }
      }

      else
      {
        LOWORD(v2) = 31744;
      }
    }

    else
    {
      LODWORD(v2) = (*&a1 >> 42) & 0x1FF | 0x7E00;
    }
  }

  else
  {
    v2 = *&a1 >> 42;
    v3 = (*&a1 >> 42) + 0x4000;
    if ((*&a1 & 0x3FFFFFFFFFFLL) == 0x20000000000)
    {
      v3 += (*&a1 >> 42) & 1;
    }

    LOWORD(v2) = v2 + 16385;
    if ((*&a1 & 0x3FFFFFFFFFFuLL) < 0x20000000001)
    {
      LOWORD(v2) = v3;
    }
  }

  return (v2 | HIWORD(a1) & 0x8000);
}

uint64_t __truncsfhf2(float a1)
{
  v1 = LODWORD(a1) & 0x7FFFFFFF;
  if ((LODWORD(a1) & 0x7FFFFFFFu) - 947912704 >= (LODWORD(a1) & 0x7FFFFFFFu) - 1199570944)
  {
    if (v1 < 0x7F800001)
    {
      if (v1 >> 23 <= 0x8E)
      {
        if (HIBYTE(v1) >= 0x2Du)
        {
          v3 = LODWORD(a1) & 0x7FFFFF | 0x800000;
          v4 = v3 << ((v1 >> 23) - 81) != 0;
          v5 = v3 >> (113 - (v1 >> 23));
          v6 = v5 >> 13;
          v7 = v5 & 0x1FFF | v4;
          v2 = ((v5 >> 13) & 1) + (v5 >> 13);
          if (v7 != 4096)
          {
            LOWORD(v2) = v6;
          }

          if (v7 > 0x1000)
          {
            LOWORD(v2) = v6 + 1;
          }
        }

        else
        {
          LOWORD(v2) = 0;
        }
      }

      else
      {
        LOWORD(v2) = 31744;
      }
    }

    else
    {
      v2 = (LODWORD(a1) >> 13) & 0x1FF | 0x7E00;
    }
  }

  else
  {
    v2 = (LODWORD(a1) >> 13) + 0x4000;
    if ((LOWORD(a1) & 0x1FFF) == 0x1000)
    {
      LOWORD(v2) = ((LODWORD(a1) >> 13) & 1) + v2;
    }

    if ((LOWORD(a1) & 0x1FFFu) > 0x1000)
    {
      LOWORD(v2) = (LODWORD(a1) >> 13) + 16385;
    }
  }

  return (v2 | (LODWORD(a1) >> 31 << 15));
}

unint64_t __umodti3(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5[0] = 0;
  v5[1] = 0;
  __udivmodti4(a1, a2, a3, a4, v5);
  return v5[0];
}