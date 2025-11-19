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
    *result++ = vbicq_s8(v2, vceqzq_s16(vandq_s8(v4, xmmword_299DA4D90)));
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

int16x8_t *ccmlkem_ntt_basemul(int16x8_t *result, const __int16 *a2, const __int16 *a3, int32x4_t a4, double a5, double a6, double a7, double a8, double a9, double a10, int32x4_t a11)
{
  v11 = &qword_299DA0390;
  v12 = 32;
  v13 = vdupq_n_s32(0x6808u);
  do
  {
    v17 = vld2_s16(a2);
    a2 += 8;
    v18 = vld2_s16(a3);
    a3 += 8;
    v17 = vmulq_n_s32(vmovl_s16(v17.val[0]), 1806234369);
    *(&v17 + 8) = vmulq_n_s32(vmovl_s16(v17.val[1]), 1806234369);
    v18 = vmovl_s16(*v18.i8);
    *(&v18 + 8) = vmovl_s16(v18.u64[1]);
    v14 = *v11++;
    *a11.i8 = v14;
    v15 = vmulq_s32(*(&v17 + 8), *(&v18 + 8));
    *a4.i8 = vneg_s32(v14);
    v18.u64[1] = vaddhn_s32(vmulq_lane_s32(vshrq_n_s32(vmulq_s32(v17, *(&v18 + 8)), 0x10uLL), 0xD016BA8F301, 1), v13);
    a11 = vmulq_lane_s32(vshrq_n_s32(vmulq_s32(vshrq_n_s32(vmlaq_lane_s32(v13, vshrq_n_s32(v15, 0x10uLL), 0xD016BA8F301, 1), 0x10uLL), vzip1q_s32(a11, a4)), 0x10uLL), 0xD016BA8F301, 1);
    v17 = vmulq_lane_s32(vshrq_n_s32(vmulq_s32(v17, v18), 0x10uLL), 0xD016BA8F301, 1);
    *(&v17 + 8) = vmulq_lane_s32(vshrq_n_s32(vmulq_s32(*(&v17 + 8), v18), 0x10uLL), 0xD016BA8F301, 1);
    v17.val[0] = vadd_s16(vaddhn_s32(a11, v13), vaddhn_s32(v17, v13));
    v17.val[1] = vadd_s16(v18.u64[1], vaddhn_s32(*(&v17 + 8), v13));
    *result++ = vzip1q_s16(v17, *(&v17 + 8));
  }

  while (v12-- > 1);
  return result;
}

uint64_t ccentropy_list_init(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = timingsafe_enable_if_supported();
  *a1 = &entropy_list_info;
  a1[1] = a3;
  a1[2] = a2;
  cc_disable_dit_with_sb(&v7);
  return 0;
}

uint64_t ccentropy_list_get_seed(uint64_t a1, rsize_t a2, void *a3)
{
  if (!*(a1 + 16))
  {
    v8 = 0xFFFFFFFFLL;
LABEL_9:
    cc_clear(a2, a3);
    return v8;
  }

  v6 = 0;
  while (1)
  {
    seed_internal = ccentropy_get_seed_internal(*(*(a1 + 8) + 8 * v6));
    if (seed_internal != -10)
    {
      break;
    }

    if (++v6 >= *(a1 + 16))
    {
      v8 = 4294967286;
      goto LABEL_9;
    }
  }

  v8 = seed_internal;
  if (seed_internal)
  {
    goto LABEL_9;
  }

  return v8;
}

uint64_t ccec_export_pub(uint64_t *a1, char *a2)
{
  v3 = a1 + 2;
  v4 = *a1;
  v6 = ((cczp_bitlen(*a1) + 7) >> 2) | 1;
  return ccec_export_affine_point_public_value(v4, 1, v3, &v6, a2);
}

uint64_t ccec_x963_import_pub_size(uint64_t a1)
{
  if (a1 <= 64)
  {
    if (a1 == 49)
    {
      return 192;
    }

    if (a1 == 57)
    {
      return 224;
    }
  }

  else
  {
    switch(a1)
    {
      case 65:
        return 256;
      case 97:
        return 384;
      case 133:
        return 521;
    }
  }

  return 0;
}

uint64_t ccec_x963_import_pub_ws(uint64_t a1, unint64_t *a2, uint64_t a3, unsigned __int8 *a4, unint64_t **a5)
{
  if (!a3)
  {
    return 4294967289;
  }

  if (a3 == 1)
  {
    v10 = *a4;
    if (!*a4)
    {
      return 4294967136;
    }
  }

  else
  {
    v10 = *a4;
  }

  v12 = v10 - 2;
  if (v12 > 5 || ((0x37u >> v12) & 1) == 0)
  {
    return 4294967289;
  }

  v13 = dword_299DA4DA0[v12];
  v14 = *(a1 + 16);
  *a5 = a2;
  result = ccec_import_affine_point_ws(a1, a2, v13, a3, a4, a5 + 2);
  if (!result)
  {
    ccn_seti(*a2, &a5[2 * **a5 + 2], 1);
    v15 = (*(a1 + 24))(a1, 3 * *a2);
    result = ccec_validate_point_and_projectify_ws(a1, a2, v15, (a5 + 2));
  }

  *(a1 + 16) = v14;
  return result;
}

uint64_t ccec_x963_import_pub(unint64_t *a1, uint64_t a2, unsigned __int8 *a3, unint64_t **a4)
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

  v10 = ccec_x963_import_pub_ws(v12, a1, a2, a3, a4);
  v13(v12);
  return v10;
}

void *ccmode_factory_cbc_decrypt(void *result, void *a2)
{
  v2 = a2[1];
  *result = ((v2 + 7) & 0xFFFFFFFFFFFFFFF8) + ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  result[1] = v2;
  result[2] = ccmode_cbc_init;
  result[3] = ccmode_cbc_decrypt;
  result[4] = a2;
  return result;
}

double ccmode_factory_siv_hmac_encrypt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 600;
  *a1 = xmmword_299DA4DC0;
  *(a1 + 16) = ccmode_siv_hmac_init;
  *(a1 + 24) = ccmode_siv_hmac_nonce;
  *(a1 + 32) = ccmode_siv_hmac_auth;
  *(a1 + 40) = ccmode_siv_hmac_encrypt;
  *(a1 + 48) = ccmode_siv_hmac_reset;
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  return result;
}

uint64_t ccec_compact_transform_key_ws(uint64_t a1, uint64_t **a2)
{
  v4 = a2 + 2;
  v3 = *a2;
  v5 = **a2;
  v6 = &a2[v5 + 2];
  v7 = *(a1 + 16);
  v8 = (*(a1 + 24))(a1, v5);
  cczp_negate(v3, v8, v6);
  result = ccn_cmp_public_value(v5, v8, v6);
  if ((result & 0x80000000) != 0)
  {
    ccn_set(v5, v6, v8);
    v10 = cczp_prime(&v3[5 * *v3 + 4]);
    result = ccn_sub_ws(a1, v5, &v4[3 * v5], v10, &v4[3 * v5]);
  }

  *(a1 + 16) = v7;
  return result;
}

uint64_t ccec_compact_transform_key(uint64_t **a1)
{
  v9 = timingsafe_enable_if_supported();
  v2 = *a1;
  v3 = cc_malloc_clear(8 * **a1);
  v4 = *v2;
  v7[0] = v3;
  v7[1] = v4;
  v7[2] = 0;
  v7[3] = cc_ws_alloc;
  v8 = cc_ws_free;
  if (v3)
  {
    ccec_compact_transform_key_ws(v7, a1);
    v8(v7);
    v5 = 0;
  }

  else
  {
    v5 = 4294967283;
  }

  cc_disable_dit_with_sb(&v9);
  return v5;
}

uint64_t ccec_compact_generate_key(uint64_t *a1, uint64_t (**a2)(void, unint64_t, void *), uint64_t **a3)
{
  v15 = timingsafe_enable_if_supported();
  v6 = cc_malloc_clear(392 * *a1);
  v7 = 49 * *a1;
  v11[0] = v6;
  v11[1] = v7;
  v12 = 0;
  v13 = cc_ws_alloc;
  v14 = cc_ws_free;
  if (v6)
  {
    key_internal_fips_ws = ccec_generate_key_internal_fips_ws(v11, a1, a2, a3);
    if (key_internal_fips_ws)
    {
      v9 = key_internal_fips_ws;
    }

    else
    {
      ccec_compact_transform_key_ws(v11, a3);
      if (ccec_pairwise_consistency_check_ws(v11, a3, a2))
      {
        v9 = 4294967278;
      }

      else
      {
        v9 = 0;
      }
    }

    v12 = 0;
    v14(v11);
  }

  else
  {
    v9 = 4294967283;
  }

  cc_disable_dit_with_sb(&v15);
  return v9;
}

uint64_t ccec_compact_generate_key_init(uint64_t *a1, uint64_t (**a2)(void, unint64_t, uint64_t), uint64_t a3)
{
  v14 = timingsafe_enable_if_supported();
  v6 = cc_malloc_clear(216 * *a1);
  v7 = 27 * *a1;
  v12[0] = v6;
  v12[1] = v7;
  v12[2] = 0;
  v12[3] = cc_ws_alloc;
  v13 = cc_ws_free;
  if (v6)
  {
    *(a3 + 8) = 0;
    v8 = *a1;
    *a3 = *a1;
    v9 = a3 + 16 * v8;
    *(v9 + 16) = a1;
    key_internal_fips_ws = ccec_generate_key_internal_fips_ws(v12, a1, a2, (v9 + 16));
    if (!key_internal_fips_ws)
    {
      *(a3 + 8) = 1;
    }

    v13(v12);
  }

  else
  {
    key_internal_fips_ws = 4294967283;
  }

  cc_disable_dit_with_sb(&v14);
  return key_internal_fips_ws;
}

