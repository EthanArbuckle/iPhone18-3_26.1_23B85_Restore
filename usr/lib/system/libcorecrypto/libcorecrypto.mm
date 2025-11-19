uint64_t ccrng_schedule_tree_read(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*(v2 + 8))
  {
    v3 = 3;
  }

  else
  {
    v3 = (**v2)(*(a1 + 16));
    *(v2 + 8) = v3 == 3;
  }

  v4 = *(a1 + 24);
  if (*(v4 + 8))
  {
    LODWORD(result) = 3;
  }

  else
  {
    LODWORD(result) = (**v4)(v4);
    *(v4 + 8) = result == 3;
  }

  if (v3 <= result)
  {
    return result;
  }

  else
  {
    return v3;
  }
}

uint64_t generate()
{
  result = process_rng_ctx();
  if (result)
  {
    generate_cold_1();
  }

  return result;
}

uint64_t generate_3(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_2();
  v5 = 0;
  v7 = v6 + 192;
  v8 = *(v6 + 184);
  while (v8 + v4 - v5 > 0xFFF)
  {
    if (v8 > 0xFFF)
    {
      result = (*(v2 + 32))(v2 + 96, 4096, v7, 0, 0);
      v8 = 0;
      if (result)
      {
        return result;
      }
    }

    else
    {
      v9 = 4096 - v8;
      memcpy(v3, (v7 + v8), 4096 - v8);
      v3 += v9;
      v5 += v9;
      v8 = *(v2 + 184) + v9;
    }

    *(v2 + 184) = v8;
    if (v5 >= v4)
    {
      return 0;
    }
  }

  memcpy(v3, (v7 + v8), v4 - v5);
  result = 0;
  *(v2 + 184) += v4 - v5;
  return result;
}

uint64_t generate_4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = ccctr_context_size(*(a1 + 56));
  MEMORY[0x1EEE9AC00](v8, v9, v10, v11);
  v18 = &v27[-v17 - 8];
  if (a2 > 0x10000)
  {
    goto LABEL_22;
  }

  if (*(a1 + 72) && *(a1 + 48) > 0x1000000000000uLL)
  {
    v20 = 4294967234;
    goto LABEL_21;
  }

  if (!a4)
  {
    goto LABEL_12;
  }

  if (*(a1 + 80))
  {
    if (a4 <= 0x10000)
    {
      v19 = derive(a1, __s, 1u, v12, v13, v14, v15, v16, a4);
      if (v19)
      {
        v20 = v19;
        goto LABEL_21;
      }

      goto LABEL_11;
    }

LABEL_22:
    v20 = 4294967233;
    goto LABEL_21;
  }

  if (*(a1 + 64) + 16 < a4)
  {
    goto LABEL_22;
  }

  cc_clear(0x30uLL, __s);
  __memcpy_chk();
LABEL_11:
  update(a1, __s);
LABEL_12:
  v26 = &v26;
  inc_uint(a1 + 40, 8uLL);
  ccctr_init_internal(*(a1 + 56));
  for (i = -a2; a2; a2 -= v22)
  {
    if (a2 >= 0x80)
    {
      v22 = 128;
    }

    else
    {
      v22 = a2;
    }

    ccctr_update_internal(*(a1 + 56), v18, v22, &zeros, a3);
    a3 += v22;
  }

  ccctr_update_internal(*(a1 + 56), v18, i & 0xF, &zeros, v27);
  cc_clear(i & 0xF, v27);
  if (a4)
  {
    v23 = __s;
  }

  else
  {
    v23 = &zeros;
  }

  update_with_ctr(a1, v18, v23);
  v24 = ccctr_context_size(*(a1 + 56));
  cc_clear(v24, v18);
  v20 = 0;
  ++*(a1 + 48);
LABEL_21:
  cc_clear(0x30uLL, __s);
  return v20;
}

uint64_t generate_5(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = **a1;
  v9 = *v8;
  if (a2 > 0x10000 || a4 >= 0x10001)
  {
    v16 = 4294967233;
  }

  else
  {
    v12 = a3;
    v13 = a2;
    if (*(*a1 + 8) && *(a1 + 136) > 0x1000000000000uLL)
    {
      v16 = 4294967234;
    }

    else
    {
      if (a4)
      {
        update_0(a1, 1, a3, a4, a5, a6, a7, a8, a4);
      }

      for (; v13; v13 -= v15)
      {
        __memcpy_chk();
        cchmac_internal(v8, v9, a1 + 8, v9, a1 + 72, a1 + 72);
        if (!cc_cmp_safe_internal(v9, __s, a1 + 72))
        {
          cc_clear(0x40uLL, (a1 + 8));
          cc_clear(0x40uLL, (a1 + 72));
          *(a1 + 136) = -1;
          cc_try_abort();
        }

        if (v13 >= v9)
        {
          v15 = v9;
        }

        else
        {
          v15 = v13;
        }

        memcpy(v12, (a1 + 72), v15);
        v12 += v15;
      }

      update_0(a1, 1, a3, a4, a5, a6, a7, a8, a4);
      v16 = 0;
      ++*(a1 + 136);
    }
  }

  cc_clear(v9, __s);
  return v16;
}

uint64_t ccrng_crypto_generate(uint64_t a1, rsize_t a2, char *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v6 = a2;
  v7 = a3;
  while (1)
  {
    v8 = *(a1 + 24);
    if (v8)
    {
      os_unfair_lock_lock(v8);
      v9 = *(a1 + 24);
      if (v9)
      {
        os_unfair_lock_assert_owner(v9);
      }
    }

    v10 = *(a1 + 56);
    v11 = ccrng_schedule_read(*(a1 + 16));
    if (v11 == 1)
    {
      goto LABEL_13;
    }

    v12 = v11;
    seed = ccentropy_get_seed(*(a1 + 8), v10, __s);
    if (seed != -10)
    {
      break;
    }

    if (v12 != 2)
    {
      if (v12 == 3)
      {
        v14 = 4294967134;
      }

      else
      {
        v14 = 0xFFFFFFFFLL;
      }

      goto LABEL_36;
    }

LABEL_13:
    if (v6 >= *(a1 + 48))
    {
      v16 = *(a1 + 48);
    }

    else
    {
      v16 = v6;
    }

    v17 = *(a1 + 24);
    if (v17)
    {
      os_unfair_lock_assert_owner(v17);
    }

    if (a2 <= 0xB && (v18 = *(a1 + 64), v18 >= v16))
    {
      v21 = *(a1 + 72);
      v22 = *(a1 + 80);
      v23 = v18 - v22;
      if (v18 - v22 >= v16)
      {
        v24 = v16;
      }

      else
      {
        v24 = v18 - v22;
      }

      memcpy(v7, (v21 + v22), v24);
      cc_clear(v24, (v21 + v22));
      *(a1 + 80) += v24;
      if (v23 < v16)
      {
        v19 = drbg_generate(a1, *(a1 + 64), *(a1 + 72));
        if (v19)
        {
LABEL_39:
          v14 = v19;
          goto LABEL_36;
        }

        memcpy(&v7[v24], *(a1 + 72), v16 - v24);
        cc_clear(v16 - v24, *(a1 + 72));
        *(a1 + 80) = v16 - v24;
      }
    }

    else
    {
      v19 = drbg_generate(a1, v16, v7);
      if (v19)
      {
        goto LABEL_39;
      }
    }

    v20 = *(a1 + 24);
    if (v20)
    {
      os_unfair_lock_unlock(v20);
    }

    v7 += v16;
    v6 -= v16;
    if (!v6)
    {
      return 0;
    }
  }

  v14 = seed;
  if (seed)
  {
    goto LABEL_41;
  }

  v15 = drbg_reseed(a1, v10, __s, 0, 0);
  if (!v15)
  {
    ccrng_schedule_notify_reseed(*(a1 + 16));
    cc_clear(v10, __s);
    goto LABEL_13;
  }

  v14 = v15;
LABEL_41:
  cc_clear(v10, __s);
LABEL_36:
  v26 = *(a1 + 24);
  if (v26)
  {
    os_unfair_lock_unlock(v26);
  }

  cc_clear(a2, a3);
  return v14;
}

uint64_t ccrng_schedule_read(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return 3;
  }

  result = (**a1)(a1);
  *(a1 + 8) = result == 3;
  return result;
}

uint64_t drbg_generate(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[3];
  if (v6)
  {
    os_unfair_lock_assert_owner(v6);
  }

  v7 = a1[4];
  v8 = a1[5];

  return ccdrbg_generate(v7, v8, a2, a3, 0, 0);
}

uint64_t ccrng_schedule_timer_read(uint64_t a1)
{
  if (((*(a1 + 16))() - *(a1 + 32)) < *(a1 + 24))
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

BOOL timingsafe_enable_if_supported()
{
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) != 0)
  {
    v0 = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 5)) != 0;
    __asm { MSR             DIT, #1 }
  }

  else
  {
    v0 = 0;
  }

  if ((MEMORY[0xFFFFFC010] & 0x200000000000) != 0)
  {
    sb();
  }

  else
  {
    __dsb(0xFu);
    __isb(0xFu);
  }

  return v0;
}

uint64_t ccdrbg_generate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = timingsafe_enable_if_supported();
  v12 = (*(a1 + 24))(a2, a3, a4, a5, a6);
  cc_disable_dit_with_sb(&v14);
  return v12;
}

uint64_t inc_uint(uint64_t result, unint64_t a2)
{
  if (a2)
  {
    v2 = (a2 + result - 1);
    v3 = 2;
    do
    {
      if (++*v2--)
      {
        v5 = 1;
      }

      else
      {
        v5 = v3 > a2;
      }

      ++v3;
    }

    while (!v5);
  }

  return result;
}

uint64_t ccmode_ctr_init(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 48);
  *a2 = v8;
  v9 = (*(v8 + 16))();
  (*(a1 + 32))(a1, a2, a5);
  return v9;
}

uint64_t ccmode_ctr_setctr(int a1, void *a2, void *__src)
{
  v4 = *(*a2 + 8);
  a2[1] = v4;
  memcpy(a2 + ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, __src, v4);
  return 0;
}

uint64_t update_with_ctr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ccctr_update_internal(*(a1 + 56), a2, *(a1 + 64), a3, a1);
  v6 = *(a1 + 56);
  v7 = a3 + *(a1 + 64);

  return ccctr_update_internal(v6, a2, 16, v7, a1 + 32);
}

uint64_t ccrng_uniform(uint64_t (**a1)(void, uint64_t, unint64_t *), unint64_t a2, unint64_t *a3)
{
  v8 = timingsafe_enable_if_supported();
  v6 = ccrng_uniform_internal(a1, a2, a3);
  cc_disable_dit_with_sb(&v8);
  return v6;
}

uint64_t ccrng_uniform_internal(uint64_t (**a1)(void, uint64_t, unint64_t *), unint64_t a2, unint64_t *a3)
{
  if (a2)
  {
    v6 = 0xFFFFFFFFFFFFFFFFLL >> __clz(a2);
    while (1)
    {
      v7 = (*a1)(a1, 8, a3);
      if (v7)
      {
        break;
      }

      v8 = *a3 & v6;
      *a3 = v8;
      if (v8 < a2)
      {
        return 0;
      }
    }

    v9 = v7;
  }

  else
  {
    v9 = 4294967289;
  }

  cc_clear(8uLL, a3);
  return v9;
}

uint64_t ccaes_arm_encrypt_key_with_key_length_check(uint64_t a1, int8x16_t *a2, uint64_t a3, int8x16_t *a4, double a5, double a6, double a7, double a8, double a9, double a10, int64x2_t a11)
{
  if (a3 > 127)
  {
    if (a3 != 128 && a3 != 256 && a3 != 192)
    {
      return 4294967289;
    }

    return ccaes_arm_encrypt_key(a5, a6, a7, a8, a9, a10, a11, a1, a2, a3, a4);
  }

  if (a3 <= 0x20 && ((1 << a3) & 0x101010000) != 0)
  {
    return ccaes_arm_encrypt_key(a5, a6, a7, a8, a9, a10, a11, a1, a2, a3, a4);
  }

  return 4294967289;
}

int8x16_t ccaes_arm_encrypt_key128(int8x16_t *a1, int8x16_t *a2)
{
  result = *a1;
  a2[15].i32[0] = 160;
  _Q2 = 0uLL;
  v4 = Rcon;
  v5 = 10;
  *a2 = result;
  v6 = a2 + 1;
  do
  {
    __asm { AESE            V1.16B, V2.16B }

    v12 = vqtbl1q_s8(_Q1, *InvShiftRows_RotWord);
    v13 = veorq_s8(result, v12);
    v12.i8[0] = v4.i8[0];
    v4 = vextq_s8(v4, v4, 1uLL);
    v14 = veorq_s8(v13, v12);
    v15 = veorq_s8(v14, vextq_s8(0, v14, 0xCuLL));
    result = veorq_s8(v15, vextq_s8(0, v15, 8uLL));
    *v6++ = result;
    _CF = v5-- != 0;
  }

  while (v5 != 0 && _CF);
  return result;
}

int8x16_t ccaes_arm_encrypt_key192(int8x16_t *a1, int8x16_t *a2, double a3, double a4, double a5, double a6, double a7, double a8, int64x2_t a9)
{
  result = *a1;
  a9.i64[0] = a1[1].i64[0];
  a2[15].i32[0] = 192;
  _Q2 = 0uLL;
  v11 = Rcon;
  *a2 = result;
  v12 = a2 + 1;
  v13 = 46;
  v12->i64[0] = a9.i64[0];
  v14 = &v12->u64[1];
  do
  {
    __asm { AESE            V1.16B, V2.16B }

    v20 = vqtbl1q_s8(_Q1, *InvShiftRows_RotWord);
    v21 = veorq_s8(result, v20);
    v20.i8[0] = v11.i8[0];
    v11 = vextq_s8(v11, v11, 1uLL);
    v22 = veorq_s8(v21, v20);
    v23 = veorq_s8(v22, vextq_s8(0, v22, 0xCuLL));
    result = veorq_s8(v23, vextq_s8(0, v23, 8uLL));
    *a9.i8 = veor_s8(veor_s8(*a9.i8, *&vshlq_n_s64(a9, 0x20uLL)), *&vdupq_laneq_s32(result, 3));
    *v14 = result;
    v24 = v14 + 1;
    v24->i64[0] = a9.i64[0];
    v14 = &v24->u64[1];
    _CF = v13 >= 6;
    v13 -= 6;
  }

  while (v13 != 0 && _CF);
  return result;
}

int8x16_t *ccaes_arm_encrypt_key256(int8x16_t *result, int8x16_t *a2)
{
  v2 = *result;
  v3 = result[1];
  a2[15].i32[0] = 224;
  _Q2 = 0uLL;
  v5 = Rcon;
  *a2 = v2;
  v6 = a2 + 1;
  v7 = 52;
  *v6 = v3;
  v8 = v6 + 1;
  do
  {
    __asm { AESE            V1.16B, V2.16B }

    v14 = vqtbl1q_s8(_Q1, *InvShiftRows_RotWord);
    v15 = veorq_s8(v2, v14);
    v14.i8[0] = v5.i8[0];
    v5 = vextq_s8(v5, v5, 1uLL);
    v16 = veorq_s8(v15, v14);
    v17 = veorq_s8(v16, vextq_s8(0, v16, 0xCuLL));
    v2 = veorq_s8(v17, vextq_s8(0, v17, 8uLL));
    *v8 = v2;
    v18 = v8 + 1;
    v19 = v7 - 4;
    if (!v19)
    {
      break;
    }

    __asm { AESE            V7.16B, V2.16B }

    v21 = veorq_s8(v3, vqtbl1q_s8(_Q7, *InvShiftRows_RotWord));
    v22 = veorq_s8(v21, vextq_s8(0, v21, 0xCuLL));
    v3 = veorq_s8(v22, vextq_s8(0, v22, 8uLL));
    *v18 = v3;
    v8 = v18 + 1;
    _CF = v19 >= 4;
    v7 = v19 - 4;
  }

  while (v7 != 0 && _CF);
  return result;
}

uint64_t ccaes_arm_encrypt_key(double a1, double a2, double a3, double a4, double a5, double a6, int64x2_t a7, uint64_t a8, int8x16_t *a9, uint64_t a10, int8x16_t *a11)
{
  v13 = a9;
  v15 = a10;
  if (a10 > 32)
  {
    v15 = a10 >> 3;
  }

  switch(v15)
  {
    case 0x10uLL:
      ccaes_arm_encrypt_key128(a11, v13);
      break;
    case 0x18uLL:
      ccaes_arm_encrypt_key192(a11, v13, a1, a2, a3, a4, a5, a6, a7);
      break;
    case 0x20uLL:
      ccaes_arm_encrypt_key256(a11, v13);
      break;
    default:
      return -1;
  }

  return 0;
}

__n128 ccaes_arm_decrypt_key(uint64_t a1, int8x16_t *a2, uint64_t a3, int8x16_t *a4, double a5, double a6, double a7, double a8, double a9, double a10, int64x2_t a11)
{
  v11 = ccaes_arm_encrypt_key(a5, a6, a7, a8, a9, a10, a11, a1, a2, a3, a4);
  v13 = a3;
  if (v11 != -1)
  {
    if (a3 > 32)
    {
      v13 = a3 >> 3;
    }

    v14 = (v13 >> 2) + 4;
    v15 = &a2[1];
    do
    {
      _Q0 = *v15;
      _Q1 = v15[1];
      __asm
      {
        AESIMC          V0.16B, V0.16B
        AESIMC          V1.16B, V1.16B
      }

      *v15 = _Q0;
      v15[1] = _Q1;
      v15 += 2;
      v24 = v14 <= 2;
      v14 -= 2;
    }

    while (!v24);
    _Q0 = *v15;
    __asm { AESIMC          V0.16B, V0.16B }

    *v15 = result;
  }

  return result;
}

uint64_t ccaes_vng_ctr_crypt(void *a1, unint64_t a2, int8x16_t *a3, int8x16_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = a1[1];
  if (a2)
  {
    v10 = a2;
    v11 = *a1;
    v12 = (*(*a1 + 8) + 7) >> 3;
    v13 = a1 + 2;
    v14 = &a1[2 * v12 + 2];
    v15 = &a1[v12 + 2];
    v16 = &a1[v12];
    while (1)
    {
      if (v7 == 16)
      {
        if (v10 >= 0x10)
        {
          aes_ctr_crypt(a3, a4, v10 & 0xFFFFFFFFFFFFFFF0, v15, v14, a6);
          a4 = (a4 + (v10 & 0xFFFFFFFFFFFFFFF0));
          a3 = (a3 + (v10 & 0xFFFFFFFFFFFFFFF0));
          v10 &= 0xFu;
        }

        (*(v11 + 24))(v14, 1, v15, a1 + 2);
        v17 = 31;
        do
        {
          if ((v17 - 15) < 9)
          {
            break;
          }

          v18 = (*(v16 + v17--))++ + 1;
        }

        while ((v18 & 0x100) != 0);
        v7 = 0;
        v19 = 0;
        if (!v10)
        {
          break;
        }
      }

      v20 = 0;
      do
      {
        v21 = v20 + 1;
        a4->i8[v20] = *(v13 + v7 + v20) ^ a3->i8[v20];
        v22 = (v20 + 1 + v7) > 0xF || v10 - 1 == v20;
        ++v20;
      }

      while (!v22);
      v7 += v21;
      a3 = (a3 + v21);
      a4 = (a4 + v21);
      v10 -= v21;
      if (!v10)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    v19 = v7;
  }

  a1[1] = v19;
  return 0;
}

int8x16_t *aes_ctr_crypt(int8x16_t *a1, int8x16_t *a2, uint64_t a3, int8x16_t *a4, int8x16_t *a5, uint64_t a6)
{
  v6 = a5[15].i32[0];
  v8 = __OFSUB__(a3, 128);
  v7 = a3 - 128 < 0;
  v9 = a3 - 128;
  if (v7 != v8)
  {
    return Decrypt_Main_Loop_End(a1, a2, v9, a4, a5, a6, v6);
  }

  else
  {
    return Decrypt_Main_Loop(a1, a2, v9, a4, a5, a6, v6);
  }
}

uint64_t Decrypt_Main_Loop(_OWORD *a1, int8x16_t *a2, uint64_t a3, uint64_t a4, int8x16_t *a5, uint64_t a6, int a7)
{
  do
  {
    v8 = vaddq_s64(v7, vaddq_s64(v7, vaddq_s64(v7, vaddq_s64(v7, v8))));
    _Q20 = *a5;
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[1];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[2];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[3];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[4];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[5];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[6];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[7];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[8];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[9];
    v167 = a5[10];
    if (a7 > 160)
    {
      __asm
      {
        AESE            V22.16B, V20.16B
        AESMC           V22.16B, V22.16B
        AESE            V23.16B, V20.16B
        AESMC           V23.16B, V23.16B
        AESE            V24.16B, V20.16B
        AESMC           V24.16B, V24.16B
        AESE            V25.16B, V20.16B
        AESMC           V25.16B, V25.16B
        AESE            V26.16B, V20.16B
        AESMC           V26.16B, V26.16B
        AESE            V27.16B, V20.16B
        AESMC           V27.16B, V27.16B
        AESE            V28.16B, V20.16B
        AESMC           V28.16B, V28.16B
        AESE            V29.16B, V20.16B
        AESMC           V29.16B, V29.16B
      }

      _Q20 = a5[10];
      __asm
      {
        AESE            V22.16B, V20.16B
        AESMC           V22.16B, V22.16B
        AESE            V23.16B, V20.16B
        AESMC           V23.16B, V23.16B
        AESE            V24.16B, V20.16B
        AESMC           V24.16B, V24.16B
        AESE            V25.16B, V20.16B
        AESMC           V25.16B, V25.16B
        AESE            V26.16B, V20.16B
        AESMC           V26.16B, V26.16B
        AESE            V27.16B, V20.16B
        AESMC           V27.16B, V27.16B
        AESE            V28.16B, V20.16B
        AESMC           V28.16B, V28.16B
        AESE            V29.16B, V20.16B
        AESMC           V29.16B, V29.16B
      }

      _Q20 = a5[11];
      v167 = a5[12];
      if (a7 > 192)
      {
        __asm
        {
          AESE            V22.16B, V20.16B
          AESMC           V22.16B, V22.16B
          AESE            V23.16B, V20.16B
          AESMC           V23.16B, V23.16B
          AESE            V24.16B, V20.16B
          AESMC           V24.16B, V24.16B
          AESE            V25.16B, V20.16B
          AESMC           V25.16B, V25.16B
          AESE            V26.16B, V20.16B
          AESMC           V26.16B, V26.16B
          AESE            V27.16B, V20.16B
          AESMC           V27.16B, V27.16B
          AESE            V28.16B, V20.16B
          AESMC           V28.16B, V28.16B
          AESE            V29.16B, V20.16B
          AESMC           V29.16B, V29.16B
        }

        _Q20 = a5[12];
        __asm
        {
          AESE            V22.16B, V20.16B
          AESMC           V22.16B, V22.16B
          AESE            V23.16B, V20.16B
          AESMC           V23.16B, V23.16B
          AESE            V24.16B, V20.16B
          AESMC           V24.16B, V24.16B
          AESE            V25.16B, V20.16B
          AESMC           V25.16B, V25.16B
          AESE            V26.16B, V20.16B
          AESMC           V26.16B, V26.16B
          AESE            V27.16B, V20.16B
          AESMC           V27.16B, V27.16B
          AESE            V28.16B, V20.16B
          AESMC           V28.16B, V28.16B
          AESE            V29.16B, V20.16B
          AESMC           V29.16B, V29.16B
        }

        _Q20 = a5[13];
        v167 = a5[14];
      }
    }

    v235 = *a1;
    v236 = *(a1 + 1);
    v237 = *(a1 + 2);
    v238 = *(a1 + 3);
    v234 = a1 + 4;
    __asm
    {
      AESE            V22.16B, V20.16B
      AESE            V23.16B, V20.16B
      AESE            V24.16B, V20.16B
      AESE            V25.16B, V20.16B
    }

    v243 = veorq_s8(v235, veorq_s8(_Q22, v167));
    v244 = veorq_s8(v236, veorq_s8(_Q23, v167));
    v245 = veorq_s8(v237, veorq_s8(_Q24, v167));
    v246 = veorq_s8(v238, veorq_s8(_Q25, v167));
    v247 = *v234;
    v248 = *(v234 + 1);
    v249 = *(v234 + 2);
    v250 = *(v234 + 3);
    a1 = v234 + 4;
    __asm
    {
      AESE            V26.16B, V20.16B
      AESE            V27.16B, V20.16B
      AESE            V28.16B, V20.16B
      AESE            V29.16B, V20.16B
    }

    *a2 = v243;
    a2[1] = v244;
    a2[2] = v245;
    a2[3] = v246;
    v255 = a2 + 4;
    *v255 = veorq_s8(v247, veorq_s8(_Q26, v167));
    v255[1] = veorq_s8(v248, veorq_s8(_Q27, v167));
    v255[2] = veorq_s8(v249, veorq_s8(_Q28, v167));
    v255[3] = veorq_s8(v250, veorq_s8(_Q29, v167));
    a2 = v255 + 4;
    _VF = __OFSUB__(a3, 128);
    _NF = a3 - 128 < 0;
    a3 -= 128;
  }

  while (_NF == _VF);
  return Decrypt_Main_Loop_End();
}

int8x16_t *Decrypt_Main_Loop_End(int8x16_t *result, int8x16_t *a2, uint64_t a3, int8x16_t *a4, int8x16_t *a5, uint64_t a6, int a7)
{
  v10 = a3 < -112;
  for (i = a3 + 112; !v10; i -= 16)
  {
    _Q4 = *a5;
    _Q5 = a5[1];
    _Q6 = a5[2];
    v9 = vaddq_s64(v7, v9);
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q4 = a5[3];
    _Q5 = a5[4];
    _Q6 = a5[5];
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q4 = a5[6];
    _Q5 = a5[7];
    _Q6 = a5[8];
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q20 = a5[9];
    _Q21 = a5[10];
    if (a7 > 160)
    {
      __asm
      {
        AESE            V7.16B, V20.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V21.16B
        AESMC           V7.16B, V7.16B
      }

      _Q20 = a5[11];
      _Q21 = a5[12];
      if (a7 > 192)
      {
        __asm
        {
          AESE            V7.16B, V20.16B
          AESMC           V7.16B, V7.16B
          AESE            V7.16B, V21.16B
          AESMC           V7.16B, V7.16B
        }

        _Q20 = a5[13];
        _Q21 = a5[14];
      }
    }

    __asm { AESE            V7.16B, V20.16B }

    v54 = *result++;
    *a2++ = veorq_s8(v54, veorq_s8(_Q7, _Q21));
    v10 = i < 16;
  }

  *a4 = vqtbl1q_s8(v9, v8);
  return result;
}

uint64_t AccelerateCrypto_ecb_AES_encrypt(__int128 *a1, int a2, uint64_t a3, int8x16_t *a4)
{
  v4 = *(a1 + 60);
  _VF = __OFSUB__(a2, 4);
  v6 = a2 - 4;
  for (i = *(a1 + v4); v6 < 0 == _VF; v6 -= 4)
  {
    _Q4 = *a1;
    v9 = 16;
    a3 += 64;
    do
    {
      __asm
      {
        AESE            V0.16B, V4.16B
        AESMC           V0.16B, V0.16B
        AESE            V1.16B, V4.16B
        AESMC           V1.16B, V1.16B
        AESE            V2.16B, V4.16B
        AESMC           V2.16B, V2.16B
        AESE            V3.16B, V4.16B
        AESMC           V3.16B, V3.16B
      }

      _Q4 = a1[v9 / 0x10];
      v9 += 16;
    }

    while (v9 < v4);
    __asm
    {
      AESE            V0.16B, V4.16B
      AESE            V1.16B, V4.16B
      AESE            V2.16B, V4.16B
      AESE            V3.16B, V4.16B
    }

    *a4 = veorq_s8(_Q0, i);
    a4[1] = veorq_s8(_Q1, i);
    a4[2] = veorq_s8(_Q2, i);
    a4[3] = veorq_s8(_Q3, i);
    a4 += 4;
    _VF = __OFSUB__(v6, 4);
  }

  v25 = v6 & 3;
  if (v25)
  {
    do
    {
      _Q4 = *a1;
      v27 = 16;
      a3 += 16;
      do
      {
        __asm
        {
          AESE            V0.16B, V4.16B
          AESMC           V0.16B, V0.16B
        }

        _Q4 = a1[v27 / 0x10];
        v27 += 16;
      }

      while (v27 < v4);
      __asm { AESE            V0.16B, V4.16B }

      *a4++ = veorq_s8(_Q0, i);
      _VF = __OFSUB__(v25--, 1);
    }

    while (!((v25 < 0) ^ _VF | (v25 == 0)));
  }

  return 0;
}

uint64_t timingsafe_restore_if_supported(uint64_t result)
{
  if ((result & 1) == 0 && (MEMORY[0xFFFFFC010] & 0x200000000000000) != 0)
  {
    __asm { MSR             DIT, #0 }
  }

  return result;
}

uint64_t ccdrbg_reseed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = timingsafe_enable_if_supported();
  v12 = (*(a1 + 16))(a2, a3, a4, a5, a6);
  cc_disable_dit_with_sb(&v14);
  return v12;
}

uint64_t reseed(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  v18 = *MEMORY[0x1E69E9840];
  if (!a1[10])
  {
    v14 = a1[8] + 16;
    if (v14 < a4 || v14 != a2)
    {
      return 4294967233;
    }

    __memcpy_chk();
    for (; v9; --v9)
    {
      __s[v9 - 1] ^= *(a5 - 1 + v9);
    }

    goto LABEL_6;
  }

  v11 = 4294967233;
  if (a2 <= 0x10000 && a4 <= 0x10000 && *(a1[7] + 16) <= a2)
  {
    v12 = derive(a1, __s, 2u, a4, a5, a6, a7, a8, a2);
    if (v12)
    {
      v11 = v12;
      goto LABEL_7;
    }

LABEL_6:
    update(a1, __s);
    v11 = 0;
    a1[6] = 1;
LABEL_7:
    cc_clear(a1[8] + 16, __s);
  }

  return v11;
}

uint64_t reseed_0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 > 0x10000)
  {
    return 4294967233;
  }

  if (a4 >= 0x10001 || ***a1 >> 1 > a2)
  {
    return 4294967233;
  }

  update_0(a1, 2, a3, a4, a5, a6, a7, a8, a2);
  result = 0;
  *(a1 + 136) = 1;
  return result;
}

uint64_t derive(uint64_t a1, void *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v15 = &a9;
  if (a3)
  {
    v10 = a3;
    v11 = v17;
    v12 = a3;
    do
    {
      v13 = v15;
      *v11 = *v15;
      v15 += 2;
      *(v11 - 1) = v13[1];
      v11 += 2;
      --v12;
    }

    while (v12);
  }

  else
  {
    v10 = 0;
  }

  return ccdrbg_df_derive_keys(*(a1 + 80), v10, v16, *(a1 + 64) + 16, a2);
}

uint64_t ccdrbg_df_derive_keys(uint64_t (**a1)(void), uint64_t a2, uint64_t a3, rsize_t a4, void *a5)
{
  v7 = (*a1)();
  if (v7)
  {
    cc_clear(a4, a5);
  }

  return v7;
}

uint64_t OUTLINED_FUNCTION_1_0()
{
  v3 = (v1 + 8 * *v0);

  return ccn_seti(1, v3, 0);
}

uint64_t OUTLINED_FUNCTION_1_5()
{

  return cced25519_make_pub_internal(v3, v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_1_15(int32x4_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int32x4_t a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  v44 = *v41;
  v45 = v41[1];
  a12 = a1;
  a13 = v44;
  a14 = v45;
  v42[29] = 0;
  v42[30] = 0;
  a40 = 1;
  v42[16] = 0;

  return ccchacha20poly1305_setnonce_internal(&a12, v40);
}

void *OUTLINED_FUNCTION_1_18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (v4 + v3 + 8 * v2);
  v7 = (a2 + 8 * (*(*v6 + 4) * **v6)) & 0xFFFFFFFFFFFFFFF8;

  return memmove(a1, v6, v7);
}

uint64_t OUTLINED_FUNCTION_1_22()
{
  v3 = *(*(v0 + 8) + 8);

  return cc_clear(v3, v1);
}

BOOL OUTLINED_FUNCTION_0_4()
{

  return timingsafe_enable_if_supported();
}

uint64_t OUTLINED_FUNCTION_0_10(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  a15 = 0;

  return ccn_read_uint_public_value(1uLL, &a15, 8uLL, a1);
}

BOOL OUTLINED_FUNCTION_0_13()
{

  return timingsafe_enable_if_supported();
}

uint64_t OUTLINED_FUNCTION_0_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{

  return cclr_permute(v15, v14, v13, v12, &a12);
}

uint64_t OUTLINED_FUNCTION_0_37(uint64_t a1)
{
  v4 = (a1 + 8);
  v5 = (v2 + (*v2)[4].i64[1] + 8);
  v6 = *v2;

  return ccmldsa_keygen_internal(v6, v4, v5, v1);
}

uint64_t ccrng_schedule_tree_notify_reseed(uint64_t a1)
{
  v2 = *(a1 + 16);
  v2[8] = 0;
  (*(*v2 + 8))(v2);
  v3 = *(a1 + 24);
  v3[8] = 0;
  v4 = *(*v3 + 8);

  return v4();
}

uint64_t ccrng_schedule_timer_notify_reseed(uint64_t a1)
{
  result = (*(a1 + 16))();
  *(a1 + 32) = result;
  return result;
}

uint64_t ccder_blob_decode_len_internal(uint64_t a1, unint64_t *a2, int a3)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if (*a1)
  {
    v5 = v4 >= v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    goto LABEL_7;
  }

  v6 = v4 + 1;
  v7 = *v4;
  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_6;
  }

  v9 = *v4;
  if (v9 > 0x82)
  {
    if (v9 == 131)
    {
      if ((v3 - v6) < 3)
      {
        goto LABEL_7;
      }

      v10 = v4[1];
      v6 = v4 + 4;
      v7 = v4[3] | (v10 << 16) | (v4[2] << 8);
      if (!a3)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (v9 != 132 || (v3 - v6) < 4)
      {
        goto LABEL_7;
      }

      LODWORD(v10) = v4[1];
      v6 = v4 + 5;
      v7 = (v4[1] << 24) | (v4[2] << 16) | v4[4] | (v4[3] << 8);
      if (!a3)
      {
        goto LABEL_6;
      }
    }

LABEL_26:
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v9 == 129)
  {
    if ((v3 - v6) < 1)
    {
      goto LABEL_7;
    }

    v6 = v4 + 2;
    v11 = v4[1];
    v7 = v11;
    if (a3)
    {
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_6;
  }

  if (v9 != 130 || (v3 - v6) < 2)
  {
    goto LABEL_7;
  }

  v10 = v4[1];
  v6 = v4 + 3;
  v7 = v4[2] | (v10 << 8);
  if (a3)
  {
    goto LABEL_26;
  }

LABEL_6:
  if (v3 - v6 < v7)
  {
LABEL_7:
    result = 0;
    *a2 = 0;
    return result;
  }

  *a2 = v7;
  *a1 = v6;
  return 1;
}

