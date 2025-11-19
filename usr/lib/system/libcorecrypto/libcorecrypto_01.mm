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

uint64_t ccn_n_asm(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v2 = result;
    result = 0;
    v3 = 0;
    do
    {
      v4 = *a2++;
      ++v3;
      if (v4)
      {
        result = v3;
      }
    }

    while (v3 < v2);
  }

  return result;
}

unint64_t ccn_bitlen_public_value(uint64_t a1, uint64_t *a2)
{
  v2 = 0;
  if (a1)
  {
    v3 = 64;
    do
    {
      v4 = *a2++;
      v2 = (v3 - __clz(v4 | 1)) & -(v4 != 0) | (v4 != 0 ? 0 : v2);
      v3 += 64;
      --a1;
    }

    while (a1);
  }

  return v2;
}

uint64_t ccn_mul(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    result *= -8;
    v4 = (a2 - result);
    v5 = a3 - result;
    v6 = a4 - result;
    v7 = result;
    v8 = result;
    v9 = 0;
    v10 = *(v6 + result);
    do
    {
      v11 = *(v5 + v8) * v10 + v9;
      *(v4 + v8) = v11;
      v9 = *(&v11 + 1);
      v8 += 8;
    }

    while (v8);
    while (1)
    {
      *v4 = v9;
      v7 += 8;
      if (!v7)
      {
        break;
      }

      ++v4;
      v12 = result;
      v9 = 0;
      v13 = *(v6 + v7);
      do
      {
        v14 = *(v5 + v12) * v13 + v9 + *(v4 + v12);
        *(v4 + v12) = v14;
        v9 = *(&v14 + 1);
        v12 += 8;
      }

      while (v12);
    }
  }

  return result;
}

unint64_t ccn_mul1_asm(uint64_t a1, void *a2, unint64_t *a3, unint64_t a4)
{
  v4 = 0;
  if (a1)
  {
    v5 = *a3++;
    v4 = (v5 * a4) >> 64;
    *a2++ = v5 * a4;
    --a1;
  }

  if ((a1 & 2) != 0)
  {
    v6 = *a3;
    v7 = a3[1];
    a3 += 2;
    v8 = v6 * a4 + __PAIR128__(v7 * a4, v4);
    v4 = (__CFADD__(__CFADD__(v6 * a4, v4), (v6 * a4) >> 64) | __CFADD__(v7 * a4, *(&v8 + 1))) + ((v7 * a4) >> 64);
    *a2 = v8;
    a2 += 2;
    a1 -= 2;
  }

  while (1)
  {
    v9 = a1 < 4;
    a1 -= 4;
    if (v9)
    {
      break;
    }

    v11 = *a3;
    v12 = a3[1];
    v10 = a3 + 2;
    v14 = *v10;
    v15 = v10[1];
    a3 = v10 + 2;
    v16 = (v12 * a4) >> 64;
    v17 = __CFADD__(__CFADD__(v11 * a4, v4), (v11 * a4) >> 64);
    v13 = v11 * a4 + __PAIR128__(v12 * a4, v4);
    *a2 = v13;
    v18 = a2 + 2;
    v19 = (v14 * a4) >> 64;
    v20 = v16 + (v17 | __CFADD__(v12 * a4, *(&v13 + 1))) + v14 * a4;
    v22 = __CFADD__(v17 | __CFADD__(v12 * a4, *(&v13 + 1)), v14 * a4) | __CFADD__(v16, (v17 | __CFADD__(v12 * a4, *(&v13 + 1))) + v14 * a4);
    v17 = __CFADD__(v22, v19);
    v21 = v22 + v19;
    v4 = (v17 | __CFADD__(v15 * a4, v21)) + ((v15 * a4) >> 64);
    *v18 = v20;
    v18[1] = v15 * a4 + v21;
    a2 = v18 + 2;
  }

  return v4;
}

uint64_t ccder_blob_decode_uint(unsigned __int8 **a1, unint64_t a2, void *a3)
{
  v6[0] = 0;
  v6[1] = 0;
  result = ccder_blob_decode_range(a1, 2, v6);
  if (result)
  {
    return ccder_blob_decode_uint_range(v6, a2, a3);
  }

  return result;
}

unsigned __int8 *ccder_decode_rsa_pub(uint64_t *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = cc_malloc_clear(40 * *a1 + 24);
  v7 = *a1;
  v8 = 5 * *a1 + 3;
  v14[0] = v6;
  v14[1] = v8;
  v14[2] = 0;
  v14[3] = cc_ws_alloc;
  v15 = cc_ws_free;
  if (!v6)
  {
    return 0;
  }

  v16 = a3;
  v9 = ccder_decode_constructed_tl(0x2000000000000010, &v16, a2, a3);
  v10 = ccder_decode_uint(v7, a1 + 3, v9, v16);
  v11 = ccder_decode_uint(v7, &a1[2 * *a1 + 4], v10, v16);
  if (cczp_mm_init_ws(v14, a1, v7, 0))
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  v15(v14);
  return v12;
}

unsigned __int8 *ccder_decode_uint(unint64_t a1, void *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (!a3)
  {
    return 0;
  }

  v5[0] = a3;
  v5[1] = a4;
  if (ccder_blob_decode_uint(v5, a1, a2))
  {
    return v5[0];
  }

  else
  {
    return 0;
  }
}

uint64_t cczp_mm_init_ws(uint64_t a1, uint64_t *a2, uint64_t a3, void *__src)
{
  *a2 = a3;
  if (__src)
  {
    ccn_set(a3, a2 + 3, __src);
  }

  result = cczp_init_ws(a1, a2);
  a2[2] = cczp_montgomery_funcs;
  return result;
}

uint64_t cczp_init_ws(uint64_t a1, void *a2)
{
  v4 = cczp_prime(a2);
  v5 = cczp_n(a2);
  if ((*v4 & 1) == 0 || ccn_n(v5, v4) == 1 && *v4 < 3uLL)
  {
    return 4294967289;
  }

  a2[2] = cczp_default_funcs;
  v7 = cczp_n(a2);
  v8 = cczp_prime(a2);
  a2[1] = ccn_bitlen_public_value(v7, v8);
  v9 = (2 - ((3 * *v4) ^ 2) * *v4) * ((3 * *v4) ^ 2);
  v10 = (2 - (2 - v9 * *v4) * v9 * *v4) * (2 - v9 * *v4) * v9;
  a2[*a2 + 3] = (v10 * *v4 - 2) * v10;
  v11 = cczp_n(a2);
  v12 = *(a1 + 16);
  v13 = (*(a1 + 24))(a1, 2 * v11);
  memset(&v13[v11], 255, 8 * v11);
  v14 = cczp_prime(a2);
  ccn_neg(v11, v13, v14);
  v15 = &a2[*a2 + 3];
  v16 = cczp_prime(a2);
  ccn_divmod_ws(a1, 2 * v11, v13, 0, 0, v11, (v15 + 8), v16);
  result = 0;
  *(a1 + 16) = v12;
  return result;
}

BOOL ccn_neg(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a1)
  {
    v3 = a2;
    v4 = a1;
    do
    {
      v5 = *a3++;
      *v3++ = ~v5;
      --v4;
    }

    while (v4);
  }

  return ccn_add1_ws(0, a1, a2, a2, 1);
}

BOOL ccn_add1_ws(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (a2)
  {
    return ccn_add1_asm(a2, a3, a4, a5);
  }

  else
  {
    return a5;
  }
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

uint64_t ccn_divmod_ws(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v58[2] = *MEMORY[0x1E69E9840];
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

BOOL ccder_blob_decode_uint_range(unsigned __int8 **a1, unint64_t a2, void *a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4 && (*v3 & 0x80000000) == 0 && (*v3 || (++v3, v3 == v4) || *v3 < 0))
  {
    *a1 = v3;
    return ccn_read_uint_public_value(a2, a3, v4 - v3, v3) == 0;
  }

  else
  {
    v5 = 0;
    *a1 = 0;
    a1[1] = 0;
  }

  return v5;
}

uint64_t ccn_mux_next_mask()
{
  v0 = state ^ (state << 13) ^ ((state ^ (state << 13)) >> 7);
  result = v0 ^ (v0 << 17);
  state = result;
  return result;
}

uint64_t ccn_shift_right(uint64_t result, int8x16_t *a2, int8x16_t *a3, uint64_t a4)
{
  if (result)
  {
    return ccn_shift_right_asm(result, a2, a3, a4);
  }

  return result;
}

double ccn_shift_left(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64x2_t a5)
{
  v5 = a2 + 8 * a1;
  v6 = vdupq_n_s64(a4);
  v7 = vdupq_n_s64(a4 - 64);
  v8 = (a3 + 8 * a1 - 8);
  v9 = a1 == 4;
  v10 = a1 < 4;
  v11 = a1 - 4;
  if (!v10)
  {
    if (v9)
    {
      v16.i64[0] = 0;
      v16.i64[1] = *(v8 - 3);
      a5 = veorq_s8(vshlq_u64(v16, v7), vshlq_u64(*(v8 - 3), v6));
      v17 = veorq_s8(vshlq_u64(*(v8 - 1), v7), vshlq_u64(*(v8 - 1), v6));
      *(v5 - 32) = a5;
      *(v5 - 16) = v17;
      return *a5.i64;
    }

    do
    {
      v12 = *(v8 - 3);
      v13 = *(v8 - 1);
      v14 = *(v8 - 2);
      v15 = *(v8 - 1);
      v8 -= 4;
      a5 = veorq_s8(vshlq_u64(v14, v7), vshlq_u64(v12, v6));
      *(v5 - 32) = a5;
      *(v5 - 16) = veorq_s8(vshlq_u64(v15, v7), vshlq_u64(v13, v6));
      v5 -= 32;
      v10 = v11 <= 4;
      v11 -= 4;
    }

    while (!v10);
  }

  v18 = v11 & 3;
  if (!v18)
  {
    return *a5.i64;
  }

  if (v18 == 3)
  {
    v19 = *(v8 - 1);
  }

  else
  {
    if ((v18 & 2) == 0)
    {
      goto LABEL_13;
    }

    v19.i64[0] = 0;
    v19.i64[1] = *(v8 - 1);
  }

  a5 = veorq_s8(vshlq_u64(*(v8 - 1), v6), vshlq_u64(v19, v7));
  v8 -= 2;
  *(v5 - 16) = a5;
  v5 -= 16;
LABEL_13:
  if (v18)
  {
    a5.i64[0] = *v8;
    a5.i64[0] = vshlq_u64(a5, v6).u64[0];
    *(v5 - 8) = a5.i64[0];
  }

  return *a5.i64;
}

uint64_t cchmac_init(uint64_t a1, void *a2, size_t a3, char *a4)
{
  v9 = timingsafe_enable_if_supported();
  cchmac_init_internal(a1, a2, a3, a4);
  return cc_disable_dit_with_sb(&v9);
}

uint64_t cchmac_update(unint64_t *a1, void *a2, size_t a3, char *a4)
{
  v9 = timingsafe_enable_if_supported();
  ccdigest_update_internal(a1, a2, a3, a4);
  return cc_disable_dit_with_sb(&v9);
}

uint64_t cchmac_final(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = timingsafe_enable_if_supported();
  cchmac_final_internal(a1, a2, a3);
  return cc_disable_dit_with_sb(&v7);
}

uint64_t cc_cmp_safe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = timingsafe_enable_if_supported();
  v6 = cc_cmp_safe_internal(a1, a2, a3);
  cc_disable_dit_with_sb(&v8);
  return v6;
}

void ccaes_arm_decrypt_key_with_key_length_check(uint64_t a1, int8x16_t *a2, uint64_t a3, int8x16_t *a4, double a5, double a6, double a7, double a8, double a9, double a10, int64x2_t a11)
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

uint64_t cchkdf_extract(uint64_t *a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = timingsafe_enable_if_supported();
  memset(v14, 0, sizeof(v14));
  if (!a2)
  {
    a2 = *a1;
    a3 = v14;
  }

  cchmac_internal(a1, a2, a3, a4, a5, a6);
  cc_disable_dit_with_sb(&v13);
  return 0;
}

uint64_t cchkdf_expand(rsize_t *a1, rsize_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = timingsafe_enable_if_supported();
  v14 = cchkdf_expand_internal(a1, a2, a3, a4, a5, a6, a7);
  cc_disable_dit_with_sb(&v16);
  return v14;
}

int16x8_t *ccmlkem_polyvec_add(int16x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result->i32[1])
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    do
    {
      result = ccmlkem_poly_add((a2 + ((2 * v8) & 0x1FFFFFE00)), (a3 + ((2 * v8) & 0x1FFFFFE00)), (a4 + ((2 * v8) & 0x1FFFFFE00)));
      ++v9;
      v8 += 256;
    }

    while (v9 < v7->u32[1]);
  }

  return result;
}

int8x16_t *ccmlkem_polyvec_encode(int8x16_t *result, uint64_t a2, uint64_t a3)
{
  if (result->i32[1])
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      result = ccmlkem_poly_encode((a2 + (v6 & 0xFFFFFF80)), (a3 + 2 * (v7 & 0xFFFFFF00)));
      ++v8;
      v7 += 256;
      v6 += 384;
    }

    while (v8 < v5->u32[1]);
  }

  return result;
}

uint64_t cckem_kyber768_export_pubkey()
{
  OUTLINED_FUNCTION_0();
  if (v3 < cckem_pubkey_nbytes_ctx(v4))
  {
    return 4294967289;
  }

  v5 = cckem_pubkey_nbytes_ctx(v1);
  *v2 = v5;
  memcpy(v0, (v1 + 8), v5);
  return 0;
}

unsigned __int8 *ccrsa_import_priv_n(uint64_t a1, unsigned __int8 *a2)
{
  v6 = timingsafe_enable_if_supported();
  v4 = ccder_decode_rsa_priv_n(a2, &a2[a1]);
  cc_disable_dit_with_sb(&v6);
  return v4;
}

