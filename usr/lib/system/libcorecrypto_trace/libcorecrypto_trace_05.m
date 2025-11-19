uint64_t ccder_encode_dhparams_size(void *a1)
{
  v2 = ccdh_gp_n(a1);
  v3 = ccdh_gp_l(a1);
  v4 = ccdh_gp_prime(a1);
  v5 = ccder_sizeof_integer(v2, v4);
  v6 = ccdh_gp_g(a1);
  v7 = ccder_sizeof_integer(v2, v6);
  if (v3)
  {
    v8 = ccder_sizeof_uint64(v3);
  }

  else
  {
    v8 = 0;
  }

  return ccder_sizeof(0x2000000000000010, v7 + v5 + v8);
}

uint64_t ccder_encode_dhparams(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = ccdh_gp_n(a1);
  v7 = ccdh_gp_prime(a1);
  v8 = ccdh_gp_g(a1);
  v9 = ccdh_gp_l(a1);
  v10 = a3;
  if (v9)
  {
    v11 = ccdh_gp_l(a1);
    v10 = ccder_encode_uint64(v11, a2, a3);
  }

  v12 = ccder_encode_integer(v6, v8, a2, v10);
  v13 = ccder_encode_integer(v6, v7, a2, v12);

  return ccder_encode_constructed_tl(0x2000000000000010uLL, a3, a2, v13);
}

uint64_t ccgcm_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 24))(a1, a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
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

uint64_t ccgcm_gmac(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t ccgcm_reset(uint64_t a1, uint64_t a2)
{
  v6 = timingsafe_enable_if_supported();
  v4 = (*(a1 + 64))(a2);
  cc_disable_dit_with_sb(&v6);
  return v4;
}

uint64_t ccgcm_set_iv_legacy(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = ccgcm_set_iv_legacy_internal(a1, a2, a3, a4);
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

uint64_t ccmldsa_ntt_forward(uint64_t result)
{
  v1 = 8;
  do
  {
    v2 = 0;
    v3 = (1 << --v1);
    v4 = 0x80u >> v1;
    do
    {
      v5 = ccmldsa_zetas[v4];
      v6 = v2;
      do
      {
        v7 = (8380417 * ((v5 * *(result + 4 * (v3 + v6))) >> 32) + 2145386752) >> 32;
        v8 = *(result + 4 * v6);
        *(result + 4 * (v3 + v6)) = v8 - v7;
        *(result + 4 * v6++) = v8 + v7;
      }

      while (v6 < v2 + v3);
      ++v4;
      v2 += (2 << v1);
    }

    while (v2 < 0x100);
  }

  while (v1);
  return result;
}

int32x4_t *ccmldsa_ntt_forward_eta(int32x4_t *result)
{
  v1 = 128;
  v2 = vdupq_n_s32(0xFFC97E01);
  v3 = result;
  do
  {
    v4 = vmulq_s32(v3[32], v2);
    v5 = *v3;
    v3[32] = vsubq_s32(*v3, v4);
    *v3++ = vaddq_s32(v5, v4);
    v1 -= 4;
  }

  while (v1);
  v6 = 7;
  do
  {
    v7 = 0;
    v8 = (1 << --v6);
    v9 = 0x80u >> v6;
    do
    {
      v10 = ccmldsa_zetas[v9];
      v11 = v7;
      do
      {
        v12 = (8380417 * ((v10 * result->i32[(v8 + v11)]) >> 32) + 2145386752) >> 32;
        v13 = result->i32[v11];
        result->i32[(v8 + v11)] = v13 - v12;
        result->i32[v11++] = v13 + v12;
      }

      while (v11 < v7 + v8);
      ++v9;
      v7 += (2 << v6);
    }

    while (v7 < 0x100);
  }

  while (v6);
  return result;
}

uint64_t ccmldsa_ntt_pointwise(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (i = 0; i != 1024; i += 4)
  {
    *(result + i) = (8380417 * ((0x180A406003802001 * *(a3 + i) * *(a2 + i)) >> 32) + 2145386752) >> 32;
  }

  return result;
}

int *ccmldsa_ntt_inverse(int *result)
{
  for (i = 0; i != 7; ++i)
  {
    v2 = 0;
    v3 = (1 << i);
    v4 = 0x100u >> i;
    v5 = &result[v3];
    do
    {
      v6 = ccmldsa_zetas[--v4];
      v7 = v2;
      do
      {
        v8 = result[v7];
        v9 = v5[v7];
        result[v7] = v9 + v8;
        v5[v7++] = (8380417 * ((v6 * (v9 - v8)) >> 32) + 2145386752) >> 32;
      }

      while (v7 < v2 + v3);
      v2 += (2 << i);
    }

    while (v2 < 0x100);
  }

  v10 = 128;
  do
  {
    v11 = *result;
    v12 = result[128];
    *result = (8380417 * ((0xFEB7B9F10CCF51BBLL * (v12 + *result)) >> 32) + 2145386752) >> 32;
    result[128] = (8380417 * ((0x79729DB487E69094 * (v12 - v11)) >> 32) + 2145386752) >> 32;
    ++result;
    --v10;
  }

  while (v10);
  return result;
}

uint64_t ccxts_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = (*(a1 + 24))(a1, a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t ccxts_set_tweak(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 40))(a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ccxts_update(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = timingsafe_enable_if_supported();
  v12 = (*(a1 + 48))(a2, a3, a4, a5, a6);
  cc_disable_dit_with_sb(&v14);
  return v12;
}

uint64_t ccxts_one_shot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a8;
  v27 = *MEMORY[0x29EDCA608];
  v26 = timingsafe_enable_if_supported();
  is_active = fipspost_trace_is_active();
  if (is_active)
  {
    is_active = fipspost_trace_call("ccxts_one_shot");
  }

  v16 = MEMORY[0x2A1C7C4A8](is_active);
  v18 = &v24 - v17;
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v24 - v19;
  v21 = (*(a1 + 24))(a1, v18, a2, a3, a4);
  if (v21 || (v21 = (*(a1 + 40))(v18, v20, a5), v21))
  {
    v22 = v21;
  }

  else if ((*(a1 + 48))(v18, v20, a6, a7, v25))
  {
    v22 = 0;
  }

  else
  {
    v22 = 4294967289;
  }

  cc_clear(*a1, v18);
  cc_clear(*(a1 + 8), v20);
  cc_disable_dit_with_sb(&v26);
  return v22;
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

uint64_t ccvrf_irtf_ed25519_proof_to_hash(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  memset(v8, 0, sizeof(v8));
  v12 = 0uLL;
  memset(v11, 0, sizeof(v11));
  ccvrf_irtf_ed25519_decode_proof(a2, v8, &v12, v11);
  v6 = v5;
  if (!v5)
  {
    v9 = 772;
    ge_scalarmult_cofactor(v8);
    ccvrf_irtf_ed25519_point_to_string(&v10, v8);
    ccdigest_internal(*(a1 + 40), 0x22uLL, &v9, a3);
  }

  return v6;
}

uint64_t ccvrf_proof_to_hash(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  if (ccvrf_sizeof_proof(a1) == a2 && ccvrf_sizeof_hash(a1) == a4)
  {
    v10 = (*(a1 + 80))(a1, a3, a5);
  }

  else
  {
    v10 = 4294967289;
  }

  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t cczp_sqrt_tonelli_shanks_precomp_ws(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, unint64_t a5, uint64_t a6, void *a7)
{
  v12 = cczp_n(a2);
  v25 = *(a1 + 16);
  v13 = (*(a1 + 24))(a1, v12);
  v14 = (*(a1 + 24))(a1, v12);
  v15 = (*(a1 + 24))(a1, v12);
  v16 = (*(a1 + 24))(a1, v12);
  v24 = a4;
  result = cczp_power_fast_ws(a1, a2, a3, a4, a6);
  v18 = v25;
  if (!result)
  {
    ccn_seti(v12, v16, 1);
    v27 = v16;
    cczp_to_ws(a1, a2);
    ccn_set(v12, v15, a7);
    cczp_sqr_ws(a1, a2);
    cczp_mul_ws(a1, a2);
    cczp_mul_ws(a1, a2);
    v19 = a5 - 2;
    if (a5 >= 2)
    {
      while (1)
      {
        ccn_set(v12, v14, v13);
        --a5;
        v20 = v19;
        if (a5 < 2)
        {
          break;
        }

        do
        {
          cczp_sqr_ws(a1, a2);
          --v20;
        }

        while (v20);
        v21 = ccn_cmp_public_value(v12, v14, v27) & 1;
        cczp_mul_ws(a1, a2);
        ccn_mux(v12, v21, a3, v14, a3);
        cczp_sqr_ws(a1, a2);
        cczp_mul_ws(a1, a2);
        ccn_mux(v12, v21, v13, v14, v13);
        --v19;
      }

      v22 = ccn_cmp_public_value(v12, v14, v27) & 1;
      cczp_mul_ws(a1, a2);
      ccn_mux(v12, v22, a3, v14, a3);
      cczp_sqr_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      ccn_mux(v12, v22, v13, v14, v13);
    }

    cczp_sqr_ws(a1, a2);
    if (ccn_cmp_public_value(v12, v14, v24))
    {
      result = 4294967289;
    }

    else
    {
      result = 0;
    }

    v18 = v25;
  }

  *(a1 + 16) = v18;
  return result;
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

uint64_t cced25519_verify_internal(uint64_t *a1, uint64_t a2, size_t a3, char *a4, char *a5, uint64_t *a6)
{
  v46 = *MEMORY[0x29EDCA608];
  v40 = cc_malloc_clear(0x5E0uLL);
  v41 = xmmword_299DB6420;
  v42 = cc_ws_alloc;
  v43 = cc_ws_free;
  if (!v40)
  {
    return 4294967283;
  }

  v12 = &a1[5 * *a1];
  v13 = cczp_n(a1);
  v39 = cc_ws_alloc(&v40, v13);
  v14 = v42(&v40, v13);
  v15 = v42(&v40, 3 * v13);
  if (v13)
  {
    v16 = (a5 + 32);
    v17 = v14;
    v18 = v13;
    do
    {
      v19 = *v16++;
      *v17++ = v19;
      --v18;
    }

    while (v18);
  }

  v20 = cczp_prime((v12 + 4));
  if ((ccn_cmp_public_value(v13, v14, v20) & 0x80000000) == 0)
  {
    v35 = 4294967150;
    goto LABEL_24;
  }

  cced25519_hash_to_scalar_ws(&v40, a1, a2, v39, 0x20uLL, a5, 0x20uLL, a6, a3, a4);
  v21 = cczp_n(a1);
  v22 = v21;
  v23 = *a1;
  v24 = &v15[*a1];
  v25 = *(a6 + 31);
  if (v21)
  {
    v26 = &v15[*a1];
    v27 = v21;
    do
    {
      v28 = *a6++;
      *v26++ = v28;
      --v27;
    }

    while (v27);
  }

  v24[v21 - 1] &= ~0x8000000000000000;
  v29 = cczp_prime(a1);
  if ((ccn_cmp_public_value(v22, v24, v29) & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

  v37 = *(&v41 + 1);
  v38 = v25;
  v42(&v40, v22);
  v30 = v42(&v40, v22);
  v31 = v42(&v40, v22);
  ccn_seti(v22, &v15[2 * v23], 1);
  cczp_sqr_ws(&v40, a1);
  cczp_mul_ws(&v40, a1);
  cczp_sub_ws(&v40, a1);
  cczp_add_ws(&v40, a1);
  cczp_sqr_ws(&v40, a1);
  cczp_mul_ws(&v40, a1);
  cczp_mul_ws(&v40, a1);
  cczp_mul_ws(&v40, a1);
  cczp_mul_ws(&v40, a1);
  v32 = cczp_power_fast_ws(&v40, a1, v15, v15, &kPsub5div8);
  if (v32)
  {
LABEL_28:
    v35 = v32;
    goto LABEL_24;
  }

  cczp_mul_ws(&v40, a1);
  cczp_sqr_ws(&v40, a1);
  cczp_mul_ws(&v40, a1);
  cczp_from_ws(&v40, a1);
  cczp_from_ws(&v40, a1);
  if (ccn_cmp_public_value(v22, v30, v31))
  {
    cczp_negate(a1, v30, v30);
    if (ccn_cmp_public_value(v22, v30, v31))
    {
      goto LABEL_27;
    }

    cczp_mul_ws(&v40, a1);
  }

  cczp_from_ws(&v40, a1);
  if (ccn_n(v22, v15) || (v38 & 0x80000000) == 0)
  {
    if ((*v15 & 1) == v38 >> 7)
    {
      cczp_negate(a1, v15, v15);
    }

    *(&v41 + 1) = v37;
    cced25519_double_scalar_mult_ws(&v40, a1, v15, v14, v39);
    v32 = ccec_affinify_ws(&v40, a1);
    if (!v32)
    {
      v33 = 0;
      v34 = &v15[*a1];
      do
      {
        *&v44[v33 * 8] = v34[v33];
        ++v33;
      }

      while (v33 != 4);
      v45 |= *v15 << 7;
      if (cc_cmp_safe_internal(32, v44, a5))
      {
        v35 = 4294967150;
      }

      else
      {
        v35 = 0;
      }

      goto LABEL_24;
    }

    goto LABEL_28;
  }

LABEL_27:
  v35 = 4294967289;
LABEL_24:
  *(&v41 + 1) = 0;
  v43(&v40);
  return v35;
}

uint64_t cced25519_verify(uint64_t a1, size_t a2, char *a3, char *a4, uint64_t *a5)
{
  v13 = timingsafe_enable_if_supported();
  v10 = ccec_cp_ed25519();
  v11 = cced25519_verify_internal(v10, a1, a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v13);
  return v11;
}

void *ccxof_absorb(void *result, _DWORD *a2, size_t a3, char *__src)
{
  v4 = __src;
  v5 = a3;
  v7 = result;
  v8 = (a2 + 2);
  v9 = *a2;
  v10 = result[1];
  if (v9)
  {
    if (v10 - v9 >= a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = v10 - v9;
    }

    result = memcpy(&v8[v9], __src, v11);
    v4 += v11;
    v5 -= v11;
    *a2 = v11 + v9;
    v12 = v7[1];
    if (v11 + v9 == v12)
    {
      result = (v7[3])(v7, &v8[v10], 1, v8);
      *a2 = 0;
      v12 = v7[1];
    }
  }

  else
  {
    v12 = result[1];
  }

  v13 = v5 / v12;
  if (v12 <= v5)
  {
    result = (v7[3])(v7, &v8[v10], v13, v4);
    v12 = v7[1];
  }

  v14 = v12 * v13;
  v15 = v5 - v14;
  if (v15)
  {
    result = memcpy(v8, &v4[v14], v15);
    *a2 = v15;
  }

  return result;
}

void *ccxof_squeeze(void *result, unsigned int *a2, size_t a3, char *__dst)
{
  v7 = result;
  v8 = a2 + 2;
  v9 = result[1];
  v10 = *a2;
  if (!a2[1])
  {
    result = (result[4])(result, v8 + v9, v10, v8);
    LODWORD(v10) = 0;
    *a2 = 0x100000000;
  }

  if (a3)
  {
    v11 = v10;
    do
    {
      v12 = v7[1];
      if (!v11)
      {
        (v7[5])(v7, v8 + v9, v12, v8);
        v12 = v7[1];
        v11 = v12;
      }

      if (a3 >= v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = a3;
      }

      result = memcpy(__dst, v8 + v12 - v11, v13);
      v11 -= v13;
      __dst += v13;
      a3 -= v13;
    }

    while (a3);
    LODWORD(v10) = v11;
  }

  *a2 = v10;
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

uint64_t ccec_full_sub(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v14 = timingsafe_enable_if_supported();
  v8 = cc_malloc_clear(144 * *a1);
  v9 = 18 * *a1;
  v12[0] = v8;
  v12[1] = v9;
  v12[2] = 0;
  v12[3] = cc_ws_alloc;
  v13 = cc_ws_free;
  if (v8)
  {
    ccec_full_sub_ws(v12, a1, a2, a3, a4);
    v13(v12);
    v10 = 0;
  }

  else
  {
    v10 = 4294967283;
  }

  cc_disable_dit_with_sb(&v14);
  return v10;
}

void *ccdigest_init_internal(uint64_t a1, void *a2)
{
  result = memcpy(a2 + 1, *(a1 + 40), *(a1 + 8));
  *a2 = 0;
  *(a2 + *(a1 + 8) + *(a1 + 16) + 8) = 0;
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

uint64_t ccrng_system_init(uint64_t *a1)
{
  v6 = timingsafe_enable_if_supported();
  v5 = 0;
  v2 = ccrng(&v5);
  if (v2)
  {
    *a1 = *v2;
  }

  v3 = v5;
  cc_disable_dit_with_sb(&v6);
  return v3;
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

uint64_t cczp_sub(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = timingsafe_enable_if_supported();
  cczp_n(a1);
  v10[0] = cc_malloc_clear(0);
  cczp_n(a1);
  v10[1] = 0;
  v10[2] = 0;
  v10[3] = cc_ws_alloc;
  v11 = cc_ws_free;
  if (v10[0])
  {
    (*(*(a1 + 16) + 8))(v10, a1, a2, a3, a4);
    v11(v10);
    v8 = 0;
  }

  else
  {
    v8 = 4294967283;
  }

  cc_disable_dit_with_sb(&v12);
  return v8;
}

void gcmEncrypt(int8x16_t *a1, int8x16_t *a2, int8x16_t *a3, uint64_t a4, uint64x2_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = *(a6 + 240);
  v11 = vqtbl1q_s8(a3[1], *Lbswap_mask_2);
  if (a4 < 128)
  {
    JUMPOUT(0x299D73CA8);
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
    Encrypt_Main_Loop(v247, v256, a3, v258, a5, a6, v10, qword_299D72F40, v11, a9, a10);
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
  v7 = vqtbl1q_s8(a3[1], *Lbswap_mask_2);
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

uint64_t ccaes_vng_ccm_encrypt(uint64_t a1, int8x16_t *a2, unint64_t a3, int8x16_t *a4, int8x16_t *a5)
{
  v10 = a2[4].i32[0];
  if (v10 == 4)
  {
    if (a2[4].i32[2])
    {
      (*(*a1 + 24))(a1 + 8, 1, a2 + 1, a2 + 1);
      a2[4].i32[2] = 0;
    }

    a2[4].i32[0] = 5;
LABEL_6:
    v11 = a2[4].u32[1];
    if (v11)
    {
      v12 = v11 >= a3 ? a3 : a2[4].u32[1];
      ccmode_ccm_macdata(a1, a2, 0, v12, a4);
      ccmode_ccm_crypt(a1, a2, v12, a4, a5);
      a4 = (a4 + v12);
      a5 = (a5 + v12);
      a3 -= v12;
      if (a2[4].i32[1])
      {
        goto LABEL_24;
      }
    }

    if (a3 < 0x10)
    {
      goto LABEL_24;
    }

    v13 = a3 >> 4;
    v14 = *(a1 + 248);
    if (v14 > 159)
    {
      if (v14 == 224)
      {
LABEL_21:
        ccm256_encrypt(a4, a5, a2 + 1, v13, (a1 + 8), a2, *(*a1 + 8) + ~a2[5].i32[0]);
        goto LABEL_23;
      }

      if (v14 == 192)
      {
LABEL_22:
        ccm192_encrypt(a4, a5, a2 + 1, v13, (a1 + 8), a2, *(*a1 + 8) + ~a2[5].i32[0]);
        goto LABEL_23;
      }

      if (v14 != 160)
      {
LABEL_23:
        v15 = a3 & 0xFFFFFFFFFFFFFFF0;
        a3 &= 0xFu;
        a4 = (a4 + v15);
        a5 = (a5 + v15);
LABEL_24:
        ccmode_ccm_macdata(a1, a2, 0, a3, a4);
        ccmode_ccm_crypt(a1, a2, a3, a4, a5);
        return 0;
      }
    }

    else if (v14 != 10)
    {
      if (v14 != 12)
      {
        if (v14 != 14)
        {
          goto LABEL_23;
        }

        goto LABEL_21;
      }

      goto LABEL_22;
    }

    ccm128_encrypt(a4, a5, a2 + 1, v13, (a1 + 8), a2, *(*a1 + 8) + ~a2[5].i32[0]);
    goto LABEL_23;
  }

  if (v10 == 5)
  {
    goto LABEL_6;
  }

  return 4294967228;
}

uint64_t ccpad_cts1_decrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = *MEMORY[0x29EDCA608];
  v24 = timingsafe_enable_if_supported();
  v12 = *(a1 + 8);
  v13 = (a4 - 1) / v12;
  if (v13 >= 2)
  {
    v15 = (v13 - 1) * v12;
    (*(a1 + 24))(a2, a3);
    v14 = a4 - v15;
    a5 += v15;
    a6 += v15;
  }

  else
  {
    v14 = a4;
  }

  if (2 * v12 == v14)
  {
    (*(a1 + 24))(a2, a3, 2, a5, a6);
  }

  else
  {
    v16 = v14 - v12;
    __memcpy_chk();
    __memcpy_chk();
    ecb_from_cbc_1(a1, a2, v25, v27);
    if (v14 - v12 < v12)
    {
      memcpy(&v26[v16], &v27[v16], 2 * v12 - v14);
    }

    (*(a1 + 24))(a2, a3, 1, v26, a6);
    if (v14 != v12)
    {
      v17 = (a6 + v12);
      v18 = v27;
      v19 = v26;
      do
      {
        v21 = *v19++;
        v20 = v21;
        v22 = *v18++;
        *v17++ = v22 ^ v20;
        --v16;
      }

      while (v16);
    }
  }

  cc_disable_dit_with_sb(&v24);
  return a4;
}

uint64_t ecb_from_cbc_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 8);
  v9 = MEMORY[0x2A1C7C4A8](a1);
  v11 = v13 - v10;
  cccbc_set_iv_internal(v9, v13 - v10, 0);
  ccdrbg_generate_internal(a1, a2, v11, 1, a3, a4);
  return cc_clear(v8, v11);
}

const char *ccscrypt_salsa20_8(const char *result, uint64_t a2)
{
  v61 = *MEMORY[0x29EDCA608];
  v62 = vld4q_s8(result);
  v2 = vmovl_u8(*v62.val[0].i8);
  v3 = vmovl_u16(*v2.i8);
  v4 = vmovl_high_u8(v62.val[0]);
  v5 = vmovl_high_u16(v4);
  v6 = vmovl_high_u8(v62.val[1]);
  v7 = vmovl_u8(*v62.val[1].i8);
  v8 = vorrq_s8(vshll_n_u16(*v6.i8, 8uLL), vmovl_u16(*v4.i8));
  v9 = vorrq_s8(vshll_high_n_u16(v7, 8uLL), vmovl_high_u16(v2));
  v10 = vorrq_s8(vshll_high_n_u16(v6, 8uLL), v5);
  v11 = vorrq_s8(vshll_n_u16(*v7.i8, 8uLL), v3);
  _Q16 = vmovl_u8(*v62.val[2].i8);
  _Q17 = vmovl_high_u8(v62.val[2]);
  v14 = vshll_n_s16(*_Q17.i8, 0x10uLL);
  __asm
  {
    SHLL2           V19.4S, V16.8H, #0x10
    SHLL2           V17.4S, V17.8H, #0x10
  }

  v20 = vorrq_s8(v11, vshll_n_s16(*_Q16.i8, 0x10uLL));
  v21 = vmovl_high_u8(v62.val[3]);
  v62.val[0] = vmovl_u8(*v62.val[3].i8);
  v57 = vorrq_s8(v20, vshlq_n_s32(vmovl_u16(*v62.val[0].i8), 0x18uLL));
  v58 = vorrq_s8(vorrq_s8(v9, _Q19), vshlq_n_s32(vmovl_high_u16(v62.val[0]), 0x18uLL));
  v60 = vorrq_s8(vorrq_s8(v10, _Q17), vshlq_n_s32(vmovl_high_u16(v21), 0x18uLL));
  v59 = vorrq_s8(vorrq_s8(v8, v14), vshlq_n_s32(vmovl_u16(*v21.i8), 0x18uLL));
  v23 = v58.i32[0];
  v22 = v58.i32[1];
  v25 = v57.i32[0];
  v24 = v57.i32[1];
  v27 = v59.i32[0];
  v26 = v59.i32[1];
  v29 = v60.i32[0];
  v28 = v60.i32[1];
  v31 = v60.i32[2];
  v30 = v60.i32[3];
  v32 = v59.i32[2];
  v33 = v59.i32[3];
  v35 = v57.i32[2];
  v34 = v57.i32[3];
  v36 = -8;
  v38 = v58.i32[2];
  v37 = v58.i32[3];
  do
  {
    v39 = v23 ^ __ROR4__(v29 + v25, 25);
    v40 = v27 ^ __ROR4__(v39 + v25, 23);
    v41 = v29 ^ __ROR4__(v40 + v39, 19);
    v42 = v25 ^ __ROR4__(v41 + v40, 14);
    v43 = v26 ^ __ROR4__(v24 + v22, 25);
    v44 = v28 ^ __ROR4__(v43 + v22, 23);
    v45 = v24 ^ __ROR4__(v44 + v43, 19);
    v46 = v22 ^ __ROR4__(v45 + v44, 14);
    v47 = v31 ^ __ROR4__(v38 + v32, 25);
    v48 = v35 ^ __ROR4__(v47 + v32, 23);
    v49 = v38 ^ __ROR4__(v48 + v47, 19);
    v50 = v32 ^ __ROR4__(v49 + v48, 14);
    v51 = v34 ^ __ROR4__(v33 + v30, 25);
    v52 = v37 ^ __ROR4__(v51 + v30, 23);
    v53 = v33 ^ __ROR4__(v52 + v51, 19);
    v54 = v30 ^ __ROR4__(v53 + v52, 14);
    v24 = v45 ^ __ROR4__(v51 + v42, 25);
    v35 = v48 ^ __ROR4__(v24 + v42, 23);
    v34 = v51 ^ __ROR4__(v35 + v24, 19);
    v25 = v42 ^ __ROR4__(v34 + v35, 14);
    v38 = v49 ^ __ROR4__(v46 + v39, 25);
    v37 = v52 ^ __ROR4__(v38 + v46, 23);
    v23 = v39 ^ __ROR4__(v37 + v38, 19);
    v22 = v46 ^ __ROR4__(v23 + v37, 14);
    v33 = v53 ^ __ROR4__(v50 + v43, 25);
    v27 = v40 ^ __ROR4__(v33 + v50, 23);
    v26 = v43 ^ __ROR4__(v27 + v33, 19);
    v32 = v50 ^ __ROR4__(v26 + v27, 14);
    v29 = v41 ^ __ROR4__(v54 + v47, 25);
    v28 = v44 ^ __ROR4__(v29 + v54, 23);
    v31 = v47 ^ __ROR4__(v28 + v29, 19);
    v30 = v54 ^ __ROR4__(v31 + v28, 14);
    v36 += 2;
  }

  while (v36);
  v58.i64[0] = __PAIR64__(v22, v23);
  v57.i64[0] = __PAIR64__(v24, v25);
  v59.i64[0] = __PAIR64__(v26, v27);
  v60.i64[0] = __PAIR64__(v28, v29);
  v60.i64[1] = __PAIR64__(v30, v31);
  v59.i64[1] = __PAIR64__(v33, v32);
  v57.i64[1] = __PAIR64__(v34, v35);
  v55 = a2 + 1;
  v56 = result + 1;
  v58.i64[1] = __PAIR64__(v37, v38);
  do
  {
    *(v55 - 1) = *(v56 - 1) + v57.i32[v36++];
    v55 += 4;
    v56 += 4;
  }

  while (v36 != 16);
  return result;
}

__n128 ccscrypt_blockmix_salsa8(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v3 = a3;
  v31 = *MEMORY[0x29EDCA608];
  v6 = 2 * a3;
  v7 = &a1[8 * a3];
  v8 = v7[-3];
  v27 = v7[-4];
  v28 = v8;
  result = v7[-2];
  v10 = v7[-1];
  v29 = result;
  v30 = v10;
  if (2 * a3)
  {
    v11 = 0;
    v12 = a1;
    do
    {
      for (i = 0; i != 4; ++i)
      {
        *(&v27 + i * 16) = veorq_s8(v12[i], *(&v27 + i * 16));
      }

      ccscrypt_salsa20_8(&v27, &v27);
      v14 = &a2[4 * v11];
      v15 = v28;
      *v14 = v27;
      v14[1] = v15;
      result.n128_u64[0] = v29.n128_u64[0];
      v16 = v30;
      v14[2] = v29;
      v14[3] = v16;
      ++v11;
      v12 += 4;
    }

    while (v11 != v6);
  }

  if (v3)
  {
    v17 = a2;
    v18 = a1;
    v19 = v3;
    do
    {
      v20 = *v17;
      v21 = v17[1];
      v22 = v17[3];
      v18[2] = v17[2];
      v18[3] = v22;
      *v18 = v20;
      v18[1] = v21;
      v18 += 4;
      v17 += 8;
      --v19;
    }

    while (v19);
    v23 = &a1[4 * v3];
    v24 = (a2 + 4);
    do
    {
      result = *v24;
      v25 = v24[1];
      v26 = v24[3];
      v23[2] = v24[2];
      v23[3] = v26;
      *v23 = result;
      v23[1] = v25;
      v23 += 4;
      v24 += 8;
      --v3;
    }

    while (v3);
  }

  return result;
}

void *ccscrypt_romix(uint64_t a1, void *a2, uint64_t a3, char *a4, _OWORD *__dst, _OWORD *a6)
{
  v12 = a1 << 7;
  memcpy(__dst, a2, a1 << 7);
  if (a3)
  {
    v13 = a4;
    v14 = a3;
    do
    {
      memcpy(v13, __dst, v12);
      ccscrypt_blockmix_salsa8(__dst, a6, a1);
      v13 += v12;
      --v14;
    }

    while (v14);
    v15 = 0;
    do
    {
      if (v12)
      {
        v16 = &a4[(*(__dst + v12 - 64) & (a3 - 1)) * v12];
        v17 = __dst;
        v18 = v12;
        do
        {
          v19 = *v16++;
          *v17++ ^= v19;
          --v18;
        }

        while (v18);
      }

      ccscrypt_blockmix_salsa8(__dst, a6, a1);
      ++v15;
    }

    while (v15 != a3);
  }

  return memcpy(a2, __dst, v12);
}

uint64_t ccscrypt_storage_size(unint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = -7;
  if (a2 && a1)
  {
    v4 = vcnt_s8(a1);
    v4.i16[0] = vaddlv_u8(v4);
    if (0xFFFFFFE0 / (a2 << 7) >= a3 && v4.u32[0] <= 1uLL)
    {
      v6 = a2 << 7;
      v7 = v6 * a3;
      v9 = !is_mul_ok(v6, a3) || v7 < 0;
      v10 = v6 * a1;
      v12 = !is_mul_ok(v6, a1) || v10 < 0 || v9;
      v13 = v7 + (a2 << 8);
      if (__OFADD__(v7, a2 << 8))
      {
        v12 = 1;
      }

      v14 = __OFADD__(v10, v13);
      v3 = v10 + v13;
      if (v14)
      {
        v12 = 1;
      }

      if (v12)
      {
        return -12;
      }
    }
  }

  return v3;
}

rsize_t ccscrypt(uint64_t a1, uint64_t a2, size_t a3, char *a4, char *a5, unint64_t a6, unsigned int a7, unsigned int a8, unint64_t a9, char *a10)
{
  v31 = timingsafe_enable_if_supported();
  v18 = ccscrypt_storage_size(a6, a7, a8);
  if ((v18 & 0x8000000000000000) == 0)
  {
    if (a9 <= 0xFFFFFFFE0)
    {
      v30 = a5;
      v19 = a1;
      v20 = a8;
      v21 = a7 << 7;
      v22 = ccsha256_di();
      v28 = v19;
      v29 = a2;
      v23 = a2;
      v24 = v21 * a8;
      if (ccpbkdf2_hmac_internal(v22, v19, v23, a3, a4, 1uLL, v24, v30))
      {
        goto LABEL_9;
      }

      if (a8)
      {
        v25 = v30;
        do
        {
          ccscrypt_romix(a7, v25, a6, &v30[128 * a7 + 128 * a7 + v24], &v30[v24], &v30[128 * a7 + v24]);
          v25 += v21;
          --v20;
        }

        while (v20);
      }

      v26 = ccsha256_di();
      if (ccpbkdf2_hmac_internal(v26, v28, v29, v24, v30, 1uLL, a9, a10))
      {
LABEL_9:
        v18 = 0xFFFFFFFFLL;
      }

      else
      {
        cc_clear(v18, v30);
        v18 = 0;
      }
    }

    else
    {
      v18 = 4294967289;
    }
  }

  cc_disable_dit_with_sb(&v31);
  return v18;
}

void *ccsae_lexographic_order_key_internal(const void *a1, size_t a2, void *__s2, size_t a4, char *a5)
{
  if (a2 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a2;
  }

  v11 = memcmp(a1, __s2, v10);
  if (v11 < 0 || !v11 && a2 <= a4)
  {
    memcpy(a5, __s2, a4);
    v12 = &a5[a4];
    v13 = a1;
    v14 = a2;
  }

  else
  {
    memcpy(a5, a1, a2);
    v12 = &a5[a2];
    v13 = __s2;
    v14 = a4;
  }

  return memcpy(v12, v13, v14);
}

uint64_t ccsae_lexographic_order_key(const void *a1, size_t a2, void *a3, size_t a4, char *a5)
{
  v11 = timingsafe_enable_if_supported();
  ccsae_lexographic_order_key_internal(a1, a2, a3, a4, a5);
  return cc_disable_dit_with_sb(&v11);
}

uint64_t ccsae_gen_keys_ws(uint64_t a1, uint64_t a2, char *a3, uint64_t *a4)
{
  v21 = *MEMORY[0x29EDCA608];
  v8 = *(a2 + 16);
  v9 = *a2;
  v10 = **a2;
  v11 = (cczp_bitlen(*a2) + 7) >> 3;
  v12 = *(a1 + 16);
  v13 = (*(a1 + 24))(a1, v10 + 3);
  v14 = *(a2 + 32);
  v15 = ccsae_sizeof_kck_internal(a2);
  sae_construct_fixed_data(v9, v14, a4, 8 * v15 + 256, v13);
  v16 = ccsae_sizeof_kck_internal(a2);
  ccsae_ctr_hmac_fixed(v8, a3, v13, v11 + 19, v20, v16 + 32);
  ccsae_sizeof_kck_internal(a2);
  __memcpy_chk();
  v17 = ccsae_sizeof_kck_internal(a2);
  v18 = *&v20[v17 + 16];
  *(a2 + 112) = *&v20[v17];
  *(a2 + 128) = v18;
  *(a1 + 16) = v12;
  return 0;
}

uint64_t sae_construct_fixed_data(uint64_t *a1, char *__s, uint64_t *a3, __int16 a4, char *a5)
{
  v10 = *a1;
  v11 = strlen(__s);
  v12 = (cczp_bitlen(a1) + 7) >> 3;
  a5 += 2;
  memcpy(a5, __s, v11);
  v13 = &a5[v11];
  result = ccn_write_uint_padded_internal(v10, a3, v12, v13);
  *&v13[v12] = a4;
  return result;
}

uint64_t ccsae_ctr_hmac_fixed(size_t *a1, char *a2, _WORD *a3, uint64_t a4, char *a5, size_t a6)
{
  v20[1] = v20;
  v23 = *MEMORY[0x29EDCA608];
  v12 = *a1;
  MEMORY[0x2A1C7C4A8](a1);
  v15 = (v20 - v14);
  if ((v16 & 1) == 0)
  {
    v17 = 1;
    v21 = v13 / v12;
    do
    {
      cchmac_init_internal(a1, v15, v12, a2);
      *a3 = v17;
      cchmac_update_internal(a1, v15, a4, a3);
      cchmac_final_internal(a1, v15, __src);
      if (a6 >= v12)
      {
        v18 = v12;
      }

      else
      {
        v18 = a6;
      }

      memcpy(a5, __src, v18);
      ++v17;
      a5 += v12;
      a6 -= v12;
    }

    while (v17 <= v21);
  }

  cc_clear(((a1[1] + a1[2] + 19) & 0xFFFFFFFFFFFFFFF8) + a1[1], v15);
  return cc_clear(v12, __src);
}

uint64_t ccsae_gen_password_value_ws(uint64_t a1, uint64_t *a2, char *a3, int8x16_t *a4)
{
  v17 = a2[2];
  v7 = *a2;
  v9 = (*a2 + 24);
  v8 = **a2;
  v10 = (cczp_bitlen(*a2) + 7) >> 3;
  v11 = cczp_bitlen(v7);
  v19 = *(a1 + 16);
  v12 = (*(a1 + 24))(a1, v8);
  v13 = (*(a1 + 24))(a1, v8 + 4);
  v14 = a2[5];
  v15 = cczp_bitlen(v7);
  sae_construct_fixed_data(v7, v14, v9, v15, v13);
  ccsae_ctr_hmac_fixed(v17, a3, v13, v10 + 27, v12, v10);
  result = ccn_read_uint_internal(v8, a4, v10, v12);
  if ((v11 & 7) != 0)
  {
    result = ccn_shift_right(v8, a4, a4, 8 - (v11 & 7));
  }

  *(a1 + 16) = v19;
  return result;
}

uint64_t ccsae_y2_from_x_ws(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  v8 = *a2;
  v9 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  v10 = (*(a1 + 24))(a1, v8);
  v11 = (*(a1 + 24))(a1, v8);
  ccn_set(v8, v10, a4);
  v12 = cczp_prime(a2);
  ccn_sub1(v8, v11, v12, 1uLL);
  v13 = *a2;
  v14 = cczp_prime(a2);
  LODWORD(v13) = ccn_cmp_public_value(v13, v10, v14) >> 31;
  ccn_mux(v8, (v13 & 1) == 0, v10, v11, v10);
  cczp_to_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_add_ws(a1, a2);
  is_quadratic_residue_ws = cczp_is_quadratic_residue_ws(a1, a2, a3);
  *(a1 + 16) = v9;
  return is_quadratic_residue_ws | ~v13;
}

uint64_t ccec_rfc6637_wrap_core_ws(uint64_t a1, uint64_t *a2, uint64_t **a3, _WORD *a4, uint64_t a5, char a6, size_t a7, void *a8, char *a9, uint64_t (**a10)(void), char *a11, uint64_t (**a12)(void, uint64_t, uint64_t *))
{
  v63 = *MEMORY[0x29EDCA608];
  v20 = (*(*a10 + 2))();
  if (a7 > 0x24)
  {
    return 4294967289;
  }

  v21 = v20;
  if (*v20 < *(*a10 + 4))
  {
    return 4294967289;
  }

  v53 = a4;
  v54 = a5;
  v51 = a10[1]();
  v23 = ccecb_context_size(v51);
  v56 = &v47;
  MEMORY[0x2A1C7C4A8](v23);
  v50 = &v47 - v24;
  v25 = **a2;
  v26 = *(a1 + 24);
  v55 = *(a1 + 16);
  v52 = v25;
  v27 = v26(a1);
  v59 = (cczp_bitlen(*a2) + 7) >> 3;
  v28 = ccecdh_compute_shared_secret_ws(a1, a3, a2, &v59, v27, a12);
  if (v28)
  {
    v22 = v28;
  }

  else
  {
    v49 = a11;
    LOBYTE(v61[0]) = a6;
    __memcpy_chk();
    v48 = a8;
    *(v61 + a7 + 1) = __rev16(pgp_key_checksum(a7, a8));
    memset(v61 + a7 + 3, 37 - a7, 37 - a7);
    ccec_rfc6637_kdf(v21, a9, *a10, v59, v27, 0x14uLL, v49, v60);
    v49 = v27;
    cc_clear(v59, v27);
    v29 = v54;
    v30 = ccec_rfc6637_wrap_pub_size(a3, v54);
    v31 = (*(a1 + 24))(a1, (2 * v52) | 1);
    v32 = v31;
    if (v29)
    {
      v33 = ccec_compact_export_pub(v31, a3);
    }

    else
    {
      v33 = ccec_export_pub(a3, v31);
    }

    v22 = v33;
    v34 = v53;
    if (!v33)
    {
      *v53 = bswap32(8 * v30) >> 16;
      memcpy(v34 + 1, v32, v30);
      v35 = v29;
      v36 = v34 + v30;
      *(v36 + 2) = 40;
      v37 = (v34 + v30 + 3);
      v38 = v61[1];
      *(v36 + 3) = v61[0];
      *(v36 + 19) = v38;
      *(v36 + 35) = v62;
      v39 = v51;
      v40 = v50;
      ccecb_init_internal(v51);
      cc_clear(*v21, v60);
      v57 = 0xA6A6A6A6A6A6A6A6;
      v58 = 0;
      v22 = ccwrap_auth_encrypt_withiv_internal(v39, v40, 0x28uLL, v61, &v58, v37, &v57);
      v41 = ccecb_context_size(v39);
      cc_clear(v41, v40);
      v42 = v58;
      *(v36 + 2) = v58;
      if ((v35 & 2) != 0)
      {
        v43 = v37 + v42;
        *v43 = a7;
        v44 = v59;
        v43[1] = v59;
        v45 = v43 + 2;
        memcpy(v43 + 2, v48, a7);
        memcpy(&v45[a7], v49, v44);
      }
    }
  }

  *(a1 + 16) = v55;
  return v22;
}

uint64_t fipspost_post_kdf_ctr(char a1)
{
  v45 = *MEMORY[0x29EDCA608];
  v43 = 0;
  v44 = 0;
  v2 = ccsha1_di();
  if (ccnistkdf_ctr_hmac_fixed(v2, 0x14uLL, "\xF7\x59\x17\x33\xC8\x56Y5e\x13\tu5\x19T\xD0\x15Z\xBF<", 0x3CuLL, "\x8E4~\xF5\x5D\x5F\x5E\x99\xEA\xB6\xDEpkQ\xDE\x7C\xE0\x04\xF3\x88(\x89\xE2\x59\xFFN\\\xFF\x10!g\xA5\xA4\xBDq\x15x\xD4\xCE\x17ݚ\xBEV\xE5\x1C\x1F-\xF9P\xE2\xFC\x81.\xC1\xB2\x17\xCA\x08\xD6\x014\xFED\xB0\xD8\xC4\x1B\x93\xF5\xFA\x64\xFB\x96\xF0\x0E\x5B4\xFED\xB0\xD8\xC4\x1B\x93\xF5\xFA\x64\xFB\x96\xF0\x0E\x5BFIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_hmac_fixed (SHA-1): %d\n", 0x10uLL, &v43))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_hmac_fixed (SHA-1): %d\n");
    return 4294967224;
  }

  v3 = "\x014\xFED\xB0\xD8\xC4\x1B\x93\xF5\xFA\x64\xFB\x96\xF0\x0E\x5B4\xFED\xB0\xD8\xC4\x1B\x93\xF5\xFA\x64\xFB\x96\xF0\x0E\x5BFIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_hmac_fixed (SHA-1): %d\n";
  if ((a1 & 0x10) == 0)
  {
    v3 = "4\xFED\xB0\xD8\xC4\x1B\x93\xF5\xFA\x64\xFB\x96\xF0\x0E\x5BFIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_hmac_fixed (SHA-1): %d\n";
  }

  v5 = *v3;
  v4 = *(v3 + 1);
  if (v5 == v43 && v4 == v44)
  {
    v8 = 0;
  }

  else
  {
    v7 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed HMAC_SHA1 KAT\n", v7, "fipspost_post_kdf_ctr", 70);
    v8 = 4294967221;
  }

  v42 = 0;
  memset(__s2, 0, sizeof(__s2));
  v9 = ccsha256_di();
  if (ccnistkdf_ctr_hmac_fixed(v9, 0x20uLL, "ľ\xDB\xDD\xB6d\x93\xE7\xC7\x25\x9A;\xBB\xC2\x5F\x8C~\f\xA7\xFE(M\x92\xD4\x31\xD9\xCD\x99\xA0\xD2\x14\xAC", 0x3CuLL, "\x1Ci\xC5\x47fy\x1E1\\,\xC5\xC4~\xCD\x3F\xFA\xB8}\r'=\xD9\x20\xE7\x09\x55\x81L\x0E\xAC\xAC楔eB\xDA\x3D\xFE$\xFFbkH\x97\x89\x8C\xAF\xB7ۃ\xBD\xFF<\x14\xFAF\xFDK", 0x28uLL, __s2))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_hmac_fixed (SHA-256): %d\n");
    return 4294967224;
  }

  if ((a1 & 0x10) != 0)
  {
    v10 = "\x01\x1D\xA4v8\xD6\xC9\xC4\xD0Mt\xD4\x64\v\xBDB\xAB\x81M\x9E\x8C\xC2\x2FC&iR9\xF9k\x06\x93\xF1\x2D\x0D\xD1\x15,\xF4\x44\x30\x1D\xA4v8\xD6\xC9\xC4\xD0Mt\xD4\x64\v\xBDB\xAB\x81M\x9E\x8C\xC2\x2FC&iR9\xF9k\x06\x93\xF1\x2D\x0D\xD1\x15,\xF4\x44\x30FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_hmac_fixed (SHA-256): %d\n";
  }

  else
  {
    v10 = "\x1D\xA4v8\xD6\xC9\xC4\xD0Mt\xD4\x64\v\xBDB\xAB\x81M\x9E\x8C\xC2\x2FC&iR9\xF9k\x06\x93\xF1\x2D\x0D\xD1\x15,\xF4\x44\x30FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_hmac_fixed (SHA-256): %d\n";
  }

  if (memcmp(v10, __s2, 0x28uLL))
  {
    v11 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed HMAC_SHA256 KAT\n", v11, "fipspost_post_kdf_ctr", 123);
    v8 = 4294967221;
  }

  v39 = 0;
  v40 = 0;
  v12 = ccsha512_di();
  if (ccnistkdf_ctr_hmac_fixed(v12, 0x40uLL, "\xDD\x5D\xBDEY>\xE2\xAC\x13\x97H\xE7\x64\x5BE\x0F=/\xF2\x97\xB7\x3F\xD7\x1C\xBC\xEB\xE7\x1DAe<\x95\v\x88P\r\xE5\x32\x2D\x99\xEF\x18\xDF\xDD\x30B\x82\x94ĳ\tOL\x95C4哽\x98.\xC6\x14", 0x3CuLL, "\xB5\v\f\x96<k04\xB8\xCF\x19\xCD\x3F\\N\xBEOI\x85\xAF\f\x03\xE5\x75\xDBb\xE6\xFD\xF1\xEC\xFE\x4F(\xB9]|\xE1\x6D\xF8XC$n\x15WΕ\xBB&̚!\x97K\xBD.\xB6\x9E\x83U", 0x10uLL, &v39))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_hmac_fixed (SHA-512): %d\n");
    return 4294967224;
  }

  v13 = "\x01\xE5\x99\x3B\xF9\xBD*\xA1\xC4\x57F\x04.\x12Y\x81U";
  if ((a1 & 0x10) == 0)
  {
    v13 = "\xE5\x99\x3B\xF9\xBD*\xA1\xC4\x57F\x04.\x12Y\x81U";
  }

  v15 = *v13;
  v14 = *(v13 + 1);
  if (v15 != v39 || v14 != v40)
  {
    v17 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed HMAC_SHA512 KAT\n", v17, "fipspost_post_kdf_ctr", 174);
    v8 = 4294967221;
  }

  v37 = 0;
  v38 = 0;
  if ((a1 & 0x10) != 0)
  {
    v18 = "\x01Z\xC9\xF7\xEC\x38\xF6\x8Bv#\x94\xD3\xCA\xEC\xEB\xA5\xBB";
  }

  else
  {
    v18 = "Z\xC9\xF7\xEC\x38\xF6\x8Bv#\x94\xD3\xCA\xEC\xEB\xA5\xBB";
  }

  if ((a1 & 0x10) != 0)
  {
    v19 = "\x01h\x8B\x9E(#+vT\xF95\x93\xA5\xC3\xF085";
  }

  else
  {
    v19 = "h\x8B\x9E(#+vT\xF95\x93\xA5\xC3\xF085";
  }

  if ((a1 & 0x10) != 0)
  {
    v20 = "\x01\xFE\xA9j\xF5\x19\x2A\xD4'\x1Dy\xB9\x80\x80;W\x11";
  }

  else
  {
    v20 = "\xFE\xA9j\xF5\x19\x2A\xD4'\x1Dy\xB9\x80\x80;W\x11";
  }

  v21 = ccsha3_224_di();
  if (ccnistkdf_ctr_hmac_fixed(v21, 0x14uLL, "\xF7\x59\x17\x33\xC8\x56Y5e\x13\tu5\x19T\xD0\x15Z\xBF<", 0x3CuLL, "\x8E4~\xF5\x5D\x5F\x5E\x99\xEA\xB6\xDEpkQ\xDE\x7C\xE0\x04\xF3\x88(\x89\xE2\x59\xFFN\\\xFF\x10!g\xA5\xA4\xBDq\x15x\xD4\xCE\x17ݚ\xBEV\xE5\x1C\x1F-\xF9P\xE2\xFC\x81.\xC1\xB2\x17\xCA\x08\xD6\x014\xFED\xB0\xD8\xC4\x1B\x93\xF5\xFA\x64\xFB\x96\xF0\x0E\x5B4\xFED\xB0\xD8\xC4\x1B\x93\xF5\xFA\x64\xFB\x96\xF0\x0E\x5BFIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_hmac_fixed (SHA-1): %d\n", 0x10uLL, &v37))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_hmac_fixed (SHA3-224): %d\n");
    return 4294967224;
  }

  v22 = &unk_299DB6488;
  if ((a1 & 0x10) == 0)
  {
    v22 = &unk_299DB649A;
  }

  v24 = *v22;
  v23 = v22[1];
  if (v24 != v37 || v23 != v38)
  {
    v26 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed HMAC_SHA3_224 KAT\n", v26, "fipspost_post_kdf_ctr", 213);
    v8 = 4294967221;
  }

  v27 = ccsha3_256_di();
  if (ccnistkdf_ctr_hmac_fixed(v27, 0x14uLL, "\xF7\x59\x17\x33\xC8\x56Y5e\x13\tu5\x19T\xD0\x15Z\xBF<", 0x3CuLL, "\x8E4~\xF5\x5D\x5F\x5E\x99\xEA\xB6\xDEpkQ\xDE\x7C\xE0\x04\xF3\x88(\x89\xE2\x59\xFFN\\\xFF\x10!g\xA5\xA4\xBDq\x15x\xD4\xCE\x17ݚ\xBEV\xE5\x1C\x1F-\xF9P\xE2\xFC\x81.\xC1\xB2\x17\xCA\x08\xD6\x014\xFED\xB0\xD8\xC4\x1B\x93\xF5\xFA\x64\xFB\x96\xF0\x0E\x5B4\xFED\xB0\xD8\xC4\x1B\x93\xF5\xFA\x64\xFB\x96\xF0\x0E\x5BFIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_hmac_fixed (SHA-1): %d\n", 0x10uLL, &v37))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_hmac_fixed (SHA3-256): %d\n");
    return 4294967224;
  }

  if (*v18 != v37 || *(v18 + 1) != v38)
  {
    v29 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed HMAC_SHA3_256 KAT\n", v29, "fipspost_post_kdf_ctr", 227);
    v8 = 4294967221;
  }

  v30 = ccsha3_384_di();
  if (ccnistkdf_ctr_hmac_fixed(v30, 0x14uLL, "\xF7\x59\x17\x33\xC8\x56Y5e\x13\tu5\x19T\xD0\x15Z\xBF<", 0x3CuLL, "\x8E4~\xF5\x5D\x5F\x5E\x99\xEA\xB6\xDEpkQ\xDE\x7C\xE0\x04\xF3\x88(\x89\xE2\x59\xFFN\\\xFF\x10!g\xA5\xA4\xBDq\x15x\xD4\xCE\x17ݚ\xBEV\xE5\x1C\x1F-\xF9P\xE2\xFC\x81.\xC1\xB2\x17\xCA\x08\xD6\x014\xFED\xB0\xD8\xC4\x1B\x93\xF5\xFA\x64\xFB\x96\xF0\x0E\x5B4\xFED\xB0\xD8\xC4\x1B\x93\xF5\xFA\x64\xFB\x96\xF0\x0E\x5BFIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_hmac_fixed (SHA-1): %d\n", 0x10uLL, &v37))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_hmac_fixed (SHA3-384): %d\n");
    return 4294967224;
  }

  if (*v19 != v37 || *(v19 + 1) != v38)
  {
    v32 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed HMAC_SHA3_384 KAT\n", v32, "fipspost_post_kdf_ctr", 241);
    v8 = 4294967221;
  }

  v33 = ccsha3_512_di();
  if (ccnistkdf_ctr_hmac_fixed(v33, 0x14uLL, "\xF7\x59\x17\x33\xC8\x56Y5e\x13\tu5\x19T\xD0\x15Z\xBF<", 0x3CuLL, "\x8E4~\xF5\x5D\x5F\x5E\x99\xEA\xB6\xDEpkQ\xDE\x7C\xE0\x04\xF3\x88(\x89\xE2\x59\xFFN\\\xFF\x10!g\xA5\xA4\xBDq\x15x\xD4\xCE\x17ݚ\xBEV\xE5\x1C\x1F-\xF9P\xE2\xFC\x81.\xC1\xB2\x17\xCA\x08\xD6\x014\xFED\xB0\xD8\xC4\x1B\x93\xF5\xFA\x64\xFB\x96\xF0\x0E\x5B4\xFED\xB0\xD8\xC4\x1B\x93\xF5\xFA\x64\xFB\x96\xF0\x0E\x5BFIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_hmac_fixed (SHA-1): %d\n", 0x10uLL, &v37))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_hmac_fixed (SHA3-512): %d\n");
    return 4294967224;
  }

  if (*v20 != v37 || *(v20 + 1) != v38)
  {
    v36 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed HMAC_SHA3_512 KAT\n", v36, "fipspost_post_kdf_ctr", 255);
    return 4294967221;
  }

  return v8;
}

void cczp_power_blinded_ws(uint64_t a1, uint64_t a2, void *a3, void *a4, unint64_t a5, uint64_t a6, unsigned int (**a7)(void, unint64_t, uint64_t))
{
  v21[1] = *MEMORY[0x29EDCA608];
  if (a5 <= 0x20)
  {
    v13 = 32;
  }

  else
  {
    v13 = a5;
  }

  v14 = cczp_n(a2);
  v15 = cczp_prime(a2);
  if ((ccn_cmp_public_value(v14, a4, v15) & 0x80000000) != 0)
  {
    v16 = *(a1 + 16);
    v17 = (*(a1 + 24))(a1, v14);
    v18 = (*(a1 + 24))(a1, v14);
    ccn_random_bits(32, v21, a7);
    if (!v19)
    {
      v21[0] |= 0x80000000uLL;
      ccn_mux_seed_mask(v21[0]);
      ccn_divmod_ws(a1, (v13 + 63) >> 6, a6, (v13 + 63) >> 6, v17, 1, &v20, v21);
      if (!cczp_power_ws(a1, a2, v18, a4, v13 - 31, v17) && !cczp_power_ws(a1, a2, a3, a4, 32, &v20) && !cczp_power_ws(a1, a2, v17, v18, 32, v21))
      {
        cczp_mul_ws(a1, a2);
      }
    }

    *(a1 + 16) = v16;
  }
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

uint64_t ltc_des_ecb_encrypt(uint64_t a1, uint64_t a2, unsigned int *a3, _DWORD *a4)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v6 = a2;
    do
    {
      --v6;
      v8 = *a3;
      v9 = a3[1];
      a3 += 2;
      v12 = bswap32(v8);
      v13 = bswap32(v9);
      desfunc(&v12, a1);
      v10 = bswap32(v13);
      *a4 = bswap32(v12);
      a4[1] = v10;
      a4 += 2;
    }

    while (v6);
  }

  return 0;
}

uint64_t ccn_mod_192_ws(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v16[3] = *MEMORY[0x29EDCA608];
  v7 = a4[4];
  v16[0] = a4[3];
  v16[1] = v16[0];
  v16[2] = 0;
  v15[0] = 0;
  v15[1] = v7;
  v15[2] = v7;
  v14[0] = a4[5];
  v14[1] = v14[0];
  v14[2] = v14[0];
  v8 = ccn_add_ws(a1, 3, a3, a4, v16);
  v9 = ccn_add_ws(a1, 3, a3, a3, v15) + v8;
  v13[0] = v9 + ccn_add_ws(a1, 3, a3, a3, v14);
  v13[1] = v13[0];
  v13[2] = 0;
  LOBYTE(v9) = ccn_add_ws(a1, 3, v13, a3, v13);
  v10 = cczp_prime(a2);
  v11 = ccn_sub_ws(a1, 3, a3, v13, v10);
  return ccn_mux(3, !v11 | v9, a3, a3, v13);
}

void *cczp_from_default_ws(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = cczp_n(a2);

  return ccn_set(v6, a3, a4);
}

uint64_t fipspost_post_rsa_enc_dec(char a1)
{
  v29 = *MEMORY[0x29EDCA608];
  v2 = sizeof_struct_cche_cipher_plain_ctx();
  v3 = sizeof_struct_ccpolyzp_po2cyc();
  v4 = (3 * v2 + (33 * v3 - 1) / v3 * v3 + 3 * (33 * v3 - 1) / v3 * v3 - v3 * (((33 * v3 - 1) / v3) >> 1) + 8 * (v3 + v3 * (((33 * v3 - 1) / v3) >> 1)) + 23) / v3;
  v5 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N(0x20uLL);
  v6 = v5 + 96;
  if (v5 < 0x120)
  {
    v6 = 384;
  }

  v7 = cc_malloc_clear(8 * (v6 + v4));
  v23[0] = v7;
  v8 = sizeof_struct_cche_cipher_plain_ctx();
  v9 = sizeof_struct_ccpolyzp_po2cyc();
  v10 = (3 * v8 + (33 * v9 - 1) / v9 * v9 + 3 * (33 * v9 - 1) / v9 * v9 - v9 * (((33 * v9 - 1) / v9) >> 1) + 8 * (v9 + v9 * (((33 * v9 - 1) / v9) >> 1)) + 23) / v9;
  v11 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N(0x20uLL);
  v12 = v11 + 96;
  if (v11 < 0x120)
  {
    v12 = 384;
  }

  v23[1] = v12 + v10;
  v24 = 0;
  v25 = cc_ws_alloc;
  v26 = cc_ws_free;
  if (!v7)
  {
    return 4294967283;
  }

  v13 = cc_ws_alloc(v23, 262);
  *v13 = 32;
  if (ccrsa_import_priv_ws(v23, v13, 1191, FIPS_RSA_OAEP_KEY))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccrsa_import_priv\n");
  }

  else
  {
    v27 = 256;
    v15 = ccrsa_ctx_public(v13);
    v16 = ccsha256_di();
    if (ccrsa_encrypt_oaep_ws(v23, v15, v16, &ccrng_zero, &v27, v28, 0x20uLL, &FIPS_RSA_OAEP_MESSAGE, 0, 0))
    {
      mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccrsa_encrypt_oaep\n");
    }

    else
    {
      if (!fipspost_post_rsa_oaep_decrypt_ws(v23, a1, v13, v27))
      {
        v17 = 0;
        goto LABEL_14;
      }

      mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: fipspost_post_rsa_oaep_consistency\n");
    }
  }

  v17 = -72;
LABEL_14:
  v24 = 0;
  v18 = v25(v23, 262);
  *v18 = 32;
  if (ccrsa_import_priv_ws(v23, v18, 1191, FIPS_RSA_OAEP_KEY))
  {
    v19 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccrsa_import_priv\n", v19, "fipspost_post_rsa_oaep_kat_ws", 135);
    v20 = -72;
  }

  else if (fipspost_post_rsa_oaep_decrypt_ws(v23, a1, v18, 0x100uLL))
  {
    v21 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: fipspost_post_rsa_oaep_kat\n", v21, "fipspost_post_rsa_oaep_kat_ws", 146);
    v20 = -75;
  }

  else
  {
    v20 = 0;
  }

  v14 = v20 | v17;
  v24 = 0;
  v26(v23);
  return v14;
}

uint64_t fipspost_post_rsa_oaep_decrypt_ws(uint64_t a1, char a2, uint64_t *a3, unint64_t a4)
{
  v17[32] = *MEMORY[0x29EDCA608];
  v15 = 256;
  __memcpy_chk();
  if ((a2 & 0x10) != 0)
  {
    v16[0] ^= 0xAAu;
  }

  v8 = *(a1 + 16);
  v9 = ccsha256_di();
  if (ccrsa_decrypt_oaep_blinded_ws(a1, &ccrng_zero, a3, v9, &v15, v17, a4, v16, 0, 0))
  {
    v10 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccrsa_decrypt_oaep\n", v10, "fipspost_post_rsa_oaep_decrypt_ws", 56);
    result = 4294967224;
  }

  else
  {
    if (v15 == 32)
    {
      if (v17[0] == 0xE7E6E5E4E3E2E1E0 && v17[1] == 0xEFEEEDECEBEAE9E8 && v17[2] == 0xF7F6F5F4F3F2F1F0 && v17[3] == 0xFFFEFDFCFBFAF9F8)
      {
        result = 0;
        goto LABEL_19;
      }

      mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: plaintext != message\n");
    }

    else
    {
      mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: len(plaintext) != len(message)\n");
    }

    result = 4294967221;
  }

LABEL_19:
  *(a1 + 16) = v8;
  return result;
}

uint64_t ccsae_generate_commitment_init(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 != CCSAE_STATE_INIT)
  {
    return 4294967210;
  }

  result = 0;
  *(a1 + 50) = -1;
  *(a1 + 48) = 256;
  *(a1 + 24) = CCSAE_STATE_COMMIT_INIT | v1;
  return result;
}

