uint64_t OUTLINED_FUNCTION_2_4(void *a1, void (**a2)(void, uint64_t, uint64_t *))
{

  return cced25519_sign_with_rng_internal(a1, a2, v6, v5, v4, v3, v2);
}

void *cczp_to_default_ws(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = cczp_n(a2);

  return ccn_set(v6, a3, a4);
}

uint64_t ccpad_cts2_decrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
    ecb_from_cbc(a1, a2, v25, v27);
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

uint64_t ecb_from_cbc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 8);
  v9 = MEMORY[0x2A1C7C4A8](a1);
  v11 = v13 - v10;
  cccbc_set_iv_internal(v9, v13 - v10, 0);
  ccdrbg_generate_internal(a1, a2, v11, 1, a3, a4);
  return cc_clear(v8, v11);
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

uint64_t ccrsa_verify_pkcs1v15_internal(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, unsigned __int8 *a8)
{
  v16 = cc_malloc_clear(88 * *a1);
  v17 = 11 * *a1;
  v20[0] = v16;
  v20[1] = v17;
  v20[2] = 0;
  v20[3] = cc_ws_alloc;
  v21 = cc_ws_free;
  if (!v16)
  {
    return 4294967283;
  }

  v18 = ccrsa_verify_pkcs1v15_internal_ws(v20, a1, a2, a3, a4, a5, a6, a7, a8);
  v21(v20);
  return v18;
}

uint64_t ccapsic_client_check_intersect_response(uint64_t **a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t **a6)
{
  v26 = timingsafe_enable_if_supported();
  v12 = *a1;
  v13 = **a1;
  v14 = sizeof_struct_cche_galois_key();
  v15 = sizeof_struct_ccpolyzp_po2cyc();
  v16 = 18 * v13 + 2 * ((v14 + v15 + 3 * v13 * v15 - 1) / v15 + v13);
  if (v16 <= 33 * v13)
  {
    v16 = 33 * v13;
  }

  v17 = cc_malloc_clear(8 * v16);
  v24[0] = v17;
  v18 = *v12;
  v19 = sizeof_struct_cche_galois_key();
  v20 = sizeof_struct_ccpolyzp_po2cyc();
  v21 = 18 * v18 + 2 * ((v19 + v20 + 3 * v18 * v20 - 1) / v20 + v18);
  if (v21 <= 33 * v18)
  {
    v21 = 33 * v18;
  }

  v24[1] = v21;
  v24[2] = 0;
  v24[3] = cc_ws_alloc;
  v25 = cc_ws_free;
  if (v17)
  {
    v22 = ccapsic_client_check_intersect_response_ws(v24, a1, a2, a3, a4, a5, a6);
    v25(v24);
  }

  else
  {
    v22 = 4294967283;
  }

  cc_disable_dit_with_sb(&v26);
  return v22;
}

size_t ccpad_pkcs7_ecb_encrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = timingsafe_enable_if_supported();
  v10 = *(a1 + 8);
  v11 = (v10 - 1) & a3;
  v12 = a3 - v11;
  (*(a1 + 24))(a2, (a3 - v11) / v10, a4, a5);
  memcpy((a5 + v12), (a4 + v12), v11);
  memset((a5 + a3), v10 - v11, v10 - v11);
  (*(a1 + 24))(a2, 1, a5 + v12, a5 + v12);
  cc_disable_dit_with_sb(&v14);
  return a3 - v11 + v10;
}

uint64_t ccpost_curve25519(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = ccrng(0);
  memset(v9, 0, sizeof(v9));
  v5 = cccurve25519_with_rng(v4, v9, *(a1 + 16), *(a1 + 8));
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = v6 == 2 || cc_cmp_safe(32, v9, *(a1 + 24)) != 0;
  }

  return ccpost_report(a1, a2, v7);
}

_DWORD **cche_mul_poly_sk(_DWORD **result, int **a2, _DWORD **a3)
{
  v3 = (*a2)[1];
  if (v3)
  {
    v4 = 0;
    v5 = **a2;
    do
    {
      v6 = *a2;
      v7 = (*a2)[1];
      while (--v7 > v4)
      {
        v6 = *(v6 + 14);
      }

      if (v5)
      {
        for (i = 0; i != v5; ++i)
        {
          v9 = (&a2[i + 1])[v4 * **a2];
          v10 = (&a3[i + 1])[v4 * **a3];
          v11 = (v10 * v9) >> 64;
          v12 = v10 * v9;
          v13 = *(v6 + 4);
          v14 = (v12 * v13) >> 64;
          v15 = (v11 * v13) >> 64;
          v16 = v11 * v13;
          v17 = __CFADD__(v14, v16);
          v18 = v14 + v16;
          v19 = v17;
          v20 = v19 + __CFADD__(v12 * *(v6 + 5), v18) + v15 + *(v6 + 5) * v11 + ((v12 * *(v6 + 5)) >> 64);
          (&result[i + 1])[v4 * **result] = (v12 + *(v6 + 2) * ~v20 + (((v12 + *(v6 + 2) * ~v20) >> 63) & *(v6 + 2)));
        }
      }

      ++v4;
    }

    while (v4 != v3);
  }

  return result;
}

uint64_t cced25519_to_ed25519_point_ws(uint64_t a1, uint64_t a2)
{
  cczp_n(a2);
  v4 = *(a1 + 16);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  result = cczp_sqr_ws(a1, a2);
  *(a1 + 16) = v4;
  return result;
}

void *cced25519_from_ed25519_point_ws(uint64_t a1, void *a2, char *a3, char *a4)
{
  v7 = cczp_n(a2);
  ccn_set(v7, a3, a4);
  ccn_set(v7, &a3[8 * *a2], &a4[8 * v7]);
  v8 = &a3[16 * *a2];

  return ccn_set(v7, v8, &a4[24 * v7]);
}

uint64_t cced25519_hash_to_scalar_ws(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, size_t a5, char *a6, size_t a7, char *a8, size_t a9, char *a10)
{
  v29 = a8;
  v33 = a4;
  v35 = *MEMORY[0x29EDCA608];
  v30 = *a2;
  v16 = cczp_n(a2);
  v17 = *(a1 + 24);
  v32 = *(a1 + 16);
  v18 = 2 * v16;
  v28 = v17(a1, 2 * v16);
  v31 = &v27;
  MEMORY[0x2A1C7C4A8](v28);
  v20 = (&v27 - v19);
  ccdigest_init_internal(a3, (&v27 - v19));
  ccdigest_update_internal(a3, v20, a5, a6);
  ccdigest_update_internal(a3, v20, a7, v29);
  ccdigest_update_internal(a3, v20, a9, a10);
  (*(a3 + 56))(a3, v20, v34);
  cc_clear(*(a3 + 8) + *(a3 + 16) + 12, v20);
  v21 = v28;
  if (v18)
  {
    v22 = v34;
    v23 = v28;
    v24 = v18;
    do
    {
      v25 = *v22++;
      *v23++ = v25;
      --v24;
    }

    while (v24);
  }

  cczp_modn_ws(a1, &a2[5 * v30 + 4], v33, v18, v21);
  result = cc_clear(0x40uLL, v34);
  *(a1 + 16) = v32;
  return result;
}

uint64_t ccz_divmod(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v33 = timingsafe_enable_if_supported();
  if (!ccz_is_zero(a4))
  {
    v8 = ccz_n(a3);
    v9 = a3[3];
    v10 = ccz_n(a4);
    if ((ccn_cmpn_internal(v8, v9, v10, a4[3]) & 0x80000000) != 0)
    {
      if (a2)
      {
        ccz_set(a2, a3);
      }

      if (a1)
      {
        ccz_zero(a1);
      }
    }

    else
    {
      v31 = 0u;
      *__src = 0u;
      memset(v30, 0, sizeof(v30));
      memset(v29, 0, sizeof(v29));
      v27 = 0u;
      *v28 = 0u;
      ccz_init(a3[1], v29);
      ccz_init(a3[1], &v27);
      ccz_init(a3[1], &v31);
      ccz_init(a3[1], v30);
      v11 = ccz_bitlen(a3);
      v12 = ccz_bitlen(a4);
      ccz_seti(v29, 1);
      ccz_lsl(v29, v29, v11 - v12);
      ccz_set(&v31, a3);
      ccz_set_sign(&v31, 1);
      ccz_lsl(v30, a4, v11 - v12);
      ccz_set_sign(v30, 1);
      for (i = v12 - v11; ; ++i)
      {
        if ((ccz_cmp(&v31, v30) & 0x80000000) == 0)
        {
          ccz_sub(&v31, &v31, v30);
          ccz_add(&v27, &v27, v29);
        }

        if (!i)
        {
          break;
        }

        ccz_lsr(v30, v30, 1uLL);
        ccz_lsr(v29, v29, 1uLL);
      }

      v14 = ccz_sign(a3);
      v15 = ccz_sign(a4);
      if (a2)
      {
        v16 = ccz_n(&v31);
        ccz_set_capacity(a2, v16);
        v17 = ccz_n(&v31);
        ccz_set_n(a2, v17);
        v18 = ccz_n(a2);
        ccn_set(v18, *(a2 + 24), __src[1]);
        if (ccz_is_zero(a2))
        {
          v19 = 1;
        }

        else
        {
          v19 = v14;
        }

        ccz_set_sign(a2, v19);
      }

      if (a1)
      {
        v20 = ccz_n(&v27);
        ccz_set_capacity(a1, v20);
        v21 = ccz_n(&v27);
        ccz_set_n(a1, v21);
        v22 = ccz_n(a1);
        ccn_set(v22, *(a1 + 24), v28[1]);
        is_zero = ccz_is_zero(a1);
        if (v14 == v15 || is_zero)
        {
          v25 = 1;
        }

        else
        {
          v25 = -1;
        }

        ccz_set_sign(a1, v25);
      }

      ccz_free(v29);
      ccz_free(&v27);
      ccz_free(&v31);
      ccz_free(v30);
    }
  }

  return cc_disable_dit_with_sb(&v33);
}

uint64_t ccec_diversify_pub(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (**a5)(void, uint64_t, uint64_t *), uint64_t **a6, uint64_t **a7)
{
  v31 = timingsafe_enable_if_supported();
  v14 = *a1;
  v15 = 26 * *a1;
  v16 = sizeof_struct_ccpolyzp_po2cyc();
  v17 = (v16 + 127) / v16 + 4 * v14 + 3;
  if (v15 > v17)
  {
    v17 = v15;
  }

  v18 = cc_malloc_clear(8 * (v17 + v14));
  v27[0] = v18;
  v19 = *a1;
  v20 = 26 * *a1;
  v21 = sizeof_struct_ccpolyzp_po2cyc();
  v22 = (v21 + 127) / v21 + 4 * v19 + 3;
  if (v20 > v22)
  {
    v22 = v20;
  }

  v27[1] = v22 + v19;
  v28 = 0;
  v29 = cc_ws_alloc;
  v30 = cc_ws_free;
  if (v18)
  {
    v23 = cc_ws_alloc(v27, v19);
    scalar_fips_extrabits_ws = ccec_generate_scalar_fips_extrabits_ws(v27, a1, a3, a4, v23);
    if (!scalar_fips_extrabits_ws)
    {
      scalar_fips_extrabits_ws = ccec_make_pub_from_priv_ws(v27, a1, a5, v23, 0, a6);
      if (!scalar_fips_extrabits_ws)
      {
        scalar_fips_extrabits_ws = ccec_make_pub_from_priv_ws(v27, a1, a5, v23, a2 + 16, a7);
      }
    }

    v25 = scalar_fips_extrabits_ws;
    v28 = 0;
    v30(v27);
  }

  else
  {
    v25 = 4294967283;
  }

  cc_disable_dit_with_sb(&v31);
  return v25;
}

uint64_t ccn_shift_right(uint64_t result, int8x16_t *a2, int8x16_t *a3, uint64_t a4)
{
  if (result)
  {
    return ccn_shift_right_asm(result, a2, a3, a4);
  }

  return result;
}

double ccvrf_factory_irtfdraft03(uint64_t a1, void *a2)
{
  if (*a2 == *ccsha512_di())
  {
    v5 = unk_2A201DA48;
    *(a1 + 32) = xmmword_2A201DA38;
    *(a1 + 48) = v5;
    *(a1 + 64) = xmmword_2A201DA58;
    *(a1 + 80) = off_2A201DA68;
    result = *&_vrf_irtf_ed25519_draft03;
    v6 = unk_2A201DA28;
    *a1 = _vrf_irtf_ed25519_draft03;
    *(a1 + 16) = v6;
    *(a1 + 40) = a2;
  }

  return result;
}

double ccvrf_factory_irtfdraft03_default(uint64_t a1)
{
  v2 = ccsha512_di();
  if (*v2 == *ccsha512_di())
  {
    v4 = unk_2A201DA48;
    *(a1 + 32) = xmmword_2A201DA38;
    *(a1 + 48) = v4;
    *(a1 + 64) = xmmword_2A201DA58;
    *(a1 + 80) = off_2A201DA68;
    result = *&_vrf_irtf_ed25519_draft03;
    v5 = unk_2A201DA28;
    *a1 = _vrf_irtf_ed25519_draft03;
    *(a1 + 16) = v5;
    *(a1 + 40) = v2;
  }

  return result;
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

uint64_t ccec_der_export_diversified_pub_size(uint64_t *a1, uint64_t *a2, char a3)
{
  v12 = timingsafe_enable_if_supported();
  v6 = cczp_bitlen(*a2);
  if ((a3 & 4) != 0)
  {
    v7 = ccder_sizeof_raw_octet_string((v6 + 7) >> 3);
    v8 = (cczp_bitlen(*a1) + 7) >> 3;
  }

  else
  {
    v7 = ccder_sizeof_raw_octet_string(((v6 + 7) >> 2) | 1);
    v8 = ((cczp_bitlen(*a1) + 7) >> 2) | 1;
  }

  v9 = ccder_sizeof_raw_octet_string(v8);
  v10 = ccder_sizeof(0x2000000000000010, v9 + v7);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t ccec_der_export_diversified_pub(uint64_t *a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5)
{
  v28 = timingsafe_enable_if_supported();
  v10 = *a2;
  v11 = cc_malloc_clear((32 * **a2) | 0x10);
  v12 = (4 * *v10) | 2;
  v24[0] = v11;
  v24[1] = v12;
  v25 = 0;
  v26 = cc_ws_alloc;
  v27 = cc_ws_free;
  if (v11)
  {
    v13 = **a2;
    v14 = cczp_bitlen(*a2);
    v15 = cczp_bitlen(*a2);
    v16 = (2 * v13) | 1;
    v17 = cc_ws_alloc(v24, v16);
    v18 = v26(v24, v16);
    if ((a3 & 4) != 0)
    {
      if (!ccec_compact_export_pub(v17, a2) && !ccec_compact_export_pub(v18, a1))
      {
        v19 = (v14 + 7) >> 3;
        goto LABEL_10;
      }
    }

    else if (!ccec_export_pub(a2, v17) && !ccec_export_pub(a1, v18))
    {
      v19 = ((v15 + 7) >> 2) | 1;
LABEL_10:
      v21 = ccder_encode_raw_octet_string(v19, v17, a5, a5 + a4);
      v22 = ccder_encode_raw_octet_string(v19, v18, a5, v21);
      v20 = ccder_encode_constructed_tl(0x2000000000000010uLL, a5 + a4, a5, v22);
      v25 = 0;
LABEL_11:
      v27(v24);
      goto LABEL_12;
    }

    v20 = 0;
    goto LABEL_11;
  }

  v20 = 0;
LABEL_12:
  cc_disable_dit_with_sb(&v28);
  return v20;
}

uint64_t ccec_get_fullkey_components(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t a7, unint64_t *a8)
{
  v23 = timingsafe_enable_if_supported();
  v16 = **a1;
  if (ccec_get_pubkey_components(a1, a2, a3, a4, a5, a6) || (v19 = *a1, v17 = a1 + 2, v18 = v19, v20 = ccn_write_uint_size_public_value(v16, &v17[3 * *v19]), v20 > *a8))
  {
    v21 = 0xFFFFFFFFLL;
  }

  else
  {
    *a8 = v20;
    ccn_write_uint_internal(v16, &v17[3 * *v18], v20, a7);
    v21 = 0;
  }

  cc_disable_dit_with_sb(&v23);
  return v21;
}

void *ccmode_factory_cbc_encrypt(void *result, void *a2)
{
  v2 = a2[1];
  *result = ((v2 + 7) & 0xFFFFFFFFFFFFFFF8) + ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  result[1] = v2;
  result[2] = ccmode_cbc_init;
  result[3] = ccmode_cbc_encrypt;
  result[4] = a2;
  return result;
}

uint64_t ccdes_ltc_setup(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  if (a3 != 8)
  {
    return 0xFFFFFFFFLL;
  }

  deskey(a4, 0, a2);
  deskey(a4, 1, a2 + 8);
  return 0;
}

uint64_t ccec_generate_scalar_fips_retry(void *a1, uint64_t (**a2)(void, unint64_t, void *), void *a3)
{
  v12 = timingsafe_enable_if_supported();
  v6 = &a1[5 * *a1];
  v7 = cczp_n((v6 + 4));
  v10[0] = cc_malloc_clear(8 * v7);
  v10[1] = cczp_n((v6 + 4));
  v10[2] = 0;
  v10[3] = cc_ws_alloc;
  v11 = cc_ws_free;
  if (v10[0])
  {
    scalar_fips_retry_ws = ccec_generate_scalar_fips_retry_ws(v10, a1, a2, a3);
    v11(v10);
  }

  else
  {
    scalar_fips_retry_ws = 4294967283;
  }

  cc_disable_dit_with_sb(&v12);
  return scalar_fips_retry_ws;
}

uint64_t ccec_sign_msg_ws(uint64_t a1, uint64_t **a2, unint64_t *a3, size_t a4, char *a5, unint64_t *a6, uint64_t a7, uint64_t (**a8)(void, unint64_t, void *))
{
  v16 = *MEMORY[0x29EDCA608];
  ccdigest_internal(a3, a4, a5, v15);
  return ccec_sign_ws(a1, a2, *a3, v15, a6, a7, a8);
}

uint64_t ccec_sign_msg(uint64_t **a1, unint64_t *a2, size_t a3, char *a4, unint64_t *a5, uint64_t a6, uint64_t (**a7)(void, unint64_t, void *))
{
  v23 = *MEMORY[0x29EDCA608];
  v21 = timingsafe_enable_if_supported();
  v14 = *a1;
  v15 = cc_malloc_clear(280 * **a1);
  v16 = 35 * *v14;
  v19[0] = v15;
  v19[1] = v16;
  v19[2] = 0;
  v19[3] = cc_ws_alloc;
  v20 = cc_ws_free;
  if (v15)
  {
    ccdigest_internal(a2, a3, a4, v22);
    v17 = ccec_sign_ws(v19, a1, *a2, v22, a5, a6, a7);
    v20(v19);
  }

  else
  {
    v17 = 4294967283;
  }

  cc_disable_dit_with_sb(&v21);
  return v17;
}

uint64_t ccec_sign(uint64_t **a1, unint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t (**a6)(void, unint64_t, void *))
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
    v15 = ccec_sign_ws(v17, a1, a2, a3, a4, a5, a6);
    v18(v17);
  }

  else
  {
    v15 = 4294967283;
  }

  cc_disable_dit_with_sb(&v19);
  return v15;
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

uint64_t ccmode_ccm_crypt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v9 = result;
    v10 = 0;
    v11 = *(*result + 8);
    v12 = *(a2 + 80);
    v13 = (v11 + ~v12);
    v14 = a2 + 48;
    v15 = *(a2 + 68);
    v16 = a2 + v12;
    do
    {
      if (!v15)
      {
        v17 = v13;
        do
        {
          if (v17 < 1)
          {
            break;
          }

          v18 = (*(v16 + v17--))++ + 1;
        }

        while ((v18 & 0x100) != 0);
        result = (*(*v9 + 24))(v9 + 8, 1, a2, v14);
        v15 = *(a2 + 68);
      }

      *(a5 + v10) = *(v14 + v15) ^ *(a4 + v10);
      v15 = (*(a2 + 68) + 1) % v11;
      *(a2 + 68) = v15;
      ++v10;
    }

    while (v10 != a3);
  }

  return result;
}

uint64_t ccmode_ccm_encrypt(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a2 + 64);
  if (v10 == 4)
  {
    v11 = *(a2 + 72) != 0;
    *(a2 + 64) = 5;
LABEL_5:
    ccmode_ccm_macdata(a1, a2, v11, a3, a4);
    ccmode_ccm_crypt(a1, a2, a3, a4, a5);
    return 0;
  }

  if (v10 == 5)
  {
    v11 = 0;
    goto LABEL_5;
  }

  return 4294967228;
}

uint64_t ccss_shamir_evaluate_poly_to_buffer(uint64_t a1, unsigned int a2, char *a3)
{
  v6 = cc_malloc_clear(**a1 << 6);
  v7 = *a1;
  v8 = **a1;
  v15[0] = v6;
  v15[1] = 8 * v8;
  v16 = 0;
  v17 = cc_ws_alloc;
  v18 = cc_ws_free;
  if (!v6)
  {
    return 4294967283;
  }

  v9 = cc_ws_alloc(v15, v8);
  v10 = v17(v15, v8);
  v17(v15, v8);
  v11 = v17(v15, v8);
  ccn_seti(v8, v9, a2);
  ccn_seti(v8, v10, a2);
  v12 = ccss_shamir_poly_coefficient(a1, 0);
  ccn_set(v8, v11, v12);
  if (*(a1 + 8))
  {
    v13 = 1;
    do
    {
      ccss_shamir_poly_coefficient(a1, v13);
      cczp_mul_ws(v15, v7);
      cczp_add_ws(v15, v7);
      cczp_mul_ws(v15, v7);
      ++v13;
    }

    while (v13 <= *(a1 + 8));
  }

  if (v8)
  {
    ccn_set(v8, a3, v11);
  }

  ccn_zero(0, &a3[8 * v8]);
  v16 = 0;
  v18(v15);
  return 0;
}

uint64_t cckem_mlkem768_generate_key(uint64_t a1, uint64_t (**a2)(void, uint64_t, _OWORD *))
{
  v4 = (cckem_public_ctx() + 8);
  v5 = (a1 + *(*a1 + 16) + 8);

  return ccmlkem_kem_keypair(ccmlkem768_params, v4, v5, a2);
}

uint64_t cckem_mlkem768_generate_key_with_seed()
{
  cckem_public_ctx();

  return ccmlkem_kem_keypair_with_seed();
}

uint64_t cckem_mlkem768_derive_key_from_seed(uint64_t a1, _OWORD *a2)
{
  v4 = (cckem_public_ctx() + 8);
  v5 = a1 + *(*a1 + 16) + 8;

  return ccmlkem_kem_keypair_from_seed(ccmlkem768_params, v4, v5, a2, a2 + 2);
}

uint64_t ccmldsa_verify_prehashed_internal(_DWORD *a1, __int128 *a2, uint64_t a3, uint64_t a4, _OWORD *a5, void *a6)
{
  v12 = a1[1] << 8;
  v13 = sizeof_struct_ccpolyzp_po2cyc();
  v18[0] = cc_malloc_clear(8 * ((v13 - 1 + 4 * (a1[2] << 8)) / v13 + (v13 + 1023) / v13 + 3 * ((v13 - 1 + 4 * v12) / v13)));
  v14 = a1[1] << 8;
  v15 = sizeof_struct_ccpolyzp_po2cyc();
  v18[1] = (v15 - 1 + 4 * (a1[2] << 8)) / v15 + (v15 + 1023) / v15 + 3 * ((v15 - 1 + 4 * v14) / v15);
  v18[2] = 0;
  v18[3] = cc_ws_alloc;
  v19 = cc_ws_free;
  if (!v18[0])
  {
    return 4294967283;
  }

  v16 = ccmldsa_verify_prehashed_internal_ws(v18, a1, a2, a3, a4, a5, a6);
  v19(v18);
  return v16;
}

void ccvrf_irtf_ed25519_verify(uint64_t a1, uint64_t a2, char *a3, size_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x29EDCA608];
  if (!ge_has_small_order(a2))
  {
    memset(v12, 0, sizeof(v12));
    if (!ccvrf_irtf_ed25519_string_to_point(v12, a2))
    {
      memset(v24, 0, sizeof(v24));
      memset(v23, 0, sizeof(v23));
      memset(v22, 0, sizeof(v22));
      v21[0] = 0;
      v21[1] = 0;
      memset(v19, 0, sizeof(v19));
      memset(v18, 0, sizeof(v18));
      memset(v17, 0, sizeof(v17));
      memset(v16, 0, sizeof(v16));
      memset(v15, 0, sizeof(v15));
      memset(v14, 0, sizeof(v14));
      memset(v13, 0, sizeof(v13));
      ccvrf_irtf_ed25519_decode_proof(a5, v18, v23, v22);
      if (!v10)
      {
        v11 = *(a1 + 32);
        bzero(v23 + (v11 >> 1), v11 >> 1);
        bzero(v22 + v11, v11);
        sc_reduce(v22);
        ccvrf_irtf_ed25519_hash2curve_elligator2(*(a1 + 40), v12, a3, a4, v24);
        ge_frombytes_vartime(v19, v24);
        ge_scalarmult(v15, v23, v12);
        ge_p3_to_cached(v13, v15);
        ge_scalarmult_base(v15, v22);
        ge_sub(v14, v15, v13);
        ge_p1p1_to_p3(v17, v14);
        ge_scalarmult(v15, v23, v18);
        ge_p3_to_cached(v13, v15);
        ge_scalarmult(v15, v22, v19);
        ge_sub(v14, v15, v13);
        ge_p1p1_to_p3(v16, v14);
        v20[0] = v19;
        v20[1] = v18;
        v20[2] = v17;
        v20[3] = v16;
        ccvrf_irtf_ed25519_hash_points(a1, v20, 4, v21);
        cc_cmp_safe_internal(*(a1 + 32) >> 1, v23, v21);
      }
    }
  }
}

uint64_t ccvrf_verify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = timingsafe_enable_if_supported();
  if (ccvrf_sizeof_public_key(a1) == a2 && ccvrf_sizeof_proof(a1) == a6)
  {
    v14 = (*(a1 + 72))(a1, a3, a5, a4, a7);
  }

  else
  {
    v14 = 4294967289;
  }

  cc_disable_dit_with_sb(&v16);
  return v14;
}

double ccmode_factory_ccm_encrypt(uint64_t a1, void *a2)
{
  *a1 = ((a2[1] + 7) & 0xFFFFFFFFFFFFFFF8) + ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  *&result = 96;
  *(a1 + 8) = xmmword_299DA2690;
  *(a1 + 24) = ccmode_ccm_init;
  *(a1 + 32) = ccmode_ccm_set_iv;
  *(a1 + 40) = ccmode_ccm_cbcmac;
  *(a1 + 48) = ccmode_ccm_encrypt;
  *(a1 + 56) = ccmode_ccm_finalize;
  *(a1 + 64) = ccmode_ccm_reset;
  *(a1 + 72) = a2;
  *(a1 + 80) = 1;
  *(a1 + 81) = 0;
  *(a1 + 84) = 0;
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

uint64_t ccder_blob_decode_range_strict(unsigned __int8 **a1, uint64_t a2, unsigned __int8 **a3)
{
  v8 = 0;
  result = ccder_blob_decode_tl_internal(a1, a2, &v8, 1);
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

int8x16_t *ccmlkem_polyvec_decode(int8x16_t *result, uint64_t a2, uint64_t a3)
{
  if (result->i32[1])
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      result = ccmlkem_poly_decode((a2 + 2 * (v6 & 0xFFFFFF00)), (a3 + (v7 & 0xFFFFFF80)));
      ++v8;
      v7 += 384;
      v6 += 256;
    }

    while (v8 < v5->u32[1]);
  }

  return result;
}

uint64_t ccmlkem_polyvec_compress(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 4))
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 32 * (*(result + 12) & 0xFFFFFF);
    do
    {
      result = (*(v5 + 32))(a2 + v6, a3 + 2 * (v7 & 0xFFFFFF00));
      ++v8;
      v7 += 256;
      v6 += v9;
    }

    while (v8 < *(v5 + 4));
  }

  return result;
}

uint64_t ccmlkem_polyvec_decompress(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 4))
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 32 * (*(result + 12) & 0xFFFFFF);
    do
    {
      result = (*(v5 + 40))(a2 + 2 * (v7 & 0xFFFFFF00), a3 + v6);
      ++v8;
      v7 += 256;
      v6 += v9;
    }

    while (v8 < *(v5 + 4));
  }

  return result;
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

uint64_t ccmlkem_polyvec_ntt_forward(uint64_t result, uint64_t a2)
{
  if (*(result + 4))
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      result = ccmlkem_ntt_forward(a2 + 2 * (v4 & 0xFFFFFF00));
      ++v5;
      v4 += 256;
    }

    while (v5 < *(v3 + 4));
  }

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

