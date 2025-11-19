uint64_t ccrsa_emsa_pss_decode_ws(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4, size_t a5, char *a6, uint64_t a7, unsigned __int8 *a8)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = 0xAAAAAAAAAAAAAAAALL;
  v9[1] = 0xAAAAAAAAAAAAAAAALL;
  return ccrsa_emsa_pss_decode_canary_out_ws(a1, a2, a3, a4, a5, a6, a7, a8, v9);
}

uint64_t ccrsa_emsa_pss_decode(uint64_t a1, uint64_t a2, size_t a3, size_t a4, char *a5, uint64_t a6, unsigned __int8 *a7)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v18 = timingsafe_enable_if_supported();
  v16[0] = cc_malloc_clear(8 * ((a6 + 63) >> 6));
  v16[1] = (a6 + 63) >> 6;
  v16[2] = 0;
  v16[3] = cc_ws_alloc;
  v17 = cc_ws_free;
  if (v16[0])
  {
    v19[0] = 0xAAAAAAAAAAAAAAAALL;
    v19[1] = 0xAAAAAAAAAAAAAAAALL;
    v14 = ccrsa_emsa_pss_decode_canary_out_ws(v16, a1, a2, a3, a4, a5, a6, a7, v19);
    v17(v16);
  }

  else
  {
    v14 = 4294967283;
  }

  cc_disable_dit_with_sb(&v18);
  return v14;
}

uint64_t ccss_shamir_poly_coefficient(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 8) < a2)
  {
    cc_abort();
  }

  return a1 + 8 * **a1 * a2 + 16;
}

_BYTE *ccss_shamir_share_init(void *a1, uint64_t a2)
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
  *a1 = a2 + 8;
  return cc_disable_dit(&v11);
}

uint64_t ccss_shamir_consistent_primes(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    return 0;
  }

  v4 = cczp_n(a2);
  v5 = cczp_prime(a2);
  v6 = cczp_n(a1);
  v7 = cczp_prime(a1);
  if (!ccn_cmpn_internal(v4, v5, v6, v7))
  {
    return 0;
  }

  else
  {
    return 4294967166;
  }
}

BOOL csss_shamir_share_bag_can_recover_secret(uint64_t a1)
{
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) == 0 || (_ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 5)) & 0x1000000) != 0)
  {
    v8 = 0;
  }

  else
  {
    __asm { MSR             DIT, #1 }

    v8 = 1;
  }

  v12 = v1;
  v13 = v2;
  v11 = v8;
  v9 = *(a1 + 8) >= **a1;
  cc_disable_dit(&v11);
  return v9;
}

uint64_t ccss_shamir_parameters_init(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
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

  v18 = v11;
  if (a4 >= 2)
  {
    v13 = (a2 + 7) >> 3;
    *(a1 + 8) = v13;
    uint_internal = ccn_read_uint_internal(v13, a1 + 32, a2, a3);
    if (uint_internal || (uint_internal = cczp_init((a1 + 8)), uint_internal))
    {
      v12 = uint_internal;
    }

    else
    {
      v17 = a4;
      v16 = cczp_prime(a1 + 8);
      if ((ccn_cmpn_internal(1, &v17, v13, v16) & 0x80000000) != 0)
      {
        v12 = 0;
        *a1 = a4;
      }

      else
      {
        v12 = 4294967168;
      }
    }
  }

  else
  {
    v12 = 4294967171;
  }

  cc_disable_dit(&v18);
  return v12;
}

uint64_t ccss_shamir_parameters_maximum_secret_length(uint64_t a1)
{
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) == 0 || (_ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 5)) & 0x1000000) != 0)
  {
    v8 = 0;
  }

  else
  {
    __asm { MSR             DIT, #1 }

    v8 = 1;
  }

  v12 = v1;
  v13 = v2;
  v11 = v8;
  v9 = 8 * cczp_n(a1 + 8) - 1;
  cc_disable_dit(&v11);
  return v9;
}

uint64_t ccec_full_add(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = timingsafe_enable_if_supported();
  v8 = cc_malloc_clear(120 * *a1);
  v9 = 15 * *a1;
  v12[0] = v8;
  v12[1] = v9;
  v12[2] = 0;
  v12[3] = cc_ws_alloc;
  v13 = cc_ws_free;
  if (v8)
  {
    (*(a1[2] + 88))(v12, a1, a2, a3, a4);
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

uint64_t ccaes_gladman_cbc_decrypt_init(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  if (a3 > 127)
  {
    if (a3 != 128 && a3 != 256 && a3 != 192)
    {
      return 4294967289;
    }

LABEL_8:
    result = ccaes_gladman_decrypt_key(a4, a3, a2);
    a2[65] = 1;
    return result;
  }

  if (a3 <= 0x20 && ((1 << a3) & 0x101010000) != 0)
  {
    goto LABEL_8;
  }

  return 4294967289;
}

uint64_t ccrc2_ltc_setup(uint64_t a1, int8x16_t *a2, unint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  if (a3 - 129 < 0xFFFFFFFFFFFFFF80)
  {
    return 4294967289;
  }

  __memcpy_chk();
  if (a3 > 0x7F)
  {
    v6 = 0;
  }

  else
  {
    v6 = 128 - a3;
    v7 = *(v18 + a3 - 1);
    v8 = a3 - 128;
    v9 = v18;
    do
    {
      v7 = PITABLE[(*v9 + v7)];
      v9[a3] = v7;
      ++v9;
    }

    while (!__CFADD__(v8++, 1));
  }

  v11 = *(v18 + v6);
  v12 = 128;
  do
  {
    v11 = PITABLE[(*(v18 + v12) ^ v11)];
    *(v18 + v12-- - a3) = v11;
  }

  while (v12 - a3 != -1);
  for (i = 0; i != 8; i += 2)
  {
    v14 = &v18[i];
    v21 = vld2q_s8(v14);
    v15 = vmovl_u8(*v21.val[1].i8);
    v16 = vmovl_high_u8(v21.val[1]);
    v17 = vmovl_high_u8(v21.val[0]);
    v21.val[0] = vmovl_u8(*v21.val[0].i8);
    a2[2] = vorrq_s8(vshll_n_u16(*v16.i8, 8uLL), vmovl_u16(*v17.i8));
    a2[3] = vorrq_s8(vshll_high_n_u16(v16, 8uLL), vmovl_high_u16(v17));
    *a2 = vorrq_s8(vshll_n_u16(*v15.i8, 8uLL), vmovl_u16(*v21.val[0].i8));
    a2[1] = vorrq_s8(vshll_high_n_u16(v15, 8uLL), vmovl_high_u16(v21.val[0]));
    a2 += 4;
  }

  cc_clear(0x81uLL, v18);
  return 0;
}

uint64_t cczp_init(void *a1)
{
  v2 = cczp_n(a1);
  v5[0] = cc_malloc_clear(40 * v2 + 24);
  v5[1] = 5 * cczp_n(a1) + 3;
  v5[2] = 0;
  v5[3] = cc_ws_alloc;
  v6 = cc_ws_free;
  if (!v5[0])
  {
    return 4294967283;
  }

  inited = cczp_init_ws(v5, a1);
  v6(v5);
  return inited;
}

size_t ccec_plprint(uint64_t *a1, const char *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E69E9848];
  fprintf(*MEMORY[0x1E69E9848], "%s { x -> ", a2);
  ccn_print(*a1, a3);
  fwrite(", y -> ", 7uLL, 1uLL, *v5);
  ccn_print(*a1, a3 + 8 * *a1);
  fwrite(", z -> ", 7uLL, 1uLL, *v5);
  ccn_print(*a1, a3 + 16 * *a1);
  v6 = *v5;

  return fwrite("}\n", 2uLL, 1uLL, v6);
}

uint64_t ccec_print_full_key(const char *a1, uint64_t **a2)
{
  v6 = timingsafe_enable_if_supported();
  v4 = MEMORY[0x1E69E9848];
  fprintf(*MEMORY[0x1E69E9848], "full key %s { \n", a1);
  ccec_plprint(*a2, "pubkey:", (a2 + 2));
  fwrite("priv: {", 7uLL, 1uLL, *v4);
  ccn_print(**a2, &a2[3 * **a2 + 2]);
  fwrite("}\n", 2uLL, 1uLL, *v4);
  return cc_disable_dit_with_sb(&v6);
}

uint64_t ccec_print_public_key(const char *a1, uint64_t **a2)
{
  v5 = timingsafe_enable_if_supported();
  fwrite("public key ", 0xBuLL, 1uLL, *MEMORY[0x1E69E9848]);
  ccec_plprint(*a2, a1, (a2 + 2));
  return cc_disable_dit_with_sb(&v5);
}

uint64_t ccmode_cfb_init(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *__src)
{
  v8 = *(a1 + 32);
  *a2 = v8;
  v9 = a2 + 2;
  v10 = *(v8 + 8);
  v11 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (__src)
  {
    memcpy(v9 + v11, __src, v10);
  }

  else
  {
    cc_clear(*(v8 + 8), v9 + v11);
  }

  result = (*(v8 + 16))(v8, v9 + ((2 * *(*a2 + 8) + 14) & 0xFFFFFFFFFFFFFFF0), a3, a4);
  a2[1] = *(v8 + 8);
  return result;
}

uint64_t ccaes_ofb_crypt_vng(int8x16_t *a1, unint64_t a2, int8x16_t *a3, int8x16_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v8 = a1 + 1;
  v9 = a1->i64[1];
  v10 = *(a1->i64[0] + 8) + 7;
  v11 = v9 == 16 || a2 == 0;
  if (!v11)
  {
    v12 = 0;
    do
    {
      a4->i8[v12] = a1[1].i8[v9 + v12] ^ a3->i8[v12];
      v13 = v12 + 1;
      if (v9 + v12 == 15)
      {
        break;
      }

      v11 = a2 - 1 == v12++;
    }

    while (!v11);
    v9 += v13;
    v4 = (a4 + v13);
    v5 = (a3 + v13);
    v6 = a2 - v13;
  }

  v14 = v10 & 0xFFFFFFFFFFFFFFF8;
  if (v6 >= 0x10)
  {
    ccaes_ofb_crypt_vng_vector(v8->i64 + v14, v8, v6 >> 4, v5, v4);
    v5 = (v5 + (v6 & 0xFFFFFFFFFFFFFFF0));
    v4 = (v4 + (v6 & 0xFFFFFFFFFFFFFFF0));
    v6 &= 0xFu;
  }

  if (v6)
  {
    while (1)
    {
      if (v9 == 16)
      {
        if (AccelerateCrypto_AES_encrypt(v8, v8, &v8->i8[v14]))
        {
          return 0xFFFFFFFFLL;
        }

        v9 = 0;
      }

      v15 = v5->i8[0];
      v5 = (v5 + 1);
      v16 = v9 + 1;
      v4->i8[0] = v8->i8[v9] ^ v15;
      v4 = (v4 + 1);
      ++v9;
      if (!--v6)
      {
        goto LABEL_19;
      }
    }
  }

  v16 = v9;
LABEL_19:
  result = 0;
  a1->i64[1] = v16;
  return result;
}

uint64_t ccspake_mac_hkdf_cmac_compute(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char *a5, size_t a6, void *a7)
{
  v8 = *(a1 + 8);
  if (*(v8 + 24) != a6)
  {
    return 4294967289;
  }

  v15 = (*(v8 + 8))();

  return cccmac_one_shot_generate_internal(v15, a2, a3, a4, a5, a6, a7);
}

uint64_t ccz_mulmod(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = timingsafe_enable_if_supported();
  ccz_mul(a1, a2, a3);
  ccz_mod(a1, a1, a4);
  return cc_disable_dit_with_sb(&v9);
}

uint64_t ccpad_xts_encrypt(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = *MEMORY[0x1E69E9840];
  v16 = timingsafe_enable_if_supported();
  v12 = a4 & 0xF;
  if ((a4 & 0xF) != 0)
  {
    v13 = a4 & 0xFFFFFFFFFFFFFFF0;
    (*(a1 + 48))(a2, a3, (a4 >> 4) - 1, a5, a6);
    (*(a1 + 48))(a2, a3, 1, a5 + (a4 & 0xFFFFFFFFFFFFFFF0) - 16, v18);
    v14 = 0;
    do
    {
      v17[v14] = *(a5 + v13 + v14);
      *(a6 + v13 + v14) = v18[v14];
      ++v14;
    }

    while (v12 != v14);
    if ((v14 - 1) <= 0xE)
    {
      memcpy(&v17[v12], &v18[v12], 16 - v12);
    }

    (*(a1 + 48))(a2, a3, 1, v17, a6 + v13 - 16);
  }

  else
  {
    (*(a1 + 48))(a2, a3, a4 >> 4, a5, a6);
  }

  return cc_disable_dit_with_sb(&v16);
}

uint64_t ccrsa_verify_pss_digest(uint64_t *a1, void *a2, uint64_t a3, size_t a4, char *a5, uint64_t a6, uint64_t a7, size_t a8, void *a9)
{
  v23 = timingsafe_enable_if_supported();
  v17 = cc_malloc_clear(88 * *a1);
  v18 = 11 * *a1;
  v21[0] = v17;
  v21[1] = v18;
  v21[2] = 0;
  v21[3] = cc_ws_alloc;
  v22 = cc_ws_free;
  if (v17)
  {
    v19 = ccrsa_verify_pss_digest_ws(v21, a1, a2, a3, a4, a5, a6, a7, a8, a9);
    v22(v21);
  }

  else
  {
    v19 = 4294967283;
  }

  cc_disable_dit_with_sb(&v23);
  return v19;
}

uint64_t ccrsa_verify_pss_digest_ws(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, size_t a5, char *a6, uint64_t a7, uint64_t a8, size_t a9, void *a10)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a10)
  {
    *a10 = 0;
    a10[1] = 0;
  }

  v31 = 0uLL;
  v18 = cczp_bitlen(a2);
  v19 = v18 + 7;
  if (a7 != (v18 + 7) >> 3)
  {
    return 4294967273;
  }

  v20 = v18;
  result = 4294967273;
  if (*a3 == a5)
  {
    v29 = a4;
    v22 = *a2;
    if (8 * *a2 - ((v20 + 6) >> 3) <= 8)
    {
      if (v19 >= 8)
      {
        v25 = 8 * *a2 - ((v20 + 6) >> 3);
        v26 = a6;
        v23 = *(a1 + 16);
        v28 = (*(a1 + 24))(a1, v22);
        v27 = (*(a1 + 24))(a1, v22);
        cc_clear(8 * (*(a1 + 16) - v23), (*a1 + 8 * v23));
        if (ccn_read_uint_internal(v22, v28, a7, a8))
        {
          v30 = -23;
        }

        else
        {
          v30 = ccrsa_pub_crypt_ws(a1, a2);
          if (!v30)
          {
            ccn_swap(v22, v27);
            v24 = ccrsa_emsa_pss_decode_canary_out_ws(a1, a3, v29, a9, a5, v26, v20 - 1, v27 + v25, &v31);
            v30 = v24 ^ 0x3A ^ BYTE8(v31) ^ BYTE4(v31) ^ BYTE3(v31) ^ BYTE13(v31) ^ HIBYTE(v31) ^ BYTE10(v31) ^ BYTE1(v31) ^ BYTE11(v31) ^ BYTE14(v31) ^ BYTE6(v31) ^ BYTE2(v31) ^ BYTE9(v31) ^ BYTE12(v31) ^ v31 ^ BYTE7(v31) ^ BYTE5(v31);
            if (a10)
            {
              *a10 = v31;
            }
          }
        }

        *(a1 + 16) = v23;
        return v30;
      }

      else
      {
        return 4294967268;
      }
    }
  }

  return result;
}

uint64_t ccrsa_verify_pss_msg_ws(uint64_t a1, uint64_t *a2, size_t *a3, uint64_t a4, size_t a5, char *a6, uint64_t a7, uint64_t a8, size_t a9, void *a10)
{
  v18 = *MEMORY[0x1E69E9840];
  ccdigest_internal(a3, a5, a6, v17);
  return ccrsa_verify_pss_digest_ws(a1, a2, a3, a4, *a3, v17, a7, a8, a9, a10);
}

uint64_t ccrsa_verify_pss_msg(uint64_t *a1, size_t *a2, uint64_t a3, size_t a4, char *a5, uint64_t a6, uint64_t a7, size_t a8, void *a9)
{
  v25 = *MEMORY[0x1E69E9840];
  v23 = timingsafe_enable_if_supported();
  v17 = cc_malloc_clear(88 * *a1);
  v18 = 11 * *a1;
  v21[0] = v17;
  v21[1] = v18;
  v21[2] = 0;
  v21[3] = cc_ws_alloc;
  v22 = cc_ws_free;
  if (v17)
  {
    ccdigest_internal(a2, a4, a5, v24);
    v19 = ccrsa_verify_pss_digest_ws(v21, a1, a2, a3, *a2, v24, a6, a7, a8, a9);
    v22(v21);
  }

  else
  {
    v19 = 4294967283;
  }

  cc_disable_dit_with_sb(&v23);
  return v19;
}

uint64_t ccsrp_generate_k_ws(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ccdh_gp_prime(*(a2 + 8));
  v7 = ccdh_gp_g(*(a2 + 8));
  v8 = (*(a2 + 24) >> 9) & 1;

  return ccsrp_digest_ccn_ccn_ws(a1, a2, a3, v6, v7, 0, v8);
}

uint64_t ccsrp_generate_u_ws(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a2 + 6);
  if ((v5 & 0x1C0) != 0)
  {
    a4 = 0;
    v6 = 4;
  }

  else
  {
    v6 = **a2;
  }

  return ccsrp_digest_ccn_ccn_ws(a1, a2, a3, a4, a5, v6, (v5 >> 9) & 1);
}

void *ccaes_cfb8_decrypt_mode()
{
  v0 = ccaes_ecb_encrypt_mode();
  ccmode_factory_cfb8_decrypt(cfb8_aes_decrypt, v0);
  return cfb8_aes_decrypt;
}