uint64_t ccsae_generate_commitment_partial(uint64_t **a1, const void *a2, size_t a3, void *a4, size_t a5, uint64_t a6, unint64_t a7, const void *a8, unint64_t a9, char a10)
{
  v25 = timingsafe_enable_if_supported();
  v18 = *a1;
  v19 = cc_malloc_clear(104 * **a1);
  v20 = 13 * *v18;
  v23[0] = v19;
  v23[1] = v20;
  v23[2] = 0;
  v23[3] = cc_ws_alloc;
  v24 = cc_ws_free;
  if (v19)
  {
    commitment_partial_ws = ccsae_generate_commitment_partial_ws(v23, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
    v24(v23);
  }

  else
  {
    commitment_partial_ws = 4294967283;
  }

  cc_disable_dit_with_sb(&v25);
  return commitment_partial_ws;
}

uint64_t ccsae_generate_commitment_partial_ws(uint64_t a1, uint64_t **a2, const void *a3, size_t a4, void *__s2, size_t a6, uint64_t a7, unint64_t a8, const void *a9, unint64_t a10, unsigned __int8 a11)
{
  v52 = *MEMORY[0x29EDCA608];
  v11 = *(a2 + 24);
  if (v11 != CCSAE_STATE_COMMIT_UPDATE && v11 != CCSAE_STATE_COMMIT_INIT)
  {
    return 4294967210;
  }

  v13 = a11;
  if (!a11)
  {
    return 4294967289;
  }

  result = 4294967289;
  if (a4 <= 0x10 && a6 <= 0x10 && a8 <= 0x40 && a10 <= 0x40)
  {
    v19 = *(a2 + 25);
    v20 = v19 - (*(a2 + 49) - 1);
    if (v19 == (*(a2 + 49) - 1))
    {
      return 0;
    }

    else
    {
      v46 = CCSAE_STATE_COMMIT_UPDATE;
      if (v20 <= a11)
      {
        v13 = v20;
      }

      v49 = v13;
      v23 = a2[2];
      v24 = *a2;
      v47 = a9;
      v48 = v24;
      v25 = *v24;
      v42 = a10;
      v43 = v25;
      v26 = *(a2 + 48);
      v27 = *(a2 + 50);
      v28 = ccsae_lexographic_order_key_internal(a3, a4, __s2, a6, v51);
      v45 = &v41;
      v44 = *(a1 + 16);
      MEMORY[0x2A1C7C4A8](v28);
      v30 = &v41 - v29;
      cchmac_init_internal(v23, (&v41 - v29), a6 + a4, v51);
      updated = cchmac_update_internal(v23, v30, a8, a7);
      if (v47)
      {
        updated = cchmac_update_internal(v23, v30, v42, v47);
      }

      MEMORY[0x2A1C7C4A8](updated);
      v33 = &v41 - v32;
      memcpy(&v41 - v32, v30, v34);
      v35 = v49;
      if (v49)
      {
        v36 = 0;
        v37 = a2 + 18;
        v47 = v33;
        v38 = v43;
        do
        {
          v50 = *(a2 + 49) + v36;
          memcpy(v30, v47, ((v23[1] + v23[2] + 19) & 0xFFFFFFFFFFFFFFF8) + v23[1]);
          cchmac_update_internal(v23, v30, 1, &v50);
          cchmac_final_internal(v23, v30, &v37[5 * **a2]);
          ccsae_gen_password_value_ws(a1, a2, &v37[5 * **a2], &v37[8 * **a2]);
          ccn_mux(v38, v27 & 1, a2 + 18, &v37[8 * **a2], a2 + 18);
          v39 = **a2;
          v26 = v27 & *(&v37[5 * v39 - 1] + *v23 + 7) & 1 | v26 & ~v27;
          v40 = ccsae_y2_from_x_ws(a1, v48, &v37[v39], a2 + 18);
          v35 = v49;
          v27 &= v40;
          ++v36;
        }

        while (v36 < v49);
      }

      *(a2 + 48) = v26;
      *(a2 + 50) = v27;
      *(a2 + 49) += v35;
      *(a2 + 24) |= v46;
      *(a1 + 16) = v44;
      if (*(a2 + 49) - 1 == *(a2 + 25))
      {
        return 0;
      }

      else
      {
        return 4294967163;
      }
    }
  }

  return result;
}

uint64_t ccsae_generate_commitment_finalize(void *a1, char *a2)
{
  v11 = timingsafe_enable_if_supported();
  v4 = *a1;
  v5 = cc_malloc_clear(216 * **a1);
  v6 = 27 * *v4;
  v9[0] = v5;
  v9[1] = v6;
  v9[2] = 0;
  v9[3] = cc_ws_alloc;
  v10 = cc_ws_free;
  if (v5)
  {
    commitment_finalize_ws = ccsae_generate_commitment_finalize_ws(v9, a1, a2);
    v10(v9);
  }

  else
  {
    commitment_finalize_ws = 4294967283;
  }

  cc_disable_dit_with_sb(&v11);
  return commitment_finalize_ws;
}

uint64_t ccsae_generate_commitment_finalize_ws(uint64_t a1, uint64_t a2, char *a3)
{
  if (*(a2 + 24) != CCSAE_STATE_COMMIT_UPDATE)
  {
    return 4294967210;
  }

  if (*(a2 + 49) <= *(a2 + 25))
  {
    return 4294967164;
  }

  if (*(a2 + 50))
  {
    return 4294967211;
  }

  v7 = *a2;
  v8 = *(a2 + 48);
  v9 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, 3 * **a2);
  result = cczp_sqrt_ws(a1, v7);
  if (!result)
  {
    cczp_from_ws(a1, v7);
    cczp_cond_negate(v7, *(a2 + 144 + 8 * **a2) & 1 ^ v8, (a2 + 144 + 8 * **a2), (a2 + 144 + 8 * **a2));
    result = ccec_projectify_ws(a1, v7);
    if (!result)
    {
      result = ccsae_generate_commitment_shared_ws(a1, a2, v10, a3);
      if (!result)
      {
        *(a2 + 28) = 1;
        *(a2 + 24) |= CCSAE_STATE_COMMIT_GENERATED;
      }
    }
  }

  *(a1 + 16) = v9;
  return result;
}