int16x8_t *ccmlkem_polyvec_basemul(uint64_t a1, int16x8_t *a2, const __int16 *a3, const __int16 *a4, int32x4_t a5, double a6, double a7, double a8, double a9, double a10, double a11, int32x4_t a12)
{
  v28 = *MEMORY[0x29EDCA608];
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

uint64_t cc_try_abort_if (uint64_t result)
{
  if (result)
  {
    cc_abort();
  }

  return result;
}

uint64_t ccz_capacity(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0)
  {
    return v1;
  }

  else
  {
    return -v1;
  }
}

uint64_t ccz_set_sign(uint64_t result, int a2)
{
  v2 = *(result + 16);
  if (((v2 >> 31) | 1) != a2)
  {
    *(result + 16) = -v2;
  }

  return result;
}

uint64_t ccz_set_capacity(uint64_t result, unint64_t a2)
{
  v2 = *(result + 16);
  if (v2 >= 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = -v2;
  }

  if (*(result + 24))
  {
    v4 = v3 >= a2;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    v5 = result;
    v6 = (a2 & 0xFFFFFFFFFFFFFFE0) + 64;
    v7 = *(result + 8);
    v8 = *v7;
    if (v2)
    {
      result = (v7[2])(v8, 8 * v3);
    }

    else
    {
      result = (v7[1])(v8, 8 * v6);
    }

    if (*(v5 + 16) >= 0)
    {
      v9 = v6;
    }

    else
    {
      v9 = -v6;
    }

    *(v5 + 16) = v9;
    *(v5 + 24) = result;
  }

  return result;
}

unint64_t ccz_write_uint_size(uint64_t a1)
{
  v5 = timingsafe_enable_if_supported();
  v2 = ccz_n(a1);
  v3 = ccn_write_uint_size_public_value(v2, *(a1 + 24));
  cc_disable_dit_with_sb(&v5);
  return v3;
}

uint64_t ccz_write_uint(uint64_t a1, unint64_t a2, char *a3)
{
  v8 = timingsafe_enable_if_supported();
  v6 = ccz_n(a1);
  ccn_write_uint_padded_internal(v6, *(a1 + 24), a2, a3);
  return cc_disable_dit_with_sb(&v8);
}

uint64_t ccdrbg_must_reseed(uint64_t a1, uint64_t a2)
{
  v6 = timingsafe_enable_if_supported();
  v4 = (*(a1 + 48))(a2);
  cc_disable_dit_with_sb(&v6);
  return v4;
}

uint64_t ccdrbg_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = timingsafe_enable_if_supported();
  v16 = (*(a1 + 8))(a1, a2, a3, a4, a5, a6, a7, a8);
  cc_disable_dit_with_sb(&v18);
  return v16;
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

uint64_t ccnistkdf_ctr_hmac_fixed(unint64_t *a1, size_t a2, uint64_t a3, size_t a4, char *a5, rsize_t a6, char *a7)
{
  v34 = *MEMORY[0x29EDCA608];
  v14 = timingsafe_enable_if_supported();
  v31 = v14;
  if (a6 && ((v15 = *a1, v16 = a6 / *a1, (v17 = a6 % *a1) == 0) ? (v18 = a6 / *a1) : (v18 = v16 + 1), !HIDWORD(v18)))
  {
    v21 = a3;
    v19 = 4294967289;
    if (a2 && v21 && a7)
    {
      v28 = v18;
      v29 = v17;
      v30 = &v27;
      MEMORY[0x2A1C7C4A8](v14);
      v23 = (&v27 - v22);
      cchmac_init_internal(a1, (&v27 - v22), a2, v24);
      __memcpy_chk();
      if (v15 <= a6)
      {
        v25 = 1;
        do
        {
          F_0(a1, v23, v32, v25++, a4, a5, a7);
          a7 += v15;
        }

        while (v25 <= v16);
      }

      v26 = v29;
      if (v29)
      {
        F_0(a1, v23, v32, v28, a4, a5, __src);
        memcpy(a7, __src, v26);
      }

      cc_clear(v15, __src);
      cc_clear(((a1[1] + a1[2] + 19) & 0xFFFFFFFFFFFFFFF8) + a1[1], v23);
      cc_clear(a1[1], v32);
      v19 = 0;
    }
  }

  else
  {
    v19 = 4294967289;
  }

  cc_disable_dit_with_sb(&v31);
  return v19;
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

uint64_t ltc_rc2_ecb_encrypt(uint64_t a1, uint64_t a2, unsigned __int16 *a3, _WORD *a4)
{
  for (; a2; --a2)
  {
    v4 = 0;
    v5 = a3[3];
    v6 = a3[2];
    v7 = a3[1];
    v8 = (a1 + 8);
    v9 = *a3;
    do
    {
      v10 = (v7 & ~v5 | v6 & v5) + v9 + *(v8 - 2);
      v9 = (v10 >> 15) & 1 | (2 * v10);
      v11 = *(v8 - 1) + v7 + (v6 & ~v9) + (v9 & v5);
      v7 = (v11 >> 14) & 0xFFFC0003 | (4 * v11);
      v12 = *v8 + v6 + (v5 & ~v7) + (v7 & v9);
      v6 = (v12 >> 13) & 0xFFF80007 | (8 * v12);
      v5 = ((v8[1] + v5 + (v9 & ~v6) + (v6 & v7)) >> 11) & 0xFFE0001F | (32 * (v8[1] + v5 + (v9 & ~v6) + (v6 & v7)));
      if (v4 == 10 || v4 == 4)
      {
        v9 += *(a1 + 4 * (v5 & 0x3F));
        v7 += *(a1 + 4 * (v9 & 0x3F));
        v6 += *(a1 + 4 * (v7 & 0x3F));
        v5 += *(a1 + 4 * (v6 & 0x3F));
      }

      v8 += 4;
      ++v4;
    }

    while (v4 != 16);
    *a4 = v9;
    a4[1] = v7;
    a4[2] = v6;
    a3 += 4;
    a4[3] = v5;
    a4 += 4;
  }

  return 0;
}

uint64_t ccss_encode_string_into_value_smaller_than_prime(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = cczp_n(a1);
  v9 = cczp_prime(a1);
  uint_internal = ccn_read_uint_internal(v8, a2, a3, a4);
  if (uint_internal)
  {
    v11 = uint_internal;
LABEL_7:
    cc_clear(8 * v8, a2);
    return v11;
  }

  if ((ccn_cmp_public_value(v8, a2, v9) & 0x80000000) == 0)
  {
    v11 = 4294967176;
    goto LABEL_7;
  }

  return 0;
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

BOOL ccz_is_prime(uint64_t a1, unsigned int a2)
{
  v9 = timingsafe_enable_if_supported();
  v4 = ccrng(0);
  if (v4)
  {
    v5 = v4;
    v6 = ccz_n(a1);
    v7 = ccprime_rabin_miller(v6, *(a1 + 24), a2, v5) == 1;
  }

  else
  {
    v7 = 0;
  }

  cc_disable_dit_with_sb(&v9);
  return v7;
}

uint64_t ccder_sizeof_implicit_uint64(uint64_t a1, uint64_t a2)
{
  v3[1] = *MEMORY[0x29EDCA608];
  v3[0] = a2;
  return ccder_sizeof_implicit_integer(a1, 1, v3);
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

_BYTE *cc_atfork_parent()
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
  ccrng_atfork_parent();
  return cc_disable_dit(&v9);
}

uint64_t ccckg_owner_generate_share(uint64_t a1, size_t a2, const void *a3, uint64_t a4, char *a5)
{
  v37 = timingsafe_enable_if_supported();
  v10 = ccckg_ctx_cp(a1);
  v11 = *v10;
  v12 = sizeof_struct_cche_galois_key();
  v13 = sizeof_struct_ccpolyzp_po2cyc();
  v33[0] = cc_malloc_clear(8 * ((v12 + v13 + 4 * v11 * v13 - 1) / v13 + 49 * v11));
  v14 = *v10;
  v15 = sizeof_struct_cche_galois_key();
  v16 = sizeof_struct_ccpolyzp_po2cyc();
  v33[1] = (v15 + v16 + 4 * v14 * v16 - 1) / v16 + 49 * v14;
  v34 = 0;
  v35 = cc_ws_alloc;
  v36 = cc_ws_free;
  if (v33[0])
  {
    v17 = ccckg_ctx_di(a1);
    v18 = ccckg_ctx_cp(a1);
    if (*(a1 + 32))
    {
      v19 = 4294967210;
      cc_ws_free(v33);
    }

    else
    {
      v20 = v18;
      v21 = *v18;
      if (ccckg_sizeof_commitment(v18, v17) == a2 && ccckg_sizeof_share(v20, v17) == a4)
      {
        v22 = cc_ws_alloc(v33, (4 * (v21 & 0x7FFFFFFFFFFFFFFLL)) | 2);
        *v22 = v20;
        v23 = ccckg_ctx_di(a1);
        v24 = ccckg_ctx_cp(a1);
        v25 = a1 + 40;
        memcpy((a1 + 40 + 8 * *v24 + ((*v23 + 7) & 0xFFFFFFFFFFFFFFF8)), a3, a2);
        key_fips_ws = ccec_generate_key_fips_ws(v33, v20, *(a1 + 24), v22);
        if (key_fips_ws || (v27 = *(a1 + 24), v28 = *v17, v29 = ccckg_ctx_cp(a1), key_fips_ws = (*v27)(v27, v28, v25 + 8 * *v29), key_fips_ws) || (ccn_set(v21, (a1 + 40), &v22[3 * **v22 + 2]), key_fips_ws = ccec_export_pub(v22, a5), key_fips_ws))
        {
          v19 = key_fips_ws;
        }

        else
        {
          v30 = ((cczp_bitlen(*v22) + 7) >> 2) | 1;
          v31 = ccckg_ctx_cp(a1);
          memcpy(&a5[v30], (v25 + 8 * *v31), *v17);
          v19 = 0;
          *(a1 + 32) = 2;
        }

        v34 = 0;
        v36(v33);
      }

      else
      {
        v19 = 4294967289;
        cc_ws_free(v33);
      }
    }
  }

  else
  {
    v19 = 4294967283;
  }

  cc_disable_dit_with_sb(&v37);
  return v19;
}

uint64_t ccckg_owner_finish_derive_p(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t (**a4)(void, uint64_t, uint64_t *))
{
  v7 = ccckg_ctx_cp(a1);
  v8 = *v7;
  v9 = v7 + 4;
  v10 = cczp_n(&v7[5 * *v7 + 4]);
  v11 = 26 * *v7;
  if (v10 > v11)
  {
    v11 = cczp_n(&v9[5 * *v7]);
  }

  v12 = cc_malloc_clear(8 * v11);
  v19[0] = v12;
  v13 = cczp_n(&v9[5 * *v7]);
  v14 = 26 * *v7;
  if (v13 > v14)
  {
    v14 = cczp_n(&v9[5 * *v7]);
  }

  v19[1] = v14;
  v19[2] = 0;
  v19[3] = cc_ws_alloc;
  v20 = cc_ws_free;
  if (!v12)
  {
    return 4294967283;
  }

  v15 = &a3[3 * **a3 + 2];
  v16 = cczp_bitlen(&v9[5 * *v7]);
  ccn_read_uint_internal(v8, v15, (v16 + 7) >> 3, a2);
  if (ccec_validate_scalar(v7, &a3[3 * **a3 + 2]))
  {
    pub_from_priv_ws = 4294967289;
    cc_ws_free(v19);
  }

  else
  {
    cczp_add_ws(v19, &v9[5 * *v7]);
    pub_from_priv_ws = ccec_make_pub_from_priv_ws(v19, v7, a4, &a3[3 * **a3 + 2], 0, a3);
    v20(v19);
  }

  return pub_from_priv_ws;
}

uint64_t ccckg_owner_finish(uint64_t a1, size_t a2, char *a3, uint64_t a4, uint64_t a5, char *a6)
{
  v25 = *MEMORY[0x29EDCA608];
  v23 = timingsafe_enable_if_supported();
  v12 = ccckg_ctx_di(a1);
  v13 = ccckg_ctx_cp(a1);
  if (*(a1 + 32) == 2)
  {
    v14 = v13;
    if (*a4 == v13 && ccckg_sizeof_opening(v13, v12) == a2)
    {
      ccdigest_internal(v12, a2, a3, v24);
      v15 = *v12;
      v16 = ccckg_ctx_di(a1);
      v17 = ccckg_ctx_cp(a1);
      if (cc_cmp_safe_internal(v15, v24, a1 + 40 + 8 * *v17 + ((*v16 + 7) & 0xFFFFFFFFFFFFFFF8)))
      {
        v18 = 4294967294;
      }

      else
      {
        v20 = ccckg_owner_finish_derive_p(a1, a3, a4, *(a1 + 24));
        if (v20)
        {
          v18 = v20;
        }

        else
        {
          v21 = &a3[(cczp_bitlen(&v14[5 * *v14 + 4]) + 7) >> 3];
          v22 = ccckg_ctx_cp(a1);
          v18 = ccckg_derive_sk(a1, (a4 + 16), v21, a1 + 40 + 8 * *v22, a5, a6);
          if (!v18)
          {
            *(a1 + 32) = 3;
          }
        }
      }

      cc_clear(0x40uLL, v24);
    }

    else
    {
      v18 = 4294967289;
    }
  }

  else
  {
    v18 = 4294967210;
  }

  cc_disable_dit_with_sb(&v23);
  return v18;
}

BOOL ccec_validate_pub(uint64_t **a1)
{
  v19 = timingsafe_enable_if_supported();
  v2 = *a1;
  v3 = **a1;
  v4 = sizeof_struct_ccpolyzp_po2cyc();
  v5 = 5 * v3 + (v4 + 7) / v4 + 3;
  if (v5 <= 7 * v3)
  {
    v5 = 7 * v3;
  }

  v6 = cc_malloc_clear(8 * (v5 + 3 * v3));
  v15[0] = v6;
  v7 = *v2;
  v8 = sizeof_struct_ccpolyzp_po2cyc();
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

uint64_t ccpad_cts3_decrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = *MEMORY[0x29EDCA608];
  v25 = timingsafe_enable_if_supported();
  v11 = *(a1 + 8);
  v12 = &v26[v11];
  v13 = (a4 - 1) / v11;
  if (v13 >= 2)
  {
    v15 = (v13 - 1) * v11;
    (*(a1 + 24))(a2, a3);
    v14 = a4 - v15;
    a6 += v15;
  }

  else
  {
    v14 = a4;
  }

  __memcpy_chk();
  if (2 * v11 == v14)
  {
    for (i = 0; i != v11; ++i)
    {
      v17 = v26[i];
      v26[i] = v12[i];
      v12[i] = v17;
    }

    (*(a1 + 24))(a2, a3, 2, v26, a6);
  }

  else
  {
    v18 = v14 - v11;
    ecb_from_cbc_0(a1, a2, v26, v27);
    if (v14 - v11 < v11)
    {
      memcpy(&v26[v14], &v27[v18], 2 * v11 - v14);
    }

    (*(a1 + 24))(a2, a3, 1, &v26[v11], a6);
    if (v14 != v11)
    {
      v19 = (a6 + v11);
      v20 = v27;
      do
      {
        v22 = *v12++;
        v21 = v22;
        v23 = *v20++;
        *v19++ = v23 ^ v21;
        --v18;
      }

      while (v18);
    }
  }

  cc_disable_dit_with_sb(&v25);
  return a4;
}

uint64_t ecb_from_cbc_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 8);
  v9 = MEMORY[0x2A1C7C4A8](a1);
  v11 = v13 - v10;
  cccbc_set_iv_internal(v9, v13 - v10, 0);
  ccdrbg_generate_internal(a1, a2, v11, 1, a3, a4);
  return cc_clear(v8, v11);
}

void ccrsa_generate_prime_ws(uint64_t a1, unint64_t a2, void *a3, void *a4, unsigned int (**a5)(void, unint64_t, uint64_t), unsigned int (**a6)(void, unint64_t, uint64_t))
{
  v6 = a2 + 63;
  if (a2 + 63 >= 0x40)
  {
    v13 = v6 >> 6;
    v14 = ccn_n(v6 >> 6, a4);
    v18 = *(a1 + 16);
    do
    {
      ccn_random_bits(a2, a3, a5);
      if (v15)
      {
        break;
      }

      ccn_set_bit(a3, a2 - 1, 1);
      ccn_set_bit(a3, a2 - 2, 1);
      ccn_set_bit(a3, 0, 1);
      v16 = ccrsa_num_mr_iterations(a2);
      ccrsa_is_valid_prime_ws(a1, v13, a3, v14, a4, v16, a6);
      if (v17 == 1)
      {
        break;
      }
    }

    while ((v17 & 0x80000000) == 0);
    *(a1 + 16) = v18;
  }
}

uint64_t ccn_p256_inv_asm_ws(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v20 = *MEMORY[0x29EDCA608];
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
  v19[0] = xmmword_299DAA660;
  v19[1] = *algn_299DAA670;
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
  v6 = *MEMORY[0x29EDCA608];
  v5[0] = xmmword_299DAA660;
  v5[1] = *algn_299DAA670;
  return ccn_mulmod_p256(a3, a4, v5);
}

uint64_t ccrsa_get_pubkey_components(uint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v10 = a1 + 3;
  v11 = *a1;
  v12 = ccn_write_uint_size_public_value(*a1, a1 + 3);
  if (v12 > *a3)
  {
    return 0xFFFFFFFFLL;
  }

  *a3 = v12;
  ccn_write_uint_public_value(v11, v10, v12, a2);
  v13 = *a1;
  v14 = &v10[2 * v13];
  v15 = ccn_write_uint_size_public_value(v13, v14 + 1);
  if (v15 > *a5)
  {
    return 0xFFFFFFFFLL;
  }

  *a5 = v15;
  ccn_write_uint_public_value(v13, v14 + 1, v15, a4);
  return 0;
}

uint64_t ccpad_pkcs7_decrypt(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = timingsafe_enable_if_supported();
  v12 = *(a1 + 8);
  (*(a1 + 24))(a2, a3, a4 / v12, a5, a6);
  v13 = a4 - ccpad_pkcs7_decode_internal(v12, a6 + (a4 / v12 - 1) * v12);
  cc_disable_dit_with_sb(&v15);
  return v13;
}

uint64_t ccaes_gladman_encrypt_key128(int *a1, int *a2)
{
  v2 = *a1;
  *a2 = *a1;
  v3 = a1[1];
  a2[1] = v3;
  v4 = a1[2];
  a2[2] = v4;
  v5 = a1[3];
  a2[3] = v5;
  v6 = t_fl[BYTE1(v5)] ^ t_fl[BYTE2(v5) + 256] ^ *(&t_fl[512] + ((v5 >> 22) & 0x3FC)) ^ t_fl[v5 + 768] ^ 1 ^ v2;
  a2[4] = v6;
  a2[5] = v6 ^ v3;
  v7 = v6 ^ v3 ^ v4;
  a2[6] = v7;
  a2[7] = v7 ^ v5;
  v8 = t_fl[((v7 ^ v5) >> 16) + 256] ^ t_fl[((v7 ^ v5) >> 8)] ^ t_fl[((v7 ^ v5) >> 24) + 512] ^ t_fl[(v7 ^ v5) + 768] ^ 2;
  v9 = v8 ^ v6;
  v10 = v8 ^ v3;
  a2[8] = v9;
  a2[9] = v10;
  a2[10] = v10 ^ v7;
  a2[11] = v10 ^ v5;
  v11 = t_fl[((v10 ^ v5) >> 8)] ^ t_fl[((v10 ^ v5) >> 16) + 256] ^ t_fl[((v10 ^ v5) >> 24) + 512] ^ t_fl[(v10 ^ v5) + 768] ^ v9 ^ 4;
  a2[12] = v11;
  a2[13] = v11 ^ v10;
  v12 = v11 ^ v7;
  v13 = v12 ^ v10 ^ v5;
  a2[14] = v12;
  a2[15] = v13;
  v14 = t_fl[BYTE2(v13) + 256] ^ t_fl[BYTE1(v13)] ^ t_fl[HIBYTE(v13) + 512] ^ t_fl[(v12 ^ v10 ^ v5) + 768] ^ 8;
  v15 = v14 ^ v11;
  v16 = v14 ^ v10;
  a2[16] = v15;
  a2[17] = v16;
  LODWORD(v5) = v14 ^ v5;
  a2[18] = v16 ^ v12;
  a2[19] = v5;
  v17 = t_fl[BYTE1(v5)] ^ t_fl[BYTE2(v5) + 256] ^ t_fl[BYTE3(v5) + 512] ^ t_fl[v5 + 768] ^ v15 ^ 0x10;
  a2[20] = v17;
  a2[21] = v17 ^ v16;
  v18 = v17 ^ v12;
  a2[22] = v18;
  a2[23] = v18 ^ v5;
  v19 = t_fl[((v18 ^ v5) >> 16) + 256] ^ t_fl[((v18 ^ v5) >> 8)] ^ t_fl[((v18 ^ v5) >> 24) + 512] ^ t_fl[(v18 ^ v5) + 768] ^ 0x20;
  v20 = v19 ^ v17;
  v21 = v19 ^ v16;
  a2[24] = v20;
  a2[25] = v21;
  a2[26] = v21 ^ v18;
  a2[27] = v21 ^ v5;
  v22 = t_fl[((v21 ^ v5) >> 8)] ^ t_fl[((v21 ^ v5) >> 16) + 256] ^ t_fl[((v21 ^ v5) >> 24) + 512] ^ t_fl[(v21 ^ v5) + 768] ^ v20 ^ 0x40;
  a2[28] = v22;
  a2[29] = v22 ^ v21;
  v23 = v22 ^ v18;
  v24 = v23 ^ v21 ^ v5;
  a2[30] = v23;
  a2[31] = v24;
  v25 = t_fl[BYTE2(v24) + 256] ^ t_fl[BYTE1(v24)] ^ t_fl[HIBYTE(v24) + 512] ^ t_fl[(v23 ^ v21 ^ v5) + 768] ^ 0x80;
  v26 = v25 ^ v22;
  v27 = v25 ^ v21;
  a2[32] = v26;
  a2[33] = v27;
  LODWORD(v5) = v25 ^ v5;
  a2[34] = v27 ^ v23;
  a2[35] = v5;
  v28 = t_fl[BYTE1(v5)] ^ t_fl[BYTE2(v5) + 256] ^ t_fl[BYTE3(v5) + 512] ^ t_fl[v5 + 768] ^ v26 ^ 0x1B;
  a2[36] = v28;
  a2[37] = v28 ^ v27;
  v29 = v28 ^ v23;
  a2[38] = v29;
  a2[39] = v29 ^ v5;
  result = ((v29 ^ v5) >> 16);
  v31 = t_fl[result + 256] ^ t_fl[((v29 ^ v5) >> 8)] ^ t_fl[((v29 ^ v5) >> 24) + 512] ^ t_fl[(v29 ^ v5) + 768] ^ 0x36;
  v32 = v31 ^ v28;
  v33 = v31 ^ v27;
  a2[40] = v32;
  a2[41] = v33;
  a2[42] = v33 ^ v29;
  a2[43] = v33 ^ v5;
  a2[60] = 10;
  return result;
}

uint64_t ccaes_gladman_encrypt_key192(int *a1, int *a2)
{
  v2 = *a1;
  *a2 = *a1;
  v3 = a1[1];
  a2[1] = v3;
  v4 = a1[2];
  a2[2] = v4;
  v5 = a1[3];
  a2[3] = v5;
  v6 = a1[4];
  a2[4] = v6;
  v7 = a1[5];
  a2[5] = v7;
  v8 = t_fl[BYTE1(v7)] ^ t_fl[BYTE2(v7) + 256] ^ *(&t_fl[512] + ((v7 >> 22) & 0x3FC)) ^ t_fl[v7 + 768] ^ 1 ^ v2;
  a2[6] = v8;
  a2[7] = v8 ^ v3;
  v9 = v8 ^ v3 ^ v4;
  a2[8] = v9;
  a2[9] = v9 ^ v5;
  v10 = v9 ^ v5 ^ v6;
  a2[10] = v10;
  a2[11] = v10 ^ v7;
  v11 = t_fl[((v10 ^ v7) >> 16) + 256] ^ t_fl[((v10 ^ v7) >> 8)] ^ t_fl[((v10 ^ v7) >> 24) + 512] ^ t_fl[(v10 ^ v7) + 768] ^ 2;
  v12 = v11 ^ v8;
  v13 = v11 ^ v3;
  a2[12] = v12;
  a2[13] = v13;
  a2[14] = v13 ^ v9;
  a2[15] = v13 ^ v5;
  LODWORD(v7) = v13 ^ v5 ^ v7;
  a2[16] = v13 ^ v5 ^ v10;
  a2[17] = v7;
  v14 = t_fl[BYTE1(v7)] ^ t_fl[BYTE2(v7) + 256] ^ t_fl[BYTE3(v7) + 512] ^ t_fl[v7 + 768] ^ v12 ^ 4;
  a2[18] = v14;
  a2[19] = v14 ^ v13;
  v15 = v14 ^ v9;
  a2[20] = v15;
  a2[21] = v15 ^ v13 ^ v5;
  v16 = v15 ^ v10 ^ v7;
  a2[22] = v15 ^ v10;
  a2[23] = v16;
  v17 = t_fl[BYTE2(v16) + 256] ^ t_fl[BYTE1(v16)] ^ t_fl[HIBYTE(v16) + 512] ^ t_fl[(v15 ^ v10 ^ v7) + 768] ^ 8;
  v18 = v17 ^ v14;
  v19 = v17 ^ v13;
  a2[24] = v18;
  a2[25] = v19;
  v20 = v17 ^ v5;
  a2[26] = v19 ^ v15;
  a2[27] = v20;
  a2[28] = v20 ^ v15 ^ v10;
  a2[29] = v20 ^ v7;
  v21 = t_fl[((v20 ^ v7) >> 8)] ^ t_fl[((v20 ^ v7) >> 16) + 256] ^ t_fl[((v20 ^ v7) >> 24) + 512] ^ t_fl[(v20 ^ v7) + 768] ^ v18 ^ 0x10;
  a2[30] = v21;
  a2[31] = v21 ^ v19;
  v22 = v21 ^ v15;
  a2[32] = v22;
  a2[33] = v22 ^ v20;
  v23 = v21 ^ v10;
  v24 = v23 ^ v20 ^ v7;
  a2[34] = v23;
  a2[35] = v24;
  v25 = t_fl[BYTE2(v24) + 256] ^ t_fl[BYTE1(v24)] ^ t_fl[HIBYTE(v24) + 512] ^ t_fl[(v23 ^ v20 ^ v7) + 768] ^ 0x20;
  v26 = v25 ^ v21;
  v27 = v25 ^ v19;
  a2[36] = v26;
  a2[37] = v27;
  a2[38] = v27 ^ v22;
  a2[39] = v27 ^ v20;
  LODWORD(v7) = v27 ^ v7;
  a2[40] = v27 ^ v20 ^ v23;
  a2[41] = v7;
  result = t_fl[BYTE1(v7)] ^ t_fl[BYTE2(v7) + 256] ^ t_fl[BYTE3(v7) + 512] ^ t_fl[v7 + 768] ^ v26 ^ 0x40u;
  a2[42] = result;
  a2[43] = result ^ v27;
  v29 = result ^ v22;
  a2[44] = v29;
  a2[45] = v29 ^ v27 ^ v20;
  v30 = v29 ^ v23;
  LODWORD(v7) = v30 ^ v7;
  a2[46] = v30;
  a2[47] = v7;
  v31 = t_fl[BYTE2(v7) + 256] ^ t_fl[BYTE1(v7)] ^ t_fl[BYTE3(v7) + 512] ^ t_fl[v7 + 768] ^ 0x80;
  a2[48] = v31 ^ result;
  a2[49] = v31 ^ v27;
  a2[50] = v31 ^ v27 ^ v29;
  a2[51] = v31 ^ v20;
  a2[60] = 12;
  return result;
}

