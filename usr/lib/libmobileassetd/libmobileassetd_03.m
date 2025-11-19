unint64_t ccn_gcd_update_ws(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v18 = *(a1 + 16);
  v13 = (*(a1 + 24))(a1, a2 + 1);
  v14 = (*(a1 + 24))(a1, a2 + 1);
  if (a2)
  {
    ccn_set(a2, v13, a4);
  }

  ccn_zero(1, v13 + 8 * a2);
  ccn_cond_neg(a2 + 1, a5 < 0, v13->i64, v13->i64);
  if (a2)
  {
    ccn_set(a2, v14, a6);
  }

  ccn_zero(1, &v14[8 * a2]);
  ccn_cond_neg(a2 + 1, a7 < 0, v14, v14);
  ccn_mul1(a2 + 1, v13, v13, ((a5 >> 63) - 1) & a5 | -(a5 >> 63) & -a5);
  ccn_addmul1(a2 + 1, v13, v14, ((a7 >> 63) - 1) & a7 | -(a7 >> 63) & -a7);
  v15 = v13->i64[a2] >> 63;
  ccn_cond_neg(a2 + 1, v13->i64[a2] < 0, v13->i64, v13->i64);
  ccn_shift_right(a2 + 1, v13, v13, 31);
  ccn_set(a2, a3, v13);
  *(a1 + 16) = v18;
  return v15;
}

uint64_t ccec_raw_import_priv_only(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v11 = timingsafe_enable_if_supported();
  if (a2 == (cczp_bitlen(&a1[5 * *a1 + 4]) + 7) >> 3)
  {
    v8 = *a1;
    *a4 = a1;
    memset(a4 + 2, 255, 8 * v8);
    memset(&a4[*a1 + 2], 255, 8 * v8);
    uint_internal = ccn_read_uint_internal(v8, &a4[3 * **a4 + 2], a2, a3);
  }

  else
  {
    uint_internal = 0xFFFFFFFFLL;
  }

  cc_disable_dit_with_sb(&v11);
  return uint_internal;
}

uint64_t ccn_divmod_ws(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v12 = ccn_n(a6, a8);
  v13 = a2 - v12;
  v45 = *(a1 + 16);
  v14 = (*(a1 + 24))(a1, v12 + 1);
  v15 = (*(a1 + 24))(a1, v12 + 1);
  v52 = a1;
  v16 = (*(a1 + 24))(a1, v12 + 1);
  v14[v12] = 0;
  v51 = v12 - 1;
  v17 = __clz(*(a8 + 8 * (v12 - 1)));
  ccn_shift_left(v12, v14, a8, v17, v18);
  v53 = v17;
  if (v12)
  {
    ccn_set(v12, v15, (a3 + 8 * v13));
  }

  v47 = -(v17 != 0);
  v48 = -v17 & 0x3F;
  ccn_zero(1, v15 + 8 * v12);
  ccn_shift_left(v12 + 1, v15, v15, v17, v19);
  v20 = 0;
  v21 = 0;
  v22 = v14[v51];
  v23 = v22 != 0x8000000000000000;
  v24 = -v22;
  v26 = -__PAIR128__(v25, v22) >> 64;
  v27 = 65;
  do
  {
    v28 = ((((__PAIR128__(v26, v24) - __PAIR128__(v22, v21)) >> 64) ^ v26 | v22 ^ v26) ^ v26) >> 63;
    v29 = v28-- != 0;
    v26 = (__PAIR128__(v26, v24) - __PAIR128__(v29 ? 0 : v22, v28 & v21)) >> 64;
    v24 -= v28 & v21;
    v20 = v28 & 1 | (2 * v20);
    *(&v30 + 1) = v22;
    *&v30 = v21;
    v21 = v30 >> 1;
    v22 >>= 1;
    --v27;
  }

  while (v27);
  v50 = v23 ? v20 + 2 : -1;
  v31 = (a3 - 8 * v12 + 8 * a2);
  v32 = a2 - v12;
  do
  {
    v33 = v13;
    v34 = *v31 << v53;
    v15->i64[0] = v34;
    if (v32)
    {
      v15->i64[0] = ((*(v31 - 1) & v47) >> v48) | v34;
    }

    v35 = v15->i64[v12];
    v36 = v15->i64[v51];
    v56 = v14[v51];
    v37 = v35 + ((v35 * v50) >> 64) - ((((v36 - v56) ^ v36 | v56 ^ v36) ^ v36) >> 63) + 2;
    v55 = v37 | -((((((v35 * v50) >> 64) - ((((v36 - v56) ^ v36 | v56 ^ v36) ^ v36) >> 63) + 2) ^ v37 | v37 ^ v35) ^ v37) >> 63);
    v58[0] = 0;
    v58[1] = 0;
    ccn_mul(1, v58, &v55, &v56);
    v57[0] = v36;
    v57[1] = v35;
    v38 = ccn_sub_ws(0, 2, v58, v57, v58);
    v55 -= 2 * v38;
    v39 = ccn_add1_ws(0, 2, v58, v58, v56);
    v40 = v55 + v39;
    v16[v12] = ccn_mul1(v12, v16, v14, v55 + v39);
    v41 = ccn_sub_ws(v52, v12 + 1, v15, v15->i64, v16);
    v42 = v41 - ccn_cond_add(v12 + 1, v41, v15->i64, v15->i64, v14);
    result = ccn_cond_add(v12 + 1, v42, v15->i64, v15->i64, v14);
    if (a5 && v32 < a4)
    {
      *(a5 + 8 * v32) = v40 - (v41 + v42);
    }

    if (v32)
    {
      result = memmove(&v15->u64[1], v15, 8 * v12);
    }

    --v32;
    --v31;
    v13 = v33;
  }

  while (v32 <= v33);
  if (a5 && a4 > v33 + 1)
  {
    result = cc_clear(8 * (a4 - (v33 + 1)), (a5 + 8 * (v33 + 1)));
  }

  if (a7)
  {
    ccn_shift_right(v12, v15, v15, v53);
    if (v12)
    {
      ccn_set(v12, a7, v15);
    }

    result = ccn_zero(a6 - v12, &a7[8 * v12]);
  }

  *(v52 + 16) = v45;
  return result;
}

uint64_t cccbc_set_iv_internal(uint64_t a1, void *__dst, void *__src)
{
  if (__src)
  {
    memcpy(__dst, __src, *(a1 + 8));
  }

  else
  {
    cc_clear(*(a1 + 8), __dst);
  }

  return 0;
}