uint64_t ccmode_xts_key_sched(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  *a2 = v8;
  a2[1] = v9;
  v10 = a2 + 2;
  (*(v8 + 16))(v8, a2 + 2);
  v11 = *(v9 + 16);
  v12 = v10 + ((**a2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return v11(v8, v12, a3, a5);
}

uint64_t ccmode_siv_hmac_auth_backend(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *MEMORY[0x1E69E9840];
  cchmac_update_internal(*(*a1 + 56), a1 + 96, a2, a3);
  v8[0] = HIBYTE(a2);
  v8[1] = BYTE6(a2);
  v8[2] = BYTE5(a2);
  v8[3] = BYTE4(a2);
  v8[4] = BYTE3(a2);
  v8[5] = BYTE2(a2);
  v8[6] = BYTE1(a2);
  v8[7] = a2;
  v8[8] = a4;
  return cchmac_update_internal(*(*a1 + 56), a1 + 96, 9, v8);
}

uint64_t ccmode_siv_hmac_auth(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  if (v3 != 4 && v3 != 2)
  {
    return 4294967228;
  }

  if (!a2)
  {
    return 4294967193;
  }

  ccmode_siv_hmac_auth_backend(a1, a2, a3, 65);
  result = 0;
  *(a1 + 24) = 4;
  return result;
}

uint64_t ccmode_siv_hmac_auth_finalize(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = *(*a1 + 56);
  v6 = *v5;
  v7 = a1[3];
  if (v7 > 6 || ((1 << v7) & 0x54) == 0)
  {
    cc_clear(*v5, __src);
    a1[3] = 255;
    return 4294967228;
  }

  else
  {
    v10 = a1[2];
    if (a2 || v7 != 2)
    {
      ccmode_siv_hmac_auth_backend(a1, a2, a3, 80);
      cchmac_final_internal(*(*a1 + 56), a1 + 12, __src);
    }

    else
    {
      v13[0] = 67305985;
      cchmac_internal(v5, a1[1] >> 1, (a1 + 4), 4, v13, __src);
    }

    memcpy(a4, __src, v10);
    a1[3] = 5;
    cc_clear(v6, __src);
    return 0;
  }
}

uint64_t cced448_add_points_unified_ws(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, char a6)
{
  v12 = cczp_n(a2);
  v13 = *(a1 + 16);
  ccn_set(4 * v12, a3, a5);
  cczp_n(a2);
  v14 = *(a1 + 16);
  cczp_mul_ws(a1, a2);
  *(a1 + 16) = v14;
  result = cced448_add_points_unified_cached_ws(a1, a2, a3, a4, a3, a6);
  *(a1 + 16) = v13;
  return result;
}

uint64_t cced448_add_points_unified_cached_ws(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = cczp_n(a2);
  v12 = *(a1 + 16);
  (*(a1 + 24))(a1, v10);
  (*(a1 + 24))(a1, v10);
  cczp_mul_ws(a1, a2);
  if ((a6 & 2) != 0)
  {
    ccn_set(v10, (a3 + 24 * v10), (a4 + 24 * v10));
  }

  else
  {
    cczp_mul_ws(a1, a2);
  }

  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  if (a6)
  {
    cczp_sub_ws(a1, a2);
  }

  else
  {
    cczp_add_ws(a1, a2);
  }

  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  if (a6)
  {
    cczp_add_ws(a1, a2);
    cczp_sub_ws(a1, a2);
    cczp_add_ws(a1, a2);
    cczp_sub_ws(a1, a2);
    cczp_add_ws(a1, a2);
  }

  else
  {
    cczp_sub_ws(a1, a2);
    cczp_sub_ws(a1, a2);
    cczp_sub_ws(a1, a2);
    cczp_add_ws(a1, a2);
    cczp_sub_ws(a1, a2);
  }

  cczp_mul_ws(a1, a2);
  if ((a6 & 4) == 0)
  {
    cczp_mul_ws(a1, a2);
  }

  cczp_mul_ws(a1, a2);
  result = cczp_mul_ws(a1, a2);
  *(a1 + 16) = v12;
  return result;
}

uint64_t cced448_scalar_mult_ws(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = cczp_n(a2);
  v10 = (a6 + 16 * *a2);
  v18 = *(a1 + 16);
  v11 = (*(a1 + 24))(a1, 4 * v9);
  v12 = (*(a1 + 24))(a1, 4 * v9);
  cc_clear(8 * v9, v11);
  cc_clear(8 * v9, &v11[16 * v9]);
  ccn_set(v9, &v11[8 * v9], v10);
  ccn_set(v9, &v11[24 * v9], v10);
  cced25519_to_ed25519_point_ws(a1, a2);
  if (a5)
  {
    v13 = 0;
    v14 = a5 - 1;
    do
    {
      v24 = v14;
      v22 = (*(a4 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v14) & 1;
      ccn_cond_swap(28, v22 ^ v13, v11, v12);
      v15 = cczp_n(a2);
      v21 = *(a1 + 16);
      (*(a1 + 24))(a1, v15);
      (*(a1 + 24))(a1, v15);
      cczp_mul_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      cczp_add_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      cczp_add_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      cczp_add_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      cczp_add_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      *(a1 + 16) = v21;
      cced448_dbl_point_ws(a1, a2);
      v16 = v22;
      v14 = v24 - 1;
      v13 = v22;
    }

    while (v24);
  }

  else
  {
    v16 = 0;
  }

  ccn_mux(28, v16, v11, v12, v11);
  cced25519_from_ed25519_point_ws(a1, a2, a3, v11);
  *(a1 + 16) = v18;
  return 0;
}

uint64_t cced448_dbl_point_ws(uint64_t a1, uint64_t a2)
{
  v4 = cczp_n(a2);
  v6 = *(a1 + 16);
  (*(a1 + 24))(a1, v4);
  (*(a1 + 24))(a1, v4);
  cczp_sqr_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  result = cczp_mul_ws(a1, a2);
  *(a1 + 16) = v6;
  return result;
}

void *cced448_double_scalar_mult_ws(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = cczp_n(a2);
  v23 = *(a1 + 16);
  v8 = (*(a1 + 24))(a1, 4 * v7);
  v9 = 32 * v7;
  v10 = (*(a1 + 24))(a1, 32 * v7);
  cced25519_to_ed25519_point_ws(a1, a2);
  cczp_n(a2);
  v11 = *(a1 + 16);
  cczp_mul_ws(a1, a2);
  *(a1 + 16) = v11;
  cced448_dbl_point_ws(a1, a2);
  v12 = 7;
  v13 = v10;
  do
  {
    v14 = v13 + v9;
    cced448_add_points_unified_cached_ws(a1, a2, v13 + v9, v8, v13, 0);
    cczp_n(a2);
    v15 = *(a1 + 16);
    cczp_mul_ws(a1, a2);
    *(a1 + 16) = v15;
    v13 = v14;
    --v12;
  }

  while (v12);
  cc_clear(8 * v7, v8);
  cc_clear(8 * v7, &v8[16 * v7]);
  ccn_seti(v7, &v8[8 * v7], 1);
  ccn_seti(v7, &v8[24 * v7], 1);
  ccn_recode_ssw(v7, a4, 4, v26);
  ccn_recode_ssw(v7, a5, 4, v25);
  v16 = 447;
  do
  {
    v17 = v26[v16];
    v18 = v25[v16--];
  }

  while (!(v18 | v17));
  if (v16 != -2)
  {
    v19 = v16 + 1;
    do
    {
      cced448_dbl_point_ws(a1, a2);
      cced448_add_precomputed_point_ws(a1, a2, v8, v25[v19], 4, v10, 0);
      cced448_add_precomputed_point_ws(a1, a2, v8, v26[v19--], 3, &CCED448_PRECOMPUTED_BASES, 6);
    }

    while (v19 != -1);
  }

  result = cced25519_from_ed25519_point_ws(a1, a2, a3, v8);
  *(a1 + 16) = v23;
  return result;
}

uint64_t cced448_add_precomputed_point_ws(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, char a7)
{
  result = cczp_n(a2);
  if (a4 >= 0)
  {
    LOBYTE(v15) = a4;
  }

  else
  {
    v15 = -a4;
  }

  if (v15 >= 1)
  {

    return cced448_add_points_unified_cached_ws(a1, a2, a3, a3, a6 + 8 * (v15 >> 1) * a5 * result, a7 | ((a4 & 0x80) >> 7));
  }

  return result;
}

uint64_t ccdh_generate_key(void *a1, unsigned int (**a2)(void, uint64_t, uint64_t *), void *a3)
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

  v32 = v11;
  v12 = ccdh_gp_n(a1);
  v13 = sizeof_struct_cche_galois_key();
  v14 = sizeof_struct_ccpolyzp_po2cyc();
  v15 = (v13 + v14 - 1) / v14;
  v16 = CCDH_POWER_BLINDED_WORKSPACE_N(v12);
  v28[0] = cc_malloc_clear(8 * (v15 + 6 * v12 + v16));
  v17 = ccdh_gp_n(a1);
  v18 = sizeof_struct_cche_galois_key();
  v19 = sizeof_struct_ccpolyzp_po2cyc();
  v28[1] = (v18 + v19 - 1) / v19 + 6 * v17 + CCDH_POWER_BLINDED_WORKSPACE_N(v17);
  v29 = 0;
  v30 = cc_ws_alloc;
  v31 = cc_ws_free;
  if (v28[0])
  {
    v20 = ccdh_ctx_public(a3);
    ccdh_ctx_init(a1, v20);
    v21 = ccdh_gp_g(a1);
    v22 = &a3[ccdh_gp_n(*a3) + 2];
    ccdh_generate_private_key_ws(v28, a1, v22, a2);
    if (!v23)
    {
      private_key_bitlen = ccdh_generate_private_key_bitlen(a1);
      v23 = cczp_mm_power_ws(v28, a1, a3 + 2, v21, private_key_bitlen, v22);
      if (!v23)
      {
        v25 = ccdh_ctx_public(a3);
        v23 = ccdh_check_pub_ws(v28, a1, v25);
        if (!v23)
        {
          v23 = ccdh_pairwise_consistency_check_ws(v28, a1, a2, a3);
        }
      }
    }

    v26 = v23;
    v29 = 0;
    v31(v28);
  }

  else
  {
    v26 = 4294967283;
  }

  cc_disable_dit(&v32);
  return v26;
}

uint64_t ccec_diversify_twin_scalars_ws(uint64_t a1, void *a2, char *a3, char *a4, unint64_t a5, uint64_t a6)
{
  v12 = ccec_diversify_min_entropy_len(a2);
  result = 4294967289;
  if ((a5 & 1) == 0 && 2 * v12 <= a5)
  {
    v14 = a5 >> 1;
    result = ccec_generate_scalar_fips_extrabits_ws(a1, a2, v14, a6, a3);
    if (!result)
    {

      return ccec_generate_scalar_fips_extrabits_ws(a1, a2, v14, a6 + v14, a4);
    }
  }

  return result;
}

uint64_t ccapsic_server_encode_element(unint64_t **a1, void **a2)
{
  v15 = timingsafe_enable_if_supported();
  v4 = *a1;
  v5 = **a1;
  v6 = sizeof_struct_cche_galois_key();
  v7 = sizeof_struct_ccpolyzp_po2cyc();
  v13[0] = cc_malloc_clear(144 * v5 + 16 * ((v6 + v7 + 3 * v5 * v7 - 1) / v7 + v5));
  v8 = *v4;
  v9 = sizeof_struct_cche_galois_key();
  v10 = sizeof_struct_ccpolyzp_po2cyc();
  v13[1] = 18 * v8 + 2 * ((v9 + v10 + 3 * v8 * v10 - 1) / v10 + v8);
  v13[2] = 0;
  v13[3] = cc_ws_alloc;
  v14 = cc_ws_free;
  if (v13[0])
  {
    v11 = ccapsic_server_encode_element_ws(v13, a1, a2);
    v14(v13);
  }

  else
  {
    v11 = 4294967283;
  }

  cc_disable_dit_with_sb(&v15);
  return v11;
}

BOOL ccz_is_one(uint64_t a1)
{
  v5 = timingsafe_enable_if_supported();
  v2 = ccz_n(a1);
  v3 = ccn_n(v2, *(a1 + 24)) == 1 && **(a1 + 24) == 1;
  cc_disable_dit_with_sb(&v5);
  return v3;
}

uint64_t ccmode_cfb_decrypt(void *a1, uint64_t a2, char *a3, _BYTE *a4)
{
  v5 = a1[1];
  if (a2)
  {
    v8 = a2;
    v9 = *a1;
    v10 = (*(*a1 + 8) + 7) >> 3;
    v11 = a1 + 2;
    v12 = &a1[2 * v10 + 2];
    v13 = &a1[v10 + 2];
    do
    {
      if (v5 == *(v9 + 8))
      {
        (*(v9 + 24))(v12, 1, v13, a1 + 2);
        v5 = 0;
      }

      v14 = *a3++;
      *(v13 + v5) = v14;
      v15 = v5 + 1;
      *a4++ = *(v11 + v5++) ^ v14;
      --v8;
    }

    while (v8);
  }

  else
  {
    v15 = a1[1];
  }

  a1[1] = v15;
  return 0;
}

_BYTE *ccdh_export_pub(void *a1, char *a2)
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

  v13 = v9;
  v10 = ccdh_export_pub_size(a1);
  v11 = ccdh_gp_n(*a1);
  ccn_write_uint_padded_ct_internal(v11, a1 + 2, v10, a2);
  return cc_disable_dit(&v13);
}

uint64_t ccapsic_server_determine_intersection(unint64_t **a1, BOOL *a2, void **a3, void **a4)
{
  v24 = timingsafe_enable_if_supported();
  v7 = *a1;
  v8 = **a1;
  v9 = sizeof_struct_ccpolyzp_po2cyc();
  v10 = 5 * v8 + 3;
  v11 = v10 + (v9 + 7) / v9;
  v12 = 23 * v8;
  v13 = 11 * v8;
  if (v11 <= 23 * v8)
  {
    v11 = 23 * v8;
    if (v12 > v13)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v11 <= v13)
  {
LABEL_5:
    v11 = 11 * v8;
  }

LABEL_6:
  v14 = cc_malloc_clear(8 * v11);
  v22[0] = v14;
  v15 = sizeof_struct_ccpolyzp_po2cyc();
  v16 = (v15 + 7) / v15 + v10;
  if (v16 <= v12)
  {
    if (v12 > v13)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v12 = (v15 + 7) / v15 + v10;
  if (v16 <= v13)
  {
LABEL_10:
    v12 = 11 * v8;
  }

LABEL_11:
  v22[1] = v12;
  v22[2] = 0;
  v22[3] = cc_ws_alloc;
  v23 = cc_ws_free;
  if (v14)
  {
    if (ccec_projectify_ws(v22, v7) || ccec_mult_blinded_ws(v22, v7, (a3 + 2), &(&a1[12 * **a1 + 24])[2 * **a1], &(&a1[6 * v8 + 24])[2 * v8], a1[1]))
    {
      v19 = 0;
    }

    else
    {
      v17 = ccec_affinify_ws(v22, v7);
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v18 = ccn_cmp_public_value(v8, a3 + 2, a4 + 2) != 0;
        v19 = 0;
        *a2 = ccn_cmp_public_value(v8, &a3[**a3 + 2], &a4[**a4 + 2]) == 0 && !v18;
      }
    }

    v23(v22);
  }

  else
  {
    v19 = 4294967283;
  }

  cc_disable_dit_with_sb(&v24);
  return v19;
}

uint64_t ccec_import_affine_point(unint64_t *a1, int a2, uint64_t a3, unsigned __int8 *a4, void *a5)
{
  v15 = timingsafe_enable_if_supported();
  v10 = 17 * *a1;
  v13[0] = cc_malloc_clear(136 * *a1);
  v13[1] = v10;
  v13[2] = 0;
  v13[3] = cc_ws_alloc;
  v14 = cc_ws_free;
  if (v13[0])
  {
    v11 = ccec_import_affine_point_ws(v13, a1, a2, a3, a4, a5);
    v14(v13);
  }

  else
  {
    v11 = 4294967283;
  }

  cc_disable_dit_with_sb(&v15);
  return v11;
}

void *cced25519_full_add_ws(uint64_t a1, void *a2, char *a3)
{
  v6 = cczp_n(a2);
  v7 = *(a1 + 16);
  v8 = 4 * v6;
  v9 = (*(a1 + 24))(a1, 4 * v6);
  v10 = (*(a1 + 24))(a1, v8);
  cced25519_to_ed25519_point_ws(a1, a2);
  cced25519_to_ed25519_point_ws(a1, a2);
  cced25519_add_points_unified_ws(a1, a2, v9, v10, v9, 4);
  result = cced25519_from_ed25519_point_ws(a1, a2, a3, v9);
  *(a1 + 16) = v7;
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

unint64_t ccz_write_int_size(uint64_t a1)
{
  v5 = timingsafe_enable_if_supported();
  v2 = ccz_n(a1);
  v3 = ccn_write_int_size(v2, *(a1 + 24));
  cc_disable_dit_with_sb(&v5);
  return v3;
}

uint64_t ccz_write_int(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  v8 = timingsafe_enable_if_supported();
  v6 = ccz_n(a1);
  ccn_write_int(v6, *(a1 + 24), a2, a3);
  return cc_disable_dit_with_sb(&v8);
}

unint64_t md4_compress(unint64_t result, uint64_t a2, _DWORD *a3)
{
  v137 = result;
  if (a2)
  {
    v3 = *result;
    v4 = *(result + 4);
    v5 = *(result + 8);
    v6 = *(result + 12);
    do
    {
      v141 = a2;
      v7 = a3[1];
      v8 = a3[2];
      v9 = a3[4];
      v10 = a3[6];
      v139 = a3[7];
      v140 = a3[3];
      HIDWORD(v12) = (v5 & v4 | v6 & ~v4) + v3 + *a3;
      LODWORD(v12) = HIDWORD(v12);
      v11 = v12 >> 29;
      v14 = a3[8];
      v13 = a3[9];
      HIDWORD(v12) = v7 + v6 + (v4 & __ROR4__(HIDWORD(v12), 29) | v5 & ~__ROR4__(HIDWORD(v12), 29));
      LODWORD(v12) = HIDWORD(v12);
      v15 = v12 >> 25;
      v16 = v8 + v5 + (v11 & __ROR4__(HIDWORD(v12), 25) | v4 & ~__ROR4__(HIDWORD(v12), 25));
      v18 = __PAIR64__(v16, __ROR4__(v16, 21));
      v17 = v15 & v18;
      LODWORD(v18) = v16;
      v19 = v18 >> 21;
      HIDWORD(v18) = v140 + v4 + (v17 | v11 & ~__ROR4__(v16, 21));
      LODWORD(v18) = HIDWORD(v18);
      v20 = v18 >> 13;
      LODWORD(v18) = v9 + v11 + (v19 & __ROR4__(HIDWORD(v18), 13) | v15 & ~__ROR4__(HIDWORD(v18), 13));
      HIDWORD(v18) = v18;
      v21 = v18 >> 29;
      v138 = a3[5];
      v23 = a3[10];
      v22 = a3[11];
      HIDWORD(v18) = v15 + v138 + (v20 & __ROR4__(v18, 29) | v19 & ~__ROR4__(v18, 29));
      LODWORD(v18) = HIDWORD(v18);
      v24 = v18 >> 25;
      v25 = v19 + v10 + (v21 & __ROR4__(HIDWORD(v18), 25) | v20 & ~__ROR4__(HIDWORD(v18), 25));
      v27 = __PAIR64__(v25, __ROR4__(v25, 21));
      v26 = v24 & v27;
      LODWORD(v27) = v25;
      v28 = v27 >> 21;
      HIDWORD(v27) = v20 + v139 + (v26 | v21 & ~__ROR4__(v25, 21));
      LODWORD(v27) = HIDWORD(v27);
      v29 = v27 >> 13;
      LODWORD(v27) = v21 + v14 + (v28 & __ROR4__(HIDWORD(v27), 13) | v24 & ~__ROR4__(HIDWORD(v27), 13));
      HIDWORD(v27) = v27;
      v30 = v27 >> 29;
      v32 = a3[12];
      v31 = a3[13];
      HIDWORD(v27) = v24 + v13 + (v29 & __ROR4__(v27, 29) | v28 & ~__ROR4__(v27, 29));
      LODWORD(v27) = HIDWORD(v27);
      v33 = v27 >> 25;
      v34 = v28 + v23 + (v30 & __ROR4__(HIDWORD(v27), 25) | v29 & ~__ROR4__(HIDWORD(v27), 25));
      v35 = v30 & ~__ROR4__(v34, 21);
      v37 = __PAIR64__(v34, __ROR4__(v34, 21));
      v36 = v33 & v37;
      LODWORD(v37) = v34;
      v38 = v37 >> 21;
      HIDWORD(v37) = v29 + v22 + (v36 | v35);
      LODWORD(v37) = HIDWORD(v37);
      v39 = v37 >> 13;
      LODWORD(v37) = v30 + v32 + (v38 & __ROR4__(HIDWORD(v37), 13) | v33 & ~__ROR4__(HIDWORD(v37), 13));
      HIDWORD(v37) = v37;
      v40 = v37 >> 29;
      v41 = v33 + v31;
      v42 = a3[14];
      v43 = a3[15];
      v44 = v41 + (v39 & __ROR4__(v37, 29) | v38 & ~__ROR4__(v37, 29));
      HIDWORD(v37) = v44;
      LODWORD(v37) = v44;
      v45 = v37 >> 25;
      v46 = v38 + v42 + (v40 & __ROR4__(v44, 25) | v39 & ~__ROR4__(v44, 25));
      v47 = v39 + v43 + (v45 & __ROR4__(v46, 21) | v40 & ~__ROR4__(v46, 21));
      HIDWORD(v37) = v47;
      LODWORD(v37) = v47;
      v48 = v37 >> 13;
      LODWORD(v37) = *a3 + 1518500249 + v40 + ((v48 | __ROR4__(v46, 21)) & __ROR4__(v44, 25) | v48 & __ROR4__(v46, 21));
      v49 = v37;
      HIDWORD(v37) = v37;
      v50 = v37 >> 29;
      v51 = v9 + 1518500249 + v45 + ((v50 | __ROR4__(v47, 13)) & __ROR4__(v46, 21) | v50 & __ROR4__(v47, 13));
      HIDWORD(v37) = v51;
      LODWORD(v37) = v51;
      v52 = v37 >> 27;
      v54 = __PAIR64__(v46, __ROR4__(v49, 29));
      v53 = v52 | v54;
      LODWORD(v54) = v46;
      v55 = v14 + 1518500249 + (v54 >> 21) + (v53 & __ROR4__(v47, 13) | v52 & __ROR4__(v49, 29));
      HIDWORD(v54) = v55;
      LODWORD(v54) = v55;
      v56 = v54 >> 23;
      v57 = v32 + 1518500249 + v48 + ((v56 | __ROR4__(v51, 27)) & __ROR4__(v49, 29) | v56 & __ROR4__(v51, 27));
      HIDWORD(v54) = v57;
      LODWORD(v54) = v57;
      v58 = v54 >> 19;
      v59 = v7 + 1518500249 + v50 + ((v58 | __ROR4__(v55, 23)) & __ROR4__(v51, 27) | v58 & __ROR4__(v55, 23));
      HIDWORD(v54) = v59;
      LODWORD(v54) = v59;
      v60 = v54 >> 29;
      v61 = v138 + 1518500249 + v52 + ((v60 | __ROR4__(v57, 19)) & __ROR4__(v55, 23) | v60 & __ROR4__(v57, 19));
      HIDWORD(v54) = v61;
      LODWORD(v54) = v61;
      v62 = v54 >> 27;
      v63 = v13 + 1518500249 + v56 + ((v62 | __ROR4__(v59, 29)) & __ROR4__(v57, 19) | v62 & __ROR4__(v59, 29));
      HIDWORD(v54) = v63;
      LODWORD(v54) = v63;
      v64 = v54 >> 23;
      v65 = v31 + 1518500249 + v58 + ((v64 | __ROR4__(v61, 27)) & __ROR4__(v59, 29) | v64 & __ROR4__(v61, 27));
      HIDWORD(v54) = v65;
      LODWORD(v54) = v65;
      v66 = v54 >> 19;
      v67 = v8 + 1518500249 + v60 + ((v66 | __ROR4__(v63, 23)) & __ROR4__(v61, 27) | v66 & __ROR4__(v63, 23));
      HIDWORD(v54) = v67;
      LODWORD(v54) = v67;
      v68 = v54 >> 29;
      v69 = v10 + 1518500249 + v62 + ((v68 | __ROR4__(v65, 19)) & __ROR4__(v63, 23) | v68 & __ROR4__(v65, 19));
      HIDWORD(v54) = v69;
      LODWORD(v54) = v69;
      v70 = v54 >> 27;
      v71 = v23 + 1518500249 + v64 + ((v70 | __ROR4__(v67, 29)) & __ROR4__(v65, 19) | v70 & __ROR4__(v67, 29));
      HIDWORD(v54) = v71;
      LODWORD(v54) = v71;
      v72 = v54 >> 23;
      v73 = v42 + 1518500249 + v66 + ((v72 | __ROR4__(v69, 27)) & __ROR4__(v67, 29) | v72 & __ROR4__(v69, 27));
      HIDWORD(v54) = v73;
      LODWORD(v54) = v73;
      v74 = v54 >> 19;
      result = v140;
      v75 = v140 + 1518500249 + v68 + ((v74 | __ROR4__(v71, 23)) & __ROR4__(v69, 27) | v74 & __ROR4__(v71, 23));
      HIDWORD(v54) = v75;
      LODWORD(v54) = v75;
      v76 = v54 >> 29;
      v77 = v139 + 1518500249 + v70 + ((v76 | __ROR4__(v73, 19)) & __ROR4__(v71, 23) | v76 & __ROR4__(v73, 19));
      HIDWORD(v54) = v77;
      LODWORD(v54) = v77;
      v78 = v54 >> 27;
      v79 = v22 + 1518500249 + v72 + ((v78 | __ROR4__(v75, 29)) & __ROR4__(v73, 19) | v78 & __ROR4__(v75, 29));
      HIDWORD(v54) = v79;
      LODWORD(v54) = v79;
      v80 = v54 >> 23;
      v81 = v43 + 1518500249 + v74 + ((v80 | __ROR4__(v77, 27)) & __ROR4__(v75, 29) | v80 & __ROR4__(v77, 27));
      HIDWORD(v54) = v81;
      LODWORD(v54) = v81;
      v82 = v54 >> 19;
      v83 = v82 ^ __ROR4__(v79, 23);
      v84 = *a3 + 1859775393 + v76 + (v83 ^ __ROR4__(v77, 27));
      v85 = __PAIR64__(v84, __ROR4__(v84, 29));
      v86 = v14 + 1859775393 + v78 + (v83 ^ v85);
      v87 = v9 + 1859775393 + v80;
      LODWORD(v85) = v84;
      v88 = v85 >> 29;
      v89 = __PAIR64__(v86, __ROR4__(v86, 23));
      v90 = v87 + (v88 ^ __ROR4__(v81, 19) ^ v89);
      v91 = v32 + 1859775393 + v82;
      LODWORD(v89) = v86;
      v92 = v89 >> 23;
      v93 = __PAIR64__(v90, __ROR4__(v90, 21));
      v94 = v91 + (v92 ^ __ROR4__(v84, 29) ^ v93);
      LODWORD(v93) = v90;
      v95 = v93 >> 21;
      v96 = __PAIR64__(v94, __ROR4__(v94, 17));
      v97 = v8 + 1859775393 + v88 + (v95 ^ __ROR4__(v86, 23) ^ v96);
      v98 = v23 + 1859775393 + v92;
      LODWORD(v96) = v94;
      v99 = v96 >> 17;
      v100 = __PAIR64__(v97, __ROR4__(v97, 29));
      v101 = v98 + (v99 ^ __ROR4__(v90, 21) ^ v100);
      v102 = v10 + 1859775393 + v95;
      LODWORD(v100) = v97;
      v103 = v100 >> 29;
      v104 = __PAIR64__(v101, __ROR4__(v101, 23));
      v105 = v102 + (v103 ^ __ROR4__(v94, 17) ^ v104);
      LODWORD(v104) = v101;
      v106 = v104 >> 23;
      v107 = __PAIR64__(v105, __ROR4__(v105, 21));
      v108 = v42 + 1859775393 + v99 + (v106 ^ __ROR4__(v97, 29) ^ v107);
      LODWORD(v107) = v105;
      v109 = v107 >> 21;
      v110 = __PAIR64__(v108, __ROR4__(v108, 17));
      v111 = v7 + 1859775393 + v103 + (v109 ^ __ROR4__(v101, 23) ^ v110);
      v112 = v13 + 1859775393 + v106;
      LODWORD(v110) = v108;
      v113 = v110 >> 17;
      v114 = __PAIR64__(v111, __ROR4__(v111, 29));
      v115 = v112 + (v113 ^ __ROR4__(v105, 21) ^ v114);
      LODWORD(v114) = v111;
      v116 = v114 >> 29;
      v117 = __PAIR64__(v115, __ROR4__(v115, 23));
      v118 = v138 + 1859775393 + v109 + (v116 ^ __ROR4__(v108, 17) ^ v117);
      v119 = v31 + 1859775393 + v113;
      LODWORD(v117) = v115;
      v120 = v117 >> 23;
      v121 = __PAIR64__(v118, __ROR4__(v118, 21));
      v122 = v119 + (v120 ^ __ROR4__(v111, 29) ^ v121);
      LODWORD(v121) = v118;
      v123 = v121 >> 21;
      v124 = __PAIR64__(v122, __ROR4__(v122, 17));
      v125 = v140 + 1859775393 + v116 + (v123 ^ __ROR4__(v115, 23) ^ v124);
      v126 = v22 + 1859775393 + v120;
      LODWORD(v124) = v122;
      v127 = v124 >> 17;
      v128 = __PAIR64__(v125, __ROR4__(v125, 29));
      v129 = v126 + (v127 ^ __ROR4__(v118, 21) ^ v128);
      v130 = v139 + 1859775393 + v123;
      LODWORD(v128) = v125;
      v131 = v128 >> 29;
      v132 = __PAIR64__(v129, __ROR4__(v129, 23));
      v133 = v130 + (v131 ^ __ROR4__(v122, 17) ^ v132);
      LODWORD(v132) = v129;
      v134 = v132 >> 23;
      v135 = __PAIR64__(v133, __ROR4__(v133, 21));
      v136 = v43 + 1859775393 + v127 + (v134 ^ __ROR4__(v125, 29) ^ v135);
      LODWORD(v135) = v133;
      v3 += v131;
      v5 += v135 >> 21;
      v6 += v134;
      HIDWORD(v135) = v136;
      LODWORD(v135) = v136;
      v4 += v135 >> 17;
      *v137 = v3;
      v137[1] = v4;
      v137[2] = v5;
      v137[3] = v6;
      a3 += 16;
      a2 = v141 - 1;
    }

    while (v141 != 1);
  }

  return result;
}

uint64_t CCDH_POWER_BLINDED_WORKSPACE_N(uint64_t a1)
{
  v1 = 2 * (a1 + 1);
  v2 = 5 * a1 + 8;
  v3 = 12 * (a1 + 1);
  v4 = 4 * (a1 + 1);
  if (v4 <= v1)
  {
    v5 = 2 * (a1 + 1);
  }

  else
  {
    v5 = 4 * (a1 + 1);
  }

  if (v5 <= 12 * (a1 + 1))
  {
    v5 = 12 * (a1 + 1);
  }

  if (v2 <= v5 || (v6 = 2 * (a1 + 1), v1 <= v2))
  {
    if (v4 > v1)
    {
      if (v3 <= v4)
      {
        v6 = 4 * (a1 + 1);
      }

      else
      {
        v6 = 12 * (a1 + 1);
      }

      if (v2 > v6)
      {
        v6 = 5 * a1 + 8;
        return a1 + v1 + v6 + 5;
      }

      if (v4 > v1)
      {
        return a1 + v1 + v6 + 5;
      }

      goto LABEL_20;
    }

    if (v3 <= v1)
    {
      v7 = 2 * (a1 + 1);
    }

    else
    {
      v7 = 12 * (a1 + 1);
    }

    v6 = 5 * a1 + 8;
    if (v2 <= v7)
    {
LABEL_20:
      if (v3 <= v1)
      {
        v6 = 2 * (a1 + 1);
      }

      else
      {
        v6 = 12 * (a1 + 1);
      }
    }
  }

  return a1 + v1 + v6 + 5;
}

uint64_t ccec_generate_scalar_fips_extrabits(void *a1, unint64_t a2, uint64_t a3, char *a4)
{
  v8 = &a1[5 * *a1];
  v9 = cczp_n((v8 + 4));
  v10 = sizeof_struct_ccpolyzp_po2cyc();
  v15[0] = cc_malloc_clear(8 * ((v10 + 127) / v10 + 4 * v9) + 24);
  v11 = cczp_n((v8 + 4));
  v12 = sizeof_struct_ccpolyzp_po2cyc();
  v15[1] = (v12 + 127) / v12 + 4 * v11 + 3;
  v15[2] = 0;
  v15[3] = cc_ws_alloc;
  v16 = cc_ws_free;
  if (!v15[0])
  {
    return 4294967283;
  }

  scalar_fips_extrabits_ws = ccec_generate_scalar_fips_extrabits_ws(v15, a1, a2, a3, a4);
  v16(v15);
  return scalar_fips_extrabits_ws;
}

uint64_t ccmode_cfb8_encrypt(_BYTE *a1, uint64_t a2, char *a3, _BYTE *a4)
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
      v13 = v12 ^ *v7;
      *a4++ = v13;
      *(v11 - 1 + *(v8 + 8)) = v13;
      (*(v8 + 24))(v10, 1, v11, v7);
    }

    while (v6);
  }

  return 0;
}

uint64_t cche_secret_key_generate(unsigned int **a1, uint64_t a2)
{
  v11 = timingsafe_enable_if_supported();
  v4 = cche_param_ctx_polynomial_degree(a2);
  v5 = CCPOLYZP_PO2CYC_RANDOM_TERNARY_WORKSPACE_N(v4);
  v9[0] = cc_malloc_clear(8 * v5);
  v6 = cche_param_ctx_polynomial_degree(a2);
  v9[1] = CCPOLYZP_PO2CYC_RANDOM_TERNARY_WORKSPACE_N(v6);
  v9[2] = 0;
  v9[3] = cc_ws_alloc;
  v10 = cc_ws_free;
  if (v9[0])
  {
    ws = cche_secret_key_generate_ws(v9, a1, a2);
    v10(v9);
  }

  else
  {
    ws = 4294967283;
  }

  cc_disable_dit_with_sb(&v11);
  return ws;
}

uint64_t cche_secret_key_generate_from_seed(unsigned int **a1, uint64_t a2)
{
  v16 = timingsafe_enable_if_supported();
  v4 = cche_param_ctx_polynomial_degree(a2);
  v5 = sizeof_struct_ccpolyzp_po2cyc_block_rng_state();
  v6 = sizeof_struct_ccpolyzp_po2cyc();
  v7 = (v5 + v6 - 1) / v6;
  v8 = CCPOLYZP_PO2CYC_RANDOM_TERNARY_WORKSPACE_N(v4);
  v14[0] = cc_malloc_clear(8 * (v8 + v7));
  v9 = cche_param_ctx_polynomial_degree(a2);
  v10 = sizeof_struct_ccpolyzp_po2cyc_block_rng_state();
  v11 = sizeof_struct_ccpolyzp_po2cyc();
  v14[1] = CCPOLYZP_PO2CYC_RANDOM_TERNARY_WORKSPACE_N(v9) + (v10 + v11 - 1) / v11;
  v14[2] = 0;
  v14[3] = cc_ws_alloc;
  v15 = cc_ws_free;
  if (v14[0])
  {
    v12 = cche_secret_key_generate_from_seed_ws(v14, a1, a2);
    v15(v14);
  }

  else
  {
    v12 = 4294967283;
  }

  cc_disable_dit_with_sb(&v16);
  return v12;
}

uint64_t ltc_rc2_ecb_decrypt(uint64_t a1, uint64_t a2, unsigned __int16 *a3, _WORD *a4)
{
  for (; a2; --a2)
  {
    v4 = a3[3];
    v5 = a3[2];
    v6 = a3[1];
    v7 = (a1 + 252);
    v8 = 16;
    v9 = *a3;
    do
    {
      if (v8 == 11 || v8 == 5)
      {
        v11 = v4 - *(a1 + 4 * (v5 & 0x3F));
        v4 = (v4 - *(a1 + 4 * (v5 & 0x3F)));
        v5 = (v5 - *(a1 + 4 * (v6 & 0x3F)));
        v6 = (v6 - *(a1 + 4 * (v9 & 0x3F)));
        v9 = (v9 - *(a1 + 4 * (v11 & 0x3F)));
      }

      v12 = ((v4 << 11) | (v4 >> 5)) - (v6 & v5 | v9 & ~v5) - *v7;
      v4 = (((v4 << 11) | (v4 >> 5)) - (v6 & v5 | v9 & ~v5) - *v7);
      v13 = ((v5 << 13) | (v5 >> 3)) - ((v9 & v6) + *(v7 - 1)) - (v12 & ~v6);
      v5 = (((v5 << 13) | (v5 >> 3)) - ((v9 & v6) + *(v7 - 2)) - (v12 & ~v6));
      v14 = *(v7 - 3);
      v15 = ((v6 << 14) | (v6 >> 2)) - (*(v7 - 2) + (v12 & v9)) - (v13 & ~v9);
      v6 = (((v6 << 14) | (v6 >> 2)) - (*(v7 - 4) + (v12 & v9)) - (v13 & ~v9));
      v16 = ((v9 << 15) | (v9 >> 1)) - (v14 + (v13 & v12)) - (v15 & ~v12);
      v9 = (((v9 << 15) | (v9 >> 1)) - (v14 + (v13 & v12)) - (v15 & ~v12));
      v7 -= 4;
      --v8;
    }

    while (v8);
    *a4 = v16;
    a4[1] = v15;
    a4[2] = v13;
    a3 += 4;
    a4[3] = v12;
    a4 += 4;
  }

  return 0;
}