uint64_t ccsae_generate_commitment(uint64_t **a1, const void *a2, size_t a3, void *a4, size_t a5, uint64_t a6, unint64_t a7, const void *a8, unint64_t a9, char *a10)
{
  v30 = timingsafe_enable_if_supported();
  v17 = *a1;
  v18 = **a1;
  v19 = 13 * v18;
  v20 = 27 * v18;
  if (v19 > v20)
  {
    v20 = v19;
  }

  v21 = cc_malloc_clear(8 * v20);
  v22 = 27 * *v17;
  if (13 * *v17 > v22)
  {
    v22 = 13 * *v17;
  }

  v28[0] = v21;
  v28[1] = v22;
  v28[2] = 0;
  v28[3] = cc_ws_alloc;
  v29 = cc_ws_free;
  if (v21)
  {
    v23 = *(a1 + 24);
    if (v23 == CCSAE_STATE_INIT)
    {
      *(a1 + 50) = -1;
      *(a1 + 24) = 256;
      *(a1 + 24) = CCSAE_STATE_COMMIT_INIT | v23;
      commitment_partial_ws = ccsae_generate_commitment_partial_ws(v28, a1, a2, a3, a4, a5, a6, a7, a8, a9, 0x28u);
      if (!commitment_partial_ws)
      {
        commitment_partial_ws = ccsae_generate_commitment_finalize_ws(v28, a1, a10);
      }

      v25 = commitment_partial_ws;
    }

    else
    {
      v25 = 4294967210;
    }

    v29(v28);
  }

  else
  {
    v25 = 4294967283;
  }

  cc_disable_dit_with_sb(&v30);
  return v25;
}

uint64_t ccsae_generate_h2c_commit_finalize(void *a1, char *a2)
{
  v11 = timingsafe_enable_if_supported();
  v4 = *a1;
  v5 = cc_malloc_clear(192 * **a1);
  v6 = 24 * *v4;
  v9[0] = v5;
  v9[1] = v6;
  v9[2] = 0;
  v9[3] = cc_ws_alloc;
  v10 = cc_ws_free;
  if (v5)
  {
    h2c_commit_finalize_ws = ccsae_generate_h2c_commit_finalize_ws(v9, a1, a2);
    v10(v9);
  }

  else
  {
    h2c_commit_finalize_ws = 4294967283;
  }

  cc_disable_dit_with_sb(&v11);
  return h2c_commit_finalize_ws;
}

uint64_t ccsae_generate_h2c_commit_init(uint64_t **a1, const void *a2, size_t a3, void *a4, size_t a5, uint64_t a6, uint64_t a7)
{
  v25 = timingsafe_enable_if_supported();
  v13 = *a1;
  v14 = **a1;
  v15 = sizeof_struct_cche_galois_key();
  v16 = sizeof_struct_ccpolyzp_po2cyc();
  v23[0] = cc_malloc_clear(8 * ((v15 + v16 + 3 * v14 * v16 - 1) / v16 + 28 * v14));
  v17 = *v13;
  v18 = sizeof_struct_cche_galois_key();
  v19 = sizeof_struct_ccpolyzp_po2cyc();
  v23[1] = (v18 + v19 + 3 * v17 * v19 - 1) / v19 + 28 * v17;
  v23[2] = 0;
  v23[3] = cc_ws_alloc;
  v24 = cc_ws_free;
  if (v23[0])
  {
    h2c_commit_init_ws = ccsae_generate_h2c_commit_init_ws(v23, a1, a2, a3, a4, a5, a6, a7);
    v24(v23);
  }

  else
  {
    h2c_commit_init_ws = 4294967283;
  }

  cc_disable_dit_with_sb(&v25);
  return h2c_commit_init_ws;
}

uint64_t ccsae_generate_h2c_commit_init_ws(uint64_t a1, uint64_t a2, const void *a3, size_t a4, void *a5, size_t a6, uint64_t a7, uint64_t a8)
{
  v33 = *MEMORY[0x29EDCA608];
  if (*(a2 + 24) != CCSAE_STATE_INIT)
  {
    return 4294967210;
  }

  v13 = *(a2 + 16);
  v14 = *a2;
  v22 = *(a2 + 8);
  v15 = **a2;
  v16 = *v13;
  memset(v29, 0, sizeof(v29));
  v28 = *(a1 + 16);
  v17 = (*(a1 + 24))(a1, v15);
  v24 = (*(a1 + 24))(a1, v15);
  v23 = (*(a1 + 24))(a1, (24 * v15 + 23) >> 3);
  v21 = (*(a1 + 24))(a1, 3 * v15);
  result = 4294967289;
  if (a4 <= 0x10 && a6 <= 0x10)
  {
    v19 = (v16 + 7) >> 3;
    ccsae_lexographic_order_key_internal(a3, a4, a5, a6, v32);
    cchmac_internal(v13, *v13, v29, a6 + a4, v32, v30);
    result = ccn_read_uint_internal(v19, v31, *v13, v30);
    if (!result)
    {
      v20 = cczp_prime(&v14[5 * v15 + 4]);
      ccn_set(v15, v17, v20);
      *v17 &= ~1uLL;
      ccn_divmod_ws(a1, v19, v31, 0, 0, v15, v24, v17);
      ccn_add1_ws(a1, v15, v24, v24, 1);
      *v23 = v14;
      result = ccec_import_pub_ws(a1, v14, a8, a7, v23);
      if (!result)
      {
        result = ccec_validate_point_and_projectify_ws(a1, v14, v21, (v23 + 2));
        if (!result)
        {
          result = ccec_mult_blinded_ws(a1, v14, a2 + 144, v24, v21, v22);
          if (!result)
          {
            *(a2 + 24) |= CCSAE_STATE_COMMIT_UPDATE;
          }
        }
      }
    }
  }

  *(a1 + 16) = v28;
  return result;
}

uint64_t ccsae_generate_h2c_commit(uint64_t **a1, const void *a2, size_t a3, void *a4, size_t a5, uint64_t a6, uint64_t a7, char *a8)
{
  v32 = timingsafe_enable_if_supported();
  v13 = **a1;
  v14 = sizeof_struct_cche_galois_key();
  v15 = sizeof_struct_ccpolyzp_po2cyc();
  v16 = 3 * v13;
  v17 = 28 * v13;
  v18 = (v14 + v15 + v15 * 3 * v13 - 1) / v15 + 28 * v13;
  v19 = 24 * v13;
  if (v18 <= 24 * v13)
  {
    v18 = 24 * v13;
  }

  v20 = cc_malloc_clear(8 * v18);
  v30[0] = v20;
  v21 = sizeof_struct_cche_galois_key();
  v22 = sizeof_struct_ccpolyzp_po2cyc();
  v23 = (v21 + v22 + v22 * v16 - 1) / v22 + v17;
  if (v23 <= 8 * v16)
  {
    v23 = v19;
  }

  v30[1] = v23;
  v30[2] = 0;
  v30[3] = cc_ws_alloc;
  v31 = cc_ws_free;
  if (v20)
  {
    h2c_commit_init_ws = ccsae_generate_h2c_commit_init_ws(v30, a1, a2, a3, a4, a5, a6, a7);
    if (!h2c_commit_init_ws)
    {
      h2c_commit_init_ws = ccsae_generate_h2c_commit_finalize_ws(v30, a1, a8);
    }

    v25 = h2c_commit_init_ws;
    v31(v30);
  }

  else
  {
    v25 = 4294967283;
  }

  cc_disable_dit_with_sb(&v32);
  return v25;
}

uint64_t cche_serialize_ciphertext_coeff_nbytes_internal(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 2;
  }

  v4 = *(a1 + 24);
  v5 = 2;
  v6 = a2;
  do
  {
    if (a2)
    {
      v7 = *v6;
    }

    else
    {
      v7 = 0;
    }

    v5 += ccpolyzp_po2cyc_serialize_poly_nbytes(v4, v7);
    ++v6;
    --v2;
  }

  while (v2);
  return v5;
}

uint64_t cche_serialize_ciphertext_coeff_nbytes(uint64_t a1, unsigned int *a2)
{
  v6 = timingsafe_enable_if_supported();
  v4 = cche_serialize_ciphertext_coeff_nbytes_internal(a1, a2);
  cc_disable_dit_with_sb(&v6);
  return v4;
}

uint64_t cche_serialize_ciphertext_eval_nbytes(uint64_t a1)
{
  v6 = timingsafe_enable_if_supported();
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 24);
    v4 = 2;
    do
    {
      v4 += ccpolyzp_po2cyc_serialize_poly_nbytes(v3, 0);
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = 2;
  }

  cc_disable_dit_with_sb(&v6);
  return v4;
}

uint64_t cche_serialize_seeded_ciphertext_coeff_nbytes(uint64_t a1)
{
  v4 = timingsafe_enable_if_supported();
  v2 = ccpolyzp_po2cyc_serialize_poly_nbytes(*(a1 + 24), 0);
  cc_disable_dit_with_sb(&v4);
  return v2;
}

uint64_t cche_serialize_seeded_ciphertext_eval_nbytes(uint64_t a1)
{
  v4 = timingsafe_enable_if_supported();
  v2 = ccpolyzp_po2cyc_serialize_poly_nbytes(*(a1 + 24), 0);
  cc_disable_dit_with_sb(&v4);
  return v2;
}

uint64_t cche_serialize_ciphertext_coeff_max_nskip_lsbs(_DWORD *a1, unsigned int *a2)
{
  v5 = timingsafe_enable_if_supported();
  cche_serialize_ciphertext_coeff_max_nskip_lsbs_internal(a1, a2);
  return cc_disable_dit_with_sb(&v5);
}

uint64_t cche_serialize_ciphertext_coeff_max_nskip_lsbs_internal(_DWORD *a1, unsigned int *a2)
{
  if (a2[2])
  {
    v4 = 0;
    do
    {
      a1[v4++] = 0;
      v5 = a2[2];
    }

    while (v4 < v5);
  }

  else
  {
    LODWORD(v5) = 0;
  }

  result = cche_ciphertext_fresh_npolys();
  if (v5 == result)
  {
    v7 = *a2;
    *a1 = *(*a2 + 20);
    a1[1] = *(v7 + 24);
  }

  return result;
}

uint64_t cche_serialize_ciphertext_coeff(uint64_t a1, _WORD *a2, uint64_t *a3, unsigned int *a4)
{
  v15 = timingsafe_enable_if_supported();
  v8 = cche_param_ctx_polynomial_degree(*a3);
  v9 = CCPOLYZP_PO2CYC_SERIALIZE_POLY_WORKSPACE_N(v8);
  v13[0] = cc_malloc_clear(8 * v9);
  v10 = cche_param_ctx_polynomial_degree(*a3);
  v13[1] = CCPOLYZP_PO2CYC_SERIALIZE_POLY_WORKSPACE_N(v10);
  v13[2] = 0;
  v13[3] = cc_ws_alloc;
  v14 = cc_ws_free;
  if (v13[0])
  {
    v11 = cche_serialize_ciphertext_coeff_ws(v13, a1, a2, a3, a4);
    v14(v13);
  }

  else
  {
    v11 = 4294967283;
  }

  cc_disable_dit_with_sb(&v15);
  return v11;
}

uint64_t cche_serialize_ciphertext_eval(uint64_t a1, _WORD *a2, uint64_t *a3)
{
  v13 = timingsafe_enable_if_supported();
  v6 = cche_param_ctx_polynomial_degree(*a3);
  v7 = CCPOLYZP_PO2CYC_SERIALIZE_POLY_WORKSPACE_N(v6);
  v11[0] = cc_malloc_clear(8 * v7);
  v8 = cche_param_ctx_polynomial_degree(*a3);
  v11[1] = CCPOLYZP_PO2CYC_SERIALIZE_POLY_WORKSPACE_N(v8);
  v11[2] = 0;
  v11[3] = cc_ws_alloc;
  v12 = cc_ws_free;
  if (v11[0])
  {
    v9 = cche_serialize_ciphertext_coeff_ws(v11, a1, a2, a3, 0);
    v12(v11);
  }

  else
  {
    v9 = 4294967283;
  }

  cc_disable_dit_with_sb(&v13);
  return v9;
}

uint64_t cche_deserialize_ciphertext_coeff(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, int a5, unsigned int a6, uint64_t a7, unsigned int *a8)
{
  v31 = timingsafe_enable_if_supported();
  v16 = cche_param_ctx_polynomial_degree(a4);
  v17 = CCPOLYZP_PO2CYC_SERIALIZE_POLY_WORKSPACE_N(v16);
  v29[0] = cc_malloc_clear(8 * v17);
  v18 = cche_param_ctx_polynomial_degree(a4);
  v29[1] = CCPOLYZP_PO2CYC_SERIALIZE_POLY_WORKSPACE_N(v18);
  v29[2] = 0;
  v29[3] = cc_ws_alloc;
  v30 = cc_ws_free;
  if (v29[0])
  {
    v21 = cche_param_ctx_chain_const(a4);
    v22 = *v21;
    v23 = sizeof_struct_ccpolyzp_po2cyc_ctx();
    if (v22 >= 0x80)
    {
      v24 = 128;
    }

    else
    {
      v24 = v22;
    }

    v25 = &v21[2 * (((v23 + 7) >> 3) + 2 * (v22 + ((sizeof_struct_ccrns_mul_modulus() + 7) >> 3) * v24) + 6) * (v21[1] - a5) + 2];
    *a1 = a4;
    *(a1 + 8) = a6;
    *(a1 + 16) = 1;
    *(a1 + 24) = v25;
    v26 = (a1 + 24);
    if (a6 >= 2)
    {
      v27 = 1;
      do
      {
        v28 = *v26;
        v26[((v28[1] * *v28) + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3)) * v27++] = v25;
      }

      while (a6 != v27);
    }

    v19 = cche_deserialize_ciphertext_coeff_ws(v29, a1, a2, a3, a8);
    *(a1 + 16) = a7;
    v30(v29);
  }

  else
  {
    v19 = 4294967283;
  }

  cc_disable_dit_with_sb(&v31);
  return v19;
}

uint64_t cche_deserialize_ciphertext_eval(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, int a5, unsigned int a6, uint64_t a7)
{
  v29 = timingsafe_enable_if_supported();
  v14 = cche_param_ctx_polynomial_degree(a4);
  v15 = CCPOLYZP_PO2CYC_SERIALIZE_POLY_WORKSPACE_N(v14);
  v27[0] = cc_malloc_clear(8 * v15);
  v16 = cche_param_ctx_polynomial_degree(a4);
  v27[1] = CCPOLYZP_PO2CYC_SERIALIZE_POLY_WORKSPACE_N(v16);
  v27[2] = 0;
  v27[3] = cc_ws_alloc;
  v28 = cc_ws_free;
  if (v27[0])
  {
    v19 = cche_param_ctx_chain_const(a4);
    v20 = *v19;
    v26 = (sizeof_struct_ccpolyzp_po2cyc_ctx() + 7) >> 3;
    if (v20 >= 0x80)
    {
      v21 = 128;
    }

    else
    {
      v21 = v20;
    }

    v22 = &v19[2 * (v26 + 2 * (v20 + ((sizeof_struct_ccrns_mul_modulus() + 7) >> 3) * v21) + 6) * (v19[1] - a5) + 2];
    *a1 = a4;
    *(a1 + 8) = a6;
    *(a1 + 16) = 1;
    *(a1 + 24) = v22;
    v23 = (a1 + 24);
    if (a6 >= 2)
    {
      v24 = 1;
      do
      {
        v25 = *v23;
        v23[((v25[1] * *v25) + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3)) * v24++] = v22;
      }

      while (a6 != v24);
    }

    v17 = cche_deserialize_ciphertext_coeff_ws(v27, a1, a2, a3, 0);
    *(a1 + 16) = a7;
    v28(v27);
  }

  else
  {
    v17 = 4294967283;
  }

  cc_disable_dit_with_sb(&v29);
  return v17;
}

uint64_t cche_serialize_seeded_ciphertext_coeff(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = timingsafe_enable_if_supported();
  v6 = cche_param_ctx_polynomial_degree(*a3);
  v7 = CCPOLYZP_PO2CYC_SERIALIZE_POLY_WORKSPACE_N(v6);
  v11[0] = cc_malloc_clear(8 * v7);
  v8 = cche_param_ctx_polynomial_degree(*a3);
  v11[1] = CCPOLYZP_PO2CYC_SERIALIZE_POLY_WORKSPACE_N(v8);
  v11[2] = 0;
  v11[3] = cc_ws_alloc;
  v12 = cc_ws_free;
  if (v11[0])
  {
    v9 = ccpolyzp_po2cyc_serialize_poly_ws(v11, a1, a2, 0, (a3 + 24));
    v12(v11);
  }

  else
  {
    v9 = 4294967283;
  }

  cc_disable_dit_with_sb(&v13);
  return v9;
}

uint64_t cche_serialize_seeded_ciphertext_eval(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = timingsafe_enable_if_supported();
  v6 = cche_param_ctx_polynomial_degree(*a3);
  v7 = CCPOLYZP_PO2CYC_SERIALIZE_POLY_WORKSPACE_N(v6);
  v11[0] = cc_malloc_clear(8 * v7);
  v8 = cche_param_ctx_polynomial_degree(*a3);
  v11[1] = CCPOLYZP_PO2CYC_SERIALIZE_POLY_WORKSPACE_N(v8);
  v11[2] = 0;
  v11[3] = cc_ws_alloc;
  v12 = cc_ws_free;
  if (v11[0])
  {
    v9 = ccpolyzp_po2cyc_serialize_poly_ws(v11, a1, a2, 0, (a3 + 24));
    v12(v11);
  }

  else
  {
    v9 = 4294967283;
  }

  cc_disable_dit_with_sb(&v13);
  return v9;
}

unint64_t CCHE_DESERIALIZE_SEEDED_CIPHERTEXT_EVAL_WORKSPACE_N(unint64_t a1)
{
  v2 = CCPOLYZP_PO2CYC_SERIALIZE_POLY_WORKSPACE_N(a1);
  v3 = CCPOLYZP_PO2CYC_RANDOM_UNIFORM_WORKSPACE_N(a1);
  v4 = sizeof_struct_ccpolyzp_po2cyc_block_rng_state();
  v5 = sizeof_struct_ccpolyzp_po2cyc();
  if (v2 <= (v4 + v5 - 1) / v5 + v3)
  {
    return (v4 + v5 - 1) / v5 + v3;
  }

  else
  {
    return v2;
  }
}

uint64_t cche_deserialize_seeded_ciphertext_coeff(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v30 = timingsafe_enable_if_supported();
  v13 = cche_param_ctx_polynomial_degree(a5);
  v14 = CCHE_DESERIALIZE_SEEDED_CIPHERTEXT_EVAL_WORKSPACE_N(v13);
  v28[0] = cc_malloc_clear(8 * v14);
  v15 = cche_param_ctx_polynomial_degree(a5);
  v28[1] = CCHE_DESERIALIZE_SEEDED_CIPHERTEXT_EVAL_WORKSPACE_N(v15);
  v28[2] = 0;
  v28[3] = cc_ws_alloc;
  v29 = cc_ws_free;
  if (v28[0])
  {
    v18 = cche_param_ctx_chain_const(a5);
    v19 = *v18;
    v27 = (sizeof_struct_ccpolyzp_po2cyc_ctx() + 7) >> 3;
    if (v19 >= 0x80)
    {
      v20 = 128;
    }

    else
    {
      v20 = v19;
    }

    v21 = &v18[2 * (v27 + 2 * (v19 + ((sizeof_struct_ccrns_mul_modulus() + 7) >> 3) * v20) + 6) * (v18[1] - a6) + 2];
    v22 = cche_ciphertext_fresh_npolys();
    *a1 = a5;
    *(a1 + 8) = v22;
    *(a1 + 16) = 1;
    *(a1 + 24) = v21;
    v23 = (a1 + 24);
    if (v22 >= 2)
    {
      v24 = v22;
      for (i = 1; i != v24; ++i)
      {
        v26 = *v23;
        v23[((v26[1] * *v26) + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3)) * i] = v21;
      }
    }

    v16 = cche_deserialize_seeded_ciphertext_coeff_ws(v28, a1, a2, a3);
    *(a1 + 16) = a7;
    v29(v28);
  }

  else
  {
    v16 = 4294967283;
  }

  cc_disable_dit_with_sb(&v30);
  return v16;
}

uint64_t cche_deserialize_seeded_ciphertext_eval(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v30 = timingsafe_enable_if_supported();
  v13 = cche_param_ctx_polynomial_degree(a5);
  v14 = CCHE_DESERIALIZE_SEEDED_CIPHERTEXT_EVAL_WORKSPACE_N(v13);
  v28[0] = cc_malloc_clear(8 * v14);
  v15 = cche_param_ctx_polynomial_degree(a5);
  v28[1] = CCHE_DESERIALIZE_SEEDED_CIPHERTEXT_EVAL_WORKSPACE_N(v15);
  v28[2] = 0;
  v28[3] = cc_ws_alloc;
  v29 = cc_ws_free;
  if (v28[0])
  {
    v18 = cche_param_ctx_chain_const(a5);
    v19 = *v18;
    v27 = (sizeof_struct_ccpolyzp_po2cyc_ctx() + 7) >> 3;
    if (v19 >= 0x80)
    {
      v20 = 128;
    }

    else
    {
      v20 = v19;
    }

    v21 = &v18[2 * (v27 + 2 * (v19 + ((sizeof_struct_ccrns_mul_modulus() + 7) >> 3) * v20) + 6) * (v18[1] - a6) + 2];
    v22 = cche_ciphertext_fresh_npolys();
    *a1 = a5;
    *(a1 + 8) = v22;
    *(a1 + 16) = 1;
    *(a1 + 24) = v21;
    v23 = (a1 + 24);
    if (v22 >= 2)
    {
      v24 = v22;
      for (i = 1; i != v24; ++i)
      {
        v26 = *v23;
        v23[((v26[1] * *v26) + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3)) * i] = v21;
      }
    }

    v16 = cche_deserialize_seeded_ciphertext_eval_ws(v28, a1, a2, a3);
    *(a1 + 16) = a7;
    v29(v28);
  }

  else
  {
    v16 = 4294967283;
  }

  cc_disable_dit_with_sb(&v30);
  return v16;
}

