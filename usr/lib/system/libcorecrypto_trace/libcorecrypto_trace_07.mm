uint64_t ccec_compact_generate_key_checksign_ws(uint64_t a1, uint64_t (**a2)(void, unint64_t, void *), uint64_t a3)
{
  if (*(a3 + 8) != 2)
  {
    return 4294967210;
  }

  result = ccec_sign_internal_ws(a1, (a3 + 16 + 16 * *a3), 0x20uLL, &FAKE_DIGEST, (a3 + 16), (a3 + 16 + 8 * *a3), a2);
  if (!result)
  {
    *(a3 + 8) = 3;
  }

  return result;
}

uint64_t ccec_compact_generate_key_checkverify_and_extract_ws(uint64_t a1, uint64_t a2, void *a3)
{
  v8[2] = *MEMORY[0x29EDCA608];
  *a3 = 0;
  if (*(a2 + 8) != 3)
  {
    return 4294967210;
  }

  v8[0] = 0;
  v8[1] = 0;
  v5 = (a2 + 16);
  v6 = ccec_verify_internal_ws(a1, (a2 + 16 + 16 * *a2), 0x20uLL, &FAKE_DIGEST, v5, &v5[*a2], v8);
  if (!v6 && !cc_cmp_safe_internal(16, &CCEC_FAULT_CANARY, v8))
  {
    *(a2 + 8) = 4;
    *a3 = &v5[2 * *a2];
  }

  return v6;
}

uint64_t ccec_generate_key_deterministic_ws(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(void, uint64_t, uint64_t *), int a6, uint64_t **a7)
{
  *a7 = a2;
  if ((~a6 & 0x19) != 0)
  {
    if (a6)
    {
      v18 = OUTLINED_FUNCTION_0_34();
      result = ccec_generate_scalar_fips_extrabits_ws(v18, v19, v20, v21, v22);
      if (result)
      {
        return result;
      }
    }

    else
    {
      if ((a6 & 4) == 0)
      {
        return 4294967275;
      }

      v23 = OUTLINED_FUNCTION_0_34();
      result = ccec_generate_scalar_legacy_ws(v23, v24, v25, v26, v27);
      if (result)
      {
        return result;
      }
    }

LABEL_12:
    OUTLINED_FUNCTION_1_17();
    result = ccec_make_pub_from_priv_ws(a1, a2, a5, v28 + 16, 0, a7);
    if (!result)
    {
      if ((~a6 & 9) == 0)
      {
        ccec_compact_transform_key_ws(a1, a7);
      }

      if (ccec_pairwise_consistency_check_ws(a1, a7, a5))
      {
        return 4294967278;
      }

      else
      {
        return 0;
      }
    }

    return result;
  }

  memset(v29, 0, sizeof(v29));
  v14 = ((cczp_bitlen(a2) + 62) >> 3) & 0x1FFFFFFFFFFFFFF8;
  v15 = (a3 - v14);
  if (v15 < 10 * (((cczp_bitlen(&a2[5 * *a2 + 4]) + 63) >> 3) & 0x1FFFFFFFFFFFFFF8))
  {
    return 4294967286;
  }

  result = ccrng_sequence_non_repeat_init(v29, v15, (a4 + v14));
  if (!result)
  {
    OUTLINED_FUNCTION_1_17();
    result = ccec_generate_scalar_fips_retry_ws(a1, a2, v29, (v17 + 16));
    if (!result)
    {
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t cche_ciphertext_plaintext_add_ws(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v83[1] = *MEMORY[0x29EDCA608];
  v8 = cche_param_ctx_he_scheme(*a3);
  if (v8 == 2)
  {
    v47 = *(a3 + 8);
    if (v47 == cche_ciphertext_fresh_npolys() && *(a2 + 8) == v47)
    {
      v48 = (a2 + 24);
      if (ccpolyzp_po2cyc_ctx_eq(*(a3 + 24), *(a2 + 24)))
      {
        v49 = cche_param_ctx_polynomial_degree(*a3);
        v50 = *(*(a3 + 24) + 4);
        v51 = *v48;
        v52 = *a4;
        v53 = *(*a4 + 4);
        while (--v53)
        {
          v52 = v52[14];
        }

        if (v50)
        {
          for (i = 0; i != v50; ++i)
          {
            v55 = v51[1] - 1;
            v56 = v51;
            if (v55 > i)
            {
              v56 = v51;
              do
              {
                v56 = *(v56 + 14);
                --v55;
              }

              while (v55 > i);
            }

            if (v49)
            {
              for (j = 0; j != v49; *(a2 + 32 + 8 * (j++ + i * **v48)) = v70 + ((v70 >> 63) & v69))
              {
                v58 = a4[j + 1];
                v59 = *(a3 + 16);
                v60 = (v59 * v58) >> 64;
                v61 = v59 * v58;
                v62 = v52[4];
                v63 = (v61 * v62) >> 64;
                v64 = (v60 * v62) >> 64;
                v65 = v60 * v62;
                v36 = __CFADD__(v63, v65);
                v66 = v63 + v65;
                v67 = v36;
                v68 = v67 + __CFADD__(v61 * v52[5], v66) + v64 + v52[5] * v60 + ((v61 * v52[5]) >> 64);
                v69 = *(v56 + 2);
                v70 = *(a3 + 32 + 8 * (j + i * **(a3 + 24))) + (((v61 + v52[2] * ~v68) >> 63) & v52[2]) - v69 + v61 + v52[2] * ~v68;
              }
            }
          }
        }

        sizeof_struct_ccpolyzp_po2cyc();
        OUTLINED_FUNCTION_3_6();
        OUTLINED_FUNCTION_1_18(&v48[v72] + v71, v73);
        result = 0;
        *(a2 + 16) = *(a3 + 16);
        return result;
      }
    }

    return 4294967289;
  }

  if (v8 != 1)
  {
    return 4294967289;
  }

  v9 = *(a3 + 8);
  if (v9 != cche_ciphertext_fresh_npolys())
  {
    return 4294967289;
  }

  if (*(a2 + 8) != v9)
  {
    return 4294967289;
  }

  v10 = (a2 + 24);
  if (!ccpolyzp_po2cyc_ctx_eq(*(a3 + 24), *(a2 + 24)) || *(a3 + 16) != 1)
  {
    return 4294967289;
  }

  v75 = a2;
  v76 = *(a1 + 16);
  v11 = *a3;
  v12 = cche_param_ctx_polynomial_degree(*a3);
  v74 = *(*(a3 + 24) + 4);
  v13 = cche_param_ctx_cipher_plain_ctx_const(v11, v74);
  v14 = *v10;
  v79 = cche_param_ctx_plaintext_ctx(v11);
  v15 = a4;
  v16 = *(a1 + 24);
  v17 = sizeof_struct_ccpolyzp_po2cyc();
  v18 = v12;
  v77 = v16(a1, ((v17 + 7) >> 3) + v12);
  v78 = v15;
  *v77 = *v15;
  v19 = v13;
  ccn_set(1, &__dst, (v13 + 24));
  ccn_zero(1, v83);
  if (v12)
  {
    v20 = (v78 + 1);
    v21 = (v77 + 1);
    v22 = v18;
    while (1)
    {
      ccn_mul_ws(a1, 1, v81, v19 + 16, v20);
      if (ccn_add_ws(a1, 2, v80, v81, &__dst))
      {
        break;
      }

      ccpolyzp_po2cyc_scalar_divmod_ws(a1, v21, v80, (v79 + 16));
      v21 += 8;
      v20 += 8;
      if (!--v22)
      {
        goto LABEL_11;
      }
    }

    result = 0xFFFFFFFFLL;
  }

  else
  {
LABEL_11:
    if (v74)
    {
      v23 = 0;
      v24 = (v19 + 32);
      do
      {
        v25 = v14[1] - 1;
        v26 = v14;
        if (v25 > v23)
        {
          v26 = v14;
          do
          {
            v26 = v26[14];
            --v25;
          }

          while (v25 > v23);
        }

        if (v18)
        {
          v27 = 0;
          v28 = *v24;
          do
          {
            v29 = v78[v27 + 1];
            v30 = (v29 * v28) >> 64;
            v31 = v29 * v28;
            v32 = v26[4];
            v33 = (v31 * v32) >> 64;
            v34 = (v30 * v32) >> 64;
            v35 = v30 * v32;
            v36 = __CFADD__(v33, v35);
            v37 = v33 + v35;
            v38 = v36;
            v39 = v38 + __CFADD__(v31 * v26[5], v37) + v34 + v26[5] * v30 + ((v31 * v26[5]) >> 64);
            v40 = v26[2];
            v41 = v77[v27 + 1] + (((v31 + v40 * ~v39) >> 63) & v40) - v40 + v31 + v40 * ~v39;
            v42 = *(a3 + 32 + 8 * (v27 + v23 * **(a3 + 24)));
            *(v75 + 32 + 8 * (v27++ + v23 * **v10)) = v42 + ((v41 >> 63) & v40) - v40 + v41 + (((v42 + ((v41 >> 63) & v40) - v40 + v41) >> 63) & v40);
          }

          while (v18 != v27);
        }

        ++v24;
        ++v23;
      }

      while (v23 != v74);
    }

    sizeof_struct_ccpolyzp_po2cyc();
    OUTLINED_FUNCTION_3_6();
    OUTLINED_FUNCTION_1_18(&v10[v44] + v43, v45);
    result = 0;
    *(v75 + 16) = *(a3 + 16);
  }

  *(a1 + 16) = v76;
  return result;
}

uint64_t cche_ciphertext_coeff_plaintext_mul_ws(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a2 + 8) != *(a3 + 8))
  {
    return 4294967289;
  }

  v8 = *(a1 + 16);
  if (!ccpolyzp_po2cyc_ctx_eq(*(a2 + 24), *(a3 + 24)))
  {
    return 4294967289;
  }

  v9 = *a4;
  v10 = cche_param_ctx_plaintext_ctx(*a3);
  if (!ccpolyzp_po2cyc_ctx_eq(v9, v10))
  {
    return 4294967289;
  }

  v11 = *(a1 + 24);
  sizeof_struct_ccpolyzp_po2cyc();
  OUTLINED_FUNCTION_0_35();
  v11(a1, v13 + (v12 >> 3));
  v14 = cche_param_ctx_cipher_plain_ctx_const(*a3, *(*(a3 + 24) + 4));
  result = OUTLINED_FUNCTION_4_3(v14);
  if (!result)
  {
    result = cche_ciphertext_coeff_dcrt_plaintext_mul_internal(a2, a3);
  }

  *(a1 + 16) = v8;
  return result;
}

uint64_t cche_ciphertext_coeff_dcrt_plaintext_mul_internal(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 4294967289;
  }

  OUTLINED_FUNCTION_2_10();
  v6 = v5 + 24;
  if (!ccpolyzp_po2cyc_ctx_eq(*(v5 + 24), *(v7 + 24)) || !ccpolyzp_po2cyc_ctx_eq(*v4, *(v3 + 24)))
  {
    return 4294967289;
  }

  v8 = *(v3 + 8);
  if (v2 != v3)
  {
    v9 = sizeof_struct_ccrns_mul_modulus();
    v10 = sizeof_struct_ccpolyzp_po2cyc();
    v11 = (v9 + v10 - 1) / v10;
    sizeof_struct_ccpolyzp_po2cyc();
    OUTLINED_FUNCTION_0_35();
    memmove(v2, v3, 8 * (v11 + (v13 + (v12 >> 3)) * v8));
  }

  result = cche_ciphertext_fwd_ntt_internal(v2);
  if (!result)
  {
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        sizeof_struct_ccpolyzp_po2cyc();
        OUTLINED_FUNCTION_0_35();
        v18 = (v6 + 8 * (v17 + (v16 >> 3)) * i);
        ccpolyzp_po2cyc_eval_mul(v18, v18, v4);
      }
    }

    v2[2] = *(v3 + 16);

    return cche_ciphertext_inv_ntt_internal(v2);
  }

  return result;
}

uint64_t cche_ciphertext_coeff_dcrt_plaintext_mul(uint64_t a1, uint64_t a2)
{
  v6 = timingsafe_enable_if_supported();
  v4 = cche_ciphertext_coeff_dcrt_plaintext_mul_internal(a1, a2);
  cc_disable_dit_with_sb(&v6);
  return v4;
}