uint64_t ccec_rfc6637_wrap_key_diversified(uint64_t a1, uint64_t *a2, _WORD *a3, uint64_t a4, char a5, size_t a6, void *a7, char *a8, uint64_t (**a9)(void), char *a10, uint64_t (**a11)(void, uint64_t, uint64_t *))
{
  v37 = timingsafe_enable_if_supported();
  v18 = *a2;
  v19 = **a2;
  v20 = sizeof_struct_cche_galois_key();
  v21 = sizeof_struct_ccpolyzp_po2cyc();
  v33[0] = cc_malloc_clear(248 * v19 + 16 * ((v20 + v21 + 4 * v19 * v21 - 1) / v21));
  v22 = *v18;
  v23 = sizeof_struct_cche_galois_key();
  v24 = sizeof_struct_ccpolyzp_po2cyc();
  v33[1] = 31 * v22 + 2 * ((v23 + v24 + 4 * v22 * v24 - 1) / v24);
  v34 = 0;
  v35 = cc_ws_alloc;
  v36 = cc_ws_free;
  if (v33[0])
  {
    v31 = a5;
    v25 = *a2;
    v26 = cc_ws_alloc(v33, (4 * (**a2 & 0x7FFFFFFFFFFFFFFLL)) | 2);
    v27 = v34;
    *v26 = v25;
    scalar_fips_retry_ws = ccec_generate_scalar_fips_retry_ws(v33, v25, a11, &v26[3 * *v25 + 2]);
    if (!scalar_fips_retry_ws)
    {
      scalar_fips_retry_ws = ccec_make_pub_from_priv_ws(v33, v25, a11, &v26[3 * **v26 + 2], a1 + 16, v26);
      if (!scalar_fips_retry_ws)
      {
        if (ccecdh_pairwise_consistency_check_ws(v33, v26, a1 + 16, a11))
        {
          v29 = 4294967278;
LABEL_9:
          v34 = 0;
          v36(v33);
          goto LABEL_10;
        }

        v34 = v27;
        scalar_fips_retry_ws = ccec_rfc6637_wrap_core_ws(v33, a2, v26, a3, a4, v31, a6, a7, a8, a9, a10, a11);
      }
    }

    v29 = scalar_fips_retry_ws;
    goto LABEL_9;
  }

  v29 = 4294967283;
LABEL_10:
  cc_disable_dit_with_sb(&v37);
  return v29;
}

uint64_t ccec_get_pubkey_components(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v12 = a1 + 2;
  v13 = **a1;
  v14 = ccn_write_uint_size_public_value(v13, a1 + 2);
  if (v14 > *a4)
  {
    return 0xFFFFFFFFLL;
  }

  *a4 = v14;
  ccn_write_uint_public_value(v13, v12, v14, a3);
  v15 = *a1;
  v16 = ccn_write_uint_size_public_value(v13, &v12[**a1]);
  if (v16 > *a6)
  {
    return 0xFFFFFFFFLL;
  }

  *a6 = v16;
  ccn_write_uint_public_value(v13, &v12[*v15], v16, a5);
  v18 = cczp_bitlen(*a1);
  result = 0;
  *a2 = v18;
  return result;
}

uint64_t ccrsa_eme_pkcs1v15_encode_internal(uint64_t (**a1)(void, size_t, char *), unint64_t a2, _WORD *a3, size_t a4, void *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = ccrsa_n_from_size(a2);
  v11 = ccrsa_block_start(a2, a3, 1);
  if (v11 > a3)
  {
    bzero(a3, v11 - a3);
  }

  v12 = 4294967273;
  if (a2 >= 0xB)
  {
    v19 = a5;
    if (a2 - 11 >= a4)
    {
      v13 = v11 + 2;
      v14 = a2 - a4;
      v15 = a2 - a4 - 3;
      v16 = *a1;
      if (v15 > 0xB)
      {
        v12 = v16(a1, v15, v11 + 2);
        if (v12)
        {
          return v12;
        }
      }

      else
      {
        v12 = v16(a1, 12, __src);
        memcpy(v11 + 2, __src, v15);
        cc_clear(v15, __src);
        if (v12)
        {
          return v12;
        }
      }

      if (v15)
      {
        for (i = 0; i != v15; ++i)
        {
          while (!*(v13 + i))
          {
            v12 = (*a1)(a1, 12, __src);
            *(v13 + i) = __src[0];
            cc_clear(1uLL, __src);
            if (v12)
            {
              return v12;
            }
          }
        }
      }

      *v11 = 512;
      v11[v14 - 1] = 0;
      memcpy(&v11[v14], v19, a4);
      ccn_swap(v10, a3);
      return 0;
    }
  }

  return v12;
}

uint64_t ccrsa_eme_pkcs1v15_encode(uint64_t (**a1)(void, size_t, char *), unint64_t a2, _WORD *a3, size_t a4, void *a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = ccrsa_eme_pkcs1v15_encode_internal(a1, a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t fipspost_post_ecdsa(int a1)
{
  v92 = *MEMORY[0x1E69E9840];
  v2 = ccec_cp_521();
  v3 = *v2;
  v4 = sizeof_struct_cche_galois_key();
  v5 = sizeof_struct_ccpolyzp_po2cyc();
  v6 = (v5 - 1 + v4 + 3 * v3 * v5) / v5 + 47 * v3;
  v7 = (v5 - 1 + 4 * v3 * v5 + sizeof_struct_cche_galois_key()) / v5 + 49 * v3;
  if (v6 > v7)
  {
    v7 = v6;
  }

  v8 = cc_malloc_clear(8 * v7);
  v83[0] = v8;
  v9 = *v2;
  v10 = sizeof_struct_cche_galois_key();
  v11 = sizeof_struct_ccpolyzp_po2cyc();
  v12 = (v11 - 1 + v10 + 3 * v9 * v11) / v11 + 47 * v9;
  v13 = (v11 - 1 + 4 * v9 * v11 + sizeof_struct_cche_galois_key()) / v11 + 49 * v9;
  if (v12 > v13)
  {
    v13 = v12;
  }

  v83[1] = v13;
  v84 = 0;
  v85 = cc_ws_alloc;
  v86 = cc_ws_free;
  if (!v8)
  {
    return 4294967283;
  }

  v14 = 0;
  v80 = a1;
  v66 = (a1 << 27) >> 31;
  v15 = &unk_1F5A41F08;
  while (1)
  {
    v81 = v14;
    v16 = (*(v15 - 6))();
    v17 = (*(v15 - 5))();
    v18 = cczp_bitlen(v16);
    v67 = *v17;
    v68 = v18;
    v19 = *(v15 - 3);
    v79 = *(v15 - 2);
    v21 = *(v15 - 1);
    v20 = *v15;
    v22 = v15[1];
    v23 = v15[2];
    v24 = v15[3];
    v73 = v15[5];
    v75 = v15[4];
    memset(v88, 0, sizeof(v88));
    v25 = cczp_bitlen(v16);
    v69 = *v17;
    v71 = v25;
    v77 = v84;
    v26 = v85(v83, (4 * (*v16 & 0x7FFFFFFFFFFFFFFLL)) | 2);
    *v26 = v16;
    if (ccec_x963_import_priv_ws(v83, v16, v79, v21, v26))
    {
      mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccec_x963_import_priv (P-%zu/SHA-%zu): %d\n");
LABEL_19:
      v28 = v81;
      v29 = v77;
      goto LABEL_21;
    }

    ccrng_ecfips_test_init(v88, v20 + v66, v22);
    v87 = 141;
    v27 = ccec_sign_msg_ws(v83, v26, v17, 0x80uLL, v19, &v87, v91, v88);
    if (v27)
    {
      v31 = v27;
      v32 = mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccec_sign_msg (P-%zu/SHA-%zu): %d\n", v32, "fipspost_post_ecdsa_sign_ws", 78, v71, 8 * v69, v31);
      v28 = v81;
      goto LABEL_22;
    }

    if (ccec_extract_rs_ws(v83, v26, v87, v91, __s1, v89))
    {
      mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccec_extract_rs (P-%zu/SHA-%zu): %d\n");
      goto LABEL_19;
    }

    if (memcmp(__s1, v24, v23))
    {
      mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ECDSA_P%zu_SHA%zu KAT (r)\n");
      goto LABEL_19;
    }

    v28 = v81;
    v29 = v77;
    if (memcmp(v89, v73, v75))
    {
      break;
    }

    v84 = v77;
    v14 = v81 + 1;
    v15 += 12;
    if (v81 == 3)
    {
      v70 = 0;
      goto LABEL_23;
    }
  }

  v33 = mach_absolute_time();
  printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ECDSA_P%zu_SHA%zu KAT (s)\n", v33, "fipspost_post_ecdsa_sign_ws", 101, v71, 8 * v69);
LABEL_21:
  v84 = v29;
LABEL_22:
  v34 = mach_absolute_time();
  printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ECDSA_P%zu_SHA%zu_SIG KAT #%zu\n", v34, "fipspost_post_ecdsa_kat_sign_ws", 153, v68, 8 * v67, v28);
  v70 = -75;
LABEL_23:
  v35 = 0;
  v84 = 0;
  v36 = &unk_1F5A42078;
  while (1)
  {
    v82 = v35;
    v37 = (*(v36 - 4))();
    v38 = (*(v36 - 3))();
    v39 = cczp_bitlen(v37);
    v76 = *v38;
    v78 = v39;
    v40 = *(v36 - 1);
    v41 = *v36;
    v43 = v36[1];
    v42 = v36[2];
    v44 = cczp_bitlen(v37);
    v72 = *v38;
    v74 = v44;
    v45 = v84;
    v46 = v85(v83, (24 * *v37 + 23) >> 3);
    *v46 = v37;
    v47 = ccec_x963_import_pub_ws(v83, v37, v41, v43, v46);
    if (v47)
    {
      v53 = v47;
      v54 = mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccec_x963_import_pub (P-%zu/SHA-%zu): %d\n", v54, "fipspost_post_ecdsa_verify_ws", 187, v74, 8 * v72, v53);
      v48 = v80;
      v50 = v82;
      v51 = v45;
      goto LABEL_32;
    }

    __memcpy_chk();
    v48 = v80;
    if ((v80 & 0x10) != 0)
    {
      v91[0] ^= 0x5Au;
    }

    v49 = ccec_verify_msg_ws(v83, v46, v38, 0x80uLL, v40, v42, v91, 0);
    v50 = v82;
    v51 = v45;
    if (v49)
    {
      break;
    }

    v84 = v45;
    v35 = v82 + 1;
    v36 += 8;
    if (v82 == 3)
    {
      v52 = 0;
      v48 = v80;
      goto LABEL_33;
    }
  }

  v55 = v49;
  v56 = mach_absolute_time();
  printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccec_verify_msg (P-%zu/SHA-%zu): %d\n", v56, "fipspost_post_ecdsa_verify_ws", 200, v74, 8 * v72, v55);
LABEL_32:
  v84 = v51;
  v57 = mach_absolute_time();
  printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ECDSA_P%zu_SHA%zu_VER KAT #%zu\n", v57, "fipspost_post_ecdsa_kat_verify_ws", 245, v78, 8 * v76, v50);
  v52 = -75;
LABEL_33:
  v84 = 0;
  v30 = v52 | v70;
  if ((v48 & 0x10) != 0)
  {
    v58 = ccec_cp_224();
    v59 = v85(v83, (4 * (*v58 & 0x7FFFFFFFFFFFFFFLL)) | 2);
    *v59 = v58;
    if (ccec_x963_import_priv_ws(v83, v58, 0x55uLL, byte_1DF0F7F00, v59))
    {
      v60 = mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccec_x963_import_priv\n", v60, "fipspost_post_ecdsa_pairwise_ws", 277);
      v61 = -72;
    }

    else
    {
      v62 = ccec_pairwise_consistency_check_ws(v83, v59, &ccrng_zero);
      mach_absolute_time();
      if (v62)
      {
        printf("FIPSPOST_USER [%llu] %s:%d: FAILED: [PCT] CCEC_PAIRWISE_CONSISTENCY: unexpected FAILURE\n");
      }

      else
      {
        printf("FIPSPOST_USER [%llu] %s:%d: [PCT] CCEC_PAIRWISE_CONSISTENCY: expected SUCCESS\n");
      }

      *(v59 + 24) ^= 1uLL;
      v63 = ccec_pairwise_consistency_check_ws(v83, v59, &ccrng_zero);
      v64 = mach_absolute_time();
      if (v63)
      {
        printf("FIPSPOST_USER [%llu] %s:%d: [PCT] CCEC_PAIRWISE_CONSISTENCY: FORCEFAIL\n", v64, "fipspost_post_ecdsa_pairwise_ws", 295);
        v61 = 0;
      }

      else
      {
        printf("FIPSPOST_USER [%llu] %s:%d: FAILED: [PCT] CCEC_PAIRWISE_CONSISTENCY: unexpected SUCCESS\n", v64, "fipspost_post_ecdsa_pairwise_ws", 298);
        v61 = -1;
      }
    }

    v84 = 0;
    v30 = v61 | v30;
  }

  v86(v83);
  return v30;
}

uint64_t ccmode_siv_hmac_decrypt(rsize_t *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(*a1 + 64);
  if (*(v4 + 16) != 16)
  {
    return 4294967226;
  }

  v6 = a1[3];
  v7 = v6 > 6;
  v8 = (1 << v6) & 0x54;
  if (v7 || v8 == 0)
  {
    return 4294967228;
  }

  v10 = a1[2];
  v11 = a2 - v10;
  if (a2 < v10)
  {
    return 4294967229;
  }

  __memcpy_chk();
  v19 = v21[0];
  if (ccmode_siv_hmac_temp_key_gen(a1, v18, &v19) || (BYTE8(v19) &= ~0x80u, BYTE12(v19) &= ~0x80u, v15 = ccctr_one_shot_internal(v4, a1[1] >> 1, v18, &v19, v11, a3 + v10, a4), v16 = ccmode_siv_hmac_auth_finalize(a1, v11, a4, __s), v16 | cc_cmp_safe_internal(v10, __s, v21) | v15))
  {
    cc_clear(v11, a4);
    cc_clear(v10, __s);
    ccmode_siv_hmac_reset(a1);
    v12 = 4294967192;
  }

  else
  {
    v12 = 0;
  }

  cc_clear(a1[1] >> 1, v18);
  return v12;
}

uint64_t ccckg_contributor_commit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v31 = timingsafe_enable_if_supported();
  v6 = ccckg_ctx_di(a1);
  v7 = ccckg_ctx_cp(a1);
  v8 = v7 + 4;
  v9 = *v7;
  MEMORY[0x1EEE9AC00](v7, v10, v11, v12);
  v14 = (&v29[-1] - v13);
  if (*(a1 + 32))
  {
    v15 = 4294967210;
  }

  else
  {
    v28 = a3;
    v16 = cczp_n(&v8[5 * v9]);
    v17 = cc_malloc_clear(8 * v16);
    v29[0] = v17;
    v29[1] = cczp_n(&v8[5 * v9]);
    v29[2] = 0;
    v29[3] = cc_ws_alloc;
    v30 = cc_ws_free;
    if (v17)
    {
      if (ccckg_sizeof_commitment(v7, v6) == a2)
      {
        v18 = a1 + 40;
        scalar_fips_retry_ws = ccec_generate_scalar_fips_retry_ws(v29, v7, *(a1 + 24), (a1 + 40));
        if (scalar_fips_retry_ws || (v20 = *(a1 + 24), v21 = *v6, v22 = ccckg_ctx_cp(a1), scalar_fips_retry_ws = (*v20)(v20, v21, v18 + 8 * *v22), scalar_fips_retry_ws))
        {
          v15 = scalar_fips_retry_ws;
        }

        else
        {
          v24 = cczp_bitlen(&v8[5 * *v7]);
          ccn_write_uint_padded_internal(v9, (a1 + 40), (v24 + 7) >> 3, __s);
          ccdigest_init_internal(v6, v14);
          v25 = cczp_bitlen(&v8[5 * *v7]);
          ccdigest_update_internal(v6, v14, (v25 + 7) >> 3, __s);
          v26 = *v6;
          v27 = ccckg_ctx_cp(a1);
          ccdigest_update_internal(v6, v14, v26, (v18 + 8 * *v27));
          (*(v6 + 56))(v6, v14, v28);
          cc_clear(*(v6 + 8) + *(v6 + 16) + 12, v14);
          v15 = 0;
          *(a1 + 32) = 1;
        }
      }

      else
      {
        v15 = 4294967289;
      }

      v30(v29);
      cc_clear(0x42uLL, __s);
    }

    else
    {
      v15 = 4294967283;
    }
  }

  cc_disable_dit_with_sb(&v31);
  return v15;
}

uint64_t ccckg_contributor_finish_derive_p_ws(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t (**a5)(void, uint64_t, uint64_t *))
{
  v9 = ccckg_ctx_cp(a2);
  if (*a3 != 4)
  {
    return 4294967289;
  }

  v10 = v9;
  v11 = *v9;
  v18 = *(a1 + 16);
  v12 = (*(a1 + 24))(a1, 3 * *v9);
  v13 = (*(a1 + 24))(a1, 3 * v11);
  v14 = (*(a1 + 24))(a1, 3 * v11);
  v15 = (*(a1 + 24))(a1, (24 * v11 + 23) >> 3);
  *v15 = v10;
  v16 = cczp_bitlen(v10);
  result = ccec_raw_import_pub(v10, ((v16 + 7) >> 2) & 0x3FFFFFFFFFFFFFFELL, a3 + 1, v15);
  if (!result)
  {
    result = ccec_validate_point_and_projectify_ws(a1, v10, v12, (v15 + 2));
    if (!result)
    {
      result = ccec_projectify_ws(a1, v10);
      if (!result)
      {
        result = ccec_mult_blinded_ws(a1, v10, v13, a2 + 40, v14, a5);
        if (!result)
        {
          ccec_full_add_ws(a1, v10);
          result = ccec_affinify_ws(a1, v10);
        }
      }
    }
  }

  *(a1 + 16) = v18;
  return result;
}

uint64_t ccckg_contributor_finish(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, char *a5, void *a6, uint64_t a7, char *a8)
{
  v40 = timingsafe_enable_if_supported();
  v15 = ccckg_ctx_cp(a1);
  v16 = *v15;
  v17 = sizeof_struct_cche_galois_key();
  v18 = sizeof_struct_ccpolyzp_po2cyc();
  v36[0] = cc_malloc_clear((v16 << 8) + 8 * ((v17 + v18 + 3 * v16 * v18 - 1) / v18));
  v19 = *v15;
  v20 = sizeof_struct_cche_galois_key();
  v21 = sizeof_struct_ccpolyzp_po2cyc();
  v36[1] = (v20 + v21 + 3 * v19 * v21 - 1) / v21 + 32 * v19;
  v37 = 0;
  v38 = cc_ws_alloc;
  v39 = cc_ws_free;
  if (v36[0])
  {
    v22 = ccckg_ctx_di(a1);
    v23 = *(a1 + 24);
    v24 = ccckg_ctx_cp(a1);
    if (*(a1 + 32) == 1)
    {
      v25 = v24;
      if (*a6 == v24 && (v34 = *v24, ccckg_sizeof_share(v24, v22) == a2) && ccckg_sizeof_opening(v25, v22) == a4 && *a3 == 4)
      {
        v26 = ccckg_contributor_finish_derive_p_ws(v36, a1, a3, a6, v23);
        if (v26)
        {
          v29 = v26;
        }

        else
        {
          v27 = a1 + 40 + 8 * *ccckg_ctx_cp(a1);
          v28 = cczp_bitlen(v25);
          v29 = ccckg_derive_sk(a1, a6 + 2, v27, &a3[((v28 + 7) >> 2) | 1], a7, a8);
          if (!v29)
          {
            v30 = cczp_bitlen(&v25[5 * *v25 + 4]);
            ccn_write_uint_padded_internal(v34, (a1 + 40), (v30 + 7) >> 3, a5);
            v31 = &a5[(cczp_bitlen(&v25[5 * *v25 + 4]) + 7) >> 3];
            v32 = ccckg_ctx_cp(a1);
            memcpy(v31, (a1 + 40 + 8 * *v32), *v22);
            *(a1 + 32) = 3;
          }
        }

        v37 = 0;
        v39(v36);
      }

      else
      {
        v29 = 4294967289;
        cc_ws_free(v36);
      }
    }

    else
    {
      v29 = 4294967210;
      cc_ws_free(v36);
    }
  }

  else
  {
    v29 = 4294967283;
  }

  cc_disable_dit_with_sb(&v40);
  return v29;
}

uint64_t ccsae_sizeof_kck_internal(uint64_t a1)
{
  v1 = *(a1 + 28);
  if (v1 == 2)
  {
    return **(a1 + 16);
  }

  if (v1 == 1)
  {
    return 32;
  }

  return 0;
}

uint64_t ccsae_get_keys(uint64_t **a1, void *a2, _OWORD *a3, _OWORD *a4)
{
  v26 = timingsafe_enable_if_supported();
  v8 = *a1;
  v9 = cc_malloc_clear(24 * **a1);
  v10 = 3 * *v8;
  v22[0] = v9;
  v22[1] = v10;
  v23 = 0;
  v24 = cc_ws_alloc;
  v25 = cc_ws_free;
  if (v9)
  {
    if (*(a1 + 24) >= CCSAE_STATE_COMMIT_BOTH)
    {
      v12 = *a1;
      v13 = **a1;
      v14 = (cczp_bitlen(*a1) + 7) >> 3;
      v15 = &v12[5 * *v12];
      v16 = cc_ws_alloc(v22, v13);
      v17 = v24(v22, v13);
      cczp_add_ws(v22, (v15 + 4));
      ccn_write_uint_padded_internal(v13, v16, v14, v17);
      v18 = *(a1 + 7);
      if (v18 == 2)
      {
        v19 = *a1[2];
      }

      else if (v18 == 1)
      {
        v19 = 32;
      }

      else
      {
        v19 = 0;
      }

      memcpy(a2, a1 + 6, v19);
      v11 = 0;
      v20 = *(a1 + 8);
      *a3 = *(a1 + 7);
      a3[1] = v20;
      *a4 = *v17;
      v23 = 0;
      v25(v22);
    }

    else
    {
      v11 = 4294967210;
      cc_ws_free(v22);
    }
  }

  else
  {
    v11 = 4294967283;
  }

  cc_disable_dit_with_sb(&v26);
  return v11;
}

uint64_t ccckg2_owner_generate_share(uint64_t a1, size_t a2, const void *a3, uint64_t a4, char *a5, uint64_t (**a6)(void, unint64_t, void *))
{
  v37 = timingsafe_enable_if_supported();
  v12 = ccckg2_ctx_cp(a1);
  v13 = *v12;
  v14 = sizeof_struct_cche_galois_key();
  v15 = sizeof_struct_ccpolyzp_po2cyc();
  v33[0] = cc_malloc_clear(392 * v13 + 16 * ((v14 + v15 + 4 * v13 * v15 - 1) / v15));
  v16 = *v12;
  v17 = sizeof_struct_cche_galois_key();
  v18 = sizeof_struct_ccpolyzp_po2cyc();
  v33[1] = 49 * v16 + 2 * ((v17 + v18 + 4 * v16 * v18 - 1) / v18);
  v34 = 0;
  v35 = cc_ws_alloc;
  v36 = cc_ws_free;
  if (v33[0])
  {
    v19 = ccckg2_ctx_di(a1);
    v20 = ccckg2_ctx_cp(a1);
    if (*(a1 + 32))
    {
      v21 = 4294967210;
      cc_ws_free(v33);
    }

    else if (*v19 == a2 && (v22 = v20, v23 = *v20, (((cczp_bitlen(v20) + 7) >> 1) & 0x7FFFFFFFFFFFFFFCLL | 2) == a4))
    {
      v32 = v23;
      v24 = cc_ws_alloc(v33, (4 * (v23 & 0x7FFFFFFFFFFFFFFLL)) | 2);
      *v24 = v22;
      v25 = v35(v33, (4 * (v23 & 0x7FFFFFFFFFFFFFFLL)) | 2);
      *v25 = v22;
      v26 = ccckg2_ctx_cp(a1);
      v27 = ccckg2_ctx_cp(a1);
      memcpy((a1 + 40 + 8 * *v27 + 8 * *v26), a3, a2);
      key_fips_ws = ccec_generate_key_fips_ws(v33, v22, a6, v24);
      if (key_fips_ws || (ccn_set(v32, (a1 + 40), &v24[3 * **v24 + 2]), key_fips_ws = ccec_generate_key_fips_ws(v33, v22, a6, v25), key_fips_ws) || (v29 = ccckg2_ctx_cp(a1), ccn_set(v32, (a1 + 40 + 8 * *v29), &v25[3 * **v25 + 2]), key_fips_ws = ccec_export_pub(v24, a5), key_fips_ws))
      {
        v21 = key_fips_ws;
      }

      else
      {
        v30 = cczp_bitlen(v22);
        v21 = ccec_export_pub(v25, &a5[((v30 + 7) >> 2) | 1]);
        if (!v21)
        {
          *(a1 + 32) = 2;
        }
      }

      v34 = 0;
      v36(v33);
    }

    else
    {
      v21 = 4294967289;
      cc_ws_free(v33);
    }
  }

  else
  {
    v21 = 4294967283;
  }

  cc_disable_dit_with_sb(&v37);
  return v21;
}

uint64_t ccckg2_owner_finish(uint64_t a1, size_t a2, char *a3, uint64_t **a4, uint64_t a5, char *a6, uint64_t (**a7)(void, uint64_t, uint64_t *))
{
  v28 = *MEMORY[0x1E69E9840];
  v26 = timingsafe_enable_if_supported();
  v14 = ccckg2_ctx_di(a1);
  v15 = ccckg2_ctx_cp(a1);
  if (*(a1 + 32) == 2)
  {
    v16 = v15;
    if (*a4 == v15 && (v25 = a6, v17 = cczp_bitlen(&v15[5 * *v15 + 4]) + 7, (((cczp_bitlen(v16) + 7) >> 2) | 1) + (v17 >> 3) == a2))
    {
      ccdigest_internal(v14, a2, a3, __s);
      v18 = *v14;
      v19 = ccckg2_ctx_cp(a1);
      v20 = ccckg2_ctx_cp(a1);
      if (cc_cmp_safe_internal(v18, __s, a1 + 8 * *v20 + 8 * *v19 + 40))
      {
        v21 = 4294967294;
      }

      else
      {
        v23 = ccckg_owner_finish_derive_p(a1, a3, a4, a7);
        if (v23)
        {
          v21 = v23;
        }

        else
        {
          v24 = cczp_bitlen(&v16[5 * *v16 + 4]);
          v21 = ccckg2_derive_sk(a1, &a3[(v24 + 7) >> 3], a4, a5, v25, a7);
          if (!v21)
          {
            *(a1 + 32) = 3;
          }
        }
      }

      cc_clear(0x40uLL, __s);
    }

    else
    {
      v21 = 4294967289;
    }
  }

  else
  {
    v21 = 4294967210;
  }

  cc_disable_dit_with_sb(&v26);
  return v21;
}

uint64_t fipspost_post_kdf_ctr_cmac(char a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = 0;
  v2 = ccaes_cbc_encrypt_mode();
  if (ccnistkdf_ctr_cmac_fixed(v2, 32, 16, "\xC1\x0B\x15.\x8C\x97\xB7~\x18pN\x0F\vӃ\x05", 0x3CuLL, byte_1DF0F8465, 0x10uLL, &v22))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_cmac_fixed (AES128): %d\n");
    return 4294967224;
  }

  v3 = "\x01&\xFA\xF6\x19\x08\xAD\x9E聸0\\\x1D\xB5?";
  if ((a1 & 0x10) == 0)
  {
    v3 = "&\xFA\xF6\x19\x08\xAD\x9E聸0\\\x1D\xB5?";
  }

  v5 = *v3;
  v4 = *(v3 + 1);
  if (v5 == v22 && v4 == v23)
  {
    v8 = 0;
  }

  else
  {
    v7 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed CMAC_AES128 KAT\n", v7, "fipspost_post_kdf_ctr_cmac", 69);
    v8 = 4294967221;
  }

  v20 = 0u;
  v21 = 0u;
  v9 = ccaes_cbc_encrypt_mode();
  if (ccnistkdf_ctr_cmac_fixed(v9, 24, 32, "Mq\x922\x80\xFBJ\x11\xB2_\x9DX\xD6\x77\x04\xD8\xF8\xBB-d؞۞\xE6\xF3\xDE2\xE4\x60\x1E\xFC", 0x3CuLL, "\xE2\x7B\x8F5\v\xC1\x36\r\xDC\x47l\xB0\xCA\xE8\x86\xF0\x16\x1D\xA2.\xE8\x15\x9C3\x0FTZ\xF1\xD7\x82\xA0\xF0\xAA\xCC\x3C=\xE6\x21\x58\a\x16\x1D\xF0\x93\x36\xD4p\xB5\xB4\xDB\x1C\xC0\xCEs\xED\x1D\x3E\xA2C\x80", 0x20uLL, &v20))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_cmac_fixed (AES256): %d\n");
    return 4294967224;
  }

  v11 = "\x01\xB5\xB2\xBBg_\xE7\xB0\x4AR4\v\xD5\xCF$\x8DRX\xA1\xF87\xDA\xD7G\xEE\x8A\x4E\x90F\b\xA8\x97}";
  if ((a1 & 0x10) == 0)
  {
    v11 = "\xB5\xB2\xBBg_\xE7\xB0\x4AR4\v\xD5\xCF$\x8DRX\xA1\xF87\xDA\xD7G\xEE\x8A\x4E\x90F\b\xA8\x97}";
  }

  v12 = *v11;
  v13 = *(v11 + 1);
  v15 = *(v11 + 2);
  v14 = *(v11 + 3);
  if (v12 != v20 || v13 != *(&v20 + 1) || v15 != v21 || v14 != *(&v21 + 1))
  {
    v19 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed CMAC_AES256 KAT\n", v19, "fipspost_post_kdf_ctr_cmac", 122);
    return 4294967221;
  }

  return v8;
}

