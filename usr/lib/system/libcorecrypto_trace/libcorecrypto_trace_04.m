uint64_t ccaes_ofb_crypt_vng_vector(uint64_t result, int8x16_t *a2, uint64_t a3, int8x16_t *a4, int8x16_t *a5)
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

        v19 = veorq_s8(_Q0, v16);
        *a5++ = veorq_s8(v19, v17);
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

void *ccaes_siv_decrypt_mode()
{
  v0 = ccaes_cbc_encrypt_mode();
  v1 = ccaes_ctr_crypt_mode();
  ccmode_factory_siv_decrypt(&siv_decrypt, v0, v1);
  return &siv_decrypt;
}

uint64_t ccrsa_sign_pkcs1v15_blinded_ws(uint64_t a1, uint64_t (**a2)(void, uint64_t, uint64_t), uint64_t *a3, unsigned __int8 *a4, size_t a5, const void *a6, unint64_t *a7, char *a8)
{
  v16 = *a3;
  v17 = ccn_write_uint_size_public_value(*a3, a3 + 3);
  if (*a7 < v17)
  {
    return 4294967273;
  }

  v19 = v17;
  v21 = a2;
  v22 = *(a1 + 16);
  v20 = (*(a1 + 24))(a1, v16);
  *a7 = v19;
  result = ccrsa_emsa_pkcs1v15_encode_internal(v19, a8, a5, a6, a4);
  if (!result)
  {
    ccn_read_uint_internal(v16, v20, v19, a8);
    result = ccrsa_priv_crypt_blinded_ws(a1, v21, a3, v20, v20);
    if (!result)
    {
      ccn_write_uint_padded_ct_internal(v16, v20, v19, a8);
      result = 0;
    }
  }

  *(a1 + 16) = v22;
  return result;
}

uint64_t ccrsa_sign_pkcs1v15_blinded(uint64_t (**a1)(void, uint64_t, uint64_t), unint64_t *a2, unsigned __int8 *a3, size_t a4, const void *a5, unint64_t *a6, char *a7)
{
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

  v18 = cc_malloc_clear(8 * (v17 + 3 * v14));
  v25[0] = v18;
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

  v25[1] = v22 + 3 * v19;
  v25[2] = 0;
  v25[3] = cc_ws_alloc;
  v26 = cc_ws_free;
  if (!v18)
  {
    return 4294967283;
  }

  v23 = ccrsa_sign_pkcs1v15_blinded_ws(v25, a1, a2, a3, a4, a5, a6, a7);
  v26(v25);
  return v23;
}

uint64_t ccrsa_sign_pkcs1v15(unint64_t *a1, unsigned __int8 *a2, size_t a3, const void *a4, unint64_t *a5, char *a6)
{
  v15 = timingsafe_enable_if_supported();
  v12 = ccrng(0);
  if (v12)
  {
    v13 = ccrsa_sign_pkcs1v15_blinded(v12, a1, a2, a3, a4, a5, a6);
  }

  else
  {
    v13 = 0xFFFFFFFFLL;
  }

  cc_disable_dit_with_sb(&v15);
  return v13;
}

uint64_t ccrsa_sign_pkcs1v15_msg_blinded_ws(uint64_t a1, uint64_t (**a2)(void, uint64_t, uint64_t), uint64_t *a3, uint64_t a4, size_t a5, char *a6, unint64_t *a7, char *a8)
{
  v16 = *MEMORY[0x29EDCA608];
  ccdigest_internal(a4, a5, a6, v15);
  return ccrsa_sign_pkcs1v15_blinded_ws(a1, a2, a3, *(a4 + 32), *a4, v15, a7, a8);
}

uint64_t ccrsa_sign_pkcs1v15_msg_blinded(uint64_t (**a1)(void, uint64_t, uint64_t), unint64_t *a2, uint64_t a3, size_t a4, char *a5, unint64_t *a6, char *a7)
{
  v28 = *MEMORY[0x29EDCA608];
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

  v18 = cc_malloc_clear(8 * (v17 + 3 * v14));
  v25[0] = v18;
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

  v25[1] = v22 + 3 * v19;
  v25[2] = 0;
  v25[3] = cc_ws_alloc;
  v26 = cc_ws_free;
  if (!v18)
  {
    return 4294967283;
  }

  ccdigest_internal(a3, a4, a5, v27);
  v23 = ccrsa_sign_pkcs1v15_blinded_ws(v25, a1, a2, *(a3 + 32), *a3, v27, a6, a7);
  v26(v25);
  return v23;
}

uint64_t ccrsa_sign_pkcs1v15_msg(unint64_t *a1, uint64_t a2, size_t a3, char *a4, unint64_t *a5, char *a6)
{
  v17 = *MEMORY[0x29EDCA608];
  v15 = timingsafe_enable_if_supported();
  ccdigest_internal(a2, a3, a4, v16);
  v12 = ccrng(0);
  if (v12)
  {
    v13 = ccrsa_sign_pkcs1v15_blinded(v12, a1, *(a2 + 32), *a2, v16, a5, a6);
  }

  else
  {
    v13 = 0xFFFFFFFFLL;
  }

  cc_disable_dit_with_sb(&v15);
  return v13;
}

uint64_t ccsha3_final(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t *))
{
  v15[1] = *MEMORY[0x29EDCA608];
  v8 = a1[1];
  v7 = a1[2];
  v9 = a2 + v8 + 8;
  if (v7 <= *(v9 + v7))
  {
    *(v9 + v7) = 0;
  }

  MEMORY[0x2A1C7C4A8](a1);
  v11 = v15 - v10;
  memcpy(v15 - v10, v13, v12 + 12);
  cckeccak_absorb_and_pad((v11 + 8), v7, *&v11[v8 + 8 + v7], &v11[v8 + 8], 6u);
  cckeccak_squeeze((v11 + 8), a1[2], *a1, a3, a4);
  return cc_clear(a1[1] + a1[2] + 12, v11);
}

uint64_t ccrsa_check_delta_100bits_ws(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  v12 = *(a1 + 16);
  v13 = (*(a1 + 24))();
  v14 = (*(a1 + 24))(a1, a2);
  v15 = ccn_bitlen_internal(a2, a3);
  ccn_zero(a2, v14);
  ccn_set_bit(v14, v15 - 100, 1);
  ccn_abs(a2, v13, a3, a4);
  LODWORD(a4) = ccn_cmp_public_value(a2, v13, v14);
  ccn_abs(a2, v13, a5, a6);
  v16 = ccn_cmp_public_value(a2, v13, v14);
  *(a1 + 16) = v12;
  if (v16 + a4 == 2)
  {
    return 0;
  }

  else
  {
    return 4294967257;
  }
}

uint64_t ccrsa_crt_make_fips186_key_ws(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v13 = *a3;
  v14 = (*a3 >> 1) + 1;
  v15 = ccrsa_ctx_public(a3);
  v16 = ccn_bitlen_internal(v14, a6);
  if (ccn_bitlen_internal(v14, a7) + v16 > (v13 << 6))
  {
    return 4294967273;
  }

  v27 = *(a1 + 16);
  v18 = &v15[2 * *v15];
  v19 = v18 + 4;
  if (a4)
  {
    ccn_set(a4, v18 + 4, a5);
  }

  ccn_zero(v13 - a4, &v19[a4]);
  v20 = ccn_cmp_public_value(v14, a6, a7);
  if (v20 >= 0)
  {
    v21 = a7;
  }

  else
  {
    v21 = a6;
  }

  if (v20 >= 0)
  {
    a7 = a6;
  }

  *ccrsa_ctx_private_zp(a3) = v14;
  v22 = ccrsa_ctx_private_zp(a3);
  *(v22 + 16 * *ccrsa_ctx_private_zp(a3) + 32) = v14;
  v23 = ccrsa_ctx_private_zp(a3);
  v24 = ccrsa_ctx_private_zp(a3);
  v25 = v24 + 16 * *ccrsa_ctx_private_zp(a3);
  ccn_set(v14, v23 + 3, a7);
  ccn_set(v14, (v25 + 56), v21);
  result = cczp_init_ws(a1, v23);
  if (result || (result = cczp_init_ws(a1, (v25 + 32)), result))
  {
    v26 = v27;
  }

  else
  {
    result = ccrsa_crt_makekey_ws(a1, a3);
    v26 = v27;
    if (!result)
    {
      if (cczp_bitlen(v15) + 1 >= a2)
      {
        result = 0;
      }

      else
      {
        result = 4294967273;
      }
    }
  }

  *(a1 + 16) = v26;
  return result;
}

uint64_t ccrsa_generate_fips186_key_trace(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(void, unint64_t, void *), unsigned int (**a6)(void, unint64_t, uint64_t), void *a7)
{
  v9 = a1 + 63;
  v10 = (a1 + 63) >> 6;
  v11 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N(v10);
  if (9 * v10 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = 9 * v10;
  }

  v13 = 8 * v10 - (v9 >> 6);
  v14 = v12 + v13;
  v15 = sizeof_struct_ccrns_mul_modulus();
  v16 = sizeof_struct_ccpolyzp_po2cyc();
  v17 = (v10 & 0x3FFFFFFFFFFFFFELL) + (v9 >> 6) + 25 * v10 + 4;
  v18 = (v15 + v16 - 1) / v16 + v17;
  if (v14 > v18)
  {
    v18 = v14;
  }

  v19 = v9 >> 7;
  v20 = 3 * (v9 >> 7) + 3;
  v21 = cc_malloc_clear(8 * (v18 + v20));
  v66[0] = v21;
  v57 = v10;
  v22 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N(v10);
  if (9 * v10 <= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = 9 * v10;
  }

  v24 = v23 + v13;
  v25 = sizeof_struct_ccrns_mul_modulus();
  v26 = sizeof_struct_ccpolyzp_po2cyc();
  v27 = (v25 + v26 - 1) / v26 + v17;
  if (v24 > v27)
  {
    v27 = v24;
  }

  v66[1] = v27 + v20;
  v67 = 0;
  v68 = cc_ws_alloc;
  v69 = cc_ws_free;
  if (!v21)
  {
    return 4294967283;
  }

  if (a1 <= 0x2000)
  {
    v29 = a1;
    *a2 = v10;
    v30 = ccrsa_ctx_public(a2);
    v31 = v30 + 3;
    if (ccn_read_uint_internal(v10, &v30[2 * *v30 + 4], a3, a4))
    {
      v28 = 4294967268;
      cc_ws_free(v66);
    }

    else
    {
      v32 = v19 + 1;
      v65 = cc_ws_alloc(v66, v19 + 1);
      v33 = v68(v66, v19 + 1);
      v34 = *a2;
      v52 = *v30;
      v35 = a1 + 1;
      v36 = v68(v66, v32);
      v61 = v32;
      cc_clear(8 * v32, v36);
      v55 = v36;
      v56 = (v29 + 1) >> 1;
      ccn_set_bit(v36, v56, 1);
      if (v29 >= 0x200)
      {
        v53 = &a2[3 * v34];
        v54 = v29;
        v37 = 171;
        if (v29 > 0xFFE)
        {
          v37 = 201;
        }

        v38 = 101;
        if (v29 > 0x400)
        {
          v38 = 141;
        }

        v39 = (a3 + 7) >> 3;
        if (v29 <= 0xBFE)
        {
          v40 = v38;
        }

        else
        {
          v40 = v37;
        }

        v41 = &v31[2 * v52];
        v60 = v29 - (v35 >> 1);
        v42 = v61;
LABEL_27:
        v43 = ccn_bitlen_internal(v39, v41 + 1);
        v44 = v67;
        v45 = v68(v66, v42);
        v46 = v68(v66, v42);
        v28 = 4294967268;
        if ((v41[1] & 1) != 0 && (v43 - 256) >= 0xFFFFFFFFFFFFFF11)
        {
          v47 = v46;
          if (a7)
          {
            cc_clear(0x1830uLL, a7);
            a7[389] = 0;
            a7[2] = 0;
          }

          probable_prime_ws = ccrsa_generate_probable_prime_ws(v66, v56, v65, v45, v40, v40, v39, v41 + 1, a5, a6, a7);
          if (!probable_prime_ws)
          {
            v49 = 0;
            while (1)
            {
              if (a7)
              {
                a7[389] = 1;
                a7[2] = 1;
              }

              probable_prime_ws = ccrsa_generate_probable_prime_ws(v66, v60, v33, v47, v40, v40, v39, v41 + 1, a5, a6, a7);
              if (probable_prime_ws)
              {
                break;
              }

              v50 = ccrsa_check_delta_100bits_ws(v66, v61, v65, v33, v45->i64, v47);
              v28 = v50;
              if (v49 <= 0x62)
              {
                ++v49;
                if (v50 == -39)
                {
                  continue;
                }
              }

              v67 = v44;
              if (v50)
              {
                goto LABEL_44;
              }

              probable_prime_ws = ccrsa_crt_make_fips186_key_ws(v66, v54, a2, v39, v41 + 1, v65, v33);
              if (probable_prime_ws)
              {
                break;
              }

              v42 = v61;
              if (ccn_cmpn_internal(v57, v53 + 4, v61, v55) < 1)
              {
                goto LABEL_27;
              }

              if (ccrsa_pairwise_consistency_check_ws(v66, a2, a5))
              {
                v28 = 4294967259;
              }

              else
              {
                v28 = 0;
              }

              goto LABEL_44;
            }
          }

          v28 = probable_prime_ws;
        }
      }

      else
      {
        v28 = 4294967268;
      }

LABEL_44:
      v67 = 0;
      v69(v66);
    }
  }

  else
  {
    v28 = 4294967273;
    cc_ws_free(v66);
  }

  return v28;
}

uint64_t ccrsa_generate_fips186_key(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(void, unint64_t, void *), unsigned int (**a6)(void, unint64_t, uint64_t))
{
  v14 = timingsafe_enable_if_supported();
  fips186_key_trace = ccrsa_generate_fips186_key_trace(a1, a2, a3, a4, a5, a6, 0);
  cc_try_abort_if (fips186_key_trace == -37);
  cc_disable_dit_with_sb(&v14);
  return fips186_key_trace;
}

uint64_t ccrsa_find_next_prime_ws(uint64_t a1, unint64_t a2, unint64_t *a3, unsigned int (**a4)(void, unint64_t, uint64_t))
{
  v7 = (a2 + 63) >> 6;
  v8 = ccrsa_num_mr_iterations_aux(a2);
  v9 = ccn_sub1(v7, a3, a3, 2uLL);
  if (v9)
  {
    return 4294967262;
  }

  *a3 |= 1uLL;
  v11 = *(a1 + 16);
  while (!v9)
  {
    if (!ccn_add1_ws(a1, v7, a3, a3, 2))
    {
      ccprime_rabin_miller_ws(a1, v7, a3, v8, a4);
      if (v9 < 2)
      {
        continue;
      }
    }

    result = 4294967262;
    goto LABEL_9;
  }

  result = 0;
LABEL_9:
  *(a1 + 16) = v11;
  return result;
}

BOOL OUTLINED_FUNCTION_2_12()
{

  return ccn_add1_ws(v0, v2, v1, v1, 1);
}