uint64_t ccentropy_get_seed(uint64_t (***a1)(void, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v8 = timingsafe_enable_if_supported();
  v6 = (**a1)(a1, a2, a3);
  cc_disable_dit_with_sb(&v8);
  return v6;
}

uint64_t drbg_reseed(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[3];
  if (v10)
  {
    os_unfair_lock_assert_owner(v10);
  }

  result = ccdrbg_reseed(a1[4], a1[5], a2, a3, a4, a5);
  if (!result)
  {
    a1[10] = a1[8];
  }

  return result;
}

uint64_t ccder_blob_decode_range(unsigned __int8 **a1, uint64_t a2, unsigned __int8 **a3)
{
  v8 = 0;
  result = ccder_blob_decode_tl_internal(a1, a2, &v8, 0);
  v6 = 0;
  v7 = 0;
  if (result)
  {
    v6 = *a1;
    v7 = &(*a1)[v8];
    *a1 = v7;
  }

  *a3 = v6;
  a3[1] = v7;
  return result;
}

uint64_t ccdigest_internal(uint64_t a1, size_t a2, char *a3, uint64_t a4)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v10 = (v12 - v9);
  ccdigest_init_internal(v8, (v12 - v9));
  ccdigest_update_internal(a1, v10, a2, a3);
  (*(a1 + 56))(a1, v10, a4);
  return cc_clear(*(a1 + 8) + *(a1 + 16) + 12, v10);
}

unint64_t *ccdigest_update_internal(unint64_t *result, void *a2, size_t a3, char *__src)
{
  v5 = a3;
  v7 = result;
  v8 = result[2];
  v9 = a2 + result[1] + 8;
  if (v8 <= *(v9 + v8))
  {
    *(v9 + v8) = 0;
  }

  if (a3)
  {
    v10 = a2 + 1;
    do
    {
      v11 = v7[2];
      v12 = v10 + v7[1];
      v13 = *&v12[v11];
      if (v5 > v11 && v13 == 0)
      {
        if (v11 == 128)
        {
          v22 = v5 >> 7;
          v16 = v5 & 0xFFFFFFFFFFFFFF80;
        }

        else if (v11 == 64)
        {
          v22 = v5 >> 6;
          v16 = v5 & 0xFFFFFFFFFFFFFFC0;
        }

        else
        {
          v22 = v5 / v11;
          v16 = v5 / v11 * v11;
        }

        result = (v7[6])(a2 + 1, v22, __src);
        *a2 += 8 * v16;
      }

      else
      {
        v15 = v11 - v13;
        if (v15 >= v5)
        {
          v16 = v5;
        }

        else
        {
          v16 = v15;
        }

        result = memcpy(&v12[v13], __src, v16);
        v17 = v7[2];
        v18 = v10 + v7[1];
        v19 = (*&v18[v17] + v16);
        *&v18[v17] = v19;
        if (v17 == v19)
        {
          result = (v7[6])(a2 + 1, 1);
          v20 = v7[2];
          v21 = v10 + v7[1];
          *a2 += (8 * *&v21[v20]);
          *&v21[v20] = 0;
        }
      }

      __src += v16;
      v5 -= v16;
    }

    while (v5);
  }

  return result;
}

uint64_t ccaes_arm_encrypt_key_with_length_check(uint64_t a1, int8x16_t *a2, uint64_t a3, int8x16_t *a4, double a5, double a6, double a7, double a8, double a9, double a10, int64x2_t a11)
{
  if (a3 > 127)
  {
    if (a3 != 128 && a3 != 256 && a3 != 192)
    {
      return 4294967289;
    }

    return ccaes_arm_encrypt_key(a5, a6, a7, a8, a9, a10, a11, a1, a2, a3, a4);
  }

  if (a3 <= 0x20 && ((1 << a3) & 0x101010000) != 0)
  {
    return ccaes_arm_encrypt_key(a5, a6, a7, a8, a9, a10, a11, a1, a2, a3, a4);
  }

  return 4294967289;
}

uint64_t ccder_blob_decode_tl_internal(unsigned __int8 **a1, uint64_t a2, unint64_t *a3, int a4)
{
  v10 = 0;
  *a3 = 0;
  v8 = ccder_blob_decode_tag(a1, &v10);
  result = 0;
  if (v8 && v10 == a2)
  {
    if (a4)
    {
      return ccder_blob_decode_len_strict(a1, a3);
    }

    else
    {
      return ccder_blob_decode_len(a1, a3);
    }
  }

  return result;
}

void *ccdigest_init_internal(uint64_t a1, void *a2)
{
  result = memcpy(a2 + 1, *(a1 + 40), *(a1 + 8));
  *a2 = 0;
  *(a2 + *(a1 + 8) + *(a1 + 16) + 8) = 0;
  return result;
}

uint64_t ccdigest(uint64_t a1, size_t a2, char *a3, uint64_t a4)
{
  v9 = timingsafe_enable_if_supported();
  ccdigest_internal(a1, a2, a3, a4);
  return cc_disable_dit_with_sb(&v9);
}

uint64_t ccdigest_final_64le(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = a2 + v6 + 8;
  if (v5 <= *(v7 + v5))
  {
    *(v7 + v5) = 0;
  }

  MEMORY[0x1EEE9AC00]();
  v9 = (v21 - v8);
  memcpy(v21 - v8, v11, v10 + 12);
  v12 = v9 + v6;
  v13 = v9 + v6 + 8;
  v14 = (v13 + v5);
  v15 = *(v13 + v5);
  *v9 += (8 * v15);
  *(v13 + v5) = v15 + 1;
  *(v13 + v15) = 0x80;
  v16 = *(v13 + v5);
  if (v16 < 0x39)
  {
    if (v16 == 56)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v16 <= 0x3F)
    {
      do
      {
        *v14 = v16 + 1;
        *(v13 + v16) = 0;
        v16 = *v14;
      }

      while (v16 < 0x40);
    }

    (*(a1 + 48))(v9 + 1, 1);
    v16 = 0;
    v12 = v9 + *(a1 + 8);
    v13 = (v12 + 8);
    v14 = &v12[*(a1 + 16) + 8];
    *v14 = 0;
  }

  do
  {
    *v14 = v16 + 1;
    *(v13 + v16) = 0;
    v16 = *v14;
  }

  while (v16 < 0x38);
LABEL_9:
  *(v12 + 8) = *v9;
  (*(a1 + 48))(v9 + 1, 1);
  if (*a1 >= 4uLL)
  {
    v17 = 0;
    v18 = 0;
    v19 = 1;
    do
    {
      *(a3 + v17) = *(v9 + v18 + 2);
      v18 = v19++;
      v17 += 4;
    }

    while (v18 < *a1 >> 2);
  }

  return cc_clear(*(a1 + 8) + *(a1 + 16) + 12, v9);
}