void *ccn_addmod_p448(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = a2[1];
  v3 = a2 + 2;
  v6 = *v3;
  v7 = v3[1];
  v3 += 2;
  v8 = *v3;
  v9 = v3[1];
  v3 += 2;
  v11 = *a3;
  v12 = a3[1];
  v10 = a3 + 2;
  v13 = *v10;
  v14 = v10[1];
  v10 += 2;
  v15 = *v10;
  v16 = v10[1];
  v10 += 2;
  v17 = __CFADD__(v4, v11);
  v18 = v4 + v11;
  v20 = v17;
  v17 = __CFADD__(v17, v5);
  v19 = v20 + v5;
  v17 |= __CFADD__(v12, v19);
  v19 += v12;
  v22 = v17;
  v17 = __CFADD__(v17, v6);
  v21 = v22 + v6;
  v17 |= __CFADD__(v13, v21);
  v21 += v13;
  v24 = v17;
  v17 = __CFADD__(v17, v7);
  v23 = v24 + v7;
  v17 |= __CFADD__(v14, v23);
  v23 += v14;
  v26 = v17;
  v17 = __CFADD__(v17, v8);
  v25 = v26 + v8;
  v17 |= __CFADD__(v15, v25);
  v25 += v15;
  v28 = v17;
  v17 = __CFADD__(v17, v9);
  v27 = v28 + v9;
  v17 |= __CFADD__(v16, v27);
  v27 += v16;
  v29 = *v10 + v17 + *v3;
  v30 = __CFADD__(v17, *v3) | __CFADD__(*v10, v17 + *v3);
  v17 = __CFADD__(v18, v30);
  v31 = v18 + v30;
  v33 = v17;
  v17 = __CFADD__(v17, v19);
  v32 = v33 + v19;
  v35 = v17;
  v17 = __CFADD__(v17, v21);
  v34 = v35 + v21;
  v30 <<= 32;
  v37 = v17;
  v17 = __CFADD__(v17, v23);
  v36 = v37 + v23;
  v39 = v17 | __CFADD__(v30, v36);
  v17 = __CFADD__(v39, v25);
  v38 = v39 + v25;
  v41 = v17;
  v17 = __CFADD__(v17, v27);
  v40 = v41 + v27;
  v42 = v17;
  v17 = __CFADD__(v17, v29);
  *a1 = v31 + v17;
  a1[1] = __CFADD__(v31, v17) + v32;
  v43 = a1 + 2;
  *v43 = __PAIR128__(v17 << 32, __CFADD__(__CFADD__(v31, v17), v32)) + __PAIR128__(v30 + v36, v34);
  v43 += 2;
  *v43 = v38;
  v43[1] = v40;
  v43 += 2;
  *v43 = v42 + v29;
  return v43 + 1;
}

char *ccn_submod_p448(_OWORD *a1, unint64_t *a2, unint64_t *a3)
{
  v4 = *a2;
  v5 = a2[1];
  v3 = a2 + 2;
  v6 = *v3;
  v7 = v3[1];
  v3 += 2;
  v8 = *v3;
  v9 = v3[1];
  v3 += 2;
  v11 = *a3;
  v12 = a3[1];
  v10 = a3 + 2;
  v13 = *v10;
  v14 = v10[1];
  v10 += 2;
  v15 = *v10;
  v16 = v10[1];
  v10 += 2;
  v17 = v4 >= v11;
  v18 = v4 - v11;
  v20 = v17;
  v17 = __CFSUB__(v5, v12, v17);
  v19 = v5 - (v12 + !v20);
  v22 = v17;
  v17 = __CFSUB__(v6, v13, v17);
  v21 = v6 - (v13 + !v22);
  v24 = v17;
  v17 = __CFSUB__(v7, v14, v17);
  v23 = v7 - (v14 + !v24);
  v26 = v17;
  v17 = __CFSUB__(v8, v15, v17);
  v25 = v8 - (v15 + !v26);
  v28 = v17;
  v17 = __CFSUB__(v9, v16, v17);
  v27 = v9 - (v16 + !v28);
  v29 = *v3 - (*v10 + !v17);
  v30 = !__CFSUB__(*v3, *v10, v17);
  v17 = v18 >= v30;
  v31 = v18 - v30;
  v33 = v17;
  v17 = v19 >= !v17;
  v32 = v19 - !v33;
  v35 = v17;
  v17 = v21 >= !v17;
  v34 = v21 - !v35;
  v36 = v30 << 32;
  v38 = v17;
  v17 = __CFSUB__(v23, v36, v17);
  v37 = v23 - (v36 + !v38);
  v40 = v17;
  v17 = v25 >= !v17;
  v39 = v25 - !v40;
  v42 = v17;
  v17 = v27 >= !v17;
  v41 = v27 - !v42;
  v44 = v17;
  v17 = v29 >= !v17;
  v43 = v29 - !v44;
  v45 = !v17;
  *a1 = __PAIR128__(v32, v31) - v45;
  v46 = a1 + 1;
  *v46++ = __PAIR128__(v37, v34) - __PAIR128__(v45 << 32, __PAIR128__(v32, v31) < v45);
  *v46 = v39;
  *(v46++ + 1) = v41;
  *v46 = v43;
  return v46 + 8;
}

uint64_t ccn_mulmod_p448(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v5 = *a2;
  v4 = a2[1];
  v3 = a2 + 2;
  v7 = *v3;
  v6 = v3[1];
  v3 += 2;
  v9 = *v3;
  v8 = v3[1];
  v11 = *a3;
  v12 = a3[1];
  v10 = a3 + 2;
  v13 = *v10;
  v14 = v10[1];
  v10 += 2;
  v15 = (v4 * v11) >> 64;
  v16 = (v7 * v11) >> 64;
  v17 = __CFADD__(__CFADD__((v5 * v11) >> 64, v4 * v11), v15);
  v18 = __CFADD__((v5 * v11) >> 64, v4 * v11) + v15;
  v17 |= __CFADD__(v7 * v11, v18);
  v18 += v7 * v11;
  v19 = (v6 * v11) >> 64;
  v20 = *v3 * v11;
  v22 = v17;
  v17 = __CFADD__(v17, v16);
  v21 = v22 + v16;
  v17 |= __CFADD__(v6 * v11, v21);
  v21 += v6 * v11;
  v24 = v17;
  v17 = __CFADD__(v17, v19);
  v23 = v24 + v19;
  v17 |= __CFADD__(v20, v23);
  v23 += v20;
  v25 = v8 * v11 + v17 + ((v9 * v11) >> 64);
  v26 = (v5 * v12) >> 64;
  v17 = __CFADD__(__CFADD__((__PAIR128__(v4, v5) * v11) >> 64, v5 * v12), v18);
  v27 = __CFADD__((__PAIR128__(v4, v5) * v11) >> 64, v5 * v12) + v18;
  v17 |= __CFADD__(v26, v27);
  v27 += v26;
  v28 = (v7 * v12) >> 64;
  v30 = v17;
  v17 = __CFADD__(v17, v21);
  v29 = v30 + v21;
  v17 |= __CFADD__(v7 * v12, v29);
  v29 += v7 * v12;
  v32 = v17;
  v17 = __CFADD__(v17, v23);
  v31 = v32 + v23;
  v17 |= __CFADD__(v28, v31);
  v31 += v28;
  v33 = v9 * v12 + v17 + v25;
  v34 = (v4 * v12) >> 64;
  v17 = __CFADD__(v27, v4 * v12);
  v35 = v27 + v4 * v12;
  v37 = v17;
  v17 = __CFADD__(v17, v29);
  v36 = v37 + v29;
  v17 |= __CFADD__(v34, v36);
  v36 += v34;
  v39 = v17;
  v17 = __CFADD__(v17, v31);
  v38 = v39 + v31;
  v17 |= __CFADD__(v6 * v12, v38);
  v38 += v6 * v12;
  v40 = ((v6 * v12) >> 64) + v17 + v33;
  v41 = (v5 * v13) >> 64;
  v17 = __CFADD__(__CFADD__(v35, v5 * v13), v36);
  v42 = __CFADD__(v35, v5 * v13) + v36;
  v17 |= __CFADD__(v41, v42);
  v42 += v41;
  v44 = v17;
  v17 = __CFADD__(v17, v38);
  v43 = v44 + v38;
  v17 |= __CFADD__(v7 * v13, v43);
  v43 += v7 * v13;
  v45 = ((v7 * v13) >> 64) + v17 + v40;
  v46 = (v4 * v13) >> 64;
  v17 = __CFADD__(v42, v4 * v13);
  v47 = v42 + v4 * v13;
  v49 = v17;
  v17 = __CFADD__(v17, v43);
  v48 = v49 + v43;
  v17 |= __CFADD__(v46, v48);
  v48 += v46;
  v50 = v6 * v13 + v17 + v45;
  v51 = (v5 * v14) >> 64;
  v17 = __CFADD__(__CFADD__(v47, v5 * v14), v48);
  v52 = __CFADD__(v47, v5 * v14) + v48;
  return ccn_reduce_p448_and_ret(v5 * v11, (__PAIR128__(v12, v11) * __PAIR128__(v4, v5)) >> 64, v35 + v5 * v13, v47 + v5 * v14, v51 + v52 + v4 * v14 + v5 * *v10, ((__PAIR128__(v7 * v14 + (v17 | __CFADD__(v51, v52)) + v50, v51 + v52) + v4 * v14 + v5 * *v10) >> 64) + v4 * *v10 + v5 * v10[1]);
}

uint64_t ccn_reduce_p448_and_ret@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v14 = __CFADD__(a1, v7);
  v15 = a1 + v7;
  v17 = v14;
  v14 = __CFADD__(v14, a2);
  v16 = v17 + a2;
  v14 |= __CFADD__(v8, v16);
  v16 += v8;
  v19 = v14;
  v14 = __CFADD__(v14, a3);
  v18 = v19 + a3;
  v14 |= __CFADD__(v9, v18);
  v18 += v9;
  v21 = v14;
  v14 = __CFADD__(v14, a4);
  v20 = v21 + a4;
  v14 |= __CFADD__(v10, v20);
  v20 += v10;
  v23 = v14;
  v14 = __CFADD__(v14, a5);
  v22 = v23 + a5;
  v14 |= __CFADD__(v11, v22);
  v22 += v11;
  v25 = v14;
  v14 = __CFADD__(v14, a6);
  v24 = v25 + a6;
  v14 |= __CFADD__(v12, v24);
  v24 += v12;
  v27 = v14;
  v14 = __CFADD__(v14, v6);
  v26 = v27 + v6;
  v14 |= __CFADD__(v13, v26);
  v26 += v13;
  v28 = v14;
  v14 = __CFADD__(v20, v10 & 0xFFFFFFFF00000000);
  v29 = v20 + (v10 & 0xFFFFFFFF00000000);
  v31 = v14;
  v14 = __CFADD__(v14, v22);
  v30 = v31 + v22;
  v14 |= __CFADD__(v11, v30);
  v30 += v11;
  v33 = v14;
  v14 = __CFADD__(v14, v24);
  v32 = v33 + v24;
  v14 |= __CFADD__(v12, v32);
  v32 += v12;
  v35 = v14;
  v14 = __CFADD__(v14, v26);
  v34 = v35 + v26;
  v14 |= __CFADD__(v13, v34);
  v34 += v13;
  v36 = v14 + v28;
  v37 = v10;
  *(&v39 + 1) = v11;
  *&v39 = v10;
  v38 = v39 >> 32;
  *(&v39 + 1) = v12;
  *&v39 = v11;
  v40 = v39 >> 32;
  *(&v39 + 1) = v13;
  *&v39 = v12;
  v41 = v39 >> 32;
  *(&v39 + 1) = v7;
  *&v39 = v13;
  v42 = v39 >> 32;
  *(&v39 + 1) = v8;
  *&v39 = v7;
  v43 = v39 >> 32;
  *(&v39 + 1) = v9;
  *&v39 = v8;
  v44 = v39 >> 32;
  *(&v39 + 1) = v37;
  *&v39 = v9;
  v45 = v39 >> 32;
  v14 = __CFADD__(v15, v38);
  v46 = v15 + v38;
  v48 = v14;
  v14 = __CFADD__(v14, v16);
  v47 = v48 + v16;
  v14 |= __CFADD__(v40, v47);
  v47 += v40;
  v50 = v14;
  v14 = __CFADD__(v14, v18);
  v49 = v50 + v18;
  v14 |= __CFADD__(v41, v49);
  v49 += v41;
  v52 = v14;
  v14 = __CFADD__(v14, v29);
  v51 = v52 + v29;
  v14 |= __CFADD__(v42, v51);
  v51 += v42;
  v54 = v14;
  v14 = __CFADD__(v14, v30);
  v53 = v54 + v30;
  v14 |= __CFADD__(v43, v53);
  v53 += v43;
  v56 = v14;
  v14 = __CFADD__(v14, v32);
  v55 = v56 + v32;
  v14 |= __CFADD__(v44, v55);
  v55 += v44;
  v58 = v14;
  v14 = __CFADD__(v14, v34);
  v57 = v58 + v34;
  v14 |= __CFADD__(v45, v57);
  v57 += v45;
  v59 = v14 + v36;
  v14 = __CFADD__(v46, v59);
  v60 = v46 + v59;
  v62 = v14;
  v14 = __CFADD__(v14, v47);
  v61 = v62 + v47;
  v64 = v14;
  v14 = __CFADD__(v14, v49);
  v63 = v64 + v49;
  v59 <<= 32;
  v66 = v14;
  v14 = __CFADD__(v14, v51);
  v65 = v66 + v51;
  v68 = v14 | __CFADD__(v59, v65);
  v14 = __CFADD__(v68, v53);
  v67 = v68 + v53;
  v70 = v14;
  v14 = __CFADD__(v14, v55);
  v69 = v70 + v55;
  v71 = v14;
  v14 = __CFADD__(v14, v57);
  *v73 = v60 + v14;
  *(v73 + 8) = __CFADD__(v60, v14) + v61;
  *(v73 + 16) = __PAIR128__(v14 << 32, __CFADD__(__CFADD__(v60, v14), v61)) + __PAIR128__(v59 + v65, v63);
  *(v73 + 32) = v67;
  *(v73 + 40) = v69;
  *(v73 + 48) = v71 + v57;
  return v73 + 56;
}

uint64_t ccn_sqrmod_p448(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v2 = a2 + 2;
  v6 = *v2;
  v5 = v2[1];
  v2 += 2;
  v7 = (v6 * v4) >> 64;
  v8 = (v5 * v4) >> 64;
  v9 = (__PAIR128__(v6, v3) * v4) >> 64;
  v10 = __CFADD__(__CFADD__((v3 * v4) >> 64, v6 * v4), v7);
  v11 = __CFADD__((v3 * v4) >> 64, v6 * v4) + v7;
  v10 |= __CFADD__(v5 * v4, v11);
  v11 += v5 * v4;
  v12 = *v2 * v4;
  v14 = v10;
  v10 = __CFADD__(v10, v8);
  v13 = v14 + v8;
  v15 = v2[1] * v4 + (v10 | __CFADD__(v12, v13)) + ((*v2 * v4) >> 64);
  v10 = __CFADD__(v11, v6 * v3);
  v16 = v11 + v6 * v3;
  v17 = __PAIR128__(*v2 * v3 + (__CFADD__(v10, v12 + v13) | __CFADD__((v6 * v3) >> 64, v10 + v12 + v13)) + v15, ((v6 * v3) >> 64) + v10 + v12 + v13) + v5 * v3;
  v18 = *(&v17 + 1) + v5 * v6;
  v19 = __PAIR128__(v6, v3) * v4 + v3 * v4;
  v10 = __CFADD__(__CFADD__(v3 * v4, v3 * v4), v9) | __CFADD__(v9, *(&v19 + 1));
  v20 = v9 + *(&v19 + 1);
  v22 = v10 + v16;
  v10 = __CFADD__(v10, v16) | __CFADD__(v16, v22);
  v21 = v16 + v22;
  v24 = v10 + v17;
  v23 = v17 + v24;
  v25 = (__CFADD__(v10, v17) | __CFADD__(v17, v24)) + v18;
  v26 = (v3 * v3) >> 64;
  v10 = __CFADD__(__CFADD__(2 * v3 * v4, (v4 * v4) >> 64), v20);
  v27 = __CFADD__(2 * v3 * v4, (v4 * v4) >> 64) + v20;
  v10 |= __CFADD__(v3 * v3, v27);
  return ccn_reduce_p448_and_ret(v4 * v4, (__PAIR128__(v3, v4) * __PAIR128__(v3, v4)) >> 64, v3 * v3 + v27, v26 + v10 + v21, v6 * v6 + (__CFADD__(v10, v21) | __CFADD__(v26, v10 + v21)) + v23, ((v6 * v6) >> 64) + (__CFADD__(__CFADD__(v10, v21) | __CFADD__(v26, v10 + v21), v23) | __CFADD__(v6 * v6, (__CFADD__(v10, v21) | __CFADD__(v26, v10 + v21)) + v23)) + v18 + v25);
}

unint64_t cche_galois_key_nof_n(uint64_t a1, unsigned int a2)
{
  v4 = ((sizeof_struct_cche_galois_key() + 7) >> 3) + ((4 * a2 + 7) >> 3);
  v5 = cche_param_ctx_key_ctx_nmoduli(a1);
  if ((v5 - 1) <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 - 1;
  }

  v7 = cche_param_ctx_polynomial_degree(a1);
  v8 = v6 * a2;
  v9 = cche_ciphertext_fresh_npolys();
  v10 = sizeof_struct_ccrns_mul_modulus();
  v11 = sizeof_struct_ccpolyzp_po2cyc();
  return v4 + ((v10 + v11 - 1) / v11 + ((v7 * v5) + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3)) * v9) * v8;
}

uint64_t cche_galois_key_ciphertext(uint64_t a1, int a2, unsigned int a3)
{
  v6 = *(a1 + 8);
  v7 = cche_param_ctx_chain_const(*a1);
  v8 = *(v7 + 12);
  v9 = v8 - 1;
  if ((v8 - 1) <= 1)
  {
    v9 = 1;
  }

  v10 = a1 + ((4 * v6 + 7) & 0x7FFFFFFF8);
  v11 = (v9 * a2);
  v12 = cche_ciphertext_fresh_npolys();
  v13 = sizeof_struct_ccrns_mul_modulus();
  v14 = sizeof_struct_ccpolyzp_po2cyc();
  v15 = (v13 + v14 - 1) / v14 + ((*(v7 + 8) * v8) + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3)) * v12;
  return v10 + 8 * v15 * v11 + 8 * v15 * a3 + 16;
}

uint64_t cche_galois_key_generate(uint64_t a1, int a2, uint64_t a3, unsigned int **a4, uint64_t a5, int a6, uint64_t a7, uint64_t (**a8)(void, uint64_t, uint64_t))
{
  v28 = timingsafe_enable_if_supported();
  v14 = cche_param_ctx_key_ctx_nmoduli(a5);
  v15 = cche_param_ctx_polynomial_degree(a5);
  v16 = v15;
  v17 = CCPOLYZP_PO2CYC_WORKSPACE_N(v15, v14);
  v18 = CCHE_ENCRYPT_ZERO_SYMMETRIC_EVAL_WORKSPACE_N(v16, v14);
  v26[0] = cc_malloc_clear(8 * (v18 + v17));
  v19 = cche_param_ctx_polynomial_degree(a5);
  v20 = v19;
  v21 = CCPOLYZP_PO2CYC_WORKSPACE_N(v19, v14);
  v26[1] = CCHE_ENCRYPT_ZERO_SYMMETRIC_EVAL_WORKSPACE_N(v20, v14) + v21;
  v26[2] = 0;
  v26[3] = cc_ws_alloc;
  v27 = cc_ws_free;
  if (v26[0])
  {
    ws = cche_galois_key_generate_ws(v26, a1, a2, a3, a4, a5, a6, a7, a8);
    v27(v26);
  }

  else
  {
    ws = 4294967283;
  }

  cc_disable_dit_with_sb(&v28);
  return ws;
}

uint64_t cche_galois_key_save(int a1, uint64_t a2, uint64_t *a3)
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
    v9 = cche_galois_key_save_ws(v11, a1, a2, a3);
    v12(v11);
  }

  else
  {
    v9 = 4294967283;
  }

  cc_disable_dit_with_sb(&v13);
  return v9;
}

uint64_t cche_galois_key_load(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8)
{
  v23 = timingsafe_enable_if_supported();
  v16 = cche_param_ctx_polynomial_degree(a4);
  v17 = CCHE_DESERIALIZE_SEEDED_CIPHERTEXT_EVAL_WORKSPACE_N(v16);
  v21[0] = cc_malloc_clear(8 * v17);
  v18 = cche_param_ctx_polynomial_degree(a4);
  v21[1] = CCHE_DESERIALIZE_SEEDED_CIPHERTEXT_EVAL_WORKSPACE_N(v18);
  v21[2] = 0;
  v21[3] = cc_ws_alloc;
  v22 = cc_ws_free;
  if (v21[0])
  {
    ws = cche_galois_key_load_ws(v21, a1, a2, a3, a4, a5, a6, a7, a8);
    v22(v21);
  }

  else
  {
    ws = 4294967283;
  }

  cc_disable_dit_with_sb(&v23);
  return ws;
}

unint64_t CCHE_CIPHERTEXT_GALOIS_KEY_SWITCH_WORKSPACE_N(uint64_t a1, int a2)
{
  v4 = cche_ciphertext_fresh_npolys();
  v5 = sizeof_struct_ccrns_mul_modulus();
  v6 = sizeof_struct_ccpolyzp_po2cyc();
  v7 = (v5 + v6 - 1) / v6;
  v8 = sizeof_struct_ccpolyzp_po2cyc() + 7;
  v9 = sizeof_struct_ccpolyzp_po2cyc_ctx() + 7;
  if (a1 >= 0x80)
  {
    v10 = 128;
  }

  else
  {
    v10 = a1;
  }

  v11 = ((sizeof_struct_ccrns_mul_modulus() + 7) >> 3) * v10 + a1;
  return v7 + a1 + (v8 >> 3) + (v9 >> 3) + CCHE_CIPHERTEXT_MOD_SWITCH_DOWN_WORKSPACE_N(a1, a2) + ((a2 * a1) + 2 * a1 + (v8 >> 3)) * v4 + 2 * v11 + 6;
}

uint64_t cche_ciphertext_apply_galois(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4)
{
  v14 = timingsafe_enable_if_supported();
  v8 = cche_param_ctx_chain_const(*a4);
  v9 = CCHE_CIPHERTEXT_GALOIS_KEY_SWITCH_WORKSPACE_N(*(v8 + 8), *(v8 + 12) + 1);
  v12[0] = cc_malloc_clear(8 * v9);
  v12[1] = CCHE_CIPHERTEXT_GALOIS_KEY_SWITCH_WORKSPACE_N(*(v8 + 8), *(v8 + 12) + 1);
  v12[2] = 0;
  v12[3] = cc_ws_alloc;
  v13 = cc_ws_free;
  if (v12[0])
  {
    v10 = cche_ciphertext_apply_galois_ws(v12, a1, a2, a3, a4);
    v13(v12);
  }

  else
  {
    v10 = 4294967283;
  }

  cc_disable_dit_with_sb(&v14);
  return v10;
}

uint64_t cche_ciphertext_galois_elt_rotate_rows_left(_DWORD *a1, int a2, unsigned int a3)
{
  v8 = timingsafe_enable_if_supported();
  v6 = cche_galois_elt_from_step(a1, a2, a3);
  cc_disable_dit_with_sb(&v8);
  return v6;
}

uint64_t ccz_zero(void *a1)
{
  v3 = timingsafe_enable_if_supported();
  ccz_set_sign(a1, 1);
  ccz_set_n(a1, 0);
  return cc_disable_dit_with_sb(&v3);
}

uint64_t ccmode_ccm_reset(uint64_t a1, uint64_t a2)
{
  cc_clear(0x10uLL, (a2 + 32));
  cc_clear(0x10uLL, (a2 + 48));
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 64) = 1;
  return 0;
}

uint64_t ccn_xor(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (; result; --result)
  {
    *(a2 - 8 + 8 * result) = *(a4 - 8 + 8 * result) ^ *(a3 - 8 + 8 * result);
  }

  return result;
}

uint64_t cced25519_add_points_unified_ws(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, char a6)
{
  v12 = cczp_n(a2);
  v13 = *(a1 + 16);
  ccn_set(4 * v12, a3, a5);
  cced25519_point_to_cached_ws(a1, a2);
  result = cced25519_add_points_unified_cached_ws(a1, a2, a3, a4, a3, a6);
  *(a1 + 16) = v13;
  return result;
}

uint64_t cced25519_point_to_cached_ws(uint64_t a1, uint64_t a2)
{
  cczp_n(a2);
  v4 = *(a1 + 16);
  cczp_mul_ws(a1, a2);
  result = cczp_add_ws(a1, a2);
  *(a1 + 16) = v4;
  return result;
}