uint64_t ccec_compact_generate_key_step(uint64_t (**a1)(void, unint64_t, void *), uint64_t a2, void *a3)
{
  v15 = timingsafe_enable_if_supported();
  v6 = cc_malloc_clear(360 * *a2);
  v7 = *a2;
  v8 = 45 * *a2;
  v13[0] = v6;
  v13[1] = v8;
  v13[2] = 0;
  v13[3] = cc_ws_alloc;
  v14 = cc_ws_free;
  if (v6)
  {
    *a3 = 0;
    v9 = *(a2 + 8);
    if (v9 == 3)
    {
      ws = ccec_compact_generate_key_checkverify_and_extract_ws(v13, a2, a3);
    }

    else
    {
      if (v9 != 2)
      {
        if (v9 == 1)
        {
          ccec_compact_transform_key_ws(v13, (a2 + 16 * v7 + 16));
          v10 = 0;
          *(a2 + 8) = 2;
        }

        else
        {
          v10 = 4294967289;
        }

        goto LABEL_11;
      }

      ws = ccec_compact_generate_key_checksign_ws(v13, a1, a2);
    }

    v10 = ws;
LABEL_11:
    v14(v13);
    goto LABEL_12;
  }

  v10 = 4294967283;
LABEL_12:
  cc_disable_dit_with_sb(&v15);
  return v10;
}