unsigned __int8 *ccder_decode_rsa_priv_n(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v7 = a2;
  v5 = 0;
  v6 = 0;
  result = ccder_decode_constructed_tl(0x2000000000000010, &v7, a1, a2);
  if (result)
  {
    v3 = ccder_decode_uint(1uLL, &v6, result, v7);
    if (v3)
    {
      v4 = v6 == 0;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      if (ccder_decode_uint_n(&v5, v3, v7))
      {
        return v5;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
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

uint64_t ccder_sizeof_implicit_uint64(uint64_t a1, uint64_t a2)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a2;
  return ccder_sizeof_implicit_integer(a1, 1, v3);
}

uint64_t ccec_export_affine_point_public_value(uint64_t *a1, int a2, uint64_t *a3, unint64_t *a4, char *a5)
{
  v10 = ccec_export_affine_point_size(a1, a2);
  if (!v10)
  {
    return 4294967289;
  }

  if (*a4 < v10)
  {
    return 4294967133;
  }

  *a4 = v10;
  v11 = a2 - 1;
  if ((a2 - 1) <= 2)
  {
    *a5 = 0x20604u >> (8 * v11);
  }

  v12 = *a1;
  if (a2 == 4)
  {
    v13 = a5;
  }

  else
  {
    v13 = a5 + 1;
  }

  v14 = cczp_bitlen(a1);
  if ((ccn_write_uint_padded_ct_internal(v12, a3, (v14 + 7) >> 3, v13) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (v11 <= 1)
  {
    v15 = &v13[(cczp_bitlen(a1) + 7) >> 3];
    v16 = &a3[*a1];
    v17 = cczp_bitlen(a1);
    if ((ccn_write_uint_padded_ct_internal(v12, v16, (v17 + 7) >> 3, v15) & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  result = 0;
  if ((a2 & 0xFFFFFFFE) == 2)
  {
    *a5 |= a3[*a1] & 1;
  }

  return result;
}

uint64_t ccder_blob_encode_implicit_uint64(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = a3;
  return ccder_blob_encode_implicit_integer(a1, a2, 1uLL, v4);
}

uint64_t cccurve25519_make_priv(uint64_t (**a1)(void, uint64_t, uint64_t), uint64_t a2)
{
  v6 = timingsafe_enable_if_supported();
  v4 = (*a1)(a1, 32, a2);
  if (!v4)
  {
    OUTLINED_FUNCTION_0_12();
  }

  cc_disable_dit_with_sb(&v6);
  return v4;
}

unint64_t ccn_write_int_size(uint64_t a1, uint64_t *a2)
{
  v7 = timingsafe_enable_if_supported();
  v4 = ccn_bitlen_public_value(a1, a2);
  if ((v4 & 7) != 0)
  {
    v5 = (v4 + 7) >> 3;
  }

  else
  {
    v5 = ((v4 + 7) >> 3) + 1;
  }

  cc_disable_dit_with_sb(&v7);
  return v5;
}

uint64_t ccn_write_int(unint64_t a1, uint64_t *a2, unint64_t a3, _BYTE *a4)
{
  v9 = timingsafe_enable_if_supported();
  ccn_write_int_public_value(a1, a2, a3, a4);
  return cc_disable_dit_with_sb(&v9);
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

uint64_t ccn_read_uint(unint64_t a1, void *a2, unint64_t a3, unsigned __int8 *a4)
{
  v10 = timingsafe_enable_if_supported();
  uint_public_value = ccn_read_uint_public_value(a1, a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return uint_public_value;
}

uint64_t ccrsa_pub_crypt(void *a1)
{
  v8 = timingsafe_enable_if_supported();
  v2 = cc_malloc_clear(72 * *a1);
  v3 = 9 * *a1;
  v6[0] = v2;
  v6[1] = v3;
  v6[2] = 0;
  v6[3] = cc_ws_alloc;
  v7 = cc_ws_free;
  if (v2)
  {
    v4 = ccrsa_pub_crypt_ws(v6, a1);
    v7(v6);
  }

  else
  {
    v4 = 4294967283;
  }

  cc_disable_dit_with_sb(&v8);
  return v4;
}

uint64_t ccrsa_pub_crypt_ws(uint64_t a1, void *a2)
{
  v4 = a2 + 3;
  v5 = *a2;
  v6 = ccn_bitlen_internal(*a2, &a2[2 * *a2 + 4]);
  if (v5)
  {
    v7 = v6 >= 2;
  }

  else
  {
    v7 = 0;
  }

  if (!v7 || ccn_n(v5, v4) <= 1 && *v4 < 2uLL)
  {
    return 4294967268;
  }

  v9 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, v5);
  v11 = (*(a1 + 24))(a1, v5);
  cczp_to_ws(a1, a2);
  v12 = cczp_power_fast_ws(a1, a2, v11, v10, &v4[2 * *a2 + 1]);
  cczp_from_ws(a1, a2);
  *(a1 + 16) = v9;
  return v12;
}

uint64_t cczp_mm_to_ws(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v8 = cczp_n(a2);
  v9 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, 2 * v8);
  ccn_mul_ws(a1, v8, v10, a4, &a2[*a2 + 4]);
  result = cczp_mm_redc_ws(a1, a2, a3, v10);
  *(a1 + 16) = v9;
  return result;
}

uint64_t cczp_power_fast_ws(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v10 = cczp_n(a2);
  v11 = ccn_bitlen_internal(v10, a5);
  if (v11)
  {
    v12 = v11;
    v17 = *(a1 + 16);
    v13 = (*(a1 + 24))(a1, 3 * v10);
    ccn_set(v10, v13, a4);
    cczp_sqr_ws(a1, a2);
    cczp_mul_ws(a1, a2);
    v14 = (*(a5 + (((v12 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v12 - 1)) & 1;
    if ((v12 & 1) == 0)
    {
      v14 = (*(a5 + (((v12 - 2) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> ((v12 - 2) & 0x3E)) & 1 | (2 * v14);
    }

    ccn_set(v10, a3, &v13[8 * (v14 - 1) * v10]);
    if ((v12 | 0xFFFFFFFFFFFFFFFELL) + v12)
    {
      v15 = v12 + (v12 | 0xFFFFFFFFFFFFFFFELL) - 1;
      do
      {
        cczp_sqr_ws(a1, a2);
        cczp_sqr_ws(a1, a2);
        if ((*(a5 + (((v15 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v15 - 1)) & 1 | (2 * ((*(a5 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15) & 1)))
        {
          cczp_mul_ws(a1, a2);
        }

        v15 -= 2;
      }

      while (v15 != -1);
    }

    *(a1 + 16) = v17;
  }

  else
  {
    ccn_seti(v10, a3, 1);
    cczp_to_ws(a1, a2);
  }

  return 0;
}

uint64_t ccn_sqr_ws(uint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4)
{
  result = ccn_mul1(a2 - 1, a3 + 1, a4 + 1, *a4);
  a3[a2] = result;
  v8 = *a4;
  v9 = (v8 * v8) >> 64;
  v10 = v8 * v8;
  v11 = a3[1];
  v12 = __CFADD__(v9, 2 * v11);
  v13 = v9 + 2 * v11;
  if (v12)
  {
    v14 = (v11 >> 63) + 1;
  }

  else
  {
    v14 = v11 >> 63;
  }

  *a3 = v10;
  a3[1] = v13;
  v15 = a2 - 2;
  if (a2 >= 2)
  {
    v16 = 0;
    v17 = &a3[a2 + 1];
    v18 = a3 + 3;
    do
    {
      result = ccn_addmul1(v15, v18, &a4[v16 + 2], a4[v16 + 1]);
      *(v17 + v16 * 8) = result;
      v19 = a4[v16 + 1];
      v20 = (v19 * v19) >> 64;
      v21 = v19 * v19;
      v12 = __CFADD__(v21, v14);
      v22 = v21 + v14;
      if (v12)
      {
        ++v20;
      }

      v23 = *(v18 - 1);
      v24 = v23 >> 63;
      v12 = __CFADD__(v20, 2 * *v18);
      v25 = v20 + 2 * *v18;
      if (v12)
      {
        v26 = (*v18 >> 63) + 1;
      }

      else
      {
        v26 = *v18 >> 63;
      }

      v12 = __CFADD__(v22, 2 * v23);
      v27 = v22 + 2 * v23;
      v29 = v12;
      v12 = __CFADD__(v12, v25);
      v28 = v29 + v25;
      v12 |= __CFADD__(v24, v28);
      v28 += v24;
      if (v12)
      {
        v14 = v26 + 1;
      }

      else
      {
        v14 = v26;
      }

      *(v18 - 1) = v27;
      *v18 = v28;
      ++v16;
      --v15;
      v18 += 2;
    }

    while (v15 != -1);
  }

  return result;
}

uint64_t cczp_mm_mul_ws(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 16);
  v11 = cczp_n(a2);
  v12 = (*(a1 + 24))(a1, 2 * v11);
  ccn_mul_ws(a1, v11, v12, a4, a5);
  result = cczp_mm_redc_ws(a1, a2, a3, v12);
  *(a1 + 16) = v10;
  return result;
}

uint64_t cczp_mm_from_ws(uint64_t a1, void *a2, uint64_t *a3, void *a4)
{
  v8 = cczp_n(a2);
  v9 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, 2 * v8);
  if (v8)
  {
    ccn_set(v8, v10, a4);
  }

  ccn_zero(v8, &v10[8 * v8]);
  result = cczp_mm_redc_ws(a1, a2, a3, v10);
  *(a1 + 16) = v9;
  return result;
}

uint64_t ccn_write_uint_padded(uint64_t a1, uint64_t *a2, unint64_t a3, char *a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = ccn_write_uint_padded_internal(a1, a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ccn_write_uint_padded_internal(uint64_t a1, uint64_t *a2, unint64_t a3, char *a4)
{
  LODWORD(result) = ccn_write_uint_padded_ct_internal(a1, a2, a3, a4);
  if ((result & 0x80000000) == 0)
  {
    return result;
  }

  ccn_write_uint_internal(a1, a2, a3, a4);
  return 0;
}

uint64_t ccrsa_emsa_pkcs1v15_verify(unint64_t a1, _BYTE *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12 = timingsafe_enable_if_supported();
  v13[0] = 0xAAAAAAAAAAAAAAAALL;
  v13[1] = 0xAAAAAAAAAAAAAAAALL;
  v10 = ccrsa_emsa_pkcs1v15_verify_canary_out(a1, a2, a3, a4, a5, v13);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t ccrsa_emsa_pkcs1v15_verify_canary_out(unint64_t a1, _BYTE *a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  *a6 = 0;
  a6[1] = 0;
  if (a5)
  {
    v9 = *(a5 + 1);
    v10 = a3 + v9 + 10;
  }

  else
  {
    v9 = 0;
    v10 = a3;
  }

  if (v10 + 11 > a1)
  {
    return 4294967273;
  }

  v12 = a2 + 2;
  v13 = a2[1] ^ 1 | *a2;
  if (a1 - v10 != 3)
  {
    v14 = v10 - a1 + 3;
    do
    {
      v15 = *v12++;
      v13 |= ~v15;
    }

    while (!__CFADD__(v14++, 1));
    v12 = &a2[~v10 + a1];
  }

  v17 = (v12 + 1);
  v18 = *v12 | v13;
  if (a5)
  {
    v19 = v12[1] ^ 0x30;
    v20 = v12[2] ^ (v10 - 2);
    v21 = v12[3] ^ 0x30;
    v22 = v12 + 5;
    v23 = v12[4] ^ (v9 + 4);
    v24 = v9 + 2;
    v25 = cc_cmp_safe_internal(v9 + 2, (v12 + 5), a5);
    v26 = &v22[v24];
    v27 = v22[v24] ^ 5;
    v28 = v22[v24 + 1];
    v29 = v22[v24 + 2] ^ 4;
    v17 = &v22[v24 + 4];
    v18 |= v19 | v20 | v21 | v23 | v25 | v27 | v28 | v29 | v26[3] ^ a3;
  }

  cc_fault_canary_set(a6, &CCRSA_PKCS1_FAULT_CANARY, a3, a4, v17);
  return (v18 | cc_cmp_safe_internal(a3, v17, a4));
}

uint64_t ccec_export_pub(uint64_t *a1, char *a2)
{
  v3 = a1 + 2;
  v4 = *a1;
  v6 = ((cczp_bitlen(*a1) + 7) >> 2) | 1;
  return ccec_export_affine_point_public_value(v4, 1, v3, &v6, a2);
}

uint64_t ccder_blob_encode_eckey_internal(uint64_t *a1, uint64_t a2, uint64_t a3, const void *a4, unint64_t a5, const void *a6)
{
  if (!a2)
  {
    return 0;
  }

  v10 = a1[1];
  if (a5 && a6)
  {
    v13 = 0;
    if (!ccder_blob_encode_body(a1, a5, a6) || !ccder_blob_encode_body(a1, 1uLL, &v13) || !ccder_blob_encode_tl(a1, 3uLL, v10 - a1[1]))
    {
      return 0;
    }

    result = ccder_blob_encode_tl(a1, 0xA000000000000001, v10 - a1[1]);
    if (!result)
    {
      return result;
    }
  }

  if (!a4 || (v12 = a1[1], result = ccder_blob_encode_oid(a1, a4), result) && (result = ccder_blob_encode_tl(a1, 0xA000000000000000, v12 - a1[1]), result))
  {
    result = ccder_blob_encode_raw_octet_string(a1, a2, a3);
    if (result)
    {
      result = ccder_blob_encode_uint64(a1, 1);
      if (result)
      {
        return ccder_blob_encode_tl(a1, 0x2000000000000010uLL, v10 - a1[1]);
      }
    }
  }

  return result;
}

uint64_t ccder_blob_encode_body_tl(uint64_t *a1, unint64_t a2, unint64_t a3, const void *a4)
{
  result = ccder_blob_encode_body(a1, a3, a4);
  if (result)
  {

    return ccder_blob_encode_tl(a1, a2, a3);
  }

  return result;
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

uint64_t ccder_blob_reserve_tl(uint64_t *a1, unint64_t a2, unint64_t a3, void *a4)
{
  v9 = 0uLL;
  *a4 = 0;
  a4[1] = 0;
  result = ccder_blob_reserve(a1, a3, &v9);
  if (result)
  {
    result = ccder_blob_encode_tl(a1, a2, a3);
    if (result)
    {
      *a4 = v9;
      return 1;
    }
  }

  return result;
}

uint64_t ccder_blob_encode_implicit_integer(uint64_t *a1, unint64_t a2, unint64_t a3, uint64_t *a4)
{
  v11 = 0;
  v12 = 0;
  v8 = ccn_write_int_size_public_value(a3, a4);
  v9 = ccder_blob_reserve_tl(a1, a2, v8, &v11);
  if (v9)
  {
    ccn_write_int_public_value(a3, a4, v12 - v11, v11);
  }

  return v9;
}

uint64_t cccurve25519_make_pub_with_rng(uint64_t (**a1)(void, uint64_t, void *), uint64_t a2, __int128 *a3)
{
  v9 = timingsafe_enable_if_supported();
  v6 = ccec_cp_x25519();
  v7 = cccurve25519_internal(v6, a2, a3, kX25519BasePoint, a1);
  cc_disable_dit_with_sb(&v9);
  return v7;
}

uint64_t cccurve25519_internal(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4, uint64_t (**a5)(void, uint64_t, void *))
{
  v50 = *MEMORY[0x1E69E9840];
  v42 = cc_malloc_clear(0x200uLL);
  v43 = xmmword_1DF0F7E90;
  v44 = cc_ws_alloc;
  v45 = cc_ws_free;
  if (!v42)
  {
    return 4294967283;
  }

  v10 = cczp_n(a1);
  v11 = cc_ws_alloc(&v42, v10);
  v12 = v44(&v42, v10);
  __dst = v44(&v42, v10);
  v41 = v44(&v42, v10);
  v13 = v44(&v42, v10);
  v14 = v44(&v42, v10);
  v15 = (*a5)(a5, 32, v11);
  if (v15 || (v39 = v12, v15 = (*a5)(a5, 32, v12), v15))
  {
    v32 = v15;
  }

  else
  {
    v36 = v13;
    v38 = a2;
    v46 = 0;
    (*a5)(a5, 8, &v46);
    ccn_mux_seed_mask(v46);
    v16 = a3[1];
    __src = *a3;
    v49 = v16;
    LOBYTE(__src) = __src & 0xF8;
    HIBYTE(v49) = HIBYTE(v16) & 0x3F | 0x40;
    if (v10)
    {
      memcpy(__dst, &__src, 8 * v10);
      v17 = v41;
      v18 = v10;
      do
      {
        v19 = *a4++;
        *v17++ = v19;
        --v18;
      }

      while (v18);
    }

    v37 = v10;
    ccn_set_bit(v41, 0xFFuLL, 0);
    cczp_to_ws(&v42, a1);
    cczp_mul_ws(&v42, a1);
    v20 = cczp_n(a1);
    v35 = *(&v43 + 1);
    v21 = v44(&v42, 2 * v20);
    v22 = &v21[8 * v20];
    v23 = v44(&v42, 2 * v20);
    v24 = &v23[8 * v20];
    v44(&v42, v20);
    v25 = v44(&v42, v20);
    cc_clear(8 * v20, v24);
    ccn_set(v20, v22, v11);
    ccn_set(v20, v21, v41);
    __n = v20;
    ccn_set(v20, v23, v39);
    v26 = 0;
    for (i = 254; i != -1; --i)
    {
      v28 = v26;
      v26 = (*&__dst[(i >> 3) & 0x1FFFFFFFFFFFFFF8] >> i) & 1;
      ccn_cond_swap(8, v26 ^ v28, v21, v23);
      cczp_sub_ws(&v42, a1);
      cczp_sub_ws(&v42, a1);
      cczp_add_ws(&v42, a1);
      cczp_add_ws(&v42, a1);
      cczp_mul_ws(&v42, a1);
      cczp_mul_ws(&v42, a1);
      cczp_sqr_ws(&v42, a1);
      cczp_sqr_ws(&v42, a1);
      cczp_add_ws(&v42, a1);
      cczp_sub_ws(&v42, a1);
      cczp_mul_ws(&v42, a1);
      cczp_sub_ws(&v42, a1);
      cczp_sqr_ws(&v42, a1);
      ccec25519_mul121666_ws(&v42, a1, v22, v25);
      cczp_sqr_ws(&v42, a1);
      cczp_mul_ws(&v42, a1);
      cczp_add_ws(&v42, a1);
      cczp_mul_ws(&v42, a1);
      cczp_mul_ws(&v42, a1);
    }

    ccn_mux(__n, v26, v36, v21, v23);
    ccn_mux(__n, v26, v14, v22, v24);
    *(&v43 + 1) = v35;
    cczp_inv_ws(&v42, a1);
    cczp_mul_ws(&v42, a1);
    cczp_from_ws(&v42, a1);
    v29 = v37;
    if (v37)
    {
      v30 = v38 + 3;
      do
      {
        v31 = *v14++;
        *(v30 - 3) = v31;
        v30 += 8;
        --v29;
      }

      while (v29);
    }

    memset(v47, 0, sizeof(v47));
    if (cc_cmp_safe_internal(32, v38, v47))
    {
      v32 = 0;
    }

    else
    {
      v32 = 4294967289;
    }
  }

  *(&v43 + 1) = 0;
  v45(&v42);
  return v32;
}

uint64_t ccec_der_import_priv(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, uint64_t **a4)
{
  v23 = timingsafe_enable_if_supported();
  v8 = 26 * *a1;
  if (20 * *a1 > v8)
  {
    v8 = 20 * *a1;
  }

  v9 = cc_malloc_clear(8 * v8);
  v10 = 26 * *a1;
  if (20 * *a1 > v10)
  {
    v10 = 20 * *a1;
  }

  v21[0] = v9;
  v21[1] = v10;
  v21[2] = 0;
  v21[3] = cc_ws_alloc;
  v22 = cc_ws_free;
  if (v9)
  {
    v19 = 0;
    v20 = 0;
    v17 = 0;
    v18 = 0;
    v15 = 0;
    v16 = 0;
    *a4 = a1;
    if (ccder_decode_eckey_internal(&v20, &v19, &v17, &v15, &v18, &v16, a3, &a3[a2]) && (v11 = v19, v11 == (cczp_bitlen(&a1[5 * *a1 + 4]) + 7) >> 3) && !ccn_read_uint_internal(*a1, &a4[3 * **a4 + 2], v19, v17))
    {
      if (v16 && (v12 = v18, (((cczp_bitlen(a1) + 7) >> 2) | 1) <= v12 >> 3))
      {
        if (ccec_import_pub_ws(v21, a1, v18 >> 3, v16, a4))
        {
          pub_from_priv_ws = 0xFFFFFFFFLL;
        }

        else
        {
          pub_from_priv_ws = 0;
        }
      }

      else
      {
        pub_from_priv_ws = ccec_make_pub_from_priv_ws(v21, a1, 0, &a4[3 * **a4 + 2], 0, a4);
      }
    }

    else
    {
      pub_from_priv_ws = 0xFFFFFFFFLL;
    }

    v22(v21);
  }

  else
  {
    pub_from_priv_ws = 4294967283;
  }

  cc_disable_dit_with_sb(&v23);
  return pub_from_priv_ws;
}

uint64_t ccn_shift_right_asm(uint64_t result, int8x16_t *a2, int8x16_t *a3, uint64_t a4)
{
  if (result)
  {
    v4 = a3->i64[0];
    v5 = 64 - a4;
    v6 = vdupq_n_s64(64 - a4);
    v7 = vdupq_n_s64(-a4);
    v8 = result == 4;
    v9 = result < 4;
    result -= 4;
    if (!v9)
    {
      if (v8)
      {
        v13 = a3[1];
        *a2 = veorq_s8(vshlq_u64(*a3, v7), vshlq_u64(vextq_s8(*a3, v13, 8uLL), v6));
        a2[1] = veorq_s8(vshlq_u64(v13, v7), vshlq_u64(vextq_s8(v13, v13, 8uLL).u64[0], v6));
        return result;
      }

      do
      {
        v10 = *a3;
        v11 = a3[1];
        a3 += 2;
        v4 = a3->i64[0];
        v12.i64[0] = vextq_s8(v11, v11, 8uLL).u64[0];
        v12.i64[1] = a3->i64[0];
        *a2 = veorq_s8(vshlq_u64(v10, v7), vshlq_u64(vextq_s8(v10, v11, 8uLL), v6));
        a2[1] = veorq_s8(vshlq_u64(v11, v7), vshlq_u64(v12, v6));
        a2 += 2;
        v9 = result <= 4;
        result -= 4;
      }

      while (!v9);
    }

    v14 = result + 4;
    v15 = &a3->u64[1];
    v16 = v14 == 2;
    v9 = v14 < 2;
    result = v14 - 2;
    if (!v9)
    {
      if (v16)
      {
        v19 = *v15 >> a4;
        a2->i64[0] = (v4 >> a4) | (*v15 << v5) & (((64 - a4) >> 6) - 1);
        a2->i64[1] = v19;
        return result;
      }

      do
      {
        v17 = *v15;
        v18 = v15[1];
        v15 += 2;
        a2->i64[0] = (v4 >> a4) | (v17 << v5) & (((64 - a4) >> 6) - 1);
        a2->i64[1] = (v17 >> a4) | (v18 << v5) & (((64 - a4) >> 6) - 1);
        ++a2;
        v4 = v18;
        v9 = result <= 2;
        result -= 2;
      }

      while (!v9);
    }

    a2->i64[0] = v4 >> a4;
  }

  return result;
}

uint64_t ccec_verify_digest_ws(uint64_t a1, uint64_t **a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, void *a7)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    *a7 = 0;
    a7[1] = 0;
  }

  v19 = 0uLL;
  v13 = **a2;
  v14 = *(a1 + 16);
  v15 = (*(a1 + 24))(a1, v13);
  v16 = (*(a1 + 24))(a1, v13);
  if (ccder_decode_seqii(v13, v15, v16, a6, &a6[a5]) == &a6[a5])
  {
    result = ccec_verify_internal_ws(a1, a2, a3, a4, v15, v16, &v19);
    if (a7 && !result)
    {
      *a7 = v19;
    }
  }

  else
  {
    result = 4294967289;
  }

  *(a1 + 16) = v14;
  return result;
}

uint64_t ccder_blob_decode_seqii(unsigned __int8 **a1, unint64_t a2, void *a3, void *a4)
{
  v8 = 0;
  v9 = 0;
  result = ccder_blob_decode_sequence_tl(a1, &v8);
  if (result)
  {
    result = ccder_blob_decode_uint(&v8, a2, a3);
    if (result)
    {
      result = ccder_blob_decode_uint(&v8, a2, a4);
      if (result)
      {
        return v8 == v9;
      }
    }
  }

  return result;
}

unsigned __int8 *ccder_decode_seqii(unint64_t a1, void *a2, void *a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  if (!a4)
  {
    return 0;
  }

  v6[0] = a4;
  v6[1] = a5;
  if (ccder_blob_decode_seqii(v6, a1, a2, a3))
  {
    return v6[0];
  }

  else
  {
    return 0;
  }
}

void *cczp_from_default_ws(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = cczp_n(a2);

  return ccn_set(v6, a3, a4);
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

uint64_t cczp_inv_update_redc_ws(uint64_t a1, void *a2, void *a3, unint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  v11 = cczp_n(a2);
  v22 = *(a1 + 16);
  v12 = (*(a1 + 24))(a1, v11 + 1);
  v13 = (*(a1 + 24))(a1, v11);
  cczp_cond_negate(a2, a5 < 0, v12->i64, a4);
  cczp_cond_negate(a2, a7 < 0, v13, a6);
  v12->i64[v11] = ccn_mul1(v11, v12, v12, ((a5 >> 63) - 1) & a5 | -(a5 >> 63) & -a5);
  v12->i64[v11] += ccn_addmul1(v11, v12, v13, ((a7 >> 63) - 1) & a7 | -(a7 >> 63) & -a7);
  v14 = cczp_prime(a2);
  v12->i64[v11] += ccn_addmul1(v11, v12, v14, (LODWORD(a2[*a2 + 3]) * v12->i32[0]) & 0x7FFFFFFF);
  ccn_shift_right(v11 + 1, v12, v12, 31);
  ccn_set(v11, a3, v12);
  v15 = cczp_prime(a2);
  v16 = ccn_subn(v11 + 1, v12, v12->i64, v11, v15);
  result = ccn_mux(v11, v16, a3, a3, v12->i64);
  *(a1 + 16) = v22;
  return result;
}

unint64_t cczp_cond_negate(uint64_t a1, char a2, uint64_t *a3, unint64_t *a4)
{
  v8 = cczp_n(a1);
  if (ccn_n(v8, a4))
  {
    v9 = a2 & 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = cczp_prime(a1);

  return ccn_cond_rsub(v8, v9, a3, a4, v10);
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

uint64_t ccec_twin_mult_ws(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v12 = *a2;
  v24 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v12);
  v13 = (*(a1 + 24))(a1, v12);
  v25 = 3 * v12;
  v14 = (*(a1 + 24))(a1, 12 * v12);
  v15 = v14 + 48 * v12;
  v26 = v14;
  v16 = v14 + 72 * v12;
  ccec_full_add_ws(a1, a2);
  ccec_full_sub_ws(a1, a2, v16, a5, a7);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  v23 = cczp_inv_ws(a1, a2);
  if (!v23)
  {
    ccec_twin_mult_normalize_ws(a1, a2);
    ccec_twin_mult_normalize_ws(a1, a2);
    ccec_twin_mult_normalize_ws(a1, a2);
    ccec_twin_mult_normalize_ws(a1, a2);
    ccn_seti(v12, v13, 1);
    cczp_to_ws(a1, a2);
    ccn_set(v12, (v26 + 24 * v12 + 16 * *a2), (v26 + 16 * *a2));
    ccn_set(v12, (v15 + 16 * *a2), (v26 + 16 * *a2));
    ccn_set(v12, (v16 + 16 * *a2), (v26 + 16 * *a2));
    v17 = ccn_bitlen_internal(v12, a4);
    v18 = ccn_bitlen_internal(v12, a6);
    v27[1] = 0;
    v27[2] = 0;
    if (v17 <= v18)
    {
      v17 = v18;
    }

    v27[0] = 0;
    ccn_recode_jsf_init(v27, v17, a4, a6);
    ccn_set(v12, a3, (v26 + 16 * *a2));
    ccn_set(v12, &a3[8 * *a2], (v26 + 16 * *a2));
    cc_clear(8 * v12, &a3[16 * *a2]);
    for (; v17 != -1; --v17)
    {
      ccec_double_ws(a1, a2);
      ccn_recode_jsf_column(v27, v17, v28);
      if (v28[0])
      {
        v19 = (v26 + 8 * ccn_recode_jsf_index(v28) * v25);
        if (ccn_recode_jsf_direction(v28) == 1)
        {
          ccec_full_add_normalized_ws(a1, a2, a3, a3, v19);
        }

        else
        {
          ccec_full_sub_normalized_ws(a1, a2, a3, a3, v19);
        }
      }
    }
  }

  *(a1 + 16) = v24;
  return v23;
}

uint64_t ccec_map_to_homogeneous_ws(uint64_t a1, uint64_t a2)
{
  v4 = cczp_n(a2);
  v5 = *(a1 + 16);
  (*(a1 + 24))(a1, v4);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  result = cczp_mul_ws(a1, a2);
  *(a1 + 16) = v5;
  return result;
}

unint64_t cczp_negate(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  v6 = cczp_n(a1);
  v7 = ccn_n(v6, a3) != 0;
  v8 = cczp_prime(a1);

  return ccn_cond_rsub(v6, v7, a2, a3, v8);
}

uint64_t ccn_p256_inv_asm_ws(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v20 = *MEMORY[0x1E69E9840];
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
  v19[0] = xmmword_1DF0F8840;
  v19[1] = *algn_1DF0F8850;
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

uint64_t ccec_twin_mult_normalize_ws(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v4);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  result = cczp_mul_ws(a1, a2);
  *(a1 + 16) = v5;
  return result;
}

uint64_t cchkdf(rsize_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = timingsafe_enable_if_supported();
  v17 = cchkdf_internal(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  cc_disable_dit_with_sb(&v19);
  return v17;
}

uint64_t cchkdf_internal(rsize_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = a4;
  v19 = *MEMORY[0x1E69E9840];
  memset(v18, 0, sizeof(v18));
  if (!a4)
  {
    v13 = *a1;
    a5 = v18;
  }

  cchmac_internal(a1, v13, a5, a2, a3, v17);
  v15 = cchkdf_expand_internal(a1, *a1, v17, a6, a7, a8, a9);
  cc_clear(*a1, v17);
  return v15;
}

uint64_t ccgcm_one_shot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v22 = timingsafe_enable_if_supported();
  v20 = ccgcm_one_shot_internal(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  cc_disable_dit_with_sb(&v22);
  return v20;
}

uint64_t ccgcm_one_shot_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_0_43();
  v15 = v14;
  v28[1] = *MEMORY[0x1E69E9840];
  v18 = MEMORY[0x1EEE9AC00](v14, v16, v16, v17);
  v20 = v28 - v19;
  v21 = (*(v18 + 24))(v18, v28 - v19);
  if (!v21)
  {
    v21 = (*(v15 + 32))(v20, v13, v12);
    if (!v21)
    {
      v22 = OUTLINED_FUNCTION_1_23();
      v21 = v23(v22);
      if (!v21)
      {
        v24 = OUTLINED_FUNCTION_2_15();
        v21 = v25(v24);
        if (!v21)
        {
          v21 = (*(v15 + 56))(v20, a11, a12);
        }
      }
    }
  }

  v26 = v21;
  cc_clear(*v15, v20);
  return v26;
}

unsigned __int8 *ccder_decode_sequence_tl(unsigned __int8 **a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  *a1 = a2;
  if (!a2)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7[0] = a2;
  v7[1] = a3;
  if (!ccder_blob_decode_sequence_tl(v7, &v5))
  {
    return 0;
  }

  result = v5;
  *a1 = v6;
  return result;
}

uint64_t cczp_mm_sqr_ws(uint64_t a1, void *a2, uint64_t *a3, unint64_t *a4)
{
  v8 = *(a1 + 16);
  v9 = cczp_n(a2);
  v10 = (*(a1 + 24))(a1, 2 * v9);
  ccn_sqr_ws(a1, v9, v10, a4);
  result = cczp_mm_redc_ws(a1, a2, a3, v10);
  *(a1 + 16) = v8;
  return result;
}

unint64_t ccn_addmul1_asm(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t a4)
{
  v4 = 0;
  if (a1)
  {
    v5 = *a3++;
    v4 = (v5 * a4 + *a2) >> 64;
    *a2++ += v5 * a4;
    --a1;
  }

  if ((a1 & 2) != 0)
  {
    v6 = *a3;
    v7 = a3[1];
    a3 += 2;
    v8 = *a2 + __PAIR128__(v7 * a4, v4);
    v9 = v8 + v6 * a4;
    v4 = (__CFADD__(__CFADD__(v8, v6 * a4), *(&v8 + 1)) | __CFADD__((v6 * a4) >> 64, *(&v9 + 1))) + (__CFADD__(__CFADD__(*a2, v4), a2[1]) | __CFADD__(v7 * a4, *(&v8 + 1))) + ((v7 * a4) >> 64);
    *a2 = v9;
    a2 += 2;
    a1 -= 2;
  }

  while (1)
  {
    v10 = a1 < 4;
    a1 -= 4;
    if (v10)
    {
      break;
    }

    v11 = a2[2];
    v12 = a2[3];
    v14 = *a3;
    v15 = a3[1];
    v13 = a3 + 2;
    v16 = *v13;
    v17 = v13[1];
    a3 = v13 + 2;
    v18 = (v15 * a4) >> 64;
    v19 = *a2 + __PAIR128__(v15 * a4, v4);
    v20 = __CFADD__(__CFADD__(__CFADD__(*a2, v4), a2[1]) | __CFADD__(v15 * a4, *(&v19 + 1)), v11);
    v21 = (__CFADD__(__CFADD__(*a2, v4), a2[1]) | __CFADD__(v15 * a4, *(&v19 + 1))) + v11;
    v20 |= __CFADD__(v18, v21);
    v21 += v18;
    v23 = v20;
    v20 = __CFADD__(v20, v12);
    v22 = v23 + v12;
    v20 |= __CFADD__(v17 * a4, v22);
    v22 += v17 * a4;
    v24 = v20 + ((v17 * a4) >> 64);
    v25 = v19 + v14 * a4;
    *a2 = v25;
    v26 = a2 + 2;
    v27 = (v16 * a4) >> 64;
    v29 = __CFADD__(__CFADD__(v19, v14 * a4), *(&v19 + 1)) | __CFADD__((v14 * a4) >> 64, *(&v25 + 1));
    v20 = __CFADD__(v29, v21);
    v28 = v29 + v21;
    v31 = v20 | __CFADD__(v16 * a4, v28);
    v20 = __CFADD__(v31, v22);
    v30 = v31 + v22;
    v4 = (v20 | __CFADD__(v27, v30)) + v24;
    *v26 = v16 * a4 + v28;
    v26[1] = v27 + v30;
    a2 = v26 + 2;
  }

  return v4;
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

uint64_t ccec_verify(uint64_t **a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, BOOL *a6)
{
  v21 = timingsafe_enable_if_supported();
  *a6 = 0;
  v12 = cc_malloc_clear(376 * **a1);
  v13 = 47 * **a1;
  v19[0] = v12;
  v19[1] = v13;
  v19[2] = 0;
  v19[3] = cc_ws_alloc;
  v20 = cc_ws_free;
  if (v12)
  {
    v16 = ccec_verify_digest_ws(v19, a1, a2, a3, a4, a5, 0);
    v20(v19);
    if (v16 == -146)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16;
    }

    v18 = v16 == 0;
    if (v16)
    {
      v14 = v17;
    }

    else
    {
      v14 = 0;
    }

    *a6 = v18;
  }

  else
  {
    v14 = 4294967283;
  }

  cc_disable_dit_with_sb(&v21);
  return v14;
}

uint64_t ccec_verify_internal_with_base_ws(uint64_t a1, uint64_t **a2, unint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *a2;
  v17 = (*a2 + 4);
  v16 = **a2;
  if (a3 <= 0xF)
  {
    ccec_sign_internal_ws_cold_1(a3);
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

      if (cczp_inv_ws(a1, v17 + 40 * v16) || (cczp_mul_ws(a1, v17 + 40 * v16), cczp_mul_ws(a1, v17 + 40 * v16), v26 = a2 + 2, ccn_n(v16, &a2[2 * *v15 + 2]) != 1) || v26[2 * *v15] != 1)
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

uint64_t ccec_validate_scalar(void *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = cczp_prime(&a1[5 * *a1 + 4]);
  if ((ccn_cmp_public_value(v4, a2, v5) & 0x80000000) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (ccn_n(*a1, a2))
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t cczp_inv_default_ws(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  v7 = cczp_n(a2);
  v8 = cczp_prime(v6);
  v9 = v7;
  if ((ccn_cmp_public_value(v7, a4, v8) & 0x80000000) == 0)
  {
    return 4294967289;
  }

  __s = a3;
  v11 = v7 << 7;
  v12 = a1;
  v39 = *(a1 + 16);
  v13 = (*(a1 + 24))(a1, v7);
  v14 = (*(v12 + 24))(v12, v9);
  v49 = v13;
  cczp_from_ws(a1, v6);
  v15 = cczp_prime(v6);
  ccn_set(v9, v14, v15);
  v16 = (*(v12 + 24))(v12, v9);
  v17 = (*(v12 + 24))(v12, v9);
  v44 = v16;
  ccn_seti(v9, v16, 1);
  __n = 8 * v9;
  v45 = v17;
  cc_clear(8 * v9, v17);
  __src = (*(v12 + 24))(v12, v9);
  if (v11)
  {
    v18 = 0;
    v19 = ((v11 | 0x1EuLL) * 0x842108421084211uLL) >> 64;
    v20 = (v19 + (((v11 | 0x1EuLL) - v19) >> 1)) >> 4;
    if (v20 <= 1)
    {
      v20 = 1;
    }

    v42 = v20;
    v43 = v6;
    v41 = v14;
    do
    {
      v47 = v18;
      v50 = 0;
      v51 = 0;
      ccn_gcd_approximate(v9, v49, &v51, v14, &v50);
      v21 = 0;
      v22 = 0;
      LOBYTE(v23) = v51;
      v24 = 31;
      v25 = 0x80000000;
      v26 = 0x80000000;
      do
      {
        v27 = v23 & 1;
        v28 = -v27;
        v51 >>= 1 - v27;
        v29 = -((((v51 - v50) ^ v51 | v50 ^ v51) ^ v51) >> 63) & -v27;
        v30 = v51 & ~v29 | v50 & v29;
        v50 ^= v51 ^ v30;
        v31 = v26 & ~v29 | v29 & v22;
        v22 ^= v26 ^ v31;
        v32 = v21 & ~v29 | v29 & v25;
        v25 ^= v21 ^ v32;
        v23 = (v30 - (v50 & -v27)) >> v27;
        v51 = v23;
        v26 = (v31 - (v22 & v28)) & 0x8000000000000000 | ((v31 - (v22 & v28)) >> 1);
        v21 = (v32 - (v25 & v28)) & 0x8000000000000000 | ((v32 - (v25 & v28)) >> 1);
        --v24;
      }

      while (v24);
      v33 = v9;
      updated = ccn_gcd_update_ws(a1, v9, __src, v49, (v31 - (v22 & v28)) & 0x8000000000000000 | ((v31 - (v22 & v28)) >> 1), v14, (v32 - (v25 & v28)) & 0x8000000000000000 | ((v32 - (v25 & v28)) >> 1));
      v35 = ccn_gcd_update_ws(a1, v33, v14, v49, v22, v14, v25);
      ccn_set(v33, v49, __src);
      v36 = -updated & -v26;
      v37 = (updated - 1) & v26;
      v6 = v43;
      cczp_inv_update_redc_ws(a1, v43, __src, v44, v37 | v36, v45, (updated - 1) & v21 | -updated & -v21);
      v14 = v41;
      cczp_inv_update_redc_ws(a1, v43, v45, v44, (v35 - 1) & v22 | -v35 & -v22, v45, (v35 - 1) & v25 | -v35 & -v25);
      v9 = v33;
      ccn_set(v33, v44, __src);
      v18 = v47 + 1;
    }

    while (v47 + 1 != v42);
  }

  if (ccn_n(v9, v14) == 1 && *v14 == 1)
  {
    cczp_to_ws(a1, v6);
    result = 0;
  }

  else
  {
    cc_clear(__n, __s);
    result = 4294967289;
  }

  *(a1 + 16) = v39;
  return result;
}

uint64_t ccn_gcd_approximate(uint64_t result, void *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  *a3 = a2[result - 1];
  v5 = a4[result - 1];
  for (*a5 = v5; result != 1; --result)
  {
    v6 = v5 | *a3;
    v7 = __clz(v6 | 1);
    LOBYTE(v6) = v6 != 0 ? ((*a5 | *a3) >> 63) - v7 + 64 : 0;
    *a3 = (a2[result - 2] >> v6) | (*a3 << v7);
    v5 = (a4[result - 2] >> v6) | (*a5 << v7);
    *a5 = v5;
  }

  *a3 = *a3 & 0xFFFFFFFF80000000 | *a2 & 0x7FFFFFFFLL;
  *a5 = *a5 & 0xFFFFFFFF80000000 | *a4 & 0x7FFFFFFFLL;
  return result;
}

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

unint64_t ccn_subn(uint64_t a1, void *a2, uint64_t *a3, _BOOL8 a4, unint64_t *a5)
{
  v5 = a1 - a4;
  v6 = &a2[a4];
  v7 = &a3[a4];
  v8 = ccn_sub_ws(0, a4, a2, a3, a5);

  return ccn_sub1(v5, v6, v7, v8);
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

void *cczp_to_default_ws(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = cczp_n(a2);

  return ccn_set(v6, a3, a4);
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

uint64_t ccec_full_add_default_ws(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = cczp_n(a2);
  v16 = *(a1 + 16);
  (*(a1 + 24))(a1, v6);
  (*(a1 + 24))(a1, v6);
  (*(a1 + 24))(a1, v6);
  (*(a1 + 24))(a1, v6);
  (*(a1 + 24))(a1, v6);
  (*(a1 + 24))(a1, v6);
  (*(a1 + 24))(a1, v6);
  (*(a1 + 24))(a1, v6);
  (*(a1 + 24))(a1, v6);
  ccec_map_to_homogeneous_ws(a1, a2);
  ccec_map_to_homogeneous_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  v7 = cczp_n(a2);
  v8 = *a2;
  v9 = &a3[*a2];
  v10 = (*(a1 + 24))(a1, v7);
  v11 = (*(a1 + 24))(a1, v7);
  ccn_set(v7, v10, v9);
  cczp_from_ws(a1, a2);
  v12 = ccn_n(v7, v11) == 1 && *v11 == 1;
  v13 = ccn_n(v7, a3);
  if (ccn_n(v7, &a3[2 * v8]) | v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  ccn_mux(v7, v14, a3, v10, a3);
  result = ccn_mux(v7, v14, v9, v10, v9);
  *(a1 + 16) = v16;
  return result;
}

_OWORD *ccn_p256_from_asm_ws(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v6 = *MEMORY[0x1E69E9840];
  v5[0] = xmmword_1DF0F8840;
  v5[1] = *algn_1DF0F8850;
  return ccn_mulmod_p256(a3, a4, v5);
}

uint64_t ccec_full_sub_ws(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char *a5)
{
  v8 = *a2;
  v9 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, 3 * *a2);
  ccn_set(v8, v10, a5);
  cczp_negate(a2, &v10[8 * *a2], &a5[8 * *a2]);
  ccn_set(v8, &v10[16 * *a2], &a5[16 * *a2]);
  result = ccec_full_add_ws(a1, a2);
  *(a1 + 16) = v9;
  return result;
}

uint64_t ccn_recode_jsf_init(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  *(result + 8) = a3;
  *(result + 16) = a4;
  v5 = 1;
  do
  {
    v6 = v5;
    *(result + v4) = (8 * ((*(a3 + 8 * ((a2 - 1) >> 6)) >> ((a2 - 1) & 0x3F)) & 1)) | (4 * ((*(a3 + 8 * ((a2 - 2) >> 6)) >> ((a2 - 2) & 0x3F)) & 1)) | (2 * ((*(a3 + 8 * ((a2 - 3) >> 6)) >> ((a2 - 3) & 0x3F)) & 1)) | (*(a3 + 8 * ((a2 - 4) >> 6)) >> ((a2 - 4) & 0x3F)) & 1;
    a3 = a4;
    v4 = 1;
    v5 = 0;
  }

  while ((v6 & 1) != 0);
  return result;
}

uint64_t ccec_double_ws(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v4);
  cczp_sqr_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  result = cczp_sub_ws(a1, a2);
  *(a1 + 16) = v5;
  return result;
}

uint64_t ccn_recode_jsf_column(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = 0;
  if ((*result & 0x20) != 0)
  {
    v4 = *result & 0x1F ^ 0x1F;
  }

  else
  {
    v4 = *result & 0x1F;
  }

  v12[0] = v4;
  if ((*(result + 1) & 0x20) != 0)
  {
    v5 = *(result + 1) & 0x1F ^ 0x1F;
  }

  else
  {
    v5 = *(result + 1) & 0x1F;
  }

  v12[1] = v5;
  v11 = *(result + 8);
  v6 = &v11;
  v7 = 1;
  do
  {
    v8 = v7;
    if (a2 < 5)
    {
      LOBYTE(v9) = 0;
    }

    else
    {
      v9 = (*(*v6 + 8 * ((a2 - 5) >> 6)) >> ((a2 - 5) & 0x3F)) & 1;
    }

    if (v12[v3] >= F_2_2_11[v12[v3 ^ 1]])
    {
      LOBYTE(v9) = v9 | 0x20;
      if ((*(result + v3) & 0x20) != 0)
      {
        v10 = -1;
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

    v7 = 0;
    *(a3 + 4 * v3) = v10;
    *(result + v3) = v9 ^ (2 * *(result + v3));
    v6 = (&v11 + 8);
    v3 = 1;
  }

  while ((v8 & 1) != 0);
  return result;
}

uint64_t ccec_full_add_normalized_ws(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4, char *a5)
{
  v10 = *(a1 + 16);
  v11 = *a2;
  if (ccec_is_point_at_infinity(a2, a4))
  {
    ccn_set(v11, a3, a5);
    ccn_set(v11, &a3[8 * *a2], &a5[8 * *a2]);
    result = ccn_set(v11, &a3[16 * *a2], &a5[16 * *a2]);
  }

  else
  {
    result = ccec_add_normalized_ws(a1, a2, a3, a4, a5, 0);
  }

  *(a1 + 16) = v10;
  return result;
}

uint64_t ccn_recode_jsf_direction(unsigned int *a1)
{
  result = *a1;
  if (result != -1)
  {
    if (!result && a1[1] == -1)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t ccec_add_normalized_ws(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = *a2;
  v14 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, *a2);
  v11 = (*(a1 + 24))(a1, v9);
  (*(a1 + 24))(a1, v9);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  if (a6)
  {
    cczp_add_ws(a1, a2);
  }

  else
  {
    cczp_sub_ws(a1, a2);
  }

  if (ccn_n(v9, v10) || ccn_n(v9, v11))
  {
    if (ccn_n(v9, v10) || !ccn_n(v9, v11))
    {
      cczp_add_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      cczp_add_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      cczp_sqr_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      cczp_sqr_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      result = cczp_div2_ws(a1, a2, &a3[v9], &a3[v9]);
    }

    else
    {
      ccn_seti(v9, a3, 1);
      cczp_to_ws(a1, a2);
      ccn_set(v9, &a3[v9], a3);
      result = cc_clear(8 * v9, &a3[2 * v9]);
    }
  }

  else
  {
    result = ccec_double_ws(a1, a2);
  }

  *(a1 + 16) = v14;
  return result;
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

uint64_t ccec_full_sub_normalized_ws(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4, char *a5)
{
  v10 = *(a1 + 16);
  v11 = *a2;
  if (ccec_is_point_at_infinity(a2, a4))
  {
    ccn_set(v11, a3, a5);
    cczp_negate(a2, &a3[8 * *a2], &a5[8 * *a2]);
    result = ccn_set(v11, &a3[16 * *a2], &a5[16 * *a2]);
  }

  else
  {
    result = ccec_add_normalized_ws(a1, a2, a3, a4, a5, 1);
  }

  *(a1 + 16) = v10;
  return result;
}

uint64_t ccec_affinify_x_only_ws(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  if (ccec_is_point_at_infinity(a2, a4))
  {
    return 4294967289;
  }

  v8 = *(a1 + 16);
  (*(a1 + 24))(a1, v6);
  cczp_sqr_ws(a1, a2);
  v9 = cczp_inv_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_from_ws(a1, a2);
  *(a1 + 16) = v8;
  return v9;
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

uint64_t ccn_mod_521_ws(uint64_t a1, uint64_t a2, uint64_t *a3, int8x16_t *a4)
{
  v14[9] = *MEMORY[0x1E69E9840];
  ccn_shift_right(9, v12, a4 + 4, 9);
  v13 += a4[4].i64[0] & 0x1FF;
  v8 = ccn_add_ws(a1, 8, v12, v12[0].i64, a4->i64);
  v13 += v8;
  v9 = cczp_prime(a2);
  v10 = ccn_sub_ws(a1, 9, v14, v12[0].i64, v9);
  return ccn_mux(9, v10, a3, v12[0].i64, v14);
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

uint64_t cczp_power_ws(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v12 = cczp_n(a2);
  v13 = cczp_prime(a2);
  if ((ccn_cmp_public_value(v12, a4, v13) & 0x80000000) == 0)
  {
    return 4294967289;
  }

  v19 = *(a1 + 16);
  v15 = (*(a1 + 24))(a1, 4 * v12);
  v16 = (*(a1 + 24))(a1);
  v17 = cczp_prime(a2);
  ccn_sub1(v12, v15, v17, 1uLL);
  cczp_to_ws(a1, a2);
  ccn_set(v12, &v15[v12], a4);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  ccn_set(v12, a3, v15);
  v18 = (a5 & 1) + a5;
  if (v18 >= 2)
  {
    do
    {
      cczp_sqr_ws(a1, a2);
      cczp_sqr_ws(a1, a2);
      ccn_mux(2 * v12, (*(a6 + (((v18 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v18 - 1)) & 1, v16, &v15[2 * v12], v15);
      v18 -= 2;
      ccn_mux(v12, (*(a6 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v18) & 1, v16, &v16[v12], v16);
      cczp_mul_ws(a1, a2);
    }

    while (v18 > 1);
  }

  cczp_cond_negate(a2, (*a6 & 3) == 0, a3, a3);
  result = 0;
  *(a1 + 16) = v19;
  return result;
}

BOOL ccrsa_import_priv(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v8 = timingsafe_enable_if_supported();
  v6 = ccder_decode_rsa_priv_internal(a1, a3, &a3[a2]) == 0;
  cc_disable_dit_with_sb(&v8);
  return v6;
}

unsigned __int8 *ccder_decode_rsa_priv_internal(uint64_t *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = cc_malloc_clear(40 * *a1 + 24);
  v7 = 0;
  v8 = 5 * *a1 + 3;
  v10[0] = v6;
  v10[1] = v8;
  v10[2] = 0;
  v10[3] = cc_ws_alloc;
  v11 = cc_ws_free;
  if (v6)
  {
    v7 = ccder_decode_rsa_priv_ws(v10, a1, a2, a3);
    v11(v10);
  }

  return v7;
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

unsigned __int8 *ccder_decode_rsa_priv_ws(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v51 = a4;
  v6 = *a2;
  v7 = *(a1 + 16);
  v8 = ccder_decode_constructed_tl(0x2000000000000010, &v51, a3, a4);
  v50 = 0;
  v9 = ccder_decode_uint(1uLL, &v50, v8, v51);
  result = 0;
  if (v9)
  {
    if (!v50)
    {
      v11 = ccder_decode_uint(v6, a2 + 3, v9, v51);
      v12 = ccder_decode_uint(v6, &a2[2 * *a2 + 4], v11, v51);
      result = ccder_decode_uint(v6, &a2[3 * *a2 + 4], v12, v51);
      if (result)
      {
        v13 = result;
        if (cczp_mm_init_ws(a1, a2, v6, 0))
        {
          goto LABEL_14;
        }

        v14 = (((32 * v6) & 0x7FFFFFFFFFFFFFC0) + 64) >> 6;
        v15 = ccrsa_ctx_private_zp(a2);
        result = ccder_decode_uint(v14, v15 + 3, v13, v51);
        if (!result)
        {
          goto LABEL_13;
        }

        v16 = result;
        v17 = cczp_prime(v15);
        *v15 = (ccn_bitlen_internal(v14, v17) + 63) >> 6;
        if (cczp_init_ws(a1, v15))
        {
          goto LABEL_14;
        }

        v18 = ccrsa_ctx_private_zp(a2);
        v19 = v18 + 16 * *ccrsa_ctx_private_zp(a2);
        result = ccder_decode_uint(v14, (v19 + 56), v16, v51);
        if (!result)
        {
          goto LABEL_13;
        }

        v20 = result;
        v21 = cczp_prime(v19 + 32);
        *(v19 + 32) = (ccn_bitlen_internal(v14, v21) + 63) >> 6;
        if (cczp_init_ws(a1, (v19 + 32)) || (v22 = cczp_bitlen(v15), v22 < cczp_bitlen(v19 + 32)))
        {
LABEL_14:
          result = 0;
          goto LABEL_13;
        }

        v48 = v20;
        v49 = v7;
        v23 = cczp_n(v15);
        v24 = cczp_prime(v15);
        v25 = cczp_n(v19 + 32);
        v26 = cczp_prime(v19 + 32);
        v27 = *(a1 + 16);
        v28 = (*(a1 + 24))(a1, v23 + 1);
        *(v28 + 8 * v23) = *(v24 + 8 * v23 - 8) >> 63;
        ccn_shift_left(v23, v28, v24, 1uLL, v29);
        v30 = ccn_cmpn_internal(v23 + 1, v28, v25, v26);
        *(a1 + 16) = v27;
        if (((v30 + 1) & 0xFFFFFFFE) == 2)
        {
          v31 = cczp_n(v15);
          v32 = ccrsa_ctx_private_zp(a2);
          v33 = v32 + 16 * *ccrsa_ctx_private_zp(a2);
          v34 = ccrsa_ctx_private_zp(a2);
          v35 = ccder_decode_uint(v31, (v33 + 16 * *v34 + 64), v48, v51);
          v36 = cczp_n(v19 + 32);
          v37 = ccrsa_ctx_private_zp(a2);
          v38 = v37 + 16 * *ccrsa_ctx_private_zp(a2);
          v39 = v38 + 16 * *ccrsa_ctx_private_zp(a2);
          v40 = ccrsa_ctx_private_zp(a2);
          v41 = ccder_decode_uint(v36, (v39 + 8 * *v40 + 64), v35, v51);
          v42 = cczp_n(v15);
          v43 = ccrsa_ctx_private_zp(a2);
          v44 = v43 + 16 * *ccrsa_ctx_private_zp(a2);
          v45 = v44 + 16 * *ccrsa_ctx_private_zp(a2);
          v46 = v45 + 8 * *ccrsa_ctx_private_zp(a2);
          v47 = ccrsa_ctx_private_zp(a2);
          result = ccder_decode_uint(v42, (v46 + 8 * *v47 + 64), v41, v51);
        }

        else
        {
          result = 0;
        }

        v7 = v49;
      }
    }
  }

LABEL_13:
  *(a1 + 16) = v7;
  return result;
}

void *ccn_p384_from_asm_ws(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v5 = 1;
  return ccn_mulmod_p384(a3, a4, &v5);
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

uint64_t ccn_p384_inv_asm_ws(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v24 = *MEMORY[0x1E69E9840];
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

uint64_t ccgcm_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 24))(a1, a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
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

uint64_t ccder_sizeof_implicit_integer(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = ccn_write_int_size_public_value(a2, a3);

  return ccder_sizeof(a1, v4);
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

uint64_t ccder_blob_decode_eckey_internal(unsigned __int8 **a1, unint64_t *a2, void *a3, void *a4, unsigned __int8 **a5, void *a6, void *a7, unint64_t *a8)
{
  v23 = 0;
  v24 = 0;
  v22 = 0uLL;
  result = ccder_blob_decode_sequence_tl(a1, &v22);
  if (result)
  {
    result = ccder_blob_decode_uint64(&v22, a2);
    if (result)
    {
      if (*a2 == 1)
      {
        result = ccder_blob_decode_range(&v22, 4, &v23);
        if (!result)
        {
          return result;
        }

        v16 = v23;
        v17 = v24;
        *a4 = v23;
        *a3 = v17 - v16;
        v21 = v22;
        if (ccder_blob_decode_range(&v21, 0xA000000000000000, &v23))
        {
          result = ccder_blob_decode_oid(&v23, a5);
          if (!result)
          {
            return result;
          }

          v22 = v21;
        }

        else
        {
          *a5 = 0;
        }

        v20 = v22;
        if (ccder_blob_decode_range(&v20, 0xA000000000000001, &v23))
        {
          result = ccder_blob_decode_bitstring(&v23, &v23, a8);
          if (result)
          {
            v18 = v23;
            v19 = v24;
            *a7 = v23;
            *a6 = v19 - v18;
            return 1;
          }
        }

        else
        {
          *a7 = 0;
          *a6 = 0;
          result = 1;
          *a8 = 0;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t ccn_cmpn_public_value(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a1 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a1;
  }

  if (a1 >= a3)
  {
    v5 = a2;
  }

  else
  {
    v5 = a4;
  }

  if (a1 <= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a1;
  }

  if (a1 < a3)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  v8 = ccn_cmp_public_value(v4, a2, a4);
  if (ccn_n(v6 - v4, v5 + 8 * v4))
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

uint64_t ccder_blob_decode_uint64(unsigned __int8 **a1, unint64_t *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  v7 = 0;
  v8 = 0;
  result = ccder_blob_decode_range(a1, 2, &v7);
  if (result)
  {
    v4 = v7;
    if (v7 != v8 && (*v7 & 0x80000000) == 0)
    {
      if (*v7 || (v4 = (v7 + 1), v7 + 1 == v8) || *v4 < 0)
      {
        v7 = v4;
        if ((v8 - v4) <= 8)
        {
          if (v4 == v8)
          {
            v5 = 0;
            if (!a2)
            {
              return 1;
            }
          }

          else
          {
            v5 = 0;
            do
            {
              v6 = *v4++;
              v5 = v6 | (v5 << 8);
            }

            while (v4 != v8);
            if (!a2)
            {
              return 1;
            }
          }

          *a2 = v5;
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t ccec_make_pub_from_priv_ws(uint64_t a1, uint64_t *a2, uint64_t (**a3)(void, uint64_t, uint64_t *), uint64_t a4, uint64_t a5, uint64_t **a6)
{
  *a6 = a2;
  v12 = *a2;
  v13 = *(a1 + 16);
  v14 = (*(a1 + 24))(a1, 3 * *a2);
  if (ccec_validate_scalar(a2, a4))
  {
    result = 4294967274;
    goto LABEL_10;
  }

  if (a5)
  {
    result = ccec_validate_point_and_projectify_ws(a1, a2, v14, a5);
    if (result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = ccec_projectify_ws(a1, a2);
    if (result)
    {
      goto LABEL_10;
    }
  }

  v16 = OUTLINED_FUNCTION_0_40();
  if (ccec_mult_blinded_ws(v16, v17, v18, a4, v14, a3))
  {
    result = 4294967280;
  }

  else
  {
    v19 = OUTLINED_FUNCTION_0_40();
    if (ccec_is_point_projective_ws(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_0_40();
      if (ccec_affinify_ws(v21, v22))
      {
        result = 4294967279;
      }

      else
      {
        ccn_seti(v12, &a6[2 * **a6 + 2], 1);
        result = 0;
      }
    }

    else
    {
      result = 4294967277;
    }
  }

LABEL_10:
  *(a1 + 16) = v13;
  return result;
}

void *ccn_mulmod_p25519(void *a1, uint64_t *a2, unint64_t *a3)
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
  v13 = (v5 * v9) >> 64;
  v14 = *v3 * v9;
  v15 = (v6 * v9) >> 64;
  v16 = (__PAIR128__(v5, v4) * v9) >> 64;
  v17 = __CFADD__(__CFADD__((v4 * v9) >> 64, v5 * v9), v13);
  v18 = __CFADD__((v4 * v9) >> 64, v5 * v9) + v13;
  v17 |= __CFADD__(v14, v18);
  v18 += v14;
  v19 = (v7 * v9) >> 64;
  v20 = (v7 * v10) >> 64;
  v22 = v17;
  v17 = __CFADD__(v17, v15);
  v21 = v22 + v15;
  v17 |= __CFADD__(v7 * v9, v21);
  v21 += v7 * v9;
  v24 = v17;
  v17 = __CFADD__(v17, v19);
  v23 = v24 + v19;
  v17 |= __CFADD__(v7 * v10, v23);
  v23 += v7 * v10;
  v25 = v7 * *v8;
  v26 = (v7 * v11) >> 64;
  v28 = v17;
  v17 = __CFADD__(v17, v20);
  v27 = v28 + v20;
  v17 |= __CFADD__(v25, v27);
  v27 += v25;
  v30 = v17;
  v17 = __CFADD__(v17, v26);
  v29 = v30 + v26;
  v17 |= __CFADD__(v7 * v12, v29);
  v29 += v7 * v12;
  v31 = v17 + ((v7 * v12) >> 64);
  v32 = (v4 * v10) >> 64;
  v17 = __CFADD__(__CFADD__(v16, v4 * v10), v18);
  v33 = __CFADD__(v16, v4 * v10) + v18;
  v17 |= __CFADD__(v32, v33);
  v33 += v32;
  v34 = (v6 * v10) >> 64;
  v36 = v17;
  v17 = __CFADD__(v17, v21);
  v35 = v36 + v21;
  v17 |= __CFADD__(v6 * v10, v35);
  v35 += v6 * v10;
  v38 = v17;
  v17 = __CFADD__(v17, v23);
  v37 = v38 + v23;
  v17 |= __CFADD__(v34, v37);
  v37 += v34;
  v39 = (v6 * v12) >> 64;
  v41 = v17;
  v17 = __CFADD__(v17, v27);
  v40 = v41 + v27;
  v17 |= __CFADD__(v6 * v12, v40);
  v40 += v6 * v12;
  v43 = v17;
  v17 = __CFADD__(v17, v29);
  v42 = v43 + v29;
  v17 |= __CFADD__(v39, v42);
  v42 += v39;
  v44 = v17 + v31;
  v45 = (v5 * v10) >> 64;
  v17 = __CFADD__(__CFADD__(v33, v5 * v10), v35);
  v46 = __CFADD__(v33, v5 * v10) + v35;
  v17 |= __CFADD__(v45, v46);
  v46 += v45;
  v47 = (v6 * v11) >> 64;
  v49 = v17;
  v17 = __CFADD__(v17, v37);
  v48 = v49 + v37;
  v17 |= __CFADD__(v6 * v11, v48);
  v48 += v6 * v11;
  v51 = v17;
  v17 = __CFADD__(v17, v40);
  v50 = v51 + v40;
  v17 |= __CFADD__(v47, v50);
  v50 += v47;
  v52 = v17;
  v53 = (v4 * v11) >> 64;
  v17 = __CFADD__(__CFADD__(v33 + v5 * v10, v4 * v11), v46);
  v54 = __CFADD__(v33 + v5 * v10, v4 * v11) + v46;
  v17 |= __CFADD__(v53, v54);
  v54 += v53;
  v55 = (v5 * v12) >> 64;
  v57 = v17;
  v17 = __CFADD__(v17, v48);
  v56 = v57 + v48;
  v17 |= __CFADD__(v5 * v12, v56);
  v56 += v5 * v12;
  v59 = v17;
  v17 = __CFADD__(v17, v50);
  v58 = v59 + v50;
  v17 |= __CFADD__(v55, v58);
  v58 += v55;
  v60 = v17 + v52;
  v61 = (v5 * v11) >> 64;
  v17 = __CFADD__(__CFADD__(v54, v5 * v11), v56);
  v62 = __CFADD__(v54, v5 * v11) + v56;
  v17 |= __CFADD__(v61, v62);
  v62 += v61;
  v63 = (v4 * v12) >> 64;
  return ccn_reduce_p25519_and_ret(a1, v63, v4 * v12, v4, v5, v6, v60, (__CFADD__(__CFADD__(__CFADD__(__CFADD__(v54 + v5 * v11, v4 * v12), v62) | __CFADD__(v63, __CFADD__(v54 + v5 * v11, v4 * v12) + v62), v58) | __CFADD__(v17, (__CFADD__(__CFADD__(v54 + v5 * v11, v4 * v12), v62) | __CFADD__(v63, __CFADD__(v54 + v5 * v11, v4 * v12) + v62)) + v58), v42) | __CFADD__(v60, (__CFADD__(__CFADD__(__CFADD__(v54 + v5 * v11, v4 * v12), v62) | __CFADD__(v63, __CFADD__(v54 + v5 * v11, v4 * v12) + v62), v58) | __CFADD__(v17, (__CFADD__(__CFADD__(v54 + v5 * v11, v4 * v12), v62) | __CFADD__(v63, __CFADD__(v54 + v5 * v11, v4 * v12) + v62)) + v58)) + v42)) + v44);
}

uint64_t ccrsa_export_priv_size(uint64_t *a1)
{
  v4 = timingsafe_enable_if_supported();
  v2 = ccder_encode_rsa_priv_size(a1);
  cc_disable_dit_with_sb(&v4);
  return v2;
}

void *ccn_reduce_p25519_and_ret(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v15 = (v12 * 0x26uLL) >> 64;
  v16 = __CFADD__(v8, 38 * v12);
  v17 = v8 + 38 * v12;
  v19 = v16;
  v16 = __CFADD__(v16, v9);
  v18 = v19 + v9;
  v16 |= __CFADD__(v15, v18);
  v18 += v15;
  v20 = (v14 * 0x26uLL) >> 64;
  v22 = v16;
  v16 = __CFADD__(v16, v10);
  v21 = v22 + v10;
  v16 |= __CFADD__(38 * v14, v21);
  v21 += 38 * v14;
  v24 = v16;
  v16 = __CFADD__(v16, v11);
  v23 = v24 + v11;
  v16 |= __CFADD__(v20, v23);
  v23 += v20;
  v25 = v16;
  v26 = (v13 * 0x26uLL) >> 64;
  v16 = __CFADD__(v18, 38 * v13);
  v27 = v18 + 38 * v13;
  v29 = v16;
  v16 = __CFADD__(v16, v21);
  v28 = v29 + v21;
  v16 |= __CFADD__(v26, v28);
  v28 += v26;
  v31 = v16;
  v16 = __CFADD__(v16, v23);
  v30 = v31 + v23;
  v16 |= __CFADD__(38 * a8, v30);
  v30 += 38 * a8;
  v32 = 38 * (((a8 * 0x26uLL) >> 64) + v16 + v25);
  *a1 = v17 + v32 + (!__CFADD__(__CFADD__(__CFADD__(__CFADD__(v17, v32), v27), v28), v30) ? 0 : 0x26uLL);
  a1[1] = __CFADD__(v17, v32) + v27;
  result = a1 + 2;
  *result = __CFADD__(__CFADD__(v17, v32), v27) + v28;
  result[1] = __CFADD__(__CFADD__(__CFADD__(v17, v32), v27), v28) + v30;
  return result;
}

uint64_t ccn_cond_swap(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  result = ccn_mux_next_mask();
  for (i = __ROR8__(0x5555555555555555, a2 | (2 * result)); a1; --a1)
  {
    v10 = *a4 ^ *a3;
    *a3 ^= result;
    v11 = *a4 ^ result;
    *a4 = v11;
    v12 = *a3 ^ v10 & 0x5555555555555555;
    v13 = v11 ^ v10 & 0x5555555555555555;
    v14 = v10 & i;
    *a3++ = v12 ^ v14 ^ result;
    *a4++ = v13 ^ v14 ^ result;
  }

  return result;
}

uint64_t ccder_encode_rsa_priv_size(uint64_t *a1)
{
  v2 = a1 + 3;
  v3 = *a1;
  v43 = 0;
  v4 = ccder_sizeof_integer(1, &v43);
  v5 = ccder_sizeof_integer(v3, v2) + v4;
  v6 = v5 + ccder_sizeof_integer(v3, &v2[2 * v3 + 1]);
  v7 = ccder_sizeof_integer(v3, &v2[3 * v3 + 1]);
  v8 = ccrsa_ctx_private_zp(a1);
  v9 = cczp_n(v8);
  v10 = ccrsa_ctx_private_zp(a1);
  v11 = cczp_prime(v10);
  v12 = v6 + ccder_sizeof_integer(v9, v11);
  v13 = ccrsa_ctx_private_zp(a1);
  v14 = ccrsa_ctx_private_zp(a1);
  v15 = cczp_n(v13 + 16 * *v14 + 32);
  v16 = ccrsa_ctx_private_zp(a1);
  v17 = ccrsa_ctx_private_zp(a1);
  v18 = cczp_prime(v16 + 16 * *v17 + 32);
  v19 = v12 + ccder_sizeof_integer(v15, v18) + v7;
  v20 = ccrsa_ctx_private_zp(a1);
  v21 = cczp_n(v20);
  v22 = ccrsa_ctx_private_zp(a1);
  v23 = v22 + 16 * *ccrsa_ctx_private_zp(a1);
  v24 = ccrsa_ctx_private_zp(a1);
  v25 = v19 + ccder_sizeof_integer(v21, (v23 + 16 * *v24 + 64));
  v26 = ccrsa_ctx_private_zp(a1);
  v27 = ccrsa_ctx_private_zp(a1);
  v28 = cczp_n(v26 + 16 * *v27 + 32);
  v29 = ccrsa_ctx_private_zp(a1);
  v30 = v29 + 16 * *ccrsa_ctx_private_zp(a1);
  v31 = v30 + 16 * *ccrsa_ctx_private_zp(a1);
  v32 = ccrsa_ctx_private_zp(a1);
  v33 = v25 + ccder_sizeof_integer(v28, (v31 + 8 * *v32 + 64));
  v34 = ccrsa_ctx_private_zp(a1);
  v35 = cczp_n(v34);
  v36 = ccrsa_ctx_private_zp(a1);
  v37 = v36 + 16 * *ccrsa_ctx_private_zp(a1);
  v38 = v37 + 16 * *ccrsa_ctx_private_zp(a1);
  v39 = v38 + 8 * *ccrsa_ctx_private_zp(a1);
  v40 = ccrsa_ctx_private_zp(a1);
  v41 = ccder_sizeof_integer(v35, (v39 + 8 * *v40 + 64));
  return ccder_sizeof(0x2000000000000010, v33 + v41);
}

_OWORD *ccn_submod_p25519(void *a1, unint64_t *a2, unint64_t *a3)
{
  v4 = *a2;
  v5 = a2[1];
  v3 = a2 + 2;
  v6 = v3[1];
  v8 = *a3;
  v9 = a3[1];
  v7 = a3 + 2;
  v10 = v7[1];
  v11 = *v3 - (*v7 + (__PAIR128__(v5, v4) < __PAIR128__(v9, v8)));
  v13 = __CFSUB__(*v3, *v7, __PAIR128__(v5, v4) >= __PAIR128__(v9, v8));
  v12 = v6 - (v10 + !v13);
  v14 = -!__CFSUB__(v6, v10, v13) & 0x26;
  *a1 = v4 - v8 - v14 - (-(__PAIR128__(v12, v11) < (__PAIR128__(v5, v4) - __PAIR128__(v9, v8) < v14)) & 0x26);
  a1[1] = (__PAIR128__(v5, v4) - __PAIR128__(v9, v8) - v14) >> 64;
  result = a1 + 2;
  *result = __PAIR128__(v12, v11) - (__PAIR128__(v5, v4) - __PAIR128__(v9, v8) < v14);
  return result;
}

BOOL ccrsa_export_priv(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = timingsafe_enable_if_supported();
  v6 = ccder_encode_rsa_priv_internal(a1, a3, a3 + a2) != a3;
  cc_disable_dit_with_sb(&v8);
  return v6;
}

void *ccn_addmod_p25519(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = a2[1];
  v3 = a2 + 2;
  v6 = v3[1];
  v8 = *a3;
  v9 = a3[1];
  v7 = a3 + 2;
  v10 = v7[1];
  v11 = v9 + __CFADD__(v4, v8) + v5;
  v12 = *v7 + (__CFADD__(__CFADD__(v4, v8), v5) | __CFADD__(v9, __CFADD__(v4, v8) + v5)) + *v3;
  v13 = v10 + (__CFADD__(__CFADD__(__CFADD__(v4, v8), v5) | __CFADD__(v9, __CFADD__(v4, v8) + v5), *v3) | __CFADD__(*v7, (__CFADD__(__CFADD__(v4, v8), v5) | __CFADD__(v9, __CFADD__(v4, v8) + v5)) + *v3)) + v6;
  v14 = !(__CFADD__(__CFADD__(__CFADD__(__CFADD__(v4, v8), v5) | __CFADD__(v9, __CFADD__(v4, v8) + v5), *v3) | __CFADD__(*v7, (__CFADD__(__CFADD__(v4, v8), v5) | __CFADD__(v9, __CFADD__(v4, v8) + v5)) + *v3), v6) | __CFADD__(v10, (__CFADD__(__CFADD__(__CFADD__(v4, v8), v5) | __CFADD__(v9, __CFADD__(v4, v8) + v5), *v3) | __CFADD__(*v7, (__CFADD__(__CFADD__(v4, v8), v5) | __CFADD__(v9, __CFADD__(v4, v8) + v5)) + *v3)) + v6)) ? 0 : 0x26uLL;
  *a1 = v4 + v8 + v14 + (!__CFADD__(__CFADD__(__CFADD__(__CFADD__(v4 + v8, v14), v11), v12), v13) ? 0 : 0x26uLL);
  a1[1] = __CFADD__(v4 + v8, v14) + v11;
  result = a1 + 2;
  *result = __CFADD__(__CFADD__(v4 + v8, v14), v11) + v12;
  result[1] = __CFADD__(__CFADD__(__CFADD__(v4 + v8, v14), v11), v12) + v13;
  return result;
}

void *ccn_sqrmod_p25519(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v2 = a2 + 2;
  v5 = *v2;
  v6 = v2[1];
  v7 = (v3 * *v2) >> 64;
  v8 = (v3 * v6) >> 64;
  v9 = (__PAIR128__(*v2, v4) * v3) >> 64;
  v10 = __CFADD__(__CFADD__((v3 * v4) >> 64, v3 * *v2), v7);
  v11 = __CFADD__((v3 * v4) >> 64, v3 * *v2) + v7;
  v10 |= __CFADD__(v3 * v6, v11);
  v11 += v3 * v6;
  v12 = (v4 * v6) >> 64;
  v13 = *v2 * v6;
  v14 = (v5 * v6) >> 64;
  v16 = v10;
  v10 = __CFADD__(v10, v8);
  v15 = v16 + v8;
  v10 |= __CFADD__(v4 * v6, v15);
  v15 += v4 * v6;
  v18 = v10;
  v10 = __CFADD__(v10, v12);
  v17 = v18 + v12;
  v10 |= __CFADD__(v13, v17);
  v17 += v13;
  v19 = v10;
  v20 = (v4 * v5) >> 64;
  v10 = __CFADD__(v11, v4 * v5);
  v21 = v11 + v4 * v5;
  v23 = v10;
  v10 = __CFADD__(v10, v15);
  v22 = v23 + v15;
  v10 |= __CFADD__(v20, v22);
  v22 += v20;
  v25 = v10;
  v10 = __CFADD__(v10, v17);
  v24 = v25 + v17;
  v27 = v10;
  v10 = __CFADD__(v10, v14);
  v26 = v27 + v14;
  v10 |= __CFADD__(v19, v26);
  v26 += v19;
  v28 = v10;
  v10 = __CFADD__(__CFADD__(v3 * v4, v3 * v4), v9) | __CFADD__(v9, __CFADD__(v3 * v4, v3 * v4) + v9);
  v29 = v9 + __CFADD__(v3 * v4, v3 * v4) + v9;
  v31 = v10 + v21;
  v10 = __CFADD__(v10, v21) | __CFADD__(v21, v31);
  v30 = v21 + v31;
  v33 = v10 + v22;
  v10 = __CFADD__(v10, v22) | __CFADD__(v22, v33);
  v32 = v22 + v33;
  v35 = v10 + v24;
  v10 = __CFADD__(v10, v24) | __CFADD__(v24, v35);
  v34 = v24 + v35;
  v37 = v10 + v26;
  v10 = __CFADD__(v10, v26) | __CFADD__(v26, v37);
  v36 = v26 + v37;
  v38 = v28 + v10 + v28;
  v10 = __CFADD__(__CFADD__(__CFADD__(__CFADD__(__CFADD__(2 * v3 * v4, (v3 * v3) >> 64), v29) | __CFADD__(v4 * v4, __CFADD__(2 * v3 * v4, (v3 * v3) >> 64) + v29), v30) | __CFADD__((v4 * v4) >> 64, (__CFADD__(__CFADD__(2 * v3 * v4, (v3 * v3) >> 64), v29) | __CFADD__(v4 * v4, __CFADD__(2 * v3 * v4, (v3 * v3) >> 64) + v29)) + v30), v32) | __CFADD__(v5 * v5, (__CFADD__(__CFADD__(__CFADD__(2 * v3 * v4, (v3 * v3) >> 64), v29) | __CFADD__(v4 * v4, __CFADD__(2 * v3 * v4, (v3 * v3) >> 64) + v29), v30) | __CFADD__((v4 * v4) >> 64, (__CFADD__(__CFADD__(2 * v3 * v4, (v3 * v3) >> 64), v29) | __CFADD__(v4 * v4, __CFADD__(2 * v3 * v4, (v3 * v3) >> 64) + v29)) + v30)) + v32), v34);
  v39 = v10 | __CFADD__((v5 * v5) >> 64, (__CFADD__(__CFADD__(__CFADD__(__CFADD__(2 * v3 * v4, (v3 * v3) >> 64), v29) | __CFADD__(v4 * v4, __CFADD__(2 * v3 * v4, (v3 * v3) >> 64) + v29), v30) | __CFADD__((v4 * v4) >> 64, (__CFADD__(__CFADD__(2 * v3 * v4, (v3 * v3) >> 64), v29) | __CFADD__(v4 * v4, __CFADD__(2 * v3 * v4, (v3 * v3) >> 64) + v29)) + v30), v32) | __CFADD__(v5 * v5, (__CFADD__(__CFADD__(__CFADD__(2 * v3 * v4, (v3 * v3) >> 64), v29) | __CFADD__(v4 * v4, __CFADD__(2 * v3 * v4, (v3 * v3) >> 64) + v29), v30) | __CFADD__((v4 * v4) >> 64, (__CFADD__(__CFADD__(2 * v3 * v4, (v3 * v3) >> 64), v29) | __CFADD__(v4 * v4, __CFADD__(2 * v3 * v4, (v3 * v3) >> 64) + v29)) + v30)) + v32)) + v34);
  return ccn_reduce_p25519_and_ret(a1, (v6 * v6) >> 64, v6 * v6, v3, v4, v5, v6, ((v6 * v6) >> 64) + (__CFADD__(v39, v36) | __CFADD__(v6 * v6, v39 + v36)) + v38);
}

uint64_t ccder_encode_rsa_priv_internal(void *a1, uint64_t a2, uint64_t a3)
{
  v46[1] = *MEMORY[0x1E69E9840];
  v5 = a1 + 3;
  v6 = *a1;
  v45 = &a1[2 * *a1 + 3];
  v46[0] = 0;
  v44 = &a1[3 * v6 + 3];
  v43 = ccrsa_ctx_private_zp(a1);
  v7 = ccrsa_ctx_private_zp(a1);
  v8 = v7 + 16 * *ccrsa_ctx_private_zp(a1);
  v9 = ccrsa_ctx_private_zp(a1);
  v41 = cczp_n(v9);
  v10 = ccrsa_ctx_private_zp(a1);
  v11 = v10 + 16 * *ccrsa_ctx_private_zp(a1);
  v12 = v11 + 16 * *ccrsa_ctx_private_zp(a1);
  v13 = ccrsa_ctx_private_zp(a1);
  v14 = ccrsa_ctx_private_zp(a1);
  v15 = cczp_n(v13 + 16 * *v14 + 32);
  v16 = ccrsa_ctx_private_zp(a1);
  v17 = v16 + 16 * *ccrsa_ctx_private_zp(a1);
  v18 = v17 + 16 * *ccrsa_ctx_private_zp(a1);
  v19 = v18 + 8 * *ccrsa_ctx_private_zp(a1);
  v20 = ccrsa_ctx_private_zp(a1);
  v21 = cczp_n(v20);
  v22 = ccrsa_ctx_private_zp(a1);
  v23 = v22 + 16 * *ccrsa_ctx_private_zp(a1);
  v24 = v23 + 16 * *ccrsa_ctx_private_zp(a1);
  v25 = v24 + 8 * *ccrsa_ctx_private_zp(a1);
  v26 = (v25 + 8 * *ccrsa_ctx_private_zp(a1) + 64);
  v27 = ccder_encode_integer(v21, v26, a2, a3);
  v28 = ccder_encode_integer(v15, (v19 + 64), a2, v27);
  v29 = ccder_encode_integer(v41, (v12 + 64), a2, v28);
  v30 = cczp_n(v8 + 32);
  v31 = cczp_prime(v8 + 32);
  v32 = ccder_encode_integer(v30, v31, a2, v29);
  v33 = cczp_n(v43);
  v34 = cczp_prime(v43);
  v35 = ccder_encode_integer(v33, v34, a2, v32);
  v36 = ccder_encode_integer(v6, (v44 + 8), a2, v35);
  v37 = ccder_encode_integer(v6, (v45 + 8), a2, v36);
  v38 = ccder_encode_integer(v6, v5, a2, v37);
  v39 = ccder_encode_integer(1uLL, v46, a2, v38);
  return ccder_encode_constructed_tl(0x2000000000000010uLL, a3, a2, v39);
}

uint64_t ccder_encode_integer(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a3;
  v6 = a4;
  if (ccder_blob_encode_integer(&v5, a1, a2))
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

BOOL ccec25519_mul121666_ws(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v6 = ccn_mul1(4, v8, a4, 121666);
  result = ccn_add1_ws(a1, 4, a3, v8, 38 * v6);
  *a3 += result ? 0x26uLL : 0;
  return result;
}

unint64_t ccn_write_uint_size(uint64_t a1, uint64_t *a2)
{
  v6 = timingsafe_enable_if_supported();
  v4 = (ccn_bitlen_public_value(a1, a2) + 7) >> 3;
  cc_disable_dit_with_sb(&v6);
  return v4;
}

uint64_t ccec25519_inv_ws(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 16);
  v7 = (*(a1 + 24))(a1, 4);
  v8 = (*(a1 + 24))(a1, 4);
  v9 = (*(a1 + 24))(a1, 4);
  cczp_sqr_ws(a1, a2);
  ccn_set(4, v7, v8);
  cczp_sqr_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  ccn_set(4, v7, v9);
  v10 = 5;
  do
  {
    cczp_sqr_ws(a1, a2);
    --v10;
  }

  while (v10);
  cczp_mul_ws(a1, a2);
  ccn_set(4, v7, v9);
  v11 = 10;
  do
  {
    cczp_sqr_ws(a1, a2);
    --v11;
  }

  while (v11);
  cczp_mul_ws(a1, a2);
  ccn_set(4, v7, a3);
  v12 = 20;
  do
  {
    cczp_sqr_ws(a1, a2);
    --v12;
  }

  while (v12);
  cczp_mul_ws(a1, a2);
  ccn_set(4, v7, v7);
  v13 = 10;
  do
  {
    cczp_sqr_ws(a1, a2);
    --v13;
  }

  while (v13);
  cczp_mul_ws(a1, a2);
  ccn_set(4, v7, v9);
  v14 = 50;
  do
  {
    cczp_sqr_ws(a1, a2);
    --v14;
  }

  while (v14);
  cczp_mul_ws(a1, a2);
  ccn_set(4, v7, a3);
  v15 = 100;
  do
  {
    cczp_sqr_ws(a1, a2);
    --v15;
  }

  while (v15);
  cczp_mul_ws(a1, a2);
  ccn_set(4, v7, v7);
  v16 = 50;
  do
  {
    cczp_sqr_ws(a1, a2);
    --v16;
  }

  while (v16);
  cczp_mul_ws(a1, a2);
  ccn_set(4, v7, v7);
  v17 = 5;
  do
  {
    cczp_sqr_ws(a1, a2);
    --v17;
  }

  while (v17);
  cczp_mul_ws(a1, a2);
  *(a1 + 16) = v6;
  return 0;
}

uint64_t ccec_mult_blinded_ws(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (**a6)(void, uint64_t, uint64_t *))
{
  v17[1] = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v11 = ccn_bitlen_internal(*a2, a4);
  if (v11 > cczp_bitlen(a2))
  {
    return 4294967289;
  }

  v17[0] = 1;
  if (a6)
  {
    result = (*a6)(a6, 8, v17);
    if (result)
    {
      return result;
    }

    v13 = v17[0] | 0x80000000;
  }

  else
  {
    v13 = 2147483649;
  }

  v17[0] = v13;
  v14 = *(a1 + 16);
  (*(a1 + 24))(a1, 3 * v10);
  v15 = (*(a1 + 24))(a1, v10);
  ccn_mux_seed_mask(v17[0]);
  v17[0] = LODWORD(v17[0]);
  result = ccec_mult_ws(a1, a2);
  if (!result)
  {
    ccn_divmod_ws(a1, v10, a4, v10, v15, 1, v16, v17);
    cczp_bitlen(a2);
    result = ccec_mult_ws(a1, a2);
    if (!result)
    {
      result = ccec_mult_ws(a1, a2);
      if (!result)
      {
        ccec_full_add_ws(a1, a2);
        result = 0;
      }
    }
  }

  *(a1 + 16) = v14;
  return result;
}

uint64_t ccec_mult_default_ws(uint64_t a1, uint64_t *a2, uint64_t *a3, _BYTE *a4, unint64_t a5, uint64_t *a6)
{
  v12 = a2 + 4;
  if (cczp_bitlen(&a2[5 * *a2 + 4]) < a5)
  {
    return 4294967289;
  }

  v52 = a3;
  __src = a4;
  v55 = v12;
  v14 = *a2;
  v15 = (a5 + 63) >> 6;
  v54 = *(a1 + 16);
  v16 = 3 * *a2;
  v17 = (*(a1 + 24))(a1, v16);
  v18 = (*(a1 + 24))(a1, v14);
  v56 = ccn_n(v14, a6) == 0;
  if (a5 + 63 >= 0x40)
  {
    ccn_set((a5 + 63) >> 6, v18, a4);
  }

  ccn_zero(v14 - v15, v18 + 8 * v15);
  v18->i64[v15 - 1] &= 0xFFFFFFFFFFFFFFFFLL >> -a5;
  v51 = (a5 + 63) >> 6;
  v58 = v18;
  ccn_shift_right(v51, v18, v18, v56);
  ccec_double_ws(a1, a2);
  ccn_mux(3 * v14, !v56, v17, a6, v17);
  if (!ccn_n(v14, v17))
  {
LABEL_13:
    result = 0xFFFFFFFFLL;
    goto LABEL_16;
  }

  if (cczp_bitlen(&v55[5 * *a2]) >= a5)
  {
    v19 = *a2;
    if (ccn_n(*a2, v17))
    {
      v48 = v16;
      v46 = *(a1 + 16);
      v20 = (*(a1 + 24))(a1, 2 * v19);
      v21 = (*(a1 + 24))(a1, 2 * v19);
      v57 = 2 * v19;
      v22 = (*(a1 + 24))(a1, 2 * v19);
      v23 = *a2;
      v43 = *(a1 + 16);
      __dst = v22;
      (*(a1 + 24))(a1, *a2);
      v50 = v19;
      (*(a1 + 24))(a1, v23);
      (*(a1 + 24))(a1, v23);
      cczp_sqr_ws(a1, a2);
      cczp_add_ws(a1, a2);
      cczp_add_ws(a1, a2);
      cczp_sqr_ws(a1, a2);
      cczp_sqr_ws(a1, a2);
      cczp_add_ws(a1, a2);
      cczp_add_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      cczp_sqr_ws(a1, a2);
      cczp_add_ws(a1, a2);
      cczp_add_ws(a1, a2);
      v47 = v17;
      cczp_mul_ws(a1, a2);
      cczp_sqr_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      v24 = a1;
      v25 = a1;
      v26 = v20;
      cczp_sub_ws(v24, a2);
      cczp_mul_ws(v25, a2);
      cczp_sqr_ws(v25, a2);
      cczp_add_ws(v25, a2);
      cczp_sub_ws(v25, a2);
      v27 = v18;
      v28 = *(v18->u64 + (((a5 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8));
      v49 = v25;
      *(v25 + 16) = v43;
      v29 = (v28 >> (a5 - 1)) & 1;
      v30 = !((v28 >> (a5 - 1)) & 1);
      v31 = &v21[v50];
      v32 = a5 - 2;
      if (v32)
      {
        v33 = v29;
        do
        {
          v34 = v29;
          v29 = (*(v27->i64 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v32) & 1;
          cczp_cond_negate(a2, v30, v31, v31);
          ccn_cond_swap(v57, v29 ^ v34 | v33 ^ 1, v26, v21);
          ccec_mult_XYCZaddC_ws(v49, a2);
          ccec_mult_XYCZadd_ws(v49, a2);
          LOBYTE(v30) = v29 & (v33 ^ 1);
          v27 = v18;
          v33 |= v29;
          --v32;
        }

        while (v32);
        v44 = v33 ^ 1;
      }

      else
      {
        v44 = v30;
      }

      cczp_cond_negate(a2, v30, v31, v31);
      ccn_cond_swap(v57, v27->i8[0] & 1 ^ v29, v26, v21);
      ccec_mult_XYCZaddC_ws(v49, a2);
      ccn_set(v57, __dst, v21);
      v35 = v27->i64[0];
      ccn_cond_swap(v57, v27->i8[0] & 1, v26, v21);
      v36 = v26;
      a1 = v49;
      v37 = v52;
      v42 = *(v49 + 16);
      cczp_sub_ws(v49, a2);
      cczp_mul_ws(v49, a2);
      cczp_mul_ws(v49, a2);
      cczp_mul_ws(v49, a2);
      cczp_mul_ws(v49, a2);
      cczp_sqr_ws(v49, a2);
      cczp_mul_ws(v49, a2);
      *(v49 + 16) = v42;
      ccn_cond_swap(v57, v35 & 1, v36, v21);
      ccec_mult_XYCZadd_ws(v49, a2);
      ccn_mux(v57, v35 & 1, v36, v21, v36);
      cczp_mul_ws(v49, a2);
      cczp_mul_ws(v49, a2);
      v38 = cczp_prime(&v55[5 * *a2]);
      ccn_sub1(v50, __dst, v38, 1uLL);
      v39 = (ccn_cmpn_internal(v51, v58, v50, __dst) & 1) == 0;
      is_point_at_infinity = ccec_is_point_at_infinity(a2, v47);
      ccn_mux(3 * v50, v44 | is_point_at_infinity | v39, v37, v47, v37);
      cczp_cond_negate(a2, v39, &v37[*a2], &v37[*a2]);
      v41 = v44 & ~v58->i32[0];
      ccn_cond_clear(v50, v44 & ~v58->i8[0] & 1, &v52[2 * *a2]);
      ccn_seti(v50, v36, 1);
      cczp_to_ws(v49, a2);
      ccn_mux(v50, v41 & 1, v37, v36, v37);
      ccn_mux(v50, v41 & 1, &v37[*a2], v36, &v37[*a2]);
      *(v49 + 16) = v46;
      ccec_full_add_ws(v49, a2);
      ccn_mux(v48, *__src & v56, v37, v47, v37);
      result = 0;
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  result = 4294967289;
LABEL_16:
  *(a1 + 16) = v54;
  return result;
}

uint64_t ccec25519_from_ws(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v7 = ccn_add1_ws(a1, 4, a3, a4, -(a4[3] >> 63) & 0x13);
  ccn_set_bit(a3, 0xFFuLL, v7);
  v8 = cczp_prime(a2);
  v9 = ccn_sub_ws(a1, 4, v11, a3, v8);
  ccn_sub1(4, a3, v11, -v9 & 0x13);
  return ccn_set_bit(a3, 0xFFuLL, 0);
}

uint64_t ccec_generate_key(uint64_t *a1, uint64_t (**a2)(void, unint64_t, void *), uint64_t **a3)
{
  v12 = timingsafe_enable_if_supported();
  v6 = cc_malloc_clear(392 * *a1);
  v7 = 49 * *a1;
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = 0;
  v10[3] = cc_ws_alloc;
  v11 = cc_ws_free;
  if (v6)
  {
    key_fips_ws = ccec_generate_key_fips_ws(v10, a1, a2, a3);
    cc_try_abort_if (key_fips_ws == -18);
    v11(v10);
  }

  else
  {
    key_fips_ws = 4294967283;
  }

  cc_disable_dit_with_sb(&v12);
  return key_fips_ws;
}

uint64_t ccec_generate_key_fips_ws(uint64_t a1, uint64_t *a2, uint64_t (**a3)(void, unint64_t, void *), uint64_t **a4)
{
  v7 = *(a1 + 16);
  result = ccec_generate_key_internal_fips_ws(a1, a2, a3, a4);
  if (!result)
  {
    if (ccec_pairwise_consistency_check_ws(a1, a4, a3))
    {
      result = 4294967278;
    }

    else
    {
      result = 0;
    }
  }

  *(a1 + 16) = v7;
  return result;
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

uint64_t ccec_generate_key_internal_fips_ws(uint64_t a1, uint64_t *a2, uint64_t (**a3)(void, unint64_t, uint64_t), uint64_t **a4)
{
  v8 = *a2;
  *a4 = a2;
  v9 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, v8);
  v11 = cczp_bitlen(a2);
  result = (*a3)(a3, ((v11 + 62) >> 3) & 0x1FFFFFFFFFFFFFF8, v10);
  if (!result)
  {
    v13 = OUTLINED_FUNCTION_0_11();
    result = ccec_generate_scalar_fips_retry_ws(v13, v14, v15, v16);
    if (!result)
    {
      v17 = OUTLINED_FUNCTION_0_11();
      result = ccec_make_pub_from_priv_ws(v17, v18, v19, v20, 0, a4);
    }
  }

  *(a1 + 16) = v9;
  return result;
}

uint64_t ccec_generate_scalar_fips_retry_ws(uint64_t a1, void *a2, uint64_t (**a3)(void, unint64_t, void *), void *a4)
{
  v8 = a2 + 4;
  v9 = &a2[5 * *a2 + 4];
  v10 = cczp_n(v9);
  v11 = *(a1 + 16);
  v12 = (*(a1 + 24))(a1, v10);
  v13 = cczp_prime(v9);
  ccn_set(v10, v12, v13);
  *v12 &= ~1uLL;
  v14 = 100;
  while (1)
  {
    v15 = cczp_bitlen(&v8[5 * *a2]);
    result = ccn_random_bits_fips(v15, a4, a3);
    if (result)
    {
      break;
    }

    if ((ccn_cmp_public_value(v10, a4, v12) & 0x80000000) != 0)
    {
      ccn_add1_ws(a1, v10, a4, a4, 1);
      result = 0;
      break;
    }

    if (!--v14)
    {
      result = 4294967281;
      break;
    }
  }

  *(a1 + 16) = v11;
  return result;
}

uint64_t ccn_random_bits_fips(uint64_t a1, void *a2, uint64_t (**a3)(void, unint64_t, void *))
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 63) >> 6;
  v5 = *a3;
  if ((a1 + 63) > 0x7F)
  {
    v6 = v5(a3, 8 * v4, a2);
  }

  else
  {
    v6 = v5(a3, 12uLL, __src);
    memcpy(a2, __src, 8 * v4);
    cc_clear(8 * v4, __src);
  }

  if (!v6)
  {
    OUTLINED_FUNCTION_0_27();
    *(a2 + v4 - 1) &= v7;
  }

  return v6;
}

void ccn_random_bits(uint64_t a1, uint64_t a2, unsigned int (**a3)(void, unint64_t, uint64_t))
{
  v4 = (a1 + 63) >> 6;
  if (!(*a3)(a3, 8 * v4, a2))
  {
    OUTLINED_FUNCTION_0_27();
    *(a2 + 8 * v4 - 8) &= v5;
  }
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

uint64_t ccgcm_init_with_iv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = timingsafe_enable_if_supported();
  v10 = (*(a1 + 24))(a1, a2, a3, a4);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = (*(a1 + 32))(a2, 12, a5);
    if (!v11)
    {
      *(a2 + 82) |= 1u;
    }
  }

  cc_disable_dit_with_sb(&v13);
  return v11;
}

uint64_t ccgcm_gmac(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 40))(a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t cccurve25519_with_rng(uint64_t (**a1)(void, uint64_t, void *), uint64_t a2, __int128 *a3, uint64_t *a4)
{
  v11 = timingsafe_enable_if_supported();
  v8 = ccec_cp_x25519();
  v9 = cccurve25519_internal(v8, a2, a3, a4, a1);
  cc_disable_dit_with_sb(&v11);
  return v9;
}

uint64_t ccec_verify_composite(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, BOOL *a6)
{
  v21 = timingsafe_enable_if_supported();
  *a6 = 0;
  v12 = cc_malloc_clear(376 * **a1);
  v13 = 47 * **a1;
  v19[0] = v12;
  v19[1] = v13;
  v19[2] = 0;
  v19[3] = cc_ws_alloc;
  v20 = cc_ws_free;
  if (v12)
  {
    v16 = ccec_verify_composite_digest_ws(v19, a1, a2, a3, a4, a5, 0);
    v20(v19);
    if (v16 == -146)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16;
    }

    v18 = v16 == 0;
    if (v16)
    {
      v14 = v17;
    }

    else
    {
      v14 = 0;
    }

    *a6 = v18;
  }

  else
  {
    v14 = 4294967283;
  }

  cc_disable_dit_with_sb(&v21);
  return v14;
}

uint64_t ccgcm_inc_iv(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = timingsafe_enable_if_supported();
  v8 = v5;
  v6 = ccgcm_inc_iv_internal(v5, a2, a3);
  cc_disable_dit_with_sb(&v8);
  return v6;
}

uint64_t ccgcm_inc_iv_internal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 80) != 1)
  {
    return 4294967228;
  }

  if ((*(a2 + 82) & 1) == 0)
  {
    return 4294967228;
  }

  v4 = 1;
  v5 = 59;
  do
  {
    v6 = *(a2 + v5) + 1;
    *(a2 + v5) = v6;
    if (v4 > 7)
    {
      break;
    }

    ++v4;
    --v5;
  }

  while (!v6);
  v7 = *(a2 + 48);
  *(a3 + 8) = *(a2 + 56);
  *a3 = v7;
  *(a2 + 32) = *(a2 + 48);
  ccmode_gcm_update_pad(a2);
  result = 0;
  *(a2 + 80) = 2;
  return result;
}

uint64_t ccec_verify_composite_digest_ws(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    *a7 = 0;
    a7[1] = 0;
  }

  v22 = 0uLL;
  v14 = **a2;
  v21 = *(a1 + 16);
  v15 = (*(a1 + 24))(a1, v14);
  v16 = (*(a1 + 24))(a1, v14);
  v17 = ccec_signature_r_s_size(a2);
  if (ccn_read_uint_internal(v14, v15, v17, a5) || (v18 = ccec_signature_r_s_size(a2), ccn_read_uint_internal(v14, v16, v18, a6)))
  {
    result = 4294967289;
    goto LABEL_9;
  }

  result = ccec_verify_internal_ws(a1, a2, a3, a4, v15, v16, &v22);
  if (!a7)
  {
LABEL_9:
    v20 = v21;
    goto LABEL_10;
  }

  v20 = v21;
  if (!result)
  {
    *a7 = v22;
  }

LABEL_10:
  *(a1 + 16) = v20;
  return result;
}

uint64_t ccec_mult_XYCZaddC_ws(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v4);
  (*(a1 + 24))(a1, v4);
  cczp_sub_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  result = cczp_sub_ws(a1, a2);
  *(a1 + 16) = v5;
  return result;
}

uint64_t ccec_mult_XYCZadd_ws(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v4);
  cczp_sub_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  result = cczp_sub_ws(a1, a2);
  *(a1 + 16) = v5;
  return result;
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

uint64_t ccec_affinify_jacobian_ws(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  if (ccec_is_point_at_infinity(a2, a4))
  {
    return 4294967289;
  }

  v8 = *(a1 + 16);
  (*(a1 + 24))(a1, v6);
  (*(a1 + 24))(a1, v6);
  v9 = cczp_inv_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_from_ws(a1, a2);
  cczp_from_ws(a1, a2);
  *(a1 + 16) = v8;
  return v9;
}

uint64_t ccec_raw_import_pub(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, uint64_t **a4)
{
  if ((((cczp_bitlen(a1) + 7) >> 2) & 0x3FFFFFFFFFFFFFFELL) != a2)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *a1;
  v8 = (cczp_bitlen(a1) + 7) >> 3;
  *a4 = a1;
  v9 = a4 + 2;
  if (ccn_read_uint_public_value(v7, a4 + 2, v8, a3) || ccn_read_uint_public_value(v7, &v9[**a4], v8, &a3[v8]))
  {
    return 0xFFFFFFFFLL;
  }

  ccn_seti(*a1, &v9[2 * **a4], 1);
  return 0;
}

uint64_t cczp_inv_field_ws(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = cczp_n(a2);
  v9 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, v8);
  v11 = cczp_prime(a2);
  if (ccn_sub1(v8, v10, v11, 2uLL))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = cczp_power_fast_ws(a1, a2, a3, a4, v10);
  }

  *(a1 + 16) = v9;
  return result;
}

uint64_t ccec_pairwise_consistency_check_ws(uint64_t a1, uint64_t **a2, uint64_t (**a3)(void, unint64_t, void *))
{
  v23[2] = *MEMORY[0x1E69E9840];
  v5 = **a2;
  v6 = *(a1 + 16);
  (*(a1 + 24))(a1, v5);
  (*(a1 + 24))(a1, v5);
  ccsha256_di();
  v7 = OUTLINED_FUNCTION_0_33();
  result = ccec_sign_composite_msg_ws(v7, v8, v9, v10, v11, v12, v13, a3);
  if (!result)
  {
    v23[0] = 0;
    v23[1] = 0;
    ccsha256_di();
    v15 = OUTLINED_FUNCTION_0_33();
    result = ccec_verify_composite_msg_ws(v15, v16, v17, v18, v19, v20, v21, v22);
    if (!result)
    {
      cc_cmp_safe_internal(16, &CCEC_FAULT_CANARY, v23);
      result = 0;
    }
  }

  *(a1 + 16) = v6;
  return result;
}

uint64_t ccec_keysize_is_supported(uint64_t a1)
{
  v4 = timingsafe_enable_if_supported();
  v2 = 1;
  if (a1 <= 255)
  {
    if (a1 != 192 && a1 != 224)
    {
      goto LABEL_8;
    }
  }

  else if (a1 != 256 && a1 != 384 && a1 != 521)
  {
LABEL_8:
    v2 = 0;
  }

  cc_disable_dit_with_sb(&v4);
  return v2;
}

void *ccec_get_cp(uint64_t a1)
{
  if (a1 <= 255)
  {
    if (a1 == 192)
    {
      return ccec_cp_192();
    }

    if (a1 == 224)
    {
      return ccec_cp_224();
    }
  }

  else
  {
    switch(a1)
    {
      case 256:
        return ccec_cp_256();
      case 384:
        return ccec_cp_384();
      case 521:
        return ccec_cp_521();
    }
  }

  return 0;
}

uint64_t ccec_sign_composite_msg_ws(uint64_t a1, uint64_t **a2, unint64_t *a3, size_t a4, char *a5, char *a6, char *a7, uint64_t (**a8)(void, unint64_t, void *))
{
  v16 = *MEMORY[0x1E69E9840];
  ccdigest_internal(a3, a4, a5, v15);
  return ccec_sign_composite_ws(a1, a2, *a3, v15, a6, a7, a8);
}

uint64_t ccec_sign_composite_ws(uint64_t a1, uint64_t **a2, unint64_t a3, uint64_t a4, char *a5, char *a6, uint64_t (**a7)(void, unint64_t, void *))
{
  v14 = **a2;
  v15 = *(a1 + 16);
  v16 = (*(a1 + 24))(a1, v14);
  v17 = (*(a1 + 24))(a1, v14);
  v18 = ccec_sign_internal_ws(a1, a2, a3, a4, v16, v17, a7);
  if (!v18)
  {
    v19 = **a2;
    v20 = ccec_signature_r_s_size(a2);
    ccn_write_uint_padded_ct_internal(v19, v16, v20, a5);
    v21 = **a2;
    v22 = ccec_signature_r_s_size(a2);
    ccn_write_uint_padded_ct_internal(v21, v17, v22, a6);
  }

  *(a1 + 16) = v15;
  return v18;
}

uint64_t ccec_sign_internal_ws(uint64_t a1, uint64_t **a2, unint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t (**a7)(void, unint64_t, void *))
{
  v13 = *a2;
  v15 = (*a2 + 4);
  v14 = **a2;
  if (a3 <= 0xF)
  {
    ccec_sign_internal_ws_cold_1(a3);
  }

  v33 = *(a1 + 16);
  v16 = (*(a1 + 24))(a1, v14);
  v37 = (*(a1 + 24))(a1, v14);
  v35 = (*(a1 + 24))(a1, v14);
  v34 = (*(a1 + 24))(a1, 3 * v14);
  v32 = a7;
  scalar_fips_retry_ws = ccec_projectify_ws(a1, v13);
  if (!scalar_fips_retry_ws)
  {
    v31 = a5;
    v18 = a4;
    v19 = **a2;
    v20 = cczp_bitlen(v15 + 40 * *v13);
    v21 = v20;
    if ((v20 + 7) >> 3 >= a3)
    {
      v22 = a3;
    }

    else
    {
      v22 = (v20 + 7) >> 3;
    }

    uint_internal = ccn_read_uint_internal(v14, v16, v22, v18);
    if ((uint_internal & 0x80000000) != 0)
    {
      v29 = uint_internal;
      a5 = v31;
      goto LABEL_18;
    }

    v24 = &a2[3 * v19];
    if (v21 < 8 * a3)
    {
      ccn_shift_right(v14, v16, v16, -v21 & 7);
    }

    v25 = cczp_prime(v15 + 40 * v14);
    a5 = v31;
    v26 = ccn_sub_ws(a1, v14, v31, v16->i64, v25);
    ccn_mux(v14, v26, v16->i64, v16->i64, v31);
    scalar_fips_retry_ws = ccec_validate_scalar(v13, (v24 + 2));
    if (!scalar_fips_retry_ws)
    {
      v27 = 10;
      while (1)
      {
        scalar_fips_retry_ws = ccec_generate_scalar_fips_retry_ws(a1, v13, v32, v37);
        if (scalar_fips_retry_ws)
        {
          break;
        }

        scalar_fips_retry_ws = ccec_generate_scalar_fips_retry_ws(a1, v13, v32, v35);
        if (scalar_fips_retry_ws)
        {
          break;
        }

        v28 = ccec_sign_internal_inner_ws(a1, v13, v16, (v24 + 2), v37, v34, v35, v31, a6, v32);
        v29 = v28;
        if (!v28)
        {
          goto LABEL_19;
        }

        if (v28 != -165)
        {
          goto LABEL_18;
        }

        if (!--v27)
        {
          cc_try_abort();
        }
      }
    }
  }

  v29 = scalar_fips_retry_ws;
LABEL_18:
  cc_clear(8 * v14, a5);
  cc_clear(8 * v14, a6);
LABEL_19:
  *(a1 + 16) = v33;
  return v29;
}

uint64_t ccec_sign_internal_inner_ws(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t (**a10)(void, uint64_t, uint64_t *))
{
  v15 = *a2;
  v16 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  v17 = (*(a1 + 24))(a1, 3 * v15);
  result = ccec_mult_blinded_ws(a1, a2, v17, a5, a6, a10);
  if (!result)
  {
    result = ccec_affinify_x_only_ws(a1, a2, v17, v17);
    if (!result)
    {
      v37 = v16;
      v19 = &a2[5 * v15];
      v20 = cczp_prime((v19 + 4));
      v21 = ccn_sub_ws(a1, v15, a8, v17, v20);
      v22 = cczp_prime((v19 + 4));
      ccn_cond_add(v15, v21, a8, a8, v22);
      if (ccn_n(v15, a8))
      {
        v23 = OUTLINED_FUNCTION_0_20();
        cczp_mul_ws(v23, v24);
        v25 = OUTLINED_FUNCTION_0_20();
        cczp_mul_ws(v25, v26);
        v27 = OUTLINED_FUNCTION_0_20();
        cczp_mul_ws(v27, v28);
        v29 = OUTLINED_FUNCTION_0_20();
        cczp_mul_ws(v29, v30);
        v31 = OUTLINED_FUNCTION_0_20();
        cczp_add_ws(v31, v32);
        v33 = OUTLINED_FUNCTION_0_20();
        result = cczp_inv_ws(v33, v34);
        if (!result)
        {
          v35 = OUTLINED_FUNCTION_0_20();
          cczp_mul_ws(v35, v36);
          if (ccn_n(v15, a9))
          {
            result = 0;
          }

          else
          {
            result = 4294967131;
          }
        }
      }

      else
      {
        result = 4294967131;
      }

      v16 = v37;
    }
  }

  *(a1 + 16) = v16;
  return result;
}

uint64_t ccec_verify_composite_msg_ws(uint64_t a1, uint64_t *a2, unint64_t *a3, size_t a4, char *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v16 = *MEMORY[0x1E69E9840];
  ccdigest_internal(a3, a4, a5, v15);
  return ccec_verify_composite_digest_ws(a1, a2, *a3, v15, a6, a7, a8);
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
  *a1 = xmmword_1DF0FDA60;
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

uint64_t ccchacha20poly1305_setnonce_internal(int32x4_t *a1, __int32 *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1[15].i8[8] != 1)
  {
    return 1;
  }

  a1[3].i32[1] = *a2;
  a1[3].i32[2] = a2[1];
  a1[3].i32[3] = a2[2];
  _ccchacha20_xor(a1, 0x40uLL, v4, kZero64);
  ccpoly1305_init_internal(&a1[8].i64[1], v4);
  result = 0;
  a1[15].i8[8] = 2;
  return result;
}

int32x4_t *_ccchacha20_xor(int32x4_t *result, unint64_t a2, int8x16_t *a3, int8x16_t *a4)
{
  v201 = *MEMORY[0x1E69E9840];
  v5 = result[1];
  v4 = result[2];
  v6 = result[3];
  v7 = a2 / 0xC0;
  if (a2 >= 0xC0)
  {
    v8 = 0;
    do
    {
      v9 = vaddq_s32(v6, xmmword_1DF0FDA70);
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
      v26 = xmmword_1DF0FDA60;
      v27 = v5;
      v28 = v4;
      v29 = v6;
      v30 = xmmword_1DF0FDA60;
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
      *a3 = veorq_s8(*a4, vaddq_s32(v26, xmmword_1DF0FDA60));
      a3[1] = veorq_s8(a4[1], vaddq_s32(v27, v5));
      a3[2] = veorq_s8(a4[2], vaddq_s32(v28, v4));
      a3[3] = veorq_s8(a4[3], vaddq_s32(v29, v6));
      a3[4] = veorq_s8(a4[4], vaddq_s32(v30, xmmword_1DF0FDA60));
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
      v6 = vaddq_s32(v6, xmmword_1DF0FDA80);
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
    v134 = &unk_1DF0FD000;
    do
    {
      v136 = -10;
      v137 = xmmword_1DF0FDA60;
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
      *a3 = veorq_s8(*a4, vaddq_s32(v137, xmmword_1DF0FDA60));
      a3[1] = veorq_s8(a4[1], vaddq_s32(v138, v5));
      a3[2] = veorq_s8(a4[2], vaddq_s32(v139, v4));
      a3[3] = veorq_s8(a4[3], vaddq_s32(v140, v6));
      v6 = vaddq_s32(v6, xmmword_1DF0FDA70);
      a4 += 4;
      a3 += 4;
      --v135;
    }

    while (v135);
  }

  else
  {
    v134 = &unk_1DF0FD000;
  }

  v163 = a2 & 0x3F;
  if ((a2 & 0x3F) != 0)
  {
    v164 = v134[166];
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
      v200[0] = vaddq_s32(v164, v134[166]);
    }

    else
    {
      *a3 = veorq_s8(*a4, vaddq_s32(v164, v134[166]));
      if (v163 < 0x20)
      {
        v200[1] = vaddq_s32(v166, v5);
      }

      else
      {
        a3[1] = veorq_s8(a4[1], vaddq_s32(v166, v5));
        if (v163 < 0x30)
        {
          v200[2] = vaddq_s32(v167, v4);
        }

        else
        {
          a3[2] = veorq_s8(a4[2], vaddq_s32(v167, v4));
          v200[3] = vaddq_s32(v168, v6);
        }
      }
    }

    v191 = a2 & 0x30;
    v192 = v163 - v191;
    if (v163 > v191)
    {
      v193 = &a3->i8[v191];
      v194 = v200 + v191;
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

uint64_t ccchacha20poly1305_decrypt()
{
  v2 = timingsafe_enable_if_supported();
  v0 = ccchacha20poly1305_decrypt_internal();
  cc_disable_dit_with_sb(&v2);
  return v0;
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

uint64_t ccchacha20poly1305_decrypt_internal()
{
  OUTLINED_FUNCTION_2_8();
  if (v4)
  {
    ccpoly1305_update_internal((v0 + 136), -*(v0 + 232) & 0xFLL, kZero64);
    *(v0 + 248) = 4;
  }

  else if (v3 != 4)
  {
    return 1;
  }

  v5 = *(v0 + 240);
  result = 1;
  if (!__CFADD__(v5, v1) && v5 + v1 <= 0x3FFFFFFFC0)
  {
    ccpoly1305_update_internal((v0 + 136), v1, v2);
    OUTLINED_FUNCTION_5_2();
    return OUTLINED_FUNCTION_3_5();
  }

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

uint64_t ccrsa_emsa_pkcs1v15_encode(unint64_t a1, _WORD *a2, size_t a3, const void *a4, unsigned __int8 *a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = ccrsa_emsa_pkcs1v15_encode_internal(a1, a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

unsigned int *_ccpoly1305_update(unsigned int *result, unint64_t a2, unsigned int *a3)
{
  v4 = result;
  v38 = *MEMORY[0x1E69E9840];
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
  for (v4[13] = v18; ; v18 = v4[13] + (v37 >> 8))
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
    v15 = (((v34 | (v35 << 32)) >> 26) & 0x3FFFFFF) + v4[10];
    v16 = (((v35 | (v36 << 32)) >> 20) & 0x3FFFFFF) + v4[11];
    v17 = v4[12] + (((v36 | (v37 << 32)) >> 14) & 0x3FFFFFF);
  }

  return result;
}

uint64_t ccrsa_emsa_pkcs1v15_encode_internal(unint64_t a1, _WORD *a2, size_t a3, const void *a4, unsigned __int8 *a5)
{
  if (a5)
  {
    v8 = 4294967289;
    if (a3 > 0xFF)
    {
      return v8;
    }

    v9 = a5[1];
    if (v9 > 0xFB)
    {
      return v8;
    }

    if (a3 + v9 + 8 > 0x7C)
    {
      return 4294967289;
    }

    v10 = a3 + v9 + 10;
  }

  else
  {
    LODWORD(v9) = 0;
    v10 = a3;
  }

  if (a1 < 0xB || v10 > a1 - 11)
  {
    return 4294967289;
  }

  v12 = a1 - v10 - 3;
  *a2 = 256;
  v13 = a2 + 1;
  memset(a2 + 1, 255, v12);
  v14 = v13 + v12;
  *(v13 + v12) = 0;
  v15 = v13 + v12 + 1;
  if (a5)
  {
    v14[1] = 48;
    v14[2] = v10 - 2;
    v14[3] = 48;
    v16 = v14 + 5;
    v14[4] = v9 + 4;
    memcpy(v14 + 5, a5, v9 + 2);
    v17 = &v16[v9 + 2];
    *v17 = 5;
    v17[2] = 4;
    v15 = v17 + 4;
    v17[3] = a3;
  }

  memcpy(v15, a4, a3);
  return 0;
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

int32x4_t *OUTLINED_FUNCTION_5_2()
{

  return ccchacha20_update_internal(v0, v1, v3, v2);
}

BOOL OUTLINED_FUNCTION_3_0()
{

  return timingsafe_enable_if_supported();
}

uint64_t OUTLINED_FUNCTION_3_5()
{
  result = 0;
  *(v0 + 240) += v1;
  return result;
}

uint64_t ccchacha20poly1305_verify_internal(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
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

  ccpoly1305_update_internal((a1 + 136), -*(a1 + 240) & 0xFLL, kZero64);
  v7[0] = *(a1 + 232);
  ccpoly1305_update_internal((a1 + 136), 8uLL, v7);
  v7[0] = *(a1 + 240);
  ccpoly1305_update_internal((a1 + 136), 8uLL, v7);
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

uint64_t ccchacha20poly1305_verify(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = timingsafe_enable_if_supported();
  v5 = ccchacha20poly1305_verify_internal(a2, a3);
  cc_disable_dit_with_sb(&v7);
  return v5;
}

uint64_t ccn_cmpn(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = ccn_cmpn_public_value(a1, a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ccrsa_priv_crypt(unint64_t *a1, uint64_t *a2, void *a3)
{
  v19 = timingsafe_enable_if_supported();
  v6 = *a1;
  v7 = 9 * *a1;
  v8 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N(*a1);
  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = cc_malloc_clear(8 * v9 + 16 * v6);
  v17[0] = v10;
  v11 = *a1;
  v12 = 9 * *a1;
  v13 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N(*a1);
  if (v12 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  v17[1] = v14 + 2 * v11;
  v17[2] = 0;
  v17[3] = cc_ws_alloc;
  v18 = cc_ws_free;
  if (v10)
  {
    v15 = ccrsa_priv_crypt_ws(v17, a1, a2, a3);
    v18(v17);
  }

  else
  {
    v15 = 4294967283;
  }

  cc_disable_dit_with_sb(&v19);
  return v15;
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

uint64_t CCRSA_CRT_POWER_BLINDED_WORKSPACE_N(unint64_t a1)
{
  v1 = (a1 >> 1) + 2;
  v2 = 5 * (a1 >> 1) + 13;
  v3 = 13 * v1;
  v4 = 8 * v1;
  v5 = 2 * a1;
  if (8 * v1 <= 2 * a1)
  {
    v6 = 2 * a1;
  }

  else
  {
    v6 = 8 * v1;
  }

  if (v6 <= v3)
  {
    v6 = 13 * v1;
  }

  if (v3 <= v5)
  {
    v7 = 2 * a1;
  }

  else
  {
    v7 = 13 * v1;
  }

  if (v3 <= v4)
  {
    v3 = 8 * v1;
  }

  if (v4 <= v5)
  {
    v3 = v7;
  }

  if (v2 <= v6)
  {
    v2 = v3;
  }

  return v2 + 4 * v1 + 11;
}

uint64_t ccchacha20poly1305_encrypt()
{
  v2 = timingsafe_enable_if_supported();
  v0 = ccchacha20poly1305_encrypt_internal();
  cc_disable_dit_with_sb(&v2);
  return v0;
}

uint64_t ccrsa_priv_crypt_ws(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v8 = ccrng(0);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  return ccrsa_priv_crypt_blinded_ws(a1, v8, a2, a3, a4);
}

uint64_t ccchacha20poly1305_encrypt_internal()
{
  OUTLINED_FUNCTION_2_8();
  if (v4)
  {
    ccpoly1305_update_internal((v0 + 136), -*(v0 + 232) & 0xFLL, kZero64);
    *(v0 + 248) = 3;
  }

  else if (v3 != 3)
  {
    return 1;
  }

  v5 = *(v0 + 240);
  result = 1;
  if (!__CFADD__(v5, v1) && v5 + v1 <= 0x3FFFFFFFC0)
  {
    OUTLINED_FUNCTION_5_2();
    ccpoly1305_update_internal((v0 + 136), v1, v2);
    return OUTLINED_FUNCTION_3_5();
  }

  return result;
}

uint64_t ccrsa_priv_crypt_blinded_ws(uint64_t a1, uint64_t (**a2)(void, uint64_t, uint64_t), uint64_t *a3, uint64_t *a4, void *a5)
{
  v10 = *a3;
  v11 = ccrsa_ctx_private_zp(a3);
  v12 = cczp_n(v11);
  v13 = ccrsa_ctx_private_zp(a3);
  v14 = ccrsa_ctx_private_zp(a3);
  v15 = cczp_n(v13 + 16 * *v14 + 32);
  v16 = ccrsa_ctx_private_zp(a3);
  v17 = v16 + 16 * *ccrsa_ctx_private_zp(a3);
  v18 = ccrsa_ctx_private_zp(a3);
  if (ccn_bitlen_internal(v12, v17 + 16 * *v18 + 64) >= 2)
  {
    v19 = ccrsa_ctx_private_zp(a3);
    v20 = v19 + 16 * *ccrsa_ctx_private_zp(a3);
    v21 = v20 + 16 * *ccrsa_ctx_private_zp(a3);
    v22 = ccrsa_ctx_private_zp(a3);
    if (ccn_bitlen_internal(v15, v21 + 8 * *v22 + 64) >= 2 && ccn_bitlen_internal(v10, &a3[2 * *a3 + 4]) >= 2)
    {
      if ((ccn_cmp_public_value(v10, a5, a3 + 3) & 0x80000000) == 0)
      {
        return 4294967273;
      }

      v78 = a4;
      v72 = *(a1 + 16);
      v59 = (*(a1 + 24))(a1, v10);
      v71 = (*(a1 + 24))(a1, v10);
      ccn_set(v10, v71, a5);
      v25 = ccrsa_ctx_private_zp(a3);
      v26 = ccrsa_ctx_private_zp(a3);
      v76 = v26 + 16 * *ccrsa_ctx_private_zp(a3);
      v57 = ccrsa_ctx_private_zp(a3);
      v56 = *ccrsa_ctx_private_zp(a3);
      v55 = *ccrsa_ctx_private_zp(a3);
      v66 = ccrsa_ctx_private_zp(a3);
      v65 = *ccrsa_ctx_private_zp(a3);
      __dst = *ccrsa_ctx_private_zp(a3);
      v61 = *ccrsa_ctx_private_zp(a3);
      v73 = cczp_n(a3);
      v27 = cczp_n(v76 + 32);
      v28 = cczp_n(v25);
      v70 = *(a1 + 16);
      v29 = (*(a1 + 24))(a1, 7);
      v60 = v28 + 1;
      v30 = 2 * (v28 + 1);
      v75 = (*(a1 + 24))(a1, v30);
      v58 = v30;
      v79 = (*(a1 + 24))(a1, v30 + 4);
      v68 = v25;
      v31 = cczp_bitlen(v25);
      v23 = 4294967268;
      if (v31 >= cczp_bitlen(v76 + 32))
      {
        v32 = v28 >= v27;
        v33 = v78;
        if (!v32 || v73 + 1 > 2 * v27 + 2)
        {
          goto LABEL_26;
        }

        inited = (*a2)(a2, 56, v29);
        if (!inited)
        {
          ccn_mux_seed_mask(*(v29 + 48));
          v35 = v76;
          inited = ccrsa_crt_init_pq_star_ws(a1, v76 + 32, v79, *v29);
          if (!inited)
          {
            v77 = &v75[8 * v60];
            ccrsa_crt_exp_mod_pq_star_ws(a1, a3, v35 + 32, v79, a5, (v66 + 16 * v65 + 16 * __dst + 8 * v61 + 64), v77, (v29 + 8));
            inited = ccrsa_crt_init_pq_star_ws(a1, v68, v79, *(v29 + 24));
            if (!inited)
            {
              ccrsa_crt_exp_mod_pq_star_ws(a1, a3, v68, v79, a5, (v57 + 16 * v56 + 16 * v55 + 64), v75, (v29 + 32));
              v36 = ccrsa_ctx_private_zp(a3);
              v37 = ccrsa_ctx_private_zp(a3);
              v38 = v37 + 16 * *ccrsa_ctx_private_zp(a3);
              v39 = cczp_n(v79);
              v74 = cczp_n(v36);
              v62 = v38;
              v40 = cczp_n(v38 + 32);
              v69 = *(a1 + 16);
              v41 = (*(a1 + 24))(a1);
              __dsta = (*(a1 + 24))(a1, v39);
              v42 = (*(a1 + 24))(a1, v39);
              v43 = cczp_prime(v79);
              if (v39)
              {
                ccn_set(v39, v41, v43);
              }

              ccn_zero(2, &v41[v39]);
              ccn_shift_left_multi(v39 + 2, v41, v41, 0x21uLL, v44);
              ccn_addn(v39 + 2, v41, v41, v39, v75);
              v67 = v40;
              ccn_subn(v39 + 2, v41, v41, v40 + 1, v77);
              cczp_modn_ws(a1, v79, v42, v39 + 2, v41);
              v45 = ccrsa_ctx_private_zp(a3);
              v46 = *ccrsa_ctx_private_zp(a3);
              v47 = *ccrsa_ctx_private_zp(a3);
              v48 = *ccrsa_ctx_private_zp(a3);
              v49 = ccrsa_ctx_private_zp(a3);
              v50 = v74;
              if (v74)
              {
                ccn_set(v74, v41, (v45 + 16 * v46 + 16 * v47 + 8 * v48 + 8 * *v49 + 64));
                v50 = v74;
              }

              ccn_zero(v39 - v50, &v41[v50]);
              cczp_mul_ws(a1, v79);
              v51 = cczp_prime(v62 + 32);
              if (v67)
              {
                ccn_set(v67, __dsta, v51);
              }

              ccn_zero(v39 - v67, &__dsta[8 * v67]);
              cczp_to_ws(a1, v79);
              ccn_mul_ws(a1, v39, v41, __dsta, v42);
              ccn_addn(2 * v39, v75, v41, v67 + 1, v77);
              *(a1 + 16) = v69;
              v33 = v78;
              cczp_modn_ws(a1, a3, v78, v58, v75);
              *(a1 + 16) = v70;
              v52 = ccrsa_ctx_public(a3);
              v53 = ccrsa_pub_crypt_ws(a1, v52);
              v54 = v71;
              if (v53)
              {
                v23 = v53;
              }

              else
              {
                v23 = ccn_cmp_public_value(v10, v59, v71) != 0 ? 0xFFFFFFE5 : 0;
              }

              goto LABEL_23;
            }
          }
        }

        v23 = inited;
      }

      v33 = v78;
LABEL_26:
      v54 = v71;
      *(a1 + 16) = v70;
LABEL_23:
      memset(v54, 170, 8 * v10);
      ccn_mux(v10, v23 != 0, v33, v54, v33);
      *(a1 + 16) = v72;
      return v23;
    }
  }

  return 4294967268;
}

uint64_t ccchacha20poly1305_finalize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = timingsafe_enable_if_supported();
  v5 = ccchacha20poly1305_finalize_internal(a2, a3);
  cc_disable_dit_with_sb(&v7);
  return v5;
}

uint64_t ccrsa_crt_init_pq_star_ws(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v8 = cczp_n(a2);
  *a3 = v8 + 1;
  v9 = cczp_prime(a2);
  a3[v8 + 3] = ccn_mul1(v8, a3 + 3, v9, a4 & 0xFFFFFFFE | 1);

  return cczp_mm_init_ws(a1, a3, v8 + 1, 0);
}

uint64_t ccchacha20poly1305_finalize_internal(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 248);
  if (v4 == 2)
  {
    ccpoly1305_update_internal((a1 + 136), -*(a1 + 232) & 0xFLL, kZero64);
    *(a1 + 248) = 3;
LABEL_4:
    ccpoly1305_update_internal((a1 + 136), -*(a1 + 240) & 0xFLL, kZero64);
    v6[0] = *(a1 + 232);
    ccpoly1305_update_internal((a1 + 136), 8uLL, v6);
    v6[0] = *(a1 + 240);
    ccpoly1305_update_internal((a1 + 136), 8uLL, v6);
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

uint64_t ccrsa_crt_exp_mod_pq_star_ws(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, void *a6, void *a7, unsigned int *a8)
{
  v14 = cczp_n(a4);
  v15 = cczp_n(a3);
  v28 = *(a1 + 16);
  v16 = (*(a1 + 24))(a1, 2 * v14);
  v17 = (*(a1 + 24))(a1, v14);
  v18 = cczp_n(a2);
  v19 = cczp_prime(a3);
  if (v15)
  {
    ccn_set(v15, v16, v19);
  }

  ccn_zero(v18 - v15 + 1, &v16[8 * v15]);
  ccn_set_bit(v16, 0, 0);
  ccn_set(v15, v17, a6);
  v17[v15] = ccn_addmul1(v15, v17, v16, *a8);
  v20 = cczp_prime(a3);
  *&v16[8 * v15] = ccn_mul1(v15, v16, v20, a8[2]);
  v21 = cczp_n(a2);
  v22 = cczp_n(a2);
  ccn_addn(v21 + 1, v16, v16, v22, a5);
  v23 = cczp_n(a2);
  cczp_modn_ws(a1, a4, v16, v23 + 1, v16);
  cczp_to_ws(a1, a4);
  v24 = cczp_bitlen(a3);
  cczp_power_ws(a1, a4, a7, v16, v24 + 32, v17);
  result = cczp_from_ws(a1, a4);
  *(a1 + 16) = v28;
  return result;
}

uint64_t ccec_sign_composite(uint64_t **a1, unint64_t a2, uint64_t a3, char *a4, char *a5, uint64_t (**a6)(void, unint64_t, void *))
{
  v19 = timingsafe_enable_if_supported();
  v12 = *a1;
  v13 = cc_malloc_clear(280 * **a1);
  v14 = 35 * *v12;
  v17[0] = v13;
  v17[1] = v14;
  v17[2] = 0;
  v17[3] = cc_ws_alloc;
  v18 = cc_ws_free;
  if (v13)
  {
    v15 = ccec_sign_composite_ws(v17, a1, a2, a3, a4, a5, a6);
    v18(v17);
  }

  else
  {
    v15 = 4294967283;
  }

  cc_disable_dit_with_sb(&v19);
  return v15;
}

BOOL ccn_addn(uint64_t a1, void *a2, uint64_t *a3, _BOOL8 a4, uint64_t *a5)
{
  v5 = a1 - a4;
  v6 = &a2[a4];
  v7 = &a3[a4];
  v8 = ccn_add_ws(0, a4, a2, a3, a5);

  return ccn_add1_ws(0, v5, v6, v7, v8);
}

void ccn_shift_left_multi(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64x2_t a5)
{
  v7 = a1;
  ccn_shift_left(a1, a2, a3, a4 & 0x3F, a5);
  for (; v7; *(a2 + 8 * v7) = v8)
  {
    v8 = 0;
    v9 = v7--;
    v10 = a2;
    do
    {
      v11 = *v10++;
      v8 |= (a4 >> 6) + 1 != v9-- ? 0 : v11;
    }

    while (v9);
  }
}

uint64_t ccder_blob_decode_bitstring(unsigned __int8 **a1, uint64_t a2, unint64_t *a3)
{
  result = ccder_blob_decode_range(a1, 3, a2);
  if (result)
  {
    *a3 = 0;
    v6 = *a2;
    v7 = *(a2 + 8);
    if (v7 != *a2)
    {
      v8 = 8 * (~v6 + v7);
      v9 = *v6;
      v10 = v8 >= v9;
      v11 = v8 - v9;
      if (v10)
      {
        *a3 = v11;
      }

      *a2 = v6 + 1;
    }
  }

  return result;
}

uint64_t ccn_write_uint(unint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  v9 = timingsafe_enable_if_supported();
  ccn_write_uint_public_value(a1, a2, a3, a4);
  return cc_disable_dit_with_sb(&v9);
}

unint64_t ccn_bitlen(uint64_t a1, uint64_t *a2)
{
  v6 = timingsafe_enable_if_supported();
  v4 = ccn_bitlen_public_value(a1, a2);
  cc_disable_dit_with_sb(&v6);
  return v4;
}

uint64_t ccrsa_init_pub(uint64_t *a1, void *a2, void *a3)
{
  v6 = 5 * *a1 + 3;
  v10[0] = cc_malloc_clear(8 * v6);
  v10[1] = v6;
  v11 = 0;
  v12 = cc_ws_alloc;
  v13 = cc_ws_free;
  if (!v10[0])
  {
    return 4294967283;
  }

  v7 = *a1;
  inited = cczp_mm_init_ws(v10, a1, *a1, a2);
  ccn_set(v7, &a1[2 * *a1 + 4], a3);
  v11 = 0;
  v13(v10);
  return inited;
}

uint64_t ccecdh_compute_shared_secret(uint64_t **a1, uint64_t **a2, unint64_t *a3, char *a4, uint64_t (**a5)(void, uint64_t, uint64_t *))
{
  v17 = timingsafe_enable_if_supported();
  v10 = *a1;
  v11 = cc_malloc_clear(232 * **a1);
  v12 = 29 * *v10;
  v15[0] = v11;
  v15[1] = v12;
  v15[2] = 0;
  v15[3] = cc_ws_alloc;
  v16 = cc_ws_free;
  if (v11)
  {
    v13 = ccecdh_compute_shared_secret_ws(v15, a1, a2, a3, a4, a5);
    v16(v15);
  }

  else
  {
    v13 = 4294967283;
  }

  cc_disable_dit_with_sb(&v17);
  return v13;
}

uint64_t ccecdh_compute_shared_secret_ws(uint64_t a1, uint64_t **a2, uint64_t **a3, unint64_t *a4, char *a5, uint64_t (**a6)(void, uint64_t, uint64_t *))
{
  v11 = *a2;
  v31 = *(a1 + 16);
  v12 = 3 * **a2;
  v13 = (*(a1 + 24))(a1, v12);
  v14 = (*(a1 + 24))(a1, v12);
  v15 = *a4;
  *a4 = 0;
  v16 = ccn_write_uint_size_public_value(*v11, v11 + 3);
  if (v15 < v16 || *a2 != *a3 || (v17 = v16, ccec_validate_point_and_projectify_ws(a1, v11, v14, (a3 + 2))) || ccec_validate_scalar(v11, &a2[3 * **a2 + 2]) || (v18 = OUTLINED_FUNCTION_0_7(), ccec_mult_blinded_ws(v18, v19, v20, v21, v14, a6)))
  {
    v28 = 0xFFFFFFFFLL;
    v24 = v31;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_0_7();
    v24 = v31;
    if (!ccec_is_point_projective_ws(v22, v23) || (v25 = OUTLINED_FUNCTION_0_7(), ccec_affinify_x_only_ws(v25, v26, v27, v13)))
    {
      v28 = 0xFFFFFFFFLL;
    }

    else
    {
      ccn_write_uint_padded_ct_internal(*v11, v13, v17, a5);
      v28 = 0;
      *a4 = v17;
    }
  }

  cc_clear(24 * *v11, v13);
  cc_clear(24 * *v11, v14);
  *(a1 + 16) = v24;
  return v28;
}

uint64_t ccrsa_verify_pkcs1v15(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, _BYTE *a7)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v20 = timingsafe_enable_if_supported();
  *a7 = 0;
  v14 = cc_malloc_clear(88 * *a1);
  v15 = 11 * *a1;
  v18[0] = v14;
  v18[1] = v15;
  v18[2] = 0;
  v18[3] = cc_ws_alloc;
  v19 = cc_ws_free;
  if (v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v16 = ccrsa_verify_pkcs1v15_internal_ws(v18, a1, a2, a3, a4, a5, a6, 0, v21);
    v19(v18);
    if (v16)
    {
      if (v16 == -146)
      {
        v16 = 0;
      }

      else
      {
        v16 = v16;
      }
    }

    else
    {
      *a7 = 1;
    }
  }

  else
  {
    v16 = 4294967283;
  }

  cc_disable_dit_with_sb(&v20);
  return v16;
}

uint64_t ccrsa_verify_pkcs1v15_internal_ws(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, int a8, unsigned __int8 *a9)
{
  *a9 = 0;
  *(a9 + 1) = 0;
  v16 = a2 + 3;
  v17 = *a2;
  v18 = ccn_write_uint_size_public_value(*a2, a2 + 3);
  v19 = v18 >= a6;
  if (a8 != 2110636126)
  {
    v19 = v18 == a6;
  }

  if (v19)
  {
    v26 = a3;
    v27 = a5;
    v20 = *(a1 + 16);
    v21 = (*(a1 + 24))(a1, v17);
    v22 = (*(a1 + 24))(a1, v17);
    cc_clear(8 * (*(a1 + 16) - v20), (*a1 + 8 * v20));
    v23 = ccn_write_uint_size_public_value(v17, v16);
    if (ccn_read_uint_internal(v17, v21, a6, a7))
    {
      v24 = -23;
    }

    else
    {
      v29 = ccrsa_pub_crypt_ws(a1, a2);
      if (v29)
      {
LABEL_9:
        *(a1 + 16) = v20;
        return v29;
      }

      ccn_swap(v17, v22);
      if (ccrsa_emsa_pkcs1v15_verify_canary_out(v23, &v22[v17] - v23, a4, v27, v26, a9))
      {
        v24 = -146;
      }

      else
      {
        v24 = a9[8] ^ a9[4] ^ a9[3] ^ a9[13] ^ 0x89 ^ a9[15] ^ a9[10] ^ a9[1] ^ a9[11] ^ a9[14] ^ a9[6] ^ a9[2] ^ a9[9] ^ a9[12] ^ *a9 ^ a9[7] ^ a9[5];
      }
    }

    v29 = v24;
    goto LABEL_9;
  }

  return 4294967273;
}

uint64_t ccn_swap(uint64_t result, unint64_t *a2)
{
  for (i = &a2[result - 1]; a2 < i; --i)
  {
    v3 = bswap64(*a2);
    *a2++ = bswap64(*i);
    *i = v3;
  }

  if (result)
  {
    *a2 = bswap64(*a2);
  }

  return result;
}

uint64_t ccder_encode_implicit_raw_octet_string(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a5)
  {
    return 0;
  }

  v6 = a4;
  v7 = a5;
  if (ccder_blob_encode_implicit_raw_octet_string(&v6, a1, a2, a3))
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t ccchacha20(int32x4_t *a1, uint64_t *a2, int a3, unint64_t a4, int8x16_t *a5, int8x16_t *a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v15 = timingsafe_enable_if_supported();
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = *a1;
  v13 = a1[1];
  __s[0] = xmmword_1DF0FDA60;
  __s[1] = v12;
  __s[2] = v13;
  v24 = 0;
  v18 = *a2;
  v19 = *(a2 + 2);
  v17 = a3;
  _ccchacha20_xor(__s, a4, a6, a5);
  cc_clear(0x88uLL, __s);
  cc_disable_dit_with_sb(&v15);
  return 0;
}

uint64_t cczp_sqrt_default_ws(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = ~*cczp_prime(a2) & 3;
  v9 = cczp_n(a2);
  v10 = *(a1 + 16);
  v11 = (*(a1 + 24))(a1, v9);
  v12 = cczp_prime(a2);
  if (v8)
  {
    ccn_set(v9, v11, v12);
    v11->i64[0] &= ~1uLL;
    v14 = ccn_trailing_zeros(v9, v11);
    ccn_shift_right_multi(v9, v11, v11, v14);
    v15 = (*(a1 + 24))(a1, v9);
    ccn_sub1(v9, v15, v11, 1uLL);
    ccn_shift_right(v9, v15, v15, 1);
    v16 = (*(a1 + 24))(a1, v9);
    ccn_seti(v9, v16, 1);
    while (!cczp_is_quadratic_residue_ws(a1, a2, v16))
    {
      ccn_add1_ws(a1, v9, v16, v16, 1);
    }

    result = cczp_power_fast_ws(a1, a2, v16, v16, v11);
    if (!result)
    {
      result = cczp_sqrt_tonelli_shanks_precomp_ws(a1, a2, a3, a4, v14, v15, v16);
    }
  }

  else
  {
    ccn_add1_ws(a1, v9, v11, v12, 1);
    ccn_shift_right(v9, v11, v11, 2);
    result = cczp_power_fast_ws(a1, a2, a3, a4, v11);
    if (!result)
    {
      cczp_sqr_ws(a1, a2);
      if (ccn_cmp_public_value(v9, v11, a4))
      {
        result = 4294967289;
      }

      else
      {
        result = 0;
      }
    }
  }

  *(a1 + 16) = v10;
  return result;
}

uint64_t ccec_compact_import_priv_size(uint64_t a1)
{
  v4 = timingsafe_enable_if_supported();
  if (a1 <= 63)
  {
    if (a1 == 48)
    {
      v2 = 192;
      goto LABEL_13;
    }

    if (a1 == 56)
    {
      v2 = 224;
      goto LABEL_13;
    }

LABEL_12:
    v2 = 0;
    goto LABEL_13;
  }

  if (a1 == 64)
  {
    v2 = 256;
    goto LABEL_13;
  }

  if (a1 == 96)
  {
    v2 = 384;
    goto LABEL_13;
  }

  if (a1 != 132)
  {
    goto LABEL_12;
  }

  v2 = 521;
LABEL_13:
  cc_disable_dit_with_sb(&v4);
  return v2;
}

uint64_t ccec_compact_import_priv(unint64_t *a1, uint64_t a2, unsigned __int8 *a3, unint64_t **a4)
{
  v17 = timingsafe_enable_if_supported();
  v8 = cczp_bitlen(a1) + 7;
  if (((cczp_bitlen(&a1[5 * *a1 + 4]) + 7) >> 3) + (v8 >> 3) == a2)
  {
    *a4 = a1;
    v9 = cczp_bitlen(a1);
    uint_internal = ccec_compact_import_pub(a1, (v9 + 7) >> 3, a3, a4);
    if (!uint_internal)
    {
      v11 = *a1;
      v12 = &a4[3 * **a4];
      v13 = (cczp_bitlen(&a1[5 * *a1 + 4]) + 7) >> 3;
      v14 = cczp_bitlen(a1);
      uint_internal = ccn_read_uint_internal(v11, v12 + 2, v13, &a3[(v14 + 7) >> 3]);
    }

    v15 = uint_internal;
  }

  else
  {
    v15 = 4294967124;
  }

  cc_disable_dit_with_sb(&v17);
  return v15;
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

uint64_t ccec_compact_import_pub_ws(uint64_t a1, unint64_t *a2, uint64_t a3, unsigned __int8 *a4, unint64_t **a5)
{
  v8 = *(a1 + 16);
  *a5 = a2;
  v9 = a5 + 2;
  result = ccec_import_affine_point_ws(a1, a2, 4, a3, a4, a5 + 2);
  if (!result)
  {
    ccn_seti(*a2, &v9[2 * **a5], 1);
    v11 = (*(a1 + 24))(a1, 3 * *a2);
    result = ccec_validate_point_and_projectify_ws(a1, a2, v11, (a5 + 2));
  }

  *(a1 + 16) = v8;
  return result;
}

uint64_t ccec_affine_point_from_x_ws(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v7);
  if ((ccn_cmp_public_value(*a2, a4, a2 + 3) & 0x80000000) != 0)
  {
    cczp_to_ws(a1, a2);
    cczp_sqr_ws(a1, a2);
    cczp_mul_ws(a1, a2);
    cczp_add_ws(a1, a2);
    cczp_add_ws(a1, a2);
    cczp_sub_ws(a1, a2);
    cczp_add_ws(a1, a2);
    result = cczp_sqrt_ws(a1, a2);
    if (!result)
    {
      cczp_from_ws(a1, a2);
      cczp_from_ws(a1, a2);
      result = 0;
    }
  }

  else
  {
    result = 4294967289;
  }

  *(a1 + 16) = v8;
  return result;
}

uint64_t ccecb_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 16))(a1, a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t cclr_aes_init(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  a1[3] = a2;
  a1[4] = a3;
  v10 = 4294967289;
  if ((a4 - 129) >= 0xFFFFFFFFFFFFFF80 && (a4 & 7) == 0 && (a5 - 11) >= 0xFFFFFFFFFFFFFFF9)
  {
    v10 = 0;
    *a1 = &cclr_aes_info;
    a1[1] = a4;
    a1[2] = a5;
  }

  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t cclr_decrypt_block()
{
  OUTLINED_FUNCTION_2();
  v22 = *MEMORY[0x1E69E9840];
  v1 = timingsafe_enable_if_supported();
  v19 = v1;
  v9 = *(v0 + 16);
  if ((v9 - 11) < 0xFFFFFFFFFFFFFFF9)
  {
    v16 = 4294967289;
  }

  else
  {
    v10 = 0;
    v11 = v9 - 1;
    v12 = vdupq_n_s64(v9 - 1);
    v13 = xmmword_1DF0F2E60;
    v14 = vdupq_n_s64(2uLL);
    do
    {
      v15 = vmovn_s64(vcgeq_u64(v12, v13));
      if (v15.i8[0])
      {
        v21[v10] = v11;
      }

      if (v15.i8[4])
      {
        v21[v10 + 1] = v9 + (v10 ^ 0xFE);
      }

      v10 += 2;
      v13 = vaddq_s64(v13, v14);
      v11 -= 2;
    }

    while (((v9 + 1) & 0x1E) != v10);
    v16 = OUTLINED_FUNCTION_0_29(v1, v2, v3, v4, v5, v6, v7, v8, v18, v19, v20, v21[0]);
  }

  cc_disable_dit_with_sb(&v19);
  return v16;
}

uint64_t cclr_permute(uint64_t a1, rsize_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v35 = a5;
  *(&v42[1] + 6) = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 8);
  if (a2 != (v6 + 7) >> 3)
  {
    v26 = 4294967289;
LABEL_27:
    cc_clear(a2, a3);
    goto LABEL_28;
  }

  v41[0] = *(a1 + 8);
  v10 = *(a1 + 16);
  v41[1] = v10;
  v42[0] = 0;
  *(v42 + 6) = 0;
  __s = 0;
  v38 = 0u;
  v39 = 0u;
  v11 = v6 >> 1;
  __s_8 = ((v6 >> 1) + 7) >> 3;
  v12 = (v6 >> 1) & 7;
  LOBYTE(v38) = -1 << v12;
  __memcpy_chk();
  v13 = v6 + 1;
  v34 = v6 >> 4;
  *(&__s + __s_8 - 1) &= v38;
  *&v39 = (((v6 + 1) >> 1) + 7) >> 3;
  v14 = a2 - (v6 >> 4);
  if (v12)
  {
    if (v14 != 1)
    {
      v15 = (a4 + v34 + 1);
      v16 = *(a4 + v34);
      v17 = v14 - 1;
      v18 = &v38 + 8;
      do
      {
        v19 = *v15++;
        *v18++ = (v16 << (v11 & 7)) | ((v19 << 23) >> ~(v11 & 7));
        v16 = v19;
        --v17;
      }

      while (v17);
    }

    *(&v38 + v14 + 7) = *(a4 + (v6 >> 4) + v14 - 1) << v12;
  }

  else
  {
    __memcpy_chk();
  }

  BYTE8(v39) = -1 << ((v13 >> 1) & 7);
  *(&v38 + v39 + 7) &= -1 << ((v13 >> 1) & 7);
  if (v10)
  {
    v32 = a3;
    v20 = 0;
    while (1)
    {
      v21 = *(v35 + v20) & 1;
      LOBYTE(v42[0]) = *(v35 + v20);
      __memcpy_chk();
      v22 = (**a1)(a1, v40, v41);
      if (v22)
      {
        break;
      }

      v23 = &__s + 3 * v21;
      v24 = v23[1];
      if (v24)
      {
        do
        {
          *(&v35 + 24 * v21 + v24 + 7) ^= v40[v24 - 1];
          --v24;
        }

        while (v24);
        v25 = v23 + v23[1] - 1;
      }

      else
      {
        v25 = v23 - 1;
      }

      *v25 &= *(v23 + 16);
      if (++v20 >= *(a1 + 16))
      {
        v26 = 0;
        a3 = v32;
        v12 = (v6 >> 1) & 7;
        LOBYTE(v11) = v6 >> 1;
        goto LABEL_18;
      }
    }

    v26 = v22;
    a3 = v32;
    goto LABEL_27;
  }

  v26 = 4294967289;
LABEL_18:
  v27 = __s_8;
  a3[__s_8 - 1] = 0;
  if (v12)
  {
    if (v14 != 1)
    {
      v28 = *(&v38 + v14 + 7);
      v29 = &a3[a2 - 1];
      do
      {
        v30 = *(&v38 + v14 + 6);
        *v29-- = ((2 * v30) << (~v11 & 7)) | ((v28 << 24) >> (v11 & 7 | 0x18));
        --v14;
        v28 = v30;
      }

      while (v14 != 1);
    }

    a3[v34] = BYTE8(v38) >> v12;
  }

  else
  {
    memcpy(&a3[v34], &v38 + 8, v14);
  }

  memcpy(a3, &__s, v27 - 1);
  a3[v27 - 1] |= *(&__s + v27 - 1);
  if (!v10)
  {
    goto LABEL_27;
  }

  v26 = 0;
LABEL_28:
  cc_clear(0x30uLL, &__s);
  cc_clear(0x10uLL, v41);
  cc_clear(0x10uLL, v40);
  return v26;
}

uint64_t ccec_compact_export(int a1, char *a2, uint64_t *a3)
{
  v15 = timingsafe_enable_if_supported();
  v6 = ccec_compact_export_pub(a2, a3);
  v7 = v6;
  if (a1 && !v6)
  {
    v8 = *a3;
    v9 = **a3;
    v10 = &a3[3 * v9];
    v11 = (cczp_bitlen(*a3 + 40 * v9 + 32) + 7) >> 3;
    v12 = cczp_bitlen(v8);
    v13 = ccn_write_uint_padded_ct_internal(v9, v10 + 2, v11, &a2[(v12 + 7) >> 3]);
    v7 = v13 & (v13 >> 31);
  }

  cc_disable_dit_with_sb(&v15);
  return v7;
}

uint64_t ccec_compact_export_pub(char *a1, uint64_t *a2)
{
  v3 = a2 + 2;
  v4 = *a2;
  v6 = (cczp_bitlen(*a2) + 7) >> 3;
  return ccec_export_affine_point_public_value(v4, 4, v3, &v6, a1);
}

uint64_t ccec_rfc6637_unwrap_key(uint64_t **a1, size_t *a2, void *a3, char a4, _BYTE *a5, char *a6, uint64_t (**a7)(void), char *a8, unint64_t a9, unsigned __int8 *a10)
{
  v29 = timingsafe_enable_if_supported();
  v16 = *a1;
  v17 = **a1;
  v18 = sizeof_struct_cche_galois_key();
  v19 = sizeof_struct_ccpolyzp_po2cyc();
  v27[0] = cc_malloc_clear(8 * ((v18 + v19 + 3 * v19 * v17 - 1) / v19 + 30 * v17 + v19 * v17) + 16 * v19 * v17 + 720);
  v20 = *v16;
  v21 = sizeof_struct_cche_galois_key();
  v22 = sizeof_struct_ccpolyzp_po2cyc();
  v27[1] = (v21 + v22 + 3 * v22 * v20 - 1) / v22 + 30 * v20 + v22 * v20 + 2 * v22 * v20 + 90;
  v27[2] = 0;
  v27[3] = cc_ws_alloc;
  v28 = cc_ws_free;
  if (v27[0])
  {
    v23 = ccec_rfc6637_unwrap_key_ws(v27, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
    v28(v27);
  }

  else
  {
    v23 = 4294967283;
  }

  cc_disable_dit_with_sb(&v29);
  return v23;
}

uint64_t ccec_rfc6637_unwrap_key_ws(uint64_t a1, uint64_t **a2, size_t *a3, void *a4, char a5, _BYTE *a6, char *a7, uint64_t (**a8)(void), char *a9, unint64_t a10, unsigned __int8 *a11)
{
  v70 = *MEMORY[0x1E69E9840];
  v19 = (*(*a8 + 2))();
  if (a10 < 5 || *v19 < *(*a8 + 4))
  {
    return 4294967289;
  }

  v64 = a6;
  v65 = a3;
  v21 = (__rev16(*a11) + 7) >> 3;
  if (v21 > a10 - 3)
  {
    return 4294967289;
  }

  v24 = v19;
  v25 = v21 + a11[v21 + 2] + 3;
  if ((a5 & 2) != 0)
  {
    if (v25 <= a10)
    {
      goto LABEL_13;
    }
  }

  else if (v25 == a10)
  {
LABEL_13:
    v57 = a11[v21 + 2];
    v60 = &a11[v21];
    v55 = a4;
    v26 = *a2;
    v27 = **a2;
    v59 = a8[1]();
    v28 = ccecb_context_size(v59);
    v63 = &v55;
    MEMORY[0x1EEE9AC00](v28, v29, v30, v31);
    v58 = &v55 - v32;
    v33 = *(a1 + 24);
    v62 = *(a1 + 16);
    v61 = v33(a1, v27);
    v34 = *(a1 + 24);
    v56 = 24 * v27;
    v35 = v34(a1, (24 * v27 + 23) >> 3);
    *v35 = v26;
    if ((((cczp_bitlen(v26) + 7) >> 2) | 1) == v21)
    {
      v36 = ccec_import_pub_ws(a1, v26, v21, a11 + 2, v35);
    }

    else
    {
      if ((a5 & 1) == 0 || v21 > (cczp_bitlen(*v35) + 7) >> 3)
      {
        v22 = 4294967289;
        goto LABEL_31;
      }

      v36 = ccec_compact_import_pub_ws(a1, v26, v21, a11 + 2, v35);
    }

    v22 = v36;
    if (!v36)
    {
      v68 = (cczp_bitlen(v26) + 7) >> 3;
      v37 = v61;
      v38 = ccecdh_compute_shared_secret_ws(a1, a2, v35, &v68, v61, 0);
      if (v38)
      {
        v22 = v38;
        goto LABEL_31;
      }

      v39 = v57;
      ccec_rfc6637_kdf(v24, a7, *a8, v68, v37, 0x14uLL, a9, __s);
      v41 = v58;
      v40 = v59;
      ccecb_init_internal(v59);
      cc_clear(*v24, __s);
      v42 = (*(a1 + 24))(a1, v56 + 90);
      v66 = 0xA6A6A6A6A6A6A6A6;
      v67 = v39;
      v22 = ccwrap_auth_decrypt_withiv_internal(v40, v41, v39, (v60 + 3), &v67, v42, &v66);
      v43 = ccecb_context_size(v40);
      cc_clear(v43, v41);
      if (!v22)
      {
        v44 = v67;
        if (v67 - 1 >= v39 - 1 || (v45 = v65, *v64 = *v42, v46 = (v42 + v44 - 1), v47 = *v46, v48 = v44 - 3, v49 = v48 - v47, v50 = v55, v48 < v47))
        {
LABEL_33:
          v22 = 4294967294;
          goto LABEL_31;
        }

        if (*v46)
        {
          v51 = *v46;
          do
          {
            v52 = *v46--;
            if (v52 != v47)
            {
              goto LABEL_33;
            }
          }

          while (--v51);
        }

        if (*v45 < v49)
        {
          v22 = 4294967133;
          goto LABEL_31;
        }

        *v45 = v49;
        v53 = pgp_key_checksum(v49, (v42 + 1));
        v54 = v42 + *v45;
        if (*(v54 + 1) != v53 >> 8 || *(v54 + 2) != v53)
        {
          goto LABEL_33;
        }

        memcpy(v50, (v42 + 1), *v45);
        v22 = 0;
      }
    }

LABEL_31:
    *(a1 + 16) = v62;
    return v22;
  }

  return 4294967289;
}

uint64_t ccec_rfc6637_kdf(uint64_t a1, char *a2, uint64_t a3, size_t a4, char *a5, size_t a6, char *a7, uint64_t a8)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v16 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v18 = (v20 - v17);
  ccdigest_init_internal(v16, (v20 - v17));
  ccdigest_update_internal(a1, v18, 4uLL, byte_1DF0F2D3F);
  ccdigest_update_internal(a1, v18, a4, a5);
  ccdigest_update_internal(a1, v18, 1uLL, *a2);
  ccdigest_update_internal(a1, v18, **a2, (*a2 + 1));
  ccdigest_update_internal(a1, v18, 1uLL, a2 + 8);
  ccdigest_update_internal(a1, v18, 2uLL, "\x03\x01");
  ccdigest_update_internal(a1, v18, 1uLL, (a3 + 8));
  ccdigest_update_internal(a1, v18, 1uLL, (a3 + 24));
  ccdigest_update_internal(a1, v18, 0x14uLL, "Anonymous Sender    ");
  ccdigest_update_internal(a1, v18, a6, a7);
  (*(a1 + 56))(a1, v18, a8);
  return cc_clear(*(a1 + 8) + *(a1 + 16) + 12, v18);
}

uint64_t ccwrap_auth_decrypt_withiv_internal(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, size_t *a5, char *a6, uint64_t a7)
{
  v11 = a3;
  v34 = *MEMORY[0x1E69E9840];
  v14 = ccwrap_unwrapped_size(a3);
  *a5 = v14;
  if (!ccwrap_argsvalid(a1, v14, v11))
  {
    cc_clear(0x10uLL, &__s);
    v25 = 4294967289;
    goto LABEL_9;
  }

  v31 = a7;
  v15 = v11 >> 3;
  v16 = (v11 >> 3) - 1;
  __s = *a4;
  v28 = a5;
  memmove(a6, a4 + 1, *a5);
  v17 = 6 * (v11 >> 3) - 6;
  v29 = v11;
  v30 = a6;
  v18 = 1 - (v11 >> 3);
  v19 = a6 - 16;
  v20 = 5;
  do
  {
    v21 = v20;
    if (v16)
    {
      v22 = v15;
      v23 = v17;
      do
      {
        v24 = *&v19[8 * v22];
        __s ^= bswap64(v23);
        v33 = v24;
        (*(a1 + 24))(a2, 1, &__s, &__s);
        *&v19[8 * v22] = v33;
        --v23;
        --v22;
      }

      while (v22 != 1);
    }

    v20 = v21 - 1;
    v17 += v18;
  }

  while (v21);
  v25 = cc_cmp_safe_internal(8, &__s, v31);
  cc_clear(0x10uLL, &__s);
  if (v25)
  {
    v25 = 4294967294;
    v11 = v29;
    a6 = v30;
    a5 = v28;
LABEL_9:
    *a5 = 0;
    v26 = ccwrap_unwrapped_size(v11);
    cc_clear(v26, a6);
  }

  return v25;
}

unint64_t ccwrap_unwrapped_size(unint64_t a1)
{
  if (a1 >= 8)
  {
    return a1 - 8;
  }

  else
  {
    return 0;
  }
}

uint64_t AccelerateCrypto_ecb_AES_decrypt(int8x16_t *a1, int a2, uint64_t a3, int8x16_t *a4)
{
  v4 = a1[15].u32[0];
  v5 = *a1;
  _VF = __OFSUB__(a2, 4);
  for (i = a2 - 4; i < 0 == _VF; i -= 4)
  {
    a3 += 64;
    _Q4 = *(a1 + v4);
    v9 = v4 - 16;
    do
    {
      __asm
      {
        AESD            V0.16B, V4.16B
        AESIMC          V0.16B, V0.16B
        AESD            V1.16B, V4.16B
        AESIMC          V1.16B, V1.16B
        AESD            V2.16B, V4.16B
        AESIMC          V2.16B, V2.16B
        AESD            V3.16B, V4.16B
        AESIMC          V3.16B, V3.16B
      }

      _Q4 = *(a1 + v9);
      v21 = v9 <= 16;
      v9 -= 16;
    }

    while (!v21);
    __asm
    {
      AESD            V0.16B, V4.16B
      AESD            V1.16B, V4.16B
      AESD            V2.16B, V4.16B
      AESD            V3.16B, V4.16B
    }

    *a4 = veorq_s8(_Q0, v5);
    a4[1] = veorq_s8(_Q1, v5);
    a4[2] = veorq_s8(_Q2, v5);
    a4[3] = veorq_s8(_Q3, v5);
    a4 += 4;
    _VF = __OFSUB__(i, 4);
  }

  v26 = i & 3;
  if (v26)
  {
    do
    {
      a3 += 16;
      _Q4 = *(a1 + v4);
      v28 = v4 - 16;
      do
      {
        __asm
        {
          AESD            V0.16B, V4.16B
          AESIMC          V0.16B, V0.16B
        }

        _Q4 = *(a1 + v28);
        v21 = v28 <= 16;
        v28 -= 16;
      }

      while (!v21);
      __asm { AESD            V0.16B, V4.16B }

      *a4++ = veorq_s8(_Q0, v5);
      _VF = __OFSUB__(v26--, 1);
    }

    while (!((v26 < 0) ^ _VF | (v26 == 0)));
  }

  return 0;
}

uint64_t pgp_key_checksum(uint64_t a1, unsigned __int8 *a2)
{
  for (i = 0; a1; --a1)
  {
    v3 = *a2++;
    i += v3;
  }

  return i;
}

uint64_t ccnistkdf_ctr_hmac(unint64_t *a1, size_t a2, uint64_t a3, size_t a4, const void *a5, size_t a6, const void *a7, rsize_t a8, char *a9)
{
  v30 = timingsafe_enable_if_supported();
  v17 = a6 + a4;
  v18 = a6 + a4 + 12;
  v19 = v18 >> 3;
  v28[0] = cc_malloc_clear(v18 & 0xFFFFFFFFFFFFFFF8);
  v28[1] = v19;
  v28[2] = 0;
  v28[3] = cc_ws_alloc;
  v29 = cc_ws_free;
  if (v28[0])
  {
    v20 = cc_ws_alloc(v28, v19);
    if ((a8 & 0x1FFFFFFFE0000000) != 0)
    {
      v21 = 4294967289;
    }

    else
    {
      v22 = v20;
      v23 = a9;
      if (a4 && a5)
      {
        memcpy(v20, a5, a4);
        v23 = a9;
      }

      v24 = &v22[a4];
      *v24 = 0;
      if (a6 && a7)
      {
        v25 = a7;
        v26 = v23;
        memcpy(v24 + 1, v25, a6);
        v23 = v26;
      }

      *&v24[a6 + 1] = (a8 << 11) & 0xFF0000 | (a8 << 27) | (a8 >> 5) & 0xFF00 | (a8 >> 21);
      v21 = ccnistkdf_ctr_hmac_fixed(a1, a2, a3, v17 + 5, v22, a8, v23);
    }

    v29(v28);
  }

  else
  {
    v21 = 4294967283;
  }

  cc_disable_dit_with_sb(&v30);
  return v21;
}

uint64_t ccnistkdf_ctr_hmac_fixed(unint64_t *a1, size_t a2, uint64_t a3, size_t a4, char *a5, rsize_t a6, char *a7)
{
  v36 = *MEMORY[0x1E69E9840];
  v14 = timingsafe_enable_if_supported();
  v33 = v14;
  if (a6 && ((v17 = *a1, v18 = a6 / *a1, (v19 = a6 % *a1) == 0) ? (v20 = a6 / *a1) : (v20 = v18 + 1), !HIDWORD(v20)))
  {
    v23 = a3;
    v21 = 4294967289;
    if (a2 && v23 && a7)
    {
      v30 = v20;
      v31 = v19;
      v32 = &v29;
      MEMORY[0x1EEE9AC00](v14, v15, v16, v23);
      v25 = (&v29 - v24);
      cchmac_init_internal(a1, (&v29 - v24), a2, v26);
      __memcpy_chk();
      if (v17 <= a6)
      {
        v27 = 1;
        do
        {
          F_0(a1, v25, v34, v27++, a4, a5, a7);
          a7 += v17;
        }

        while (v27 <= v18);
      }

      v28 = v31;
      if (v31)
      {
        F_0(a1, v25, v34, v30, a4, a5, __src);
        memcpy(a7, __src, v28);
      }

      cc_clear(v17, __src);
      cc_clear(((a1[1] + a1[2] + 19) & 0xFFFFFFFFFFFFFFF8) + a1[1], v25);
      cc_clear(a1[1], v34);
      v21 = 0;
    }
  }

  else
  {
    v21 = 4294967289;
  }

  cc_disable_dit_with_sb(&v33);
  return v21;
}

uint64_t F(unint64_t *a1, void *a2, void *__src, size_t a4, char *a5, unint64_t a6, unsigned int a7, size_t a8, char *a9)
{
  v16 = a1[1];
  v17 = (a2 + 1);
  memcpy(a2 + 1, __src, v16);
  v19 = a1[1];
  v18 = a1[2];
  *a2 = 8 * v18;
  *(a2 + v19 + v18 + 8) = 0;
  ccdigest_update_internal(a1, a2, a4, a5);
  __srca = bswap32(a7);
  ccdigest_update_internal(a1, a2, 4uLL, &__srca);
  cchmac_final_internal(a1, a2, &v17[v16]);
  result = memcpy(a9, &v17[v16], a8);
  if (a6 >= 2)
  {
    v21 = 2;
    do
    {
      memcpy(v17, __src, a1[1]);
      v22 = a1[2];
      *a2 = 8 * v22;
      *&v17[a1[1] + v22] = *a1;
      result = cchmac_final_internal(a1, a2, &v17[v16]);
      if (a8)
      {
        v23 = a8;
        do
        {
          a9[v23 - 1] ^= *(a2 + v16 + v23 + 7);
          --v23;
        }

        while (v23);
      }

      ++v21;
    }

    while (v21 <= a6);
  }

  return result;
}

uint64_t F_0(unint64_t *a1, void *a2, void *__src, unsigned int a4, size_t a5, char *a6, uint64_t a7)
{
  memcpy(a2 + 1, __src, a1[1]);
  v14 = a1[1];
  v13 = a1[2];
  *a2 = 8 * v13;
  *(a2 + v14 + v13 + 8) = 0;
  __srca = bswap32(a4);
  ccdigest_update_internal(a1, a2, 4uLL, &__srca);
  ccdigest_update_internal(a1, a2, a5, a6);
  return cchmac_final_internal(a1, a2, a7);
}

uint64_t ccrng_pbkdf2_prng_init(char *a1, unint64_t a2, uint64_t a3, uint64_t a4, size_t a5, char *a6, unint64_t a7)
{
  v17 = timingsafe_enable_if_supported();
  if (a2 <= 0x1000)
  {
    *a1 = ccrng_pbkdf2_prng_generate;
    *(a1 + 1) = a2;
    v15 = ccsha256_di();
    v14 = ccpbkdf2_hmac_internal(v15, a3, a4, a5, a6, a7, *(a1 + 1), &a1[-*(a1 + 1) + 4112]);
  }

  else
  {
    *(a1 + 1) = 0;
    v14 = 4294967289;
  }

  cc_disable_dit_with_sb(&v17);
  return v14;
}

uint64_t ccpbkdf2_hmac_internal(unint64_t *a1, uint64_t a2, uint64_t a3, size_t a4, char *a5, unint64_t a6, unint64_t a7, char *a8)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((a7 / *a1) >> 32)
  {
    return 0xFFFFFFFFLL;
  }

  v24 = &v24;
  v15 = MEMORY[0x1EEE9AC00](a1, a2, a2, a3);
  v17 = &__s[-v16 - 8];
  cchmac_init_internal(v15, &__s[-v16 - 8], v18, v19);
  __memcpy_chk();
  v20 = *a1;
  v21 = a7 / *a1;
  v22 = a7 % *a1;
  if (*a1 <= a7)
  {
    v23 = 1;
    do
    {
      F(a1, v17, __s, a4, a5, a6, v23++, v20, a8);
      a8 += v20;
    }

    while (v23 <= v21);
  }

  else
  {
    LODWORD(v23) = 1;
  }

  if (v22)
  {
    F(a1, v17, __s, a4, a5, a6, v23, v22, a8);
  }

  cc_clear(((a1[1] + a1[2] + 19) & 0xFFFFFFFFFFFFFFF8) + a1[1], v17);
  cc_clear((a1[1] + 7) & 0xFFFFFFFFFFFFFFF8, __s);
  return 0;
}

uint64_t ccec_generate_key_legacy(uint64_t *a1, uint64_t (**a2)(void, size_t, void *), uint64_t **a3)
{
  v21 = timingsafe_enable_if_supported();
  v6 = *a1;
  memset(v20, 0, sizeof(v20));
  v19[0] = ccsha256_di();
  v19[1] = 0;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  ccdrbg_factory_nisthmac(v17, v19);
  v7 = 27 * v6;
  if (27 * v6 <= (49 * v6))
  {
    v7 = 49 * v6;
  }

  v8 = v7 + v6;
  v14[0] = cc_malloc_clear((*&v17[0] + 8 * (v7 + v6) + 7) & 0xFFFFFFFFFFFFFFF8);
  v14[1] = v8 + ((*&v17[0] + 7) >> 3);
  v14[2] = 0;
  v15 = cc_ws_alloc;
  v16 = cc_ws_free;
  if (v14[0])
  {
    key_internal_legacy_ws = ccec_generate_key_internal_legacy_ws(v14, a1, a2, a3);
    if (key_internal_legacy_ws || (v10 = v15(v14, (*&v17[0] + 7) >> 3), v11 = v15(v14, v6), key_internal_legacy_ws = (*a2)(a2, 8 * v6, v11), key_internal_legacy_ws) || (key_internal_legacy_ws = ccdrbg_init_internal(v17), key_internal_legacy_ws) || (key_internal_legacy_ws = ccrng_drbg_init_withdrbg(v20, v17, v10), key_internal_legacy_ws))
    {
      v12 = key_internal_legacy_ws;
    }

    else if (ccec_pairwise_consistency_check_ws(v14, a3, v20))
    {
      v12 = 4294967278;
    }

    else
    {
      ccdrbg_done(v17, v10);
      v12 = 0;
    }

    v16(v14);
  }

  else
  {
    v12 = 4294967283;
  }

  cc_disable_dit_with_sb(&v21);
  return v12;
}

void *ccdrbg_factory_nisthmac(void *result, uint64_t a2)
{
  *result = 160;
  result[1] = init_1;
  result[3] = generate_5;
  result[2] = reseed_0;
  result[4] = done_0;
  result[5] = a2;
  result[6] = must_reseed_0;
  return result;
}

uint64_t ccec_generate_key_internal_legacy_ws(uint64_t a1, uint64_t *a2, uint64_t (**a3)(void, size_t, void *), uint64_t **a4)
{
  v8 = *a2;
  *a4 = a2;
  v9 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, v8);
  v11 = 8 * v8;
  result = (*a3)(a3, v11, v10);
  if (!result)
  {
    result = ccec_generate_scalar_legacy_ws(a1, a2, v11, v10, &a4[3 * **a4 + 2]);
    if (!result)
    {
      result = ccec_make_pub_from_priv_ws(a1, a2, 0, &a4[3 * **a4 + 2], 0, a4);
    }
  }

  *(a1 + 16) = v9;
  return result;
}

uint64_t ccrng_pbkdf2_prng_generate(uint64_t a1, size_t __n, void *__dst)
{
  v3 = *(a1 + 8);
  if (v3 < __n)
  {
    return 4294967286;
  }

  memcpy(__dst, (a1 - v3 + 4112), __n);
  result = 0;
  *(a1 + 8) -= __n;
  return result;
}

uint64_t ccec_generate_scalar_legacy_ws(uint64_t a1, uint64_t *a2, size_t a3, void *__src, void *__dst)
{
  v7 = a2 + 4;
  v6 = *a2;
  v8 = 8 * *a2;
  if (v8 > a3)
  {
    return 4294967276;
  }

  v12 = &v7[5 * v6];
  memcpy(__dst, __src, v8);
  v13 = cczp_bitlen(&v7[5 * *a2]);
  if ((v13 & 0x3F) != 0)
  {
    *(__dst + v6 - 1) &= 0xFFFFFFFFFFFFFFFFLL >> -(v13 & 0x3F);
  }

  v14 = *(a1 + 16);
  v15 = (*(a1 + 24))(a1, v6);
  v16 = cczp_prime(v12);
  v17 = ccn_sub_ws(a1, v6, v15, __dst, v16);
  ccn_mux(v6, !v17, __dst, v15, __dst);
  result = 0;
  *(a1 + 16) = v14;
  return result;
}

uint64_t ccrng_drbg_init_withdrbg(uint64_t (**a1)(uint64_t a1, uint64_t a2, uint64_t a3), uint64_t (*a2)(uint64_t a1, uint64_t a2, uint64_t a3), uint64_t (*a3)(uint64_t a1, uint64_t a2, uint64_t a3))
{
  *a1 = generate_2;
  a1[1] = a2;
  a1[2] = a3;
  return 0;
}

uint64_t done(char *__s)
{
  cc_clear(0x20uLL, __s);
  result = cc_clear(0x10uLL, __s + 32);
  *(__s + 6) = -1;
  return result;
}

uint64_t done_0(void *a1)
{
  cc_clear(0x40uLL, a1 + 1);
  result = cc_clear(0x40uLL, a1 + 9);
  a1[17] = -1;
  return result;
}

void ccec_sign_internal_ws_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = cc_log_default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = 134217984;
    v4 = a1;
    _os_log_fault_impl(&dword_1DF062000, v2, OS_LOG_TYPE_FAULT, "Digest should be at least 128 bits long: argument digest_len = %lu", &v3, 0xCu);
  }
}

uint64_t ccwrap_auth_decrypt(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, size_t *a5, char *a6)
{
  v14 = timingsafe_enable_if_supported();
  v15 = 0xA6A6A6A6A6A6A6A6;
  v12 = ccwrap_auth_decrypt_withiv_internal(a1, a2, a3, a4, a5, a6, &v15);
  cc_disable_dit_with_sb(&v14);
  return v12;
}

uint64_t AccelerateCrypto_SHA3_keccak(uint64_t *a1)
{
  result = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v11 = a1[9];
  v12 = a1[10];
  v13 = a1[11];
  v14 = a1[12];
  v15 = a1[13];
  v16 = a1[14];
  v17 = a1[15];
  v18 = a1[16];
  v19 = a1[17];
  v21 = a1[18];
  v20 = a1[19];
  v22 = a1[20];
  v23 = a1[21];
  v24 = a1[22];
  v25 = a1[23];
  v26 = a1[24];
  v69 = a1;
  v70 = 0;
  v77 = &unk_1DF0F0C80;
  do
  {
    v71 = result;
    v72 = v3;
    v74 = v4;
    v75 = v5;
    v76 = v6;
    v27 = result ^ v7 ^ v12 ^ v17 ^ v22;
    v28 = v3 ^ v8 ^ v13 ^ v18 ^ v23;
    v29 = v4 ^ v9 ^ v14 ^ v19 ^ v24;
    v30 = v5 ^ v10 ^ v15 ^ v21 ^ v25;
    v31 = v6 ^ v11 ^ v16 ^ v20 ^ v26;
    v32 = v31 ^ __ROR8__(v28, 63);
    v33 = v27 ^ __ROR8__(v29, 63);
    v34 = v28 ^ __ROR8__(v30, 63);
    v35 = v29 ^ __ROR8__(v31, 63);
    v36 = v30 ^ __ROR8__(v27, 63);
    v73 = __ROR8__(v72 ^ v33, 63);
    v37 = __ROR8__(v8 ^ v33, 20);
    v38 = __ROR8__(v11 ^ v36, 44);
    v39 = __ROR8__(v24 ^ v34, 3);
    v40 = __ROR8__(v16 ^ v36, 25);
    v41 = __ROR8__(v22 ^ v32, 46);
    v42 = __ROR8__(v74 ^ v34, 2);
    v43 = __ROR8__(v14 ^ v34, 21);
    v44 = __ROR8__(v15 ^ v35, 39);
    v45 = __ROR8__(v20 ^ v36, 56);
    v46 = __ROR8__(v25 ^ v35, 8);
    v47 = __ROR8__(v17 ^ v32, 23);
    v48 = __ROR8__(v76 ^ v36, 37);
    v49 = __ROR8__(v26 ^ v36, 50);
    v50 = __ROR8__(v23 ^ v33, 62);
    v51 = __ROR8__(v10 ^ v35, 9);
    v52 = __ROR8__(v18 ^ v33, 19);
    v53 = __ROR8__(v7 ^ v32, 28);
    v54 = __ROR8__(v75 ^ v35, 36);
    v55 = __ROR8__(v21 ^ v35, 43);
    v56 = __ROR8__(v19 ^ v34, 49);
    v57 = __ROR8__(v13 ^ v33, 54);
    v58 = __ROR8__(v9 ^ v34, 58);
    v59 = __ROR8__(v12 ^ v32, 61);
    v60 = v37 & ~(v71 ^ v32);
    v61 = v71 ^ v32 ^ v43 & ~v37;
    v3 = v37 ^ v55 & ~v43;
    v4 = v43 ^ v49 & ~v55;
    v5 = v55 ^ (v71 ^ v32) & ~v49;
    v6 = v49 ^ v60;
    result = v61 ^ *v77++;
    v62 = v54 & ~v39;
    v63 = v38 & ~v54;
    v7 = v54 ^ v59 & ~v38;
    v8 = v38 ^ v52 & ~v59;
    v9 = v59 ^ v39 & ~v52;
    v10 = v52 ^ v62;
    v11 = v39 ^ v63;
    v64 = v58 & ~v73;
    v12 = v73 ^ v44 & ~v58;
    v13 = v58 ^ v45 & ~v44;
    v14 = v44 ^ v41 & ~v45;
    v15 = v45 ^ v73 & ~v41;
    v16 = v41 ^ v64;
    v65 = v48 & ~v46;
    v66 = v53 & ~v48;
    v17 = v48 ^ v57 & ~v53;
    v18 = v53 ^ v56 & ~v57;
    v19 = v57 ^ v46 & ~v56;
    v21 = v56 ^ v65;
    v20 = v46 ^ v66;
    v67 = v42 & ~v50;
    v68 = v51 & ~v42;
    v22 = v42 ^ v40 & ~v51;
    v23 = v51 ^ v47 & ~v40;
    v24 = v40 ^ v50 & ~v47;
    v25 = v47 ^ v67;
    v26 = v50 ^ v68;
    v70 += 8;
  }

  while (v70 != 192);
  *v69 = result;
  v69[1] = v3;
  v69[2] = v4;
  v69[3] = v5;
  v69[4] = v6;
  v69[5] = v7;
  v69[6] = v8;
  v69[7] = v9;
  v69[8] = v10;
  v69[9] = v11;
  v69[10] = v12;
  v69[11] = v13;
  v69[12] = v14;
  v69[13] = v15;
  v69[14] = v16;
  v69[15] = v17;
  v69[16] = v18;
  v69[17] = v19;
  v69[18] = v21;
  v69[19] = v20;
  v69[20] = v22;
  v69[21] = v23;
  v69[22] = v24;
  v69[23] = v25;
  v69[24] = v26;
  return result;
}

uint64_t ccaes_cfb_decrypt_vng_vector(uint64_t result, int8x16_t *a2, uint64_t a3, int8x16_t *a4, int8x16_t *a5)
{
  if (a3)
  {
    v5 = *(result + 240);
    if (v5 == 160 || v5 == 192 || v5 == 224)
    {
      v6 = *a2;
      v7 = a3 < 4;
      for (i = a3 - 4; !v7; i -= 4)
      {
        _Q16 = *result;
        v9 = (result + 16);
        v11 = v5 - 16;
        v12 = *a4;
        v13 = a4[1];
        v14 = a4[2];
        v15 = a4[3];
        a4 += 4;
        v16 = v12;
        v17 = v13;
        v18 = v14;
        do
        {
          __asm
          {
            AESE            V0.16B, V16.16B
            AESMC           V0.16B, V0.16B
            AESE            V1.16B, V16.16B
            AESMC           V1.16B, V1.16B
            AESE            V2.16B, V16.16B
            AESMC           V2.16B, V2.16B
            AESE            V3.16B, V16.16B
            AESMC           V3.16B, V3.16B
          }

          _Q16 = *v9++;
          v7 = v11 <= 16;
          v11 -= 16;
        }

        while (!v7);
        v31 = *v9;
        result = v9->i64 - v5;
        __asm
        {
          AESE            V0.16B, V16.16B
          AESE            V1.16B, V16.16B
          AESE            V2.16B, V16.16B
          AESE            V3.16B, V16.16B
        }

        *a5 = veorq_s8(veorq_s8(_Q0, v31), v16);
        a5[1] = veorq_s8(veorq_s8(_Q1, v31), v17);
        a5[2] = veorq_s8(veorq_s8(_Q2, v31), v18);
        a5[3] = veorq_s8(veorq_s8(_Q3, v31), v15);
        a5 += 4;
        v6 = v15;
        v7 = i < 4;
      }

      v7 = i <= -4;
      for (j = i + 4; !v7; --j)
      {
        _Q16 = *result;
        v37 = (result + 16);
        v39 = v5 - 16;
        v40 = *a4++;
        v41 = v40;
        do
        {
          __asm
          {
            AESE            V0.16B, V16.16B
            AESMC           V0.16B, V0.16B
          }

          _Q16 = *v37++;
          v7 = v39 <= 16;
          v39 -= 16;
        }

        while (!v7);
        v44 = *v37;
        result = v37->i64 - v5;
        __asm { AESE            V0.16B, V16.16B }

        *a5++ = veorq_s8(veorq_s8(_Q0, v44), v41);
        v6 = v41;
        v7 = j <= 1;
      }

      result = 0;
      *a2 = v6;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

uint64_t ccmlkem_ntt_inverse(uint64_t a1)
{
  v1.i64[0] = 0x13AFB800000D01;
  v2 = vdupq_n_s32(0x6808u);
  v3 = 124;
  v4 = 16;
  do
  {
    v16 = vld2q_f32(a1);
    v6 = ccmlkem_zetas[v3 / 4];
    v7 = vzip1q_s32(v6, v6);
    v8 = vzip2q_s32(v6, v6);
    v1.i64[1] = *(ccmlkem_zetas + 2 * v3);
    v9 = vaddq_s16(v16.val[0], v16.val[1]);
    v10 = vsubq_s16(v16.val[1], v16.val[0]);
    v16.val[1] = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_s32(vmovl_s16(*v10.i8), vextq_s8(v8, v8, 8uLL)), 0x10uLL), 3329), v2), vmulq_n_s32(vshrq_n_s32(vmulq_s32(vmovl_high_s16(v10), vextq_s8(v7, v7, 8uLL)), 0x10uLL), 3329), v2);
    v11 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v9.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v2), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v9), 0x13AFB800000D01, 1), 0x10uLL), 3329), v2);
    v16.val[0] = vtrn1q_s32(v11, v16.val[1]);
    v16.val[1] = vtrn2q_s32(v11, v16.val[1]);
    v12 = vaddq_s16(v16.val[0], v16.val[1]);
    v13 = vsubq_s16(v16.val[1], v16.val[0]);
    v16.val[0] = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v12.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v2), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v12), 0x13AFB800000D01, 1), 0x10uLL), 3329), v2);
    v16.val[1] = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_s16(*v13.i8), v1, 3), 0x10uLL), 3329), v2), vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_high_s16(v13), v1, 2), 0x10uLL), 3329), v2);
    *a1 = vzip1q_s64(v16.val[0], v16.val[1]);
    *(a1 + 16) = vzip2q_s64(v16.val[0], v16.val[1]);
    a1 += 32;
    v3 -= 4;
    v14 = __OFSUB__(v4--, 1);
  }

  while (!((v4 < 0) ^ v14 | (v4 == 0)));
  return ccmlkem_ntt_inverse_2();
}

uint64_t ccmlkem_ntt_inverse_2(int16x8_t *a1)
{
  v1 = vdupq_n_s32(0x6808u);
  v2 = 0x18u;
  v3 = 2;
  do
  {
    v5 = &ccmlkem_zetas[v2 / 4];
    v6 = v5[1];
    v7 = a1[1];
    v8 = a1[2];
    v9 = a1[3];
    v10 = a1[4];
    v11 = a1[5];
    v12 = a1[6];
    v13 = a1[7];
    v14 = a1[8];
    v15 = a1[9];
    v16 = a1[10];
    v17 = a1[11];
    v18 = a1[12];
    v19 = a1[13];
    v20 = a1[14];
    v21 = a1[15];
    v22 = vaddq_s16(*a1, v7);
    v23 = vsubq_s16(v7, *a1);
    v24 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v22.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v22), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1);
    v25 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_s16(*v23.i8), v6, 3), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_high_s16(v23), v6, 3), 0x10uLL), 3329), v1);
    v26 = vaddq_s16(v8, v9);
    v27 = vsubq_s16(v9, v8);
    v28 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v26.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v26), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1);
    v29 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_s16(*v27.i8), v6, 2), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_high_s16(v27), v6, 2), 0x10uLL), 3329), v1);
    v30 = vaddq_s16(v10, v11);
    v31 = vsubq_s16(v11, v10);
    v32 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v30.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v30), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1);
    v33 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v31.i8), *v6.i8, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v31), *v6.i8, 1), 0x10uLL), 3329), v1);
    v34 = vaddq_s16(v12, v13);
    v35 = vsubq_s16(v13, v12);
    v36 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v34.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v34), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1);
    v37 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_s16(*v35.i8), v6.i32[0]), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_high_s16(v35), v6.i32[0]), 0x10uLL), 3329), v1);
    v38 = vaddq_s16(v14, v15);
    v39 = vsubq_s16(v15, v14);
    v40 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v38.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v38), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1);
    v41 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_s16(*v39.i8), *v5, 3), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_high_s16(v39), *v5, 3), 0x10uLL), 3329), v1);
    v42 = vaddq_s16(v16, v17);
    v43 = vsubq_s16(v17, v16);
    v44 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v42.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v42), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1);
    v45 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_s16(*v43.i8), *v5, 2), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_high_s16(v43), *v5, 2), 0x10uLL), 3329), v1);
    v46 = vaddq_s16(v18, v19);
    v47 = vsubq_s16(v19, v18);
    v48 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v46.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v46), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1);
    v49 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v47.i8), *v5, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v47), *v5, 1), 0x10uLL), 3329), v1);
    v50 = vaddq_s16(v20, v21);
    v51 = vsubq_s16(v21, v20);
    v52 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v50.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v50), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1);
    v53 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_s16(*v51.i8), *v5), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_high_s16(v51), *v5), 0x10uLL), 3329), v1);
    v54 = ccmlkem_zetas[v2 / 8];
    v55 = vaddq_s16(v24, v28);
    v56 = vsubq_s16(v28, v24);
    v57 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v55.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v55), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1);
    v58 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_s16(*v56.i8), v54, 3), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_high_s16(v56), v54, 3), 0x10uLL), 3329), v1);
    v59 = vaddq_s16(v25, v29);
    v60 = vsubq_s16(v29, v25);
    v61 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v59.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v59), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1);
    v62 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_s16(*v60.i8), v54, 3), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_high_s16(v60), v54, 3), 0x10uLL), 3329), v1);
    v63 = vaddq_s16(v32, v36);
    v64 = vsubq_s16(v36, v32);
    v65 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v63.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v63), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1);
    v66 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_s16(*v64.i8), v54, 2), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_high_s16(v64), v54, 2), 0x10uLL), 3329), v1);
    v67 = vaddq_s16(v33, v37);
    v68 = vsubq_s16(v37, v33);
    v69 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v67.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v67), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1);
    v70 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_s16(*v68.i8), v54, 2), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_laneq_s32(vmovl_high_s16(v68), v54, 2), 0x10uLL), 3329), v1);
    v71 = vaddq_s16(v40, v44);
    v72 = vsubq_s16(v44, v40);
    v73 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v71.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v71), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1);
    v74 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v72.i8), *v54.i8, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v72), *v54.i8, 1), 0x10uLL), 3329), v1);
    v75 = vaddq_s16(v41, v45);
    v76 = vsubq_s16(v45, v41);
    v77 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v75.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v75), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1);
    v78 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v76.i8), *v54.i8, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v76), *v54.i8, 1), 0x10uLL), 3329), v1);
    v79 = vaddq_s16(v48, v52);
    v80 = vsubq_s16(v52, v48);
    v81 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v79.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v79), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1);
    v82 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_s16(*v80.i8), v54.i32[0]), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_high_s16(v80), v54.i32[0]), 0x10uLL), 3329), v1);
    v83 = vaddq_s16(v49, v53);
    v84 = vsubq_s16(v53, v49);
    v85 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v83.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v83), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1);
    v86 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_s16(*v84.i8), v54.i32[0]), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_high_s16(v84), v54.i32[0]), 0x10uLL), 3329), v1);
    v54.i64[0] = *(ccmlkem_zetas + v2);
    v87 = vaddq_s16(v57, v65);
    v88 = vsubq_s16(v65, v57);
    v89 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v87.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v87), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1);
    v90 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v88.i8), *v54.i8, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v88), *v54.i8, 1), 0x10uLL), 3329), v1);
    v91 = vaddq_s16(v61, v69);
    v92 = vsubq_s16(v69, v61);
    v93 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v91.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v91), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1);
    v94 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v92.i8), *v54.i8, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v92), *v54.i8, 1), 0x10uLL), 3329), v1);
    v95 = vaddq_s16(v58, v66);
    v96 = vsubq_s16(v66, v58);
    v97 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v95.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v95), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1);
    v98 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v96.i8), *v54.i8, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v96), *v54.i8, 1), 0x10uLL), 3329), v1);
    v99 = vaddq_s16(v62, v70);
    v100 = vsubq_s16(v70, v62);
    v101 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v99.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v99), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1);
    v102 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v100.i8), *v54.i8, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v100), *v54.i8, 1), 0x10uLL), 3329), v1);
    v103 = vaddq_s16(v73, v81);
    v104 = vsubq_s16(v81, v73);
    v105 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v103.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v103), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1);
    v106 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_s16(*v104.i8), v54.i32[0]), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_high_s16(v104), v54.i32[0]), 0x10uLL), 3329), v1);
    v107 = vaddq_s16(v77, v85);
    v108 = vsubq_s16(v85, v77);
    v109 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v107.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v107), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1);
    v110 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_s16(*v108.i8), v54.i32[0]), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_high_s16(v108), v54.i32[0]), 0x10uLL), 3329), v1);
    v111 = vaddq_s16(v74, v82);
    v112 = vsubq_s16(v82, v74);
    v113 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v111.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v111), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1);
    v114 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_s16(*v112.i8), v54.i32[0]), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_high_s16(v112), v54.i32[0]), 0x10uLL), 3329), v1);
    v115 = vaddq_s16(v78, v86);
    v116 = vsubq_s16(v86, v78);
    v117 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v115.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v115), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1);
    v118 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_s16(*v116.i8), v54.i32[0]), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_high_s16(v116), v54.i32[0]), 0x10uLL), 3329), v1);
    v119 = (ccmlkem_zetas + (v2 >> 1));
    v2 -= 8;
    v120 = vaddq_s16(v89, v105);
    v121 = vsubq_s16(v105, v89);
    v122 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v120.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v120), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1);
    v123 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_s16(*v121.i8), *v119), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_high_s16(v121), *v119), 0x10uLL), 3329), v1);
    v124 = vaddq_s16(v93, v109);
    v125 = vsubq_s16(v109, v93);
    v126 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v124.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v124), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1);
    v127 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_s16(*v125.i8), *v119), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_high_s16(v125), *v119), 0x10uLL), 3329), v1);
    v128 = vaddq_s16(v97, v113);
    v129 = vsubq_s16(v113, v97);
    v130 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v128.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v128), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1);
    v131 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_s16(*v129.i8), *v119), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_high_s16(v129), *v119), 0x10uLL), 3329), v1);
    v132 = vaddq_s16(v101, v117);
    v133 = vsubq_s16(v117, v101);
    v134 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v132.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v132), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1);
    v135 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_s16(*v133.i8), *v119), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_high_s16(v133), *v119), 0x10uLL), 3329), v1);
    v136 = vaddq_s16(v90, v106);
    v137 = vsubq_s16(v106, v90);
    v138 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v136.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v136), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1);
    v139 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_s16(*v137.i8), *v119), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_high_s16(v137), *v119), 0x10uLL), 3329), v1);
    v140 = vaddq_s16(v94, v110);
    v141 = vsubq_s16(v110, v94);
    v142 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v140.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v140), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1);
    v143 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_s16(*v141.i8), *v119), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_high_s16(v141), *v119), 0x10uLL), 3329), v1);
    v144 = vaddq_s16(v98, v114);
    v145 = vsubq_s16(v114, v98);
    v146 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v144.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v144), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1);
    v147 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_s16(*v145.i8), *v119), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_high_s16(v145), *v119), 0x10uLL), 3329), v1);
    v148 = vaddq_s16(v102, v118);
    v149 = vsubq_s16(v118, v102);
    v150 = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_s16(*v149.i8), *v119), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_n_s32(vmovl_high_s16(v149), *v119), 0x10uLL), 3329), v1);
    *a1 = v122;
    a1[1] = v126;
    a1 += 16;
    a1[-14] = v130;
    a1[-13] = v134;
    a1[-12] = v138;
    a1[-11] = v142;
    a1[-10] = v146;
    a1[-9] = vaddhn_high_s32(vaddhn_s32(vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_s16(*v148.i8), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1), vmulq_n_s32(vshrq_n_s32(vmulq_lane_s32(vmovl_high_s16(v148), 0x13AFB800000D01, 1), 0x10uLL), 3329), v1);
    a1[-8] = v123;
    a1[-7] = v127;
    a1[-6] = v131;
    a1[-5] = v135;
    a1[-4] = v139;
    a1[-3] = v143;
    a1[-2] = v147;
    a1[-1] = v150;
    v151 = __OFSUB__(v3--, 1);
  }

  while (!((v3 < 0) ^ v151 | (v3 == 0)));
  return ccmlkem_ntt_inverse_3();
}