uint64_t ccrsa_sign_pss_blinded(uint64_t (**a1)(void, uint64_t, uint64_t), unint64_t *a2, uint64_t *a3, uint64_t a4, unint64_t a5, uint64_t (**a6)(void, unint64_t, char *), size_t a7, char *a8, unint64_t *a9, char *a10)
{
  v50 = *MEMORY[0x29EDCA608];
  v17 = *a2;
  v18 = 9 * *a2;
  v19 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N(*a2);
  if (v18 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v18;
  }

  v21 = cc_malloc_clear(8 * (v20 + 3 * v17));
  v44[0] = v21;
  v22 = *a2;
  v23 = 9 * *a2;
  v24 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N(*a2);
  if (v23 <= v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  v44[1] = v25 + 3 * v22;
  v45 = 0;
  v46 = cc_ws_alloc;
  v47 = cc_ws_free;
  if (!v21)
  {
    return 4294967283;
  }

  v26 = cczp_bitlen(a2);
  if (v26 == 1024)
  {
    v27 = *a3;
    v29 = a7 - 2 < a5 && v27 == 512;
    v30 = 4294967273;
    if (a5 > a7 || v29)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (a5 > a7)
    {
LABEL_23:
      v30 = 4294967273;
LABEL_24:
      cc_ws_free(v44);
      return v30;
    }

    v27 = *a3;
  }

  if (v27 != a7)
  {
    goto LABEL_23;
  }

  v31 = (v26 + 7) >> 3;
  if (*a9 < v31)
  {
    goto LABEL_23;
  }

  v42 = v26 - 1;
  v40 = (v26 + 6) >> 3;
  *a9 = v31;
  if (a5)
  {
    v33 = *a6;
    if (a5 > 0xB)
    {
      v34 = v33(a6, a5, v48);
    }

    else
    {
      v34 = v33(a6, 12uLL, v49);
      __memcpy_chk();
      cc_clear(a5, v49);
    }

    v35 = v46;
    v41 = v45;
  }

  else
  {
    v35 = cc_ws_alloc;
    v41 = 0;
    v34 = 0;
  }

  v36 = *a2;
  v37 = v35(v44, *a2);
  v37[v36 - 1] = 0;
  *v37 = 0;
  v38 = ccrsa_emsa_pss_encode_internal(a3, a4, a5, v48, a7, a8, v42, v37 + 8 * v36 - v40);
  ccn_swap(v36, v37);
  v39 = ccrsa_priv_crypt_blinded_ws(v44, a1, a2, v37, v37) | v38;
  if (v39 | v34)
  {
    cc_clear(8 * v36, v37);
    if (v34)
    {
      v30 = v34;
    }

    else
    {
      v30 = v39;
    }
  }

  else
  {
    ccn_write_uint_padded_ct_internal(v36, v37, *a9, a10);
    v30 = 0;
  }

  v45 = v41;
  v47(v44);
  return v30;
}

uint64_t fipspost_post_hkdf(char a1)
{
  v44 = *MEMORY[0x29EDCA608];
  v2 = ccsha1_di();
  v3 = ccsha256_di();
  v4 = ccsha512_di();
  v5 = ccsha3_224_di();
  v6 = ccsha3_256_di();
  v7 = ccsha3_384_di();
  v8 = ccsha3_512_di();
  memset(v43, 0, sizeof(v43));
  v42[0] = 0;
  v42[1] = 0;
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  if ((a1 & 0x10) != 0)
  {
    LOBYTE(v43[0]) = 1;
  }

  v9 = 0;
  v10 = 0;
  v13[0] = v2;
  v13[1] = "sha1";
  v14 = xmmword_299DB0AF8;
  v15 = unk_299DB0B08;
  v16 = v3;
  v17 = "sha256";
  v18 = xmmword_299DB0B18;
  v19 = unk_299DB0B28;
  v20 = v4;
  v21 = "sha512";
  v22 = xmmword_299DB0B38;
  v23 = unk_299DB0B48;
  v24 = v5;
  v25 = "sha3_224";
  v26 = xmmword_299DB0B58;
  v27 = unk_299DB0B68;
  v28 = v6;
  v29 = "sha3_256";
  v30 = xmmword_299DB0B78;
  v31 = unk_299DB0B88;
  v32 = v7;
  v33 = "sha3_384";
  v34 = xmmword_299DB0B98;
  v35 = unk_299DB0BA8;
  v36 = v8;
  v37 = "sha3_512";
  v38 = xmmword_299DB0BB8;
  v39 = unk_299DB0BC8;
  do
  {
    cchkdf(v13[v9], 32, v43, 0x10uLL, v42, 8, &v41, 32, v40);
    if (cc_cmp_safe(32, v40, &v13[v9 + 2]))
    {
      v11 = mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: HKDF with digest %s\n", v11, "fipspost_post_hkdf", 86, v13[v9 + 1]);
      v10 = 4294967221;
    }

    v9 += 6;
  }

  while (v9 != 42);
  return v10;
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

uint64_t cccmac_sl_test_xor(uint64_t result, char *a2)
{
  LOBYTE(v2) = 0;
  v3 = *a2;
  for (i = 15; i != -1; --i)
  {
    v5 = a2[i];
    *(result + i) = v2 | (2 * v5);
    v2 = v5 >> 7;
  }

  *(result + 15) ^= (v3 >> 7) & 0x87;
  return result;
}

uint64_t cccmac_generate_subkeys(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v17[2] = *MEMORY[0x29EDCA608];
  v17[0] = 0;
  v17[1] = 0;
  v16[0] = 0;
  v16[1] = 0;
  result = cccbc_one_shot_explicit_internal(a1, a2, 16, *(a1 + 8), 1, a3, v17, v16, v16);
  if (!result)
  {
    LOBYTE(v8) = 0;
    v9 = SLOBYTE(v16[0]);
    for (i = 15; i != -1; --i)
    {
      v11 = *(v16 + i);
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
    cc_clear(0x10uLL, v16);
    return 0;
  }

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

const char *fips_allowed_mode_(const char *__s1, uint64_t a2)
{
  if (__s1)
  {
    v3 = __s1;
    v4 = 0;
    v5 = 1;
    v6 = &qword_29F289EA8;
    do
    {
      if (!strcmp(v3, *(v6 - 1)) && *v6 == a2)
      {
        break;
      }

      v5 = v4 < 0x45;
      v6 += 2;
      ++v4;
    }

    while (v4 != 70);
    return v5;
  }

  return __s1;
}

const char *fips_allowed(const char *__s1, const char *a2)
{
  if (__s1)
  {
    v3 = __s1;
    v4 = 0;
    v5 = 1;
    for (i = &unk_29F28A4F0; ; i += 3)
    {
      v7 = *(i - 4);
      v8 = *i;
      if (!strcmp(v3, *(i - 1)))
      {
        if (!(a2 | v8))
        {
          return v5;
        }

        if (a2)
        {
          if (v7 == 1)
          {
            v9 = strtoul(a2, 0, 10);
            if (v9 == v8 || v9 >= SHIDWORD(v8))
            {
              return v5;
            }
          }

          else if (!v7 && v8 && !strcmp(a2, v8))
          {
            return v5;
          }
        }
      }

      v5 = v4 < 0x84;
      if (++v4 == 133)
      {
        return v5;
      }
    }
  }

  return __s1;
}

BOOL fips_allowed_drbg_(char *__s1, const char *a2, const char *a3)
{
  result = 0;
  if (__s1 && a2 && a3)
  {
    v7 = 0;
    v8 = 1;
    v9 = off_29F28A310;
    do
    {
      v10 = *v9;
      if (!strcmp(__s1, *(v9 - 2)) && !strcmp(a2, *(v9 - 1)) && !strcmp(a3, v10))
      {
        break;
      }

      v8 = v7 < 0x13;
      v9 += 3;
      ++v7;
    }

    while (v7 != 20);
    return v8;
  }

  return result;
}

uint64_t ccn_divmod_ws(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v58[2] = *MEMORY[0x29EDCA608];
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

unint64_t ccckg2_sizeof_ctx(uint64_t a1)
{
  v2 = (*(a1 + 8))();
  v3 = (*(a1 + 16))();
  v4 = *v2;
  v5 = (((cczp_bitlen(v2) + 7) >> 2) & 0x3FFFFFFFFFFFFFFELL) + 16 * v4;
  v6 = (*v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  if ((v5 | 1) > v6 + 16 * *v2)
  {
    v7 = v5 + 1;
  }

  else
  {
    v7 = v6 + 16 * *v2;
  }

  return v7 + 40;
}

unint64_t ccckg2_sizeof_opening(uint64_t a1)
{
  v1 = (*(a1 + 8))();
  v2 = cczp_bitlen(&v1[5 * *v1 + 4]) + 7;
  return (((cczp_bitlen(v1) + 7) >> 2) | 1) + (v2 >> 3);
}

uint64_t ccckg2_init(_DWORD *a1, uint64_t a2)
{
  if (*a2 != 2)
  {
    return 4294967289;
  }

  v4 = ccckg2_sizeof_ctx(a2);
  v5 = cc_clear(v4, a1);
  *a1 = *a2;
  *(a1 + 1) = (*(a2 + 8))(v5);
  v6 = (*(a2 + 16))();
  result = 0;
  *(a1 + 2) = v6;
  *(a1 + 32) = 0;
  return result;
}

uint64_t ccckg2_derive_sk_ws(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t (**a7)(void, uint64_t, uint64_t *))
{
  v29 = *MEMORY[0x29EDCA608];
  if (*a3 != 4)
  {
    return 4294967289;
  }

  v12 = *(a2 + 8);
  v22 = *(a2 + 16);
  v13 = *v12;
  v25 = *(a1 + 16);
  v14 = (*(a1 + 24))(a1, 3 * *v12);
  v15 = (*(a1 + 24))(a1, 3 * v13);
  v16 = (*(a1 + 24))(a1, (24 * v13 + 23) >> 3);
  *v16 = v12;
  v17 = cczp_bitlen(v12);
  result = ccec_raw_import_pub(v12, ((v17 + 7) >> 2) & 0x3FFFFFFFFFFFFFFELL, a3 + 1, v16);
  if (result || (result = ccec_validate_point_and_projectify_ws(a1, v12, v14, (v16 + 2)), result) || (result = ccec_mult_blinded_ws(a1, v12, v15, a2 + 8 * **(a2 + 8) + 40, v14, a7), result) || (result = ccec_affinify_ws(a1, v12), result))
  {
    v20 = v25;
  }

  else
  {
    v19 = cczp_bitlen(v12);
    ccn_write_uint_padded_internal(v13, (a4 + 16), (v19 + 7) >> 3, v28);
    result = ccec_export_pub(v16, v27);
    v20 = v25;
    if (!result)
    {
      v26[0] = v27;
      v26[1] = ((cczp_bitlen(v12) + 7) >> 2) | 1;
      v21 = cczp_bitlen(v12);
      result = ccansikdf_x963_iovec(v22, (v21 + 7) >> 3, v28, 1, v26, a5, a6);
    }
  }

  *(a1 + 16) = v20;
  return result;
}

uint64_t ccckg2_derive_sk(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t (**a6)(void, uint64_t, uint64_t *))
{
  v12 = *(a1 + 8);
  v13 = *v12;
  v14 = sizeof_struct_cche_galois_key();
  v15 = sizeof_struct_ccpolyzp_po2cyc();
  v21[0] = cc_malloc_clear(8 * ((v14 + v15 + 3 * v13 * v15 - 1) / v15 + 29 * v13));
  v16 = *v12;
  v17 = sizeof_struct_cche_galois_key();
  v18 = sizeof_struct_ccpolyzp_po2cyc();
  v21[1] = (v17 + v18 + 3 * v16 * v18 - 1) / v18 + 29 * v16;
  v21[2] = 0;
  v21[3] = cc_ws_alloc;
  v22 = cc_ws_free;
  if (!v21[0])
  {
    return 4294967283;
  }

  v19 = ccckg2_derive_sk_ws(v21, a1, a2, a3, a4, a5, a6);
  v22(v21);
  return v19;
}

uint64_t ccecies_export_eph_pub(char a1, uint64_t *a2, char *a3)
{
  if ((a1 & 2) != 0)
  {
    return ccec_export_pub(a2, a3);
  }

  if ((a1 & 4) != 0)
  {
    return ccec_compact_export_pub(a3, a2);
  }

  return 4294967289;
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

uint64_t ccn_cmpn(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = ccn_cmpn_public_value(a1, a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t cche_decrypt_ctx_nof_n(unsigned int *a1)
{
  v2 = sizeof_struct_ccpolyzp_po2cyc() + 7;
  v3 = *a1;
  v4 = sizeof_struct_ccpolyzp_po2cyc();
  v5 = sizeof_struct_ccpolyzp_po2cyc();
  v6 = (v5 - 1 + v4) / v5;
  v7 = sizeof_struct_ccpolyzp_po2cyc_ctx() + 7;
  if (v3 >= 0x80)
  {
    v8 = 128;
  }

  else
  {
    v8 = v3;
  }

  v9 = (sizeof_struct_ccrns_mul_modulus() + 7) >> 3;
  v10 = v6 + (v2 >> 3) + 2 * (v7 >> 3) + 4 * (v3 + v9 * v8) + 12;
  if (a1[1] <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = a1[1];
  }

  v12 = sizeof_struct_ccpolyzp_po2cyc_base_convert();
  v13 = 1;
  v14 = 2;
  do
  {
    v10 += v13 + (v14 + v13 + 2 * (v13 - 1)) * v9 + (v5 - 1 + v12) / v5;
    ++v13;
    v14 += 2;
  }

  while (v13 <= v11);
  return v10;
}

unint64_t CCHE_DECRYPT_CTX_INIT_WORKSPACE_N(unsigned int a1)
{
  v2 = CCPOLYZP_PO2CYC_CTX_INIT_WORKSPACE_N(1);
  result = CCPOLYZP_PO2CYC_BASE_CONVERT_INIT_WORKSPACE_N(a1);
  if (v2 > result)
  {
    return v2;
  }

  return result;
}

unint64_t CCHE_DECRYPT_WORKSPACE_N(uint64_t a1, int a2)
{
  v4 = cche_ciphertext_fresh_npolys();
  v5 = sizeof_struct_ccrns_mul_modulus();
  v6 = sizeof_struct_ccpolyzp_po2cyc();
  v7 = (v5 + v6 - 1) / v6 + ((a2 * a1) + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3)) * v4;
  v8 = CCPOLYZP_PO2CYC_BASE_CONVERT_DIVIDE_AND_ROUND_WORKSPACE_N(a1, a2);
  v9 = CCPOLYZP_PO2CYC_BASE_CONVERT_EXACT_POLY_WORKSPACE_N(a1) + 15;
  if (v8 > v9)
  {
    v9 = v8;
  }

  return v7 + v9;
}

uint64_t cche_decrypt(unint64_t *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v15 = timingsafe_enable_if_supported();
  v8 = cche_param_ctx_polynomial_degree(a2);
  v9 = CCHE_DECRYPT_WORKSPACE_N(v8, *(*(a3 + 24) + 4));
  v13[0] = cc_malloc_clear(8 * v9);
  v10 = cche_param_ctx_polynomial_degree(a2);
  v13[1] = CCHE_DECRYPT_WORKSPACE_N(v10, *(*(a3 + 24) + 4));
  v13[2] = 0;
  v13[3] = cc_ws_alloc;
  v14 = cc_ws_free;
  if (v13[0])
  {
    v11 = cche_decrypt_ws(v13, a1, a2, a3, a4);
    v14(v13);
  }

  else
  {
    v11 = 4294967283;
  }

  cc_disable_dit_with_sb(&v15);
  return v11;
}

uint64_t ccder_blob_decode_uint_strict(unsigned __int8 **a1, unint64_t a2, void *a3)
{
  v6[0] = 0;
  v6[1] = 0;
  result = ccder_blob_decode_range_strict(a1, 2, v6);
  if (result)
  {
    return ccder_blob_decode_uint_range(v6, a2, a3);
  }

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

double ccmode_factory_gcm_encrypt(void *a1, void *a2)
{
  *a1 = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8) + 5 * ((a2[1] + 7) & 0xFFFFFFFFFFFFFFF8) + 384;
  *&result = 4073947;
  a1[1] = 4073947;
  a1[2] = 1;
  a1[3] = ccmode_gcm_init;
  a1[4] = ccmode_gcm_set_iv;
  a1[5] = ccmode_gcm_aad;
  a1[6] = ccmode_gcm_encrypt;
  a1[7] = ccmode_gcm_finalize;
  a1[8] = ccmode_gcm_reset;
  a1[9] = a2;
  return result;
}

uint64_t ccss_shamir_share_generator_init(uint64_t *a1, int *a2, unsigned int (**a3)(void, unint64_t, uint64_t), uint64_t a4, unint64_t a5)
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

  v24 = v15;
  v16 = cczp_n((a2 + 2));
  v17 = sizeof_struct_ccpolyzp_po2cyc();
  v22[0] = cc_malloc_clear(8 * (5 * v16 + (v17 + 7) / v17) + 24);
  v18 = cczp_n((a2 + 2));
  v19 = sizeof_struct_ccpolyzp_po2cyc();
  v22[1] = 5 * v18 + (v19 + 7) / v19 + 3;
  v22[2] = 0;
  v22[3] = cc_ws_alloc;
  v23 = cc_ws_free;
  if (v22[0])
  {
    ccss_shamir_init_share_poly(a1, a2);
    share_poly_ws = ccss_shamir_generate_share_poly_ws(v22, a1, a3, a5, a4, 0);
    v23(v22);
  }

  else
  {
    share_poly_ws = 4294967283;
  }

  cc_disable_dit(&v24);
  return share_poly_ws;
}

uint64_t ccss_shamir_share_generator_init_with_secrets_less_than_prime(uint64_t *a1, int *a2, unsigned int (**a3)(void, unint64_t, uint64_t), uint64_t a4, unint64_t a5)
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

  v24 = v15;
  v16 = cczp_n((a2 + 2));
  v17 = sizeof_struct_ccpolyzp_po2cyc();
  v22[0] = cc_malloc_clear(8 * (5 * v16 + (v17 + 7) / v17) + 24);
  v18 = cczp_n((a2 + 2));
  v19 = sizeof_struct_ccpolyzp_po2cyc();
  v22[1] = 5 * v18 + (v19 + 7) / v19 + 3;
  v22[2] = 0;
  v22[3] = cc_ws_alloc;
  v23 = cc_ws_free;
  if (v22[0])
  {
    ccss_shamir_init_share_poly(a1, a2);
    share_poly_ws = ccss_shamir_generate_share_poly_ws(v22, a1, a3, a5, a4, 1);
    v23(v22);
  }

  else
  {
    share_poly_ws = 4294967283;
  }

  cc_disable_dit(&v24);
  return share_poly_ws;
}

uint64_t ccder_blob_decode_oid(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v3 = *a1;
  v6[0] = 0;
  v6[1] = 0;
  result = ccder_blob_decode_range(a1, 6, v6);
  if (result)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t ccmldsa_polyvec_matrix_expand_ntt_pointwise(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v18 = *MEMORY[0x29EDCA608];
  if (*(a1 + 4))
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v9 += ccmldsa_sample_rej_ntt_poly(v17, 0, v8, a3);
      v10 = (v8 & 0xFFFFFF) << 10;
      ccmldsa_ntt_pointwise(a2 + v10, v17, a4);
      LODWORD(v11) = *(a1 + 8);
      if (v11 >= 2)
      {
        v12 = 256;
        v13 = 1;
        do
        {
          v9 += ccmldsa_sample_rej_ntt_poly(v17, v13, v8, a3);
          ccmldsa_ntt_pointwise(v17, v17, a4 + 4 * (v12 & 0xFFFFFF00));
          ccmldsa_poly_add(a2 + v10, a2 + v10, v17);
          ++v13;
          v11 = *(a1 + 8);
          v12 += 256;
        }

        while (v13 < v11);
      }

      ++v8;
      v14 = *(a1 + 4);
    }

    while (v8 < v14);
    v15 = v14 << 8;
  }

  else
  {
    v9 = 0;
    v15 = 0;
    LODWORD(v11) = *(a1 + 8);
  }

  if (v9 >= v15 * v11)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ccmldsa_polyvecl_add(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 8))
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    do
    {
      result = ccmldsa_poly_add(a2 + ((4 * v8) & 0x3FFFFFC00), a3 + ((4 * v8) & 0x3FFFFFC00), a4 + ((4 * v8) & 0x3FFFFFC00));
      ++v9;
      v8 += 256;
    }

    while (v9 < *(v7 + 8));
  }

  return result;
}

uint64_t ccmldsa_polyvecl_reduce(uint64_t result, uint64_t a2)
{
  if (*(result + 8))
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      result = ccmldsa_poly_reduce(a2 + 4 * (v4 & 0xFFFFFF00));
      ++v5;
      v4 += 256;
    }

    while (v5 < *(v3 + 8));
  }

  return result;
}

uint64_t ccmldsa_polyvecl_ntt_forward(uint64_t result, uint64_t a2)
{
  if (*(result + 8))
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      result = ccmldsa_ntt_forward(a2 + 4 * (v4 & 0xFFFFFF00));
      ++v5;
      v4 += 256;
    }

    while (v5 < *(v3 + 8));
  }

  return result;
}

int32x4_t *ccmldsa_polyvecl_ntt_forward_eta(int32x4_t *result, uint64_t a2)
{
  if (result->i32[2])
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      result = ccmldsa_ntt_forward_eta((a2 + 4 * (v4 & 0xFFFFFF00)));
      ++v5;
      v4 += 256;
    }

    while (v5 < v3->u32[2]);
  }

  return result;
}

uint64_t ccmldsa_polyvecl_ntt_pointwise_poly(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 8))
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    do
    {
      result = ccmldsa_ntt_pointwise(a2 + ((4 * v8) & 0x3FFFFFC00), a3 + ((4 * v8) & 0x3FFFFFC00), a4);
      ++v9;
      v8 += 256;
    }

    while (v9 < *(v7 + 8));
  }

  return result;
}

int *ccmldsa_polyvecl_ntt_inverse(int *result, uint64_t a2)
{
  if (result[2])
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      result = ccmldsa_ntt_inverse((a2 + 4 * (v4 & 0xFFFFFF00)));
      ++v5;
      v4 += 256;
    }

    while (v5 < v3[2]);
  }

  return result;
}

uint64_t ccmldsa_polyvecl_bitpack_eta(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 8))
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *(result + 28);
    do
    {
      result = (*(v5 + 32))(a2 + v6, a3 + 4 * (v7 & 0xFFFFFF00));
      ++v8;
      v7 += 256;
      v6 += v9;
    }

    while (v8 < *(v5 + 8));
  }

  return result;
}

uint64_t ccmldsa_polyvecl_bitunpack_eta(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 8))
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *(result + 28);
    do
    {
      result = (*(v5 + 40))(a2 + 4 * (v7 & 0xFFFFFF00), a3 + v6);
      ++v8;
      v7 += 256;
      v6 += v9;
    }

    while (v8 < *(v5 + 8));
  }

  return result;
}

uint64_t ccmldsa_polyvecl_bitpack_z(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 8))
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      result = ccmldsa_poly_bitpack_z(a2 + (v6 & 0xFFFFFF80), a3 + 4 * (v7 & 0xFFFFFF00));
      ++v8;
      v7 += 256;
      v6 += 640;
    }

    while (v8 < *(v5 + 8));
  }

  return result;
}

uint64_t ccmldsa_polyvecl_bitunpack_z(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 8))
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      result = ccmldsa_poly_bitunpack_z(a2 + 4 * (v6 & 0xFFFFFF00), a3 + (v7 & 0xFFFFFF80));
      ++v8;
      v7 += 640;
      v6 += 256;
    }

    while (v8 < *(v5 + 8));
  }

  return result;
}

uint64_t ccmldsa_polyvecl_checknorm(uint64_t a1, uint64_t a2, int a3)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  while (!ccmldsa_poly_checknorm(a2 + 4 * (v6 & 0xFFFFFF00), a3))
  {
    ++v7;
    v6 += 256;
    if (v7 >= *(a1 + 8))
    {
      return 0;
    }
  }

  return 4294967150;
}

uint64_t ccmldsa_polyveck_add(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 4))
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    do
    {
      result = ccmldsa_poly_add(a2 + ((4 * v8) & 0x3FFFFFC00), a3 + ((4 * v8) & 0x3FFFFFC00), a4 + ((4 * v8) & 0x3FFFFFC00));
      ++v9;
      v8 += 256;
    }

    while (v9 < *(v7 + 4));
  }

  return result;
}

uint64_t ccmldsa_polyveck_sub(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 4))
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    do
    {
      result = ccmldsa_poly_sub(a2 + ((4 * v8) & 0x3FFFFFC00), a3 + ((4 * v8) & 0x3FFFFFC00), a4 + ((4 * v8) & 0x3FFFFFC00));
      ++v9;
      v8 += 256;
    }

    while (v9 < *(v7 + 4));
  }

  return result;
}

uint64_t ccmldsa_polyveck_reduce(uint64_t result, uint64_t a2)
{
  if (*(result + 4))
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      result = ccmldsa_poly_reduce(a2 + 4 * (v4 & 0xFFFFFF00));
      ++v5;
      v4 += 256;
    }

    while (v5 < *(v3 + 4));
  }

  return result;
}

uint64_t ccmldsa_polyveck_ntt_forward(uint64_t result, uint64_t a2)
{
  if (*(result + 4))
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      result = ccmldsa_ntt_forward(a2 + 4 * (v4 & 0xFFFFFF00));
      ++v5;
      v4 += 256;
    }

    while (v5 < *(v3 + 4));
  }

  return result;
}

int32x4_t *ccmldsa_polyveck_ntt_forward_eta(int32x4_t *result, uint64_t a2)
{
  if (result->i32[1])
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      result = ccmldsa_ntt_forward_eta((a2 + 4 * (v4 & 0xFFFFFF00)));
      ++v5;
      v4 += 256;
    }

    while (v5 < v3->u32[1]);
  }

  return result;
}

uint64_t ccmldsa_polyveck_ntt_pointwise_poly(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 4))
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    do
    {
      result = ccmldsa_ntt_pointwise(a2 + ((4 * v8) & 0x3FFFFFC00), a3 + ((4 * v8) & 0x3FFFFFC00), a4);
      ++v9;
      v8 += 256;
    }

    while (v9 < *(v7 + 4));
  }

  return result;
}

int *ccmldsa_polyveck_ntt_inverse(int *result, uint64_t a2)
{
  if (result[1])
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      result = ccmldsa_ntt_inverse((a2 + 4 * (v4 & 0xFFFFFF00)));
      ++v5;
      v4 += 256;
    }

    while (v5 < v3[1]);
  }

  return result;
}

uint64_t ccmldsa_polyveck_power2round(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 4))
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    do
    {
      result = ccmldsa_poly_power2round(a2 + ((4 * v8) & 0x3FFFFFC00), a3 + ((4 * v8) & 0x3FFFFFC00), a4 + ((4 * v8) & 0x3FFFFFC00));
      ++v9;
      v8 += 256;
    }

    while (v9 < *(v7 + 4));
  }

  return result;
}

void ccmldsa_polyveck_shiftl(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      ccmldsa_poly_shiftl(a2 + 4 * (v4 & 0xFFFFFF00));
      ++v5;
      v4 += 256;
    }

    while (v5 < *(a1 + 4));
  }
}

uint64_t ccmldsa_polyveck_caddq(uint64_t result, uint64_t a2)
{
  if (*(result + 4))
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      result = ccmldsa_poly_caddq(a2 + 4 * (v4 & 0xFFFFFF00));
      ++v5;
      v4 += 256;
    }

    while (v5 < *(v3 + 4));
  }

  return result;
}

uint64_t ccmldsa_polyveck_decompose(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 4))
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    do
    {
      result = ccmldsa_poly_decompose(a2 + ((4 * v8) & 0x3FFFFFC00), a3 + ((4 * v8) & 0x3FFFFFC00), a4 + ((4 * v8) & 0x3FFFFFC00));
      ++v9;
      v8 += 256;
    }

    while (v9 < *(v7 + 4));
  }

  return result;
}

uint64_t ccmldsa_polyveck_make_hint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a1 + 4))
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  LODWORD(v10) = 0;
  do
  {
    v10 = ccmldsa_poly_make_hint(a2 + ((4 * v8) & 0x3FFFFFC00), a3 + ((4 * v8) & 0x3FFFFFC00), a4 + ((4 * v8) & 0x3FFFFFC00)) + v10;
    ++v9;
    v8 += 256;
  }

  while (v9 < *(a1 + 4));
  return v10;
}

uint64_t ccmldsa_polyveck_use_hint(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 4))
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    do
    {
      result = ccmldsa_poly_use_hint(a2 + ((4 * v6) & 0x3FFFFFC00), a3 + ((4 * v6) & 0x3FFFFFC00));
      ++v7;
      v6 += 256;
    }

    while (v7 < *(v5 + 4));
  }

  return result;
}

uint64_t ccmldsa_polyveck_bitpack_eta(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 4))
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *(result + 28);
    do
    {
      result = (*(v5 + 32))(a2 + v6, a3 + 4 * (v7 & 0xFFFFFF00));
      ++v8;
      v7 += 256;
      v6 += v9;
    }

    while (v8 < *(v5 + 4));
  }

  return result;
}

uint64_t ccmldsa_polyveck_bitunpack_eta(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 4))
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *(result + 28);
    do
    {
      result = (*(v5 + 40))(a2 + 4 * (v7 & 0xFFFFFF00), a3 + v6);
      ++v8;
      v7 += 256;
      v6 += v9;
    }

    while (v8 < *(v5 + 4));
  }

  return result;
}

uint64_t ccmldsa_polyveck_bitpack_t0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 4))
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      result = ccmldsa_poly_bitpack_t0(a2 + (v6 & 0xFFFFFFE0), (a3 + 4 * (v7 & 0xFFFFFF00)));
      ++v8;
      v7 += 256;
      v6 += 416;
    }

    while (v8 < *(v5 + 4));
  }

  return result;
}

uint64_t ccmldsa_polyveck_bitunpack_t0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 4))
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      result = ccmldsa_poly_bitunpack_t0(a2 + 4 * (v6 & 0xFFFFFF00), a3 + (v7 & 0xFFFFFFE0));
      ++v8;
      v7 += 416;
      v6 += 256;
    }

    while (v8 < *(v5 + 4));
  }

  return result;
}

uint64_t ccmldsa_polyveck_bitpack_t1(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 4))
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      result = ccmldsa_poly_bitpack_t1(a2 + (v6 & 0xFFFFFFC0), a3 + 4 * (v7 & 0xFFFFFF00));
      ++v8;
      v7 += 256;
      v6 += 320;
    }

    while (v8 < *(v5 + 4));
  }

  return result;
}

uint64_t ccmldsa_polyveck_bitunpack_t1(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 4))
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      result = ccmldsa_poly_bitunpack_t1(a2 + 4 * (v6 & 0xFFFFFF00), a3 + (v7 & 0xFFFFFFC0));
      ++v8;
      v7 += 320;
      v6 += 256;
    }

    while (v8 < *(v5 + 4));
  }

  return result;
}

uint64_t ccmldsa_polyveck_checknorm(uint64_t a1, uint64_t a2, int a3)
{
  if (!*(a1 + 4))
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  while (!ccmldsa_poly_checknorm(a2 + 4 * (v6 & 0xFFFFFF00), a3))
  {
    ++v7;
    v6 += 256;
    if (v7 >= *(a1 + 4))
    {
      return 0;
    }
  }

  return 4294967150;
}

uint64_t cche_ciphertext_fwd_ntt_internal(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v2 = 0;
  v3 = (a1 + 24);
  while (1)
  {
    v4 = *v3;
    v5 = sizeof_struct_ccpolyzp_po2cyc();
    result = ccpolyzp_po2cyc_fwd_ntt(&v3[((v4[1] * *v4) + ((v5 + 7) >> 3)) * v2]);
    if (result)
    {
      break;
    }

    if (++v2 >= *(a1 + 8))
    {
      return 0;
    }
  }

  return result;
}

uint64_t cche_ciphertext_fwd_ntt(uint64_t a1)
{
  v4 = timingsafe_enable_if_supported();
  v2 = cche_ciphertext_fwd_ntt_internal(a1);
  cc_disable_dit_with_sb(&v4);
  return v2;
}

uint64_t cche_ciphertext_inv_ntt_internal(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v2 = 0;
  v3 = (a1 + 24);
  while (1)
  {
    v4 = *v3;
    v5 = sizeof_struct_ccpolyzp_po2cyc();
    result = ccpolyzp_po2cyc_inv_ntt(&v3[((v4[1] * *v4) + ((v5 + 7) >> 3)) * v2]);
    if (result)
    {
      break;
    }

    if (++v2 >= *(a1 + 8))
    {
      return 0;
    }
  }

  return result;
}

uint64_t cche_ciphertext_inv_ntt(uint64_t a1)
{
  v4 = timingsafe_enable_if_supported();
  v2 = cche_ciphertext_inv_ntt_internal(a1);
  cc_disable_dit_with_sb(&v4);
  return v2;
}

unint64_t ccpad_xts_decrypt(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = *MEMORY[0x29EDCA608];
  v17 = timingsafe_enable_if_supported();
  v12 = a4 & 0xF;
  if ((a4 & 0xF) != 0)
  {
    v13 = a4 & 0xFFFFFFFFFFFFFFF0;
    v14 = (*(a1 + 48))(a2, a3, (a4 >> 4) - 1, a5, a6);
    v19 = *v14;
    ccmode_xts_mult_alpha(v14);
    (*(a1 + 48))(a2, a3, 1, a5 + (a4 & 0xFFFFFFFFFFFFFFF0) - 16, v18);
    v15 = 0;
    *v14 = v19;
    do
    {
      v19.i8[v15] = *(a5 + v13 + v15);
      *(a6 + v13 + v15) = v18[v15];
      ++v15;
    }

    while (v12 != v15);
    if ((v15 - 1) <= 0xE)
    {
      memcpy((&v19 | v12), &v18[v12], 16 - v12);
    }

    (*(a1 + 48))(a2, a3, 1, &v19, a6 + (a4 & 0xFFFFFFFFFFFFFFF0) - 16);
  }

  else
  {
    (*(a1 + 48))(a2, a3, a4 >> 4, a5, a6);
  }

  cc_disable_dit_with_sb(&v17);
  return a4;
}