uint64_t ccaes_gladman_encrypt_key256(int *a1, int *a2)
{
  v2 = *a1;
  *a2 = *a1;
  v3 = a1[1];
  a2[1] = v3;
  v4 = a1[2];
  a2[2] = v4;
  v5 = a1[3];
  a2[3] = v5;
  v6 = a1[4];
  a2[4] = v6;
  v7 = a1[5];
  a2[5] = v7;
  v8 = a1[6];
  a2[6] = v8;
  v9 = a1[7];
  a2[7] = v9;
  v10 = t_fl[BYTE1(v9)] ^ t_fl[BYTE2(v9) + 256] ^ *(&t_fl[512] + ((v9 >> 22) & 0x3FC)) ^ t_fl[v9 + 768] ^ 1 ^ v2;
  a2[8] = v10;
  a2[9] = v10 ^ v3;
  v11 = v10 ^ v3 ^ v4;
  a2[10] = v11;
  a2[11] = v11 ^ v5;
  v12 = t_fl[(v11 ^ v5)] ^ t_fl[((v11 ^ v5) >> 8) + 256] ^ t_fl[((v11 ^ v5) >> 16) + 512] ^ t_fl[((v11 ^ v5) >> 24) + 768] ^ v6;
  a2[12] = v12;
  a2[13] = v12 ^ v7;
  v13 = v12 ^ v7 ^ v8;
  a2[14] = v13;
  a2[15] = v13 ^ v9;
  v14 = t_fl[((v13 ^ v9) >> 16) + 256] ^ t_fl[((v13 ^ v9) >> 8)] ^ t_fl[((v13 ^ v9) >> 24) + 512] ^ t_fl[(v13 ^ v9) + 768] ^ 2;
  v15 = v14 ^ v10;
  v16 = v14 ^ v3;
  a2[16] = v15;
  a2[17] = v14 ^ v3;
  a2[18] = v14 ^ v3 ^ v11;
  a2[19] = v14 ^ v3 ^ v5;
  v17 = t_fl[((v16 ^ v5) >> 8) + 256] ^ t_fl[(v16 ^ v5)] ^ t_fl[((v16 ^ v5) >> 16) + 512] ^ t_fl[((v16 ^ v5) >> 24) + 768];
  v18 = v17 ^ v12;
  v19 = v17 ^ v7;
  a2[20] = v18;
  a2[21] = v19;
  a2[22] = v19 ^ v13;
  a2[23] = v19 ^ v9;
  v20 = t_fl[((v19 ^ v9) >> 8)] ^ t_fl[((v19 ^ v9) >> 16) + 256] ^ t_fl[((v19 ^ v9) >> 24) + 512] ^ t_fl[(v19 ^ v9) + 768] ^ v15 ^ 4;
  a2[24] = v20;
  a2[25] = v20 ^ v16;
  v21 = v20 ^ v11;
  v22 = v21 ^ v16 ^ v5;
  a2[26] = v21;
  a2[27] = v22;
  v23 = t_fl[(v21 ^ v16 ^ v5)] ^ t_fl[BYTE1(v22) + 256] ^ t_fl[BYTE2(v22) + 512] ^ t_fl[HIBYTE(v22) + 768] ^ v18;
  a2[28] = v23;
  a2[29] = v23 ^ v19;
  v24 = v23 ^ v13;
  v25 = v24 ^ v19 ^ v9;
  a2[30] = v24;
  a2[31] = v25;
  v26 = t_fl[BYTE2(v25) + 256] ^ t_fl[BYTE1(v25)] ^ t_fl[HIBYTE(v25) + 512] ^ t_fl[(v24 ^ v19 ^ v9) + 768] ^ 8;
  v27 = v26 ^ v20;
  v28 = v26 ^ v16;
  a2[32] = v26 ^ v20;
  a2[33] = v28;
  v29 = v26 ^ v5;
  a2[34] = v28 ^ v21;
  a2[35] = v29;
  v30 = t_fl[BYTE1(v29) + 256] ^ t_fl[v29] ^ t_fl[BYTE2(v29) + 512] ^ t_fl[HIBYTE(v29) + 768];
  v31 = v30 ^ v19;
  a2[36] = v30 ^ v23;
  a2[37] = v31;
  LODWORD(v9) = v30 ^ v9;
  a2[38] = v31 ^ v24;
  a2[39] = v9;
  v32 = t_fl[BYTE1(v9)] ^ t_fl[BYTE2(v9) + 256] ^ t_fl[BYTE3(v9) + 512] ^ t_fl[v9 + 768] ^ v27 ^ 0x10;
  a2[40] = v32;
  a2[41] = v32 ^ v28;
  v33 = v32 ^ v21;
  a2[42] = v33;
  a2[43] = v33 ^ v29;
  v34 = t_fl[(v33 ^ v29)] ^ t_fl[((v33 ^ v29) >> 8) + 256] ^ t_fl[((v33 ^ v29) >> 16) + 512] ^ t_fl[((v33 ^ v29) >> 24) + 768] ^ v30 ^ v23;
  a2[44] = v34;
  a2[45] = v34 ^ v31;
  v35 = v34 ^ v24;
  a2[46] = v35;
  a2[47] = v35 ^ v9;
  v36 = t_fl[((v35 ^ v9) >> 16) + 256] ^ t_fl[((v35 ^ v9) >> 8)] ^ t_fl[((v35 ^ v9) >> 24) + 512] ^ t_fl[(v35 ^ v9) + 768] ^ 0x20;
  v37 = v36 ^ v32;
  result = v36 ^ v28;
  a2[48] = v37;
  a2[49] = result;
  v39 = result ^ v29;
  a2[50] = result ^ v33;
  a2[51] = v39;
  v40 = t_fl[BYTE1(v39) + 256] ^ t_fl[v39] ^ t_fl[BYTE2(v39) + 512] ^ t_fl[HIBYTE(v39) + 768];
  v41 = v40 ^ v31;
  a2[52] = v40 ^ v34;
  a2[53] = v41;
  LODWORD(v9) = v41 ^ v9;
  a2[54] = v41 ^ v35;
  a2[55] = v9;
  v42 = t_fl[BYTE1(v9)] ^ t_fl[BYTE2(v9) + 256] ^ t_fl[BYTE3(v9) + 512] ^ t_fl[v9 + 768] ^ v37 ^ 0x40;
  a2[56] = v42;
  a2[57] = v42 ^ result;
  v43 = v42 ^ v33;
  a2[58] = v43;
  a2[59] = v43 ^ v39;
  a2[60] = 14;
  return result;
}

uint64_t ccaes_gladman_encrypt_key(int *a1, uint64_t a2, int *a3)
{
  v3 = 4294967289;
  if (a2 <= 127)
  {
    if (a2 != 16)
    {
      if (a2 != 24)
      {
        if (a2 != 32)
        {
          return v3;
        }

        goto LABEL_10;
      }

      goto LABEL_11;
    }

    goto LABEL_9;
  }

  switch(a2)
  {
    case 256:
LABEL_10:
      ccaes_gladman_encrypt_key256(a1, a3);
      return 0;
    case 192:
LABEL_11:
      ccaes_gladman_encrypt_key192(a1, a3);
      return 0;
    case 128:
LABEL_9:
      ccaes_gladman_encrypt_key128(a1, a3);
      return 0;
  }

  return v3;
}

uint64_t ccaes_gladman_decrypt_key128(unsigned int *a1, unsigned int *a2)
{
  v2 = *a1;
  *a2 = *a1;
  v3 = a1[1];
  a2[1] = v3;
  v4 = a1[2];
  a2[2] = v4;
  v5 = a1[3];
  a2[3] = v5;
  v6 = v5 ^ v3;
  v7 = t_fl[BYTE2(v5) + 256] ^ t_fl[BYTE1(v5)] ^ *(&t_fl[512] + ((v5 >> 22) & 0x3FC)) ^ t_fl[v5 + 768] ^ 1;
  v8 = v5 ^ v3 ^ v2 ^ v4;
  v9 = t_im[((v7 ^ v2) >> 8) + 256] ^ t_im[(v7 ^ v2)] ^ t_im[((v7 ^ v2) >> 16) + 512] ^ t_im[((v7 ^ v2) >> 24) + 768];
  a2[4] = v9;
  v10 = v7 ^ v2 ^ v3;
  v11 = v8 ^ v7;
  v12 = t_im[BYTE1(v10) + 256] ^ t_im[v10] ^ t_im[BYTE2(v10) + 512] ^ t_im[HIBYTE(v10) + 768];
  a2[5] = v12;
  v13 = v10 ^ v4;
  v14 = t_im[BYTE1(v13) + 256] ^ t_im[v13] ^ t_im[BYTE2(v13) + 512] ^ t_im[HIBYTE(v13) + 768];
  a2[6] = v14;
  v15 = t_im[((v13 ^ v5) >> 8) + 256] ^ t_im[(v13 ^ v5)] ^ t_im[((v13 ^ v5) >> 16) + 512] ^ t_im[((v13 ^ v5) >> 24) + 768];
  a2[7] = v15;
  v16 = t_fl[BYTE2(v11) + 256] ^ t_fl[BYTE1(v11)] ^ t_fl[HIBYTE(v11) + 512] ^ t_fl[v11 + 768] ^ 2;
  v17 = v6 ^ v16;
  v18 = t_im[(LOBYTE(t_fl[BYTE2(v11) + 256]) ^ LOBYTE(t_fl[BYTE1(v11)]) ^ LOBYTE(t_fl[HIBYTE(v11) + 512]) ^ LOBYTE(t_fl[v11 + 768])) ^ 2] ^ t_im[BYTE1(v16) + 256] ^ t_im[BYTE2(v16) + 512] ^ t_im[HIBYTE(v16) + 768] ^ v9;
  a2[8] = v18;
  a2[9] = v18 ^ v12;
  v19 = v18 ^ v12 ^ v14;
  a2[10] = v19;
  a2[11] = v19 ^ v15;
  v20 = t_fl[BYTE2(v17) + 256] ^ t_fl[BYTE1(v17)] ^ t_fl[HIBYTE(v17) + 512] ^ t_fl[v17 + 768] ^ 4;
  v21 = v5 ^ v4 ^ v20;
  v22 = t_im[BYTE1(v20) + 256] ^ t_im[(LOBYTE(t_fl[BYTE2(v17) + 256]) ^ LOBYTE(t_fl[BYTE1(v17)]) ^ LOBYTE(t_fl[HIBYTE(v17) + 512]) ^ LOBYTE(t_fl[v17 + 768])) ^ 4] ^ t_im[BYTE2(v20) + 512] ^ t_im[HIBYTE(v20) + 768];
  v23 = v22 ^ v18;
  v24 = v22 ^ v12;
  a2[12] = v23;
  a2[13] = v22 ^ v12;
  a2[14] = v22 ^ v12 ^ v19;
  a2[15] = v22 ^ v12 ^ v15;
  v25 = t_fl[BYTE2(v21) + 256] ^ t_fl[BYTE1(v21)] ^ t_fl[HIBYTE(v21) + 512] ^ t_fl[v21 + 768] ^ 8;
  LODWORD(v5) = v25 ^ v5;
  v26 = t_im[(LOBYTE(t_fl[BYTE2(v21) + 256]) ^ LOBYTE(t_fl[BYTE1(v21)]) ^ LOBYTE(t_fl[HIBYTE(v21) + 512]) ^ LOBYTE(t_fl[v21 + 768])) ^ 8] ^ t_im[BYTE1(v25) + 256] ^ t_im[BYTE2(v25) + 512] ^ t_im[HIBYTE(v25) + 768] ^ v23;
  a2[16] = v26;
  a2[17] = v26 ^ v24;
  v27 = v26 ^ v19;
  a2[18] = v27;
  a2[19] = v27 ^ v24 ^ v15;
  v28 = t_fl[BYTE2(v5) + 256] ^ t_fl[BYTE1(v5)] ^ t_fl[BYTE3(v5) + 512] ^ t_fl[v5 + 768] ^ 0x10;
  v29 = v28 ^ v11;
  v30 = t_im[BYTE1(v28) + 256] ^ t_im[(LOBYTE(t_fl[BYTE2(v5) + 256]) ^ LOBYTE(t_fl[BYTE1(v5)]) ^ LOBYTE(t_fl[BYTE3(v5) + 512]) ^ LOBYTE(t_fl[v5 + 768])) ^ 0x10] ^ t_im[BYTE2(v28) + 512] ^ t_im[HIBYTE(v28) + 768];
  v31 = v30 ^ v26;
  v32 = v30 ^ v24;
  a2[20] = v31;
  a2[21] = v30 ^ v24;
  v33 = v30 ^ v24 ^ v27;
  result = v30 ^ v15;
  a2[22] = v33;
  a2[23] = result;
  v35 = t_fl[BYTE2(v29) + 256] ^ t_fl[BYTE1(v29)] ^ t_fl[HIBYTE(v29) + 512] ^ t_fl[v29 + 768] ^ 0x20;
  v36 = v35 ^ v17;
  v37 = t_im[(LOBYTE(t_fl[BYTE2(v29) + 256]) ^ LOBYTE(t_fl[BYTE1(v29)]) ^ LOBYTE(t_fl[HIBYTE(v29) + 512]) ^ LOBYTE(t_fl[v29 + 768])) ^ 0x20] ^ t_im[BYTE1(v35) + 256] ^ t_im[BYTE2(v35) + 512] ^ t_im[HIBYTE(v35) + 768] ^ v31;
  a2[24] = v37;
  a2[25] = v37 ^ v32;
  v38 = v37 ^ v27;
  a2[26] = v37 ^ v27;
  a2[27] = v37 ^ v27 ^ result;
  v39 = t_fl[BYTE2(v36) + 256] ^ t_fl[BYTE1(v36)] ^ t_fl[HIBYTE(v36) + 512] ^ t_fl[v36 + 768] ^ 0x40;
  v40 = v39 ^ v21;
  v41 = t_im[BYTE1(v39) + 256] ^ t_im[(LOBYTE(t_fl[BYTE2(v36) + 256]) ^ LOBYTE(t_fl[BYTE1(v36)]) ^ LOBYTE(t_fl[HIBYTE(v36) + 512]) ^ LOBYTE(t_fl[v36 + 768])) ^ 0x40] ^ t_im[BYTE2(v39) + 512] ^ t_im[HIBYTE(v39) + 768];
  v42 = v41 ^ v37;
  v43 = v41 ^ v32;
  a2[28] = v42;
  a2[29] = v43;
  a2[30] = v43 ^ v38;
  a2[31] = v43 ^ result;
  v44 = t_fl[BYTE2(v40) + 256] ^ t_fl[BYTE1(v40)] ^ t_fl[HIBYTE(v40) + 512] ^ t_fl[v40 + 768] ^ 0x80;
  LODWORD(v5) = v44 ^ v5;
  v45 = t_im[(LOBYTE(t_fl[BYTE2(v40) + 256]) ^ LOBYTE(t_fl[BYTE1(v40)]) ^ LOBYTE(t_fl[HIBYTE(v40) + 512]) ^ LOBYTE(t_fl[v40 + 768])) ^ 0x80] ^ t_im[BYTE1(v44) + 256] ^ t_im[BYTE2(v44) + 512] ^ t_im[HIBYTE(v44) + 768] ^ v42;
  a2[32] = v45;
  a2[33] = v45 ^ v43;
  v46 = v45 ^ v38;
  a2[34] = v46;
  a2[35] = v46 ^ v43 ^ result;
  v47 = t_fl[BYTE2(v5) + 256] ^ t_fl[BYTE1(v5)] ^ t_fl[BYTE3(v5) + 512] ^ t_fl[v5 + 768] ^ 0x1B;
  v48 = v47 ^ v29;
  v49 = t_im[BYTE1(v47) + 256] ^ t_im[(LOBYTE(t_fl[BYTE2(v5) + 256]) ^ LOBYTE(t_fl[BYTE1(v5)]) ^ LOBYTE(t_fl[BYTE3(v5) + 512]) ^ LOBYTE(t_fl[v5 + 768])) ^ 0x1B] ^ t_im[BYTE2(v47) + 512] ^ t_im[HIBYTE(v47) + 768];
  a2[36] = v49 ^ v45;
  a2[37] = v49 ^ v43;
  a2[38] = v49 ^ v43 ^ v46;
  a2[39] = v49 ^ result;
  v50 = t_fl[BYTE1(v48)] ^ t_fl[BYTE2(v48) + 256] ^ t_fl[HIBYTE(v48) + 512] ^ t_fl[v48 + 768] ^ v36 ^ 0x36;
  a2[40] = v5 ^ v40 ^ v50 ^ v48;
  a2[41] = v50 ^ v5;
  a2[42] = v50 ^ v48;
  a2[43] = v50;
  a2[60] = 10;
  return result;
}

uint64_t ccaes_gladman_decrypt_key192(int *a1, int *a2)
{
  v2 = *a1;
  *a2 = *a1;
  v3 = a1[1];
  a2[1] = v3;
  v4 = a1[2];
  a2[2] = v4;
  v5 = a1[3];
  a2[3] = v5;
  v7 = a1[4];
  v6 = a1[5];
  a2[4] = t_im[BYTE1(v7) + 256] ^ t_im[a1[4]] ^ t_im[BYTE2(v7) + 512] ^ *(&t_im[768] + ((v7 >> 22) & 0x3FC));
  v8 = (v6 >> 22) & 0x3FC;
  a2[5] = t_im[BYTE1(v6) + 256] ^ t_im[v6] ^ t_im[BYTE2(v6) + 512] ^ *(&t_im[768] + v8);
  v9 = t_fl[BYTE1(v6)] ^ t_fl[BYTE2(v6) + 256] ^ *(&t_fl[512] + v8);
  v10 = v9 ^ t_fl[v6 + 768] ^ 1 ^ v2;
  v11 = t_im[BYTE1(v10) + 256] ^ t_im[(v9 ^ LOBYTE(t_fl[v6 + 768]) ^ 1 ^ v2)] ^ t_im[BYTE2(v10) + 512] ^ t_im[HIBYTE(v10) + 768];
  a2[6] = v11;
  v12 = t_im[((v10 ^ v3) >> 8) + 256] ^ t_im[(v10 ^ v3)] ^ t_im[((v10 ^ v3) >> 16) + 512] ^ t_im[((v10 ^ v3) >> 24) + 768];
  a2[7] = v12;
  v13 = v10 ^ v3 ^ v4;
  v14 = t_im[BYTE1(v13) + 256] ^ t_im[(v10 ^ v3 ^ v4)] ^ t_im[BYTE2(v13) + 512] ^ t_im[HIBYTE(v13) + 768];
  a2[8] = v14;
  v15 = t_im[((v13 ^ v5) >> 8) + 256] ^ t_im[(v13 ^ v5)] ^ t_im[((v13 ^ v5) >> 16) + 512] ^ t_im[((v13 ^ v5) >> 24) + 768];
  a2[9] = v15;
  LODWORD(v8) = v13 ^ v5 ^ v7;
  v16 = t_im[BYTE1(v8) + 256] ^ t_im[(v13 ^ v5 ^ v7)] ^ t_im[BYTE2(v8) + 512] ^ t_im[BYTE3(v8) + 768];
  a2[10] = v16;
  v17 = (v8 ^ v6) >> 24;
  LODWORD(v7) = t_im[((v8 ^ v6) >> 8) + 256] ^ t_im[(v8 ^ v6)] ^ t_im[((v8 ^ v6) >> 16) + 512] ^ t_im[v17 + 768];
  a2[11] = v7;
  v18 = t_fl[((v8 ^ v6) >> 16) + 256] ^ t_fl[((v8 ^ v6) >> 8)] ^ t_fl[v17 + 512] ^ t_fl[(v8 ^ v6) + 768] ^ 2;
  v19 = v18 ^ v10;
  v20 = t_im[(LOBYTE(t_fl[((v8 ^ v6) >> 16) + 256]) ^ LOBYTE(t_fl[((v8 ^ v6) >> 8)]) ^ LOBYTE(t_fl[v17 + 512]) ^ LOBYTE(t_fl[(v8 ^ v6) + 768])) ^ 2] ^ t_im[BYTE1(v18) + 256] ^ t_im[BYTE2(v18) + 512] ^ t_im[HIBYTE(v18) + 768] ^ v11;
  v21 = v18 ^ v3;
  a2[12] = v20;
  a2[13] = v20 ^ v12;
  v22 = v20 ^ v12 ^ v14;
  a2[14] = v22;
  a2[15] = v22 ^ v15;
  v23 = v22 ^ v15 ^ v16;
  LODWORD(v6) = v6 ^ v5 ^ v21;
  a2[16] = v23;
  a2[17] = v23 ^ v7;
  v24 = t_fl[BYTE2(v6) + 256] ^ t_fl[BYTE1(v6)] ^ t_fl[BYTE3(v6) + 512] ^ t_fl[v6 + 768] ^ 4;
  v25 = v19 ^ v24;
  v26 = t_im[BYTE1(v24) + 256] ^ t_im[(LOBYTE(t_fl[BYTE2(v6) + 256]) ^ LOBYTE(t_fl[BYTE1(v6)]) ^ LOBYTE(t_fl[BYTE3(v6) + 512]) ^ LOBYTE(t_fl[v6 + 768])) ^ 4] ^ t_im[BYTE2(v24) + 512] ^ t_im[HIBYTE(v24) + 768];
  v27 = v26 ^ v20;
  v28 = v26 ^ v12;
  a2[18] = v27;
  a2[19] = v28;
  v29 = v25 ^ v13;
  a2[20] = v28 ^ v22;
  a2[21] = v28 ^ v15;
  LODWORD(v7) = v28 ^ v15 ^ v7;
  a2[22] = v28 ^ v15 ^ v23;
  a2[23] = v7;
  v30 = t_fl[((v6 ^ v8 ^ v29) >> 16) + 256] ^ t_fl[((v6 ^ v8 ^ v29) >> 8)] ^ t_fl[((v6 ^ v8 ^ v29) >> 24) + 512] ^ t_fl[(v6 ^ v8 ^ v29) + 768] ^ 8;
  v31 = t_im[(LOBYTE(t_fl[((v6 ^ v8 ^ v29) >> 16) + 256]) ^ LOBYTE(t_fl[((v6 ^ v8 ^ v29) >> 8)]) ^ LOBYTE(t_fl[((v6 ^ v8 ^ v29) >> 24) + 512]) ^ LOBYTE(t_fl[(v6 ^ v8 ^ v29) + 768])) ^ 8] ^ t_im[BYTE1(v30) + 256] ^ t_im[BYTE2(v30) + 512] ^ t_im[HIBYTE(v30) + 768] ^ v27;
  v32 = v30 ^ v21;
  a2[24] = v31;
  a2[25] = v31 ^ v28;
  v33 = v31 ^ v22;
  v34 = v30 ^ v5;
  a2[26] = v33;
  a2[27] = v33 ^ v28 ^ v15;
  a2[28] = v33 ^ v23;
  a2[29] = v33 ^ v23 ^ v7;
  v35 = t_fl[((v34 ^ v6) >> 16) + 256] ^ t_fl[((v34 ^ v6) >> 8)] ^ t_fl[((v34 ^ v6) >> 24) + 512] ^ t_fl[(v34 ^ v6) + 768] ^ 0x10;
  v36 = v30 ^ v25 ^ v35;
  v37 = t_im[BYTE1(v35) + 256] ^ t_im[(LOBYTE(t_fl[((v34 ^ v6) >> 16) + 256]) ^ LOBYTE(t_fl[((v34 ^ v6) >> 8)]) ^ LOBYTE(t_fl[((v34 ^ v6) >> 24) + 512]) ^ LOBYTE(t_fl[(v34 ^ v6) + 768])) ^ 0x10] ^ t_im[BYTE2(v35) + 512] ^ t_im[HIBYTE(v35) + 768];
  v38 = v37 ^ v31;
  v39 = v37 ^ v28;
  a2[30] = v38;
  a2[31] = v39;
  v40 = v37 ^ v15;
  a2[32] = v39 ^ v33;
  a2[33] = v40;
  result = v36 ^ v8;
  a2[34] = v40 ^ v33 ^ v23;
  a2[35] = v40 ^ v7;
  v42 = v36 ^ v29;
  v43 = t_fl[((result ^ v34 ^ v6) >> 16) + 256] ^ t_fl[((result ^ v34 ^ v6) >> 8)] ^ t_fl[((result ^ v34 ^ v6) >> 24) + 512] ^ t_fl[(result ^ v34 ^ v6) + 768] ^ 0x20;
  v44 = v43 ^ v36;
  v45 = t_im[(LOBYTE(t_fl[((result ^ v34 ^ v6) >> 16) + 256]) ^ LOBYTE(t_fl[((result ^ v34 ^ v6) >> 8)]) ^ LOBYTE(t_fl[((result ^ v34 ^ v6) >> 24) + 512]) ^ LOBYTE(t_fl[(result ^ v34 ^ v6) + 768])) ^ 0x20] ^ t_im[BYTE1(v43) + 256] ^ t_im[BYTE2(v43) + 512] ^ t_im[HIBYTE(v43) + 768] ^ v38;
  v46 = v32 ^ v43;
  a2[36] = v45;
  a2[37] = v45 ^ v39;
  v47 = v45 ^ v33;
  a2[38] = v47;
  a2[39] = v47 ^ v40;
  v48 = v45 ^ v23;
  LODWORD(v6) = v46 ^ v6;
  a2[40] = v48;
  a2[41] = v48 ^ v40 ^ v7;
  v49 = t_fl[BYTE2(v6) + 256] ^ t_fl[BYTE1(v6)] ^ t_fl[BYTE3(v6) + 512] ^ t_fl[v6 + 768] ^ 0x40;
  v50 = v44 ^ v49;
  v51 = t_im[BYTE1(v49) + 256] ^ t_im[(LOBYTE(t_fl[BYTE2(v6) + 256]) ^ LOBYTE(t_fl[BYTE1(v6)]) ^ LOBYTE(t_fl[BYTE3(v6) + 512]) ^ LOBYTE(t_fl[v6 + 768])) ^ 0x40] ^ t_im[BYTE2(v49) + 512] ^ t_im[HIBYTE(v49) + 768];
  v52 = v51 ^ v45;
  v53 = v51 ^ v39;
  a2[42] = v52;
  a2[43] = v53;
  a2[44] = v53 ^ v47;
  a2[45] = v53 ^ v40;
  a2[46] = v53 ^ v40 ^ v48;
  a2[47] = v53 ^ v7;
  v54 = t_fl[((v6 ^ result ^ v42 ^ v50) >> 16) + 256] ^ t_fl[((v6 ^ result ^ v42 ^ v50) >> 8)] ^ t_fl[((v6 ^ result ^ v42 ^ v50) >> 24) + 512] ^ t_fl[(v6 ^ result ^ v42 ^ v50) + 768] ^ 0x80;
  a2[48] = v54 ^ v50;
  a2[49] = v54 ^ v46;
  a2[50] = v54 ^ v46 ^ v42 ^ v50;
  a2[51] = v54 ^ v34;
  a2[60] = 12;
  return result;
}