uint64_t cccbc_one_shot_explicit_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8, uint64_t a9)
{
  if (*(a1 + 8) != a4 || a3 && a3 != a4)
  {
    return 4294967289;
  }

  v16 = (*a1 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v22 - v16;
  bzero(&v22 - v16, v16);
  v18 = (*(a1 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v22 - v18;
  bzero(&v22 - v18, v18);
  v20 = (*(a1 + 16))(a1, v17, a2, a6);
  if (v20)
  {
    return v20;
  }

  if (a7)
  {
    memcpy(v19, a7, *(a1 + 8));
  }

  else
  {
    cc_clear(*(a1 + 8), v19);
  }

  v15 = (*(a1 + 24))(v17, v19, a5, a8, a9);
  cc_clear(*a1, v17);
  return v15;
}

uint64_t ccmode_ctr_setctr(int a1, void *a2, void *__src)
{
  v4 = *(*a2 + 8);
  a2[1] = v4;
  memcpy(a2 + ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, __src, v4);
  return 0;
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

uint64_t ccrng_process_atfork_prepare(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 52);
  ccrng_schedule_atomic_flag_set(&a1[42]);
  return 0;
}

uint64_t ccn_shift_right(uint64_t result, int8x16_t *a2, int8x16_t *a3, uint64_t a4)
{
  if (result)
  {
    return ccn_shift_right_asm(result, a2, a3, a4);
  }

  return result;
}

uint64_t ccn_shift_right_multi(uint64_t a1, int8x16_t *a2, int8x16_t *a3, unint64_t a4)
{
  result = ccn_shift_right(a1, a2, a3, a4 & 0x3F);
  if (a1)
  {
    v8 = 0;
    do
    {
      v9 = 0;
      v10 = a4 >> 6;
      v11 = v8;
      do
      {
        v13 = v10-- != 0;
        v9 |= v13 ? 0 : a2->i64[v11++];
      }

      while (a1 != v11);
      a2->i64[v8++] = v9;
    }

    while (v8 != a1);
  }

  return result;
}

BOOL ccn_sub(_BOOL8 a1, void *a2, uint64_t *a3, unint64_t *a4)
{
  v12 = timingsafe_enable_if_supported();
  v10[0] = xmmword_4B6C88;
  v10[1] = *algn_4B6C98;
  v11 = cc_ws_free_null;
  v8 = ccn_sub_asm(a1, a2, a3, a4);
  cc_ws_free_null(v10);
  cc_disable_dit_with_sb(&v12);
  return v8;
}

unint64_t ccn_sub1(uint64_t a1, void *a2, unint64_t *a3, unint64_t a4)
{
  for (; a1; --a1)
  {
    v4 = *a3++;
    v5 = v4 - a4;
    *a2++ = v5;
    a4 = *(&v5 + 1) >> 63;
  }

  return a4;
}

unint64_t ccn_write_int_size_public_value(uint64_t a1, uint64_t *a2)
{
  v2 = ccn_bitlen_public_value(a1, a2);
  if ((v2 & 7) != 0)
  {
    return (v2 + 7) >> 3;
  }

  else
  {
    return ((v2 + 7) >> 3) + 1;
  }
}

unint64_t ccn_write_int_public_value(unint64_t a1, uint64_t *a2, unint64_t a3, _BYTE *a4)
{
  if ((ccn_bitlen_public_value(a1, a2) & 7) == 0)
  {
    *a4++ = 0;
    --a3;
  }

  return ccn_write_uint_public_value(a1, a2, a3, a4);
}

uint64_t ccn_write_uint_padded_ct_internal(uint64_t a1, uint64_t *a2, unint64_t a3, char *__s)
{
  if (a3 > 0x7FFFFFFE)
  {
    return 4294967289;
  }

  v6 = 8 * a1;
  if ((8 * a1) > 0x7FFFFFFE)
  {
    return 4294967289;
  }

  v7 = __s;
  v8 = a3;
  v10 = a3 - v6;
  if (a3 <= v6)
  {
    LODWORD(v10) = 0;
  }

  else
  {
    cc_clear(a3 - v6, __s);
    v7 += v10;
    v8 = v6;
  }

  v11 = ccn_bitlen_public_value(a1, a2);
  if (v8 < (v11 + 7) >> 3)
  {
    return 4294967289;
  }

  result = v10 + v8 - ((v11 + 7) >> 3);
  v12 = &v7[v8];
  v13 = v8 - 8;
  if (v8 < 8)
  {
    v14 = 0;
    if (!v8)
    {
      return result;
    }

    goto LABEL_16;
  }

  v14 = (v13 >> 3) + 1;
  v8 = v13 - 8 * (v13 >> 3);
  v15 = a2;
  v16 = v14;
  do
  {
    v17 = *v15++;
    *(v12 - 1) = bswap64(v17);
    v12 -= 8;
    --v16;
  }

  while (v16);
  if (v8)
  {
LABEL_16:
    v18 = a2[v14];
    v19 = v12 - 1;
    do
    {
      *v19-- = v18;
      v18 >>= 8;
      --v8;
    }

    while (v8);
  }

  return result;
}

unint64_t ccn_write_uint_public_value(unint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  result = ccn_bitlen_public_value(a1, a2);
  v9 = (result + 7) >> 3;
  if (v9 >= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = (result + 7) >> 3;
  }

  v11 = a4 + v10;
  v12 = v9 - v10;
  v13 = v12 >> 3;
  v14 = v12 & 7;
  v15 = a2[v12 >> 3] >> (8 * (v12 & 7u));
  if (v10 >= 8)
  {
    do
    {
      v16 = v10 - 8;
      v17 = v14 - 8;
      do
      {
        *--v11 = v15;
        v15 >>= 8;
      }

      while (!__CFADD__(v17++, 1));
      if (v13 + 1 < a1)
      {
        v15 = a2[++v13];
      }

      v10 = v16 + v14;
      v14 = 0;
    }

    while (v10 > 7);
  }

  if (v10)
  {
    v19 = (v11 - 1);
    do
    {
      *v19-- = v15;
      v15 >>= 8;
      --v10;
    }

    while (v10);
  }

  return result;
}

BOOL ccn_add1_asm(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  if (!a1)
  {
    return a4;
  }

  v5 = *a3;
  v4 = a3 + 1;
  v6 = __CFADD__(v5, a4);
  *a2 = v5 + a4;
  for (i = a2 + 1; --a1; ++i)
  {
    v8 = *v4++;
    v9 = v6;
    v6 = __CFADD__(v6, v8);
    *i = v9 + v8;
  }

  return v6;
}

uint64_t ccn_cond_neg(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  result = ccn_mux_next_mask();
  v9 = __ROR8__(0x5555555555555555, a2 | (2 * result));
  if (a1)
  {
    v10 = 1;
    do
    {
      v12 = *a4++;
      v11 = v12;
      v13 = v10 + ~v12;
      v10 = __CFADD__(v10, ~v12);
      v14 = v11 ^ v13;
      v15 = v11 ^ result;
      *a3 = v15;
      *a3++ = v14 & v9 ^ v14 & 0x5555555555555555 ^ v15 ^ result;
      --a1;
    }

    while (a1);
  }

  return result;
}

uint64_t ccec_compressed_x962_export_pub(uint64_t *a1, char *a2)
{
  v3 = a1 + 2;
  v4 = *a1;
  v6 = ((cczp_bitlen(*a1) + 7) >> 3) + 1;
  return ccec_export_affine_point_public_value(v4, 3, v3, &v6, a2);
}

BOOL ccec_validate_pub(uint64_t **a1)
{
  v19 = timingsafe_enable_if_supported();
  v2 = *a1;
  v3 = **a1;
  v4 = sizeof_cc_unit();
  v5 = 5 * v3 + (v4 + 7) / v4 + 3;
  if (v5 <= 7 * v3)
  {
    v5 = 7 * v3;
  }

  v6 = cc_malloc_clear(8 * (v5 + 3 * v3));
  v15[0] = v6;
  v7 = *v2;
  v8 = sizeof_cc_unit();
  v9 = 5 * v7 + (v8 + 7) / v8 + 3;
  if (v9 <= 7 * v7)
  {
    v9 = 7 * v7;
  }

  v15[1] = v9 + 3 * v7;
  v16 = 0;
  v17 = cc_ws_alloc;
  v18 = cc_ws_free;
  if (v6)
  {
    v10 = *a1;
    v11 = cc_ws_alloc(v15, 3 * **a1);
    v12 = ccec_validate_point_and_projectify_ws(v15, v10, v11, (a1 + 2));
    v16 = 0;
    v18(v15);
    v13 = v12 == 0;
  }

  else
  {
    v13 = 0;
  }

  cc_disable_dit_with_sb(&v19);
  return v13;
}

void *ccsha3_512_di()
{
  if ((MEMORY[0xFFFFFC010] & 0x100000000) != 0)
  {
    return &ccsha3_512_vng_hwassist_di;
  }

  else
  {
    return &ccsha3_512_vng_di;
  }
}

uint64_t ccder_encode_eckey_internal(uint64_t a1, uint64_t a2, const void *a3, unint64_t a4, const void *a5, uint64_t a6, uint64_t a7)
{
  if (!a7)
  {
    return 0;
  }

  v8 = a6;
  v9 = a7;
  if (ccder_blob_encode_eckey_internal(&v8, a1, a2, a3, a4, a5))
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

unsigned __int8 *ccder_decode_eckey_internal(unint64_t *a1, void *a2, void *a3, unsigned __int8 **a4, unint64_t *a5, void *a6, unsigned __int8 *a7, unsigned __int8 *a8)
{
  v10[0] = a7;
  v10[1] = a8;
  v9 = 0;
  if (ccder_blob_decode_eckey_internal(v10, a1, a2, a3, a4, &v9, a6, a5))
  {
    return v10[0];
  }

  else
  {
    return 0;
  }
}

unint64_t ccn_subn(uint64_t a1, void *a2, uint64_t *a3, _BOOL8 a4, unint64_t *a5)
{
  v5 = a1 - a4;
  v6 = &a2[a4];
  v7 = &a3[a4];
  v8 = ccn_sub_ws(0, a4, a2, a3, a5);

  return ccn_sub1(v5, v6, v7, v8);
}

uint64_t cc_fault_canary_set(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  for (i = 0; i != 16; ++i)
  {
    *(result + i) = *(a5 + i % a3) ^ *(a4 + i % a3) ^ *(a2 + i);
  }

  if (a3 >= 0x11)
  {
    for (j = 16; j != a3; ++j)
    {
      *(result + (j & 0xF)) ^= *(a5 + j) ^ *(a4 + j);
    }
  }

  return result;
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
    _Q5 = vaddq_s32(_Q1, xmmword_2623C0);
    _Q19 = _Q17;
    _Q6 = vaddq_s32(_Q2, xmmword_2623D0);
    _Q7 = vaddq_s32(_Q3, xmmword_2623E0);
    v19 = &xmmword_2623F0;
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

uint64_t *AccelerateCrypto_SHA512_compress(uint64_t *result, uint64_t a2, int8x16_t *a3)
{
  if (a2)
  {
    v4 = *a3;
    v3 = a3 + 8;
    v5 = vrev64q_s8(v4);
    v6 = vrev64q_s8(v3[-7]);
    v7 = vrev64q_s8(v3[-6]);
    v8 = vrev64q_s8(v3[-5]);
    v9 = vrev64q_s8(v3[-4]);
    v10 = vrev64q_s8(v3[-3]);
    v11 = vrev64q_s8(v3[-2]);
    v12 = vrev64q_s8(v3[-1]);
    i8 = &xmmword_33D510;
    v240 = vaddq_s64(sha512_K, v5);
    v241 = vaddq_s64(unk_33D4A0, v6);
    v242 = vaddq_s64(unk_33D4B0, v7);
    v243 = vaddq_s64(unk_33D4C0, v8);
    v244 = vaddq_s64(xmmword_33D4D0, v9);
    v245 = vaddq_s64(unk_33D4E0, v10);
    v246 = vaddq_s64(unk_33D4F0, v11);
    v247 = vaddq_s64(unk_33D500, v12);
    while (1)
    {
      v14 = *result;
      v15 = result[1];
      v16 = result[2];
      v17 = result[3];
      v18 = result[4];
      v19 = result[5];
      v20 = result[6];
      v21 = result[7];
      v22 = 4;
      do
      {
        v23 = vextq_s8(v5, v6, 8uLL);
        v24 = vshrq_n_u64(v12, 0x13uLL);
        v25 = vshlq_n_s64(v12, 3uLL);
        v26 = v21 + v240.i64[0] + (__ROR8__(v18, 14) ^ __ROR8__(v18, 18) ^ __ROR8__(v18, 41)) + ((v19 ^ v20) & v18 ^ v20);
        v27 = vshrq_n_u64(v23, 1uLL);
        v28 = vshlq_n_s64(v23, 0x38uLL);
        v29 = v17 + v26;
        v30 = v26 + (__ROR8__(v14, 28) ^ __ROR8__(v14, 34) ^ __ROR8__(v14, 39)) + ((v15 ^ v16) & v14 ^ v15 & v16);
        v31 = veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v12, 6uLL), v24), v25), vshrq_n_u64(v24, 0x2AuLL));
        v32 = *i8;
        v33 = (i8 + 1);
        v5 = vaddq_s64(vaddq_s64(vaddq_s64(v5, vextq_s8(v9, v10, 8uLL)), veorq_s8(v31, vshlq_n_s64(v25, 0x2AuLL))), veorq_s8(veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v23, 7uLL), v27), v28), vshrq_n_u64(v27, 7uLL)), vshlq_n_s64(v28, 7uLL)));
        v34 = v20 + v240.i64[1] + (__ROR8__(v29, 14) ^ __ROR8__(v29, 18) ^ __ROR8__(v29, 41)) + ((v18 ^ v19) & v29 ^ v19);
        v35 = v16 + v34;
        v36 = v34 + (__ROR8__(v30, 28) ^ __ROR8__(v30, 34) ^ __ROR8__(v30, 39)) + ((v14 ^ v15) & v30 ^ v14 & v15);
        v240 = vaddq_s64(v32, v5);
        v37 = vextq_s8(v6, v7, 8uLL);
        v38 = vshrq_n_u64(v5, 0x13uLL);
        v39 = vshlq_n_s64(v5, 3uLL);
        v40 = v19 + v241.i64[0] + (__ROR8__(v35, 14) ^ __ROR8__(v35, 18) ^ __ROR8__(v35, 41)) + ((v29 ^ v18) & v35 ^ v18);
        v41 = vshrq_n_u64(v37, 1uLL);
        v42 = vshlq_n_s64(v37, 0x38uLL);
        v43 = v15 + v40;
        v44 = v40 + (__ROR8__(v36, 28) ^ __ROR8__(v36, 34) ^ __ROR8__(v36, 39)) + ((v30 ^ v14) & v36 ^ v30 & v14);
        v45 = veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v5, 6uLL), v38), v39), vshrq_n_u64(v38, 0x2AuLL));
        v46 = *v33++;
        v6 = vaddq_s64(vaddq_s64(vaddq_s64(v6, vextq_s8(v10, v11, 8uLL)), veorq_s8(v45, vshlq_n_s64(v39, 0x2AuLL))), veorq_s8(veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v37, 7uLL), v41), v42), vshrq_n_u64(v41, 7uLL)), vshlq_n_s64(v42, 7uLL)));
        v47 = v18 + v241.i64[1] + (__ROR8__(v43, 14) ^ __ROR8__(v43, 18) ^ __ROR8__(v43, 41)) + ((v35 ^ v29) & v43 ^ v29);
        v48 = v14 + v47;
        v49 = v47 + (__ROR8__(v44, 28) ^ __ROR8__(v44, 34) ^ __ROR8__(v44, 39)) + ((v36 ^ v30) & v44 ^ v36 & v30);
        v241 = vaddq_s64(v46, v6);
        v50 = vextq_s8(v7, v8, 8uLL);
        v51 = vshrq_n_u64(v6, 0x13uLL);
        v52 = vshlq_n_s64(v6, 3uLL);
        v53 = v29 + v242.i64[0] + (__ROR8__(v48, 14) ^ __ROR8__(v48, 18) ^ __ROR8__(v48, 41)) + ((v43 ^ v35) & v48 ^ v35);
        v54 = vshrq_n_u64(v50, 1uLL);
        v55 = vshlq_n_s64(v50, 0x38uLL);
        v56 = v30 + v53;
        v57 = v53 + (__ROR8__(v49, 28) ^ __ROR8__(v49, 34) ^ __ROR8__(v49, 39)) + ((v44 ^ v36) & v49 ^ v44 & v36);
        v58 = veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v6, 6uLL), v51), v52), vshrq_n_u64(v51, 0x2AuLL));
        v59 = *v33++;
        v7 = vaddq_s64(vaddq_s64(vaddq_s64(v7, vextq_s8(v11, v12, 8uLL)), veorq_s8(v58, vshlq_n_s64(v52, 0x2AuLL))), veorq_s8(veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v50, 7uLL), v54), v55), vshrq_n_u64(v54, 7uLL)), vshlq_n_s64(v55, 7uLL)));
        v60 = v35 + v242.i64[1] + (__ROR8__(v56, 14) ^ __ROR8__(v56, 18) ^ __ROR8__(v56, 41)) + ((v48 ^ v43) & v56 ^ v43);
        v61 = v36 + v60;
        v62 = v60 + (__ROR8__(v57, 28) ^ __ROR8__(v57, 34) ^ __ROR8__(v57, 39)) + ((v49 ^ v44) & v57 ^ v49 & v44);
        v242 = vaddq_s64(v59, v7);
        v63 = vextq_s8(v8, v9, 8uLL);
        v64 = vshrq_n_u64(v7, 0x13uLL);
        v65 = vshlq_n_s64(v7, 3uLL);
        v66 = v43 + v243.i64[0] + (__ROR8__(v61, 14) ^ __ROR8__(v61, 18) ^ __ROR8__(v61, 41)) + ((v56 ^ v48) & v61 ^ v48);
        v67 = vshrq_n_u64(v63, 1uLL);
        v68 = vshlq_n_s64(v63, 0x38uLL);
        v69 = v44 + v66;
        v70 = v66 + (__ROR8__(v62, 28) ^ __ROR8__(v62, 34) ^ __ROR8__(v62, 39)) + ((v57 ^ v49) & v62 ^ v57 & v49);
        v71 = veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v7, 6uLL), v64), v65), vshrq_n_u64(v64, 0x2AuLL));
        v72 = *v33++;
        v8 = vaddq_s64(vaddq_s64(vaddq_s64(v8, vextq_s8(v12, v5, 8uLL)), veorq_s8(v71, vshlq_n_s64(v65, 0x2AuLL))), veorq_s8(veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v63, 7uLL), v67), v68), vshrq_n_u64(v67, 7uLL)), vshlq_n_s64(v68, 7uLL)));
        v73 = v48 + v243.i64[1] + (__ROR8__(v69, 14) ^ __ROR8__(v69, 18) ^ __ROR8__(v69, 41)) + ((v61 ^ v56) & v69 ^ v56);
        v74 = v49 + v73;
        v75 = v73 + (__ROR8__(v70, 28) ^ __ROR8__(v70, 34) ^ __ROR8__(v70, 39)) + ((v62 ^ v57) & v70 ^ v62 & v57);
        v243 = vaddq_s64(v72, v8);
        v76 = vextq_s8(v9, v10, 8uLL);
        v77 = vshrq_n_u64(v8, 0x13uLL);
        v78 = vshlq_n_s64(v8, 3uLL);
        v79 = v56 + v244.i64[0] + (__ROR8__(v74, 14) ^ __ROR8__(v74, 18) ^ __ROR8__(v74, 41)) + ((v69 ^ v61) & v74 ^ v61);
        v80 = vshrq_n_u64(v76, 1uLL);
        v81 = vshlq_n_s64(v76, 0x38uLL);
        v82 = v57 + v79;
        v83 = v79 + (__ROR8__(v75, 28) ^ __ROR8__(v75, 34) ^ __ROR8__(v75, 39)) + ((v70 ^ v62) & v75 ^ v70 & v62);
        v84 = veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v8, 6uLL), v77), v78), vshrq_n_u64(v77, 0x2AuLL));
        v85 = *v33++;
        v9 = vaddq_s64(vaddq_s64(vaddq_s64(v9, vextq_s8(v5, v6, 8uLL)), veorq_s8(v84, vshlq_n_s64(v78, 0x2AuLL))), veorq_s8(veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v76, 7uLL), v80), v81), vshrq_n_u64(v80, 7uLL)), vshlq_n_s64(v81, 7uLL)));
        v86 = v61 + v244.i64[1] + (__ROR8__(v82, 14) ^ __ROR8__(v82, 18) ^ __ROR8__(v82, 41)) + ((v74 ^ v69) & v82 ^ v69);
        v87 = v62 + v86;
        v88 = v86 + (__ROR8__(v83, 28) ^ __ROR8__(v83, 34) ^ __ROR8__(v83, 39)) + ((v75 ^ v70) & v83 ^ v75 & v70);
        v244 = vaddq_s64(v85, v9);
        v89 = vextq_s8(v10, v11, 8uLL);
        v90 = vshrq_n_u64(v9, 0x13uLL);
        v91 = vshlq_n_s64(v9, 3uLL);
        v92 = v69 + v245.i64[0] + (__ROR8__(v87, 14) ^ __ROR8__(v87, 18) ^ __ROR8__(v87, 41)) + ((v82 ^ v74) & v87 ^ v74);
        v93 = vshrq_n_u64(v89, 1uLL);
        v94 = vshlq_n_s64(v89, 0x38uLL);
        v95 = v70 + v92;
        v96 = v92 + (__ROR8__(v88, 28) ^ __ROR8__(v88, 34) ^ __ROR8__(v88, 39)) + ((v83 ^ v75) & v88 ^ v83 & v75);
        v97 = veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v9, 6uLL), v90), v91), vshrq_n_u64(v90, 0x2AuLL));
        v98 = *v33++;
        v10 = vaddq_s64(vaddq_s64(vaddq_s64(v10, vextq_s8(v6, v7, 8uLL)), veorq_s8(v97, vshlq_n_s64(v91, 0x2AuLL))), veorq_s8(veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v89, 7uLL), v93), v94), vshrq_n_u64(v93, 7uLL)), vshlq_n_s64(v94, 7uLL)));
        v99 = v74 + v245.i64[1] + (__ROR8__(v95, 14) ^ __ROR8__(v95, 18) ^ __ROR8__(v95, 41)) + ((v87 ^ v82) & v95 ^ v82);
        v100 = v75 + v99;
        v101 = v99 + (__ROR8__(v96, 28) ^ __ROR8__(v96, 34) ^ __ROR8__(v96, 39)) + ((v88 ^ v83) & v96 ^ v88 & v83);
        v245 = vaddq_s64(v98, v10);
        v102 = vextq_s8(v11, v12, 8uLL);
        v103 = vshrq_n_u64(v10, 0x13uLL);
        v104 = vshlq_n_s64(v10, 3uLL);
        v105 = v82 + v246.i64[0] + (__ROR8__(v100, 14) ^ __ROR8__(v100, 18) ^ __ROR8__(v100, 41)) + ((v95 ^ v87) & v100 ^ v87);
        v106 = vshrq_n_u64(v102, 1uLL);
        v107 = vshlq_n_s64(v102, 0x38uLL);
        v21 = v83 + v105;
        v17 = v105 + (__ROR8__(v101, 28) ^ __ROR8__(v101, 34) ^ __ROR8__(v101, 39)) + ((v96 ^ v88) & v101 ^ v96 & v88);
        v108 = veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v10, 6uLL), v103), v104), vshrq_n_u64(v103, 0x2AuLL));
        v109 = *v33++;
        v11 = vaddq_s64(vaddq_s64(vaddq_s64(v11, vextq_s8(v7, v8, 8uLL)), veorq_s8(v108, vshlq_n_s64(v104, 0x2AuLL))), veorq_s8(veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v102, 7uLL), v106), v107), vshrq_n_u64(v106, 7uLL)), vshlq_n_s64(v107, 7uLL)));
        v110 = v87 + v246.i64[1] + (__ROR8__(v21, 14) ^ __ROR8__(v21, 18) ^ __ROR8__(v21, 41)) + ((v100 ^ v95) & v21 ^ v95);
        v20 = v88 + v110;
        v16 = v110 + (__ROR8__(v17, 28) ^ __ROR8__(v17, 34) ^ __ROR8__(v17, 39)) + ((v101 ^ v96) & v17 ^ v101 & v96);
        v246 = vaddq_s64(v109, v11);
        v111 = vextq_s8(v12, v5, 8uLL);
        v112 = vshrq_n_u64(v11, 0x13uLL);
        v113 = vshlq_n_s64(v11, 3uLL);
        v114 = v95 + v247.i64[0] + (__ROR8__(v20, 14) ^ __ROR8__(v20, 18) ^ __ROR8__(v20, 41)) + ((v21 ^ v100) & v20 ^ v100);
        v115 = vshrq_n_u64(v111, 1uLL);
        v116 = vshlq_n_s64(v111, 0x38uLL);
        v19 = v96 + v114;
        v15 = v114 + (__ROR8__(v16, 28) ^ __ROR8__(v16, 34) ^ __ROR8__(v16, 39)) + ((v17 ^ v101) & v16 ^ v17 & v101);
        v117 = veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v11, 6uLL), v112), v113), vshrq_n_u64(v112, 0x2AuLL));
        v118 = *v33;
        i8 = v33[1].i8;
        v12 = vaddq_s64(vaddq_s64(vaddq_s64(v12, vextq_s8(v8, v9, 8uLL)), veorq_s8(v117, vshlq_n_s64(v113, 0x2AuLL))), veorq_s8(veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v111, 7uLL), v115), v116), vshrq_n_u64(v115, 7uLL)), vshlq_n_s64(v116, 7uLL)));
        v119 = v100 + v247.i64[1] + (__ROR8__(v19, 14) ^ __ROR8__(v19, 18) ^ __ROR8__(v19, 41)) + ((v20 ^ v21) & v19 ^ v21);
        v18 = v101 + v119;
        v14 = v119 + (__ROR8__(v15, 28) ^ __ROR8__(v15, 34) ^ __ROR8__(v15, 39)) + ((v16 ^ v17) & v15 ^ v16 & v17);
        v247 = vaddq_s64(v118, v12);
        v120 = __OFSUB__(v22--, 1);
      }

      while (!((v22 < 0) ^ v120 | (v22 == 0)));
      v121 = i8 - 40;
      if (!--a2)
      {
        break;
      }

      v123 = *v3;
      v122 = v3 + 1;
      v124 = v21 + v240.i64[0] + (__ROR8__(v18, 14) ^ __ROR8__(v18, 18) ^ __ROR8__(v18, 41)) + ((v19 ^ v20) & v18 ^ v20);
      v126 = *v121;
      v125 = (v121 + 1);
      v127 = v17 + v124;
      v128 = v124 + (__ROR8__(v14, 28) ^ __ROR8__(v14, 34) ^ __ROR8__(v14, 39)) + ((v15 ^ v16) & v14 ^ v15 & v16);
      v5 = vrev64q_s8(v123);
      v129 = v20 + v240.i64[1] + (__ROR8__(v127, 14) ^ __ROR8__(v127, 18) ^ __ROR8__(v127, 41)) + ((v18 ^ v19) & v127 ^ v19);
      v130 = v16 + v129;
      v240 = vaddq_s64(v126, v5);
      v131 = v129 + (__ROR8__(v128, 28) ^ __ROR8__(v128, 34) ^ __ROR8__(v128, 39)) + ((v14 ^ v15) & v128 ^ v14 & v15);
      v132 = *v122++;
      v133 = v19 + v241.i64[0] + (__ROR8__(v130, 14) ^ __ROR8__(v130, 18) ^ __ROR8__(v130, 41)) + ((v127 ^ v18) & v130 ^ v18);
      v134 = *v125++;
      v135 = v15 + v133;
      v136 = v133 + (__ROR8__(v131, 28) ^ __ROR8__(v131, 34) ^ __ROR8__(v131, 39)) + ((v128 ^ v14) & v131 ^ v128 & v14);
      v6 = vrev64q_s8(v132);
      v137 = v18 + v241.i64[1] + (__ROR8__(v135, 14) ^ __ROR8__(v135, 18) ^ __ROR8__(v135, 41)) + ((v130 ^ v127) & v135 ^ v127);
      v138 = v14 + v137;
      v241 = vaddq_s64(v134, v6);
      v139 = v137 + (__ROR8__(v136, 28) ^ __ROR8__(v136, 34) ^ __ROR8__(v136, 39)) + ((v131 ^ v128) & v136 ^ v131 & v128);
      v140 = *v122++;
      v141 = v127 + v242.i64[0] + (__ROR8__(v138, 14) ^ __ROR8__(v138, 18) ^ __ROR8__(v138, 41)) + ((v135 ^ v130) & v138 ^ v130);
      v142 = *v125++;
      v143 = v128 + v141;
      v144 = v141 + (__ROR8__(v139, 28) ^ __ROR8__(v139, 34) ^ __ROR8__(v139, 39)) + ((v136 ^ v131) & v139 ^ v136 & v131);
      v7 = vrev64q_s8(v140);
      v145 = v130 + v242.i64[1] + (__ROR8__(v143, 14) ^ __ROR8__(v143, 18) ^ __ROR8__(v143, 41)) + ((v138 ^ v135) & v143 ^ v135);
      v146 = v131 + v145;
      v242 = vaddq_s64(v142, v7);
      v147 = v145 + (__ROR8__(v144, 28) ^ __ROR8__(v144, 34) ^ __ROR8__(v144, 39)) + ((v139 ^ v136) & v144 ^ v139 & v136);
      v148 = *v122++;
      v149 = v135 + v243.i64[0] + (__ROR8__(v146, 14) ^ __ROR8__(v146, 18) ^ __ROR8__(v146, 41)) + ((v143 ^ v138) & v146 ^ v138);
      v150 = *v125++;
      v151 = v136 + v149;
      v152 = v149 + (__ROR8__(v147, 28) ^ __ROR8__(v147, 34) ^ __ROR8__(v147, 39)) + ((v144 ^ v139) & v147 ^ v144 & v139);
      v8 = vrev64q_s8(v148);
      v153 = v138 + v243.i64[1] + (__ROR8__(v151, 14) ^ __ROR8__(v151, 18) ^ __ROR8__(v151, 41)) + ((v146 ^ v143) & v151 ^ v143);
      v154 = v139 + v153;
      v243 = vaddq_s64(v150, v8);
      v155 = v153 + (__ROR8__(v152, 28) ^ __ROR8__(v152, 34) ^ __ROR8__(v152, 39)) + ((v147 ^ v144) & v152 ^ v147 & v144);
      v156 = *v122++;
      v157 = v143 + v244.i64[0] + (__ROR8__(v154, 14) ^ __ROR8__(v154, 18) ^ __ROR8__(v154, 41)) + ((v151 ^ v146) & v154 ^ v146);
      v158 = *v125++;
      v159 = v144 + v157;
      v160 = v157 + (__ROR8__(v155, 28) ^ __ROR8__(v155, 34) ^ __ROR8__(v155, 39)) + ((v152 ^ v147) & v155 ^ v152 & v147);
      v9 = vrev64q_s8(v156);
      v161 = v146 + v244.i64[1] + (__ROR8__(v159, 14) ^ __ROR8__(v159, 18) ^ __ROR8__(v159, 41)) + ((v154 ^ v151) & v159 ^ v151);
      v162 = v147 + v161;
      v244 = vaddq_s64(v158, v9);
      v163 = v161 + (__ROR8__(v160, 28) ^ __ROR8__(v160, 34) ^ __ROR8__(v160, 39)) + ((v155 ^ v152) & v160 ^ v155 & v152);
      v164 = *v122++;
      v165 = v151 + v245.i64[0] + (__ROR8__(v162, 14) ^ __ROR8__(v162, 18) ^ __ROR8__(v162, 41)) + ((v159 ^ v154) & v162 ^ v154);
      v166 = *v125++;
      v167 = v152 + v165;
      v168 = v165 + (__ROR8__(v163, 28) ^ __ROR8__(v163, 34) ^ __ROR8__(v163, 39)) + ((v160 ^ v155) & v163 ^ v160 & v155);
      v10 = vrev64q_s8(v164);
      v169 = v154 + v245.i64[1] + (__ROR8__(v167, 14) ^ __ROR8__(v167, 18) ^ __ROR8__(v167, 41)) + ((v162 ^ v159) & v167 ^ v159);
      v170 = v155 + v169;
      v245 = vaddq_s64(v166, v10);
      v171 = v169 + (__ROR8__(v168, 28) ^ __ROR8__(v168, 34) ^ __ROR8__(v168, 39)) + ((v163 ^ v160) & v168 ^ v163 & v160);
      v172 = *v122++;
      v173 = v159 + v246.i64[0] + (__ROR8__(v170, 14) ^ __ROR8__(v170, 18) ^ __ROR8__(v170, 41)) + ((v167 ^ v162) & v170 ^ v162);
      v174 = *v125++;
      v175 = v160 + v173;
      v176 = v173 + (__ROR8__(v171, 28) ^ __ROR8__(v171, 34) ^ __ROR8__(v171, 39)) + ((v168 ^ v163) & v171 ^ v168 & v163);
      v11 = vrev64q_s8(v172);
      v177 = v162 + v246.i64[1] + (__ROR8__(v175, 14) ^ __ROR8__(v175, 18) ^ __ROR8__(v175, 41)) + ((v170 ^ v167) & v175 ^ v167);
      v178 = v163 + v177;
      v246 = vaddq_s64(v174, v11);
      v179 = v177 + (__ROR8__(v176, 28) ^ __ROR8__(v176, 34) ^ __ROR8__(v176, 39)) + ((v171 ^ v168) & v176 ^ v171 & v168);
      v180 = *v122;
      v3 = v122 + 1;
      v181 = v167 + v247.i64[0] + (__ROR8__(v178, 14) ^ __ROR8__(v178, 18) ^ __ROR8__(v178, 41)) + ((v175 ^ v170) & v178 ^ v170);
      v182 = *v125;
      i8 = v125[1].i8;
      v183 = v168 + v181;
      v184 = v181 + (__ROR8__(v179, 28) ^ __ROR8__(v179, 34) ^ __ROR8__(v179, 39)) + ((v176 ^ v171) & v179 ^ v176 & v171);
      v12 = vrev64q_s8(v180);
      v185 = v170 + v247.i64[1] + (__ROR8__(v183, 14) ^ __ROR8__(v183, 18) ^ __ROR8__(v183, 41)) + ((v178 ^ v175) & v183 ^ v175);
      v247 = vaddq_s64(v182, v12);
      v186 = result[1] + v184;
      *result += v185 + (__ROR8__(v184, 28) ^ __ROR8__(v184, 34) ^ __ROR8__(v184, 39)) + ((v179 ^ v176) & v184 ^ v179 & v176);
      result[1] = v186;
      v187 = result[3] + v176;
      result[2] += v179;
      result[3] = v187;
      v188 = result[5] + v183;
      result[4] += v171 + v185;
      result[5] = v188;
      v189 = result[7] + v175;
      result[6] += v178;
      result[7] = v189;
    }

    v190 = v21 + v240.i64[0] + (__ROR8__(v18, 14) ^ __ROR8__(v18, 18) ^ __ROR8__(v18, 41)) + ((v19 ^ v20) & v18 ^ v20);
    v191 = v17 + v190;
    v192 = v190 + (__ROR8__(v14, 28) ^ __ROR8__(v14, 34) ^ __ROR8__(v14, 39)) + ((v15 ^ v16) & v14 ^ v15 & v16);
    v193 = v20 + v240.i64[1] + (__ROR8__(v191, 14) ^ __ROR8__(v191, 18) ^ __ROR8__(v191, 41)) + ((v18 ^ v19) & v191 ^ v19);
    v194 = v16 + v193;
    v195 = v193 + (__ROR8__(v192, 28) ^ __ROR8__(v192, 34) ^ __ROR8__(v192, 39)) + ((v14 ^ v15) & v192 ^ v14 & v15);
    v196 = v19 + v241.i64[0] + (__ROR8__(v194, 14) ^ __ROR8__(v194, 18) ^ __ROR8__(v194, 41)) + ((v191 ^ v18) & v194 ^ v18);
    v197 = v15 + v196;
    v198 = v196 + (__ROR8__(v195, 28) ^ __ROR8__(v195, 34) ^ __ROR8__(v195, 39)) + ((v192 ^ v14) & v195 ^ v192 & v14);
    v199 = v18 + v241.i64[1] + (__ROR8__(v197, 14) ^ __ROR8__(v197, 18) ^ __ROR8__(v197, 41)) + ((v194 ^ v191) & v197 ^ v191);
    v200 = v14 + v199;
    v201 = v199 + (__ROR8__(v198, 28) ^ __ROR8__(v198, 34) ^ __ROR8__(v198, 39)) + ((v195 ^ v192) & v198 ^ v195 & v192);
    v202 = v191 + v242.i64[0] + (__ROR8__(v200, 14) ^ __ROR8__(v200, 18) ^ __ROR8__(v200, 41)) + ((v197 ^ v194) & v200 ^ v194);
    v203 = v192 + v202;
    v204 = v202 + (__ROR8__(v201, 28) ^ __ROR8__(v201, 34) ^ __ROR8__(v201, 39)) + ((v198 ^ v195) & v201 ^ v198 & v195);
    v205 = v194 + v242.i64[1] + (__ROR8__(v203, 14) ^ __ROR8__(v203, 18) ^ __ROR8__(v203, 41)) + ((v200 ^ v197) & v203 ^ v197);
    v206 = v195 + v205;
    v207 = v205 + (__ROR8__(v204, 28) ^ __ROR8__(v204, 34) ^ __ROR8__(v204, 39)) + ((v201 ^ v198) & v204 ^ v201 & v198);
    v208 = v197 + v243.i64[0] + (__ROR8__(v206, 14) ^ __ROR8__(v206, 18) ^ __ROR8__(v206, 41)) + ((v203 ^ v200) & v206 ^ v200);
    v209 = v198 + v208;
    v210 = v208 + (__ROR8__(v207, 28) ^ __ROR8__(v207, 34) ^ __ROR8__(v207, 39)) + ((v204 ^ v201) & v207 ^ v204 & v201);
    v211 = v200 + v243.i64[1] + (__ROR8__(v209, 14) ^ __ROR8__(v209, 18) ^ __ROR8__(v209, 41)) + ((v206 ^ v203) & v209 ^ v203);
    v212 = v201 + v211;
    v213 = v211 + (__ROR8__(v210, 28) ^ __ROR8__(v210, 34) ^ __ROR8__(v210, 39)) + ((v207 ^ v204) & v210 ^ v207 & v204);
    v214 = v203 + v244.i64[0] + (__ROR8__(v212, 14) ^ __ROR8__(v212, 18) ^ __ROR8__(v212, 41)) + ((v209 ^ v206) & v212 ^ v206);
    v215 = v204 + v214;
    v216 = v214 + (__ROR8__(v213, 28) ^ __ROR8__(v213, 34) ^ __ROR8__(v213, 39)) + ((v210 ^ v207) & v213 ^ v210 & v207);
    v217 = v206 + v244.i64[1] + (__ROR8__(v215, 14) ^ __ROR8__(v215, 18) ^ __ROR8__(v215, 41)) + ((v212 ^ v209) & v215 ^ v209);
    v218 = v207 + v217;
    v219 = v217 + (__ROR8__(v216, 28) ^ __ROR8__(v216, 34) ^ __ROR8__(v216, 39)) + ((v213 ^ v210) & v216 ^ v213 & v210);
    v220 = v209 + v245.i64[0] + (__ROR8__(v218, 14) ^ __ROR8__(v218, 18) ^ __ROR8__(v218, 41)) + ((v215 ^ v212) & v218 ^ v212);
    v221 = v210 + v220;
    v222 = v220 + (__ROR8__(v219, 28) ^ __ROR8__(v219, 34) ^ __ROR8__(v219, 39)) + ((v216 ^ v213) & v219 ^ v216 & v213);
    v223 = v212 + v245.i64[1] + (__ROR8__(v221, 14) ^ __ROR8__(v221, 18) ^ __ROR8__(v221, 41)) + ((v218 ^ v215) & v221 ^ v215);
    v224 = v213 + v223;
    v225 = v223 + (__ROR8__(v222, 28) ^ __ROR8__(v222, 34) ^ __ROR8__(v222, 39)) + ((v219 ^ v216) & v222 ^ v219 & v216);
    v226 = v215 + v246.i64[0] + (__ROR8__(v224, 14) ^ __ROR8__(v224, 18) ^ __ROR8__(v224, 41)) + ((v221 ^ v218) & v224 ^ v218);
    v227 = v216 + v226;
    v228 = v226 + (__ROR8__(v225, 28) ^ __ROR8__(v225, 34) ^ __ROR8__(v225, 39)) + ((v222 ^ v219) & v225 ^ v222 & v219);
    v229 = v218 + v246.i64[1] + (__ROR8__(v227, 14) ^ __ROR8__(v227, 18) ^ __ROR8__(v227, 41)) + ((v224 ^ v221) & v227 ^ v221);
    v230 = v219 + v229;
    v231 = v229 + (__ROR8__(v228, 28) ^ __ROR8__(v228, 34) ^ __ROR8__(v228, 39)) + ((v225 ^ v222) & v228 ^ v225 & v222);
    v232 = v221 + v247.i64[0] + (__ROR8__(v230, 14) ^ __ROR8__(v230, 18) ^ __ROR8__(v230, 41)) + ((v227 ^ v224) & v230 ^ v224);
    v233 = v222 + v232;
    v234 = v232 + (__ROR8__(v231, 28) ^ __ROR8__(v231, 34) ^ __ROR8__(v231, 39)) + ((v228 ^ v225) & v231 ^ v228 & v225);
    v235 = v224 + v247.i64[1] + (__ROR8__(v233, 14) ^ __ROR8__(v233, 18) ^ __ROR8__(v233, 41)) + ((v230 ^ v227) & v233 ^ v227);
    v236 = result[1] + v234;
    *result += v235 + (__ROR8__(v234, 28) ^ __ROR8__(v234, 34) ^ __ROR8__(v234, 39)) + ((v231 ^ v228) & v234 ^ v231 & v228);
    result[1] = v236;
    v237 = result[3] + v228;
    result[2] += v231;
    result[3] = v237;
    v238 = result[5] + v233;
    result[4] += v225 + v235;
    result[5] = v238;
    v239 = result[7] + v227;
    result[6] += v230;
    result[7] = v239;
  }

  return result;
}

