void *ccmode_factory_cfb8_decrypt(void *result, void *a2)
{
  *result = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8) + ((2 * a2[1] + 14) & 0xFFFFFFFFFFFFFFF0) + 8;
  result[1] = 1;
  result[2] = ccmode_cfb8_init;
  result[3] = ccmode_cfb8_decrypt;
  result[4] = a2;
  return result;
}

uint64_t ccdigest_parallel_internal(uint64_t a1, size_t a2, char *a3, uint64_t a4, char *a5, uint64_t a6)
{
  v19[1] = *MEMORY[0x29EDCA608];
  v12 = (MEMORY[0x2A1C7C4A8])();
  v14 = (v19 - v13);
  inited = ccdigest_init_internal(v12, (v19 - v13));
  MEMORY[0x2A1C7C4A8](inited);
  v17 = (v19 - v16);
  ccdigest_init_internal(a1, (v19 - v16));
  if (*(a1 + 72))
  {
    ccdigest_parallel_update_internal(a1, a2, v14, a3, v17, a5);
  }

  else
  {
    ccdigest_update_internal(a1, v14, a2, a3);
    ccdigest_update_internal(a1, v17, a2, a5);
  }

  (*(a1 + 56))(a1, v14, a4);
  (*(a1 + 56))(a1, v17, a6);
  cc_clear(*(a1 + 8) + *(a1 + 16) + 12, v14);
  return cc_clear(*(a1 + 8) + *(a1 + 16) + 12, v17);
}

unint64_t *ccdigest_parallel_update_internal(unint64_t *result, size_t a2, void *a3, char *__src, void *a5, char *a6)
{
  v9 = a2;
  v10 = result;
  v12 = result[1];
  v11 = result[2];
  v13 = a3 + v12 + 8;
  if (v11 <= *(v13 + v11))
  {
    *(v13 + v11) = 0;
  }

  v14 = a5 + v12 + 8;
  if (v11 <= *(v14 + v11))
  {
    *(v14 + v11) = 0;
  }

  if (a2)
  {
    v15 = a3 + 1;
    v16 = a5 + 1;
    v17 = a6;
    v18 = __src;
    do
    {
      v20 = v10[1];
      v19 = v10[2];
      v21 = v15 + v20;
      v22 = *(v15 + v20 + v19);
      if (!v22 && ((v23 = *(v16 + v20 + v19), v9 > v19) ? (v24 = v23 == 0) : (v24 = 0), v24))
      {
        if (v19 == 128)
        {
          v37 = v9 >> 7;
          v26 = v9 & 0xFFFFFFFFFFFFFF80;
        }

        else if (v19 == 64)
        {
          v37 = v9 >> 6;
          v26 = v9 & 0xFFFFFFFFFFFFFFC0;
        }

        else
        {
          v37 = v9 / v19;
          v26 = v9 / v19 * v19;
        }

        result = (v10[9])(a3 + 1, v37, __src, a5 + 1, v37, a6);
        *a3 += 8 * v26;
        *a5 += 8 * v26;
      }

      else
      {
        v25 = v19 - v22;
        if (v25 >= v9)
        {
          v26 = v9;
        }

        else
        {
          v26 = v25;
        }

        memcpy(&v21[v22], v18, v26);
        result = memcpy(v16 + v10[1] + *(v16 + v10[1] + v10[2]), v17, v26);
        v27 = v10[1];
        v28 = v10[2];
        v29 = v15 + v27;
        *&v29[v28] = *(v15 + v27 + v28) + v26;
        v30 = v16 + v27;
        v31 = (*(v16 + v27 + v28) + v26);
        *&v30[v28] = v31;
        if (v28 == *&v29[v28] && v28 == v31)
        {
          result = (v10[9])(a3 + 1, 1);
          v33 = v10[1];
          v34 = v10[2];
          v35 = v15 + v33;
          *a3 += (8 * *(v15 + v33 + v34));
          v36 = v16 + v33;
          *a5 += (8 * *&v36[v34]);
          *&v35[v34] = 0;
          *&v36[v34] = 0;
        }
      }

      v17 += v26;
      v18 += v26;
      v9 -= v26;
    }

    while (v9);
  }

  return result;
}

uint64_t ccdigest_parallel(uint64_t a1, size_t a2, char *a3, uint64_t a4, char *a5, uint64_t a6)
{
  v13 = timingsafe_enable_if_supported();
  ccdigest_parallel_internal(a1, a2, a3, a4, a5, a6);
  return cc_disable_dit_with_sb(&v13);
}