uint64_t fipspost_post(uint64_t a1, char *a2)
{
  v4 = mach_absolute_time();
  v5 = fipspost_trace_vtable;
  v6 = 1;
  if ((a1 & 0x80) != 0 && *fipspost_trace_vtable && !fipspost_trace_is_active())
  {
    (*v5)(a1, fipspost_trace_noop_writer, 0);
    v6 = 0;
  }

  if (fipspost_trace_is_active())
  {
    fipspost_trace_call("fipspost_post");
  }

  v7 = mach_absolute_time();
  v8 = cc_module_id(0);
  printf("FIPSPOST_USER [%llu] %s:%d: [FIPSPOST][Module-ID] %s\n", v7, "fipspost_post", 158, v8);
  result = 0;
  if ((a1 & 4) == 0)
  {
    if (fipspost_trace_is_active())
    {
      fipspost_trace_call("?");
    }

    if (fipspost_trace_is_active())
    {
      fipspost_trace_call("fipspost_post_hmac");
    }

    v10 = mach_absolute_time();
    v11 = fipspost_post_hmac(a1);
    v12 = mach_absolute_time();
    v13 = v12;
    if (v11)
    {
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: fipspost_post_hmac: %d\n", v12, "fipspost_post", 166, v11);
      v14 = v11 - 1000;
      if ((a1 & 0x40) == 0)
      {
LABEL_14:
        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("?");
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("fipspost_post_integrity");
        }

        v15 = mach_absolute_time();
        v16 = fipspost_post_integrity(a1, a2);
        v17 = mach_absolute_time();
        v18 = v17;
        if (v16)
        {
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: fipspost_post_integrity: %d\n", v17, "fipspost_post", 171, v16);
          if (!v14)
          {
            v14 = v16 - 2000;
          }
        }

        else
        {
          v23 = mach_absolute_time();
          info = 0;
          mach_timebase_info(&info);
          LODWORD(v25) = info.denom;
          LODWORD(v24) = info.numer;
          printf("FIPSPOST_USER [%llu] %s:%d: PASSED: (%u ms) - fipspost_post_integrity\n", v23, "fipspost_post", 171, ((v18 - v15) * v24 / v25 / 1000000.0));
        }

        v22 = -3000;
LABEL_26:
        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("?");
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("fipspost_post_indicator");
        }

        v26 = mach_absolute_time();
        v27 = fipspost_post_indicator();
        v28 = mach_absolute_time();
        v29 = v28;
        if (v27)
        {
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: fipspost_post_indicator: %d\n", v28, "fipspost_post", 176, v27);
          if (!v14)
          {
            v14 = v27 + v22;
          }
        }

        else
        {
          v30 = mach_absolute_time();
          info = 0;
          mach_timebase_info(&info);
          LODWORD(v32) = info.denom;
          LODWORD(v31) = info.numer;
          printf("FIPSPOST_USER [%llu] %s:%d: PASSED: (%u ms) - fipspost_post_indicator\n", v30, "fipspost_post", 176, ((v29 - v26) * v31 / v32 / 1000000.0));
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("?");
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("fipspost_post_aes_ecb");
        }

        v33 = mach_absolute_time();
        v34 = fipspost_post_aes_ecb(a1);
        v35 = mach_absolute_time();
        v36 = v35;
        if (v34)
        {
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: fipspost_post_aes_ecb: %d\n", v35, "fipspost_post", 177, v34);
          if (!v14)
          {
            v14 = v22 + v34 - 1000;
          }
        }

        else
        {
          v37 = mach_absolute_time();
          info = 0;
          mach_timebase_info(&info);
          LODWORD(v39) = info.denom;
          LODWORD(v38) = info.numer;
          printf("FIPSPOST_USER [%llu] %s:%d: PASSED: (%u ms) - fipspost_post_aes_ecb\n", v37, "fipspost_post", 177, ((v36 - v33) * v38 / v39 / 1000000.0));
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("?");
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("fipspost_post_aes_cbc");
        }

        v40 = mach_absolute_time();
        v41 = fipspost_post_aes_cbc(a1);
        v42 = mach_absolute_time();
        v43 = v42;
        if (v41)
        {
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: fipspost_post_aes_cbc: %d\n", v42, "fipspost_post", 178, v41);
          if (!v14)
          {
            v14 = v22 + v41 - 2000;
          }
        }

        else
        {
          v44 = mach_absolute_time();
          info = 0;
          mach_timebase_info(&info);
          LODWORD(v46) = info.denom;
          LODWORD(v45) = info.numer;
          printf("FIPSPOST_USER [%llu] %s:%d: PASSED: (%u ms) - fipspost_post_aes_cbc\n", v44, "fipspost_post", 178, ((v43 - v40) * v45 / v46 / 1000000.0));
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("?");
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("fipspost_post_rsa_sig");
        }

        v47 = mach_absolute_time();
        v48 = fipspost_post_rsa_sig(a1);
        v49 = mach_absolute_time();
        v50 = v49;
        if (v48)
        {
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: fipspost_post_rsa_sig: %d\n", v49, "fipspost_post", 179, v48);
          if (!v14)
          {
            v14 = v22 + v48 - 3000;
          }
        }

        else
        {
          v51 = mach_absolute_time();
          info = 0;
          mach_timebase_info(&info);
          LODWORD(v53) = info.denom;
          LODWORD(v52) = info.numer;
          printf("FIPSPOST_USER [%llu] %s:%d: PASSED: (%u ms) - fipspost_post_rsa_sig\n", v51, "fipspost_post", 179, ((v50 - v47) * v52 / v53 / 1000000.0));
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("?");
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("fipspost_post_ecdsa");
        }

        v54 = mach_absolute_time();
        v55 = fipspost_post_ecdsa(a1);
        v56 = mach_absolute_time();
        v57 = v56;
        if (v55)
        {
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: fipspost_post_ecdsa: %d\n", v56, "fipspost_post", 180, v55);
          if (!v14)
          {
            v14 = v22 + v55 - 4000;
          }
        }

        else
        {
          v58 = mach_absolute_time();
          info = 0;
          mach_timebase_info(&info);
          LODWORD(v60) = info.denom;
          LODWORD(v59) = info.numer;
          printf("FIPSPOST_USER [%llu] %s:%d: PASSED: (%u ms) - fipspost_post_ecdsa\n", v58, "fipspost_post", 180, ((v57 - v54) * v59 / v60 / 1000000.0));
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("?");
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("fipspost_post_ecdh");
        }

        v61 = mach_absolute_time();
        v62 = fipspost_post_ecdh(a1);
        v63 = mach_absolute_time();
        v64 = v63;
        if (v62)
        {
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: fipspost_post_ecdh: %d\n", v63, "fipspost_post", 181, v62);
          if (!v14)
          {
            v14 = v22 + v62 - 5000;
          }
        }

        else
        {
          v65 = mach_absolute_time();
          info = 0;
          mach_timebase_info(&info);
          LODWORD(v67) = info.denom;
          LODWORD(v66) = info.numer;
          printf("FIPSPOST_USER [%llu] %s:%d: PASSED: (%u ms) - fipspost_post_ecdh\n", v65, "fipspost_post", 181, ((v64 - v61) * v66 / v67 / 1000000.0));
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("?");
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("fipspost_post_aes_ccm");
        }

        v68 = mach_absolute_time();
        v69 = fipspost_post_aes_ccm(a1);
        v70 = mach_absolute_time();
        v71 = v70;
        if (v69)
        {
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: fipspost_post_aes_ccm: %d\n", v70, "fipspost_post", 182, v69);
          if (!v14)
          {
            v14 = v22 + v69 - 6000;
          }
        }

        else
        {
          v72 = mach_absolute_time();
          info = 0;
          mach_timebase_info(&info);
          LODWORD(v74) = info.denom;
          LODWORD(v73) = info.numer;
          printf("FIPSPOST_USER [%llu] %s:%d: PASSED: (%u ms) - fipspost_post_aes_ccm\n", v72, "fipspost_post", 182, ((v71 - v68) * v73 / v74 / 1000000.0));
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("?");
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("fipspost_post_aes_gcm");
        }

        v75 = mach_absolute_time();
        v76 = fipspost_post_aes_gcm(a1);
        v77 = mach_absolute_time();
        v78 = v77;
        if (v76)
        {
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: fipspost_post_aes_gcm: %d\n", v77, "fipspost_post", 183, v76);
          if (!v14)
          {
            v14 = v22 + v76 - 7000;
          }
        }

        else
        {
          v79 = mach_absolute_time();
          info = 0;
          mach_timebase_info(&info);
          LODWORD(v81) = info.denom;
          LODWORD(v80) = info.numer;
          printf("FIPSPOST_USER [%llu] %s:%d: PASSED: (%u ms) - fipspost_post_aes_gcm\n", v79, "fipspost_post", 183, ((v78 - v75) * v80 / v81 / 1000000.0));
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("?");
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("fipspost_post_aes_cmac");
        }

        v82 = mach_absolute_time();
        v83 = fipspost_post_aes_cmac(a1);
        v84 = mach_absolute_time();
        v85 = v84;
        if (v83)
        {
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: fipspost_post_aes_cmac: %d\n", v84, "fipspost_post", 184, v83);
          if (!v14)
          {
            v14 = v22 + v83 - 8000;
          }
        }

        else
        {
          v86 = mach_absolute_time();
          info = 0;
          mach_timebase_info(&info);
          LODWORD(v88) = info.denom;
          LODWORD(v87) = info.numer;
          printf("FIPSPOST_USER [%llu] %s:%d: PASSED: (%u ms) - fipspost_post_aes_cmac\n", v86, "fipspost_post", 184, ((v85 - v82) * v87 / v88 / 1000000.0));
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("?");
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("fipspost_post_hkdf");
        }

        v89 = mach_absolute_time();
        v90 = fipspost_post_hkdf(a1);
        v91 = mach_absolute_time();
        v92 = v91;
        if (v90)
        {
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: fipspost_post_hkdf: %d\n", v91, "fipspost_post", 185, v90);
          if (!v14)
          {
            v14 = v22 + v90 - 9000;
          }
        }

        else
        {
          v93 = mach_absolute_time();
          info = 0;
          mach_timebase_info(&info);
          LODWORD(v95) = info.denom;
          LODWORD(v94) = info.numer;
          printf("FIPSPOST_USER [%llu] %s:%d: PASSED: (%u ms) - fipspost_post_hkdf\n", v93, "fipspost_post", 185, ((v92 - v89) * v94 / v95 / 1000000.0));
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("?");
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("fipspost_post_pbkdf");
        }

        v96 = mach_absolute_time();
        v97 = fipspost_post_pbkdf(a1);
        v98 = mach_absolute_time();
        v99 = v98;
        if (v97)
        {
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: fipspost_post_pbkdf: %d\n", v98, "fipspost_post", 186, v97);
          if (!v14)
          {
            v14 = v22 + v97 - 10000;
          }
        }

        else
        {
          v100 = mach_absolute_time();
          info = 0;
          mach_timebase_info(&info);
          LODWORD(v102) = info.denom;
          LODWORD(v101) = info.numer;
          printf("FIPSPOST_USER [%llu] %s:%d: PASSED: (%u ms) - fipspost_post_pbkdf\n", v100, "fipspost_post", 186, ((v99 - v96) * v101 / v102 / 1000000.0));
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("?");
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("fipspost_post_drbg_hmac");
        }

        v103 = mach_absolute_time();
        v104 = fipspost_post_drbg_hmac(a1);
        v105 = mach_absolute_time();
        v106 = v105;
        if (v104)
        {
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: fipspost_post_drbg_hmac: %d\n", v105, "fipspost_post", 187, v104);
          if (!v14)
          {
            v14 = v22 + v104 - 11000;
          }
        }

        else
        {
          v107 = mach_absolute_time();
          info = 0;
          mach_timebase_info(&info);
          LODWORD(v109) = info.denom;
          LODWORD(v108) = info.numer;
          printf("FIPSPOST_USER [%llu] %s:%d: PASSED: (%u ms) - fipspost_post_drbg_hmac\n", v107, "fipspost_post", 187, ((v106 - v103) * v108 / v109 / 1000000.0));
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("?");
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("fipspost_post_kdf_ctr");
        }

        v110 = mach_absolute_time();
        v111 = fipspost_post_kdf_ctr(a1);
        v112 = mach_absolute_time();
        v113 = v112;
        if (v111)
        {
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: fipspost_post_kdf_ctr: %d\n", v112, "fipspost_post", 189, v111);
          if (!v14)
          {
            v14 = v22 + v111 - 12000;
          }
        }

        else
        {
          v114 = mach_absolute_time();
          info = 0;
          mach_timebase_info(&info);
          LODWORD(v116) = info.denom;
          LODWORD(v115) = info.numer;
          printf("FIPSPOST_USER [%llu] %s:%d: PASSED: (%u ms) - fipspost_post_kdf_ctr\n", v114, "fipspost_post", 189, ((v113 - v110) * v115 / v116 / 1000000.0));
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("?");
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("fipspost_post_kdf_ctr_cmac");
        }

        v117 = mach_absolute_time();
        v118 = fipspost_post_kdf_ctr_cmac(a1);
        v119 = mach_absolute_time();
        v120 = v119;
        if (v118)
        {
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: fipspost_post_kdf_ctr_cmac: %d\n", v119, "fipspost_post", 190, v118);
          if (!v14)
          {
            v14 = v22 + v118 - 13000;
          }
        }

        else
        {
          v121 = mach_absolute_time();
          info = 0;
          mach_timebase_info(&info);
          LODWORD(v123) = info.denom;
          LODWORD(v122) = info.numer;
          printf("FIPSPOST_USER [%llu] %s:%d: PASSED: (%u ms) - fipspost_post_kdf_ctr_cmac\n", v121, "fipspost_post", 190, ((v120 - v117) * v122 / v123 / 1000000.0));
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("?");
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("fipspost_post_aes_xts");
        }

        v124 = mach_absolute_time();
        v125 = fipspost_post_aes_xts(a1);
        v126 = mach_absolute_time();
        v127 = v126;
        if (v125)
        {
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: fipspost_post_aes_xts: %d\n", v126, "fipspost_post", 191, v125);
          if (!v14)
          {
            v14 = v22 + v125 - 14000;
          }
        }

        else
        {
          v128 = mach_absolute_time();
          info = 0;
          mach_timebase_info(&info);
          LODWORD(v130) = info.denom;
          LODWORD(v129) = info.numer;
          printf("FIPSPOST_USER [%llu] %s:%d: PASSED: (%u ms) - fipspost_post_aes_xts\n", v128, "fipspost_post", 191, ((v127 - v124) * v129 / v130 / 1000000.0));
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("?");
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("fipspost_post_tdes_ecb");
        }

        v131 = mach_absolute_time();
        v132 = fipspost_post_tdes_ecb(a1);
        v133 = mach_absolute_time();
        v134 = v133;
        if (v132)
        {
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: fipspost_post_tdes_ecb: %d\n", v133, "fipspost_post", 192, v132);
          if (!v14)
          {
            v14 = v22 + v132 - 15000;
          }
        }

        else
        {
          v135 = mach_absolute_time();
          info = 0;
          mach_timebase_info(&info);
          LODWORD(v137) = info.denom;
          LODWORD(v136) = info.numer;
          printf("FIPSPOST_USER [%llu] %s:%d: PASSED: (%u ms) - fipspost_post_tdes_ecb\n", v135, "fipspost_post", 192, ((v134 - v131) * v136 / v137 / 1000000.0));
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("?");
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("fipspost_post_drbg_ctr");
        }

        v138 = mach_absolute_time();
        v139 = fipspost_post_drbg_ctr(a1);
        v140 = mach_absolute_time();
        v141 = v140;
        if (v139)
        {
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: fipspost_post_drbg_ctr: %d\n", v140, "fipspost_post", 193, v139);
          if (!v14)
          {
            v14 = v22 + v139 - 16000;
          }
        }

        else
        {
          v142 = mach_absolute_time();
          info = 0;
          mach_timebase_info(&info);
          LODWORD(v144) = info.denom;
          LODWORD(v143) = info.numer;
          printf("FIPSPOST_USER [%llu] %s:%d: PASSED: (%u ms) - fipspost_post_drbg_ctr\n", v142, "fipspost_post", 193, ((v141 - v138) * v143 / v144 / 1000000.0));
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("?");
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("fipspost_post_ffdh");
        }

        v145 = mach_absolute_time();
        v146 = fipspost_post_ffdh(a1);
        v147 = mach_absolute_time();
        v148 = v147;
        if (v146)
        {
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: fipspost_post_ffdh: %d\n", v147, "fipspost_post", 195, v146);
          if (!v14)
          {
            v14 = v22 + v146 - 17000;
          }
        }

        else
        {
          v149 = mach_absolute_time();
          info = 0;
          mach_timebase_info(&info);
          LODWORD(v151) = info.denom;
          LODWORD(v150) = info.numer;
          printf("FIPSPOST_USER [%llu] %s:%d: PASSED: (%u ms) - fipspost_post_ffdh\n", v149, "fipspost_post", 195, ((v148 - v145) * v150 / v151 / 1000000.0));
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("?");
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("fipspost_post_rsa_enc_dec");
        }

        v152 = mach_absolute_time();
        v153 = fipspost_post_rsa_enc_dec(a1);
        v154 = mach_absolute_time();
        v155 = v154;
        if (v153)
        {
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: fipspost_post_rsa_enc_dec: %d\n", v154, "fipspost_post", 196, v153);
          if (!v14)
          {
            v14 = v22 + v153 - 18000;
          }
        }

        else
        {
          v156 = mach_absolute_time();
          info = 0;
          mach_timebase_info(&info);
          LODWORD(v158) = info.denom;
          LODWORD(v157) = info.numer;
          printf("FIPSPOST_USER [%llu] %s:%d: PASSED: (%u ms) - fipspost_post_rsa_enc_dec\n", v156, "fipspost_post", 196, ((v155 - v152) * v157 / v158 / 1000000.0));
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("?");
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("fipspost_post_shake");
        }

        v159 = mach_absolute_time();
        v160 = fipspost_post_shake(a1);
        v161 = mach_absolute_time();
        v162 = v161;
        if (v160)
        {
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: fipspost_post_shake: %d\n", v161, "fipspost_post", 197, v160);
          if (!v14)
          {
            v14 = v22 + v160 - 19000;
          }
        }

        else
        {
          v163 = mach_absolute_time();
          info = 0;
          mach_timebase_info(&info);
          LODWORD(v165) = info.denom;
          LODWORD(v164) = info.numer;
          printf("FIPSPOST_USER [%llu] %s:%d: PASSED: (%u ms) - fipspost_post_shake\n", v163, "fipspost_post", 197, ((v162 - v159) * v164 / v165 / 1000000.0));
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("?");
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("fipspost_post_mlkem");
        }

        v166 = mach_absolute_time();
        v167 = fipspost_post_mlkem(a1);
        v168 = mach_absolute_time();
        v169 = v168;
        if (v167)
        {
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: fipspost_post_mlkem: %d\n", v168, "fipspost_post", 198, v167);
          if (!v14)
          {
            v14 = v22 + v167 - 20000;
          }
        }

        else
        {
          v170 = mach_absolute_time();
          info = 0;
          mach_timebase_info(&info);
          LODWORD(v172) = info.denom;
          LODWORD(v171) = info.numer;
          printf("FIPSPOST_USER [%llu] %s:%d: PASSED: (%u ms) - fipspost_post_mlkem\n", v170, "fipspost_post", 198, ((v169 - v166) * v171 / v172 / 1000000.0));
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("?");
        }

        if (fipspost_trace_is_active())
        {
          fipspost_trace_call("fipspost_post_mldsa");
        }

        v173 = mach_absolute_time();
        v174 = fipspost_post_mldsa(a1);
        v175 = mach_absolute_time();
        v176 = v175;
        if (v174)
        {
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: fipspost_post_mldsa: %d\n", v175, "fipspost_post", 199, v174);
          if (!v14)
          {
            v14 = v22 + v174 - 21000;
          }
        }

        else
        {
          v177 = mach_absolute_time();
          info = 0;
          mach_timebase_info(&info);
          LODWORD(v179) = info.denom;
          LODWORD(v178) = info.numer;
          printf("FIPSPOST_USER [%llu] %s:%d: PASSED: (%u ms) - fipspost_post_mldsa\n", v177, "fipspost_post", 199, ((v176 - v173) * v178 / v179 / 1000000.0));
        }

        v180 = mach_absolute_time();
        if (v14)
        {
          if (v6)
          {
            goto LABEL_206;
          }
        }

        else
        {
          v181 = v180;
          v182 = mach_absolute_time();
          info = 0;
          mach_timebase_info(&info);
          LODWORD(v184) = info.denom;
          LODWORD(v183) = info.numer;
          printf("FIPSPOST_USER [%llu] %s:%d: all tests PASSED (%u ms)\n", v182, "fipspost_post", 219, ((v181 - v4) * v183 / v184 / 1000000.0));
          if (v6)
          {
LABEL_206:
            if ((a1 & 0x100) != 0)
            {
              return 0;
            }

            else
            {
              return v14;
            }
          }
        }

        (v5[1])(v14);
        goto LABEL_206;
      }
    }

    else
    {
      v19 = mach_absolute_time();
      info = 0;
      mach_timebase_info(&info);
      LODWORD(v21) = info.denom;
      LODWORD(v20) = info.numer;
      printf("FIPSPOST_USER [%llu] %s:%d: PASSED: (%u ms) - fipspost_post_hmac\n", v19, "fipspost_post", 166, ((v13 - v10) * v20 / v21 / 1000000.0));
      v14 = 0;
      if ((a1 & 0x40) == 0)
      {
        goto LABEL_14;
      }
    }

    v22 = -2000;
    goto LABEL_26;
  }

  return result;
}