uint64_t fipspost_post_tdes_ecb(char a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = ccdes3_ecb_decrypt_mode();
  if ((a1 & 0x10) != 0)
  {
    v3 = &invalid_key;
  }

  else
  {
    v3 = &valid_key;
  }

  if (ccecb_one_shot(v2, 24, v3, 1, &ciphertext_data, v7))
  {
    v4 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: des3_ecb_decrypt one_shot\n", v4, "fipspost_post_tdes_ecb_decrypt", 40);
    return 4294967223;
  }

  else
  {
    result = cc_cmp_safe(8, v7, &plaintext_data);
    if (result)
    {
      v6 = mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: des3_ecb_decrypt cmp\n", v6, "fipspost_post_tdes_ecb_decrypt", 45);
      return 4294967221;
    }
  }

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

void *ccaes_xts_encrypt_mode()
{
  if (fipspost_trace_is_active())
  {
    fipspost_trace_call("ccaes_xts_encrypt_mode");
  }

  return &ccaes_arm_xts_encrypt_mode;
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

uint64_t cczp_mul(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = timingsafe_enable_if_supported();
  v8 = cczp_n(a1);
  v11[0] = cc_malloc_clear(32 * v8);
  v11[1] = 4 * cczp_n(a1);
  v11[2] = 0;
  v11[3] = cc_ws_alloc;
  v12 = cc_ws_free;
  if (v11[0])
  {
    (*(*(a1 + 16) + 16))(v11, a1, a2, a3, a4);
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

uint64_t ccvrf_irtf_ed25519_string_to_point(int *a1, uint64_t a2)
{
  if (ge_frombytes_vartime(a1, a2))
  {
    return 4294967209;
  }

  else
  {
    return 0;
  }
}

__n128 ccvrf_irtf_ed25519_decode_proof(uint64_t a1, int *a2, _OWORD *a3, uint64_t a4)
{
  if (!ge_frombytes_vartime(a2, a1))
  {
    *a3 = *(a1 + 32);
    result = *(a1 + 48);
    v8 = *(a1 + 64);
    *a4 = result;
    *(a4 + 16) = v8;
  }

  return result;
}

uint64_t ccvrf_irtf_ed25519_encode_proof(int *a1, _OWORD *a2, _OWORD *a3, _OWORD *a4)
{
  ge_p3_tobytes(a4, a1);
  a4[2] = *a2;
  v7 = a3[1];
  a4[3] = *a3;
  a4[4] = v7;
  return 0;
}

uint64_t ccvrf_irtf_ed25519_hash_points(uint64_t a1, int **a2, uint64_t a3, void *a4)
{
  v14[16] = *MEMORY[0x29EDCA608];
  v13 = 516;
  if (a3)
  {
    v8 = v14;
    v9 = a3;
    do
    {
      v10 = *a2++;
      ge_p3_tobytes(v8, v10);
      v8 += 4;
      --v9;
    }

    while (v9);
  }

  ccdigest_internal(*(a1 + 40), (32 * a3) | 2, &v13, __src);
  memcpy(a4, __src, *(a1 + 32) >> 1);
  return cc_clear(0x40uLL, __src);
}

uint64_t ccpolyzp_po2cyc_init(void *a1, _DWORD *a2, uint64_t *a3)
{
  *a1 = a2;
  v3 = *a2 * a2[1];
  if (v3)
  {
    v4 = a1 + 1;
    do
    {
      v5 = *a3++;
      *v4++ = v5;
      --v3;
    }

    while (v3);
  }

  return 0;
}

_DWORD **ccpolyzp_po2cyc_coeff_negate(_DWORD **result, int **a2)
{
  v2 = (*a2)[1];
  if (v2)
  {
    v3 = 0;
    v4 = **a2;
    do
    {
      v5 = (*a2)[1] - 1;
      v6 = *a2;
      if (v5 > v3)
      {
        v6 = *a2;
        do
        {
          v6 = *(v6 + 14);
          --v5;
        }

        while (v5 > v3);
      }

      if (v4)
      {
        v7 = *(v6 + 2);
        v8 = &a2[**a2 * v3 + 1];
        v9 = &result[**result * v3 + 1];
        v10 = v4;
        do
        {
          v11 = *v8++;
          *v9++ = (v7 - v11) & -(v11 != 0);
          --v10;
        }

        while (v10);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

_DWORD **ccpolyzp_po2cyc_coeff_add(_DWORD **result, int **a2, _DWORD **a3)
{
  v3 = (*a2)[1];
  if (v3)
  {
    v4 = 0;
    v5 = **a2;
    do
    {
      v6 = (*a2)[1] - 1;
      v7 = *a2;
      if (v6 > v4)
      {
        v7 = *a2;
        do
        {
          v7 = *(v7 + 14);
          --v6;
        }

        while (v6 > v4);
      }

      if (v5)
      {
        v8 = *(v7 + 2);
        v9 = &a3[**a3 * v4 + 1];
        v10 = &a2[**a2 * v4 + 1];
        v11 = &result[**result * v4 + 1];
        v12 = v5;
        do
        {
          v14 = *v10++;
          v13 = v14;
          v15 = *v9++;
          *v11++ = (((v13 - v8 + v15) >> 63) & v8) + v13 - v8 + v15;
          --v12;
        }

        while (v12);
      }

      ++v4;
    }

    while (v4 != v3);
  }

  return result;
}

_DWORD **ccpolyzp_po2cyc_eval_mul(_DWORD **result, int **a2, _DWORD **a3)
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

uint64_t ccpolyzp_po2cyc_coeff_scalar_mul_ws(uint64_t result, _DWORD **a2, int **a3, uint64_t a4)
{
  v4 = (*a3)[1];
  if (v4)
  {
    v8 = result;
    v9 = 0;
    v10 = **a3;
    v11 = a3 + 1;
    v12 = a2 + 1;
    do
    {
      v13 = *a3;
      v14 = (*a3)[1];
      if (v9 < (v14 - 1))
      {
        v15 = v14 - 2;
        do
        {
          v13 = *(v13 + 14);
        }

        while (v9 < v15--);
      }

      v17 = *(v13 + 2);
      v21 = 0;
      v22 = 0;
      v23 = 0;
      result = ccrns_mul_modulus_init_ws(v8, &v21, v17, *(a4 + 8 * v9));
      if (v10)
      {
        for (i = 0; i != v10; ++i)
        {
          v19 = v11[(i + v9 * **a3)];
          v20 = v22 * v19 + v21 * ~((v23 * v19) >> 64);
          v12[(i + v9 * **a2)] = (v20 + ((v20 >> 63) & v21));
        }
      }

      ++v9;
    }

    while (v9 != v4);
  }

  return result;
}

void *ccsha224_di()
{
  if (fipspost_trace_is_active())
  {
    fipspost_trace_call("ccsha224_di");
  }

  return &ccsha224_vng_arm_di;
}

uint64_t ccwrap_auth_encrypt_withiv_internal(uint64_t a1, uint64_t a2, size_t a3, const void *a4, uint64_t *a5, void *a6, uint64_t *a7)
{
  v25 = *MEMORY[0x29EDCA608];
  v14 = ccwrap_wrapped_size(a3);
  *a5 = v14;
  if (ccwrap_argsvalid(a1, a3, v14))
  {
    v22 = a6;
    v23 = *a7;
    v15 = a6 + 1;
    memmove(a6 + 1, a4, a3);
    v16 = 0;
    v17 = 1;
    do
    {
      if (a3 >= 8)
      {
        v18 = v15;
        v19 = v17;
        v20 = a3 >> 3;
        do
        {
          v24 = *v18;
          (*(a1 + 24))(a2, 1, &v23, &v23);
          v23 ^= bswap64(v19);
          *v18++ = v24;
          ++v19;
          --v20;
        }

        while (v20);
      }

      ++v16;
      v17 += a3 >> 3;
    }

    while (v16 != 6);
    result = 0;
    *v22 = v23;
  }

  else
  {
    *a5 = 0;
    return 4294967289;
  }

  return result;
}

uint64_t ccwrap_auth_encrypt_withiv(uint64_t a1, uint64_t a2, size_t a3, const void *a4, uint64_t *a5, void *a6, uint64_t *a7)
{
  v16 = timingsafe_enable_if_supported();
  v14 = ccwrap_auth_encrypt_withiv_internal(a1, a2, a3, a4, a5, a6, a7);
  cc_disable_dit_with_sb(&v16);
  return v14;
}

uint64_t ccdh_import_pub(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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

  v19 = v13;
  ccdh_ctx_init(a1, a4);
  v14 = ccdh_gp_n(a1);
  if (ccn_read_uint_internal(v14, a4 + 2, a2, a3))
  {
    v15 = 4294967244;
  }

  else
  {
    v16 = ccdh_gp_n(a1);
    v17 = ccdh_gp_prime(a1);
    if (ccn_cmp_public_value(v16, a4 + 2, v17) >= 0)
    {
      v15 = 4294967247;
    }

    else
    {
      v15 = 0;
    }
  }

  cc_disable_dit(&v19);
  return v15;
}

uint64_t ccmode_xts_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (cc_cmp_safe_internal(a3, a4, a5))
  {
    v10 = 0;
  }

  else
  {
    v10 = 4294967132;
  }

  (*(a1 + 32))(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t ccapsic_client_init_internal(uint64_t **a1, uint64_t **a2, uint64_t *a3, size_t a4, const void *a5)
{
  v9 = *a2;
  *a1 = *a2;
  a1[1] = a3;
  a1[2] = 0;
  v10 = *v9;
  v11 = sizeof_struct_ccpolyzp_po2cyc();
  v25[0] = cc_malloc_clear(8 * (5 * v10 + (v11 + 7) / v11) + 24);
  v12 = *v9;
  v13 = sizeof_struct_ccpolyzp_po2cyc();
  v25[1] = 5 * v12 + (v13 + 7) / v13 + 3;
  v25[2] = 0;
  v25[3] = cc_ws_alloc;
  v26 = cc_ws_free;
  if (v25[0])
  {
    if (a4 - 129 < 0xFFFFFFFFFFFFFF80)
    {
      goto LABEL_9;
    }

    v15 = *a2;
    v14 = a2 + 2;
    if (ccec_is_point_at_infinity(v15, v14))
    {
      goto LABEL_9;
    }

    memcpy(&(&a1[9 * **a1 + 24])[2 * **a1], v14, 24 * *v9);
    v16 = ccec_projectify_ws(v25, v9);
    if (v16 || (v16 = ccec_projectify_ws(v25, v9), v16))
    {
      v18 = v16;
      goto LABEL_15;
    }

    v17 = *a1;
    if (v17 == ccec_cp_256())
    {
      v19 = &cch2c_p256_sha256_sswu_ro_info;
    }

    else if (v17 == ccec_cp_384())
    {
      v19 = &cch2c_p384_sha512_sswu_ro_info;
    }

    else
    {
      if (v17 != ccec_cp_521())
      {
LABEL_9:
        v18 = 4294967289;
LABEL_15:
        v26(v25);
        return v18;
      }

      v19 = &cch2c_p521_sha512_sswu_ro_info;
    }

    a1[2] = v19;
    v20 = cch2c_name(v19);
    v21 = strlen(v20);
    v22 = cch2c_name(a1[2]);
    memcpy(a1 + 4, v22, v21);
    v23 = a1 + v21 + 32;
    *v23 = 1230196801;
    v23[4] = 67;
    memcpy(v23 + 5, a5, a4);
    v18 = 0;
    a1[3] = (a4 + v21 + 5);
    goto LABEL_15;
  }

  return 4294967283;
}

uint64_t ccapsic_client_init(uint64_t **a1, uint64_t **a2, uint64_t *a3, size_t a4, const void *a5)
{
  v12 = timingsafe_enable_if_supported();
  inited = ccapsic_client_init_internal(a1, a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return inited;
}

uint64_t cckem_kyber1024_generate_key(uint64_t a1, uint64_t (**a2)(void, uint64_t, _OWORD *))
{
  v4 = (cckem_public_ctx() + 8);
  v5 = (a1 + *(*a1 + 16) + 8);

  return ccmlkem_kem_keypair(cckyber1024_params, v4, v5, a2);
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

uint64_t fipspost_trace_start(int a1, uint64_t (*a2)(void, void, void), uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  fipspost_trace_hook_cnt = 0;
  fipspost_trace_fips_mode = a1;
  fipspost_trace_writer = a2;
  fipspost_trace_writer_ctx = a3;
  if ((a1 & 0x80) != 0 && a2 && (v10 = 0x166707472, v11 = a1, v12[0] = fipspost_precalc_hmac, v12[1] = unk_299DBE5D8, v13 = 1, !a2(a3, &v10, 52)))
  {
    v4 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: TRACE: magic: %x\n", v4, "fipspost_trace_start", 129, v10);
    v5 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: TRACE: version: %x\n", v5, "fipspost_trace_start", 130, HIDWORD(v10));
    v6 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: TRACE: fips_mode: %x\n", v6, "fipspost_trace_start", 131, v11);
    v7 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: TRACE: integ_mac: ", v7, "fipspost_trace_start", 132);
    for (i = 0; i != 32; ++i)
    {
      printf("%02X", *(v12 + i));
    }

    putchar(10);
    v9 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: TRACE: system_flags: %llx\n", v9, "fipspost_trace_start", 133, v13);
    fipspost_trace_hook_idx("-");
    fipspost_trace_hook_idx("?");
    return 0;
  }

  else
  {
    fipspost_trace_fips_mode = 0;
    fipspost_trace_writer = 0;
    result = 0xFFFFFFFFLL;
    fipspost_trace_hook_cnt = 0;
  }

  return result;
}

void fipspost_trace_clear()
{
  fipspost_trace_fips_mode = 0;
  fipspost_trace_writer = 0;
  fipspost_trace_hook_cnt = 0;
}

uint64_t fipspost_trace_is_active()
{
  if (fipspost_trace_writer)
  {
    return fipspost_trace_fips_mode >> 7;
  }

  else
  {
    return 0;
  }
}

uint64_t fipspost_trace_hook_idx(uint64_t a1)
{
  if (a1)
  {
    v1 = fipspost_trace_hook_cnt;
    if (!fipspost_trace_hook_cnt)
    {
LABEL_9:
      fipspost_trace_hooks[fipspost_trace_hook_cnt] = a1;
      fipspost_trace_hook_cnt = v1 + 1;
      return v1;
    }

    v2 = 0;
    while (1)
    {
      v3 = fipspost_trace_hooks[v2];
      if (!v3)
      {
        break;
      }

      if (v3 == a1)
      {
        return v2;
      }

      if (fipspost_trace_hook_cnt == ++v2)
      {
        if (fipspost_trace_hook_cnt != 240)
        {
          goto LABEL_9;
        }

        return -16;
      }
    }
  }

  return -16;
}

uint64_t fipspost_trace_call(uint64_t result)
{
  if ((fipspost_trace_fips_mode & 0x80) == 0 || !fipspost_trace_writer || (v1 = result, v2 = mach_absolute_time(), printf("FIPSPOST_USER [%llu] %s:%d: TRACE: event: %s\n", v2, "fipspost_trace_call", 172, v1), result = fipspost_trace_hook_idx(v1), v3 = result, result > 0xEF) || (result = fipspost_trace_writer(fipspost_trace_writer_ctx, &v3, 1), result))
  {
    fipspost_trace_fips_mode = 0;
    fipspost_trace_writer = 0;
    fipspost_trace_hook_cnt = 0;
  }

  return result;
}

uint64_t fipspost_trace_end(int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if ((fipspost_trace_fips_mode & 0x80) != 0 && fipspost_trace_writer)
  {
    v3 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: TRACE: end: %d\n", v3, "fipspost_trace_end", 204, a1);
    if (a1)
    {
      snprintf(__str, 0x1CuLL, "-POST_FAILURE: 0x%08X", a1);
      v4 = __str;
    }

    else
    {
      v4 = "-POST_SUCCESS";
    }

    fipspost_trace_call(v4);
    result = 0xFFFFFFFFLL;
    if ((fipspost_trace_fips_mode & 0x80) != 0)
    {
      if (fipspost_trace_writer)
      {
        v7 = -15;
        if (!fipspost_trace_writer(fipspost_trace_writer_ctx, &v7, 1) && !fipspost_trace_writer(fipspost_trace_writer_ctx, &fipspost_trace_hook_cnt, 1))
        {
          if (!fipspost_trace_hook_cnt)
          {
            result = 0;
            goto LABEL_11;
          }

          v5 = 0;
          while (1)
          {
            v6 = strlen(fipspost_trace_hooks[v5]) + 1;
            if (v6 > 0xFF)
            {
              break;
            }

            v7 = v6;
            if (fipspost_trace_writer(fipspost_trace_writer_ctx, &v7, 1))
            {
              break;
            }

            result = fipspost_trace_writer(fipspost_trace_writer_ctx, fipspost_trace_hooks[v5], v6);
            if (result)
            {
              break;
            }

            if (++v5 >= fipspost_trace_hook_cnt)
            {
              goto LABEL_11;
            }
          }
        }

        result = 0xFFFFFFFFLL;
      }
    }
  }

LABEL_11:
  fipspost_trace_fips_mode = 0;
  fipspost_trace_writer = 0;
  fipspost_trace_hook_cnt = 0;
  return result;
}

double ccmode_factory_siv_hmac_decrypt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 600;
  *a1 = xmmword_299DA4DC0;
  *(a1 + 16) = ccmode_siv_hmac_init;
  *(a1 + 24) = ccmode_siv_hmac_nonce;
  *(a1 + 32) = ccmode_siv_hmac_auth;
  *(a1 + 40) = ccmode_siv_hmac_decrypt;
  *(a1 + 48) = ccmode_siv_hmac_reset;
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  return result;
}

uint64_t ccaes_cfb_decrypt_vng(int8x16_t *a1, unint64_t a2, int8x16_t *a3, int8x16_t *a4)
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
      v17 = a3->i8[v14];
      *(v16 + v14) = v17;
      a4->i8[v14] = *(v15 + v14) ^ v17;
      v18 = v14 + 1;
      if (v9 + v14 == 15)
      {
        break;
      }

      v13 = a2 - 1 == v14++;
    }

    while (!v13);
    v6 = a2 - v18;
    v9 += v18;
    v4 = (a4 + v18);
    v5 = (a3 + v18);
  }

  if (v6 >= 0x10)
  {
    ccaes_cfb_decrypt_vng_vector(i8, v12, v6 >> 4, v5, v4);
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
        if (AccelerateCrypto_AES_encrypt(v12, v8, i8))
        {
          return 0xFFFFFFFFLL;
        }

        v9 = 0;
      }

      v19 = v5->i8[0];
      v5 = (v5 + 1);
      v12->i8[v9] = v19;
      v20 = v9 + 1;
      v4->i8[0] = v8->i8[v9] ^ v19;
      v4 = (v4 + 1);
      ++v9;
      if (!--v6)
      {
        goto LABEL_19;
      }
    }
  }

  v20 = v9;
LABEL_19:
  result = 0;
  a1->i64[1] = v20;
  return result;
}

size_t ccpad_cts3_encrypt(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4, _BYTE *a5, char *a6)
{
  v22 = *MEMORY[0x29EDCA608];
  v20 = timingsafe_enable_if_supported();
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

  if (v14 != 2 * v12)
  {
    cc_clear(2 * v12, __src);
    __memcpy_chk();
    a5 = __src;
  }

  (*(a1 + 24))(a2, a3, 2, a5, __src);
  v16 = 0;
  v17 = &__src[v12];
  do
  {
    v18 = __src[v16];
    __src[v16] = v17[v16];
    v17[v16++] = v18;
  }

  while (v12 != v16);
  memcpy(a6, __src, v14);
  cc_disable_dit_with_sb(&v20);
  return a4;
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

int64x2_t AccelerateCrypto_SHA3_keccak_2x_hwassist(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a2[4];
  v11 = a2[5];
  v12 = a1[6];
  v13 = a1[7];
  v14 = a2[6];
  v15 = a2[7];
  v16 = a1[8];
  v17 = a1[9];
  v18 = a2[8];
  v19 = a2[9];
  v20 = a1[10];
  v21 = a1[11];
  v22 = a2[10];
  v23 = a2[11];
  *&_Q24 = a1[12].i64[0];
  *(&_Q24 + 1) = a2[12].i64[0];
  _Q0 = vzip1q_s64(*a1, *a2);
  _Q1 = vzip2q_s64(*a1, *a2);
  _Q2 = vzip1q_s64(v2, v3);
  _Q3 = vzip2q_s64(v2, v3);
  _Q4 = vzip1q_s64(v4, v6);
  _Q5 = vzip2q_s64(v4, v6);
  _Q6 = vzip1q_s64(v5, v7);
  _Q7 = vzip2q_s64(v5, v7);
  _Q8 = vzip1q_s64(v8, v10);
  _Q9 = vzip2q_s64(v8, v10);
  _Q10 = vzip1q_s64(v9, v11);
  _Q11 = vzip2q_s64(v9, v11);
  _Q12 = vzip1q_s64(v12, v14);
  _Q13 = vzip2q_s64(v12, v14);
  _Q14 = vzip1q_s64(v13, v15);
  _Q15 = vzip2q_s64(v13, v15);
  _Q16 = vzip1q_s64(v16, v18);
  _Q17 = vzip2q_s64(v16, v18);
  _Q18 = vzip1q_s64(v17, v19);
  _Q19 = vzip2q_s64(v17, v19);
  _Q20 = vzip1q_s64(v20, v22);
  _Q21 = vzip2q_s64(v20, v22);
  _Q22 = vzip1q_s64(v21, v23);
  _Q23 = vzip2q_s64(v21, v23);
  v49 = 0;
  v50 = &unk_299DB0C28;
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

    v96 = vld1q_dup_f64(v50);
    __asm
    {
      BCAX            V7.16B, V29.16B, V9.16B, V30.16B
      BCAX            V8.16B, V30.16B, V27.16B, V9.16B
      BCAX            V9.16B, V9.16B, V6.16B, V27.16B
      BCAX            V5.16B, V27.16B, V29.16B, V6.16B
    }

    ++v50;
    __asm { BCAX            V6.16B, V6.16B, V30.16B, V29.16B }

    v49 += 8;
    _Q0 = veorq_s8(_Q0, v96);
  }

  while (v49 != 192);
  v97 = vzip1q_s64(_Q0, _Q1);
  v98 = vzip2q_s64(_Q0, _Q1);
  result = vzip1q_s64(_Q2, _Q3);
  *a1 = v97;
  a1[1] = result;
  *a2 = v98;
  a2[1] = vzip2q_s64(_Q2, _Q3);
  a1[2] = vzip1q_s64(_Q4, _Q5);
  a1[3] = vzip1q_s64(_Q6, _Q7);
  a2[2] = vzip2q_s64(_Q4, _Q5);
  a2[3] = vzip2q_s64(_Q6, _Q7);
  a1[4] = vzip1q_s64(_Q8, _Q9);
  a1[5] = vzip1q_s64(_Q10, _Q11);
  a2[4] = vzip2q_s64(_Q8, _Q9);
  a2[5] = vzip2q_s64(_Q10, _Q11);
  a1[6] = vzip1q_s64(_Q12, _Q13);
  a1[7] = vzip1q_s64(_Q14, _Q15);
  a2[6] = vzip2q_s64(_Q12, _Q13);
  a2[7] = vzip2q_s64(_Q14, _Q15);
  a1[8] = vzip1q_s64(_Q16, _Q17);
  a1[9] = vzip1q_s64(_Q18, _Q19);
  a2[8] = vzip2q_s64(_Q16, _Q17);
  a2[9] = vzip2q_s64(_Q18, _Q19);
  a1[10] = vzip1q_s64(_Q20, _Q21);
  a1[11] = vzip1q_s64(_Q22, _Q23);
  a2[10] = vzip2q_s64(_Q20, _Q21);
  a2[11] = vzip2q_s64(_Q22, _Q23);
  a1[12].i64[0] = _Q24;
  a2[12].i64[0] = *(&_Q24 + 1);
  return result;
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

uint64_t ccrng_uniform(uint64_t (**a1)(void, uint64_t, unint64_t *), unint64_t a2, unint64_t *a3)
{
  v8 = timingsafe_enable_if_supported();
  v6 = ccrng_uniform_internal(a1, a2, a3);
  cc_disable_dit_with_sb(&v8);
  return v6;
}

void *ccsha512_256_di()
{
  if (fipspost_trace_is_active())
  {
    fipspost_trace_call("ccsha512_256_di");
  }

  if (MEMORY[0xFFFFFC010] < 0)
  {
    return &ccsha512_256_vng_arm_hw_di;
  }

  else
  {
    return &ccsha512_256_vng_arm_di;
  }
}

uint64_t cche_ciphertext_coeff_decompose_nptexts_internal(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = *(*(a1 + 24) + 4);
  do
  {
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        if (a2)
        {
          v10 = *(a2 + 4 * (v5 + i));
        }

        else
        {
          v10 = 0;
        }

        v6 = cche_ciphertext_coeff_decompose_nptexts_rns(a1, i, v10) + v6;
      }
    }

    ++v7;
    v5 += v8;
  }

  while (v7 != v2);
  return v6;
}

uint64_t cche_ciphertext_coeff_decompose_nptexts_rns(uint64_t *a1, unsigned int a2, int a3)
{
  v6 = cche_param_ctx_plaintext_modulus(*a1);
  v7 = a1[3];
  v8 = *(v7 + 4);
  while (--v8 > a2)
  {
    v7 = *(v7 + 112);
  }

  v9 = __clz(v6);
  v10 = *(v7 + 16);
  v11 = __clz(v10);
  if ((v10 ^ (v10 - 1)) > v10 - 1)
  {
    v12 = 63;
  }

  else
  {
    v12 = 64;
  }

  return (v12 - (v9 + a3 + v11) + 62) / (63 - v9);
}

uint64_t cche_ciphertext_coeff_decompose_nptexts(uint64_t a1, uint64_t a2)
{
  v6 = timingsafe_enable_if_supported();
  v4 = cche_ciphertext_coeff_decompose_nptexts_internal(a1, a2);
  cc_disable_dit_with_sb(&v6);
  return v4;
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

unint64_t ccn_write_int_public_value(unint64_t a1, uint64_t *a2, unint64_t a3, _BYTE *a4)
{
  if ((ccn_bitlen_public_value(a1, a2) & 7) == 0)
  {
    *a4++ = 0;
    --a3;
  }

  return ccn_write_uint_public_value(a1, a2, a3, a4);
}

uint64_t ccn_write_int(unint64_t a1, uint64_t *a2, unint64_t a3, _BYTE *a4)
{
  v9 = timingsafe_enable_if_supported();
  ccn_write_int_public_value(a1, a2, a3, a4);
  return cc_disable_dit_with_sb(&v9);
}

uint64_t ccrng_sequence_init(uint64_t (**a1)(uint64_t a1, uint64_t a2, uint64_t a3), uint64_t (*a2)(uint64_t a1, uint64_t a2, uint64_t a3), uint64_t (*a3)(uint64_t a1, uint64_t a2, uint64_t a3))
{
  v7 = timingsafe_enable_if_supported();
  *a1 = sequence_repeat_generate;
  a1[1] = a3;
  a1[2] = a2;
  cc_disable_dit_with_sb(&v7);
  return 0;
}

uint64_t sequence_repeat_generate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16))
  {
    return 4294967291;
  }

  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      *(a3 + i) = *(*(a1 + 8) + i % *(a1 + 16));
    }
  }

  return 0;
}

