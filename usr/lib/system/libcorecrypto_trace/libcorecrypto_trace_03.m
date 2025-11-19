uint64_t ccckg2_contributor_finish(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, char *a5, void *a6, uint64_t a7, char *a8, uint64_t (**a9)(void, uint64_t, uint64_t *))
{
  v43 = timingsafe_enable_if_supported();
  v16 = ccckg2_ctx_cp(a1);
  v17 = *v16;
  v18 = sizeof_struct_cche_galois_key();
  v19 = sizeof_struct_ccpolyzp_po2cyc();
  v39[0] = cc_malloc_clear((v17 << 8) + 8 * ((v18 + v19 + 3 * v17 * v19 - 1) / v19));
  v20 = *v16;
  v21 = sizeof_struct_cche_galois_key();
  v22 = sizeof_struct_ccpolyzp_po2cyc();
  v39[1] = (v21 + v22 + 3 * v20 * v22 - 1) / v22 + 32 * v20;
  v40 = 0;
  v41 = cc_ws_alloc;
  v42 = cc_ws_free;
  if (v39[0])
  {
    v23 = ccckg2_ctx_cp(a1);
    if (*(a1 + 32) == 1)
    {
      if (*a1 == 2 && (v24 = v23, *a6 == v23) && (v25 = *v23, (((cczp_bitlen(v23) + 7) >> 1) & 0x7FFFFFFFFFFFFFFCLL | 2) == a2) && (v37 = v25, v26 = v24 + 4, v27 = cczp_bitlen(&v24[5 * *v24 + 4]) + 7, (((cczp_bitlen(v24) + 7) >> 2) | 1) + (v27 >> 3) == a4))
      {
        v28 = ccckg_contributor_finish_derive_p_ws(v39, a1, a3, a6, a9);
        if (v28)
        {
          v30 = v28;
        }

        else
        {
          v29 = cczp_bitlen(v24);
          v30 = ccckg2_derive_sk_ws(v39, a1, &a3[((v29 + 7) >> 2) | 1], a6, a7, a8, a9);
          if (!v30)
          {
            v31 = cczp_bitlen(&v26[5 * *v24]);
            ccn_write_uint_padded_internal(v37, (a1 + 40), (v31 + 7) >> 3, a5);
            v32 = &a5[(cczp_bitlen(&v26[5 * *v24]) + 7) >> 3];
            v33 = ccckg2_ctx_cp(a1);
            v34 = (a1 + 40 + 8 * *ccckg2_ctx_cp(a1) + 8 * *v33);
            v35 = cczp_bitlen(v24);
            memcpy(v32, v34, ((v35 + 7) >> 2) | 1);
            *(a1 + 32) = 3;
          }
        }

        v40 = 0;
        v42(v39);
      }

      else
      {
        v30 = 4294967289;
        cc_ws_free(v39);
      }
    }

    else
    {
      v30 = 4294967210;
      cc_ws_free(v39);
    }
  }

  else
  {
    v30 = 4294967283;
  }

  cc_disable_dit_with_sb(&v43);
  return v30;
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

unint64_t ccn_bitlen(uint64_t a1, uint64_t *a2)
{
  v6 = timingsafe_enable_if_supported();
  v4 = ccn_bitlen_public_value(a1, a2);
  cc_disable_dit_with_sb(&v6);
  return v4;
}

uint64_t ccofb_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = (*(a1 + 16))(a1, a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t ccofb_update(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = (*(a1 + 24))(a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t ccofb_one_shot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

  v40 = a3;
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
  v38 = 8 * v9;
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
    cc_clear(v38, v40);
    result = 4294967289;
  }

  *(a1 + 16) = v39;
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

uint64_t cczp_inv(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = timingsafe_enable_if_supported();
  v6 = cczp_n(a1);
  v9[0] = cc_malloc_clear(72 * v6);
  v9[1] = 9 * cczp_n(a1);
  v9[2] = 0;
  v9[3] = cc_ws_alloc;
  v10 = cc_ws_free;
  if (v9[0])
  {
    v7 = (*(*(a1 + 16) + 40))(v9, a1, a2, a3);
    v10(v9);
  }

  else
  {
    v7 = 4294967283;
  }

  cc_disable_dit_with_sb(&v11);
  return v7;
}

uint64_t ccdh_import_priv(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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

  v35 = v13;
  v14 = ccdh_gp_n(a1);
  v15 = sizeof_struct_ccrns_mul_modulus();
  v16 = sizeof_struct_ccpolyzp_po2cyc();
  v31[0] = cc_malloc_clear(8 * ((v15 + v16 - 1) / v16 + 12 * v14) + 8);
  v17 = ccdh_gp_n(a1);
  v18 = sizeof_struct_ccrns_mul_modulus();
  v19 = sizeof_struct_ccpolyzp_po2cyc();
  v31[1] = (v18 + v19 - 1) / v19 + 12 * v17 + 1;
  v32 = 0;
  v33 = cc_ws_alloc;
  v34 = cc_ws_free;
  if (v31[0])
  {
    v20 = ccdh_gp_n(a1);
    v21 = ccdh_gp_g(a1);
    v22 = ccdh_ctx_public(a4);
    ccdh_ctx_init(a1, v22);
    v24 = *a4;
    v23 = a4 + 2;
    v25 = &v23[ccdh_gp_n(v24)];
    if (ccn_read_uint_internal(v20, v25, a2, a3))
    {
      v26 = cc_ws_free;
      v27 = 4294967244;
    }

    else
    {
      v28 = cczp_prime(a1);
      if ((ccn_cmp_public_value(v20, v25, v28) & 0x80000000) != 0)
      {
        v29 = cczp_bitlen(a1);
        if (cczp_mm_power_ws(v31, a1, v23, v21, v29, v25))
        {
          v27 = 4294967250;
        }

        else
        {
          v27 = 0;
        }

        v26 = v34;
      }

      else
      {
        v26 = cc_ws_free;
        v27 = 4294967247;
      }
    }

    v32 = 0;
    v26(v31);
  }

  else
  {
    v27 = 4294967283;
  }

  cc_disable_dit(&v35);
  return v27;
}

uint64_t ccn_cmp_asm(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  if (result)
  {
    v3 = result;
    result = 0;
    do
    {
      v5 = *a2++;
      v4 = v5;
      v6 = *a3++;
      v7 = v4 >= v6;
      if (v4 > v6)
      {
        result = 1;
      }

      if (!v7)
      {
        result = -1;
      }
    }

    while (v3-- > 1);
  }

  return result;
}

uint64_t ccpolyzp_po2cyc_serialize_poly_nbytes(unsigned int *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  for (i = 0; i != v2; ++i)
  {
    v5 = a1;
    if (v2 - 1 > i)
    {
      v6 = v2 - 1;
      v5 = a1;
      do
      {
        v5 = *(v5 + 14);
        --v6;
      }

      while (v6 > i);
    }

    v3 += ((64 - a2 - __clz(*(v5 + 2))) * *a1 + 7) >> 3;
  }

  return v3;
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

uint64_t cchmac_init_internal(uint64_t a1, void *a2, size_t a3, char *a4)
{
  v5 = a3;
  if (*(a1 + 16) >= a3)
  {
    if (a3)
    {
      v10 = a2 + 1;
      v11 = a3;
      do
      {
        v12 = *a4++;
        *(v10 + *(a1 + 8)) = v12 ^ 0x5C;
        v10 = (v10 + 1);
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    ccdigest_init_internal(a1, a2);
    ccdigest_update_internal(a1, a2, v5, a4);
    v8 = a2 + 1;
    (*(a1 + 56))(a1, a2, a2 + *(a1 + 8) + 8);
    v5 = *a1;
    if (*a1)
    {
      v9 = *a1;
      do
      {
        *(v8 + *(a1 + 8)) ^= 0x5Cu;
        v8 = (v8 + 1);
        --v9;
      }

      while (v9);
    }
  }

  v13 = *(a1 + 16);
  if (v13 > v5)
  {
    memset(a2 + v5 + *(a1 + 8) + 8, 92, v13 - v5);
    v13 = *(a1 + 16);
  }

  memcpy(a2 + ((*(a1 + 8) + v13 + 19) & 0xFFFFFFFFFFFFFFF8), *(a1 + 40), *(a1 + 8));
  (*(a1 + 48))(a2 + ((*(a1 + 8) + *(a1 + 16) + 19) & 0xFFFFFFFFFFFFFFF8), 1, a2 + *(a1 + 8) + 8);
  if (*(a1 + 16))
  {
    v14 = 0;
    do
    {
      *(a2 + *(a1 + 8) + v14++ + 8) ^= 0x6Au;
    }

    while (v14 < *(a1 + 16));
  }

  memcpy(a2 + 1, *(a1 + 40), *(a1 + 8));
  result = (*(a1 + 48))(a2 + 1, 1, a2 + *(a1 + 8) + 8);
  v16 = *(a1 + 16);
  *(a2 + *(a1 + 8) + v16 + 8) = 0;
  *a2 = 8 * v16;
  return result;
}

uint64_t cchmac_init(uint64_t a1, void *a2, size_t a3, char *a4)
{
  v9 = timingsafe_enable_if_supported();
  cchmac_init_internal(a1, a2, a3, a4);
  return cc_disable_dit_with_sb(&v9);
}

uint64_t ccz_sub(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = timingsafe_enable_if_supported();
  v6 = ccz_n(a2);
  v7 = ccz_n(a3);
  v8 = ccz_sign(a2);
  if (v8 == ccz_sign(a3))
  {
    v9 = ccn_cmpn_internal(v6, *(a2 + 24), v7, *(a3 + 24));
    v10 = ccz_sign(a2);
    if (v9 < 0)
    {
      ccz_set_sign(a1, -v10);
      ccz_set_capacity(a1, v7);
      ccn_subn(v7, *(a1 + 24), *(a3 + 24), v6, *(a2 + 24));
      v6 = v7;
    }

    else
    {
      ccz_set_sign(a1, v10);
      ccz_set_capacity(a1, v6);
      ccn_subn(v6, *(a1 + 24), *(a2 + 24), v7, *(a3 + 24));
    }
  }

  else
  {
    v11 = ccz_sign(a2);
    ccz_set_sign(a1, v11);
    if (v6 >= v7)
    {
      v12 = v6 + 1;
      ccz_set_capacity(a1, v6 + 1);
      *(*(a1 + 24) + 8 * v6) = ccn_addn(v6, *(a1 + 24), *(a2 + 24), v7, *(a3 + 24));
    }

    else
    {
      v12 = v7 + 1;
      ccz_set_capacity(a1, v7 + 1);
      *(*(a1 + 24) + 8 * v7) = ccn_addn(v7, *(a1 + 24), *(a3 + 24), v6, *(a2 + 24));
    }

    v6 = v12;
  }

  v13 = ccn_n(v6, *(a1 + 24));
  ccz_set_n(a1, v13);
  return cc_disable_dit_with_sb(&v15);
}

uint64_t ccmlkem_poly_getnoise(uint64_t a1, _OWORD *a2, char a3)
{
  v5[16] = *MEMORY[0x29EDCA608];
  ccmlkem_prf(a2, a3, v5);
  ccmlkem_sample_cbd_eta2(a1, v5);
  return cc_clear(0x80uLL, v5);
}

BOOL ccec_is_point_projective_ws(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  v6 = (*(a1 + 24))(a1, *a2);
  v7 = (*(a1 + 24))(a1, v4);
  (*(a1 + 24))(a1, v4);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  result = ccn_cmp_public_value(v4, v7, v6) == 0;
  *(a1 + 16) = v5;
  return result;
}

uint64_t fipspost_post_pbkdf(char a1)
{
  v41 = *MEMORY[0x29EDCA608];
  memset(__s2, 0, 143);
  v2 = ccsha1_di();
  if (ccpbkdf2_hmac(v2, 88, "roAhfqRBzTqHATLXmmLLiQIyBUchpmcqrXWMWoztGqWZrEbqIZFKWphBFbGkoJmnRaqDXZaYMreSUJhWTLypGstb", 0x15uLL, "\x0E\xDD\x678Ί\x1F}\x97?#\xACpC\x1C\xBF\xD0\x54P0\x93", 0x371uLL, 0x8FuLL, __s2))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccpbkdf2_hmac (SHA-1): %d\n");
    return 4294967224;
  }

  if ((a1 & 0x10) != 0)
  {
    v4 = "\x01%\xE7\x18\xC0u=ъτS\x0E\xFE\xBB0\xB3\xD8\x65\xC5\x33\xED\x7A\xC4\xF90)\x130\xF5\x03\x46\x0DFiΡų\xB0x\xFC0YVs\n\\4p\x99\xAEe\x8B<.\v\xC8\x5D\x92\xEE\x26\x5B\x8CH\x8E\xAA\xC0\xB1>ѳv\xA9Q\x1F\xB0\x85\\\x9A\xD5\x29[c\x03|\n\xF8\x15\x05\xC0\xCF\x89\xC6\xEAG\x90\xED\xC3\x9E\x80\xD6\x18/\x82\xF3\x42\x50\x9Aէz\xCF\x76R\x0F\x97\x1C\xEA\x63\x4D\x8C#\xAA\xE1\xEA\xC2@%\x9F\xB4\xCE\x5F|^:\xF2\x88\x18\x32\xA9CZ";
  }

  else
  {
    v4 = "%\xE7\x18\xC0u=ъτS\x0E\xFE\xBB0\xB3\xD8\x65\xC5\x33\xED\x7A\xC4\xF90)\x130\xF5\x03\x46\x0DFiΡų\xB0x\xFC0YVs\n\\4p\x99\xAEe\x8B<.\v\xC8\x5D\x92\xEE\x26\x5B\x8CH\x8E\xAA\xC0\xB1>ѳv\xA9Q\x1F\xB0\x85\\\x9A\xD5\x29[c\x03|\n\xF8\x15\x05\xC0\xCF\x89\xC6\xEAG\x90\xED\xC3\x9E\x80\xD6\x18/\x82\xF3\x42\x50\x9Aէz\xCF\x76R\x0F\x97\x1C\xEA\x63\x4D\x8C#\xAA\xE1\xEA\xC2@%\x9F\xB4\xCE\x5F|^:\xF2\x88\x18\x32\xA9CZ";
  }

  if (!memcmp(v4, __s2, 0x8FuLL))
  {
    v39 = 0;
    memset(v38, 0, sizeof(v38));
    v5 = ccsha256_di();
    if (ccpbkdf2_hmac(v5, 34, "PpKpAmtfcDCPtAtwRMnHBueaQklIgpzLiH", 0x1CuLL, "\x8B\x81\xB8F\xFC{Љ}ivwoo\x1Be\xBF\xB9M\x92+fI-\\L\x8C\x82", 0x300uLL, 0x41uLL, v38))
    {
      mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccpbkdf2_hmac (SHA-256): %d\n");
      return 4294967224;
    }

    if ((a1 & 0x10) != 0)
    {
      v6 = "\x01p\xCC\x73\x87%\xA7\x13g\x1C\xE2\xA3\x632\x86\x9C9\x14\xC5\x21ø*\xB9t\x93RM~*\xD5\x2C\x03J\xA2\xFD\a\xF1\x01\x5B\x23E\x84q\xA4\x9E\xB72\xBB\xA9\xB0F\xB3\xF8\xF5\x90\x7C\xCF\x96\x9C\\v\xF7\x22\xFB\xBB";
    }

    else
    {
      v6 = "p\xCC\x73\x87%\xA7\x13g\x1C\xE2\xA3\x632\x86\x9C9\x14\xC5\x21ø*\xB9t\x93RM~*\xD5\x2C\x03J\xA2\xFD\a\xF1\x01\x5B\x23E\x84q\xA4\x9E\xB72\xBB\xA9\xB0F\xB3\xF8\xF5\x90\x7C\xCF\x96\x9C\\v\xF7\x22\xFB\xBB";
    }

    if (!memcmp(v6, v38, 0x41uLL))
    {
      memset(v37, 0, 319);
      v7 = ccsha512_di();
      if (ccpbkdf2_hmac(v7, 17, "SeiPcvDyiAvRsPPKX", 0x1CuLL, "\x1C\x1A+Ib\x97\xDE\x6D\xED\xAA\xE8~\xB2z\x04\b\x04\x9C\x13\xE8\xD2\x37\x03\x81\a\xD3\xCC\xA8", 0x244uLL, 0x13FuLL, v37))
      {
        mach_absolute_time();
        printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccpbkdf2_hmac (SHA-512): %d\n");
        return 4294967224;
      }

      if ((a1 & 0x10) != 0)
      {
        v8 = "\x01+\xAC\xA7o;\xB3t\xAE.\x15N\xAF\xC3\x0C\x97\x86\xC1\xD1[\xDD\x42\xCE\x65\xA5\xBD\a\xA1\xFAN\xAAI\bh\x1F~\x19\xCA\x3F(\xA8\x95\x8D\xD9\xCD\x7Fޟ\xEC\xDB\xF2\r\x8Dq\xF2\x0A\x23\x0Cr\x15\x8AE\xA1\xB0\xEC\x7F\x49\xF8ѡ\x9B\xFE\xD0\x31'+Izt{\b:Vhi\x9D\xE0\x10\x71ݰ\xDD\xE4/\a/\x0E]*4\x98\x17·\x11\b\x85-0\xF9P\x8B\x1913!T\xBE\\\x97\x03\x11\x0F\xE1\xFB\x4B\x7Fo\xC1\xB6\f\xDA\x25\xEB\xC2\xE5\xEC\x23\xCE.D#\xC7\xFE\xD6\xE2\xA5)=\xA8\xAF]3\xAD. \xE5\x9E\xDD/\x1E\xB7\xDD\xE4\x81\x1B\t\xB2s5\xE5\xFE\x318\xED\x5E\xC8~\xC3\x54\xADO\xE7\x07\x82\x10\x9Brb\xBF\x14\x1F\x0F\n\xAE\x14rǙ\xFF\xB6i\bCPT\xE1\xF6\x9B\xA1ne\x81\x96\xF5\xBE\x6D\x0F\x94\x91\xE5\x4C\x11\xCA\x0F\xAFx\xCE\x09*\xD0\x1C\xE9\x66\x1A\xAD\xA0\xC4\x4B\xD2\x6B\xFA\xB7u\xC4\x66|\xC8\xFEλ\xDE\xC2\xF9\xD8\x23˳\xC1\x4B\xDC\x49\xE9\x26\x08\xB4\xB4\xC3\x20\xC5\x63Wf(W\x89\xC7\x7B.\x13\xB9\xC8\xEA]5c\xDF\x20\x12l\x1B\xA1\\\x94Y\x19z\xA6\b\xB0\xF0\x46\xDC\x44\xAA/U]\x89\x8A\xE6\x4B\xAA\xDE\x1Aܞ\xB9#";
      }

      else
      {
        v8 = "+\xAC\xA7o;\xB3t\xAE.\x15N\xAF\xC3\x0C\x97\x86\xC1\xD1[\xDD\x42\xCE\x65\xA5\xBD\a\xA1\xFAN\xAAI\bh\x1F~\x19\xCA\x3F(\xA8\x95\x8D\xD9\xCD\x7Fޟ\xEC\xDB\xF2\r\x8Dq\xF2\x0A\x23\x0Cr\x15\x8AE\xA1\xB0\xEC\x7F\x49\xF8ѡ\x9B\xFE\xD0\x31'+Izt{\b:Vhi\x9D\xE0\x10\x71ݰ\xDD\xE4/\a/\x0E]*4\x98\x17·\x11\b\x85-0\xF9P\x8B\x1913!T\xBE\\\x97\x03\x11\x0F\xE1\xFB\x4B\x7Fo\xC1\xB6\f\xDA\x25\xEB\xC2\xE5\xEC\x23\xCE.D#\xC7\xFE\xD6\xE2\xA5)=\xA8\xAF]3\xAD. \xE5\x9E\xDD/\x1E\xB7\xDD\xE4\x81\x1B\t\xB2s5\xE5\xFE\x318\xED\x5E\xC8~\xC3\x54\xADO\xE7\x07\x82\x10\x9Brb\xBF\x14\x1F\x0F\n\xAE\x14rǙ\xFF\xB6i\bCPT\xE1\xF6\x9B\xA1ne\x81\x96\xF5\xBE\x6D\x0F\x94\x91\xE5\x4C\x11\xCA\x0F\xAFx\xCE\x09*\xD0\x1C\xE9\x66\x1A\xAD\xA0\xC4\x4B\xD2\x6B\xFA\xB7u\xC4\x66|\xC8\xFEλ\xDE\xC2\xF9\xD8\x23˳\xC1\x4B\xDC\x49\xE9\x26\x08\xB4\xB4\xC3\x20\xC5\x63Wf(W\x89\xC7\x7B.\x13\xB9\xC8\xEA]5c\xDF\x20\x12l\x1B\xA1\\\x94Y\x19z\xA6\b\xB0\xF0\x46\xDC\x44\xAA/U]\x89\x8A\xE6\x4B\xAA\xDE\x1Aܞ\xB9#";
      }

      if (!memcmp(v8, v37, 0x13FuLL))
      {
        if ((a1 & 0x10) != 0)
        {
          v9 = "\x01\xE1\x6F\xDB\x97\xD0\xD9\xE8\x91\xC4\xE0\x1A\xE95\xBF=Z@\x83\x87/\xD9\x06\x98;\x84\x03o\xAE>\x0F\xA0f";
        }

        else
        {
          v9 = "\xE1\x6F\xDB\x97\xD0\xD9\xE8\x91\xC4\xE0\x1A\xE95\xBF=Z@\x83\x87/\xD9\x06\x98;\x84\x03o\xAE>\x0F\xA0f";
        }

        if ((a1 & 0x10) != 0)
        {
          v10 = "\x01Z\xBC\x17C\xA8J\xE3\xDA\xAA\xF0\x70\x4B\xA6\xFF\xC9\x33{\x1F\x99\x14\xF7\xFA\xFC\x3F>o~\t\xEF\xD5\x31\x96";
        }

        else
        {
          v10 = "Z\xBC\x17C\xA8J\xE3\xDA\xAA\xF0\x70\x4B\xA6\xFF\xC9\x33{\x1F\x99\x14\xF7\xFA\xFC\x3F>o~\t\xEF\xD5\x31\x96";
        }

        if ((a1 & 0x10) != 0)
        {
          v11 = "\x01\x96\xBA\x8C\x13%\xBE~\x7Flb\x97*[\xB5\xCE\xD4\xFF\x8FȐ[\xA8\xAAez)\xAA\xC5\x23|ކ";
        }

        else
        {
          v11 = "\x96\xBA\x8C\x13%\xBE~\x7Flb\x97*[\xB5\xCE\xD4\xFF\x8FȐ[\xA8\xAAez)\xAA\xC5\x23|ކ";
        }

        v12 = ccsha3_224_di();
        if (ccpbkdf2_hmac(v12, 88, "roAhfqRBzTqHATLXmmLLiQIyBUchpmcqrXWMWoztGqWZrEbqIZFKWphBFbGkoJmnRaqDXZaYMreSUJhWTLypGstb", 0x15uLL, "\x0E\xDD\x678Ί\x1F}\x97?#\xACpC\x1C\xBF\xD0\x54P0\x93", 0x3E8uLL, 0x20uLL, &v33))
        {
          mach_absolute_time();
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccpbkdf2_hmac (SHA3-224): %d\n");
          return 4294967224;
        }

        v13 = "\x01\x16\xD1\x47C\x97\xE5\x2A\x54GD\xB6\xEC\x78\xB3r\x9As\xA0\x16<\x1F)}4[n\xD3\x51\xC5\x5C\xAC\xD3\x16\xD1\x47C\x97\xE5\x2A\x54GD\xB6\xEC\x78\xB3r\x9As\xA0\x16<\x1F)}4[n\xD3\x51\xC5\x5C\xAC\xD3\x01\xE1\x6F\xDB\x97\xD0\xD9\xE8\x91\xC4\xE0\x1A\xE95\xBF=Z@\x83\x87/\xD9\x06\x98;\x84\x03o\xAE>\x0F\xA0f";
        if ((a1 & 0x10) == 0)
        {
          v13 = "\x16\xD1\x47C\x97\xE5\x2A\x54GD\xB6\xEC\x78\xB3r\x9As\xA0\x16<\x1F)}4[n\xD3\x51\xC5\x5C\xAC\xD3\x01\xE1\x6F\xDB\x97\xD0\xD9\xE8\x91\xC4\xE0\x1A\xE95\xBF=Z@\x83\x87/\xD9\x06\x98;\x84\x03o\xAE>\x0F\xA0f";
        }

        v14 = *v13;
        v15 = *(v13 + 1);
        v17 = *(v13 + 2);
        v16 = *(v13 + 3);
        if (v14 == v33 && v15 == v34 && v17 == v35 && v16 == v36)
        {
          v21 = ccsha3_256_di();
          if (ccpbkdf2_hmac(v21, 88, "roAhfqRBzTqHATLXmmLLiQIyBUchpmcqrXWMWoztGqWZrEbqIZFKWphBFbGkoJmnRaqDXZaYMreSUJhWTLypGstb", 0x15uLL, "\x0E\xDD\x678Ί\x1F}\x97?#\xACpC\x1C\xBF\xD0\x54P0\x93", 0x3E8uLL, 0x20uLL, &v33))
          {
            mach_absolute_time();
            printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccpbkdf2_hmac (SHA3-256): %d\n");
            return 4294967224;
          }

          if (*v9 == v33 && *(v9 + 1) == v34 && *(v9 + 2) == v35 && *(v9 + 3) == v36)
          {
            v25 = ccsha3_384_di();
            if (ccpbkdf2_hmac(v25, 88, "roAhfqRBzTqHATLXmmLLiQIyBUchpmcqrXWMWoztGqWZrEbqIZFKWphBFbGkoJmnRaqDXZaYMreSUJhWTLypGstb", 0x15uLL, "\x0E\xDD\x678Ί\x1F}\x97?#\xACpC\x1C\xBF\xD0\x54P0\x93", 0x3E8uLL, 0x20uLL, &v33))
            {
              mach_absolute_time();
              printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccpbkdf2_hmac (SHA3-384): %d\n");
              return 4294967224;
            }

            if (*v10 == v33 && *(v10 + 1) == v34 && *(v10 + 2) == v35 && *(v10 + 3) == v36)
            {
              v29 = ccsha3_512_di();
              if (ccpbkdf2_hmac(v29, 88, "roAhfqRBzTqHATLXmmLLiQIyBUchpmcqrXWMWoztGqWZrEbqIZFKWphBFbGkoJmnRaqDXZaYMreSUJhWTLypGstb", 0x15uLL, "\x0E\xDD\x678Ί\x1F}\x97?#\xACpC\x1C\xBF\xD0\x54P0\x93", 0x3E8uLL, 0x20uLL, &v33))
              {
                mach_absolute_time();
                printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccpbkdf2_hmac (SHA3-512): %d\n");
                return 4294967224;
              }

              if (*v11 == v33 && *(v11 + 1) == v34 && *(v11 + 2) == v35 && *(v11 + 3) == v36)
              {
                return 0;
              }

              mach_absolute_time();
              printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed PBKDF_SHA3_512 KAT\n");
            }

            else
            {
              mach_absolute_time();
              printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed PBKDF_SHA3_384 KAT\n");
            }
          }

          else
          {
            mach_absolute_time();
            printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed PBKDF_SHA3_256 KAT\n");
          }
        }

        else
        {
          mach_absolute_time();
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed PBKDF_SHA3_224 KAT\n");
        }
      }

      else
      {
        mach_absolute_time();
        printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed PBKDF_SHA512 KAT\n");
      }
    }

    else
    {
      mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed PBKDF_SHA2 KAT\n");
    }
  }

  else
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed PBKDF_SHA1 KAT\n");
  }

  return 4294967221;
}

uint64_t ccecies_decrypt_gcm_setup(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int a6)
{
  v18 = timingsafe_enable_if_supported();
  *a1 = a2;
  *(a1 + 16) = a3;
  *(a1 + 28) = a5;
  *(a1 + 32) = a6;
  *(a1 + 24) = a4;
  v12 = ccrng(0);
  *(a1 + 8) = v12;
  if (v12)
  {
    if ((a5 - 17) >= 0xFFFFFFFB)
    {
      v13 = 0;
    }

    else
    {
      v13 = -5;
    }

    if (((1 << a4) & 0x101010000) != 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = -5;
    }

    if (a4 <= 0x20)
    {
      v15 = v14;
    }

    else
    {
      v15 = -5;
    }

    if (*(a3 + 8) == 78647)
    {
      v16 = v15;
    }

    else
    {
      v16 = 4294967291;
    }
  }

  else
  {
    v16 = 0xFFFFFFFFLL;
  }

  cc_disable_dit_with_sb(&v18);
  return v16;
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

uint64_t ccmldsa_compute_mu(_DWORD *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11[8] = *MEMORY[0x29EDCA608];
  v10[0] = 0;
  v10[1] = a6;
  v7 = *a1 == 1;
  v11[0] = a3;
  v11[1] = 64;
  v11[2] = v10;
  v11[3] = 2 * v7;
  if (v7)
  {
    v8 = a6;
  }

  else
  {
    v8 = 0;
  }

  v11[4] = a7;
  v11[5] = v8;
  v11[6] = a5;
  v11[7] = a4;
  return cckeccak_oneshot_iovec(4, v11, 0x40uLL, a2, 0x88uLL, 0x1Fu);
}

uint64_t ccmldsa_compute_c(uint64_t a1, void *a2, _OWORD *a3, uint64_t a4)
{
  v18 = *MEMORY[0x29EDCA608];
  permutation = cckeccak_get_permutation();
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  cckeccak_init_state(v15);
  v9 = a3[1];
  v17[0] = *a3;
  v17[1] = v9;
  v10 = a3[3];
  v17[2] = a3[2];
  v17[3] = v10;
  if (*(a1 + 4))
  {
    v11 = 0;
    v12 = 0;
    LODWORD(v13) = 64;
    do
    {
      ccmldsa_poly_simplebitpack_w1(v17 + v13, a4 + 4 * (v11 & 0xFFFFFF00));
      cckeccak_absorb_blocks(v15, 0x88uLL, 1, v17, permutation);
      v13 = (v13 - 8);
      __memmove_chk();
      ++v12;
      v11 += 256;
    }

    while (v12 < *(a1 + 4));
  }

  else
  {
    v13 = 64;
  }

  cckeccak_absorb_and_pad(v15, 136, v13, v17, 0x1Fu);
  cckeccak_squeeze(v15, 0x88uLL, *(a1 + 16) >> 2, a2, permutation);
  cc_clear(0xC8uLL, v15);
  return cc_clear(0xC0uLL, v17);
}

uint64_t ccwrap_auth_decrypt_withiv_internal(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, size_t *a5, char *a6, uint64_t a7)
{
  v11 = a3;
  v34 = *MEMORY[0x29EDCA608];
  v14 = ccwrap_unwrapped_size(a3);
  *a5 = v14;
  if (!ccwrap_argsvalid(a1, v14, v11))
  {
    cc_clear(0x10uLL, &v32);
    v25 = 4294967289;
    goto LABEL_9;
  }

  v31 = a7;
  v15 = v11 >> 3;
  v16 = (v11 >> 3) - 1;
  v32 = *a4;
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
        v32 ^= bswap64(v23);
        v33 = v24;
        (*(a1 + 24))(a2, 1, &v32, &v32);
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
  v25 = cc_cmp_safe_internal(8, &v32, v31);
  cc_clear(0x10uLL, &v32);
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

uint64_t ccwrap_auth_decrypt_withiv(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, size_t *a5, char *a6, uint64_t a7)
{
  v16 = timingsafe_enable_if_supported();
  v14 = ccwrap_auth_decrypt_withiv_internal(a1, a2, a3, a4, a5, a6, a7);
  cc_disable_dit_with_sb(&v16);
  return v14;
}

uint64_t fipspost_post_drbg_hmac(char a1)
{
  v23 = *MEMORY[0x29EDCA608];
  v22[0] = xmmword_299DAFBB0;
  v22[1] = unk_299DAFBC0;
  v20[1] = unk_299DAFBE0;
  v21 = xmmword_299DAFCF0;
  v19[1] = unk_299DAFC00;
  v20[0] = xmmword_299DAFBD0;
  v18[1] = unk_299DAFC20;
  v19[0] = xmmword_299DAFBF0;
  v17[1] = unk_299DAFC40;
  v18[0] = xmmword_299DAFC10;
  v16[1] = unk_299DAFC60;
  v17[0] = xmmword_299DAFC30;
  __s2[4] = xmmword_299DAFCB0;
  __s2[5] = unk_299DAFCC0;
  __s2[6] = xmmword_299DAFCD0;
  __s2[7] = unk_299DAFCE0;
  v16[0] = xmmword_299DAFC50;
  __s2[0] = xmmword_299DAFC70;
  __s2[1] = unk_299DAFC80;
  __s2[2] = xmmword_299DAFC90;
  __s2[3] = unk_299DAFCA0;
  __s1[0] = 0;
  __s1[1] = 0;
  v13[0] = ccsha256_di();
  v13[1] = 0;
  ccdrbg_factory_nisthmac(fipspost_post_drbg_hmac_info, v13);
  v11[0] = cc_malloc_clear((fipspost_post_drbg_hmac_info[0] + 7) & 0xFFFFFFFFFFFFFFF8);
  v11[1] = (fipspost_post_drbg_hmac_info[0] + 7) >> 3;
  v11[2] = 0;
  v11[3] = cc_ws_alloc;
  v12 = cc_ws_free;
  if (!v11[0])
  {
    return 4294967283;
  }

  v2 = cc_ws_alloc(v11, (fipspost_post_drbg_hmac_info[0] + 7) >> 3);
  if ((a1 & 0x10) != 0)
  {
    LOBYTE(__s2[0]) = -36;
  }

  v3 = ccdrbg_init(fipspost_post_drbg_hmac_info, v2, 32, v22, 16, &v21, 32, v20);
  v4 = ccdrbg_reseed(fipspost_post_drbg_hmac_info, v2, 32, v19, 32, v18);
  v5 = ccdrbg_generate(fipspost_post_drbg_hmac_info, v2, 128, __s1, 32, v17);
  v6 = ccdrbg_generate(fipspost_post_drbg_hmac_info, v2, 128, __s1, 32, v16) | v5 | v4 | v3;
  v7 = v6 != 0;
  if (!v6 && !memcmp(__s1, __s2, 0x80uLL))
  {
    v9 = 0;
  }

  else
  {
    v8 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: rc: %d\n", v8, "fipspost_post_drbg_hmac", 147, v7);
    v9 = 4294967224;
  }

  v12(v11);
  return v9;
}

uint64_t ccdigest_oid_lookup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

  v20 = v15;
  v19 = &a9;
  do
  {
    v16 = v19++;
    v17 = *v16;
  }

  while (*v16 && !ccoid_equal(*(v17 + 32), a1));
  cc_disable_dit(&v20);
  return v17;
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

uint64_t ccmlkem_indcpa_keypair(int16x4_t *a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v41 = *MEMORY[0x29EDCA608];
  v8 = a1->i32[1];
  v9 = v8 << 8;
  v10 = (v8 << 8) * v8;
  v11 = sizeof_struct_ccpolyzp_po2cyc();
  v12 = (v11 - 1 + 2 * v9) / v11;
  v35[0] = cc_malloc_clear(8 * (v12 + (v11 - 1 + 2 * v10) / v11) + 16 * v12);
  v13 = a1->i32[1];
  v14 = sizeof_struct_ccpolyzp_po2cyc();
  v15 = (v14 - 1 + 2 * (v13 << 8)) / v14;
  v35[1] = v15 + (v14 - 1 + 2 * ((v13 << 8) * v13)) / v14 + 2 * v15;
  v36 = 0;
  v37 = cc_ws_alloc;
  v38 = cc_ws_free;
  if (!v35[0])
  {
    return 4294967283;
  }

  v16 = cc_ws_alloc(v35, ((v13 * v13) << 6) & 0x3FFFFFC0);
  v17 = v37(v35, (a1->i32[1] & 0xFFFFFFLL) << 6);
  v18 = v37(v35, (a1->i32[1] & 0xFFFFFFLL) << 6);
  v19 = v37(v35, (a1->i32[1] & 0xFFFFFFLL) << 6);
  if (a1->i32[0] == 1)
  {
    ccmlkem_hash_g_append_k(a1, a4, v39);
  }

  else
  {
    ccmlkem_hash_g(32, a4, v39);
  }

  v20 = ccmlkem_sample_matrix(a1, v39, 0, v16);
  if (!v20)
  {
    ccmlkem_polyvec_getnoise(a1, v19, v40, 0);
    ccmlkem_polyvec_getnoise(a1, v17, v40, a1->u8[4]);
    ccmlkem_polyvec_ntt_forward_cbd_eta2(a1, v19);
    ccmlkem_polyvec_reduce(a1, v19);
    ccmlkem_polyvec_ntt_forward_cbd_eta2(a1, v17);
    LODWORD(v29) = a1->i32[1];
    if (v29)
    {
      v30 = 0;
      v31 = 0;
      do
      {
        ccmlkem_polyvec_basemul(a1, (v18 + 2 * v30), (v16 + 2 * v30 * v29), v19, v21, v22, v23, v24, v25, v26, v27, v28);
        ccmlkem_poly_toplant((v18 + 2 * v30));
        ++v31;
        v29 = a1->u32[1];
        v30 += 256;
      }

      while (v31 < v29);
    }

    ccmlkem_polyvec_add(a1, v18, v18, v17);
    ccmlkem_polyvec_reduce(a1, v18);
    ccmlkem_polyvec_encode(a1, a2, v18);
    v32 = v39[1];
    v33 = (a2 + (384 * a1->i32[1]));
    *v33 = v39[0];
    v33[1] = v32;
    ccmlkem_polyvec_encode(a1, a3, v19);
  }

  v36 = 0;
  cc_clear(0x40uLL, v39);
  v38(v35);
  return v20;
}

uint64_t ccmlkem_indcpa_decrypt_ws(uint64_t a1, int8x16_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, 64);
  v11 = (*(a1 + 24))(a1, 64);
  v12 = (*(a1 + 24))(a1, (a2->i32[1] & 0xFFFFFFLL) << 6);
  v13 = (*(a1 + 24))(a1, (a2->i32[1] & 0xFFFFFFLL) << 6);
  v14 = (32 * a2->i32[3] * a2->i32[1]);
  ccmlkem_polyvec_decompress(a2, v12, a4);
  ccmlkem_poly_decompress(a2, v10, a4 + v14);
  ccmlkem_polyvec_decode(a2, v13, a3);
  ccmlkem_polyvec_ntt_forward(a2, v12);
  ccmlkem_polyvec_basemul(a2, v11, v13, v12, v15, v16, v17, v18, v19, v20, v21, v22);
  ccmlkem_ntt_inverse(v11);
  ccmlkem_poly_sub(v11, v10, v11);
  ccmlkem_poly_reduce(v11);
  result = ccmlkem_poly_compress_d1(a5, v11);
  *(a1 + 16) = v24;
  return result;
}

uint64_t ccsrp_generate_server_S_ws(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = ccdh_gp_n(*(a2 + 8));
  v25 = *(a1 + 16);
  v9 = (*(a1 + 24))(a1, v8);
  v10 = (*(a1 + 24))(a1, v8);
  v11 = *(a2 + 8);
  v12 = a2 + 32;
  v13 = ccdh_gp_n(v11);
  v14 = cczp_mm_power_fast_ws(a1, v11, v9, a2 + 32 + 16 * v13, a4);
  if (v14)
  {
    v23 = v14;
LABEL_5:
    ccn_zero(v8, a3);
    goto LABEL_6;
  }

  cczp_mul_ws(a1, *(a2 + 8));
  private_key_bitlen = ccdh_generate_private_key_bitlen(*(a2 + 8));
  v16 = ccdh_gp_n(*(a2 + 8));
  v17 = ccdh_gp_n(*(a2 + 8));
  if (ccn_bitlen_internal(v16, v12 + 8 * v17) > private_key_bitlen)
  {
    private_key_bitlen = cczp_bitlen(*(a2 + 8));
  }

  v20 = a2 + 8;
  v18 = *(a2 + 8);
  v19 = *(v20 + 8);
  v21 = ccdh_gp_n(v18);
  ccdh_power_blinded_ws(a1, v19, v18, a3, v10, private_key_bitlen, v12 + 8 * v21);
  v23 = v22;
  if (v22)
  {
    goto LABEL_5;
  }

LABEL_6:
  *(a1 + 16) = v25;
  return v23;
}

uint64_t ccsrp_server_generate_public_key(uint64_t a1, unsigned int (**a2)(void, unint64_t, uint64_t), uint64_t a3, char *a4)
{
  v10 = timingsafe_enable_if_supported();
  public_key_internal = ccsrp_server_generate_public_key_internal(a1, a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return public_key_internal;
}

uint64_t ccsrp_server_generate_public_key_internal(uint64_t a1, unsigned int (**a2)(void, unint64_t, uint64_t), uint64_t a3, char *a4)
{
  v8 = ccdh_gp_n(*(a1 + 8));
  v9 = CCDH_POWER_BLINDED_WORKSPACE_N(v8);
  v22[0] = cc_malloc_clear(8 * (3 * v8 + v9));
  v22[1] = CCDH_POWER_BLINDED_WORKSPACE_N(v8) + 3 * v8;
  v23 = 0;
  v24 = cc_ws_alloc;
  v25 = cc_ws_free;
  if (!v22[0])
  {
    return 4294967283;
  }

  v10 = ccdh_gp_n(*(a1 + 8));
  v11 = cc_ws_alloc(v22, v10);
  v12 = a1 + 32 + 16 * ccdh_gp_n(*(a1 + 8));
  v13 = ccdh_gp_n(*(a1 + 8));
  v14 = ccdh_gp_n(*(a1 + 8));
  uint_internal = ccn_read_uint_internal(v13, v12, 8 * v14, a3);
  if (uint_internal || (*(a1 + 24) &= ~1u, v16 = *(a1 + 8), v17 = ccdh_gp_n(v16), ccdh_generate_private_key_ws(v22, v16, (a1 + 32 + 8 * v17), a2), uint_internal))
  {
    server_pubkey_ws = uint_internal;
  }

  else
  {
    if ((*(a1 + 24) & 0x1C0) == 0)
    {
      ccsrp_generate_k_ws(v22, a1, v11);
    }

    server_pubkey_ws = ccsrp_generate_server_pubkey_ws(v22, a1);
    if (!server_pubkey_ws)
    {
      ccdh_gp_n(*(a1 + 8));
      v19 = ccdh_gp_n(*(a1 + 8));
      v20 = ccdh_gp_n(*(a1 + 8));
      ccn_write_uint_padded_ct_internal(v19, (a1 + 32), 8 * v20, a4);
    }
  }

  v23 = 0;
  v25(v22);
  return server_pubkey_ws;
}

uint64_t ccsrp_server_compute_session(uint64_t *a1, char *a2, size_t a3, char *a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = ccsrp_server_compute_session_internal(a1, a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t ccsrp_server_compute_session_internal(uint64_t *a1, char *a2, size_t a3, char *a4, uint64_t a5)
{
  v10 = ccdh_gp_n(a1[1]);
  v11 = CCDH_POWER_BLINDED_WORKSPACE_N(v10);
  v23[0] = cc_malloc_clear(8 * (v11 + 4 * v10));
  v23[1] = CCDH_POWER_BLINDED_WORKSPACE_N(v10) + 4 * v10;
  v24 = 0;
  v25 = cc_ws_alloc;
  v26 = cc_ws_free;
  if (!v23[0])
  {
    return 4294967283;
  }

  v12 = ccdh_gp_n(a1[1]);
  v13 = a1 + 4;
  ccdh_gp_n(a1[1]);
  if (!ccn_n(v12, a1 + 4))
  {
    K_from_S_ws = 4294967237;
    cc_ws_free(v23);
    return K_from_S_ws;
  }

  v22 = a4;
  v14 = cc_ws_alloc(v23, v12);
  v15 = v25(v23, v12);
  v16 = ccdh_gp_n(a1[1]);
  v17 = ccdh_gp_n(a1[1]);
  v18 = ccdh_gp_n(a1[1]);
  uint_internal = ccn_read_uint_internal(v17, v14, 8 * v18, a5);
  if (!uint_internal)
  {
    cczp_mod_ws(v23, a1[1]);
    if (!ccn_n(v12, v15))
    {
      K_from_S_ws = 4294967238;
      goto LABEL_8;
    }

    ccdh_gp_n(a1[1]);
    ccsrp_generate_u_ws(v23, a1, v15, v14, a1 + 4);
    uint_internal = ccsrp_generate_server_S_ws(v23, a1, &v13[3 * v16], v15);
    if (!uint_internal)
    {
      K_from_S_ws = ccsrp_generate_K_from_S_ws(v23, a1, &v13[3 * v16]);
      if (!K_from_S_ws)
      {
        ccdh_gp_n(a1[1]);
        ccsrp_generate_M_ws(v23, a1, a2, a3, v22, v14, a1 + 4);
        ccsrp_generate_H_AMK_ws(v23, a1, v14);
      }

      goto LABEL_8;
    }
  }

  K_from_S_ws = uint_internal;
LABEL_8:
  v24 = 0;
  v26(v23);
  return K_from_S_ws;
}

uint64_t ccsrp_server_verify_session(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = timingsafe_enable_if_supported();
  v6 = ccsrp_sizeof_M_HAMK(*a1);
  v7 = ccdh_gp_n(*(a1 + 8));
  v8 = cc_cmp_safe_internal(v6, a1 + 32 + 32 * v7 + 2 * **a1, a2);
  v9 = *(a1 + 24);
  if (v8)
  {
    v10 = 0;
    *(a1 + 24) = v9 & 0xFFFFFFFE;
  }

  else
  {
    *(a1 + 24) = v9 & 0xFFFFFFFE | (v9 >> 2) & 1;
    if ((v9 >> 2))
    {
      v11 = a1 + 32 + 32 * ccdh_gp_n(*(a1 + 8));
      v12 = 3 * **a1;
      v13 = ccsrp_sizeof_M_HAMK(*a1);
      memcpy(a3, (v11 + v12), v13);
      v10 = *(a1 + 24) & 1;
    }

    else
    {
      v10 = 0;
    }
  }

  cc_disable_dit_with_sb(&v15);
  return v10;
}

uint64_t ccz_seti(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x29EDCA608];
  v6 = timingsafe_enable_if_supported();
  v7[0] = a2;
  v5[0] = ccn_n(1, v7);
  v5[1] = 0;
  v5[2] = 1;
  v5[3] = v7;
  ccz_set(a1, v5);
  return cc_disable_dit_with_sb(&v6);
}

void *ccspake_transcript_init(uint64_t a1)
{
  v2 = (**(a1 + 8))();

  return ccdigest_init_internal(v2, (a1 + 64));
}

unint64_t *ccspake_transcript_append(uint64_t a1, size_t a2, char *a3)
{
  v9[1] = *MEMORY[0x29EDCA608];
  v9[0] = a2;
  v6 = (**(a1 + 8))(a1, a2);
  result = ccdigest_update_internal(v6, (a1 + 64), 8uLL, v9);
  if (a2)
  {
    v8 = (**(a1 + 8))(result);
    return ccdigest_update_internal(v8, (a1 + 64), a2, a3);
  }

  return result;
}

unint64_t *ccspake_transcript_begin(uint64_t a1, size_t a2, char *a3, size_t a4, char *a5, size_t a6, char *a7)
{
  ccspake_transcript_append(a1, a2, a3);
  ccspake_transcript_append(a1, a4, a5);
  v12 = ccspake_transcript_append(a1, a6, a7);
  v13 = (*(*a1 + 8))(v12);
  v14 = *v13;
  v15 = *(*a1 + 24);
  ccspake_transcript_append_point(a1, v13, *(*a1 + 16), (*(*a1 + 16) + 8 * *v13));

  return ccspake_transcript_append_point(a1, v13, v15, &v15[v14]);
}

unint64_t *ccspake_transcript_append_point(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v14 = *MEMORY[0x29EDCA608];
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v11 = 4;
  v8 = cczp_bitlen(a2) + 7;
  v9 = *a2;
  ccn_write_uint_padded_internal(v9, a3, v8 >> 3, v12);
  ccn_write_uint_padded_internal(v9, a4, v8 >> 3, v12 + (v8 >> 3));
  return ccspake_transcript_append(a1, (v8 >> 2) | 1, &v11);
}

unint64_t *ccspake_transcript_append_scalar(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v6 = (cczp_bitlen(&a2[5 * *a2 + 4]) + 7) >> 3;
  ccn_write_uint_padded_internal(*a2, a3, v6, v8);
  return ccspake_transcript_append(a1, v6, v8);
}

uint64_t ccspake_transcript_finish(uint64_t a1, uint64_t a2)
{
  v4 = (**(a1 + 8))();
  (*(v4 + 56))(v4, a1 + 64, a2);
  v5 = *(v4 + 8) + *(v4 + 16) + 12;

  return cc_clear(v5, (a1 + 64));
}

uint64_t ccrsa_oaep_encode_parameter_ws(uint64_t a1, size_t *a2, uint64_t (**a3)(void, size_t, char *), uint64_t a4, char *a5, size_t a6, const void *a7, size_t a8, char *a9)
{
  v30 = *MEMORY[0x29EDCA608];
  v9 = a4 - 1;
  v10 = *a2;
  if (a4 - 1 > 2 * *a2 && v9 + ~(2 * v10) >= a6)
  {
    v20 = *a3;
    if (v10 > 0xB)
    {
      v12 = v20(a3, *a2, __src);
      if (v12)
      {
        return v12;
      }
    }

    else
    {
      v12 = v20(a3, 12, v28);
      __memcpy_chk();
      cc_clear(v10, v28);
      if (v12)
      {
        return v12;
      }
    }

    v25 = v9 - v10;
    v21 = (v9 - v10 + 7) >> 3;
    v27 = *(a1 + 16);
    v22 = (*(a1 + 24))(a1, v21);
    v26 = (*(a1 + 24))(a1, v21);
    ccn_zero(v21, v22);
    ccdigest_internal(a2, a8, a9, v22);
    v22[v25 + ~a6] = 1;
    memcpy(&v22[v25 - a6], a7, a6);
    ccmgf_internal(a2, v25, v26, *a2, __src);
    ccn_xor(v21, v22, v22, v26);
    ccmgf_internal(a2, *a2, v28, v25, v22);
    ccn_xor((*a2 + 7) >> 3, __src, __src, v28);
    v23 = ccrsa_block_start(a4, a5, 0);
    memmove(v23 + 1, __src, *a2);
    v24 = ccrsa_block_start(a4, a5, 1);
    *v24 = 0;
    memcpy(&v24[*a2 + 1], v22, v25);
    ccn_swap((a4 + 7) >> 3, a5);
    cc_clear(0x40uLL, __src);
    cc_clear(0x40uLL, v28);
    *(a1 + 16) = v27;
    return v12;
  }

  return 4294967273;
}

uint64_t ccrsa_oaep_encode_parameter_internal(size_t *a1, uint64_t (**a2)(void, size_t, char *), uint64_t a3, char *a4, size_t a5, const void *a6, size_t a7, char *a8)
{
  v16 = ((a3 + ~*a1 + 7) >> 2) & 0x3FFFFFFFFFFFFFFELL;
  v19[0] = cc_malloc_clear(8 * v16);
  v19[1] = v16;
  v19[2] = 0;
  v19[3] = cc_ws_alloc;
  v20 = cc_ws_free;
  if (!v19[0])
  {
    return 4294967283;
  }

  v17 = ccrsa_oaep_encode_parameter_ws(v19, a1, a2, a3, a4, a5, a6, a7, a8);
  v20(v19);
  return v17;
}

uint64_t ccrsa_oaep_encode_parameter(size_t *a1, uint64_t (**a2)(void, size_t, char *), uint64_t a3, char *a4, size_t a5, const void *a6, size_t a7, char *a8)
{
  v18 = timingsafe_enable_if_supported();
  v16 = ccrsa_oaep_encode_parameter_internal(a1, a2, a3, a4, a5, a6, a7, a8);
  cc_disable_dit_with_sb(&v18);
  return v16;
}

uint64_t ccder_encode_tag(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v4 = a2;
  v5 = a3;
  if (ccder_blob_encode_tag(&v4, a1))
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t ccder_encode_len(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v4 = a2;
  v5 = a3;
  if (ccder_blob_encode_len(&v4, a1))
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t ccder_encode_tl(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a3;
  v6 = a4;
  if (ccder_blob_encode_tl(&v5, a1, a2))
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t ccder_encode_body_nocopy(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v4[0] = 0;
  v4[1] = 0;
  v5 = a2;
  v6 = a3;
  if (ccder_blob_reserve(&v5, a1, v4))
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t ccder_encode_constructed_tl(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a3;
  v6 = a4;
  if (ccder_blob_encode_tl(&v5, a1, a2 - a4))
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t ccder_encode_oid(const void *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v4 = a2;
  v5 = a3;
  if (ccder_blob_encode_oid(&v4, a1))
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t ccder_encode_implicit_integer(unint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!a5)
  {
    return 0;
  }

  v6 = a4;
  v7 = a5;
  if (ccder_blob_encode_implicit_integer(&v6, a1, a2, a3))
  {
    return v7;
  }

  else
  {
    return 0;
  }
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

uint64_t ccder_encode_implicit_uint64(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a3;
  v6 = a4;
  if (ccder_blob_encode_implicit_uint64(&v5, a1, a2))
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t ccder_encode_uint64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v4 = a2;
  v5 = a3;
  if (ccder_blob_encode_uint64(&v4, a1))
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t ccder_encode_implicit_octet_string(unint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!a5)
  {
    return 0;
  }

  v6 = a4;
  v7 = a5;
  if (ccder_blob_encode_implicit_octet_string(&v6, a1, a2, a3))
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t ccder_encode_octet_string(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a3;
  v6 = a4;
  if (ccder_blob_encode_octet_string(&v5, a1, a2))
  {
    return v6;
  }

  else
  {
    return 0;
  }
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

uint64_t ccder_encode_raw_octet_string(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a3;
  v6 = a4;
  if (ccder_blob_encode_raw_octet_string(&v5, a1, a2))
  {
    return v6;
  }

  else
  {
    return 0;
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

uint64_t ccder_encode_eckey(uint64_t a1, uint64_t a2, const void *a3, unint64_t a4, const void *a5, uint64_t a6, uint64_t a7)
{
  v16 = timingsafe_enable_if_supported();
  if (a7)
  {
    v17 = a6;
    v18 = a7;
    if (ccder_blob_encode_eckey_internal(&v17, a1, a2, a3, a4, a5))
    {
      v14 = v18;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  cc_disable_dit_with_sb(&v16);
  return v14;
}

uint64_t ccder_encode_body(unint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a3;
  v6 = a4;
  if (ccder_blob_encode_body(&v5, a1, a2))
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

unsigned __int8 *ccder_decode_tag(unint64_t *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (!a2)
  {
    return 0;
  }

  v4[0] = a2;
  v4[1] = a3;
  if (ccder_blob_decode_tag(v4, a1))
  {
    return v4[0];
  }

  else
  {
    return 0;
  }
}

uint64_t ccder_decode_len(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v4[0] = a2;
  v4[1] = a3;
  if (ccder_blob_decode_len(v4, a1))
  {
    return v4[0];
  }

  else
  {
    return 0;
  }
}

uint64_t ccder_decode_len_strict(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v4[0] = a2;
  v4[1] = a3;
  if (ccder_blob_decode_len_strict(v4, a1))
  {
    return v4[0];
  }

  else
  {
    return 0;
  }
}

unsigned __int8 *ccder_decode_tl(uint64_t a1, unint64_t *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (!a3)
  {
    return 0;
  }

  v5[0] = a3;
  v5[1] = a4;
  if (ccder_blob_decode_tl(v5, a1, a2))
  {
    return v5[0];
  }

  else
  {
    return 0;
  }
}

unsigned __int8 *ccder_decode_tl_strict(uint64_t a1, unint64_t *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (!a3)
  {
    return 0;
  }

  v5[0] = a3;
  v5[1] = a4;
  if (ccder_blob_decode_tl_strict(v5, a1, a2))
  {
    return v5[0];
  }

  else
  {
    return 0;
  }
}

unsigned __int8 *ccder_decode_constructed_tl(uint64_t a1, unsigned __int8 **a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  *a2 = a3;
  if (!a3)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8[0] = a3;
  v8[1] = a4;
  if (!ccder_blob_decode_range(v8, a1, &v6))
  {
    return 0;
  }

  result = v6;
  *a2 = v7;
  return result;
}

unsigned __int8 *ccder_decode_constructed_tl_strict(uint64_t a1, unsigned __int8 **a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  *a2 = a3;
  if (!a3)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8[0] = a3;
  v8[1] = a4;
  if (!ccder_blob_decode_range_strict(v8, a1, &v6))
  {
    return 0;
  }

  result = v6;
  *a2 = v7;
  return result;
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

unsigned __int8 *ccder_decode_sequence_tl_strict(unsigned __int8 **a1, unsigned __int8 *a2, unsigned __int8 *a3)
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
  if (!ccder_blob_decode_sequence_tl_strict(v7, &v5))
  {
    return 0;
  }

  result = v5;
  *a1 = v6;
  return result;
}

unsigned __int8 *ccder_decode_uint_n(unint64_t *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (!a2)
  {
    return 0;
  }

  v4[0] = a2;
  v4[1] = a3;
  if (ccder_blob_decode_uint_n(v4, a1))
  {
    return v4[0];
  }

  else
  {
    return 0;
  }
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

unsigned __int8 *ccder_decode_uint_strict(unint64_t a1, void *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (!a3)
  {
    return 0;
  }

  v5[0] = a3;
  v5[1] = a4;
  if (ccder_blob_decode_uint_strict(v5, a1, a2))
  {
    return v5[0];
  }

  else
  {
    return 0;
  }
}

unsigned __int8 *ccder_decode_uint64(unint64_t *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (!a2)
  {
    return 0;
  }

  v4[0] = a2;
  v4[1] = a3;
  if (ccder_blob_decode_uint64(v4, a1))
  {
    return v4[0];
  }

  else
  {
    return 0;
  }
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

unsigned __int8 *ccder_decode_seqii_strict(unint64_t a1, void *a2, void *a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  if (!a4)
  {
    return 0;
  }

  v6[0] = a4;
  v6[1] = a5;
  if (ccder_blob_decode_seqii_strict(v6, a1, a2, a3))
  {
    return v6[0];
  }

  else
  {
    return 0;
  }
}

unsigned __int8 *ccder_decode_oid(unsigned __int8 **a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  *a1 = 0;
  if (!a2)
  {
    return 0;
  }

  v4[0] = a2;
  v4[1] = a3;
  if (ccder_blob_decode_oid(v4, a1))
  {
    return v4[0];
  }

  else
  {
    return 0;
  }
}

unsigned __int8 *ccder_decode_bitstring(void *a1, unint64_t *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (!a3)
  {
    return 0;
  }

  v7[0] = 0;
  v7[1] = 0;
  v8[0] = a3;
  v8[1] = a4;
  if (ccder_blob_decode_bitstring(v8, v7, a2))
  {
    *a1 = v7[0];
    return v8[0];
  }

  else
  {
    result = 0;
    *a2 = 0;
    *a1 = 0;
  }

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

unsigned __int8 *ccder_decode_eckey(unint64_t *a1, void *a2, void *a3, unsigned __int8 **a4, unint64_t *a5, void *a6, unsigned __int8 *a7, unsigned __int8 *a8)
{
  v18 = timingsafe_enable_if_supported();
  v20[0] = a7;
  v20[1] = a8;
  v19 = 0;
  if (ccder_blob_decode_eckey_internal(v20, a1, a2, a3, a4, &v19, a6, a5))
  {
    v16 = v20[0];
  }

  else
  {
    v16 = 0;
  }

  cc_disable_dit_with_sb(&v18);
  return v16;
}

uint64_t ccshake128(size_t a1, char *a2, size_t a3, char *a4)
{
  v10[48] = *MEMORY[0x29EDCA608];
  v8 = ccshake128_xi();
  ccxof_init(v8, v10);
  ccxof_absorb(v8, v10, a1, a2);
  ccxof_squeeze(v8, v10, a3, a4);
  return cc_clear(0x178uLL, v10);
}

uint64_t ccshake256(size_t a1, char *a2, size_t a3, char *a4)
{
  v10[44] = *MEMORY[0x29EDCA608];
  v8 = ccshake256_xi();
  ccxof_init(v8, v10);
  ccxof_absorb(v8, v10, a1, a2);
  ccxof_squeeze(v8, v10, a3, a4);
  return cc_clear(0x158uLL, v10);
}

uint64_t cckem_kyber768_generate_key(uint64_t a1, uint64_t (**a2)(void, uint64_t, _OWORD *))
{
  v4 = (cckem_public_ctx() + 8);
  v5 = (a1 + *(*a1 + 16) + 8);

  return ccmlkem_kem_keypair(cckyber768_params, v4, v5, a2);
}

unsigned __int8 *ccder_decode_rsa_pub_x509(uint64_t *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v9 = a3;
  v4 = ccder_decode_constructed_tl(0x2000000000000010, &v9, a2, a3);
  v10 = 0;
  v11 = v9;
  v5 = ccder_decode_constructed_tl(0x2000000000000010, &v11, v4, v9);
  if (v5)
  {
    v6 = ccder_decode_oid(&v10, v5, v11);
    if (v6)
    {
      v6 = ccder_decode_constructed_tl(5, &v11, v6, v11);
    }
  }

  else
  {
    v6 = 0;
  }

  v11 = v9;
  result = ccder_decode_constructed_tl(3, &v11, v6, v9);
  if (result)
  {
    v8 = result;
    if (result < v11 && !*result)
    {
      v8 = result + 1;
    }

    return ccder_decode_rsa_pub(a1, v8, v11);
  }

  return result;
}

BOOL ccder_blob_encode_body(void *a1, unint64_t a2, const void *a3)
{
  if (!a3)
  {
    return a2 == 0;
  }

  __dst[0] = 0;
  __dst[1] = 0;
  v5 = ccder_blob_reserve(a1, a2, __dst);
  if (v5)
  {
    memmove(__dst[0], a3, a2);
  }

  return v5;
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

uint64_t ccmode_ccm_decrypt(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a2 + 64);
  if (v9 == 4)
  {
    v10 = *(a2 + 72) != 0;
    *(a2 + 64) = 5;
LABEL_5:
    ccmode_ccm_crypt(a1, a2, a3, a4, a5);
    ccmode_ccm_macdata(a1, a2, v10, a3, a5);
    return 0;
  }

  if (v9 == 5)
  {
    v10 = 0;
    goto LABEL_5;
  }

  return 4294967228;
}

uint64_t ccz_write_radix_size(uint64_t a1, int a2)
{
  v9 = timingsafe_enable_if_supported();
  v4 = ccz_n(a1);
  v5 = ccz_sign(a1);
  if (a2 == 16 || a2 == 10)
  {
    if (ccz_is_zero(a1))
    {
      v6 = 1;
    }

    else
    {
      v7 = v5 >> 31;
      if (a2 == 16)
      {
        v6 = v7 + ((ccn_bitlen_internal(v4, *(a1 + 24)) + 3) >> 2);
      }

      else
      {
        v6 = ccz_write_radix_10(a1, 0, 0) + v7;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  cc_disable_dit_with_sb(&v9);
  return v6;
}

uint64_t ccz_write_radix_10(uint64_t a1, uint64_t a2, char *a3)
{
  v17 = 0u;
  v18 = 0u;
  ccz_init(*(a1 + 8), &v17);
  ccz_set(&v17, a1);
  v6 = ccz_n(&v17);
  v7 = ccn_n(v6, *(&v18 + 1));
  ccz_set_n(&v17, v7);
  v8 = &a3[a2];
  for (i = 0; !ccz_is_zero(&v17); ++i)
  {
    if (v8 && v8 <= a3)
    {
      break;
    }

    if ((ccz_cmpi(&v17, 0xAu) & 0x80000000) != 0)
    {
      v16 = **(&v18 + 1);
      ccz_zero(&v17);
      if (!v8)
      {
        continue;
      }
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      memset(v19, 0, sizeof(v19));
      ccz_init(*(&v17 + 1), &v20);
      ccz_init(*(&v17 + 1), v19);
      v11 = ccz_bitlen(&v17) - 4;
      ccz_set(&v20, &v17);
      ccz_zero(&v17);
      ccz_seti(v19, 10);
      ccz_lsl(v19, v19, v11);
      v12 = 0;
      v13 = v11;
      do
      {
        if ((ccz_cmp(&v20, v19) & 0x80000000) == 0)
        {
          ccz_sub(&v20, &v20, v19);
          ccz_set_bit(&v17, v13, 1u);
        }

        ccz_lsr(v19, v19, 1uLL);
        ++v12;
        --v13;
      }

      while (v12 <= v11);
      v14 = ccz_n(&v17);
      v15 = ccn_n(v14, *(&v18 + 1));
      ccz_set_n(&v17, v15);
      v16 = **(&v21 + 1);
      ccz_free(&v20);
      ccz_free(v19);
      if (!v8)
      {
        continue;
      }
    }

    *--v8 = DIGITS[v16];
  }

  if (v8 > a3)
  {
    memset(a3, 48, a2 - i);
  }

  ccz_free(&v17);
  return i;
}

uint64_t ccz_write_radix(uint64_t a1, uint64_t a2, char *a3, int a4)
{
  v18 = timingsafe_enable_if_supported();
  if (a4 != 16 && a4 != 10)
  {
    v8 = 4294967251;
    goto LABEL_20;
  }

  if (!a2)
  {
    goto LABEL_7;
  }

  if (!ccz_is_zero(a1) && (ccz_sign(a1) & 0x80000000) != 0)
  {
    if (!--a2)
    {
LABEL_7:
      v8 = 4294967289;
      goto LABEL_20;
    }

    *a3++ = 45;
  }

  if (a4 == 10)
  {
    ccz_write_radix_10(a1, a2, a3);
  }

  else
  {
    v9 = ccz_n(a1);
    v10 = ccn_bitlen_internal(v9, *(a1 + 24)) + 3;
    v11 = v10 >> 2;
    if (a2 >= 1 && v10 >= 4)
    {
      v12 = 0;
      v13 = &a3[a2 - 1];
      v14 = 1;
      v15 = v13;
      do
      {
        *v15-- = DIGITS[(*(*(a1 + 24) + (((v14 - 1) >> 1) & 0x7FFFFFFFFFFFFFF8)) >> (v12 & 0x3C)) & 0xFLL];
        if (v14 >= v11)
        {
          break;
        }

        ++v14;
        v12 += 4;
        v16 = v13 > a3;
        v13 = v15;
      }

      while (v16);
    }

    if (a2 > v11)
    {
      memset(a3, 48, a2 - v11);
    }
  }

  v8 = 0;
LABEL_20:
  cc_disable_dit_with_sb(&v18);
  return v8;
}

uint64_t ccascon_cmac_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = timingsafe_enable_if_supported();
  v12 = (*(a1 + 24))(a2, a3, a4, a5, a6);
  cc_disable_dit_with_sb(&v14);
  return v12;
}

uint64_t ccascon_cmac_process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 32))(a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ccascon_cmac_tag(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 40))(a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ccascon_cmac_verify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = (*(a1 + 48))(a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t ccascon_cmac_ref_tag(_OWORD *a1, uint64_t a2, unint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[2] = a1[2];
  ccascon_ascon128a_ref_pad(v7);
  ccascon_ascon128a_ref_finalize(v7, a2, a3);
  cc_clear(0x30uLL, v7);
  return 0;
}

uint64_t ccascon_cmac_ref_verify(_OWORD *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v12 = *MEMORY[0x29EDCA608];
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v10[2] = a1[2];
  ccascon_ascon128a_ref_pad(v10);
  ccascon_ascon128a_ref_finalize(v10, v11, a4);
  if (cc_cmp_safe_internal(a2, a3, v11))
  {
    v8 = 4294967294;
  }

  else
  {
    v8 = 0;
  }

  cc_clear(0x30uLL, v10);
  cc_clear(0x10uLL, v11);
  return v8;
}

uint64_t ccec_generate_key_fips(uint64_t *a1, uint64_t (**a2)(void, unint64_t, void *), uint64_t **a3)
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

uint64_t cc_log_default()
{
  if (qword_2A14EE970 != -1)
  {
    cc_log_default_cold_1();
  }

  return _MergedGlobals;
}

os_log_t cc_log_init(os_log_t *a1)
{
  result = os_log_create("com.apple.corecrypto", "default");
  *a1 = result;
  return result;
}

uint64_t ccsae_init_p384_sha384(void *a1, uint64_t a2)
{
  v4 = ccec_cp_384();
  v5 = ccsha384_di();
  ccsae_init(a1, v4, a2, v5);
  return 0;
}

uint64_t ccsae_init(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = ccsae_sizeof_ctx(a2);
  cc_clear(v8, a1);
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  *(a1 + 7) = 0;
  *(a1 + 24) = CCSAE_STATE_INIT;
  *(a1 + 25) = 40;
  v9 = SAE_HUNT_PECK_LABEL;
  a1[4] = SAE_KCK_PMK_LABEL[0];
  a1[5] = v9;
  return 0;
}

uint64_t ccsae_init_p256_sha256(void *a1, uint64_t a2)
{
  v4 = ccec_cp_256();
  v5 = ccsha256_di();
  ccsae_init(a1, v4, a2, v5);
  return 0;
}

uint64_t cch2c_map_to_curve_sswu_ws(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4)
{
  v7 = (*(a2 + 16))();
  v8 = cczp_n(v7);
  *a4 = v7;
  a4 += 2;
  v9 = &a4[*v7];
  v10 = &a4[2 * *v7];
  v20 = *(a1 + 16);
  v11 = (*(a1 + 24))(a1, v8);
  (*(a1 + 24))(a1, v8);
  v12 = (*(a1 + 24))(a1, v8);
  v18 = (*(a1 + 24))(a1, v8);
  v19 = *a3;
  ccn_seti(v8, v10, *(a2 + 12));
  cczp_to_ws(a1, v7);
  cczp_inv_ws(a1, v7);
  cczp_negate(v7, v10, v10);
  ccn_seti(v8, v9, 3);
  cczp_to_ws(a1, v7);
  cczp_inv_ws(a1, v7);
  cczp_mul_ws(a1, v7);
  cczp_negate(v7, v9, v9);
  cczp_to_ws(a1, v7);
  cczp_sqr_ws(a1, v7);
  cczp_mul_ws(a1, v7);
  cczp_sqr_ws(a1, v7);
  cczp_add_ws(a1, v7);
  v22 = *(a1 + 16);
  v13 = cczp_n(v7);
  v14 = ccn_n(v13, v12) == 0;
  cczp_inv_ws(a1, v7);
  ccn_cond_clear(v13, v14, v12);
  *(a1 + 16) = v22;
  v15 = ccn_n(v8, v12) == 0;
  ccn_seti(v8, a4, 1);
  cczp_to_ws(a1, v7);
  cczp_add_ws(a1, v7);
  ccn_mux(v8, v15, v12, v18, v12);
  cczp_mul_ws(a1, v7);
  cczp_sqr_ws(a1, v7);
  cczp_add_ws(a1, v7);
  cczp_mul_ws(a1, v7);
  cczp_add_ws(a1, v7);
  cczp_mul_ws(a1, v7);
  cczp_mul_ws(a1, v7);
  cczp_mul_ws(a1, v7);
  v16 = cczp_is_quadratic_residue_ws(a1, v7, v11) & 1;
  ccn_mux(v8, v16, a4, a4, v12);
  cczp_from_ws(a1, v7);
  ccn_mux(v8, v16, v10, v10, v11);
  cczp_sqrt_ws(a1, v7);
  cczp_from_ws(a1, v7);
  cczp_cond_negate(v7, (*v9 ^ v19) & 1, v9, v9);
  ccn_seti(v8, v10, 1);
  *(a1 + 16) = v20;
  return 0;
}

uint64_t map_to_curve_sswu(uint64_t a1, int *a2, uint64_t *a3)
{
  v13 = timingsafe_enable_if_supported();
  v6 = (*(a1 + 16))();
  v7 = cc_malloc_clear(144 * *v6);
  v8 = 18 * *v6;
  v11[0] = v7;
  v11[1] = v8;
  v11[2] = 0;
  v11[3] = cc_ws_alloc;
  v12 = cc_ws_free;
  if (v7)
  {
    cch2c_map_to_curve_sswu_ws(v11, a1, a2, a3);
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

uint64_t ccaes_vng_ccm_decrypt(uint64_t a1, int8x16_t *a2, unint64_t a3, int8x16_t *a4, int8x16_t *a5)
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
      ccmode_ccm_crypt(a1, a2, v12, a4, a5);
      ccmode_ccm_macdata(a1, a2, 0, v12, a5);
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
        ccm256_decrypt(a4, a5, a2 + 1, v13, (a1 + 8), a2, *(*a1 + 8) + ~a2[5].i32[0]);
        goto LABEL_23;
      }

      if (v14 == 192)
      {
LABEL_22:
        ccm192_decrypt(a4, a5, a2 + 1, v13, (a1 + 8), a2, *(*a1 + 8) + ~a2[5].i32[0]);
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
        ccmode_ccm_crypt(a1, a2, a3, a4, a5);
        ccmode_ccm_macdata(a1, a2, 0, a3, a5);
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

    ccm128_decrypt(a4, a5, a2 + 1, v13, (a1 + 8), a2, *(*a1 + 8) + ~a2[5].i32[0]);
    goto LABEL_23;
  }

  if (v10 == 5)
  {
    goto LABEL_6;
  }

  return 4294967228;
}

uint64_t fipspost_post_drbg_ctr(char a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if ((a1 & 0x10) != 0)
  {
    v1 = "\x01tz\xE6\x1F\x3D\xB31R\x9A\x13\xC3\x6D\xC6\xEB\xD2\xEF";
  }

  else
  {
    v1 = "tz\xE6\x1F\x3D\xB31R\x9A\x13\xC3\x6D\xC6\xEB\xD2\xEF";
  }

  v13 = 0;
  v14 = 0;
  v10 = ccaes_ctr_crypt_mode();
  v11 = xmmword_299DAFD50;
  DWORD2(v11) = 0;
  v12 = fipspost_post_drbg_ctr_df_ctx;
  ccdrbg_factory_nistctr(fipspost_post_drbg_ctr_info, &v10);
  v8[0] = cc_malloc_clear((fipspost_post_drbg_ctr_info[0] + 7) & 0xFFFFFFFFFFFFFFF8);
  v8[1] = (fipspost_post_drbg_ctr_info[0] + 7) >> 3;
  v8[2] = 0;
  v8[3] = cc_ws_alloc;
  v9 = cc_ws_free;
  if (v8[0])
  {
    v2 = cc_ws_alloc(v8, (fipspost_post_drbg_ctr_info[0] + 7) >> 3);
    v3 = ccaes_cbc_encrypt_mode();
    if (ccdrbg_df_bc_init(fipspost_post_drbg_ctr_df_ctx, v3, 0x10uLL))
    {
      mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccdrbg_df_bc_init\n");
    }

    else if (ccdrbg_init(fipspost_post_drbg_ctr_info, v2, 16, v1, 8, "\xFF\xBD\xDC\xDF\x7F\xDD\xCE\xA4", 16, "\xBD\x93\xC6\xD5k\a{\xF3\xCA\x13\x0C\xC3\xEF\xBF\xC7\x10"))
    {
      mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccdrbg_init\n");
    }

    else if (ccdrbg_reseed(fipspost_post_drbg_ctr_info, v2, 16, "4\x83.\xC3\x2B\x10Xɍr\xB0\xB6\x89\xA8\xDA\xE2", 16, "߱烂\xC8\xDB\xD7\xEF\x1A \v\x13g\x1A\xE2\x83.\xC3\x2B\x10Xɍr\xB0\xB6\x89\xA8\xDA\xE2"))
    {
      mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccdrbg_reseed\n");
    }

    else if (ccdrbg_generate(fipspost_post_drbg_ctr_info, v2, 16, &v13, 0, 0))
    {
      mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccdrbg_generate\n");
    }

    else if (ccdrbg_reseed(fipspost_post_drbg_ctr_info, v2, 16, "\xBE\xE1\x92\xEF&ݻ#j\xF8)\xD0\xC7\xD8\x49\xB7", 16, "ʃ\xD6\x45^\x98\xCD\x09\xD6\x65\x86\xE2\x63\x92m\xE6\xE1\x92\xEF&ݻ#j\xF8)\xD0\xC7\xD8\x49\xB7"))
    {
      mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccdrbg_reseed 2\n");
    }

    else
    {
      if (!ccdrbg_generate(fipspost_post_drbg_ctr_info, v2, 16, &v13, 0, 0))
      {
        if (v13 == 0xED42DA4BEFDD5852 && v14 == 0x87B07451F1579E49)
        {
          v4 = 0;
        }

        else
        {
          v7 = mach_absolute_time();
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: memcmp\n", v7, "fipspost_post_drbg_ctr", 116);
          v4 = 4294967221;
        }

        goto LABEL_19;
      }

      mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccdrbg_generate 2\n");
    }

    v4 = 4294967224;
LABEL_19:
    v9(v8);
    return v4;
  }

  return 4294967283;
}

uint64_t ccz_bitlen(void *a1)
{
  v4 = timingsafe_enable_if_supported();
  v2 = ccn_bitlen_internal(*a1, a1[3]);
  cc_disable_dit_with_sb(&v4);
  return v2;
}

BOOL ccn_add(_BOOL8 a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v12 = timingsafe_enable_if_supported();
  v10[0] = xmmword_2A201E228;
  v10[1] = *algn_2A201E238;
  v11 = off_2A201E248;
  v8 = ccn_add_asm(a1, a2, a3, a4);
  cc_ws_free_null(v10);
  cc_disable_dit_with_sb(&v12);
  return v8;
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

uint64_t ltc_des3_ecb_decrypt(uint64_t a1, uint64_t a2, unsigned int *a3, _DWORD *a4)
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
      desfunc3(&v12, a1 + 384);
      v10 = bswap32(v13);
      *a4 = bswap32(v12);
      a4[1] = v10;
      a4 += 2;
    }

    while (v6);
  }

  return 0;
}

uint64_t cccbc_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 16))(a1, a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t cccbc_copy_iv(void *a1, const void *a2, size_t a3)
{
  v7 = timingsafe_enable_if_supported();
  memcpy(a1, a2, a3);
  cc_disable_dit_with_sb(&v7);
  return 0;
}

uint64_t cccbc_clear_iv(void *a1, rsize_t a2)
{
  v5 = timingsafe_enable_if_supported();
  cc_clear(a2, a1);
  cc_disable_dit_with_sb(&v5);
  return 0;
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

uint64_t cccbc_set_iv(uint64_t a1, void *a2, void *a3)
{
  v7 = timingsafe_enable_if_supported();
  cccbc_set_iv_internal(a1, a2, a3);
  cc_disable_dit_with_sb(&v7);
  return 0;
}

uint64_t cccbc_update(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = timingsafe_enable_if_supported();
  v12 = (*(a1 + 24))(a2, a3, a4, a5, a6);
  cc_disable_dit_with_sb(&v14);
  return v12;
}

uint64_t cccbc_one_shot(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = timingsafe_enable_if_supported();
  if (fipspost_trace_is_active())
  {
    fipspost_trace_call("cccbc_one_shot");
  }

  if (a4)
  {
    v14 = *(a1 + 8);
  }

  else
  {
    v14 = 0;
  }

  v15 = cccbc_one_shot_explicit_internal(a1, a2, v14, *(a1 + 8), a5, a3, a4, a6, a7);
  cc_disable_dit_with_sb(&v17);
  return v15;
}

uint64_t cccbc_one_shot_explicit_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8, uint64_t a9)
{
  v26[1] = *MEMORY[0x29EDCA608];
  is_active = fipspost_trace_is_active();
  if (is_active)
  {
    is_active = fipspost_trace_call("cccbc_one_shot_explicit_internal");
  }

  if (*(a1 + 8) != a4 || a3 && a3 != a4)
  {
    return 4294967289;
  }

  v19 = MEMORY[0x2A1C7C4A8](is_active);
  v21 = v26 - v20;
  MEMORY[0x2A1C7C4A8](v19);
  v23 = v26 - v22;
  v24 = (*(a1 + 16))(a1, v21, a2, a6);
  if (v24)
  {
    return v24;
  }

  if (a7)
  {
    memcpy(v23, a7, *(a1 + 8));
  }

  else
  {
    cc_clear(*(a1 + 8), v23);
  }

  v18 = (*(a1 + 24))(v21, v23, a5, a8, a9);
  cc_clear(*a1, v21);
  return v18;
}

uint64_t cccbc_one_shot_explicit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8, uint64_t a9)
{
  v19 = timingsafe_enable_if_supported();
  v17 = cccbc_one_shot_explicit_internal(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  cc_disable_dit_with_sb(&v19);
  return v17;
}

uint64_t ccec_verify_composite_digest(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
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
    v14 = ccec_verify_composite_digest_ws(v16, a1, a2, a3, a4, a5, a6);
    v17(v16);
  }

  else
  {
    v14 = 4294967283;
  }

  cc_disable_dit_with_sb(&v18);
  return v14;
}

uint64_t ccec_verify_composite_msg(uint64_t *a1, unint64_t *a2, size_t a3, char *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v22 = *MEMORY[0x29EDCA608];
  v20 = timingsafe_enable_if_supported();
  v14 = cc_malloc_clear(376 * **a1);
  v15 = 47 * **a1;
  v18[0] = v14;
  v18[1] = v15;
  v18[2] = 0;
  v18[3] = cc_ws_alloc;
  v19 = cc_ws_free;
  if (v14)
  {
    ccdigest_internal(a2, a3, a4, v21);
    v16 = ccec_verify_composite_digest_ws(v18, a1, *a2, v21, a5, a6, a7);
    v19(v18);
  }

  else
  {
    v16 = 4294967283;
  }

  cc_disable_dit_with_sb(&v20);
  return v16;
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

uint64_t ccec_diversify_priv_twin(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (**a5)(void, uint64_t, uint64_t *), uint64_t **a6)
{
  v30 = timingsafe_enable_if_supported();
  v11 = *a1;
  v12 = 26 * *a1;
  v13 = sizeof_struct_ccpolyzp_po2cyc();
  v14 = (v13 + 127) / v13 + 4 * v11 + 3;
  if (v12 > v14)
  {
    v14 = v12;
  }

  v15 = cc_malloc_clear(8 * v14 + 16 * v11);
  v26[0] = v15;
  v16 = *a1;
  v17 = 26 * *a1;
  v18 = sizeof_struct_ccpolyzp_po2cyc();
  v19 = (v18 + 127) / v18 + 4 * v16 + 3;
  if (v17 > v19)
  {
    v19 = v17;
  }

  v26[1] = v19 + 2 * v16;
  v27 = 0;
  v28 = cc_ws_alloc;
  v29 = cc_ws_free;
  if (v15)
  {
    v20 = cc_ws_alloc(v26, v16);
    v21 = v28(v26, v16);
    pub_from_priv_ws = ccec_diversify_twin_scalars_ws(v26, a1, v20, v21, a3, a4);
    if (!pub_from_priv_ws)
    {
      v23 = &a1[5 * *a1];
      v24 = &a6[3 * **a6];
      cczp_mul_ws(v26, (v23 + 4));
      cczp_add_ws(v26, (v23 + 4));
      pub_from_priv_ws = ccec_make_pub_from_priv_ws(v26, a1, a5, (v24 + 2), 0, a6);
    }

    v27 = 0;
    v29(v26);
  }

  else
  {
    pub_from_priv_ws = 4294967283;
  }

  cc_disable_dit_with_sb(&v30);
  return pub_from_priv_ws;
}

uint64_t ccwrap_auth_encrypt(uint64_t a1, uint64_t a2, size_t a3, const void *a4, uint64_t *a5, void *a6)
{
  v14 = timingsafe_enable_if_supported();
  v15 = 0xA6A6A6A6A6A6A6A6;
  v12 = ccwrap_auth_encrypt_withiv_internal(a1, a2, a3, a4, a5, a6, &v15);
  cc_disable_dit_with_sb(&v14);
  return v12;
}

uint64_t ccder_encode_rsa_priv_internal(void *a1, uint64_t a2, uint64_t a3)
{
  v46[1] = *MEMORY[0x29EDCA608];
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

uint64_t ccder_encode_rsa_priv(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = timingsafe_enable_if_supported();
  v6 = ccder_encode_rsa_priv_internal(a1, a2, a3);
  cc_disable_dit_with_sb(&v8);
  return v6;
}

uint64_t ccz_read_radix(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v26 = timingsafe_enable_if_supported();
  if (a4 != 16 && a4 != 10)
  {
    v10 = 4294967251;
    goto LABEL_38;
  }

  if (!a2)
  {
LABEL_10:
    v10 = 4294967289;
    goto LABEL_38;
  }

  v8 = *a3;
  if (v8 == 45)
  {
    v9 = -1;
LABEL_9:
    if (--a2)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v9 = 1;
  if (v8 == 43)
  {
    goto LABEL_9;
  }

  while (v8 == 48)
  {
    --a2;
LABEL_12:
    v11 = *++a3;
    v8 = v11;
  }

  v12 = (4 * a2 + 63) >> 6;
  ccz_set_capacity(a1, v12);
  ccz_set_n(a1, v12);
  cc_clear(8 * v12, *(a1 + 24));
  ccz_set_sign(a1, v9);
  if (a4 == 10)
  {
    if (a2)
    {
      v13 = 67;
      while (1)
      {
        v14 = *a3;
        if ((v14 - 48) > 9)
        {
          break;
        }

        ++a3;
        ccn_mul1((v13 - 4) >> 6, *(a1 + 24), *(a1 + 24), 10);
        ccn_add1_ws(0, v13 >> 6, *(a1 + 24), *(a1 + 24), v14 & 0xF);
        v13 += 4;
        if (!--a2)
        {
          goto LABEL_19;
        }
      }

LABEL_37:
      v10 = 4294967252;
      goto LABEL_38;
    }

LABEL_19:
    v15 = ccz_n(a1);
    v16 = ccn_n(v15, *(a1 + 24));
    ccz_set_n(a1, v16);
  }

  else if (a2 >= 1)
  {
    v17 = 0;
    v18 = 0;
    v19 = &a3[a2];
    do
    {
      v21 = *--v19;
      v20 = v21;
      v22 = v21 & 0x47;
      if (v21 - 97 < 6)
      {
        v20 = v22;
      }

      if (v20 < 0x30)
      {
        goto LABEL_37;
      }

      if (v20 > 0x46 || (v20 - 58) < 7u)
      {
        goto LABEL_37;
      }

      if (v20 >= 0x3A)
      {
        v24 = -55;
      }

      else
      {
        v24 = -48;
      }

      *(*(a1 + 24) + ((v18++ >> 1) & 0x7FFFFFFFFFFFFFF8)) |= (v24 + v20) << (v17 & 0x3C);
      v17 += 4;
    }

    while (v19 > a3);
  }

  if (ccz_is_zero(a1))
  {
    ccz_set_sign(a1, 1);
  }

  v10 = 0;
LABEL_38:
  cc_disable_dit_with_sb(&v26);
  return v10;
}

void *ccn_mulmod_p224(void *a1, unint64_t *a2, unint64_t *a3)
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
  v83 = 0xFFFFFFFF00000000 * v13;
  v84 = -v13 >> 32;
  v19 = __CFADD__(__CFADD__(v13, -v13), v35);
  v85 = __CFADD__(v13, -v13) + v35;
  v87 = v19;
  v19 = __CFADD__(v19, v60);
  v86 = v87 + v60;
  v89 = v19;
  v19 = __CFADD__(v19, v75);
  v88 = v89 + v75;
  v19 |= __CFADD__(0xFFFFFFFF00000000 * v13, v88);
  v88 += 0xFFFFFFFF00000000 * v13;
  v90 = v19 + v84;
  v19 = v85 >= v83;
  v91 = v85 - v83;
  LOBYTE(v89) = v19;
  v19 = __CFSUB__(v86, v84, v19);
  v92 = v86 - (v84 + !v89);
  v93 = __PAIR128__(v90, v88) - !v19;
  v94 = 0xFFFFFFFF00000000 * v91;
  v95 = -v91 >> 32;
  v19 = __CFADD__(__CFADD__(v91, -v91), v92);
  v98 = __PAIR128__(v93, __CFADD__(v91, -v91)) + v92;
  v97 = v98 >> 64;
  v96 = v98;
  v100 = __CFADD__(v19, v93);
  v19 = __CFADD__(v100, v76);
  v99 = v100 + v76;
  v19 |= __CFADD__(0xFFFFFFFF00000000 * v91, v99);
  v99 += 0xFFFFFFFF00000000 * v91;
  v101 = v19 + v95;
  v19 = v96 >= v94;
  v102 = v96 - v94;
  LOBYTE(v100) = v19;
  v19 = __CFSUB__(v97, v95, v19);
  v103 = v97 - (v95 + !v100);
  v104 = __PAIR128__(v101, v99) - !v19;
  v105 = 0xFFFFFFFF00000000 * v102;
  v106 = -v102 >> 32;
  v19 = __CFADD__(__CFADD__(v102, -v102), v103);
  v109 = __PAIR128__(v104, __CFADD__(v102, -v102)) + v103;
  v108 = v109 >> 64;
  v107 = v109;
  v111 = __CFADD__(v19, v104);
  v19 = __CFADD__(v111, v78);
  v110 = v111 + v78;
  v19 |= __CFADD__(0xFFFFFFFF00000000 * v102, v110);
  v110 += 0xFFFFFFFF00000000 * v102;
  v112 = v19 + v106;
  v19 = v107 >= v105;
  v113 = v107 - v105;
  LOBYTE(v111) = v19;
  v19 = __CFSUB__(v108, v106, v19);
  v114 = v108 - (v106 + !v111);
  v115 = __PAIR128__(v112, v110) - !v19;
  v116 = 0xFFFFFFFF00000000 * v113;
  v117 = -v113 >> 32;
  v19 = __CFADD__(__CFADD__(v113, -v113), v114);
  v120 = __PAIR128__(v115, __CFADD__(v113, -v113)) + v114;
  v119 = v120 >> 64;
  v118 = v120;
  v122 = __CFADD__(v19, v115);
  v19 = __CFADD__(v122, v80);
  v121 = v122 + v80;
  v19 |= __CFADD__(0xFFFFFFFF00000000 * v113, v121);
  v121 += 0xFFFFFFFF00000000 * v113;
  v123 = v19 + v117;
  v19 = v118 >= v116;
  v124 = v118 - v116;
  LOBYTE(v122) = v19;
  v19 = __CFSUB__(v119, v117, v19);
  v125 = v119 - (v117 + !v122);
  v126 = __PAIR128__(v123, v121) - !v19;
  v127 = v126 + (__CFADD__(__CFADD__(*(&v93 + 1), v124), *(&v104 + 1)) | __CFADD__(v125, __CFADD__(*(&v93 + 1), v124) + *(&v104 + 1))) + *(&v115 + 1);
  v128 = v82 + (__CFADD__(__CFADD__(__CFADD__(*(&v93 + 1), v124), *(&v104 + 1)) | __CFADD__(v125, __CFADD__(*(&v93 + 1), v124) + *(&v104 + 1)), *(&v115 + 1)) | __CFADD__(v126, (__CFADD__(__CFADD__(*(&v93 + 1), v124), *(&v104 + 1)) | __CFADD__(v125, __CFADD__(*(&v93 + 1), v124) + *(&v104 + 1))) + *(&v115 + 1))) + *(&v126 + 1);
  v129 = *(&v93 + 1) + v124 - 1;
  v130 = v125 + __CFADD__(*(&v93 + 1), v124) + *(&v104 + 1) - ((*(&v93 + 1) + v124 == 0) - 0x100000000);
  v19 = __CFSUB__(v127, -1, __PAIR128__(v125 + __CFADD__(*(&v93 + 1), v124) + *(&v104 + 1), *(&v93 + 1) + v124) >= __PAIR128__(0xFFFFFFFF00000000, 1));
  v131 = v127 - ((__PAIR128__(v125 + __CFADD__(*(&v93 + 1), v124) + *(&v104 + 1), *(&v93 + 1) + v124) < __PAIR128__(0xFFFFFFFF00000000, 1)) - 1);
  LOBYTE(v122) = v19;
  v19 = __CFSUB__(v128, 0xFFFFFFFFLL, v19);
  v132 = v128 - (!v122 + 0xFFFFFFFFLL);
  v133 = 1 - !v19;
  v134 = 1 - !v19;
  v19 = __CFADD__(__CFADD__(v129, v133 >> 63), v130);
  v135 = __CFADD__(v129, v133 >> 63) + v130;
  v137 = v19 | __CFADD__(v133 & 0xFFFFFFFF00000000, v135);
  v19 = __CFADD__(v137, v131);
  v136 = v137 + v131;
  *a1 = v129 + (v133 >> 63);
  a1[1] = (v133 & 0xFFFFFFFF00000000) + v135;
  result = a1 + 2;
  *result = v133 + v136;
  result[1] = v134 + (v19 | __CFADD__(v133, v136)) + v132;
  return result;
}

uint64_t ccdes_cbc_cksum(unsigned int *a1, _DWORD *a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v23[1] = *MEMORY[0x29EDCA608];
  v20 = timingsafe_enable_if_supported();
  v23[0] = 0;
  if (ccdes_ltc_setup(0, v22, a5, a4))
  {
    v23[0] = 0xAAAAAAAAAAAAAAAALL;
    v12 = ccrng(0);
    if (v12)
    {
      (*v12)(v12, 8, v23);
    }
  }

  else
  {
    v13 = bswap32(*a6);
    v14 = bswap32(a6[1]);
    if (a3 >= 8)
    {
      do
      {
        v15 = *a1;
        v16 = a1[1];
        a1 += 2;
        LODWORD(v23[0]) = bswap32(v15) ^ v13;
        HIDWORD(v23[0]) = bswap32(v16) ^ v14;
        desfunc(v23, v22);
        v13 = v23[0];
        v14 = HIDWORD(v23[0]);
        a3 -= 8;
      }

      while (a3 > 7);
    }

    if (a3)
    {
      __memcpy_chk();
      cc_clear(8 - a3, v21 + a3);
      LODWORD(v23[0]) = bswap32(v21[0]) ^ v13;
      HIDWORD(v23[0]) = bswap32(v21[1]) ^ v14;
      desfunc(v23, v22);
    }
  }

  if (a2)
  {
    v17 = bswap32(HIDWORD(v23[0]));
    *a2 = bswap32(v23[0]);
    a2[1] = v17;
  }

  LODWORD(v23[0]) = 0;
  cc_clear(0x100uLL, v22);
  v18 = HIDWORD(v23[0]);
  cc_disable_dit_with_sb(&v20);
  return v18;
}

uint64_t ccz_read_uint(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = timingsafe_enable_if_supported();
  ccz_set_sign(a1, 1);
  ccz_set_capacity(a1, (a2 + 7) >> 3);
  ccn_read_uint_internal((a2 + 7) >> 3, a1[3], a2, a3);
  v6 = ccn_n((a2 + 7) >> 3, a1[3]);
  ccz_set_n(a1, v6);
  return cc_disable_dit_with_sb(&v8);
}

uint64_t ccmlkem_sample_matrix(uint64_t a1, _OWORD *a2, int a3, uint64_t a4)
{
  v30[21] = *MEMORY[0x29EDCA608];
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  if (*(a1 + 4))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = 0;
      do
      {
        cckeccak_init_state(v25);
        v10 = a2[1];
        v27[0] = *a2;
        v27[1] = v10;
        if (a3)
        {
          v28 = v7;
          v11 = v9;
        }

        else
        {
          v28 = v9;
          v11 = v7;
        }

        v29 = v11;
        cckeccak_absorb_and_pad(v25, 168, 0x22uLL, v27, 0x1Fu);
        v12 = (a4 + 2 * ((v9 + *(a1 + 4) * v7) << 8));
        cc_clear(0x200uLL, v12);
        v13 = 0;
        v14 = 0;
        do
        {
          permutation = cckeccak_get_permutation();
          cckeccak_squeeze(v25, 0xA8uLL, 0xA8uLL, v30, permutation);
          v16 = 0;
          v17 = v30 + 2;
          do
          {
            v18 = *(v17 - 1);
            v19 = *(v17 - 2) | ((v18 & 0xF) << 8);
            if (v19 <= 0xD00)
            {
              *(v12 + v14) = v19;
              if (v14 > 0xFE)
              {
                v14 = 256;
                goto LABEL_21;
              }

              ++v14;
            }

            v20 = (v18 >> 4) | (16 * *v17);
            if (v20 <= 0xD00)
            {
              *(v12 + v14++) = v20;
            }

            if (v16 > 0x36)
            {
              break;
            }

            ++v16;
            v17 += 3;
          }

          while (v14 < 0x100);
          if (v14 > 0xFF)
          {
            break;
          }
        }

        while (v13++ < 4);
LABEL_21:
        v8 += v14;
        ++v9;
        v22 = *(a1 + 4);
      }

      while (v9 < v22);
      ++v7;
    }

    while (v7 < v22);
  }

  else
  {
    v8 = 0;
  }

  cc_clear(0xC8uLL, v25);
  cc_clear(0xA8uLL, v30);
  if (v8 >= (*(a1 + 4) * *(a1 + 4)) << 8)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ccmlkem_sample_cbd_eta2(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = vdupq_n_s64(2uLL);
  v4 = vdupq_n_s64(8uLL);
  v5.i64[0] = 0x3000300030003;
  v5.i64[1] = 0x3000300030003;
  do
  {
    v6 = 0;
    v7 = vdupq_n_s64(((*(a2 + 8 * v2) >> 1) & 0x5555555555555555) + (*(a2 + 8 * v2) & 0x5555555555555555uLL));
    v8 = xmmword_299DA4C80;
    v9 = xmmword_299DA4C90;
    v10 = xmmword_299DA4CA0;
    v11 = xmmword_299DA4CB0;
    do
    {
      v12 = vshlq_n_s64(v9, 2uLL);
      v13 = vshlq_n_s64(v8, 2uLL);
      v14 = vshlq_n_s64(v11, 2uLL);
      v15 = vshlq_n_s64(v10, 2uLL);
      *(result + v6) = vsubq_s16(vandq_s8(vuzp1q_s16(vuzp1q_s32(vshlq_u64(v7, vnegq_s64(v13)), vshlq_u64(v7, vnegq_s64(v12))), vuzp1q_s32(vshlq_u64(v7, vnegq_s64(v15)), vshlq_u64(v7, vnegq_s64(v14)))), v5), vandq_s8(vuzp1q_s16(vuzp1q_s32(vshlq_u64(v7, vnegq_s64(vorrq_s8(v13, v3))), vshlq_u64(v7, vnegq_s64(vorrq_s8(v12, v3)))), vuzp1q_s32(vshlq_u64(v7, vnegq_s64(vorrq_s8(v15, v3))), vshlq_u64(v7, vnegq_s64(vorrq_s8(v14, v3))))), v5));
      v10 = vaddq_s64(v10, v4);
      v9 = vaddq_s64(v9, v4);
      v8 = vaddq_s64(v8, v4);
      v11 = vaddq_s64(v11, v4);
      v6 += 16;
    }

    while (v6 != 32);
    ++v2;
    result += 32;
  }

  while (v2 != 16);
  return result;
}

uint64_t ccec_twin_mult_ws(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v28[1] = *MEMORY[0x29EDCA608];
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

uint64_t cch2c_ws(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return cch2c_encode_to_curve_ws(a1, a2);
  }

  else
  {
    return 4294967289;
  }
}

uint64_t cch2c(uint64_t a1, uint64_t a2)
{
  v15 = timingsafe_enable_if_supported();
  v4 = (*(a1 + 16))();
  v5 = *v4;
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
    if (a2)
    {
      v11 = cch2c_encode_to_curve_ws(v13, a1);
      v14(v13);
    }

    else
    {
      v11 = 4294967289;
      cc_ws_free(v13);
    }
  }

  else
  {
    v11 = 4294967283;
  }

  cc_disable_dit_with_sb(&v15);
  return v11;
}

uint64_t ccmode_ctr_init(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 48);
  *a2 = v8;
  v9 = (*(v8 + 16))();
  (*(a1 + 32))(a1, a2, a5);
  return v9;
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
    v33 = (*(a1 + 24))(a1, v16);
    v35 = v20;
    memset(v33, 255, v20);
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
              ccn_write_uint_padded_ct_internal(v16, v37, v35, v33);
              cc_fault_canary_set(v36, &CCEC_FAULT_CANARY, v35, v34, v33);
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

void *ccaes_ecb_encrypt_mode()
{
  if (fipspost_trace_is_active())
  {
    fipspost_trace_call("ccaes_ecb_encrypt_mode");
  }

  return &ccaes_arm_ecb_encrypt_mode;
}

double deskey(uint64_t a1, int a2, _OWORD *a3)
{
  v3 = 0;
  v35 = *MEMORY[0x29EDCA608];
  do
  {
    v27[v3 + 56] = (bytebit[pc1[v3] & 7] & ~*(a1 + (pc1[v3] >> 3))) == 0;
    ++v3;
  }

  while (v3 != 56);
  for (i = 0; i != 16; ++i)
  {
    v5 = 0;
    v6 = 30 - 2 * i;
    if (a2 != 1)
    {
      v6 = 2 * i;
    }

    v7 = v6 | 1;
    v8 = &v27[4 * v6 + 112];
    *v8 = 0;
    v9 = totrot[i];
    do
    {
      v10 = v9 + v5;
      if ((v9 + v5) >= 0x1C)
      {
        v10 = v9 + v5 - 28;
      }

      v27[v5++] = v27[v10 + 56];
    }

    while (v5 != 28);
    for (j = 0; j != 28; ++j)
    {
      v12 = v9 + j;
      if ((v9 + j + 28) < 0x38)
      {
        v12 = v9 + j + 28;
      }

      v27[j + 28] = v27[v12 + 56];
    }

    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = &pc2;
    do
    {
      if (v27[*v16])
      {
        v15 |= bigbyte[v13];
        *v8 = v15;
      }

      if (v27[v16[24]])
      {
        v14 |= bigbyte[v13];
        *&v27[4 * v7 + 112] = v14;
      }

      ++v16;
      ++v13;
    }

    while (v13 != 24);
  }

  v17 = 0;
  do
  {
    v18 = &v27[v17 + 112];
    v19 = vld1_dup_f32(v18++);
    *&v18 = *v18;
    v20 = vdup_n_s32(v18);
    v21 = vand_s8(vshl_u32(v20, 0xFFFFFFFCFFFFFFFALL), 0x3F000000003FLL);
    v20.i32[0] = v18 >> 10;
    *(v28 + v17) = vorr_s8(vorr_s8(vorr_s8(vand_s8(vshl_u32(v19, 0xC0000000ALL), 0x3F000000003F0000), vand_s8(vshl_u32(v19, 0x1000000006), 0x3F00003F000000)), v21), vand_s8(v20, 0x3F00003F00));
    v17 += 8;
  }

  while (v17 != 128);
  v22 = v32;
  a3[4] = v31;
  a3[5] = v22;
  v23 = v34;
  a3[6] = v33;
  a3[7] = v23;
  v24 = v28[1];
  *a3 = v28[0];
  a3[1] = v24;
  result = *&v29;
  v26 = v30;
  a3[2] = v29;
  a3[3] = v26;
  return result;
}

unsigned int *desfunc(unsigned int *result, uint64_t a2)
{
  v2 = 0;
  v3 = result[1];
  v4 = (v3 ^ (*result >> 4)) & 0xF0F0F0F;
  v5 = v4 ^ v3;
  v6 = *result ^ (16 * v4);
  v7 = v5 ^ HIWORD(v6);
  v8 = v7 ^ v5;
  v9 = v6 ^ (v7 << 16);
  v10 = (v9 ^ (v8 >> 2)) & 0x33333333;
  v11 = v10 ^ v9;
  v12 = v8 ^ (4 * v10);
  v13 = (v11 ^ (v12 >> 8)) & 0xFF00FF;
  v14 = v13 ^ v11;
  v15 = __ROR4__(v12 ^ (v13 << 8), 31);
  v16 = (v14 ^ v15) & 0xAAAAAAAA;
  v17 = v16 ^ v15;
  HIDWORD(v19) = v16 ^ v14;
  LODWORD(v19) = v16 ^ v14;
  v18 = v19 >> 31;
  do
  {
    v20 = *(a2 + v2) ^ __ROR4__(v17, 4);
    v21 = *(a2 + v2 + 4) ^ v17;
    v18 ^= SP7[v20 & 0x3F] ^ SP5[(v20 >> 8) & 0x3F] ^ SP3[HIWORD(v20) & 0x3F] ^ SP1[HIBYTE(v20) & 0x3F] ^ SP8[v21 & 0x3F] ^ SP6[(v21 >> 8) & 0x3F] ^ SP4[HIWORD(v21) & 0x3F] ^ SP2[HIBYTE(v21) & 0x3F];
    v22 = *(a2 + v2 + 8) ^ __ROR4__(v18, 4);
    v23 = *(a2 + v2 + 12) ^ v18;
    v17 ^= SP7[v22 & 0x3F] ^ SP5[(v22 >> 8) & 0x3F] ^ SP3[HIWORD(v22) & 0x3F] ^ SP1[HIBYTE(v22) & 0x3F] ^ SP8[v23 & 0x3F] ^ SP6[(v23 >> 8) & 0x3F] ^ SP4[HIWORD(v23) & 0x3F] ^ SP2[HIBYTE(v23) & 0x3F];
    v2 += 16;
  }

  while (v2 != 128);
  v24 = (v18 ^ __ROR4__(v17, 1)) & 0xAAAAAAAA;
  v25 = v24 ^ v18;
  v27 = __PAIR64__(v24 ^ v18, __ROR4__(v17, 1));
  v26 = v24 ^ v27;
  LODWORD(v27) = v25;
  v28 = (v26 ^ ((v27 >> 1) >> 8)) & 0xFF00FF;
  v29 = v28 ^ v26;
  v30 = (v28 << 8) ^ __ROR4__(v25, 1);
  v31 = (v29 ^ (v30 >> 2)) & 0x33333333;
  v32 = v31 ^ v29;
  v33 = v30 ^ (4 * v31);
  v34 = v33 ^ HIWORD(v32);
  v35 = v34 ^ v33;
  v36 = v32 ^ (v34 << 16);
  v37 = (v35 ^ (v36 >> 4)) & 0xF0F0F0F;
  *result = v36 ^ (16 * v37);
  result[1] = v37 ^ v35;
  return result;
}

unsigned int *desfunc3(unsigned int *result, uint64_t a2)
{
  v2 = 0;
  v3 = result[1];
  v4 = (v3 ^ (*result >> 4)) & 0xF0F0F0F;
  v5 = v4 ^ v3;
  v6 = *result ^ (16 * v4);
  v7 = v5 ^ HIWORD(v6);
  v8 = v7 ^ v5;
  v9 = v6 ^ (v7 << 16);
  v10 = (v9 ^ (v8 >> 2)) & 0x33333333;
  v11 = v10 ^ v9;
  v12 = v8 ^ (4 * v10);
  v13 = (v11 ^ (v12 >> 8)) & 0xFF00FF;
  v14 = v13 ^ v11;
  v15 = __ROR4__(v12 ^ (v13 << 8), 31);
  v16 = (v14 ^ v15) & 0xAAAAAAAA;
  v17 = v16 ^ v15;
  HIDWORD(v19) = v16 ^ v14;
  LODWORD(v19) = v16 ^ v14;
  v18 = v19 >> 31;
  do
  {
    v20 = *(a2 + v2) ^ __ROR4__(v17, 4);
    v21 = *(a2 + v2 + 4) ^ v17;
    v18 ^= SP7[v20 & 0x3F] ^ SP5[(v20 >> 8) & 0x3F] ^ SP3[HIWORD(v20) & 0x3F] ^ SP1[HIBYTE(v20) & 0x3F] ^ SP8[v21 & 0x3F] ^ SP6[(v21 >> 8) & 0x3F] ^ SP4[HIWORD(v21) & 0x3F] ^ SP2[HIBYTE(v21) & 0x3F];
    v22 = *(a2 + v2 + 8) ^ __ROR4__(v18, 4);
    v23 = *(a2 + v2 + 12) ^ v18;
    v17 ^= SP7[v22 & 0x3F] ^ SP5[(v22 >> 8) & 0x3F] ^ SP3[HIWORD(v22) & 0x3F] ^ SP1[HIBYTE(v22) & 0x3F] ^ SP8[v23 & 0x3F] ^ SP6[(v23 >> 8) & 0x3F] ^ SP4[HIWORD(v23) & 0x3F] ^ SP2[HIBYTE(v23) & 0x3F];
    v2 += 16;
  }

  while (v2 != 128);
  v24 = 0;
  v25 = a2 + 128;
  do
  {
    v26 = *(v25 + v24) ^ __ROR4__(v18, 4);
    v27 = *(v25 + v24 + 4) ^ v18;
    v17 ^= SP7[v26 & 0x3F] ^ SP5[(v26 >> 8) & 0x3F] ^ SP3[HIWORD(v26) & 0x3F] ^ SP1[HIBYTE(v26) & 0x3F] ^ SP8[v27 & 0x3F] ^ SP6[(v27 >> 8) & 0x3F] ^ SP4[HIWORD(v27) & 0x3F] ^ SP2[HIBYTE(v27) & 0x3F];
    v28 = *(v25 + v24 + 8) ^ __ROR4__(v17, 4);
    v29 = *(v25 + v24 + 12) ^ v17;
    v18 ^= SP7[v28 & 0x3F] ^ SP5[(v28 >> 8) & 0x3F] ^ SP3[HIWORD(v28) & 0x3F] ^ SP1[HIBYTE(v28) & 0x3F] ^ SP8[v29 & 0x3F] ^ SP6[(v29 >> 8) & 0x3F] ^ SP4[HIWORD(v29) & 0x3F] ^ SP2[HIBYTE(v29) & 0x3F];
    v24 += 16;
  }

  while (v24 != 128);
  v30 = 0;
  v31 = a2 + 256;
  do
  {
    v32 = *(v31 + v30) ^ __ROR4__(v17, 4);
    v33 = *(v31 + v30 + 4) ^ v17;
    v18 ^= SP7[v32 & 0x3F] ^ SP5[(v32 >> 8) & 0x3F] ^ SP3[HIWORD(v32) & 0x3F] ^ SP1[HIBYTE(v32) & 0x3F] ^ SP8[v33 & 0x3F] ^ SP6[(v33 >> 8) & 0x3F] ^ SP4[HIWORD(v33) & 0x3F] ^ SP2[HIBYTE(v33) & 0x3F];
    v34 = *(v31 + v30 + 8) ^ __ROR4__(v18, 4);
    v35 = *(v31 + v30 + 12) ^ v18;
    v17 ^= SP7[v34 & 0x3F] ^ SP5[(v34 >> 8) & 0x3F] ^ SP3[HIWORD(v34) & 0x3F] ^ SP1[HIBYTE(v34) & 0x3F] ^ SP8[v35 & 0x3F] ^ SP6[(v35 >> 8) & 0x3F] ^ SP4[HIWORD(v35) & 0x3F] ^ SP2[HIBYTE(v35) & 0x3F];
    v30 += 16;
  }

  while (v30 != 128);
  v36 = (v18 ^ __ROR4__(v17, 1)) & 0xAAAAAAAA;
  v38 = __PAIR64__(v36 ^ v18, __ROR4__(v17, 1));
  v37 = v36 ^ v38;
  LODWORD(v38) = v36 ^ v18;
  v39 = (v37 ^ ((v38 >> 1) >> 8)) & 0xFF00FF;
  v40 = v39 ^ v37;
  v41 = (v39 << 8) ^ __ROR4__(v36 ^ v18, 1);
  v42 = (v40 ^ (v41 >> 2)) & 0x33333333;
  v43 = v42 ^ v40;
  v44 = v41 ^ (4 * v42);
  v45 = v44 ^ HIWORD(v43);
  v46 = v45 ^ v44;
  v47 = v43 ^ (v45 << 16);
  v48 = (v46 ^ (v47 >> 4)) & 0xF0F0F0F;
  *result = v47 ^ (16 * v48);
  result[1] = v48 ^ v46;
  return result;
}

uint64_t ccblowfish_ltc_ecb_decrypt(_DWORD *a1, uint64_t a2, unsigned int *a3, _BYTE *a4)
{
  if (a2)
  {
    v4 = a1 + 256;
    v5 = a1 + 512;
    v6 = a1 + 768;
    do
    {
      v7 = a1[1041] ^ bswap32(*a3);
      v8 = bswap32(a3[1]) ^ a1[1040];
      v9 = a1 + 1039;
      for (i = 19; i > 4; i -= 4)
      {
        v11 = (((v4[BYTE2(v7)] + a1[HIBYTE(v7)]) ^ v5[BYTE1(v7)]) + v6[v7]) ^ v8;
        v12 = *v9 ^ v7 ^ (((v4[BYTE2(v11)] + a1[HIBYTE(v11)]) ^ v5[BYTE1(v11)]) + v6[v11]);
        v13 = *(v9 - 1) ^ v11 ^ (((v4[BYTE2(v12)] + a1[HIBYTE(v12)]) ^ v5[BYTE1(v12)]) + v6[v12]);
        v7 = *(v9 - 2) ^ v12 ^ (((v4[BYTE2(v13)] + a1[HIBYTE(v13)]) ^ v5[BYTE1(v13)]) + v6[v13]);
        v8 = *(v9 - 3) ^ v13;
        v9 -= 4;
      }

      *a4 = HIBYTE(v8);
      a4[1] = BYTE2(v8);
      a4[2] = BYTE1(v8);
      a4[3] = v8;
      a4[4] = HIBYTE(v7);
      a4[5] = BYTE2(v7);
      a4[6] = BYTE1(v7);
      a4[7] = v7;
      a4 += 8;
      a3 += 2;
      --a2;
    }

    while (a2);
  }

  return 0;
}

uint64_t ccmode_cbc_decrypt(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x29EDCA608];
  v5 = a1 + 1;
  v6 = *a1;
  if (*(*a1 + 8) > 0x10uLL)
  {
    return 4294967289;
  }

  for (i = a3; i; a5 += v16)
  {
    (*(v6 + 24))(v5, 1, a4, v17);
    if (*(v6 + 8))
    {
      v12 = 0;
      do
      {
        v13 = *(a2 + v12);
        v14 = v17[v12];
        *(a2 + v12) = *(a4 + v12);
        *(a5 + v12++) = v14 ^ v13;
        v15 = *(v6 + 8);
      }

      while (v12 < v15);
    }

    else
    {
      v15 = 0;
    }

    if (--i)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    a4 += v16;
  }

  return 0;
}

int8x16_t *ccmode_xts_crypt(uint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2 + a3;
  if (v5 > 0x100000)
  {
    return 0;
  }

  v7 = a3;
  *a2 = v5;
  v6 = (a2 + 1);
  if (a3)
  {
    v10 = a1 + 2;
    v11 = *a1;
    do
    {
      ccn_xor(2, a5, a4, v6);
      (*(v11 + 24))(v10, 1, a5, a5);
      ccn_xor(2, a5, a5, v6);
      ccmode_xts_mult_alpha(v6);
      a4 += 16;
      a5 += 16;
      --v7;
    }

    while (v7);
  }

  return v6;
}

void *ccshake128_xi()
{
  if ((MEMORY[0xFFFFFC010] & 0x100000000) != 0)
  {
    return &ccxof_shake128_vng_arm64_hwassist_xi;
  }

  else
  {
    return &ccxof_shake128_vng_xi;
  }
}

uint64_t ccec_make_priv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t **a8)
{
  v21 = timingsafe_enable_if_supported();
  cp = ccec_get_cp(a1);
  *a8 = cp;
  v17 = a8 + 2;
  uint_internal = ccn_read_uint_internal(*cp, a8 + 2, a2, a3);
  if (uint_internal || (uint_internal = ccn_read_uint_internal(*cp, &v17[**a8], a4, a5), uint_internal))
  {
    v19 = uint_internal;
  }

  else
  {
    v19 = ccn_read_uint_internal(*cp, &v17[3 * **a8], a6, a7);
    if (!v19)
    {
      ccn_seti(*cp, &v17[2 * **a8], 1);
    }
  }

  cc_disable_dit_with_sb(&v21);
  return v19;
}

uint64_t ccsrp_generate_M_ws(uint64_t a1, size_t **a2, char *a3, size_t a4, char *a5, uint64_t *a6, uint64_t *a7)
{
  v27 = a6;
  v28 = a7;
  v25 = a4;
  v26 = a5;
  v30 = &v25;
  v35 = *MEMORY[0x29EDCA608];
  v10 = *a2;
  v11 = **a2;
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = (&v25 - v13);
  v16 = (*(v15 + 24) >> 10) & 1;
  v29 = *(v12 + 16);
  v17 = ccdh_gp_prime(*(v15 + 8));
  ccsrp_digest_ccn_ws(a1, a2, v17, v34, v16);
  v18 = ccdh_gp_g(a2[1]);
  ccsrp_digest_ccn_ws(a1, a2, v18, v33, v16);
  if (v11)
  {
    v19 = v11;
    do
    {
      v31[v19 - 1] = v32[v19 + 63] ^ v33[v19 + 63];
      --v19;
    }

    while (v19);
  }

  v20 = strlen(a3);
  ccdigest_internal(v10, v20, a3, v32);
  ccdigest_init_internal(v10, v14);
  ccdigest_update_internal(v10, v14, v11, v31);
  ccdigest_update_internal(v10, v14, v11, v32);
  ccdigest_update_internal(v10, v14, v25, v26);
  ccsrp_digest_update_ccn_ws(a1, a2, v14, v27, v16);
  ccsrp_digest_update_ccn_ws(a1, a2, v14, v28, v16);
  session_key_length = ccsrp_get_session_key_length(a2);
  v22 = ccdh_gp_n(a2[1]);
  ccdigest_update_internal(v10, v14, session_key_length, &a2[4 * v22 + 4]);
  v23 = ccdh_gp_n(a2[1]);
  (v10[7])(v10, v14, &a2[4 * v23 + 4] + 2 * **a2);
  cc_clear(v10[1] + v10[2] + 12, v14);
  cc_clear(0x40uLL, v34);
  cc_clear(0x40uLL, v33);
  cc_clear(0x40uLL, v31);
  result = cc_clear(0x40uLL, v32);
  *(a1 + 16) = v29;
  return result;
}

void *ccaes_siv_hmac_sha256_decrypt_mode()
{
  v0 = ccsha256_di();
  v1 = ccaes_ctr_crypt_mode();
  ccmode_factory_siv_hmac_decrypt(&siv_hmac_decrypt, v0, v1);
  return &siv_hmac_decrypt;
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

uint64_t cccurve448_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned int (**a5)(void, unint64_t, uint64_t))
{
  v51 = *MEMORY[0x29EDCA608];
  v42 = cc_malloc_clear(0x380uLL);
  v43 = xmmword_299DB0690;
  v44 = cc_ws_alloc;
  v45 = cc_ws_free;
  if (!v42)
  {
    return 4294967283;
  }

  v39 = a2;
  v10 = cczp_n(a1);
  v11 = cc_ws_alloc(&v42, v10);
  v12 = v44(&v42, v10);
  v40 = v44(&v42, v10);
  __src = v44(&v42, v10);
  v13 = v44(&v42, v10);
  v14 = v44(&v42, v10);
  non_zero_element_ws = cczp_generate_non_zero_element_ws(&v42, a1, a5, v11);
  if (non_zero_element_ws || (v38 = v12, non_zero_element_ws = cczp_generate_non_zero_element_ws(&v42, a1, a5, v12), non_zero_element_ws))
  {
    v21 = non_zero_element_ws;
  }

  else
  {
    v46 = 0;
    (*a5)(a5, 8uLL, &v46);
    ccn_mux_seed_mask(v46);
    v50 = *(a3 + 48);
    v16 = *(a3 + 16);
    v49[0] = *a3;
    v49[1] = v16;
    v49[2] = *(a3 + 32);
    LOBYTE(v49[0]) &= 0xFCu;
    HIBYTE(v50) |= 0x80u;
    v37 = v13;
    if (v10)
    {
      for (i = 0; i != v10; ++i)
      {
        *(v40 + 8 * i) = *(v49 + i);
      }

      cc_clear(0x38uLL, v49);
      v18 = __src;
      v19 = v10;
      do
      {
        v20 = *a4++;
        *v18++ = v20;
        --v19;
      }

      while (v19);
    }

    else
    {
      cc_clear(0x38uLL, v49);
    }

    cczp_mul_ws(&v42, a1);
    v22 = cczp_n(a1);
    v36 = *(&v43 + 1);
    v23 = v44(&v42, 2 * v22);
    v24 = &v23[8 * v22];
    v25 = v11;
    v26 = v44(&v42, 2 * v22);
    v27 = &v26[8 * v22];
    v44(&v42, v22);
    v44(&v42, v22);
    cc_clear(8 * v22, v27);
    ccn_set(v22, v24, v25);
    ccn_set(v22, v23, __src);
    v35 = v22;
    ccn_set(v22, v26, v38);
    v28 = 0;
    for (j = 447; j != -1; --j)
    {
      v30 = v28;
      v28 = (*(v40 + ((j >> 3) & 0x1FFFFFFFFFFFFFF8)) >> j) & 1;
      ccn_cond_swap(14, v28 ^ v30, v23, v26);
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
      cczp_mul_ws(&v42, a1);
      cczp_sqr_ws(&v42, a1);
      cczp_mul_ws(&v42, a1);
      cczp_add_ws(&v42, a1);
      cczp_mul_ws(&v42, a1);
      cczp_mul_ws(&v42, a1);
    }

    ccn_mux(v35, v28, v37, v23, v26);
    v31 = v14;
    ccn_mux(v35, v28, v14, v24, v27);
    *(&v43 + 1) = v36;
    cczp_inv_ws(&v42, a1);
    cczp_mul_ws(&v42, a1);
    cczp_from_ws(&v42, a1);
    if (v10)
    {
      v32 = v39 + 3;
      do
      {
        v33 = *v31++;
        *(v32 - 3) = v33;
        v32 += 8;
        --v10;
      }

      while (v10);
    }

    v48 = 0;
    memset(v47, 0, sizeof(v47));
    if (cc_cmp_safe_internal(56, v39, v47))
    {
      v21 = 0;
    }

    else
    {
      v21 = 4294967289;
    }
  }

  *(&v43 + 1) = 0;
  v45(&v42);
  return v21;
}

uint64_t cccurve448(unsigned int (**a1)(void, unint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v11 = timingsafe_enable_if_supported();
  v8 = ccec_cp_x448();
  v9 = cccurve448_internal(v8, a2, a3, a4, a1);
  cc_disable_dit_with_sb(&v11);
  return v9;
}

uint64_t cccurve448_make_pub(unsigned int (**a1)(void, unint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v9 = timingsafe_enable_if_supported();
  v6 = ccec_cp_x448();
  v7 = cccurve448_internal(v6, a2, a3, kX448BasePoint, a1);
  cc_disable_dit_with_sb(&v9);
  return v7;
}

uint64_t ccspake_kex_generate(unsigned __int8 *a1, uint64_t a2, _BYTE *a3)
{
  v28 = timingsafe_enable_if_supported();
  v6 = (*(*a1 + 8))();
  v7 = cczp_bitlen(v6);
  v8 = a1[60];
  if (v8 == CCSPAKE_STATE_INIT || v8 == CCSPAKE_STATE_KEX_PROCESS)
  {
    v10 = (v7 + 7) >> 3;
    if (((2 * v10) | 1) == a2)
    {
      v11 = *v6;
      v12 = sizeof_struct_cche_galois_key();
      v13 = sizeof_struct_ccpolyzp_po2cyc();
      v26[0] = cc_malloc_clear(8 * ((v12 + v13 + v13 * 3 * v11 - 1) / v13 + 33 * v11));
      v14 = sizeof_struct_cche_galois_key();
      v15 = sizeof_struct_ccpolyzp_po2cyc();
      v26[1] = (v14 + v15 + v15 * 3 * v11 - 1) / v15 + 33 * v11;
      v26[2] = 0;
      v26[3] = cc_ws_alloc;
      v27 = cc_ws_free;
      if (v26[0])
      {
        v16 = ccspake_lazy_gen_xy_XY_ws(v26, a1);
        v24 = v16;
        if (!v16)
        {
          *a3 = 4;
          v20 = a3 + 1;
          v21 = (*(*a1 + 8))(v16, v17, v18, v19);
          v22 = ccn_write_uint_padded_internal(v11, &a1[32 * *v21 + 336], v10, v20);
          v23 = (*(*a1 + 8))(v22);
          ccn_write_uint_padded_internal(v11, &a1[40 * *v23 + 336], v10, &v20[v10]);
          a1[60] |= CCSPAKE_STATE_KEX_GENERATE;
        }

        v27(v26);
      }

      else
      {
        v24 = 4294967283;
      }
    }

    else
    {
      v24 = 4294967289;
    }
  }

  else
  {
    v24 = 4294967210;
  }

  cc_disable_dit_with_sb(&v28);
  return v24;
}

uint64_t ccspake_lazy_gen_xy_XY_ws(uint64_t a1, void *a2)
{
  v4 = a2[2];
  v5 = (*(*a2 + 8))();
  v6 = *v5;
  v7 = a2 + 42;
  v8 = (*(*a2 + 8))();
  if (ccn_n(v6, &a2[3 * *v8 + 42]))
  {
    return 0;
  }

  v18 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, (24 * v6 + 23) >> 3);
  *v10 = v5;
  v11 = (*(a1 + 24))(a1, 3 * v6);
  v12 = (*(a1 + 24))(a1, 3 * v6);
  v17 = (*(a1 + 24))(a1, 3 * v6);
  v13 = (*(a1 + 24))(a1, v6);
  result = ccec_generate_scalar_fips_retry_ws(a1, v5, a2[2], v13);
  if (!result)
  {
    result = ccec_projectify_ws(a1, v5);
    if (!result)
    {
      result = ccec_mult_blinded_ws(a1, v5, v11, v13, v17, v4);
      if (!result)
      {
        result = ccec_projectify_ws(a1, v5);
        if (!result)
        {
          (*(*a2 + 8))();
          result = ccec_mult_blinded_ws(a1, v5, v12, (a2 + 42), v17, v4);
          if (!result)
          {
            ccec_full_add_ws(a1, v5);
            result = ccec_affinify_ws(a1, v5);
            if (!result)
            {
              v14 = (*(*a2 + 8))();
              v15 = ccspake_store_pub_key(v10, &v7[4 * *v14]);
              v16 = (*(*a2 + 8))(v15);
              ccn_set(v6, &v7[3 * *v16], v13);
              result = 0;
            }
          }
        }
      }
    }
  }

  *(a1 + 16) = v18;
  return result;
}

uint64_t ccspake_kex_process(uint64_t a1, uint64_t a2)
{
  v53 = timingsafe_enable_if_supported();
  v4 = (*(*a1 + 8))();
  v5 = *v4;
  v6 = sizeof_struct_cche_galois_key();
  v7 = sizeof_struct_ccpolyzp_po2cyc();
  v49[0] = cc_malloc_clear(432 * v5 + 16 * ((v6 + v7 + 3 * v5 * v7 - 1) / v7));
  v8 = *v4;
  v9 = sizeof_struct_cche_galois_key();
  v10 = sizeof_struct_ccpolyzp_po2cyc();
  v49[1] = 54 * v8 + 2 * ((v9 + v10 + 3 * v8 * v10 - 1) / v10);
  v50 = 0;
  v51 = cc_ws_alloc;
  v52 = cc_ws_free;
  if (v49[0])
  {
    v11 = *a1;
    v12 = (*(*a1 + 8))();
    v13 = *v12;
    if (ccspake_sizeof_point(v11) != a2)
    {
      v23 = 4294967289;
      goto LABEL_12;
    }

    v14 = cc_ws_alloc(v49, (24 * v13 + 23) >> 3);
    *v14 = v12;
    v15 = 3 * v13;
    v16 = v51(v49, 3 * v13);
    v17 = v51(v49, 3 * v13);
    v18 = v51(v49, 3 * v13);
    v19 = v51(v49, v15);
    v48 = v51(v49, v15);
    v47 = v51(v49, v15);
    v20 = v51(v49, v15);
    v21 = *(a1 + 16);
    v22 = *(a1 + 60);
    if (v22 != CCSPAKE_STATE_INIT && v22 != CCSPAKE_STATE_KEX_GENERATE)
    {
      v23 = 4294967210;
LABEL_12:
      v52(v49);
      goto LABEL_13;
    }

    v46 = v20;
    v24 = ccspake_import_pub_ws(v49);
    if (!v24)
    {
      v24 = ccspake_lazy_gen_xy_XY_ws(v49, a1);
      if (!v24)
      {
        v26 = a1 + 336;
        v27 = (*(*a1 + 8))();
        if (!ccspake_cmp_pub_key(v14, a1 + 336 + 32 * *v27))
        {
          v23 = 4294967289;
          goto LABEL_11;
        }

        v24 = ccec_projectify_ws(v49, v12);
        if (!v24)
        {
          v24 = ccec_projectify_ws(v49, v12);
          if (!v24)
          {
            (*(*a1 + 8))();
            v24 = ccec_mult_blinded_ws(v49, v12, v18, a1 + 336, v16, v21);
            if (!v24)
            {
              v28 = ccec_full_sub_ws(v49, v12, v19, v17, v18);
              v29 = (*(*a1 + 8))(v28);
              v24 = ccec_mult_blinded_ws(v49, v12, v48, v26 + 24 * *v29, v19, v21);
              if (!v24)
              {
                v30 = *(a1 + 24);
                v31 = v26 + 8 * *(*(*a1 + 8))();
                v32 = v12;
                if (v30 == 1)
                {
                  v33 = v47;
                  v34 = v19;
LABEL_24:
                  v24 = ccec_mult_blinded_ws(v49, v32, v33, v31, v34, v21);
                  if (!v24)
                  {
                    v24 = ccec_affinify_ws(v49, v12);
                    if (!v24)
                    {
                      v24 = ccec_affinify_ws(v49, v12);
                      if (!v24)
                      {
                        v35 = (*(*a1 + 8))();
                        v36 = ccspake_store_pub_key(v14, (v26 + 48 * *v35));
                        v37 = *(a1 + 24);
                        v38 = *(*(*a1 + 8))(v36);
                        v39 = *(*(*a1 + 8))();
                        if (v37 == 1)
                        {
                          appended = ccspake_transcript_append_point(a1, v12, (v26 + 32 * v38), (v26 + 40 * v39));
                          v41 = 48 * *(*(*a1 + 8))(appended);
                          v42 = 56;
                        }

                        else
                        {
                          v43 = ccspake_transcript_append_point(a1, v12, (v26 + 48 * v38), (v26 + 56 * v39));
                          v41 = 32 * *(*(*a1 + 8))(v43);
                          v42 = 40;
                        }

                        v44 = (*(*a1 + 8))();
                        ccspake_transcript_append_point(a1, v12, (v26 + v41), (v26 + *v44 * v42));
                        ccspake_transcript_append_point(a1, v12, v48, &v48[*v12]);
                        v45 = ccspake_transcript_append_point(a1, v12, v47, &v47[*v12]);
                        (*(*a1 + 8))(v45);
                        ccspake_transcript_append_scalar(a1, v12, (a1 + 336));
                        ccspake_transcript_finish(a1, a1 + 272);
                        v23 = 0;
                        *(a1 + 60) |= CCSPAKE_STATE_KEX_PROCESS;
                        goto LABEL_11;
                      }
                    }
                  }

                  goto LABEL_10;
                }

                v24 = ccec_validate_point_and_projectify_ws(v49, v12, v46, v31);
                if (!v24)
                {
                  v31 = v26 + 24 * *(*(*a1 + 8))();
                  v32 = v12;
                  v33 = v47;
                  v34 = v46;
                  goto LABEL_24;
                }
              }
            }
          }
        }
      }
    }

LABEL_10:
    v23 = v24;
LABEL_11:
    v50 = 0;
    goto LABEL_12;
  }

  v23 = 4294967283;
LABEL_13:
  cc_disable_dit_with_sb(&v53);
  return v23;
}

void *ccsha256_di()
{
  if (fipspost_trace_is_active())
  {
    fipspost_trace_call("ccsha256_di");
  }

  return &ccsha256_vng_arm_di;
}

int8x16_t *ccmode_xts_mult_alpha(int8x16_t *result)
{
  v1 = *result;
  *result = vorrq_s8(vaddq_s8(*result, *result), vextq_s8(0, vshrq_n_u8(*result, 7uLL), 0xFuLL));
  if (v1.i8[15] < 0)
  {
    result->i8[0] ^= 0x87u;
  }

  return result;
}

uint64_t ccrsa_generate_key(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int (**a5)(void, unint64_t, uint64_t))
{
  v12 = timingsafe_enable_if_supported();
  key_internal = ccrsa_generate_key_internal(a1, a2, a3, a4, a5, a5);
  cc_disable_dit_with_sb(&v12);
  return key_internal;
}

void *ccsha3_224_di()
{
  if ((MEMORY[0xFFFFFC010] & 0x100000000) != 0)
  {
    return &ccsha3_224_vng_hwassist_di;
  }

  else
  {
    return &ccsha3_224_vng_di;
  }
}

uint64_t ccrsa_make_pub(uint64_t *a1, unint64_t a2, unsigned __int8 *a3, unint64_t a4, unsigned __int8 *a5)
{
  v10 = cc_malloc_clear(40 * *a1 + 24);
  v11 = *a1;
  v12 = 5 * *a1 + 3;
  v15[0] = v10;
  v15[1] = v12;
  v15[2] = 0;
  v15[3] = cc_ws_alloc;
  v16 = cc_ws_free;
  if (!v10)
  {
    return 4294967283;
  }

  if (ccn_read_uint_public_value(v11, a1 + 3, a4, a5) || ccn_read_uint_public_value(v11, &a1[2 * *a1 + 4], a2, a3))
  {
    inited = 4294967273;
    cc_ws_free(v15);
  }

  else
  {
    inited = cczp_mm_init_ws(v15, a1, v11, 0);
    v16(v15);
  }

  return inited;
}

unint64_t CCHE_ENCRYPT_ZERO_SYMMETRIC_HELPER_WORKSPACE_N(unint64_t a1, int a2)
{
  v4 = sizeof_struct_ccpolyzp_po2cyc_block_rng_state();
  v5 = CCPOLYZP_PO2CYC_RANDOM_UNIFORM_WORKSPACE_N(a1);
  v6 = v5 + (a2 * a1) + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3);
  v7 = CCPOLYZP_PO2CYC_RANDOM_CBD_WORKSPACE_N(a1);
  if (v6 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  return v8 + ((v4 + 7) >> 3);
}

uint64_t cche_encrypt_symmetric(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, unsigned int a5, uint64_t a6, uint64_t (**a7)(void, uint64_t, uint64_t))
{
  v27 = timingsafe_enable_if_supported();
  v14 = cche_param_ctx_polynomial_degree(a3);
  v15 = CCHE_ENCRYPT_ZERO_SYMMETRIC_HELPER_WORKSPACE_N(v14, a5);
  v16 = CCHE_CIPHERTEXT_PLAINTEXT_ADD_WORKSPACE_N(v14);
  if (v15 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  v18 = cc_malloc_clear(8 * v17);
  v25[0] = v18;
  v19 = cche_param_ctx_polynomial_degree(a3);
  v20 = CCHE_ENCRYPT_ZERO_SYMMETRIC_HELPER_WORKSPACE_N(v19, a5);
  v21 = CCHE_CIPHERTEXT_PLAINTEXT_ADD_WORKSPACE_N(v19);
  if (v20 <= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v20;
  }

  v25[1] = v22;
  v25[2] = 0;
  v25[3] = cc_ws_alloc;
  v26 = cc_ws_free;
  if (v18)
  {
    v23 = cche_encrypt_symmetric_ws(v25, a1, a2, a3, a4, a5, a6, a7);
    v26(v25);
  }

  else
  {
    v23 = 4294967283;
  }

  cc_disable_dit_with_sb(&v27);
  return v23;
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

uint64_t cczp_mm_power_fast_ws(uint64_t a1, const void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = cczp_n(a2);
  v11 = cczp_prime(a2);
  if ((ccn_cmp_public_value(v10, a4, v11) & 0x80000000) == 0)
  {
    return 4294967289;
  }

  v13 = *(a1 + 16);
  v14 = (*(a1 + 24))(a1, v10);
  v15 = (*(a1 + 24))(a1, v10);
  cc_clear(8 * (*(a1 + 16) - v13), (*a1 + 8 * v13));
  v16 = (*(a1 + 24))(a1, 2 * v10 + 4);
  v17 = cczp_n(a2);
  memcpy(v16, a2, 16 * v17 + 32);
  v16[2] = cczp_montgomery_funcs;
  cczp_mm_to_ws(a1, v16, v14, a4);
  v12 = cczp_power_fast_ws(a1, v16, v15, v14, a5);
  if (!v12)
  {
    cczp_mm_from_ws(a1, v16, a3, v15);
  }

  *(a1 + 16) = v13;
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

uint64_t cczp_mm_power_ws(uint64_t a1, const void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = cczp_n(a2);
  v13 = cczp_prime(a2);
  if ((ccn_cmp_public_value(v12, a4, v13) & 0x80000000) == 0)
  {
    return 4294967289;
  }

  v15 = *(a1 + 16);
  v16 = (*(a1 + 24))(a1, 2 * v12 + 4);
  v17 = cczp_n(a2);
  memcpy(v16, a2, 16 * v17 + 32);
  v16[2] = cczp_montgomery_funcs;
  cczp_mm_to_ws(a1, v16, a3, a4);
  v14 = cczp_power_ws(a1, v16, a3, a3, a5, a6);
  if (!v14)
  {
    cczp_mm_from_ws(a1, v16, a3, a3);
  }

  *(a1 + 16) = v15;
  return v14;
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

uint64_t cczp_mm_mod_ws(uint64_t a1, void *a2, uint64_t *a3, void *a4)
{
  v8 = *(a1 + 16);
  v9 = 2 * cczp_n(a2);
  v10 = (*(a1 + 24))(a1, v9);
  ccn_set(v9, v10, a4);
  result = cczp_mm_redc_ws(a1, a2, a3, v10);
  *(a1 + 16) = v8;
  return result;
}

uint64_t ccec448_inv_ws(uint64_t a1, uint64_t a2)
{
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  v4 = 2;
  do
  {
    cczp_sqr_ws(a1, a2);
    --v4;
  }

  while (v4);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  v5 = 5;
  do
  {
    cczp_sqr_ws(a1, a2);
    --v5;
  }

  while (v5);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  v6 = 12;
  do
  {
    cczp_sqr_ws(a1, a2);
    --v6;
  }

  while (v6);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  v7 = 26;
  do
  {
    cczp_sqr_ws(a1, a2);
    --v7;
  }

  while (v7);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  v8 = 54;
  do
  {
    cczp_sqr_ws(a1, a2);
    --v8;
  }

  while (v8);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  v9 = 110;
  do
  {
    cczp_sqr_ws(a1, a2);
    --v9;
  }

  while (v9);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  v10 = 222;
  do
  {
    cczp_sqr_ws(a1, a2);
    --v10;
  }

  while (v10);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  return 0;
}

uint64_t ccec448_from_ws(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v19[7] = *MEMORY[0x29EDCA608];
  v6 = cczp_prime(a2);
  v7 = *a4 - __PAIR128__(*v6, *v6);
  v8 = a4[1] - __PAIR128__(v6[1], v6[1]) + __PAIR128__(*(&v7 + 1) >> 63, *(&v7 + 1) >> 63);
  v19[0] = *a4 - *v6;
  v19[1] = v8;
  v9 = a4[2] - __PAIR128__(v6[2], v6[2]);
  v10 = a4[3] - __PAIR128__(v6[3], v6[3]) + __PAIR128__(((*(&v8 + 1) >> 63) + __CFADD__(v9, *(&v8 + 1) >> 63) + *(&v9 + 1)) >> 63, ((*(&v8 + 1) >> 63) + __CFADD__(v9, *(&v8 + 1) >> 63) + *(&v9 + 1)) >> 63);
  v19[2] = v9 + (*(&v8 + 1) >> 63);
  v19[3] = v10;
  v12 = (a4[4] - __PAIR128__(v6[4], v6[4])) >> 64;
  v11 = a4[4] - v6[4];
  v13 = (*(&v10 + 1) >> 63) + __CFADD__(v11, *(&v10 + 1) >> 63) + v12;
  v14 = a4[5] - __PAIR128__(v12, v6[5]);
  v15 = v14 + (v13 >> 63);
  v16 = (v13 >> 63) + __CFADD__(v14, v13 >> 63) + *(&v14 + 1);
  v19[4] = v11 + (*(&v10 + 1) >> 63);
  v19[5] = v15;
  v17 = a4[6] - __PAIR128__(v6[6], v6[6]);
  v19[6] = v17 + (v16 >> 63);
  return ccn_mux(7, (v16 >> 63) + __CFADD__(v17, v16 >> 63) + *(&v17 + 1) < 0, a3, a4, v19);
}

uint64_t ccrsa_dump_public_key(uint64_t *a1)
{
  v4 = timingsafe_enable_if_supported();
  v2 = ccrsa_pubkeylength(a1);
  fprintf(*MEMORY[0x29EDCA610], "%zu bit rsa key\n", v2);
  ccn_lprint(*a1, "m  = 0x", (a1 + 3));
  ccn_lprint(*a1, "e  = 0x", &a1[2 * *a1 + 4]);
  return cc_disable_dit_with_sb(&v4);
}

uint64_t ccrsa_dump_full_key(void *a1)
{
  v35 = timingsafe_enable_if_supported();
  v2 = ccrsa_ctx_public(a1);
  v3 = ccrsa_pubkeylength(v2);
  v4 = MEMORY[0x29EDCA610];
  fprintf(*MEMORY[0x29EDCA610], "%zu bit rsa key\n", v3);
  ccn_lprint(*v2, "m  = 0x", (v2 + 3));
  ccn_lprint(*v2, "e  = 0x", &v2[2 * *v2 + 4]);
  ccn_lprint(*v2, "d  = 0x", &v2[3 * *v2 + 4]);
  v5 = ccrsa_ctx_private_zp(a1);
  v6 = cczp_n(v5);
  v7 = ccrsa_ctx_private_zp(a1);
  v8 = cczp_prime(v7);
  ccn_lprint(v6, "p  = 0x", v8);
  v9 = ccrsa_ctx_private_zp(a1);
  v10 = ccrsa_ctx_private_zp(a1);
  v11 = cczp_n(v9 + 16 * *v10 + 32);
  v12 = ccrsa_ctx_private_zp(a1);
  v13 = ccrsa_ctx_private_zp(a1);
  v14 = cczp_prime(v12 + 16 * *v13 + 32);
  ccn_lprint(v11, "q  = 0x", v14);
  v15 = ccrsa_ctx_private_zp(a1);
  v16 = cczp_n(v15);
  v17 = ccrsa_ctx_private_zp(a1);
  v18 = v17 + 16 * *ccrsa_ctx_private_zp(a1);
  v19 = ccrsa_ctx_private_zp(a1);
  ccn_lprint(v16, "dp = 0x", v18 + 16 * *v19 + 64);
  v20 = ccrsa_ctx_private_zp(a1);
  v21 = ccrsa_ctx_private_zp(a1);
  v22 = cczp_n(v20 + 16 * *v21 + 32);
  v23 = ccrsa_ctx_private_zp(a1);
  v24 = v23 + 16 * *ccrsa_ctx_private_zp(a1);
  v25 = v24 + 16 * *ccrsa_ctx_private_zp(a1);
  v26 = ccrsa_ctx_private_zp(a1);
  ccn_lprint(v22, "dq = 0x", v25 + 8 * *v26 + 64);
  v27 = ccrsa_ctx_private_zp(a1);
  v28 = cczp_n(v27);
  v29 = ccrsa_ctx_private_zp(a1);
  v30 = v29 + 16 * *ccrsa_ctx_private_zp(a1);
  v31 = v30 + 16 * *ccrsa_ctx_private_zp(a1);
  v32 = v31 + 8 * *ccrsa_ctx_private_zp(a1);
  v33 = ccrsa_ctx_private_zp(a1);
  ccn_lprint(v28, "qinv=0x", v32 + 8 * *v33 + 64);
  fputc(10, *v4);
  return cc_disable_dit_with_sb(&v35);
}

uint64_t md2_processblock(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = result;
    v6 = result + 48;
    do
    {
      result = md2_compress(v5, a3);
      v7 = 0;
      v8 = *(v5 + 63);
      do
      {
        v8 = *(v6 + v7) ^ PI_SUBST[(*(a3 + v7) ^ v8)];
        *(v6 + v7++) = v8;
      }

      while (v7 != 16);
      a3 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t md2_final(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v17[1] = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  MEMORY[0x2A1C7C4A8](a1);
  v8 = v17 - v7;
  memcpy(v17 - v7, v10, v9 + 12);
  v11 = &v8[v5 + 8];
  v12 = *&v11[v6];
  if (v12 <= 0xF)
  {
    memset(&v8[v5 + 8 + v12], 16 - v12, 16 - v12);
  }

  md2_compress((v8 + 8), &v8[v5 + 8]);
  v13 = v8[71];
  v14 = v5 + 8;
  for (i = 56; i != 72; ++i)
  {
    v13 = v8[i] ^ PI_SUBST[(v8[v14] ^ v13)];
    v8[i] = v13;
    ++v14;
  }

  *v11 = *(v8 + 56);
  md2_compress((v8 + 8), &v8[v5 + 8]);
  *a3 = *(v8 + 8);
  return cc_clear(*(a1 + 8) + *(a1 + 16) + 12, v8);
}

uint64_t md2_compress(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = (result + 32);
  do
  {
    v4 = *(a2 + v2);
    *(v3 - 16) = v4;
    *v3 = *(v3 - 32) ^ v4;
    ++v3;
    ++v2;
  }

  while (v2 != 16);
  v5 = 0;
  for (i = 0; i != 18; ++i)
  {
    for (j = 0; j != 48; ++j)
    {
      v5 = *(result + j) ^ PI_SUBST[v5];
      *(result + j) = v5;
    }

    v5 += i;
  }

  return result;
}

uint64_t ccmlkem_hash_g_append_k(uint64_t a1, _OWORD *a2, void *a3)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v6 = *(a1 + 4);
  cckeccak_oneshot(33, v5, 0x40uLL, a3, 0x48uLL, 6u);
  return cc_clear(0x21uLL, v5);
}

uint64_t ccmlkem_prf(_OWORD *a1, char a2, void *a3)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v6 = a2;
  cckeccak_oneshot(33, v5, 0x80uLL, a3, 0x88uLL, 0x1Fu);
  return cc_clear(0x21uLL, v5);
}

uint64_t ccmlkem_rkprf(_DWORD *a1, _OWORD *a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x29EDCA608];
  v7 = (32 * (a1[2] + a1[1] * a1[3]));
  permutation = cckeccak_get_permutation();
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  cckeccak_init_state(v14);
  v9 = a2[1];
  v16[0] = *a2;
  v16[1] = v9;
  v10 = *(a3 + 80);
  v16[6] = *(a3 + 64);
  v16[7] = v10;
  v17 = *(a3 + 96);
  v11 = *(a3 + 16);
  v16[2] = *a3;
  v16[3] = v11;
  v12 = *(a3 + 48);
  v16[4] = *(a3 + 32);
  v16[5] = v12;
  cckeccak_absorb_blocks(v14, 0x88uLL, 1, v16, permutation);
  a3 += 104;
  v7 -= 104;
  cckeccak_absorb_blocks(v14, 0x88uLL, v7 / 0x88, a3, permutation);
  cckeccak_absorb_and_pad(v14, 136, v7 % 0x88, (a3 + 136 * (v7 / 0x88)), 0x1Fu);
  cckeccak_squeeze(v14, 0x88uLL, 0x20uLL, a4, permutation);
  return cc_clear(0xC8uLL, v14);
}

int *CC_CAST_encrypt(int *result, uint64_t a2)
{
  v2 = result[1];
  v3 = __ROR4__(*a2 + v2, -*(a2 + 4));
  v4 = ((CC_CAST_S_table1[v3] ^ CC_CAST_S_table0[BYTE1(v3)]) - CC_CAST_S_table2[HIBYTE(v3)] + CC_CAST_S_table3[BYTE2(v3)]) ^ *result;
  v5 = __ROR4__(v4 ^ *(a2 + 8), -*(a2 + 12));
  v6 = CC_CAST_S_table3[BYTE2(v5)] ^ v2 ^ (CC_CAST_S_table0[BYTE1(v5)] - CC_CAST_S_table1[v5] + CC_CAST_S_table2[HIBYTE(v5)]);
  v7 = __ROR4__(*(a2 + 16) - v6, -*(a2 + 20));
  v8 = (((CC_CAST_S_table1[v7] + CC_CAST_S_table0[BYTE1(v7)]) ^ CC_CAST_S_table2[HIBYTE(v7)]) - CC_CAST_S_table3[BYTE2(v7)]) ^ v4;
  v9 = __ROR4__(v8 + *(a2 + 24), -*(a2 + 28));
  v10 = ((CC_CAST_S_table1[v9] ^ CC_CAST_S_table0[BYTE1(v9)]) - CC_CAST_S_table2[HIBYTE(v9)] + CC_CAST_S_table3[BYTE2(v9)]) ^ v6;
  v11 = __ROR4__(v10 ^ *(a2 + 32), -*(a2 + 36));
  v12 = CC_CAST_S_table3[BYTE2(v11)] ^ v8 ^ (CC_CAST_S_table0[BYTE1(v11)] - CC_CAST_S_table1[v11] + CC_CAST_S_table2[HIBYTE(v11)]);
  v13 = __ROR4__(*(a2 + 40) - v12, -*(a2 + 44));
  v14 = (((CC_CAST_S_table1[v13] + CC_CAST_S_table0[BYTE1(v13)]) ^ CC_CAST_S_table2[HIBYTE(v13)]) - CC_CAST_S_table3[BYTE2(v13)]) ^ v10;
  v15 = __ROR4__(v14 + *(a2 + 48), -*(a2 + 52));
  v16 = ((CC_CAST_S_table1[v15] ^ CC_CAST_S_table0[BYTE1(v15)]) - CC_CAST_S_table2[HIBYTE(v15)] + CC_CAST_S_table3[BYTE2(v15)]) ^ v12;
  v17 = __ROR4__(v16 ^ *(a2 + 56), -*(a2 + 60));
  v18 = CC_CAST_S_table3[BYTE2(v17)] ^ v14 ^ (CC_CAST_S_table0[BYTE1(v17)] - CC_CAST_S_table1[v17] + CC_CAST_S_table2[HIBYTE(v17)]);
  v19 = __ROR4__(*(a2 + 64) - v18, -*(a2 + 68));
  v20 = (((CC_CAST_S_table1[v19] + CC_CAST_S_table0[BYTE1(v19)]) ^ CC_CAST_S_table2[HIBYTE(v19)]) - CC_CAST_S_table3[BYTE2(v19)]) ^ v16;
  v21 = __ROR4__(v20 + *(a2 + 72), -*(a2 + 76));
  v22 = ((CC_CAST_S_table1[v21] ^ CC_CAST_S_table0[BYTE1(v21)]) - CC_CAST_S_table2[HIBYTE(v21)] + CC_CAST_S_table3[BYTE2(v21)]) ^ v18;
  v23 = __ROR4__(v22 ^ *(a2 + 80), -*(a2 + 84));
  v24 = CC_CAST_S_table3[BYTE2(v23)] ^ v20 ^ (CC_CAST_S_table0[BYTE1(v23)] - CC_CAST_S_table1[v23] + CC_CAST_S_table2[HIBYTE(v23)]);
  v25 = __ROR4__(*(a2 + 88) - v24, -*(a2 + 92));
  v26 = (((CC_CAST_S_table1[v25] + CC_CAST_S_table0[BYTE1(v25)]) ^ CC_CAST_S_table2[HIBYTE(v25)]) - CC_CAST_S_table3[BYTE2(v25)]) ^ v22;
  if (!*(a2 + 128))
  {
    v27 = __ROR4__(*(a2 + 96) + v26, -*(a2 + 100));
    v28 = ((CC_CAST_S_table1[v27] ^ CC_CAST_S_table0[BYTE1(v27)]) - CC_CAST_S_table2[HIBYTE(v27)] + CC_CAST_S_table3[BYTE2(v27)]) ^ v24;
    v29 = __ROR4__(v28 ^ *(a2 + 104), -*(a2 + 108));
    v30 = CC_CAST_S_table3[BYTE2(v29)] ^ v26 ^ (CC_CAST_S_table0[BYTE1(v29)] - CC_CAST_S_table1[v29] + CC_CAST_S_table2[HIBYTE(v29)]);
    v31 = __ROR4__(*(a2 + 112) - v30, -*(a2 + 116));
    v24 = (((CC_CAST_S_table1[v31] + CC_CAST_S_table0[BYTE1(v31)]) ^ CC_CAST_S_table2[HIBYTE(v31)]) - CC_CAST_S_table3[BYTE2(v31)]) ^ v28;
    v32 = __ROR4__(v24 + *(a2 + 120), -*(a2 + 124));
    v26 = ((CC_CAST_S_table1[v32] ^ CC_CAST_S_table0[BYTE1(v32)]) - CC_CAST_S_table2[HIBYTE(v32)] + CC_CAST_S_table3[BYTE2(v32)]) ^ v30;
  }

  *result = v26;
  result[1] = v24;
  return result;
}

int *CC_CAST_decrypt(int *result, uint64_t a2)
{
  v3 = *result;
  v2 = result[1];
  if (!*(a2 + 128))
  {
    v4 = __ROR4__(*(a2 + 120) + v2, -*(a2 + 124));
    v5 = ((CC_CAST_S_table1[v4] ^ CC_CAST_S_table0[BYTE1(v4)]) - CC_CAST_S_table2[HIBYTE(v4)] + CC_CAST_S_table3[BYTE2(v4)]) ^ v3;
    v6 = __ROR4__(*(a2 + 112) - v5, -*(a2 + 116));
    v7 = (((CC_CAST_S_table1[v6] + CC_CAST_S_table0[BYTE1(v6)]) ^ CC_CAST_S_table2[HIBYTE(v6)]) - CC_CAST_S_table3[BYTE2(v6)]) ^ v2;
    v8 = __ROR4__(v7 ^ *(a2 + 104), -*(a2 + 108));
    v3 = CC_CAST_S_table3[BYTE2(v8)] ^ v5 ^ (CC_CAST_S_table0[BYTE1(v8)] - CC_CAST_S_table1[v8] + CC_CAST_S_table2[HIBYTE(v8)]);
    v9 = __ROR4__(v3 + *(a2 + 96), -*(a2 + 100));
    v2 = ((CC_CAST_S_table1[v9] ^ CC_CAST_S_table0[BYTE1(v9)]) - CC_CAST_S_table2[HIBYTE(v9)] + CC_CAST_S_table3[BYTE2(v9)]) ^ v7;
  }

  v10 = __ROR4__(*(a2 + 88) - v2, -*(a2 + 92));
  v11 = (((CC_CAST_S_table1[v10] + CC_CAST_S_table0[BYTE1(v10)]) ^ CC_CAST_S_table2[HIBYTE(v10)]) - CC_CAST_S_table3[BYTE2(v10)]) ^ v3;
  v12 = __ROR4__(v11 ^ *(a2 + 80), -*(a2 + 84));
  v13 = CC_CAST_S_table3[BYTE2(v12)] ^ v2 ^ (CC_CAST_S_table0[BYTE1(v12)] - CC_CAST_S_table1[v12] + CC_CAST_S_table2[HIBYTE(v12)]);
  v14 = __ROR4__(v13 + *(a2 + 72), -*(a2 + 76));
  v15 = ((CC_CAST_S_table1[v14] ^ CC_CAST_S_table0[BYTE1(v14)]) - CC_CAST_S_table2[HIBYTE(v14)] + CC_CAST_S_table3[BYTE2(v14)]) ^ v11;
  v16 = __ROR4__(*(a2 + 64) - v15, -*(a2 + 68));
  v17 = (((CC_CAST_S_table1[v16] + CC_CAST_S_table0[BYTE1(v16)]) ^ CC_CAST_S_table2[HIBYTE(v16)]) - CC_CAST_S_table3[BYTE2(v16)]) ^ v13;
  v18 = __ROR4__(v17 ^ *(a2 + 56), -*(a2 + 60));
  v19 = CC_CAST_S_table3[BYTE2(v18)] ^ v15 ^ (CC_CAST_S_table0[BYTE1(v18)] - CC_CAST_S_table1[v18] + CC_CAST_S_table2[HIBYTE(v18)]);
  v20 = __ROR4__(v19 + *(a2 + 48), -*(a2 + 52));
  v21 = ((CC_CAST_S_table1[v20] ^ CC_CAST_S_table0[BYTE1(v20)]) - CC_CAST_S_table2[HIBYTE(v20)] + CC_CAST_S_table3[BYTE2(v20)]) ^ v17;
  v22 = __ROR4__(*(a2 + 40) - v21, -*(a2 + 44));
  v23 = (((CC_CAST_S_table1[v22] + CC_CAST_S_table0[BYTE1(v22)]) ^ CC_CAST_S_table2[HIBYTE(v22)]) - CC_CAST_S_table3[BYTE2(v22)]) ^ v19;
  v24 = __ROR4__(v23 ^ *(a2 + 32), -*(a2 + 36));
  v25 = CC_CAST_S_table3[BYTE2(v24)] ^ v21 ^ (CC_CAST_S_table0[BYTE1(v24)] - CC_CAST_S_table1[v24] + CC_CAST_S_table2[HIBYTE(v24)]);
  v26 = __ROR4__(v25 + *(a2 + 24), -*(a2 + 28));
  v27 = ((CC_CAST_S_table1[v26] ^ CC_CAST_S_table0[BYTE1(v26)]) - CC_CAST_S_table2[HIBYTE(v26)] + CC_CAST_S_table3[BYTE2(v26)]) ^ v23;
  v28 = __ROR4__(*(a2 + 16) - v27, -*(a2 + 20));
  v29 = (((CC_CAST_S_table1[v28] + CC_CAST_S_table0[BYTE1(v28)]) ^ CC_CAST_S_table2[HIBYTE(v28)]) - CC_CAST_S_table3[BYTE2(v28)]) ^ v25;
  v30 = __ROR4__(v29 ^ *(a2 + 8), -*(a2 + 12));
  v31 = CC_CAST_S_table3[BYTE2(v30)] ^ v27 ^ (CC_CAST_S_table0[BYTE1(v30)] - CC_CAST_S_table1[v30] + CC_CAST_S_table2[HIBYTE(v30)]);
  v32 = __ROR4__(v31 + *a2, -*(a2 + 4));
  *result = ((CC_CAST_S_table1[v32] ^ CC_CAST_S_table0[BYTE1(v32)]) - CC_CAST_S_table2[HIBYTE(v32)] + CC_CAST_S_table3[BYTE2(v32)]) ^ v29;
  result[1] = v31;
  return result;
}

uint64_t ccz_muli(void *a1, uint64_t a2, unsigned int a3)
{
  v9[1] = *MEMORY[0x29EDCA608];
  v8 = timingsafe_enable_if_supported();
  v9[0] = a3;
  v7[0] = ccn_n(1, v9);
  v7[1] = 0;
  v7[2] = 1;
  v7[3] = v9;
  ccz_mul(a1, a2, v7);
  return cc_disable_dit_with_sb(&v8);
}

uint64_t ccrsa_generate_key_deterministic(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned int (**a10)(void, unint64_t, uint64_t))
{
  v48 = *MEMORY[0x29EDCA608];
  v46 = timingsafe_enable_if_supported();
  if (a9 == 1)
  {
    v37 = a2;
    v38 = a3;
    v39 = a4;
    memset(v47, 0, 512);
    v14 = ccaes_cbc_encrypt_mode();
    inited = ccdrbg_df_bc_init_internal(v47, v14, 0x10uLL);
    if (inited)
    {
      v35 = inited;
    }

    else
    {
      v45[0] = ccaes_ctr_crypt_mode();
      v45[1] = 16;
      v45[2] = 0;
      v45[3] = v47;
      v44 = 0;
      memset(v43, 0, sizeof(v43));
      ccdrbg_factory_nistctr(v43, v45);
      v16 = 9 * ((a1 + 63) >> 6);
      v17 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N((a1 + 63) >> 6);
      if (v16 <= v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = 9 * ((a1 + 63) >> 6);
      }

      v19 = 7 * ((a1 + 63) >> 6);
      v20 = v18 + v19;
      v21 = sizeof_struct_ccrns_mul_modulus();
      v22 = sizeof_struct_ccpolyzp_po2cyc();
      v23 = 21 * ((a1 + 63) >> 6) + 2;
      v24 = (v21 + v22 - 1) / v22 + v23;
      if (v20 > v24)
      {
        v24 = v20;
      }

      v25 = cc_malloc_clear((*&v43[0] + 8 * v24 + 7) & 0xFFFFFFFFFFFFFFF8);
      v41[0] = v25;
      v26 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N((a1 + 63) >> 6);
      if (v16 <= v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = 9 * ((a1 + 63) >> 6);
      }

      v28 = v27 + v19;
      v29 = sizeof_struct_ccrns_mul_modulus();
      v30 = sizeof_struct_ccpolyzp_po2cyc();
      if (v28 <= (v29 + v30 - 1) / v30 + v23)
      {
        v31 = (v29 + v30 - 1) / v30 + v23;
      }

      else
      {
        v31 = v28;
      }

      v41[1] = v31 + ((*&v43[0] + 7) >> 3);
      v41[2] = 0;
      v41[3] = cc_ws_alloc;
      v42 = cc_ws_free;
      if (v25)
      {
        v32 = cc_ws_alloc(v41, (*&v43[0] + 7) >> 3);
        v33 = ccdrbg_init_internal(v43);
        if (v33 || (memset(v40, 0, sizeof(v40)), v33 = ccrng_drbg_init_withdrbg(v40, v43, v32), v33))
        {
          v35 = v33;
        }

        else
        {
          ccrsa_generate_key_internal_ws(v41, a1, v37, v38, v39, v40, a10);
          v35 = v34;
          if (!v34)
          {
            ccdrbg_done(v43, v32);
          }
        }

        v42(v41);
      }

      else
      {
        v35 = 4294967283;
      }
    }
  }

  else
  {
    v35 = 4294967289;
  }

  cc_disable_dit_with_sb(&v46);
  return v35;
}

uint64_t cced448_verify_internal(uint64_t *a1, size_t a2, char *a3, char *a4, char *a5)
{
  v48 = *MEMORY[0x29EDCA608];
  v43 = cc_malloc_clear(0xA48uLL);
  v44 = xmmword_299DB0850;
  v45 = cc_ws_alloc;
  v46 = cc_ws_free;
  if (!v43)
  {
    return 4294967283;
  }

  v10 = *a1;
  v11 = cczp_n(a1);
  v12 = cc_ws_alloc(&v43, v11);
  v13 = v45(&v43, v11);
  v14 = v45(&v43, 3 * v11);
  if (v11)
  {
    v15 = (a4 + 57);
    v16 = v13;
    v17 = v11;
    do
    {
      v18 = *v15++;
      *v16++ = v18;
      --v17;
    }

    while (v17);
  }

  if (a4[113] || (v19 = cczp_prime(&a1[5 * v10 + 4]), (ccn_cmp_public_value(v11, v13, v19) & 0x80000000) == 0))
  {
    v36 = 4294967150;
  }

  else
  {
    v42 = v13;
    v20 = cczp_n(a1);
    if ((a5[56] & 0x7F) == 0)
    {
      v21 = v20;
      v41 = v12;
      v22 = *a1;
      v23 = &v14[*a1];
      if (v20)
      {
        v24 = a5;
        v25 = &v14[*a1];
        v26 = v20;
        do
        {
          v27 = *v24;
          v24 += 8;
          *v25++ = v27;
          --v26;
        }

        while (v26);
      }

      v28 = cczp_prime(a1);
      if ((ccn_cmp_public_value(v21, v23, v28) & 0x80000000) != 0)
      {
        v39 = a3;
        v40 = a2;
        v29 = &v14[2 * v22];
        v38 = *(&v44 + 1);
        v45(&v43, v21);
        v30 = v45(&v43, v21);
        v31 = v45(&v43, v21);
        ccn_seti(v21, v29, 1);
        cczp_sqr_ws(&v43, a1);
        cczp_mul_ws(&v43, a1);
        cczp_sub_ws(&v43, a1);
        cczp_sub_ws(&v43, a1);
        cczp_sqr_ws(&v43, a1);
        cczp_mul_ws(&v43, a1);
        cczp_sqr_ws(&v43, a1);
        cczp_mul_ws(&v43, a1);
        cczp_mul_ws(&v43, a1);
        cczp_mul_ws(&v43, a1);
        v32 = cczp_power_fast_ws(&v43, a1, v14, v14, &kPsub3div4);
        if (v32)
        {
LABEL_29:
          v36 = v32;
          goto LABEL_24;
        }

        cczp_mul_ws(&v43, a1);
        cczp_mul_ws(&v43, a1);
        cczp_sqr_ws(&v43, a1);
        cczp_mul_ws(&v43, a1);
        cczp_from_ws(&v43, a1);
        cczp_from_ws(&v43, a1);
        if (!ccn_cmp_public_value(v21, v30, v31))
        {
          cczp_from_ws(&v43, a1);
          v33 = a5[56];
          if (ccn_n(v21, v14) || (v33 & 0x80000000) == 0)
          {
            if ((*v14 & 1) == v33 >> 7)
            {
              cczp_negate(a1, v14, v14);
            }

            *(&v44 + 1) = v38;
            cced448_shake_to_scalar_ws(&v43, a1, v41, 0x39uLL, a4, 0x39uLL, a5, v40, v39);
            cced448_double_scalar_mult_ws(&v43, a1, v14, v42, v41);
            v32 = ccec_affinify_ws(&v43, a1);
            if (!v32)
            {
              v34 = 0;
              v35 = &v14[*a1];
              do
              {
                *&v47[v34 * 8] = v35[v34];
                ++v34;
              }

              while (v34 != 7);
              v47[56] = *v14 << 7;
              if (cc_cmp_safe_internal(57, v47, a4))
              {
                v36 = 4294967150;
              }

              else
              {
                v36 = 0;
              }

              goto LABEL_24;
            }

            goto LABEL_29;
          }
        }
      }
    }

    v36 = 4294967289;
  }

LABEL_24:
  *(&v44 + 1) = 0;
  v46(&v43);
  return v36;
}

uint64_t cced448_verify(size_t a1, char *a2, char *a3, char *a4)
{
  v11 = timingsafe_enable_if_supported();
  v8 = ccec_cp_ed448();
  v9 = cced448_verify_internal(v8, a1, a2, a3, a4);
  cc_disable_dit_with_sb(&v11);
  return v9;
}

uint64_t cckeccak_absorb_blocks(uint64_t result, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void *))
{
  if (a3)
  {
    v9 = result;
    v10 = 0;
    v11 = a2 >> 3;
    do
    {
      v12 = v9;
      v13 = v11;
      if (a2 >= 8)
      {
        do
        {
          v14 = *a4++;
          *v12++ ^= v14;
          --v13;
        }

        while (v13);
      }

      result = a5(v9);
      ++v10;
    }

    while (v10 != a3);
  }

  return result;
}

unint64_t cckeccak_absorb_blocks_parallel(unint64_t result, void *a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t a6, uint64_t *a7, uint64_t (*a8)(void *, void *))
{
  if (a3)
  {
    v14 = result;
    v15 = 0;
    v16 = result >> 3;
    do
    {
      v17 = a2;
      v18 = a5;
      v19 = v16;
      if (v14 >= 8)
      {
        do
        {
          v20 = *a4++;
          *v17++ ^= v20;
          v21 = *a7++;
          *v18++ ^= v21;
          --v19;
        }

        while (v19);
      }

      result = a8(a2, a5);
      ++v15;
    }

    while (v15 != a3);
  }

  return result;
}

uint64_t cckeccak_absorb_and_pad(uint64_t result, uint64_t a2, unint64_t a3, uint64_t *a4, unsigned int a5)
{
  v7 = result;
  v14[1] = *MEMORY[0x29EDCA608];
  v8 = a3 >> 3;
  if (a3 >= 8)
  {
    v10 = result;
    v11 = a3 >> 3;
    do
    {
      v12 = *a4++;
      *v10++ ^= v12;
      --v11;
    }

    while (v11);
    v9 = a3 >> 3;
  }

  else
  {
    v9 = 0;
  }

  v13 = a3 & 7;
  if ((a3 & 7) != 0)
  {
    v14[0] = 0;
    __memcpy_chk();
    *(v7 + 8 * v9) = *(v7 + 8 * v9);
    result = cc_clear(8uLL, v14);
  }

  *(v7 + 8 * v8) ^= a5 << (8 * v13);
  *(v7 + ((a2 - 1) & 0xFFFFFFFFFFFFFFF8)) ^= 128 << (8 * ((a2 - 1) & 7));
  return result;
}

uint64_t cckeccak_squeeze(uint64_t result, unint64_t a2, unint64_t a3, void *a4, uint64_t (*a5)(uint64_t *))
{
  v7 = a3;
  v8 = result;
  v18[1] = *MEMORY[0x29EDCA608];
  if (a3 >= a2)
  {
    v10 = a2 >> 3;
    do
    {
      result = a5(v8);
      v11 = v8;
      v12 = v10;
      if (a2 >= 8)
      {
        do
        {
          v13 = *v11++;
          *a4++ = v13;
          --v12;
        }

        while (v12);
      }

      v7 -= a2;
    }

    while (v7 >= a2);
  }

  if (v7)
  {
    result = a5(v8);
    if (v7 >= 8)
    {
      v14 = v7 >> 3;
      v15 = v8;
      v16 = v7 >> 3;
      do
      {
        v17 = *v15++;
        *a4++ = v17;
        --v16;
      }

      while (v16);
    }

    else
    {
      v14 = 0;
    }

    if ((v7 & 7) != 0)
    {
      v18[0] = v8[v14];
      memcpy(a4, v18, v7 & 7);
      return cc_clear(8uLL, v18);
    }
  }

  return result;
}

uint64_t (*cckeccak_get_permutation())(uint64_t *a1)
{
  if ((MEMORY[0xFFFFFC010] & 0x100000000) != 0)
  {
    return AccelerateCrypto_SHA3_keccak_hwassist;
  }

  else
  {
    return AccelerateCrypto_SHA3_keccak;
  }
}

uint64_t cckeccak_absorb_iovec(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5, void (*a6)(uint64_t))
{
  v31[25] = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v9 = 0;
    for (i = 0; i != a2; ++i)
    {
      v11 = a3 + 16 * i;
      v12 = *(v11 + 8);
      if (v12)
      {
        v13 = *v11;
        if (v9)
        {
          if (a4 - v9 >= v12)
          {
            v14 = *(v11 + 8);
          }

          else
          {
            v14 = a4 - v9;
          }

          memcpy(v31 + v9, v13, v14);
          v15 = v14 + v9;
          v12 -= v14;
          v13 = (v13 + v14);
        }

        else
        {
          v15 = 0;
        }

        v16 = v15 / a4;
        v28 = v15;
        if (v15 >= a4)
        {
          v17 = 0;
          v18 = v31;
          do
          {
            v19 = a1;
            v20 = a4 >> 3;
            if (a4 >= 8)
            {
              do
              {
                v21 = *v18++;
                *v19++ ^= v21;
                --v20;
              }

              while (v20);
            }

            a6(a1);
            ++v17;
          }

          while (v17 != v16);
        }

        if (v12 >= a4)
        {
          v22 = 0;
          do
          {
            v23 = a1;
            v24 = a4 >> 3;
            if (a4 >= 8)
            {
              do
              {
                v25 = *v13++;
                *v23++ ^= v25;
                --v24;
              }

              while (v24);
            }

            a6(a1);
            ++v22;
          }

          while (v22 != v12 / a4);
        }

        v9 = v12 % a4;
        if (v12 % a4)
        {
          __memcpy_chk();
        }

        else
        {
          v9 = v28 - v16 * a4;
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  cckeccak_absorb_and_pad(a1, a4, v9, v31, a5);
  return cc_clear(0xC8uLL, v31);
}

uint64_t cckeccak_oneshot_iovec(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, unint64_t a5, unsigned int a6)
{
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  cc_clear(0xC8uLL, v14);
  if ((MEMORY[0xFFFFFC010] & 0x100000000) != 0)
  {
    v12 = AccelerateCrypto_SHA3_keccak_hwassist;
  }

  else
  {
    v12 = AccelerateCrypto_SHA3_keccak;
  }

  cckeccak_absorb_iovec(v14, a1, a2, a5, a6, v12);
  cckeccak_squeeze(v14, a5, a3, a4, v12);
  return cc_clear(0xC8uLL, v14);
}

uint64_t cckeccak_oneshot(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, unint64_t a5, unsigned int a6)
{
  v7[2] = *MEMORY[0x29EDCA608];
  v7[0] = a2;
  v7[1] = a1;
  return cckeccak_oneshot_iovec(1, v7, a3, a4, a5, a6);
}

uint64_t frandom(_BYTE *a1, void (**a2)(void, uint64_t, _BYTE *))
{
  v4 = 0;
  while (1)
  {
    (*a2)(a2, 32, a1);
    v5 = 0;
    v6 = 0;
    a1[31] &= ~0x80u;
    do
    {
      v6 |= a1[v5++];
    }

    while (v5 != 32);
    if (v6)
    {
      v7 = a1[31] ^ 0x7F;
      v8 = 30;
      do
      {
        v7 |= ~a1[v8--];
      }

      while (v8);
      if (v7 | -(((-20 - *a1) & *a1 & 0x80) == 0))
      {
        break;
      }
    }

    if (v4++ >= 9)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return 0;
}

BOOL ccec_pairwise_consistency_check(uint64_t **a1, uint64_t (**a2)(void, unint64_t, void *))
{
  v12 = timingsafe_enable_if_supported();
  v4 = *a1;
  v5 = cc_malloc_clear(392 * **a1);
  v6 = 49 * *v4;
  v10[0] = v5;
  v10[1] = v6;
  v10[2] = 0;
  v10[3] = cc_ws_alloc;
  v11 = cc_ws_free;
  if (v5)
  {
    v9 = ccec_pairwise_consistency_check_ws(v10, a1, a2);
    v11(v10);
    v7 = v9 == 0;
  }

  else
  {
    v7 = 0;
  }

  cc_disable_dit_with_sb(&v12);
  return v7;
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

_DWORD *rmd160_compress(_DWORD *result, uint64_t a2, _DWORD *a3)
{
  v561 = result;
  if (a2)
  {
    v3 = *result;
    v4 = result[1];
    v5 = result[2];
    v6 = result[3];
    v7 = result[4];
    do
    {
      v570 = v6;
      v571 = v5;
      v573 = v3;
      v574 = a3;
      v564 = a2;
      v8 = *a3;
      HIDWORD(v10) = v5;
      LODWORD(v10) = v5;
      v9 = v10 >> 22;
      v11 = a3[2];
      v12 = a3[3];
      v13 = a3[4];
      v14 = a3[5];
      v15 = a3[6];
      v16 = a3[7];
      v17 = a3[8];
      v18 = a3[9];
      HIDWORD(v10) = (v5 ^ v4 ^ v6) + v3 + *a3;
      LODWORD(v10) = HIDWORD(v10);
      v19 = (v10 >> 21) + v7;
      v572 = v7;
      v20 = a3[1];
      HIDWORD(v10) = v20 + v7 + (v4 ^ __ROR4__(v5, 22) ^ v19);
      LODWORD(v10) = HIDWORD(v10);
      v21 = v10 >> 18;
      HIDWORD(v10) = v4;
      LODWORD(v10) = v4;
      v22 = v10 >> 22;
      v23 = a3[10];
      v24 = a3[11];
      v25 = v21 + v6;
      v26 = a3[12];
      LODWORD(v10) = v11 + v6 + (v19 ^ __ROR4__(v4, 22) ^ v25);
      HIDWORD(v10) = v10;
      v27 = v10 >> 17;
      v28 = a3[13];
      v29 = v574[14];
      v30 = v574[15];
      HIDWORD(v10) = v19;
      LODWORD(v10) = v19;
      v31 = v10 >> 22;
      v32 = v27 + v9;
      LODWORD(v10) = v12 + v9 + (v25 ^ __ROR4__(v19, 22) ^ v32);
      HIDWORD(v10) = v10;
      v33 = (v10 >> 20) + v22;
      HIDWORD(v10) = v25;
      LODWORD(v10) = v25;
      v34 = v10 >> 22;
      v35 = v13;
      LODWORD(v10) = v13 + v22 + (v32 ^ __ROR4__(v25, 22) ^ v33);
      HIDWORD(v10) = v10;
      v36 = v10 >> 27;
      HIDWORD(v10) = v32;
      LODWORD(v10) = v32;
      v37 = v10 >> 22;
      v38 = v36 + v31;
      LODWORD(v10) = v31 + v14 + (v33 ^ __ROR4__(v32, 22) ^ v38);
      HIDWORD(v10) = v10;
      v39 = (v10 >> 24) + v34;
      HIDWORD(v10) = v33;
      LODWORD(v10) = v33;
      v40 = v10 >> 22;
      LODWORD(v10) = v34 + v15 + (v38 ^ __ROR4__(v33, 22) ^ v39);
      HIDWORD(v10) = v10;
      v41 = v10 >> 25;
      HIDWORD(v10) = v38;
      LODWORD(v10) = v38;
      v42 = v10 >> 22;
      v43 = v41 + v37;
      LODWORD(v10) = v37 + v16 + (v39 ^ __ROR4__(v38, 22) ^ v43);
      HIDWORD(v10) = v10;
      v44 = (v10 >> 23) + v40;
      HIDWORD(v10) = v39;
      LODWORD(v10) = v39;
      v45 = v10 >> 22;
      LODWORD(v10) = v40 + v17 + (v43 ^ __ROR4__(v39, 22) ^ v44);
      HIDWORD(v10) = v10;
      v46 = v10 >> 21;
      HIDWORD(v10) = v43;
      LODWORD(v10) = v43;
      v47 = v10 >> 22;
      v48 = v46 + v42;
      LODWORD(v10) = v42 + v18 + (v44 ^ __ROR4__(v43, 22) ^ v48);
      HIDWORD(v10) = v10;
      v49 = (v10 >> 19) + v45;
      HIDWORD(v10) = v44;
      LODWORD(v10) = v44;
      v50 = v10 >> 22;
      v51 = v23;
      LODWORD(v10) = v45 + v23 + (v48 ^ __ROR4__(v44, 22) ^ v49);
      HIDWORD(v10) = v10;
      v52 = v10 >> 18;
      HIDWORD(v10) = v48;
      LODWORD(v10) = v48;
      v53 = v10 >> 22;
      v54 = v52 + v47;
      LODWORD(v10) = v47 + v24 + (v49 ^ __ROR4__(v48, 22) ^ v54);
      HIDWORD(v10) = v10;
      v55 = (v10 >> 17) + v50;
      HIDWORD(v10) = v49;
      LODWORD(v10) = v49;
      v56 = v10 >> 22;
      LODWORD(v10) = v50 + v26 + (v54 ^ __ROR4__(v49, 22) ^ v55);
      HIDWORD(v10) = v10;
      v57 = v10 >> 26;
      HIDWORD(v10) = v54;
      LODWORD(v10) = v54;
      v58 = v10 >> 22;
      v59 = v57 + v53;
      LODWORD(v10) = v53 + v28 + (v55 ^ __ROR4__(v54, 22) ^ v59);
      HIDWORD(v10) = v10;
      v60 = (v10 >> 25) + v56;
      HIDWORD(v10) = v55;
      LODWORD(v10) = v55;
      v61 = v10 >> 22;
      LODWORD(v10) = v56 + v29 + (v59 ^ __ROR4__(v55, 22) ^ v60);
      HIDWORD(v10) = v10;
      v62 = v10 >> 23;
      HIDWORD(v10) = v59;
      LODWORD(v10) = v59;
      v63 = v10 >> 22;
      v64 = v62 + v58;
      LODWORD(v10) = v58 + v30 + (v60 ^ __ROR4__(v59, 22) ^ v64);
      HIDWORD(v10) = v10;
      v65 = (v10 >> 24) + v61;
      HIDWORD(v10) = v60;
      LODWORD(v10) = v60;
      v66 = v10 >> 22;
      HIDWORD(v10) = v16 + 1518500249 + v61 + (v66 & ~v65) + (v65 & v64);
      LODWORD(v10) = HIDWORD(v10);
      v67 = (v10 >> 25) + v63;
      HIDWORD(v10) = v64;
      LODWORD(v10) = v64;
      v68 = v10 >> 22;
      v568 = v35;
      HIDWORD(v10) = v35 + 1518500249 + v63 + (v68 & ~v67) + (v67 & v65);
      LODWORD(v10) = HIDWORD(v10);
      v69 = (v10 >> 26) + v66;
      HIDWORD(v10) = v65;
      LODWORD(v10) = v65;
      v70 = v10 >> 22;
      HIDWORD(v10) = v28 + 1518500249 + v66 + (v70 & ~v69) + (v69 & v67);
      LODWORD(v10) = HIDWORD(v10);
      v71 = (v10 >> 24) + v68;
      HIDWORD(v10) = v67;
      LODWORD(v10) = v67;
      v72 = v10 >> 22;
      HIDWORD(v10) = v20 + 1518500249 + v68 + (v72 & ~v71) + (v71 & v69);
      LODWORD(v10) = HIDWORD(v10);
      v73 = (v10 >> 19) + v70;
      HIDWORD(v10) = v69;
      LODWORD(v10) = v69;
      v74 = v10 >> 22;
      HIDWORD(v10) = v23 + 1518500249 + v70 + (v74 & ~v73) + (v73 & v71);
      LODWORD(v10) = HIDWORD(v10);
      v75 = (v10 >> 21) + v72;
      HIDWORD(v10) = v71;
      LODWORD(v10) = v71;
      v76 = v10 >> 22;
      HIDWORD(v10) = v15 + 1518500249 + v72 + (v76 & ~v75) + (v75 & v73);
      LODWORD(v10) = HIDWORD(v10);
      v77 = (v10 >> 23) + v74;
      HIDWORD(v10) = v73;
      LODWORD(v10) = v73;
      v78 = v10 >> 22;
      HIDWORD(v10) = v30 + 1518500249 + v74 + (v78 & ~v77) + (v77 & v75);
      LODWORD(v10) = HIDWORD(v10);
      v79 = (v10 >> 25) + v76;
      HIDWORD(v10) = v75;
      LODWORD(v10) = v75;
      v80 = v10 >> 22;
      v569 = v12;
      HIDWORD(v10) = v12 + 1518500249 + v76 + (v80 & ~v79) + (v79 & v77);
      LODWORD(v10) = HIDWORD(v10);
      v81 = (v10 >> 17) + v78;
      HIDWORD(v10) = v77;
      LODWORD(v10) = v77;
      v82 = v10 >> 22;
      HIDWORD(v10) = v26 + 1518500249 + v78 + (v82 & ~v81) + (v81 & v79);
      LODWORD(v10) = HIDWORD(v10);
      v83 = (v10 >> 25) + v80;
      HIDWORD(v10) = v79;
      LODWORD(v10) = v79;
      v84 = v10 >> 22;
      HIDWORD(v10) = v8 + 1518500249 + v80 + (v84 & ~v83) + (v83 & v81);
      LODWORD(v10) = HIDWORD(v10);
      v85 = (v10 >> 20) + v82;
      HIDWORD(v10) = v81;
      LODWORD(v10) = v81;
      v86 = v10 >> 22;
      HIDWORD(v10) = v18 + 1518500249 + v82 + (v86 & ~v85) + (v85 & v83);
      LODWORD(v10) = HIDWORD(v10);
      v87 = (v10 >> 17) + v84;
      HIDWORD(v10) = v83;
      LODWORD(v10) = v83;
      v88 = v10 >> 22;
      HIDWORD(v10) = v14 + 1518500249 + v84 + (v88 & ~v87) + (v87 & v85);
      LODWORD(v10) = HIDWORD(v10);
      v89 = (v10 >> 23) + v86;
      HIDWORD(v10) = v85;
      LODWORD(v10) = v85;
      v90 = v10 >> 22;
      HIDWORD(v10) = v11 + 1518500249 + v86 + (v90 & ~v89) + (v89 & v87);
      LODWORD(v10) = HIDWORD(v10);
      v91 = (v10 >> 21) + v88;
      HIDWORD(v10) = v87;
      LODWORD(v10) = v87;
      v92 = v10 >> 22;
      v93 = v29 + 1518500249 + v88 + (v92 & ~v91) + (v91 & v89);
      HIDWORD(v10) = v89;
      LODWORD(v10) = v89;
      v94 = v10 >> 22;
      HIDWORD(v10) = v93;
      LODWORD(v10) = v93;
      v95 = (v10 >> 25) + v90;
      HIDWORD(v10) = v24 + 1518500249 + v90 + (v94 & ~v95) + (v95 & v91);
      LODWORD(v10) = HIDWORD(v10);
      v96 = v10 >> 19;
      HIDWORD(v10) = v91;
      LODWORD(v10) = v91;
      v97 = v10 >> 22;
      v98 = v96 + v92;
      v563 = v17;
      HIDWORD(v10) = v17 + 1518500249 + v92 + (v97 & ~v98) + (v98 & v95);
      LODWORD(v10) = HIDWORD(v10);
      v99 = (v10 >> 20) + v94;
      HIDWORD(v10) = v95;
      LODWORD(v10) = v95;
      v100 = v10 >> 22;
      LODWORD(v10) = v12 + 1859775393 + v94 + ((v99 | ~v98) ^ __ROR4__(v95, 22));
      HIDWORD(v10) = v10;
      v101 = (v10 >> 21) + v97;
      HIDWORD(v10) = v98;
      LODWORD(v10) = v98;
      v102 = v10 >> 22;
      v567 = v23;
      v103 = __PAIR64__(v99, __ROR4__(v98, 22));
      v104 = v23 + 1859775393 + v97 + ((v101 | ~v99) ^ v103);
      LODWORD(v103) = v99;
      v105 = v103 >> 22;
      HIDWORD(v103) = v104;
      LODWORD(v103) = v104;
      v106 = (v103 >> 19) + v100;
      LODWORD(v103) = v29 + 1859775393 + v100 + ((v106 | ~v101) ^ __ROR4__(v99, 22));
      HIDWORD(v103) = v103;
      v107 = (v103 >> 26) + v102;
      HIDWORD(v103) = v101;
      LODWORD(v103) = v101;
      v108 = v103 >> 22;
      LODWORD(v103) = v35 + 1859775393 + v102 + ((v107 | ~v106) ^ __ROR4__(v101, 22));
      HIDWORD(v103) = v103;
      v109 = (v103 >> 25) + v105;
      HIDWORD(v103) = v106;
      LODWORD(v103) = v106;
      v110 = v103 >> 22;
      v111 = __PAIR64__(v107, __ROR4__(v106, 22));
      v112 = v18 + 1859775393 + v105 + ((v109 | ~v107) ^ v111);
      LODWORD(v111) = v107;
      v113 = v111 >> 22;
      HIDWORD(v111) = v112;
      LODWORD(v111) = v112;
      v114 = (v111 >> 18) + v108;
      LODWORD(v111) = v30 + 1859775393 + v108 + ((v114 | ~v109) ^ __ROR4__(v107, 22));
      HIDWORD(v111) = v111;
      v115 = (v111 >> 23) + v110;
      HIDWORD(v111) = v109;
      LODWORD(v111) = v109;
      v116 = v111 >> 22;
      LODWORD(v111) = v17 + 1859775393 + v110 + ((v115 | ~v114) ^ __ROR4__(v109, 22));
      HIDWORD(v111) = v111;
      v117 = (v111 >> 19) + v113;
      HIDWORD(v111) = v114;
      LODWORD(v111) = v114;
      v118 = v111 >> 22;
      v119 = __PAIR64__(v115, __ROR4__(v114, 22));
      v120 = v20 + 1859775393 + v113 + ((v117 | ~v115) ^ v119);
      LODWORD(v119) = v115;
      v121 = v119 >> 22;
      HIDWORD(v119) = v120;
      LODWORD(v119) = v120;
      v122 = (v119 >> 17) + v116;
      LODWORD(v119) = v11 + 1859775393 + v116 + ((v122 | ~v117) ^ __ROR4__(v115, 22));
      HIDWORD(v119) = v119;
      v123 = (v119 >> 18) + v118;
      HIDWORD(v119) = v117;
      LODWORD(v119) = v117;
      v124 = v119 >> 22;
      LODWORD(v119) = v16 + 1859775393 + v118 + ((v123 | ~v122) ^ __ROR4__(v117, 22));
      HIDWORD(v119) = v119;
      v125 = (v119 >> 24) + v121;
      HIDWORD(v119) = v122;
      LODWORD(v119) = v122;
      v126 = v119 >> 22;
      v127 = __PAIR64__(v123, __ROR4__(v122, 22));
      v128 = v8 + 1859775393 + v121 + ((v125 | ~v123) ^ v127);
      LODWORD(v127) = v123;
      v129 = v127 >> 22;
      HIDWORD(v127) = v128;
      LODWORD(v127) = v128;
      v130 = (v127 >> 19) + v124;
      LODWORD(v127) = v15 + 1859775393 + v124 + ((v130 | ~v125) ^ __ROR4__(v123, 22));
      HIDWORD(v127) = v127;
      v131 = (v127 >> 26) + v126;
      HIDWORD(v127) = v125;
      LODWORD(v127) = v125;
      v132 = v127 >> 22;
      LODWORD(v127) = v28 + 1859775393 + v126 + ((v131 | ~v130) ^ __ROR4__(v125, 22));
      HIDWORD(v127) = v127;
      v133 = (v127 >> 27) + v129;
      HIDWORD(v127) = v130;
      LODWORD(v127) = v130;
      v134 = v127 >> 22;
      v135 = __PAIR64__(v131, __ROR4__(v130, 22));
      v136 = v24 + 1859775393 + v129 + ((v133 | ~v131) ^ v135);
      LODWORD(v135) = v131;
      v137 = v135 >> 22;
      HIDWORD(v135) = v136;
      LODWORD(v135) = v136;
      v138 = (v135 >> 20) + v132;
      v565 = v14;
      LODWORD(v135) = v14 + 1859775393 + v132 + ((v138 | ~v133) ^ __ROR4__(v131, 22));
      HIDWORD(v135) = v135;
      v139 = (v135 >> 25) + v134;
      HIDWORD(v135) = v133;
      LODWORD(v135) = v133;
      v140 = v135 >> 22;
      LODWORD(v135) = v26 + 1859775393 + v134 + ((v139 | ~v138) ^ __ROR4__(v133, 22));
      HIDWORD(v135) = v135;
      v141 = (v135 >> 27) + v137;
      HIDWORD(v135) = v138;
      LODWORD(v135) = v138;
      v142 = v135 >> 22;
      v562 = v20;
      LODWORD(v135) = v20 - 1894007588 + v137 + (v139 & ~__ROR4__(v138, 22)) + (v141 & __ROR4__(v138, 22));
      HIDWORD(v135) = v135;
      v143 = (v135 >> 21) + v140;
      HIDWORD(v135) = v139;
      LODWORD(v135) = v139;
      v144 = v135 >> 22;
      v566 = v18;
      LODWORD(v135) = v18 - 1894007588 + v140 + (v141 & ~__ROR4__(v139, 22)) + (v143 & __ROR4__(v139, 22));
      HIDWORD(v135) = v135;
      v145 = (v135 >> 20) + v142;
      v146 = v24 - 1894007588 + v142 + (v143 & ~__ROR4__(v141, 22)) + (v145 & __ROR4__(v141, 22));
      v147 = __PAIR64__(v146, __ROR4__(v143, 22));
      v148 = v23 - 1894007588 + v144 + (v145 & ~v147);
      LODWORD(v147) = v146;
      v149 = (v147 >> 18) + v144;
      HIDWORD(v147) = v573 + 1352829926 + ((v571 | ~v570) ^ v4) + v14;
      LODWORD(v147) = HIDWORD(v147);
      v150 = (v147 >> 24) + v572;
      v151 = v29;
      LODWORD(v147) = v572 + 1352829926 + v29 + (v150 ^ (v4 | ~__ROR4__(v571, 22)));
      HIDWORD(v147) = v147;
      v152 = (v147 >> 23) + v570;
      v153 = v570 + 1352829926 + v16 + (v152 ^ (v150 | ~__ROR4__(v4, 22)));
      v154 = __PAIR64__(v153, __ROR4__(v143, 22));
      v155 = v148 + (v149 & v154);
      LODWORD(v154) = v153;
      v156 = (v154 >> 23) + v9;
      LODWORD(v154) = v9 + 1352829926 + v8 + (v156 ^ (v152 | ~__ROR4__(v150, 22)));
      HIDWORD(v154) = v154;
      v157 = (v154 >> 21) + v22;
      v158 = __PAIR64__(v150, __ROR4__(v152, 22));
      v159 = v22 + 1352829926 + v566 + (v157 ^ (v156 | ~v158));
      LODWORD(v158) = v150;
      v160 = v158 >> 22;
      HIDWORD(v158) = v159;
      LODWORD(v158) = v159;
      v161 = (v158 >> 19) + v160;
      v162 = __PAIR64__(v141, __ROR4__(v156, 22));
      v163 = v11 + 1352829926 + v160 + (v161 ^ (v157 | ~v162));
      LODWORD(v162) = v141;
      v164 = v162 >> 22;
      HIDWORD(v162) = v155;
      LODWORD(v162) = v155;
      v165 = (v162 >> 17) + v164;
      HIDWORD(v162) = v152;
      LODWORD(v162) = v152;
      v166 = v162 >> 22;
      HIDWORD(v162) = v163;
      LODWORD(v162) = v163;
      v167 = v8;
      v168 = (v162 >> 17) + v166;
      v169 = __PAIR64__(v156, __ROR4__(v157, 22));
      v170 = v24 + 1352829926 + v166 + (v168 ^ (v161 | ~v169));
      LODWORD(v169) = v156;
      v171 = v169 >> 22;
      HIDWORD(v169) = v170;
      LODWORD(v169) = v170;
      v172 = (v169 >> 17) + v171;
      v173 = v568 + 1352829926 + v171;
      v174 = __PAIR64__(v143, __ROR4__(v145, 22));
      v175 = v8 - 1894007588 + v164 + (v149 & ~__ROR4__(v145, 22)) + (v165 & v174);
      LODWORD(v174) = v143;
      v176 = v174 >> 22;
      v177 = v17 - 1894007588 + v176 + (v165 & ~__ROR4__(v149, 22));
      v178 = __PAIR64__(v175, __ROR4__(v161, 22));
      v179 = v173 + (v172 ^ (v168 | ~v178));
      LODWORD(v178) = v175;
      v180 = (v178 >> 18) + v176;
      HIDWORD(v178) = v157;
      LODWORD(v178) = v157;
      v181 = v178 >> 22;
      HIDWORD(v178) = v179;
      LODWORD(v178) = v179;
      v182 = (v178 >> 27) + v181;
      v183 = __PAIR64__(v161, __ROR4__(v149, 22));
      v184 = v177 + (v180 & v183);
      LODWORD(v183) = v161;
      v185 = v183 >> 22;
      HIDWORD(v183) = v28 + 1352829926 + v181 + (v182 ^ (v172 | ~__ROR4__(v168, 22)));
      LODWORD(v183) = HIDWORD(v183);
      v186 = (v183 >> 25) + v185;
      v187 = __PAIR64__(v168, __ROR4__(v172, 22));
      v188 = v15 + 1352829926 + v185 + (v186 ^ (v182 | ~v187));
      LODWORD(v187) = v168;
      v189 = v187 >> 22;
      HIDWORD(v187) = v188;
      LODWORD(v187) = v188;
      v190 = (v187 >> 25) + v189;
      v191 = __PAIR64__(v145, __ROR4__(v182, 22));
      v192 = v30 + 1352829926 + v189 + (v190 ^ (v186 | ~v191));
      LODWORD(v191) = v145;
      v193 = v191 >> 22;
      HIDWORD(v191) = v184;
      LODWORD(v191) = v184;
      v194 = (v191 >> 17) + v193;
      HIDWORD(v191) = v172;
      LODWORD(v191) = v172;
      v195 = v191 >> 22;
      HIDWORD(v191) = v192;
      LODWORD(v191) = v192;
      v196 = (v191 >> 24) + v195;
      v197 = __PAIR64__(v182, __ROR4__(v186, 22));
      v198 = v563 + 1352829926 + v195 + (v196 ^ (v190 | ~v197));
      LODWORD(v197) = v182;
      v199 = v197 >> 22;
      HIDWORD(v197) = v198;
      LODWORD(v197) = v198;
      v200 = (v197 >> 21) + v199;
      v201 = __PAIR64__(v149, __ROR4__(v165, 22));
      v202 = v26 - 1894007588 + v193 + (v180 & ~__ROR4__(v165, 22)) + (v194 & v201);
      LODWORD(v201) = v149;
      v203 = v201 >> 22;
      v204 = v568 - 1894007588 + v203 + (v194 & ~__ROR4__(v180, 22));
      v205 = __PAIR64__(v202, __ROR4__(v190, 22));
      v206 = v20 + 1352829926 + v199 + (v200 ^ (v196 | ~v205));
      LODWORD(v205) = v202;
      v207 = (v205 >> 23) + v203;
      HIDWORD(v205) = v186;
      LODWORD(v205) = v186;
      v208 = v205 >> 22;
      HIDWORD(v205) = v206;
      LODWORD(v205) = v206;
      v209 = (v205 >> 18) + v208;
      v210 = __PAIR64__(v165, __ROR4__(v180, 22));
      v211 = v204 + (v207 & v210);
      LODWORD(v210) = v165;
      v212 = v210 >> 22;
      v213 = __PAIR64__(v190, __ROR4__(v194, 22));
      v214 = v28 - 1894007588 + v212 + (v207 & ~v213);
      LODWORD(v213) = v190;
      v215 = v213 >> 22;
      HIDWORD(v213) = v567 + 1352829926 + v208 + (v209 ^ (v200 | ~__ROR4__(v196, 22)));
      LODWORD(v213) = HIDWORD(v213);
      v216 = (v213 >> 18) + v215;
      v217 = __PAIR64__(v196, __ROR4__(v200, 22));
      v218 = v569 + 1352829926 + v215 + (v216 ^ (v209 | ~v217));
      LODWORD(v217) = v196;
      v219 = v217 >> 22;
      HIDWORD(v217) = v218;
      LODWORD(v217) = v218;
      v220 = (v217 >> 20) + v219;
      v221 = __PAIR64__(v200, __ROR4__(v209, 22));
      v222 = v26 + 1352829926 + v219 + (v220 ^ (v216 | ~v221));
      LODWORD(v221) = v200;
      v223 = v221 >> 22;
      HIDWORD(v221) = v222;
      LODWORD(v221) = v222;
      v224 = (v221 >> 26) + v223;
      v225 = v15;
      HIDWORD(v221) = v211;
      LODWORD(v221) = v211;
      v226 = (v221 >> 24) + v212;
      v227 = __PAIR64__(v180, __ROR4__(v194, 22));
      v228 = v214 + (v226 & v227);
      LODWORD(v227) = v180;
      v229 = v227 >> 22;
      v230 = __PAIR64__(v209, __ROR4__(v207, 22));
      v231 = v569 - 1894007588 + v229 + (v226 & ~v230);
      LODWORD(v230) = v209;
      v232 = v230 >> 22;
      HIDWORD(v230) = v15 + 1548603684 + v223 + (v220 & ~__ROR4__(v216, 22)) + (v224 & __ROR4__(v216, 22));
      LODWORD(v230) = HIDWORD(v230);
      v233 = (v230 >> 23) + v232;
      v234 = __PAIR64__(v228, __ROR4__(v220, 22));
      v235 = v24 + 1548603684 + v232 + (v224 & ~v234);
      LODWORD(v234) = v228;
      v236 = (v234 >> 23) + v229;
      v237 = __PAIR64__(v216, __ROR4__(v220, 22));
      v238 = v235 + (v233 & v237);
      LODWORD(v237) = v216;
      v239 = v237 >> 22;
      HIDWORD(v237) = v238;
      LODWORD(v237) = v238;
      v240 = (v237 >> 19) + v239;
      v241 = __PAIR64__(v220, __ROR4__(v224, 22));
      v242 = v569 + 1548603684 + v239 + (v233 & ~__ROR4__(v224, 22)) + (v240 & v241);
      LODWORD(v241) = v220;
      v243 = v241 >> 22;
      HIDWORD(v241) = v242;
      LODWORD(v241) = v242;
      v244 = (v241 >> 17) + v243;
      v245 = __PAIR64__(v194, __ROR4__(v207, 22));
      v246 = v231 + (v236 & v245);
      LODWORD(v245) = v194;
      v247 = v245 >> 22;
      v248 = __PAIR64__(v224, __ROR4__(v233, 22));
      v249 = v16 + 1548603684 + v243 + (v240 & ~__ROR4__(v233, 22)) + (v244 & v248);
      LODWORD(v248) = v224;
      v250 = v248 >> 22;
      HIDWORD(v248) = v249;
      LODWORD(v248) = v249;
      v251 = (v248 >> 25) + v250;
      v252 = v167 + 1548603684 + v250;
      HIDWORD(v248) = v246;
      LODWORD(v248) = v246;
      v253 = (v248 >> 18) + v247;
      v254 = __PAIR64__(v207, __ROR4__(v226, 22));
      v255 = v16 - 1894007588 + v247 + (v236 & ~__ROR4__(v226, 22)) + (v253 & v254);
      LODWORD(v254) = v207;
      v256 = v254 >> 22;
      v257 = __PAIR64__(v233, __ROR4__(v236, 22));
      v258 = v30 - 1894007588 + v256 + (v253 & ~v257);
      LODWORD(v257) = v233;
      v259 = v257 >> 22;
      HIDWORD(v257) = v252 + (v244 & ~__ROR4__(v240, 22)) + (v251 & __ROR4__(v240, 22));
      LODWORD(v257) = HIDWORD(v257);
      v260 = (v257 >> 20) + v259;
      v261 = __PAIR64__(v255, __ROR4__(v244, 22));
      v262 = v28 + 1548603684 + v259 + (v251 & ~v261);
      LODWORD(v261) = v255;
      v263 = (v261 >> 27) + v256;
      v264 = __PAIR64__(v240, __ROR4__(v244, 22));
      v265 = v262 + (v260 & v264);
      LODWORD(v264) = v240;
      v266 = v264 >> 22;
      HIDWORD(v264) = v265;
      LODWORD(v264) = v265;
      v267 = (v264 >> 24) + v266;
      v268 = __PAIR64__(v244, __ROR4__(v251, 22));
      v269 = v14 + 1548603684 + v266 + (v260 & ~__ROR4__(v251, 22)) + (v267 & v268);
      LODWORD(v268) = v244;
      v270 = v268 >> 22;
      HIDWORD(v268) = v269;
      LODWORD(v268) = v269;
      v271 = (v268 >> 23) + v270;
      v272 = __PAIR64__(v226, __ROR4__(v236, 22));
      v273 = v258 + (v263 & v272);
      LODWORD(v272) = v226;
      v274 = v272 >> 22;
      v275 = __PAIR64__(v251, __ROR4__(v260, 22));
      v276 = v567 + 1548603684 + v270 + (v267 & ~__ROR4__(v260, 22)) + (v271 & v275);
      LODWORD(v275) = v251;
      v277 = v275 >> 22;
      HIDWORD(v275) = v276;
      LODWORD(v275) = v276;
      v278 = (v275 >> 21) + v277;
      HIDWORD(v275) = v273;
      LODWORD(v275) = v273;
      v279 = (v275 >> 26) + v274;
      v280 = __PAIR64__(v236, __ROR4__(v253, 22));
      v281 = v151 - 1894007588 + v274 + (v263 & ~__ROR4__(v253, 22)) + (v279 & v280);
      LODWORD(v280) = v236;
      v282 = v280 >> 22;
      v283 = __PAIR64__(v260, __ROR4__(v263, 22));
      v284 = v14 - 1894007588 + v282 + (v279 & ~v283);
      LODWORD(v283) = v260;
      v285 = v283 >> 22;
      HIDWORD(v283) = v151 + 1548603684 + v277 + (v271 & ~__ROR4__(v267, 22)) + (v278 & __ROR4__(v267, 22));
      LODWORD(v283) = HIDWORD(v283);
      v286 = (v283 >> 25) + v285;
      v287 = __PAIR64__(v281, __ROR4__(v271, 22));
      v288 = v30 + 1548603684 + v285 + (v278 & ~v287);
      LODWORD(v287) = v281;
      v289 = (v287 >> 24) + v282;
      v290 = __PAIR64__(v267, __ROR4__(v271, 22));
      v291 = v288 + (v286 & v290);
      LODWORD(v290) = v267;
      v292 = v290 >> 22;
      HIDWORD(v290) = v291;
      LODWORD(v290) = v291;
      v293 = (v290 >> 25) + v292;
      v294 = __PAIR64__(v271, __ROR4__(v278, 22));
      v295 = v563 + 1548603684 + v292 + (v286 & ~__ROR4__(v278, 22)) + (v293 & v294);
      LODWORD(v294) = v271;
      v296 = v294 >> 22;
      HIDWORD(v294) = v295;
      LODWORD(v294) = v295;
      v297 = (v294 >> 20) + v296;
      v298 = v284 + (v289 & __ROR4__(v263, 22));
      v299 = __PAIR64__(v278, __ROR4__(v286, 22));
      v300 = v26 + 1548603684 + v296 + (v293 & ~__ROR4__(v286, 22)) + (v297 & v299);
      LODWORD(v299) = v278;
      v301 = v299 >> 22;
      HIDWORD(v299) = v300;
      LODWORD(v299) = v300;
      v302 = (v299 >> 25) + v301;
      HIDWORD(v299) = v253;
      LODWORD(v299) = v253;
      v303 = v299 >> 22;
      v304 = __PAIR64__(v298, __ROR4__(v293, 22));
      v305 = v568 + 1548603684 + v301 + (v297 & ~v304);
      LODWORD(v304) = v298;
      v306 = v15 - 1894007588 + v303;
      v307 = (v304 >> 26) + v303;
      v308 = __PAIR64__(v286, __ROR4__(v293, 22));
      v309 = v305 + (v302 & v308);
      LODWORD(v308) = v286;
      v310 = v308 >> 22;
      HIDWORD(v308) = v309;
      LODWORD(v308) = v309;
      v311 = (v308 >> 26) + v310;
      v312 = __PAIR64__(v293, __ROR4__(v297, 22));
      v313 = v566 + 1548603684 + v310 + (v302 & ~__ROR4__(v297, 22)) + (v311 & v312);
      LODWORD(v312) = v293;
      v314 = v312 >> 22;
      HIDWORD(v312) = v313;
      LODWORD(v312) = v313;
      v315 = (v312 >> 17) + v314;
      v316 = __PAIR64__(v263, __ROR4__(v279, 22));
      v317 = v306 + (v289 & ~__ROR4__(v279, 22)) + (v307 & v316);
      LODWORD(v316) = v263;
      v318 = v316 >> 22;
      v319 = v11 - 1894007588 + v318 + (v307 & ~__ROR4__(v289, 22));
      v320 = __PAIR64__(v297, __ROR4__(v302, 22));
      v321 = v20 + 1548603684 + v314 + (v311 & ~__ROR4__(v302, 22)) + (v315 & v320);
      LODWORD(v320) = v297;
      v322 = v320 >> 22;
      HIDWORD(v320) = v321;
      LODWORD(v320) = v321;
      v323 = (v320 >> 19) + v322;
      v324 = __PAIR64__(v317, __ROR4__(v311, 22));
      v325 = v11 + 1548603684 + v322 + (v315 & ~__ROR4__(v311, 22)) + (v323 & v324);
      LODWORD(v324) = v317;
      v326 = (v324 >> 27) + v318;
      HIDWORD(v324) = v302;
      LODWORD(v324) = v302;
      v327 = v324 >> 22;
      HIDWORD(v324) = v325;
      LODWORD(v324) = v325;
      v328 = (v324 >> 21) + v327;
      v329 = v30 + 1836072691 + v327 + ((v328 | ~v323) ^ __ROR4__(v315, 22));
      v330 = __PAIR64__(v311, __ROR4__(v289, 22));
      v331 = v319 + (v326 & v330);
      LODWORD(v330) = v311;
      v332 = v330 >> 22;
      HIDWORD(v330) = v329;
      LODWORD(v330) = v329;
      v333 = (v330 >> 23) + v332;
      v334 = __PAIR64__(v279, __ROR4__(v323, 22));
      v335 = v14 + 1836072691 + v332 + ((v333 | ~v328) ^ v334);
      LODWORD(v334) = v279;
      v336 = v334 >> 22;
      HIDWORD(v334) = v315;
      LODWORD(v334) = v315;
      v337 = v334 >> 22;
      HIDWORD(v334) = v335;
      LODWORD(v334) = v335;
      v338 = (v334 >> 25) + v337;
      HIDWORD(v334) = v331;
      LODWORD(v334) = v331;
      v339 = (v334 >> 20) + v336;
      v340 = __PAIR64__(v323, __ROR4__(v307, 22));
      v341 = v568 - 1454113458 + v336 + (v339 ^ (v326 | ~v340));
      LODWORD(v340) = v323;
      v342 = v340 >> 22;
      HIDWORD(v340) = v20 + 1836072691 + v337 + ((v338 | ~v333) ^ __ROR4__(v328, 22));
      LODWORD(v340) = HIDWORD(v340);
      v343 = (v340 >> 17) + v342;
      v344 = __PAIR64__(v289, __ROR4__(v333, 22));
      v345 = v569 + 1836072691 + v342 + ((v343 | ~v338) ^ v344);
      LODWORD(v344) = v289;
      v346 = v344 >> 22;
      HIDWORD(v344) = v328;
      LODWORD(v344) = v328;
      v347 = v344 >> 22;
      HIDWORD(v344) = v345;
      LODWORD(v344) = v345;
      v348 = (v344 >> 21) + v347;
      HIDWORD(v344) = v341;
      LODWORD(v344) = v341;
      v349 = v167 - 1454113458 + v346;
      v350 = (v344 >> 23) + v346;
      v351 = v16 + 1836072691 + v347 + ((v348 | ~v343) ^ __ROR4__(v338, 22));
      v352 = __PAIR64__(v333, __ROR4__(v326, 22));
      v353 = v349 + (v350 ^ (v339 | ~v352));
      LODWORD(v352) = v333;
      v354 = v352 >> 22;
      HIDWORD(v352) = v351;
      LODWORD(v352) = v351;
      v355 = (v352 >> 24) + v354;
      v356 = __PAIR64__(v307, __ROR4__(v343, 22));
      v357 = v151 + 1836072691 + v354 + ((v355 | ~v348) ^ v356);
      LODWORD(v356) = v307;
      v358 = v356 >> 22;
      HIDWORD(v356) = v338;
      LODWORD(v356) = v338;
      v359 = v356 >> 22;
      HIDWORD(v356) = v357;
      LODWORD(v356) = v357;
      v360 = (v356 >> 26) + v359;
      HIDWORD(v356) = v353;
      LODWORD(v356) = v353;
      v361 = (v356 >> 17) + v358;
      v362 = __PAIR64__(v343, __ROR4__(v339, 22));
      v363 = v14 - 1454113458 + v358 + (v361 ^ (v350 | ~v362));
      LODWORD(v362) = v343;
      v364 = v362 >> 22;
      HIDWORD(v362) = v15 + 1836072691 + v359 + ((v360 | ~v355) ^ __ROR4__(v348, 22));
      LODWORD(v362) = HIDWORD(v362);
      v365 = (v362 >> 26) + v364;
      v366 = __PAIR64__(v326, __ROR4__(v355, 22));
      v367 = v566 + 1836072691 + v364 + ((v365 | ~v360) ^ v366);
      LODWORD(v366) = v326;
      v368 = v366 >> 22;
      HIDWORD(v366) = v348;
      LODWORD(v366) = v348;
      v369 = v366 >> 22;
      HIDWORD(v366) = v367;
      LODWORD(v366) = v367;
      v370 = (v366 >> 18) + v369;
      HIDWORD(v366) = v363;
      LODWORD(v366) = v363;
      v371 = v566 - 1454113458 + v368;
      v372 = (v366 >> 27) + v368;
      v373 = v24 + 1836072691 + v369 + ((v370 | ~v365) ^ __ROR4__(v360, 22));
      v374 = __PAIR64__(v355, __ROR4__(v350, 22));
      v375 = v371 + (v372 ^ (v361 | ~v374));
      LODWORD(v374) = v355;
      v376 = v374 >> 22;
      HIDWORD(v374) = v373;
      LODWORD(v374) = v373;
      v377 = (v374 >> 20) + v376;
      v378 = __PAIR64__(v339, __ROR4__(v365, 22));
      v379 = v563 + 1836072691 + v376 + ((v377 | ~v370) ^ v378);
      LODWORD(v378) = v339;
      v380 = v378 >> 22;
      HIDWORD(v378) = v360;
      LODWORD(v378) = v360;
      v381 = v378 >> 22;
      HIDWORD(v378) = v379;
      LODWORD(v378) = v379;
      v382 = (v378 >> 19) + v381;
      HIDWORD(v378) = v375;
      LODWORD(v378) = v375;
      v383 = v16 - 1454113458 + v380;
      v384 = (v378 >> 21) + v380;
      v385 = v26 + 1836072691 + v381 + ((v382 | ~v377) ^ __ROR4__(v370, 22));
      v386 = __PAIR64__(v365, __ROR4__(v361, 22));
      v387 = v383 + (v384 ^ (v372 | ~v386));
      LODWORD(v386) = v365;
      v388 = v386 >> 22;
      HIDWORD(v386) = v385;
      LODWORD(v386) = v385;
      v389 = (v386 >> 27) + v388;
      v390 = __PAIR64__(v350, __ROR4__(v377, 22));
      v391 = v11 + 1836072691 + v388 + ((v389 | ~v382) ^ v390);
      LODWORD(v390) = v350;
      v392 = v390 >> 22;
      HIDWORD(v390) = v370;
      LODWORD(v390) = v370;
      v393 = v390 >> 22;
      HIDWORD(v390) = v391;
      LODWORD(v390) = v391;
      v394 = (v390 >> 18) + v393;
      HIDWORD(v390) = v387;
      LODWORD(v390) = v387;
      v395 = v26 - 1454113458 + v392;
      v396 = (v390 >> 26) + v392;
      v397 = __PAIR64__(v377, __ROR4__(v372, 22));
      v398 = v395 + (v396 ^ (v384 | ~v397));
      LODWORD(v397) = v377;
      v399 = v397 >> 22;
      HIDWORD(v397) = v567 + 1836072691 + v393 + ((v394 | ~v389) ^ __ROR4__(v382, 22));
      LODWORD(v397) = HIDWORD(v397);
      v400 = (v397 >> 19) + v399;
      v401 = __PAIR64__(v361, __ROR4__(v389, 22));
      v402 = v167 + 1836072691 + v399 + ((v400 | ~v394) ^ v401);
      LODWORD(v401) = v361;
      v403 = v401 >> 22;
      HIDWORD(v401) = v382;
      LODWORD(v401) = v382;
      v404 = v401 >> 22;
      HIDWORD(v401) = v402;
      LODWORD(v401) = v402;
      v405 = (v401 >> 19) + v404;
      HIDWORD(v401) = v398;
      LODWORD(v401) = v398;
      v406 = v11 - 1454113458 + v403;
      v407 = (v401 >> 24) + v403;
      v408 = v568 + 1836072691 + v404 + ((v405 | ~v400) ^ __ROR4__(v394, 22));
      v409 = __PAIR64__(v389, __ROR4__(v384, 22));
      v410 = v406 + (v407 ^ (v396 | ~v409));
      LODWORD(v409) = v389;
      v411 = v409 >> 22;
      HIDWORD(v409) = v408;
      LODWORD(v409) = v408;
      v412 = (v409 >> 25) + v411;
      v413 = __PAIR64__(v394, __ROR4__(v400, 22));
      v414 = v28 + 1836072691 + v411 + ((v412 | ~v405) ^ v413);
      LODWORD(v413) = v394;
      v415 = v413 >> 22;
      HIDWORD(v413) = v414;
      LODWORD(v413) = v414;
      v416 = (v413 >> 27) + v415;
      HIDWORD(v413) = v405;
      LODWORD(v413) = v405;
      v417 = v413 >> 22;
      HIDWORD(v413) = v372;
      LODWORD(v413) = v372;
      v418 = v413 >> 22;
      v419 = v563 + 2053994217 + v415 + (v417 & ~v416) + (v416 & v412);
      HIDWORD(v413) = v410;
      LODWORD(v413) = v410;
      v420 = v567 - 1454113458 + v418;
      v421 = (v413 >> 19) + v418;
      HIDWORD(v413) = v400;
      LODWORD(v413) = v400;
      v422 = v413 >> 22;
      HIDWORD(v413) = v419;
      LODWORD(v413) = v419;
      v423 = v413 >> 17;
      v424 = __PAIR64__(v412, __ROR4__(v396, 22));
      v425 = v420 + (v421 ^ (v407 | ~v424));
      v426 = v423 + v422;
      LODWORD(v424) = v412;
      v427 = v424 >> 22;
      v428 = v15 + 2053994217 + v422 + (v427 & ~v426) + (v426 & v416);
      HIDWORD(v424) = v384;
      LODWORD(v424) = v384;
      v429 = v424 >> 22;
      HIDWORD(v424) = v425;
      LODWORD(v424) = v425;
      v430 = (v424 >> 20) + v429;
      HIDWORD(v424) = v428;
      LODWORD(v424) = v428;
      v431 = v574[14];
      v432 = (v424 >> 27) + v417;
      HIDWORD(v424) = v416;
      LODWORD(v424) = v416;
      v433 = v424 >> 22;
      HIDWORD(v424) = v568 + 2053994217 + v417 + (v433 & ~v432) + (v432 & v426);
      LODWORD(v424) = HIDWORD(v424);
      v434 = (v424 >> 24) + v427;
      HIDWORD(v424) = v426;
      LODWORD(v424) = v426;
      v435 = v424 >> 22;
      HIDWORD(v424) = v562 + 2053994217 + v427 + (v435 & ~v434) + (v434 & v432);
      LODWORD(v424) = HIDWORD(v424);
      v436 = (v424 >> 21) + v433;
      HIDWORD(v424) = v432;
      LODWORD(v424) = v432;
      v437 = v424 >> 22;
      HIDWORD(v424) = v396;
      LODWORD(v424) = v396;
      v438 = v424 >> 22;
      HIDWORD(v424) = v151 - 1454113458 + v429 + (v430 ^ (v421 | ~__ROR4__(v407, 22)));
      LODWORD(v424) = HIDWORD(v424);
      v439 = v562 - 1454113458 + v438;
      v440 = (v424 >> 27) + v438;
      HIDWORD(v424) = v569 + 2053994217 + v433 + (v437 & ~v436) + (v436 & v434);
      LODWORD(v424) = HIDWORD(v424);
      v441 = (v424 >> 18) + v435;
      HIDWORD(v424) = v434;
      LODWORD(v424) = v434;
      v442 = v424 >> 22;
      v443 = v24 + 2053994217 + v435 + (v442 & ~v441);
      v444 = v439 + (v440 ^ (v430 | ~__ROR4__(v421, 22)));
      HIDWORD(v424) = v443 + (v441 & v436);
      LODWORD(v424) = HIDWORD(v424);
      v445 = (v424 >> 18) + v437;
      v446 = v30 + 2053994217 + v437;
      HIDWORD(v424) = v407;
      LODWORD(v424) = v407;
      v447 = v424 >> 22;
      HIDWORD(v424) = v436;
      LODWORD(v424) = v436;
      v448 = v424 >> 22;
      v449 = v446 + (v448 & ~v445);
      HIDWORD(v424) = v444;
      LODWORD(v424) = v444;
      v450 = v569 - 1454113458 + v447;
      v451 = (v424 >> 20) + v447;
      HIDWORD(v424) = v449 + (v445 & v441);
      LODWORD(v424) = HIDWORD(v424);
      v452 = v424 >> 26;
      v453 = __PAIR64__(v441, __ROR4__(v430, 22));
      v454 = v450 + (v451 ^ (v440 | ~v453));
      v455 = v452 + v442;
      LODWORD(v453) = v441;
      v456 = v453 >> 22;
      HIDWORD(v453) = v421;
      LODWORD(v453) = v421;
      v457 = v453 >> 22;
      HIDWORD(v453) = v454;
      LODWORD(v453) = v454;
      v458 = (v453 >> 19) + v457;
      HIDWORD(v453) = v167 + 2053994217 + v442 + (v456 & ~v455) + (v455 & v445);
      LODWORD(v453) = HIDWORD(v453);
      v459 = (v453 >> 18) + v448;
      HIDWORD(v453) = v445;
      LODWORD(v453) = v445;
      v460 = v453 >> 22;
      HIDWORD(v453) = v565 + 2053994217 + v448 + (v460 & ~v459) + (v459 & v455);
      LODWORD(v453) = HIDWORD(v453);
      v461 = (v453 >> 26) + v456;
      HIDWORD(v453) = v455;
      LODWORD(v453) = v455;
      v462 = v453 >> 22;
      HIDWORD(v453) = v26 + 2053994217 + v456 + (v462 & ~v461) + (v461 & v459);
      LODWORD(v453) = HIDWORD(v453);
      v463 = (v453 >> 23) + v460;
      HIDWORD(v453) = v459;
      LODWORD(v453) = v459;
      v464 = v453 >> 22;
      HIDWORD(v453) = v430;
      LODWORD(v453) = v430;
      v465 = v453 >> 22;
      HIDWORD(v453) = v563 - 1454113458 + v457 + (v458 ^ (v451 | ~__ROR4__(v440, 22)));
      LODWORD(v453) = HIDWORD(v453);
      v466 = v24 - 1454113458 + v465;
      v467 = (v453 >> 18) + v465;
      HIDWORD(v453) = v11 + 2053994217 + v460 + (v464 & ~v463) + (v463 & v461);
      LODWORD(v453) = HIDWORD(v453);
      v468 = (v453 >> 20) + v462;
      HIDWORD(v453) = v461;
      LODWORD(v453) = v461;
      v469 = v453 >> 22;
      v470 = v466 + (v467 ^ (v458 | ~__ROR4__(v451, 22)));
      HIDWORD(v453) = v28 + 2053994217 + v462 + (v469 & ~v468) + (v468 & v463);
      LODWORD(v453) = HIDWORD(v453);
      v471 = (v453 >> 23) + v464;
      v472 = v566 + 2053994217 + v464;
      HIDWORD(v453) = v440;
      LODWORD(v453) = v440;
      v473 = v453 >> 22;
      HIDWORD(v453) = v463;
      LODWORD(v453) = v463;
      v474 = v453 >> 22;
      v475 = v472 + (v474 & ~v471);
      HIDWORD(v453) = v470;
      LODWORD(v453) = v470;
      v476 = v15 - 1454113458 + v473;
      v477 = (v453 >> 21) + v473;
      HIDWORD(v453) = v475 + (v471 & v468);
      LODWORD(v453) = HIDWORD(v453);
      v478 = v453 >> 20;
      v479 = __PAIR64__(v468, __ROR4__(v458, 22));
      v480 = v476 + (v477 ^ (v467 | ~v479));
      v481 = v478 + v469;
      LODWORD(v479) = v468;
      v482 = v479 >> 22;
      v483 = v16 + 2053994217 + v469 + (v482 & ~(v478 + v469)) + ((v478 + v469) & v471);
      HIDWORD(v479) = v451;
      LODWORD(v479) = v451;
      v484 = v479 >> 22;
      HIDWORD(v479) = v480;
      LODWORD(v479) = v480;
      v485 = (v479 >> 24) + v484;
      HIDWORD(v479) = v483;
      LODWORD(v479) = v483;
      v486 = (v479 >> 27) + v474;
      HIDWORD(v479) = v471;
      LODWORD(v479) = v471;
      v487 = v479 >> 22;
      HIDWORD(v479) = v51 + 2053994217 + v474 + (v487 & ~v486) + (v486 & v481);
      LODWORD(v479) = HIDWORD(v479);
      v488 = (v479 >> 17) + v482;
      HIDWORD(v479) = v481;
      LODWORD(v479) = v481;
      v489 = v479 >> 22;
      HIDWORD(v479) = v431 + 2053994217 + v482 + (v489 & ~v488) + (v488 & v486);
      LODWORD(v479) = HIDWORD(v479);
      v490 = (v479 >> 24) + v487;
      LODWORD(v479) = v487 + v26 + (v488 ^ __ROR4__(v486, 22) ^ v490);
      HIDWORD(v479) = v479;
      v491 = (v479 >> 24) + v489;
      v492 = __PAIR64__(v486, __ROR4__(v488, 22));
      v493 = v490 ^ v492 ^ v491;
      LODWORD(v492) = v486;
      v494 = v492 >> 22;
      HIDWORD(v492) = v489 + v30 + v493;
      LODWORD(v492) = HIDWORD(v492);
      v495 = (v492 >> 27) + v494;
      v496 = __PAIR64__(v488, __ROR4__(v490, 22));
      v497 = v494 + v567 + (v491 ^ v496 ^ v495);
      LODWORD(v496) = v488;
      v498 = v496 >> 22;
      HIDWORD(v496) = v497;
      LODWORD(v496) = v497;
      v499 = (v496 >> 20) + v498;
      v500 = __PAIR64__(v490, __ROR4__(v491, 22));
      v501 = v495 ^ v500 ^ v499;
      LODWORD(v500) = v490;
      v502 = v500 >> 22;
      HIDWORD(v500) = v498 + v568 + v501;
      LODWORD(v500) = HIDWORD(v500);
      v503 = (v500 >> 23) + v502;
      v504 = __PAIR64__(v491, __ROR4__(v495, 22));
      v505 = v502 + v562 + (v499 ^ v504 ^ v503);
      LODWORD(v504) = v491;
      v506 = v504 >> 22;
      HIDWORD(v504) = v505;
      LODWORD(v504) = v505;
      v507 = (v504 >> 20) + v506;
      v508 = __PAIR64__(v495, __ROR4__(v499, 22));
      v509 = v503 ^ v508 ^ v507;
      LODWORD(v508) = v495;
      v510 = v508 >> 22;
      HIDWORD(v508) = v506 + v565 + v509;
      LODWORD(v508) = HIDWORD(v508);
      v511 = (v508 >> 27) + v510;
      v512 = __PAIR64__(v499, __ROR4__(v503, 22));
      v513 = v510 + v563 + (v507 ^ v512 ^ v511);
      LODWORD(v512) = v499;
      v514 = v512 >> 22;
      HIDWORD(v512) = v513;
      LODWORD(v512) = v513;
      v515 = (v512 >> 18) + v514;
      v516 = __PAIR64__(v503, __ROR4__(v507, 22));
      v517 = v511 ^ v516 ^ v515;
      LODWORD(v516) = v503;
      v518 = v516 >> 22;
      HIDWORD(v516) = v514 + v16 + v517;
      LODWORD(v516) = HIDWORD(v516);
      v519 = (v516 >> 26) + v518;
      v520 = __PAIR64__(v507, __ROR4__(v511, 22));
      v521 = v518 + v225 + (v515 ^ v520 ^ v519);
      LODWORD(v520) = v507;
      v522 = v520 >> 22;
      HIDWORD(v520) = v521;
      LODWORD(v520) = v521;
      v523 = (v520 >> 24) + v522;
      v524 = __PAIR64__(v511, __ROR4__(v467, 22));
      v525 = v485 ^ (v477 | ~v524);
      LODWORD(v524) = v511;
      v526 = v524 >> 22;
      HIDWORD(v524) = v522 + v11 + (v519 ^ __ROR4__(v515, 22) ^ v523);
      LODWORD(v524) = HIDWORD(v524);
      v527 = v30 - 1454113458 + v484 + v525;
      v528 = (v524 >> 19) + v526;
      v529 = __PAIR64__(v515, __ROR4__(v519, 22));
      v530 = v523 ^ v529 ^ v528;
      LODWORD(v529) = v515;
      v531 = v529 >> 22;
      HIDWORD(v529) = v526 + v28 + v530;
      LODWORD(v529) = HIDWORD(v529);
      v532 = (v529 >> 26) + v531;
      v533 = __PAIR64__(v519, __ROR4__(v523, 22));
      v534 = v531 + v431 + (v528 ^ v533 ^ v532);
      LODWORD(v533) = v519;
      v535 = v533 >> 22;
      HIDWORD(v533) = v534;
      LODWORD(v533) = v534;
      result = ((v533 >> 27) + v535);
      v536 = __PAIR64__(v523, __ROR4__(v528, 22));
      v537 = v532 ^ v536 ^ result;
      LODWORD(v536) = v523;
      v538 = v536 >> 22;
      HIDWORD(v536) = v535 + v167 + v537;
      LODWORD(v536) = HIDWORD(v536);
      v539 = (v536 >> 17) + v538;
      v540 = __PAIR64__(v528, __ROR4__(v532, 22));
      v541 = v538 + v569 + (result ^ v540 ^ v539);
      LODWORD(v540) = v528;
      v542 = v540 >> 22;
      HIDWORD(v540) = v541;
      LODWORD(v540) = v541;
      v543 = (v540 >> 19) + v542;
      v544 = __PAIR64__(v458, __ROR4__(result, 22));
      v545 = v539 ^ v544 ^ v543;
      LODWORD(v544) = v458;
      v546 = v544 >> 22;
      v547 = v542 + v566 + v545;
      HIDWORD(v544) = v527;
      LODWORD(v544) = v527;
      v548 = v28 - 1454113458 + v546;
      v549 = (v544 >> 27) + v546;
      v551 = __PAIR64__(v532, __ROR4__(v477, 22));
      v550 = v485 | ~v551;
      LODWORD(v551) = v532;
      v552 = v551 >> 22;
      HIDWORD(v551) = v547;
      LODWORD(v551) = v547;
      v553 = v548 + (v549 ^ v550);
      v554 = (v551 >> 21) + v552;
      v555 = __PAIR64__(v543, __ROR4__(v539, 22));
      v556 = v552 + v24 + (v543 ^ v555 ^ v554);
      LODWORD(v555) = v543;
      v557 = v549 + v4 + (v555 >> 22);
      HIDWORD(v555) = v539;
      LODWORD(v555) = v539;
      v558 = v571 + (v555 >> 22);
      HIDWORD(v555) = v485;
      LODWORD(v555) = v485;
      v4 = (v555 >> 22) + v558;
      HIDWORD(v555) = result;
      LODWORD(v555) = result;
      v559 = v555 >> 22;
      HIDWORD(v555) = v477;
      LODWORD(v555) = v477;
      v5 = (v555 >> 22) + v570 + v559;
      HIDWORD(v555) = v467;
      LODWORD(v555) = v467;
      v560 = v555 >> 22;
      HIDWORD(v555) = v556;
      LODWORD(v555) = v556;
      v6 = v560 + v572 + v559 + (v555 >> 21);
      HIDWORD(v555) = v553;
      LODWORD(v555) = v553;
      v7 = v560 + v573 + v554 + (v555 >> 26);
      v561[2] = v5;
      v561[3] = v6;
      v561[4] = v7;
      *v561 = v557;
      v561[1] = v4;
      a3 = v574 + 16;
      v3 = v557;
      a2 = v564 - 1;
    }

    while (v564 != 1);
  }

  return result;
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

uint64_t ccder_blob_encode_eckey(uint64_t *a1, uint64_t a2, uint64_t a3, const void *a4, unint64_t a5, const void *a6)
{
  v14 = timingsafe_enable_if_supported();
  v12 = ccder_blob_encode_eckey_internal(a1, a2, a3, a4, a5, a6);
  cc_disable_dit_with_sb(&v14);
  return v12;
}

uint64_t ccsrp_digest_ccn_ws(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, int a5)
{
  v10 = ccdh_gp_n(a2[1]);
  v11 = *(a1 + 16);
  v12 = (*(a1 + 24))(a1, v10);
  v13 = ccdh_gp_n(a2[1]);
  v14 = ccdh_gp_n(a2[1]);
  v15 = ccn_write_uint_padded_ct_internal(v13, a3, 8 * v14, v12);
  if (a5)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = *a2;
  v18 = ccdh_gp_n(a2[1]);
  result = ccdigest_internal(v17, 8 * v18 - v16, &v12[v16], a4);
  *(a1 + 16) = v11;
  return result;
}

unint64_t *ccsrp_digest_update_ccn_ws(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, int a5)
{
  v10 = ccdh_gp_n(*(a2 + 8));
  v11 = *(a1 + 16);
  v12 = (*(a1 + 24))(a1, v10);
  v13 = ccdh_gp_n(*(a2 + 8));
  v14 = ccdh_gp_n(*(a2 + 8));
  v15 = ccn_write_uint_padded_ct_internal(v13, a4, 8 * v14, v12);
  if (a5)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = *a2;
  v18 = ccdh_gp_n(*(a2 + 8));
  result = ccdigest_update_internal(v17, a3, 8 * v18 - v16, &v12[v16]);
  *(a1 + 16) = v11;
  return result;
}

uint64_t ccsrp_digest_ccn_ccn_ws(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, rsize_t a6, int a7)
{
  v20 = &v20;
  v22 = *MEMORY[0x29EDCA608];
  v14 = *a2;
  MEMORY[0x2A1C7C4A8](a1);
  v16 = &v21[-v15 - 8];
  ccdigest_init_internal(v14, &v21[-v15 - 8]);
  v17 = *(a1 + 16);
  if (a4)
  {
    ccsrp_digest_update_ccn_ws(a1, a2, v16, a4, a7);
  }

  ccsrp_digest_update_ccn_ws(a1, a2, v16, a5, a7);
  (*(v14 + 56))(v14, v16, v21);
  if (a6 - 1 >= *v14)
  {
    a6 = *v14;
  }

  v18 = ccdh_gp_n(a2[1]);
  ccn_read_uint_internal(v18, a3, a6, v21);
  cc_clear(*v14, v21);
  result = cc_clear(*(v14 + 8) + *(v14 + 16) + 12, v16);
  *(a1 + 16) = v17;
  return result;
}

uint64_t ccec_generate_key_deterministic(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, uint64_t, uint64_t *), int a5, uint64_t **a6)
{
  v18 = timingsafe_enable_if_supported();
  v12 = cc_malloc_clear(392 * *a1);
  v13 = 49 * *a1;
  v16[0] = v12;
  v16[1] = v13;
  v16[2] = 0;
  v16[3] = cc_ws_alloc;
  v17 = cc_ws_free;
  if (v12)
  {
    key_deterministic_ws = ccec_generate_key_deterministic_ws(v16, a1, a2, a3, a4, a5, a6);
    v17(v16);
  }

  else
  {
    key_deterministic_ws = 4294967283;
  }

  cc_disable_dit_with_sb(&v18);
  return key_deterministic_ws;
}

uint64_t ccmode_ofb_crypt(void *a1, uint64_t a2, char *a3, _BYTE *a4)
{
  v5 = a1[1];
  if (a2)
  {
    v8 = a2;
    v9 = *a1;
    v10 = a1 + 2;
    v11 = (*(*a1 + 8) + 7) & 0xFFFFFFFFFFFFFFF8;
    do
    {
      if (v5 == *(v9 + 8))
      {
        (*(v9 + 24))(v10 + v11, 1, a1 + 2, a1 + 2);
        v5 = 0;
      }

      v12 = *a3++;
      v13 = v5 + 1;
      *a4++ = *(v10 + v5++) ^ v12;
      --v8;
    }

    while (v8);
  }

  else
  {
    v13 = a1[1];
  }

  a1[1] = v13;
  return 0;
}

uint64_t ccder_blob_encode_implicit_uint64(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v4[1] = *MEMORY[0x29EDCA608];
  v4[0] = a3;
  return ccder_blob_encode_implicit_integer(a1, a2, 1uLL, v4);
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

uint64_t cc_cmp_safe_internal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 1;
  }

  v3 = 0;
  do
  {
    v3 |= *(a3 - 1 + a1) ^ *(a2 - 1 + a1);
    --a1;
  }

  while (a1);
  v6 = timingsafe_enable_if_supported();
  v4 = v3 != 0;
  cc_disable_dit_with_sb(&v6);
  return v4;
}

uint64_t cc_cmp_safe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = timingsafe_enable_if_supported();
  v6 = cc_cmp_safe_internal(a1, a2, a3);
  cc_disable_dit_with_sb(&v8);
  return v6;
}

BOOL ccz_is_zero(uint64_t a1)
{
  v5 = timingsafe_enable_if_supported();
  v2 = ccz_n(a1);
  v3 = ccn_n(v2, *(a1 + 24)) == 0;
  cc_disable_dit_with_sb(&v5);
  return v3;
}

uint64_t cccast_ecb_decrypt(uint64_t a1, uint64_t a2, unsigned int *a3, _DWORD *a4)
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
      CC_CAST_decrypt(&v12, a1);
      v10 = bswap32(v13);
      *a4 = bswap32(v12);
      a4[1] = v10;
      a4 += 2;
    }

    while (v6);
  }

  return 0;
}

uint64_t cche_ciphertext_plaintext_add(uint64_t a1, uint64_t *a2, void *a3)
{
  v13 = timingsafe_enable_if_supported();
  v6 = cche_param_ctx_polynomial_degree(*a2);
  v7 = sizeof_struct_ccpolyzp_po2cyc();
  v11[0] = cc_malloc_clear((v7 + 8 * v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = cche_param_ctx_polynomial_degree(*a2);
  v11[1] = ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3) + v8;
  v11[2] = 0;
  v11[3] = cc_ws_alloc;
  v12 = cc_ws_free;
  if (v11[0])
  {
    v9 = cche_ciphertext_plaintext_add_ws(v11, a1, a2, a3);
    v12(v11);
  }

  else
  {
    v9 = 4294967283;
  }

  cc_disable_dit_with_sb(&v13);
  return v9;
}

uint64_t cche_param_ctx_cipher_plain_ctx_const(uint64_t a1, unsigned int a2)
{
  v4 = *cche_param_ctx_plaintext_ctx(a1);
  v5 = cche_param_ctx_plaintext_ctx(a1);
  v6 = cche_param_ctx_polynomial_degree(a1);
  v7 = sizeof_struct_ccpolyzp_po2cyc_ctx() + 7;
  if (v6 >= 0x80)
  {
    v8 = 128;
  }

  else
  {
    v8 = v6;
  }

  v9 = ((sizeof_struct_ccrns_mul_modulus() + 7) >> 3) * v8 + v6;
  v10 = v7 & 0xFFFFFFFFFFFFFFF8;
  v11 = (4 * v4 + 7) & 0x7FFFFFFF8;
  v12 = cche_param_ctx_chain_const(a1);
  v13 = cche_decrypt_ctx_nof_n((v12 + 8));
  v14 = v13;
  if (a2 < 2)
  {
    return v5 + v10 + 16 * v9 + v11 + 8 * v13 + 48;
  }

  v15 = sizeof_struct_cche_cipher_plain_ctx();
  return v5 + (((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 32) * (a2 - 2) + 16 * v9 + 16 * (((a2 - 2) * (a2 - 3)) >> 1) + 8 * v14 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + v10 + v11 + 64;
}

uint64_t cche_ciphertext_coeff_plaintext_mul(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v15 = timingsafe_enable_if_supported();
  v6 = *(a2 + 24);
  v7 = *v6;
  v8 = v6[1];
  v9 = sizeof_struct_ccpolyzp_po2cyc();
  v13[0] = cc_malloc_clear((v9 + 8 * (v8 * v7) + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v6;
  LODWORD(v6) = v6[1];
  v13[1] = (v6 * v10) + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3);
  v13[2] = 0;
  v13[3] = cc_ws_alloc;
  v14 = cc_ws_free;
  if (v13[0])
  {
    v11 = cche_ciphertext_coeff_plaintext_mul_ws(v13, a1, a2, a3);
    v14(v13);
  }

  else
  {
    v11 = 4294967283;
  }

  cc_disable_dit_with_sb(&v15);
  return v11;
}

uint64_t cche_ciphertext_eval_dcrt_plaintext_mul(uint64_t a1, uint64_t a2)
{
  v6 = timingsafe_enable_if_supported();
  v4 = cche_ciphertext_eval_dcrt_plaintext_mul_internal(a1, a2);
  cc_disable_dit_with_sb(&v6);
  return v4;
}

uint64_t cche_ciphertext_eval_plaintext_mul(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v15 = timingsafe_enable_if_supported();
  v6 = *(a2 + 24);
  v7 = *v6;
  v8 = v6[1];
  v9 = sizeof_struct_ccpolyzp_po2cyc();
  v13[0] = cc_malloc_clear((v9 + 8 * (v8 * v7) + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v6;
  LODWORD(v6) = v6[1];
  v13[1] = (v6 * v10) + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3);
  v13[2] = 0;
  v13[3] = cc_ws_alloc;
  v14 = cc_ws_free;
  if (v13[0])
  {
    v11 = cche_ciphertext_eval_plaintext_mul_ws(v13, a1, a2, a3);
    v14(v13);
  }

  else
  {
    v11 = 4294967283;
  }

  cc_disable_dit_with_sb(&v15);
  return v11;
}

void *OUTLINED_FUNCTION_1_18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (v4 + v3 + 8 * v2);
  v7 = (a2 + 8 * (*(*v6 + 4) * **v6)) & 0xFFFFFFFFFFFFFFF8;

  return memmove(a1, v6, v7);
}

uint64_t OUTLINED_FUNCTION_4_3(uint64_t a1)
{

  return cche_dcrt_plaintext_encode_ws(v1, v3, v2, a1);
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

uint64_t ccder_blob_decode_eckey(unsigned __int8 **a1, unint64_t *a2, void *a3, void *a4, unsigned __int8 **a5, void *a6, void *a7, unint64_t *a8)
{
  v18 = timingsafe_enable_if_supported();
  v16 = ccder_blob_decode_eckey_internal(a1, a2, a3, a4, a5, a6, a7, a8);
  cc_disable_dit_with_sb(&v18);
  return v16;
}

uint64_t ccz_mul(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = timingsafe_enable_if_supported();
  v6 = ccz_sign(a2);
  v7 = ccz_sign(a3);
  ccz_set_sign(a1, v7 * v6);
  v8 = ccz_n(a2);
  v9 = ccz_n(a3);
  if (v8 <= v9)
  {
    v8 = v9;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  ccz_init(*(a2 + 8), &v22);
  ccz_init(*(a2 + 8), &v20);
  ccz_set_capacity(&v22, v8);
  ccz_set_capacity(&v20, v8);
  v10 = *(&v23 + 1);
  v11 = ccz_n(a2);
  v12 = v11;
  if (v11)
  {
    ccn_set(v11, v10, *(a2 + 24));
  }

  ccn_zero(v8 - v12, &v10[8 * v12]);
  v13 = *(&v21 + 1);
  v14 = ccz_n(a3);
  v15 = v14;
  if (v14)
  {
    ccn_set(v14, v13, *(a3 + 24));
  }

  ccn_zero(v8 - v15, &v13[8 * v15]);
  ccz_set_capacity(a1, 2 * v8);
  ccn_mul(v8, a1[3], *(&v21 + 1), *(&v23 + 1));
  v16 = ccz_n(a2);
  v17 = ccz_n(a3);
  v18 = ccn_n(v17 + v16, a1[3]);
  ccz_set_n(a1, v18);
  ccz_free(&v22);
  ccz_free(&v20);
  return cc_disable_dit_with_sb(&v24);
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

uint64_t ccmode_siv_decrypt(void *a1, unint64_t a2, __int128 *a3, char *a4)
{
  v16 = *MEMORY[0x29EDCA608];
  if (*(*(*a1 + 56) + 8) != 16)
  {
    return 4294967226;
  }

  v5 = a1[2];
  if (v5 != 4 && v5 != 2)
  {
    return 4294967228;
  }

  v7 = a2 - 16;
  if (a2 < 0x10)
  {
    return 4294967229;
  }

  v9 = *(*a1 + 64);
  v15 = *a3;
  v13 = v15;
  BYTE8(v13) = BYTE8(v15) & 0x7F;
  BYTE12(v13) = BYTE12(v15) & 0x7F;
  v10 = ccctr_one_shot_internal(v9, a1[1] >> 1, (a1 + 7), &v13, v7, (a3 + 1), a4);
  if (v10 || (v10 = ccmode_siv_auth_finalize(a1, v7, a4, v14), v10))
  {
    v11 = v10;
  }

  else
  {
    if (!cc_cmp_safe_internal(16, v14, &v15) && a1[2] == 5)
    {
      return 0;
    }

    v11 = 4294967227;
  }

  cc_clear(v7, a4);
  return v11;
}

void ccrng_test_done(uint64_t a1)
{
  ccdrbg_done(a1 + 8, *(a1 + 64));
  free(*(a1 + 64));
  *(a1 + 64) = 0;
}

BOOL ccec_is_compactable_pub(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v9[0] = cc_malloc_clear(8 * v3);
  v9[1] = v3;
  v10 = 0;
  v11 = cc_ws_alloc;
  v12 = cc_ws_free;
  if (!v9[0])
  {
    return 0;
  }

  v4 = a1 + 2;
  v5 = *v2;
  if (ccn_n(*v2, &v4[2 * *v2]) == 1 && v4[2 * *v2] == 1)
  {
    v6 = cc_ws_alloc(v9, v5);
    cczp_negate(v2, v6, &v4[*v2]);
    v7 = ccn_cmp_public_value(v5, v6, &v4[*v2]) >= 0;
    v10 = 0;
    v12(v9);
  }

  else
  {
    v7 = 0;
    cc_ws_free(v9);
  }

  return v7;
}

uint64_t ccec_compact_export_pub(char *a1, uint64_t *a2)
{
  v3 = a2 + 2;
  v4 = *a2;
  v6 = (cczp_bitlen(*a2) + 7) >> 3;
  return ccec_export_affine_point_public_value(v4, 4, v3, &v6, a1);
}

uint64_t ccprime_rabin_miller_init_ws(uint64_t a1, uint64_t *a2, unint64_t a3, void *a4)
{
  v8 = *(a1 + 16);
  inited = cczp_mm_init_ws(a1, a2, a3, a4);
  if (!inited)
  {
    v10 = &a2[2 * *a2];
    v11 = &v10[*a2 + 5];
    ccn_set(a3, v11, a4);
    v11->i64[0] &= ~1uLL;
    v12 = ccn_trailing_zeros(a3, v11);
    v10[4] = v12;
    ccn_shift_right_multi(a3, (v10 + 5), v11, v12);
    cczp_to_ws(a1, a2);
  }

  *(a1 + 16) = v8;
  return inited;
}

void ccprime_rabin_miller_ws(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, unsigned int (**a5)(void, unint64_t, uint64_t))
{
  if (a4)
  {
    v10 = ccn_n(a2, a3);
    if (v10)
    {
      v11 = *a3;
      if (v10 != 1 || v11 != 1) && (v11)
      {
        v12 = 0;
        while (!ccn_divides1(a2, a3, ccn_prime_table[v12]))
        {
          if (++v12 == 255)
          {
            v13 = *(a1 + 16);
            v14 = (*(a1 + 24))(a1, 4 * a2 + 5);
            if (!ccprime_rabin_miller_init_ws(a1, v14, a2, a3))
            {
              v15 = (*(a1 + 24))(a1, a2);
              v16 = 0;
LABEL_14:
              v17 = cczp_n(v14);
              v24 = *(a1 + 16);
              v18 = (*(a1 + 24))(a1, 2 * v17);
              cc_clear(16 * v17, v18);
              v19 = cczp_bitlen(v14);
              v25 = v16;
              if (cczp_bitlen(v14) <= 0x40)
              {
                v20 = cczp_bitlen(v14) + (v17 << 6) - 1;
              }

              else
              {
                v20 = v19 + 64;
              }

              v21 = 100;
              while (1)
              {
                ccn_random_bits(v20, v18, a5);
                if (v22)
                {
                  break;
                }

                cczp_mod_ws(a1, v14);
                if (v17 && (ccn_n(v17, v15) > 1 || *v15 > 1uLL))
                {
                  *(a1 + 16) = v24;
                  ccprime_rabin_miller_iteration_ws(a1, v14, v15, a5);
                  if (v23 == 1)
                  {
                    v16 = v25 + 1;
                    if (v25 + 1 != a4)
                    {
                      goto LABEL_14;
                    }
                  }

                  break;
                }

                if (!--v21)
                {
                  cc_try_abort();
                }
              }
            }

            *(a1 + 16) = v13;
            return;
          }
        }
      }
    }
  }
}

uint64_t ccprime_rabin_miller(unint64_t a1, uint64_t *a2, uint64_t a3, unsigned int (**a4)(void, unint64_t, uint64_t))
{
  v8 = sizeof_struct_ccrns_mul_modulus();
  v9 = sizeof_struct_ccpolyzp_po2cyc();
  v10 = 19 * a1 + 2;
  v16[0] = cc_malloc_clear(8 * ((v8 + v9 - 1) / v9 + v10));
  v11 = sizeof_struct_ccrns_mul_modulus();
  v12 = sizeof_struct_ccpolyzp_po2cyc();
  v16[1] = (v11 + v12 - 1) / v12 + v10;
  v16[2] = 0;
  v16[3] = cc_ws_alloc;
  v17 = cc_ws_free;
  if (!v16[0])
  {
    return 4294967283;
  }

  ccprime_rabin_miller_ws(v16, a1, a2, a3, a4);
  v14 = v13;
  v17(v16);
  return v14;
}

unint64_t ccn_subn(uint64_t a1, void *a2, uint64_t *a3, _BOOL8 a4, unint64_t *a5)
{
  v5 = a1 - a4;
  v6 = &a2[a4];
  v7 = &a3[a4];
  v8 = ccn_sub_ws(0, a4, a2, a3, a5);

  return ccn_sub1(v5, v6, v7, v8);
}

uint64_t ccmode_siv_hmac_nonce(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  if (v3 != 4 && v3 != 2)
  {
    return 4294967228;
  }

  if (!a2)
  {
    return 4294967194;
  }

  ccmode_siv_hmac_auth_backend(a1, a2, a3, 78);
  result = 0;
  *(a1 + 24) = 6;
  return result;
}

double ccmode_factory_ccm_decrypt(uint64_t a1, void *a2)
{
  *a1 = ((a2[1] + 7) & 0xFFFFFFFFFFFFFFF8) + ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  *&result = 96;
  *(a1 + 8) = xmmword_299DA2690;
  *(a1 + 24) = ccmode_ccm_init;
  *(a1 + 32) = ccmode_ccm_set_iv;
  *(a1 + 40) = ccmode_ccm_cbcmac;
  *(a1 + 48) = ccmode_ccm_decrypt;
  *(a1 + 56) = ccmode_ccm_finalize;
  *(a1 + 64) = ccmode_ccm_reset;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  return result;
}

uint64_t ccmldsa_keygen_internal(int32x4_t *a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v66[2] = *MEMORY[0x29EDCA608];
  v8 = a1->i32[2];
  v9 = sizeof_struct_ccpolyzp_po2cyc();
  v10 = a1->i32[1];
  v11 = (v9 - 1 + 4 * (v10 << 8)) / v9;
  v12 = v11 + (v9 - 1 + 4 * (v8 << 8)) / v9;
  v13 = (v9 + 1023) / v9;
  v14 = v12 + 2 * v11 + v13;
  v15 = v13 + v12 + 2 * (v12 + v11);
  if (v14 > v15)
  {
    v15 = v14;
  }

  v16 = cc_malloc_clear(8 * (v11 + 2 * v12 + v15 + (v9 - 1 + v10 + 640 * v8 + a1[1].i32[2] + (a1[1].i32[0] >> 2)) / v9));
  v53[0] = v16;
  v17 = a1->i32[2];
  v18 = sizeof_struct_ccpolyzp_po2cyc();
  v19 = a1->i32[1];
  v20 = (v18 - 1 + 4 * (v19 << 8)) / v18;
  v21 = v20 + (v18 - 1 + 4 * (v17 << 8)) / v18;
  v22 = (v18 + 1023) / v18;
  v23 = v21 + 2 * v20 + v22;
  v24 = v22 + v21 + 2 * (v21 + v20);
  if (v23 > v24)
  {
    v24 = v23;
  }

  v53[1] = v20 + 2 * v21 + v24 + (v18 - 1 + v19 + 640 * v17 + a1[1].i32[2] + (a1[1].i32[0] >> 2)) / v18;
  v54 = 0;
  v55 = cc_ws_alloc;
  v56 = cc_ws_free;
  if (!v16)
  {
    return 4294967283;
  }

  v25 = cc_ws_alloc(v53, (*&v17 & 0xFFFFFFLL) << 7);
  v26 = v55(v53, (a1->i32[2] & 0xFFFFFFLL) << 7);
  v27 = v55(v53, (a1->i32[1] & 0xFFFFFFLL) << 7);
  v52 = v55(v53, (a1->i32[1] & 0xFFFFFFLL) << 7);
  v28 = v55(v53, (a1->i32[1] & 0xFFFFFFLL) << 7);
  memset(v65 + 2, 0, 94);
  v29 = *a4;
  v30 = a4[1];
  v31 = a1->i32[2];
  LOBYTE(v65[0]) = a1->i32[1];
  v63 = v29;
  v64 = v30;
  BYTE1(v65[0]) = v31;
  cckeccak_oneshot(34, &v63, 0x80uLL, &v63, 0x88uLL, 0x1Fu);
  v61 = v63;
  v62 = v64;
  v60[0] = v65[0];
  v60[1] = v65[1];
  v60[2] = v65[2];
  v60[3] = v65[3];
  v58 = v65[4];
  v59 = v65[5];
  cc_clear(0x80uLL, &v63);
  v32 = a1->u32[2];
  if (v32)
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    do
    {
      v35 += ccmldsa_sample_rej_bounded_poly(a1, &v25[4 * (v33 << 8)], v34++, v60);
      v33 = v34;
      v32 = a1->u32[2];
    }

    while (v32 > v34);
  }

  else
  {
    v35 = 0;
  }

  v37 = a1->u32[1];
  if (v37)
  {
    v38 = 0;
    v39 = 0;
    do
    {
      v35 += ccmldsa_sample_rej_bounded_poly(a1, (v27 + 4 * (v38 << 8)), v39++ + a1->i16[4], v60);
      v38 = v39;
      v37 = a1->u32[1];
    }

    while (v37 > v39);
    v32 = a1->u32[2];
  }

  if (v35 < (v37 + v32) << 8)
  {
    v36 = 0xFFFFFFFFLL;
  }

  else
  {
    memcpy(v26, v25, v32 << 10);
    ccmldsa_polyvecl_ntt_forward_eta(a1, v26);
    v40 = ccmldsa_polyvec_matrix_expand_ntt_pointwise(a1, v28, &v61, v26);
    if (v40)
    {
      v36 = v40;
    }

    else
    {
      ccmldsa_polyveck_reduce(a1, v28);
      ccmldsa_polyveck_ntt_inverse(a1->i32, v28);
      ccmldsa_polyveck_add(a1, v28, v28, v27);
      ccmldsa_polyveck_caddq(a1, v28);
      ccmldsa_polyveck_power2round(a1, v28, v52, v28);
      v41 = v62;
      *a2 = v61;
      a2[1] = v41;
      ccmldsa_polyveck_bitpack_t1(a1, (a2 + 2), v28);
      cckeccak_oneshot((320 * a1->i32[1]) | 0x20u, a2, 0x40uLL, v57, 0x88uLL, 0x1Fu);
      v42 = v62;
      *a3 = v61;
      a3[1] = v42;
      v43 = v59;
      a3[2] = v58;
      a3[3] = v43;
      v44 = v57[1];
      a3[4] = v57[0];
      a3[5] = v44;
      v45 = v57[3];
      a3[6] = v57[2];
      a3[7] = v45;
      ccmldsa_polyvecl_bitpack_eta(a1, (a3 + 8), v25);
      v46 = a3 + (a1[1].i32[3] * a1->i32[2]) + 128;
      ccmldsa_polyveck_bitpack_eta(a1, v46, v27);
      ccmldsa_polyveck_bitpack_t0(a1, v46 + (a1[1].i32[3] * a1->i32[1]), v52);
      cckeccak_oneshot((320 * a1->i32[1]) | 0x20u, a2, 0x60uLL, &v63, 0x88uLL, 0x1Fu);
      v47 = v54;
      v48 = v55(v53, ((a1[1].i32[2] + 640 * a1->i32[2] + a1->i32[1] + (a1[1].i32[0] >> 2)) + 7) >> 3);
      v49 = a1[1].i32[2] + 640 * a1->i32[2] + a1->i32[1] + (a1[1].i32[0] >> 2);
      v50 = ccmldsa_sign_prehashed_internal_ws(v53, a1, a3, v49, v48, &v63, &v65[2]);
      if (v50 || (v66[0] = 0, v66[1] = 0, v50 = ccmldsa_verify_prehashed_internal_ws(v53, a1, a2, v49, v48, &v63, v66), v50))
      {
        v36 = v50;
      }

      else if (cc_cmp_safe_internal(16, &CCMLDSA_FAULT_CANARY, v66))
      {
        v36 = 4294967294;
      }

      else
      {
        v36 = 0;
      }

      v54 = v47;
      cc_clear(0x60uLL, &v63);
    }
  }

  v54 = 0;
  cc_clear(0x20uLL, &v61);
  cc_clear(0x40uLL, v60);
  cc_clear(0x20uLL, &v58);
  cc_clear(0x40uLL, v57);
  v56(v53);
  return v36;
}

uint64_t ccmldsa_generate_key(int32x4_t **a1, uint64_t (**a2)(void, uint64_t, __int128 *))
{
  v12 = *MEMORY[0x29EDCA608];
  v10 = timingsafe_enable_if_supported();
  v4 = ccmldsa_public_ctx(a1);
  v5 = *a1;
  v6 = a1 + (*a1)[4].i64[1];
  v7 = (*a2)(a2, 32, v11);
  if (v7)
  {
    v8 = v7;
    goto LABEL_3;
  }

  v8 = ccmldsa_keygen_internal(v5, (v4 + 8), (v6 + 8), v11);
  if (v8)
  {
LABEL_3:
    cc_clear((320 * v5->i32[1]) | 0x20u, (v4 + 8));
    cc_clear(((v5->i32[1] + v5->i32[2]) * v5[1].i32[3] + 416 * v5->i32[1] + 128), v6 + 8);
  }

  cc_clear(0x20uLL, v11);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t OUTLINED_FUNCTION_0_37(uint64_t a1)
{
  v4 = (a1 + 8);
  v5 = (v2 + (*v2)[4].i64[1] + 8);
  v6 = *v2;

  return ccmldsa_keygen_internal(v6, v4, v5, v1);
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

uint64_t ccz_init(uint64_t a1, uint64_t a2)
{
  v5 = timingsafe_enable_if_supported();
  *(a2 + 24) = 0;
  *a2 = 0;
  *(a2 + 8) = a1;
  *(a2 + 16) = 0;
  return cc_disable_dit_with_sb(&v5);
}

size_t ccpad_cts2_encrypt(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4, uint64_t a5, char *a6)
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

  if (v14 == 2 * v12)
  {
    (*(a1 + 24))(a2, a3, 2, a5, __src);
  }

  else
  {
    v16 = __src;
    cc_clear(2 * v12, __src);
    __memcpy_chk();
    (*(a1 + 24))(a2, a3, 2, __src, __src);
    v17 = v12;
    do
    {
      v18 = *v16;
      *v16 = v16[v12];
      v16[v12] = v18;
      ++v16;
      --v17;
    }

    while (v17);
  }

  memcpy(a6, __src, v14);
  cc_disable_dit_with_sb(&v20);
  return a4;
}

_BYTE *cc_atfork_child()
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
  ccrng_atfork_child();
  return cc_disable_dit(&v9);
}

int8x16_t *ccm128_decrypt(int8x16_t *a1, int8x16_t *a2, int8x16_t *a3, int a4, int8x16_t *a5, int8x16_t *a6, unsigned int a7)
{
  v7 = *&qword_299D60380[2 * a7];
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
  v21 = vorrq_s8(vandq_s8(vaddq_s64(v20, *qword_299D60380), v7), vbicq_s8(v20, v7));
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
      v21 = vorrq_s8(vandq_s8(vaddq_s64(v21, *qword_299D60380), v7), vbicq_s8(v21, v7));
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

  *a6 = vqtbl1q_s8(v21, *Lbswap_mask_1);
  *a3 = veorq_s8(_Q1, v19);
  return result;
}

int8x16_t *ccm192_decrypt(int8x16_t *a1, int8x16_t *a2, int8x16_t *a3, int a4, int8x16_t *a5, int8x16_t *a6, unsigned int a7)
{
  v7 = *&qword_299D60380[2 * a7];
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
  v23 = vorrq_s8(vandq_s8(vaddq_s64(v22, *qword_299D60380), v7), vbicq_s8(v22, v7));
  v25 = *a1;
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
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V26.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V27.16B
  }

  *a2 = veorq_s8(v25, veorq_s8(_Q3, v21));
  v53 = a2 + 1;
  v54 = a4 - 1;
  if (v54)
  {
    do
    {
      v23 = vorrq_s8(vandq_s8(vaddq_s64(v23, *qword_299D60380), v7), vbicq_s8(v23, v7));
      v55 = *result++;
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

      *v53++ = veorq_s8(v55, veorq_s8(_Q3, v21));
      _VF = __OFSUB__(v54--, 1);
    }

    while (!((v54 < 0) ^ _VF | (v54 == 0)));
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
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V26.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V27.16B
  }

  *a6 = vqtbl1q_s8(v23, *Lbswap_mask_1);
  *a3 = veorq_s8(_Q1, v21);
  return result;
}

int8x16_t *ccm256_decrypt(int8x16_t *a1, int8x16_t *a2, int8x16_t *a3, int a4, int8x16_t *a5, int8x16_t *a6, unsigned int a7)
{
  v7 = *&qword_299D60380[2 * a7];
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
  v25 = vorrq_s8(vandq_s8(vaddq_s64(v24, *qword_299D60380), v7), vbicq_s8(v24, v7));
  v27 = *a1;
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
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V26.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V27.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V28.16B
    AESMC           V3.16B, V3.16B
    AESE            V3.16B, V29.16B
  }

  *a2 = veorq_s8(v27, veorq_s8(_Q3, v23));
  v59 = a2 + 1;
  v60 = a4 - 1;
  if (v60)
  {
    do
    {
      v25 = vorrq_s8(vandq_s8(vaddq_s64(v25, *qword_299D60380), v7), vbicq_s8(v25, v7));
      v61 = *result++;
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

      *v59++ = veorq_s8(v61, veorq_s8(_Q3, v23));
      _VF = __OFSUB__(v60--, 1);
    }

    while (!((v60 < 0) ^ _VF | (v60 == 0)));
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
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V26.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V27.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V28.16B
    AESMC           V1.16B, V1.16B
    AESE            V1.16B, V29.16B
  }

  *a6 = vqtbl1q_s8(v25, *Lbswap_mask_1);
  *a3 = veorq_s8(_Q1, v23);
  return result;
}