uint64_t cche_bytes_to_coeffs(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = ccpolyzp_po2cyc_bytes_to_coeffs(a1, a2, a3, a4, a5, 0);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t cche_coeffs_to_bytes(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = ccpolyzp_po2cyc_coeffs_to_bytes(a1, a2, a3, a4, a5, 0);
  cc_disable_dit_with_sb(&v12);
  return v10;
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

void *ccsha1_di()
{
  if (fipspost_trace_is_active())
  {
    fipspost_trace_call("ccsha1_di");
  }

  return &ccsha1_vng_arm_di;
}

uint64_t ccdes_key_is_weak(uint64_t a1, uint64_t a2)
{
  v8 = timingsafe_enable_if_supported();
  if (a2 == 8)
  {
    v4 = &weak_keys;
    v5 = 16;
    while (cc_cmp_safe_internal(8, v4, a1))
    {
      v4 += 8;
      if (!--v5)
      {
        v6 = 0;
        goto LABEL_7;
      }
    }
  }

  v6 = 0xFFFFFFFFLL;
LABEL_7:
  cc_disable_dit_with_sb(&v8);
  return v6;
}

uint64_t ccdes_key_set_odd_parity(_BYTE *a1, uint64_t a2)
{
  for (i = timingsafe_enable_if_supported(); a2; --a2)
  {
    *a1 = odd_parity[*a1];
    ++a1;
  }

  return cc_disable_dit_with_sb(&i);
}

__int128 *ccsha512_ltc_compress(__int128 *result, uint64_t a2, uint64_t a3)
{
  for (i = *MEMORY[0x29EDCA608]; a2; --a2)
  {
    v3 = 0;
    v4 = result[1];
    v41 = *result;
    v42 = v4;
    v5 = result[3];
    v43 = result[2];
    v44 = v5;
    do
    {
      v38[v3] = bswap64(*(a3 + v3 * 8));
      ++v3;
    }

    while (v3 != 16);
    v6 = v38[0];
    v7 = &v40;
    v8 = 64;
    do
    {
      v9 = *(v7 - 15);
      *v7 = (__ROR8__(*(v7 - 2), 19) ^ __ROR8__(*(v7 - 2), 61) ^ (*(v7 - 2) >> 6)) + *(v7 - 7) + v6 + (__ROR8__(v9, 1) ^ __ROR8__(v9, 8) ^ (v9 >> 7));
      ++v7;
      v6 = v9;
      --v8;
    }

    while (v8);
    v10 = *(&v44 + 1);
    v11 = v44;
    v13 = *(&v43 + 1);
    v12 = v43;
    v15 = *(&v41 + 1);
    v14 = v41;
    v16 = &xmmword_299DA9A50;
    v17 = -8;
    v18 = &v39;
    v20 = *(&v42 + 1);
    v19 = v42;
    do
    {
      v21 = (__ROR8__(v12, 14) ^ __ROR8__(v12, 18) ^ __ROR8__(v12, 41)) + v10 + *(v16 - 4) + *(v18 - 4) + (v13 & v12 | v11 & ~v12);
      v22 = v20 + v21;
      v23 = v21 + (__ROR8__(v14, 28) ^ __ROR8__(v14, 34) ^ __ROR8__(v14, 39)) + ((v15 | v14) & v19 | v15 & v14);
      v24 = (v12 & v22 | v13 & ~v22) + v11 + *(v16 - 3) + *(v18 - 3) + (__ROR8__(v22, 14) ^ __ROR8__(v22, 18) ^ __ROR8__(v22, 41));
      v25 = v24 + v19;
      v26 = (__ROR8__(v23, 28) ^ __ROR8__(v23, 34) ^ __ROR8__(v23, 39)) + ((v23 | v14) & v15 | v23 & v14) + v24;
      v27 = *(v16 - 2) + v13 + *(v18 - 2) + (v22 & v25 | v12 & ~v25) + (__ROR8__(v25, 14) ^ __ROR8__(v25, 18) ^ __ROR8__(v25, 41));
      v28 = v27 + v15;
      v29 = (__ROR8__(v26, 28) ^ __ROR8__(v26, 34) ^ __ROR8__(v26, 39)) + ((v26 | v23) & v14 | v26 & v23) + v27;
      v30 = *(v16 - 1) + v12 + *(v18 - 1) + (v25 & v28 | v22 & ~v28) + (__ROR8__(v28, 14) ^ __ROR8__(v28, 18) ^ __ROR8__(v28, 41));
      v31 = v30 + v14;
      v32 = (__ROR8__(v29, 28) ^ __ROR8__(v29, 34) ^ __ROR8__(v29, 39)) + ((v29 | v26) & v23 | v29 & v26) + v30;
      v33 = *v16 + *v18 + v22 + (v28 & v31 | v25 & ~v31) + (__ROR8__(v31, 14) ^ __ROR8__(v31, 18) ^ __ROR8__(v31, 41));
      v10 = v33 + v23;
      v20 = (__ROR8__(v32, 28) ^ __ROR8__(v32, 34) ^ __ROR8__(v32, 39)) + ((v32 | v29) & v26 | v32 & v29) + v33;
      v34 = *(v16 + 1) + v18[1] + v25 + (v31 & v10 | v28 & ~v10) + (__ROR8__(v10, 14) ^ __ROR8__(v10, 18) ^ __ROR8__(v10, 41));
      v11 = v34 + v26;
      v19 = (__ROR8__(v20, 28) ^ __ROR8__(v20, 34) ^ __ROR8__(v20, 39)) + ((v20 | v32) & v29 | v20 & v32) + v34;
      v35 = *(v16 + 2) + v18[2] + v28 + (v10 & v11 | v31 & ~v11) + (__ROR8__(v11, 14) ^ __ROR8__(v11, 18) ^ __ROR8__(v11, 41));
      v13 = v35 + v29;
      v15 = (__ROR8__(v19, 28) ^ __ROR8__(v19, 34) ^ __ROR8__(v19, 39)) + ((v19 | v20) & v32 | v19 & v20) + v35;
      v36 = *(v16 + 3) + v18[3] + v31 + (v11 & v13 | v10 & ~v13) + (__ROR8__(v13, 14) ^ __ROR8__(v13, 18) ^ __ROR8__(v13, 41));
      v12 = v36 + v32;
      v14 = (__ROR8__(v15, 28) ^ __ROR8__(v15, 34) ^ __ROR8__(v15, 39)) + ((v15 | v19) & v20 | v15 & v19) + v36;
      v17 += 8;
      v18 += 8;
      v16 += 4;
    }

    while (v17 < 0x48);
    v37 = 0;
    *&v44 = v11;
    *(&v44 + 1) = v10;
    *&v43 = v12;
    *(&v43 + 1) = v13;
    *&v41 = v14;
    *(&v41 + 1) = v15;
    *&v42 = v19;
    *(&v42 + 1) = v20;
    do
    {
      result[v37] = vaddq_s64(*(&v41 + v37 * 16), result[v37]);
      ++v37;
    }

    while (v37 != 4);
    a3 += 128;
  }

  return result;
}

uint64_t ccsha512_final(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[1] = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = a2 + v6 + 8;
  if (v5 <= *(v7 + v5))
  {
    *(v7 + v5) = 0;
  }

  MEMORY[0x2A1C7C4A8](a1);
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

uint64_t ccz_cmp(uint64_t a1, uint64_t a2)
{
  v12 = timingsafe_enable_if_supported();
  v4 = ccz_sign(a1);
  if (v4 == ccz_sign(a2))
  {
    v5 = ccz_n(a1);
    v6 = *(a1 + 24);
    v7 = ccz_n(a2);
    v8 = ccn_cmpn_internal(v5, v6, v7, *(a2 + 24));
    v9 = ccz_sign(a1) * v8;
  }

  else if (ccz_n(a2) || ccz_n(a1))
  {
    v10 = ccz_sign(a1);
    if (v10 < ccz_sign(a2))
    {
      v9 = 0xFFFFFFFFLL;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  cc_disable_dit_with_sb(&v12);
  return v9;
}

int8x16_t *ccaes_arm_decrypt_cbc(int8x16_t *result, int8x16_t *a2, uint64_t a3, int8x16_t *a4, int8x16_t *a5)
{
  if (a3)
  {
    v5 = result[15].u32[0];
    if (v5 == 160 || v5 == 192 || v5 == 224)
    {
      v6 = *a2;
      v7 = a3 < 16;
      for (i = a3 - 16; !v7; i -= 16)
      {
        v9 = *a4;
        a4 += 16;
        v10 = v9;
        v11 = a4[-13];
        v12 = a4[-12];
        v13 = a4[-11];
        v14 = a4[-10];
        v15 = a4[-9];
        v16 = a4[-8];
        v17 = a4[-7];
        v18 = a4[-6];
        _Q16 = *(result + v5);
        v20 = a4[-5];
        v21 = *result;
        v22 = a4[-4];
        v23 = v5 - 16;
        do
        {
          __asm
          {
            AESD            V0.16B, V16.16B
            AESIMC          V0.16B, V0.16B
            AESD            V1.16B, V16.16B
            AESIMC          V1.16B, V1.16B
            AESD            V2.16B, V16.16B
            AESIMC          V2.16B, V2.16B
            AESD            V3.16B, V16.16B
            AESIMC          V3.16B, V3.16B
            AESD            V4.16B, V16.16B
            AESIMC          V4.16B, V4.16B
            AESD            V5.16B, V16.16B
            AESIMC          V5.16B, V5.16B
            AESD            V6.16B, V16.16B
            AESIMC          V6.16B, V6.16B
            AESD            V7.16B, V16.16B
            AESIMC          V7.16B, V7.16B
            AESD            V8.16B, V16.16B
            AESIMC          V8.16B, V8.16B
            AESD            V9.16B, V16.16B
            AESIMC          V9.16B, V9.16B
            AESD            V10.16B, V16.16B
            AESIMC          V10.16B, V10.16B
            AESD            V11.16B, V16.16B
            AESIMC          V11.16B, V11.16B
            AESD            V12.16B, V16.16B
            AESIMC          V12.16B, V12.16B
            AESD            V13.16B, V16.16B
            AESIMC          V13.16B, V13.16B
            AESD            V14.16B, V16.16B
            AESIMC          V14.16B, V14.16B
            AESD            V15.16B, V16.16B
            AESIMC          V15.16B, V15.16B
          }

          _Q16 = *(result + v23);
          v7 = v23 <= 16;
          v23 -= 16;
        }

        while (!v7);
        a5 += 16;
        __asm
        {
          AESD            V0.16B, V16.16B
          AESD            V1.16B, V16.16B
        }

        v62 = veorq_s8(veorq_s8(_Q0, v21), v6);
        v6 = a4[-1];
        __asm { AESD            V2.16B, V16.16B }

        v64 = veorq_s8(veorq_s8(_Q1, v21), v10);
        v65 = a4[-3];
        __asm { AESD            V3.16B, V16.16B }

        v67 = veorq_s8(veorq_s8(_Q2, v21), a4[-15]);
        v68 = a4[-2];
        __asm { AESD            V4.16B, V16.16B }

        v70 = veorq_s8(veorq_s8(_Q3, v21), a4[-14]);
        a5[-16] = v62;
        __asm { AESD            V5.16B, V16.16B }

        a5[-15] = v64;
        __asm { AESD            V6.16B, V16.16B }

        a5[-14] = v67;
        __asm { AESD            V7.16B, V16.16B }

        a5[-13] = v70;
        __asm { AESD            V8.16B, V16.16B }

        a5[-12] = veorq_s8(veorq_s8(_Q4, v21), v11);
        __asm { AESD            V9.16B, V16.16B }

        a5[-11] = veorq_s8(veorq_s8(_Q5, v21), v12);
        __asm { AESD            V10.16B, V16.16B }

        a5[-10] = veorq_s8(veorq_s8(_Q6, v21), v13);
        __asm { AESD            V11.16B, V16.16B }

        a5[-9] = veorq_s8(veorq_s8(_Q7, v21), v14);
        __asm { AESD            V12.16B, V16.16B }

        a5[-8] = veorq_s8(veorq_s8(_Q8, v21), v15);
        __asm { AESD            V13.16B, V16.16B }

        a5[-7] = veorq_s8(veorq_s8(_Q9, v21), v16);
        __asm { AESD            V14.16B, V16.16B }

        a5[-6] = veorq_s8(veorq_s8(_Q10, v21), v17);
        __asm { AESD            V15.16B, V16.16B }

        a5[-5] = veorq_s8(veorq_s8(_Q11, v21), v18);
        a5[-4] = veorq_s8(veorq_s8(_Q12, v21), v20);
        a5[-3] = veorq_s8(veorq_s8(_Q13, v21), v22);
        a5[-2] = veorq_s8(veorq_s8(_Q14, v21), v65);
        a5[-1] = veorq_s8(veorq_s8(_Q15, v21), v68);
        v7 = i < 16;
      }

      v7 = i < -8;
      for (j = i + 8; !v7; j -= 8)
      {
        v83 = *a4;
        a4 += 8;
        v84 = v83;
        v85 = a4[-7];
        v86 = a4[-6];
        v87 = a4[-5];
        v88 = a4[-4];
        _Q16 = *(result + v5);
        v90 = a4[-3];
        v91 = *result;
        v92 = a4[-2];
        v93 = v5 - 16;
        do
        {
          __asm
          {
            AESD            V0.16B, V16.16B
            AESIMC          V0.16B, V0.16B
            AESD            V1.16B, V16.16B
            AESIMC          V1.16B, V1.16B
            AESD            V2.16B, V16.16B
            AESIMC          V2.16B, V2.16B
            AESD            V3.16B, V16.16B
            AESIMC          V3.16B, V3.16B
            AESD            V4.16B, V16.16B
            AESIMC          V4.16B, V4.16B
            AESD            V5.16B, V16.16B
            AESIMC          V5.16B, V5.16B
            AESD            V6.16B, V16.16B
            AESIMC          V6.16B, V6.16B
            AESD            V7.16B, V16.16B
            AESIMC          V7.16B, V7.16B
          }

          _Q16 = *(result + v93);
          v7 = v93 <= 16;
          v93 -= 16;
        }

        while (!v7);
        a5 += 8;
        __asm
        {
          AESD            V0.16B, V16.16B
          AESD            V1.16B, V16.16B
        }

        v112 = veorq_s8(veorq_s8(_Q0, v91), v6);
        v6 = a4[-1];
        __asm { AESD            V2.16B, V16.16B }

        a5[-8] = v112;
        __asm { AESD            V3.16B, V16.16B }

        a5[-7] = veorq_s8(veorq_s8(_Q1, v91), v84);
        __asm { AESD            V4.16B, V16.16B }

        a5[-6] = veorq_s8(veorq_s8(_Q2, v91), v85);
        __asm { AESD            V5.16B, V16.16B }

        a5[-5] = veorq_s8(veorq_s8(_Q3, v91), v86);
        __asm { AESD            V6.16B, V16.16B }

        a5[-4] = veorq_s8(veorq_s8(_Q4, v91), v87);
        __asm { AESD            V7.16B, V16.16B }

        a5[-3] = veorq_s8(veorq_s8(_Q5, v91), v88);
        a5[-2] = veorq_s8(veorq_s8(_Q6, v91), v90);
        a5[-1] = veorq_s8(veorq_s8(_Q7, v91), v92);
        v7 = j < 8;
      }

      v7 = j < -4;
      for (k = j + 4; !v7; k -= 4)
      {
        v120 = *a4;
        a4 += 4;
        v121 = v120;
        v122 = a4[-3];
        _Q16 = *(result + v5);
        v124 = a4[-2];
        v125 = *result;
        v126 = v5 - 16;
        do
        {
          __asm
          {
            AESD            V0.16B, V16.16B
            AESIMC          V0.16B, V0.16B
            AESD            V1.16B, V16.16B
            AESIMC          V1.16B, V1.16B
            AESD            V2.16B, V16.16B
            AESIMC          V2.16B, V2.16B
            AESD            V3.16B, V16.16B
            AESIMC          V3.16B, V3.16B
          }

          _Q16 = *(result + v126);
          v7 = v126 <= 16;
          v126 -= 16;
        }

        while (!v7);
        a5 += 4;
        __asm
        {
          AESD            V0.16B, V16.16B
          AESD            V1.16B, V16.16B
        }

        v137 = veorq_s8(veorq_s8(_Q0, v125), v6);
        v6 = a4[-1];
        __asm { AESD            V2.16B, V16.16B }

        a5[-4] = v137;
        __asm { AESD            V3.16B, V16.16B }

        a5[-3] = veorq_s8(veorq_s8(_Q1, v125), v121);
        a5[-2] = veorq_s8(veorq_s8(_Q2, v125), v122);
        a5[-1] = veorq_s8(veorq_s8(_Q3, v125), v124);
        v7 = k < 4;
      }

      v7 = k <= -4;
      for (m = k + 4; !v7; --m)
      {
        _Q16 = *(result + v5);
        v142 = v5 - 16;
        ++a4;
        do
        {
          __asm
          {
            AESD            V0.16B, V16.16B
            AESIMC          V0.16B, V0.16B
          }

          _Q16 = *(result + v142);
          v7 = v142 <= 16;
          v142 -= 16;
        }

        while (!v7);
        __asm { AESD            V0.16B, V16.16B }

        v146 = veorq_s8(veorq_s8(_Q0, *result), v6);
        v6 = a4[-1];
        *a5++ = v146;
        v7 = m <= 1;
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

uint64_t ccpost_digest_message(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = (*(a1 + 8))();
  ccdigest(v4, *(a1 + 24), *(a1 + 16), v7);
  v5 = cc_cmp_safe(*v4, v7, *(a1 + 32)) != 0;
  return ccpost_report(a1, a2, v5);
}

void *ccdes_cbc_encrypt_mode()
{
  v0 = ccdes_ecb_encrypt_mode();
  ccmode_factory_cbc_encrypt(cbc_des_encrypt, v0);
  return cbc_des_encrypt;
}

void *ccdes_cbc_decrypt_mode()
{
  v0 = ccdes_ecb_decrypt_mode();
  ccmode_factory_cbc_decrypt(cbc_des_decrypt, v0);
  return cbc_des_decrypt;
}

void *ccdes_cfb_encrypt_mode()
{
  v0 = ccdes_ecb_encrypt_mode();
  ccmode_factory_cfb_encrypt(cfb_des_encrypt, v0);
  return cfb_des_encrypt;
}

void *ccdes_cfb_decrypt_mode()
{
  v0 = ccdes_ecb_encrypt_mode();
  ccmode_factory_cfb_decrypt(cfb_des_decrypt, v0);
  return cfb_des_decrypt;
}

void *ccdes_cfb8_encrypt_mode()
{
  v0 = ccdes_ecb_encrypt_mode();
  ccmode_factory_cfb8_encrypt(cfb8_des_encrypt, v0);
  return cfb8_des_encrypt;
}

void *ccdes_cfb8_decrypt_mode()
{
  v0 = ccdes_ecb_encrypt_mode();
  ccmode_factory_cfb8_decrypt(cfb8_des_decrypt, v0);
  return cfb8_des_decrypt;
}

void *ccdes_ctr_crypt_mode()
{
  v0 = ccdes_ecb_encrypt_mode();
  ccmode_factory_ctr_crypt(ctr_des, v0);
  return ctr_des;
}

void *ccdes_ofb_crypt_mode()
{
  v0 = ccdes_ecb_encrypt_mode();
  ccmode_factory_ofb_crypt(ofb_des, v0);
  return ofb_des;
}

void *ccdes3_cbc_encrypt_mode()
{
  v0 = ccdes3_ecb_encrypt_mode();
  ccmode_factory_cbc_encrypt(cbc_des3_encrypt, v0);
  return cbc_des3_encrypt;
}

void *ccdes3_cbc_decrypt_mode()
{
  v0 = ccdes3_ecb_decrypt_mode();
  ccmode_factory_cbc_decrypt(cbc_des3_decrypt, v0);
  return cbc_des3_decrypt;
}

void *ccdes3_cfb_encrypt_mode()
{
  v0 = ccdes3_ecb_encrypt_mode();
  ccmode_factory_cfb_encrypt(cfb_des3_encrypt, v0);
  return cfb_des3_encrypt;
}

void *ccdes3_cfb_decrypt_mode()
{
  v0 = ccdes3_ecb_encrypt_mode();
  ccmode_factory_cfb_decrypt(cfb_des3_decrypt, v0);
  return cfb_des3_decrypt;
}

void *ccdes3_cfb8_encrypt_mode()
{
  v0 = ccdes3_ecb_encrypt_mode();
  ccmode_factory_cfb8_encrypt(cfb8_des3_encrypt, v0);
  return cfb8_des3_encrypt;
}

void *ccdes3_cfb8_decrypt_mode()
{
  v0 = ccdes3_ecb_encrypt_mode();
  ccmode_factory_cfb8_decrypt(cfb8_des3_decrypt, v0);
  return cfb8_des3_decrypt;
}

void *ccdes3_ctr_crypt_mode()
{
  v0 = ccdes3_ecb_encrypt_mode();
  ccmode_factory_ctr_crypt(ctr_des3, v0);
  return ctr_des3;
}

void *ccdes3_ofb_crypt_mode()
{
  v0 = ccdes3_ecb_encrypt_mode();
  ccmode_factory_ofb_crypt(ofb_des3, v0);
  return ofb_des3;
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

uint64_t ccdigest_final_64le(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[1] = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = a2 + v6 + 8;
  if (v5 <= *(v7 + v5))
  {
    *(v7 + v5) = 0;
  }

  MEMORY[0x2A1C7C4A8](a1);
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

uint64_t ccecies_encrypt_gcm_from_shared_secret(void *a1, uint64_t a2, uint64_t *a3, size_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, rsize_t *a12, void *a13)
{
  v26 = timingsafe_enable_if_supported();
  v19 = ccecies_pub_key_size(a3, a2);
  v20 = ccecies_encrypt_gcm_ciphertext_size(a3, a2, a6);
  v21 = *a12;
  if ((*(a2 + 32) & 0x21) == 0)
  {
    v22 = 4294967291;
    goto LABEL_10;
  }

  if (v20 > v21 || *a1 != *a3)
  {
    v22 = 4294967289;
LABEL_10:
    cc_clear(v21, a13);
    goto LABEL_6;
  }

  v22 = ccecies_encrypt_gcm_from_shared_secret_composite(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a13, a13 + v19, a13 + v19 + a6);
  if (v22)
  {
    v21 = *a12;
    goto LABEL_10;
  }

  *a12 = v20;
LABEL_6:
  cc_disable_dit_with_sb(&v26);
  return v22;
}

uint64_t ccn_cond_shift_right_carry(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, unint64_t a6)
{
  result = ccn_mux_next_mask();
  v13 = __ROR8__(0x5555555555555555, a2 | (2 * result));
  if (a1)
  {
    v14 = -a1;
    v15 = 8 * a1 - 8;
    v16 = (a4 + v15);
    v17 = (a3 + v15);
    do
    {
      v18 = 2 * a6;
      v19 = a6 >> a5;
      v20 = *v16--;
      a6 = v20;
      v21 = (v18 << ~a5) | (v20 >> a5);
      if ((a5 & 0x40) != 0)
      {
        v21 = v19;
      }

      *v17 = a6 ^ result;
      *v17-- = (a6 ^ v21) & v13 ^ (a6 ^ v21) & 0x5555555555555555 ^ a6 ^ result ^ result;
    }

    while (!__CFADD__(v14++, 1));
  }

  return result;
}

uint64_t ccss_shamir_share_bag_recover_secret(unsigned int **a1, char *a2, unint64_t a3)
{
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) == 0 || (_ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 5)) & 0x1000000) != 0)
  {
    v11 = 0;
  }

  else
  {
    __asm { MSR             DIT, #1 }

    v11 = 1;
  }

  v48 = v11;
  v12 = cczp_n((*a1 + 2));
  v13 = 15 * v12;
  v44[0] = cc_malloc_clear(120 * v12);
  v44[1] = v13;
  v45 = 0;
  v46 = cc_ws_alloc;
  v47 = cc_ws_free;
  if (!v44[0])
  {
    v16 = 4294967283;
    goto LABEL_30;
  }

  v14 = *a1;
  v15 = **a1;
  if (*(a1 + 2) < v15)
  {
    v16 = 4294967175;
    cc_ws_free(v44);
    goto LABEL_30;
  }

  v39 = a3;
  v40 = a2;
  v17 = cczp_n((v14 + 2));
  v18 = cc_ws_alloc(v44, v17);
  v19 = v46(v44, v17);
  v46(v44, v17);
  v41 = v46(v44, v17);
  v20 = v46(v44, v17);
  v42 = v46(v44, v17);
  ccn_seti(v17, v42, 0);
  v21 = **a1;
  v22 = v21 - 1;
  if (v21 != 1 && csss_shamir_share_bag_can_recover_secret(a1))
  {
    v38 = v17;
    v43 = *a1;
    v23 = cczp_n((*a1 + 2));
    v37 = v45;
    v24 = v46(v44, v23);
    v25 = ccss_shamir_share_bag_copy_ith_share_x(a1, 0);
    ccn_seti(v23, v18, v25);
    v26 = 1;
    do
    {
      v27 = ccss_shamir_share_bag_copy_ith_share_x(a1, v26);
      ccn_seti(v23, v24, v27);
      cczp_mul_ws(v44, (v43 + 2));
      ++v26;
    }

    while (v26 <= v22);
    if (v22)
    {
      cczp_negate((v43 + 2), v18, v18);
    }

    v17 = v38;
    v45 = v37;
  }

  if (v15)
  {
    v28 = 0;
LABEL_18:
    v29 = ccss_shamir_share_bag_copy_ith_share_x(a1, v28);
    ccss_shamir_share_bag_ith_share_y(a1, v28);
    v30 = v17;
    ccn_seti(v17, v19, 1);
    v31 = 0;
    while (1)
    {
      v32 = ccss_shamir_share_bag_copy_ith_share_x(a1, v31);
      if (v29 <= v32)
      {
        if (v29 >= v32)
        {
          if (v28 != v31)
          {
            v16 = 4294967172;
            goto LABEL_29;
          }

          goto LABEL_25;
        }

        v33 = v32;
        v34 = cczp_prime((v14 + 2));
        ccn_sub1(v30, v20, v34, v33 - v29);
      }

      else
      {
        ccn_seti(v30, v20, v29 - v32);
      }

      cczp_mul_ws(v44, (v14 + 2));
LABEL_25:
      if (v15 == ++v31)
      {
        v17 = v30;
        ccn_seti(v30, v41, v29);
        cczp_mul_ws(v44, (v14 + 2));
        cczp_inv_ws(v44, (v14 + 2));
        cczp_mul_ws(v44, (v14 + 2));
        cczp_mul_ws(v44, (v14 + 2));
        cczp_add_ws(v44, (v14 + 2));
        if (++v28 != v15)
        {
          goto LABEL_18;
        }

        break;
      }
    }
  }

  v35 = ccn_write_uint_padded_ct_internal(v17, v42, v39, v40);
  v16 = v35 & (v35 >> 31);
LABEL_29:
  v45 = 0;
  v47(v44);
LABEL_30:
  cc_disable_dit(&v48);
  return v16;
}

uint64_t ccsrp_generate_H_AMK_ws(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v16[1] = *MEMORY[0x29EDCA608];
  v6 = *a2;
  MEMORY[0x2A1C7C4A8](a1);
  v8 = (v16 - v7);
  ccdigest_init_internal(v6, (v16 - v7));
  v9 = *(a1 + 16);
  ccsrp_digest_update_ccn_ws(a1, a2, v8, a3, (*(a2 + 24) >> 10) & 1);
  v10 = ccsrp_session_size(a2);
  v11 = ccdh_gp_n(*(a2 + 8));
  ccdigest_update_internal(v6, v8, v10, (a2 + 32 + 32 * v11 + 2 * **a2));
  session_key_length = ccsrp_get_session_key_length(a2);
  v13 = ccdh_gp_n(*(a2 + 8));
  ccdigest_update_internal(v6, v8, session_key_length, (a2 + 32 + 32 * v13));
  v14 = ccdh_gp_n(*(a2 + 8));
  (v6[7])(v6, v8, a2 + 32 + 32 * v14 + 3 * **a2);
  result = cc_clear(v6[1] + v6[2] + 12, v8);
  *(a1 + 16) = v9;
  return result;
}

uint64_t ccsrp_ctx_init_with_size_option(void *a1, rsize_t a2, uint64_t a3, uint64_t a4, unsigned __int16 a5, uint64_t a6)
{
  cc_clear(a2, a1);
  *a1 = a3;
  a1[1] = a4;
  v11 = *(a1 + 6);
  a1[2] = a6;
  *(a1 + 6) = v11 & 0xFFF80002 | (8 * a5);
  return 0;
}

uint64_t ccsrp_client_set_noUsernameInX(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFFFFFFD | v2;
  return a2;
}

uint64_t ccsrp_sizeof_session_key(uint64_t a1, char a2)
{
  if ((a2 & 7u) - 1 < 2)
  {
    return 2 * *a1;
  }

  if ((a2 & 7) != 0)
  {
    return 0;
  }

  return *a1;
}

uint64_t ccsrp_get_session_key_length(uint64_t *a1)
{
  v1 = *a1;
  v2 = (*(a1 + 6) >> 3) & 7;
  if ((v2 - 1) < 2)
  {
    return 2 * *v1;
  }

  if (v2)
  {
    return 0;
  }

  return *v1;
}

uint64_t ccsrp_get_session_key(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = (*(a1 + 24) >> 3) & 7;
  if ((v3 - 1) >= 2)
  {
    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = *v2;
    }
  }

  else
  {
    v4 = 2 * *v2;
  }

  *a2 = v4;
  if ((*(a1 + 24) & 4) != 0)
  {
    return a1 + 32 * ccdh_gp_n(*(a1 + 8)) + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t ccsrp_get_premaster_secret(uint64_t a1)
{
  if ((*(a1 + 24) & 4) != 0)
  {
    return a1 + 24 * ccdh_gp_n(*(a1 + 8)) + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t ccsrp_ctx_init_option(void *a1, void *a2, void *a3, unsigned __int16 a4, uint64_t a5)
{
  v10 = ccdh_ccn_size(a3);
  cc_clear(4 * (*a2 + v10) + 48, a1);
  *a1 = a2;
  a1[1] = a3;
  v11 = *(a1 + 6);
  a1[2] = a5;
  *(a1 + 6) = v11 & 0xFFF80002 | (8 * a4);
  return 0;
}

uint64_t ccsrp_ctx_init(void *a1, void *a2, void *a3)
{
  v6 = 4 * (*a2 + ccdh_ccn_size(a3));
  v7 = ccrng(0);
  result = cc_clear(v6 + 48, a1);
  *a1 = a2;
  a1[1] = a3;
  v9 = *(a1 + 6);
  a1[2] = v7;
  *(a1 + 6) = v9 & 0xFFF80002;
  return result;
}

uint64_t ccaes_gladman_encrypt(_DWORD *a1, int *a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5 = a1[65];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  if (a3)
  {
    v10 = (a4 + 8);
    do
    {
      if (v5)
      {
        v11 = *a1 ^ v6 ^ *(v10 - 2);
        v12 = a1[1] ^ v7 ^ *(v10 - 1);
        v13 = a1[2] ^ v8 ^ *v10;
        v14 = a1[3] ^ v9 ^ v10[1];
      }

      else
      {
        v11 = *a1 ^ *(v10 - 2);
        v12 = a1[1] ^ *(v10 - 1);
        v13 = a1[2] ^ *v10;
        v14 = a1[3] ^ v10[1];
      }

      v15 = a1[60];
      if (v15 == 12)
      {
        v20 = a1;
      }

      else
      {
        if (v15 != 14)
        {
          v21 = a1;
          goto LABEL_12;
        }

        v16 = t_fn[v11] ^ a1[4] ^ t_fn[BYTE1(v12) + 256] ^ t_fn[BYTE2(v13) + 512] ^ t_fn[HIBYTE(v14) + 768];
        v17 = t_fn[v12] ^ a1[5] ^ t_fn[BYTE1(v13) + 256] ^ t_fn[BYTE2(v14) + 512] ^ t_fn[HIBYTE(v11) + 768];
        v18 = t_fn[v13] ^ a1[6] ^ t_fn[BYTE1(v14) + 256] ^ t_fn[BYTE2(v11) + 512] ^ t_fn[HIBYTE(v12) + 768];
        v19 = t_fn[v14] ^ a1[7] ^ t_fn[BYTE1(v11) + 256] ^ t_fn[BYTE2(v12) + 512] ^ t_fn[HIBYTE(v13) + 768];
        v11 = t_fn[v16] ^ a1[8] ^ t_fn[BYTE1(v17) + 256] ^ t_fn[BYTE2(v18) + 512] ^ t_fn[HIBYTE(v19) + 768];
        v12 = t_fn[v17] ^ a1[9] ^ t_fn[BYTE1(v18) + 256] ^ t_fn[BYTE2(v19) + 512] ^ t_fn[HIBYTE(v16) + 768];
        v13 = t_fn[v18] ^ a1[10] ^ t_fn[BYTE1(v19) + 256] ^ t_fn[BYTE2(v16) + 512] ^ t_fn[HIBYTE(v17) + 768];
        v14 = t_fn[v19] ^ a1[11] ^ t_fn[BYTE1(v16) + 256] ^ t_fn[BYTE2(v17) + 512] ^ t_fn[HIBYTE(v18) + 768];
        v20 = a1 + 8;
      }

      v22 = v20[8];
      v21 = v20 + 8;
      v23 = t_fn[v11] ^ *(v21 - 4) ^ t_fn[BYTE1(v12) + 256] ^ t_fn[BYTE2(v13) + 512] ^ t_fn[HIBYTE(v14) + 768];
      v24 = t_fn[v12] ^ *(v21 - 3) ^ t_fn[BYTE1(v13) + 256] ^ t_fn[BYTE2(v14) + 512] ^ t_fn[HIBYTE(v11) + 768];
      v25 = t_fn[v14];
      v26 = t_fn[v13] ^ *(v21 - 2) ^ t_fn[BYTE1(v14) + 256] ^ t_fn[BYTE2(v11) + 512] ^ t_fn[HIBYTE(v12) + 768];
      v27 = v25 ^ *(v21 - 1) ^ t_fn[BYTE1(v11) + 256] ^ t_fn[BYTE2(v12) + 512] ^ t_fn[HIBYTE(v13) + 768];
      v11 = t_fn[v23] ^ v22 ^ t_fn[BYTE1(v24) + 256] ^ t_fn[BYTE2(v26) + 512] ^ t_fn[HIBYTE(v27) + 768];
      v12 = t_fn[v24] ^ v21[1] ^ t_fn[BYTE1(v26) + 256] ^ t_fn[BYTE2(v27) + 512] ^ t_fn[HIBYTE(v23) + 768];
      v13 = t_fn[v26] ^ v21[2] ^ t_fn[BYTE1(v27) + 256] ^ t_fn[BYTE2(v23) + 512] ^ t_fn[HIBYTE(v24) + 768];
      v14 = t_fn[v27] ^ v21[3] ^ t_fn[BYTE1(v23) + 256] ^ t_fn[BYTE2(v24) + 512] ^ t_fn[HIBYTE(v26) + 768];
LABEL_12:
      v28 = t_fn[v11] ^ v21[4] ^ t_fn[BYTE1(v12) + 256] ^ t_fn[BYTE2(v13) + 512] ^ t_fn[HIBYTE(v14) + 768];
      v29 = t_fn[v12] ^ v21[5] ^ t_fn[BYTE1(v13) + 256] ^ t_fn[BYTE2(v14) + 512] ^ t_fn[HIBYTE(v11) + 768];
      v30 = t_fn[BYTE2(v12) + 512];
      v31 = t_fn[v13] ^ v21[6] ^ t_fn[BYTE1(v14) + 256] ^ t_fn[BYTE2(v11) + 512] ^ t_fn[HIBYTE(v12) + 768];
      v32 = t_fn[v14] ^ v21[7] ^ t_fn[BYTE1(v11) + 256] ^ v30 ^ t_fn[HIBYTE(v13) + 768];
      v33 = t_fn[v28] ^ v21[8] ^ t_fn[BYTE1(v29) + 256] ^ t_fn[BYTE2(v31) + 512] ^ t_fn[HIBYTE(v32) + 768];
      v34 = t_fn[v29] ^ v21[9] ^ t_fn[BYTE1(v31) + 256] ^ t_fn[BYTE2(v32) + 512] ^ t_fn[HIBYTE(v28) + 768];
      v35 = t_fn[v31] ^ v21[10] ^ t_fn[BYTE1(v32) + 256] ^ t_fn[BYTE2(v28) + 512] ^ t_fn[HIBYTE(v29) + 768];
      v36 = t_fn[v32] ^ v21[11] ^ t_fn[BYTE1(v28) + 256] ^ t_fn[BYTE2(v29) + 512] ^ t_fn[HIBYTE(v31) + 768];
      v37 = t_fn[(LOBYTE(t_fn[v28]) ^ *(v21 + 32) ^ LOBYTE(t_fn[BYTE1(v29) + 256]) ^ LOBYTE(t_fn[BYTE2(v31) + 512]) ^ LOBYTE(t_fn[HIBYTE(v32) + 768]))] ^ v21[12] ^ t_fn[BYTE1(v34) + 256] ^ t_fn[BYTE2(v35) + 512] ^ t_fn[HIBYTE(v36) + 768];
      v38 = t_fn[v34] ^ v21[13] ^ t_fn[BYTE1(v35) + 256] ^ t_fn[BYTE2(v36) + 512] ^ t_fn[HIBYTE(v33) + 768];
      v39 = t_fn[v35] ^ v21[14] ^ t_fn[BYTE1(v36) + 256] ^ t_fn[BYTE2(v33) + 512] ^ t_fn[HIBYTE(v34) + 768];
      v40 = t_fn[v36] ^ v21[15] ^ t_fn[BYTE1(v33) + 256] ^ t_fn[BYTE2(v34) + 512] ^ t_fn[HIBYTE(v35) + 768];
      v41 = t_fn[(LOBYTE(t_fn[v33]) ^ *(v21 + 48) ^ LOBYTE(t_fn[BYTE1(v34) + 256]) ^ LOBYTE(t_fn[BYTE2(v35) + 512]) ^ LOBYTE(t_fn[HIBYTE(v36) + 768]))] ^ v21[16] ^ t_fn[BYTE1(v38) + 256] ^ t_fn[BYTE2(v39) + 512] ^ t_fn[HIBYTE(v40) + 768];
      v42 = t_fn[v38] ^ v21[17] ^ t_fn[BYTE1(v39) + 256] ^ t_fn[BYTE2(v40) + 512] ^ t_fn[HIBYTE(v37) + 768];
      v43 = t_fn[v39] ^ v21[18] ^ t_fn[BYTE1(v40) + 256] ^ t_fn[BYTE2(v37) + 512] ^ t_fn[HIBYTE(v38) + 768];
      v44 = t_fn[v40] ^ v21[19] ^ t_fn[BYTE1(v37) + 256] ^ t_fn[BYTE2(v38) + 512] ^ t_fn[HIBYTE(v39) + 768];
      v45 = t_fn[v41] ^ v21[20] ^ t_fn[BYTE1(v42) + 256] ^ t_fn[BYTE2(v43) + 512] ^ t_fn[HIBYTE(v44) + 768];
      v46 = t_fn[v42] ^ v21[21] ^ t_fn[BYTE1(v43) + 256] ^ t_fn[BYTE2(v44) + 512] ^ t_fn[HIBYTE(v41) + 768];
      v47 = t_fn[v43] ^ v21[22] ^ t_fn[BYTE1(v44) + 256] ^ t_fn[BYTE2(v41) + 512] ^ t_fn[HIBYTE(v42) + 768];
      v48 = t_fn[v44] ^ v21[23] ^ t_fn[BYTE1(v41) + 256] ^ t_fn[BYTE2(v42) + 512] ^ t_fn[HIBYTE(v43) + 768];
      v49 = t_fn[v45] ^ v21[24] ^ t_fn[BYTE1(v46) + 256] ^ t_fn[BYTE2(v47) + 512] ^ t_fn[HIBYTE(v48) + 768];
      v50 = t_fn[v46] ^ v21[25] ^ t_fn[BYTE1(v47) + 256] ^ t_fn[BYTE2(v48) + 512] ^ t_fn[HIBYTE(v45) + 768];
      v51 = t_fn[v47] ^ v21[26] ^ t_fn[BYTE1(v48) + 256] ^ t_fn[BYTE2(v45) + 512] ^ t_fn[HIBYTE(v46) + 768];
      v52 = t_fn[v48] ^ v21[27] ^ t_fn[BYTE1(v45) + 256] ^ t_fn[BYTE2(v46) + 512] ^ t_fn[HIBYTE(v47) + 768];
      v53 = t_fn[v49] ^ v21[28] ^ t_fn[BYTE1(v50) + 256] ^ t_fn[BYTE2(v51) + 512] ^ t_fn[HIBYTE(v52) + 768];
      v54 = t_fn[v50] ^ v21[29] ^ t_fn[BYTE1(v51) + 256] ^ t_fn[BYTE2(v52) + 512] ^ t_fn[HIBYTE(v49) + 768];
      v55 = t_fn[HIBYTE(v50) + 768];
      v56 = t_fn[v51] ^ v21[30] ^ t_fn[BYTE1(v52) + 256] ^ t_fn[BYTE2(v49) + 512];
      v57 = t_fn[v52];
      v58 = v56 ^ v55;
      v59 = v57 ^ v21[31] ^ t_fn[BYTE1(v49) + 256] ^ t_fn[BYTE2(v50) + 512] ^ t_fn[HIBYTE(v51) + 768];
      v60 = t_fn[v53] ^ v21[32] ^ t_fn[BYTE1(v54) + 256] ^ t_fn[((v56 ^ v55) >> 16) + 512] ^ t_fn[HIBYTE(v59) + 768];
      v61 = t_fn[v54] ^ v21[33] ^ t_fn[((v56 ^ v55) >> 8) + 256] ^ t_fn[BYTE2(v59) + 512] ^ t_fn[HIBYTE(v53) + 768];
      v62 = t_fn[(v56 ^ v55)] ^ v21[34] ^ t_fn[BYTE1(v59) + 256] ^ t_fn[BYTE2(v53) + 512] ^ t_fn[HIBYTE(v54) + 768];
      v63 = t_fn[v59] ^ v21[35] ^ t_fn[BYTE1(v53) + 256] ^ t_fn[BYTE2(v54) + 512] ^ t_fn[HIBYTE(v58) + 768];
      v64 = t_fn[v60] ^ v21[36] ^ t_fn[BYTE1(v61) + 256] ^ t_fn[BYTE2(v62) + 512] ^ t_fn[HIBYTE(v63) + 768];
      v65 = t_fn[v61] ^ v21[37] ^ t_fn[BYTE1(v62) + 256] ^ t_fn[BYTE2(v63) + 512] ^ t_fn[HIBYTE(v60) + 768];
      v66 = t_fn[v62] ^ v21[38] ^ t_fn[BYTE1(v63) + 256] ^ t_fn[BYTE2(v60) + 512] ^ t_fn[HIBYTE(v61) + 768];
      v67 = t_fl[(LOBYTE(t_fn[v60]) ^ *(v21 + 144) ^ LOBYTE(t_fn[BYTE1(v61) + 256]) ^ LOBYTE(t_fn[BYTE2(v62) + 512]) ^ LOBYTE(t_fn[HIBYTE(v63) + 768]))];
      v68 = t_fn[v63] ^ v21[39] ^ t_fn[BYTE1(v60) + 256] ^ t_fn[BYTE2(v61) + 512] ^ t_fn[HIBYTE(v62) + 768];
      v6 = v67 ^ v21[40] ^ t_fl[BYTE1(v65) + 256] ^ t_fl[BYTE2(v66) + 512] ^ t_fl[HIBYTE(v68) + 768];
      v7 = t_fl[v65] ^ v21[41] ^ t_fl[BYTE1(v66) + 256] ^ t_fl[BYTE2(v68) + 512] ^ t_fl[HIBYTE(v64) + 768];
      v69 = v21[43];
      v8 = t_fl[v66] ^ v21[42] ^ t_fl[BYTE1(v68) + 256] ^ t_fl[BYTE2(v64) + 512] ^ t_fl[HIBYTE(v65) + 768];
      v70 = t_fl[v68] ^ v69;
      v71 = t_fl[BYTE1(v64) + 256] ^ t_fl[BYTE2(v65) + 512];
      v72 = t_fl[HIBYTE(v66) + 768];
      *a5 = v6;
      a5[1] = v7;
      v9 = v70 ^ v71 ^ v72;
      a5[2] = v8;
      a5[3] = v9;
      a5 += 4;
      v10 += 4;
      --a3;
    }

    while (a3);
  }

  if (v5)
  {
    *a2 = v6;
    a2[1] = v7;
    a2[2] = v8;
    a2[3] = v9;
  }

  return 0;
}

uint64_t ccaes_gladman_decrypt(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 260);
  if (a3 || !v5)
  {
    v6 = a4 + 16 * a3;
    v7 = *(v6 - 16);
    v9 = *(v6 - 12);
    v8 = (v6 - 16);
    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (a3 && v5)
    {
      v79 = *v8;
LABEL_7:
      v12 = (a1 + 4 * (4 * *(a1 + 240)));
      v13 = (16 * a3 + a5 - 8);
      while (1)
      {
        v14 = *v12 ^ v7;
        v15 = v12[1] ^ v9;
        v16 = v12[2] ^ v11;
        v17 = v12[3] ^ v10;
        v18 = *(a1 + 240);
        v19 = v12;
        if (v18 != 12)
        {
          if (v18 != 14)
          {
            goto LABEL_12;
          }

          v20 = t_in[v14] ^ *(v12 - 4) ^ t_in[BYTE1(v17) + 256] ^ t_in[BYTE2(v16) + 512] ^ t_in[HIBYTE(v15) + 768];
          v21 = t_in[v15] ^ *(v12 - 3) ^ t_in[BYTE1(v14) + 256] ^ t_in[BYTE2(v17) + 512] ^ t_in[HIBYTE(v16) + 768];
          v22 = t_in[v16] ^ *(v12 - 2) ^ t_in[BYTE1(v15) + 256] ^ t_in[BYTE2(v14) + 512] ^ t_in[HIBYTE(v17) + 768];
          v23 = t_in[v17] ^ *(v12 - 1) ^ t_in[BYTE1(v16) + 256] ^ t_in[BYTE2(v15) + 512] ^ t_in[HIBYTE(v14) + 768];
          v14 = t_in[v20] ^ *(v12 - 8) ^ t_in[BYTE1(v23) + 256] ^ t_in[BYTE2(v22) + 512] ^ t_in[HIBYTE(v21) + 768];
          v15 = t_in[v21] ^ *(v12 - 7) ^ t_in[BYTE1(v20) + 256] ^ t_in[BYTE2(v23) + 512] ^ t_in[HIBYTE(v22) + 768];
          v16 = t_in[v22] ^ *(v12 - 6) ^ t_in[BYTE1(v21) + 256] ^ t_in[BYTE2(v20) + 512] ^ t_in[HIBYTE(v23) + 768];
          v17 = t_in[v23] ^ *(v12 - 5) ^ t_in[BYTE1(v22) + 256] ^ t_in[BYTE2(v21) + 512] ^ t_in[HIBYTE(v20) + 768];
          v19 = v12 - 8;
        }

        v24 = *(v19 - 8);
        v19 -= 8;
        v25 = t_in[v14] ^ v19[4] ^ t_in[BYTE1(v17) + 256] ^ t_in[BYTE2(v16) + 512] ^ t_in[HIBYTE(v15) + 768];
        v26 = t_in[v15] ^ v19[5] ^ t_in[BYTE1(v14) + 256] ^ t_in[BYTE2(v17) + 512] ^ t_in[HIBYTE(v16) + 768];
        v27 = t_in[v16] ^ v19[6] ^ t_in[BYTE1(v15) + 256] ^ t_in[BYTE2(v14) + 512] ^ t_in[HIBYTE(v17) + 768];
        v28 = t_in[v17] ^ v19[7] ^ t_in[BYTE1(v16) + 256] ^ t_in[BYTE2(v15) + 512] ^ t_in[HIBYTE(v14) + 768];
        v14 = t_in[v25] ^ v24 ^ t_in[BYTE1(v28) + 256] ^ t_in[BYTE2(v27) + 512] ^ t_in[HIBYTE(v26) + 768];
        v15 = t_in[v26] ^ v19[1] ^ t_in[BYTE1(v25) + 256] ^ t_in[BYTE2(v28) + 512] ^ t_in[HIBYTE(v27) + 768];
        v16 = t_in[v27] ^ v19[2] ^ t_in[BYTE1(v26) + 256] ^ t_in[BYTE2(v25) + 512] ^ t_in[HIBYTE(v28) + 768];
        v17 = t_in[v28] ^ v19[3] ^ t_in[BYTE1(v27) + 256] ^ t_in[BYTE2(v26) + 512] ^ t_in[HIBYTE(v25) + 768];
LABEL_12:
        v29 = t_in[v14] ^ *(v19 - 4) ^ t_in[BYTE1(v17) + 256] ^ t_in[BYTE2(v16) + 512] ^ t_in[HIBYTE(v15) + 768];
        v30 = t_in[v15] ^ *(v19 - 3) ^ t_in[BYTE1(v14) + 256] ^ t_in[BYTE2(v17) + 512] ^ t_in[HIBYTE(v16) + 768];
        v31 = t_in[BYTE1(v16) + 256];
        v32 = t_in[v16] ^ *(v19 - 2) ^ t_in[BYTE1(v15) + 256] ^ t_in[BYTE2(v14) + 512] ^ t_in[HIBYTE(v17) + 768];
        v33 = t_in[v17] ^ *(v19 - 1) ^ v31 ^ t_in[BYTE2(v15) + 512] ^ t_in[HIBYTE(v14) + 768];
        v34 = t_in[v29] ^ *(v19 - 8) ^ t_in[BYTE1(v33) + 256] ^ t_in[BYTE2(v32) + 512] ^ t_in[HIBYTE(v30) + 768];
        v35 = t_in[v30] ^ *(v19 - 7) ^ t_in[BYTE1(v29) + 256] ^ t_in[BYTE2(v33) + 512];
        v36 = t_in[v32] ^ *(v19 - 6) ^ t_in[BYTE1(v30) + 256] ^ t_in[BYTE2(v29) + 512] ^ t_in[HIBYTE(v33) + 768];
        v37 = t_in[v33] ^ *(v19 - 5) ^ t_in[BYTE1(v32) + 256] ^ t_in[BYTE2(v30) + 512] ^ t_in[HIBYTE(v29) + 768];
        v38 = v35 ^ t_in[HIBYTE(v32) + 768];
        v39 = t_in[v34] ^ *(v19 - 12) ^ t_in[BYTE1(v37) + 256] ^ t_in[BYTE2(v36) + 512] ^ t_in[HIBYTE(v38) + 768];
        v40 = t_in[v38] ^ *(v19 - 11) ^ t_in[BYTE1(v34) + 256] ^ t_in[BYTE2(v37) + 512] ^ t_in[HIBYTE(v36) + 768];
        v41 = t_in[v36] ^ *(v19 - 10) ^ t_in[BYTE1(v38) + 256] ^ t_in[BYTE2(v34) + 512] ^ t_in[HIBYTE(v37) + 768];
        v42 = t_in[v37] ^ *(v19 - 9) ^ t_in[BYTE1(v36) + 256] ^ t_in[BYTE2(v38) + 512] ^ t_in[HIBYTE(v34) + 768];
        v43 = t_in[v39] ^ *(v19 - 16) ^ t_in[BYTE1(v42) + 256] ^ t_in[BYTE2(v41) + 512] ^ t_in[HIBYTE(v40) + 768];
        v44 = t_in[v40] ^ *(v19 - 15) ^ t_in[BYTE1(v39) + 256] ^ t_in[BYTE2(v42) + 512] ^ t_in[HIBYTE(v41) + 768];
        v45 = t_in[BYTE1(v41) + 256];
        v46 = t_in[v41] ^ *(v19 - 14) ^ t_in[BYTE1(v40) + 256] ^ t_in[BYTE2(v39) + 512] ^ t_in[HIBYTE(v42) + 768];
        v47 = t_in[v42] ^ *(v19 - 13) ^ v45 ^ t_in[BYTE2(v40) + 512] ^ t_in[HIBYTE(v39) + 768];
        v48 = t_in[v43] ^ *(v19 - 20) ^ t_in[BYTE1(v47) + 256] ^ t_in[BYTE2(v46) + 512] ^ t_in[HIBYTE(v44) + 768];
        v49 = t_in[HIBYTE(v46) + 768];
        v50 = t_in[v46] ^ *(v19 - 18) ^ t_in[BYTE1(v44) + 256] ^ t_in[BYTE2(v43) + 512] ^ t_in[HIBYTE(v47) + 768];
        v51 = t_in[v47] ^ *(v19 - 17) ^ t_in[BYTE1(v46) + 256] ^ t_in[BYTE2(v44) + 512] ^ t_in[HIBYTE(v43) + 768];
        v52 = t_in[v44] ^ *(v19 - 19) ^ t_in[BYTE1(v43) + 256] ^ t_in[BYTE2(v47) + 512] ^ v49;
        v53 = t_in[v48] ^ *(v19 - 24) ^ t_in[BYTE1(v51) + 256] ^ t_in[BYTE2(v50) + 512] ^ t_in[HIBYTE(v52) + 768];
        v54 = t_in[v52] ^ *(v19 - 23) ^ t_in[BYTE1(v48) + 256] ^ t_in[BYTE2(v51) + 512] ^ t_in[HIBYTE(v50) + 768];
        v55 = t_in[v50] ^ *(v19 - 22) ^ t_in[BYTE1(v52) + 256] ^ t_in[BYTE2(v48) + 512] ^ t_in[HIBYTE(v51) + 768];
        v56 = t_in[v51] ^ *(v19 - 21) ^ t_in[BYTE1(v50) + 256] ^ t_in[BYTE2(v52) + 512] ^ t_in[HIBYTE(v48) + 768];
        v57 = t_in[v53] ^ *(v19 - 28) ^ t_in[BYTE1(v56) + 256] ^ t_in[BYTE2(v55) + 512] ^ t_in[HIBYTE(v54) + 768];
        v58 = t_in[v54] ^ *(v19 - 27) ^ t_in[BYTE1(v53) + 256] ^ t_in[BYTE2(v56) + 512] ^ t_in[HIBYTE(v55) + 768];
        v59 = t_in[v55] ^ *(v19 - 26) ^ t_in[BYTE1(v54) + 256] ^ t_in[BYTE2(v53) + 512] ^ t_in[HIBYTE(v56) + 768];
        v60 = t_in[v56] ^ *(v19 - 25) ^ t_in[BYTE1(v55) + 256] ^ t_in[BYTE2(v54) + 512] ^ t_in[HIBYTE(v53) + 768];
        v61 = t_in[v57] ^ *(v19 - 32) ^ t_in[BYTE1(v60) + 256] ^ t_in[BYTE2(v59) + 512] ^ t_in[HIBYTE(v58) + 768];
        v62 = t_in[v58] ^ *(v19 - 31) ^ t_in[BYTE1(v57) + 256] ^ t_in[BYTE2(v60) + 512] ^ t_in[HIBYTE(v59) + 768];
        v63 = t_in[BYTE1(v59) + 256];
        v64 = t_in[v59] ^ *(v19 - 30) ^ t_in[BYTE1(v58) + 256] ^ t_in[BYTE2(v57) + 512] ^ t_in[HIBYTE(v60) + 768];
        v65 = t_in[v60] ^ *(v19 - 29) ^ v63 ^ t_in[BYTE2(v58) + 512] ^ t_in[HIBYTE(v57) + 768];
        v66 = t_in[v61] ^ *(v19 - 36) ^ t_in[BYTE1(v65) + 256] ^ t_in[BYTE2(v64) + 512] ^ t_in[HIBYTE(v62) + 768];
        v67 = t_in[v62] ^ *(v19 - 35) ^ t_in[BYTE1(v61) + 256] ^ t_in[BYTE2(v65) + 512] ^ t_in[HIBYTE(v64) + 768];
        v68 = t_in[v64] ^ *(v19 - 34) ^ t_in[BYTE1(v62) + 256] ^ t_in[BYTE2(v61) + 512] ^ t_in[HIBYTE(v65) + 768];
        v69 = t_in[v65] ^ *(v19 - 33) ^ t_in[BYTE1(v64) + 256] ^ t_in[BYTE2(v62) + 512] ^ t_in[HIBYTE(v61) + 768];
        v70 = t_il[v66] ^ *(v19 - 40) ^ t_il[BYTE1(v69) + 256] ^ t_il[BYTE2(v68) + 512] ^ t_il[HIBYTE(v67) + 768];
        v71 = t_il[v67] ^ *(v19 - 39) ^ t_il[BYTE1(v66) + 256] ^ t_il[BYTE2(v69) + 512] ^ t_il[HIBYTE(v68) + 768];
        v72 = t_il[v68] ^ *(v19 - 38) ^ t_il[BYTE1(v67) + 256] ^ t_il[BYTE2(v66) + 512] ^ t_il[HIBYTE(v69) + 768];
        v73 = t_il[v69] ^ *(v19 - 37) ^ t_il[BYTE1(v68) + 256] ^ t_il[BYTE2(v67) + 512] ^ t_il[HIBYTE(v66) + 768];
        if (v5)
        {
          if (a3 == 1)
          {
            v74 = a2;
            v75 = a2 + 1;
            v76 = a2 + 2;
            v77 = a2 + 3;
          }

          else
          {
            v74 = (v8 - 1);
            v75 = v8 - 3;
            v76 = v8 - 2;
            v77 = v8-- - 1;
          }

          v10 = *v77;
          v11 = *v76;
          v9 = *v75;
          v7 = *v74;
          v70 ^= v7;
          v71 ^= v9;
          v72 ^= v11;
          v73 ^= v10;
        }

        else
        {
          if (a3 == 1)
          {
            *(v13 - 2) = v70;
            *(v13 - 1) = v71;
            *v13 = v72;
            v13[1] = v73;
            return 0;
          }

          v7 = *(v8 - 4);
          v9 = *(v8-- - 3);
          v11 = *(v8 + 2);
          v10 = *(v8 + 3);
        }

        *(v13 - 2) = v70;
        *(v13 - 1) = v71;
        *v13 = v72;
        v13[1] = v73;
        v13 -= 4;
        if (!--a3)
        {
          goto LABEL_20;
        }
      }
    }

    if (a3)
    {
      goto LABEL_7;
    }

LABEL_20:
    if (v5)
    {
      *a2 = v79;
    }
  }

  return 0;
}

__int128 *cc_module_id(int a1)
{
  strcpy(&cc_module_id_moduleProc, "Apple ARM");
  cc_module_id_moduleSecLevel = 3230803;
  cc_module_id_moduleChipID = 4271950;
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 != 6 && a1 != 7)
      {
LABEL_20:
        result = &cc_module_id_moduleID;
        strcpy(&cc_module_id_moduleID, "INVALID Module ID");
        return result;
      }
    }

    else if (a1 == 4)
    {
      result = &cc_module_id_moduleID;
      strcpy(&cc_module_id_moduleID, "Software");
      return result;
    }

    snprintf(&cc_module_id_moduleID, 0x100uLL, "%s");
    return &cc_module_id_moduleID;
  }

  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        result = &cc_module_id_moduleID;
        strcpy(&cc_module_id_moduleID, "Apple corecrypto Module");
        return result;
      }

      goto LABEL_20;
    }

    snprintf(&cc_module_id_moduleID, 0x100uLL, "%s v%s [%s, %s, %s, %s, %s]", "Apple corecrypto Module", "26.0");
    return &cc_module_id_moduleID;
  }

  if (a1 == 2)
  {
    result = &cc_module_id_moduleID;
    BYTE4(cc_module_id_moduleID) = 0;
    v2 = 808334898;
  }

  else
  {
    result = &cc_module_id_moduleID;
    BYTE4(cc_module_id_moduleID) = 0;
    v2 = 1919251285;
  }

  LODWORD(cc_module_id_moduleID) = v2;
  return result;
}

unint64_t ccsiv_plaintext_size(uint64_t a1, unint64_t a2)
{
  v2 = *(*(a1 + 56) + 8);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t ccsiv_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 16))(a1, a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ccsiv_set_nonce(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 24))(a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ccsiv_aad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 32))(a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ccsiv_crypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = (*(a1 + 40))(a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t ccsiv_reset(uint64_t a1, uint64_t a2)
{
  v6 = timingsafe_enable_if_supported();
  v4 = (*(a1 + 48))(a2);
  cc_disable_dit_with_sb(&v6);
  return v4;
}

uint64_t ccsiv_one_shot(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v26 = *MEMORY[0x29EDCA608];
  v18 = timingsafe_enable_if_supported();
  v25 = v18;
  MEMORY[0x2A1C7C4A8](v18);
  v20 = &v24[-v19];
  v21 = (*(a1 + 16))(a1, &v24[-v19], a2, a3);
  if (v21 || (v21 = (*(a1 + 24))(v20, a4, a5), v21) || (v21 = (*(a1 + 32))(v20, a6, a7), v21))
  {
    v22 = v21;
  }

  else
  {
    v22 = (*(a1 + 40))(v20, a8, a9, a10);
    if (!v22)
    {
      cc_clear(*a1, v20);
    }
  }

  cc_disable_dit_with_sb(&v25);
  return v22;
}

uint64_t ccss_shamir_share_generator_deserialize(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) == 0 || (_ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 5)) & 0x1000000) != 0)
  {
    v13 = 0;
  }

  else
  {
    __asm { MSR             DIT, #1 }

    v13 = 1;
  }

  v30 = v13;
  v14 = *(a2 + 8);
  v26[0] = cc_malloc_clear(8 * v14);
  v26[1] = v14;
  v27 = 0;
  v28 = cc_ws_alloc;
  v29 = cc_ws_free;
  if (!v26[0])
  {
    v24 = 4294967283;
    goto LABEL_22;
  }

  ccss_shamir_init_share_poly(a1, a2);
  if (a3 >= 0xA && *a4 == 1)
  {
    v15 = bswap32(*(a4 + 1));
    if (v15)
    {
      if (v14 == (v15 + 7) >> 3)
      {
        v16 = bswap32(*(a4 + 5));
        *(a1 + 8) = v16;
        if (v16 != -1 && v16 + 1 == *a2 && (v16 + 2) * v15 + 9 == a3)
        {
          v17 = cc_ws_alloc(v26, v14);
          uint_internal = ccn_read_uint_internal(v14, v17, v15, a4 + 9);
          if (uint_internal)
          {
            v24 = uint_internal;
            goto LABEL_20;
          }

          v19 = cczp_prime(*a1);
          if (!ccn_cmp_public_value(v14, v17, v19))
          {
            v20 = 0;
            v21 = a1 + 16;
            v22 = v15 + a4 + 9;
            while (!ccn_read_uint_internal(v14, v21 + 8 * v14 * v20, v15, v22))
            {
              v23 = cczp_prime(*a1);
              if (ccn_cmp_public_value(v14, v21 + 8 * v14 * v20, v23) != -1)
              {
                break;
              }

              ++v20;
              v22 += v15;
              if (v20 > *(a1 + 8))
              {
                v24 = 0;
                goto LABEL_20;
              }
            }
          }
        }
      }
    }
  }

  v24 = 4294967289;
LABEL_20:
  v27 = 0;
  v29(v26);
LABEL_22:
  cc_disable_dit(&v30);
  return v24;
}

uint64_t ccmode_ccm_init(uint64_t a1, void *a2)
{
  v2 = *(a1 + 72);
  *a2 = v2;
  (*(v2 + 16))();
  return 0;
}

uint64_t ccpost(unsigned int *a1, int64x2_t *a2)
{
  memset(v5, 0, sizeof(v5));
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = v5;
  }

  cc_clear(0x18uLL, v3);
  ccpost_internal(a1, v3);
  if (v3->i64[1])
  {
    return 4294967221;
  }

  else
  {
    return 0;
  }
}