uint64_t cche_ciphertext_eval_dcrt_plaintext_mul_internal(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 4294967289;
  }

  OUTLINED_FUNCTION_2_10();
  v6 = (v5 + 24);
  v8 = (v7 + 24);
  if (!ccpolyzp_po2cyc_ctx_eq(*(v5 + 24), *(v7 + 24)) || !ccpolyzp_po2cyc_ctx_eq(*v4, *v8))
  {
    return 4294967289;
  }

  v9 = *(v3 + 8);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v11 = *v6;
      v12 = sizeof_struct_ccpolyzp_po2cyc();
      ccpolyzp_po2cyc_eval_mul(&v6[((v11[1] * *v11) + ((v12 + 7) >> 3)) * i], &v8[(((*v8)[1] * **v8) + ((v12 + 7) >> 3)) * i], v4);
    }
  }

  result = 0;
  *(v2 + 16) = *(v3 + 16);
  return result;
}

uint64_t cche_ciphertext_eval_plaintext_mul_ws(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a2 + 8) != *(a3 + 8))
  {
    return 4294967289;
  }

  OUTLINED_FUNCTION_2_10();
  v9 = *(v8 + 16);
  if (!ccpolyzp_po2cyc_ctx_eq(*(v10 + 24), *(v11 + 24)))
  {
    return 4294967289;
  }

  v12 = *a4;
  v13 = cche_param_ctx_plaintext_ctx(*v6);
  if (!ccpolyzp_po2cyc_ctx_eq(v12, v13))
  {
    return 4294967289;
  }

  v14 = *(v4 + 24);
  sizeof_struct_ccpolyzp_po2cyc();
  OUTLINED_FUNCTION_0_35();
  v14(v4, v16 + (v15 >> 3));
  v17 = cche_param_ctx_cipher_plain_ctx_const(*v6, *(v6[3] + 4));
  result = OUTLINED_FUNCTION_4_3(v17);
  if (!result)
  {
    result = cche_ciphertext_eval_dcrt_plaintext_mul_internal(v5, v6);
    *(v5 + 16) = v6[2];
  }

  *(v4 + 16) = v9;
  return result;
}

uint64_t cczp_generate_non_zero_element_ws(uint64_t a1, uint64_t a2, unsigned int (**a3)(void, unint64_t, uint64_t), char *a4)
{
  v8 = cczp_n(a2);
  v9 = cczp_bitlen(a2);
  v10 = *(a1 + 16);
  v11 = (*(a1 + 24))(a1, v8);
  v12 = (*(a1 + 24))(a1, v8 + 1);
  ccn_random_bits(v9 + 64, v12, a3);
  v14 = v13;
  if (!v13)
  {
    v15 = cczp_prime(a2);
    ccn_sub1(v8, v11, v15, 1uLL);
    ccn_divmod_ws(a1, (v9 + 127) >> 6, v12, 0, 0, v8, a4, v11);
    ccn_add1_ws(a1, v8, a4, a4, 1);
  }

  *(a1 + 16) = v10;
  return v14;
}

uint64_t ccrng_test_init(uint64_t (**a1)(uint64_t a1, uint64_t a2, uint64_t a3), uint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = ccrng_test_generate;
  v8 = ccaes_cbc_encrypt_mode();
  result = ccdrbg_df_bc_init(ccrng_test_init_df_ctx, v8, 0x10uLL);
  if (!result)
  {
    ccrng_test_init_custom = ccaes_ctr_crypt_mode();
    ccdrbg_factory_nistctr(a1 + 1, &ccrng_test_init_custom);
    v10 = malloc_type_malloc(2 * a1[1], 0xE653E472uLL);
    a1[8] = v10;
    if (!a4)
    {
      a4 = &unk_299D9E79B;
    }

    v11 = strlen(a4);

    return ccdrbg_init((a1 + 1), v10, a2, a3, a2, a3, v11, a4);
  }

  return result;
}

void ccprime_rabin_miller_iteration_ws(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int (**a4)(void, unint64_t, uint64_t))
{
  v4 = &a2[2 * *a2];
  v5 = v4[4];
  if (v5 <= 0x3F)
  {
    v41 = *a2;
    v8 = (v4 + 5);
    v10 = cczp_n(a2);
    v11 = *(a1 + 16);
    v12 = (*(a1 + 24))(a1, v10);
    v13 = (*(a1 + 24))(a1, v10);
    v14 = OUTLINED_FUNCTION_0_36();
    cczp_to_ws(v14, v15);
    ccn_seti(v10, v13, 1);
    cczp_to_ws(a1, a2);
    v16 = OUTLINED_FUNCTION_0_36();
    cczp_power_blinded_ws(v16, v17, v18, v12, v19, v8, a4);
    if (!v20)
    {
      v40 = v11;
      v21 = v8 + 8 * v41;
      v22 = OUTLINED_FUNCTION_2_11();
      ccn_cmp_public_value(v22, v23, v13);
      OUTLINED_FUNCTION_1_19();
      v25 = v24 - 1;
      v26 = OUTLINED_FUNCTION_2_11();
      ccn_cmp_public_value(v26, v27, v21);
      OUTLINED_FUNCTION_1_19();
      v29 = (v28 - 1) | v25;
      v30 = 62;
      do
      {
        if ((v29 | -(v5 + v30 != 63)) != 0xFFFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v31 = OUTLINED_FUNCTION_0_36();
        cczp_sqr_ws(v31, v32);
        v33 = OUTLINED_FUNCTION_2_11();
        ccn_cmp_public_value(v33, v34, v21);
        OUTLINED_FUNCTION_1_19();
        v29 |= v35 - 1;
        v36 = OUTLINED_FUNCTION_2_11();
        ccn_cmp_public_value(v36, v37, v13);
        OUTLINED_FUNCTION_1_19();
      }

      while ((v29 | -v38) == 0xFFFFFFFFFFFFFFFFLL && v30-- != 0);
      v11 = v40;
    }

    *(a1 + 16) = v11;
  }
}

uint64_t ccmldsa_derive_key_from_seed(uint64_t a1, uint64_t a2)
{
  v7 = timingsafe_enable_if_supported();
  ccmldsa_public_ctx(a1);
  if (ccmldsa_seed_nbytes_ctx() == a2)
  {
    v4 = ccmldsa_public_ctx(a1);
    v5 = OUTLINED_FUNCTION_0_37(v4);
  }

  else
  {
    v5 = 4294967289;
  }

  cc_disable_dit_with_sb(&v7);
  return v5;
}

uint64_t ccmldsa_generate_key_with_seed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, uint64_t, uint64_t))
{
  v12 = timingsafe_enable_if_supported();
  ccmldsa_public_ctx(a1);
  if (ccmldsa_seed_nbytes_ctx() == a2)
  {
    v8 = (*a4)(a4, a2, a3);
    if (!v8)
    {
      v9 = ccmldsa_public_ctx(a1);
      v8 = OUTLINED_FUNCTION_0_37(v9);
    }

    v10 = v8;
  }

  else
  {
    v10 = 4294967289;
  }

  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t cccmac_one_shot_generate_internal(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char *a5, size_t a6, void *a7)
{
  v20[1] = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0_38();
  v13 = MEMORY[0x2A1C7C4A8](v12);
  v15 = &v20[-2 * v14];
  if (!cccmac_init_internal(v13, v15, v16, v17) && !cccmac_update_internal(v15, a4, a5))
  {
    cccmac_final_generate_internal(v15, a6, a7);
  }

  v18 = OUTLINED_FUNCTION_1_20();
  cc_clear(v18, v15);
  return v7;
}

uint64_t cccmac_one_shot_generate(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char *a5, size_t a6, void *a7)
{
  v16 = timingsafe_enable_if_supported();
  internal = cccmac_one_shot_generate_internal(a1, a2, a3, a4, a5, a6, a7);
  cc_disable_dit_with_sb(&v16);
  return internal;
}

uint64_t cccmac_one_shot_verify(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v20 = *MEMORY[0x29EDCA608];
  HIDWORD(v19) = timingsafe_enable_if_supported();
  OUTLINED_FUNCTION_0_38();
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v19 - 2 * v15;
  if (!cccmac_init_internal(a1, v16, a2, a3) && !cccmac_update_internal(v16, a4, a5))
  {
    cccmac_final_verify_internal(v16, a6, a7);
  }

  v17 = OUTLINED_FUNCTION_1_20();
  cc_clear(v17, v16);
  cc_disable_dit_with_sb(&v19 + 1);
  return a3;
}

uint64_t ccrsa_generate_probable_prime_ws(uint64_t a1, unint64_t a2, char *a3, int8x16_t *a4, unint64_t a5, unint64_t a6, uint64_t a7, void *a8, uint64_t (**a9)(void, unint64_t, void *), unsigned int (**a10)(void, unint64_t, uint64_t), void *a11)
{
  v17 = a11;
  v18 = a9;
  v19 = (a2 + 63) >> 6;
  v75 = *(a1 + 16);
  v101 = (*(a1 + 24))(a1, v19);
  v20 = OUTLINED_FUNCTION_0_8();
  v104 = v21(v20);
  v22 = 0;
  v107 = (a5 + 63) >> 6;
  if (a5 + 1 > a6)
  {
    v23 = a5 + 1;
  }

  else
  {
    v23 = a6;
  }

  v24 = (v23 + 63) >> 6;
  v86 = a5 + 63;
  v85 = v24 - ((a5 + 63) >> 6);
  v88 = a6 - 1;
  v89 = a5 - 1;
  v91 = (a6 + 63) >> 6;
  v84 = a6 + 63;
  v83 = v24 - v91;
  v81 = 2 * v24;
  v102 = v24;
  v77 = v19 - 2 * v24;
  v79 = a2 - 5;
  v25 = a2 - 1;
  v110 = a2 - 256;
  __n = 8 * v19;
  v82 = a2;
  v26 = 5 * a2;
  if (5 * a2 <= 1)
  {
    v26 = 1;
  }

  v76 = v26;
  v100 = a6;
  v27 = a5;
  v87 = a5;
  v80 = a3;
  do
  {
    v99 = v22;
    ccn_zero(v107, v101);
    ccn_zero(v107, v104);
    if (ccn_random_bits_fips(v27, v101, v18) || ccn_random_bits_fips(v100, v104, v18))
    {
      result = 4294967260;
      goto LABEL_61;
    }

    v108 = *(a1 + 16);
    ccn_set_bit(v101, v89, 1);
    ccn_set_bit(v104, v88, 1);
    if (v17)
    {
      v17 += 387 * v17[2];
      *v17 = ccn_bitlen_internal(v107, v101);
      v17[1] = ccn_bitlen_internal(v107, v104);
      __memcpy_chk();
      __memcpy_chk();
      v17[3] |= 1uLL;
      v17[67] |= 1uLL;
    }

    v28 = v102;
    result = ccrsa_find_next_prime_ws(a1, v27, v101, a10);
    if (result)
    {
      goto LABEL_61;
    }

    result = ccrsa_find_next_prime_ws(a1, v100, v104, a10);
    if (result || !v17)
    {
      *(a1 + 16) = v108;
      v30 = v82;
      if (result)
      {
        goto LABEL_61;
      }
    }

    else
    {
      __memcpy_chk();
      v28 = v102;
      __memcpy_chk();
      *(a1 + 16) = v108;
      v30 = v82;
    }

    v103 = ccrsa_num_mr_iterations(v30);
    v96 = *(a1 + 16);
    v31 = OUTLINED_FUNCTION_0_8();
    v33 = v32(v31);
    v34 = OUTLINED_FUNCTION_0_8();
    v90 = v35(v34);
    v36 = OUTLINED_FUNCTION_0_8();
    v109 = v37(v36);
    *v33 = v30;
    v93 = ccn_bitlen_internal(1, v33);
    v105 = *(a1 + 16);
    v38 = OUTLINED_FUNCTION_0_8();
    v40 = v39(v38);
    v41 = &v40[v28];
    if (v86 >= 0x40)
    {
      ccn_set(v107, v41, v101);
    }

    ccn_zero(v85, &v41[v107]);
    if (v84 >= 0x40)
    {
      ccn_set(v91, v33, v104);
    }

    ccn_zero(v83, &v33[v91]);
    if (ccn_invmod_ws(a1, v102, v40, v102, v41, v33))
    {
      v54 = a11;
LABEL_46:
      *(a1 + 16) = v105;
LABEL_47:
      v53 = -32;
    }

    else
    {
      v42 = OUTLINED_FUNCTION_0_5();
      ccn_sub_ws(v42, v43, v40, v33, v40);
      v44 = OUTLINED_FUNCTION_0_5();
      ccn_add_ws(v44, v45, v41, v41, v41);
      v46 = OUTLINED_FUNCTION_0_5();
      v47 = v109;
      ccn_mul_ws(v46, v48, v109, v41, v33);
      if (v19 <= v81)
      {
        v51 = OUTLINED_FUNCTION_0_5();
        ccn_mul_ws(v51, v52, v33, v41, v40);
        OUTLINED_FUNCTION_2_12();
      }

      else
      {
        ccn_zero(v77, &v109[v81]);
        v49 = OUTLINED_FUNCTION_0_5();
        ccn_mul_ws(v49, v50, v33, v41, v40);
        OUTLINED_FUNCTION_2_12();
        v47 = v109;
        ccn_zero(v77, &v33[v81]);
      }

      *(a1 + 16) = v105;
      a3 = v80;
      if (ccn_bitlen_internal(v19, v47) <= v79 - v93)
      {
        v55 = 0;
        v54 = a11;
        v18 = a9;
        while (2)
        {
          v78 = v55;
          v94 = v54;
          ccn_zero(v19, a4);
          v105 = *(a1 + 16);
          v56 = OUTLINED_FUNCTION_0_8();
          v58 = v57(v56);
          v59 = 100;
          while (1)
          {
            if (ccn_random_bits_fips(v30, a4, a9))
            {
LABEL_45:
              v54 = v94;
              goto LABEL_46;
            }

            ccn_set_bit(a4, v25, 1);
            ccn_shift_right_multi(v19, v58, a4, v110);
            if ((ccn_cmp_public_value(4, v58, &SQRT2) & 0x80000000) == 0)
            {
              break;
            }

            if (!--v59)
            {
              goto LABEL_45;
            }
          }

          *(a1 + 16) = v105;
          if (v94)
          {
            v95 = &v94[387 * v94[2]];
            __memcpy_chk();
          }

          else
          {
            v95 = 0;
          }

          v60 = OUTLINED_FUNCTION_0_8();
          ccn_divmod_ws(v60, v61, a4, 0, 0, v19, v80, v109);
          v62 = OUTLINED_FUNCTION_0_8();
          v106 = ccn_sub_ws(v62, v63, v80, v33, v80);
          v64 = OUTLINED_FUNCTION_0_8();
          ccn_add_ws(v64, v65, v90, v109, v80);
          ccn_mux(v19, v106, v80, v90, v80);
          v66 = OUTLINED_FUNCTION_0_8();
          v68 = ccn_add_ws(v66, v67, v80, a4->i64, v80);
          if (v30)
          {
            v69 = v76;
            v54 = v95;
            while (!v68 && ccn_bitlen_internal(v19, v80) <= v30)
            {
              v70 = OUTLINED_FUNCTION_0_8();
              ccrsa_is_valid_prime_ws(v70, v71, v80, a7, a8, v103, a10);
              if (v72 < 0)
              {
                goto LABEL_47;
              }

              if (v72 == 1)
              {
                v53 = 0;
                goto LABEL_49;
              }

              v73 = OUTLINED_FUNCTION_0_8();
              v68 = ccn_add_ws(v73, v74, v80, v80, v109);
              if (!--v69)
              {
                v53 = -31;
                goto LABEL_48;
              }
            }

            v55 = v78 + 1;
            v53 = -30;
            if (v78 != 99)
            {
              continue;
            }
          }

          else
          {
            v53 = -31;
            v54 = v95;
          }

          break;
        }
      }

      else
      {
        v53 = -38;
        v54 = a11;
        v18 = a9;
      }
    }

LABEL_48:
    cc_clear(__n, a3);
    cc_clear(__n, a4);
LABEL_49:
    v27 = v87;
    v17 = a11;
    if (v54)
    {
      memcpy(v54 + 323, a3, __n);
    }

    *(a1 + 16) = v96;
    if (!v53)
    {
      break;
    }

    v22 = v99 + 1;
  }

  while (v99 < 0x63);
  if (v99 == 99)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = v53;
  }

LABEL_61:
  *(a1 + 16) = v75;
  return result;
}