uint64_t ccrng_sequence_non_repeat_init(uint64_t (**a1)(uint64_t a1, unint64_t a2, uint64_t a3), uint64_t (*a2)(uint64_t a1, unint64_t a2, uint64_t a3), uint64_t (*a3)(uint64_t a1, unint64_t a2, uint64_t a3))
{
  *a1 = non_repeat_sequence_generate;
  a1[1] = a3;
  a1[2] = a2;
  return 0;
}

uint64_t non_repeat_sequence_generate(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 < a2)
  {
    return 4294967286;
  }

  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      *(a3 + i) = *(*(a1 + 8) + i);
    }

    v3 = *(a1 + 16);
  }

  v4 = 0;
  *(a1 + 8) += a2;
  *(a1 + 16) = v3 - a2;
  return v4;
}

uint64_t ccrsa_num_mr_iterations(unint64_t a1)
{
  v1 = 5;
  v2 = 16;
  if (a1 > 0x1FF)
  {
    v2 = 7;
  }

  if (a1 <= 0x3FF)
  {
    v1 = v2;
  }

  if (a1 <= 0x5FF)
  {
    return v1;
  }

  else
  {
    return 4;
  }
}

uint64_t ccrsa_num_mr_iterations_aux(unint64_t a1)
{
  v1 = 38;
  if (a1 > 0xAA)
  {
    v1 = 41;
  }

  if (a1 <= 0xC8)
  {
    return v1;
  }

  else
  {
    return 44;
  }
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

uint64_t ccec_affinify_homogeneous_ws(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = cczp_n(a2);
  if (!ccn_n(v7, a4 + 16 * *a2))
  {
    return 4294967289;
  }

  v8 = *(a1 + 16);
  (*(a1 + 24))(a1, v7);
  v9 = cczp_inv_ws(a1, a2);
  if (!v9)
  {
    cczp_mul_ws(a1, a2);
    cczp_mul_ws(a1, a2);
    cczp_from_ws(a1, a2);
    cczp_from_ws(a1, a2);
  }

  *(a1 + 16) = v8;
  return v9;
}

uint64_t ccec_affinify(void *a1, uint64_t a2, uint64_t a3)
{
  v12 = timingsafe_enable_if_supported();
  v6 = cc_malloc_clear(88 * *a1);
  v7 = 11 * *a1;
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = 0;
  v10[3] = cc_ws_alloc;
  v11 = cc_ws_free;
  if (v6)
  {
    v8 = (*(a1[2] + 80))(v10, a1, a2, a3);
    v11(v10);
  }

  else
  {
    v8 = 4294967283;
  }

  cc_disable_dit_with_sb(&v12);
  return v8;
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

uint64_t ccsae_generate_h2c_pt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, const void *a6, size_t a7, char *a8)
{
  v35 = *MEMORY[0x29EDCA608];
  v33 = timingsafe_enable_if_supported();
  v13 = (*(a1 + 16))();
  v14 = *v13;
  v15 = sizeof_struct_cche_galois_key();
  v16 = sizeof_struct_ccpolyzp_po2cyc();
  v17 = (v15 + v16 + 3 * v14 * v16 - 1) / v16;
  v29[0] = cc_malloc_clear(16 * (v17 + v14) + 8 * (v17 + 18 * v14));
  v18 = *v13;
  v19 = sizeof_struct_cche_galois_key();
  v20 = sizeof_struct_ccpolyzp_po2cyc();
  v21 = (v19 + v20 + 3 * v18 * v20 - 1) / v20;
  v29[1] = v21 + 18 * v18 + 2 * (v21 + v18);
  v30 = 0;
  v31 = cc_ws_alloc;
  v32 = cc_ws_free;
  if (v29[0])
  {
    v22 = 4294967289;
    v23 = cc_ws_free;
    if (a5 <= 0x40 && a7 <= 0x40)
    {
      v24 = (*(a1 + 16))();
      v25 = cc_ws_alloc(v29, (24 * *v24 + 23) >> 3);
      memset(v34, 0, sizeof(v34));
      __memcpy_chk();
      memcpy(v34 + a5, a6, a7);
      v26 = cch2c_ws(v29, a1, a3);
      if (!v26)
      {
        v26 = ccec_export_pub(v25, a8);
      }

      v22 = v26;
      v30 = 0;
      v23 = v32;
    }

    v23(v29);
  }

  else
  {
    v22 = 4294967283;
  }

  cc_disable_dit_with_sb(&v33);
  return v22;
}

uint64_t ccmgf_internal(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4, char *a5)
{
  v20 = *MEMORY[0x29EDCA608];
  v8 = MEMORY[0x2A1C7C4A8](a1);
  v10 = &__src[-v9 - 8];
  v12 = v11 / *v8;
  v13 = v12 * *v8;
  v15 = (v14 + v13);
  v16 = v11 - v13;
  if (v11 != v13)
  {
    ccdigest_init_internal(a1, v10);
    ccdigest_update_internal(a1, v10, a4, a5);
    HIDWORD(v18) = bswap32(v12);
    ccdigest_update_internal(a1, v10, 4uLL, &v18 + 4);
    (*(a1 + 56))(a1, v10, __src);
    memmove(v15, __src, v16);
  }

  while (v12)
  {
    LODWORD(v12) = v12 - 1;
    v15 -= *a1;
    ccdigest_init_internal(a1, v10);
    ccdigest_update_internal(a1, v10, a4, a5);
    HIDWORD(v18) = bswap32(v12);
    ccdigest_update_internal(a1, v10, 4uLL, &v18 + 4);
    (*(a1 + 56))(a1, v10, v15);
  }

  cc_clear(*(a1 + 8) + *(a1 + 16) + 12, v10);
  cc_clear(0x40uLL, __src);
  return 0;
}

uint64_t ccmgf(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4, char *a5)
{
  v11 = timingsafe_enable_if_supported();
  ccmgf_internal(a1, a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v11);
  return 0;
}

uint64_t *ccaes_ccm_encrypt_mode()
{
  v0 = (*(ccaes_ecb_encrypt_mode() + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  v1 = v0 + ((*ccaes_ecb_encrypt_mode() + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v2 = ccaes_ecb_encrypt_mode();
  ccm_encrypt_info = v1;
  unk_2A14EF780 = xmmword_299DA2690;
  qword_2A14EF790 = ccmode_ccm_init;
  qword_2A14EF798 = ccmode_ccm_set_iv;
  qword_2A14EF7A0 = ccmode_ccm_cbcmac;
  qword_2A14EF7A8 = ccaes_vng_ccm_encrypt_wrapper;
  qword_2A14EF7B0 = ccmode_ccm_finalize;
  qword_2A14EF7B8 = ccmode_ccm_reset;
  unk_2A14EF7C0 = v2;
  byte_2A14EF7C8 = 1;
  *algn_2A14EF7C9 = 0;
  dword_2A14EF7CC = 0;
  return &ccm_encrypt_info;
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

unint64_t ccdh_generate_private_key_bitlen(void *a1)
{
  if (ccdh_gp_order_bitlen(a1))
  {

    return ccdh_gp_order_bitlen(a1);
  }

  else if (ccdh_gp_l(a1))
  {

    return ccdh_gp_l(a1);
  }

  else
  {

    return cczp_bitlen(a1);
  }
}

uint64_t ccentropy_digest_init(uint64_t a1, uint64_t a2, int a3)
{
  v7 = timingsafe_enable_if_supported();
  *a1 = entropy_digest_info;
  *(a1 + 8) = a2;
  *(a1 + 376) = a3;
  *(a1 + 380) = 0;
  ccdigest_init_internal(a2, (a1 + 16));
  cc_disable_dit_with_sb(&v7);
  return 0;
}

uint64_t ccentropy_digest_get_seed(uint64_t a1, size_t a2, void *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 8);
  if (*v3 < a2)
  {
    return 4294967291;
  }

  if (*(a1 + 380) < *(a1 + 376))
  {
    return 4294967286;
  }

  *(a1 + 380) = 0;
  (*(v3 + 56))(v3, a1 + 16, __src);
  ccdigest_init_internal(v3, (a1 + 16));
  memcpy(a3, __src, a2);
  cc_clear(0x40uLL, __src);
  return 0;
}

uint64_t ccentropy_digest_add_entropy(uint64_t a1, int a2, size_t a3, char *a4, BOOL *a5)
{
  v5 = *(a1 + 380);
  v6 = __CFADD__(v5, a2);
  v7 = v5 + a2;
  if (v6)
  {
    v7 = -1;
  }

  *(a1 + 380) = v7;
  if (a5)
  {
    *a5 = v7 >= *(a1 + 376);
  }

  ccdigest_update_internal(*(a1 + 8), (a1 + 16), a3, a4);
  return 0;
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

uint64_t ccrng_drbg_init(uint64_t (**a1)(uint64_t a1, uint64_t a2, uint64_t a3), uint64_t a2, uint64_t (*a3)(uint64_t a1, uint64_t a2, uint64_t a3))
{
  v8 = timingsafe_enable_if_supported();
  inited = ccdrbg_init_internal(a2);
  if (!inited)
  {
    *a1 = generate_2;
    a1[1] = a2;
    a1[2] = a3;
  }

  cc_disable_dit_with_sb(&v8);
  return inited;
}

uint64_t ccrng_drbg_init_withdrbg(uint64_t (**a1)(uint64_t a1, uint64_t a2, uint64_t a3), uint64_t (*a2)(uint64_t a1, uint64_t a2, uint64_t a3), uint64_t (*a3)(uint64_t a1, uint64_t a2, uint64_t a3))
{
  *a1 = generate_2;
  a1[1] = a2;
  a1[2] = a3;
  return 0;
}

uint64_t ccrng_drbg_reseed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = ccdrbg_reseed_internal(*(a1 + 8), *(a1 + 16), a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t ccrng_drbg_done(uint64_t a1)
{
  v3 = timingsafe_enable_if_supported();
  ccdrbg_done(*(a1 + 8), *(a1 + 16));
  *(a1 + 16) = 0;
  return cc_disable_dit_with_sb(&v3);
}

uint64_t ccn_p224_inv_asm_ws(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v20 = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 16);
  v8 = 4;
  v9 = (*(a1 + 24))(a1, 4);
  v10 = (*(a1 + 24))(a1, 4);
  v11 = (*(a1 + 24))(a1, 4);
  ccn_mulmod_p224(v9, a4, a4);
  ccn_mulmod_p224(v10, v9, a4);
  ccn_mulmod_p224(v10, v10, v10);
  ccn_mulmod_p224(v10, v10, v10);
  ccn_mulmod_p224(v9, v9, v10);
  ccn_mulmod_p224(v10, v9, a4);
  ccn_set(4, v11, v10);
  do
  {
    ccn_mulmod_p224(v10, v10, v10);
    --v8;
  }

  while (v8);
  ccn_mulmod_p224(v9, v9, v10);
  ccn_mulmod_p224(v10, v9, a4);
  v12 = 8;
  do
  {
    ccn_mulmod_p224(v10, v10, v10);
    --v12;
  }

  while (v12);
  ccn_mulmod_p224(v9, v9, v10);
  ccn_mulmod_p224(v10, v9, a4);
  v13 = 16;
  do
  {
    ccn_mulmod_p224(v10, v10, v10);
    --v13;
  }

  while (v13);
  ccn_mulmod_p224(v9, v9, v10);
  ccn_mulmod_p224(v10, v9, a4);
  ccn_set(4, v11, v10);
  v14 = 32;
  do
  {
    ccn_mulmod_p224(v11, v11, v11);
    --v14;
  }

  while (v14);
  ccn_mulmod_p224(v11, v11, v10);
  v15 = 32;
  do
  {
    ccn_mulmod_p224(v11, v11, v11);
    --v15;
  }

  while (v15);
  ccn_mulmod_p224(v11, v11, v10);
  ccn_set(4, v10, v11);
  v16 = 32;
  do
  {
    ccn_mulmod_p224(v11, v11, v11);
    --v16;
  }

  while (v16);
  ccn_mulmod_p224(v11, v11, v9);
  v17 = 96;
  do
  {
    ccn_mulmod_p224(v11, v11, v11);
    --v17;
  }

  while (v17);
  ccn_mulmod_p224(v10, v10, v11);
  ccn_mulmod_p224(v9, v10, a4);
  v19[0] = xmmword_299DB0D48;
  v19[1] = unk_299DB0D58;
  ccn_mulmod_p224(v9, v9, v19);
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

void *ccn_p224_from_asm_ws(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v6 = *MEMORY[0x29EDCA608];
  v5[0] = xmmword_299DB0D48;
  v5[1] = unk_299DB0D58;
  return ccn_mulmod_p224(a3, a4, v5);
}

uint64_t ccentropy_lock_init(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = timingsafe_enable_if_supported();
  *a1 = entropy_lock_info;
  a1[1] = a2;
  a1[2] = a3;
  cc_disable_dit_with_sb(&v7);
  return 0;
}

uint64_t ccentropy_lock_get_seed(uint64_t a1)
{
  os_unfair_lock_lock(*(a1 + 16));
  seed_internal = ccentropy_get_seed_internal(*(a1 + 8));
  os_unfair_lock_unlock(*(a1 + 16));
  return seed_internal;
}

uint64_t ccentropy_lock_add_entropy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  os_unfair_lock_lock(*(a1 + 16));
  v10 = ccentropy_add_entropy_internal(*(a1 + 8), a2, a3, a4, a5);
  os_unfair_lock_unlock(*(a1 + 16));
  return v10;
}

uint64_t ccentropy_lock_reset(uint64_t a1)
{
  os_unfair_lock_lock(*(a1 + 16));
  v2 = ccentropy_reset(*(a1 + 8));
  os_unfair_lock_unlock(*(a1 + 16));
  return v2;
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
  v27 = &qword_299DB0D68;
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

unsigned __int8 *ccder_decode_dhparams(uint64_t *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v17 = a3;
  v6 = ccdh_gp_n(a1);
  v16 = 0;
  v7 = ccder_decode_constructed_tl(0x2000000000000010, &v17, a2, a3);
  v8 = a1 + 3;
  v9 = ccder_decode_uint(v6, a1 + 3, v7, v17);
  if (v9 && cczp_init(a1))
  {
    return 0;
  }

  v11 = ccder_decode_uint(v6, &v8[*a1 + 1 + *a1], v9, v17);
  v12 = ccdh_lookup_gp(v6, (a1 + 3), v6, &v8[*a1 + 1 + *a1]);
  if (v12)
  {
    ccdh_copy_gp(a1, v12);
  }

  else
  {
    ccn_zero(v6, &v8[*a1 + 1 + *a1 + *a1]);
  }

  v13 = ccder_decode_uint64(&v16, v11, v17);
  if (v13)
  {
    v10 = v13;
  }

  else
  {
    v10 = v11;
  }

  v14 = v16;
  v8[*a1 + 1 + *a1 + *a1 + *a1] = v16;
  ccdh_ramp_gp_exponent(v14, a1);
  return v10;
}

unsigned __int8 *ccder_decode_dhparam_n(unsigned __int8 *a1, unsigned __int8 *a2)
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

uint64_t ccrsa_decrypt_oaep_blinded_ws(uint64_t a1, uint64_t (**a2)(void, uint64_t, uint64_t), uint64_t *a3, uint64_t *a4, size_t *a5, void *a6, unint64_t a7, uint64_t a8, size_t a9, char *a10)
{
  v18 = ccrsa_ctx_public(a3);
  v19 = ccrsa_block_size(v18);
  v20 = 2 * *a4;
  if (v19 < v20 + 2)
  {
    return 4294967272;
  }

  v22 = v19;
  result = 4294967273;
  if (v22 <= a7 && *a5 >= v22 - v20 - 2)
  {
    v25 = a6;
    v23 = *a3;
    v26 = *(a1 + 16);
    v24 = (*(a1 + 24))(a1, *a3);
    result = ccn_read_uint_internal(v23, v24, a7, a8);
    if (!result)
    {
      result = ccrsa_priv_crypt_blinded_ws(a1, a2, a3, v24, v24);
      if (!result)
      {
        result = ccrsa_oaep_decode_parameter_ws(a1, a4, a5, v25, v22, v24, a9, a10);
      }
    }

    *(a1 + 16) = v26;
  }

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

uint64_t ccrsa_encrypt_eme_pkcs1v15_ws(uint64_t a1, uint64_t *a2, uint64_t (**a3)(void, size_t, char *), unint64_t *a4, char *a5, size_t a6, void *a7)
{
  v14 = ccrsa_block_size(a2);
  result = 4294967268;
  if (v14)
  {
    v16 = *a2;
    if (*a2)
    {
      if (ccn_n(*a2, a2 + 3) > 1 || a2[3] >= 2)
      {
        if (*a4 >= v14)
        {
          *a4 = v14;
          v17 = *(a1 + 16);
          v18 = (*(a1 + 24))(a1, v16);
          cc_clear(8 * v16, v18);
          result = ccrsa_eme_pkcs1v15_encode_internal(a3, v14, v18, a6, a7);
          if (!result)
          {
            result = ccrsa_pub_crypt_ws(a1, a2);
            if (!result)
            {
              v19 = ccn_write_uint_padded_ct_internal(v16, v18, v14, a5);
              result = v19 & (v19 >> 31);
            }
          }

          *(a1 + 16) = v17;
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

uint64_t ccrsa_encrypt_eme_pkcs1v15(uint64_t *a1, uint64_t (**a2)(void, size_t, char *), unint64_t *a3, char *a4, size_t a5, void *a6)
{
  v18 = timingsafe_enable_if_supported();
  v12 = cc_malloc_clear(80 * *a1);
  v13 = 10 * *a1;
  v16[0] = v12;
  v16[1] = v13;
  v16[2] = 0;
  v16[3] = cc_ws_alloc;
  v17 = cc_ws_free;
  if (v12)
  {
    v14 = ccrsa_encrypt_eme_pkcs1v15_ws(v16, a1, a2, a3, a4, a5, a6);
    v17(v16);
  }

  else
  {
    v14 = 4294967283;
  }

  cc_disable_dit_with_sb(&v18);
  return v14;
}

uint64_t fipspost_post_aes_xts(char a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v11 = 0;
  v10 = 0;
  v9 = 41;
  if ((a1 & 0x10) != 0)
  {
    v1 = &unk_299DB0E28;
  }

  else
  {
    v1 = &unk_299DB0E3A;
  }

  v2 = ccaes_xts_encrypt_mode();
  v7 = 0;
  v8 = 0;
  if (ccxts_one_shot(v2, 16, v1, "O\x9B6!r\x8D\x8AgT\x9Ft\xAA\b-X\xEF\x14{\xB2\xA2\x05\x97M\x1E\xFD8h\x85\xB2G\x97", &v9, 1, "\x18\x14{\xB2\xA2\x05\x97M\x1E\xFD8h\x85\xB2G\x97", &v7))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: encrypt\n");
    return 4294967223;
  }

  if (v7 == 0x15E6D4FF84381AB9 && v8 == 0xFFA95FCBAEAA5A1CLL)
  {
    v5 = ccaes_xts_decrypt_mode();
    v7 = 0;
    v8 = 0;
    if (ccxts_one_shot(v5, 16, v1, "O\x9B6!r\x8D\x8AgT\x9Ft\xAA\b-X\xEF\x14{\xB2\xA2\x05\x97M\x1E\xFD8h\x85\xB2G\x97", &v9, 1, "\xB9\x1A8\x84\xFF\xD4\xE6\x15\x1CZ\xAA\xAE\xCB\x5F\xA9\xFF", &v7))
    {
      mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: decrypt\n");
      return 4294967223;
    }

    if (v7 == 0x4D9705A2B27B1418 && v8 == 0x9747B2856838FD1ELL)
    {
      return 0;
    }

    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: decrypt\n");
  }

  else
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: encrypt\n");
  }

  return 4294967221;
}

uint64_t ccpost_chacha20_poly1305(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*(a1 + 16) == 32 && *(a1 + 32) == 12 && *(a1 + 96) == 16 && *(a1 + 64) < 0x101uLL && *(a1 + 80) < 0x101uLL)
  {
    ccchacha20poly1305_info();
    v5 = ccchacha20poly1305_decrypt_oneshot();
    if (*(a1 + 104))
    {
      if (v5)
      {
LABEL_11:
        v6 = a1;
        v7 = a2;
        v8 = 0;
        return ccpost_report(v6, v7, v8);
      }
    }

    else if (!v5 && !memcmp(__s1, *(a1 + 56), *(a1 + 64)))
    {
      ccchacha20poly1305_info();
      if (!ccchacha20poly1305_encrypt_oneshot() && !memcmp(__s1, *(a1 + 72), *(a1 + 80)) && !memcmp(v9, *(a1 + 88), *(a1 + 96)))
      {
        goto LABEL_11;
      }
    }

    v6 = a1;
    v7 = a2;
    v8 = 1;
    return ccpost_report(v6, v7, v8);
  }

  return ccpost_report(a1, a2, 0);
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

uint64_t fipspost_post_mlkem(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v28[196] = *MEMORY[0x29EDCA608];
  v2 = cckem_mlkem1024();
  if (cckem_pubkey_nbytes_info(v2) == 1568)
  {
    if (cckem_privkey_nbytes_info(v2) == 3168)
    {
      v26[0] = d_kat;
      v26[1] = unk_299DB0EE0;
      if ((v1 & 0x10) != 0)
      {
        LOBYTE(v26[0]) = 17;
      }

      v3 = ccmlkem_kem_keypair_from_seed(cckyber1024_params, v28, __s1, v26, z_kat);
      if (v3)
      {
        v4 = v3;
        v5 = mach_absolute_time();
        printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccmlkem_kem_keypair_from_seed: %d\n", v5, "fipspost_post_mlkem_keygen", 59, v4);
        v6 = -75;
      }

      else if (!memcmp(v28, &pubkey_kat, 0x620uLL))
      {
        if (!memcmp(__s1, &privkey_kat, 0xC60uLL))
        {
          v6 = 0;
        }

        else
        {
          mach_absolute_time();
          v6 = -75;
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: mismatch privkey: %d\n");
        }
      }

      else
      {
        mach_absolute_time();
        v6 = -75;
        printf("FIPSPOST_USER [%llu] %s:%d: FAILED: mismatch pubkey: %d\n");
      }
    }

    else
    {
      mach_absolute_time();
      v6 = -73;
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: Invalid privkey_kat: %d\n");
    }
  }

  else
  {
    v7 = mach_absolute_time();
    v6 = -73;
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: Invalid pubkey_kat: %d\n", v7, "fipspost_post_mlkem_keygen", 43, -73);
  }

  v8 = cckem_mlkem1024();
  if (cckem_encapsulated_key_nbytes_info(v8) == 1568)
  {
    if (cckem_shared_key_nbytes_info(v8) == 32)
    {
      v9 = ccmlkem_kem_keypair_from_seed(cckyber1024_params, v28, __s1, &d_kat, z_kat);
      if (v9)
      {
        v10 = v9;
        v11 = mach_absolute_time();
        printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccmlkem_kem_keypair_from_seed: %d\n", v11, "fipspost_post_mlkem_encapsulate", 95, v10);
        v12 = -73;
      }

      else
      {
        v22[0] = msg_kat;
        v22[1] = unk_299DB21A0;
        if ((v1 & 0x10) != 0)
        {
          LOBYTE(v22[0]) = -100;
        }

        v16 = ccmlkem_kem_encapsulate_msg(cckyber1024_params, v28, v26, &v23, v22);
        if (v16)
        {
          v17 = v16;
          v18 = mach_absolute_time();
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccmlkem_kem_encapsulate_msg: %d\n", v18, "fipspost_post_mlkem_encapsulate", 108, v17);
          v12 = -75;
        }

        else if (!memcmp(v26, &ek_kat, 0x620uLL))
        {
          if (v23 == 0x4AD51D198F5BA835 && *(&v23 + 1) == 0x5AC77DD2EE60437BLL && v24 == 0xDD9B9C68A0134808 && v25 == 0xF79AB0650E8FB905)
          {
            v12 = 0;
          }

          else
          {
            mach_absolute_time();
            v12 = -75;
            printf("FIPSPOST_USER [%llu] %s:%d: FAILED: mismatch sk: %d\n");
          }
        }

        else
        {
          mach_absolute_time();
          v12 = -75;
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: mismatch ek: %d\n");
        }
      }
    }

    else
    {
      mach_absolute_time();
      v12 = -73;
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: Invalid sk_kat: %d\n");
    }
  }

  else
  {
    v13 = mach_absolute_time();
    v12 = -73;
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: Invalid ek_kat: %d\n", v13, "fipspost_post_mlkem_encapsulate", 86, -73);
  }

  v14 = fipspost_post_mlkem_decapsulate(v1);
  return v12 | v6 | v14 | fipspost_post_mlkem_decapsulate(v1);
}

uint64_t fipspost_post_mlkem_decapsulate(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v4 = v1;
  v27[196] = *MEMORY[0x29EDCA608];
  v5 = cckem_mlkem1024();
  if (cckem_shared_key_nbytes_info(v5) == 32)
  {
    v6 = ccmlkem_kem_keypair_from_seed(cckyber1024_params, v27, v26, &d_kat, z_kat);
    if (v6)
    {
      v7 = v6;
      v8 = mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccmlkem_kem_keypair_from_seed: %d\n", v8, "fipspost_post_mlkem_decapsulate", 142, v7);
      return 4294967223;
    }

    else
    {
      memcpy(__dst, &ek_kat, sizeof(__dst));
      if ((v4 & 0x10) != 0 || v3)
      {
        __dst[0] = -33;
      }

      v12 = ccmlkem_kem_decapsulate(cckyber1024_params, v26, __dst, v25);
      if (v12)
      {
        v13 = v12;
        v14 = mach_absolute_time();
        printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccmlkem_kem_decapsulate: %d\n", v14, "fipspost_post_mlkem_decapsulate", 155, v13);
        return 4294967221;
      }

      else
      {
        v15 = &sk_kat;
        if (v3)
        {
          v15 = &sk_rej_kat;
        }

        v16 = *v15;
        v17 = v15[1];
        v19 = v15[2];
        v18 = v15[3];
        if (v25[0] == v16 && v25[1] == v17 && v25[2] == v19 && v25[3] == v18)
        {
          return 0;
        }

        else
        {
          v23 = mach_absolute_time();
          v9 = 4294967221;
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: mismatch sk: %d\n", v23, "fipspost_post_mlkem_decapsulate", 165, -75);
        }
      }
    }
  }

  else
  {
    v10 = mach_absolute_time();
    v9 = 4294967223;
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: Invalid sk_kat: %d\n", v10, "fipspost_post_mlkem_decapsulate", 136, -73);
  }

  return v9;
}

uint64_t ccspake_mac_hkdf_hmac_compute(uint64_t a1, size_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 8);
  if (*(v7 + 24) != a6)
  {
    return 4294967289;
  }

  v13 = (*v7)();
  cchmac_internal(v13, a2, a3, a4, a5, a7);
  return 0;
}

uint64_t ccdh_check_pub_ws(uint64_t a1, void *a2, void *a3)
{
  v6 = ccdh_gp_n(a2);
  if (v6 != ccdh_gp_n(*a3))
  {
    return 4294967243;
  }

  v7 = ccdh_gp_prime(a2);
  v8 = ccdh_gp_prime(*a3);
  if (ccn_cmp_public_value(v6, v7, v8))
  {
    return 4294967243;
  }

  if ((*ccdh_gp_prime(a2) & 1) == 0)
  {
    return 4294967245;
  }

  v10 = *(a1 + 16);
  v11 = (*(a1 + 24))(a1, v6);
  v12 = ccdh_gp_prime(a2);
  if (ccn_sub1(v6, v11, v12, 1uLL))
  {
    goto LABEL_7;
  }

  v13 = ccn_cmp_public_value(v6, a3 + 2, v11);
  result = 4294967247;
  if ((v13 & 0x80000000) == 0 || !v6)
  {
    goto LABEL_8;
  }

  if (ccn_n(v6, a3 + 2) <= 1 && a3[2] < 2uLL || ccdh_gp_order_bitlen(a2) && ((v14 = ccdh_gp_order(a2), cczp_mm_power_fast_ws(a1, a2, v11, (a3 + 2), v14)) || ccn_n(v6, v11) != 1 || *v11 != 1))
  {
LABEL_7:
    result = 4294967247;
  }

  else
  {
    result = 0;
  }

LABEL_8:
  *(a1 + 16) = v10;
  return result;
}

uint64_t ccmode_cfb_encrypt(void *a1, uint64_t a2, char *a3, _BYTE *a4)
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
      v15 = *(v11 + v5);
      *a4++ = v15 ^ v14;
      *(v13 + v5++) = v15 ^ v14;
      --v8;
    }

    while (v8);
  }

  a1[1] = v5;
  return 0;
}

double ccmode_factory_xts_decrypt(void *a1, void *a2, uint64_t a3)
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

uint64_t ccrsa_crt_makekey_ws(uint64_t a1, uint64_t *a2)
{
  v4 = ccrsa_ctx_private_zp(a2);
  v5 = ccrsa_ctx_private_zp(a2);
  v6 = v5 + 16 * *ccrsa_ctx_private_zp(a2);
  v7 = cczp_n(a2);
  v8 = cczp_n(v4);
  v9 = cczp_n(v6 + 32);
  if (v8 < v9 || v8 > (v7 >> 1) + 1)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v9;
  v12 = cczp_prime(v4);
  v13 = cczp_prime(v6 + 32);
  if (ccn_cmpn_internal(v8, v12, v11, v13) < 1)
  {
    return 4294967289;
  }

  v41 = *(a1 + 16);
  v14 = (*(a1 + 24))(a1, v7 + 2);
  __dst = (*(a1 + 24))(a1, (v7 >> 1) + 1);
  v42 = (*(a1 + 24))(a1, (v7 >> 1) + 1);
  cc_clear(8 * v7, v14);
  v15 = cczp_prime(v4);
  v16 = cczp_prime(v6 + 32);
  v45 = a1;
  v46 = v14;
  ccn_mul_ws(a1, v11, v14, v15, v16);
  v43 = v8 - v11;
  if (v8 != v11)
  {
    v17 = &v14[16 * v11];
    v18 = v11;
    v19 = &v46[8 * v11];
    do
    {
      v20 = cczp_prime(v6 + 32);
      v21 = cczp_prime(v4);
      *v17 = ccn_addmul1(v11, v19, v20, *(v21 + 8 * v18));
      v17 += 8;
      ++v18;
      v19 += 8;
    }

    while (v8 != v18);
  }

  v22 = v45;
  result = cczp_mm_init_ws(v45, a2, v7, v46);
  if (!result)
  {
    v23 = cczp_prime(v4);
    ccn_set(v8, __dst, v23);
    v24 = cczp_prime(v6 + 32);
    if (v11)
    {
      ccn_set(v11, v42, v24);
    }

    ccn_zero(v43, &v42[v11]);
    *__dst &= ~1uLL;
    *v42 &= ~1uLL;
    cc_clear(8 * v7, v46);
    ccn_lcm_ws(v45, v8, v46, __dst, v42);
    v25 = &a2[2 * *a2 + 3];
    v26 = &a2[3 * *a2 + 3];
    v27 = ccn_n(v7, v25 + 8);
    result = ccn_invmod_ws(v45, v7, (v26 + 8), v27, (v25 + 8), v46);
    if (!result)
    {
      v28 = ccrsa_ctx_private_zp(a2);
      v29 = v28 + 16 * *ccrsa_ctx_private_zp(a2);
      v30 = (v29 + 16 * *ccrsa_ctx_private_zp(a2) + 64);
      ccn_divmod_ws(v45, v7, v26 + 8, 0, 0, v8, v30, __dst);
      v31 = ccrsa_ctx_private_zp(a2);
      v32 = v31 + 16 * *ccrsa_ctx_private_zp(a2);
      v33 = v32 + 16 * *ccrsa_ctx_private_zp(a2);
      v34 = ccrsa_ctx_private_zp(a2);
      ccn_divmod_ws(v45, v7, v26 + 8, 0, 0, v8, (v33 + 8 * *v34 + 64), v42);
      v35 = ccrsa_ctx_private_zp(a2);
      v36 = v35 + 16 * *ccrsa_ctx_private_zp(a2);
      v37 = v36 + 16 * *ccrsa_ctx_private_zp(a2);
      v38 = v37 + 8 * *ccrsa_ctx_private_zp(a2);
      v39 = (v38 + 8 * *ccrsa_ctx_private_zp(a2) + 64);
      v40 = cczp_prime(v6 + 32);
      v22 = v45;
      if (v11)
      {
        ccn_set(v11, v39, v40);
      }

      ccn_zero(v43, &v39[8 * v11]);
      ccrsa_ctx_private_zp(a2);
      ccrsa_ctx_private_zp(a2);
      ccrsa_ctx_private_zp(a2);
      ccrsa_ctx_private_zp(a2);
      ccrsa_ctx_private_zp(a2);
      ccrsa_ctx_private_zp(a2);
      ccrsa_ctx_private_zp(a2);
      ccrsa_ctx_private_zp(a2);
      ccrsa_ctx_private_zp(a2);
      ccrsa_ctx_private_zp(a2);
      result = cczp_inv_ws(v45, v4);
      if (result)
      {
        result = 4294967263;
      }
    }
  }

  *(v22 + 16) = v41;
  return result;
}

uint64_t ccec_compressed_x962_import_pub(unint64_t *a1, uint64_t a2, unsigned __int8 *a3, unint64_t **a4)
{
  LODWORD(result) = ccec_x963_import_pub(a1, a2, a3, a4);
  if (result == -7)
  {
    return 4294967135;
  }

  else
  {
    return result;
  }
}

void *ccaes_siv_encrypt_mode()
{
  v0 = ccaes_cbc_encrypt_mode();
  v1 = ccaes_ctr_crypt_mode();
  ccmode_factory_siv_encrypt(&siv_encrypt, v0, v1);
  return &siv_encrypt;
}

uint64_t ccz_mod(uint64_t a1, void *a2, void *a3)
{
  v8 = timingsafe_enable_if_supported();
  memset(v7, 0, sizeof(v7));
  ccz_init(*(a1 + 8), v7);
  ccz_divmod(v7, a1, a2, a3);
  ccz_free(v7);
  return cc_disable_dit_with_sb(&v8);
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

uint64_t ccdigest_update(unint64_t *a1, void *a2, size_t a3, char *a4)
{
  v9 = timingsafe_enable_if_supported();
  ccdigest_update_internal(a1, a2, a3, a4);
  return cc_disable_dit_with_sb(&v9);
}

uint64_t ccec_curve_for_length_lookup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = timingsafe_enable_if_supported();
  v15 = &a9;
  do
  {
    v10 = v15++;
    v11 = *v10;
    if (!*v10)
    {
      break;
    }

    v12 = cczp_bitlen(*v10);
  }

  while (v12 != a1 && ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) != a1);
  cc_disable_dit_with_sb(&v16);
  return v11;
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

double ccmode_factory_siv_decrypt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 104;
  *a1 = xmmword_299DA04F0;
  *(a1 + 16) = ccmode_siv_init;
  *(a1 + 24) = ccmode_siv_auth;
  *(a1 + 32) = ccmode_siv_auth;
  *(a1 + 40) = ccmode_siv_decrypt;
  *(a1 + 48) = ccmode_siv_reset;
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  return result;
}

uint64_t ccdes3_ltc_setup(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  if (a3 != 24)
  {
    return 0xFFFFFFFFLL;
  }

  deskey(a4, 0, a2);
  deskey(a4 + 8, 1, a2 + 8);
  deskey(a4 + 16, 0, a2 + 16);
  deskey(a4, 1, a2 + 40);
  deskey(a4 + 8, 0, a2 + 32);
  deskey(a4 + 16, 1, a2 + 24);
  if (cc_cmp_safe_internal(8, a4, a4 + 8) && cc_cmp_safe_internal(8, a4, a4 + 16) && cc_cmp_safe_internal(8, a4 + 8, a4 + 16))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ccss_shamir_share_bag_set_ith_share(void *a1, unsigned int a2, uint64_t a3)
{
  result = ccss_shamir_consistent_primes(*a1 + 8, *a3);
  if (!result)
  {
    if (**a1 <= a2)
    {
      return 4294967165;
    }

    else
    {
      v7 = *(a3 + 8);

      return ccss_shamir_share_bag_set_ith_share_with_xy(a1, a2, v7, (a3 + 16));
    }
  }

  return result;
}

uint64_t ccss_shamir_share_bag_set_ith_share_with_xy(void *a1, unsigned int a2, int a3, void *a4)
{
  v8 = cczp_n(*a1 + 8);
  v9 = *a1;
  if (**a1 <= a2)
  {
    return 4294967165;
  }

  v10 = &a1[a2 * v8 + a2];
  *(v10 + 4) = a3;
  v11 = cczp_n((v9 + 2));
  ccn_set(v11, v10 + 3, a4);
  return 0;
}

uint64_t ccss_shamir_share_bag_copy_ith_share_x(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 8) - 1 < a2)
  {
    cc_abort();
  }

  return *(a1 + 8 * (a2 * cczp_n(*a1 + 8) + a2) + 16);
}

uint64_t ccss_shamir_share_bag_ith_share_y(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 8) - 1 < a2)
  {
    cc_abort();
  }

  return a1 + 8 * (a2 * cczp_n(*a1 + 8) + a2) + 24;
}

uint64_t ccss_shamir_share_sizeof_y(uint64_t *a1)
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
  v9 = 8 * cczp_n(*a1);
  cc_disable_dit(&v11);
  return v9;
}

uint64_t ccss_shamir_share_export(uint64_t a1, _DWORD *a2, char *a3, unint64_t a4)
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

  v18 = v13;
  v14 = cczp_n(*a1);
  if (ccn_write_uint_size_public_value(v14, (a1 + 16)) <= a4)
  {
    v16 = cczp_n(*a1);
    ccn_write_uint_padded_ct_internal(v16, (a1 + 16), a4, a3);
    v15 = 0;
    *a2 = *(a1 + 8);
  }

  else
  {
    v15 = 4294967289;
  }

  cc_disable_dit(&v18);
  return v15;
}

uint64_t ccrsa_verify_pkcs1v15_allowshortsigs(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, _BYTE *a7)
{
  v18[2] = *MEMORY[0x29EDCA608];
  v17 = timingsafe_enable_if_supported();
  *a7 = 0;
  v18[0] = 0;
  v18[1] = 0;
  v14 = ccrsa_verify_pkcs1v15_internal(a1, a2, a3, a4, a5, a6, 2110636126, v18);
  if (v14)
  {
    if (v14 == -146)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }
  }

  else
  {
    v15 = 0;
    *a7 = 1;
  }

  cc_disable_dit_with_sb(&v17);
  return v15;
}