uint64_t cccmac_generate_subkeys(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v17[0] = 0;
  v17[1] = 0;
  __s[0] = 0;
  __s[1] = 0;
  result = cccbc_one_shot_explicit_internal(a1, a2, 16, *(a1 + 8), 1, a3, v17, __s, __s);
  if (!result)
  {
    LOBYTE(v8) = 0;
    v9 = SLOBYTE(__s[0]);
    for (i = 15; i != -1; --i)
    {
      v11 = *(__s + i);
      a4[i] = v8 | (2 * v11);
      v8 = v11 >> 7;
    }

    LOBYTE(v12) = 0;
    a4[15] ^= (v9 >> 7) & 0x87;
    v13 = *a4;
    for (j = 15; j != -1; --j)
    {
      v15 = a4[j];
      *(a5 + j) = v12 | (2 * v15);
      v12 = v15 >> 7;
    }

    *(a5 + 15) ^= (v13 >> 7) & 0x87;
    cc_clear(0x10uLL, __s);
    return 0;
  }

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

    _Q7 = vaddq_s32(_Q3, loc_263DB0);
    __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1M           Q18, S19, V4.4S
      SHA1H           S19, S20
      SHA1SU1         V0.4S, V3.4S
    }

    _Q4 = vaddq_s32(_Q0, loc_263DB0);
    __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1M           Q18, S19, V5.4S
      SHA1H           S19, S20
      SHA1SU1         V1.4S, V0.4S
    }

    _Q5 = vaddq_s32(_Q1, loc_263DB0);
    __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1M           Q18, S19, V6.4S
      SHA1H           S19, S20
      SHA1SU1         V2.4S, V1.4S
    }

    _Q6 = vaddq_s32(_Q2, loc_263DB0);
    __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V7.4S
      SHA1H           S19, S20
      SHA1SU1         V3.4S, V2.4S
    }

    _Q7 = vaddq_s32(_Q3, loc_263DB0);
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

      _Q7 = vaddq_s32(_Q3, loc_263DB0);
      __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1M           Q18, S19, V4.4S
        SHA1H           S19, S20
        SHA1SU1         V0.4S, V3.4S
      }

      _Q4 = vaddq_s32(_Q0, loc_263DB0);
      __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1M           Q18, S19, V5.4S
        SHA1H           S19, S20
        SHA1SU1         V1.4S, V0.4S
      }

      _Q5 = vaddq_s32(_Q1, loc_263DB0);
      __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1M           Q18, S19, V6.4S
        SHA1H           S19, S20
        SHA1SU1         V2.4S, V1.4S
      }

      _Q6 = vaddq_s32(_Q2, loc_263DB0);
      __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V7.4S
        SHA1H           S19, S20
        SHA1SU1         V3.4S, V2.4S
      }

      _Q7 = vaddq_s32(_Q3, loc_263DB0);
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

uint64_t ccder_sizeof_eckey(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ccder_sizeof_uint64(1);
  v7 = ccder_sizeof(4, a1) + v6;
  if (a2)
  {
    v8 = ccder_sizeof_oid(a2);
    v7 += ccder_sizeof(0xA000000000000000, v8);
  }

  if (a3)
  {
    v9 = ccder_sizeof(3, a3 + 1);
    v7 += ccder_sizeof(0xA000000000000001, v9);
  }

  return ccder_sizeof(0x2000000000000010, v7);
}

uint64_t ccn_p256_inv_asm_ws(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v7 = *(a1 + 16);
  v8 = 4;
  v9 = (*(a1 + 24))(a1, 4);
  v10 = (*(a1 + 24))(a1, 4);
  v11 = (*(a1 + 24))(a1, 4);
  ccn_mulmod_p256(v11, a4, a4);
  ccn_mulmod_p256(v10, v11, a4);
  ccn_mulmod_p256(v10, v10, v10);
  ccn_mulmod_p256(v10, v10, v10);
  ccn_mulmod_p256(v9, v10, a4);
  ccn_mulmod_p256(v10, v9, v11);
  do
  {
    ccn_mulmod_p256(v10, v10, v10);
    --v8;
  }

  while (v8);
  ccn_mulmod_p256(v9, v9, v10);
  ccn_mulmod_p256(v10, v9, v11);
  v12 = 8;
  do
  {
    ccn_mulmod_p256(v10, v10, v10);
    --v12;
  }

  while (v12);
  ccn_mulmod_p256(v9, v9, v10);
  ccn_mulmod_p256(v10, v9, v11);
  v13 = 16;
  do
  {
    ccn_mulmod_p256(v10, v10, v10);
    --v13;
  }

  while (v13);
  ccn_mulmod_p256(v9, v9, v10);
  ccn_mulmod_p256(v10, v9, v11);
  ccn_set(4, v11, v10);
  v14 = 32;
  do
  {
    ccn_mulmod_p256(v11, v11, v11);
    --v14;
  }

  while (v14);
  ccn_mulmod_p256(v11, v11, a4);
  v15 = 128;
  do
  {
    ccn_mulmod_p256(v11, v11, v11);
    --v15;
  }

  while (v15);
  ccn_mulmod_p256(v11, v11, v10);
  v16 = 32;
  do
  {
    ccn_mulmod_p256(v11, v11, v11);
    --v16;
  }

  while (v16);
  ccn_mulmod_p256(v11, v11, v10);
  v17 = 32;
  do
  {
    ccn_mulmod_p256(v11, v11, v11);
    --v17;
  }

  while (v17);
  ccn_mulmod_p256(v10, v11, v9);
  ccn_mulmod_p256(v9, v10, a4);
  v19[0] = xmmword_33D3C8;
  v19[1] = unk_33D3D8;
  ccn_mulmod_p256(v9, v9, v19);
  if (ccn_n(4, v9) == 1 && *v9 == 1)
  {
    ccn_set(4, a3, v10);
    result = 0;
  }

  else
  {
    result = 4294967254;
  }

  *(a1 + 16) = v7;
  return result;
}

_OWORD *ccn_p256_from_asm_ws(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v5[0] = xmmword_33D3C8;
  v5[1] = unk_33D3D8;
  return ccn_mulmod_p256(a3, a4, v5);
}

uint64_t cczp_mm_redc_ws(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = cczp_n(a2);
  v9 = v8;
  if (v8)
  {
    v10 = a2[*a2 + 3];
    v11 = a4;
    v12 = v8;
    do
    {
      v13 = cczp_prime(a2);
      *v11 = ccn_addmul1(v9, v11, v13, *v11 * v10);
      ++v11;
      --v12;
    }

    while (v12);
  }

  v14 = ccn_add_ws(a1, v9, &a4[v9], &a4[v9], a4);
  v15 = cczp_prime(a2);
  v16 = ccn_sub_ws(a1, v9, a4, &a4[v9], v15) ^ v14;

  return ccn_mux(v9, v16, a3, &a4[v9], a4);
}

uint64_t ccgcm_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 24))(a1, a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ccgcm_set_iv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 32))(a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
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

uint64_t ccn_cond_clear(uint64_t a1, char a2, uint64_t *a3)
{
  result = ccn_mux_next_mask();
  for (i = __ROR8__(0x5555555555555555, a2 | (2 * result)); a1; --a1)
  {
    v8 = *a3;
    v9 = *a3 ^ result;
    *a3 = v9;
    *a3++ = v9 ^ v8 & 0x5555555555555555 ^ v8 & i ^ result;
  }

  return result;
}

uint64_t ccsha512_final(uint64_t a1, const void *a2, uint64_t a3)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = a2 + v7 + 8;
  if (v6 <= *(v8 + v6))
  {
    *(v8 + v6) = 0;
  }

  v9 = v7 + 8 + v6;
  v10 = (v9 + 11) & 0xFFFFFFFFFFFFFFF8;
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v11, v10);
  memcpy(v11, a2, v9 + 4);
  v12 = v11 + v7 + 8;
  v13 = *&v12[v6];
  *v11 += (8 * v13);
  *&v12[v6] = v13 + 1;
  v12[v13] = 0x80;
  v14 = *&v12[v6];
  if (v6 - 16 < v14)
  {
    while (v6 > v14)
    {
      *&v12[v6] = v14 + 1;
      v12[v14] = 0;
      v14 = *&v12[v6];
    }

    (*(a1 + 48))(v11 + 1, 1);
    LODWORD(v14) = 0;
    v7 = *(a1 + 8);
    v6 = *(a1 + 16);
    *(v11 + v7 + v6 + 8) = 0;
  }

  v15 = v11 + v7 + 8;
  v16 = (v15 + v6);
  if (v6 - 8 > v14)
  {
    v17 = v14;
    do
    {
      *v16 = v14 + 1;
      *(v15 + v17) = 0;
      v17 = *v16;
      LODWORD(v14) = *v16;
    }

    while (v6 - 8 > v17);
  }

  *(v16 - 1) = bswap64(*v11);
  (*(a1 + 48))(v11 + 1, 1);
  if (*a1 >= 8uLL)
  {
    v18 = 0;
    v19 = 0;
    v20 = 1;
    do
    {
      *(a3 + v18) = bswap64(v11[v19 + 1]);
      v19 = v20++;
      v18 += 8;
    }

    while (v19 < *a1 >> 3);
  }

  return cc_clear(*(a1 + 8) + *(a1 + 16) + 12, v11);
}

uint64_t ccn_set_bit(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = 1 << a2;
  v4 = (a2 >> 3) & 0x1FFFFFFFFFFFFFF8;
  if (a3)
  {
    v5 = *(result + v4) | v3;
  }

  else
  {
    v5 = *(result + v4) & ~v3;
  }

  *(result + v4) = v5;
  return result;
}