uint64_t cczp_generate_random_element_ws(uint64_t a1, void *a2, unsigned int (**a3)(void, unint64_t, uint64_t), uint64_t *a4)
{
  v8 = *(a1 + 16);
  v9 = cczp_n(a2);
  v10 = cczp_bitlen(a2);
  v11 = (*(a1 + 24))(a1, v9 + 1);
  ccn_random_bits(v10 + 64, v11, a3);
  v13 = v12;
  if (!v12)
  {
    cczp_modn_ws(a1, a2, a4, (v10 + 127) >> 6, v11);
  }

  *(a1 + 16) = v8;
  return v13;
}

uint64_t cche_decrypt_ctx_init_ws(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2;
  v35[2] = *MEMORY[0x29EDCA608];
  *a2 = a3;
  v6 = (a2 + 1);
  v33 = cche_param_ctx_polynomial_degree(a3);
  v34 = 2;
  v35[0] = cche_param_ctx_plaintext_modulus(a3);
  v35[1] = 0x1FFFFFFFFFFFFFFFLL;
  v31 = v6;
  v32 = a1;
  result = ccpolyzp_po2cyc_ctx_chain_init_ws(a1, v6, &v33, v35);
  if (!result)
  {
    v8 = v34;
    v9 = *(v4 + 2);
    v10 = (sizeof_struct_ccpolyzp_po2cyc_ctx() + 7) >> 3;
    if (v9 >= 0x80)
    {
      v11 = 128;
    }

    else
    {
      v11 = v9;
    }

    v30 = &v4[(v10 + 2 * (v9 + ((sizeof_struct_ccrns_mul_modulus() + 7) >> 3) * v11) + 6) * (*(v4 + 3) - v8)];
    v12 = cche_param_ctx_chain_const(*v4) + 8;
    v29 = v4;
    while (1)
    {
      v13 = *(v12 + 4);
      v14 = sizeof_struct_ccpolyzp_po2cyc();
      v15 = sizeof_struct_ccpolyzp_po2cyc();
      v16 = v15 - 1 + v14;
      v17 = *(v4 + 2);
      v18 = *(v4 + 3);
      v19 = v16 / v15;
      v20 = (sizeof_struct_ccpolyzp_po2cyc_ctx() + 7) >> 3;
      v21 = v17 >= 0x80 ? 128 : v17;
      v22 = (sizeof_struct_ccrns_mul_modulus() + 7) >> 3;
      v23 = &v31[2 * (v20 + 2 * (v17 + v22 * v21) + 6) * v18 + 2 * v19];
      if (v13 >= 2)
      {
        v24 = sizeof_struct_ccpolyzp_po2cyc_base_convert();
        v25 = -1;
        v26 = v18;
        v27 = 1;
        v28 = 1;
        do
        {
          v23 += v28 + (v24 + v15 - 1) / v15 + (v27 + v26) * v22;
          ++v28;
          v27 += 3;
          v26 += v18;
          ++v25;
        }

        while (1 - v13 + v25 != -1);
      }

      result = ccpolyzp_po2cyc_base_convert_init_ws(v32, v23, v12, v30 + 4);
      if (result)
      {
        break;
      }

      v12 = *(v12 + 112);
      v4 = v29;
      if (!v12)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t cche_decrypt_ws(uint64_t a1, unint64_t *a2, unsigned int *a3, uint64_t a4, _DWORD **a5)
{
  v10 = *(a4 + 8);
  if (v10 != cche_ciphertext_fresh_npolys())
  {
    return 4294967289;
  }

  if (!cche_param_ctx_eq(*a4, a3))
  {
    return 4294967289;
  }

  v11 = *a5;
  v12 = cche_param_ctx_chain_const(a3);
  if (!ccpolyzp_po2cyc_ctx_eq(v11, (v12 + 8)))
  {
    return 4294967289;
  }

  v13 = *(a1 + 16);
  *a2 = cche_param_ctx_plaintext_ctx(a3);
  v14 = *(a1 + 24);
  v15 = *(a4 + 24);
  v16 = *(a4 + 8);
  v17 = sizeof_struct_ccrns_mul_modulus();
  v18 = sizeof_struct_ccpolyzp_po2cyc();
  v19 = (v17 + v18 - 1) / v18;
  v20 = sizeof_struct_ccpolyzp_po2cyc();
  v21 = v14(a1, v19 + ((v15[1] * *v15) + ((v20 + 7) >> 3)) * v16);
  v22 = *(a4 + 24);
  v23 = *(a4 + 8);
  v24 = sizeof_struct_ccrns_mul_modulus();
  v25 = sizeof_struct_ccpolyzp_po2cyc();
  v26 = (v24 + v25 - 1) / v25;
  v27 = sizeof_struct_ccpolyzp_po2cyc();
  memmove(v21, a4, 8 * (v26 + ((v22[1] * *v22) + ((v27 + 7) >> 3)) * v23));
  v29 = v21[3];
  v28 = v21 + 3;
  v30 = (&v28[v29[1] * *v29] + ((sizeof_struct_ccpolyzp_po2cyc() + 7) & 0xFFFFFFFFFFFFFFF8));
  v31 = ccpolyzp_po2cyc_fwd_ntt(v30);
  if (!v31)
  {
    cche_mul_poly_sk(v30, v30, a5);
    v31 = ccpolyzp_po2cyc_inv_ntt(v30);
    if (!v31)
    {
      v69 = a2;
      v70 = v13;
      v71 = a1;
      ccpolyzp_po2cyc_coeff_add(v30, v28, v30);
      v32 = *cche_param_ctx_plaintext_ctx(a3);
      v33 = cche_param_ctx_plaintext_ctx(a3);
      v68 = a3;
      v34 = cche_param_ctx_polynomial_degree(a3);
      v35 = (sizeof_struct_ccpolyzp_po2cyc_ctx() + 7) >> 3;
      if (v34 >= 0x80)
      {
        v36 = 128;
      }

      else
      {
        v36 = v34;
      }

      v37 = (sizeof_struct_ccrns_mul_modulus() + 7) >> 3;
      v38 = v33 + 8 * v35 + 16 * (v37 * v36 + v34) + ((4 * v32 + 7) & 0x7FFFFFFF8);
      v39 = (*v30)[1];
      v40 = sizeof_struct_ccpolyzp_po2cyc();
      v41 = sizeof_struct_ccpolyzp_po2cyc();
      v42 = v41 - 1;
      v43 = *(v38 + 56);
      v45 = *(v38 + 60);
      v44 = v38 + 56;
      if (v43 >= 0x80)
      {
        v46 = 128;
      }

      else
      {
        v46 = v43;
      }

      v47 = v44 + 8 * (v35 + 2 * (v43 + v37 * v46) + 6) * v45 + 8 * ((v41 - 1 + v40) / v41);
      if (v39 < 2)
      {
        a1 = v71;
        v54 = v69;
      }

      else
      {
        v48 = v41;
        v49 = sizeof_struct_ccpolyzp_po2cyc_base_convert();
        v50 = 1;
        v51 = -1;
        v52 = v45;
        v53 = 1;
        a1 = v71;
        v54 = v69;
        do
        {
          v47 += 8 * (v53 + (v49 + v42) / v48 + (v50 + v52) * v37);
          ++v53;
          v50 += 3;
          v52 += v45;
          ++v51;
        }

        while (1 - v39 + v51 != -1);
      }

      v55 = cche_param_ctx_he_scheme(v68);
      v13 = v70;
      if (v55 == 2)
      {
        v61 = OUTLINED_FUNCTION_0_39();
        v31 = ccpolyzp_po2cyc_base_convert_exact_poly_ws(v61, v62, v63, v64);
        if (!v31)
        {
LABEL_20:
          v72 = *(a4 + 16);
          v60 = cche_param_ctx_plaintext_modulus_inverse_ws(a1, &v72, v68, v72);
          if (!v60)
          {
            ccpolyzp_po2cyc_coeff_scalar_mul_ws(a1, v54, v54, &v72);
          }

          goto LABEL_25;
        }
      }

      else
      {
        if (v55 != 1)
        {
          v60 = 4294967289;
          goto LABEL_25;
        }

        v56 = OUTLINED_FUNCTION_0_39();
        v31 = ccpolyzp_po2cyc_base_convert_divide_and_round_ws(v56, v57, v58, v59);
        if (!v31)
        {
          goto LABEL_20;
        }
      }
    }
  }

  v60 = v31;
LABEL_25:
  v65 = *v30;
  v66 = sizeof_struct_ccpolyzp_po2cyc();
  cc_clear((v66 + 8 * v65[1] * *v65 + 7) & 0xFFFFFFFFFFFFFFF8, v30);
  *(a1 + 16) = v13;
  return v60;
}

uint64_t ccpolyzp_po2cyc_modulus_to_cczp_ws(uint64_t a1, void *a2, unint64_t a3)
{
  *a2 = 1;
  v6 = bswap64(a3);
  result = ccn_read_uint_public_value(1uLL, a2 + 3, 8uLL, &v6);
  if (!result)
  {
    return cczp_init_ws(a1, a2);
  }

  return result;
}

uint64_t ccpolyzp_po2cyc_divide_and_round_q_last_ws(uint64_t a1, int8x16_t **a2)
{
  v18.i64[1] = *MEMORY[0x29EDCA608];
  v2 = *a2;
  if (!(*a2)[7].i64[0])
  {
    return 4294967289;
  }

  v3 = v2->u32[1];
  if (v3 < 2)
  {
    return 4294967289;
  }

  v6 = v2->u32[0];
  v7 = v3 - 1;
  ccn_shift_right(1, &v18, v2 + 9, 1);
  if (v6)
  {
    v8 = 0;
    do
    {
      cczp_add_ws(a1, &v2[7].i64[1]);
      ++v8;
    }

    while (v6 != v8);
  }

  v9 = 0;
  v10 = a2 + 1;
  while (1)
  {
    v11 = *a2;
    v12 = (*a2)->i32[1];
    while (--v12 > v9)
    {
      v11 = v11[7].i64[0];
    }

    cczp_modn_ws(a1, &v11[7].i64[1], &v17, 1, v18.i8);
    cczp_modn_ws(a1, &v11[7].i64[1], &v16, 1, v2[9].i8);
    result = cczp_inv_field_ws(a1, &v11[7].i64[1], &v16, &v16);
    if (result)
    {
      break;
    }

    if (v6)
    {
      v14 = 0;
      do
      {
        cczp_modn_ws(a1, &v11[7].i64[1], &v15, 1, &v10[v14] + 8 * (*a2)->i32[0] * v7);
        cczp_sub_ws(a1, &v11[7].i64[1]);
        cczp_sub_ws(a1, &v11[7].i64[1]);
        cczp_mul_ws(a1, &v11[7].i64[1]);
        ++v14;
      }

      while (v6 != v14);
    }

    if (++v9 == v7)
    {
      cc_clear(8 * v6, &v10[(*a2)->i32[0] * v7]);
      result = 0;
      *a2 = (*a2)[7].i64[0];
      return result;
    }
  }

  return result;
}

uint64_t ccapsic_server_init(uint64_t **a1, uint64_t **a2, uint64_t *a3, size_t a4, const void *a5)
{
  v12 = timingsafe_enable_if_supported();
  inited = ccapsic_client_init_internal(a1, a2, a3, a4, a5);
  if (!inited)
  {
    ccn_set(**a2, &(&a1[12 * **a1])[2 * **a1 + 24], &a2[3 * **a2 + 2]);
  }

  cc_disable_dit_with_sb(&v12);
  return inited;
}

uint64_t cckem_kyber1024_generate_key_with_seed(uint64_t a1, _OWORD *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  cckem_public_ctx(a1);
  v3 = ccmlkem_kem_keypair_with_seed();
  if (!v3)
  {
    v4 = v6[1];
    *a2 = v6[0];
    a2[1] = v4;
    cc_clear(0x40uLL, v6);
  }

  return v3;
}

uint64_t cckem_kyber1024_derive_key_from_seed(uint64_t a1, _OWORD *a2, uint64_t (**a3)(void, uint64_t, _OWORD *))
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = cckem_public_ctx(a1);
  v7 = *(*a1 + 16);
  v8 = (*a3)(a3, 32, v11);
  if (!v8)
  {
    v8 = ccmlkem_kem_keypair_from_seed(cckyber1024_params, (v6 + 8), a1 + v7 + 8, a2, v11);
  }

  v9 = v8;
  cc_clear(0x20uLL, v11);
  return v9;
}

uint64_t cckem_kyber1024_export_pubkey()
{
  OUTLINED_FUNCTION_0_2();
  if (v3 < cckem_pubkey_nbytes_ctx(v4))
  {
    return 4294967289;
  }

  v5 = cckem_pubkey_nbytes_ctx(v1);
  *v2 = v5;
  memcpy(v0, (v1 + 8), v5);
  return 0;
}

uint64_t cckem_kyber1024_import_pubkey()
{
  OUTLINED_FUNCTION_1_1();
  if (cckem_pubkey_nbytes_info(v4) != v0)
  {
    return 4294967289;
  }

  cckem_pub_ctx_init(v2, v3);
  memcpy(v2 + 1, v1, v0);
  return 0;
}

uint64_t cckem_kyber1024_export_privkey()
{
  OUTLINED_FUNCTION_0_2();
  v5 = cckem_public_ctx(v4);
  if (v3 < cckem_privkey_nbytes_ctx(v5))
  {
    return 4294967289;
  }

  v6 = cckem_public_ctx(v1);
  v7 = cckem_privkey_nbytes_ctx(v6);
  *v2 = v7;
  memcpy(v0, (v1 + *(*v1 + 16) + 8), v7);
  return 0;
}

uint64_t cckem_kyber1024_import_privkey()
{
  OUTLINED_FUNCTION_1_1();
  if (cckem_privkey_nbytes_info(v4) != v0)
  {
    return 4294967289;
  }

  cckem_full_ctx_init(v2, v3);
  memcpy(v2 + *(*v2 + 16) + 8, v1, v0);
  return 0;
}

uint64_t ccmode_gcm_set_iv(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v18 = *MEMORY[0x29EDCA608];
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

unint64_t ccecies_decrypt_gcm_plaintext_size(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v5 = ccecies_pub_key_size_cp(*a1, a2);
  if (v5 - 1 >= a3)
  {
    return 0;
  }

  v6 = v5 + *(a2 + 28);
  v7 = a3 >= v6;
  v8 = a3 - v6;
  if (v7)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

unint64_t ccecies_decrypt_gcm_plaintext_size_cp(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = ccecies_pub_key_size_cp(a1, a2);
  if (v5 - 1 >= a3)
  {
    return 0;
  }

  v6 = v5 + *(a2 + 28);
  v7 = a3 >= v6;
  v8 = a3 - v6;
  if (v7)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t cche_ciphertext_coeff_compose(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, unint64_t a6, uint64_t a7)
{
  v53 = timingsafe_enable_if_supported();
  if (!a2 || cche_param_ctx_key_ctx_nmoduli(a4) < a5 || cche_param_ctx_plaintext_modulus(a4) <= a6)
  {
    goto LABEL_28;
  }

  v49 = a2;
  v13 = cche_param_ctx_chain_const(a4);
  v14 = *v13;
  v15 = (sizeof_struct_ccpolyzp_po2cyc_ctx() + 7) >> 3;
  if (v14 >= 0x80)
  {
    v16 = 128;
  }

  else
  {
    v16 = v14;
  }

  v17 = &v13[2 * (v15 + 2 * (v14 + ((sizeof_struct_ccrns_mul_modulus() + 7) >> 3) * v16) + 6) * (v13[1] - a5) + 2];
  v18 = cche_ciphertext_fresh_npolys();
  v19 = cche_ciphertext_sizeof(a4, a5, v18);
  bzero(a1, v19);
  v20 = cche_ciphertext_fresh_npolys();
  *a1 = a4;
  *(a1 + 2) = v20;
  a1[2] = 1;
  a1[3] = v17;
  v21 = a1 + 3;
  v51 = (a1 + 3);
  if (v20 >= 2)
  {
    for (i = 1; i != v20; v51[((v26 * v25) + ((v24 + 7) >> 3)) * i++] = v17)
    {
      v23 = *v51;
      v24 = sizeof_struct_ccpolyzp_po2cyc();
      v25 = *v23;
      v26 = v23[1];
      v21 = a1 + 3;
    }
  }

  v47 = v20;
  a1[2] = a6;
  if (cche_ciphertext_coeff_decompose_nptexts_internal(a1, a7) != v49)
  {
LABEL_28:
    v44 = 4294967289;
    goto LABEL_29;
  }

  if (v20)
  {
    v46 = a5;
    v27 = 0;
    v28 = 0;
    v29 = 63 - __clz(cche_param_ctx_plaintext_modulus(a4));
    v48 = (*(*v21 + 4) * **v21);
    while (1)
    {
      v30 = &v21[(v48 + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3)) * v27];
      v31 = *v30;
      v32 = (*v30)[1];
      v50 = v27;
      if (v32)
      {
        break;
      }

LABEL_26:
      v21 = a1 + 3;
      v27 = v50 + 1;
      if (v50 + 1 == v47)
      {
        goto LABEL_27;
      }
    }

    v33 = 0;
    v34 = v27 * v46;
    v35 = v30 + 1;
    while (1)
    {
      v36 = a7 ? *(a7 + 4 * (v34 + v33)) : 0;
      v37 = cche_ciphertext_coeff_decompose_nptexts_rns(a1, v33, v36);
      if (v37)
      {
        break;
      }

LABEL_25:
      if (++v33 == v32)
      {
        goto LABEL_26;
      }
    }

    v38 = 0;
    v39 = v36;
    while (v39 <= 0x3F)
    {
      v40 = *v31;
      if (v40)
      {
        v41 = (*(a3 + 8 * v28) + 8);
        v42 = v33 * v40;
        do
        {
          v43 = *v41++;
          v35[v42] = (v35[v42] | (v43 << v39));
          ++v42;
          --v40;
        }

        while (v40);
      }

      v39 += v29;
      ++v38;
      ++v28;
      if (v38 == v37)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_28;
  }

LABEL_27:
  v44 = 0;
LABEL_29:
  cc_disable_dit_with_sb(&v53);
  return v44;
}

unint64_t cche_ciphertext_coeff_decompose(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = timingsafe_enable_if_supported();
  if (cche_ciphertext_coeff_decompose_nptexts_internal(a3, a4) == a1)
  {
    v37 = *a3;
    v7 = cche_param_ctx_plaintext_modulus(*a3);
    v8 = (a3 + 24);
    v9 = *(a3 + 8);
    if (v9)
    {
      v10 = 0;
      v11 = 0;
      v12 = __clz(v7);
      v13 = 63 - v12;
      v14 = ~(-1 << ~v12);
      v15 = *(*(a3 + 24) + 4);
      v35 = a3;
      v36 = a4;
      v31 = (a3 + 24);
      v34 = v15;
      do
      {
        v16 = *v8;
        v17 = sizeof_struct_ccpolyzp_po2cyc();
        if (v15)
        {
          v18 = v10;
          v19 = 0;
          v20 = &v8[((v16[1] * *v16) + ((v17 + 7) >> 3)) * v18];
          v32 = v18;
          v33 = v15 * v18;
          do
          {
            if (a4)
            {
              v21 = *(a4 + 4 * (v33 + v19));
            }

            else
            {
              v21 = 0;
            }

            v22 = cche_ciphertext_coeff_decompose_nptexts_rns(a3, v19, v21);
            if (v22)
            {
              v23 = v22;
              v24 = 0;
              v25 = v21;
              do
              {
                v26 = *(a2 + 8 * v11);
                *v26 = cche_param_ctx_plaintext_ctx(v37);
                v27 = **v20;
                if (v27)
                {
                  v28 = v26 + 1;
                  v29 = v19 * v27;
                  do
                  {
                    *v28++ = (v20[++v29] >> v25) & v14;
                    --v27;
                  }

                  while (v27);
                }

                v25 += v13;
                ++v24;
                ++v11;
              }

              while (v24 != v23);
            }

            ++v19;
            v15 = v34;
            a3 = v35;
            a4 = v36;
          }

          while (v19 != v34);
          v9 = *(v35 + 8);
          v8 = v31;
          v10 = v32;
        }

        ++v10;
      }

      while (v10 < v9);
      v9 = 0;
    }
  }

  else
  {
    v9 = 4294967289;
  }

  cc_disable_dit_with_sb(&v39);
  return v9;
}

void ccdh_generate_private_key_ws(uint64_t a1, void *a2, void *a3, unsigned int (**a4)(void, unint64_t, uint64_t))
{
  v8 = ccdh_gp_n(a2);
  v9 = ccdh_gp_l(a2);
  v10 = *(a1 + 16);
  v11 = (*(a1 + 24))(a1, v8);
  ccn_zero(v8, a3);
  ccn_zero(v8, v11);
  if (v9 <= cczp_bitlen(a2))
  {
    private_key_bitlen = ccdh_generate_private_key_bitlen(a2);
    ccn_random_bits(private_key_bitlen, a3, a4);
    if (!v13)
    {
      if (ccdh_gp_order_bitlen(a2) || !v9)
      {
        if (ccdh_gp_order_bitlen(a2))
        {
          v14 = ccdh_gp_order(a2);
        }

        else
        {
          v14 = ccdh_gp_prime(a2);
        }

        ccn_sub1(v8, v11, v14, 2uLL);
        for (i = 0; i != 100; ++i)
        {
          if (ccn_cmp_public_value(v8, a3, v11) <= 0 && ccn_n(v8, a3))
          {
            break;
          }

          ccn_random_bits(private_key_bitlen, a3, a4);
          if (v16)
          {
            break;
          }
        }
      }

      else
      {
        ccn_set_bit(a3, v9 - 1, 1);
      }
    }
  }

  *(a1 + 16) = v10;
}

uint64_t ccmode_gcm_decrypt(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (fipspost_trace_is_active())
  {
    fipspost_trace_call("ccmode_gcm_decrypt");
  }

  v14 = *(a1 + 96);
  ccmode_gcm_aad_finalize(a1, v8, v9, v10, v11, v12, v13);
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
LABEL_20:
        if (!a2)
        {
          return 0;
        }

        v31 = v23;
        v32 = a3 - 1;
        v33 = a1 + v23 + 15;
        v34 = a2;
        do
        {
          *(v33 + v34) ^= *(v32 + v34);
          --v34;
        }

        while (v34);
        v35 = v31 + a1 + 63;
        v36 = a2;
        do
        {
          *(a4 - 1 + v36) = *(v35 + v36) ^ *(v32 + v36);
          --v36;
        }

        while (v36);
        result = 0;
        *(a1 + 96) += a2;
        return result;
      }

      v25 = v14 & 0xF;
      v26 = a3 - 1;
      v27 = 16 - v23;
      do
      {
        *(v25 + a1 + 15 + v27) ^= *(v26 + v27);
        --v27;
      }

      while (v27);
      ccmode_gcm_mult_h(a1, (a1 + 16), v15, v16, v17, v18, v19, v20);
      v28 = v24;
      do
      {
        *(a4 - 1 + v28) = *(v25 + a1 + 63 + v28) ^ *(v26 + v28);
        --v28;
      }

      while (v28);
      a2 -= v24;
      a3 += v24;
      a4 += v24;
      *(a1 + 96) += v24;
      ccmode_gcm_update_pad(a1);
    }

    if (a2 >= 0x10)
    {
      do
      {
        for (i = 0; i != -16; --i)
        {
          *(a1 + i + 31) ^= *(a3 + i + 15);
        }

        ccmode_gcm_mult_h(a1, (a1 + 16), v15, v16, v17, v18, v19, v20);
        for (j = 0; j != -16; --j)
        {
          *(a4 + j + 15) = *(a1 + j + 79) ^ *(a3 + j + 15);
        }

        a2 -= 16;
        a3 += 16;
        a4 += 16;
        *(a1 + 96) += 16;
        ccmode_gcm_update_pad(a1);
      }

      while (a2 > 0xF);
    }

    v23 = 0;
    goto LABEL_20;
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

uint64_t ccss_shamir_share_import(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
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

  v14 = v11;
  v12 = ccss_encode_string_into_value_smaller_than_prime(*a1, (a1 + 16), a4, a3);
  if (!v12)
  {
    *(a1 + 8) = a2;
  }

  cc_disable_dit(&v14);
  return v12;
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

uint64_t cckem_generate_key_with_seed()
{
  OUTLINED_FUNCTION_0_41();
  v6 = timingsafe_enable_if_supported();
  cckem_public_ctx(v0);
  OUTLINED_FUNCTION_2_13();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_1_21();
    v5 = v3(v2);
  }

  else
  {
    v5 = 4294967289;
  }

  cc_disable_dit_with_sb(&v6);
  return v5;
}

uint64_t cckem_derive_key_from_seed_internal()
{
  OUTLINED_FUNCTION_0_41();
  cckem_public_ctx(v0);
  OUTLINED_FUNCTION_2_13();
  if (!v1)
  {
    return 4294967289;
  }

  v2 = OUTLINED_FUNCTION_1_21();

  return v3(v2);
}

uint64_t cckem_derive_key_from_seed()
{
  OUTLINED_FUNCTION_0_41();
  v6 = timingsafe_enable_if_supported();
  cckem_public_ctx(v0);
  OUTLINED_FUNCTION_2_13();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_1_21();
    v5 = v3(v2);
  }

  else
  {
    v5 = 4294967289;
  }

  cc_disable_dit_with_sb(&v6);
  return v5;
}

uint64_t cckem_encapsulate_internal(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (*(*a1 + 24) == a2 && *(v4 + 32) == a4)
  {
    return (*(v4 + 72))();
  }

  else
  {
    return 4294967289;
  }
}

uint64_t cckem_encapsulate(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = timingsafe_enable_if_supported();
  v12 = *a1;
  if (*(*a1 + 24) == a2 && *(v12 + 32) == a4)
  {
    v13 = (*(v12 + 72))(a1, a3, a5, a6);
  }

  else
  {
    v13 = 4294967289;
  }

  cc_disable_dit_with_sb(&v15);
  return v13;
}

uint64_t cckem_decapsulate_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*cckem_public_ctx(a1) + 24) != a2 || *(*cckem_public_ctx(a1) + 32) != a4)
  {
    return 4294967289;
  }

  v6 = OUTLINED_FUNCTION_1_21();

  return v7(v6);
}