unint64_t md5_compress(unint64_t result, uint64_t a2, _DWORD *a3)
{
  v85 = result;
  if (a2)
  {
    v3 = *result;
    v4 = *(result + 4);
    v5 = *(result + 8);
    v6 = *(result + 12);
    do
    {
      v7 = a3[1];
      v9 = a3[2];
      v8 = a3[3];
      v11 = a3[4];
      v10 = a3[5];
      v12 = a3[6];
      v13 = a3[7];
      v14 = a3[8];
      result = a3[9];
      v16 = a3[10];
      v15 = a3[11];
      v17 = a3[12];
      v18 = a3[13];
      v20 = a3[14];
      v19 = a3[15];
      HIDWORD(v21) = v3 + (v5 & v4 | v6 & ~v4) - 680876936 + *a3;
      LODWORD(v21) = HIDWORD(v21);
      v22 = (v21 >> 25) + v4;
      HIDWORD(v21) = v6 + v7 - 389564586 + (v4 & v22 | v5 & ~v22);
      LODWORD(v21) = HIDWORD(v21);
      v23 = (v21 >> 20) + v22;
      HIDWORD(v21) = v5 + v9 + 606105819 + (v22 & v23 | v4 & ~v23);
      LODWORD(v21) = HIDWORD(v21);
      v24 = (v21 >> 15) + v23;
      HIDWORD(v21) = v4 + v8 - 1044525330 + (v23 & v24 | v22 & ~v24);
      LODWORD(v21) = HIDWORD(v21);
      v25 = (v21 >> 10) + v24;
      HIDWORD(v21) = v11 + v22 - 176418897 + (v24 & v25 | v23 & ~v25);
      LODWORD(v21) = HIDWORD(v21);
      v26 = (v21 >> 25) + v25;
      HIDWORD(v21) = v10 + v23 + 1200080426 + (v25 & v26 | v24 & ~v26);
      LODWORD(v21) = HIDWORD(v21);
      v27 = (v21 >> 20) + v26;
      HIDWORD(v21) = v12 + v24 - 1473231341 + (v26 & v27 | v25 & ~v27);
      LODWORD(v21) = HIDWORD(v21);
      v28 = (v21 >> 15) + v27;
      HIDWORD(v21) = v13 + v25 - 45705983 + (v27 & v28 | v26 & ~v28);
      LODWORD(v21) = HIDWORD(v21);
      v29 = (v21 >> 10) + v28;
      HIDWORD(v21) = v14 + v26 + 1770035416 + (v28 & v29 | v27 & ~v29);
      LODWORD(v21) = HIDWORD(v21);
      v30 = (v21 >> 25) + v29;
      HIDWORD(v21) = result + v27 - 1958414417 + (v29 & v30 | v28 & ~v30);
      LODWORD(v21) = HIDWORD(v21);
      v31 = (v21 >> 20) + v30;
      HIDWORD(v21) = v16 + v28 - 42063 + (v30 & v31 | v29 & ~v31);
      LODWORD(v21) = HIDWORD(v21);
      v32 = (v21 >> 15) + v31;
      HIDWORD(v21) = v15 + v29 - 1990404162 + (v31 & v32 | v30 & ~v32);
      LODWORD(v21) = HIDWORD(v21);
      v33 = (v21 >> 10) + v32;
      HIDWORD(v21) = v17 + v30 + 1804603682 + (v32 & v33 | v31 & ~v33);
      LODWORD(v21) = HIDWORD(v21);
      v34 = (v21 >> 25) + v33;
      HIDWORD(v21) = v18 + v31 - 40341101 + (v33 & v34 | v32 & ~v34);
      LODWORD(v21) = HIDWORD(v21);
      v35 = (v21 >> 20) + v34;
      HIDWORD(v21) = v20 + v32 - 1502002290 + (v34 & v35 | v33 & ~v35);
      LODWORD(v21) = HIDWORD(v21);
      v36 = (v21 >> 15) + v35;
      HIDWORD(v21) = v19 + v33 + 1236535329 + (v35 & v36 | v34 & ~v36);
      LODWORD(v21) = HIDWORD(v21);
      v37 = (v21 >> 10) + v36;
      HIDWORD(v21) = v7 + v34 - 165796510 + (v37 & v35 | v36 & ~v35);
      LODWORD(v21) = HIDWORD(v21);
      v38 = (v21 >> 27) + v37;
      HIDWORD(v21) = v12 + v35 - 1069501632 + (v38 & v36 | v37 & ~v36);
      LODWORD(v21) = HIDWORD(v21);
      v39 = (v21 >> 23) + v38;
      HIDWORD(v21) = v15 + v36 + 643717713 + (v39 & v37 | v38 & ~v37);
      LODWORD(v21) = HIDWORD(v21);
      v40 = (v21 >> 18) + v39;
      HIDWORD(v21) = *a3 + v37 - 373897302 + (v40 & v38 | v39 & ~v38);
      LODWORD(v21) = HIDWORD(v21);
      v41 = (v21 >> 12) + v40;
      HIDWORD(v21) = v10 + v38 - 701558691 + (v41 & v39 | v40 & ~v39);
      LODWORD(v21) = HIDWORD(v21);
      v42 = (v21 >> 27) + v41;
      HIDWORD(v21) = v16 + v39 + 38016083 + (v42 & v40 | v41 & ~v40);
      LODWORD(v21) = HIDWORD(v21);
      v43 = (v21 >> 23) + v42;
      HIDWORD(v21) = v19 + v40 - 660478335 + (v43 & v41 | v42 & ~v41);
      LODWORD(v21) = HIDWORD(v21);
      v44 = (v21 >> 18) + v43;
      HIDWORD(v21) = v11 + v41 - 405537848 + (v44 & v42 | v43 & ~v42);
      LODWORD(v21) = HIDWORD(v21);
      v45 = (v21 >> 12) + v44;
      HIDWORD(v21) = result + v42 + 568446438 + (v45 & v43 | v44 & ~v43);
      LODWORD(v21) = HIDWORD(v21);
      v46 = (v21 >> 27) + v45;
      HIDWORD(v21) = v20 + v43 - 1019803690 + (v46 & v44 | v45 & ~v44);
      LODWORD(v21) = HIDWORD(v21);
      v47 = (v21 >> 23) + v46;
      HIDWORD(v21) = v8 + v44 - 187363961 + (v47 & v45 | v46 & ~v45);
      LODWORD(v21) = HIDWORD(v21);
      v48 = (v21 >> 18) + v47;
      HIDWORD(v21) = v14 + v45 + 1163531501 + (v48 & v46 | v47 & ~v46);
      LODWORD(v21) = HIDWORD(v21);
      v49 = (v21 >> 12) + v48;
      HIDWORD(v21) = v18 + v46 - 1444681467 + (v49 & v47 | v48 & ~v47);
      LODWORD(v21) = HIDWORD(v21);
      v50 = (v21 >> 27) + v49;
      HIDWORD(v21) = v9 + v47 - 51403784 + (v50 & v48 | v49 & ~v48);
      LODWORD(v21) = HIDWORD(v21);
      v51 = (v21 >> 23) + v50;
      HIDWORD(v21) = v13 + v48 + 1735328473 + (v51 & v49 | v50 & ~v49);
      LODWORD(v21) = HIDWORD(v21);
      v52 = (v21 >> 18) + v51;
      HIDWORD(v21) = v17 + v49 - 1926607734 + ((v52 ^ v51) & v50 ^ v51);
      LODWORD(v21) = HIDWORD(v21);
      v53 = (v21 >> 12) + v52;
      HIDWORD(v21) = v10 + v50 - 378558 + (v52 ^ v51 ^ v53);
      LODWORD(v21) = HIDWORD(v21);
      v54 = (v21 >> 28) + v53;
      HIDWORD(v21) = v14 + v51 - 2022574463 + (v53 ^ v52 ^ v54);
      LODWORD(v21) = HIDWORD(v21);
      v55 = (v21 >> 21) + v54;
      HIDWORD(v21) = v15 + v52 + 1839030562 + (v54 ^ v53 ^ v55);
      LODWORD(v21) = HIDWORD(v21);
      v56 = (v21 >> 16) + v55;
      HIDWORD(v21) = v20 + v53 - 35309556 + (v55 ^ v54 ^ v56);
      LODWORD(v21) = HIDWORD(v21);
      v57 = (v21 >> 9) + v56;
      HIDWORD(v21) = v7 + v54 - 1530992060 + (v56 ^ v55 ^ v57);
      LODWORD(v21) = HIDWORD(v21);
      v58 = (v21 >> 28) + v57;
      HIDWORD(v21) = v11 + v55 + 1272893353 + (v57 ^ v56 ^ v58);
      LODWORD(v21) = HIDWORD(v21);
      v59 = (v21 >> 21) + v58;
      HIDWORD(v21) = v13 + v56 - 155497632 + (v58 ^ v57 ^ v59);
      LODWORD(v21) = HIDWORD(v21);
      v60 = (v21 >> 16) + v59;
      HIDWORD(v21) = v16 + v57 - 1094730640 + (v59 ^ v58 ^ v60);
      LODWORD(v21) = HIDWORD(v21);
      v61 = (v21 >> 9) + v60;
      HIDWORD(v21) = v18 + v58 + 681279174 + (v60 ^ v59 ^ v61);
      LODWORD(v21) = HIDWORD(v21);
      v62 = (v21 >> 28) + v61;
      HIDWORD(v21) = *a3 + v59 - 358537222 + (v61 ^ v60 ^ v62);
      LODWORD(v21) = HIDWORD(v21);
      v63 = (v21 >> 21) + v62;
      HIDWORD(v21) = v8 + v60 - 722521979 + (v62 ^ v61 ^ v63);
      LODWORD(v21) = HIDWORD(v21);
      v64 = (v21 >> 16) + v63;
      HIDWORD(v21) = v12 + v61 + 76029189 + (v63 ^ v62 ^ v64);
      LODWORD(v21) = HIDWORD(v21);
      v65 = (v21 >> 9) + v64;
      HIDWORD(v21) = result + v62 - 640364487 + (v64 ^ v63 ^ v65);
      LODWORD(v21) = HIDWORD(v21);
      v66 = (v21 >> 28) + v65;
      HIDWORD(v21) = v17 + v63 - 421815835 + (v65 ^ v64 ^ v66);
      LODWORD(v21) = HIDWORD(v21);
      v67 = (v21 >> 21) + v66;
      HIDWORD(v21) = v19 + v64 + 530742520 + (v66 ^ v65 ^ v67);
      LODWORD(v21) = HIDWORD(v21);
      v68 = (v21 >> 16) + v67;
      HIDWORD(v21) = v9 + v65 - 995338651 + (v67 ^ v66 ^ v68);
      LODWORD(v21) = HIDWORD(v21);
      v69 = (v21 >> 9) + v68;
      HIDWORD(v21) = *a3 + v66 - 198630844 + ((v69 | ~v67) ^ v68);
      LODWORD(v21) = HIDWORD(v21);
      v70 = (v21 >> 26) + v69;
      HIDWORD(v21) = v13 + v67 + 1126891415 + ((v70 | ~v68) ^ v69);
      LODWORD(v21) = HIDWORD(v21);
      v71 = (v21 >> 22) + v70;
      HIDWORD(v21) = v20 + v68 - 1416354905 + ((v71 | ~v69) ^ v70);
      LODWORD(v21) = HIDWORD(v21);
      v72 = (v21 >> 17) + v71;
      HIDWORD(v21) = v10 + v69 - 57434055 + ((v72 | ~v70) ^ v71);
      LODWORD(v21) = HIDWORD(v21);
      v73 = (v21 >> 11) + v72;
      HIDWORD(v21) = v17 + v70 + 1700485571 + ((v73 | ~v71) ^ v72);
      LODWORD(v21) = HIDWORD(v21);
      v74 = (v21 >> 26) + v73;
      HIDWORD(v21) = v8 + v71 - 1894986606 + ((v74 | ~v72) ^ v73);
      LODWORD(v21) = HIDWORD(v21);
      v75 = (v21 >> 22) + v74;
      HIDWORD(v21) = v16 + v72 - 1051523 + ((v75 | ~v73) ^ v74);
      LODWORD(v21) = HIDWORD(v21);
      v76 = (v21 >> 17) + v75;
      HIDWORD(v21) = v7 + v73 - 2054922799 + ((v76 | ~v74) ^ v75);
      LODWORD(v21) = HIDWORD(v21);
      v77 = (v21 >> 11) + v76;
      HIDWORD(v21) = v14 + v74 + 1873313359 + ((v77 | ~v75) ^ v76);
      LODWORD(v21) = HIDWORD(v21);
      v78 = (v21 >> 26) + v77;
      HIDWORD(v21) = v19 + v75 - 30611744 + ((v78 | ~v76) ^ v77);
      LODWORD(v21) = HIDWORD(v21);
      v79 = (v21 >> 22) + v78;
      HIDWORD(v21) = v12 + v76 - 1560198380 + ((v79 | ~v77) ^ v78);
      LODWORD(v21) = HIDWORD(v21);
      v80 = (v21 >> 17) + v79;
      HIDWORD(v21) = v18 + v77 + 1309151649 + ((v80 | ~v78) ^ v79);
      LODWORD(v21) = HIDWORD(v21);
      v81 = (v21 >> 11) + v80;
      HIDWORD(v21) = v11 + v78 - 145523070 + ((v81 | ~v79) ^ v80);
      LODWORD(v21) = HIDWORD(v21);
      v82 = (v21 >> 26) + v81;
      HIDWORD(v21) = v15 + v79 - 1120210379 + ((v82 | ~v80) ^ v81);
      LODWORD(v21) = HIDWORD(v21);
      v83 = (v21 >> 22) + v82;
      HIDWORD(v21) = v9 + v80 + 718787259 + ((v83 | ~v81) ^ v82);
      LODWORD(v21) = HIDWORD(v21);
      v84 = (v21 >> 17) + v83;
      v3 += v82;
      HIDWORD(v21) = result + v81 - 343485551 + ((v84 | ~v82) ^ v83);
      LODWORD(v21) = HIDWORD(v21);
      v4 += v84 + (v21 >> 11);
      v5 += v84;
      v6 += v83;
      *v85 = v3;
      v85[1] = v4;
      v85[2] = v5;
      v85[3] = v6;
      a3 += 16;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t ccder_blob_decode_tag(unsigned __int8 **a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = v2 >= v3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  v8 = *v2;
  v6 = v2 + 1;
  v7 = v8;
  v9 = v8 & 0x1F;
  if (v9 == 31)
  {
    v9 = 0;
    while (1)
    {
      v5 = 0;
      if (v6 >= v3)
      {
        break;
      }

      v10 = v9;
      if (v9 >> 57)
      {
        break;
      }

      v11 = *v6++;
      v9 = v11 & 0x7F | (v9 << 7);
      if ((v11 & 0x80) == 0)
      {
        if (v10 >> 54)
        {
          return 0;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    *a2 = v9 | (v7 >> 5 << 61);
    *a1 = v6;
    return 1;
  }

  return v5;
}

uint64_t ccrng_getentropy_generate(int a1, unint64_t a2, char *buffer)
{
  if (a2)
  {
    v4 = a2;
    do
    {
      if (v4 >= 0x100)
      {
        v5 = 256;
      }

      else
      {
        v5 = v4;
      }

      if (getentropy(buffer, v5) == -1)
      {
        ccrng_getentropy_generate_cold_1();
      }

      buffer += v5;
      v4 -= v5;
    }

    while (v4);
  }

  return 0;
}

uint64_t ccdrbg_df_bc_derive_keys(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4, void *a5)
{
  v6 = a4;
  v59 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1EEE9AC00](*(a1 + 8), a2, a3, a4);
  v10 = &v48 - v9;
  v14 = MEMORY[0x1EEE9AC00](v8, v11, v12, v13);
  v18 = &v48 - v17;
  v19 = 0;
  if (v15)
  {
    v20 = (v16 + 8);
    v21 = v15;
    do
    {
      v22 = *v20;
      v20 += 2;
      v19 += v22;
      --v21;
    }

    while (v21);
  }

  v56[0] = 0;
  v56[1] = 0;
  v57 = bswap32(v19);
  v58 = bswap32(v6);
  v55 = xmmword_1DF100DD0;
  v53 = *(a1 + 16) + 16;
  if (v53)
  {
    v23 = 0;
    v24 = 0;
    v49 = 16 - (v19 & 0xF ^ 8);
    v50 = v16 + 8;
    v51 = v15;
    v52 = v10;
    while (1)
    {
      OUTLINED_FUNCTION_1_22();
      LODWORD(v56[0]) = bswap32(v24);
      __src[0] = 0;
      OUTLINED_FUNCTION_0_42();
      updated = update_1(v25, v26, v18, v27, v28, 0x18uLL, v56);
      if (updated)
      {
        goto LABEL_29;
      }

      v30 = v50;
      v31 = v51;
      if (v51)
      {
        while (1)
        {
          OUTLINED_FUNCTION_0_42();
          v38 = update_1(v32, v33, v18, v34, v35, v36, v37);
          if (v38)
          {
            break;
          }

          v30 += 16;
          if (!--v31)
          {
            goto LABEL_10;
          }
        }

        v46 = v38;
        v10 = v52;
        goto LABEL_27;
      }

LABEL_10:
      OUTLINED_FUNCTION_0_42();
      updated = update_1(v39, v40, v18, v41, v42, v49, &v55);
      v10 = v52;
      if (updated)
      {
        goto LABEL_29;
      }

      ++v24;
      v23 += 16;
      if (v23 >= v53)
      {
        v14 = *(a1 + 8);
        break;
      }
    }
  }

  updated = ccecb_init_internal(v14);
  if (updated)
  {
LABEL_29:
    v46 = updated;
    goto LABEL_27;
  }

  if (v6)
  {
    v43 = &__src[2] + *(a1 + 16);
    do
    {
      OUTLINED_FUNCTION_1_22();
      v44 = (v6 <= 0xF ? __src : a5);
      updated = ccdrbg_generate_internal(*(a1 + 8), v10, v18, 1, v43, v44);
      if (updated)
      {
        goto LABEL_29;
      }

      if (v6 <= 0xF)
      {
        memcpy(a5, __src, v6);
      }

      if (v6 >= 0x10)
      {
        v45 = 16;
      }

      else
      {
        v45 = v6;
      }

      a5 = (a5 + v45);
      v43 = v44;
      v6 -= v45;
    }

    while (v6);
  }

  v46 = 0;
LABEL_27:
  cc_clear(**(a1 + 8), v10);
  OUTLINED_FUNCTION_1_22();
  return v46;
}

uint64_t ccaes_arm_encrypt_cbc(uint64_t result, int8x16_t *a2, uint64_t a3, uint64_t a4, int8x16_t *a5)
{
  if (a3)
  {
    v5 = *(result + 240);
    if (v5 == 160 || v5 == 192 || v5 == 224)
    {
      do
      {
        v6 = v5 - 16;
        a4 += 16;
        _Q2 = *result;
        v7 = (result + 16);
        do
        {
          __asm
          {
            AESE            V0.16B, V2.16B
            AESMC           V0.16B, V0.16B
          }

          _Q2 = *v7++;
          v15 = v6 <= 16;
          v6 -= 16;
        }

        while (!v15);
        __asm { AESE            V0.16B, V2.16B }

        v17 = veorq_s8(_Q0, *v7);
        result = v7->i64 - v5;
        *a5++ = v17;
        v15 = a3-- <= 1;
      }

      while (!v15);
      result = 0;
      *a2 = v17;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

uint64_t update(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = ccctr_context_size(*(a1 + 56));
  MEMORY[0x1EEE9AC00](v4, v5, v6, v7);
  v9 = v12 - v8;
  inc_uint(a1 + 40, 8uLL);
  ccctr_init_internal(*(a1 + 56));
  update_with_ctr(a1, v9, a2);
  v10 = ccctr_context_size(*(a1 + 56));
  return cc_clear(v10, v9);
}

uint64_t update_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a2;
  v21 = &v21;
  v24 = *MEMORY[0x1E69E9840];
  v11 = a1 + 72;
  v12 = **a1;
  v13 = *v12;
  v23 = 0;
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v15 = (&v21 - v14);
  v16 = 0;
  for (i = 0; i < 2u; ++i)
  {
    cchmac_init_internal(v12, v15, v13, (a1 + 8));
    cchmac_update_internal(v12, v15, v13, v11);
    cchmac_update_internal(v12, v15, 1, &i);
    v23 = &a9;
    for (j = v9; j; --j)
    {
      v18 = v23++;
      v19 = *v18;
      v23 = v18 + 2;
      cchmac_update_internal(v12, v15, v19, v18[1]);
      v16 += v19;
    }

    cchmac_final_internal(v12, v15, a1 + 8);
    cchmac_internal(v12, v13, a1 + 8, v13, v11, v11);
    if (!v16)
    {
      break;
    }
  }

  return cc_clear(((v12[1] + v12[2] + 19) & 0xFFFFFFFFFFFFFFF8) + v12[1], v15);
}

uint64_t update_1(int a1, int a2, int a3, uint64_t a4, void *a5, size_t __n, char *__src)
{
  v7 = __src;
  v8 = __n;
  v11 = 16 - *a5;
  if (*a5)
  {
    v12 = __n >= v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    memcpy((a4 + *a5), __src, 16 - *a5);
    v13 = OUTLINED_FUNCTION_2_14();
    result = ccdrbg_generate_internal(v13, v14, v15, v16, a4, a4);
    if (result)
    {
      return result;
    }

    v8 -= v11;
    v7 += v11;
    *a5 = 0;
  }

  if (v8 < 0x10)
  {
LABEL_11:
    if (v8)
    {
      memcpy((a4 + *a5), v7, v8);
      result = 0;
      *a5 += v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      v18 = OUTLINED_FUNCTION_2_14();
      result = ccdrbg_generate_internal(v18, v19, v20, v21, v7, a4);
      if (result)
      {
        break;
      }

      v8 -= 16;
      v7 += 16;
      if (v8 <= 0xF)
      {
        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_3(unsigned __int16 **a1, uint64_t a2, rsize_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10)
{

  return cchpke_labeled_expand(a1, 0, a3, v12, 3uLL, a6, v11, v10, a9, a10);
}

uint64_t OUTLINED_FUNCTION_2_4(void *a1, void (**a2)(void, uint64_t, uint64_t *))
{

  return cced25519_sign_with_rng_internal(a1, a2, v6, v5, v4, v3, v2);
}

BOOL OUTLINED_FUNCTION_2_12()
{

  return ccn_add1_ws(v0, v2, v1, v1, 1);
}

uint64_t ccdigest_final_64be(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = a2 + v6 + 8;
  if (v5 <= *(v7 + v5))
  {
    *(v7 + v5) = 0;
  }

  MEMORY[0x1EEE9AC00]();
  v9 = (v21 - v8);
  memcpy(v21 - v8, v11, v10 + 12);
  v12 = v9 + v6;
  v13 = v9 + v6 + 8;
  v14 = (v13 + v5);
  v15 = *(v13 + v5);
  *v9 += (8 * v15);
  *(v13 + v5) = v15 + 1;
  *(v13 + v15) = 0x80;
  v16 = *(v13 + v5);
  if (v16 < 0x39)
  {
    if (v16 == 56)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v16 <= 0x3F)
    {
      do
      {
        *v14 = v16 + 1;
        *(v13 + v16) = 0;
        v16 = *v14;
      }

      while (v16 < 0x40);
    }

    (*(a1 + 48))(v9 + 1, 1);
    v16 = 0;
    v12 = v9 + *(a1 + 8);
    v13 = (v12 + 8);
    v14 = &v12[*(a1 + 16) + 8];
    *v14 = 0;
  }

  do
  {
    *v14 = v16 + 1;
    *(v13 + v16) = 0;
    v16 = *v14;
  }

  while (v16 < 0x38);
LABEL_9:
  *(v12 + 8) = bswap64(*v9);
  (*(a1 + 48))(v9 + 1, 1);
  if (*a1 >= 4uLL)
  {
    v17 = 0;
    v18 = 0;
    v19 = 1;
    do
    {
      *(a3 + v17) = bswap32(*(v9 + v18 + 2));
      v18 = v19++;
      v17 += 4;
    }

    while (v18 < *a1 >> 2);
  }

  return cc_clear(*(a1 + 8) + *(a1 + 16) + 12, v9);
}

int32x4_t *AccelerateCrypto_SHA256_compress(int32x4_t *result, uint64_t a2, int8x16_t *a3)
{
  if (a2)
  {
    v4 = *a3;
    v5 = a3[1];
    v6 = a3[2];
    v7 = a3[3];
    v3 = a3 + 4;
    _Q1 = vrev32q_s8(v5);
    v9 = *result;
    _Q2 = vrev32q_s8(v6);
    _Q17 = result[1];
    _Q3 = vrev32q_s8(v7);
    _Q18 = *result;
    _Q4 = vaddq_s32(vrev32q_s8(v4), K256);
    _Q5 = vaddq_s32(_Q1, xmmword_1DF09B100);
    _Q19 = _Q17;
    _Q6 = vaddq_s32(_Q2, xmmword_1DF09B110);
    _Q7 = vaddq_s32(_Q3, xmmword_1DF09B120);
    v19 = &xmmword_1DF09B130;
    v20 = 3;
    do
    {
      _Q20 = _Q18;
      v22 = *v19;
      __asm { SHA256SU0       V0.4S, V1.4S }

      v28 = v19[1];
      __asm { SHA256H         Q18, Q19, V4.4S }

      v30 = v19[2];
      __asm { SHA256SU1       V0.4S, V2.4S, V3.4S }

      v32 = v19[3];
      __asm { SHA256H2        Q19, Q20, V4.4S }

      v19 += 4;
      _Q4 = vaddq_s32(_Q0, v22);
      _Q20 = _Q18;
      __asm
      {
        SHA256SU0       V1.4S, V2.4S
        SHA256H         Q18, Q19, V5.4S
        SHA256SU1       V1.4S, V3.4S, V0.4S
        SHA256H2        Q19, Q20, V5.4S
      }

      _Q5 = vaddq_s32(_Q1, v28);
      _Q20 = _Q18;
      __asm
      {
        SHA256SU0       V2.4S, V3.4S
        SHA256H         Q18, Q19, V6.4S
        SHA256SU1       V2.4S, V0.4S, V1.4S
        SHA256H2        Q19, Q20, V6.4S
      }

      _Q6 = vaddq_s32(_Q2, v30);
      --v20;
      _Q20 = _Q18;
      __asm
      {
        SHA256SU0       V3.4S, V0.4S
        SHA256H         Q18, Q19, V7.4S
        SHA256SU1       V3.4S, V1.4S, V2.4S
        SHA256H2        Q19, Q20, V7.4S
      }

      _Q7 = vaddq_s32(_Q3, v32);
    }

    while (!(_NF ^ _VF | _ZF));
    v44 = a2 <= 1;
    v45 = a2 - 1;
    if (!v44)
    {
      v46 = (v19 - 16);
      do
      {
        _Q20 = _Q18;
        __asm { SHA256H         Q18, Q19, V4.4S }

        v49 = v3[1];
        v50 = v3[2];
        __asm { SHA256H2        Q19, Q20, V4.4S }

        v52 = v3[3];
        _Q4 = vaddq_s32(vrev32q_s8(*v3), *v46);
        _Q20 = _Q18;
        v3 += 4;
        __asm { SHA256H         Q18, Q19, V5.4S }

        _Q1 = vrev32q_s8(v49);
        __asm { SHA256H2        Q19, Q20, V5.4S }

        _Q5 = vaddq_s32(_Q1, v46[1]);
        _Q20 = _Q18;
        __asm { SHA256H         Q18, Q19, V6.4S }

        _Q2 = vrev32q_s8(v50);
        __asm { SHA256H2        Q19, Q20, V6.4S }

        _Q6 = vaddq_s32(_Q2, v46[2]);
        _Q20 = _Q18;
        __asm { SHA256H         Q18, Q19, V7.4S }

        _Q3 = vrev32q_s8(v52);
        __asm { SHA256H2        Q19, Q20, V7.4S }

        _Q7 = vaddq_s32(_Q3, v46[3]);
        v9 = vaddq_s32(v9, _Q18);
        _Q17 = vaddq_s32(_Q17, _Q19);
        _Q20 = v9;
        __asm
        {
          SHA256SU0       V0.4S, V1.4S
          SHA256H         Q18, Q19, V4.4S
          SHA256SU1       V0.4S, V2.4S, V3.4S
          SHA256H2        Q19, Q20, V4.4S
        }

        _Q4 = vaddq_s32(_Q0, v46[4]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V1.4S, V2.4S
          SHA256H         Q18, Q19, V5.4S
          SHA256SU1       V1.4S, V3.4S, V0.4S
          SHA256H2        Q19, Q20, V5.4S
        }

        _Q5 = vaddq_s32(_Q1, v46[5]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V2.4S, V3.4S
          SHA256H         Q18, Q19, V6.4S
          SHA256SU1       V2.4S, V0.4S, V1.4S
          SHA256H2        Q19, Q20, V6.4S
        }

        _Q6 = vaddq_s32(_Q2, v46[6]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V3.4S, V0.4S
          SHA256H         Q18, Q19, V7.4S
          SHA256SU1       V3.4S, V1.4S, V2.4S
          SHA256H2        Q19, Q20, V7.4S
        }

        _Q7 = vaddq_s32(_Q3, v46[7]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V0.4S, V1.4S
          SHA256H         Q18, Q19, V4.4S
          SHA256SU1       V0.4S, V2.4S, V3.4S
          SHA256H2        Q19, Q20, V4.4S
        }

        _Q4 = vaddq_s32(_Q0, v46[8]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V1.4S, V2.4S
          SHA256H         Q18, Q19, V5.4S
          SHA256SU1       V1.4S, V3.4S, V0.4S
          SHA256H2        Q19, Q20, V5.4S
        }

        _Q5 = vaddq_s32(_Q1, v46[9]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V2.4S, V3.4S
          SHA256H         Q18, Q19, V6.4S
          SHA256SU1       V2.4S, V0.4S, V1.4S
          SHA256H2        Q19, Q20, V6.4S
        }

        _Q6 = vaddq_s32(_Q2, v46[10]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V3.4S, V0.4S
          SHA256H         Q18, Q19, V7.4S
          SHA256SU1       V3.4S, V1.4S, V2.4S
          SHA256H2        Q19, Q20, V7.4S
        }

        _Q7 = vaddq_s32(_Q3, v46[11]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V0.4S, V1.4S
          SHA256H         Q18, Q19, V4.4S
          SHA256SU1       V0.4S, V2.4S, V3.4S
          SHA256H2        Q19, Q20, V4.4S
        }

        _Q4 = vaddq_s32(_Q0, v46[12]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V1.4S, V2.4S
          SHA256H         Q18, Q19, V5.4S
          SHA256SU1       V1.4S, V3.4S, V0.4S
          SHA256H2        Q19, Q20, V5.4S
        }

        _Q5 = vaddq_s32(_Q1, v46[13]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V2.4S, V3.4S
          SHA256H         Q18, Q19, V6.4S
          SHA256SU1       V2.4S, V0.4S, V1.4S
          SHA256H2        Q19, Q20, V6.4S
        }

        _Q6 = vaddq_s32(_Q2, v46[14]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V3.4S, V0.4S
          SHA256H         Q18, Q19, V7.4S
          SHA256SU1       V3.4S, V1.4S, V2.4S
          SHA256H2        Q19, Q20, V7.4S
        }

        _Q7 = vaddq_s32(_Q3, v46[15]);
        v44 = v45-- <= 1;
      }

      while (!v44);
    }

    _Q20 = _Q18;
    __asm
    {
      SHA256H         Q18, Q19, V4.4S
      SHA256H2        Q19, Q20, V4.4S
    }

    _Q20 = _Q18;
    __asm
    {
      SHA256H         Q18, Q19, V5.4S
      SHA256H2        Q19, Q20, V5.4S
    }

    _Q20 = _Q18;
    __asm
    {
      SHA256H         Q18, Q19, V6.4S
      SHA256H2        Q19, Q20, V6.4S
    }

    _Q20 = _Q18;
    __asm
    {
      SHA256H         Q18, Q19, V7.4S
      SHA256H2        Q19, Q20, V7.4S
    }

    *result = vaddq_s32(v9, _Q18);
    result[1] = vaddq_s32(_Q17, _Q19);
  }

  return result;
}

uint64_t ccrng_crypto_init(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a8 > 0x40)
  {
    return 4294967291;
  }

  result = 0;
  *a1 = generate_1;
  a1[1] = a2;
  a1[2] = a3;
  a1[3] = a4;
  a1[4] = a5;
  a1[5] = a6;
  a1[6] = a7;
  a1[7] = a8;
  a1[8] = a9;
  a1[9] = a10;
  a1[10] = a9;
  return result;
}

uint64_t ccdigest_init(uint64_t a1, void *a2)
{
  v5 = timingsafe_enable_if_supported();
  memcpy(a2 + 1, *(a1 + 40), *(a1 + 8));
  *a2 = 0;
  *(a2 + *(a1 + 8) + *(a1 + 16) + 8) = 0;
  return cc_disable_dit_with_sb(&v5);
}

uint64_t ccdigest_update(unint64_t *a1, void *a2, size_t a3, char *a4)
{
  v9 = timingsafe_enable_if_supported();
  ccdigest_update_internal(a1, a2, a3, a4);
  return cc_disable_dit_with_sb(&v9);
}

uint64_t ccrng_process_init(uint64_t a1, uint64_t (*a2)(void), uint64_t (**a3)(void, uint64_t, _BYTE *))
{
  v13 = *MEMORY[0x1E69E9840];
  ccrng_schedule_timer_init(a1 + 128, a2, 5000000000);
  ccrng_schedule_atomic_flag_init(a1 + 168);
  ccrng_schedule_tree_init(a1 + 96, a1 + 128, a1 + 168);
  result = cc_lock_init((a1 + 208));
  if (!result)
  {
    result = ccentropy_rng_init((a1 + 192), a3);
    if (!result)
    {
      v7 = ccaes_cbc_encrypt_mode();
      result = ccdrbg_df_bc_init_internal((a1 + 224), v7, 0x20uLL);
      if (!result)
      {
        v8 = ccaes_ctr_crypt_mode();
        v9 = xmmword_1DF0F87B0;
        DWORD2(v9) = 1;
        v10 = a1 + 224;
        ccdrbg_factory_nistctr((a1 + 768), &v8);
        result = (*a3)(a3, 32, v12);
        if (!result)
        {
          a2();
          strcpy(v11, "corecrypto process rng");
          result = ccdrbg_init_internal(a1 + 768);
          if (!result)
          {
            result = ccrng_crypto_init((a1 + 8), a1 + 192, a1 + 96, a1 + 208, a1 + 768, a1 + 824, 4096, 0x20uLL, 256, a1 + 2104);
            if (!result)
            {
              *a1 = generate_0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t init()
{
  result = ccrng_process_init(&process_rng_ctx, get_time_nsec, &ccrng_getentropy);
  if (result)
  {
    init_cold_1();
  }

  rng_ctx = generate;
  return result;
}

uint64_t init_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v28 = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 40);
  cc_clear(0x58uLL, a2);
  v18 = *v12;
  v19 = v12[1];
  *(a2 + 56) = *v12;
  *(a2 + 64) = v19;
  *(a2 + 72) = *(v12 + 4);
  v20 = v12[3];
  *(a2 + 80) = v20;
  if (v19 >= 0x21 || *(v18 + 16) != 16)
  {
    cc_try_abort();
  }

  if (!v20)
  {
    if (v19 + 16 >= a7 && v19 + 16 == a3)
    {
      __memcpy_chk();
      for (; a7; --a7)
      {
        __s[a7 - 1] ^= *(a8 - 1 + a7);
      }

      goto LABEL_8;
    }

    v21 = 4294967233;
LABEL_16:
    cc_clear(0x20uLL, a2);
    cc_clear(0x10uLL, (a2 + 32));
    v23 = -1;
    goto LABEL_9;
  }

  v21 = 4294967233;
  if ((a3 - 65537) < 0xFFFFFFFFFFFF000FLL || a7 > 0x10000)
  {
    goto LABEL_16;
  }

  v22 = derive(a2, __s, 3u, v13, v14, v15, v16, v17, a3);
  if (v22)
  {
    v21 = v22;
    goto LABEL_16;
  }

  v19 = *(a2 + 64);
LABEL_8:
  cc_clear(v19, a2);
  cc_clear(0x10uLL, (a2 + 32));
  update(a2, __s);
  v21 = 0;
  v23 = 1;
LABEL_9:
  *(a2 + 48) = v23;
  cc_clear(0x30uLL, __s);
  return v21;
}

uint64_t init_1(uint64_t a1, unint64_t ***a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v7 = *(a1 + 40);
  *a2 = v7;
  result = 4294967233;
  if (a3 <= 0x10000)
  {
    v9 = **v7;
    if (v9 <= 0x40)
    {
      if (a7 > 0x10000 || v9 >> 1 > a3)
      {
        return 4294967233;
      }

      else
      {
        __memset_chk();
        __memset_chk();
        update_0(a2, 3, v13, v14, v15, v16, v17, v18, a3);
        result = 0;
        a2[17] = 1;
      }
    }
  }

  return result;
}

uint64_t ccentropy_rng_init(void *a1, uint64_t a2)
{
  v5 = timingsafe_enable_if_supported();
  *a1 = &entropy_rng_info;
  a1[1] = a2;
  cc_disable_dit_with_sb(&v5);
  return 0;
}

uint64_t ccrng_schedule_tree_init(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = &ccrng_schedule_tree_info;
  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 24) = a3;
  return result;
}

uint64_t ccrng_schedule_atomic_flag_init(uint64_t result)
{
  *result = &ccrng_schedule_atomic_flag_info;
  *(result + 8) = 0;
  *(result + 16) = 1;
  return result;
}

uint64_t ccdrbg_df_bc_init_internal(void *a1, void *a2, unint64_t a3)
{
  v3 = 4294967291;
  if (a3 <= 0x20 && *a2 <= 0x200uLL)
  {
    if (a2[1] == 16)
    {
      *a1 = ccdrbg_df_bc_derive_keys;
      a1[1] = a2;
      a1[2] = a3;
      return ccecb_init_internal(a2);
    }

    else
    {
      return 4294967291;
    }
  }

  return v3;
}

uint64_t ccrng_schedule_timer_init(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  *a1 = &ccrng_schedule_timer_info;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  result = a2();
  *(a1 + 32) = result;
  return result;
}

uint64_t *ccrng_prng(_DWORD *a1)
{
  v3 = timingsafe_enable_if_supported();
  if (ccrng_prng_init_pred != -1)
  {
    ccrng_prng_cold_1();
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a1)
  {
LABEL_3:
    *a1 = 0;
  }

LABEL_4:
  cc_disable_dit_with_sb(&v3);
  return &rng_ctx;
}

uint64_t *ccaes_ctr_crypt_mode()
{
  v0 = ((*ccaes_ecb_encrypt_mode() + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  v1 = ccaes_ecb_encrypt_mode();
  ctr_crypt = v0;
  *algn_1ED3F6930 = xmmword_1DF0F8860;
  qword_1ED3F6940 = ccmode_ctr_init;
  qword_1ED3F6948 = ccmode_ctr_setctr;
  qword_1ED3F6950 = ccaes_vng_ctr_crypt;
  unk_1ED3F6958 = v1;
  return &ctr_crypt;
}

void *ccdrbg_factory_nistctr(void *result, uint64_t a2)
{
  *result = 88;
  result[1] = init_0;
  result[3] = generate_4;
  result[2] = reseed;
  result[4] = done;
  result[5] = a2;
  result[6] = must_reseed;
  return result;
}

int64x2_t *AccelerateCrypto_SHA512_compress_hwassist(int64x2_t *result, uint64_t a2, int8x16_t *a3)
{
  if (a2)
  {
    v3 = *result;
    v4 = result[1];
    v5 = result[2];
    v6 = result[3];
    do
    {
      _Q24 = v3;
      _Q25 = v4;
      _Q0 = vrev64q_s8(*a3);
      _Q1 = vrev64q_s8(a3[1]);
      _Q2 = vrev64q_s8(a3[2]);
      _Q3 = vrev64q_s8(a3[3]);
      _Q4 = vrev64q_s8(a3[4]);
      _Q5 = vrev64q_s8(a3[5]);
      _Q6 = vrev64q_s8(a3[6]);
      _Q7 = vrev64q_s8(a3[7]);
      a3 += 8;
      _Q29 = vextq_s8(v5, v6, 8uLL);
      _Q28 = vextq_s8(v4, v5, 8uLL);
      _Q31 = vextq_s8(_Q4, _Q5, 8uLL);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V0.2D, V1.2D
      }

      v26 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V0.2D, V7.2D, V31.2D
      }

      v29 = vaddq_s64(v4, v26);
      _Q29 = vextq_s8(v29, v5, 8uLL);
      _Q28 = vextq_s8(v3, v29, 8uLL);
      _Q31 = vextq_s8(_Q5, _Q6, 8uLL);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V1.2D, V2.2D
      }

      v35 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V1.2D, V0.2D, V31.2D
      }

      v38 = vaddq_s64(v3, v35);
      _Q29 = vextq_s8(v38, v29, 8uLL);
      _Q28 = vextq_s8(_Q27, v38, 8uLL);
      _Q31 = vextq_s8(_Q6, _Q7, 8uLL);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V2.2D, V3.2D
      }

      v44 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V2.2D, V1.2D, V31.2D
      }

      v47 = vaddq_s64(_Q27, v44);
      _Q29 = vextq_s8(v47, v38, 8uLL);
      _Q28 = vextq_s8(_Q26, v47, 8uLL);
      _Q31 = vextq_s8(_Q7, _Q0, 8uLL);
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V3.2D, V4.2D
      }

      v53 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V3.2D, V2.2D, V31.2D
      }

      v56 = vaddq_s64(_Q26, v53);
      _Q29 = vextq_s8(v56, v47, 8uLL);
      _Q28 = vextq_s8(_Q25, v56, 8uLL);
      _Q31 = vextq_s8(_Q0, _Q1, 8uLL);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V4.2D, V5.2D
      }

      v62 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V4.2D, V3.2D, V31.2D
      }

      v65 = vaddq_s64(_Q25, v62);
      _Q29 = vextq_s8(v65, v56, 8uLL);
      _Q28 = vextq_s8(_Q24, v65, 8uLL);
      _Q31 = vextq_s8(_Q1, _Q2, 8uLL);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V5.2D, V6.2D
      }

      v71 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V5.2D, V4.2D, V31.2D
      }

      v74 = vaddq_s64(_Q24, v71);
      _Q29 = vextq_s8(v74, v65, 8uLL);
      _Q28 = vextq_s8(_Q27, v74, 8uLL);
      _Q31 = vextq_s8(_Q2, _Q3, 8uLL);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V6.2D, V7.2D
      }

      v80 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V6.2D, V5.2D, V31.2D
      }

      v83 = vaddq_s64(_Q27, v80);
      _Q29 = vextq_s8(v83, v74, 8uLL);
      _Q28 = vextq_s8(_Q26, v83, 8uLL);
      _Q31 = vextq_s8(_Q3, _Q4, 8uLL);
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V7.2D, V0.2D
      }

      v89 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V7.2D, V6.2D, V31.2D
      }

      v92 = vaddq_s64(_Q26, v89);
      _Q29 = vextq_s8(v92, v83, 8uLL);
      _Q28 = vextq_s8(_Q25, v92, 8uLL);
      _Q31 = vextq_s8(_Q4, _Q5, 8uLL);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V0.2D, V1.2D
      }

      v98 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V0.2D, V7.2D, V31.2D
      }

      v101 = vaddq_s64(_Q25, v98);
      _Q29 = vextq_s8(v101, v92, 8uLL);
      _Q28 = vextq_s8(_Q24, v101, 8uLL);
      _Q31 = vextq_s8(_Q5, _Q6, 8uLL);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V1.2D, V2.2D
      }

      v107 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V1.2D, V0.2D, V31.2D
      }

      v110 = vaddq_s64(_Q24, v107);
      _Q29 = vextq_s8(v110, v101, 8uLL);
      _Q28 = vextq_s8(_Q27, v110, 8uLL);
      _Q31 = vextq_s8(_Q6, _Q7, 8uLL);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V2.2D, V3.2D
      }

      v116 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V2.2D, V1.2D, V31.2D
      }

      v119 = vaddq_s64(_Q27, v116);
      _Q29 = vextq_s8(v119, v110, 8uLL);
      _Q28 = vextq_s8(_Q26, v119, 8uLL);
      _Q31 = vextq_s8(_Q7, _Q0, 8uLL);
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V3.2D, V4.2D
      }

      v125 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V3.2D, V2.2D, V31.2D
      }

      v128 = vaddq_s64(_Q26, v125);
      _Q29 = vextq_s8(v128, v119, 8uLL);
      _Q28 = vextq_s8(_Q25, v128, 8uLL);
      _Q31 = vextq_s8(_Q0, _Q1, 8uLL);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V4.2D, V5.2D
      }

      v134 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V4.2D, V3.2D, V31.2D
      }

      v137 = vaddq_s64(_Q25, v134);
      _Q29 = vextq_s8(v137, v128, 8uLL);
      _Q28 = vextq_s8(_Q24, v137, 8uLL);
      _Q31 = vextq_s8(_Q1, _Q2, 8uLL);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V5.2D, V6.2D
      }

      v143 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V5.2D, V4.2D, V31.2D
      }

      v146 = vaddq_s64(_Q24, v143);
      _Q29 = vextq_s8(v146, v137, 8uLL);
      _Q28 = vextq_s8(_Q27, v146, 8uLL);
      _Q31 = vextq_s8(_Q2, _Q3, 8uLL);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V6.2D, V7.2D
      }

      v152 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V6.2D, V5.2D, V31.2D
      }

      v155 = vaddq_s64(_Q27, v152);
      _Q29 = vextq_s8(v155, v146, 8uLL);
      _Q28 = vextq_s8(_Q26, v155, 8uLL);
      _Q31 = vextq_s8(_Q3, _Q4, 8uLL);
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V7.2D, V0.2D
      }

      v161 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V7.2D, V6.2D, V31.2D
      }

      v164 = vaddq_s64(_Q26, v161);
      _Q29 = vextq_s8(v164, v155, 8uLL);
      _Q28 = vextq_s8(_Q25, v164, 8uLL);
      _Q31 = vextq_s8(_Q4, _Q5, 8uLL);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V0.2D, V1.2D
      }

      v170 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V0.2D, V7.2D, V31.2D
      }

      v173 = vaddq_s64(_Q25, v170);
      _Q29 = vextq_s8(v173, v164, 8uLL);
      _Q28 = vextq_s8(_Q24, v173, 8uLL);
      _Q31 = vextq_s8(_Q5, _Q6, 8uLL);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V1.2D, V2.2D
      }

      v179 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V1.2D, V0.2D, V31.2D
      }

      v182 = vaddq_s64(_Q24, v179);
      _Q29 = vextq_s8(v182, v173, 8uLL);
      _Q28 = vextq_s8(_Q27, v182, 8uLL);
      _Q31 = vextq_s8(_Q6, _Q7, 8uLL);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V2.2D, V3.2D
      }

      v188 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V2.2D, V1.2D, V31.2D
      }

      v191 = vaddq_s64(_Q27, v188);
      _Q29 = vextq_s8(v191, v182, 8uLL);
      _Q28 = vextq_s8(_Q26, v191, 8uLL);
      _Q31 = vextq_s8(_Q7, _Q0, 8uLL);
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V3.2D, V4.2D
      }

      v197 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V3.2D, V2.2D, V31.2D
      }

      v200 = vaddq_s64(_Q26, v197);
      _Q29 = vextq_s8(v200, v191, 8uLL);
      _Q28 = vextq_s8(_Q25, v200, 8uLL);
      _Q31 = vextq_s8(_Q0, _Q1, 8uLL);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V4.2D, V5.2D
      }

      v206 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V4.2D, V3.2D, V31.2D
      }

      v209 = vaddq_s64(_Q25, v206);
      _Q29 = vextq_s8(v209, v200, 8uLL);
      _Q28 = vextq_s8(_Q24, v209, 8uLL);
      _Q31 = vextq_s8(_Q1, _Q2, 8uLL);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V5.2D, V6.2D
      }

      v215 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V5.2D, V4.2D, V31.2D
      }

      v218 = vaddq_s64(_Q24, v215);
      _Q29 = vextq_s8(v218, v209, 8uLL);
      _Q28 = vextq_s8(_Q27, v218, 8uLL);
      _Q31 = vextq_s8(_Q2, _Q3, 8uLL);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V6.2D, V7.2D
      }

      v224 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V6.2D, V5.2D, V31.2D
      }

      v227 = vaddq_s64(_Q27, v224);
      _Q29 = vextq_s8(v227, v218, 8uLL);
      _Q28 = vextq_s8(_Q26, v227, 8uLL);
      _Q31 = vextq_s8(_Q3, _Q4, 8uLL);
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V7.2D, V0.2D
      }

      v233 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V7.2D, V6.2D, V31.2D
      }

      v236 = vaddq_s64(_Q26, v233);
      _Q29 = vextq_s8(v236, v227, 8uLL);
      _Q28 = vextq_s8(_Q25, v236, 8uLL);
      _Q31 = vextq_s8(_Q4, _Q5, 8uLL);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V0.2D, V1.2D
      }

      v242 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V0.2D, V7.2D, V31.2D
      }

      v245 = vaddq_s64(_Q25, v242);
      _Q29 = vextq_s8(v245, v236, 8uLL);
      _Q28 = vextq_s8(_Q24, v245, 8uLL);
      _Q31 = vextq_s8(_Q5, _Q6, 8uLL);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V1.2D, V2.2D
      }

      v251 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V1.2D, V0.2D, V31.2D
      }

      v254 = vaddq_s64(_Q24, v251);
      _Q29 = vextq_s8(v254, v245, 8uLL);
      _Q28 = vextq_s8(_Q27, v254, 8uLL);
      _Q31 = vextq_s8(_Q6, _Q7, 8uLL);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V2.2D, V3.2D
      }

      v260 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V2.2D, V1.2D, V31.2D
      }

      v263 = vaddq_s64(_Q27, v260);
      _Q29 = vextq_s8(v263, v254, 8uLL);
      _Q28 = vextq_s8(_Q26, v263, 8uLL);
      _Q31 = vextq_s8(_Q7, _Q0, 8uLL);
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V3.2D, V4.2D
      }

      v269 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V3.2D, V2.2D, V31.2D
      }

      v272 = vaddq_s64(_Q26, v269);
      _Q29 = vextq_s8(v272, v263, 8uLL);
      _Q28 = vextq_s8(_Q25, v272, 8uLL);
      _Q31 = vextq_s8(_Q0, _Q1, 8uLL);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V4.2D, V5.2D
      }

      v278 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V4.2D, V3.2D, V31.2D
      }

      v281 = vaddq_s64(_Q25, v278);
      _Q29 = vextq_s8(v281, v272, 8uLL);
      _Q28 = vextq_s8(_Q24, v281, 8uLL);
      _Q31 = vextq_s8(_Q1, _Q2, 8uLL);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V5.2D, V6.2D
      }

      v287 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V5.2D, V4.2D, V31.2D
      }

      v290 = vaddq_s64(_Q24, v287);
      _Q29 = vextq_s8(v290, v281, 8uLL);
      _Q28 = vextq_s8(_Q27, v290, 8uLL);
      _Q31 = vextq_s8(_Q2, _Q3, 8uLL);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V6.2D, V7.2D
      }

      v296 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V6.2D, V5.2D, V31.2D
      }

      v299 = vaddq_s64(_Q27, v296);
      _Q29 = vextq_s8(v299, v290, 8uLL);
      _Q28 = vextq_s8(_Q26, v299, 8uLL);
      _Q31 = vextq_s8(_Q3, _Q4, 8uLL);
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V7.2D, V0.2D
      }

      v305 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V7.2D, V6.2D, V31.2D
      }

      v308 = vaddq_s64(_Q26, v305);
      _Q29 = vextq_s8(v308, v299, 8uLL);
      _Q28 = vextq_s8(_Q25, v308, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q27, Q25, V24.2D
      }

      v313 = vaddq_s64(_Q25, _Q30);
      _Q29 = vextq_s8(v313, v308, 8uLL);
      _Q28 = vextq_s8(_Q24, v313, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q26, Q24, V27.2D
      }

      v318 = vaddq_s64(_Q24, _Q30);
      _Q29 = vextq_s8(v318, v313, 8uLL);
      _Q28 = vextq_s8(_Q27, v318, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q25, Q27, V26.2D
      }

      v323 = vaddq_s64(_Q27, _Q30);
      _Q29 = vextq_s8(v323, v318, 8uLL);
      _Q28 = vextq_s8(_Q26, v323, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q24, Q26, V25.2D
      }

      v328 = vaddq_s64(_Q26, _Q30);
      _Q29 = vextq_s8(v328, v323, 8uLL);
      _Q28 = vextq_s8(_Q25, v328, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q27, Q25, V24.2D
      }

      v333 = vaddq_s64(_Q25, _Q30);
      _Q29 = vextq_s8(v333, v328, 8uLL);
      _Q28 = vextq_s8(_Q24, v333, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q26, Q24, V27.2D
      }

      v338 = vaddq_s64(_Q24, _Q30);
      _Q29 = vextq_s8(v338, v333, 8uLL);
      _Q28 = vextq_s8(_Q27, v338, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q25, Q27, V26.2D
      }

      v343 = vaddq_s64(_Q27, _Q30);
      _Q29 = vextq_s8(v343, v338, 8uLL);
      _Q28 = vextq_s8(_Q26, v343, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q24, Q26, V25.2D
      }

      v3 = vaddq_s64(v3, _Q24);
      v4 = vaddq_s64(v4, _Q25);
      v5 = vaddq_s64(v5, vaddq_s64(_Q26, _Q30));
      v6 = vaddq_s64(v6, v343);
    }

    while (a2-- > 1);
    *result = v3;
    result[1] = v4;
    result[2] = v5;
    result[3] = v6;
  }

  return result;
}

unsigned __int8 *ccder_decode_constructed_tl(uint64_t a1, unsigned __int8 **a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  *a2 = a3;
  if (!a3)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8[0] = a3;
  v8[1] = a4;
  if (!ccder_blob_decode_range(v8, a1, &v6))
  {
    return 0;
  }

  result = v6;
  *a2 = v7;
  return result;
}