uint64_t cced25519_add_points_unified_cached_ws(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = cczp_n(a2);
  v14 = *(a1 + 16);
  v12 = (a3 + 24 * v11);
  (*(a1 + 24))(a1, v11);
  (*(a1 + 24))(a1, v11);
  if ((a6 & 2) != 0)
  {
    ccn_set(v11, v12, (a4 + 24 * v11));
  }

  else
  {
    cczp_mul_ws(a1, a2);
  }

  cczp_sub_ws(a1, a2);
  if (a6)
  {
    cczp_add_ws(a1, a2);
  }

  else
  {
    cczp_sub_ws(a1, a2);
  }

  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  if (a6)
  {
    cczp_sub_ws(a1, a2);
  }

  else
  {
    cczp_add_ws(a1, a2);
  }

  cczp_mul_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  if ((a6 & 1) == 0)
  {
    cczp_sub_ws(a1, a2);
    cczp_add_ws(a1, a2);
    if ((a6 & 4) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  if ((a6 & 4) == 0)
  {
LABEL_14:
    cczp_mul_ws(a1, a2);
  }

LABEL_15:
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  result = cczp_mul_ws(a1, a2);
  *(a1 + 16) = v14;
  return result;
}

void *cced25519_double_scalar_mult_ws(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = cczp_n(a2);
  v21 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, 4 * v9);
  v11 = 32 * v9;
  v12 = (*(a1 + 24))(a1, 32 * v9);
  cced25519_to_ed25519_point_ws(a1, a2);
  cced25519_point_to_cached_ws(a1, a2);
  cced25519_dbl_point_ws(a1, a2);
  v13 = 7;
  v14 = v12;
  do
  {
    v15 = v14 + v11;
    cced25519_add_points_unified_cached_ws(a1, a2, v14 + v11, v10, v14, 0);
    cced25519_point_to_cached_ws(a1, a2);
    v14 = v15;
    --v13;
  }

  while (v13);
  cc_clear(8 * v9, v10);
  cc_clear(8 * v9, &v10[16 * v9]);
  ccn_seti(v9, &v10[8 * v9], 1);
  ccn_seti(v9, &v10[24 * v9], 1);
  ccn_recode_ssw(v9, a4, 4, v24);
  ccn_recode_ssw(v9, a5, 4, v23);
  v16 = 255;
  do
  {
    v17 = v24[v16];
    v18 = v23[v16--];
  }

  while (!(v18 | v17));
  if (v16 != -2)
  {
    v19 = v16 + 1;
    do
    {
      cced25519_dbl_point_ws(a1, a2);
      cced25519_add_precomputed_point_ws(a1, a2, v10, v23[v19], 4, v12, 0);
      cced25519_add_precomputed_point_ws(a1, a2, v10, v24[v19--], 3, &CCED25519_PRECOMPUTED_BASES, 6);
    }

    while (v19 != -1);
  }

  result = cced25519_from_ed25519_point_ws(a1, a2, a3, v10);
  *(a1 + 16) = v21;
  return result;
}

uint64_t cced25519_dbl_point_ws(uint64_t a1, uint64_t a2)
{
  v4 = cczp_n(a2);
  v6 = *(a1 + 16);
  (*(a1 + 24))(a1, v4);
  (*(a1 + 24))(a1, v4);
  cczp_add_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  result = cczp_mul_ws(a1, a2);
  *(a1 + 16) = v6;
  return result;
}

uint64_t cced25519_add_precomputed_point_ws(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, char a7)
{
  result = cczp_n(a2);
  if (a4 >= 0)
  {
    LOBYTE(v15) = a4;
  }

  else
  {
    v15 = -a4;
  }

  if (v15 >= 1)
  {

    return cced25519_add_points_unified_cached_ws(a1, a2, a3, a3, a6 + 8 * (v15 >> 1) * a5 * result, a7 | ((a4 & 0x80) >> 7));
  }

  return result;
}

unint64_t ccdh_ramp_gp_exponent(unint64_t result, void *a2)
{
  if (!result || (v3 = result, (result = ccdh_gp_l(a2)) == 0))
  {
    v6 = 0;
    goto LABEL_9;
  }

  v4 = ccdh_gp_l(a2);
  if (v4 <= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  a2[*a2 + 4 + *a2 + *a2 + *a2] = v5;
  result = ccdh_gp_l(a2);
  if (result <= 0x9F)
  {
    v6 = 160;
LABEL_9:
    a2[*a2 + 4 + *a2 + *a2 + *a2] = v6;
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

uint64_t ccmode_siv_hmac_encrypt(rsize_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *(*a1 + 64);
  if (*(v4 + 16) != 16)
  {
    return 4294967226;
  }

  v9 = a1[2];
  v10 = ccmode_siv_hmac_auth_finalize(a1, a2, a3, __src);
  if (!v10)
  {
    v14 = __src[0];
    v11 = ccmode_siv_hmac_temp_key_gen(a1, v13, &v14);
    if (v11)
    {
      v10 = v11;
    }

    else
    {
      BYTE8(v14) &= ~0x80u;
      BYTE12(v14) &= ~0x80u;
      v10 = ccctr_one_shot_internal(v4, a1[1] >> 1, v13, &v14, a2, a3, a4 + v9);
      if (!v10)
      {
        memcpy(a4, __src, v9);
        goto LABEL_8;
      }
    }

    cc_clear(v9 + a2, a4);
    cc_clear(v9, __src);
    ccmode_siv_hmac_reset(a1);
LABEL_8:
    cc_clear(a1[1] >> 1, v13);
  }

  return v10;
}

unsigned int *AccelerateCrypto_SHA256_compress_arm64neon(unsigned int *result, uint64_t a2, int8x16_t *a3)
{
  if (a2)
  {
    v3 = *a3;
    v4 = a3[1];
    v5 = a3[2];
    v6 = a3[3];
    v7 = a3 + 4;
    v8 = vrev32q_s8(v3);
    v9 = vrev32q_s8(v4);
    v10 = vrev32q_s8(v5);
    v11 = vrev32q_s8(v6);
    i8 = &xmmword_1DF09C550;
    v13 = vaddq_s32(K256_0, v8);
    v14 = *result;
    v15 = result[1];
    v16 = vaddq_s32(xmmword_1DF09C520, v9);
    v17 = result[2];
    v18 = result[3];
    v19 = vaddq_s32(xmmword_1DF09C530, v10);
    v20 = result[4];
    v21 = result[5];
    v22 = vaddq_s32(xmmword_1DF09C540, v11);
    v23 = result[6];
    for (i = result[7]; ; result[7] = i)
    {
      v25 = 3;
      do
      {
        v27 = *i8;
        v26 = (i8 + 1);
        v28 = vextq_s8(v8, v9, 4uLL);
        LODWORD(v29) = v20 ^ __ROR4__(v20, 5) ^ __ROR4__(v20, 19);
        HIDWORD(v29) = v29;
        v30 = vshrq_n_u32(v28, 7uLL);
        v31 = vshlq_n_s32(v28, 0xEuLL);
        v32 = i + (v29 >> 6) + (v23 & ~v20 ^ v20 & v21) + v13.i32[0];
        v33 = v18 + v32;
        LODWORD(v29) = v14 ^ __ROR4__(v14, 11) ^ __ROR4__(v14, 20);
        HIDWORD(v29) = v29;
        v34 = v32 + (v29 >> 2) + (v15 & v17 ^ (v15 ^ v17) & v14);
        LODWORD(v29) = v33 ^ __ROR4__(v33, 5) ^ __ROR4__(v33, 19);
        HIDWORD(v29) = v29;
        v35 = vaddq_s32(v8, veorq_s8(veorq_s8(veorq_s8(veorq_s8(vshrq_n_u32(v28, 3uLL), v30), v31), vshrq_n_u32(v30, 0xBuLL)), vshlq_n_s32(v31, 0xBuLL)));
        v36 = v23 + (v29 >> 6) + (v21 & ~v33 ^ v33 & v20) + v13.i32[1];
        v37 = vextq_s8(v11, 0, 8uLL);
        LODWORD(v29) = v34 ^ __ROR4__(v34, 11) ^ __ROR4__(v34, 20);
        HIDWORD(v29) = v29;
        v38 = v17 + v36;
        v39 = vshrq_n_u32(v37, 0x11uLL);
        v40 = vshlq_n_s32(v37, 0xDuLL);
        v41 = v36 + (v29 >> 2) + (v14 & v15 ^ (v14 ^ v15) & v34);
        LODWORD(v29) = v38 ^ __ROR4__(v38, 5) ^ __ROR4__(v38, 19);
        HIDWORD(v29) = v29;
        v42 = vaddq_s32(vaddq_s32(v35, vextq_s8(v10, v11, 4uLL)), veorq_s8(veorq_s8(veorq_s8(veorq_s8(vshrq_n_u32(v37, 0xAuLL), v39), v40), vshrq_n_u32(v39, 2uLL)), vshlq_n_s32(v40, 2uLL)));
        v43 = vextq_s8(0, v42, 8uLL);
        v44 = v21 + (v29 >> 6) + (v20 & ~v38 ^ v38 & v33) + v13.i32[2];
        v45 = vshrq_n_u32(v43, 0x11uLL);
        v46 = v15 + v44;
        v47 = vshlq_n_s32(v43, 0xDuLL);
        LODWORD(v29) = v41 ^ __ROR4__(v41, 11) ^ __ROR4__(v41, 20);
        HIDWORD(v29) = v29;
        v48 = v44 + (v29 >> 2) + (v34 & v14 ^ (v34 ^ v14) & v41);
        LODWORD(v29) = v46 ^ __ROR4__(v46, 5) ^ __ROR4__(v46, 19);
        HIDWORD(v29) = v29;
        v49 = v20 + (v29 >> 6) + (v33 & ~v46 ^ v46 & v38) + v13.i32[3];
        v50 = v14 + v49;
        LODWORD(v29) = v48 ^ __ROR4__(v48, 11) ^ __ROR4__(v48, 20);
        HIDWORD(v29) = v29;
        v8 = vaddq_s32(v42, veorq_s8(veorq_s8(veorq_s8(veorq_s8(vshrq_n_u32(v43, 0xAuLL), v45), v47), vshrq_n_u32(v45, 2uLL)), vshlq_n_s32(v47, 2uLL)));
        v13 = vaddq_s32(v27, v8);
        v51 = v49 + (v29 >> 2) + (v41 & v34 ^ (v41 ^ v34) & v48);
        v52 = *v26++;
        v53 = vextq_s8(v9, v10, 4uLL);
        LODWORD(v29) = v50 ^ __ROR4__(v50, 5) ^ __ROR4__(v50, 19);
        HIDWORD(v29) = v29;
        v54 = vshrq_n_u32(v53, 7uLL);
        v55 = vshlq_n_s32(v53, 0xEuLL);
        v56 = v33 + (v29 >> 6) + (v38 & ~v50 ^ v50 & v46) + v16.i32[0];
        v57 = v34 + v56;
        LODWORD(v29) = v51 ^ __ROR4__(v51, 11) ^ __ROR4__(v51, 20);
        HIDWORD(v29) = v29;
        v58 = v56 + (v29 >> 2) + (v48 & v41 ^ (v48 ^ v41) & v51);
        LODWORD(v29) = v57 ^ __ROR4__(v57, 5) ^ __ROR4__(v57, 19);
        HIDWORD(v29) = v29;
        v59 = vaddq_s32(v9, veorq_s8(veorq_s8(veorq_s8(veorq_s8(vshrq_n_u32(v53, 3uLL), v54), v55), vshrq_n_u32(v54, 0xBuLL)), vshlq_n_s32(v55, 0xBuLL)));
        v60 = v38 + (v29 >> 6) + (v46 & ~v57 ^ v57 & v50) + v16.i32[1];
        v61 = vextq_s8(v8, 0, 8uLL);
        LODWORD(v29) = v58 ^ __ROR4__(v58, 11) ^ __ROR4__(v58, 20);
        HIDWORD(v29) = v29;
        v62 = v41 + v60;
        v63 = vshrq_n_u32(v61, 0x11uLL);
        v64 = vshlq_n_s32(v61, 0xDuLL);
        v65 = v60 + (v29 >> 2) + (v51 & v48 ^ (v51 ^ v48) & v58);
        LODWORD(v29) = v62 ^ __ROR4__(v62, 5) ^ __ROR4__(v62, 19);
        HIDWORD(v29) = v29;
        v66 = vaddq_s32(vaddq_s32(v59, vextq_s8(v11, v8, 4uLL)), veorq_s8(veorq_s8(veorq_s8(veorq_s8(vshrq_n_u32(v61, 0xAuLL), v63), v64), vshrq_n_u32(v63, 2uLL)), vshlq_n_s32(v64, 2uLL)));
        v67 = vextq_s8(0, v66, 8uLL);
        v68 = v46 + (v29 >> 6) + (v50 & ~v62 ^ v62 & v57) + v16.i32[2];
        v69 = vshrq_n_u32(v67, 0x11uLL);
        v70 = v48 + v68;
        v71 = vshlq_n_s32(v67, 0xDuLL);
        LODWORD(v29) = v65 ^ __ROR4__(v65, 11) ^ __ROR4__(v65, 20);
        HIDWORD(v29) = v29;
        v72 = v68 + (v29 >> 2) + (v58 & v51 ^ (v58 ^ v51) & v65);
        LODWORD(v29) = v70 ^ __ROR4__(v70, 5) ^ __ROR4__(v70, 19);
        HIDWORD(v29) = v29;
        v73 = v50 + (v29 >> 6) + (v57 & ~v70 ^ v70 & v62) + v16.i32[3];
        LODWORD(v29) = v72 ^ __ROR4__(v72, 11) ^ __ROR4__(v72, 20);
        HIDWORD(v29) = v29;
        v9 = vaddq_s32(v66, veorq_s8(veorq_s8(veorq_s8(veorq_s8(vshrq_n_u32(v67, 0xAuLL), v69), v71), vshrq_n_u32(v69, 2uLL)), vshlq_n_s32(v71, 2uLL)));
        v74 = v51 + v73;
        v16 = vaddq_s32(v52, v9);
        v75 = v73 + (v29 >> 2) + (v65 & v58 ^ (v65 ^ v58) & v72);
        v76 = *v26++;
        v77 = vextq_s8(v10, v11, 4uLL);
        LODWORD(v29) = v74 ^ __ROR4__(v74, 5) ^ __ROR4__(v74, 19);
        HIDWORD(v29) = v29;
        v78 = vshrq_n_u32(v77, 7uLL);
        v79 = vshlq_n_s32(v77, 0xEuLL);
        v80 = v57 + (v29 >> 6) + (v62 & ~v74 ^ v74 & v70) + v19.i32[0];
        v81 = v58 + v80;
        LODWORD(v29) = v75 ^ __ROR4__(v75, 11) ^ __ROR4__(v75, 20);
        HIDWORD(v29) = v29;
        v82 = v80 + (v29 >> 2) + (v72 & v65 ^ (v72 ^ v65) & v75);
        LODWORD(v29) = v81 ^ __ROR4__(v81, 5) ^ __ROR4__(v81, 19);
        HIDWORD(v29) = v29;
        v83 = vaddq_s32(v10, veorq_s8(veorq_s8(veorq_s8(veorq_s8(vshrq_n_u32(v77, 3uLL), v78), v79), vshrq_n_u32(v78, 0xBuLL)), vshlq_n_s32(v79, 0xBuLL)));
        v84 = v62 + (v29 >> 6) + (v70 & ~v81 ^ v81 & v74) + v19.i32[1];
        v85 = vextq_s8(v9, 0, 8uLL);
        LODWORD(v29) = v82 ^ __ROR4__(v82, 11) ^ __ROR4__(v82, 20);
        HIDWORD(v29) = v29;
        v86 = v65 + v84;
        v87 = vshrq_n_u32(v85, 0x11uLL);
        v88 = vshlq_n_s32(v85, 0xDuLL);
        v89 = v84 + (v29 >> 2) + (v75 & v72 ^ (v75 ^ v72) & v82);
        LODWORD(v29) = v86 ^ __ROR4__(v86, 5) ^ __ROR4__(v86, 19);
        HIDWORD(v29) = v29;
        v90 = vaddq_s32(vaddq_s32(v83, vextq_s8(v8, v9, 4uLL)), veorq_s8(veorq_s8(veorq_s8(veorq_s8(vshrq_n_u32(v85, 0xAuLL), v87), v88), vshrq_n_u32(v87, 2uLL)), vshlq_n_s32(v88, 2uLL)));
        v91 = vextq_s8(0, v90, 8uLL);
        v92 = v70 + (v29 >> 6) + (v74 & ~v86 ^ v86 & v81) + v19.i32[2];
        v93 = vshrq_n_u32(v91, 0x11uLL);
        v94 = v72 + v92;
        v95 = vshlq_n_s32(v91, 0xDuLL);
        LODWORD(v29) = v89 ^ __ROR4__(v89, 11) ^ __ROR4__(v89, 20);
        HIDWORD(v29) = v29;
        v96 = v92 + (v29 >> 2) + (v82 & v75 ^ (v82 ^ v75) & v89);
        LODWORD(v29) = v94 ^ __ROR4__(v94, 5) ^ __ROR4__(v94, 19);
        HIDWORD(v29) = v29;
        v97 = v74 + (v29 >> 6) + (v81 & ~v94 ^ v94 & v86) + v19.i32[3];
        v98 = v75 + v97;
        LODWORD(v29) = v96 ^ __ROR4__(v96, 11) ^ __ROR4__(v96, 20);
        HIDWORD(v29) = v29;
        v10 = vaddq_s32(v90, veorq_s8(veorq_s8(veorq_s8(veorq_s8(vshrq_n_u32(v91, 0xAuLL), v93), v95), vshrq_n_u32(v93, 2uLL)), vshlq_n_s32(v95, 2uLL)));
        v19 = vaddq_s32(v76, v10);
        v99 = v97 + (v29 >> 2) + (v89 & v82 ^ (v89 ^ v82) & v96);
        v100 = *v26;
        i8 = v26[1].i8;
        v101 = vextq_s8(v11, v8, 4uLL);
        LODWORD(v29) = v98 ^ __ROR4__(v98, 5) ^ __ROR4__(v98, 19);
        HIDWORD(v29) = v29;
        v102 = vshrq_n_u32(v101, 7uLL);
        v103 = vshlq_n_s32(v101, 0xEuLL);
        v104 = v81 + (v29 >> 6) + (v86 & ~v98 ^ v98 & v94) + v22.i32[0];
        i = v82 + v104;
        LODWORD(v29) = v99 ^ __ROR4__(v99, 11) ^ __ROR4__(v99, 20);
        HIDWORD(v29) = v29;
        v18 = v104 + (v29 >> 2) + (v96 & v89 ^ (v96 ^ v89) & v99);
        LODWORD(v29) = i ^ __ROR4__(i, 5) ^ __ROR4__(i, 19);
        HIDWORD(v29) = v29;
        v105 = vaddq_s32(v11, veorq_s8(veorq_s8(veorq_s8(veorq_s8(vshrq_n_u32(v101, 3uLL), v102), v103), vshrq_n_u32(v102, 0xBuLL)), vshlq_n_s32(v103, 0xBuLL)));
        v106 = v86 + (v29 >> 6) + (v94 & ~i ^ i & v98) + v22.i32[1];
        v107 = vextq_s8(v10, 0, 8uLL);
        LODWORD(v29) = v18 ^ __ROR4__(v18, 11) ^ __ROR4__(v18, 20);
        HIDWORD(v29) = v29;
        v23 = v89 + v106;
        v108 = vshrq_n_u32(v107, 0x11uLL);
        v109 = vshlq_n_s32(v107, 0xDuLL);
        v17 = v106 + (v29 >> 2) + (v99 & v96 ^ (v99 ^ v96) & v18);
        LODWORD(v29) = v23 ^ __ROR4__(v23, 5) ^ __ROR4__(v23, 19);
        HIDWORD(v29) = v29;
        v110 = vaddq_s32(vaddq_s32(v105, vextq_s8(v9, v10, 4uLL)), veorq_s8(veorq_s8(veorq_s8(veorq_s8(vshrq_n_u32(v107, 0xAuLL), v108), v109), vshrq_n_u32(v108, 2uLL)), vshlq_n_s32(v109, 2uLL)));
        v111 = vextq_s8(0, v110, 8uLL);
        v112 = v94 + (v29 >> 6) + (v98 & ~v23 ^ v23 & i) + v22.i32[2];
        v113 = vshrq_n_u32(v111, 0x11uLL);
        v21 = v96 + v112;
        v114 = vshlq_n_s32(v111, 0xDuLL);
        LODWORD(v29) = v17 ^ __ROR4__(v17, 11) ^ __ROR4__(v17, 20);
        HIDWORD(v29) = v29;
        v15 = v112 + (v29 >> 2) + (v18 & v99 ^ (v18 ^ v99) & v17);
        LODWORD(v29) = v21 ^ __ROR4__(v21, 5) ^ __ROR4__(v21, 19);
        HIDWORD(v29) = v29;
        v115 = v98 + (v29 >> 6) + (i & ~v21 ^ v21 & v23) + v22.i32[3];
        LODWORD(v29) = v15 ^ __ROR4__(v15, 11) ^ __ROR4__(v15, 20);
        HIDWORD(v29) = v29;
        v11 = vaddq_s32(v110, veorq_s8(veorq_s8(veorq_s8(veorq_s8(vshrq_n_u32(v111, 0xAuLL), v113), v114), vshrq_n_u32(v113, 2uLL)), vshlq_n_s32(v114, 2uLL)));
        v20 = v99 + v115;
        v22 = vaddq_s32(v100, v11);
        v14 = v115 + (v29 >> 2) + (v17 & v18 ^ (v17 ^ v18) & v15);
      }

      while (v25-- > 1);
      --a2;
      v117 = i8 - 16;
      if (!a2)
      {
        break;
      }

      HIDWORD(v118) = v20;
      LODWORD(v118) = v20;
      v120 = *v7;
      v119 = v7 + 1;
      v121 = (v118 >> 6) ^ __ROR4__(v20, 11);
      v122 = __PAIR64__(v14, __ROR4__(v20, 25));
      v123 = i + (v121 ^ v122) + (v23 & ~v20 ^ v20 & v21);
      LODWORD(v122) = v14;
      v124 = v123 + v13.i32[0];
      v125 = (v122 >> 2) ^ __ROR4__(v14, 13);
      v126 = v18 + v124;
      v127 = __PAIR64__(v126, __ROR4__(v14, 22));
      v128 = v124 + (v125 ^ v127);
      LODWORD(v127) = v126;
      v8 = vrev32q_s8(v120);
      v129 = v128 + (v15 & v17 ^ (v15 ^ v17) & v14);
      v130 = (v127 >> 6) ^ __ROR4__(v126, 11);
      v131 = __PAIR64__(v129, __ROR4__(v126, 25));
      v132 = v23 + (v130 ^ v131) + (v21 & ~v126 ^ v126 & v20);
      LODWORD(v131) = v129;
      v133 = v132 + v13.i32[1];
      v134 = (v131 >> 2) ^ __ROR4__(v129, 13);
      v135 = v17 + v133;
      v136 = __PAIR64__(v135, __ROR4__(v129, 22));
      v137 = v133 + (v134 ^ v136);
      LODWORD(v136) = v135;
      v138 = v137 + (v14 & v15 ^ (v14 ^ v15) & v129);
      v140 = *v117;
      v139 = (v117 + 1);
      v141 = (v136 >> 6) ^ __ROR4__(v135, 11);
      v142 = __PAIR64__(v138, __ROR4__(v135, 25));
      v143 = v21 + (v141 ^ v142) + (v20 & ~v135 ^ v135 & v126);
      LODWORD(v142) = v138;
      v144 = v143 + v13.i32[2];
      v145 = (v142 >> 2) ^ __ROR4__(v138, 13);
      v146 = v15 + v144;
      v147 = __PAIR64__(v146, __ROR4__(v138, 22));
      v148 = v144 + (v145 ^ v147);
      LODWORD(v147) = v146;
      v149 = v148 + (v129 & v14 ^ (v129 ^ v14) & v138);
      v150 = (v147 >> 6) ^ __ROR4__(v146, 11);
      v151 = __PAIR64__(v149, __ROR4__(v146, 25));
      v152 = v20 + (v150 ^ v151) + (v126 & ~v146 ^ v146 & v135);
      LODWORD(v151) = v149;
      v153 = v152 + v13.i32[3];
      v154 = (v151 >> 2) ^ __ROR4__(v149, 13);
      v155 = v14 + v153;
      v156 = __PAIR64__(v155, __ROR4__(v149, 22));
      v157 = v153 + (v154 ^ v156) + (v138 & v129 ^ (v138 ^ v129) & v149);
      v13 = vaddq_s32(v140, v8);
      LODWORD(v156) = v155;
      v158 = *v119++;
      v159 = (v156 >> 6) ^ __ROR4__(v155, 11);
      v160 = __PAIR64__(v157, __ROR4__(v155, 25));
      v161 = v126 + (v159 ^ v160) + (v135 & ~v155 ^ v155 & v146);
      LODWORD(v160) = v157;
      v162 = v161 + v16.i32[0];
      v163 = (v160 >> 2) ^ __ROR4__(v157, 13);
      v164 = v129 + v162;
      v165 = __PAIR64__(v164, __ROR4__(v157, 22));
      v166 = v162 + (v163 ^ v165);
      LODWORD(v165) = v164;
      v9 = vrev32q_s8(v158);
      v167 = v166 + (v149 & v138 ^ (v149 ^ v138) & v157);
      v168 = (v165 >> 6) ^ __ROR4__(v164, 11);
      v169 = __PAIR64__(v167, __ROR4__(v164, 25));
      v170 = v135 + (v168 ^ v169) + (v146 & ~v164 ^ v164 & v155);
      LODWORD(v169) = v167;
      v171 = v170 + v16.i32[1];
      v172 = (v169 >> 2) ^ __ROR4__(v167, 13);
      v173 = v138 + v171;
      v174 = __PAIR64__(v173, __ROR4__(v167, 22));
      v175 = v171 + (v172 ^ v174);
      LODWORD(v174) = v173;
      v176 = v175 + (v157 & v149 ^ (v157 ^ v149) & v167);
      v177 = *v139++;
      v178 = (v174 >> 6) ^ __ROR4__(v173, 11);
      v179 = __PAIR64__(v176, __ROR4__(v173, 25));
      v180 = v146 + (v178 ^ v179) + (v155 & ~v173 ^ v173 & v164);
      LODWORD(v179) = v176;
      v181 = v180 + v16.i32[2];
      v182 = (v179 >> 2) ^ __ROR4__(v176, 13);
      v183 = v149 + v181;
      v184 = __PAIR64__(v183, __ROR4__(v176, 22));
      v185 = v181 + (v182 ^ v184);
      LODWORD(v184) = v183;
      v186 = v185 + (v167 & v157 ^ (v167 ^ v157) & v176);
      v187 = (v184 >> 6) ^ __ROR4__(v183, 11);
      v188 = __PAIR64__(v186, __ROR4__(v183, 25));
      v189 = v155 + (v187 ^ v188) + (v164 & ~v183 ^ v183 & v173);
      LODWORD(v188) = v186;
      v190 = v189 + v16.i32[3];
      v191 = (v188 >> 2) ^ __ROR4__(v186, 13);
      v192 = v157 + v190;
      v193 = __PAIR64__(v192, __ROR4__(v186, 22));
      v194 = v190 + (v191 ^ v193) + (v176 & v167 ^ (v176 ^ v167) & v186);
      v16 = vaddq_s32(v177, v9);
      LODWORD(v193) = v192;
      v195 = *v119++;
      v196 = (v193 >> 6) ^ __ROR4__(v192, 11);
      v197 = __PAIR64__(v194, __ROR4__(v192, 25));
      v198 = v164 + (v196 ^ v197) + (v173 & ~v192 ^ v192 & v183);
      LODWORD(v197) = v194;
      v199 = v198 + v19.i32[0];
      v200 = (v197 >> 2) ^ __ROR4__(v194, 13);
      v201 = v167 + v199;
      v202 = __PAIR64__(v201, __ROR4__(v194, 22));
      v203 = v199 + (v200 ^ v202);
      LODWORD(v202) = v201;
      v10 = vrev32q_s8(v195);
      v204 = v203 + (v186 & v176 ^ (v186 ^ v176) & v194);
      v205 = (v202 >> 6) ^ __ROR4__(v201, 11);
      v206 = __PAIR64__(v204, __ROR4__(v201, 25));
      v207 = v173 + (v205 ^ v206) + (v183 & ~v201 ^ v201 & v192);
      LODWORD(v206) = v204;
      v208 = v207 + v19.i32[1];
      v209 = (v206 >> 2) ^ __ROR4__(v204, 13);
      v210 = v176 + v208;
      v211 = __PAIR64__(v210, __ROR4__(v204, 22));
      v212 = v208 + (v209 ^ v211);
      LODWORD(v211) = v210;
      v213 = v212 + (v194 & v186 ^ (v194 ^ v186) & v204);
      v214 = *v139++;
      v215 = (v211 >> 6) ^ __ROR4__(v210, 11);
      v216 = __PAIR64__(v213, __ROR4__(v210, 25));
      v217 = v183 + (v215 ^ v216) + (v192 & ~v210 ^ v210 & v201);
      LODWORD(v216) = v213;
      v218 = v217 + v19.i32[2];
      v219 = (v216 >> 2) ^ __ROR4__(v213, 13);
      v220 = v186 + v218;
      v221 = __PAIR64__(v220, __ROR4__(v213, 22));
      v222 = v218 + (v219 ^ v221);
      LODWORD(v221) = v220;
      v223 = v222 + (v204 & v194 ^ (v204 ^ v194) & v213);
      v224 = (v221 >> 6) ^ __ROR4__(v220, 11);
      v225 = __PAIR64__(v223, __ROR4__(v220, 25));
      v226 = v192 + (v224 ^ v225) + (v201 & ~v220 ^ v220 & v210);
      LODWORD(v225) = v223;
      v227 = v226 + v19.i32[3];
      v228 = (v225 >> 2) ^ __ROR4__(v223, 13);
      v229 = v194 + v227;
      v230 = __PAIR64__(v229, __ROR4__(v223, 22));
      v231 = v227 + (v228 ^ v230) + (v213 & v204 ^ (v213 ^ v204) & v223);
      v19 = vaddq_s32(v214, v10);
      LODWORD(v230) = v229;
      v232 = *v119;
      v7 = v119 + 1;
      v233 = (v230 >> 6) ^ __ROR4__(v229, 11);
      v234 = __PAIR64__(v231, __ROR4__(v229, 25));
      v235 = v201 + (v233 ^ v234) + (v210 & ~v229 ^ v229 & v220);
      LODWORD(v234) = v231;
      v236 = v235 + v22.i32[0];
      v237 = (v234 >> 2) ^ __ROR4__(v231, 13);
      v238 = v204 + v236;
      v239 = __PAIR64__(v238, __ROR4__(v231, 22));
      v240 = v236 + (v237 ^ v239);
      LODWORD(v239) = v238;
      v11 = vrev32q_s8(v232);
      v241 = v240 + (v223 & v213 ^ (v223 ^ v213) & v231);
      v242 = (v239 >> 6) ^ __ROR4__(v238, 11);
      v243 = __PAIR64__(v241, __ROR4__(v238, 25));
      v244 = v210 + (v242 ^ v243) + (v220 & ~v238 ^ v238 & v229);
      LODWORD(v243) = v241;
      v245 = v244 + v22.i32[1];
      v246 = (v243 >> 2) ^ __ROR4__(v241, 13);
      v247 = v213 + v245;
      v248 = __PAIR64__(v247, __ROR4__(v241, 22));
      v249 = v245 + (v246 ^ v248);
      LODWORD(v248) = v247;
      v250 = v249 + (v231 & v223 ^ (v231 ^ v223) & v241);
      v251 = *v139;
      i8 = v139[1].i8;
      v252 = (v248 >> 6) ^ __ROR4__(v247, 11);
      v253 = __PAIR64__(v250, __ROR4__(v247, 25));
      v254 = v220 + (v252 ^ v253) + (v229 & ~v247 ^ v247 & v238);
      LODWORD(v253) = v250;
      v255 = v254 + v22.i32[2];
      v256 = (v253 >> 2) ^ __ROR4__(v250, 13);
      v257 = v223 + v255;
      v258 = __PAIR64__(v257, __ROR4__(v250, 22));
      v259 = v255 + (v256 ^ v258);
      LODWORD(v258) = v257;
      v260 = v259 + (v241 & v231 ^ (v241 ^ v231) & v250);
      v261 = (v258 >> 6) ^ __ROR4__(v257, 11);
      v262 = __PAIR64__(v260, __ROR4__(v257, 25));
      v263 = v229 + (v261 ^ v262) + (v238 & ~v257 ^ v257 & v247);
      LODWORD(v262) = v260;
      v264 = v263 + v22.i32[3];
      v265 = v231 + v264;
      v22 = vaddq_s32(v251, v11);
      v14 = v264 + ((v262 >> 2) ^ __ROR4__(v260, 13) ^ __ROR4__(v260, 22)) + (v250 & v241 ^ (v250 ^ v241) & v260) + *result;
      v15 = v260 + result[1];
      *result = v14;
      result[1] = v15;
      v17 = v250 + result[2];
      v18 = v241 + result[3];
      result[2] = v17;
      result[3] = v18;
      v20 = v265 + result[4];
      v21 = v257 + result[5];
      result[4] = v20;
      result[5] = v21;
      v23 = v247 + result[6];
      i = v238 + result[7];
      result[6] = v23;
    }

    HIDWORD(v266) = v20;
    LODWORD(v266) = v20;
    v267 = (v266 >> 6) ^ __ROR4__(v20, 11);
    v268 = __PAIR64__(v14, __ROR4__(v20, 25));
    v269 = i + (v267 ^ v268) + (v23 & ~v20 ^ v20 & v21);
    LODWORD(v268) = v14;
    v270 = v269 + v13.i32[0];
    v271 = (v268 >> 2) ^ __ROR4__(v14, 13);
    v272 = v18 + v270;
    v273 = __PAIR64__(v272, __ROR4__(v14, 22));
    v274 = v270 + (v271 ^ v273);
    LODWORD(v273) = v272;
    v275 = v274 + (v15 & v17 ^ (v15 ^ v17) & v14);
    v276 = (v273 >> 6) ^ __ROR4__(v272, 11);
    v277 = __PAIR64__(v275, __ROR4__(v272, 25));
    v278 = v23 + (v276 ^ v277) + (v21 & ~v272 ^ v272 & v20);
    LODWORD(v277) = v275;
    v279 = v278 + v13.i32[1];
    v280 = (v277 >> 2) ^ __ROR4__(v275, 13);
    v281 = v17 + v279;
    v282 = __PAIR64__(v281, __ROR4__(v275, 22));
    v283 = v279 + (v280 ^ v282);
    LODWORD(v282) = v281;
    v284 = v283 + (v14 & v15 ^ (v14 ^ v15) & v275);
    v285 = (v282 >> 6) ^ __ROR4__(v281, 11);
    v286 = __PAIR64__(v284, __ROR4__(v281, 25));
    v287 = v21 + (v285 ^ v286) + (v20 & ~v281 ^ v281 & v272);
    LODWORD(v286) = v284;
    v288 = v287 + v13.i32[2];
    v289 = (v286 >> 2) ^ __ROR4__(v284, 13);
    v290 = v15 + v288;
    v291 = __PAIR64__(v290, __ROR4__(v284, 22));
    v292 = v288 + (v289 ^ v291);
    LODWORD(v291) = v290;
    v293 = v292 + (v275 & v14 ^ (v275 ^ v14) & v284);
    v294 = (v291 >> 6) ^ __ROR4__(v290, 11);
    v295 = __PAIR64__(v293, __ROR4__(v290, 25));
    v296 = v20 + (v294 ^ v295) + (v272 & ~v290 ^ v290 & v281);
    LODWORD(v295) = v293;
    v297 = v296 + v13.i32[3];
    v298 = (v295 >> 2) ^ __ROR4__(v293, 13);
    v299 = v14 + v297;
    v300 = __PAIR64__(v299, __ROR4__(v293, 22));
    v301 = v297 + (v298 ^ v300) + (v284 & v275 ^ (v284 ^ v275) & v293);
    LODWORD(v300) = v299;
    v302 = (v300 >> 6) ^ __ROR4__(v299, 11);
    v303 = __PAIR64__(v301, __ROR4__(v299, 25));
    v304 = v272 + (v302 ^ v303) + (v281 & ~v299 ^ v299 & v290);
    LODWORD(v303) = v301;
    v305 = v304 + v16.i32[0];
    v306 = (v303 >> 2) ^ __ROR4__(v301, 13);
    v307 = v275 + v305;
    v308 = __PAIR64__(v307, __ROR4__(v301, 22));
    v309 = v305 + (v306 ^ v308);
    LODWORD(v308) = v307;
    v310 = v309 + (v293 & v284 ^ (v293 ^ v284) & v301);
    v311 = (v308 >> 6) ^ __ROR4__(v307, 11);
    v312 = __PAIR64__(v310, __ROR4__(v307, 25));
    v313 = v281 + (v311 ^ v312) + (v290 & ~v307 ^ v307 & v299);
    LODWORD(v312) = v310;
    v314 = v313 + v16.i32[1];
    v315 = (v312 >> 2) ^ __ROR4__(v310, 13);
    v316 = v284 + v314;
    v317 = __PAIR64__(v316, __ROR4__(v310, 22));
    v318 = v314 + (v315 ^ v317);
    LODWORD(v317) = v316;
    v319 = v318 + (v301 & v293 ^ (v301 ^ v293) & v310);
    v320 = (v317 >> 6) ^ __ROR4__(v316, 11);
    v321 = __PAIR64__(v319, __ROR4__(v316, 25));
    v322 = v290 + (v320 ^ v321) + (v299 & ~v316 ^ v316 & v307);
    LODWORD(v321) = v319;
    v323 = v322 + v16.i32[2];
    v324 = (v321 >> 2) ^ __ROR4__(v319, 13);
    v325 = v293 + v323;
    v326 = __PAIR64__(v325, __ROR4__(v319, 22));
    v327 = v323 + (v324 ^ v326);
    LODWORD(v326) = v325;
    v328 = v327 + (v310 & v301 ^ (v310 ^ v301) & v319);
    v329 = (v326 >> 6) ^ __ROR4__(v325, 11);
    v330 = __PAIR64__(v328, __ROR4__(v325, 25));
    v331 = v299 + (v329 ^ v330) + (v307 & ~v325 ^ v325 & v316);
    LODWORD(v330) = v328;
    v332 = v331 + v16.i32[3];
    v333 = (v330 >> 2) ^ __ROR4__(v328, 13);
    v334 = v301 + v332;
    v335 = __PAIR64__(v334, __ROR4__(v328, 22));
    v336 = v332 + (v333 ^ v335) + (v319 & v310 ^ (v319 ^ v310) & v328);
    LODWORD(v335) = v334;
    v337 = (v335 >> 6) ^ __ROR4__(v334, 11);
    v338 = __PAIR64__(v336, __ROR4__(v334, 25));
    v339 = v307 + (v337 ^ v338) + (v316 & ~v334 ^ v334 & v325);
    LODWORD(v338) = v336;
    v340 = v339 + v19.i32[0];
    v341 = (v338 >> 2) ^ __ROR4__(v336, 13);
    v342 = v310 + v340;
    v343 = __PAIR64__(v342, __ROR4__(v336, 22));
    v344 = v340 + (v341 ^ v343);
    LODWORD(v343) = v342;
    v345 = v344 + (v328 & v319 ^ (v328 ^ v319) & v336);
    v346 = (v343 >> 6) ^ __ROR4__(v342, 11);
    v347 = __PAIR64__(v345, __ROR4__(v342, 25));
    v348 = v316 + (v346 ^ v347) + (v325 & ~v342 ^ v342 & v334);
    LODWORD(v347) = v345;
    v349 = v348 + v19.i32[1];
    v350 = (v347 >> 2) ^ __ROR4__(v345, 13);
    v351 = v319 + v349;
    v352 = __PAIR64__(v351, __ROR4__(v345, 22));
    v353 = v349 + (v350 ^ v352);
    LODWORD(v352) = v351;
    v354 = v353 + (v336 & v328 ^ (v336 ^ v328) & v345);
    v355 = (v352 >> 6) ^ __ROR4__(v351, 11);
    v356 = __PAIR64__(v354, __ROR4__(v351, 25));
    v357 = v325 + (v355 ^ v356) + (v334 & ~v351 ^ v351 & v342);
    LODWORD(v356) = v354;
    v358 = v357 + v19.i32[2];
    v359 = (v356 >> 2) ^ __ROR4__(v354, 13);
    v360 = v328 + v358;
    v361 = __PAIR64__(v360, __ROR4__(v354, 22));
    v362 = v358 + (v359 ^ v361);
    LODWORD(v361) = v360;
    v363 = v362 + (v345 & v336 ^ (v345 ^ v336) & v354);
    v364 = (v361 >> 6) ^ __ROR4__(v360, 11);
    v365 = __PAIR64__(v363, __ROR4__(v360, 25));
    v366 = v334 + (v364 ^ v365) + (v342 & ~v360 ^ v360 & v351);
    LODWORD(v365) = v363;
    v367 = v366 + v19.i32[3];
    v368 = (v365 >> 2) ^ __ROR4__(v363, 13);
    v369 = v336 + v367;
    v370 = __PAIR64__(v369, __ROR4__(v363, 22));
    v371 = v367 + (v368 ^ v370) + (v354 & v345 ^ (v354 ^ v345) & v363);
    LODWORD(v370) = v369;
    v372 = (v370 >> 6) ^ __ROR4__(v369, 11);
    v373 = __PAIR64__(v371, __ROR4__(v369, 25));
    v374 = v342 + (v372 ^ v373) + (v351 & ~v369 ^ v369 & v360);
    LODWORD(v373) = v371;
    v375 = v374 + v22.i32[0];
    v376 = (v373 >> 2) ^ __ROR4__(v371, 13);
    v377 = v345 + v375;
    v378 = __PAIR64__(v377, __ROR4__(v371, 22));
    v379 = v375 + (v376 ^ v378);
    LODWORD(v378) = v377;
    v380 = v379 + (v363 & v354 ^ (v363 ^ v354) & v371);
    v381 = (v378 >> 6) ^ __ROR4__(v377, 11);
    v382 = __PAIR64__(v380, __ROR4__(v377, 25));
    v383 = v351 + (v381 ^ v382) + (v360 & ~v377 ^ v377 & v369);
    LODWORD(v382) = v380;
    v384 = v383 + v22.i32[1];
    v385 = (v382 >> 2) ^ __ROR4__(v380, 13);
    v386 = v354 + v384;
    v387 = __PAIR64__(v386, __ROR4__(v380, 22));
    v388 = v384 + (v385 ^ v387);
    LODWORD(v387) = v386;
    v389 = v388 + (v371 & v363 ^ (v371 ^ v363) & v380);
    v390 = (v387 >> 6) ^ __ROR4__(v386, 11);
    v391 = __PAIR64__(v389, __ROR4__(v386, 25));
    v392 = v360 + (v390 ^ v391) + (v369 & ~v386 ^ v386 & v377);
    LODWORD(v391) = v389;
    v393 = v392 + v22.i32[2];
    v394 = (v391 >> 2) ^ __ROR4__(v389, 13);
    v395 = v363 + v393;
    v396 = __PAIR64__(v395, __ROR4__(v389, 22));
    v397 = v393 + (v394 ^ v396);
    LODWORD(v396) = v395;
    v398 = v397 + (v380 & v371 ^ (v380 ^ v371) & v389);
    v399 = (v396 >> 6) ^ __ROR4__(v395, 11);
    v400 = __PAIR64__(v398, __ROR4__(v395, 25));
    v401 = v369 + (v399 ^ v400) + (v377 & ~v395 ^ v395 & v386);
    LODWORD(v400) = v398;
    v402 = v401 + v22.i32[3];
    v403 = v371 + v402;
    v404 = v402 + ((v400 >> 2) ^ __ROR4__(v398, 13) ^ __ROR4__(v398, 22)) + (v389 & v380 ^ (v389 ^ v380) & v398) + *result;
    v405 = v398 + result[1];
    *result = v404;
    result[1] = v405;
    v406 = v380 + result[3];
    result[2] += v389;
    result[3] = v406;
    v407 = v395 + result[5];
    result[4] += v403;
    result[5] = v407;
    v408 = v377 + result[7];
    result[6] += v386;
    result[7] = v408;
  }

  return result;
}

unint64_t ccz_trailing_zeros(uint64_t a1)
{
  v5 = timingsafe_enable_if_supported();
  v2 = ccz_n(a1);
  v3 = ccn_trailing_zeros(v2, *(a1 + 24));
  cc_disable_dit_with_sb(&v5);
  return v3;
}

void *ccmode_factory_ctr_crypt(void *result, void *a2)
{
  v2 = a2[1];
  *result = ((2 * v2 + 14) & 0xFFFFFFFFFFFFFFF0) + ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  result[1] = 1;
  result[2] = v2;
  result[3] = ccmode_ctr_init;
  result[4] = ccmode_ctr_setctr;
  result[5] = ccmode_ctr_crypt;
  result[6] = a2;
  return result;
}

void *ccshake256_xi()
{
  if ((MEMORY[0xFFFFFC010] & 0x100000000) != 0)
  {
    return &ccxof_shake256_vng_hwassist_xi;
  }

  else
  {
    return &ccxof_shake256_vng_xi;
  }
}

unint64_t *ccdh_lookup_gp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[25] = *MEMORY[0x1E69E9840];
  v15[0] = ccdh_gp_apple768();
  v15[1] = ccdh_gp_rfc2409group02();
  v15[2] = ccdh_gp_rfc5114_MODP_1024_160();
  v15[3] = ccdh_gp_rfc5114_MODP_2048_224();
  v15[4] = ccdh_gp_rfc5114_MODP_2048_256();
  v15[5] = ccdh_gp_rfc3526group05();
  v15[6] = ccdh_gp_rfc3526group14();
  v15[7] = ccdh_gp_rfc3526group15();
  v15[8] = ccdh_gp_rfc3526group16();
  v15[9] = ccdh_gp_rfc3526group17();
  v15[10] = ccdh_gp_rfc3526group18();
  v15[11] = ccsrp_gp_rfc5054_1024();
  v15[12] = ccsrp_gp_rfc5054_2048();
  v15[13] = ccsrp_gp_rfc5054_3072();
  v15[14] = ccsrp_gp_rfc5054_4096();
  v15[15] = ccsrp_gp_rfc5054_8192();
  v15[16] = ccdh_gp_rfc5114_MODP_1024_160();
  v15[17] = ccdh_gp_rfc5114_MODP_2048_224();
  v15[18] = ccdh_gp_rfc5114_MODP_2048_256();
  v15[19] = ccdh_gp_rfc3526group05();
  v15[20] = ccdh_gp_rfc3526group14();
  v15[21] = ccdh_gp_rfc3526group15();
  v15[22] = ccdh_gp_rfc3526group16();
  v15[23] = ccdh_gp_rfc3526group17();
  v8 = 0;
  v15[24] = ccdh_gp_rfc3526group18();
  while (1)
  {
    v9 = v15[v8];
    v10 = ccn_n(a1, a2);
    v11 = v9 + 3;
    if (!ccn_cmpn_public_value(v10, a2, *v9, (v9 + 3)))
    {
      v12 = ccn_n(a3, a4);
      v13 = ccn_n(*v9, &v11[*v9 + 1 + *v9]);
      if (!ccn_cmpn_public_value(v12, a4, v13, &v11[*v9 + 1 + *v9]))
      {
        break;
      }
    }

    if (++v8 == 25)
    {
      return 0;
    }
  }

  return v9;
}

uint64_t ccder_blob_decode_seqii_strict(unsigned __int8 **a1, unint64_t a2, void *a3, void *a4)
{
  v8 = 0;
  v9 = 0;
  result = ccder_blob_decode_sequence_tl_strict(a1, &v8);
  if (result)
  {
    result = ccder_blob_decode_uint_strict(&v8, a2, a3);
    if (result)
    {
      result = ccder_blob_decode_uint_strict(&v8, a2, a4);
      if (result)
      {
        return v8 == v9;
      }
    }
  }

  return result;
}

void ccrsa_is_valid_prime_ws(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, unsigned int (**a7)(void, unint64_t, uint64_t))
{
  v14 = *(a1 + 16);
  v15 = (*(a1 + 24))();
  ccn_set(a2, v15, a3);
  *v15 &= ~1uLL;
  v16 = (*(a1 + 24))(a1, a2);
  if (!ccn_gcd_ws(a1, a2, v16, a2, v15, a4, a5) && ccn_n(a2, v16) == 1 && *v16 == 1)
  {
    ccprime_rabin_miller_ws(a1, a2, a3, a6, a7);
  }

  *(a1 + 16) = v14;
}

uint64_t ccmlkem_kem_encapsulate_msg(int8x16_t *a1, uint64_t a2, uint64_t a3, _OWORD *a4, const char *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = sizeof_struct_ccpolyzp_po2cyc();
  v11 = a1->i32[1];
  v19[0] = cc_malloc_clear(8 * (3 * ((v10 + 511) / v10) + 4 * ((v10 - 1 + 2 * (v11 << 8)) / v10) + (v10 - 1 + 2 * ((v11 << 8) * v11)) / v10 + (v10 - 1 + ((384 * v11) | 0x20u)) / v10));
  v12 = sizeof_struct_ccpolyzp_po2cyc();
  v13 = a1->i32[1];
  v14 = (384 * v13) | 0x20u;
  v19[1] = 3 * ((v12 + 511) / v12) + 4 * ((v12 - 1 + 2 * (v13 << 8)) / v12) + (v12 - 1 + 2 * ((v13 << 8) * v13)) / v12 + (v12 - 1 + v14) / v12;
  v20 = 0;
  v21 = cc_ws_alloc;
  v22 = cc_ws_free;
  if (!v19[0])
  {
    return 4294967283;
  }

  v15 = *(a5 + 1);
  __s = *a5;
  v24 = v15;
  ccmlkem_hash_h(v14, a2, v25);
  ccmlkem_hash_g(64, &__s, &__s);
  v16 = ccmlkem_indcpa_encrypt_ws(v19, a1, a2, a5, v25, a3);
  if (!v16)
  {
    v17 = v24;
    *a4 = __s;
    a4[1] = v17;
  }

  v20 = 0;
  cc_clear(0x40uLL, &__s);
  v22(v19);
  return v16;
}

uint64_t ccmlkem_kem_decapsulate(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = a1->i32[2];
  v8 = a1->i32[3];
  v10 = a1->i32[1];
  v11 = sizeof_struct_ccpolyzp_po2cyc();
  v12 = (v11 + 511) / v11;
  v13 = (v11 - 1 + 2 * (v10 << 8)) / v11;
  v14 = (v11 - 1 + 2 * ((v10 << 8) * v10)) / v11;
  v15 = (v11 - 1 + ((384 * v10) | 0x20u)) / v11;
  v16 = v14 + 4 * v13 + 3 * v12 + v15;
  v17 = 3 * v12 + 4 * v13 + v14 + v15;
  if (v16 <= 2 * (v13 + v12))
  {
    v18 = 2 * (v13 + v12);
  }

  else
  {
    v18 = v17;
  }

  v19 = cc_malloc_clear(8 * ((v11 - 1 + (32 * (v9 + v10 * v8))) / v11 + v18));
  v33[0] = v19;
  v21 = a1->i32[2];
  v20 = a1->i32[3];
  v22 = a1->i32[1];
  v23 = sizeof_struct_ccpolyzp_po2cyc();
  v24 = (v23 + 511) / v23;
  v25 = (v23 - 1 + 2 * (v22 << 8)) / v23;
  v26 = (v23 - 1 + 2 * ((v22 << 8) * v22)) / v23;
  v27 = (v23 - 1 + ((384 * v22) | 0x20u)) / v23;
  v28 = v26 + 4 * v25 + 3 * v24 + v27;
  v29 = 3 * v24 + 4 * v25 + v26 + v27;
  if (v28 <= 2 * (v25 + v24))
  {
    v30 = 2 * (v25 + v24);
  }

  else
  {
    v30 = v29;
  }

  v33[1] = (v23 - 1 + (32 * (v21 + v22 * v20))) / v23 + v30;
  v33[2] = 0;
  v33[3] = cc_ws_alloc;
  v34 = cc_ws_free;
  if (!v19)
  {
    return 4294967283;
  }

  v31 = ccmlkem_kem_decapsulate_ws(v33, a1, a2, a3, a4);
  v34(v33);
  return v31;
}

uint64_t ccder_encode_rsa_pub(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + 3);
  v6 = *a1;
  v7 = ccder_encode_integer(*a1, &a1[2 * *a1 + 4], a2, a3);
  v8 = ccder_encode_integer(v6, v5, a2, v7);

  return ccder_encode_constructed_tl(0x2000000000000010uLL, a3, a2, v8);
}

uint64_t ccrng_process_atfork_prepare(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 52);
  ccrng_schedule_atomic_flag_set(&a1[42]);
  return 0;
}

BOOL ccn_divides1(uint64_t a1, unint64_t *a2, unint64_t a3)
{
  v3 = 0;
  if (a1)
  {
    v4 = (2 - ((3 * a3) ^ 2) * a3) * ((3 * a3) ^ 2);
    v5 = (2 - (2 - v4 * a3) * v4 * a3) * (2 - v4 * a3) * v4;
    v6 = (2 - v5 * a3) * v5;
    do
    {
      v7 = *a2++;
      v3 = (((((v7 - __PAIR128__(v7, v3)) >> 64) >> 63) + v6 * (v7 - v3)) * a3) >> 64;
      --a1;
    }

    while (a1);
    v3 = v3 != 0;
  }

  return v3 != 1;
}

uint64_t ccpad_pkcs7_ecb_decrypt(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = timingsafe_enable_if_supported();
  v10 = *(a1 + 8);
  (*(a1 + 24))(a2, a3 / v10, a4, a5);
  v11 = a3 - ccpad_pkcs7_decode_internal(v10, a5 + (a3 / v10 - 1) * v10);
  cc_disable_dit_with_sb(&v13);
  return v11;
}

uint64_t ccrsa_decrypt_eme_pkcs1v15_blinded_ws(uint64_t a1, uint64_t (**a2)(void, uint64_t, uint64_t), uint64_t *a3, rsize_t *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v14 = ccrsa_ctx_public(a3);
  v15 = ccrsa_block_size(v14);
  if (*a4 < v15)
  {
    return 4294967273;
  }

  v17 = v15;
  v21 = a5;
  v18 = *a3;
  *a4 = v15;
  v19 = *(a1 + 16);
  v20 = (*(a1 + 24))(a1, v18);
  if (ccn_read_uint_internal(v18, v20, a6, a7))
  {
    result = 4294967273;
  }

  else
  {
    result = ccrsa_priv_crypt_blinded_ws(a1, a2, a3, v20, v20);
    if (!result)
    {
      result = ccrsa_eme_pkcs1v15_decode_safe_ws(a1, a3, a4, v21, v17, v20);
    }
  }

  *(a1 + 16) = v19;
  return result;
}

uint64_t ccsigma_init(uint64_t a1, uint64_t a2, int a3, uint64_t (**a4)(void, unint64_t, void *))
{
  v16 = timingsafe_enable_if_supported();
  *a2 = a1;
  *(a2 + 8) = a3;
  v8 = (*(a1 + 8))(a2);
  v9 = cc_malloc_clear(392 * **a1);
  v10 = *a1;
  v11 = 49 * **a1;
  v14[0] = v9;
  v14[1] = v11;
  v14[2] = 0;
  v14[3] = cc_ws_alloc;
  v15 = cc_ws_free;
  if (v9)
  {
    key_fips_ws = ccec_generate_key_fips_ws(v14, v10, a4, v8);
    v15(v14);
  }

  else
  {
    key_fips_ws = 4294967283;
  }

  cc_disable_dit_with_sb(&v16);
  return key_fips_ws;
}

uint64_t ccsigma_set_signing_function(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  return 0;
}

uint64_t ccsigma_sign_internal(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4, char *a5, uint64_t (**a6)(void, unint64_t, void *))
{
  v12 = (*(*a1 + 48))(a1);
  v13 = *v12;
  v14 = cc_malloc_clear(280 * **v12);
  v15 = 35 * *v13;
  v20[0] = v14;
  v20[1] = v15;
  v20[2] = 0;
  v20[3] = cc_ws_alloc;
  v21 = cc_ws_free;
  if (!v14)
  {
    return 4294967283;
  }

  v16 = *(*a1 + 40);
  if (*a4 < v16)
  {
    v18 = 4294967289;
    cc_ws_free(v20);
  }

  else
  {
    *a4 = v16;
    v17 = ccec_signature_r_s_size(v12);
    v18 = ccec_sign_composite_ws(v20, v12, a2, a3, a5, &a5[v17], a6);
    v21(v20);
  }

  return v18;
}

uint64_t ccsigma_import_peer_verification_key(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v9 = timingsafe_enable_if_supported();
  v6 = (*(*a1 + 56))(a1);
  v7 = ccec_x963_import_pub(*(*a1 + 24), a2, a3, v6);
  cc_disable_dit_with_sb(&v9);
  return v7;
}

uint64_t ccsigma_export_key_share(uint64_t **a1, rsize_t *a2, char *a3)
{
  v11 = timingsafe_enable_if_supported();
  v6 = ccec_compressed_x962_export_pub_size(**a1);
  v7 = *a2;
  if (*a2 < v6)
  {
    v9 = 4294967289;
    goto LABEL_4;
  }

  *a2 = v6;
  v8 = ((*a1)[1])(a1);
  v9 = ccec_compressed_x962_export_pub(v8, a3);
  if (v9)
  {
    v7 = *a2;
LABEL_4:
    cc_clear(v7, a3);
  }

  cc_disable_dit_with_sb(&v11);
  return v9;
}

uint64_t ccsigma_import_peer_key_share(unint64_t ***a1, uint64_t a2, unsigned __int8 *a3)
{
  v9 = timingsafe_enable_if_supported();
  v6 = ((*a1)[2])(a1);
  v7 = ccec_compressed_x962_import_pub(**a1, a2, a3, v6);
  cc_disable_dit_with_sb(&v9);
  return v7;
}

uint64_t ccsigma_kex_init_ctx(uint64_t a1)
{
  v1 = 16;
  if (!*(a1 + 8))
  {
    v1 = 8;
  }

  return (*(*a1 + v1))();
}

uint64_t ccsigma_kex_resp_ctx(uint64_t a1)
{
  v1 = 16;
  if (*(a1 + 8) == 1)
  {
    v1 = 8;
  }

  return (*(*a1 + v1))();
}

uint64_t ccsigma_derive_session_keys(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, uint64_t, uint64_t *))
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = timingsafe_enable_if_supported();
  v8 = *a1;
  v9 = cczp_bitlen(**a1);
  v19 = (v9 + 7) >> 3;
  if ((v9 + 7) <= 0x107)
  {
    v11 = (v8[1])(a1);
    v12 = ((*a1)[2])(a1);
    v13 = *v11;
    v14 = cc_malloc_clear(232 * **v11);
    v15 = 29 * *v13;
    v17[0] = v14;
    v17[1] = v15;
    v17[2] = 0;
    v17[3] = cc_ws_alloc;
    v18 = cc_ws_free;
    if (v14)
    {
      v10 = ccecdh_compute_shared_secret_ws(v17, v11, v12, &v19, v21, a4);
      v18(v17);
      if (!v10)
      {
        v10 = (v8[12])(a1, v19, v21, a2, a3);
      }
    }

    else
    {
      v10 = 4294967283;
    }
  }

  else
  {
    v10 = 4294967291;
  }

  cc_disable_dit_with_sb(&v20);
  return v10;
}

