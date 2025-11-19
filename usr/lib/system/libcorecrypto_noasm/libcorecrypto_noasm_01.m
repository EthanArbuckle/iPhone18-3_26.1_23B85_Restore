uint64_t ccz_lsl(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = timingsafe_enable_if_supported();
  v6 = ccz_sign(a2);
  ccz_set_sign(a1, v6);
  v7 = ccz_n(a2);
  ccz_set_capacity(a1, v7 + ((a3 + 63) >> 6));
  v8 = a3 >> 6;
  v9 = a3 & 0x3F;
  v10 = (*(a1 + 24) + 8 * (a3 >> 6));
  v11 = *(a2 + 24);
  v12 = ccz_n(a2);
  memmove(v10, v11, 8 * v12);
  v13 = ccz_n(a2);
  ccz_set_n(a1, v13 + (a3 >> 6));
  ccn_zero(a3 >> 6, *(a1 + 24));
  if ((a3 & 0x3F) != 0)
  {
    v14 = *(a1 + 24);
    *(v14 + 8 * ccz_n(a1)) = 0;
    v15 = ccz_n(a1);
    ccn_shift_left(v15 - v8 + 1, (*(a1 + 24) + 8 * v8), (*(a1 + 24) + 8 * v8), v9);
    v16 = ccz_n(a1);
    v17 = ccn_n(v16 + 1, *(a1 + 24));
    ccz_set_n(a1, v17);
  }

  return cc_disable_dit_with_sb(&v19);
}

uint64_t ccec_x963_export(int a1, char *a2, uint64_t *a3)
{
  v15 = timingsafe_enable_if_supported();
  v6 = ccec_export_pub(a3, a2);
  v7 = v6;
  if (a1 && !v6)
  {
    v8 = *a3;
    v9 = **a3;
    v10 = &a3[3 * v9];
    v11 = (cczp_bitlen(*a3 + 40 * v9 + 32) + 7) >> 3;
    v12 = cczp_bitlen(v8);
    v13 = ccn_write_uint_padded_ct_internal(v9, v10 + 2, v11, &a2[((v12 + 7) >> 2) | 1]);
    v7 = v13 & (v13 >> 31);
  }

  cc_disable_dit_with_sb(&v15);
  return v7;
}

uint64_t ccec_make_pub(uint64_t a1, unint64_t a2, unsigned __int8 *a3, unint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v17 = timingsafe_enable_if_supported();
  if (a4)
  {
    cp = ccec_get_cp(a1);
    if (!cp || (v13 = cp, *a6 = cp, v14 = a6 + 16, ccn_read_uint_public_value(*cp, (a6 + 16), a2, a3)) || ccn_read_uint_public_value(*v13, (v14 + 8 * **a6), a4, a5))
    {
      v15 = 0xFFFFFFFFLL;
    }

    else
    {
      ccn_seti(*v13, (v14 + 16 * **a6), 1);
      v15 = 0;
    }
  }

  else
  {
    v15 = 4294967289;
  }

  cc_disable_dit_with_sb(&v17);
  return v15;
}

uint64_t ccrsa_recover_priv(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int (**a8)(void, unint64_t, uint64_t))
{
  v34 = timingsafe_enable_if_supported();
  v16 = (a2 + 7) >> 3;
  v30[0] = cc_malloc_clear(144 * v16);
  v30[1] = 18 * v16;
  v31 = 0;
  v32 = cc_ws_alloc;
  v33 = cc_ws_free;
  if (v30[0])
  {
    v28 = a6;
    v29 = a7;
    v27 = a8;
    *a1 = v16;
    v17 = a1 + 3;
    v18 = cc_ws_alloc(v30, (a2 + 7) >> 3);
    v19 = v32(v30, (a2 + 7) >> 3);
    v20 = v32(v30, (a2 + 7) >> 3);
    if (ccn_read_uint_internal((a2 + 7) >> 3, v18, a2, a3) || (*v18 & 1) == 0 || (v21 = &v17[2 * v16], ccn_read_uint_internal((a2 + 7) >> 3, v21 + 1, a4, a5)) || ccn_read_uint_internal((a2 + 7) >> 3, v19, v28, v29))
    {
      v22 = 4294967273;
    }

    else
    {
      inited = cczp_mm_init_ws(v30, a1, (a2 + 7) >> 3, v18);
      if (inited || (inited = ccrsa_find_prime_multiple_ws(v30, a1, v21 + 1, v19, v20, v27), inited) || (inited = ccrsa_recover_pq_ws(v30, a1, v20), inited) || (inited = ccrsa_crt_makekey_ws(v30, a1), inited))
      {
        v22 = inited;
      }

      else
      {
        v25 = cczp_prime(a1);
        v26 = ccn_cmp_internal((a2 + 7) >> 3, v18, v25);
        if (ccn_cmp_internal((a2 + 7) >> 3, v19, &v17[3 * *a1 + 1]) | v26)
        {
          v22 = 4294967273;
        }

        else
        {
          v22 = 0;
        }
      }
    }

    v31 = 0;
    v33(v30);
  }

  else
  {
    v22 = 4294967283;
  }

  cc_disable_dit_with_sb(&v34);
  return v22;
}