unsigned int *ccpost_internal(unsigned int *result, int64x2_t *a2)
{
  if (result)
  {
    v2 = *result;
    if (v2 < 4)
    {
      return (vector_handlers[v2])(result, a2);
    }

    else
    {
      *a2 = vaddq_s64(*a2, vdupq_n_s64(1uLL));
      if (!a2[1].i64[0])
      {
        a2[1].i64[0] = result;
      }
    }
  }

  return result;
}

uint64_t ccpost_report(uint64_t result, void *a2, int a3)
{
  ++*a2;
  if (a3)
  {
    v3 = a2[2];
    ++a2[1];
    if (!v3)
    {
      a2[2] = result;
    }
  }

  return result;
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

unint64_t ccec_rfc6637_wrap_pub_size(uint64_t *a1, char a2)
{
  v3 = cczp_bitlen(*a1);
  if (a2)
  {
    return (v3 + 7) >> 3;
  }

  else
  {
    return ((v3 + 7) >> 2) | 1;
  }
}

unint64_t ccec_rfc6637_wrap_key_size(uint64_t *a1, char a2, uint64_t a3)
{
  v9 = timingsafe_enable_if_supported();
  v6 = cczp_bitlen(*a1);
  if (a2)
  {
    v7 = (v6 + 7) >> 3;
  }

  else
  {
    v7 = ((v6 + 7) >> 2) | 1;
  }

  if ((a2 & 2) != 0)
  {
    v7 += a3 + ((cczp_bitlen(*a1) + 7) >> 3) + 2;
  }

  cc_disable_dit_with_sb(&v9);
  return v7 + 51;
}

uint64_t ccec_rfc6637_wrap_key(uint64_t *a1, _WORD *a2, uint64_t a3, char a4, size_t a5, void *a6, char *a7, uint64_t (**a8)(void), char *a9, uint64_t (**a10)(void, uint64_t, uint64_t *))
{
  v34 = timingsafe_enable_if_supported();
  v17 = *a1;
  v18 = **a1;
  v19 = sizeof_struct_cche_galois_key();
  v20 = sizeof_struct_ccpolyzp_po2cyc();
  v30[0] = cc_malloc_clear(248 * v18 + 16 * ((v19 + v20 + 4 * v18 * v20 - 1) / v20));
  v21 = *v17;
  v22 = sizeof_struct_cche_galois_key();
  v23 = sizeof_struct_ccpolyzp_po2cyc();
  v30[1] = 31 * v21 + 2 * ((v22 + v23 + 4 * v21 * v23 - 1) / v23);
  v31 = 0;
  v32 = cc_ws_alloc;
  v33 = cc_ws_free;
  if (v30[0])
  {
    v24 = *a1;
    v25 = cc_ws_alloc(v30, (4 * (**a1 & 0x7FFFFFFFFFFFFFFLL)) | 2);
    key_ws = ccecdh_generate_key_ws(v30, v24, a10, v25);
    if (!key_ws)
    {
      key_ws = ccec_rfc6637_wrap_core_ws(v30, a1, v25, a2, a3, a4, a5, a6, a7, a8, a9, a10);
    }

    v27 = key_ws;
    v31 = 0;
    v33(v30);
  }

  else
  {
    v27 = 4294967283;
  }

  cc_disable_dit_with_sb(&v34);
  return v27;
}

uint64_t ccz_size()
{
  v1 = timingsafe_enable_if_supported();
  cc_disable_dit_with_sb(&v1);
  return 32;
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

uint64_t done_0(void *a1)
{
  cc_clear(0x40uLL, a1 + 1);
  result = cc_clear(0x40uLL, a1 + 9);
  a1[17] = -1;
  return result;
}

uint64_t update_0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = &v21;
  v24 = *MEMORY[0x29EDCA608];
  v11 = a1 + 72;
  v12 = **a1;
  v13 = *v12;
  v23 = 0;
  MEMORY[0x2A1C7C4A8](a1);
  v15 = (&v21 - v14);
  v16 = 0;
  for (i = 0; i < 2u; ++i)
  {
    cchmac_init_internal(v12, v15, v13, (a1 + 8));
    cchmac_update_internal(v12, v15, v13, v11);
    cchmac_update_internal(v12, v15, 1, &i);
    v23 = &a9;
    for (j = a2; j; --j)
    {
      v18 = v23++;
      v19 = *v18;
      v23 = v18 + 2;
      cchmac_update_internal(v12, v15, v19, v18[1]);
      v16 += v19;
    }

    cchmac_final_internal(v12, v15, a1 + 8);
    cchmac_internal(v12, v13, (a1 + 8), v13, v11, v11);
    if (!v16)
    {
      break;
    }
  }

  return cc_clear(((v12[1] + v12[2] + 19) & 0xFFFFFFFFFFFFFFF8) + v12[1], v15);
}

unint64_t cche_relin_key_nof_n(uint64_t a1)
{
  v2 = sizeof_struct_ccpolyzp_po2cyc() + 7;
  v3 = cche_param_ctx_key_ctx_nmoduli(a1);
  if ((v3 - 1) <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = (v3 - 1);
  }

  v5 = cche_param_ctx_polynomial_degree(a1);
  v6 = cche_ciphertext_fresh_npolys();
  v7 = sizeof_struct_ccrns_mul_modulus();
  v8 = sizeof_struct_ccpolyzp_po2cyc();
  return ((v7 + v8 - 1) / v8 + ((v5 * v3) + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3)) * v6) * v4 + (v2 >> 3);
}