uint64_t ccz_lsl(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v20 = timingsafe_enable_if_supported();
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
    ccn_shift_left(v15 - v8 + 1, *(a1 + 24) + 8 * v8, *(a1 + 24) + 8 * v8, v9, v16);
    v17 = ccz_n(a1);
    v18 = ccn_n(v17 + 1, *(a1 + 24));
    ccz_set_n(a1, v18);
  }

  return cc_disable_dit_with_sb(&v20);
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
      if (inited || (inited = ccrsa_find_prime_multiple_ws(v30, a1, (v21 + 1), v19, v20, v27), inited) || (inited = ccrsa_recover_pq_ws(v30, a1, v20), inited) || (inited = ccrsa_crt_makekey_ws(v30, a1), inited))
      {
        v22 = inited;
      }

      else
      {
        v25 = cczp_prime(a1);
        v26 = ccn_cmp_public_value((a2 + 7) >> 3, v18, v25);
        if (ccn_cmp_public_value((a2 + 7) >> 3, v19, &v17[3 * *a1 + 1]) | v26)
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

uint64_t ccrsa_find_prime_multiple_ws(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unsigned int (**a6)(void, unint64_t, uint64_t))
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
      v11->i64[v9 + v13] = ccn_addmul1(v9, v11 + 8 * v13, a4, *(a3 + 8 * v13));
      v13 = v14;
      v15 = v12 > v14++;
    }

    while (v15);
  }

  if (v11->i64[0])
  {
    v11->i64[0] &= ~1uLL;
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

      if (ccn_cmp_public_value(v9, a5, v32) && ccn_cmp_public_value(v9, __dst, a5) && v19)
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
      if (!ccn_cmp_public_value(v9, v10, v32))
      {
        break;
      }

      if (ccn_cmp_public_value(v9, __dst, v10))
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
  if (ccn_gcd_ws(a1, v6, v8->i64, v6, v10, v11, v8) || (v13 = cczp_prime(a2), ccn_div_exact_ws(a1, v6, v9, v13, v8), (v14 = ccn_cmp_public_value(v6, v8, v9)) == 0))
  {
    result = 4294967273;
  }

  else
  {
    ccn_cond_swap(v6, v14 < 0, v8->i64, v9);
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
  v56 = *MEMORY[0x29EDCA608];
  *a9 = 0;
  a9[1] = 0;
  if (*a2 != a5)
  {
    return 4294967270;
  }

  v9 = a7;
  v11 = (a7 + 7) >> 3;
  v12 = a5 + a4;
  if (v11 < a5 + a4 + 2)
  {
    return 4294967270;
  }

  v52 = a1;
  v53 = a4;
  v18 = *(a1 + 16);
  v17 = *(a1 + 24);
  v50 = a6;
  v51 = v18;
  v19 = v17(a1, (a7 + 63) >> 6);
  v49 = a8[v11 - 1] ^ 0xBC;
  v20 = -v9 & 7;
  v21 = (-256 >> (-v9 & 7)) & *a8;
  v22 = a3;
  v23 = v11 + ~a5;
  v24 = ccmgf_internal(v22, v23, v19, a5, &a8[v23]);
  v25 = v19;
  v26 = v24 | v21 | v49;
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

  v36 = v51;
  v35 = v52;
  v37 = v23;
  v38 = v53;
  v39 = a8[v28] ^ v27;
  if (v53)
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
  v52 = v48;
  LODWORD(v51) = v39 ^ 1;
  __src = 0;
  MEMORY[0x2A1C7C4A8](v24);
  v45 = &v48[-v44];
  ccdigest_init_internal(a2, &v48[-v44]);
  ccdigest_update_internal(a2, v45, 8uLL, &__src);
  ccdigest_update_internal(a2, v45, a5, v50);
  if (v53)
  {
    ccdigest_update_internal(a2, v45, v53, v43);
  }

  (*(a2 + 56))(a2, v45, v55);
  cc_clear(*(a2 + 8) + *(a2 + 16) + 12, v45);
  v46 = cc_cmp_safe_internal(a5, v55, &a8[v37]);
  v13 = (v26 | v51 | v46) != 0 ? 0xFFFFFFE6 : 0;
  cc_fault_canary_set(a9, &CCRSA_PSS_FAULT_CANARY, a5, &a8[v37], v55);
  *(v35 + 2) = v36;
  return v13;
}

uint64_t ccrsa_emsa_pss_decode_ws(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4, size_t a5, char *a6, uint64_t a7, unsigned __int8 *a8)
{
  v9[2] = *MEMORY[0x29EDCA608];
  v9[0] = 0xAAAAAAAAAAAAAAAALL;
  v9[1] = 0xAAAAAAAAAAAAAAAALL;
  return ccrsa_emsa_pss_decode_canary_out_ws(a1, a2, a3, a4, a5, a6, a7, a8, v9);
}

uint64_t ccrsa_emsa_pss_decode(uint64_t a1, uint64_t a2, size_t a3, size_t a4, char *a5, uint64_t a6, unsigned __int8 *a7)
{
  v19[2] = *MEMORY[0x29EDCA608];
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
  v20 = *MEMORY[0x29EDCA608];
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
  if (fipspost_trace_is_active())
  {
    fipspost_trace_call("ccaes_xts_decrypt_mode");
  }

  return &ccaes_arm_xts_decrypt_mode;
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
  v19 = *MEMORY[0x29EDCA608];
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
  v32 = *MEMORY[0x29EDCA608];
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
  v18 = *MEMORY[0x29EDCA608];
  ccdigest_internal(a3, a5, a6, v17);
  return ccrsa_verify_pss_digest_ws(a1, a2, a3, a4, *a3, v17, a7, a8, a9, a10);
}

uint64_t ccrsa_verify_pss_msg(uint64_t *a1, size_t *a2, uint64_t a3, size_t a4, char *a5, uint64_t a6, uint64_t a7, size_t a8, void *a9)
{
  v25 = *MEMORY[0x29EDCA608];
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
  v9 = *MEMORY[0x29EDCA608];
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

uint64_t ccmode_siv_hmac_auth_finalize(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = *(*a1 + 56);
  v6 = *v5;
  v7 = *(a1 + 3);
  if (v7 > 6 || ((1 << v7) & 0x54) == 0)
  {
    cc_clear(*v5, __src);
    *(a1 + 3) = 255;
    return 4294967228;
  }

  else
  {
    v10 = *(a1 + 2);
    if (a2 || v7 != 2)
    {
      ccmode_siv_hmac_auth_backend(a1, a2, a3, 80);
      cchmac_final_internal(*(*a1 + 56), a1 + 12, __src);
    }

    else
    {
      v13[0] = 67305985;
      cchmac_internal(v5, *(a1 + 1) >> 1, a1 + 32, 4, v13, __src);
    }

    memcpy(a4, __src, v10);
    *(a1 + 3) = 5;
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
  v27 = *MEMORY[0x29EDCA608];
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

void *ccsha512_di()
{
  if (fipspost_trace_is_active())
  {
    fipspost_trace_call("ccsha512_di");
  }

  if (MEMORY[0xFFFFFC010] < 0)
  {
    return &ccsha512_vng_arm_hw_di;
  }

  else
  {
    return &ccsha512_vng_arm_di;
  }
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

void *ccaes_cbc_encrypt_mode()
{
  if (fipspost_trace_is_active())
  {
    fipspost_trace_call("ccaes_cbc_encrypt_mode");
  }

  return &ccaes_arm_cbc_encrypt_mode;
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
  v6 = a2 + 1;
  (*(a1 + 56))();
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *(a2 + v7 + v8 + 8) = *a1;
  *a2 = 8 * v8;
  memcpy(v6, a2 + ((v7 + v8 + 19) & 0xFFFFFFFFFFFFFFF8), v7);
  v9 = *(a1 + 56);

  return v9(a1, a2, a3);
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
  v50 = *MEMORY[0x29EDCA608];
  v42 = cc_malloc_clear(0x200uLL);
  v43 = xmmword_299DA9CB0;
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
    v34 = v20;
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

    ccn_mux(v34, v26, v36, v21, v23);
    ccn_mux(v34, v26, v14, v22, v24);
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

int8x16_t *aes_ctr_crypt(int8x16_t *a1, int8x16_t *a2, uint64_t a3, int8x16_t *a4, int8x16_t *a5, uint64_t a6)
{
  v6 = a5[15].i32[0];
  v8 = __OFSUB__(a3, 128);
  v7 = a3 - 128 < 0;
  v9 = a3 - 128;
  if (v7 != v8)
  {
    return Decrypt_Main_Loop_End(a1, a2, v9, a4, a5, a6, v6);
  }

  else
  {
    return Decrypt_Main_Loop(a1, a2, v9, a4, a5, a6, v6);
  }
}

uint64_t Decrypt_Main_Loop(_OWORD *a1, int8x16_t *a2, uint64_t a3, uint64_t a4, int8x16_t *a5, uint64_t a6, int a7)
{
  do
  {
    v8 = vaddq_s64(v7, vaddq_s64(v7, vaddq_s64(v7, vaddq_s64(v7, v8))));
    _Q20 = *a5;
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

    _Q20 = a5[1];
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

    _Q20 = a5[2];
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

    _Q20 = a5[3];
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

    _Q20 = a5[4];
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

    _Q20 = a5[5];
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

    _Q20 = a5[6];
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

    _Q20 = a5[7];
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

    _Q20 = a5[8];
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

    _Q20 = a5[9];
    v167 = a5[10];
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

      _Q20 = a5[10];
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

      _Q20 = a5[11];
      v167 = a5[12];
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

        _Q20 = a5[12];
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

        _Q20 = a5[13];
        v167 = a5[14];
      }
    }

    v235 = *a1;
    v236 = *(a1 + 1);
    v237 = *(a1 + 2);
    v238 = *(a1 + 3);
    v234 = a1 + 4;
    __asm
    {
      AESE            V22.16B, V20.16B
      AESE            V23.16B, V20.16B
      AESE            V24.16B, V20.16B
      AESE            V25.16B, V20.16B
    }

    v243 = veorq_s8(v235, veorq_s8(_Q22, v167));
    v244 = veorq_s8(v236, veorq_s8(_Q23, v167));
    v245 = veorq_s8(v237, veorq_s8(_Q24, v167));
    v246 = veorq_s8(v238, veorq_s8(_Q25, v167));
    v247 = *v234;
    v248 = *(v234 + 1);
    v249 = *(v234 + 2);
    v250 = *(v234 + 3);
    a1 = v234 + 4;
    __asm
    {
      AESE            V26.16B, V20.16B
      AESE            V27.16B, V20.16B
      AESE            V28.16B, V20.16B
      AESE            V29.16B, V20.16B
    }

    *a2 = v243;
    a2[1] = v244;
    a2[2] = v245;
    a2[3] = v246;
    v255 = a2 + 4;
    *v255 = veorq_s8(v247, veorq_s8(_Q26, v167));
    v255[1] = veorq_s8(v248, veorq_s8(_Q27, v167));
    v255[2] = veorq_s8(v249, veorq_s8(_Q28, v167));
    v255[3] = veorq_s8(v250, veorq_s8(_Q29, v167));
    a2 = v255 + 4;
    _VF = __OFSUB__(a3, 128);
    _NF = a3 - 128 < 0;
    a3 -= 128;
  }

  while (_NF == _VF);
  return Decrypt_Main_Loop_End();
}

int8x16_t *Decrypt_Main_Loop_End(int8x16_t *result, int8x16_t *a2, uint64_t a3, int8x16_t *a4, int8x16_t *a5, uint64_t a6, int a7)
{
  v10 = a3 < -112;
  for (i = a3 + 112; !v10; i -= 16)
  {
    _Q4 = *a5;
    _Q5 = a5[1];
    _Q6 = a5[2];
    v9 = vaddq_s64(v7, v9);
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q4 = a5[3];
    _Q5 = a5[4];
    _Q6 = a5[5];
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q4 = a5[6];
    _Q5 = a5[7];
    _Q6 = a5[8];
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q20 = a5[9];
    _Q21 = a5[10];
    if (a7 > 160)
    {
      __asm
      {
        AESE            V7.16B, V20.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V21.16B
        AESMC           V7.16B, V7.16B
      }

      _Q20 = a5[11];
      _Q21 = a5[12];
      if (a7 > 192)
      {
        __asm
        {
          AESE            V7.16B, V20.16B
          AESMC           V7.16B, V7.16B
          AESE            V7.16B, V21.16B
          AESMC           V7.16B, V7.16B
        }

        _Q20 = a5[13];
        _Q21 = a5[14];
      }
    }

    __asm { AESE            V7.16B, V20.16B }

    v54 = *result++;
    *a2++ = veorq_s8(v54, veorq_s8(_Q7, _Q21));
    v10 = i < 16;
  }

  *a4 = vqtbl1q_s8(v9, v8);
  return result;
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

BOOL OUTLINED_FUNCTION_0_13()
{

  return timingsafe_enable_if_supported();
}

uint64_t OUTLINED_FUNCTION_1_5()
{

  return cced25519_make_pub_internal(v3, v2, v1, v0);
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
  v67 = *MEMORY[0x29EDCA608];
  v19 = (*(*a8 + 2))();
  if (a10 < 5 || *v19 < *(*a8 + 4))
  {
    return 4294967289;
  }

  v61 = a6;
  v62 = a3;
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
    v54 = a11[v21 + 2];
    v57 = &a11[v21];
    v52 = a4;
    v26 = *a2;
    v27 = **a2;
    v56 = a8[1]();
    v28 = ccecb_context_size(v56);
    v60 = &v52;
    MEMORY[0x2A1C7C4A8](v28);
    v55 = &v52 - v29;
    v30 = *(a1 + 24);
    v59 = *(a1 + 16);
    v58 = v30(a1, v27);
    v31 = *(a1 + 24);
    v53 = 24 * v27;
    v32 = v31(a1, (24 * v27 + 23) >> 3);
    *v32 = v26;
    if ((((cczp_bitlen(v26) + 7) >> 2) | 1) == v21)
    {
      v33 = ccec_import_pub_ws(a1, v26, v21, a11 + 2, v32);
    }

    else
    {
      if ((a5 & 1) == 0 || v21 > (cczp_bitlen(*v32) + 7) >> 3)
      {
        v22 = 4294967289;
        goto LABEL_31;
      }

      v33 = ccec_compact_import_pub_ws(a1, v26, v21, a11 + 2, v32);
    }

    v22 = v33;
    if (!v33)
    {
      v65 = (cczp_bitlen(v26) + 7) >> 3;
      v34 = v58;
      v35 = ccecdh_compute_shared_secret_ws(a1, a2, v32, &v65, v58, 0);
      if (v35)
      {
        v22 = v35;
        goto LABEL_31;
      }

      v36 = v54;
      ccec_rfc6637_kdf(v24, a7, *a8, v65, v34, 0x14uLL, a9, v66);
      v38 = v55;
      v37 = v56;
      ccecb_init_internal(v56);
      cc_clear(*v24, v66);
      v39 = (*(a1 + 24))(a1, v53 + 90);
      v63 = 0xA6A6A6A6A6A6A6A6;
      v64 = v36;
      v22 = ccwrap_auth_decrypt_withiv_internal(v37, v38, v36, (v57 + 3), &v64, v39, &v63);
      v40 = ccecb_context_size(v37);
      cc_clear(v40, v38);
      if (!v22)
      {
        v41 = v64;
        if (v64 - 1 >= v36 - 1 || (v42 = v62, *v61 = *v39, v43 = (v39 + v41 - 1), v44 = *v43, v45 = v41 - 3, v46 = v45 - v44, v47 = v52, v45 < v44))
        {
LABEL_33:
          v22 = 4294967294;
          goto LABEL_31;
        }

        if (*v43)
        {
          v48 = *v43;
          do
          {
            v49 = *v43--;
            if (v49 != v44)
            {
              goto LABEL_33;
            }
          }

          while (--v48);
        }

        if (*v42 < v46)
        {
          v22 = 4294967133;
          goto LABEL_31;
        }

        *v42 = v46;
        v50 = pgp_key_checksum(v46, (v39 + 1));
        v51 = v39 + *v42;
        if (*(v51 + 1) != v50 >> 8 || *(v51 + 2) != v50)
        {
          goto LABEL_33;
        }

        memcpy(v47, (v39 + 1), *v42);
        v22 = 0;
      }
    }

LABEL_31:
    *(a1 + 16) = v59;
    return v22;
  }

  return 4294967289;
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

int32x4_t *AccelerateCrypto_SHA1_compress(int32x4_t *result, uint64_t a2, int8x16_t *a3)
{
  if (a2)
  {
    v5 = *a3;
    v6 = a3[1];
    v7 = a3[2];
    v8 = a3[3];
    v4 = a3 + 4;
    v10 = *result;
    v9 = result + 1;
    v11 = v10;
    v10.i32[0] = v9->i32[0];
    v12 = v9 - 1;
    v3.i32[0] = v10.i32[0];
    _Q1 = vrev32q_s8(v6);
    _Q2 = vrev32q_s8(v7);
    _Q3 = vrev32q_s8(v8);
    _Q4 = vaddq_s32(vrev32q_s8(v5), *K_XMM_AR);
    _Q5 = vaddq_s32(_Q1, *K_XMM_AR);
    _Q19 = v3;
    _Q6 = vaddq_s32(_Q2, *K_XMM_AR);
    _Q7 = vaddq_s32(_Q3, *K_XMM_AR);
    __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

    _S20 = v11.i32[0];
    __asm
    {
      SHA1C           Q18, S19, V4.4S
      SHA1H           S19, S20
      SHA1SU1         V0.4S, V3.4S
    }

    _Q4 = vaddq_s32(_Q0, *K_XMM_AR);
    __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1C           Q18, S19, V5.4S
      SHA1H           S19, S20
      SHA1SU1         V1.4S, V0.4S
    }

    _Q5 = vaddq_s32(_Q1, *&K_XMM_AR[2]);
    __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1C           Q18, S19, V6.4S
      SHA1H           S19, S20
      SHA1SU1         V2.4S, V1.4S
    }

    _Q6 = vaddq_s32(_Q2, *&K_XMM_AR[2]);
    __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1C           Q18, S19, V7.4S
      SHA1H           S19, S20
      SHA1SU1         V3.4S, V2.4S
    }

    _Q7 = vaddq_s32(_Q3, *&K_XMM_AR[2]);
    __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1C           Q18, S19, V4.4S
      SHA1H           S19, S20
      SHA1SU1         V0.4S, V3.4S
    }

    _Q4 = vaddq_s32(_Q0, *&K_XMM_AR[2]);
    __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V5.4S
      SHA1H           S19, S20
      SHA1SU1         V1.4S, V0.4S
    }

    _Q5 = vaddq_s32(_Q1, *&K_XMM_AR[2]);
    __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V6.4S
      SHA1H           S19, S20
      SHA1SU1         V2.4S, V1.4S
    }

    _Q6 = vaddq_s32(_Q2, *&K_XMM_AR[4]);
    __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V7.4S
      SHA1H           S19, S20
      SHA1SU1         V3.4S, V2.4S
    }

    _Q7 = vaddq_s32(_Q3, *&K_XMM_AR[4]);
    __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V4.4S
      SHA1H           S19, S20
      SHA1SU1         V0.4S, V3.4S
    }

    _Q4 = vaddq_s32(_Q0, *&K_XMM_AR[4]);
    __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V5.4S
      SHA1H           S19, S20
      SHA1SU1         V1.4S, V0.4S
    }

    _Q5 = vaddq_s32(_Q1, *&K_XMM_AR[4]);
    __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1M           Q18, S19, V6.4S
      SHA1H           S19, S20
      SHA1SU1         V2.4S, V1.4S
    }

    _Q6 = vaddq_s32(_Q2, *&K_XMM_AR[4]);
    __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1M           Q18, S19, V7.4S
      SHA1H           S19, S20
      SHA1SU1         V3.4S, V2.4S
    }

    _Q7 = vaddq_s32(_Q3, loc_299D32460);
    __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1M           Q18, S19, V4.4S
      SHA1H           S19, S20
      SHA1SU1         V0.4S, V3.4S
    }

    _Q4 = vaddq_s32(_Q0, loc_299D32460);
    __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1M           Q18, S19, V5.4S
      SHA1H           S19, S20
      SHA1SU1         V1.4S, V0.4S
    }

    _Q5 = vaddq_s32(_Q1, loc_299D32460);
    __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1M           Q18, S19, V6.4S
      SHA1H           S19, S20
      SHA1SU1         V2.4S, V1.4S
    }

    _Q6 = vaddq_s32(_Q2, loc_299D32460);
    __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V7.4S
      SHA1H           S19, S20
      SHA1SU1         V3.4S, V2.4S
    }

    _Q7 = vaddq_s32(_Q3, loc_299D32460);
    v105 = a2 <= 1;
    for (i = a2 - 1; !v105; --i)
    {
      v107 = *v4;
      v108 = v4[1];
      v109 = v4[2];
      v110 = v4[3];
      v4 += 4;
      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V4.4S
        SHA1H           S19, S20
      }

      _Q4 = vaddq_s32(vrev32q_s8(v107), *K_XMM_AR);
      _Q1 = vrev32q_s8(v108);
      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V5.4S
        SHA1H           S19, S20
      }

      _Q5 = vaddq_s32(_Q1, *K_XMM_AR);
      _Q2 = vrev32q_s8(v109);
      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V6.4S
        SHA1H           S19, S20
      }

      _Q6 = vaddq_s32(_Q2, *K_XMM_AR);
      _Q3 = vrev32q_s8(v110);
      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V7.4S
        SHA1H           S19, S20
      }

      _Q7 = vaddq_s32(_Q3, *K_XMM_AR);
      _Q19 = vaddq_s32(v3, _Q19);
      v11 = vaddq_s32(v11, _Q18);
      v3 = _Q19;
      __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

      _S20 = v11.i32[0];
      __asm
      {
        SHA1C           Q18, S19, V4.4S
        SHA1H           S19, S20
        SHA1SU1         V0.4S, V3.4S
      }

      _Q4 = vaddq_s32(_Q0, *K_XMM_AR);
      __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1C           Q18, S19, V5.4S
        SHA1H           S19, S20
        SHA1SU1         V1.4S, V0.4S
      }

      _Q5 = vaddq_s32(_Q1, *&K_XMM_AR[2]);
      __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1C           Q18, S19, V6.4S
        SHA1H           S19, S20
        SHA1SU1         V2.4S, V1.4S
      }

      _Q6 = vaddq_s32(_Q2, *&K_XMM_AR[2]);
      __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1C           Q18, S19, V7.4S
        SHA1H           S19, S20
        SHA1SU1         V3.4S, V2.4S
      }

      _Q7 = vaddq_s32(_Q3, *&K_XMM_AR[2]);
      __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1C           Q18, S19, V4.4S
        SHA1H           S19, S20
        SHA1SU1         V0.4S, V3.4S
      }

      _Q4 = vaddq_s32(_Q0, *&K_XMM_AR[2]);
      __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V5.4S
        SHA1H           S19, S20
        SHA1SU1         V1.4S, V0.4S
      }

      _Q5 = vaddq_s32(_Q1, *&K_XMM_AR[2]);
      __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V6.4S
        SHA1H           S19, S20
        SHA1SU1         V2.4S, V1.4S
      }

      _Q6 = vaddq_s32(_Q2, *&K_XMM_AR[4]);
      __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V7.4S
        SHA1H           S19, S20
        SHA1SU1         V3.4S, V2.4S
      }

      _Q7 = vaddq_s32(_Q3, *&K_XMM_AR[4]);
      __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V4.4S
        SHA1H           S19, S20
        SHA1SU1         V0.4S, V3.4S
      }

      _Q4 = vaddq_s32(_Q0, *&K_XMM_AR[4]);
      __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V5.4S
        SHA1H           S19, S20
        SHA1SU1         V1.4S, V0.4S
      }

      _Q5 = vaddq_s32(_Q1, *&K_XMM_AR[4]);
      __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1M           Q18, S19, V6.4S
        SHA1H           S19, S20
        SHA1SU1         V2.4S, V1.4S
      }

      _Q6 = vaddq_s32(_Q2, *&K_XMM_AR[4]);
      __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1M           Q18, S19, V7.4S
        SHA1H           S19, S20
        SHA1SU1         V3.4S, V2.4S
      }

      _Q7 = vaddq_s32(_Q3, loc_299D32460);
      __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1M           Q18, S19, V4.4S
        SHA1H           S19, S20
        SHA1SU1         V0.4S, V3.4S
      }

      _Q4 = vaddq_s32(_Q0, loc_299D32460);
      __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1M           Q18, S19, V5.4S
        SHA1H           S19, S20
        SHA1SU1         V1.4S, V0.4S
      }

      _Q5 = vaddq_s32(_Q1, loc_299D32460);
      __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1M           Q18, S19, V6.4S
        SHA1H           S19, S20
        SHA1SU1         V2.4S, V1.4S
      }

      _Q6 = vaddq_s32(_Q2, loc_299D32460);
      __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V7.4S
        SHA1H           S19, S20
        SHA1SU1         V3.4S, V2.4S
      }

      _Q7 = vaddq_s32(_Q3, loc_299D32460);
      v105 = i <= 1;
    }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V4.4S
      SHA1H           S19, S20
    }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V5.4S
      SHA1H           S19, S20
    }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V6.4S
      SHA1H           S19, S20
    }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V7.4S
      SHA1H           S19, S20
    }

    *v12 = vaddq_s32(v11, _Q18);
    result = v12 + 1;
    result->i32[0] = vaddq_s32(v3, _Q19).u32[0];
  }

  return result;
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