uint64_t ccrsa_find_prime_multiple_ws(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4, void *a5, unsigned int (**a6)(void, unint64_t, uint64_t))
{
  v9 = cczp_n(a2);
  v25 = *(a1 + 16);
  __dst = (*(a1 + 24))(a1, v9);
  v10 = (*(a1 + 24))(a1, v9);
  v11 = (*(a1 + 24))(a1, 2 * v9);
  v32 = (*(a1 + 24))(a1, v9);
  v12 = ccn_n(v9, a3);
  v28 = v12 + v9;
  cc_clear(8 * (v12 + v9), v11);
  if (v12)
  {
    v13 = 0;
    v14 = 1;
    do
    {
      v11[v9 + v13] = ccn_addmul1(v9, &v11[v13], a4, a3[v13]);
      v13 = v14;
      v15 = v12 > v14++;
    }

    while (v15);
  }

  if (*v11)
  {
    *v11 &= ~1uLL;
    v19 = ccn_trailing_zeros(v28, v11);
    ccn_shift_right_multi(v28, v11, v11, v19);
    v17 = a2;
    v20 = cczp_prime(a2);
    ccn_set(v9, __dst, v20);
    *__dst &= ~1uLL;
    cczp_to_ws(a1, a2);
    ccn_seti(v9, v32, 1);
    cczp_to_ws(a1, a2);
    v21 = 0;
    v29 = v28 << 6;
    v18 = v25;
    while (1)
    {
      non_zero_element_ws = cczp_generate_non_zero_element_ws(a1, a2, a6, v10);
      if (non_zero_element_ws || (non_zero_element_ws = cczp_power_ws(a1, a2, a5, v10, v29, v11), non_zero_element_ws))
      {
        v16 = non_zero_element_ws;
        goto LABEL_20;
      }

      if (ccn_cmp_internal(v9, a5, v32) && ccn_cmp_internal(v9, __dst, a5) && v19)
      {
        break;
      }

LABEL_16:
      if (++v21 == 100)
      {
        v16 = 4294967273;
        goto LABEL_20;
      }
    }

    v23 = 1;
    while (1)
    {
      cczp_sqr_ws(a1, a2);
      if (!ccn_cmp_internal(v9, v10, v32))
      {
        break;
      }

      if (ccn_cmp_internal(v9, __dst, v10))
      {
        ccn_set(v9, a5, v10);
        v15 = v19 > v23++;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_16;
    }

    v16 = 0;
  }

  else
  {
    v16 = 4294967273;
    v17 = a2;
    v18 = v25;
  }

LABEL_20:
  cczp_from_ws(a1, v17);
  *(a1 + 16) = v18;
  return v16;
}

uint64_t ccrsa_recover_pq_ws(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v6 = *a2;
  v7 = *(a1 + 16);
  v8 = (*(a1 + 24))(a1, *a2);
  v9 = (*(a1 + 24))(a1, v6);
  ccn_sub1(v6, v8, a3, 1uLL);
  v10 = cczp_prime(a2);
  v11 = ccn_n(v6, v8);
  if (ccn_gcd_ws(a1, v6, v8, v6, v10, v11, v8) || (v13 = cczp_prime(a2), ccn_div_exact_ws(a1, v6, v9, v13, v8), (v14 = ccn_cmp_internal(v6, v8, v9)) == 0))
  {
    result = 4294967273;
  }

  else
  {
    ccn_cond_swap(v6, v14 < 0, v8, v9);
    v15 = ccrsa_ctx_private_zp(a2);
    *v15 = ccn_n(v6, v8);
    v16 = cczp_n(v15);
    ccn_set(v16, v15 + 3, v8);
    result = cczp_init_ws(a1, v15);
    if (!result)
    {
      v17 = ccrsa_ctx_private_zp(a2);
      v18 = v17 + 16 * *ccrsa_ctx_private_zp(a2);
      *(v18 + 32) = ccn_n(v6, v9);
      v19 = (v18 + 32);
      v20 = cczp_n(v19);
      ccn_set(v20, v19 + 3, v9);
      result = cczp_init_ws(a1, v19);
      if (!result)
      {
        v21 = cczp_bitlen(v15);
        if ((v21 - cczp_bitlen(v19)) <= 2)
        {
          result = 0;
        }

        else
        {
          result = 4294967273;
        }
      }
    }
  }

  *(a1 + 16) = v7;
  return result;
}

uint64_t ccz_is_negative(uint64_t a1)
{
  v3 = timingsafe_enable_if_supported();
  LODWORD(a1) = ccz_sign(a1);
  cc_disable_dit_with_sb(&v3);
  return a1 >> 31;
}

uint64_t ccaes_ecb_encrypt_init(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  if (a3 > 127)
  {
    if (a3 != 128 && a3 != 256 && a3 != 192)
    {
      return 4294967289;
    }

    return ccaes_ltc_init(a4, a3, a2);
  }

  if (a3 <= 0x20 && ((1 << a3) & 0x101010000) != 0)
  {
    return ccaes_ltc_init(a4, a3, a2);
  }

  return 4294967289;
}

uint64_t ccaes_ltc_init(int *a1, int a2, int *a3)
{
  v3 = 4294967289;
  if (a2 > 127)
  {
    if (a2 != 128 && a2 != 256 && a2 != 192)
    {
      return v3;
    }
  }

  else if (a2 > 0x20 || ((1 << a2) & 0x101010000) == 0)
  {
    return v3;
  }

  if (a2 <= 0x7F)
  {
    v4 = a2;
  }

  else
  {
    v4 = (a2 + 7) >> 3;
  }

  v5 = ((4 * v4) & 0x7FFFFFE0) + 96;
  v6 = a3 + 61;
  a3[121] = v5;
  a3[60] = v5;
  v7 = *a1;
  *a3 = *a1;
  v8 = a1[1];
  a3[1] = v8;
  v9 = a1[2];
  a3[2] = v9;
  v10 = a1[3];
  a3[3] = v10;
  if (v4 == 24)
  {
    v24 = 0;
    a3[4] = a1[4];
    v25 = a1[5];
    a3[5] = v25;
    v26 = (a3 + 11);
    v13 = 52;
    while (1)
    {
      v7 ^= Te4_3[BYTE1(v25)] ^ Te4_2[BYTE2(v25)] ^ Te4_1[HIBYTE(v25)] ^ Te4_0[v25] ^ rcon[v24];
      v8 ^= v7;
      *(v26 - 5) = v7;
      *(v26 - 4) = v8;
      v9 ^= v8;
      v10 ^= v9;
      *(v26 - 3) = v9;
      *(v26 - 2) = v10;
      if (v24 == 7)
      {
        break;
      }

      v27 = *(v26 - 7) ^ v10;
      v25 ^= v27;
      *(v26 - 1) = v27;
      *v26 = v25;
      v26 += 6;
      ++v24;
    }
  }

  else if (v4 == 16)
  {
    v11 = 0;
    v12 = a3 + 4;
    v13 = 44;
    do
    {
      v14 = *(v12 - 1);
      v7 ^= Te4_3[BYTE1(v14)] ^ Te4_2[BYTE2(v14)] ^ *(Te4_1 + ((v14 >> 22) & 0x3FC)) ^ Te4_0[*(v12 - 1)] ^ rcon[v11];
      v15 = *(v12 - 2);
      v16 = *(v12 - 3) ^ v7;
      *v12 = v7;
      v12[1] = v16;
      v17 = v15 ^ v16;
      v12[2] = v17;
      v12[3] = v17 ^ v14;
      ++v11;
      v12 += 4;
    }

    while (v11 != 10);
  }

  else
  {
    v28 = 0;
    a3[4] = a1[4];
    a3[5] = a1[5];
    a3[6] = a1[6];
    v29 = a1[7];
    a3[7] = v29;
    v30 = a3 + 8;
    v13 = 60;
    while (1)
    {
      v7 ^= Te4_3[BYTE1(v29)] ^ Te4_2[BYTE2(v29)] ^ Te4_1[HIBYTE(v29)] ^ Te4_0[v29] ^ rcon[v28];
      v8 ^= v7;
      *v30 = v7;
      v30[1] = v8;
      v9 ^= v8;
      v10 ^= v9;
      v30[2] = v9;
      v30[3] = v10;
      if (v28 == 6)
      {
        break;
      }

      HIDWORD(v31) = v10;
      LODWORD(v31) = v10;
      v32 = Te4_3[((v31 >> 24) >> 8)] ^ *(v30 - 4) ^ Te4_2[((v31 >> 24) >> 16)] ^ Te4_1[(v31 >> 24) >> 24] ^ Te4_0[HIBYTE(v10)];
      v33 = *(v30 - 3) ^ v32;
      v30[4] = v32;
      v30[5] = v33;
      v34 = *(v30 - 2) ^ v33;
      v29 ^= v34;
      v30[6] = v34;
      v30[7] = v29;
      v30 += 8;
      ++v28;
    }
  }

  v18 = &a3[v13];
  v20 = *(v18 - 1);
  v19 = v18 - 4;
  *(a3 + 61) = v20;
  if (a3[121] >= 0x20)
  {
    v21 = 1;
    do
    {
      v22 = *(v19 - 4);
      v19 -= 4;
      v6[4] = Tks1[BYTE1(v22)] ^ Tks0[v22] ^ Tks2[BYTE2(v22)] ^ *(&Tks3 + ((v22 >> 22) & 0x3FC));
      v6 += 4;
      v6[1] = Tks1[BYTE1(v19[1])] ^ Tks0[v19[1]] ^ Tks2[BYTE2(v19[1])] ^ *(&Tks3 + ((v19[1] >> 22) & 0x3FC));
      v6[2] = Tks1[BYTE1(v19[2])] ^ Tks0[v19[2]] ^ Tks2[BYTE2(v19[2])] ^ *(&Tks3 + ((v19[2] >> 22) & 0x3FC));
      v6[3] = Tks1[BYTE1(v19[3])] ^ Tks0[v19[3]] ^ Tks2[BYTE2(v19[3])] ^ *(&Tks3 + ((v19[3] >> 22) & 0x3FC));
      ++v21;
    }

    while (v21 < a3[121] >> 4);
  }

  v3 = 0;
  v6[4] = *(v19 - 4);
  v6[5] = *(v19 - 3);
  v6[6] = *(v19 - 2);
  v6[7] = *(v19 - 1);
  return v3;
}

uint64_t ccaes_ecb_decrypt_init(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  if (a3 > 127)
  {
    if (a3 != 128 && a3 != 256 && a3 != 192)
    {
      return 4294967289;
    }

    return ccaes_ltc_init(a4, a3, a2);
  }

  if (a3 <= 0x20 && ((1 << a3) & 0x101010000) != 0)
  {
    return ccaes_ltc_init(a4, a3, a2);
  }

  return 4294967289;
}

__n128 ccaes_ecb_encrypt_roundkey(uint64_t a1, int a2, __n128 *a3)
{
  result = *(a1 + 4 * (4 * a2));
  *a3 = result;
  return result;
}

uint64_t ccrsa_emsa_pss_decode_canary_out_ws(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4, size_t a5, char *a6, uint64_t a7, unsigned __int8 *a8, void *a9)
{
  v58 = *MEMORY[0x29EDCA608];
  *a9 = 0;
  a9[1] = 0;
  if (*a2 == a5 && (v9 = a7, v11 = (a7 + 7) >> 3, v12 = a5 + a4, v11 >= a5 + a4 + 2))
  {
    v54 = a1;
    v55 = a4;
    v18 = *(a1 + 16);
    v17 = *(a1 + 24);
    v52 = a6;
    v53 = v18;
    v19 = v17(a1, (a7 + 63) >> 6);
    v51 = a8[v11 - 1] ^ 0xBC;
    v20 = -v9 & 7;
    v21 = (-256 >> (-v9 & 7)) & *a8;
    v22 = a3;
    v23 = v11 + ~a5;
    v24 = ccmgf_internal(v22, v23, v19, a5, &a8[v23]);
    v25 = v19;
    v26 = v24 | v21 | v51;
    v27 = *v19 & (0xFFu >> v20);
    *v19 &= 0xFFu >> v20;
    v28 = v11 - 2 - v12;
    if (v11 - 2 != v12)
    {
      if (v28 <= 1)
      {
        v28 = 1;
      }

      v29 = a8;
      v30 = v19;
      v31 = v28;
      do
      {
        v33 = *v29++;
        v32 = v33;
        v34 = *v30++;
        v26 |= v34 ^ v32;
        --v31;
      }

      while (v31);
      v27 = v19[v28];
    }

    v36 = v53;
    v35 = v54;
    v37 = v23;
    v38 = v55;
    v39 = a8[v28] ^ v27;
    if (v55)
    {
      v40 = v28 + 1;
      v41 = a8;
      v42 = v25;
      do
      {
        *v42 = v42[v40] ^ v41[v40];
        ++v42;
        ++v41;
        --v38;
      }

      while (v38);
    }

    v43 = v25;
    v54 = v50;
    LODWORD(v53) = v39 ^ 1;
    __src = 0;
    v44 = (((*(a2 + 8) + *(a2 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x2A1C7C4A8](v24);
    v46 = &v50[-v45];
    ccdigest_init_internal(a2, &v50[-v45]);
    ccdigest_update_internal(a2, v46, 8uLL, &__src);
    ccdigest_update_internal(a2, v46, a5, v52);
    if (v55)
    {
      ccdigest_update_internal(a2, v46, v55, v43);
    }

    (*(a2 + 56))(a2, v46, v57);
    cc_clear(*(a2 + 8) + *(a2 + 16) + 12, v46);
    v47 = cc_cmp_safe_internal(a5, v57, &a8[v37]);
    v13 = (v26 | v53 | v47) != 0 ? 0xFFFFFFE6 : 0;
    cc_fault_canary_set(a9, &CCRSA_PSS_FAULT_CANARY, a5, &a8[v37], v57);
    *(v35 + 2) = v36;
  }

  else
  {
    v13 = 4294967270;
  }

  v48 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t ccrsa_emsa_pss_decode_ws(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4, size_t a5, char *a6, uint64_t a7, unsigned __int8 *a8)
{
  v10[2] = *MEMORY[0x29EDCA608];
  v10[0] = 0xAAAAAAAAAAAAAAAALL;
  v10[1] = 0xAAAAAAAAAAAAAAAALL;
  result = ccrsa_emsa_pss_decode_canary_out_ws(a1, a2, a3, a4, a5, a6, a7, a8, v10);
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ccrsa_emsa_pss_decode(uint64_t a1, uint64_t a2, size_t a3, size_t a4, char *a5, uint64_t a6, unsigned __int8 *a7)
{
  v20[2] = *MEMORY[0x29EDCA608];
  v19 = timingsafe_enable_if_supported();
  v17[0] = cc_malloc_clear(8 * ((a6 + 63) >> 6));
  v17[1] = (a6 + 63) >> 6;
  v17[2] = 0;
  v17[3] = cc_ws_alloc;
  v18 = cc_ws_free;
  if (v17[0])
  {
    v20[0] = 0xAAAAAAAAAAAAAAAALL;
    v20[1] = 0xAAAAAAAAAAAAAAAALL;
    v14 = ccrsa_emsa_pss_decode_canary_out_ws(v17, a1, a2, a3, a4, a5, a6, a7, v20);
    v18(v17);
  }

  else
  {
    v14 = 4294967283;
  }

  cc_disable_dit_with_sb(&v19);
  v15 = *MEMORY[0x29EDCA608];
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

uint64_t ccec_add_normalized_ws(uint64_t a1, unint64_t *a2, void *a3, uint64_t a4, uint64_t a5, int a6)
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

uint64_t ccec_full_add_normalized_ws(uint64_t a1, unint64_t *a2, char *a3, uint64_t a4, char *a5)
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

uint64_t ccec_full_add_default_ws(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v17 = a4 + 8 * *a2;
  v7 = cczp_n(a2);
  v18 = *(a1 + 16);
  (*(a1 + 24))(a1, v7);
  (*(a1 + 24))(a1, v7);
  (*(a1 + 24))(a1, v7);
  (*(a1 + 24))(a1, v7);
  (*(a1 + 24))(a1, v7);
  (*(a1 + 24))(a1, v7);
  (*(a1 + 24))(a1, v7);
  (*(a1 + 24))(a1, v7);
  (*(a1 + 24))(a1, v7);
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
  v8 = cczp_n(a2);
  v9 = *a2;
  v10 = &a3[*a2];
  v11 = (*(a1 + 24))(a1, v8);
  v12 = (*(a1 + 24))(a1, v8);
  ccn_set(v8, v11, v10);
  cczp_from_ws(a1, a2);
  v13 = ccn_n(v8, v12) == 1 && *v12 == 1;
  v14 = ccn_n(v8, a3);
  if (ccn_n(v8, &a3[2 * v9]) | v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  ccn_mux(v8, v15, a3, v11, a3);
  result = ccn_mux(v8, v15, v10, v11, v10);
  *(a1 + 16) = v18;
  return result;
}

uint64_t ccec_map_to_homogeneous_ws(uint64_t a1, uint64_t *a2)
{
  v4 = cczp_n(a2);
  v5 = *(a1 + 16);
  (*(a1 + 24))(a1, v4);
  v6 = *a2;
  cczp_mul_ws(a1, a2);
  v7 = *a2;
  cczp_sqr_ws(a1, a2);
  v8 = *a2;
  result = cczp_mul_ws(a1, a2);
  *(a1 + 16) = v5;
  return result;
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
  v21 = *MEMORY[0x29EDCA608];
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  if (a3 - 129 >= 0xFFFFFFFFFFFFFF80)
  {
    __memcpy_chk();
    if (a3 > 0x7F)
    {
      v6 = 0;
    }

    else
    {
      v6 = 128 - a3;
      v7 = *(v19 + a3 - 1);
      v8 = a3 - 128;
      v9 = v19;
      do
      {
        v7 = PITABLE[(*v9 + v7)];
        v9[a3] = v7;
        ++v9;
      }

      while (!__CFADD__(v8++, 1));
    }

    v11 = *(v19 + v6);
    v12 = 128;
    do
    {
      v11 = PITABLE[(*(v19 + v12) ^ v11)];
      *(v19 + v12-- - a3) = v11;
    }

    while (v12 - a3 != -1);
    for (i = 0; i != 8; i += 2)
    {
      v14 = &v19[i];
      v22 = vld2q_s8(v14);
      v15 = vmovl_u8(*v22.val[1].i8);
      v16 = vmovl_high_u8(v22.val[1]);
      v17 = vmovl_high_u8(v22.val[0]);
      v22.val[0] = vmovl_u8(*v22.val[0].i8);
      a2[2] = vorrq_s8(vshll_n_u16(*v16.i8, 8uLL), vmovl_u16(*v17.i8));
      a2[3] = vorrq_s8(vshll_high_n_u16(v16, 8uLL), vmovl_high_u16(v17));
      *a2 = vorrq_s8(vshll_n_u16(*v15.i8, 8uLL), vmovl_u16(*v22.val[0].i8));
      a2[1] = vorrq_s8(vshll_high_n_u16(v15, 8uLL), vmovl_high_u16(v22.val[0]));
      a2 += 4;
    }

    cc_clear(0x81uLL, v19);
    result = 0;
  }

  else
  {
    result = 4294967289;
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t cczp_init_ws(uint64_t a1, void *a2)
{
  v4 = cczp_prime(a2);
  v5 = cczp_n(a2);
  if ((*v4 & 1) == 0 || ccn_n(v5, v4) == 1 && *v4 < 3)
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

void *ccaes_xts_decrypt_mode()
{
  v0 = ccaes_ecb_decrypt_mode();
  v1 = ccaes_ecb_encrypt_mode();
  ccmode_factory_xts_decrypt(xts_decrypt, v0, v1);
  return xts_decrypt;
}

uint64_t ccder_sizeof_implicit_integer(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = ccn_write_int_size_public_value(a2, a3);

  return ccder_sizeof(a1, v4);
}

size_t ccec_plprint(uint64_t *a1, const char *a2, uint64_t a3)
{
  v5 = MEMORY[0x29EDCA610];
  fprintf(*MEMORY[0x29EDCA610], "%s { x -> ", a2);
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
  v4 = MEMORY[0x29EDCA610];
  fprintf(*MEMORY[0x29EDCA610], "full key %s { \n", a1);
  ccec_plprint(*a2, "pubkey:", (a2 + 2));
  fwrite("priv: {", 7uLL, 1uLL, *v4);
  ccn_print(**a2, &a2[3 * **a2 + 2]);
  fwrite("}\n", 2uLL, 1uLL, *v4);
  return cc_disable_dit_with_sb(&v6);
}

uint64_t ccec_print_public_key(const char *a1, uint64_t **a2)
{
  v5 = timingsafe_enable_if_supported();
  fwrite("public key ", 0xBuLL, 1uLL, *MEMORY[0x29EDCA610]);
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

uint64_t ccpad_xts_encrypt(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = *MEMORY[0x29EDCA608];
  v17 = timingsafe_enable_if_supported();
  v12 = a4 & 0xF;
  if ((a4 & 0xF) != 0)
  {
    v13 = a4 & 0xFFFFFFFFFFFFFFF0;
    (*(a1 + 48))(a2, a3, (a4 >> 4) - 1, a5, a6);
    (*(a1 + 48))(a2, a3, 1, a5 + (a4 & 0xFFFFFFFFFFFFFFF0) - 16, v19);
    v14 = 0;
    do
    {
      v18[v14] = *(a5 + v13 + v14);
      *(a6 + v13 + v14) = v19[v14];
      ++v14;
    }

    while (v12 != v14);
    if ((v14 - 1) <= 0xE)
    {
      memcpy(&v18[v12], &v19[v12], 16 - v12);
    }

    (*(a1 + 48))(a2, a3, 1, v18, a6 + v13 - 16);
  }

  else
  {
    (*(a1 + 48))(a2, a3, a4 >> 4, a5, a6);
  }

  result = cc_disable_dit_with_sb(&v17);
  v16 = *MEMORY[0x29EDCA608];
  return result;
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
  v33 = *MEMORY[0x29EDCA608];
  if (a10)
  {
    *a10 = 0;
    a10[1] = 0;
  }

  v32 = 0uLL;
  v18 = cczp_bitlen(a2);
  v19 = v18 + 7;
  if (a7 == (v18 + 7) >> 3)
  {
    v20 = v18;
    result = 4294967273;
    if (*a3 == a5)
    {
      v30 = a4;
      v22 = *a2;
      if (8 * *a2 - ((v20 + 6) >> 3) <= 8)
      {
        if (v19 >= 8)
        {
          v26 = 8 * *a2 - ((v20 + 6) >> 3);
          v27 = a6;
          v24 = *(a1 + 16);
          v29 = (*(a1 + 24))(a1, v22);
          v28 = (*(a1 + 24))(a1, v22);
          cc_clear(8 * (*(a1 + 16) - v24), (*a1 + 8 * v24));
          if (ccn_read_uint_internal(v22, v29, a7, a8))
          {
            v31 = -23;
          }

          else
          {
            v31 = ccrsa_pub_crypt_ws(a1, a2);
            if (!v31)
            {
              ccn_swap(v22, v28);
              v25 = ccrsa_emsa_pss_decode_canary_out_ws(a1, a3, v30, a9, a5, v27, v20 - 1, v28 + v26, &v32);
              v31 = v25 ^ 0x3A ^ BYTE8(v32) ^ BYTE4(v32) ^ BYTE3(v32) ^ BYTE13(v32) ^ HIBYTE(v32) ^ BYTE10(v32) ^ BYTE1(v32) ^ BYTE11(v32) ^ BYTE14(v32) ^ BYTE6(v32) ^ BYTE2(v32) ^ BYTE9(v32) ^ BYTE12(v32) ^ v32 ^ BYTE7(v32) ^ BYTE5(v32);
              if (a10)
              {
                *a10 = v32;
              }
            }
          }

          *(a1 + 16) = v24;
          result = v31;
        }

        else
        {
          result = 4294967268;
        }
      }
    }
  }

  else
  {
    result = 4294967273;
  }

  v23 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ccrsa_verify_pss_msg_ws(uint64_t a1, uint64_t *a2, size_t *a3, uint64_t a4, size_t a5, char *a6, uint64_t a7, uint64_t a8, size_t a9, void *a10)
{
  v19 = *MEMORY[0x29EDCA608];
  ccdigest_internal(a3, a5, a6, v18);
  result = ccrsa_verify_pss_digest_ws(a1, a2, a3, a4, *a3, v18, a7, a8, a9, a10);
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ccrsa_verify_pss_msg(uint64_t *a1, size_t *a2, uint64_t a3, size_t a4, char *a5, uint64_t a6, uint64_t a7, size_t a8, void *a9)
{
  v26 = *MEMORY[0x29EDCA608];
  v24 = timingsafe_enable_if_supported();
  v17 = cc_malloc_clear(88 * *a1);
  v18 = 11 * *a1;
  v22[0] = v17;
  v22[1] = v18;
  v22[2] = 0;
  v22[3] = cc_ws_alloc;
  v23 = cc_ws_free;
  if (v17)
  {
    ccdigest_internal(a2, a4, a5, v25);
    v19 = ccrsa_verify_pss_digest_ws(v22, a1, a2, a3, *a2, v25, a6, a7, a8, a9);
    v23(v22);
  }

  else
  {
    v19 = 4294967283;
  }

  cc_disable_dit_with_sb(&v24);
  v20 = *MEMORY[0x29EDCA608];
  return v19;
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
  v10 = *MEMORY[0x29EDCA608];
  cchmac_update_internal(*(*a1 + 56), a1 + 96, a2, a3);
  v9[0] = HIBYTE(a2);
  v9[1] = BYTE6(a2);
  v9[2] = BYTE5(a2);
  v9[3] = BYTE4(a2);
  v9[4] = BYTE3(a2);
  v9[5] = BYTE2(a2);
  v9[6] = BYTE1(a2);
  v9[7] = a2;
  v9[8] = a4;
  result = cchmac_update_internal(*(*a1 + 56), a1 + 96, 9, v9);
  v8 = *MEMORY[0x29EDCA608];
  return result;
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
  v15 = *MEMORY[0x29EDCA608];
  v5 = *(*a1 + 56);
  v6 = *v5;
  v7 = a1[3];
  if (v7 > 6 || ((1 << v7) & 0x54) == 0)
  {
    cc_clear(*v5, __src);
    a1[3] = 255;
    result = 4294967228;
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
      v14[0] = 67305985;
      cchmac_internal(v5, a1[1] >> 1, (a1 + 4), 4, v14, __src);
    }

    memcpy(a4, __src, v10);
    a1[3] = 5;
    cc_clear(v6, __src);
    result = 0;
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
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
  cced25519_to_ed25519_point_ws(a1, a2, v12, a6);
  if (a5)
  {
    v13 = 0;
    v14 = a5 - 1;
    do
    {
      v25 = v14;
      v23 = (*(a4 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v14) & 1;
      ccn_cond_swap(28, v23 ^ v13, v11, v12);
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
      v16 = v23;
      v14 = v25 - 1;
      v13 = v23;
    }

    while (v25);
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

void *cced448_double_scalar_mult_ws(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = *MEMORY[0x29EDCA608];
  v9 = cczp_n(a2);
  v26 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, 4 * v9);
  v11 = 32 * v9;
  v12 = (*(a1 + 24))(a1, 32 * v9);
  cced25519_to_ed25519_point_ws(a1, a2, v12, a6);
  cczp_n(a2);
  v13 = *(a1 + 16);
  cczp_mul_ws(a1, a2);
  *(a1 + 16) = v13;
  cced448_dbl_point_ws(a1, a2);
  v14 = 7;
  v15 = v12;
  do
  {
    v16 = v15 + v11;
    cced448_add_points_unified_cached_ws(a1, a2, v15 + v11, v10, v15, 0);
    cczp_n(a2);
    v17 = *(a1 + 16);
    cczp_mul_ws(a1, a2);
    *(a1 + 16) = v17;
    v15 = v16;
    --v14;
  }

  while (v14);
  cc_clear(8 * v9, v10);
  cc_clear(8 * v9, &v10[16 * v9]);
  ccn_seti(v9, &v10[8 * v9], 1);
  ccn_seti(v9, &v10[24 * v9], 1);
  ccn_recode_ssw(v9, a4, 4, v29);
  ccn_recode_ssw(v9, a5, 4, v28);
  v18 = 447;
  do
  {
    v19 = v29[v18];
    v20 = v28[v18--];
  }

  while (!(v20 | v19));
  if (v18 != -2)
  {
    v21 = v18 + 1;
    do
    {
      cced448_dbl_point_ws(a1, a2);
      cced448_add_precomputed_point_ws(a1, a2, v10, v28[v21], 4, v12, 0);
      cced448_add_precomputed_point_ws(a1, a2, v10, v29[v21--], 3, &CCED448_PRECOMPUTED_BASES, 6);
    }

    while (v21 != -1);
  }

  result = cced25519_from_ed25519_point_ws(a1, a2, a3, v10);
  *(a1 + 16) = v26;
  v23 = *MEMORY[0x29EDCA608];
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

uint64_t cchmac_final_internal(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = a2 + 1;
  (*(a1 + 56))();
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *(a2 + v8 + v9 + 8) = *a1;
  *a2 = 8 * v9;
  memcpy(v7, a2 + ((v8 + v9 + 19) & 0xFFFFFFFFFFFFFFF8), v8);
  v10 = *(a1 + 56);

  return v10(a1, a2, a3);
}

uint64_t cchmac_final(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = timingsafe_enable_if_supported();
  cchmac_final_internal(a1, a2, a3);
  return cc_disable_dit_with_sb(&v7);
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

uint64_t cccurve25519_internal(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4, uint64_t (**a5)(void, uint64_t, void *))
{
  v51 = *MEMORY[0x29EDCA608];
  v43 = cc_malloc_clear(0x200uLL);
  v44 = xmmword_299CF5D20;
  v45 = cc_ws_alloc;
  v46 = cc_ws_free;
  if (v43)
  {
    v10 = cczp_n(a1);
    v11 = cc_ws_alloc(&v43, v10);
    v12 = v45(&v43, v10);
    __dst = v45(&v43, v10);
    v42 = v45(&v43, v10);
    v13 = v45(&v43, v10);
    v14 = v45(&v43, v10);
    v15 = (*a5)(a5, 32, v11);
    if (v15 || (v40 = v12, v15 = (*a5)(a5, 32, v12), v15))
    {
      v32 = v15;
    }

    else
    {
      v37 = v13;
      v39 = a2;
      v47 = 0;
      (*a5)(a5, 8, &v47);
      ccn_mux_seed_mask(v47);
      v16 = a3[1];
      __src = *a3;
      v50 = v16;
      LOBYTE(__src) = __src & 0xF8;
      HIBYTE(v50) = HIBYTE(v16) & 0x3F | 0x40;
      if (v10)
      {
        memcpy(__dst, &__src, 8 * v10);
        v17 = v42;
        v18 = v10;
        do
        {
          v19 = *a4++;
          *v17++ = v19;
          --v18;
        }

        while (v18);
      }

      v38 = v10;
      ccn_set_bit(v42, 0xFFuLL, 0);
      cczp_to_ws(&v43, a1);
      cczp_mul_ws(&v43, a1);
      v20 = cczp_n(a1);
      v36 = *(&v44 + 1);
      v21 = v45(&v43, 2 * v20);
      v22 = &v21[8 * v20];
      v23 = v45(&v43, 2 * v20);
      v24 = &v23[8 * v20];
      v45(&v43, v20);
      v25 = v45(&v43, v20);
      cc_clear(8 * v20, v24);
      ccn_set(v20, v22, v11);
      ccn_set(v20, v21, v42);
      __n = v20;
      ccn_set(v20, v23, v40);
      v26 = 0;
      for (i = 254; i != -1; --i)
      {
        v28 = v26;
        v26 = (*&__dst[(i >> 3) & 0x1FFFFFFFFFFFFFF8] >> i) & 1;
        ccn_cond_swap(8, v26 ^ v28, v21, v23);
        cczp_sub_ws(&v43, a1);
        cczp_sub_ws(&v43, a1);
        cczp_add_ws(&v43, a1);
        cczp_add_ws(&v43, a1);
        cczp_mul_ws(&v43, a1);
        cczp_mul_ws(&v43, a1);
        cczp_sqr_ws(&v43, a1);
        cczp_sqr_ws(&v43, a1);
        cczp_add_ws(&v43, a1);
        cczp_sub_ws(&v43, a1);
        cczp_mul_ws(&v43, a1);
        cczp_sub_ws(&v43, a1);
        cczp_sqr_ws(&v43, a1);
        ccec25519_mul121666_ws(&v43, a1, v22, v25);
        cczp_sqr_ws(&v43, a1);
        cczp_mul_ws(&v43, a1);
        cczp_add_ws(&v43, a1);
        cczp_mul_ws(&v43, a1);
        cczp_mul_ws(&v43, a1);
      }

      ccn_mux(__n, v26, v37, v21, v23);
      ccn_mux(__n, v26, v14, v22, v24);
      *(&v44 + 1) = v36;
      cczp_inv_ws(&v43, a1);
      cczp_mul_ws(&v43, a1);
      cczp_from_ws(&v43, a1);
      v29 = v38;
      if (v38)
      {
        v30 = v39 + 3;
        do
        {
          v31 = *v14++;
          *(v30 - 3) = v31;
          v30 += 8;
          --v29;
        }

        while (v29);
      }

      memset(v48, 0, sizeof(v48));
      if (cc_cmp_safe_internal(32, v39, v48))
      {
        v32 = 0;
      }

      else
      {
        v32 = 4294967289;
      }
    }

    *(&v44 + 1) = 0;
    v46(&v43);
  }

  else
  {
    v32 = 4294967283;
  }

  v33 = *MEMORY[0x29EDCA608];
  return v32;
}

uint64_t cccurve25519_with_rng(uint64_t (**a1)(void, uint64_t, void *), uint64_t a2, __int128 *a3, uint64_t *a4)
{
  v11 = timingsafe_enable_if_supported();
  v8 = ccec_cp_x25519();
  v9 = cccurve25519_internal(v8, a2, a3, a4, a1);
  cc_disable_dit_with_sb(&v11);
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
      if ((ccn_cmp_internal(v10, a5, a3 + 3) & 0x80000000) == 0)
      {
        return 4294967273;
      }

      v77 = a4;
      v71 = *(a1 + 16);
      v58 = (*(a1 + 24))(a1, v10);
      v70 = (*(a1 + 24))(a1, v10);
      ccn_set(v10, v70, a5);
      v25 = ccrsa_ctx_private_zp(a3);
      v26 = ccrsa_ctx_private_zp(a3);
      v75 = v26 + 16 * *ccrsa_ctx_private_zp(a3);
      v56 = ccrsa_ctx_private_zp(a3);
      v55 = *ccrsa_ctx_private_zp(a3);
      v54 = *ccrsa_ctx_private_zp(a3);
      v65 = ccrsa_ctx_private_zp(a3);
      v64 = *ccrsa_ctx_private_zp(a3);
      __dst = *ccrsa_ctx_private_zp(a3);
      v60 = *ccrsa_ctx_private_zp(a3);
      v72 = cczp_n(a3);
      v27 = cczp_n(v75 + 32);
      v28 = cczp_n(v25);
      v69 = *(a1 + 16);
      v29 = (*(a1 + 24))(a1, 7);
      v59 = v28 + 1;
      v30 = 2 * (v28 + 1);
      v74 = (*(a1 + 24))(a1, v30);
      v57 = v30;
      v78 = (*(a1 + 24))(a1, v30 + 4);
      v67 = v25;
      v31 = cczp_bitlen(v25);
      v23 = 4294967268;
      if (v31 >= cczp_bitlen(v75 + 32))
      {
        v32 = v28 >= v27;
        v33 = v77;
        if (!v32 || v72 + 1 > 2 * v27 + 2)
        {
          goto LABEL_26;
        }

        inited = (*a2)(a2, 56, v29);
        if (!inited)
        {
          ccn_mux_seed_mask(*(v29 + 48));
          v35 = v75;
          inited = ccrsa_crt_init_pq_star_ws(a1, v75 + 32, v78, *v29);
          if (!inited)
          {
            v76 = &v74[8 * v59];
            ccrsa_crt_exp_mod_pq_star_ws(a1, a3, v35 + 32, v78, a5, (v65 + 16 * v64 + 16 * __dst + 8 * v60 + 64), v76, (v29 + 8));
            inited = ccrsa_crt_init_pq_star_ws(a1, v67, v78, *(v29 + 24));
            if (!inited)
            {
              ccrsa_crt_exp_mod_pq_star_ws(a1, a3, v67, v78, a5, (v56 + 16 * v55 + 16 * v54 + 64), v74, (v29 + 32));
              v36 = ccrsa_ctx_private_zp(a3);
              v37 = ccrsa_ctx_private_zp(a3);
              v38 = v37 + 16 * *ccrsa_ctx_private_zp(a3);
              v39 = cczp_n(v78);
              v73 = cczp_n(v36);
              v61 = v38;
              v40 = cczp_n(v38 + 32);
              v68 = *(a1 + 16);
              v41 = (*(a1 + 24))(a1);
              __dsta = (*(a1 + 24))(a1, v39);
              v42 = (*(a1 + 24))(a1, v39);
              v43 = cczp_prime(v78);
              if (v39)
              {
                ccn_set(v39, v41, v43);
              }

              ccn_zero(2, &v41[v39]);
              ccn_shift_left_multi(v39 + 2, v41, v41, 0x21uLL);
              ccn_addn(v39 + 2, v41, v41, v39, v74);
              v66 = v40;
              ccn_subn(v39 + 2, v41, v41, v40 + 1, v76);
              cczp_modn_ws(a1, v78, v42, v39 + 2, v41);
              v44 = ccrsa_ctx_private_zp(a3);
              v45 = *ccrsa_ctx_private_zp(a3);
              v46 = *ccrsa_ctx_private_zp(a3);
              v47 = *ccrsa_ctx_private_zp(a3);
              v48 = ccrsa_ctx_private_zp(a3);
              v49 = v73;
              if (v73)
              {
                ccn_set(v73, v41, (v44 + 16 * v45 + 16 * v46 + 8 * v47 + 8 * *v48 + 64));
                v49 = v73;
              }

              ccn_zero(v39 - v49, &v41[v49]);
              cczp_mul_ws(a1, v78);
              v50 = cczp_prime(v61 + 32);
              if (v66)
              {
                ccn_set(v66, __dsta, v50);
              }

              ccn_zero(v39 - v66, &__dsta[8 * v66]);
              cczp_to_ws(a1, v78);
              ccn_mul_ws(a1, v39, v41, __dsta, v42);
              ccn_addn(2 * v39, v74, v41, v66 + 1, v76);
              *(a1 + 16) = v68;
              v33 = v77;
              cczp_modn_ws(a1, a3, v77, v57, v74);
              *(a1 + 16) = v69;
              v51 = ccrsa_ctx_public(a3);
              v52 = ccrsa_pub_crypt_ws(a1, v51);
              v53 = v70;
              if (v52)
              {
                v23 = v52;
              }

              else
              {
                v23 = ccn_cmp_internal(v10, v58, v70) != 0 ? 0xFFFFFFE5 : 0;
              }

              goto LABEL_23;
            }
          }
        }

        v23 = inited;
      }

      v33 = v77;
LABEL_26:
      v53 = v70;
      *(a1 + 16) = v69;
LABEL_23:
      memset(v53, 170, 8 * v10);
      ccn_mux(v10, v23 != 0, v33, v53, v33);
      *(a1 + 16) = v71;
      return v23;
    }
  }

  return 4294967268;
}

uint64_t ccrsa_crt_init_pq_star_ws(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v8 = cczp_n(a2);
  *a3 = v8 + 1;
  v9 = cczp_prime(a2);
  a3[v8 + 3] = ccn_mul1(v8, a3 + 3, v9, a4 & 0xFFFFFFFE | 1);

  return cczp_mm_init_ws(a1, a3, v8 + 1, 0);
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

  ccn_zero(v18 - v15 + 1, &v16[v15]);
  ccn_set_bit(v16, 0, 0);
  ccn_set(v15, v17, a6);
  v17[v15] = ccn_addmul1(v15, v17, v16, *a8);
  v20 = cczp_prime(a3);
  v16[v15] = ccn_mul1(v15, v16, v20, a8[2]);
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

uint64_t ccapsic_server_determine_intersection(unint64_t **a1, BOOL *a2, void **a3, void **a4)
{
  v25 = timingsafe_enable_if_supported();
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
  v23[0] = v14;
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
  v23[1] = v12;
  v23[2] = 0;
  v23[3] = cc_ws_alloc;
  v24 = cc_ws_free;
  if (v14)
  {
    v17 = a1[1];
    if (ccec_projectify_ws(v23, v7) || ccec_mult_blinded_ws(v23, v7, (a3 + 2), &(&a1[12 * **a1 + 24])[2 * **a1], &(&a1[6 * v8 + 24])[2 * v8], a1[1]))
    {
      v20 = 0;
    }

    else
    {
      v18 = ccec_affinify_ws(v23, v7);
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v19 = ccn_cmp_internal(v8, a3 + 2, a4 + 2) != 0;
        v20 = 0;
        *a2 = ccn_cmp_internal(v8, &a3[**a3 + 2], &a4[**a4 + 2]) == 0 && !v19;
      }
    }

    v24(v23);
  }

  else
  {
    v20 = 4294967283;
  }

  cc_disable_dit_with_sb(&v25);
  return v20;
}

BOOL OUTLINED_FUNCTION_0_13()
{

  return timingsafe_enable_if_supported();
}

uint64_t OUTLINED_FUNCTION_1_5()
{

  return cced25519_make_pub_internal(v3, v2, v1, v0);
}

uint64_t ccec_import_affine_point(void *a1, int a2, uint64_t a3, unsigned __int8 *a4, uint64_t *a5)
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

void *cced25519_full_add_ws(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v10 = cczp_n(a2);
  v11 = *(a1 + 16);
  v12 = 4 * v10;
  v13 = (*(a1 + 24))(a1, 4 * v10);
  v14 = (*(a1 + 24))(a1, v12);
  cced25519_to_ed25519_point_ws(a1, a2, v13, a4);
  cced25519_to_ed25519_point_ws(a1, a2, v14, a5);
  cced25519_add_points_unified_ws(a1, a2, v13, v14, v13, 4);
  result = cced25519_from_ed25519_point_ws(a1, a2, a3, v13);
  *(a1 + 16) = v11;
  return result;
}

uint64_t ccn_shift_right_multi(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t a4)
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
        v9 |= v13 ? 0 : a2[v11++];
      }

      while (a1 != v11);
      a2[v8++] = v9;
    }

    while (v8 != a1);
  }

  return result;
}

uint64_t ccwrap_auth_decrypt(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, size_t *a5, char *a6)
{
  v14 = timingsafe_enable_if_supported();
  v15 = 0xA6A6A6A6A6A6A6A6;
  v12 = ccwrap_auth_decrypt_withiv_internal(a1, a2, a3, a4, a5, a6, &v15);
  cc_disable_dit_with_sb(&v14);
  return v12;
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
  v69 = *MEMORY[0x29EDCA608];
  v19 = (*(*a8 + 2))();
  if (a10 < 5 || *v19 < *(*a8 + 4))
  {
    goto LABEL_7;
  }

  v63 = a6;
  v64 = a3;
  v21 = (__rev16(*a11) + 7) >> 3;
  if (v21 > a10 - 3)
  {
    goto LABEL_7;
  }

  v25 = v19;
  v26 = v21 + a11[v21 + 2] + 3;
  if ((a5 & 2) != 0)
  {
    if (v26 <= a10)
    {
      goto LABEL_13;
    }
  }

  else if (v26 == a10)
  {
LABEL_13:
    v56 = a11[v21 + 2];
    v59 = &a11[v21];
    v54 = a4;
    v27 = *a2;
    v28 = **a2;
    v58 = a8[1]();
    v29 = ccecb_context_size(v58);
    v62 = &v54;
    MEMORY[0x2A1C7C4A8](v29);
    v57 = &v54 - v30;
    v31 = *(a1 + 24);
    v61 = *(a1 + 16);
    v60 = v31(a1, v28);
    v32 = *(a1 + 24);
    v55 = 24 * v28;
    v33 = v32(a1, (24 * v28 + 23) >> 3);
    *v33 = v27;
    if ((((cczp_bitlen(v27) + 7) >> 2) | 1) == v21)
    {
      v34 = ccec_import_pub_ws(a1, v27, v21, a11 + 2, v33);
    }

    else
    {
      if ((a5 & 1) == 0 || v21 > (cczp_bitlen(*v33) + 7) >> 3)
      {
        v22 = 4294967289;
        goto LABEL_31;
      }

      v34 = ccec_compact_import_pub_ws(a1, v27, v21, a11 + 2, v33);
    }

    v22 = v34;
    if (!v34)
    {
      v67 = (cczp_bitlen(v27) + 7) >> 3;
      v35 = v60;
      v36 = ccecdh_compute_shared_secret_ws(a1, a2, v33, &v67, v60, 0);
      if (v36)
      {
        v22 = v36;
        goto LABEL_31;
      }

      v37 = v56;
      ccec_rfc6637_kdf(v25, a7, *a8, v67, v35, 0x14uLL, a9, __s);
      v38 = *(*a8 + 4);
      v40 = v57;
      v39 = v58;
      ccecb_init_internal(v58);
      cc_clear(*v25, __s);
      v41 = (*(a1 + 24))(a1, v55 + 90);
      v65 = 0xA6A6A6A6A6A6A6A6;
      v66 = v37;
      v22 = ccwrap_auth_decrypt_withiv_internal(v39, v40, v37, (v59 + 3), &v66, v41, &v65);
      v42 = ccecb_context_size(v39);
      cc_clear(v42, v40);
      if (!v22)
      {
        v43 = v66;
        if (v66 - 1 >= v37 - 1 || (v44 = v64, *v63 = *v41, v45 = (v41 + v43 - 1), v46 = *v45, v47 = v43 - 3, v48 = v47 - v46, v49 = v54, v47 < v46))
        {
LABEL_33:
          v22 = 4294967294;
          goto LABEL_31;
        }

        if (*v45)
        {
          v50 = *v45;
          do
          {
            v51 = *v45--;
            if (v51 != v46)
            {
              goto LABEL_33;
            }
          }

          while (--v50);
        }

        if (*v44 < v48)
        {
          v22 = 4294967133;
          goto LABEL_31;
        }

        *v44 = v48;
        v52 = pgp_key_checksum(v48, (v41 + 1));
        v53 = v41 + *v44;
        if (*(v53 + 1) != v52 >> 8 || *(v53 + 2) != v52)
        {
          goto LABEL_33;
        }

        memcpy(v49, (v41 + 1), *v44);
        v22 = 0;
      }
    }

LABEL_31:
    *(a1 + 16) = v61;
    goto LABEL_8;
  }

LABEL_7:
  v22 = 4294967289;
LABEL_8:
  v23 = *MEMORY[0x29EDCA608];
  return v22;
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

uint64_t ccn_shift_left_multi(uint64_t a1, uint64_t *a2, unint64_t *a3, unint64_t a4)
{
  v6 = a1;
  for (result = ccn_shift_left(a1, a2, a3, a4 & 0x3F); v6; a2[v6] = v8)
  {
    v8 = 0;
    v9 = v6--;
    v10 = a2;
    do
    {
      v11 = *v10++;
      v8 |= (a4 >> 6) + 1 != v9-- ? 0 : v11;
    }

    while (v9);
  }

  return result;
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
  v22 = *MEMORY[0x29EDCA608];
  v10 = ccrsa_n_from_size(a2);
  v11 = ccrsa_block_start(a2, a3, 1);
  if (v11 > a3)
  {
    bzero(a3, v11 - a3);
  }

  v12 = 4294967273;
  if (a2 >= 0xB)
  {
    v20 = a5;
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
          goto LABEL_16;
        }
      }

      else
      {
        v12 = v16(a1, 12, __src);
        memcpy(v11 + 2, __src, v15);
        cc_clear(v15, __src);
        if (v12)
        {
          goto LABEL_16;
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
              goto LABEL_16;
            }
          }
        }
      }

      *v11 = 512;
      v11[v14 - 1] = 0;
      memcpy(&v11[v14], v20, a4);
      ccn_swap(v10, a3);
      v12 = 0;
    }
  }

LABEL_16:
  v18 = *MEMORY[0x29EDCA608];
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
  v94 = *MEMORY[0x29EDCA608];
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
  v85[0] = v8;
  v9 = *v2;
  v10 = sizeof_struct_cche_galois_key();
  v11 = sizeof_struct_ccpolyzp_po2cyc();
  v12 = (v11 - 1 + v10 + 3 * v9 * v11) / v11 + 47 * v9;
  v13 = (v11 - 1 + 4 * v9 * v11 + sizeof_struct_cche_galois_key()) / v11 + 49 * v9;
  if (v12 > v13)
  {
    v13 = v12;
  }

  v85[1] = v13;
  v86 = 0;
  v87 = cc_ws_alloc;
  v88 = cc_ws_free;
  if (!v8)
  {
    v30 = 4294967283;
    goto LABEL_44;
  }

  v14 = 0;
  v82 = a1;
  v68 = (a1 << 27) >> 31;
  v15 = &unk_2A201BB38;
  while (1)
  {
    v83 = v14;
    v16 = (*(v15 - 6))();
    v17 = (*(v15 - 5))();
    v18 = cczp_bitlen(v16);
    v69 = *v17;
    v70 = v18;
    v19 = *(v15 - 3);
    v81 = *(v15 - 2);
    v21 = *(v15 - 1);
    v20 = *v15;
    v22 = v15[1];
    v23 = v15[2];
    v24 = v15[3];
    v75 = v15[5];
    v77 = v15[4];
    memset(v90, 0, sizeof(v90));
    v25 = cczp_bitlen(v16);
    v71 = *v17;
    v73 = v25;
    v79 = v86;
    v26 = v87(v85, (4 * (*v16 & 0x7FFFFFFFFFFFFFFLL)) | 2);
    *v26 = v16;
    if (ccec_x963_import_priv_ws(v85, v16, v81, v21, v26))
    {
      mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccec_x963_import_priv (P-%zu/SHA-%zu): %d\n");
LABEL_19:
      v28 = v83;
      v29 = v79;
      goto LABEL_21;
    }

    ccrng_ecfips_test_init(v90, v20 + v68, v22);
    v89 = 141;
    v27 = ccec_sign_msg_ws(v85, v26, v17, 0x80uLL, v19, &v89, v93, v90);
    if (v27)
    {
      v31 = v27;
      v32 = mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccec_sign_msg (P-%zu/SHA-%zu): %d\n", v32, "fipspost_post_ecdsa_sign_ws", 78, v73, 8 * v71, v31);
      v28 = v83;
      goto LABEL_22;
    }

    if (ccec_extract_rs_ws(v85, v26, v89, v93, __s1, v91))
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

    v28 = v83;
    v29 = v79;
    if (memcmp(v91, v75, v77))
    {
      break;
    }

    v86 = v79;
    v14 = v83 + 1;
    v15 += 12;
    if (v83 == 3)
    {
      v72 = 0;
      goto LABEL_23;
    }
  }

  v33 = mach_absolute_time();
  printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ECDSA_P%zu_SHA%zu KAT (s)\n", v33, "fipspost_post_ecdsa_sign_ws", 101, v73, 8 * v71);
LABEL_21:
  v86 = v29;
LABEL_22:
  v34 = mach_absolute_time();
  printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ECDSA_P%zu_SHA%zu_SIG KAT #%zu\n", v34, "fipspost_post_ecdsa_kat_sign_ws", 153, v70, 8 * v69, v28);
  v72 = -75;
LABEL_23:
  v35 = 0;
  v86 = 0;
  v36 = &unk_2A201BCA8;
  while (1)
  {
    v84 = v35;
    v37 = (*(v36 - 4))();
    v38 = (*(v36 - 3))();
    v39 = cczp_bitlen(v37);
    v78 = *v38;
    v80 = v39;
    v40 = *(v36 - 1);
    v41 = *v36;
    v43 = v36[1];
    v42 = v36[2];
    v44 = v36[3];
    v45 = cczp_bitlen(v37);
    v74 = *v38;
    v76 = v45;
    v46 = v86;
    v47 = v87(v85, (24 * *v37 + 23) >> 3);
    *v47 = v37;
    v48 = ccec_x963_import_pub_ws(v85, v37, v41, v43, v47);
    if (v48)
    {
      v54 = v48;
      v55 = mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccec_x963_import_pub (P-%zu/SHA-%zu): %d\n", v55, "fipspost_post_ecdsa_verify_ws", 187, v76, 8 * v74, v54);
      v49 = v82;
      v51 = v84;
      v52 = v46;
      goto LABEL_32;
    }

    __memcpy_chk();
    v49 = v82;
    if ((v82 & 0x10) != 0)
    {
      v93[0] ^= 0x5Au;
    }

    v50 = ccec_verify_msg_ws(v85, v47, v38, 0x80uLL, v40, v42, v93, 0);
    v51 = v84;
    v52 = v46;
    if (v50)
    {
      break;
    }

    v86 = v46;
    v35 = v84 + 1;
    v36 += 8;
    if (v84 == 3)
    {
      v53 = 0;
      v49 = v82;
      goto LABEL_33;
    }
  }

  v56 = v50;
  v57 = mach_absolute_time();
  printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccec_verify_msg (P-%zu/SHA-%zu): %d\n", v57, "fipspost_post_ecdsa_verify_ws", 200, v76, 8 * v74, v56);
LABEL_32:
  v86 = v52;
  v58 = mach_absolute_time();
  printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ECDSA_P%zu_SHA%zu_VER KAT #%zu\n", v58, "fipspost_post_ecdsa_kat_verify_ws", 245, v80, 8 * v78, v51);
  v53 = -75;
LABEL_33:
  v86 = 0;
  v30 = v53 | v72;
  if ((v49 & 0x10) != 0)
  {
    v59 = ccec_cp_224();
    v60 = v87(v85, (4 * (*v59 & 0x7FFFFFFFFFFFFFFLL)) | 2);
    *v60 = v59;
    if (ccec_x963_import_priv_ws(v85, v59, 0x55uLL, byte_299CF5D90, v60))
    {
      v61 = mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccec_x963_import_priv\n", v61, "fipspost_post_ecdsa_pairwise_ws", 277);
      v62 = -72;
    }

    else
    {
      v63 = ccec_pairwise_consistency_check_ws(v85, v60, &ccrng_zero);
      mach_absolute_time();
      if (v63)
      {
        printf("FIPSPOST_USER [%llu] %s:%d: FAILED: [PCT] CCEC_PAIRWISE_CONSISTENCY: unexpected FAILURE\n");
      }

      else
      {
        printf("FIPSPOST_USER [%llu] %s:%d: [PCT] CCEC_PAIRWISE_CONSISTENCY: expected SUCCESS\n");
      }

      *(v60 + 24) ^= 1uLL;
      v64 = ccec_pairwise_consistency_check_ws(v85, v60, &ccrng_zero);
      v65 = mach_absolute_time();
      if (v64)
      {
        printf("FIPSPOST_USER [%llu] %s:%d: [PCT] CCEC_PAIRWISE_CONSISTENCY: FORCEFAIL\n", v65, "fipspost_post_ecdsa_pairwise_ws", 295);
        v62 = 0;
      }

      else
      {
        printf("FIPSPOST_USER [%llu] %s:%d: FAILED: [PCT] CCEC_PAIRWISE_CONSISTENCY: unexpected SUCCESS\n", v65, "fipspost_post_ecdsa_pairwise_ws", 298);
        v62 = -1;
      }
    }

    v86 = 0;
    v30 = v62 | v30;
  }

  v88(v85);
LABEL_44:
  v66 = *MEMORY[0x29EDCA608];
  return v30;
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

void *ccaes_cfb_decrypt_mode()
{
  v0 = ccaes_ecb_encrypt_mode();
  ccmode_factory_cfb_decrypt(cfb_decrypt, v0);
  return cfb_decrypt;
}

uint64_t ccmode_siv_hmac_decrypt(rsize_t *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v24 = *MEMORY[0x29EDCA608];
  v4 = *(*a1 + 64);
  if (*(v4 + 16) == 16)
  {
    v6 = a1[3];
    v7 = v6 > 6;
    v8 = (1 << v6) & 0x54;
    if (v7 || v8 == 0)
    {
      v12 = 4294967228;
    }

    else
    {
      v10 = a1[2];
      v11 = a2 - v10;
      if (a2 >= v10)
      {
        v15 = a1[2];
        __memcpy_chk();
        v21 = v23[0];
        if (ccmode_siv_hmac_temp_key_gen(a1, v20, &v21) || (BYTE8(v21) &= ~0x80u, BYTE12(v21) &= ~0x80u, v16 = ccctr_one_shot_internal(v4, a1[1] >> 1, v20, &v21, v11, a3 + v10, a4), v17 = ccmode_siv_hmac_auth_finalize(a1, v11, a4, __s), v17 | cc_cmp_safe_internal(v10, __s, v23) | v16))
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

        cc_clear(a1[1] >> 1, v20);
      }

      else
      {
        v12 = 4294967229;
      }
    }
  }

  else
  {
    v12 = 4294967226;
  }

  v18 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t ccckg_contributor_commit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x29EDCA608];
  v30 = timingsafe_enable_if_supported();
  v6 = ccckg_ctx_di(a1);
  v7 = ccckg_ctx_cp(a1);
  v8 = v7 + 4;
  v9 = *v7;
  v10 = (((*(v6 + 8) + *(v6 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](v7);
  v12 = (&v28[-1] - v11);
  if (*(a1 + 32))
  {
    v13 = 4294967210;
  }

  else
  {
    v27 = a3;
    v14 = cczp_n(&v8[5 * v9]);
    v15 = cc_malloc_clear(8 * v14);
    v28[0] = v15;
    v28[1] = cczp_n(&v8[5 * v9]);
    v28[2] = 0;
    v28[3] = cc_ws_alloc;
    v29 = cc_ws_free;
    if (v15)
    {
      if (ccckg_sizeof_commitment(v7, v6) == a2)
      {
        v16 = a1 + 40;
        scalar_fips_retry_ws = ccec_generate_scalar_fips_retry_ws(v28, v7, *(a1 + 24), (a1 + 40));
        if (scalar_fips_retry_ws || (v18 = *(a1 + 24), v19 = *v6, v20 = ccckg_ctx_cp(a1), scalar_fips_retry_ws = (*v18)(v18, v19, v16 + 8 * *v20), scalar_fips_retry_ws))
        {
          v13 = scalar_fips_retry_ws;
        }

        else
        {
          v23 = cczp_bitlen(&v8[5 * *v7]);
          ccn_write_uint_padded_internal(v9, (a1 + 40), (v23 + 7) >> 3, __src);
          ccdigest_init_internal(v6, v12);
          v24 = cczp_bitlen(&v8[5 * *v7]);
          ccdigest_update_internal(v6, v12, (v24 + 7) >> 3, __src);
          v25 = *v6;
          v26 = ccckg_ctx_cp(a1);
          ccdigest_update_internal(v6, v12, v25, (v16 + 8 * *v26));
          (*(v6 + 56))(v6, v12, v27);
          cc_clear(*(v6 + 8) + *(v6 + 16) + 12, v12);
          v13 = 0;
          *(a1 + 32) = 1;
        }
      }

      else
      {
        v13 = 4294967289;
      }

      v29(v28);
      cc_clear(0x42uLL, __src);
    }

    else
    {
      v13 = 4294967283;
    }
  }

  cc_disable_dit_with_sb(&v30);
  v21 = *MEMORY[0x29EDCA608];
  return v13;
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
  v19 = *(a1 + 16);
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
      v18 = &v10[2 * *v10];
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

  *(a1 + 16) = v19;
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
  v27 = timingsafe_enable_if_supported();
  v8 = *a1;
  v9 = cc_malloc_clear(24 * **a1);
  v10 = 3 * *v8;
  v23[0] = v9;
  v23[1] = v10;
  v24 = 0;
  v25 = cc_ws_alloc;
  v26 = cc_ws_free;
  if (v9)
  {
    if (*(a1 + 24) >= CCSAE_STATE_COMMIT_BOTH)
    {
      v12 = *a1;
      v13 = **a1;
      v14 = (cczp_bitlen(*a1) + 7) >> 3;
      v15 = &v12[5 * *v12];
      v16 = cc_ws_alloc(v23, v13);
      v17 = v25(v23, v13);
      v18 = **a1;
      cczp_add_ws(v23, (v15 + 4));
      ccn_write_uint_padded_internal(v13, v16, v14, v17);
      v19 = *(a1 + 7);
      if (v19 == 2)
      {
        v20 = *a1[2];
      }

      else if (v19 == 1)
      {
        v20 = 32;
      }

      else
      {
        v20 = 0;
      }

      memcpy(a2, a1 + 6, v20);
      v11 = 0;
      v21 = *(a1 + 8);
      *a3 = *(a1 + 7);
      a3[1] = v21;
      *a4 = *v17;
      v24 = 0;
      v26(v23);
    }

    else
    {
      v11 = 4294967210;
      cc_ws_free(v23);
    }
  }

  else
  {
    v11 = 4294967283;
  }

  cc_disable_dit_with_sb(&v27);
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

uint64_t ccckg2_owner_finish(uint64_t a1, size_t a2, char *a3, unint64_t **a4, uint64_t a5, char *a6, uint64_t (**a7)(void, uint64_t, uint64_t *))
{
  v29 = *MEMORY[0x29EDCA608];
  v27 = timingsafe_enable_if_supported();
  v14 = ccckg2_ctx_di(a1);
  v15 = ccckg2_ctx_cp(a1);
  if (*(a1 + 32) == 2)
  {
    v16 = v15;
    if (*a4 == v15 && (v26 = a6, v17 = cczp_bitlen(&v15[5 * *v15 + 4]) + 7, (((cczp_bitlen(v16) + 7) >> 2) | 1) + (v17 >> 3) == a2))
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
        v24 = ccckg_owner_finish_derive_p(a1, a3, a4, a7);
        if (v24)
        {
          v21 = v24;
        }

        else
        {
          v25 = cczp_bitlen(&v16[5 * *v16 + 4]);
          v21 = ccckg2_derive_sk(a1, &a3[(v25 + 7) >> 3], a4, a5, v26, a7);
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

  cc_disable_dit_with_sb(&v27);
  v22 = *MEMORY[0x29EDCA608];
  return v21;
}

uint64_t fipspost_post_kdf_ctr_cmac(char a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v23 = 0;
  v24 = 0;
  v2 = ccaes_cbc_encrypt_mode();
  if (ccnistkdf_ctr_cmac_fixed(v2, 0x20u, 16, "\xC1\x0B\x15.\x8C\x97\xB7~\x18pN\x0F\vӃ\x05", 0x3CuLL, byte_299CF62F5, 0x10uLL, &v23))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_cmac_fixed (AES128): %d\n");
LABEL_13:
    v8 = 4294967224;
    goto LABEL_14;
  }

  v3 = "\x01&\xFA\xF6\x19\x08\xAD\x9E聸0\\\x1D\xB5?";
  if ((a1 & 0x10) == 0)
  {
    v3 = "&\xFA\xF6\x19\x08\xAD\x9E聸0\\\x1D\xB5?";
  }

  v5 = *v3;
  v4 = *(v3 + 1);
  if (v5 == v23 && v4 == v24)
  {
    v8 = 0;
  }

  else
  {
    v7 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed CMAC_AES128 KAT\n", v7, "fipspost_post_kdf_ctr_cmac", 69);
    v8 = 4294967221;
  }

  v21 = 0u;
  v22 = 0u;
  v9 = ccaes_cbc_encrypt_mode();
  if (ccnistkdf_ctr_cmac_fixed(v9, 0x18u, 32, "Mq\x922\x80\xFBJ\x11\xB2_\x9DX\xD6\x77\x04\xD8\xF8\xBB-d؞۞\xE6\xF3\xDE2\xE4\x60\x1E\xFC", 0x3CuLL, "\xE2\x7B\x8F5\v\xC1\x36\r\xDC\x47l\xB0\xCA\xE8\x86\xF0\x16\x1D\xA2.\xE8\x15\x9C3\x0FTZ\xF1\xD7\x82\xA0\xF0\xAA\xCC\x3C=\xE6\x21\x58\a\x16\x1D\xF0\x93\x36\xD4p\xB5\xB4\xDB\x1C\xC0\xCEs\xED\x1D\x3E\xA2C\x80", 0x20uLL, &v21))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_cmac_fixed (AES256): %d\n");
    goto LABEL_13;
  }

  v12 = "\x01\xB5\xB2\xBBg_\xE7\xB0\x4AR4\v\xD5\xCF$\x8DRX\xA1\xF87\xDA\xD7G\xEE\x8A\x4E\x90F\b\xA8\x97}";
  if ((a1 & 0x10) == 0)
  {
    v12 = "\xB5\xB2\xBBg_\xE7\xB0\x4AR4\v\xD5\xCF$\x8DRX\xA1\xF87\xDA\xD7G\xEE\x8A\x4E\x90F\b\xA8\x97}";
  }

  v13 = *v12;
  v14 = *(v12 + 1);
  v16 = *(v12 + 2);
  v15 = *(v12 + 3);
  if (v13 != v21 || v14 != *(&v21 + 1) || v16 != v22 || v15 != *(&v22 + 1))
  {
    v20 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed CMAC_AES256 KAT\n", v20, "fipspost_post_kdf_ctr_cmac", 122);
    v8 = 4294967221;
  }

LABEL_14:
  v10 = *MEMORY[0x29EDCA608];
  return v8;
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

uint64_t ccn_mux_next_mask()
{
  v0 = state ^ (state << 13) ^ ((state ^ (state << 13)) >> 7);
  result = v0 ^ (v0 << 17);
  state = result;
  return result;
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

uint64_t ccn_write_uint_padded(uint64_t a1, uint64_t *a2, unint64_t a3, char *a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = ccn_write_uint_padded_internal(a1, a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
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

void *cced25519_double_scalar_mult_ws(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = *MEMORY[0x29EDCA608];
  v11 = cczp_n(a2);
  v24 = *(a1 + 16);
  v12 = (*(a1 + 24))(a1, 4 * v11);
  v13 = 32 * v11;
  v14 = (*(a1 + 24))(a1, 32 * v11);
  cced25519_to_ed25519_point_ws(a1, a2, v14, a6);
  cced25519_point_to_cached_ws(a1, a2);
  cced25519_dbl_point_ws(a1, a2);
  v15 = 7;
  v16 = v14;
  do
  {
    v17 = v16 + v13;
    cced25519_add_points_unified_cached_ws(a1, a2, v16 + v13, v12, v16, 0);
    cced25519_point_to_cached_ws(a1, a2);
    v16 = v17;
    --v15;
  }

  while (v15);
  cc_clear(8 * v11, v12);
  cc_clear(8 * v11, &v12[16 * v11]);
  ccn_seti(v11, &v12[8 * v11], 1);
  ccn_seti(v11, &v12[24 * v11], 1);
  ccn_recode_ssw(v11, a4, 4, v27);
  ccn_recode_ssw(v11, a5, 4, v26);
  v18 = 255;
  do
  {
    v19 = v27[v18];
    v20 = v26[v18--];
  }

  while (!(v20 | v19));
  if (v18 != -2)
  {
    v21 = v18 + 1;
    do
    {
      cced25519_dbl_point_ws(a1, a2);
      cced25519_add_precomputed_point_ws(a1, a2, v12, v26[v21], 4, v14, 0);
      cced25519_add_precomputed_point_ws(a1, a2, v12, v27[v21--], 3, &CCED25519_PRECOMPUTED_BASES, 6);
    }

    while (v21 != -1);
  }

  result = cced25519_from_ed25519_point_ws(a1, a2, a3, v12);
  *(a1 + 16) = v24;
  v23 = *MEMORY[0x29EDCA608];
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
  v17 = *MEMORY[0x29EDCA608];
  v4 = *(*a1 + 64);
  if (*(v4 + 16) == 16)
  {
    v9 = a1[2];
    v10 = ccmode_siv_hmac_auth_finalize(a1, a2, a3, __src);
    if (!v10)
    {
      v15 = __src[0];
      v11 = ccmode_siv_hmac_temp_key_gen(a1, v14, &v15);
      if (v11)
      {
        v10 = v11;
      }

      else
      {
        BYTE8(v15) &= ~0x80u;
        BYTE12(v15) &= ~0x80u;
        v10 = ccctr_one_shot_internal(v4, a1[1] >> 1, v14, &v15, a2, a3, a4 + v9);
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
      cc_clear(a1[1] >> 1, v14);
    }
  }

  else
  {
    v10 = 4294967226;
  }

  v12 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t ccec_double_ws(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v4);
  v6 = *a2;
  cczp_sqr_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  v7 = *a2;
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  v8 = *a2;
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

uint64_t ccdh_lookup_gp(unint64_t a1, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  v16[25] = *MEMORY[0x29EDCA608];
  v16[0] = ccdh_gp_apple768();
  v16[1] = ccdh_gp_rfc2409group02();
  v16[2] = ccdh_gp_rfc5114_MODP_1024_160();
  v16[3] = ccdh_gp_rfc5114_MODP_2048_224();
  v16[4] = ccdh_gp_rfc5114_MODP_2048_256();
  v16[5] = ccdh_gp_rfc3526group05();
  v16[6] = ccdh_gp_rfc3526group14();
  v16[7] = ccdh_gp_rfc3526group15();
  v16[8] = ccdh_gp_rfc3526group16();
  v16[9] = ccdh_gp_rfc3526group17();
  v16[10] = ccdh_gp_rfc3526group18();
  v16[11] = ccsrp_gp_rfc5054_1024();
  v16[12] = ccsrp_gp_rfc5054_2048();
  v16[13] = ccsrp_gp_rfc5054_3072();
  v16[14] = ccsrp_gp_rfc5054_4096();
  v16[15] = ccsrp_gp_rfc5054_8192();
  v16[16] = ccdh_gp_rfc5114_MODP_1024_160();
  v16[17] = ccdh_gp_rfc5114_MODP_2048_224();
  v16[18] = ccdh_gp_rfc5114_MODP_2048_256();
  v16[19] = ccdh_gp_rfc3526group05();
  v16[20] = ccdh_gp_rfc3526group14();
  v16[21] = ccdh_gp_rfc3526group15();
  v16[22] = ccdh_gp_rfc3526group16();
  v16[23] = ccdh_gp_rfc3526group17();
  v8 = 0;
  v16[24] = ccdh_gp_rfc3526group18();
  while (1)
  {
    v9 = v16[v8];
    v10 = ccn_n(a1, a2);
    v11 = v9 + 24;
    if (!ccn_cmpn_public_value(v10, a2, *v9, (v9 + 24)))
    {
      v12 = ccn_n(a3, a4);
      v13 = ccn_n(*v9, (v11 + 8 * *v9 + 8 * *v9 + 8));
      if (!ccn_cmpn_public_value(v12, a4, v13, (v11 + 8 * *v9 + 8 * *v9 + 8)))
      {
        break;
      }
    }

    if (++v8 == 25)
    {
      v9 = 0;
      break;
    }
  }

  v14 = *MEMORY[0x29EDCA608];
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

uint64_t ccmlkem_kem_keypair(int16x8_t *a1, void *a2, void *a3, uint64_t (**a4)(void, uint64_t, _OWORD *))
{
  v13 = *MEMORY[0x29EDCA608];
  v7 = (*a4)(a4, 64, __s);
  if (v7)
  {
    v8 = v7;
    goto LABEL_3;
  }

  v8 = ccmlkem_kem_keypair_from_seed(a1, a2, a3, __s, &v12);
  if (v8)
  {
LABEL_3:
    cc_clear((384 * a1->i32[1]) | 0x20u, a2);
    cc_clear((768 * a1->i32[1]) | 0x60u, a3);
  }

  cc_clear(0x40uLL, __s);
  v9 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t ccmlkem_kem_encapsulate_msg(int16x8_t *a1, uint64_t a2, uint64_t a3, _OWORD *a4, __int128 *a5)
{
  v27 = *MEMORY[0x29EDCA608];
  v10 = sizeof_struct_ccpolyzp_po2cyc();
  v11 = a1->i32[1];
  v20[0] = cc_malloc_clear(8 * (3 * ((v10 + 511) / v10) + 4 * ((v10 - 1 + 2 * (v11 << 8)) / v10) + (v10 - 1 + 2 * ((v11 << 8) * v11)) / v10 + (v10 - 1 + ((384 * v11) | 0x20u)) / v10));
  v12 = sizeof_struct_ccpolyzp_po2cyc();
  v13 = a1->i32[1];
  v14 = (384 * v13) | 0x20u;
  v20[1] = 3 * ((v12 + 511) / v12) + 4 * ((v12 - 1 + 2 * (v13 << 8)) / v12) + (v12 - 1 + 2 * ((v13 << 8) * v13)) / v12 + (v12 - 1 + v14) / v12;
  v21 = 0;
  v22 = cc_ws_alloc;
  v23 = cc_ws_free;
  if (v20[0])
  {
    v15 = a5[1];
    __s = *a5;
    v25 = v15;
    ccmlkem_hash_h(v14, a2, v26);
    ccmlkem_hash_g(64, &__s, &__s);
    v16 = ccmlkem_indcpa_encrypt_ws(v20, a1, a2, a5, v26, a3);
    if (!v16)
    {
      v17 = v25;
      *a4 = __s;
      a4[1] = v17;
    }

    v21 = 0;
    cc_clear(0x40uLL, &__s);
    v23(v20);
  }

  else
  {
    v16 = 4294967283;
  }

  v18 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t ccmlkem_kem_decapsulate(int16x8_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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

uint64_t ccrsa_priv_crypt_ws(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v8 = ccrng(0);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  return ccrsa_priv_crypt_blinded_ws(a1, v8, a2, a3, a4);
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

uint64_t ccn_mul1(uint64_t a1, void *a2, unint64_t *a3, unint64_t a4)
{
  for (i = 0; a1; --a1)
  {
    v5 = *a3++;
    v6 = (v5 * a4) >> 64;
    v7 = v5 * a4 + i;
    if (__CFADD__(v5 * a4, i))
    {
      i = v6 + 1;
    }

    else
    {
      i = v6;
    }

    *a2++ = v7;
  }

  return i;
}

uint64_t ccdigest_internal(uint64_t a1, size_t a2, char *a3, uint64_t a4)
{
  v14[1] = *MEMORY[0x29EDCA608];
  v8 = (((*(a1 + 8) + *(a1 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x2A1C7C4A8](a1);
  v11 = (v14 - v10);
  ccdigest_init_internal(v9, (v14 - v10));
  ccdigest_update_internal(a1, v11, a2, a3);
  (*(a1 + 56))(a1, v11, a4);
  result = cc_clear(*(a1 + 8) + *(a1 + 16) + 12, v11);
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ccdigest(uint64_t a1, size_t a2, char *a3, uint64_t a4)
{
  v9 = timingsafe_enable_if_supported();
  ccdigest_internal(a1, a2, a3, a4);
  return cc_disable_dit_with_sb(&v9);
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

uint64_t cchmac_update(unint64_t *a1, void *a2, size_t a3, char *a4)
{
  v9 = timingsafe_enable_if_supported();
  ccdigest_update_internal(a1, a2, a3, a4);
  return cc_disable_dit_with_sb(&v9);
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

uint64_t ccsigma_import_peer_key_share(uint64_t ***a1, uint64_t a2, unsigned __int8 *a3)
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
  v23 = *MEMORY[0x29EDCA608];
  v21 = timingsafe_enable_if_supported();
  v8 = *a1;
  v9 = cczp_bitlen(**a1);
  v20 = (v9 + 7) >> 3;
  if ((v9 + 7) <= 0x107)
  {
    v11 = (v8[1])(a1);
    v12 = ((*a1)[2])(a1);
    v13 = *v11;
    v14 = cc_malloc_clear(232 * **v11);
    v15 = 29 * *v13;
    v18[0] = v14;
    v18[1] = v15;
    v18[2] = 0;
    v18[3] = cc_ws_alloc;
    v19 = cc_ws_free;
    if (v14)
    {
      v10 = ccecdh_compute_shared_secret_ws(v18, v11, v12, &v20, v22, a4);
      v19(v18);
      if (!v10)
      {
        v10 = (v8[12])(a1, v20, v22, a2, a3);
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

  cc_disable_dit_with_sb(&v21);
  v16 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t ccsigma_verify(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x29EDCA608];
  v17 = timingsafe_enable_if_supported();
  v8 = (*(*a1 + 56))(a1);
  v15[0] = cc_malloc_clear(376 * **v8);
  v15[1] = 47 * **v8;
  v15[2] = 0;
  v15[3] = cc_ws_alloc;
  v16 = cc_ws_free;
  if (v15[0])
  {
    v9 = **(*a1 + 32);
    if (v9 > 0x40)
    {
      v12 = 4294967291;
    }

    else
    {
      v10 = (*(*a1 + 136))(a1, a1[2] == 0, a3, a4, v18);
      if (!v10)
      {
        v11 = ccec_signature_r_s_size(v8);
        v10 = ccec_verify_composite_digest_ws(v15, v8, v9, v18, a2, a2 + v11, 0);
      }

      v12 = v10;
    }

    v16(v15);
  }

  else
  {
    v12 = 4294967283;
  }

  cc_disable_dit_with_sb(&v17);
  v13 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t ccsigma_clear(uint64_t a1)
{
  v3 = timingsafe_enable_if_supported();
  (*(*a1 + 176))(a1);
  return cc_disable_dit_with_sb(&v3);
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
  v29 = *MEMORY[0x29EDCA608];
  v25 = timingsafe_enable_if_supported();
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
    ecb_from_cbc(a1, a2, v26, v28);
    if (v14 - v12 < v12)
    {
      memcpy(&v27[v16], &v28[v16], 2 * v12 - v14);
    }

    (*(a1 + 24))(a2, a3, 1, v27, a6);
    if (v14 != v12)
    {
      v17 = (a6 + v12);
      v18 = v28;
      v19 = v27;
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

  cc_disable_dit_with_sb(&v25);
  v23 = *MEMORY[0x29EDCA608];
  return a4;
}

uint64_t ecb_from_cbc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 8);
  v9 = MEMORY[0x2A1C7C4A8](a1);
  v11 = v14 - v10;
  cccbc_set_iv_internal(v9, v14 - v10, 0);
  ccdrbg_generate_internal(a1, a2, v11, 1, a3, a4);
  result = cc_clear(v8, v11);
  v13 = *MEMORY[0x29EDCA608];
  return result;
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
  v11 = *MEMORY[0x29EDCA608];
  v4 = ccrng(0);
  memset(v10, 0, sizeof(v10));
  v5 = cccurve25519_with_rng(v4, v10, *(a1 + 16), *(a1 + 8));
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = v6 == 2 || cc_cmp_safe(32, v10, *(a1 + 24)) != 0;
  }

  result = ccpost_report(a1, a2, v7);
  v9 = *MEMORY[0x29EDCA608];
  return result;
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

uint64_t cced25519_to_ed25519_point_ws(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 + 8 * *a2;
  cczp_n(a2);
  v7 = *(a1 + 16);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  result = cczp_sqr_ws(a1, a2);
  *(a1 + 16) = v7;
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
  v31 = a8;
  v35 = a4;
  v37 = *MEMORY[0x29EDCA608];
  v32 = *a2;
  v16 = cczp_n(a2);
  v17 = *(a1 + 24);
  v34 = *(a1 + 16);
  v18 = 2 * v16;
  v30 = v17(a1, 2 * v16);
  v33 = &v29;
  v19 = (((*(a3 + 8) + *(a3 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](v30);
  v21 = (&v29 - v20);
  ccdigest_init_internal(a3, (&v29 - v20));
  ccdigest_update_internal(a3, v21, a5, a6);
  ccdigest_update_internal(a3, v21, a7, v31);
  ccdigest_update_internal(a3, v21, a9, a10);
  (*(a3 + 56))(a3, v21, __s);
  cc_clear(*(a3 + 8) + *(a3 + 16) + 12, v21);
  v22 = v30;
  if (v18)
  {
    v23 = __s;
    v24 = v30;
    v25 = v18;
    do
    {
      v26 = *v23++;
      *v24++ = v26;
      --v25;
    }

    while (v25);
  }

  cczp_modn_ws(a1, &a2[5 * v32 + 4], v35, v18, v22);
  result = cc_clear(0x40uLL, __s);
  *(a1 + 16) = v34;
  v28 = *MEMORY[0x29EDCA608];
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

uint64_t ccec_diversify_pub(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (**a5)(void, uint64_t, uint64_t *), unint64_t **a6, unint64_t **a7)
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

uint64_t ccn_shift_right(uint64_t result, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (result)
  {
    v4 = a4 != 0;
    v5 = *a3;
    v6 = result - 1;
    if (result == 1)
    {
      v7 = *a3;
    }

    else
    {
      v8 = -v4;
      v9 = v4 - a4 + 63;
      v10 = a3 + 1;
      v11 = a2;
      do
      {
        v12 = *v10++;
        v7 = v12;
        *v11++ = (v12 << v9) & v8 | (v5 >> a4);
        v5 = v12;
        --v6;
      }

      while (v6);
    }

    a2[result - 1] = v7 >> a4;
  }

  return result;
}

double ccvrf_factory_irtfdraft03(uint64_t a1, void *a2)
{
  if (*a2 == *ccsha512_di())
  {
    v5 = unk_2A201BDE8;
    *(a1 + 32) = xmmword_2A201BDD8;
    *(a1 + 48) = v5;
    *(a1 + 64) = xmmword_2A201BDF8;
    *(a1 + 80) = off_2A201BE08;
    result = *&_vrf_irtf_ed25519_draft03;
    v6 = unk_2A201BDC8;
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
    v4 = unk_2A201BDE8;
    *(a1 + 32) = xmmword_2A201BDD8;
    *(a1 + 48) = v4;
    *(a1 + 64) = xmmword_2A201BDF8;
    *(a1 + 80) = off_2A201BE08;
    result = *&_vrf_irtf_ed25519_draft03;
    v5 = unk_2A201BDC8;
    *a1 = _vrf_irtf_ed25519_draft03;
    *(a1 + 16) = v5;
    *(a1 + 40) = v2;
  }

  return result;
}

uint64_t ccec_generate_key(unint64_t *a1, uint64_t (**a2)(void, unint64_t, void *), unint64_t **a3)
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
  v17 = *MEMORY[0x29EDCA608];
  ccdigest_internal(a3, a4, a5, v16);
  result = ccec_sign_ws(a1, a2, *a3, v16, a6, a7, a8);
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ccec_sign_msg(uint64_t **a1, unint64_t *a2, size_t a3, char *a4, unint64_t *a5, uint64_t a6, uint64_t (**a7)(void, unint64_t, void *))
{
  v24 = *MEMORY[0x29EDCA608];
  v22 = timingsafe_enable_if_supported();
  v14 = *a1;
  v15 = cc_malloc_clear(280 * **a1);
  v16 = 35 * *v14;
  v20[0] = v15;
  v20[1] = v16;
  v20[2] = 0;
  v20[3] = cc_ws_alloc;
  v21 = cc_ws_free;
  if (v15)
  {
    ccdigest_internal(a2, a3, a4, v23);
    v17 = ccec_sign_ws(v20, a1, *a2, v23, a5, a6, a7);
    v21(v20);
  }

  else
  {
    v17 = 4294967283;
  }

  cc_disable_dit_with_sb(&v22);
  v18 = *MEMORY[0x29EDCA608];
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

uint64_t ccec_sign_internal_ws(uint64_t a1, uint64_t **a2, unint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t (**a7)(void, unint64_t, void *))
{
  v13 = *a2;
  v15 = (*a2 + 4);
  v14 = **a2;
  if (a3 <= 0xF)
  {
    ccec_sign_internal_ws_cold_1(a3);
  }

  v35 = *(a1 + 16);
  v16 = (*(a1 + 24))(a1, v14);
  v39 = (*(a1 + 24))(a1, v14);
  v37 = (*(a1 + 24))(a1, v14);
  v17 = (*(a1 + 24))(a1, 3 * v14);
  v18 = *v13;
  v36 = v17;
  v34 = a7;
  scalar_fips_retry_ws = ccec_projectify_ws(a1, v13);
  if (!scalar_fips_retry_ws)
  {
    v33 = a5;
    v20 = a4;
    v21 = **a2;
    v22 = cczp_bitlen(v15 + 40 * *v13);
    v23 = v22;
    if ((v22 + 7) >> 3 >= a3)
    {
      v24 = a3;
    }

    else
    {
      v24 = (v22 + 7) >> 3;
    }

    uint_internal = ccn_read_uint_internal(v14, v16, v24, v20);
    if ((uint_internal & 0x80000000) != 0)
    {
      v31 = uint_internal;
      a5 = v33;
      goto LABEL_18;
    }

    v26 = &a2[3 * v21];
    if (v23 < 8 * a3)
    {
      ccn_shift_right(v14, v16, v16, -v23 & 7);
    }

    v27 = cczp_prime(v15 + 40 * v14);
    a5 = v33;
    v28 = ccn_sub_ws(a1, v14, v33, v16, v27);
    ccn_mux(v14, v28, v16, v16, v33);
    scalar_fips_retry_ws = ccec_validate_scalar(v13, v26 + 2);
    if (!scalar_fips_retry_ws)
    {
      v29 = 10;
      while (1)
      {
        scalar_fips_retry_ws = ccec_generate_scalar_fips_retry_ws(a1, v13, v34, v39);
        if (scalar_fips_retry_ws)
        {
          break;
        }

        scalar_fips_retry_ws = ccec_generate_scalar_fips_retry_ws(a1, v13, v34, v37);
        if (scalar_fips_retry_ws)
        {
          break;
        }

        v30 = ccec_sign_internal_inner_ws(a1, v13, v16, (v26 + 2), v39, v36, v37, v33, a6, v34);
        v31 = v30;
        if (!v30)
        {
          goto LABEL_19;
        }

        if (v30 != -165)
        {
          goto LABEL_18;
        }

        if (!--v29)
        {
          cc_try_abort();
        }
      }
    }
  }

  v31 = scalar_fips_retry_ws;
LABEL_18:
  cc_clear(8 * v14, a5);
  cc_clear(8 * v14, a6);
LABEL_19:
  *(a1 + 16) = v35;
  return v31;
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

uint64_t cckem_mlkem768_generate_key_with_seed(uint64_t a1)
{
  cckem_public_ctx();
  v2 = a1 + *(*a1 + 16) + 8;

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

uint64_t OUTLINED_FUNCTION_3_3()
{
  v2 = *(v0 + 24);
  v3 = (*(v1 + 4) & 0xFFFFFFLL) << 7;
  return v0;
}

void ccvrf_irtf_ed25519_verify(uint64_t a1, uint64_t a2, char *a3, size_t a4, uint64_t a5)
{
  v26 = *MEMORY[0x29EDCA608];
  if (!ge_has_small_order(a2))
  {
    memset(v13, 0, sizeof(v13));
    if (!ccvrf_irtf_ed25519_string_to_point(v13, a2))
    {
      memset(v25, 0, sizeof(v25));
      memset(v24, 0, sizeof(v24));
      memset(v23, 0, sizeof(v23));
      v22[0] = 0;
      v22[1] = 0;
      memset(v20, 0, sizeof(v20));
      memset(v19, 0, sizeof(v19));
      memset(v18, 0, sizeof(v18));
      memset(v17, 0, sizeof(v17));
      memset(v16, 0, sizeof(v16));
      memset(v15, 0, sizeof(v15));
      memset(v14, 0, sizeof(v14));
      ccvrf_irtf_ed25519_decode_proof(a5, v19, v24, v23);
      if (!v10)
      {
        v11 = *(a1 + 32);
        bzero(v24 + (v11 >> 1), v11 >> 1);
        bzero(v23 + v11, v11);
        sc_reduce(v23);
        ccvrf_irtf_ed25519_hash2curve_elligator2(*(a1 + 40), v13, a3, a4, v25);
        ge_frombytes_vartime(v20, v25);
        ge_scalarmult(v16, v24, v13);
        ge_p3_to_cached(v14, v16);
        ge_scalarmult_base(v16, v23);
        ge_sub(v15, v16, v14);
        ge_p1p1_to_p3(v18, v15);
        ge_scalarmult(v16, v24, v19);
        ge_p3_to_cached(v14, v16);
        ge_scalarmult(v16, v23, v20);
        ge_sub(v15, v16, v14);
        ge_p1p1_to_p3(v17, v15);
        v21[0] = v20;
        v21[1] = v19;
        v21[2] = v18;
        v21[3] = v17;
        ccvrf_irtf_ed25519_hash_points(a1, v21, 4, v22);
        cc_cmp_safe_internal(*(a1 + 32) >> 1, v24, v22);
      }
    }
  }

  v12 = *MEMORY[0x29EDCA608];
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
  *(a1 + 8) = xmmword_299CF66C0;
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

uint64_t ccmlkem_polyvec_encode(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 4))
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      result = ccmlkem_poly_encode(a2 + (v6 & 0xFFFFFF80), a3 + 2 * (v7 & 0xFFFFFF00));
      ++v8;
      v7 += 256;
      v6 += 384;
    }

    while (v8 < *(v5 + 4));
  }

  return result;
}

uint64_t ccmlkem_polyvec_decode(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 4))
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      result = ccmlkem_poly_decode(a2 + 2 * (v6 & 0xFFFFFF00), a3 + (v7 & 0xFFFFFF80));
      ++v8;
      v7 += 384;
      v6 += 256;
    }

    while (v8 < *(v5 + 4));
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

uint64_t ccmlkem_polyvec_add(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 4))
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    do
    {
      result = ccmlkem_poly_add(a2 + ((2 * v8) & 0x1FFFFFE00), a3 + ((2 * v8) & 0x1FFFFFE00), a4 + ((2 * v8) & 0x1FFFFFE00));
      ++v9;
      v8 += 256;
    }

    while (v9 < *(v7 + 4));
  }

  return result;
}

uint64_t ccmlkem_polyvec_reduce(uint64_t result, uint64_t a2)
{
  if (*(result + 4))
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      result = ccmlkem_poly_reduce(a2 + 2 * (v4 & 0xFFFFFF00));
      ++v5;
      v4 += 256;
    }

    while (v5 < *(v3 + 4));
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

int16x8_t *ccmlkem_polyvec_ntt_forward_cbd_eta2(int16x8_t *result, uint64_t a2)
{
  if (result->i32[1])
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      result = ccmlkem_ntt_forward_cbd_eta2((a2 + 2 * (v4 & 0xFFFFFF00)));
      ++v5;
      v4 += 256;
    }

    while (v5 < v3->u32[1]);
  }

  return result;
}

uint64_t ccmlkem_polyvec_basemul(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x29EDCA608];
  result = ccmlkem_ntt_basemul(a2, a3, a4);
  if (*(a1 + 4) >= 2u)
  {
    v9 = 1;
    v10 = 256;
    do
    {
      ccmlkem_ntt_basemul(v12, a3 + ((2 * v10) & 0x1FFFFFE00), a4 + ((2 * v10) & 0x1FFFFFE00));
      result = ccmlkem_poly_add(a2, a2, v12);
      ++v9;
      v10 += 256;
    }

    while (v9 < *(a1 + 4));
  }

  v11 = *MEMORY[0x29EDCA608];
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

uint64_t cczp_div2_ws(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = cczp_n(a2);
  v8 = *a4;
  v9 = cczp_prime(a2);
  v10 = ccn_cond_add(v7, v8 & 1, a3, a4, v9);
  result = ccn_shift_right(v7, a3, a3, 1);
  a3[v7 - 1] |= v10 << 63;
  return result;
}

__n64 ccmode_gcm_gf_mult_64(unint64_t *a1, unint64_t *a2, __n64 *a3)
{
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v4 = bswap64(a1[1]);
  v5 = bswap64(*a1);
  v6 = bswap64(a2[1]);
  v7 = bswap64(*a2);
  bmul64(v4, v6, &v25, &v26);
  bmul64(v5, v7, &v21, &v22);
  bmul64(v5 ^ v4, v7 ^ v6, &v23, &v24);
  *(&v9 + 1) = v21;
  *&v9 = v22 ^ v25 ^ v21 ^ v23;
  v8 = v9 >> 63;
  *(&v9 + 1) = v9;
  *&v9 = v22 ^ v24 ^ v26 ^ v25;
  v10 = v9 >> 63;
  *(&v9 + 1) = v9;
  *&v9 = v26;
  v11 = v9 >> 63;
  *(&v9 + 1) = v26 >> 63;
  *&v9 = 2 * v26;
  v12 = v9 >> 1;
  v13 = (v26 << 63) ^ (v26 << 58) ^ v11;
  *(&v9 + 1) = v11;
  *&v9 = 2 * v26;
  v14 = v9 >> 2;
  *(&v9 + 1) = v11;
  *&v9 = 2 * v26;
  v15 = v10 ^ v14 ^ v12 ^ (v9 >> 7);
  v16 = v8 ^ (v13 >> 2) ^ (v13 >> 1) ^ (v13 >> 7) ^ v13;
  LODWORD(v8) = v15 ^ (2 * v26);
  *(&v9 + 1) = v16;
  *&v9 = v15 ^ (2 * v26);
  v17 = v9 >> 56;
  *(&v9 + 1) = v16;
  v18 = v9 >> 48;
  *(&v9 + 1) = v16;
  v19 = v9 >> 40;
  *(&v9 + 1) = v16;
  v27.val[3].i64[0] = v9 >> 32;
  v27.val[2].i64[0] = v19;
  v27.val[1].i64[0] = v18;
  v27.val[0].i64[0] = v17;
  a3[1].n64_u32[0] = vmovn_s16(vqtbl4q_s8(v27, xmmword_299CF66E0)).u32[0];
  a3[1].n64_u8[4] = BYTE3(v8);
  a3[1].n64_u8[5] = BYTE2(v8);
  a3[1].n64_u8[6] = BYTE1(v8);
  result.n64_u8[0] = HIBYTE(v16);
  result.n64_u8[1] = BYTE6(v16);
  result.n64_u8[2] = BYTE5(v16);
  result.n64_u8[3] = BYTE4(v16);
  result.n64_u8[4] = BYTE3(v16);
  result.n64_u8[5] = BYTE2(v16);
  a3[1].n64_u8[7] = v8;
  result.n64_u8[6] = BYTE1(v16);
  result.n64_u8[7] = v16;
  a3->n64_u64[0] = result.n64_u64[0];
  return result;
}

unint64_t bmul64(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v4 = a1 & 0x1084210842108421;
  v5 = a2 & 0x1084210842108421;
  v6 = ((a2 & 0x1084210842108421) * (a1 & 0x1084210842108421)) >> 64;
  v7 = (a2 & 0x1084210842108421) * (a1 & 0x1084210842108421);
  v8 = a1 & 0x2108421084210842;
  v9 = a2 & 0x842108421084210;
  v10 = ((a2 & 0x842108421084210) * (a1 & 0x2108421084210842)) >> 64;
  v11 = (a2 & 0x842108421084210) * (a1 & 0x2108421084210842);
  v12 = a1 & 0x4210842108421084;
  v13 = a2 & 0x8421084210842108;
  v14 = (a2 & 0x8421084210842108) * (a1 & 0x4210842108421084);
  v15 = a2 & 0x2108421084210842;
  v16 = a2 & 0x4210842108421084;
  v17 = a1 & 0x8421084210842108;
  v18 = a1 & 0x842108421084210;
  v19 = (v6 ^ v10 ^ ((v13 * (a1 & 0x4210842108421084)) >> 64) ^ ((v16 * v17) >> 64) ^ ((v15 * v18) >> 64)) & 0x2108421084210842 | (((v15 * v4) >> 64) ^ ((v5 * v8) >> 64) ^ ((v9 * v12) >> 64) ^ ((v13 * v17) >> 64) ^ ((v16 * v18) >> 64)) & 0x4210842108421084 | (((v16 * v4) >> 64) ^ ((v15 * v8) >> 64) ^ ((v5 * v12) >> 64) ^ ((v9 * v17) >> 64) ^ ((v13 * v18) >> 64)) & 0x421084210842108 | (((v13 * v4) >> 64) ^ ((v16 * v8) >> 64) ^ ((v15 * v12) >> 64) ^ ((v5 * v17) >> 64) ^ ((v9 * v18) >> 64)) & 0x842108421084210;
  result = (v7 ^ v11 ^ v14 ^ (v16 * (a1 & 0x8421084210842108)) ^ (v15 * (a1 & 0x842108421084210))) & 0x1084210842108421 | ((v15 * (a1 & 0x1084210842108421)) ^ (v5 * (a1 & 0x2108421084210842)) ^ (v9 * (a1 & 0x4210842108421084)) ^ (v13 * (a1 & 0x8421084210842108)) ^ (v16 * (a1 & 0x842108421084210))) & 0x2108421084210842 | ((v16 * (a1 & 0x1084210842108421)) ^ (v15 * (a1 & 0x2108421084210842)) ^ (v5 * (a1 & 0x4210842108421084)) ^ (v9 * (a1 & 0x8421084210842108)) ^ (v13 * (a1 & 0x842108421084210))) & 0x4210842108421084 | ((v13 * (a1 & 0x1084210842108421)) ^ (v16 * (a1 & 0x2108421084210842)) ^ (v15 * (a1 & 0x4210842108421084)) ^ (v5 * (a1 & 0x8421084210842108)) ^ (v9 * (a1 & 0x842108421084210))) & 0x8421084210842108;
  *a3 = v19 | (((v9 * v4) >> 64) ^ ((v13 * v8) >> 64) ^ ((v16 * v12) >> 64) ^ ((v15 * v17) >> 64) ^ ((v5 * v18) >> 64)) & 0x1084210842108421;
  *a4 = result | ((v9 * v4) ^ (v13 * v8) ^ (v16 * v12) ^ (v15 * v17) ^ (v5 * v18)) & 0x842108421084210;
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

uint64_t ccn_p256_mul_ws(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v10 = *(a1 + 16);
  v11 = (*(a1 + 24))(a1, 8);
  ccn_mul_ws(a1, 4uLL, v11, a4, a5);
  result = ccn_p256_redc_ws(a1, a2, a3, v11);
  *(a1 + 16) = v10;
  return result;
}

uint64_t ccn_p256_sqr_ws(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4)
{
  v8 = *(a1 + 16);
  v9 = (*(a1 + 24))(a1, 8);
  ccn_sqr_ws(a1, 4uLL, v9, a4);
  result = ccn_p256_redc_ws(a1, a2, a3, v9);
  *(a1 + 16) = v8;
  return result;
}

uint64_t ccn_p256_from_ws(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = *(a1 + 16);
  v9 = (*(a1 + 24))(a1, 8);
  ccn_set(4, v9, a4);
  ccn_zero(4, (v9 + 32));
  result = ccn_p256_redc_ws(a1, a2, a3, v9);
  *(a1 + 16) = v8;
  return result;
}

uint64_t ccn_p256_redc_ws(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = 0;
  v9 = a4[2];
  do
  {
    v10 = &a4[v8];
    v11 = a4[v8];
    v12 = a4[v8 + 1];
    v14 = __PAIR128__(v9, v12) + (v11 << 32);
    v13 = HIDWORD(v11) + *(&v14 + 1);
    v15 = __CFADD__(__CFADD__(v12, v11 << 32), v9) | __CFADD__(HIDWORD(v11), *(&v14 + 1));
    v17 = v15 - 0xFFFFFFFF * v11 + a4[v8 + 3];
    v16 = (__PAIR128__(__CFADD__(v15, 0xFFFFFFFF00000001 * v11) + ((v11 * 0xFFFFFFFF00000001) >> 64), v15 - 0xFFFFFFFF * v11) + a4[v8 + 3]) >> 64;
    v9 = v17;
    v10[2] = v13;
    v10[3] = v17;
    *v10 = v16;
    v10[1] = v14;
    ++v8;
  }

  while (v8 != 4);
  v18 = ccn_add_ws(a1, 4, a4 + 4, a4 + 4, a4);
  v19 = cczp_prime(a2);
  v20 = ccn_sub_ws(a1, 4, a4, a4 + 4, v19) ^ v18;

  return ccn_mux(4, v20, a3, a4 + 4, a4);
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
  v37 = *MEMORY[0x29EDCA608];
  v14 = timingsafe_enable_if_supported();
  v34 = v14;
  if (a6 && ((v15 = *a1, v16 = a6 / *a1, (v17 = a6 % *a1) == 0) ? (v18 = a6 / *a1) : (v18 = v16 + 1), !HIDWORD(v18)))
  {
    v22 = a3;
    v19 = 4294967289;
    if (a2 && v22 && a7)
    {
      v31 = v18;
      v32 = v17;
      v33 = &v30;
      v23 = (((a1[1] + ((a1[1] + a1[2] + 19) & 0xFFFFFFFFFFFFFFF8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x2A1C7C4A8](v14);
      v25 = (&v30 - v24);
      cchmac_init_internal(a1, (&v30 - v24), a2, v26);
      v27 = a1[1];
      __memcpy_chk();
      if (v15 <= a6)
      {
        v28 = 1;
        do
        {
          F_0(a1, v25, v35, v28++, a4, a5, a7);
          a7 += v15;
        }

        while (v28 <= v16);
      }

      v29 = v32;
      if (v32)
      {
        F_0(a1, v25, v35, v31, a4, a5, __src);
        memcpy(a7, __src, v29);
      }

      cc_clear(v15, __src);
      cc_clear(((a1[1] + a1[2] + 19) & 0xFFFFFFFFFFFFFFF8) + a1[1], v25);
      cc_clear(a1[1], v35);
      v19 = 0;
    }
  }

  else
  {
    v19 = 4294967289;
  }

  cc_disable_dit_with_sb(&v34);
  v20 = *MEMORY[0x29EDCA608];
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

  if ((ccn_cmp_internal(v8, a2, v9) & 0x80000000) == 0)
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
  *v8 &= ~1uLL;
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
  v4[1] = *MEMORY[0x29EDCA608];
  v4[0] = a2;
  result = ccder_sizeof_implicit_integer(a1, 1, v4);
  v3 = *MEMORY[0x29EDCA608];
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

uint64_t ccckg_owner_finish_derive_p(uint64_t a1, uint64_t a2, unint64_t **a3, uint64_t (**a4)(void, uint64_t, uint64_t *))
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
  v20[0] = v12;
  v13 = cczp_n(&v9[5 * *v7]);
  v14 = 26 * *v7;
  if (v13 > v14)
  {
    v14 = cczp_n(&v9[5 * *v7]);
  }

  v20[1] = v14;
  v20[2] = 0;
  v20[3] = cc_ws_alloc;
  v21 = cc_ws_free;
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
    cc_ws_free(v20);
  }

  else
  {
    v17 = **a3;
    cczp_add_ws(v20, &v9[5 * *v7]);
    pub_from_priv_ws = ccec_make_pub_from_priv_ws(v20, v7, a4, &a3[3 * **a3 + 2], 0, a3);
    v21(v20);
  }

  return pub_from_priv_ws;
}

uint64_t ccckg_owner_finish(uint64_t a1, size_t a2, char *a3, uint64_t a4, uint64_t a5, char *a6)
{
  v26 = *MEMORY[0x29EDCA608];
  v24 = timingsafe_enable_if_supported();
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
        v21 = ccckg_owner_finish_derive_p(a1, a3, a4, *(a1 + 24));
        if (v21)
        {
          v18 = v21;
        }

        else
        {
          v22 = &a3[(cczp_bitlen(&v14[5 * *v14 + 4]) + 7) >> 3];
          v23 = ccckg_ctx_cp(a1);
          v18 = ccckg_derive_sk(a1, (a4 + 16), v22, a1 + 40 + 8 * *v23, a5, a6);
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

  cc_disable_dit_with_sb(&v24);
  v19 = *MEMORY[0x29EDCA608];
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
  v29 = *MEMORY[0x29EDCA608];
  v26 = timingsafe_enable_if_supported();
  v11 = *(a1 + 8);
  v12 = &v27[v11];
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
      v17 = v27[i];
      v27[i] = v12[i];
      v12[i] = v17;
    }

    (*(a1 + 24))(a2, a3, 2, v27, a6);
  }

  else
  {
    v18 = v14 - v11;
    ecb_from_cbc_0(a1, a2, v27, v28);
    if (v14 - v11 < v11)
    {
      memcpy(&v27[v14], &v28[v18], 2 * v11 - v14);
    }

    (*(a1 + 24))(a2, a3, 1, &v27[v11], a6);
    if (v14 != v11)
    {
      v19 = (a6 + v11);
      v20 = v28;
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

  cc_disable_dit_with_sb(&v26);
  v24 = *MEMORY[0x29EDCA608];
  return a4;
}

uint64_t ecb_from_cbc_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 8);
  v9 = MEMORY[0x2A1C7C4A8](a1);
  v11 = v14 - v10;
  cccbc_set_iv_internal(v9, v14 - v10, 0);
  ccdrbg_generate_internal(a1, a2, v11, 1, a3, a4);
  result = cc_clear(v8, v11);
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void ccrsa_generate_prime_ws(uint64_t a1, unint64_t a2, void *a3, uint64_t *a4, unsigned int (**a5)(void, unint64_t, uint64_t), unsigned int (**a6)(void, unint64_t, uint64_t))
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

void *ccaes_ctr_crypt_mode()
{
  v0 = ccaes_ecb_encrypt_mode();
  ccmode_factory_ctr_crypt(ctr_crypt, v0);
  return ctr_crypt;
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
  v29 = *MEMORY[0x29EDCA608];
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
  v24 = *MEMORY[0x29EDCA608];
  return v21;
}

uint64_t done(char *__s)
{
  cc_clear(0x20uLL, __s);
  result = cc_clear(0x10uLL, __s + 32);
  *(__s + 6) = -1;
  return result;
}

uint64_t derive(uint64_t a1, void *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18[5] = *MEMORY[0x29EDCA608];
  v16 = &a9;
  if (a3)
  {
    v10 = a3;
    v11 = v18;
    v12 = a3;
    do
    {
      v13 = v16;
      *v11 = *v16;
      v16 += 2;
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

  result = ccdrbg_df_derive_keys(*(a1 + 80), v10, v17, *(a1 + 64) + 16, a2);
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t update(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x29EDCA608];
  v4 = ccctr_context_size(*(a1 + 56));
  MEMORY[0x2A1C7C4A8](v4);
  v6 = v11 - v5;
  inc_uint(a1 + 40, 8uLL);
  v7 = *(a1 + 64);
  ccctr_init_internal(*(a1 + 56));
  update_with_ctr(a1, v6, a2);
  v8 = ccctr_context_size(*(a1 + 56));
  result = cc_clear(v8, v6);
  v10 = *MEMORY[0x29EDCA608];
  return result;
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
  if (v21 > *a7)
  {
    goto LABEL_5;
  }

  *a7 = v21;
  ccn_write_uint_internal(v18, v20, v21, a6);
  v22 = ccrsa_ctx_private_zp(a1);
  v23 = ccrsa_ctx_private_zp(a1);
  v24 = cczp_n(v22 + 16 * *v23 + 32);
  v25 = ccrsa_ctx_private_zp(a1);
  v26 = ccrsa_ctx_private_zp(a1);
  v27 = cczp_prime(v25 + 16 * *v26 + 32);
  v28 = ccn_write_uint_size_public_value(v24, v27);
  if (v28 > *a9)
  {
    goto LABEL_5;
  }

  *a9 = v28;
  ccn_write_uint_internal(v24, v27, v28, a8);
  v29 = ccn_write_uint_size_public_value(v16, a1 + 3);
  if (v29 <= *a3 && (*a3 = v29, ccn_write_uint_internal(v16, a1 + 3, v29, a2), v30 = &a1[3 * *a1 + 3], v31 = ccn_write_uint_size_public_value(v16, (v30 + 8)), v31 <= *a5))
  {
    *a5 = v31;
    ccn_write_uint_internal(v16, v30 + 8, v31, a4);
    v32 = 0;
  }

  else
  {
LABEL_5:
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
  v14[2] = *MEMORY[0x29EDCA608];
  v13 = timingsafe_enable_if_supported();
  v14[0] = 0xAAAAAAAAAAAAAAAALL;
  v14[1] = 0xAAAAAAAAAAAAAAAALL;
  v10 = ccrsa_emsa_pkcs1v15_verify_canary_out(a1, a2, a3, a4, a5, v14);
  cc_disable_dit_with_sb(&v13);
  v11 = *MEMORY[0x29EDCA608];
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
  v29 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
LABEL_31:
    v14 = 0;
    goto LABEL_32;
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
      goto LABEL_31;
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
  v27 = *(a1 + 24);
  if (v27)
  {
    os_unfair_lock_unlock(v27);
  }

  cc_clear(a2, a3);
LABEL_32:
  v25 = *MEMORY[0x29EDCA608];
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
  v9[1] = *MEMORY[0x29EDCA608];
  v8 = timingsafe_enable_if_supported();
  v9[0] = a2;
  v7[0] = ccn_n(1uLL, v9);
  v7[1] = 0;
  v7[2] = 1;
  v7[3] = v9;
  v4 = ccz_cmp(a1, v7);
  cc_disable_dit_with_sb(&v8);
  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t ccxwing_mlkem768x25519_encapsulate_derand_internal(uint64_t a1, uint64_t a2, __int128 *a3, _OWORD *a4, uint64_t a5)
{
  v22 = *MEMORY[0x29EDCA608];
  if (a2 == 64)
  {
    __s = 0u;
    v21 = 0u;
    v9 = a3[3];
    v19[0] = a3[2];
    v19[1] = v9;
    pub_internal = cccurve25519_make_pub_internal(&__s, v19);
    if (!pub_internal)
    {
      memset(v18, 0, sizeof(v18));
      v11 = cccurve25519_assumes_dit_internal();
      if (v11)
      {
        pub_internal = v11;
        cc_clear(0x20uLL, &__s);
        v12 = v19;
      }

      else
      {
        pub_internal = ccmlkem_kem_encapsulate_msg(ccmlkem768_params, a1 + 8, v16, v17, a3);
        if (!pub_internal)
        {
          cckem_xwing_mlkem768x25519_combine(v17, v18, &__s, (a1 + 1192), a5);
          memcpy(a4, v16, 0x440uLL);
          v15 = v21;
          a4[68] = __s;
          a4[69] = v15;
          goto LABEL_9;
        }

        cc_clear(0x20uLL, &__s);
        cc_clear(0x20uLL, v19);
        v12 = v18;
      }

      cc_clear(0x20uLL, v12);
    }
  }

  else
  {
    pub_internal = 4294967289;
  }

LABEL_9:
  v13 = *MEMORY[0x29EDCA608];
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
  v17[1] = *MEMORY[0x29EDCA608];
  v10 = ccsha3_256_di();
  v11 = (v10[1] + v10[2] + 19) & 0xFFFFFFFFFFFFFFF8;
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v14 = (v17 - v13);
  ccdigest_init_internal(v12, (v17 - v13));
  ccdigest_update_internal(v10, v14, 0x20uLL, a1);
  ccdigest_update_internal(v10, v14, 0x20uLL, a2);
  ccdigest_update_internal(v10, v14, 0x20uLL, a3);
  ccdigest_update_internal(v10, v14, 0x20uLL, a4);
  ccdigest_update_internal(v10, v14, 6uLL, "\\.//^\");
  result = (v10[7])(v10, v14, a5);
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t cckem_xwing_mlkem768x25519_derive_key_from_seed(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x29EDCA608];
  ccshake256(0x20uLL, a2, 0x60uLL, v15);
  v4 = cckem_public_ctx(a1);
  v5 = (a1 + *(*a1 + 16) + 8);
  pub_internal = ccmlkem_kem_keypair_from_seed(ccmlkem768_params, (v4 + 8), v5, v15, &v16);
  if (!pub_internal)
  {
    pub_internal = cccurve25519_make_pub_internal(v4 + 1192, v17);
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
      v11 = v17[1];
      v5[150] = v17[0];
      v5[151] = v11;
      v12 = *(a2 + 16);
      v5[152] = *a2;
      v5[153] = v12;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return pub_internal;
}

uint64_t cckem_xwing_mlkem768x25519_decapsulate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = cckem_public_ctx();
  v7 = *(*a1 + 16);
  v8 = cckem_mlkem768();
  v9 = v8[10](a1, a2, __s);
  if (!v9)
  {
    memset(v12, 0, sizeof(v12));
    v9 = cccurve25519_assumes_dit_internal();
    if (v9)
    {
      cc_clear(0x20uLL, __s);
    }

    else
    {
      cckem_xwing_mlkem768x25519_combine(__s, v12, (a2 + 1088), (v6 + 1192), a3);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return v9;
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
  v15 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v6 = a2;
    do
    {
      --v6;
      v8 = *a3;
      v9 = a3[1];
      a3 += 2;
      v13 = bswap32(v8);
      v14 = bswap32(v9);
      desfunc(&v13, a1 + 128);
      v10 = bswap32(v14);
      *a4 = bswap32(v13);
      a4[1] = v10;
      a4 += 2;
    }

    while (v6);
  }

  v11 = *MEMORY[0x29EDCA608];
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
  v5[2] = *MEMORY[0x29EDCA608];
  v2 = *(*a1 + 56);
  if (v2[1] == 16)
  {
    v5[0] = 0;
    v5[1] = 0;
    cccmac_one_shot_generate_internal(v2, a1[1] >> 1, (a1 + 3), 0x10uLL, v5, 0x10uLL, a1 + 11);
    result = 0;
    a1[2] = 2;
  }

  else
  {
    result = 4294967226;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t fipspost_post_shake(char a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v15[0] = xmmword_299CFB7B0;
  v15[1] = unk_299CFB7C0;
  v14[0] = xmmword_299CFB7D0;
  v14[1] = unk_299CFB7E0;
  v13[0] = xmmword_299CFB7F0;
  v13[1] = unk_299CFB800;
  v12[0] = xmmword_299CFB810;
  v12[1] = unk_299CFB820;
  v10 = 0xA3A3A3A3A3A3A3A3;
  *&v1 = 0xA3A3A3A3A3A3A3A3;
  *(&v1 + 1) = 0xA3A3A3A3A3A3A3A3;
  v9[10] = v1;
  v9[11] = v1;
  v9[8] = v1;
  v9[9] = v1;
  v9[6] = v1;
  v9[7] = v1;
  v9[4] = v1;
  v9[5] = v1;
  v9[2] = v1;
  v9[3] = v1;
  v9[0] = v1;
  v9[1] = v1;
  if ((a1 & 0x10) != 0)
  {
    LOBYTE(v15[0]) = 126;
    LOBYTE(v14[0]) = 71;
    LOBYTE(v13[0]) = 18;
    LOBYTE(v12[0]) = -52;
  }

  ccshake128(0, v9, 0x20uLL, v11);
  if (cc_cmp_safe(32, v11, v15))
  {
    v2 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: SHAKE128, 0-bit message failed\n", v2, "fipspost_post_shake", 66);
    v3 = 4294967221;
  }

  else
  {
    v3 = 0;
  }

  ccshake256(0, v9, 0x20uLL, v11);
  if (cc_cmp_safe(32, v11, v14))
  {
    v4 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: SHAKE256, 0-bit message failed\n", v4, "fipspost_post_shake", 72);
    v3 = 4294967221;
  }

  ccshake128(0xC8uLL, v9, 0x20uLL, v11);
  if (cc_cmp_safe(32, v11, v13))
  {
    v5 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: SHAKE128, 1600-bit message failed\n", v5, "fipspost_post_shake", 78);
    v3 = 4294967221;
  }

  ccshake256(0xC8uLL, v9, 0x20uLL, v11);
  if (cc_cmp_safe(32, v11, v12))
  {
    v6 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: SHAKE256, 1600-bit message failed\n", v6, "fipspost_post_shake", 84);
    v3 = 4294967221;
  }

  v7 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t ccvrf_irtf_ed25519_hash2curve_elligator2(uint64_t a1, uint64_t a2, char *a3, size_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x29EDCA608];
  __src = 4;
  v16 = 1;
  v9 = ccvrf_irtf_ed25519_point_to_string(v20, a2);
  v10 = (((*(a1 + 8) + *(a1 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v15[-v11];
  ccdigest_init_internal(a1, &v15[-v11]);
  ccdigest_update_internal(a1, v12, 1uLL, &__src);
  ccdigest_update_internal(a1, v12, 1uLL, &v16);
  ccdigest_update_internal(a1, v12, 0x20uLL, v20);
  ccdigest_update_internal(a1, v12, a4, a3);
  (*(a1 + 56))(a1, v12, &v18);
  v19 &= ~0x80u;
  result = ge_from_uniform(a5, &v18);
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ccec_mult_blinded_ws(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (**a6)(void, uint64_t, uint64_t *))
{
  v18[1] = *MEMORY[0x29EDCA608];
  v10 = *a2;
  v11 = ccn_bitlen_internal(*a2, a4);
  if (v11 <= cczp_bitlen(a2))
  {
    v18[0] = 1;
    if (a6)
    {
      result = (*a6)(a6, 8, v18);
      if (result)
      {
        goto LABEL_12;
      }

      v13 = v18[0] | 0x80000000;
    }

    else
    {
      v13 = 2147483649;
    }

    v18[0] = v13;
    v14 = *(a1 + 16);
    (*(a1 + 24))(a1, 3 * v10);
    v15 = (*(a1 + 24))(a1, v10);
    ccn_mux_seed_mask(v18[0]);
    v18[0] = LODWORD(v18[0]);
    result = ccec_mult_ws(a1, a2);
    if (!result)
    {
      ccn_divmod_ws(a1, v10, a4, v10, v15, 1uLL, v17, v18);
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
  }

  else
  {
    result = 4294967289;
  }

LABEL_12:
  v16 = *MEMORY[0x29EDCA608];
  return result;
}