unint64_t ccn_cond_rsub(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  mask = ccn_mux_next_mask();
  v11 = __ROR8__(0x5555555555555555, a2 | (2 * mask));
  if (a1)
  {
    v12 = 0;
    do
    {
      v14 = *a4++;
      v13 = v14;
      v15 = *a5++;
      v16 = __PAIR128__(v12, v12) - v13;
      v17 = v16 + v15;
      if (__CFADD__(v16, v15))
      {
        v18 = *(&v16 + 1) + 1;
      }

      else
      {
        v18 = (__PAIR128__(v12, v12) - v13) >> 64;
      }

      v12 = v18 >> 63;
      v19 = v13 ^ v17;
      v20 = v13 ^ mask;
      *a3 = v20;
      *a3++ = v19 & v11 ^ v19 & 0x5555555555555555 ^ v20 ^ mask;
      --a1;
    }

    while (a1);
    v21 = v18 >> 63;
  }

  else
  {
    v21 = 0;
  }

  return v21 & a2;
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

uint64_t timingsafe_restore_if_supported(uint64_t result)
{
  if ((result & 1) == 0 && (MEMORY[0xFFFFFC010] & 0x200000000000000) != 0)
  {
    __asm { MSR             DIT, #0 }
  }

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

uint64_t ccec_der_export_priv_size(uint64_t *a1, uint64_t a2, int a3)
{
  v10 = timingsafe_enable_if_supported();
  v6 = cczp_bitlen(*a1 + 40 * **a1 + 32);
  if (a3)
  {
    v7 = ((cczp_bitlen(*a1) + 7) >> 2) | 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = ccder_encode_eckey_size((v6 + 7) >> 3, a2, v7);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ccec_der_export_priv(uint64_t **a1, const void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v25 = timingsafe_enable_if_supported();
  v10 = *a1;
  v11 = cc_malloc_clear(24 * **a1 + 8);
  v12 = 3 * *v10 + 1;
  v21[0] = v11;
  v21[1] = v12;
  v22 = 0;
  v23 = cc_ws_alloc;
  v24 = cc_ws_free;
  if (v11)
  {
    v13 = **a1;
    v14 = (cczp_bitlen(&(*a1)[5 * v13 + 4]) + 7) >> 3;
    v15 = cc_ws_alloc(v21, v13);
    if ((ccn_write_uint_padded_ct_internal(v13, &a1[3 * **a1 + 2], v14, v15) & 0x80000000) != 0)
    {
      v17 = 4294967289;
    }

    else
    {
      if (a3)
      {
        v16 = ((cczp_bitlen(*a1) + 7) >> 2) | 1;
      }

      else
      {
        v16 = 0;
      }

      v18 = v23(v21, (2 * v13) | 1);
      if (a3)
      {
        v19 = ccec_export_pub(a1, v18);
        if (v19)
        {
          v17 = v19;
          goto LABEL_13;
        }
      }

      if (ccder_encode_eckey_internal(v14, v15, a2, v16, v18, a5, a5 + a4) == a5)
      {
        v17 = 0;
      }

      else
      {
        v17 = 0xFFFFFFFFLL;
      }
    }

    v22 = 0;
LABEL_13:
    v24(v21);
    goto LABEL_14;
  }

  v17 = 4294967283;
LABEL_14:
  cc_disable_dit_with_sb(&v25);
  return v17;
}

unint64_t ccec_export_affine_point_size(uint64_t a1, int a2)
{
  result = 0;
  if (a2 > 2)
  {
    if (a2 == 3)
    {

      return ccec_compressed_x962_export_pub_size(a1);
    }

    else if (a2 == 4)
    {
      return (cczp_bitlen(a1) + 7) >> 3;
    }
  }

  else if (a2 == 1 || a2 == 2)
  {
    return ((cczp_bitlen(a1) + 7) >> 2) | 1;
  }

  return result;
}

unint64_t ccn_trailing_zeros(unint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    result = 0;
    v3 = (v2 << 6) - 64;
    do
    {
      result = (__clz(__rbit64(*(a2 - 8 + 8 * v2) | 0x8000000000000000)) + v3) & -(*(a2 - 8 + 8 * v2) != 0) | (*(a2 - 8 + 8 * v2) != 0 ? 0 : result);
      v3 -= 64;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t ccec_verify_internal_with_base_ws(uint64_t a1, uint64_t **a2, unint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *a2;
  v17 = (*a2 + 4);
  v16 = **a2;
  if (a3 <= 0xF)
  {
    ccec_verify_internal_with_base_ws_cold_1(a3);
  }

  if (!ccec_validate_scalar(v15, a5) && !ccec_validate_scalar(v15, a6))
  {
    v36 = a8;
    v39 = *(a1 + 16);
    v43 = (*(a1 + 24))(a1, v16);
    v38 = (*(a1 + 24))(a1, v16);
    v42 = (*(a1 + 24))(a1, v16);
    v40 = (*(a1 + 24))(a1, v16);
    v37 = (*(a1 + 24))(a1, 3 * v16);
    v41 = (*(a1 + 24))(a1, 3 * v16);
    v20 = ccec_signature_r_s_size(a2);
    v34 = (*(a1 + 24))(a1, v16);
    memset(v34, 170, v20);
    __s = (*(a1 + 24))(a1, v16);
    v35 = v20;
    memset(__s, 255, v20);
    v21 = cczp_bitlen(v17 + 40 * *v15);
    v22 = v21;
    if ((v21 + 7) >> 3 >= a3)
    {
      v23 = a3;
    }

    else
    {
      v23 = (v21 + 7) >> 3;
    }

    uint_internal = ccn_read_uint_internal(v16, v43, v23, a4);
    if ((uint_internal & 0x80000000) == 0)
    {
      if (v22 < 8 * a3)
      {
        ccn_shift_right(v16, v43, v43, -v22 & 7);
      }

      v25 = cczp_prime(v17 + 40 * v16);
      if (!ccn_sub_ws(a1, v16, v38, v43->i64, v25))
      {
        ccn_set(v16, v43, v38);
      }

      if (cczp_inv_ws(a1, v17 + 40 * v16) || (cczp_mul_ws(a1, v17 + 40 * v16), cczp_mul_ws(a1, v17 + 40 * v16), v26 = a2 + 2, ccn_n(v16, &a2[2 * *v15 + 2]) != 1) || v26[2 * *v15] != (&dword_0 + 1))
      {
LABEL_36:
        v18 = 4294967289;
LABEL_38:
        v28 = v39;
LABEL_35:
        *(a1 + 16) = v28;
        return v18;
      }

      uint_internal = ccec_projectify_ws(a1, v15);
      if (!uint_internal)
      {
        uint_internal = ccec_projectify_ws(a1, v15);
        if (!uint_internal)
        {
          if (ccec_is_point_ws(a1, v15, v41))
          {
            v27 = *v15;
            if (ccn_cmp_public_value(*v15, v17 + 16 * *v15 + 8 * *v15, v26))
            {
              v18 = ccec_twin_mult_ws(a1, v15, v37, v42, v37, v40, v41);
              v28 = v39;
              if (v18)
              {
                goto LABEL_35;
              }
            }

            else
            {
              v29 = v17 + 40 * v27;
              v30 = *(a1 + 16);
              (*(a1 + 24))(a1, 3 * v27);
              cczp_bitlen(v29);
              if (ccec_mult_ws(a1, v15) || (cczp_bitlen(v29), ccec_mult_ws(a1, v15)))
              {
                v18 = 0xFFFFFFFFLL;
              }

              else
              {
                ccec_full_add_ws(a1, v15);
                v18 = 0;
              }

              v28 = v39;
              *(a1 + 16) = v30;
              if (v18)
              {
                goto LABEL_35;
              }
            }

            if (ccec_affinify_x_only_ws(a1, v15, v37, v37))
            {
              v18 = 4294967289;
            }

            else
            {
              v44 = v17 + 40 * v16;
              v31 = cczp_prime(v44);
              if ((ccn_cmp_public_value(v16, v37, v31) & 0x80000000) == 0)
              {
                v32 = cczp_prime(v44);
                ccn_sub_ws(a1, v16, v37, v37, v32);
              }

              if (ccn_cmp_public_value(v16, v37, a5))
              {
                v18 = 4294967150;
              }

              else
              {
                v18 = 0;
              }

              ccn_write_uint_padded_ct_internal(v16, a5, v35, v34);
              ccn_write_uint_padded_ct_internal(v16, v37, v35, __s);
              cc_fault_canary_set(v36, &CCEC_FAULT_CANARY, v35, v34, __s);
            }

            goto LABEL_35;
          }

          goto LABEL_36;
        }
      }
    }

    v18 = uint_internal;
    goto LABEL_38;
  }

  return 4294967289;
}

void *ccn_mulmod_p384(void *a1, unint64_t *a2, unint64_t *a3)
{
  v4 = *a2;
  v5 = a2[1];
  v3 = a2 + 2;
  v6 = *v3;
  v7 = v3[1];
  v3 += 2;
  v8 = *v3;
  v9 = v3[1];
  v11 = *a3;
  v12 = a3[1];
  v10 = a3 + 2;
  v13 = *v10;
  v14 = v10[1];
  v10 += 2;
  v15 = *v10;
  v16 = v10[1];
  v17 = v5 * v11 + ((v4 * v11) >> 64);
  v18 = v17 + v4 * v12;
  v19 = __CFADD__(__CFADD__(v17, v4 * v12), *(&v17 + 1)) | __CFADD__((v4 * v12) >> 64, *(&v18 + 1));
  v20 = (v6 * v11) >> 64;
  v21 = *(&v18 + 1) + v6 * v11;
  v22 = __CFADD__(__CFADD__(*(&v18 + 1), v6 * v11), v19);
  v23 = __CFADD__(*(&v18 + 1), v6 * v11) + v19;
  v22 |= __CFADD__(v20, v23);
  v23 += v20;
  v24 = v22;
  v25 = (v5 * v12) >> 64;
  v22 = __CFADD__(v21, v5 * v12);
  v26 = v21 + v5 * v12;
  v28 = v22;
  v22 = __CFADD__(v22, v23);
  v27 = v28 + v23;
  v22 |= __CFADD__(v25, v27);
  v27 += v25;
  v29 = v22 + v24;
  v30 = (v4 * v13) >> 64;
  v22 = __CFADD__(v26, v4 * v13);
  v31 = v26 + v4 * v13;
  v33 = v22;
  v22 = __CFADD__(v22, v27);
  v32 = v33 + v27;
  v22 |= __CFADD__(v30, v32);
  v32 += v30;
  v34 = v22 + v29;
  v35 = (v7 * v11) >> 64;
  v22 = __CFADD__(v32, v7 * v11);
  v36 = v32 + v7 * v11;
  v38 = v22;
  v22 = __CFADD__(v22, v34);
  v37 = v38 + v34;
  v22 |= __CFADD__(v35, v37);
  v37 += v35;
  v39 = v22;
  v40 = (v6 * v12) >> 64;
  v22 = __CFADD__(v36, v6 * v12);
  v41 = v36 + v6 * v12;
  v43 = v22;
  v22 = __CFADD__(v22, v37);
  v42 = v43 + v37;
  v22 |= __CFADD__(v40, v42);
  v42 += v40;
  v44 = v22 + v39;
  v45 = (v5 * v13) >> 64;
  v22 = __CFADD__(v41, v5 * v13);
  v46 = v41 + v5 * v13;
  v48 = v22;
  v22 = __CFADD__(v22, v42);
  v47 = v48 + v42;
  v22 |= __CFADD__(v45, v47);
  v47 += v45;
  v49 = v22 + v44;
  v50 = (v4 * v14) >> 64;
  v22 = __CFADD__(v46, v4 * v14);
  v51 = v46 + v4 * v14;
  v53 = v22;
  v22 = __CFADD__(v22, v47);
  v52 = v53 + v47;
  v22 |= __CFADD__(v50, v52);
  v52 += v50;
  v54 = v22 + v49;
  v55 = (*v3 * v11) >> 64;
  v22 = __CFADD__(v52, *v3 * v11);
  v56 = v52 + *v3 * v11;
  v58 = v22;
  v22 = __CFADD__(v22, v54);
  v57 = v58 + v54;
  v22 |= __CFADD__(v55, v57);
  v57 += v55;
  v59 = v22;
  v60 = (v7 * v12) >> 64;
  v22 = __CFADD__(v56, v7 * v12);
  v61 = v56 + v7 * v12;
  v63 = v22;
  v22 = __CFADD__(v22, v57);
  v62 = v63 + v57;
  v22 |= __CFADD__(v60, v62);
  v62 += v60;
  v64 = v22 + v59;
  v65 = (v6 * v13) >> 64;
  v22 = __CFADD__(v61, v6 * v13);
  v66 = v61 + v6 * v13;
  v68 = v22;
  v22 = __CFADD__(v22, v62);
  v67 = v68 + v62;
  v22 |= __CFADD__(v65, v67);
  v67 += v65;
  v69 = v22 + v64;
  v70 = (v5 * v14) >> 64;
  v22 = __CFADD__(v66, v5 * v14);
  v71 = v66 + v5 * v14;
  v73 = v22;
  v22 = __CFADD__(v22, v67);
  v72 = v73 + v67;
  v22 |= __CFADD__(v70, v72);
  v72 += v70;
  v74 = v22 + v69;
  v75 = (v4 * v15) >> 64;
  v22 = __CFADD__(v71, v4 * v15);
  v76 = v71 + v4 * v15;
  v78 = v22;
  v22 = __CFADD__(v22, v72);
  v77 = v78 + v72;
  v22 |= __CFADD__(v75, v77);
  v77 += v75;
  v79 = v22 + v74;
  v80 = (v9 * v11) >> 64;
  v22 = __CFADD__(v77, v9 * v11);
  v81 = v77 + v9 * v11;
  v83 = v22;
  v22 = __CFADD__(v22, v79);
  v82 = v83 + v79;
  v22 |= __CFADD__(v80, v82);
  v82 += v80;
  v84 = v22;
  v85 = (*v3 * v12) >> 64;
  v22 = __CFADD__(v81, *v3 * v12);
  v86 = v81 + *v3 * v12;
  v88 = v22;
  v22 = __CFADD__(v22, v82);
  v87 = v88 + v82;
  v22 |= __CFADD__(v85, v87);
  v87 += v85;
  v89 = v22 + v84;
  v90 = (v7 * v13) >> 64;
  v22 = __CFADD__(v86, v7 * v13);
  v91 = v86 + v7 * v13;
  v93 = v22;
  v22 = __CFADD__(v22, v87);
  v92 = v93 + v87;
  v22 |= __CFADD__(v90, v92);
  v92 += v90;
  v94 = v22 + v89;
  v95 = (v6 * v14) >> 64;
  v22 = __CFADD__(v91, v6 * v14);
  v96 = v91 + v6 * v14;
  v98 = v22;
  v22 = __CFADD__(v22, v92);
  v97 = v98 + v92;
  v22 |= __CFADD__(v95, v97);
  v97 += v95;
  v99 = v22 + v94;
  v100 = (v5 * v15) >> 64;
  v22 = __CFADD__(v96, v5 * v15);
  v101 = v96 + v5 * v15;
  v103 = v22;
  v22 = __CFADD__(v22, v97);
  v102 = v103 + v97;
  v22 |= __CFADD__(v100, v102);
  v102 += v100;
  v104 = v22 + v99;
  v105 = (v4 * v16) >> 64;
  v22 = __CFADD__(v101, v4 * v16);
  v106 = v101 + v4 * v16;
  v108 = v22;
  v22 = __CFADD__(v22, v102);
  v107 = v108 + v102;
  v22 |= __CFADD__(v105, v107);
  v107 += v105;
  v109 = 0x100000001 * v4 * v11;
  v110 = HIDWORD(v109);
  v111 = HIDWORD(v109) + __CFADD__(v4 * v11, (v4 * v11) << 32) + v18;
  v112 = __PAIR128__(v51, __CFADD__(__CFADD__(v4 * v11, (v4 * v11) << 32), v18) | __CFADD__(HIDWORD(v109), __CFADD__(v4 * v11, (v4 * v11) << 32) + v18)) + v31;
  v113 = __CFADD__(__CFADD__(__CFADD__(__CFADD__(v4 * v11, (v4 * v11) << 32), v18) | __CFADD__(HIDWORD(v109), __CFADD__(v4 * v11, (v4 * v11) << 32) + v18), v31), v51);
  v114 = __PAIR128__(v106, v113) + v76;
  v116 = __CFADD__(__CFADD__(v113, v76), v106);
  v115 = v109 + v116 + v107;
  v117 = (__CFADD__(v116, v107) | __CFADD__(v109, v116 + v107)) + v22 + v104;
  v22 = v111 >= (v4 * v11) << 32;
  v120 = __PAIR128__(v112, v111) - __PAIR128__(v109, (v4 * v11) << 32);
  v119 = v120 >> 64;
  v118 = v120;
  v121 = !__CFSUB__(v112, v109, v22);
  v22 = v119 >= v110;
  v124 = __PAIR128__(*(&v112 + 1), v119) - __PAIR128__(v121, v110);
  v123 = v124 >> 64;
  v122 = v124;
  v126 = __CFSUB__(*(&v112 + 1), v121, v22);
  v125 = v114 - !v126;
  v128 = v114 >= !v126;
  v127 = *(&v114 + 1) - !v128;
  v129 = __PAIR128__(v117, v115) - (*(&v114 + 1) < !v128);
  v130 = v129 + v9 * v12;
  v131 = v130 + v8 * v13;
  v132 = v131 + v7 * v14;
  v133 = v132 + v6 * v15;
  v134 = v133 + v5 * v16;
  v135 = 0x100000001 * v118;
  v136 = (0x100000001 * v118) >> 32;
  v22 = __CFADD__(__CFADD__(v118, v118 << 32), v122);
  v137 = __CFADD__(v118, v118 << 32) + v122;
  v22 |= __CFADD__(v136, v137);
  v137 += v136;
  v138 = v22 + v123;
  v139 = __CFADD__(v22, v123);
  v140 = __PAIR128__(v127, v139) + v125;
  v142 = __CFADD__(__CFADD__(v139, v125), v127);
  v141 = v142 + v134;
  v143 = v135 + __CFADD__(v142, v134) + *(&v134 + 1);
  v144 = (__CFADD__(__CFADD__(v142, v134), *(&v134 + 1)) | __CFADD__(v135, __CFADD__(v142, v134) + *(&v134 + 1))) + (__CFADD__(__CFADD__(v133, v5 * v16), *(&v133 + 1)) | __CFADD__((v5 * v16) >> 64, *(&v134 + 1))) + (__CFADD__(__CFADD__(v132, v6 * v15), *(&v132 + 1)) | __CFADD__((v6 * v15) >> 64, *(&v133 + 1))) + (__CFADD__(__CFADD__(v131, v7 * v14), *(&v131 + 1)) | __CFADD__((v7 * v14) >> 64, *(&v132 + 1))) + (__CFADD__(__CFADD__(v130, v8 * v13), *(&v130 + 1)) | __CFADD__((v8 * v13) >> 64, *(&v131 + 1))) + (__CFADD__(__CFADD__(v129, v9 * v12), *(&v129 + 1)) | __CFADD__((v9 * v12) >> 64, *(&v130 + 1)));
  v22 = v137 >= v135 << 32;
  v145 = v137 - (v135 << 32);
  LOBYTE(v142) = v22;
  v22 = __CFSUB__(v138, v135, v22);
  v146 = v138 - (v135 + !v142);
  v147 = !v22;
  v22 = v146 >= v136;
  v150 = __PAIR128__(v140, v146) - __PAIR128__(v147, v136);
  v149 = v150 >> 64;
  v148 = v150;
  v152 = __CFSUB__(v140, v147, v22);
  v151 = *(&v140 + 1) - !v152;
  v154 = *(&v140 + 1) >= !v152;
  v22 = v141 >= !v154;
  v153 = v141 - !v154;
  v155 = __PAIR128__(v144, v143) - !v22;
  v156 = v155 + v9 * v13;
  v157 = v156 + v8 * v14;
  v158 = v157 + v7 * v15;
  v159 = v158 + v6 * v16;
  v160 = 0x100000001 * v145;
  v161 = (0x100000001 * v145) >> 32;
  v22 = __CFADD__(__CFADD__(v145, v145 << 32), v148);
  v162 = __CFADD__(v145, v145 << 32) + v148;
  v22 |= __CFADD__(v161, v162);
  v162 += v161;
  v163 = v22 + v149;
  v164 = __CFADD__(v22, v149);
  v165 = __PAIR128__(v153, v164) + v151;
  v167 = __CFADD__(__CFADD__(v164, v151), v153);
  v166 = v167 + v159;
  v168 = v160 + __CFADD__(v167, v159) + *(&v159 + 1);
  v169 = (__CFADD__(__CFADD__(v167, v159), *(&v159 + 1)) | __CFADD__(v160, __CFADD__(v167, v159) + *(&v159 + 1))) + (__CFADD__(__CFADD__(v158, v6 * v16), *(&v158 + 1)) | __CFADD__((v6 * v16) >> 64, *(&v159 + 1))) + (__CFADD__(__CFADD__(v157, v7 * v15), *(&v157 + 1)) | __CFADD__((v7 * v15) >> 64, *(&v158 + 1))) + (__CFADD__(__CFADD__(v156, v8 * v14), *(&v156 + 1)) | __CFADD__((v8 * v14) >> 64, *(&v157 + 1))) + (__CFADD__(__CFADD__(v155, v9 * v13), *(&v155 + 1)) | __CFADD__((v9 * v13) >> 64, *(&v156 + 1)));
  v22 = v162 >= v160 << 32;
  v170 = v162 - (v160 << 32);
  LOBYTE(v167) = v22;
  v22 = __CFSUB__(v163, v160, v22);
  v171 = v163 - (v160 + !v167);
  v172 = !v22;
  v22 = v171 >= v161;
  v175 = __PAIR128__(v165, v171) - __PAIR128__(v172, v161);
  v174 = v175 >> 64;
  v173 = v175;
  v177 = __CFSUB__(v165, v172, v22);
  v176 = *(&v165 + 1) - !v177;
  v179 = *(&v165 + 1) >= !v177;
  v22 = v166 >= !v179;
  v178 = v166 - !v179;
  v180 = __PAIR128__(v169, v168) - !v22;
  v181 = v180 + v9 * v14;
  v182 = v181 + v8 * v15;
  v183 = v182 + v7 * v16;
  v184 = 0x100000001 * v170;
  v185 = (0x100000001 * v170) >> 32;
  v22 = __CFADD__(__CFADD__(v170, v170 << 32), v173);
  v186 = __CFADD__(v170, v170 << 32) + v173;
  v22 |= __CFADD__(v185, v186);
  v186 += v185;
  v187 = v22 + v174;
  v188 = __CFADD__(v22, v174);
  v189 = __PAIR128__(v178, v188) + v176;
  v191 = __CFADD__(__CFADD__(v188, v176), v178);
  v190 = v191 + v183;
  v192 = v184 + __CFADD__(v191, v183) + *(&v183 + 1);
  v193 = (__CFADD__(__CFADD__(v191, v183), *(&v183 + 1)) | __CFADD__(v184, __CFADD__(v191, v183) + *(&v183 + 1))) + (__CFADD__(__CFADD__(v182, v7 * v16), *(&v182 + 1)) | __CFADD__((v7 * v16) >> 64, *(&v183 + 1))) + (__CFADD__(__CFADD__(v181, v8 * v15), *(&v181 + 1)) | __CFADD__((v8 * v15) >> 64, *(&v182 + 1))) + (__CFADD__(__CFADD__(v180, v9 * v14), *(&v180 + 1)) | __CFADD__((v9 * v14) >> 64, *(&v181 + 1)));
  v22 = v186 >= v184 << 32;
  v194 = v186 - (v184 << 32);
  LOBYTE(v191) = v22;
  v22 = __CFSUB__(v187, v184, v22);
  v195 = v187 - (v184 + !v191);
  v196 = !v22;
  v22 = v195 >= v185;
  v199 = __PAIR128__(v189, v195) - __PAIR128__(v196, v185);
  v198 = v199 >> 64;
  v197 = v199;
  v201 = __CFSUB__(v189, v196, v22);
  v200 = *(&v189 + 1) - !v201;
  v203 = *(&v189 + 1) >= !v201;
  v22 = v190 >= !v203;
  v202 = v190 - !v203;
  v204 = __PAIR128__(v193, v192) - !v22;
  v205 = v204 + v9 * v15;
  v206 = v205 + v8 * v16;
  v207 = 0x100000001 * v194;
  v208 = (0x100000001 * v194) >> 32;
  v22 = __CFADD__(__CFADD__(v194, v194 << 32), v197);
  v209 = __CFADD__(v194, v194 << 32) + v197;
  v22 |= __CFADD__(v208, v209);
  v209 += v208;
  v210 = v22 + v198;
  v211 = __CFADD__(v22, v198);
  v212 = __PAIR128__(v202, v211) + v200;
  v214 = __CFADD__(__CFADD__(v211, v200), v202);
  v213 = v214 + v206;
  v215 = v207 + __CFADD__(v214, v206) + *(&v206 + 1);
  v216 = (__CFADD__(__CFADD__(v214, v206), *(&v206 + 1)) | __CFADD__(v207, __CFADD__(v214, v206) + *(&v206 + 1))) + (__CFADD__(__CFADD__(v205, v8 * v16), *(&v205 + 1)) | __CFADD__((v8 * v16) >> 64, *(&v206 + 1))) + (__CFADD__(__CFADD__(v204, v9 * v15), *(&v204 + 1)) | __CFADD__((v9 * v15) >> 64, *(&v205 + 1)));
  v22 = v209 >= v207 << 32;
  v217 = v209 - (v207 << 32);
  LOBYTE(v214) = v22;
  v22 = __CFSUB__(v210, v207, v22);
  v218 = v210 - (v207 + !v214);
  v219 = !v22;
  v22 = v218 >= v208;
  v222 = __PAIR128__(v212, v218) - __PAIR128__(v219, v208);
  v221 = v222 >> 64;
  v220 = v222;
  v224 = __CFSUB__(v212, v219, v22);
  v223 = *(&v212 + 1) - !v224;
  v226 = *(&v212 + 1) >= !v224;
  v22 = v213 >= !v226;
  v225 = v213 - !v226;
  v227 = __PAIR128__(v216, v215) - !v22;
  v228 = v227 + v9 * v16;
  v229 = 0x100000001 * v217;
  v230 = (0x100000001 * v217) >> 32;
  v22 = __CFADD__(__CFADD__(v217, v217 << 32), v220);
  v231 = __CFADD__(v217, v217 << 32) + v220;
  v22 |= __CFADD__(v230, v231);
  v231 += v230;
  v232 = v22 + v221;
  v233 = __CFADD__(v22, v221);
  v234 = __PAIR128__(v225, v233) + v223;
  v236 = __CFADD__(__CFADD__(v233, v223), v225);
  v235 = v236 + v228;
  v237 = v229 + __CFADD__(v236, v228) + *(&v228 + 1);
  v238 = (__CFADD__(__CFADD__(v236, v228), *(&v228 + 1)) | __CFADD__(v229, __CFADD__(v236, v228) + *(&v228 + 1))) + (__CFADD__(__CFADD__(v227, v9 * v16), *(&v227 + 1)) | __CFADD__((v9 * v16) >> 64, *(&v228 + 1)));
  v22 = v231 >= v229 << 32;
  v239 = v231 - (v229 << 32);
  LOBYTE(v236) = v22;
  v22 = __CFSUB__(v232, v229, v22);
  v240 = v232 - (v229 + !v236);
  v241 = !v22;
  v22 = v240 >= v230;
  v244 = __PAIR128__(v234, v240) - __PAIR128__(v241, v230);
  v243 = v244 >> 64;
  v242 = v244;
  v246 = __CFSUB__(v234, v241, v22);
  v245 = *(&v234 + 1) - !v246;
  v248 = *(&v234 + 1) >= !v246;
  v22 = v235 >= !v248;
  v247 = v235 - !v248;
  v249 = __PAIR128__(v238, v237) - !v22;
  v22 = v239 >= 0xFFFFFFFF;
  v250 = v239 - 0xFFFFFFFF;
  v252 = v22;
  v22 = __CFSUB__(v242, 0xFFFFFFFF00000000, v22);
  v251 = v242 - (!v252 - 0x100000000);
  v254 = v22;
  v22 = __CFSUB__(v243, -2, v22);
  v253 = v243 - (!v254 - 2);
  v256 = v22;
  v22 = __CFSUB__(v245, -1, v22);
  v255 = v245 - (!v256 - 1);
  v258 = v22;
  v22 = __CFSUB__(v247, -1, v22);
  v257 = v247 - (!v258 - 1);
  v259 = v249 - (!v22 - 1);
  v260 = *(&v249 + 1) - !__CFSUB__(v249, -1, v22);
  v22 = __CFADD__(__CFADD__(v250, (v260 & 0xFFFFFFFF00000000) >> 32), v251);
  v261 = __CFADD__(v250, (v260 & 0xFFFFFFFF00000000) >> 32) + v251;
  v263 = v22 | __CFADD__(v260 & 0xFFFFFFFF00000000, v261);
  v22 = __CFADD__(v263, v253);
  v262 = v263 + v253;
  v265 = v22 | __CFADD__(v260 & 0xFFFFFFFFFFFFFFFELL, v262);
  v22 = __CFADD__(v265, v255);
  v264 = v265 + v255;
  v267 = v22 | __CFADD__(v260, v264);
  v22 = __CFADD__(v267, v257);
  v266 = v267 + v257;
  *a1 = v250 + ((v260 & 0xFFFFFFFF00000000) >> 32);
  a1[1] = (v260 & 0xFFFFFFFF00000000) + v261;
  v268 = a1 + 2;
  *v268 = (v260 & 0xFFFFFFFFFFFFFFFELL) + v262;
  v268[1] = v260 + v264;
  result = v268 + 2;
  *result = v260 + v266;
  result[1] = v260 + (v22 | __CFADD__(v260, v266)) + v259;
  return result;
}

uint64_t ccn_cond_add(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  mask = ccn_mux_next_mask();
  v11 = __ROR8__(0x5555555555555555, a2 | (2 * mask));
  v12 = 0;
  if (a1)
  {
    v13 = 0;
    do
    {
      v15 = *a4++;
      v14 = v15;
      v17 = *a5++;
      v16 = v17;
      v18 = __CFADD__(v12, v14);
      v19 = v12 + v14;
      if (v18)
      {
        v13 = 1;
      }

      v18 = __CFADD__(v19, v16);
      v20 = v19 + v16;
      if (v18)
      {
        v12 = v13 + 1;
      }

      else
      {
        v12 = v13;
      }

      v21 = v14 ^ v20;
      v22 = v14 ^ mask;
      *a3 = v22;
      *a3++ = v21 & v11 ^ v21 & 0x5555555555555555 ^ v22 ^ mask;
      v13 = 0;
      --a1;
    }

    while (a1);
  }

  return v12 & a2;
}

uint64_t cczp_is_quadratic_residue_ws(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = cczp_n(a2);
  v7 = *(a1 + 16);
  v8 = (*(a1 + 24))(a1, v6);
  v9 = cczp_prime(a2);
  ccn_set(v6, v8, v9);
  v8->i64[0] &= ~1uLL;
  v10 = (*(a1 + 24))(a1, v6);
  ccn_shift_right(v6, v10, v8, 1);
  v11 = (*(a1 + 24))(a1, v6);
  LODWORD(a3) = -(cczp_power_fast_ws(a1, a2, v11, a3, v10) != 0);
  cczp_from_ws(a1, a2);
  v12 = (*v11 | ccn_n(v6, v11)) != 1;
  *(a1 + 16) = v7;
  return !v12 ? a3 : -1;
}

uint64_t ccdrbg_reseed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = timingsafe_enable_if_supported();
  v12 = (*(a1 + 16))(a2, a3, a4, a5, a6);
  cc_disable_dit_with_sb(&v14);
  return v12;
}

uint64_t ccdrbg_generate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = timingsafe_enable_if_supported();
  v12 = (*(a1 + 24))(a2, a3, a4, a5, a6);
  cc_disable_dit_with_sb(&v14);
  return v12;
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

uint64_t ccn_p384_inv_asm_ws(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v7 = *(a1 + 16);
  v8 = (*(a1 + 24))(a1, 6);
  v9 = (*(a1 + 24))(a1, 6);
  v10 = (*(a1 + 24))(a1, 6);
  ccn_mulmod_p384(v10, a4, a4);
  ccn_mulmod_p384(v9, v10, a4);
  ccn_mulmod_p384(v9, v9, v9);
  ccn_mulmod_p384(v9, v9, v9);
  ccn_mulmod_p384(v8, v9, a4);
  ccn_mulmod_p384(v9, v8, v10);
  v11 = 4;
  do
  {
    ccn_mulmod_p384(v9, v9, v9);
    --v11;
  }

  while (v11);
  ccn_mulmod_p384(v8, v8, v9);
  ccn_mulmod_p384(v9, v8, v10);
  v12 = 8;
  do
  {
    ccn_mulmod_p384(v9, v9, v9);
    --v12;
  }

  while (v12);
  ccn_mulmod_p384(v8, v8, v9);
  ccn_mulmod_p384(v9, v8, v10);
  v13 = 16;
  do
  {
    ccn_mulmod_p384(v9, v9, v9);
    --v13;
  }

  while (v13);
  ccn_mulmod_p384(v8, v8, v9);
  ccn_mulmod_p384(v9, v8, a4);
  ccn_mulmod_p384(v10, v9, a4);
  v14 = 32;
  do
  {
    ccn_mulmod_p384(v10, v10, v10);
    --v14;
  }

  while (v14);
  ccn_mulmod_p384(v9, v10, v9);
  v15 = 64;
  do
  {
    ccn_mulmod_p384(v10, v10, v10);
    --v15;
  }

  while (v15);
  ccn_mulmod_p384(v10, v10, v8);
  ccn_mulmod_p384(v8, v9, a4);
  v16 = 64;
  do
  {
    ccn_mulmod_p384(v8, v8, v8);
    --v16;
  }

  while (v16);
  ccn_mulmod_p384(v9, v8, v9);
  ccn_mulmod_p384(v8, v9, a4);
  v17 = 128;
  do
  {
    ccn_mulmod_p384(v8, v8, v8);
    --v17;
  }

  while (v17);
  ccn_mulmod_p384(v8, v8, v9);
  v18 = 128;
  do
  {
    ccn_mulmod_p384(v8, v8, v8);
    --v18;
  }

  while (v18);
  ccn_mulmod_p384(v9, v8, v10);
  ccn_mulmod_p384(v8, v9, a4);
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v20 = 1;
  ccn_mulmod_p384(v8, v8, &v20);
  if (ccn_n(6, v8) == 1 && *v8 == 1)
  {
    ccn_set(6, a3, v9);
    result = 0;
  }

  else
  {
    result = 4294967254;
  }

  *(a1 + 16) = v7;
  return result;
}

void *ccn_p384_from_asm_ws(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v5 = 1;
  return ccn_mulmod_p384(a3, a4, &v5);
}

uint64_t cczp_div2_ws(uint64_t a1, uint64_t a2, int8x16_t *a3, uint64_t *a4)
{
  v7 = cczp_n(a2);
  v8 = *a4;
  v9 = cczp_prime(a2);
  v10 = ccn_cond_add(v7, v8 & 1, a3->i64, a4, v9);
  result = ccn_shift_right(v7, a3, a3, 1);
  a3->i64[v7 - 1] |= v10 << 63;
  return result;
}

uint64_t cczp_modn_ws(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v10 = cczp_n(a2);
  v11 = v10;
  v22 = (a4 - 1) / v10;
  if (v22 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = (a4 - 1) / v10;
  }

  v20 = a4;
  v21 = *(a1 + 16);
  v13 = (*(a1 + 24))(a1, 2 * v10);
  v23 = a5;
  ccn_set(v11, v13, a5);
  v19 = v12;
  v14 = v12 - 1;
  if (v14)
  {
    v15 = 0;
    v16 = &v23[8 * v11];
    do
    {
      ++v15;
      ccn_set(v11, &v13[8 * v11], v16);
      cczp_mm_redc_ws(a1, a2, v13, v13);
      v16 += 8 * v11;
    }

    while (v15 < v14);
  }

  if (v20 != v19 * v11)
  {
    ccn_set(v20 - v19 * v11, &v13[8 * v11], &v23[8 * v19 * v11]);
  }

  ccn_zero(v11 - (v20 - v19 * v11), &v13[8 * v11 + 8 * (v20 - v19 * v11)]);
  cczp_mm_redc_ws(a1, a2, a3, v13);
  v17 = 0;
  do
  {
    ccn_mul_ws(a1, v11, v13, a3, &a2[*a2 + 4]);
    result = cczp_mm_redc_ws(a1, a2, a3, v13);
    ++v17;
  }

  while (v22 > v17);
  *(a1 + 16) = v21;
  return result;
}

uint64_t cczp_mod_default_ws(uint64_t a1, void *a2, uint64_t *a3, char *a4)
{
  v8 = 2 * cczp_n(a2);

  return cczp_modn_ws(a1, a2, a3, v8, a4);
}

uint64_t cczp_mul_default_ws(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 16);
  v10 = cczp_n(a2);
  v11 = (*(a1 + 24))(a1, 2 * v10);
  v12 = cczp_n(a2);
  ccn_mul_ws(a1, v12, v11, a4, a5);
  result = cczp_mod_ws(a1, a2);
  *(a1 + 16) = v9;
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

uint64_t cccmac_update_internal(void *a1, unint64_t a2, char *__src)
{
  result = 0;
  if (a2)
  {
    v5 = __src;
    if (__src)
    {
      v6 = a2;
      v7 = a1[8];
      memset(&v12[2], 0, 224);
      v8 = a1[6];
      if (16 - v8 >= a2)
      {
        v9 = a2;
      }

      else
      {
        v9 = 16 - v8;
      }

      memset(v12, 0, 32);
      if (v8 > 0x10)
      {
        return 0xFFFFFFFFLL;
      }

      if (v8)
      {
        memcpy(a1 + v8 + 32, __src, v9);
        a1[6] += v9;
        v6 -= v9;
        if (!v6)
        {
          return 0;
        }

        v5 += v9;
        cccbc_update_internal(v7, (a1 + 9), a1 + *v7 + 72, 1, (a1 + 4), v12);
        a1[7] += 16;
      }

      if (v6 >= 0x11)
      {
        v10 = (v6 - 1) >> 4;
        do
        {
          if (v10 >= 0x10)
          {
            v11 = 16;
          }

          else
          {
            v11 = v10;
          }

          cccbc_update_internal(v7, (a1 + 9), a1 + *v7 + 72, v11, v5, v12);
          v5 += 16 * v11;
          v10 -= v11;
        }

        while (v10);
      }

      __memcpy_chk();
      result = 0;
      a1[6] = v6 - ((v6 - 1) & 0xFFFFFFFFFFFFFFF0);
    }
  }

  return result;
}

uint64_t cccmac_update(void *a1, unint64_t a2, char *a3)
{
  v8 = timingsafe_enable_if_supported();
  updated = cccmac_update_internal(a1, a2, a3);
  cc_disable_dit_with_sb(&v8);
  return updated;
}

uint64_t cczp_sqr_default_ws(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v7 = *(a1 + 16);
  v8 = cczp_n(a2);
  v9 = (*(a1 + 24))(a1, 2 * v8);
  ccn_sqr_ws(a1, v8, v9, a4);
  result = cczp_mod_ws(a1, a2);
  *(a1 + 16) = v7;
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

uint64_t cccmac_init_internal(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  result = 4294967289;
  if (a3 <= 0x20 && ((1 << a3) & 0x101010000) != 0)
  {
    v9 = a2 + 72;
    cccbc_init_internal(a1);
    __src[0] = 0;
    __src[1] = 0;
    cccbc_set_iv_internal(a1, (v9 + *a1), __src);
    *(a2 + 56) = 0;
    *(a2 + 64) = a1;
    *(a2 + 48) = 0;
    return cccmac_generate_subkeys(a1, a3, a4, a2, a2 + 16);
  }

  return result;
}

uint64_t cccmac_init(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  inited = cccmac_init_internal(a1, a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return inited;
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

void *ccsha384_di()
{
  if (MEMORY[0xFFFFFC010] < 0)
  {
    return &ccsha384_vng_arm_hw_di;
  }

  else
  {
    return &ccsha384_vng_arm_di;
  }
}

void *ccsha512_di()
{
  if (MEMORY[0xFFFFFC010] < 0)
  {
    return &ccsha512_vng_arm_hw_di;
  }

  else
  {
    return &ccsha512_vng_arm_di;
  }
}

void *ccsha3_256_di()
{
  if ((MEMORY[0xFFFFFC010] & 0x100000000) != 0)
  {
    return &ccsha3_256_vng_hwassist_di;
  }

  else
  {
    return &ccsha3_256_vng_di;
  }
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

uint64_t OUTLINED_FUNCTION_1_4()
{
  v3 = *(*(v0 + 8) + 8);

  return cc_clear(v3, v1);
}

void *cc_malloc_clear(size_t a1)
{
  v2 = malloc(a1);
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

void cc_ws_free(uint64_t a1)
{
  cc_try_abort_if (*(a1 + 16) > *(a1 + 8));
  cc_clear(8 * *(a1 + 8), *a1);
  free(*a1);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

int32x4_t *ccchacha20_update_internal(int32x4_t *result, unint64_t a2, int8x16_t *a3, int8x16_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = result;
  v8 = result[8].i64[0];
  if (v8)
  {
    v9 = 64 - v8;
    if (64 - v8 >= a2)
    {
      v9 = a2;
    }

    if (v9)
    {
      v10 = &result[3].i64[1] + v8 + 7;
      v11 = v9;
      do
      {
        a4[-1].i8[v11 + 15] = *(v10 + v11) ^ a3[-1].i8[v11 + 15];
        --v11;
      }

      while (v11);
      v8 = result[8].i64[0];
    }

    v5 = (a3 + v9);
    v6 = a2 - v9;
    v4 = (a4 + v9);
    result[8].i64[0] = (v8 + v9) & 0x1FF;
  }

  if (v6 >= 0x40)
  {
    result = _ccchacha20_xor(result, v6 & 0xFFFFFFFFFFFFFFC0, v4, v5);
    v5 = (v5 + (v6 & 0xFFFFFFFFFFFFFFC0));
    v4 = (v4 + (v6 & 0xFFFFFFFFFFFFFFC0));
    v6 &= 0x3Fu;
  }

  if (v6)
  {
    result = _ccchacha20_xor(v7, 0x40uLL, &v7[4], kZero64);
    v12 = v6;
    do
    {
      v4[-1].i8[v12 + 15] = v7[3].i8[v12 + 15] ^ v5[-1].i8[v12 + 15];
      --v12;
    }

    while (v12);
    v7[8].i64[0] = v6;
  }

  return result;
}

int32x4_t *_ccchacha20_xor(int32x4_t *result, unint64_t a2, int8x16_t *a3, int8x16_t *a4)
{
  v5 = result[1];
  v4 = result[2];
  v6 = result[3];
  v7 = a2 / 0xC0;
  if (a2 >= 0xC0)
  {
    v8 = 0;
    do
    {
      v9 = vaddq_s32(v6, xmmword_33BC90);
      v10 = result[1].i32[0];
      v11 = result[1].i32[1];
      v13 = result[1].i32[2];
      v12 = result[1].i32[3];
      v14 = result[2].i32[0];
      v15 = result[2].i32[1];
      v16 = result[2].i32[2];
      v17 = result[2].i32[3];
      v18 = 3 * v8 + 2;
      v19 = result[3].i32[1];
      v20 = result[3].i32[0] + v18;
      v21 = -10;
      v22 = 1634760805;
      v23 = 857760878;
      v24 = 2036477234;
      v25 = 1797285236;
      v26 = xmmword_33D800;
      v27 = v5;
      v28 = v4;
      v29 = v6;
      v30 = xmmword_33D800;
      v31 = v5;
      v32 = v4;
      v33 = v9;
      v35 = result[3].i32[2];
      v34 = result[3].i32[3];
      do
      {
        v36 = vaddq_s32(v26, v27);
        v37 = vrev32q_s16(veorq_s8(v36, v29));
        v38 = vaddq_s32(v28, v37);
        v39 = veorq_s8(v38, v27);
        v40 = vsraq_n_u32(vshlq_n_s32(v39, 0xCuLL), v39, 0x14uLL);
        v41 = vaddq_s32(v40, v36);
        v42 = veorq_s8(v41, v37);
        v43 = vsraq_n_u32(vshlq_n_s32(v42, 8uLL), v42, 0x18uLL);
        v44 = vaddq_s32(v43, v38);
        v45 = veorq_s8(v44, v40);
        v46 = vsraq_n_u32(vshlq_n_s32(v45, 7uLL), v45, 0x19uLL);
        v47 = vextq_s8(v46, v46, 4uLL);
        v48 = vaddq_s32(v47, v41);
        v49 = vrev32q_s16(veorq_s8(v48, vextq_s8(v43, v43, 0xCuLL)));
        v50 = vaddq_s32(vextq_s8(v44, v44, 8uLL), v49);
        v51 = veorq_s8(v50, v47);
        v52 = vsraq_n_u32(vshlq_n_s32(v51, 0xCuLL), v51, 0x14uLL);
        v26 = vaddq_s32(v52, v48);
        v53 = veorq_s8(v26, v49);
        v54 = vsraq_n_u32(vshlq_n_s32(v53, 8uLL), v53, 0x18uLL);
        v55 = vaddq_s32(v54, v50);
        v56 = veorq_s8(v55, v52);
        v57 = vsraq_n_u32(vshlq_n_s32(v56, 7uLL), v56, 0x19uLL);
        v27 = vextq_s8(v57, v57, 0xCuLL);
        v28 = vextq_s8(v55, v55, 8uLL);
        v29 = vextq_s8(v54, v54, 4uLL);
        v58 = vaddq_s32(v30, v31);
        v59 = vrev32q_s16(veorq_s8(v58, v33));
        v60 = vaddq_s32(v32, v59);
        v61 = veorq_s8(v60, v31);
        v62 = v22 + v10;
        v63 = (v22 + v10) ^ v20;
        HIDWORD(v64) = v63;
        LODWORD(v64) = v63;
        v65 = vsraq_n_u32(vshlq_n_s32(v61, 0xCuLL), v61, 0x14uLL);
        v66 = (v64 >> 16) + v14;
        v67 = v66 ^ v10;
        HIDWORD(v64) = v67;
        LODWORD(v64) = v67;
        v68 = (v64 >> 20) + v62;
        v70 = vaddq_s32(v65, v58);
        LODWORD(v64) = v68 ^ __ROR4__(v63, 16);
        v69 = v64;
        HIDWORD(v64) = v64;
        v71 = (v64 >> 24) + v66;
        v73 = veorq_s8(v70, v59);
        LODWORD(v64) = v71 ^ __ROR4__(v67, 20);
        v72 = v64;
        HIDWORD(v64) = v64;
        v74 = v64 >> 25;
        v75 = v23 + v11;
        v76 = v75 ^ v19;
        HIDWORD(v64) = v76;
        LODWORD(v64) = v76;
        v77 = (v64 >> 16) + v15;
        v78 = v77 ^ v11;
        HIDWORD(v64) = v78;
        LODWORD(v64) = v78;
        v79 = (v64 >> 20) + v75;
        LODWORD(v64) = v79 ^ __ROR4__(v76, 16);
        v80 = v64;
        HIDWORD(v64) = v64;
        v81 = vsraq_n_u32(vshlq_n_s32(v73, 8uLL), v73, 0x18uLL);
        v82 = (v64 >> 24) + v77;
        LODWORD(v64) = v82 ^ __ROR4__(v78, 20);
        v83 = v64;
        HIDWORD(v64) = v64;
        v84 = v64 >> 25;
        v85 = v24 + v13;
        v86 = v85 ^ v35;
        HIDWORD(v64) = v86;
        LODWORD(v64) = v86;
        v87 = (v64 >> 16) + v16;
        v88 = v87 ^ v13;
        HIDWORD(v64) = v87 ^ v13;
        LODWORD(v64) = v87 ^ v13;
        v89 = vaddq_s32(v81, v60);
        v90 = veorq_s8(v89, v65);
        v91 = (v64 >> 20) + v85;
        LODWORD(v64) = v91 ^ __ROR4__(v86, 16);
        v92 = v64;
        HIDWORD(v64) = v64;
        v93 = vsraq_n_u32(vshlq_n_s32(v90, 7uLL), v90, 0x19uLL);
        v94 = (v64 >> 24) + v87;
        v96 = vextq_s8(v93, v93, 4uLL);
        LODWORD(v64) = v94 ^ __ROR4__(v88, 20);
        v95 = v64;
        HIDWORD(v64) = v64;
        v97 = v64 >> 25;
        v98 = vaddq_s32(v96, v70);
        v99 = vrev32q_s16(veorq_s8(v98, vextq_s8(v81, v81, 0xCuLL)));
        v100 = v25 + v12;
        v101 = (v25 + v12) ^ v34;
        HIDWORD(v64) = v101;
        LODWORD(v64) = v101;
        v102 = vaddq_s32(vextq_s8(v89, v89, 8uLL), v99);
        v103 = veorq_s8(v102, v96);
        v104 = (v64 >> 16) + v17;
        v105 = v104 ^ v12;
        HIDWORD(v64) = v105;
        LODWORD(v64) = v105;
        v106 = vsraq_n_u32(vshlq_n_s32(v103, 0xCuLL), v103, 0x14uLL);
        v30 = vaddq_s32(v106, v98);
        v107 = veorq_s8(v30, v99);
        v108 = (v64 >> 20) + v100;
        v110 = vsraq_n_u32(vshlq_n_s32(v107, 8uLL), v107, 0x18uLL);
        v111 = vaddq_s32(v110, v102);
        LODWORD(v64) = v108 ^ __ROR4__(v101, 16);
        v109 = v64;
        HIDWORD(v64) = v64;
        v112 = veorq_s8(v111, v106);
        v113 = vsraq_n_u32(vshlq_n_s32(v112, 7uLL), v112, 0x19uLL);
        v114 = (v64 >> 24) + v104;
        v31 = vextq_s8(v113, v113, 0xCuLL);
        v32 = vextq_s8(v111, v111, 8uLL);
        LODWORD(v64) = v114 ^ __ROR4__(v105, 20);
        v115 = v64;
        HIDWORD(v64) = v64;
        v116 = v64 >> 25;
        LODWORD(v64) = (v84 + v68) ^ __ROR4__(v109, 24);
        v117 = v64;
        HIDWORD(v64) = v64;
        v118 = (v64 >> 16) + v94;
        LODWORD(v64) = v118 ^ __ROR4__(v83, 25);
        v119 = v64;
        HIDWORD(v64) = v64;
        v22 = (v64 >> 20) + v84 + v68;
        LODWORD(v64) = v22 ^ __ROR4__(v117, 16);
        HIDWORD(v64) = v64;
        v34 = v64 >> 24;
        v16 = v34 + v118;
        LODWORD(v64) = (v34 + v118) ^ __ROR4__(v119, 20);
        HIDWORD(v64) = v64;
        v11 = v64 >> 25;
        v120 = v97 + v79;
        v121 = (v97 + v79) ^ __ROR4__(v69, 24);
        HIDWORD(v64) = v121;
        LODWORD(v64) = v121;
        v122 = (v64 >> 16) + v114;
        LODWORD(v64) = v122 ^ __ROR4__(v95, 25);
        v123 = v64;
        HIDWORD(v64) = v64;
        v23 = (v64 >> 20) + v120;
        LODWORD(v64) = v23 ^ __ROR4__(v121, 16);
        HIDWORD(v64) = v64;
        v20 = v64 >> 24;
        v17 = v20 + v122;
        LODWORD(v64) = v17 ^ __ROR4__(v123, 20);
        HIDWORD(v64) = v64;
        v13 = v64 >> 25;
        v124 = v116 + v91;
        LODWORD(v64) = (v116 + v91) ^ __ROR4__(v80, 24);
        v125 = v64;
        HIDWORD(v64) = v64;
        v126 = (v64 >> 16) + v71;
        LODWORD(v64) = v126 ^ __ROR4__(v115, 25);
        v127 = v64;
        HIDWORD(v64) = v64;
        v24 = (v64 >> 20) + v124;
        LODWORD(v64) = v24 ^ __ROR4__(v125, 16);
        HIDWORD(v64) = v64;
        v19 = v64 >> 24;
        v14 = v19 + v126;
        LODWORD(v64) = (v19 + v126) ^ __ROR4__(v127, 20);
        HIDWORD(v64) = v64;
        v12 = v64 >> 25;
        v128 = v74 + v108;
        LODWORD(v64) = v128 ^ __ROR4__(v92, 24);
        v129 = v64;
        HIDWORD(v64) = v64;
        v130 = (v64 >> 16) + v82;
        LODWORD(v64) = v130 ^ __ROR4__(v72, 25);
        v131 = v64;
        HIDWORD(v64) = v64;
        v25 = (v64 >> 20) + v128;
        LODWORD(v64) = v25 ^ __ROR4__(v129, 16);
        HIDWORD(v64) = v64;
        v35 = v64 >> 24;
        v33 = vextq_s8(v110, v110, 4uLL);
        v15 = v35 + v130;
        LODWORD(v64) = (v35 + v130) ^ __ROR4__(v131, 20);
        HIDWORD(v64) = v64;
        v10 = v64 >> 25;
        v132 = __CFADD__(v21++, 1);
      }

      while (!v132);
      *a3 = veorq_s8(*a4, vaddq_s32(v26, xmmword_33D800));
      a3[1] = veorq_s8(a4[1], vaddq_s32(v27, v5));
      a3[2] = veorq_s8(a4[2], vaddq_s32(v28, v4));
      a3[3] = veorq_s8(a4[3], vaddq_s32(v29, v6));
      a3[4] = veorq_s8(a4[4], vaddq_s32(v30, xmmword_33D800));
      a3[5] = veorq_s8(a4[5], vaddq_s32(v31, v5));
      a3[6] = veorq_s8(a4[6], vaddq_s32(v32, v4));
      a3[7] = veorq_s8(a4[7], vaddq_s32(v33, v9));
      a3[8].i32[0] = a4[8].i32[0] ^ (v22 + 1634760805);
      a3[8].i32[1] = a4[8].i32[1] ^ (v23 + 857760878);
      a3[8].i32[2] = a4[8].i32[2] ^ (v24 + 2036477234);
      a3[8].i32[3] = a4[8].i32[3] ^ (v25 + 1797285236);
      a3[9].i32[0] = (result[1].i32[0] + v10) ^ a4[9].i32[0];
      a3[9].i32[1] = (result[1].i32[1] + v11) ^ a4[9].i32[1];
      a3[9].i32[2] = (result[1].i32[2] + v13) ^ a4[9].i32[2];
      a3[9].i32[3] = (result[1].i32[3] + v12) ^ a4[9].i32[3];
      a3[10].i32[0] = (result[2].i32[0] + v14) ^ a4[10].i32[0];
      a3[10].i32[1] = (result[2].i32[1] + v15) ^ a4[10].i32[1];
      a3[10].i32[2] = (result[2].i32[2] + v16) ^ a4[10].i32[2];
      a3[10].i32[3] = (result[2].i32[3] + v17) ^ a4[10].i32[3];
      a3[11].i32[0] = (v20 + v18 + result[3].i32[0]) ^ a4[11].i32[0];
      a3[11].i32[1] = (result[3].i32[1] + v19) ^ a4[11].i32[1];
      a3[11].i32[2] = (result[3].i32[2] + v35) ^ a4[11].i32[2];
      a3[11].i32[3] = (result[3].i32[3] + v34) ^ a4[11].i32[3];
      v6 = vaddq_s32(v6, xmmword_33C570);
      a4 += 12;
      a3 += 12;
      ++v8;
    }

    while (v8 != v7);
  }

  v133 = a2 - 192 * v7;
  if (v133 >= 0x40)
  {
    v135 = v133 >> 6;
    v134 = &unk_33D000;
    do
    {
      v136 = -10;
      v137 = xmmword_33D800;
      v138 = v5;
      v139 = v4;
      v140 = v6;
      do
      {
        v141 = vaddq_s32(v137, v138);
        v142 = vrev32q_s16(veorq_s8(v141, v140));
        v143 = vaddq_s32(v139, v142);
        v144 = veorq_s8(v143, v138);
        v145 = vsraq_n_u32(vshlq_n_s32(v144, 0xCuLL), v144, 0x14uLL);
        v146 = vaddq_s32(v145, v141);
        v147 = veorq_s8(v146, v142);
        v148 = vsraq_n_u32(vshlq_n_s32(v147, 8uLL), v147, 0x18uLL);
        v149 = vaddq_s32(v148, v143);
        v150 = veorq_s8(v149, v145);
        v151 = vsraq_n_u32(vshlq_n_s32(v150, 7uLL), v150, 0x19uLL);
        v152 = vextq_s8(v151, v151, 4uLL);
        v153 = vaddq_s32(v152, v146);
        v154 = vrev32q_s16(veorq_s8(v153, vextq_s8(v148, v148, 0xCuLL)));
        v155 = vaddq_s32(vextq_s8(v149, v149, 8uLL), v154);
        v156 = veorq_s8(v155, v152);
        v157 = vsraq_n_u32(vshlq_n_s32(v156, 0xCuLL), v156, 0x14uLL);
        v137 = vaddq_s32(v157, v153);
        v158 = veorq_s8(v137, v154);
        v159 = vsraq_n_u32(vshlq_n_s32(v158, 8uLL), v158, 0x18uLL);
        v160 = vaddq_s32(v159, v155);
        v161 = veorq_s8(v160, v157);
        v162 = vsraq_n_u32(vshlq_n_s32(v161, 7uLL), v161, 0x19uLL);
        v138 = vextq_s8(v162, v162, 0xCuLL);
        v139 = vextq_s8(v160, v160, 8uLL);
        v140 = vextq_s8(v159, v159, 4uLL);
        v132 = __CFADD__(v136++, 1);
      }

      while (!v132);
      *a3 = veorq_s8(*a4, vaddq_s32(v137, xmmword_33D800));
      a3[1] = veorq_s8(a4[1], vaddq_s32(v138, v5));
      a3[2] = veorq_s8(a4[2], vaddq_s32(v139, v4));
      a3[3] = veorq_s8(a4[3], vaddq_s32(v140, v6));
      v6 = vaddq_s32(v6, xmmword_33BC90);
      a4 += 4;
      a3 += 4;
      --v135;
    }

    while (v135);
  }

  else
  {
    v134 = &unk_33D000;
  }

  v163 = a2 & 0x3F;
  if ((a2 & 0x3F) != 0)
  {
    v202 = 0u;
    v203 = 0u;
    v200 = 0u;
    v201 = 0u;
    v164 = v134[128];
    v165 = -10;
    v166 = v5;
    v167 = v4;
    v168 = v6;
    do
    {
      v169 = vaddq_s32(v164, v166);
      v170 = vrev32q_s16(veorq_s8(v169, v168));
      v171 = vaddq_s32(v167, v170);
      v172 = veorq_s8(v171, v166);
      v173 = vsraq_n_u32(vshlq_n_s32(v172, 0xCuLL), v172, 0x14uLL);
      v174 = vaddq_s32(v173, v169);
      v175 = veorq_s8(v174, v170);
      v176 = vsraq_n_u32(vshlq_n_s32(v175, 8uLL), v175, 0x18uLL);
      v177 = vaddq_s32(v176, v171);
      v178 = veorq_s8(v177, v173);
      v179 = vsraq_n_u32(vshlq_n_s32(v178, 7uLL), v178, 0x19uLL);
      v180 = vextq_s8(v179, v179, 4uLL);
      v181 = vaddq_s32(v180, v174);
      v182 = vrev32q_s16(veorq_s8(v181, vextq_s8(v176, v176, 0xCuLL)));
      v183 = vaddq_s32(vextq_s8(v177, v177, 8uLL), v182);
      v184 = veorq_s8(v183, v180);
      v185 = vsraq_n_u32(vshlq_n_s32(v184, 0xCuLL), v184, 0x14uLL);
      v164 = vaddq_s32(v185, v181);
      v186 = veorq_s8(v164, v182);
      v187 = vsraq_n_u32(vshlq_n_s32(v186, 8uLL), v186, 0x18uLL);
      v188 = vaddq_s32(v187, v183);
      v189 = veorq_s8(v188, v185);
      v190 = vsraq_n_u32(vshlq_n_s32(v189, 7uLL), v189, 0x19uLL);
      v166 = vextq_s8(v190, v190, 0xCuLL);
      v167 = vextq_s8(v188, v188, 8uLL);
      v168 = vextq_s8(v187, v187, 4uLL);
      v132 = __CFADD__(v165++, 1);
    }

    while (!v132);
    if (v163 < 0x10)
    {
      v200 = vaddq_s32(v164, v134[128]);
    }

    else
    {
      *a3 = veorq_s8(*a4, vaddq_s32(v164, v134[128]));
      if (v163 < 0x20)
      {
        v201 = vaddq_s32(v166, v5);
      }

      else
      {
        a3[1] = veorq_s8(a4[1], vaddq_s32(v166, v5));
        if (v163 < 0x30)
        {
          v202 = vaddq_s32(v167, v4);
        }

        else
        {
          a3[2] = veorq_s8(a4[2], vaddq_s32(v167, v4));
          v203 = vaddq_s32(v168, v6);
        }
      }
    }

    v191 = a2 & 0x30;
    v192 = v163 - v191;
    if (v163 > v191)
    {
      v193 = &a3->i8[v191];
      v194 = &v200.i8[v191];
      v195 = &a4->i8[v191];
      do
      {
        v197 = *v195++;
        v196 = v197;
        v198 = *v194++;
        *v193++ = v198 ^ v196;
        --v192;
      }

      while (v192);
    }
  }

  result[3].i32[0] = v6.i32[0];
  return result;
}

uint64_t ccpoly1305_init_internal(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 4);
  v4 = *(a2 + 8);
  v5 = *(a2 + 12);
  v6 = (*a2 >> 26) & 0x3FFFF03;
  *result = *a2 & 0x3FFFFFF;
  *(result + 4) = v6;
  v7 = (__PAIR64__(v4, v3) >> 20) & 0x3FFC0FF;
  v8 = (__PAIR64__(v5, v4) >> 14) & 0x3F03FFF;
  *(result + 8) = v7;
  *(result + 12) = v8;
  v9 = (v5 >> 8) & 0xFFFFF;
  *(result + 16) = v9;
  *(result + 20) = 5 * v6;
  *(result + 24) = 5 * v7;
  *(result + 28) = 5 * v8;
  *(result + 32) = 5 * v9;
  *(result + 72) = 0;
  *(result + 44) = 0;
  *(result + 36) = 0;
  *(result + 52) = 0;
  do
  {
    *(result + 80 + v2) = *(a2 + 16 + v2);
    ++v2;
  }

  while (v2 != 16);
  return result;
}

unsigned int *ccpoly1305_update_internal(unsigned int *result, unint64_t a2, unsigned int *a3)
{
  v3 = a3;
  v4 = a2;
  v5 = result;
  v6 = *(result + 9);
  if (v6)
  {
    v7 = 16 - v6;
    if (16 - v6 >= a2)
    {
      v7 = a2;
    }

    if (v7)
    {
      v8 = result + 14;
      v9 = a3;
      v10 = v7;
      do
      {
        v11 = *v9;
        v9 = (v9 + 1);
        *(v8 + *(result + 9)) = v11;
        v8 = (v8 + 1);
        --v10;
      }

      while (v10);
      v6 = *(result + 9);
    }

    v12 = v6 + v7;
    *(result + 9) = v12;
    v4 = a2 - v7;
    v3 = (a3 + v7);
    if (v12 == 16)
    {
      result = _ccpoly1305_update(result, 0x10uLL, result + 14);
      *(v5 + 9) = 0;
    }
  }

  if (v4 >= 0x10)
  {
    result = _ccpoly1305_update(v5, v4 & 0xFFFFFFFFFFFFFFF0, v3);
    v3 = (v3 + (v4 & 0xFFFFFFFFFFFFFFF0));
    v4 &= 0xFu;
  }

  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *(v5 + i + 56) = *(v3 + i);
    }

    *(v5 + 9) = v4;
  }

  return result;
}

uint64_t ccpoly1305_final_internal(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    _ccpoly1305_update(a1, v4, (a1 + 56));
  }

  v5 = *(a1 + 36);
  v6 = v5 & 0x3FFFFFF;
  v7 = *(a1 + 40) + (v5 >> 26);
  v8 = v7 & 0x3FFFFFF;
  v9 = *(a1 + 44) + (v7 >> 26);
  v10 = v9 & 0x3FFFFFF;
  v11 = *(a1 + 48) + (v9 >> 26);
  v12 = v11 & 0x3FFFFFF;
  v13 = *(a1 + 52) + (v11 >> 26);
  v14 = 5 * (v13 >> 26) + v6;
  v15 = v8 + ((v14 + 5) >> 26);
  v16 = v10 + (v15 >> 26);
  v17 = v12 + (v16 >> 26);
  v18 = (v13 | 0xFC000000) + (v17 >> 26);
  result = (v18 >> 31) - 1;
  v20 = v14 & (v18 >> 31) | result & 0x3FFFFFF & (v14 + 5);
  v21 = v8 & (v18 >> 31) | result & 0x3FFFFFF & v15;
  *(a1 + 36) = v20;
  *(a1 + 40) = v21;
  v22 = v10 & (v18 >> 31) | result & 0x3FFFFFF & v16;
  v23 = v12 & (v18 >> 31) | result & 0x3FFFFFF & v17;
  *(a1 + 44) = v22;
  *(a1 + 48) = v23;
  v24 = result & v18 | v13 & (v18 >> 31) & 0x3FFFFFF;
  *(a1 + 52) = v24;
  v25 = v20 | (v21 << 26);
  v26 = *(a1 + 80);
  v27 = *(a1 + 84);
  v28 = (v21 >> 6) | (v22 << 20);
  v29 = *(a1 + 92);
  v30 = ((v22 >> 12) | (v23 << 14)) + *(a1 + 88);
  *a2 = v25 + v26;
  v31 = v27 + __CFADD__(v25, v26) + v28;
  *(a2 + 7) = BYTE3(v31);
  *(a2 + 6) = BYTE2(v31);
  *(a2 + 4) = v31;
  v32 = v30 + HIDWORD(v31);
  *(a2 + 11) = BYTE3(v32);
  *(a2 + 10) = BYTE2(v32);
  *(a2 + 8) = v32;
  v33 = ((v23 >> 18) | (v24 << 8)) + v29 + HIDWORD(v32);
  *(a2 + 15) = BYTE3(v33);
  *(a2 + 14) = BYTE2(v33);
  *(a2 + 12) = v33;
  return result;
}

uint64_t ccchacha20poly1305_init(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = timingsafe_enable_if_supported();
  ccchacha20poly1305_init_internal(a2, a3);
  cc_disable_dit_with_sb(&v6);
  return 0;
}

double ccchacha20poly1305_init_internal(uint64_t a1, _DWORD *a2)
{
  result = 1.99237483e-62;
  *a1 = xmmword_33D800;
  *(a1 + 16) = *a2;
  *(a1 + 20) = a2[1];
  *(a1 + 24) = a2[2];
  *(a1 + 28) = a2[3];
  *(a1 + 32) = a2[4];
  *(a1 + 36) = a2[5];
  *(a1 + 40) = a2[6];
  v3 = a2[7];
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 1;
  *(a1 + 44) = v3;
  *(a1 + 128) = 0;
  return result;
}

uint64_t ccchacha20poly1305_setnonce(uint64_t a1, int32x4_t *a2, __int32 *a3)
{
  v7 = timingsafe_enable_if_supported();
  v5 = ccchacha20poly1305_setnonce_internal(a2, a3);
  cc_disable_dit_with_sb(&v7);
  return v5;
}

uint64_t ccchacha20poly1305_encrypt()
{
  v2 = timingsafe_enable_if_supported();
  v0 = ccchacha20poly1305_encrypt_internal();
  cc_disable_dit_with_sb(&v2);
  return v0;
}

uint64_t ccchacha20poly1305_decrypt()
{
  v2 = timingsafe_enable_if_supported();
  v0 = ccchacha20poly1305_decrypt_internal();
  cc_disable_dit_with_sb(&v2);
  return v0;
}

uint64_t ccchacha20poly1305_finalize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = timingsafe_enable_if_supported();
  v5 = ccchacha20poly1305_finalize_internal(a2, a3);
  cc_disable_dit_with_sb(&v7);
  return v5;
}

uint64_t ccchacha20poly1305_finalize_internal(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 248);
  if (v4 == 2)
  {
    ccpoly1305_update_internal((a1 + 136), -*(a1 + 232) & 0xFLL, kZero64);
    *(a1 + 248) = 3;
LABEL_4:
    ccpoly1305_update_internal((a1 + 136), -*(a1 + 240) & 0xFLL, kZero64);
    v6 = *(a1 + 232);
    ccpoly1305_update_internal((a1 + 136), 8uLL, &v6);
    v6 = *(a1 + 240);
    ccpoly1305_update_internal((a1 + 136), 8uLL, &v6);
    ccpoly1305_final_internal(a1 + 136, a2);
    result = 0;
    *(a1 + 248) = 5;
    return result;
  }

  if (v4 == 3)
  {
    goto LABEL_4;
  }

  return 1;
}

uint64_t ccchacha20poly1305_verify(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = timingsafe_enable_if_supported();
  v5 = ccchacha20poly1305_verify_internal(a2, a3);
  cc_disable_dit_with_sb(&v7);
  return v5;
}

uint64_t ccchacha20poly1305_verify_internal(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 248);
  if (v4 == 2)
  {
    ccpoly1305_update_internal((a1 + 136), -*(a1 + 232) & 0xFLL, kZero64);
    *(a1 + 248) = 4;
  }

  else if (v4 != 4)
  {
    return 1;
  }

  v6[0] = 0;
  v6[1] = 0;
  ccpoly1305_update_internal((a1 + 136), -*(a1 + 240) & 0xFLL, kZero64);
  v7 = *(a1 + 232);
  ccpoly1305_update_internal((a1 + 136), 8uLL, &v7);
  v7 = *(a1 + 240);
  ccpoly1305_update_internal((a1 + 136), 8uLL, &v7);
  ccpoly1305_final_internal(a1 + 136, v6);
  *(a1 + 248) = 5;
  if (cc_cmp_safe_internal(16, v6, a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

unsigned int *_ccpoly1305_update(unsigned int *result, unint64_t a2, unsigned int *a3)
{
  v4 = result;
  v34 = 0;
  v35 = 0;
  if (a2 < 0x10)
  {
    goto LABEL_5;
  }

  v5 = result[9];
  v6 = result[10];
  v8 = result[11];
  v7 = result[12];
  v9 = result[13];
LABEL_3:
  v10 = *a3;
  v11 = a3[1];
  v12 = a3[2];
  v13 = a3[3];
  a3 += 4;
  a2 -= 16;
  v14 = v5 + (v10 & 0x3FFFFFF);
  v15 = (((v10 | (v11 << 32)) >> 26) & 0x3FFFFFF) + v6;
  v4[9] = v14;
  v4[10] = v15;
  v16 = (((v11 | (v12 << 32)) >> 20) & 0x3FFFFFF) + v8;
  v17 = v7 + (((v12 | (v13 << 32)) >> 14) & 0x3FFFFFF);
  v4[11] = v16;
  v4[12] = v17;
  v18 = v9 + (v13 >> 8) + 0x1000000;
  for (v4[13] = v18; ; v18 = v4[13] + (HIDWORD(v35) >> 8))
  {
    v19 = v4[1];
    v21 = v4[7];
    v20 = v4[8];
    v22 = v4[6];
    v24 = v4[3];
    v23 = v4[4];
    v25 = *v4 * v14 + v20 * v15 + v21 * v16 + v22 * v17 + v4[5] * v18;
    v26 = v4[2];
    v27 = *v4 * v18;
    v28 = v25 & 0x3FFFFFF;
    v29 = *v4 * v15 + v20 * v16 + v21 * v17 + v22 * v18 + v19 * v14 + (v25 >> 26);
    v6 = v29 & 0x3FFFFFF;
    result = (*v4 * v16 + v20 * v17);
    v30 = result + v21 * v18 + v19 * v15 + v26 * v14 + (v29 >> 26);
    v8 = v30 & 0x3FFFFFF;
    v31 = *v4 * v17 + v20 * v18 + v19 * v16 + v26 * v15 + v24 * v14 + (v30 >> 26);
    v7 = v31 & 0x3FFFFFF;
    v4[11] = v30 & 0x3FFFFFF;
    v4[12] = v31 & 0x3FFFFFF;
    v32 = v27 + v19 * v17 + v26 * v16 + v24 * v15 + v23 * v14 + (v31 >> 26);
    v9 = v32 & 0x3FFFFFF;
    v4[13] = v32 & 0x3FFFFFF;
    v5 = 5 * (v32 >> 26) + v28;
    v4[9] = v5;
    v4[10] = v6;
    if (a2 > 0xF)
    {
      goto LABEL_3;
    }

LABEL_5:
    if (!a2)
    {
      break;
    }

    for (i = 0; i != a2; ++i)
    {
      *(&v34 + i) = *(a3 + i);
    }

    *(&v34 + a2) = 1;
    if ((i - 1) <= 0xD)
    {
      bzero(&v34 + i + 1, a2 ^ 0xF);
    }

    a2 = 0;
    v14 = v4[9] + (v34 & 0x3FFFFFF);
    v15 = (((v34 | (HIDWORD(v34) << 32)) >> 26) & 0x3FFFFFF) + v4[10];
    v16 = (((HIDWORD(v34) | (v35 << 32)) >> 20) & 0x3FFFFFF) + v4[11];
    v17 = v4[12] + (((v35 | (HIDWORD(v35) << 32)) >> 14) & 0x3FFFFFF);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3()
{
  result = 0;
  *(v0 + 240) += v1;
  return result;
}

int32x4_t *OUTLINED_FUNCTION_5_0()
{

  return ccchacha20_update_internal(v0, v1, v3, v2);
}

uint64_t ccec_compact_import_pub(unint64_t *a1, uint64_t a2, unsigned __int8 *a3, unint64_t **a4)
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

  v10 = ccec_compact_import_pub_ws(v12, a1, a2, a3, a4);
  v13(v12);
  return v10;
}

_BYTE *cc_disable_dit(_BYTE *result)
{
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) != 0 && *result == 1)
  {
    __asm { MSR             DIT, #0 }
  }

  return result;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v1 = qword_51A3C8;
  if (qword_51A3C8)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_51A3C8 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals_0, &dword_51A3AC, &dword_51A3B0);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

uint64_t ccrng_generate_bridge(uint64_t (**a1)(void))
{
  result = (*a1)();
  if (result)
  {
    abort();
  }

  return result;
}

BOOL keyIsCompactRepresentable(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  __chkstk_darwin(a1);
  v5 = (&v12 - v4);
  if (ccec_x963_import_pub(a3, v6, v7, (&v12 - v4)))
  {
    return 0;
  }

  result = ccec_validate_pub(v5);
  if (result)
  {
    v9 = *a3;
    __chkstk_darwin(result);
    v11 = (&v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    ccn_sub(v9, v11, *v5 + 3, &v5[**v5 + 2]);
    return ccn_cmp(v9, v11, &v5[**v5 + 2]) >= 0;
  }

  return result;
}

void *sub_268A2C(char *a1, uint64_t a2, uint64_t *a3)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v3;
  if (isUniquelyReferenced_nonNull_native)
  {
    v9 = *(v8 + 16);
    v10 = *(v8 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v11 = swift_allocObject();
    v9 = *(v8 + 16);
    *(v11 + 16) = v9;
    DigestSizeForDigestInfo = getDigestSizeForDigestInfo(v9);
    result = swift_slowAlloc();
    if ((DigestSizeForDigestInfo & 0x8000000000000000) != 0)
    {
      __break(1u);
      return result;
    }

    v10 = result;
    memmove(result, *(v8 + 24), DigestSizeForDigestInfo);
    *(v11 + 24) = v10;

    *v3 = v11;
  }

  if (a1)
  {
    v14 = a2 - a1;
  }

  else
  {
    v14 = 0;
  }

  return ccdigest_update(v9, v10, v14, a1);
}

uint64_t sub_268C40@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = a1();
  if (result)
  {
    v6 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = swift_allocObject();
    getDigestSizeForDigestInfo(v6);
    v8 = swift_slowAlloc();
    result = ccdigest_init(v6, v8);
    *(v7 + 16) = v6;
    *(v7 + 24) = v8;
    *a3 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_268D3C@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  result = a1();
  if (result)
  {
    v6 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = swift_allocObject();
    getDigestSizeForDigestInfo(v6);
    v8 = swift_slowAlloc();
    result = ccdigest_init(v6, v8);
    *(v7 + 16) = v6;
    *(v7 + 24) = v8;
    *a3 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_268DC8()
{
  result = qword_518B28;
  if (!qword_518B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_518B28);
  }

  return result;
}

unint64_t sub_268E1C(uint64_t a1)
{
  result = sub_268E44();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_268E44()
{
  result = qword_518B68;
  if (!qword_518B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_518B68);
  }

  return result;
}

unint64_t sub_268E9C()
{
  result = qword_518B70;
  if (!qword_518B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_518B70);
  }

  return result;
}

unint64_t sub_268EF4()
{
  result = qword_518BB0;
  if (!qword_518BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_518BB0);
  }

  return result;
}

unint64_t sub_268F48(uint64_t a1)
{
  result = sub_268F70();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_268F70()
{
  result = qword_518BF0;
  if (!qword_518BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_518BF0);
  }

  return result;
}

unint64_t sub_268FC8()
{
  result = qword_518BF8;
  if (!qword_518BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_518BF8);
  }

  return result;
}

unint64_t sub_269020()
{
  result = qword_518C38;
  if (!qword_518C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_518C38);
  }

  return result;
}

unint64_t sub_269074(uint64_t a1)
{
  result = sub_26909C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_26909C()
{
  result = qword_518C78;
  if (!qword_518C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_518C78);
  }

  return result;
}

unint64_t sub_2690F4()
{
  result = qword_518C80;
  if (!qword_518C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_518C80);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for SymmetricKey(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SymmetricKey(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2692E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_269340(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy256_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t sub_269400(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 256))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269420(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 256) = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2694C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_269524(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2695A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_269604(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_269698(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2696F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2697A8@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_303AE8();
  *(v3 + 16) = 32;
  *(v3 + 48) = 0u;
  *(v3 + 32) = 0u;
  result = ccdigest_final(*(v1 + 16));
  if (*(v3 + 16) == 32)
  {
    v5 = *(v3 + 48);
    v6 = *(v3 + 32);

    *a1 = v6;
    a1[1] = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269838@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_303AE8();
  *(v3 + 16) = 48;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 32) = 0u;
  result = ccdigest_final(*(v1 + 16));
  if (*(v3 + 16) == 48)
  {
    v5 = v3;
    v6 = *(v3 + 64);
    v7 = *(v3 + 72);
    v8 = *(v5 + 48);
    v9 = *(v5 + 32);

    *a1 = v9;
    *(a1 + 16) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2698D0@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_303AE8();
  *(v3 + 16) = 64;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 32) = 0u;
  result = ccdigest_final(*(v1 + 16));
  if (*(v3 + 16) == 64)
  {
    v5 = *(v3 + 32);
    v6 = *(v3 + 80);
    v7 = *(v3 + 64);
    v8 = *(v3 + 48);

    *a1 = v5;
    a1[1] = v8;
    a1[2] = v7;
    a1[3] = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269990@<X0>(void *a1@<X8>)
{
  v3 = sub_303AE8();
  v3[2] = 16;
  v3[5] = 0;
  v3[4] = 0;
  result = ccdigest_final(*(v1 + 16));
  if (v3[2] == 16)
  {
    v5 = v3[4];
    v6 = v3[5];

    *a1 = v5;
    a1[1] = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269A08@<X0>(void *a1@<X8>)
{
  v3 = sub_303AE8();
  *(v3 + 16) = 20;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  result = ccdigest_final(*(v1 + 16));
  if (*(v3 + 16) == 20)
  {
    v5 = v3;
    v6 = *(v3 + 32);
    v7 = *(v3 + 40);
    v8 = *(v5 + 48);

    *a1 = v6;
    a1[1] = v7;
    a1[2] = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_269AD8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269AF8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 96) = v3;
  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_269B84(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 136))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269BA4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 136) = v3;
  return result;
}

uint64_t sub_269C18(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_269C74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_269CD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_269D34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_269E10()
{
  result = sub_26FC90(6514035, 0xE300000000000000);
  qword_518D80 = result;
  *algn_518D88 = v1;
  return result;
}

uint64_t sub_269E40()
{
  v1 = *(v0 + 64);
  sub_2582E4(v1, *(v0 + 72));
  return v1;
}

uint64_t sub_269E74@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  if (a1 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = a1;
    v7 = a2;
    v2 = *(v3 + 40);
    v5 = *(v3 + 41);
    v6 = *(v3 + 42);
    v25 = *(v3 + 32);
    v8 = qword_5187B8;

    if (v8 == -1)
    {
      if (!(v4 >> 16))
      {
        goto LABEL_4;
      }

LABEL_8:
      __break(1u);
      goto LABEL_9;
    }
  }

  swift_once();
  if (v4 >> 16)
  {
    goto LABEL_8;
  }

LABEL_4:
  v22 = v7;
  if (qword_518858 != -1)
  {
LABEL_9:
    swift_once();
  }

  v23 = qword_519730;
  v24 = *algn_519738;
  v9 = qword_33DB10[v2];
  sub_2582E4(qword_519730, *algn_519738);
  v10 = sub_28D524(v9, 2);
  v12 = v11;
  sub_3035C8();
  sub_258780(v10, v12);
  v13 = sub_28D524(v5 + 1, 2);
  v15 = v14;
  sub_3035C8();
  sub_258780(v13, v15);
  v16 = sub_28D524(qword_33DB38[v6], 2);
  v18 = v17;
  sub_3035C8();
  sub_258780(v16, v18);
  v19 = v23;
  v20 = v24;
  LOBYTE(v23) = v5;
  sub_28A378(&v25, v4, &v23, v22);
  sub_258780(v19, v20);
}

uint64_t sub_26A0BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void (*a6)(_OWORD *__return_ptr, __int16 *, void, uint64_t *, void, unint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, void)@<X6>, _OWORD *a7@<X8>)
{
  v24 = a6;
  v14 = *(a4 - 8);
  __chkstk_darwin(a1);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 2);
  v28 = *v17;
  v29 = v18;
  v25 = 0;
  (*(v14 + 16))(v16, a1, v19);
  v24(v26, &v28, 0, &v25, 0, 0xF000000000000000, v16, a2, a3, a4, a5, v24);
  result = (*(v14 + 8))(a1, a4);
  if (!v7)
  {
    v21 = v26[1];
    *a7 = v26[0];
    a7[1] = v21;
    v22 = v26[2];
    v23 = v27;
    a7[3] = v27;
    a7[4] = v23;
    a7[2] = v22;
    return sub_2582E4(v23, *(&v23 + 1));
  }

  return result;
}

uint64_t sub_26A240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X5>, unint64_t a5@<X6>, uint64_t a6@<X7>, _OWORD *a7@<X8>, uint64_t a8)
{
  v29 = a3;
  v14 = *(a6 - 8);
  __chkstk_darwin(a1);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 2);
  v20 = *v19;
  v34 = *v17;
  v35 = v18;
  v31 = v20;
  (*(v14 + 16))(v16, a1, v21);
  sub_2582E4(a4, a5);
  v22 = v30;
  v23 = sub_28DA1C(&v34, 1, &v31, a4, a5, v16, a2, v29, v32, a6, a8);
  (*(v14 + 8))(a1, a6, v23);
  result = sub_258780(a4, a5);
  if (!v22)
  {
    v25 = v32[1];
    *a7 = v32[0];
    a7[1] = v25;
    v26 = v32[2];
    v27 = v33;
    a7[3] = v33;
    a7[4] = v27;
    a7[2] = v26;
    return sub_2582E4(v27, *(&v27 + 1));
  }

  return result;
}

uint64_t sub_26A3D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v32 = a4;
  v30 = a5;
  v31 = a3;
  v29 = a8;
  v12 = *(a6 - 8);
  __chkstk_darwin(a1);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v18 = &v29 - v17;
  LOWORD(v17) = *a2;
  v19 = *(a2 + 2);
  v20 = a1;
  v21 = v30;
  v37 = v17;
  v38 = v19;
  v34 = 0;
  (*(v16 + 16))(v18, v20, AssociatedTypeWitness);
  (*(v12 + 16))(v14, v21, a6);
  v22 = v33;
  v23 = sub_28E090(&v37, 2, &v34, 0, 0xF000000000000000, v18, v31, v32, v35, v14, a6, a7);
  (*(v12 + 8))(v21, a6, v23);
  if (v22)
  {
    return (*(v16 + 8))(v20, AssociatedTypeWitness);
  }

  (*(v16 + 8))(v20, AssociatedTypeWitness);
  v25 = v35[1];
  v26 = v29;
  *v29 = v35[0];
  v26[1] = v25;
  v27 = v35[2];
  v28 = v36;
  v26[3] = v36;
  v26[4] = v28;
  v26[2] = v27;
  return sub_2582E4(v28, *(&v28 + 1));
}

uint64_t sub_26A654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v37 = a8;
  v35 = a7;
  v36 = a4;
  v32 = a5;
  v33 = a6;
  v34 = a3;
  v31 = a9;
  v13 = *(a10 - 8);
  __chkstk_darwin(a1);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v19 = &v30 - v18;
  LOWORD(v18) = *a2;
  v20 = *(a2 + 2);
  v21 = v32;
  v22 = *v33;
  v42 = v18;
  v43 = v20;
  v39 = v22;
  (*(v17 + 16))(v19, a1, AssociatedTypeWitness);
  (*(v13 + 16))(v15, v21, a10);
  v23 = v38;
  v24 = sub_28E090(&v42, 3, &v39, v35, v37, v19, v34, v36, v40, v15, a10, a11);
  (*(v13 + 8))(v21, a10, v24);
  if (v23)
  {
    return (*(v17 + 8))(a1, AssociatedTypeWitness);
  }

  (*(v17 + 8))(a1, AssociatedTypeWitness);
  v26 = v40[1];
  v27 = v31;
  *v31 = v40[0];
  v27[1] = v26;
  v28 = v40[2];
  v29 = v41;
  v27[3] = v41;
  v27[4] = v29;
  v27[2] = v28;
  return sub_2582E4(v29, *(&v29 + 1));
}

uint64_t sub_26A8EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = xmmword_33DAD0;
  v6 = sub_258338();
  v7 = sub_28A7BC(a1, &v9, a2, &type metadata for Data, a3, v6);
  sub_258780(v9, *(&v9 + 1));
  return v7;
}

double sub_26AA14@<D0>(uint64_t a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, uint64_t a11, void (*a12)(_OWORD *__return_ptr, __int16 *, void, uint64_t, uint64_t, uint64_t *, void, unint64_t, char *, uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  v36 = a6;
  v32 = a9;
  v33 = a3;
  v34 = a12;
  v35 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = sub_303B88();
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v31 - v20;
  v22 = *(a7 - 8);
  __chkstk_darwin(v19);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a2 + 2);
  v42 = *a2;
  v43 = v25;
  v38 = 0;
  (*(v22 + 16))(v24, a1, a7);
  (*(*(AssociatedTypeWitness - 8) + 56))(v21, 1, 1, AssociatedTypeWitness);
  v26 = v37;
  v34(v39, &v42, 0, v35, v36, &v38, 0, 0xF000000000000000, v24, v33, a4, v21, a7, a8);
  (*(v22 + 8))(a1, a7);
  if (!v26)
  {
    v28 = v39[1];
    v29 = v32;
    *v32 = v39[0];
    v29[1] = v28;
    result = *&v40;
    v30 = v41;
    v29[2] = v40;
    v29[3] = v30;
  }

  return result;
}

double sub_26AC30@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, unint64_t a10, uint64_t a11, uint64_t a12)
{
  v38 = a6;
  v33 = a7;
  v34 = a1;
  v36 = a3;
  v37 = a5;
  v35 = a4;
  v32 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_303B88();
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v31 - v17;
  v19 = *(a11 - 8);
  __chkstk_darwin(v16);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOWORD(v20) = *a2;
  v22 = *(a2 + 2);
  v23 = v34;
  v24 = *v33;
  v44 = v20;
  v45 = v22;
  v40 = v24;
  (*(v19 + 16))(v21, v34, a11);
  (*(*(AssociatedTypeWitness - 8) + 56))(v18, 1, 1, AssociatedTypeWitness);
  sub_2582E4(a8, a10);
  v25 = v39;
  v26 = sub_28E8B4(&v44, 1, v37, v38, &v40, a8, a10, v21, v41, v36, v35, v18, a11, a12);
  (*(v19 + 8))(v23, a11, v26);
  sub_258780(a8, a10);
  if (!v25)
  {
    v28 = v41[1];
    v29 = v32;
    *v32 = v41[0];
    v29[1] = v28;
    result = *&v42;
    v30 = v43;
    v29[2] = v42;
    v29[3] = v30;
  }

  return result;
}

double sub_26AE78@<D0>(uint64_t a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10)
{
  v36 = a6;
  v34 = a3;
  v35 = a5;
  v32 = a9;
  v33 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_303B88();
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v31 - v17;
  v19 = *(a8 - 8);
  __chkstk_darwin(v16);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a2 + 2);
  v44 = *a2;
  v45 = v22;
  v39 = a1;
  v40 = 0;
  (*(v19 + 16))(v21, a1, a8);
  v23 = *(AssociatedTypeWitness - 8);
  v24 = *(v23 + 16);
  v38 = a7;
  v24(v18, a7, AssociatedTypeWitness);
  (*(v23 + 56))(v18, 0, 1, AssociatedTypeWitness);
  v25 = v37;
  v26 = sub_28E8B4(&v44, 2, v35, v36, &v40, 0, 0xF000000000000000, v21, v41, v34, v33, v18, a8, a10);
  (*(v23 + 8))(v38, AssociatedTypeWitness, v26);
  (*(v19 + 8))(v39, a8);
  if (!v25)
  {
    v28 = v41[1];
    v29 = v32;
    *v32 = v41[0];
    v29[1] = v28;
    result = *&v42;
    v30 = v43;
    v29[2] = v42;
    v29[3] = v30;
  }

  return result;
}

double sub_26B120@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13)
{
  v43 = a6;
  v37 = a8;
  v38 = a4;
  v36 = a9;
  v41 = a10;
  v42 = a5;
  v39 = a3;
  v40 = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_303B88();
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v35 - v19;
  v21 = *(a12 - 8);
  __chkstk_darwin(v18);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOWORD(v22) = *a2;
  v24 = *(a2 + 2);
  v25 = a1;
  v26 = a7;
  v27 = *v37;
  v49 = v22;
  v50 = v24;
  v45 = v27;
  (*(v21 + 16))(v23, v25, a12);
  v28 = *(AssociatedTypeWitness - 8);
  (*(v28 + 16))(v20, v26, AssociatedTypeWitness);
  (*(v28 + 56))(v20, 0, 1, AssociatedTypeWitness);
  v29 = v44;
  v30 = sub_28E8B4(&v49, 3, v42, v43, &v45, v41, v40, v23, v46, v39, v38, v20, a12, a13);
  (*(v28 + 8))(v26, AssociatedTypeWitness, v30);
  (*(v21 + 8))(v25, a12);
  if (!v29)
  {
    v32 = v46[1];
    v33 = v36;
    *v36 = v46[0];
    v33[1] = v32;
    result = *&v47;
    v34 = v48;
    v33[2] = v47;
    v33[3] = v34;
  }

  return result;
}

uint64_t sub_26B3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = xmmword_33DAD0;
  v6 = sub_258338();
  v7 = sub_28A9B4(a1, &v9, a2, &type metadata for Data, a3, v6);
  sub_258780(v9, *(&v9 + 1));
  return v7;
}

uint64_t getEnumTagSinglePayload for HPKE(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for HPKE(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t destroy for HPKE.Sender(void *a1)
{

  v2 = a1[3];
  if (v2 >> 60 != 15)
  {
    sub_258780(a1[2], v2);
  }

  sub_258780(a1[6], a1[7]);
  v3 = a1[8];
  v4 = a1[9];

  return sub_258780(v3, v4);
}

uint64_t initializeWithCopy for HPKE.Sender(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);

  if (v5 >> 60 == 15)
  {
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
    sub_2582E4(v6, v5);
    *(a1 + 16) = v6;
    *(a1 + 24) = v5;
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 42) = *(a2 + 42);

  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  sub_2582E4(v7, v8);
  v11 = *(a2 + 64);
  sub_2582E4(*(a2 + 64), *(a2 + 72));
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  return a1;
}

uint64_t assignWithCopy for HPKE.Sender(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 24);
  if (*(a1 + 24) >> 60 != 15)
  {
    if (v4 >> 60 != 15)
    {
      v6 = *(a2 + 16);
      sub_2582E4(v6, *(a2 + 24));
      v7 = *(a1 + 16);
      v8 = *(a1 + 24);
      *(a1 + 16) = v6;
      *(a1 + 24) = v4;
      sub_258780(v7, v8);
      goto LABEL_8;
    }

    sub_26B7C8(a1 + 16);
    goto LABEL_6;
  }

  if (v4 >> 60 == 15)
  {
LABEL_6:
    *(a1 + 16) = *(a2 + 16);
    goto LABEL_8;
  }

  v5 = *(a2 + 16);
  sub_2582E4(v5, *(a2 + 24));
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
LABEL_8:
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 42) = *(a2 + 42);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  sub_2582E4(v9, v10);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  sub_258780(v11, v12);
  v14 = *(a2 + 64);
  v13 = *(a2 + 72);
  sub_2582E4(v14, v13);
  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  *(a1 + 64) = v14;
  *(a1 + 72) = v13;
  sub_258780(v15, v16);
  return a1;
}

uint64_t assignWithTake for HPKE.Sender(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a1 + 24);
  if (v5 >> 60 != 15)
  {
    v6 = *(a2 + 24);
    if (v6 >> 60 != 15)
    {
      v7 = *(a1 + 16);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = v6;
      sub_258780(v7, v5);
      goto LABEL_6;
    }

    sub_26B7C8(a1 + 16);
  }

  *(a1 + 16) = *(a2 + 16);
LABEL_6:
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  sub_258780(v8, v9);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  *(a1 + 64) = *(a2 + 64);
  sub_258780(v10, v11);
  return a1;
}