void *ccmode_factory_cfb_encrypt(void *result, void *a2)
{
  *result = ((2 * a2[1] + 14) & 0xFFFFFFFFFFFFFFF0) + ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  result[1] = 1;
  result[2] = ccmode_cfb_init;
  result[3] = ccmode_cfb_encrypt;
  result[4] = a2;
  return result;
}

uint64_t cckem_generate_key(uint64_t a1, uint64_t a2)
{
  v6 = timingsafe_enable_if_supported();
  v4 = (*(*a1 + 48))(a1, a2);
  cc_disable_dit_with_sb(&v6);
  return v4;
}

uint64_t cckem_export_privkey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = timingsafe_enable_if_supported();
  v6 = (*(*a1 + 104))(a1, a2, a3);
  cc_disable_dit_with_sb(&v8);
  return v6;
}

uint64_t cckem_import_privkey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 112))(a1, a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ge_frombytes_vartime(int *a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  fe_frombytes(a1 + 10, a2);
  fe_1((a1 + 20));
  fe_sq(v13, a1 + 10);
  fe_mul(v11, v13, d);
  fe_sub(v13, v13, (a1 + 20));
  fe_add(v11, v11, (a1 + 20));
  fe_sq(v9, v11);
  fe_mul(v9, v9, v11);
  fe_sq(a1, v9);
  fe_mul(a1, a1, v11);
  fe_mul(a1, a1, v13);
  fe_pow22523(a1, a1);
  fe_mul(a1, a1, v9);
  fe_mul(a1, a1, v13);
  fe_sq(v7, a1);
  fe_mul(v7, v7, v11);
  fe_sub(v5, v7, v13);
  if (fe_isnonzero(v5))
  {
    fe_add(v5, v7, v13);
    if (fe_isnonzero(v5))
    {
      return 0xFFFFFFFFLL;
    }

    fe_mul(a1, a1, sqrtm1);
  }

  if (fe_isnegative(a1) != *(a2 + 31) >> 7)
  {
    fe_neg(a1, a1);
  }

  fe_mul(a1 + 30, a1, a1 + 10);
  return 0;
}

uint64_t ge_from_uniform(uint64_t a1, _OWORD *a2)
{
  v46 = *MEMORY[0x29EDCA608];
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  memset(v19, 0, sizeof(v19));
  memset(v18, 0, sizeof(v18));
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a1 + 31);
  *(a1 + 31) = v4 & 0x7F;
  fe_frombytes(v28, a1);
  fe_sq2(v28, v28);
  ++LODWORD(v28[0]);
  fe_invert(v28, v28);
  fe_mul(v26, curve25519_A, v28);
  fe_neg(v26, v26);
  fe_sq(v24, v26);
  fe_mul(v22, v26, v24);
  fe_add(v32, v22, v26);
  fe_mul(v24, v24, curve25519_A);
  fe_add(v32, v24, v32);
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  fe_sq(&v43, v32);
  fe_mul(&v40, &v43, v32);
  fe_sq(&v43, &v40);
  fe_sq(&v37, &v43);
  fe_sq(&v37, &v37);
  fe_mul(&v37, &v37, &v43);
  fe_mul(&v40, &v37, v32);
  fe_sq(&v37, &v40);
  v5 = 4;
  do
  {
    fe_sq(&v37, &v37);
    --v5;
  }

  while (v5);
  fe_mul(&v40, &v37, &v40);
  fe_sq(&v37, &v40);
  v6 = 9;
  do
  {
    fe_sq(&v37, &v37);
    --v6;
  }

  while (v6);
  fe_mul(&v37, &v37, &v40);
  fe_sq(&v34, &v37);
  v7 = 19;
  do
  {
    fe_sq(&v34, &v34);
    --v7;
  }

  while (v7);
  fe_mul(&v37, &v34, &v37);
  fe_sq(&v37, &v37);
  v8 = 9;
  do
  {
    fe_sq(&v37, &v37);
    --v8;
  }

  while (v8);
  fe_mul(&v40, &v37, &v40);
  fe_sq(&v37, &v40);
  v9 = 49;
  do
  {
    fe_sq(&v37, &v37);
    --v9;
  }

  while (v9);
  fe_mul(&v37, &v37, &v40);
  fe_sq(&v34, &v37);
  v10 = 99;
  do
  {
    fe_sq(&v34, &v34);
    --v10;
  }

  while (v10);
  fe_mul(&v37, &v34, &v37);
  fe_sq(&v37, &v37);
  v11 = 49;
  do
  {
    fe_sq(&v37, &v37);
    --v11;
  }

  while (v11);
  fe_mul(&v40, &v37, &v40);
  fe_sq(&v40, &v40);
  v12 = 3;
  do
  {
    fe_sq(&v40, &v40);
    --v12;
  }

  while (v12);
  v13 = v4 & 0x80;
  fe_mul(v32, &v40, &v43);
  fe_tobytes(a1, v32);
  v14 = *(a1 + 1);
  fe_neg(v30, v26);
  fe_cmov(v26, v30, v14 & 1);
  fe_0(v24);
  fe_cmov(v24, curve25519_A, v14 & 1);
  fe_sub(v26, v26, v24);
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  fe_1(&v43);
  fe_add(&v40, v26, &v43);
  fe_sub(&v34, v26, &v43);
  fe_invert(&v37, &v40);
  fe_mul(v20, &v34, &v37);
  fe_tobytes(a1, v20);
  *(a1 + 31) |= v13;
  ge_frombytes_vartime(v19, a1);
  ge_p3_dbl(v18, v19);
  ge_p1p1_to_p2(v16, v18);
  ge_p2_dbl(v18, v16);
  ge_p1p1_to_p2(v16, v18);
  ge_p2_dbl(v18, v16);
  ge_p1p1_to_p3(v19, v18);
  return ge_p3_tobytes(a1, v19);
}

_DWORD *ge_scalarmult(_DWORD *a1, int8x16_t *a2, uint64_t a3)
{
  v43 = *MEMORY[0x29EDCA608];
  memset(v32, 0, sizeof(v32));
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  memset(v27, 0, sizeof(v27));
  memset(v26, 0, sizeof(v26));
  memset(v25, 0, sizeof(v25));
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  memset(v22, 0, sizeof(v22));
  memset(v21, 0, sizeof(v21));
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, sizeof(v16));
  memset(v15, 0, sizeof(v15));
  ge_p3_to_cached(v33, a3);
  ge_p3_dbl(v29, a3);
  ge_p1p1_to_p3(v22, v29);
  ge_p3_to_cached(v34, v22);
  ge_add(v28, a3, v34);
  ge_p1p1_to_p3(v21, v28);
  ge_p3_to_cached(&v35, v21);
  ge_p3_dbl(v27, v22);
  ge_p1p1_to_p3(v20, v27);
  ge_p3_to_cached(v36, v20);
  ge_add(v26, a3, v36);
  ge_p1p1_to_p3(v19, v26);
  ge_p3_to_cached(&v37, v19);
  ge_p3_dbl(v25, v21);
  ge_p1p1_to_p3(v18, v25);
  ge_p3_to_cached(v38, v18);
  ge_add(v24, a3, v38);
  ge_p1p1_to_p3(v17, v24);
  ge_p3_to_cached(&v39, v17);
  ge_p3_dbl(v23, v20);
  ge_p1p1_to_p3(v16, v23);
  ge_p3_to_cached(&v40, v16);
  v6 = 0;
  v7.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v7.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  do
  {
    v8 = *a2++;
    v44.val[0] = vandq_s8(v8, v7);
    v44.val[1] = vshrq_n_u8(v8, 4uLL);
    v9 = &v41[v6];
    vst2q_s8(v9, v44);
    v6 += 32;
  }

  while (v6 != 64);
  v10 = 0;
  v11 = 0;
  do
  {
    v12 = v41[v10] + v11;
    v11 = (v12 + 8) << 24 >> 28;
    v41[v10++] = v12 - ((v12 + 8) & 0xF0);
  }

  while (v10 != 63);
  v42 += v11;
  ge_p3_0(a1);
  v13 = 63;
  do
  {
    ge_select_cached(v15, v33, v41[v13]);
    ge_add(v32, a1, v15);
    ge_p1p1_to_p2(v30, v32);
    ge_p2_dbl(v32, v30);
    ge_p1p1_to_p2(v30, v32);
    ge_p2_dbl(v32, v30);
    ge_p1p1_to_p2(v30, v32);
    ge_p2_dbl(v32, v30);
    ge_p1p1_to_p2(v30, v32);
    ge_p2_dbl(v32, v30);
    ge_p1p1_to_p3(a1, v32);
    --v13;
  }

  while (v13);
  ge_select_cached(v15, v33, v41[0]);
  ge_add(v32, a1, v15);
  return ge_p1p1_to_p3(a1, v32);
}

uint64_t ge_select_cached(uint64_t *a1, uint64_t *a2, int a3)
{
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  v5 = (a3 >> 7) & 1;
  v6 = (a3 - 2 * (a3 & (a3 >> 31)));
  fe_1(a1);
  fe_1((a1 + 5));
  fe_1((a1 + 10));
  fe_0((a1 + 15));
  ge_cmov_cached(a1, a2, v6 == 1);
  ge_cmov_cached(a1, a2 + 20, v6 == 2);
  ge_cmov_cached(a1, a2 + 40, v6 == 3);
  ge_cmov_cached(a1, a2 + 60, v6 == 4);
  ge_cmov_cached(a1, a2 + 80, v6 == 5);
  ge_cmov_cached(a1, a2 + 100, v6 == 6);
  ge_cmov_cached(a1, a2 + 120, v6 == 7);
  ge_cmov_cached(a1, a2 + 140, v6 == 8);
  fe_copy(v8, (a1 + 5));
  fe_copy(&v8[2] + 8, a1);
  fe_copy(v9, (a1 + 10));
  fe_neg(&v9[2] + 8, (a1 + 15));
  return ge_cmov_cached(a1, v8, v5);
}

_DWORD *ge_scalarmult_cofactor(_DWORD *a1)
{
  memset(v5, 0, sizeof(v5));
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  ge_p3_dbl(v5, a1);
  ge_p1p1_to_p2(v3, v5);
  ge_p2_dbl(v5, v3);
  ge_p1p1_to_p2(v3, v5);
  ge_p2_dbl(v5, v3);
  return ge_p1p1_to_p3(a1, v5);
}

uint64_t ge_has_small_order(uint64_t a1)
{
  v1 = 0;
  memset(v14, 0, 7);
  v2 = &ge_has_small_order_small_order_blocklist;
  do
  {
    v3 = 0;
    v4 = *(a1 + v1);
    v5 = v2;
    do
    {
      v6 = *v5;
      v5 += 32;
      v14[v3++] |= v6 ^ v4;
    }

    while (v3 != 7);
    ++v1;
    ++v2;
  }

  while (v1 != 31);
  v7 = 0;
  v8 = *(a1 + 31) & 0x7F;
  v9 = &byte_299DB282F;
  do
  {
    v10 = *v9;
    v9 += 32;
    v14[v7++] |= v8 ^ v10;
  }

  while (v7 != 7);
  v11 = 0;
  v12 = 0;
  do
  {
    v12 |= v14[v11++] - 1;
  }

  while (v11 != 7);
  return (v12 >> 8) & 1;
}

uint64_t ge_cmov_cached(uint64_t *a1, uint64_t *a2, char a3)
{
  fe_cmov(a1, a2, a3);
  fe_cmov(a1 + 5, a2 + 5, a3);
  fe_cmov(a1 + 10, a2 + 10, a3);

  return fe_cmov(a1 + 15, a2 + 15, a3);
}