uint64_t ccsigma_verify(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = timingsafe_enable_if_supported();
  v8 = (*(*a1 + 56))(a1);
  v14[0] = cc_malloc_clear(376 * **v8);
  v14[1] = 47 * **v8;
  v14[2] = 0;
  v14[3] = cc_ws_alloc;
  v15 = cc_ws_free;
  if (v14[0])
  {
    v9 = **(*a1 + 32);
    if (v9 > 0x40)
    {
      v12 = 4294967291;
    }

    else
    {
      v10 = (*(*a1 + 136))(a1, a1[2] == 0, a3, a4, v17);
      if (!v10)
      {
        v11 = ccec_signature_r_s_size(v8);
        v10 = ccec_verify_composite_digest_ws(v14, v8, v9, v17, a2, a2 + v11, 0);
      }

      v12 = v10;
    }

    v15(v14);
  }

  else
  {
    v12 = 4294967283;
  }

  cc_disable_dit_with_sb(&v16);
  return v12;
}

uint64_t ccsigma_clear(uint64_t a1)
{
  v3 = timingsafe_enable_if_supported();
  (*(*a1 + 176))(a1);
  return cc_disable_dit_with_sb(&v3);
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
    i8 = &xmmword_1DF100BD0;
    v240 = vaddq_s64(sha512_K, v5);
    v241 = vaddq_s64(unk_1DF100B60, v6);
    v242 = vaddq_s64(unk_1DF100B70, v7);
    v243 = vaddq_s64(unk_1DF100B80, v8);
    v244 = vaddq_s64(xmmword_1DF100B90, v9);
    v245 = vaddq_s64(unk_1DF100BA0, v10);
    v246 = vaddq_s64(unk_1DF100BB0, v11);
    v247 = vaddq_s64(unk_1DF100BC0, v12);
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

uint64_t ccpad_cts2_decrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = *MEMORY[0x1E69E9840];
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
  v13[1] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 8);
  v9 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v11 = v13 - v10;
  cccbc_set_iv_internal(v9, v13 - v10, 0);
  ccdrbg_generate_internal(a1, a2, v11, 1, a3, a4);
  return cc_clear(v8, v11);
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
  v10 = *MEMORY[0x1E69E9840];
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
  v32 = a8;
  v36 = a4;
  v38 = *MEMORY[0x1E69E9840];
  v33 = *a2;
  v16 = cczp_n(a2);
  v17 = *(a1 + 24);
  v35 = *(a1 + 16);
  v18 = 2 * v16;
  v31 = v17(a1, 2 * v16);
  v34 = &v30;
  MEMORY[0x1EEE9AC00](v31, v19, v20, v21);
  v23 = (&v30 - v22);
  ccdigest_init_internal(a3, (&v30 - v22));
  ccdigest_update_internal(a3, v23, a5, a6);
  ccdigest_update_internal(a3, v23, a7, v32);
  ccdigest_update_internal(a3, v23, a9, a10);
  (*(a3 + 56))(a3, v23, __s);
  cc_clear(*(a3 + 8) + *(a3 + 16) + 12, v23);
  v24 = v31;
  if (v18)
  {
    v25 = __s;
    v26 = v31;
    v27 = v18;
    do
    {
      v28 = *v25++;
      *v26++ = v28;
      --v27;
    }

    while (v27);
  }

  cczp_modn_ws(a1, &a2[5 * v33 + 4], v36, v18, v24);
  result = cc_clear(0x40uLL, __s);
  *(a1 + 16) = v35;
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