uint64_t cckem_decapsulate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = cckem_decapsulate_internal(a1, a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t cche_ciphertext_mod_switch_down_ws(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v5 = (a2 + 24);
  v4 = *(a2 + 24);
  v6 = sizeof_struct_ccpolyzp_po2cyc();
  if (!*(v2 + 2))
  {
    return 0;
  }

  v7 = **v2;
  if (v7)
  {
    v8 = 0;
    v9 = (v4[1] * *v4) + ((v6 + 7) >> 3);
    v10 = v5;
    v42 = v2;
    v43 = a1;
    v41 = v5;
    v40 = **v2;
    v39 = v9;
    while (v7 != 2)
    {
      if (v7 == 1)
      {
        result = ccpolyzp_po2cyc_divide_and_round_q_last_ws(a1, v10);
        if (result)
        {
          return result;
        }
      }

      if (v8)
      {
        goto LABEL_22;
      }

LABEL_23:
      v10 += v9;
      if (++v8 >= *(v2 + 2))
      {
        return 0;
      }
    }

    v12 = *v2;
    v13 = *cche_param_ctx_plaintext_ctx(*v2);
    v14 = cche_param_ctx_plaintext_ctx(v12);
    v15 = cche_param_ctx_polynomial_degree(v12);
    v16 = (sizeof_struct_ccpolyzp_po2cyc_ctx() + 7) >> 3;
    if (v15 >= 0x80)
    {
      v17 = 128;
    }

    else
    {
      v17 = v15;
    }

    v18 = (sizeof_struct_ccrns_mul_modulus() + 7) >> 3;
    v19 = v14 + 8 * v16 + 16 * (v18 * v17 + v15) + ((4 * v13 + 7) & 0x7FFFFFFF8);
    v20 = (*v10)->u32[1];
    v21 = sizeof_struct_ccpolyzp_po2cyc();
    v22 = sizeof_struct_ccpolyzp_po2cyc();
    v23 = v22 - 1;
    v24 = *(v19 + 56);
    v26 = *(v19 + 60);
    v25 = v19 + 56;
    if (v24 >= 0x80)
    {
      v27 = 128;
    }

    else
    {
      v27 = v24;
    }

    v28 = (v25 + 8 * (v16 + 2 * (v24 + v18 * v27) + 6) * v26 + 8 * ((v22 - 1 + v21) / v22));
    if (v20 >= 2)
    {
      v29 = v22;
      v30 = sizeof_struct_ccpolyzp_po2cyc_base_convert();
      v31 = -1;
      v32 = v26;
      v33 = 1;
      v34 = 1;
      do
      {
        v28 += v34 + (v30 + v23) / v29 + (v33 + v32) * v18;
        ++v34;
        v33 += 3;
        v32 += v26;
        ++v31;
      }

      while (1 - v20 + v31 != -1);
    }

    result = ccpolyzp_po2cyc_fwd_ntt(v10);
    if (result)
    {
      return result;
    }

    a1 = v43;
    result = ccpolyzp_po2cyc_base_convert_mod_t_divide_and_round_q_last_ws(v43, v10, v28);
    if (result)
    {
      return result;
    }

    result = ccpolyzp_po2cyc_inv_ntt(v10);
    if (result)
    {
      return result;
    }

    v5 = v41;
    v2 = v42;
    v7 = v40;
    v9 = v39;
    if (!v8)
    {
      v37 = v28[9];
      v38 = v28[10] * v42[2] + v37 * ~((v28[11] * v42[2]) >> 64);
      v42[2] = v38 + ((v38 >> 63) & v37);
      goto LABEL_23;
    }

LABEL_22:
    v35 = *v5;
    v36 = sizeof_struct_ccpolyzp_po2cyc();
    memmove(&v5[((v35->i32[1] * v35->i32[0]) + ((v36 + 7) >> 3)) * v8], v10, (v36 + 7 + 8 * ((*v10)->i32[1] * (*v10)->i32[0])) & 0xFFFFFFFFFFFFFFF8);
    goto LABEL_23;
  }

  return 4294967289;
}

uint64_t ccdrbg_df_bc_derive_keys(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4, void *a5)
{
  v56 = *MEMORY[0x29EDCA608];
  v8 = MEMORY[0x2A1C7C4A8](*(a1 + 8));
  v10 = &v45 - v9;
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v15 = &v45 - v14;
  v16 = 0;
  if (v12)
  {
    v17 = (v13 + 8);
    v18 = v12;
    do
    {
      v19 = *v17;
      v17 += 2;
      v16 += v19;
      --v18;
    }

    while (v18);
  }

  v53[0] = 0;
  v53[1] = 0;
  v54 = bswap32(v16);
  v55 = bswap32(a4);
  v52 = xmmword_299DB2BF0;
  v50 = *(a1 + 16) + 16;
  if (v50)
  {
    v20 = 0;
    v21 = 0;
    v46 = 16 - (v16 & 0xF ^ 8);
    v47 = v13 + 8;
    v48 = v12;
    v49 = v10;
    while (1)
    {
      OUTLINED_FUNCTION_1_22();
      LODWORD(v53[0]) = bswap32(v21);
      __src[0] = 0;
      OUTLINED_FUNCTION_0_42();
      updated = update_1(v22, v23, v15, v24, v25, 0x18uLL, v53);
      if (updated)
      {
        goto LABEL_29;
      }

      v27 = v47;
      v28 = v48;
      if (v48)
      {
        while (1)
        {
          OUTLINED_FUNCTION_0_42();
          v35 = update_1(v29, v30, v15, v31, v32, v33, v34);
          if (v35)
          {
            break;
          }

          v27 += 16;
          if (!--v28)
          {
            goto LABEL_10;
          }
        }

        v43 = v35;
        v10 = v49;
        goto LABEL_27;
      }

LABEL_10:
      OUTLINED_FUNCTION_0_42();
      updated = update_1(v36, v37, v15, v38, v39, v46, &v52);
      v10 = v49;
      if (updated)
      {
        goto LABEL_29;
      }

      ++v21;
      v20 += 16;
      if (v20 >= v50)
      {
        v11 = *(a1 + 8);
        break;
      }
    }
  }

  updated = ccecb_init_internal(v11);
  if (updated)
  {
LABEL_29:
    v43 = updated;
    goto LABEL_27;
  }

  if (a4)
  {
    v40 = &__src[2] + *(a1 + 16);
    do
    {
      OUTLINED_FUNCTION_1_22();
      v41 = (a4 <= 0xF ? __src : a5);
      updated = ccdrbg_generate_internal(*(a1 + 8), v10, v15, 1, v40, v41);
      if (updated)
      {
        goto LABEL_29;
      }

      if (a4 <= 0xF)
      {
        memcpy(a5, __src, a4);
      }

      if (a4 >= 0x10)
      {
        v42 = 16;
      }

      else
      {
        v42 = a4;
      }

      a5 = (a5 + v42);
      v40 = v41;
      a4 -= v42;
    }

    while (a4);
  }

  v43 = 0;
LABEL_27:
  cc_clear(**(a1 + 8), v10);
  OUTLINED_FUNCTION_1_22();
  return v43;
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

uint64_t ccdrbg_df_bc_init(void *a1, void *a2, unint64_t a3)
{
  v8 = timingsafe_enable_if_supported();
  inited = ccdrbg_df_bc_init_internal(a1, a2, a3);
  cc_disable_dit_with_sb(&v8);
  return inited;
}

uint64_t ccmldsa_poly_checknorm(uint64_t a1, int a2)
{
  if (a2 > 1047552)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = 0;
  while (((*(a1 + v2) + (*(a1 + v2) >> 31)) ^ (*(a1 + v2) >> 31)) < a2)
  {
    v2 += 4;
    if (v2 == 1024)
    {
      return 0;
    }
  }

  return 4294967150;
}

uint64_t ccecies_decrypt_gcm_decrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 16);
  MEMORY[0x2A1C7C4A8](a1);
  v13 = v32 - v12;
  if (*(v7 + 8) != 78647)
  {
    return 4294967291;
  }

  v14 = v8;
  v15 = v9;
  v32[1] = v10;
  v33 = v11;
  v16 = OUTLINED_FUNCTION_0_8();
  inited = ccgcm_init_internal(v16);
  v18 = OUTLINED_FUNCTION_0_8();
  v21 = ccgcm_set_iv_internal(v18, v19, 16, v20) | inited;
  if (a3 && a4)
  {
    v22 = OUTLINED_FUNCTION_0_8();
    v21 |= ccgcm_aad_internal(v22, v23, a3, a4);
  }

  v24 = OUTLINED_FUNCTION_0_8();
  v26 = ccgcm_update_internal(v24, v25, v14, v15, v33) | v21;
  if (!v26)
  {
    v27 = *(a1 + 28);
    __memcpy_chk();
    v28 = OUTLINED_FUNCTION_0_8();
    v26 = ccgcm_finalize_internal(v28, v29, v27, v30);
  }

  cc_clear(*v7, v13);
  return v26;
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

uint64_t ccgcm_inc_iv(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = timingsafe_enable_if_supported();
  v8 = v5;
  v6 = ccgcm_inc_iv_internal(v5, a2, a3);
  cc_disable_dit_with_sb(&v8);
  return v6;
}

uint64_t ccgcm_one_shot_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_0_43();
  v15 = v14;
  v26[1] = *MEMORY[0x29EDCA608];
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v18 = v26 - v17;
  v19 = (*(v16 + 24))(v16, v26 - v17);
  if (!v19)
  {
    v19 = (*(v15 + 32))(v18, v13, v12);
    if (!v19)
    {
      v20 = OUTLINED_FUNCTION_1_23();
      v19 = v21(v20);
      if (!v19)
      {
        v22 = OUTLINED_FUNCTION_2_15();
        v19 = v23(v22);
        if (!v19)
        {
          v19 = (*(v15 + 56))(v18, a11, a12);
        }
      }
    }
  }

  v24 = v19;
  cc_clear(*v15, v18);
  return v24;
}