uint64_t ccec_compact_import_pub_size(uint64_t a1)
{
  if (a1 <= 31)
  {
    if (a1 == 24)
    {
      return 192;
    }

    if (a1 == 28)
    {
      return 224;
    }
  }

  else
  {
    switch(a1)
    {
      case ' ':
        return 256;
      case '0':
        return 384;
      case 'B':
        return 521;
    }
  }

  return 0;
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

uint64_t ccecdh_generate_key_ws(uint64_t a1, uint64_t *a2, uint64_t (**a3)(void, uint64_t, uint64_t *), uint64_t **a4)
{
  v7 = *(a1 + 16);
  result = ccec_generate_key_internal_fips_ws(a1, a2, a3, a4);
  if (!result)
  {
    if (ccecdh_pairwise_consistency_check_ws(a1, a4, 0, a3))
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

uint64_t ccecdh_generate_key(uint64_t *a1, uint64_t (**a2)(void, uint64_t, uint64_t *), uint64_t **a3)
{
  v16 = timingsafe_enable_if_supported();
  v6 = *a1;
  v7 = sizeof_struct_cche_galois_key();
  v8 = sizeof_struct_ccpolyzp_po2cyc();
  v14[0] = cc_malloc_clear(8 * ((v7 + v8 + 4 * v6 * v8 - 1) / v8 - v6 + 32 * v6));
  v9 = *a1;
  v10 = sizeof_struct_cche_galois_key();
  v11 = sizeof_struct_ccpolyzp_po2cyc();
  v14[1] = (v10 + v11 + 4 * v9 * v11 - 1) / v11 - v9 + 32 * v9;
  v14[2] = 0;
  v14[3] = cc_ws_alloc;
  v15 = cc_ws_free;
  if (v14[0])
  {
    key_ws = ccecdh_generate_key_ws(v14, a1, a2, a3);
    v15(v14);
  }

  else
  {
    key_ws = 4294967283;
  }

  cc_disable_dit_with_sb(&v16);
  return key_ws;
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

uint64_t ccdh_copy_gp(uint64_t *a1, const void *a2)
{
  v4 = *a1;
  if (v4 != ccdh_gp_n(a2))
  {
    return 4294967243;
  }

  v5 = ccdh_gp_n(a2);
  v6 = ccdh_gp_size(8 * v5);
  memcpy(a1, a2, v6);
  return 0;
}

uint64_t ccz_expmod(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = timingsafe_enable_if_supported();
  v8 = ccz_n(a4);
  v9 = sizeof_struct_ccrns_mul_modulus();
  v10 = sizeof_struct_ccpolyzp_po2cyc();
  v26[0] = cc_malloc_clear(8 * ((v9 + v10 - 1) / v10 + 13 * v8) + 8);
  v11 = ccz_n(a4);
  v12 = sizeof_struct_ccrns_mul_modulus();
  v13 = sizeof_struct_ccpolyzp_po2cyc();
  v26[1] = (v12 + v13 - 1) / v13 + 13 * v11 + 1;
  v27 = 0;
  v28 = cc_ws_alloc;
  v29 = cc_ws_free;
  if (v26[0])
  {
    v14 = ccz_n(a4);
    ccz_set_capacity(a1, v14);
    v15 = cc_ws_alloc(v26, 2 * v14 + 4);
    *v15 = v14;
    ccn_set(v14, v15 + 3, *(a4 + 24));
    inited = cczp_init_ws(v26, v15);
    if (inited)
    {
      v22 = inited;
    }

    else
    {
      v17 = v28(v26, v14);
      v18 = ccz_n(a2);
      v19 = ccz_n(a4);
      v20 = ccz_n(a2);
      v21 = v20;
      if (v18 >= v19)
      {
        cczp_modn_ws(v26, v15, v17, v20, *(a2 + 24));
      }

      else
      {
        if (v20)
        {
          ccn_set(v20, v17, *(a2 + 24));
        }

        ccn_zero(v14 - v21, &v17[v21]);
      }

      v23 = ccz_bitlen(a3);
      v22 = cczp_power_ws(v26, v15, *(a1 + 24), v17, v23, *(a3 + 24));
      if (!v22)
      {
        v24 = ccn_n(v14, *(a1 + 24));
        ccz_set_n(a1, v24);
      }
    }

    v27 = 0;
    v29(v26);
  }

  else
  {
    v22 = 4294967283;
  }

  cc_disable_dit_with_sb(&v30);
  return v22;
}

uint64_t ccecies_decrypt_gcm_composite(uint64_t **a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, rsize_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v30 = timingsafe_enable_if_supported();
  v17 = *a1;
  v18 = **a1;
  v19 = sizeof_struct_cche_galois_key();
  v20 = sizeof_struct_ccpolyzp_po2cyc();
  v28[0] = cc_malloc_clear(8 * ((v19 + v20 + 3 * v18 * v20 - 1) / v20 + 30 * v18));
  v21 = *v17;
  v22 = sizeof_struct_cche_galois_key();
  v23 = sizeof_struct_ccpolyzp_po2cyc();
  v28[1] = (v22 + v23 + 3 * v21 * v23 - 1) / v23 + 30 * v21;
  v28[2] = 0;
  v28[3] = cc_ws_alloc;
  v29 = cc_ws_free;
  if (v28[0])
  {
    v24 = ccecies_decrypt_gcm_composite_ws(v28, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
    v29(v28);
  }

  else
  {
    v24 = 4294967283;
  }

  cc_disable_dit_with_sb(&v30);
  return v24;
}

uint64_t ccecies_decrypt_gcm_composite_ws(uint64_t a1, uint64_t **a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, rsize_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = *a2;
  v17 = **a2;
  v29 = *(a1 + 16);
  v18 = (*(a1 + 24))(a1, (24 * v17 + 23) >> 3);
  v19 = (*(a1 + 24))(a1, v17);
  v30 = (cczp_bitlen(v16) + 7) >> 3;
  v20 = ccecies_pub_key_size_cp(v16, a3);
  v21 = ccecies_import_eph_pub_ws(a1, v16, a3, v20);
  if (v21 || (v21 = ccecdh_compute_shared_secret_ws(a1, a2, v18, &v30, v19, *(a3 + 8)), v21))
  {
    v22 = v21;
  }

  else
  {
    v22 = ccecies_decrypt_gcm_from_shared_secret_composite(v16, a3, v30, v19, a9, a11, a10, a12, a5, a6, a7, a8, a4);
    if (!v22)
    {
      v23 = v29;
      goto LABEL_6;
    }
  }

  v23 = v29;
  cc_clear(a9, a4);
LABEL_6:
  *(a1 + 16) = v23;
  return v22;
}

uint64_t ccecies_decrypt_gcm(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, rsize_t *a9, void *a10)
{
  v33 = timingsafe_enable_if_supported();
  v15 = ccecies_pub_key_size(a1, a2);
  v16 = *a1;
  v17 = **a1;
  v18 = sizeof_struct_cche_galois_key();
  v19 = sizeof_struct_ccpolyzp_po2cyc();
  v31[0] = cc_malloc_clear(8 * ((v18 + v19 + 3 * v17 * v19 - 1) / v19 + 30 * v17));
  v20 = *v16;
  v21 = sizeof_struct_cche_galois_key();
  v22 = sizeof_struct_ccpolyzp_po2cyc();
  v31[1] = (v21 + v22 + 3 * v20 * v22 - 1) / v22 + 30 * v20;
  v31[2] = 0;
  v31[3] = cc_ws_alloc;
  v32 = cc_ws_free;
  if (!v31[0])
  {
    v25 = 4294967283;
    goto LABEL_7;
  }

  v23 = ccecies_decrypt_gcm_plaintext_size(a1, a2, a3);
  if (!v23 || (v24 = v23, v23 > *a9))
  {
    v26 = cc_ws_free;
    v25 = 4294967289;
    goto LABEL_9;
  }

  v25 = ccecies_decrypt_gcm_composite_ws(v31, a1, a2, a10, a5, a6, a7, a8, v23, a4 + v15, a4, a4 + v15 + v23);
  v26 = v32;
  if (v25)
  {
LABEL_9:
    v26(v31);
    cc_clear(*a9, a10);
    goto LABEL_7;
  }

  *a9 = v24;
  v26(v31);
LABEL_7:
  cc_disable_dit_with_sb(&v33);
  return v25;
}

uint64_t ccmode_siv_auth(char *a1, unint64_t a2, char *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*(*(*a1 + 56) + 8) != 16)
  {
    return 4294967226;
  }

  if (!a2)
  {
    return 0;
  }

  cccmac_sl_test_xor((a1 + 88), a1 + 88);
  cccmac_one_shot_generate_internal(*(*a1 + 56), *(a1 + 1) >> 1, (a1 + 24), a2, a3, 0x10uLL, &v7);
  result = 0;
  *(a1 + 88) = veorq_s8(v7, *(a1 + 88));
  *(a1 + 2) = 4;
  return result;
}

uint64_t ccmode_siv_auth_finalize(uint64_t a1, unint64_t a2, char *a3, void *a4)
{
  v20 = *MEMORY[0x29EDCA608];
  v5 = *(*a1 + 56);
  if (v5[1] != 16)
  {
    result = 4294967226;
    goto LABEL_11;
  }

  v6 = *(a1 + 16);
  if (v6 == 4 || v6 == 2)
  {
    if (a2)
    {
      if (a2 >= 0x10)
      {
        v18[1] = v18;
        MEMORY[0x2A1C7C4A8](a1);
        v12 = &v18[-2 * v11];
        cccmac_init_internal(v5, v12, *(a1 + 8) >> 1, a1 + 24);
        __memcpy_chk();
        *(&__src + a2 - (a2 & 0xFFFFFFFFFFFFFFF0)) = veorq_s8(*(a1 + 88), *&a3[a2 - 16]);
        cccmac_update_internal(v12, (a2 & 0xFFFFFFFFFFFFFFF0) - 16, a3);
        cccmac_update_internal(v12, a2 - ((a2 & 0xFFFFFFFFFFFFFFF0) - 16), __src.i8);
        cccmac_final_generate_internal(v12, 0x10uLL, a4);
        cc_clear(v5[1] + *v5 + 80, v12);
LABEL_18:
        result = 0;
        v14 = 5;
        goto LABEL_19;
      }
    }

    else if (v6 == 2)
    {
      cc_clear(0x10uLL, &__src);
      __src.i8[15] = 1;
      v15 = *(*a1 + 56);
      v16 = *(a1 + 8) >> 1;
      v17 = a1 + 24;
LABEL_17:
      cccmac_one_shot_generate_internal(v15, v16, v17, 0x10uLL, __src.i8, 0x10uLL, a4);
      goto LABEL_18;
    }

    cccmac_sl_test_xor(a1 + 88, (a1 + 88));
    __memcpy_chk();
    __src.i8[a2] = 0x80;
    if (a2 <= 0xE)
    {
      bzero(&__src.i8[a2 + 1], 15 - a2);
    }

    __src = veorq_s8(*(a1 + 88), __src);
    v16 = *(a1 + 8) >> 1;
    v17 = a1 + 24;
    v15 = v5;
    goto LABEL_17;
  }

  result = 4294967228;
LABEL_11:
  v14 = 255;
LABEL_19:
  *(a1 + 16) = v14;
  return result;
}

double ccmode_factory_siv_encrypt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 104;
  *a1 = xmmword_299DA04F0;
  *(a1 + 16) = ccmode_siv_init;
  *(a1 + 24) = ccmode_siv_auth;
  *(a1 + 32) = ccmode_siv_auth;
  *(a1 + 40) = ccmode_siv_encrypt;
  *(a1 + 48) = ccmode_siv_reset;
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  return result;
}

uint64_t ccec_diversify_pub_twin(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (**a5)(void, uint64_t, uint64_t *))
{
  v32 = timingsafe_enable_if_supported();
  v10 = *a1;
  v11 = 23 * *a1;
  v12 = sizeof_struct_ccpolyzp_po2cyc();
  v13 = (v12 + 127) / v12 + 4 * v10 + 3;
  if (v11 > v13)
  {
    v13 = v11;
  }

  v14 = cc_malloc_clear(8 * (v13 + 11 * v10));
  v28[0] = v14;
  v15 = *a1;
  v16 = 23 * *a1;
  v17 = sizeof_struct_ccpolyzp_po2cyc();
  v18 = 3 * v15;
  v19 = 4 * v15 + (v17 + 127) / v17 + 3;
  if (v16 > v19)
  {
    v19 = v16;
  }

  v28[1] = v19 + 11 * v15;
  v29 = 0;
  v30 = cc_ws_alloc;
  v31 = cc_ws_free;
  if (v14)
  {
    v20 = cc_ws_alloc(v28, v15);
    v21 = v30(v28, v15);
    v22 = v30(v28, v18);
    v23 = v30(v28, v18);
    v24 = v30(v28, v18);
    v25 = ccec_validate_point_and_projectify_ws(v28, a1, v23, a2 + 16);
    if (!v25)
    {
      v25 = ccec_projectify_ws(v28, a1);
      if (!v25)
      {
        v25 = ccec_diversify_twin_scalars_ws(v28, a1, v20, v21, a3, a4);
        if (!v25)
        {
          v25 = ccec_mult_blinded_ws(v28, a1, v24, v20, v23, a5);
          if (!v25)
          {
            v25 = ccec_mult_blinded_ws(v28, a1, v23, v21, v22, a5);
            if (!v25)
            {
              ccec_full_add_ws(v28, a1);
              v25 = ccec_affinify_ws(v28, a1);
            }
          }
        }
      }
    }

    v26 = v25;
    v29 = 0;
    v31(v28);
  }

  else
  {
    v26 = 4294967283;
  }

  cc_disable_dit_with_sb(&v32);
  return v26;
}

uint64_t CCPOLYZP_PO2CYC_RANDOM_UNIFORM_WORKSPACE_N(unint64_t a1)
{
  v1 = 1024;
  if (a1 < 0x400)
  {
    v1 = a1;
  }

  return 2 * v1;
}

unint64_t CCPOLYZP_PO2CYC_RANDOM_TERNARY_WORKSPACE_N(unint64_t a1)
{
  v1 = 1024;
  if (a1 < 0x400)
  {
    v1 = a1;
  }

  return ((96 * v1 + 63) >> 6) + 6;
}

unint64_t CCPOLYZP_PO2CYC_RANDOM_CBD_WORKSPACE_N(unint64_t a1)
{
  v1 = 1024;
  if (a1 < 0x400)
  {
    v1 = a1;
  }

  return (48 * v1 + 63) >> 6;
}

uint64_t ccss_shamir_init_share_poly(uint64_t result, int *a2)
{
  v2 = *a2;
  *result = a2 + 2;
  *(result + 8) = v2 - 1;
  return result;
}

uint64_t sha1_compress(int *a1, uint64_t a2, unsigned int *a3)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[1];
  v6 = a1[2];
  v7 = *a1;
  do
  {
    v546 = v7;
    v547 = v4;
    v551 = v6;
    v552 = v5;
    v549 = v3;
    v548 = a2;
    v550 = a3;
    HIDWORD(v9) = v7;
    LODWORD(v9) = v7;
    v8 = v9 >> 27;
    v10 = v3 & ~v5;
    v11 = bswap32(*a3);
    HIDWORD(v9) = v5;
    LODWORD(v9) = v5;
    v12 = v9 >> 2;
    v13 = v7 & __ROR4__(v5, 2);
    v14 = bswap32(a3[1]);
    v15 = v4 + 1518500249 + v8 + (v6 & v5 | v10) + v11;
    HIDWORD(v9) = v15;
    LODWORD(v9) = v15;
    v16 = v9 >> 27;
    HIDWORD(v9) = v7;
    LODWORD(v9) = v7;
    v17 = v9 >> 2;
    v18 = v15 & __ROR4__(v7, 2);
    v19 = v549 + 1518500249 + (v13 | v551 & ~v7) + v14 + v16;
    HIDWORD(v9) = v19;
    LODWORD(v9) = v19;
    v20 = v9 >> 27;
    HIDWORD(v9) = v15;
    LODWORD(v9) = v15;
    v21 = v9 >> 2;
    v22 = bswap32(a3[2]);
    v24 = __PAIR64__(v19, __ROR4__(v15, 2));
    v23 = v19 & v24;
    LODWORD(v24) = v19;
    v25 = v24 >> 2;
    v26 = v551 + 1518500249 + v22 + (v18 | v12 & ~v15) + v20;
    HIDWORD(v24) = v26;
    LODWORD(v24) = v26;
    v27 = v24 >> 27;
    v29 = __PAIR64__(v26, __ROR4__(v19, 2));
    v28 = v26 & v29;
    v542 = bswap32(a3[4]);
    LODWORD(v29) = v26;
    v30 = v29 >> 2;
    v31 = bswap32(a3[3]);
    v32 = v12 + 1518500249 + v31 + (v23 | v17 & ~v19) + v27;
    HIDWORD(v29) = v32;
    LODWORD(v29) = v32;
    v33 = v17 + 1518500249 + v542 + (v28 | v21 & ~v26) + (v29 >> 27);
    HIDWORD(v29) = v33;
    LODWORD(v29) = v33;
    v34 = v29 >> 27;
    v36 = __PAIR64__(v32, __ROR4__(v26, 2));
    v35 = v32 & v36;
    LODWORD(v36) = v32;
    v37 = v36 >> 2;
    v39 = __PAIR64__(v33, __ROR4__(v32, 2));
    v38 = v33 & v39;
    v40 = bswap32(a3[5]);
    v41 = v35 | v25 & ~v32;
    LODWORD(v39) = v33;
    v42 = v39 >> 2;
    v43 = v21 + 1518500249 + v40 + v41 + v34;
    HIDWORD(v39) = v43;
    LODWORD(v39) = v43;
    v44 = v39 >> 27;
    v45 = bswap32(a3[6]);
    HIDWORD(v39) = v43;
    LODWORD(v39) = v43;
    v46 = v39 >> 2;
    v47 = v25 + 1518500249 + v45 + (v38 | v30 & ~v33) + v44;
    HIDWORD(v39) = v47;
    LODWORD(v39) = v47;
    v48 = v39 >> 27;
    v49 = __PAIR64__(v47, __ROR4__(v33, 2));
    v535 = v45;
    v538 = bswap32(a3[7]);
    v50 = v43 & v49 | v37 & ~v43;
    LODWORD(v49) = v47;
    v51 = v49 >> 2;
    v52 = v30 + 1518500249 + v538 + v50 + v48;
    HIDWORD(v49) = v52;
    LODWORD(v49) = v52;
    v53 = v49 >> 27;
    v54 = v47 & __ROR4__(v43, 2);
    v56 = __PAIR64__(v52, __ROR4__(v47, 2));
    v55 = v52 & v56;
    LODWORD(v56) = v52;
    v57 = v56 >> 2;
    v58 = bswap32(a3[8]);
    v59 = v37 + 1518500249 + v58 + (v54 | v42 & ~v47) + v53;
    HIDWORD(v56) = v59;
    LODWORD(v56) = v59;
    v60 = v56 >> 27;
    v61 = bswap32(a3[13]);
    v62 = v22 ^ v11 ^ v58 ^ v61;
    HIDWORD(v56) = v62;
    LODWORD(v56) = v62;
    v63 = v56 >> 31;
    v65 = __PAIR64__(v59, __ROR4__(v52, 2));
    v64 = v59 & v65;
    v66 = bswap32(a3[9]);
    LODWORD(v65) = v59;
    v67 = v65 >> 2;
    v68 = v42 + 1518500249 + v66 + (v55 | v46 & ~v52) + v60;
    HIDWORD(v65) = v68;
    LODWORD(v65) = v68;
    v69 = v65 >> 27;
    HIDWORD(v65) = v68;
    LODWORD(v65) = v68;
    v70 = v65 >> 2;
    v532 = bswap32(a3[10]);
    v71 = v46 + 1518500249 + v532 + (v64 | v51 & ~v59) + v69;
    HIDWORD(v65) = v71;
    LODWORD(v65) = v71;
    v72 = v65 >> 27;
    v73 = __PAIR64__(v71, __ROR4__(v59, 2));
    v74 = v68 & v73 | v57 & ~v68;
    LODWORD(v73) = v71;
    v75 = v73 >> 2;
    v521 = bswap32(a3[11]);
    v76 = v51 + 1518500249 + v521 + v74 + v72;
    HIDWORD(v73) = v76;
    LODWORD(v73) = v76;
    v77 = v73 >> 27;
    v78 = __PAIR64__(v76, __ROR4__(v68, 2));
    v79 = v71 & v78 | v67 & ~v71;
    LODWORD(v78) = v76;
    v80 = v78 >> 2;
    v524 = bswap32(a3[12]);
    v81 = v57 + 1518500249 + v524 + v79 + v77;
    HIDWORD(v78) = v81;
    LODWORD(v78) = v81;
    v82 = v78 >> 27;
    v83 = v76 & __ROR4__(v71, 2);
    v84 = a3[15];
    v85 = bswap32(a3[14]);
    v86 = v70 & ~v76;
    v88 = __PAIR64__(v81, __ROR4__(v76, 2));
    v87 = v81 & v88;
    v89 = v61;
    v520 = v61;
    v90 = v67 + 1518500249 + v61 + (v83 | v86);
    LODWORD(v88) = v81;
    v91 = v88 >> 2;
    v92 = v90 + v82;
    v93 = v31;
    v94 = v31 ^ v14 ^ v66 ^ v85;
    HIDWORD(v88) = v92;
    LODWORD(v88) = v92;
    v95 = v88 >> 27;
    HIDWORD(v88) = v94;
    LODWORD(v88) = v94;
    v529 = v88 >> 31;
    HIDWORD(v88) = v92;
    LODWORD(v88) = v92;
    v96 = v88 >> 2;
    v97 = v70 + 1518500249 + v85 + (v87 | v75 & ~v81) + v95;
    HIDWORD(v88) = v97;
    LODWORD(v88) = v97;
    v98 = v88 >> 27;
    v99 = bswap32(v84);
    v100 = v542 ^ v22 ^ v532 ^ v99;
    v102 = __PAIR64__(v100, __ROR4__(v92, 2));
    v101 = v97 & v102;
    LODWORD(v102) = v100;
    v522 = v102 >> 31;
    v103 = v92 & __ROR4__(v81, 2) | v80 & ~v92;
    HIDWORD(v102) = v97;
    LODWORD(v102) = v97;
    v104 = v102 >> 2;
    v105 = v75 + 1518500249 + v99 + v103 + v98;
    HIDWORD(v102) = v105;
    LODWORD(v102) = v105;
    v106 = v102 >> 27;
    v108 = __PAIR64__(v105, __ROR4__(v97, 2));
    v107 = v105 & v108;
    LODWORD(v108) = v105;
    v109 = v108 >> 2;
    v110 = v80 + v63 + 1518500249 + (v101 | v91 & ~v97) + v106;
    HIDWORD(v108) = v110;
    LODWORD(v108) = v110;
    v111 = v108 >> 27;
    v112 = v62;
    v113 = v40 ^ v93 ^ v521 ^ __ROR4__(v62, 31);
    HIDWORD(v108) = v113;
    LODWORD(v108) = v113;
    v114 = v108 >> 31;
    v115 = v110 & __ROR4__(v105, 2);
    v117 = __PAIR64__(v110, __ROR4__(v94, 31));
    v116 = v535 ^ v542 ^ v524 ^ v117;
    LODWORD(v117) = v110;
    v118 = v117 >> 2;
    v119 = v91 + v529 + 1518500249 + (v107 | v96 & ~v105) + v111;
    HIDWORD(v117) = v119;
    LODWORD(v117) = v119;
    v120 = v117 >> 27;
    HIDWORD(v117) = v116;
    LODWORD(v117) = v116;
    v543 = v117 >> 31;
    v121 = v538 ^ v40 ^ v89 ^ __ROR4__(v100, 31);
    v123 = __PAIR64__(v119, __ROR4__(v110, 2));
    v122 = v119 & v123;
    LODWORD(v123) = v119;
    v124 = v123 >> 2;
    v125 = v96 + v522 + 1518500249 + (v115 | v104 & ~v110) + v120;
    v126 = v122 | v109 & ~v119;
    HIDWORD(v123) = v125;
    LODWORD(v123) = v125;
    v127 = v123 >> 27;
    HIDWORD(v123) = v121;
    LODWORD(v123) = v121;
    v128 = v123 >> 31;
    v129 = v114 + 1518500249 + v104;
    HIDWORD(v123) = v125;
    LODWORD(v123) = v125;
    v130 = v123 >> 2;
    v131 = v129 + v126 + v127;
    HIDWORD(v123) = v131;
    LODWORD(v123) = v131;
    v132 = v123 >> 27;
    HIDWORD(v123) = v131;
    LODWORD(v123) = v131;
    v133 = v123 >> 2;
    v135 = v543 + 1859775393 + v109 + (v124 ^ __ROR4__(v110, 2) ^ v125);
    LODWORD(v123) = v58 ^ v535 ^ v85 ^ __ROR4__(v113, 31);
    v134 = v123;
    HIDWORD(v123) = v123;
    v136 = v123 >> 31;
    v137 = v133 ^ __ROR4__(v125, 2);
    v138 = v135 + v132;
    HIDWORD(v123) = v138;
    LODWORD(v123) = v138;
    v139 = v123 >> 27;
    v141 = __PAIR64__(v138, __ROR4__(v116, 31));
    v140 = v66 ^ v538 ^ v99 ^ v141;
    v142 = v128 + 1859775393 + v118 + (v130 ^ __ROR4__(v119, 2) ^ v131);
    LODWORD(v141) = v138;
    v143 = v141 >> 2;
    v144 = v142 + v139;
    HIDWORD(v141) = v140;
    LODWORD(v141) = v140;
    v527 = v141 >> 31;
    v146 = __PAIR64__(v144, __ROR4__(v131, 2));
    v145 = v143 ^ v146;
    v147 = v136 + 1859775393 + v124 + (v137 ^ v138);
    v148 = v527 + 1859775393 + v130;
    LODWORD(v146) = v144;
    v149 = v146 >> 27;
    HIDWORD(v146) = v144;
    LODWORD(v146) = v144;
    v150 = v146 >> 2;
    v151 = v532 ^ v58 ^ __ROR4__(v112, 31) ^ __ROR4__(v121, 31);
    v152 = v147 + v149;
    HIDWORD(v146) = v151;
    LODWORD(v146) = v151;
    v523 = v146 >> 31;
    v153 = v148 + (v145 ^ v144);
    HIDWORD(v146) = v152;
    LODWORD(v146) = v152;
    v154 = v146 >> 27;
    v156 = __PAIR64__(v152, __ROR4__(v138, 2));
    v155 = v150 ^ v156;
    v157 = v153 + v154;
    v158 = v523 + 1859775393 + v133;
    LODWORD(v156) = v152;
    v159 = v156 >> 2;
    v161 = __PAIR64__(v157, __ROR4__(v94, 31));
    v160 = v521 ^ v66 ^ v161;
    LODWORD(v161) = v157;
    v162 = v158 + (v155 ^ v152) + (v161 >> 27);
    LODWORD(v161) = v160 ^ __ROR4__(v134, 31);
    v163 = v161;
    HIDWORD(v161) = v161;
    v164 = v161 >> 31;
    v165 = __PAIR64__(v157, __ROR4__(v144, 2));
    v166 = v159 ^ v165 ^ v157;
    LODWORD(v165) = v157;
    v167 = v165 >> 2;
    LODWORD(v165) = v524 ^ v532 ^ __ROR4__(v100, 31) ^ __ROR4__(v140, 31);
    v168 = v165;
    HIDWORD(v165) = v165;
    v539 = v165 >> 31;
    HIDWORD(v165) = v162;
    LODWORD(v165) = v162;
    v169 = v164 + 1859775393 + v143 + v166 + (v165 >> 27);
    v171 = __PAIR64__(v169, __ROR4__(v152, 2));
    v170 = v167 ^ v171;
    LODWORD(v171) = v169;
    v173 = v539 + 1859775393 + v150 + (v170 ^ v162) + (v171 >> 27);
    LODWORD(v171) = v520 ^ v521 ^ __ROR4__(v113, 31) ^ __ROR4__(v151, 31);
    v172 = v171;
    HIDWORD(v171) = v171;
    v174 = v171 >> 31;
    v175 = v174 + 1859775393 + v159;
    HIDWORD(v171) = v162;
    LODWORD(v171) = v162;
    v176 = v171 >> 2;
    v177 = __PAIR64__(v173, __ROR4__(v157, 2));
    v178 = v175 + (v176 ^ v177 ^ v169);
    LODWORD(v177) = v173;
    v179 = v178 + (v177 >> 27);
    LODWORD(v177) = v85 ^ v524 ^ __ROR4__(v116, 31) ^ __ROR4__(v163, 31);
    v180 = v177;
    HIDWORD(v177) = v177;
    v181 = (v177 >> 31) + 1859775393 + v167;
    HIDWORD(v177) = v169;
    LODWORD(v177) = v169;
    v182 = v177 >> 2;
    v183 = __PAIR64__(v179, __ROR4__(v162, 2));
    v184 = v181 + (v182 ^ v183 ^ v173);
    LODWORD(v183) = v179;
    v186 = v184 + (v183 >> 27);
    LODWORD(v183) = v99 ^ v520 ^ __ROR4__(v121, 31) ^ __ROR4__(v168, 31);
    v185 = v183;
    HIDWORD(v183) = v183;
    v536 = v183 >> 31;
    HIDWORD(v183) = v173;
    LODWORD(v183) = v173;
    v187 = v183 >> 2;
    v188 = __PAIR64__(v186, __ROR4__(v169, 2));
    v189 = v536 + 1859775393 + v176 + (v187 ^ v188 ^ v179);
    LODWORD(v188) = v186;
    v190 = v189 + (v188 >> 27);
    LODWORD(v188) = v85 ^ __ROR4__(v112, 31) ^ __ROR4__(v134, 31) ^ __ROR4__(v172, 31);
    v191 = v188;
    HIDWORD(v188) = v188;
    v192 = v188 >> 31;
    v193 = v192 + 1859775393 + v182;
    HIDWORD(v188) = v179;
    LODWORD(v188) = v179;
    v194 = v188 >> 2;
    v195 = v193 + (v194 ^ __ROR4__(v173, 2) ^ v186);
    v197 = __PAIR64__(v190, __ROR4__(v94, 31));
    v196 = v99 ^ v197;
    LODWORD(v197) = v190;
    v198 = v196 ^ __ROR4__(v140, 31) ^ __ROR4__(v180, 31);
    v199 = v195 + (v197 >> 27);
    HIDWORD(v197) = v198;
    LODWORD(v197) = v198;
    v200 = (v197 >> 31) + 1859775393 + v187;
    HIDWORD(v197) = v186;
    LODWORD(v197) = v186;
    v201 = v197 >> 2;
    v202 = __PAIR64__(v199, __ROR4__(v179, 2));
    v203 = v200 + (v201 ^ v202 ^ v190);
    LODWORD(v202) = v199;
    v204 = v203 + (v202 >> 27);
    LODWORD(v202) = v522 ^ __ROR4__(v112, 31) ^ __ROR4__(v151, 31) ^ __ROR4__(v185, 31);
    v205 = v202;
    HIDWORD(v202) = v202;
    v533 = v202 >> 31;
    v206 = v533 + 1859775393 + v194;
    HIDWORD(v202) = v190;
    LODWORD(v202) = v190;
    v207 = v202 >> 2;
    v208 = __PAIR64__(v204, __ROR4__(v186, 2));
    v209 = v206 + (v207 ^ v208 ^ v199);
    LODWORD(v208) = v204;
    v211 = v209 + (v208 >> 27);
    LODWORD(v208) = v529 ^ __ROR4__(v113, 31) ^ __ROR4__(v163, 31) ^ __ROR4__(v191, 31);
    v210 = v208;
    HIDWORD(v208) = v208;
    v525 = v208 >> 31;
    HIDWORD(v208) = v199;
    LODWORD(v208) = v199;
    v212 = v208 >> 2;
    v213 = __PAIR64__(v211, __ROR4__(v190, 2));
    v214 = v525 + 1859775393 + v201 + (v212 ^ v213 ^ v204);
    LODWORD(v213) = v211;
    v215 = v214 + (v213 >> 27);
    LODWORD(v213) = v522 ^ __ROR4__(v116, 31) ^ __ROR4__(v168, 31) ^ __ROR4__(v198, 31);
    v216 = v213;
    HIDWORD(v213) = v213;
    v217 = (v213 >> 31) + 1859775393 + v207;
    HIDWORD(v213) = v204;
    LODWORD(v213) = v204;
    v218 = v213 >> 2;
    v219 = __PAIR64__(v215, __ROR4__(v199, 2));
    v220 = v217 + (v218 ^ v219 ^ v211);
    LODWORD(v219) = v215;
    v222 = v220 + (v219 >> 27);
    LODWORD(v219) = v128 ^ __ROR4__(v113, 31) ^ __ROR4__(v172, 31) ^ __ROR4__(v205, 31);
    v221 = v219;
    HIDWORD(v219) = v219;
    v530 = v219 >> 31;
    HIDWORD(v219) = v211;
    LODWORD(v219) = v211;
    v223 = v219 >> 2;
    v224 = __PAIR64__(v222, __ROR4__(v204, 2));
    v225 = v530 + 1859775393 + v212 + (v223 ^ v224 ^ v215);
    LODWORD(v224) = v222;
    v226 = v225 + (v224 >> 27);
    LODWORD(v224) = v543 ^ __ROR4__(v134, 31) ^ __ROR4__(v180, 31) ^ __ROR4__(v210, 31);
    v227 = v224;
    HIDWORD(v224) = v224;
    v228 = v224 >> 31;
    HIDWORD(v224) = v215;
    LODWORD(v224) = v215;
    v229 = v224 >> 2;
    v230 = v228 + 1859775393 + v218 + (v229 ^ __ROR4__(v211, 2) ^ v222);
    v232 = __PAIR64__(v226, __ROR4__(v140, 31));
    v231 = v128 ^ v232;
    LODWORD(v232) = v226;
    v234 = v230 + (v232 >> 27);
    LODWORD(v232) = v231 ^ __ROR4__(v185, 31) ^ __ROR4__(v216, 31);
    v233 = v232;
    HIDWORD(v232) = v232;
    v235 = (v232 >> 31) + 1859775393 + v223;
    HIDWORD(v232) = v222;
    LODWORD(v232) = v222;
    v236 = v232 >> 2;
    v237 = __PAIR64__(v234, __ROR4__(v215, 2));
    v238 = v235 + (v236 ^ v237 ^ v226);
    LODWORD(v237) = v234;
    v239 = v238 + (v237 >> 27);
    LODWORD(v237) = v523 ^ __ROR4__(v134, 31) ^ __ROR4__(v191, 31) ^ __ROR4__(v221, 31);
    v240 = v237;
    HIDWORD(v237) = v237;
    v544 = v237 >> 31;
    v241 = v544 + 1859775393 + v229;
    HIDWORD(v237) = v226;
    LODWORD(v237) = v226;
    v242 = v237 >> 2;
    v243 = __PAIR64__(v239, __ROR4__(v222, 2));
    v244 = v241 + (v242 ^ v243 ^ v234);
    LODWORD(v243) = v239;
    v246 = v244 + (v243 >> 27);
    LODWORD(v243) = v527 ^ __ROR4__(v163, 31) ^ __ROR4__(v198, 31) ^ __ROR4__(v227, 31);
    v245 = v243;
    HIDWORD(v243) = v243;
    v247 = v243 >> 31;
    HIDWORD(v243) = v234;
    LODWORD(v243) = v234;
    v248 = v243 >> 2;
    v249 = __PAIR64__(v246, __ROR4__(v226, 2));
    v250 = v247 + 1859775393 + v236 + (v248 ^ v249 ^ v239);
    LODWORD(v249) = v246;
    v251 = v250 + (v249 >> 27);
    v252 = v523 ^ __ROR4__(v168, 31) ^ __ROR4__(v205, 31) ^ __ROR4__(v233, 31);
    v253 = __PAIR64__(v252, __ROR4__(v239, 2));
    v254 = (v246 | __ROR4__(v239, 2)) & __ROR4__(v234, 2) | v246 & v253;
    LODWORD(v253) = v252;
    v255 = (v253 >> 31) - 1894007588;
    HIDWORD(v253) = v239;
    LODWORD(v253) = v239;
    v256 = v253 >> 2;
    v257 = v255 + v242;
    v259 = __PAIR64__(v251, __ROR4__(v210, 31));
    v258 = v174 ^ __ROR4__(v163, 31) ^ v259;
    LODWORD(v259) = v251;
    v260 = v259 >> 27;
    v261 = v257 + v254;
    v262 = v258 ^ __ROR4__(v240, 31);
    v264 = __PAIR64__(v262, __ROR4__(v239, 2));
    v263 = (v251 | __ROR4__(v246, 2)) & v264;
    LODWORD(v264) = v262;
    v265 = v264 >> 31;
    v266 = v261 + v260;
    v267 = __PAIR64__(v266, __ROR4__(v246, 2));
    v268 = v263 | v251 & v267;
    LODWORD(v267) = v266;
    v269 = v265 - 1894007588 + v248 + v268;
    v270 = v539 ^ __ROR4__(v180, 31) ^ __ROR4__(v216, 31) ^ __ROR4__(v245, 31);
    v271 = v269 + (v267 >> 27);
    v272 = __PAIR64__(v270, __ROR4__(v246, 2));
    v273 = (v266 | __ROR4__(v251, 2)) & v272 | v266 & __ROR4__(v251, 2);
    LODWORD(v272) = v270;
    v274 = v272 >> 31;
    HIDWORD(v272) = v246;
    LODWORD(v272) = v246;
    v275 = v272 >> 2;
    HIDWORD(v272) = v271;
    LODWORD(v272) = v271;
    v276 = v274 - 1894007588 + v256 + v273 + (v272 >> 27);
    v277 = v174 ^ __ROR4__(v185, 31) ^ __ROR4__(v221, 31) ^ __ROR4__(v252, 31);
    v278 = __PAIR64__(v277, __ROR4__(v251, 2));
    v279 = (v271 | __ROR4__(v266, 2)) & v278 | v271 & __ROR4__(v266, 2);
    LODWORD(v278) = v277;
    v280 = v278 >> 31;
    HIDWORD(v278) = v251;
    LODWORD(v278) = v251;
    v281 = v278 >> 2;
    v282 = v280 - 1894007588 + v275;
    HIDWORD(v278) = v276;
    LODWORD(v278) = v276;
    v283 = v278 >> 27;
    LODWORD(v278) = v192 ^ __ROR4__(v180, 31) ^ __ROR4__(v227, 31) ^ __ROR4__(v262, 31);
    v284 = v278;
    HIDWORD(v278) = v278;
    v540 = v278 >> 31;
    v285 = v282 + v279 + v283;
    v286 = __PAIR64__(v266, __ROR4__(v266, 2));
    v287 = (v276 | __ROR4__(v271, 2)) & v286 | v276 & __ROR4__(v271, 2);
    LODWORD(v286) = v266;
    v288 = v286 >> 2;
    HIDWORD(v286) = v285;
    LODWORD(v286) = v285;
    v289 = v540 - 1894007588 + v281 + v287 + (v286 >> 27);
    v290 = v536 ^ __ROR4__(v198, 31) ^ __ROR4__(v233, 31) ^ __ROR4__(v270, 31);
    v291 = __PAIR64__(v290, __ROR4__(v271, 2));
    v292 = (v285 | __ROR4__(v276, 2)) & v291 | v285 & __ROR4__(v276, 2);
    LODWORD(v291) = v290;
    v528 = v291 >> 31;
    HIDWORD(v291) = v271;
    LODWORD(v291) = v271;
    v293 = v291 >> 2;
    HIDWORD(v291) = v289;
    LODWORD(v291) = v289;
    v294 = v528 - 1894007588 + v288 + v292 + (v291 >> 27);
    HIDWORD(v291) = v276;
    LODWORD(v291) = v276;
    v295 = v291 >> 2;
    v296 = v192 ^ __ROR4__(v205, 31) ^ __ROR4__(v240, 31) ^ __ROR4__(v277, 31);
    v297 = __PAIR64__(v296, __ROR4__(v285, 2));
    v298 = (v289 | __ROR4__(v285, 2)) & __ROR4__(v276, 2) | v289 & v297;
    LODWORD(v297) = v296;
    v299 = (v297 >> 31) - 1894007588;
    HIDWORD(v297) = v285;
    LODWORD(v297) = v285;
    v300 = v297 >> 2;
    v301 = v299 + v293;
    v303 = __PAIR64__(v294, __ROR4__(v245, 31));
    v302 = v525 ^ __ROR4__(v198, 31) ^ v303;
    LODWORD(v303) = v294;
    v304 = v303 >> 27;
    v305 = v302 ^ __ROR4__(v284, 31);
    v307 = __PAIR64__(v305, __ROR4__(v285, 2));
    v306 = (v294 | __ROR4__(v289, 2)) & v307;
    LODWORD(v307) = v305;
    v537 = v307 >> 31;
    v308 = v301 + v298 + v304;
    v309 = __PAIR64__(v308, __ROR4__(v289, 2));
    v310 = v306 | v294 & v309;
    LODWORD(v309) = v308;
    v311 = v533 ^ __ROR4__(v216, 31) ^ __ROR4__(v252, 31) ^ __ROR4__(v290, 31);
    v312 = v537 - 1894007588 + v295 + v310 + (v309 >> 27);
    v313 = __PAIR64__(v311, __ROR4__(v289, 2));
    v314 = (v308 | __ROR4__(v294, 2)) & v313 | v308 & __ROR4__(v294, 2);
    LODWORD(v313) = v311;
    v315 = v313 >> 31;
    HIDWORD(v313) = v289;
    LODWORD(v313) = v289;
    v316 = v313 >> 2;
    HIDWORD(v313) = v312;
    LODWORD(v313) = v312;
    v317 = v315 - 1894007588 + v300 + v314 + (v313 >> 27);
    v318 = v525 ^ __ROR4__(v221, 31) ^ __ROR4__(v262, 31) ^ __ROR4__(v296, 31);
    v319 = __PAIR64__(v318, __ROR4__(v294, 2));
    v320 = (v312 | __ROR4__(v308, 2)) & v319 | v312 & __ROR4__(v308, 2);
    LODWORD(v319) = v318;
    v321 = v319 >> 31;
    HIDWORD(v319) = v294;
    LODWORD(v319) = v294;
    v322 = v319 >> 2;
    v323 = v321 - 1894007588 + v316;
    HIDWORD(v319) = v317;
    LODWORD(v319) = v317;
    v324 = v319 >> 27;
    LODWORD(v319) = v228 ^ __ROR4__(v216, 31) ^ __ROR4__(v270, 31) ^ __ROR4__(v305, 31);
    v325 = v319;
    HIDWORD(v319) = v319;
    v534 = v319 >> 31;
    v326 = v323 + v320 + v324;
    v327 = __PAIR64__(v308, __ROR4__(v308, 2));
    v328 = (v317 | __ROR4__(v312, 2)) & v327 | v317 & __ROR4__(v312, 2);
    LODWORD(v327) = v308;
    v329 = v327 >> 2;
    HIDWORD(v327) = v326;
    LODWORD(v327) = v326;
    v330 = v534 - 1894007588 + v322 + v328 + (v327 >> 27);
    v331 = v530 ^ __ROR4__(v233, 31) ^ __ROR4__(v277, 31) ^ __ROR4__(v311, 31);
    v332 = __PAIR64__(v331, __ROR4__(v312, 2));
    v333 = (v326 | __ROR4__(v317, 2)) & v332 | v326 & __ROR4__(v317, 2);
    LODWORD(v332) = v331;
    v334 = v332 >> 31;
    HIDWORD(v332) = v312;
    LODWORD(v332) = v312;
    v335 = v332 >> 2;
    HIDWORD(v332) = v330;
    LODWORD(v332) = v330;
    v336 = v334 - 1894007588 + v329 + v333 + (v332 >> 27);
    HIDWORD(v332) = v317;
    LODWORD(v332) = v317;
    v337 = v332 >> 2;
    v338 = v228 ^ __ROR4__(v240, 31) ^ __ROR4__(v284, 31) ^ __ROR4__(v318, 31);
    v339 = __PAIR64__(v338, __ROR4__(v326, 2));
    v340 = (v330 | __ROR4__(v326, 2)) & __ROR4__(v317, 2) | v330 & v339;
    LODWORD(v339) = v338;
    v341 = (v339 >> 31) - 1894007588;
    HIDWORD(v339) = v326;
    LODWORD(v339) = v326;
    v342 = v339 >> 2;
    v343 = v341 + v335;
    v345 = __PAIR64__(v336, __ROR4__(v290, 31));
    v344 = v247 ^ __ROR4__(v233, 31) ^ v345;
    LODWORD(v345) = v336;
    v346 = v345 >> 27;
    v347 = v343 + v340;
    v348 = v344 ^ __ROR4__(v325, 31);
    v350 = __PAIR64__(v348, __ROR4__(v326, 2));
    v349 = (v336 | __ROR4__(v330, 2)) & v350;
    LODWORD(v350) = v348;
    v531 = v350 >> 31;
    v351 = v347 + v346;
    v352 = __PAIR64__(v351, __ROR4__(v330, 2));
    v353 = v349 | v336 & v352;
    LODWORD(v352) = v351;
    v354 = v544 ^ __ROR4__(v252, 31) ^ __ROR4__(v296, 31) ^ __ROR4__(v331, 31);
    v355 = v531 - 1894007588 + v337 + v353 + (v352 >> 27);
    v356 = __PAIR64__(v354, __ROR4__(v330, 2));
    v357 = (v351 | __ROR4__(v336, 2)) & v356 | v351 & __ROR4__(v336, 2);
    LODWORD(v356) = v354;
    v358 = v356 >> 31;
    HIDWORD(v356) = v330;
    LODWORD(v356) = v330;
    v359 = v356 >> 2;
    HIDWORD(v356) = v355;
    LODWORD(v356) = v355;
    v360 = v358 - 1894007588 + v342 + v357 + (v356 >> 27);
    v361 = v247 ^ __ROR4__(v262, 31) ^ __ROR4__(v305, 31) ^ __ROR4__(v338, 31);
    v362 = __PAIR64__(v361, __ROR4__(v336, 2));
    v363 = (v355 | __ROR4__(v351, 2)) & v362 | v355 & __ROR4__(v351, 2);
    LODWORD(v362) = v361;
    v364 = v362 >> 31;
    HIDWORD(v362) = v336;
    LODWORD(v362) = v336;
    v365 = v362 >> 2;
    v366 = v364 - 1894007588 + v359;
    HIDWORD(v362) = v360;
    LODWORD(v362) = v360;
    v367 = v362 >> 27;
    v368 = v366 + v363;
    v369 = v274 ^ __ROR4__(v252, 31) ^ __ROR4__(v311, 31) ^ __ROR4__(v348, 31);
    HIDWORD(v362) = v369;
    LODWORD(v362) = v369;
    v370 = v362 >> 31;
    v371 = v368 + v367;
    v372 = __PAIR64__(v351, __ROR4__(v351, 2));
    v373 = (v360 | __ROR4__(v355, 2)) & v372 | v360 & __ROR4__(v355, 2);
    LODWORD(v372) = v351;
    v374 = v372 >> 2;
    HIDWORD(v372) = v371;
    LODWORD(v372) = v371;
    v375 = v370 - 1894007588 + v365 + v373;
    v376 = v265 ^ __ROR4__(v277, 31);
    v377 = v375 + (v372 >> 27);
    v378 = v376 ^ __ROR4__(v318, 31) ^ __ROR4__(v354, 31);
    v379 = __PAIR64__(v378, __ROR4__(v355, 2));
    v380 = (v371 | __ROR4__(v360, 2)) & v379 | v371 & __ROR4__(v360, 2);
    LODWORD(v379) = v378;
    v526 = v379 >> 31;
    HIDWORD(v379) = v355;
    LODWORD(v379) = v355;
    v381 = v379 >> 2;
    HIDWORD(v379) = v377;
    LODWORD(v379) = v377;
    v382 = v526 - 1894007588 + v374 + v380 + (v379 >> 27);
    HIDWORD(v379) = v360;
    LODWORD(v379) = v360;
    v383 = v379 >> 2;
    v384 = v274 ^ __ROR4__(v284, 31) ^ __ROR4__(v325, 31) ^ __ROR4__(v361, 31);
    v385 = __PAIR64__(v384, __ROR4__(v371, 2));
    v386 = (v377 | __ROR4__(v371, 2)) & __ROR4__(v360, 2) | v377 & v385;
    LODWORD(v385) = v384;
    v387 = (v385 >> 31) - 1894007588;
    HIDWORD(v385) = v371;
    LODWORD(v385) = v371;
    v388 = v385 >> 2;
    v390 = __PAIR64__(v382, __ROR4__(v331, 31));
    v389 = v528 ^ __ROR4__(v277, 31) ^ v390;
    LODWORD(v390) = v382;
    v391 = v390 >> 27;
    v392 = v387 + v381 + v386;
    v393 = v389 ^ __ROR4__(v369, 31);
    v395 = __PAIR64__(v393, __ROR4__(v371, 2));
    v394 = (v382 | __ROR4__(v377, 2)) & v395;
    LODWORD(v395) = v393;
    v545 = v395 >> 31;
    v396 = v392 + v391;
    LODWORD(v395) = v540 ^ __ROR4__(v296, 31) ^ __ROR4__(v338, 31) ^ __ROR4__(v378, 31);
    v397 = v395;
    HIDWORD(v395) = v395;
    v398 = v395 >> 31;
    HIDWORD(v395) = v396;
    LODWORD(v395) = v396;
    v399 = v545 - 1894007588 + v383 + (v394 | v382 & __ROR4__(v377, 2)) + (v395 >> 27);
    result = 3395469782;
    HIDWORD(v395) = v382;
    LODWORD(v395) = v382;
    v401 = v395 >> 2;
    v403 = __PAIR64__(v399, __ROR4__(v305, 31));
    v402 = v528 ^ v403;
    LODWORD(v403) = v399;
    v404 = v398 - 899497514 + v388 + (v401 ^ __ROR4__(v377, 2) ^ v396) + (v403 >> 27);
    LODWORD(v403) = v402 ^ __ROR4__(v348, 31) ^ __ROR4__(v384, 31);
    v405 = v403;
    HIDWORD(v403) = v403;
    v406 = v403 >> 31;
    HIDWORD(v403) = v377;
    LODWORD(v403) = v377;
    v407 = v406 - 899497514 + (v403 >> 2);
    HIDWORD(v403) = v396;
    LODWORD(v403) = v396;
    v408 = v403 >> 2;
    v409 = __PAIR64__(v404, __ROR4__(v382, 2));
    v410 = v407 + (v408 ^ v409 ^ v399);
    LODWORD(v409) = v404;
    v411 = v410 + (v409 >> 27);
    v412 = v315 ^ __ROR4__(v296, 31) ^ __ROR4__(v354, 31) ^ __ROR4__(v393, 31);
    HIDWORD(v409) = v412;
    LODWORD(v409) = v412;
    v541 = v409 >> 31;
    HIDWORD(v409) = v399;
    LODWORD(v409) = v399;
    v413 = v409 >> 2;
    v414 = __PAIR64__(v411, __ROR4__(v396, 2));
    v415 = v541 - 899497514 + v401 + (v413 ^ v414 ^ v404);
    LODWORD(v414) = v411;
    v416 = v415 + (v414 >> 27);
    LODWORD(v414) = v537 ^ __ROR4__(v318, 31) ^ __ROR4__(v361, 31) ^ __ROR4__(v397, 31);
    v417 = v414;
    HIDWORD(v414) = v414;
    v418 = v414 >> 31;
    v419 = v418 - 899497514 + v408;
    HIDWORD(v414) = v404;
    LODWORD(v414) = v404;
    v420 = v414 >> 2;
    v421 = v419 + (v420 ^ __ROR4__(v399, 2) ^ v411);
    v423 = __PAIR64__(v416, __ROR4__(v325, 31));
    v422 = v315 ^ v423;
    LODWORD(v423) = v416;
    v424 = v421 + (v423 >> 27);
    v425 = v422 ^ __ROR4__(v369, 31) ^ __ROR4__(v405, 31);
    HIDWORD(v423) = v425;
    LODWORD(v423) = v425;
    v426 = (v423 >> 31) - 899497514;
    HIDWORD(v423) = v411;
    LODWORD(v423) = v411;
    v427 = v423 >> 2;
    v428 = __PAIR64__(v424, __ROR4__(v404, 2));
    v429 = v426 + v413 + (v427 ^ v428 ^ v416);
    LODWORD(v428) = v424;
    v430 = v428 >> 27;
    v432 = __PAIR64__(v416, __ROR4__(v378, 31));
    v431 = v334 ^ __ROR4__(v318, 31) ^ v432;
    LODWORD(v432) = v416;
    v433 = v432 >> 2;
    v435 = v429 + v430;
    LODWORD(v432) = v431 ^ __ROR4__(v412, 31);
    v434 = v432;
    HIDWORD(v432) = v432;
    v436 = (v432 >> 31) - 899497514 + v420;
    HIDWORD(v432) = v435;
    LODWORD(v432) = v435;
    v437 = v436 + (v433 ^ __ROR4__(v411, 2) ^ v424) + (v432 >> 27);
    v438 = v534 ^ __ROR4__(v338, 31) ^ __ROR4__(v384, 31) ^ __ROR4__(v417, 31);
    HIDWORD(v432) = v438;
    LODWORD(v432) = v438;
    v439 = (v432 >> 31) - 899497514;
    HIDWORD(v432) = v424;
    LODWORD(v432) = v424;
    v440 = v432 >> 2;
    v441 = __PAIR64__(v437, __ROR4__(v416, 2));
    v442 = v439 + v427 + (v440 ^ v441 ^ v435);
    LODWORD(v441) = v437;
    v443 = v442 + (v441 >> 27);
    LODWORD(v441) = v334 ^ __ROR4__(v348, 31) ^ __ROR4__(v393, 31) ^ __ROR4__(v425, 31);
    v444 = v441;
    HIDWORD(v441) = v441;
    v445 = (v441 >> 31) - 899497514 + v433;
    HIDWORD(v441) = v435;
    LODWORD(v441) = v435;
    v446 = v441 >> 2;
    v447 = __PAIR64__(v443, __ROR4__(v424, 2));
    v448 = v445 + (v446 ^ v447 ^ v437);
    LODWORD(v447) = v443;
    v449 = v448 + (v447 >> 27);
    LODWORD(v447) = v358 ^ __ROR4__(v338, 31) ^ __ROR4__(v397, 31) ^ __ROR4__(v434, 31);
    v450 = v447;
    HIDWORD(v447) = v447;
    v451 = (v447 >> 31) - 899497514;
    HIDWORD(v447) = v437;
    LODWORD(v447) = v437;
    v452 = v447 >> 2;
    v453 = __PAIR64__(v449, __ROR4__(v435, 2));
    v454 = v451 + v440 + (v452 ^ v453 ^ v443);
    LODWORD(v453) = v449;
    v455 = v454 + (v453 >> 27);
    LODWORD(v453) = v531 ^ __ROR4__(v361, 31) ^ __ROR4__(v405, 31) ^ __ROR4__(v438, 31);
    v456 = v453;
    HIDWORD(v453) = v453;
    v457 = (v453 >> 31) - 899497514 + v446;
    HIDWORD(v453) = v443;
    LODWORD(v453) = v443;
    v458 = v453 >> 2;
    v459 = __PAIR64__(v455, __ROR4__(v437, 2));
    v460 = v457 + (v458 ^ v459 ^ v449);
    LODWORD(v459) = v455;
    v461 = v460 + (v459 >> 27);
    LODWORD(v459) = v358 ^ __ROR4__(v369, 31) ^ __ROR4__(v412, 31) ^ __ROR4__(v444, 31);
    v462 = v459;
    HIDWORD(v459) = v459;
    v463 = (v459 >> 31) - 899497514;
    HIDWORD(v459) = v449;
    LODWORD(v459) = v449;
    v464 = v459 >> 2;
    v465 = __PAIR64__(v461, __ROR4__(v443, 2));
    v466 = v463 + v452 + (v464 ^ v465 ^ v455);
    LODWORD(v465) = v461;
    v467 = v465 >> 27;
    v469 = __PAIR64__(v455, __ROR4__(v417, 31));
    v468 = v526 ^ __ROR4__(v361, 31) ^ v469;
    LODWORD(v469) = v455;
    v470 = v469 >> 2;
    v471 = v468 ^ __ROR4__(v450, 31);
    v472 = v466 + v467;
    HIDWORD(v469) = v471;
    LODWORD(v469) = v471;
    v473 = (v469 >> 31) - 899497514 + v458;
    HIDWORD(v469) = v472;
    LODWORD(v469) = v472;
    v474 = v473 + (v470 ^ __ROR4__(v449, 2) ^ v461) + (v469 >> 27);
    v475 = v370 ^ __ROR4__(v384, 31) ^ __ROR4__(v425, 31) ^ __ROR4__(v456, 31);
    HIDWORD(v469) = v475;
    LODWORD(v469) = v475;
    v476 = (v469 >> 31) - 899497514;
    HIDWORD(v469) = v461;
    LODWORD(v469) = v461;
    v477 = v469 >> 2;
    v478 = __PAIR64__(v474, __ROR4__(v455, 2));
    v479 = v476 + v464 + (v477 ^ v478 ^ v472);
    LODWORD(v478) = v474;
    v480 = v479 + (v478 >> 27);
    LODWORD(v478) = v526 ^ __ROR4__(v393, 31) ^ __ROR4__(v434, 31) ^ __ROR4__(v462, 31);
    v481 = v478;
    HIDWORD(v478) = v478;
    v482 = (v478 >> 31) - 899497514 + v470;
    HIDWORD(v478) = v472;
    LODWORD(v478) = v472;
    v483 = v478 >> 2;
    v484 = __PAIR64__(v480, __ROR4__(v461, 2));
    v485 = v482 + (v483 ^ v484 ^ v474);
    LODWORD(v484) = v480;
    v486 = v485 + (v484 >> 27);
    v487 = v398 ^ __ROR4__(v384, 31) ^ __ROR4__(v438, 31) ^ __ROR4__(v471, 31);
    HIDWORD(v484) = v487;
    LODWORD(v484) = v487;
    v488 = (v484 >> 31) - 899497514;
    HIDWORD(v484) = v474;
    LODWORD(v484) = v474;
    v489 = v484 >> 2;
    v490 = __PAIR64__(v486, __ROR4__(v472, 2));
    v491 = v488 + v477 + (v489 ^ v490 ^ v480);
    LODWORD(v490) = v486;
    v492 = v491 + (v490 >> 27);
    LODWORD(v490) = v545 ^ __ROR4__(v405, 31) ^ __ROR4__(v444, 31) ^ __ROR4__(v475, 31);
    v493 = v490;
    HIDWORD(v490) = v490;
    v494 = (v490 >> 31) - 899497514 + v483;
    HIDWORD(v490) = v480;
    LODWORD(v490) = v480;
    v495 = v490 >> 2;
    v497 = __PAIR64__(v492, __ROR4__(v450, 31));
    v496 = v398 ^ __ROR4__(v412, 31) ^ v497;
    LODWORD(v497) = v492;
    v498 = v494 + (v495 ^ __ROR4__(v474, 2) ^ v486) + (v497 >> 27);
    v499 = v496 ^ __ROR4__(v481, 31);
    HIDWORD(v497) = v499;
    LODWORD(v497) = v499;
    v500 = (v497 >> 31) - 899497514;
    HIDWORD(v497) = v486;
    LODWORD(v497) = v486;
    v501 = v497 >> 2;
    v502 = __PAIR64__(v498, __ROR4__(v480, 2));
    v503 = v500 + v489 + (v501 ^ v502 ^ v492);
    LODWORD(v502) = v498;
    v504 = v503 + (v502 >> 27);
    LODWORD(v502) = v418 ^ __ROR4__(v405, 31) ^ __ROR4__(v456, 31) ^ __ROR4__(v487, 31);
    HIDWORD(v502) = v502;
    v505 = (v502 >> 31) - 899497514 + v495;
    HIDWORD(v502) = v492;
    LODWORD(v502) = v492;
    v506 = v502 >> 2;
    v508 = __PAIR64__(v504, __ROR4__(v462, 31));
    v507 = v541 ^ __ROR4__(v425, 31) ^ v508;
    LODWORD(v508) = v504;
    v509 = v505 + (v506 ^ __ROR4__(v486, 2) ^ v498) + (v508 >> 27);
    LODWORD(v508) = v507 ^ __ROR4__(v493, 31);
    HIDWORD(v508) = v508;
    v510 = (v508 >> 31) - 899497514;
    HIDWORD(v508) = v498;
    LODWORD(v508) = v498;
    v511 = v508 >> 2;
    v512 = __PAIR64__(v509, __ROR4__(v492, 2));
    v513 = v510 + v501 + (v511 ^ v512 ^ v504);
    LODWORD(v512) = v509;
    v514 = v513 + (v512 >> 27);
    LODWORD(v512) = v418 ^ __ROR4__(v434, 31) ^ __ROR4__(v471, 31) ^ __ROR4__(v499, 31);
    HIDWORD(v512) = v512;
    v515 = v546 - 899497514 + (v512 >> 31) + v506;
    HIDWORD(v512) = v504;
    LODWORD(v512) = v504;
    v516 = v512 >> 2;
    v517 = __PAIR64__(v514, __ROR4__(v498, 2));
    v518 = v515 + (v516 ^ v517 ^ v509);
    v553 = v514 + v552;
    LODWORD(v517) = v514;
    v7 = v518 + (v517 >> 27);
    HIDWORD(v517) = v509;
    LODWORD(v517) = v509;
    v6 = (v517 >> 2) + v551;
    v3 = v516 + v549;
    v5 = v553;
    v4 = v511 + v547;
    *a1 = v7;
    a1[1] = v553;
    a1[2] = v6;
    a1[3] = v516 + v549;
    a1[4] = v511 + v547;
    a3 = v550 + 16;
    a2 = v548 - 1;
  }

  while (v548 != 1);
  return result;
}

double ccmode_factory_xts_encrypt(void *a1, void *a2, uint64_t a3)
{
  v3 = a2[1];
  *a1 = ((2 * *a2 + 14) & 0xFFFFFFFFFFFFFFF0) + 16;
  a1[1] = ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  a1[2] = v3;
  a1[3] = ccmode_xts_init;
  a1[4] = ccmode_xts_key_sched;
  a1[5] = ccmode_xts_set_tweak;
  a1[6] = ccmode_xts_crypt;
  a1[7] = a2;
  a1[8] = a3;
  *&result = 21;
  a1[9] = 21;
  return result;
}

double mfi_info_init(uint64_t a1)
{
  v2 = ccec_cp_256();
  *a1 = v2;
  *(a1 + 8) = mfi_kex_ctx;
  *(a1 + 16) = mfi_peer_kex_ctx;
  v3 = ((cczp_bitlen(v2) + 7) >> 2) & 0x3FFFFFFFFFFFFFFELL;
  *(a1 + 24) = v2;
  *(a1 + 32) = ccsha256_di();
  *(a1 + 40) = v3;
  *(a1 + 48) = mfi_sign_ctx;
  *(a1 + 56) = mfi_peer_sign_ctx;
  *(a1 + 64) = 14;
  *(a1 + 72) = &mfi_session_keys_info;
  *(a1 + 80) = 200;
  *(a1 + 88) = mfi_session_keys_buffer;
  *(a1 + 96) = mfi_session_keys_derive;
  *(a1 + 104) = 16;
  *(a1 + 112) = mfi_mac_compute;
  *&result = 9;
  *(a1 + 120) = xmmword_299DA0510;
  *(a1 + 136) = mfi_sigma_compute_mac_and_digest;
  *(a1 + 144) = 16;
  *(a1 + 152) = mfi_aead_seal;
  *(a1 + 160) = mfi_aead_open;
  *(a1 + 168) = mfi_aead_next_iv;
  *(a1 + 176) = mfi_clear;
  return result;
}

void *ccsigma_mfi_nvm_info()
{
  mfi_info_init(&mfi_nvm_info);
  qword_2A14E75B0 = &mfi_nvm_session_keys_info;
  unk_2A14E75B8 = 144;
  return &mfi_nvm_info;
}

uint64_t mfi_mac_compute(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char *a5, void *a6)
{
  v12 = ccaes_cbc_encrypt_mode();
  v13 = *(*a1 + 104);

  return cccmac_one_shot_generate_internal(v12, a2, a3, a4, a5, v13, a6);
}

uint64_t ccnistkdf_ctr_cmac_fixed(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, unint64_t a5, char *a6, rsize_t a7, char *a8)
{
  v18 = timingsafe_enable_if_supported();
  v16 = ccnistkdf_ctr_cmac_fixed_internal(a1, a2, a3, a4, a5, a6, a7, a8);
  cc_disable_dit_with_sb(&v18);
  return v16;
}

uint64_t ccnistkdf_ctr_cmac_fixed_internal(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, unint64_t a5, char *a6, rsize_t a7, char *a8)
{
  v36 = *MEMORY[0x29EDCA608];
  if (!a7)
  {
    return 4294967289;
  }

  v11 = a1[1];
  v12 = a7 / v11;
  if (a7 % v11)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = a7 / v11;
  }

  result = 4294967289;
  if ((((a2 - 8) >> 3) | (32 * (a2 - 8))) <= 3u && !(v13 >> a2))
  {
    if (a3)
    {
      if (a4)
      {
        v15 = a8;
        if (a8)
        {
          v31 = v13;
          v32 = a7 % v11;
          v33 = &v30;
          v18 = (v11 + *a1 + 159) / 0x50;
          v19 = MEMORY[0x2A1C7C4A8](4294967289);
          v21 = &v30 - 2 * v20;
          MEMORY[0x2A1C7C4A8](v19);
          v23 = &v30 - 2 * v22;
          v34 = v24;
          cccmac_init_internal(v24, v21, v25, v26);
          v30 = 5 * v18;
          if (v11 <= a7)
          {
            v27 = 80 * v18;
            LODWORD(v18) = 1;
            do
            {
              memcpy(v23, v21, v27);
              PRF_EVAL(v23, a2, v18, a5, a6, v15);
              v18 = (v18 + 1);
              v15 += v11;
            }

            while (v12 >= v18);
          }

          v28 = v32;
          if (v32)
          {
            memcpy(v23, v21, 16 * v30);
            PRF_EVAL(v23, a2, v31, a5, a6, __src);
            memcpy(v15, __src, v28);
          }

          cc_clear(v11, __src);
          v29 = v34;
          cc_clear(v29[1] + *v29 + 80, v21);
          cc_clear(v29[1] + *v29 + 80, v23);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t ccnistkdf_ctr_cmac_internal(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, size_t a5, const void *a6, size_t a7, const void *a8, rsize_t a9, size_t a10, char *a11)
{
  v18 = a5 + a7 + a10;
  v26[0] = cc_malloc_clear((v18 + 8) & 0xFFFFFFFFFFFFFFF8);
  v26[1] = (v18 + 8) >> 3;
  v26[2] = 0;
  v26[3] = cc_ws_alloc;
  v27 = cc_ws_free;
  if (!v26[0])
  {
    return 4294967283;
  }

  v24 = a3;
  v19 = cc_ws_alloc(v26, (v18 + 8) >> 3);
  v20 = 4294967289;
  if (a10 <= 4 && !((8 * a9) >> (8 * a10)))
  {
    v21 = v19;
    if (a5 && a6)
    {
      memcpy(v19, a6, a5);
    }

    v22 = &v21[a5];
    v21[a5] = 0;
    if (a7 && a8)
    {
      memcpy(v22 + 1, a8, a7);
    }

    __src = bswap32(8 * a9) >> (-8 * a10);
    memcpy(&v22[a7 + 1], &__src, a10);
    v20 = ccnistkdf_ctr_cmac_fixed_internal(a1, a2, v24, a4, v18 + 1, v21, a9, a11);
  }

  v27(v26);
  return v20;
}

uint64_t ccnistkdf_ctr_cmac(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, size_t a5, const void *a6, size_t a7, const void *a8, rsize_t a9, size_t a10, char *a11)
{
  v21 = timingsafe_enable_if_supported();
  v19 = ccnistkdf_ctr_cmac_internal(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  cc_disable_dit_with_sb(&v21);
  return v19;
}

uint64_t PRF_EVAL(void *a1, unsigned int a2, int a3, unint64_t a4, char *a5, void *a6)
{
  __src = HIBYTE(a3);
  BYTE1(__src) = BYTE2(a3);
  BYTE2(__src) = BYTE1(a3);
  BYTE3(__src) = a3;
  __src >>= 8 * (4 - (a2 >> 3));
  cccmac_update_internal(a1, a2 >> 3, &__src);
  cccmac_update_internal(a1, a4, a5);
  return cccmac_final_generate_internal(a1, *(a1[8] + 8), a6);
}

uint64_t cche_param_ctx_supports_simd_encoding(uint64_t a1)
{
  v4 = timingsafe_enable_if_supported();
  v2 = *(cche_param_ctx_plaintext_ctx(a1) + 8);
  cc_disable_dit_with_sb(&v4);
  return v2;
}

uint64_t cche_decode_simd_uint64(uint64_t a1, unsigned int a2, unint64_t *a3, unsigned int **a4)
{
  v17 = timingsafe_enable_if_supported();
  v8 = *a4;
  v9 = **a4;
  v10 = (*a4)[1];
  v11 = sizeof_struct_ccpolyzp_po2cyc();
  v15[0] = cc_malloc_clear((v11 + 8 * v10 * v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v8;
  LODWORD(v8) = v8[1];
  v15[1] = v8 * v12 + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3);
  v15[2] = 0;
  v15[3] = cc_ws_alloc;
  v16 = cc_ws_free;
  if (v15[0])
  {
    v13 = cche_decode_simd_uint64_ws(v15, a1, a2, a3, a4);
    v16(v15);
  }

  else
  {
    v13 = 4294967283;
  }

  cc_disable_dit_with_sb(&v17);
  return v13;
}

uint64_t cche_decode_simd_int64(uint64_t a1, unsigned int a2, unint64_t *a3, unsigned int **a4)
{
  v17 = timingsafe_enable_if_supported();
  v8 = *a4;
  v9 = **a4;
  v10 = (*a4)[1];
  v11 = sizeof_struct_ccpolyzp_po2cyc();
  v15[0] = cc_malloc_clear((v11 + 8 * v10 * v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v8;
  LODWORD(v8) = v8[1];
  v15[1] = v8 * v12 + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3);
  v15[2] = 0;
  v15[3] = cc_ws_alloc;
  v16 = cc_ws_free;
  if (v15[0])
  {
    v13 = cche_decode_simd_int64_ws(v15, a1, a2, a3, a4);
    v16(v15);
  }

  else
  {
    v13 = 4294967283;
  }

  cc_disable_dit_with_sb(&v17);
  return v13;
}

uint64_t cche_dcrt_plaintext_encode_ws(uint64_t a1, unsigned int **a2, uint64_t a3, uint64_t a4)
{
  v20[1] = *MEMORY[0x29EDCA608];
  v4 = *(a4 + 8);
  v5 = *v4;
  v6 = v4[1];
  *a2 = v4;
  if (v6)
  {
    v9 = 0;
    v17 = a2 + 1;
    v18 = a4 + 32;
    v16 = (a3 + 8);
    do
    {
      if (v5)
      {
        v10 = (v18 + 8 * *(*(a4 + 8) + 4) + 8 * v9);
        v11 = &v17[**a2 * v9];
        v12 = v16;
        v13 = v5;
        do
        {
          v14 = ccn_sub_ws(a1, 1, v20, v12, (a4 + 24));
          ccn_add_ws(a1, 1, v20, v12, v10);
          ccn_mux(1, v14, v11++, v12++, v20);
          --v13;
        }

        while (v13);
      }

      ++v9;
    }

    while (v9 != v6);
  }

  return ccpolyzp_po2cyc_fwd_ntt(a2);
}

BOOL OUTLINED_FUNCTION_0_1()
{

  return timingsafe_enable_if_supported();
}

uint64_t OUTLINED_FUNCTION_1_0()
{
  v3 = (v1 + 8 * *v0);

  return ccn_seti(1, v3, 0);
}

uint64_t ccascon_ascon128a_encrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20 = timingsafe_enable_if_supported();
  memset(v19, 0, sizeof(v19));
  (*(a1 + 24))(v19, a6, a7, a8, a9);
  v17 = (*(a1 + 32))(v19, a2, a3, a4, a5, a9);
  cc_clear(0x30uLL, v19);
  cc_disable_dit_with_sb(&v20);
  return v17;
}

uint64_t ccascon_ascon128a_decrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20 = timingsafe_enable_if_supported();
  memset(v19, 0, sizeof(v19));
  (*(a1 + 24))(v19, a6, a7, a8, a9);
  v17 = (*(a1 + 40))(v19, a2, a3, a4, a5, a9);
  cc_clear(0x30uLL, v19);
  cc_disable_dit_with_sb(&v20);
  return v17;
}

uint64_t ccascon_ascon128a_ref_init(unint64_t *a1, unint64_t a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v8 = 0;
  v9 = bswap64(*a5);
  v10 = bswap64(a5[1]);
  v11 = bswap64(*a4);
  v12 = bswap64(a4[1]);
  v13 = 0x80800C0800000000;
  v14 = v9;
  v15 = v10;
  do
  {
    v16 = v15 ^ ROUND_CONSTANTS[v8];
    v17 = v12 ^ v13;
    v18 = v12 ^ v11;
    v19 = v16 ^ v14;
    v20 = v16 & ~v14 ^ v17;
    v21 = v11 & ~v19 ^ v14;
    v22 = v14 & ~v17 ^ v12 ^ v11;
    v23 = v12 & ~v11;
    v24 = v17 & ~v18 ^ v11 ^ v19 ^ v23;
    v13 = __ROR8__(v20 ^ v22, 19) ^ __ROR8__(v20 ^ v22, 28) ^ v20 ^ v22;
    v14 = __ROR8__(v21 ^ v20, 61) ^ __ROR8__(v21 ^ v20, 39) ^ v21 ^ v20;
    v15 = v19 ^ v23 ^ ~(__ROR8__(v19 ^ ~v23, 1) ^ __ROR8__(v19 ^ ~v23, 6));
    v11 = __ROR8__(v24, 10) ^ __ROR8__(v24, 17) ^ v24;
    v12 = __ROR8__(v22, 7) ^ __ROR8__(v22, 41) ^ v22;
    ++v8;
  }

  while (v8 != 12);
  *a1 = v13;
  a1[1] = v14;
  a1[2] = v15;
  a1[3] = v11 ^ v9;
  v25 = v12 ^ v10;
  a1[4] = v25;
  a1[5] = 0;
  if (a2)
  {
    ccascon_ascon128a_ref_accumulate_encrypt(a1, 0, a2, a3);
    ccascon_ascon128a_ref_pad(a1);
    v26 = 0;
    v27 = a1[3];
    v25 = a1[4];
    v28 = a1[1];
    v29 = a1[2];
    v30 = *a1;
    do
    {
      v31 = v29 ^ ROUND_CONSTANTS[v26 + 4];
      v32 = v25 ^ v30;
      v33 = v25 ^ v27;
      v34 = v31 ^ v28;
      v35 = v31 & ~v28 ^ v32;
      v36 = v27 & ~v34 ^ v28;
      v37 = v28 & ~v32 ^ v25 ^ v27;
      v38 = v25 & ~v27;
      v39 = v32 & ~v33 ^ v27 ^ v34 ^ v38;
      v30 = __ROR8__(v35 ^ v37, 19) ^ __ROR8__(v35 ^ v37, 28) ^ v35 ^ v37;
      v28 = __ROR8__(v36 ^ v35, 61) ^ __ROR8__(v36 ^ v35, 39) ^ v36 ^ v35;
      v29 = v34 ^ v38 ^ ~(__ROR8__(v34 ^ ~v38, 1) ^ __ROR8__(v34 ^ ~v38, 6));
      v27 = __ROR8__(v39, 10) ^ __ROR8__(v39, 17) ^ v39;
      v25 = __ROR8__(v37, 7) ^ __ROR8__(v37, 41) ^ v37;
      ++v26;
    }

    while (v26 != 8);
    a1[2] = v29;
    a1[3] = v27;
    *a1 = v30;
    a1[1] = v28;
  }

  a1[4] = v25 ^ 1;
  return 0;
}

uint64_t ccascon_ascon128a_ref_encrypt(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  ccascon_ascon128a_ref_accumulate_encrypt(a1, a2, a4, a5);
  ccascon_ascon128a_ref_pad(a1);
  ccascon_ascon128a_ref_finalize(a1, a3, a6);
  return 0;
}

uint64_t ccascon_ascon128a_ref_decrypt(int8x8_t *a1, void *a2, uint64_t a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v13 = *MEMORY[0x29EDCA608];
  ccascon_ascon128a_ref_accumulate_decrypt(a1, a2, a4, a5);
  ccascon_ascon128a_ref_pad(a1);
  ccascon_ascon128a_ref_finalize(a1, v12, a6);
  result = cc_cmp_safe_internal(16, a3, v12);
  if (result)
  {
    if (a2)
    {
      if (a4)
      {
        cc_clear(a4, a2);
      }
    }

    cc_clear(0x30uLL, a1);
    return 4294967294;
  }

  return result;
}

uint64_t ccmode_cbc_init(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  *a2 = v2;
  return (*(v2 + 16))();
}

uint64_t cckem_mlkem1024_generate_key(uint64_t a1, uint64_t (**a2)(void, uint64_t, _OWORD *))
{
  v4 = (cckem_public_ctx() + 8);
  v5 = (a1 + *(*a1 + 16) + 8);

  return ccmlkem_kem_keypair(ccmlkem1024_params, v4, v5, a2);
}

uint64_t cckem_mlkem1024_generate_key_with_seed()
{
  cckem_public_ctx();

  return ccmlkem_kem_keypair_with_seed();
}

uint64_t cckem_mlkem1024_derive_key_from_seed(uint64_t a1, _OWORD *a2)
{
  v4 = (cckem_public_ctx() + 8);
  v5 = a1 + *(*a1 + 16) + 8;

  return ccmlkem_kem_keypair_from_seed(ccmlkem1024_params, v4, v5, a2, a2 + 2);
}

uint64_t fipspost_post_indicator()
{
  v397 = fips_allowed("fipspost_post_integrity", 0);
  v0 = 8;
  do
  {
    v1 = v0 + 8;
    v390 = fips_allowed_mode_("ccaes_ecb_encrypt_mode", v0 + 8);
    v384 = fips_allowed_mode_("ccaes_ecb_decrypt_mode", v0 + 8);
    v378 = fips_allowed_mode_("ccaes_cbc_encrypt_mode", v0 + 8);
    v372 = fips_allowed_mode_("ccaes_cbc_decrypt_mode", v0 + 8);
    v366 = fips_allowed_mode_("ccaes_ccm_encrypt_mode", v0 + 8);
    v360 = fips_allowed_mode_("ccaes_ccm_decrypt_mode", v0 + 8);
    v354 = fips_allowed_mode_("ccaes_cfb8_encrypt_mode", v0 + 8);
    v2 = fips_allowed_mode_("ccaes_cfb8_decrypt_mode", v0 + 8);
    v3 = fips_allowed_mode_("ccaes_cfb_encrypt_mode", v0 + 8);
    v4 = fips_allowed_mode_("ccaes_cfb_decrypt_mode", v0 + 8);
    v5 = fips_allowed_mode_("ccaes_ofb_crypt_mode", v0 + 8);
    v6 = fips_allowed_mode_("ccaes_ctr_crypt_mode", v0 + 8);
    v7 = fips_allowed_mode_("ccaes_gcm_encrypt_mode", v0 + 8);
    v8 = fips_allowed_mode_("ccaes_gcm_decrypt_mode", v0 + 8);
    v9 = fips_allowed_mode_("ccwrap_auth_encrypt_withiv", v0 + 8);
    v10 = v390 & v397 & v384 & v378 & v372 & v366 & v360 & v354 & v2 & v3 & v4 & v5 & v6 & v7 & v8 & v9 & fips_allowed_mode_("ccwrap_auth_decrypt_withiv", v0 + 8);
    if (v0 != 16)
    {
      v11 = fips_allowed_mode_("ccpad_cts1_encrypt", v0 + 8);
      v12 = fips_allowed_mode_("ccpad_cts1_decrypt", v0 + 8);
      v13 = fips_allowed_mode_("ccpad_cts2_encrypt", v0 + 8);
      v14 = fips_allowed_mode_("ccpad_cts2_decrypt", v0 + 8);
      v15 = fips_allowed_mode_("ccpad_cts3_encrypt", v0 + 8);
      v16 = fips_allowed_mode_("ccpad_cts3_decrypt", v0 + 8);
      v17 = fips_allowed_mode_("ccaes_xts_encrypt_mode", v0 + 8);
      v10 &= v11 & v12 & v13 & v14 & v15 & v16 & v17 & fips_allowed_mode_("ccaes_xts_decrypt_mode", v1);
    }

    v397 = v10;
    v0 = v1;
  }

  while (v1 < 0x19);
  v391 = fips_allowed_drbg_("ccdrbg_init", "ccdrbg_factory_nistctr", "CCAES_KEY_SIZE_128");
  v385 = fips_allowed_drbg_("ccdrbg_reseed", "ccdrbg_factory_nistctr", "CCAES_KEY_SIZE_128");
  v379 = fips_allowed_drbg_("ccdrbg_generate", "ccdrbg_factory_nistctr", "CCAES_KEY_SIZE_128");
  v373 = fips_allowed_drbg_("ccdrbg_done", "ccdrbg_factory_nistctr", "CCAES_KEY_SIZE_128");
  v367 = fips_allowed_drbg_("ccdrbg_init", "ccdrbg_factory_nistctr", "CCAES_KEY_SIZE_256");
  v361 = fips_allowed_drbg_("ccdrbg_reseed", "ccdrbg_factory_nistctr", "CCAES_KEY_SIZE_256");
  v355 = fips_allowed_drbg_("ccdrbg_generate", "ccdrbg_factory_nistctr", "CCAES_KEY_SIZE_256");
  v349 = fips_allowed_drbg_("ccdrbg_done", "ccdrbg_factory_nistctr", "CCAES_KEY_SIZE_256");
  v18 = fips_allowed_drbg_("ccdrbg_init", "ccdrbg_factory_nisthmac", "ccsha1_di");
  v19 = fips_allowed_drbg_("ccdrbg_reseed", "ccdrbg_factory_nisthmac", "ccsha1_di");
  v20 = fips_allowed_drbg_("ccdrbg_generate", "ccdrbg_factory_nisthmac", "ccsha1_di");
  v21 = fips_allowed_drbg_("ccdrbg_done", "ccdrbg_factory_nisthmac", "ccsha1_di");
  v22 = fips_allowed_drbg_("ccdrbg_init", "ccdrbg_factory_nisthmac", "ccsha224_di");
  v23 = fips_allowed_drbg_("ccdrbg_reseed", "ccdrbg_factory_nisthmac", "ccsha224_di");
  v24 = fips_allowed_drbg_("ccdrbg_generate", "ccdrbg_factory_nisthmac", "ccsha224_di");
  if (fips_allowed_drbg_("ccdrbg_done", "ccdrbg_factory_nisthmac", "ccsha224_di") || v24 || v23 || v22)
  {
    v25 = 0;
  }

  else
  {
    v25 = v397 & (v391 && v385 && v379 && v373 && v367 && v361 && v355 && v349 && v18 && v19 && v20 && v21) & 1;
  }

  v26 = fips_allowed_drbg_("ccdrbg_init", "ccdrbg_factory_nisthmac", "ccsha256_di");
  v27 = fips_allowed_drbg_("ccdrbg_reseed", "ccdrbg_factory_nisthmac", "ccsha256_di");
  v28 = fips_allowed_drbg_("ccdrbg_generate", "ccdrbg_factory_nisthmac", "ccsha256_di");
  v29 = (v27 && v26) & v28 & fips_allowed_drbg_("ccdrbg_done", "ccdrbg_factory_nisthmac", "ccsha256_di") & v25;
  v30 = fips_allowed_drbg_("ccdrbg_init", "ccdrbg_factory_nisthmac", "ccsha384_di");
  v31 = fips_allowed_drbg_("ccdrbg_reseed", "ccdrbg_factory_nisthmac", "ccsha384_di");
  v32 = fips_allowed_drbg_("ccdrbg_generate", "ccdrbg_factory_nisthmac", "ccsha384_di");
  if (fips_allowed_drbg_("ccdrbg_done", "ccdrbg_factory_nisthmac", "ccsha384_di") || v32 || v31 || v30)
  {
    v33 = 0;
  }

  else
  {
    v33 = v29;
  }

  v398 = v33;
  v392 = fips_allowed_drbg_("ccdrbg_init", "ccdrbg_factory_nisthmac", "ccsha512_di");
  v386 = fips_allowed_drbg_("ccdrbg_reseed", "ccdrbg_factory_nisthmac", "ccsha512_di");
  v380 = fips_allowed_drbg_("ccdrbg_generate", "ccdrbg_factory_nisthmac", "ccsha512_di");
  v374 = fips_allowed_drbg_("ccdrbg_done", "ccdrbg_factory_nisthmac", "ccsha512_di");
  v368 = fips_allowed("ccec_generate_key_fips", "ccec_cp_224");
  v362 = fips_allowed("ccec_generate_key_fips", "ccec_cp_256");
  v356 = fips_allowed("ccec_generate_key_fips", "ccec_cp_384");
  v350 = fips_allowed("ccec_generate_key_fips", "ccec_cp_521");
  v346 = fips_allowed("ccec_make_priv", "ccec_cp_224");
  v343 = fips_allowed("ccec_make_priv", "ccec_cp_256");
  v340 = fips_allowed("ccec_make_priv", "ccec_cp_384");
  v338 = fips_allowed("ccec_make_priv", "ccec_cp_521");
  v336 = fips_allowed("ccec_make_pub", "ccec_cp_224");
  v334 = fips_allowed("ccec_make_pub", "ccec_cp_256");
  v332 = fips_allowed("ccec_make_pub", "ccec_cp_384");
  v330 = fips_allowed("ccec_make_pub", "ccec_cp_521");
  v328 = fips_allowed("ccec_sign_msg", "ccec_cp_224");
  v326 = fips_allowed("ccec_sign_msg", "ccec_cp_256");
  v324 = fips_allowed("ccec_sign_msg", "ccec_cp_384");
  v322 = fips_allowed("ccec_sign_msg", "ccec_cp_521");
  v320 = fips_allowed("ccec_verify_msg", "ccec_cp_192");
  v318 = fips_allowed("ccec_verify_msg", "ccec_cp_224");
  v316 = fips_allowed("ccec_verify_msg", "ccec_cp_256");
  v314 = fips_allowed("ccec_verify_msg", "ccec_cp_384");
  v312 = fips_allowed("ccec_verify_msg", "ccec_cp_521");
  v310 = fips_allowed("ccec_validate_pub", "ccec_cp_192");
  v308 = fips_allowed("ccec_validate_pub", "ccec_cp_224");
  v306 = fips_allowed("ccec_validate_pub", "ccec_cp_256");
  v304 = fips_allowed("ccec_validate_pub", "ccec_cp_384");
  v302 = fips_allowed("ccec_validate_pub", "ccec_cp_521");
  v300 = fips_allowed("cchmac", "ccsha1_di");
  v298 = fips_allowed("cchmac", "ccsha224_di");
  v296 = fips_allowed("cchmac", "ccsha256_di");
  v294 = fips_allowed("cchmac", "ccsha384_di");
  v292 = fips_allowed("cchmac", "ccsha512_di");
  v290 = fips_allowed("cchmac", "ccsha512_256_di");
  v288 = fips_allowed("cchmac", "ccsha3_224_di");
  v286 = fips_allowed("cchmac", "ccsha3_256_di");
  v284 = fips_allowed("cchmac", "ccsha3_384_di");
  v282 = fips_allowed("cchmac", "ccsha3_512_di");
  v280 = fips_allowed("ccdh_gp_rfc3526group14", 0);
  v278 = fips_allowed("ccdh_gp_rfc3526group15", 0);
  v276 = fips_allowed("ccdh_gp_rfc3526group16", 0);
  v274 = fips_allowed("ccdh_gp_rfc3526group17", 0);
  v272 = fips_allowed("ccdh_gp_rfc3526group18", 0);
  v270 = fips_allowed("ccdh_generate_key", "2048");
  v268 = fips_allowed("ccdh_generate_key", "3072");
  v266 = fips_allowed("ccdh_generate_key", "4096");
  v264 = fips_allowed("ccdh_generate_key", "6144");
  v262 = fips_allowed("ccdh_generate_key", "8192");
  v260 = fips_allowed("ccdh_import_pub", "2048");
  v258 = fips_allowed("ccdh_import_pub", "3072");
  v256 = fips_allowed("ccdh_import_pub", "4096");
  v254 = fips_allowed("ccdh_import_pub", "6144");
  v252 = fips_allowed("ccdh_import_pub", "8192");
  v250 = fips_allowed("ccdh_import_priv", "2048");
  v248 = fips_allowed("ccdh_import_priv", "3072");
  v246 = fips_allowed("ccdh_import_priv", "4096");
  v244 = fips_allowed("ccdh_import_priv", "6144");
  v242 = fips_allowed("ccdh_import_priv", "8192");
  v240 = fips_allowed("ccdh_compute_shared_secret", "2048");
  v238 = fips_allowed("ccdh_compute_shared_secret", "3072");
  v236 = fips_allowed("ccdh_compute_shared_secret", "4096");
  v234 = fips_allowed("ccdh_compute_shared_secret", "6144");
  v232 = fips_allowed("ccdh_compute_shared_secret", "8192");
  v230 = fips_allowed("ccecdh_compute_shared_secret", "ccec_cp_224");
  v228 = fips_allowed("ccecdh_compute_shared_secret", "ccec_cp_256");
  v226 = fips_allowed("ccecdh_compute_shared_secret", "ccec_cp_384");
  v224 = fips_allowed("ccecdh_compute_shared_secret", "ccec_cp_521");
  v222 = fips_allowed("ccecdh_generate_key", "ccec_cp_224");
  v220 = fips_allowed("ccecdh_generate_key", "ccec_cp_256");
  v218 = fips_allowed("ccecdh_generate_key", "ccec_cp_384");
  v216 = fips_allowed("ccecdh_generate_key", "ccec_cp_521");
  v214 = fips_allowed("ccnistkdf_ctr_cmac", "16");
  v212 = fips_allowed("ccnistkdf_ctr_cmac", "24");
  v210 = fips_allowed("ccnistkdf_ctr_cmac", "32");
  v208 = fips_allowed("ccnistkdf_ctr_cmac_fixed", "16");
  v206 = fips_allowed("ccnistkdf_ctr_cmac_fixed", "24");
  v204 = fips_allowed("ccnistkdf_ctr_cmac_fixed", "32");
  v202 = fips_allowed("ccnistkdf_ctr_hmac", "ccsha1_di");
  v200 = fips_allowed("ccnistkdf_ctr_hmac", "ccsha224_di");
  v198 = fips_allowed("ccnistkdf_ctr_hmac", "ccsha256_di");
  v196 = fips_allowed("ccnistkdf_ctr_hmac", "ccsha384_di");
  v194 = fips_allowed("ccnistkdf_ctr_hmac", "ccsha512_di");
  v192 = fips_allowed("ccnistkdf_ctr_hmac", "ccsha512_256_di");
  v190 = fips_allowed("ccnistkdf_ctr_hmac", "ccsha3_224_di");
  v188 = fips_allowed("ccnistkdf_ctr_hmac", "ccsha3_256_di");
  v186 = fips_allowed("ccnistkdf_ctr_hmac", "ccsha3_384_di");
  v184 = fips_allowed("ccnistkdf_ctr_hmac", "ccsha3_512_di");
  v182 = fips_allowed("ccnistkdf_ctr_hmac_fixed", "ccsha1_di");
  v180 = fips_allowed("ccnistkdf_ctr_hmac_fixed", "ccsha224_di");
  v178 = fips_allowed("ccnistkdf_ctr_hmac_fixed", "ccsha256_di");
  v176 = fips_allowed("ccnistkdf_ctr_hmac_fixed", "ccsha384_di");
  v34 = fips_allowed("ccnistkdf_ctr_hmac_fixed", "ccsha512_di");
  v35 = fips_allowed("ccnistkdf_ctr_hmac_fixed", "ccsha512_256_di");
  v36 = fips_allowed("ccnistkdf_ctr_hmac_fixed", "ccsha3_224_di");
  v37 = fips_allowed("ccnistkdf_ctr_hmac_fixed", "ccsha3_256_di");
  v38 = fips_allowed("ccnistkdf_ctr_hmac_fixed", "ccsha3_384_di");
  v399 = (v386 && v392 && v380 && v374) & v368 & v362 & v356 & v350 & v346 & v343 & v340 & v338 & v336 & v334 & v332 & v330 & v328 & v326 & v324 & v322 & v320 & v318 & v316 & v398 & v314 & v312 & v310 & v308 & v306 & v304 & v302 & v300 & v298 & v296 & v294 & v292 & v290 & v288 & v286 & v284 & v282 & v280 & v278 & v276 & v274 & v272 & v270 & v268 & v266 & v264 & v262 & v260 & v258 & v256 & v254 & v252 & v250 & v248 & v246 & v244 & v242 & v240 & v238 & v236 & v234 & v232 & v230 & v228 & v226 & v224 & v222 & v220 & v218 & v216 & v214 & v212 & v210 & v208 & v206 & v204 & v202 & v200 & v198 & v196 & v194 & v192 & v190 & v188 & v186 & v184 & v182 & v180 & v178 & v176 & v34 & v35 & v36 & v37 & v38 & fips_allowed("ccnistkdf_ctr_hmac_fixed", "ccsha3_512_di");
  v393 = fips_allowed("ccpbkdf2_hmac", "ccsha1_di");
  v387 = fips_allowed("ccpbkdf2_hmac", "ccsha224_di");
  v381 = fips_allowed("ccpbkdf2_hmac", "ccsha256_di");
  v375 = fips_allowed("ccpbkdf2_hmac", "ccsha384_di");
  v369 = fips_allowed("ccpbkdf2_hmac", "ccsha512_di");
  v363 = fips_allowed("ccpbkdf2_hmac", "ccsha512_256_di");
  v357 = fips_allowed("ccpbkdf2_hmac", "ccsha3_224_di");
  v351 = fips_allowed("ccpbkdf2_hmac", "ccsha3_256_di");
  v347 = fips_allowed("ccpbkdf2_hmac", "ccsha3_384_di");
  v344 = fips_allowed("ccpbkdf2_hmac", "ccsha3_512_di");
  v341 = fips_allowed("ccpbkdf2_hmac", "ccsha1_di");
  v39 = fips_allowed("ccpbkdf2_hmac", "ccsha224_di");
  v40 = fips_allowed("ccpbkdf2_hmac", "ccsha256_di");
  v41 = fips_allowed("ccpbkdf2_hmac", "ccsha384_di");
  v42 = fips_allowed("ccpbkdf2_hmac", "ccsha512_di");
  v43 = fips_allowed("ccpbkdf2_hmac", "ccsha512_256_di");
  v44 = fips_allowed("ccpbkdf2_hmac", "ccsha3_224_di");
  v45 = fips_allowed("ccpbkdf2_hmac", "ccsha3_256_di");
  v46 = fips_allowed("ccpbkdf2_hmac", "ccsha3_384_di");
  if (fips_allowed("ccpbkdf2_hmac", "ccsha3_512_di"))
  {
    v47 = v46 == 0;
  }

  else
  {
    v47 = 1;
  }

  v66 = v47 || v45 == 0 || v44 == 0 || v43 == 0 || v42 == 0 || v41 == 0 || v40 == 0 || v39 == 0 || v341 == 0 || v344 == 0 || v347 == 0 || v351 == 0 || v357 == 0 || v363 == 0 || v369 == 0 || v375 == 0 || v381 == 0 || v387 == 0 || v393 == 0;
  v47 = (v66 & 1) == 0;
  v67 = v399;
  if (!v47)
  {
    v67 = 0;
  }

  v400 = v67;
  v68 = fips_allowed("cchkdf", "ccsha1_di");
  v69 = fips_allowed("cchkdf", "ccsha224_di");
  v70 = fips_allowed("cchkdf", "ccsha256_di");
  v71 = fips_allowed("cchkdf", "ccsha384_di");
  v72 = fips_allowed("cchkdf", "ccsha512_di");
  v73 = fips_allowed("cchkdf", "ccsha512_256_di");
  v74 = fips_allowed("cchkdf", "ccsha3_224_di");
  v75 = fips_allowed("cchkdf", "ccsha3_256_di");
  v76 = fips_allowed("cchkdf", "ccsha3_384_di");
  v77 = v69 & v68 & v70 & v71 & v72 & v73 & v74 & v75 & v76 & fips_allowed("cchkdf", "ccsha3_512_di") & v400;
  if (fips_allowed("ccmd5_di", 0))
  {
    v78 = 0;
  }

  else
  {
    v78 = v77;
  }

  v401 = v78;
  v394 = fips_allowed("ccsha1_di", 0);
  v79 = fips_allowed("ccsha224_di", 0);
  v80 = fips_allowed("ccsha256_di", 0);
  v81 = fips_allowed("ccsha384_di", 0);
  v82 = fips_allowed("ccsha512_di", 0);
  v83 = fips_allowed("ccsha512_256_di", 0);
  v84 = fips_allowed("ccsha3_224_di", 0);
  v85 = fips_allowed("ccsha3_256_di", 0);
  v86 = fips_allowed("ccsha3_384_di", 0);
  v87 = fips_allowed("ccsha3_512_di", 0);
  v88 = fips_allowed("ccshake128_xi", 0);
  v89 = v79 & v394 & v80 & v81 & v82 & v83 & v84 & v85 & v86 & v87 & v88 & fips_allowed("ccshake256_xi", 0) & v401;
  if (fips_allowed("ccrng_uniform", 0))
  {
    v90 = 0;
  }

  else
  {
    v90 = v89;
  }

  v402 = v90;
  v395 = fips_allowed("ccrsa_verify_pss_msg", "1024");
  v388 = fips_allowed("ccrsa_verify_pss_msg", "2048");
  v382 = fips_allowed("ccrsa_verify_pss_msg", "3072");
  v376 = fips_allowed("ccrsa_verify_pss_msg", "4096");
  v370 = fips_allowed("ccrsa_verify_pkcs1v15_msg", "1024");
  v364 = fips_allowed("ccrsa_verify_pkcs1v15_msg", "2048");
  v358 = fips_allowed("ccrsa_verify_pkcs1v15_msg", "3072");
  v352 = fips_allowed("ccrsa_verify_pkcs1v15_msg", "4096");
  v91 = fips_allowed("ccrsa_generate_fips186_key", "2048");
  v92 = fips_allowed("ccrsa_generate_fips186_key", "3072");
  v93 = fips_allowed("ccrsa_generate_fips186_key", "4096");
  v94 = fips_allowed("ccrsa_sign_pss_msg", "2048");
  v95 = fips_allowed("ccrsa_sign_pss_msg", "3072");
  v96 = fips_allowed("ccrsa_sign_pss_msg", "4096");
  v97 = fips_allowed("ccrsa_sign_pkcs1v15_msg", "2048");
  v98 = fips_allowed("ccrsa_sign_pkcs1v15_msg", "3072");
  v403 = v388 & v395 & v382 & v376 & v370 & v364 & v358 & v352 & v91 & v92 & v93 & v94 & v95 & v96 & v97 & v98 & fips_allowed("ccrsa_sign_pkcs1v15_msg", "4096") & v402;
  v396 = fips_allowed("ccrsa_encrypt_oaep", "2048");
  v389 = fips_allowed("ccrsa_encrypt_oaep", "3072");
  v383 = fips_allowed("ccrsa_encrypt_oaep", "4096");
  v377 = fips_allowed("ccrsa_decrypt_oaep", "2048");
  v371 = fips_allowed("ccrsa_decrypt_oaep", "3072");
  v365 = fips_allowed("ccrsa_decrypt_oaep", "4096");
  v359 = fips_allowed("ccansikdf_x963", "ccsha1_di");
  v353 = fips_allowed("ccansikdf_x963", "ccsha224_di");
  v348 = fips_allowed("ccansikdf_x963", "ccsha256_di");
  v345 = fips_allowed("ccansikdf_x963", "ccsha384_di");
  v342 = fips_allowed("ccansikdf_x963", "ccsha512_di");
  v339 = fips_allowed("ccansikdf_x963", "ccsha512_256_di");
  v337 = fips_allowed_mode_("ccblowfish_ecb_decrypt_mode", 16);
  v335 = fips_allowed_mode_("ccblowfish_ecb_encrypt_mode", 16);
  v333 = fips_allowed_mode_("ccblowfish_cbc_decrypt_mode", 16);
  v331 = fips_allowed_mode_("ccblowfish_cbc_encrypt_mode", 16);
  v329 = fips_allowed_mode_("ccblowfish_cfb_decrypt_mode", 16);
  v327 = fips_allowed_mode_("ccblowfish_cfb_encrypt_mode", 16);
  v325 = fips_allowed_mode_("ccblowfish_cfb8_decrypt_mode", 16);
  v323 = fips_allowed_mode_("ccblowfish_cfb8_encrypt_mode", 16);
  v321 = fips_allowed_mode_("ccblowfish_ctr_crypt_mode", 16);
  v319 = fips_allowed_mode_("ccblowfish_ofb_crypt_mode", 16);
  v317 = fips_allowed_mode_("cccast_ecb_decrypt_mode", 16);
  v315 = fips_allowed_mode_("cccast_ecb_encrypt_mode", 16);
  v313 = fips_allowed_mode_("cccast_cbc_decrypt_mode", 16);
  v311 = fips_allowed_mode_("cccast_cbc_encrypt_mode", 16);
  v309 = fips_allowed_mode_("cccast_cfb_decrypt_mode", 16);
  v307 = fips_allowed_mode_("cccast_cfb_encrypt_mode", 16);
  v305 = fips_allowed_mode_("cccast_cfb8_decrypt_mode", 16);
  v303 = fips_allowed_mode_("cccast_cfb8_encrypt_mode", 16);
  v301 = fips_allowed_mode_("cccast_ctr_crypt_mode", 16);
  v299 = fips_allowed_mode_("cccast_ofb_crypt_mode", 16);
  v297 = fips_allowed_mode_("ccdes3_ecb_decrypt_mode", 16);
  v295 = fips_allowed_mode_("ccdes3_ecb_encrypt_mode", 16);
  v293 = fips_allowed_mode_("ccdes3_cbc_decrypt_mode", 16);
  v291 = fips_allowed_mode_("ccdes3_cbc_encrypt_mode", 16);
  v289 = fips_allowed_mode_("ccdes3_cfb_decrypt_mode", 16);
  v287 = fips_allowed_mode_("ccdes3_cfb_encrypt_mode", 16);
  v285 = fips_allowed_mode_("ccdes3_cfb8_decrypt_mode", 16);
  v283 = fips_allowed_mode_("ccdes3_cfb8_encrypt_mode", 16);
  v281 = fips_allowed_mode_("ccdes3_ctr_crypt_mode", 16);
  v279 = fips_allowed_mode_("ccdes3_ofb_crypt_mode", 16);
  v277 = fips_allowed("ccdh_compute_shared_secret", "ccsrp_gp_rfc5054_2048");
  v275 = fips_allowed("ccdh_gp_apple768", 0);
  v273 = fips_allowed("ccdh_gp_rfc2409group02", 0);
  v271 = fips_allowed("ccdh_gp_rfc2409group05", 0);
  v269 = fips_allowed("ccdh_gp_rfc5114_MODP_1024_160", 0);
  v267 = fips_allowed("ccdh_gp_rfc5114_MODP_2048_224", 0);
  v265 = fips_allowed("ccdh_gp_rfc5114_MODP_2048_256", 0);
  v263 = fips_allowed("ccec_sign", "ccec_cp_224");
  v261 = fips_allowed("ccec_sign", "ccec_cp_256");
  v259 = fips_allowed("ccec_sign", "ccec_cp_384");
  v257 = fips_allowed("ccec_sign", "ccec_cp_521");
  v255 = fips_allowed("ccec_verify", "ccec_cp_192");
  v253 = fips_allowed("ccec_verify", "ccec_cp_224");
  v251 = fips_allowed("ccec_verify", "ccec_cp_256");
  v249 = fips_allowed("ccec_verify", "ccec_cp_384");
  v247 = fips_allowed("ccec_verify", "ccec_cp_521");
  v245 = fips_allowed("ccec_verify_strict", "ccec_cp_256");
  v243 = fips_allowed("ccec_verify_strict", "ccec_cp_384");
  v241 = fips_allowed("ccec_verify_strict", "ccec_cp_521");
  v239 = fips_allowed("ccec_rfc6637_kdf", "ccec_cp_256");
  v237 = fips_allowed("ccec_rfc6637_kdf", "ccec_cp_384");
  v235 = fips_allowed("ccec_rfc6637_kdf", "ccec_cp_521");
  v233 = fips_allowed("ccec_rfc6637_wrap_key", "ccec_cp_256");
  v231 = fips_allowed("ccec_rfc6637_wrap_key", "ccec_cp_384");
  v229 = fips_allowed("ccec_rfc6637_wrap_key", "ccec_cp_521");
  v227 = fips_allowed("ccec_rfc6637_unwrap_key", "ccec_cp_256");
  v225 = fips_allowed("ccec_rfc6637_unwrap_key", "ccec_cp_384");
  v223 = fips_allowed("ccec_rfc6637_unwrap_key", "ccec_cp_521");
  v221 = fips_allowed("ccecies_encrypt_gcm", 0);
  v219 = fips_allowed("ccecies_decrypt_gcm", 0);
  v217 = fips_allowed("cced25519_make_key_pair", 0);
  v215 = fips_allowed("cced25519_sign", 0);
  v213 = fips_allowed("cced25519_verify", 0);
  v211 = fips_allowed("cch2c", "ccec_cp_256");
  v209 = fips_allowed("cch2c", "ccec_cp_384");
  v207 = fips_allowed("cch2c", "ccec_cp_521");
  v205 = fips_allowed("cchpke", 0);
  v203 = fips_allowed("cchpke_kem_x25519_generate_key_pair", 0);
  v201 = fips_allowed("cchpke_kem_generate_key_pair", 0);
  v199 = fips_allowed("cchpke_initiator_encrypt", 0);
  v197 = fips_allowed("cchpke_responder_decrypt", 0);
  v195 = fips_allowed("cchpke_export_secret", 0);
  v193 = fips_allowed("cchkdf", 0);
  fips_allowed("ccpbkdf2_hmac", "ccsha1_di");
  fips_allowed("ccpbkdf2_hmac", "ccsha224_di");
  fips_allowed("ccpbkdf2_hmac", "ccsha256_di");
  fips_allowed("ccpbkdf2_hmac", "ccsha384_di");
  fips_allowed("ccpbkdf2_hmac", "ccsha512_di");
  fips_allowed("ccpbkdf2_hmac", "ccsha512_256_di");
  fips_allowed("ccpbkdf2_hmac", "ccsha3_224_di");
  fips_allowed("ccpbkdf2_hmac", "ccsha3_256_di");
  fips_allowed("ccpbkdf2_hmac", "ccsha3_384_di");
  fips_allowed("ccpbkdf2_hmac", "ccsha3_512_di");
  fips_allowed("ccpbkdf2_hmac", "ccsha1_di");
  fips_allowed("ccpbkdf2_hmac", "ccsha224_di");
  fips_allowed("ccpbkdf2_hmac", "ccsha256_di");
  fips_allowed("ccpbkdf2_hmac", "ccsha384_di");
  fips_allowed("ccpbkdf2_hmac", "ccsha512_di");
  fips_allowed("ccpbkdf2_hmac", "ccsha512_256_di");
  fips_allowed("ccpbkdf2_hmac", "ccsha3_224_di");
  fips_allowed("ccpbkdf2_hmac", "ccsha3_256_di");
  fips_allowed("ccpbkdf2_hmac", "ccsha3_384_di");
  fips_allowed("ccpbkdf2_hmac", "ccsha3_512_di");
  v191 = fips_allowed("ccmd2_di", 0);
  v189 = fips_allowed("ccmd4_di", 0);
  v187 = fips_allowed_mode_("ccrc2_ecb_decrypt_mode", 16);
  v185 = fips_allowed_mode_("ccrc2_ecb_encrypt_mode", 16);
  v183 = fips_allowed_mode_("ccrc2_cbc_decrypt_mode", 16);
  v181 = fips_allowed_mode_("ccrc2_cbc_encrypt_mode", 16);
  v179 = fips_allowed_mode_("ccrc2_cfb_decrypt_mode", 16);
  v177 = fips_allowed_mode_("ccrc2_cfb_encrypt_mode", 16);
  v175 = fips_allowed_mode_("ccrc2_cfb8_decrypt_mode", 16);
  v174 = fips_allowed_mode_("ccrc2_cfb8_encrypt_mode", 16);
  v173 = fips_allowed_mode_("ccrc2_ctr_crypt_mode", 16);
  v172 = fips_allowed_mode_("ccrc2_ofb_crypt_mode", 16);
  v171 = fips_allowed("ccrc4", 0);
  v170 = fips_allowed("ccrmd160_di", 0);
  v169 = fips_allowed("ccrsa_verify_pss_digest", "1024");
  v168 = fips_allowed("ccrsa_verify_pss_digest", "2048");
  v167 = fips_allowed("ccrsa_verify_pss_digest", "3072");
  v166 = fips_allowed("ccrsa_verify_pss_digest", "4096");
  v165 = fips_allowed("ccrsa_verify_pkcs1v15_digest", "1024");
  v164 = fips_allowed("ccrsa_verify_pkcs1v15_digest", "2048");
  v163 = fips_allowed("ccrsa_verify_pkcs1v15_digest", "3072");
  v162 = fips_allowed("ccrsa_verify_pkcs1v15_digest", "4096");
  v161 = fips_allowed("ccrsa_encrypt_oaep", "1024");
  v160 = fips_allowed("ccrsa_decrypt_oaep", "1024");
  v159 = fips_allowed("ccrsa_sign_pss", "2048");
  v158 = fips_allowed("ccrsa_sign_pss", "3072");
  v157 = fips_allowed("ccrsa_sign_pss", "4096");
  v156 = fips_allowed("ccrsa_sign_pkcs1v15", "2048");
  v155 = fips_allowed("ccrsa_sign_pkcs1v15", "3072");
  v154 = fips_allowed("ccrsa_sign_pkcs1v15", "4096");
  v153 = fips_allowed("ccsae_init", 0);
  v152 = fips_allowed("ccsae_init_p256_sha256", 0);
  v151 = fips_allowed("ccsae_ctr_hmac_fixed", 0);
  v150 = fips_allowed("ccsae_get_keys", 0);
  v149 = fips_allowed("ccscrypt", 0);
  v148 = fips_allowed("ccsigma_init", 0);
  v147 = fips_allowed("ccsigma_sign", 0);
  v146 = fips_allowed("ccsigma_verify", 0);
  v145 = fips_allowed("ccsigma_seal", 0);
  v144 = fips_allowed("ccspake_kex_generate", 0);
  v143 = fips_allowed("ccspake_mac_hkdf_cmac_aes128_sha256", 0);
  v142 = fips_allowed("ccspake_mac_hkdf_hmac_compute", 0);
  v141 = fips_allowed("ccspake_cp_256", 0);
  v140 = fips_allowed("ccspake_cp_384", 0);
  v139 = fips_allowed("ccspake_cp_521", 0);
  v138 = fips_allowed("ccspake_mac_hkdf_hmac_sha256", 0);
  v137 = fips_allowed("ccspake_mac_hkdf_hmac_sha512", 0);
  v136 = fips_allowed("ccspake_kex_process", 0);
  v135 = fips_allowed("ccspake_kex_generate", 0);
  v134 = fips_allowed("ccspake_mac_hkdf_derive", 0);
  v133 = fips_allowed("ccss_shamir_parameters_init", 0);
  v132 = fips_allowed("ccss_shamir_share_generator_init", 0);
  v131 = fips_allowed("ccss_shamir_share_generator_generate_share", 0);
  v130 = fips_allowed("NULL", 0);
  v129 = fips_allowed("NULL", "42");
  v128 = fips_allowed_mode_("ccaes_ecb_encrypt_mode", 12);
  v127 = fips_allowed_mode_("ccdes3_ecb_encrypt_mode", 42);
  v126 = fips_allowed_mode_("ccdes_ecb_encrypt_mode", 12);
  v125 = fips_allowed("cckem_encapsulate", "cckem_mlkem768");
  v124 = fips_allowed("cckem_encapsulate", "cckem_mlkem1024");
  v123 = fips_allowed("cckem_decapsulate", "cckem_mlkem768");
  v122 = fips_allowed("cckem_decapsulate", "cckem_mlkem1024");
  v121 = fips_allowed("cckem_generate_key", "cckem_mlkem768");
  v120 = fips_allowed("cckem_generate_key", "cckem_mlkem1024");
  v119 = fips_allowed("cckem_generate_key_with_seed", "cckem_mlkem768");
  v118 = fips_allowed("cckem_generate_key_with_seed", "cckem_mlkem1024");
  v117 = fips_allowed("ccmldsa_sign", "ccmldsa65");
  v116 = fips_allowed("ccmldsa_sign", "ccmldsa87");
  v115 = fips_allowed("ccmldsa_sign_with_context", "ccmldsa65");
  v114 = fips_allowed("ccmldsa_sign_with_context", "ccmldsa87");
  v113 = fips_allowed("ccmldsa_sign_prehashed", "ccmldsa65");
  v112 = fips_allowed("ccmldsa_sign_prehashed", "ccmldsa87");
  v111 = fips_allowed("ccmldsa_verify", "ccmldsa65");
  v99 = fips_allowed("ccmldsa_verify", "ccmldsa87");
  v100 = fips_allowed("ccmldsa_verify_prehashed", "ccmldsa65");
  v101 = fips_allowed("ccmldsa_verify_prehashed", "ccmldsa87");
  v102 = fips_allowed("ccmldsa_verify_with_context", "ccmldsa65");
  v103 = fips_allowed("ccmldsa_verify_with_context", "ccmldsa87");
  v104 = fips_allowed("ccmldsa_generate_key", "ccmldsa65");
  v105 = fips_allowed("ccmldsa_generate_key", "ccmldsa87");
  v106 = fips_allowed("ccmldsa_generate_key_with_seed", "ccmldsa65");
  v107 = fips_allowed("ccmldsa_generate_key_with_seed", "ccmldsa87") | v106 | v105 | v104 | v103 | v102 | v101 | v100 | v99 | v111 | v112 | v113 | v114 | v115 | v116 | v117 | v118 | v119 | v120 | v121 | v122 | v123 | v124 | v125 | v126 | v127 | v128 | v129 | v130 | v131 | v132 | v133 | v134 | v135 | v136 | v137 | v138 | v139 | v140 | v141 | v142 | v143 | v144 | v145 | v146 | v147 | v148 | v149 | v150 | v151 | v152 | v153 | v154 | v155 | v156 | v157 | v158 | v159 | v160 | v161 | v162 | v163 | v164 | v165 | v166 | v167 | v168 | v169 | v170 | v171 | v172 | v173 | v174 | v175 | v177 | v179 | v181 | v183 | v185 | v187 | v189 | v191 | v193 | v195 | v197 | v199 | v201 | v203 | v205 | v207 | v209 | v211 | v213 | v215 | v217 | v219 | v221 | v223 | v225 | v227 | v229 | v231 | v233 | v235 | v237 | v239 | v241 | v243 | v245 | v247 | v249 | v251 | v253 | v255 | v257 | v259 | v261 | v263 | v265 | v267 | v269;
  v108 = v107 | v271 | v273 | v275 | v277 | v279 | v281 | v283 | v285 | v287 | v289 | v291 | v293 | v295 | v297 | v299 | v301 | v303 | v305 | v307 | v309 | v311 | v313 | v315 | v317 | v319 | v321 | v323 | v325 | v327 | v329 | v331 | v333 | v335 | v337 | v339 | v342 | v345 | v348 | v353 | v359 | v365 | v371 | v377 | v383 | v389 | v396;
  if (v403)
  {
    v109 = v108 == 0;
  }

  else
  {
    v109 = 0;
  }

  if (v109)
  {
    return 0;
  }

  else
  {
    return 4294967224;
  }
}

uint64_t ccentropy_get_seed(uint64_t (***a1)(void, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v8 = timingsafe_enable_if_supported();
  v6 = (**a1)(a1, a2, a3);
  cc_disable_dit_with_sb(&v8);
  return v6;
}

uint64_t ccn_mod_521_ws(uint64_t a1, uint64_t a2, uint64_t *a3, int8x16_t *a4)
{
  v14[9] = *MEMORY[0x29EDCA608];
  ccn_shift_right(9, v12, a4 + 4, 9);
  v13 += a4[4].i64[0] & 0x1FF;
  v8 = ccn_add_ws(a1, 8, v12, v12[0].i64, a4->i64);
  v13 += v8;
  v9 = cczp_prime(a2);
  v10 = ccn_sub_ws(a1, 9, v14, v12[0].i64, v9);
  return ccn_mux(9, v10, a3, v12[0].i64, v14);
}

size_t ccpad_pkcs7_encrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = timingsafe_enable_if_supported();
  v12 = *(a1 + 8);
  v13 = (v12 - 1) & a4;
  v14 = a4 - v13;
  (*(a1 + 24))(a2, a3, (a4 - v13) / v12, a5, a6);
  memcpy((a6 + v14), (a5 + v14), v13);
  memset((a6 + a4), v12 - v13, v12 - v13);
  (*(a1 + 24))(a2, a3, 1, a6 + v14, a6 + v14);
  cc_disable_dit_with_sb(&v16);
  return a4 - v13 + v12;
}

uint64_t ccder_sizeof_implicit_octet_string(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = ccn_write_uint_size_public_value(a2, a3);

  return ccder_sizeof(a1, v4);
}

void *ccmode_factory_cfb8_encrypt(void *result, void *a2)
{
  *result = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8) + ((2 * a2[1] + 14) & 0xFFFFFFFFFFFFFFF0) + 8;
  result[1] = 1;
  result[2] = ccmode_cfb8_init;
  result[3] = ccmode_cfb8_encrypt;
  result[4] = a2;
  return result;
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

uint64_t cchkdf_extract_internal(size_t *a1, size_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *MEMORY[0x29EDCA608];
  memset(v7, 0, sizeof(v7));
  if (!a2)
  {
    a2 = *a1;
    a3 = v7;
  }

  cchmac_internal(a1, a2, a3, a4, a5, a6);
  return 0;
}

uint64_t cchkdf_extract(size_t *a1, size_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = *MEMORY[0x29EDCA608];
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

uint64_t cchkdf_expand_internal(rsize_t *a1, rsize_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = *MEMORY[0x29EDCA608];
  v8 = *a1;
  result = 4294967289;
  if (v8 <= a2)
  {
    v10 = a6 + v8 - 1;
    v11 = v10 / v8;
    if (v10 / v8 <= 0xFF)
    {
      v27 = &v27;
      v28 = a6;
      v15 = MEMORY[0x2A1C7C4A8](4294967289);
      v17 = &v27 - v16;
      MEMORY[0x2A1C7C4A8](v15);
      v19 = &v27 - v18;
      cchmac_init_internal(a1, (&v27 - v18), v20, v21);
      if (v8 <= v10)
      {
        v22 = 0;
        v23 = 0;
        v24 = 1;
        do
        {
          memcpy(v17, v19, ((a1[1] + a1[2] + 19) & 0xFFFFFFFFFFFFFFF8) + a1[1]);
          cchmac_update_internal(a1, v17, v23, __src);
          cchmac_update_internal(a1, v17, a4, a5);
          v29 = v24;
          cchmac_update_internal(a1, v17, 1, &v29);
          cchmac_final_internal(a1, v17, __src);
          if (v11 == v24)
          {
            v25 = v28 - v22;
          }

          else
          {
            v25 = *a1;
          }

          memcpy((a7 + v22), __src, v25);
          v23 = *a1;
          v22 += *a1;
        }

        while (v24++ < v11);
      }

      cc_clear(((a1[1] + a1[2] + 19) & 0xFFFFFFFFFFFFFFF8) + a1[1], v19);
      cc_clear(((a1[1] + a1[2] + 19) & 0xFFFFFFFFFFFFFFF8) + a1[1], v17);
      cc_clear(*a1, __src);
      return 0;
    }
  }

  return result;
}

uint64_t cchkdf_expand(rsize_t *a1, rsize_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = timingsafe_enable_if_supported();
  v14 = cchkdf_expand_internal(a1, a2, a3, a4, a5, a6, a7);
  cc_disable_dit_with_sb(&v16);
  return v14;
}

uint64_t cchkdf_internal(rsize_t *a1, uint64_t a2, uint64_t a3, size_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = a4;
  v19 = *MEMORY[0x29EDCA608];
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

uint64_t cchkdf(rsize_t *a1, uint64_t a2, uint64_t a3, size_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = timingsafe_enable_if_supported();
  v17 = cchkdf_internal(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  cc_disable_dit_with_sb(&v19);
  return v17;
}

uint64_t ccspake_prover_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = timingsafe_enable_if_supported();
  inited = ccspake_prover_init_internal(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  cc_disable_dit_with_sb(&v19);
  return inited;
}

uint64_t ccspake_verifier_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v31 = timingsafe_enable_if_supported();
  v16 = (*(a2 + 8))();
  v17 = *v16;
  v18 = sizeof_struct_cche_galois_key();
  v19 = sizeof_struct_ccpolyzp_po2cyc();
  v20 = 20 * v17;
  if (20 * v17 <= 4 * v17 + (v19 + 127) / v19 + 3)
  {
    v20 = 4 * v17 + (v19 + 127) / v19 + 3;
  }

  v21 = cc_malloc_clear(8 * (v20 + (v18 + v19 + v19 * 3 * v17 - 1) / v19));
  v29[0] = v21;
  v22 = *v16;
  v23 = sizeof_struct_cche_galois_key();
  v24 = sizeof_struct_ccpolyzp_po2cyc();
  v25 = 20 * v22;
  if (20 * v22 <= 4 * v22 + (v24 + 127) / v24 + 3)
  {
    v25 = 4 * v22 + (v24 + 127) / v24 + 3;
  }

  v29[1] = v25 + (v23 + v24 + v24 * 3 * v22 - 1) / v24;
  v29[2] = 0;
  v29[3] = cc_ws_alloc;
  v30 = cc_ws_free;
  if (v21)
  {
    inited = ccspake_verifier_init_ws(v29, a1, a2, a3, a4, a5, a6, a7, a8, a9);
    v30(v29);
  }

  else
  {
    inited = 4294967283;
  }

  cc_disable_dit_with_sb(&v31);
  return inited;
}

uint64_t ccspake_verifier_init_ws(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = ccspake_sizeof_ctx(a3);
  cc_clear(v17, a2);
  if (*a3 || ccspake_sizeof_w(a3) != a8)
  {
    return 4294967289;
  }

  v18 = ccspake_sizeof_point(a3);
  result = 4294967289;
  if (a6 <= 0x14 && v18 == a10)
  {
    v20 = (*(a3 + 8))(4294967289);
    v25 = *(a1 + 16);
    v21 = (*(a1 + 24))(a1, (24 * *v20 + 23) >> 3);
    v22 = v21;
    *v21 = v20;
    *a2 = a3;
    *(a2 + 8) = a4;
    *(a2 + 16) = a5;
    *(a2 + 32) = a6;
    *(a2 + 24) = 0;
    *(a2 + 60) = CCSPAKE_STATE_INIT;
    if (a6)
    {
      v21 = __memcpy_chk();
    }

    (*(a3 + 8))(v21);
    result = ccec_generate_scalar_fips_extrabits_ws(a1, v20, a8, a9, (a2 + 336));
    if (result)
    {
      v23 = v25;
    }

    else
    {
      result = ccspake_import_pub_ws(a1);
      v23 = v25;
      if (!result)
      {
        v24 = (*(*a2 + 8))();
        ccspake_store_pub_key(v22, (a2 + 336 + 8 * *v24));
        ccspake_transcript_init(a2);
        result = 0;
      }
    }

    *(a1 + 16) = v23;
  }

  return result;
}

uint64_t ccspake_verifier_initialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5, char *a6, size_t a7, char *a8, size_t a9, char *a10, unint64_t a11, uint64_t a12, uint64_t a13)
{
  v44[0] = timingsafe_enable_if_supported();
  v20 = (*(a2 + 8))();
  v21 = *v20;
  v22 = sizeof_struct_cche_galois_key();
  v23 = sizeof_struct_ccpolyzp_po2cyc();
  v24 = 4 * v21 + (v23 + 127) / v23 + 3;
  if (20 * v21 > v24)
  {
    v24 = 20 * v21;
  }

  v25 = cc_malloc_clear(8 * v24 + 16 * ((v22 + v23 + v23 * 3 * v21 - 1) / v23));
  v40[0] = v25;
  v26 = *v20;
  v27 = sizeof_struct_cche_galois_key();
  v28 = sizeof_struct_ccpolyzp_po2cyc();
  v29 = 4 * v26 + (v28 + 127) / v28 + 3;
  if (20 * v26 > v29)
  {
    v29 = 20 * v26;
  }

  v40[1] = v29 + 2 * ((v27 + v28 + v28 * 3 * v26 - 1) / v28);
  v41 = 0;
  v42 = cc_ws_alloc;
  v43 = cc_ws_free;
  if (v25)
  {
    if (*a2)
    {
      if (a5 && ccspake_sizeof_point(a2) == a13 && ccspake_sizeof_w(a2) == a11)
      {
        v30 = ccspake_sizeof_ctx(a2);
        v31 = cc_clear(v30, a1);
        v37 = (*(a2 + 8))(v31);
        v38 = *v37;
        v36 = cc_ws_alloc(v40, (24 * *v37 + 23) >> 3);
        *v36 = v37;
        *a1 = a2;
        *(a1 + 8) = a3;
        *(a1 + 16) = a4;
        *(a1 + 32) = 0;
        *(a1 + 24) = 0;
        *(a1 + 60) = CCSPAKE_STATE_INIT;
        (*(a2 + 8))();
        uint_internal = ccn_read_uint_internal(v38, a1 + 336, a11, a12);
        if (uint_internal || (uint_internal = ccspake_import_pub_ws(v40), uint_internal))
        {
          inited = uint_internal;
        }

        else
        {
          v33 = (*(*a1 + 8))();
          ccspake_store_pub_key(v36, (a1 + 336 + 8 * *v33));
          ccspake_transcript_init(a1);
          ccspake_transcript_begin(a1, a5, a6, a7, a8, a9, a10);
          inited = 0;
        }

        v41 = 0;
        goto LABEL_18;
      }
    }

    else if (!(a8 | a10))
    {
      inited = ccspake_verifier_init_ws(v40, a1, a2, a3, a4, a5, a6, a11, a12, a13);
      goto LABEL_18;
    }

    inited = 4294967289;
LABEL_18:
    v43(v40);
    goto LABEL_19;
  }

  inited = 4294967283;
LABEL_19:
  cc_disable_dit_with_sb(v44);
  return inited;
}

uint64_t ccn_p384_inv_asm_ws(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v24 = *MEMORY[0x29EDCA608];
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
  v9 = *MEMORY[0x29EDCA608];
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v5 = 1;
  return ccn_mulmod_p384(a3, a4, &v5);
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

uint64_t CC_CAST_set_key(uint64_t result, unint64_t a2, unsigned __int8 *a3)
{
  v93 = *MEMORY[0x29EDCA608];
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v3 = 16;
  if (a2 < 0x10)
  {
    v3 = a2;
  }

  if (a2)
  {
    v4 = &v89;
    do
    {
      v5 = *a3++;
      *v4 = v5;
      v4 = (v4 + 4);
      --v3;
    }

    while (v3);
    v6 = a2 < 0xB;
  }

  else
  {
    v6 = 1;
  }

  v7 = v89;
  v8 = DWORD1(v89) << 16;
  *(result + 128) = v6;
  v9 = v8 | (v7 << 24) | (DWORD2(v89) << 8) | HIDWORD(v89);
  v10 = (DWORD1(v90) << 16) | (v90 << 24) | (DWORD2(v90) << 8) | HIDWORD(v90);
  v11 = DWORD1(v91);
  v12 = DWORD2(v91);
  v13 = HIDWORD(v91);
  v14 = (DWORD1(v91) << 16) | (v91 << 24) | (DWORD2(v91) << 8) | HIDWORD(v91);
  v15 = v92;
  v16 = DWORD1(v92);
  v17 = DWORD2(v92);
  v18 = (DWORD1(v92) << 16) | (v92 << 24) | (DWORD2(v92) << 8) | HIDWORD(v92);
  v19 = CC_CAST_S_table5[HIDWORD(v92)];
  v20 = v88;
  v21 = CC_CAST_S_table6[v91];
  do
  {
    v22 = CC_CAST_S_table4[v16] ^ v9 ^ v19 ^ CC_CAST_S_table6[v15] ^ CC_CAST_S_table7[v17] ^ v21;
    v23 = CC_CAST_S_table6[BYTE2(v22)];
    v24 = CC_CAST_S_table4[HIBYTE(v22)] ^ v14 ^ CC_CAST_S_table5[BYTE1(v22)] ^ CC_CAST_S_table7[v22] ^ CC_CAST_S_table7[v12] ^ v23;
    v25 = CC_CAST_S_table7[HIBYTE(v24)];
    v26 = CC_CAST_S_table5[BYTE1(v24)] ^ CC_CAST_S_table6[BYTE2(v24)];
    v27 = v18 ^ CC_CAST_S_table4[v11] ^ CC_CAST_S_table4[v24] ^ v26 ^ v25;
    v28 = CC_CAST_S_table4[BYTE1(v27)];
    v29 = CC_CAST_S_table5[BYTE2(v27)];
    v30 = v10 ^ CC_CAST_S_table6[v27] ^ CC_CAST_S_table7[HIBYTE(v27)] ^ CC_CAST_S_table5[v13] ^ v28 ^ v29;
    v31 = CC_CAST_S_table7[BYTE1(v24)];
    v32 = v26 ^ v25 ^ CC_CAST_S_table5[v27] ^ v28;
    v33 = CC_CAST_S_table6[v22];
    v34 = CC_CAST_S_table7[BYTE1(v22)];
    v35 = CC_CAST_S_table6[BYTE2(v27)];
    *v20 = CC_CAST_S_table4[HIBYTE(v27)] ^ CC_CAST_S_table6[v24] ^ CC_CAST_S_table4[BYTE1(v22)] ^ v29 ^ v31;
    v20[1] = v32;
    v36 = CC_CAST_S_table4[BYTE2(v24)] ^ CC_CAST_S_table5[v24] ^ CC_CAST_S_table6[HIBYTE(v24)] ^ CC_CAST_S_table6[HIBYTE(v22)] ^ v31 ^ v27;
    v37 = (LOBYTE(CC_CAST_S_table4[BYTE2(v24)]) ^ LOBYTE(CC_CAST_S_table5[v24]) ^ LOBYTE(CC_CAST_S_table6[HIBYTE(v24)]) ^ LOBYTE(CC_CAST_S_table6[HIBYTE(v22)]) ^ v31 ^ v27);
    v38 = CC_CAST_S_table5[BYTE1(v36)];
    v39 = CC_CAST_S_table4[HIBYTE(v36)] ^ CC_CAST_S_table6[BYTE2(v36)] ^ CC_CAST_S_table7[(LOBYTE(CC_CAST_S_table4[BYTE2(v24)]) ^ LOBYTE(CC_CAST_S_table5[v24]) ^ LOBYTE(CC_CAST_S_table6[HIBYTE(v24)]) ^ LOBYTE(CC_CAST_S_table6[HIBYTE(v22)]) ^ v31 ^ v27)] ^ v22 ^ v34 ^ v38;
    v40 = CC_CAST_S_table5[BYTE1(v39)] ^ CC_CAST_S_table4[v39];
    v41 = CC_CAST_S_table4[BYTE1(v30)] ^ CC_CAST_S_table5[v30] ^ CC_CAST_S_table7[HIBYTE(v22)] ^ CC_CAST_S_table7[HIBYTE(v30)] ^ v23;
    v42 = CC_CAST_S_table6[BYTE2(v39)] ^ CC_CAST_S_table7[HIBYTE(v39)] ^ CC_CAST_S_table4[BYTE2(v22)] ^ v24 ^ v40;
    v43 = (LOBYTE(CC_CAST_S_table6[BYTE2(v39)]) ^ LOBYTE(CC_CAST_S_table7[HIBYTE(v39)]) ^ LOBYTE(CC_CAST_S_table4[BYTE2(v22)]) ^ v24 ^ v40);
    v44 = CC_CAST_S_table7[HIBYTE(v42)];
    v45 = CC_CAST_S_table4[BYTE1(v42)] ^ CC_CAST_S_table5[BYTE2(v42)] ^ CC_CAST_S_table6[(LOBYTE(CC_CAST_S_table6[BYTE2(v39)]) ^ LOBYTE(CC_CAST_S_table7[HIBYTE(v39)]) ^ LOBYTE(CC_CAST_S_table4[BYTE2(v22)]) ^ v24 ^ v40)] ^ v44 ^ CC_CAST_S_table5[v22] ^ v30;
    v46 = (LOBYTE(CC_CAST_S_table4[BYTE1(v42)]) ^ LOBYTE(CC_CAST_S_table5[BYTE2(v42)]) ^ LOBYTE(CC_CAST_S_table6[(LOBYTE(CC_CAST_S_table6[BYTE2(v39)]) ^ LOBYTE(CC_CAST_S_table7[HIBYTE(v39)]) ^ LOBYTE(CC_CAST_S_table4[BYTE2(v22)]) ^ v24 ^ v40)]) ^ v44 ^ LOBYTE(CC_CAST_S_table5[v22]) ^ v30);
    v47 = CC_CAST_S_table4[(LOBYTE(CC_CAST_S_table4[BYTE2(v24)]) ^ LOBYTE(CC_CAST_S_table5[v24]) ^ LOBYTE(CC_CAST_S_table6[HIBYTE(v24)]) ^ LOBYTE(CC_CAST_S_table6[HIBYTE(v22)]) ^ v31 ^ v27)];
    v20[2] = CC_CAST_S_table5[BYTE2(v30)] ^ CC_CAST_S_table4[HIBYTE(v30)] ^ v33 ^ v35 ^ v34;
    v20[3] = v41;
    v48 = CC_CAST_S_table6[HIBYTE(v45)];
    v49 = CC_CAST_S_table6[HIBYTE(v42)];
    v50 = v47 ^ CC_CAST_S_table4[HIBYTE(v42)] ^ v38 ^ CC_CAST_S_table7[BYTE2(v45)];
    v51 = CC_CAST_S_table5[HIBYTE(v36)] ^ CC_CAST_S_table4[BYTE2(v36)] ^ CC_CAST_S_table6[BYTE1(v45)];
    v52 = CC_CAST_S_table7[v46] ^ CC_CAST_S_table5[BYTE2(v45)];
    v53 = CC_CAST_S_table5[HIBYTE(v39)] ^ CC_CAST_S_table4[BYTE2(v39)] ^ CC_CAST_S_table6[BYTE1(v42)] ^ CC_CAST_S_table7[v43] ^ CC_CAST_S_table7[v39];
    v20[6] = CC_CAST_S_table7[BYTE2(v42)] ^ CC_CAST_S_table6[v37] ^ v40 ^ v49;
    v20[7] = v53;
    v54 = CC_CAST_S_table4[BYTE2(v45)] ^ CC_CAST_S_table5[v46];
    v55 = CC_CAST_S_table7[BYTE1(v45)] ^ v36;
    v20[4] = v50 ^ v48;
    v20[5] = v51 ^ v52;
    v56 = v54 ^ v55 ^ v48 ^ v49;
    v57 = CC_CAST_S_table5[BYTE1(v56)];
    v58 = v56;
    v59 = CC_CAST_S_table4[HIBYTE(v56)] ^ CC_CAST_S_table6[BYTE2(v56)] ^ CC_CAST_S_table7[v56] ^ CC_CAST_S_table7[BYTE1(v42)] ^ v42 ^ v57;
    v60 = (LOBYTE(CC_CAST_S_table4[HIBYTE(v56)]) ^ LOBYTE(CC_CAST_S_table6[BYTE2(v56)]) ^ LOBYTE(CC_CAST_S_table7[v56]) ^ LOBYTE(CC_CAST_S_table7[BYTE1(v42)]) ^ v42 ^ v57);
    v61 = CC_CAST_S_table5[BYTE1(v59)] ^ CC_CAST_S_table4[(LOBYTE(CC_CAST_S_table4[HIBYTE(v56)]) ^ LOBYTE(CC_CAST_S_table6[BYTE2(v56)]) ^ LOBYTE(CC_CAST_S_table7[v56]) ^ LOBYTE(CC_CAST_S_table7[BYTE1(v42)]) ^ v42 ^ v57)];
    v62 = CC_CAST_S_table6[BYTE2(v59)] ^ CC_CAST_S_table7[HIBYTE(v59)] ^ CC_CAST_S_table4[BYTE2(v42)] ^ v45 ^ v61;
    v63 = CC_CAST_S_table4[BYTE1(v62)] ^ CC_CAST_S_table5[BYTE2(v62)] ^ CC_CAST_S_table6[v62] ^ CC_CAST_S_table7[HIBYTE(v62)] ^ CC_CAST_S_table5[v43] ^ v39;
    v64 = CC_CAST_S_table6[HIBYTE(v62)] ^ CC_CAST_S_table7[BYTE2(v62)] ^ CC_CAST_S_table6[BYTE1(v56)] ^ v61;
    v65 = CC_CAST_S_table4[BYTE2(v59)];
    v66 = CC_CAST_S_table7[BYTE2(v63)] ^ CC_CAST_S_table4[BYTE2(v62)];
    v67 = CC_CAST_S_table4[BYTE2(v56)];
    v68 = CC_CAST_S_table7[BYTE1(v59)];
    v69 = CC_CAST_S_table5[HIBYTE(v59)] ^ CC_CAST_S_table6[BYTE1(v62)] ^ CC_CAST_S_table7[v62] ^ v65 ^ v68;
    v9 = CC_CAST_S_table5[v60] ^ CC_CAST_S_table6[HIBYTE(v59)] ^ CC_CAST_S_table6[HIBYTE(v56)] ^ v65 ^ v68 ^ v62;
    v70 = CC_CAST_S_table6[BYTE2(v9)];
    v71 = CC_CAST_S_table4[v56] ^ CC_CAST_S_table6[HIBYTE(v63)] ^ v66;
    v10 = CC_CAST_S_table4[HIBYTE(v9)] ^ CC_CAST_S_table5[BYTE1(v9)] ^ CC_CAST_S_table7[v9] ^ CC_CAST_S_table7[BYTE1(v56)] ^ v56 ^ v70;
    v72 = (LOBYTE(CC_CAST_S_table4[HIBYTE(v9)]) ^ LOBYTE(CC_CAST_S_table5[BYTE1(v9)]) ^ LOBYTE(CC_CAST_S_table7[v9]) ^ LOBYTE(CC_CAST_S_table7[BYTE1(v56)]) ^ v56 ^ v70);
    v73 = CC_CAST_S_table5[HIBYTE(v56)] ^ CC_CAST_S_table6[BYTE1(v63)] ^ CC_CAST_S_table7[v63] ^ CC_CAST_S_table5[HIBYTE(v63)];
    v74 = CC_CAST_S_table4[(LOBYTE(CC_CAST_S_table4[HIBYTE(v9)]) ^ LOBYTE(CC_CAST_S_table5[BYTE1(v9)]) ^ LOBYTE(CC_CAST_S_table7[v9]) ^ LOBYTE(CC_CAST_S_table7[BYTE1(v56)]) ^ v56 ^ v70)];
    v20[10] = v64;
    v20[11] = v69;
    v75 = CC_CAST_S_table6[BYTE2(v10)];
    v76 = CC_CAST_S_table7[HIBYTE(v10)];
    v77 = v74 ^ CC_CAST_S_table5[BYTE1(v10)] ^ v75 ^ v76;
    v20[8] = v71 ^ v57;
    v20[9] = v73 ^ v67;
    v14 = v77 ^ v59 ^ v67;
    v13 = (v77 ^ v59 ^ v67);
    v12 = BYTE1(v14);
    v78 = CC_CAST_S_table4[BYTE1(v14)];
    v11 = BYTE2(v14);
    v79 = CC_CAST_S_table5[v58] ^ v63;
    v80 = CC_CAST_S_table5[BYTE2(v14)];
    v18 = CC_CAST_S_table6[v13] ^ CC_CAST_S_table7[HIBYTE(v14)] ^ v79 ^ v78 ^ v80;
    v81 = CC_CAST_S_table4[HIBYTE(v14)] ^ CC_CAST_S_table6[v72] ^ CC_CAST_S_table7[BYTE1(v10)] ^ CC_CAST_S_table4[v9] ^ v80;
    v17 = BYTE1(v18);
    v16 = BYTE2(v18);
    v82 = CC_CAST_S_table5[v13] ^ CC_CAST_S_table5[v72] ^ v75 ^ v76 ^ v78;
    v15 = HIBYTE(v18);
    v20[12] = v81;
    v20[13] = v82;
    v19 = CC_CAST_S_table5[v18];
    v21 = CC_CAST_S_table6[HIBYTE(v14)];
    v83 = CC_CAST_S_table4[BYTE1(v18)] ^ CC_CAST_S_table7[HIBYTE(v9)] ^ CC_CAST_S_table7[BYTE2(v18)] ^ v19 ^ v70;
    v20[14] = CC_CAST_S_table5[BYTE2(v18)] ^ CC_CAST_S_table4[HIBYTE(v18)] ^ CC_CAST_S_table6[v9] ^ CC_CAST_S_table7[BYTE1(v9)] ^ v21;
    v20[15] = v83;
    v84 = v20 == v88;
    v20 += 16;
  }

  while (v84);
  v85 = 0;
  v86.i64[0] = 0x1F0000001FLL;
  v86.i64[1] = 0x1F0000001FLL;
  v87.i64[0] = 0x1000000010;
  v87.i64[1] = 0x1000000010;
  do
  {
    v94.val[0] = *&v88[v85];
    v94.val[1] = veorq_s8(vandq_s8(*&v88[v85 + 64], v86), v87);
    vst2q_f32(result, v94);
    result += 32;
    v85 += 16;
  }

  while (v85 != 64);
  return result;
}

uint64_t ccmldsa_sign_prehashed_internal_ws(uint64_t a1, int32x4_t *a2, _OWORD *a3, uint64_t a4, void *a5, _OWORD *a6, uint64_t a7)
{
  v9 = a1;
  v67[80] = *MEMORY[0x29EDCA608];
  v10 = *(a1 + 16);
  v11 = &a2->i32[2];
  v12 = (*(a1 + 24))(a1, (a2->i32[2] & 0xFFFFFFLL) << 7);
  v13 = &a2->i32[1];
  v14 = (*(v9 + 24))(v9, (a2->i32[1] & 0xFFFFFFLL) << 7);
  v15 = (*(v9 + 24))(v9, (a2->i32[1] & 0xFFFFFFLL) << 7);
  __dst = (*(v9 + 24))(v9, (*v11 & 0xFFFFFFLL) << 7);
  v16 = (*(v9 + 24))(v9, (a2->i32[1] & 0xFFFFFFLL) << 7);
  v17 = a2[1].i32[2] + 640 * *v11 + a2->i32[1] + (a2[1].i32[0] >> 2);
  if (v17 == a4)
  {
    v46 = v10;
    v18 = a3[1];
    v64[0] = *a3;
    v64[1] = v18;
    v19 = a3[3];
    v62[0] = a3[2];
    v62[1] = v19;
    v20 = (a3 + 8);
    ccmldsa_polyvecl_bitunpack_eta(a2, v12, v20);
    v21 = v20 + (a2[1].i32[3] * a2->i32[2]);
    ccmldsa_polyveck_bitunpack_eta(a2, v14, v21);
    ccmldsa_polyveck_bitunpack_t0(a2, v15, v21 + (a2[1].i32[3] * a2->i32[1]));
    v50 = v12;
    ccmldsa_polyvecl_ntt_forward_eta(a2, v12);
    v49 = v14;
    ccmldsa_polyveck_ntt_forward_eta(a2, v14);
    v48 = v15;
    ccmldsa_polyveck_ntt_forward(a2, v15);
    v67[0] = v62;
    v67[1] = 32;
    v67[2] = a7;
    v67[3] = 32;
    v67[4] = a6;
    v67[5] = 64;
    cckeccak_oneshot_iovec(3, v67, 0x40uLL, v63, 0x88uLL, 0x1Fu);
    cc_clear(a2[1].u32[0] >> 2, __src);
    cc_clear(a2->u32[2] << 10, __dst);
    cc_clear(a2->u32[1] << 10, v16);
    v45 = 0;
    v51 = v9;
    v52 = *(v9 + 16);
    while (1)
    {
      v22 = *v11;
      v23 = (*(v9 + 24))(v9, (*v11 & 0xFFFFFF) << 7);
      v24 = (*(v9 + 24))(v9, (*v13 & 0xFFFFFFLL) << 7);
      v58 = (*(v9 + 24))(v9, (*v13 & 0xFFFFFFLL) << 7);
      v54 = (*(v9 + 24))(v9, 128);
      v65[0] = v63[0];
      v65[1] = v63[1];
      v65[2] = v63[2];
      v65[3] = v63[3];
      v60 = 0;
      memset(v59, 0, sizeof(v59));
      if (*v11)
      {
        v25 = 0;
        v26 = 0;
        v27 = v45 * v22;
        do
        {
          cckeccak_init_state(v59);
          v66 = v25 + v27;
          cckeccak_absorb_and_pad(v59, 136, 0x42uLL, v65, 0x1Fu);
          permutation = cckeccak_get_permutation();
          cckeccak_squeeze(v59, 0x88uLL, 0x280uLL, v67, permutation);
          ccmldsa_poly_bitunpack_z(v23 + 4 * (v25 << 8), v67);
          v25 = ++v26;
        }

        while (*v11 > v26);
      }

      cc_clear(0xC8uLL, v59);
      cc_clear(0x42uLL, v65);
      cc_clear(0x280uLL, v67);
      memcpy(__dst, v23, a2->u32[2] << 10);
      ccmldsa_polyvecl_ntt_forward(a2, __dst);
      if (!ccmldsa_polyvec_matrix_expand_ntt_pointwise(a2, v24, v64, __dst))
      {
        ccmldsa_polyveck_reduce(a2, v24);
        ccmldsa_polyveck_ntt_inverse(a2->i32, v24);
        ccmldsa_polyveck_caddq(a2, v24);
        ccmldsa_polyveck_decompose(a2, v58, v16, v24);
        ccmldsa_compute_c(a2, __src, a6, v58);
        if (!ccmldsa_sample_in_ball(a2, v54, __src))
        {
          ccmldsa_ntt_forward(v54);
          v29 = a2[1].i32[1];
          ccmldsa_polyvecl_ntt_pointwise_poly(a2, __dst, v50, v54);
          ccmldsa_polyvecl_ntt_inverse(a2->i32, __dst);
          ccmldsa_polyvecl_add(a2, __dst, __dst, v23);
          ccmldsa_polyvecl_reduce(a2, __dst);
          v30 = ccmldsa_polyvecl_checknorm(a2, __dst, 0x80000 - v29);
          v31 = v11;
          v32 = __dst;
          if (!v30)
          {
            v33 = a2[1].i32[1];
            ccmldsa_polyveck_ntt_pointwise_poly(a2, v24, v49, v54);
            ccmldsa_polyveck_ntt_inverse(a2->i32, v24);
            ccmldsa_polyveck_sub(a2, v24, v16, v24);
            ccmldsa_polyveck_reduce(a2, v24);
            if (ccmldsa_polyveck_checknorm(a2, v24, 261888 - v33))
            {
              v31 = &a2->u32[1];
              v32 = v24;
            }

            else
            {
              ccmldsa_polyveck_ntt_pointwise_poly(a2, v16, v48, v54);
              ccmldsa_polyveck_ntt_inverse(a2->i32, v16);
              v34 = ccmldsa_polyveck_checknorm(a2, v16, 261888);
              v31 = &a2->u32[1];
              v32 = v16;
              if (!v34)
              {
                ccmldsa_polyveck_add(a2, v24, v24, v16);
                hint = ccmldsa_polyveck_make_hint(a2, v16, v58, v24);
                v31 = &a2->u32[1];
                v32 = v16;
                if (hint <= a2[1].i32[2])
                {
                  v9 = v51;
                  *(v51 + 16) = v52;
                  memcpy(a5, __src, a2[1].u32[0] >> 2);
                  v38 = a5 + (a2[1].u32[0] >> 2);
                  ccmldsa_polyvecl_bitpack_z(a2, v38, __dst);
                  v39 = (v38 + (640 * a2->i32[2]));
                  cc_clear((a2->i32[1] + a2[1].i32[2]), v39);
                  if (a2->i32[1])
                  {
                    v40 = 0;
                    v41 = 0;
                    v10 = v46;
                    do
                    {
                      v42 = 0;
                      while (1)
                      {
                        v43 = a2[1].u32[2];
                        if (v41 >= v43)
                        {
                          break;
                        }

                        if (*(v16 + 256 * (v40 & 0xFFFFFF) + v42))
                        {
                          *(v39 + v41++) = v42;
                        }

                        if (++v42 == 256)
                        {
                          v43 = a2[1].u32[2];
                          break;
                        }
                      }

                      *(v39 + v43 + v40++) = v41;
                    }

                    while (v40 < *v13);
                    v37 = 0;
                  }

                  else
                  {
                    v37 = 0;
                    v10 = v46;
                  }

                  goto LABEL_28;
                }
              }
            }
          }

          cc_clear(*v31 << 10, v32);
        }
      }

      cc_clear(a2[1].u32[0] >> 2, __src);
      cc_clear(a2->u32[2] << 10, __dst);
      cc_clear(a2->u32[1] << 10, v16);
      v9 = v51;
      *(v51 + 16) = v52;
      v36 = v45++;
      if (v36 >= 0x32D)
      {
        v17 = a2[1].i32[2] + 640 * a2->i32[2] + a2->i32[1] + (a2[1].i32[0] >> 2);
        v37 = 4294967131;
        v10 = v46;
        goto LABEL_30;
      }
    }
  }

  v37 = 4294967289;
LABEL_30:
  cc_clear(v17, a5);
LABEL_28:
  *(v9 + 16) = v10;
  cc_clear(0x20uLL, v64);
  cc_clear(0x40uLL, v63);
  cc_clear(0x20uLL, v62);
  cc_clear(0x40uLL, __src);
  return v37;
}

uint64_t ccmldsa_sign_prehashed_internal(int32x4_t *a1, _OWORD *a2, uint64_t a3, void *a4, _OWORD *a5, uint64_t a6)
{
  v12 = a1->i32[2] << 8;
  v13 = sizeof_struct_ccpolyzp_po2cyc();
  v14 = (v13 - 1 + 4 * (a1->i32[1] << 8)) / v13;
  v15 = v14 + (v13 - 1 + 4 * v12) / v13;
  v22[0] = cc_malloc_clear(16 * (v15 + v14) + 8 * (v15 + (v13 + 1023) / v13));
  v16 = a1->i32[2] << 8;
  v17 = sizeof_struct_ccpolyzp_po2cyc();
  v18 = (v17 - 1 + 4 * (a1->i32[1] << 8)) / v17;
  v19 = v18 + (v17 - 1 + 4 * v16) / v17;
  v22[1] = v19 + (v17 + 1023) / v17 + 2 * (v19 + v18);
  v22[2] = 0;
  v22[3] = cc_ws_alloc;
  v23 = cc_ws_free;
  if (!v22[0])
  {
    return 4294967283;
  }

  v20 = ccmldsa_sign_prehashed_internal_ws(v22, a1, a2, a3, a4, a5, a6);
  v23(v22);
  return v20;
}

uint64_t ccmldsa_sign_with_context(int32x4_t **a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t (**a8)(void, uint64_t, _BYTE *))
{
  v23 = *MEMORY[0x29EDCA608];
  v21 = timingsafe_enable_if_supported();
  v16 = *a1;
  v17 = (*a1)[4].i64[1];
  v18 = (*a8)(a8, 32, v22);
  if (v18)
  {
    v19 = v18;
    goto LABEL_3;
  }

  v19 = ccmldsa_sign_internal(v16, (a1 + v17 + 8), a2, a3, a4, a5, a6, a7, v22);
  if (v19)
  {
LABEL_3:
    cc_clear(v16[1].i32[2] + 640 * v16->i32[2] + v16->i32[1] + (v16[1].i32[0] >> 2), a3);
  }

  cc_clear(0x20uLL, v22);
  cc_disable_dit_with_sb(&v21);
  return v19;
}

uint64_t ccmldsa_sign(int32x4_t **a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (**a6)(void, uint64_t, _BYTE *))
{
  v19 = *MEMORY[0x29EDCA608];
  v17 = timingsafe_enable_if_supported();
  v12 = *a1;
  v13 = (*a1)[4].i64[1];
  v14 = (*a6)(a6, 32, v18);
  if (v14)
  {
    v15 = v14;
    goto LABEL_3;
  }

  v15 = ccmldsa_sign_internal(v12, (a1 + v13 + 8), a2, a3, a4, a5, 0, 0, v18);
  if (v15)
  {
LABEL_3:
    cc_clear(v12[1].i32[2] + 640 * v12->i32[2] + v12->i32[1] + (v12[1].i32[0] >> 2), a3);
  }

  cc_clear(0x20uLL, v18);
  cc_disable_dit_with_sb(&v17);
  return v15;
}

uint64_t *ccaes_ccm_decrypt_mode()
{
  v0 = (*(ccaes_ecb_encrypt_mode() + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  v1 = v0 + ((*ccaes_ecb_encrypt_mode() + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v2 = ccaes_ecb_encrypt_mode();
  ccm_decrypt_info = v1;
  unk_2A14EDE38 = xmmword_299DA2690;
  qword_2A14EDE48 = ccmode_ccm_init;
  qword_2A14EDE50 = ccmode_ccm_set_iv;
  qword_2A14EDE58 = ccmode_ccm_cbcmac;
  qword_2A14EDE60 = ccaes_vng_ccm_decrypt_wrapper;
  qword_2A14EDE68 = ccmode_ccm_finalize;
  qword_2A14EDE70 = ccmode_ccm_reset;
  unk_2A14EDE78 = v2;
  qword_2A14EDE80 = 0;
  return &ccm_decrypt_info;
}

uint64_t ccrsa_oaep_decode_parameter_ws(uint64_t a1, uint64_t *a2, size_t *a3, void *a4, uint64_t a5, unint64_t *a6, size_t a7, char *a8)
{
  v40 = *MEMORY[0x29EDCA608];
  v15 = a5 - 1;
  v16 = *a2;
  v17 = ccrsa_n_from_size(a5);
  ccn_swap(v17, a6);
  v18 = ccrsa_block_start(a5, a6, 0);
  if (v15 <= 2 * *a2)
  {
    return 4294967272;
  }

  v19 = v18;
  v20 = v15 - v16;
  v21 = (v15 - v16 + 7) >> 3;
  v32 = *(a1 + 16);
  v22 = (*(a1 + 24))(a1, v21);
  v23 = (*(a1 + 24))(a1, v21);
  ccdigest_internal(a2, a7, a8, v39);
  v24 = *a2;
  __memcpy_chk();
  memcpy(v22, &v19[v24 + 1], v20);
  ccmgf_internal(a2, *a2, v37, v20, v22);
  ccn_xor((*a2 + 7) >> 3, v38, v38, v37);
  ccmgf_internal(a2, v20, v23, *a2, v38);
  ccn_xor(v21, v22, v22, v23);
  v34 = -(*v19 != 0);
  v35 = v34 | cc_cmp_safe_internal(*a2, v39, v22);
  v25 = *a2;
  if (*a2 >= v20)
  {
    v26 = 0;
    v28 = 255;
  }

  else
  {
    v26 = 0;
    v27 = 255;
    do
    {
      v26 = ((v27 & 1) - 1) & v26 | v25 & -(v27 & 1);
      v27 &= -(v22[v25] != 1);
      v35 |= v22[v25++] != 0 ? v27 : 0;
    }

    while (v25 < v20);
    v28 = v27;
  }

  v36 = v35 | v28;
  if (!v36)
  {
    v30 = v20 + ~v26;
    if (*a3 < v30)
    {
      v31 = -23;
LABEL_14:
      v36 = v31;
      goto LABEL_15;
    }

    memcpy(a4, &v22[v26 + 1], v30);
    *a3 = v30;
  }

  if (v36)
  {
    v31 = -27;
    goto LABEL_14;
  }

LABEL_15:
  cc_clear(0x40uLL, v39);
  cc_clear(0x40uLL, v38);
  cc_clear(0x40uLL, v37);
  *(a1 + 16) = v32;
  return v36;
}

uint64_t ccrsa_oaep_decode_parameter(uint64_t *a1, size_t *a2, void *a3, uint64_t a4, unint64_t *a5, size_t a6, char *a7)
{
  v19 = timingsafe_enable_if_supported();
  v14 = ((a4 + ~*a1 + 7) >> 2) & 0x3FFFFFFFFFFFFFFELL;
  v17[0] = cc_malloc_clear(8 * v14);
  v17[1] = v14;
  v17[2] = 0;
  v17[3] = cc_ws_alloc;
  v18 = cc_ws_free;
  if (v17[0])
  {
    v15 = ccrsa_oaep_decode_parameter_ws(v17, a1, a2, a3, a4, a5, a6, a7);
    v18(v17);
  }

  else
  {
    v15 = 4294967283;
  }

  cc_disable_dit_with_sb(&v19);
  return v15;
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

uint64_t fipspost_post_ffdh(char a1)
{
  v41 = *MEMORY[0x29EDCA608];
  v2 = ccdh_gp_rfc3526group14();
  v3 = ccdh_ccn_size(v2);
  v4 = sizeof_struct_cche_galois_key();
  v5 = sizeof_struct_ccpolyzp_po2cyc();
  v6 = (v4 + v5 - 1) / v5;
  v7 = CCDH_POWER_BLINDED_WORKSPACE_N(v3);
  v31[0] = cc_malloc_clear(8 * (v6 + 2 * v3 + v7));
  v8 = ccdh_ccn_size(v2);
  v9 = sizeof_struct_cche_galois_key();
  v10 = sizeof_struct_ccpolyzp_po2cyc();
  v31[1] = (v9 + v10 - 1) / v10 + 2 * v8 + CCDH_POWER_BLINDED_WORKSPACE_N(v8);
  v32 = 0;
  v33 = cc_ws_alloc;
  v34 = cc_ws_free;
  if (!v31[0])
  {
    return 4294967283;
  }

  v37[12] = xmmword_299DA2760;
  v37[13] = unk_299DA2770;
  v37[14] = xmmword_299DA2780;
  v37[15] = unk_299DA2790;
  v37[8] = xmmword_299DA2720;
  v37[9] = unk_299DA2730;
  v37[10] = xmmword_299DA2740;
  v37[11] = unk_299DA2750;
  v37[4] = xmmword_299DA26E0;
  v37[5] = unk_299DA26F0;
  v37[6] = xmmword_299DA2700;
  v37[7] = unk_299DA2710;
  v37[0] = xmmword_299DA26A0;
  v37[1] = unk_299DA26B0;
  v37[2] = xmmword_299DA26C0;
  v37[3] = unk_299DA26D0;
  v36[12] = xmmword_299DA2860;
  v36[13] = unk_299DA2870;
  v36[14] = xmmword_299DA2880;
  v36[15] = unk_299DA2890;
  v36[8] = xmmword_299DA2820;
  v36[9] = unk_299DA2830;
  v36[10] = xmmword_299DA2840;
  v36[11] = unk_299DA2850;
  v36[4] = xmmword_299DA27E0;
  v36[5] = unk_299DA27F0;
  v36[6] = xmmword_299DA2800;
  v36[7] = unk_299DA2810;
  v36[0] = xmmword_299DA27A0;
  v36[1] = unk_299DA27B0;
  v36[2] = xmmword_299DA27C0;
  v36[3] = unk_299DA27D0;
  v11 = ccdh_ccn_size(v2);
  v12 = cc_ws_alloc(v31, 2 * v11 + 2);
  if (ccdh_import_full(v2, 256, v37, 256, v36, v12))
  {
    v13 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccdh_import_full\n", v13, "fipspost_post_ffdh", 224);
    v14 = 0xFFFFFFFFLL;
  }

  else
  {
    v15 = ccdh_gp_rfc3526group14();
    v16 = v15;
    v40[12] = xmmword_299DA2960;
    v40[13] = unk_299DA2970;
    v40[14] = xmmword_299DA2980;
    v40[15] = unk_299DA2990;
    v40[8] = xmmword_299DA2920;
    v40[9] = unk_299DA2930;
    v40[10] = xmmword_299DA2940;
    v40[11] = unk_299DA2950;
    v40[4] = xmmword_299DA28E0;
    v40[5] = unk_299DA28F0;
    v40[6] = xmmword_299DA2900;
    v40[7] = unk_299DA2910;
    v40[0] = xmmword_299DA28A0;
    v40[1] = unk_299DA28B0;
    v40[2] = xmmword_299DA28C0;
    v40[3] = unk_299DA28D0;
    __s2[12] = xmmword_299DA2A60;
    __s2[13] = unk_299DA2A70;
    __s2[14] = xmmword_299DA2A80;
    __s2[15] = unk_299DA2A90;
    __s2[8] = xmmword_299DA2A20;
    __s2[9] = unk_299DA2A30;
    __s2[10] = xmmword_299DA2A40;
    __s2[11] = unk_299DA2A50;
    __s2[4] = xmmword_299DA29E0;
    __s2[5] = unk_299DA29F0;
    __s2[6] = xmmword_299DA2A00;
    __s2[7] = unk_299DA2A10;
    __s2[0] = xmmword_299DA29A0;
    __s2[1] = unk_299DA29B0;
    __s2[2] = xmmword_299DA29C0;
    __s2[3] = unk_299DA29D0;
    if ((a1 & 0x10) != 0)
    {
      LOBYTE(__s2[0]) = -98;
    }

    v35 = 256;
    v17 = ccdh_ccn_size(v15);
    v18 = v32;
    v19 = v33(v31, v17 + 2);
    if (ccdh_import_pub(v16, 256, v40, v19))
    {
      v20 = mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccdh_import_pub\n", v20, "fipspost_post_ffdh_ws", 93);
      v14 = 4294967224;
    }

    else
    {
      ccdh_compute_shared_secret_ws(v31, v12, v19, &v35, __s1, &ccrng_zero);
      if (v21)
      {
        v14 = v21;
        v22 = mach_absolute_time();
        printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccdh_compute_shared_secret\n", v22, "fipspost_post_ffdh_ws", 101);
      }

      else if (!memcmp(__s1, __s2, 0x100uLL) && v35 == 256)
      {
        v14 = 0;
      }

      else
      {
        v23 = mach_absolute_time();
        printf("FIPSPOST_USER [%llu] %s:%d: FAILED: memcmp\n", v23, "fipspost_post_ffdh_ws", 106);
        v14 = 4294967221;
      }
    }

    v32 = v18;
    if ((a1 & 0x10) != 0)
    {
      v24 = ccdh_gp_rfc3526group14();
      v25 = ccdh_pairwise_consistency_check_ws(v31, v24, &ccrng_zero, v12);
      mach_absolute_time();
      if (v25)
      {
        printf("FIPSPOST_USER [%llu] %s:%d: FAILED: [PCT] CCDH_PAIRWISE_CONSISTENCY: unexpected FAILURE\n");
      }

      else
      {
        printf("FIPSPOST_USER [%llu] %s:%d: [PCT] CCDH_PAIRWISE_CONSISTENCY: expected SUCCESS\n");
      }

      v26 = ccdh_gp_n(*v12);
      v12[v26 + 2] ^= 1uLL;
      v27 = ccdh_pairwise_consistency_check_ws(v31, v24, &ccrng_zero, v12);
      v28 = mach_absolute_time();
      if (v27)
      {
        printf("FIPSPOST_USER [%llu] %s:%d: [PCT] CCDH_PAIRWISE_CONSISTENCY: FORCEFAIL\n", v28, "fipspost_post_ffdh_pairwise_ws", 141);
        v29 = 0;
      }

      else
      {
        printf("FIPSPOST_USER [%llu] %s:%d: FAILED: [PCT] CCDH_PAIRWISE_CONSISTENCY: Unexpected SUCCESS\n", v28, "fipspost_post_ffdh_pairwise_ws", 144);
        v29 = -1;
      }

      v14 = v29 | v14;
    }
  }

  v34(v31);
  return v14;
}

uint64_t ccmode_siv_hmac_temp_key_gen(rsize_t *a1, void *a2, __int128 *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = *(*a1 + 64);
  if (*(v3 + 16) != 16)
  {
    return 4294967226;
  }

  v15 = *a3;
  HIBYTE(v15) &= ~0x80u;
  cc_clear(a1[1], v14);
  v6 = ccctr_one_shot_internal(v3, a1[1] >> 1, (a1 + 8), &v15, a1[1], v14, &v12);
  *a2 = v12;
  if (a1[1] >= 0x20)
  {
    v7 = 0;
    v8 = a2 + 1;
    v9 = &v13;
    do
    {
      v10 = *v9;
      v9 += 2;
      *v8 = v10;
      v8 += 2;
      ++v7;
    }

    while (v7 < a1[1] >> 5);
  }

  cc_clear(0x10uLL, &v15);
  return v6;
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

uint64_t ccz_random_bits(void *a1, uint64_t a2, unsigned int (**a3)(void, unint64_t, uint64_t))
{
  v10 = timingsafe_enable_if_supported();
  ccz_set_sign(a1, 1);
  ccz_set_capacity(a1, (a2 + 63) >> 6);
  ccn_random_bits(a2, a1[3], a3);
  v7 = v6;
  v8 = ccn_n((a2 + 63) >> 6, a1[3]);
  ccz_set_n(a1, v8);
  cc_disable_dit_with_sb(&v10);
  return v7;
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
  v77 = &unk_299DA2AA0;
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

uint64_t ccz_free(uint64_t a1)
{
  v8 = timingsafe_enable_if_supported();
  v2 = *(a1 + 8);
  if (v2 && *(v2 + 24) && ccz_capacity(a1))
  {
    v3 = *(a1 + 8);
    v4 = v3[3];
    v5 = *v3;
    v6 = ccz_capacity(a1);
    v4(v5, v6, *(a1 + 24));
  }

  return cc_disable_dit_with_sb(&v8);
}

uint64_t ccecies_import_eph_pub(void *a1, uint64_t a2, unint64_t a3)
{
  v12 = timingsafe_enable_if_supported();
  v6 = cc_malloc_clear(160 * *a1);
  v7 = 20 * *a1;
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = 0;
  v10[3] = cc_ws_alloc;
  v11 = cc_ws_free;
  if (v6)
  {
    v8 = ccecies_import_eph_pub_ws(v10, a1, a2, a3);
    v11(v10);
  }

  else
  {
    v8 = 4294967283;
  }

  cc_disable_dit_with_sb(&v12);
  return v8;
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

uint64_t fipspost_post_rsa_sig(char a1)
{
  v28 = *MEMORY[0x29EDCA608];
  v25[0] = 32;
  if (ccrsa_import_priv(v25, 1189, fipspost_post_rsa_test_key))
  {
    return 4294967224;
  }

  v24 = 256;
  v3 = ccsha256_di();
  if (ccrsa_sign_pkcs1v15_msg_blinded(&ccrng_zero, v25, v3, 0x100uLL, MESSAGE, &v24, v26))
  {
    v4 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccrsa_sign_pkcs1v15\n", v4, "fipspost_post_rsa_sign", 77);
    v5 = a1 & 0x10;
    v6 = -72;
  }

  else
  {
    v5 = a1 & 0x10;
    if ((a1 & 0x10) != 0)
    {
      v7 = &unk_299DA3116;
    }

    else
    {
      v7 = &unk_299DA3218;
    }

    if (cc_cmp_safe(v24, v26, v7))
    {
      v8 = mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: sig != expected signature\n", v8, "fipspost_post_rsa_sign", 84);
      v6 = -75;
    }

    else
    {
      v6 = 0;
    }
  }

  v9 = ccrsa_ctx_public(v25);
  v10 = ccsha256_di();
  if (v5)
  {
    v11 = &unk_299DA3116;
  }

  else
  {
    v11 = &unk_299DA3218;
  }

  if (ccrsa_verify_pkcs1v15_msg(v9, v10, 0x100uLL, MESSAGE, 0x100uLL, v11, 0))
  {
    v12 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccrsa_verify_pkcs1v15\n", v12, "fipspost_post_rsa_verify", 98);
    v13 = -75;
  }

  else
  {
    v13 = 0;
  }

  v2 = v13 | v6;
  if (v5)
  {
    v14 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N(0x100uLL);
    if (v14 >= 0x900)
    {
      v15 = 8 * v14 + 14336;
    }

    else
    {
      v15 = 0x8000;
    }

    v16 = cc_malloc_clear(v15);
    v26[0] = v16;
    v17 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N(0x100uLL);
    v18 = v17 + 1792;
    if (v17 < 0x900)
    {
      v18 = 4096;
    }

    v26[1] = v18;
    v26[2] = 0;
    v26[3] = cc_ws_alloc;
    v27 = cc_ws_free;
    if (v16)
    {
      v19 = ccrsa_pairwise_consistency_check_ws(v26, v25, &ccrng_zero);
      mach_absolute_time();
      if (v19)
      {
        printf("FIPSPOST_USER [%llu] %s:%d: FAILED: [PCT] CCRSA_PAIRWISE_CONSISTENCY: unexpected FAILURE\n");
      }

      else
      {
        printf("FIPSPOST_USER [%llu] %s:%d: [PCT] CCRSA_PAIRWISE_CONSISTENCY: expected SUCCESS\n");
      }

      v25[v25[0] + 2] ^= 1uLL;
      v21 = ccrsa_pairwise_consistency_check_ws(v26, v25, &ccrng_zero);
      v22 = mach_absolute_time();
      if (v21)
      {
        printf("FIPSPOST_USER [%llu] %s:%d: [PCT] CCRSA_PAIRWISE_CONSISTENCY: FORCEFAIL\n", v22, "fipspost_post_rsa_pairwise", 130);
        v20 = 0;
      }

      else
      {
        printf("FIPSPOST_USER [%llu] %s:%d: FAILED: [PCT] CCRSA_PAIRWISE_CONSISTENCY: unexpected SUCCESS\n", v22, "fipspost_post_rsa_pairwise", 133);
        v20 = -1;
      }

      v27(v26);
    }

    else
    {
      v20 = -13;
    }

    v2 = v20 | v2;
  }

  cc_clear(0x830uLL, v25);
  return v2;
}

uint64_t cche_encrypt_params_get(unsigned int a1)
{
  if (a1 > 0x10)
  {
    return 0;
  }

  else
  {
    return *(&off_29F289708 + a1);
  }
}

uint64_t cche_encryption_params_coefficient_moduli(unint64_t a1, void *a2, unsigned int a3)
{
  result = cche_encrypt_params_get(a3);
  v6 = *(result + 28);
  if (v6 >= a1)
  {
    v6 = a1;
  }

  if (v6)
  {
    v7 = (result + 32);
    do
    {
      v8 = *v7++;
      *a2++ = v8;
      --v6;
    }

    while (v6);
  }

  return result;
}

BOOL cche_encrypt_params_eq(unsigned int *a1, unsigned int *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v4 = a1[7];
  if (v4 != a2[7])
  {
    return 0;
  }

  v5 = sizeof_struct_cche_cipher_plain_ctx();
  v6 = sizeof_struct_ccpolyzp_po2cyc();
  return memcmp(a1, a2, 8 * ((v5 + 8 * v4 + v6 - 1) / v6)) == 0;
}

uint64_t cccfb_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = (*(a1 + 16))(a1, a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t cccfb_update(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = (*(a1 + 24))(a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t cccfb_one_shot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

uint64_t ccblowfish_ltc_setup(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v19[1] = *MEMORY[0x29EDCA608];
  do
  {
    v7 = 0;
    v8 = 4;
    do
    {
      v7 = *(a4 + v6) | (v7 << 8);
      if (v6 + 1 == a3)
      {
        v6 = 0;
      }

      else
      {
        ++v6;
      }

      --v8;
    }

    while (v8);
    a2[v5 + 1024] = ORIG_P[v5] ^ v7;
    ++v5;
  }

  while (v5 != 18);
  for (i = 0; i != 1024; i += 256)
  {
    memcpy(&a2[i], &ORIG_S + i * 4, 0x400uLL);
  }

  v19[0] = 0;
  v10 = a2 + 1025;
  v11 = -2;
  do
  {
    ccblowfish_ltc_ecb_encrypt(a2, 1, v19, v19);
    v12 = bswap32(HIDWORD(v19[0]));
    *(v10 - 1) = bswap32(v19[0]);
    *v10 = v12;
    v11 += 2;
    v10 += 2;
  }

  while (v11 < 0x10);
  v13 = 0;
  v14 = a2 + 1;
  do
  {
    v15 = -2;
    v16 = v14;
    do
    {
      ccblowfish_ltc_ecb_encrypt(a2, 1, v19, v19);
      v17 = bswap32(HIDWORD(v19[0]));
      *(v16 - 1) = bswap32(v19[0]);
      *v16 = v17;
      v15 += 2;
      v16 += 2;
    }

    while (v15 < 0xFE);
    ++v13;
    v14 += 256;
  }

  while (v13 != 4);
  return 0;
}

uint64_t ccblowfish_ltc_ecb_encrypt(_DWORD *a1, uint64_t a2, unsigned int *a3, _BYTE *a4)
{
  if (a2)
  {
    v4 = a1 + 256;
    v5 = a1 + 512;
    v6 = a1 + 768;
    do
    {
      v7 = bswap32(*a3);
      v8 = bswap32(a3[1]);
      v9 = -4;
      v10 = a1 + 1027;
      do
      {
        v11 = *(v10 - 3) ^ v7;
        v12 = *(v10 - 2) ^ v8 ^ (((v4[BYTE2(v11)] + a1[HIBYTE(v11)]) ^ v5[BYTE1(v11)]) + v6[v11]);
        v13 = *(v10 - 1) ^ v11 ^ (((v4[BYTE2(v12)] + a1[HIBYTE(v12)]) ^ v5[BYTE1(v12)]) + v6[v12]);
        v14 = *v10;
        v10 += 4;
        v8 = v14 ^ v12 ^ (((v4[BYTE2(v13)] + a1[HIBYTE(v13)]) ^ v5[BYTE1(v13)]) + v6[v13]);
        v7 = (((v4[BYTE2(v8)] + a1[HIBYTE(v8)]) ^ v5[BYTE1(v8)]) + v6[v8]) ^ v13;
        v9 += 4;
      }

      while (v9 < 0xC);
      v15 = a1[1041] ^ v8;
      v16 = a1[1040] ^ v7;
      *a4 = HIBYTE(v15);
      a4[1] = BYTE2(v15);
      a4[2] = BYTE1(v15);
      a4[3] = v15;
      a4[4] = HIBYTE(v16);
      a4[5] = BYTE2(v16);
      a4[6] = BYTE1(v16);
      a4[7] = v16;
      a3 += 2;
      a4 += 8;
      --a2;
    }

    while (a2);
  }

  return 0;
}

uint64_t ccsrp_generate_K_from_S_ws(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v37 = *MEMORY[0x29EDCA608];
  v6 = (*(a2 + 24) >> 3) & 7;
  switch(v6)
  {
    case 2:
      v33 = ccdh_gp_n(*(a2 + 8));
      v19 = *a2;
      v20 = ccdh_gp_n(*(a2 + 8));
      v35 = *(a1 + 16);
      v21 = (*(a1 + 24))(a1, v20);
      v22 = (*(a1 + 24))(a1, (v20 + 1) >> 1);
      v23 = (*(a1 + 24))(a1, (v20 + 1) >> 1);
      v34 = v19;
      v24 = *v19;
      v25 = (a2 + 32 * v33 + v24 + 32);
      v26 = ccn_write_uint_size_public_value(v20, a3);
      ccn_write_uint_internal(v20, a3, v26, v21);
      if (v26 >= 2)
      {
        v27 = ((v26 & 1) + v21 + 1);
        v28 = v26 >> 1;
        do
        {
          v22[v28 - 1] = *v27;
          v23[v28 - 1] = *(v27 - 1);
          v27 += 2;
          --v28;
        }

        while (v28);
      }

      ccdigest_internal(v34, v26 >> 1, v22, v36);
      ccdigest_internal(v34, v26 >> 1, v23, v25);
      if (v24)
      {
        v29 = (32 * v33 + a2 + 33);
        v30 = v36;
        do
        {
          v31 = *v30++;
          *(v29 - 1) = v31;
          v32 = *v25++;
          *v29 = v32;
          v29 += 2;
          --v24;
        }

        while (v24);
      }

      *(a1 + 16) = v35;
      goto LABEL_14;
    case 1:
      v8 = a2 + 32 * ccdh_gp_n(*(a2 + 8));
      v9 = *a2;
      v10 = ccdh_gp_n(*(a2 + 8));
      v11 = *(a1 + 16);
      v12 = (*(a1 + 24))(a1, v10);
      v13 = ccdh_gp_n(*(a2 + 8));
      v14 = ccdh_gp_n(*(a2 + 8));
      v15 = ccn_write_uint_padded_ct_internal(v13, a3, 8 * v14, v12);
      v16 = 2 * *v9;
      v17 = ccdh_gp_n(*(a2 + 8));
      result = ccmgf_internal(v9, v16, v8 + 32, 8 * v17 - v15, &v12[v15]);
      *(a1 + 16) = v11;
      if (result)
      {
        return result;
      }

      goto LABEL_14;
    case 0:
      v7 = ccdh_gp_n(*(a2 + 8));
      ccsrp_digest_ccn_ws(a1, a2, a3, a2 + 32 * v7 + 32, (*(a2 + 24) >> 9) & 1);
LABEL_14:
      result = 0;
      *(a2 + 24) |= 4u;
      return result;
  }

  return 4294967239;
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

uint64_t ccrng_ecfips_test_init(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = timingsafe_enable_if_supported();
  *a1 = ecfips_test_generate;
  a1[1] = a3;
  a1[2] = a2;
  cc_disable_dit_with_sb(&v7);
  return 0;
}

uint64_t ecfips_test_generate(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (!*(a1 + 16))
  {
    return 4294967291;
  }

  if (a2)
  {
    LOWORD(v3) = -1;
    v4 = -1;
    do
    {
      v5 = v3 + *(*(a1 + 8) + (v4 + *(a1 + 16)) % *(a1 + 16));
      *a3++ = v5;
      v3 = v5 >> 15;
      --v4;
      --a2;
    }

    while (a2);
  }

  return 0;
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

uint64_t ccz_bit(uint64_t a1, unint64_t a2)
{
  v6 = timingsafe_enable_if_supported();
  if (ccz_n(a1) <= a2 >> 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = (*(*(a1 + 24) + 8 * (a2 >> 6)) >> a2) & 1;
  }

  cc_disable_dit_with_sb(&v6);
  return v4;
}

uint64_t ccrng_rsafips_test_init(uint64_t (**a1)(uint64_t a1, unint64_t a2, char *a3), uint64_t (*a2)(uint64_t a1, unint64_t a2, char *a3), uint64_t (*a3)(uint64_t a1, unint64_t a2, char *a3), uint64_t (*a4)(uint64_t a1, unint64_t a2, char *a3), uint64_t (*a5)(uint64_t a1, unint64_t a2, char *a3), uint64_t (*a6)(uint64_t a1, unint64_t a2, char *a3), uint64_t (*a7)(uint64_t a1, unint64_t a2, char *a3))
{
  v15 = timingsafe_enable_if_supported();
  *a1 = ccrng_rsafips_test_generate;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = a2;
  a1[5] = a3;
  a1[6] = a4;
  a1[7] = a5;
  a1[8] = a6;
  a1[9] = a7;
  cc_disable_dit_with_sb(&v15);
  return 0;
}

uint64_t ccrng_rsafips_test_generate(uint64_t a1, unint64_t a2, char *a3)
{
  do
  {
    v5 = a1;
    v6 = *(a1 + 16);
    if (v6 >= 3)
    {
      v8 = *(a1 + 72);
    }

    else
    {
      v7 = a1 + 16 * v6;
      a1 = *(v7 + 32);
      v8 = *(v7 + 40);
      if (a1)
      {
        break;
      }
    }

    a1 = *(v5 + 24);
  }

  while (a1);
  v9 = ccn_bitlen_internal(a1, v8) + 7;
  if (a2 < v9 >> 3)
  {
    return 4294967291;
  }

  v11 = v9 >> 3;
  memcpy(a3, v8, v9 >> 3);
  cc_clear(a2 - v11, &a3[v11]);
  result = 0;
  ++*(v5 + 16);
  return result;
}

uint64_t ccrng_rsafips_test_set_next(uint64_t a1, uint64_t a2)
{
  v5 = timingsafe_enable_if_supported();
  *(a1 + 24) = a2;
  return cc_disable_dit_with_sb(&v5);
}

void ccsrp_generate_client_pubkey_ws(uint64_t a1, uint64_t *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v6 = a2 + 4;
  ccdh_gp_n(v5);
  v7 = ccdh_gp_g(a2[1]);
  private_key_bitlen = ccdh_generate_private_key_bitlen(a2[1]);
  v9 = ccdh_gp_n(a2[1]);
  v10 = ccdh_gp_n(a2[1]);
  if (ccn_bitlen_internal(v9, &v6[v10]) > private_key_bitlen)
  {
    private_key_bitlen = cczp_bitlen(a2[1]);
  }

  v11 = &v6[ccdh_gp_n(a2[1])];

  ccdh_power_blinded_ws(a1, v4, v5, v6, v7, private_key_bitlen, v11);
}

uint64_t ccsrp_client_start_authentication(uint64_t *a1, unsigned int (**a2)(void, unint64_t, uint64_t), char *a3)
{
  v19 = timingsafe_enable_if_supported();
  v6 = ccdh_gp_n(a1[1]);
  v7 = CCDH_POWER_BLINDED_WORKSPACE_N(v6);
  v15[0] = cc_malloc_clear(8 * v7);
  v15[1] = CCDH_POWER_BLINDED_WORKSPACE_N(v6);
  v16 = 0;
  v17 = cc_ws_alloc;
  v18 = cc_ws_free;
  if (v15[0])
  {
    v8 = a1[1];
    v9 = ccdh_gp_n(v8);
    ccdh_generate_private_key_ws(v15, v8, &a1[v9 + 4], a2);
    if (v10 || (ccsrp_generate_client_pubkey_ws(v15, a1), v10))
    {
      v13 = v10;
    }

    else
    {
      ccdh_gp_n(a1[1]);
      v11 = ccdh_gp_n(a1[1]);
      v12 = ccdh_gp_n(a1[1]);
      ccn_write_uint_padded_ct_internal(v11, a1 + 4, 8 * v12, a3);
      v13 = 0;
    }

    v16 = 0;
    v18(v15);
  }

  else
  {
    v13 = 4294967283;
  }

  cc_disable_dit_with_sb(&v19);
  return v13;
}

uint64_t ccsrp_client_process_challenge(uint64_t *a1, char *a2, size_t a3, char *a4, size_t a5, char *a6, uint64_t a7, void *a8)
{
  v44 = timingsafe_enable_if_supported();
  v16 = ccdh_gp_n(a1[1]);
  v17 = CCDH_POWER_BLINDED_WORKSPACE_N(v16);
  v40[0] = cc_malloc_clear(8 * (v17 + 8 * v16));
  v40[1] = CCDH_POWER_BLINDED_WORKSPACE_N(v16) + 8 * v16;
  v41 = 0;
  v42 = cc_ws_alloc;
  v43 = cc_ws_free;
  if (v40[0])
  {
    v36 = a3;
    v37 = a4;
    v38 = a6;
    v39 = a5;
    __dst = a8;
    v18 = ccdh_gp_n(a1[1]);
    v35 = ccdh_gp_n(a1[1]);
    v19 = cc_ws_alloc(v40, v18);
    v20 = v42(v40, v18);
    v21 = v42(v40, v18);
    v22 = v42(v40, v18);
    v23 = v42(v40, v18);
    v24 = **a1;
    if (cczp_bitlen(a1[1]) < (8 * v24))
    {
      K_from_S_ws = 4294967239;
LABEL_13:
      v43(v40);
      goto LABEL_14;
    }

    v26 = ccdh_gp_n(a1[1]);
    v27 = ccdh_gp_n(a1[1]);
    uint_internal = ccn_read_uint_internal(v26, v19, 8 * v27, a7);
    if (!uint_internal)
    {
      cczp_mod_ws(v40, a1[1]);
      if (!ccn_n(v18, v23) || (v29 = a1 + 4, ccdh_gp_n(a1[1]), ccsrp_generate_u_ws(v40, a1, v20, a1 + 4, v19), cczp_mod_ws(v40, a1[1]), !ccn_n(v18, v23)))
      {
        K_from_S_ws = 4294967238;
        goto LABEL_12;
      }

      uint_internal = ccsrp_generate_x(a1, v21, a2, v39, v38, v36, v37);
      if (!uint_internal)
      {
        v30 = &v29[3 * v35];
        ccsrp_generate_k_ws(v40, a1, v22);
        ccsrp_generate_client_S_ws(v40, a1, v30, v22, v21, v20);
        if (!uint_internal)
        {
          K_from_S_ws = ccsrp_generate_K_from_S_ws(v40, a1, v30);
          if (!K_from_S_ws)
          {
            ccdh_gp_n(a1[1]);
            ccsrp_generate_M_ws(v40, a1, a2, v39, v38, a1 + 4, v19);
            ccdh_gp_n(a1[1]);
            ccsrp_generate_H_AMK_ws(v40, a1, a1 + 4);
            v31 = &v29[4 * ccdh_gp_n(a1[1])] + 2 * **a1;
            v32 = ccsrp_sizeof_M_HAMK(*a1);
            memcpy(__dst, v31, v32);
          }

          goto LABEL_12;
        }
      }
    }

    K_from_S_ws = uint_internal;
LABEL_12:
    v41 = 0;
    goto LABEL_13;
  }

  K_from_S_ws = 4294967283;
LABEL_14:
  cc_disable_dit_with_sb(&v44);
  return K_from_S_ws;
}

uint64_t ccsrp_client_verify_session(uint64_t a1, uint64_t a2)
{
  v10 = timingsafe_enable_if_supported();
  v4 = ccsrp_sizeof_M_HAMK(*a1);
  v5 = ccdh_gp_n(*(a1 + 8));
  v6 = cc_cmp_safe_internal(v4, a1 + 32 * v5 + 3 * **a1 + 32, a2);
  v7 = *(a1 + 24);
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = (v7 >> 2) & 1;
  }

  *(a1 + 24) = v7 & 0xFFFFFFFE | v8;
  cc_disable_dit_with_sb(&v10);
  return v8;
}

unint64_t cche_param_ctx_plaintext_ctx(uint64_t a1)
{
  v2 = *(a1 + 28);
  v3 = sizeof_struct_cche_cipher_plain_ctx();
  v4 = sizeof_struct_ccpolyzp_po2cyc();
  v5 = (a1 + 8 * ((v4 - 1 + v3 + 8 * v2) / v4));
  v6 = sizeof_struct_ccpolyzp_po2cyc();
  v8 = *v5;
  v7 = v5[1];
  v9 = (v4 - 1 + v6) / v4;
  v10 = (sizeof_struct_ccpolyzp_po2cyc_ctx() + 7) >> 3;
  if (v8 >= 0x80)
  {
    v11 = 128;
  }

  else
  {
    v11 = v8;
  }

  return &v5[2 * (v10 + 2 * (v8 + ((sizeof_struct_ccrns_mul_modulus() + 7) >> 3) * v11) + 6) * v7 + 2 * v9];
}

unint64_t CCHE_PARAM_CTX_INIT_WORKSPACE_N(uint64_t a1)
{
  v2 = sizeof_struct_cche_cipher_plain_ctx();
  v3 = sizeof_struct_ccpolyzp_po2cyc();
  v4 = (8 * a1 + v2 + v3 - 1) / v3;
  v5 = CCHE_DECRYPT_CTX_INIT_WORKSPACE_N(a1);
  v6 = CCHE_CIPHER_PLAIN_CTX_INIT_WORKSPACE_N(a1);
  if (v5 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  return v7 + v4;
}

unint64_t cche_param_ctx_nof_n(uint64_t a1)
{
  v3 = *(a1 + 28);
  v15 = *(a1 + 16);
  v2 = v15;
  v16 = v3;
  v4 = sizeof_struct_cche_cipher_plain_ctx();
  v5 = sizeof_struct_ccpolyzp_po2cyc();
  v6 = (v5 - 1 + 8 * v3 + v4) / v5;
  v7 = (v5 - 1 + sizeof_struct_ccpolyzp_po2cyc()) / v5;
  v8 = (sizeof_struct_ccpolyzp_po2cyc_ctx() + 7) >> 3;
  if (v15 >= 0x80)
  {
    v9 = 128;
  }

  else
  {
    v9 = v15;
  }

  v10 = v8 + 2 * (v15 + ((sizeof_struct_ccrns_mul_modulus() + 7) >> 3) * v9) + 6;
  v11 = v6 + ((4 * v2 + 7) >> 3) + v7 + cche_decrypt_ctx_nof_n(&v15) + v10 + v10 * v3;
  v12 = *(a1 + 28);
  if (v12)
  {
    for (i = 1; i <= v12; ++i)
    {
      v16 = i;
      v11 += 2 * i + ((sizeof_struct_cche_cipher_plain_ctx() + 7) >> 3);
    }
  }

  return v11;
}

uint64_t cche_param_ctx_chain_const(uint64_t a1)
{
  v2 = *(a1 + 28);
  v3 = sizeof_struct_cche_cipher_plain_ctx();
  v4 = sizeof_struct_ccpolyzp_po2cyc();
  return a1 + 8 * ((v3 + 8 * v2 + v4 - 1) / v4);
}

uint64_t cche_param_ctx_key_ctx_nmoduli(uint64_t a1)
{
  v2 = *(a1 + 28);
  v3 = sizeof_struct_cche_cipher_plain_ctx();
  v4 = sizeof_struct_ccpolyzp_po2cyc();
  return *(a1 + 8 * ((v3 + 8 * v2 + v4 - 1) / v4) + 12);
}

uint64_t cche_param_ctx_ciphertext_ctx_nmoduli(uint64_t a1)
{
  v2 = *(a1 + 28);
  v3 = sizeof_struct_cche_cipher_plain_ctx();
  v4 = sizeof_struct_ccpolyzp_po2cyc();
  v5 = (a1 + 8 * ((v3 + 8 * v2 + v4 - 1) / v4));
  if (v5[1] < 2)
  {
    v9 = (v5 + 2);
  }

  else
  {
    v6 = *v5;
    v7 = sizeof_struct_ccpolyzp_po2cyc_ctx() + 7;
    if (v6 >= 0x80)
    {
      v8 = 128;
    }

    else
    {
      v8 = v6;
    }

    v9 = &v5[4 * v6 + 14 + 4 * ((sizeof_struct_ccrns_mul_modulus() + 7) >> 3) * v8] + (v7 & 0xFFFFFFFFFFFFFFF8);
  }

  return *(v9 + 4);
}

uint64_t cche_param_ctx_coefficient_moduli(uint64_t a1)
{
  v3 = timingsafe_enable_if_supported();
  cc_disable_dit_with_sb(&v3);
  return a1 + 32;
}

uint64_t cche_param_ctx_key_ctx_poly_nbytes(uint64_t a1)
{
  v7 = timingsafe_enable_if_supported();
  v2 = *(a1 + 28);
  v3 = sizeof_struct_cche_cipher_plain_ctx();
  v4 = sizeof_struct_ccpolyzp_po2cyc();
  v5 = ccpolyzp_po2cyc_serialize_poly_nbytes((a1 + 8 * ((v3 + 8 * v2 + v4 - 1) / v4) + 8), 0);
  cc_disable_dit_with_sb(&v7);
  return v5;
}

uint64_t cche_param_ctx_plaintext_modulus_inverse(void *a1, uint64_t a2, uint64_t a3)
{
  v12 = timingsafe_enable_if_supported();
  v8 = cc_malloc_clear(0x48uLL);
  v9 = xmmword_299DA4730;
  v10 = cc_ws_alloc;
  v11 = cc_ws_free;
  if (v8)
  {
    v6 = cche_param_ctx_plaintext_modulus_inverse_ws(&v8, a1, a2, a3);
    v11(&v8);
  }

  else
  {
    v6 = 4294967283;
  }

  cc_disable_dit_with_sb(&v12);
  return v6;
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

uint64_t ccec_projectify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = timingsafe_enable_if_supported();
  v8 = *a1;
  v9 = sizeof_struct_ccpolyzp_po2cyc();
  v14[0] = cc_malloc_clear(8 * (5 * v8 + (v9 + 7) / v9) + 24);
  v10 = *a1;
  v11 = sizeof_struct_ccpolyzp_po2cyc();
  v14[1] = 5 * v10 + (v11 + 7) / v11 + 3;
  v14[2] = 0;
  v14[3] = cc_ws_alloc;
  v15 = cc_ws_free;
  if (v14[0])
  {
    v12 = (*(a1[2] + 72))(v14, a1, a2, a3, a4);
    v15(v14);
  }

  else
  {
    v12 = 4294967283;
  }

  cc_disable_dit_with_sb(&v16);
  return v12;
}

uint64_t AccelerateCrypto_AES_encrypt(uint64_t a1, int8x16_t *a2, __int128 *a3)
{
  v3 = *(a3 + 60);
  _Q1 = *a3;
  v5 = 16;
  do
  {
    __asm
    {
      AESE            V0.16B, V1.16B
      AESMC           V0.16B, V0.16B
    }

    _Q1 = a3[v5 / 0x10];
    v5 += 16;
  }

  while (v5 < v3);
  __asm { AESE            V0.16B, V1.16B }

  *a2 = veorq_s8(_Q0, *(a3 + v3));
  return 0;
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

unsigned __int8 *ccder_decode_rsa_priv(uint64_t *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v8 = timingsafe_enable_if_supported();
  v6 = ccder_decode_rsa_priv_internal(a1, a2, a3);
  cc_disable_dit_with_sb(&v8);
  return v6;
}

uint64_t ccaes_cfb_encrypt_vng(int8x16_t *a1, unint64_t a2, int8x16_t *a3, int8x16_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v8 = a1 + 1;
  v9 = a1->i64[1];
  v10 = (*(a1->i64[0] + 8) + 7) >> 3;
  i8 = a1[v10 + 1].i8;
  v12 = (a1 + 8 * v10 + 16);
  v13 = v9 == 16 || a2 == 0;
  if (!v13)
  {
    v14 = 0;
    v15 = a1[1].i64 + v9;
    v16 = v15 + 8 * v10;
    do
    {
      v17 = *(v15 + v14) ^ a3->i8[v14];
      a4->i8[v14] = v17;
      *(v16 + v14) = v17;
      v18 = v14 + 1;
      if (v9 + v14 == 15)
      {
        break;
      }

      v13 = a2 - 1 == v14++;
    }

    while (!v13);
    v9 += v18;
    v6 = a2 - v18;
    v4 = (a4 + v18);
    v5 = (a3 + v18);
  }

  if (v6 >= 0x10)
  {
    ccaes_cfb_encrypt_vng_vector(i8, v12, v6 >> 4, v5, v4);
    v5 = (v5 + (v6 & 0xFFFFFFFFFFFFFFF0));
    v4 = (v4 + (v6 & 0xFFFFFFFFFFFFFFF0));
    v6 &= 0xFu;
  }

  if (!v6)
  {
LABEL_17:
    result = 0;
    a1->i64[1] = v9;
    return result;
  }

  while (v9 != 16)
  {
LABEL_16:
    v19 = v5->i8[0];
    v5 = (v5 + 1);
    v20 = v8->i8[v9];
    v4->i8[0] = v20 ^ v19;
    v4 = (v4 + 1);
    v12->i8[v9++] = v20 ^ v19;
    if (!--v6)
    {
      goto LABEL_17;
    }
  }

  if (!AccelerateCrypto_AES_encrypt(v12, v8, i8))
  {
    v9 = 0;
    goto LABEL_16;
  }

  return 0xFFFFFFFFLL;
}

uint64_t cchpke_kem_generate_key_pair(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = timingsafe_enable_if_supported();
  v12 = (*(*(a1 + 16) + 48))(a2, a3, a4, a5, a6);
  cc_disable_dit_with_sb(&v14);
  return v12;
}

uint64_t cchpke_responder_setup(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5, const void *a6, uint64_t a7, uint64_t a8)
{
  v18 = timingsafe_enable_if_supported();
  v16 = cchpke_responder_setup_internal(a1, a2, a3, a4, a5, a6, a7, a8);
  cc_disable_dit_with_sb(&v18);
  return v16;
}

uint64_t cchpke_initiator_encrypt(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = timingsafe_enable_if_supported();
  v16 = cchpke_initiator_encrypt_internal(a1, a2, a3, a4, a5, a6, a7, a8);
  cc_disable_dit_with_sb(&v18);
  return v16;
}

uint64_t cchpke_initiator_encrypt_internal(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = *MEMORY[0x29EDCA608];
  v16 = (a1 + 1);
  v15 = *a1;
  v17 = *(v15 + 8);
  v18 = *(v17 + 24);
  result = cchpke_nonce(v15, v16, v18, v21);
  if (!result)
  {
    result = (*(v17 + 32))(*(v17 + 8), v16, v18, v21, a2, a3, a4, a5, a6, a7, a8);
    if (!result)
    {
      ++a1[11];
    }
  }

  return result;
}

uint64_t cchpke_responder_decrypt(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = timingsafe_enable_if_supported();
  v16 = cchpke_responder_decrypt_internal(a1, a2, a3, a4, a5, a6, a7, a8);
  cc_disable_dit_with_sb(&v18);
  return v16;
}

uint64_t cchpke_responder_decrypt_internal(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = *MEMORY[0x29EDCA608];
  v16 = (a1 + 1);
  v15 = *a1;
  v17 = *(v15 + 8);
  v18 = *(v17 + 24);
  result = cchpke_nonce(v15, v16, v18, v21);
  if (!result)
  {
    result = (*(v17 + 40))(*(v17 + 8), v16, v18, v21, a2, a3, a4, a5, a8, a6, a7);
    if (!result)
    {
      ++a1[11];
    }
  }

  return result;
}

uint64_t cchpke_kdf_hkdf_sha256_hash(size_t a1, char *a2, uint64_t a3)
{
  v6 = ccsha256_di();

  return ccdigest_internal(v6, a1, a2, a3);
}

uint64_t cchpke_labeled_extract(unsigned __int16 **a1, int a2, size_t a3, char *a4, size_t a5, const void *a6, size_t a7, const void *a8, uint64_t a9)
{
  *&v22[85] = *MEMORY[0x29EDCA608];
  qmemcpy(v21, "HPKE-v1", sizeof(v21));
  v16 = cchpke_suite_id(a1, a2, v22) + 7;
  memcpy(&v21[v16], a6, a5);
  v17 = memcpy(&v21[v16 + a5], a8, a7);
  v18 = (*(*a1 + 3))(v17);
  internal = cchkdf_extract_internal(v18, a3, a4, v16 + a5 + a7, v21, a9);
  cc_clear(0x5CuLL, v21);
  return internal;
}

uint64_t cchpke_suite_id(unsigned __int16 **a1, int a2, uint64_t a3)
{
  v3 = bswap32(*a1[2]) >> 16;
  if (a2)
  {
    *(a3 + 2) = 77;
    *a3 = 17739;
    result = 5;
    v5 = 3;
  }

  else
  {
    v6 = bswap32(*a1[1]);
    v7 = **a1;
    *(a3 + 4) = v3;
    v3 = HIWORD(v6);
    *a3 = 1162563656;
    *(a3 + 6) = bswap32(v7) >> 16;
    result = 10;
    v5 = 8;
  }

  *(a3 + v5) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_1(unsigned __int16 **a1, uint64_t a2, rsize_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10)
{

  return cchpke_labeled_expand(a1, 0, a3, v12, 3uLL, a6, v11, v10, a9, a10);
}

BOOL OUTLINED_FUNCTION_3_0()
{

  return timingsafe_enable_if_supported();
}

void ccrsa_generate_key_internal_ws(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unsigned int (**a6)(void, unint64_t, uint64_t), unsigned int (**a7)(void, unint64_t, uint64_t))
{
  if (a2 <= 0x2000)
  {
    v12 = a2 >> 1;
    v13 = (a2 >> 1) + 1;
    v14 = a2 - v13;
    v15 = (a2 + 63) >> 6;
    v30 = *(a1 + 16);
    *a3 = v15;
    v16 = ccrsa_ctx_public(a3);
    *ccrsa_ctx_private_zp(a3) = (v12 + 64) >> 6;
    v17 = ccrsa_ctx_private_zp(a3);
    *(v17 + 16 * *ccrsa_ctx_private_zp(a3) + 32) = (v14 + 63) >> 6;
    v18 = v16 + 3;
    if (ccn_read_uint_internal(v15, &v16[2 * *v16 + 4], a4, a5) || (v19 = &v18[2 * *v16], v21 = *(v19 + 8), v20 = v19 + 1, (v21 & 1) == 0) || ccn_bitlen_internal(v15, v20) < 2 || (v22 = ccrsa_ctx_private_zp(a3), v23 = ccrsa_ctx_private_zp(a3), v24 = *ccrsa_ctx_private_zp(a3), ccrsa_generate_prime_ws(a1, v13, v22 + 3, &v18[2 * *v16 + 1], a6, a7), v25) || cczp_init_ws(a1, v22) || (v26 = v23 + 16 * v24, ccrsa_generate_prime_ws(a1, v14, (v26 + 56), &v18[2 * *v16 + 1], a6, a7), v27) || cczp_init_ws(a1, (v26 + 32)))
    {
      v28 = v30;
    }

    else
    {
      v28 = v30;
      if (!ccrsa_crt_makekey_ws(a1, a3))
      {
        ccrsa_pairwise_consistency_check_ws(a1, a3, a6);
      }
    }

    *(a1 + 16) = v28;
  }
}

uint64_t ccrsa_generate_key_internal(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int (**a5)(void, unint64_t, uint64_t), unsigned int (**a6)(void, unint64_t, uint64_t))
{
  v10 = a1 + 63;
  v11 = (a1 + 63) >> 6;
  v12 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N(v11);
  if (9 * v11 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = 9 * v11;
  }

  v14 = 8 * v11 - (v10 >> 6);
  v15 = v13 + v14;
  v16 = sizeof_struct_ccrns_mul_modulus();
  v17 = sizeof_struct_ccpolyzp_po2cyc();
  v18 = 21 * v11 + 2;
  v19 = (v16 + v17 - 1) / v17 + v18;
  if (v15 > v19)
  {
    v19 = v15;
  }

  v20 = cc_malloc_clear(8 * v19);
  v32[0] = v20;
  v21 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N(v11);
  if (9 * v11 <= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = 9 * v11;
  }

  v23 = v22 + v14;
  v24 = sizeof_struct_ccrns_mul_modulus();
  v25 = sizeof_struct_ccpolyzp_po2cyc();
  v26 = (v24 + v25 - 1) / v25 + v18;
  if (v23 > v26)
  {
    v26 = v23;
  }

  v32[1] = v26;
  v32[2] = 0;
  v32[3] = cc_ws_alloc;
  v33 = cc_ws_free;
  if (!v20)
  {
    return 4294967283;
  }

  ccrsa_generate_key_internal_ws(v32, a1, a2, a3, a4, a5, a6);
  v28 = v27;
  v33(v32);
  return v28;
}

uint64_t ccrsa_make_priv(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45 = timingsafe_enable_if_supported();
  v14 = *a1 + (*a1 & 0xFFFFFFFFFFFFFFFELL) + 9 * *a1 + 4;
  v41[0] = cc_malloc_clear(8 * v14);
  v41[1] = v14;
  v42 = 0;
  v43 = cc_ws_alloc;
  v44 = cc_ws_free;
  if (v41[0])
  {
    v39 = a2;
    v40 = a3;
    v15 = *a1;
    v16 = a5;
    v17 = *a1 >> 1;
    v18 = cc_ws_alloc(v41, v17 + 1);
    v19 = v43(v41, v17 + 1);
    v20 = v43(v41, v15);
    if (!ccn_read_uint_internal(v17 + 1, v18, a4, v16) && !ccn_read_uint_internal(v17 + 1, v19, a6, a7) && !ccn_read_uint_internal(v15, v20, v39, v40))
    {
      v21 = ccn_n(v15, v20);
      if (v21)
      {
        v22 = v21;
        if (ccn_n(v21, v20) > 1 || *v20 >= 2uLL)
        {
          v23 = ccn_cmp_public_value(v17 + 1, v18, v19);
          if (v23)
          {
            ccn_cond_swap(v17 + 1, v23 < 0, v18, v19);
            v24 = ccn_bitlen_internal(v17 + 1, v18);
            v25 = ccn_bitlen_internal(v17 + 1, v19);
            if ((v24 - v25) > 2)
            {
              v37 = 4294967257;
              goto LABEL_17;
            }

            if (v25 + v24 <= (v15 << 6))
            {
              v26 = (v24 + 63) >> 6;
              v27 = (v25 + 63) >> 6;
              *ccrsa_ctx_private_zp(a1) = v26;
              v28 = ccrsa_ctx_private_zp(a1);
              ccn_set(v26, (v28 + 24), v18);
              v29 = ccrsa_ctx_private_zp(a1);
              *(v29 + 16 * *ccrsa_ctx_private_zp(a1) + 32) = v27;
              v30 = ccrsa_ctx_private_zp(a1);
              v31 = ccrsa_ctx_private_zp(a1);
              ccn_set(v27, (v30 + 16 * *v31 + 56), v19);
              v32 = &a1[2 * *a1 + 4];
              ccn_set(v22, v32, v20);
              ccn_zero(v15 - v22, &v32[v22]);
              v42 = 0;
              v33 = ccrsa_ctx_private_zp(a1);
              inited = cczp_init_ws(v41, v33);
              if (!inited)
              {
                v35 = ccrsa_ctx_private_zp(a1);
                v36 = ccrsa_ctx_private_zp(a1);
                inited = cczp_init_ws(v41, (v35 + 16 * *v36 + 32));
                if (!inited)
                {
                  inited = ccrsa_crt_makekey_ws(v41, a1);
                }
              }

              v37 = inited;
              goto LABEL_17;
            }
          }
        }
      }
    }

    v37 = 4294967273;
LABEL_17:
    v42 = 0;
    v44(v41);
    goto LABEL_18;
  }

  v37 = 4294967283;
LABEL_18:
  cc_disable_dit_with_sb(&v45);
  return v37;
}

uint64_t *ccaes_gcm_decrypt_mode()
{
  v0 = 5 * ((*(ccaes_ecb_encrypt_mode() + 1) + 7) & 0xFFFFFFFFFFFFFFF8);
  v1 = v0 + ((*ccaes_ecb_encrypt_mode() + 7) & 0xFFFFFFFFFFFFFFF8) + 384;
  v2 = ccaes_ecb_encrypt_mode();
  gcm_decrypt = v1;
  qword_2A14EDE90 = 78647;
  qword_2A14EDE98 = 1;
  unk_2A14EDEA0 = ccmode_gcm_init;
  qword_2A14EDEA8 = ccmode_gcm_set_iv;
  qword_2A14EDEB0 = ccmode_gcm_aad;
  qword_2A14EDEB8 = ccaes_vng_gcm_decrypt;
  qword_2A14EDEC0 = ccmode_gcm_finalize;
  qword_2A14EDEC8 = ccmode_gcm_reset;
  unk_2A14EDED0 = v2;
  return &gcm_decrypt;
}

uint64_t ccrsa_verify_pkcs1v15(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, _BYTE *a7)
{
  v21[2] = *MEMORY[0x29EDCA608];
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

uint64_t ccrsa_verify_pkcs1v15_digest(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7)
{
  v22 = *MEMORY[0x29EDCA608];
  v20 = timingsafe_enable_if_supported();
  v14 = cc_malloc_clear(88 * *a1);
  v15 = 11 * *a1;
  v18[0] = v14;
  v18[1] = v15;
  v18[2] = 0;
  v18[3] = cc_ws_alloc;
  v19 = cc_ws_free;
  if (v14)
  {
    if (a7)
    {
      *a7 = 0;
      a7[1] = 0;
      v21 = 0uLL;
      v16 = ccrsa_verify_pkcs1v15_internal_ws(v18, a1, a2, a3, a4, a5, a6, 0, &v21);
      *a7 = v21;
    }

    else
    {
      v21 = 0uLL;
      v16 = ccrsa_verify_pkcs1v15_internal_ws(v18, a1, a2, a3, a4, a5, a6, 0, &v21);
    }

    v19(v18);
  }

  else
  {
    v16 = 4294967283;
  }

  cc_disable_dit_with_sb(&v20);
  return v16;
}

uint64_t ccrsa_verify_pkcs1v15_msg_ws(uint64_t a1, uint64_t *a2, unint64_t *a3, size_t a4, char *a5, unint64_t a6, uint64_t a7, void *a8)
{
  v19 = *MEMORY[0x29EDCA608];
  ccdigest_internal(a3, a4, a5, v17);
  v14 = a3[4];
  v15 = *a3;
  if (a8)
  {
    *a8 = 0;
    a8[1] = 0;
    v18 = 0uLL;
    result = ccrsa_verify_pkcs1v15_internal_ws(a1, a2, v14, v15, v17, a6, a7, 0, &v18);
    *a8 = v18;
  }

  else
  {
    v18 = 0uLL;
    return ccrsa_verify_pkcs1v15_internal_ws(a1, a2, v14, v15, v17, a6, a7, 0, &v18);
  }

  return result;
}

uint64_t ccrsa_verify_pkcs1v15_msg(uint64_t *a1, unint64_t *a2, size_t a3, char *a4, unint64_t a5, uint64_t a6, void *a7)
{
  v20 = timingsafe_enable_if_supported();
  v14 = cc_malloc_clear(88 * *a1);
  v15 = 11 * *a1;
  v18[0] = v14;
  v18[1] = v15;
  v18[2] = 0;
  v18[3] = cc_ws_alloc;
  v19 = cc_ws_free;
  if (v14)
  {
    v16 = ccrsa_verify_pkcs1v15_msg_ws(v18, a1, a2, a3, a4, a5, a6, a7);
    v19(v18);
  }

  else
  {
    v16 = 4294967283;
  }

  cc_disable_dit_with_sb(&v20);
  return v16;
}

uint64_t ccapsic_client_generate_match_response(uint64_t a1, unint64_t **a2, unint64_t **a3)
{
  v17 = timingsafe_enable_if_supported();
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = **a1;
  v9 = 23 * v8;
  if (23 * v8 <= 11 * v8)
  {
    v9 = 11 * v8;
  }

  if (v9 <= v8)
  {
    v10 = **a1;
  }

  else
  {
    v10 = v9;
  }

  v15[0] = cc_malloc_clear(8 * v10);
  v15[1] = v10;
  v15[2] = 0;
  v15[3] = cc_ws_alloc;
  v16 = cc_ws_free;
  if (v15[0])
  {
    if (*a2 == v6 && *a3 == v6)
    {
      v11 = a1 + 192;
      scalar_fips_retry_ws = ccec_generate_scalar_fips_retry_ws(v15, v6, v7, (a1 + 192));
      if (scalar_fips_retry_ws || (scalar_fips_retry_ws = ccec_mult_blinded_ws(v15, v6, (a2 + 2), a1 + 192, v11 + 16 * v8, v7), scalar_fips_retry_ws) || (scalar_fips_retry_ws = ccec_mult_blinded_ws(v15, v6, (a3 + 2), a1 + 192, v11 + 16 * v8 + 24 * v8, v7), scalar_fips_retry_ws) || (scalar_fips_retry_ws = ccec_affinify_ws(v15, v6), scalar_fips_retry_ws))
      {
        v13 = scalar_fips_retry_ws;
      }

      else
      {
        v13 = ccec_affinify_ws(v15, v6);
        if (!v13)
        {
          ccn_seti(*v6, &a3[2 * **a3 + 2], 1);
          ccn_seti(*v6, &a2[2 * **a2 + 2], 1);
        }
      }
    }

    else
    {
      v13 = 4294967289;
    }

    v16(v15);
  }

  else
  {
    v13 = 4294967283;
  }

  cc_disable_dit_with_sb(&v17);
  return v13;
}

uint64_t ccmode_ofb_init(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *__src)
{
  v8 = *(a1 + 32);
  *a2 = v8;
  v9 = (a2 + 2);
  memcpy(a2 + 2, __src, *(v8 + 8));
  v11 = *(v8 + 8);
  v10 = *(v8 + 16);
  a2[1] = v11;

  return v10(v8, &v9[(v11 + 7) & 0xFFFFFFFFFFFFFFF8], a3, a4);
}

double ccmode_factory_gcm_decrypt(void *a1, void *a2)
{
  *a1 = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8) + 5 * ((a2[1] + 7) & 0xFFFFFFFFFFFFFFF8) + 384;
  *&result = 78647;
  a1[1] = 78647;
  a1[2] = 1;
  a1[3] = ccmode_gcm_init;
  a1[4] = ccmode_gcm_set_iv;
  a1[5] = ccmode_gcm_aad;
  a1[6] = ccmode_gcm_decrypt;
  a1[7] = ccmode_gcm_finalize;
  a1[8] = ccmode_gcm_reset;
  a1[9] = a2;
  return result;
}

uint64_t ccmode_cfb8_decrypt(_BYTE *a1, uint64_t a2, char *a3, _BYTE *a4)
{
  if (a2)
  {
    v6 = a2;
    v7 = a1 + 8;
    v8 = *a1;
    v9 = (*(*a1 + 8) + 7) >> 3;
    v10 = &a1[16 * v9 + 8];
    v11 = &a1[8 * v9 + 8];
    do
    {
      --v6;
      memmove(v11, (v11 + 1), *(v8 + 8) - 1);
      v12 = *a3++;
      *(v11 - 1 + *(v8 + 8)) = v12;
      *a4++ = *v7 ^ v12;
      (*(v8 + 24))(v10, 1, v11, v7);
    }

    while (v6);
  }

  return 0;
}

uint64_t ccpad_cts1_encrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v19 = *MEMORY[0x29EDCA608];
  v17 = timingsafe_enable_if_supported();
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

  if (v14 == 2 * v12)
  {
    (*(a1 + 24))(a2, a3, 2, a5, a6);
  }

  else
  {
    __memcpy_chk();
    cc_clear(v12 - (v14 - v12), &__src[v14]);
    (*(a1 + 24))(a2, a3, 2, __src, __src);
    memmove(a6, __src, v14 - v12);
    memmove(&a6[v14 - v12], &__src[v12], v12);
  }

  cc_disable_dit_with_sb(&v17);
  return a4;
}

uint64_t ccpad_pkcs7_decode(uint64_t a1, uint64_t a2)
{
  v5 = timingsafe_enable_if_supported();
  LODWORD(a2) = *(a2 + a1 - 1);
  cc_disable_dit_with_sb(&v5);
  return ((((a2 + ~a1) | (256 - a2)) >> 8) - 1) & a2;
}

uint64_t ccmode_siv_hmac_init(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  *a2 = a1;
  if (a3 > 0x40 || a3 != 64 && (a3 & 0x6F) != 0x20)
  {
    return 4294967226;
  }

  v7 = *(a1 + 56);
  if (a3 >> 1 > v7[1])
  {
    return 4294967226;
  }

  if (*v7 < a5)
  {
    return 4294967196;
  }

  if (a5 < 0x14)
  {
    return 4294967195;
  }

  if (*(*(a1 + 64) + 16) != 16)
  {
    return 4294967226;
  }

  a2[1] = a3;
  __memcpy_chk();
  __memcpy_chk();
  a2[2] = a5;

  return ccmode_siv_hmac_reset(a2);
}

uint64_t fipspost_post_aes_ccm(char a1)
{
  v31 = *MEMORY[0x29EDCA608];
  v30 = *"@ABCDEFGHIJKLMNO";
  *(v22 + 3) = 370480147;
  v22[0] = 319951120;
  v29 = 0x706050403020100;
  v21 = 1526817393;
  v20 = 589439264;
  if ((a1 & 0x10) != 0)
  {
    v2 = "\x01M\xAC%]";
  }

  else
  {
    v2 = "M\xAC%]";
  }

  v18 = 0;
  v3 = ccaes_ccm_decrypt_mode();
  if (ccccm_one_shot(v3, 16, &v30, 7, v22, 4, &v21, v19, 8, &v29, 4, &v18))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccccm_one_shot AEAD decrypt authentication\n");
    return 4294967223;
  }

  if (cc_cmp_safe(4, &v18, v2))
  {
    v4 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccccm_one_shot AEAD decrypt authentication\n", v4, "fipspost_post_aes_ccm", 61);
    v5 = 4294967221;
  }

  else
  {
    v5 = 0;
  }

  if (cc_cmp_safe(4, v19, &v20))
  {
    v6 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccccm_one_shot AEAD decrypt decryption\n", v6, "fipspost_post_aes_ccm", 65);
    v5 = 4294967221;
  }

  if (ccccm_one_shot_decrypt(v3, 16, &v30, 7, v22, 4, &v21, v19, 8, &v29, 4, v2))
  {
    v7 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccccm_one_shot AEAD decrypt authentication\n", v7, "fipspost_post_aes_ccm", 75);
    v5 = 4294967221;
  }

  if (cc_cmp_safe(4, v19, &v20))
  {
    v8 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccccm_one_shot AEAD decrypt decryption\n", v8, "fipspost_post_aes_ccm", 79);
    v5 = 4294967221;
  }

  v28 = *"@ABCDEFGHIJKLMNO";
  v27 = 0x1716151413121110;
  v25 = xmmword_299DA48E0;
  v26 = *"";
  v24 = xmmword_299DA48F0;
  if ((a1 & 0x10) != 0)
  {
    v9 = "\x01\x1F\xC6\x4F\xBF\xAC\xCD\x1F\xC6\x4F\xBF\xAC\xCDFIPSPOST_USER [%llu] %s:%d: FAILED: ccccm_one_shot encrypt authentication\n";
  }

  else
  {
    v9 = "\x1F\xC6\x4F\xBF\xAC\xCDFIPSPOST_USER [%llu] %s:%d: FAILED: ccccm_one_shot encrypt authentication\n";
  }

  v17 = 0;
  v16 = 0;
  v10 = ccaes_ccm_encrypt_mode();
  if (ccccm_one_shot(v10, 16, &v28, 8, &v27, 16, &v24, v23, 16, &v26, 6, &v16))
  {
    goto LABEL_24;
  }

  if (cc_cmp_safe(6, &v16, v9))
  {
    v11 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccccm_one_shot encrypt authentication\n", v11, "fipspost_post_aes_ccm", 121);
    v5 = v5 | 0xFFFFFFB5;
  }

  if (cc_cmp_safe(16, v23, &v25))
  {
    v12 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccccm_one_shot encrypt encryption\n", v12, "fipspost_post_aes_ccm", 125);
    v5 = v5 | 0xFFFFFFB5;
  }

  if (ccccm_one_shot_encrypt())
  {
LABEL_24:
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccccm_one_shot encrypt authentication\n");
    return 4294967223;
  }

  if (cc_cmp_safe(6, &v16, v9))
  {
    v14 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccccm_one_shot encrypt authentication\n", v14, "fipspost_post_aes_ccm", 140);
    v5 = v5 | 0xFFFFFFB5;
  }

  if (cc_cmp_safe(16, v23, &v25))
  {
    v15 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccccm_one_shot encrypt encryption\n", v15, "fipspost_post_aes_ccm", 144);
    return v5 | 0xFFFFFFB5;
  }

  return v5;
}

unint64_t ccn_write_uint_size(uint64_t a1, uint64_t *a2)
{
  v6 = timingsafe_enable_if_supported();
  v4 = (ccn_bitlen_public_value(a1, a2) + 7) >> 3;
  cc_disable_dit_with_sb(&v6);
  return v4;
}

uint64_t ccn_write_uint_padded_ct_internal(uint64_t a1, uint64_t *a2, unint64_t a3, char *a4)
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

  v7 = a4;
  v8 = a3;
  v10 = a3 - v6;
  if (a3 <= v6)
  {
    LODWORD(v10) = 0;
  }

  else
  {
    cc_clear(a3 - v6, a4);
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

uint64_t ccn_write_uint_padded_ct(uint64_t a1, uint64_t *a2, unint64_t a3, char *a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = ccn_write_uint_padded_ct_internal(a1, a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
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

uint64_t ccn_write_uint(unint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  v9 = timingsafe_enable_if_supported();
  ccn_write_uint_public_value(a1, a2, a3, a4);
  return cc_disable_dit_with_sb(&v9);
}

unint64_t CCPOLYZP_PO2CYC_CTX_WORKSPACE_N(unsigned int a1)
{
  v2 = (sizeof_struct_ccpolyzp_po2cyc_ctx() + 7) >> 3;
  if (a1 >= 0x80)
  {
    v3 = 128;
  }

  else
  {
    v3 = a1;
  }

  return v2 + 2 * (((sizeof_struct_ccrns_mul_modulus() + 7) >> 3) * v3 + a1) + 6;
}

uint64_t ccpolyzp_po2cyc_ctx_eq(uint64_t a1, _DWORD *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*a1 == *a2)
  {
    v2 = *(a1 + 4);
    if (v2 == a2[1])
    {
      if (v2)
      {
        v3 = 0;
        v4 = v2 - 1;
        v5 = 0x40000000u >> __clz(*a1);
        while (1)
        {
          v6 = v2 - 1;
          v7 = a1;
          if (v4 <= v3)
          {
            break;
          }

          do
          {
            v7 = *(v7 + 112);
            --v6;
          }

          while (v6 > v3);
          v8 = *(v7 + 16);
          if (v4 <= v3)
          {
            goto LABEL_13;
          }

          v9 = v2 - 1;
          v10 = a2;
          do
          {
            v10 = *(v10 + 14);
            --v9;
          }

          while (v9 > v3);
LABEL_14:
          if (v8 != *(v10 + 2))
          {
            return 0;
          }

          if (*(a1 + 8) == 1)
          {
            v11 = v2 - 1;
            v12 = a1;
            if (v4 <= v3)
            {
              v13 = *(a1 + 168 + 8 * v5);
            }

            else
            {
              do
              {
                v12 = *(v12 + 112);
                --v11;
              }

              while (v11 > v3);
              v13 = *(v12 + 8 * v5 + 168);
              if (v4 > v3)
              {
                v14 = v2 - 1;
                v15 = a2;
                do
                {
                  v15 = *(v15 + 14);
                  --v14;
                }

                while (v14 > v3);
LABEL_24:
                if (v13 != *&v15[2 * v5 + 42])
                {
                  return 0;
                }

                goto LABEL_25;
              }
            }

            v15 = a2;
            goto LABEL_24;
          }

LABEL_25:
          if (++v3 == v2)
          {
            return 1;
          }
        }

        v8 = *(a1 + 16);
LABEL_13:
        v10 = a2;
        goto LABEL_14;
      }

      return 1;
    }
  }

  return 0;
}

unint64_t CCPOLYZP_PO2CYC_CTX_INIT_WORKSPACE_N(uint64_t a1)
{
  v2 = sizeof_struct_ccrns_mul_modulus();
  v3 = sizeof_struct_ccpolyzp_po2cyc();
  if (5 * a1 + 3 <= (10 * a1))
  {
    v4 = 10 * a1;
  }

  else
  {
    v4 = 5 * a1 + 3;
  }

  if (v4 <= (v2 + v3 - 1) / v3 + 19 * a1 + 2)
  {
    return (v2 + v3 - 1) / v3 + 19 * a1 + 2;
  }

  else
  {
    return v4;
  }
}

void *ccpolyzp_po2cyc_ctx_q_prod_ws(uint64_t a1, char *__dst, uint64_t a3)
{
  v6 = *(a3 + 4);
  v7 = a3;
  v8 = v6 - 1;
  if (v6 != 1)
  {
    v7 = a3;
    do
    {
      v7 = *(v7 + 112);
      --v8;
    }

    while (v8);
  }

  v9 = *(a1 + 16);
  ccn_set(1, __dst, (v7 + 144));
  ccn_zero(v6 - 1, __dst + 8);
  result = (*(a1 + 24))(a1, v6);
  LODWORD(v11) = *(a3 + 4);
  if (v11 >= 2)
  {
    v12 = result;
    v13 = 1;
    do
    {
      v14 = a3;
      if (v13 < (v11 - 1))
      {
        v15 = v11 - 2;
        v14 = a3;
        do
        {
          v14 = *(v14 + 112);
        }

        while (v13 < v15--);
      }

      ccn_muln(v13++, v12, __dst, 1uLL, (v14 + 144));
      result = ccn_set(v13, __dst, v12);
      v11 = *(a3 + 4);
    }

    while (v13 < v11);
  }

  *(a1 + 16) = v9;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_10(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  a15 = 0;

  return ccn_read_uint_public_value(1uLL, &a15, 8uLL, a1);
}

_BYTE *ccss_shamir_share_bag_init(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) == 0 || (_ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 5)) & 0x1000000) != 0)
  {
    v9 = 0;
  }

  else
  {
    __asm { MSR             DIT, #1 }

    v9 = 1;
  }

  v12 = v2;
  v13 = v3;
  v11 = v9;
  *a1 = a2;
  *(a1 + 8) = 0;
  return cc_disable_dit(&v11);
}

uint64_t ccpbkdf2_hmac_internal(unint64_t *a1, uint64_t a2, uint64_t a3, size_t a4, char *a5, unint64_t a6, unint64_t a7, char *a8)
{
  v26 = *MEMORY[0x29EDCA608];
  if ((a7 / *a1) >> 32)
  {
    return 0xFFFFFFFFLL;
  }

  v24 = &v24;
  v15 = MEMORY[0x2A1C7C4A8](a1);
  v17 = &__src[-v16 - 8];
  cchmac_init_internal(v15, &__src[-v16 - 8], v18, v19);
  __memcpy_chk();
  v20 = *a1;
  v21 = a7 / *a1;
  v22 = a7 % *a1;
  if (*a1 <= a7)
  {
    v23 = 1;
    do
    {
      F(a1, v17, __src, a4, a5, a6, v23++, v20, a8);
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
    F(a1, v17, __src, a4, a5, a6, v23, v22, a8);
  }

  cc_clear(((a1[1] + a1[2] + 19) & 0xFFFFFFFFFFFFFFF8) + a1[1], v17);
  cc_clear((a1[1] + 7) & 0xFFFFFFFFFFFFFFF8, __src);
  return 0;
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

uint64_t ccpbkdf2_hmac(unint64_t *a1, uint64_t a2, uint64_t a3, size_t a4, char *a5, unint64_t a6, unint64_t a7, char *a8)
{
  v18 = timingsafe_enable_if_supported();
  v16 = ccpbkdf2_hmac_internal(a1, a2, a3, a4, a5, a6, a7, a8);
  cc_disable_dit_with_sb(&v18);
  return v16;
}

uint64_t ccdh_import_full(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) == 0 || (_ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 5)) & 0x1000000) != 0)
  {
    v17 = 0;
  }

  else
  {
    __asm { MSR             DIT, #1 }

    v17 = 1;
  }

  v26 = v17;
  v18 = ccdh_ctx_public(a6);
  ccdh_ctx_init(a1, v18);
  v19 = &a6[ccdh_gp_n(*a6)];
  v20 = ccdh_gp_n(a1);
  if (ccn_read_uint_internal(v20, v19 + 2, a2, a3))
  {
    v21 = 4294967244;
  }

  else
  {
    v22 = ccdh_gp_n(a1);
    v23 = cczp_prime(a1);
    if ((ccn_cmp_public_value(v22, v19 + 2, v23) & 0x80000000) != 0)
    {
      v24 = ccdh_ctx_public(a6);
      v21 = ccdh_import_pub(a1, a4, a5, v24);
    }

    else
    {
      v21 = 4294967247;
    }
  }

  cc_disable_dit(&v26);
  return v21;
}

uint64_t ccec_rfc6637_kdf(uint64_t a1, char *a2, uint64_t a3, size_t a4, char *a5, size_t a6, char *a7, uint64_t a8)
{
  v20[1] = *MEMORY[0x29EDCA608];
  v16 = MEMORY[0x2A1C7C4A8](a1);
  v18 = (v20 - v17);
  ccdigest_init_internal(v16, (v20 - v17));
  ccdigest_update_internal(a1, v18, 4uLL, byte_299DA4B5F);
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

uint64_t ccn_gcd_ws(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v13 = (a6 + a4) << 6;
  v45 = *(a1 + 16);
  v14 = (*(a1 + 24))();
  v15 = (*(a1 + 24))(a1, a2);
  v16 = (*(a1 + 24))(a1, a2);
  if (a4)
  {
    ccn_set(a4, v14, a5);
  }

  ccn_zero(a2 - a4, &v14[a4]);
  if (a6)
  {
    ccn_set(a6, v15, a7);
  }

  ccn_zero(a2 - a6, &v15[a6]);
  v17 = 0;
  if (v13)
  {
    v18 = 0;
    v19 = ((v13 | 0x1EuLL) * 0x842108421084211uLL) >> 64;
    v20 = (v19 + (((v13 | 0x1EuLL) - v19) >> 1)) >> 4;
    if (v20 <= 1)
    {
      v20 = 1;
    }

    __srca = v20;
    do
    {
      v48 = 0;
      v49 = 0;
      ccn_gcd_approximate(a2, v14, &v49, v15, &v48);
      v21 = 0;
      v22 = 0;
      v24 = v48;
      v23 = v49;
      v25 = 31;
      v26 = 0x80000000;
      v27 = 0x80000000;
      do
      {
        v28 = -(v23 & v24 & 1);
        v29 = (((v24 - v23) ^ v24 | v24 ^ v23) ^ v24) >> 63;
        v30 = -v29 & v28;
        v31 = v23 - (v30 & v24);
        v32 = v26 - (v30 & v22);
        v33 = v21 - (v30 & v27);
        v34 = (v29 - 1) & v28;
        v35 = v24 - (v34 & v31);
        v36 = v22 - (v34 & v32);
        v17 = v17 - ((v35 | v31) & 1) + 1;
        v37 = -(v31 & 1);
        v38 = -(v35 & 1);
        v39 = (v31 & 1) - 1;
        v23 = v39 & (v31 >> 1) | v31 & v37;
        v26 = v39 & (v32 & 0x8000000000000000 | (v32 >> 1)) | v32 & v37;
        v21 = v39 & (v33 & 0x8000000000000000 | (v33 >> 1)) | v33 & v37;
        v40 = (v35 & 1) - 1;
        v24 = v40 & (v35 >> 1) | v35 & v38;
        v22 = (v36 & 0x8000000000000000 | (v36 >> 1)) & v40 | v36 & v38;
        v27 = ((v27 - (v34 & v33)) & 0x8000000000000000 | ((v27 - (v34 & v33)) >> 1)) & v40 | (v27 - (v34 & v33)) & v38;
        --v25;
      }

      while (v25);
      ccn_gcd_update_ws(a1, a2, v16, v14, v26, v15, v21);
      ccn_gcd_update_ws(a1, a2, v15, v14, v22, v15, v27);
      ccn_set(a2, v14, v16);
      ++v18;
    }

    while (v18 != __srca);
  }

  for (; a2; --a2)
  {
    v42 = *v14++;
    v41 = v42;
    v43 = *v15++;
    *a3++ = v43 | v41;
  }

  *(a1 + 16) = v45;
  return v17;
}

uint64_t ccaes_ecb_encrypt(_DWORD *a1, uint64_t a2, _DWORD *a3, int *a4)
{
  if (a2)
  {
    while (1)
    {
      v4 = *a1 ^ *a3;
      v5 = a1[1] ^ a3[1];
      v6 = a1[2] ^ a3[2];
      v7 = a1[3] ^ a3[3];
      v8 = a1 + 6;
      for (i = (a1[60] >> 5) - 1; ; --i)
      {
        v10 = TE1[BYTE1(v5)] ^ TE0[v4] ^ TE2[BYTE2(v6)] ^ TE3[HIBYTE(v7)] ^ *(v8 - 2);
        v11 = TE1[BYTE1(v6)] ^ TE0[v5] ^ TE2[BYTE2(v7)] ^ TE3[HIBYTE(v4)] ^ *(v8 - 1);
        v12 = TE1[BYTE1(v7)] ^ TE0[v6] ^ TE2[BYTE2(v4)] ^ TE3[HIBYTE(v5)] ^ *v8;
        v13 = TE1[BYTE1(v4)] ^ TE0[v7] ^ TE2[BYTE2(v5)] ^ TE3[HIBYTE(v6)] ^ v8[1];
        v14 = HIBYTE(v13);
        v15 = HIBYTE(v10);
        v16 = HIBYTE(v11);
        v17 = HIBYTE(v12);
        if (!i)
        {
          break;
        }

        v18 = v8[2];
        v19 = v8[3];
        v20 = v8[4];
        v21 = v8[5];
        v8 += 8;
        v4 = TE1[BYTE1(v11)] ^ TE0[v10] ^ TE2[BYTE2(v12)] ^ TE3[v14] ^ v18;
        v5 = TE1[BYTE1(v12)] ^ TE0[v11] ^ TE2[BYTE2(v13)] ^ TE3[v15] ^ v19;
        v6 = TE1[BYTE1(v13)] ^ TE0[v12] ^ TE2[BYTE2(v10)] ^ TE3[v16] ^ v20;
        v7 = TE1[BYTE1(v10)] ^ TE0[v13] ^ TE2[BYTE2(v11)] ^ TE3[v17] ^ v21;
      }

      v22 = &a1[8 * ((a1[60] >> 5) - 1)];
      *a4 = Te4_2[BYTE1(v11)] ^ Te4_3[v10] ^ Te4_1[BYTE2(v12)] ^ Te4_0[v14] ^ v22[8];
      a4[1] = Te4_2[BYTE1(v12)] ^ Te4_3[v11] ^ Te4_1[BYTE2(v13)] ^ Te4_0[v15] ^ v22[9];
      a4[2] = Te4_2[BYTE1(v13)] ^ Te4_3[v12] ^ Te4_1[BYTE2(v10)] ^ Te4_0[v16] ^ v22[10];
      a4[3] = Te4_2[BYTE1(v10)] ^ Te4_3[v13] ^ Te4_1[BYTE2(v11)] ^ Te4_0[v17] ^ v22[11];
      if (!--a2)
      {
        break;
      }

      a3 += 4;
      a4 += 4;
    }
  }

  return 0;
}

uint64_t ccder_blob_encode_implicit_octet_string(uint64_t *a1, unint64_t a2, unint64_t a3, uint64_t *a4)
{
  v11 = 0;
  v12 = 0;
  v8 = ccn_write_uint_size_public_value(a3, a4);
  v9 = ccder_blob_reserve_tl(a1, a2, v8, &v11);
  if (v9)
  {
    ccn_write_int_public_value(a3, a4, v12 - v11, v11);
  }

  return v9;
}

uint64_t ccmode_siv_init(uint64_t a1, void *a2, unint64_t a3)
{
  *a2 = a1;
  if (a3 > 0x40 || a3 != 64 && (a3 & 0x6F) != 0x20)
  {
    return 4294967226;
  }

  a2[1] = a3;
  if (*(*(a1 + 56) + 8) != 16)
  {
    return 4294967226;
  }

  __memcpy_chk();
  __memcpy_chk();

  return ccmode_siv_reset(a2);
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

uint64_t ccrng_trng(_DWORD *a1)
{
  v3 = timingsafe_enable_if_supported();
  if (a1)
  {
    *a1 = -173;
  }

  cc_disable_dit_with_sb(&v3);
  return 0;
}

uint64_t ccrng_atfork_prepare()
{
  result = ccrng_process_atfork_prepare(process_rng_ctx);
  if (result)
  {
    ccrng_atfork_prepare_cold_1();
  }

  return result;
}

uint64_t ccrng_atfork_parent()
{
  result = ccrng_process_atfork_parent(process_rng_ctx);
  if (result)
  {
    ccrng_atfork_parent_cold_1();
  }

  return result;
}

uint64_t ccrng_atfork_child()
{
  result = ccrng_process_atfork_child(process_rng_ctx);
  if (result)
  {
    ccrng_atfork_child_cold_1();
  }

  return result;
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

uint64_t ccspake_mac_hkdf_derive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x29EDCA608];
  v8 = (**(a1 + 8))();
  v9 = *(a1 + 32);
  v16 = 0;
  v14 = 0;
  v15 = 0;
  v13 = KDF_LABEL_CK;
  if (**a1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (v10)
  {
    v11 = 16;
  }

  else
  {
    __memcpy_chk();
    v11 = v9 + 16;
  }

  return cchkdf_internal(v8, a2, a3, 0, 0, v11, &v13, 2 * *(*(a1 + 8) + 16), a4);
}

uint64_t ccspake_mac_compute(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v13 = timingsafe_enable_if_supported();
  v6 = a1[60];
  if (v6 == CCSPAKE_STATE_KEX_BOTH || v6 == CCSPAKE_STATE_MAC_VERIFY)
  {
    v8 = a1[24];
    v9 = &a1[48 * *(*(*a1 + 8))() + 336];
    v10 = (*(*a1 + 8))();
    v11 = ccspake_mac_compute_internal(a1, (a1 + 272), v8, v9, &a1[56 * *v10 + 336], a2, a3);
    if (!v11)
    {
      a1[60] |= CCSPAKE_STATE_MAC_GENERATE;
    }
  }

  else
  {
    v11 = 4294967210;
  }

  cc_disable_dit_with_sb(&v13);
  return v11;
}

uint64_t ccspake_mac_compute_internal(uint64_t *a1, uint64_t a2, int a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v33 = *MEMORY[0x29EDCA608];
  v13 = *(*a1[1])();
  v14 = (*(*a1 + 8))();
  v15 = cczp_bitlen(v14);
  v16 = *v14;
  v17 = v13 >> 1;
  if (**a1)
  {
    v18 = v13;
  }

  else
  {
    v18 = v13 >> 1;
  }

  v19 = (*(a1[1] + 32))(a1, v18, a2, v32);
  if (!v19)
  {
    v20 = v15 + 7;
    v21 = (v15 + 7) >> 3;
    v27 = a7;
    v22 = **a1;
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    v29 = 4;
    ccn_write_uint_padded_internal(v16, a4, v21, v30);
    ccn_write_uint_padded_internal(v16, a5, v21, v30 + (v20 >> 3));
    if (**a1)
    {
      v23 = *(a1[1] + 16);
    }

    else
    {
      v23 = v17;
    }

    if ((v22 != 0) != a3)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = ccspake_sizeof_point(*a1);
    v19 = (*(a1[1] + 40))(a1, v23, &v32[v24], v25, &v29, a6, v27);
    cc_clear(0x80uLL, v32);
  }

  return v19;
}

uint64_t ccspake_mac_verify_and_get_session_key(int **a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v22 = *MEMORY[0x29EDCA608];
  v20 = timingsafe_enable_if_supported();
  v10 = *(a1 + 60);
  if (v10 != CCSPAKE_STATE_KEX_BOTH && v10 != CCSPAKE_STATE_MAC_GENERATE)
  {
    v14 = 4294967210;
    goto LABEL_23;
  }

  v12 = (*a1[1])();
  v13 = **a1;
  if (v13 == 1)
  {
    v14 = 4294967289;
    if (a2 > 0x40 || !a4)
    {
      goto LABEL_23;
    }
  }

  else if (v13)
  {
    if (a2 > 0x40)
    {
      v14 = 4294967289;
      goto LABEL_23;
    }
  }

  else
  {
    v14 = 4294967289;
    if (a2 > 0x40 || *v12 >> 1 != a4)
    {
      goto LABEL_23;
    }
  }

  v15 = *(a1 + 24);
  v16 = &a1[4 * *(*(*a1 + 1))(v12) + 42];
  v17 = (*(*a1 + 1))();
  v18 = ccspake_mac_compute_internal(a1, (a1 + 34), (v15 & 1) == 0, v16, &a1[5 * *v17 + 42], a2, v21);
  if (v18)
  {
    v14 = v18;
  }

  else if (cc_cmp_safe_internal(a2, a3, v21))
  {
    v14 = 4294967294;
  }

  else
  {
    v14 = ccspake_session_key_compute_internal(a1, a4, a5);
    if (!v14)
    {
      *(a1 + 60) |= CCSPAKE_STATE_MAC_VERIFY;
    }
  }

  cc_clear(0x40uLL, v21);
LABEL_23:
  cc_disable_dit_with_sb(&v20);
  return v14;
}

uint64_t ccspake_session_key_compute_internal(int **a1, uint64_t a2, void *a3)
{
  v6 = (*a1[1])();
  v7 = *v6;
  v8 = (a1 + 34);
  v9 = **a1;
  if (v9 == 1)
  {
    return cchkdf_internal(v6, v7, v8, 0, 0, 9, "SharedKey", a2, a3);
  }

  if (!v9)
  {
    memcpy(a3, (v8 + (v7 >> 1)), v7 >> 1);
  }

  return 0;
}

uint64_t ccn_muln(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  result = ccn_mul1(a1, a2, a3, *a5);
  *(a2 + 8 * a1) = result;
  if (a4 >= 2)
  {
    v11 = a4 - 1;
    v12 = a5 + 1;
    v13 = a2 + 8;
    do
    {
      v14 = *v12++;
      result = ccn_addmul1(a1, v13, a3, v14);
      *(v13 + 8 * a1) = result;
      v13 += 8;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t ccpost_vector_list(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    v3 = result;
    v4 = 0;
    do
    {
      result = ccpost_internal(*(*(v3 + 8) + 8 * v4++), a2);
    }

    while (v4 < *(v3 + 16));
  }

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

uint64_t cczp_mod(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = timingsafe_enable_if_supported();
  v6 = cczp_n(a1);
  v9[0] = cc_malloc_clear(16 * v6);
  v9[1] = 2 * cczp_n(a1);
  v10 = 0;
  v11 = cc_ws_alloc;
  v12 = cc_ws_free;
  if (v9[0])
  {
    (*(*(a1 + 16) + 32))(v9, a1, a2, a3);
    v10 = 0;
    v12(v9);
    v7 = 0;
  }

  else
  {
    v7 = 4294967283;
  }

  cc_disable_dit_with_sb(&v13);
  return v7;
}

uint64_t ccaes_gladman_cbc_encrypt_init(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  if (a3 > 127)
  {
    if (a3 != 128 && a3 != 256 && a3 != 192)
    {
      return 4294967289;
    }

LABEL_8:
    result = ccaes_gladman_encrypt_key(a4, a3, a2);
    a2[65] = 1;
    return result;
  }

  if (a3 <= 0x20 && ((1 << a3) & 0x101010000) != 0)
  {
    goto LABEL_8;
  }

  return 4294967289;
}

uint64_t ccn_invmod_ws(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, _DWORD *a5, void *a6)
{
  v8 = a2 - a4;
  if (a2 >= a4 && ccn_n(a4, a5) && a2 && ((v13 = ccn_n(a2, a6), v14 = *a6, v13 > 1) || v14 > 1) && ((v14 | *a5) & 1) != 0)
  {
    v16 = (a4 + a2) << 6;
    v40 = *(a1 + 16);
    __dst = a3;
    v17 = (*(a1 + 24))(a1, a2);
    v18 = (*(a1 + 24))(a1, a2);
    if (a4)
    {
      ccn_set(a4, v17, a5);
    }

    ccn_zero(v8, &v17[8 * a4]);
    ccn_set(a2, v18, a6);
    v19 = (*(a1 + 24))(a1, a2);
    v44 = v17;
    v20 = (*(a1 + 24))(a1, a2);
    v21 = (*(a1 + 24))(a1, a2);
    v52 = (*(a1 + 24))(a1, a2);
    v46 = v19;
    ccn_seti(a2, v19, 1);
    cc_clear(8 * a2, v20);
    cc_clear(8 * a2, v21);
    ccn_seti(a2, v52, 1);
    v43 = a5;
    v22 = (*(a1 + 24))(a1, a2);
    v42 = (*(a1 + 24))(a1, a2);
    v45 = a1;
    if (v16)
    {
      v23 = v21;
      v51 = v18;
      v49 = a6;
      v50 = v20;
      do
      {
        v48 = v16;
        v24 = v44;
        v25 = *v44 & *v18 & 1;
        v26 = ccn_subn(a2, v22, v51, a4, v44);
        ccn_mux(a2, v25 & ~v26, v51, v22, v51);
        ccn_sub_ws(v45, a4, v22, v44, v51);
        ccn_mux(a4, v25 & v26, v24, v22, v24);
        v27 = v46;
        v28 = ccn_add_ws(v45, a2, v22, v46, v23);
        v47 = ccn_sub_ws(v45, a2, v42, v22, v49);
        v28 ^= 1u;
        ccn_mux(a2, v47 & v28, v22, v22, v42);
        ccn_mux(a2, v25 & v26, v27, v22, v27);
        ccn_mux(a2, v25 & ~v26, v21, v22, v21);
        ccn_add_ws(v45, a4, v22, v50, v52);
        ccn_sub_ws(v45, a4, v42, v22, v43);
        ccn_mux(a4, v47 & v28, v22, v22, v42);
        ccn_mux(a4, v25 & v26, v50, v22, v50);
        ccn_mux(a4, v25 & ~v26, v52, v22, v52);
        v29 = (*v44 & 1) == 0;
        v30 = (*v51 & 1) == 0;
        v31 = (*v50 | *v46);
        v32 = (*v52 | *v21);
        ccn_cond_shift_right(a4, (*v24 & 1) == 0, v24, v24, 1);
        v33 = ccn_cond_add(a2, v31 & v29, v27, v27, v49);
        v34 = v50;
        ccn_cond_shift_right_carry(a2, v29, v46, v46, 1, v33);
        v35 = v31 & v29;
        v18 = v51;
        v36 = ccn_cond_add(a4, v35, v34, v34, v43);
        v37 = v29;
        v23 = v21;
        ccn_cond_shift_right_carry(a4, v37, v34, v34, 1, v36);
        ccn_cond_shift_right(a2, v30, v18, v18, 1);
        v38 = ccn_cond_add(a2, v32 & v30, v23, v23, v49);
        ccn_cond_shift_right_carry(a2, v30, v23, v23, 1, v38);
        v39 = ccn_cond_add(a4, v32 & v30, v52, v52, v43);
        ccn_cond_shift_right_carry(a4, v30, v52, v52, 1, v39);
        v16 = v48 - 1;
      }

      while (v48 != 1);
    }

    if (ccn_n(a2, v44) == 1 && *v44 == 1)
    {
      ccn_set(a2, __dst, v46);
      result = 0;
    }

    else
    {
      cc_clear(8 * a2, __dst);
      result = 4294967289;
    }

    *(v45 + 16) = v40;
  }

  else
  {
    cc_clear(8 * a2, a3);
    return 4294967289;
  }

  return result;
}

uint64_t ccmode_siv_encrypt(uint64_t a1, unint64_t a2, char *a3, char *a4)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(*(*a1 + 56) + 8) != 16)
  {
    return 4294967226;
  }

  v8 = *(*a1 + 64);
  if (a3 - 16 < a4 && &a3[a2] > a4)
  {
    return 4294967191;
  }

  v9 = ccmode_siv_auth_finalize(a1, a2, a3, &v11);
  if (!v9)
  {
    if (*(a1 + 16) == 5)
    {
      *(a1 + 88) = v11;
      *(a1 + 96) &= ~0x80u;
      *(a1 + 100) &= ~0x80u;
      v9 = ccctr_one_shot_internal(v8, *(a1 + 8) >> 1, a1 + 56, a1 + 88, a2, a3, (a4 + 16));
      *a4 = v11;
      if (v9)
      {
        cc_clear(a2 + 16, a4);
      }
    }

    else
    {
      return 4294967228;
    }
  }

  return v9;
}

uint64_t ccn_div_exact_ws(uint64_t a1, unint64_t a2, char *a3, uint64_t *a4, int8x16_t *a5)
{
  v21 = *(a1 + 16);
  v8 = (*(a1 + 24))();
  v9 = (*(a1 + 24))(a1, a2);
  v18 = ccn_trailing_zeros(a2, a5);
  ccn_shift_right_multi(a2, v8, a5, v18);
  v10 = (*(a1 + 24))(a1, a2);
  cc_clear(8 * a2, v10);
  v11 = (2 - ((3 * v8->i64[0]) ^ 2) * v8->i64[0]) * ((3 * v8->i64[0]) ^ 2);
  v12 = (2 - (2 - v11 * v8->i64[0]) * v11 * v8->i64[0]) * (2 - v11 * v8->i64[0]) * v11;
  *v10 = (2 - v12 * v8->i64[0]) * v12;
  v13 = __clz(a2);
  if (v13 == 63)
  {
    v14 = 1;
  }

  else
  {
    v15 = 63 - v13;
    v14 = 1;
    do
    {
      ccn_mul_ws(a1, v14, v9, v8, v10);
      ccn_mul_lo(v14, v9, &v8->i64[v14], v10);
      ccn_add_ws(a1, v14, v9, v9, &v9[8 * v14]);
      ccn_neg(v14, &v9[8 * v14], v10);
      ccn_mul_lo(v14, &v10[v14], &v9[8 * v14], v9);
      v14 = (a2 - 1 + (1 << v15)) >> v15;
      --v15;
    }

    while (v15);
  }

  cc_clear(8 * a2, v9);
  ccn_mul_lo(v14, v9, a4, v10);
  v16 = a3;
  ccn_mul_lo(a2, a3, v8->i64, v9);
  ccn_sub_ws(a1, a2, v8, a4, a3);
  ccn_mul_lo(a2, a3, v10, v8);
  ccn_add_ws(a1, a2, v16, v16->i64, v9);
  result = ccn_shift_right_multi(a2, v16, v16, v18);
  *(a1 + 16) = v21;
  return result;
}

uint64_t ccn_mul_lo(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v6 = a2;
  v7 = a1;
  for (result = cc_clear(8 * a1, a2); v7; --v7)
  {
    v9 = *a3++;
    result = ccn_addmul1(v7, v6, a4, v9);
    v6 += 8;
  }

  return result;
}

uint64_t ccec_generate_blinding_keys(unint64_t *a1, uint64_t (**a2)(void, uint64_t, uint64_t *), unint64_t **a3, unint64_t **a4)
{
  v25 = timingsafe_enable_if_supported();
  v8 = *a1;
  v9 = sizeof_struct_cche_galois_key();
  v10 = sizeof_struct_ccpolyzp_po2cyc();
  v21[0] = cc_malloc_clear((v8 << 8) + 8 * ((v9 + v10 + 3 * v8 * v10 - 1) / v10));
  v11 = *a1;
  v12 = sizeof_struct_cche_galois_key();
  v13 = sizeof_struct_ccpolyzp_po2cyc();
  v21[1] = (v12 + v13 + v13 * 3 * v11 - 1) / v13 + 32 * v11;
  v22 = 0;
  v23 = cc_ws_alloc;
  v24 = cc_ws_free;
  if (!v21[0])
  {
    v18 = 4294967283;
    goto LABEL_15;
  }

  *a3 = a1;
  *a4 = a1;
  v20 = cc_ws_alloc(v21, (24 * v11 + 23) >> 3);
  v14 = v23(v21, 3 * v11);
  v15 = a3 + 2;
  scalar_fips_retry_ws = ccec_generate_scalar_fips_retry_ws(v21, a1, a2, &a3[3 * **a3 + 2]);
  if (scalar_fips_retry_ws || (v17 = a4 + 2, scalar_fips_retry_ws = cczp_inv_ws(v21, &a1[5 * *a1 + 4]), scalar_fips_retry_ws) || (scalar_fips_retry_ws = ccec_projectify_ws(v21, a1), scalar_fips_retry_ws) || (scalar_fips_retry_ws = ccec_mult_blinded_ws(v21, a1, (a3 + 2), &v15[3 * **a3], v14, a2), scalar_fips_retry_ws) || (scalar_fips_retry_ws = ccec_mult_blinded_ws(v21, a1, (a4 + 2), &v17[3 * **a4], v14, a2), scalar_fips_retry_ws) || (scalar_fips_retry_ws = ccec_affinify_ws(v21, a1), scalar_fips_retry_ws) || (scalar_fips_retry_ws = ccec_affinify_ws(v21, a1), scalar_fips_retry_ws) || (scalar_fips_retry_ws = ccec_blinding_op_ws(v21, a2, &v15[3 * **a3], a4), scalar_fips_retry_ws))
  {
    v18 = scalar_fips_retry_ws;
LABEL_12:
    cc_clear((32 * *a1) | 0x10, a3);
    cc_clear((32 * *a1) | 0x10, a4);
    goto LABEL_13;
  }

  if (ccn_cmp_public_value(v11, v20 + 16, &a1[2 * *a1 + 4 + *a1]))
  {
    v18 = 0;
    goto LABEL_13;
  }

  v18 = ccec_blinding_op_ws(v21, a2, &v17[3 * **a4], a3);
  if (v18)
  {
    goto LABEL_12;
  }

LABEL_13:
  v22 = 0;
  v24(v21);
LABEL_15:
  cc_disable_dit_with_sb(&v25);
  return v18;
}

uint64_t ccec_blind(uint64_t (**a1)(void, uint64_t, uint64_t *), void **a2, uint64_t **a3)
{
  v13 = timingsafe_enable_if_supported();
  v6 = *a3;
  v7 = cc_malloc_clear(232 * **a3);
  v8 = 29 * *v6;
  v11[0] = v7;
  v11[1] = v8;
  v11[2] = 0;
  v11[3] = cc_ws_alloc;
  v12 = cc_ws_free;
  if (v7)
  {
    v9 = ccec_blinding_op_ws(v11, a1, &a2[3 * **a2 + 2], a3);
    v12(v11);
  }

  else
  {
    v9 = 4294967283;
  }

  cc_disable_dit_with_sb(&v13);
  return v9;
}

uint64_t ccec_blinding_op_ws(uint64_t a1, uint64_t (**a2)(void, uint64_t, uint64_t *), uint64_t a3, uint64_t **a4)
{
  v7 = *(a1 + 16);
  v9 = (a4 + 2);
  v8 = *a4;
  v10 = 3 * **a4;
  v11 = (*(a1 + 24))(a1, v10);
  v12 = (*(a1 + 24))(a1, v10);
  result = ccec_validate_point_and_projectify_ws(a1, v8, v11, v9);
  if (!result)
  {
    result = ccec_mult_blinded_ws(a1, v8, v12, a3, v11, a2);
    if (!result)
    {
      result = ccec_affinify_ws(a1, v8);
    }
  }

  *(a1 + 16) = v7;
  return result;
}

uint64_t ccec_unblind(uint64_t (**a1)(void, uint64_t, uint64_t *), void **a2, uint64_t **a3)
{
  v13 = timingsafe_enable_if_supported();
  v6 = *a3;
  v7 = cc_malloc_clear(232 * **a3);
  v8 = 29 * *v6;
  v11[0] = v7;
  v11[1] = v8;
  v11[2] = 0;
  v11[3] = cc_ws_alloc;
  v12 = cc_ws_free;
  if (v7)
  {
    v9 = ccec_blinding_op_ws(v11, a1, &a2[3 * **a2 + 2], a3);
    v12(v11);
  }

  else
  {
    v9 = 4294967283;
  }

  cc_disable_dit_with_sb(&v13);
  return v9;
}

uint64_t ccrsabssa_blind_message(uint64_t a1, uint64_t *a2, char *a3, size_t a4, char *a5, uint64_t a6, char *a7, unint64_t a8, unsigned int (**a9)(void, unint64_t, uint64_t))
{
  v51 = *MEMORY[0x29EDCA608];
  v48 = timingsafe_enable_if_supported();
  v17 = *a2;
  v18 = sizeof_struct_ccpolyzp_po2cyc();
  v19 = 5 * v17 + (v18 + 7) / v18 + 3;
  if (v19 <= 9 * v17)
  {
    v19 = 9 * v17;
  }

  v20 = cc_malloc_clear(8 * (v19 + 5 * v17));
  v44[0] = v20;
  v21 = *a2;
  v22 = sizeof_struct_ccpolyzp_po2cyc();
  v23 = 5 * v21 + (v22 + 7) / v22 + 3;
  if (v23 <= 9 * v21)
  {
    v23 = 9 * v21;
  }

  v44[1] = v23 + 5 * v21;
  v45 = 0;
  v46 = cc_ws_alloc;
  v47 = cc_ws_free;
  if (v20)
  {
    if (ccrsa_pubkeylength(a2) == *a1)
    {
      v41 = a5;
      v42 = a7;
      v24 = (*(a1 + 8))();
      v25 = ccrsa_pubkeylength(a2);
      v26 = (v25 + 7) >> 3;
      v27 = 4294967289;
      v28 = cc_ws_free;
      if (v26 != a6 || v26 != a8)
      {
        goto LABEL_19;
      }

      v29 = v25;
      ccdigest_internal(v24, a4, a3, v50);
      v30 = (*a9)(a9, *(a1 + 16), v49);
      if (v30)
      {
        v27 = v30;
        goto LABEL_18;
      }

      v31 = v29 - 1;
      v32 = *a2;
      v43 = v45;
      v33 = v46(v44, *a2);
      v33[v32 - 1] = 0;
      *v33 = 0;
      v34 = 8 * v32 - ((v29 + 6) >> 3);
      non_zero_element_ws = ccrsa_emsa_pss_encode_internal(v24, v24, *(a1 + 16), v49, *v24, v50, v31, v33 + v34);
      if (non_zero_element_ws)
      {
        goto LABEL_23;
      }

      if (ccrsa_emsa_pss_decode_ws(v44, v24, v24, *(a1 + 16), *v24, v50, v31, v33 + v34))
      {
        v27 = 0xFFFFFFFFLL;
        goto LABEL_17;
      }

      ccn_swap(v32, v33);
      v36 = v46(v44, v32);
      non_zero_element_ws = cczp_generate_non_zero_element_ws(v44, a2, a9, v36);
      if (non_zero_element_ws || (v37 = v46(v44, v32), non_zero_element_ws = cczp_inv_ws(v44, a2), non_zero_element_ws) || (cczp_from_ws(v44, a2), cczp_from_ws(v44, a2), v46(v44, v32), non_zero_element_ws = ccrsa_pub_crypt_ws(v44, a2), non_zero_element_ws) || (v38 = v46(v44, v32), cczp_mul_ws(v44, a2), cczp_to_ws(v44, a2), non_zero_element_ws = ccn_write_uint_padded_ct_internal(v32, v38, a8, v42), (non_zero_element_ws & 0x80000000) != 0))
      {
LABEL_23:
        v27 = non_zero_element_ws;
      }

      else
      {
        v39 = ccn_write_uint_padded_ct_internal(v32, v37, a8, v41);
        v27 = v39 & (v39 >> 31);
      }

LABEL_17:
      v45 = v43;
LABEL_18:
      v28 = v47;
LABEL_19:
      v28(v44);
      goto LABEL_22;
    }

    v27 = 4294967289;
    cc_ws_free(v44);
  }

  else
  {
    v27 = 4294967283;
  }

LABEL_22:
  cc_disable_dit_with_sb(&v48);
  return v27;
}

uint64_t ccrsabssa_unblind_signature(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char *a7, size_t a8, char *a9, uint64_t a10)
{
  v35 = timingsafe_enable_if_supported();
  v18 = cc_malloc_clear(112 * *a2);
  v19 = 14 * *a2;
  v31[0] = v18;
  v31[1] = v19;
  v32 = 0;
  v33 = cc_ws_alloc;
  v34 = cc_ws_free;
  if (v18)
  {
    if (ccrsa_pubkeylength(a2) == *a1)
    {
      v20 = (ccrsa_pubkeylength(a2) + 7) >> 3;
      v21 = 4294967289;
      v22 = cc_ws_free;
      if (v20 != a10 || v20 != a4 || v20 != a6)
      {
        goto LABEL_14;
      }

      v30 = a7;
      v23 = *a2;
      v24 = cc_ws_alloc(v31, *a2);
      uint_internal = ccn_read_uint_internal(v23, v24, a4, a3);
      if (!uint_internal)
      {
        v26 = v33(v31, v23);
        uint_internal = ccn_read_uint_internal(v23, v26, a6, a5);
        if (!uint_internal)
        {
          v27 = v33(v31, v23);
          cczp_mul_ws(v31, a2);
          cczp_to_ws(v31, a2);
          uint_internal = ccn_write_uint_padded_ct_internal(v23, v27, a6, a9);
          if ((uint_internal & 0x80000000) == 0)
          {
            if (ccrsa_pubkeylength(a2) != *a1 || a10 != (ccrsa_pubkeylength(a2) + 7) >> 3)
            {
              v21 = 4294967289;
              goto LABEL_13;
            }

            v28 = (*(a1 + 8))();
            uint_internal = ccrsa_verify_pss_msg_ws(v31, a2, v28, v28, a8, v30, a10, a9, *(a1 + 16), 0);
          }
        }
      }

      v21 = uint_internal;
LABEL_13:
      v32 = 0;
      v22 = v34;
LABEL_14:
      v22(v31);
      goto LABEL_17;
    }

    v21 = 4294967289;
    cc_ws_free(v31);
  }

  else
  {
    v21 = 4294967283;
  }

LABEL_17:
  cc_disable_dit_with_sb(&v35);
  return v21;
}

uint64_t ccrsabssa_sign_blinded_message(void *a1, unint64_t *a2, uint64_t a3, uint64_t a4, char *a5, unint64_t a6, uint64_t (**a7)(void, uint64_t, uint64_t))
{
  v38 = timingsafe_enable_if_supported();
  v14 = *a2;
  v15 = 9 * *a2;
  v16 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N(*a2);
  if (v15 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  v18 = cc_malloc_clear(32 * v14 + 8 * v17);
  v34[0] = v18;
  v19 = *a2;
  v20 = 9 * *a2;
  v21 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N(*a2);
  if (v20 <= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v20;
  }

  v34[1] = v22 + 4 * v19;
  v35 = 0;
  v36 = cc_ws_alloc;
  v37 = cc_ws_free;
  if (v18)
  {
    v23 = ccrsa_ctx_public(a2);
    if (ccrsa_pubkeylength(v23) == *a1)
    {
      v24 = ccrsa_ctx_public(a2);
      v25 = (ccrsa_pubkeylength(v24) + 7) >> 3;
      v26 = 4294967289;
      v27 = cc_ws_free;
      if (v25 != a6 || v25 != a4)
      {
        goto LABEL_16;
      }

      v28 = *a2;
      v29 = cc_ws_alloc(v34, *a2);
      v30 = v36(v34, v28);
      uint_internal = ccn_read_uint_internal(v28, v30, a4, a3);
      if (!uint_internal)
      {
        if (ccn_cmp_public_value(v28, a2 + 3, v30) != 1)
        {
LABEL_15:
          v35 = 0;
          v27 = v37;
LABEL_16:
          v27(v34);
          goto LABEL_19;
        }

        uint_internal = ccrsa_priv_crypt_blinded_ws(v34, a7, a2, v29, v30);
        if (!uint_internal)
        {
          v32 = ccn_write_uint_padded_ct_internal(v28, v29, a6, a5);
          v26 = v32 & (v32 >> 31);
          goto LABEL_15;
        }
      }

      v26 = uint_internal;
      goto LABEL_15;
    }

    v26 = 4294967289;
    cc_ws_free(v34);
  }

  else
  {
    v26 = 4294967283;
  }

LABEL_19:
  cc_disable_dit_with_sb(&v38);
  return v26;
}

uint64_t ccrsa_encrypt_oaep_ws(uint64_t a1, uint64_t *a2, size_t *a3, uint64_t (**a4)(void, size_t, char *), unint64_t *a5, char *a6, size_t a7, const void *a8, size_t a9, char *a10)
{
  v18 = ccrsa_block_size(a2);
  result = 4294967268;
  if (v18)
  {
    v20 = *a2;
    if (*a2)
    {
      if (ccn_n(*a2, a2 + 3) > 1 || a2[3] >= 2)
      {
        if (*a5 >= v18)
        {
          v23 = a6;
          v24 = *(a1 + 16);
          v21 = (*(a1 + 24))(a1, v20);
          cc_clear(8 * v20, v21);
          *a5 = v18;
          result = ccrsa_oaep_encode_parameter_ws(a1, a3, a4, v18, v21, a7, a8, a9, a10);
          if (!result)
          {
            result = ccrsa_pub_crypt_ws(a1, a2);
            if (!result)
            {
              v22 = ccn_write_uint_padded_ct(v20, v21, v18, v23);
              result = v22 & (v22 >> 31);
            }
          }

          *(a1 + 16) = v24;
        }

        else
        {
          return 4294967273;
        }
      }

      else
      {
        return 4294967268;
      }
    }
  }

  return result;
}

uint64_t ccrsa_encrypt_oaep(uint64_t *a1, size_t *a2, uint64_t (**a3)(void, size_t, char *), unint64_t *a4, char *a5, size_t a6, const void *a7, size_t a8, char *a9)
{
  v23 = timingsafe_enable_if_supported();
  v17 = cc_malloc_clear(80 * *a1);
  v18 = 10 * *a1;
  v21[0] = v17;
  v21[1] = v18;
  v21[2] = 0;
  v21[3] = cc_ws_alloc;
  v22 = cc_ws_free;
  if (v17)
  {
    v19 = ccrsa_encrypt_oaep_ws(v21, a1, a2, a3, a4, a5, a6, a7, a8, a9);
    v22(v21);
  }

  else
  {
    v19 = 4294967283;
  }

  cc_disable_dit_with_sb(&v23);
  return v19;
}

uint64_t ccascon_ascon128a_ref_pad(uint64_t result)
{
  v1 = *(result + 40);
  v2 = 56;
  if (v1 > 7)
  {
    v2 = 120;
  }

  *(result + 8 * (v1 > 7)) ^= 128 << (v2 - 8 * v1);
  return result;
}

unint64_t *ccascon_ascon128a_ref_accumulate_encrypt(unint64_t *result, uint64_t a2, unint64_t a3, unint64_t *a4)
{
  if (a3 >= 0x10)
  {
    v5 = *result;
    v4 = result[1];
    do
    {
      v5 ^= bswap64(*a4);
      *result = v5;
      v4 ^= bswap64(a4[1]);
      result[1] = v4;
      if (a2)
      {
        *a2 = bswap64(v5);
        *(a2 + 8) = bswap64(result[1]);
        a2 += 16;
        v5 = *result;
        v4 = result[1];
      }

      v6 = 0;
      a4 += 2;
      a3 -= 16;
      v7 = result[3];
      v8 = result[4];
      v9 = result[2];
      do
      {
        v10 = v9 ^ ROUND_CONSTANTS_0[v6 + 4];
        v11 = v8 ^ v5;
        v12 = v8 ^ v7;
        v13 = v10 ^ v4;
        v14 = v10 & ~v4 ^ v11;
        v15 = v7 & ~v13 ^ v4;
        v16 = v4 & ~v11 ^ v8 ^ v7;
        v17 = v8 & ~v7;
        v18 = v11 & ~v12;
        v19 = v13 ^ v17;
        v20 = v18 ^ v7;
        v21 = v13 ^ ~v17;
        v22 = v20 ^ v13 ^ v17;
        v5 = __ROR8__(v14 ^ v16, 19) ^ __ROR8__(v14 ^ v16, 28) ^ v14 ^ v16;
        v4 = __ROR8__(v15 ^ v14, 61) ^ __ROR8__(v15 ^ v14, 39) ^ v15 ^ v14;
        v9 = v19 ^ ~(__ROR8__(v21, 1) ^ __ROR8__(v21, 6));
        v7 = __ROR8__(v22, 10) ^ __ROR8__(v22, 17) ^ v22;
        v8 = __ROR8__(v16, 7) ^ __ROR8__(v16, 41) ^ v16;
        ++v6;
      }

      while (v6 != 8);
      result[3] = v7;
      result[4] = v8;
      result[1] = v4;
      result[2] = v9;
      *result = v5;
    }

    while (a3 > 0xF);
  }

  if (a3 < 8)
  {
    if (a3)
    {
      v48 = 0;
      v49 = 56;
      v50 = a3;
      do
      {
        v51 = *a4;
        a4 = (a4 + 1);
        v48 |= v51 << v49;
        v49 -= 8;
        --v50;
      }

      while (v50);
      v52 = *result ^ v48;
      *result = v52;
      if (a2)
      {
        v53 = vdupq_n_s64(a3 - 1);
        v54 = vmovn_s64(vcgeq_u64(v53, xmmword_299DA4C80));
        if (vuzp1_s8(vuzp1_s16(v54, *v53.i8), *v53.i8).u8[0])
        {
          *a2 = HIBYTE(v52);
        }

        if (vuzp1_s8(vuzp1_s16(v54, *&v53), *&v53).i8[1])
        {
          *(a2 + 1) = BYTE6(v52);
        }

        if (vuzp1_s8(vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, xmmword_299DA4C90))), *&v53).i8[2])
        {
          *(a2 + 2) = BYTE5(v52);
          *(a2 + 3) = BYTE4(v52);
        }

        v55 = vmovn_s64(vcgeq_u64(v53, xmmword_299DA4CA0));
        if (vuzp1_s8(*&v53, vuzp1_s16(v55, *&v53)).i32[1])
        {
          *(a2 + 4) = BYTE3(v52);
        }

        if (vuzp1_s8(*&v53, vuzp1_s16(v55, *&v53)).i8[5])
        {
          *(a2 + 5) = BYTE2(v52);
        }

        v56 = vmovn_s64(vcgeq_u64(v53, xmmword_299DA4CB0));
        if (vuzp1_s8(*&v56, vuzp1_s16(v56, v56)).i8[6])
        {
          *(a2 + 6) = BYTE1(v52);
        }

        v57 = vuzp1_s16(v56, v56);
        if (vuzp1_s8(v57, v57).i8[7])
        {
          *(a2 + 7) = v52;
        }
      }
    }
  }

  else
  {
    v24 = *a4;
    v23 = (a4 + 1);
    v25 = bswap64(v24) ^ *result;
    *result = v25;
    v26 = 0;
    if (a3 != 8)
    {
      v27 = 56;
      v28 = a3 - 8;
      do
      {
        v29 = *v23++;
        v26 |= v29 << v27;
        v27 -= 8;
        --v28;
      }

      while (v28);
    }

    result[1] ^= v26;
    if (a2)
    {
      *a2 = bswap64(v25);
      if (a3 != 8)
      {
        v30 = result[1];
        v31 = (a3 + 7) & 0x10;
        v32 = vdupq_n_s64(a3 - 9);
        v33 = xmmword_299DA4CC0;
        v34 = xmmword_299DA4CD0;
        v35 = xmmword_299DA4CE0;
        v36 = xmmword_299DA4CF0;
        v37 = xmmword_299DA4CB0;
        v38 = xmmword_299DA4CA0;
        v39 = xmmword_299DA4C90;
        v40 = xmmword_299DA4C80;
        v41 = (a2 + 11);
        v42 = 32;
        v43 = vdupq_n_s64(0x10uLL);
        do
        {
          v44 = vmovn_s64(vcgeq_u64(v32, v40));
          if (vuzp1_s8(vuzp1_s16(v44, *v32.i8), *v32.i8).u8[0])
          {
            *(v41 - 3) = v30 >> (v42 + 24);
          }

          if (vuzp1_s8(vuzp1_s16(v44, *&v32), *&v32).i8[1])
          {
            *(v41 - 2) = v30 >> (v42 + 16);
          }

          if (vuzp1_s8(vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, *&v39))), *&v32).i8[2])
          {
            *(v41 - 1) = v30 >> (v42 + 8);
            *v41 = v30 >> v42;
          }

          v45 = vmovn_s64(vcgeq_u64(v32, v38));
          if (vuzp1_s8(*&v32, vuzp1_s16(v45, *&v32)).i32[1])
          {
            v41[1] = v30 >> (v42 - 8);
          }

          if (vuzp1_s8(*&v32, vuzp1_s16(v45, *&v32)).i8[5])
          {
            v41[2] = v30 >> (v42 - 16);
          }

          if (vuzp1_s8(*&v32, vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, *&v37)))).i8[6])
          {
            v41[3] = v30 >> (v42 - 24);
            v41[4] = v30;
          }

          v46 = vmovn_s64(vcgeq_u64(v32, v36));
          if (vuzp1_s8(vuzp1_s16(v46, *v32.i8), *v32.i8).u8[0])
          {
            v41[5] = v30;
          }

          if (vuzp1_s8(vuzp1_s16(v46, *&v32), *&v32).i8[1])
          {
            v41[6] = v30;
          }

          if (vuzp1_s8(vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, *&v35))), *&v32).i8[2])
          {
            v41[7] = v30;
            v41[8] = v30;
          }

          v47 = vmovn_s64(vcgeq_u64(v32, v34));
          if (vuzp1_s8(*&v32, vuzp1_s16(v47, *&v32)).i32[1])
          {
            v41[9] = v30;
          }

          if (vuzp1_s8(*&v32, vuzp1_s16(v47, *&v32)).i8[5])
          {
            v41[10] = v30;
          }

          if (vuzp1_s8(*&v32, vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, *&v33)))).i8[6])
          {
            v41[11] = v30;
            v41[12] = v30;
          }

          v38 = vaddq_s64(v38, v43);
          v39 = vaddq_s64(v39, v43);
          v40 = vaddq_s64(v40, v43);
          v37 = vaddq_s64(v37, v43);
          v36 = vaddq_s64(v36, v43);
          v35 = vaddq_s64(v35, v43);
          v42 += 0x80;
          v34 = vaddq_s64(v34, v43);
          v41 += 16;
          v33 = vaddq_s64(v33, v43);
          v31 -= 16;
        }

        while (v31);
      }
    }
  }

  result[5] = a3;
  return result;
}

int8x8_t *ccascon_ascon128a_ref_accumulate_decrypt(int8x8_t *result, uint64_t a2, unint64_t a3, unint64_t *a4)
{
  if (a3 >= 0x10)
  {
    do
    {
      v4 = bswap64(*a4);
      v5 = bswap64(a4[1]);
      if (a2)
      {
        *a2 = bswap64(*result ^ v4);
        *(a2 + 8) = bswap64(*&result[1] ^ v5);
        a2 += 16;
      }

      v6 = 0;
      a4 += 2;
      a3 -= 16;
      v7 = result[3];
      v8 = result[4];
      v9 = result[2];
      do
      {
        v10 = *&v9 ^ ROUND_CONSTANTS_0[v6 + 4];
        v11 = v8 ^ v4;
        v12 = v8 ^ *&v7;
        v13 = v10 ^ v5;
        v14 = v10 & ~v5 ^ v11;
        v15 = *&v7 & ~v13 ^ v5;
        v16 = v5 & ~v11 ^ v8 ^ *&v7;
        v17 = v8 & ~*&v7;
        v18 = v11 & ~v12;
        v19 = v13 ^ v17;
        v20 = v18 ^ *&v7;
        v21 = v13 ^ ~v17;
        v22 = v20 ^ v13 ^ v17;
        v4 = __ROR8__(v14 ^ v16, 19) ^ __ROR8__(v14 ^ v16, 28) ^ v14 ^ v16;
        v5 = __ROR8__(v15 ^ v14, 61) ^ __ROR8__(v15 ^ v14, 39) ^ v15 ^ v14;
        v9 = (v19 ^ ~(__ROR8__(v21, 1) ^ __ROR8__(v21, 6)));
        v7 = (__ROR8__(v22, 10) ^ __ROR8__(v22, 17) ^ v22);
        v8 = __ROR8__(v16, 7) ^ __ROR8__(v16, 41) ^ v16;
        ++v6;
      }

      while (v6 != 8);
      result[3] = v7;
      result[4] = v8;
      result[1] = v5;
      result[2] = v9;
      *result = v4;
    }

    while (a3 > 0xF);
  }

  if (a3 >= 8)
  {
    v24 = *a4;
    v23 = (a4 + 1);
    v25 = bswap64(v24);
    v26 = 0;
    if (a3 == 8)
    {
      if (!a2)
      {
        *result = v25;
        v52 = result + 1;
        v53 = result[1];
        goto LABEL_70;
      }
    }

    else
    {
      v27 = 56;
      v28 = a3 - 8;
      do
      {
        v29 = *v23++;
        v26 |= v29 << v27;
        v27 -= 8;
        --v28;
      }

      while (v28);
      if (!a2)
      {
LABEL_63:
        v52 = result + 1;
        v72 = result[1];
        *result = v25;
        v73 = (a3 - 7) & 0xFFFFFFFFFFFFFFFELL;
        v74.i64[1] = -1;
        v74.i64[0] = v72;
        v75 = xmmword_299DA4C80;
        v76 = vdupq_n_s64(a3 - 9);
        v77 = vdupq_n_s64(0x38uLL);
        v78.i64[0] = 255;
        v78.i64[1] = 255;
        v79 = vdupq_n_s64(2uLL);
        do
        {
          v80 = v74;
          v81 = v75;
          v74 = vbicq_s8(v74, vshlq_u64(v78, vsubq_s64(v77, vshlq_n_s64(v75, 3uLL))));
          v75 = vaddq_s64(v75, v79);
          v73 -= 2;
        }

        while (v73);
        v82 = vbslq_s8(vcgtq_u64(v81, v76), v80, v74);
        v53 = vand_s8(*v82.i8, *&vextq_s8(v82, v82, 8uLL));
        goto LABEL_70;
      }
    }

    *a2 = bswap64(*result ^ v25);
    v52 = result + 1;
    v53 = result[1];
    if (a3 != 8)
    {
      v54 = *&v53 ^ v26;
      v55 = (a3 + 7) & 0x10;
      v56 = vdupq_n_s64(a3 - 9);
      v57 = xmmword_299DA4CC0;
      v58 = xmmword_299DA4CD0;
      v59 = xmmword_299DA4CE0;
      v60 = xmmword_299DA4CF0;
      v61 = xmmword_299DA4CB0;
      v62 = xmmword_299DA4CA0;
      v63 = xmmword_299DA4C90;
      v64 = xmmword_299DA4C80;
      v65 = (a2 + 11);
      v66 = 32;
      v67 = vdupq_n_s64(0x10uLL);
      do
      {
        v68 = vmovn_s64(vcgeq_u64(v56, v64));
        if (vuzp1_s8(vuzp1_s16(v68, *v56.i8), *v56.i8).u8[0])
        {
          *(v65 - 3) = v54 >> (v66 + 24);
        }

        if (vuzp1_s8(vuzp1_s16(v68, *&v56), *&v56).i8[1])
        {
          *(v65 - 2) = v54 >> (v66 + 16);
        }

        if (vuzp1_s8(vuzp1_s16(*&v56, vmovn_s64(vcgeq_u64(v56, *&v63))), *&v56).i8[2])
        {
          *(v65 - 1) = v54 >> (v66 + 8);
          *v65 = v54 >> v66;
        }

        v69 = vmovn_s64(vcgeq_u64(v56, v62));
        if (vuzp1_s8(*&v56, vuzp1_s16(v69, *&v56)).i32[1])
        {
          v65[1] = v54 >> (v66 - 8);
        }

        if (vuzp1_s8(*&v56, vuzp1_s16(v69, *&v56)).i8[5])
        {
          v65[2] = v54 >> (v66 - 16);
        }

        if (vuzp1_s8(*&v56, vuzp1_s16(*&v56, vmovn_s64(vcgeq_u64(v56, *&v61)))).i8[6])
        {
          v65[3] = v54 >> (v66 - 24);
          v65[4] = v54;
        }

        v70 = vmovn_s64(vcgeq_u64(v56, v60));
        if (vuzp1_s8(vuzp1_s16(v70, *v56.i8), *v56.i8).u8[0])
        {
          v65[5] = v54;
        }

        if (vuzp1_s8(vuzp1_s16(v70, *&v56), *&v56).i8[1])
        {
          v65[6] = v54;
        }

        if (vuzp1_s8(vuzp1_s16(*&v56, vmovn_s64(vcgeq_u64(v56, *&v59))), *&v56).i8[2])
        {
          v65[7] = v54;
          v65[8] = v54;
        }

        v71 = vmovn_s64(vcgeq_u64(v56, v58));
        if (vuzp1_s8(*&v56, vuzp1_s16(v71, *&v56)).i32[1])
        {
          v65[9] = v54;
        }

        if (vuzp1_s8(*&v56, vuzp1_s16(v71, *&v56)).i8[5])
        {
          v65[10] = v54;
        }

        if (vuzp1_s8(*&v56, vuzp1_s16(*&v56, vmovn_s64(vcgeq_u64(v56, *&v57)))).i8[6])
        {
          v65[11] = v54;
          v65[12] = v54;
        }

        v62 = vaddq_s64(v62, v67);
        v63 = vaddq_s64(v63, v67);
        v64 = vaddq_s64(v64, v67);
        v61 = vaddq_s64(v61, v67);
        v60 = vaddq_s64(v60, v67);
        v59 = vaddq_s64(v59, v67);
        v66 += 0x80;
        v58 = vaddq_s64(v58, v67);
        v65 += 16;
        v57 = vaddq_s64(v57, v67);
        v55 -= 16;
      }

      while (v55);
      goto LABEL_63;
    }

    *result = v25;
LABEL_70:
    *v52 = (*&v53 | v26);
    goto LABEL_71;
  }

  v30 = 0;
  if (a3)
  {
    v31 = 56;
    v32 = a3;
    do
    {
      v33 = *a4;
      a4 = (a4 + 1);
      v30 |= v33 << v31;
      v31 -= 8;
      --v32;
    }

    while (v32);
    v34 = *result;
    if (a2)
    {
      v35 = v34 ^ v30;
      v36 = vdupq_n_s64(a3 - 1);
      v37 = vmovn_s64(vcgeq_u64(v36, xmmword_299DA4C80));
      if (vuzp1_s8(vuzp1_s16(v37, *v36.i8), *v36.i8).u8[0])
      {
        *a2 = HIBYTE(v35);
      }

      if (vuzp1_s8(vuzp1_s16(v37, *&v36), *&v36).i8[1])
      {
        *(a2 + 1) = BYTE6(v35);
      }

      if (vuzp1_s8(vuzp1_s16(*&v36, vmovn_s64(vcgeq_u64(v36, xmmword_299DA4C90))), *&v36).i8[2])
      {
        *(a2 + 2) = BYTE5(v35);
        *(a2 + 3) = BYTE4(v35);
      }

      v38 = vmovn_s64(vcgeq_u64(v36, xmmword_299DA4CA0));
      if (vuzp1_s8(*&v36, vuzp1_s16(v38, *&v36)).i32[1])
      {
        *(a2 + 4) = (v34 ^ v30) >> 24;
      }

      if (vuzp1_s8(*&v36, vuzp1_s16(v38, *&v36)).i8[5])
      {
        *(a2 + 5) = BYTE2(v35);
      }

      v39 = vmovn_s64(vcgeq_u64(v36, xmmword_299DA4CB0));
      if (vuzp1_s8(*&v39, vuzp1_s16(v39, v39)).i8[6])
      {
        *(a2 + 6) = BYTE1(v35);
      }

      v40 = vuzp1_s16(v39, v39);
      if (vuzp1_s8(v40, v40).i8[7])
      {
        *(a2 + 7) = v35;
      }

      v34 = *result;
    }

    v41 = (a3 + 1) & 0xE;
    v42.i64[1] = -1;
    v42.i64[0] = v34;
    v43 = xmmword_299DA4C80;
    v44 = vdupq_n_s64(a3 - 1);
    v45 = vdupq_n_s64(0x38uLL);
    v46.i64[0] = 255;
    v46.i64[1] = 255;
    v47 = vdupq_n_s64(2uLL);
    do
    {
      v48 = v42;
      v49 = v43;
      v42 = vbicq_s8(v42, vshlq_u64(v46, vsubq_s64(v45, vshlq_n_s64(v43, 3uLL))));
      v43 = vaddq_s64(v43, v47);
      v41 -= 2;
    }

    while (v41);
    v50 = vbslq_s8(vcgtq_u64(v49, v44), v48, v42);
    v51 = vand_s8(*v50.i8, *&vextq_s8(v50, v50, 8uLL));
  }

  else
  {
    v51 = *result;
  }

  *result = (*&v51 | v30);
LABEL_71:
  result[5] = a3;
  return result;
}

unint64_t *ccascon_ascon128a_ref_finalize(unint64_t *result, uint64_t a2, unint64_t *a3)
{
  v3 = 0;
  v4 = bswap64(*a3);
  v5 = bswap64(a3[1]);
  v6 = result[2] ^ v4;
  v7 = result[3] ^ v5;
  v8 = result[4];
  v10 = *result;
  v9 = result[1];
  do
  {
    v11 = v6 ^ ROUND_CONSTANTS_0[v3];
    v12 = v8 ^ v10;
    v13 = v8 ^ v7;
    v14 = v11 ^ v9;
    v15 = v11 & ~v9 ^ v12;
    v16 = v7 & ~v14 ^ v9;
    v17 = v9 & ~v12 ^ v8 ^ v7;
    v18 = v8 & ~v7;
    v19 = v12 & ~v13 ^ v7 ^ v14 ^ v18;
    v10 = __ROR8__(v15 ^ v17, 19) ^ __ROR8__(v15 ^ v17, 28) ^ v15 ^ v17;
    v9 = __ROR8__(v16 ^ v15, 61) ^ __ROR8__(v16 ^ v15, 39) ^ v16 ^ v15;
    v6 = v14 ^ v18 ^ ~(__ROR8__(v14 ^ ~v18, 1) ^ __ROR8__(v14 ^ ~v18, 6));
    v7 = __ROR8__(v19, 10) ^ __ROR8__(v19, 17) ^ v19;
    v8 = __ROR8__(v17, 7) ^ __ROR8__(v17, 41) ^ v17;
    ++v3;
  }

  while (v3 != 12);
  *result = v10;
  result[1] = v9;
  v20 = v7 ^ v4;
  result[2] = v6;
  result[3] = v20;
  result[4] = v8 ^ v5;
  *a2 = HIBYTE(v20);
  *(a2 + 1) = BYTE6(v20);
  *(a2 + 2) = BYTE5(v20);
  *(a2 + 3) = BYTE4(v20);
  *(a2 + 4) = BYTE3(v20);
  *(a2 + 5) = BYTE2(v20);
  *(a2 + 6) = BYTE1(v20);
  *(a2 + 7) = v20;
  *(a2 + 8) = bswap64(result[4]);
  return result;
}

unint64_t cczp_negate(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  v6 = cczp_n(a1);
  v7 = ccn_n(v6, a3) != 0;
  v8 = cczp_prime(a1);

  return ccn_cond_rsub(v6, v7, a2, a3, v8);
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

uint64_t ccmode_ctr_crypt(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(*a1 + 8);
  if (v6 >= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(*a1 + 8);
  }

  if (a2)
  {
    v10 = a2;
    v11 = a1 + 2;
    v12 = (v6 + 7) >> 3;
    v13 = &a1[2 * v12 + 2];
    v14 = &a1[v12 + 2];
    v15 = a1 + 15;
    do
    {
      v16 = *(v5 + 8);
      if (v4 == v16)
      {
        (*(v5 + 24))(v13, 1, v14, v11);
        inc_uint(v14 - v7 + *(v5 + 8), v7);
        v4 = 0;
        v16 = *(v5 + 8);
      }

      v17 = v16 - v4;
      if (v10 < v16 - v4)
      {
        v17 = v10;
      }

      if (v16 != v4)
      {
        v18 = v17;
        do
        {
          *(a4 - 1 + v18) = v15[v4 + v18] ^ *(a3 - 1 + v18);
          --v18;
        }

        while (v18);
      }

      a3 += v17;
      a4 += v17;
      v4 += v17;
      v10 -= v17;
    }

    while (v10);
  }

  a1[1] = v4;
  return 0;
}

void *cced448_full_add_ws(uint64_t a1, void *a2, char *a3)
{
  v6 = cczp_n(a2);
  v7 = *(a1 + 16);
  v8 = 4 * v6;
  v9 = (*(a1 + 24))(a1, 4 * v6);
  v10 = (*(a1 + 24))(a1, v8);
  cced25519_to_ed25519_point_ws(a1, a2);
  cced25519_to_ed25519_point_ws(a1, a2);
  cced448_add_points_unified_ws(a1, a2, v9, v10, v9, 4);
  result = cced25519_from_ed25519_point_ws(a1, a2, a3, v9);
  *(a1 + 16) = v7;
  return result;
}

BOOL ccder_blob_encode_oid(void *a1, const void *a2)
{
  v4 = ccoid_size(a2);

  return ccder_blob_encode_body(a1, v4, a2);
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
    v3[-2] = vqtbl2q_s8(v19, xmmword_299DA4D10);
    v3[-1] = vqtbl2q_s8(*(&v19 + 16), xmmword_299DA4D20);
    *v3 = vqtbl2q_s8(v20, xmmword_299DA4D30);
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