uint64_t fipspost_post_aes_cbc(char a1)
{
  v1 = "\x012]\xE3\x14\xE9)\xED\x08\x97\x87Т\x05\xD1\xEB3";
  v31 = *MEMORY[0x29EDCA608];
  v19 = 16;
  v2 = 1;
  v20 = 1;
  v21 = "4I\x1B&m\x8F\xB5L\\\xE1\xA9\xFB\xF1\x7B\x09\x8C";
  v22 = "\x9B\xC2\x0B)Q\xFFr\xD3\xF2\x80\xFF;\xD2\xDC=\xCC\x06\xFE\x99qc\xCB\xCBU\x85>(Wt̨\x9D";
  if ((a1 & 0x10) == 0)
  {
    v1 = "2]\xE3\x14\xE9)\xED\x08\x97\x87Т\x05\xD1\xEB3";
  }

  v23 = "\x06\xFE\x99qc\xCB\xCBU\x85>(Wt̨\x9D";
  v24 = v1;
  v3 = "\x9Ef\x1D\xB3\x809 \x9Ar\xC7\xD2\x96@f\x88\xF2PSPOST_USER [%llu] %s:%d: FAILED: test %d\n";
  if ((a1 & 0x10) != 0)
  {
    v3 = "\x01\x9Ef\x1D\xB3\x809 \x9Ar\xC7\xD2\x96@f\x88\xF2\x1D\xB3\x809 \x9Ar\xC7\xD2\x96@f\x88\xF2PSPOST_USER [%llu] %s:%d: FAILED: test %d\n";
  }

  v25 = 16;
  v26 = 0;
  v27 = "ƎN\xB2\xCA\x2Aů꣗\x11\x94";
  v28 = "\x11ݝ\xA1\xBD:\xCF\x68š\xE1\x96\x4C\x18\x9B";
  v4 = &v19;
  v29 = "\xAA6W\x9B\fr\xC5\x28\x16{p\x12\xD7\xFA\xF0\xDE\x9Ef\x1D\xB3\x809 \x9Ar\xC7\xD2\x96@f\x88\xF2\x1D\xB3\x809 \x9Ar\xC7\xD2\x96@f\x88\xF2PSPOST_USER [%llu] %s:%d: FAILED: test %d\n";
  v30 = v3;
  v5 = ccaes_cbc_encrypt_mode();
  v6 = ccaes_cbc_decrypt_mode();
  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = v2;
    v10 = (*(v4 + 2) ? v5 : v6);
    if (cccbc_one_shot(v10, *v4, v4[2], v4[3], 1, v4[4], v18))
    {
      break;
    }

    v11 = v4[5];
    v13 = *v11;
    v12 = v11[1];
    if (v13 != v18[0] || v12 != v18[1])
    {
      v15 = mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: AES-CBC KAT Failed %d\n", v15, "fipspost_post_aes_cbc", 96, v7);
      v8 = v8 | 0xFFFFFFB5;
    }

    v2 = 0;
    v7 = 2;
    v4 = &v25;
    if ((v9 & 1) == 0)
    {
      return v8;
    }
  }

  v16 = mach_absolute_time();
  printf("FIPSPOST_USER [%llu] %s:%d: FAILED: test %d\n", v16, "fipspost_post_aes_cbc", 87, v7);
  return 4294967223;
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

uint64_t fipspost_post_aes_ecb(char a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = ccaes_ecb_encrypt_mode();
  if ((a1 & 0x10) != 0)
  {
    v3 = &invalid_key_0;
  }

  else
  {
    v3 = &valid_key_0;
  }

  if (ccecb_one_shot(v2, 16, v3, 1, &plaintext_data_0, v12))
  {
    v4 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: aes_ecb_encrypt one_shot\n", v4, "fipspost_post_aes_ecb_encrypt", 36);
    v5 = -73;
  }

  else if (cc_cmp_safe(16, v12, &ciphertext_data_0))
  {
    v6 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: aes_ecb_encrypt cmp\n", v6, "fipspost_post_aes_ecb_encrypt", 41);
    v5 = -75;
  }

  else
  {
    v5 = 0;
  }

  v7 = ccaes_ecb_decrypt_mode();
  if (ccecb_one_shot(v7, 16, v3, 1, &ciphertext_data_0, v12))
  {
    v8 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: aes_ecb_decrypt one_shot\n", v8, "fipspost_post_aes_ecb_decrypt", 59);
    v9 = -73;
  }

  else if (cc_cmp_safe(16, v12, &plaintext_data_0))
  {
    v10 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: aes_ecb_decrypt cmp\n", v10, "fipspost_post_aes_ecb_decrypt", 64);
    v9 = -75;
  }

  else
  {
    v9 = 0;
  }

  return v9 | v5;
}

uint64_t cccast_ecb_encrypt(uint64_t a1, uint64_t a2, unsigned int *a3, _DWORD *a4)
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
      CC_CAST_encrypt(&v12, a1);
      v10 = bswap32(v13);
      *a4 = bswap32(v12);
      a4[1] = v10;
      a4 += 2;
    }

    while (v6);
  }

  return 0;
}

void *ccaes_siv_hmac_sha256_encrypt_mode()
{
  v0 = ccsha256_di();
  v1 = ccaes_ctr_crypt_mode();
  ccmode_factory_siv_hmac_encrypt(&siv_hmac_encrypt, v0, v1);
  return &siv_hmac_encrypt;
}

unint64_t CCHE_CIPHERTEXT_MOD_SWITCH_DOWN_WORKSPACE_N(unsigned int a1, int a2)
{
  result = CCPOLYZP_PO2CYC_BASE_CONVERT_MOD_T_DIVIDE_AND_ROUND_Q_LAST_WORKSPACE_N(a1, a2);
  if (result <= 8)
  {
    return 8;
  }

  return result;
}

uint64_t ccecies_decrypt_gcm_from_shared_secret_composite(uint64_t a1, uint64_t a2, size_t a3, char *a4, rsize_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v23 = *MEMORY[0x29EDCA608];
  v18 = ccecies_pub_key_size_cp(a1, a2);
  v19 = ccecies_derive_gcm_key_iv(a2, a3, a4, a9, a10, v18, a6, v22);
  if (v19)
  {
    v20 = v19;
    goto LABEL_3;
  }

  v20 = ccecies_decrypt_gcm_decrypt(a2, v22, a11, a12);
  if (v20)
  {
LABEL_3:
    cc_clear(a5, a13);
  }

  cc_clear(0x30uLL, v22);
  return v20;
}

uint64_t ccecies_decrypt_gcm_from_shared_secret(uint64_t a1, uint64_t a2, size_t a3, char *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, rsize_t *a11, void *a12)
{
  v25 = timingsafe_enable_if_supported();
  v18 = ccecies_pub_key_size_cp(a1, a2);
  v19 = ccecies_decrypt_gcm_plaintext_size_cp(a1, a2, a5);
  if ((*(a2 + 32) & 0x21) == 0)
  {
    v21 = 4294967291;
    goto LABEL_9;
  }

  v20 = v19;
  if (!v19 || v19 > *a11)
  {
    v21 = 4294967289;
    goto LABEL_9;
  }

  v21 = ccecies_decrypt_gcm_from_shared_secret_composite(a1, a2, a3, a4, v19, a6, a6 + v18, a6 + a5 - *(a2 + 28), a7, a8, a9, a10, a12);
  if (v21)
  {
LABEL_9:
    cc_clear(*a11, a12);
    goto LABEL_6;
  }

  *a11 = v20;
LABEL_6:
  cc_disable_dit_with_sb(&v25);
  return v21;
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

uint64_t fipspost_post_aes_gcm(char a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if ((a1 & 0x10) != 0)
  {
    v1 = "\x01\xF2\xA1\x24\x6B\xFF-\x89:\xEF\xCD\xE5\x90z\x12\a\x9B";
  }

  else
  {
    v1 = "\xF2\xA1\x24\x6B\xFF-\x89:\xEF\xCD\xE5\x90z\x12\a\x9B";
  }

  if ((a1 & 0x10) != 0)
  {
    v2 = "\x01&\x86\xF5\xA1\x1F\x0CKS\x81\n[2\xB0\xA8\xFF\xBC";
  }

  else
  {
    v2 = "&\x86\xF5\xA1\x1F\x0CKS\x81\n[2\xB0\xA8\xFF\xBC";
  }

  v8 = *v1;
  v3 = ccaes_gcm_decrypt_mode();
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccgcm_one_shot decrypt\n");
    return 4294967223;
  }

  if (v8 == *v1 && *(&v8 + 1) == *(v1 + 1))
  {
    v8 = 0uLL;
    v6 = ccaes_gcm_encrypt_mode();
    if (ccgcm_one_shot(v6, 16, "pȿ\xB6\x02v\xE2\x18\xA0\uD8AA\xD1\xFD\xC1\x9C", 12, &unk_299DB295C, 0, 0, 0, 0, v9, 16, &v8))
    {
      mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccgcm_one_shot encrypt\n");
      return 4294967223;
    }

    if (v8 == *v2 && *(&v8 + 1) == *(v2 + 1))
    {
      return 0;
    }

    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccgcm_one_shot encrypt\n");
  }

  else
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccgcm_one_shot decrypt\n");
  }

  return 4294967221;
}

uint64_t ccrsa_sign_pss(unint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t (**a5)(void, unint64_t, char *), size_t a6, char *a7, unint64_t *a8, char *a9)
{
  v20 = timingsafe_enable_if_supported();
  v17 = ccrng(0);
  if (v17)
  {
    v18 = ccrsa_sign_pss_blinded(v17, a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    v18 = 0xFFFFFFFFLL;
  }

  cc_disable_dit_with_sb(&v20);
  return v18;
}

uint64_t ccrsa_sign_pss_msg(unint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t (**a5)(void, unint64_t, char *), size_t a6, char *a7, unint64_t *a8, char *a9)
{
  v22 = *MEMORY[0x29EDCA608];
  v20 = timingsafe_enable_if_supported();
  ccdigest_internal(a2, a6, a7, v21);
  v17 = ccrng(0);
  if (v17)
  {
    v18 = ccrsa_sign_pss_blinded(v17, a1, a2, a3, a4, a5, *a2, v21, a8, a9);
  }

  else
  {
    v18 = 0xFFFFFFFFLL;
  }

  cc_disable_dit_with_sb(&v20);
  return v18;
}

uint64_t ccansikdf_x963(unint64_t *a1, size_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v17[2] = *MEMORY[0x29EDCA608];
  v16 = timingsafe_enable_if_supported();
  v17[0] = a5;
  v17[1] = a4;
  v14 = ccansikdf_x963_iovec(a1, a2, a3, 1, v17, a6, a7);
  cc_disable_dit_with_sb(&v16);
  return v14;
}

uint64_t ccansikdf_x963_iovec(unint64_t *a1, size_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v25 = *MEMORY[0x29EDCA608];
  v7 = (a6 + *a1 - 1) / *a1;
  if (v7 > 0xFFFFFFFE)
  {
    return 4294967289;
  }

  v16 = MEMORY[0x2A1C7C4A8](a1);
  v18 = &__src[-v17 - 8];
  ccdigest_init_internal(v16, &__src[-v17 - 8]);
  updated = ccdigest_update_internal(a1, v18, a2, a3);
  MEMORY[0x2A1C7C4A8](updated);
  v21 = &__src[-v20 - 8];
  if (v7 >= 2)
  {
    for (i = 1; i < v7; ++i)
    {
      ccansikdf_x963_round(a1, v21, v18, i, a4, a5, a7);
      a7 += *a1;
    }
  }

  ccansikdf_x963_round(a1, v21, v18, v7, a4, a5, __src);
  memcpy(a7, __src, a6 - *a1 * (v7 - 1));
  cc_clear(a1[1] + a1[2] + 12, v21);
  cc_clear(a1[1] + a1[2] + 12, v18);
  return 0;
}

uint64_t ccansikdf_x963_round(uint64_t a1, void *__dst, void *__src, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  memcpy(__dst, __src, *(a1 + 8) + *(a1 + 16) + 12);
  __srca = bswap32(a4);
  ccdigest_update_internal(a1, __dst, 4uLL, &__srca);
  if (a5)
  {
    v13 = (a6 + 8);
    do
    {
      ccdigest_update_internal(a1, __dst, *v13, *(v13 - 1));
      v13 += 2;
      --a5;
    }

    while (a5);
  }

  return (*(a1 + 56))(a1, __dst, a7);
}

_BYTE *cc_disable_dit(_BYTE *result)
{
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) != 0 && *result == 1)
  {
    __asm { MSR             DIT, #0 }
  }

  return result;
}