uint64_t getEnumTagSinglePayload for HPKE.Sender(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for HPKE.Sender(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s7ContextVwxx(uint64_t *a1)
{

  v2 = a1[3];
  if (v2 >> 60 != 15)
  {
    sub_258780(a1[2], v2);
  }

  v3 = a1[6];
  v4 = a1[7];

  return sub_258780(v3, v4);
}

uint64_t _s7ContextVwcp(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);

  if (v5 >> 60 == 15)
  {
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
    sub_2582E4(v6, v5);
    *(a1 + 16) = v6;
    *(a1 + 24) = v5;
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 42) = *(a2 + 42);
  v8 = *(a2 + 48);
  v7 = *(a2 + 56);

  sub_2582E4(v8, v7);
  *(a1 + 48) = v8;
  *(a1 + 56) = v7;
  return a1;
}

uint64_t _s7ContextVwca(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 24);
  if (*(a1 + 24) >> 60 != 15)
  {
    if (v4 >> 60 != 15)
    {
      v6 = *(a2 + 16);
      sub_2582E4(v6, *(a2 + 24));
      v7 = *(a1 + 16);
      v8 = *(a1 + 24);
      *(a1 + 16) = v6;
      *(a1 + 24) = v4;
      sub_258780(v7, v8);
      goto LABEL_8;
    }

    sub_26B7C8(a1 + 16);
    goto LABEL_6;
  }

  if (v4 >> 60 == 15)
  {
LABEL_6:
    *(a1 + 16) = *(a2 + 16);
    goto LABEL_8;
  }

  v5 = *(a2 + 16);
  sub_2582E4(v5, *(a2 + 24));
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
LABEL_8:
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 42) = *(a2 + 42);
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  sub_2582E4(v10, v9);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  *(a1 + 48) = v10;
  *(a1 + 56) = v9;
  sub_258780(v11, v12);
  return a1;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t _s7ContextVwta(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a1 + 24);
  if (v5 >> 60 != 15)
  {
    v6 = *(a2 + 24);
    if (v6 >> 60 != 15)
    {
      v7 = *(a1 + 16);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = v6;
      sub_258780(v7, v5);
      goto LABEL_6;
    }

    sub_26B7C8(a1 + 16);
  }

  *(a1 + 16) = *(a2 + 16);