int16x8_t *ccmlkem_ntt_inverse_3(int16x8_t *result)
{
  v2 = result + 16;
  v3 = 15;
  v1.i64[0] = 0x94921C25912FE89FLL;
  v1.i32[2] = 3329;
  v4 = result[16];
  v5 = vdupq_n_s32(0x6808u);
  v6 = vaddq_s16(v4, *result);
  v7 = vsubq_s16(v4, *result);
  v8 = vmovl_s16(*v6.i8);
  v9 = vmovl_high_s16(v6);
  v10 = vmovl_s16(*v7.i8);
  v11 = vmovl_high_s16(v7);
  do
  {
    v12 = v2[-15];
    v13 = v2[1];
    v14 = vaddhn_high_s32(vaddhn_s32(vmulq_laneq_s32(vshrq_n_s32(vmulq_n_s32(v8, v1.i32[0]), 0x10uLL), v1, 2), v5), vmulq_laneq_s32(vshrq_n_s32(vmulq_n_s32(v9, v1.i32[0]), 0x10uLL), v1, 2), v5);
    v15 = vaddhn_high_s32(vaddhn_s32(vmulq_laneq_s32(vshrq_n_s32(vmulq_lane_s32(v10, *v1.i8, 1), 0x10uLL), v1, 2), v5), vmulq_laneq_s32(vshrq_n_s32(vmulq_lane_s32(v11, *v1.i8, 1), 0x10uLL), v1, 2), v5);
    v16 = vaddq_s16(v13, v12);
    v17 = vsubq_s16(v13, v12);
    v2[-16] = v14;
    v8 = vmovl_s16(*v16.i8);
    v9 = vmovl_high_s16(v16);
    *v2++ = v15;
    v10 = vmovl_s16(*v17.i8);
    v11 = vmovl_high_s16(v17);
  }

  while (v3-- > 1);
  v2[-16] = vaddhn_high_s32(vaddhn_s32(vmulq_laneq_s32(vshrq_n_s32(vmulq_n_s32(v8, v1.i32[0]), 0x10uLL), v1, 2), v5), vmulq_laneq_s32(vshrq_n_s32(vmulq_n_s32(v9, v1.i32[0]), 0x10uLL), v1, 2), v5);
  *v2 = vaddhn_high_s32(vaddhn_s32(vmulq_laneq_s32(vshrq_n_s32(vmulq_lane_s32(v10, *v1.i8, 1), 0x10uLL), v1, 2), v5), vmulq_laneq_s32(vshrq_n_s32(vmulq_lane_s32(v11, *v1.i8, 1), 0x10uLL), v1, 2), v5);
  return result;
}