uint64_t ccaes_gladman_decrypt_key256(int *a1, int *a2)
{
  v2 = *a1;
  *a2 = *a1;
  v3 = a1[1];
  a2[1] = v3;
  v4 = v3;
  v74 = v3;
  v5 = a1[2];
  a2[2] = v5;
  v6 = a1[3];
  a2[3] = v6;
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  a2[4] = t_im[BYTE1(v7) + 256] ^ t_im[a1[4]] ^ t_im[BYTE2(v7) + 512] ^ *(&t_im[768] + ((v7 >> 22) & 0x3FC));
  v67 = v8;
  a2[5] = t_im[BYTE1(v8) + 256] ^ t_im[v8] ^ t_im[BYTE2(v8) + 512] ^ *(&t_im[768] + ((v8 >> 22) & 0x3FC));
  a2[6] = t_im[BYTE1(v9) + 256] ^ t_im[v9] ^ t_im[BYTE2(v9) + 512] ^ *(&t_im[768] + ((v9 >> 22) & 0x3FC));
  v11 = v10;
  v12 = (v10 >> 22) & 0x3FC;
  a2[7] = t_im[BYTE1(v10) + 256] ^ t_im[v10] ^ t_im[BYTE2(v10) + 512] ^ *(&t_im[768] + v12);
  v13 = t_fl[BYTE1(v10)] ^ t_fl[BYTE2(v10) + 256] ^ *(&t_fl[512] + v12) ^ t_fl[v10 + 768] ^ 1 ^ v2;
  v14 = t_im[BYTE1(v13) + 256] ^ t_im[v13] ^ t_im[BYTE2(v13) + 512] ^ t_im[HIBYTE(v13) + 768];
  a2[8] = v14;
  v15 = t_im[((v13 ^ v4) >> 8) + 256] ^ t_im[(v13 ^ v4)] ^ t_im[((v13 ^ v4) >> 16) + 512] ^ t_im[((v13 ^ v4) >> 24) + 768];
  a2[9] = v15;
  v16 = v13 ^ v4 ^ v5;
  v17 = t_im[BYTE1(v16) + 256] ^ t_im[v16] ^ t_im[BYTE2(v16) + 512] ^ t_im[HIBYTE(v16) + 768];
  a2[10] = v17;
  v71 = v6;
  v18 = (v16 ^ v6) >> 24;
  v76 = t_im[((v16 ^ v71) >> 8) + 256] ^ t_im[(v16 ^ v71)] ^ t_im[((v16 ^ v71) >> 16) + 512] ^ t_im[v18 + 768];
  a2[11] = v76;
  v19 = t_fl[(v16 ^ v71)] ^ t_fl[((v16 ^ v71) >> 8) + 256] ^ t_fl[((v16 ^ v71) >> 16) + 512] ^ t_fl[v18 + 768] ^ v7;
  LODWORD(v10) = t_im[BYTE1(v19) + 256] ^ t_im[v19] ^ t_im[BYTE2(v19) + 512] ^ t_im[HIBYTE(v19) + 768];
  a2[12] = v10;
  v20 = t_im[((v19 ^ v8) >> 8) + 256] ^ t_im[(v19 ^ v8)] ^ t_im[((v19 ^ v8) >> 16) + 512] ^ t_im[((v19 ^ v8) >> 24) + 768];
  a2[13] = v20;
  v21 = v19 ^ v8 ^ v9;
  v22 = t_im[BYTE1(v21) + 256] ^ t_im[(v19 ^ v8 ^ v9)] ^ t_im[BYTE2(v21) + 512] ^ t_im[HIBYTE(v21) + 768];
  a2[14] = v22;
  v23 = v11;
  v70 = v11;
  v72 = v21 ^ v11;
  v24 = (v21 ^ v11);
  v25 = ((v21 ^ v11) >> 8);
  LODWORD(v9) = t_im[((v21 ^ v11) >> 8) + 256] ^ t_im[(v21 ^ v11)];
  v26 = ((v21 ^ v11) >> 16);
  LODWORD(v8) = v9 ^ t_im[v26 + 512] ^ t_im[HIBYTE(v72) + 768];
  a2[15] = v8;
  v27 = t_fl[v26 + 256] ^ t_fl[v25] ^ t_fl[HIBYTE(v72) + 512] ^ t_fl[v24 + 768] ^ 2;
  v28 = t_im[v27] ^ t_im[BYTE1(v27) + 256] ^ t_im[BYTE2(v27) + 512] ^ t_im[HIBYTE(v27) + 768] ^ v14;
  v75 = v27 ^ v74;
  a2[16] = v28;
  a2[17] = v28 ^ v15;
  v66 = v28 ^ v15 ^ v17;
  v29 = v75 ^ v71;
  a2[18] = v66;
  a2[19] = v66 ^ v76;
  v30 = t_fl[(v75 ^ v71)];
  v31 = t_fl[BYTE1(v29) + 256] ^ v30 ^ t_fl[BYTE2(v29) + 512] ^ t_fl[HIBYTE(v29) + 768];
  v32 = t_im[(LOBYTE(t_fl[BYTE1(v29) + 256]) ^ v30 ^ LOBYTE(t_fl[BYTE2(v29) + 512]) ^ LOBYTE(t_fl[HIBYTE(v29) + 768]))] ^ t_im[BYTE1(v31) + 256] ^ t_im[BYTE2(v31) + 512] ^ t_im[HIBYTE(v31) + 768] ^ v10;
  a2[20] = v32;
  a2[21] = v32 ^ v20;
  v33 = v32 ^ v20 ^ v22;
  v69 = v8;
  a2[22] = v33;
  a2[23] = v33 ^ v8;
  v73 = v31 ^ v67 ^ v23;
  v34 = t_fl[BYTE2(v73) + 256] ^ t_fl[((v31 ^ v67 ^ v23) >> 8)] ^ t_fl[HIBYTE(v73) + 512] ^ t_fl[(v31 ^ v67 ^ v23) + 768];
  v35 = v27 ^ v13 ^ v34 ^ 4;
  v36 = t_im[((v34 ^ 4) >> 8) + 256] ^ t_im[v34 ^ 4] ^ t_im[((v34 ^ 4u) >> 16) + 512] ^ t_im[((v34 ^ 4u) >> 24) + 768];
  LODWORD(v10) = v36 ^ v28;
  v37 = v36 ^ v15;
  a2[25] = v37;
  a2[26] = v37 ^ v66;
  a2[24] = v36 ^ v28;
  v68 = v35 ^ v16;
  a2[27] = v37 ^ v76;
  v38 = t_fl[((v35 ^ v16 ^ v29) >> 8) + 256] ^ t_fl[(v35 ^ v16 ^ v29)] ^ t_fl[((v35 ^ v16 ^ v29) >> 16) + 512] ^ t_fl[((v35 ^ v16 ^ v29) >> 24) + 768];
  v39 = t_im[(LOBYTE(t_fl[((v35 ^ v16 ^ v29) >> 8) + 256]) ^ LOBYTE(t_fl[(v35 ^ v16 ^ v29)]) ^ LOBYTE(t_fl[((v35 ^ v16 ^ v29) >> 16) + 512]) ^ LOBYTE(t_fl[((v35 ^ v16 ^ v29) >> 24) + 768]))];
  v40 = v31 ^ v19;
  v41 = t_im[BYTE1(v38) + 256] ^ v39 ^ t_im[BYTE2(v38) + 512] ^ t_im[HIBYTE(v38) + 768];
  v42 = v41 ^ v32;
  v43 = v41 ^ v20;
  a2[28] = v41 ^ v32;
  a2[29] = v41 ^ v20;
  v44 = v40 ^ v21 ^ v73 ^ v38;
  v45 = v41 ^ v20 ^ v8;
  a2[30] = v41 ^ v20 ^ v33;
  a2[31] = v45;
  v46 = t_fl[BYTE2(v44) + 256] ^ t_fl[BYTE1(v44)] ^ t_fl[HIBYTE(v44) + 512] ^ t_fl[v44 + 768] ^ 8;
  v47 = t_im[(LOBYTE(t_fl[BYTE2(v44) + 256]) ^ LOBYTE(t_fl[BYTE1(v44)]) ^ LOBYTE(t_fl[HIBYTE(v44) + 512]) ^ LOBYTE(t_fl[v44 + 768])) ^ 8] ^ t_im[BYTE1(v46) + 256] ^ t_im[BYTE2(v46) + 512] ^ t_im[HIBYTE(v46) + 768] ^ v10;
  a2[32] = v47;
  a2[33] = v47 ^ v37;
  v48 = v47 ^ v66;
  v49 = v46 ^ v71;
  a2[34] = v47 ^ v66;
  a2[35] = v47 ^ v66 ^ v37 ^ v76;
  LODWORD(v10) = t_fl[((v46 ^ v71) >> 8) + 256] ^ t_fl[(v46 ^ v71)] ^ t_fl[((v46 ^ v71) >> 16) + 512] ^ t_fl[((v46 ^ v71) >> 24) + 768];
  v50 = t_im[(LOBYTE(t_fl[BYTE1(v49) + 256]) ^ LOBYTE(t_fl[v49]) ^ LOBYTE(t_fl[BYTE2(v49) + 512]) ^ LOBYTE(t_fl[HIBYTE(v49) + 768]))] ^ t_im[BYTE1(v10) + 256] ^ t_im[BYTE2(v10) + 512] ^ t_im[BYTE3(v10) + 768] ^ v42;
  a2[36] = v50;
  a2[37] = v50 ^ v43;
  v51 = v50 ^ v33;
  a2[38] = v50 ^ v33;
  a2[39] = v50 ^ v33 ^ v45;
  LODWORD(v10) = t_fl[((v10 ^ v70) >> 16) + 256] ^ t_fl[((v10 ^ v70) >> 8)] ^ t_fl[((v10 ^ v70) >> 24) + 512] ^ t_fl[(v10 ^ v70) + 768] ^ 0x10;
  v52 = v46 ^ v35 ^ v10;
  LODWORD(v10) = t_im[BYTE1(v10) + 256] ^ t_im[v10] ^ t_im[BYTE2(v10) + 512] ^ t_im[BYTE3(v10) + 768];
  v53 = v10 ^ v47;
  v54 = v10 ^ v37;
  a2[40] = v10 ^ v47;
  a2[41] = v10 ^ v37;
  v55 = v10 ^ v37 ^ v47 ^ v66;
  LODWORD(v8) = v46 ^ v71 ^ v68 ^ v52;
  LODWORD(v10) = v10 ^ v76;
  a2[42] = v55;
  a2[43] = v10;
  v56 = t_fl[BYTE1(v8) + 256] ^ t_fl[v8] ^ t_fl[BYTE2(v8) + 512] ^ t_fl[BYTE3(v8) + 768];
  v57 = t_im[BYTE1(v56) + 256] ^ t_im[(LOBYTE(t_fl[BYTE1(v8) + 256]) ^ LOBYTE(t_fl[v8]) ^ LOBYTE(t_fl[BYTE2(v8) + 512]) ^ LOBYTE(t_fl[BYTE3(v8) + 768]))] ^ t_im[BYTE2(v56) + 512] ^ t_im[HIBYTE(v56) + 768];
  a2[44] = v57 ^ v50;
  a2[45] = v57 ^ v43;
  result = v57 ^ v69;
  a2[46] = v57 ^ v43 ^ v51;
  a2[47] = result;
  v59 = t_fl[((v72 ^ v56) >> 16) + 256] ^ t_fl[((v72 ^ v56) >> 8)] ^ t_fl[((v72 ^ v56) >> 24) + 512] ^ t_fl[(v72 ^ v56) + 768] ^ 0x20;
  LODWORD(v7) = t_im[v59] ^ t_im[BYTE1(v59) + 256] ^ t_im[BYTE2(v59) + 512] ^ t_im[HIBYTE(v59) + 768] ^ v53;
  a2[48] = v7;
  a2[49] = v7 ^ v54;
  v60 = v46 ^ v75 ^ v59;
  LODWORD(v7) = v7 ^ v48;
  v61 = v60 ^ v49;
  a2[50] = v7;
  a2[51] = v7 ^ v10;
  LODWORD(v10) = t_fl[BYTE1(v61) + 256] ^ t_fl[(v60 ^ v49)] ^ t_fl[BYTE2(v61) + 512] ^ t_fl[HIBYTE(v61) + 768];
  v62 = t_im[(LOBYTE(t_fl[BYTE1(v61) + 256]) ^ LOBYTE(t_fl[(v60 ^ v49)]) ^ LOBYTE(t_fl[BYTE2(v61) + 512]) ^ LOBYTE(t_fl[HIBYTE(v61) + 768]))] ^ t_im[BYTE1(v10) + 256] ^ t_im[BYTE2(v10) + 512] ^ t_im[BYTE3(v10) + 768] ^ v57 ^ v50;
  a2[52] = v62;
  a2[53] = v62 ^ v57 ^ v43;
  v63 = v62 ^ v51;
  a2[54] = v63;
  a2[55] = v63 ^ result;
  v64 = t_fl[((v73 ^ v10) >> 8)] ^ t_fl[((v73 ^ v10) >> 16) + 256] ^ t_fl[((v73 ^ v10) >> 24) + 512] ^ t_fl[(v73 ^ v10) + 768] ^ v59 ^ 0x40;
  a2[56] = v64 ^ v52;
  a2[57] = v64 ^ v52 ^ v60;
  v65 = v64 ^ v68;
  a2[58] = v65;
  a2[59] = v65 ^ v60 ^ v49;
  a2[60] = 14;
  return result;
}

uint64_t ccaes_gladman_decrypt_key(int *a1, uint64_t a2, int *a3)
{
  v3 = 4294967289;
  if (a2 <= 127)
  {
    if (a2 != 16)
    {
      if (a2 != 24)
      {
        if (a2 != 32)
        {
          return v3;
        }

        goto LABEL_10;
      }

      goto LABEL_11;
    }

    goto LABEL_9;
  }

  switch(a2)
  {
    case 256:
LABEL_10:
      ccaes_gladman_decrypt_key256(a1, a3);
      return 0;
    case 192:
LABEL_11:
      ccaes_gladman_decrypt_key192(a1, a3);
      return 0;
    case 128:
LABEL_9:
      ccaes_gladman_decrypt_key128(a1, a3);
      return 0;
  }

  return v3;
}

uint64_t *ccaes_ctr_crypt_mode()
{
  v0 = ((*ccaes_ecb_encrypt_mode() + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  v1 = ccaes_ecb_encrypt_mode();
  ctr_crypt = v0;
  unk_2A14EE860 = xmmword_299DAA680;
  qword_2A14EE870 = ccmode_ctr_init;
  qword_2A14EE878 = ccmode_ctr_setctr;
  qword_2A14EE880 = ccaes_vng_ctr_crypt;
  unk_2A14EE888 = v1;
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

uint64_t init_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v28 = *MEMORY[0x29EDCA608];
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
        v27[a7 - 1] ^= *(a8 - 1 + a7);
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

  v22 = derive(a2, v27, 3u, v13, v14, v15, v16, v17, a3);
  if (v22)
  {
    v21 = v22;
    goto LABEL_16;
  }

  v19 = *(a2 + 64);
LABEL_8:
  cc_clear(v19, a2);
  cc_clear(0x10uLL, (a2 + 32));
  update(a2, v27);
  v21 = 0;
  v23 = 1;
LABEL_9:
  *(a2 + 48) = v23;
  cc_clear(0x30uLL, v27);
  return v21;
}

uint64_t done(void *a1)
{
  cc_clear(0x20uLL, a1);
  result = cc_clear(0x10uLL, a1 + 4);
  a1[6] = -1;
  return result;
}

uint64_t derive(uint64_t a1, void *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17[5] = *MEMORY[0x29EDCA608];
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

uint64_t update(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x29EDCA608];
  v4 = ccctr_context_size(*(a1 + 56));
  MEMORY[0x2A1C7C4A8](v4);
  v6 = v9 - v5;
  inc_uint(a1 + 40, 8uLL);
  ccctr_init_internal(*(a1 + 56));
  update_with_ctr(a1, v6, a2);
  v7 = ccctr_context_size(*(a1 + 56));
  return cc_clear(v7, v6);
}

uint64_t update_with_ctr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ccctr_update_internal(*(a1 + 56), a2, *(a1 + 64), a3, a1);
  v6 = *(a1 + 56);
  v7 = a3 + *(a1 + 64);

  return ccctr_update_internal(v6, a2, 16, v7, a1 + 32);
}

uint64_t ccrsa_get_fullkey_components(uint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t a6, unint64_t *a7, uint64_t a8, unint64_t *a9)
{
  v35 = timingsafe_enable_if_supported();
  v16 = *a1;
  v17 = ccrsa_ctx_private_zp(a1);
  v18 = cczp_n(v17);
  v19 = ccrsa_ctx_private_zp(a1);
  v20 = cczp_prime(v19);
  v21 = ccn_write_uint_size_public_value(v18, v20);
  if (v21 <= *a7 && (*a7 = v21, ccn_write_uint_internal(v18, v20, v21, a6), v22 = ccrsa_ctx_private_zp(a1), v23 = ccrsa_ctx_private_zp(a1), v24 = cczp_n(v22 + 16 * *v23 + 32), v25 = ccrsa_ctx_private_zp(a1), v26 = ccrsa_ctx_private_zp(a1), v27 = cczp_prime(v25 + 16 * *v26 + 32), v28 = ccn_write_uint_size_public_value(v24, v27), v28 <= *a9) && (*a9 = v28, ccn_write_uint_internal(v24, v27, v28, a8), v29 = ccn_write_uint_size_public_value(v16, a1 + 3), v29 <= *a3) && (*a3 = v29, ccn_write_uint_internal(v16, a1 + 3, v29, a2), v30 = &a1[3 * *a1 + 3], v31 = ccn_write_uint_size_public_value(v16, (v30 + 8)), v31 <= *a5))
  {
    *a5 = v31;
    ccn_write_uint_internal(v16, v30 + 8, v31, a4);
    v32 = 0;
  }

  else
  {
    v32 = 0xFFFFFFFFLL;
  }

  cc_disable_dit_with_sb(&v35);
  return v32;
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

uint64_t ccrsa_emsa_pkcs1v15_verify(unint64_t a1, _BYTE *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[2] = *MEMORY[0x29EDCA608];
  v12 = timingsafe_enable_if_supported();
  v13[0] = 0xAAAAAAAAAAAAAAAALL;
  v13[1] = 0xAAAAAAAAAAAAAAAALL;
  v10 = ccrsa_emsa_pkcs1v15_verify_canary_out(a1, a2, a3, a4, a5, v13);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t ccentropy_rng_init(void *a1, uint64_t a2)
{
  v5 = timingsafe_enable_if_supported();
  *a1 = &entropy_rng_info;
  a1[1] = a2;
  cc_disable_dit_with_sb(&v5);
  return 0;
}

uint64_t ccrng_crypto_generate(uint64_t a1, rsize_t a2, char *a3)
{
  v28 = *MEMORY[0x29EDCA608];
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
    seed = ccentropy_get_seed(*(a1 + 8), v10, v27);
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

  v15 = drbg_reseed(a1, v10, v27, 0, 0);
  if (!v15)
  {
    ccrng_schedule_notify_reseed(*(a1 + 16));
    cc_clear(v10, v27);
    goto LABEL_13;
  }

  v14 = v15;
LABEL_41:
  cc_clear(v10, v27);
LABEL_36:
  v26 = *(a1 + 24);
  if (v26)
  {
    os_unfair_lock_unlock(v26);
  }

  cc_clear(a2, a3);
  return v14;
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

uint64_t cche_secret_key_sizeof(uint64_t a1)
{
  v1 = cche_param_ctx_chain_const(a1);
  v2 = (*(v1 + 12) * *(v1 + 8)) + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3);
  return v2 * sizeof_struct_ccpolyzp_po2cyc();
}

unint64_t cche_ciphertext_sizeof(uint64_t a1, int a2, unsigned int a3)
{
  v5 = cche_param_ctx_chain_const(a1);
  v6 = *v5;
  v7 = (sizeof_struct_ccpolyzp_po2cyc_ctx() + 7) >> 3;
  if (v6 >= 0x80)
  {
    v8 = 128;
  }

  else
  {
    v8 = v6;
  }

  v9 = &v5[2 * (v7 + 2 * (v6 + ((sizeof_struct_ccrns_mul_modulus() + 7) >> 3) * v8) + 6) * (v5[1] - a2)];
  v10 = sizeof_struct_ccpolyzp_po2cyc();
  return 8 * ((v10 + 23) / v10 + (v9[3] * v9[2] + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3)) * a3);
}

uint64_t ccz_cmpi(uint64_t a1, unsigned int a2)
{
  v8[1] = *MEMORY[0x29EDCA608];
  v7 = timingsafe_enable_if_supported();
  v8[0] = a2;
  v6[0] = ccn_n(1, v8);
  v6[1] = 0;
  v6[2] = 1;
  v6[3] = v8;
  v4 = ccz_cmp(a1, v6);
  cc_disable_dit_with_sb(&v7);
  return v4;
}

uint64_t ccxwing_mlkem768x25519_encapsulate_derand_internal(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  v21 = *MEMORY[0x29EDCA608];
  if (a2 != 64)
  {
    return 4294967289;
  }

  v19 = 0u;
  v20 = 0u;
  v9 = *(a3 + 48);
  v18[0] = *(a3 + 32);
  v18[1] = v9;
  pub_internal = cccurve25519_make_pub_internal(&v19, v18);
  if (!pub_internal)
  {
    memset(v17, 0, sizeof(v17));
    v11 = cccurve25519_assumes_dit_internal();
    if (v11)
    {
      pub_internal = v11;
      cc_clear(0x20uLL, &v19);
      v12 = v18;
    }

    else
    {
      pub_internal = ccmlkem_kem_encapsulate_msg(ccmlkem768_params, a1 + 8, v15, v16, a3);
      if (!pub_internal)
      {
        cckem_xwing_mlkem768x25519_combine(v16, v17, &v19, (a1 + 1192), a5);
        memcpy(a4, v15, 0x440uLL);
        v14 = v20;
        a4[68] = v19;
        a4[69] = v14;
        return pub_internal;
      }

      cc_clear(0x20uLL, &v19);
      cc_clear(0x20uLL, v18);
      v12 = v17;
    }

    cc_clear(0x20uLL, v12);
  }

  return pub_internal;
}

void *cckem_xwing_mlkem768x25519()
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
  cc_disable_dit(&v9);
  return &cckem_xwing_mlkem768x25519_info;
}

uint64_t cckem_xwing_mlkem768x25519_combine(char *a1, char *a2, char *a3, char *a4, uint64_t a5)
{
  v15[1] = *MEMORY[0x29EDCA608];
  v10 = ccsha3_256_di();
  v11 = MEMORY[0x2A1C7C4A8](v10);
  v13 = (v15 - v12);
  ccdigest_init_internal(v11, (v15 - v12));
  ccdigest_update_internal(v10, v13, 0x20uLL, a1);
  ccdigest_update_internal(v10, v13, 0x20uLL, a2);
  ccdigest_update_internal(v10, v13, 0x20uLL, a3);
  ccdigest_update_internal(v10, v13, 0x20uLL, a4);
  ccdigest_update_internal(v10, v13, 6uLL, "\\.//^\");
  return (v10[7])(v10, v13, a5);
}

uint64_t cckem_xwing_mlkem768x25519_derive_key_from_seed(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  ccshake256(0x20uLL, a2, 0x60uLL, v14);
  v4 = cckem_public_ctx(a1);
  v5 = (a1 + *(*a1 + 16) + 8);
  pub_internal = ccmlkem_kem_keypair_from_seed(ccmlkem768_params, (v4 + 8), v5, v14, &v15);
  if (!pub_internal)
  {
    pub_internal = cccurve25519_make_pub_internal(v4 + 1192, v16);
    if (pub_internal)
    {
      v7 = cckem_public_ctx(a1);
      v8 = cckem_privkey_nbytes_ctx(v7);
      cc_clear(v8, v5);
      v9 = cckem_public_ctx(a1);
      v10 = cckem_pubkey_nbytes_ctx(v9);
      cc_clear(v10, (v4 + 8));
    }

    else
    {
      v11 = v16[1];
      v5[150] = v16[0];
      v5[151] = v11;
      v12 = *(a2 + 16);
      v5[152] = *a2;
      v5[153] = v12;
    }
  }

  return pub_internal;
}

uint64_t cckem_xwing_mlkem768x25519_decapsulate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = cckem_public_ctx();
  v7 = cckem_mlkem768();
  v8 = v7[10](a1, a2, v11);
  if (!v8)
  {
    memset(v10, 0, sizeof(v10));
    v8 = cccurve25519_assumes_dit_internal();
    if (v8)
    {
      cc_clear(0x20uLL, v11);
    }

    else
    {
      cckem_xwing_mlkem768x25519_combine(v11, v10, (a2 + 1088), (v6 + 1192), a3);
    }
  }

  return v8;
}

void *ccmode_factory_cfb_decrypt(void *result, void *a2)
{
  *result = ((2 * a2[1] + 14) & 0xFFFFFFFFFFFFFFF0) + ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  result[1] = 1;
  result[2] = ccmode_cfb_init;
  result[3] = ccmode_cfb_decrypt;
  result[4] = a2;
  return result;
}

uint64_t ccmode_cbc_encrypt(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4, char *a5)
{
  if (a3)
  {
    v6 = a3;
    v9 = *a1;
    v10 = *(*a1 + 8);
    for (i = a2; ; i = v12)
    {
      v12 = a5;
      if (v10)
      {
        v13 = i - 1;
        do
        {
          a5[v10 - 1] = v13[v10] ^ *(a4 - 1 + v10);
          --v10;
        }

        while (v10);
      }

      (*(v9 + 24))(a1 + 1, 1, a5, a5);
      v10 = *(v9 + 8);
      if (!--v6)
      {
        break;
      }

      a4 += v10;
      a5 = &v12[v10];
    }

    memcpy(a2, v12, v10);
  }

  return 0;
}

uint64_t ltc_des_ecb_decrypt(uint64_t a1, uint64_t a2, unsigned int *a3, _DWORD *a4)
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
      desfunc(&v12, a1 + 128);
      v10 = bswap32(v13);
      *a4 = bswap32(v12);
      a4[1] = v10;
      a4 += 2;
    }

    while (v6);
  }

  return 0;
}

void *ccaes_cfb8_encrypt_mode()
{
  v0 = ccaes_ecb_encrypt_mode();
  ccmode_factory_cfb8_encrypt(cfb8_aes_encrypt, v0);
  return cfb8_aes_encrypt;
}

uint64_t ccmode_cfb8_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *__src)
{
  v8 = *(a1 + 32);
  *a2 = v8;
  v9 = a2 + 8;
  v10 = *(v8 + 8);
  v11 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (__src)
  {
    memcpy((v9 + v11), __src, v10);
  }

  else
  {
    cc_clear(*(v8 + 8), (v9 + v11));
  }

  v12 = (*(v8 + 16))(v8, v9 + ((2 * *(*a2 + 8) + 14) & 0xFFFFFFFFFFFFFFF0), a3, a4);
  (*(v8 + 24))(v9 + ((2 * *(*a2 + 8) + 14) & 0xFFFFFFFFFFFFFFF0), 1, v9 + v11, v9);
  return v12;
}

uint64_t cche_crt_composer_compose_ws(uint64_t a1, unint64_t *a2, uint64_t a3, void *__dst, uint64_t *__src)
{
  v5 = __src;
  if (*a2 == 1)
  {
    memcpy(__dst, __src, 8 * a3);
    return 0;
  }

  else
  {
    v11 = *cczp_prime((a2 + 2));
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    inited = ccrns_modulus_init_var_time_ws(a1, &v30, v11);
    if (inited)
    {
      v12 = 1;
    }

    else
    {
      v12 = a3 == 0;
    }

    if (!v12)
    {
      v13 = 0;
      v14 = 8 * a3;
      v28 = a3;
      v29 = __dst;
      do
      {
        if (*a2)
        {
          v15 = 0;
          v16 = 0;
          v17 = v5;
          do
          {
            v18 = sizeof_struct_ccpolyzp_po2cyc();
            v19 = &a2[((v18 + 15) / v18 + 6) * v16 + 8];
            v20 = ccpolyzp_po2cyc_centered_to_rem(*v17, *v19);
            v21 = v19[1];
            v22 = v21 * v20;
            v23 = (v21 * v20) >> 64;
            v24 = __CFADD__((v22 * v31) >> 64, v23 * v31);
            v25 = v22 + v30 * ~(v24 + __CFADD__(v22 * *(&v31 + 1), (__PAIR128__(v23, v22) * v31) >> 64) + ((v23 * v31) >> 64) + *(&v31 + 1) * v23 + ((v22 * *(&v31 + 1)) >> 64));
            v26 = v15 - v11 + v25 + ((v25 >> 63) & v30);
            v15 = v26 + ((v26 >> 63) & v11);
            ++v16;
            v17 = (v17 + v14);
          }

          while (v16 < *a2);
        }

        else
        {
          v15 = 0;
        }

        v29[v13++] = ccpolyzp_po2cyc_rem_to_centered(v15, a2[1]);
        ++v5;
      }

      while (v13 != v28);
    }

    return inited;
  }
}

uint64_t cche_crt_compose(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v16 = timingsafe_enable_if_supported();
  v10 = sizeof_struct_ccpolyzp_po2cyc();
  v14[0] = cc_malloc_clear(8 * (a4 + 1) * ((v10 + 15) / v10 + 6) + 72);
  v11 = sizeof_struct_ccpolyzp_po2cyc();
  v14[1] = ((v11 + 15) / v11 + 6) * (a4 + 1) + 9;
  v14[2] = 0;
  v14[3] = cc_ws_alloc;
  v15 = cc_ws_free;
  if (v14[0])
  {
    v12 = cche_crt_compose_ws(v14, a1, a2, a3, a4, a5);
    v15(v14);
  }

  else
  {
    v12 = 4294967283;
  }

  cc_disable_dit_with_sb(&v16);
  return v12;
}

uint64_t ccmode_siv_reset(void *a1)
{
  v4[2] = *MEMORY[0x29EDCA608];
  v2 = *(*a1 + 56);
  if (*(v2 + 8) != 16)
  {
    return 4294967226;
  }

  v4[0] = 0;
  v4[1] = 0;
  cccmac_one_shot_generate_internal(v2, a1[1] >> 1, (a1 + 3), 0x10uLL, v4, 0x10uLL, a1 + 11);
  result = 0;
  a1[2] = 2;
  return result;
}

void *ccsha3_384_di()
{
  if ((MEMORY[0xFFFFFC010] & 0x100000000) != 0)
  {
    return &ccsha3_384_vng_hwassist_di;
  }

  else
  {
    return &ccsha3_384_vng_di;
  }
}