uint64_t ccgcm_one_shot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v22 = timingsafe_enable_if_supported();
  if (fipspost_trace_is_active())
  {
    fipspost_trace_call("ccgcm_one_shot");
  }

  v18 = ccgcm_one_shot_internal(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  cc_disable_dit_with_sb(&v22);
  return v18;
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

uint64_t ccgcm_one_shot_legacy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_0_43();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v32 = *MEMORY[0x29EDCA608];
  v20 = timingsafe_enable_if_supported();
  v31 = v20;
  MEMORY[0x2A1C7C4A8](v20);
  v22 = &v30[-v21];
  v23 = (*(v19 + 24))(v19, &v30[-v21], v17, v15);
  if (!v23)
  {
    v23 = ccgcm_set_iv_legacy_internal(v19, v22, v13, v12);
    if (!v23)
    {
      v24 = OUTLINED_FUNCTION_1_23();
      v23 = v25(v24);
      if (!v23)
      {
        v26 = OUTLINED_FUNCTION_2_15();
        v23 = v27(v26);
        if (!v23)
        {
          v23 = (*(v19 + 56))(v22, a11, a12);
        }
      }
    }
  }

  v28 = v23;
  cc_clear(*v19, v22);
  cc_disable_dit_with_sb(&v31);
  return v28;
}