uint64_t ccmlkem_poly_compress_d1(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = vdupq_n_s32(0x13AFB7u);
  do
  {
    v4 = *(a2 + 16 * v2);
    v5.i64[0] = 0x4000000040000000;
    v5.i64[1] = 0x4000000040000000;
    v6 = vmlaq_s32(v5, vmovl_s16(*v4.i8), v3);
    v7.i64[0] = 0x4000000040000000;
    v7.i64[1] = 0x4000000040000000;
    v8 = vshrq_n_u32(vmlaq_s32(v7, vmovl_high_s16(v4), v3), 0x1FuLL);
    v9 = vshrq_n_u32(v6, 0x1FuLL);
    v10 = vuzp1q_s32(v9, v8);
    v11 = vuzp2q_s32(v9, v8);
    v12 = vorrq_s8(vaddq_s32(v11, v11), v10);
    v9.i64[0] = vextq_s8(v12, v12, 8uLL).u64[0];
    *v12.i8 = vorr_s8(vshl_n_s32(vzip2_s32(*v12.i8, *v9.i8), 2uLL), vzip1_s32(*v12.i8, *v9.i8));
    *(result + v2++) = v12.i8[0] | (16 * v12.i8[4]);
  }

  while (v2 != 32);
  return result;
}

uint64_t ccmlkem_poly_compress_d4(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = vdupq_n_s32(0x13AFB7u);
  do
  {
    v4 = (a2 + (v2 << 6));
    v15 = vld2q_s16(v4);
    v4 += 16;
    v16 = vld2q_s16(v4);
    v5.i64[0] = 0x800000008000000;
    v5.i64[1] = 0x800000008000000;
    v6 = vmlaq_s32(v5, vmovl_s16(*v15.val[0].i8), v3);
    v7.i64[0] = 0x800000008000000;
    v7.i64[1] = 0x800000008000000;
    v8 = vmlaq_s32(v7, vmovl_high_s16(v15.val[0]), v3);
    v9.i64[0] = 0x800000008000000;
    v9.i64[1] = 0x800000008000000;
    v10 = vmlaq_s32(v9, vmovl_s16(*v16.val[0].i8), v3);
    v11.i64[0] = 0x800000008000000;
    v11.i64[1] = 0x800000008000000;
    v12 = vmlaq_s32(v11, vmovl_high_s16(v16.val[0]), v3);
    v13 = vmovl_high_s16(v16.val[1]);
    v16.val[0] = vmovl_s16(*v16.val[1].i8);
    v16.val[1] = vmovl_high_s16(v15.val[1]);
    v15.val[0] = vmovl_s16(*v15.val[1].i8);
    v15.val[1].i64[0] = 0x800000008000000;
    v15.val[1].i64[1] = 0x800000008000000;
    v15.val[1] = vmlaq_s32(v15.val[1], v13, v3);
    v13.i64[0] = 0x800000008000000;
    v13.i64[1] = 0x800000008000000;
    v14 = vmlaq_s32(v13, v16.val[0], v3);
    v16.val[0].i64[0] = 0x800000008000000;
    v16.val[0].i64[1] = 0x800000008000000;
    v16.val[0] = vmlaq_s32(v16.val[0], v16.val[1], v3);
    v16.val[1].i64[0] = 0x800000008000000;
    v16.val[1].i64[1] = 0x800000008000000;
    *(result + 16 * v2++) = vuzp1q_s8(vuzp1q_s16(vsriq_n_s32(vshrq_n_u32(vmlaq_s32(v16.val[1], v15.val[0], v3), 0x18uLL), v6, 0x1CuLL), vsriq_n_s32(vshrq_n_u32(v16.val[0], 0x18uLL), v8, 0x1CuLL)), vuzp1q_s16(vsriq_n_s32(vshrq_n_u32(v14, 0x18uLL), v10, 0x1CuLL), vsriq_n_s32(vshrq_n_u32(v15.val[1], 0x18uLL), v12, 0x1CuLL)));
  }

  while (v2 != 8);
  return result;
}