double ccvrf_factory_irtfdraft03(uint64_t a1, void *a2)
{
  if (*a2 == *ccsha512_di())
  {
    v5 = unk_1F5A42238;
    *(a1 + 32) = xmmword_1F5A42228;
    *(a1 + 48) = v5;
    *(a1 + 64) = xmmword_1F5A42248;
    *(a1 + 80) = off_1F5A42258;
    result = *&_vrf_irtf_ed25519_draft03;
    v6 = unk_1F5A42218;
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
    v4 = unk_1F5A42238;
    *(a1 + 32) = xmmword_1F5A42228;
    *(a1 + 48) = v4;
    *(a1 + 64) = xmmword_1F5A42248;
    *(a1 + 80) = off_1F5A42258;
    result = *&_vrf_irtf_ed25519_draft03;
    v5 = unk_1F5A42218;
    *a1 = _vrf_irtf_ed25519_draft03;
    *(a1 + 16) = v5;
    *(a1 + 40) = v2;
  }

  return result;
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
  v16 = *MEMORY[0x1E69E9840];
  ccdigest_internal(a3, a4, a5, v15);
  return ccec_sign_ws(a1, a2, *a3, v15, a6, a7, a8);
}

uint64_t ccec_sign_msg(uint64_t **a1, unint64_t *a2, size_t a3, char *a4, unint64_t *a5, uint64_t a6, uint64_t (**a7)(void, unint64_t, void *))
{
  v23 = *MEMORY[0x1E69E9840];
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
  v25 = *MEMORY[0x1E69E9840];
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
  *(a1 + 8) = xmmword_1DF0F0870;
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
  v25 = *MEMORY[0x1E69E9840];
  v23 = timingsafe_enable_if_supported();
  v12 = ccckg_ctx_di(a1);
  v13 = ccckg_ctx_cp(a1);
  if (*(a1 + 32) == 2)
  {
    v14 = v13;
    if (*a4 == v13 && ccckg_sizeof_opening(v13, v12) == a2)
    {
      ccdigest_internal(v12, a2, a3, __s);
      v15 = *v12;
      v16 = ccckg_ctx_di(a1);
      v17 = ccckg_ctx_cp(a1);
      if (cc_cmp_safe_internal(v15, __s, a1 + 40 + 8 * *v17 + ((*v16 + 7) & 0xFFFFFFFFFFFFFFF8)))
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

      cc_clear(0x40uLL, __s);
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
  v28 = *MEMORY[0x1E69E9840];
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
  v13[1] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 8);
  v9 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
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
  v9 = t_im[((v7 ^ v2) >> 8) + 256] ^ t_im[(v7 ^ v2)] ^ dword_1DF0FD130[((v7 ^ v2) >> 16)] ^ dword_1DF0FD130[((v7 ^ v2) >> 24) + 256];
  a2[4] = v9;
  v10 = v7 ^ v2 ^ v3;
  v11 = v8 ^ v7;
  v12 = t_im[BYTE1(v10) + 256] ^ t_im[v10] ^ dword_1DF0FD130[BYTE2(v10)] ^ dword_1DF0FD130[HIBYTE(v10) + 256];
  a2[5] = v12;
  v13 = v10 ^ v4;
  v14 = t_im[BYTE1(v13) + 256] ^ t_im[v13] ^ dword_1DF0FD130[BYTE2(v13)] ^ dword_1DF0FD130[HIBYTE(v13) + 256];
  a2[6] = v14;
  v15 = t_im[((v13 ^ v5) >> 8) + 256] ^ t_im[(v13 ^ v5)] ^ dword_1DF0FD130[((v13 ^ v5) >> 16)] ^ dword_1DF0FD130[((v13 ^ v5) >> 24) + 256];
  a2[7] = v15;
  v16 = t_fl[BYTE2(v11) + 256] ^ t_fl[BYTE1(v11)] ^ t_fl[HIBYTE(v11) + 512] ^ t_fl[v11 + 768] ^ 2;
  v17 = v6 ^ v16;
  v18 = t_im[(LOBYTE(t_fl[BYTE2(v11) + 256]) ^ LOBYTE(t_fl[BYTE1(v11)]) ^ LOBYTE(t_fl[HIBYTE(v11) + 512]) ^ LOBYTE(t_fl[v11 + 768])) ^ 2] ^ t_im[BYTE1(v16) + 256] ^ dword_1DF0FD130[BYTE2(v16)] ^ dword_1DF0FD130[HIBYTE(v16) + 256] ^ v9;
  a2[8] = v18;
  a2[9] = v18 ^ v12;
  v19 = v18 ^ v12 ^ v14;
  a2[10] = v19;
  a2[11] = v19 ^ v15;
  v20 = t_fl[BYTE2(v17) + 256] ^ t_fl[BYTE1(v17)] ^ t_fl[HIBYTE(v17) + 512] ^ t_fl[v17 + 768] ^ 4;
  v21 = v5 ^ v4 ^ v20;
  v22 = t_im[BYTE1(v20) + 256] ^ t_im[(LOBYTE(t_fl[BYTE2(v17) + 256]) ^ LOBYTE(t_fl[BYTE1(v17)]) ^ LOBYTE(t_fl[HIBYTE(v17) + 512]) ^ LOBYTE(t_fl[v17 + 768])) ^ 4] ^ dword_1DF0FD130[BYTE2(v20)] ^ dword_1DF0FD130[HIBYTE(v20) + 256];
  v23 = v22 ^ v18;
  v24 = v22 ^ v12;
  a2[12] = v23;
  a2[13] = v22 ^ v12;
  a2[14] = v22 ^ v12 ^ v19;
  a2[15] = v22 ^ v12 ^ v15;
  v25 = t_fl[BYTE2(v21) + 256] ^ t_fl[BYTE1(v21)] ^ t_fl[HIBYTE(v21) + 512] ^ t_fl[v21 + 768] ^ 8;
  LODWORD(v5) = v25 ^ v5;
  v26 = t_im[(LOBYTE(t_fl[BYTE2(v21) + 256]) ^ LOBYTE(t_fl[BYTE1(v21)]) ^ LOBYTE(t_fl[HIBYTE(v21) + 512]) ^ LOBYTE(t_fl[v21 + 768])) ^ 8] ^ t_im[BYTE1(v25) + 256] ^ dword_1DF0FD130[BYTE2(v25)] ^ dword_1DF0FD130[HIBYTE(v25) + 256] ^ v23;
  a2[16] = v26;
  a2[17] = v26 ^ v24;
  v27 = v26 ^ v19;
  a2[18] = v27;
  a2[19] = v27 ^ v24 ^ v15;
  v28 = t_fl[BYTE2(v5) + 256] ^ t_fl[BYTE1(v5)] ^ t_fl[BYTE3(v5) + 512] ^ t_fl[v5 + 768] ^ 0x10;
  v29 = v28 ^ v11;
  v30 = t_im[BYTE1(v28) + 256] ^ t_im[(LOBYTE(t_fl[BYTE2(v5) + 256]) ^ LOBYTE(t_fl[BYTE1(v5)]) ^ LOBYTE(t_fl[BYTE3(v5) + 512]) ^ LOBYTE(t_fl[v5 + 768])) ^ 0x10] ^ dword_1DF0FD130[BYTE2(v28)] ^ dword_1DF0FD130[HIBYTE(v28) + 256];
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
  v37 = t_im[(LOBYTE(t_fl[BYTE2(v29) + 256]) ^ LOBYTE(t_fl[BYTE1(v29)]) ^ LOBYTE(t_fl[HIBYTE(v29) + 512]) ^ LOBYTE(t_fl[v29 + 768])) ^ 0x20] ^ t_im[BYTE1(v35) + 256] ^ dword_1DF0FD130[BYTE2(v35)] ^ dword_1DF0FD130[HIBYTE(v35) + 256] ^ v31;
  a2[24] = v37;
  a2[25] = v37 ^ v32;
  v38 = v37 ^ v27;
  a2[26] = v37 ^ v27;
  a2[27] = v37 ^ v27 ^ result;
  v39 = t_fl[BYTE2(v36) + 256] ^ t_fl[BYTE1(v36)] ^ t_fl[HIBYTE(v36) + 512] ^ t_fl[v36 + 768] ^ 0x40;
  v40 = v39 ^ v21;
  v41 = t_im[BYTE1(v39) + 256] ^ t_im[(LOBYTE(t_fl[BYTE2(v36) + 256]) ^ LOBYTE(t_fl[BYTE1(v36)]) ^ LOBYTE(t_fl[HIBYTE(v36) + 512]) ^ LOBYTE(t_fl[v36 + 768])) ^ 0x40] ^ dword_1DF0FD130[BYTE2(v39)] ^ dword_1DF0FD130[HIBYTE(v39) + 256];
  v42 = v41 ^ v37;
  v43 = v41 ^ v32;
  a2[28] = v42;
  a2[29] = v43;
  a2[30] = v43 ^ v38;
  a2[31] = v43 ^ result;
  v44 = t_fl[BYTE2(v40) + 256] ^ t_fl[BYTE1(v40)] ^ t_fl[HIBYTE(v40) + 512] ^ t_fl[v40 + 768] ^ 0x80;
  LODWORD(v5) = v44 ^ v5;
  v45 = t_im[(LOBYTE(t_fl[BYTE2(v40) + 256]) ^ LOBYTE(t_fl[BYTE1(v40)]) ^ LOBYTE(t_fl[HIBYTE(v40) + 512]) ^ LOBYTE(t_fl[v40 + 768])) ^ 0x80] ^ t_im[BYTE1(v44) + 256] ^ dword_1DF0FD130[BYTE2(v44)] ^ dword_1DF0FD130[HIBYTE(v44) + 256] ^ v42;
  a2[32] = v45;
  a2[33] = v45 ^ v43;
  v46 = v45 ^ v38;
  a2[34] = v46;
  a2[35] = v46 ^ v43 ^ result;
  v47 = t_fl[BYTE2(v5) + 256] ^ t_fl[BYTE1(v5)] ^ t_fl[BYTE3(v5) + 512] ^ t_fl[v5 + 768] ^ 0x1B;
  v48 = v47 ^ v29;
  v49 = t_im[BYTE1(v47) + 256] ^ t_im[(LOBYTE(t_fl[BYTE2(v5) + 256]) ^ LOBYTE(t_fl[BYTE1(v5)]) ^ LOBYTE(t_fl[BYTE3(v5) + 512]) ^ LOBYTE(t_fl[v5 + 768])) ^ 0x1B] ^ dword_1DF0FD130[BYTE2(v47)] ^ dword_1DF0FD130[HIBYTE(v47) + 256];
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
  a2[4] = t_im[BYTE1(v7) + 256] ^ t_im[a1[4]] ^ dword_1DF0FD130[BYTE2(v7)] ^ *(&dword_1DF0FD130[256] + ((v7 >> 22) & 0x3FC));
  v8 = (v6 >> 22) & 0x3FC;
  a2[5] = t_im[BYTE1(v6) + 256] ^ t_im[v6] ^ dword_1DF0FD130[BYTE2(v6)] ^ *(&dword_1DF0FD130[256] + v8);
  v9 = t_fl[BYTE1(v6)] ^ t_fl[BYTE2(v6) + 256] ^ *(&t_fl[512] + v8);
  v10 = v9 ^ t_fl[v6 + 768] ^ 1 ^ v2;
  v11 = t_im[BYTE1(v10) + 256] ^ t_im[(v9 ^ LOBYTE(t_fl[v6 + 768]) ^ 1 ^ v2)] ^ dword_1DF0FD130[BYTE2(v10)] ^ dword_1DF0FD130[HIBYTE(v10) + 256];
  a2[6] = v11;
  v12 = t_im[((v10 ^ v3) >> 8) + 256] ^ t_im[(v10 ^ v3)] ^ dword_1DF0FD130[((v10 ^ v3) >> 16)] ^ dword_1DF0FD130[((v10 ^ v3) >> 24) + 256];
  a2[7] = v12;
  v13 = v10 ^ v3 ^ v4;
  v14 = t_im[BYTE1(v13) + 256] ^ t_im[(v10 ^ v3 ^ v4)] ^ dword_1DF0FD130[BYTE2(v13)] ^ dword_1DF0FD130[HIBYTE(v13) + 256];
  a2[8] = v14;
  v15 = t_im[((v13 ^ v5) >> 8) + 256] ^ t_im[(v13 ^ v5)] ^ dword_1DF0FD130[((v13 ^ v5) >> 16)] ^ dword_1DF0FD130[((v13 ^ v5) >> 24) + 256];
  a2[9] = v15;
  LODWORD(v8) = v13 ^ v5 ^ v7;
  v16 = t_im[BYTE1(v8) + 256] ^ t_im[(v13 ^ v5 ^ v7)] ^ dword_1DF0FD130[BYTE2(v8)] ^ dword_1DF0FD130[BYTE3(v8) + 256];
  a2[10] = v16;
  v17 = (v8 ^ v6) >> 24;
  LODWORD(v7) = t_im[((v8 ^ v6) >> 8) + 256] ^ t_im[(v8 ^ v6)] ^ dword_1DF0FD130[((v8 ^ v6) >> 16)] ^ dword_1DF0FD130[v17 + 256];
  a2[11] = v7;
  v18 = t_fl[((v8 ^ v6) >> 16) + 256] ^ t_fl[((v8 ^ v6) >> 8)] ^ t_fl[v17 + 512] ^ t_fl[(v8 ^ v6) + 768] ^ 2;
  v19 = v18 ^ v10;
  v20 = t_im[(LOBYTE(t_fl[((v8 ^ v6) >> 16) + 256]) ^ LOBYTE(t_fl[((v8 ^ v6) >> 8)]) ^ LOBYTE(t_fl[v17 + 512]) ^ LOBYTE(t_fl[(v8 ^ v6) + 768])) ^ 2] ^ t_im[BYTE1(v18) + 256] ^ dword_1DF0FD130[BYTE2(v18)] ^ dword_1DF0FD130[HIBYTE(v18) + 256] ^ v11;
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
  v26 = t_im[BYTE1(v24) + 256] ^ t_im[(LOBYTE(t_fl[BYTE2(v6) + 256]) ^ LOBYTE(t_fl[BYTE1(v6)]) ^ LOBYTE(t_fl[BYTE3(v6) + 512]) ^ LOBYTE(t_fl[v6 + 768])) ^ 4] ^ dword_1DF0FD130[BYTE2(v24)] ^ dword_1DF0FD130[HIBYTE(v24) + 256];
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
  v31 = t_im[(LOBYTE(t_fl[((v6 ^ v8 ^ v29) >> 16) + 256]) ^ LOBYTE(t_fl[((v6 ^ v8 ^ v29) >> 8)]) ^ LOBYTE(t_fl[((v6 ^ v8 ^ v29) >> 24) + 512]) ^ LOBYTE(t_fl[(v6 ^ v8 ^ v29) + 768])) ^ 8] ^ t_im[BYTE1(v30) + 256] ^ dword_1DF0FD130[BYTE2(v30)] ^ dword_1DF0FD130[HIBYTE(v30) + 256] ^ v27;
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
  v37 = t_im[BYTE1(v35) + 256] ^ t_im[(LOBYTE(t_fl[((v34 ^ v6) >> 16) + 256]) ^ LOBYTE(t_fl[((v34 ^ v6) >> 8)]) ^ LOBYTE(t_fl[((v34 ^ v6) >> 24) + 512]) ^ LOBYTE(t_fl[(v34 ^ v6) + 768])) ^ 0x10] ^ dword_1DF0FD130[BYTE2(v35)] ^ dword_1DF0FD130[HIBYTE(v35) + 256];
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
  v45 = t_im[(LOBYTE(t_fl[((result ^ v34 ^ v6) >> 16) + 256]) ^ LOBYTE(t_fl[((result ^ v34 ^ v6) >> 8)]) ^ LOBYTE(t_fl[((result ^ v34 ^ v6) >> 24) + 512]) ^ LOBYTE(t_fl[(result ^ v34 ^ v6) + 768])) ^ 0x20] ^ t_im[BYTE1(v43) + 256] ^ dword_1DF0FD130[BYTE2(v43)] ^ dword_1DF0FD130[HIBYTE(v43) + 256] ^ v38;
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
  v51 = t_im[BYTE1(v49) + 256] ^ t_im[(LOBYTE(t_fl[BYTE2(v6) + 256]) ^ LOBYTE(t_fl[BYTE1(v6)]) ^ LOBYTE(t_fl[BYTE3(v6) + 512]) ^ LOBYTE(t_fl[v6 + 768])) ^ 0x40] ^ dword_1DF0FD130[BYTE2(v49)] ^ dword_1DF0FD130[HIBYTE(v49) + 256];
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
  a2[4] = t_im[BYTE1(v7) + 256] ^ t_im[a1[4]] ^ dword_1DF0FD130[BYTE2(v7)] ^ *(&dword_1DF0FD130[256] + ((v7 >> 22) & 0x3FC));
  v67 = v8;
  a2[5] = t_im[BYTE1(v8) + 256] ^ t_im[v8] ^ dword_1DF0FD130[BYTE2(v8)] ^ *(&dword_1DF0FD130[256] + ((v8 >> 22) & 0x3FC));
  a2[6] = t_im[BYTE1(v9) + 256] ^ t_im[v9] ^ dword_1DF0FD130[BYTE2(v9)] ^ *(&dword_1DF0FD130[256] + ((v9 >> 22) & 0x3FC));
  v11 = v10;
  v12 = (v10 >> 22) & 0x3FC;
  a2[7] = t_im[BYTE1(v10) + 256] ^ t_im[v10] ^ dword_1DF0FD130[BYTE2(v10)] ^ *(&dword_1DF0FD130[256] + v12);
  v13 = t_fl[BYTE1(v10)] ^ t_fl[BYTE2(v10) + 256] ^ *(&t_fl[512] + v12) ^ t_fl[v10 + 768] ^ 1 ^ v2;
  v14 = t_im[BYTE1(v13) + 256] ^ t_im[v13] ^ dword_1DF0FD130[BYTE2(v13)] ^ dword_1DF0FD130[HIBYTE(v13) + 256];
  a2[8] = v14;
  v15 = t_im[((v13 ^ v4) >> 8) + 256] ^ t_im[(v13 ^ v4)] ^ dword_1DF0FD130[((v13 ^ v4) >> 16)] ^ dword_1DF0FD130[((v13 ^ v4) >> 24) + 256];
  a2[9] = v15;
  v16 = v13 ^ v4 ^ v5;
  v17 = t_im[BYTE1(v16) + 256] ^ t_im[v16] ^ dword_1DF0FD130[BYTE2(v16)] ^ dword_1DF0FD130[HIBYTE(v16) + 256];
  a2[10] = v17;
  v71 = v6;
  v18 = (v16 ^ v6) >> 24;
  v76 = t_im[((v16 ^ v71) >> 8) + 256] ^ t_im[(v16 ^ v71)] ^ dword_1DF0FD130[((v16 ^ v71) >> 16)] ^ dword_1DF0FD130[v18 + 256];
  a2[11] = v76;
  v19 = t_fl[(v16 ^ v71)] ^ t_fl[((v16 ^ v71) >> 8) + 256] ^ t_fl[((v16 ^ v71) >> 16) + 512] ^ t_fl[v18 + 768] ^ v7;
  LODWORD(v10) = t_im[BYTE1(v19) + 256] ^ t_im[v19] ^ dword_1DF0FD130[BYTE2(v19)] ^ dword_1DF0FD130[HIBYTE(v19) + 256];
  a2[12] = v10;
  v20 = t_im[((v19 ^ v8) >> 8) + 256] ^ t_im[(v19 ^ v8)] ^ dword_1DF0FD130[((v19 ^ v8) >> 16)] ^ dword_1DF0FD130[((v19 ^ v8) >> 24) + 256];
  a2[13] = v20;
  v21 = v19 ^ v8 ^ v9;
  v22 = t_im[BYTE1(v21) + 256] ^ t_im[(v19 ^ v8 ^ v9)] ^ dword_1DF0FD130[BYTE2(v21)] ^ dword_1DF0FD130[HIBYTE(v21) + 256];
  a2[14] = v22;
  v23 = v11;
  v70 = v11;
  v72 = v21 ^ v11;
  v24 = (v21 ^ v11);
  v25 = ((v21 ^ v11) >> 8);
  LODWORD(v9) = t_im[((v21 ^ v11) >> 8) + 256] ^ t_im[(v21 ^ v11)];
  v26 = ((v21 ^ v11) >> 16);
  LODWORD(v8) = v9 ^ dword_1DF0FD130[v26] ^ dword_1DF0FD130[HIBYTE(v72) + 256];
  a2[15] = v8;
  v27 = t_fl[v26 + 256] ^ t_fl[v25] ^ t_fl[HIBYTE(v72) + 512] ^ t_fl[v24 + 768] ^ 2;
  v28 = t_im[v27] ^ t_im[BYTE1(v27) + 256] ^ dword_1DF0FD130[BYTE2(v27)] ^ dword_1DF0FD130[HIBYTE(v27) + 256] ^ v14;
  v75 = v27 ^ v74;
  a2[16] = v28;
  a2[17] = v28 ^ v15;
  v66 = v28 ^ v15 ^ v17;
  v29 = v75 ^ v71;
  a2[18] = v66;
  a2[19] = v66 ^ v76;
  v30 = t_fl[(v75 ^ v71)];
  v31 = t_fl[BYTE1(v29) + 256] ^ v30 ^ t_fl[BYTE2(v29) + 512] ^ t_fl[HIBYTE(v29) + 768];
  v32 = t_im[(LOBYTE(t_fl[BYTE1(v29) + 256]) ^ v30 ^ LOBYTE(t_fl[BYTE2(v29) + 512]) ^ LOBYTE(t_fl[HIBYTE(v29) + 768]))] ^ t_im[BYTE1(v31) + 256] ^ dword_1DF0FD130[BYTE2(v31)] ^ dword_1DF0FD130[HIBYTE(v31) + 256] ^ v10;
  a2[20] = v32;
  a2[21] = v32 ^ v20;
  v33 = v32 ^ v20 ^ v22;
  v69 = v8;
  a2[22] = v33;
  a2[23] = v33 ^ v8;
  v73 = v31 ^ v67 ^ v23;
  v34 = t_fl[BYTE2(v73) + 256] ^ t_fl[((v31 ^ v67 ^ v23) >> 8)] ^ t_fl[HIBYTE(v73) + 512] ^ t_fl[(v31 ^ v67 ^ v23) + 768];
  v35 = v27 ^ v13 ^ v34 ^ 4;
  v36 = t_im[((v34 ^ 4) >> 8) + 256] ^ t_im[v34 ^ 4] ^ dword_1DF0FD130[((v34 ^ 4u) >> 16)] ^ dword_1DF0FD130[((v34 ^ 4u) >> 24) + 256];
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
  v41 = t_im[BYTE1(v38) + 256] ^ v39 ^ dword_1DF0FD130[BYTE2(v38)] ^ dword_1DF0FD130[HIBYTE(v38) + 256];
  v42 = v41 ^ v32;
  v43 = v41 ^ v20;
  a2[28] = v41 ^ v32;
  a2[29] = v41 ^ v20;
  v44 = v40 ^ v21 ^ v73 ^ v38;
  v45 = v41 ^ v20 ^ v8;
  a2[30] = v41 ^ v20 ^ v33;
  a2[31] = v45;
  v46 = t_fl[BYTE2(v44) + 256] ^ t_fl[BYTE1(v44)] ^ t_fl[HIBYTE(v44) + 512] ^ t_fl[v44 + 768] ^ 8;
  v47 = t_im[(LOBYTE(t_fl[BYTE2(v44) + 256]) ^ LOBYTE(t_fl[BYTE1(v44)]) ^ LOBYTE(t_fl[HIBYTE(v44) + 512]) ^ LOBYTE(t_fl[v44 + 768])) ^ 8] ^ t_im[BYTE1(v46) + 256] ^ dword_1DF0FD130[BYTE2(v46)] ^ dword_1DF0FD130[HIBYTE(v46) + 256] ^ v10;
  a2[32] = v47;
  a2[33] = v47 ^ v37;
  v48 = v47 ^ v66;
  v49 = v46 ^ v71;
  a2[34] = v47 ^ v66;
  a2[35] = v47 ^ v66 ^ v37 ^ v76;
  LODWORD(v10) = t_fl[((v46 ^ v71) >> 8) + 256] ^ t_fl[(v46 ^ v71)] ^ t_fl[((v46 ^ v71) >> 16) + 512] ^ t_fl[((v46 ^ v71) >> 24) + 768];
  v50 = t_im[(LOBYTE(t_fl[BYTE1(v49) + 256]) ^ LOBYTE(t_fl[v49]) ^ LOBYTE(t_fl[BYTE2(v49) + 512]) ^ LOBYTE(t_fl[HIBYTE(v49) + 768]))] ^ t_im[BYTE1(v10) + 256] ^ dword_1DF0FD130[BYTE2(v10)] ^ dword_1DF0FD130[BYTE3(v10) + 256] ^ v42;
  a2[36] = v50;
  a2[37] = v50 ^ v43;
  v51 = v50 ^ v33;
  a2[38] = v50 ^ v33;
  a2[39] = v50 ^ v33 ^ v45;
  LODWORD(v10) = t_fl[((v10 ^ v70) >> 16) + 256] ^ t_fl[((v10 ^ v70) >> 8)] ^ t_fl[((v10 ^ v70) >> 24) + 512] ^ t_fl[(v10 ^ v70) + 768] ^ 0x10;
  v52 = v46 ^ v35 ^ v10;
  LODWORD(v10) = t_im[BYTE1(v10) + 256] ^ t_im[v10] ^ dword_1DF0FD130[BYTE2(v10)] ^ dword_1DF0FD130[BYTE3(v10) + 256];
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
  v57 = t_im[BYTE1(v56) + 256] ^ t_im[(LOBYTE(t_fl[BYTE1(v8) + 256]) ^ LOBYTE(t_fl[v8]) ^ LOBYTE(t_fl[BYTE2(v8) + 512]) ^ LOBYTE(t_fl[BYTE3(v8) + 768]))] ^ dword_1DF0FD130[BYTE2(v56)] ^ dword_1DF0FD130[HIBYTE(v56) + 256];
  a2[44] = v57 ^ v50;
  a2[45] = v57 ^ v43;
  result = v57 ^ v69;
  a2[46] = v57 ^ v43 ^ v51;
  a2[47] = result;
  v59 = t_fl[((v72 ^ v56) >> 16) + 256] ^ t_fl[((v72 ^ v56) >> 8)] ^ t_fl[((v72 ^ v56) >> 24) + 512] ^ t_fl[(v72 ^ v56) + 768] ^ 0x20;
  LODWORD(v7) = t_im[v59] ^ t_im[BYTE1(v59) + 256] ^ dword_1DF0FD130[BYTE2(v59)] ^ dword_1DF0FD130[HIBYTE(v59) + 256] ^ v53;
  a2[48] = v7;
  a2[49] = v7 ^ v54;
  v60 = v46 ^ v75 ^ v59;
  LODWORD(v7) = v7 ^ v48;
  v61 = v60 ^ v49;
  a2[50] = v7;
  a2[51] = v7 ^ v10;
  LODWORD(v10) = t_fl[BYTE1(v61) + 256] ^ t_fl[(v60 ^ v49)] ^ t_fl[BYTE2(v61) + 512] ^ t_fl[HIBYTE(v61) + 768];
  v62 = t_im[(LOBYTE(t_fl[BYTE1(v61) + 256]) ^ LOBYTE(t_fl[(v60 ^ v49)]) ^ LOBYTE(t_fl[BYTE2(v61) + 512]) ^ LOBYTE(t_fl[HIBYTE(v61) + 768]))] ^ t_im[BYTE1(v10) + 256] ^ dword_1DF0FD130[BYTE2(v10)] ^ dword_1DF0FD130[BYTE3(v10) + 256] ^ v57 ^ v50;
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
  v8[1] = *MEMORY[0x1E69E9840];
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
  v21 = *MEMORY[0x1E69E9840];
  if (a2 != 64)
  {
    return 4294967289;
  }

  __s = 0u;
  v20 = 0u;
  v9 = *(a3 + 48);
  v18[0] = *(a3 + 32);
  v18[1] = v9;
  pub_internal = cccurve25519_make_pub_internal(&__s, v18);
  if (!pub_internal)
  {
    memset(v17, 0, sizeof(v17));
    v11 = cccurve25519_assumes_dit_internal();
    if (v11)
    {
      pub_internal = v11;
      cc_clear(0x20uLL, &__s);
      v12 = v18;
    }

    else
    {
      pub_internal = ccmlkem_kem_encapsulate_msg(ccmlkem768_params, a1 + 8, v15, v16, a3);
      if (!pub_internal)
      {
        cckem_xwing_mlkem768x25519_combine(v16, v17, &__s, (a1 + 1192), a5);
        memcpy(a4, v15, 0x440uLL);
        v14 = v20;
        a4[68] = __s;
        a4[69] = v14;
        return pub_internal;
      }

      cc_clear(0x20uLL, &__s);
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
  v18[1] = *MEMORY[0x1E69E9840];
  v10 = ccsha3_256_di();
  v14 = MEMORY[0x1EEE9AC00](v10, v11, v12, v13);
  v16 = (v18 - v15);
  ccdigest_init_internal(v14, (v18 - v15));
  ccdigest_update_internal(v10, v16, 0x20uLL, a1);
  ccdigest_update_internal(v10, v16, 0x20uLL, a2);
  ccdigest_update_internal(v10, v16, 0x20uLL, a3);
  ccdigest_update_internal(v10, v16, 0x20uLL, a4);
  ccdigest_update_internal(v10, v16, 6uLL, "\\.//^\");
  return (v10[7])(v10, v16, a5);
}

uint64_t cckem_xwing_mlkem768x25519_derive_key_from_seed(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
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
  v12 = *MEMORY[0x1E69E9840];
  v6 = cckem_public_ctx();
  v7 = cckem_mlkem768();
  v8 = v7[10](a1, a2, __s);
  if (!v8)
  {
    memset(v10, 0, sizeof(v10));
    v8 = cccurve25519_assumes_dit_internal();
    if (v8)
    {
      cc_clear(0x20uLL, __s);
    }

    else
    {
      cckem_xwing_mlkem768x25519_combine(__s, v10, (a2 + 1088), (v6 + 1192), a3);
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
  v14 = *MEMORY[0x1E69E9840];
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
  v4[2] = *MEMORY[0x1E69E9840];
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
  v15 = *MEMORY[0x1E69E9840];
  v14[0] = xmmword_1DF0FD930;
  v14[1] = unk_1DF0FD940;
  v13[0] = xmmword_1DF0FD950;
  v13[1] = unk_1DF0FD960;
  v12[0] = xmmword_1DF0FD970;
  v12[1] = unk_1DF0FD980;
  v11[0] = xmmword_1DF0FD990;
  v11[1] = unk_1DF0FD9A0;
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
  v22 = *MEMORY[0x1E69E9840];
  __src = 4;
  v17 = 1;
  v9 = ccvrf_irtf_ed25519_point_to_string(v21, a2);
  MEMORY[0x1EEE9AC00](v9, v10, v11, v12);
  v14 = &v16[-v13];
  ccdigest_init_internal(a1, &v16[-v13]);
  ccdigest_update_internal(a1, v14, 1uLL, &__src);
  ccdigest_update_internal(a1, v14, 1uLL, &v17);
  ccdigest_update_internal(a1, v14, 0x20uLL, v21);
  ccdigest_update_internal(a1, v14, a4, a3);
  (*(a1 + 56))(a1, v14, &v19);
  v20 &= ~0x80u;
  return ge_from_uniform(a5, &v19);
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
  v25 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 24);
  if (v4 != CCSAE_STATE_COMMIT_BOTH && v4 != CCSAE_STATE_CONFIRMATION_GENERATED)
  {
    return 4294967210;
  }

  v10 = **a2;
  v11 = cczp_bitlen(*a2);
  v23 = &v23;
  v12 = (v11 + 7) >> 3;
  v13 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](v11, v14, v15, v16);
  v18 = &v24[-v17 - 8];
  v19 = *(a1 + 16);
  v20 = (*(a1 + 24))(a1, v10);
  v21 = ccsae_sizeof_kck_internal(a2);
  cchmac_init_internal(v13, v18, v21, (a2 + 48));
  cchmac_update_internal(v13, v18, 2, a3);
  ccn_write_uint_padded_internal(v10, (a2 + 144 + 16 * **a2), v12, v20);
  cchmac_update_internal(v13, v18, v12, v20);
  ccn_write_uint_padded_internal(v10, (a2 + 144 + 56 * **a2), v12, v20);
  cchmac_update_internal(v13, v18, v12, v20);
  ccn_write_uint_padded_internal(v10, (a2 + 144 + (**a2 << 6)), v12, v20);
  cchmac_update_internal(v13, v18, v12, v20);
  ccn_write_uint_padded_internal(v10, (a2 + 144 + 24 * **a2), v12, v20);
  cchmac_update_internal(v13, v18, v12, v20);
  ccn_write_uint_padded_internal(v10, (a2 + 144 + 40 * **a2), v12, v20);
  cchmac_update_internal(v13, v18, v12, v20);
  ccn_write_uint_padded_internal(v10, (a2 + 144 + 48 * **a2), v12, v20);
  cchmac_update_internal(v13, v18, v12, v20);
  cchmac_final_internal(v13, v18, v24);
  cc_clear(((v13[1] + v13[2] + 19) & 0xFFFFFFFFFFFFFFF8) + v13[1], v18);
  *(a2 + 24) |= CCSAE_STATE_CONFIRMATION_VERIFIED;
  *(a1 + 16) = v19;
  return cc_cmp_safe_internal(*v13, v24, a4);
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
  v10[0] = xmmword_1F5A426D0;
  v10[1] = unk_1F5A426E0;
  v11 = off_1F5A426F0;
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
  v23 = *MEMORY[0x1E69E9840];
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
  v21[12] = &unk_1DF0FD9B0;
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
  v21[38] = &unk_1DF0FDA31;
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
  v31 = *MEMORY[0x1E69E9840];
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
                ccsae_generate_keyseed_ws(a1, v8, v29, v12, a4, a5, __s);
                cczp_add_ws(a1, &v8[5 * v9 + 4]);
                v20 = ccsae_gen_keys_ws(a1, a2, __s, v22);
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
  cc_clear(*v19, __s);
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
  v26 = *MEMORY[0x1E69E9840];
  v13 = *a2;
  v14 = cczp_bitlen(a2);
  memset(v25, 0, sizeof(v25));
  if (!a5 || !a6)
  {
    a5 = *a3;
    a6 = v25;
  }

  v15 = (v14 + 7) >> 3;
  v16 = *(a1 + 16);
  v17 = (*(a1 + 24))(a1, v13);
  v18 = ccn_write_uint_padded_internal(v13, a4, v15, v17);
  MEMORY[0x1EEE9AC00](v18, v19, v20, v21);
  v23 = (v25 - v22);
  cchmac_init_internal(a3, (v25 - v22), a5, a6);
  cchmac_update_internal(a3, v23, v15, v17);
  cchmac_final_internal(a3, v23, a7);
  result = cc_clear(((a3[1] + a3[2] + 19) & 0xFFFFFFFFFFFFFFF8) + a3[1], v23);
  *(a1 + 16) = v16;
  return result;
}

uint64_t ccchacha20_init(uint64_t a1, _DWORD *a2)
{
  v5 = timingsafe_enable_if_supported();
  *a1 = xmmword_1DF0FDA60;
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

uint64_t ccchacha20_final(void *a1)
{
  v3 = timingsafe_enable_if_supported();
  cc_clear(0x88uLL, a1);
  cc_disable_dit_with_sb(&v3);
  return 0;
}

uint64_t ccpoly1305_init(uint64_t a1, uint64_t a2)
{
  v5 = timingsafe_enable_if_supported();
  ccpoly1305_init_internal(a1, a2);
  cc_disable_dit_with_sb(&v5);
  return 0;
}

uint64_t ccpoly1305_update(unsigned int *a1, unint64_t a2, unsigned int *a3)
{
  v7 = timingsafe_enable_if_supported();
  ccpoly1305_update_internal(a1, a2, a3);
  cc_disable_dit_with_sb(&v7);
  return 0;
}

uint64_t ccpoly1305_final(uint64_t a1, uint64_t a2)
{
  v5 = timingsafe_enable_if_supported();
  ccpoly1305_final_internal(a1, a2);
  cc_disable_dit_with_sb(&v5);
  return 0;
}

uint64_t ccpoly1305(uint64_t a1, unint64_t a2, unsigned int *a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = timingsafe_enable_if_supported();
  memset(v10, 0, sizeof(v10));
  ccpoly1305_init_internal(v10, a1);
  ccpoly1305_update_internal(v10, a2, a3);
  ccpoly1305_final_internal(v10, a4);
  cc_disable_dit_with_sb(&v9);
  return 0;
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

uint64_t ccchacha20poly1305_incnonce()
{
  v1 = timingsafe_enable_if_supported();
  cc_disable_dit_with_sb(&v1);
  return 1;
}

uint64_t ccvrf_irtf_ed25519_derive_scalar_internal(uint64_t a1, char *a2, void *a3, void *a4)
{
  v10 = *MEMORY[0x1E69E9840];
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
  v7 = *MEMORY[0x1E69E9840];
  ccdigest_internal(*(a1 + 40), *(a1 + 32), a2, &__s);
  __s.i8[0] &= 0xF8u;
  v6 = v6 & 0x3F | 0x40;
  ge_scalarmult_base(a3, &__s);
  cc_clear(0x40uLL, &__s);
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
  v21[1] = *MEMORY[0x1E69E9840];
  if (*(a2 + 24) < CCSAE_STATE_COMMIT_BOTH)
  {
    return 4294967210;
  }

  v9 = **a2;
  v10 = cczp_bitlen(*a2);
  v21[0] = v21;
  v11 = (v10 + 7) >> 3;
  v12 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](v10, v13, v14, v15);
  v17 = (v21 - v16);
  v18 = *(a1 + 16);
  v19 = (*(a1 + 24))(a1, v9);
  v20 = ccsae_sizeof_kck_internal(a2);
  cchmac_init_internal(v12, v17, v20, (a2 + 48));
  cchmac_update_internal(v12, v17, 2, a3);
  ccn_write_uint_padded_internal(v9, (a2 + 144 + 24 * **a2), v11, v19);
  cchmac_update_internal(v12, v17, v11, v19);
  ccn_write_uint_padded_internal(v9, (a2 + 144 + 40 * **a2), v11, v19);
  cchmac_update_internal(v12, v17, v11, v19);
  ccn_write_uint_padded_internal(v9, (a2 + 144 + 48 * **a2), v11, v19);
  cchmac_update_internal(v12, v17, v11, v19);
  ccn_write_uint_padded_internal(v9, (a2 + 144 + 16 * **a2), v11, v19);
  cchmac_update_internal(v12, v17, v11, v19);
  ccn_write_uint_padded_internal(v9, (a2 + 144 + 56 * **a2), v11, v19);
  cchmac_update_internal(v12, v17, v11, v19);
  ccn_write_uint_padded_internal(v9, (a2 + 144 + (**a2 << 6)), v11, v19);
  cchmac_update_internal(v12, v17, v11, v19);
  cchmac_final_internal(v12, v17, a4);
  cc_clear(((*(v12 + 8) + *(v12 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + *(v12 + 8), v17);
  *(a2 + 24) |= CCSAE_STATE_CONFIRMATION_GENERATED;
  *(a1 + 16) = v18;
  return 0;
}

uint64_t fipspost_post_integrity(char a1, char *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (fipspost_get_hmac(a2, __s, 0))
  {
    v3 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: could not create the hash\n", v3, "fipspost_post_integrity", 27);
    v4 = 4294967224;
  }

  else
  {
    if ((a1 & 0x10) != 0)
    {
      LOBYTE(__s[0]) ^= 1u;
    }

    if (cc_cmp_safe(32, __s, fipspost_precalc_hmac))
    {
      v5 = mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: MAC generated: ", v5, "fipspost_post_integrity", 37);
      for (i = 0; i != 32; ++i)
      {
        printf("%02X", *(__s + i));
      }

      putchar(10);
      v7 = mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d:   In variable: ", v7, "fipspost_post_integrity", 38);
      for (j = 0; j != 32; ++j)
      {
        printf("%02X", fipspost_precalc_hmac[j]);
      }

      putchar(10);
      v4 = 4294967222;
    }

    else
    {
      v4 = 0;
    }
  }

  cc_clear(0x20uLL, __s);
  return v4;
}

void *eay_RC4_set_key(void *result, uint64_t a2, uint64_t a3)
{
  v3 = xmmword_1DF0FDAE0;
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
  v24 = *MEMORY[0x1E69E9840];
  v14 = timingsafe_enable_if_supported();
  v23 = v14;
  MEMORY[0x1EEE9AC00](v14, v15, v16, v17);
  v19 = &v22[-v18];
  v20 = (*(a1 + 16))(a1, &v22[-v18], a2, a3, a4);
  if (!v20)
  {
    v20 = (*(a1 + 24))(v19, a5, a6, a7);
  }

  cc_clear(*a1, v19);
  cc_disable_dit_with_sb(&v23);
  return v20;
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

  __s = a6;
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
    ccn_write_uint_padded_ct_internal(v22, v23, a5, __s);
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

uint64_t ccz_addi(void *a1, uint64_t a2, unsigned int a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
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
  v25 = *MEMORY[0x1E69E9840];
  v6 = ccec_cp_ed448();
  v19 = cc_malloc_clear(0x690uLL);
  v20 = xmmword_1DF0FDB00;
  v21 = cc_ws_alloc;
  v22 = cc_ws_free;
  if (!v19)
  {
    return 4294967283;
  }

  v7 = cczp_n(v6);
  v8 = cc_ws_alloc(&v19, v7);
  v9 = v21(&v19, 3 * v7);
  ccshake256(0x39uLL, a3, 0x72uLL, __s);
  __s[0] &= 0xFCu;
  v24 |= 0x80u;
  if (v7)
  {
    v10 = __s;
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

  cc_clear(0x72uLL, __s);
  *(&v20 + 1) = 0;
  v22(&v19);
  return v17;
}

uint64_t cced448_shake_to_scalar_ws(uint64_t a1, uint64_t *a2, uint64_t *a3, size_t a4, char *a5, size_t a6, char *a7, size_t a8, char *a9)
{
  v28 = *MEMORY[0x1E69E9840];
  v15 = ccshake256_xi();
  v22 = *a2;
  v16 = cczp_n(a2);
  v23 = *(a1 + 16);
  v17 = (2 * v16) | 1;
  v18 = (*(a1 + 24))(a1, v17);
  v27 = 0;
  memset(__dst, 0, sizeof(__dst));
  ccxof_init(v15, __s);
  ccxof_absorb(v15, __s, 0xAuLL, "SigEd448");
  ccxof_absorb(v15, __s, a4, a5);
  ccxof_absorb(v15, __s, a6, a7);
  ccxof_absorb(v15, __s, a8, a9);
  ccxof_squeeze(v15, __s, 0x72uLL, __dst);
  cc_clear(0x158uLL, __s);
  for (i = 0; i != v17; ++i)
  {
    *&v18[8 * i] = *(__dst + i);
  }

  cczp_modn_ws(a1, &a2[5 * v22 + 4], a3, v17, v18);
  result = cc_clear(0x78uLL, __dst);
  *(a1 + 16) = v23;
  return result;
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

uint64_t fipspost_get_hmac(char *a1, _OWORD *a2, unint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  result = ccsha256_di();
  v41 = 0;
  if (a3)
  {
    v10 = &a1[a3];
    v11 = __CFADD__(a1, a3);
    result = 4294967224;
    if (a3 < 0x28 || v11)
    {
      return result;
    }
  }

  else
  {
    v10 = 0;
  }

  if (*a1 == -17958193)
  {
    v38 = a2;
    v12 = 32;
  }

  else
  {
    if (*a1 != -17958194)
    {
      return 4294967223;
    }

    v38 = a2;
    v12 = 28;
  }

  v39 = &v36;
  v13 = *(a1 + 4);
  v42 = 0u;
  v43 = 0u;
  MEMORY[0x1EEE9AC00](result, v7, v8, v9);
  v36 = (&v36 - v14);
  v37 = v15;
  cchmac_init(v15, (&v36 - v14), 1uLL, &v41);
  if (v13)
  {
    v16 = 0;
    v17 = &a1[v12];
    v40 = &a1[v12];
    while (1)
    {
      v18 = (v17 + 56) <= v10 || v10 == 0;
      if (!v18 || v17 < a1)
      {
        break;
      }

      if (!strncmp("__TEXT", v17 + 8, 6uLL) || !strncmp("__TEXT_EXEC", v17 + 8, 0xBuLL))
      {
        if (*v40 == 1)
        {
          v24 = *(v17 + 12);
          if (v24)
          {
            v25 = (v17 + 124);
            do
            {
              v26 = v25 <= v10 || v10 == 0;
              result = 4294967224;
              if (!v26 || v17 + 56 < a1)
              {
                return result;
              }

              if (!strcmp((v25 - 68), "__text") && (!strcmp((v25 - 52), "__TEXT") || !strcmp((v25 - 52), "__TEXT_EXEC")))
              {
                v28 = *(v25 - 32);
                v29 = &a1[*(v25 - 28)];
LABEL_62:
                if ((&v29[v28] <= v10 || v10 == 0) && &v29[v28 - 1] >= a1)
                {
                  v33 = v36;
                  v32 = v37;
                  cchmac_update(v37, v36, v28, v29);
                  cchmac_final(v32, v33, &v42);
                  result = 0;
                  v34 = v43;
                  v35 = v38;
                  *v38 = v42;
                  v35[1] = v34;
                  return result;
                }

                return 4294967224;
              }

              v25 += 68;
            }

            while (--v24);
          }
        }

        else if (*v40 == 25)
        {
          v20 = (v17 + 72);
          v21 = *(v17 + 16);
          if (v10 && v20 > v10)
          {
            return 4294967224;
          }

          if (v21)
          {
            v22 = (v17 + 152);
            do
            {
              v23 = v22 <= v10 || v10 == 0;
              result = 4294967224;
              if (!v23 || v20 < a1)
              {
                return result;
              }

              if (!strcmp((v22 - 80), "__text") && (!strcmp((v22 - 64), "__TEXT") || !strcmp((v22 - 64), "__TEXT_EXEC")))
              {
                v29 = &a1[*(v22 - 32)];
                v28 = *(v22 - 40);
                goto LABEL_62;
              }

              v22 += 80;
            }

            while (--v21);
          }
        }
      }

      ++v16;
      v17 += *(v17 + 1);
      if (v16 == v13)
      {
        goto LABEL_55;
      }
    }
  }

  else
  {
LABEL_55:
    v27 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: could not create the hash\n", v27, "fipspost_get_hmac", 251);
  }

  return 4294967224;
}

uint64_t fipspost_post_ecdh(char a1)
{
  v34 = *MEMORY[0x1E69E9840];
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
    v33[0] = xmmword_1DF0FDB52;
    v33[1] = unk_1DF0FDB62;
    v32[0] = xmmword_1DF0FDB72;
    v32[1] = unk_1DF0FDB82;
    v31[0] = xmmword_1DF0FDB92;
    v31[1] = unk_1DF0FDBA2;
    v30[0] = xmmword_1DF0FDBB2;
    v30[1] = unk_1DF0FDBC2;
    v29[0] = xmmword_1DF0FDBD2;
    v29[1] = unk_1DF0FDBE2;
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
  v22 = *MEMORY[0x1E69E9840];
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  cckeccak_init_state(v17);
  v8 = a4[1];
  __s[0] = *a4;
  __s[1] = v8;
  v20 = a2;
  v21 = a3;
  cckeccak_absorb_and_pad(v17, 168, 0x22uLL, __s, 0x1Fu);
  cc_clear(0x400uLL, a1);
  v9 = 0;
  v10 = 0;
  do
  {
    permutation = cckeccak_get_permutation();
    cckeccak_squeeze(v17, 0xA8uLL, 0xA8uLL, __s, permutation);
    v12 = 0;
    v13 = __s + 2;
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
  cc_clear(0xA8uLL, __s);
  return v10;
}