unint64_t cche_relin_key_ciphertext(uint64_t *a1, unsigned int a2)
{
  v4 = cche_param_ctx_chain_const(*a1);
  v5 = a2;
  v6 = cche_ciphertext_fresh_npolys();
  v7 = sizeof_struct_ccrns_mul_modulus();
  v8 = sizeof_struct_ccpolyzp_po2cyc();
  return &a1[((v7 + v8 - 1) / v8 + ((*(v4 + 12) * *(v4 + 8)) + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3)) * v6) * v5 + 1];
}

uint64_t cche_relin_key_generate(uint64_t *a1, int **a2, uint64_t a3, int a4, uint64_t a5, uint64_t (**a6)(void, uint64_t, uint64_t))
{
  v26 = timingsafe_enable_if_supported();
  v12 = cche_param_ctx_chain_const(a3);
  v13 = cche_param_ctx_polynomial_degree(a3);
  v14 = v13;
  v15 = *(v12 + 12);
  v16 = CCPOLYZP_PO2CYC_WORKSPACE_N(v13, *(v12 + 12));
  v17 = CCHE_ENCRYPT_ZERO_SYMMETRIC_EVAL_WORKSPACE_N(v14, v15);
  v24[0] = cc_malloc_clear(8 * (v17 + v16));
  v18 = cche_param_ctx_polynomial_degree(a3);
  v19 = v18;
  v20 = *(v12 + 12);
  v21 = CCPOLYZP_PO2CYC_WORKSPACE_N(v18, v20);
  v24[1] = CCHE_ENCRYPT_ZERO_SYMMETRIC_EVAL_WORKSPACE_N(v19, v20) + v21;
  v24[2] = 0;
  v24[3] = cc_ws_alloc;
  v25 = cc_ws_free;
  if (v24[0])
  {
    ws = cche_relin_key_generate_ws(v24, a1, a2, a3, a4, a5, a6);
    v25(v24);
  }

  else
  {
    ws = 4294967283;
  }

  cc_disable_dit_with_sb(&v26);
  return ws;
}

uint64_t cche_relin_key_save(int a1, uint64_t a2, uint64_t *a3)
{
  v13 = timingsafe_enable_if_supported();
  v6 = cche_param_ctx_polynomial_degree(*a3);
  v7 = CCPOLYZP_PO2CYC_SERIALIZE_POLY_WORKSPACE_N(v6);
  v11[0] = cc_malloc_clear(8 * v7);
  v8 = cche_param_ctx_polynomial_degree(*a3);
  v11[1] = CCPOLYZP_PO2CYC_SERIALIZE_POLY_WORKSPACE_N(v8);
  v11[2] = 0;
  v11[3] = cc_ws_alloc;
  v12 = cc_ws_free;
  if (v11[0])
  {
    v9 = cche_relin_key_save_ws(v11, a1, a2, a3);
    v12(v11);
  }

  else
  {
    v9 = 4294967283;
  }

  cc_disable_dit_with_sb(&v13);
  return v9;
}

uint64_t cche_relin_key_load(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v19 = timingsafe_enable_if_supported();
  v12 = cche_param_ctx_polynomial_degree(a2);
  v13 = CCHE_DESERIALIZE_SEEDED_CIPHERTEXT_EVAL_WORKSPACE_N(v12);
  v17[0] = cc_malloc_clear(8 * v13);
  v14 = cche_param_ctx_polynomial_degree(a2);
  v17[1] = CCHE_DESERIALIZE_SEEDED_CIPHERTEXT_EVAL_WORKSPACE_N(v14);
  v17[2] = 0;
  v17[3] = cc_ws_alloc;
  v18 = cc_ws_free;
  if (v17[0])
  {
    ws = cche_relin_key_load_ws(v17, a1, a2, a3, a4, a5, a6);
    v18(v17);
  }

  else
  {
    ws = 4294967283;
  }

  cc_disable_dit_with_sb(&v19);
  return ws;
}

uint64_t ccz_lsr(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v15 = timingsafe_enable_if_supported();
  v6 = ccz_n(a2);
  v7 = ccn_bitlen_internal(v6, *(a2 + 24));
  v8 = v7 - a3;
  if (v7 <= a3)
  {
    ccz_zero(a1);
  }

  else
  {
    v9 = a3 >> 6;
    v10 = ccz_sign(a2);
    ccz_set_sign(a1, v10);
    v11 = ccz_n(a2);
    ccz_set_capacity(a1, v11 - (a3 >> 6));
    if ((a3 & 0x3F) != 0)
    {
      v12 = ccz_n(a2);
      ccn_shift_right(v12 - v9, *(a1 + 24), (*(a2 + 24) + 8 * v9), a3 & 0x3F);
    }

    else if (a1 != a2 || a3 >= 0x40)
    {
      v13 = ccz_n(a2);
      ccn_set(v13 - v9, *(a1 + 24), (*(a2 + 24) + 8 * v9));
    }

    ccz_set_n(a1, (v8 + 63) >> 6);
  }

  return cc_disable_dit_with_sb(&v15);
}

unint64_t ccsiv_hmac_plaintext_size(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t ccsiv_hmac_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = (*(a1 + 16))(a1, a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t ccsiv_hmac_aad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 32))(a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ccsiv_hmac_set_nonce(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 24))(a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ccsiv_hmac_crypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = (*(a1 + 40))(a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t ccsiv_hmac_reset(uint64_t a1, uint64_t a2)
{
  v6 = timingsafe_enable_if_supported();
  v4 = (*(a1 + 48))(a2);
  cc_disable_dit_with_sb(&v6);
  return v4;
}

uint64_t ccsiv_hmac_one_shot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27 = *MEMORY[0x29EDCA608];
  v19 = timingsafe_enable_if_supported();
  v26 = v19;
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v25[-v20];
  v22 = (*(a1 + 16))(a1, &v25[-v20], a2, a3, a4);
  if (v22 || a7 && (v22 = (*(a1 + 32))(v21, a7, a8), v22) || a5 && (v22 = (*(a1 + 24))(v21, a5, a6), v22))
  {
    v23 = v22;
  }

  else
  {
    v23 = (*(a1 + 40))(v21, a9, a10, a11);
    if (!v23)
    {
      cc_clear(*a1, v21);
    }
  }

  cc_disable_dit_with_sb(&v26);
  return v23;
}

uint64_t fipspost_post_aes_cmac(char a1)
{
  v15[2] = *MEMORY[0x29EDCA608];
  v2 = ccaes_cbc_encrypt_mode();
  v14 = 0;
  if (cccmac_one_shot_generate(v2, 16, "\xE4\xB7\x64[/}c\xB4gL\xD0\x19p\xC9\xD1\xEC\xF2\x66\xA1\x87", 0, &unk_299D9E79B, 4uLL, &v14))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed cccmac_one_shot_generate COUNT #0: %d\n");
    return 4294967224;
  }

  v4 = "\x01\xF2\x66\xA1\x87";
  if ((a1 & 0x10) == 0)
  {
    v4 = "\xF2\x66\xA1\x87";
  }

  if (*v4 != v14)
  {
    v5 = mach_absolute_time();
    v6 = 56;
LABEL_8:
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed AES-CMAC KAT\n", v5, "fipspost_post_aes_cmac", v6);
    return 4294967221;
  }

  v13 = 0;
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed cccmac_one_shot_generate COUNT #32: %d\n");
    return 4294967224;
  }

  v7 = "\x01\xFB\xFE\xA4\x1B";
  if ((a1 & 0x10) == 0)
  {
    v7 = "\xFB\xFE\xA4\x1B";
  }

  if (*v7 != v13)
  {
    v5 = mach_absolute_time();
    v6 = 95;
    goto LABEL_8;
  }

  *(v15 + 7) = 0;
  v15[0] = 0;
  if (cccmac_one_shot_generate(v2, 16, "\x18tYlݽ\xF1\x8A\x10\xBCq\xD6\x0Ck\xB9=", 0x25uLL, "\x12\xA3@\xEF\x01\x5D\xC0\xA3\x86%\xA4\x84~\xB6\xCA\xC9ʹE\x05H\xE9\xF9\x64\x02ue1\xA6\xA5\xBF\x9C7\xC1\x46\xBB\x01", 0xFuLL, v15))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed cccmac_one_shot_generate COUNT #79: %d\n");
    return 4294967224;
  }

  v8 = "\x01&\xA5\xFD%\x80Q)uk[\x1A\xC3\x3D\x87t";
  if ((a1 & 0x10) == 0)
  {
    v8 = "&\xA5\xFD%\x80Q)uk[\x1A\xC3\x3D\x87t";
  }

  v9 = *v8;
  v10 = *(v8 + 7);
  if (v9 != v15[0] || v10 != *(v15 + 7))
  {
    v5 = mach_absolute_time();
    v6 = 134;
    goto LABEL_8;
  }

  if ((a1 & 0x10) != 0)
  {
    v12 = "\x01\xD4\xD7\xFC\xC5\xF9y#\x0F";
  }

  else
  {
    v12 = "\xD4\xD7\xFC\xC5\xF9y#\x0F";
  }

  if (cccmac_one_shot_verify(v2, 0x10uLL, "rV\xE3\x44\xF6\x8B>\x7F\x9D\xD6\xE0L\\e\x13\", 0, &unk_299D9E79B, 8, v12))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed cccmac_one_shot_verify COUNT #2: %d\n");
    return 4294967224;
  }

  if (!cccmac_one_shot_verify(v2, 0x10uLL, "e\x83\xA4\xFF'\xB6\xE1\x09\x04m\x11\xB9w\xC8\x29=", 0x20uLL, "\xB6;\xE3\x20\xF9.\x01&\x0F\xBA71$IJ'd\xDF\xC9((|u\xDC\x1C\xAF\xEE\x7B\x69\x8DH", 8, "\xFA\f\xCE\xD2.\x89k@"))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed cccmac_one_shot_verify COUNT #47: %d\n");
    return 4294967224;
  }

  if (!cccmac_one_shot_verify(v2, 0x10uLL, "\xED\xFE\x2E\x15\xED\xF0\xB0\u0088ue\x1DK\xEC\xFC\xA5", 0x40uLL, aP_1, 8, "{ps\x02\x19\x90}\x18"))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed cccmac_one_shot_verify COUNT #89: %d\n");
    return 4294967224;
  }

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

uint64_t ccn_read_uint(unint64_t a1, void *a2, unint64_t a3, unsigned __int8 *a4)
{
  v10 = timingsafe_enable_if_supported();
  uint_public_value = ccn_read_uint_public_value(a1, a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return uint_public_value;
}

unint64_t ccdh_gp_order_bitlen(void *a1)
{
  v2 = cczp_n(a1);
  v3 = &a1[*a1 + 4 + *a1 + *a1];

  return ccn_bitlen_public_value(v2, v3);
}

double fe_0(uint64_t a1)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double fe_1(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 4) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0;
  return result;
}

int32x4_t fe_add(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = vaddq_s32(*a3, *a2);
  v4 = vaddq_s32(*(a3 + 16), *(a2 + 16));
  v5 = vadd_s32(*(a3 + 32), *(a2 + 32));
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

__n128 fe_copy(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  return result;
}

_DWORD *fe_invert(_DWORD *a1, int *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  fe_sq(v19, a2);
  fe_sq(v17, v19);
  fe_sq(v17, v17);
  fe_mul(v17, a2, v17);
  fe_mul(v19, v19, v17);
  fe_sq(v15, v19);
  fe_mul(v17, v17, v15);
  fe_sq(v15, v17);
  v4 = 4;
  do
  {
    fe_sq(v15, v15);
    --v4;
  }

  while (v4);
  fe_mul(v17, v15, v17);
  fe_sq(v15, v17);
  v5 = 9;
  do
  {
    fe_sq(v15, v15);
    --v5;
  }

  while (v5);
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  fe_mul(v15, v15, v17);
  fe_sq(v13, v15);
  v6 = 19;
  do
  {
    fe_sq(v13, v13);
    --v6;
  }

  while (v6);
  fe_mul(v15, v13, v15);
  fe_sq(v15, v15);
  v7 = 9;
  do
  {
    fe_sq(v15, v15);
    --v7;
  }

  while (v7);
  fe_mul(v17, v15, v17);
  fe_sq(v15, v17);
  v8 = 49;
  do
  {
    fe_sq(v15, v15);
    --v8;
  }

  while (v8);
  fe_mul(v15, v15, v17);
  fe_sq(v13, v15);
  v9 = 99;
  do
  {
    fe_sq(v13, v13);
    --v9;
  }

  while (v9);
  fe_mul(v15, v13, v15);
  fe_sq(v15, v15);
  v10 = 49;
  do
  {
    fe_sq(v15, v15);
    --v10;
  }

  while (v10);
  fe_mul(v17, v15, v17);
  fe_sq(v17, v17);
  v11 = 4;
  do
  {
    fe_sq(v17, v17);
    --v11;
  }

  while (v11);
  return fe_mul(a1, v17, v19);
}

_DWORD *fe_sq(_DWORD *result, int *a2)
{
  v3 = a2[4];
  v2 = a2[5];
  v5 = a2[6];
  v4 = a2[7];
  v6 = 19 * v5;
  v7 = *a2;
  v8 = a2[1];
  v9 = 38 * v4;
  v11 = a2[8];
  v10 = a2[9];
  v12 = 19 * v11;
  v14 = a2[2];
  v13 = a2[3];
  v15 = 2 * v7;
  v16 = 2 * v14;
  v17 = 38 * v10;
  v18 = 2 * v7 * v8;
  v19 = 2 * v8 * v14;
  v20 = 38 * v2 * v2 + v7 * v7 + v6 * 2 * v3 + v9 * 2 * v13 + v12 * 2 * v14 + v17 * 2 * v8;
  v21 = 2 * v8 * v8 + v14 * 2 * v7;
  v22 = 2 * v13 * 2 * v8 + v14 * v14 + v3 * 2 * v7 + v9 * v4 + 2 * v5 * v12 + v17 * 2 * v2;
  v23 = v18 + v6 * 2 * v2 + v9 * v3 + v12 * 2 * v13 + v17 * v14 + ((v20 + 0x2000000) >> 26);
  v24 = 2 * v14 * v13 + v3 * 2 * v8 + v2 * v15 + v12 * 2 * v4 + v17 * v5 + ((v22 + 0x2000000) >> 26);
  v25 = v21 + v6 * v5 + v9 * 2 * v2 + v12 * 2 * v3 + v17 * 2 * v13 + ((v23 + 0x1000000) >> 25);
  v26 = v3 * 2 * v14 + 2 * v13 * v13 + 2 * v2 * 2 * v8 + v5 * v15 + v12 * v11 + v17 * 2 * v4 + ((v24 + 0x1000000) >> 25);
  v27 = v19 + v13 * v15 + v9 * v5 + v12 * 2 * v2 + v17 * v3 + ((v25 + 0x2000000) >> 26);
  LODWORD(v12) = v25 - ((v25 + 0x2000000) & 0xFC000000);
  v28 = 2 * v3 * v2;
  v29 = 2 * v13 * v3 + v2 * v16;
  v30 = v5 * v16 + v3 * v3 + 2 * v2 * 2 * v13;
  v31 = v29 + v5 * 2 * v8 + v4 * v15 + v17 * v11 + ((v26 + 0x2000000) >> 26);
  v32 = v28 + v5 * 2 * v13 + v4 * v16 + v11 * 2 * v8;
  v33 = v30 + 2 * v4 * 2 * v8 + v11 * v15 + v17 * v10 + ((v31 + 0x1000000) >> 25);
  v34 = v32 + v10 * v15 + ((v33 + 0x2000000) >> 26);
  v35 = v20 - ((v20 + 0x2000000) & 0xFFFFFFFFFC000000) + 19 * ((v34 + 0x1000000) >> 25);
  *result = v35 - ((v35 + 0x2000000) & 0xFC000000);
  result[1] = v23 - ((v23 + 0x1000000) & 0xFE000000) + ((v35 + 0x2000000) >> 26);
  v36 = v22 - ((v22 + 0x2000000) & 0xFFFFFFFFFC000000) + ((v27 + 0x1000000) >> 25);
  result[2] = v12;
  result[3] = v27 - ((v27 + 0x1000000) & 0xFE000000);
  result[4] = v36 - ((v36 + 0x2000000) & 0xFC000000);
  result[5] = v24 - ((v24 + 0x1000000) & 0xFE000000) + ((v36 + 0x2000000) >> 26);
  result[6] = v26 - ((v26 + 0x2000000) & 0xFC000000);
  result[7] = v31 - ((v31 + 0x1000000) & 0xFE000000);
  result[8] = v33 - ((v33 + 0x2000000) & 0xFC000000);
  result[9] = v34 - ((v34 + 0x1000000) & 0xFE000000);
  return result;
}

_DWORD *fe_mul(_DWORD *a1, int *a2, int *a3)
{
  v3 = a2[8];
  v4 = a2[9];
  v6 = *a3;
  v5 = a3[1];
  v8 = a3[2];
  v7 = a3[3];
  v9 = 19 * v8;
  v10 = 19 * v7;
  v11 = a3[4];
  v78 = a3[5];
  v12 = 19 * v11;
  v13 = *a2;
  v80 = a2[1];
  v14 = 19 * v78;
  v15 = a2[2];
  v16 = a2[4];
  v17 = a2[5];
  v18 = a2[6];
  v19 = a2[7];
  v76 = a2[3];
  v20 = 19 * v5 * 2 * v4 + *a3 * *a2 + v9 * v3 + v10 * 2 * v19 + v12 * v18 + v14 * 2 * v17;
  v21 = v5 * 2 * v76 + *a3 * v16 + v8 * v15 + v7 * 2 * v80 + v11 * *a2 + v14 * 2 * v4;
  v22 = *a3 * v80 + v5 * *a2 + v9 * v4 + v10 * v3 + v12 * v19 + v14 * v18;
  v23 = v5 * 2 * v80 + *a3 * v15 + v8 * *a2 + v10 * 2 * v4 + v12 * v3 + v14 * 2 * v19;
  v24 = *a3 * v76 + v5 * v15 + v8 * v80 + v7 * *a2 + v12 * v4 + v14 * v3;
  LODWORD(v10) = a3[6];
  v25 = a3[7];
  v26 = 19 * v10;
  v27 = v20 + v26 * v16;
  v28 = v21 + v26 * v3;
  v29 = v22 + v26 * v17;
  v30 = *a3 * v17 + v5 * v16 + v8 * v76 + v7 * v15 + v11 * v80 + v78 * *a2 + v26 * v4;
  v31 = v23 + v26 * v18;
  v32 = v24 + v26 * v19;
  v33 = 19 * v25;
  v75 = v27 + v33 * 2 * v76;
  v72 = v28 + v33 * 2 * v19;
  v74 = v29 + v33 * v16;
  v34 = v30 + v33 * v3;
  v35 = v31 + v33 * 2 * v17;
  v36 = v5 * 2 * v17 + *a3 * v18 + v8 * v16 + v7 * 2 * v76 + v11 * v15 + v78 * 2 * v80 + v10 * *a2 + v33 * 2 * v4;
  v73 = v32 + v33 * v18;
  LODWORD(v33) = a3[8];
  v37 = a3[9];
  v38 = 19 * v33;
  v39 = 19 * v37;
  v77 = v36 + v38 * v3 + v39 * 2 * v19;
  v40 = v5 * 2 * v19 + v6 * v3;
  v41 = v6 * v19 + v5 * v18;
  v42 = v6 * v4 + v5 * v3 + v8 * v19;
  v43 = v41 + v8 * v17;
  v44 = v40 + v8 * v18;
  v45 = v72 + v38 * v18 + v39 * 2 * v17;
  v46 = v44 + v7 * 2 * v17;
  v47 = v34 + v38 * v19 + v39 * v18;
  v48 = v42 + v7 * v18;
  v49 = v43 + v7 * v16 + v11 * v76 + v78 * v15 + v10 * v80 + v25 * *a2 + v38 * v4;
  v50 = v75 + v38 * v15;
  v51 = v74 + v38 * v76;
  v52 = v35 + v38 * v16;
  v53 = v48 + v11 * v17 + v78 * v16;
  v54 = v73 + v38 * v17 + v39 * v16;
  v55 = v49 + v39 * v3;
  v56 = v53 + v10 * v76;
  v57 = v46 + v11 * v16 + v78 * 2 * v76 + v10 * v15;
  v58 = v50 + v39 * 2 * v80;
  v59 = v57 + v25 * 2 * v80 + v33 * *a2 + v39 * 2 * v4;
  v60 = v51 + v39 * v15 + ((v58 + 0x2000000) >> 26);
  v61 = v47 + ((v45 + 0x2000000) >> 26);
  v62 = v45 - ((v45 + 0x2000000) & 0xFFFFFFFFFC000000);
  v63 = v52 + v39 * 2 * v76 + ((v60 + 0x1000000) >> 25);
  v64 = v77 + ((v61 + 0x1000000) >> 25);
  v65 = v54 + ((v63 + 0x2000000) >> 26);
  v66 = v55 + ((v64 + 0x2000000) >> 26);
  v67 = v59 + ((v66 + 0x1000000) >> 25);
  v68 = v56 + v25 * v15 + v33 * v80 + v37 * v13 + ((v67 + 0x2000000) >> 26);
  v69 = v58 - ((v58 + 0x2000000) & 0xFFFFFFFFFC000000) + 19 * ((v68 + 0x1000000) >> 25);
  result = a1;
  *a1 = v69 - ((v69 + 0x2000000) & 0xFC000000);
  a1[1] = v60 - ((v60 + 0x1000000) & 0xFE000000) + ((v69 + 0x2000000) >> 26);
  v71 = v62 + ((v65 + 0x1000000) >> 25);
  a1[2] = v63 - ((v63 + 0x2000000) & 0xFC000000);
  a1[3] = v65 - ((v65 + 0x1000000) & 0xFE000000);
  a1[4] = v71 - ((v71 + 0x2000000) & 0xFC000000);
  a1[5] = v61 - ((v61 + 0x1000000) & 0xFE000000) + ((v71 + 0x2000000) >> 26);
  a1[6] = v64 - ((v64 + 0x2000000) & 0xFC000000);
  a1[7] = v66 - ((v66 + 0x1000000) & 0xFE000000);
  a1[8] = v67 - ((v67 + 0x2000000) & 0xFC000000);
  a1[9] = v68 - ((v68 + 0x1000000) & 0xFE000000);
  return result;
}

uint64_t fe_isnegative(_DWORD *a1)
{
  v3 = *MEMORY[0x29EDCA608];
  fe_tobytes(v2, a1);
  return v2[0] & 1;
}

uint64_t fe_tobytes(uint64_t result, _DWORD *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v9 = a2[8];
  v10 = a2[9];
  v11 = *a2 + 19 * ((v10 + ((v9 + ((v8 + ((v7 + ((v6 + ((v5 + ((v4 + ((v3 + ((v2 + ((*a2 + ((19 * v10 + 0x1000000) >> 25)) >> 26)) >> 25)) >> 26)) >> 25)) >> 26)) >> 25)) >> 26)) >> 25)) >> 26)) >> 25);
  v12 = v2 + (v11 >> 26);
  v13 = v3 + (v12 >> 25);
  v14 = v4 + (v13 >> 26);
  v15 = v5 + (v14 >> 25);
  v16 = v6 + (v15 >> 26);
  v17 = v7 + (v16 >> 25);
  v18 = v8 + (v17 >> 26);
  v19 = v9 + (v18 >> 25);
  v20 = v10 + (v19 >> 26);
  *result = v11;
  *(result + 2) = BYTE2(v11);
  *(result + 3) = HIBYTE(v11) & 3 | (4 * v12);
  *(result + 4) = v12 >> 6;
  *(result + 5) = v12 >> 14;
  *(result + 6) = (v12 >> 22) & 7 | (8 * v13);
  *(result + 7) = v13 >> 5;
  *(result + 8) = v13 >> 13;
  *(result + 9) = (v13 >> 21) & 0x1F | (32 * v14);
  *(result + 10) = v14 >> 3;
  *(result + 11) = v14 >> 11;
  *(result + 12) = (v14 >> 19) & 0x3F | (v15 << 6);
  *(result + 13) = v15 >> 2;
  *(result + 14) = v15 >> 10;
  *(result + 15) = v15 >> 18;
  *(result + 16) = v16;
  *(result + 18) = BYTE2(v16);
  *(result + 19) = HIBYTE(v16) & 1 | (2 * v17);
  *(result + 20) = v17 >> 7;
  *(result + 21) = v17 >> 15;
  *(result + 22) = (v17 >> 23) & 7 | (8 * v18);
  *(result + 23) = v18 >> 5;
  *(result + 24) = v18 >> 13;
  *(result + 25) = (v18 >> 21) & 0xF | (16 * v19);
  *(result + 26) = v19 >> 4;
  *(result + 27) = v19 >> 12;
  *(result + 28) = (v19 >> 20) & 0x3F | (v20 << 6);
  *(result + 29) = v20 >> 2;
  *(result + 30) = v20 >> 10;
  *(result + 31) = (v20 >> 18) & 0x7F;
  return result;
}

uint64_t fe_isnonzero(_DWORD *a1)
{
  v3 = *MEMORY[0x29EDCA608];
  fe_tobytes(v2, a1);
  return crypto_verify_32(v2, zero);
}

uint64_t crypto_verify_32(int8x16_t *a1, int8x16_t *a2)
{
  v2 = vorrq_s8(veorq_s8(*a2, *a1), veorq_s8(a2[1], a1[1]));
  *v2.i8 = vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL));
  return ((((v2.i8[0] | v2.i8[4] | ((v2.i32[0] | v2.i32[1]) >> 16) | ((v2.i16[0] | v2.i16[2] | ((v2.i32[0] | v2.i32[1]) >> 16)) >> 8)) - 1) >> 8) & 1) - 1;
}

_DWORD *fe_frombytes(_DWORD *result, unsigned int *a2)
{
  v2 = *(a2 + 6);
  v3 = (*(a2 + 4) << 6) | (*(a2 + 5) << 14) | (v2 << 22);
  v4 = *(a2 + 12);
  v5 = *(a2 + 25);
  v6 = (*(a2 + 31) & 0x7F) << 18;
  v7 = v6 | (*(a2 + 30) << 10) | (4 * *(a2 + 29));
  v6 += 0x1000000;
  v8 = a2[4];
  v9 = *a2 + 19 * (v6 >> 25);
  v10 = (v2 << 22) + 0x1000000;
  v11 = v8 + 0x1000000;
  v12 = ((32 * *(a2 + 7)) | (*(a2 + 8) << 13) | (*(a2 + 9) << 21)) + (v10 >> 25);
  LODWORD(v10) = v3 - (v10 & 0x7E000000) + ((v9 + 0x2000000) >> 26);
  v13 = v9 - ((v9 + 0x2000000) & 0xFC000000);
  v14 = ((v12 + 0x2000000) >> 26) + ((8 * *(a2 + 10)) | (*(a2 + 11) << 11) | (v4 << 19));
  v15 = (v4 << 19) + 0x1000000;
  v16 = v14 - (v15 & 0xE000000);
  v17 = ((4 * *(a2 + 13)) | (*(a2 + 14) << 10) | (*(a2 + 15) << 18)) + (v15 >> 25);
  v18 = v8 - ((v8 + 0x1000000) & 0xFE000000) + ((v17 + 0x2000000) >> 26);
  v19 = *(a2 + 26);
  v20 = ((*(a2 + 20) << 7) | (*(a2 + 21) << 15) | (*(a2 + 22) << 23)) + (v11 >> 25);
  v21 = ((v20 + 0x2000000) >> 26) + ((32 * *(a2 + 23)) | (*(a2 + 24) << 13) | (v5 << 21));
  v22 = *(a2 + 27);
  v23 = *(a2 + 28);
  v24 = (v5 << 21) + 0x1000000;
  v25 = v21 - (v24 & 0x3E000000);
  *result = v13;
  result[1] = v10;
  v26 = ((16 * v19) | (v22 << 12) | (v23 << 20)) + (v24 >> 25);
  result[2] = v12 - ((v12 + 0x2000000) & 0xFC000000);
  result[3] = v16;
  result[4] = v17 - ((v17 + 0x2000000) & 0xFC000000);
  result[5] = v18;
  result[6] = v20 - ((v20 + 0x2000000) & 0xFC000000);
  result[7] = v25;
  result[8] = v26 - ((v26 + 0x2000000) & 0xFC000000);
  result[9] = v7 + ((v26 + 0x2000000) >> 26) - (v6 & 0x2000000);
  return result;
}

int32x4_t fe_neg(uint64_t a1, uint64_t a2)
{
  result = vnegq_s32(*a2);
  v3 = vnegq_s32(*(a2 + 16));
  v4 = vneg_s32(*(a2 + 32));
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  return result;
}

_DWORD *fe_pow22523(_DWORD *a1, int *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  fe_sq(v16, a2);
  fe_sq(v14, v16);
  fe_sq(v14, v14);
  fe_mul(v14, a2, v14);
  fe_mul(v16, v16, v14);
  fe_sq(v16, v16);
  fe_mul(v16, v14, v16);
  fe_sq(v14, v16);
  v4 = 4;
  do
  {
    fe_sq(v14, v14);
    --v4;
  }

  while (v4);
  fe_mul(v16, v14, v16);
  fe_sq(v14, v16);
  v5 = 9;
  do
  {
    fe_sq(v14, v14);
    --v5;
  }

  while (v5);
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  fe_mul(v14, v14, v16);
  fe_sq(v12, v14);
  v6 = 19;
  do
  {
    fe_sq(v12, v12);
    --v6;
  }

  while (v6);
  fe_mul(v14, v12, v14);
  fe_sq(v14, v14);
  v7 = 9;
  do
  {
    fe_sq(v14, v14);
    --v7;
  }

  while (v7);
  fe_mul(v16, v14, v16);
  fe_sq(v14, v16);
  v8 = 49;
  do
  {
    fe_sq(v14, v14);
    --v8;
  }

  while (v8);
  fe_mul(v14, v14, v16);
  fe_sq(v12, v14);
  v9 = 99;
  do
  {
    fe_sq(v12, v12);
    --v9;
  }

  while (v9);
  fe_mul(v14, v12, v14);
  fe_sq(v14, v14);
  v10 = 49;
  do
  {
    fe_sq(v14, v14);
    --v10;
  }

  while (v10);
  fe_mul(v16, v14, v16);
  fe_sq(v16, v16);
  fe_sq(v16, v16);
  return fe_mul(a1, v16, a2);
}