LABEL_6:
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  sub_258780(v8, v9);
  return a1;
}

uint64_t _s7ContextVwet(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t _s7ContextVwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26BD04()
{
  v1 = *v0;
  if (*(v0 + 4) == 1)
  {
    if (v1 > 2)
    {
      if (v1 == 3)
      {
        v2 = 4;
      }

      else if (v1 == 4)
      {
        v2 = 5;
      }

      else
      {
        v2 = 6;
      }
    }

    else if (v1)
    {
      if (v1 == 1)
      {
        v2 = 1;
      }

      else
      {
        v2 = 2;
      }
    }

    else
    {
      v2 = 0;
    }

    sub_303DB8(v2);
  }

  else
  {
    sub_303DB8(3uLL);
    sub_303DD8(v1);
  }
}

Swift::Int sub_26BDA0()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_303D98();
  if (v2 == 1)
  {
    if (v1 > 2)
    {
      if (v1 == 3)
      {
        v3 = 4;
      }

      else if (v1 == 4)
      {
        v3 = 5;
      }

      else
      {
        v3 = 6;
      }
    }

    else if (v1)
    {
      if (v1 == 1)
      {
        v3 = 1;
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 0;
    }

    sub_303DB8(v3);
  }

  else
  {
    sub_303DB8(3uLL);
    sub_303DD8(v1);
  }

  return sub_303DE8();
}

Swift::Int sub_26BE60()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_303D98();
  if (v2 == 1)
  {
    if (v1 > 2)
    {
      if (v1 == 3)
      {
        v3 = 4;
      }

      else if (v1 == 4)
      {
        v3 = 5;
      }

      else
      {
        v3 = 6;
      }
    }

    else if (v1)
    {
      if (v1 == 1)
      {
        v3 = 1;
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 0;
    }

    sub_303DB8(v3);
  }

  else
  {
    sub_303DB8(3uLL);
    sub_303DD8(v1);
  }

  return sub_303DE8();
}

Swift::Int sub_26BF58()
{
  v1 = *v0;
  sub_303D98();
  sub_303DB8(v1);
  return sub_303DE8();
}

Swift::Int sub_26BFA0()
{
  v1 = *v0;
  sub_303D98();
  sub_303DB8(v1);
  return sub_303DE8();
}

uint64_t sub_26BFE4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4) != 1)
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 <= 2)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (v3 != 1)
        {
          v4 = 0;
        }

        return (v4 & 1) != 0;
      }

      if (v3 != 2)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v2 == 3)
  {
    if (v3 != 3)
    {
      v4 = 0;
    }

    return (v4 & 1) != 0;
  }

  if (v2 == 4)
  {
    if (v3 != 4)
    {
      v4 = 0;
    }

    return (v4 & 1) != 0;
  }

  if (v3 <= 4)
  {
    v4 = 0;
  }

  return (v4 & 1) != 0;
}