uint64_t ccec_der_import_priv_keytype(uint64_t a1, unsigned __int8 *a2, void *a3, void *a4)
{
  v16 = timingsafe_enable_if_supported();
  v14 = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  v10 = 0;
  v11 = 0;
  if (ccder_decode_eckey_internal(&v15, &v14, &v12, &v10, &v13, &v11, a2, &a2[a1]))
  {
    v8 = 0;
    *a3 = v10;
    *a4 = v14;
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

  cc_disable_dit_with_sb(&v16);
  return v8;
}

uint64_t ccecdh_pairwise_consistency_check_ws(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t (**a4)(void, uint64_t, uint64_t *))
{
  v6 = *a2;
  v7 = **a2;
  v29 = *(a1 + 16);
  v8 = (*(a1 + 24))(a1, (4 * (v7 & 0x7FFFFFFFFFFFFFFLL)) | 2);
  *v8 = v6;
  v9 = *v6;
  v10 = v8 + 2;
  v11 = &v8[3 * *v6 + 2];
  ccn_set(1, v11, &REF_K);
  ccn_zero(v9 - 1, (v11 + 8));
  v12 = *(a1 + 16);
  v13 = (*(a1 + 24))(a1, 3 * *v6);
  result = ccecdh_fast_scalar_mult_ws(a1, v6, v13, &v8[3 * **v8 + 2]);
  if (!result)
  {
    result = ccec_affinify_ws(a1, v6);
    *(a1 + 16) = v12;
    if (!result)
    {
      v15 = (cczp_bitlen(v6) + 7) >> 3;
      v30 = v15;
      v16 = (*(a1 + 24))(a1, v7);
      v17 = (*(a1 + 24))(a1, v7);
      cc_clear(v15, v16);
      cc_clear(v15, v17);
      result = ccecdh_compute_shared_secret_ws(a1, a2, v8, &v30, v16, a4);
      if (!result)
      {
        if (!v30)
        {
          goto LABEL_13;
        }

        v18 = 0;
        v19 = 0;
        do
        {
          v19 |= v16[v18++];
        }

        while (v30 != v18);
        if (!v19 || (v20 = *v8, v21 = **v8, v22 = &v10[3 * v21], v23 = *(a1 + 16), v24 = (*(a1 + 24))(a1, 3 * v21), result = ccecdh_fast_scalar_mult_ws(a1, v20, v24, v22), !result) && (v25 = v23, v26 = (*(a1 + 24))(a1, v21), result = ccec_affinify_x_only_ws(a1, v20, v26, v24), !result) && ((v27 = cczp_bitlen(v20), ccn_write_uint_padded_internal(v21, v26, (v27 + 7) >> 3, v17), *(a1 + 16) = v25, v30 != v15) || (result = cc_cmp_safe_internal(v15, v16, v17), result)))
        {
LABEL_13:
          result = 4294967278;
        }
      }
    }
  }

  *(a1 + 16) = v29;
  return result;
}

uint64_t ccecdh_fast_scalar_mult_ws(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v8 = *a2;
  v9 = *(a1 + 16);
  v10 = 3 * *a2;
  v11 = (*(a1 + 24))(a1, v10);
  v12 = ccec_projectify_ws(a1, a2);
  if (!v12)
  {
    ccn_set(v10, a3, v11);
    v13 = ccn_bitlen_internal(v8, a4);
    if (v13 != 1)
    {
      v14 = v13 - 2;
      do
      {
        v15 = OUTLINED_FUNCTION_0_44();
        ccec_double_ws(v15, v16);
        if ((*(a4 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v14))
        {
          v17 = OUTLINED_FUNCTION_0_44();
          ccec_full_add_normalized_ws(v17, v18, v19, v20, v11);
        }

        --v14;
      }

      while (v14 != -1);
    }
  }

  *(a1 + 16) = v9;
  return v12;
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

uint64_t ccsae_generate_h2c_commit_finalize_ws(uint64_t a1, uint64_t a2, char *a3)
{
  if (*(a2 + 24) != CCSAE_STATE_COMMIT_UPDATE)
  {
    return 4294967210;
  }

  result = ccsae_generate_commitment_shared_ws(a1, a2, a2 + 144, a3);
  if (!result)
  {
    *(a2 + 28) = 2;
    *(a2 + 24) |= CCSAE_STATE_COMMIT_GENERATED;
  }

  return result;
}

uint64_t ccsae_generate_commitment_shared_ws(uint64_t a1, uint64_t *a2, uint64_t a3, char *a4)
{
  v8 = *a2;
  v9 = **a2;
  v10 = cczp_bitlen(*a2);
  v11 = a2[1];
  v35 = *(a1 + 16);
  v12 = (*(a1 + 24))(a1, v9);
  v13 = a2 + 18;
  OUTLINED_FUNCTION_0_45();
  v14 = OUTLINED_FUNCTION_0_3();
  if (ccec_generate_scalar_fips_retry_ws(v14, v15, v11, v16) || (v17 = OUTLINED_FUNCTION_0_3(), ccec_generate_scalar_fips_retry_ws(v17, v18, v11, v12)) || (OUTLINED_FUNCTION_0_45(), v19 = OUTLINED_FUNCTION_0_3(), ccec_mult_blinded_ws(v19, v20, v21, v12, a3, v11)) || (OUTLINED_FUNCTION_0_45(), v22 = OUTLINED_FUNCTION_0_3(), ccec_affinify_ws(v22, v23)) || (OUTLINED_FUNCTION_0_45(), cczp_negate(v8, &v13[6 * v24], &v13[6 * v24]), cczp_add_ws(a1, &v8[5 * *v8 + 4]), !v9) || (OUTLINED_FUNCTION_0_45(), ccn_n(v9, &v13[3 * v25]), OUTLINED_FUNCTION_0_45(), v27 = 3 * v26, v28 <= 1) && v13[v27] < 2 || (v29 = (v10 + 7) >> 3, (ccn_write_uint_padded_ct_internal(v9, &v13[v27], v29, a4) & 0x80000000) != 0) || (OUTLINED_FUNCTION_0_45(), (ccn_write_uint_padded_ct_internal(v9, &v13[5 * v30], v29, &a4[v29]) & 0x80000000) != 0) || (OUTLINED_FUNCTION_0_45(), (ccn_write_uint_padded_ct_internal(v9, &v13[6 * v31], v29, &a4[2 * v29]) & 0x80000000) != 0))
  {
    result = 4294967289;
  }

  else
  {
    v32 = OUTLINED_FUNCTION_0_3();
    result = ccec_affinify_ws(v32, v33);
  }

  *(a1 + 16) = v35;
  return result;
}

uint64_t cche_serialize_ciphertext_coeff_ws(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, unsigned int *a5)
{
  v23 = *MEMORY[0x29EDCA608];
  if (cche_serialize_ciphertext_coeff_nbytes_internal(a4, a5) != a2)
  {
    return 4294967289;
  }

  v9 = *(a4 + 8);
  if (WORD1(v9))
  {
    return 4294967289;
  }

  if (!a5)
  {
    goto LABEL_9;
  }

  if (v9 != cche_ciphertext_fresh_npolys())
  {
    return 4294967289;
  }

  cche_serialize_ciphertext_coeff_max_nskip_lsbs_internal(v22, a4);
  if (v9)
  {
    v10 = 0;
    while (a5[v10] <= v22[v10])
    {
      if (v9 == ++v10)
      {
        goto LABEL_9;
      }
    }

    return 4294967289;
  }

LABEL_9:
  v13 = *(a4 + 24);
  v11 = (a4 + 24);
  v12 = v13;
  *a3 = v9;
  if (!v9)
  {
    return 0;
  }

  v14 = 0;
  v15 = (a3 + 1);
  while (1)
  {
    v16 = *v11;
    v17 = sizeof_struct_ccpolyzp_po2cyc();
    v18 = a5 ? a5[v14] : 0;
    v19 = &v11[((v16[1] * *v16) + ((v17 + 7) >> 3)) * v14];
    v20 = ccpolyzp_po2cyc_serialize_poly_nbytes(v12, v18);
    result = ccpolyzp_po2cyc_serialize_poly_ws(a1, v20, v15, v18, v19);
    if (result)
    {
      break;
    }

    v15 += v20;
    if (v9 == ++v14)
    {
      return 0;
    }
  }

  return result;
}

uint64_t cche_deserialize_ciphertext_coeff_ws(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, unsigned int *a5)
{
  v10 = (a2 + 24);
  v9 = *(a2 + 24);
  if (cche_serialize_ciphertext_coeff_nbytes_internal(a2, a5) != a3)
  {
    return 4294967289;
  }

  v11 = *a4;
  if (v11 != *(a2 + 8))
  {
    return 4294967289;
  }

  if (!*a4)
  {
    return 0;
  }

  v12 = 0;
  v13 = (a4 + 1);
  while (1)
  {
    v14 = a5 ? a5[v12] : 0;
    v15 = ccpolyzp_po2cyc_serialize_poly_nbytes(v9, v14);
    v16 = *v10;
    v17 = sizeof_struct_ccpolyzp_po2cyc();
    result = ccpolyzp_po2cyc_deserialize_poly_ws(a1, &v10[((v16[1] * *v16) + ((v17 + 7) >> 3)) * v12], v14, v15, v13);
    if (result)
    {
      break;
    }

    v13 += v15;
    if (v11 == ++v12)
    {
      return 0;
    }
  }

  return result;
}

uint64_t cche_deserialize_seeded_ciphertext_coeff_ws(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = cche_deserialize_seeded_ciphertext_eval_ws(a1, a2, a3, a4);
  if (!result)
  {
    v6 = *(a2 + 24);
    v7 = (a2 + 24 + ((sizeof_struct_ccpolyzp_po2cyc() + 7) & 0xFFFFFFFFFFFFFFF8) + 8 * (v6[1] * *v6));

    return ccpolyzp_po2cyc_inv_ntt(v7);
  }

  return result;
}

uint64_t cche_deserialize_seeded_ciphertext_eval_ws(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 8);
  if (v8 != cche_ciphertext_fresh_npolys())
  {
    return 4294967289;
  }

  v10 = *(a2 + 24);
  v9 = (a2 + 24);
  if (ccpolyzp_po2cyc_serialize_poly_nbytes(v10, 0) != a3)
  {
    return 4294967289;
  }

  v11 = *(a1 + 16);
  result = ccpolyzp_po2cyc_deserialize_poly_ws(a1, v9, 0, a3, a4);
  if (!result)
  {
    v13 = (*(a1 + 24))(a1, 536);
    result = ccpolyzp_po2cyc_block_rng_init(v13);
    if (!result)
    {
      v14 = *v9;
      v15 = sizeof_struct_ccpolyzp_po2cyc();
      result = ccpolyzp_po2cyc_random_uniform_ws(a1, (&v9[v14[1] * *v14] + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8)), v13);
    }
  }

  *(a1 + 16) = v11;
  return result;
}

uint64_t ccmode_gcm_init(uint64_t a1, int8x16_t *a2)
{
  if (fipspost_trace_is_active())
  {
    fipspost_trace_call("ccmode_gcm_init");
  }

  v4 = *(a1 + 72);
  if (*(v4 + 8) != 16)
  {
    return 0xFFFFFFFFLL;
  }

  a2[6].i64[1] = v4;
  a2[7].i64[0] = a2[24].i64;
  a2[7].i32[2] = *(a1 + 8);
  (*(v4 + 16))(v4);
  a2[5].i16[1] = 0;
  ccmode_gcm_reset(a2);
  v5 = (*(v4 + 24))(a2[7].i64[0], 1, a2 + 1, a2);
  gcm_init(a2 + 8, a2, v5, v6, v7, v8, v9, v10);
  return 0;
}

uint64_t ccecies_encrypt_gcm_from_shared_secret_composite(void *a1, uint64_t a2, uint64_t *a3, size_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14)
{
  v28 = *MEMORY[0x29EDCA608];
  v22 = ccecies_pub_key_size(a3, a2);
  if (*a1 == *a3)
  {
    v23 = v22;
    v24 = ccecies_export_eph_pub(*(a2 + 32), a3, a12);
    if (!v24)
    {
      v24 = ccecies_derive_gcm_key_iv(a2, a4, a5, a8, a9, v23, a12, v27);
      if (!v24)
      {
        v24 = ccecies_encrypt_gcm_encrypt(a2, v27, a10, a11, a6, a7, a13, a14);
      }
    }

    v25 = v24;
  }

  else
  {
    v25 = 4294967289;
  }

  cc_clear(0x30uLL, v27);
  return v25;
}

uint64_t ccpolyzp_po2cyc_coeff_apply_galois(uint64_t *a1, unsigned int **a2, unsigned int a3)
{
  if (a1 == a2)
  {
    return 4294967289;
  }

  if (!ccpolyzp_po2cyc_ctx_eq(*a1, *a2))
  {
    return 4294967289;
  }

  v6 = **a2;
  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v6 > 0x100000 || v7.i32[0] != 1)
  {
    return 4294967289;
  }

  result = 4294967289;
  if (a3 >= 2 && (a3 & 1) != 0 && 2 * v6 > a3)
  {
    v10 = (*a2)[1];
    if (v10)
    {
      v11 = 0;
      v12 = 0x80000000 >> __clz(v6);
      do
      {
        v13 = (*a2)[1] - 1;
        v14 = *a2;
        if (v13 > v11)
        {
          v14 = *a2;
          do
          {
            v14 = *(v14 + 14);
            --v13;
          }

          while (v13 > v11);
        }

        v15 = 0;
        v16 = 0;
        v17 = *(v14 + 2);
        v18 = &a2[**a2 * v11 + 1];
        v19 = v6;
        do
        {
          v20 = (v16 & v12) != 0;
          v16 += a3;
          v21 = *v18++;
          a1[v15 + 1 + **a1 * v11] = (v20 - 1) & v21 | (v17 - v21) & -v20 & -(v21 != 0);
          v15 = v16 & (v6 - 1);
          --v19;
        }

        while (v19);
        ++v11;
      }

      while (v11 != v10);
    }

    return 0;
  }

  return result;
}