uint64_t fipspost_post_shake(char a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v14[0] = xmmword_299DAF750;
  v14[1] = unk_299DAF760;
  v13[0] = xmmword_299DAF770;
  v13[1] = unk_299DAF780;
  v12[0] = xmmword_299DAF790;
  v12[1] = unk_299DAF7A0;
  v11[0] = xmmword_299DAF7B0;
  v11[1] = unk_299DAF7C0;
  v9 = 0xA3A3A3A3A3A3A3A3;
  *&v1 = 0xA3A3A3A3A3A3A3A3;
  *(&v1 + 1) = 0xA3A3A3A3A3A3A3A3;
  v8[10] = v1;
  v8[11] = v1;
  v8[8] = v1;
  v8[9] = v1;
  v8[6] = v1;
  v8[7] = v1;
  v8[4] = v1;
  v8[5] = v1;
  v8[2] = v1;
  v8[3] = v1;
  v8[0] = v1;
  v8[1] = v1;
  if ((a1 & 0x10) != 0)
  {
    LOBYTE(v14[0]) = 126;
    LOBYTE(v13[0]) = 71;
    LOBYTE(v12[0]) = 18;
    LOBYTE(v11[0]) = -52;
  }

  ccshake128(0, v8, 0x20uLL, v10);
  if (cc_cmp_safe(32, v10, v14))
  {
    v2 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: SHAKE128, 0-bit message failed\n", v2, "fipspost_post_shake", 66);
    v3 = 4294967221;
  }

  else
  {
    v3 = 0;
  }

  ccshake256(0, v8, 0x20uLL, v10);
  if (cc_cmp_safe(32, v10, v13))
  {
    v4 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: SHAKE256, 0-bit message failed\n", v4, "fipspost_post_shake", 72);
    v3 = 4294967221;
  }

  ccshake128(0xC8uLL, v8, 0x20uLL, v10);
  if (cc_cmp_safe(32, v10, v12))
  {
    v5 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: SHAKE128, 1600-bit message failed\n", v5, "fipspost_post_shake", 78);
    v3 = 4294967221;
  }

  ccshake256(0xC8uLL, v8, 0x20uLL, v10);
  if (cc_cmp_safe(32, v10, v11))
  {
    v6 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: SHAKE256, 1600-bit message failed\n", v6, "fipspost_post_shake", 84);
    return 4294967221;
  }

  return v3;
}

uint64_t ccvrf_irtf_ed25519_hash2curve_elligator2(uint64_t a1, uint64_t a2, char *a3, size_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x29EDCA608];
  __src = 4;
  v14 = 1;
  v9 = ccvrf_irtf_ed25519_point_to_string(v18, a2);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v13[-v10];
  ccdigest_init_internal(a1, &v13[-v10]);
  ccdigest_update_internal(a1, v11, 1uLL, &__src);
  ccdigest_update_internal(a1, v11, 1uLL, &v14);
  ccdigest_update_internal(a1, v11, 0x20uLL, v18);
  ccdigest_update_internal(a1, v11, a4, a3);
  (*(a1 + 56))(a1, v11, &v16);
  v17 &= ~0x80u;
  return ge_from_uniform(a5, &v16);
}

uint64_t ccec_mult_blinded_ws(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (**a6)(void, uint64_t, uint64_t *))
{
  v17[1] = *MEMORY[0x29EDCA608];
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

uint64_t ccec_mult_blinded(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(void, uint64_t, uint64_t *))
{
  v16 = timingsafe_enable_if_supported();
  v10 = cc_malloc_clear(184 * *a1);
  v11 = 23 * *a1;
  v14[0] = v10;
  v14[1] = v11;
  v14[2] = 0;
  v14[3] = cc_ws_alloc;
  v15 = cc_ws_free;
  if (v10)
  {
    v12 = ccec_mult_blinded_ws(v14, a1, a2, a3, a4, a5);
    v15(v14);
  }

  else
  {
    v12 = 4294967283;
  }

  cc_disable_dit_with_sb(&v16);
  return v12;
}

uint64_t ccn_cmp(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v8 = timingsafe_enable_if_supported();
  v6 = ccn_cmp_asm(a1, a2, a3);
  cc_disable_dit_with_sb(&v8);
  return v6;
}

uint64_t ccsae_verify_confirmation(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v13 = timingsafe_enable_if_supported();
  v6 = *a1;
  v7 = cc_malloc_clear(8 * **a1);
  v8 = *v6;
  v11[0] = v7;
  v11[1] = v8;
  v11[2] = 0;
  v11[3] = cc_ws_alloc;
  v12 = cc_ws_free;
  if (v7)
  {
    v9 = ccsae_verify_confirmation_ws(v11, a1, a2, a3);
    v12(v11);
  }

  else
  {
    v9 = 4294967283;
  }

  cc_disable_dit_with_sb(&v13);
  return v9;
}

uint64_t ccsae_verify_confirmation_ws(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 24);
  if (v4 != CCSAE_STATE_COMMIT_BOTH && v4 != CCSAE_STATE_CONFIRMATION_GENERATED)
  {
    return 4294967210;
  }

  v10 = **a2;
  v11 = cczp_bitlen(*a2);
  v20 = &v20;
  v12 = (v11 + 7) >> 3;
  v13 = *(a2 + 16);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v21[-v14 - 8];
  v16 = *(a1 + 16);
  v17 = (*(a1 + 24))(a1, v10);
  v18 = ccsae_sizeof_kck_internal(a2);
  cchmac_init_internal(v13, v15, v18, (a2 + 48));
  cchmac_update_internal(v13, v15, 2, a3);
  ccn_write_uint_padded_internal(v10, (a2 + 144 + 16 * **a2), v12, v17);
  cchmac_update_internal(v13, v15, v12, v17);
  ccn_write_uint_padded_internal(v10, (a2 + 144 + 56 * **a2), v12, v17);
  cchmac_update_internal(v13, v15, v12, v17);
  ccn_write_uint_padded_internal(v10, (a2 + 144 + (**a2 << 6)), v12, v17);
  cchmac_update_internal(v13, v15, v12, v17);
  ccn_write_uint_padded_internal(v10, (a2 + 144 + 24 * **a2), v12, v17);
  cchmac_update_internal(v13, v15, v12, v17);
  ccn_write_uint_padded_internal(v10, (a2 + 144 + 40 * **a2), v12, v17);
  cchmac_update_internal(v13, v15, v12, v17);
  ccn_write_uint_padded_internal(v10, (a2 + 144 + 48 * **a2), v12, v17);
  cchmac_update_internal(v13, v15, v12, v17);
  cchmac_final_internal(v13, v15, v21);
  cc_clear(((v13[1] + v13[2] + 19) & 0xFFFFFFFFFFFFFFF8) + v13[1], v15);
  *(a2 + 24) |= CCSAE_STATE_CONFIRMATION_VERIFIED;
  *(a1 + 16) = v16;
  return cc_cmp_safe_internal(*v13, v21, a4);
}

void ccdh_compute_shared_secret_ws(uint64_t a1, void *a2, void *a3, unint64_t *a4, uint64_t a5, unsigned int (**a6)(void, uint64_t, uint64_t *))
{
  v12 = *a2;
  v13 = ccdh_gp_n(*a2);
  if (*a4 >= (cczp_bitlen(v12) + 7) >> 3)
  {
    v14 = *(a1 + 16);
    v15 = (*(a1 + 24))(a1, v13);
    if (!ccdh_check_pub_ws(a1, v12, a3))
    {
      v20 = a5;
      v16 = cczp_bitlen(v12);
      v17 = ccdh_gp_n(*a2);
      ccdh_power_blinded_ws(a1, a6, v12, v15, a3 + 2, v16, &a2[v17 + 2]);
      if (!v18)
      {
        if (ccdh_valid_shared_secret(v13, v15, v12))
        {
          v19 = ccn_write_uint_size_public_value(v13, v15);
          *a4 = v19;
          ccn_write_uint_internal(v13, v15, v19, v20);
        }

        else
        {
          *a4 = 0;
        }
      }
    }

    *(a1 + 16) = v14;
  }
}

uint64_t ccdh_compute_shared_secret(void *a1, void *a2, unint64_t *a3, uint64_t a4, unsigned int (**a5)(void, uint64_t, uint64_t *))
{
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) == 0 || (_ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 5)) & 0x1000000) != 0)
  {
    v15 = 0;
  }

  else
  {
    __asm { MSR             DIT, #1 }

    v15 = 1;
  }

  v25 = v15;
  v16 = *a1;
  v17 = ccdh_gp_n(*a1);
  v18 = CCDH_POWER_BLINDED_WORKSPACE_N(v17);
  v23[0] = cc_malloc_clear(8 * (v18 + v17));
  v19 = ccdh_gp_n(v16);
  v23[1] = CCDH_POWER_BLINDED_WORKSPACE_N(v19) + v19;
  v23[2] = 0;
  v23[3] = cc_ws_alloc;
  v24 = cc_ws_free;
  if (v23[0])
  {
    ccdh_compute_shared_secret_ws(v23, a1, a2, a3, a4, a5);
    v21 = v20;
    v24(v23);
  }

  else
  {
    v21 = 4294967283;
  }

  cc_disable_dit(&v25);
  return v21;
}

BOOL ccn_sub(_BOOL8 a1, void *a2, uint64_t *a3, unint64_t *a4)
{
  v12 = timingsafe_enable_if_supported();
  v10[0] = xmmword_2A201DEE0;
  v10[1] = unk_2A201DEF0;
  v11 = off_2A201DF00;
  v8 = ccn_sub_asm(a1, a2, a3, a4);
  cc_ws_free_null(v10);
  cc_disable_dit_with_sb(&v12);
  return v8;
}

uint64_t ccz_set_bit(void *a1, unint64_t a2, unsigned int a3)
{
  v10 = timingsafe_enable_if_supported();
  if (ccz_n(a1) <= a2 >> 6)
  {
    ccz_set_capacity(a1, (a2 >> 6) + 1);
    v6 = (a2 >> 6) + 1 - ccz_n(a1);
    v7 = a1[3];
    v8 = ccz_n(a1);
    ccn_zero(v6, (v7 + 8 * v8));
    ccz_set_n(a1, (a2 >> 6) + 1);
  }

  ccn_set_bit(a1[3], a2, a3);
  return cc_disable_dit_with_sb(&v10);
}

int8x16_t gcm_init(int8x16_t *a1, int8x16_t *a2, double a3, double a4, double a5, double a6, double a7, int8x16_t a8)
{
  v8 = vqtbl1q_s8(*a2, *qword_299D451C0);
  v9 = veorq_s8(a8, a8);
  v10 = veorq_s8(vandq_s8(vextq_s8(*&qword_299D451C0[2], *&qword_299D451C0[2], 8uLL), vshrq_n_s32(vdupq_laneq_s32(v8, 3), 0x1FuLL)), vorrq_s8(vextq_s8(v9, vshrq_n_u64(v8, 0x3FuLL), 8uLL), vshlq_n_s64(v8, 1uLL)));
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
  v9 = vqtbl1q_s8(*a1, *qword_299D451C0);
  v10 = veorq_s8(a9, a9);
  v11 = veorq_s8(v9, vextq_s8(v9, v9, 8uLL)).u64[0];
  v12 = vmull_high_p64(v9, *a2);
  v13 = vmull_p64(v9.u64[0], a2->i64[0]);
  v14 = veorq_s8(v13, veorq_s8(v12, vmull_p64(veorq_s8(*a2, vextq_s8(*a2, *a2, 8uLL)).u64[0], v11)));
  v15 = veorq_s8(vextq_s8(v10, v14, 8uLL), v13);
  v16 = veorq_s8(vextq_s8(v15, v15, 8uLL), vmull_p64(0xC200000000000000, v15.u64[0]));
  result = vqtbl1q_s8(veorq_s8(veorq_s8(vextq_s8(v14, v10, 8uLL), v12), veorq_s8(vextq_s8(v16, v16, 8uLL), vmull_p64(0xC200000000000000, v16.u64[0]))), *qword_299D451C0);
  *a3 = result;
  return result;
}