unint64_t sub_26C0B4()
{
  result = qword_518D90;
  if (!qword_518D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_518D90);
  }

  return result;
}

unint64_t sub_26C10C()
{
  result = qword_518D98;
  if (!qword_518D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_518D98);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CryptoKitError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CryptoKitError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t sub_26C1C0(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C1DC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CryptoKitASN1Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CryptoKitASN1Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26C378(uint64_t a1, uint64_t a2, uint64_t a3, size_t *a4, uint64_t a5, uint64_t a6)
{
  v9 = *a4;
  v15[0] = a2;
  v15[1] = a3;
  v14 = v9;
  v10 = type metadata accessor for HashedAuthenticationCode();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_26C648();
  return sub_26C42C(a1, v15, &v14, a5, v10, &type metadata for UnsafeRawBufferPointer, a6, WitnessTable, v12) & 1;
}

uint64_t sub_26C42C(uint64_t a1, uint64_t a2, size_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = a5;
  v27 = a8;
  v24 = a6;
  v25 = a1;
  v23 = a9;
  v13 = type metadata accessor for HashedAuthenticationCode();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23 - v15;
  v17 = type metadata accessor for HMAC();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v23 - v19;
  v28 = *a3;

  sub_26C69C(&v28, a4, a7);
  sub_26D048(a2, v17, v24, v23);
  sub_26D1B0(v17, v16);
  WitnessTable = swift_getWitnessTable();
  LOBYTE(a4) = sub_29C030(v25, v16, v26, v13, v27, WitnessTable);
  (*(v14 + 8))(v16, v13);
  (*(v18 + 8))(v20, v17);
  return a4 & 1;
}

unint64_t sub_26C648()
{
  result = qword_518DA0;
  if (!qword_518DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_518DA0);
  }

  return result;
}

uint64_t sub_26C69C(size_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  swift_beginAccess();
  v6 = *(v5 + 16);
  v7 = *(a3 + 24);
  if (v6 == v7(a2, a3))
  {
    goto LABEL_14;
  }

  v8 = *(v5 + 16);
  if (v7(a2, a3) >= v8)
  {
    result = v7(a2, a3);
    if ((result & 0x8000000000000000) == 0)
    {
      if (result)
      {
        v12 = result;
        v13 = sub_303AE8();
        v13[2] = v12;
        bzero(v13 + 4, v12);
      }

      else
      {
        v13 = _swiftEmptyArrayStorage;
      }

      v21 = v13;
      sub_26CC10(0, *(v5 + 16), (v5 + 32), v5 + 32 + *(v5 + 16));

      v5 = sub_26DDAC(v13);
      goto LABEL_13;
    }
  }

  else
  {
    result = v7(a2, a3);
    if ((result & 0x8000000000000000) == 0)
    {
      if (result)
      {
        v10 = result;
        v11 = sub_303AE8();
        v11[2] = v10;
        bzero(v11 + 4, v10);
      }

      else
      {
        v11 = _swiftEmptyArrayStorage;
      }

      v21 = v11;
      sub_26C9C8(v5 + 32, v5 + 32 + *(v5 + 16), &v21, a2, a3, &v20);

      v5 = v20;
LABEL_13:

LABEL_14:
      v14 = *(a3 + 32);
      v19 = v14;
      type metadata accessor for HMAC();
      v14(a2, a3);
      swift_beginAccess();
      v15 = (v5 + 32);
      sub_26CCFC((v5 + 32), (v5 + 32 + *(v5 + 16)), &v20);
      v16 = v5;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518DA8);
      v18 = sub_26E8CC(&qword_518DB0, &qword_518DA8);
      sub_293A24(&v20, a2, v17, a3, v18);

      v19(a2, a3);
      sub_26CE08(v15, &v15[*(v16 + 16)], &v20);
      sub_293A24(&v20, a2, v17, a3, v18);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26C9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, size_t *a6@<X8>)
{
  v18 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v17 - v13;
  sub_2938E8(a1, a2, a4, a5);
  v19 = a3;
  swift_getAssociatedConformanceWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518DA8);
  sub_3033E8();
  v15 = sub_26DDAC(v20);

  result = (*(v12 + 8))(v14, AssociatedTypeWitness);
  *v18 = v15;
  return result;
}

uint64_t sub_26CB78@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char **a3@<X2>, char **a4@<X8>)
{
  if (result)
  {
    v6 = result;
    v8 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_2AA214(0, *(v8 + 2), 0, v8);
    }

    *a3 = v8;
    memcpy(v8 + 32, v6, a2 - v6);
    *a4 = *a3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_26CC10(char *result, uint64_t a2, void *a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a3)
  {
    v12 = a4 - a3;
  }

  else
  {
    v12 = 0;
  }

  v13 = __OFSUB__(v12, v9);
  v14 = v12 - v9;
  if (v13)
  {
    goto LABEL_19;
  }

  v15 = v7 + v14;
  if (__OFADD__(v7, v14))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v15 > *(v6 + 3) >> 1)
  {
    if (v7 <= v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v7;
    }

    v6 = sub_2AA214(isUniquelyReferenced_nonNull_native, v17, 1, v6);
    *v4 = v6;
  }

  result = sub_26E3A0(v8, a2, v12, a3, a4);
  *v4 = v6;
  return result;
}