uint64_t ccpolyzp_po2cyc_eval_apply_galois(uint64_t *a1, unsigned int **a2, unsigned int a3)
{
  if (a1 == a2)
  {
    return 4294967289;
  }

  v5 = a1;
  if (!ccpolyzp_po2cyc_ctx_eq(*a1, *a2))
  {
    return 4294967289;
  }

  v6 = vcnt_s8(**a2);
  v6.i16[0] = vaddlv_u8(v6);
  v18 = **a2;
  if (v18 > 0x100000 || v6.i32[0] != 1)
  {
    return 4294967289;
  }

  result = 4294967289;
  if (a3 >= 2 && (a3 & 1) != 0 && 2 * v18 > a3)
  {
    v17 = (*a2)[1];
    if (v17)
    {
      v9 = 0;
      v10 = __clz(v18);
      v15 = (v5 + 1);
      v16 = v5;
      v11 = a3;
      do
      {
        v12 = &v15[**v5 * v9];
        v13 = v18;
        v14 = v18;
        do
        {
          ccn_set(1, v12, &(&a2[(__rbit32((v18 - 1) & ((v11 * (__rbit32(v14) >> v10)) >> 1)) >> (v10 + 1)) + 1])[**a2 * v9]);
          v12 += 8;
          ++v14;
          --v13;
        }

        while (v13);
        ++v9;
        v5 = v16;
      }

      while (v9 != v17);
    }

    return 0;
  }

  return result;
}

uint64_t ccss_sizeof_shamir_share_generator_serialization(uint64_t a1, void *a2)
{
  if (!is_mul_ok(*(a1 + 8) + 2, 8 * cczp_n(*a1)))
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_46();
  if (v4)
  {
    return 0;
  }

  *a2 = v3;
  return 1;
}

uint64_t ccss_shamir_share_generator_serialize(unint64_t a1, uint64_t a2, uint64_t *a3)
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

  v25 = v11;
  if (!is_mul_ok(*(a3 + 2) + 2, 8 * cczp_n(*a3)) || ((OUTLINED_FUNCTION_0_46(), !v13) ? (v14 = v12 > a1) : (v14 = 1), v14))
  {
    v23 = 4294967289;
  }

  else
  {
    *a2 = 1;
    v15 = **a3;
    if ((v15 >> 29))
    {
      v23 = 4294967284;
    }

    else
    {
      v16 = 8 * v15;
      *(a2 + 1) = bswap32(8 * v15);
      v17 = *(a3 + 2);
      *(a2 + 5) = bswap32(v17);
      v18 = ccn_write_uint_padded_ct_internal(v15, (*a3 + 24), 8 * v15, (a2 + 9));
      if ((v18 & 0x80000000) == 0)
      {
        v19 = 0;
        v20 = v16 + a2;
        v21 = a3 + 2;
        v22 = (v20 + 9);
        while (1)
        {
          v18 = ccn_write_uint_padded_ct_internal(v15, &v21[v15 * v19], 8 * v15, v22);
          if ((v18 & 0x80000000) != 0)
          {
            break;
          }

          ++v19;
          v22 += v16;
          if (v19 > v17)
          {
            v23 = 0;
            goto LABEL_16;
          }
        }
      }

      v23 = v18;
    }
  }

LABEL_16:
  cc_disable_dit(&v25);
  return v23;
}