int32x4_t *AccelerateCrypto_SHA1_compress(int32x4_t *result, uint64_t a2, int8x16_t *a3)
{
  if (a2)
  {
    v5 = *a3;
    v6 = a3[1];
    v7 = a3[2];
    v8 = a3[3];
    v4 = a3 + 4;
    v10 = *result;
    v9 = result + 1;
    v11 = v10;
    v10.i32[0] = v9->i32[0];
    v12 = v9 - 1;
    v3.i32[0] = v10.i32[0];
    _Q1 = vrev32q_s8(v6);
    _Q2 = vrev32q_s8(v7);
    _Q3 = vrev32q_s8(v8);
    _Q4 = vaddq_s32(vrev32q_s8(v5), *K_XMM_AR);
    _Q5 = vaddq_s32(_Q1, *K_XMM_AR);
    _Q19 = v3;
    _Q6 = vaddq_s32(_Q2, *K_XMM_AR);
    _Q7 = vaddq_s32(_Q3, *K_XMM_AR);
    __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

    _S20 = v11.i32[0];
    __asm
    {
      SHA1C           Q18, S19, V4.4S
      SHA1H           S19, S20
      SHA1SU1         V0.4S, V3.4S
    }

    _Q4 = vaddq_s32(_Q0, *K_XMM_AR);
    __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1C           Q18, S19, V5.4S
      SHA1H           S19, S20
      SHA1SU1         V1.4S, V0.4S
    }

    _Q5 = vaddq_s32(_Q1, *&K_XMM_AR[2]);
    __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1C           Q18, S19, V6.4S
      SHA1H           S19, S20
      SHA1SU1         V2.4S, V1.4S
    }

    _Q6 = vaddq_s32(_Q2, *&K_XMM_AR[2]);
    __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1C           Q18, S19, V7.4S
      SHA1H           S19, S20
      SHA1SU1         V3.4S, V2.4S
    }

    _Q7 = vaddq_s32(_Q3, *&K_XMM_AR[2]);
    __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1C           Q18, S19, V4.4S
      SHA1H           S19, S20
      SHA1SU1         V0.4S, V3.4S
    }

    _Q4 = vaddq_s32(_Q0, *&K_XMM_AR[2]);
    __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V5.4S
      SHA1H           S19, S20
      SHA1SU1         V1.4S, V0.4S
    }

    _Q5 = vaddq_s32(_Q1, *&K_XMM_AR[2]);
    __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V6.4S
      SHA1H           S19, S20
      SHA1SU1         V2.4S, V1.4S
    }

    _Q6 = vaddq_s32(_Q2, *&K_XMM_AR[4]);
    __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V7.4S
      SHA1H           S19, S20
      SHA1SU1         V3.4S, V2.4S
    }

    _Q7 = vaddq_s32(_Q3, *&K_XMM_AR[4]);
    __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V4.4S
      SHA1H           S19, S20
      SHA1SU1         V0.4S, V3.4S
    }

    _Q4 = vaddq_s32(_Q0, *&K_XMM_AR[4]);
    __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V5.4S
      SHA1H           S19, S20
      SHA1SU1         V1.4S, V0.4S
    }

    _Q5 = vaddq_s32(_Q1, *&K_XMM_AR[4]);
    __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1M           Q18, S19, V6.4S
      SHA1H           S19, S20
      SHA1SU1         V2.4S, V1.4S
    }

    _Q6 = vaddq_s32(_Q2, *&K_XMM_AR[4]);
    __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1M           Q18, S19, V7.4S
      SHA1H           S19, S20
      SHA1SU1         V3.4S, V2.4S
    }

    _Q7 = vaddq_s32(_Q3, loc_1DF098850);
    __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1M           Q18, S19, V4.4S
      SHA1H           S19, S20
      SHA1SU1         V0.4S, V3.4S
    }

    _Q4 = vaddq_s32(_Q0, loc_1DF098850);
    __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1M           Q18, S19, V5.4S
      SHA1H           S19, S20
      SHA1SU1         V1.4S, V0.4S
    }

    _Q5 = vaddq_s32(_Q1, loc_1DF098850);
    __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1M           Q18, S19, V6.4S
      SHA1H           S19, S20
      SHA1SU1         V2.4S, V1.4S
    }

    _Q6 = vaddq_s32(_Q2, loc_1DF098850);
    __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V7.4S
      SHA1H           S19, S20
      SHA1SU1         V3.4S, V2.4S
    }

    _Q7 = vaddq_s32(_Q3, loc_1DF098850);
    v105 = a2 <= 1;
    for (i = a2 - 1; !v105; --i)
    {
      v107 = *v4;
      v108 = v4[1];
      v109 = v4[2];
      v110 = v4[3];
      v4 += 4;
      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V4.4S
        SHA1H           S19, S20
      }

      _Q4 = vaddq_s32(vrev32q_s8(v107), *K_XMM_AR);
      _Q1 = vrev32q_s8(v108);
      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V5.4S
        SHA1H           S19, S20
      }

      _Q5 = vaddq_s32(_Q1, *K_XMM_AR);
      _Q2 = vrev32q_s8(v109);
      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V6.4S
        SHA1H           S19, S20
      }

      _Q6 = vaddq_s32(_Q2, *K_XMM_AR);
      _Q3 = vrev32q_s8(v110);
      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V7.4S
        SHA1H           S19, S20
      }

      _Q7 = vaddq_s32(_Q3, *K_XMM_AR);
      _Q19 = vaddq_s32(v3, _Q19);
      v11 = vaddq_s32(v11, _Q18);
      v3 = _Q19;
      __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

      _S20 = v11.i32[0];
      __asm
      {
        SHA1C           Q18, S19, V4.4S
        SHA1H           S19, S20
        SHA1SU1         V0.4S, V3.4S
      }

      _Q4 = vaddq_s32(_Q0, *K_XMM_AR);
      __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1C           Q18, S19, V5.4S
        SHA1H           S19, S20
        SHA1SU1         V1.4S, V0.4S
      }

      _Q5 = vaddq_s32(_Q1, *&K_XMM_AR[2]);
      __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1C           Q18, S19, V6.4S
        SHA1H           S19, S20
        SHA1SU1         V2.4S, V1.4S
      }

      _Q6 = vaddq_s32(_Q2, *&K_XMM_AR[2]);
      __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1C           Q18, S19, V7.4S
        SHA1H           S19, S20
        SHA1SU1         V3.4S, V2.4S
      }

      _Q7 = vaddq_s32(_Q3, *&K_XMM_AR[2]);
      __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1C           Q18, S19, V4.4S
        SHA1H           S19, S20
        SHA1SU1         V0.4S, V3.4S
      }

      _Q4 = vaddq_s32(_Q0, *&K_XMM_AR[2]);
      __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V5.4S
        SHA1H           S19, S20
        SHA1SU1         V1.4S, V0.4S
      }

      _Q5 = vaddq_s32(_Q1, *&K_XMM_AR[2]);
      __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V6.4S
        SHA1H           S19, S20
        SHA1SU1         V2.4S, V1.4S
      }

      _Q6 = vaddq_s32(_Q2, *&K_XMM_AR[4]);
      __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V7.4S
        SHA1H           S19, S20
        SHA1SU1         V3.4S, V2.4S
      }

      _Q7 = vaddq_s32(_Q3, *&K_XMM_AR[4]);
      __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V4.4S
        SHA1H           S19, S20
        SHA1SU1         V0.4S, V3.4S
      }

      _Q4 = vaddq_s32(_Q0, *&K_XMM_AR[4]);
      __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V5.4S
        SHA1H           S19, S20
        SHA1SU1         V1.4S, V0.4S
      }

      _Q5 = vaddq_s32(_Q1, *&K_XMM_AR[4]);
      __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1M           Q18, S19, V6.4S
        SHA1H           S19, S20
        SHA1SU1         V2.4S, V1.4S
      }

      _Q6 = vaddq_s32(_Q2, *&K_XMM_AR[4]);
      __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1M           Q18, S19, V7.4S
        SHA1H           S19, S20
        SHA1SU1         V3.4S, V2.4S
      }

      _Q7 = vaddq_s32(_Q3, loc_1DF098850);
      __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1M           Q18, S19, V4.4S
        SHA1H           S19, S20
        SHA1SU1         V0.4S, V3.4S
      }

      _Q4 = vaddq_s32(_Q0, loc_1DF098850);
      __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1M           Q18, S19, V5.4S
        SHA1H           S19, S20
        SHA1SU1         V1.4S, V0.4S
      }

      _Q5 = vaddq_s32(_Q1, loc_1DF098850);
      __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1M           Q18, S19, V6.4S
        SHA1H           S19, S20
        SHA1SU1         V2.4S, V1.4S
      }

      _Q6 = vaddq_s32(_Q2, loc_1DF098850);
      __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V7.4S
        SHA1H           S19, S20
        SHA1SU1         V3.4S, V2.4S
      }

      _Q7 = vaddq_s32(_Q3, loc_1DF098850);
      v105 = i <= 1;
    }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V4.4S
      SHA1H           S19, S20
    }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V5.4S
      SHA1H           S19, S20
    }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V6.4S
      SHA1H           S19, S20
    }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V7.4S
      SHA1H           S19, S20
    }

    *v12 = vaddq_s32(v11, _Q18);
    result = v12 + 1;
    result->i32[0] = vaddq_s32(v3, _Q19).u32[0];
  }

  return result;
}

