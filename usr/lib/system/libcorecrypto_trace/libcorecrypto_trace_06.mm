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

uint64_t ccec_x963_import_priv_size(uint64_t a1)
{
  v4 = timingsafe_enable_if_supported();
  if (a1 <= 96)
  {
    if (a1 == 73)
    {
      v2 = 192;
      goto LABEL_13;
    }

    if (a1 == 85)
    {
      v2 = 224;
      goto LABEL_13;
    }

LABEL_12:
    v2 = 0;
    goto LABEL_13;
  }

  if (a1 == 97)
  {
    v2 = 256;
    goto LABEL_13;
  }

  if (a1 == 145)
  {
    v2 = 384;
    goto LABEL_13;
  }

  if (a1 != 199)
  {
    goto LABEL_12;
  }

  v2 = 521;
LABEL_13:
  cc_disable_dit_with_sb(&v4);
  return v2;
}

uint64_t ccec_x963_import_priv(unint64_t *a1, unint64_t a2, unsigned __int8 *a3, unint64_t **a4)
{
  v14 = timingsafe_enable_if_supported();
  v8 = cc_malloc_clear(160 * *a1);
  v9 = 20 * *a1;
  v12[0] = v8;
  v12[1] = v9;
  v12[2] = 0;
  v12[3] = cc_ws_alloc;
  v13 = cc_ws_free;
  if (v8)
  {
    v10 = ccec_x963_import_priv_ws(v12, a1, a2, a3, a4);
    v13(v12);
  }

  else
  {
    v10 = 4294967283;
  }

  cc_disable_dit_with_sb(&v14);
  return v10;
}

uint64_t ccmode_siv_hmac_reset(uint64_t a1)
{
  cchmac_init_internal(*(*a1 + 56), (a1 + 96), *(a1 + 8) >> 1, (a1 + 32));
  *(a1 + 24) = 2;
  return 0;
}