uint64_t ccrsa_eme_pkcs1v15_encode_internal(uint64_t (**a1)(void, size_t, char *), unint64_t a2, char *a3, size_t a4, void *a5)
{
  v21 = *MEMORY[0x29EDCA608];
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
          while (!v13[i])
          {
            v12 = (*a1)(a1, 12, __src);
            v13[i] = __src[0];
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

uint64_t ccrsa_eme_pkcs1v15_encode(uint64_t (**a1)(void, size_t, char *), unint64_t a2, char *a3, size_t a4, void *a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = ccrsa_eme_pkcs1v15_encode_internal(a1, a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t fipspost_post_ecdsa(int a1)
{
  v92 = *MEMORY[0x29EDCA608];
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
  v15 = &unk_2A201D718;
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
  v36 = &unk_2A201D888;
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
    if (ccec_x963_import_priv_ws(v83, v58, 0x55uLL, byte_299DA9D20, v59))
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

uint64_t ccmode_siv_hmac_decrypt(rsize_t *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x29EDCA608];
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
  if (ccmode_siv_hmac_temp_key_gen(a1, v18, &v19) || (BYTE8(v19) &= ~0x80u, BYTE12(v19) &= ~0x80u, v15 = ccctr_one_shot_internal(v4, a1[1] >> 1, v18, &v19, v11, a3 + v10, a4), v16 = ccmode_siv_hmac_auth_finalize(a1, v11, a4, v20), v16 | cc_cmp_safe_internal(v10, v20, v21) | v15))
  {
    cc_clear(v11, a4);
    cc_clear(v10, v20);
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
  v30 = *MEMORY[0x29EDCA608];
  v28 = timingsafe_enable_if_supported();
  v6 = ccckg_ctx_di(a1);
  v7 = ccckg_ctx_cp(a1);
  v8 = v7 + 4;
  v9 = *v7;
  MEMORY[0x2A1C7C4A8](v7);
  v11 = (&v26[-1] - v10);
  if (*(a1 + 32))
  {
    v12 = 4294967210;
  }

  else
  {
    v25 = a3;
    v13 = cczp_n(&v8[5 * v9]);
    v14 = cc_malloc_clear(8 * v13);
    v26[0] = v14;
    v26[1] = cczp_n(&v8[5 * v9]);
    v26[2] = 0;
    v26[3] = cc_ws_alloc;
    v27 = cc_ws_free;
    if (v14)
    {
      if (ccckg_sizeof_commitment(v7, v6) == a2)
      {
        v15 = a1 + 40;
        scalar_fips_retry_ws = ccec_generate_scalar_fips_retry_ws(v26, v7, *(a1 + 24), (a1 + 40));
        if (scalar_fips_retry_ws || (v17 = *(a1 + 24), v18 = *v6, v19 = ccckg_ctx_cp(a1), scalar_fips_retry_ws = (*v17)(v17, v18, v15 + 8 * *v19), scalar_fips_retry_ws))
        {
          v12 = scalar_fips_retry_ws;
        }

        else
        {
          v21 = cczp_bitlen(&v8[5 * *v7]);
          ccn_write_uint_padded_internal(v9, (a1 + 40), (v21 + 7) >> 3, __src);
          ccdigest_init_internal(v6, v11);
          v22 = cczp_bitlen(&v8[5 * *v7]);
          ccdigest_update_internal(v6, v11, (v22 + 7) >> 3, __src);
          v23 = *v6;
          v24 = ccckg_ctx_cp(a1);
          ccdigest_update_internal(v6, v11, v23, (v15 + 8 * *v24));
          (*(v6 + 56))(v6, v11, v25);
          cc_clear(*(v6 + 8) + *(v6 + 16) + 12, v11);
          v12 = 0;
          *(a1 + 32) = 1;
        }
      }

      else
      {
        v12 = 4294967289;
      }

      v27(v26);
      cc_clear(0x42uLL, __src);
    }

    else
    {
      v12 = 4294967283;
    }
  }

  cc_disable_dit_with_sb(&v28);
  return v12;
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
  v28 = *MEMORY[0x29EDCA608];
  v26 = timingsafe_enable_if_supported();
  v14 = ccckg2_ctx_di(a1);
  v15 = ccckg2_ctx_cp(a1);
  if (*(a1 + 32) == 2)
  {
    v16 = v15;
    if (*a4 == v15 && (v25 = a6, v17 = cczp_bitlen(&v15[5 * *v15 + 4]) + 7, (((cczp_bitlen(v16) + 7) >> 2) | 1) + (v17 >> 3) == a2))
    {
      ccdigest_internal(v14, a2, a3, v27);
      v18 = *v14;
      v19 = ccckg2_ctx_cp(a1);
      v20 = ccckg2_ctx_cp(a1);
      if (cc_cmp_safe_internal(v18, v27, a1 + 8 * *v20 + 8 * *v19 + 40))
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

      cc_clear(0x40uLL, v27);
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
  v24 = *MEMORY[0x29EDCA608];
  v22 = 0;
  v23 = 0;
  v2 = ccaes_cbc_encrypt_mode();
  if (ccnistkdf_ctr_cmac_fixed(v2, 0x20u, 16, "\xC1\x0B\x15.\x8C\x97\xB7~\x18pN\x0F\vӃ\x05", 0x3CuLL, byte_299DAA285, 0x10uLL, &v22))
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
  if (ccnistkdf_ctr_cmac_fixed(v9, 0x18u, 32, "Mq\x922\x80\xFBJ\x11\xB2_\x9DX\xD6\x77\x04\xD8\xF8\xBB-d؞۞\xE6\xF3\xDE2\xE4\x60\x1E\xFC", 0x3CuLL, "\xE2\x7B\x8F5\v\xC1\x36\r\xDC\x47l\xB0\xCA\xE8\x86\xF0\x16\x1D\xA2.\xE8\x15\x9C3\x0FTZ\xF1\xD7\x82\xA0\xF0\xAA\xCC\x3C=\xE6\x21\x58\a\x16\x1D\xF0\x93\x36\xD4p\xB5\xB4\xDB\x1C\xC0\xCEs\xED\x1D\x3E\xA2C\x80", 0x20uLL, &v20))
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

int32x4_t *AccelerateCrypto_SHA256_compress(int32x4_t *result, uint64_t a2, int8x16_t *a3)
{
  if (a2)
  {
    v4 = *a3;
    v5 = a3[1];
    v6 = a3[2];
    v7 = a3[3];
    v3 = a3 + 4;
    _Q1 = vrev32q_s8(v5);
    v9 = *result;
    _Q2 = vrev32q_s8(v6);
    _Q17 = result[1];
    _Q3 = vrev32q_s8(v7);
    _Q18 = *result;
    _Q4 = vaddq_s32(vrev32q_s8(v4), K256);
    _Q5 = vaddq_s32(_Q1, xmmword_299D352D0);
    _Q19 = _Q17;
    _Q6 = vaddq_s32(_Q2, xmmword_299D352E0);
    _Q7 = vaddq_s32(_Q3, xmmword_299D352F0);
    v19 = &xmmword_299D35300;
    v20 = 3;
    do
    {
      _Q20 = _Q18;
      v22 = *v19;
      __asm { SHA256SU0       V0.4S, V1.4S }

      v28 = v19[1];
      __asm { SHA256H         Q18, Q19, V4.4S }

      v30 = v19[2];
      __asm { SHA256SU1       V0.4S, V2.4S, V3.4S }

      v32 = v19[3];
      __asm { SHA256H2        Q19, Q20, V4.4S }

      v19 += 4;
      _Q4 = vaddq_s32(_Q0, v22);
      _Q20 = _Q18;
      __asm
      {
        SHA256SU0       V1.4S, V2.4S
        SHA256H         Q18, Q19, V5.4S
        SHA256SU1       V1.4S, V3.4S, V0.4S
        SHA256H2        Q19, Q20, V5.4S
      }

      _Q5 = vaddq_s32(_Q1, v28);
      _Q20 = _Q18;
      __asm
      {
        SHA256SU0       V2.4S, V3.4S
        SHA256H         Q18, Q19, V6.4S
        SHA256SU1       V2.4S, V0.4S, V1.4S
        SHA256H2        Q19, Q20, V6.4S
      }

      _Q6 = vaddq_s32(_Q2, v30);
      --v20;
      _Q20 = _Q18;
      __asm
      {
        SHA256SU0       V3.4S, V0.4S
        SHA256H         Q18, Q19, V7.4S
        SHA256SU1       V3.4S, V1.4S, V2.4S
        SHA256H2        Q19, Q20, V7.4S
      }

      _Q7 = vaddq_s32(_Q3, v32);
    }

    while (!(_NF ^ _VF | _ZF));
    v44 = a2 <= 1;
    v45 = a2 - 1;
    if (!v44)
    {
      v46 = (v19 - 16);
      do
      {
        _Q20 = _Q18;
        __asm { SHA256H         Q18, Q19, V4.4S }

        v49 = v3[1];
        v50 = v3[2];
        __asm { SHA256H2        Q19, Q20, V4.4S }

        v52 = v3[3];
        _Q4 = vaddq_s32(vrev32q_s8(*v3), *v46);
        _Q20 = _Q18;
        v3 += 4;
        __asm { SHA256H         Q18, Q19, V5.4S }

        _Q1 = vrev32q_s8(v49);
        __asm { SHA256H2        Q19, Q20, V5.4S }

        _Q5 = vaddq_s32(_Q1, v46[1]);
        _Q20 = _Q18;
        __asm { SHA256H         Q18, Q19, V6.4S }

        _Q2 = vrev32q_s8(v50);
        __asm { SHA256H2        Q19, Q20, V6.4S }

        _Q6 = vaddq_s32(_Q2, v46[2]);
        _Q20 = _Q18;
        __asm { SHA256H         Q18, Q19, V7.4S }

        _Q3 = vrev32q_s8(v52);
        __asm { SHA256H2        Q19, Q20, V7.4S }

        _Q7 = vaddq_s32(_Q3, v46[3]);
        v9 = vaddq_s32(v9, _Q18);
        _Q17 = vaddq_s32(_Q17, _Q19);
        _Q20 = v9;
        __asm
        {
          SHA256SU0       V0.4S, V1.4S
          SHA256H         Q18, Q19, V4.4S
          SHA256SU1       V0.4S, V2.4S, V3.4S
          SHA256H2        Q19, Q20, V4.4S
        }

        _Q4 = vaddq_s32(_Q0, v46[4]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V1.4S, V2.4S
          SHA256H         Q18, Q19, V5.4S
          SHA256SU1       V1.4S, V3.4S, V0.4S
          SHA256H2        Q19, Q20, V5.4S
        }

        _Q5 = vaddq_s32(_Q1, v46[5]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V2.4S, V3.4S
          SHA256H         Q18, Q19, V6.4S
          SHA256SU1       V2.4S, V0.4S, V1.4S
          SHA256H2        Q19, Q20, V6.4S
        }

        _Q6 = vaddq_s32(_Q2, v46[6]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V3.4S, V0.4S
          SHA256H         Q18, Q19, V7.4S
          SHA256SU1       V3.4S, V1.4S, V2.4S
          SHA256H2        Q19, Q20, V7.4S
        }

        _Q7 = vaddq_s32(_Q3, v46[7]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V0.4S, V1.4S
          SHA256H         Q18, Q19, V4.4S
          SHA256SU1       V0.4S, V2.4S, V3.4S
          SHA256H2        Q19, Q20, V4.4S
        }

        _Q4 = vaddq_s32(_Q0, v46[8]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V1.4S, V2.4S
          SHA256H         Q18, Q19, V5.4S
          SHA256SU1       V1.4S, V3.4S, V0.4S
          SHA256H2        Q19, Q20, V5.4S
        }

        _Q5 = vaddq_s32(_Q1, v46[9]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V2.4S, V3.4S
          SHA256H         Q18, Q19, V6.4S
          SHA256SU1       V2.4S, V0.4S, V1.4S
          SHA256H2        Q19, Q20, V6.4S
        }

        _Q6 = vaddq_s32(_Q2, v46[10]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V3.4S, V0.4S
          SHA256H         Q18, Q19, V7.4S
          SHA256SU1       V3.4S, V1.4S, V2.4S
          SHA256H2        Q19, Q20, V7.4S
        }

        _Q7 = vaddq_s32(_Q3, v46[11]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V0.4S, V1.4S
          SHA256H         Q18, Q19, V4.4S
          SHA256SU1       V0.4S, V2.4S, V3.4S
          SHA256H2        Q19, Q20, V4.4S
        }

        _Q4 = vaddq_s32(_Q0, v46[12]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V1.4S, V2.4S
          SHA256H         Q18, Q19, V5.4S
          SHA256SU1       V1.4S, V3.4S, V0.4S
          SHA256H2        Q19, Q20, V5.4S
        }

        _Q5 = vaddq_s32(_Q1, v46[13]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V2.4S, V3.4S
          SHA256H         Q18, Q19, V6.4S
          SHA256SU1       V2.4S, V0.4S, V1.4S
          SHA256H2        Q19, Q20, V6.4S
        }

        _Q6 = vaddq_s32(_Q2, v46[14]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V3.4S, V0.4S
          SHA256H         Q18, Q19, V7.4S
          SHA256SU1       V3.4S, V1.4S, V2.4S
          SHA256H2        Q19, Q20, V7.4S
        }

        _Q7 = vaddq_s32(_Q3, v46[15]);
        v44 = v45-- <= 1;
      }

      while (!v44);
    }

    _Q20 = _Q18;
    __asm
    {
      SHA256H         Q18, Q19, V4.4S
      SHA256H2        Q19, Q20, V4.4S
    }

    _Q20 = _Q18;
    __asm
    {
      SHA256H         Q18, Q19, V5.4S
      SHA256H2        Q19, Q20, V5.4S
    }

    _Q20 = _Q18;
    __asm
    {
      SHA256H         Q18, Q19, V6.4S
      SHA256H2        Q19, Q20, V6.4S
    }

    _Q20 = _Q18;
    __asm
    {
      SHA256H         Q18, Q19, V7.4S
      SHA256H2        Q19, Q20, V7.4S
    }

    *result = vaddq_s32(v9, _Q18);
    result[1] = vaddq_s32(_Q17, _Q19);
  }

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

void *cced25519_double_scalar_mult_ws(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x29EDCA608];
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

uint64_t ccmode_siv_hmac_encrypt(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = *(*a1 + 64);
  if (*(v4 + 16) != 16)
  {
    return 4294967226;
  }

  v9 = *(a1 + 2);
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
      v10 = ccctr_one_shot_internal(v4, *(a1 + 1) >> 1, v13, &v14, a2, a3, a4 + v9);
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
    cc_clear(*(a1 + 1) >> 1, v13);
  }

  return v10;
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
    i8 = &xmmword_299D36E20;
    v13 = vaddq_s32(K256_0, v8);
    v14 = *result;
    v15 = result[1];
    v16 = vaddq_s32(xmmword_299D36DF0, v9);
    v17 = result[2];
    v18 = result[3];
    v19 = vaddq_s32(xmmword_299D36E00, v10);
    v20 = result[4];
    v21 = result[5];
    v22 = vaddq_s32(xmmword_299D36E10, v11);
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

uint64_t ccaes_arm_encrypt_key_with_length_check(uint64_t a1, int8x16_t *a2, uint64_t a3, int8x16_t *a4, double a5, double a6, double a7, double a8, double a9, double a10, int64x2_t a11)
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

void ccaes_arm_decrypt_key_with_length_check(uint64_t a1, int8x16_t *a2, uint64_t a3, int8x16_t *a4, double a5, double a6, double a7, double a8, double a9, double a10, int64x2_t a11)
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
  v15[25] = *MEMORY[0x29EDCA608];
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

uint64_t ccmlkem_kem_keypair(int16x4_t *a1, void *a2, void *a3, uint64_t (**a4)(void, uint64_t, _OWORD *))
{
  v12 = *MEMORY[0x29EDCA608];
  v7 = (*a4)(a4, 64, v10);
  if (v7)
  {
    v8 = v7;
    goto LABEL_3;
  }

  v8 = ccmlkem_kem_keypair_from_seed(a1, a2, a3, v10, &v11);
  if (v8)
  {
LABEL_3:
    cc_clear((384 * a1->i32[1]) | 0x20u, a2);
    cc_clear((768 * a1->i32[1]) | 0x60u, a3);
  }

  cc_clear(0x40uLL, v10);
  return v8;
}

uint64_t ccmlkem_kem_encapsulate_msg(int8x16_t *a1, uint64_t a2, uint64_t a3, _OWORD *a4, const char *a5)
{
  v26 = *MEMORY[0x29EDCA608];
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
  v23 = *a5;
  v24 = v15;
  ccmlkem_hash_h(v14, a2, v25);
  ccmlkem_hash_g(64, &v23, &v23);
  v16 = ccmlkem_indcpa_encrypt_ws(v19, a1, a2, a5, v25, a3);
  if (!v16)
  {
    v17 = v24;
    *a4 = v23;
    a4[1] = v17;
  }

  v20 = 0;
  cc_clear(0x40uLL, &v23);
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

int8x16_t *ccm128_encrypt(int8x16_t *result, int8x16_t *a2, int8x16_t *a3, int a4, int8x16_t *a5, int8x16_t *a6, unsigned int a7)
{
  v7 = *&qword_299D38EC0[2 * a7];
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
  v20 = vqtbl1q_s8(*a6, *Lbswap_mask_0);
  do
  {
    v20 = vorrq_s8(vandq_s8(vaddq_s64(v20, *qword_299D38EC0), v7), vbicq_s8(v20, v7));
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
  *a6 = vqtbl1q_s8(v20, *Lbswap_mask_0);
  *a3 = v64;
  return result;
}

int8x16_t *ccm192_encrypt(int8x16_t *result, int8x16_t *a2, int8x16_t *a3, int a4, int8x16_t *a5, int8x16_t *a6, unsigned int a7)
{
  v7 = *&qword_299D38EC0[2 * a7];
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
  v22 = vqtbl1q_s8(*a6, *Lbswap_mask_0);
  do
  {
    v22 = vorrq_s8(vandq_s8(vaddq_s64(v22, *qword_299D38EC0), v7), vbicq_s8(v22, v7));
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
  *a6 = vqtbl1q_s8(v22, *Lbswap_mask_0);
  *a3 = v74;
  return result;
}

int8x16_t *ccm256_encrypt(int8x16_t *result, int8x16_t *a2, int8x16_t *a3, int a4, int8x16_t *a5, int8x16_t *a6, unsigned int a7)
{
  v7 = *&qword_299D38EC0[2 * a7];
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
  v24 = vqtbl1q_s8(*a6, *Lbswap_mask_0);
  do
  {
    v24 = vorrq_s8(vandq_s8(vaddq_s64(v24, *qword_299D38EC0), v7), vbicq_s8(v24, v7));
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
  *a6 = vqtbl1q_s8(v24, *Lbswap_mask_0);
  *a3 = v84;
  return result;
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

uint64_t ccdigest_internal(uint64_t a1, size_t a2, char *a3, uint64_t a4)
{
  v12[1] = *MEMORY[0x29EDCA608];
  is_active = fipspost_trace_is_active();
  if (is_active)
  {
    is_active = fipspost_trace_call("ccdigest_internal");
  }

  MEMORY[0x2A1C7C4A8](is_active);
  v10 = (v12 - v9);
  ccdigest_init_internal(a1, (v12 - v9));
  ccdigest_update_internal(a1, v10, a2, a3);
  (*(a1 + 56))(a1, v10, a4);
  return cc_clear(*(a1 + 8) + *(a1 + 16) + 12, v10);
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
  v22 = *MEMORY[0x29EDCA608];
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
  v18 = *MEMORY[0x29EDCA608];
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
    i8 = &xmmword_299DB29F0;
    v240 = vaddq_s64(sha512_K, v5);
    v241 = vaddq_s64(unk_299DB2980, v6);
    v242 = vaddq_s64(unk_299DB2990, v7);
    v243 = vaddq_s64(unk_299DB29A0, v8);
    v244 = vaddq_s64(xmmword_299DB29B0, v9);
    v245 = vaddq_s64(unk_299DB29C0, v10);
    v246 = vaddq_s64(unk_299DB29D0, v11);
    v247 = vaddq_s64(unk_299DB29E0, v12);
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