uint64_t ccgcm_aad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 40))(a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ccgcm_update(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = (*(a1 + 48))(a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t ccgcm_finalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 56))(a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ccgcm_set_iv_legacy(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = ccgcm_set_iv_legacy_internal(a1, a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ccmode_gcm_reset(uint64_t a1)
{
  cc_clear(0x10uLL, (a1 + 16));
  cc_clear(0x10uLL, (a1 + 64));
  *(a1 + 84) = 0;
  *(a1 + 80) = 1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return 0;
}

uint64_t ccaes_vng_gcm_decrypt(uint64_t a1, unint64_t a2, int8x16_t *a3, int8x16_t *a4, double a5, double a6, double a7, double a8, double a9, int8x16_t a10)
{
  v14 = *(a1 + 96);
  ccmode_gcm_aad_finalize(a1, a5, a6, a7, a8, a9, a10);
  if (*(a1 + 80) != 3)
  {
    return 4294967228;
  }

  v21 = *(a1 + 96);
  result = 4294967229;
  if (!__CFADD__(v21, a2) && v21 + a2 <= 0xFFFFFFFE0)
  {
    v23 = v14 & 0xF;
    if ((v14 & 0xF) != 0)
    {
      v24 = 16 - v23;
      if (a2 < v24)
      {
LABEL_19:
        if (!a2)
        {
          return 0;
        }

        v39 = v23;
        v40 = &a3[-1].i8[15];
        v41 = a1 + v23 + 15;
        v42 = a2;
        do
        {
          *(v41 + v42) ^= v40[v42];
          --v42;
        }

        while (v42);
        v43 = v39 + a1 + 63;
        v44 = a2;
        do
        {
          a4[-1].i8[v44 + 15] = *(v43 + v44) ^ v40[v44];
          --v44;
        }

        while (v44);
        result = 0;
        *(a1 + 96) += a2;
        return result;
      }

      v25 = v14 & 0xF;
      v26 = &a3[-1].i8[15];
      v27 = 16 - v23;
      do
      {
        *(v25 + a1 + 15 + v27) ^= v26[v27];
        --v27;
      }

      while (v27);
      ccmode_gcm_mult_h(a1, (a1 + 16), v15, v16, v17, v18, v19, v20);
      v28 = v24;
      do
      {
        a4[-1].i8[v28 + 15] = *(v25 + a1 + 63 + v28) ^ v26[v28];
        --v28;
      }

      while (v28);
      a2 -= v24;
      a3 = (a3 + v24);
      a4 = (a4 + v24);
      *(a1 + 96) += v24;
      ccmode_gcm_update_pad(a1);
    }

    if (a2 >= 0x10)
    {
      gcmDecrypt(a3, a4, a1, a2 & 0xFFFFFFF0, (a1 + 128), *(a1 + 112));
      v29 = a2 & 0xFFFFFFF0;
      a2 &= 0xFFFFFFFF0000000FLL;
      a3 = (a3 + v29);
      a4 = (a4 + v29);
      v30 = *(a1 + 104);
      *(a1 + 96) += v29;
      (*(v30 + 24))(*(a1 + 112), 1, a1 + 32, a1 + 64);
      if (a2 >= 0x10)
      {
        do
        {
          for (i = 0; i != -16; --i)
          {
            *(a1 + i + 31) ^= a3->u8[i + 15];
          }

          ccmode_gcm_mult_h(a1, (a1 + 16), v31, v32, v33, v34, v35, v36);
          for (j = 0; j != -16; --j)
          {
            a4->i8[j + 15] = *(a1 + j + 79) ^ a3->i8[j + 15];
          }

          a2 -= 16;
          ++a3;
          ++a4;
          *(a1 + 96) += 16;
          ccmode_gcm_update_pad(a1);
        }

        while (a2 > 0xF);
      }
    }

    v23 = 0;
    goto LABEL_19;
  }

  return result;
}

void gcmEncrypt(int8x16_t *a1, int8x16_t *a2, int8x16_t *a3, uint64_t a4, uint64x2_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = *(a6 + 240);
  v11 = vqtbl1q_s8(a3[1], *Lbswap_mask_0);
  if (a4 < 128)
  {
    JUMPOUT(0x1DF069668);
  }

  _Q20 = *a6;
  __asm
  {
    AESE            V22.16B, V20.16B
    AESMC           V22.16B, V22.16B
    AESE            V23.16B, V20.16B
    AESMC           V23.16B, V23.16B
    AESE            V24.16B, V20.16B
    AESMC           V24.16B, V24.16B
    AESE            V25.16B, V20.16B
    AESMC           V25.16B, V25.16B
    AESE            V26.16B, V20.16B
    AESMC           V26.16B, V26.16B
    AESE            V27.16B, V20.16B
    AESMC           V27.16B, V27.16B
    AESE            V28.16B, V20.16B
    AESMC           V28.16B, V28.16B
    AESE            V29.16B, V20.16B
    AESMC           V29.16B, V29.16B
  }

  _Q20 = *(a6 + 16);
  __asm
  {
    AESE            V22.16B, V20.16B
    AESMC           V22.16B, V22.16B
    AESE            V23.16B, V20.16B
    AESMC           V23.16B, V23.16B
    AESE            V24.16B, V20.16B
    AESMC           V24.16B, V24.16B
    AESE            V25.16B, V20.16B
    AESMC           V25.16B, V25.16B
    AESE            V26.16B, V20.16B
    AESMC           V26.16B, V26.16B
    AESE            V27.16B, V20.16B
    AESMC           V27.16B, V27.16B
    AESE            V28.16B, V20.16B
    AESMC           V28.16B, V28.16B
    AESE            V29.16B, V20.16B
    AESMC           V29.16B, V29.16B
  }

  _Q20 = *(a6 + 32);
  __asm
  {
    AESE            V22.16B, V20.16B
    AESMC           V22.16B, V22.16B
    AESE            V23.16B, V20.16B
    AESMC           V23.16B, V23.16B
    AESE            V24.16B, V20.16B
    AESMC           V24.16B, V24.16B
    AESE            V25.16B, V20.16B
    AESMC           V25.16B, V25.16B
    AESE            V26.16B, V20.16B
    AESMC           V26.16B, V26.16B
    AESE            V27.16B, V20.16B
    AESMC           V27.16B, V27.16B
    AESE            V28.16B, V20.16B
    AESMC           V28.16B, V28.16B
    AESE            V29.16B, V20.16B
    AESMC           V29.16B, V29.16B
  }

  _Q20 = *(a6 + 48);
  __asm
  {
    AESE            V22.16B, V20.16B
    AESMC           V22.16B, V22.16B
    AESE            V23.16B, V20.16B
    AESMC           V23.16B, V23.16B
    AESE            V24.16B, V20.16B
    AESMC           V24.16B, V24.16B
    AESE            V25.16B, V20.16B
    AESMC           V25.16B, V25.16B
    AESE            V26.16B, V20.16B
    AESMC           V26.16B, V26.16B
    AESE            V27.16B, V20.16B
    AESMC           V27.16B, V27.16B
    AESE            V28.16B, V20.16B
    AESMC           V28.16B, V28.16B
    AESE            V29.16B, V20.16B
    AESMC           V29.16B, V29.16B
  }

  _Q20 = *(a6 + 64);
  __asm
  {
    AESE            V22.16B, V20.16B
    AESMC           V22.16B, V22.16B
    AESE            V23.16B, V20.16B
    AESMC           V23.16B, V23.16B
    AESE            V24.16B, V20.16B
    AESMC           V24.16B, V24.16B
    AESE            V25.16B, V20.16B
    AESMC           V25.16B, V25.16B
    AESE            V26.16B, V20.16B
    AESMC           V26.16B, V26.16B
    AESE            V27.16B, V20.16B
    AESMC           V27.16B, V27.16B
    AESE            V28.16B, V20.16B
    AESMC           V28.16B, V28.16B
    AESE            V29.16B, V20.16B
    AESMC           V29.16B, V29.16B
  }

  _Q20 = *(a6 + 80);
  __asm
  {
    AESE            V22.16B, V20.16B
    AESMC           V22.16B, V22.16B
    AESE            V23.16B, V20.16B
    AESMC           V23.16B, V23.16B
    AESE            V24.16B, V20.16B
    AESMC           V24.16B, V24.16B
    AESE            V25.16B, V20.16B
    AESMC           V25.16B, V25.16B
    AESE            V26.16B, V20.16B
    AESMC           V26.16B, V26.16B
    AESE            V27.16B, V20.16B
    AESMC           V27.16B, V27.16B
    AESE            V28.16B, V20.16B
    AESMC           V28.16B, V28.16B
    AESE            V29.16B, V20.16B
    AESMC           V29.16B, V29.16B
  }

  _Q20 = *(a6 + 96);
  __asm
  {
    AESE            V22.16B, V20.16B
    AESMC           V22.16B, V22.16B
    AESE            V23.16B, V20.16B
    AESMC           V23.16B, V23.16B
    AESE            V24.16B, V20.16B
    AESMC           V24.16B, V24.16B
    AESE            V25.16B, V20.16B
    AESMC           V25.16B, V25.16B
    AESE            V26.16B, V20.16B
    AESMC           V26.16B, V26.16B
    AESE            V27.16B, V20.16B
    AESMC           V27.16B, V27.16B
    AESE            V28.16B, V20.16B
    AESMC           V28.16B, V28.16B
    AESE            V29.16B, V20.16B
    AESMC           V29.16B, V29.16B
  }

  _Q20 = *(a6 + 112);
  __asm
  {
    AESE            V22.16B, V20.16B
    AESMC           V22.16B, V22.16B
    AESE            V23.16B, V20.16B
    AESMC           V23.16B, V23.16B
    AESE            V24.16B, V20.16B
    AESMC           V24.16B, V24.16B
    AESE            V25.16B, V20.16B
    AESMC           V25.16B, V25.16B
    AESE            V26.16B, V20.16B
    AESMC           V26.16B, V26.16B
    AESE            V27.16B, V20.16B
    AESMC           V27.16B, V27.16B
    AESE            V28.16B, V20.16B
    AESMC           V28.16B, V28.16B
    AESE            V29.16B, V20.16B
    AESMC           V29.16B, V29.16B
  }

  _Q20 = *(a6 + 128);
  __asm
  {
    AESE            V22.16B, V20.16B
    AESMC           V22.16B, V22.16B
    AESE            V23.16B, V20.16B
    AESMC           V23.16B, V23.16B
    AESE            V24.16B, V20.16B
    AESMC           V24.16B, V24.16B
    AESE            V25.16B, V20.16B
    AESMC           V25.16B, V25.16B
    AESE            V26.16B, V20.16B
    AESMC           V26.16B, V26.16B
    AESE            V27.16B, V20.16B
    AESMC           V27.16B, V27.16B
    AESE            V28.16B, V20.16B
    AESMC           V28.16B, V28.16B
    AESE            V29.16B, V20.16B
    AESMC           V29.16B, V29.16B
  }

  _Q20 = *(a6 + 144);
  v170 = *(a6 + 160);
  if (v10 > 160)
  {
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = *(a6 + 160);
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = *(a6 + 176);
    v170 = *(a6 + 192);
    if (v10 > 192)
    {
      __asm
      {
        AESE            V22.16B, V20.16B
        AESMC           V22.16B, V22.16B
        AESE            V23.16B, V20.16B
        AESMC           V23.16B, V23.16B
        AESE            V24.16B, V20.16B
        AESMC           V24.16B, V24.16B
        AESE            V25.16B, V20.16B
        AESMC           V25.16B, V25.16B
        AESE            V26.16B, V20.16B
        AESMC           V26.16B, V26.16B
        AESE            V27.16B, V20.16B
        AESMC           V27.16B, V27.16B
        AESE            V28.16B, V20.16B
        AESMC           V28.16B, V28.16B
        AESE            V29.16B, V20.16B
        AESMC           V29.16B, V29.16B
      }

      _Q20 = *(a6 + 192);
      __asm
      {
        AESE            V22.16B, V20.16B
        AESMC           V22.16B, V22.16B
        AESE            V23.16B, V20.16B
        AESMC           V23.16B, V23.16B
        AESE            V24.16B, V20.16B
        AESMC           V24.16B, V24.16B
        AESE            V25.16B, V20.16B
        AESMC           V25.16B, V25.16B
        AESE            V26.16B, V20.16B
        AESMC           V26.16B, V26.16B
        AESE            V27.16B, V20.16B
        AESMC           V27.16B, V27.16B
        AESE            V28.16B, V20.16B
        AESMC           V28.16B, V28.16B
        AESE            V29.16B, V20.16B
        AESMC           V29.16B, V29.16B
      }

      _Q20 = *(a6 + 208);
      v170 = *(a6 + 224);
    }
  }

  v238 = *a1;
  v239 = a1[1];
  v240 = a1[2];
  v241 = a1[3];
  v237 = a1 + 4;
  __asm
  {
    AESE            V22.16B, V20.16B
    AESE            V23.16B, V20.16B
    AESE            V24.16B, V20.16B
    AESE            V25.16B, V20.16B
  }

  *a2 = veorq_s8(veorq_s8(_Q22, v170), v238);
  a2[1] = veorq_s8(veorq_s8(_Q23, v170), v239);
  a2[2] = veorq_s8(veorq_s8(_Q24, v170), v240);
  a2[3] = veorq_s8(veorq_s8(_Q25, v170), v241);
  v246 = a2 + 4;
  v248 = *v237;
  v249 = v237[1];
  v250 = v237[2];
  v251 = v237[3];
  v247 = v237 + 4;
  __asm
  {
    AESE            V26.16B, V20.16B
    AESE            V27.16B, V20.16B
    AESE            V28.16B, V20.16B
    AESE            V29.16B, V20.16B
  }

  *v246 = veorq_s8(veorq_s8(_Q26, v170), v248);
  v246[1] = veorq_s8(veorq_s8(_Q27, v170), v249);
  v246[2] = veorq_s8(veorq_s8(_Q28, v170), v250);
  v246[3] = veorq_s8(veorq_s8(_Q29, v170), v251);
  v256 = v246 + 4;
  v257 = a4 < 256;
  v258 = a4 - 256;
  if (v257)
  {
    Encrypt_Main_Loop_End(v247, v256, a3, v258, a5, a6, v10, v11);
  }

  else
  {
    Encrypt_Main_Loop(v247, v256, a3, v258, a5, a6, v10, qword_1DF068900, v11, a9, a10);
  }
}

uint64_t Encrypt_Main_Loop(_OWORD *a1, int8x16_t *a2, uint64_t a3, uint64_t a4, uint64x2_t *a5, int8x16_t *a6, uint64_t a7, uint64_t a8, int8x16_t a9, uint64_t a10, uint64_t a11)
{
  do
  {
    v307 = veorq_s8(v14, a9);
    v306 = v15;
    v305 = v16;
    v304 = v17;
    v303 = v18;
    v302 = v19;
    v301 = v20;
    v22 = vaddq_s32(v11, vaddq_s32(v11, vaddq_s32(v11, vaddq_s32(v11, v22))));
    _Q20 = *a6;
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v35 = veorq_s8(vmull_p64(a5[8].u64[0], veorq_s8(vextq_s8(v21, v21, 8uLL), v21).u64[0]), vmull_p64(a5[9].u64[0], veorq_s8(v301, vextq_s8(v301, v301, 8uLL)).u64[0]));
    v36 = a5[1];
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
    }

    v41 = veorq_s8(vmull_high_p64(*a5, v21), vmull_high_p64(v36, v20));
    __asm
    {
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v46 = veorq_s8(vmull_p64(a5->i64[0], v21.u64[0]), vmull_p64(v36.u64[0], v301.u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a6[1];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v56 = a5[2];
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
    }

    v61 = veorq_s8(v41, vmull_high_p64(v56, v302));
    __asm
    {
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v66 = veorq_s8(v46, vmull_p64(v56.u64[0], v302.u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a6[2];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v76 = a5[3];
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
    }

    v81 = veorq_s8(v61, vmull_high_p64(v76, v303));
    __asm
    {
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v86 = veorq_s8(v66, vmull_p64(v76.u64[0], v303.u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a6[3];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v96 = a5[4];
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
    }

    v101 = veorq_s8(v81, vmull_high_p64(v96, v304));
    __asm
    {
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v106 = veorq_s8(v86, vmull_p64(v96.u64[0], v304.u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a6[4];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v116 = a5[5];
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
    }

    v121 = veorq_s8(v101, vmull_high_p64(v116, v305));
    __asm
    {
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v126 = veorq_s8(v106, vmull_p64(v116.u64[0], v305.u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a6[5];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v136 = a5[6];
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
    }

    v141 = veorq_s8(v121, vmull_high_p64(v136, v306));
    __asm
    {
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v146 = veorq_s8(v126, vmull_p64(v136.u64[0], v306.u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a6[6];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v156 = a5[7];
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
    }

    v161 = veorq_s8(v141, vmull_high_p64(v156, v307));
    __asm
    {
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v166 = veorq_s8(v146, vmull_p64(v156.u64[0], v307.u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a6[7];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
    }

    v172 = veorq_s8(v166, veorq_s8(v161, veorq_s8(veorq_s8(veorq_s8(veorq_s8(veorq_s8(veorq_s8(v35, vmull_p64(a5[10].u64[0], veorq_s8(v302, vextq_s8(v302, v302, 8uLL)).u64[0])), vmull_p64(a5[11].u64[0], veorq_s8(v303, vextq_s8(v303, v303, 8uLL)).u64[0])), vmull_p64(a5[12].u64[0], veorq_s8(v304, vextq_s8(v304, v304, 8uLL)).u64[0])), vmull_p64(a5[13].u64[0], veorq_s8(v305, vextq_s8(v305, v305, 8uLL)).u64[0])), vmull_p64(a5[14].u64[0], veorq_s8(v306, vextq_s8(v306, v306, 8uLL)).u64[0])), vmull_p64(a5[15].u64[0], veorq_s8(v307, vextq_s8(v307, v307, 8uLL)).u64[0]))));
    __asm
    {
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
    }

    v179 = veorq_s8(vextq_s8(v23, v172, 8uLL), v166);
    __asm
    {
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
    }

    v182 = veorq_s8(vextq_s8(v179, v179, 8uLL), vmull_p64(v13, v179.u64[0]));
    __asm
    {
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a6[8];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    a9 = veorq_s8(veorq_s8(vextq_s8(v172, v23, 8uLL), v161), veorq_s8(vextq_s8(v182, v182, 8uLL), vmull_p64(v13, v182.u64[0])));
    _Q20 = a6[9];
    v207 = a6[10];
    if (a7 > 160)
    {
      __asm
      {
        AESE            V22.16B, V20.16B
        AESMC           V22.16B, V22.16B
        AESE            V23.16B, V20.16B
        AESMC           V23.16B, V23.16B
        AESE            V24.16B, V20.16B
        AESMC           V24.16B, V24.16B
        AESE            V25.16B, V20.16B
        AESMC           V25.16B, V25.16B
        AESE            V26.16B, V20.16B
        AESMC           V26.16B, V26.16B
        AESE            V27.16B, V20.16B
        AESMC           V27.16B, V27.16B
        AESE            V28.16B, V20.16B
        AESMC           V28.16B, V28.16B
        AESE            V29.16B, V20.16B
        AESMC           V29.16B, V29.16B
      }

      _Q20 = a6[10];
      __asm
      {
        AESE            V22.16B, V20.16B
        AESMC           V22.16B, V22.16B
        AESE            V23.16B, V20.16B
        AESMC           V23.16B, V23.16B
        AESE            V24.16B, V20.16B
        AESMC           V24.16B, V24.16B
        AESE            V25.16B, V20.16B
        AESMC           V25.16B, V25.16B
        AESE            V26.16B, V20.16B
        AESMC           V26.16B, V26.16B
        AESE            V27.16B, V20.16B
        AESMC           V27.16B, V27.16B
        AESE            V28.16B, V20.16B
        AESMC           V28.16B, V28.16B
        AESE            V29.16B, V20.16B
        AESMC           V29.16B, V29.16B
      }

      _Q20 = a6[11];
      v207 = a6[12];
      if (a7 > 192)
      {
        __asm
        {
          AESE            V22.16B, V20.16B
          AESMC           V22.16B, V22.16B
          AESE            V23.16B, V20.16B
          AESMC           V23.16B, V23.16B
          AESE            V24.16B, V20.16B
          AESMC           V24.16B, V24.16B
          AESE            V25.16B, V20.16B
          AESMC           V25.16B, V25.16B
          AESE            V26.16B, V20.16B
          AESMC           V26.16B, V26.16B
          AESE            V27.16B, V20.16B
          AESMC           V27.16B, V27.16B
          AESE            V28.16B, V20.16B
          AESMC           V28.16B, V28.16B
          AESE            V29.16B, V20.16B
          AESMC           V29.16B, V29.16B
        }

        _Q20 = a6[12];
        __asm
        {
          AESE            V22.16B, V20.16B
          AESMC           V22.16B, V22.16B
          AESE            V23.16B, V20.16B
          AESMC           V23.16B, V23.16B
          AESE            V24.16B, V20.16B
          AESMC           V24.16B, V24.16B
          AESE            V25.16B, V20.16B
          AESMC           V25.16B, V25.16B
          AESE            V26.16B, V20.16B
          AESMC           V26.16B, V26.16B
          AESE            V27.16B, V20.16B
          AESMC           V27.16B, V27.16B
          AESE            V28.16B, V20.16B
          AESMC           V28.16B, V28.16B
          AESE            V29.16B, V20.16B
          AESMC           V29.16B, V29.16B
        }

        _Q20 = a6[13];
        v207 = a6[14];
      }
    }

    v275 = *a1;
    v276 = *(a1 + 1);
    v277 = *(a1 + 2);
    v278 = *(a1 + 3);
    v274 = a1 + 4;
    __asm
    {
      AESE            V22.16B, V20.16B
      AESE            V23.16B, V20.16B
      AESE            V24.16B, V20.16B
      AESE            V25.16B, V20.16B
    }

    v283 = veorq_s8(veorq_s8(_Q22, v207), v275);
    v284 = veorq_s8(veorq_s8(_Q23, v207), v276);
    v285 = veorq_s8(veorq_s8(_Q24, v207), v277);
    v286 = veorq_s8(veorq_s8(_Q25, v207), v278);
    *a2 = v283;
    a2[1] = v284;
    a2[2] = v285;
    a2[3] = v286;
    v287 = a2 + 4;
    v14 = vqtbl1q_s8(v283, v12);
    v15 = vqtbl1q_s8(v284, v12);
    v16 = vqtbl1q_s8(v285, v12);
    v17 = vqtbl1q_s8(v286, v12);
    v288 = *v274;
    v289 = *(v274 + 1);
    v290 = *(v274 + 2);
    v291 = *(v274 + 3);
    a1 = v274 + 4;
    __asm
    {
      AESE            V26.16B, V20.16B
      AESE            V27.16B, V20.16B
      AESE            V28.16B, V20.16B
      AESE            V29.16B, V20.16B
    }

    v296 = veorq_s8(veorq_s8(_Q26, v207), v288);
    v297 = veorq_s8(veorq_s8(_Q27, v207), v289);
    v298 = veorq_s8(veorq_s8(_Q28, v207), v290);
    v299 = veorq_s8(veorq_s8(_Q29, v207), v291);
    *v287 = v296;
    v287[1] = v297;
    v287[2] = v298;
    v287[3] = v299;
    a2 = v287 + 4;
    v18 = vqtbl1q_s8(v296, v12);
    v19 = vqtbl1q_s8(v297, v12);
    v20 = vqtbl1q_s8(v298, v12);
    v21 = vqtbl1q_s8(v299, v12);
    _VF = __OFSUB__(a4, 128);
    _NF = a4 - 128 < 0;
    a4 -= 128;
  }

  while (_NF == _VF);
  return Encrypt_Main_Loop_End(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, v301.i64[0], v301.i64[1], v302.i64[0], v302.i64[1], v303.i64[0], v303.i64[1]);
}

int8x16_t Encrypt_Main_Loop_End(int8x16_t *a1, int8x16_t *a2, int8x16_t *a3, uint64_t a4, uint64x2_t *a5, int8x16_t *a6, int a7, int8x16_t a8)
{
  v21 = a4 + 128;
  v147 = veorq_s8(a8, v11);
  v22 = a5[1];
  v23 = veorq_s8(vmull_high_p64(*a5, v18), vmull_high_p64(v22, v17));
  v24 = veorq_s8(vmull_p64(a5->i64[0], v18.u64[0]), vmull_p64(v22.u64[0], v17.u64[0]));
  v25 = a5[2];
  v26 = veorq_s8(v23, vmull_high_p64(v25, v16));
  v27 = veorq_s8(v24, vmull_p64(v25.u64[0], v16.u64[0]));
  v28 = a5[3];
  v29 = veorq_s8(v26, vmull_high_p64(v28, v15));
  v30 = veorq_s8(v27, vmull_p64(v28.u64[0], v15.u64[0]));
  v31 = a5[4];
  v32 = veorq_s8(v29, vmull_high_p64(v31, v14));
  v33 = veorq_s8(v30, vmull_p64(v31.u64[0], v14.u64[0]));
  v34 = a5[5];
  v35 = veorq_s8(v32, vmull_high_p64(v34, v13));
  v36 = veorq_s8(v33, vmull_p64(v34.u64[0], v13.u64[0]));
  v37 = a5[6];
  v38 = veorq_s8(v35, vmull_high_p64(v37, v12));
  v39 = veorq_s8(v36, vmull_p64(v37.u64[0], v12.u64[0]));
  v40 = a5[7];
  v41 = veorq_s8(v38, vmull_high_p64(v40, v147));
  v42 = veorq_s8(v39, vmull_p64(v40.u64[0], v147.u64[0]));
  v43 = veorq_s8(v42, veorq_s8(v41, veorq_s8(veorq_s8(veorq_s8(veorq_s8(veorq_s8(veorq_s8(veorq_s8(vmull_p64(a5[8].u64[0], veorq_s8(vextq_s8(v18, v18, 8uLL), v18).u64[0]), vmull_p64(a5[9].u64[0], veorq_s8(v17, vextq_s8(v17, v17, 8uLL)).u64[0])), vmull_p64(a5[10].u64[0], veorq_s8(v16, vextq_s8(v16, v16, 8uLL)).u64[0])), vmull_p64(a5[11].u64[0], veorq_s8(v15, vextq_s8(v15, v15, 8uLL)).u64[0])), vmull_p64(a5[12].u64[0], veorq_s8(v14, vextq_s8(v14, v14, 8uLL)).u64[0])), vmull_p64(a5[13].u64[0], veorq_s8(v13, vextq_s8(v13, v13, 8uLL)).u64[0])), vmull_p64(a5[14].u64[0], veorq_s8(v12, vextq_s8(v12, v12, 8uLL)).u64[0])), vmull_p64(a5[15].u64[0], veorq_s8(v147, vextq_s8(v147, v147, 8uLL)).u64[0]))));
  v44 = veorq_s8(vextq_s8(v20, v43, 8uLL), v42);
  v45 = veorq_s8(vextq_s8(v44, v44, 8uLL), vmull_p64(v10, v44.u64[0]));
  v46 = veorq_s8(veorq_s8(vextq_s8(v43, v20, 8uLL), v41), veorq_s8(vextq_s8(v45, v45, 8uLL), vmull_p64(v10, v45.u64[0])));
  v47 = v21 < 16;
  v48 = v21 - 16;
  if (!v47)
  {
    _Q4 = *a6;
    _Q5 = a6[1];
    _Q6 = a6[2];
    v19 = vaddq_s32(v8, v19);
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q4 = a6[3];
    _Q5 = a6[4];
    _Q6 = a6[5];
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q4 = a6[6];
    _Q5 = a6[7];
    _Q6 = a6[8];
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q20 = a6[9];
    _Q21 = a6[10];
    if (a7 > 160)
    {
      __asm
      {
        AESE            V7.16B, V20.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V21.16B
        AESMC           V7.16B, V7.16B
      }

      _Q20 = a6[11];
      _Q21 = a6[12];
      if (a7 > 192)
      {
        __asm
        {
          AESE            V7.16B, V20.16B
          AESMC           V7.16B, V7.16B
          AESE            V7.16B, V21.16B
          AESMC           V7.16B, V7.16B
        }

        _Q20 = a6[13];
        _Q21 = a6[14];
      }
    }

    __asm { AESE            V7.16B, V20.16B }

    v92 = *a1;
    v91 = a1 + 1;
    v93 = veorq_s8(v92, veorq_s8(_Q7, _Q21));
    *a2 = v93;
    v94 = a2 + 1;
    v95 = veorq_s8(v46, vqtbl1q_s8(v93, v9));
    v96 = *(a5 + v48);
    v97 = vmull_high_p64(v96, v95);
    v98 = vmull_p64(v96.u64[0], v95.u64[0]);
    v99 = vmull_p64(*(a5[8].u64 + v48), veorq_s8(vextq_s8(v95, v95, 8uLL), v95).u64[0]);
    v47 = v48 < 16;
    for (i = v48 - 16; !v47; i -= 16)
    {
      _Q4 = *a6;
      _Q5 = a6[1];
      _Q6 = a6[2];
      v19 = vaddq_s32(v8, v19);
      __asm
      {
        AESE            V7.16B, V4.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V5.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V6.16B
        AESMC           V7.16B, V7.16B
      }

      _Q4 = a6[3];
      _Q5 = a6[4];
      _Q6 = a6[5];
      __asm
      {
        AESE            V7.16B, V4.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V5.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V6.16B
        AESMC           V7.16B, V7.16B
      }

      _Q4 = a6[6];
      _Q5 = a6[7];
      _Q6 = a6[8];
      __asm
      {
        AESE            V7.16B, V4.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V5.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V6.16B
        AESMC           V7.16B, V7.16B
      }

      _Q20 = a6[9];
      _Q21 = a6[10];
      if (a7 > 160)
      {
        __asm
        {
          AESE            V7.16B, V20.16B
          AESMC           V7.16B, V7.16B
          AESE            V7.16B, V21.16B
          AESMC           V7.16B, V7.16B
        }

        _Q20 = a6[11];
        _Q21 = a6[12];
        if (a7 > 192)
        {
          __asm
          {
            AESE            V7.16B, V20.16B
            AESMC           V7.16B, V7.16B
            AESE            V7.16B, V21.16B
            AESMC           V7.16B, V7.16B
          }

          _Q20 = a6[13];
          _Q21 = a6[14];
        }
      }

      __asm { AESE            V7.16B, V20.16B }

      v139 = *v91++;
      v140 = veorq_s8(v139, veorq_s8(_Q7, _Q21));
      *v94++ = v140;
      v141 = vqtbl1q_s8(v140, v9);
      v142 = *(a5 + i);
      v97 = veorq_s8(v97, vmull_high_p64(v142, v141));
      v98 = veorq_s8(v98, vmull_p64(v142.u64[0], v141.u64[0]));
      v99 = veorq_s8(v99, vmull_p64(*(a5[8].u64 + i), veorq_s8(vextq_s8(v141, v141, 8uLL), v141).u64[0]));
      v47 = i < 16;
    }

    v143 = veorq_s8(v98, veorq_s8(v97, v99));
    v144 = veorq_s8(vextq_s8(v20, v143, 8uLL), v98);
    v145 = veorq_s8(vextq_s8(v144, v144, 8uLL), vmull_p64(v10, v144.u64[0]));
    v46 = veorq_s8(veorq_s8(vextq_s8(v143, v20, 8uLL), v97), veorq_s8(vextq_s8(v145, v145, 8uLL), vmull_p64(v10, v145.u64[0])));
  }

  result = vqtbl1q_s8(v46, v9);
  a3[1] = result;
  a3[2] = vqtbl1q_s8(v19, v9);
  return result;
}

void gcmDecrypt(int8x16_t *a1, int8x16_t *a2, int8x16_t *a3, uint64_t a4, uint64x2_t *a5, int8x16_t *a6)
{
  v6 = a6[15].i32[0];
  v7 = vqtbl1q_s8(a3[1], *Lbswap_mask_0);
  v8 = a4 < 128;
  v9 = a4 - 128;
  if (v8)
  {
    Decrypt_Main_Loop_End_0(a1, a2, a3, v9, a5, a6, v6, v7);
  }

  else
  {
    Decrypt_Main_Loop_0(a1, a2, v7, a3, v9, a5, a6, v6);
  }
}

uint64_t Decrypt_Main_Loop_0(int8x16_t *a1, int8x16_t *a2, int8x16_t a3, uint64_t a4, uint64_t a5, uint64x2_t *a6, int8x16_t *a7, int a8)
{
  do
  {
    v13 = vqtbl1q_s8(a1[7], v9);
    v14 = vmull_high_p64(*a6, v13);
    v15 = vmull_p64(a6->i64[0], v13.u64[0]);
    v11 = vaddq_s32(v8, vaddq_s32(v8, vaddq_s32(v8, vaddq_s32(v8, v11))));
    v16 = vmull_p64(a6[8].u64[0], veorq_s8(vextq_s8(v13, v13, 8uLL), v13).u64[0]);
    _Q20 = *a7;
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
    }

    v24 = a6[1];
    __asm
    {
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
    }

    v27 = vqtbl1q_s8(a1[6], v9);
    __asm
    {
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v30 = veorq_s8(v14, vmull_high_p64(v24, v27));
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
    }

    v33 = veorq_s8(v15, vmull_p64(v24.u64[0], v27.u64[0]));
    __asm
    {
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v40 = veorq_s8(v16, vmull_p64(a6[9].u64[0], veorq_s8(v27, vextq_s8(v27, v27, 8uLL)).u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a7[1];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
    }

    v46 = a6[2];
    __asm
    {
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
    }

    v49 = vqtbl1q_s8(a1[5], v9);
    __asm
    {
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v52 = veorq_s8(v30, vmull_high_p64(v46, v49));
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
    }

    v55 = veorq_s8(v33, vmull_p64(v46.u64[0], v49.u64[0]));
    __asm
    {
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v62 = veorq_s8(v40, vmull_p64(a6[10].u64[0], veorq_s8(v49, vextq_s8(v49, v49, 8uLL)).u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a7[2];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
    }

    v68 = a6[3];
    __asm
    {
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
    }

    v71 = vqtbl1q_s8(a1[4], v9);
    __asm
    {
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v74 = veorq_s8(v52, vmull_high_p64(v68, v71));
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
    }

    v77 = veorq_s8(v55, vmull_p64(v68.u64[0], v71.u64[0]));
    __asm
    {
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v84 = veorq_s8(v62, vmull_p64(a6[11].u64[0], veorq_s8(v71, vextq_s8(v71, v71, 8uLL)).u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a7[3];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
    }

    v90 = a6[4];
    __asm
    {
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
    }

    v93 = vqtbl1q_s8(a1[3], v9);
    __asm
    {
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v96 = veorq_s8(v74, vmull_high_p64(v90, v93));
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
    }

    v99 = veorq_s8(v77, vmull_p64(v90.u64[0], v93.u64[0]));
    __asm
    {
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v106 = veorq_s8(v84, vmull_p64(a6[12].u64[0], veorq_s8(v93, vextq_s8(v93, v93, 8uLL)).u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a7[4];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
    }

    v112 = a6[5];
    __asm
    {
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
    }

    v115 = vqtbl1q_s8(a1[2], v9);
    __asm
    {
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v118 = veorq_s8(v96, vmull_high_p64(v112, v115));
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
    }

    v121 = veorq_s8(v99, vmull_p64(v112.u64[0], v115.u64[0]));
    __asm
    {
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v128 = veorq_s8(v106, vmull_p64(a6[13].u64[0], veorq_s8(v115, vextq_s8(v115, v115, 8uLL)).u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a7[5];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
    }

    v134 = a6[6];
    __asm
    {
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
    }

    v137 = vqtbl1q_s8(a1[1], v9);
    __asm
    {
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v140 = veorq_s8(v118, vmull_high_p64(v134, v137));
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
    }

    v143 = veorq_s8(v121, vmull_p64(v134.u64[0], v137.u64[0]));
    __asm
    {
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v150 = veorq_s8(v128, vmull_p64(a6[14].u64[0], veorq_s8(v137, vextq_s8(v137, v137, 8uLL)).u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a7[6];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
    }

    v156 = a6[7];
    __asm
    {
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
    }

    v159 = veorq_s8(vqtbl1q_s8(*a1, v9), a3);
    __asm
    {
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v162 = veorq_s8(v140, vmull_high_p64(v156, v159));
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
    }

    v165 = veorq_s8(v143, vmull_p64(v156.u64[0], v159.u64[0]));
    __asm
    {
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a7[7];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
    }

    v177 = veorq_s8(v165, veorq_s8(v162, veorq_s8(v150, vmull_p64(a6[15].u64[0], veorq_s8(v159, vextq_s8(v159, v159, 8uLL)).u64[0]))));
    __asm
    {
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
    }

    v184 = veorq_s8(vextq_s8(v12, v177, 8uLL), v165);
    __asm
    {
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
    }

    v187 = veorq_s8(vextq_s8(v184, v184, 8uLL), vmull_p64(v10, v184.u64[0]));
    __asm
    {
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a7[8];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    a3 = veorq_s8(veorq_s8(vextq_s8(v177, v12, 8uLL), v162), veorq_s8(vextq_s8(v187, v187, 8uLL), vmull_p64(v10, v187.u64[0])));
    _Q20 = a7[9];
    v212 = a7[10];
    if (a8 > 160)
    {
      __asm
      {
        AESE            V22.16B, V20.16B
        AESMC           V22.16B, V22.16B
        AESE            V23.16B, V20.16B
        AESMC           V23.16B, V23.16B
        AESE            V24.16B, V20.16B
        AESMC           V24.16B, V24.16B
        AESE            V25.16B, V20.16B
        AESMC           V25.16B, V25.16B
        AESE            V26.16B, V20.16B
        AESMC           V26.16B, V26.16B
        AESE            V27.16B, V20.16B
        AESMC           V27.16B, V27.16B
        AESE            V28.16B, V20.16B
        AESMC           V28.16B, V28.16B
        AESE            V29.16B, V20.16B
        AESMC           V29.16B, V29.16B
      }

      _Q20 = a7[10];
      __asm
      {
        AESE            V22.16B, V20.16B
        AESMC           V22.16B, V22.16B
        AESE            V23.16B, V20.16B
        AESMC           V23.16B, V23.16B
        AESE            V24.16B, V20.16B
        AESMC           V24.16B, V24.16B
        AESE            V25.16B, V20.16B
        AESMC           V25.16B, V25.16B
        AESE            V26.16B, V20.16B
        AESMC           V26.16B, V26.16B
        AESE            V27.16B, V20.16B
        AESMC           V27.16B, V27.16B
        AESE            V28.16B, V20.16B
        AESMC           V28.16B, V28.16B
        AESE            V29.16B, V20.16B
        AESMC           V29.16B, V29.16B
      }

      _Q20 = a7[11];
      v212 = a7[12];
      if (a8 > 192)
      {
        __asm
        {
          AESE            V22.16B, V20.16B
          AESMC           V22.16B, V22.16B
          AESE            V23.16B, V20.16B
          AESMC           V23.16B, V23.16B
          AESE            V24.16B, V20.16B
          AESMC           V24.16B, V24.16B
          AESE            V25.16B, V20.16B
          AESMC           V25.16B, V25.16B
          AESE            V26.16B, V20.16B
          AESMC           V26.16B, V26.16B
          AESE            V27.16B, V20.16B
          AESMC           V27.16B, V27.16B
          AESE            V28.16B, V20.16B
          AESMC           V28.16B, V28.16B
          AESE            V29.16B, V20.16B
          AESMC           V29.16B, V29.16B
        }

        _Q20 = a7[12];
        __asm
        {
          AESE            V22.16B, V20.16B
          AESMC           V22.16B, V22.16B
          AESE            V23.16B, V20.16B
          AESMC           V23.16B, V23.16B
          AESE            V24.16B, V20.16B
          AESMC           V24.16B, V24.16B
          AESE            V25.16B, V20.16B
          AESMC           V25.16B, V25.16B
          AESE            V26.16B, V20.16B
          AESMC           V26.16B, V26.16B
          AESE            V27.16B, V20.16B
          AESMC           V27.16B, V27.16B
          AESE            V28.16B, V20.16B
          AESMC           V28.16B, V28.16B
          AESE            V29.16B, V20.16B
          AESMC           V29.16B, V29.16B
        }

        _Q20 = a7[13];
        v212 = a7[14];
      }
    }

    v280 = *a1;
    v281 = a1[1];
    v282 = a1[2];
    v283 = a1[3];
    v279 = a1 + 4;
    __asm
    {
      AESE            V22.16B, V20.16B
      AESE            V23.16B, V20.16B
      AESE            V24.16B, V20.16B
      AESE            V25.16B, V20.16B
    }

    v288 = veorq_s8(v280, veorq_s8(_Q22, v212));
    v289 = veorq_s8(v281, veorq_s8(_Q23, v212));
    v290 = veorq_s8(v282, veorq_s8(_Q24, v212));
    v291 = veorq_s8(v283, veorq_s8(_Q25, v212));
    v292 = *v279;
    v293 = v279[1];
    v294 = v279[2];
    v295 = v279[3];
    a1 = v279 + 4;
    __asm
    {
      AESE            V26.16B, V20.16B
      AESE            V27.16B, V20.16B
      AESE            V28.16B, V20.16B
      AESE            V29.16B, V20.16B
    }

    *a2 = v288;
    a2[1] = v289;
    a2[2] = v290;
    a2[3] = v291;
    v300 = a2 + 4;
    *v300 = veorq_s8(v292, veorq_s8(_Q26, v212));
    v300[1] = veorq_s8(v293, veorq_s8(_Q27, v212));
    v300[2] = veorq_s8(v294, veorq_s8(_Q28, v212));
    v300[3] = veorq_s8(v295, veorq_s8(_Q29, v212));
    a2 = v300 + 4;
    _VF = __OFSUB__(a5, 128);
    _NF = a5 - 128 < 0;
    a5 -= 128;
  }

  while (_NF == _VF);
  return Decrypt_Main_Loop_End_0();
}

int8x16_t Decrypt_Main_Loop_End_0(int8x16_t *a1, int8x16_t *a2, int8x16_t *a3, uint64_t a4, uint64_t a5, int8x16_t *a6, int a7, int8x16_t a8)
{
  v13 = a4 < -112;
  v14 = a4 + 112;
  if (!v13)
  {
    v15 = *(a5 + v14);
    v16 = veorq_s8(a8, vqtbl1q_s8(*a1, v9));
    v17 = vmull_high_p64(v15, v16);
    v18 = vmull_p64(v15.u64[0], v16.u64[0]);
    v19 = vmull_p64(*(a5 + v14 + 128), veorq_s8(vextq_s8(v16, v16, 8uLL), v16).u64[0]);
    _Q4 = *a6;
    _Q5 = a6[1];
    _Q6 = a6[2];
    v11 = vaddq_s32(v8, v11);
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q4 = a6[3];
    _Q5 = a6[4];
    _Q6 = a6[5];
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q4 = a6[6];
    _Q5 = a6[7];
    _Q6 = a6[8];
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q20 = a6[9];
    _Q21 = a6[10];
    if (a7 > 160)
    {
      __asm
      {
        AESE            V7.16B, V20.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V21.16B
        AESMC           V7.16B, V7.16B
      }

      _Q20 = a6[11];
      _Q21 = a6[12];
      if (a7 > 192)
      {
        __asm
        {
          AESE            V7.16B, V20.16B
          AESMC           V7.16B, V7.16B
          AESE            V7.16B, V21.16B
          AESMC           V7.16B, V7.16B
        }

        _Q20 = a6[13];
        _Q21 = a6[14];
      }
    }

    __asm { AESE            V7.16B, V20.16B }

    v63 = *a1;
    v62 = a1 + 1;
    *a2 = veorq_s8(v63, veorq_s8(_Q7, _Q21));
    v64 = a2 + 1;
    v13 = v14 < 16;
    for (i = v14 - 16; !v13; i -= 16)
    {
      v66 = vqtbl1q_s8(*v62, v9);
      v67 = *(a5 + i);
      v17 = veorq_s8(v17, vmull_high_p64(v67, v66));
      v18 = veorq_s8(v18, vmull_p64(v67.u64[0], v66.u64[0]));
      v19 = veorq_s8(v19, vmull_p64(*(a5 + i + 128), veorq_s8(vextq_s8(v66, v66, 8uLL), v66).u64[0]));
      _Q4 = *a6;
      _Q5 = a6[1];
      _Q6 = a6[2];
      v11 = vaddq_s32(v8, v11);
      __asm
      {
        AESE            V7.16B, V4.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V5.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V6.16B
        AESMC           V7.16B, V7.16B
      }

      _Q4 = a6[3];
      _Q5 = a6[4];
      _Q6 = a6[5];
      __asm
      {
        AESE            V7.16B, V4.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V5.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V6.16B
        AESMC           V7.16B, V7.16B
      }

      _Q4 = a6[6];
      _Q5 = a6[7];
      _Q6 = a6[8];
      __asm
      {
        AESE            V7.16B, V4.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V5.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V6.16B
        AESMC           V7.16B, V7.16B
      }

      _Q20 = a6[9];
      _Q21 = a6[10];
      if (a7 > 160)
      {
        __asm
        {
          AESE            V7.16B, V20.16B
          AESMC           V7.16B, V7.16B
          AESE            V7.16B, V21.16B
          AESMC           V7.16B, V7.16B
        }

        _Q20 = a6[11];
        _Q21 = a6[12];
        if (a7 > 192)
        {
          __asm
          {
            AESE            V7.16B, V20.16B
            AESMC           V7.16B, V7.16B
            AESE            V7.16B, V21.16B
            AESMC           V7.16B, V7.16B
          }

          _Q20 = a6[13];
          _Q21 = a6[14];
        }
      }

      __asm { AESE            V7.16B, V20.16B }

      v106 = *v62++;
      *v64++ = veorq_s8(v106, veorq_s8(_Q7, _Q21));
      v13 = i < 16;
    }

    v107 = veorq_s8(v18, veorq_s8(v17, v19));
    v108 = veorq_s8(vextq_s8(v12, v107, 8uLL), v18);
    v109 = veorq_s8(vextq_s8(v108, v108, 8uLL), vmull_p64(v10, v108.u64[0]));
    a8 = veorq_s8(veorq_s8(vextq_s8(v107, v12, 8uLL), v17), veorq_s8(vextq_s8(v109, v109, 8uLL), vmull_p64(v10, v109.u64[0])));
  }

  result = vqtbl1q_s8(a8, v9);
  a3[1] = result;
  a3[2] = vqtbl1q_s8(v11, v9);
  return result;
}

uint64_t ccmode_gcm_set_iv(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 80) != 1 || (*(a1 + 82) & 1) != 0)
  {
    return 4294967228;
  }

  v4 = a2;
  result = 4294967228;
  if (a2)
  {
    v6 = a3;
    if (a3)
    {
      if (a2 == 12)
      {
        v7 = *a3;
        *(a1 + 40) = *(a3 + 2);
        *(a1 + 32) = v7;
        *(a1 + 44) = 0x1000000;
      }

      else
      {
        cc_clear(8uLL, &v17);
        v17.i64[1] = bswap64(8 * v4);
        cc_clear(0x10uLL, (a1 + 32));
        if (v4 < 0x10)
        {
          goto LABEL_20;
        }

        do
        {
          for (i = 0; i != -16; --i)
          {
            *(a1 + i + 47) ^= *(v6 + i + 15);
          }

          v8 = ccmode_gcm_mult_h(a1, (a1 + 32), v8, v9, v10, v11, v12, v13);
          v6 += 2;
          v4 -= 16;
        }

        while (v4 > 0xF);
        if (v4)
        {
LABEL_20:
          do
          {
            *(a1 + v4 + 31) ^= *(v6 + v4 - 1);
            --v4;
          }

          while (v4);
          ccmode_gcm_mult_h(a1, (a1 + 32), v8, v9, v10, v11, v12, v13);
        }

        v15 = *v17.i64;
        v16 = veorq_s8(v17, *(a1 + 32));
        *(a1 + 32) = v16;
        ccmode_gcm_mult_h(a1, (a1 + 32), *v16.i64, v15, v10, v11, v12, v13);
      }

      *(a1 + 48) = *(a1 + 32);
      ccmode_gcm_update_pad(a1);
      result = 0;
      *(a1 + 80) = 2;
    }
  }

  return result;
}

int8x16_t gcm_init(int8x16_t *a1, int8x16_t *a2, double a3, double a4, double a5, double a6, double a7, int8x16_t a8)
{
  v8 = vqtbl1q_s8(*a2, *qword_1DF06A940);
  v9 = veorq_s8(a8, a8);
  v10 = veorq_s8(vandq_s8(vextq_s8(*&qword_1DF06A940[2], *&qword_1DF06A940[2], 8uLL), vshrq_n_s32(vdupq_laneq_s32(v8, 3), 0x1FuLL)), vorrq_s8(vextq_s8(v9, vshrq_n_u64(v8, 0x3FuLL), 8uLL), vshlq_n_s64(v8, 1uLL)));
  *a1 = v10;
  a1[8] = veorq_s8(v10, vextq_s8(v10, v10, 8uLL));
  v11 = vmull_high_p64(v10, v10);
  v12 = vmull_p64(v10.u64[0], v10.u64[0]);
  v13 = veorq_s8(v12, veorq_s8(v11, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0])));
  v14 = veorq_s8(vextq_s8(v9, v13, 8uLL), v12);
  v15 = veorq_s8(vextq_s8(v14, v14, 8uLL), vmull_p64(0xC200000000000000, v14.u64[0]));
  v16 = veorq_s8(veorq_s8(vextq_s8(v13, v9, 8uLL), v11), veorq_s8(vextq_s8(v15, v15, 8uLL), vmull_p64(0xC200000000000000, v15.u64[0])));
  a1[1] = v16;
  a1[9] = veorq_s8(v16, vextq_s8(v16, v16, 8uLL));
  v13.i64[0] = veorq_s8(v16, vextq_s8(v16, v16, 8uLL)).u64[0];
  v17 = vmull_high_p64(v16, v10);
  v18 = vmull_p64(v16.u64[0], v10.u64[0]);
  v19 = veorq_s8(v18, veorq_s8(v17, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], v13.u64[0])));
  v20 = veorq_s8(vextq_s8(v9, v19, 8uLL), v18);
  v21 = veorq_s8(vextq_s8(v20, v20, 8uLL), vmull_p64(0xC200000000000000, v20.u64[0]));
  v22 = veorq_s8(veorq_s8(vextq_s8(v19, v9, 8uLL), v17), veorq_s8(vextq_s8(v21, v21, 8uLL), vmull_p64(0xC200000000000000, v21.u64[0])));
  a1[2] = v22;
  a1[10] = veorq_s8(v22, vextq_s8(v22, v22, 8uLL));
  v19.i64[0] = veorq_s8(v22, vextq_s8(v22, v22, 8uLL)).u64[0];
  v23 = vmull_high_p64(v22, v10);
  v24 = vmull_p64(v22.u64[0], v10.u64[0]);
  v25 = veorq_s8(v24, veorq_s8(v23, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], v19.u64[0])));
  v26 = veorq_s8(vextq_s8(v9, v25, 8uLL), v24);
  v27 = veorq_s8(vextq_s8(v26, v26, 8uLL), vmull_p64(0xC200000000000000, v26.u64[0]));
  v28 = veorq_s8(veorq_s8(vextq_s8(v25, v9, 8uLL), v23), veorq_s8(vextq_s8(v27, v27, 8uLL), vmull_p64(0xC200000000000000, v27.u64[0])));
  a1[3] = v28;
  a1[11] = veorq_s8(v28, vextq_s8(v28, v28, 8uLL));
  v25.i64[0] = veorq_s8(v28, vextq_s8(v28, v28, 8uLL)).u64[0];
  v29 = vmull_high_p64(v28, v10);
  v30 = vmull_p64(v28.u64[0], v10.u64[0]);
  v31 = veorq_s8(v30, veorq_s8(v29, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], v25.u64[0])));
  v32 = veorq_s8(vextq_s8(v9, v31, 8uLL), v30);
  v33 = veorq_s8(vextq_s8(v32, v32, 8uLL), vmull_p64(0xC200000000000000, v32.u64[0]));
  v34 = veorq_s8(veorq_s8(vextq_s8(v31, v9, 8uLL), v29), veorq_s8(vextq_s8(v33, v33, 8uLL), vmull_p64(0xC200000000000000, v33.u64[0])));
  a1[4] = v34;
  a1[12] = veorq_s8(v34, vextq_s8(v34, v34, 8uLL));
  v31.i64[0] = veorq_s8(v34, vextq_s8(v34, v34, 8uLL)).u64[0];
  v35 = vmull_high_p64(v34, v10);
  v36 = vmull_p64(v34.u64[0], v10.u64[0]);
  v37 = veorq_s8(v36, veorq_s8(v35, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], v31.u64[0])));
  v38 = veorq_s8(vextq_s8(v9, v37, 8uLL), v36);
  v39 = veorq_s8(vextq_s8(v38, v38, 8uLL), vmull_p64(0xC200000000000000, v38.u64[0]));
  v40 = veorq_s8(veorq_s8(vextq_s8(v37, v9, 8uLL), v35), veorq_s8(vextq_s8(v39, v39, 8uLL), vmull_p64(0xC200000000000000, v39.u64[0])));
  a1[5] = v40;
  a1[13] = veorq_s8(v40, vextq_s8(v40, v40, 8uLL));
  v37.i64[0] = veorq_s8(v40, vextq_s8(v40, v40, 8uLL)).u64[0];
  v41 = vmull_high_p64(v40, v10);
  v42 = vmull_p64(v40.u64[0], v10.u64[0]);
  v43 = veorq_s8(v42, veorq_s8(v41, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], v37.u64[0])));
  v44 = veorq_s8(vextq_s8(v9, v43, 8uLL), v42);
  v45 = veorq_s8(vextq_s8(v44, v44, 8uLL), vmull_p64(0xC200000000000000, v44.u64[0]));
  v46 = veorq_s8(veorq_s8(vextq_s8(v43, v9, 8uLL), v41), veorq_s8(vextq_s8(v45, v45, 8uLL), vmull_p64(0xC200000000000000, v45.u64[0])));
  a1[6] = v46;
  a1[14] = veorq_s8(v46, vextq_s8(v46, v46, 8uLL));
  v43.i64[0] = veorq_s8(v46, vextq_s8(v46, v46, 8uLL)).u64[0];
  v47 = vmull_high_p64(v46, v10);
  v48 = vmull_p64(v46.u64[0], v10.u64[0]);
  v49 = veorq_s8(v48, veorq_s8(v47, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], v43.u64[0])));
  v50 = veorq_s8(vextq_s8(v9, v49, 8uLL), v48);
  v51 = veorq_s8(vextq_s8(v50, v50, 8uLL), vmull_p64(0xC200000000000000, v50.u64[0]));
  result = veorq_s8(veorq_s8(vextq_s8(v49, v9, 8uLL), v47), veorq_s8(vextq_s8(v51, v51, 8uLL), vmull_p64(0xC200000000000000, v51.u64[0])));
  a1[7] = result;
  a1[15] = veorq_s8(result, vextq_s8(result, result, 8uLL));
  return result;
}

int8x16_t gcm_gmult(int8x16_t *a1, uint64x2_t *a2, int8x16_t *a3, double a4, double a5, double a6, double a7, double a8, int8x16_t a9)
{
  v9 = vqtbl1q_s8(*a1, *qword_1DF06A940);
  v10 = veorq_s8(a9, a9);
  v11 = veorq_s8(v9, vextq_s8(v9, v9, 8uLL)).u64[0];
  v12 = vmull_high_p64(v9, *a2);
  v13 = vmull_p64(v9.u64[0], a2->i64[0]);
  v14 = veorq_s8(v13, veorq_s8(v12, vmull_p64(veorq_s8(*a2, vextq_s8(*a2, *a2, 8uLL)).u64[0], v11)));
  v15 = veorq_s8(vextq_s8(v10, v14, 8uLL), v13);
  v16 = veorq_s8(vextq_s8(v15, v15, 8uLL), vmull_p64(0xC200000000000000, v15.u64[0]));
  result = vqtbl1q_s8(veorq_s8(veorq_s8(vextq_s8(v14, v10, 8uLL), v12), veorq_s8(vextq_s8(v16, v16, 8uLL), vmull_p64(0xC200000000000000, v16.u64[0]))), *qword_1DF06A940);
  *a3 = result;
  return result;
}

int8x16_t gcm_ghash(int8x16_t *a1, uint64x2_t *a2, int8x16_t *a3, uint64_t a4)
{
  v5 = veorq_s8(v4, v4);
  v6 = vqtbl1q_s8(*a1, *qword_1DF06A940);
  v7 = a4 < 128;
  for (i = a4 - 128; !v7; i -= 128)
  {
    v9 = vqtbl1q_s8(a3[7], *qword_1DF06A940);
    v10 = vmull_p64(a2->i64[0], v9.u64[0]);
    v11 = vmull_high_p64(*a2, v9);
    v12 = vmull_p64(a2[8].u64[0], veorq_s8(v9, vextq_s8(v9, v9, 8uLL)).u64[0]);
    v13 = vqtbl1q_s8(a3[6], *qword_1DF06A940);
    v14 = a2[1];
    v15 = veorq_s8(v10, vmull_p64(v14.u64[0], v13.u64[0]));
    v16 = veorq_s8(v11, vmull_high_p64(v14, v13));
    v17 = veorq_s8(v12, vmull_p64(a2[9].u64[0], veorq_s8(v13, vextq_s8(v13, v13, 8uLL)).u64[0]));
    v18 = vqtbl1q_s8(a3[5], *qword_1DF06A940);
    v19 = a2[2];
    v20 = veorq_s8(v15, vmull_p64(v19.u64[0], v18.u64[0]));
    v21 = veorq_s8(v16, vmull_high_p64(v19, v18));
    v22 = veorq_s8(v17, vmull_p64(a2[10].u64[0], veorq_s8(v18, vextq_s8(v18, v18, 8uLL)).u64[0]));
    v23 = vqtbl1q_s8(a3[4], *qword_1DF06A940);
    v24 = a2[3];
    v25 = veorq_s8(v20, vmull_p64(v24.u64[0], v23.u64[0]));
    v26 = veorq_s8(v21, vmull_high_p64(v24, v23));
    v27 = veorq_s8(v22, vmull_p64(a2[11].u64[0], veorq_s8(v23, vextq_s8(v23, v23, 8uLL)).u64[0]));
    v28 = vqtbl1q_s8(a3[3], *qword_1DF06A940);
    v29 = a2[4];
    v30 = veorq_s8(v25, vmull_p64(v29.u64[0], v28.u64[0]));
    v31 = veorq_s8(v26, vmull_high_p64(v29, v28));
    v32 = veorq_s8(v27, vmull_p64(a2[12].u64[0], veorq_s8(v28, vextq_s8(v28, v28, 8uLL)).u64[0]));
    v33 = vqtbl1q_s8(a3[2], *qword_1DF06A940);
    v34 = a2[5];
    v35 = veorq_s8(v30, vmull_p64(v34.u64[0], v33.u64[0]));
    v36 = veorq_s8(v31, vmull_high_p64(v34, v33));
    v37 = veorq_s8(v32, vmull_p64(a2[13].u64[0], veorq_s8(v33, vextq_s8(v33, v33, 8uLL)).u64[0]));
    v38 = vqtbl1q_s8(a3[1], *qword_1DF06A940);
    v39 = a2[6];
    v40 = veorq_s8(v35, vmull_p64(v39.u64[0], v38.u64[0]));
    v41 = veorq_s8(v36, vmull_high_p64(v39, v38));
    v42 = veorq_s8(v37, vmull_p64(a2[14].u64[0], veorq_s8(v38, vextq_s8(v38, v38, 8uLL)).u64[0]));
    v43 = a2[7];
    v44 = veorq_s8(vqtbl1q_s8(*a3, *qword_1DF06A940), v6);
    v45 = veorq_s8(v40, vmull_p64(v43.u64[0], v44.u64[0]));
    v46 = veorq_s8(v41, vmull_high_p64(v43, v44));
    v47 = veorq_s8(v46, veorq_s8(v45, veorq_s8(v42, vmull_p64(a2[15].u64[0], veorq_s8(v44, vextq_s8(v44, v44, 8uLL)).u64[0]))));
    v48 = veorq_s8(v45, vextq_s8(v5, v47, 8uLL));
    v49 = veorq_s8(vmull_p64(0xC200000000000000, v48.u64[0]), vextq_s8(v48, v48, 8uLL));
    v6 = veorq_s8(veorq_s8(v46, vextq_s8(v47, v5, 8uLL)), veorq_s8(vmull_p64(0xC200000000000000, v49.u64[0]), vextq_s8(v49, v49, 8uLL)));
    a3 += 8;
    v7 = i < 128;
  }

  v7 = i < -112;
  v50 = i + 112;
  if (!v7)
  {
    v52 = *a3;
    v51 = a3 + 1;
    v53 = veorq_s8(v6, vqtbl1q_s8(v52, *qword_1DF06A940));
    v54 = (a2 + v50);
    v55 = *(a2 + v50);
    v56 = vmull_p64(v53.u64[0], v55.u64[0]);
    v57 = vmull_high_p64(v53, v55);
    v58 = vmull_p64(veorq_s8(v53, vextq_s8(v53, v53, 8uLL)).u64[0], *(a2[8].u64 + v50));
    v7 = v50 < 16;
    for (j = v50 - 16; !v7; j -= 16)
    {
      --v54;
      v60 = *v51++;
      v61 = vqtbl1q_s8(v60, *qword_1DF06A940);
      v56 = veorq_s8(v56, vmull_p64(v61.u64[0], v54->i64[0]));
      v57 = veorq_s8(v57, vmull_high_p64(v61, *v54));
      v58 = veorq_s8(v58, vmull_p64(veorq_s8(v61, vextq_s8(v61, v61, 8uLL)).u64[0], v54[8].u64[0]));
      v7 = j < 16;
    }

    v62 = veorq_s8(v57, veorq_s8(v56, v58));
    v63 = veorq_s8(v56, vextq_s8(v5, v62, 8uLL));
    v64 = veorq_s8(vmull_p64(0xC200000000000000, v63.u64[0]), vextq_s8(v63, v63, 8uLL));
    v6 = veorq_s8(veorq_s8(v57, vextq_s8(v62, v5, 8uLL)), veorq_s8(vmull_p64(0xC200000000000000, v64.u64[0]), vextq_s8(v64, v64, 8uLL)));
  }

  result = vqtbl1q_s8(v6, *qword_1DF06A940);
  *a1 = result;
  return result;
}

uint64_t *ccaes_gcm_decrypt_mode()
{
  v0 = 5 * ((*(ccaes_ecb_encrypt_mode() + 1) + 7) & 0xFFFFFFFFFFFFFFF8);
  v1 = v0 + ((*ccaes_ecb_encrypt_mode() + 7) & 0xFFFFFFFFFFFFFFF8) + 384;
  v2 = ccaes_ecb_encrypt_mode();
  gcm_decrypt = v1;
  qword_1ED3F68C8 = 78647;
  qword_1ED3F68D0 = 1;
  unk_1ED3F68D8 = ccmode_gcm_init;
  qword_1ED3F68E0 = ccmode_gcm_set_iv;
  qword_1ED3F68E8 = ccmode_gcm_aad;
  qword_1ED3F68F0 = ccaes_vng_gcm_decrypt;
  qword_1ED3F68F8 = ccmode_gcm_finalize;
  qword_1ED3F6900 = ccmode_gcm_reset;
  unk_1ED3F6908 = v2;
  return &gcm_decrypt;
}

uint64_t ccmode_gcm_init(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 72);
  if (*(v2 + 8) != 16)
  {
    return 0xFFFFFFFFLL;
  }

  a2[6].i64[1] = v2;
  a2[7].i64[0] = a2[24].i64;
  a2[7].i32[2] = *(a1 + 8);
  (*(v2 + 16))(v2);
  a2[5].i16[1] = 0;
  ccmode_gcm_reset(a2);
  v4 = (*(v2 + 24))(a2[7].i64[0], 1, a2 + 1, a2);
  gcm_init(a2 + 8, a2, v4, v5, v6, v7, v8, v9);
  return 0;
}

void ccmode_gcm_aad_finalize(uint64_t a1, double a2, double a3, double a4, double a5, double a6, int8x16_t a7)
{
  if (*(a1 + 80) == 2)
  {
    if ((*(a1 + 88) & 0xF) != 0)
    {
      ccmode_gcm_mult_h(a1, (a1 + 16), a2, a3, a4, a5, a6, a7);
    }

    *(a1 + 80) = 3;
  }
}

uint64_t ccmode_gcm_update_pad(uint64_t a1)
{
  v1 = (a1 + 47);
  v2 = 1;
  do
  {
    v3 = *v1 + 1;
    *v1-- = v3;
    if (v2 > 3)
    {
      break;
    }

    ++v2;
  }

  while (!v3);
  return (*(*(a1 + 104) + 24))(*(a1 + 112), 1, a1 + 32, a1 + 64);
}

uint64_t ccmode_gcm_aad(uint64_t a1, unint64_t a2, int8x16_t *a3, double a4, double a5, double a6, double a7, double a8, int8x16_t a9)
{
  if (*(a1 + 80) != 2)
  {
    return 4294967228;
  }

  v9 = a3;
  v10 = a2;
  v12 = *(a1 + 88);
  v13 = v12 & 0xF;
  if ((v12 & 0xF) != 0)
  {
    v14 = 16 - v13;
    if (a2 < v14)
    {
      goto LABEL_9;
    }

    v15 = (v12 & 0xF) + a1 + 15;
    v16 = 16 - v13;
    do
    {
      *(v15 + v16) ^= a3[-1].u8[v16 + 15];
      --v16;
    }

    while (v16);
    ccmode_gcm_mult_h(a1, (a1 + 16), a4, a5, a6, a7, a8, a9);
    v10 -= v14;
    v9 = (v9 + v14);
    *(a1 + 88) += v14;
  }

  if (v10 >= 0x10)
  {
    v17 = v10 & 0xFFFFFFFFFFFFFFF0;
    gcm_ghash((a1 + 16), (a1 + 128), v9, v10 & 0xFFFFFFFFFFFFFFF0);
    v13 = 0;
    v9 = (v9 + (v10 & 0xFFFFFFFFFFFFFFF0));
    v10 &= 0xFu;
    *(a1 + 88) += v17;
LABEL_9:
    if (v10)
    {
      goto LABEL_10;
    }

    return 0;
  }

  v13 = 0;
  if (!v10)
  {
    return 0;
  }

LABEL_10:
  v18 = a1 + v13 + 15;
  v19 = v10;
  do
  {
    *(v18 + v19) ^= v9[-1].u8[v19 + 15];
    --v19;
  }

  while (v19);
  result = 0;
  *(a1 + 88) += v10;
  return result;
}

uint64_t ccmode_gcm_finalize(uint64_t a1, size_t a2, void *a3, double a4, double a5, double a6, double a7, double a8, int8x16_t a9)
{
  v26 = *MEMORY[0x1E69E9840];
  ccmode_gcm_aad_finalize(a1, a4, a5, a6, a7, a8, a9);
  if (*(a1 + 80) != 3)
  {
    return 4294967228;
  }

  v18 = *(a1 + 96);
  if ((v18 & 0xF) != 0)
  {
    ccmode_gcm_mult_h(a1, (a1 + 16), v12, v13, v14, v15, v16, v17);
    v18 = *(a1 + 96);
  }

  v19 = *(a1 + 88);
  *(a1 + 64) = v19 >> 53;
  *(a1 + 65) = v19 >> 45;
  *(a1 + 66) = v19 >> 37;
  *(a1 + 67) = v19 >> 29;
  *(a1 + 68) = v19 >> 21;
  *(a1 + 69) = v19 >> 13;
  *(a1 + 70) = v19 >> 5;
  *(a1 + 71) = 8 * v19;
  *(a1 + 72) = v18 >> 53;
  *(a1 + 73) = v18 >> 45;
  *(a1 + 74) = v18 >> 37;
  *(a1 + 75) = v18 >> 29;
  *(a1 + 76) = v18 >> 21;
  *(a1 + 77) = v18 >> 13;
  *(a1 + 78) = v18 >> 5;
  *(a1 + 79) = 8 * v18;
  v20 = *(a1 + 64);
  v21 = veorq_s8(v20, *(a1 + 16));
  *(a1 + 16) = v21;
  v22 = ccmode_gcm_mult_h(a1, (a1 + 16), *v21.i64, *v20.i64, v14, v15, v16, v17);
  (*(*(a1 + 104) + 24))(*(a1 + 112), 1, a1 + 48, a1 + 64, v22);
  v25 = veorq_s8(*(a1 + 64), *(a1 + 16));
  if (a2 >= 0x10)
  {
    a2 = 16;
  }

  if (*(a1 + 120) == 78647)
  {
    v23 = cc_cmp_safe_internal(a2, &v25, a3) != 0 ? 0xFFFFFFBB : 0;
  }

  else
  {
    v23 = 0;
  }

  memcpy(a3, &v25, a2);
  *(a1 + 80) = 4;
  return v23;
}

uint64_t cc_cmp_safe_internal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 1;
  }

  v3 = 0;
  do
  {
    v3 |= *(a3 - 1 + a1) ^ *(a2 - 1 + a1);
    --a1;
  }

  while (a1);
  v6 = timingsafe_enable_if_supported();
  v4 = v3 != 0;
  cc_disable_dit_with_sb(&v6);
  return v4;
}

uint64_t ccder_sizeof_len(unint64_t a1)
{
  if (a1 < 0x80)
  {
    return 1;
  }

  v2 = 3;
  v3 = 4;
  v4 = 5;
  v5 = 6;
  v6 = 7;
  v7 = 8;
  if (HIBYTE(a1))
  {
    v7 = 9;
  }

  if (HIWORD(a1))
  {
    v6 = v7;
  }

  if (a1 >> 40)
  {
    v5 = v6;
  }

  if (HIDWORD(a1))
  {
    v4 = v5;
  }

  if (a1 >> 24)
  {
    v3 = v4;
  }

  if (a1 >= 0x10000)
  {
    v2 = v3;
  }

  if (a1 >= 0x100)
  {
    return v2;
  }

  else
  {
    return 2;
  }
}

uint64_t ccder_sizeof_tag(uint64_t a1)
{
  v1 = a1 & 0x1FFFFFFFFFFFFFFFLL;
  v2 = 2;
  v3 = 3;
  v4 = 4;
  v5 = 5;
  if ((a1 & 0x1FFFFFFFFFFFFFFFuLL) >> 28)
  {
    v5 = 6;
  }

  if (v1 >= 0x200000)
  {
    v4 = v5;
  }

  if (v1 >= 0x4000)
  {
    v3 = v4;
  }

  if (v1 >= 0x80)
  {
    v2 = v3;
  }

  if (v1 >= 0x1F)
  {
    return v2;
  }

  else
  {
    return 1;
  }
}

uint64_t ccder_encode_body(unint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a3;
  v6 = a4;
  if (ccder_blob_encode_body(&v5, a1, a2))
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

BOOL ccder_blob_encode_body(void *a1, unint64_t a2, const void *a3)
{
  if (!a3)
  {
    return a2 == 0;
  }

  __dst[0] = 0;
  __dst[1] = 0;
  v5 = ccder_blob_reserve(a1, a2, __dst);
  if (v5)
  {
    memmove(__dst[0], a3, a2);
  }

  return v5;
}

BOOL ccder_blob_reserve(void *a1, unint64_t a2, void *a3)
{
  v3 = a1[1];
  v4 = v3 - *a1;
  if (v4 < a2)
  {
    v5 = 0;
    v3 = 0;
  }

  else
  {
    v5 = v3 - a2;
    a1[1] = v3 - a2;
  }

  result = v4 >= a2;
  *a3 = v5;
  a3[1] = v3;
  return result;
}

uint64_t ccder_blob_encode_tl(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  result = ccder_blob_encode_len(a1, a3);
  if (result)
  {

    return ccder_blob_encode_tag(a1, a2);
  }

  return result;
}

uint64_t ccder_encode_tl(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a3;
  v6 = a4;
  if (ccder_blob_encode_tl(&v5, a1, a2))
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t ccder_blob_encode_len(uint64_t *a1, unint64_t a2)
{
  if (HIDWORD(a2))
  {
    return 0;
  }

  v3 = *a1;
  v4 = a1[1];
  if (a2 > 0x7F)
  {
    if (a2 > 0xFF)
    {
      if (a2 >> 16)
      {
        if (a2 >> 24)
        {
          if (v3 + 5 <= v4)
          {
            *(v4 - 4) = bswap32(a2);
            LOBYTE(a2) = -124;
            v5 = -5;
            goto LABEL_17;
          }
        }

        else if (v3 + 4 <= v4)
        {
          *(v4 - 2) = bswap32(a2) >> 16;
          *(v4 - 3) = BYTE2(a2);
          LOBYTE(a2) = -125;
          v5 = -4;
          goto LABEL_17;
        }
      }

      else if (v3 + 3 <= v4)
      {
        *(v4 - 2) = bswap32(a2) >> 16;
        LOBYTE(a2) = -126;
        v5 = -3;
        goto LABEL_17;
      }
    }

    else if (v3 + 2 <= v4)
    {
      *(v4 - 1) = a2;
      LOBYTE(a2) = -127;
      v5 = -2;
      goto LABEL_17;
    }

    return 0;
  }

  if (v3 + 1 > v4)
  {
    return 0;
  }

  v5 = -1;
LABEL_17:
  v6 = (v4 + v5);
  *v6 = a2;
  *a1 = v3;
  a1[1] = v6;
  return 1;
}

uint64_t ccder_blob_encode_tag(void *a1, unint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = HIBYTE(a2);
  v5 = a2 & 0x1FFFFFFFFFFFFFFFLL;
  if ((a2 & 0x1FFFFFFFFFFFFFFFLL) > 0x1E)
  {
    if (v5 > 0x7F)
    {
      if (v5 >> 14)
      {
        if (v5 >> 21)
        {
          v8 = v2 - v3;
          if (v5 >> 28)
          {
            if (v8 < 6)
            {
              return 0;
            }

            *(v2 - 1) = a2 & 0x7F;
            *(v2 - 2) = (a2 >> 7) | 0x80;
            *(v2 - 3) = (a2 >> 14) | 0x80;
            *(v2 - 4) = (a2 >> 21) | 0x80;
            LOBYTE(a2) = (a2 >> 28) | 0x80;
            v7 = -5;
          }

          else
          {
            if (v8 < 5)
            {
              return 0;
            }

            *(v2 - 1) = a2 & 0x7F;
            *(v2 - 2) = (a2 >> 7) | 0x80;
            *(v2 - 3) = (a2 >> 14) | 0x80;
            LODWORD(a2) = (a2 >> 21) | 0xFFFFFF80;
            v7 = -4;
          }
        }

        else
        {
          if ((v2 - v3) < 4)
          {
            return 0;
          }

          *(v2 - 1) = a2 & 0x7F;
          *(v2 - 2) = (a2 >> 7) | 0x80;
          LODWORD(a2) = (a2 >> 14) | 0xFFFFFF80;
          v7 = -3;
        }
      }

      else
      {
        if ((v2 - v3) < 3)
        {
          return 0;
        }

        *(v2 - 1) = a2 & 0x7F;
        LODWORD(a2) = (a2 >> 7) | 0xFFFFFF80;
        v7 = -2;
      }
    }

    else
    {
      if ((v2 - v3) < 2)
      {
        return 0;
      }

      v7 = -1;
    }

    v2 += v7;
    *v2 = a2;
    v6 = v4 | 0x1F;
    goto LABEL_20;
  }

  if (v2 == v3)
  {
    return 0;
  }

  v6 = HIBYTE(a2) & 0xE0 | a2;
LABEL_20:
  *(v2 - 1) = v6;
  *a1 = v3;
  a1[1] = v2 - 1;
  return 1;
}

unsigned __int8 *ccder_decode_tag(unint64_t *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (!a2)
  {
    return 0;
  }

  v4[0] = a2;
  v4[1] = a3;
  if (ccder_blob_decode_tag(v4, a1))
  {
    return v4[0];
  }

  else
  {
    return 0;
  }
}

unsigned __int8 *ccder_decode_tl(uint64_t a1, unint64_t *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (!a3)
  {
    return 0;
  }

  v5[0] = a3;
  v5[1] = a4;
  if (ccder_blob_decode_tl(v5, a1, a2))
  {
    return v5[0];
  }

  else
  {
    return 0;
  }
}

uint64_t ccder_encode_constructed_tl(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a3;
  v6 = a4;
  if (ccder_blob_encode_tl(&v5, a1, a2 - a4))
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t ccgcm_set_iv_legacy_internal(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4)
{
  if (a3 && a4)
  {
    v5 = *(a1 + 32);

    return v5(a2, a3, a4);
  }

  else if (a2[40] == 1)
  {
    cc_clear(0x10uLL, a2 + 16);
    ccmode_gcm_update_pad(a2);
    cc_clear(0x10uLL, a2 + 24);
    result = 0;
    a2[40] = 2;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t ccgcm_reset(uint64_t a1, uint64_t a2)
{
  v6 = timingsafe_enable_if_supported();
  v4 = (*(a1 + 64))(a2);
  cc_disable_dit_with_sb(&v6);
  return v4;
}

uint64_t ccgcm_set_iv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 32))(a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ccaes_vng_gcm_encrypt(uint64_t a1, unint64_t a2, int8x16_t *a3, int8x16_t *a4, double a5, double a6, double a7, double a8, double a9, int8x16_t a10)
{
  v14 = *(a1 + 96);
  ccmode_gcm_aad_finalize(a1, a5, a6, a7, a8, a9, a10);
  if (*(a1 + 80) != 3)
  {
    return 4294967228;
  }

  v23 = *(a1 + 96);
  result = 4294967229;
  if (!__CFADD__(v23, a2) && v23 + a2 <= 0xFFFFFFFE0)
  {
    v25 = v14 & 0xF;
    if ((v14 & 0xF) != 0)
    {
      v26 = 16 - v25;
      if (a2 < v26)
      {
LABEL_19:
        if (!a2)
        {
          return 0;
        }

        v40 = v25;
        v41 = &a4[-1].i8[15];
        v42 = a1 + v25 + 63;
        v43 = a2;
        do
        {
          v41[v43] = *(v42 + v43) ^ a3[-1].i8[v43 + 15];
          --v43;
        }

        while (v43);
        v44 = v40 + a1 + 15;
        v45 = a2;
        do
        {
          *(v44 + v45) ^= v41[v45];
          --v45;
        }

        while (v45);
        result = 0;
        *(a1 + 96) += a2;
        return result;
      }

      v27 = &a4[-1].i8[15];
      v28 = v26;
      do
      {
        v27[v28] = *((v14 & 0xF) + a1 + 63 + v28) ^ a3[-1].i8[v28 + 15];
        --v28;
      }

      while (v28);
      v29 = v26;
      do
      {
        *((v14 & 0xF) + a1 + 15 + v29) ^= v27[v29];
        --v29;
      }

      while (v29);
      ccmode_gcm_mult_h(a1, (a1 + 16), v17, v18, v19, v20, v21, v22);
      a2 -= v26;
      a3 = (a3 + v26);
      a4 = (a4 + v26);
      *(a1 + 96) += v26;
      ccmode_gcm_update_pad(a1);
    }

    if (a2 >= 0x10)
    {
      gcmEncrypt(a3, a4, a1, a2 & 0xFFFFFFF0, (a1 + 128), *(a1 + 112), v15, v16, v46, v47);
      v30 = a2 & 0xFFFFFFF0;
      a2 &= 0xFFFFFFFF0000000FLL;
      a3 = (a3 + v30);
      a4 = (a4 + v30);
      v31 = *(a1 + 104);
      *(a1 + 96) += v30;
      (*(v31 + 24))(*(a1 + 112), 1, a1 + 32, a1 + 64);
      if (a2 >= 0x10)
      {
        do
        {
          for (i = 0; i != -16; --i)
          {
            a4->i8[i + 15] = *(a1 + i + 79) ^ a3->i8[i + 15];
          }

          for (j = 0; j != -16; --j)
          {
            *(a1 + j + 31) ^= a4->u8[j + 15];
          }

          ccmode_gcm_mult_h(a1, (a1 + 16), v32, v33, v34, v35, v36, v37);
          a2 -= 16;
          ++a3;
          ++a4;
          *(a1 + 96) += 16;
          ccmode_gcm_update_pad(a1);
        }

        while (a2 > 0xF);
      }
    }

    v25 = 0;
    goto LABEL_19;
  }

  return result;
}

uint64_t *ccaes_gcm_encrypt_mode()
{
  v0 = 5 * ((*(ccaes_ecb_encrypt_mode() + 1) + 7) & 0xFFFFFFFFFFFFFFF8);
  v1 = v0 + ((*ccaes_ecb_encrypt_mode() + 7) & 0xFFFFFFFFFFFFFFF8) + 384;
  v2 = ccaes_ecb_encrypt_mode();
  gcm_encrypt = v1;
  qword_1ED3F6878 = 4073947;
  qword_1ED3F6880 = 1;
  unk_1ED3F6888 = ccmode_gcm_init;
  qword_1ED3F6890 = ccmode_gcm_set_iv;
  qword_1ED3F6898 = ccmode_gcm_aad;
  qword_1ED3F68A0 = ccaes_vng_gcm_encrypt;
  qword_1ED3F68A8 = ccmode_gcm_finalize;
  qword_1ED3F68B0 = ccmode_gcm_reset;
  unk_1ED3F68B8 = v2;
  return &gcm_encrypt;
}

void ccaes_arm_decrypt_key_with_length_check(uint64_t a1, int8x16_t *a2, uint64_t a3, int8x16_t *a4, double a5, double a6, double a7, double a8, double a9, double a10, int64x2_t a11)
{
  if (a3 <= 127)
  {
    if (a3 > 0x20 || ((1 << a3) & 0x101010000) == 0)
    {
      return;
    }

LABEL_8:
    ccaes_arm_decrypt_key(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
    return;
  }

  if (a3 == 128 || a3 == 256 || a3 == 192)
  {
    goto LABEL_8;
  }
}

uint64_t ccecb_one_shot_explicit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = timingsafe_enable_if_supported();
  v14 = ccecb_one_shot_explicit_internal(a1, a2, a3, a4, a5, a6, a7);
  cc_disable_dit_with_sb(&v16);
  return v14;
}

uint64_t ccecb_one_shot_explicit_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) != a3)
  {
    return 4294967289;
  }

  v11 = MEMORY[0x1EEE9AC00]();
  v13 = v18 - v12;
  v16 = (*(v11 + 16))(v11, v18 - v12, v15, v14);
  if (!v16)
  {
    v16 = (*(a1 + 24))(v13, a4, a6, a7);
  }

  cc_clear(*a1, v13);
  return v16;
}

uint64_t cchkdf_expand_internal(rsize_t *a1, rsize_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  result = 4294967289;
  if (v8 <= a2)
  {
    v10 = a6 + v8 - 1;
    v11 = v10 / v8;
    if (v10 / v8 <= 0xFF)
    {
      v30 = &v30;
      v31 = a6;
      v15 = MEMORY[0x1EEE9AC00](4294967289, a2, a2, a3);
      v17 = &v30 - v16;
      MEMORY[0x1EEE9AC00](v15, v18, v19, v20);
      v22 = &v30 - v21;
      cchmac_init_internal(a1, (&v30 - v21), v23, v24);
      if (v8 <= v10)
      {
        v25 = 0;
        v26 = 0;
        v27 = 1;
        do
        {
          memcpy(v17, v22, ((a1[1] + a1[2] + 19) & 0xFFFFFFFFFFFFFFF8) + a1[1]);
          cchmac_update_internal(a1, v17, v26, __src);
          cchmac_update_internal(a1, v17, a4, a5);
          v32 = v27;
          cchmac_update_internal(a1, v17, 1, &v32);
          cchmac_final_internal(a1, v17, __src);
          if (v11 == v27)
          {
            v28 = v31 - v25;
          }

          else
          {
            v28 = *a1;
          }

          memcpy((a7 + v25), __src, v28);
          v26 = *a1;
          v25 += *a1;
        }

        while (v27++ < v11);
      }

      cc_clear(((a1[1] + a1[2] + 19) & 0xFFFFFFFFFFFFFFF8) + a1[1], v22);
      cc_clear(((a1[1] + a1[2] + 19) & 0xFFFFFFFFFFFFFFF8) + a1[1], v17);
      cc_clear(*a1, __src);
      return 0;
    }
  }

  return result;
}

uint64_t cchmac_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1EEE9AC00]();
  v12 = (v16 - v11);
  cchmac_init_internal(v10, (v16 - v11), v13, v14);
  cchmac_update_internal(a1, v12, a4, a5);
  cchmac_final_internal(a1, v12, a6);
  return cc_clear(((*(a1 + 8) + *(a1 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + *(a1 + 8), v12);
}

uint64_t cchmac_init_internal(uint64_t a1, void *a2, size_t a3, char *a4)
{
  v5 = a3;
  if (*(a1 + 16) >= a3)
  {
    if (a3)
    {
      v10 = a2 + 1;
      v11 = a3;
      do
      {
        v12 = *a4++;
        *(v10 + *(a1 + 8)) = v12 ^ 0x5C;
        v10 = (v10 + 1);
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    ccdigest_init_internal(a1, a2);
    ccdigest_update_internal(a1, a2, v5, a4);
    v8 = a2 + 1;
    (*(a1 + 56))(a1, a2, a2 + *(a1 + 8) + 8);
    v5 = *a1;
    if (*a1)
    {
      v9 = *a1;
      do
      {
        *(v8 + *(a1 + 8)) ^= 0x5Cu;
        v8 = (v8 + 1);
        --v9;
      }

      while (v9);
    }
  }

  v13 = *(a1 + 16);
  if (v13 > v5)
  {
    memset(a2 + v5 + *(a1 + 8) + 8, 92, v13 - v5);
    v13 = *(a1 + 16);
  }

  memcpy(a2 + ((*(a1 + 8) + v13 + 19) & 0xFFFFFFFFFFFFFFF8), *(a1 + 40), *(a1 + 8));
  (*(a1 + 48))(a2 + ((*(a1 + 8) + *(a1 + 16) + 19) & 0xFFFFFFFFFFFFFFF8), 1, a2 + *(a1 + 8) + 8);
  if (*(a1 + 16))
  {
    v14 = 0;
    do
    {
      *(a2 + *(a1 + 8) + v14++ + 8) ^= 0x6Au;
    }

    while (v14 < *(a1 + 16));
  }

  memcpy(a2 + 1, *(a1 + 40), *(a1 + 8));
  result = (*(a1 + 48))(a2 + 1, 1, a2 + *(a1 + 8) + 8);
  v16 = *(a1 + 16);
  *(a2 + *(a1 + 8) + v16 + 8) = 0;
  *a2 = 8 * v16;
  return result;
}

uint64_t cchmac_final_internal(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2 + 1;
  (*(a1 + 56))();
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *(a2 + v7 + v8 + 8) = *a1;
  *a2 = 8 * v8;
  memcpy(v6, a2 + ((v7 + v8 + 19) & 0xFFFFFFFFFFFFFFF8), v7);
  v9 = *(a1 + 56);

  return v9(a1, a2, a3);
}

uint64_t ccsha512_final(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = a2 + v6 + 8;
  if (v5 <= *(v7 + v5))
  {
    *(v7 + v5) = 0;
  }

  MEMORY[0x1EEE9AC00]();
  v9 = (v22 - v8);
  memcpy(v22 - v8, v11, v10 + 4);
  v12 = v9 + v6 + 8;
  v13 = *&v12[v5];
  *v9 += (8 * v13);
  *&v12[v5] = v13 + 1;
  v12[v13] = 0x80;
  v14 = *&v12[v5];
  if (v5 - 16 < v14)
  {
    while (v5 > v14)
    {
      *&v12[v5] = v14 + 1;
      v12[v14] = 0;
      v14 = *&v12[v5];
    }

    (*(a1 + 48))(v9 + 1, 1);
    LODWORD(v14) = 0;
    v6 = *(a1 + 8);
    v5 = *(a1 + 16);
    *(v9 + v6 + v5 + 8) = 0;
  }

  v15 = v9 + v6 + 8;
  v16 = (v15 + v5);
  if (v5 - 8 > v14)
  {
    v17 = v14;
    do
    {
      *v16 = v14 + 1;
      *(v15 + v17) = 0;
      v17 = *v16;
      LODWORD(v14) = *v16;
    }

    while (v5 - 8 > v17);
  }

  *(v16 - 1) = bswap64(*v9);
  (*(a1 + 48))(v9 + 1, 1);
  if (*a1 >= 8uLL)
  {
    v18 = 0;
    v19 = 0;
    v20 = 1;
    do
    {
      *(a3 + v18) = bswap64(v9[v19 + 1]);
      v19 = v20++;
      v18 += 8;
    }

    while (v19 < *a1 >> 3);
  }

  return cc_clear(*(a1 + 8) + *(a1 + 16) + 12, v9);
}

uint64_t cchmac(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = timingsafe_enable_if_supported();
  cchmac_internal(a1, a2, a3, a4, a5, a6);
  return cc_disable_dit_with_sb(&v13);
}

unsigned __int8 *ccder_decode_rsa_pub_x509_n(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v5 = a2;
  result = ccder_decode_constructed_tl(0x2000000000000010, &v5, a1, a2);
  if (result)
  {
    v7 = v5;
    v6 = 0;
    v3 = ccder_decode_constructed_tl(0x2000000000000010, &v7, result, v5);
    if (v3 && (v4 = ccder_decode_oid(&v6, v3, v7)) != 0)
    {
      result = ccder_decode_constructed_tl(5, &v7, v4, v7);
      if (result)
      {
        v7 = v5;
        result = ccder_decode_constructed_tl(3, &v7, result, v5);
        if (result)
        {
          if (result < v7 && !*result)
          {
            ++result;
          }

          return ccder_decode_rsa_pub_n(result, v7);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unsigned __int8 *ccrsa_import_pub_n(uint64_t a1, unsigned __int8 *a2)
{
  result = ccder_decode_rsa_pub_x509_n(a2, &a2[a1]);
  if (!result)
  {

    return ccder_decode_rsa_pub_n(a2, &a2[a1]);
  }

  return result;
}

unsigned __int8 *ccder_decode_rsa_pub_n(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = 0;
  v4 = a2;
  result = ccder_decode_constructed_tl(0x2000000000000010, &v4, a1, a2);
  if (result)
  {
    if (ccder_decode_uint_n(&v3, result, v4))
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ccder_blob_decode_uint_n(unsigned __int8 **a1, unint64_t *a2)
{
  v5 = 0;
  v6 = 0;
  result = ccder_blob_decode_range(a1, 2, &v5);
  if (result)
  {
    v4 = v5;
    if (v5 != v6 && (*v5 & 0x80000000) == 0 && (*v5 || (v4 = (v5 + 1), v5 + 1 == v6) || *v4 < 0))
    {
      *a2 = (v6 - v4 + 7) >> 3;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unsigned __int8 *ccder_decode_uint_n(unint64_t *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (!a2)
  {
    return 0;
  }

  v4[0] = a2;
  v4[1] = a3;
  if (ccder_blob_decode_uint_n(v4, a1))
  {
    return v4[0];
  }

  else
  {
    return 0;
  }
}

unsigned __int8 *ccder_decode_rsa_pub_x509(uint64_t *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v9 = a3;
  v4 = ccder_decode_constructed_tl(0x2000000000000010, &v9, a2, a3);
  v10 = 0;
  v11 = v9;
  v5 = ccder_decode_constructed_tl(0x2000000000000010, &v11, v4, v9);
  if (v5)
  {
    v6 = ccder_decode_oid(&v10, v5, v11);
    if (v6)
    {
      v6 = ccder_decode_constructed_tl(5, &v11, v6, v11);
    }
  }

  else
  {
    v6 = 0;
  }

  v11 = v9;
  result = ccder_decode_constructed_tl(3, &v11, v6, v9);
  if (result)
  {
    v8 = result;
    if (result < v11 && !*result)
    {
      v8 = result + 1;
    }

    return ccder_decode_rsa_pub(a1, v8, v11);
  }

  return result;
}

uint64_t ccrsa_import_pub(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  if (ccder_decode_rsa_pub_x509(a1, a3, &a3[a2]))
  {
    return 0;
  }

  if (ccder_decode_rsa_pub(a1, a3, &a3[a2]))
  {
    return 0;
  }

  return 4294967289;
}

uint64_t cckem_kyber768_generate_key(uint64_t a1, uint64_t (**a2)(void, uint64_t, _OWORD *))
{
  v4 = (cckem_public_ctx() + 8);
  v5 = (a1 + *(*a1 + 16) + 8);

  return ccmlkem_kem_keypair(cckyber768_params, v4, v5, a2);
}

uint64_t cckem_generate_key(uint64_t a1, uint64_t a2)
{
  v6 = timingsafe_enable_if_supported();
  v4 = (*(*a1 + 48))(a1, a2);
  cc_disable_dit_with_sb(&v6);
  return v4;
}

uint64_t ccmlkem_kem_keypair(int16x4_t *a1, void *a2, void *a3, uint64_t (**a4)(void, uint64_t, _OWORD *))
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = (*a4)(a4, 64, __s);
  if (v7)
  {
    v8 = v7;
    goto LABEL_3;
  }

  v8 = ccmlkem_kem_keypair_from_seed(a1, a2, a3, __s, &v11);
  if (v8)
  {
LABEL_3:
    cc_clear((384 * a1->i32[1]) | 0x20u, a2);
    cc_clear((768 * a1->i32[1]) | 0x60u, a3);
  }

  cc_clear(0x40uLL, __s);
  return v8;
}

uint64_t ccmlkem_indcpa_keypair(int16x4_t *a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a1->i32[1];
  v9 = v8 << 8;
  v10 = (v8 << 8) * v8;
  v11 = sizeof_struct_ccpolyzp_po2cyc();
  v12 = (v11 - 1 + 2 * v9) / v11;
  v35[0] = cc_malloc_clear(8 * (v12 + (v11 - 1 + 2 * v10) / v11) + 16 * v12);
  v13 = a1->i32[1];
  v14 = sizeof_struct_ccpolyzp_po2cyc();
  v15 = (v14 - 1 + 2 * (v13 << 8)) / v14;
  v35[1] = v15 + (v14 - 1 + 2 * ((v13 << 8) * v13)) / v14 + 2 * v15;
  v36 = 0;
  v37 = cc_ws_alloc;
  v38 = cc_ws_free;
  if (!v35[0])
  {
    return 4294967283;
  }

  v16 = cc_ws_alloc(v35, ((v13 * v13) << 6) & 0x3FFFFFC0);
  v17 = v37(v35, (a1->i32[1] & 0xFFFFFFLL) << 6);
  v18 = v37(v35, (a1->i32[1] & 0xFFFFFFLL) << 6);
  v19 = v37(v35, (a1->i32[1] & 0xFFFFFFLL) << 6);
  if (a1->i32[0] == 1)
  {
    ccmlkem_hash_g_append_k(a1, a4, __s);
  }

  else
  {
    ccmlkem_hash_g(32, a4, __s);
  }

  v20 = ccmlkem_sample_matrix(a1, __s, 0, v16);
  if (!v20)
  {
    ccmlkem_polyvec_getnoise(a1, v19, v40, 0);
    ccmlkem_polyvec_getnoise(a1, v17, v40, a1->u8[4]);
    ccmlkem_polyvec_ntt_forward_cbd_eta2(a1, v19);
    ccmlkem_polyvec_reduce(a1, v19);
    ccmlkem_polyvec_ntt_forward_cbd_eta2(a1, v17);
    LODWORD(v29) = a1->i32[1];
    if (v29)
    {
      v30 = 0;
      v31 = 0;
      do
      {
        ccmlkem_polyvec_basemul(a1, (v18 + 2 * v30), (v16 + 2 * v30 * v29), v19, v21, v22, v23, v24, v25, v26, v27, v28);
        ccmlkem_poly_toplant((v18 + 2 * v30));
        ++v31;
        v29 = a1->u32[1];
        v30 += 256;
      }

      while (v31 < v29);
    }

    ccmlkem_polyvec_add(a1, v18, v18, v17);
    ccmlkem_polyvec_reduce(a1, v18);
    ccmlkem_polyvec_encode(a1, a2, v18);
    v32 = __s[1];
    v33 = (a2 + (384 * a1->i32[1]));
    *v33 = __s[0];
    v33[1] = v32;
    ccmlkem_polyvec_encode(a1, a3, v19);
  }

  v36 = 0;
  cc_clear(0x40uLL, __s);
  v38(v35);
  return v20;
}

uint64_t ccmlkem_kem_keypair_from_seed(int16x4_t *a1, const void *a2, uint64_t a3, _OWORD *a4, _OWORD *a5)
{
  v54 = *MEMORY[0x1E69E9840];
  v9 = ccmlkem_indcpa_keypair(a1, a2, a3, a4);
  if (v9)
  {
    return v9;
  }

  memcpy((a3 + (384 * a1->i32[1])), a2, (384 * a1->i32[1]) | 0x20u);
  v10 = OUTLINED_FUNCTION_1_8();
  ccmlkem_hash_h(v10, a2, (a3 + ((v10 + (v11 << 7)) | 0x40u) - 64));
  v12 = a3 + ((768 * a1->i32[1]) | 0x60u);
  v13 = a5[1];
  *(v12 - 32) = *a5;
  *(v12 - 16) = v13;
  v15 = a1[1].i32[0];
  v14 = a1[1].i32[1];
  v16 = a1->i32[1];
  sizeof_struct_ccpolyzp_po2cyc();
  OUTLINED_FUNCTION_0_16();
  if (!v22 & v21)
  {
    v23 = v18;
  }

  else
  {
    v23 = v20;
  }

  v24 = (v19 + (32 * (v15 + v16 * v14))) / v17;
  v25 = v23 + v24;
  if (v25 <= v18)
  {
    v25 = v18;
  }

  v26 = cc_malloc_clear(8 * (v25 + v24));
  v45[0] = v26;
  v28 = a1[1].i32[0];
  v27 = a1[1].i32[1];
  v29 = a1->i32[1];
  sizeof_struct_ccpolyzp_po2cyc();
  OUTLINED_FUNCTION_0_16();
  if (!v22 & v21)
  {
    v33 = v31;
  }

  v34 = v28 + v29 * v27;
  v35 = (v32 + (32 * v34)) / v30;
  v36 = v33 + v35;
  if (v36 > v31)
  {
    v31 = v36;
  }

  v45[1] = v31 + v35;
  v46 = 0;
  v47 = cc_ws_alloc;
  v48 = cc_ws_free;
  if (!v26)
  {
    return 4294967283;
  }

  v37 = cc_ws_alloc(v45, 4 * (v34 & 0x7FFFFFFu));
  v38 = OUTLINED_FUNCTION_1_8();
  ccmlkem_hash_h(v38, a2, v49);
  v39 = v46;
  __s = v49[0];
  v52 = v49[1];
  v40 = OUTLINED_FUNCTION_1_8();
  ccmlkem_hash_h(v40, a2, v53);
  ccmlkem_hash_g(64, &__s, &__s);
  v41 = ccmlkem_indcpa_encrypt_ws(v45, a1, a2, v49, v53, v37);
  if (v41)
  {
    v42 = v41;
    v46 = v39;
    cc_clear(0x40uLL, &__s);
  }

  else
  {
    v50[0] = __s;
    v50[1] = v52;
    v46 = v39;
    cc_clear(0x40uLL, &__s);
    v44 = ccmlkem_kem_decapsulate_ws(v45, a1, a3, v37, &__s);
    if (v44)
    {
      v42 = v44;
    }

    else if (cc_cmp_safe_internal(32, v50, &__s))
    {
      v42 = 0xFFFFFFFFLL;
    }

    else
    {
      v42 = 0;
    }
  }

  v46 = 0;
  cc_clear(0x20uLL, v50);
  cc_clear(0x20uLL, &__s);
  cc_clear(0x20uLL, v49);
  v48(v45);
  return v42;
}

uint64_t (*cckeccak_get_permutation())(uint64_t *a1)
{
  if ((MEMORY[0xFFFFFC010] & 0x100000000) != 0)
  {
    return AccelerateCrypto_SHA3_keccak_hwassist;
  }

  else
  {
    return AccelerateCrypto_SHA3_keccak;
  }
}

uint64_t cckeccak_absorb_blocks(uint64_t result, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void *))
{
  if (a3)
  {
    v9 = result;
    v10 = 0;
    v11 = a2 >> 3;
    do
    {
      v12 = v9;
      v13 = v11;
      if (a2 >= 8)
      {
        do
        {
          v14 = *a4++;
          *v12++ ^= v14;
          --v13;
        }

        while (v13);
      }

      result = a5(v9);
      ++v10;
    }

    while (v10 != a3);
  }

  return result;
}

uint64_t cckeccak_absorb_and_pad(uint64_t result, uint64_t a2, unint64_t a3, uint64_t *a4, unsigned int a5)
{
  v7 = result;
  v14[1] = *MEMORY[0x1E69E9840];
  v8 = a3 >> 3;
  if (a3 >= 8)
  {
    v10 = result;
    v11 = a3 >> 3;
    do
    {
      v12 = *a4++;
      *v10++ ^= v12;
      --v11;
    }

    while (v11);
    v9 = a3 >> 3;
  }

  else
  {
    v9 = 0;
  }

  v13 = a3 & 7;
  if ((a3 & 7) != 0)
  {
    v14[0] = 0;
    __memcpy_chk();
    *(v7 + 8 * v9) = *(v7 + 8 * v9);
    result = cc_clear(8uLL, v14);
  }

  *(v7 + 8 * v8) ^= a5 << (8 * v13);
  *(v7 + ((a2 - 1) & 0xFFFFFFFFFFFFFFF8)) ^= 128 << (8 * ((a2 - 1) & 7));
  return result;
}

uint64_t cckeccak_squeeze(uint64_t result, unint64_t a2, unint64_t a3, void *a4, uint64_t (*a5)(uint64_t *))
{
  v7 = a3;
  v8 = result;
  v18[1] = *MEMORY[0x1E69E9840];
  if (a3 >= a2)
  {
    v10 = a2 >> 3;
    do
    {
      result = a5(v8);
      v11 = v8;
      v12 = v10;
      if (a2 >= 8)
      {
        do
        {
          v13 = *v11++;
          *a4++ = v13;
          --v12;
        }

        while (v12);
      }

      v7 -= a2;
    }

    while (v7 >= a2);
  }

  if (v7)
  {
    result = a5(v8);
    if (v7 >= 8)
    {
      v14 = v7 >> 3;
      v15 = v8;
      v16 = v7 >> 3;
      do
      {
        v17 = *v15++;
        *a4++ = v17;
        --v16;
      }

      while (v16);
    }

    else
    {
      v14 = 0;
    }

    if ((v7 & 7) != 0)
    {
      v18[0] = v8[v14];
      memcpy(a4, v18, v7 & 7);
      return cc_clear(8uLL, v18);
    }
  }

  return result;
}

unint64_t *AccelerateCrypto_SHA3_keccak_hwassist(unint64_t *result, int8x16_t _Q0, __n128 _Q1, __n128 _Q2, __n128 _Q3, __n128 _Q4, __n128 _Q5, __n128 _Q6, __n128 _Q7)
{
  _Q0.i64[0] = *result;
  _Q1.n128_u64[0] = result[1];
  _Q2.n128_u64[0] = result[2];
  _Q3.n128_u64[0] = result[3];
  _Q4.n128_u64[0] = result[4];
  _Q5.n128_u64[0] = result[5];
  _Q6.n128_u64[0] = result[6];
  _Q7.n128_u64[0] = result[7];
  *&_Q8 = result[8];
  *&_Q9 = result[9];
  *&_Q10 = result[10];
  *&_Q11 = result[11];
  *&_Q12 = result[12];
  *&_Q13 = result[13];
  *&_Q14 = result[14];
  *&_Q15 = result[15];
  *&_Q16 = result[16];
  *&_Q17 = result[17];
  *&_Q18 = result[18];
  *&_Q19 = result[19];
  *&_Q20 = result[20];
  *&_Q21 = result[21];
  *&_Q22 = result[22];
  *&_Q23 = result[23];
  *&_Q24 = result[24];
  v26 = 0;
  v27 = &qword_1DF0FEF40;
  do
  {
    __asm
    {
      EOR3            V25.16B, V0.16B, V5.16B, V10.16B
      EOR3            V26.16B, V1.16B, V6.16B, V11.16B
      EOR3            V27.16B, V2.16B, V7.16B, V12.16B
      EOR3            V28.16B, V3.16B, V8.16B, V13.16B
      EOR3            V29.16B, V4.16B, V9.16B, V14.16B
      EOR3            V25.16B, V25.16B, V15.16B, V20.16B
      EOR3            V26.16B, V26.16B, V16.16B, V21.16B
      EOR3            V27.16B, V27.16B, V17.16B, V22.16B
      EOR3            V28.16B, V28.16B, V18.16B, V23.16B
      EOR3            V29.16B, V29.16B, V19.16B, V24.16B
      RAX1            V30.2D, V25.2D, V27.2D
      RAX1            V31.2D, V26.2D, V28.2D
      RAX1            V27.2D, V27.2D, V29.2D
      RAX1            V28.2D, V28.2D, V25.2D
      RAX1            V29.2D, V29.2D, V26.2D
      XAR             V25.2D, V1.2D, V30.2D, #0x3F ; '?'
      XAR             V1.2D, V6.2D, V30.2D, #0x14
      XAR             V6.2D, V9.2D, V28.2D, #0x2C ; ','
      XAR             V9.2D, V22.2D, V31.2D, #3
      XAR             V22.2D, V14.2D, V28.2D, #0x19
      XAR             V14.2D, V20.2D, V29.2D, #0x2E ; '.'
      XAR             V20.2D, V2.2D, V31.2D, #2
      XAR             V2.2D, V12.2D, V31.2D, #0x15
      XAR             V12.2D, V13.2D, V27.2D, #0x27 ; '''
      XAR             V13.2D, V19.2D, V28.2D, #0x38 ; '8'
      XAR             V19.2D, V23.2D, V27.2D, #8
      XAR             V23.2D, V15.2D, V29.2D, #0x17
      XAR             V15.2D, V4.2D, V28.2D, #0x25 ; '%'
      XAR             V26.2D, V21.2D, V30.2D, #0x3E ; '>'
      XAR             V8.2D, V8.2D, V27.2D, #9
    }

    _Q0 = veorq_s8(_Q0, _Q29);
    __asm
    {
      BCAX            V21.16B, V8.16B, V23.16B, V22.16B
      XAR             V28.2D, V24.2D, V28.2D, #0x32 ; '2'
      BCAX            V24.16B, V26.16B, V8.16B, V20.16B
      XAR             V18.2D, V18.2D, V27.2D, #0x2B ; '+'
      BCAX            V23.16B, V23.16B, V20.16B, V26.16B
      XAR             V11.2D, V11.2D, V30.2D, #0x36 ; '6'
      BCAX            V20.16B, V20.16B, V22.16B, V8.16B
      XAR             V30.2D, V16.2D, V30.2D, #0x13
      BCAX            V22.16B, V22.16B, V26.16B, V23.16B
      XAR             V16.2D, V5.2D, V29.2D, #0x1C
      XAR             V27.2D, V3.2D, V27.2D, #0x24 ; '$'
      BCAX            V3.16B, V18.16B, V0.16B, V28.16B
      XAR             V29.2D, V10.2D, V29.2D, #0x3D ; '='
      BCAX            V4.16B, V28.16B, V1.16B, V0.16B
      XAR             V10.2D, V17.2D, V31.2D, #0x31 ; '1'
      BCAX            V0.16B, V0.16B, V2.16B, V1.16B
      XAR             V7.2D, V7.2D, V31.2D, #0x3A ; ':'
      BCAX            V1.16B, V1.16B, V18.16B, V2.16B
      BCAX            V2.16B, V2.16B, V28.16B, V18.16B
      BCAX            V17.16B, V11.16B, V19.16B, V10.16B
      BCAX            V18.16B, V10.16B, V15.16B, V19.16B
      BCAX            V19.16B, V19.16B, V16.16B, V15.16B
      BCAX            V15.16B, V15.16B, V11.16B, V16.16B
      BCAX            V16.16B, V16.16B, V10.16B, V11.16B
      BCAX            V10.16B, V25.16B, V12.16B, V7.16B
      BCAX            V11.16B, V7.16B, V13.16B, V12.16B
      BCAX            V12.16B, V12.16B, V14.16B, V13.16B
      BCAX            V13.16B, V13.16B, V25.16B, V14.16B
      BCAX            V14.16B, V14.16B, V7.16B, V25.16B
    }

    *&_Q26 = *v27;
    __asm
    {
      BCAX            V7.16B, V29.16B, V9.16B, V30.16B
      BCAX            V8.16B, V30.16B, V27.16B, V9.16B
      BCAX            V9.16B, V9.16B, V6.16B, V27.16B
      BCAX            V5.16B, V27.16B, V29.16B, V6.16B
    }

    ++v27;
    __asm { BCAX            V6.16B, V6.16B, V30.16B, V29.16B }

    v26 += 8;
    *_Q0.i8 = veor_s8(*_Q0.i8, *&_Q26);
  }

  while (v26 != 192);
  *result = _Q0.i64[0];
  result[1] = _Q1.n128_u64[0];
  result[2] = _Q2.n128_u64[0];
  result[3] = _Q3.n128_u64[0];
  result[4] = _Q4.n128_u64[0];
  result[5] = _Q5.n128_u64[0];
  result[6] = _Q6.n128_u64[0];
  result[7] = _Q7.n128_u64[0];
  result[8] = _Q8;
  result[9] = _Q9;
  result[10] = _Q10;
  result[11] = _Q11;
  result[12] = _Q12;
  result[13] = _Q13;
  result[14] = _Q14;
  result[15] = _Q15;
  result[16] = _Q16;
  result[17] = _Q17;
  result[18] = _Q18;
  result[19] = _Q19;
  result[20] = _Q20;
  result[21] = _Q21;
  result[22] = _Q22;
  result[23] = _Q23;
  result[24] = _Q24;
  return result;
}

uint64_t ccmlkem_sample_matrix(uint64_t a1, _OWORD *a2, int a3, uint64_t a4)
{
  v30[21] = *MEMORY[0x1E69E9840];
  v26 = 0;
  memset(__s, 0, sizeof(__s));
  if (*(a1 + 4))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = 0;
      do
      {
        cckeccak_init_state(__s);
        v10 = a2[1];
        v27[0] = *a2;
        v27[1] = v10;
        if (a3)
        {
          v28 = v7;
          v11 = v9;
        }

        else
        {
          v28 = v9;
          v11 = v7;
        }

        v29 = v11;
        cckeccak_absorb_and_pad(__s, 168, 0x22uLL, v27, 0x1Fu);
        v12 = (a4 + 2 * ((v9 + *(a1 + 4) * v7) << 8));
        cc_clear(0x200uLL, v12);
        v13 = 0;
        v14 = 0;
        do
        {
          permutation = cckeccak_get_permutation();
          cckeccak_squeeze(__s, 0xA8uLL, 0xA8uLL, v30, permutation);
          v16 = 0;
          v17 = v30 + 2;
          do
          {
            v18 = *(v17 - 1);
            v19 = *(v17 - 2) | ((v18 & 0xF) << 8);
            if (v19 <= 0xD00)
            {
              *(v12 + v14) = v19;
              if (v14 > 0xFE)
              {
                v14 = 256;
                goto LABEL_21;
              }

              ++v14;
            }

            v20 = (v18 >> 4) | (16 * *v17);
            if (v20 <= 0xD00)
            {
              *(v12 + v14++) = v20;
            }

            if (v16 > 0x36)
            {
              break;
            }

            ++v16;
            v17 += 3;
          }

          while (v14 < 0x100);
          if (v14 > 0xFF)
          {
            break;
          }
        }

        while (v13++ < 4);
LABEL_21:
        v8 += v14;
        ++v9;
        v22 = *(a1 + 4);
      }

      while (v9 < v22);
      ++v7;
    }

    while (v7 < v22);
  }

  else
  {
    v8 = 0;
  }

  cc_clear(0xC8uLL, __s);
  cc_clear(0xA8uLL, v30);
  if (v8 >= (*(a1 + 4) * *(a1 + 4)) << 8)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ccmlkem_poly_getnoise(uint64_t a1, _OWORD *a2, char a3)
{
  __s[16] = *MEMORY[0x1E69E9840];
  ccmlkem_prf(a2, a3, __s);
  ccmlkem_sample_cbd_eta2(a1, __s);
  return cc_clear(0x80uLL, __s);
}

uint64_t ccmlkem_polyvec_getnoise(uint64_t result, uint64_t a2, _OWORD *a3, int a4)
{
  if (*(result + 4))
  {
    v6 = result;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = a4 + 1;
      result = ccmlkem_poly_getnoise(a2 + 2 * (v7 & 0xFFFFFF00), a3, a4);
      ++v8;
      v7 += 256;
      a4 = v9;
    }

    while (v8 < *(v6 + 4));
  }

  return result;
}

uint64_t ccmlkem_prf(_OWORD *a1, char a2, void *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v6 = a2;
  cckeccak_oneshot(33, v5, 0x80uLL, a3, 0x88uLL, 0x1Fu);
  return cc_clear(0x21uLL, v5);
}

uint64_t ccmlkem_sample_cbd_eta2(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = vdupq_n_s64(2uLL);
  v4 = vdupq_n_s64(8uLL);
  v5.i64[0] = 0x3000300030003;
  v5.i64[1] = 0x3000300030003;
  do
  {
    v6 = 0;
    v7 = vdupq_n_s64(((*(a2 + 8 * v2) >> 1) & 0x5555555555555555) + (*(a2 + 8 * v2) & 0x5555555555555555uLL));
    v8 = xmmword_1DF0F2E60;
    v9 = xmmword_1DF0F2E70;
    v10 = xmmword_1DF0F2E80;
    v11 = xmmword_1DF0F2E90;
    do
    {
      v12 = vshlq_n_s64(v9, 2uLL);
      v13 = vshlq_n_s64(v8, 2uLL);
      v14 = vshlq_n_s64(v11, 2uLL);
      v15 = vshlq_n_s64(v10, 2uLL);
      *(result + v6) = vsubq_s16(vandq_s8(vuzp1q_s16(vuzp1q_s32(vshlq_u64(v7, vnegq_s64(v13)), vshlq_u64(v7, vnegq_s64(v12))), vuzp1q_s32(vshlq_u64(v7, vnegq_s64(v15)), vshlq_u64(v7, vnegq_s64(v14)))), v5), vandq_s8(vuzp1q_s16(vuzp1q_s32(vshlq_u64(v7, vnegq_s64(vorrq_s8(v13, v3))), vshlq_u64(v7, vnegq_s64(vorrq_s8(v12, v3)))), vuzp1q_s32(vshlq_u64(v7, vnegq_s64(vorrq_s8(v15, v3))), vshlq_u64(v7, vnegq_s64(vorrq_s8(v14, v3))))), v5));
      v10 = vaddq_s64(v10, v4);
      v9 = vaddq_s64(v9, v4);
      v8 = vaddq_s64(v8, v4);
      v11 = vaddq_s64(v11, v4);
      v6 += 16;
    }

    while (v6 != 32);
    ++v2;
    result += 32;
  }

  while (v2 != 16);
  return result;
}

uint64_t ccmlkem_polyvec_ntt_forward_cbd_eta2(uint64_t result, uint64_t a2)
{
  if (*(result + 4))
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      result = ccmlkem_ntt_forward_cbd_eta2(a2 + 2 * (v4 & 0xFFFFFF00));
      ++v5;
      v4 += 256;
    }

    while (v5 < *(v3 + 4));
  }

  return result;
}

uint64_t ccmlkem_ntt_forward(uint64_t a1)
{
  v3 = ccmlkem_zetas;
  v1 = a1 + 256;
  v2 = 64;
  v3.i32[0] = 3329;
  v4 = vdupq_n_s32(0x6808u);
  do
  {
    v5 = *(v1 - 256);
    v6 = *(v1 - 128);
    v7 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v1), *v3.i8, 1), 0x10uLL), 3329), v4), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(*v1), *v3.i8, 1), 0x10uLL), 3329), v4);
    v8 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*(v1 + 128)), *v3.i8, 1), 0x10uLL), 3329), v4), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(*(v1 + 128)), *v3.i8, 1), 0x10uLL), 3329), v4);
    v9 = vsubq_s16(v5, v7);
    v10 = vaddq_s16(v5, v7);
    v11 = vsubq_s16(v6, v8);
    v12 = vaddq_s16(v6, v8);
    v13 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_s16(*v12.i8), v3, 2), 0x10uLL), 3329), v4), vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_high_s16(v12), v3, 2), 0x10uLL), 3329), v4);
    v14 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_s16(*v11.i8), v3, 3), 0x10uLL), 3329), v4), vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_high_s16(v11), v3, 3), 0x10uLL), 3329), v4);
    *(v1 - 256) = vaddq_s16(v10, v13);
    *(v1 - 128) = vsubq_s16(v10, v13);
    *v1 = vaddq_s16(v9, v14);
    v1 += 16;
    *(v1 + 112) = vsubq_s16(v9, v14);
    v17 = __OFSUB__(v2, 8);
    v15 = v2 == 8;
    v16 = v2 - 8 < 0;
    v2 -= 8;
  }

  while (!(v16 ^ v17 | v15));
  return ccmlkem_ntt_forward_2();
}