uint64_t ccmlkem_poly_compress_d5(uint64_t result, int16x8_t *a2)
{
  v2 = 0;
  v3 = vdupq_n_s32(0x13AFB7u);
  do
  {
    v4 = *a2++;
    v5.i64[0] = 0x400000004000000;
    v5.i64[1] = 0x400000004000000;
    v6.i64[0] = 0x400000004000000;
    v6.i64[1] = 0x400000004000000;
    v7 = vshrq_n_u32(vmlaq_s32(v6, vmovl_high_s16(v4), v3), 0x1BuLL);
    v8 = vshrq_n_u32(vmlaq_s32(v5, vmovl_s16(*v4.i8), v3), 0x1BuLL);
    v9 = vorrq_s8(vshlq_n_s32(vuzp2q_s32(v8, v7), 5uLL), vuzp1q_s32(v8, v7));
    v8.i64[0] = vextq_s8(v9, v9, 8uLL).u64[0];
    *v9.i8 = vorr_s8(vshl_n_s32(vzip2_s32(*v9.i8, *v8.i8), 0xAuLL), vzip1_s32(*v9.i8, *v8.i8));
    v10 = result + v2;
    *v10 = v9.i32[0] | (v9.i32[1] << 20);
    *(v10 + 4) = v9.u32[1] >> 12;
    v2 += 5;
  }

  while (v2 != 160);
  return result;
}