_DWORD *fe_sq2(_DWORD *result, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[4];
  v5 = a2[5];
  v7 = a2[6];
  v6 = a2[7];
  v8 = 19 * v7;
  v10 = a2[2];
  v9 = a2[3];
  v12 = a2[8];
  v11 = a2[9];
  v13 = 2 * v2;
  v14 = 2 * v3;
  v15 = 2 * v10;
  v16 = 38 * v6;
  v17 = 2 * v9;
  v18 = 2 * v5;
  v19 = 19 * v12;
  v20 = 38 * v11;
  v21 = 38 * v5 * v5 + v2 * v2 + v8 * 2 * v4;
  v22 = 2 * v2 * v3 + v8 * 2 * v5;
  v23 = 2 * v3 * v3 + v10 * v13 + v8 * v7;
  v24 = v22 + v16 * v4 + v19 * 2 * v9 + v20 * v10;
  v25 = 2 * v9 * v14 + v10 * v10 + v4 * v13 + v16 * v6 + 2 * v7 * v19;
  v26 = v21 + v16 * 2 * v9 + v19 * 2 * v10;
  v27 = v23 + v16 * 2 * v5 + v19 * 2 * v4;
  v28 = v14 * v10 + v9 * v13 + v16 * v7 + v19 * 2 * v5;
  v29 = v15 * v9 + v4 * v14 + v5 * v13 + v19 * 2 * v6;
  v30 = v4 * v15 + 2 * v9 * v9 + 2 * v5 * v14 + v7 * v13 + v19 * v12;
  v31 = 2 * v4 * v5;
  v32 = 2 * v9 * v4 + v5 * v15;
  v33 = v28 + v20 * v4;
  v34 = v25 + v20 * v18;
  v35 = v7 * v15 + v4 * v4 + v18 * v17;
  v36 = v27 + v20 * v17;
  v37 = v31 + v7 * v17;
  v38 = v29 + v20 * v7;
  v39 = v32 + v7 * v14;
  v40 = v26 + v20 * v14;
  v41 = v37 + v6 * v15;
  v42 = 2 * v40 + 0x2000000;
  v43 = (v42 >> 26) + 2 * v24;
  v44 = v39 + v6 * v13 + v20 * v12;
  v45 = v35 + 2 * v6 * v14 + v12 * v13;
  v46 = 2 * v40 - (v42 & 0xFFFFFFFFFC000000);
  v47 = 2 * v34 + 0x2000000;
  v48 = (v47 >> 26) + 2 * v38;
  v49 = v41 + v12 * v14;
  v50 = ((v43 + 0x1000000) >> 25) + 2 * v36;
  LODWORD(v12) = v43 - ((v43 + 0x1000000) & 0xFE000000);
  v51 = v49 + v11 * v13;
  v52 = ((v48 + 0x1000000) >> 25) + 2 * (v30 + v20 * 2 * v6);
  v53 = ((v50 + 0x2000000) >> 26) + 2 * v33;
  v54 = ((v52 + 0x2000000) >> 26) + 2 * v44;
  v55 = ((v54 + 0x1000000) >> 25) + 2 * (v45 + v20 * v11);
  v56 = ((v55 + 0x2000000) >> 26) + 2 * v51;
  v57 = v46 + 19 * ((v56 + 0x1000000) >> 25);
  *result = v57 - ((v57 + 0x2000000) & 0xFC000000);
  result[1] = v12 + ((v57 + 0x2000000) >> 26);
  v58 = 2 * v34 - (v47 & 0xFFFFFFFFFC000000) + ((v53 + 0x1000000) >> 25);
  result[2] = v50 - ((v50 + 0x2000000) & 0xFC000000);
  result[3] = v53 - ((v53 + 0x1000000) & 0xFE000000);
  result[4] = v58 - ((v58 + 0x2000000) & 0xFC000000);
  result[5] = v48 - ((v48 + 0x1000000) & 0xFE000000) + ((v58 + 0x2000000) >> 26);
  result[6] = v52 - ((v52 + 0x2000000) & 0xFC000000);
  result[7] = v54 - ((v54 + 0x1000000) & 0xFE000000);
  result[8] = v55 - ((v55 + 0x2000000) & 0xFC000000);
  result[9] = v56 - ((v56 + 0x1000000) & 0xFE000000);
  return result;
}

int32x4_t fe_sub(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = vsubq_s32(*a2, *a3);
  v4 = vsubq_s32(*(a2 + 16), *(a3 + 16));
  v5 = vsub_s32(*(a2 + 32), *(a3 + 32));
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

double ge_add(int *a1, uint64_t a2, int *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  fe_add(a1, a2 + 40, a2);
  fe_sub((a1 + 10), a2 + 40, a2);
  fe_mul(a1 + 20, a1, a3);
  fe_mul(a1 + 10, a1 + 10, a3 + 10);
  fe_mul(a1 + 30, a3 + 30, (a2 + 120));
  fe_mul(a1, (a2 + 80), a3 + 20);
  fe_add(v7, a1, a1);
  fe_sub(a1, (a1 + 20), (a1 + 10));
  fe_add((a1 + 10), (a1 + 20), (a1 + 10));
  fe_add((a1 + 20), v7, (a1 + 30));
  *&result = fe_sub((a1 + 30), v7, (a1 + 30)).u64[0];
  return result;
}

_DWORD *ge_p3_to_cached(uint64_t a1, uint64_t a2)
{
  fe_add(a1, a2 + 40, a2);
  fe_sub(a1 + 40, a2 + 40, a2);
  v4 = *(a2 + 96);
  v5 = *(a2 + 112);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;

  return fe_mul((a1 + 120), (a2 + 120), d2);
}

double ge_p3_dbl(_DWORD *a1, uint64_t a2)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  ge_p3_to_p2(v4, a2);
  return ge_p2_dbl(a1, v4);
}

_DWORD *ge_p1p1_to_p3(_DWORD *a1, int *a2)
{
  fe_mul(a1, a2, a2 + 30);
  fe_mul(a1 + 10, a2 + 10, a2 + 20);
  fe_mul(a1 + 20, a2 + 20, a2 + 30);

  return fe_mul(a1 + 30, a2, a2 + 10);
}

double ge_p2_dbl(_DWORD *a1, int *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  fe_sq(a1, a2);
  fe_sq(a1 + 20, a2 + 10);
  fe_sq2(a1 + 30, a2 + 20);
  fe_add((a1 + 10), a2, (a2 + 10));
  fe_sq(v5, a1 + 10);
  fe_add((a1 + 10), (a1 + 20), a1);
  fe_sub((a1 + 20), (a1 + 20), a1);
  fe_sub(a1, v5, (a1 + 10));

  *&result = fe_sub((a1 + 30), (a1 + 30), (a1 + 20)).u64[0];
  return result;
}

double ge_sub(int *a1, uint64_t a2, int *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  fe_add(a1, a2 + 40, a2);
  fe_sub((a1 + 10), a2 + 40, a2);
  fe_mul(a1 + 20, a1, a3 + 10);
  fe_mul(a1 + 10, a1 + 10, a3);
  fe_mul(a1 + 30, a3 + 30, (a2 + 120));
  fe_mul(a1, (a2 + 80), a3 + 20);
  fe_add(v7, a1, a1);
  fe_sub(a1, (a1 + 20), (a1 + 10));
  fe_add((a1 + 10), (a1 + 20), (a1 + 10));
  fe_sub((a1 + 20), v7, (a1 + 30));
  *&result = fe_add((a1 + 30), v7, (a1 + 30)).u64[0];
  return result;
}

double ge_madd(int *a1, uint64_t a2, int *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  fe_add(a1, a2 + 40, a2);
  fe_sub((a1 + 10), a2 + 40, a2);
  fe_mul(a1 + 20, a1, a3);
  fe_mul(a1 + 10, a1 + 10, a3 + 10);
  fe_mul(a1 + 30, a3 + 20, (a2 + 120));
  fe_add(v7, a2 + 80, a2 + 80);
  fe_sub(a1, (a1 + 20), (a1 + 10));
  fe_add((a1 + 10), (a1 + 20), (a1 + 10));
  fe_add((a1 + 20), v7, (a1 + 30));
  *&result = fe_sub((a1 + 30), v7, (a1 + 30)).u64[0];
  return result;
}

_DWORD *ge_p1p1_to_p2(_DWORD *a1, int *a2)
{
  fe_mul(a1, a2, a2 + 30);
  fe_mul(a1 + 10, a2 + 10, a2 + 20);

  return fe_mul(a1 + 20, a2 + 20, a2 + 30);
}

__n128 ge_p3_to_p2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  *a1 = *a2;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v4 = *(a2 + 56);
  v5 = *(a2 + 72);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = v4;
  *(a1 + 72) = v5;
  result = *(a2 + 80);
  v7 = *(a2 + 96);
  v8 = *(a2 + 112);
  *(a1 + 80) = result;
  *(a1 + 96) = v7;
  *(a1 + 112) = v8;
  return result;
}

uint64_t ge_p3_tobytes(uint64_t a1, int *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  fe_invert(v9, a2 + 20);
  fe_mul(v7, a2, v9);
  fe_mul(v5, a2 + 10, v9);
  fe_tobytes(a1, v5);
  result = fe_tobytes(v11, v7);
  *(a1 + 31) ^= v11[0] << 7;
  return result;
}

double ge_p3_0(uint64_t a1)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 1;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0u;
  *(a1 + 76) = 0x100000000;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 144) = 0u;
  return result;
}

_DWORD *ge_scalarmult_base(_DWORD *a1, int8x16_t *a2)
{
  *(a1 + 4) = 0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  a1[10] = 1;
  *(a1 + 11) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 19) = 0x100000000;
  *(a1 + 21) = 0u;
  *(a1 + 25) = 0u;
  *(a1 + 29) = 0u;
  *(a1 + 33) = 0u;
  *(a1 + 9) = 0u;
  return ge_scalarmult_base_internal(a1, a2);
}

_DWORD *ge_scalarmult_base_internal(_DWORD *a1, int8x16_t *a2)
{
  v3 = 0;
  v25 = *MEMORY[0x29EDCA608];
  v4.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v4.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  do
  {
    v5 = *a2++;
    v26.val[0] = vandq_s8(v5, v4);
    v26.val[1] = vshrq_n_u8(v5, 4uLL);
    v6 = &v23[v3];
    vst2q_s8(v6, v26);
    v3 += 32;
  }

  while (v3 != 64);
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = v23[v7] + v8;
    v8 = (v9 + 8) << 24 >> 28;
    v23[v7++] = v9 - ((v9 + 8) & 0xF0);
  }

  while (v7 != 63);
  v10 = 0;
  memset(v20, 0, sizeof(v20));
  memset(v16, 0, sizeof(v16));
  v24 += v8;
  v11 = 1;
  v17 = 0;
  do
  {
    ge_select(v16, v10, v23[v11]);
    ge_madd(v20, a1, v16);
    ge_p1p1_to_p3(a1, v20);
    ++v10;
    v12 = v11 >= 0x3E;
    v11 += 2;
  }

  while (!v12);
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  ge_p3_to_p2(v21, a1);
  ge_p2_dbl(v20, v21);
  ge_p1p1_to_p2(v18, v20);
  ge_p2_dbl(v20, v18);
  ge_p1p1_to_p2(v18, v20);
  ge_p2_dbl(v20, v18);
  ge_p1p1_to_p2(v18, v20);
  ge_p2_dbl(v20, v18);
  ge_p1p1_to_p3(a1, v20);
  v13 = 0;
  v14 = 0;
  do
  {
    ge_select(v16, v13, v23[v14]);
    ge_madd(v20, a1, v16);
    result = ge_p1p1_to_p3(a1, v20);
    ++v13;
    v12 = v14 >= 0x3E;
    v14 += 2;
  }

  while (!v12);
  return result;
}

uint64_t ge_scalarmult_base_masked(uint64_t a1, int8x16_t *a2, void (**a3)(void, uint64_t, uint64_t *))
{
  v11 = *MEMORY[0x29EDCA608];
  v6 = frandom(v10, a3);
  if (!v6)
  {
    v9 = 0;
    (*a3)(a3, 8, &v9);
    ccn_mux_seed_mask(v9);
    fe_frombytes((a1 + 80), v10);
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 152) = 0;
    v7 = *(a1 + 96);
    *(a1 + 40) = *(a1 + 80);
    *(a1 + 56) = v7;
    *(a1 + 72) = *(a1 + 112);
    ge_scalarmult_base_internal(a1, a2);
  }

  return v6;
}

_BYTE *sc_muladd(_BYTE *a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  v4 = *a2 | ((a2[1] & 0x1F) << 16);
  v5 = *(a2 + 15);
  v6 = (v5 >> 24) | (*(a2 + 19) << 8) | (*(a2 + 20) << 16);
  v7 = *a3 | ((a3[1] & 0x1F) << 16);
  v8 = *(a3 + 15);
  v9 = (v8 >> 24) | (*(a3 + 19) << 8) | (*(a3 + 20) << 16);
  v10 = *(a4 + 15);
  v157 = (v10 >> 24) | (*(a4 + 19) << 8) | (*(a4 + 20) << 16);
  v11 = (*(a2 + 1) >> 5) & 0x1FFFFF;
  v12 = ((HIBYTE(*(a2 + 1)) | (*(a2 + 6) << 8) | (*(a2 + 7) << 16)) >> 2) & 0x1FFFFF;
  v13 = (*(a3 + 1) >> 5) & 0x1FFFFF;
  v14 = ((HIBYTE(*(a3 + 1)) | (*(a3 + 6) << 8) | (*(a3 + 7) << 16)) >> 2) & 0x1FFFFF;
  v163 = v13 * v11 + v7 * v12 + v14 * v4 + (((HIBYTE(*(a4 + 1)) | (*(a4 + 6) << 8) | (*(a4 + 7) << 16)) >> 2) & 0x1FFFFF);
  v15 = (*(a2 + 7) >> 7) & 0x1FFFFF;
  v16 = (*(a2 + 5) >> 4) & 0x1FFFFF;
  v17 = (*(a3 + 7) >> 7) & 0x1FFFFF;
  v18 = (*(a3 + 5) >> 4) & 0x1FFFFF;
  v19 = v13 * v15 + v7 * v16 + v17 * v11 + v4 * v18 + v14 * v12 + ((*(a4 + 5) >> 4) & 0x1FFFFF);
  v20 = ((HIBYTE(*(a2 + 5)) | (*(a2 + 14) << 8) | (*(a2 + 15) << 16)) >> 1) & 0x1FFFFF;
  v21 = (v5 >> 6) & 0x1FFFFF;
  v22 = (v8 >> 6) & 0x1FFFFF;
  v23 = ((HIBYTE(*(a3 + 5)) | (*(a3 + 14) << 8) | (*(a3 + 15) << 16)) >> 1) & 0x1FFFFF;
  v159 = v20 * v13 + v7 * v21 + v17 * v15 + v12 * v18 + v14 * v16 + v4 * v22 + v23 * v11 + ((v10 >> 6) & 0x1FFFFF);
  v6 >>= 3;
  v24 = *(a2 + 21) | ((*(a2 + 23) & 0x1F) << 16);
  v9 >>= 3;
  v25 = *(a3 + 21) | ((*(a3 + 23) & 0x1F) << 16);
  v156 = v6 * v13 + v7 * v24 + v20 * v17 + v18 * v16 + v14 * v21 + v12 * v22 + v23 * v15 + v9 * v11 + v25 * v4 + *(a4 + 21) + ((*(a4 + 23) & 0x1F) << 16);
  v26 = (*(a2 + 23) >> 5) & 0x1FFFFF;
  v27 = ((HIBYTE(*(a2 + 23)) | (*(a2 + 27) << 8) | (*(a2 + 28) << 16)) >> 2) & 0x1FFFFF;
  v28 = v24;
  v29 = (*(a3 + 23) >> 5) & 0x1FFFFF;
  LODWORD(v10) = v25;
  v30 = ((HIBYTE(*(a3 + 23)) | (*(a3 + 27) << 8) | (*(a3 + 28) << 16)) >> 2) & 0x1FFFFF;
  v153 = v13 * v26 + v7 * v27 + v6 * v17 + v18 * v21 + v14 * v24 + v22 * v16 + v23 * v20 + v9 * v15 + v29 * v11 + v25 * v12 + v30 * v4 + (((HIBYTE(*(a4 + 23)) | (*(a4 + 27) << 8) | (*(a4 + 28) << 16)) >> 2) & 0x1FFFFF);
  v31 = (*a4 | ((a4[1] & 0x1F) << 16)) + v7 * v4;
  v32 = v4 * v13 + v7 * v11 + ((*(a4 + 1) >> 5) & 0x1FFFFF) + ((v31 + 0x100000) >> 21);
  v160 = v31 - ((v31 + 0x100000) & 0xFFFFFE00000);
  v146 = v12 * v13 + v7 * v15 + v4 * v17 + v14 * v11 + ((*(a4 + 7) >> 7) & 0x1FFFFF);
  v162 = v13 * v16 + v7 * v20 + v12 * v17 + v18 * v11 + v14 * v15 + v23 * v4 + (((HIBYTE(*(a4 + 5)) | (*(a4 + 14) << 8) | (*(a4 + 15) << 16)) >> 1) & 0x1FFFFF) + ((v19 + 0x100000) >> 21);
  v154 = v19 - ((v19 + 0x100000) & 0xFFFFFFFFFFE00000);
  v150 = v13 * v21 + v7 * v6 + v17 * v16 + v18 * v15 + v14 * v20 + v22 * v11 + v23 * v12 + v9 * v4 + (v157 >> 3);
  v149 = v28 * v13 + v7 * v26 + v17 * v21 + v20 * v18 + v14 * v6 + v22 * v15 + v23 * v16 + v9 * v12 + v4 * v29 + v25 * v11 + ((*(a4 + 23) >> 5) & 0x1FFFFF);
  v33 = *(a2 + 7) >> 7;
  v34 = *(a3 + 7) >> 7;
  v35 = v27 * v13 + v7 * v33 + v28 * v17 + v6 * v18 + v14 * v26 + v20 * v22 + v23 * v21 + v9 * v16 + v12 * v29 + v25 * v15 + v4 * v34;
  v36 = v13 * v33 + v17 * v26 + v28 * v18;
  LODWORD(v13) = *(a2 + 21) | ((*(a2 + 23) & 0x1F) << 16);
  v37 = v10;
  v148 = v35 + v30 * v11 + (*(a4 + 7) >> 7);
  v144 = v27 * v17 + v18 * v26 + v14 * v33;
  v145 = v36 + v14 * v27 + v22 * v21 + v23 * v6 + v9 * v20 + v29 * v15 + v10 * v16 + v34 * v11;
  v38 = v9 * v33 + v29 * v26 + v10 * v27 + v6 * v34 + v30 * v28;
  v39 = v27 * v29 + v10 * v33 + v28 * v34 + v30 * v26 + ((v38 + 0x100000) >> 21);
  v40 = v29 * v33 + v34 * v26 + v30 * v27;
  v41 = v27 * v34 + v30 * v33 + ((v40 + 0x100000) >> 21);
  v143 = v40 - ((v40 + 0x100000) & 0x1FFFFFFE00000);
  v42 = v34 * v33;
  v151 = v32 + 0x100000;
  v152 = v32 - ((v32 + 0x100000) & 0xFFFFFFFFFFE00000);
  v43 = v146 + ((v163 + 0x100000) >> 21);
  v158 = v154 + ((v43 + 0x100000) >> 21);
  v155 = v43 - ((v43 + 0x100000) & 0xFFFFFFFFFFE00000);
  v44 = v17 * v33 + v27 * v18;
  v45 = v18 * v33;
  v46 = v27 * v22 + v23 * v33 + v9 * v26 + v6 * v29 + v37 * v13 + v20 * v34 + v30 * v21;
  v47 = v22 * v33 + v9 * v27 + v13 * v29 + v37 * v26 + v34 * v21 + v30 * v6 + ((v46 + 0x100000) >> 21);
  v48 = v38 - ((v38 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v47 + 0x100000) >> 21);
  v147 = v47 - ((v47 + 0x100000) & 0xFFFFFFFFFFE00000);
  v49 = v44 + v13 * v22 + v23 * v26;
  v50 = v45 + v22 * v26;
  v51 = v143 + ((v39 + 0x100000) >> 21);
  v52 = v39 - ((v39 + 0x100000) & 0xFFFFFFFFFFE00000);
  v53 = v144 + v6 * v22;
  v54 = v50 + v23 * v27;
  v55 = v42 - ((v42 + 0x100000) & 0x7FFFFFFE00000) + ((v41 + 0x100000) >> 21);
  v56 = v41 - ((v41 + 0x100000) & 0x1FFFFFFE00000);
  v57 = (v42 + 0x100000) >> 21;
  v58 = v46 - 683901 * v57 - ((v46 + 0x100000) & 0xFFFFFFFFFFE00000);
  v59 = v53 + v23 * v13;
  v60 = v54 + v9 * v13;
  v61 = v145 + v30 * v12;
  v62 = v49 + v9 * v6 + v20 * v29 + v37 * v21 + v34 * v15 + v30 * v16;
  v63 = v60 + v29 * v21 + v37 * v6 + v34 * v16 + v30 * v20 + ((v62 + 0x100000) >> 21);
  v64 = v59 + v9 * v21 + v29 * v16 + v37 * v20 + v12 * v34 + v30 * v15;
  v65 = v62 - 997805 * v57 + 136657 * v55 - 683901 * v56 - ((v62 + 0x100000) & 0xFFFFFFFFFFE00000);
  v66 = v64 + ((v61 + 0x100000) >> 21);
  v67 = 654183 * v55 + 470296 * v57 - 997805 * v56 + v61 + 136657 * v51 - 683901 * v52 - ((v61 + 0x100000) & 0xFFFFFFFFFFE00000);
  v68 = v150 + ((v159 + 0x100000) >> 21);
  v69 = v149 + ((v156 + 0x100000) >> 21);
  v70 = 666643 * v51 + 470296 * v52 + 654183 * v48 + ((v68 + 0x100000) >> 21) + v156 - ((v156 + 0x100000) & 0xFFFFFFFFFFE00000);
  v71 = v148 + ((v153 + 0x100000) >> 21);
  v72 = 666643 * v55 + 470296 * v56 + 654183 * v51 - 997805 * v52 + 136657 * v48 + ((v69 + 0x100000) >> 21) + v153 - ((v153 + 0x100000) & 0xFFFFFFFFFFE00000);
  v73 = v159 + 666643 * v48 - ((v159 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v162 + 0x100000) >> 21);
  v74 = 666643 * v52 + 470296 * v48 + v68 + ((v73 + 0x100000) >> 21) - ((v68 + 0x100000) & 0xFFFFFFFFFFE00000);
  v75 = 666643 * v56 + 470296 * v51 + 654183 * v52 - 997805 * v48 + v69 - ((v69 + 0x100000) & 0xFFFFFFFFFFE00000);
  v76 = v67 + ((v71 + 0x100000) >> 21);
  v77 = v65 + ((v66 + 0x100000) >> 21);
  v78 = -997805 * v55 + 654183 * v57 + 136657 * v56 - 683901 * v51 + v66 - ((v66 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v76 + 0x100000) >> 21);
  v79 = v58 + ((v63 + 0x100000) >> 21);
  v80 = 470296 * v55 + 666643 * v57 + 654183 * v56 - 997805 * v51 + 136657 * v52 - 683901 * v48 + v71 - ((v71 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v72 + 0x100000) >> 21);
  v81 = -683901 * v55 + 136657 * v57 + v63 - ((v63 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v77 + 0x100000) >> 21);
  v82 = v147 + ((v79 + 0x100000) >> 21);
  v83 = v76 - ((v76 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v80 + 0x100000) >> 21);
  v84 = v80 - ((v80 + 0x100000) & 0xFFFFFFFFFFE00000);
  v85 = v77 - ((v77 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v78 + 0x100000) >> 21);
  v86 = v78 - ((v78 + 0x100000) & 0xFFFFFFFFFFE00000);
  v87 = v79 - ((v79 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v81 + 0x100000) >> 21);
  v88 = v81 - ((v81 + 0x100000) & 0xFFFFFFFFFFE00000);
  v89 = v75 + ((v70 + 0x100000) >> 21);
  v90 = -683901 * v82 + ((v89 + 0x100000) >> 21) + v72 - ((v72 + 0x100000) & 0xFFFFFFFFFFE00000);
  v91 = -997805 * v82 + 136657 * v87 - 683901 * v88 + ((v74 + 0x100000) >> 21) + v70 - ((v70 + 0x100000) & 0xFFFFFFFFFFE00000);
  v92 = v160 + 666643 * v83;
  v93 = v152 + 470296 * v83 + 666643 * v86 + ((v92 + 0x100000) >> 21);
  v94 = v162 + 666643 * v82 - ((v162 + 0x100000) & 0xFFFFFFFFFFE00000);
  v95 = v73 + 470296 * v82 - ((v73 + 0x100000) & 0xFFFFFFFFFFE00000) + 654183 * v87 - 997805 * v88 + 136657 * v85 - 683901 * v86;
  v96 = 654183 * v82 - 997805 * v87 + 136657 * v88 + v74 - ((v74 + 0x100000) & 0xFFFFFFFFFFE00000) - 683901 * v85 + ((v95 + 0x100000) >> 21);
  v97 = v95 - ((v95 + 0x100000) & 0xFFFFFFFFFFE00000);
  v98 = 136657 * v82 - 683901 * v87 + v89 - ((v89 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v91 + 0x100000) >> 21);
  v99 = v91 - ((v91 + 0x100000) & 0xFFFFFFFFFFE00000);
  v100 = v84 + ((v90 + 0x100000) >> 21);
  v101 = v93 + 0x100000;
  v102 = v98 + 0x100000;
  v103 = v98 - ((v98 + 0x100000) & 0xFFFFFFFFFFE00000);
  v104 = (v100 + 0x100000) >> 21;
  v105 = v93 + 470296 * v104 - ((v93 + 0x100000) & 0xFFFFFFFFFFE00000);
  v106 = v163 + (v151 >> 21) - ((v163 + 0x100000) & 0xFFFFFFFFFFE00000) + 654183 * v83 + 666643 * v85 + 470296 * v86;
  v107 = v155 + 666643 * v88 - 997805 * v83 + 470296 * v85 + 654183 * v86 + ((v106 + 0x100000) >> 21);
  v108 = v106 + 654183 * v104 - ((v106 + 0x100000) & 0xFFFFFFFFFFE00000) + (v101 >> 21);
  v109 = v158 + 666643 * v87;
  v110 = v94 + 470296 * v87 + 654183 * v88;
  v111 = v109 + 470296 * v88 + 136657 * v83;
  v112 = v110 - 683901 * v83 - 997805 * v85;
  v113 = v111 + 654183 * v85 - 997805 * v86;
  v114 = v112 + 136657 * v86 + ((v113 + 0x100000) >> 21);
  v115 = v113 + 136657 * v104 - ((v113 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v107 + 0x100000) >> 21);
  v116 = v90 + (v102 >> 21) - ((v90 + 0x100000) & 0xFFFFFFFFFFE00000);
  v117 = v92 - ((v92 + 0x100000) & 0xFFFFFFFFFFE00000) + 666643 * v104;
  v118 = v105 + (v117 >> 21);
  v119 = v108 + (v118 >> 21);
  v120 = v107 - 997805 * v104 - ((v107 + 0x100000) & 0xFFFFFFFFFFE00000) + (v119 >> 21);
  v121 = v115 + (v120 >> 21);
  v122 = v114 - 683901 * v104 - ((v114 + 0x100000) & 0xFFFFFFFFFFE00000) + (v121 >> 21);
  v123 = v97 + ((v114 + 0x100000) >> 21) + (v122 >> 21);
  v124 = v96 - ((v96 + 0x100000) & 0xFFFFFFFFFFE00000) + (v123 >> 21);
  v125 = v99 + ((v96 + 0x100000) >> 21) + (v124 >> 21);
  v126 = v103 + (v125 >> 21);
  v127 = v116 + (v126 >> 21);
  v128 = v100 - ((v100 + 0x100000) & 0xFFFFFFFFFFE00000) + (v127 >> 21);
  v129 = (v117 & 0x1FFFFF) + 666643 * (v128 >> 21);
  v130 = (v121 & 0x1FFFFF) + 136657 * (v128 >> 21);
  result = a1;
  a1[1] = (v117 + 11283 * (v128 >> 21)) >> 8;
  v132 = (v118 & 0x1FFFFF) + 470296 * (v128 >> 21) + (v129 >> 21);
  *a1 = v117 + 19 * (v128 >> 21);
  a1[2] = BYTE2(v129) & 0x1F | (32 * (v118 + 24 * (v128 >> 21) + (v129 >> 21)));
  a1[3] = v132 >> 3;
  a1[4] = v132 >> 11;
  v133 = (v119 & 0x1FFFFF) + 654183 * (v128 >> 21) + (v132 >> 21);
  a1[5] = (v132 >> 19) & 3 | (4 * (v119 + 103 * (v128 >> 21) + (v132 >> 21)));
  a1[6] = v133 >> 6;
  v134 = (v120 & 0x1FFFFF) - 997805 * (v128 >> 21) + (v133 >> 21);
  a1[7] = (v133 >> 14) & 0x7F | ((v107 - -83 * v104 + (v119 >> 21) - -83 * (v128 >> 21) + (v133 >> 21)) << 7);
  a1[8] = v134 >> 1;
  a1[9] = v134 >> 9;
  v135 = v130 + (v134 >> 21);
  a1[10] = (v134 >> 17) & 0xF | (16 * v135);
  a1[11] = v135 >> 4;
  a1[12] = v135 >> 12;
  v136 = (v122 & 0x1FFFFF) - 683901 * (v128 >> 21) + (v135 >> 21);
  a1[13] = ((v135 & 0x100000) != 0) | (2 * (v122 - 125 * (v128 >> 21) + (v135 >> 21)));
  a1[14] = v136 >> 7;
  v137 = (v123 & 0x1FFFFF) + (v136 >> 21);
  a1[15] = (v136 >> 15) & 0x3F | ((v123 + (v136 >> 21)) << 6);
  a1[16] = v137 >> 2;
  a1[17] = v137 >> 10;
  v138 = (v124 & 0x1FFFFF) + (v137 >> 21);
  a1[18] = (v137 >> 18) & 7 | (8 * (v96 + (v123 >> 21) + (v137 >> 21)));
  a1[19] = v138 >> 5;
  v139 = (v125 & 0x1FFFFF) + (v138 >> 21);
  a1[20] = v138 >> 13;
  a1[22] = BYTE1(v139);
  v140 = (v126 & 0x1FFFFF) + (v139 >> 21);
  v141 = (v127 & 0x1FFFFF) + (v140 >> 21);
  a1[21] = v139;
  a1[23] = BYTE2(v139) & 0x1F | (32 * (v126 + (v139 >> 21)));
  a1[24] = v140 >> 3;
  a1[25] = v140 >> 11;
  v142 = (v128 & 0x1FFFFF) + (v141 >> 21);
  a1[26] = (v140 >> 19) & 3 | (4 * v141);
  a1[27] = v141 >> 6;
  a1[28] = (v141 >> 14) & 0x7F | ((v128 + (v141 >> 21)) << 7);
  a1[29] = ((v141 >> 21) + v128) >> 1;
  a1[30] = v142 >> 9;
  a1[31] = v142 >> 17;
  return result;
}