uint64_t ccmlkem_ntt_forward_2(uint64_t a1)
{
  v1.i32[0] = 3329;
  v2 = vdupq_n_s32(0x6808u);
  v3 = 0x10u;
  do
  {
    v1.i32[1] = *(&ccmlkem_zetas + v3);
    v5 = (&ccmlkem_zetas + v3 + v3);
    v1.i64[1] = *v5;
    v6 = (v5 + 2 * v3);
    v7 = *(a1 + 16);
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v10 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*(a1 + 64)), *v1.i8, 1), 0x10uLL), 3329), v2), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(*(a1 + 64)), *v1.i8, 1), 0x10uLL), 3329), v2);
    v11 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*(a1 + 80)), *v1.i8, 1), 0x10uLL), 3329), v2), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(*(a1 + 80)), *v1.i8, 1), 0x10uLL), 3329), v2);
    v12 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*(a1 + 96)), *v1.i8, 1), 0x10uLL), 3329), v2), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(*(a1 + 96)), *v1.i8, 1), 0x10uLL), 3329), v2);
    v13 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*(a1 + 112)), *v1.i8, 1), 0x10uLL), 3329), v2), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(*(a1 + 112)), *v1.i8, 1), 0x10uLL), 3329), v2);
    v14 = vsubq_s16(*a1, v10);
    v15 = vaddq_s16(*a1, v10);
    v16 = vsubq_s16(v7, v11);
    v17 = vaddq_s16(v7, v11);
    v18 = vsubq_s16(v8, v12);
    v19 = vaddq_s16(v8, v12);
    v20 = vsubq_s16(v9, v13);
    v21 = vaddq_s16(v9, v13);
    v22 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_s16(*v19.i8), v1, 2), 0x10uLL), 3329), v2), vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_high_s16(v19), v1, 2), 0x10uLL), 3329), v2);
    v23 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_s16(*v21.i8), v1, 2), 0x10uLL), 3329), v2), vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_high_s16(v21), v1, 2), 0x10uLL), 3329), v2);
    v24 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_s16(*v18.i8), v1, 3), 0x10uLL), 3329), v2), vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_high_s16(v18), v1, 3), 0x10uLL), 3329), v2);
    v25 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_s16(*v20.i8), v1, 3), 0x10uLL), 3329), v2), vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_high_s16(v20), v1, 3), 0x10uLL), 3329), v2);
    v26 = vsubq_s16(v15, v22);
    v27 = vaddq_s16(v15, v22);
    v28 = vsubq_s16(v17, v23);
    v29 = vaddq_s16(v17, v23);
    v30 = vsubq_s16(v14, v24);
    v31 = vaddq_s16(v14, v24);
    v32 = vsubq_s16(v16, v25);
    v33 = vaddq_s16(v16, v25);
    v34 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_s16(*v29.i8), *v6->i8), 0x10uLL), 3329), v2), vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_high_s16(v29), *v6->i8), 0x10uLL), 3329), v2);
    v35 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v28.i8), *v6, 1), 0x10uLL), 3329), v2), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v28), *v6, 1), 0x10uLL), 3329), v2);
    v36 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_s16(*v33.i8), *v6->i8, 2), 0x10uLL), 3329), v2), vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_high_s16(v33), *v6->i8, 2), 0x10uLL), 3329), v2);
    v37 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_s16(*v32.i8), *v6->i8, 3), 0x10uLL), 3329), v2), vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_high_s16(v32), *v6->i8, 3), 0x10uLL), 3329), v2);
    *a1 = vaddq_s16(v27, v34);
    *(a1 + 16) = vsubq_s16(v27, v34);
    *(a1 + 32) = vaddq_s16(v26, v35);
    *(a1 + 48) = vsubq_s16(v26, v35);
    *(a1 + 64) = vaddq_s16(v31, v36);
    *(a1 + 80) = vsubq_s16(v31, v36);
    *(a1 + 96) = vaddq_s16(v30, v37);
    *(a1 + 112) = vsubq_s16(v30, v37);
    a1 += 128;
    v3 = (v3 + 4);
  }

  while (v3 < 32);
  return ccmlkem_ntt_forward_3();
}