uint64_t ccmlkem_poly_compress_d10(uint64_t result, int16x8_t *a2)
{
  v2 = 0;
  v3 = vdupq_n_s32(0x13AFB7u);
  do
  {
    v4 = *a2++;
    v5.i64[0] = 0x20000000200000;
    v5.i64[1] = 0x20000000200000;
    v6.i64[0] = 0x20000000200000;
    v6.i64[1] = 0x20000000200000;
    v7 = vshrq_n_u32(vmlaq_s32(v6, vmovl_high_s16(v4), v3), 0x16uLL);
    v8 = vshrq_n_u32(vmlaq_s32(v5, vmovl_s16(*v4.i8), v3), 0x16uLL);
    v9 = vorrq_s8(vshlq_n_s32(vuzp2q_s32(v8, v7), 0xAuLL), vuzp1q_s32(v8, v7));
    v8.i64[0] = vextq_s8(v9, v9, 8uLL).u64[0];
    *v5.i8 = vzip1_s32(*v9.i8, *v8.i8);
    v10.i64[0] = v5.u32[0];
    v10.i64[1] = v5.u32[1];
    v11 = vorrq_s8(vshll_n_u32(vzip2_s32(*v9.i8, *v8.i8), 0x14uLL), v10);
    v12 = result + v2;
    *v12 = v11.i64[0] | (v11.i64[1] << 40);
    *(v12 + 8) = v11.i64[1] >> 24;
    v2 += 10;
  }

  while (v2 != 320);
  return result;
}