char *sub_26CCFC@<X0>(char *result@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v3 = _swiftEmptyArrayStorage;
  if (!result || (v4 = a2 - result, a2 == result))
  {
LABEL_3:
    *a3 = v3;
    return result;
  }

  v5 = result;
  v6 = a3;
  result = sub_26E49C(0, v4 & ~(v4 >> 63), 0);
  if (v4 >= 1)
  {
    v3 = _swiftEmptyArrayStorage;
    v7 = _swiftEmptyArrayStorage[2];
    a3 = v6;
    v8 = v5;
    do
    {
      v10 = *v8++;
      v9 = v10;
      v13 = v3;
      v11 = v3[3];
      if (v7 >= v11 >> 1)
      {
        v12 = v8;
        result = sub_26E49C((v11 > 1), v7 + 1, 1);
        v8 = v12;
        a3 = v6;
        v3 = v13;
      }

      v3[2] = v7 + 1;
      *(v3 + v7++ + 32) = v9 ^ 0x36;
      --v4;
    }

    while (v4);
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

char *sub_26CE08@<X0>(char *result@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v3 = _swiftEmptyArrayStorage;
  if (!result || (v4 = a2 - result, a2 == result))
  {
LABEL_3:
    *a3 = v3;
    return result;
  }

  v5 = result;
  v6 = a3;
  result = sub_26E49C(0, v4 & ~(v4 >> 63), 0);
  if (v4 >= 1)
  {
    v3 = _swiftEmptyArrayStorage;
    v7 = _swiftEmptyArrayStorage[2];
    a3 = v6;
    v8 = v5;
    do
    {
      v10 = *v8++;
      v9 = v10;
      v13 = v3;
      v11 = v3[3];
      if (v7 >= v11 >> 1)
      {
        v12 = v8;
        result = sub_26E49C((v11 > 1), v7 + 1, 1);
        v8 = v12;
        a3 = v6;
        v3 = v13;
      }

      v3[2] = v7 + 1;
      *(v3 + v7++ + 32) = v9 ^ 0x5C;
      --v4;
    }

    while (v4);
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t sub_26CF14@<X0>(uint64_t a1@<X0>, size_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = type metadata accessor for HMAC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v19 - v16;
  v20 = *a2;

  sub_26C69C(&v20, a3, a5);
  sub_26D048(a1, v14, a4, a6);
  sub_26D1B0(v14, a7);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_26D048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v14[-v10];
  sub_3032E8();
  v12 = *(a2 + 24);
  v15 = *(a2 + 16);
  v16 = a3;
  v17 = v12;
  v18 = a4;
  v19 = v4;
  swift_getAssociatedConformanceWitness();
  sub_303A88();
  return (*(v9 + 8))(v11, AssociatedTypeWitness);
}

uint64_t sub_26D1B0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v20 = a2;
  v3 = *(a1 + 16);
  v21 = *(v3 - 8);
  v4 = __chkstk_darwin(a1);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = __chkstk_darwin(AssociatedTypeWitness);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v20 - v14;
  __chkstk_darwin(v13);
  v17 = &v20 - v16;
  (*(v7 + 48))(v3, v7);
  (*(v21 + 16))(v6, v2, v3);
  v22 = v3;
  v23 = v7;
  v24 = v6;
  swift_getAssociatedConformanceWitness();
  sub_3033E8();
  (*(v9 + 8))(v17, AssociatedTypeWitness);
  v18 = *(v9 + 32);
  v18(v12, v15, AssociatedTypeWitness);
  v18(v20, v12, AssociatedTypeWitness);
  return (*(v21 + 8))(v6, v3);
}

uint64_t sub_26D454(uint64_t a1, uint64_t a2, size_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *a3;
  v13 = type metadata accessor for HashedAuthenticationCode();
  WitnessTable = swift_getWitnessTable();
  return sub_26C42C(a1, a2, &v16, a4, v13, a5, a6, WitnessTable, a7) & 1;
}

uint64_t sub_26D540()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_3033E8();
}

uint64_t sub_26D688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  v9 = __chkstk_darwin();
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 40))(v9);
  (*(v8 + 16))(v11, a3, a4);
  (*(a5 + 48))(a4, a5);
  return (*(v8 + 8))(v11, a4);
}

uint64_t sub_26D7C8()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v4 = &v13 - v3;
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_303C78(16);

  v16 = 0x7469772043414D48;
  v17 = 0xEA00000000002068;
  v18._countAndFlagsBits = sub_303DF8();
  sub_303988(v18);

  v19._countAndFlagsBits = 8250;
  v19._object = 0xE200000000000000;
  sub_303988(v19);
  (*(v2 + 16))(v4, v0, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  result = sub_303AF8();
  v6 = *(result + 16);
  if (v6 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = 2 * v6;
  if (2 * v6 < 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v8 = result;
  if (v6)
  {
    v9 = sub_303AE8();
    v9[2] = v7;
    bzero(v9 + 4, v7);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v14 = 0;
  v15 = v9;
  sub_303AD8();
  sub_26E640(v8, &v15, &v14);

  v10 = sub_303958();
  v12 = v11;

  v20._countAndFlagsBits = v10;
  v20._object = v12;
  sub_303988(v20);

  return v16;
}

uint64_t sub_26DA1C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_3033E8();
}

uint64_t sub_26DAD4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return sub_3038E8();
}

Swift::Int sub_26DB68()
{
  sub_303D98();
  sub_26DAD4();
  return sub_303DE8();
}

Swift::Int sub_26DBB8()
{
  sub_303D98();
  sub_26DAD4();
  return sub_303DE8();
}

uint64_t sub_26DC24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getWitnessTable();
  v5 = sub_295B28();
  v7 = v6;
  result = (*(*(a1 - 8) + 8))(v2, a1);
  *a2 = v5;
  a2[1] = v7;
  return result;
}

uint64_t sub_26DCCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26E63C(v2, a1, a2);
  (*(*(a1 - 8) + 8))(v2, a1);
  return v4;
}

uint64_t sub_26DD40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_295BA4(a1, a2, a3, WitnessTable);
}

size_t sub_26DDAC(size_t result)
{
  v1 = *(result + 16);
  if (HIDWORD(v1))
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (v1)
    {
      v3 = (v1 - 1) | ((v1 - 1) >> 1) | (((v1 - 1) | ((v1 - 1) >> 1)) >> 2);
      v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
      v5 = v4 | HIWORD(v4);
      if (v5 == -1)
      {
        v6 = 0xFFFFFFFFLL;
      }

      else
      {
        v6 = (v5 + 1);
      }
    }

    else
    {
      v6 = 1;
    }

    type metadata accessor for SecureBytes.Backing();
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = v6;
    _swift_stdlib_malloc_size(v7);
    memcpy(v7 + 4, (v2 + 32), v1);
    swift_beginAccess();
    v7[2] = v1;
    result = _swift_stdlib_malloc_size(v7);
    if ((result - 32) >= v1)
    {
      return v7;
    }
  }

  __break(1u);
  return result;
}

void *sub_26DE98(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      memset(v27, 0, 14);
      v3 = v27;
      goto LABEL_33;
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    v6 = sub_303388();
    if (v6)
    {
      v7 = sub_3033B8();
      if (__OFSUB__(v4, v7))
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
      }

      v6 += v4 - v7;
    }

    v8 = __OFSUB__(v5, v4);
    v9 = v5 - v4;
    if (!v8)
    {
      v10 = sub_3033A8();
      if (v10 < v9)
      {
        v9 = v10;
      }

      if (v6)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0;
      }

      if ((v11 & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(v11))
        {
          if (!v11)
          {
            v15 = 1;
            goto LABEL_43;
          }

          v12 = (v11 - 1) | ((v11 - 1) >> 1) | (((v11 - 1) | ((v11 - 1) >> 1)) >> 2);
          v13 = v12 | (v12 >> 4) | ((v12 | (v12 >> 4)) >> 8);
          v14 = v13 | HIWORD(v13);
          if (v14 != -1)
          {
            v15 = (v14 + 1);
            goto LABEL_43;
          }

LABEL_42:
          v15 = 0xFFFFFFFFLL;
LABEL_43:
          type metadata accessor for SecureBytes.Backing();
          v24 = swift_allocObject();
          v24[2] = 0;
          v24[3] = v15;
          _swift_stdlib_malloc_size(v24);
          if (v6)
          {
            memmove(v24 + 4, v6, v9);
          }

          else
          {
            v9 = 0;
          }

          swift_beginAccess();
          v24[2] = v9;
          if ((_swift_stdlib_malloc_size(v24) - 32) >= v9)
          {
            return v24;
          }

          goto LABEL_53;
        }

LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      goto LABEL_50;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (!v2)
  {
    v27[0] = a1;
    LOWORD(v27[1]) = a2;
    BYTE2(v27[1]) = BYTE2(a2);
    BYTE3(v27[1]) = BYTE3(a2);
    BYTE4(v27[1]) = BYTE4(a2);
    BYTE5(v27[1]) = BYTE5(a2);
    v3 = v27 + BYTE6(a2);
LABEL_33:
    sub_299C98(v27, v3, &v26);
    return v26;
  }

  v16 = a1;
  v9 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_49;
  }

  v6 = sub_303388();
  if (v6)
  {
    v17 = sub_3033B8();
    if (__OFSUB__(v16, v17))
    {
      goto LABEL_55;
    }

    v6 += v16 - v17;
  }

  v18 = sub_3033A8();
  if (v18 < v9)
  {
    v9 = v18;
  }

  if (v6)
  {
    v19 = v9;
  }

  else
  {
    v19 = 0;
  }

  if (v19 < 0)
  {
    goto LABEL_51;
  }

  if (v19)
  {
    v20 = (v19 - 1) | ((v19 - 1) >> 1) | (((v19 - 1) | ((v19 - 1) >> 1)) >> 2);
    v21 = v20 | (v20 >> 4) | ((v20 | (v20 >> 4)) >> 8);
    v22 = v21 | HIWORD(v21);
    if (v22 == -1)
    {
      v23 = 0xFFFFFFFFLL;
    }

    else
    {
      v23 = (v22 + 1);
    }
  }

  else
  {
    v23 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = v23;
  _swift_stdlib_malloc_size(v24);
  if (v6)
  {
    memmove(v24 + 4, v6, v9);
  }

  else
  {
    v9 = 0;
  }

  swift_beginAccess();
  v24[2] = v9;
  if ((_swift_stdlib_malloc_size(v24) - 32) < v9)
  {
    __break(1u);
    goto LABEL_42;
  }

  return v24;
}

size_t sub_26E1F4(size_t result, uint64_t a2)
{
  v2 = a2 - result;
  if (result)
  {
    v3 = a2 - result;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (HIDWORD(v3))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4 = result;
  if (v3)
  {
    v5 = (v3 - 1) | ((v3 - 1) >> 1) | (((v3 - 1) | ((v3 - 1) >> 1)) >> 2);
    v6 = v5 | (v5 >> 4) | ((v5 | (v5 >> 4)) >> 8);
    v7 = v6 | HIWORD(v6);
    if (v7 == -1)
    {
      v8 = 0xFFFFFFFFLL;
    }

    else
    {
      v8 = (v7 + 1);
    }
  }

  else
  {
    v8 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = v8;
  _swift_stdlib_malloc_size(v9);
  if (v4)
  {
    memmove(v9 + 4, v4, v2);
  }

  else
  {
    v2 = 0;
  }

  swift_beginAccess();
  v9[2] = v2;
  result = _swift_stdlib_malloc_size(v9);
  if ((result - 32) >= v2)
  {
    return v9;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState();
    *a1 = result;
  }

  return result;
}

char *sub_26E3A0(char *result, uint64_t a2, int64_t a3, void *__src, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_21;
  }

  v7 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = *v5;
  v9 = &result[v8 + 32];
  if (!v7)
  {
    goto LABEL_13;
  }

  v10 = *(v8 + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
    goto LABEL_22;
  }

  result = &v9[a3];
  v13 = (v8 + 32 + a2);
  if (&v9[a3] != v13 || result >= &v13[v12])
  {
    v15 = a3;
    v16 = __src;
    v17 = a5;
    result = memmove(result, v13, v12);
    a5 = v17;
    __src = v16;
    a3 = v15;
  }

  v18 = *(v8 + 16);
  v11 = __OFADD__(v18, v7);
  v19 = v18 + v7;
  if (v11)
  {
    goto LABEL_23;
  }

  *(v8 + 16) = v19;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (!__src)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  if (a5 - __src != a3)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  return memcpy(v9, __src, a3);
}

char *sub_26E49C(char *a1, int64_t a2, char a3)
{
  result = sub_26E4BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26E4BC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5186A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_26E5B0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_26E640(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v6 = (result + 32);
    v7 = *a3;
    while (v7 + 0x4000000000000000 >= 0)
    {
      v9 = *v6++;
      v8 = v9;
      v10 = (v9 >> 4) + 87;
      v11 = (v9 >> 4) | 0x30;
      if (v9 <= 0x9F)
      {
        v12 = v11;
      }

      else
      {
        v12 = v10;
      }

      v13 = *a2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v13;
      if (result)
      {
        v14 = 2 * v7;
        if (2 * v7 < 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        result = sub_29550C(v13);
        v13 = result;
        *a2 = result;
        v14 = 2 * v7;
        if (2 * v7 < 0)
        {
          goto LABEL_26;
        }
      }

      if (v14 >= *(v13 + 16))
      {
        goto LABEL_27;
      }

      *(v13 + v14 + 32) = v12;
      v15 = *a3;
      if (*a3 + 0x4000000000000000 < 0)
      {
        goto LABEL_28;
      }

      v16 = *a2;
      if ((v8 & 0xFu) <= 9)
      {
        v17 = v8 & 0xF | 0x30;
      }

      else
      {
        v17 = (v8 & 0xF) + 87;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v16;
      if (result)
      {
        if (v15 < 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = sub_29550C(v16);
        v16 = result;
        *a2 = result;
        if (v15 < 0)
        {
LABEL_23:
          __break(1u);
          return result;
        }
      }

      v18 = (2 * v15) | 1;
      if (v18 >= *(v16 + 16))
      {
        goto LABEL_29;
      }

      *(v16 + v18 + 32) = v17;
      v7 = *a3 + 1;
      if (__OFADD__(*a3, 1))
      {
        goto LABEL_30;
      }

      *a3 = v7;
      if (!--v3)
      {
        return result;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  return result;
}

uint64_t sub_26E7CC(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  a1[3] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[4] = result;
  return result;
}

uint64_t sub_26E8CC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26E914()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_26E9A4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = ~v7;
  v9 = v6 + v7;
  v10 = ((v6 + v7) & ~v7) + v6;
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || v10 > 0x18)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v7 + 16) & v8));
  }

  else
  {
    v14 = *(v5 + 16);
    v14(a1, a2, v4);
    v14(((v3 + v9) & v8), ((a2 + v9) & v8), v4);
  }

  return v3;
}

uint64_t sub_26EAAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v6 = *(v3 - 8) + 8;
  v7 = *v6;
  (*v6)(a1, v3);
  v4 = (*(v6 + 56) + a1 + *(v6 + 72)) & ~*(v6 + 72);

  return v7(v4, v3);
}

unint64_t sub_26EB48(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(a1, a2, v5);
  v7((*(v8 + 48) + *(v8 + 64) + a1) & ~*(v8 + 64), (*(v8 + 48) + *(v8 + 64) + a2) & ~*(v8 + 64), v5);
  return a1;
}

unint64_t sub_26EBDC(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v8 = v6 + 24;
  v7(a1, a2, v5);
  v7((*(v8 + 40) + *(v8 + 56) + a1) & ~*(v8 + 56), (*(v8 + 40) + *(v8 + 56) + a2) & ~*(v8 + 56), v5);
  return a1;
}

unint64_t sub_26EC70(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v8 = v6 + 32;
  v7(a1, a2, v5);
  v7((*(v8 + 32) + *(v8 + 48) + a1) & ~*(v8 + 48), (*(v8 + 32) + *(v8 + 48) + a2) & ~*(v8 + 48), v5);
  return a1;
}

unint64_t sub_26ED04(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 40);
  v8 = v6 + 40;
  v7(a1, a2, v5);
  v7((*(v8 + 24) + *(v8 + 40) + a1) & ~*(v8 + 40), (*(v8 + 24) + *(v8 + 40) + a2) & ~*(v8 + 40), v5);
  return a1;
}

uint64_t sub_26ED98(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_26EEE8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_26F100()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_26F1A0(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && *(*(AssociatedTypeWitness - 8) + 64) <= 0x18uLL && (*(v5 + 80) & 0x100000) == 0)
  {
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v6 + 16) & ~v6));
  }

  return a1;
}

uint64_t sub_26F27C(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(a1, AssociatedTypeWitness);
}

uint64_t sub_26F2F8(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t sub_26F370(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 24))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t sub_26F3E8(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t sub_26F460(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t sub_26F4D8(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v5)
  {
LABEL_23:
    v11 = *(v4 + 48);

    return v11(a1);
  }

  v7 = 8 * v6;
  if (v6 <= 3)
  {
    v9 = ((a2 - v5 + ~(-1 << v7)) >> v7) + 1;
    if (HIWORD(v9))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 < 2)
    {
LABEL_22:
      if (v5)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v10 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v10 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v10) + 1;
}

void sub_26F66C(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (a3 <= v7)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 - v7 + ~(-1 << (8 * v8))) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (v7 < a2)
  {
    v10 = ~v7 + a2;
    if (v8 < 4)
    {
      v11 = (v10 >> (8 * v8)) + 1;
      if (v8)
      {
        v14 = v10 & ~(-1 << (8 * v8));
        bzero(a1, v8);
        if (v8 != 3)
        {
          if (v8 == 2)
          {
            *a1 = v14;
            if (v9 > 1)
            {
LABEL_39:
              if (v9 == 2)
              {
                *&a1[v8] = v11;
              }

              else
              {
                *&a1[v8] = v11;
              }

              return;
            }
          }

          else
          {
            *a1 = v10;
            if (v9 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v14;
        a1[2] = BYTE2(v14);
      }

      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v9)
    {
      a1[v8] = v11;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v8] = 0;
  }

  else if (v9)
  {
    a1[v8] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v15 = *(v6 + 56);

  v15(a1, a2);
}

uint64_t sub_26F898(uint64_t a1, uint64_t *a2, void *a3)
{
  result = swift_beginAccess();
  v7 = 0;
  v8 = *(a1 + 16);
  while (v7 != v8)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return result;
    }

    v10 = *a3;
    if (*a3 + 0x4000000000000000 < 0)
    {
      goto LABEL_28;
    }

    v11 = *(a1 + 32 + v7);
    if (v11 <= 0x9F)
    {
      v12 = (*(a1 + 32 + v7) >> 4) | 0x30;
    }

    else
    {
      v12 = (*(a1 + 32 + v7) >> 4) + 87;
    }

    v13 = *a2;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v13;
    if (result)
    {
      v14 = 2 * v10;
      if (2 * v10 < 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      result = sub_29550C(v13);
      v13 = result;
      *a2 = result;
      v14 = 2 * v10;
      if (2 * v10 < 0)
      {
        goto LABEL_29;
      }
    }

    if (v14 >= *(v13 + 16))
    {
      goto LABEL_30;
    }

    *(v13 + v14 + 32) = v12;
    v15 = *a3;
    if (*a3 + 0x4000000000000000 < 0)
    {
      goto LABEL_31;
    }

    v16 = *a2;
    if ((v11 & 0xF) <= 9)
    {
      v17 = v11 & 0xF | 0x30;
    }

    else
    {
      v17 = (v11 & 0xF) + 87;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v16;
    if (result)
    {
      if (v15 < 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      result = sub_29550C(v16);
      v16 = result;
      *a2 = result;
      if (v15 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }
    }

    v18 = (2 * v15) | 1;
    if (v18 >= *(v16 + 16))
    {
      goto LABEL_32;
    }

    *(v16 + v18 + 32) = v17;
    if (__OFADD__(*a3, 1))
    {
      goto LABEL_33;
    }

    ++*a3;
    v8 = *(a1 + 16);
    ++v7;
    if (__OFSUB__(v8, v9))
    {
      goto LABEL_34;
    }
  }

  return result;
}

uint64_t sub_26FA54(uint64_t result, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = (a3 >> 1) - a2;
  if (a3 >> 1 != a2)
  {
    if ((a3 >> 1) > a2)
    {
      v8 = *a5;
      v9 = (result + a2);
      while (v8 + 0x4000000000000000 >= 0)
      {
        v11 = *v9++;
        v10 = v11;
        v12 = (v11 >> 4) + 87;
        v13 = (v11 >> 4) | 0x30;
        if (v11 <= 0x9F)
        {
          v14 = v13;
        }

        else
        {
          v14 = v12;
        }

        v15 = *a4;
        result = swift_isUniquelyReferenced_nonNull_native();
        *a4 = v15;
        if (result)
        {
          v16 = 2 * v8;
          if (2 * v8 < 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          result = sub_29550C(v15);
          v15 = result;
          *a4 = result;
          v16 = 2 * v8;
          if (2 * v8 < 0)
          {
            goto LABEL_26;
          }
        }

        if (v16 >= *(v15 + 16))
        {
          goto LABEL_27;
        }

        *(v15 + v16 + 32) = v14;
        v17 = *a5;
        if (*a5 + 0x4000000000000000 < 0)
        {
          goto LABEL_28;
        }

        v18 = *a4;
        if ((v10 & 0xFu) <= 9)
        {
          v19 = v10 & 0xF | 0x30;
        }

        else
        {
          v19 = (v10 & 0xF) + 87;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        *a4 = v18;
        if (result)
        {
          if (v17 < 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          result = sub_29550C(v18);
          v18 = result;
          *a4 = result;
          if (v17 < 0)
          {
LABEL_24:
            __break(1u);
            break;
          }
        }

        v20 = (2 * v17) | 1;
        if (v20 >= *(v18 + 16))
        {
          goto LABEL_29;
        }

        *(v18 + v20 + 32) = v19;
        v8 = *a5 + 1;
        if (__OFADD__(*a5, 1))
        {
          goto LABEL_30;
        }

        *a5 = v8;
        if (!--v5)
        {
          return result;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26FC90(uint64_t a1, unint64_t a2)
{
  *&v40 = a1;
  *(&v40 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518FD0);
  if (swift_dynamicCast())
  {
    sub_258288(v38, &v41);
    __swift_project_boxed_opaque_existential_1(&v41, v42);
    sub_3033E8();
    v38[0] = v40;
    __swift_destroy_boxed_opaque_existential_0(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(v38, 0, sizeof(v38));
  sub_2566A0(v38, &qword_518FD8);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&v38[0] = a1;
    *(&v38[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v38;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_303C98();
  }

  sub_29FFA0(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    v38[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v38[0] = sub_2A0BF4(v8);
  *(&v38[0] + 1) = v9;
  __chkstk_darwin(*&v38[0]);
  v10 = sub_27BDB4(sub_271690);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&v38[0] + 1) >> 62;
  if ((*(&v38[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&v38[0] + 16);
      v18 = *(*&v38[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(v38[0]), v38[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(v38[0]) - LODWORD(v38[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&v38[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&v38[0] >> 32;
      }

      else
      {
        v22 = BYTE14(v38[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_303518();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(v38[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_281DB4(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_303998();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_3039D8();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_303C98();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_281DB4(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_3039A8();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      sub_303548();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    sub_303548();
    sub_EB18(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_EB18(v35, v6);
LABEL_63:
  v32 = v38[0];
  sub_2582E4(*&v38[0], *(&v38[0] + 1));

  sub_258780(v32, *(&v32 + 1));
  return v32;
}