int64x2_t *ccmlkem_ntt_forward_3(int64x2_t *result)
{
  v1.i32[0] = 3329;
  v2 = vdupq_n_s32(0x6808u);
  v3 = 0x80u;
  v4 = 16;
  do
  {
    v1.i64[1] = *(&ccmlkem_zetas + v3);
    v5 = result[1];
    v6 = vzip1q_s64(*result, v5);
    v7 = vzip2q_s64(*result, v5);
    v8 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_s16(*v7.i8), v1, 2), 0x10uLL), 3329), v2), vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_high_s16(v7), v1, 3), 0x10uLL), 3329), v2);
    v9 = vsubq_s16(v6, v8);
    v10 = vaddq_s16(v6, v8);
    v11 = vtrn1q_s32(v10, v9);
    v12 = vtrn2q_s32(v10, v9);
    v13 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_s32(vmovl_s16(*v12.i8), vzip1q_s32(*(&ccmlkem_zetas + v3 + v3), *(&ccmlkem_zetas + v3 + v3))), 0x10uLL), 3329), v2), vmulq_n_s32(vshrq_n_s32(vmulq_s32(vmovl_high_s16(v12), vzip2q_s32(*(&ccmlkem_zetas + v3 + v3), *(&ccmlkem_zetas + v3 + v3))), 0x10uLL), 3329), v2);
    v14 = vsubq_s16(v11, v13);
    v15 = vaddq_s16(v11, v13);
    *result = vzip1q_s32(v15, v14);
    result[1] = vzip2q_s32(v15, v14);
    result += 2;
    v3 = (v3 + 8);
    v16 = __OFSUB__(v4--, 1);
  }

  while (!((v4 < 0) ^ v16 | (v4 == 0)));
  return result;
}

int16x4_t *ccmlkem_polyvec_reduce(int16x4_t *result, uint64_t a2)
{
  if (result->i32[1])
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      result = ccmlkem_poly_reduce((a2 + 2 * (v4 & 0xFFFFFF00)));
      ++v5;
      v4 += 256;
    }

    while (v5 < v3->u32[1]);
  }

  return result;
}

int8x16_t *ccmlkem_poly_encode(int8x16_t *result, int16x8_t *a2)
{
  v2 = a2 + 2;
  v3 = result + 2;
  v4 = 8;
  v5 = vdupq_n_s16(0xD01u);
  do
  {
    v6 = v2[-2];
    v7 = v2[-1];
    v8 = *v2;
    v9 = v2[1];
    v2 += 4;
    v10 = vaddq_s16(vandq_s8(vcltzq_s16(v6), v5), v6);
    v11 = vaddq_s16(vandq_s8(vcltzq_s16(v7), v5), v7);
    v12 = vaddq_s16(vandq_s8(vcltzq_s16(v8), v5), v8);
    v13 = vaddq_s16(vandq_s8(vcltzq_s16(v9), v5), v9);
    v14 = vextq_s8(v10, v10, 8uLL).u64[0];
    v15 = vextq_s8(v11, v11, 8uLL).u64[0];
    v16 = vextq_s8(v12, v12, 8uLL).u64[0];
    v17 = vextq_s8(v13, v13, 8uLL).u64[0];
    v19.val[0] = vorrq_s8(vshlq_n_s32(vmovl_u16(vuzp2_s16(*v10.i8, v14)), 0xCuLL), vmovl_u16(vuzp1_s16(*v10.i8, v14)));
    v19.val[1] = vorrq_s8(vshlq_n_s32(vmovl_u16(vuzp2_s16(*v11.i8, v15)), 0xCuLL), vmovl_u16(vuzp1_s16(*v11.i8, v15)));
    v20.val[0] = vorrq_s8(vshlq_n_s32(vmovl_u16(vuzp2_s16(*v12.i8, v16)), 0xCuLL), vmovl_u16(vuzp1_s16(*v12.i8, v16)));
    v20.val[1] = vorrq_s8(vshlq_n_s32(vmovl_u16(vuzp2_s16(*v13.i8, v17)), 0xCuLL), vmovl_u16(vuzp1_s16(*v13.i8, v17)));
    v3[-2] = vqtbl2q_s8(v19, xmmword_1DF0F2EF0);
    v3[-1] = vqtbl2q_s8(*(&v19 + 16), xmmword_1DF0F2F00);
    *v3 = vqtbl2q_s8(v20, xmmword_1DF0F2F10);
    v3 += 3;
  }

  while (v4-- > 1);
  return result;
}

int8x16_t *ccmlkem_poly_decode(int8x16_t *result, int64x2_t *a2)
{
  v4 = result + 2;
  v5 = a2 + 2;
  v6.i64[0] = 0xD000D000D000D00;
  v6.i64[1] = 0xD000D000D000D00;
  v7 = vdupq_n_s16(0xD01u);
  v8 = 8;
  do
  {
    v9 = v5[-2];
    v16.val[1] = v5[-1];
    v10 = *v5;
    v5 += 3;
    v17.val[1] = v10;
    v11 = vqtbl1q_s8(v9, dlCPI0_0);
    v16.val[0] = vdupq_laneq_s64(v9, 1);
    *v2.i8 = vshrn_n_s32(v11, 0xCuLL);
    v12 = vqtbl2q_s8(v16, dlCPI0_1);
    *v3.i8 = vshrn_n_s32(v12, 0xCuLL);
    v17.val[0] = vdupq_laneq_s64(v16.val[1], 1);
    v16.val[0] = vqtbl2q_s8(v17, dlCPI0_2);
    *v16.val[1].i8 = vshrn_n_s32(v16.val[0], 0xCuLL);
    v17.val[0] = vqtbl1q_s8(v10, dlCPI0_3);
    *v17.val[1].i8 = vshrn_n_s32(v17.val[0], 0xCuLL);
    v13 = vqtbl2q_s8(*(&v2 - 1), dlCPI0_4);
    v14 = *&vqtbl2q_s8(*(&v3 - 1), dlCPI0_4) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL);
    v16.val[0] = (*&vqtbl2q_s8(v16, dlCPI0_4) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL));
    v16.val[1] = (*&vqtbl2q_s8(v17, dlCPI0_4) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL));
    v3 = vaddq_s16(v16.val[0], v6);
    v2 = vbslq_s8(vcgtq_u16(v7, v14), v14, vaddq_s16(v14, v6));
    v4[-2] = vbslq_s8(vcgtq_u16(v7, (*&v13 & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL))), (*&v13 & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), vaddq_s16((*&v13 & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL)), v6));
    v4[-1] = v2;
    *v4 = vbslq_s8(vcgtq_u16(v7, v16.val[0]), v16.val[0], v3);
    v4[1] = vbslq_s8(vcgtq_u16(v7, v16.val[1]), v16.val[1], vaddq_s16(v16.val[1], v6));
    v4 += 4;
  }

  while (v8-- > 1);
  return result;
}

int16x8_t *ccmlkem_poly_add(int16x8_t *a1, int16x8_t *a2, int16x8_t *a3)
{
  v3 = 30;
  v5 = *a2;
  v6 = a2[1];
  v4 = a2 + 2;
  v8 = *a3;
  v9 = a3[1];
  v7 = a3 + 2;
  do
  {
    v10 = vaddq_s16(v5, v8);
    v11 = vaddq_s16(v6, v9);
    v5 = *v4;
    v6 = v4[1];
    v4 += 2;
    v8 = *v7;
    v9 = v7[1];
    v7 += 2;
    *a1 = v10;
    a1[1] = v11;
    a1 += 2;
    v12 = v3 <= 2;
    v3 -= 2;
  }

  while (!v12);
  *a1 = vaddq_s16(v5, v8);
  a1[1] = vaddq_s16(v6, v9);
  return a1 + 2;
}