uint64_t ccmlkem_poly_compress_d11(uint64_t result, int16x8_t *a2)
{
  v2 = 0;
  v3 = vdupq_n_s32(0x13AFB7u);
  do
  {
    v4 = *a2++;
    v5.i64[0] = 0x10000000100000;
    v5.i64[1] = 0x10000000100000;
    v6.i64[0] = 0x10000000100000;
    v6.i64[1] = 0x10000000100000;
    v7 = vshrq_n_u32(vmlaq_s32(v6, vmovl_high_s16(v4), v3), 0x15uLL);
    v8 = vshrq_n_u32(vmlaq_s32(v5, vmovl_s16(*v4.i8), v3), 0x15uLL);
    v9 = vorrq_s8(vshlq_n_s32(vuzp2q_s32(v8, v7), 0xBuLL), vuzp1q_s32(v8, v7));
    v8.i64[0] = vextq_s8(v9, v9, 8uLL).u64[0];
    *v5.i8 = vzip1_s32(*v9.i8, *v8.i8);
    v10.i64[0] = v5.u32[0];
    v10.i64[1] = v5.u32[1];
    v11 = result + v2;
    v12 = vorrq_s8(vshll_n_u32(vzip2_s32(*v9.i8, *v8.i8), 0x16uLL), v10);
    *v11 = v12.i64[0] | (v12.i64[1] << 44);
    *(v11 + 8) = v12.i64[1] >> 20;
    *(v11 + 10) = v12.i64[1] >> 36;
    v2 += 11;
  }

  while (v2 != 352);
  return result;
}