int8x16_t gcm_ghash(int8x16_t *a1, uint64x2_t *a2, int8x16_t *a3, uint64_t a4)
{
  v5 = veorq_s8(v4, v4);
  v6 = vqtbl1q_s8(*a1, *qword_299D451C0);
  v7 = a4 < 128;
  for (i = a4 - 128; !v7; i -= 128)
  {
    v9 = vqtbl1q_s8(a3[7], *qword_299D451C0);
    v10 = vmull_p64(a2->i64[0], v9.u64[0]);
    v11 = vmull_high_p64(*a2, v9);
    v12 = vmull_p64(a2[8].u64[0], veorq_s8(v9, vextq_s8(v9, v9, 8uLL)).u64[0]);
    v13 = vqtbl1q_s8(a3[6], *qword_299D451C0);
    v14 = a2[1];
    v15 = veorq_s8(v10, vmull_p64(v14.u64[0], v13.u64[0]));
    v16 = veorq_s8(v11, vmull_high_p64(v14, v13));
    v17 = veorq_s8(v12, vmull_p64(a2[9].u64[0], veorq_s8(v13, vextq_s8(v13, v13, 8uLL)).u64[0]));
    v18 = vqtbl1q_s8(a3[5], *qword_299D451C0);
    v19 = a2[2];
    v20 = veorq_s8(v15, vmull_p64(v19.u64[0], v18.u64[0]));
    v21 = veorq_s8(v16, vmull_high_p64(v19, v18));
    v22 = veorq_s8(v17, vmull_p64(a2[10].u64[0], veorq_s8(v18, vextq_s8(v18, v18, 8uLL)).u64[0]));
    v23 = vqtbl1q_s8(a3[4], *qword_299D451C0);
    v24 = a2[3];
    v25 = veorq_s8(v20, vmull_p64(v24.u64[0], v23.u64[0]));
    v26 = veorq_s8(v21, vmull_high_p64(v24, v23));
    v27 = veorq_s8(v22, vmull_p64(a2[11].u64[0], veorq_s8(v23, vextq_s8(v23, v23, 8uLL)).u64[0]));
    v28 = vqtbl1q_s8(a3[3], *qword_299D451C0);
    v29 = a2[4];
    v30 = veorq_s8(v25, vmull_p64(v29.u64[0], v28.u64[0]));
    v31 = veorq_s8(v26, vmull_high_p64(v29, v28));
    v32 = veorq_s8(v27, vmull_p64(a2[12].u64[0], veorq_s8(v28, vextq_s8(v28, v28, 8uLL)).u64[0]));
    v33 = vqtbl1q_s8(a3[2], *qword_299D451C0);
    v34 = a2[5];
    v35 = veorq_s8(v30, vmull_p64(v34.u64[0], v33.u64[0]));
    v36 = veorq_s8(v31, vmull_high_p64(v34, v33));
    v37 = veorq_s8(v32, vmull_p64(a2[13].u64[0], veorq_s8(v33, vextq_s8(v33, v33, 8uLL)).u64[0]));
    v38 = vqtbl1q_s8(a3[1], *qword_299D451C0);
    v39 = a2[6];
    v40 = veorq_s8(v35, vmull_p64(v39.u64[0], v38.u64[0]));
    v41 = veorq_s8(v36, vmull_high_p64(v39, v38));
    v42 = veorq_s8(v37, vmull_p64(a2[14].u64[0], veorq_s8(v38, vextq_s8(v38, v38, 8uLL)).u64[0]));
    v43 = a2[7];
    v44 = veorq_s8(vqtbl1q_s8(*a3, *qword_299D451C0), v6);
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
    v53 = veorq_s8(v6, vqtbl1q_s8(v52, *qword_299D451C0));
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
      v61 = vqtbl1q_s8(v60, *qword_299D451C0);
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

  result = vqtbl1q_s8(v6, *qword_299D451C0);
  *a1 = result;
  return result;
}

BOOL ccn_abs(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v6 = ccn_sub_ws(0, a1, a2, a3, a4);
  ccn_cond_neg(a1, v6, a2, a2);
  return v6;
}

unint64_t CCPOLYZP_PO2CYC_BASE_CONVERT_MOD_T_DIVIDE_AND_ROUND_Q_LAST_WORKSPACE_N(unsigned int a1, int a2)
{
  v3 = CCPOLYZP_PO2CYC_WORKSPACE_N(a1, a2 - 1);
  v4 = CCPOLYZP_PO2CYC_WORKSPACE_N(a1, 1);
  v5 = CCPOLYZP_PO2CYC_CTX_WORKSPACE_N(a1);
  v6 = CCPOLYZP_PO2CYC_CTX_INIT_WORKSPACE_N(1);
  if (v6 <= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  return v4 + v3 + v5 + v7;
}

uint64_t ccz_add(void *a1, uint64_t a2, uint64_t a3)
{
  v15 = timingsafe_enable_if_supported();
  v6 = ccz_n(a2);
  v7 = ccz_n(a3);
  v8 = ccz_sign(a2);
  if (v8 == ccz_sign(a3))
  {
    v9 = ccz_sign(a2);
    ccz_set_sign(a1, v9);
    if (v6 >= v7)
    {
      v10 = v6 + 1;
      ccz_set_capacity(a1, v6 + 1);
      *(a1[3] + 8 * v6) = ccn_addn(v6, a1[3], *(a2 + 24), v7, *(a3 + 24));
    }

    else
    {
      v10 = v7 + 1;
      ccz_set_capacity(a1, v7 + 1);
      *(a1[3] + 8 * v7) = ccn_addn(v7, a1[3], *(a3 + 24), v6, *(a2 + 24));
    }

    v6 = v10;
  }

  else if ((ccn_cmpn_internal(v6, *(a2 + 24), v7, *(a3 + 24)) & 0x80000000) != 0)
  {
    v12 = ccz_sign(a3);
    ccz_set_sign(a1, v12);
    ccz_set_capacity(a1, v7);
    ccn_subn(v7, a1[3], *(a3 + 24), v6, *(a2 + 24));
    v6 = v7;
  }

  else
  {
    v11 = ccz_sign(a2);
    ccz_set_sign(a1, v11);
    ccz_set_capacity(a1, v6);
    ccn_subn(v6, a1[3], *(a2 + 24), v7, *(a3 + 24));
  }

  v13 = ccn_n(v6, a1[3]);
  ccz_set_n(a1, v13);
  return cc_disable_dit_with_sb(&v15);
}

uint64_t fipspost_post_hmac(char a1)
{
  v23 = *MEMORY[0x29EDCA608];
  v2 = ccsha1_di();
  v3 = ccsha256_di();
  v4 = ccsha512_di();
  v5 = ccsha512_256_di();
  v6 = ccsha3_224_di();
  v7 = ccsha3_256_di();
  v8 = ccsha3_384_di();
  v9 = ccsha3_512_di();
  v10 = 0;
  v11 = 0;
  memset(v22, 0, sizeof(v22));
  if ((a1 & 0x10) == 0)
  {
  }

  v21[0] = v2;
  v21[1] = 50;
  v21[2] = v12;
  v21[3] = 128;
  v21[4] = "\xF0\x6B\xB4\x5B\xD0\x60X'\x82L\xD0\x4D\xA7[hz\x86\xC9\x39\xEF\xAF\xF9\xF1\x32\xDD\xC1\xD7\x04!\b\t\x94=\x94\b\xF2\x4E\x1D\x77Ư\xA6 B\x19\r8U\x0F\xE0\xE4\x22yr\xFC\xB0\x8F.\x0E\xE3\xF8\x2C\xA6\xAB3\x02\xCC\x7B7\xDD\xCF\xFDV\xD0\x41\x04gkC\xC2\x24\x90\x03;т\x82\xF9\x1F?\x9B\x01O\x10A\a\x9A^\b\xDE\xD1\xC7\xE62Aq;yٞ\x10'\x8F\x81\x9C!\xFFQ\ruU\x9B\x85Hn\xDC\x62\x10";
  v21[5] = 20;
  v21[6] = "\x88n\xAEp\xF3\x6B\xD3\x80^\xEB\x12\x74\xB3$\x8F\xCC\xF5\xE1\x5B\x80";
  v21[7] = "sha1";
  v21[8] = v3;
  v21[9] = 50;
  v14 = "\x01secret-key\x13\x13";
  if ((a1 & 0x10) != 0)
  {
    v15 = "\x01\xF3\xD9\x84\x1Cx.\x1D\xC8\x4D_\xBD\x95#h;\x8D)\xD1\xD5\x85-:tR\x0482:-_\x19\xA9\xB1\xA0-%M֭\x84ӛ\x97]\xCE\x60j\xBCe\xBD";
  }

  else
  {
    v15 = "\xF3\xD9\x84\x1Cx.\x1D\xC8\x4D_\xBD\x95#h;\x8D)\xD1\xD5\x85-:tR\x0482:-_\x19\xA9\xB1\xA0-%M֭\x84ӛ\x97]\xCE\x60j\xBCe\xBD";
  }

  v21[10] = v15;
  v21[11] = 128;
  v21[12] = &unk_299DAF7D0;
  v21[13] = 32;
  v21[14] = "\xC1\xCC\xF9\x1E\x8E\xA5\x8A\x16uk\xE8\xE4\x08\xF3\x08\xC9\xE1\x02\xEA\xE3\x54O\xB66\xDB\x18)4\x80\xAE\xD1\xE1";
  v21[15] = "sha256";
  v16 = "\x01secret-key";
  if ((a1 & 0x10) == 0)
  {
  }

  v21[16] = v4;
  v21[17] = 110;
  v21[18] = v13;
  v21[19] = 128;
  if ((a1 & 0x10) == 0)
  {
    v14 = "secret-key\x13\x13";
  }

  v21[20] = "\x94\x14zF\xD6\x7E\xEF\x0B\x5E\x9F\x99$\n\xF4\xD3\x14\xA30MX\x02\xD6\x54\x9Aw\x06T'k\x97\x9B\xA3Cg_\xFC\x88\xEF\x03\x9CE\x1B\x96\xE3\xB1\x58\x9D\xD4\x0E\xEE\x12\x0Eѐ\xAC\xFE\x031aT\xE7\x1A\x2A\xB3\xDD\x3A\x06\xAD\x86\xBDA\xEE\x29\xE0\xF6\xB7\x56\x03ӏ\xC9\xFF\x1C5\x90\xBB\xF2\xD8\x71\xFA֊\x86wi\xF3\x2A\x34\x75B\x19\x0F1iҖ\xC1\x8A@\x1C\xFD\xAC\x9A\rs\xB3\x88~\xAF\x8F\x87\b\xBA\xB3\x8E\xD7\xE0\xC9W\x05\xBFՅK|÷\xC8\xEA\xCA\x32A\x88@\xAE\xDE\x68\xE7\xCD\x62\x1EC\x8FmaX;Ea\xFC\xA5G\x19\x04\xBDy\x89Y\xA3\x90\x86L\x8Ap\xA50i\xDA\x41r\xCA\x34\xC0\xEAIn\x12\x8D\u0378\xC3\x01secret-key\x13\x13";
  v21[21] = 64;
  v21[22] = "W\x05\xBFՅK|÷\xC8\xEA\xCA\x32A\x88@\xAE\xDE\x68\xE7\xCD\x62\x1EC\x8FmaX;Ea\xFC\xA5G\x19\x04\xBDy\x89Y\xA3\x90\x86L\x8Ap\xA50i\xDA\x41r\xCA\x34\xC0\xEAIn\x12\x8D\u0378\xC3\x01secret-key\x13\x13";
  v21[23] = "sha512";
  if ((a1 & 0x10) == 0)
  {
    v16 = "secret-key";
  }

  v21[24] = v5;
  v21[25] = 10;
  if ((a1 & 0x10) != 0)
  {
    v17 = "\x01value to digest";
  }

  else
  {
    v17 = "value to digest";
  }

  v21[26] = v14;
  v21[27] = 15;
  v21[28] = "value to digest";
  v21[29] = 32;
  v21[31] = "sha512/256";
  v21[32] = v6;
  v21[33] = 10;
  v21[34] = v16;
  v21[35] = 15;
  v21[36] = v17;
  v21[37] = 28;
  v21[38] = &unk_299DAF851;
  v21[39] = "sha3_224";
  v21[40] = v7;
  v21[41] = 10;
  v21[42] = v16;
  v21[43] = 15;
  v21[44] = v17;
  v21[45] = 32;
  v21[46] = "\xE6\x5B\x43\x9A֞-\x0F\xE2\xC4\x15KUO\xE9\x96\x2A\x9A\x1E\xCE\x26\x84eB\xB3\xED\x8F\xCB\x16\xF3\x67\xC8\xDE\x41x\xB5\xFA\xF0\x52\xAB\x3E@\x9Fq\x15E\x95\nD\f\x8B\xFFv1\xFA\x0F\xE5\xD6\x1B\xC4\xCA_\xF9\xCE\x14\xE4\x52\x6E]|\x1D_Ъ\x9Dc\x12b~";
  v21[47] = "sha3_256";
  v21[48] = v8;
  v21[49] = 10;
  v21[50] = v16;
  v21[51] = 15;
  v21[52] = v17;
  v21[53] = 48;
  v21[54] = "\xDE\x41x\xB5\xFA\xF0\x52\xAB\x3E@\x9Fq\x15E\x95\nD\f\x8B\xFFv1\xFA\x0F\xE5\xD6\x1B\xC4\xCA_\xF9\xCE\x14\xE4\x52\x6E]|\x1D_Ъ\x9Dc\x12b~";
  v21[55] = "sha3_384";
  v21[56] = v9;
  v21[57] = 10;
  v21[58] = v16;
  v21[59] = 15;
  v21[60] = v17;
  v21[61] = 64;
  v21[62] = "\xEB\x10\xD9e\x80\xBF\x8E\xEE\xE5\x46\r^X7\xF5\x55\x57\x09\x01\x139\xB96\xA6{u7\x7F]\x18\xAE\xDB\xF7\x92\xB5\xA6\xF4\xA8\x53\x7B@\xD5\x5E\xC5\x0C\x8D}[I4\xC3\x04\xCC\xEB\xF6\x15\x26\x4B+v\x16\xB9\xBF\x1A";
  v21[63] = "sha3_512";
  do
  {
    v18 = &v21[v10];
    cchmac(v21[v10], v21[v10 + 1], v21[v10 + 2], v21[v10 + 3], v21[v10 + 4], v22);
    if (cc_cmp_safe(v18[5], v22, v18[6]))
    {
      v19 = mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: digest: %s\n", v19, "fipspost_post_hmac", 235, v18[7]);
      v11 = 4294967221;
    }

    v10 += 8;
  }

  while (v10 != 64);
  return v11;
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

uint64_t ccz_set(uint64_t a1, uint64_t a2)
{
  v9 = timingsafe_enable_if_supported();
  if (a1 != a2)
  {
    v4 = ccz_sign(a2);
    ccz_set_sign(a1, v4);
    v5 = ccz_n(a2);
    ccz_set_capacity(a1, v5);
    v6 = ccz_n(a2);
    ccz_set_n(a1, v6);
    v7 = ccz_n(a2);
    ccn_set(v7, *(a1 + 24), *(a2 + 24));
  }

  return cc_disable_dit_with_sb(&v9);
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

uint64_t ccsae_verify_commitment_with_rejected_groups(uint64_t **a1, uint64_t a2, size_t a3, char *a4)
{
  v15 = timingsafe_enable_if_supported();
  v8 = *a1;
  v9 = cc_malloc_clear(288 * **a1);
  v10 = 36 * *v8;
  v13[0] = v9;
  v13[1] = v10;
  v13[2] = 0;
  v13[3] = cc_ws_alloc;
  v14 = cc_ws_free;
  if (v9)
  {
    v11 = ccsae_verify_commitment_ws(v13, a1, a2, a3, a4);
    v14(v13);
  }

  else
  {
    v11 = 4294967283;
  }

  cc_disable_dit_with_sb(&v15);
  return v11;
}

uint64_t ccsae_verify_commitment_ws(uint64_t a1, uint64_t **a2, uint64_t a3, size_t a4, char *a5)
{
  v31 = *MEMORY[0x29EDCA608];
  if (*(a2 + 24) != CCSAE_STATE_COMMIT_GENERATED)
  {
    return 4294967210;
  }

  v29 = a2[2];
  v27 = a2[1];
  v8 = *a2;
  v9 = **a2;
  v10 = (cczp_bitlen(*a2) + 7) >> 3;
  v28 = *(a1 + 16);
  v22 = (*(a1 + 24))(a1, v9);
  v11 = (*(a1 + 24))(a1, 3 * v9);
  v26 = (*(a1 + 24))(a1, 3 * v9);
  v25 = (*(a1 + 24))(a1, 3 * v9);
  v12 = (*(a1 + 24))(a1, 3 * v9);
  v13 = a2 + 18;
  ccn_read_uint_internal(v9, &a2[2 * **a2 + 18], v10, a3);
  v14 = a3 + v10;
  ccn_read_uint_internal(v9, &a2[7 * **a2 + 18], v10, v14);
  ccn_read_uint_internal(v9, &a2[8 * **a2 + 18], v10, v14 + v10);
  v15 = ccn_n(v9, &a2[2 * **a2 + 18]);
  v16 = 2 * **a2;
  if (v15 == 1 && v13[v16] == 1)
  {
    goto LABEL_19;
  }

  v17 = ccec_validate_scalar(v8, &v13[v16]);
  if (!v17)
  {
    v18 = **a2;
    if (ccn_cmp_public_value(v9, &v13[2 * v18], &v13[3 * v18]) && ccn_cmp_public_value(v9, &v13[7 * v18], &v13[5 * v18]) && ccn_cmp_public_value(v9, &v13[8 * v18], &v13[6 * v18]))
    {
      v17 = ccec_validate_point_and_projectify_ws(a1, v8, v26, &v13[7 * v18]);
      if (!v17)
      {
        v17 = ccec_projectify_ws(a1, v8);
        if (!v17)
        {
          v17 = ccec_mult_blinded_ws(a1, v8, v25, &v13[2 * **a2], v11, v27);
          if (!v17)
          {
            ccec_full_add_ws(a1, v8);
            v17 = ccec_mult_blinded_ws(a1, v8, v12, &v13[4 * **a2], v11, v27);
            if (!v17)
            {
              v17 = ccec_affinify_ws(a1, v8);
              if (!v17)
              {
                v19 = v29;
                ccsae_generate_keyseed_ws(a1, v8, v29, v12, a4, a5, v30);
                cczp_add_ws(a1, &v8[5 * v9 + 4]);
                v20 = ccsae_gen_keys_ws(a1, a2, v30, v22);
                if (!v20)
                {
                  *(a2 + 24) |= CCSAE_STATE_COMMIT_VERIFIED;
                }

                goto LABEL_15;
              }
            }
          }
        }
      }

      goto LABEL_18;
    }

LABEL_19:
    v20 = 4294967289;
    goto LABEL_20;
  }

LABEL_18:
  v20 = v17;
LABEL_20:
  v19 = v29;
LABEL_15:
  cc_clear(*v19, v30);
  *(a1 + 16) = v28;
  return v20;
}

uint64_t ccsae_verify_commitment(uint64_t **a1, uint64_t a2)
{
  v11 = timingsafe_enable_if_supported();
  v4 = *a1;
  v5 = cc_malloc_clear(288 * **a1);
  v6 = 36 * *v4;
  v9[0] = v5;
  v9[1] = v6;
  v9[2] = 0;
  v9[3] = cc_ws_alloc;
  v10 = cc_ws_free;
  if (v5)
  {
    v7 = ccsae_verify_commitment_ws(v9, a1, a2, 0, 0);
    v10(v9);
  }

  else
  {
    v7 = 4294967283;
  }

  cc_disable_dit_with_sb(&v11);
  return v7;
}

uint64_t ccsae_generate_keyseed_ws(uint64_t a1, uint64_t *a2, size_t *a3, uint64_t *a4, size_t a5, char *a6, uint64_t a7)
{
  v23 = *MEMORY[0x29EDCA608];
  v13 = *a2;
  v14 = cczp_bitlen(a2);
  memset(v22, 0, sizeof(v22));
  if (!a5 || !a6)
  {
    a5 = *a3;
    a6 = v22;
  }

  v15 = (v14 + 7) >> 3;
  v16 = *(a1 + 16);
  v17 = (*(a1 + 24))(a1, v13);
  v18 = ccn_write_uint_padded_internal(v13, a4, v15, v17);
  MEMORY[0x2A1C7C4A8](v18);
  v20 = (v22 - v19);
  cchmac_init_internal(a3, (v22 - v19), a5, a6);
  cchmac_update_internal(a3, v20, v15, v17);
  cchmac_final_internal(a3, v20, a7);
  result = cc_clear(((a3[1] + a3[2] + 19) & 0xFFFFFFFFFFFFFFF8) + a3[1], v20);
  *(a1 + 16) = v16;
  return result;
}

uint64_t ccchacha20_init(uint64_t a1, _DWORD *a2)
{
  v5 = timingsafe_enable_if_supported();
  *a1 = xmmword_299DAF880;
  *(a1 + 16) = *a2;
  *(a1 + 20) = a2[1];
  *(a1 + 24) = a2[2];
  *(a1 + 28) = a2[3];
  *(a1 + 32) = a2[4];
  *(a1 + 36) = a2[5];
  *(a1 + 40) = a2[6];
  *(a1 + 44) = a2[7];
  *(a1 + 128) = 0;
  cc_disable_dit_with_sb(&v5);
  return 0;
}

uint64_t ccchacha20_reset(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 128) = 0;
  return 0;
}

uint64_t ccchacha20_setnonce(_DWORD *a1, _DWORD *a2)
{
  v5 = timingsafe_enable_if_supported();
  a1[13] = *a2;
  a1[14] = a2[1];
  a1[15] = a2[2];
  cc_disable_dit_with_sb(&v5);
  return 0;
}

uint64_t ccchacha20_setcounter(uint64_t a1, int a2)
{
  v5 = timingsafe_enable_if_supported();
  *(a1 + 48) = a2;
  cc_disable_dit_with_sb(&v5);
  return 0;
}

uint64_t ccchacha20_update(int32x4_t *a1, unint64_t a2, int8x16_t *a3, int8x16_t *a4)
{
  v9 = timingsafe_enable_if_supported();
  ccchacha20_update_internal(a1, a2, a3, a4);
  cc_disable_dit_with_sb(&v9);
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

uint64_t ccchacha20_final(void *a1)
{
  v3 = timingsafe_enable_if_supported();
  cc_clear(0x88uLL, a1);
  cc_disable_dit_with_sb(&v3);
  return 0;
}

uint64_t ccchacha20(int32x4_t *a1, uint64_t *a2, int a3, unint64_t a4, int8x16_t *a5, int8x16_t *a6)
{
  v25 = *MEMORY[0x29EDCA608];
  v15 = timingsafe_enable_if_supported();
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = *a1;
  v13 = a1[1];
  v16[0] = xmmword_299DAF880;
  v16[1] = v12;
  v16[2] = v13;
  v24 = 0;
  v18 = *a2;
  v19 = *(a2 + 2);
  v17 = a3;
  _ccchacha20_xor(v16, a4, a6, a5);
  cc_clear(0x88uLL, v16);
  cc_disable_dit_with_sb(&v15);
  return 0;
}

int32x4_t *_ccchacha20_xor(int32x4_t *result, unint64_t a2, int8x16_t *a3, int8x16_t *a4)
{
  v201 = *MEMORY[0x29EDCA608];
  v5 = result[1];
  v4 = result[2];
  v6 = result[3];
  v7 = a2 / 0xC0;
  if (a2 >= 0xC0)
  {
    v8 = 0;
    do
    {
      v9 = vaddq_s32(v6, xmmword_299DAF890);
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
      v26 = xmmword_299DAF880;
      v27 = v5;
      v28 = v4;
      v29 = v6;
      v30 = xmmword_299DAF880;
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
      *a3 = veorq_s8(*a4, vaddq_s32(v26, xmmword_299DAF880));
      a3[1] = veorq_s8(a4[1], vaddq_s32(v27, v5));
      a3[2] = veorq_s8(a4[2], vaddq_s32(v28, v4));
      a3[3] = veorq_s8(a4[3], vaddq_s32(v29, v6));
      a3[4] = veorq_s8(a4[4], vaddq_s32(v30, xmmword_299DAF880));
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
      v6 = vaddq_s32(v6, xmmword_299DAF8A0);
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
    v134 = &t_im[556];
    do
    {
      v136 = -10;
      v137 = xmmword_299DAF880;
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
      *a3 = veorq_s8(*a4, vaddq_s32(v137, xmmword_299DAF880));
      a3[1] = veorq_s8(a4[1], vaddq_s32(v138, v5));
      a3[2] = veorq_s8(a4[2], vaddq_s32(v139, v4));
      a3[3] = veorq_s8(a4[3], vaddq_s32(v140, v6));
      v6 = vaddq_s32(v6, xmmword_299DAF890);
      a4 += 4;
      a3 += 4;
      --v135;
    }

    while (v135);
  }

  else
  {
    v134 = (t_im + 2224);
  }

  v163 = a2 & 0x3F;
  if ((a2 & 0x3F) != 0)
  {
    v164 = v134[136];
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
      v200[0] = vaddq_s32(v164, v134[136]);
    }

    else
    {
      *a3 = veorq_s8(*a4, vaddq_s32(v164, v134[136]));
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

uint64_t ccpoly1305_init(uint64_t a1, uint64_t a2)
{
  v5 = timingsafe_enable_if_supported();
  ccpoly1305_init_internal(a1, a2);
  cc_disable_dit_with_sb(&v5);
  return 0;
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

uint64_t ccpoly1305_update(unsigned int *a1, unint64_t a2, unsigned int *a3)
{
  v7 = timingsafe_enable_if_supported();
  ccpoly1305_update_internal(a1, a2, a3);
  cc_disable_dit_with_sb(&v7);
  return 0;
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

uint64_t ccpoly1305_final(uint64_t a1, uint64_t a2)
{
  v5 = timingsafe_enable_if_supported();
  ccpoly1305_final_internal(a1, a2);
  cc_disable_dit_with_sb(&v5);
  return 0;
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

uint64_t ccpoly1305(uint64_t a1, unint64_t a2, unsigned int *a3, uint64_t a4)
{
  v11 = *MEMORY[0x29EDCA608];
  v9 = timingsafe_enable_if_supported();
  memset(v10, 0, sizeof(v10));
  ccpoly1305_init_internal(v10, a1);
  ccpoly1305_update_internal(v10, a2, a3);
  ccpoly1305_final_internal(v10, a4);
  cc_disable_dit_with_sb(&v9);
  return 0;
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
  *a1 = xmmword_299DAF880;
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

uint64_t ccchacha20poly1305_reset(uint64_t a1, uint64_t a2)
{
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  *(a2 + 248) = 1;
  *(a2 + 48) = 0;
  *(a2 + 128) = 0;
  return 0;
}

uint64_t ccchacha20poly1305_setnonce(uint64_t a1, int32x4_t *a2, __int32 *a3)
{
  v7 = timingsafe_enable_if_supported();
  v5 = ccchacha20poly1305_setnonce_internal(a2, a3);
  cc_disable_dit_with_sb(&v7);
  return v5;
}

uint64_t ccchacha20poly1305_incnonce()
{
  v1 = timingsafe_enable_if_supported();
  cc_disable_dit_with_sb(&v1);
  return 1;
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
  v6[1] = *MEMORY[0x29EDCA608];
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

uint64_t ccchacha20poly1305_verify(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = timingsafe_enable_if_supported();
  v5 = ccchacha20poly1305_verify_internal(a2, a3);
  cc_disable_dit_with_sb(&v7);
  return v5;
}

uint64_t ccchacha20poly1305_verify_internal(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x29EDCA608];
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

unsigned int *_ccpoly1305_update(unsigned int *result, unint64_t a2, unsigned int *a3)
{
  v4 = result;
  v38 = *MEMORY[0x29EDCA608];
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

uint64_t OUTLINED_FUNCTION_3_5()
{
  result = 0;
  *(v0 + 240) += v1;
  return result;
}

int32x4_t *OUTLINED_FUNCTION_5_2()
{

  return ccchacha20_update_internal(v0, v1, v3, v2);
}

uint64_t ccvrf_irtf_ed25519_derive_scalar_internal(uint64_t a1, char *a2, void *a3, void *a4)
{
  v10 = *MEMORY[0x29EDCA608];
  ccdigest_internal(*(a1 + 40), *(a1 + 32), a2, __src);
  __src[0] &= 0xF8u;
  v9 = v9 & 0x3F | 0x40;
  memcpy(a3, __src, *(a1 + 32));
  memcpy(a4, &__src[*(a1 + 32)], *(a1 + 32));
  cc_clear(0x40uLL, __src);
  return 0;
}

uint64_t ccvrf_irtf_ed25519_derive_public_key_internal(uint64_t a1, char *a2, _DWORD *a3)
{
  v7 = *MEMORY[0x29EDCA608];
  ccdigest_internal(*(a1 + 40), *(a1 + 32), a2, &v5);
  v5.i8[0] &= 0xF8u;
  v6 = v6 & 0x3F | 0x40;
  ge_scalarmult_base(a3, &v5);
  cc_clear(0x40uLL, &v5);
  return 0;
}

uint64_t ccvrf_irtf_ed25519_derive_public_key(uint64_t a1, char *a2, uint64_t a3)
{
  memset(v5, 0, sizeof(v5));
  ccvrf_irtf_ed25519_derive_public_key_internal(a1, a2, v5);
  ge_p3_tobytes(a3, v5);
  return 0;
}

uint64_t ccvrf_derive_public_key(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  if (ccvrf_sizeof_secret_key(a1) == a2 && ccvrf_sizeof_public_key(a1) == a4)
  {
    v10 = (*(a1 + 56))(a1, a3, a5);
  }

  else
  {
    v10 = 4294967289;
  }

  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t ccsae_generate_confirmation(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v13 = timingsafe_enable_if_supported();
  v6 = *a1;
  v7 = cc_malloc_clear(8 * **a1);
  v8 = *v6;
  v11[0] = v7;
  v11[1] = v8;
  v11[2] = 0;
  v11[3] = cc_ws_alloc;
  v12 = cc_ws_free;
  if (v7)
  {
    confirmation_ws = ccsae_generate_confirmation_ws(v11, a1, a2, a3);
    v12(v11);
  }

  else
  {
    confirmation_ws = 4294967283;
  }

  cc_disable_dit_with_sb(&v13);
  return confirmation_ws;
}

uint64_t ccsae_generate_confirmation_ws(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = *MEMORY[0x29EDCA608];
  if (*(a2 + 24) < CCSAE_STATE_COMMIT_BOTH)
  {
    return 4294967210;
  }

  v9 = **a2;
  v10 = cczp_bitlen(*a2);
  v18[0] = v18;
  v11 = (v10 + 7) >> 3;
  v12 = *(a2 + 16);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = (v18 - v13);
  v15 = *(a1 + 16);
  v16 = (*(a1 + 24))(a1, v9);
  v17 = ccsae_sizeof_kck_internal(a2);
  cchmac_init_internal(v12, v14, v17, (a2 + 48));
  cchmac_update_internal(v12, v14, 2, a3);
  ccn_write_uint_padded_internal(v9, (a2 + 144 + 24 * **a2), v11, v16);
  cchmac_update_internal(v12, v14, v11, v16);
  ccn_write_uint_padded_internal(v9, (a2 + 144 + 40 * **a2), v11, v16);
  cchmac_update_internal(v12, v14, v11, v16);
  ccn_write_uint_padded_internal(v9, (a2 + 144 + 48 * **a2), v11, v16);
  cchmac_update_internal(v12, v14, v11, v16);
  ccn_write_uint_padded_internal(v9, (a2 + 144 + 16 * **a2), v11, v16);
  cchmac_update_internal(v12, v14, v11, v16);
  ccn_write_uint_padded_internal(v9, (a2 + 144 + 56 * **a2), v11, v16);
  cchmac_update_internal(v12, v14, v11, v16);
  ccn_write_uint_padded_internal(v9, (a2 + 144 + (**a2 << 6)), v11, v16);
  cchmac_update_internal(v12, v14, v11, v16);
  cchmac_final_internal(v12, v14, a4);
  cc_clear(((*(v12 + 8) + *(v12 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + *(v12 + 8), v14);
  *(a2 + 24) |= CCSAE_STATE_CONFIRMATION_GENERATED;
  *(a1 + 16) = v15;
  return 0;
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

uint64_t fipspost_post_integrity(char a1, char *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (fipspost_get_hmac(a2, v10, 0))
  {
    v3 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: could not create the hash\n", v3, "fipspost_post_integrity", 27);
    v4 = 4294967224;
  }

  else
  {
    if ((a1 & 0x10) != 0)
    {
      LOBYTE(v10[0]) ^= 1u;
    }

    if (cc_cmp_safe(32, v10, &fipspost_precalc_hmac))
    {
      v5 = mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: MAC generated: ", v5, "fipspost_post_integrity", 37);
      for (i = 0; i != 32; ++i)
      {
        printf("%02X", *(v10 + i));
      }

      putchar(10);
      v7 = mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d:   In variable: ", v7, "fipspost_post_integrity", 38);
      for (j = 0; j != 32; ++j)
      {
        printf("%02X", *(&fipspost_precalc_hmac + j));
      }

      putchar(10);
      v4 = 4294967222;
    }

    else
    {
      v4 = 0;
    }
  }

  cc_clear(0x20uLL, v10);
  return v4;
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

void cc_ws_free(uint64_t a1)
{
  cc_try_abort_if (*(a1 + 16) > *(a1 + 8));
  cc_clear(8 * *(a1 + 8), *a1);
  free(*a1);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
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

void *eay_RC4_set_key(void *result, uint64_t a2, uint64_t a3)
{
  v3 = xmmword_299DAF900;
  v4 = result + 1;
  v5 = 1;
  v6.i64[0] = 0x400000004;
  v6.i64[1] = 0x400000004;
  do
  {
    *&result[v5] = v3;
    v3 = vaddq_s32(v3, v6);
    v5 += 2;
  }

  while (v5 != 129);
  v7 = 0;
  v8 = 0;
  *result = 0;
  v9 = result + 3;
  v10 = -4;
  do
  {
    v11 = *(v9 - 1);
    v12 = v11 + v8 + *(a3 + v7);
    if (v7 + 1 == a2)
    {
      v13 = 0;
    }

    else
    {
      v13 = v7 + 1;
    }

    *(v9 - 1) = *(v4 + v12);
    *(v4 + v12) = v11;
    v14 = *v9;
    v15 = *v9 + v12 + *(a3 + v13);
    if (v13 + 1 == a2)
    {
      v16 = 0;
    }

    else
    {
      v16 = v13 + 1;
    }

    *v9 = *(v4 + v15);
    *(v4 + v15) = v14;
    v17 = v9[1];
    v18 = v17 + v15 + *(a3 + v16);
    if (v16 + 1 == a2)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 + 1;
    }

    v9[1] = *(v4 + v18);
    *(v4 + v18) = v17;
    v20 = v9[2];
    v21 = *(a3 + v19) + v20 + v18;
    v8 = v21;
    if (v19 + 1 == a2)
    {
      v7 = 0;
    }

    else
    {
      v7 = v19 + 1;
    }

    v9[2] = *(v4 + v21);
    *(v4 + v21) = v20;
    v10 += 4;
    v9 += 4;
  }

  while (v10 < 0xFC);
  return result;
}

int *eay_RC4(int *result, unint64_t a2, char *a3, _BYTE *a4)
{
  v4 = *result;
  v5 = result[1];
  v6 = result + 2;
  v7 = a2 >> 3;
  if ((a2 >> 3))
  {
    do
    {
      v8 = v6[(v4 + 1)];
      v9 = v8 + v5;
      v10 = v6[v9];
      v6[(v4 + 1)] = v10;
      v6[v9] = v8;
      *a4 = *a3 ^ v6[(v10 + v8)];
      v11 = v6[(v4 + 2)];
      v12 = v11 + v9;
      v13 = v6[v12];
      v6[(v4 + 2)] = v13;
      v6[v12] = v11;
      a4[1] = a3[1] ^ v6[(v13 + v11)];
      v14 = v6[(v4 + 3)];
      v15 = v14 + v12;
      v16 = v6[v15];
      v6[(v4 + 3)] = v16;
      v6[v15] = v14;
      a4[2] = a3[2] ^ v6[(v16 + v14)];
      v17 = v6[(v4 + 4)];
      v18 = v17 + v15;
      v19 = v6[v18];
      v6[(v4 + 4)] = v19;
      v6[v18] = v17;
      a4[3] = a3[3] ^ v6[(v19 + v17)];
      v20 = v6[(v4 + 5)];
      v21 = v20 + v18;
      v22 = v6[v21];
      v6[(v4 + 5)] = v22;
      v6[v21] = v20;
      a4[4] = a3[4] ^ v6[(v22 + v20)];
      v23 = v6[(v4 + 6)];
      v24 = v23 + v21;
      v25 = v6[v24];
      v6[(v4 + 6)] = v25;
      v6[v24] = v23;
      a4[5] = a3[5] ^ v6[(v25 + v23)];
      v26 = v6[(v4 + 7)];
      v27 = v26 + v24;
      v28 = v6[v27];
      v6[(v4 + 7)] = v28;
      v6[v27] = v26;
      a4[6] = a3[6] ^ v6[(v28 + v26)];
      v4 = (v4 + 8);
      v29 = v6[v4];
      v5 = (v29 + v27);
      v30 = v6[v5];
      v6[v4] = v30;
      v6[v5] = v29;
      v31 = v6[(v30 + v29)];
      v32 = a3 + 8;
      a4[7] = a3[7] ^ v31;
      a4 += 8;
      a3 += 8;
      LODWORD(v7) = v7 - 1;
    }

    while (v7);
    a3 = v32;
  }

  v33 = a2 & 7;
  if ((a2 & 7) != 0)
  {
    do
    {
      v4 = (v4 + 1);
      v34 = v6[v4];
      v5 = (v34 + v5);
      v35 = v6[v5];
      v6[v4] = v35;
      v6[v5] = v34;
      v36 = *a3++;
      *a4++ = v36 ^ v6[(v35 + v34)];
      --v33;
    }

    while (v33);
  }

  *result = v4;
  result[1] = v5;
  return result;
}

uint64_t cccfb8_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = (*(a1 + 16))(a1, a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t cccfb8_update(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = (*(a1 + 24))(a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t cccfb8_one_shot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = *MEMORY[0x29EDCA608];
  v14 = timingsafe_enable_if_supported();
  v20 = v14;
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v19[-v15];
  v17 = (*(a1 + 16))(a1, &v19[-v15], a2, a3, a4);
  if (!v17)
  {
    v17 = (*(a1 + 24))(v16, a5, a6, a7);
  }

  cc_clear(*a1, v16);
  cc_disable_dit_with_sb(&v20);
  return v17;
}

uint64_t cclr_permute(uint64_t a1, rsize_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v35 = a5;
  *(&v42[1] + 6) = *MEMORY[0x29EDCA608];
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
  v36 = 0;
  v38 = 0u;
  v39 = 0u;
  v11 = v6 >> 1;
  v37 = ((v6 >> 1) + 7) >> 3;
  v12 = (v6 >> 1) & 7;
  LOBYTE(v38) = -1 << v12;
  __memcpy_chk();
  v13 = v6 + 1;
  v34 = v6 >> 4;
  *(&v36 + v37 - 1) &= v38;
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

      v23 = &v36 + 3 * v21;
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
  v27 = v37;
  a3[v37 - 1] = 0;
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

  memcpy(a3, &v36, v27 - 1);
  a3[v27 - 1] |= *(&v36 + v27 - 1);
  if (!v10)
  {
    goto LABEL_27;
  }

  v26 = 0;
LABEL_28:
  cc_clear(0x30uLL, &v36);
  cc_clear(0x10uLL, v41);
  cc_clear(0x10uLL, v40);
  return v26;
}

uint64_t OUTLINED_FUNCTION_0_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{

  return cclr_permute(v15, v14, v13, v12, &a12);
}

unint64_t ccspake_sizeof_w(uint64_t a1)
{
  v2 = (*(a1 + 8))();
  v3 = (*(a1 + 8))();
  v4 = cczp_bitlen(v2 + 40 * *v3 + 32);
  if (*a1)
  {
    return (v4 + 7) >> 3;
  }

  else
  {
    return ((v4 + 7) >> 3) + 8;
  }
}

uint64_t ccspake_reduce_w(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char *a5)
{
  v19 = timingsafe_enable_if_supported();
  v10 = (*(a1 + 8))();
  v11 = *v10;
  v12 = sizeof_struct_ccpolyzp_po2cyc();
  v17[0] = cc_malloc_clear(8 * ((v12 + 127) / v12 - v11 + 8 * v11) + 24);
  v13 = *v10;
  v14 = sizeof_struct_ccpolyzp_po2cyc();
  v17[1] = (v14 + 127) / v14 - v13 + 8 * v13 + 3;
  v17[2] = 0;
  v17[3] = cc_ws_alloc;
  v18 = cc_ws_free;
  if (v17[0])
  {
    v15 = ccspake_reduce_w_ws(v17, a1, a2, a3, a4, a5, 0);
    v18(v17);
  }

  else
  {
    v15 = 4294967283;
  }

  cc_disable_dit_with_sb(&v19);
  return v15;
}

uint64_t ccspake_reduce_w_ws(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, char *a6, int a7)
{
  if (!*a2)
  {
    return 4294967289;
  }

  v14 = (*(a2 + 8))();
  v15 = (*(a2 + 8))();
  v16 = (cczp_bitlen(v14 + 40 * *v15 + 32) + 7) >> 3;
  if (!*a2)
  {
    v16 += 8;
  }

  if (v16 != a5)
  {
    return 4294967289;
  }

  v17 = (*(a2 + 8))();
  v18 = (*(a2 + 8))();
  v19 = (cczp_bitlen(v17 + 40 * *v18 + 32) + 7) >> 3;
  if (!*a2)
  {
    v19 += 8;
  }

  if (v19 + 8 > a3)
  {
    return 4294967289;
  }

  v27 = a6;
  v21 = (*(a2 + 8))();
  v22 = *v21;
  v28 = *(a1 + 16);
  v23 = (*(a1 + 24))(a1, *v21);
  v24 = (*(a1 + 24))(a1, 2 * v22);
  if (!a7)
  {
    result = ccec_generate_scalar_fips_extrabits_ws(a1, v21, a3, a4, v23);
    if (result)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v25 = v24;
  result = ccn_read_uint_internal(2 * v22, v24, a3, a4);
  if (!result)
  {
    v26 = cczp_prime(&v21[5 * *v21 + 4]);
    ccn_divmod_ws(a1, 2 * v22, v25, 0, 0, v22, v23, v26);
    if (!ccn_n(v22, v23))
    {
      result = 4294967289;
      goto LABEL_16;
    }

LABEL_15:
    ccn_write_uint_padded_ct_internal(v22, v23, a5, v27);
    result = 0;
  }

LABEL_16:
  *(a1 + 16) = v28;
  return result;
}

uint64_t ccspake_reduce_w_RFC9383(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char *a5)
{
  v19 = timingsafe_enable_if_supported();
  v10 = (*(a1 + 8))();
  v11 = *v10;
  v12 = sizeof_struct_ccpolyzp_po2cyc();
  v17[0] = cc_malloc_clear(8 * ((v12 + 127) / v12 - v11 + 8 * v11) + 24);
  v13 = *v10;
  v14 = sizeof_struct_ccpolyzp_po2cyc();
  v17[1] = (v14 + 127) / v14 - v13 + 8 * v13 + 3;
  v17[2] = 0;
  v17[3] = cc_ws_alloc;
  v18 = cc_ws_free;
  if (v17[0])
  {
    v15 = ccspake_reduce_w_ws(v17, a1, a2, a3, a4, a5, 1);
    v18(v17);
  }

  else
  {
    v15 = 4294967283;
  }

  cc_disable_dit_with_sb(&v19);
  return v15;
}

uint64_t ccspake_generate_L(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t (**a6)(void, uint64_t, uint64_t *))
{
  v44 = timingsafe_enable_if_supported();
  v12 = (*(a1 + 8))();
  v13 = *v12;
  v14 = sizeof_struct_cche_galois_key();
  v15 = sizeof_struct_ccpolyzp_po2cyc();
  v40[0] = cc_malloc_clear(8 * ((v14 + v15 + 4 * v13 * v15 - 1) / v15 + 50 * v13));
  v16 = *v12;
  v17 = sizeof_struct_cche_galois_key();
  v18 = sizeof_struct_ccpolyzp_po2cyc();
  v40[1] = (v17 + v18 + 4 * v16 * v18 - 1) / v18 + 50 * v16;
  v41 = 0;
  v42 = cc_ws_alloc;
  v43 = cc_ws_free;
  if (!v40[0])
  {
    v38 = 4294967283;
    goto LABEL_15;
  }

  v21 = (*(a1 + 8))(v18, v19, v20);
  v24 = (*(a1 + 8))(v21, v22, v23);
  v25 = cczp_bitlen(v21 + 40 * *v24 + 32);
  if (*a1)
  {
    v28 = (v25 + 7) >> 3;
  }

  else
  {
    v28 = ((v25 + 7) >> 3) + 8;
  }

  if (v28 != a2 || (v29 = (*(a1 + 8))(v25, v26, v27), v30 = cczp_bitlen(v29), (((v30 + 7) >> 2) | 1) != a4))
  {
    v38 = 4294967289;
    cc_ws_free(v40);
    goto LABEL_15;
  }

  v33 = (*(a1 + 8))(v30, v31, v32);
  v34 = *v33;
  v35 = cc_ws_alloc(v40, *v33);
  v36 = v42(v40, (4 * (v34 & 0x7FFFFFFFFFFFFFFLL)) | 2);
  *v36 = v33;
  if (*a1)
  {
    uint_internal = ccn_read_uint_internal(v34, v35, a2, a3);
    if (uint_internal)
    {
      goto LABEL_11;
    }

    uint_internal = ccec_make_pub_from_priv_ws(v40, v33, a6, v35, 0, v36);
    if (uint_internal)
    {
      goto LABEL_11;
    }
  }

  else
  {
    uint_internal = ccec_generate_key_deterministic_ws(v40, v33, a2, a3, a6, 1, v36);
    if (uint_internal)
    {
      goto LABEL_11;
    }
  }

  uint_internal = ccec_export_pub(v36, a5);
LABEL_11:
  v38 = uint_internal;
  v41 = 0;
  v43(v40);
LABEL_15:
  cc_disable_dit_with_sb(&v44);
  return v38;
}

uint64_t ccspake_cmp_pub_key(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 2;
  v4 = **a1;
  v5 = ccn_cmp_public_value(v4, a2, a1 + 2);
  return ccn_cmp_public_value(v4, a2 + 8 * v4, &v3[v4]) | v5;
}

void *ccspake_store_pub_key(uint64_t **a1, char *a2)
{
  v4 = **a1;
  v5 = a1 + 2;
  ccn_set(v4, a2, a1 + 2);
  v6 = &v5[**a1];

  return ccn_set(v4, &a2[8 * v4], v6);
}

uint64_t ccspake_import_pub_ws(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = ccec_import_pub_ws();
  *(a1 + 16) = v2;
  return result;
}

uint64_t *ccaes_gcm_encrypt_mode()
{
  v0 = 5 * ((*(ccaes_ecb_encrypt_mode() + 1) + 7) & 0xFFFFFFFFFFFFFFF8);
  v1 = v0 + ((*ccaes_ecb_encrypt_mode() + 7) & 0xFFFFFFFFFFFFFFF8) + 384;
  v2 = ccaes_ecb_encrypt_mode();
  gcm_encrypt = v1;
  qword_2A14EE8C0 = 4073947;
  qword_2A14EE8C8 = 1;
  unk_2A14EE8D0 = ccmode_gcm_init;
  qword_2A14EE8D8 = ccmode_gcm_set_iv;
  qword_2A14EE8E0 = ccmode_gcm_aad;
  qword_2A14EE8E8 = ccaes_vng_gcm_encrypt;
  qword_2A14EE8F0 = ccmode_gcm_finalize;
  qword_2A14EE8F8 = ccmode_gcm_reset;
  unk_2A14EE900 = v2;
  return &gcm_encrypt;
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

uint64_t ccecies_encrypt_gcm_composite(uint64_t **a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v30 = timingsafe_enable_if_supported();
  v18 = *a1;
  v19 = **a1;
  v20 = sizeof_struct_cche_galois_key();
  v21 = sizeof_struct_ccpolyzp_po2cyc();
  v28[0] = cc_malloc_clear((v19 << 8) + 16 * ((v20 + v21 + 4 * v19 * v21 - 1) / v21));
  v22 = *v18;
  v23 = sizeof_struct_cche_galois_key();
  v24 = sizeof_struct_ccpolyzp_po2cyc();
  v28[1] = 32 * v22 + 2 * ((v23 + v24 + 4 * v22 * v24 - 1) / v24);
  v28[2] = 0;
  v28[3] = cc_ws_alloc;
  v29 = cc_ws_free;
  if (v28[0])
  {
    v25 = ccecies_encrypt_gcm_composite_ws(v28, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
    v29(v28);
  }

  else
  {
    v25 = 4294967283;
  }

  cc_disable_dit_with_sb(&v30);
  return v25;
}

uint64_t ccecies_encrypt_gcm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, rsize_t *a9, char *a10)
{
  v34 = timingsafe_enable_if_supported();
  v17 = *a1;
  v18 = **a1;
  v19 = sizeof_struct_cche_galois_key();
  v20 = sizeof_struct_ccpolyzp_po2cyc();
  v32[0] = cc_malloc_clear((v18 << 8) + 16 * ((v19 + v20 + 4 * v18 * v20 - 1) / v20));
  v21 = *v17;
  v22 = sizeof_struct_cche_galois_key();
  v23 = sizeof_struct_ccpolyzp_po2cyc();
  v32[1] = 32 * v21 + 2 * ((v22 + v23 + 4 * v21 * v23 - 1) / v23);
  v32[2] = 0;
  v32[3] = cc_ws_alloc;
  v33 = cc_ws_free;
  if (!v32[0])
  {
    v27 = 4294967283;
    goto LABEL_6;
  }

  v30 = a4;
  v24 = ccecies_pub_key_size(a1, a2);
  v25 = ccecies_encrypt_gcm_ciphertext_size(a1, a2, a3);
  if (v25 > *a9)
  {
    v28 = cc_ws_free;
    v27 = 4294967289;
    goto LABEL_8;
  }

  v26 = v25;
  v27 = ccecies_encrypt_gcm_composite_ws(v32, a1, a2, a10, &a10[v24], &a10[v24 + a3], a3, v30, a5, a6, a7, a8);
  v28 = v33;
  if (v27)
  {
LABEL_8:
    v28(v32);
    cc_clear(*a9, a10);
    goto LABEL_6;
  }

  *a9 = v26;
  v28(v32);
LABEL_6:
  cc_disable_dit_with_sb(&v34);
  return v27;
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

uint64_t ccz_addi(void *a1, uint64_t a2, unsigned int a3)
{
  v9[1] = *MEMORY[0x29EDCA608];
  v8 = timingsafe_enable_if_supported();
  v9[0] = a3;
  v7[0] = ccn_n(1, v9);
  v7[1] = 0;
  v7[2] = 1;
  v7[3] = v9;
  ccz_add(a1, a2, v7);
  return cc_disable_dit_with_sb(&v8);
}

uint64_t ccrsa_decrypt_eme_pkcs1v15(unint64_t *a1, rsize_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v24 = timingsafe_enable_if_supported();
  v10 = *a1;
  v11 = 9 * *a1;
  v12 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N(*a1);
  if (v11 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  v14 = cc_malloc_clear(8 * (v13 + 3 * v10));
  v22[0] = v14;
  v15 = *a1;
  v16 = 9 * *a1;
  v17 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N(*a1);
  if (v16 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  v22[1] = v18 + 3 * v15;
  v22[2] = 0;
  v22[3] = cc_ws_alloc;
  v23 = cc_ws_free;
  if (v14)
  {
    v19 = ccrng(0);
    if (v19)
    {
      v20 = ccrsa_decrypt_eme_pkcs1v15_blinded_ws(v22, v19, a1, a2, a3, a4, a5);
      v23(v22);
    }

    else
    {
      v20 = 0xFFFFFFFFLL;
      cc_ws_free(v22);
    }
  }

  else
  {
    v20 = 4294967283;
  }

  cc_disable_dit_with_sb(&v24);
  return v20;
}

uint64_t cced448_make_pub(uint64_t (**a1)(void, uint64_t, uint64_t *), uint64_t a2, char *a3)
{
  v8 = timingsafe_enable_if_supported();
  pub_internal = cced448_make_pub_internal(a1, a2, a3);
  cc_disable_dit_with_sb(&v8);
  return pub_internal;
}

uint64_t cced448_make_pub_internal(uint64_t (**a1)(void, uint64_t, uint64_t *), uint64_t a2, char *a3)
{
  v25 = *MEMORY[0x29EDCA608];
  v6 = ccec_cp_ed448();
  v19 = cc_malloc_clear(0x690uLL);
  v20 = xmmword_299DAF920;
  v21 = cc_ws_alloc;
  v22 = cc_ws_free;
  if (!v19)
  {
    return 4294967283;
  }

  v7 = cczp_n(v6);
  v8 = cc_ws_alloc(&v19, v7);
  v9 = v21(&v19, 3 * v7);
  ccshake256(0x39uLL, a3, 0x72uLL, v23);
  v23[0] &= 0xFCu;
  v24 |= 0x80u;
  if (v7)
  {
    v10 = v23;
    v11 = v8;
    do
    {
      v12 = *v10;
      v10 += 8;
      *v11++ = v12;
      --v7;
    }

    while (v7);
  }

  v13 = cced448_scalar_mult_base_masked_ws(&v19, v6, a1, v9, v8);
  if (v13 || (v13 = ccec_affinify_ws(&v19, v6), v13))
  {
    v17 = v13;
  }

  else
  {
    v14 = 8 * *v6;
    v15 = a2 + 3;
    v16 = 7;
    do
    {
      *(v15 - 3) = *&v9[v14];
      v14 += 8;
      v15 += 8;
      --v16;
    }

    while (v16);
    v17 = 0;
    *(a2 + 56) = *v9 << 7;
  }

  cc_clear(0x72uLL, v23);
  *(&v20 + 1) = 0;
  v22(&v19);
  return v17;
}

uint64_t cced448_shake_to_scalar_ws(uint64_t a1, uint64_t *a2, uint64_t *a3, size_t a4, char *a5, size_t a6, char *a7, size_t a8, char *a9)
{
  v28 = *MEMORY[0x29EDCA608];
  v15 = ccshake256_xi();
  v22 = *a2;
  v16 = cczp_n(a2);
  v23 = *(a1 + 16);
  v17 = (2 * v16) | 1;
  v18 = (*(a1 + 24))(a1, v17);
  v27 = 0;
  memset(__dst, 0, sizeof(__dst));
  ccxof_init(v15, v25);
  ccxof_absorb(v15, v25, 0xAuLL, "SigEd448");
  ccxof_absorb(v15, v25, a4, a5);
  ccxof_absorb(v15, v25, a6, a7);
  ccxof_absorb(v15, v25, a8, a9);
  ccxof_squeeze(v15, v25, 0x72uLL, __dst);
  cc_clear(0x158uLL, v25);
  for (i = 0; i != v17; ++i)
  {
    *&v18[8 * i] = *(__dst + i);
  }

  cczp_modn_ws(a1, &a2[5 * v22 + 4], a3, v17, v18);
  result = cc_clear(0x78uLL, __dst);
  *(a1 + 16) = v23;
  return result;
}

uint64_t cchmac_internal(uint64_t a1, size_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[1] = *MEMORY[0x29EDCA608];
  is_active = fipspost_trace_is_active();
  if (is_active)
  {
    is_active = fipspost_trace_call("cchmac_internal");
  }

  MEMORY[0x2A1C7C4A8](is_active);
  v14 = (v16 - v13);
  cchmac_init_internal(a1, (v16 - v13), a2, a3);
  cchmac_update_internal(a1, v14, a4, a5);
  cchmac_final_internal(a1, v14, a6);
  return cc_clear(((*(a1 + 8) + *(a1 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + *(a1 + 8), v14);
}

uint64_t cchmac(uint64_t a1, size_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = timingsafe_enable_if_supported();
  cchmac_internal(a1, a2, a3, a4, a5, a6);
  return cc_disable_dit_with_sb(&v13);
}

int64x2_t *ccaes_xts_decrypt_vng_wrapper(int8x16_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4, int8x16_t *a5)
{
  v5 = *a2 + a3;
  if (v5 > 0x100000)
  {
    return 0;
  }

  *a2 = v5;
  v6 = (a2 + 1);
  if (a3)
  {
    ccaes_xts_decrypt_vng_vector(a5, a4, v6, a3, a1 + 1);
  }

  return v6;
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

uint64_t fipspost_get_hmac(char *a1, _OWORD *a2, unint64_t a3)
{
  v41 = *MEMORY[0x29EDCA608];
  result = ccsha256_di();
  v38 = 0;
  if (a3)
  {
    v7 = &a1[a3];
    v8 = __CFADD__(a1, a3);
    result = 4294967224;
    if (a3 < 0x28 || v8)
    {
      return result;
    }
  }

  else
  {
    v7 = 0;
  }

  if (*a1 == -17958193)
  {
    v35 = a2;
    v9 = 32;
  }

  else
  {
    if (*a1 != -17958194)
    {
      return 4294967223;
    }

    v35 = a2;
    v9 = 28;
  }

  v36 = &v33;
  v10 = *(a1 + 4);
  v39 = 0u;
  v40 = 0u;
  MEMORY[0x2A1C7C4A8](result);
  v33 = (&v33 - v11);
  v34 = v12;
  cchmac_init(v12, (&v33 - v11), 1uLL, &v38);
  if (v10)
  {
    v13 = 0;
    v14 = &a1[v9];
    v37 = &a1[v9];
    while (1)
    {
      v15 = (v14 + 56) <= v7 || v7 == 0;
      if (!v15 || v14 < a1)
      {
        break;
      }

      if (!strncmp("__TEXT", v14 + 8, 6uLL) || !strncmp("__TEXT_EXEC", v14 + 8, 0xBuLL))
      {
        if (*v37 == 1)
        {
          v21 = *(v14 + 12);
          if (v21)
          {
            v22 = (v14 + 124);
            do
            {
              v23 = v22 <= v7 || v7 == 0;
              result = 4294967224;
              if (!v23 || v14 + 56 < a1)
              {
                return result;
              }

              if (!strcmp((v22 - 68), "__text") && (!strcmp((v22 - 52), "__TEXT") || !strcmp((v22 - 52), "__TEXT_EXEC")))
              {
                v25 = *(v22 - 32);
                v26 = &a1[*(v22 - 28)];
LABEL_62:
                if ((&v26[v25] <= v7 || v7 == 0) && &v26[v25 - 1] >= a1)
                {
                  v30 = v33;
                  v29 = v34;
                  cchmac_update(v34, v33, v25, v26);
                  cchmac_final(v29, v30, &v39);
                  result = 0;
                  v31 = v40;
                  v32 = v35;
                  *v35 = v39;
                  v32[1] = v31;
                  return result;
                }

                return 4294967224;
              }

              v22 += 68;
            }

            while (--v21);
          }
        }

        else if (*v37 == 25)
        {
          v17 = (v14 + 72);
          v18 = *(v14 + 16);
          if (v7 && v17 > v7)
          {
            return 4294967224;
          }

          if (v18)
          {
            v19 = (v14 + 152);
            do
            {
              v20 = v19 <= v7 || v7 == 0;
              result = 4294967224;
              if (!v20 || v17 < a1)
              {
                return result;
              }

              if (!strcmp((v19 - 80), "__text") && (!strcmp((v19 - 64), "__TEXT") || !strcmp((v19 - 64), "__TEXT_EXEC")))
              {
                v26 = &a1[*(v19 - 32)];
                v25 = *(v19 - 40);
                goto LABEL_62;
              }

              v19 += 80;
            }

            while (--v18);
          }
        }
      }

      ++v13;
      v14 += *(v14 + 1);
      if (v13 == v10)
      {
        goto LABEL_55;
      }
    }
  }

  else
  {
LABEL_55:
    v24 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: could not create the hash\n", v24, "fipspost_get_hmac", 251);
  }

  return 4294967224;
}

uint64_t fipspost_post_ecdh(char a1)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = ccec_cp_256();
  v3 = *v2;
  v4 = sizeof_struct_cche_galois_key();
  v5 = sizeof_struct_ccpolyzp_po2cyc();
  v6 = sizeof_struct_cche_galois_key();
  v22[0] = cc_malloc_clear(8 * ((v5 - 1 + v4 + 4 * v5 * v3) / v5 + 29 * v3 + (3 * v5 * v3 + v5 - 1 + v6) / v5));
  v7 = *v2;
  v8 = sizeof_struct_cche_galois_key();
  v9 = sizeof_struct_ccpolyzp_po2cyc();
  v22[1] = (v9 - 1 + v8 + 4 * v9 * v7) / v9 + 29 * v7 + (3 * v9 * v7 + v9 - 1 + sizeof_struct_cche_galois_key()) / v9;
  v23 = 0;
  v24 = cc_ws_alloc;
  v25 = cc_ws_free;
  if (v22[0])
  {
    v33[0] = xmmword_299DAF972;
    v33[1] = unk_299DAF982;
    v32[0] = xmmword_299DAF992;
    v32[1] = unk_299DAF9A2;
    v31[0] = xmmword_299DAF9B2;
    v31[1] = unk_299DAF9C2;
    v30[0] = xmmword_299DAF9D2;
    v30[1] = unk_299DAF9E2;
    v29[0] = xmmword_299DAF9F2;
    v29[1] = unk_299DAFA02;
    v27 = 0u;
    v28 = 0u;
    v26 = 32;
    v10 = cczp_bitlen(v2);
    v11 = cc_ws_alloc(v22, (4 * (v7 & 0x7FFFFFFFFFFFFFFLL)) | 2);
    v12 = v24(v22, (24 * v7 + 23) >> 3);
    if (ccec_make_priv(v10, 32, v30, 32, v29, 32, v31, v11))
    {
      v13 = mach_absolute_time();
      v14 = 4294967224;
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: result: %d\n", v13, "fipspost_post_ecdh_ws", 85, -72);
    }

    else
    {
      if (ccec_make_pub(v10, 0x20uLL, v33, 0x20uLL, v32, v12))
      {
        v15 = mach_absolute_time();
        v14 = 4294967224;
        v16 = 93;
      }

      else
      {
        if (!ccecdh_compute_shared_secret_ws(v22, v11, v12, &v26, &v27, &ccrng_zero))
        {
          if ((a1 & 0x10) != 0)
          {
            LOBYTE(v27) = v27 ^ 1;
          }

          if (v27 == 0x1FF20641062FC46 && *(&v27 + 1) == 0x252DDDFB34A4542ELL && v28 == 0x681E56602085C5CCLL && *(&v28 + 1) == 0x7BBD978977D70D04)
          {
            v14 = 0;
          }

          else
          {
            v21 = mach_absolute_time();
            printf("FIPSPOST_USER [%llu] %s:%d: FAILED: memcmp\n", v21, "fipspost_post_ecdh_ws", 114);
            v14 = 4294967221;
          }

          goto LABEL_10;
        }

        v15 = mach_absolute_time();
        v14 = 4294967224;
        v16 = 103;
      }

      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: result: %d\n", v15, "fipspost_post_ecdh_ws", v16, -72);
    }

LABEL_10:
    v23 = 0;
    v25(v22);
    return v14;
  }

  return 4294967283;
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

uint64_t cczp_add(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = timingsafe_enable_if_supported();
  v8 = cczp_n(a1);
  v11[0] = cc_malloc_clear(8 * v8);
  v11[1] = cczp_n(a1);
  v11[2] = 0;
  v11[3] = cc_ws_alloc;
  v12 = cc_ws_free;
  if (v11[0])
  {
    (**(a1 + 16))(v11, a1, a2, a3, a4);
    v12(v11);
    v9 = 0;
  }

  else
  {
    v9 = 4294967283;
  }

  cc_disable_dit_with_sb(&v13);
  return v9;
}

unint64_t ccmldsa_sample_rej_ntt_poly(void *a1, char a2, char a3, _OWORD *a4)
{
  v22 = *MEMORY[0x29EDCA608];
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  cckeccak_init_state(v17);
  v8 = a4[1];
  v19[0] = *a4;
  v19[1] = v8;
  v20 = a2;
  v21 = a3;
  cckeccak_absorb_and_pad(v17, 168, 0x22uLL, v19, 0x1Fu);
  cc_clear(0x400uLL, a1);
  v9 = 0;
  v10 = 0;
  do
  {
    permutation = cckeccak_get_permutation();
    cckeccak_squeeze(v17, 0xA8uLL, 0xA8uLL, v19, permutation);
    v12 = 0;
    v13 = v19 + 2;
    do
    {
      v14 = (*(v13 - 1) << 8) | ((*v13 & 0x7F) << 16) | *(v13 - 2);
      if (v14 <= 0x7FE000)
      {
        *(a1 + v10++) = v14;
      }

      if (v12 > 0x36)
      {
        break;
      }

      v13 += 3;
      ++v12;
    }

    while (v10 < 0x100);
    if (v10 > 0xFF)
    {
      break;
    }
  }

  while (v9++ < 5);
  cc_clear(0xC8uLL, v17);
  cc_clear(0xA8uLL, v19);
  return v10;
}

unint64_t ccmldsa_sample_rej_uniform_eta2(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = a3;
  if (a3 <= 0xFF)
  {
    v5 = 0;
    while (1)
    {
      v6 = *(a1 + v5);
      if ((v6 & 0xF) != 0xF)
      {
        *(a2 + 4 * result) = (((v6 & 0xF) / 5) | (4 * ((v6 & 0xF) / 5))) - (v6 & 0xF) + 2;
        if (result > 0xFE)
        {
          return 256;
        }

        ++result;
        v6 = *(a1 + v5);
      }

      v7 = v6 >> 4;
      if (v7 != 15)
      {
        *(a2 + 4 * result++) = (((205 * v7) >> 10) | (4 * ((205 * v7) >> 10))) - v7 + 2;
      }

      if (v5 <= 0x86)
      {
        ++v5;
        if (result < 0x100)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

unint64_t ccmldsa_sample_rej_uniform_eta4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = a3;
  if (a3 <= 0xFF)
  {
    v5 = 0;
    while (1)
    {
      v6 = *(a1 + v5);
      if ((v6 & 0xF) <= 8)
      {
        *(a2 + 4 * result) = 4 - (v6 & 0xF);
        if (result > 0xFE)
        {
          return 256;
        }

        ++result;
        v6 = *(a1 + v5);
      }

      if (v6 <= 0x8F)
      {
        *(a2 + 4 * result++) = 4 - (v6 >> 4);
      }

      if (v5 <= 0x86)
      {
        ++v5;
        if (result < 0x100)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t ccmldsa_sample_rej_bounded_poly(uint64_t a1, void *a2, __int16 a3, _OWORD *a4)
{
  v19 = *MEMORY[0x29EDCA608];
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  cckeccak_init_state(v15);
  v8 = a4[1];
  v17[0] = *a4;
  v17[1] = v8;
  v9 = a4[3];
  v17[2] = a4[2];
  v17[3] = v9;
  v18 = a3;
  cckeccak_absorb_and_pad(v15, 136, 0x42uLL, v17, 0x1Fu);
  cc_clear(0x400uLL, a2);
  v10 = 0;
  v11 = 0;
  do
  {
    permutation = cckeccak_get_permutation();
    cckeccak_squeeze(v15, 0x88uLL, 0x88uLL, v17, permutation);
    v11 = (*(a1 + 48))(v17, a2, v11);
  }

  while (v11 <= 0xFF && v10++ < 3);
  cc_clear(0xC8uLL, v15);
  cc_clear(0x88uLL, v17);
  return v11;
}

uint64_t ccmldsa_sample_in_ball(uint64_t a1, void *a2, uint64_t *a3)
{
  v24[17] = *MEMORY[0x29EDCA608];
  cc_clear(0x400uLL, a2);
  permutation = cckeccak_get_permutation();
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  cckeccak_init_state(v22);
  cckeccak_absorb_and_pad(v22, 136, *(a1 + 16) >> 2, a3, 0x1Fu);
  cckeccak_squeeze(v22, 0x88uLL, 0x88uLL, v24, permutation);
  v7 = (256 - *(a1 + 12));
  if (v7 > 0xFF)
  {
    goto LABEL_22;
  }

  v8 = 0;
  LODWORD(v9) = 0;
  v10 = v24[0];
  while (1)
  {
    v9 = (v9 + 1);
    v11 = *(&v24[1] + v8);
    if (v7 < v11)
    {
      break;
    }

LABEL_7:
    *(a2 + v7) = *(a2 + v11);
    *(a2 + v11) = -((v10 >> (v7 + *(a1 + 12))) & 1) | 1;
    v13 = v7 + 1;
    if (v7 <= 0xFE)
    {
      v8 = v9;
      ++v7;
      if (v9 < 0x80)
      {
        continue;
      }
    }

    goto LABEL_11;
  }

  while (v9 <= 0x7F)
  {
    v12 = v9 + 1;
    LODWORD(v11) = *(&v24[1] + v9++);
    if (v11 <= v7)
    {
      LODWORD(v9) = v12;
      goto LABEL_7;
    }
  }

  v13 = v7;
LABEL_11:
  if ((v13 & 0xFFFFFF00) != 0)
  {
    goto LABEL_22;
  }

  cckeccak_squeeze(v22, 0x88uLL, 0x88uLL, v24, permutation);
  v14 = 0;
  LODWORD(v15) = 0;
  v16 = v13;
  while (1)
  {
    v15 = (v15 + 1);
    v17 = *(v24 + v14);
    if (v16 < v17)
    {
      break;
    }

LABEL_17:
    *(a2 + v16) = *(a2 + v17);
    *(a2 + v17) = -((v10 >> (v16 + *(a1 + 12))) & 1) | 1;
    v19 = v16 + 1;
    if (v16 <= 0xFE)
    {
      v14 = v15;
      ++v16;
      if (v15 < 0x88)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  while (v15 <= 0x87)
  {
    v18 = v15 + 1;
    LODWORD(v17) = *(v24 + v15++);
    if (v17 <= v16)
    {
      LODWORD(v15) = v18;
      goto LABEL_17;
    }
  }

  v19 = v16;
LABEL_21:
  if ((v19 & 0xFFFFFF00) != 0)
  {
LABEL_22:
    v20 = 0;
  }

  else
  {
    cc_clear(0x400uLL, a2);
    v20 = 0xFFFFFFFFLL;
  }

  cc_clear(0xC8uLL, v22);
  cc_clear(0x88uLL, v24);
  return v20;
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

void *ccpolyzp_po2cyc_scalar_divmod_ws(uint64_t a1, void *a2, uint64_t *a3, unint64_t *a4)
{
  v11[2] = *MEMORY[0x29EDCA608];
  ccn_mul_ws(a1, 2, v10, a3, (a4 + 4));
  ccn_sub_ws(a1, 2, &__src, a3, v11);
  ccn_shift_right(2, &__src, &__src, 1);
  ccn_add_ws(a1, 2, &__src, __src.i64, v11);
  ccn_shift_right_multi(2, &__src, &__src, ((*a4 ^ (*a4 - 1)) <= *a4 - 1) - __clz(*a4) + 63 - 1);
  return ccn_set(1, a2, &__src);
}

uint64_t ccpolyzp_po2cyc_int_to_rem(uint64_t a1, void *a2)
{
  v2 = (a1 >> 63) & -a1 | a1 & ~(a1 >> 63);
  v3 = v2 + *a2 * ~((v2 * a2[1]) >> 64);
  return (*a2 - (v3 + ((v3 >> 63) & *a2))) & (a1 >> 63) & -(v3 + ((v3 >> 63) & *a2) != 0) | (v3 + ((v3 >> 63) & *a2)) & ~(a1 >> 63);
}

uint64_t ccn_print(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = a2 - 8;
    v3 = MEMORY[0x29EDCA610];
    do
    {
      v4 = result - 1;
      fprintf(*v3, "%.016llx", *(v2 + 8 * result));
      result = v4;
    }

    while (v4);
  }

  return result;
}

size_t ccn_lprint(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = MEMORY[0x29EDCA610];
  fprintf(*MEMORY[0x29EDCA610], "%s { %zu, ", a2, a1);
  for (; v4; --v4)
  {
    fprintf(*v5, "%.016llx", *(a3 - 8 + 8 * v4));
  }

  v6 = *v5;

  return fwrite("}\n", 2uLL, 1uLL, v6);
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

uint64_t cccmac_init_internal(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  __src[2] = *MEMORY[0x29EDCA608];
  result = 4294967289;
  if (a3 <= 0x20 && ((1 << a3) & 0x101010000) != 0)
  {
    v9 = a2 + 72;
    ccecb_init_internal(a1);
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

uint64_t *ccsigma_exclave_pairing_info()
{
  v0 = ccec_cp_256();
  exclave_pairing_info = v0;
  *algn_2A14EA978 = ep_kex_ctx;
  qword_2A14EA980 = ep_peer_kex_ctx;
  v1 = ((cczp_bitlen(v0) + 7) >> 2) & 0x3FFFFFFFFFFFFFFELL;
  qword_2A14EA988 = v0;
  qword_2A14EA990 = ccsha256_di();
  unk_2A14EA998 = v1;
  qword_2A14EA9A0 = ep_sign_ctx;
  qword_2A14EA9A8 = ep_peer_sign_ctx;
  unk_2A14EA9B0 = 11;
  qword_2A14EA9B8 = &ep_session_keys_sizes;
  unk_2A14EA9C0 = 272;
  qword_2A14EA9C8 = ep_session_keys_buffer;
  qword_2A14EA9D0 = ep_session_keys_derive;
  unk_2A14EA9D8 = 32;
  qword_2A14EA9E0 = ep_mac_compute;
  unk_2A14EA9E8 = xmmword_299DA4CA0;
  qword_2A14EA9F8 = ep_sigma_compute_mac_and_digest;
  unk_2A14EAA00 = 16;
  qword_2A14EAA08 = ep_aead_seal;
  qword_2A14EAA10 = ep_aead_open;
  qword_2A14EAA18 = ep_aead_next_iv;
  qword_2A14EAA20 = ep_clear;
  qword_2A14EAA28 = ccsha256_di();
  return &exclave_pairing_info;
}

uint64_t ccec_compute_key(uint64_t **a1, uint64_t **a2, unint64_t *a3, char *a4)
{
  v15 = timingsafe_enable_if_supported();
  v8 = *a1;
  v9 = cc_malloc_clear(232 * **a1);
  v10 = 29 * *v8;
  v13[0] = v9;
  v13[1] = v10;
  v13[2] = 0;
  v13[3] = cc_ws_alloc;
  v14 = cc_ws_free;
  if (v9)
  {
    v11 = ccecdh_compute_shared_secret_ws(v13, a1, a2, a3, a4, 0);
    v14(v13);
  }

  else
  {
    v11 = 4294967283;
  }

  cc_disable_dit_with_sb(&v15);
  return v11;
}

uint64_t ccmode_gcm_finalize(uint64_t a1, size_t a2, void *a3, double a4, double a5, double a6, double a7, double a8, int8x16_t a9)
{
  v26 = *MEMORY[0x29EDCA608];
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

uint64_t ccdh_init_gp_from_bytes(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) == 0 || (_ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 5)) & 0x1000000) != 0)
  {
    v21 = 0;
  }

  else
  {
    __asm { MSR             DIT, #1 }

    v21 = 1;
  }

  v58 = v21;
  v22 = sizeof_struct_ccrns_mul_modulus();
  v23 = sizeof_struct_ccpolyzp_po2cyc();
  v24 = (20 * a2) | 2;
  v54[0] = cc_malloc_clear(8 * ((v22 + v23 - 1) / v23 + v24));
  v25 = sizeof_struct_ccrns_mul_modulus();
  v26 = sizeof_struct_ccpolyzp_po2cyc();
  v54[1] = (v25 + v26 - 1) / v26 + v24;
  v55 = 0;
  v56 = cc_ws_alloc;
  v57 = cc_ws_free;
  if (!v54[0])
  {
    v35 = 4294967283;
    goto LABEL_36;
  }

  v27 = a1 + 3;
  uint_internal = ccn_read_uint_internal(a2, a1 + 3, a3, a4);
  if (!uint_internal)
  {
    v29 = ccdh_gp_prime(a1);
    v30 = ccn_n(a2, v29);
    *a1 = v30;
    uint_internal = ccn_read_uint_internal(v30, &v27[v30 + 1 + v30], a5, a6);
    if (!uint_internal)
    {
      v31 = ccdh_gp_prime(a1);
      v32 = ccdh_gp_g(a1);
      v33 = ccdh_lookup_gp(v30, v31, v30, v32);
      if (v33)
      {
        ccdh_copy_gp(a1, v33);
        v34 = ccdh_gp_l(a1);
        v35 = 0;
        v36 = cc_ws_free;
        if (a9 && !v34)
        {
          v35 = 0;
          v37 = 160;
          if (a9 > 0xA0)
          {
            v37 = a9;
          }

          v27[*a1 + 1 + *a1 + *a1 + *a1] = v37;
          goto LABEL_14;
        }

LABEL_35:
        v36(v54);
        goto LABEL_36;
      }

      v38 = ccrng(0);
      if (!v38)
      {
        v35 = 0xFFFFFFFFLL;
        cc_ws_free(v54);
        goto LABEL_36;
      }

      v39 = v38;
      v40 = ccdh_gp_prime(a1);
      ccprime_rabin_miller_ws(v54, v30, v40, 5, v39);
      v35 = v41;
      if ((v41 & 0x80000000) == 0)
      {
        if (v41 != 1)
        {
          v35 = 4294967130;
          goto LABEL_34;
        }

        v42 = &v27[*a1 + 1 + *a1 + *a1];
        v42[*a1] = 0;
        if (!a8)
        {
          ccn_zero(v30, v42);
          if (a9)
          {
            v46 = 160;
            if (a9 > 0xA0)
            {
              v46 = a9;
            }

            v27[*a1 + 1 + *a1 + *a1 + *a1] = v46;
          }

          if ((*ccdh_gp_prime(a1) & 1) == 0)
          {
            v35 = 4294967289;
            goto LABEL_34;
          }

          v47 = v55;
          v48 = ccdh_gp_n(a1);
          v49 = v56(v54, v48);
          v50 = ccdh_gp_prime(a1);
          ccn_shift_right(v48, v49, v50, 1);
          ccprime_rabin_miller_ws(v54, v48, v49->i64, 5, v39);
          v35 = v51;
          v55 = v47;
          if ((v51 & 0x80000000) != 0)
          {
            goto LABEL_34;
          }

          if (v51 != 1)
          {
            v35 = 4294967128;
            goto LABEL_34;
          }

LABEL_32:
          inited = cczp_init_ws(v54, a1);
          goto LABEL_33;
        }

        inited = ccn_read_uint_internal(v30, v42, a7, a8);
        if (inited)
        {
LABEL_33:
          v35 = inited;
          goto LABEL_34;
        }

        v44 = ccdh_gp_order(a1);
        ccprime_rabin_miller_ws(v54, v30, v44, 5, v39);
        v35 = v45;
        if ((v45 & 0x80000000) == 0)
        {
          if (v45 != 1)
          {
            v35 = 4294967129;
            goto LABEL_34;
          }

          goto LABEL_32;
        }
      }

LABEL_34:
      v55 = 0;
      v36 = v57;
      goto LABEL_35;
    }
  }

  v35 = uint_internal;
LABEL_14:
  cc_ws_free(v54);
LABEL_36:
  cc_disable_dit(&v58);
  return v35;
}

uint64_t ccrsa_emsa_pss_encode_internal(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, size_t a5, char *a6, unint64_t a7, _BYTE *a8)
{
  __src[1] = *MEMORY[0x29EDCA608];
  v8 = (a7 + 7) >> 3;
  v9 = a5 + a3;
  if (8 * (a5 + a3) + 9 > a7 || v8 < a5 + a3 + 2)
  {
    return 4294967271;
  }

  v16 = a3;
  v29 = a2;
  v30 = a7 + 7;
  v31 = &v27;
  v32 = &a8[v8];
  __src[0] = 0;
  v27 = a7;
  v28 = ~a5;
  v18 = MEMORY[0x2A1C7C4A8](a1);
  v20 = (&v27 - v19);
  ccdigest_init_internal(v18, (&v27 - v19));
  ccdigest_update_internal(a1, v20, 8uLL, __src);
  ccdigest_update_internal(a1, v20, a5, a6);
  if (v16)
  {
    ccdigest_update_internal(a1, v20, v16, a4);
  }

  v21 = v32;
  v22 = v28;
  (*(a1 + 56))(a1, v20, &v32[v28]);
  cc_clear(*(a1 + 8) + *(a1 + 16) + 12, v20);
  LODWORD(result) = ccmgf_internal(v29, v8 + v22, a8, a5, &v21[v22]);
  a8[v8 - v9 - 2] ^= 1u;
  if (v16)
  {
    v23 = &a8[~v9 + v8];
    do
    {
      v24 = *a4++;
      *v23++ ^= v24;
      --v16;
    }

    while (v16);
  }

  v25 = (v30 & 0xFFFFFFFFFFFFFFF8) - v27;
  if (v25 >= 8)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = result;
  }

  if (v25 >= 8)
  {
    v26 = -1;
  }

  else
  {
    v26 = 0xFFu >> v25;
  }

  *a8 &= v26;
  *(v32 - 1) = -68;
  return result;
}

uint64_t ccrsa_emsa_pss_encode(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, size_t a5, char *a6, unint64_t a7, _BYTE *a8)
{
  v18 = timingsafe_enable_if_supported();
  v16 = ccrsa_emsa_pss_encode_internal(a1, a2, a3, a4, a5, a6, a7, a8);
  cc_disable_dit_with_sb(&v18);
  return v16;
}

void ccsrp_generate_v_ws(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  v7 = 8 * **a2;
  v8 = *(a2 + 16);
  v9 = a2 + 16 * ccdh_gp_n(v6);
  v10 = ccdh_gp_g(*(a2 + 8));

  ccdh_power_blinded_ws(a1, v8, v6, (v9 + 32), v10, v7, a3);
}

uint64_t ccsrp_generate_verifier(uint64_t a1, char *a2, size_t a3, char *a4, size_t a5, char *a6, char *a7)
{
  v16 = timingsafe_enable_if_supported();
  verifier_internal = ccsrp_generate_verifier_internal(a1, a2, a3, a4, a5, a6, a7);
  cc_disable_dit_with_sb(&v16);
  return verifier_internal;
}

uint64_t ccsrp_generate_verifier_internal(uint64_t a1, char *a2, size_t a3, char *a4, size_t a5, char *a6, char *a7)
{
  v14 = ccdh_gp_n(*(a1 + 8));
  v15 = CCDH_POWER_BLINDED_WORKSPACE_N(v14);
  v25[0] = cc_malloc_clear(8 * (v15 + v14));
  v25[1] = CCDH_POWER_BLINDED_WORKSPACE_N(v14) + v14;
  v26 = 0;
  v27 = cc_ws_alloc;
  v28 = cc_ws_free;
  if (!v25[0])
  {
    return 4294967283;
  }

  v16 = ccdh_gp_n(*(a1 + 8));
  v17 = cc_ws_alloc(v25, v16);
  v18 = ccdh_gp_n(*(a1 + 8));
  v16 *= 8;
  cc_clear(v16, (a1 + 32 + 16 * v18));
  cc_clear(v16, v17);
  x = ccsrp_generate_x(a1, v17, a2, a5, a6, a3, a4);
  if (x || (ccsrp_generate_v_ws(v25, a1, v17), x))
  {
    v23 = x;
  }

  else
  {
    v20 = (a1 + 32 + 16 * ccdh_gp_n(*(a1 + 8)));
    v21 = ccdh_gp_n(*(a1 + 8));
    v22 = ccdh_gp_n(*(a1 + 8));
    ccn_write_uint_padded_ct_internal(v21, v20, 8 * v22, a7);
    v23 = 0;
  }

  v26 = 0;
  v28(v25);
  return v23;
}

uint64_t ccsrp_generate_salt_and_verification(uint64_t a1, uint64_t (**a2)(void, size_t, char *), char *a3, size_t a4, char *a5, size_t a6, char *a7, char *a8)
{
  v18 = timingsafe_enable_if_supported();
  verifier_internal = (*a2)(a2, a6, a7);
  if (!verifier_internal)
  {
    verifier_internal = ccsrp_generate_verifier_internal(a1, a3, a4, a5, a6, a7, a8);
  }

  cc_disable_dit_with_sb(&v18);
  return verifier_internal;
}

BOOL ccdh_valid_shared_secret(_BOOL8 result, uint64_t *a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    if (ccn_n() > 1 || *a2 >= 2)
    {
      v6 = ccdh_gp_prime(a3);
      v7 = (ccn_cmp_public_value(v5 - 1, a2 + 1, v6 + 8) != 0) - 1;
      v8 = *a2;
      return (v8 != *ccdh_gp_prime(a3) - 1 ? 0 : v7) != -1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ccvrf_irtf_ed25519_prove(uint64_t a1, char *a2, char *a3, size_t a4, _OWORD *a5)
{
  v8 = a2;
  v25 = *MEMORY[0x29EDCA608];
  memset(v12, 0, sizeof(v12));
  v10 = ccvrf_irtf_ed25519_derive_scalar_internal(a1, a2, v18, v17);
  LODWORD(v8) = ccvrf_irtf_ed25519_derive_public_key_internal(a1, v8, v12);
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  v21 = 0u;
  v22 = 0u;
  memset(v20, 0, sizeof(v20));
  memset(v16, 0, sizeof(v16));
  memset(v15, 0, sizeof(v15));
  memset(v14, 0, sizeof(v14));
  memset(v13, 0, sizeof(v13));
  ccvrf_irtf_ed25519_hash2curve_elligator2(*(a1 + 40), v12, a3, a4, v24);
  ge_frombytes_vartime(v16, v24);
  ge_scalarmult(v15, v18, v16);
  ccvrf_irtf_nonce_generation(*(a1 + 40), v23, v17, v24);
  ge_scalarmult_base(v14, v23);
  ge_scalarmult(v13, v23, v16);
  v19[0] = v16;
  v19[1] = v15;
  v19[2] = v14;
  v19[3] = v13;
  ccvrf_irtf_ed25519_hash_points(a1, v19, 4, &v21);
  cc_clear(0x10uLL, &v22);
  sc_muladd(v20, &v21, v18, v23);
  ccvrf_irtf_ed25519_encode_proof(v15, &v21, v20, a5);
  cc_clear(0x20uLL, v23);
  cc_clear(0x20uLL, v24);
  cc_clear(0x20uLL, &v21);
  cc_clear(0xA0uLL, v16);
  cc_clear(0xA0uLL, v15);
  cc_clear(0xA0uLL, v14);
  cc_clear(0xA0uLL, v13);
  cc_clear(0x20uLL, v18);
  cc_clear(0x20uLL, v17);
  cc_clear(0xA0uLL, v12);
  return v8 | v10;
}

uint64_t ccvrf_prove(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = timingsafe_enable_if_supported();
  if (ccvrf_sizeof_secret_key(a1) == a2 && ccvrf_sizeof_proof(a1) == a6)
  {
    v14 = (*(a1 + 64))(a1, a3, a5, a4, a7);
  }

  else
  {
    v14 = 4294967289;
  }

  cc_disable_dit_with_sb(&v16);
  return v14;
}

uint64_t ccvrf_irtf_nonce_generation(uint64_t a1, _OWORD *a2, char *a3, char *a4)
{
  v15 = *MEMORY[0x29EDCA608];
  v8 = MEMORY[0x2A1C7C4A8](a1);
  v10 = (&v13 - v9);
  ccdigest_init_internal(v8, (&v13 - v9));
  ccdigest_update_internal(a1, v10, 0x20uLL, a3);
  ccdigest_update_internal(a1, v10, 0x20uLL, a4);
  (*(a1 + 56))(a1, v10, v14);
  sc_reduce(v14);
  v11 = v14[1];
  *a2 = v14[0];
  a2[1] = v11;
  cc_clear(0x40uLL, v14);
  return cc_clear(*(a1 + 8) + *(a1 + 16) + 12, v10);
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

BOOL ccn_add1(uint64_t a1, void *a2, uint64_t *a3, _BOOL8 a4)
{
  v11 = timingsafe_enable_if_supported();
  v9[0] = xmmword_2A201DFE0;
  v9[1] = unk_2A201DFF0;
  v10 = off_2A201E000;
  if (a1)
  {
    a4 = ccn_add1_asm(a1, a2, a3, a4);
  }

  cc_ws_free_null(v9);
  cc_disable_dit_with_sb(&v11);
  return a4;
}

uint64_t ccmode_ctr_setctr(int a1, void *a2, void *__src)
{
  v4 = *(*a2 + 8);
  a2[1] = v4;
  memcpy(a2 + ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, __src, v4);
  return 0;
}

uint64_t ccrsa_eme_pkcs1v15_decode_safe_ws(uint64_t a1, void *a2, rsize_t *a3, void *a4, size_t a5, unint64_t *a6)
{
  v16 = *MEMORY[0x29EDCA608];
  v12 = ccsha256_di();
  ccdigest_internal(v12, 8 * *a2, &a2[3 * *a2 + 4], v15);
  v13 = ccrsa_eme_pkcs1v15_decode_internal_ws(a1, v15, a3, a4, a5, a6);
  cc_clear(0x20uLL, v15);
  return v13;
}

uint64_t ccrsa_eme_pkcs1v15_decode_internal_ws(uint64_t a1, uint64_t a2, rsize_t *a3, void *a4, size_t a5, unint64_t *a6)
{
  v42 = *MEMORY[0x29EDCA608];
  v6 = 4294967273;
  v27 = a5 - 11;
  if (a5 >= 0xB && *a3 >= a5)
  {
    v12 = *(a1 + 16);
    v13 = ccrsa_n_from_size(a5);
    ccn_swap(v13, a6);
    v14 = ccrsa_block_start(a5, a6, 0);
    v26 = (*(a1 + 24))(a1, v13);
    v33 = 0;
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    v36[1] = 0;
    v36[0] = ccsha256_di();
    ccdrbg_factory_nisthmac(v37, v36);
    v15 = ccsha256_di();
    ccdigest_internal(v15, a5, v14, v41);
    strcpy(v40, "ccrsa_eme_pkcs1v15_decode_generate_random");
    memset(v39, 0, sizeof(v39));
    inited = ccdrbg_init_internal(v37);
    if (inited)
    {
      v6 = inited;
      v18 = v27;
    }

    else
    {
      memset(v35, 0, sizeof(v35));
      internal = ccrng_drbg_init_withdrbg(v35, v37, v39);
      v18 = v27;
      if (internal || (internal = ccdrbg_generate_internal(v37, v39, v27, v26, 0, 0), internal))
      {
        v6 = internal;
      }

      else
      {
        v34 = 0;
        v6 = ccrng_uniform_internal(v35, a5 - 10, &v34);
        if (!v6)
        {
          v33 = v34;
        }
      }
    }

    cc_clear(0x20uLL, v41);
    cc_clear(8uLL, &v34);
    ccdrbg_done(v37, v39);
    if (v6)
    {
      cc_clear(v18, v26);
      cc_clear(8uLL, &v33);
    }

    else
    {
      v25 = v12;
      v19 = 0;
      v20 = *v14 != 0 ? 0 : (v14[1] != 2) - 1;
      v21 = 255;
      v22 = 2;
      do
      {
        v19 = v19 & ((v21 & 1) - 1) | v22 & -(v21 & 1);
        v31 = v19;
        v21 &= -(v14[v22] != 0);
        v30 = v21;
        ++v22;
      }

      while (a5 != v22);
      v29 = ~v19 + a5;
      v28 = v19 - 2;
      v32 = (v19 - 2) > 7 ? v20 & ~v21 : 0;
      v23 = v32 & 1;
      cc_clear(*a3, a4);
      *&v39[0] = *a3;
      ccrsa_xor_varlen(v39, a4, v23, a5, v19 + 1, v14);
      *&v37[0] = *a3;
      ccrsa_xor_varlen(v37, a4, !(v32 & 1), v27, v33, v26);
      *a3 = *&v37[0] & (v23 - 1) | *&v39[0] & -v23;
      cc_clear(8uLL, v39);
      cc_clear(8uLL, v37);
      v12 = v25;
    }

    ccn_swap(v13, a6);
    cc_clear(8uLL, &v33);
    cc_clear(1uLL, &v32);
    cc_clear(8uLL, &v31);
    cc_clear(1uLL, &v30);
    cc_clear(8uLL, &v29);
    cc_clear(8uLL, &v28);
    *(a1 + 16) = v12;
  }

  return v6;
}

uint64_t ccrsa_eme_pkcs1v15_decode_safe(uint64_t *a1, rsize_t *a2, void *a3, size_t a4, unint64_t *a5)
{
  v16 = timingsafe_enable_if_supported();
  v10 = cc_malloc_clear(8 * *a1);
  v11 = *a1;
  v14[0] = v10;
  v14[1] = v11;
  v14[2] = 0;
  v14[3] = cc_ws_alloc;
  v15 = cc_ws_free;
  if (v10)
  {
    v12 = ccrsa_eme_pkcs1v15_decode_safe_ws(v14, a1, a2, a3, a4, a5);
    v15(v14);
  }

  else
  {
    v12 = 4294967283;
  }

  cc_disable_dit_with_sb(&v16);
  return v12;
}

uint64_t ccrsa_eme_pkcs1v15_decode(rsize_t *a1, void *a2, size_t a3, unint64_t *a4)
{
  v15 = timingsafe_enable_if_supported();
  v8 = ccrsa_n_from_size(a3);
  v13[0] = cc_malloc_clear(8 * v8);
  v13[1] = v8;
  v13[2] = 0;
  v13[3] = cc_ws_alloc;
  v14 = cc_ws_free;
  if (!v13[0])
  {
    v10 = 4294967283;
    goto LABEL_9;
  }

  v12 = 0;
  if ((ccrsa_eme_pkcs1v15_decode_entropy_init & 1) == 0)
  {
    v9 = ccrng(&v12);
    if (!v9)
    {
      goto LABEL_7;
    }

    v12 = (*v9)(v9, 32, &ccrsa_eme_pkcs1v15_decode_entropy);
    if (v12)
    {
      goto LABEL_7;
    }

    ccrsa_eme_pkcs1v15_decode_entropy_init = 1;
  }

  v12 = ccrsa_eme_pkcs1v15_decode_internal_ws(v13, &ccrsa_eme_pkcs1v15_decode_entropy, a1, a2, a3, a4);
LABEL_7:
  v14(v13);
  v10 = v12;
LABEL_9:
  cc_disable_dit_with_sb(&v15);
  return v10;
}

uint64_t *ccrsa_xor_varlen(uint64_t *result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = -(a3 & 1);
  if (*result)
  {
    v7 = 0;
    v8 = a5;
    do
    {
      if (a4)
      {
        v9 = 0;
        v10 = 0;
        do
        {
          v10 ^= v8 != v9 ? 0 : *(a6 + v9) & v6;
          ++v9;
        }

        while (a4 != v9);
      }

      else
      {
        v10 = 0;
      }

      *(a2 + v7) ^= v10;
      ++v8;
      ++v7;
      v11 = *result;
    }

    while (v7 < *result);
  }

  else
  {
    v11 = 0;
  }

  *result = v11 & ((a3 & 1) - 1) | (a4 - a5) & v6;
  return result;
}

uint64_t ccckg_init(_DWORD *a1, void *a2, void *a3, uint64_t a4)
{
  cc_clear(((2 * *a3 + 14) & 0xFFFFFFFFFFFFFFF0) + 8 * *a2 + 40, a1);
  *a1 = 1;
  *(a1 + 1) = a2;
  *(a1 + 2) = a3;
  *(a1 + 3) = a4;
  *(a1 + 32) = 0;
  return 0;
}

uint64_t ccckg_derive_sk(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v20 = *MEMORY[0x29EDCA608];
  v12 = *(a1 + 8);
  v11 = *(a1 + 16);
  v13 = *v12;
  v14 = cczp_bitlen(v12);
  ccn_write_uint_padded_internal(v13, a2, (v14 + 7) >> 3, v19);
  v15 = *v11;
  v18[0] = a3;
  v18[1] = v15;
  v18[2] = a4;
  v18[3] = v15;
  v16 = cczp_bitlen(v12);
  return ccansikdf_x963_iovec(v11, (v16 + 7) >> 3, v19, 2, v18, a5, a6);
}

uint64_t ccsrp_generate_x(uint64_t a1, uint64_t a2, char *a3, size_t a4, char *a5, size_t a6, char *a7)
{
  v24 = *MEMORY[0x29EDCA608];
  v14 = *a1;
  MEMORY[0x2A1C7C4A8](a1);
  v16 = &__src[-v15 - 8];
  ccdigest_init_internal(v14, &__src[-v15 - 8]);
  if ((*(a1 + 24) & 2) == 0)
  {
    v17 = strlen(a3);
    ccdigest_update_internal(v14, v16, v17, a3);
  }

  ccdigest_update_internal(v14, v16, 1uLL, ":");
  ccdigest_update_internal(v14, v16, a6, a7);
  (*(v14 + 56))(v14, v16, __src);
  ccdigest_init_internal(v14, v16);
  ccdigest_update_internal(v14, v16, a4, a5);
  ccdigest_update_internal(v14, v16, *v14, __src);
  (*(v14 + 56))(v14, v16, __src);
  v18 = *v14;
  v19 = ccdh_gp_n(*(a1 + 8));
  uint_internal = ccn_read_uint_internal(v19, a2, v18, __src);
  cc_clear(*v14, __src);
  cc_clear(*(v14 + 8) + *(v14 + 16) + 12, v16);
  return uint_internal;
}

unint64_t ccecies_pub_key_size_cp(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if ((v2 & 2) != 0)
  {
    return ((cczp_bitlen(a1) + 7) >> 2) | 1;
  }

  if ((v2 & 4) != 0)
  {
    return (cczp_bitlen(a1) + 7) >> 3;
  }

  return 0;
}

unint64_t CCHE_CIPHER_PLAIN_CTX_INIT_WORKSPACE_N(uint64_t a1)
{
  v1 = a1;
  v2 = a1;
  v3 = CCPOLYZP_PO2CYC_CTX_Q_PROD_WORKSPACE_N(a1);
  v4 = 2 * v2 + v1 + 3;
  if (v4 <= v3)
  {
    v4 = v3;
  }

  return v4 + 2 * v1;
}

uint64_t ccdigest_final_64be(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t ccecb_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 16))(a1, a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ccecb_update(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = (*(a1 + 24))(a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
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
  v18[1] = *MEMORY[0x29EDCA608];
  if (*(a1 + 8) != a3)
  {
    return 4294967289;
  }

  v11 = MEMORY[0x2A1C7C4A8](a1);
  v13 = v18 - v12;
  v16 = (*(v11 + 16))(v11, v18 - v12, v15, v14);
  if (!v16)
  {
    v16 = (*(a1 + 24))(v13, a4, a6, a7);
  }

  cc_clear(*a1, v13);
  return v16;
}

uint64_t ccecb_one_shot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = timingsafe_enable_if_supported();
  v12 = ccecb_one_shot_explicit_internal(a1, a2, *(a1 + 8), a4, a3, a5, a6);
  cc_disable_dit_with_sb(&v14);
  return v12;
}

uint64_t ccckg2_contributor_commit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, unint64_t, void *))
{
  v19 = timingsafe_enable_if_supported();
  v8 = ccckg2_ctx_cp(a1);
  v9 = *v8;
  v10 = sizeof_struct_cche_galois_key();
  v11 = sizeof_struct_ccpolyzp_po2cyc();
  v17[0] = cc_malloc_clear(8 * ((v10 + v11 + 4 * v9 * v11 - 1) / v11 + 49 * v9));
  v12 = *v8;
  v13 = sizeof_struct_cche_galois_key();
  v14 = sizeof_struct_ccpolyzp_po2cyc();
  v17[1] = (v13 + v14 + 4 * v12 * v14 - 1) / v14 + 49 * v12;
  v17[2] = 0;
  v17[3] = cc_ws_alloc;
  v18 = cc_ws_free;
  if (v17[0])
  {
    v15 = ccckg2_contributor_commit_ws(v17, a1, a2, a3, a4);
    v18(v17);
  }

  else
  {
    v15 = 4294967283;
  }

  cc_disable_dit_with_sb(&v19);
  return v15;
}

uint64_t ccckg2_contributor_commit_ws(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(void, unint64_t, void *))
{
  v30 = *MEMORY[0x29EDCA608];
  v10 = ccckg2_ctx_di(a2);
  v11 = ccckg2_ctx_cp(a2);
  v12 = *v11;
  MEMORY[0x2A1C7C4A8](v11);
  v14 = (&v27 - v13);
  if (*(a2 + 32))
  {
    return 4294967210;
  }

  if (*a2 != 2 || *v10 != a3)
  {
    return 4294967289;
  }

  v16 = *(a1 + 24);
  v28 = *(a1 + 16);
  v17 = v16(a1, (4 * (v12 & 0x7FFFFFFFFFFFFFFLL)) | 2);
  *v17 = v11;
  v18 = a2 + 40;
  result = ccec_generate_scalar_fips_retry_ws(a1, v11, a5, (a2 + 40));
  if (!result)
  {
    result = ccec_generate_key_fips_ws(a1, v11, a5, v17);
    if (!result)
    {
      v19 = ccckg2_ctx_cp(a2);
      ccn_set(v12, (v18 + 8 * *v19), &v17[3 * **v17 + 2]);
      v20 = ccckg2_ctx_cp(a2);
      v21 = ccckg2_ctx_cp(a2);
      result = ccec_export_pub(v17, (v18 + 8 * *v21 + 8 * *v20));
      if (!result)
      {
        v22 = cczp_bitlen(&v11[5 * *v11 + 4]);
        ccn_write_uint_padded_internal(v12, (a2 + 40), (v22 + 7) >> 3, __src);
        ccdigest_init_internal(v10, v14);
        v23 = cczp_bitlen(&v11[5 * *v11 + 4]);
        ccdigest_update_internal(v10, v14, (v23 + 7) >> 3, __src);
        v24 = (cczp_bitlen(*v17) + 7) >> 2;
        v25 = ccckg2_ctx_cp(a2);
        v26 = ccckg2_ctx_cp(a2);
        ccdigest_update_internal(v10, v14, v24 | 1, (v18 + 8 * *v26 + 8 * *v25));
        (*(v10 + 56))(v10, v14, a4);
        cc_clear(*(v10 + 8) + *(v10 + 16) + 12, v14);
        result = 0;
        *(a2 + 32) = 1;
      }
    }
  }

  *(a1 + 16) = v28;
  return result;
}