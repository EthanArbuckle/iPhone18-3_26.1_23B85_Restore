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

uint64_t ccn_cmp_public_value(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *a2 != *a3;
      v6 = v5 - 1;
      v7 = (v5 - 1) & v3;
      v8 = *a2++;
      v9 = -v5;
      v3 = v7 | v8 & v9;
      v10 = *a3++;
      v4 = v10 & v9 | v6 & v4;
      --a1;
    }

    while (a1);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v11 = -(v3 != v4);
  v12 = (((v3 - v4) ^ v3 | v3 ^ v4) ^ v3) >> 63 != 0;
  v14 = timingsafe_enable_if_supported();
  cc_disable_dit_with_sb(&v14);
  return (!v12 - v12) & v11;
}

uint64_t ccn_cmp(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v8 = timingsafe_enable_if_supported();
  v6 = ccn_cmp_public_value(a1, a2, a3);
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
  v24 = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 24);
  if (v4 == CCSAE_STATE_COMMIT_BOTH || v4 == CCSAE_STATE_CONFIRMATION_GENERATED)
  {
    v10 = **a2;
    v11 = cczp_bitlen(*a2);
    v22 = &v22;
    v12 = (v11 + 7) >> 3;
    v13 = *(a2 + 16);
    v14 = (((v13[1] + ((v13[1] + v13[2] + 19) & 0xFFFFFFFFFFFFFFF8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x2A1C7C4A8](v11);
    v16 = &v23[-v15 - 8];
    v17 = *(a1 + 16);
    v18 = (*(a1 + 24))(a1, v10);
    v19 = ccsae_sizeof_kck_internal(a2);
    cchmac_init_internal(v13, v16, v19, (a2 + 48));
    cchmac_update_internal(v13, v16, 2, a3);
    ccn_write_uint_padded_internal(v10, (a2 + 144 + 16 * **a2), v12, v18);
    cchmac_update_internal(v13, v16, v12, v18);
    ccn_write_uint_padded_internal(v10, (a2 + 144 + 56 * **a2), v12, v18);
    cchmac_update_internal(v13, v16, v12, v18);
    ccn_write_uint_padded_internal(v10, (a2 + 144 + (**a2 << 6)), v12, v18);
    cchmac_update_internal(v13, v16, v12, v18);
    ccn_write_uint_padded_internal(v10, (a2 + 144 + 24 * **a2), v12, v18);
    cchmac_update_internal(v13, v16, v12, v18);
    ccn_write_uint_padded_internal(v10, (a2 + 144 + 40 * **a2), v12, v18);
    cchmac_update_internal(v13, v16, v12, v18);
    ccn_write_uint_padded_internal(v10, (a2 + 144 + 48 * **a2), v12, v18);
    cchmac_update_internal(v13, v16, v12, v18);
    cchmac_final_internal(v13, v16, v23);
    cc_clear(((v13[1] + v13[2] + 19) & 0xFFFFFFFFFFFFFFF8) + v13[1], v16);
    *(a2 + 24) |= CCSAE_STATE_CONFIRMATION_VERIFIED;
    *(a1 + 16) = v17;
    result = cc_cmp_safe_internal(*v13, v23, a4);
  }

  else
  {
    result = 4294967210;
  }

  v21 = *MEMORY[0x29EDCA608];
  return result;
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

uint64_t ccn_sub_ws(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, unint64_t *a5)
{
  if (!a2)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v7 = *a4++;
    v6 = v7;
    v9 = *a5++;
    v8 = v9;
    v10 = __CFADD__(v5, v6);
    v11 = v5 + v6;
    if (v10)
    {
      ++v5;
    }

    v12 = __PAIR128__(v5, v11) - v8;
    *a3++ = v12;
    v5 = *(&v12 + 1) >> 63;
    --a2;
  }

  while (a2);
  return *(&v12 + 1) >> 63;
}

uint64_t ccn_sub(uint64_t a1, void *a2, uint64_t *a3, unint64_t *a4)
{
  v20 = timingsafe_enable_if_supported();
  v18[0] = xmmword_2A201C110;
  v18[1] = unk_2A201C120;
  v19 = off_2A201C130;
  if (a1)
  {
    v8 = 0;
    do
    {
      v10 = *a3++;
      v9 = v10;
      v12 = *a4++;
      v11 = v12;
      v13 = __CFADD__(v8, v9);
      v14 = v8 + v9;
      if (v13)
      {
        ++v8;
      }

      v15 = __PAIR128__(v8, v14) - v11;
      *a2++ = v15;
      v8 = *(&v15 + 1) >> 63;
      --a1;
    }

    while (a1);
    v16 = *(&v15 + 1) >> 63;
  }

  else
  {
    v16 = 0;
  }

  cc_ws_free_null(v18);
  cc_disable_dit_with_sb(&v20);
  return v16;
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

uint64_t ccn_abs(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
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

uint64_t ccz_add(uint64_t a1, uint64_t a2, uint64_t a3)
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
      *(*(a1 + 24) + 8 * v6) = ccn_addn(v6, *(a1 + 24), *(a2 + 24), v7, *(a3 + 24));
    }

    else
    {
      v10 = v7 + 1;
      ccz_set_capacity(a1, v7 + 1);
      *(*(a1 + 24) + 8 * v7) = ccn_addn(v7, *(a1 + 24), *(a3 + 24), v6, *(a2 + 24));
    }

    v6 = v10;
  }

  else if ((ccn_cmpn_internal(v6, *(a2 + 24), v7, *(a3 + 24)) & 0x80000000) != 0)
  {
    v12 = ccz_sign(a3);
    ccz_set_sign(a1, v12);
    ccz_set_capacity(a1, v7);
    ccn_subn(v7, *(a1 + 24), *(a3 + 24), v6, *(a2 + 24));
    v6 = v7;
  }

  else
  {
    v11 = ccz_sign(a2);
    ccz_set_sign(a1, v11);
    ccz_set_capacity(a1, v6);
    ccn_subn(v6, *(a1 + 24), *(a2 + 24), v7, *(a3 + 24));
  }

  v13 = ccn_n(v6, *(a1 + 24));
  ccz_set_n(a1, v13);
  return cc_disable_dit_with_sb(&v15);
}

uint64_t fipspost_post_hmac(char a1)
{
  v24 = *MEMORY[0x29EDCA608];
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
  memset(v23, 0, sizeof(v23));
  if ((a1 & 0x10) == 0)
  {
  }

  v22[0] = v2;
  v22[1] = 50;
  v22[2] = v12;
  v22[3] = 128;
  v22[4] = "\xF0\x6B\xB4\x5B\xD0\x60X'\x82L\xD0\x4D\xA7[hz\x86\xC9\x39\xEF\xAF\xF9\xF1\x32\xDD\xC1\xD7\x04!\b\t\x94=\x94\b\xF2\x4E\x1D\x77Ư\xA6 B\x19\r8U\x0F\xE0\xE4\x22yr\xFC\xB0\x8F.\x0E\xE3\xF8\x2C\xA6\xAB3\x02\xCC\x7B7\xDD\xCF\xFDV\xD0\x41\x04gkC\xC2\x24\x90\x03;т\x82\xF9\x1F?\x9B\x01O\x10A\a\x9A^\b\xDE\xD1\xC7\xE62Aq;yٞ\x10'\x8F\x81\x9C!\xFFQ\ruU\x9B\x85Hn\xDC\x62\x10";
  v22[5] = 20;
  v22[6] = "\x88n\xAEp\xF3\x6B\xD3\x80^\xEB\x12\x74\xB3$\x8F\xCC\xF5\xE1\x5B\x80";
  v22[7] = "sha1";
  v22[8] = v3;
  v22[9] = 50;
  v14 = "\x01secret-key\x13\x13";
  if ((a1 & 0x10) != 0)
  {
    v15 = "\x01\xF3\xD9\x84\x1Cx.\x1D\xC8\x4D_\xBD\x95#h;\x8D)\xD1\xD5\x85-:tR\x0482:-_\x19\xA9\xB1\xA0-%M֭\x84ӛ\x97]\xCE\x60j\xBCe\xBD";
  }

  else
  {
    v15 = "\xF3\xD9\x84\x1Cx.\x1D\xC8\x4D_\xBD\x95#h;\x8D)\xD1\xD5\x85-:tR\x0482:-_\x19\xA9\xB1\xA0-%M֭\x84ӛ\x97]\xCE\x60j\xBCe\xBD";
  }

  v22[10] = v15;
  v22[11] = 128;
  v22[12] = &unk_299CFB830;
  v22[13] = 32;
  v22[14] = "\xC1\xCC\xF9\x1E\x8E\xA5\x8A\x16uk\xE8\xE4\x08\xF3\x08\xC9\xE1\x02\xEA\xE3\x54O\xB66\xDB\x18)4\x80\xAE\xD1\xE1";
  v22[15] = "sha256";
  v16 = "\x01secret-key";
  if ((a1 & 0x10) == 0)
  {
  }

  v22[16] = v4;
  v22[17] = 110;
  v22[18] = v13;
  v22[19] = 128;
  if ((a1 & 0x10) == 0)
  {
    v14 = "secret-key\x13\x13";
  }

  v22[20] = "\x94\x14zF\xD6\x7E\xEF\x0B\x5E\x9F\x99$\n\xF4\xD3\x14\xA30MX\x02\xD6\x54\x9Aw\x06T'k\x97\x9B\xA3Cg_\xFC\x88\xEF\x03\x9CE\x1B\x96\xE3\xB1\x58\x9D\xD4\x0E\xEE\x12\x0Eѐ\xAC\xFE\x031aT\xE7\x1A\x2A\xB3\xDD\x3A\x06\xAD\x86\xBDA\xEE\x29\xE0\xF6\xB7\x56\x03ӏ\xC9\xFF\x1C5\x90\xBB\xF2\xD8\x71\xFA֊\x86wi\xF3\x2A\x34\x75B\x19\x0F1iҖ\xC1\x8A@\x1C\xFD\xAC\x9A\rs\xB3\x88~\xAF\x8F\x87\b\xBA\xB3\x8E\xD7\xE0\xC9W\x05\xBFՅK|÷\xC8\xEA\xCA\x32A\x88@\xAE\xDE\x68\xE7\xCD\x62\x1EC\x8FmaX;Ea\xFC\xA5G\x19\x04\xBDy\x89Y\xA3\x90\x86L\x8Ap\xA50i\xDA\x41r\xCA\x34\xC0\xEAIn\x12\x8D\u0378\xC3\x01secret-key\x13\x13";
  v22[21] = 64;
  v22[22] = "W\x05\xBFՅK|÷\xC8\xEA\xCA\x32A\x88@\xAE\xDE\x68\xE7\xCD\x62\x1EC\x8FmaX;Ea\xFC\xA5G\x19\x04\xBDy\x89Y\xA3\x90\x86L\x8Ap\xA50i\xDA\x41r\xCA\x34\xC0\xEAIn\x12\x8D\u0378\xC3\x01secret-key\x13\x13";
  v22[23] = "sha512";
  if ((a1 & 0x10) == 0)
  {
    v16 = "secret-key";
  }

  v22[24] = v5;
  v22[25] = 10;
  if ((a1 & 0x10) != 0)
  {
    v17 = "\x01value to digest";
  }

  else
  {
    v17 = "value to digest";
  }

  v22[26] = v14;
  v22[27] = 15;
  v22[28] = "value to digest";
  v22[29] = 32;
  v22[31] = "sha512/256";
  v22[32] = v6;
  v22[33] = 10;
  v22[34] = v16;
  v22[35] = 15;
  v22[36] = v17;
  v22[37] = 28;
  v22[38] = &unk_299CFB8B1;
  v22[39] = "sha3_224";
  v22[40] = v7;
  v22[41] = 10;
  v22[42] = v16;
  v22[43] = 15;
  v22[44] = v17;
  v22[45] = 32;
  v22[46] = "\xE6\x5B\x43\x9A֞-\x0F\xE2\xC4\x15KUO\xE9\x96\x2A\x9A\x1E\xCE\x26\x84eB\xB3\xED\x8F\xCB\x16\xF3\x67\xC8\xDE\x41x\xB5\xFA\xF0\x52\xAB\x3E@\x9Fq\x15E\x95\nD\f\x8B\xFFv1\xFA\x0F\xE5\xD6\x1B\xC4\xCA_\xF9\xCE\x14\xE4\x52\x6E]|\x1D_Ъ\x9Dc\x12b~";
  v22[47] = "sha3_256";
  v22[48] = v8;
  v22[49] = 10;
  v22[50] = v16;
  v22[51] = 15;
  v22[52] = v17;
  v22[53] = 48;
  v22[54] = "\xDE\x41x\xB5\xFA\xF0\x52\xAB\x3E@\x9Fq\x15E\x95\nD\f\x8B\xFFv1\xFA\x0F\xE5\xD6\x1B\xC4\xCA_\xF9\xCE\x14\xE4\x52\x6E]|\x1D_Ъ\x9Dc\x12b~";
  v22[55] = "sha3_384";
  v22[56] = v9;
  v22[57] = 10;
  v22[58] = v16;
  v22[59] = 15;
  v22[60] = v17;
  v22[61] = 64;
  v22[62] = "\xEB\x10\xD9e\x80\xBF\x8E\xEE\xE5\x46\r^X7\xF5\x55\x57\x09\x01\x139\xB96\xA6{u7\x7F]\x18\xAE\xDB\xF7\x92\xB5\xA6\xF4\xA8\x53\x7B@\xD5\x5E\xC5\x0C\x8D}[I4\xC3\x04\xCC\xEB\xF6\x15\x26\x4B+v\x16\xB9\xBF\x1A";
  v22[63] = "sha3_512";
  do
  {
    v18 = &v22[v10];
    cchmac(v22[v10], v22[v10 + 1], v22[v10 + 2], v22[v10 + 3], v22[v10 + 4], v23);
    if (cc_cmp_safe(v18[5], v23, v18[6]))
    {
      v19 = mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: digest: %s\n", v19, "fipspost_post_hmac", 235, v18[7]);
      v11 = 4294967221;
    }

    v10 += 8;
  }

  while (v10 != 64);
  v20 = *MEMORY[0x29EDCA608];
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

uint64_t ccmlkem_poly_compress_d1(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 32; ++i)
  {
    v3 = 0;
    v4 = 0;
    *(result + i) = 0;
    do
    {
      v4 |= (1290167 * *(a2 + 2 * v3) + 0x40000000) >> 31 << v3;
      *(result + i) = v4;
      ++v3;
    }

    while (v3 != 8);
    a2 += 16;
  }

  return result;
}

uint64_t ccmlkem_poly_compress_d4(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = (a2 + 2);
  do
  {
    *(result + v2++) = ((1290167 * *v3 + 0x8000000) >> 24) & 0xF0 | ((1290167 * *(v3 - 1) + 0x8000000) >> 28);
    v3 += 2;
  }

  while (v2 != 128);
  return result;
}

uint64_t ccmlkem_poly_compress_d5(uint64_t result, int16x8_t *a2)
{
  v2 = 0;
  v3 = vdupq_n_s32(0x13AFB7u);
  do
  {
    v4 = (result + v2);
    v5 = *a2++;
    v6.i64[0] = 0x400000004000000;
    v6.i64[1] = 0x400000004000000;
    v7.i64[0] = 0x400000004000000;
    v7.i64[1] = 0x400000004000000;
    v8 = vshrq_n_u32(vmlaq_s32(v7, vmovl_high_s16(v5), v3), 0x1BuLL);
    v9 = vshrq_n_u32(vmlaq_s32(v6, vmovl_s16(*v5.i8), v3), 0x1BuLL);
    v10 = vuzp1q_s16(v9, v8);
    *v8.i8 = vmovn_s32(v8);
    *v9.i8 = vmovn_s32(v9);
    *v4 = v10.i8[0] | (32 * v9.i8[2]);
    v4[1] = (4 * v10.i8[4]) | (v9.u16[1] >> 3) | (v9.i8[6] << 7);
    v4[2] = (16 * v8.i8[0]) | (v9.u16[3] >> 1);
    v4[3] = (2 * v10.i8[10]) | (v8.u16[0] >> 4) | (v8.i8[4] << 6);
    v4[4] = (8 * v10.i8[14]) | (v8.u16[2] >> 2);
    v2 += 5;
  }

  while (v2 != 160);
  return result;
}

uint64_t ccmlkem_poly_compress_d10(uint64_t result, int16x4_t *a2)
{
  v2 = 0;
  v3 = vdupq_n_s32(0x13AFB7u);
  do
  {
    v4 = (result + v2);
    v5 = *a2++;
    v6.i64[0] = 0x20000000200000;
    v6.i64[1] = 0x20000000200000;
    v7 = vmovn_s32(vshrq_n_u32(vmlaq_s32(v6, vmovl_s16(v5), v3), 0x16uLL));
    *v4 = v7.i8[0];
    v4[1] = (4 * v7.i8[2]) | v7.i8[1];
    v4[2] = (16 * v7.i8[4]) | (v7.u16[1] >> 6);
    v4[3] = (v7.i8[6] << 6) | (v7.u16[2] >> 4);
    v4[4] = v7.u16[3] >> 2;
    v2 += 5;
  }

  while (v2 != 320);
  return result;
}

uint64_t ccmlkem_poly_compress_d11(uint64_t result, int16x8_t *a2)
{
  v2 = 0;
  v3 = vdupq_n_s32(0x13AFB7u);
  do
  {
    v4 = (result + v2);
    v5 = *a2++;
    v6.i64[0] = 0x10000000100000;
    v6.i64[1] = 0x10000000100000;
    v7.i64[0] = 0x10000000100000;
    v7.i64[1] = 0x10000000100000;
    v8 = vmovn_s32(vshrq_n_u32(vmlaq_s32(v7, vmovl_s16(*v5.i8), v3), 0x15uLL));
    *v4 = v8.i8[0];
    v4[1] = (8 * v8.i8[2]) | v8.i8[1];
    *v7.i8 = vmovn_s32(vshrq_n_u32(vmlaq_s32(v6, vmovl_high_s16(v5), v3), 0x15uLL));
    v4[2] = (v8.i8[4] << 6) | (v8.u16[1] >> 5);
    v4[3] = v8.u16[2] >> 2;
    v4[4] = (2 * v8.i8[6]) | ((v8.i16[2] & 0x400) != 0);
    v4[5] = (16 * v7.i8[0]) | (v8.u16[3] >> 7);
    v4[6] = (v7.i8[2] << 7) | (v7.u16[0] >> 4);
    v4[7] = v7.u16[1] >> 1;
    v4[8] = (4 * v7.i8[4]) | (v7.u16[1] >> 9) & 3;
    v4[9] = (32 * v7.i8[6]) | (v7.u16[2] >> 6);
    v4[10] = v7.u16[3] >> 3;
    v2 += 11;
  }

  while (v2 != 352);
  return result;
}

_WORD *ccmlkem_poly_decompress_d1(_WORD *result, uint64_t a2)
{
  for (i = 0; i != 32; ++i)
  {
    for (j = 0; j != 8; ++j)
    {
      *result++ = (3329 * ((*(a2 + i) >> j) & 1u) + 1) >> 1;
    }
  }

  return result;
}

_WORD *ccmlkem_poly_decompress_d4(_WORD *result, uint64_t a2)
{
  for (i = 0; i != 128; ++i)
  {
    *result = (3329 * (*(a2 + i) & 0xFu) + 8) >> 4;
    result[1] = (3329 * ((*(a2 + i) >> 4) & 0xFu) + 8) >> 4;
    result += 2;
  }

  return result;
}

_WORD *ccmlkem_poly_decompress_d5(_WORD *result, uint64_t a2)
{
  v2 = 0;
  v11 = *MEMORY[0x29EDCA608];
  do
  {
    v3 = (a2 + 5 * v2);
    v4 = v3[1];
    HIDWORD(v5) = v4;
    LODWORD(v5) = *v3 << 24;
    v10[0] = *v3;
    v10[1] = v5 >> 29;
    v10[2] = v4 >> 2;
    HIDWORD(v5) = v3[2];
    LODWORD(v5) = v4 << 24;
    LOBYTE(v4) = v5 >> 31;
    v6 = v3[3];
    HIDWORD(v5) = v6;
    LODWORD(v5) = v3[2] << 24;
    v10[3] = v4;
    v10[4] = v5 >> 28;
    v10[5] = v6 >> 1;
    HIDWORD(v5) = v3[4];
    LODWORD(v5) = v6 << 24;
    v10[6] = v5 >> 30;
    v10[7] = HIDWORD(v5) >> 3;
    v7 = -8;
    do
    {
      *result++ = (3329 * (v10[v7 + 8] & 0x1Fu) + 16) >> 5;
    }

    while (!__CFADD__(v7++, 1));
    ++v2;
  }

  while (v2 != 32);
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ccmlkem_poly_decompress_d10(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v12 = *MEMORY[0x29EDCA608];
  do
  {
    v3 = 0;
    v4 = (a2 + 5 * v2);
    v5 = v4[1];
    v11[0] = *v4 | (v5 << 8);
    v6 = v5 >> 2;
    v7 = v4[2];
    v11[1] = v6 | (v7 << 6);
    v8 = v7 >> 4;
    v9 = v4[3];
    v11[2] = v8 | (16 * v9);
    v11[3] = (v9 >> 6) | (4 * v4[4]);
    do
    {
      *(result + v3 * 2) = (3329 * (v11[v3] & 0x3FFu) + 512) >> 10;
      ++v3;
    }

    while (v3 != 4);
    ++v2;
    result += 8;
  }

  while (v2 != 64);
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ccmlkem_poly_decompress_d11(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v18 = *MEMORY[0x29EDCA608];
  do
  {
    v3 = 0;
    v4 = (a2 + 11 * v2);
    v5 = v4[1];
    v17[0] = *v4 | (v5 << 8);
    v6 = v5 >> 3;
    v7 = v4[2];
    v17[1] = v6 | (32 * v7);
    LOWORD(v6) = (v7 >> 6) | (4 * v4[3]);
    v8 = v4[4];
    v17[2] = v6 | (v8 << 10);
    v9 = v8 >> 1;
    v10 = v4[5];
    v17[3] = v9 | (v10 << 7);
    v11 = v10 >> 4;
    v12 = v4[6];
    v17[4] = v11 | (16 * v12);
    LOWORD(v11) = (v12 >> 7) | (2 * v4[7]);
    v13 = v4[8];
    v17[5] = v11 | (v13 << 9);
    v14 = v13 >> 2;
    v15 = v4[9];
    v17[6] = v14 | (v15 << 6);
    v17[7] = (v15 >> 5) | (8 * v4[10]);
    do
    {
      *(result + v3 * 2) = (3329 * (v17[v3] & 0x7FFu) + 1024) >> 11;
      ++v3;
    }

    while (v3 != 8);
    ++v2;
    result += 16;
  }

  while (v2 != 32);
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ccsae_verify_commitment_with_rejected_groups(unint64_t **a1, uint64_t a2, size_t a3, char *a4)
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

uint64_t ccsae_verify_commitment_ws(uint64_t a1, unint64_t **a2, uint64_t a3, size_t a4, char *a5)
{
  v33 = *MEMORY[0x29EDCA608];
  if (*(a2 + 24) != CCSAE_STATE_COMMIT_GENERATED)
  {
    v21 = 4294967210;
    goto LABEL_17;
  }

  v31 = a2[2];
  v29 = a2[1];
  v8 = *a2;
  v9 = **a2;
  v10 = (cczp_bitlen(*a2) + 7) >> 3;
  v30 = *(a1 + 16);
  v24 = (*(a1 + 24))(a1, v9);
  v11 = (*(a1 + 24))(a1, 3 * v9);
  v28 = (*(a1 + 24))(a1, 3 * v9);
  v27 = (*(a1 + 24))(a1, 3 * v9);
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
    if (ccn_cmp_internal(v9, &v13[2 * v18], &v13[3 * v18]) && ccn_cmp_internal(v9, &v13[7 * v18], &v13[5 * v18]) && ccn_cmp_internal(v9, &v13[8 * v18], &v13[6 * v18]))
    {
      v17 = ccec_validate_point_and_projectify_ws(a1, v8, v28, &v13[7 * v18]);
      if (!v17)
      {
        v17 = ccec_projectify_ws(a1, v8);
        if (!v17)
        {
          v17 = ccec_mult_blinded_ws(a1, v8, v27, &v13[2 * **a2], v11, v29);
          if (!v17)
          {
            ccec_full_add_ws(a1, v8);
            v17 = ccec_mult_blinded_ws(a1, v8, v12, &v13[4 * **a2], v11, v29);
            if (!v17)
            {
              v17 = ccec_affinify_ws(a1, v8);
              if (!v17)
              {
                v19 = v31;
                ccsae_generate_keyseed_ws(a1, v8, v31, v12, a4, a5, __s);
                v20 = **a2;
                cczp_add_ws(a1, &v8[5 * v9 + 4]);
                v21 = ccsae_gen_keys_ws(a1, a2, __s, v24);
                if (!v21)
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
    v21 = 4294967289;
    goto LABEL_20;
  }

LABEL_18:
  v21 = v17;
LABEL_20:
  v19 = v31;
LABEL_15:
  cc_clear(*v19, __s);
  *(a1 + 16) = v30;
LABEL_17:
  v22 = *MEMORY[0x29EDCA608];
  return v21;
}

uint64_t ccsae_verify_commitment(unint64_t **a1, uint64_t a2)
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
  v25 = *MEMORY[0x29EDCA608];
  v13 = *a2;
  v14 = cczp_bitlen(a2);
  memset(v24, 0, sizeof(v24));
  if (!a5 || !a6)
  {
    a5 = *a3;
    a6 = v24;
  }

  v15 = (v14 + 7) >> 3;
  v16 = *(a1 + 16);
  v17 = (*(a1 + 24))(a1, v13);
  v18 = ccn_write_uint_padded_internal(v13, a4, v15, v17);
  v19 = (((a3[1] + ((a3[1] + a3[2] + 19) & 0xFFFFFFFFFFFFFFF8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](v18);
  v21 = (v24 - v20);
  cchmac_init_internal(a3, (v24 - v20), a5, a6);
  cchmac_update_internal(a3, v21, v15, v17);
  cchmac_final_internal(a3, v21, a7);
  result = cc_clear(((a3[1] + a3[2] + 19) & 0xFFFFFFFFFFFFFFF8) + a3[1], v21);
  *(a1 + 16) = v16;
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ccchacha20_init(uint64_t a1, _DWORD *a2)
{
  v5 = timingsafe_enable_if_supported();
  *a1 = xmmword_299CFB8E0;
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
  v26 = *MEMORY[0x29EDCA608];
  v16 = timingsafe_enable_if_supported();
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = *a1;
  v13 = a1[1];
  __s[0] = xmmword_299CFB8E0;
  __s[1] = v12;
  __s[2] = v13;
  v25 = 0;
  v19 = *a2;
  v20 = *(a2 + 2);
  v18 = a3;
  _ccchacha20_xor(__s, a4, a6, a5);
  cc_clear(0x88uLL, __s);
  cc_disable_dit_with_sb(&v16);
  v14 = *MEMORY[0x29EDCA608];
  return 0;
}

int32x4_t *_ccchacha20_xor(int32x4_t *result, unint64_t a2, int8x16_t *a3, int8x16_t *a4)
{
  v202 = *MEMORY[0x29EDCA608];
  v5 = result[1];
  v4 = result[2];
  v6 = result[3];
  v7 = a2 / 0xC0;
  if (a2 >= 0xC0)
  {
    v8 = 0;
    do
    {
      v9 = vaddq_s32(v6, xmmword_299CFB8F0);
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
      v26 = xmmword_299CFB8E0;
      v27 = v5;
      v28 = v4;
      v29 = v6;
      v30 = xmmword_299CFB8E0;
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
      *a3 = veorq_s8(*a4, vaddq_s32(v26, xmmword_299CFB8E0));
      a3[1] = veorq_s8(a4[1], vaddq_s32(v27, v5));
      a3[2] = veorq_s8(a4[2], vaddq_s32(v28, v4));
      a3[3] = veorq_s8(a4[3], vaddq_s32(v29, v6));
      a3[4] = veorq_s8(a4[4], vaddq_s32(v30, xmmword_299CFB8E0));
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
      v6 = vaddq_s32(v6, xmmword_299CFB900);
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
    v134 = &t_im[532];
    do
    {
      v136 = -10;
      v137 = xmmword_299CFB8E0;
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
      *a3 = veorq_s8(*a4, vaddq_s32(v137, xmmword_299CFB8E0));
      a3[1] = veorq_s8(a4[1], vaddq_s32(v138, v5));
      a3[2] = veorq_s8(a4[2], vaddq_s32(v139, v4));
      a3[3] = veorq_s8(a4[3], vaddq_s32(v140, v6));
      v6 = vaddq_s32(v6, xmmword_299CFB8F0);
      a4 += 4;
      a3 += 4;
      --v135;
    }

    while (v135);
  }

  else
  {
    v134 = (t_im + 2128);
  }

  v163 = a2 & 0x3F;
  if ((a2 & 0x3F) != 0)
  {
    v164 = v134[142];
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
      v201[0] = vaddq_s32(v164, v134[142]);
    }

    else
    {
      *a3 = veorq_s8(*a4, vaddq_s32(v164, v134[142]));
      if (v163 < 0x20)
      {
        v201[1] = vaddq_s32(v166, v5);
      }

      else
      {
        a3[1] = veorq_s8(a4[1], vaddq_s32(v166, v5));
        if (v163 < 0x30)
        {
          v201[2] = vaddq_s32(v167, v4);
        }

        else
        {
          a3[2] = veorq_s8(a4[2], vaddq_s32(v167, v4));
          v201[3] = vaddq_s32(v168, v6);
        }
      }
    }

    v191 = a2 & 0x30;
    v192 = v163 - v191;
    if (v163 > v191)
    {
      v193 = &a3->i8[v191];
      v194 = v201 + v191;
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
  v199 = *MEMORY[0x29EDCA608];
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
  v12 = *MEMORY[0x29EDCA608];
  v10 = timingsafe_enable_if_supported();
  memset(v11, 0, sizeof(v11));
  ccpoly1305_init_internal(v11, a1);
  ccpoly1305_update_internal(v11, a2, a3);
  ccpoly1305_final_internal(v11, a4);
  cc_disable_dit_with_sb(&v10);
  v8 = *MEMORY[0x29EDCA608];
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
  *a1 = xmmword_299CFB8E0;
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

uint64_t ccchacha20poly1305_encrypt(uint64_t a1, uint64_t a2)
{
  v5 = timingsafe_enable_if_supported();
  v3 = ccchacha20poly1305_encrypt_internal(a2);
  cc_disable_dit_with_sb(&v5);
  return v3;
}

uint64_t ccchacha20poly1305_decrypt(uint64_t a1, uint64_t a2)
{
  v5 = timingsafe_enable_if_supported();
  v3 = ccchacha20poly1305_decrypt_internal(a2);
  cc_disable_dit_with_sb(&v5);
  return v3;
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
  v7[1] = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 248);
  if (v4 == 2)
  {
    ccpoly1305_update_internal((a1 + 136), -*(a1 + 232) & 0xFLL, kZero64);
    *(a1 + 248) = 3;
  }

  else if (v4 != 3)
  {
    result = 1;
    goto LABEL_5;
  }

  ccpoly1305_update_internal((a1 + 136), -*(a1 + 240) & 0xFLL, kZero64);
  v7[0] = *(a1 + 232);
  ccpoly1305_update_internal((a1 + 136), 8uLL, v7);
  v7[0] = *(a1 + 240);
  ccpoly1305_update_internal((a1 + 136), 8uLL, v7);
  ccpoly1305_final_internal(a1 + 136, a2);
  result = 0;
  *(a1 + 248) = 5;
LABEL_5:
  v6 = *MEMORY[0x29EDCA608];
  return result;
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
  v8[1] = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 248);
  if (v4 == 2)
  {
    ccpoly1305_update_internal((a1 + 136), -*(a1 + 232) & 0xFLL, kZero64);
    *(a1 + 248) = 4;
  }

  else if (v4 != 4)
  {
    result = 1;
    goto LABEL_7;
  }

  ccpoly1305_update_internal((a1 + 136), -*(a1 + 240) & 0xFLL, kZero64);
  v8[0] = *(a1 + 232);
  ccpoly1305_update_internal((a1 + 136), 8uLL, v8);
  v8[0] = *(a1 + 240);
  ccpoly1305_update_internal((a1 + 136), 8uLL, v8);
  ccpoly1305_final_internal(a1 + 136, v7);
  *(a1 + 248) = 5;
  if (cc_cmp_safe_internal(16, v7, a2))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

LABEL_7:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

unsigned int *_ccpoly1305_update(unsigned int *result, unint64_t a2, unsigned int *a3)
{
  v4 = result;
  v39 = *MEMORY[0x29EDCA608];
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
  for (v4[13] = v18; ; v18 = v4[13] + (v38 >> 8))
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
      *(&v35 + i) = *(a3 + i);
    }

    *(&v35 + a2) = 1;
    if ((i - 1) <= 0xD)
    {
      bzero(&v35 + i + 1, a2 ^ 0xF);
    }

    a2 = 0;
    v14 = v4[9] + (v35 & 0x3FFFFFF);
    v15 = (((v35 | (v36 << 32)) >> 26) & 0x3FFFFFF) + v4[10];
    v16 = (((v36 | (v37 << 32)) >> 20) & 0x3FFFFFF) + v4[11];
    v17 = v4[12] + (((v37 | (v38 << 32)) >> 14) & 0x3FFFFFF);
  }

  v34 = *MEMORY[0x29EDCA608];
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
  v11 = *MEMORY[0x29EDCA608];
  ccdigest_internal(*(a1 + 40), *(a1 + 32), a2, __src);
  __src[0] &= 0xF8u;
  v10 = v10 & 0x3F | 0x40;
  memcpy(a3, __src, *(a1 + 32));
  memcpy(a4, &__src[*(a1 + 32)], *(a1 + 32));
  cc_clear(0x40uLL, __src);
  v7 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t ccvrf_irtf_ed25519_derive_public_key_internal(uint64_t a1, char *a2, _DWORD *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  ccdigest_internal(*(a1 + 40), *(a1 + 32), a2, &__s);
  __s.i8[0] &= 0xF8u;
  v7 = v7 & 0x3F | 0x40;
  ge_scalarmult_base(a3, &__s);
  cc_clear(0x40uLL, &__s);
  v4 = *MEMORY[0x29EDCA608];
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

uint64_t ccsae_generate_confirmation_ws(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  v20[1] = *MEMORY[0x29EDCA608];
  if (*(a2 + 24) >= CCSAE_STATE_COMMIT_BOTH)
  {
    v9 = **a2;
    v10 = cczp_bitlen(*a2);
    v20[0] = v20;
    v11 = (v10 + 7) >> 3;
    v12 = a2[2];
    v13 = (((*(v12 + 8) + ((*(v12 + 8) + *(v12 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x2A1C7C4A8](v10);
    v15 = (v20 - v14);
    v16 = *(a1 + 16);
    v17 = (*(a1 + 24))(a1, v9);
    v18 = ccsae_sizeof_kck_internal(a2);
    cchmac_init_internal(v12, v15, v18, a2 + 48);
    cchmac_update_internal(v12, v15, 2, a3);
    ccn_write_uint_padded_internal(v9, &a2[3 * **a2 + 18], v11, v17);
    cchmac_update_internal(v12, v15, v11, v17);
    ccn_write_uint_padded_internal(v9, &a2[5 * **a2 + 18], v11, v17);
    cchmac_update_internal(v12, v15, v11, v17);
    ccn_write_uint_padded_internal(v9, &a2[6 * **a2 + 18], v11, v17);
    cchmac_update_internal(v12, v15, v11, v17);
    ccn_write_uint_padded_internal(v9, &a2[2 * **a2 + 18], v11, v17);
    cchmac_update_internal(v12, v15, v11, v17);
    ccn_write_uint_padded_internal(v9, &a2[7 * **a2 + 18], v11, v17);
    cchmac_update_internal(v12, v15, v11, v17);
    ccn_write_uint_padded_internal(v9, &a2[8 * **a2 + 18], v11, v17);
    cchmac_update_internal(v12, v15, v11, v17);
    cchmac_final_internal(v12, v15, a4);
    cc_clear(((*(v12 + 8) + *(v12 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + *(v12 + 8), v15);
    *(a2 + 24) |= CCSAE_STATE_CONFIRMATION_GENERATED;
    *(a1 + 16) = v16;
    result = 0;
  }

  else
  {
    result = 4294967210;
  }

  v19 = *MEMORY[0x29EDCA608];
  return result;
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

  if (!v7 || ccn_n(v5, v4) <= 1 && *v4 < 2)
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
  v12 = *MEMORY[0x29EDCA608];
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
  v9 = *MEMORY[0x29EDCA608];
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

void *eay_RC4_set_key(void *result, uint64_t a2, uint64_t a3)
{
  v3 = xmmword_299CFB960;
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
  v23 = *MEMORY[0x29EDCA608];
  v14 = timingsafe_enable_if_supported();
  v22 = v14;
  v15 = (*a1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v21[-v16];
  v18 = (*(a1 + 16))(a1, &v21[-v16], a2, a3, a4);
  if (!v18)
  {
    v18 = (*(a1 + 24))(v17, a5, a6, a7);
  }

  cc_clear(*a1, v17);
  cc_disable_dit_with_sb(&v22);
  v19 = *MEMORY[0x29EDCA608];
  return v18;
}

uint64_t cclr_permute(uint64_t a1, rsize_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v36 = a5;
  *(&v43[1] + 6) = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 8);
  if (a2 != (v6 + 7) >> 3)
  {
    v26 = 4294967289;
LABEL_27:
    cc_clear(a2, a3);
    goto LABEL_28;
  }

  v42[0] = *(a1 + 8);
  v10 = *(a1 + 16);
  v42[1] = v10;
  v43[0] = 0;
  *(v43 + 6) = 0;
  __s = 0;
  v39 = 0u;
  v40 = 0u;
  v11 = v6 >> 1;
  __s_8 = ((v6 >> 1) + 7) >> 3;
  v12 = (v6 >> 1) & 7;
  LOBYTE(v39) = -1 << v12;
  __memcpy_chk();
  v13 = v6 + 1;
  v35 = v6 >> 4;
  *(&__s + __s_8 - 1) &= v39;
  *&v40 = (((v6 + 1) >> 1) + 7) >> 3;
  v14 = a2 - (v6 >> 4);
  if (v12)
  {
    if (v14 != 1)
    {
      v15 = (a4 + v35 + 1);
      v16 = *(a4 + v35);
      v17 = v14 - 1;
      v18 = &v39 + 8;
      do
      {
        v19 = *v15++;
        *v18++ = (v16 << (v11 & 7)) | ((v19 << 23) >> ~(v11 & 7));
        v16 = v19;
        --v17;
      }

      while (v17);
    }

    *(&v39 + v14 + 7) = *(a4 + (v6 >> 4) + v14 - 1) << v12;
  }

  else
  {
    __memcpy_chk();
  }

  BYTE8(v40) = -1 << ((v13 >> 1) & 7);
  *(&v39 + v40 + 7) &= -1 << ((v13 >> 1) & 7);
  if (v10)
  {
    v33 = a3;
    v20 = 0;
    while (1)
    {
      v21 = *(v36 + v20) & 1;
      LOBYTE(v43[0]) = *(v36 + v20);
      __memcpy_chk();
      v22 = (**a1)(a1, v41, v42);
      if (v22)
      {
        break;
      }

      v23 = &__s + 3 * v21;
      v24 = v23[1];
      if (v24)
      {
        do
        {
          *(&v36 + 24 * v21 + v24 + 7) ^= v41[v24 - 1];
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
        a3 = v33;
        v12 = (v6 >> 1) & 7;
        LOBYTE(v11) = v6 >> 1;
        goto LABEL_18;
      }
    }

    v26 = v22;
    a3 = v33;
    goto LABEL_27;
  }

  v26 = 4294967289;
LABEL_18:
  v27 = __s_8;
  a3[__s_8 - 1] = 0;
  if (v12)
  {
    if (v14 != 1)
    {
      v28 = *(&v39 + v14 + 7);
      v29 = &a3[a2 - 1];
      do
      {
        v30 = *(&v39 + v14 + 6);
        *v29-- = ((2 * v30) << (~v11 & 7)) | ((v28 << 24) >> (v11 & 7 | 0x18));
        --v14;
        v28 = v30;
      }

      while (v14 != 1);
    }

    a3[v35] = BYTE8(v39) >> v12;
  }

  else
  {
    memcpy(&a3[v35], &v39 + 8, v14);
  }

  memcpy(a3, &__s, v27 - 1);
  a3[v27 - 1] |= *(&__s + v27 - 1);
  if (!v10)
  {
    goto LABEL_27;
  }

  v26 = 0;
LABEL_28:
  cc_clear(0x30uLL, &__s);
  cc_clear(0x10uLL, v42);
  cc_clear(0x10uLL, v41);
  v31 = *MEMORY[0x29EDCA608];
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
  v5 = ccn_cmp_internal(v4, a2, a1 + 2);
  return ccn_cmp_internal(v4, a2 + 8 * v4, &v3[v4]) | v5;
}

void *ccspake_store_pub_key(uint64_t **a1, char *a2)
{
  v4 = **a1;
  v5 = a1 + 2;
  ccn_set(v4, a2, a1 + 2);
  v6 = &v5[**a1];

  return ccn_set(v4, &a2[8 * v4], v6);
}

uint64_t ccspake_import_pub_ws(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 16);
  result = ccec_import_pub_ws();
  *(a1 + 16) = v4;
  return result;
}

void *ccaes_gcm_encrypt_mode()
{
  v0 = ccaes_ecb_encrypt_mode();
  ccmode_factory_gcm_encrypt(gcm_encrypt, v0);
  return gcm_encrypt;
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

uint64_t ccz_addi(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v10[1] = *MEMORY[0x29EDCA608];
  v9 = timingsafe_enable_if_supported();
  v10[0] = a3;
  v8[0] = ccn_n(1uLL, v10);
  v8[1] = 0;
  v8[2] = 1;
  v8[3] = v10;
  ccz_add(a1, a2, v8);
  result = cc_disable_dit_with_sb(&v9);
  v7 = *MEMORY[0x29EDCA608];
  return result;
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
  v26 = *MEMORY[0x29EDCA608];
  v6 = ccec_cp_ed448();
  v20 = cc_malloc_clear(0x690uLL);
  v21 = xmmword_299CFB980;
  v22 = cc_ws_alloc;
  v23 = cc_ws_free;
  if (v20)
  {
    v7 = cczp_n(v6);
    v8 = cc_ws_alloc(&v20, v7);
    v9 = v22(&v20, 3 * v7);
    ccshake256(0x39uLL, a3, 0x72uLL, __s);
    __s[0] &= 0xFCu;
    v25 |= 0x80u;
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

    v13 = cced448_scalar_mult_base_masked_ws(&v20, v6, a1, v9, v8);
    if (v13 || (v13 = ccec_affinify_ws(&v20, v6), v13))
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
    *(&v21 + 1) = 0;
    v23(&v20);
  }

  else
  {
    v17 = 4294967283;
  }

  v18 = *MEMORY[0x29EDCA608];
  return v17;
}

uint64_t cced448_shake_to_scalar_ws(uint64_t a1, uint64_t *a2, uint64_t *a3, size_t a4, char *a5, size_t a6, char *a7, size_t a8, char *a9)
{
  v29 = *MEMORY[0x29EDCA608];
  v15 = ccshake256_xi();
  v23 = *a2;
  v16 = cczp_n(a2);
  v24 = *(a1 + 16);
  v17 = (2 * v16) | 1;
  v18 = (*(a1 + 24))(a1, v17);
  v28 = 0;
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

  cczp_modn_ws(a1, &a2[5 * v23 + 4], a3, v17, v18);
  result = cc_clear(0x78uLL, __dst);
  *(a1 + 16) = v24;
  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t cchmac_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[1] = *MEMORY[0x29EDCA608];
  v10 = (((*(a1 + 8) + ((*(a1 + 8) + *(a1 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x2A1C7C4A8](a1);
  v13 = (v18 - v12);
  cchmac_init_internal(v11, (v18 - v12), v14, v15);
  cchmac_update_internal(a1, v13, a4, a5);
  cchmac_final_internal(a1, v13, a6);
  result = cc_clear(((*(a1 + 8) + *(a1 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + *(a1 + 8), v13);
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t cchmac(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = timingsafe_enable_if_supported();
  cchmac_internal(a1, a2, a3, a4, a5, a6);
  return cc_disable_dit_with_sb(&v13);
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
  v44 = *MEMORY[0x29EDCA608];
  result = ccsha256_di();
  v7 = result;
  v41 = 0;
  if (a3)
  {
    v8 = &a1[a3];
    v9 = __CFADD__(a1, a3);
    result = 4294967224;
    if (a3 < 0x28 || v9)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v8 = 0;
  }

  if (*a1 == -17958193)
  {
    v38 = a2;
    v10 = 32;
  }

  else
  {
    if (*a1 != -17958194)
    {
      result = 4294967223;
      goto LABEL_59;
    }

    v38 = a2;
    v10 = 28;
  }

  v39 = &v36;
  v11 = *(a1 + 4);
  v42 = 0u;
  v43 = 0u;
  v12 = (((*(v7 + 8) + ((*(v7 + 8) + *(v7 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](result);
  v36 = (&v36 - v13);
  v37 = v14;
  cchmac_init(v14, (&v36 - v13), 1uLL, &v41);
  if (v11)
  {
    v15 = 0;
    v16 = &a1[v10];
    v40 = &a1[v10];
    while (1)
    {
      v17 = (v16 + 56) <= v8 || v8 == 0;
      if (!v17 || v16 < a1)
      {
        break;
      }

      if (!strncmp("__TEXT", v16 + 8, 6uLL) || !strncmp("__TEXT_EXEC", v16 + 8, 0xBuLL))
      {
        if (*v40 == 1)
        {
          v23 = *(v16 + 12);
          if (v23)
          {
            v24 = (v16 + 124);
            do
            {
              v25 = v24 <= v8 || v8 == 0;
              result = 4294967224;
              if (!v25 || v16 + 56 < a1)
              {
                goto LABEL_59;
              }

              if (!strcmp((v24 - 68), "__text") && (!strcmp((v24 - 52), "__TEXT") || !strcmp((v24 - 52), "__TEXT_EXEC")))
              {
                v28 = *(v24 - 32);
                v29 = &a1[*(v24 - 28)];
LABEL_62:
                if ((&v29[v28] <= v8 || v8 == 0) && &v29[v28 - 1] >= a1)
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
                  goto LABEL_59;
                }

                goto LABEL_56;
              }

              v24 += 68;
            }

            while (--v23);
          }
        }

        else if (*v40 == 25)
        {
          v19 = (v16 + 72);
          v20 = *(v16 + 16);
          if (v8 && v19 > v8)
          {
            break;
          }

          if (v20)
          {
            v21 = (v16 + 152);
            do
            {
              v22 = v21 <= v8 || v8 == 0;
              result = 4294967224;
              if (!v22 || v19 < a1)
              {
                goto LABEL_59;
              }

              if (!strcmp((v21 - 80), "__text") && (!strcmp((v21 - 64), "__TEXT") || !strcmp((v21 - 64), "__TEXT_EXEC")))
              {
                v29 = &a1[*(v21 - 32)];
                v28 = *(v21 - 40);
                goto LABEL_62;
              }

              v21 += 80;
            }

            while (--v20);
          }
        }
      }

      ++v15;
      v16 += *(v16 + 1);
      if (v15 == v11)
      {
        goto LABEL_55;
      }
    }
  }

  else
  {
LABEL_55:
    v26 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: could not create the hash\n", v26, "fipspost_get_hmac", 251);
  }

LABEL_56:
  result = 4294967224;
LABEL_59:
  v27 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t fipspost_post_ecdh(char a1)
{
  v35 = *MEMORY[0x29EDCA608];
  v2 = ccec_cp_256();
  v3 = *v2;
  v4 = sizeof_struct_cche_galois_key();
  v5 = sizeof_struct_ccpolyzp_po2cyc();
  v6 = sizeof_struct_cche_galois_key();
  v23[0] = cc_malloc_clear(8 * ((v5 - 1 + v4 + 4 * v5 * v3) / v5 + 29 * v3 + (3 * v5 * v3 + v5 - 1 + v6) / v5));
  v7 = *v2;
  v8 = sizeof_struct_cche_galois_key();
  v9 = sizeof_struct_ccpolyzp_po2cyc();
  v23[1] = (v9 - 1 + v8 + 4 * v9 * v7) / v9 + 29 * v7 + (3 * v9 * v7 + v9 - 1 + sizeof_struct_cche_galois_key()) / v9;
  v24 = 0;
  v25 = cc_ws_alloc;
  v26 = cc_ws_free;
  if (v23[0])
  {
    v34[0] = xmmword_299CFB9D2;
    v34[1] = unk_299CFB9E2;
    v33[0] = xmmword_299CFB9F2;
    v33[1] = unk_299CFBA02;
    v32[0] = xmmword_299CFBA12;
    v32[1] = unk_299CFBA22;
    v31[0] = xmmword_299CFBA32;
    v31[1] = unk_299CFBA42;
    v30[0] = xmmword_299CFBA52;
    v30[1] = unk_299CFBA62;
    v28 = 0u;
    v29 = 0u;
    v27 = 32;
    v10 = cczp_bitlen(v2);
    v11 = cc_ws_alloc(v23, (4 * (v7 & 0x7FFFFFFFFFFFFFFLL)) | 2);
    v12 = v25(v23, (24 * v7 + 23) >> 3);
    if (ccec_make_priv(v10, 32, v31, 32, v30, 32, v32, v11))
    {
      v13 = mach_absolute_time();
      v14 = 4294967224;
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: result: %d\n", v13, "fipspost_post_ecdh_ws", 85, -72);
    }

    else
    {
      if (ccec_make_pub(v10, 0x20uLL, v34, 0x20uLL, v33, v12))
      {
        v15 = mach_absolute_time();
        v14 = 4294967224;
        v16 = 93;
      }

      else
      {
        if (!ccecdh_compute_shared_secret_ws(v23, v11, v12, &v27, &v28, &ccrng_zero))
        {
          if ((a1 & 0x10) != 0)
          {
            LOBYTE(v28) = v28 ^ 1;
          }

          if (v28 == 0x1FF20641062FC46 && *(&v28 + 1) == 0x252DDDFB34A4542ELL && v29 == 0x681E56602085C5CCLL && *(&v29 + 1) == 0x7BBD978977D70D04)
          {
            v14 = 0;
          }

          else
          {
            v22 = mach_absolute_time();
            printf("FIPSPOST_USER [%llu] %s:%d: FAILED: memcmp\n", v22, "fipspost_post_ecdh_ws", 114);
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
    v24 = 0;
    v26(v23);
    goto LABEL_11;
  }

  v14 = 4294967283;
LABEL_11:
  v17 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t ccn_addmul1(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t a4)
{
  for (i = 0; a1; --a1)
  {
    v5 = *a3++;
    v6 = (v5 * a4) >> 64;
    v7 = v5 * a4;
    v8 = __CFADD__(*a2, i);
    v9 = *a2 + i;
    v10 = v8;
    v11 = v9 + v7;
    i = (__PAIR128__(v10, v9) + __PAIR128__(v6, v7)) >> 64;
    *a2++ = v11;
  }

  return i;
}

uint64_t cczp_add_default_ws(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = *(a1 + 16);
  v11 = cczp_n(a2);
  v12 = (*(a1 + 24))(a1, v11);
  LOBYTE(a5) = ccn_add_ws(a1, v11, a3, a4, a5);
  v13 = cczp_prime(a2);
  v14 = ccn_sub_ws(a1, v11, v12, a3, v13);
  result = ccn_mux(v11, v14 ^ 1u | a5, a3, v12, a3);
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
  v23 = *MEMORY[0x29EDCA608];
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  cckeccak_init_state(v18);
  v8 = a4[1];
  __s[0] = *a4;
  __s[1] = v8;
  v21 = a2;
  v22 = a3;
  cckeccak_absorb_and_pad(v18, 168, 0x22uLL, __s, 0x1Fu);
  cc_clear(0x400uLL, a1);
  v9 = 0;
  v10 = 0;
  do
  {
    permutation = cckeccak_get_permutation();
    cckeccak_squeeze(v18, 0xA8uLL, 0xA8uLL, __s, permutation);
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
  cc_clear(0xC8uLL, v18);
  cc_clear(0xA8uLL, __s);
  v16 = *MEMORY[0x29EDCA608];
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
  v20 = *MEMORY[0x29EDCA608];
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  cckeccak_init_state(v16);
  v8 = a4[1];
  __s[0] = *a4;
  __s[1] = v8;
  v9 = a4[3];
  __s[2] = a4[2];
  __s[3] = v9;
  v19 = a3;
  cckeccak_absorb_and_pad(v16, 136, 0x42uLL, __s, 0x1Fu);
  cc_clear(0x400uLL, a2);
  v10 = 0;
  v11 = 0;
  do
  {
    permutation = cckeccak_get_permutation();
    cckeccak_squeeze(v16, 0x88uLL, 0x88uLL, __s, permutation);
    v11 = (*(a1 + 48))(__s, a2, v11);
  }

  while (v11 <= 0xFF && v10++ < 3);
  cc_clear(0xC8uLL, v16);
  cc_clear(0x88uLL, __s);
  v14 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t ccmldsa_sample_in_ball(uint64_t a1, void *a2, uint64_t *a3)
{
  __s[17] = *MEMORY[0x29EDCA608];
  cc_clear(0x400uLL, a2);
  permutation = cckeccak_get_permutation();
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  cckeccak_init_state(v23);
  cckeccak_absorb_and_pad(v23, 136, *(a1 + 16) >> 2, a3, 0x1Fu);
  cckeccak_squeeze(v23, 0x88uLL, 0x88uLL, __s, permutation);
  v7 = (256 - *(a1 + 12));
  if (v7 > 0xFF)
  {
    goto LABEL_22;
  }

  v8 = 0;
  LODWORD(v9) = 0;
  v10 = __s[0];
  while (1)
  {
    v9 = (v9 + 1);
    v11 = *(&__s[1] + v8);
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
    LODWORD(v11) = *(&__s[1] + v9++);
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

  cckeccak_squeeze(v23, 0x88uLL, 0x88uLL, __s, permutation);
  v14 = 0;
  LODWORD(v15) = 0;
  v16 = v13;
  while (1)
  {
    v15 = (v15 + 1);
    v17 = *(__s + v14);
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
    LODWORD(v17) = *(__s + v15++);
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

  cc_clear(0xC8uLL, v23);
  cc_clear(0x88uLL, __s);
  v21 = *MEMORY[0x29EDCA608];
  return v20;
}

void *ccpolyzp_po2cyc_scalar_divmod_ws(uint64_t a1, void *a2, unint64_t *a3, unint64_t *a4)
{
  v12[2] = *MEMORY[0x29EDCA608];
  ccn_mul_ws(a1, 2uLL, v11, a3, a4 + 4);
  ccn_sub_ws(a1, 2, __src, a3, v12);
  ccn_shift_right(2, __src, __src, 1);
  ccn_add_ws(a1, 2, __src, __src, v12);
  ccn_shift_right_multi(2, __src, __src, ((*a4 ^ (*a4 - 1)) <= *a4 - 1) - __clz(*a4) + 63 - 1);
  result = ccn_set(1, a2, __src);
  v9 = *MEMORY[0x29EDCA608];
  return result;
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
    result = cccmac_generate_subkeys(a1, a3, a4, a2, a2 + 16);
  }

  v10 = *MEMORY[0x29EDCA608];
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
  *algn_2A14E2708 = ep_kex_ctx;
  qword_2A14E2710 = ep_peer_kex_ctx;
  v1 = ((cczp_bitlen(v0) + 7) >> 2) & 0x3FFFFFFFFFFFFFFELL;
  qword_2A14E2718 = v0;
  qword_2A14E2720 = ccsha256_di();
  unk_2A14E2728 = v1;
  qword_2A14E2730 = ep_sign_ctx;
  qword_2A14E2738 = ep_peer_sign_ctx;
  unk_2A14E2740 = 11;
  qword_2A14E2748 = &ep_session_keys_sizes;
  unk_2A14E2750 = 272;
  qword_2A14E2758 = ep_session_keys_buffer;
  qword_2A14E2760 = ep_session_keys_derive;
  unk_2A14E2768 = 32;
  qword_2A14E2770 = ep_mac_compute;
  unk_2A14E2778 = xmmword_299CF0DA0;
  qword_2A14E2788 = ep_sigma_compute_mac_and_digest;
  unk_2A14E2790 = 16;
  qword_2A14E2798 = ep_aead_seal;
  qword_2A14E27A0 = ep_aead_open;
  qword_2A14E27A8 = ep_aead_next_iv;
  qword_2A14E27B0 = ep_clear;
  qword_2A14E27B8 = ccsha256_di();
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

uint64_t ccmode_gcm_finalize(int8x16_t *a1, size_t a2, void *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  ccmode_gcm_aad_finalize(a1);
  if (a1[5].i16[0] == 3)
  {
    v6 = a1[6].u64[0];
    if ((v6 & 0xF) != 0)
    {
      ccmode_gcm_mult_h(a1, a1[1].i64);
      v6 = a1[6].u64[0];
    }

    v7 = a1[5].u64[1];
    a1[4].i8[0] = v7 >> 53;
    a1[4].i8[1] = v7 >> 45;
    a1[4].i8[2] = v7 >> 37;
    a1[4].i8[3] = v7 >> 29;
    a1[4].i8[4] = v7 >> 21;
    a1[4].i8[5] = v7 >> 13;
    a1[4].i8[6] = v7 >> 5;
    a1[4].i8[7] = 8 * v7;
    a1[4].i8[8] = v6 >> 53;
    a1[4].i8[9] = v6 >> 45;
    a1[4].i8[10] = v6 >> 37;
    a1[4].i8[11] = v6 >> 29;
    a1[4].i8[12] = v6 >> 21;
    a1[4].i8[13] = v6 >> 13;
    a1[4].i8[14] = v6 >> 5;
    a1[4].i8[15] = 8 * v6;
    a1[1] = veorq_s8(a1[4], a1[1]);
    ccmode_gcm_mult_h(a1, a1[1].i64);
    (*(a1[6].i64[1] + 24))(a1[7].i64[0], 1, a1 + 3, a1 + 4);
    v11 = veorq_s8(a1[4], a1[1]);
    if (a2 >= 0x10)
    {
      a2 = 16;
    }

    if (a1[7].i32[2] == 78647)
    {
      v8 = cc_cmp_safe_internal(a2, &v11, a3) != 0 ? 0xFFFFFFBB : 0;
    }

    else
    {
      v8 = 0;
    }

    memcpy(a3, &v11, a2);
    a1[5].i16[0] = 4;
  }

  else
  {
    v8 = 4294967228;
  }

  v9 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t ccdh_init_gp_from_bytes(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
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
          ccprime_rabin_miller_ws(v54, v48, v49, 5, v39);
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
  if (8 * (a5 + a3) + 9 <= a7 && v8 >= a5 + a3 + 2)
  {
    v16 = a3;
    v31 = a2;
    v32 = a7 + 7;
    v33 = &v29;
    v34 = &a8[v8];
    __src[0] = 0;
    v29 = a7;
    v30 = ~a5;
    v18 = (((*(a1 + 8) + *(a1 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
    v19 = MEMORY[0x2A1C7C4A8](a1);
    v21 = (&v29 - v20);
    ccdigest_init_internal(v19, (&v29 - v20));
    ccdigest_update_internal(a1, v21, 8uLL, __src);
    ccdigest_update_internal(a1, v21, a5, a6);
    if (v16)
    {
      ccdigest_update_internal(a1, v21, v16, a4);
    }

    v22 = v34;
    v23 = v30;
    (*(a1 + 56))(a1, v21, &v34[v30]);
    cc_clear(*(a1 + 8) + *(a1 + 16) + 12, v21);
    LODWORD(result) = ccmgf_internal(v31, v8 + v23, a8, a5, &v22[v23]);
    a8[v8 - v9 - 2] ^= 1u;
    if (v16)
    {
      v24 = &a8[~v9 + v8];
      do
      {
        v25 = *a4++;
        *v24++ ^= v25;
        --v16;
      }

      while (v16);
    }

    v26 = (v32 & 0xFFFFFFFFFFFFFFF8) - v29;
    if (v26 >= 8)
    {
      result = 0xFFFFFFFFLL;
    }

    else
    {
      result = result;
    }

    if (v26 >= 8)
    {
      v27 = -1;
    }

    else
    {
      v27 = 0xFFu >> v26;
    }

    *a8 &= v27;
    *(v34 - 1) = -68;
  }

  else
  {
    result = 4294967271;
  }

  v28 = *MEMORY[0x29EDCA608];
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

unint64_t ccdh_valid_shared_secret(unint64_t result, uint64_t *a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    if (ccn_n(result, a2) > 1 || *a2 >= 2)
    {
      v6 = ccdh_gp_prime(a3);
      v7 = (ccn_cmp_internal(v5 - 1, a2 + 1, v6 + 8) != 0) - 1;
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
  v26 = *MEMORY[0x29EDCA608];
  memset(v13, 0, sizeof(v13));
  v10 = ccvrf_irtf_ed25519_derive_scalar_internal(a1, a2, v19, v18);
  LODWORD(v8) = ccvrf_irtf_ed25519_derive_public_key_internal(a1, v8, v13);
  memset(v25, 0, sizeof(v25));
  memset(__s, 0, sizeof(__s));
  v22 = 0u;
  v23 = 0u;
  memset(v21, 0, sizeof(v21));
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, sizeof(v16));
  memset(v15, 0, sizeof(v15));
  memset(v14, 0, sizeof(v14));
  ccvrf_irtf_ed25519_hash2curve_elligator2(*(a1 + 40), v13, a3, a4, v25);
  ge_frombytes_vartime(v17, v25);
  ge_scalarmult(v16, v19, v17);
  ccvrf_irtf_nonce_generation(*(a1 + 40), __s, v18, v25);
  ge_scalarmult_base(v15, __s);
  ge_scalarmult(v14, __s, v17);
  v20[0] = v17;
  v20[1] = v16;
  v20[2] = v15;
  v20[3] = v14;
  ccvrf_irtf_ed25519_hash_points(a1, v20, 4, &v22);
  cc_clear(0x10uLL, &v23);
  sc_muladd(v21, &v22, v19, __s);
  ccvrf_irtf_ed25519_encode_proof(v16, &v22, v21, a5);
  cc_clear(0x20uLL, __s);
  cc_clear(0x20uLL, v25);
  cc_clear(0x20uLL, &v22);
  cc_clear(0xA0uLL, v17);
  cc_clear(0xA0uLL, v16);
  cc_clear(0xA0uLL, v15);
  cc_clear(0xA0uLL, v14);
  cc_clear(0x20uLL, v19);
  cc_clear(0x20uLL, v18);
  cc_clear(0xA0uLL, v13);
  v11 = *MEMORY[0x29EDCA608];
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
  v17 = *MEMORY[0x29EDCA608];
  v8 = (((*(a1 + 8) + *(a1 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x2A1C7C4A8](a1);
  v11 = (&v15 - v10);
  ccdigest_init_internal(v9, (&v15 - v10));
  ccdigest_update_internal(a1, v11, 0x20uLL, a3);
  ccdigest_update_internal(a1, v11, 0x20uLL, a4);
  (*(a1 + 56))(a1, v11, __s);
  sc_reduce(__s);
  v12 = __s[1];
  *a2 = __s[0];
  a2[1] = v12;
  cc_clear(0x40uLL, __s);
  result = cc_clear(*(a1 + 8) + *(a1 + 16) + 12, v11);
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL ccn_add1_ws(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, _BOOL8 a5)
{
  for (result = a5; a2; --a2)
  {
    v6 = *a4++;
    v7 = result + v6;
    result = __CFADD__(result, v6);
    *a3++ = v7;
  }

  return result;
}

BOOL ccn_add1(uint64_t a1, void *a2, uint64_t *a3, _BOOL8 a4)
{
  v13 = timingsafe_enable_if_supported();
  v11[0] = xmmword_2A201C158;
  v11[1] = *algn_2A201C168;
  for (i = off_2A201C178[0]; a1; --a1)
  {
    v8 = *a3++;
    v9 = a4 + v8;
    a4 = __CFADD__(a4, v8);
    *a2++ = v9;
  }

  cc_ws_free_null(v11);
  cc_disable_dit_with_sb(&v13);
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
  v17 = *MEMORY[0x29EDCA608];
  v12 = ccsha256_di();
  ccdigest_internal(v12, 8 * *a2, &a2[3 * *a2 + 4], __s);
  v13 = ccrsa_eme_pkcs1v15_decode_internal_ws(a1, __s, a3, a4, a5, a6);
  cc_clear(0x20uLL, __s);
  v14 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t ccrsa_eme_pkcs1v15_decode_internal_ws(uint64_t a1, uint64_t a2, rsize_t *a3, void *a4, size_t a5, unint64_t *a6)
{
  v43 = *MEMORY[0x29EDCA608];
  v6 = 4294967273;
  v28 = a5 - 11;
  if (a5 >= 0xB && *a3 >= a5)
  {
    v12 = *(a1 + 16);
    v13 = ccrsa_n_from_size(a5);
    ccn_swap(v13, a6);
    v14 = ccrsa_block_start(a5, a6, 0);
    v27 = (*(a1 + 24))(a1, v13);
    v34 = 0;
    v39 = 0;
    memset(v38, 0, sizeof(v38));
    v37[1] = 0;
    v37[0] = ccsha256_di();
    ccdrbg_factory_nisthmac(v38, v37);
    v15 = ccsha256_di();
    ccdigest_internal(v15, a5, v14, __s);
    strcpy(v41, "ccrsa_eme_pkcs1v15_decode_generate_random");
    memset(v40, 0, sizeof(v40));
    inited = ccdrbg_init_internal(v38);
    if (inited)
    {
      v6 = inited;
      v18 = v28;
    }

    else
    {
      memset(v36, 0, sizeof(v36));
      internal = ccrng_drbg_init_withdrbg(v36, v38, v40);
      v18 = v28;
      if (internal || (internal = ccdrbg_generate_internal(v38, v40, v28, v27, 0, 0), internal))
      {
        v6 = internal;
      }

      else
      {
        v35 = 0;
        v6 = ccrng_uniform_internal(v36, a5 - 10, &v35);
        if (!v6)
        {
          v34 = v35;
        }
      }
    }

    cc_clear(0x20uLL, __s);
    cc_clear(8uLL, &v35);
    ccdrbg_done(v38, v40);
    if (v6)
    {
      cc_clear(v18, v27);
      cc_clear(8uLL, &v34);
    }

    else
    {
      v26 = v12;
      v19 = 0;
      v20 = *v14 != 0 ? 0 : (v14[1] != 2) - 1;
      v21 = 255;
      v22 = 2;
      do
      {
        v19 = v19 & ((v21 & 1) - 1) | v22 & -(v21 & 1);
        v32 = v19;
        v21 &= -(v14[v22] != 0);
        v31 = v21;
        ++v22;
      }

      while (a5 != v22);
      v30 = ~v19 + a5;
      v29 = v19 - 2;
      v33 = (v19 - 2) > 7 ? v20 & ~v21 : 0;
      v23 = v33 & 1;
      cc_clear(*a3, a4);
      *&v40[0] = *a3;
      ccrsa_xor_varlen(v40, a4, v23, a5, v19 + 1, v14);
      *&v38[0] = *a3;
      ccrsa_xor_varlen(v38, a4, !(v33 & 1), v28, v34, v27);
      *a3 = *&v38[0] & (v23 - 1) | *&v40[0] & -v23;
      cc_clear(8uLL, v40);
      cc_clear(8uLL, v38);
      v12 = v26;
    }

    ccn_swap(v13, a6);
    cc_clear(8uLL, &v34);
    cc_clear(1uLL, &v33);
    cc_clear(8uLL, &v32);
    cc_clear(1uLL, &v31);
    cc_clear(8uLL, &v30);
    cc_clear(8uLL, &v29);
    *(a1 + 16) = v12;
  }

  v24 = *MEMORY[0x29EDCA608];
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

uint64_t ccckg_init(_DWORD *__s, void *a2, void *a3, uint64_t a4)
{
  cc_clear(((2 * *a3 + 14) & 0xFFFFFFFFFFFFFFF0) + 8 * *a2 + 40, __s);
  *__s = 1;
  *(__s + 1) = a2;
  *(__s + 2) = a3;
  *(__s + 3) = a4;
  *(__s + 32) = 0;
  return 0;
}

uint64_t ccckg_derive_sk(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v21 = *MEMORY[0x29EDCA608];
  v12 = *(a1 + 8);
  v11 = *(a1 + 16);
  v13 = *v12;
  v14 = cczp_bitlen(v12);
  ccn_write_uint_padded_internal(v13, a2, (v14 + 7) >> 3, v20);
  v15 = *v11;
  v19[0] = a3;
  v19[1] = v15;
  v19[2] = a4;
  v19[3] = v15;
  v16 = cczp_bitlen(v12);
  result = ccansikdf_x963_iovec(v11, (v16 + 7) >> 3, v20, 2, v19, a5, a6);
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ccsrp_generate_x(uint64_t a1, uint64_t a2, char *a3, size_t a4, char *a5, size_t a6, char *a7)
{
  v26 = *MEMORY[0x29EDCA608];
  v14 = *a1;
  v15 = (((*(*a1 + 8) + *(*a1 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](a1);
  v17 = &__src[-v16 - 8];
  ccdigest_init_internal(v14, &__src[-v16 - 8]);
  if ((*(a1 + 24) & 2) == 0)
  {
    v18 = strlen(a3);
    ccdigest_update_internal(v14, v17, v18, a3);
  }

  ccdigest_update_internal(v14, v17, 1uLL, ":");
  ccdigest_update_internal(v14, v17, a6, a7);
  (*(v14 + 56))(v14, v17, __src);
  ccdigest_init_internal(v14, v17);
  ccdigest_update_internal(v14, v17, a4, a5);
  ccdigest_update_internal(v14, v17, *v14, __src);
  (*(v14 + 56))(v14, v17, __src);
  v19 = *v14;
  v20 = ccdh_gp_n(*(a1 + 8));
  uint_internal = ccn_read_uint_internal(v20, a2, v19, __src);
  cc_clear(*v14, __src);
  cc_clear(*(v14 + 8) + *(v14 + 16) + 12, v17);
  v22 = *MEMORY[0x29EDCA608];
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
  memcpy(v22 - v8, v11, v10 + 12);
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

  result = cc_clear(*(a1 + 8) + *(a1 + 16) + 12, v9);
  v21 = *MEMORY[0x29EDCA608];
  return result;
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
  v20[1] = *MEMORY[0x29EDCA608];
  if (*(a1 + 8) == a3)
  {
    v11 = (*a1 + 15) & 0xFFFFFFFFFFFFFFF0;
    v12 = MEMORY[0x2A1C7C4A8](a1);
    v14 = v20 - v13;
    v17 = (*(v12 + 16))(v12, v20 - v13, v16, v15);
    if (!v17)
    {
      v17 = (*(a1 + 24))(v14, a4, a6, a7);
    }

    cc_clear(*a1, v14);
  }

  else
  {
    v17 = 4294967289;
  }

  v18 = *MEMORY[0x29EDCA608];
  return v17;
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
  v32 = *MEMORY[0x29EDCA608];
  v10 = ccckg2_ctx_di(a2);
  v11 = ccckg2_ctx_cp(a2);
  v12 = *v11;
  v13 = (*(v10 + 8) + *(v10 + 16) + 19) & 0xFFFFFFFFFFFFFFF8;
  MEMORY[0x2A1C7C4A8](v11);
  v15 = (&v29 - v14);
  if (*(a2 + 32))
  {
    result = 4294967210;
  }

  else if (*a2 == 2 && *v10 == a3)
  {
    v17 = *(a1 + 24);
    v30 = *(a1 + 16);
    v18 = v17(a1, (4 * (v12 & 0x7FFFFFFFFFFFFFFLL)) | 2);
    *v18 = v11;
    v19 = a2 + 40;
    result = ccec_generate_scalar_fips_retry_ws(a1, v11, a5, (a2 + 40));
    if (!result)
    {
      result = ccec_generate_key_fips_ws(a1, v11, a5, v18);
      if (!result)
      {
        v20 = ccckg2_ctx_cp(a2);
        ccn_set(v12, (v19 + 8 * *v20), &v18[3 * **v18 + 2]);
        v21 = ccckg2_ctx_cp(a2);
        v22 = ccckg2_ctx_cp(a2);
        result = ccec_export_pub(v18, (v19 + 8 * *v22 + 8 * *v21));
        if (!result)
        {
          v23 = cczp_bitlen(&v11[5 * *v11 + 4]);
          ccn_write_uint_padded_internal(v12, (a2 + 40), (v23 + 7) >> 3, __src);
          ccdigest_init_internal(v10, v15);
          v24 = cczp_bitlen(&v11[5 * *v11 + 4]);
          ccdigest_update_internal(v10, v15, (v24 + 7) >> 3, __src);
          v25 = (cczp_bitlen(*v18) + 7) >> 2;
          v26 = ccckg2_ctx_cp(a2);
          v27 = ccckg2_ctx_cp(a2);
          ccdigest_update_internal(v10, v15, v25 | 1, (v19 + 8 * *v27 + 8 * *v26));
          (*(v10 + 56))(v10, v15, a4);
          cc_clear(*(v10 + 8) + *(v10 + 16) + 12, v15);
          result = 0;
          *(a2 + 32) = 1;
        }
      }
    }

    *(a1 + 16) = v30;
  }

  else
  {
    result = 4294967289;
  }

  v28 = *MEMORY[0x29EDCA608];
  return result;
}

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
  v23 = *MEMORY[0x29EDCA608];
  v14 = timingsafe_enable_if_supported();
  v22 = v14;
  v15 = (*a1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v21[-v16];
  v18 = (*(a1 + 16))(a1, &v21[-v16], a2, a3, a4);
  if (!v18)
  {
    v18 = (*(a1 + 24))(v17, a5, a6, a7);
  }

  cc_clear(*a1, v17);
  cc_disable_dit_with_sb(&v22);
  v19 = *MEMORY[0x29EDCA608];
  return v18;
}

uint64_t cczp_inv_default_ws(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  v7 = cczp_n(a2);
  v8 = cczp_prime(v6);
  v9 = v7;
  if ((ccn_cmp_internal(v7, a4, v8) & 0x80000000) == 0)
  {
    return 4294967289;
  }

  __s = a3;
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
  __n = 8 * v9;
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
    cc_clear(__n, __s);
    result = 4294967289;
  }

  *(a1 + 16) = v39;
  return result;
}

uint64_t cczp_inv_update_redc_ws(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v11 = cczp_n(a2);
  v22 = *(a1 + 16);
  v12 = (*(a1 + 24))(a1, v11 + 1);
  v13 = (*(a1 + 24))(a1, v11);
  cczp_cond_negate(a2, a5 < 0, v12, a4);
  cczp_cond_negate(a2, a7 < 0, v13, a6);
  v12[v11] = ccn_mul1(v11, v12, v12, ((a5 >> 63) - 1) & a5 | -(a5 >> 63) & -a5);
  v12[v11] += ccn_addmul1(v11, v12, v13, ((a7 >> 63) - 1) & a7 | -(a7 >> 63) & -a7);
  v14 = cczp_prime(a2);
  v12[v11] += ccn_addmul1(v11, v12, v14, (LODWORD(a2[*a2 + 3]) * *v12) & 0x7FFFFFFF);
  ccn_shift_right(v11 + 1, v12, v12, 31);
  ccn_set(v11, a3, v12);
  v15 = cczp_prime(a2);
  v16 = ccn_subn(v11 + 1, v12, v12, v11, v15);
  result = ccn_mux(v11, v16, a3, a3, v12);
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
      if ((ccn_cmp_internal(v20, v25, v28) & 0x80000000) != 0)
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

uint64_t ccn_p384_mul_ws(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v10 = *(a1 + 16);
  v11 = (*(a1 + 24))(a1, 12);
  ccn_mul_ws(a1, 6uLL, v11, a4, a5);
  result = ccn_p384_redc_ws(a1, a2, a3, v11);
  *(a1 + 16) = v10;
  return result;
}

uint64_t ccn_p384_sqr_ws(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4)
{
  v8 = *(a1 + 16);
  v9 = (*(a1 + 24))(a1, 12);
  ccn_sqr_ws(a1, 6uLL, v9, a4);
  result = ccn_p384_redc_ws(a1, a2, a3, v9);
  *(a1 + 16) = v8;
  return result;
}

uint64_t ccn_p384_from_ws(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = *(a1 + 16);
  v9 = (*(a1 + 24))(a1, 12);
  ccn_set(6, v9, a4);
  ccn_zero(6, (v9 + 48));
  result = ccn_p384_redc_ws(a1, a2, a3, v9);
  *(a1 + 16) = v8;
  return result;
}

uint64_t ccn_p384_redc_ws(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = 0;
  v9 = a4[4];
  do
  {
    v10 = &a4[v8];
    v11 = a4[v8];
    v12 = a4[v8 + 1];
    v13 = 0x100000001 * v11;
    v14 = ((0x100000001 * v11) * 0xFFFFFFFFuLL) >> 64;
    v15 = -v11;
    v16 = ((0x100000001 * v11) * 0xFFFFFFFFFFFFFFFFLL) >> 64;
    v17 = 0xFFFFFFFEFFFFFFFFLL * v11;
    v18 = ((0x100000001 * v11) * 0xFFFFFFFF00000000) >> 64;
    v19 = __CFADD__(0xFFFFFFFF00000000 * v11, v12);
    v20 = 0xFFFFFFFF00000000 * v11 + v12;
    if (v19)
    {
      ++v18;
    }

    v19 = __CFADD__(__CFADD__(v15, v11), v20);
    v21 = __CFADD__(v15, v11) + v20;
    v19 |= __CFADD__(v14, v21);
    v21 += v14;
    if (v19)
    {
      v22 = v18 + 1;
    }

    else
    {
      v22 = v18;
    }

    v23 = (v13 * 0xFFFFFFFFFFFFFFFELL) >> 64;
    v24 = -2 * v13;
    v25 = v10[2];
    v26 = v10[3];
    v19 = __CFADD__(v24, v25);
    v27 = v24 + v25;
    if (v19)
    {
      ++v23;
    }

    v19 = __CFADD__(v27, v22);
    v28 = v27 + v22;
    if (v19)
    {
      v29 = v23 + 1;
    }

    else
    {
      v29 = v23;
    }

    v30 = v17 + v26;
    if (__CFADD__(v17, v26))
    {
      v31 = v16 + 1;
    }

    else
    {
      v31 = v16;
    }

    v19 = __CFADD__(v30, v29);
    v32 = v30 + v29;
    if (v19)
    {
      v33 = v31 + 1;
    }

    else
    {
      v33 = v31;
    }

    v10[2] = v28;
    v10[3] = v32;
    v19 = __CFADD__(v17, v9);
    v34 = v17 + v9;
    if (v19)
    {
      v35 = v16 + 1;
    }

    else
    {
      v35 = v16;
    }

    v36 = v34 + v33;
    if (__CFADD__(v34, v33))
    {
      v37 = v35 + 1;
    }

    else
    {
      v37 = v35;
    }

    v38 = v10[5];
    v19 = __CFADD__(v17, v38);
    v39 = v17 + v38;
    if (v19)
    {
      v40 = v16 + 1;
    }

    else
    {
      v40 = v16;
    }

    v19 = __CFADD__(v39, v37);
    v9 = v39 + v37;
    if (v19)
    {
      v41 = v40 + 1;
    }

    else
    {
      v41 = v40;
    }

    v10[4] = v36;
    v10[5] = v9;
    *v10 = v41;
    v10[1] = v21;
    ++v8;
  }

  while (v8 != 6);
  v42 = ccn_add_ws(a1, 6, a4 + 6, a4 + 6, a4);
  v43 = cczp_prime(a2);
  v44 = ccn_sub_ws(a1, 6, a4, a4 + 6, v43) ^ v42;

  return ccn_mux(6, v44, a3, a4 + 6, a4);
}

uint64_t ccmlkem_poly_getnoise(uint64_t a1, _OWORD *a2, char a3)
{
  __s[16] = *MEMORY[0x29EDCA608];
  ccmlkem_prf(a2, a3, __s);
  ccmlkem_sample_cbd_eta2(a1, __s);
  result = cc_clear(0x80uLL, __s);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ccmlkem_poly_encode(uint64_t result, uint64_t a2)
{
  v2 = (result + 2);
  v3 = (a2 + 2);
  v4 = 128;
  do
  {
    v5 = ((*(v3 - 1) >> 15) & 0xD01) + *(v3 - 1);
    v6 = ((*v3 >> 15) & 0xD01) + *v3;
    *(v2 - 2) = v5;
    *(v2 - 1) = (16 * v6) | BYTE1(v5);
    *v2 = v6 >> 4;
    v2 += 3;
    v3 += 2;
    --v4;
  }

  while (v4);
  return result;
}

uint64_t ccmlkem_poly_decode(uint64_t result, uint64_t a2)
{
  v2 = (a2 + 2);
  v3 = (result + 2);
  v4 = 128;
  do
  {
    v5 = *(v2 - 1);
    v6 = *(v2 - 2) | ((v5 & 0xF) << 8);
    v7 = *v2;
    v2 += 3;
    *(v3 - 1) = v6 - 3329 + (((v6 - 3329) >> 15) & 0xD01);
    *v3 = (((((v5 >> 4) | (16 * v7)) - 3329) >> 15) & 0xD01) + ((v5 >> 4) | (16 * v7)) - 3329;
    v3 += 2;
    --v4;
  }

  while (v4);
  return result;
}

uint64_t ccmlkem_poly_add(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (i = 0; i != 512; i += 2)
  {
    *(result + i) = *(a3 + i) + *(a2 + i);
  }

  return result;
}

uint64_t ccmlkem_poly_sub(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (i = 0; i != 512; i += 2)
  {
    *(result + i) = *(a2 + i) - *(a3 + i);
  }

  return result;
}

uint64_t ccmlkem_poly_reduce(uint64_t result)
{
  v1 = 0;
  v2 = vdupq_n_s32(0x13AFB8u);
  v3 = vdupq_n_s32(0xD01u);
  v4 = vdupq_n_s32(0x6808u);
  do
  {
    *(result + v1) = vaddhn_high_s32(vaddhn_s32(vmulq_s32(vshrq_n_s32(vmulq_s32(vmovl_s16(*(result + v1)), v2), 0x10uLL), v3), v4), vmulq_s32(vshrq_n_s32(vmulq_s32(vmovl_high_s16(*(result + v1)), v2), 0x10uLL), v3), v4);
    v1 += 16;
  }

  while (v1 != 512);
  return result;
}

uint64_t ccmlkem_poly_toplant(uint64_t result)
{
  v1 = 0;
  v2 = vdupq_n_s32(0x97F44FAC);
  v3 = vdupq_n_s32(0xD01u);
  v4 = vdupq_n_s32(0x6808u);
  do
  {
    *(result + v1) = vaddhn_high_s32(vaddhn_s32(vmulq_s32(vshrq_n_s32(vmulq_s32(vmovl_s16(*(result + v1)), v2), 0x10uLL), v3), v4), vmulq_s32(vshrq_n_s32(vmulq_s32(vmovl_high_s16(*(result + v1)), v2), 0x10uLL), v3), v4);
    v1 += 16;
  }

  while (v1 != 512);
  return result;
}

BOOL ccec_is_point_projective_ws(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  v6 = (*(a1 + 24))(a1, *a2);
  v7 = (*(a1 + 24))(a1, v4);
  (*(a1 + 24))(a1, v4);
  v8 = *a2;
  cczp_sqr_ws(a1, a2);
  v9 = &a2[2 * *a2];
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  v10 = *a2;
  cczp_sqr_ws(a1, a2);
  result = ccn_cmp_internal(v4, v7, v6) == 0;
  *(a1 + 16) = v5;
  return result;
}

uint64_t fipspost_post_pbkdf(char a1)
{
  v42 = *MEMORY[0x29EDCA608];
  memset(__s2, 0, 143);
  v2 = ccsha1_di();
  if (!ccpbkdf2_hmac(v2, 88, "roAhfqRBzTqHATLXmmLLiQIyBUchpmcqrXWMWoztGqWZrEbqIZFKWphBFbGkoJmnRaqDXZaYMreSUJhWTLypGstb", 0x15uLL, "\x0E\xDD\x678Ί\x1F}\x97?#\xACpC\x1C\xBF\xD0\x54P0\x93", 0x371uLL, 0x8FuLL, __s2))
  {
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
      v40 = 0;
      memset(v39, 0, sizeof(v39));
      v6 = ccsha256_di();
      if (ccpbkdf2_hmac(v6, 34, "PpKpAmtfcDCPtAtwRMnHBueaQklIgpzLiH", 0x1CuLL, "\x8B\x81\xB8F\xFC{Љ}ivwoo\x1Be\xBF\xB9M\x92+fI-\\L\x8C\x82", 0x300uLL, 0x41uLL, v39))
      {
        mach_absolute_time();
        printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccpbkdf2_hmac (SHA-256): %d\n");
        goto LABEL_3;
      }

      if ((a1 & 0x10) != 0)
      {
        v7 = "\x01p\xCC\x73\x87%\xA7\x13g\x1C\xE2\xA3\x632\x86\x9C9\x14\xC5\x21ø*\xB9t\x93RM~*\xD5\x2C\x03J\xA2\xFD\a\xF1\x01\x5B\x23E\x84q\xA4\x9E\xB72\xBB\xA9\xB0F\xB3\xF8\xF5\x90\x7C\xCF\x96\x9C\\v\xF7\x22\xFB\xBB";
      }

      else
      {
        v7 = "p\xCC\x73\x87%\xA7\x13g\x1C\xE2\xA3\x632\x86\x9C9\x14\xC5\x21ø*\xB9t\x93RM~*\xD5\x2C\x03J\xA2\xFD\a\xF1\x01\x5B\x23E\x84q\xA4\x9E\xB72\xBB\xA9\xB0F\xB3\xF8\xF5\x90\x7C\xCF\x96\x9C\\v\xF7\x22\xFB\xBB";
      }

      if (!memcmp(v7, v39, 0x41uLL))
      {
        memset(v38, 0, 319);
        v8 = ccsha512_di();
        if (ccpbkdf2_hmac(v8, 17, "SeiPcvDyiAvRsPPKX", 0x1CuLL, "\x1C\x1A+Ib\x97\xDE\x6D\xED\xAA\xE8~\xB2z\x04\b\x04\x9C\x13\xE8\xD2\x37\x03\x81\a\xD3\xCC\xA8", 0x244uLL, 0x13FuLL, v38))
        {
          mach_absolute_time();
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccpbkdf2_hmac (SHA-512): %d\n");
          goto LABEL_3;
        }

        if ((a1 & 0x10) != 0)
        {
          v9 = "\x01+\xAC\xA7o;\xB3t\xAE.\x15N\xAF\xC3\x0C\x97\x86\xC1\xD1[\xDD\x42\xCE\x65\xA5\xBD\a\xA1\xFAN\xAAI\bh\x1F~\x19\xCA\x3F(\xA8\x95\x8D\xD9\xCD\x7Fޟ\xEC\xDB\xF2\r\x8Dq\xF2\x0A\x23\x0Cr\x15\x8AE\xA1\xB0\xEC\x7F\x49\xF8ѡ\x9B\xFE\xD0\x31'+Izt{\b:Vhi\x9D\xE0\x10\x71ݰ\xDD\xE4/\a/\x0E]*4\x98\x17·\x11\b\x85-0\xF9P\x8B\x1913!T\xBE\\\x97\x03\x11\x0F\xE1\xFB\x4B\x7Fo\xC1\xB6\f\xDA\x25\xEB\xC2\xE5\xEC\x23\xCE.D#\xC7\xFE\xD6\xE2\xA5)=\xA8\xAF]3\xAD. \xE5\x9E\xDD/\x1E\xB7\xDD\xE4\x81\x1B\t\xB2s5\xE5\xFE\x318\xED\x5E\xC8~\xC3\x54\xADO\xE7\x07\x82\x10\x9Brb\xBF\x14\x1F\x0F\n\xAE\x14rǙ\xFF\xB6i\bCPT\xE1\xF6\x9B\xA1ne\x81\x96\xF5\xBE\x6D\x0F\x94\x91\xE5\x4C\x11\xCA\x0F\xAFx\xCE\x09*\xD0\x1C\xE9\x66\x1A\xAD\xA0\xC4\x4B\xD2\x6B\xFA\xB7u\xC4\x66|\xC8\xFEλ\xDE\xC2\xF9\xD8\x23˳\xC1\x4B\xDC\x49\xE9\x26\x08\xB4\xB4\xC3\x20\xC5\x63Wf(W\x89\xC7\x7B.\x13\xB9\xC8\xEA]5c\xDF\x20\x12l\x1B\xA1\\\x94Y\x19z\xA6\b\xB0\xF0\x46\xDC\x44\xAA/U]\x89\x8A\xE6\x4B\xAA\xDE\x1Aܞ\xB9#";
        }

        else
        {
          v9 = "+\xAC\xA7o;\xB3t\xAE.\x15N\xAF\xC3\x0C\x97\x86\xC1\xD1[\xDD\x42\xCE\x65\xA5\xBD\a\xA1\xFAN\xAAI\bh\x1F~\x19\xCA\x3F(\xA8\x95\x8D\xD9\xCD\x7Fޟ\xEC\xDB\xF2\r\x8Dq\xF2\x0A\x23\x0Cr\x15\x8AE\xA1\xB0\xEC\x7F\x49\xF8ѡ\x9B\xFE\xD0\x31'+Izt{\b:Vhi\x9D\xE0\x10\x71ݰ\xDD\xE4/\a/\x0E]*4\x98\x17·\x11\b\x85-0\xF9P\x8B\x1913!T\xBE\\\x97\x03\x11\x0F\xE1\xFB\x4B\x7Fo\xC1\xB6\f\xDA\x25\xEB\xC2\xE5\xEC\x23\xCE.D#\xC7\xFE\xD6\xE2\xA5)=\xA8\xAF]3\xAD. \xE5\x9E\xDD/\x1E\xB7\xDD\xE4\x81\x1B\t\xB2s5\xE5\xFE\x318\xED\x5E\xC8~\xC3\x54\xADO\xE7\x07\x82\x10\x9Brb\xBF\x14\x1F\x0F\n\xAE\x14rǙ\xFF\xB6i\bCPT\xE1\xF6\x9B\xA1ne\x81\x96\xF5\xBE\x6D\x0F\x94\x91\xE5\x4C\x11\xCA\x0F\xAFx\xCE\x09*\xD0\x1C\xE9\x66\x1A\xAD\xA0\xC4\x4B\xD2\x6B\xFA\xB7u\xC4\x66|\xC8\xFEλ\xDE\xC2\xF9\xD8\x23˳\xC1\x4B\xDC\x49\xE9\x26\x08\xB4\xB4\xC3\x20\xC5\x63Wf(W\x89\xC7\x7B.\x13\xB9\xC8\xEA]5c\xDF\x20\x12l\x1B\xA1\\\x94Y\x19z\xA6\b\xB0\xF0\x46\xDC\x44\xAA/U]\x89\x8A\xE6\x4B\xAA\xDE\x1Aܞ\xB9#";
        }

        if (!memcmp(v9, v38, 0x13FuLL))
        {
          if ((a1 & 0x10) != 0)
          {
            v10 = "\x01\xE1\x6F\xDB\x97\xD0\xD9\xE8\x91\xC4\xE0\x1A\xE95\xBF=Z@\x83\x87/\xD9\x06\x98;\x84\x03o\xAE>\x0F\xA0f";
          }

          else
          {
            v10 = "\xE1\x6F\xDB\x97\xD0\xD9\xE8\x91\xC4\xE0\x1A\xE95\xBF=Z@\x83\x87/\xD9\x06\x98;\x84\x03o\xAE>\x0F\xA0f";
          }

          if ((a1 & 0x10) != 0)
          {
            v11 = "\x01Z\xBC\x17C\xA8J\xE3\xDA\xAA\xF0\x70\x4B\xA6\xFF\xC9\x33{\x1F\x99\x14\xF7\xFA\xFC\x3F>o~\t\xEF\xD5\x31\x96";
          }

          else
          {
            v11 = "Z\xBC\x17C\xA8J\xE3\xDA\xAA\xF0\x70\x4B\xA6\xFF\xC9\x33{\x1F\x99\x14\xF7\xFA\xFC\x3F>o~\t\xEF\xD5\x31\x96";
          }

          if ((a1 & 0x10) != 0)
          {
            v12 = "\x01\x96\xBA\x8C\x13%\xBE~\x7Flb\x97*[\xB5\xCE\xD4\xFF\x8FȐ[\xA8\xAAez)\xAA\xC5\x23|ކ";
          }

          else
          {
            v12 = "\x96\xBA\x8C\x13%\xBE~\x7Flb\x97*[\xB5\xCE\xD4\xFF\x8FȐ[\xA8\xAAez)\xAA\xC5\x23|ކ";
          }

          v13 = ccsha3_224_di();
          if (ccpbkdf2_hmac(v13, 88, "roAhfqRBzTqHATLXmmLLiQIyBUchpmcqrXWMWoztGqWZrEbqIZFKWphBFbGkoJmnRaqDXZaYMreSUJhWTLypGstb", 0x15uLL, "\x0E\xDD\x678Ί\x1F}\x97?#\xACpC\x1C\xBF\xD0\x54P0\x93", 0x3E8uLL, 0x20uLL, &v34))
          {
            mach_absolute_time();
            printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccpbkdf2_hmac (SHA3-224): %d\n");
            goto LABEL_3;
          }

          v14 = "\x01\x16\xD1\x47C\x97\xE5\x2A\x54GD\xB6\xEC\x78\xB3r\x9As\xA0\x16<\x1F)}4[n\xD3\x51\xC5\x5C\xAC\xD3\x16\xD1\x47C\x97\xE5\x2A\x54GD\xB6\xEC\x78\xB3r\x9As\xA0\x16<\x1F)}4[n\xD3\x51\xC5\x5C\xAC\xD3\x01\xE1\x6F\xDB\x97\xD0\xD9\xE8\x91\xC4\xE0\x1A\xE95\xBF=Z@\x83\x87/\xD9\x06\x98;\x84\x03o\xAE>\x0F\xA0f";
          if ((a1 & 0x10) == 0)
          {
            v14 = "\x16\xD1\x47C\x97\xE5\x2A\x54GD\xB6\xEC\x78\xB3r\x9As\xA0\x16<\x1F)}4[n\xD3\x51\xC5\x5C\xAC\xD3\x01\xE1\x6F\xDB\x97\xD0\xD9\xE8\x91\xC4\xE0\x1A\xE95\xBF=Z@\x83\x87/\xD9\x06\x98;\x84\x03o\xAE>\x0F\xA0f";
          }

          v15 = *v14;
          v16 = *(v14 + 1);
          v18 = *(v14 + 2);
          v17 = *(v14 + 3);
          if (v15 == v34 && v16 == v35 && v18 == v36 && v17 == v37)
          {
            v22 = ccsha3_256_di();
            if (ccpbkdf2_hmac(v22, 88, "roAhfqRBzTqHATLXmmLLiQIyBUchpmcqrXWMWoztGqWZrEbqIZFKWphBFbGkoJmnRaqDXZaYMreSUJhWTLypGstb", 0x15uLL, "\x0E\xDD\x678Ί\x1F}\x97?#\xACpC\x1C\xBF\xD0\x54P0\x93", 0x3E8uLL, 0x20uLL, &v34))
            {
              mach_absolute_time();
              printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccpbkdf2_hmac (SHA3-256): %d\n");
              goto LABEL_3;
            }

            if (*v10 == v34 && *(v10 + 1) == v35 && *(v10 + 2) == v36 && *(v10 + 3) == v37)
            {
              v26 = ccsha3_384_di();
              if (ccpbkdf2_hmac(v26, 88, "roAhfqRBzTqHATLXmmLLiQIyBUchpmcqrXWMWoztGqWZrEbqIZFKWphBFbGkoJmnRaqDXZaYMreSUJhWTLypGstb", 0x15uLL, "\x0E\xDD\x678Ί\x1F}\x97?#\xACpC\x1C\xBF\xD0\x54P0\x93", 0x3E8uLL, 0x20uLL, &v34))
              {
                mach_absolute_time();
                printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccpbkdf2_hmac (SHA3-384): %d\n");
                goto LABEL_3;
              }

              if (*v11 == v34 && *(v11 + 1) == v35 && *(v11 + 2) == v36 && *(v11 + 3) == v37)
              {
                v30 = ccsha3_512_di();
                if (ccpbkdf2_hmac(v30, 88, "roAhfqRBzTqHATLXmmLLiQIyBUchpmcqrXWMWoztGqWZrEbqIZFKWphBFbGkoJmnRaqDXZaYMreSUJhWTLypGstb", 0x15uLL, "\x0E\xDD\x678Ί\x1F}\x97?#\xACpC\x1C\xBF\xD0\x54P0\x93", 0x3E8uLL, 0x20uLL, &v34))
                {
                  mach_absolute_time();
                  printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccpbkdf2_hmac (SHA3-512): %d\n");
                  goto LABEL_3;
                }

                if (*v12 == v34 && *(v12 + 1) == v35 && *(v12 + 2) == v36 && *(v12 + 3) == v37)
                {
                  result = 0;
                  goto LABEL_10;
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

    result = 4294967221;
    goto LABEL_10;
  }

  mach_absolute_time();
  printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccpbkdf2_hmac (SHA-1): %d\n");
LABEL_3:
  result = 4294967224;
LABEL_10:
  v5 = *MEMORY[0x29EDCA608];
  return result;
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

uint64_t ccmldsa_compute_mu(_DWORD *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12[8] = *MEMORY[0x29EDCA608];
  v11[0] = 0;
  v11[1] = a6;
  v7 = *a1 == 1;
  v12[0] = a3;
  v12[1] = 64;
  v12[2] = v11;
  v12[3] = 2 * v7;
  if (v7)
  {
    v8 = a6;
  }

  else
  {
    v8 = 0;
  }

  v12[4] = a7;
  v12[5] = v8;
  v12[6] = a5;
  v12[7] = a4;
  result = cckeccak_oneshot_iovec(4, v12, 0x40uLL, a2, 0x88uLL, 0x1Fu);
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ccmldsa_compute_c(uint64_t a1, void *a2, _OWORD *a3, uint64_t a4)
{
  v19 = *MEMORY[0x29EDCA608];
  permutation = cckeccak_get_permutation();
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  cckeccak_init_state(v16);
  v9 = a3[1];
  __s[0] = *a3;
  __s[1] = v9;
  v10 = a3[3];
  __s[2] = a3[2];
  __s[3] = v10;
  if (*(a1 + 4))
  {
    v11 = 0;
    v12 = 0;
    LODWORD(v13) = 64;
    do
    {
      ccmldsa_poly_simplebitpack_w1(__s + v13, a4 + 4 * (v11 & 0xFFFFFF00));
      cckeccak_absorb_blocks(v16, 0x88uLL, 1, __s, permutation);
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

  cckeccak_absorb_and_pad(v16, 136, v13, __s, 0x1Fu);
  cckeccak_squeeze(v16, 0x88uLL, *(a1 + 16) >> 2, a2, permutation);
  cc_clear(0xC8uLL, v16);
  result = cc_clear(0xC0uLL, __s);
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ccwrap_auth_decrypt_withiv_internal(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, size_t *a5, char *a6, uint64_t a7)
{
  v11 = a3;
  v35 = *MEMORY[0x29EDCA608];
  v14 = ccwrap_unwrapped_size(a3);
  *a5 = v14;
  if (!ccwrap_argsvalid(a1, v14, v11))
  {
    cc_clear(0x10uLL, &__s);
    v25 = 4294967289;
    goto LABEL_9;
  }

  v32 = a7;
  v15 = v11 >> 3;
  v16 = (v11 >> 3) - 1;
  __s = *a4;
  v29 = a5;
  memmove(a6, a4 + 1, *a5);
  v17 = 6 * (v11 >> 3) - 6;
  v30 = v11;
  v31 = a6;
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
        __s ^= bswap64(v23);
        v34 = v24;
        (*(a1 + 24))(a2, 1, &__s, &__s);
        *&v19[8 * v22] = v34;
        --v23;
        --v22;
      }

      while (v22 != 1);
    }

    v20 = v21 - 1;
    v17 += v18;
  }

  while (v21);
  v25 = cc_cmp_safe_internal(8, &__s, v32);
  cc_clear(0x10uLL, &__s);
  if (v25)
  {
    v25 = 4294967294;
    v11 = v30;
    a6 = v31;
    a5 = v29;
LABEL_9:
    *a5 = 0;
    v26 = ccwrap_unwrapped_size(v11);
    cc_clear(v26, a6);
  }

  v27 = *MEMORY[0x29EDCA608];
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
  v24 = *MEMORY[0x29EDCA608];
  v23[0] = xmmword_299CFBC10;
  v23[1] = unk_299CFBC20;
  v21[1] = unk_299CFBC40;
  v22 = xmmword_299CFBD50;
  v20[1] = unk_299CFBC60;
  v21[0] = xmmword_299CFBC30;
  v19[1] = unk_299CFBC80;
  v20[0] = xmmword_299CFBC50;
  v18[1] = unk_299CFBCA0;
  v19[0] = xmmword_299CFBC70;
  v17[1] = unk_299CFBCC0;
  v18[0] = xmmword_299CFBC90;
  __s2[4] = xmmword_299CFBD10;
  __s2[5] = unk_299CFBD20;
  __s2[6] = xmmword_299CFBD30;
  __s2[7] = unk_299CFBD40;
  v17[0] = xmmword_299CFBCB0;
  __s2[0] = xmmword_299CFBCD0;
  __s2[1] = unk_299CFBCE0;
  __s2[2] = xmmword_299CFBCF0;
  __s2[3] = unk_299CFBD00;
  __s1[0] = 0;
  __s1[1] = 0;
  v14[0] = ccsha256_di();
  v14[1] = 0;
  ccdrbg_factory_nisthmac(&fipspost_post_drbg_hmac_info, v14);
  v12[0] = cc_malloc_clear((fipspost_post_drbg_hmac_info + 7) & 0xFFFFFFFFFFFFFFF8);
  v12[1] = (fipspost_post_drbg_hmac_info + 7) >> 3;
  v12[2] = 0;
  v12[3] = cc_ws_alloc;
  v13 = cc_ws_free;
  if (v12[0])
  {
    v2 = cc_ws_alloc(v12, (fipspost_post_drbg_hmac_info + 7) >> 3);
    if ((a1 & 0x10) != 0)
    {
      LOBYTE(__s2[0]) = -36;
    }

    v3 = ccdrbg_init(&fipspost_post_drbg_hmac_info, v2, 32, v23, 16, &v22, 32, v21);
    v4 = ccdrbg_reseed(&fipspost_post_drbg_hmac_info, v2, 32, v20, 32, v19);
    v5 = ccdrbg_generate(&fipspost_post_drbg_hmac_info, v2, 128, __s1, 32, v18);
    v6 = ccdrbg_generate(&fipspost_post_drbg_hmac_info, v2, 128, __s1, 32, v17) | v5 | v4 | v3;
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

    v13(v12);
  }

  else
  {
    v9 = 4294967283;
  }

  v10 = *MEMORY[0x29EDCA608];
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

uint64_t ccmlkem_indcpa_keypair(int16x8_t *a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v34 = *MEMORY[0x29EDCA608];
  v8 = a1->i32[1];
  v9 = v8 << 8;
  v10 = (v8 << 8) * v8;
  v11 = sizeof_struct_ccpolyzp_po2cyc();
  v12 = (v11 - 1 + 2 * v9) / v11;
  v28[0] = cc_malloc_clear(8 * (v12 + (v11 - 1 + 2 * v10) / v11) + 16 * v12);
  v13 = a1->i32[1];
  v14 = sizeof_struct_ccpolyzp_po2cyc();
  v15 = (v14 - 1 + 2 * (v13 << 8)) / v14;
  v28[1] = v15 + (v14 - 1 + 2 * ((v13 << 8) * v13)) / v14 + 2 * v15;
  v29 = 0;
  v30 = cc_ws_alloc;
  v31 = cc_ws_free;
  if (v28[0])
  {
    v16 = cc_ws_alloc(v28, ((v13 * v13) << 6) & 0x3FFFFFC0);
    v17 = v30(v28, (a1->i32[1] & 0xFFFFFFLL) << 6);
    v18 = v30(v28, (a1->i32[1] & 0xFFFFFFLL) << 6);
    v19 = v30(v28, (a1->i32[1] & 0xFFFFFFLL) << 6);
    if (a1->i32[0] == 1)
    {
      ccmlkem_hash_g_append_k(a1, a4, __s);
    }

    else
    {
      ccmlkem_hash_g(32, a4, __s);
    }

    v20 = ccmlkem_sample_matrix(a1, __s, 0, v16);
    if (!v20)
    {
      ccmlkem_polyvec_getnoise(a1, v19, v33, 0);
      ccmlkem_polyvec_getnoise(a1, v17, v33, a1->u8[4]);
      ccmlkem_polyvec_ntt_forward_cbd_eta2(a1, v19);
      ccmlkem_polyvec_reduce(a1, v19);
      ccmlkem_polyvec_ntt_forward_cbd_eta2(a1, v17);
      LODWORD(v21) = a1->i32[1];
      if (v21)
      {
        v22 = 0;
        v23 = 0;
        do
        {
          ccmlkem_polyvec_basemul(a1, v18 + 2 * v22, v16 + 2 * v22 * v21, v19);
          ccmlkem_poly_toplant(v18 + 2 * v22);
          ++v23;
          v21 = a1->u32[1];
          v22 += 256;
        }

        while (v23 < v21);
      }

      ccmlkem_polyvec_add(a1, v18, v18, v17);
      ccmlkem_polyvec_reduce(a1, v18);
      ccmlkem_polyvec_encode(a1, a2, v18);
      v24 = __s[1];
      v25 = (a2 + (384 * a1->i32[1]));
      *v25 = __s[0];
      v25[1] = v24;
      ccmlkem_polyvec_encode(a1, a3, v19);
    }

    v29 = 0;
    cc_clear(0x40uLL, __s);
    v31(v28);
  }

  else
  {
    v20 = 4294967283;
  }

  v26 = *MEMORY[0x29EDCA608];
  return v20;
}

uint64_t ccmlkem_indcpa_decrypt_ws(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, 64);
  v11 = (*(a1 + 24))(a1, 64);
  v12 = (*(a1 + 24))(a1, (*(a2 + 4) & 0xFFFFFFLL) << 6);
  v13 = (*(a1 + 24))(a1, (*(a2 + 4) & 0xFFFFFFLL) << 6);
  v14 = (32 * *(a2 + 12) * *(a2 + 4));
  ccmlkem_polyvec_decompress(a2, v12, a4);
  ccmlkem_poly_decompress(a2, v10, a4 + v14);
  ccmlkem_polyvec_decode(a2, v13, a3);
  ccmlkem_polyvec_ntt_forward(a2, v12);
  ccmlkem_polyvec_basemul(a2, v11, v13, v12);
  ccmlkem_ntt_inverse(v11);
  ccmlkem_poly_sub(v11, v10, v11);
  ccmlkem_poly_reduce(v11);
  result = ccmlkem_poly_compress_d1(a5, v11);
  *(a1 + 16) = v16;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_31()
{
  v2 = *(v0 + 24);
  v3 = (*(v1 + 4) & 0xFFFFFFLL) << 6;
  return v0;
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
  v14 = cczp_mm_power_fast_ws(a1, v11, v9, (a2 + 32 + 16 * v13), a4);
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
  v8[1] = *MEMORY[0x29EDCA608];
  v7 = timingsafe_enable_if_supported();
  v8[0] = a2;
  v6[0] = ccn_n(1uLL, v8);
  v6[1] = 0;
  v6[2] = 1;
  v6[3] = v8;
  ccz_set(a1, v6);
  result = cc_disable_dit_with_sb(&v7);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void *ccspake_transcript_init(uint64_t a1)
{
  v2 = (**(a1 + 8))();

  return ccdigest_init_internal(v2, (a1 + 64));
}

unint64_t *ccspake_transcript_append(uint64_t a1, size_t a2, char *a3)
{
  v10[1] = *MEMORY[0x29EDCA608];
  v10[0] = a2;
  v6 = (**(a1 + 8))(a1, a2);
  result = ccdigest_update_internal(v6, (a1 + 64), 8uLL, v10);
  if (a2)
  {
    v8 = (**(a1 + 8))(result);
    result = ccdigest_update_internal(v8, (a1 + 64), a2, a3);
  }

  v9 = *MEMORY[0x29EDCA608];
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
  v15 = *MEMORY[0x29EDCA608];
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v12 = 4;
  v8 = cczp_bitlen(a2) + 7;
  v9 = *a2;
  ccn_write_uint_padded_internal(v9, a3, v8 >> 3, v13);
  ccn_write_uint_padded_internal(v9, a4, v8 >> 3, v13 + (v8 >> 3));
  result = ccspake_transcript_append(a1, (v8 >> 2) | 1, &v12);
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t *ccspake_transcript_append_scalar(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v6 = (cczp_bitlen(&a2[5 * *a2 + 4]) + 7) >> 3;
  ccn_write_uint_padded_internal(*a2, a3, v6, v9);
  result = ccspake_transcript_append(a1, v6, v9);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ccspake_transcript_finish(uint64_t a1, uint64_t a2)
{
  v4 = (**(a1 + 8))();
  (*(v4 + 56))(v4, a1 + 64, a2);
  v5 = *(v4 + 8) + *(v4 + 16) + 12;

  return cc_clear(v5, (a1 + 64));
}

uint64_t ccrsa_oaep_encode_parameter_ws(uint64_t a1, size_t *a2, uint64_t (**a3)(void, size_t, char *), uint64_t a4, void *a5, size_t a6, const void *a7, size_t a8, char *a9)
{
  v31 = *MEMORY[0x29EDCA608];
  v9 = a4 - 1;
  v10 = *a2;
  if (a4 - 1 > 2 * *a2 && v9 + ~(2 * v10) >= a6)
  {
    v21 = *a3;
    if (v10 > 0xB)
    {
      v12 = v21(a3, *a2, __src);
      if (v12)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v12 = v21(a3, 12, __s);
      __memcpy_chk();
      cc_clear(v10, __s);
      if (v12)
      {
        goto LABEL_4;
      }
    }

    v26 = v9 - v10;
    v22 = (v9 - v10 + 7) >> 3;
    v28 = *(a1 + 16);
    v23 = (*(a1 + 24))(a1, v22);
    v27 = (*(a1 + 24))(a1, v22);
    ccn_zero(v22, v23);
    ccdigest_internal(a2, a8, a9, v23);
    v23[v26 + ~a6] = 1;
    memcpy(&v23[v26 - a6], a7, a6);
    ccmgf_internal(a2, v26, v27, *a2, __src);
    ccn_xor(v22, v23, v23, v27);
    ccmgf_internal(a2, *a2, __s, v26, v23);
    ccn_xor((*a2 + 7) >> 3, __src, __src, __s);
    v24 = ccrsa_block_start(a4, a5, 0);
    memmove((v24 + 1), __src, *a2);
    v25 = ccrsa_block_start(a4, a5, 1);
    *v25 = 0;
    memcpy(&v25[*a2 + 1], v23, v26);
    ccn_swap((a4 + 7) >> 3, a5);
    cc_clear(0x40uLL, __src);
    cc_clear(0x40uLL, __s);
    *(a1 + 16) = v28;
    goto LABEL_4;
  }

  v12 = 4294967273;
LABEL_4:
  v13 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t ccrsa_oaep_encode_parameter_internal(size_t *a1, uint64_t (**a2)(void, size_t, char *), uint64_t a3, void *a4, size_t a5, const void *a6, size_t a7, char *a8)
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

uint64_t ccrsa_oaep_encode_parameter(size_t *a1, uint64_t (**a2)(void, size_t, char *), uint64_t a3, void *a4, size_t a5, const void *a6, size_t a7, char *a8)
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
  __s[48] = *MEMORY[0x29EDCA608];
  v8 = ccshake128_xi();
  ccxof_init(v8, __s);
  ccxof_absorb(v8, __s, a1, a2);
  ccxof_squeeze(v8, __s, a3, a4);
  result = cc_clear(0x178uLL, __s);
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ccshake256(size_t a1, char *a2, size_t a3, char *a4)
{
  __s[44] = *MEMORY[0x29EDCA608];
  v8 = ccshake256_xi();
  ccxof_init(v8, __s);
  ccxof_absorb(v8, __s, a1, a2);
  ccxof_squeeze(v8, __s, a3, a4);
  result = cc_clear(0x158uLL, __s);
  v10 = *MEMORY[0x29EDCA608];
  return result;
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
  v13 = *MEMORY[0x29EDCA608];
  v7 = a1[1];
  v11[0] = *a1;
  v11[1] = v7;
  v11[2] = a1[2];
  ccascon_ascon128a_ref_pad(v11);
  ccascon_ascon128a_ref_finalize(v11, __s, a4);
  if (cc_cmp_safe_internal(a2, a3, __s))
  {
    v8 = 4294967294;
  }

  else
  {
    v8 = 0;
  }

  cc_clear(0x30uLL, v11);
  cc_clear(0x10uLL, __s);
  v9 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t ccec_generate_key_fips(unint64_t *a1, uint64_t (**a2)(void, unint64_t, void *), unint64_t **a3)
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
  if (qword_2A14E6788 != -1)
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
  v22 = *(a1 + 16);
  v11 = (*(a1 + 24))(a1, v8);
  (*(a1 + 24))(a1, v8);
  v12 = (*(a1 + 24))(a1, v8);
  v20 = (*(a1 + 24))(a1, v8);
  v21 = *a3;
  ccn_seti(v8, v10, *(a2 + 12));
  cczp_to_ws(a1, v7);
  cczp_inv_ws(a1, v7);
  cczp_negate(v7, v10, v10);
  ccn_seti(v8, v9, 3);
  cczp_to_ws(a1, v7);
  cczp_inv_ws(a1, v7);
  v13 = *v7;
  cczp_mul_ws(a1, v7);
  cczp_negate(v7, v9, v9);
  cczp_to_ws(a1, v7);
  cczp_sqr_ws(a1, v7);
  cczp_mul_ws(a1, v7);
  cczp_sqr_ws(a1, v7);
  cczp_add_ws(a1, v7);
  v24 = *(a1 + 16);
  v14 = cczp_n(v7);
  v15 = ccn_n(v14, v12) == 0;
  cczp_inv_ws(a1, v7);
  ccn_cond_clear(v14, v15, v12);
  *(a1 + 16) = v24;
  v16 = ccn_n(v8, v12) == 0;
  ccn_seti(v8, a4, 1);
  cczp_to_ws(a1, v7);
  cczp_add_ws(a1, v7);
  ccn_mux(v8, v16, v12, v20, v12);
  cczp_mul_ws(a1, v7);
  cczp_sqr_ws(a1, v7);
  cczp_add_ws(a1, v7);
  cczp_mul_ws(a1, v7);
  v17 = *v7;
  cczp_add_ws(a1, v7);
  cczp_mul_ws(a1, v7);
  cczp_mul_ws(a1, v7);
  cczp_mul_ws(a1, v7);
  v18 = cczp_is_quadratic_residue_ws(a1, v7, v11) & 1;
  ccn_mux(v8, v18, a4, a4, v12);
  cczp_from_ws(a1, v7);
  ccn_mux(v8, v18, v10, v10, v11);
  cczp_sqrt_ws(a1, v7);
  cczp_from_ws(a1, v7);
  cczp_cond_negate(v7, (*v9 ^ v21) & 1, v9, v9);
  ccn_seti(v8, v10, 1);
  *(a1 + 16) = v22;
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

uint64_t fipspost_post_drbg_ctr(char a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((a1 & 0x10) != 0)
  {
    v1 = "\x01tz\xE6\x1F\x3D\xB31R\x9A\x13\xC3\x6D\xC6\xEB\xD2\xEF";
  }

  else
  {
    v1 = "tz\xE6\x1F\x3D\xB31R\x9A\x13\xC3\x6D\xC6\xEB\xD2\xEF";
  }

  v14 = 0;
  v15 = 0;
  v11 = ccaes_ctr_crypt_mode();
  v12 = xmmword_299CFBDB0;
  DWORD2(v12) = 0;
  v13 = fipspost_post_drbg_ctr_df_ctx;
  ccdrbg_factory_nistctr(fipspost_post_drbg_ctr_info, &v11);
  v9[0] = cc_malloc_clear((fipspost_post_drbg_ctr_info[0] + 7) & 0xFFFFFFFFFFFFFFF8);
  v9[1] = (fipspost_post_drbg_ctr_info[0] + 7) >> 3;
  v9[2] = 0;
  v9[3] = cc_ws_alloc;
  v10 = cc_ws_free;
  if (v9[0])
  {
    v2 = cc_ws_alloc(v9, (fipspost_post_drbg_ctr_info[0] + 7) >> 3);
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

    else if (ccdrbg_generate(fipspost_post_drbg_ctr_info, v2, 16, &v14, 0, 0))
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
      if (!ccdrbg_generate(fipspost_post_drbg_ctr_info, v2, 16, &v14, 0, 0))
      {
        if (v14 == 0xED42DA4BEFDD5852 && v15 == 0x87B07451F1579E49)
        {
          v4 = 0;
        }

        else
        {
          v8 = mach_absolute_time();
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: memcmp\n", v8, "fipspost_post_drbg_ctr", 116);
          v4 = 4294967221;
        }

        goto LABEL_19;
      }

      mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccdrbg_generate 2\n");
    }

    v4 = 4294967224;
LABEL_19:
    v10(v9);
    goto LABEL_20;
  }

  v4 = 4294967283;
LABEL_20:
  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t ccz_bitlen(void *a1)
{
  v4 = timingsafe_enable_if_supported();
  v2 = ccn_bitlen_internal(*a1, a1[3]);
  cc_disable_dit_with_sb(&v4);
  return v2;
}

uint64_t ccn_add_ws(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  result = 0;
  if (a2)
  {
    v6 = 0;
    do
    {
      v8 = *a4++;
      v7 = v8;
      v10 = *a5++;
      v9 = v10;
      v11 = __CFADD__(result, v7);
      v12 = result + v7;
      if (v11)
      {
        v6 = 1;
      }

      v11 = __CFADD__(v12, v9);
      v13 = v12 + v9;
      if (v11)
      {
        result = v6 + 1;
      }

      else
      {
        result = v6;
      }

      *a3++ = v13;
      v6 = 0;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t ccn_add(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v20 = timingsafe_enable_if_supported();
  v18[0] = xmmword_2A201C318;
  v18[1] = *algn_2A201C328;
  v19 = off_2A201C338;
  v8 = 0;
  if (a1)
  {
    v9 = 0;
    do
    {
      v11 = *a3++;
      v10 = v11;
      v13 = *a4++;
      v12 = v13;
      v14 = __CFADD__(v8, v10);
      v15 = v8 + v10;
      if (v14)
      {
        v9 = 1;
      }

      v14 = __CFADD__(v15, v12);
      v16 = v15 + v12;
      if (v14)
      {
        v8 = v9 + 1;
      }

      else
      {
        v8 = v9;
      }

      *a2++ = v16;
      v9 = 0;
      --a1;
    }

    while (a1);
  }

  cc_ws_free_null(v18);
  cc_disable_dit_with_sb(&v20);
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
      desfunc3(&v13, a1 + 384);
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
  if (*(a1 + 8) == a4 && (!a3 || a3 == a4))
  {
    v14 = (*a1 + 15) & 0xFFFFFFFFFFFFFFF0;
    v15 = MEMORY[0x2A1C7C4A8](a1);
    v17 = v26 - v16;
    v18 = (*(a1 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x2A1C7C4A8](v15);
    v20 = v26 - v19;
    v23 = (*(a1 + 16))(a1, v17, v22, v21);
    if (v23)
    {
      v13 = v23;
    }

    else
    {
      if (a7)
      {
        memcpy(v20, a7, *(a1 + 8));
      }

      else
      {
        cc_clear(*(a1 + 8), v20);
      }

      v13 = (*(a1 + 24))(v17, v20, a5, a8, a9);
      cc_clear(*a1, v17);
    }
  }

  else
  {
    v13 = 4294967289;
  }

  v24 = *MEMORY[0x29EDCA608];
  return v13;
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
  v23 = *MEMORY[0x29EDCA608];
  v21 = timingsafe_enable_if_supported();
  v14 = cc_malloc_clear(376 * **a1);
  v15 = 47 * **a1;
  v19[0] = v14;
  v19[1] = v15;
  v19[2] = 0;
  v19[3] = cc_ws_alloc;
  v20 = cc_ws_free;
  if (v14)
  {
    ccdigest_internal(a2, a3, a4, v22);
    v16 = ccec_verify_composite_digest_ws(v19, a1, *a2, v22, a5, a6, a7);
    v20(v19);
  }

  else
  {
    v16 = 4294967283;
  }

  cc_disable_dit_with_sb(&v21);
  v17 = *MEMORY[0x29EDCA608];
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

uint64_t ccec_diversify_priv_twin(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (**a5)(void, uint64_t, uint64_t *), unint64_t **a6)
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
      pub_from_priv_ws = ccec_make_pub_from_priv_ws(v26, a1, a5, v24 + 2, 0, a6);
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
  v47[1] = *MEMORY[0x29EDCA608];
  v5 = a1 + 3;
  v6 = *a1;
  v46 = &a1[2 * *a1 + 3];
  v47[0] = 0;
  v45 = &a1[3 * v6 + 3];
  v44 = ccrsa_ctx_private_zp(a1);
  v7 = ccrsa_ctx_private_zp(a1);
  v8 = v7 + 16 * *ccrsa_ctx_private_zp(a1);
  v9 = ccrsa_ctx_private_zp(a1);
  v42 = cczp_n(v9);
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
  v29 = ccder_encode_integer(v42, (v12 + 64), a2, v28);
  v30 = cczp_n(v8 + 32);
  v31 = cczp_prime(v8 + 32);
  v32 = ccder_encode_integer(v30, v31, a2, v29);
  v33 = cczp_n(v44);
  v34 = cczp_prime(v44);
  v35 = ccder_encode_integer(v33, v34, a2, v32);
  v36 = ccder_encode_integer(v6, (v45 + 8), a2, v35);
  v37 = ccder_encode_integer(v6, (v46 + 8), a2, v36);
  v38 = ccder_encode_integer(v6, v5, a2, v37);
  v39 = ccder_encode_integer(1uLL, v47, a2, v38);
  result = ccder_encode_constructed_tl(0x2000000000000010uLL, a3, a2, v39);
  v41 = *MEMORY[0x29EDCA608];
  return result;
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
        ccn_mul1((v13 - 4) >> 6, *(a1 + 24), *(a1 + 24), 0xAuLL);
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

uint64_t ccdes_cbc_cksum(unsigned int *a1, _DWORD *a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v24[1] = *MEMORY[0x29EDCA608];
  v21 = timingsafe_enable_if_supported();
  v24[0] = 0;
  if (ccdes_ltc_setup(0, __s, a5, a4))
  {
    v24[0] = 0xAAAAAAAAAAAAAAAALL;
    v12 = ccrng(0);
    if (v12)
    {
      (*v12)(v12, 8, v24);
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
        LODWORD(v24[0]) = bswap32(v15) ^ v13;
        HIDWORD(v24[0]) = bswap32(v16) ^ v14;
        desfunc(v24, __s);
        v13 = v24[0];
        v14 = HIDWORD(v24[0]);
        a3 -= 8;
      }

      while (a3 > 7);
    }

    if (a3)
    {
      __memcpy_chk();
      cc_clear(8 - a3, v22 + a3);
      LODWORD(v24[0]) = bswap32(v22[0]) ^ v13;
      HIDWORD(v24[0]) = bswap32(v22[1]) ^ v14;
      desfunc(v24, __s);
    }
  }

  if (a2)
  {
    v17 = bswap32(HIDWORD(v24[0]));
    *a2 = bswap32(v24[0]);
    a2[1] = v17;
  }

  LODWORD(v24[0]) = 0;
  cc_clear(0x100uLL, __s);
  v18 = HIDWORD(v24[0]);
  cc_disable_dit_with_sb(&v21);
  v19 = *MEMORY[0x29EDCA608];
  return v18;
}

uint64_t ccz_read_uint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = timingsafe_enable_if_supported();
  ccz_set_sign(a1, 1);
  ccz_set_capacity(a1, (a2 + 7) >> 3);
  ccn_read_uint_internal((a2 + 7) >> 3, *(a1 + 24), a2, a3);
  v6 = ccn_n((a2 + 7) >> 3, *(a1 + 24));
  ccz_set_n(a1, v6);
  return cc_disable_dit_with_sb(&v8);
}

uint64_t ccmlkem_sample_matrix(uint64_t a1, _OWORD *a2, int a3, uint64_t a4)
{
  v31[21] = *MEMORY[0x29EDCA608];
  v27 = 0;
  memset(__s, 0, sizeof(__s));
  if (*(a1 + 4))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = 0;
      do
      {
        cckeccak_init_state(__s);
        v10 = a2[1];
        v28[0] = *a2;
        v28[1] = v10;
        if (a3)
        {
          v29 = v7;
          v11 = v9;
        }

        else
        {
          v29 = v9;
          v11 = v7;
        }

        v30 = v11;
        cckeccak_absorb_and_pad(__s, 168, 0x22uLL, v28, 0x1Fu);
        v12 = (a4 + 2 * ((v9 + *(a1 + 4) * v7) << 8));
        cc_clear(0x200uLL, v12);
        v13 = 0;
        v14 = 0;
        do
        {
          permutation = cckeccak_get_permutation();
          cckeccak_squeeze(__s, 0xA8uLL, 0xA8uLL, v31, permutation);
          v16 = 0;
          v17 = v31 + 2;
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

  cc_clear(0xC8uLL, __s);
  cc_clear(0xA8uLL, v31);
  if (v8 >= (*(a1 + 4) * *(a1 + 4)) << 8)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v24 = *MEMORY[0x29EDCA608];
  return result;
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
    v8 = xmmword_299CF0D80;
    v9 = xmmword_299CF0D90;
    v10 = xmmword_299CF0DA0;
    v11 = xmmword_299CF0DB0;
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
  v36[1] = *MEMORY[0x29EDCA608];
  v12 = *a2;
  v32 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v12);
  v13 = (*(a1 + 24))(a1, v12);
  v33 = 3 * v12;
  v14 = (*(a1 + 24))(a1, 12 * v12);
  v15 = v14 + 48 * v12;
  v34 = v14;
  v16 = v14 + 72 * v12;
  ccec_full_add_ws(a1, a2);
  ccec_full_sub_ws(a1, a2, v16, a5, a7);
  v17 = *a2;
  cczp_mul_ws(a1, a2);
  v18 = *a2;
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  v31 = cczp_inv_ws(a1, a2);
  if (!v31)
  {
    v19 = *a2;
    ccec_twin_mult_normalize_ws(a1, a2);
    v20 = *a2;
    ccec_twin_mult_normalize_ws(a1, a2);
    v21 = *a2;
    ccec_twin_mult_normalize_ws(a1, a2);
    v22 = *a2;
    ccec_twin_mult_normalize_ws(a1, a2);
    ccn_seti(v12, v13, 1);
    v23 = *a2;
    cczp_to_ws(a1, a2);
    ccn_set(v12, (v34 + 24 * v12 + 16 * *a2), (v34 + 16 * *a2));
    ccn_set(v12, (v15 + 16 * *a2), (v34 + 16 * *a2));
    ccn_set(v12, (v16 + 16 * *a2), (v34 + 16 * *a2));
    v24 = ccn_bitlen_internal(v12, a4);
    v25 = ccn_bitlen_internal(v12, a6);
    v35[1] = 0;
    v35[2] = 0;
    if (v24 <= v25)
    {
      v24 = v25;
    }

    v35[0] = 0;
    ccn_recode_jsf_init(v35, v24, a4, a6);
    ccn_set(v12, a3, (v34 + 16 * *a2));
    ccn_set(v12, &a3[8 * *a2], (v34 + 16 * *a2));
    cc_clear(8 * v12, &a3[16 * *a2]);
    for (; v24 != -1; --v24)
    {
      ccec_double_ws(a1, a2);
      ccn_recode_jsf_column(v35, v24, v36);
      if (v36[0])
      {
        v26 = (v34 + 8 * ccn_recode_jsf_index(v36) * v33);
        if (ccn_recode_jsf_direction(v36) == 1)
        {
          ccec_full_add_normalized_ws(a1, a2, a3, a3, v26);
        }

        else
        {
          ccec_full_sub_normalized_ws(a1, a2, a3, a3, v26);
        }
      }
    }
  }

  *(a1 + 16) = v32;
  v27 = *MEMORY[0x29EDCA608];
  return v31;
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
  v6 = *a2;
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
  v9 = a2 + ((2 * *(v8 + 8) + 14) & 0xFFFFFFFFFFFFFFF0) + 16;
  v10 = (*(v8 + 16))();
  (*(a1 + 32))(a1, a2, a5);
  return v10;
}

uint64_t ccec_verify_internal_with_base_ws(uint64_t a1, unint64_t **a2, unint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
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
    __s = (*(a1 + 24))(a1, v16);
    v35 = v20;
    memset(__s, 255, v20);
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
      if (!ccn_sub_ws(a1, v16, v38, v43, v25))
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
            if (ccn_cmp_internal(*v15, v17 + 16 * *v15 + 8 * *v15, v26))
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
              if ((ccn_cmp_internal(v16, v37, v31) & 0x80000000) == 0)
              {
                v32 = cczp_prime(v44);
                ccn_sub_ws(a1, v16, v37, v37, v32);
              }

              if (ccn_cmp_internal(v16, v37, a5))
              {
                v18 = 4294967150;
              }

              else
              {
                v18 = 0;
              }

              ccn_write_uint_padded_ct_internal(v16, a5, v35, v34);
              ccn_write_uint_padded_ct_internal(v16, v37, v35, __s);
              cc_fault_canary_set(v36, &CCEC_FAULT_CANARY, v35, v34, __s);
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

double deskey(uint64_t a1, int a2, _OWORD *a3)
{
  v3 = 0;
  v36 = *MEMORY[0x29EDCA608];
  do
  {
    v28[v3 + 56] = (bytebit[pc1[v3] & 7] & ~*(a1 + (pc1[v3] >> 3))) == 0;
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
    v8 = &v28[4 * v6 + 112];
    *v8 = 0;
    v9 = totrot[i];
    do
    {
      v10 = v9 + v5;
      if ((v9 + v5) >= 0x1C)
      {
        v10 = v9 + v5 - 28;
      }

      v28[v5++] = v28[v10 + 56];
    }

    while (v5 != 28);
    for (j = 0; j != 28; ++j)
    {
      v12 = v9 + j;
      if ((v9 + j + 28) < 0x38)
      {
        v12 = v9 + j + 28;
      }

      v28[j + 28] = v28[v12 + 56];
    }

    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = &pc2;
    do
    {
      if (v28[*v16])
      {
        v15 |= bigbyte[v13];
        *v8 = v15;
      }

      if (v28[v16[24]])
      {
        v14 |= bigbyte[v13];
        *&v28[4 * v7 + 112] = v14;
      }

      ++v16;
      ++v13;
    }

    while (v13 != 24);
  }

  v17 = 0;
  do
  {
    v18 = &v28[v17 + 112];
    v19 = vld1_dup_f32(v18++);
    *&v18 = *v18;
    v20 = vdup_n_s32(v18);
    v21 = vand_s8(vshl_u32(v20, 0xFFFFFFFCFFFFFFFALL), 0x3F000000003FLL);
    v20.i32[0] = v18 >> 10;
    *(v29 + v17) = vorr_s8(vorr_s8(vorr_s8(vand_s8(vshl_u32(v19, 0xC0000000ALL), 0x3F000000003F0000), vand_s8(vshl_u32(v19, 0x1000000006), 0x3F00003F000000)), v21), vand_s8(v20, 0x3F00003F00));
    v17 += 8;
  }

  while (v17 != 128);
  v22 = v33;
  a3[4] = v32;
  a3[5] = v22;
  v23 = v35;
  a3[6] = v34;
  a3[7] = v23;
  v24 = v29[1];
  *a3 = v29[0];
  a3[1] = v24;
  result = *&v30;
  v26 = v31;
  a3[2] = v30;
  a3[3] = v26;
  v27 = *MEMORY[0x29EDCA608];
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