int16x8_t *ccmlkem_poly_sub(int16x8_t *a1, int16x8_t *a2, int16x8_t *a3)
{
  v3 = 30;
  v5 = *a2;
  v6 = a2[1];
  v4 = a2 + 2;
  v8 = *a3;
  v9 = a3[1];
  v7 = a3 + 2;
  do
  {
    v10 = vsubq_s16(v5, v8);
    v11 = vsubq_s16(v6, v9);
    v5 = *v4;
    v6 = v4[1];
    v4 += 2;
    v8 = *v7;
    v9 = v7[1];
    v7 += 2;
    *a1 = v10;
    a1[1] = v11;
    a1 += 2;
    v12 = v3 <= 2;
    v3 -= 2;
  }

  while (!v12);
  *a1 = vsubq_s16(v5, v8);
  a1[1] = vsubq_s16(v6, v9);
  return a1 + 2;
}

int16x4_t *ccmlkem_poly_reduce(int16x4_t *result)
{
  v1 = 32;
  v2 = vdupq_n_s32(0x6808u);
  do
  {
    v3 = vaddhn_high_s32(vaddhn_s32(vmulq_lane_s32(vshrq_n_s32(vmulq_n_s32(vmovl_s16(result[2]), 1290168), 0x10uLL), 0xD010013AFB8, 1), v2), vmulq_lane_s32(vshrq_n_s32(vmulq_n_s32(vmovl_high_s16(*result[2].i8), 1290168), 0x10uLL), 0xD010013AFB8, 1), v2);
    *result->i8 = vaddhn_high_s32(vaddhn_s32(vmulq_lane_s32(vshrq_n_s32(vmulq_n_s32(vmovl_s16(*result), 1290168), 0x10uLL), 0xD010013AFB8, 1), v2), vmulq_lane_s32(vshrq_n_s32(vmulq_n_s32(vmovl_high_s16(*result->i8), 1290168), 0x10uLL), 0xD010013AFB8, 1), v2);
    *result[2].i8 = v3;
    result += 4;
    v4 = v1 <= 2;
    v1 -= 2;
  }

  while (!v4);
  return result;
}

int16x4_t *ccmlkem_poly_toplant(int16x4_t *result)
{
  v1 = 32;
  v2 = vdupq_n_s32(0x6808u);
  do
  {
    v3 = vaddhn_high_s32(vaddhn_s32(vmulq_lane_s32(vshrq_n_s32(vmulq_n_s32(vmovl_s16(result[2]), -1745596500), 0x10uLL), 0xD0197F44FACLL, 1), v2), vmulq_lane_s32(vshrq_n_s32(vmulq_n_s32(vmovl_high_s16(*result[2].i8), -1745596500), 0x10uLL), 0xD0197F44FACLL, 1), v2);
    *result->i8 = vaddhn_high_s32(vaddhn_s32(vmulq_lane_s32(vshrq_n_s32(vmulq_n_s32(vmovl_s16(*result), -1745596500), 0x10uLL), 0xD0197F44FACLL, 1), v2), vmulq_lane_s32(vshrq_n_s32(vmulq_n_s32(vmovl_high_s16(*result->i8), -1745596500), 0x10uLL), 0xD0197F44FACLL, 1), v2);
    *result[2].i8 = v3;
    result += 4;
    v4 = v1 <= 2;
    v1 -= 2;
  }

  while (!v4);
  return result;
}

int16x8_t *ccmlkem_polyvec_basemul(uint64_t a1, int16x8_t *a2, const __int16 *a3, const __int16 *a4, int32x4_t a5, double a6, double a7, double a8, double a9, double a10, double a11, int32x4_t a12)
{
  v28 = *MEMORY[0x1E69E9840];
  result = ccmlkem_ntt_basemul(a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  if (*(a1 + 4) >= 2u)
  {
    v25 = 1;
    v26 = 256;
    do
    {
      ccmlkem_ntt_basemul(v27, (a3 + ((2 * v26) & 0x1FFFFFE00)), (a4 + ((2 * v26) & 0x1FFFFFE00)), v17, v18, v19, v20, v21, v22, v23, v24);
      result = ccmlkem_poly_add(a2, a2, v27);
      ++v25;
      v26 += 256;
    }

    while (v25 < *(a1 + 4));
  }

  return result;
}

int16x8_t *ccmlkem_ntt_basemul(int16x8_t *result, const __int16 *a2, const __int16 *a3, int32x4_t a4, double a5, double a6, double a7, double a8, double a9, double a10, int32x4_t a11)
{
  v11 = &qword_1DF0EE570;
  v12 = 32;
  v13 = vdupq_n_s32(0x6808u);
  do
  {
    v17 = vld2_s16(a2);
    a2 += 8;
    v18 = vld2_s16(a3);
    a3 += 8;
    v17 = vmulq_n_s32(vmovl_s16(v17.val[0]), 1806234369);
    *(&v17 + 8) = vmulq_n_s32(vmovl_s16(v17.val[1]), 1806234369);
    v18 = vmovl_s16(*v18.i8);
    *(&v18 + 8) = vmovl_s16(v18.u64[1]);
    v14 = *v11++;
    *a11.i8 = v14;
    v15 = vmulq_s32(*(&v17 + 8), *(&v18 + 8));
    *a4.i8 = vneg_s32(v14);
    v18.u64[1] = vaddhn_s32(vmulq_lane_s32(vshrq_n_s32(vmulq_s32(v17, *(&v18 + 8)), 0x10uLL), 0xD016BA8F301, 1), v13);
    a11 = vmulq_lane_s32(vshrq_n_s32(vmulq_s32(vshrq_n_s32(vmlaq_lane_s32(v13, vshrq_n_s32(v15, 0x10uLL), 0xD016BA8F301, 1), 0x10uLL), vzip1q_s32(a11, a4)), 0x10uLL), 0xD016BA8F301, 1);
    v17 = vmulq_lane_s32(vshrq_n_s32(vmulq_s32(v17, v18), 0x10uLL), 0xD016BA8F301, 1);
    *(&v17 + 8) = vmulq_lane_s32(vshrq_n_s32(vmulq_s32(*(&v17 + 8), v18), 0x10uLL), 0xD016BA8F301, 1);
    v17.val[0] = vadd_s16(vaddhn_s32(a11, v13), vaddhn_s32(v17, v13));
    v17.val[1] = vadd_s16(v18.u64[1], vaddhn_s32(*(&v17 + 8), v13));
    *result++ = vzip1q_s16(v17, *(&v17 + 8));
  }

  while (v12-- > 1);
  return result;
}

uint64_t ccec_x963_import_pub(unint64_t *a1, uint64_t a2, unsigned __int8 *a3, unint64_t **a4)
{
  v8 = cc_malloc_clear(160 * *a1);
  v9 = 20 * *a1;
  v12[0] = v8;
  v12[1] = v9;
  v12[2] = 0;
  v12[3] = cc_ws_alloc;
  v13 = cc_ws_free;
  if (!v8)
  {
    return 4294967283;
  }

  v10 = ccec_x963_import_pub_ws(v12, a1, a2, a3, a4);
  v13(v12);
  return v10;
}

uint64_t ccec_x963_import_pub_ws(uint64_t a1, unint64_t *a2, uint64_t a3, unsigned __int8 *a4, unint64_t **a5)
{
  if (!a3)
  {
    return 4294967289;
  }

  if (a3 == 1)
  {
    v10 = *a4;
    if (!*a4)
    {
      return 4294967136;
    }
  }

  else
  {
    v10 = *a4;
  }

  v12 = v10 - 2;
  if (v12 > 5 || ((0x37u >> v12) & 1) == 0)
  {
    return 4294967289;
  }

  v13 = dword_1DF0F2F80[v12];
  v14 = *(a1 + 16);
  *a5 = a2;
  result = ccec_import_affine_point_ws(a1, a2, v13, a3, a4, a5 + 2);
  if (!result)
  {
    ccn_seti(*a2, &a5[2 * **a5 + 2], 1);
    v15 = (*(a1 + 24))(a1, 3 * *a2);
    result = ccec_validate_point_and_projectify_ws(a1, a2, v15, (a5 + 2));
  }

  *(a1 + 16) = v14;
  return result;
}

uint64_t ccec_import_affine_point_ws(uint64_t a1, unint64_t *a2, int a3, uint64_t a4, unsigned __int8 *a5, void *a6)
{
  if (!a4)
  {
    return 4294967289;
  }

  v11 = *a2;
  if (a4 == 1 && !*a5)
  {
    return 4294967136;
  }

  switch(a3)
  {
    case 4:
      v12 = 4294967124;
      if (a4 != (cczp_bitlen(a2) + 7) >> 3)
      {
        return v12;
      }

LABEL_22:
      v15 = *(a1 + 16);
      v16 = (*(a1 + 24))(a1, v11);
      if (a3 == 4)
      {
        v17 = a5;
      }

      else
      {
        v17 = a5 + 1;
      }

      v18 = cczp_bitlen(a2);
      uint_public_value = ccn_read_uint_public_value(v11, a6, (v18 + 7) >> 3, v17);
      if (!uint_public_value)
      {
        if (ccn_cmp_public_value(v11, a6, a2 + 3) != -1)
        {
LABEL_38:
          *(a1 + 16) = v15;
          return v12;
        }

        if ((a3 - 3) > 1)
        {
          v22 = &a5[(cczp_bitlen(a2) + 7) >> 3];
          v23 = &a6[*a2];
          v24 = cczp_bitlen(a2);
          uint_public_value = ccn_read_uint_public_value(v11, v23, (v24 + 7) >> 3, v22 + 1);
          if (!uint_public_value)
          {
            if (a3 == 2)
            {
              OUTLINED_FUNCTION_0_14();
              if (!v14)
              {
                v12 = 4294967125;
                goto LABEL_38;
              }
            }

            goto LABEL_37;
          }
        }

        else
        {
          uint_public_value = ccec_affine_point_from_x_ws(a1, a2, a6, a6);
          if (!uint_public_value)
          {
            cczp_negate(a2, v16, &a6[*a2]);
            v20 = &a6[*a2];
            if (a3 == 4)
            {
              v21 = ccn_cmp_public_value(v11, v16, v20) >> 31;
            }

            else
            {
              OUTLINED_FUNCTION_0_14();
              if (v14)
              {
                LOBYTE(v21) = 0;
              }

              else
              {
                LOBYTE(v21) = 1;
              }
            }

            ccn_mux(v11, v21, v20, v16, v20);
LABEL_37:
            v12 = 0;
            goto LABEL_38;
          }
        }
      }

      v12 = uint_public_value;
      goto LABEL_38;
    case 1:
      cczp_bitlen(a2);
      OUTLINED_FUNCTION_1_6();
      if (v14)
      {
        v12 = 4294967126;
        if (*a5 == 4)
        {
          goto LABEL_22;
        }
      }

      else
      {
        return 4294967126;
      }

      break;
    case 2:
      cczp_bitlen(a2);
      OUTLINED_FUNCTION_1_6();
      if (v14)
      {
        v13 = *a5 - 8;
        v12 = 4294967125;
LABEL_17:
        if (v13 < 0xFFFFFFFE)
        {
          return v12;
        }

        goto LABEL_22;
      }

      return 4294967125;
    case 3:
      if (ccec_compressed_x962_export_pub_size(a2) != a4)
      {
        return 4294967135;
      }

      v13 = *a5 - 4;
      v12 = 4294967135;
      goto LABEL_17;
    default:
      return 4294967289;
  }

  return v12;
}

BOOL ccoid_equal(uint64_t a1, uint64_t a2)
{
  v9 = timingsafe_enable_if_supported();
  if (a1 | a2)
  {
    v4 = 0;
    if (a1 && a2)
    {
      v6 = *(a1 + 1);
      if (v6 == *(a2 + 1))
      {
        v7 = ccoid_payload(a1);
        v8 = ccoid_payload(a2);
        v4 = memcmp(v7, v8, v6 + 2) == 0;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 1;
  }

  cc_disable_dit_with_sb(&v9);
  return v4;
}

uint64_t ccn_cmp_asm(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  if (result)
  {
    v3 = result;
    result = 0;
    do
    {
      v5 = *a2++;
      v4 = v5;
      v6 = *a3++;
      v7 = v4 >= v6;
      if (v4 > v6)
      {
        result = 1;
      }

      if (!v7)
      {
        result = -1;
      }
    }

    while (v3-- > 1);
  }

  return result;
}

uint64_t ccec_validate_point_and_projectify_ws(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = cczp_prime(a2);
  if (ccn_cmp_public_value(v8, v9, a4) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *a2;
  v11 = a4 + 8 * *a2;
  v12 = cczp_prime(a2);
  if (ccn_cmp_public_value(v10, v12, v11) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = ccec_projectify_ws(a1, a2);
  if (!result)
  {
    if (ccec_is_point_ws(a1, a2, a3))
    {
      return 0;
    }

    else
    {
      return 4294967289;
    }
  }

  return result;
}

unsigned int (**ccec_projectify_jacobian_ws(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int (**a5)(void, unint64_t, uint64_t)))(void, unint64_t, uint64_t)
{
  v5 = a5;
  v9 = *(a1 + 16);
  if (a5)
  {
    v10 = cczp_bitlen(a2);
    ccn_random_bits(v10 - 1, a3 + 16 * *a2, v5);
    v5 = v11;
    ccn_set_bit(a3 + 16 * *a2, v10 - 2, 1);
    cczp_sqr_ws(a1, a2);
    cczp_mul_ws(a1, a2);
    cczp_mul_ws(a1, a2);
    cczp_mul_ws(a1, a2);
  }

  else
  {
    ccn_seti(*a2, (a3 + 16 * *a2), 1);
    cczp_to_ws(a1, a2);
  }

  cczp_to_ws(a1, a2);
  cczp_to_ws(a1, a2);
  *(a1 + 16) = v9;
  return v5;
}

BOOL ccec_is_point_projective_ws(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  v6 = (*(a1 + 24))(a1, *a2);
  v7 = (*(a1 + 24))(a1, v4);
  (*(a1 + 24))(a1, v4);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  result = ccn_cmp_public_value(v4, v7, v6) == 0;
  *(a1 + 16) = v5;
  return result;
}

_OWORD *ccn_mulmod_p256(void *a1, unint64_t *a2, unint64_t *a3)
{
  v4 = *a2;
  v5 = a2[1];
  v3 = a2 + 2;
  v6 = *v3;
  v7 = v3[1];
  v9 = *a3;
  v10 = a3[1];
  v8 = a3 + 2;
  v11 = *v8;
  v12 = v8[1];
  v13 = v4 * v9;
  v14 = (v5 * v9) >> 64;
  v15 = *v3 * v9;
  v16 = (v6 * v9) >> 64;
  v18 = v9;
  v17 = (__PAIR128__(v5, v4) * v9) >> 64;
  v19 = __CFADD__(__CFADD__((v4 * v9) >> 64, v5 * v9), v14);
  v20 = __CFADD__((v4 * v9) >> 64, v5 * v9) + v14;
  v19 |= __CFADD__(v15, v20);
  v20 += v15;
  v21 = (v7 * v9) >> 64;
  v22 = (v7 * v10) >> 64;
  v24 = v19;
  v19 = __CFADD__(v19, v16);
  v23 = v24 + v16;
  v19 |= __CFADD__(v7 * v9, v23);
  v23 += v7 * v9;
  v26 = v19;
  v19 = __CFADD__(v19, v21);
  v25 = v26 + v21;
  v19 |= __CFADD__(v7 * v10, v25);
  v25 += v7 * v10;
  v27 = v7 * *v8;
  v28 = (v7 * v11) >> 64;
  v30 = v19;
  v19 = __CFADD__(v19, v22);
  v29 = v30 + v22;
  v19 |= __CFADD__(v27, v29);
  v29 += v27;
  v32 = v19;
  v19 = __CFADD__(v19, v28);
  v31 = v32 + v28;
  v19 |= __CFADD__(v7 * v12, v31);
  v31 += v7 * v12;
  v33 = v19 + ((v7 * v12) >> 64);
  v34 = (v4 * v10) >> 64;
  v19 = __CFADD__(v17, v4 * v10);
  v35 = (__PAIR128__(v10, v18) * __PAIR128__(v5, v4)) >> 64;
  v37 = v19;
  v19 = __CFADD__(v19, v20);
  v36 = v37 + v20;
  v19 |= __CFADD__(v34, v36);
  v36 += v34;
  v38 = (v6 * v10) >> 64;
  v40 = v19;
  v19 = __CFADD__(v19, v23);
  v39 = v40 + v23;
  v19 |= __CFADD__(v6 * v10, v39);
  v39 += v6 * v10;
  v42 = v19;
  v19 = __CFADD__(v19, v25);
  v41 = v42 + v25;
  v19 |= __CFADD__(v38, v41);
  v41 += v38;
  v43 = (v6 * v12) >> 64;
  v45 = v19;
  v19 = __CFADD__(v19, v29);
  v44 = v45 + v29;
  v19 |= __CFADD__(v6 * v12, v44);
  v44 += v6 * v12;
  v47 = v19;
  v19 = __CFADD__(v19, v31);
  v46 = v47 + v31;
  v19 |= __CFADD__(v43, v46);
  v46 += v43;
  v48 = v19 + v33;
  v49 = (v5 * v10) >> 64;
  v19 = __CFADD__(v36, v5 * v10);
  v50 = v36 + v5 * v10;
  v52 = v19;
  v19 = __CFADD__(v19, v39);
  v51 = v52 + v39;
  v19 |= __CFADD__(v49, v51);
  v51 += v49;
  v53 = (v6 * v11) >> 64;
  v55 = v19;
  v19 = __CFADD__(v19, v41);
  v54 = v55 + v41;
  v19 |= __CFADD__(v6 * v11, v54);
  v54 += v6 * v11;
  v57 = v19;
  v19 = __CFADD__(v19, v44);
  v56 = v57 + v44;
  v19 |= __CFADD__(v53, v56);
  v56 += v53;
  v58 = v19;
  v59 = (v4 * v11) >> 64;
  v19 = __CFADD__(v50, v4 * v11);
  v60 = v50 + v4 * v11;
  v62 = v19;
  v19 = __CFADD__(v19, v51);
  v61 = v62 + v51;
  v19 |= __CFADD__(v59, v61);
  v61 += v59;
  v63 = (v5 * v12) >> 64;
  v65 = v19;
  v19 = __CFADD__(v19, v54);
  v64 = v65 + v54;
  v19 |= __CFADD__(v5 * v12, v64);
  v64 += v5 * v12;
  v67 = v19;
  v19 = __CFADD__(v19, v56);
  v66 = v67 + v56;
  v19 |= __CFADD__(v63, v66);
  v66 += v63;
  v68 = v19 + v58;
  v69 = (v5 * v11) >> 64;
  v19 = __CFADD__(v61, v5 * v11);
  v70 = v61 + v5 * v11;
  v72 = v19;
  v19 = __CFADD__(v19, v64);
  v71 = v72 + v64;
  v19 |= __CFADD__(v69, v71);
  v71 += v69;
  v73 = v19;
  v74 = (v4 * v12) >> 64;
  v19 = __CFADD__(v70, v4 * v12);
  v75 = v70 + v4 * v12;
  v77 = v19;
  v19 = __CFADD__(v19, v71);
  v76 = v77 + v71;
  v19 |= __CFADD__(v74, v76);
  v76 += v74;
  v79 = v19;
  v19 = __CFADD__(v19, v66);
  v78 = v79 + v66;
  v19 |= __CFADD__(v73, v78);
  v78 += v73;
  v81 = v19;
  v19 = __CFADD__(v19, v46);
  v80 = v81 + v46;
  v19 |= __CFADD__(v68, v80);
  v80 += v68;
  v82 = v19 + v48;
  v19 = __CFADD__(v35, v13 << 32);
  v83 = v35 + (v13 << 32);
  v85 = v19;
  v19 = __CFADD__(v19, v60);
  v84 = v85 + v60;
  v19 |= __CFADD__(HIDWORD(v13), v84);
  v84 += HIDWORD(v13);
  v87 = v19;
  v19 = __CFADD__(v19, v75);
  v86 = v87 + v75;
  v19 |= __CFADD__(0xFFFFFFFF00000001 * v13, v86);
  v86 += 0xFFFFFFFF00000001 * v13;
  v88 = v19 + ((v13 * 0xFFFFFFFF00000001) >> 64);
  v19 = __CFADD__(v84, v83 << 32);
  v89 = v84 + (v83 << 32);
  v91 = v19;
  v19 = __CFADD__(v19, v86);
  v90 = v91 + v86;
  v19 |= __CFADD__(HIDWORD(v83), v90);
  v90 += HIDWORD(v83);
  v93 = v19;
  v19 = __CFADD__(v19, v76);
  v92 = v93 + v76;
  v19 |= __CFADD__(0xFFFFFFFF00000001 * v83, v92);
  v92 += 0xFFFFFFFF00000001 * v83;
  v94 = v19 + ((v83 * 0xFFFFFFFF00000001) >> 64);
  v19 = __CFADD__(v90, v89 << 32);
  v95 = v90 + (v89 << 32);
  v97 = v19;
  v19 = __CFADD__(v19, v92);
  v96 = v97 + v92;
  v19 |= __CFADD__(HIDWORD(v89), v96);
  v96 += HIDWORD(v89);
  v99 = v19;
  v19 = __CFADD__(v19, v78);
  v98 = v99 + v78;
  v19 |= __CFADD__(0xFFFFFFFF00000001 * v89, v98);
  v98 += 0xFFFFFFFF00000001 * v89;
  v100 = v19 + ((v89 * 0xFFFFFFFF00000001) >> 64);
  v19 = __CFADD__(v96, v95 << 32);
  v101 = v96 + (v95 << 32);
  v103 = v19;
  v19 = __CFADD__(v19, v98);
  v102 = v103 + v98;
  v19 |= __CFADD__(HIDWORD(v95), v102);
  v102 += HIDWORD(v95);
  v105 = v19;
  v19 = __CFADD__(v19, v80);
  v104 = v105 + v80;
  v19 |= __CFADD__(0xFFFFFFFF00000001 * v95, v104);
  v104 += 0xFFFFFFFF00000001 * v95;
  v106 = v19 + ((v95 * 0xFFFFFFFF00000001) >> 64);
  v19 = __CFADD__(v88, v101);
  v107 = v88 + v101;
  v109 = v19;
  v19 = __CFADD__(v19, v94);
  v108 = v109 + v94;
  v19 |= __CFADD__(v102, v108);
  v108 += v102;
  v111 = v19;
  v19 = __CFADD__(v19, v100);
  v110 = v111 + v100;
  v19 |= __CFADD__(v104, v110);
  v110 += v104;
  v113 = v19;
  v19 = __CFADD__(v19, v106);
  v112 = v113 + v106;
  v19 |= __CFADD__(v82, v112);
  v112 += v82;
  v114 = v19;
  v19 = __CFADD__(v107++, 1);
  LOBYTE(v113) = v19;
  v19 = __CFSUB__(v108, 0xFFFFFFFFLL, v19);
  v115 = v108 - (!v113 + 0xFFFFFFFFLL);
  LOBYTE(v113) = v19;
  v19 = v110 >= !v19;
  v116 = v110 - !v113;
  LOBYTE(v113) = v19;
  v19 = __CFSUB__(v112, 0xFFFFFFFF00000001, v19);
  v117 = v114 - !v19;
  v118 = v114 - !v19;
  v19 = __CFADD__(__CFADD__(v107, v117), v115);
  v119 = __CFADD__(v107, v117) + v115;
  *a1 = v107 + v117;
  a1[1] = v118 + v119;
  result = a1 + 2;
  *result = __PAIR128__(v117 & 0xFFFFFFFF00000001, v19 | __CFADD__(v118, v119)) + __PAIR128__(v112 - (!v113 - 0xFFFFFFFF), v116);
  return result;
}

uint64_t cczp_sub_default_ws(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v10 = *(a1 + 16);
  v11 = cczp_n(a2);
  v12 = ccn_sub_ws(a1, v11, a3, a4, a5);
  v13 = cczp_prime(a2);
  result = ccn_cond_add(v11, v12, a3, a3, v13);
  *(a1 + 16) = v10;
  return result;
}

uint64_t ccn_mux(uint64_t result, char a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = state ^ (state << 13) ^ ((state ^ (state << 13)) >> 7);
  v6 = v5 ^ (v5 << 17);
  state = v6;
  for (i = __ROR8__(0x5555555555555555, a2 | (2 * v6)); result; --result)
  {
    v9 = *a4++;
    v8 = v9;
    v10 = *a5++;
    *a3 = v10 ^ v6;
    *a3++ = (v10 ^ v8) & 0x5555555555555555 ^ v10 ^ v6 ^ (v10 ^ v8) & i ^ v6;
  }

  return result;
}

uint64_t cczp_add_default_ws(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = *(a1 + 16);
  v11 = cczp_n(a2);
  v12 = (*(a1 + 24))(a1, v11);
  LOBYTE(a5) = ccn_add_ws(a1, v11, a3, a4, a5);
  v13 = cczp_prime(a2);
  v14 = ccn_sub_ws(a1, v11, v12, a3, v13);
  result = ccn_mux(v11, !v14 | a5, a3, v12, a3);
  *(a1 + 16) = v10;
  return result;
}

BOOL ccn_add_asm(_BOOL8 result, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = 0;
  if (result)
  {
    if (result)
    {
      v6 = *a3++;
      v5 = v6;
      v7 = *a4++;
      v4 = __CFADD__(v5, v7);
      *a2++ = v5 + v7;
    }

    if (result & 2)
    {
      v8 = *a3;
      v9 = a3[1];
      a3 += 2;
      v10 = *a4;
      v11 = a4[1];
      a4 += 2;
      v13 = v4 + v8;
      v4 = __CFADD__(v4, v8) | __CFADD__(v10, v13);
      v12 = v10 + v13;
      v14 = v4 + v9;
      v4 = __CFADD__(v4, v9) | __CFADD__(v11, v14);
      *a2 = v12;
      a2[1] = v11 + v14;
      a2 += 2;
    }

    v15 = result & 0xFFFFFFFC;
    if (v15)
    {
      v16 = v15 - 4;
      v18 = *a3;
      v19 = a3[1];
      v17 = a3 + 2;
      v21 = *a4;
      v22 = a4[1];
      v20 = a4 + 2;
      v24 = *v17;
      v25 = v17[1];
      v23 = v17 + 2;
      v27 = *v20;
      v28 = v20[1];
      for (i = v20 + 2; v16; i = v38 + 2)
      {
        v30 = v4 + v18;
        v4 = __CFADD__(v4, v18) | __CFADD__(v21, v30);
        v29 = v21 + v30;
        v32 = v4 + v19;
        v4 = __CFADD__(v4, v19) | __CFADD__(v22, v32);
        v31 = v22 + v32;
        v18 = *v23;
        v19 = v23[1];
        v33 = v23 + 2;
        v35 = v4 + v24;
        v4 = __CFADD__(v4, v24) | __CFADD__(v27, v35);
        v34 = v27 + v35;
        *a2 = v29;
        a2[1] = v31;
        v36 = a2 + 2;
        v37 = v4 + v25;
        v4 = __CFADD__(v4, v25) | __CFADD__(v28, v37);
        v21 = *i;
        v22 = i[1];
        v38 = i + 2;
        *v36 = v34;
        v36[1] = v28 + v37;
        a2 = v36 + 2;
        v16 -= 4;
        v24 = *v33;
        v25 = v33[1];
        v23 = v33 + 2;
        v27 = *v38;
        v28 = v38[1];
      }

      v40 = v4 + v18;
      v4 = __CFADD__(v4, v18) | __CFADD__(v21, v40);
      v39 = v21 + v40;
      v42 = v4 + v19;
      v4 = __CFADD__(v4, v19) | __CFADD__(v22, v42);
      v41 = v22 + v42;
      v44 = v4 + v24;
      v4 = __CFADD__(v4, v24) | __CFADD__(v27, v44);
      v43 = v27 + v44;
      v45 = v4 + v25;
      v4 = __CFADD__(v4, v25) | __CFADD__(v28, v45);
      *a2 = v39;
      a2[1] = v41;
      v46 = a2 + 2;
      *v46 = v43;
      v46[1] = v28 + v45;
    }

    return v4;
  }

  return result;
}

void *cc_malloc_clear(size_t a1)
{
  v2 = malloc_type_malloc(a1, 0x3AECAEADuLL);
  v3 = v2;
  if (v2)
  {
    bzero(v2, a1);
  }

  return v3;
}

uint64_t cc_ws_alloc(void *a1, uint64_t a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1 + 8 * v2;
  v5 = v2 + a2;
  a1[2] = v5;
  cc_try_abort_if (v5 > v3);
  return v4;
}

uint64_t cc_try_abort_if (uint64_t result)
{
  if (result)
  {
    cc_abort();
  }

  return result;
}

uint64_t ccn_read_uint_public_value(unint64_t a1, void *a2, unint64_t a3, unsigned __int8 *a4)
{
  v4 = 8 * a1;
  if (a3 > 8 * a1)
  {
    v5 = 0;
    v6 = a3 - v4;
    v7 = a4;
    do
    {
      v8 = *v7++;
      v5 |= v8;
      --a3;
    }

    while (a3 > v4);
    if (v5)
    {
      return 4294967289;
    }

    a4 += v6;
    a3 = 8 * a1;
  }

  v10 = &a4[a3];
  v11 = a3 - 8;
  if (a3 < 8)
  {
    v12 = 0;
    if (!a3)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v12 = (v11 >> 3) + 1;
  a3 = v11 - 8 * (v11 >> 3);
  v13 = a2;
  v14 = v12;
  do
  {
    v15 = *(v10 - 1);
    v10 -= 8;
    *v13++ = bswap64(v15);
    --v14;
  }

  while (v14);
  if (a3)
  {
LABEL_13:
    v16 = 0;
    v17 = -a3;
    do
    {
      v16 = v10[v17] | (v16 << 8);
    }

    while (!__CFADD__(v17++, 1));
    a2[v12++] = v16;
  }

LABEL_17:
  if (v12 < a1)
  {
    bzero(&a2[v12], v4 - 8 * v12);
  }

  return 0;
}

void cc_ws_free(uint64_t a1)
{
  cc_try_abort_if (*(a1 + 16) > *(a1 + 8));
  cc_clear(8 * *(a1 + 8), *a1);
  free(*a1);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

BOOL ccn_sub_asm(_BOOL8 result, void *a2, uint64_t *a3, unint64_t *a4)
{
  v4 = 1;
  if (result)
  {
    if (result)
    {
      v6 = *a3++;
      v5 = v6;
      v7 = *a4++;
      v4 = v5 >= v7;
      *a2++ = v5 - v7;
    }

    if (result & 2)
    {
      v8 = *a3;
      v9 = a3[1];
      a3 += 2;
      v10 = *a4;
      v11 = a4[1];
      a4 += 2;
      v13 = v4;
      v4 = __CFSUB__(v8, v10, v4);
      v12 = v8 - (v10 + !v13);
      v14 = v4;
      v4 = __CFSUB__(v9, v11, v4);
      *a2 = v12;
      a2[1] = v9 - (v11 + !v14);
      a2 += 2;
    }

    v15 = result & 0xFFFFFFFC;
    if (v15)
    {
      v16 = v15 - 4;
      v18 = *a3;
      v19 = a3[1];
      v17 = a3 + 2;
      v21 = *a4;
      v22 = a4[1];
      v20 = (a4 + 2);
      v24 = *v17;
      v25 = v17[1];
      v23 = v17 + 2;
      v27 = *v20;
      v28 = v20[1];
      for (i = v20 + 2; v16; i = v38 + 2)
      {
        v30 = v4;
        v4 = __CFSUB__(v18, v21, v4);
        v29 = v18 - (v21 + !v30);
        v32 = v4;
        v4 = __CFSUB__(v19, v22, v4);
        v31 = v19 - (v22 + !v32);
        v18 = *v23;
        v19 = v23[1];
        v33 = v23 + 2;
        v35 = v4;
        v4 = __CFSUB__(v24, v27, v4);
        v34 = v24 - (v27 + !v35);
        *a2 = v29;
        a2[1] = v31;
        v36 = a2 + 2;
        v37 = v4;
        v4 = __CFSUB__(v25, v28, v4);
        v21 = *i;
        v22 = i[1];
        v38 = i + 2;
        *v36 = v34;
        v36[1] = v25 - (v28 + !v37);
        a2 = v36 + 2;
        v16 -= 4;
        v24 = *v33;
        v25 = v33[1];
        v23 = v33 + 2;
        v27 = *v38;
        v28 = v38[1];
      }

      v40 = v4;
      v4 = __CFSUB__(v18, v21, v4);
      v39 = v18 - (v21 + !v40);
      v42 = v4;
      v4 = __CFSUB__(v19, v22, v4);
      v41 = v19 - (v22 + !v42);
      v44 = v4;
      v4 = __CFSUB__(v24, v27, v4);
      v43 = v24 - (v27 + !v44);
      v45 = v4;
      v4 = __CFSUB__(v25, v28, v4);
      *a2 = v39;
      a2[1] = v41;
      v46 = a2 + 2;
      *v46 = v43;
      v46[1] = v25 - (v28 + !v45);
    }

    return !v4;
  }

  return result;
}