uint64_t ccder_encode_rsa_pub_size(uint64_t *a1)
{
  v1 = a1 + 3;
  v2 = *a1;
  v3 = ccder_sizeof_integer(*a1, a1 + 3);
  v4 = ccder_sizeof_integer(v2, &v1[2 * v2 + 1]) + v3;

  return ccder_sizeof(0x2000000000000010, v4);
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

uint64_t ccrsa_export_priv_size(uint64_t *a1)
{
  v4 = timingsafe_enable_if_supported();
  v2 = ccder_encode_rsa_priv_size(a1);
  cc_disable_dit_with_sb(&v4);
  return v2;
}

BOOL ccrsa_export_priv(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = timingsafe_enable_if_supported();
  v6 = ccder_encode_rsa_priv_internal(a1, a3, a3 + a2) != a3;
  cc_disable_dit_with_sb(&v8);
  return v6;
}

unsigned __int8 *ccrsa_import_priv_n(uint64_t a1, unsigned __int8 *a2)
{
  v6 = timingsafe_enable_if_supported();
  v4 = ccder_decode_rsa_priv_n(a2, &a2[a1]);
  cc_disable_dit_with_sb(&v6);
  return v4;
}

BOOL ccrsa_import_priv(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v8 = timingsafe_enable_if_supported();
  v6 = ccder_decode_rsa_priv_internal(a1, a3, &a3[a2]) == 0;
  cc_disable_dit_with_sb(&v8);
  return v6;
}

uint64_t ccrsa_oaep_encode(size_t *a1, uint64_t (**a2)(void, size_t, char *), uint64_t a3, char *a4, size_t a5, const void *a6)
{
  v14 = timingsafe_enable_if_supported();
  v12 = ccrsa_oaep_encode_parameter_internal(a1, a2, a3, a4, a5, a6, 0, 0);
  cc_disable_dit_with_sb(&v14);
  return v12;
}

uint64_t ccrsa_oaep_decode(uint64_t *a1, size_t *a2, void *a3, uint64_t a4, unint64_t *a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = ccrsa_oaep_decode_parameter(a1, a2, a3, a4, a5, 0, 0);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

char *ccrsa_block_start(uint64_t a1, char *a2, int a3)
{
  v4 = (a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v4 - a1;
  if (a3)
  {
    cc_clear(v4 - a1, a2);
  }

  return &a2[v5];
}

unsigned int *sha1_compress_0(unsigned int *result, uint64_t a2, const char *a3)
{
  v99[8] = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v3 = *result;
    v4 = result[1];
    v5 = result[2];
    v6 = result[3];
    v7 = result[4];
    do
    {
      v100 = vld4q_s8(a3);
      v8 = vmovl_u8(*v100.val[0].i8);
      v9 = vmovl_high_u8(v100.val[0]);
      _Q16 = vmovl_u8(*v100.val[1].i8);
      _Q17 = vmovl_high_u8(v100.val[1]);
      __asm
      {
        SHLL2           V18.4S, V17.8H, #0x10
        SHLL2           V19.4S, V16.8H, #0x10
      }

      v18 = vmovl_high_u8(v100.val[2]);
      v19 = vmovl_u8(*v100.val[2].i8);
      v20 = vorrq_s8(vorrq_s8(vshll_n_s16(*_Q16.i8, 0x10uLL), vshll_n_u16(*v19.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v8.i8), 0x18uLL));
      v21 = vmovl_high_u8(v100.val[3]);
      v100.val[0] = vmovl_u8(*v100.val[3].i8);
      v96[0] = vorrq_s8(vorrq_s8(vorrq_s8(vshll_n_s16(*_Q17.i8, 0x10uLL), vshll_n_u16(*v18.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v9.i8), 0x18uLL)), vmovl_u16(*v21.i8));
      v96[1] = vorrq_s8(vorrq_s8(vorrq_s8(_Q18, vshll_high_n_u16(v18, 8uLL)), vshlq_n_s32(vmovl_high_u16(v9), 0x18uLL)), vmovl_high_u16(v21));
      v95[0] = vorrq_s8(v20, vmovl_u16(*v100.val[0].i8));
      v95[1] = vorrq_s8(vorrq_s8(vorrq_s8(_Q19, vshll_high_n_u16(v19, 8uLL)), vshlq_n_s32(vmovl_high_u16(v8), 0x18uLL)), vmovl_high_u16(v100.val[0]));
      v22 = v96;
      v23 = 64;
      do
      {
        HIDWORD(v24) = *v22 ^ v22[5] ^ *(v22 - 6) ^ *(v22 - 8);
        LODWORD(v24) = HIDWORD(v24);
        v22[8] = v24 >> 31;
        ++v22;
        --v23;
      }

      while (v23);
      v25 = -5;
      v26 = v95 + 2;
      v27 = v7;
      v28 = v6;
      v29 = v5;
      v30 = v4;
      v31 = v3;
      do
      {
        HIDWORD(v32) = v31;
        LODWORD(v32) = v31;
        v33 = (v32 >> 27) + v27 + 1518500249 + (v29 & v30 | v28 & ~v30) + *(v26 - 2);
        HIDWORD(v32) = v30;
        LODWORD(v32) = v30;
        v34 = v32 >> 2;
        v35 = __PAIR64__(v33, __ROR4__(v30, 2));
        v36 = v31 & v35 | v29 & ~v31;
        LODWORD(v35) = v33;
        v37 = v28 + 1518500249 + v36 + *(v26 - 1) + (v35 >> 27);
        HIDWORD(v35) = v31;
        LODWORD(v35) = v31;
        v38 = v35 >> 2;
        v39 = __PAIR64__(v37, __ROR4__(v31, 2));
        v40 = v33 & v39 | v34 & ~v33;
        LODWORD(v39) = v37;
        v41 = v29 + 1518500249 + *v26 + v40 + (v39 >> 27);
        HIDWORD(v39) = v33;
        LODWORD(v39) = v33;
        v27 = v39 >> 2;
        v42 = __PAIR64__(v41, __ROR4__(v33, 2));
        v43 = v37 & v42 | v38 & ~v37;
        LODWORD(v42) = v41;
        v30 = v34 + 1518500249 + v26[1] + v43 + (v42 >> 27);
        HIDWORD(v42) = v37;
        LODWORD(v42) = v37;
        v28 = v42 >> 2;
        HIDWORD(v42) = v30;
        LODWORD(v42) = v30;
        v44 = v42 >> 27;
        v45 = __PAIR64__(v41, __ROR4__(v37, 2));
        v31 = v38 + 1518500249 + v26[2] + (v41 & v45 | v27 & ~v41) + v44;
        LODWORD(v45) = v41;
        v29 = v45 >> 2;
        v25 += 5;
        v26 += 5;
      }

      while (v25 < 0xF);
      --a2;
      v46 = &v97;
      for (i = 15; i < 0x23; i += 5)
      {
        HIDWORD(v48) = v31;
        LODWORD(v48) = v31;
        v49 = (v48 >> 27) + 1859775393 + (v29 ^ v30 ^ v28) + v27 + *(v46 - 4);
        HIDWORD(v48) = v30;
        LODWORD(v48) = v30;
        v50 = v48 >> 2;
        HIDWORD(v48) = v49;
        LODWORD(v48) = v49;
        v51 = v48 >> 27;
        v52 = __PAIR64__(v31, __ROR4__(v30, 2));
        v53 = v28 + 1859775393 + (v31 ^ v52 ^ v29) + *(v46 - 3) + v51;
        LODWORD(v52) = v31;
        v54 = v52 >> 2;
        HIDWORD(v52) = v53;
        LODWORD(v52) = v53;
        v55 = v52 >> 27;
        v56 = __PAIR64__(v49, __ROR4__(v31, 2));
        v57 = v29 + 1859775393 + *(v46 - 2) + (v50 ^ v56 ^ v49) + v55;
        LODWORD(v56) = v49;
        v27 = v56 >> 2;
        HIDWORD(v56) = v57;
        LODWORD(v56) = v57;
        v58 = v56 >> 27;
        v59 = __PAIR64__(v53, __ROR4__(v31, 2));
        v30 = v50 + 1859775393 + *(v46 - 1) + (v27 ^ v59 ^ v53) + v58;
        LODWORD(v59) = v53;
        v28 = v59 >> 2;
        HIDWORD(v59) = v30;
        LODWORD(v59) = v30;
        v60 = v59 >> 27;
        v61 = __PAIR64__(v57, __ROR4__(v49, 2));
        v62 = *v46;
        v46 += 5;
        v31 = v54 + 1859775393 + v62 + (v28 ^ v61 ^ v57) + v60;
        LODWORD(v61) = v57;
        v29 = v61 >> 2;
      }

      v63 = &v98;
      v64 = 35;
      do
      {
        HIDWORD(v66) = v31;
        LODWORD(v66) = v31;
        v65 = v66 >> 27;
        HIDWORD(v66) = v30;
        LODWORD(v66) = v30;
        v67 = v66 >> 2;
        v68 = v65 + v27 - 1894007588 + (v28 & (v29 | v30) | v29 & v30) + *(v63 - 4);
        HIDWORD(v66) = v68;
        LODWORD(v66) = v68;
        v69 = v66 >> 27;
        v70 = __PAIR64__(v31, __ROR4__(v30, 2));
        v71 = (v31 | v70) & v29 | v31 & __ROR4__(v30, 2);
        LODWORD(v70) = v31;
        v72 = v70 >> 2;
        v73 = v28 - 1894007588 + v71 + *(v63 - 3) + v69;
        HIDWORD(v70) = v73;
        LODWORD(v70) = v73;
        v74 = v29 - 1894007588 + *(v63 - 2) + ((v68 | __ROR4__(v31, 2)) & __ROR4__(v30, 2) | v68 & __ROR4__(v31, 2)) + (v70 >> 27);
        HIDWORD(v70) = v74;
        LODWORD(v70) = v74;
        v30 = v67 - 1894007588 + *(v63 - 1) + ((v73 | __ROR4__(v68, 2)) & __ROR4__(v31, 2) | v73 & __ROR4__(v68, 2)) + (v70 >> 27);
        v75 = __PAIR64__(v68, __ROR4__(v68, 2));
        v76 = (v74 | __ROR4__(v73, 2)) & v75 | v74 & __ROR4__(v73, 2);
        v77 = *v63;
        v63 += 5;
        LODWORD(v75) = v68;
        v27 = v75 >> 2;
        HIDWORD(v75) = v73;
        LODWORD(v75) = v73;
        v28 = v75 >> 2;
        HIDWORD(v75) = v30;
        LODWORD(v75) = v30;
        v31 = v72 - 1894007588 + v77 + v76 + (v75 >> 27);
        v64 += 5;
        HIDWORD(v75) = v74;
        LODWORD(v75) = v74;
        v29 = v75 >> 2;
      }

      while (v64 < 0x37);
      v78 = v99;
      for (j = 55; j < 0x4B; j += 5)
      {
        HIDWORD(v80) = v31;
        LODWORD(v80) = v31;
        v81 = (v80 >> 27) - 899497514 + (v29 ^ v30 ^ v28) + v27 + *(v78 - 4);
        HIDWORD(v80) = v30;
        LODWORD(v80) = v30;
        v82 = v80 >> 2;
        HIDWORD(v80) = v81;
        LODWORD(v80) = v81;
        v83 = v80 >> 27;
        v84 = __PAIR64__(v31, __ROR4__(v30, 2));
        v85 = v28 - 899497514 + (v31 ^ v84 ^ v29) + *(v78 - 3) + v83;
        LODWORD(v84) = v31;
        v86 = v84 >> 2;
        HIDWORD(v84) = v85;
        LODWORD(v84) = v85;
        v87 = v84 >> 27;
        v88 = __PAIR64__(v81, __ROR4__(v31, 2));
        v89 = v29 - 899497514 + *(v78 - 2) + (v82 ^ v88 ^ v81) + v87;
        LODWORD(v88) = v81;
        v27 = v88 >> 2;
        HIDWORD(v88) = v89;
        LODWORD(v88) = v89;
        v90 = v88 >> 27;
        v91 = __PAIR64__(v85, __ROR4__(v31, 2));
        v30 = v82 - 899497514 + *(v78 - 1) + (v27 ^ v91 ^ v85) + v90;
        LODWORD(v91) = v85;
        v28 = v91 >> 2;
        HIDWORD(v91) = v30;
        LODWORD(v91) = v30;
        v92 = v91 >> 27;
        v93 = __PAIR64__(v89, __ROR4__(v81, 2));
        v94 = *v78;
        v78 += 5;
        v31 = v86 - 899497514 + v94 + (v28 ^ v93 ^ v89) + v92;
        LODWORD(v93) = v89;
        v29 = v93 >> 2;
      }

      v3 += v31;
      v4 += v30;
      *result = v3;
      result[1] = v4;
      v5 += v29;
      v6 += v28;
      result[2] = v5;
      result[3] = v6;
      v7 += v27;
      a3 += 64;
      result[4] = v7;
    }

    while (a2);
  }

  return result;
}

uint64_t ccaes_ecb_decrypt(_DWORD *a1, uint64_t a2, _DWORD *a3, int *a4)
{
  if (a2)
  {
    while (1)
    {
      v4 = a1[61] ^ *a3;
      v5 = a1[62] ^ a3[1];
      v6 = a1[63] ^ a3[2];
      v7 = a1[64] ^ a3[3];
      v8 = a1 + 72;
      for (i = (a1[121] >> 5) - 1; ; --i)
      {
        v10 = TD1[BYTE1(v7)] ^ TD0[v4] ^ TD2[BYTE2(v6)] ^ TD3[HIBYTE(v5)] ^ *(v8 - 7);
        v11 = TD1[BYTE1(v4)] ^ TD0[v5] ^ TD2[BYTE2(v7)] ^ TD3[HIBYTE(v6)] ^ *(v8 - 6);
        v12 = TD1[BYTE1(v5)] ^ TD0[v6] ^ TD2[BYTE2(v4)] ^ TD3[HIBYTE(v7)] ^ *(v8 - 5);
        v13 = TD1[BYTE1(v6)] ^ TD0[v7] ^ TD2[BYTE2(v5)] ^ TD3[HIBYTE(v4)] ^ *(v8 - 4);
        v14 = HIBYTE(v11);
        v15 = BYTE1(v10);
        v16 = HIBYTE(v12);
        v17 = BYTE1(v11);
        v18 = BYTE2(v10);
        v19 = HIBYTE(v13);
        v20 = BYTE2(v11);
        v21 = HIBYTE(v10);
        if (!i)
        {
          break;
        }

        v22 = TD1[BYTE1(v13)] ^ TD0[v10] ^ TD2[BYTE2(v12)] ^ TD3[v14];
        v23 = *(v8 - 3);
        v24 = *(v8 - 2);
        v26 = *(v8 - 1);
        v25 = *v8;
        v8 += 8;
        v4 = v22 ^ v23;
        v27 = TD1[v15] ^ TD0[v11] ^ TD2[BYTE2(v13)] ^ TD3[v16];
        v28 = TD1[v17];
        v5 = v27 ^ v24;
        v6 = v28 ^ TD0[v12] ^ TD2[v18] ^ TD3[v19] ^ v26;
        v7 = TD1[BYTE1(v12)] ^ TD0[v13] ^ TD2[v20] ^ TD3[v21] ^ v25;
      }

      v29 = &a1[8 * ((a1[121] >> 5) - 1)];
      *a4 = (Td4[4 * v10] | (Td4[4 * BYTE1(v13) + 1] << 8) | (Td4[4 * BYTE2(v12) + 2] << 16) | (Td4[4 * v14 + 3] << 24)) ^ v29[69];
      a4[1] = (Td4[4 * v11] | (Td4[4 * BYTE1(v10) + 1] << 8) | (Td4[4 * BYTE2(v13) + 2] << 16) | (Td4[4 * v16 + 3] << 24)) ^ v29[70];
      a4[2] = (Td4[4 * v12] | (Td4[4 * BYTE1(v11) + 1] << 8) | (Td4[4 * BYTE2(v10) + 2] << 16) | (Td4[4 * v19 + 3] << 24)) ^ v29[71];
      a4[3] = (Td4[4 * v13] | (Td4[4 * BYTE1(v12) + 1] << 8) | (Td4[4 * BYTE2(v11) + 2] << 16) | (Td4[4 * v21 + 3] << 24)) ^ v29[72];
      if (!--a2)
      {
        break;
      }

      a4 += 4;
      a3 += 4;
    }
  }

  return 0;
}

int8x16_t *ccaes_xts_decrypt_vng_vector(int8x16_t *result, uint64_t a2, int64x2_t *a3, uint64_t a4, int8x16_t *a5)
{
  v6 = a5[15].u32[0];
  v7 = veorq_s8(v5, v5);
  v7.i64[0] = 134;
  v8 = *a5;
  v217 = *a3;
  v9 = vshrq_n_u64(v217, 0x3FuLL);
  v10 = vshrq_n_s64(v217, 0x3FuLL);
  v218 = veorq_s8(vorrq_s8(vextq_s8(v9, v9, 8uLL), vshlq_n_s64(v217, 1uLL)), vandq_s8(vextq_s8(v10, v10, 0xFuLL), v7));
  v11 = vshrq_n_u64(v218, 0x3FuLL);
  v12 = vshrq_n_s64(v218, 0x3FuLL);
  v219 = veorq_s8(vorrq_s8(vextq_s8(v11, v11, 8uLL), vshlq_n_s64(v218, 1uLL)), vandq_s8(vextq_s8(v12, v12, 0xFuLL), v7));
  v13 = vshrq_n_u64(v219, 0x3FuLL);
  v14 = vshrq_n_s64(v219, 0x3FuLL);
  v220 = veorq_s8(vorrq_s8(vextq_s8(v13, v13, 8uLL), vshlq_n_s64(v219, 1uLL)), vandq_s8(vextq_s8(v14, v14, 0xFuLL), v7));
  v15 = vshrq_n_u64(v220, 0x3FuLL);
  v16 = vshrq_n_s64(v220, 0x3FuLL);
  v221 = veorq_s8(vorrq_s8(vextq_s8(v15, v15, 8uLL), vshlq_n_s64(v220, 1uLL)), vandq_s8(vextq_s8(v16, v16, 0xFuLL), v7));
  v17 = vshrq_n_u64(v221, 0x3FuLL);
  v18 = vshrq_n_s64(v221, 0x3FuLL);
  v222 = veorq_s8(vorrq_s8(vextq_s8(v17, v17, 8uLL), vshlq_n_s64(v221, 1uLL)), vandq_s8(vextq_s8(v18, v18, 0xFuLL), v7));
  v19 = vshrq_n_u64(v222, 0x3FuLL);
  v20 = vshrq_n_s64(v222, 0x3FuLL);
  v223 = veorq_s8(vorrq_s8(vextq_s8(v19, v19, 8uLL), vshlq_n_s64(v222, 1uLL)), vandq_s8(vextq_s8(v20, v20, 0xFuLL), v7));
  v21 = vshrq_n_u64(v223, 0x3FuLL);
  v22 = vshrq_n_s64(v223, 0x3FuLL);
  v224 = veorq_s8(vorrq_s8(vextq_s8(v21, v21, 8uLL), vshlq_n_s64(v223, 1uLL)), vandq_s8(vextq_s8(v22, v22, 0xFuLL), v7));
  v23 = vshrq_n_u64(v224, 0x3FuLL);
  v24 = vshrq_n_s64(v224, 0x3FuLL);
  v25 = veorq_s8(vorrq_s8(vextq_s8(v23, v23, 8uLL), vshlq_n_s64(v224, 1uLL)), vandq_s8(vextq_s8(v24, v24, 0xFuLL), v7));
  v26 = a4 < 8;
  for (i = a4 - 8; !v26; i -= 8)
  {
    v28 = v217;
    v29 = v218;
    v30 = v219;
    v31 = v220;
    v32 = v221;
    v33 = v222;
    v34 = v223;
    v35 = v224;
    a2 += 128;
    _Q16 = *(a5 + v6);
    v217 = v25;
    v37 = vshrq_n_u64(v25, 0x3FuLL);
    v38 = vshrq_n_s64(v25, 0x3FuLL);
    v39 = veorq_s8(vorrq_s8(vextq_s8(v37, v37, 8uLL), vshlq_n_s64(v25, 1uLL)), vandq_s8(vextq_s8(v38, v38, 0xFuLL), v7));
    v40 = vshrq_n_u64(v39, 0x3FuLL);
    v41 = vshrq_n_s64(v39, 0x3FuLL);
    v218 = v39;
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

    v62 = veorq_s8(vorrq_s8(vextq_s8(v40, v40, 8uLL), vshlq_n_s64(v39, 1uLL)), vandq_s8(vextq_s8(v41, v41, 0xFuLL), v7));
    _Q16 = *(&a5[-1] + v6);
    v64 = vshrq_n_u64(v62, 0x3FuLL);
    v65 = vshrq_n_s64(v62, 0x3FuLL);
    v219 = v62;
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

    v82 = veorq_s8(vorrq_s8(vextq_s8(v64, v64, 8uLL), vshlq_n_s64(v62, 1uLL)), vandq_s8(vextq_s8(v65, v65, 0xFuLL), v7));
    _Q16 = *(&a5[-2] + v6);
    v84 = vshrq_n_u64(v82, 0x3FuLL);
    v85 = vshrq_n_s64(v82, 0x3FuLL);
    v220 = v82;
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

    v102 = veorq_s8(vorrq_s8(vextq_s8(v84, v84, 8uLL), vshlq_n_s64(v82, 1uLL)), vandq_s8(vextq_s8(v85, v85, 0xFuLL), v7));
    _Q16 = *(&a5[-3] + v6);
    v104 = vshrq_n_u64(v102, 0x3FuLL);
    v105 = vshrq_n_s64(v102, 0x3FuLL);
    v221 = v102;
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

    v122 = veorq_s8(vorrq_s8(vextq_s8(v104, v104, 8uLL), vshlq_n_s64(v102, 1uLL)), vandq_s8(vextq_s8(v105, v105, 0xFuLL), v7));
    _Q16 = *(&a5[-4] + v6);
    v124 = vshrq_n_u64(v122, 0x3FuLL);
    v125 = vshrq_n_s64(v122, 0x3FuLL);
    v222 = v122;
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

    v142 = veorq_s8(vorrq_s8(vextq_s8(v124, v124, 8uLL), vshlq_n_s64(v122, 1uLL)), vandq_s8(vextq_s8(v125, v125, 0xFuLL), v7));
    _Q16 = *(&a5[-5] + v6);
    v144 = vshrq_n_u64(v142, 0x3FuLL);
    v145 = vshrq_n_s64(v142, 0x3FuLL);
    v223 = v142;
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

    v162 = veorq_s8(vorrq_s8(vextq_s8(v144, v144, 8uLL), vshlq_n_s64(v142, 1uLL)), vandq_s8(vextq_s8(v145, v145, 0xFuLL), v7));
    _Q16 = *(&a5[-6] + v6);
    v164 = vshrq_n_u64(v162, 0x3FuLL);
    v165 = vshrq_n_s64(v162, 0x3FuLL);
    v224 = v162;
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

    v25 = veorq_s8(vorrq_s8(vextq_s8(v164, v164, 8uLL), vshlq_n_s64(v162, 1uLL)), vandq_s8(vextq_s8(v165, v165, 0xFuLL), v7));
    _Q16 = *(&a5[-7] + v6);
    v183 = v6 - 128;
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

      _Q16 = *(a5 + v183);
      v26 = v183 <= 16;
      v183 -= 16;
    }

    while (!v26);
    __asm
    {
      AESD            V0.16B, V16.16B
      AESD            V1.16B, V16.16B
      AESD            V2.16B, V16.16B
      AESD            V3.16B, V16.16B
      AESD            V4.16B, V16.16B
      AESD            V5.16B, V16.16B
      AESD            V6.16B, V16.16B
      AESD            V7.16B, V16.16B
    }

    *result = veorq_s8(veorq_s8(_Q0, v8), v28);
    result[1] = veorq_s8(veorq_s8(_Q1, v8), v29);
    result[2] = veorq_s8(veorq_s8(_Q2, v8), v30);
    result[3] = veorq_s8(veorq_s8(_Q3, v8), v31);
    v208 = result + 4;
    *v208 = veorq_s8(veorq_s8(_Q4, v8), v32);
    v208[1] = veorq_s8(veorq_s8(_Q5, v8), v33);
    v208[2] = veorq_s8(veorq_s8(_Q6, v8), v34);
    v208[3] = veorq_s8(veorq_s8(_Q7, v8), v35);
    result = v208 + 4;
    v26 = i < 8;
  }

  v209 = &v217;
  v26 = i < -7;
  for (j = i + 7; !v26; --j)
  {
    v211 = *v209++;
    a2 += 16;
    _Q16 = *(a5 + v6);
    v213 = v6 - 16;
    do
    {
      __asm
      {
        AESD            V0.16B, V16.16B
        AESIMC          V0.16B, V0.16B
      }

      _Q16 = *(a5 + v213);
      v26 = v213 <= 16;
      v213 -= 16;
    }

    while (!v26);
    __asm { AESD            V0.16B, V16.16B }

    *result++ = veorq_s8(veorq_s8(_Q0, v8), v211);
    v26 = j < 1;
  }

  *a3 = *v209;
  return result;
}

uint64_t cccmac_update_internal(void *a1, unint64_t a2, char *__src)
{
  result = 0;
  v13 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v5 = __src;
    if (__src)
    {
      v6 = a2;
      v7 = a1[6];
      if (16 - v7 >= a2)
      {
        v8 = a2;
      }

      else
      {
        v8 = 16 - v7;
      }

      if (v7 > 0x10)
      {
        return 0xFFFFFFFFLL;
      }

      v9 = a1[8];
      if (v7)
      {
        memcpy(a1 + v7 + 32, __src, v8);
        a1[6] += v8;
        v6 -= v8;
        if (!v6)
        {
          return 0;
        }

        v5 += v8;
        ccdrbg_generate_internal(v9, (a1 + 9), a1 + *v9 + 72, 1, (a1 + 4), v12);
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

          ccdrbg_generate_internal(v9, (a1 + 9), a1 + *v9 + 72, v11, v5, v12);
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

void *ccmode_factory_ofb_crypt(void *result, void *a2)
{
  *result = ((a2[1] + 7) & 0xFFFFFFFFFFFFFFF8) + ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  result[1] = 1;
  result[2] = ccmode_ofb_init;
  result[3] = ccmode_ofb_crypt;
  result[4] = a2;
  return result;
}

uint64_t ccrsa_decrypt_oaep_ws(uint64_t a1, uint64_t *a2, uint64_t *a3, size_t *a4, void *a5, unint64_t a6, uint64_t a7, size_t a8, char *a9)
{
  v17 = ccrng(0);
  if (v17)
  {
    return ccrsa_decrypt_oaep_blinded_ws(a1, v17, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ccrsa_decrypt_oaep(unint64_t *a1, uint64_t *a2, size_t *a3, void *a4, unint64_t a5, uint64_t a6, size_t a7, char *a8)
{
  v29 = timingsafe_enable_if_supported();
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

  v19 = cc_malloc_clear(8 * (v18 + 3 * v15));
  v27[0] = v19;
  v20 = *a1;
  v21 = 9 * *a1;
  v22 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N(*a1);
  if (v21 <= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v21;
  }

  v27[1] = v23 + 3 * v20;
  v27[2] = 0;
  v27[3] = cc_ws_alloc;
  v28 = cc_ws_free;
  if (v19)
  {
    v24 = ccrsa_decrypt_oaep_ws(v27, a1, a2, a3, a4, a5, a6, a7, a8);
    v28(v27);
  }

  else
  {
    v24 = 4294967283;
  }

  cc_disable_dit_with_sb(&v29);
  return v24;
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

uint64_t OUTLINED_FUNCTION_1_22()
{
  v3 = *(*(v0 + 8) + 8);

  return cc_clear(v3, v1);
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

uint64_t ccmldsa_poly_add(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (i = 0; i != 1024; i += 4)
  {
    *(result + i) = *(a3 + i) + *(a2 + i);
  }

  return result;
}

uint64_t ccmldsa_poly_sub(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (i = 0; i != 1024; i += 4)
  {
    *(result + i) = *(a2 + i) - *(a3 + i);
  }

  return result;
}

uint64_t ccmldsa_poly_reduce(uint64_t result)
{
  for (i = 0; i != 1024; i += 4)
  {
    *(result + i) = (8380417 * ((0x200801C0602 * *(result + i)) >> 32) + 2145386752) >> 32;
  }

  return result;
}

uint64_t ccmldsa_poly_power2round(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (i = 0; i != 1024; i += 4)
  {
    v4 = *(a3 + i);
    *(result + i) = (v4 + 4095) >> 13;
    *(a2 + i) = v4 - ((v4 + 4095) & 0xFFFFE000);
  }

  return result;
}

int32x4_t ccmldsa_poly_shiftl(uint64_t a1)
{
  for (i = 0; i != 1024; i += 16)
  {
    result = vshlq_n_s32(*(a1 + i), 0xDuLL);
    *(a1 + i) = result;
  }

  return result;
}

uint64_t ccmldsa_poly_caddq(uint64_t result)
{
  for (i = 0; i != 1024; i += 4)
  {
    *(result + i) += (*(result + i) >> 31) & 0x7FE001;
  }

  return result;
}

uint64_t ccmldsa_poly_make_hint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  LODWORD(v4) = 0;
  do
  {
    v5 = *(a3 + v3);
    if (*(a2 + v3))
    {
      v6 = ((v5 + 261888) | (-261888 - v5)) < 0;
    }

    else
    {
      v6 = 1;
    }

    v7 = v6 && (v5 - 261889) >= 0xFFF801FF;
    v8 = !v7;
    *(a1 + v3) = v8;
    if (v7)
    {
      v4 = v4;
    }

    else
    {
      v4 = (v4 + 1);
    }

    v3 += 4;
  }

  while (v3 != 1024);
  return v4;
}

uint64_t ccmldsa_poly_decompose(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (i = 0; i != 1024; i += 4)
  {
    v4 = *(a3 + i);
    v5 = ((1025 * ((v4 + 127) >> 7) + 0x200000) >> 22) & 0xF;
    *(result + i) = v5;
    v6 = v4 - 523776 * v5;
    if (v6 <= 4190208)
    {
      v7 = 0;
    }

    else
    {
      v7 = -8380417;
    }

    *(a2 + i) = v7 + v6;
  }

  return result;
}

uint64_t ccmldsa_poly_use_hint(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 1024; i += 4)
  {
    v3 = *(result + i);
    v4 = 1025 * ((v3 + 127) >> 7) + 0x200000;
    v5 = (v4 >> 22) & 0xF;
    if (*(a2 + i))
    {
      v6 = v4 >> 22;
      v7 = v3 - 523776 * v5;
      if (v7 <= 4190208)
      {
        v8 = 0;
      }

      else
      {
        v8 = -8380417;
      }

      if (v8 + v7 < 1)
      {
        v9 = v6 - 1;
      }

      else
      {
        v9 = v6 + 1;
      }

      v5 = v9 & 0xF;
    }

    *(result + i) = v5;
  }

  return result;
}

_BYTE *ccmldsa_poly_bitpack_eta2(_BYTE *result, uint64_t a2)
{
  v2 = 0;
  v14 = *MEMORY[0x29EDCA608];
  do
  {
    for (i = 0; i != 8; ++i)
    {
      v7[i] = 2 - *(a2 + 4 * i);
    }

    v4 = v8;
    *result = v7[0] | (8 * v7[1]) | (v8 << 6);
    v5 = (2 * v9) | (v4 >> 2) | (16 * v10);
    v6 = v11;
    result[1] = v5 | (v11 << 7);
    result[2] = (4 * v12) | (v6 >> 1) | (32 * v13);
    result += 3;
    ++v2;
    a2 += 32;
  }

  while (v2 != 32);
  return result;
}

uint64_t ccmldsa_poly_bitunpack_eta2(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = (a2 + 2);
  do
  {
    v4 = result + v2;
    v5 = *(v3 - 2);
    v6 = *(v3 - 1);
    v7 = *v3;
    v3 += 3;
    *v4 = 2 - (v5 & 7);
    *(v4 + 4) = 2 - ((v5 >> 3) & 7);
    *(v4 + 8) = 2 - ((v5 >> 6) & 0xFFFFFFFB | (4 * (v6 & 1)));
    *(v4 + 12) = vsub_s32(0x200000002, (*&vshl_u32(vdup_n_s32(v6), 0xFFFFFFFCFFFFFFFFLL) & 0xFFFFFF07FFFFFF07));
    *(v4 + 20) = 2 - ((v6 >> 7) & 0xFFFFFFF9 | (2 * (v7 & 3)));
    *(v4 + 24) = 2 - ((v7 >> 2) & 7);
    *(v4 + 28) = 2 - (v7 >> 5);
    v2 += 32;
  }

  while (v2 != 1024);
  return result;
}

uint64_t ccmldsa_poly_bitpack_eta4(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = (a2 + 4);
  do
  {
    *(result + v2++) = (64 - 16 * *v3) | (4 - *(v3 - 4));
    v3 += 8;
  }

  while (v2 != 128);
  return result;
}

_DWORD *ccmldsa_poly_bitunpack_eta4(_DWORD *result, uint64_t a2)
{
  for (i = 0; i != 128; ++i)
  {
    v3 = *(a2 + i);
    *result = 4 - (v3 & 0xF);
    result[1] = 4 - (v3 >> 4);
    result += 2;
  }

  return result;
}

uint64_t ccmldsa_poly_bitpack_t0(uint64_t result, int32x4_t *a2)
{
  v2 = 0;
  v3 = a2 + 1;
  v4.i64[0] = 0x100000001000;
  v4.i64[1] = 0x100000001000;
  do
  {
    v5 = *v3;
    v6 = vsubq_s32(v4, v3[-1]);
    v7 = v6.u32[1];
    v8 = v6.u32[2];
    v9 = v6.u32[3];
    v10 = (32 * v6.i8[4]) | v6.i8[1];
    v11 = v6.i32[1] >> 3;
    v12 = (result + v2);
    *v12 = v6.i8[0];
    v13 = 4 * v6.i8[8];
    v14 = vsubq_s32(v4, v5);
    v12[1] = v10;
    v12[2] = v11;
    v12[3] = v13 | (v7 >> 11);
    v12[4] = (v9 << 7) | (v8 >> 6);
    v12[5] = v9 >> 1;
    v12[6] = (16 * v14.i8[0]) | (v9 >> 9);
    v12[7] = v14.i32[0] >> 4;
    v12[8] = (2 * v14.i8[4]) | (v14.i32[0] >> 12);
    v12[9] = (v14.i8[8] << 6) | (v14.i32[1] >> 7);
    v12[10] = v14.i32[2] >> 2;
    v12[11] = (8 * v14.i8[12]) | (v14.i32[2] >> 10);
    v12[12] = v14.i32[3] >> 5;
    v3 += 2;
    v2 += 13;
  }

  while (v2 != 416);
  return result;
}

uint64_t ccmldsa_poly_bitunpack_t0(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = (a2 + 6);
  do
  {
    v4 = *(v3 - 5);
    v5 = (result + v2);
    v6 = *(v3 - 3);
    v7 = *(v3 - 2);
    v8 = *v3;
    v9 = v3[2];
    v10 = v3[3];
    v11 = (v8 >> 4) | (16 * v3[1]);
    v12 = v3[5];
    v13 = *(v3 - 6) | ((v4 & 0x1F) << 8);
    v14 = *(v3 - 1);
    v15 = v3[4];
    v16 = (v4 >> 5) & 0xFFFFE7FF | ((v6 & 3) << 11) | (8 * *(v3 - 4));
    v17 = v3[6];
    *v5 = 4096 - v13;
    v5[1] = 4096 - v16;
    v5[2] = 4096 - ((v6 >> 2) & 0xFFFFE03F | ((v7 & 0x7F) << 6));
    v5[3] = 4096 - ((v7 >> 7) & 0xFFFFE1FF | ((v8 & 0xF) << 9) | (2 * v14));
    v5[4] = (~(v9 << 12) & 0x1000) - v11;
    v5[5] = 4096 - ((v9 >> 1) & 0xFFFFE07F | ((v10 & 0x3F) << 7));
    v5[6] = 4096 - ((v10 >> 6) & 0xFFFFE3FF | ((v12 & 7) << 10) | (4 * v15));
    v5[7] = 4096 - ((v12 >> 3) | (32 * v17));
    v2 += 32;
    v3 += 13;
  }

  while (v2 != 1024);
  return result;
}

uint64_t ccmldsa_poly_bitpack_t1(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = (a2 + 8);
  do
  {
    v4 = (result + v2);
    *v4 = *(v3 - 2);
    v4[1] = (4 * *(v3 - 4)) | BYTE1(*(v3 - 2));
    v4[2] = (16 * *v3) | (*(v3 - 1) >> 6);
    v4[3] = (v3[4] << 6) | (*v3 >> 4);
    v4[4] = *(v3 + 1) >> 2;
    v3 += 16;
    v2 += 5;
  }

  while (v2 != 320);
  return result;
}

uint64_t ccmldsa_poly_bitunpack_t1(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = (a2 + 2);
  do
  {
    v4 = (result + v2);
    *v4 = *(v3 - 2) | ((*(v3 - 1) & 3) << 8);
    v4[1] = (*(v3 - 1) >> 2) & 0xFFFFFC3F | ((*v3 & 0xF) << 6);
    v4[2] = (*v3 >> 4) & 0xFFFFFC0F | (16 * (v3[1] & 0x3F));
    v4[3] = (v3[1] >> 6) | (4 * v3[2]);
    v2 += 16;
    v3 += 5;
  }

  while (v2 != 1024);
  return result;
}

uint64_t ccmldsa_poly_bitpack_z(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = (a2 + 4);
  do
  {
    v4 = result + v2;
    v5 = 0x80000 - *(v3 - 1);
    v6 = 0x80000 - *v3;
    *v4 = -*(v3 - 2);
    *(v4 + 2) = (16 * v6) | BYTE2(v5);
    *(v4 + 3) = v6 >> 4;
    *(v4 + 4) = v6 >> 12;
    v3 += 2;
    v2 += 5;
  }

  while (v2 != 640);
  return result;
}

uint64_t ccmldsa_poly_bitunpack_z(uint64_t result, uint64_t a2)
{
  v2 = (result + 4);
  v3 = (a2 + 2);
  v4 = 128;
  do
  {
    v5 = *v3;
    v6 = 0x80000 - (*(v3 - 2) | ((v5 & 0xF) << 16) | (*(v3 - 1) << 8));
    v7 = 0x80000 - ((v5 >> 4) | (v3[2] << 12) | (16 * v3[1]));
    *(v2 - 1) = v6;
    *v2 = v7;
    v2 += 2;
    v3 += 5;
    --v4;
  }

  while (v4);
  return result;
}

uint64_t ccmldsa_poly_simplebitpack_w1(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = (a2 + 4);
  do
  {
    *(result + v2++) = *(v3 - 1) | (16 * *v3);
    v3 += 8;
  }

  while (v2 != 128);
  return result;
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

int64x2_t *ccaes_xts_encrypt_vng_wrapper(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, int8x16_t *a5)
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
    ccaes_xts_encrypt_vng_vector(a5, a4, v6, a3, (a1 + 16));
  }

  return v6;
}

uint64_t ccz_subi(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v9[1] = *MEMORY[0x29EDCA608];
  v8 = timingsafe_enable_if_supported();
  v9[0] = a3;
  v7[0] = 1;
  v7[1] = 0;
  v7[3] = v9;
  v7[2] = 1;
  ccz_sub(a1, a2, v7);
  return cc_disable_dit_with_sb(&v8);
}

uint64_t ccctr_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = (*(a1 + 24))(a1, a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t ccctr_update(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = (*(a1 + 40))(a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t ccctr_one_shot_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16[1] = *MEMORY[0x29EDCA608];
  v11 = MEMORY[0x2A1C7C4A8](a1);
  v13 = v16 - v12;
  v14 = (*(v11 + 24))(v11, v16 - v12);
  if (!v14)
  {
    v14 = (*(a1 + 40))(v13, a5, a6, a7);
  }

  cc_clear(*a1, v13);
  return v14;
}

uint64_t ccctr_one_shot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = timingsafe_enable_if_supported();
  v14 = ccctr_one_shot_internal(a1, a2, a3, a4, a5, a6, a7);
  cc_disable_dit_with_sb(&v16);
  return v14;
}

uint64_t ccn_lcm_ws(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = *(a1 + 16);
  v11 = (*(a1 + 24))();
  v12 = ccn_gcd_ws(a1, a2, v11->i64, a2, a4, a2, a5);
  ccn_div_exact_ws(a1, a2, v11->i8, a5, v11);
  ccn_shift_right_multi(a2, v11, v11, v12);
  result = ccn_mul_ws(a1, a2, a3, a4, v11);
  *(a1 + 16) = v10;
  return result;
}

uint64_t ccecies_encrypt_gcm_setup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, int a7)
{
  v19 = timingsafe_enable_if_supported();
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 28) = a6;
  *(a1 + 32) = a7;
  *(a1 + 24) = a5;
  if ((a6 - 17) >= 0xFFFFFFFB)
  {
    v14 = 0;
  }

  else
  {
    v14 = -5;
  }

  if (((1 << a5) & 0x101010000) != 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = -5;
  }

  if (a5 <= 0x20)
  {
    v16 = v15;
  }

  else
  {
    v16 = -5;
  }

  if (*(a4 + 8) == 4073947)
  {
    v17 = v16;
  }

  else
  {
    v17 = 4294967291;
  }

  cc_disable_dit_with_sb(&v19);
  return v17;
}

uint64_t fipspost_post_mldsa(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v29[937] = *MEMORY[0x29EDCA608];
  bzero(&v26, 0x1300uLL);
  v2 = ccmldsa87();
  ccmldsa_full_ctx_init(v29, v2);
  __s1[0] = seed_kat;
  __s1[1] = unk_299DB2C38;
  if ((v1 & 0x10) != 0)
  {
    LOBYTE(__s1[0]) = 117;
  }

  ccrng(0);
  if (ccmldsa_derive_key_from_seed(v29, 32))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccmldsa_derive_key_from_seed: %d\n");
LABEL_7:
    v4 = -75;
    goto LABEL_8;
  }

  v3 = ccmldsa_public_ctx(v29);
  if (ccmldsa_export_pubkey(v3, 0xA20uLL, __s1))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccmldsa_export_pubkey: %d\n");
    goto LABEL_7;
  }

  if (!memcmp(__s1, &pubkey_kat_0, 0xA20uLL))
  {
    if (ccmldsa_export_privkey(v29, 0x1320uLL, __s1))
    {
      mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccmldsa_export_privkey: %d\n");
      goto LABEL_7;
    }

    if (!memcmp(__s1, &privkey_kat_0, 0x1320uLL))
    {
      v4 = 0;
    }

    else
    {
      v24 = mach_absolute_time();
      v4 = -75;
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: mismatch privkey: %d\n", v24, "fipspost_post_mldsa_keygen", 73, -75);
    }
  }

  else
  {
    v13 = mach_absolute_time();
    v4 = -75;
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: mismatch pubkey: %d\n", v13, "fipspost_post_mldsa_keygen", 62, -75);
  }

LABEL_8:
  v5 = ccmldsa87();
  ccmldsa_full_ctx_init(v29, v5);
  ccrng(0);
  v6 = ccmldsa_derive_key_from_seed(v29, 32);
  if (v6)
  {
    v7 = v6;
    v8 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccmldsa_derive_key_from_seed: %d\n", v8, "fipspost_post_mldsa_sign_kat", 88, v7);
    v9 = -73;
  }

  else
  {
    v27 = msg_kat_0;
    v28 = unk_299DB4998;
    if ((v1 & 0x10) != 0)
    {
      LOBYTE(v27) = 110;
    }

    v10 = ccmldsa_sign_internal(v5, (&v29[1] + *(v29[0] + 72)), 4627, __s1, 32, &v27, 0, 0, &sig_rng_kat);
    if (v10)
    {
      v11 = v10;
      v12 = mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccmldsa_sign: %d\n", v12, "fipspost_post_mldsa_sign_kat", 101, v11);
      v9 = -75;
    }

    else if (!memcmp(__s1, &sig_kat, 0x1213uLL))
    {
      v9 = 0;
    }

    else
    {
      v14 = mach_absolute_time();
      v9 = -75;
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: mismatch sig: %d\n", v14, "fipspost_post_mldsa_sign_kat", 106, -75);
    }
  }

  v15 = ccmldsa87();
  ccmldsa_full_ctx_init(v29, v15);
  ccrng(0);
  v16 = ccmldsa_derive_key_from_seed(v29, 32);
  if (v16)
  {
    v17 = v16;
    v18 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccmldsa_derive_key_from_seed: %d\n", v18, "fipspost_post_mldsa_verify_kat", 123, v17);
    v19 = -73;
  }

  else
  {
    v27 = msg_kat_0;
    v28 = unk_299DB4998;
    if ((v1 & 0x10) != 0)
    {
      LOBYTE(v27) = 110;
    }

    ccmldsa_public_ctx(v29);
    v20 = ccmldsa_verify();
    if (v20)
    {
      v21 = v20;
      v22 = mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccmldsa_verify: %d\n", v22, "fipspost_post_mldsa_verify_kat", 136, v21);
      v19 = -75;
    }

    else
    {
      v19 = 0;
    }
  }

  return v9 | v4 | v19;
}

const char *cc_impl_name(int a1)
{
  if ((a1 - 1) > 0x3C)
  {
    return "UNKNOWN";
  }

  else
  {
    return off_29F28B278[a1 - 1];
  }
}

int8x16_t *ccaes_xts_encrypt_vng_vector(int8x16_t *result, uint64_t a2, int64x2_t *a3, uint64_t a4, __int128 *a5)
{
  v6 = *(a5 + 60);
  v7 = veorq_s8(v5, v5);
  v7.i64[0] = 134;
  v326 = *a3;
  v8 = vshrq_n_u64(v326, 0x3FuLL);
  v9 = vshrq_n_s64(v326, 0x3FuLL);
  v327 = veorq_s8(vorrq_s8(vextq_s8(v8, v8, 8uLL), vshlq_n_s64(v326, 1uLL)), vandq_s8(vextq_s8(v9, v9, 0xFuLL), v7));
  v10 = vshrq_n_u64(v327, 0x3FuLL);
  v11 = vshrq_n_s64(v327, 0x3FuLL);
  v328 = veorq_s8(vorrq_s8(vextq_s8(v10, v10, 8uLL), vshlq_n_s64(v327, 1uLL)), vandq_s8(vextq_s8(v11, v11, 0xFuLL), v7));
  v12 = vshrq_n_u64(v328, 0x3FuLL);
  v13 = vshrq_n_s64(v328, 0x3FuLL);
  v329 = veorq_s8(vorrq_s8(vextq_s8(v12, v12, 8uLL), vshlq_n_s64(v328, 1uLL)), vandq_s8(vextq_s8(v13, v13, 0xFuLL), v7));
  v14 = vshrq_n_u64(v329, 0x3FuLL);
  v15 = vshrq_n_s64(v329, 0x3FuLL);
  v330 = veorq_s8(vorrq_s8(vextq_s8(v14, v14, 8uLL), vshlq_n_s64(v329, 1uLL)), vandq_s8(vextq_s8(v15, v15, 0xFuLL), v7));
  v16 = vshrq_n_u64(v330, 0x3FuLL);
  v17 = vshrq_n_s64(v330, 0x3FuLL);
  v331 = veorq_s8(vorrq_s8(vextq_s8(v16, v16, 8uLL), vshlq_n_s64(v330, 1uLL)), vandq_s8(vextq_s8(v17, v17, 0xFuLL), v7));
  v18 = vshrq_n_u64(v331, 0x3FuLL);
  v19 = vshrq_n_s64(v331, 0x3FuLL);
  v332 = veorq_s8(vorrq_s8(vextq_s8(v18, v18, 8uLL), vshlq_n_s64(v331, 1uLL)), vandq_s8(vextq_s8(v19, v19, 0xFuLL), v7));
  v20 = vshrq_n_u64(v332, 0x3FuLL);
  v21 = vshrq_n_s64(v332, 0x3FuLL);
  v333 = veorq_s8(vorrq_s8(vextq_s8(v20, v20, 8uLL), vshlq_n_s64(v332, 1uLL)), vandq_s8(vextq_s8(v21, v21, 0xFuLL), v7));
  v22 = vshrq_n_u64(v333, 0x3FuLL);
  v23 = vshrq_n_s64(v333, 0x3FuLL);
  v24 = veorq_s8(vorrq_s8(vextq_s8(v22, v22, 8uLL), vshlq_n_s64(v333, 1uLL)), vandq_s8(vextq_s8(v23, v23, 0xFuLL), v7));
  v25 = a4 < 8;
  for (i = a4 - 8; !v25; i -= 8)
  {
    v27 = v326;
    v28 = v327;
    v29 = v328;
    v30 = v329;
    v31 = v330;
    v32 = v331;
    v33 = v332;
    v34 = v333;
    a2 += 128;
    _Q16 = *a5;
    v326 = v24;
    v36 = vshrq_n_u64(v24, 0x3FuLL);
    v37 = vshrq_n_s64(v24, 0x3FuLL);
    __asm
    {
      AESE            V0.16B, V16.16B
      AESMC           V0.16B, V0.16B
    }

    v327 = veorq_s8(vorrq_s8(vextq_s8(v36, v36, 8uLL), vshlq_n_s64(v24, 1uLL)), vandq_s8(vextq_s8(v37, v37, 0xFuLL), v7));
    __asm
    {
      AESE            V1.16B, V16.16B
      AESMC           V1.16B, V1.16B
    }

    v46 = vshrq_n_u64(v327, 0x3FuLL);
    __asm
    {
      AESE            V2.16B, V16.16B
      AESMC           V2.16B, V2.16B
    }

    v49 = vshrq_n_s64(v327, 0x3FuLL);
    __asm
    {
      AESE            V3.16B, V16.16B
      AESMC           V3.16B, V3.16B
      AESE            V4.16B, V16.16B
      AESMC           V4.16B, V4.16B
      AESE            V5.16B, V16.16B
      AESMC           V5.16B, V5.16B
      AESE            V6.16B, V16.16B
      AESMC           V6.16B, V6.16B
      AESE            V7.16B, V16.16B
      AESMC           V7.16B, V7.16B
    }

    _Q16 = a5[1];
    __asm
    {
      AESE            V0.16B, V16.16B
      AESMC           V0.16B, V0.16B
    }

    v328 = veorq_s8(vorrq_s8(vextq_s8(v46, v46, 8uLL), vshlq_n_s64(v327, 1uLL)), vandq_s8(vextq_s8(v49, v49, 0xFuLL), v7));
    __asm
    {
      AESE            V1.16B, V16.16B
      AESMC           V1.16B, V1.16B
    }

    v65 = vshrq_n_u64(v328, 0x3FuLL);
    __asm
    {
      AESE            V2.16B, V16.16B
      AESMC           V2.16B, V2.16B
    }

    v68 = vshrq_n_s64(v328, 0x3FuLL);
    __asm
    {
      AESE            V3.16B, V16.16B
      AESMC           V3.16B, V3.16B
      AESE            V4.16B, V16.16B
      AESMC           V4.16B, V4.16B
      AESE            V5.16B, V16.16B
      AESMC           V5.16B, V5.16B
      AESE            V6.16B, V16.16B
      AESMC           V6.16B, V6.16B
      AESE            V7.16B, V16.16B
      AESMC           V7.16B, V7.16B
    }

    _Q16 = a5[2];
    __asm
    {
      AESE            V0.16B, V16.16B
      AESMC           V0.16B, V0.16B
    }

    v329 = veorq_s8(vorrq_s8(vextq_s8(v65, v65, 8uLL), vshlq_n_s64(v328, 1uLL)), vandq_s8(vextq_s8(v68, v68, 0xFuLL), v7));
    __asm
    {
      AESE            V1.16B, V16.16B
      AESMC           V1.16B, V1.16B
    }

    v84 = vshrq_n_u64(v329, 0x3FuLL);
    __asm
    {
      AESE            V2.16B, V16.16B
      AESMC           V2.16B, V2.16B
    }

    v87 = vshrq_n_s64(v329, 0x3FuLL);
    __asm
    {
      AESE            V3.16B, V16.16B
      AESMC           V3.16B, V3.16B
      AESE            V4.16B, V16.16B
      AESMC           V4.16B, V4.16B
      AESE            V5.16B, V16.16B
      AESMC           V5.16B, V5.16B
      AESE            V6.16B, V16.16B
      AESMC           V6.16B, V6.16B
      AESE            V7.16B, V16.16B
      AESMC           V7.16B, V7.16B
    }

    _Q16 = a5[3];
    __asm
    {
      AESE            V0.16B, V16.16B
      AESMC           V0.16B, V0.16B
    }

    v330 = veorq_s8(vorrq_s8(vextq_s8(v84, v84, 8uLL), vshlq_n_s64(v329, 1uLL)), vandq_s8(vextq_s8(v87, v87, 0xFuLL), v7));
    __asm
    {
      AESE            V1.16B, V16.16B
      AESMC           V1.16B, V1.16B
    }

    v103 = vshrq_n_u64(v330, 0x3FuLL);
    __asm
    {
      AESE            V2.16B, V16.16B
      AESMC           V2.16B, V2.16B
    }

    v106 = vshrq_n_s64(v330, 0x3FuLL);
    __asm
    {
      AESE            V3.16B, V16.16B
      AESMC           V3.16B, V3.16B
      AESE            V4.16B, V16.16B
      AESMC           V4.16B, V4.16B
      AESE            V5.16B, V16.16B
      AESMC           V5.16B, V5.16B
      AESE            V6.16B, V16.16B
      AESMC           V6.16B, V6.16B
      AESE            V7.16B, V16.16B
      AESMC           V7.16B, V7.16B
    }

    _Q16 = a5[4];
    __asm
    {
      AESE            V0.16B, V16.16B
      AESMC           V0.16B, V0.16B
    }

    v331 = veorq_s8(vorrq_s8(vextq_s8(v103, v103, 8uLL), vshlq_n_s64(v330, 1uLL)), vandq_s8(vextq_s8(v106, v106, 0xFuLL), v7));
    __asm
    {
      AESE            V1.16B, V16.16B
      AESMC           V1.16B, V1.16B
    }

    v122 = vshrq_n_u64(v331, 0x3FuLL);
    __asm
    {
      AESE            V2.16B, V16.16B
      AESMC           V2.16B, V2.16B
    }

    v125 = vshrq_n_s64(v331, 0x3FuLL);
    __asm
    {
      AESE            V3.16B, V16.16B
      AESMC           V3.16B, V3.16B
      AESE            V4.16B, V16.16B
      AESMC           V4.16B, V4.16B
      AESE            V5.16B, V16.16B
      AESMC           V5.16B, V5.16B
      AESE            V6.16B, V16.16B
      AESMC           V6.16B, V6.16B
      AESE            V7.16B, V16.16B
      AESMC           V7.16B, V7.16B
    }

    _Q16 = a5[5];
    __asm
    {
      AESE            V0.16B, V16.16B
      AESMC           V0.16B, V0.16B
    }

    v332 = veorq_s8(vorrq_s8(vextq_s8(v122, v122, 8uLL), vshlq_n_s64(v331, 1uLL)), vandq_s8(vextq_s8(v125, v125, 0xFuLL), v7));
    __asm
    {
      AESE            V1.16B, V16.16B
      AESMC           V1.16B, V1.16B
    }

    v141 = vshrq_n_u64(v332, 0x3FuLL);
    __asm
    {
      AESE            V2.16B, V16.16B
      AESMC           V2.16B, V2.16B
    }

    v144 = vshrq_n_s64(v332, 0x3FuLL);
    __asm
    {
      AESE            V3.16B, V16.16B
      AESMC           V3.16B, V3.16B
      AESE            V4.16B, V16.16B
      AESMC           V4.16B, V4.16B
      AESE            V5.16B, V16.16B
      AESMC           V5.16B, V5.16B
      AESE            V6.16B, V16.16B
      AESMC           V6.16B, V6.16B
      AESE            V7.16B, V16.16B
      AESMC           V7.16B, V7.16B
    }

    _Q16 = a5[6];
    __asm
    {
      AESE            V0.16B, V16.16B
      AESMC           V0.16B, V0.16B
    }

    v333 = veorq_s8(vorrq_s8(vextq_s8(v141, v141, 8uLL), vshlq_n_s64(v332, 1uLL)), vandq_s8(vextq_s8(v144, v144, 0xFuLL), v7));
    __asm
    {
      AESE            V1.16B, V16.16B
      AESMC           V1.16B, V1.16B
    }

    v160 = vshrq_n_u64(v333, 0x3FuLL);
    __asm
    {
      AESE            V2.16B, V16.16B
      AESMC           V2.16B, V2.16B
    }

    v163 = vshrq_n_s64(v333, 0x3FuLL);
    __asm
    {
      AESE            V3.16B, V16.16B
      AESMC           V3.16B, V3.16B
      AESE            V4.16B, V16.16B
      AESMC           V4.16B, V4.16B
      AESE            V5.16B, V16.16B
      AESMC           V5.16B, V5.16B
      AESE            V6.16B, V16.16B
      AESMC           V6.16B, V6.16B
      AESE            V7.16B, V16.16B
      AESMC           V7.16B, V7.16B
    }

    v24 = veorq_s8(vorrq_s8(vextq_s8(v160, v160, 8uLL), vshlq_n_s64(v333, 1uLL)), vandq_s8(vextq_s8(v163, v163, 0xFuLL), v7));
    _Q16 = a5[7];
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
      AESE            V4.16B, V16.16B
      AESMC           V4.16B, V4.16B
      AESE            V5.16B, V16.16B
      AESMC           V5.16B, V5.16B
      AESE            V6.16B, V16.16B
      AESMC           V6.16B, V6.16B
      AESE            V7.16B, V16.16B
      AESMC           V7.16B, V7.16B
    }

    _Q16 = a5[8];
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
      AESE            V4.16B, V16.16B
      AESMC           V4.16B, V4.16B
      AESE            V5.16B, V16.16B
      AESMC           V5.16B, V5.16B
      AESE            V6.16B, V16.16B
      AESMC           V6.16B, V6.16B
      AESE            V7.16B, V16.16B
      AESMC           V7.16B, V7.16B
    }

    _Q16 = a5[9];
    v209 = a5[10];
    if (v6 > 160)
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
        AESE            V4.16B, V16.16B
        AESMC           V4.16B, V4.16B
        AESE            V5.16B, V16.16B
        AESMC           V5.16B, V5.16B
        AESE            V6.16B, V16.16B
        AESMC           V6.16B, V6.16B
        AESE            V7.16B, V16.16B
        AESMC           V7.16B, V7.16B
      }

      _Q16 = a5[10];
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
        AESE            V4.16B, V16.16B
        AESMC           V4.16B, V4.16B
        AESE            V5.16B, V16.16B
        AESMC           V5.16B, V5.16B
        AESE            V6.16B, V16.16B
        AESMC           V6.16B, V6.16B
        AESE            V7.16B, V16.16B
        AESMC           V7.16B, V7.16B
      }

      _Q16 = a5[11];
      v209 = a5[12];
      if (v6 > 192)
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
          AESE            V4.16B, V16.16B
          AESMC           V4.16B, V4.16B
          AESE            V5.16B, V16.16B
          AESMC           V5.16B, V5.16B
          AESE            V6.16B, V16.16B
          AESMC           V6.16B, V6.16B
          AESE            V7.16B, V16.16B
          AESMC           V7.16B, V7.16B
        }

        _Q16 = a5[12];
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
          AESE            V4.16B, V16.16B
          AESMC           V4.16B, V4.16B
          AESE            V5.16B, V16.16B
          AESMC           V5.16B, V5.16B
          AESE            V6.16B, V16.16B
          AESMC           V6.16B, V6.16B
          AESE            V7.16B, V16.16B
          AESMC           V7.16B, V7.16B
        }

        _Q16 = a5[13];
        v209 = a5[14];
      }
    }

    __asm
    {
      AESE            V0.16B, V16.16B
      AESE            V1.16B, V16.16B
      AESE            V2.16B, V16.16B
      AESE            V3.16B, V16.16B
      AESE            V4.16B, V16.16B
      AESE            V5.16B, V16.16B
      AESE            V6.16B, V16.16B
      AESE            V7.16B, V16.16B
    }

    *result = veorq_s8(veorq_s8(_Q0, v209), v27);
    result[1] = veorq_s8(veorq_s8(_Q1, v209), v28);
    result[2] = veorq_s8(veorq_s8(_Q2, v209), v29);
    result[3] = veorq_s8(veorq_s8(_Q3, v209), v30);
    v284 = result + 4;
    *v284 = veorq_s8(veorq_s8(_Q4, v209), v31);
    v284[1] = veorq_s8(veorq_s8(_Q5, v209), v32);
    v284[2] = veorq_s8(veorq_s8(_Q6, v209), v33);
    v284[3] = veorq_s8(veorq_s8(_Q7, v209), v34);
    result = v284 + 4;
    v25 = i < 8;
  }

  v285 = &v326;
  v25 = i < -7;
  for (j = i + 7; !v25; --j)
  {
    v287 = *v285++;
    a2 += 16;
    _Q16 = *a5;
    __asm
    {
      AESE            V0.16B, V16.16B
      AESMC           V0.16B, V0.16B
    }

    _Q16 = a5[1];
    __asm
    {
      AESE            V0.16B, V16.16B
      AESMC           V0.16B, V0.16B
    }

    _Q16 = a5[2];
    __asm
    {
      AESE            V0.16B, V16.16B
      AESMC           V0.16B, V0.16B
    }

    _Q16 = a5[3];
    __asm
    {
      AESE            V0.16B, V16.16B
      AESMC           V0.16B, V0.16B
    }

    _Q16 = a5[4];
    __asm
    {
      AESE            V0.16B, V16.16B
      AESMC           V0.16B, V0.16B
    }

    _Q16 = a5[5];
    __asm
    {
      AESE            V0.16B, V16.16B
      AESMC           V0.16B, V0.16B
    }

    _Q16 = a5[6];
    __asm
    {
      AESE            V0.16B, V16.16B
      AESMC           V0.16B, V0.16B
    }

    _Q16 = a5[7];
    __asm
    {
      AESE            V0.16B, V16.16B
      AESMC           V0.16B, V0.16B
    }

    _Q16 = a5[8];
    __asm
    {
      AESE            V0.16B, V16.16B
      AESMC           V0.16B, V0.16B
    }

    _Q16 = a5[9];
    _Q17 = a5[10];
    if (v6 > 160)
    {
      __asm
      {
        AESE            V0.16B, V16.16B
        AESMC           V0.16B, V0.16B
        AESE            V0.16B, V17.16B
        AESMC           V0.16B, V0.16B
      }

      _Q16 = a5[11];
      _Q17 = a5[12];
      if (v6 > 192)
      {
        __asm
        {
          AESE            V0.16B, V16.16B
          AESMC           V0.16B, V0.16B
          AESE            V0.16B, V17.16B
          AESMC           V0.16B, V0.16B
        }

        _Q16 = a5[13];
        _Q17 = a5[14];
      }
    }

    __asm { AESE            V0.16B, V16.16B }

    *result++ = veorq_s8(veorq_s8(_Q0, _Q17), v287);
    v25 = j < 1;
  }

  *a3 = *v285;
  return result;
}