int8x16_t *ccmlkem_poly_decompress_d1(int8x16_t *result, const char *a2)
{
  v2 = vdupq_n_s16(0x681u);
  v3 = 32;
  do
  {
    v4 = vld1q_dup_s8(a2++);
    *result++ = vbicq_s8(v2, vceqzq_s16(vandq_s8(v4, xmmword_1DF0F2F70)));
  }

  while (v3-- > 1);
  return result;
}

uint64_t ccmlkem_poly_decompress_d4(uint64_t result, uint64_t a2, double a3, __n128 a4, int16x8_t a5)
{
  v5 = 0;
  v6 = vdupq_n_s16(0xD01u);
  do
  {
    a4.n128_u32[0] = *(a2 + 4 * v5);
    v7 = vmovl_u8(a4.n128_u64[0]);
    *a5.i8 = vshr_n_u16(*v7.i8, 4uLL);
    v8 = *&vzip1q_s16(v7, a5) & __PAIR128__(0xFF0FFF0FFF0FFF0FLL, 0xFF0FFF0FFF0FFF0FLL);
    v9.i64[0] = 0x8000800080008;
    v9.i64[1] = 0x8000800080008;
    a5 = vmlaq_s16(v9, v8, v6);
    a4 = vshrq_n_u16(a5, 4uLL);
    *(result + 16 * v5++) = a4;
  }

  while (v5 != 32);
  return result;
}

__n128 *ccmlkem_poly_decompress_d5(__n128 *result, unsigned __int32 *a2, double a3, double a4, int32x4_t a5, int32x4_t a6)
{
  v6 = 160;
  v7 = vdup_n_s16(0xD01u);
  do
  {
    v10 = *a2;
    v8 = (a2 + 1);
    v9 = v10;
    v11 = *v8;
    a2 = v8 + 1;
    a5.i32[0] = v9;
    a5.i32[1] = v11 >> 12;
    *a6.i8 = vshr_n_u32(*a5.i8, 0xAuLL);
    v12 = vmovn_s32(vzip1q_s32(a5, a6));
    v13 = vshr_n_u16(v12, 5uLL);
    v14 = vzip2_s16(v12, v13);
    v15 = vand_s8(vzip1_s16(v12, v13), 0x1F001F001F001FLL);
    a6 = vmull_u16(vand_s8(v14, 0x1F001F001F001FLL), v7);
    a5 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_u16(v15, v7), 5uLL), a6, 5uLL);
    *result++ = a5;
    v16 = v6 <= 5;
    v6 -= 5;
  }

  while (!v16);
  return result;
}

int16x8_t *ccmlkem_poly_decompress_d10(int16x8_t *result, uint64_t a2, double a3, double a4, uint32x4_t a5)
{
  v5 = 512;
  v6 = (a2 + 8);
  v7 = vdupq_n_s16(0xD01u);
  do
  {
    v8 = *(v6 - 1);
    v9 = *v6;
    v6 += 5;
    *(&v10 + 1) = v9;
    *&v10 = v8;
    v11.i64[0] = v8;
    v11.i64[1] = v10 >> 40;
    a5.i32[0] = v8;
    a5.i32[1] = v10 >> 40;
    *v11.i8 = vshrn_n_s64(v11, 0x14uLL);
    v12 = vzip1q_s32(a5, v11);
    *a5.i8 = vmovn_s32(v12);
    *v12.i8 = vshrn_n_s32(v12, 0xAuLL);
    v13 = *&vzip1q_s16(a5, v12) & __PAIR128__(0x3FF03FF03FF03FFLL, 0x3FF03FF03FF03FFLL);
    a5 = vmull_high_u16(v13, v7);
    *result++ = vrshrn_high_n_s32(vrshrn_n_s32(vmull_u16(*&v13, *v7.i8), 0xAuLL), a5, 0xAuLL);
    v14 = v5 <= 16;
    v5 -= 16;
  }

  while (!v14);
  return result;
}

int16x8_t *ccmlkem_poly_decompress_d11(int16x8_t *result, uint64_t a2, double a3, double a4, uint32x4_t a5)
{
  v5 = 512;
  v6 = (a2 + 10);
  v7 = vdupq_n_s16(0xD01u);
  do
  {
    v8 = *(v6 - 10);
    v9 = *(v6 - 1);
    v10 = *v6;
    v6 += 11;
    *(&v11 + 1) = v9;
    *&v11 = v8;
    v12.i64[0] = v8;
    v12.i64[1] = (v11 >> 44) | (v10 << 36);
    a5.i32[0] = v8;
    a5.i32[1] = v11 >> 44;
    *v12.i8 = vshrn_n_s64(v12, 0x16uLL);
    v13 = vzip1q_s32(a5, v12);
    *a5.i8 = vmovn_s32(v13);
    *v13.i8 = vshrn_n_s32(v13, 0xBuLL);
    v14 = *&vzip1q_s16(a5, v13) & __PAIR128__(0x7FF07FF07FF07FFLL, 0x7FF07FF07FF07FFLL);
    a5 = vmull_high_u16(v14, v7);
    *result++ = vrshrn_high_n_s32(vrshrn_n_s32(vmull_u16(*&v14, *v7.i8), 0xBuLL), a5, 0xBuLL);
    v15 = v5 <= 16;
    v5 -= 16;
  }

  while (!v15);
  return result;
}

int8x16_t *ccm128_encrypt(int8x16_t *result, int8x16_t *a2, int8x16_t *a3, int a4, int8x16_t *a5, int8x16_t *a6, unsigned int a7)
{
  v7 = *&qword_1DF081240[2 * a7];
  _Q16 = *a5;
  _Q17 = a5[1];
  _Q18 = a5[2];
  _Q19 = a5[3];
  v8 = a5 + 4;
  _Q20 = *v8;
  _Q21 = v8[1];
  _Q22 = v8[2];
  _Q23 = v8[3];
  v8 += 4;
  _Q24 = *v8;
  _Q25 = v8[1];
  v19 = v8[2];
  v20 = vqtbl1q_s8(*a6, *Lbswap_mask_1);
  do
  {
    v20 = vorrq_s8(vandq_s8(vaddq_s64(v20, *qword_1DF081240), v7), vbicq_s8(v20, v7));
    v21 = *result++;
    __asm
    {
      AESE            V3.16B, V16.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V16.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V17.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V17.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V18.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V18.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V19.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V19.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V20.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V20.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V21.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V21.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V22.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V22.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V23.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V23.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V24.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V24.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V25.16B
      AESE            V1.16B, V25.16B
    }

    v64 = veorq_s8(_Q1, v19);
    *a2++ = veorq_s8(v21, veorq_s8(_Q3, v19));
    _VF = __OFSUB__(a4--, 1);
  }

  while (!((a4 < 0) ^ _VF | (a4 == 0)));
  *a6 = vqtbl1q_s8(v20, *Lbswap_mask_1);
  *a3 = v64;
  return result;
}

int8x16_t *ccm192_encrypt(int8x16_t *result, int8x16_t *a2, int8x16_t *a3, int a4, int8x16_t *a5, int8x16_t *a6, unsigned int a7)
{
  v7 = *&qword_1DF081240[2 * a7];
  _Q16 = *a5;
  _Q17 = a5[1];
  _Q18 = a5[2];
  _Q19 = a5[3];
  v8 = a5 + 4;
  _Q20 = *v8;
  _Q21 = v8[1];
  _Q22 = v8[2];
  _Q23 = v8[3];
  v8 += 4;
  _Q24 = *v8;
  _Q25 = v8[1];
  _Q26 = v8[2];
  _Q27 = v8[3];
  v21 = v8[4];
  v22 = vqtbl1q_s8(*a6, *Lbswap_mask_1);
  do
  {
    v22 = vorrq_s8(vandq_s8(vaddq_s64(v22, *qword_1DF081240), v7), vbicq_s8(v22, v7));
    v23 = *result++;
    __asm
    {
      AESE            V3.16B, V16.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V16.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V17.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V17.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V18.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V18.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V19.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V19.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V20.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V20.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V21.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V21.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V22.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V22.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V23.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V23.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V24.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V24.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V25.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V25.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V26.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V26.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V27.16B
      AESE            V1.16B, V27.16B
    }

    v74 = veorq_s8(_Q1, v21);
    *a2++ = veorq_s8(v23, veorq_s8(_Q3, v21));
    _VF = __OFSUB__(a4--, 1);
  }

  while (!((a4 < 0) ^ _VF | (a4 == 0)));
  *a6 = vqtbl1q_s8(v22, *Lbswap_mask_1);
  *a3 = v74;
  return result;
}

int8x16_t *ccm256_encrypt(int8x16_t *result, int8x16_t *a2, int8x16_t *a3, int a4, int8x16_t *a5, int8x16_t *a6, unsigned int a7)
{
  v7 = *&qword_1DF081240[2 * a7];
  _Q16 = *a5;
  _Q17 = a5[1];
  _Q18 = a5[2];
  _Q19 = a5[3];
  v8 = a5 + 4;
  _Q20 = *v8;
  _Q21 = v8[1];
  _Q22 = v8[2];
  _Q23 = v8[3];
  v8 += 4;
  _Q24 = *v8;
  _Q25 = v8[1];
  _Q26 = v8[2];
  _Q27 = v8[3];
  v8 += 4;
  _Q28 = *v8;
  _Q29 = v8[1];
  v23 = v8[2];
  v24 = vqtbl1q_s8(*a6, *Lbswap_mask_1);
  do
  {
    v24 = vorrq_s8(vandq_s8(vaddq_s64(v24, *qword_1DF081240), v7), vbicq_s8(v24, v7));
    v25 = *result++;
    __asm
    {
      AESE            V3.16B, V16.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V16.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V17.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V17.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V18.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V18.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V19.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V19.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V20.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V20.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V21.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V21.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V22.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V22.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V23.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V23.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V24.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V24.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V25.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V25.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V26.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V26.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V27.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V27.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V28.16B
      AESMC           V3.16B, V3.16B
      AESE            V1.16B, V28.16B
      AESMC           V1.16B, V1.16B
      AESE            V3.16B, V29.16B
      AESE            V1.16B, V29.16B
    }

    v84 = veorq_s8(_Q1, v23);
    *a2++ = veorq_s8(v25, veorq_s8(_Q3, v23));
    _VF = __OFSUB__(a4--, 1);
  }

  while (!((a4 < 0) ^ _VF | (a4 == 0)));
  *a6 = vqtbl1q_s8(v24, *Lbswap_mask_1);
  *a3 = v84;
  return result;
}

uint64_t ccaes_cfb_encrypt_vng_vector(uint64_t result, int8x16_t *a2, uint64_t a3, int8x16_t *a4, int8x16_t *a5)
{
  if (a3)
  {
    v5 = *(result + 240);
    if (v5 == 160 || v5 == 192 || v5 == 224)
    {
      do
      {
        _Q2 = *result;
        v6 = (result + 16);
        v8 = v5 - 16;
        do
        {
          __asm
          {
            AESE            V0.16B, V2.16B
            AESMC           V0.16B, V0.16B
          }

          _Q2 = *v6++;
          v15 = v8 <= 16;
          v8 -= 16;
        }

        while (!v15);
        v16 = *v6;
        result = v6->i64 - v5;
        v17 = *a4++;
        __asm { AESE            V0.16B, V2.16B }

        v19 = veorq_s8(veorq_s8(_Q0, v16), v17);
        *a5++ = v19;
        v15 = a3-- <= 1;
      }

      while (!v15);
      result = 0;
      *a2 = v19;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

int8x16_t *ccm128_decrypt(int8x16_t *a1, int8x16_t *a2, int8x16_t *a3, int a4, int8x16_t *a5, int8x16_t *a6, unsigned int a7)
{
  v7 = *&qword_1DF081700[2 * a7];
  _Q16 = *a5;
  _Q17 = a5[1];
  _Q18 = a5[2];
  _Q19 = a5[3];
  v8 = a5 + 4;
  _Q20 = *v8;
  _Q21 = v8[1];
  _Q22 = v8[2];
  _Q23 = v8[3];
  v8 += 4;
  _Q24 = *v8;
  _Q25 = v8[1];
  v19 = v8[2];
  v20 = vqtbl1q_s8(*a6, *Lbswap_mask_2);
  v21 = vorrq_s8(vandq_s8(vaddq_s64(v20, *qword_1DF081700), v7), vbicq_s8(v20, v7));
  v23 = *a1;
  result = a1 + 1;
  __asm
  {
    AESE            V3.16B, V16.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V17.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V18.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V19.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V20.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V21.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V22.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V23.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V24.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V25.16B
  }

  *a2 = veorq_s8(v23, veorq_s8(_Q3, v19));
  v47 = a2 + 1;
  v48 = a4 - 1;
  if (v48)
  {
    do
    {
      v21 = vorrq_s8(vandq_s8(vaddq_s64(v21, *qword_1DF081700), v7), vbicq_s8(v21, v7));
      v49 = *result++;
      __asm
      {
        AESE            V3.16B, V16.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V16.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V17.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V17.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V18.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V18.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V19.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V19.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V20.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V20.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V21.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V21.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V22.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V22.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V23.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V23.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V24.16B
        AESMC           V3.16B, V3.16B
        AESE            V1.16B, V24.16B
        AESMC           V1.16B, V1.16B
        AESE            V3.16B, V25.16B
        AESE            V1.16B, V25.16B
      }

      *v47++ = veorq_s8(v49, veorq_s8(_Q3, v19));
      _VF = __OFSUB__(v48--, 1);
    }

    while (!((v48 < 0) ^ _VF | (v48 == 0)));
  }

  __asm
  {
    AESE            V1.16B, V16.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V17.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V18.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V19.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V20.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V21.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V22.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V23.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V24.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V25.16B
  }

  *a6 = vqtbl1q_s8(v21, *Lbswap_mask_2);
  *a3 = veorq_s8(_Q1, v19);
  return result;
}