uint64_t ccrsa_pairwise_consistency_check_ws(uint64_t a1, uint64_t *a2, uint64_t (**a3)(void, uint64_t, uint64_t))
{
  v6 = ccrsa_ctx_public(a2);
  v7 = *a2;
  v8 = cczp_bitlen(v6);
  v24 = 0;
  v22 = *(a1 + 16);
  v9 = (*(a1 + 24))(a1, v7);
  v10 = OUTLINED_FUNCTION_0_47();
  v12 = v11(v10);
  v13 = OUTLINED_FUNCTION_0_47();
  v15 = v14(v13);
  v16 = OUTLINED_FUNCTION_0_47();
  v18 = v17(v16);
  v23 = (v8 + 7) >> 3;
  v19 = ccsha256_di();
  result = ccrsa_sign_pkcs1v15_msg_blinded_ws(a1, a3, a2, v19, 0, &v24, &v23, v18);
  if (!result)
  {
    v21 = ccsha256_di();
    result = ccrsa_verify_pkcs1v15_msg_ws(a1, v6, v21, 0, &v24, v23, v18, 0);
    if (!result)
    {
      ccn_seti(v7, v12, 42);
      ccn_set_bit(v12, v8 - 9, 1);
      result = ccrsa_pub_crypt_ws(a1, v6);
      if (!result)
      {
        if (!ccn_cmp_public_value(v7, v12, v9) || (result = ccrsa_priv_crypt_blinded_ws(a1, a3, a2, v15, v9), !result) && (result = ccn_cmp_public_value(v7, v15, v12), result))
        {
          result = 4294967289;
        }
      }
    }
  }

  *(a1 + 16) = v22;
  return result;
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

uint64_t generate_5(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = *MEMORY[0x29EDCA608];
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
        cchmac_internal(v8, v9, (a1 + 8), v9, a1 + 72, a1 + 72);
        if (!cc_cmp_safe_internal(v9, v18, a1 + 72))
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

  cc_clear(v9, v18);
  return v16;
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

uint64_t cche_relin_key_generate_ws(uint64_t a1, uint64_t *a2, int **a3, uint64_t a4, int a5, uint64_t a6, uint64_t (**a7)(void, uint64_t, uint64_t))
{
  v10 = cche_param_ctx_chain_const(a4);
  v11 = *(v10 + 12);
  if (v11 < 2)
  {
    return 4294967289;
  }

  v12 = v10;
  v13 = cche_param_ctx_ciphertext_ctx_nmoduli(a4);
  if (a5)
  {
    if (cche_rng_seed_sizeof() * v13 != a5)
    {
      return 4294967289;
    }
  }

  *a2 = a4;
  v14 = cche_param_ctx_polynomial_degree(a4);
  v15 = *(a1 + 24);
  v48 = *(a1 + 16);
  v16 = sizeof_struct_ccpolyzp_po2cyc();
  v17 = v15(a1, *(v12 + 8) * v11 + ((v16 + 7) >> 3));
  *v17 = *a3;
  ccpolyzp_po2cyc_eval_mul(v17, a3, a3);
  v18 = *(v12 + 12) - 1;
  v19 = v12 + 8;
  if (v18 > v13)
  {
    v19 = v12 + 8;
    do
    {
      v19 = *(v19 + 112);
      --v18;
    }

    while (v18 > v13);
  }

  if (v13)
  {
    v50 = a4;
    v51 = a6;
    v20 = 0;
    v49 = v13;
    while (1)
    {
      v21 = *(v12 + 12);
      v22 = (v12 + 8);
      if (v20 < (v21 - 1))
      {
        v23 = v21 - 2;
        v22 = (v12 + 8);
        do
        {
          v22 = v22[14];
          v24 = v20 >= v23--;
        }

        while (!v24);
      }

      v25 = cche_relin_key_ciphertext(a2, v20);
      v26 = *(v12 + 12);
      v27 = v51 ? v51 + cche_rng_seed_sizeof() * v20 : 0;
      result = cche_encrypt_zero_symmetric_eval_ws(a1, v25, v50, a3, v26, v27, a7);
      if (result)
      {
        break;
      }

      v29 = v22[2];
      if (v14)
      {
        v31 = 0;
        v30 = *(v19 + 16) + v29 * ~((v22[3] * *(v19 + 16)) >> 64);
        v32 = v30 + ((v30 >> 63) & v29);
        v33 = v25 + 32;
        v34 = **(v25 + 24);
        do
        {
          v35 = *(v33 + 8 * (v31 + v20 * v34));
          v36 = v17[(v31 + v20 * **v17) + 1];
          v37 = (v36 * v32) >> 64;
          v38 = v36 * v32;
          v39 = v22[4];
          v40 = (v38 * v39) >> 64;
          v41 = (v37 * v39) >> 64;
          v42 = v37 * v39;
          v24 = __CFADD__(v40, v42);
          v43 = v40 + v42;
          v44 = v24;
          v45 = v44 + __CFADD__(v38 * v22[5], v43) + v41 + v22[5] * v37 + ((v38 * v22[5]) >> 64);
          v46 = v22[2];
          v47 = (((v38 + v46 * ~v45) >> 63) & v46) + v35 - v46 + v38 + v46 * ~v45 + ((((((v38 + v46 * ~v45) >> 63) & v46) + v35 - v46 + v38 + v46 * ~v45) >> 63) & v46);
          v34 = **(v25 + 24);
          *(v33 + 8 * (v31 + v20 * v34)) = v47;
          ++v31;
        }

        while (v14 != v31);
      }

      if (++v20 == v49)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_24:
    result = 0;
  }

  *(a1 + 16) = v48;
  return result;
}

uint64_t cche_relin_key_save_ws(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  v8 = cche_param_ctx_chain_const(*a4);
  if (*(v8 + 12) < 2u)
  {
    return 4294967289;
  }

  v9 = v8;
  v10 = cche_param_ctx_ciphertext_ctx_nmoduli(*a4);
  v11 = ccpolyzp_po2cyc_serialize_poly_nbytes((v9 + 8), 0);
  if (v11 * v10 != a2)
  {
    return 4294967289;
  }

  if (!v10)
  {
    return 0;
  }

  v12 = v11;
  v13 = 0;
  while (1)
  {
    v14 = cche_relin_key_ciphertext(a4, v13);
    result = ccpolyzp_po2cyc_serialize_poly_ws(a1, v12, a3, 0, (v14 + 24));
    if (result)
    {
      break;
    }

    a3 += v12;
    if (v10 == ++v13)
    {
      return 0;
    }
  }

  return result;
}

uint64_t cche_relin_key_load_ws(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7)
{
  v11 = a3;
  v12 = cche_param_ctx_chain_const(a3);
  if (*(v12 + 12) < 2u)
  {
    return 4294967289;
  }

  v13 = (v12 + 8);
  v14 = cche_param_ctx_ciphertext_ctx_nmoduli(v11);
  v15 = ccpolyzp_po2cyc_serialize_poly_nbytes(v13, 0);
  v27 = cche_rng_seed_sizeof();
  if (v15 * v14 != a4 || v27 * v14 != a6)
  {
    return 4294967289;
  }

  *a2 = v11;
  if (!v14)
  {
    return 0;
  }

  v17 = 0;
  v26 = v14;
  v25 = v11;
  while (1)
  {
    v18 = cche_relin_key_ciphertext(a2, v17);
    v19 = cche_ciphertext_fresh_npolys();
    *v18 = v11;
    *(v18 + 8) = v19;
    *(v18 + 16) = 1;
    *(v18 + 24) = v13;
    v20 = (v18 + 24);
    if (v19 >= 2)
    {
      v21 = v19;
      for (i = 1; i != v21; ++i)
      {
        v23 = *v20;
        v20[((v23[1] * *v23) + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3)) * i] = v13;
      }
    }

    result = cche_deserialize_seeded_ciphertext_eval_ws(a1, v18, v15, a5);
    if (result)
    {
      break;
    }

    a7 += v27;
    a5 += v15;
    ++v17;
    v11 = v25;
    if (v17 == v26)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ccec_der_import_diversified_pub(uint64_t a1, uint64_t a2, unsigned __int8 *a3, _DWORD *a4)
{
  v32 = timingsafe_enable_if_supported();
  v7 = &a3[a2];
  v30 = 0;
  v31 = v7;
  v8 = ccder_decode_constructed_tl(0x2000000000000010, &v31, a3, v7);
  v9 = ccder_decode_tl(4, &v30, v8, v31);
  v10 = v9;
  if (v9)
  {
    v11 = &v9[v30];
  }

  else
  {
    v11 = 0;
  }

  v12 = ccder_decode_tl(4, &v30, v11, v31);
  v13 = &v12[v30];
  if (!v12)
  {
    v13 = 0;
  }

  v14 = 0xFFFFFFFFLL;
  if (v10)
  {
    if (v12 && v13 == v7)
    {
      v16 = OUTLINED_FUNCTION_1_24();
      v20 = ccec_compact_import_pub(v16, v17, v18, v19);
      if (v20)
      {
        v21 = OUTLINED_FUNCTION_1_24();
        v22 = ccec_import_pub(v21);
        if (v22)
        {
          v14 = v22;
          goto LABEL_19;
        }

        v23 = OUTLINED_FUNCTION_0_48();
        v24 = ccec_import_pub(v23);
      }

      else
      {
        v25 = OUTLINED_FUNCTION_0_48();
        v24 = ccec_compact_import_pub(v25, v26, v27, v28);
      }

      v14 = v24;
      if (a4 && !v24)
      {
        *a4 = 4 * (v20 == 0);
      }
    }
  }

LABEL_19:
  cc_disable_dit_with_sb(&v32);
  return v14;
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

uint64_t ccec_sign_composite_msg_ws(uint64_t a1, uint64_t **a2, unint64_t *a3, size_t a4, char *a5, char *a6, char *a7, uint64_t (**a8)(void, unint64_t, void *))
{
  v16 = *MEMORY[0x29EDCA608];
  ccdigest_internal(a3, a4, a5, v15);
  return ccec_sign_composite_ws(a1, a2, *a3, v15, a6, a7, a8);
}

uint64_t ccccm_encrypt()
{
  v5 = OUTLINED_FUNCTION_6();
  if (*(v0 + 80) == 1)
  {
    v1 = OUTLINED_FUNCTION_5_3();
    v3 = v2(v1);
  }

  else
  {
    v3 = 4294967228;
  }

  cc_disable_dit_with_sb(&v5);
  return v3;
}

uint64_t ccccm_decrypt()
{
  v5 = OUTLINED_FUNCTION_6();
  if (*(v0 + 80))
  {
    v3 = 4294967228;
  }

  else
  {
    v1 = OUTLINED_FUNCTION_5_3();
    v3 = v2(v1);
  }

  cc_disable_dit_with_sb(&v5);
  return v3;
}

uint64_t ccccm_finalize_and_generate_tag(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  if (*(a1 + 80) == 1)
  {
    v8 = (*(a1 + 56))(a2, a3, a4);
  }

  else
  {
    v8 = 4294967228;
  }

  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ccccm_finalize_and_verify_tag_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*(a1 + 80))
  {
    return 4294967228;
  }

  result = (*(a1 + 56))(a2, a3, v7);
  if (!result)
  {
    result = cc_cmp_safe_internal(*(a3 + 88), v7, a4);
    if (result)
    {
      cc_clear(*(a3 + 88), v7);
      return 4294967227;
    }
  }

  return result;
}

uint64_t ccccm_one_shot_encrypt()
{
  OUTLINED_FUNCTION_3_7();
  v22 = *MEMORY[0x29EDCA608];
  v21 = timingsafe_enable_if_supported();
  if (*(v0 + 80) == 1)
  {
    v20[1] = v1;
    OUTLINED_FUNCTION_0_49();
    MEMORY[0x2A1C7C4A8](v3);
    v5 = v20 - v4;
    OUTLINED_FUNCTION_0_49();
    MEMORY[0x2A1C7C4A8](v6);
    v7 = OUTLINED_FUNCTION_2_16();
    v9 = v8(v7);
    if (!v9)
    {
      v10 = OUTLINED_FUNCTION_1_25();
      v9 = v11(v10);
      if (!v9)
      {
        v12 = OUTLINED_FUNCTION_0_0();
        v9 = v13(v12);
        if (!v9)
        {
          v14 = OUTLINED_FUNCTION_0_0();
          v9 = v15(v14);
          if (!v9)
          {
            v16 = OUTLINED_FUNCTION_0_0();
            v9 = v17(v16);
          }
        }
      }
    }

    v18 = v9;
    cc_clear(*v0, v5);
    cc_clear(*(v0 + 8), v2);
  }

  else
  {
    v18 = 4294967228;
  }

  cc_disable_dit_with_sb(&v21);
  return v18;
}

uint64_t ccccm_one_shot_decrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_3_7();
  v32 = *MEMORY[0x29EDCA608];
  v31 = timingsafe_enable_if_supported();
  if (*(v12 + 80))
  {
    v28 = 4294967228;
  }

  else
  {
    v30[1] = v13;
    OUTLINED_FUNCTION_0_49();
    MEMORY[0x2A1C7C4A8](v15);
    v17 = v30 - v16;
    OUTLINED_FUNCTION_0_49();
    MEMORY[0x2A1C7C4A8](v18);
    v19 = OUTLINED_FUNCTION_2_16();
    v21 = v20(v19);
    if (!v21)
    {
      v22 = OUTLINED_FUNCTION_1_25();
      v21 = v23(v22);
      if (!v21)
      {
        v24 = OUTLINED_FUNCTION_0_0();
        v21 = v25(v24);
        if (!v21)
        {
          v26 = OUTLINED_FUNCTION_0_0();
          v21 = v27(v26);
          if (!v21)
          {
            v21 = ccccm_finalize_and_verify_tag_internal(v12, v17, v14, a12);
          }
        }
      }
    }

    v28 = v21;
    cc_clear(*v12, v17);
    cc_clear(*(v12 + 8), v14);
  }

  cc_disable_dit_with_sb(&v31);
  return v28;
}

uint64_t ccec_extract_rs_ws(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned __int8 *a4, char *a5, char *a6)
{
  v12 = **a2;
  v13 = *(a1 + 16);
  v14 = (*(a1 + 24))(a1, v12);
  v15 = (*(a1 + 24))(a1, v12);
  if (ccder_decode_seqii(v12, v14, v15, a4, &a4[a3]) != &a4[a3] || a5 && (v16 = ccec_signature_r_s_size(a2), (ccn_write_uint_padded_ct_internal(v12, v14, v16, a5) & 0x80000000) != 0) || a6 && (v17 = ccec_signature_r_s_size(a2), (ccn_write_uint_padded_ct_internal(v12, v15, v17, a6) & 0x80000000) != 0))
  {
    result = 4294967289;
  }

  else
  {
    result = 0;
  }

  *(a1 + 16) = v13;
  return result;
}

uint64_t ccec_verify_digest_ws(uint64_t a1, uint64_t **a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, void *a7)
{
  v20 = *MEMORY[0x29EDCA608];
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

uint64_t ccec_verify_msg_ws(uint64_t a1, uint64_t **a2, unint64_t *a3, size_t a4, char *a5, uint64_t a6, unsigned __int8 *a7, void *a8)
{
  v16 = *MEMORY[0x29EDCA608];
  ccdigest_internal(a3, a4, a5, v15);
  return ccec_verify_digest_ws(a1, a2, *a3, v15, a6, a7, a8);
}

uint64_t ccec_x963_import_priv_ws(uint64_t a1, unint64_t *a2, unint64_t a3, unsigned __int8 *a4, unint64_t **a5)
{
  v5 = *a4;
  v6 = v5 > 7;
  v7 = (1 << v5) & 0xD0;
  if (v6 || v7 == 0)
  {
    return 4294967289;
  }

  v14 = a2 + 4;
  if (a3 < (cczp_bitlen(&a2[5 * *a2 + 4]) + 7) >> 3)
  {
    return 4294967289;
  }

  v15 = *(a1 + 16);
  v16 = cczp_bitlen(&v14[5 * *a2]);
  result = ccec_x963_import_pub_ws(a1, a2, a3 - ((v16 + 7) >> 3), a4, a5);
  if (!result)
  {
    v18 = *a2;
    v19 = &a5[3 * **a5];
    v20 = (cczp_bitlen(&v14[5 * *a2]) + 7) >> 3;
    v21 = cczp_bitlen(a2);
    result = ccn_read_uint_internal(v18, v19 + 2, v20, &a4[((v21 + 7) >> 2) | 1]);
  }

  *(a1 + 16) = v15;
  return result;
}

uint64_t ccmode_ccm_cbcmac(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 && *(a2 + 64) != 4)
  {
    return 4294967228;
  }

  ccmode_ccm_macdata(a1, a2, 0, a3, a4);
  return 0;
}