uint64_t ccmode_ccm_macdata(uint64_t result, uint64_t a2, int a3, unint64_t a4, uint64_t a5)
{
  v8 = result;
  v9 = *(*result + 8);
  if (a3)
  {
    result = (*(*result + 24))(result + 8, 1, a2 + 16, a2 + 16);
    v10 = 0;
    *(a2 + 72) = 0;
    if (!a4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = *(a2 + 72);
    if (!a4)
    {
      goto LABEL_15;
    }
  }

  v11 = 0;
  v12 = a5 - 1;
  do
  {
    if (a4 - v11 >= v9 - v10)
    {
      v13 = v9 - v10;
    }

    else
    {
      v13 = a4 - v11;
    }

    if (v13)
    {
      v14 = v13;
      do
      {
        *(a2 + 15 + v10 + v14) ^= *(v12 + v11 + v14);
        --v14;
      }

      while (v14);
    }

    v10 = (v10 + v13) % v9;
    if (!v10)
    {
      result = (*(*v8 + 24))(v8 + 8, 1, a2 + 16, a2 + 16);
    }

    v11 += v13;
  }

  while (v11 < a4);
LABEL_15:
  *(a2 + 72) = v10;
  return result;
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

uint64_t cch2c_hash_to_base_sae_ws(uint64_t a1, uint64_t a2, size_t a3, char *a4, uint64_t a5, uint64_t a6, char a7)
{
  v25 = *MEMORY[0x29EDCA608];
  qmemcpy(v22, "SAE Hash to Element u", 21);
  v22[21] = a7 + 49;
  v23 = 20512;
  v24 = a7 + 49;
  bzero(v21, 0xFFuLL);
  v13 = (*(a2 + 16))();
  v14 = cczp_n(v13);
  v20 = *(a1 + 16);
  v15 = 2 * v14;
  v16 = (*(a1 + 24))(a1, 2 * v14);
  v17 = (*(a2 + 24))();
  if (cchkdf_extract_internal(v17, a3, a4, a5, a6, v21) || cchkdf_expand_internal(v17, *v17, v21, 25, v22, *(a2 + 8), v21))
  {
    result = 4294967289;
    v18 = v20;
  }

  else
  {
    v18 = v20;
    if (ccn_read_uint_internal(v15, v16, *(a2 + 8), v21))
    {
      result = 4294967289;
    }

    else
    {
      cczp_mod_ws(a1, v13);
      result = 0;
    }
  }

  *(a1 + 16) = v18;
  return result;
}

uint64_t cch2c_hash_to_base_rfc_ws(uint64_t a1, uint64_t a2, size_t a3, char *a4, unint64_t a5, uint64_t a6, char a7)
{
  v25 = *MEMORY[0x29EDCA608];
  qmemcpy(v21, "H2C", sizeof(v21));
  v22 = a7;
  v23 = 1;
  bzero(v24, 0x100uLL);
  v12 = (*(a2 + 16))();
  v13 = cczp_n(v12);
  v20 = *(a1 + 16);
  v14 = 2 * v13;
  v15 = (*(a1 + 24))(a1, 2 * v13);
  v16 = (*(a2 + 24))();
  if (a5 > 0xFF || (v17 = v16, __memcpy_chk(), cchkdf_extract_internal(v17, a3, a4, a5 + 1, v24, v24)) || cchkdf_expand_internal(v17, *v17, v24, 5, v21, *(a2 + 8), v24))
  {
    result = 4294967289;
    v18 = v20;
  }

  else
  {
    v18 = v20;
    if (ccn_read_uint_internal(v14, v15, *(a2 + 8), v24))
    {
      result = 4294967289;
    }

    else
    {
      cczp_mod_ws(a1, v12);
      result = 0;
    }
  }

  *(a1 + 16) = v18;
  return result;
}

uint64_t ccss_shamir_share_generator_generate_share(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v20 = v11;
  if (!a2)
  {
    goto LABEL_8;
  }

  v12 = ccss_shamir_consistent_primes(*a1, *a3);
  if (v12)
  {
    v17 = v12;
    goto LABEL_10;
  }

  v19 = a2;
  v13 = ccss_shamir_prime_of(a1);
  v14 = cczp_n(v13);
  v15 = ccss_shamir_prime_of(a1);
  v16 = cczp_prime(v15);
  if ((ccn_cmpn_internal(1, &v19, v14, v16) & 0x80000000) != 0)
  {
    ccss_shamir_evaluate_poly_to_buffer(a1, a2, (a3 + 16));
    v17 = 0;
    *(a3 + 8) = a2;
  }

  else
  {
LABEL_8:
    v17 = 4294967165;
  }

LABEL_10:
  cc_disable_dit(&v20);
  return v17;
}

uint64_t ccpolyzp_po2cyc_block_rng_init(uint64_t a1)
{
  *a1 = generate_3;
  *(a1 + 64) = ccaes_ctr_crypt_mode();
  *(a1 + 72) = 16;
  *(a1 + 80) = 1;
  *(a1 + 88) = 0;
  ccdrbg_factory_nistctr((a1 + 8), a1 + 64);
  if (*(a1 + 8) > 0x58uLL)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 184) = 4096;

  return ccdrbg_init_internal(a1 + 8);
}

uint64_t generate_3(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0();
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

uint64_t ccpolyzp_po2cyc_random_uniform_ws(uint64_t a1, unsigned int **a2, uint64_t (**a3)(void, uint64_t, uint64_t))
{
  v6 = **a2;
  v5 = (*a2)[1];
  if (v6 >= 0x400)
  {
    v7 = 1024;
  }

  else
  {
    v7 = **a2;
  }

  v28 = *(a1 + 16);
  v8 = (*(a1 + 24))(a1, 2 * v7);
  v30 = v5;
  if (v5)
  {
    v9 = v8;
    v10 = 0;
    v11 = *a2;
    while (1)
    {
      v12 = v11[1] - 1;
      v13 = v11;
      if (v12 > v10)
      {
        v13 = v11;
        do
        {
          v13 = *(v13 + 14);
          --v12;
        }

        while (v12 > v10);
      }

      if (v6)
      {
        break;
      }

LABEL_17:
      if (++v10 == v30)
      {
        goto LABEL_18;
      }
    }

    v14 = 0;
    while (1)
    {
      if (!(v14 % v7))
      {
        result = (*a3)(a3, 16 * v7, v9);
        if (result)
        {
          break;
        }
      }

      v16 = (v9 + 16 * (v14 % v7));
      v18 = *v16;
      v17 = v16[1];
      v19 = *(v13 + 4);
      v20 = (v19 * v18) >> 64;
      v21 = (v19 * v17) >> 64;
      v22 = v19 * v17;
      v23 = __CFADD__(v20, v22);
      v24 = v20 + v22;
      v25 = v23;
      v26 = v25 + __CFADD__(*(v13 + 5) * v18, v24) + v21 + *(v13 + 5) * v17 + ((*(v13 + 5) * v18) >> 64);
      v27 = v18 + *(v13 + 2) * ~v26 + (((v18 + *(v13 + 2) * ~v26) >> 63) & *(v13 + 2));
      v11 = *a2;
      (&a2[v14 + 1])[v10 * **a2] = v27;
      if (v6 == ++v14)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_18:
    result = 0;
    *(a1 + 16) = v28;
  }

  return result;
}

uint64_t ccpolyzp_po2cyc_random_ternary_ws()
{
  OUTLINED_FUNCTION_0();
  v26 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_1();
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = v2;
  }

  v8 = *(v4 + 16);
  v9 = (*(v4 + 24))(v4, (96 * v7 + 63) >> 6);
  cc_clear(0x10uLL, &__dst);
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  result = ccrns_modulus_init_ws(v0, &v21, 3);
  if (!result)
  {
    if (v2)
    {
      v11 = 0;
      while (1)
      {
        if (!(v11 % v7))
        {
          v12 = OUTLINED_FUNCTION_2();
          result = v13(v12);
          if (result)
          {
            break;
          }
        }

        ccn_set(2, &__dst, (v9 + 12 * (v11 % v7)));
        v25 = v25;
        v14 = __CFADD__((v22 * __dst) >> 64, v22 * v25);
        if (v3)
        {
          v16 = 0;
          v15 = __dst + v21 * ~(v14 + __CFADD__(*(&v22 + 1) * __dst, (__PAIR128__(v25, __dst) * v22) >> 64) + ((v22 * v25) >> 64) + *(&v22 + 1) * v25 + ((*(&v22 + 1) * __dst) >> 64));
          v17 = ((v15 >> 63) & v21) + v15 - 1;
          v18 = *v1;
          do
          {
            v19 = v18[1];
            while (--v19 > v16)
            {
              v18 = *(v18 + 14);
            }

            v20 = ((v17 >> 63) & *(v18 + 2)) + v17;
            v18 = *v1;
            v1[v11 + 1 + **v1 * v16++] = v20;
          }

          while (v16 != v3);
        }

        if (++v11 == v2)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_19:
      result = 0;
      *(v0 + 16) = v8;
    }
  }

  return result;
}

uint64_t ccpolyzp_po2cyc_random_cbd_ws(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    return 4294967289;
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  v26 = *(v9 + 16);
  v13 = (*(v9 + 24))(v9, (48 * v12 + 63) >> 6);
  if (v6)
  {
    v14 = v13;
    v15 = 0;
    v16 = v13;
    while (1)
    {
      if (!(v15 % v12))
      {
        v17 = OUTLINED_FUNCTION_2();
        result = v18(v17);
        v16 = v14;
        if (result)
        {
          break;
        }
      }

      if (v7)
      {
        v19 = 0;
        v20 = vcnt_s8((*v16 & 0x3FFFFE00000));
        v20.i16[0] = vaddlv_u8(v20);
        v21 = v20.u32[0];
        v20.i32[0] = *v16 & 0x1FFFFF;
        v22 = vcnt_s8(v20);
        v22.i16[0] = vaddlv_u8(v22);
        v23 = *v5;
        do
        {
          v24 = v23[1];
          while (--v24 > v19)
          {
            v23 = *(v23 + 14);
          }

          v25 = (((v22.u32[0] - v21) >> 63) & *(v23 + 2)) + v22.u32[0] - v21;
          v23 = *v5;
          v5[v15 + 1 + **v5 * v19++] = v25;
        }

        while (v19 != v7);
      }

      v16 = (v16 + 6);
      if (++v15 == v6)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    result = 0;
    *(v4 + 16) = v26;
  }

  return result;
}

unint64_t ccecies_encrypt_gcm_ciphertext_size(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = ccecies_pub_key_size_cp(*a1, a2);
  if (result)
  {
    result += a3 + *(a2 + 28);
  }

  return result;
}

uint64_t mfi_session_keys_derive(uint64_t **a1, unint64_t a2, char *a3, size_t a4, const void *a5)
{
  v28 = *MEMORY[0x29EDCA608];
  v10 = *a1;
  v11 = ccec_compressed_x962_export_pub_size(**a1);
  v12 = a4 + 2 * v11 + v10[28];
  if (v12 > 0x100)
  {
    return 4294967289;
  }

  v13 = v11;
  v14 = ccaes_cbc_encrypt_mode();
  result = cccmac_one_shot_generate_internal(v14, v10[24], v10[23], a2, a3, 0x10uLL, v26);
  if (!result)
  {
    v16 = v10[28];
    __memcpy_chk();
    v17 = &v27[v16];
    inited = ccsigma_kex_init_ctx(a1);
    result = ccec_compressed_x962_export_pub(inited, v17);
    if (!result)
    {
      v19 = &v17[v13];
      v20 = ccsigma_kex_resp_ctx(a1);
      result = ccec_compressed_x962_export_pub(v20, v19);
      if (!result)
      {
        memcpy(&v19[v13], a5, a4);
        v21 = ccaes_cbc_encrypt_mode();
        v23 = v10[25];
        v22 = v10[26];
        v24 = v10[10];
        v25 = (v10[11])(a1);
        return ccnistkdf_ctr_cmac_internal(v21, 0x20u, 16, v26, v22, v23, v12, v27, v24, 4uLL, v25);
      }
    }
  }

  return result;
}

uint64_t mfi_sigma_compute_mac_and_digest(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x29EDCA608];
  v8 = *a1;
  MEMORY[0x2A1C7C4A8](a1);
  v9 = OUTLINED_FUNCTION_0_0();
  ccdigest_init_internal(v9, v10);
  v11 = OUTLINED_FUNCTION_0_0();
  ccdigest_update_internal(v11, v12, v13, v14);
  v15 = ccec_compressed_x962_export_pub_size(*v8);
  if (v15 > 0x21)
  {
    return 4294967291;
  }

  v16 = v15;
  inited = ccsigma_kex_init_ctx(a1);
  ccec_compressed_x962_export_pub(inited, v33);
  v18 = OUTLINED_FUNCTION_0_0();
  ccdigest_update_internal(v18, v19, v16, v20);
  v21 = ccsigma_kex_resp_ctx(a1);
  ccec_compressed_x962_export_pub(v21, v33);
  v22 = OUTLINED_FUNCTION_0_0();
  ccdigest_update_internal(v22, v23, v16, v24);
  result = ccsigma_compute_mac_internal(a1, v8[a2 + 15], a3, a4, v32);
  if (!result)
  {
    v26 = OUTLINED_FUNCTION_0_0();
    ccdigest_update_internal(v26, v27, v28, v29);
    v30 = OUTLINED_FUNCTION_0_0();
    v31(v30);
    return 0;
  }

  return result;
}

uint64_t mfi_aead_open(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v23 = *MEMORY[0x29EDCA608];
  v11 = *(*a1 + 144);
  if (v11 > 0x10)
  {
    return 4294967291;
  }

  v20 = ccaes_ccm_decrypt_mode();
  result = ccccm_one_shot_internal(v20, a2, a3, a4, a5, a8, a9, a10, a6, a7, v11, v22);
  if (!result)
  {
    if (cc_cmp_safe_internal(*(*a1 + 144), a11, v22))
    {
      return 4294967294;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cche_encode_poly_uint64(unsigned int **a1, uint64_t a2, unsigned int a3, unint64_t *a4)
{
  v20 = timingsafe_enable_if_supported();
  v8 = cche_param_ctx_plaintext_ctx(a2);
  *a1 = v8;
  v9 = *v8;
  if (*v8 < a3)
  {
LABEL_11:
    v18 = 4294967289;
    goto LABEL_10;
  }

  v10 = cche_param_ctx_plaintext_modulus(a2);
  if (a3)
  {
    v11 = (a1 + 1);
    v12 = a3;
    do
    {
      v14 = *a4++;
      v13 = v14;
      if (v14 >= v10)
      {
        goto LABEL_11;
      }

      *v11++ = v13;
    }

    while (--v12);
  }

  if (v9 > a3)
  {
    v15 = a3;
    v16 = &a1[a3 + 1];
    do
    {
      ccn_seti(1, v16, 0);
      ++v15;
      OUTLINED_FUNCTION_5();
      ++v16;
    }

    while (v15 < v17);
  }

  v18 = 0;
LABEL_10:
  cc_disable_dit_with_sb(&v20);
  return v18;
}

uint64_t cche_encode_simd_uint64()
{
  v21 = OUTLINED_FUNCTION_0_1();
  v4 = cche_param_ctx_plaintext_ctx(v3);
  OUTLINED_FUNCTION_2_0(v4);
  if (!v5)
  {
LABEL_11:
    v19 = 4294967289;
    goto LABEL_12;
  }

  v6 = cche_param_ctx_plaintext_modulus(v3);
  v7 = cche_param_ctx_plaintext_ctx(v3);
  v8 = cche_param_ctx_polynomial_degree(v3);
  v9 = (sizeof_struct_ccpolyzp_po2cyc_ctx() + 7) >> 3;
  OUTLINED_FUNCTION_4();
  sizeof_struct_ccrns_mul_modulus();
  OUTLINED_FUNCTION_3();
  v11 = 16 * (v10 + v8) + 8 * v9;
  if (v1)
  {
    v12 = v1;
    v13 = (v11 + v7 + 48);
    do
    {
      v15 = *v13++;
      v14 = v15;
      v16 = *v2++;
      v0[v14 + 1] = v16;
      if (v16 >= v6)
      {
        goto LABEL_11;
      }
    }

    while (--v12);
  }

  if (**v0 > v1)
  {
    v17 = v1;
    do
    {
      OUTLINED_FUNCTION_1_0();
      ++v17;
      OUTLINED_FUNCTION_5();
    }

    while (v17 < v18);
  }

  v19 = ccpolyzp_po2cyc_inv_ntt(v0);
LABEL_12:
  cc_disable_dit_with_sb(&v21);
  return v19;
}

uint64_t cche_encode_simd_int64()
{
  v25 = OUTLINED_FUNCTION_0_1();
  v4 = cche_param_ctx_plaintext_ctx(v3);
  v5 = OUTLINED_FUNCTION_2_0(v4);
  if (!v6)
  {
LABEL_18:
    v22 = 4294967289;
    goto LABEL_17;
  }

  v7 = *(v5 + 16);
  v24 = cche_param_ctx_plaintext_ctx(v3);
  v8 = cche_param_ctx_polynomial_degree(v3);
  v9 = (sizeof_struct_ccpolyzp_po2cyc_ctx() + 7) >> 3;
  OUTLINED_FUNCTION_4();
  if (v6)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  v12 = 16 * (((sizeof_struct_ccrns_mul_modulus() + 7) >> 3) * v11 + v8) + 8 * v9;
  if (v1)
  {
    v13 = (v12 + v24 + 48);
    v14 = v1;
    do
    {
      v16 = *v2++;
      v15 = v16;
      if (v16 > (v7 - 1) >> 1 || v15 < -(v7 >> 1))
      {
        goto LABEL_18;
      }

      v18 = ccpolyzp_po2cyc_centered_to_rem(v15, v7);
      v19 = *v13++;
      v0[v19 + 1] = v18;
    }

    while (--v14);
  }

  if (**v0 > v1)
  {
    v20 = v1;
    do
    {
      OUTLINED_FUNCTION_1_0();
      ++v20;
      OUTLINED_FUNCTION_5();
    }

    while (v20 < v21);
  }

  v22 = ccpolyzp_po2cyc_inv_ntt(v0);
LABEL_17:
  cc_disable_dit_with_sb(&v25);
  return v22;
}

uint64_t cche_encode_simd_reduced_int64()
{
  v22 = OUTLINED_FUNCTION_0_1();
  v4 = cche_param_ctx_plaintext_ctx(v3);
  OUTLINED_FUNCTION_2_0(v4);
  if (!v5)
  {
LABEL_15:
    v20 = 4294967289;
    goto LABEL_14;
  }

  v6 = cche_param_ctx_plaintext_ctx(v3);
  v7 = *(v6 + 4);
  while (--v7)
  {
    v6 = *(v6 + 112);
  }

  v8 = cche_param_ctx_plaintext_ctx(v3);
  v9 = cche_param_ctx_polynomial_degree(v3);
  v10 = (sizeof_struct_ccpolyzp_po2cyc_ctx() + 7) >> 3;
  OUTLINED_FUNCTION_4();
  sizeof_struct_ccrns_mul_modulus();
  OUTLINED_FUNCTION_3();
  v12 = 16 * (v11 + v9) + 8 * v10;
  if (v1)
  {
    v13 = v1;
    v14 = (v12 + v8 + 48);
    do
    {
      v15 = *v2++;
      v16 = ccpolyzp_po2cyc_int_to_rem(v15, (v6 + 16));
      if (v16 > *(v6 + 16))
      {
        goto LABEL_15;
      }

      v17 = *v14++;
      v0[v17 + 1] = v16;
    }

    while (--v13);
  }

  if (**v0 > v1)
  {
    v18 = v1;
    do
    {
      OUTLINED_FUNCTION_1_0();
      ++v18;
      OUTLINED_FUNCTION_5();
    }

    while (v18 < v19);
  }

  v20 = ccpolyzp_po2cyc_inv_ntt(v0);
LABEL_14:
  cc_disable_dit_with_sb(&v22);
  return v20;
}

uint64_t cche_decode_poly_uint64(unsigned int a1, uint64_t a2, void *a3)
{
  v12 = timingsafe_enable_if_supported();
  if (**a3 < a1)
  {
    v10 = 4294967289;
  }

  else if (a1)
  {
    v6 = *(*a3 + 16);
    v7 = a3[1];
    if (v7 >= v6)
    {
      v10 = 0xFFFFFFFFLL;
    }

    else
    {
      v8 = 0;
      do
      {
        v9 = v8;
        *(a2 + 8 * v8) = v7;
        if (a1 - 1 == v8)
        {
          break;
        }

        v7 = a3[v8++ + 2];
      }

      while (v7 < v6);
      if (v9 + 1 >= a1)
      {
        v10 = 0;
      }

      else
      {
        v10 = 0xFFFFFFFFLL;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t cche_decode_simd_uint64_ws(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t *a4, unsigned int **a5)
{
  v5 = *a5;
  v6 = **a5;
  if (v6 < a3)
  {
    return 4294967289;
  }

  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = sizeof_struct_ccpolyzp_po2cyc();
  v15 = v13(a1, v5[1] * v6 + ((v14 + 7) >> 3));
  v16 = *a5;
  v17 = sizeof_struct_ccpolyzp_po2cyc();
  memmove(v15, a5, (v17 + 8 * v16[1] * *v16 + 7) & 0xFFFFFFFFFFFFFFF8);
  result = ccpolyzp_po2cyc_fwd_ntt(v15);
  if (!result)
  {
    v19 = *(*a5 + 2);
    v20 = cche_param_ctx_plaintext_ctx(a2);
    v21 = cche_param_ctx_polynomial_degree(a2);
    v22 = sizeof_struct_ccpolyzp_po2cyc_ctx();
    if (v21 >= 0x80)
    {
      v23 = 128;
    }

    else
    {
      v23 = v21;
    }

    v24 = sizeof_struct_ccrns_mul_modulus();
    if (a3)
    {
      v25 = a3;
      v26 = (16 * (((v24 + 7) >> 3) * v23 + v21) + 8 * ((v22 + 7) >> 3) + v20 + 48);
      while (1)
      {
        v27 = *v26++;
        v28 = *(v15 + v27 + 1);
        if (v28 >= v19)
        {
          break;
        }

        *a4++ = v28;
        if (!--v25)
        {
          goto LABEL_10;
        }
      }

      result = 0xFFFFFFFFLL;
    }

    else
    {
LABEL_10:
      result = 0;
    }
  }

  *(a1 + 16) = v12;
  return result;
}

uint64_t cche_decode_simd_int64_ws(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t *a4, unsigned int **a5)
{
  v6 = a4;
  LODWORD(v7) = a3;
  result = cche_decode_simd_uint64_ws(a1, a2, a3, a4, a5);
  if (!result)
  {
    if (v7)
    {
      v9 = *(*a5 + 2);
      v7 = v7;
      while (1)
      {
        v10 = ccpolyzp_po2cyc_rem_to_centered(*v6, v9);
        if (v10 > (v9 - 1) >> 1 || v10 < -(v9 >> 1))
        {
          break;
        }

        *v6++ = v10;
        if (!--v7)
        {
          return 0;
        }
      }

      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cche_dcrt_plaintext_encode(unsigned int **a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v25 = timingsafe_enable_if_supported();
  if (cche_param_ctx_ciphertext_ctx_nmoduli(a3) < a4)
  {
    v21 = 4294967289;
  }

  else
  {
    v8 = *cche_param_ctx_plaintext_ctx(a3);
    v9 = cche_param_ctx_plaintext_ctx(a3);
    v10 = cche_param_ctx_polynomial_degree(a3);
    v11 = sizeof_struct_ccpolyzp_po2cyc_ctx() + 7;
    OUTLINED_FUNCTION_4();
    sizeof_struct_ccrns_mul_modulus();
    OUTLINED_FUNCTION_3();
    v13 = v12 + v10;
    v14 = v11 & 0xFFFFFFFFFFFFFFF8;
    v15 = (4 * v8 + 7) & 0x7FFFFFFF8;
    v16 = cche_param_ctx_chain_const(a3);
    v17 = cche_decrypt_ctx_nof_n((v16 + 8));
    v18 = v17;
    if (a4 < 2)
    {
      v20 = v9 + v14 + 16 * v13 + v15 + 8 * v17 + 48;
    }

    else
    {
      v19 = sizeof_struct_cche_cipher_plain_ctx();
      v20 = v9 + (((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 32) * (a4 - 2) + 16 * v13 + 16 * (((a4 - 3) * (a4 - 2)) >> 1) + 8 * v18 + ((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + v14 + v15 + 64;
    }

    v23[1] = 0;
    v23[2] = 0;
    v23[0] = cc_malloc_clear(0);
    v23[3] = cc_ws_alloc;
    v24 = cc_ws_free;
    if (v23[0])
    {
      v21 = cche_dcrt_plaintext_encode_ws(v23, a1, a2, v20);
      v24(v23);
    }

    else
    {
      v21 = 4294967283;
    }
  }

  cc_disable_dit_with_sb(&v25);
  return v21;
}

uint64_t cckem_mlkem1024_export_pubkey()
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

uint64_t cckem_mlkem1024_import_pubkey()
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

uint64_t cckem_mlkem1024_export_privkey()
{
  OUTLINED_FUNCTION_0_2();
  v4 = (cckem_public_ctx)();
  if (v3 < cckem_privkey_nbytes_ctx(v4))
  {
    return 4294967289;
  }

  v5 = cckem_public_ctx(v1);
  v6 = cckem_privkey_nbytes_ctx(v5);
  *v2 = v6;
  memcpy(v0, (v1 + *(*v1 + 16) + 8), v6);
  return 0;
}

uint64_t cckem_mlkem1024_import_privkey()
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

uint64_t ccentropy_add_entropy_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  v5 = *(*a1 + 8);
  if (v5)
  {
    return v5();
  }

  else
  {
    return 4294967123;
  }
}

uint64_t ccentropy_add_entropy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v13 = timingsafe_enable_if_supported();
  if (a5)
  {
    *a5 = 0;
  }

  v10 = *(*a1 + 8);
  if (v10)
  {
    v11 = v10(a1, a2, a3, a4, a5);
  }

  else
  {
    v11 = 4294967123;
  }

  cc_disable_dit_with_sb(&v13);
  return v11;
}

uint64_t ccentropy_reset(uint64_t a1)
{
  v1 = *(*a1 + 16);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 4294967123;
  }
}

uint64_t ccspake_prover_init_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = ccspake_sizeof_ctx(a2);
  cc_clear(v16, a1);
  if (*a2)
  {
    return 4294967289;
  }

  v17 = ccspake_sizeof_w(a2);
  if (a5 > 0x14 || v17 != a7)
  {
    return 4294967289;
  }

  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 32) = a5;
  *(a1 + 24) = 1;
  *(a1 + 60) = CCSPAKE_STATE_INIT;
  if (a5)
  {
    v17 = __memcpy_chk();
  }

  v20 = (*(a2 + 8))(v17);
  (*(*a1 + 8))();
  result = ccec_generate_scalar_fips_extrabits(v20, a7, a8, (a1 + 336));
  if (!result)
  {
    v21 = (*(*a1 + 8))();
    result = ccec_generate_scalar_fips_extrabits(v20, a7, a9, (a1 + 336 + 8 * *v21));
    if (!result)
    {
      ccspake_transcript_init(a1);
      return 0;
    }
  }

  return result;
}

uint64_t ccspake_prover_initialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char *a6, size_t a7, char *a8, size_t a9, char *a10, unint64_t a11, uint64_t a12, uint64_t a13)
{
  v28 = timingsafe_enable_if_supported();
  if (!*a2)
  {
    if (!(a8 | a10))
    {
      inited = ccspake_prover_init_internal(a1, a2, a3, a4, a5, a6, a11, a12, a13);
LABEL_11:
      v24 = inited;
      goto LABEL_9;
    }

LABEL_8:
    v24 = 4294967289;
    goto LABEL_9;
  }

  if (!a5 || ccspake_sizeof_w(a2) != a11)
  {
    goto LABEL_8;
  }

  v19 = ccspake_sizeof_ctx(a2);
  v20 = cc_clear(v19, a1);
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 32) = 0;
  *(a1 + 24) = 1;
  *(a1 + 60) = CCSPAKE_STATE_INIT;
  v21 = *(*(a2 + 8))(v20);
  (*(*a1 + 8))();
  inited = ccn_read_uint_internal(v21, a1 + 336, a11, a12);
  if (inited)
  {
    goto LABEL_11;
  }

  v23 = (*(*a1 + 8))();
  inited = ccn_read_uint_internal(v21, a1 + 336 + 8 * *v23, a11, a13);
  if (inited)
  {
    goto LABEL_11;
  }

  ccspake_transcript_init(a1);
  ccspake_transcript_begin(a1, a5, a6, a7, a8, a9, a10);
  v24 = 0;
LABEL_9:
  cc_disable_dit_with_sb(&v28);
  return v24;
}

uint64_t ccecies_encrypt_gcm_encrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 16);
  if (*(v8 + 8) != 4073947)
  {
    return 4294967291;
  }

  v30 = a8;
  v31 = a7;
  v32 = &v30;
  MEMORY[0x2A1C7C4A8](a1);
  v14 = &v30 - v13;
  v15 = OUTLINED_FUNCTION_0_3();
  inited = ccgcm_init_internal(v15);
  v17 = OUTLINED_FUNCTION_0_3();
  v20 = ccgcm_set_iv_internal(v17, v18, 16, v19) | inited;
  if (a3 && a4)
  {
    v21 = OUTLINED_FUNCTION_0_3();
    v20 |= ccgcm_aad_internal(v21, v22, a3, a4);
  }

  v23 = OUTLINED_FUNCTION_0_3();
  v25 = ccgcm_update_internal(v23, v24, a5, a6, v31) | v20;
  if (!v25)
  {
    v26 = OUTLINED_FUNCTION_0_3();
    v25 = ccgcm_finalize_internal(v26, v27, v28, v30);
  }

  cc_clear(*v8, v14);
  return v25;
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

uint64_t ccec_export_affine_point(uint64_t *a1, int a2, uint64_t *a3, unint64_t *a4, char *a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = ccec_export_affine_point_public_value(a1, a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t ccmldsa_sign_prehashed(int32x4_t **a1, uint64_t a2, void *a3, uint64_t a4, _OWORD *a5, uint64_t (**a6)(void, uint64_t, _BYTE *))
{
  v17 = *MEMORY[0x29EDCA608];
  v15 = timingsafe_enable_if_supported();
  if (a4 == 64)
  {
    v12 = (*a6)(a6, 32, v16);
    if (!v12)
    {
      v12 = ccmldsa_sign_prehashed_internal(*a1, (a1 + (*a1)[4].i64[1] + 8), a2, a3, a5, v16);
    }

    v13 = v12;
    cc_clear(0x20uLL, v16);
  }

  else
  {
    v13 = 4294967289;
  }

  cc_disable_dit_with_sb(&v15);
  return v13;
}

uint64_t ccmldsa_sign_internal(int32x4_t *a1, _OWORD *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = *MEMORY[0x29EDCA608];
  if (a7 > 0xFF)
  {
    return 4294967289;
  }

  ccmldsa_compute_mu(a1, v15, (a2 + 4), a5, a6, a7, a8);
  v13 = ccmldsa_sign_prehashed_internal(a1, a2, a3, a4, v15, a9);
  cc_clear(0x40uLL, v15);
  return v13;
}

uint64_t ccmldsa_prehash_with_context(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v18[8] = *MEMORY[0x29EDCA608];
  v17 = timingsafe_enable_if_supported();
  v14 = 4294967289;
  if (a2 == 64 && a6 <= 0xFF)
  {
    v15 = *a1;
    cckeccak_oneshot((320 * *(*a1 + 4)) | 0x20u, a1 + 8, 0x40uLL, v18, 0x88uLL, 0x1Fu);
    ccmldsa_compute_mu(v15, a3, v18, a4, a5, a6, a7);
    cc_clear(0x40uLL, v18);
    v14 = 0;
  }

  cc_disable_dit_with_sb(&v17);
  return v14;
}

uint64_t ccss_shamir_share_bag_add_share(uint64_t a1, uint64_t a2)
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

  v16 = v9;
  if (*(a1 + 8) >= **a1)
  {
    v14 = 4294967170;
  }

  else
  {
    v10 = ccss_shamir_consistent_primes(*a1 + 8, *a2);
    if (v10)
    {
      v14 = v10;
    }

    else if (*(a1 + 8))
    {
      v11 = 0;
      while (1)
      {
        v12 = *(a2 + 8);
        if (v12 == ccss_shamir_share_bag_copy_ith_share_x(a1, v11))
        {
          break;
        }

        ++v11;
        v13 = *(a1 + 8);
        if (v11 >= v13)
        {
          goto LABEL_14;
        }
      }

      v14 = 4294967169;
    }

    else
    {
      v13 = 0;
LABEL_14:
      v14 = ccss_shamir_share_bag_set_ith_share(a1, v13, a2);
      if (!v14)
      {
        ++*(a1 + 8);
      }
    }
  }

  cc_disable_dit(&v16);
  return v14;
}

uint64_t ccdh_pairwise_consistency_check_ws(uint64_t a1, void *a2, unsigned int (**a3)(void, uint64_t, uint64_t *), void *a4)
{
  v7 = cczp_n(a2);
  v8 = *(a1 + 16);
  v9 = (*(a1 + 24))(a1, v7);
  v10 = (*(a1 + 24))(a1, 2 * v7 + 2);
  v11 = ccdh_ctx_public(v10);
  ccdh_ctx_init(a2, v11);
  v12 = &v10[ccdh_gp_n(*v10) + 2];
  ccn_set(1, v12, &REF_X);
  ccn_zero(v7 - 1, (v12 + 8));
  v13 = ccdh_gp_g(a2);
  v14 = ccdh_gp_n(*v10);
  if (cczp_power_fast_ws(a1, a2, v10 + 2, v13, &v10[v14 + 2]))
  {
    v22 = 4294967242;
  }

  else
  {
    v24 = v8;
    v15 = ccdh_ccn_size(a2);
    v16 = (*(a1 + 24))(a1, v7);
    v17 = (*(a1 + 24))(a1, v7);
    cc_clear(v15, v16);
    cc_clear(v15, v17);
    v26 = v15;
    v18 = ccdh_ctx_public(v10);
    ccdh_compute_shared_secret_ws(a1, a4, v18, &v26, v16, a3);
    if (v19 || (v20 = ccdh_gp_n(*v10), cczp_power_fast_ws(a1, a2, v9, a4 + 2, &v10[v20 + 2])))
    {
      v22 = 4294967242;
      v8 = v24;
    }

    else
    {
      v21 = ccn_write_uint_size_public_value(v7, v9);
      ccn_write_uint_padded_internal(v7, v9, v21, v17);
      v22 = 4294967242;
      v8 = v24;
      if (v26 == v21)
      {
        if (cc_cmp_safe_internal(v21, v16, v17))
        {
          v22 = 4294967242;
        }

        else
        {
          v22 = 0;
        }
      }
    }
  }

  *(a1 + 16) = v8;
  return v22;
}

uint64_t ccecies_import_eph_pub_ws(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = *(a3 + 32);
  v6 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if ((((cczp_bitlen(a2) + 7) >> 2) | 1) <= a4)
    {
      v8 = OUTLINED_FUNCTION_0_4();
      result = ccec_x963_import_pub_ws(v8, v9, v10, v11, v12);
      goto LABEL_8;
    }

LABEL_9:
    result = 4294967289;
    goto LABEL_8;
  }

  if ((v5 & 4) != 0)
  {
    if ((cczp_bitlen(a2) + 7) >> 3 <= a4)
    {
      v13 = OUTLINED_FUNCTION_0_4();
      result = ccec_compact_import_pub_ws(v13, v14, v15, v16, v17);
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  result = 4294967291;
LABEL_8:
  *(a1 + 16) = v6;
  return result;
}

void ccsrp_generate_client_S_ws(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = ccdh_gp_n(a2[1]);
  v41 = *(a1 + 16);
  v11 = (*(a1 + 24))(a1);
  v12 = OUTLINED_FUNCTION_0_5();
  v14 = v13(v12);
  v15 = OUTLINED_FUNCTION_0_5();
  v40 = a5;
  ccn_mul_ws(v15, v16, v11, a6, a5);
  v17 = a2 + 4;
  ccdh_gp_n(a2[1]);
  v18 = OUTLINED_FUNCTION_0_5();
  v38 = ccn_add_ws(v18, v19, v11, v20, v11);
  v21 = **a2;
  v22 = 4;
  if ((a2[3] & 0x1C0) == 0)
  {
    v22 = **a2;
  }

  v23 = 8 * (v22 + v21);
  private_key_bitlen = ccdh_generate_private_key_bitlen(a2[1]);
  v25 = ccdh_gp_n(a2[1]);
  v26 = ccdh_gp_n(a2[1]);
  if (ccn_bitlen_internal(v25, &v17[v26]) > private_key_bitlen)
  {
    private_key_bitlen = cczp_bitlen(a2[1]);
  }

  if (v23 <= private_key_bitlen)
  {
    v23 = ccdh_generate_private_key_bitlen(a2[1]);
    v27 = ccdh_gp_n(a2[1]);
    v28 = ccdh_gp_n(a2[1]);
    if (ccn_bitlen_internal(v27, &v17[v28]) > v23)
    {
      v23 = cczp_bitlen(a2[1]);
    }
  }

  v29 = v23 + 1;
  if (v29 >= cczp_bitlen(a2[1]))
  {
    v30 = OUTLINED_FUNCTION_0_5();
    ccn_add1_ws(v30, v31, v32, v32, v38);
    v33 = ccdh_gp_prime(a2[1]);
    ccn_sub1(v10, v14, v33, 1uLL);
    ccn_divmod_ws(a1, 2 * v10, v11, 0, 0, v10, v11, v14);
    v29 = cczp_bitlen(a2[1]);
  }

  v35 = a2[1];
  v34 = a2[2];
  v36 = ccdh_gp_g(v35);
  ccdh_power_blinded_ws(a1, v34, v35, v14, v36, 8 * v21, v40);
  if (!v37)
  {
    if ((a2[3] & 0x1C0) == 0)
    {
      cczp_mul_ws(a1, a2[1]);
    }

    cczp_sub_ws(a1, a2[1]);
    ccdh_power_blinded_ws(a1, a2[2], a2[1], a3, v14, v29, v11);
  }

  *(a1 + 16) = v41;
}

uint64_t cche_param_ctx_init_ws(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if ((*a3 - 3) < 0xFFFFFFFE)
  {
    return 4294967289;
  }

  v5 = *(a3 + 28);
  if (v5)
  {
    v6 = (a3 + 32);
    v7 = *(a3 + 28);
    do
    {
      v8 = *v6++;
      if (*(a3 + 8) >= v8)
      {
        return 4294967289;
      }
    }

    while (--v7);
  }

  if (cche_ciphertext_fresh_npolys() != 2)
  {
    return 4294967289;
  }

  v9 = 63 - __clz(*(a3 + 32));
  if (*(a3 + 20) > v9 || *(a3 + 24) > v9)
  {
    return 4294967289;
  }

  v52[0] = *(a3 + 16);
  v52[1] = v5;
  v51[0] = v52[0];
  v51[1] = 1;
  sizeof_struct_cche_cipher_plain_ctx();
  sizeof_struct_ccpolyzp_po2cyc();
  OUTLINED_FUNCTION_0_6();
  memcpy(a2, a3, 8 * v11);
  sizeof_struct_cche_cipher_plain_ctx();
  sizeof_struct_ccpolyzp_po2cyc();
  OUTLINED_FUNCTION_0_6();
  v13 = &a2[2 * v12];
  result = ccpolyzp_po2cyc_ctx_chain_init_ws(a1, v13, v52, (a3 + 32));
  if (!result)
  {
    if (*(v13 + 16) != 1)
    {
      return 4294967289;
    }

    v14 = cche_param_ctx_plaintext_ctx(a2);
    result = ccpolyzp_po2cyc_ctx_init_ws(a1, v14, v51, (a3 + 8), 0);
    if (!result)
    {
      v15 = *cche_param_ctx_plaintext_ctx(a2);
      v16 = cche_param_ctx_plaintext_ctx(a2);
      v17 = a2[4];
      v18 = sizeof_struct_ccpolyzp_po2cyc_ctx();
      if (v17 >= 0x80)
      {
        v19 = 128;
      }

      else
      {
        v19 = v17;
      }

      v20 = sizeof_struct_ccrns_mul_modulus();
      if (v15 >= 2)
      {
        v21 = __clz(v15) + 1;
        v22 = (16 * (v17 + ((v20 + 7) >> 3) * v19) + 8 * ((v18 + 7) >> 3) + v16 + 48);
        v23 = 1;
        v24 = v15 >> 1;
        do
        {
          *v22 = __rbit32((v23 - 1) >> 1) >> v21;
          v22[v15 >> 1] = __rbit32((2 * v15 + ~v23) >> 1) >> v21;
          v23 = (3 * v23) & (2 * v15 - 1);
          ++v22;
          --v24;
        }

        while (v24);
        v17 = a2[4];
        if (v17 >= 0x80)
        {
          v19 = 128;
        }

        else
        {
          v19 = v17;
        }
      }

      v25 = cche_param_ctx_plaintext_ctx(a2);
      v26 = *v25;
      v27 = sizeof_struct_ccpolyzp_po2cyc_ctx() + 7;
      v28 = sizeof_struct_ccrns_mul_modulus();
      result = cche_decrypt_ctx_init_ws(a1, (&v25[4 * v17 + 12 + 4 * ((v28 + 7) >> 3) * v19] + (v27 & 0xFFFFFFFFFFFFFFF8) + ((4 * v26 + 7) & 0x7FFFFFFF8)), a2);
      if (!result)
      {
        if (*(a3 + 28))
        {
          v48 = v13 + 2;
          v49 = v13;
          v29 = 1;
          for (i = -1; ; --i)
          {
            v31 = cche_param_ctx_plaintext_ctx(a2);
            v32 = *v31;
            v33 = a2[4];
            v34 = sizeof_struct_ccpolyzp_po2cyc_ctx() + 7;
            v35 = v33 >= 0x80 ? 128 : v33;
            v36 = v33 + ((sizeof_struct_ccrns_mul_modulus() + 7) >> 3) * v35;
            v37 = v34 & 0xFFFFFFFFFFFFFFF8;
            v38 = (4 * v32 + 7) & 0x7FFFFFFF8;
            sizeof_struct_cche_cipher_plain_ctx();
            sizeof_struct_ccpolyzp_po2cyc();
            OUTLINED_FUNCTION_0_6();
            v40 = cche_decrypt_ctx_nof_n(&a2[2 * v39 + 2]);
            v41 = v40;
            if (v29 < 2)
            {
              v43 = &v31[4 * v36 + 12 + 2 * v40] + v37 + v38;
            }

            else
            {
              v42 = sizeof_struct_cche_cipher_plain_ctx();
              v43 = &v31[4 * v36 + 16 + 4 * (((v29 - 3) * (v29 - 2)) >> 1) + 2 * v41] + (((v42 + 7) & 0xFFFFFFFFFFFFFFF8) + 32) * (v29 - 2) + ((v42 + 7) & 0xFFFFFFFFFFFFFFF8) + v37 + v38;
            }

            v44 = *v49;
            v45 = (sizeof_struct_ccpolyzp_po2cyc_ctx() + 7) >> 3;
            v46 = v44 >= 0x80 ? 128 : v44;
            v47 = sizeof_struct_ccrns_mul_modulus();
            result = cche_cipher_plain_ctx_init_ws(a1, v43, a2, &v48[2 * (v45 + 2 * (v44 + ((v47 + 7) >> 3) * v46) + 6) * (i + v49[1])]);
            if (result)
            {
              break;
            }

            if (++v29 > *(a3 + 28))
            {
              return 0;
            }
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t cche_param_ctx_init(unsigned int *a1, int a2, unsigned int a3)
{
  v18 = timingsafe_enable_if_supported();
  v6 = cche_encrypt_params_get(a3);
  if (v6)
  {
    v7 = v6;
    v8 = CCHE_PARAM_CTX_INIT_WORKSPACE_N(*(v6 + 28));
    v16[0] = cc_malloc_clear(8 * v8);
    v9 = v7[7];
    v16[1] = CCHE_PARAM_CTX_INIT_WORKSPACE_N(v9);
    v16[2] = 0;
    v16[3] = cc_ws_alloc;
    v17 = cc_ws_free;
    if (v16[0])
    {
      v12 = sizeof_struct_cche_cipher_plain_ctx();
      v13 = sizeof_struct_ccpolyzp_po2cyc();
      v14 = cc_ws_alloc(v16, (v12 + 8 * v9 + v13 - 1) / v13);
      sizeof_struct_cche_cipher_plain_ctx();
      sizeof_struct_ccpolyzp_po2cyc();
      OUTLINED_FUNCTION_0_6();
      memcpy(v14, v7, 8 * v15);
      *v14 = a2;
      inited = cche_param_ctx_init_ws(v16, a1, v14);
      v17(v16);
    }

    else
    {
      inited = 4294967283;
    }
  }

  else
  {
    inited = 4294967289;
  }

  cc_disable_dit_with_sb(&v18);
  return inited;
}

uint64_t cche_param_ctx_sizeof(unsigned int a1)
{
  result = cche_encrypt_params_get(a1);
  if (result)
  {
    v2 = cche_param_ctx_nof_n(result);
    return sizeof_struct_ccpolyzp_po2cyc() * v2;
  }

  return result;
}

uint64_t cche_param_ctx_plaintext_modulus_inverse_ws(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11[1] = *MEMORY[0x29EDCA608];
  v7 = cche_param_ctx_plaintext_ctx(a3);
  v8 = *(v7 + 4);
  while (--v8)
  {
    v7 = *(v7 + 112);
  }

  v11[0] = a4;
  cczp_modn_ws(a1, (v7 + 120), v11, 1, v11);
  result = cczp_inv_ws(a1, v7 + 120);
  if (!result)
  {
    *a2 = v10;
  }

  return result;
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

uint64_t ccec_projectify_homogeneous_ws(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned int (**a5)(void, unint64_t, uint64_t))
{
  v9 = cczp_n(a2);
  v10 = *(a1 + 16);
  v11 = (a3 + 16 * *a2);
  v12 = OUTLINED_FUNCTION_0_8();
  cczp_to_ws(v12, v13);
  v14 = OUTLINED_FUNCTION_0_8();
  cczp_to_ws(v14, v15);
  if (!a5)
  {
    ccn_seti(v9, v11, 1);
    v23 = OUTLINED_FUNCTION_0_8();
    cczp_to_ws(v23, v24);
    goto LABEL_5;
  }

  v16 = OUTLINED_FUNCTION_0_8();
  result = cczp_generate_non_zero_element_ws(v16, v17, a5, v11);
  if (!result)
  {
    v19 = OUTLINED_FUNCTION_0_8();
    cczp_mul_ws(v19, v20);
    v21 = OUTLINED_FUNCTION_0_8();
    cczp_mul_ws(v21, v22);
LABEL_5:
    result = 0;
  }

  *(a1 + 16) = v10;
  return result;
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

uint64_t cchpke_initiator_setup_deterministic(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, size_t a10, const void *a11, uint64_t a12, uint64_t a13)
{
  v27 = *MEMORY[0x29EDCA608];
  if (a10 > 0x40 || *(*(a2 + 16) + 8) != a12)
  {
    return 4294967289;
  }

  cc_clear(0x60uLL, a1);
  *a1 = a2;
  v22 = *(a2 + 16);
  v23 = *(v22 + 8);
  v24 = *(v22 + 16);
  if (a4 && a5 && a6 && a7)
  {
    result = (*(v22 + 64))(a2, a4, a5, a6, a7, a8, a9, v24, v26, v23, a13);
  }

  else
  {
    result = (*(v22 + 56))(a2, a3, a8, a9, v24, v26, v23, a13);
  }

  if (!result)
  {
    return cchpke_encryption_context_init(a2, (a1 + 1), *(*(a2 + 16) + 16), v26, a10, a11);
  }

  return result;
}

uint64_t cchpke_encryption_context_init(uint64_t a1, uint64_t a2, size_t a3, char *a4, size_t a5, const void *a6)
{
  v37 = *MEMORY[0x29EDCA608];
  v12 = *(*a1 + 8);
  v35[32] = 0;
  result = cchpke_labeled_extract(a1, 0, 0, 0, 0xBuLL, &HPKE_PSK_ID_LABEL, 0, 0, v36);
  if (!result)
  {
    result = cchpke_labeled_extract(a1, 0, 0, 0, 9uLL, &HPKE_INFO_LABEL, a5, a6, &v36[*(*a1 + 8)]);
    if (!result)
    {
      result = cchpke_labeled_extract(a1, 0, a3, a4, 6uLL, &HPKE_SECRET_LABEL, 0, 0, v35);
      if (!result)
      {
        v32 = *(*(a1 + 8) + 8);
        v14 = OUTLINED_FUNCTION_1_2();
        result = cchpke_labeled_expand(v14, v15, v16, v17, 3uLL, v18, (2 * v12) | 1, v19, v32, a2);
        if (!result)
        {
          v33 = *(*(a1 + 8) + 24);
          v20 = OUTLINED_FUNCTION_1_2();
          result = cchpke_labeled_expand(v20, v21, v22, v23, 0xAuLL, v24, (2 * v12) | 1, v25, v33, a2 + 32);
          if (!result)
          {
            v34 = *(*a1 + 8);
            v26 = OUTLINED_FUNCTION_1_2();
            return cchpke_labeled_expand(v26, v27, v28, v29, 3uLL, v30, (2 * v12) | 1, v31, v34, a2 + 48);
          }
        }
      }
    }
  }

  return result;
}

uint64_t cchpke_initiator_setup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_0_9();
  v23 = timingsafe_enable_if_supported();
  OUTLINED_FUNCTION_4_0();
  v21 = cchpke_initiator_setup_deterministic(v14, v15, v16, v17, v18, v19, v20, v13, v12, v11, v10, v9, a9);
  cc_disable_dit_with_sb(&v23);
  return v21;
}

uint64_t cchpke_responder_setup_internal(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5, const void *a6, uint64_t a7, uint64_t a8)
{
  v18 = *MEMORY[0x29EDCA608];
  if (a5 > 0x40 || *(*(a2 + 16) + 8) != a7)
  {
    return 4294967289;
  }

  cc_clear(0x60uLL, a1);
  *a1 = a2;
  result = (*(*(a2 + 16) + 72))(a2, *(*(a2 + 16) + 8), a8, a3, a4, *(*(a2 + 16) + 16), v17);
  if (!result)
  {
    return cchpke_encryption_context_init(a2, (a1 + 1), *(*(a2 + 16) + 16), v17, a5, a6);
  }

  return result;
}

uint64_t cchpke_initiator_seal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_0_9();
  v32 = *MEMORY[0x29EDCA608];
  v30 = timingsafe_enable_if_supported();
  memset(v31, 0, sizeof(v31));
  OUTLINED_FUNCTION_4_0();
  v28 = cchpke_initiator_setup_deterministic(v21, v22, v23, v24, v25, v26, v27, v20, v19, v18, v17, a14, a15);
  if (!v28)
  {
    v28 = cchpke_initiator_encrypt_internal(v31, v16, v15, a9, a10, a11, a12, a13);
    cc_clear(0x60uLL, v31);
  }

  cc_disable_dit_with_sb(&v30);
  return v28;
}

uint64_t cchpke_responder_open(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_0_9();
  v26 = *MEMORY[0x29EDCA608];
  v24 = timingsafe_enable_if_supported();
  memset(v25, 0, sizeof(v25));
  v22 = cchpke_responder_setup_internal(v25, v21, v20, v19, v18, v17, a12, a13);
  if (!v22)
  {
    v22 = cchpke_responder_decrypt_internal(v25, v16, v15, v14, a9, a10, a11, a14);
    cc_clear(0x60uLL, v25);
  }

  cc_disable_dit_with_sb(&v24);
  return v22;
}

uint64_t cchpke_responder_export()
{
  v12 = OUTLINED_FUNCTION_3_0();
  if (v0 > 0x40)
  {
    v8 = 4294967289;
  }

  else
  {
    v1 = OUTLINED_FUNCTION_5_0();
    v8 = OUTLINED_FUNCTION_2_1(v1, v2, v3, v4, v5, &HPKE_SEC_LABEL, v6, v7, v10, v11);
  }

  cc_disable_dit_with_sb(&v12);
  return v8;
}

uint64_t cchpke_initiator_export()
{
  v12 = OUTLINED_FUNCTION_3_0();
  if (v0 > 0x40)
  {
    v8 = 4294967289;
  }

  else
  {
    v1 = OUTLINED_FUNCTION_5_0();
    v8 = OUTLINED_FUNCTION_2_1(v1, v2, v3, v4, v5, &HPKE_SEC_LABEL, v6, v7, v10, v11);
  }

  cc_disable_dit_with_sb(&v12);
  return v8;
}

double cchpke_kem_x25519_generate_key_pair(uint64_t (**a1)(void, uint64_t, void *), uint64_t a2, _OWORD *a3, uint64_t a4, _OWORD *a5)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a2 == 32 && a4 == 32)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    if (!cccurve25519_make_key_pair_internal(a1, &v10, &v12))
    {
      v8 = v13;
      *a3 = v12;
      a3[1] = v8;
      result = *&v10;
      v9 = v11;
      *a5 = v10;
      a5[1] = v9;
    }
  }

  return result;
}

uint64_t cchpke_kem_x25519_encap(uint64_t a1, uint64_t (**a2)(void, uint64_t, void *), uint64_t a3, _OWORD *a4, uint64_t a5, void *a6, uint64_t a7, _OWORD *a8)
{
  v19 = *MEMORY[0x29EDCA608];
  result = 4294967289;
  if (a3 == 32 && a5 == 32 && a7 == 32)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    result = cccurve25519_make_key_pair_internal(a2, &v15, &v17);
    if (!result)
    {
      v14[0] = v17;
      v14[1] = v18;
      v13[0] = v15;
      v13[1] = v16;
      return cchpke_kem_x25519_encap_deterministic(a1, 32, v14, 32, v13, 32, a4, 32, a6, 32, a8);
    }
  }

  return result;
}

uint64_t cchpke_kem_x25519_encap_deterministic(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, _OWORD *a7, uint64_t a8, void *a9, uint64_t a10, _OWORD *a11)
{
  v20 = *MEMORY[0x29EDCA608];
  result = 4294967289;
  if (a4 == 32 && a2 == 32 && a6 == 32 && a8 == 32 && a10 == 32)
  {
    memset(v19, 0, sizeof(v19));
    result = cccurve25519_assumes_dit_internal();
    if (!result)
    {
      v15 = a5[1];
      *a11 = *a5;
      a11[1] = v15;
      v16 = a11[1];
      v18[0] = *a11;
      v18[1] = v16;
      v17 = a7[1];
      v18[2] = *a7;
      v18[3] = v17;
      return cchpke_extract_and_expand(a1, v19, v18, a9);
    }
  }

  return result;
}

uint64_t cchpke_kem_x25519_decap(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5, uint64_t a6, void *a7)
{
  v19 = *MEMORY[0x29EDCA608];
  result = 4294967289;
  if (a4 == 32 && a2 == 32 && a6 == 32)
  {
    v11 = a3[1];
    v17 = *a3;
    v18 = v11;
    v15 = 0u;
    v16 = 0u;
    result = cccurve25519_make_pub_internal(&v15, a5);
    if (!result)
    {
      v12 = a3[1];
      v14[0] = *a3;
      v14[1] = v12;
      v14[2] = v15;
      v14[3] = v16;
      memset(v13, 0, sizeof(v13));
      result = cccurve25519_assumes_dit_internal();
      if (!result)
      {
        return cchpke_extract_and_expand(a1, v13, v14, a7);
      }
    }
  }

  return result;
}

uint64_t cchpke_extract_and_expand(uint64_t a1, const void *a2, const void *a3, void *a4)
{
  v11 = *MEMORY[0x29EDCA608];
  v7 = cchpke_labeled_extract(a1, 1, 0, 0, 7uLL, &HPKE_EAE_LABEL, 0x20uLL, a2, v10);
  if (v7)
  {
    return v7;
  }

  v8 = cchpke_labeled_expand(a1, 1, *(*a1 + 8), v10, 0xDuLL, &HPKE_SHARED_SECRET_LABEL, 0x40uLL, a3, *(*(a1 + 16) + 16), a4);
  if (v8)
  {
    cc_clear(*(*(a1 + 16) + 16), a4);
  }

  cc_clear(0x20uLL, v10);
  return v8;
}

uint64_t cchpke_labeled_expand(unsigned __int16 **a1, int a2, rsize_t a3, uint64_t a4, size_t a5, const void *a6, size_t a7, const void *a8, unint64_t a9, uint64_t a10)
{
  *&v25[89] = *MEMORY[0x29EDCA608];
  if (a9 >> 16)
  {
    return 4294967289;
  }

  v23 = bswap32(a9) >> 16;
  qmemcpy(v24, "HPKE-v1", sizeof(v24));
  v17 = cchpke_suite_id(a1, a2, v25) + 9;
  memcpy(&v24[v17 - 2], a6, a5);
  v18 = v17 + a5;
  v19 = memcpy(&v24[v18 - 2], a8, a7);
  v20 = (*(*a1 + 3))(v19);
  v21 = cchkdf_expand_internal(v20, a3, a4, v18 + a7, &v23, a9, a10);
  cc_clear(0x61uLL, &v23);
  return v21;
}

uint64_t cchpke_kem_xwing_mlkem768x25519_generate_key_pair(unsigned int (**a1)(void, uint64_t, _BYTE *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[461] = *MEMORY[0x29EDCA608];
  v7 = cckem_xwing_mlkem768x25519();
  if (cckem_privkey_nbytes_info(v7) == a2 && cckem_pubkey_nbytes_info(v7) == a4)
  {
    cckem_full_ctx_init(v12, v7);
    if (!(*a1)(a1, 32, v11))
    {
      v8 = cckem_derive_key_from_seed_internal();
      cc_clear(0x20uLL, v11);
      if (!v8)
      {
        v9 = cckem_public_ctx(v12);
        if (!cckem_export_pubkey(v9) && !cckem_export_privkey_internal(v12))
        {
          cc_clear(0xE68uLL, v12);
          return 0;
        }
      }

      cc_clear(0xE68uLL, v12);
    }

    return 0xFFFFFFFFLL;
  }

  return 4294967289;
}

uint64_t cchpke_kem_xwing_mlkem768x25519_encap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15[153] = *MEMORY[0x29EDCA608];
  v12 = cckem_xwing_mlkem768x25519();
  if (cckem_encapsulated_key_nbytes_info(v12) != a7 || cckem_shared_key_nbytes_info(v12) != a5)
  {
    return 4294967289;
  }

  v13 = cckem_pubkey_nbytes_info(v12);
  result = 4294967289;
  if (a3 == 1216 && v13 == 1216)
  {
    cckem_import_pubkey(v12);
    return cckem_encapsulate_internal(v15, a7, a8, a5);
  }

  return result;
}

uint64_t cchpke_kem_xwing_mlkem768x25519_decap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13[461] = *MEMORY[0x29EDCA608];
  v10 = cckem_xwing_mlkem768x25519();
  if (cckem_encapsulated_key_nbytes_info(v10) != a2 || cckem_shared_key_nbytes_info(v10) != a6 || cckem_privkey_nbytes_info(v10) != a4)
  {
    return 4294967289;
  }

  cckem_full_ctx_init(v13, v10);
  v11 = cckem_import_privkey_internal(v10);
  if (!v11)
  {
    v11 = cckem_decapsulate_internal(v13, a2, a3, a6);
  }

  cc_clear(0xE68uLL, v13);
  return v11;
}

uint64_t cchpke_nonce(uint64_t a1, uint64_t a2, size_t a3, char *a4)
{
  if (*(*(a1 + 8) + 24) != a3)
  {
    return 4294967289;
  }

  bzero(a4, a3);
  *&a4[*(*(a1 + 8) + 24) - 8] = bswap64(*(a2 + 80));
  if (*(*(a1 + 8) + 24))
  {
    v7 = 0;
    do
    {
      a4[v7] ^= *(a2 + 32 + v7);
      ++v7;
    }

    while (v7 < *(*(a1 + 8) + 24));
  }

  return 0;
}

uint64_t ccpolyzp_po2cyc_ctx_init_ws(uint64_t a1, unsigned int *a2, unsigned int *a3, uint64_t *a4, uint64_t a5)
{
  v117[1] = *MEMORY[0x29EDCA608];
  v5 = vcnt_s8(*a3);
  v5.i16[0] = vaddlv_u8(v5);
  if (*a3 > 0x100000 || v5.i32[0] != 1)
  {
    return 4294967289;
  }

  v7 = a3[1];
  if (v7 - 1 > 9 || !a5 && v7 != 1)
  {
    return 4294967289;
  }

  v11 = *a3;
  *a2 = *a3;
  *(a2 + 14) = a5;
  v12 = a3[1];
  if (v12)
  {
    v13 = 0;
    while (1)
    {
      v14 = a4[v13];
      if (v14 < 0)
      {
        return 4294967289;
      }

      v15 = v13;
      v16 = a4;
      if (v13)
      {
        break;
      }

LABEL_15:
      if (++v13 == v12)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      v17 = *v16++;
      if (v14 == v17)
      {
        return 4294967289;
      }

      if (!--v15)
      {
        goto LABEL_15;
      }
    }
  }

LABEL_16:
  v18 = v12 - 1;
  LODWORD(v11) = HIDWORD(v11) - 1;
  v19 = a2;
  if (HIDWORD(v11) - 1 > v18)
  {
    v19 = a2;
    do
    {
      v19 = *(v19 + 14);
      LODWORD(v11) = v11 - 1;
    }

    while (v11 > v18);
  }

  result = ccpolyzp_po2cyc_modulus_to_cczp_ws(a1, v19 + 15, a4[v18]);
  if (result)
  {
    return result;
  }

  result = ccrns_modulus_init_ws(a1, a2 + 2, a4[v18]);
  if (result)
  {
    return result;
  }

  v21 = a2[1];
  *(a2 + 8) = 1;
  if (v21)
  {
    v22 = 0;
    v23 = *a2;
    v25 = *a2 < 0x100001 && (*a2 ^ (*a2 - 1)) > *a2 - 1;
    v26 = 2 * v23;
    v27 = 1;
    do
    {
      v28 = a2;
      if (v21 - 1 > v22)
      {
        v29 = v21 - 1;
        v28 = a2;
        do
        {
          v28 = *(v28 + 14);
          --v29;
        }

        while (v29 > v22);
      }

      v30 = v25 && *(v28 + 2) % v26 == 1;
      v27 &= v30;
      ++v22;
    }

    while (v22 != v21);
    *(a2 + 8) = v27;
    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v23 = *a2;
    LODWORD(v26) = 2 * *a2;
  }

  if (v23 >= 0x80)
  {
    v31 = 128;
  }

  else
  {
    v31 = v23;
  }

  v32 = sizeof_struct_ccrns_mul_modulus();
  v33.i32[0] = v26;
  v34 = vcnt_s8(v33);
  v34.i16[0] = vaddlv_u8(v34);
  if (v26 >= 0x100001 || v34.i32[0] != 1)
  {
    return 4294967289;
  }

  v36 = &a2[2 * v23 + 42 + 2 * ((v32 + 7) >> 3) * v31];
  v37 = cczp_prime((a2 + 30));
  OUTLINED_FUNCTION_0_10(v37, v38, v39, v40, v41, v42, v43, v44, &a2[2 * v23 + 42], &v36[2 * v23], v107, v108, v109, v110, v111);
  v45 = bswap64(v111);
  v46 = &qword_299DA4910;
  v47 = 25;
  while (*(v46 - 1) != v26 || *(v46 - 2) != v45)
  {
    v46 += 3;
    if (!--v47)
    {
      if ((v45 - 1) % v26)
      {
        return 4294967289;
      }

      ccn_seti(1, &__dst, 1);
      HIDWORD(v107) = -1;
      v48 = cczp_prime((a2 + 30));
      OUTLINED_FUNCTION_0_10(v48, v49, v50, v51, v52, v53, v54, v55, v105, v106, v107, v108, v109, v110, v111);
      v56 = bswap64(v111) - 1;
      if (v56 % v26)
      {
        return 4294967289;
      }

      v116 = v56 / v26;
      v57 = ccrng(&v107 + 1);
      result = HIDWORD(v107);
      if (!HIDWORD(v107))
      {
        v58 = v23 & 0x7FFFFFFF;
        v59 = 665;
        while (1)
        {
          result = cczp_generate_random_element_ws(a1, a2 + 15, v57, &__src);
          HIDWORD(v107) = result;
          if (result)
          {
            return result;
          }

          cczp_power_ws(a1, (a2 + 30), &__src, &__src, 64, &v116);
          if (ccn_n(1, &__src))
          {
            v108 = v58;
            v60 = cczp_prime((a2 + 30));
            OUTLINED_FUNCTION_0_10(v60, v61, v62, v63, v64, v65, v66, v67, v105, v106, v107, v108, v109, v110, v111);
            v117[0] = bswap64(v111) - 1;
            cczp_power_ws(a1, (a2 + 30), &v111, &__src, 64, &v108);
            if (!ccn_cmp_public_value(1, &v111, v117))
            {
              break;
            }
          }

          if (!--v59)
          {
            result = HIDWORD(v107);
            if (HIDWORD(v107))
            {
              return result;
            }

            goto LABEL_63;
          }
        }

        ccn_set(1, &__dst, &__src);
LABEL_63:
        v69 = __dst;
        v112 = 0u;
        v113 = 0u;
        v111 = 0u;
        result = ccrns_modulus_init_var_time_ws(a1, &v111, v45);
        if (result)
        {
          return result;
        }

        OUTLINED_FUNCTION_1_3();
        v108 = 0;
        v109 = 0;
        v110 = 0;
        result = ccrns_mul_modulus_init_ws(a1, &v108, v45, v72 + (v70 & v71));
        if (result)
        {
          return result;
        }

        if (v26)
        {
          v68 = v69;
          do
          {
            if (v69 < v68)
            {
              v68 = v69;
            }

            v73 = v109 * v69 + v108 * ~((v110 * v69) >> 64);
            v69 = v73 + ((v73 >> 63) & v108);
            LODWORD(v58) = v58 - 1;
          }

          while (v58);
        }

        else
        {
          v68 = v69;
        }

        goto LABEL_72;
      }

      return result;
    }
  }

  v68 = *v46;
LABEL_72:
  v117[0] = v68;
  v111 = 0uLL;
  *&v112 = 0;
  result = ccrns_mul_modulus_init_var_time_ws(a1, &v111, *(a2 + 2), v68);
  if (!result)
  {
    result = cczp_inv_field_ws(a1, (a2 + 30), &v116, v117);
    if (!result)
    {
      v109 = 0;
      v110 = 0;
      v108 = 0;
      result = ccrns_mul_modulus_init_var_time_ws(a1, &v108, *(a2 + 2), v116);
      if (!result)
      {
        *(a2 + 21) = 1;
        v74 = *a2;
        if (*a2 <= 1)
        {
          *v36 = 1;
        }

        else
        {
          v75 = __clz(v74) + 1;
          v76 = 1;
          do
          {
            v77 = __rbit32(v76) >> v75;
            OUTLINED_FUNCTION_1_3();
            v81 = v80 + (v78 & v79);
            *&a2[2 * v77 + 42] = v81;
            v74 = *a2;
            if (*a2 >= 0x80)
            {
              v82 = 128;
            }

            else
            {
              v82 = *a2;
            }

            if (v77 < v82)
            {
              result = ccrns_mul_modulus_init_var_time_ws(a1, (v105 + 24 * v77), *(a2 + 2), v81);
              if (result)
              {
                return result;
              }

              v74 = *a2;
            }

            ++v76;
          }

          while (v76 < v74);
          *v36 = 1;
          if (v74 >= 2)
          {
LABEL_85:
            if (v74 >= 2)
            {
              v83 = v74 >> 1;
              v84 = v74 >> 1;
              while (1)
              {
                v85 = __rbit32(v83) >> v75;
                OUTLINED_FUNCTION_1_3();
                v89 = v88 + (v86 & v87);
                *&v36[2 * v85] = v89;
                v90 = *a2 - 128;
                if (*a2 < 0x80)
                {
                  v90 = 0;
                }

                if (v85 >= v90)
                {
                  result = ccrns_mul_modulus_init_var_time_ws(a1, (v106 + 24 * (*a2 + ~v85)), *(a2 + 2), v89);
                  if (result)
                  {
                    return result;
                  }
                }

                ++v83;
                if (!--v84)
                {
                  v91 = v74 >= 4;
                  v74 >>= 1;
                  if (v91)
                  {
                    goto LABEL_85;
                  }

                  break;
                }
              }
            }

            v74 = *a2;
          }
        }

        v92 = *(a2 + 2);
        v93 = v92 * ~((*(a2 + 3) * v74) >> 64) + v74;
        __src = v93 + ((v93 >> 63) & v92);
        __dst = *a2;
        result = cczp_inv_field_ws(a1, (a2 + 30), &__dst, &__src);
        if (!result)
        {
          v94 = __dst;
          result = ccrns_mul_modulus_init_var_time_ws(a1, a2 + 11, *(a2 + 2), __dst);
          if (!result)
          {
            v95 = *&v36[2 * *a2 - 2];
            v96 = v95 * v94;
            v97 = (v95 * v94) >> 64;
            v98 = *(a2 + 4);
            v99 = (v96 * v98) >> 64;
            v100 = (v97 * v98) >> 64;
            v101 = v97 * v98;
            v91 = __CFADD__(v99, v101);
            v102 = v99 + v101;
            v103 = v91;
            v104 = v103 + __CFADD__(v96 * *(a2 + 5), v102) + v100 + *(a2 + 5) * v97 + ((v96 * *(a2 + 5)) >> 64);
            return ccrns_mul_modulus_init_var_time_ws(a1, a2 + 8, *(a2 + 2), v96 + *(a2 + 2) * ~v104 + (((v96 + *(a2 + 2) * ~v104) >> 63) & *(a2 + 2)));
          }
        }
      }
    }
  }

  return result;
}

uint64_t ccpolyzp_po2cyc_ctx_chain_init_ws(uint64_t a1, unsigned int *a2, unsigned int *a3, uint64_t *a4)
{
  v4 = vcnt_s8(*a3);
  v4.i16[0] = vaddlv_u8(v4);
  v5 = *a3 <= 0x100000 && v4.i32[0] == 1;
  if (!v5 || !a3[1])
  {
    return 4294967289;
  }

  *a2 = *a3;
  if (!a3[1])
  {
    return 0;
  }

  v9 = 0;
  v10 = a2 + 2;
  v11 = 1;
  for (i = -1; ; --i)
  {
    v19[0] = *a3;
    v19[1] = v11;
    v13 = *a2;
    v14 = (sizeof_struct_ccpolyzp_po2cyc_ctx() + 7) >> 3;
    v15 = v13 >= 0x80 ? 128 : v13;
    v16 = &v10[2 * (v14 + 2 * (v13 + ((sizeof_struct_ccrns_mul_modulus() + 7) >> 3) * v15) + 6) * (i + a2[1])];
    result = ccpolyzp_po2cyc_ctx_init_ws(a1, v16, v19, a4, v9);
    if (result)
    {
      break;
    }

    ++v11;
    v9 = v16;
    if (v11 > a3[1])
    {
      return 0;
    }
  }

  return result;
}

uint64_t ccspake_get_session_key(int **a1, uint64_t a2, void *a3)
{
  v12 = timingsafe_enable_if_supported();
  v6 = *(a1 + 60);
  if (v6 == CCSPAKE_STATE_KEX_BOTH || v6 == CCSPAKE_STATE_MAC_GENERATE)
  {
    v8 = (*a1[1])();
    v9 = **a1;
    if (v9 == 1)
    {
      if (a2)
      {
LABEL_9:
        v10 = ccspake_session_key_compute_internal(a1, a2, a3);
        goto LABEL_10;
      }
    }

    else if (v9 || a2 == *v8 >> 1)
    {
      goto LABEL_9;
    }

    v10 = 4294967289;
    goto LABEL_10;
  }

  v10 = 4294967210;
LABEL_10:
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t ccaes_unwind_with_ecb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = *MEMORY[0x29EDCA608];
  v6 = (*a1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](a1);
  if (v7 == 32 && *(a1 + 32))
  {
    inited = ccecb_init_internal(a1);
    if (!inited)
    {
      (*(a1 + 32))(v10 - v6, 14, a4);
      (*(a1 + 32))(v10 - v6, 13, a4 + 16);
    }
  }

  else
  {
    inited = 4294967226;
  }

  cc_clear(v6, v10 - v6);
  return inited;
}

uint64_t ccaes_unwind(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = timingsafe_enable_if_supported();
  v6 = ccaes_unwind_with_ecb(&ccaes_ltc_ecb_encrypt_mode, a1, a2, a3);
  cc_disable_dit_with_sb(&v8);
  return v6;
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

uint64_t cced448_scalar_mult_base_masked_ws(uint64_t a1, unint64_t *a2, uint64_t (**a3)(void, uint64_t, uint64_t *), uint64_t a4, uint64_t a5)
{
  v10 = cczp_n(a2);
  v11 = *(a1 + 16);
  v12 = (*(a1 + 24))(a1, 3 * v10);
  result = ccec_projectify_ws(a1, a2);
  if (!result)
  {
    result = ccec_mult_blinded_ws(a1, a2, a4, a5, v12, a3);
  }

  *(a1 + 16) = v11;
  return result;
}

uint64_t ccss_shamir_generate_random_poly_ws(uint64_t a1, uint64_t a2, unsigned int (**a3)(void, unint64_t, uint64_t))
{
  v6 = *(a1 + 16);
  if (*(a2 + 8))
  {
    v7 = 0;
    while (1)
    {
      v8 = *a2;
      v9 = ccss_shamir_poly_coefficient(a2, v7);
      result = cczp_generate_random_element_ws(a1, v8, a3, v9);
      if (result)
      {
        break;
      }

      ++v7;
      v11 = *(a2 + 8);
      if (v7 >= v11)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v11 = 0;
LABEL_7:
    v12 = *a2;
    v13 = ccss_shamir_poly_coefficient(a2, v11);
    result = cczp_generate_non_zero_element_ws(a1, v12, a3, v13);
  }

  *(a1 + 16) = v6;
  return result;
}

uint64_t ccapsic_server_encode_element_ws(uint64_t a1, unint64_t **a2, void **a3)
{
  v6 = *a2;
  v7 = **a2;
  result = cch2c_ws(a1, a2[2], a2[3]);
  if (!result)
  {
    result = ccec_projectify_ws(a1, v6);
    if (!result)
    {
      result = ccec_mult_blinded_ws(a1, v6, (a3 + 2), &(&a2[12 * **a2 + 24])[2 * **a2], &(&a2[6 * v7 + 24])[2 * v7], a2[1]);
      if (!result)
      {
        result = ccec_affinify_ws(a1, v6);
        if (!result)
        {
          ccn_seti(*v6, &a3[2 * **a3 + 2], 1);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t cccurve25519_assumes_dit_internal()
{
  OUTLINED_FUNCTION_1_4();
  v3 = ccrng(0);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = v3;
  v5 = ccec_cp_x25519();

  return cccurve25519_internal(v5, v2, v1, v0, v4);
}

uint64_t cccurve25519()
{
  OUTLINED_FUNCTION_1_4();
  timingsafe_enable_if_supported();
  OUTLINED_FUNCTION_2_2();
  v0 = cccurve25519_assumes_dit_internal();
  cc_disable_dit_with_sb(&v2);
  return v0;
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

uint64_t cccurve25519_make_pub_internal(uint64_t a1, __int128 *a2)
{
  v4 = ccrng(0);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  v6 = ccec_cp_x25519();

  return cccurve25519_internal(v6, a1, a2, kX25519BasePoint, v5);
}

uint64_t cccurve25519_make_pub(uint64_t a1, __int128 *a2)
{
  v6 = timingsafe_enable_if_supported();
  pub_internal = cccurve25519_make_pub_internal(a1, a2);
  cc_disable_dit_with_sb(&v6);
  return pub_internal;
}

uint64_t cccurve25519_make_key_pair_internal(uint64_t (**a1)(void, uint64_t, void *), uint64_t a2, uint64_t a3)
{
  result = (*a1)(a1, 32);
  if (!result)
  {
    *a3 &= 0xF8u;
    *(a3 + 31) = *(a3 + 31) & 0x3F | 0x40;
    v7 = ccec_cp_x25519();

    return cccurve25519_internal(v7, a2, a3, kX25519BasePoint, a1);
  }

  return result;
}

uint64_t cccurve25519_make_key_pair()
{
  OUTLINED_FUNCTION_1_4();
  timingsafe_enable_if_supported();
  v0 = OUTLINED_FUNCTION_2_2();
  key_pair_internal = cccurve25519_make_key_pair_internal(v0, v1, v2);
  cc_disable_dit_with_sb(&v5);
  return key_pair_internal;
}

uint64_t cced25519_make_pub_internal(void *a1, void (**a2)(void, uint64_t, uint64_t *), uint64_t a3, char *a4)
{
  v10 = *MEMORY[0x29EDCA608];
  if (*a1 != 64)
  {
    return 4294967289;
  }

  ccdigest_internal(a1, 0x20uLL, a4, &v8);
  v8.i8[0] &= 0xF8u;
  v9 = v9 & 0x3F | 0x40;
  bzero(v7, 0xA0uLL);
  ge_scalarmult_base_masked(v7, &v8, a2);
  ge_p3_tobytes(a3, v7);
  cc_clear(0x40uLL, &v8);
  return 0;
}

uint64_t cced25519_make_pub(void *a1, uint64_t a2, char *a3)
{
  v9 = timingsafe_enable_if_supported();
  v6 = ccrng(0);
  if (v6)
  {
    pub_internal = cced25519_make_pub_internal(a1, v6, a2, a3);
  }

  else
  {
    pub_internal = 0xFFFFFFFFLL;
  }

  cc_disable_dit_with_sb(&v9);
  return pub_internal;
}

uint64_t cced25519_make_pub_with_rng()
{
  v2 = OUTLINED_FUNCTION_0_13();
  v0 = OUTLINED_FUNCTION_1_5();
  cc_disable_dit_with_sb(&v2);
  return v0;
}

uint64_t cced25519_make_key_pair()
{
  v5 = OUTLINED_FUNCTION_0_13();
  v2 = (*v1)(v1, 32, v0);
  if (!v2)
  {
    v2 = OUTLINED_FUNCTION_1_5();
  }

  v3 = v2;
  cc_disable_dit_with_sb(&v5);
  return v3;
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

void ccdh_power_blinded_ws(uint64_t a1, unsigned int (**a2)(void, uint64_t, uint64_t *), void *a3, uint64_t *a4, void *a5, unint64_t a6, uint64_t a7)
{
  v38 = *MEMORY[0x29EDCA608];
  v12 = ccdh_gp_n(a3);
  v13 = v12 + 1;
  v34 = *(a1 + 16);
  v14 = (*(a1 + 24))(a1, v12 + 1);
  v15 = (*(a1 + 24))(a1, 2 * (v12 + 1) + 4);
  *v15 = v12 + 1;
  if ((a6 + 63) >> 6 <= v12)
  {
    v16 = v15;
    v17 = ccdh_gp_prime(a3);
    if ((ccn_cmp_public_value(v12, a5, v17) & 0x80000000) != 0)
    {
      v18 = ccdh_gp_prime(a3);
      if ((ccn_cmpn_internal((a6 + 63) >> 6, a7, v12, v18) & 0x80000000) != 0 && !(*a2)(a2, 16, &v36))
      {
        ccn_mux_seed_mask(v36);
        v36 |= 0x80000001uLL;
        v19 = ccdh_gp_prime(a3);
        v16[v12 + 3] = ccn_mul1(v12, v16 + 3, v19, v36);
        v20 = cczp_prime(v16);
        if (!cczp_mm_init_ws(a1, v16, v13, v20))
        {
          ccn_set(v12, v14, a5);
          v21 = ccdh_gp_prime(a3);
          *(v14 + v12) = ccn_addmul1(v12, v14, v21, v37);
          v22 = OUTLINED_FUNCTION_0_15();
          cczp_modn_ws(v22, v23, v24, v13, v14);
          v25 = OUTLINED_FUNCTION_0_15();
          cczp_to_ws(v25, v26);
          v27 = OUTLINED_FUNCTION_0_15();
          cczp_power_blinded_ws(v27, v28, v29, v14, a6, a7, a2);
          if (!v30)
          {
            v31 = OUTLINED_FUNCTION_0_15();
            cczp_from_ws(v31, v32);
            cczp_modn_ws(a1, a3, a4, v13, v14);
          }
        }
      }
    }
  }

  *(a1 + 16) = v34;
}

uint64_t ccec_generate_scalar_fips_extrabits_ws(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, char *a5)
{
  v10 = a2 + 4;
  v11 = &a2[5 * *a2 + 4];
  v12 = cczp_n(v11);
  v13 = *(a1 + 16);
  if (a3 < (cczp_bitlen(&v10[5 * *a2]) + 71) >> 3)
  {
    result = 4294967276;
  }

  else if (a3 > 0x80)
  {
    result = 4294967289;
  }

  else
  {
    v14 = (*(a1 + 24))(a1, 16);
    v15 = (*(a1 + 24))(a1, v12);
    v16 = cczp_prime(v11);
    ccn_set(v12, v15, v16);
    *v15 &= ~1uLL;
    result = ccn_read_uint_internal(16, v14, a3, a4);
    if (!result)
    {
      ccn_divmod_ws(a1, (a3 + 7) >> 3, v14, 0, 0, v12, a5, v15);
      ccn_add1_ws(a1, v12, a5, a5, 1);
      result = 0;
    }
  }

  *(a1 + 16) = v13;
  return result;
}

uint64_t cche_secret_key_generate_ws(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  *a2 = (cche_param_ctx_chain_const(a3) + 8);
  result = ccpolyzp_po2cyc_random_ternary_ws();
  if (!result)
  {

    return ccpolyzp_po2cyc_fwd_ntt(a2);
  }

  return result;
}

uint64_t cche_secret_key_generate_from_seed_ws(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = (*(a1 + 24))(a1, 536);
  result = ccpolyzp_po2cyc_block_rng_init(v7);
  if (!result)
  {
    result = cche_secret_key_generate_ws(a1, a2, a3);
  }

  *(a1 + 16) = v6;
  return result;
}

uint64_t cche_galois_key_generate_ws(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int **a5, uint64_t a6, int a7, uint64_t a8, uint64_t (**a9)(void, uint64_t, uint64_t))
{
  if (a3)
  {
    v11 = a6;
    v14 = cche_param_ctx_ciphertext_ctx_nmoduli(a6);
    v15 = v14;
    if (!a7 || cche_rng_seed_sizeof() * (v14 * a3) == a7)
    {
      v16 = 0;
      *a2 = v11;
      *(a2 + 8) = a3;
      while (!v16)
      {
LABEL_9:
        if (++v16 == a3)
        {
          v18 = 0;
          v61 = a8;
          v64 = v11;
          v60 = a4;
          v59 = v15;
          while (1)
          {
            v19 = a8 ? a8 + cche_rng_seed_sizeof() * v18 * v15 : 0;
            v20 = *(a4 + 4 * v18);
            v21 = cche_param_ctx_chain_const(v11);
            if (*(v21 + 12) < 2u)
            {
              return 4294967289;
            }

            v22 = v21;
            v23 = cche_param_ctx_polynomial_degree(v11);
            v24.i32[0] = v23;
            v25 = vcnt_s8(v24);
            v25.i16[0] = vaddlv_u8(v25);
            if (v23 > 0x100000 || v25.i32[0] != 1)
            {
              return 4294967289;
            }

            v27 = v23;
            result = 4294967289;
            if (v20 < 2 || (v20 & 1) == 0 || 2 * v27 <= v20 || *(a2 + 8) <= v18)
            {
              return result;
            }

            v66 = v18;
            *(a2 + 16 + 4 * v18) = v20;
            v29 = *(a1 + 24);
            v62 = *(a1 + 16);
            v30 = sizeof_struct_ccpolyzp_po2cyc();
            v31 = v29(a1, (*(v22 + 12) * *(v22 + 8)) + ((v30 + 7) >> 3));
            *v31 = *a5;
            result = ccpolyzp_po2cyc_eval_apply_galois(v31, a5, v20);
            if (result)
            {
              goto LABEL_44;
            }

            v63 = (*(v22 + 12) - 1);
            if (*(v22 + 12) != 1)
            {
              v32 = 0;
              while (1)
              {
                v33 = (*(v22 + 12) - 1);
                v34 = (v22 + 8);
                if (v32 < v33)
                {
                  v34 = (v22 + 8);
                  do
                  {
                    v34 = v34[14];
                    LODWORD(v33) = v33 - 1;
                  }

                  while (v33 > v32);
                }

                v35 = cche_galois_key_ciphertext(a2, v66, v32);
                v36 = *(v22 + 12);
                v37 = v19 ? v19 + cche_rng_seed_sizeof() * v32 : 0;
                result = cche_encrypt_zero_symmetric_eval_ws(a1, v35, v64, a5, v36, v37, a9);
                if (result)
                {
                  break;
                }

                OUTLINED_FUNCTION_1_7();
                v42 = v41 + (v39 & v40);
                v43 = v35 + 32;
                v44 = **(v35 + 24);
                do
                {
                  v45 = *(v43 + 8 * (v38 + v32 * v44));
                  v46 = v31[(v38 + v32 * **v31) + 1];
                  v47 = (v46 * v42) >> 64;
                  v48 = v46 * v42;
                  v49 = v34[4];
                  v50 = (v48 * v49) >> 64;
                  v51 = (v47 * v49) >> 64;
                  v52 = v47 * v49;
                  v53 = __CFADD__(v50, v52);
                  v54 = v50 + v52;
                  v55 = v53;
                  v56 = v55 + __CFADD__(v48 * v34[5], v54) + v51 + v34[5] * v47 + ((v48 * v34[5]) >> 64);
                  v57 = v34[2];
                  v58 = (((v48 + v57 * ~v56) >> 63) & v57) + v45 - v57 + v48 + v57 * ~v56 + ((((((v48 + v57 * ~v56) >> 63) & v57) + v45 - v57 + v48 + v57 * ~v56) >> 63) & v57);
                  v44 = **(v35 + 24);
                  *(v43 + 8 * (v38 + v32 * v44)) = v58;
                  ++v38;
                }

                while (v27 != v38);
                if (++v32 == v63)
                {
                  goto LABEL_40;
                }
              }

LABEL_44:
              *(a1 + 16) = v62;
              return result;
            }

LABEL_40:
            *(a1 + 16) = v62;
            v18 = v66 + 1;
            v15 = v59;
            a4 = v60;
            a8 = v61;
            v11 = v64;
            if (v66 + 1 == a3)
            {
              return 0;
            }
          }
        }
      }

      v17 = 0;
      while (*(a4 + 4 * v17) != *(a4 + 4 * v16))
      {
        if (v16 == ++v17)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return 4294967289;
}

uint64_t cche_galois_key_save_ws(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = cche_param_ctx_chain_const(*a4);
  v9 = *(a4 + 8);
  v10 = *(v8 + 12) - 1;
  v11 = ccpolyzp_po2cyc_serialize_poly_nbytes((v8 + 8), 0);
  if (v11 * (v10 * v9) != a2)
  {
    return 4294967289;
  }

  if (!v9)
  {
    return 0;
  }

  v12 = v11;
  v13 = 0;
  while (!v10)
  {
LABEL_8:
    if (++v13 == v9)
    {
      return 0;
    }
  }

  v14 = 0;
  while (1)
  {
    v15 = cche_galois_key_ciphertext(a4, v13, v14);
    result = ccpolyzp_po2cyc_serialize_poly_ws(a1, v12, a3, 0, (v15 + 24));
    if (result)
    {
      return result;
    }

    a3 += v12;
    if (v10 == ++v14)
    {
      goto LABEL_8;
    }
  }
}

uint64_t cche_galois_key_load_ws(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9)
{
  if (a3)
  {
    v12 = a5;
    v15 = cche_param_ctx_chain_const(a5);
    v16 = *(v15 + 12) - 1;
    v17 = ccpolyzp_po2cyc_serialize_poly_nbytes((v15 + 8), 0);
    v18 = cche_rng_seed_sizeof();
    v19 = (v16 * a3);
    v20 = v17 * v19;
    v58 = v18;
    v21 = v18 * v19;
    if (v20 == a6 && v21 == a8)
    {
      v23 = 0;
      *a2 = v12;
      *(a2 + 8) = a3;
      while (!v23)
      {
LABEL_12:
        if (++v23 == a3)
        {
          v49 = v17;
          v50 = v16;
          v51 = a7;
          v25 = 0;
          v53 = a4;
          v52 = a3;
          while (1)
          {
            v26 = *(a4 + 4 * v25);
            v27 = cche_param_ctx_chain_const(v12);
            if (*(v27 + 12) < 2u)
            {
              return 4294967289;
            }

            v28 = v27;
            v29 = cche_param_ctx_polynomial_degree(v12);
            v30.i32[0] = v29;
            v31 = vcnt_s8(v30);
            v31.i16[0] = vaddlv_u8(v31);
            if (v29 > 0x100000 || v31.i32[0] != 1)
            {
              return 4294967289;
            }

            v33 = v29;
            result = 4294967289;
            if (v26 < 2)
            {
              return result;
            }

            if ((v26 & 1) == 0)
            {
              return result;
            }

            if (2 * v33 <= v26)
            {
              return result;
            }

            v35 = v25;
            if (*(a2 + 8) <= v25)
            {
              return result;
            }

            v36 = (v28 + 8);
            v37 = ccpolyzp_po2cyc_serialize_poly_nbytes((v28 + 8), 0);
            *(a2 + 16 + 4 * v25) = v26;
            v57 = *(v28 + 12) - 1;
            if (*(v28 + 12) != 1)
            {
              v38 = 0;
              v39 = v25 * v50;
              v40 = v51 + v49 * v39;
              v41 = a9 + v58 * v39;
              v54 = v25;
              v55 = v37;
              do
              {
                v42 = cche_galois_key_ciphertext(a2, v35, v38);
                v43 = cche_ciphertext_fresh_npolys();
                v44 = v12;
                *v42 = v12;
                *(v42 + 8) = v43;
                *(v42 + 16) = 1;
                *(v42 + 24) = v36;
                v45 = (v42 + 24);
                if (v43 >= 2)
                {
                  v46 = v43;
                  for (i = 1; i != v46; ++i)
                  {
                    v48 = *v45;
                    v45[((v48[1] * *v48) + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3)) * i] = v36;
                  }
                }

                result = cche_deserialize_seeded_ciphertext_eval_ws(a1, v42, v55, v40);
                if (result)
                {
                  return result;
                }

                v40 += v55;
                v41 += v58;
                ++v38;
                v12 = v44;
                v35 = v54;
              }

              while (v38 != v57);
            }

            v25 = v35 + 1;
            a4 = v53;
            if (v35 + 1 == v52)
            {
              return 0;
            }
          }
        }
      }

      v24 = 0;
      while (*(a4 + 4 * v24) != *(a4 + 4 * v23))
      {
        if (v23 == ++v24)
        {
          goto LABEL_12;
        }
      }
    }
  }

  return 4294967289;
}

uint64_t cche_ciphertext_apply_galois_ws(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v5 = *(a5 + 8);
  if (!v5)
  {
    return 4294967289;
  }

  if (*(a5 + 16) != a4)
  {
    v12 = 0;
    while (v5 - 1 != v12)
    {
      v13 = *(a5 + 20 + 4 * v12++);
      if (v13 == a4)
      {
        v11 = v12 < v5;
        goto LABEL_8;
      }
    }

    return 4294967289;
  }

  v11 = 1;
LABEL_8:
  result = 4294967289;
  if (a2 != a3 && v11)
  {
    if (*(a3 + 8))
    {
      v15 = 0;
      v16 = (a3 + 24);
      v17 = a2 + 24;
      while (1)
      {
        v18 = *v16;
        v19 = sizeof_struct_ccpolyzp_po2cyc();
        result = ccpolyzp_po2cyc_coeff_apply_galois((v17 + 8 * ((*(*v17 + 4) * **v17) + ((v19 + 7) >> 3)) * v15), &v16[((v18[1] * *v18) + ((v19 + 7) >> 3)) * v15], a4);
        if (result)
        {
          break;
        }

        if (++v15 >= *(a3 + 8))
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:

      return cche_ciphertext_galois_key_switch_ws(a1, a2, a4, a5);
    }
  }

  return result;
}

uint64_t cche_ciphertext_galois_key_switch_ws(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v112[2] = *MEMORY[0x29EDCA608];
  v4 = *(a4 + 8);
  if (v4)
  {
    if (*(a4 + 16) != a3)
    {
      v7 = 0;
      while (v4 - 1 != v7)
      {
        v8 = *(a4 + 20 + 4 * v7++);
        if (v8 == a3)
        {
          if (v7 >= v4)
          {
            return 4294967289;
          }

          goto LABEL_7;
        }
      }

      return 4294967289;
    }

LABEL_7:
    v9 = *(a2 + 8);
    if (v9 == cche_ciphertext_fresh_npolys())
    {
      v93 = *(a1 + 16);
      v10 = cche_param_ctx_chain_const(*a4);
      v11 = *(v10 + 12);
      v98 = (a2 + 24);
      v103 = *(*(a2 + 24) + 4);
      v12 = *(a1 + 24);
      v13 = cche_ciphertext_fresh_npolys();
      v14 = sizeof_struct_ccrns_mul_modulus();
      v15 = sizeof_struct_ccpolyzp_po2cyc();
      v16 = sizeof_struct_ccpolyzp_po2cyc();
      v101 = v10;
      v18 = *(v10 + 8);
      v17 = (v10 + 8);
      v100 = v11;
      v19 = v12(a1, (v14 + v15 - 1) / v15 + ((v18 * v11) + ((v16 + 7) >> 3)) * v13);
      v99 = a4;
      v20 = *a4;
      v21 = cche_ciphertext_fresh_npolys();
      *v19 = v20;
      *(v19 + 8) = v21;
      *(v19 + 16) = 1;
      v92 = v19;
      *(v19 + 24) = v17;
      v22 = (v19 + 24);
      if (v21 >= 2)
      {
        v23 = v21;
        for (i = 1; i != v23; ++i)
        {
          v25 = *v22;
          v22[((v25[1] * *v25) + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3)) * i] = v17;
        }
      }

      v96 = v22;
      v102 = v17;
      v26 = *v17;
      v27 = *(a2 + 24);
      v28 = sizeof_struct_ccpolyzp_po2cyc();
      v29 = *v27;
      v30 = v27[1];
      v105 = *(a2 + 8);
      v31 = (*(a1 + 24))(a1, (2 * v26 * v105));
      v32 = *(a1 + 24);
      v33 = sizeof_struct_ccpolyzp_po2cyc();
      v104 = v32(a1, v26 + ((v33 + 7) >> 3));
      v34 = *(a1 + 24);
      v35 = (sizeof_struct_ccpolyzp_po2cyc_ctx() + 7) >> 3;
      if (v26 >= 0x80)
      {
        v36 = 128;
      }

      else
      {
        v36 = v26;
      }

      v37 = sizeof_struct_ccrns_mul_modulus();
      __dst = v34(a1, v35 + 2 * (v26 + ((v37 + 7) >> 3) * v36) + 6);
      v38 = v101;
      if (v100)
      {
        v39 = 0;
        v40 = v100 - 1;
        v41 = (v101 + 24);
        v95 = (&v98[v30 * v29] + ((v28 + 7) & 0xFFFFFFFFFFFFFFF8));
        v109 = 2 * v26;
        while (1)
        {
          v42 = *(v38 + 12) - 1;
          if (v39 == v40)
          {
            v43 = *(v38 + 12) - 1;
          }

          else
          {
            v43 = v39;
          }

          v110 = v43;
          v44 = v102;
          v45 = v102;
          if (v42 > v39)
          {
            v46 = *(v38 + 12) - 1;
            v47 = v102;
            do
            {
              v47 = v47[14];
              --v46;
            }

            while (v46 > v39);
            v45 = v102;
            do
            {
              v45 = v45[14];
              --v42;
            }

            while (v42 > v39);
            v41 = v47 + 2;
          }

          v48 = *v45;
          v49 = (sizeof_struct_ccpolyzp_po2cyc_ctx() + 7) & 0xFFFFFFFFFFFFFFF8;
          v50 = v48 >= 0x80 ? 128 : v48;
          v51 = v49 + 16 * (v48 + ((sizeof_struct_ccrns_mul_modulus() + 7) >> 3) * v50) + 48;
          memmove(__dst, v45, v51);
          __dst[1] = 1;
          *(__dst + 14) = 0;
          ccpolyzp_po2cyc_init_zero(v104, __dst);
          cc_clear(8 * (2 * v26 * v105), v31);
          if (v103)
          {
            break;
          }

LABEL_47:
          if (v105)
          {
            v69 = 0;
            for (j = 0; j != v105; ++j)
            {
              v71 = *v96;
              v72 = sizeof_struct_ccpolyzp_po2cyc();
              if (v26)
              {
                v73 = 0;
                v74 = &v96[((v71[1] * *v71) + ((v72 + 7) >> 3)) * j];
                v75 = v69;
                do
                {
                  v76 = &v31[8 * v75];
                  v78 = *v76;
                  v77 = *(v76 + 1);
                  v79 = v41[2];
                  v80 = (v79 * v77) >> 64;
                  v81 = (v79 * v78) >> 64;
                  v82 = v79 * v77;
                  v83 = __CFADD__(v81, v82);
                  v84 = v81 + v82;
                  v85 = v83;
                  v86 = v85 + __CFADD__(v41[3] * v78, v84) + v80 + v41[3] * v77 + ((v41[3] * v78) >> 64);
                  (&v74[v73++ + 1])[v39 * **v74] = (v78 + *v41 * ~v86 + (((v78 + *v41 * ~v86) >> 63) & *v41));
                  v75 += 2;
                }

                while (v26 != v73);
              }

              v69 += v109;
            }
          }

          ++v39;
          v40 = v100 - 1;
          v41 = (v101 + 24);
          if (v39 == v100)
          {
            goto LABEL_57;
          }
        }

        v52 = 0;
        while (1)
        {
          v53 = *(v38 + 12) - 1;
          v54 = v44;
          if (v53 > v52)
          {
            v54 = v44;
            do
            {
              v54 = v54[14];
              --v53;
            }

            while (v53 > v52);
          }

          v55 = cche_galois_key_ciphertext(v99, 0, v52);
          if (v54[2] <= *v41)
          {
            memcpy(v104 + 1, &v95[**v95 * v52 + 1], 8 * v26);
            v56 = v105;
          }

          else
          {
            v56 = v105;
            if (v26)
            {
              do
              {
                OUTLINED_FUNCTION_1_7();
                *(v60 + 8 * v61) = v59 + (v57 & v58);
              }

              while (v26 != v61 + 1);
            }
          }

          if (ccpolyzp_po2cyc_fwd_ntt(v104))
          {
            break;
          }

          v94 = v52;
          if (v56)
          {
            v108 = 0;
            v106 = (v55 + 24);
            v107 = 0;
            while (1)
            {
              v62 = *v106;
              v63 = sizeof_struct_ccpolyzp_po2cyc();
              if (v26)
              {
                break;
              }

LABEL_45:
              v108 += v109;
              if (++v107 == v105)
              {
                goto LABEL_46;
              }
            }

            v64 = 0;
            v65 = &v106[((v62[1] * *v62) + ((v63 + 7) >> 3)) * v107];
            v66 = v108;
            v67 = (v104 + 1);
            while (1)
            {
              v68 = &v65[(v64 + **v65 * v110) + 1];
              v112[0] = 0;
              v112[1] = 0;
              ccn_mul(1, v112, v68, v67);
              if (ccn_add_ws(a1, 2, &v31[8 * v66], &v31[8 * v66], v112))
              {
                return 0xFFFFFFFFLL;
              }

              ++v64;
              v67 += 8;
              v66 += 2;
              if (v26 == v64)
              {
                goto LABEL_45;
              }
            }
          }

LABEL_46:
          v52 = v94 + 1;
          v38 = v101;
          v44 = v102;
          if (v94 + 1 == v103)
          {
            goto LABEL_47;
          }
        }
      }

      else
      {
LABEL_57:
        result = cche_ciphertext_inv_ntt_internal(v92);
        if (result)
        {
          goto LABEL_61;
        }

        result = cche_ciphertext_mod_switch_down_ws(a1, v92);
        if (result)
        {
          goto LABEL_61;
        }

        ccpolyzp_po2cyc_coeff_add(v98, v98, v96);
        v88 = *v98;
        v89 = sizeof_struct_ccpolyzp_po2cyc();
        v90 = (v89 + 7) & 0xFFFFFFFFFFFFFFF8;
        v91 = &v96[(*v96)[1] * **v96] + v90;
        memmove(&v98[v88[1] * *v88] + v90, v91, (v89 + 7 + 8 * (*(*v91 + 4) * **v91)) & 0xFFFFFFFFFFFFFFF8);
      }

      result = 0;
LABEL_61:
      *(a1 + 16) = v93;
      return result;
    }
  }

  return 4294967289;
}

uint64_t cche_galois_elt_from_step(_DWORD *a1, int a2, unsigned int a3)
{
  if ((a3 ^ (a3 - 1)) <= a3 - 1)
  {
    return 4294967289;
  }

  v3 = a2 >= 0 ? a2 : -a2;
  if (v3 >= a3 >> 1)
  {
    return 4294967289;
  }

  v4 = 2 * a3 - 1;
  v5 = v3 & v4;
  v6 = (a3 >> 1) - v5;
  if (a2 >= 0)
  {
    v6 = v5;
  }

  if (v6)
  {
    v7 = 1;
    while (is_mul_ok(v7, 3uLL))
    {
      v7 = (3 * v7) & v4;
      if (!--v6)
      {
        goto LABEL_14;
      }
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    LODWORD(v7) = 1;
LABEL_14:
    v8 = 0;
    *a1 = v7;
  }

  return v8;
}

uint64_t cche_ciphertext_galois_elt_rotate_rows_right(_DWORD *a1, int a2, unsigned int a3)
{
  v8 = timingsafe_enable_if_supported();
  v6 = cche_galois_elt_from_step(a1, -a2, a3);
  cc_disable_dit_with_sb(&v8);
  return v6;
}

uint64_t cche_ciphertext_galois_elt_swap_columns(_DWORD *a1, int a2)
{
  v6 = timingsafe_enable_if_supported();
  if ((a2 ^ (a2 - 1)) <= a2 - 1)
  {
    v4 = 4294967289;
  }

  else
  {
    v4 = 0;
    *a1 = 2 * a2 - 1;
  }

  cc_disable_dit_with_sb(&v6);
  return v4;
}

uint64_t ccpolyzp_po2cyc_fwd_ntt(unsigned int **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 8) == 1 && v2 >= 3;
  if (!v3)
  {
    return 4294967289;
  }

  v4 = v1[1];
  if (v4)
  {
    v5 = 0;
    v57 = *a1;
    if (v2 >= 0x80)
    {
      v6 = 128;
    }

    else
    {
      v6 = **a1;
    }

    v56 = v1 + 4;
    do
    {
      v7 = v4 - 1;
      if (v4 - 1 <= v5)
      {
        v9 = v1;
        v12 = v56;
        v15 = v1;
        v16 = v1;
        if (*v56 >> 62)
        {
          return 4294967289;
        }
      }

      else
      {
        v8 = v4 - 1;
        v9 = v1;
        do
        {
          v9 = v9[14];
          --v8;
        }

        while (v8 > v5);
        v10 = v7;
        v11 = v1;
        do
        {
          v11 = *(v11 + 14);
          --v10;
        }

        while (v10 > v5);
        v13 = *(v11 + 2);
        v12 = v11 + 4;
        if (v13 >> 62)
        {
          return 4294967289;
        }

        if (v7 <= v5)
        {
          v15 = v1;
          v16 = v1;
        }

        else
        {
          v14 = v7;
          v15 = v1;
          do
          {
            v15 = *(v15 + 14);
            --v14;
          }

          while (v14 > v5);
          v16 = v1;
          do
          {
            v16 = *(v16 + 14);
            --v7;
          }

          while (v7 > v5);
        }
      }

      v17 = v15 + 42;
      v18 = &v16[2 * *v1 + 42];
      v19 = &a1[**a1 * v5 + 1];
      v20 = 1;
      v21 = v2;
      do
      {
        v22 = v21 >> 1;
        if (v20)
        {
          v23 = 0;
          v24 = 0;
          v25 = v21 & 0xFFFFFFFE;
          v26 = v22;
          do
          {
            v27 = &v19[v24];
            v28 = v20 + v23;
            v29 = 2 * v23 * v22;
            v30 = v22 + v29;
            if (v28 >= v6)
            {
              if (v29 < v30)
              {
                v37 = v22;
                v38 = v26;
                do
                {
                  v39 = v19[v38];
                  v40 = *v27 + (((*v27 - 2 * v9[2]) >> 63) & (2 * v9[2])) + -2 * v9[2];
                  v41 = *&v17[2 * v28];
                  v42 = v41 * v39;
                  v43 = (v41 * v39) >> 64;
                  v44 = v9[4];
                  v45 = (v42 * v44) >> 64;
                  v46 = (v43 * v44) >> 64;
                  v47 = v43 * v44;
                  v3 = __CFADD__(v45, v47);
                  v48 = v45 + v47;
                  v49 = v3;
                  v50 = v49 + __CFADD__(v42 * v9[5], v48) + v46 + v9[5] * v43 + ((v42 * v9[5]) >> 64);
                  v51 = v9[2];
                  v52 = v42 - v50 * v51;
                  *v27++ = (v52 + v40);
                  v19[v38++] = (v40 + 2 * v51 - v52);
                  --v37;
                }

                while (v37);
              }
            }

            else if (v29 < v30)
            {
              v31 = (v18 + 24 * v28);
              v32 = v22;
              v33 = v26;
              do
              {
                v34 = *v27 + (((*v27 - 2 * *v31) >> 63) & (2 * *v31)) + -2 * *v31;
                v35 = v31[1] * v19[v33] - *v31 * ((v31[2] * v19[v33]) >> 64);
                v36 = (v34 + 2 * *v31 - v35);
                *v27++ = (v35 + v34);
                v19[v33++] = v36;
                --v32;
              }

              while (v32);
            }

            ++v23;
            v24 += v25;
            v26 += v25;
          }

          while (v23 != v20);
        }

        v20 *= 2;
        v21 = v22;
      }

      while (v20 < v2);
      v53 = v2;
      do
      {
        v54 = *v19 + (((*v19 - 2 * *v12) >> 63) & (2 * *v12)) - *v12 + -2 * *v12;
        *v19++ = (((v54 >> 63) & *v12) + v54);
        --v53;
      }

      while (v53);
      ++v5;
      v1 = v57;
      v4 = v57[1];
    }

    while (v5 < v4);
  }

  return 0;
}

uint64_t ccpolyzp_po2cyc_inv_ntt(unsigned int **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 8) == 1 && v2 >= 3;
  if (!v3)
  {
    return 4294967289;
  }

  v4 = v1[1];
  if (v4)
  {
    v5 = 0;
    v76 = a1 + 1;
    if (v2 >= 0x80)
    {
      v6 = v2 - 128;
    }

    else
    {
      v6 = 0;
    }

    do
    {
      v7 = v4 - 1;
      if (v4 - 1 <= v5)
      {
        v10 = v1 + 4;
        v13 = v1;
        if ((*(v1 + 2) & 0x8000000000000000) != 0)
        {
          return 4294967289;
        }
      }

      else
      {
        v8 = v4 - 1;
        v9 = v1;
        do
        {
          v9 = *(v9 + 14);
          --v8;
        }

        while (v8 > v5);
        v11 = *(v9 + 2);
        v10 = v9 + 4;
        if (v11 < 0)
        {
          return 4294967289;
        }

        v12 = v7;
        v13 = v1;
        do
        {
          v13 = *(v13 + 14);
          --v12;
        }

        while (v12 > v5);
      }

      v14 = *v1;
      if (v14 >= 0x80)
      {
        v15 = 128;
      }

      else
      {
        v15 = v14;
      }

      v16 = sizeof_struct_ccrns_mul_modulus();
      v17 = v1;
      if (v7 > v5)
      {
        v18 = v7;
        v17 = v1;
        do
        {
          v17 = *(v17 + 14);
          --v18;
        }

        while (v18 > v5);
      }

      v19 = **a1 * v5;
      v20 = &v76[v19];
      if (v2 >= 4)
      {
        v21 = ((v16 + 7) >> 3) * v15;
        v22 = &v13[2 * v14 + 2 * v21];
        v23 = &v17[2 * v14 + 2 * v21 + 2 * v14];
        v24 = v22 + 168;
        v25 = v23 + 168;
        v26 = 1;
        v27 = v2 >> 1;
        v28 = 1;
        do
        {
          v29 = 0;
          v30 = 0;
          v31 = 2 * v28;
          if (v27 <= 1)
          {
            v32 = 1;
          }

          else
          {
            v32 = v27;
          }

          v33 = v28;
          do
          {
            v34 = &v20[v29];
            v35 = 2 * v30 * v28;
            v36 = v35 + v28;
            if (v26 >= v6)
            {
              if (v35 < v36)
              {
                v53 = (v25 + 24 * (v2 + ~v26));
                v54 = v28;
                v55 = v33;
                do
                {
                  v56 = v20[v55];
                  v57 = *v34 - v56 + 2 * *v53;
                  v58 = v56 + *v34 - 2 * *v53;
                  v59 = v53[1] * v57 - *v53 * ((v53[2] * v57) >> 64);
                  *v34++ = ((v58 >> 63) & (2 * *v53)) + v58;
                  v20[v55++] = v59;
                  --v54;
                }

                while (v54);
              }
            }

            else if (v35 < v36)
            {
              v37 = v28;
              v38 = v33;
              do
              {
                v39 = v20[v38];
                v40 = *(v24 + 8 * v26);
                v41 = *v34 - v39 + 2 * *v10;
                v42 = v39 + *v34 - 2 * *v10;
                v43 = ((v42 >> 63) & (2 * *v10)) + v42;
                v44 = v41 * v40;
                v45 = (v41 * v40) >> 64;
                v46 = v10[2];
                v47 = (v44 * v46) >> 64;
                v48 = (v45 * v46) >> 64;
                v49 = v45 * v46;
                v3 = __CFADD__(v47, v49);
                v50 = v47 + v49;
                v51 = v3;
                v52 = v44 - (v51 + __CFADD__(v44 * v10[3], v50) + v48 + v10[3] * v45 + ((v44 * v10[3]) >> 64)) * *v10;
                *v34++ = v43;
                v20[v38++] = v52;
                --v37;
              }

              while (v37);
            }

            ++v30;
            ++v26;
            v29 += v31;
            v33 += v31;
          }

          while (v30 != v32);
          v28 *= 2;
          v60 = v27 > 3;
          v27 >>= 1;
        }

        while (v60);
        v19 = **a1 * v5;
        v7 = v1[1] - 1;
      }

      v61 = v1;
      v62 = v1;
      if (v7 > v5)
      {
        v63 = v7;
        v61 = v1;
        do
        {
          v61 = v61[14];
          --v63;
        }

        while (v63 > v5);
        v62 = v1;
        do
        {
          v62 = v62[14];
          --v7;
        }

        while (v7 > v5);
      }

      v64 = &(&v76[v19])[v2 >> 1];
      v65 = v2 >> 1;
      do
      {
        v66 = *v64 + *v20 - 2 * *v10;
        v67 = ((v66 >> 63) & (2 * *v10)) + v66;
        v68 = *v20 - *v64 + 2 * *v10;
        v69 = v62[11];
        v70 = v62[12] * v67 + v69 * ~((v62[13] * v67) >> 64);
        v71 = v70 + ((v70 >> 63) & v69);
        v72 = v61[8];
        v73 = v61[9] * v68 + v72 * ~((v61[10] * v68) >> 64);
        *v20++ = v71;
        *v64++ = v73 + ((v73 >> 63) & v72);
        --v65;
      }

      while (v65);
      v4 = v1[1];
      ++v5;
    }

    while (v5 < v4);
  }

  return 0;
}

uint64_t ccmlkem_kem_keypair_from_seed(int16x4_t *a1, const void *a2, uint64_t a3, _OWORD *a4, _OWORD *a5)
{
  v54 = *MEMORY[0x29EDCA608];
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
  v51 = v49[0];
  v52 = v49[1];
  v40 = OUTLINED_FUNCTION_1_8();
  ccmlkem_hash_h(v40, a2, v53);
  ccmlkem_hash_g(64, &v51, &v51);
  v41 = ccmlkem_indcpa_encrypt_ws(v45, a1, a2, v49, v53, v37);
  if (v41)
  {
    v42 = v41;
    v46 = v39;
    cc_clear(0x40uLL, &v51);
  }

  else
  {
    v50[0] = v51;
    v50[1] = v52;
    v46 = v39;
    cc_clear(0x40uLL, &v51);
    v44 = ccmlkem_kem_decapsulate_ws(v45, a1, a3, v37, &v51);
    if (v44)
    {
      v42 = v44;
    }

    else if (cc_cmp_safe_internal(32, v50, &v51))
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
  cc_clear(0x20uLL, &v51);
  cc_clear(0x20uLL, v49);
  v48(v45);
  return v42;
}

uint64_t ccmlkem_kem_keypair_with_seed()
{
  OUTLINED_FUNCTION_2_3();
  result = (*v0)(v0, 64, v1);
  if (!result)
  {
    v3 = OUTLINED_FUNCTION_3_1();

    return ccmlkem_kem_keypair_from_seed(v3, v4, v5, v6, v7);
  }

  return result;
}

uint64_t ccmlkem_kem_encapsulate()
{
  OUTLINED_FUNCTION_2_3();
  v10 = *MEMORY[0x29EDCA608];
  v1 = (*v0)(v0, 32, v9);
  if (v1)
  {
    return v1;
  }

  v2 = OUTLINED_FUNCTION_3_1();
  v7 = ccmlkem_kem_encapsulate_msg(v2, v3, v4, v5, v6);
  cc_clear(0x20uLL, v9);
  return v7;
}

uint64_t ccmlkem_kem_decapsulate_ws(uint64_t a1, int8x16_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v26 = *MEMORY[0x29EDCA608];
  v10 = (384 * a2->i32[1]);
  v11 = *(a1 + 16);
  v12 = (384 * a2->i32[1]) | 0x20u;
  v13 = a3 + ((v12 + 384 * a2->i32[1]) | 0x40u) - 64;
  ccmlkem_hash_h(v12, a3 + v10, v21);
  if (cc_cmp_safe_internal(32, v21, v13))
  {
    v19 = 4294967289;
  }

  else
  {
    ccmlkem_indcpa_decrypt_ws(a1, a2, a3, a4, v21);
    v14 = a3 + ((768 * a2->i32[1]) | 0x60u);
    v15 = *(v14 - 48);
    v22 = *(v14 - 64);
    v23 = v15;
    ccmlkem_hash_g(64, v21, v24);
    v16 = (*(a1 + 24))(a1, 4 * ((a2->i32[2] + a2->i32[1] * a2->i32[3]) & 0x7FFFFFFu));
    v17 = ccmlkem_indcpa_encrypt_ws(a1, a2, a3 + v10, v21, &v25, v16);
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v18 = cc_cmp_safe_internal((32 * (a2->i32[2] + a2->i32[1] * a2->i32[3])), a4, v16);
      ccmlkem_rkprf(a2, (a3 + ((768 * a2->i32[1]) | 0x60u) - 32), a4, a5);
      ccn_mux(4, v18, a5, a5, v24);
      v19 = 0;
    }
  }

  *(a1 + 16) = v11;
  cc_clear(0x40uLL, v21);
  cc_clear(0x40uLL, v24);
  return v19;
}

uint64_t ccrng_process_init(uint64_t a1, uint64_t (*a2)(void), uint64_t (**a3)(void, uint64_t, _BYTE *))
{
  v13 = *MEMORY[0x29EDCA608];
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
        v9 = xmmword_299DAA5D0;
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

uint64_t ccsigma_import_signing_key(void *a1, unint64_t a2, unsigned __int8 *a3)
{
  v12 = timingsafe_enable_if_supported();
  v6 = (*(*a1 + 48))(a1);
  v7 = 20 * **(*a1 + 24);
  v10[0] = cc_malloc_clear(160 * **(*a1 + 24));
  v10[1] = v7;
  v10[2] = 0;
  v10[3] = cc_ws_alloc;
  v11 = cc_ws_free;
  if (v10[0])
  {
    v8 = ccec_x963_import_priv_ws(v10, *(*a1 + 24), a2, a3, v6);
    v11(v10);
    if (!v8)
    {
      a1[2] = ccsigma_sign_internal;
      a1[3] = a1;
    }
  }

  else
  {
    v8 = 4294967283;
  }

  cc_disable_dit_with_sb(&v12);
  return v8;
}

uint64_t ccsigma_compute_mac_internal(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  if (*(*a1 + 64) <= a2)
  {
    return 4294967289;
  }

  v11 = 0;
  if (a2)
  {
    v12 = *(v6 + 72);
    v13 = a2;
    do
    {
      v14 = *v12++;
      v11 += v14;
      --v13;
    }

    while (v13);
  }

  v15 = *(*(v6 + 72) + 8 * a2);
  v16 = (*(v6 + 88))(a1);
  v17 = *(*a1 + 112);

  return v17(a1, v15, v16 + v11, a3, a4, a5);
}

uint64_t ccsigma_compute_mac(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = ccsigma_compute_mac_internal(a1, a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t ccsigma_sign(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x29EDCA608];
  v15 = timingsafe_enable_if_supported();
  v10 = **(*a1 + 32);
  if (v10 > 0x40)
  {
    v12 = 4294967291;
  }

  else
  {
    v11 = (*(*a1 + 136))(a1, *(a1 + 8), a3, a4, v16);
    if (!v11)
    {
      v14 = *(*a1 + 40);
      v11 = (*(a1 + 16))(*(a1 + 24), v10, v16, &v14, a2, a5);
    }

    v12 = v11;
  }

  cc_disable_dit_with_sb(&v15);
  return v12;
}

uint64_t ccsigma_seal(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v44 = timingsafe_enable_if_supported();
  OUTLINED_FUNCTION_1_9();
  if (v18 <= a2)
  {
    goto LABEL_12;
  }

  v19 = a6;
  v20 = 0;
  if (a2)
  {
    v21 = *(v17 + 72);
    v22 = a2;
    do
    {
      v23 = *v21++;
      v20 += v23;
      --v22;
    }

    while (v22);
  }

  v24 = *(*(v17 + 72) + 8 * a2);
  v25 = OUTLINED_FUNCTION_0_17();
  v26(v25);
  OUTLINED_FUNCTION_1_9();
  if (v29 <= a3)
  {
LABEL_12:
    v40 = 4294967289;
  }

  else
  {
    v30 = a7;
    v42 = a5;
    v43 = a4;
    v31 = v27;
    v32 = 0;
    if (a3)
    {
      v33 = *(v28 + 72);
      v34 = a3;
      do
      {
        v35 = *v33++;
        v32 += v35;
        --v34;
      }

      while (v34);
    }

    v36 = *(*(v28 + 72) + 8 * a3);
    v37 = OUTLINED_FUNCTION_0_17();
    v39 = v38(v37);
    v40 = (*(*a1 + 152))(a1, v24, v31 + v20, v36, v39 + v32, v43, v42, v19, v30, a8, a9);
    if (!v40)
    {
      (*(*a1 + 168))(v36, v39 + v32);
    }
  }

  cc_disable_dit_with_sb(&v44);
  return v40;
}

uint64_t ccsigma_open(uint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = *MEMORY[0x29EDCA608];
  v41 = timingsafe_enable_if_supported();
  v16 = *a1;
  if (*(*a1 + 144) > 0x10uLL)
  {
    v36 = 4294967291;
  }

  else
  {
    if (*(v16 + 64) <= a2)
    {
      goto LABEL_13;
    }

    v17 = 0;
    if (a2)
    {
      v18 = *(v16 + 72);
      v19 = a2;
      do
      {
        v20 = *v18++;
        v17 += v20;
        --v19;
      }

      while (v19);
    }

    v21 = *(*(v16 + 72) + 8 * a2);
    v22 = OUTLINED_FUNCTION_0_17();
    v23(v22);
    OUTLINED_FUNCTION_1_9();
    if (v26 <= a3)
    {
LABEL_13:
      v36 = 4294967289;
    }

    else
    {
      v39 = v21;
      v40 = a4;
      v38 = a5;
      v27 = v24;
      v28 = 0;
      if (a3)
      {
        v29 = *(v25 + 72);
        v30 = a3;
        do
        {
          v31 = *v29++;
          v28 += v31;
          --v30;
        }

        while (v30);
      }

      v32 = *(*(v25 + 72) + 8 * a3);
      v33 = OUTLINED_FUNCTION_0_17();
      v35 = v34(v33);
      __memcpy_chk();
      v36 = (*(*a1 + 160))(a1, v39, v27 + v17, v32, v35 + v28, v40, v38, a6, a7, a8, v42);
      if (!v36)
      {
        (*(*a1 + 168))(v32, v35 + v28);
      }
    }
  }

  cc_disable_dit_with_sb(&v41);
  return v36;
}

uint64_t ccsigma_clear_key(uint64_t a1, unint64_t a2)
{
  v15 = timingsafe_enable_if_supported();
  OUTLINED_FUNCTION_1_9();
  if (v4 <= a2)
  {
    v13 = 4294967289;
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      v6 = *(v3 + 72);
      v7 = a2;
      do
      {
        v8 = *v6++;
        v5 += v8;
        --v7;
      }

      while (v7);
    }

    v9 = *(*(v3 + 72) + 8 * a2);
    v10 = OUTLINED_FUNCTION_0_17();
    v12 = v11(v10);
    cc_clear(v9, (v12 + v5));
    v13 = 0;
  }

  cc_disable_dit_with_sb(&v15);
  return v13;
}

uint64_t cced25519_sign_with_rng_internal(void *a1, void (**a2)(void, uint64_t, uint64_t *), char *a3, size_t a4, char *a5, char *a6, char *a7)
{
  v20 = *MEMORY[0x29EDCA608];
  result = (*a2)(a2, 32, v19);
  if (!result)
  {
    memset(__s2, 0, sizeof(__s2));
    v15 = ccsha512_di();
    result = cced25519_make_pub_internal(v15, a2, __s2, a7);
    if (!result)
    {
      if (!memcmp(a6, __s2, 0x20uLL))
      {
        return cced25519_sign_internal(a1, a2, a3, a4, a5, a6, a7, v19);
      }

      else
      {
        v16 = cc_log_default();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          *v17 = 0;
          _os_log_fault_impl(&dword_299D13000, v16, OS_LOG_TYPE_FAULT, "cced25519_sign: pk != sk * G", v17, 2u);
        }

        cc_clear(0x40uLL, a3);
        return 4294967289;
      }
    }
  }

  return result;
}

uint64_t cced25519_sign_internal(void *a1, void (**a2)(void, uint64_t, uint64_t *), char *a3, size_t a4, char *a5, char *a6, char *a7, char *a8)
{
  v62 = *MEMORY[0x29EDCA608];
  if (*a1 != 64 || a1[2] != 128)
  {
    return 4294967289;
  }

  v56 = a6;
  bzero(v57, 0xA0uLL);
  ccdigest_internal(a1, 0x20uLL, a7, v60);
  LOBYTE(v60[0]) &= 0xF8u;
  v61 = v61 & 0x3F | 0x40;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v55 - v16;
  v18 = OUTLINED_FUNCTION_1_10();
  ccdigest_init_internal(v18, v19);
  if (a8)
  {
    memset(v59, 0, sizeof(v59));
    v20 = OUTLINED_FUNCTION_0_18();
    ccdigest_update_internal(v20, v21, v22, a8);
    v23 = OUTLINED_FUNCTION_1_10();
    ccdigest_update_internal(v23, v24, 0x40uLL, v25);
    v26 = OUTLINED_FUNCTION_0_18();
    ccdigest_update_internal(v26, v27, v28, v29);
    OUTLINED_FUNCTION_3_2();
    if (*&v17[v30 + 8])
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v32 = OUTLINED_FUNCTION_0_18();
    ccdigest_update_internal(v32, v33, v34, v35);
  }

  v36 = OUTLINED_FUNCTION_1_10();
  ccdigest_update_internal(v36, v37, a4, a5);
  v38 = OUTLINED_FUNCTION_1_10();
  v39(v38);
  OUTLINED_FUNCTION_3_2();
  cc_clear(v40 + 12, v17);
  sc_reduce(v59);
  v31 = ge_scalarmult_base_masked(v57, v59, a2);
  if (!v31)
  {
    ge_p3_tobytes(a3, v57);
    v41 = OUTLINED_FUNCTION_1_10();
    ccdigest_init_internal(v41, v42);
    v43 = OUTLINED_FUNCTION_0_18();
    ccdigest_update_internal(v43, v44, v45, a3);
    v46 = OUTLINED_FUNCTION_0_18();
    ccdigest_update_internal(v46, v47, v48, v56);
    v49 = OUTLINED_FUNCTION_1_10();
    ccdigest_update_internal(v49, v50, a4, a5);
    v51 = OUTLINED_FUNCTION_1_10();
    v52(v51);
    OUTLINED_FUNCTION_3_2();
    cc_clear(v53 + 12, v17);
    sc_reduce(v58);
    sc_muladd(a3 + 32, v58, v60, v59);
  }

  cc_clear(0x40uLL, v60);
  return v31;
}

uint64_t cced25519_sign_with_rng(void *a1, void (**a2)(void, uint64_t, uint64_t *))
{
  v6 = timingsafe_enable_if_supported();
  v4 = OUTLINED_FUNCTION_2_4(a1, a2);
  cc_disable_dit_with_sb(&v6);
  return v4;
}

uint64_t cced25519_sign(void *a1)
{
  v5 = timingsafe_enable_if_supported();
  v2 = ccrng(0);
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_2_4(a1, v2);
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
  }

  cc_disable_dit_with_sb(&v5);
  return v3;
}

uint64_t ccapsic_client_check_intersect_response_ws(uint64_t a1, uint64_t **a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t **a7)
{
  v7 = *a2;
  if (*a7 != *a2 || *a3 != v7 || *a4 != v7)
  {
    return 4294967289;
  }

  v12 = (a2 + 24);
  v13 = *v7;
  v14 = a2[1];
  result = ccec_generate_scalar_fips_retry_ws(a1, v7, v14, a2 + 24);
  if (result)
  {
    return result;
  }

  v16 = OUTLINED_FUNCTION_0_19();
  result = ccec_generate_scalar_fips_retry_ws(v16, v17, v14, (v12 + 8 * v13));
  if (result)
  {
    return result;
  }

  result = cch2c_ws(a1, a2[2], a2[3]);
  if (result)
  {
    return result;
  }

  v18 = *a2;
  v19 = **a2;
  if (!ccn_cmp_public_value(3 * v13, v12 + 16 * v19 + 72 * v19, a7 + 2))
  {
    return 4294967289;
  }

  v20 = &v18[2 * v19 + v19];
  v21 = (a3 + 2);
  if (!ccn_cmp_public_value(3 * v13, v20 + 32, a3 + 2))
  {
    return 4294967289;
  }

  v22 = (a4 + 2);
  v23 = OUTLINED_FUNCTION_0_19();
  result = ccec_projectify_ws(v23, v24);
  if (!result)
  {
    v25 = OUTLINED_FUNCTION_0_19();
    result = ccec_projectify_ws(v25, v26);
    if (!result)
    {
      v27 = OUTLINED_FUNCTION_0_19();
      result = ccec_twin_mult_ws(v27, v28, v21, v12, v22, v12 + 8 * v13, (v12 + 16 * v13));
      if (!result)
      {
        v29 = OUTLINED_FUNCTION_0_19();
        result = ccec_twin_mult_ws(v29, v30, v22, v12, v12 + 16 * v13 + 48 * v13, v12 + 8 * v13, v31);
        if (!result)
        {
          v32 = OUTLINED_FUNCTION_0_19();
          result = ccec_affinify_ws(v32, v33);
          if (!result)
          {
            v34 = OUTLINED_FUNCTION_0_19();
            result = ccec_affinify_ws(v34, v35);
            if (!result)
            {
              ccn_seti(*v7, &v22[16 * **a4], 1);
              ccn_seti(*v7, &v21[16 * **a3], 1);
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t ccss_shamir_generate_share_poly_ws(uint64_t a1, uint64_t *a2, unsigned int (**a3)(void, unint64_t, uint64_t), unint64_t a4, uint64_t a5, int a6)
{
  if (!ccss_shamir_secret_one_byte_smaller_than_prime(*a2, a4) && !a6)
  {
    return 4294967176;
  }

  result = ccss_shamir_generate_random_poly_ws(a1, a2, a3);
  if (!result)
  {
    v13 = *a2;

    return ccss_encode_string_into_value_smaller_than_prime(v13, a2 + 2, a4, a5);
  }

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

uint64_t ccec_sign_ws(uint64_t a1, uint64_t **a2, unint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t (**a7)(void, unint64_t, void *))
{
  v14 = **a2;
  v15 = *(a1 + 16);
  v16 = (*(a1 + 24))(a1, v14);
  v17 = (*(a1 + 24))(a1, v14);
  result = ccec_sign_internal_ws(a1, a2, a3, a4, v16, v17, a7);
  if (!result)
  {
    v19 = *a2;
    v20 = **a2;
    v21 = ccder_sizeof_integer(v20, v16);
    v22 = ccder_sizeof_integer(v20, v17);
    v23 = ccder_sizeof(0x2000000000000010, v22 + v21);
    v24 = *a5;
    *a5 = v23;
    if (v24 >= v23)
    {
      v25 = v23;
      v26 = *v19;
      v27 = ccder_encode_integer(*v19, v17, a6, a6 + v23);
      v28 = ccder_encode_integer(v26, v16, a6, v27);
      ccder_encode_constructed_tl(0x2000000000000010uLL, a6 + v25, a6, v28);
      result = 0;
    }

    else
    {
      result = 4294967133;
    }
  }

  *(a1 + 16) = v15;
  return result;
}

uint64_t cch2c_encode_to_curve_ro_ws(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = (*(a2 + 16))();
  v11 = *v10;
  v29 = *(a1 + 16);
  (*(a1 + 24))(a1, *v10);
  (*(a1 + 24))(a1, v11);
  (*(a1 + 24))(a1, (24 * v11 + 23) >> 3);
  (*(a1 + 24))(a1, (24 * v11 + 23) >> 3);
  *a7 = v10;
  v12 = OUTLINED_FUNCTION_0_3();
  result = cch2c_hash_to_base_ws(v12, v13);
  if (!result)
  {
    v15 = OUTLINED_FUNCTION_0_3();
    result = cch2c_hash_to_base_ws(v15, v16);
    if (!result)
    {
      v17 = OUTLINED_FUNCTION_0_3();
      result = cch2c_map_to_curve_ws(v17, v18);
      if (!result)
      {
        v19 = OUTLINED_FUNCTION_1_11();
        result = ccec_projectify_ws(v19, v20);
        if (!result)
        {
          v21 = OUTLINED_FUNCTION_0_3();
          result = cch2c_map_to_curve_ws(v21, v22);
          if (!result)
          {
            v23 = OUTLINED_FUNCTION_1_11();
            result = ccec_projectify_ws(v23, v24);
            if (!result)
            {
              v25 = OUTLINED_FUNCTION_1_11();
              ccec_full_add_ws(v25, v26);
              v27 = OUTLINED_FUNCTION_1_11();
              result = ccec_affinify_ws(v27, v28);
              if (!result)
              {
                result = (*(a2 + 48))(a2, a7);
              }
            }
          }
        }
      }
    }
  }

  *(a1 + 16) = v29;
  return result;
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

void ccec_sign_internal_ws_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = cc_log_default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = 134217984;
    v4 = a1;
    _os_log_fault_impl(&dword_299D13000, v2, OS_LOG_TYPE_FAULT, "Digest should be at least 128 bits long: argument digest_len = %lu", &v3, 0xCu);
  }
}

uint64_t cckem_mlkem768_export_pubkey()
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

uint64_t cckem_mlkem768_import_pubkey()
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

uint64_t cckem_mlkem768_export_privkey()
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

uint64_t cckem_mlkem768_import_privkey()
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

uint64_t ccmldsa_verify_prehashed_internal_ws(uint64_t a1, _DWORD *a2, __int128 *a3, uint64_t a4, uint64_t a5, _OWORD *a6, void *a7)
{
  v67 = *MEMORY[0x29EDCA608];
  *a7 = 0;
  a7[1] = 0;
  v12 = *(a1 + 16);
  v13 = (*(a1 + 24))(a1, (a2[1] & 0xFFFFFFLL) << 7);
  v14 = OUTLINED_FUNCTION_3_3();
  v16 = v15(v14);
  v17 = (*(a1 + 24))(a1, (a2[2] & 0xFFFFFFLL) << 7);
  v18 = OUTLINED_FUNCTION_3_3();
  v20 = v19(v18);
  v62 = (*(a1 + 24))(a1, 128);
  if (a2[6] + 640 * a2[2] + a2[1] + (a2[4] >> 2) == a4)
  {
    v21 = v13;
    v22 = v12;
    v23 = a3[1];
    v65 = *a3;
    v66 = v23;
    v60 = v21;
    v61 = v16;
    ccmldsa_polyveck_bitunpack_t1(a2, v21, (a3 + 2));
    v24 = a2[4] >> 2;
    __memcpy_chk();
    ccmldsa_polyvecl_bitunpack_z(a2, v17, a5 + v24);
    v25 = (640 * a2[2]);
    v26 = a2[6];
    cc_clear(a2[1] << 10, v20);
    v27 = a2[1];
    if (v27)
    {
      v28 = 0;
      v29 = 0;
      v30 = a5 + v24 + v25;
      while (1)
      {
        v31 = *(v30 + v26 + v28);
        if (v29 > v31 || v26 < v31)
        {
          break;
        }

        if (v29 < v31)
        {
          v33 = v29;
          v34 = (a5 + v24 + v25 + v29);
          v35 = v33;
          while (1)
          {
            v36 = *v34;
            if (v35 > v33 && v36 <= *(v34 - 1))
            {
              goto LABEL_17;
            }

            *(v20 + 256 * (v28 & 0xFFFFFF) + v36) = 1;
            ++v35;
            ++v34;
            if (v31 == v35)
            {
              LODWORD(v31) = *(v30 + v26 + v28);
              v27 = a2[1];
              break;
            }
          }
        }

        ++v28;
        v29 = v31;
        if (v28 >= v27)
        {
          goto LABEL_19;
        }
      }

LABEL_17:
      v37 = 4294967150;
      v12 = v22;
    }

    else
    {
      LODWORD(v31) = 0;
LABEL_19:
      if (v31 <= v26)
      {
        v38 = v26;
      }

      else
      {
        v38 = v31;
      }

      v39 = (a5 + v25 + v24 + v31);
      v40 = v38 - v31;
      v12 = v22;
      while (v40)
      {
        v41 = *v39++;
        --v40;
        if (v41)
        {
          v37 = 4294967150;
          goto LABEL_33;
        }
      }

      v42 = ccmldsa_polyvecl_checknorm(a2, v17, 0x80000 - a2[5]);
      if (v42 || (v42 = ccmldsa_sample_in_ball(a2, v62, __s1), v42) || (ccmldsa_polyvecl_ntt_forward(a2, v17), v43 = OUTLINED_FUNCTION_1_12(), v42 = ccmldsa_polyvec_matrix_expand_ntt_pointwise(v43, v44, v45, v17), v42))
      {
        v37 = v42;
      }

      else
      {
        ccmldsa_ntt_forward(v62);
        ccmldsa_polyveck_shiftl(a2, v60);
        ccmldsa_polyveck_ntt_forward(a2, v60);
        ccmldsa_polyveck_ntt_pointwise_poly(a2, v60, v60, v62);
        v46 = OUTLINED_FUNCTION_1_12();
        ccmldsa_polyveck_sub(v46, v47, v61, v60);
        v48 = OUTLINED_FUNCTION_1_12();
        ccmldsa_polyveck_reduce(v48, v49);
        v50 = OUTLINED_FUNCTION_1_12();
        ccmldsa_polyveck_ntt_inverse(v50, v51);
        v52 = OUTLINED_FUNCTION_1_12();
        ccmldsa_polyveck_caddq(v52, v53);
        v54 = OUTLINED_FUNCTION_1_12();
        ccmldsa_polyveck_use_hint(v54, v55, v20);
        ccmldsa_compute_c(a2, __s2, a6, v61);
        v56 = a2[4] >> 2;
        if (!memcmp(__s1, __s2, v56))
        {
          v37 = 0;
        }

        else
        {
          v37 = 4294967150;
        }

        cc_fault_canary_set(a7, &CCMLDSA_FAULT_CANARY, v56, __s1, __s2);
      }
    }
  }

  else
  {
    v37 = 4294967289;
  }

LABEL_33:
  *(a1 + 16) = v12;
  return v37;
}

uint64_t ccmldsa_verify_internal(_DWORD *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, void *a9)
{
  v19[8] = *MEMORY[0x29EDCA608];
  if (a7 > 0xFF)
  {
    return 4294967289;
  }

  cckeccak_oneshot((320 * a1[1]) | 0x20u, a2, 0x40uLL, v19, 0x88uLL, 0x1Fu);
  ccmldsa_compute_mu(a1, v18, v19, a5, a6, a7, a8);
  return ccmldsa_verify_prehashed_internal(a1, a2, a3, a4, v18, a9);
}

uint64_t ccmldsa_verify()
{
  OUTLINED_FUNCTION_0_21();
  v1 = OUTLINED_FUNCTION_2_5(v0, *MEMORY[0x29EDCA608]);
  return ccmldsa_verify_internal(v1, v2, v3, v4, v5, v6, 0, 0, v8);
}

uint64_t ccmldsa_verify_with_context()
{
  OUTLINED_FUNCTION_0_21();
  v1 = OUTLINED_FUNCTION_2_5(v0, *MEMORY[0x29EDCA608]);
  return ccmldsa_verify_internal(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t ccmldsa_verify_prehashed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v6[2] = *MEMORY[0x29EDCA608];
  if (a4 != 64)
  {
    return 4294967289;
  }

  v6[0] = 0;
  v6[1] = 0;
  return ccmldsa_verify_prehashed_internal(*a1, (a1 + 8), a2, a3, a5, v6);
}

uint64_t ccmldsa_verify_prehashed_with_canary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, void *a6)
{
  if (a4 == 64)
  {
    return ccmldsa_verify_prehashed_internal(*a1, (a1 + 8), a2, a3, a5, a6);
  }

  else
  {
    return 4294967289;
  }
}

uint64_t ccmode_ccm_set_iv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  if (*(*a1 + 8) != 16)
  {
    return 0xFFFFFFFFLL;
  }

  *(a2 + 64) = 1;
  cc_clear(0x10uLL, (a2 + 48));
  *(a2 + 68) = 0;
  if ((a5 - 4) > 0xC)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if ((a3 - 14) >= 0xFFFFFFFFFFFFFFF9 && (a5 & 1) == 0)
  {
    v13 = (15 - a3) >= 8 || a7 >> (8 * (15 - a3)) == 0;
    v14 = !v13;
    if (!HIDWORD(a6) && !v14)
    {
      *(a2 + 16) = (4 * a5 - 8) | ((a6 != 0) << 6) | (14 - a3);
      *(a2 + 80) = a3;
      *(a2 + 88) = a5;
      v15 = (a2 + 17);
      __memcpy_chk();
      v16 = 0;
      do
      {
        *(a2 + v16 + 31) = a7;
        a7 >>= 8;
        --v16;
      }

      while (a3 - 15 != v16);
      v17 = OUTLINED_FUNCTION_0_22();
      v18(v17);
      *a2 = 14 - a3;
      __memcpy_chk();
      cc_clear(15 - a3, (a2 + 1 + a3));
      v19 = OUTLINED_FUNCTION_0_22();
      v20(v19);
      if (a6)
      {
        if (a6 >> 8 > 0xFE)
        {
          v23.i32[1] = -1;
          v24 = vmovn_s64(vshlq_u64(vdupq_n_s64(a6), xmmword_299DAA650));
          v23.i32[0] = *(a2 + 16);
          v25.i32[0] = 16646399;
          v25.i16[2] = v24.i16[0];
          v25.i16[3] = v24.i16[2];
          v26 = veor_s8(*&vmovl_u8(v23), v25);
          *(a2 + 16) = vuzp1_s8(v26, v26).u32[0];
          *(a2 + 20) ^= BYTE1(a6);
          v15 = (a2 + 21);
          v21 = 6;
        }

        else
        {
          *(a2 + 16) ^= BYTE1(a6);
          v21 = 2;
        }

        *v15 ^= a6;
        v22 = 4;
      }

      else
      {
        v21 = 0;
        v22 = 5;
      }

      result = 0;
      *(a2 + 72) = v21;
      *(a2 + 64) = v22;
    }
  }

  return result;
}

uint64_t generate_4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v26 = *MEMORY[0x29EDCA608];
  v8 = ccctr_context_size(*(a1 + 56));
  MEMORY[0x2A1C7C4A8](v8);
  v15 = &v24[-v14 - 8];
  if (a2 > 0x10000)
  {
    goto LABEL_22;
  }

  if (*(a1 + 72) && *(a1 + 48) > 0x1000000000000uLL)
  {
    v17 = 4294967234;
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
      v16 = derive(a1, v25, 1u, v9, v10, v11, v12, v13, a4);
      if (v16)
      {
        v17 = v16;
        goto LABEL_21;
      }

      goto LABEL_11;
    }

LABEL_22:
    v17 = 4294967233;
    goto LABEL_21;
  }

  if (*(a1 + 64) + 16 < a4)
  {
    goto LABEL_22;
  }

  cc_clear(0x30uLL, v25);
  __memcpy_chk();
LABEL_11:
  update(a1, v25);
LABEL_12:
  v23 = &v23;
  inc_uint(a1 + 40, 8uLL);
  ccctr_init_internal(*(a1 + 56));
  for (i = -a2; a2; a2 -= v19)
  {
    if (a2 >= 0x80)
    {
      v19 = 128;
    }

    else
    {
      v19 = a2;
    }

    ccctr_update_internal(*(a1 + 56), v15, v19, &zeros, a3);
    a3 += v19;
  }

  ccctr_update_internal(*(a1 + 56), v15, i & 0xF, &zeros, v24);
  cc_clear(i & 0xF, v24);
  if (a4)
  {
    v20 = v25;
  }

  else
  {
    v20 = &zeros;
  }

  update_with_ctr(a1, v15, v20);
  v21 = ccctr_context_size(*(a1 + 56));
  cc_clear(v21, v15);
  v17 = 0;
  ++*(a1 + 48);
LABEL_21:
  cc_clear(0x30uLL, v25);
  return v17;
}

uint64_t reseed(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  v18 = *MEMORY[0x29EDCA608];
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
      v17[v9 - 1] ^= *(a5 - 1 + v9);
    }

    goto LABEL_6;
  }

  v11 = 4294967233;
  if (a2 <= 0x10000 && a4 <= 0x10000 && *(a1[7] + 16) <= a2)
  {
    v12 = derive(a1, v17, 2u, a4, a5, a6, a7, a8, a2);
    if (v12)
    {
      v11 = v12;
      goto LABEL_7;
    }

LABEL_6:
    update(a1, v17);
    v11 = 0;
    a1[6] = 1;
LABEL_7:
    cc_clear(a1[8] + 16, v17);
  }

  return v11;
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

uint64_t cckem_xwing_mlkem768x25519_generate_key(uint64_t a1, unsigned int (**a2)(void, uint64_t, _BYTE *))
{
  v6 = *MEMORY[0x29EDCA608];
  if ((*a2)(a2, 32, v5))
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = cckem_xwing_mlkem768x25519_derive_key_from_seed(a1, v5);
  }

  cc_clear(0x20uLL, v5);
  return v3;
}

uint64_t cckem_xwing_mlkem768x25519_generate_key_with_seed(uint64_t a1, uint64_t a2, unsigned int (**a3)(void, uint64_t, uint64_t))
{
  if ((*a3)(a3, 32, a2))
  {
    return 0xFFFFFFFFLL;
  }

  return cckem_xwing_mlkem768x25519_derive_key_from_seed(a1, a2);
}

uint64_t cckem_xwing_mlkem768x25519_encapsulate(uint64_t a1, _OWORD *a2, uint64_t a3, unsigned int (**a4)(void, uint64_t, _BYTE *))
{
  v9 = *MEMORY[0x29EDCA608];
  if ((*a4)(a4, 64, v8))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return ccxwing_mlkem768x25519_encapsulate_derand_internal(a1, 64, v8, a2, a3);
  }
}

uint64_t cckem_xwing_mlkem768x25519_export_pubkey(uint64_t a1, unint64_t *a2, void *a3)
{
  v6 = *a2;
  if (v6 < cckem_pubkey_nbytes_ctx(a1))
  {
    return 4294967289;
  }

  v7 = cckem_pubkey_nbytes_ctx(a1);
  *a2 = v7;
  memcpy(a3, (a1 + 8), v7);
  return 0;
}

uint64_t cckem_xwing_mlkem768x25519_import_pubkey(uint64_t a1, size_t a2, const void *a3, void *a4)
{
  if (cckem_pubkey_nbytes_info(a1) != a2)
  {
    return 4294967289;
  }

  cckem_pub_ctx_init(a4, a1);
  memcpy(a4 + 1, a3, a2);
  return 0;
}

uint64_t cckem_xwing_mlkem768x25519_export_privkey(uint64_t a1, size_t *a2, void *a3)
{
  if (*a2 < 0x20)
  {
    return 4294967289;
  }

  v6 = cckem_public_ctx(a1);
  v7 = cckem_privkey_nbytes_ctx(v6);
  *a2 = v7;
  memcpy(a3, (a1 + *(*a1 + 16) + 2440), v7);
  return 0;
}

uint64_t cckem_xwing_mlkem768x25519_import_privkey(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != 32)
  {
    return 4294967289;
  }

  cckem_full_ctx_init(a4, a1);

  return cckem_xwing_mlkem768x25519_derive_key_from_seed(a4, a3);
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

uint64_t ccmode_ccm_finalize(uint64_t a1, uint64_t a2, void *__dst)
{
  if (*(a2 + 64) == 1)
  {
    return 4294967228;
  }

  if (*(a2 + 72))
  {
    (*(*a1 + 24))(a1 + 8, 1, a2 + 16, a2 + 16);
  }

  v6 = *(*a1 + 8);
  if (v6)
  {
    v7 = -v6;
    v8 = (v6 + a2 + 31);
    do
    {
      *v8 ^= *(v8 - 16);
      --v8;
    }

    while (!__CFADD__(v7++, 1));
  }

  memcpy(__dst, (a2 + 32), *(a2 + 88));
  return 0;
}

uint64_t cche_crt_composer_init_ws(uint64_t a1, unint64_t *a2, unint64_t a3, uint64_t a4)
{
  v21[1] = *MEMORY[0x29EDCA608];
  *a2 = a3;
  if (a3)
  {
    v8 = 0;
    v9 = a2 + 8;
    v10 = 1;
    v11 = 1;
    do
    {
      sizeof_struct_ccpolyzp_po2cyc();
      OUTLINED_FUNCTION_0_23();
      v13 = &v9[v12 * v8];
      v14 = *(a4 + 8 * v8);
      *v13 = v14;
      if (!is_mul_ok(v14, v11))
      {
        return 0xFFFFFFFFLL;
      }

      result = ccpolyzp_po2cyc_modulus_to_cczp_ws(a1, v13 + 2, v14);
      if (result)
      {
        return result;
      }

      v11 *= v14;
      v8 = v10++;
    }

    while (v8 < a3);
    result = ccpolyzp_po2cyc_modulus_to_cczp_ws(a1, a2 + 2, v11);
    if (!result)
    {
      v16 = 0;
      a2[1] = v11;
      v17 = 1;
      while (1)
      {
        sizeof_struct_ccpolyzp_po2cyc();
        OUTLINED_FUNCTION_0_23();
        v19 = &v9[v18 * v16];
        v21[0] = v11 / *(a4 + 8 * v16);
        cczp_modn_ws(a1, v19 + 2, &v20, 1, v21);
        result = cczp_inv_ws(a1, (v19 + 2));
        if (result)
        {
          break;
        }

        cczp_mul_ws(a1, (a2 + 2));
        v16 = v17++;
        if (v16 >= a3)
        {
          return 0;
        }
      }
    }
  }

  else
  {
    result = ccpolyzp_po2cyc_modulus_to_cczp_ws(a1, a2 + 2, 1uLL);
    if (!result)
    {
      a2[1] = 1;
    }
  }

  return result;
}

uint64_t cche_crt_compose_ws(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, unint64_t a5, uint64_t a6)
{
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v14 = a5;
  sizeof_struct_ccpolyzp_po2cyc();
  OUTLINED_FUNCTION_0_23();
  v16 = v12(a1, v15 + v15 * v14);
  result = cche_crt_composer_init_ws(a1, v16, a5, a6);
  if (!result)
  {
    result = cche_crt_composer_compose_ws(a1, v16, a2, a3, a4);
  }

  *(a1 + 16) = v13;
  return result;
}

uint64_t ccmode_gcm_encrypt(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, int8x16_t a10)
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
LABEL_18:
        if (!a2)
        {
          return 0;
        }

        v36 = a4 - 1;
        v37 = a1 + v23 + 63;
        v38 = a2;
        do
        {
          *(v36 + v38) = *(v37 + v38) ^ *(a3 - 1 + v38);
          --v38;
        }

        while (v38);
        do
        {
          OUTLINED_FUNCTION_0_24(v36);
        }

        while (!v33);
        result = 0;
        *(a1 + 96) += a2;
        return result;
      }

      v25 = a4 - 1;
      v26 = 16 - v23;
      do
      {
        *(v25 + v26) = *((v14 & 0xF) + a1 + 63 + v26) ^ *(a3 - 1 + v26);
        --v26;
      }

      while (v26);
      do
      {
        OUTLINED_FUNCTION_0_24(v25);
      }

      while (!v33);
      ccmode_gcm_mult_h(a1, (a1 + 16), v27, v28, v29, v30, v31, v32);
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
          *(a4 + i + 15) = *(a1 + i + 79) ^ *(a3 + i + 15);
        }

        for (j = 0; j != -16; --j)
        {
          *(a1 + j + 31) ^= *(a4 + j + 15);
        }

        ccmode_gcm_mult_h(a1, (a1 + 16), v15, v16, v17, v18, v19, v20);
        a2 -= 16;
        a3 += 16;
        a4 += 16;
        *(a1 + 96) += 16;
        ccmode_gcm_update_pad(a1);
      }

      while (a2 > 0xF);
    }

    v23 = 0;
    goto LABEL_18;
  }

  return result;
}

uint64_t ccpolyzp_po2cyc_base_convert_init_ws(uint64_t a1, uint64_t *a2, char *a3, _DWORD *a4)
{
  v115[1] = *MEMORY[0x29EDCA608];
  if (*a3 != *a4)
  {
    return 4294967289;
  }

  *a2 = a3;
  a2[1] = a4;
  v6 = *(a3 + 1);
  v107 = a4[1];
  v105 = *(a1 + 16);
  v7 = (*(a1 + 24))(a1, v6 + 1);
  v110 = a1;
  v8 = (*(a1 + 24))(a1, v6 + 1);
  v9 = a3;
  v109 = a3;
  if (v6)
  {
    v10 = v8;
    v11 = 0;
    while (1)
    {
      v12 = v11;
      ccn_seti(v6, v7, 1);
      v13 = 0;
      ++v11;
      do
      {
        v14 = v11;
        if (v13 != v12)
        {
          v15 = (*(v9 + 1) - 1);
          v16 = v9;
          if (v13 < v15)
          {
            v16 = v9;
            do
            {
              v16 = *(v16 + 14);
              LODWORD(v15) = v15 - 1;
            }

            while (v15 > v13);
          }

          v14 = v13 + 1;
          ccn_muln(v13 + 1, v10, v7, 1uLL, v16 + 18);
          ccn_set(v14, v7, v10);
        }

        v13 = v14;
      }

      while (v14 != v6);
      if (v107)
      {
        break;
      }

LABEL_20:
      if (v11 == v6)
      {
        goto LABEL_21;
      }
    }

    v17 = 0;
    while (1)
    {
      v18 = a4[1] - 1;
      v19 = a4;
      v20 = a4;
      if (v18 > v17)
      {
        v21 = a4[1] - 1;
        v19 = a4;
        do
        {
          v19 = *(v19 + 14);
          --v21;
        }

        while (v21 > v17);
        v20 = a4;
        do
        {
          v20 = *(v20 + 14);
          --v18;
        }

        while (v18 > v17);
      }

      v22 = *(v20 + 2);
      v23 = v12 + *(*a2 + 4) * v17;
      v24 = &a2[((sizeof_struct_ccrns_mul_modulus() + 7) >> 3) * v23 + 12];
      v115[0] = 0;
      cczp_modn_ws(v110, v19 + 15, v115, v6, v7);
      v9 = v109;
      if (ccrns_mul_modulus_init_ws(v110, v24, v22, v115[0]))
      {
        break;
      }

      if (++v17 == v107)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_21:
  v25 = v110;
  *(v110 + 16) = v105;
  v26 = *a2;
  v27 = *(*a2 + 4);
  if (!v27)
  {
LABEL_42:
    v54 = a2[1];
    v55 = *(v54 + 4);
    while (--v55)
    {
      v54 = *(v54 + 112);
    }

    v56 = *a2;
    v57 = *(*a2 + 4);
    if (v57)
    {
      v58 = 0;
      v59 = 1;
      v60 = a4;
      do
      {
        while (--v57 > v58)
        {
          v56 = *(v56 + 112);
        }

        v61 = *(v56 + 16);
        v62 = v61 * v59;
        v63 = (v61 * v59) >> 64;
        v64 = *(v54 + 32);
        v65 = (v62 * v64) >> 64;
        v66 = (v63 * v64) >> 64;
        v67 = v63 * v64;
        v38 = __CFADD__(v65, v67);
        v68 = v65 + v67;
        v69 = v38;
        v70 = v69 + __CFADD__(v62 * *(v54 + 40), v68) + v66 + *(v54 + 40) * v63 + ((v62 * *(v54 + 40)) >> 64);
        v59 = v62 + *(v54 + 16) * ~v70 + (((v62 + *(v54 + 16) * ~v70) >> 63) & *(v54 + 16));
        ++v58;
        v56 = *a2;
        v57 = *(*a2 + 4);
      }

      while (v58 < v57);
    }

    else
    {
      v59 = 1;
      v60 = a4;
    }

    result = ccrns_mul_modulus_init_ws(v110, a2 + 2, *(v54 + 16), v59);
    if (result)
    {
      return result;
    }

    v71 = *(v9 + 1);
    if (!v71)
    {
LABEL_63:
      v114 = 0x1FFFFFFFFFFFFFFFLL;
      v75 = v60;
      v76 = v60[1] - 1;
      if (v60[1] != 1)
      {
        v75 = v60;
        do
        {
          v75 = *(v75 + 14);
          --v76;
        }

        while (v76);
      }

      cczp_modn_ws(v110, v75 + 15, a2 + 5, 1, &v114);
      result = cczp_inv_field_ws(v110, (v75 + 30), a2 + 6, a2 + 5);
      if (!result)
      {
        result = ccpolyzp_po2cyc_base_convert_neg_q_inv_mod_t_ws(v110, a2 + 7, a2, 0);
        if (!result)
        {
          if (v60[1] < 2u || (result = ccpolyzp_po2cyc_base_convert_neg_q_inv_mod_t_ws(v110, a2 + 8, a2, 1u), !result))
          {
            cczp_modn_ws(v110, v75 + 15, &v113, 1, v9 + 144);
            result = cczp_inv_field_ws(v110, (v75 + 30), &v113, &v113);
            if (!result)
            {
              v77 = cczp_prime((v75 + 30));
              v115[0] = 0;
              ccn_read_uint_public_value(1uLL, v115, 8uLL, v77);
              result = ccrns_mul_modulus_init_var_time_ws(v110, a2 + 9, bswap64(v115[0]), v113);
              if (!result)
              {
                LODWORD(v78) = *(v9 + 1) - 1;
                if (*(v9 + 1) == 1)
                {
LABEL_83:
                  ccn_mul_ws(v25, 1, v112, (v75 + 36), &v114);
                  LODWORD(v97) = *(v9 + 1);
                  if (v97)
                  {
                    v98 = 0;
                    do
                    {
                      v99 = v9;
                      if (v98 < (v97 - 1))
                      {
                        v100 = v97 - 2;
                        v99 = v9;
                        do
                        {
                          v99 = *(v99 + 14);
                          v38 = v98 >= v100--;
                        }

                        while (!v38);
                      }

                      cczp_modn_ws(v25, v99 + 15, &v111, 2, v112);
                      v101 = v111;
                      sizeof_struct_ccrns_mul_modulus();
                      OUTLINED_FUNCTION_0_25();
                      a2[v102 + 12 + v103 * v104 + v98++] = v101;
                      v97 = *(v9 + 1);
                    }

                    while (v98 < v97);
                  }

                  return 0;
                }

                else
                {
                  v79 = 0;
                  v80 = *(v9 + 2);
                  v81 = a2 + 12;
                  while (1)
                  {
                    v82 = v78 - 1;
                    v83 = v82;
                    v84 = v9;
                    do
                    {
                      v84 = *(v84 + 14);
                      v38 = v79 >= v83--;
                    }

                    while (!v38);
                    v85 = v9;
                    do
                    {
                      v85 = *(v85 + 14);
                      v38 = v79 >= v82--;
                    }

                    while (!v38);
                    sizeof_struct_ccrns_mul_modulus();
                    OUTLINED_FUNCTION_0_25();
                    v89 = &v81[v86 + v87 * v88 + v88 + v87 * v79];
                    v90 = *(v85 + 2);
                    v91 = v80 + v90 * ~((*(v85 + 3) * v80) >> 64);
                    v92 = v91 + ((v91 >> 63) & v90);
                    result = ccrns_mul_modulus_init_var_time_ws(v110, v89, v90, v92);
                    if (result)
                    {
                      break;
                    }

                    v115[0] = v92;
                    result = cczp_inv_field_ws(v110, (v84 + 120), v115, v115);
                    if (result)
                    {
                      break;
                    }

                    v93 = v115[0];
                    sizeof_struct_ccrns_mul_modulus();
                    OUTLINED_FUNCTION_0_25();
                    result = ccrns_mul_modulus_init_var_time_ws(v110, &v81[v94 + v95 * v96 + v96 + v95 * (v96 - 1) + v95 * v79], *(v85 + 2), v93);
                    if (result)
                    {
                      break;
                    }

                    v25 = v110;
                    ++v79;
                    v9 = v109;
                    v78 = (*(v109 + 1) - 1);
                    if (v79 >= v78)
                    {
                      goto LABEL_83;
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

    v72 = 0;
    while (1)
    {
      v73 = v9;
      if (v71 - 1 > v72)
      {
        v74 = v71 - 1;
        v73 = v9;
        do
        {
          v73 = *(v73 + 14);
          --v74;
        }

        while (v74 > v72);
      }

      if (*(v73 + 2) == 0x1FFFFFFFFFFFFFFFLL)
      {
        return 4294967289;
      }

      if (++v72 == v71)
      {
        goto LABEL_63;
      }
    }
  }

  v28 = 0;
  while (1)
  {
    v29 = (*(v26 + 4) - 1);
    v30 = v26;
    v31 = v26;
    if (v28 < v29)
    {
      v32 = *(v26 + 4) - 1;
      v30 = v26;
      do
      {
        v30 = *(v30 + 112);
        --v32;
      }

      while (v32 > v28);
      v31 = v26;
      do
      {
        v31 = v31[14];
        LODWORD(v29) = v29 - 1;
      }

      while (v29 > v28);
    }

    v33 = 0;
    v34 = 1;
    do
    {
      if (v28 != v33)
      {
        v35 = *(v26 + 4);
        v36 = v26;
        if (v33 < (v35 - 1))
        {
          v37 = v35 - 2;
          v36 = v26;
          do
          {
            v36 = *(v36 + 112);
            v38 = v33 >= v37--;
          }

          while (!v38);
        }

        v39 = v31[2];
        v40 = *(v36 + 16) + v39 * ~((v31[3] * *(v36 + 16)) >> 64);
        v41 = v40 + ((v40 >> 63) & v39);
        v42 = v41 * v34;
        v43 = (v41 * v34) >> 64;
        v44 = v31[4];
        v45 = (v42 * v44) >> 64;
        v46 = (v43 * v44) >> 64;
        v47 = v43 * v44;
        v38 = __CFADD__(v45, v47);
        v48 = v45 + v47;
        v49 = v38;
        v50 = v49 + __CFADD__(v42 * v31[5], v48) + v46 + v31[5] * v43 + ((v42 * v31[5]) >> 64);
        v34 = v42 + v31[2] * ~v50 + (((v42 + v31[2] * ~v50) >> 63) & v31[2]);
      }

      ++v33;
    }

    while (v33 != v27);
    v115[0] = v34;
    result = cczp_inv_field_ws(v110, v30 + 120, v115, v115);
    if (result)
    {
      return result;
    }

    v52 = *a2;
    v53 = sizeof_struct_ccrns_mul_modulus();
    result = ccrns_mul_modulus_init_var_time_ws(v110, &a2[((v53 + 7) >> 3) * (*(a2[1] + 4) * *(v52 + 4)) + 12 + ((v53 + 7) >> 3) * v28], v31[2], v115[0]);
    if (result)
    {
      return result;
    }

    if (++v28 == v27)
    {
      goto LABEL_42;
    }
  }
}

uint64_t ccpolyzp_po2cyc_base_convert_neg_q_inv_mod_t_ws(uint64_t a1, void *a2, uint64_t *a3, unsigned int a4)
{
  v16[1] = *MEMORY[0x29EDCA608];
  v7 = *a3;
  v6 = a3[1];
  v8 = *(v6 + 4);
  while (--v8 > a4)
  {
    v6 = *(v6 + 112);
  }

  ccn_seti(1, a2, 1);
  v9 = *(v7 + 4);
  if (v9)
  {
    for (i = 0; i < v9; ++i)
    {
      v11 = v9 - 1;
      v12 = v7;
      if (v11 > i)
      {
        v12 = v7;
        do
        {
          v12 = *(v12 + 112);
          --v11;
        }

        while (v11 > i);
      }

      v13 = cczp_prime(v12 + 120);
      cczp_modn_ws(a1, (v6 + 120), v16, 1, v13);
      cczp_mul_ws(a1, v6 + 120);
      v9 = *(v7 + 4);
    }
  }

  v14 = cczp_inv_field_ws(a1, v6 + 120, a2, a2);
  if (!v14)
  {
    cczp_negate(v6 + 120, a2, a2);
  }

  return v14;
}

uint64_t ccpolyzp_po2cyc_base_convert_poly_ws(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v43 = *MEMORY[0x29EDCA608];
  v7 = *a3;
  if (!ccpolyzp_po2cyc_ctx_eq(*a3, *a4))
  {
    return 4294967289;
  }

  v8 = *a2;
  if (!ccpolyzp_po2cyc_ctx_eq(*a2, a4[1]))
  {
    return 4294967289;
  }

  v9 = *v7;
  if (!*v7)
  {
    return 0;
  }

  v10 = 0;
  v11 = *(v8 + 4);
  v12 = a2 + 1;
  v35 = v8;
  v36 = a2;
  v34 = a2 + 1;
  while (!v11)
  {
LABEL_21:
    if (++v10 >= v9)
    {
      return 0;
    }
  }

  v13 = 0;
  while (1)
  {
    v14 = v11 - 1;
    v15 = v8;
    if (v11 - 1 > v13)
    {
      v15 = v8;
      do
      {
        v15 = v15[14];
        --v14;
      }

      while (v14 > v13);
    }

    v41 = 0;
    v42 = 0;
    if (v7[1])
    {
      break;
    }

    v24 = 0;
    v23 = 0;
LABEL_16:
    v25 = v15[4];
    v26 = (v25 * v23) >> 64;
    v27 = v25 * v24;
    v28 = (v25 * v24) >> 64;
    v29 = __CFADD__(v26, v27);
    v30 = v26 + v27;
    v31 = v29;
    v32 = v31 + __CFADD__(v15[5] * v23, v30) + v28 + v15[5] * v24 + ((v15[5] * v23) >> 64);
    v12[v10 + **a2 * v13++] = v23 + v15[2] * ~v32 + (((v23 + v15[2] * ~v32) >> 63) & v15[2]);
    v11 = *(v8 + 4);
    if (v13 >= v11)
    {
      v9 = *v7;
      goto LABEL_21;
    }
  }

  v16 = 0;
  while (1)
  {
    v17 = *(*a4 + 4);
    v18 = (sizeof_struct_ccrns_mul_modulus() + 7) >> 3;
    v19 = v18 * (v16 + v13 * v17);
    v20 = a3[(v10 + **a3 * v16) + 1];
    v21 = &a4[v18 * (*(a4[1] + 4) * v17) + 12 + v18 * v16];
    v22 = (v21[2] * v20) >> 64;
    v40 = v21[1] * v20 + *v21 * ~v22 + (((v21[1] * v20 + *v21 * ~v22) >> 63) & *v21);
    v39 = a4[v19 + 13];
    ccn_mul_ws(a1, 1, v38, &v40, &v39);
    if (ccn_add_ws(a1, 2, &v41, &v41, v38))
    {
      return 0xFFFFFFFFLL;
    }

    if (++v16 >= v7[1])
    {
      v23 = v41;
      v24 = v42;
      v8 = v35;
      a2 = v36;
      v12 = v34;
      goto LABEL_16;
    }
  }
}

uint64_t ccpolyzp_po2cyc_base_convert_exact_poly_ws(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a3;
  if (ccpolyzp_po2cyc_ctx_eq(*a3, *a4))
  {
    v9 = *a2;
    v10 = a4[1];
    v11 = *(v10 + 4);
    while (--v11)
    {
      v10 = *(v10 + 112);
    }

    if (ccpolyzp_po2cyc_ctx_eq(*a2, v10))
    {
      v12 = *(v9 + 4);
      while (--v12)
      {
        v9 = *(v9 + 112);
      }

      v13 = *v8;
      v39 = *(a1 + 16);
      v40 = a1;
      v14 = (*(a1 + 24))(a1, v13);
      cc_clear(8 * v13, v14);
      v15 = v8[1];
      if (v15)
      {
        v16 = 0;
        v17 = a2 + 1;
        do
        {
          v18 = v8;
          if (v16 < v15 - 1)
          {
            v19 = v15 - 2;
            v18 = v8;
            do
            {
              v18 = *(v18 + 14);
            }

            while (v16 < v19--);
          }

          v41 = v15;
          v21 = *a4;
          v22 = sizeof_struct_ccrns_mul_modulus();
          if (*v8)
          {
            v23 = 0;
            v24 = (v22 + 7) >> 3;
            v25 = &a4[v24 * v16 + 12];
            v26 = &v25[v24 * (*(a4[1] + 4) * v21[1])];
            do
            {
              v27 = a3[(v23 + v16 * **a3) + 1];
              v28 = v26[1] * v27 + *v26 * ~((v26[2] * v27) >> 64);
              v29 = v28 + ((v28 >> 63) & *v26);
              v30 = v25[1];
              v31 = (v25[2] * v29) >> 64;
              v32 = *v25;
              *(v14 + v23) = *(v14 + v23) + v29 / *(v18 + 2);
              v33 = v30 * v29 + v32 * ~v31;
              if (v16)
              {
                v34 = v17[v23];
              }

              else
              {
                v34 = 0;
              }

              v17[v23++] = (((v33 + ((v33 >> 63) & v32) + v34 - *(v9 + 16)) >> 63) & *(v9 + 16)) + v33 + ((v33 >> 63) & v32) + v34 - *(v9 + 16);
              v35 = *v8;
            }

            while (v23 < v35);
            v15 = v8[1];
          }

          else
          {
            LODWORD(v35) = 0;
            v15 = v41;
          }

          ++v16;
        }

        while (v16 < v15);
        if (!v35)
        {
          goto LABEL_28;
        }
      }

      else if (!*v8)
      {
LABEL_28:
        result = 0;
        *(v40 + 16) = v39;
        return result;
      }

      do
      {
        OUTLINED_FUNCTION_1_13();
        OUTLINED_FUNCTION_4_1(v36);
      }

      while (v37 < *v8);
      goto LABEL_28;
    }
  }

  return 4294967289;
}

uint64_t ccpolyzp_po2cyc_base_convert_divide_and_round_ws(uint64_t a1, int **a2, uint64_t *a3, uint64_t a4)
{
  v36 = *MEMORY[0x29EDCA608];
  if (!ccpolyzp_po2cyc_ctx_eq(*a3, *a4))
  {
    return 4294967289;
  }

  v8 = *a2;
  if ((*a2)[1] != 1)
  {
    return 4294967289;
  }

  v9 = *(a4 + 8);
  v10 = *(v9 + 4);
  v11 = v10 - 1;
  if (v10 == 1)
  {
    return 4294967289;
  }

  v12 = *(a4 + 8);
  do
  {
    v12 = *(v12 + 112);
    --v11;
  }

  while (v11);
  v13 = v10 == 2 && *(v8 + 2) == *(v12 + 16);
  if (!v13 || *(*(v9 + 112) + 16) == 0x1FFFFFFFFFFFFFFFLL || *(v9 + 16) != 0x1FFFFFFFFFFFFFFFLL)
  {
    return 4294967289;
  }

  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v16 = *a3;
  v17 = sizeof_struct_ccpolyzp_po2cyc();
  v18 = v14(a1, (*(v16 + 4) * *v16) + ((v17 + 7) >> 3));
  sizeof_struct_ccpolyzp_po2cyc();
  OUTLINED_FUNCTION_3_4();
  memmove(v18, a3, v19);
  sizeof_struct_ccrns_mul_modulus();
  OUTLINED_FUNCTION_0_25();
  ccpolyzp_po2cyc_coeff_scalar_mul_ws(a1, v18, a3, a4 + 8 * v20 + 8 * v21 * v22 + 96);
  LODWORD(v16) = **a3;
  v23 = *(a1 + 24);
  v24 = sizeof_struct_ccpolyzp_po2cyc();
  v25 = v23(a1, (2 * v16) + ((v24 + 7) >> 3));
  ccpolyzp_po2cyc_init_zero(v25, *(a4 + 8));
  v26 = ccpolyzp_po2cyc_base_convert_poly_ws(a1, v25, v18, a4);
  if (!v26)
  {
    v35 = *(a4 + 56);
    ccpolyzp_po2cyc_coeff_scalar_mul_ws(a1, v25, v25, &v35);
    v27 = **a3;
    if (v27)
    {
      for (i = 0; i != v27; ++i)
      {
        v29 = v25[(i + **v25) + 1];
        v30 = *(v8 + 2);
        v31 = v29 + v30 * ~((*(v8 + 3) * v29) >> 64);
        v32 = v25[i + 1] - ((v31 + ((v31 >> 63) & v30) - *(a4 + 40) + (((v31 + ((v31 >> 63) & v30) - *(a4 + 40)) >> 63) & v30)) & (((v29 - 0xFFFFFFFFFFFFFFFLL) >> 63) - 1) | (v31 + ((v31 >> 63) & v30)) & -((v29 - 0xFFFFFFFFFFFFFFFLL) >> 63));
        a2[i + 1] = (v32 + ((v32 >> 63) & v30));
      }
    }

    v34 = *(a4 + 48);
    ccpolyzp_po2cyc_coeff_scalar_mul_ws(a1, a2, a2, &v34);
  }

  *(a1 + 16) = v15;
  return v26;
}

uint64_t ccpolyzp_po2cyc_base_convert_mod_t_divide_and_round_q_last_ws(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(*a2 + 112);
  if (!ccpolyzp_po2cyc_ctx_eq(*a2, *a3) || !*(v5 + 14))
  {
    return 4294967289;
  }

  v7 = *(a1 + 24);
  v50 = *(a1 + 16);
  v8 = sizeof_struct_ccpolyzp_po2cyc();
  v9 = v7(a1, v6[1] * *v6 + ((v8 + 7) >> 3));
  *v9 = v6;
  v10 = *(a3 + 8);
  v11 = *(v10 + 4);
  while (--v11)
  {
    v10 = *(v10 + 112);
  }

  v56 = *v5;
  v57 = 1;
  v52 = v5;
  v12 = *(a1 + 24);
  v13 = sizeof_struct_ccpolyzp_po2cyc();
  v14 = v12(a1, v56 + ((v13 + 7) >> 3));
  v15 = *(a1 + 24);
  v16 = *v52;
  v51 = a1;
  v17 = (sizeof_struct_ccpolyzp_po2cyc_ctx() + 7) >> 3;
  if (v16 >= 0x80)
  {
    v18 = 128;
  }

  else
  {
    v18 = v16;
  }

  v19 = v17 + 2 * (v16 + ((sizeof_struct_ccrns_mul_modulus() + 7) >> 3) * v18);
  v20 = v51;
  v21 = v15(v51, v19 + 6);
  v55 = *(v52 + 2);
  result = ccpolyzp_po2cyc_ctx_init_ws(v51, v21, &v56, &v55, 0);
  if (!result)
  {
    __dst = v14;
    v23 = &a2[**a2 * v6[1] + 1];
    v24 = *(v51 + 24);
    v25 = sizeof_struct_ccpolyzp_po2cyc();
    v26 = v24(v51, v57 * v56 + ((v25 + 7) >> 3));
    result = ccpolyzp_po2cyc_init(v26, v21, v23);
    if (!result)
    {
      result = ccpolyzp_po2cyc_inv_ntt(v26);
      if (!result)
      {
        sizeof_struct_ccpolyzp_po2cyc();
        OUTLINED_FUNCTION_3_4();
        memmove(__dst, v26, v27);
        if (v56)
        {
          do
          {
            OUTLINED_FUNCTION_5_1();
            OUTLINED_FUNCTION_1_13();
            OUTLINED_FUNCTION_4_1(v28);
          }

          while (v29 < v56);
        }

        v54 = v6[1];
        if (v54)
        {
          v30 = 0;
          v31 = v26 + 1;
          do
          {
            v32 = v52[1];
            v33 = v52;
            if (v30 < v32 - 1)
            {
              v34 = v32 - 2;
              v33 = v52;
              do
              {
                v33 = v33[14];
              }

              while (v30 < v34--);
            }

            sizeof_struct_ccrns_mul_modulus();
            if (*v6)
            {
              OUTLINED_FUNCTION_2_6();
              do
              {
                OUTLINED_FUNCTION_5_1();
                OUTLINED_FUNCTION_1_13();
                v39 = v33[2];
                v40 = v31[v38] + v39 * ~((v33[3] * v31[v38]) >> 64);
                (&v9[v38 + 1])[v30 * **v9] = (((v40 >> 63) & v39) + (v36 & v37) - v39 + v41 + v40 + (((((v40 >> 63) & v39) + (v36 & v37) - v39 + v41 + v40) >> 63) & v39));
              }

              while (v38 + 1 < *v6);
              v54 = v6[1];
            }

            ++v30;
          }

          while (v30 < v54);
        }

        result = ccpolyzp_po2cyc_fwd_ntt(v9);
        if (!result)
        {
          v42 = v6[1];
          if (v42)
          {
            v43 = 0;
            v44 = *v6;
            do
            {
              sizeof_struct_ccrns_mul_modulus();
              if (v44)
              {
                OUTLINED_FUNCTION_2_6();
                do
                {
                  OUTLINED_FUNCTION_1_13();
                  a2[(v48 + v43 * **a2) + 1] = v47 + (v45 & v46);
                  v44 = *v6;
                }

                while (v48 + 1 < *v6);
                v42 = v6[1];
              }

              ++v43;
            }

            while (v43 < v42);
          }

          result = 0;
          *a2 = *(*a2 + 112);
        }

        v20 = v51;
      }
    }
  }

  *(v20 + 16) = v50;
  return result;
}

uint64_t cced448_sign_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (**a7)(void, uint64_t, uint64_t *))
{
  OUTLINED_FUNCTION_1_14();
  v23 = *MEMORY[0x29EDCA608];
  v15 = (*v14)(v14, 57, v22);
  if (v15)
  {
    return v15;
  }

  v18 = cc_malloc_clear(0x700uLL);
  v19 = xmmword_299DAF870;
  v20 = cc_ws_alloc;
  v21 = cc_ws_free;
  if (!v18)
  {
    return 4294967283;
  }

  v16 = cced448_sign_ws(&v18, v12, v11, v10, v9, v8, v7, v22, a7);
  v21(&v18);
  return v16;
}

uint64_t cced448_sign_ws(uint64_t a1, void *a2, char *a3, uint64_t a4, char *a5, char *a6, char *a7, uint64_t a8, uint64_t (**a9)(void, uint64_t, uint64_t *))
{
  v62 = *MEMORY[0x29EDCA608];
  v13 = cczp_n(a2);
  v53 = *(a1 + 16);
  v14 = (*(a1 + 24))(a1, v13);
  v15 = (*(a1 + 24))(a1, v13);
  v52 = (*(a1 + 24))(a1, v13);
  v16 = (*(a1 + 24))(a1, 3 * v13);
  v60 = 0u;
  memset(v61, 0, sizeof(v61));
  v58 = 0u;
  v59 = 0u;
  memset(v57, 0, sizeof(v57));
  ccshake256(0x39uLL, a7, 0x72uLL, v57);
  LOBYTE(v57[0]) &= 0xFCu;
  BYTE7(v58) |= 0x80u;
  if (v13)
  {
    v17 = v57;
    v18 = v14;
    v19 = v13;
    do
    {
      v20 = *v17++;
      *v18++ = v20;
      --v19;
    }

    while (v19);
  }

  v21 = OUTLINED_FUNCTION_0_26();
  v23 = cced448_scalar_mult_base_masked_ws(v21, v22, a9, v16, v14);
  if (v23)
  {
    goto LABEL_18;
  }

  v24 = OUTLINED_FUNCTION_0_26();
  v23 = ccec_affinify_ws(v24, v25);
  if (v23)
  {
    goto LABEL_18;
  }

  v26 = 0;
  v27 = &v16[8 * *a2];
  do
  {
    *&v56[v26] = *&v27[v26];
    v26 += 8;
  }

  while (v26 != 56);
  v56[56] = *v16 << 7;
  if (cc_cmp_safe_internal(57, a6, v56))
  {
    v50 = 4294967289;
    goto LABEL_17;
  }

  v28 = OUTLINED_FUNCTION_0_26();
  cced448_shake_to_scalar_ws(v28, v29, v15, v30, v31, v32, v33, v34, a5);
  v35 = OUTLINED_FUNCTION_0_26();
  v23 = cced448_scalar_mult_base_masked_ws(v35, v36, a9, v16, v15);
  if (v23 || (v37 = OUTLINED_FUNCTION_0_26(), v23 = ccec_affinify_ws(v37, v38), v23))
  {
LABEL_18:
    v50 = v23;
  }

  else
  {
    v39 = 0;
    v40 = &v16[8 * *a2];
    do
    {
      *&a3[v39] = *&v40[v39];
      v39 += 8;
    }

    while (v39 != 56);
    a3[56] = *v16 << 7;
    v41 = OUTLINED_FUNCTION_0_26();
    cced448_shake_to_scalar_ws(v41, v42, v52, 0x39uLL, a3, 0x39uLL, a6, v43, a5);
    v44 = OUTLINED_FUNCTION_2_7();
    cczp_mul_ws(v44, v45);
    v46 = OUTLINED_FUNCTION_2_7();
    cczp_add_ws(v46, v47);
    if (v13)
    {
      v48 = a3 + 64;
      do
      {
        v49 = *v14++;
        *(v48 - 7) = v49;
        v48 += 8;
        --v13;
      }

      while (v13);
    }

    v50 = 0;
    a3[113] = 0;
  }

LABEL_17:
  cc_clear(0x7EuLL, v57);
  *(a1 + 16) = v53;
  return v50;
}

uint64_t cced448_sign()
{
  OUTLINED_FUNCTION_1_14();
  v9 = timingsafe_enable_if_supported();
  v6 = ccec_cp_ed448();
  v7 = cced448_sign_internal(v6, v4, v3, v2, v1, v0, v5);
  cc_disable_dit_with_sb(&v9);
  return v7;
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

uint64_t ccn_random_bits_fips(uint64_t a1, void *a2, uint64_t (**a3)(void, unint64_t, void *))
{
  v10 = *MEMORY[0x29EDCA608];
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

uint64_t ccchacha20poly1305_setnonce_internal(int32x4_t *a1, __int32 *a2)
{
  v5 = *MEMORY[0x29EDCA608];
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

uint64_t ccchacha20poly1305_aad(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int *a4)
{
  v9 = timingsafe_enable_if_supported();
  if (*(a2 + 248) == 2)
  {
    ccpoly1305_update_internal((a2 + 136), a3, a4);
    v7 = 0;
    *(a2 + 232) += a3;
  }

  else
  {
    v7 = 1;
  }

  cc_disable_dit_with_sb(&v9);
  return v7;
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

uint64_t ccchacha20poly1305_encrypt_oneshot()
{
  OUTLINED_FUNCTION_0_28();
  v53 = *MEMORY[0x29EDCA608];
  HIDWORD(v24) = timingsafe_enable_if_supported();
  bzero((v3 + 48), 0xD0uLL);
  updated = OUTLINED_FUNCTION_1_15(xmmword_299DAF880, v4, v5, v6, v7, v8, v9, v10, v11, v22, v24, v12, v25[0], v25[1], v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
  if (v52 == 2)
  {
    updated = ccpoly1305_update_internal((v3 + 136), v1, v2);
    *(v3 + 232) += v1;
  }

  OUTLINED_FUNCTION_4_2(updated, v14, v15, v16, v17, v18, v19, v20, v23, v24, v25[0]);
  ccchacha20poly1305_encrypt_internal();
  ccchacha20poly1305_finalize_internal(v25, v0);
  cc_clear(0x88uLL, v25);
  cc_disable_dit_with_sb(&v24 + 1);
  return 0;
}

uint64_t ccchacha20poly1305_decrypt_oneshot()
{
  OUTLINED_FUNCTION_0_28();
  v54 = *MEMORY[0x29EDCA608];
  HIDWORD(v25) = timingsafe_enable_if_supported();
  bzero((v3 + 48), 0xD0uLL);
  updated = OUTLINED_FUNCTION_1_15(xmmword_299DAF880, v4, v5, v6, v7, v8, v9, v10, v11, v23, v25, v12, v26[0], v26[1], v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
  if (v53 == 2)
  {
    updated = ccpoly1305_update_internal((v3 + 136), v1, v2);
    *(v3 + 232) += v1;
  }

  OUTLINED_FUNCTION_4_2(updated, v14, v15, v16, v17, v18, v19, v20, v24, v25, v26[0]);
  ccchacha20poly1305_decrypt_internal();
  v21 = ccchacha20poly1305_verify_internal(v26, v0);
  cc_clear(0x88uLL, v26);
  cc_disable_dit_with_sb(&v25 + 1);
  return v21;
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

uint64_t cclr_encrypt_block()
{
  OUTLINED_FUNCTION_2_3();
  v21 = *MEMORY[0x29EDCA608];
  v1 = timingsafe_enable_if_supported();
  v18 = v1;
  v9 = *(v0 + 16);
  if ((v9 - 11) < 0xFFFFFFFFFFFFFFF9)
  {
    v15 = 4294967289;
  }

  else
  {
    v10 = 0;
    v11 = xmmword_299DA4C80;
    v12 = vdupq_n_s64(v9 - 1);
    v13 = vdupq_n_s64(2uLL);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v12, v11));
      if (v14.i8[0])
      {
        v20[v10] = v10;
      }

      if (v14.i8[4])
      {
        v20[v10 + 1] = v10 | 1;
      }

      v10 += 2;
      v11 = vaddq_s64(v11, v13);
    }

    while (((v9 + 1) & 0x1E) != v10);
    v15 = OUTLINED_FUNCTION_0_29(v1, v2, v3, v4, v5, v6, v7, v8, v17, v18, v19, v20[0]);
  }

  cc_disable_dit_with_sb(&v18);
  return v15;
}

uint64_t cclr_decrypt_block()
{
  OUTLINED_FUNCTION_2_3();
  v22 = *MEMORY[0x29EDCA608];
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
    v13 = xmmword_299DA4C80;
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

uint64_t ccecies_encrypt_gcm_composite_ws(uint64_t a1, uint64_t **a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = *a2;
  v20 = **a2;
  v25 = *(a1 + 16);
  v21 = (*(a1 + 24))(a1, (4 * (v20 & 0x7FFFFFFFFFFFFFFLL)) | 2);
  v26 = (cczp_bitlen(v19) + 7) >> 3;
  v22 = (*(a1 + 24))(a1, v20);
  result = ccecdh_generate_key_ws(a1, v19, *(a3 + 8), v21);
  if (!result)
  {
    result = ccecdh_compute_shared_secret_ws(a1, v21, a2, &v26, v22, *(a3 + 8));
    if (!result)
    {
      result = ccecies_encrypt_gcm_from_shared_secret_composite(a2, a3, v21, v26, v22, a7, a8, a9, a10, a11, a12, a4, a5, a6);
    }
  }

  *(a1 + 16) = v25;
  return result;
}

uint64_t cced448_make_key_pair(uint64_t (**a1)(void, uint64_t, char *), uint64_t a2, char *a3)
{
  v9 = timingsafe_enable_if_supported();
  pub_internal = (*a1)(a1, 57, a3);
  if (!pub_internal)
  {
    pub_internal = cced448_make_pub_internal(a1, a2, a3);
  }

  v7 = pub_internal;
  cc_disable_dit_with_sb(&v9);
  return v7;
}

uint64_t ccrns_modulus_init_helper_ws(uint64_t a1, unint64_t *a2, uint64_t a3, int a4)
{
  v15[1] = *MEMORY[0x29EDCA608];
  if (a3 < 2)
  {
    return 4294967289;
  }

  *a2 = a3;
  v15[0] = a3;
  if (a4)
  {
    a2[1] = __udivti3();
  }

  else
  {
    result = ccrns_modulus_compute_mod_factor_ws(a1, 1u, a2 + 1, 1, a3);
    if (result)
    {
      return result;
    }
  }

  result = ccrns_modulus_compute_mod_factor_ws(a1, 2u, a2 + 2, 1, a3);
  if (!result)
  {
    v8 = ((*a2 ^ (*a2 - 1)) <= *a2 - 1) - __clz(*a2) + 63;
    v13 = xmmword_299DAFA18;
    v14 = 0;
    ccn_shift_left_multi(3, &v13, &v13, v8 + 128, xmmword_299DAFA18);
    ccn_divmod_ws(a1, 3, &v13, 3uLL, __src, 1, &v11, v15);
    if (ccn_add1_ws(a1, 3, __src, __src, v11 != 0))
    {
      return 0xFFFFFFFFLL;
    }

    v10 = 0;
    v9 = xmmword_299DAFA18;
    ccn_shift_left_multi(3, &v9, &v9, 0x80uLL, xmmword_299DAFA18);
    if (ccn_sub_ws(a1, 3, __src, __src, &v9))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      ccn_set(2, a2 + 4, __src);
      return 0;
    }
  }

  return result;
}

uint64_t ccrns_mul_modulus_init_ws(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  if (a3 < 2 || a4 >= a3)
  {
    return 4294967289;
  }

  *a2 = a3;
  a2[1] = a4;
  ccrns_modulus_compute_mod_factor_ws(a1, 1u, a2 + 2, a4, a3);
  return 0;
}

uint64_t ccrns_modulus_compute_mod_factor_ws(uint64_t a1, unsigned int a2, void *a3, uint64_t a4, uint64_t a5)
{
  v14[1] = *MEMORY[0x29EDCA608];
  if (a5 < 2)
  {
    return 4294967289;
  }

  v13 = a4;
  v14[0] = a5;
  v11 = xmmword_299DAFA18;
  v12 = 0;
  ccn_shift_left_multi(3, &v11, &v11, a2 << 6, xmmword_299DAFA18);
  ccn_muln(3, v10, &v11, 1uLL, &v13);
  ccn_divmod_ws(a1, 4, v10, 3uLL, v9, 1, 0, v14);
  if (a2)
  {
    memcpy(a3, v9, 8 * a2);
  }

  return 0;
}

uint64_t ccrns_mul_modulus_init_var_time_ws(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  if (a3 < 2 || a4 >= a3)
  {
    return 4294967289;
  }

  *a2 = a3;
  a2[1] = a4;
  v6 = __udivti3();
  result = 0;
  a2[2] = v6;
  return result;
}

uint64_t ep_session_keys_derive(uint64_t **a1, uint64_t a2, uint64_t a3, size_t a4, const void *a5)
{
  v25 = *MEMORY[0x29EDCA608];
  v10 = *a1;
  v11 = ccec_compressed_x962_export_pub_size(**a1);
  v12 = a4 + 2 * v11 + v10[27];
  if (v12 > 0x100)
  {
    return 4294967289;
  }

  v13 = v11;
  result = cchkdf_extract_internal(v10[23], v10[25], v10[24], a2, a3, v23);
  if (!result)
  {
    v15 = v10[27];
    __memcpy_chk();
    v16 = &v24[v15];
    inited = ccsigma_kex_init_ctx(a1);
    result = ccec_compressed_x962_export_pub(inited, v16);
    if (!result)
    {
      v18 = &v16[v13];
      v19 = ccsigma_kex_resp_ctx(a1);
      result = ccec_compressed_x962_export_pub(v19, v18);
      if (!result)
      {
        memcpy(&v18[v13], a5, a4);
        v20 = v10[23];
        v21 = v10[10];
        v22 = (v10[11])(a1);
        return cchkdf_expand_internal(v20, 0x20uLL, v23, v12, v24, v21, v22);
      }
    }
  }

  return result;
}

uint64_t ep_mac_compute(uint64_t a1, size_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*a1 + 104);
  v7 = *(*a1 + 184);
  if (v6 != *v7)
  {
    return 4294967289;
  }

  cchmac_internal(v7, a2, a3, a4, a5, a6);
  return 0;
}

uint64_t ep_sigma_compute_mac_and_digest(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x29EDCA608];
  v8 = *a1;
  MEMORY[0x2A1C7C4A8](a1);
  v9 = OUTLINED_FUNCTION_0_0();
  ccdigest_init_internal(v9, v10);
  v11 = OUTLINED_FUNCTION_0_0();
  ccdigest_update_internal(v11, v12, v13, v14);
  v15 = ccec_compressed_x962_export_pub_size(*v8);
  if (v15 > 0x21)
  {
    return 4294967291;
  }

  v16 = v15;
  inited = ccsigma_kex_init_ctx(a1);
  ccec_compressed_x962_export_pub(inited, v33);
  v18 = OUTLINED_FUNCTION_0_0();
  ccdigest_update_internal(v18, v19, v16, v20);
  v21 = ccsigma_kex_resp_ctx(a1);
  ccec_compressed_x962_export_pub(v21, v33);
  v22 = OUTLINED_FUNCTION_0_0();
  ccdigest_update_internal(v22, v23, v16, v24);
  result = ccsigma_compute_mac_internal(a1, v8[a2 + 15], a3, a4, v32);
  if (!result)
  {
    v26 = OUTLINED_FUNCTION_0_0();
    ccdigest_update_internal(v26, v27, v28, v29);
    v30 = OUTLINED_FUNCTION_0_0();
    v31(v30);
    return 0;
  }

  return result;
}

uint64_t ep_aead_open(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v23 = *MEMORY[0x29EDCA608];
  v11 = *(*a1 + 144);
  if (v11 > 0x10)
  {
    return 4294967291;
  }

  v20 = ccaes_ccm_decrypt_mode();
  result = ccccm_one_shot_internal(v20, a2, a3, a4, a5, a8, a9, a10, a6, a7, v11, v22);
  if (!result)
  {
    if (cc_cmp_safe_internal(*(*a1 + 144), a11, v22))
    {
      return 4294967294;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cche_cipher_plain_ctx_init_ws(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = *MEMORY[0x29EDCA608];
  v8 = *(a4 + 4);
  *a2 = a3;
  *(a2 + 8) = a4;
  v9 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, v8);
  ccpolyzp_po2cyc_ctx_q_prod_ws(a1, v10, a4);
  v18[0] = cche_param_ctx_plaintext_modulus(a3);
  v11 = (*(a1 + 24))(a1, v8);
  ccn_divmod_ws(a1, v8, v10, v8, v11, 1, (a2 + 16), v18);
  *(a2 + 24) = (cche_param_ctx_plaintext_modulus(a3) + 1) >> 1;
  if (v8)
  {
    v12 = 0;
    v13 = (a2 + 32);
    v14 = (a2 + 32 + 8 * *(*(a2 + 8) + 4));
    while (1)
    {
      v15 = *(a4 + 4) - 1;
      v16 = a4;
      if (v15 > v12)
      {
        v16 = a4;
        do
        {
          v16 = v16[14];
          --v15;
        }

        while (v15 > v12);
      }

      cczp_modn_ws(a1, v16 + 15, v13, v8, v11);
      if (ccn_sub_ws(a1, 1, v14, v16 + 18, v18))
      {
        break;
      }

      ++v13;
      ++v14;
      if (++v12 == v8)
      {
        goto LABEL_8;
      }
    }

    result = 0xFFFFFFFFLL;
  }

  else
  {
LABEL_8:
    result = 0;
  }

  *(a1 + 16) = v9;
  return result;
}

uint64_t ccpolyzp_po2cyc_bytes_to_coeffs(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v6 = a5 - a6;
  if (a5 <= a6)
  {
    return 4294967289;
  }

  if (a3 != (v6 * a1 + 7) >> 3 && (v6 + 8 * a3 - 1) / v6 != a1)
  {
    return 4294967289;
  }

  if (a3)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = a5 - a6;
    do
    {
      v13 = *(a4 + v8);
      v14 = 8;
      do
      {
        if (!v12)
        {
          *(a2 + 8 * v9++) = v10 << a6;
          v12 = a5 - a6;
          v10 = 0;
        }

        if (v12 >= v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = v12;
        }

        v10 = (v10 << v15) | (v13 >> (8 - v15));
        v13 = (v13 << v15);
        v12 -= v15;
        v14 -= v15;
      }

      while (v14);
      v8 = ++v11;
    }

    while (v11 < a3);
  }

  else
  {
    v10 = 0;
    v9 = 0;
    LOBYTE(v12) = a5 - a6;
  }

  if (v9 >= a1)
  {
    return 0;
  }

  result = 0;
  *(a2 + 8 * v9) = v10 << (v12 + a6);
  return result;
}

uint64_t ccpolyzp_po2cyc_coeffs_to_bytes(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v6 = a5 - a6;
  if (a5 <= a6)
  {
    return 4294967289;
  }

  if (a1 != (v6 * a3 + 7) >> 3 && (v6 + 8 * a1 - 1) / v6 != a3)
  {
    return 4294967289;
  }

  if (a3)
  {
    v8 = 0;
    v9 = 0;
    LODWORD(v10) = 0;
    v11 = 0;
    v12 = 8;
    do
    {
      v13 = *(a4 + 8 * v8) >> a6;
      v14 = a5 - a6;
      do
      {
        if (!v12)
        {
          *(a2 + v9) = v10;
          v10 = 0;
          if (v9 + 1 == a1)
          {
            return v10;
          }

          v12 = 8;
          ++v9;
        }

        if (v14 >= v12)
        {
          v15 = v12;
        }

        else
        {
          v15 = v14;
        }

        v12 -= v15;
        v16 = v14 - v15;
        v17 = (v10 << v15) | (v13 >> (v14 - v15)) & (0xFFFFFFFFFFFFFFFFLL >> -v14);
        LODWORD(v10) = v17;
        v14 = v16;
      }

      while (v16);
      v8 = ++v11;
    }

    while (v11 < a3);
    v18 = v17;
  }

  else
  {
    v18 = 0;
    v9 = 0;
    LOBYTE(v12) = 8;
  }

  v10 = 0;
  if (v9 < a1)
  {
    *(a2 + v9) = v18 << v12;
  }

  return v10;
}

uint64_t ccpolyzp_po2cyc_serialize_poly_ws(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int **a5)
{
  v8 = *a5;
  v9 = **a5;
  v10 = (*a5)[1];
  if (ccpolyzp_po2cyc_serialize_poly_nbytes(*a5, a4) != a2 || a4 && v10 != 1)
  {
    return 4294967289;
  }

  v11 = *(a1 + 16);
  v12 = (*(a1 + 24))(a1, v9);
  if (v10)
  {
    v13 = v12;
    v14 = 0;
    while (1)
    {
      if (v9)
      {
        OUTLINED_FUNCTION_0_30();
        do
        {
          *v17++ = a5[++v15];
          --v16;
        }

        while (v16);
      }

      OUTLINED_FUNCTION_2_9();
      if (!v20 & v19)
      {
        v21 = v8;
        do
        {
          v21 = *(v21 + 14);
          --v18;
        }

        while (v18 > v14);
      }

      OUTLINED_FUNCTION_1_16();
      if (!(!v20 & v19))
      {
        return 4294967289;
      }

      v24 = (v23 * v9 + 7) >> 3;
      result = ccpolyzp_po2cyc_coeffs_to_bytes(v24, a3, v9, v13, v22, a4);
      if (result)
      {
        goto LABEL_20;
      }

      a3 += v24;
      if (++v14 == v10)
      {
        result = 0;
        goto LABEL_20;
      }
    }
  }

  result = 0;
LABEL_20:
  *(a1 + 16) = v11;
  return result;
}

uint64_t ccpolyzp_po2cyc_deserialize_poly_ws(uint64_t a1, unsigned int **a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  v9 = **a2;
  v10 = (*a2)[1];
  if (ccpolyzp_po2cyc_serialize_poly_nbytes(*a2, a3) != a4 || a3 && v10 != 1)
  {
    return 4294967289;
  }

  v11 = *(a1 + 16);
  v12 = (*(a1 + 24))(a1, v9);
  if (v10)
  {
    v13 = v12;
    v14 = 0;
    while (1)
    {
      OUTLINED_FUNCTION_2_9();
      if (!v17 & v16)
      {
        v18 = v8;
        do
        {
          v18 = *(v18 + 14);
          --v15;
        }

        while (v15 > v14);
      }

      OUTLINED_FUNCTION_1_16();
      if (!(!v17 & v16))
      {
        return 4294967289;
      }

      v21 = (v20 * v9 + 7) >> 3;
      result = ccpolyzp_po2cyc_bytes_to_coeffs(v9, v13, v21, a5, v19, a3);
      if (result)
      {
        goto LABEL_20;
      }

      if (v9)
      {
        OUTLINED_FUNCTION_0_30();
        do
        {
          v26 = *v25++;
          a2[++v23] = v26;
          --v24;
        }

        while (v24);
      }

      a5 += v21;
      if (++v14 == v10)
      {
        result = 0;
        goto LABEL_20;
      }
    }
  }

  result = 0;
LABEL_20:
  *(a1 + 16) = v11;
  return result;
}

uint64_t ccmldsa_export_pubkey(uint64_t a1, size_t __n, void *__dst)
{
  if (*(*a1 + 72) != __n)
  {
    return 4294967289;
  }

  memcpy(__dst, (a1 + 8), __n);
  return 0;
}

uint64_t ccmldsa_import_pubkey(uint64_t a1, size_t a2, const void *a3, void *a4)
{
  if (*(a1 + 72) != a2)
  {
    return 4294967289;
  }

  ccmldsa_pub_ctx_init(a4, a1);
  memcpy(a4 + 1, a3, a2);
  return 0;
}

uint64_t ccmldsa_export_privkey(uint64_t a1, size_t a2, void *a3)
{
  v8 = timingsafe_enable_if_supported();
  if (*(*ccmldsa_public_ctx(a1) + 64) == a2)
  {
    memcpy(a3, (a1 + *(*a1 + 72) + 8), a2);
    v6 = 0;
  }

  else
  {
    v6 = 4294967289;
  }

  cc_disable_dit_with_sb(&v8);
  return v6;
}

uint64_t ccmldsa_import_privkey(uint64_t a1, size_t a2, const void *a3, void *a4)
{
  v10 = timingsafe_enable_if_supported();
  if (*(a1 + 64) == a2)
  {
    ccmldsa_full_ctx_init(a4, a1);
    memcpy(a4 + *(*a4 + 72) + 8, a3, a2);
    v8 = 0;
  }

  else
  {
    v8 = 4294967289;
  }

  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t cccmac_final_generate_internal(void *a1, size_t a2, void *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v4 = a1[8];
  v5 = a1[6];
  v6 = a1[7] + v5;
  a1[7] = v6;
  if (v5 > 0x10)
  {
    v10 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v5)
    {
      v8 = 1;
    }

    else
    {
      v8 = v6 == 0;
    }

    v9 = !v8;
    v10 = 0xFFFFFFFFLL;
    if (a2 - 17 >= 0xFFFFFFFFFFFFFFF0 && (v9 & 1) == 0)
    {
      v12 = a1 + 4;
      v13 = a1;
      if (v5 != 16)
      {
        v13 = a1 + 2;
        cc_clear(16 - v5, v12 + v5);
        *(v12 + v5) = 0x80;
      }

      for (i = 0; i != -16; --i)
      {
        *(a1 + i + 47) ^= *(v13 + i + 15);
      }

      ccdrbg_generate_internal(v4, (a1 + 9), a1 + *v4 + 72, 1, (a1 + 4), __src);
      memcpy(a3, __src, a2);
      v10 = 0;
      v4 = a1[8];
    }
  }

  cc_clear(v4[1] + *v4 + 80, a1);
  return v10;
}

uint64_t cccmac_final_generate()
{
  timingsafe_enable_if_supported();
  v0 = OUTLINED_FUNCTION_2_2();
  internal = cccmac_final_generate_internal(v0, v1, v2);
  cc_disable_dit_with_sb(&v5);
  return internal;
}

uint64_t cccmac_final_verify_internal(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x29EDCA608];
  if (cccmac_final_generate_internal(a1, 0x10uLL, v6))
  {
    return 0xFFFFFFFFLL;
  }

  if (cc_cmp_safe_internal(a2, a3, v6))
  {
    return 4294967291;
  }

  return 0;
}

uint64_t cccmac_final_verify()
{
  timingsafe_enable_if_supported();
  v0 = OUTLINED_FUNCTION_2_2();
  v3 = cccmac_final_verify_internal(v0, v1, v2);
  cc_disable_dit_with_sb(&v5);
  return v3;
}

uint64_t ccmlkem_indcpa_encrypt_ws(uint64_t a1, int8x16_t *a2, uint64_t a3, const char *a4, _OWORD *a5, uint64_t a6)
{
  v50 = *(a1 + 16);
  v9 = (*(a1 + 24))(a1, 64);
  v53 = (*(a1 + 24))(a1, 64);
  v10 = OUTLINED_FUNCTION_0_31();
  v51 = v11(v10);
  v52 = (*(a1 + 24))(a1, 64);
  v12 = OUTLINED_FUNCTION_0_31();
  v14 = v13(v12);
  v15 = OUTLINED_FUNCTION_0_31();
  v17 = v16(v15);
  v18 = OUTLINED_FUNCTION_0_31();
  v20 = v19(v18);
  v21 = (*(a1 + 24))(a1, ((a2->i32[1] * a2->i32[1]) & 0xFFFFFFu) << 6);
  ccmlkem_polyvec_decode(a2, v20, a3);
  v22 = (a3 + (384 * a2->i32[1]));
  v23 = (*(a1 + 24))(a1, (16 * ((3 * a2->i32[1]) & 0x1FFFFFF)) | 4u);
  ccmlkem_polyvec_encode(a2, v23, v20);
  v24 = (v23 + (384 * a2->i32[1]));
  v25 = v22[1];
  *v24 = *v22;
  v24[1] = v25;
  if (cc_cmp_safe_internal((384 * a2->i32[1]) | 0x20u, v23, a3))
  {
    result = 4294967289;
    v27 = v50;
  }

  else
  {
    result = ccmlkem_sample_matrix(a2, v22, 1, v21);
    v27 = v50;
    if (!result)
    {
      ccmlkem_polyvec_getnoise(a2, v14, a5, 0);
      ccmlkem_polyvec_getnoise(a2, v51, a5, a2->u8[4]);
      ccmlkem_poly_getnoise(v52, a5, 2 * (a2->i8[4] & 0x7F));
      ccmlkem_poly_decompress_d1(v53, a4);
      ccmlkem_polyvec_ntt_forward_cbd_eta2(a2, v14);
      LODWORD(v36) = a2->i32[1];
      if (v36)
      {
        v37 = 0;
        v38 = 0;
        do
        {
          ccmlkem_polyvec_basemul(a2, (v17 + 2 * v37), (v21 + 2 * v37 * v36), v14, v28, v29, v30, v31, v32, v33, v34, v35);
          ccmlkem_ntt_inverse(v17 + 2 * v37);
          ++v38;
          v36 = a2->u32[1];
          v37 += 256;
        }

        while (v38 < v36);
      }

      ccmlkem_polyvec_add(a2, v17, v17, v51);
      ccmlkem_polyvec_reduce(a2, v17);
      ccmlkem_polyvec_basemul(a2, v9, v20, v14, v39, v40, v41, v42, v43, v44, v45, v46);
      ccmlkem_ntt_inverse(v9);
      ccmlkem_poly_add(v9, v9, v52);
      ccmlkem_poly_add(v9, v9, v53);
      ccmlkem_poly_reduce(v9);
      ccmlkem_polyvec_compress(a2, a6, v17);
      ccmlkem_poly_compress(a2, a6 + (32 * a2->i32[3] * a2->i32[1]), v9);
      result = 0;
    }
  }

  *(a1 + 16) = v27;
  return result;
}

uint64_t ccsrp_generate_server_pubkey_ws(uint64_t a1, uint64_t a2)
{
  v4 = ccdh_gp_n(*(a2 + 8));
  v5 = *(a1 + 16);
  (*(a1 + 24))(a1, v4);
  v6 = (*(a1 + 24))(a1, v4);
  if ((*(a2 + 24) & 0x1C0) != 0)
  {
    ccdh_gp_n(*(a2 + 8));
  }

  else
  {
    v7 = *(a2 + 8);
    ccdh_gp_n(v7);
    cczp_mul_ws(a1, v7);
  }

  private_key_bitlen = ccdh_generate_private_key_bitlen(*(a2 + 8));
  v9 = ccdh_gp_n(*(a2 + 8));
  v10 = ccdh_gp_n(*(a2 + 8));
  if (ccn_bitlen_internal(v9, a2 + 32 + 8 * v10) > private_key_bitlen)
  {
    private_key_bitlen = cczp_bitlen(*(a2 + 8));
  }

  v12 = *(a2 + 8);
  v11 = *(a2 + 16);
  v13 = ccdh_gp_g(v12);
  v14 = ccdh_gp_n(*(a2 + 8));
  ccdh_power_blinded_ws(a1, v11, v12, v6, v13, private_key_bitlen, a2 + 32 + 8 * v14);
  v16 = v15;
  if (!v15)
  {
    v17 = *(a2 + 8);
    ccdh_gp_n(v17);
    cczp_add_ws(a1, v17);
  }

  *(a1 + 16) = v5;
  return v16;
}

uint64_t ccsrp_server_start_authentication(uint64_t *a1, unsigned int (**a2)(void, unint64_t, uint64_t), char *a3, size_t a4, char *a5, uint64_t a6, uint64_t a7, char *a8)
{
  v19 = timingsafe_enable_if_supported();
  a1[2] = a2;
  public_key_internal = ccsrp_server_generate_public_key_internal(a1, a2, a6, a8);
  if (!public_key_internal)
  {
    public_key_internal = ccsrp_server_compute_session_internal(a1, a3, a4, a5, a7);
  }

  v17 = public_key_internal;
  cc_disable_dit_with_sb(&v19);
  return v17;
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

uint64_t ccrsa_emsa_pkcs1v15_encode(unint64_t a1, _WORD *a2, size_t a3, const void *a4, unsigned __int8 *a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = ccrsa_emsa_pkcs1v15_encode_internal(a1, a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t cckem_kyber768_generate_key_with_seed(uint64_t a1, _OWORD *a2)
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

uint64_t cckem_kyber768_derive_key_from_seed(uint64_t a1, _OWORD *a2, uint64_t (**a3)(void, uint64_t, _OWORD *))
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = cckem_public_ctx(a1);
  v7 = *(*a1 + 16);
  v8 = (*a3)(a3, 32, v11);
  if (!v8)
  {
    v8 = ccmlkem_kem_keypair_from_seed(cckyber768_params, (v6 + 8), a1 + v7 + 8, a2, v11);
  }

  v9 = v8;
  cc_clear(0x20uLL, v11);
  return v9;
}

uint64_t cckem_kyber768_export_pubkey()
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

uint64_t cckem_kyber768_import_pubkey()
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

uint64_t cckem_kyber768_export_privkey()
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

uint64_t cckem_kyber768_import_privkey()
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

uint64_t ccec_verify_composite_digest_ws(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v23 = *MEMORY[0x29EDCA608];
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

uint64_t ccec_verify_composite_msg_ws(uint64_t a1, uint64_t *a2, unint64_t *a3, size_t a4, char *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v16 = *MEMORY[0x29EDCA608];
  ccdigest_internal(a3, a4, a5, v15);
  return ccec_verify_composite_digest_ws(a1, a2, *a3, v15, a6, a7, a8);
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

uint64_t cccurve448_make_priv(uint64_t (**a1)(void, uint64_t, _BYTE *), _BYTE *a2)
{
  v6 = timingsafe_enable_if_supported();
  v4 = (*a1)(a1, 56, a2);
  if (!v4)
  {
    *a2 &= 0xFCu;
    a2[55] |= 0x80u;
  }

  cc_disable_dit_with_sb(&v6);
  return v4;
}

uint64_t cccurve448_make_key_pair(unsigned int (**a1)(void, unint64_t, uint64_t), uint64_t a2, _BYTE *a3)
{
  v10 = timingsafe_enable_if_supported();
  v6 = (*a1)(a1, 56, a3);
  if (!v6)
  {
    *a3 &= 0xFCu;
    a3[55] |= 0x80u;
    v7 = ccec_cp_x448();
    v6 = cccurve448_internal(v7, a2, a3, kX448BasePoint, a1);
  }

  v8 = v6;
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t cche_encrypt_zero_symmetric_helper_ws(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned int a5, int a6, uint64_t a7, uint64_t (**a8)(void, uint64_t, uint64_t))
{
  v68 = *MEMORY[0x29EDCA608];
  v16 = *(a1 + 16);
  v17 = *a4;
  v18 = cche_param_ctx_chain_const(a3);
  v19 = ccpolyzp_po2cyc_ctx_eq(v17, (v18 + 8));
  result = 4294967289;
  if (a5 && v19)
  {
    if (*(cche_param_ctx_chain_const(a3) + 12) < a5)
    {
      return 4294967289;
    }

    v62 = a7;
    v64 = a8;
    v61 = a4;
    v21 = cche_param_ctx_chain_const(a3);
    v22 = *v21;
    v23 = (sizeof_struct_ccpolyzp_po2cyc_ctx() + 7) >> 3;
    v24 = a3;
    if (v22 >= 0x80)
    {
      v25 = 128;
    }

    else
    {
      v25 = v22;
    }

    v26 = &v21[2 * (v23 + 2 * (v22 + ((sizeof_struct_ccrns_mul_modulus() + 7) >> 3) * v25) + 6) * (v21[1] - a5) + 2];
    v27 = cche_ciphertext_fresh_npolys();
    v60 = v24;
    *a2 = v24;
    *(a2 + 8) = v27;
    *(a2 + 16) = 1;
    *(a2 + 24) = v26;
    v28 = (a2 + 24);
    v29 = v26;
    if (v27 >= 2)
    {
      v59 = a5;
      v30 = a6;
      v31 = v27;
      for (i = 1; i != v31; ++i)
      {
        v33 = *v28;
        v28[(v33[1] * *v33 + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3)) * i] = v26;
      }

      v29 = *v28;
      a6 = v30;
      a5 = v59;
    }

    v34 = sizeof_struct_ccpolyzp_po2cyc();
    v35 = v29[1] * *v29;
    v36 = v28 + ((v34 + 7) & 0xFFFFFFFFFFFFFFF8);
    v37 = &v36[8 * v35];
    if (v62)
    {
      result = (*v64)(v64, 32, v62);
      if (result)
      {
        goto LABEL_33;
      }

      v38 = (*(a1 + 24))(a1, 536);
      result = ccpolyzp_po2cyc_block_rng_init(v38);
      if (result)
      {
        goto LABEL_33;
      }

      result = ccpolyzp_po2cyc_random_uniform_ws(a1, v37, v38);
      v39 = v64;
      if (result)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v39 = v64;
      result = ccpolyzp_po2cyc_random_uniform_ws(a1, &v36[8 * v35], v64);
      if (result)
      {
        goto LABEL_33;
      }
    }

    v63 = a6;
    v40 = a5;
    v41 = *(a1 + 24);
    v42 = sizeof_struct_ccpolyzp_po2cyc();
    v43 = v41(a1, v26[1] * *v26 + ((v42 + 7) >> 3));
    *v43 = v26;
    result = ccpolyzp_po2cyc_random_cbd_ws(a1, v43, v39, 0);
    if (result)
    {
      goto LABEL_33;
    }

    if (cche_param_ctx_he_scheme(v60) == 2)
    {
      v44 = cche_param_ctx_plaintext_modulus(v60);
      v45 = v66;
      v67 = 0;
      memset(v66, 0, sizeof(v66));
      v65 = v44;
      v46 = vdupq_n_s64(v40 - 1);
      v47 = (v40 + 1) & 0x1FFFFFFFELL;
      v48 = xmmword_299DA4C80;
      v49 = vdupq_n_s64(2uLL);
      do
      {
        v50 = vmovn_s64(vcgeq_u64(v46, v48));
        if (v50.i8[0])
        {
          *(v45 - 1) = v44;
        }

        if (v50.i8[4])
        {
          *v45 = v44;
        }

        v48 = vaddq_s64(v48, v49);
        v45 += 2;
        v47 -= 2;
      }

      while (v47);
      ccpolyzp_po2cyc_coeff_scalar_mul_ws(a1, v43, v43, &v65);
    }

    cche_mul_poly_sk((a2 + 24), v37, v61);
    if (!v63)
    {
      result = ccpolyzp_po2cyc_inv_ntt((a2 + 24));
      if (result)
      {
        goto LABEL_33;
      }

      result = ccpolyzp_po2cyc_inv_ntt(v37);
      if (result)
      {
        goto LABEL_33;
      }

      v53 = OUTLINED_FUNCTION_0_32();
      ccpolyzp_po2cyc_coeff_add(v53, v54, v43);
      v55 = OUTLINED_FUNCTION_0_32();
      ccpolyzp_po2cyc_coeff_negate(v55, v56);
      goto LABEL_32;
    }

    result = ccpolyzp_po2cyc_fwd_ntt(v43);
    if (!result)
    {
      v51 = OUTLINED_FUNCTION_0_32();
      ccpolyzp_po2cyc_eval_add(v51);
      v52 = OUTLINED_FUNCTION_0_32();
      ccpolyzp_po2cyc_eval_negate(v52);
LABEL_32:
      v57 = sizeof_struct_ccpolyzp_po2cyc();
      cc_clear((v57 + 8 * v26[1] * *v26 + 7) & 0xFFFFFFFFFFFFFFF8, v43);
      v58 = cche_ciphertext_fresh_npolys();
      result = 0;
      *(a2 + 8) = v58;
      *a2 = v60;
      *(a2 + 16) = 1;
    }

LABEL_33:
    *(a1 + 16) = v16;
  }

  return result;
}

uint64_t cche_encrypt_symmetric_ws(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, unsigned int a6, uint64_t a7, uint64_t (**a8)(void, uint64_t, uint64_t))
{
  result = cche_encrypt_zero_symmetric_helper_ws(a1, a2, a4, a5, a6, 0, a7, a8);
  if (!result)
  {

    return cche_ciphertext_plaintext_add_ws(a1, a2, a2, a3);
  }

  return result;
}

uint64_t ccecies_derive_gcm_key_iv(uint64_t a1, size_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{
  v18 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 32);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = (*(a1 + 32) & 0x20) != 0;
  }

  v10 = 4294967289;
  if (!v9 && (*(a1 + 32) & 0x21) != 0x21 && ((a4 != 0) & v8) == 0)
  {
    v12 = *(a1 + 24);
    if ((v8 & 0x10) == 0)
    {
      v12 = (v12 + 16);
      goto LABEL_11;
    }

    if (v12 <= 0xFFFFFFEF)
    {
      v13 = &a8[v12];
      *v13 = 0;
      *(v13 + 1) = 0;
LABEL_11:
      memset(v17, 0, sizeof(v17));
      if ((v8 & 0x21) != 0)
      {
        *&v17[0] = a7;
        *(&v17[0] + 1) = a6;
        v14 = 1;
        if (v8 & 0x20) == 0 && (v8)
        {
          return ccansikdf_x963_iovec(*a1, a2, a3, v14, v17, v12, a8);
        }
      }

      else
      {
        LODWORD(v14) = 0;
      }

      v15 = &v17[v14];
      *v15 = a5;
      v15[1] = a4;
      v14 = (v14 + 1);
      return ccansikdf_x963_iovec(*a1, a2, a3, v14, v17, v12, a8);
    }
  }

  return v10;
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

uint64_t ccec_pairwise_consistency_check_ws(uint64_t a1, uint64_t **a2, uint64_t (**a3)(void, unint64_t, void *))
{
  v24[2] = *MEMORY[0x29EDCA608];
  if (fipspost_trace_is_active())
  {
    fipspost_trace_call("ccec_pairwise_consistency_check_ws");
  }

  v6 = **a2;
  v7 = *(a1 + 16);
  (*(a1 + 24))(a1, v6);
  (*(a1 + 24))(a1, v6);
  ccsha256_di();
  v8 = OUTLINED_FUNCTION_0_33();
  result = ccec_sign_composite_msg_ws(v8, v9, v10, v11, v12, v13, v14, a3);
  if (!result)
  {
    v24[0] = 0;
    v24[1] = 0;
    ccsha256_di();
    v16 = OUTLINED_FUNCTION_0_33();
    result = ccec_verify_composite_msg_ws(v16, v17, v18, v19, v20, v21, v22, v23);
    if (!result)
    {
      cc_cmp_safe_internal(16, &CCEC_FAULT_CANARY, v24);
      result = 0;
    }
  }

  *(a1 + 16) = v7;
  return result;
}