unsigned __int16 *sc_reduce(unsigned __int16 *result)
{
  v1 = *(result + 15);
  v2 = *(result + 9);
  v3 = (v2 >> 24) | (*(result + 40) << 8) | (*(result + 41) << 16);
  v4 = ((HIBYTE(*(result + 11)) | (*(result + 48) << 8) | (*(result + 49) << 16)) >> 2) & 0x1FFFFF;
  v5 = (*(result + 49) >> 7) & 0x1FFFFF;
  v6 = (*(result + 13) >> 4) & 0x1FFFFF;
  v7 = ((HIBYTE(*(result + 13)) | (*(result + 56) << 8) | (*(result + 57) << 16)) >> 1) & 0x1FFFFF;
  v8 = ((v1 >> 6) & 0x1FFFFF) + 666643 * v4;
  v9 = (*(result + 21) | ((*(result + 23) & 0x1F) << 16)) + 470296 * v5 + 666643 * v6 + 654183 * v4;
  v10 = (((v1 >> 24) | (*(result + 19) << 8) | (*(result + 20) << 16)) >> 3) + 666643 * v5 + 470296 * v4 + ((v8 + 0x100000) >> 21);
  v11 = ((*(result + 23) >> 5) & 0x1FFFFF) + 654183 * v5 + 470296 * v6 - 997805 * v4 + 666643 * v7 + ((v9 + 0x100000) >> 21);
  v12 = (((HIBYTE(*(result + 23)) | (*(result + 27) << 8) | (*(result + 28) << 16)) >> 2) & 0x1FFFFF) - 997805 * v5 + 654183 * v6 + 136657 * v4;
  v13 = ((*(result + 7) >> 7) & 0x1FFFFF) + 136657 * v5 - 997805 * v6 - 683901 * v4;
  v14 = ((*(result + 31) >> 4) & 0x1FFFFF) - 683901 * v5 + 136657 * v6;
  v15 = (((HIBYTE(*(result + 31)) | (*(result + 35) << 8) | (*(result + 36) << 16)) >> 1) & 0x1FFFFF) - 683901 * v6;
  v16 = *(result + 15) >> 3;
  v17 = ((v2 >> 6) & 0x1FFFFF) - 997805 * v16;
  v18 = (v3 >> 3) + 136657 * v16;
  v19 = (result[21] | ((result[22] & 0x1F) << 16)) - 683901 * v16;
  v20 = v14 + 470296 * v16;
  v21 = v13 + 666643 * v16;
  v22 = v15 + 654183 * v16;
  v23 = (*(result + 57) >> 6) & 0x1FFFFF;
  v24 = v17 + 136657 * v23 - 683901 * v7;
  v25 = v20 + 654183 * v23 - 997805 * v7;
  v26 = v12 + 666643 * v23 + 470296 * v7;
  v27 = v21 + 470296 * v23 + 654183 * v7 + ((v26 + 0x100000) >> 21);
  v28 = v22 - 997805 * v23 + 136657 * v7 + ((v25 + 0x100000) >> 21);
  v29 = v25 - ((v25 + 0x100000) & 0xFFFFFFFFFFE00000);
  v30 = v18 - 683901 * v23 + ((v24 + 0x100000) >> 21);
  v31 = ((*(result + 11) >> 5) & 0x1FFFFF) + ((v19 + 0x100000) >> 21);
  v32 = v29 + ((v27 + 0x100000) >> 21);
  v33 = v24 - ((v24 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v28 + 0x100000) >> 21);
  v34 = v28 - ((v28 + 0x100000) & 0xFFFFFFFFFFE00000);
  v35 = v19 - ((v19 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v30 + 0x100000) >> 21);
  v36 = v30 - ((v30 + 0x100000) & 0xFFFFFFFFFFE00000);
  v37 = v26 - 683901 * v31 - ((v26 + 0x100000) & 0xFFFFFFFFFFE00000);
  v38 = ((*(result + 7) >> 7) & 0x1FFFFF) + 666643 * v36;
  v39 = ((*(result + 5) >> 4) & 0x1FFFFF) + 666643 * v35 + 470296 * v36;
  v40 = (((HIBYTE(*(result + 5)) | (*(result + 14) << 8) | (*(result + 15) << 16)) >> 1) & 0x1FFFFF) + 666643 * v31 + 470296 * v35 + 654183 * v36;
  v41 = v8 - ((v8 + 0x100000) & 0x7FFFFE00000) + 470296 * v31 + 654183 * v35 - 997805 * v36;
  v42 = v10 - ((v10 + 0x100000) & 0x7FFFFFFFFFE00000) + 654183 * v31 - 997805 * v35 + 136657 * v36;
  v43 = v9 - ((v9 + 0x100000) & 0xFFFFFE00000) + ((v10 + 0x100000) >> 21) - 997805 * v31 + 136657 * v35 - 683901 * v36;
  v44 = (((HIBYTE(*(result + 1)) | (*(result + 6) << 8) | (*(result + 7) << 16)) >> 2) & 0x1FFFFF) + 666643 * v33;
  v45 = v38 + 470296 * v33;
  v46 = v39 + 654183 * v33;
  v47 = v40 - 997805 * v33;
  v48 = v41 + 136657 * v33;
  v49 = v42 - 683901 * v33;
  v50 = v48 - 683901 * v34;
  v51 = v37 + ((v11 + 0x100000) >> 21);
  v52 = (*result | ((result[1] & 0x1F) << 16)) + 666643 * v32;
  v53 = v44 + 470296 * v34 + 654183 * v32;
  v54 = v45 + 654183 * v34 - 997805 * v32;
  v55 = v46 - 997805 * v34 + 136657 * v32;
  v56 = v47 + 136657 * v34 - 683901 * v32;
  v57 = ((*(result + 1) >> 5) & 0x1FFFFF) + 666643 * v34 + 470296 * v32 + ((v52 + 0x100000) >> 21);
  v58 = v52 - ((v52 + 0x100000) & 0xFFFFFFFFFFE00000);
  v59 = v49 + ((v50 + 0x100000) >> 21);
  v60 = v50 - ((v50 + 0x100000) & 0xFFFFFFFFFFE00000);
  v61 = v11 + 136657 * v31 - ((v11 + 0x100000) & 0xFFFFFFFFFFE00000) - 683901 * v35 + ((v43 + 0x100000) >> 21);
  v62 = v27 - ((v27 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v51 + 0x100000) >> 21);
  v63 = v57 + 0x100000;
  v64 = v43 - ((v43 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v59 + 0x100000) >> 21);
  v65 = v59 - ((v59 + 0x100000) & 0xFFFFFFFFFFE00000);
  v66 = v51 - ((v51 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v61 + 0x100000) >> 21);
  v67 = v61 - ((v61 + 0x100000) & 0xFFFFFFFFFFE00000);
  v68 = (v62 + 0x100000) >> 21;
  v69 = v54 + ((v53 + 0x100000) >> 21);
  v70 = v69 - 997805 * v68 - ((v69 + 0x100000) & 0xFFFFFFFFFFE00000);
  v71 = v56 + ((v55 + 0x100000) >> 21);
  v72 = v55 + 136657 * v68 - ((v55 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v69 + 0x100000) >> 21);
  v73 = v58 + 666643 * v68;
  v74 = v71 - 683901 * v68;
  v71 += 0x100000;
  v75 = v57 + 470296 * v68 - ((v57 + 0x100000) & 0xFFFFFFFFFFE00000) + (v73 >> 21);
  v76 = v53 + 654183 * v68 - ((v53 + 0x100000) & 0xFFFFFFFFFFE00000) + (v63 >> 21) + (v75 >> 21);
  v77 = v70 + (v76 >> 21);
  v78 = v72 + (v77 >> 21);
  v79 = v74 - (v71 & 0xFFFFFFFFFFE00000) + (v78 >> 21);
  v80 = v60 + (v71 >> 21) + (v79 >> 21);
  v81 = v65 + (v80 >> 21);
  v82 = v64 + (v81 >> 21);
  v83 = v67 + (v82 >> 21);
  v84 = v66 + (v83 >> 21);
  v85 = v62 - ((v62 + 0x100000) & 0xFFFFFFFFFFE00000) + (v84 >> 21);
  v86 = (v73 & 0x1FFFFF) + 666643 * (v85 >> 21);
  *(result + 1) = (v73 + 11283 * (v85 >> 21)) >> 8;
  v87 = (v75 & 0x1FFFFF) + 470296 * (v85 >> 21) + (v86 >> 21);
  *result = v73 + 19 * (v85 >> 21);
  *(result + 2) = (((v73 & 0x1FFFFF) + 666643 * (v85 >> 21)) >> 16) & 0x1F | (32 * (v75 + 24 * (v85 >> 21) + (v86 >> 21)));
  *(result + 3) = v87 >> 3;
  *(result + 4) = v87 >> 11;
  v88 = (v76 & 0x1FFFFF) + 654183 * (v85 >> 21) + (v87 >> 21);
  *(result + 5) = (v87 >> 19) & 3 | (4 * (v76 + 103 * (v85 >> 21) + (v87 >> 21)));
  *(result + 6) = v88 >> 6;
  v89 = (v77 & 0x1FFFFF) - 997805 * (v85 >> 21) + (v88 >> 21);
  *(result + 7) = (v88 >> 14) & 0x7F | ((v77 - -83 * (v85 >> 21) + (v88 >> 21)) << 7);
  *(result + 8) = v89 >> 1;
  *(result + 9) = v89 >> 9;
  v90 = (v78 & 0x1FFFFF) + 136657 * (v85 >> 21) + (v89 >> 21);
  *(result + 10) = (v89 >> 17) & 0xF | (16 * (v78 - 47 * (v85 >> 21) + (v89 >> 21)));
  *(result + 11) = v90 >> 4;
  *(result + 12) = v90 >> 12;
  v91 = (v79 & 0x1FFFFF) - 683901 * (v85 >> 21) + (v90 >> 21);
  *(result + 13) = ((v90 & 0x100000) != 0) | (2 * (v79 - 125 * (v85 >> 21) + (v90 >> 21)));
  *(result + 14) = v91 >> 7;
  v92 = (v80 & 0x1FFFFF) + (v91 >> 21);
  *(result + 15) = (v91 >> 15) & 0x3F | ((v80 + (v91 >> 21)) << 6);
  *(result + 16) = v92 >> 2;
  *(result + 17) = v92 >> 10;
  v93 = (v81 & 0x1FFFFF) + (v92 >> 21);
  *(result + 18) = (v92 >> 18) & 7 | (8 * (v81 + (v92 >> 21)));
  *(result + 19) = v93 >> 5;
  v94 = (v82 & 0x1FFFFF) + (v93 >> 21);
  *(result + 20) = v93 >> 13;
  *(result + 22) = (v82 + (v93 >> 21)) >> 8;
  v95 = (v83 & 0x1FFFFF) + (v94 >> 21);
  *(result + 21) = v94;
  *(result + 23) = BYTE2(v94) & 0x1F | (32 * (v83 + (v94 >> 21)));
  *(result + 24) = v95 >> 3;
  *(result + 25) = v95 >> 11;
  v96 = (v84 & 0x1FFFFF) + (v95 >> 21);
  v97 = (v85 & 0x1FFFFF) + (v96 >> 21);
  *(result + 26) = (v95 >> 19) & 3 | (4 * (v84 + (v95 >> 21)));
  *(result + 27) = v96 >> 6;
  *(result + 28) = (v96 >> 14) & 0x7F | ((v85 + (v96 >> 21)) << 7);
  *(result + 29) = ((v96 >> 21) + v85) >> 1;
  *(result + 30) = v97 >> 9;
  *(result + 31) = v97 >> 17;
  return result;
}

uint64_t ge_select(uint64_t a1, int a2, int a3)
{
  v4 = (a3 >> 7) & 1;
  v5 = a3 - 2 * (a3 & (a3 >> 31));
  *a1 = 1;
  *(a1 + 4) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0x100000000;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 92) = 0u;
  *(a1 + 104) = 0u;
  v6 = (&base + 960 * a2);
  ge_cmov(a1, v6, ((a3 - 2 * (a3 & (a3 >> 31))) ^ 1) - 1 < 0);
  ge_cmov(a1, v6 + 15, (v5 ^ 2) - 1 < 0);
  ge_cmov(a1, v6 + 30, (v5 ^ 3) - 1 < 0);
  ge_cmov(a1, v6 + 45, (v5 ^ 4) - 1 < 0);
  ge_cmov(a1, v6 + 60, (v5 ^ 5) - 1 < 0);
  ge_cmov(a1, v6 + 75, (v5 ^ 6) - 1 < 0);
  ge_cmov(a1, v6 + 90, (v5 ^ 7) - 1 < 0);
  ge_cmov(a1, v6 + 105, (v5 ^ 8) - 1 < 0);
  *&v7 = *(a1 + 72);
  v8 = *(a1 + 56);
  v13[0] = *(a1 + 40);
  v13[1] = v8;
  *(&v7 + 1) = *a1;
  v9 = *(a1 + 8);
  v13[2] = v7;
  v13[3] = v9;
  v10 = *(a1 + 96);
  v11 = vnegq_s32(*(a1 + 80));
  v13[4] = *(a1 + 24);
  v13[5] = v11;
  v13[6] = vnegq_s32(v10);
  v14 = vneg_s32(*(a1 + 112));
  return ge_cmov(a1, v13, v4);
}

uint64_t ge_cmov(uint64_t *a1, uint64_t *a2, char a3)
{
  ccn_mux(5, a3, a1, a2, a1);
  ccn_mux(5, a3, a1 + 5, a2 + 5, a1 + 5);

  return ccn_mux(5, a3, a1 + 10, a2 + 10, a1 + 10);
}

unsigned int *ccsha256_ltc_compress(unsigned int *result, uint64_t a2, const char *a3)
{
  v80[24] = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v3 = *result;
    v4 = result[1];
    v5 = result[2];
    v6 = result[3];
    v7 = result[4];
    v8 = result[5];
    v9 = result[6];
    v10 = result[7];
    do
    {
      v81 = vld4q_s8(a3);
      v11 = vmovl_u8(*v81.val[0].i8);
      v12 = vmovl_high_u8(v81.val[0]);
      _Q16 = vmovl_high_u8(v81.val[1]);
      _Q17 = vmovl_u8(*v81.val[1].i8);
      v15 = vshll_n_s16(*_Q17.i8, 0x10uLL);
      __asm
      {
        SHLL2           V19.4S, V16.8H, #0x10
        SHLL2           V17.4S, V17.8H, #0x10
      }

      v21 = vmovl_u8(*v81.val[2].i8);
      v22 = vmovl_high_u8(v81.val[2]);
      v23 = vorrq_s8(vorrq_s8(vshll_n_s16(*_Q16.i8, 0x10uLL), vshll_n_u16(*v22.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v12.i8), 0x18uLL));
      v24 = vmovl_u8(*v81.val[3].i8);
      v81.val[0] = vmovl_high_u8(v81.val[3]);
      v79[1] = vorrq_s8(v23, vmovl_u16(*v81.val[0].i8));
      v79[2] = vorrq_s8(vorrq_s8(vorrq_s8(_Q19, vshll_high_n_u16(v22, 8uLL)), vshlq_n_s32(vmovl_high_u16(v12), 0x18uLL)), vmovl_high_u16(v81.val[0]));
      v78 = vorrq_s8(vorrq_s8(vorrq_s8(v15, vshll_n_u16(*v21.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v11.i8), 0x18uLL)), vmovl_u16(*v24.i8));
      v79[0] = vorrq_s8(vorrq_s8(vorrq_s8(_Q17, vshll_high_n_u16(v21, 8uLL)), vshlq_n_s32(vmovl_high_u16(v11), 0x18uLL)), vmovl_high_u16(v24));
      --a2;
      v25 = v78.i32[0];
      v26 = v80;
      v27 = 48;
      do
      {
        HIDWORD(v28) = *(v26 - 2);
        LODWORD(v28) = HIDWORD(v28);
        v29 = (v28 >> 17) ^ __ROR4__(HIDWORD(v28), 19) ^ (HIDWORD(v28) >> 10);
        HIDWORD(v28) = *(v26 - 15);
        LODWORD(v28) = HIDWORD(v28);
        *v26 = v29 + *(v26 - 7) + v25 + ((v28 >> 7) ^ __ROR4__(HIDWORD(v28), 18) ^ (HIDWORD(v28) >> 3));
        ++v26;
        v25 = HIDWORD(v28);
        --v27;
      }

      while (v27);
      v30 = &dword_299DA4B90;
      v31 = -8;
      v32 = v79;
      v33 = v3;
      v34 = v4;
      v35 = v5;
      v36 = v6;
      v37 = v7;
      v38 = v8;
      v39 = v9;
      v40 = v10;
      do
      {
        HIDWORD(v41) = v37;
        LODWORD(v41) = v37;
        v42 = (v41 >> 6) ^ __ROR4__(v37, 11);
        v44 = __PAIR64__(v33, __ROR4__(v37, 25));
        v43 = v42 ^ v44;
        LODWORD(v44) = v33;
        v45 = (v38 & v37 | v39 & ~v37) + v40 + *(v30 - 4) + *(v32 - 4) + v43;
        v46 = v45 + v36;
        v47 = ((v44 >> 2) ^ __ROR4__(v33, 13) ^ __ROR4__(v33, 22)) + ((v33 | v34) & v35 | v33 & v34) + v45;
        HIDWORD(v44) = v46;
        LODWORD(v44) = v46;
        v48 = (v44 >> 6) ^ __ROR4__(v46, 11);
        v49 = __PAIR64__(v47, __ROR4__(v46, 25));
        v50 = *(v30 - 3) + v39 + *(v32 - 3) + (v37 & v46 | v38 & ~v46) + (v48 ^ v49);
        LODWORD(v49) = v47;
        v51 = v50 + v35;
        v52 = ((v49 >> 2) ^ __ROR4__(v47, 13) ^ __ROR4__(v47, 22)) + ((v47 | v33) & v34 | v47 & v33) + v50;
        HIDWORD(v49) = v51;
        LODWORD(v49) = v51;
        v53 = (v49 >> 6) ^ __ROR4__(v51, 11);
        v55 = __PAIR64__(v52, __ROR4__(v51, 25));
        v54 = v53 ^ v55;
        LODWORD(v55) = v52;
        v56 = *(v30 - 2) + v38 + *(v32 - 2) + (v46 & v51 | v37 & ~v51) + v54;
        v57 = v56 + v34;
        v58 = ((v55 >> 2) ^ __ROR4__(v52, 13) ^ __ROR4__(v52, 22)) + ((v52 | v47) & v33 | v52 & v47) + v56;
        HIDWORD(v55) = v57;
        LODWORD(v55) = v57;
        v59 = (v55 >> 6) ^ __ROR4__(v57, 11);
        v60 = __PAIR64__(v58, __ROR4__(v57, 25));
        v61 = *(v30 - 1) + v37 + *(v32 - 1) + (v51 & v57 | v46 & ~v57) + (v59 ^ v60);
        LODWORD(v60) = v58;
        v62 = ((v60 >> 2) ^ __ROR4__(v58, 13) ^ __ROR4__(v58, 22)) + ((v58 | v52) & v47 | v58 & v52);
        v63 = v61 + v33;
        v64 = v62 + v61;
        HIDWORD(v60) = v63;
        LODWORD(v60) = v63;
        v65 = (v60 >> 6) ^ __ROR4__(v63, 11);
        v67 = __PAIR64__(v62 + v61, __ROR4__(v63, 25));
        v66 = v65 ^ v67;
        LODWORD(v67) = v64;
        v68 = *v30 + *v32 + v46 + (v57 & v63 | v51 & ~v63) + v66;
        v40 = v68 + v47;
        v36 = ((v67 >> 2) ^ __ROR4__(v64, 13) ^ __ROR4__(v64, 22)) + ((v64 | v58) & v52 | v64 & v58) + v68;
        HIDWORD(v67) = v40;
        LODWORD(v67) = v40;
        v69 = (v67 >> 6) ^ __ROR4__(v40, 11);
        v70 = __PAIR64__(v36, __ROR4__(v40, 25));
        v71 = v51 + v30[1] + v32[1] + (v63 & v40 | v57 & ~v40) + (v69 ^ v70);
        LODWORD(v70) = v36;
        v39 = v71 + v52;
        v35 = ((v70 >> 2) ^ __ROR4__(v36, 13) ^ __ROR4__(v36, 22)) + ((v36 | v64) & v58 | v36 & v64) + v71;
        HIDWORD(v70) = v39;
        LODWORD(v70) = v39;
        v72 = (v70 >> 6) ^ __ROR4__(v39, 11);
        v73 = __PAIR64__(v35, __ROR4__(v39, 25));
        v74 = v32[2] + v30[2] + v57 + (v40 & v39 | v63 & ~v39) + (v72 ^ v73);
        LODWORD(v73) = v35;
        v38 = v74 + v58;
        v34 = ((v73 >> 2) ^ __ROR4__(v35, 13) ^ __ROR4__(v35, 22)) + ((v35 | v36) & v64 | v35 & v36) + v74;
        HIDWORD(v73) = v38;
        LODWORD(v73) = v38;
        v75 = (v73 >> 6) ^ __ROR4__(v38, 11);
        v76 = __PAIR64__(v34, __ROR4__(v38, 25));
        v77 = v32[3] + v30[3] + v63 + (v39 & v38 | v40 & ~v38) + (v75 ^ v76);
        LODWORD(v76) = v34;
        v37 = v77 + v64;
        v33 = ((v76 >> 2) ^ __ROR4__(v34, 13) ^ __ROR4__(v34, 22)) + ((v34 | v35) & v36 | v34 & v35) + v77;
        v31 += 8;
        v32 += 8;
        v30 += 8;
      }

      while (v31 < 0x38);
      v3 += v33;
      v4 += v34;
      *result = v3;
      result[1] = v4;
      v5 += v35;
      v6 += v36;
      result[2] = v5;
      result[3] = v6;
      v7 += v37;
      v8 += v38;
      result[4] = v7;
      result[5] = v8;
      v9 += v39;
      v10 += v40;
      a3 += 64;
      result[6] = v9;
      result[7] = v10;
    }

    while (a2);
  }

  return result;
}

BOOL ccec25519_mul121666_ws(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8[4] = *MEMORY[0x29EDCA608];
  v6 = ccn_mul1(4, v8, a4, 121666);
  result = ccn_add1_ws(a1, 4, a3, v8, 38 * v6);
  *a3 += result ? 0x26uLL : 0;
  return result;
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

uint64_t ccec25519_from_ws(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v11[4] = *MEMORY[0x29EDCA608];
  v7 = ccn_add1_ws(a1, 4, a3, a4, -(a4[3] >> 63) & 0x13);
  ccn_set_bit(a3, 0xFFuLL, v7);
  v8 = cczp_prime(a2);
  v9 = ccn_sub_ws(a1, 4, v11, a3, v8);
  ccn_sub1(4, a3, v11, -v9 & 0x13);
  return ccn_set_bit(a3, 0xFFuLL, 0);
}

BOOL ccn_addn(uint64_t a1, void *a2, uint64_t *a3, _BOOL8 a4, uint64_t *a5)
{
  v5 = a1 - a4;
  v6 = &a2[a4];
  v7 = &a3[a4];
  v8 = ccn_add_ws(0, a4, a2, a3, a5);

  return ccn_add1_ws(0, v5, v6, v7, v8);
}

uint64_t ccn_recode_ssw(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v4 = result << 6;
  if (result << 6)
  {
    v5 = 0;
    do
    {
      *(a4 + v5) = (*(a2 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v5) & 1;
      ++v5;
    }

    while (v4 != v5);
    if (v4 >= 1)
    {
      v6 = 0;
      v7 = 1 << (a3 - 1);
      v8 = 1 << a3;
      v9 = -(1 << a3);
      v10 = v4 & 0x7FFFFFC0;
      v11 = (a4 + 1);
      v12 = 1;
      do
      {
        result = *(a4 + v6);
        if (*(a4 + v6))
        {
          v13 = v7 < 3;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          result = v12;
          v14 = v11;
          v15 = 1;
          do
          {
            v16 = v15 + v6;
            if (v15 + v6 >= v10)
            {
              break;
            }

            if (*(a4 + v16))
            {
              v17 = *(a4 + v16) << v15;
              v18 = *(a4 + v6);
              if (v17 + v18 >= v8)
              {
                if (v18 - v17 <= v9)
                {
                  break;
                }

                *(a4 + v6) = v18 - v17;
                v19 = result;
                v20 = v14;
                while (*v20)
                {
                  *v20++ = 0;
                  if (++v19 >= v4)
                  {
                    goto LABEL_21;
                  }
                }

                *v20 = 1;
              }

              else
              {
                *(a4 + v6) = v17 + v18;
                *(a4 + v16) = 0;
              }
            }

LABEL_21:
            ++v15;
            ++v14;
            result = (result + 1);
          }

          while (v15 != v7 - 1);
        }

        ++v6;
        ++v11;
        v12 = (v12 + 1);
      }

      while (v6 != v10);
    }
  }

  return result;
}

uint64_t ltc_des3_ecb_encrypt(uint64_t a1, uint64_t a2, unsigned int *a3, _DWORD *a4)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v6 = a2;
    do
    {
      --v6;
      v8 = *a3;
      v9 = a3[1];
      a3 += 2;
      v12 = bswap32(v8);
      v13 = bswap32(v9);
      desfunc3(&v12, a1);
      v10 = bswap32(v13);
      *a4 = bswap32(v12);
      a4[1] = v10;
      a4 += 2;
    }

    while (v6);
  }

  return 0;
}

uint64_t ccec_sign_composite_msg(uint64_t **a1, unint64_t *a2, size_t a3, char *a4, char *a5, char *a6, uint64_t (**a7)(void, unint64_t, void *))
{
  v22 = *MEMORY[0x29EDCA608];
  v20 = timingsafe_enable_if_supported();
  v14 = cc_malloc_clear(280 * **a1);
  v15 = 35 * **a1;
  v18[0] = v14;
  v18[1] = v15;
  v18[2] = 0;
  v18[3] = cc_ws_alloc;
  v19 = cc_ws_free;
  if (v14)
  {
    ccdigest_internal(a2, a3, a4, v21);
    v16 = ccec_sign_composite_ws(v18, a1, *a2, v21, a5, a6, a7);
    v19(v18);
  }

  else
  {
    v16 = 4294967283;
  }

  cc_disable_dit_with_sb(&v20);
  return v16;
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

uint64_t ccz_neg(uint64_t a1)
{
  v4 = timingsafe_enable_if_supported();
  if (ccz_n(a1))
  {
    v2 = ccz_sign(a1);
    ccz_set_sign(a1, -v2);
  }

  return cc_disable_dit_with_sb(&v4);
}

_BYTE *cc_atfork_prepare()
{
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) == 0 || (_ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 5)) & 0x1000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    __asm { MSR             DIT, #1 }

    v7 = 1;
  }

  v10 = v0;
  v11 = v1;
  v9 = v7;
  ccrng_atfork_prepare();
  return cc_disable_dit(&v9);
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

uint64_t ccrng_schedule_atomic_flag_init(uint64_t result)
{
  *result = &ccrng_schedule_atomic_flag_info;
  *(result + 8) = 0;
  *(result + 16) = 1;
  return result;
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

uint64_t ccrng_schedule_tree_init(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = &ccrng_schedule_tree_info;
  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 24) = a3;
  return result;
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

uint64_t ccrng_schedule_timer_notify_reseed(uint64_t a1)
{
  result = (*(a1 + 16))();
  *(a1 + 32) = result;
  return result;
}

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

uint64_t cc_clear(rsize_t a1, void *a2)
{
  if (fipspost_trace_is_active())
  {
    fipspost_trace_call("cc_clear");
  }

  return memset_s(a2, a1, 0, a1);
}

unint64_t ccder_sizeof_overflow(uint64_t a1, unint64_t a2, char *a3)
{
  if (*a3)
  {
    result = 0;
    v5 = 1;
  }

  else
  {
    v7 = ccder_sizeof_tag(a1);
    v8 = ccder_sizeof_len(a2);
    v9 = __CFADD__(v8 + v7, a2);
    result = v8 + v7 + a2;
    v5 = v9;
  }

  *a3 = v5;
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

uint64_t ccccm_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 24))(a1, a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ccccm_set_iv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = timingsafe_enable_if_supported();
  v16 = (*(a1 + 32))(a2, a3, a4, a5, a6, a7, a8);
  cc_disable_dit_with_sb(&v18);
  return v16;
}

uint64_t ccccm_cbcmac(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = (*(a1 + 40))(a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t ccccm_aad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = (*(a1 + 40))(a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t ccccm_update(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = timingsafe_enable_if_supported();
  v12 = (*(a1 + 48))(a2, a3, a4, a5, a6);
  cc_disable_dit_with_sb(&v14);
  return v12;
}

uint64_t ccccm_finalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 56))(a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ccccm_finalize_and_verify_tag(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = ccccm_finalize_and_verify_tag_internal(a1, a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ccccm_reset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = timingsafe_enable_if_supported();
  v6 = (*(a1 + 64))(a2, a3);
  cc_disable_dit_with_sb(&v8);
  return v6;
}

uint64_t ccccm_one_shot_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v27[1] = *MEMORY[0x29EDCA608];
  v18 = MEMORY[0x2A1C7C4A8](a1);
  v20 = v27 - v19;
  v21 = MEMORY[0x2A1C7C4A8](v18);
  v23 = v27 - v22;
  v24 = (*(v21 + 24))(v21, v20);
  if (!v24)
  {
    v24 = (*(a1 + 32))(v20, v23, a4, a5, a11, a9, a6);
    if (!v24)
    {
      v24 = (*(a1 + 40))(v20, v23, a9, a10);
      if (!v24)
      {
        v24 = (*(a1 + 48))(v20, v23, a6, a7, a8);
        if (!v24)
        {
          v24 = (*(a1 + 56))(v20, v23, a12);
        }
      }
    }
  }

  v25 = v24;
  cc_clear(*a1, v20);
  cc_clear(*(a1 + 8), v23);
  return v25;
}

uint64_t ccccm_one_shot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v22 = timingsafe_enable_if_supported();
  v20 = ccccm_one_shot_internal(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  cc_disable_dit_with_sb(&v22);
  return v20;
}

BOOL OUTLINED_FUNCTION_6()
{

  return timingsafe_enable_if_supported();
}

uint64_t ccec_extract_rs(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, char *a4, char *a5)
{
  v16 = timingsafe_enable_if_supported();
  v10 = cc_malloc_clear(16 * **a1);
  v11 = 2 * **a1;
  v14[0] = v10;
  v14[1] = v11;
  v14[2] = 0;
  v14[3] = cc_ws_alloc;
  v15 = cc_ws_free;
  if (v10)
  {
    rs_ws = ccec_extract_rs_ws(v14, a1, a2, a3, a4, a5);
    v15(v14);
  }

  else
  {
    rs_ws = 4294967283;
  }

  cc_disable_dit_with_sb(&v16);
  return rs_ws;
}

uint64_t ccec_verify_digest(uint64_t **a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, void *a6)
{
  v18 = timingsafe_enable_if_supported();
  v12 = cc_malloc_clear(376 * **a1);
  v13 = 47 * **a1;
  v16[0] = v12;
  v16[1] = v13;
  v16[2] = 0;
  v16[3] = cc_ws_alloc;
  v17 = cc_ws_free;
  if (v12)
  {
    v14 = ccec_verify_digest_ws(v16, a1, a2, a3, a4, a5, a6);
    v17(v16);
  }

  else
  {
    v14 = 4294967283;
  }

  cc_disable_dit_with_sb(&v18);
  return v14;
}

uint64_t ccec_verify_msg(uint64_t **a1, unint64_t *a2, size_t a3, char *a4, uint64_t a5, unsigned __int8 *a6, void *a7)
{
  v23 = *MEMORY[0x29EDCA608];
  v21 = timingsafe_enable_if_supported();
  v14 = *a1;
  v15 = cc_malloc_clear(376 * **a1);
  v16 = 47 * *v14;
  v19[0] = v15;
  v19[1] = v16;
  v19[2] = 0;
  v19[3] = cc_ws_alloc;
  v20 = cc_ws_free;
  if (v15)
  {
    ccdigest_internal(a2, a3, a4, v22);
    v17 = ccec_verify_digest_ws(v19, a1, *a2, v22, a5, a6, a7);
    v20(v19);
  }

  else
  {
    v17 = 4294967283;
  }

  cc_disable_dit_with_sb(&v21);
  return v17;
}