void digest_to_scalar(uint64_t a1, unint64_t *a2, unsigned __int8 *a3, unint64_t a4)
{
  v94[7] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 264);
  v7 = v6;
  v8 = v6;
  if (v6 < 1)
  {
    if (!v6)
    {
LABEL_22:
      v21 = 0;
      goto LABEL_23;
    }

    v9 = *(a1 + 256);
    v10 = *(a1 + 264);
  }

  else
  {
    v9 = *(a1 + 256);
    v10 = *(a1 + 264);
    while (!*(v9 - 8 + 8 * v10))
    {
      v11 = __OFSUB__(v10--, 1);
      if ((v10 < 0) ^ v11 | (v10 == 0))
      {
        goto LABEL_22;
      }
    }
  }

  v12 = v10 - 1;
  v13 = *(v9 + 8 * v12);
  v14 = v13 != 0;
  v15 = HIDWORD(v13) != 0;
  if (HIDWORD(v13))
  {
    v13 >>= 32;
  }

  v16 = v13 >> 16 != 0;
  if (v13 >> 16)
  {
    v13 >>= 16;
  }

  v17 = v13 > 0xFF;
  if (v13 > 0xFF)
  {
    v13 >>= 8;
  }

  v18 = v13 > 0xF;
  if (v13 > 0xF)
  {
    v13 >>= 4;
  }

  v19 = v13 > 3;
  if (v13 > 3)
  {
    v13 >>= 2;
  }

  v20 = v13 > 1;
  v21 = v14 | (v12 << 6) | (32 * v15) | (16 * v16) | (8 * v17) | (4 * v18) | (2 * v19);
  if (v20)
  {
    ++v21;
  }

LABEL_23:
  v22 = v21;
  v23 = (v21 + 7) >> 3;
  if (v23 >= a4)
  {
    v24 = a4;
  }

  else
  {
    v24 = v23;
  }

  if (v24 > 8 * v7)
  {
    abort();
  }

  v25 = v24 - 8;
  if (v24 < 8)
  {
    v27 = a2;
    v26 = v24;
    goto LABEL_41;
  }

  if (v25 <= 0x57)
  {
    v26 = v24;
    v27 = a2;
LABEL_39:
    v38 = v26;
    do
    {
      v26 = v38 - 8;
      *v27++ = bswap64(*&a3[v38 - 8]);
      --v7;
      v38 = v26;
    }

    while (v26 > 7);
    goto LABEL_41;
  }

  v28 = &a3[v24] <= a2 || &a3[v24 & 7] >= a2 + (v24 & 0x3FFFFFF8);
  v26 = v24;
  v27 = a2;
  if (!v28)
  {
    goto LABEL_39;
  }

  v29 = (v25 >> 3) + 1;
  v30 = v29 & 0x3FFFFFFFFFFFFFFCLL;
  v26 = v24 - v30 * 8;
  v27 = &a2[v30];
  v31 = (a2 + 2);
  v32 = &a3[v24 - 16];
  v33 = 0uLL;
  v34 = v7;
  v35.i64[0] = -1;
  v35.i64[1] = -1;
  v36 = v29 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v37 = vrev64q_s8(vextq_s8(v32[-1], v32[-1], 8uLL));
    v31[-1] = vrev64q_s8(vextq_s8(*v32, *v32, 8uLL));
    *v31 = v37;
    v34 = vaddq_s64(v34, v35);
    v33 = vaddq_s64(v33, v35);
    v31 += 2;
    v32 -= 2;
    v36 -= 4;
  }

  while (v36);
  v7 = vaddvq_s64(vpaddq_s64(v34, v33));
  if (v29 != (v29 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_39;
  }

LABEL_41:
  if (v26)
  {
    v39 = 0;
    do
    {
      v40 = *a3++;
      v39 = v40 | (v39 << 8);
      --v26;
    }

    while (v26);
    *v27++ = v39;
    --v7;
  }

  if (8 * v7)
  {
    bzero(v27, 8 * v7);
    v8 = *(a1 + 264);
  }

  if (v22 >= 8 * v24)
  {
LABEL_70:
    if (!v8)
    {
      return;
    }

    v44 = v8;
    v45 = *(a1 + 256);
    if (v8 < 4)
    {
      goto LABEL_72;
    }

    goto LABEL_53;
  }

  if (!v8)
  {
    return;
  }

  v41 = v8 - 1;
  if (v8 != 1)
  {
    v42 = *a2;
    if (v8 >= 5)
    {
      v63 = vdupq_n_s64(v42);
      v43 = v41 & 0xFFFFFFFFFFFFFFFCLL;
      v64 = vdupq_n_s64(v22 & 7 | 0x38);
      v65 = a2 + 2;
      v66 = vnegq_s64(vdupq_n_s64(8 - (v22 & 7)));
      v67 = v41 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v68 = *(v65 - 1);
        v69 = vextq_s8(v63, v68, 8uLL);
        v63 = *(v65 + 1);
        *(v65 - 1) = vorrq_s8(vshlq_u64(v68, v64), vshlq_u64(v69, v66));
        *v65 = vorrq_s8(vshlq_u64(v63, v64), vshlq_u64(vextq_s8(v68, v63, 8uLL), v66));
        v65 += 4;
        v67 -= 4;
      }

      while (v67);
      if (v41 == v43)
      {
        goto LABEL_69;
      }

      v42 = v63.u64[1];
    }

    else
    {
      v43 = 0;
    }

    v70 = ~v43 + v8;
    v71 = &a2[v43 + 1];
    do
    {
      v72 = v42 >> (8 - (v22 & 7u));
      v42 = *v71;
      *(v71 - 1) = (*v71 << (v22 & 7 | 0x38)) | v72;
      ++v71;
      --v70;
    }

    while (v70);
LABEL_69:
    a2[v41] >>= 8 - (v22 & 7u);
    goto LABEL_70;
  }

  *a2 >>= 8 - (v22 & 7u);
  v44 = 1;
  v45 = *(a1 + 256);
  if (v8 < 4)
  {
LABEL_72:
    v46 = 0;
    v47 = v93;
    v48 = v44;
    v49 = a2;
    do
    {
LABEL_73:
      v74 = *v49++;
      v73 = v74;
      v75 = *v45++;
      v28 = v73 >= v75;
      v76 = v73 - v75;
      v77 = !v28;
      v28 = v76 >= v46;
      v78 = v76 - v46;
      if (v28)
      {
        v46 = v77;
      }

      else
      {
        v46 = 1;
      }

      *v47++ = v78;
      --v48;
    }

    while (v48);
    goto LABEL_80;
  }

LABEL_53:
  v46 = 0;
  v47 = v93;
  v48 = v44;
  v49 = a2;
  do
  {
    v50 = v49[1];
    v51 = v45[1];
    v52 = *v49 - *v45;
    v28 = v52 >= v46;
    v53 = v52 - v46;
    v54 = !v28 || *v49 < *v45;
    v28 = __CFSUB__(v50, v51, !v54);
    *v47 = v53;
    v47[1] = v50 - (v51 + v54);
    v55 = v49[2];
    v56 = v49[3];
    v57 = v45[2];
    v58 = v45[3];
    v60 = v28;
    v28 = __CFSUB__(v55, v57, v28);
    v59 = v55 - (v57 + !v60);
    v62 = v28;
    v28 = __CFSUB__(v56, v58, v28);
    v61 = v56 - (v58 + !v62);
    v46 = !v28;
    v47[2] = v59;
    v47[3] = v61;
    v49 += 4;
    v45 += 4;
    v47 += 4;
    v48 -= 4;
  }

  while (v48 >= 4);
  if (v48)
  {
    goto LABEL_73;
  }

LABEL_80:
  v79 = (v46 << 63) >> 63;
  v80 = ~v79;
  if (v44 < 4)
  {
    v81 = 0;
LABEL_85:
    v88 = v44 - v81;
    v89 = v81;
    v90 = &v93[v81];
    v91 = &a2[v89];
    do
    {
      v92 = *v90++;
      *v91 = v92 & v80 | *v91 & v79;
      ++v91;
      --v88;
    }

    while (v88);
    return;
  }

  v81 = v44 & 0xFFFFFFFFFFFFFFFCLL;
  v82 = vdupq_n_s64(v79);
  v83 = vdupq_n_s64(v80);
  v84 = (a2 + 2);
  v85 = v94;
  v86 = v44 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v87 = vorrq_s8(vandq_s8(*v85, v83), vandq_s8(*v84, v82));
    v84[-1] = vorrq_s8(vandq_s8(v85[-1], v83), vandq_s8(v84[-1], v82));
    *v84 = v87;
    v84 += 2;
    v85 += 2;
    v86 -= 4;
  }

  while (v86);
  if (v44 != v81)
  {
    goto LABEL_85;
  }
}

uint64_t ecdsa_sign_impl(uint64_t a1, _DWORD *a2, char *a3, unint64_t *a4, unint64_t a5, unint64_t *a6, uint64_t a7, unsigned __int8 *a8, unint64_t a9)
{
  v74[9] = *MEMORY[0x277D85DE8];
  *a2 = 0;
  v9 = *(a1 + 264);
  if (v9 < 1)
  {
    if (!v9)
    {
LABEL_22:
      v22 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ecdsa/ecdsa.cc.inc";
      v23 = 112;
      v24 = 126;
LABEL_23:
      ERR_put_error(15, 0, v23, v22, v24);
      return 0;
    }

    v10 = *(a1 + 256);
    v11 = *(a1 + 264);
  }

  else
  {
    v10 = *(a1 + 256);
    v11 = *(a1 + 264);
    while (!*(v10 - 8 + 8 * v11))
    {
      v12 = __OFSUB__(v11--, 1);
      if ((v11 < 0) ^ v12 | (v11 == 0))
      {
        goto LABEL_22;
      }
    }
  }

  v13 = v11 - 1;
  v14 = *(v10 + 8 * v13);
  v15 = v14 != 0;
  v16 = HIDWORD(v14) != 0;
  if (HIDWORD(v14))
  {
    v14 >>= 32;
  }

  v17 = v14 >> 16 != 0;
  if (v14 >> 16)
  {
    v14 >>= 16;
  }

  v18 = v14 > 0xFF;
  if (v14 > 0xFF)
  {
    v14 >>= 8;
  }

  v19 = v14 > 0xF;
  if (v14 > 0xF)
  {
    v14 >>= 4;
  }

  v20 = v14 > 3;
  if (v14 > 3)
  {
    v14 >>= 2;
  }

  v21 = v15 | (v13 << 6) | (32 * v16) | (16 * v17) | (8 * v18) | (4 * v19) | (2 * v20);
  if (v14 > 1)
  {
    ++v21;
  }

  if (v21 <= 0x9F)
  {
    goto LABEL_22;
  }

  if (v9 >= 1)
  {
    while (!*(v10 - 8 + 8 * v9))
    {
      v12 = __OFSUB__(v9--, 1);
      if ((v9 < 0) ^ v12 | (v9 == 0))
      {
        v35 = 0;
        goto LABEL_44;
      }
    }
  }

  v26 = v9 - 1;
  v27 = *(v10 + 8 * v26);
  v28 = v27 != 0;
  v29 = HIDWORD(v27) != 0;
  if (HIDWORD(v27))
  {
    v27 >>= 32;
  }

  v30 = v27 >> 16 != 0;
  if (v27 >> 16)
  {
    v27 >>= 16;
  }

  v31 = v27 > 0xFF;
  if (v27 > 0xFF)
  {
    v27 >>= 8;
  }

  v32 = v27 > 0xF;
  if (v27 > 0xF)
  {
    v27 >>= 4;
  }

  v33 = v27 > 3;
  if (v27 > 3)
  {
    v27 >>= 2;
  }

  v34 = v28 | (v26 << 6) | (32 * v29) | (16 * v30) | (8 * v31) | (4 * v32) | (2 * v33);
  if (v27 > 1)
  {
    ++v34;
  }

  v35 = ((v34 + 7) >> 2) & 0x3FFFFFFE;
  if (v35 > a5)
  {
    v22 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ecdsa/ecdsa.cc.inc";
    v23 = 100;
    v24 = 132;
    goto LABEL_23;
  }

LABEL_44:
  if (!a7)
  {
    v22 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc";
    v23 = 67;
    v24 = 785;
    goto LABEL_23;
  }

  (*(*a1 + 40))(a1, v73, a7);
  if (!ec_GFp_simple_is_on_curve(a1, v73))
  {
    v22 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc";
    v23 = 68;
    v24 = 796;
    goto LABEL_23;
  }

  result = ec_get_x_coordinate_as_scalar(a1, &v71, v73);
  if (result)
  {
    v43 = *(a1 + 264);
    if (v43 < 1)
    {
      v47 = 1;
      v44 = a2;
      goto LABEL_59;
    }

    v44 = a2;
    if (v43 > 3)
    {
      v45 = v43 & 0x7FFFFFFC;
      v48 = &v72;
      v49 = 0uLL;
      v50 = v45;
      v51 = 0uLL;
      do
      {
        v49 = vorrq_s8(v48[-1], v49);
        v51 = vorrq_s8(*v48, v51);
        v48 += 2;
        v50 -= 4;
      }

      while (v50);
      v52 = vorrq_s8(v51, v49);
      v46 = vorr_s8(*v52.i8, *&vextq_s8(v52, v52, 8uLL));
      if (v45 == v43)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v45 = 0;
      v46 = 0;
    }

    v53 = v43 - v45;
    v54 = &v71.i64[v45];
    do
    {
      v55 = *v54++;
      *&v46 |= v55;
      --v53;
    }

    while (v53);
LABEL_58:
    v47 = *&v46 == 0;
LABEL_59:
    if (v47)
    {
      result = 0;
      *v44 = 1;
      return result;
    }

    bn_mod_mul_montgomery_small(&v69, &v71, *(a1 + 232), v43, a1 + 232);
    bn_mod_mul_montgomery_small(&v69, a6, &v69, *(a1 + 264), a1 + 232);
    digest_to_scalar(a1, __src, a8, a9);
    bn_mod_add_words(&v69, v69.i64, __src, *(a1 + 256), v74, *(a1 + 264));
    (*(*a1 + 136))(a1, __src, a7);
    bn_from_montgomery_small(__src, *(a1 + 264), __src, *(a1 + 264), a1 + 232);
    bn_mod_mul_montgomery_small(&v69, &v69, __src, *(a1 + 264), a1 + 232);
    v56 = *(a1 + 264);
    if (v56 < 1)
    {
      v59 = 1;
      goto LABEL_71;
    }

    if (v56 > 3)
    {
      v57 = v56 & 0x7FFFFFFC;
      v60 = &v70;
      v61 = 0uLL;
      v62 = v57;
      v63 = 0uLL;
      do
      {
        v61 = vorrq_s8(v60[-1], v61);
        v63 = vorrq_s8(*v60, v63);
        v60 += 2;
        v62 -= 4;
      }

      while (v62);
      v64 = vorrq_s8(v63, v61);
      v58 = vorr_s8(*v64.i8, *&vextq_s8(v64, v64, 8uLL));
      if (v57 == v56)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v57 = 0;
      v58 = 0;
    }

    v65 = v56 - v57;
    v66 = &v69.i64[v57];
    do
    {
      v67 = *v66++;
      *&v58 |= v67;
      --v65;
    }

    while (v65);
LABEL_70:
    v59 = *&v58 == 0;
LABEL_71:
    if (v59)
    {
      result = 0;
      *a2 = 1;
    }

    else
    {
      v74[0] = 0;
      ec_scalar_to_bytes(a1, a3, v74, &v71);
      ec_scalar_to_bytes(a1, &a3[v74[0]], v74, &v69);
      *a4 = v35;
      return 1;
    }
  }

  return result;
}

uint64_t HKDF_expand(uint64_t a1, uint64_t a2, EVP_MD *md, void *key, ENGINE *len, uint64_t a6, uint64_t a7)
{
  v38 = *MEMORY[0x277D85DE8];
  pkey_type = md->pkey_type;
  v8 = pkey_type + a2;
  if (__CFADD__(pkey_type, a2) || (v9 = v8 - 1, v10 = (v8 - 1) / pkey_type, v10 >= 0x100))
  {
    ERR_put_error(31, 0, 100, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/hkdf/hkdf.cc.inc", 73);
    return 0;
  }

  memset(&ctx, 0, 104);
  HMAC_Init_ex(&ctx, key, len, md, len);
  if (!v16)
  {
    v17 = 0;
    v18 = 0;
    engine = ctx.i_ctx.engine;
    if (ctx.i_ctx.engine)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  if (v9 < pkey_type)
  {
    v17 = 1;
    v18 = 1;
    engine = ctx.i_ctx.engine;
    if (ctx.i_ctx.engine)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v20 = 0;
  v21 = 1;
  while (1)
  {
    v36 = v21;
    if (v21 != 1)
    {
      break;
    }

LABEL_16:
    (ctx.md_ctx.digest->init)(&ctx.md_ctx, a6, a7);
    (ctx.md_ctx.digest->init)(&ctx.md_ctx, &v36, 1);
    (ctx.md_ctx.digest->update)(&ctx.md_ctx, &ctx.key[68]);
    v24 = ctx.md_ctx.digest->pkey_type;
    final_high = HIDWORD(ctx.md_ctx.digest->final);
    if (final_high)
    {
      bzero(ctx.md_ctx.engine, final_high);
    }

    EVP_MD_CTX_copy_ex(&ctx.md_ctx, &ctx.o_ctx);
    (ctx.md_ctx.digest->init)(&ctx.md_ctx, &ctx.key[68], v24);
    (ctx.md_ctx.digest->update)(&ctx.md_ctx, &ctx.key[4]);
    v26 = HIDWORD(ctx.md_ctx.digest->final);
    if (v26)
    {
      bzero(ctx.md_ctx.engine, v26);
    }

    if (a2 - v20 >= pkey_type)
    {
      v27 = pkey_type;
    }

    else
    {
      v27 = a2 - v20;
    }

    if (a2 != v20)
    {
      memcpy((a1 + v20), &ctx.key[4], v27);
    }

    v20 += v27;
    if (v10 <= v21++)
    {
      v17 = 1;
      v18 = 1;
      engine = ctx.i_ctx.engine;
      if (ctx.i_ctx.engine)
      {
        goto LABEL_28;
      }

      goto LABEL_31;
    }
  }

  HMAC_Init_ex(&ctx, 0, 0, 0, v15);
  if (v23)
  {
    (ctx.md_ctx.digest->init)(&ctx.md_ctx, &ctx.key[4], pkey_type);
    goto LABEL_16;
  }

  v17 = 0;
  v18 = 0;
  engine = ctx.i_ctx.engine;
  if (!ctx.i_ctx.engine)
  {
    goto LABEL_31;
  }

LABEL_28:
  v29 = *(engine - 1);
  v28 = engine - 8;
  v30 = v29 + 8;
  if (v29 != -8)
  {
    bzero(v28, v30);
  }

  free(v28);
LABEL_31:
  if (ctx.i_ctx.md_data)
  {
    (*ctx.i_ctx.md_data)(ctx.i_ctx.flags);
  }

  memset(&ctx.i_ctx, 0, sizeof(ctx.i_ctx));
  if (ctx.o_ctx.engine)
  {
    v32 = ctx.o_ctx.engine - 8;
    v31 = *(ctx.o_ctx.engine - 1);
    if (v31 != -8)
    {
      bzero(v32, v31 + 8);
    }

    free(v32);
  }

  if (ctx.o_ctx.md_data)
  {
    (*ctx.o_ctx.md_data)(ctx.o_ctx.flags);
  }

  memset(&ctx.o_ctx, 0, sizeof(ctx.o_ctx));
  if (ctx.md_ctx.engine)
  {
    v34 = ctx.md_ctx.engine - 8;
    v33 = *(ctx.md_ctx.engine - 1);
    if (v33 != -8)
    {
      bzero(v34, v33 + 8);
    }

    free(v34);
  }

  if (ctx.md_ctx.md_data)
  {
    (*ctx.md_ctx.md_data)(ctx.md_ctx.flags);
  }

  memset(&ctx, 0, 104);
  if ((v17 & 1) == 0)
  {
    ERR_put_error(31, 0, 28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/hkdf/hkdf.cc.inc", 109);
  }

  return v18;
}

unsigned __int8 *__cdecl HMAC(const EVP_MD *evp_md, const void *key, int key_len, const unsigned __int8 *d, size_t n, unsigned __int8 *md, unsigned int *md_len)
{
  *&varE0.key[60] = *MEMORY[0x277D85DE8];
  memset(&varE0, 0, 104);
  HMAC_Init_ex(&varE0, key, key_len, evp_md, n);
  if (v11)
  {
    (varE0.md_ctx.digest->init)(&varE0.md_ctx, d, n);
    (varE0.md_ctx.digest->update)(&varE0.md_ctx, &varE0.key_length);
    pkey_type = varE0.md_ctx.digest->pkey_type;
    final_high = HIDWORD(varE0.md_ctx.digest->final);
    if (final_high)
    {
      bzero(varE0.md_ctx.engine, final_high);
    }

    v14 = EVP_MD_CTX_copy_ex(&varE0.md_ctx, &varE0.o_ctx);
    if (v14)
    {
      (varE0.md_ctx.digest->init)(&varE0.md_ctx, &varE0.key_length, pkey_type);
      (varE0.md_ctx.digest->update)(&varE0.md_ctx, md);
      digest = varE0.md_ctx.digest;
      if (md_len)
      {
        *md_len = varE0.md_ctx.digest->pkey_type;
      }

      v16 = HIDWORD(digest->final);
      if (v16)
      {
        bzero(varE0.md_ctx.engine, v16);
      }

      engine = varE0.i_ctx.engine;
      if (!varE0.i_ctx.engine)
      {
LABEL_10:
        md_data = varE0.i_ctx.md_data;
        if (!varE0.i_ctx.md_data)
        {
LABEL_12:
          memset(&varE0.i_ctx, 0, sizeof(varE0.i_ctx));
          if (varE0.o_ctx.engine)
          {
            v20 = varE0.o_ctx.engine - 8;
            v19 = *(varE0.o_ctx.engine - 1);
            if (v19 != -8)
            {
              bzero(v20, v19 + 8);
            }

            free(v20);
          }

          if (varE0.o_ctx.md_data)
          {
            (*varE0.o_ctx.md_data)(varE0.o_ctx.flags);
          }

          memset(&varE0.o_ctx, 0, sizeof(varE0.o_ctx));
          if (varE0.md_ctx.engine)
          {
            v22 = varE0.md_ctx.engine - 8;
            v21 = *(varE0.md_ctx.engine - 1);
            if (v21 != -8)
            {
              bzero(v22, v21 + 8);
            }

            free(v22);
          }

          if (varE0.md_ctx.md_data)
          {
            (*varE0.md_ctx.md_data)(varE0.md_ctx.flags);
          }

          if (v14)
          {
            return md;
          }

          else
          {
            return 0;
          }
        }

LABEL_11:
        (*md_data)(varE0.i_ctx.flags);
        goto LABEL_12;
      }
    }

    else
    {
      *md_len = 0;
      engine = varE0.i_ctx.engine;
      if (!varE0.i_ctx.engine)
      {
        goto LABEL_10;
      }
    }

    v31 = *(engine - 1);
    v30 = engine - 8;
    v32 = v31 + 8;
    if (v31 != -8)
    {
      bzero(v30, v32);
    }

    free(v30);
    md_data = varE0.i_ctx.md_data;
    if (!varE0.i_ctx.md_data)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (varE0.i_ctx.engine)
  {
    v25 = varE0.i_ctx.engine - 8;
    v24 = *(varE0.i_ctx.engine - 1);
    if (v24 != -8)
    {
      bzero(v25, v24 + 8);
    }

    free(v25);
  }

  if (varE0.i_ctx.md_data)
  {
    (*varE0.i_ctx.md_data)(varE0.i_ctx.flags);
  }

  memset(&varE0.i_ctx, 0, sizeof(varE0.i_ctx));
  if (varE0.o_ctx.engine)
  {
    v27 = varE0.o_ctx.engine - 8;
    v26 = *(varE0.o_ctx.engine - 1);
    if (v26 != -8)
    {
      bzero(v27, v26 + 8);
    }

    free(v27);
  }

  if (varE0.o_ctx.md_data)
  {
    (*varE0.o_ctx.md_data)(varE0.o_ctx.flags);
  }

  memset(&varE0.o_ctx, 0, sizeof(varE0.o_ctx));
  if (varE0.md_ctx.engine)
  {
    v29 = varE0.md_ctx.engine - 8;
    v28 = *(varE0.md_ctx.engine - 1);
    if (v28 != -8)
    {
      bzero(v29, v28 + 8);
    }

    free(v29);
  }

  if (varE0.md_ctx.md_data)
  {
    (*varE0.md_ctx.md_data)(varE0.md_ctx.flags);
  }

  return 0;
}

void HMAC_Init_ex(HMAC_CTX *ctx, const void *key, int len, const EVP_MD *md, ENGINE *impl)
{
  v5 = *&len;
  v69[14] = *MEMORY[0x277D85DE8];
  if (md)
  {
    v7 = md;
  }

  else
  {
    v7 = ctx->md;
  }

  if (!key && v7 == ctx->md)
  {
    goto LABEL_63;
  }

  final_low = LODWORD(v7->final);
  if (final_low >= *&len)
  {
    if (*&len)
    {
      memcpy(__dst, key, *&len);
    }
  }

  else
  {
    p_md_ctx = &ctx->md_ctx;
    digest = ctx->md_ctx.digest;
    if (digest != v7)
    {
      final_high = HIDWORD(v7->final);
      v13 = malloc_type_malloc(final_high + 8, 0xB4E622C9uLL);
      if (!v13)
      {
        goto LABEL_64;
      }

      *v13 = final_high;
      v14 = (v13 + 1);
      engine = ctx->md_ctx.engine;
      if (engine)
      {
        v17 = *(engine - 1);
        v16 = engine - 8;
        v18 = v17 + 8;
        if (v17 != -8)
        {
          bzero(v16, v18);
        }

        free(v16);
      }

      ctx->md_ctx.digest = v7;
      ctx->md_ctx.engine = v14;
      digest = v7;
    }

    (digest->flags)(&ctx->md_ctx);
    (p_md_ctx->digest->init)(&ctx->md_ctx, key, v5);
    (p_md_ctx->digest->update)(&ctx->md_ctx, __dst);
    LODWORD(v5) = p_md_ctx->digest->pkey_type;
    v19 = HIDWORD(p_md_ctx->digest->final);
    if (v19)
    {
      bzero(ctx->md_ctx.engine, v19);
    }
  }

  if (final_low != v5)
  {
    bzero(&__dst[v5], final_low - v5);
  }

  if (final_low)
  {
    if (final_low < 8)
    {
      v20 = 0;
      goto LABEL_32;
    }

    if (final_low >= 0x20)
    {
      v20 = final_low & 0xFFFFFFE0;
      v21 = v67;
      v22 = v69;
      v23.i64[0] = 0x3636363636363636;
      v23.i64[1] = 0x3636363636363636;
      v24 = v20;
      do
      {
        v25 = veorq_s8(*v21, v23);
        v22[-1] = veorq_s8(v21[-1], v23);
        *v22 = v25;
        v21 += 2;
        v22 += 2;
        v24 -= 32;
      }

      while (v24);
      if (v20 == final_low)
      {
        goto LABEL_34;
      }

      if ((final_low & 0x18) == 0)
      {
LABEL_32:
        v31 = final_low - v20;
        v32 = &v68[v20];
        v33 = &__dst[v20];
        do
        {
          v34 = *v33++;
          *v32++ = v34 ^ 0x36;
          --v31;
        }

        while (v31);
        goto LABEL_34;
      }
    }

    else
    {
      v20 = 0;
    }

    v26 = v20;
    v20 = final_low & 0xFFFFFFF8;
    v27 = &__dst[v26];
    v28 = &v68[v26];
    v29 = v26 - v20;
    do
    {
      v30 = *v27++;
      *v28++ = veor_s8(v30, 0x3636363636363636);
      v29 += 8;
    }

    while (v29);
    if (v20 != final_low)
    {
      goto LABEL_32;
    }
  }

LABEL_34:
  v35 = ctx->i_ctx.digest;
  if (v35 != v7)
  {
    v36 = HIDWORD(v7->final);
    v37 = malloc_type_malloc(v36 + 8, 0xB4E622C9uLL);
    if (!v37)
    {
      goto LABEL_64;
    }

    *v37 = v36;
    v38 = (v37 + 1);
    v39 = ctx->i_ctx.engine;
    if (v39)
    {
      v41 = *(v39 - 1);
      v40 = v39 - 8;
      v42 = v41 + 8;
      if (v41 != -8)
      {
        bzero(v40, v42);
      }

      free(v40);
    }

    ctx->i_ctx.digest = v7;
    ctx->i_ctx.engine = v38;
    v35 = v7;
  }

  (v35->flags)(&ctx->i_ctx);
  (ctx->i_ctx.digest->init)(&ctx->i_ctx, v68, final_low);
  if (!final_low)
  {
    goto LABEL_55;
  }

  if (final_low >= 8)
  {
    if (final_low >= 0x20)
    {
      v43 = final_low & 0xFFFFFFE0;
      v44 = v67;
      v45 = v69;
      v46.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
      v46.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
      v47 = v43;
      do
      {
        v48 = veorq_s8(*v44, v46);
        v45[-1] = veorq_s8(v44[-1], v46);
        *v45 = v48;
        v44 += 2;
        v45 += 2;
        v47 -= 32;
      }

      while (v47);
      if (v43 == final_low)
      {
        goto LABEL_55;
      }

      if ((final_low & 0x18) == 0)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v43 = 0;
    }

    v49 = v43;
    v43 = final_low & 0xFFFFFFF8;
    v50 = &__dst[v49];
    v51 = &v68[v49];
    v52 = v49 - v43;
    do
    {
      v53 = *v50++;
      *v51++ = veor_s8(v53, 0x5C5C5C5C5C5C5C5CLL);
      v52 += 8;
    }

    while (v52);
    if (v43 == final_low)
    {
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  v43 = 0;
LABEL_53:
  v54 = final_low - v43;
  v55 = &v68[v43];
  v56 = &__dst[v43];
  do
  {
    v57 = *v56++;
    *v55++ = v57 ^ 0x5C;
    --v54;
  }

  while (v54);
LABEL_55:
  v58 = ctx->o_ctx.digest;
  if (v58 == v7)
  {
LABEL_62:
    (v58->flags)(&ctx->o_ctx);
    (ctx->o_ctx.digest->init)(&ctx->o_ctx, v68, final_low);
    ctx->md = v7;
LABEL_63:
    EVP_MD_CTX_copy_ex(&ctx->md_ctx, &ctx->i_ctx);
    return;
  }

  v59 = HIDWORD(v7->final);
  v60 = malloc_type_malloc(v59 + 8, 0xB4E622C9uLL);
  if (v60)
  {
    *v60 = v59;
    v61 = (v60 + 1);
    v62 = ctx->o_ctx.engine;
    if (v62)
    {
      v64 = *(v62 - 1);
      v63 = v62 - 8;
      v65 = v64 + 8;
      if (v64 != -8)
      {
        bzero(v63, v65);
      }

      free(v63);
    }

    ctx->o_ctx.digest = v7;
    ctx->o_ctx.engine = v61;
    v58 = v7;
    goto LABEL_62;
  }

LABEL_64:
  ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
}

void HMAC_Final(HMAC_CTX *ctx, unsigned __int8 *md, unsigned int *len)
{
  v12 = *MEMORY[0x277D85DE8];
  p_md_ctx = &ctx->md_ctx;
  (ctx->md_ctx.digest->update)(&ctx->md_ctx, v11);
  pkey_type = p_md_ctx->digest->pkey_type;
  final_high = HIDWORD(p_md_ctx->digest->final);
  if (final_high)
  {
    bzero(ctx->md_ctx.engine, final_high);
  }

  if (EVP_MD_CTX_copy_ex(p_md_ctx, &ctx->o_ctx))
  {
    (p_md_ctx->digest->init)(p_md_ctx, v11, pkey_type);
    (p_md_ctx->digest->update)(p_md_ctx, md);
    digest = p_md_ctx->digest;
    if (len)
    {
      *len = digest->pkey_type;
    }

    v10 = HIDWORD(digest->final);
    if (v10)
    {
      bzero(ctx->md_ctx.engine, v10);
    }
  }

  else
  {
    *len = 0;
  }
}

void HMAC_CTX_cleanup(HMAC_CTX *ctx)
{
  engine = ctx->i_ctx.engine;
  if (engine)
  {
    v4 = *(engine - 1);
    v3 = engine - 8;
    v5 = v4 + 8;
    if (v4 != -8)
    {
      bzero(v3, v5);
    }

    free(v3);
  }

  md_data = ctx->i_ctx.md_data;
  if (md_data)
  {
    (*md_data)(ctx->i_ctx.flags);
  }

  *&ctx->i_ctx.flags = 0u;
  *&ctx->i_ctx.digest = 0u;
  v7 = ctx->o_ctx.engine;
  if (v7)
  {
    v9 = *(v7 - 1);
    v8 = v7 - 8;
    v10 = v9 + 8;
    if (v9 != -8)
    {
      bzero(v8, v10);
    }

    free(v8);
  }

  v11 = ctx->o_ctx.md_data;
  if (v11)
  {
    (*v11)(ctx->o_ctx.flags);
  }

  *&ctx->o_ctx.flags = 0u;
  *&ctx->o_ctx.digest = 0u;
  v12 = ctx->md_ctx.engine;
  if (v12)
  {
    v14 = *(v12 - 1);
    v13 = v12 - 8;
    v15 = v14 + 8;
    if (v14 != -8)
    {
      bzero(v13, v15);
    }

    free(v13);
  }

  v16 = ctx->md_ctx.md_data;
  if (v16)
  {
    (*v16)(ctx->md_ctx.flags);
  }

  ctx->o_ctx.md_data = 0;
  *&ctx->i_ctx.md_data = 0u;
  *&ctx->o_ctx.engine = 0u;
  *&ctx->md_ctx.md_data = 0u;
  *&ctx->i_ctx.engine = 0u;
  *&ctx->md = 0u;
  *&ctx->md_ctx.engine = 0u;
}

void HMAC_CTX_free(char *a1)
{
  if (a1)
  {
    v2 = *(a1 + 6);
    if (v2)
    {
      v4 = *(v2 - 8);
      v3 = (v2 - 8);
      v5 = v4 + 8;
      if (v4 != -8)
      {
        bzero(v3, v5);
      }

      free(v3);
    }

    v6 = *(a1 + 8);
    if (v6)
    {
      (*v6)(*(a1 + 7));
    }

    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    v7 = *(a1 + 10);
    if (v7)
    {
      v9 = *(v7 - 8);
      v8 = (v7 - 8);
      v10 = v9 + 8;
      if (v9 != -8)
      {
        bzero(v8, v10);
      }

      free(v8);
    }

    v11 = *(a1 + 12);
    if (v11)
    {
      (*v11)(*(a1 + 11));
    }

    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    v12 = *(a1 + 2);
    if (v12)
    {
      v14 = *(v12 - 8);
      v13 = (v12 - 8);
      v15 = v14 + 8;
      if (v14 != -8)
      {
        bzero(v13, v15);
      }

      free(v13);
    }

    v16 = *(a1 + 4);
    if (v16)
    {
      (*v16)(*(a1 + 3));
    }

    v17 = *(a1 - 1);
    *(a1 + 12) = 0;
    *(a1 + 4) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    if (v17 != -8)
    {
      bzero(a1 - 8, v17 + 8);
    }

    free(a1 - 8);
  }
}

unint64_t BORINGSSL_keccak_absorb(unint64_t result, char *a2, unint64_t a3)
{
  if (*(result + 4) == 1)
  {
    abort();
  }

  v3 = a3;
  v4 = a2;
  v5 = result;
  v6 = (result + 16);
  v8 = *(result + 216);
  v7 = *(result + 224);
  if (!v7)
  {
    if (a3 < v8)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v9 = v8 - v7;
  if (v8 - v7 >= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = v8 - v7;
  }

  if (v10)
  {
    v11 = a2;
    v12 = result + 16;
    do
    {
      v13 = *v11++;
      *(v12 + *(result + 224)) ^= v13;
      ++v12;
      --v10;
    }

    while (v10);
  }

  v14 = a3 - v9;
  if (a3 < v9)
  {
    v3 = *(result + 224) + a3;
    goto LABEL_49;
  }

  result = keccak_f((result + 16));
  v4 += v9;
  v3 -= v9;
  if (v14 >= v5[13].i64[1])
  {
LABEL_14:
    if (v8 <= 7)
    {
      do
      {
        result = keccak_f(v6);
        v15 = v5[13].u64[1];
        v4 += v15;
        v3 -= v15;
      }

      while (v3 >= v15);
      goto LABEL_16;
    }

    v18 = v8 >> 3;
    do
    {
      if (v8 >= 0x20 && (v6 >= v4 + (v8 & 0xFFFFFFFFFFFFFFF8) || v4 >= v5[1].u64 + (v8 & 0xFFFFFFFFFFFFFFF8)))
      {
        v26 = (v4 + 16);
        v27 = (v8 >> 3) & 0x1FFFFFFFFFFFFFFCLL;
        v28 = v5 + 2;
        do
        {
          v29 = veorq_s8(*v28, *v26);
          v28[-1] = veorq_s8(v28[-1], v26[-1]);
          *v28 = v29;
          v26 += 2;
          v28 += 2;
          v27 -= 4;
        }

        while (v27);
        v20 = (v8 >> 3) & 0x1FFFFFFFFFFFFFFCLL;
        if (v18 == v20)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v20 = 0;
      }

      v21 = v18 - v20;
      v22 = 8 * v20;
      v23 = &v5[1].i64[v20];
      v24 = (v4 + v22);
      do
      {
        v25 = *v24++;
        *v23++ ^= v25;
        --v21;
      }

      while (v21);
LABEL_27:
      result = keccak_f(v6);
      v19 = v5[13].u64[1];
      v4 += v19;
      v3 -= v19;
    }

    while (v3 >= v19);
  }

LABEL_16:
  if (!v3)
  {
    goto LABEL_49;
  }

  if (v3 < 8 || (v6 < v4 + v3 ? (v16 = v4 >= v5[1].u64 + v3) : (v16 = 1), !v16))
  {
    v17 = 0;
    goto LABEL_47;
  }

  if (v3 < 0x20)
  {
    v17 = 0;
    goto LABEL_43;
  }

  v17 = v3 & 0xFFFFFFFFFFFFFFE0;
  v30 = (v4 + 16);
  v31 = v5 + 2;
  v32 = v3 & 0xFFFFFFFFFFFFFFE0;
  do
  {
    v33 = veorq_s8(*v31, *v30);
    v31[-1] = veorq_s8(v31[-1], v30[-1]);
    *v31 = v33;
    v30 += 2;
    v31 += 2;
    v32 -= 32;
  }

  while (v32);
  if (v3 == v17)
  {
    goto LABEL_49;
  }

  if ((v3 & 0x18) != 0)
  {
LABEL_43:
    v34 = v17;
    v17 = v3 & 0xFFFFFFFFFFFFFFF8;
    v35 = (v4 + v34);
    v36 = &v5[1].i8[v34];
    v37 = v34 - (v3 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v38 = *v35++;
      *v36 = veor_s8(*v36, v38);
      ++v36;
      v37 += 8;
    }

    while (v37);
    goto LABEL_48;
  }

  do
  {
LABEL_47:
    *(v6 + v17) ^= *(v4 + v17);
    ++v17;
LABEL_48:
    ;
  }

  while (v3 != v17);
LABEL_49:
  v5[14].i64[0] = v3;
  return result;
}

int *BORINGSSL_keccak_squeeze(int *result, char *__dst, size_t a3)
{
  v3 = a3;
  v5 = result;
  v6 = *(result + 1);
  v7 = result[1];
  if (v6)
  {
    if (v6 != a3 || v7 == 1)
    {
      goto LABEL_24;
    }
  }

  if (v7)
  {
    goto LABEL_9;
  }

  v9 = *result;
  if (*result >= 4)
  {
LABEL_24:
    abort();
  }

  v10 = (result + 4);
  *(v10 + *(v5 + 224)) = *(v5 + 16 + *(v5 + 224)) ^ (0x1F1F0606u >> (8 * v9));
  *(v5 + 16 + *(v5 + 216) - 1) ^= 0x80u;
  result = keccak_f(v10);
  *(v5 + 4) = 1;
LABEL_9:
  if (v3)
  {
    v11 = *(v5 + 232);
    do
    {
      v12 = *(v5 + 216);
      if (v11 == v12)
      {
        result = keccak_f((v5 + 16));
        v11 = 0;
        *(v5 + 232) = 0;
        v14 = *(v5 + 216);
        if (v3 >= v14)
        {
          v13 = *(v5 + 216);
        }

        else
        {
          v13 = v3;
        }

        if (!v14)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (v3 >= v12 - v11)
        {
          v13 = v12 - v11;
        }

        else
        {
          v13 = v3;
        }

        if (v12 == v11)
        {
          goto LABEL_11;
        }
      }

      result = memcpy(__dst, (v5 + 16 + v11), v13);
      v11 = *(v5 + 232);
LABEL_11:
      __dst += v13;
      v11 += v13;
      *(v5 + 232) = v11;
      v3 -= v13;
    }

    while (v3);
  }

  return result;
}

unint64_t keccak_f(unint64_t *a1)
{
  v1 = 0;
  v3 = a1[10];
  v2 = a1[11];
  v4 = a1[20];
  v5 = a1[21];
  v7 = a1[16];
  v6 = a1[17];
  v8 = a1[12];
  v10 = a1[22];
  v9 = a1[23];
  v12 = a1[14];
  v11 = a1[15];
  v14 = a1[18];
  v13 = a1[19];
  v15 = a1[24];
  v16 = *a1;
  v79 = a1[1];
  v80 = a1[13];
  v17 = a1[6];
  v18 = a1[7];
  v19 = a1[2];
  v20 = a1[3];
  v22 = a1[8];
  v21 = a1[9];
  v23 = a1[4];
  v24 = a1[5];
  do
  {
    v70 = v19;
    v71 = v12;
    v72 = v16;
    v74 = v17;
    v75 = v10;
    v76 = v4;
    v78 = v1;
    v25 = v4 ^ v24 ^ v11 ^ v3 ^ v16;
    v26 = v79 ^ v17 ^ v5 ^ v7 ^ v2;
    v27 = v19 ^ v18 ^ v10 ^ v6 ^ v8;
    v28 = v14 ^ v9 ^ v80 ^ v22 ^ v20;
    v73 = v21;
    v29 = v13 ^ v15 ^ v12 ^ v21 ^ v23;
    v30 = v29 ^ __ROR8__(v26, 63);
    v31 = v27 ^ __ROR8__(v29, 63);
    v32 = v25 ^ __ROR8__(v27, 63);
    v33 = v26 ^ __ROR8__(v28, 63);
    v34 = v8;
    v35 = v28 ^ __ROR8__(v25, 63);
    v36 = v30 ^ v24;
    v37 = v32 ^ v2;
    v38 = v32 ^ v7;
    v39 = v32 ^ v5;
    v40 = v31 ^ v14;
    v41 = __ROR8__(v32 ^ v79, 63);
    v42 = __ROR8__(v30 ^ v3, 61);
    v43 = __ROR8__(v33 ^ v18, 58);
    v44 = __ROR8__(v37, 54);
    v45 = __ROR8__(v33 ^ v6, 49);
    v46 = __ROR8__(v40, 43);
    v47 = __ROR8__(v31 ^ v20, 36);
    v48 = __ROR8__(v36, 28);
    v49 = __ROR8__(v38, 19);
    v50 = __ROR8__(v31 ^ v22, 9);
    v51 = __ROR8__(v39, 62);
    v52 = __ROR8__(v35 ^ v15, 50);
    v53 = __ROR8__(v35 ^ v23, 37);
    v54 = __ROR8__(v30 ^ v11, 23);
    v55 = __ROR8__(v31 ^ v9, 8);
    v56 = __ROR8__(v35 ^ v13, 56);
    v57 = __ROR8__(v31 ^ v80, 39);
    v58 = __ROR8__(v33 ^ v34, 21);
    v59 = __ROR8__(v33 ^ v70, 2);
    v60 = __ROR8__(v30 ^ v76, 46);
    v61 = __ROR8__(v35 ^ v71, 25);
    v62 = __ROR8__(v33 ^ v75, 3);
    v63 = __ROR8__(v35 ^ v73, 44);
    v64 = __ROR8__(v32 ^ v74, 20);
    result = v30 ^ v72;
    v77 = v58 & ~v64;
    v66 = v64 ^ v46 & ~v58;
    v19 = v52 & ~v46 ^ v58;
    v20 = result & ~v52 ^ v46;
    v23 = v52 ^ v64 & ~result;
    v67 = v49 & ~v42;
    v22 = v49 ^ v47 & ~v62;
    v18 = v62 & ~v49 ^ v42;
    v24 = v42 & ~v63 ^ v47;
    v17 = v67 ^ v63;
    v21 = v63 & ~v47 ^ v62;
    v79 = v66;
    v80 = v41 & ~v60 ^ v56;
    v8 = v60 & ~v56 ^ v57;
    v3 = v41 ^ v57 & ~v43;
    v2 = v56 & ~v57 ^ v43;
    v12 = v43 & ~v41 ^ v60;
    v68 = v45 & ~v44;
    v14 = v53 & ~v55 ^ v45;
    v6 = v44 ^ v55 & ~v45;
    v11 = v44 & ~v48 ^ v53;
    v7 = v68 ^ v48;
    v13 = v48 & ~v53 ^ v55;
    v9 = v59 & ~v51 ^ v54;
    v10 = v51 & ~v54 ^ v61;
    v4 = v61 & ~v50 ^ v59;
    v5 = v54 & ~v61 ^ v50;
    v15 = v51 ^ v50 & ~v59;
    v16 = *(&keccak_f(unsigned long long *)::kRoundConstants + v78) ^ result ^ v77;
    v1 = v78 + 8;
  }

  while (v78 != 184);
  a1[6] = v17;
  a1[7] = v18;
  a1[2] = v19;
  a1[3] = v20;
  a1[4] = v23;
  a1[5] = v24;
  *a1 = v16;
  a1[1] = v79;
  a1[8] = v22;
  a1[9] = v21;
  a1[18] = v14;
  a1[19] = v13;
  a1[23] = v9;
  a1[24] = v15;
  a1[16] = v7;
  a1[17] = v6;
  a1[20] = v4;
  a1[21] = v5;
  a1[22] = v10;
  a1[10] = v3;
  a1[11] = v2;
  a1[12] = v8;
  a1[13] = v80;
  a1[14] = v12;
  a1[15] = v11;
  return result;
}

int *mlkem::anonymous namespace::mlkem_decap_no_self_test<3>(int8x16_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v1022 = *MEMORY[0x277D85DE8];
  v6 = vdupq_n_s16(0xD01u);
  v7 = vmull_u16(*v891.i8, *v6.i8);
  v8 = vmull_high_u16(v891, v6);
  v9 = vmull_u16(*v892.i8, *v6.i8);
  v10 = vmull_high_u16(v892, v6);
  v11.i64[0] = 0x100000001;
  v11.i64[1] = 0x100000001;
  v891 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v7, 9uLL), v11), v7, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v8, 9uLL), v11), v8, 0xAuLL));
  v892 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v9, 9uLL), v11), v9, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v10, 9uLL), v11), v10, 0xAuLL));
  v12 = vmull_u16(*v893.i8, *v6.i8);
  v13 = vmull_high_u16(v893, v6);
  v14 = vmull_u16(*v894.i8, *v6.i8);
  v15 = vmull_high_u16(v894, v6);
  v893 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v12, 9uLL), v11), v12, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v13, 9uLL), v11), v13, 0xAuLL));
  v894 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v14, 9uLL), v11), v14, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v15, 9uLL), v11), v15, 0xAuLL));
  v16 = vmull_u16(*v895.i8, *v6.i8);
  v17 = vmull_high_u16(v895, v6);
  v18 = vmull_u16(*v896.i8, *v6.i8);
  v19 = vmull_high_u16(v896, v6);
  v895 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v16, 9uLL), v11), v16, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v17, 9uLL), v11), v17, 0xAuLL));
  v896 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v18, 9uLL), v11), v18, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v19, 9uLL), v11), v19, 0xAuLL));
  v20 = vmull_u16(*v897.i8, *v6.i8);
  v21 = vmull_high_u16(v897, v6);
  v22 = vmull_u16(*v898.i8, *v6.i8);
  v23 = vmull_high_u16(v898, v6);
  v897 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v20, 9uLL), v11), v20, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v21, 9uLL), v11), v21, 0xAuLL));
  v898 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v22, 9uLL), v11), v22, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v23, 9uLL), v11), v23, 0xAuLL));
  v24 = vmull_u16(*v899.i8, *v6.i8);
  v25 = vmull_high_u16(v899, v6);
  v26 = vmull_u16(*v900.i8, *v6.i8);
  v27 = vmull_high_u16(v900, v6);
  v899 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v24, 9uLL), v11), v24, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v25, 9uLL), v11), v25, 0xAuLL));
  v900 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v26, 9uLL), v11), v26, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v27, 9uLL), v11), v27, 0xAuLL));
  v28 = vmull_u16(*v901.i8, *v6.i8);
  v29 = vmull_high_u16(v901, v6);
  v30 = vmull_u16(*v902.i8, *v6.i8);
  v31 = vmull_high_u16(v902, v6);
  v901 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v28, 9uLL), v11), v28, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v29, 9uLL), v11), v29, 0xAuLL));
  v902 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v30, 9uLL), v11), v30, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v31, 9uLL), v11), v31, 0xAuLL));
  v32 = vmull_u16(*v903.i8, *v6.i8);
  v33 = vmull_high_u16(v903, v6);
  v34 = vmull_u16(*v904.i8, *v6.i8);
  v35 = vmull_high_u16(v904, v6);
  v903 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v32, 9uLL), v11), v32, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v33, 9uLL), v11), v33, 0xAuLL));
  v904 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v34, 9uLL), v11), v34, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v35, 9uLL), v11), v35, 0xAuLL));
  v36 = vmull_u16(*v905.i8, *v6.i8);
  v37 = vmull_high_u16(v905, v6);
  v38 = vmull_u16(*v906.i8, *v6.i8);
  v39 = vmull_high_u16(v906, v6);
  v905 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v36, 9uLL), v11), v36, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v37, 9uLL), v11), v37, 0xAuLL));
  v906 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v38, 9uLL), v11), v38, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v39, 9uLL), v11), v39, 0xAuLL));
  v40 = vmull_u16(*v907.i8, *v6.i8);
  v41 = vmull_high_u16(v907, v6);
  v42 = vmull_u16(*v908.i8, *v6.i8);
  v43 = vmull_high_u16(v908, v6);
  v907 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v40, 9uLL), v11), v40, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v41, 9uLL), v11), v41, 0xAuLL));
  v908 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v42, 9uLL), v11), v42, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v43, 9uLL), v11), v43, 0xAuLL));
  v44 = vmull_u16(*v909.i8, *v6.i8);
  v45 = vmull_high_u16(v909, v6);
  v46 = vmull_u16(*v910.i8, *v6.i8);
  v47 = vmull_high_u16(v910, v6);
  v909 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v44, 9uLL), v11), v44, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v45, 9uLL), v11), v45, 0xAuLL));
  v910 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v46, 9uLL), v11), v46, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v47, 9uLL), v11), v47, 0xAuLL));
  v48 = vmull_u16(*v911.i8, *v6.i8);
  v49 = vmull_high_u16(v911, v6);
  v50 = vmull_u16(*v912.i8, *v6.i8);
  v51 = vmull_high_u16(v912, v6);
  v911 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v48, 9uLL), v11), v48, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v49, 9uLL), v11), v49, 0xAuLL));
  v912 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v50, 9uLL), v11), v50, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v51, 9uLL), v11), v51, 0xAuLL));
  v52 = vmull_u16(*v913.i8, *v6.i8);
  v53 = vmull_high_u16(v913, v6);
  v54 = vmull_u16(*v914.i8, *v6.i8);
  v55 = vmull_high_u16(v914, v6);
  v913 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v52, 9uLL), v11), v52, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v53, 9uLL), v11), v53, 0xAuLL));
  v914 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v54, 9uLL), v11), v54, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v55, 9uLL), v11), v55, 0xAuLL));
  v56 = vmull_u16(*v915.i8, *v6.i8);
  v57 = vmull_high_u16(v915, v6);
  v58 = vmull_u16(*v916.i8, *v6.i8);
  v59 = vmull_high_u16(v916, v6);
  v915 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v56, 9uLL), v11), v56, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v57, 9uLL), v11), v57, 0xAuLL));
  v916 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v58, 9uLL), v11), v58, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v59, 9uLL), v11), v59, 0xAuLL));
  v60 = vmull_u16(*v917.i8, *v6.i8);
  v61 = vmull_high_u16(v917, v6);
  v62 = vmull_u16(*v918.i8, *v6.i8);
  v63 = vmull_high_u16(v918, v6);
  v917 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v60, 9uLL), v11), v60, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v61, 9uLL), v11), v61, 0xAuLL));
  v918 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v62, 9uLL), v11), v62, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v63, 9uLL), v11), v63, 0xAuLL));
  v64 = vmull_u16(*v919.i8, *v6.i8);
  v65 = vmull_high_u16(v919, v6);
  v66 = vmull_u16(*v920.i8, *v6.i8);
  v67 = vmull_high_u16(v920, v6);
  v919 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v64, 9uLL), v11), v64, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v65, 9uLL), v11), v65, 0xAuLL));
  v920 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v66, 9uLL), v11), v66, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v67, 9uLL), v11), v67, 0xAuLL));
  v68 = vmull_u16(*v921.i8, *v6.i8);
  v69 = vmull_high_u16(v921, v6);
  v70 = vmull_u16(*v922.i8, *v6.i8);
  v71 = vmull_high_u16(v922, v6);
  v921 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v68, 9uLL), v11), v68, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v69, 9uLL), v11), v69, 0xAuLL));
  v922 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v70, 9uLL), v11), v70, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v71, 9uLL), v11), v71, 0xAuLL));
  v72 = vmull_u16(*v923.i8, *v6.i8);
  v73 = vmull_high_u16(v923, v6);
  v74 = vmull_u16(*v924.i8, *v6.i8);
  v75 = vmull_high_u16(v924, v6);
  v923 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v72, 9uLL), v11), v72, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v73, 9uLL), v11), v73, 0xAuLL));
  v924 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v74, 9uLL), v11), v74, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v75, 9uLL), v11), v75, 0xAuLL));
  v76 = vmull_u16(*v925.i8, *v6.i8);
  v77 = vmull_high_u16(v925, v6);
  v78 = vmull_u16(*v926.i8, *v6.i8);
  v79 = vmull_high_u16(v926, v6);
  v925 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v76, 9uLL), v11), v76, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v77, 9uLL), v11), v77, 0xAuLL));
  v926 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v78, 9uLL), v11), v78, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v79, 9uLL), v11), v79, 0xAuLL));
  v80 = vmull_u16(*v927.i8, *v6.i8);
  v81 = vmull_high_u16(v927, v6);
  v82 = vmull_u16(*v928.i8, *v6.i8);
  v83 = vmull_high_u16(v928, v6);
  v927 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v80, 9uLL), v11), v80, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v81, 9uLL), v11), v81, 0xAuLL));
  v928 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v82, 9uLL), v11), v82, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v83, 9uLL), v11), v83, 0xAuLL));
  v84 = vmull_u16(*v929.i8, *v6.i8);
  v85 = vmull_high_u16(v929, v6);
  v86 = vmull_u16(*v930.i8, *v6.i8);
  v87 = vmull_high_u16(v930, v6);
  v929 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v84, 9uLL), v11), v84, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v85, 9uLL), v11), v85, 0xAuLL));
  v930 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v86, 9uLL), v11), v86, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v87, 9uLL), v11), v87, 0xAuLL));
  v88 = vmull_u16(*v931.i8, *v6.i8);
  v89 = vmull_high_u16(v931, v6);
  v90 = vmull_u16(*v932.i8, *v6.i8);
  v91 = vmull_high_u16(v932, v6);
  v931 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v88, 9uLL), v11), v88, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v89, 9uLL), v11), v89, 0xAuLL));
  v932 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v90, 9uLL), v11), v90, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v91, 9uLL), v11), v91, 0xAuLL));
  v92 = vmull_u16(*v933.i8, *v6.i8);
  v93 = vmull_high_u16(v933, v6);
  v94 = vmull_u16(*v934.i8, *v6.i8);
  v95 = vmull_high_u16(v934, v6);
  v933 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v92, 9uLL), v11), v92, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v93, 9uLL), v11), v93, 0xAuLL));
  v934 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v94, 9uLL), v11), v94, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v95, 9uLL), v11), v95, 0xAuLL));
  v96 = vmull_u16(*v935.i8, *v6.i8);
  v97 = vmull_high_u16(v935, v6);
  v98 = vmull_u16(*v936.i8, *v6.i8);
  v99 = vmull_high_u16(v936, v6);
  v935 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v96, 9uLL), v11), v96, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v97, 9uLL), v11), v97, 0xAuLL));
  v936 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v98, 9uLL), v11), v98, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v99, 9uLL), v11), v99, 0xAuLL));
  v100 = vmull_u16(*v937.i8, *v6.i8);
  v101 = vmull_high_u16(v937, v6);
  v102 = vmull_u16(*v938.i8, *v6.i8);
  v103 = vmull_high_u16(v938, v6);
  v937 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v100, 9uLL), v11), v100, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v101, 9uLL), v11), v101, 0xAuLL));
  v938 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v102, 9uLL), v11), v102, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v103, 9uLL), v11), v103, 0xAuLL));
  v104 = vmull_u16(*v939.i8, *v6.i8);
  v105 = vmull_high_u16(v939, v6);
  v106 = vmull_u16(*v940.i8, *v6.i8);
  v107 = vmull_high_u16(v940, v6);
  v939 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v104, 9uLL), v11), v104, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v105, 9uLL), v11), v105, 0xAuLL));
  v940 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v106, 9uLL), v11), v106, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v107, 9uLL), v11), v107, 0xAuLL));
  v108 = vmull_u16(*v941.i8, *v6.i8);
  v109 = vmull_high_u16(v941, v6);
  v110 = vmull_u16(*v942.i8, *v6.i8);
  v111 = vmull_high_u16(v942, v6);
  v941 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v108, 9uLL), v11), v108, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v109, 9uLL), v11), v109, 0xAuLL));
  v942 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v110, 9uLL), v11), v110, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v111, 9uLL), v11), v111, 0xAuLL));
  v112 = vmull_u16(*v943.i8, *v6.i8);
  v113 = vmull_high_u16(v943, v6);
  v114 = vmull_u16(*v944.i8, *v6.i8);
  v115 = vmull_high_u16(v944, v6);
  v943 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v112, 9uLL), v11), v112, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v113, 9uLL), v11), v113, 0xAuLL));
  v944 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v114, 9uLL), v11), v114, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v115, 9uLL), v11), v115, 0xAuLL));
  v116 = vmull_u16(*v945.i8, *v6.i8);
  v117 = vmull_high_u16(v945, v6);
  v118 = vmull_u16(*v946.i8, *v6.i8);
  v119 = vmull_high_u16(v946, v6);
  v945 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v116, 9uLL), v11), v116, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v117, 9uLL), v11), v117, 0xAuLL));
  v946 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v118, 9uLL), v11), v118, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v119, 9uLL), v11), v119, 0xAuLL));
  v120 = vmull_u16(*v947.i8, *v6.i8);
  v121 = vmull_high_u16(v947, v6);
  v122 = vmull_u16(*v948.i8, *v6.i8);
  v123 = vmull_high_u16(v948, v6);
  v947 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v120, 9uLL), v11), v120, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v121, 9uLL), v11), v121, 0xAuLL));
  v948 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v122, 9uLL), v11), v122, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v123, 9uLL), v11), v123, 0xAuLL));
  v124 = vmull_u16(*v949.i8, *v6.i8);
  v125 = vmull_high_u16(v949, v6);
  v126 = vmull_u16(*v950.i8, *v6.i8);
  v127 = vmull_high_u16(v950, v6);
  v949 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v124, 9uLL), v11), v124, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v125, 9uLL), v11), v125, 0xAuLL));
  v950 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v126, 9uLL), v11), v126, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v127, 9uLL), v11), v127, 0xAuLL));
  v128 = vmull_u16(*v951.i8, *v6.i8);
  v129 = vmull_high_u16(v951, v6);
  v130 = vmull_u16(*v952.i8, *v6.i8);
  v131 = vmull_high_u16(v952, v6);
  v951 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v128, 9uLL), v11), v128, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v129, 9uLL), v11), v129, 0xAuLL));
  v952 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v130, 9uLL), v11), v130, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v131, 9uLL), v11), v131, 0xAuLL));
  v132 = vmull_u16(*v953.i8, *v6.i8);
  v133 = vmull_high_u16(v953, v6);
  v134 = vmull_u16(*v954.i8, *v6.i8);
  v135 = vmull_high_u16(v954, v6);
  v953 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v132, 9uLL), v11), v132, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v133, 9uLL), v11), v133, 0xAuLL));
  v954 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v134, 9uLL), v11), v134, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v135, 9uLL), v11), v135, 0xAuLL));
  v136 = vmull_u16(*v955.i8, *v6.i8);
  v137 = vmull_high_u16(v955, v6);
  v138 = vmull_u16(*v956.i8, *v6.i8);
  v139 = vmull_high_u16(v956, v6);
  v955 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v136, 9uLL), v11), v136, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v137, 9uLL), v11), v137, 0xAuLL));
  v956 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v138, 9uLL), v11), v138, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v139, 9uLL), v11), v139, 0xAuLL));
  v140 = vmull_u16(*v957.i8, *v6.i8);
  v141 = vmull_high_u16(v957, v6);
  v142 = vmull_u16(*v958.i8, *v6.i8);
  v143 = vmull_high_u16(v958, v6);
  v957 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v140, 9uLL), v11), v140, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v141, 9uLL), v11), v141, 0xAuLL));
  v958 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v142, 9uLL), v11), v142, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v143, 9uLL), v11), v143, 0xAuLL));
  v144 = vmull_u16(*v959.i8, *v6.i8);
  v145 = vmull_high_u16(v959, v6);
  v146 = vmull_u16(*v960.i8, *v6.i8);
  v147 = vmull_high_u16(v960, v6);
  v959 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v144, 9uLL), v11), v144, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v145, 9uLL), v11), v145, 0xAuLL));
  v960 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v146, 9uLL), v11), v146, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v147, 9uLL), v11), v147, 0xAuLL));
  v148 = vmull_u16(*v961.i8, *v6.i8);
  v149 = vmull_high_u16(v961, v6);
  v150 = vmull_u16(*v962.i8, *v6.i8);
  v151 = vmull_high_u16(v962, v6);
  v961 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v148, 9uLL), v11), v148, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v149, 9uLL), v11), v149, 0xAuLL));
  v962 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v150, 9uLL), v11), v150, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v151, 9uLL), v11), v151, 0xAuLL));
  v152 = vmull_u16(*v963.i8, *v6.i8);
  v153 = vmull_high_u16(v963, v6);
  v154 = vmull_u16(*v964.i8, *v6.i8);
  v155 = vmull_high_u16(v964, v6);
  v963 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v152, 9uLL), v11), v152, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v153, 9uLL), v11), v153, 0xAuLL));
  v964 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v154, 9uLL), v11), v154, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v155, 9uLL), v11), v155, 0xAuLL));
  v156 = vmull_u16(*v965.i8, *v6.i8);
  v157 = vmull_high_u16(v965, v6);
  v158 = vmull_u16(*v966.i8, *v6.i8);
  v159 = vmull_high_u16(v966, v6);
  v965 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v156, 9uLL), v11), v156, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v157, 9uLL), v11), v157, 0xAuLL));
  v966 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v158, 9uLL), v11), v158, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v159, 9uLL), v11), v159, 0xAuLL));
  v160 = vmull_u16(*v967.i8, *v6.i8);
  v161 = vmull_high_u16(v967, v6);
  v162 = vmull_u16(*v968.i8, *v6.i8);
  v163 = vmull_high_u16(v968, v6);
  v967 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v160, 9uLL), v11), v160, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v161, 9uLL), v11), v161, 0xAuLL));
  v968 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v162, 9uLL), v11), v162, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v163, 9uLL), v11), v163, 0xAuLL));
  v164 = vmull_u16(*v969.i8, *v6.i8);
  v165 = vmull_high_u16(v969, v6);
  v166 = vmull_u16(*v970.i8, *v6.i8);
  v167 = vmull_high_u16(v970, v6);
  v969 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v164, 9uLL), v11), v164, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v165, 9uLL), v11), v165, 0xAuLL));
  v970 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v166, 9uLL), v11), v166, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v167, 9uLL), v11), v167, 0xAuLL));
  v168 = vmull_u16(*v971.i8, *v6.i8);
  v169 = vmull_high_u16(v971, v6);
  v170 = vmull_u16(*v972.i8, *v6.i8);
  v171 = vmull_high_u16(v972, v6);
  v971 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v168, 9uLL), v11), v168, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v169, 9uLL), v11), v169, 0xAuLL));
  v972 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v170, 9uLL), v11), v170, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v171, 9uLL), v11), v171, 0xAuLL));
  v172 = vmull_u16(*v973.i8, *v6.i8);
  v173 = vmull_high_u16(v973, v6);
  v174 = vmull_u16(*v974.i8, *v6.i8);
  v175 = vmull_high_u16(v974, v6);
  v973 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v172, 9uLL), v11), v172, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v173, 9uLL), v11), v173, 0xAuLL));
  v974 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v174, 9uLL), v11), v174, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v175, 9uLL), v11), v175, 0xAuLL));
  v176 = vmull_u16(*v975.i8, *v6.i8);
  v177 = vmull_high_u16(v975, v6);
  v178 = vmull_u16(*v976.i8, *v6.i8);
  v179 = vmull_high_u16(v976, v6);
  v975 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v176, 9uLL), v11), v176, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v177, 9uLL), v11), v177, 0xAuLL));
  v976 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v178, 9uLL), v11), v178, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v179, 9uLL), v11), v179, 0xAuLL));
  v180 = vmull_u16(*v977.i8, *v6.i8);
  v181 = vmull_high_u16(v977, v6);
  v182 = vmull_u16(*v978.i8, *v6.i8);
  v183 = vmull_high_u16(v978, v6);
  v977 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v180, 9uLL), v11), v180, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v181, 9uLL), v11), v181, 0xAuLL));
  v978 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v182, 9uLL), v11), v182, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v183, 9uLL), v11), v183, 0xAuLL));
  v184 = vmull_u16(*v979.i8, *v6.i8);
  v185 = vmull_high_u16(v979, v6);
  v186 = vmull_u16(*v980.i8, *v6.i8);
  v187 = vmull_high_u16(v980, v6);
  v979 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v184, 9uLL), v11), v184, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v185, 9uLL), v11), v185, 0xAuLL));
  v980 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v186, 9uLL), v11), v186, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v187, 9uLL), v11), v187, 0xAuLL));
  v188 = vmull_u16(*v981.i8, *v6.i8);
  v189 = vmull_high_u16(v981, v6);
  v190 = vmull_u16(*v982.i8, *v6.i8);
  v191 = vmull_high_u16(v982, v6);
  v981 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v188, 9uLL), v11), v188, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v189, 9uLL), v11), v189, 0xAuLL));
  v982 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v190, 9uLL), v11), v190, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v191, 9uLL), v11), v191, 0xAuLL));
  v192 = vmull_u16(*v983.i8, *v6.i8);
  v193 = vmull_high_u16(v983, v6);
  v194 = vmull_u16(*v984.i8, *v6.i8);
  v195 = vmull_high_u16(v984, v6);
  v983 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v192, 9uLL), v11), v192, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v193, 9uLL), v11), v193, 0xAuLL));
  v984 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v194, 9uLL), v11), v194, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v195, 9uLL), v11), v195, 0xAuLL));
  v196 = vmull_u16(*v985.i8, *v6.i8);
  v197 = vmull_high_u16(v985, v6);
  v198 = vmull_u16(*v986.i8, *v6.i8);
  v199 = vmull_high_u16(v986, v6);
  v985 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v196, 9uLL), v11), v196, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v197, 9uLL), v11), v197, 0xAuLL));
  v986 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v198, 9uLL), v11), v198, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v199, 9uLL), v11), v199, 0xAuLL));
  v200 = 0;
  v201 = 0;
  v202 = 0;
  v203 = a2 + 960;
  do
  {
    v204 = 0;
    v205 = 0;
    do
    {
      if (!v201)
      {
        v207 = *v203++;
        v202 = v207;
        v201 = 8;
      }

      v206 = 4 - v204;
      if (4 - v204 >= v201)
      {
        v206 = v201;
      }

      v201 -= v206;
      v202 = (v202 >> v206);
      v204 += v206;
    }

    while (v204 < 4);
    if (v205 > 0xD00)
    {
      break;
    }

    v858.i16[v200++] = v205;
  }

  while (v200 != 256);
  v208 = vdupq_n_s16(0xD01u);
  v209 = vmull_u16(*v858.i8, *v208.i8);
  v210 = vmull_high_u16(v858, v208);
  v211 = vmull_u16(*v859.i8, *v208.i8);
  v212 = vmull_high_u16(v859, v208);
  v213.i64[0] = 0x100000001;
  v213.i64[1] = 0x100000001;
  v858 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v209, 3uLL), v213), v209, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v210, 3uLL), v213), v210, 4uLL));
  v859 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v211, 3uLL), v213), v211, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v212, 3uLL), v213), v212, 4uLL));
  v214 = vmull_u16(*v860.i8, *v208.i8);
  v215 = vmull_high_u16(v860, v208);
  v216 = vmull_u16(*v861.i8, *v208.i8);
  v217 = vmull_high_u16(v861, v208);
  v860 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v214, 3uLL), v213), v214, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v215, 3uLL), v213), v215, 4uLL));
  v861 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v216, 3uLL), v213), v216, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v217, 3uLL), v213), v217, 4uLL));
  v218 = vmull_u16(*v862.i8, *v208.i8);
  v219 = vmull_high_u16(v862, v208);
  v220 = vmull_u16(*v863.i8, *v208.i8);
  v221 = vmull_high_u16(v863, v208);
  v862 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v218, 3uLL), v213), v218, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v219, 3uLL), v213), v219, 4uLL));
  v863 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v220, 3uLL), v213), v220, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v221, 3uLL), v213), v221, 4uLL));
  v222 = vmull_u16(*v864.i8, *v208.i8);
  v223 = vmull_high_u16(v864, v208);
  v224 = vmull_u16(*v865.i8, *v208.i8);
  v225 = vmull_high_u16(v865, v208);
  v864 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v222, 3uLL), v213), v222, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v223, 3uLL), v213), v223, 4uLL));
  v865 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v224, 3uLL), v213), v224, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v225, 3uLL), v213), v225, 4uLL));
  v226 = vmull_u16(*v866.i8, *v208.i8);
  v227 = vmull_high_u16(v866, v208);
  v228 = vmull_u16(*v867.i8, *v208.i8);
  v229 = vmull_high_u16(v867, v208);
  v866 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v226, 3uLL), v213), v226, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v227, 3uLL), v213), v227, 4uLL));
  v867 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v228, 3uLL), v213), v228, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v229, 3uLL), v213), v229, 4uLL));
  v230 = vmull_u16(*v868.i8, *v208.i8);
  v231 = vmull_high_u16(v868, v208);
  v232 = vmull_u16(*v869.i8, *v208.i8);
  v233 = vmull_high_u16(v869, v208);
  v868 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v230, 3uLL), v213), v230, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v231, 3uLL), v213), v231, 4uLL));
  v869 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v232, 3uLL), v213), v232, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v233, 3uLL), v213), v233, 4uLL));
  v234 = vmull_u16(*v870.i8, *v208.i8);
  v235 = vmull_high_u16(v870, v208);
  v236 = vmull_u16(*v871.i8, *v208.i8);
  v237 = vmull_high_u16(v871, v208);
  v870 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v234, 3uLL), v213), v234, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v235, 3uLL), v213), v235, 4uLL));
  v871 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v236, 3uLL), v213), v236, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v237, 3uLL), v213), v237, 4uLL));
  v238 = vmull_u16(*v872.i8, *v208.i8);
  v239 = vmull_high_u16(v872, v208);
  v240 = vmull_u16(*v873.i8, *v208.i8);
  v241 = vmull_high_u16(v873, v208);
  v872 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v238, 3uLL), v213), v238, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v239, 3uLL), v213), v239, 4uLL));
  v873 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v240, 3uLL), v213), v240, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v241, 3uLL), v213), v241, 4uLL));
  v242 = vmull_u16(*v874.i8, *v208.i8);
  v243 = vmull_high_u16(v874, v208);
  v244 = vmull_u16(*v875.i8, *v208.i8);
  v245 = vmull_high_u16(v875, v208);
  v874 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v242, 3uLL), v213), v242, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v243, 3uLL), v213), v243, 4uLL));
  v875 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v244, 3uLL), v213), v244, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v245, 3uLL), v213), v245, 4uLL));
  v246 = vmull_u16(*v876.i8, *v208.i8);
  v247 = vmull_high_u16(v876, v208);
  v248 = vmull_u16(*v877.i8, *v208.i8);
  v249 = vmull_high_u16(v877, v208);
  v876 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v246, 3uLL), v213), v246, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v247, 3uLL), v213), v247, 4uLL));
  v877 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v248, 3uLL), v213), v248, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v249, 3uLL), v213), v249, 4uLL));
  v250 = vmull_u16(*v878.i8, *v208.i8);
  v251 = vmull_high_u16(v878, v208);
  v252 = vmull_u16(*v879.i8, *v208.i8);
  v253 = vmull_high_u16(v879, v208);
  v878 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v250, 3uLL), v213), v250, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v251, 3uLL), v213), v251, 4uLL));
  v879 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v252, 3uLL), v213), v252, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v253, 3uLL), v213), v253, 4uLL));
  v254 = vmull_u16(*v880.i8, *v208.i8);
  v255 = vmull_high_u16(v880, v208);
  v256 = vmull_u16(*v881.i8, *v208.i8);
  v257 = vmull_high_u16(v881, v208);
  v880 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v254, 3uLL), v213), v254, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v255, 3uLL), v213), v255, 4uLL));
  v881 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v256, 3uLL), v213), v256, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v257, 3uLL), v213), v257, 4uLL));
  v258 = vmull_u16(*v882.i8, *v208.i8);
  v259 = vmull_high_u16(v882, v208);
  v260 = vmull_u16(*v883.i8, *v208.i8);
  v261 = vmull_high_u16(v883, v208);
  v882 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v258, 3uLL), v213), v258, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v259, 3uLL), v213), v259, 4uLL));
  v883 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v260, 3uLL), v213), v260, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v261, 3uLL), v213), v261, 4uLL));
  v262 = vmull_u16(*v884.i8, *v208.i8);
  v263 = vmull_high_u16(v884, v208);
  v264 = vmull_u16(*v885.i8, *v208.i8);
  v265 = vmull_high_u16(v885, v208);
  v884 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v262, 3uLL), v213), v262, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v263, 3uLL), v213), v263, 4uLL));
  v885 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v264, 3uLL), v213), v264, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v265, 3uLL), v213), v265, 4uLL));
  v266 = vmull_u16(*v886.i8, *v208.i8);
  v267 = vmull_high_u16(v886, v208);
  v268 = vmull_u16(*v887.i8, *v208.i8);
  v269 = vmull_high_u16(v887, v208);
  v886 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v266, 3uLL), v213), v266, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v267, 3uLL), v213), v267, 4uLL));
  v887 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v268, 3uLL), v213), v268, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v269, 3uLL), v213), v269, 4uLL));
  v270 = vmull_u16(*v888.i8, *v208.i8);
  v271 = vmull_high_u16(v888, v208);
  v272 = vmull_u16(*v889.i8, *v208.i8);
  v273 = vmull_high_u16(v889, v208);
  v888 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v270, 3uLL), v213), v270, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v271, 3uLL), v213), v271, 4uLL));
  v889 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v272, 3uLL), v213), v272, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v273, 3uLL), v213), v273, 4uLL));
  v274 = 0;
  v275 = &xmmword_273BA9DA8;
  v276.i64[0] = 0xD000D000D000D00;
  v276.i64[1] = 0xD000D000D000D00;
  v277.i64[0] = 0xF2000000F2;
  v277.i64[1] = 0xF2000000F2;
  do
  {
    v278 = &__dst.i16[v274];
    v1031 = vld4q_s16(v278);
    v279 = *v275++;
    v280 = vmovl_high_u16(v279);
    v281 = vmovl_u16(*v279.i8);
    v282 = vaddq_s16(v1031.val[0], v1031.val[2]);
    v283 = vdupq_n_s32(0xD01u);
    v284 = vaddq_s16(v282, v276);
    v285 = vmulq_s32(vaddq_s32(vsubl_u16(*v1031.val[0].i8, *v1031.val[2].i8), v283), v281);
    v286 = vdupq_n_s32(0x13AFu);
    v287 = vmulq_s32(vaddq_s32(vsubl_high_u16(v1031.val[0], v1031.val[2]), v283), v280);
    v288 = vaddq_s16(v1031.val[1], v1031.val[3]);
    v289 = vaddq_s16(v288, v276);
    v290 = vmulq_s32(vaddq_s32(vsubl_u16(*v1031.val[1].i8, *v1031.val[3].i8), v283), v281);
    v291 = vmulq_s32(vaddq_s32(vsubl_high_u16(v1031.val[1], v1031.val[3]), v283), v280);
    v292 = vuzp1q_s16(vmlaq_s32(v285, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v285.i8, *v286.i8), 0x18uLL), vmull_high_u32(v285, v286), 0x18uLL), v277), vmlaq_s32(v287, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v287.i8, *v286.i8), 0x18uLL), vmull_high_u32(v287, v286), 0x18uLL), v277));
    v1031.val[0] = vaddq_s16(v292, v276);
    v293 = vuzp1q_s16(vmlaq_s32(v290, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v290.i8, *v286.i8), 0x18uLL), vmull_high_u32(v290, v286), 0x18uLL), v277), vmlaq_s32(v291, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v291.i8, *v286.i8), 0x18uLL), vmull_high_u32(v291, v286), 0x18uLL), v277));
    v294 = vaddq_s16(v293, v276);
    v1031.val[2] = vorrq_s8(vandq_s8(vcltzq_s16(v289), v288), vmaxq_s16(v289, 0));
    v1031.val[1] = vorrq_s8(vandq_s8(vcltzq_s16(v284), v282), vmaxq_s16(v284, 0));
    v295 = vorrq_s8(vandq_s8(vcltzq_s16(v294), v293), vmaxq_s16(v294, 0));
    v1031.val[3] = vorrq_s8(vandq_s8(vcltzq_s16(v1031.val[0]), v292), vmaxq_s16(v1031.val[0], 0));
    vst4q_s16(v278, *(&v1031 + 16));
    v274 += 32;
  }

  while (v274 != 256);
  v296 = 0;
  v297 = &xmmword_273BA9D68;
  do
  {
    v298 = *v297++;
    v299 = &__dst.i8[v296 * 8];
    v1030.val[0] = *(&v996 + v296 * 8);
    v1030.val[1] = *(&v997 + v296 * 8);
    v1027.val[0] = *(&v994 + v296 * 8);
    v1027.val[1] = *(&v995 + v296 * 8);
    v1026.val[0] = *(&v992 + v296 * 8);
    v1026.val[1] = *(&v993 + v296 * 8);
    v300 = vqtbl2q_s8(v1027, xmmword_273BA7010);
    v1028 = *&__dst.i8[v296 * 8];
    v301.i32[0] = vzip1q_s16(v1028.val[0], v1028.val[1]).u32[0];
    v300.i32[3] = vqtbl2q_s8(v1030, xmmword_273BA7000).i32[3];
    v301.i32[1] = vqtbl2q_s8(v1026, xmmword_273BA7020).i32[1];
    v302.i32[0] = vtrn2q_s16(v1028.val[0], v1028.val[1]).u32[0];
    v302.i32[1] = vzip1q_s16(*&v1026, *(&v1026 + 16)).i32[1];
    v303 = vqtbl2q_s8(v1027, xmmword_273BA7040);
    v304 = vzip1q_s16(v1027.val[0], v1027.val[1]);
    v303.i32[3] = vqtbl2q_s8(v1030, xmmword_273BA7030).i32[3];
    LOWORD(v305) = WORD2(v992.i64[v296]);
    HIWORD(v305) = WORD2(v993.i64[v296]);
    v304.i32[3] = vqtbl2q_s8(v1030, xmmword_273BA7050).i32[3];
    v306.i32[0] = vqtbl2q_s8(v1028, xmmword_273BA7060).u32[0];
    v307 = vqtbl2q_s8(v1027, xmmword_273BA7070);
    v307.i32[3] = vzip1q_s16(*&v1030, *(&v1030 + 16)).i32[3];
    v308.i32[0] = vqtbl2q_s8(v1028, xmmword_273BA7080).u32[0];
    LOWORD(v309) = v994.i64[v296 + 1];
    WORD1(v309) = v995.i64[v296 + 1];
    v308.i32[1] = vtrn2q_s16(*&v1026, *(&v1026 + 16)).i32[1];
    *v310.i8 = v308;
    v311.i32[0] = vzip2q_s16(v1028.val[0], v1028.val[1]).u32[0];
    v312 = vtrn2q_s16(v1027.val[0], v1027.val[1]);
    v313.i32[0] = v311.i32[0];
    v312.i32[3] = vqtbl2q_s8(v1030, xmmword_273BA70B0).i32[3];
    v314.i32[0] = vqtbl2q_s8(v1028, xmmword_273BA70C0).u32[0];
    v313.i32[1] = vqtbl2q_s8(v1026, xmmword_273BA70A0).i32[1];
    v315.i32[0] = v314.i32[0];
    v315.i32[1] = vzip2q_s16(*&v1026, *(&v1026 + 16)).i32[1];
    LOWORD(v316) = v1030.val[0].i16[6];
    v306.i32[1] = v305;
    HIWORD(v316) = v1030.val[1].i16[6];
    v317 = vzip2q_s16(v1027.val[0], v1027.val[1]);
    v318 = __PAIR64__(v316, v317.u32[2]);
    HIDWORD(v309) = vqtbl2q_s8(v1030, xmmword_273BA7090).i32[3];
    v319 = vqtbl2q_s8(v1027, xmmword_273BA70F0);
    v320 = vzip2q_s16(v1030.val[0], v1030.val[1]);
    v301.i64[1] = v300.i64[1];
    v319.i32[3] = v320.i32[3];
    v321.i32[0] = vqtbl2q_s8(v1028, xmmword_273BA7110).u32[0];
    v855 = vqtbl2q_s8(v1026, xmmword_273BA7100);
    v856 = v321.i32[0];
    v302.i64[1] = v303.i64[1];
    v321.i32[1] = v855.i32[1];
    v310.i64[1] = v307.i64[1];
    v857 = v310;
    v317.i32[1] = vqtbl2q_s8(v1030, xmmword_273BA70A0).i32[1];
    v311.i32[1] = v313.i32[1];
    v315.i64[1] = v312.i64[1];
    *v312.i8 = vzip1_s16(*v1030.val[0].i8, *v1030.val[1].i8);
    v308.i32[0] = vzip1_s16(*v1027.val[0].i8, *v1027.val[1].i8).u32[0];
    v321.i64[1] = v319.i64[1];
    v308.i32[1] = vext_s8(*&v1030, *&v312, 4uLL).i32[1];
    *v319.i8 = vzip1_s16(*v1026.val[0].i8, *v1026.val[1].i8);
    v306.i64[1] = v304.i64[1];
    v300.i32[0] = vzip1_s16(*v1028.val[0].i8, *v1028.val[1].i8).u32[0];
    v300.i32[1] = vext_s8(*&v1026, *&v319, 4uLL).i32[1];
    v307.i32[0] = vqtbl2q_s8(v1028, xmmword_273BA70E0).u32[0];
    v313.i64[1] = v309;
    v303.i32[0] = v307.i32[0];
    v303.i32[1] = vqtbl2q_s8(v1026, xmmword_273BA70D0).i32[1];
    v303.i64[1] = v318;
    v322 = vdupq_n_s32(0xD01u);
    v323 = vaddq_s32(vsubl_u16(v308, *v317.i8), v322);
    v324 = vmovl_u16(*v298.i8);
    v325 = vmulq_s32(vaddq_s32(vsubl_u16(*v300.i8, v311), v322), v324);
    v326 = vdupq_n_s32(0x13AFu);
    v317.i32[0] = vqtbl2q_s8(v1027, xmmword_273BA70C0).u32[0];
    v317.i32[1] = v320.i32[1];
    v327 = vmovl_high_u16(v298);
    v328 = vmulq_s32(v323, v327);
    v314.i32[1] = v315.i32[1];
    v323.i32[0] = vtrn2_s16(*v1027.val[0].i8, *v1027.val[1].i8).u32[0];
    v323.i32[1] = v312.i32[1];
    v312.i32[0] = vtrn2_s16(*v1028.val[0].i8, *v1028.val[1].i8).u32[0];
    v312.i32[1] = v319.i32[1];
    v329 = vaddq_s16(v302, v315);
    v330 = vmulq_s32(vaddq_s32(vsubl_u16(*v312.i8, v314), v322), v324);
    v331 = vaddq_s16(v301, v313);
    v332 = vmulq_s32(vaddq_s32(vsubl_u16(*v323.i8, *v317.i8), v322), v327);
    v319.i32[0] = vqtbl2q_s8(v1027, xmmword_273BA70E0).u32[0];
    v319.i32[1] = vqtbl2q_s8(v1030, xmmword_273BA70D0).i32[1];
    v307.i32[1] = v303.i32[1];
    LOWORD(v333) = WORD2(v996.i64[v296]);
    HIWORD(v333) = WORD2(v997.i64[v296]);
    v334.i64[0] = 0xF2000000F2;
    v334.i64[1] = 0xF2000000F2;
    v317.i32[0] = vzip2_s16(*v1027.val[0].i8, *v1027.val[1].i8).u32[0];
    v317.i32[1] = v333;
    v314.i32[0] = vzip2_s16(*v1028.val[0].i8, *v1028.val[1].i8).u32[0];
    v314.i32[1] = v305;
    v335 = vaddq_s16(v306, v303);
    v336 = vmulq_s32(vaddq_s32(vsubl_u16(v314, *v307.i8), v322), v324);
    v337 = vmulq_s32(vaddq_s32(vsubl_u16(*v317.i8, *v319.i8), v322), v327);
    v307.i32[0] = vuzp2_s16(vuzp2_s16(*v1028.val[0].i8, *v1028.val[1].i8), *v1028.val[0].i8).u32[0];
    v323.i32[0] = vuzp2_s16(vuzp2_s16(*v1027.val[0].i8, *v1027.val[1].i8), *v1027.val[0].i8).u32[0];
    v338.i32[0] = vqtbl2q_s8(v1027, xmmword_273BA7110).u32[0];
    v338.i32[1] = vqtbl2q_s8(v1030, xmmword_273BA7100).i32[1];
    v339 = vuzp1q_s16(vmlaq_s32(v330, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v330.i8, *v326.i8), 0x18uLL), vmull_high_u32(v330, v326), 0x18uLL), v334), vmlaq_s32(v332, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v332.i8, *v326.i8), 0x18uLL), vmull_high_u32(v332, v326), 0x18uLL), v334));
    v323.i32[1] = vzip2_s16(*&v1030, *(&v1030 + 16)).i32[1];
    v340 = vuzp1q_s16(vmlaq_s32(v325, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v325.i8, *v326.i8), 0x18uLL), vmull_high_u32(v325, v326), 0x18uLL), v334), vmlaq_s32(v328, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v328.i8, *v326.i8), 0x18uLL), vmull_high_u32(v328, v326), 0x18uLL), v334));
    v307.i32[1] = vzip2_s16(*&v1026, *(&v1026 + 16)).i32[1];
    v341 = vaddq_s16(v857, v321);
    v319.i64[0] = 0xD000D000D000D00;
    v319.i64[1] = 0xD000D000D000D00;
    v342 = vaddq_s16(v331, v319);
    v343 = vaddq_s16(v329, v319);
    v344 = vsubl_u16(*v307.i8, __PAIR64__(v855.u32[1], v856));
    v345 = vaddq_s16(v339, v319);
    v346 = vaddq_s16(v335, v319);
    v347 = vaddq_s16(v341, v319);
    v348 = vmulq_s32(vaddq_s32(v344, v322), v324);
    v349 = vmulq_s32(vaddq_s32(vsubl_u16(*v323.i8, v338), v322), v327);
    v350 = vuzp1q_s16(vmlaq_s32(v336, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v336.i8, *v326.i8), 0x18uLL), vmull_high_u32(v336, v326), 0x18uLL), v334), vmlaq_s32(v337, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v337.i8, *v326.i8), 0x18uLL), vmull_high_u32(v337, v326), 0x18uLL), v334));
    v351 = vaddq_s16(v340, v319);
    v352 = vmlaq_s32(v349, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v349.i8, *v326.i8), 0x18uLL), vmull_high_u32(v349, v326), 0x18uLL), v334);
    v353 = vmlaq_s32(v348, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v348.i8, *v326.i8), 0x18uLL), vmull_high_u32(v348, v326), 0x18uLL), v334);
    v354 = vaddq_s16(v350, v319);
    v355 = vuzp1q_s16(v353, v352);
    v356 = vaddq_s16(v355, v319);
    v357 = vandq_s8(vcltzq_s16(v347), v341);
    v358 = vandq_s8(vcltzq_s16(v346), v335);
    v1023.val[1] = vorrq_s8(vandq_s8(vcltzq_s16(v343), v329), vmaxq_s16(v343, 0));
    v1023.val[0] = vorrq_s8(vandq_s8(vcltzq_s16(v342), v331), vmaxq_s16(v342, 0));
    v1024.val[1] = vorrq_s8(v357, vmaxq_s16(v347, 0));
    v359 = vandq_s8(vcltzq_s16(v345), v339);
    v1024.val[0] = vorrq_s8(v358, vmaxq_s16(v346, 0));
    v1029.val[1] = vorrq_s8(vandq_s8(vcltzq_s16(v356), v355), vmaxq_s16(v356, 0));
    v1029.val[0] = vorrq_s8(vandq_s8(vcltzq_s16(v354), v350), vmaxq_s16(v354, 0));
    v1025.val[1] = vorrq_s8(v359, vmaxq_s16(v345, 0));
    v1025.val[0] = vorrq_s8(vandq_s8(vcltzq_s16(v351), v340), vmaxq_s16(v351, 0));
    v360 = vqtbl2q_s8(v1025, xmmword_273BA7040);
    v354.i32[0] = vtrn2q_s16(v1023.val[0], v1023.val[1]).u32[0];
    v354.i32[1] = vzip1q_s16(*&v1024, *(&v1024 + 16)).i32[1];
    v345.i16[2] = v1024.val[0].i16[2];
    v361 = vqtbl2q_s8(v1025, xmmword_273BA7010);
    v340.i32[0] = vzip1q_s16(v1023.val[0], v1023.val[1]).u32[0];
    v340.i32[1] = vqtbl2q_s8(v1024, xmmword_273BA7020).i32[1];
    v360.i32[3] = vqtbl2q_s8(v1029, xmmword_273BA7030).i32[3];
    v362 = vzip1q_s16(v1025.val[0], v1025.val[1]);
    v345.i16[3] = v1024.val[1].i16[2];
    v361.i32[3] = vqtbl2q_s8(v1029, xmmword_273BA7000).i32[3];
    v355.i32[0] = vqtbl2q_s8(v1023, xmmword_273BA7060).u32[0];
    v355.i32[1] = v345.i32[1];
    v362.i32[3] = vqtbl2q_s8(v1029, xmmword_273BA7050).i32[3];
    v363 = vtrn2q_s16(v1025.val[0], v1025.val[1]);
    v364 = vqtbl2q_s8(v1029, xmmword_273BA7090);
    v365 = vzip1q_s16(v1029.val[0], v1029.val[1]);
    v363.i32[3] = vqtbl2q_s8(v1029, xmmword_273BA70B0).i32[3];
    v366 = vzip2q_s16(v1029.val[0], v1029.val[1]);
    v367 = vzip2q_s16(v1025.val[0], v1025.val[1]);
    v1029.val[0].i16[7] = v1029.val[1].i16[6];
    v367.i32[3] = v1029.val[0].i32[3];
    v1029.val[1].i32[0] = vqtbl2q_s8(v1023, xmmword_273BA70C0).u32[0];
    v1029.val[1].i32[1] = vzip2q_s16(*&v1024, *(&v1024 + 16)).i32[1];
    v1029.val[0].i16[4] = v1025.val[0].i16[4];
    v1029.val[0].i16[5] = v1025.val[1].i16[4];
    v1029.val[0].i32[3] = v364.i32[3];
    v354.i64[1] = v360.i64[1];
    v360.i32[0] = vzip2q_s16(v1023.val[0], v1023.val[1]).u32[0];
    v360.i32[1] = vqtbl2q_s8(v1024, xmmword_273BA70A0).i32[1];
    v355.i64[1] = v362.i64[1];
    v368 = vqtbl2q_s8(v1025, xmmword_273BA7070);
    v368.i32[3] = v365.i32[3];
    v1029.val[1].i64[1] = v363.i64[1];
    v364.i32[0] = vqtbl2q_s8(v1023, xmmword_273BA7080).u32[0];
    v364.i32[1] = vtrn2q_s16(*&v1024, *(&v1024 + 16)).i32[1];
    v364.i64[1] = v368.i64[1];
    v1025.val[0] = vqtbl2q_s8(v1025, xmmword_273BA70F0);
    v1025.val[0].i32[3] = v366.i32[3];
    v360.i64[1] = v1029.val[0].i64[1];
    v1029.val[0].i32[0] = vqtbl2q_s8(v1023, xmmword_273BA7110).u32[0];
    v1029.val[0].i32[1] = vqtbl2q_s8(v1024, xmmword_273BA7100).i32[1];
    v299[2] = v355;
    v299[3] = v364;
    v1029.val[0].i64[1] = v1025.val[0].i64[1];
    v1023.val[0].i32[0] = vqtbl2q_s8(v1023, xmmword_273BA70E0).u32[0];
    v299[4] = v360;
    v299[5] = v1029.val[1];
    v1023.val[0].i32[1] = vqtbl2q_s8(v1024, xmmword_273BA70D0).i32[1];
    v1023.val[0].i64[1] = v367.i64[1];
    v299[6] = v1023.val[0];
    v299[7] = v1029.val[0];
    v340.i64[1] = v361.i64[1];
    *v299 = v340;
    v299[1] = v354;
    v296 += 16;
  }

  while (v296 != 64);
  v369 = 0;
  v370.i64[0] = 0xD000D000D000D00;
  v370.i64[1] = 0xD000D000D000D00;
  v371.i64[0] = 0xF2000000F2;
  v371.i64[1] = 0xF2000000F2;
  do
  {
    v372 = &__dst + v369;
    v373 = v372[1];
    v374 = vaddq_s16(*v372, v373);
    v375 = vaddq_s16(v374, v370);
    v376 = vsubl_u16(*v372->i8, *v373.i8);
    v377 = vdupq_n_s32(0xD01u);
    v378 = vaddq_s32(vsubl_high_u16(*v372, v373), v377);
    v379 = vaddq_s32(v376, v377);
    v381 = vmulq_s32(v379, v380);
    v382 = vmulq_s32(v378, v380);
    v383 = vdupq_n_s32(0x13AFu);
    v384 = vuzp1q_s16(vmlaq_s32(v381, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v381.i8, *v383.i8), 0x18uLL), vmull_high_u32(v381, v383), 0x18uLL), v371), vmlaq_s32(v382, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v382.i8, *v383.i8), 0x18uLL), vmull_high_u32(v382, v383), 0x18uLL), v371));
    v385 = vaddq_s16(v384, v370);
    *v372 = vorrq_s8(vandq_s8(vcltzq_s16(v375), v374), vmaxq_s16(v375, 0));
    v372[1] = vorrq_s8(vandq_s8(vcltzq_s16(v385), v384), vmaxq_s16(v385, 0));
    v369 += 2;
  }

  while (v369 != 32);
  v386 = 0;
  v387 = v991;
  v388 = vaddq_s16(__dst, v992);
  v389.i64[0] = 0xD000D000D000D00;
  v389.i64[1] = 0xD000D000D000D00;
  v390 = vaddq_s16(v388, v389);
  v391 = vorrq_s8(vandq_s8(vcltzq_s16(v390), v388), vmaxq_s16(v390, 0));
  v392 = vdupq_n_s16(0x62Fu);
  v393 = vdupq_n_s32(0x50692Fu);
  v394 = vaddq_s32(vmlsl_u16(vmull_u16(*__dst.i8, *v392.i8), *v992.i8, *v392.i8), v393);
  v395 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(__dst, v392), v992, v392), v393);
  v396 = vdupq_n_s32(0x13AFu);
  v397.i64[0] = 0xF2000000F2;
  v397.i64[1] = 0xF2000000F2;
  v398 = vuzp1q_s16(vmlaq_s32(v394, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v394.i8, *v396.i8), 0x18uLL), vmull_high_u32(v394, v396), 0x18uLL), v397), vmlaq_s32(v395, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v395.i8, *v396.i8), 0x18uLL), vmull_high_u32(v395, v396), 0x18uLL), v397));
  v399 = vaddq_s16(v398, v389);
  v400 = vorrq_s8(vandq_s8(vcltzq_s16(v399), v398), vmaxq_s16(v399, 0));
  v401 = vaddq_s16(v991, v993);
  v402 = vaddq_s16(v401, v389);
  __dst = v391;
  v991 = vorrq_s8(vandq_s8(vcltzq_s16(v402), v401), vmaxq_s16(v402, 0));
  v403 = vaddq_s32(vmlsl_u16(vmull_u16(*v387.i8, *v392.i8), *v993.i8, *v392.i8), v393);
  v404 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v387, v392), v993, v392), v393);
  v405 = vuzp1q_s16(vmlaq_s32(v403, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v403.i8, *v396.i8), 0x18uLL), vmull_high_u32(v403, v396), 0x18uLL), v397), vmlaq_s32(v404, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v404.i8, *v396.i8), 0x18uLL), vmull_high_u32(v404, v396), 0x18uLL), v397));
  v406 = vaddq_s16(v405, v389);
  v992 = v400;
  v993 = vorrq_s8(vandq_s8(vcltzq_s16(v406), v405), vmaxq_s16(v406, 0));
  v407 = v995;
  v408 = vaddq_s16(v994, v996);
  v409 = vaddq_s16(v408, v389);
  v410 = vorrq_s8(vandq_s8(vcltzq_s16(v409), v408), vmaxq_s16(v409, 0));
  v411 = vdupq_n_s16(0xAC8u);
  v412 = vdupq_n_s32(0x8C32C8u);
  v413 = vaddq_s32(vmlsl_u16(vmull_u16(*v994.i8, *v411.i8), *v996.i8, *v411.i8), v412);
  v414 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v994, v411), v996, v411), v412);
  v415 = vuzp1q_s16(vmlaq_s32(v413, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v413.i8, *v396.i8), 0x18uLL), vmull_high_u32(v413, v396), 0x18uLL), v397), vmlaq_s32(v414, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v414.i8, *v396.i8), 0x18uLL), vmull_high_u32(v414, v396), 0x18uLL), v397));
  v416 = vaddq_s16(v415, v389);
  v417 = vorrq_s8(vandq_s8(vcltzq_s16(v416), v415), vmaxq_s16(v416, 0));
  v418 = vaddq_s16(v995, v997);
  v419 = vaddq_s16(v418, v389);
  v994 = v410;
  v995 = vorrq_s8(vandq_s8(vcltzq_s16(v419), v418), vmaxq_s16(v419, 0));
  v420 = vaddq_s32(vmlsl_u16(vmull_u16(*v407.i8, *v411.i8), *v997.i8, *v411.i8), v412);
  v421 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v407, v411), v997, v411), v412);
  v422 = vuzp1q_s16(vmlaq_s32(v420, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v420.i8, *v396.i8), 0x18uLL), vmull_high_u32(v420, v396), 0x18uLL), v397), vmlaq_s32(v421, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v421.i8, *v396.i8), 0x18uLL), vmull_high_u32(v421, v396), 0x18uLL), v397));
  v423 = vaddq_s16(v422, v389);
  v996 = v417;
  v997 = vorrq_s8(vandq_s8(vcltzq_s16(v423), v422), vmaxq_s16(v423, 0));
  v424 = v999;
  v425 = vaddq_s16(v998, v1000);
  v426 = vaddq_s16(v425, v389);
  v427 = vorrq_s8(vandq_s8(vcltzq_s16(v426), v425), vmaxq_s16(v426, 0));
  v426.i64[0] = 0x45004500450045;
  v426.i64[1] = 0x45004500450045;
  v428 = vdupq_n_s32(0x38145u);
  v429 = vaddq_s32(vmlsl_u16(vmull_u16(*v998.i8, 0x45004500450045), *v1000.i8, 0x45004500450045), v428);
  v430 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v998, v426), v1000, v426), v428);
  v431 = vuzp1q_s16(vmlaq_s32(v429, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v429.i8, *v396.i8), 0x18uLL), vmull_high_u32(v429, v396), 0x18uLL), v397), vmlaq_s32(v430, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v430.i8, *v396.i8), 0x18uLL), vmull_high_u32(v430, v396), 0x18uLL), v397));
  v432 = vaddq_s16(v431, v389);
  v433 = vorrq_s8(vandq_s8(vcltzq_s16(v432), v431), vmaxq_s16(v432, 0));
  v434 = vaddq_s16(v999, v1001);
  v435 = vaddq_s16(v434, v389);
  v998 = v427;
  v999 = vorrq_s8(vandq_s8(vcltzq_s16(v435), v434), vmaxq_s16(v435, 0));
  v436 = vaddq_s32(vmlsl_u16(vmull_u16(*v424.i8, 0x45004500450045), *v1001.i8, 0x45004500450045), v428);
  v437 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v424, v426), v1001, v426), v428);
  v438 = vuzp1q_s16(vmlaq_s32(v436, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v436.i8, *v396.i8), 0x18uLL), vmull_high_u32(v436, v396), 0x18uLL), v397), vmlaq_s32(v437, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v437.i8, *v396.i8), 0x18uLL), vmull_high_u32(v437, v396), 0x18uLL), v397));
  v439 = vaddq_s16(v438, v389);
  v1000 = v433;
  v1001 = vorrq_s8(vandq_s8(vcltzq_s16(v439), v438), vmaxq_s16(v439, 0));
  v440 = v1003;
  v441 = vaddq_s16(v1002, v1004);
  v442 = vaddq_s16(v441, v389);
  v443 = vorrq_s8(vandq_s8(vcltzq_s16(v442), v441), vmaxq_s16(v442, 0));
  v444 = vdupq_n_s16(0x21Fu);
  v445 = vdupq_n_s32(0x1B951Fu);
  v446 = vaddq_s32(vmlsl_u16(vmull_u16(*v1002.i8, *v444.i8), *v1004.i8, *v444.i8), v445);
  v447 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1002, v444), v1004, v444), v445);
  v448 = vuzp1q_s16(vmlaq_s32(v446, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v446.i8, *v396.i8), 0x18uLL), vmull_high_u32(v446, v396), 0x18uLL), v397), vmlaq_s32(v447, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v447.i8, *v396.i8), 0x18uLL), vmull_high_u32(v447, v396), 0x18uLL), v397));
  v449 = vaddq_s16(v448, v389);
  v450 = vorrq_s8(vandq_s8(vcltzq_s16(v449), v448), vmaxq_s16(v449, 0));
  v451 = vaddq_s16(v1003, v1005);
  v452 = vaddq_s16(v451, v389);
  v1002 = v443;
  v1003 = vorrq_s8(vandq_s8(vcltzq_s16(v452), v451), vmaxq_s16(v452, 0));
  v453 = vaddq_s32(vmlsl_u16(vmull_u16(*v440.i8, *v444.i8), *v1005.i8, *v444.i8), v445);
  v454 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v440, v444), v1005, v444), v445);
  v455 = vuzp1q_s16(vmlaq_s32(v453, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v453.i8, *v396.i8), 0x18uLL), vmull_high_u32(v453, v396), 0x18uLL), v397), vmlaq_s32(v454, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v454.i8, *v396.i8), 0x18uLL), vmull_high_u32(v454, v396), 0x18uLL), v397));
  v456 = vaddq_s16(v455, v389);
  v1004 = v450;
  v1005 = vorrq_s8(vandq_s8(vcltzq_s16(v456), v455), vmaxq_s16(v456, 0));
  v457 = v1007;
  v458 = vaddq_s16(v1006, v1008);
  v459 = vaddq_s16(v458, v389);
  v460 = vorrq_s8(vandq_s8(vcltzq_s16(v459), v458), vmaxq_s16(v459, 0));
  v461 = vdupq_n_s16(0x9E4u);
  v462 = vdupq_n_s32(0x809DE4u);
  v463 = vaddq_s32(vmlsl_u16(vmull_u16(*v1006.i8, *v461.i8), *v1008.i8, *v461.i8), v462);
  v464 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1006, v461), v1008, v461), v462);
  v465 = vuzp1q_s16(vmlaq_s32(v463, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v463.i8, *v396.i8), 0x18uLL), vmull_high_u32(v463, v396), 0x18uLL), v397), vmlaq_s32(v464, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v464.i8, *v396.i8), 0x18uLL), vmull_high_u32(v464, v396), 0x18uLL), v397));
  v466 = vaddq_s16(v465, v389);
  v467 = vorrq_s8(vandq_s8(vcltzq_s16(v466), v465), vmaxq_s16(v466, 0));
  v468 = vaddq_s16(v1007, v1009);
  v469 = vaddq_s16(v468, v389);
  v1006 = v460;
  v1007 = vorrq_s8(vandq_s8(vcltzq_s16(v469), v468), vmaxq_s16(v469, 0));
  v470 = vaddq_s32(vmlsl_u16(vmull_u16(*v457.i8, *v461.i8), *v1009.i8, *v461.i8), v462);
  v471 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v457, v461), v1009, v461), v462);
  v472 = vuzp1q_s16(vmlaq_s32(v470, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v470.i8, *v396.i8), 0x18uLL), vmull_high_u32(v470, v396), 0x18uLL), v397), vmlaq_s32(v471, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v471.i8, *v396.i8), 0x18uLL), vmull_high_u32(v471, v396), 0x18uLL), v397));
  v473 = vaddq_s16(v472, v389);
  v1008 = v467;
  v1009 = vorrq_s8(vandq_s8(vcltzq_s16(v473), v472), vmaxq_s16(v473, 0));
  v474 = v1011;
  v475 = vaddq_s16(v1010, v1012);
  v476 = vaddq_s16(v475, v389);
  v477 = vdupq_n_s16(0xC40u);
  v478 = vorrq_s8(vandq_s8(vcltzq_s16(v476), v475), vmaxq_s16(v476, 0));
  v479 = vdupq_n_s32(0x9F4C40u);
  v480 = vaddq_s32(vmlsl_u16(vmull_u16(*v1010.i8, *v477.i8), *v1012.i8, *v477.i8), v479);
  v481 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1010, v477), v1012, v477), v479);
  v482 = vuzp1q_s16(vmlaq_s32(v480, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v480.i8, *v396.i8), 0x18uLL), vmull_high_u32(v480, v396), 0x18uLL), v397), vmlaq_s32(v481, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v481.i8, *v396.i8), 0x18uLL), vmull_high_u32(v481, v396), 0x18uLL), v397));
  v483 = vaddq_s16(v482, v389);
  v484 = vorrq_s8(vandq_s8(vcltzq_s16(v483), v482), vmaxq_s16(v483, 0));
  v485 = vaddq_s16(v1011, v1013);
  v486 = vaddq_s16(v485, v389);
  v1010 = v478;
  v1011 = vorrq_s8(vandq_s8(vcltzq_s16(v486), v485), vmaxq_s16(v486, 0));
  v487 = vaddq_s32(vmlsl_u16(vmull_u16(*v474.i8, *v477.i8), *v1013.i8, *v477.i8), v479);
  v488 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v474, v477), v1013, v477), v479);
  v489 = vuzp1q_s16(vmlaq_s32(v487, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v487.i8, *v396.i8), 0x18uLL), vmull_high_u32(v487, v396), 0x18uLL), v397), vmlaq_s32(v488, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v488.i8, *v396.i8), 0x18uLL), vmull_high_u32(v488, v396), 0x18uLL), v397));
  v490 = vaddq_s16(v489, v389);
  v1012 = v484;
  v1013 = vorrq_s8(vandq_s8(vcltzq_s16(v490), v489), vmaxq_s16(v490, 0));
  v491 = v1015;
  v492 = vaddq_s16(v1014, v1016);
  v493 = vaddq_s16(v492, v389);
  v494 = vorrq_s8(vandq_s8(vcltzq_s16(v493), v492), vmaxq_s16(v493, 0));
  v495 = vdupq_n_s16(0x582u);
  v496 = vdupq_n_s32(0x479F82u);
  v497 = vaddq_s32(vmlsl_u16(vmull_u16(*v1014.i8, *v495.i8), *v1016.i8, *v495.i8), v496);
  v498 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1014, v495), v1016, v495), v496);
  v499 = vuzp1q_s16(vmlaq_s32(v497, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v497.i8, *v396.i8), 0x18uLL), vmull_high_u32(v497, v396), 0x18uLL), v397), vmlaq_s32(v498, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v498.i8, *v396.i8), 0x18uLL), vmull_high_u32(v498, v396), 0x18uLL), v397));
  v500 = vaddq_s16(v499, v389);
  v501 = vorrq_s8(vandq_s8(vcltzq_s16(v500), v499), vmaxq_s16(v500, 0));
  v502 = vaddq_s16(v1015, v1017);
  v503 = vaddq_s16(v502, v389);
  v1014 = v494;
  v1015 = vorrq_s8(vandq_s8(vcltzq_s16(v503), v502), vmaxq_s16(v503, 0));
  v504 = vaddq_s32(vmlsl_u16(vmull_u16(*v491.i8, *v495.i8), *v1017.i8, *v495.i8), v496);
  v505 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v491, v495), v1017, v495), v496);
  v506 = vuzp1q_s16(vmlaq_s32(v504, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v504.i8, *v396.i8), 0x18uLL), vmull_high_u32(v504, v396), 0x18uLL), v397), vmlaq_s32(v505, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v505.i8, *v396.i8), 0x18uLL), vmull_high_u32(v505, v396), 0x18uLL), v397));
  v507 = vaddq_s16(v506, v389);
  v1016 = v501;
  v1017 = vorrq_s8(vandq_s8(vcltzq_s16(v507), v506), vmaxq_s16(v507, 0));
  v508 = v1019;
  v509 = vaddq_s16(v1018, v1020);
  v510 = vaddq_s16(v509, v389);
  v511 = vorrq_s8(vandq_s8(vcltzq_s16(v510), v509), vmaxq_s16(v510, 0));
  v512 = vdupq_n_s16(0x8DBu);
  v513 = vdupq_n_s32(0x7327DBu);
  v514 = vaddq_s32(vmlsl_u16(vmull_u16(*v1018.i8, *v512.i8), *v1020.i8, *v512.i8), v513);
  v515 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1018, v512), v1020, v512), v513);
  v516 = vuzp1q_s16(vmlaq_s32(v514, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v514.i8, *v396.i8), 0x18uLL), vmull_high_u32(v514, v396), 0x18uLL), v397), vmlaq_s32(v515, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v515.i8, *v396.i8), 0x18uLL), vmull_high_u32(v515, v396), 0x18uLL), v397));
  v517 = vaddq_s16(v516, v389);
  v518 = vorrq_s8(vandq_s8(vcltzq_s16(v517), v516), vmaxq_s16(v517, 0));
  v519 = vaddq_s16(v1019, v1021);
  v520 = vaddq_s16(v519, v389);
  v1018 = v511;
  v1019 = vorrq_s8(vandq_s8(vcltzq_s16(v520), v519), vmaxq_s16(v520, 0));
  v521 = vaddq_s32(vmlsl_u16(vmull_u16(*v508.i8, *v512.i8), *v1021.i8, *v512.i8), v513);
  v522 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v508, v512), v1021, v512), v513);
  v523 = vuzp1q_s16(vmlaq_s32(v521, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v521.i8, *v396.i8), 0x18uLL), vmull_high_u32(v521, v396), 0x18uLL), v397), vmlaq_s32(v522, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v522.i8, *v396.i8), 0x18uLL), vmull_high_u32(v522, v396), 0x18uLL), v397));
  v524 = vaddq_s16(v523, v389);
  v1020 = v518;
  v1021 = vorrq_s8(vandq_s8(vcltzq_s16(v524), v523), vmaxq_s16(v524, 0));
  v525 = v991;
  v526 = vaddq_s16(__dst, v994);
  v527 = vaddq_s16(v526, v389);
  v528 = vandq_s8(vcltzq_s16(v527), v526);
  v529 = vdupq_n_s16(0x9B1u);
  v530 = vorrq_s8(v528, vmaxq_s16(v527, 0));
  v531 = vdupq_n_s32(0x7E06B1u);
  v532 = vaddq_s32(vmlsl_u16(vmull_u16(*__dst.i8, *v529.i8), *v994.i8, *v529.i8), v531);
  v533 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(__dst, v529), v994, v529), v531);
  v534 = vuzp1q_s16(vmlaq_s32(v532, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v532.i8, *v396.i8), 0x18uLL), vmull_high_u32(v532, v396), 0x18uLL), v397), vmlaq_s32(v533, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v533.i8, *v396.i8), 0x18uLL), vmull_high_u32(v533, v396), 0x18uLL), v397));
  v535 = vaddq_s16(v534, v389);
  v536 = vorrq_s8(vandq_s8(vcltzq_s16(v535), v534), vmaxq_s16(v535, 0));
  v537 = vaddq_s16(v991, v995);
  v538 = vaddq_s16(v537, v389);
  __dst = v530;
  v991 = vorrq_s8(vandq_s8(vcltzq_s16(v538), v537), vmaxq_s16(v538, 0));
  v539 = vaddq_s32(vmlsl_u16(vmull_u16(*v525.i8, *v529.i8), *v995.i8, *v529.i8), v531);
  v540 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v525, v529), v995, v529), v531);
  v541 = vuzp1q_s16(vmlaq_s32(v539, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v539.i8, *v396.i8), 0x18uLL), vmull_high_u32(v539, v396), 0x18uLL), v397), vmlaq_s32(v540, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v540.i8, *v396.i8), 0x18uLL), vmull_high_u32(v540, v396), 0x18uLL), v397));
  v542 = vaddq_s16(v541, v389);
  v994 = v536;
  v995 = vorrq_s8(vandq_s8(vcltzq_s16(v542), v541), vmaxq_s16(v542, 0));
  v543 = v993;
  v544 = vaddq_s16(v992, v996);
  v545 = vaddq_s16(v544, v389);
  v546 = vorrq_s8(vandq_s8(vcltzq_s16(v545), v544), vmaxq_s16(v545, 0));
  v547 = vaddq_s32(vmlsl_u16(vmull_u16(*v992.i8, *v529.i8), *v996.i8, *v529.i8), v531);
  v548 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v992, v529), v996, v529), v531);
  v549 = vuzp1q_s16(vmlaq_s32(v547, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v547.i8, *v396.i8), 0x18uLL), vmull_high_u32(v547, v396), 0x18uLL), v397), vmlaq_s32(v548, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v548.i8, *v396.i8), 0x18uLL), vmull_high_u32(v548, v396), 0x18uLL), v397));
  v550 = vaddq_s16(v549, v389);
  v551 = vorrq_s8(vandq_s8(vcltzq_s16(v550), v549), vmaxq_s16(v550, 0));
  v552 = vaddq_s16(v993, v997);
  v553 = vaddq_s16(v552, v389);
  v992 = v546;
  v993 = vorrq_s8(vandq_s8(vcltzq_s16(v553), v552), vmaxq_s16(v553, 0));
  v554 = vmlsl_high_u16(vmull_high_u16(v543, v529), v997, v529);
  v555 = vaddq_s32(vmlsl_u16(vmull_u16(*v543.i8, *v529.i8), *v997.i8, *v529.i8), v531);
  v556 = vaddq_s32(v554, v531);
  v557 = vuzp1q_s16(vmlaq_s32(v555, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v555.i8, *v396.i8), 0x18uLL), vmull_high_u32(v555, v396), 0x18uLL), v397), vmlaq_s32(v556, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v556.i8, *v396.i8), 0x18uLL), vmull_high_u32(v556, v396), 0x18uLL), v397));
  v558 = vaddq_s16(v557, v389);
  v996 = v551;
  v997 = vorrq_s8(vandq_s8(vcltzq_s16(v558), v557), vmaxq_s16(v558, 0));
  v559 = v999;
  v560 = vaddq_s16(v998, v1002);
  v561 = vaddq_s16(v560, v389);
  v562 = vorrq_s8(vandq_s8(vcltzq_s16(v561), v560), vmaxq_s16(v561, 0));
  v563 = vdupq_n_s16(0x598u);
  v564 = vdupq_n_s32(0x48BD98u);
  v565 = vaddq_s32(vmlsl_u16(vmull_u16(*v998.i8, *v563.i8), *v1002.i8, *v563.i8), v564);
  v566 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v998, v563), v1002, v563), v564);
  v567 = vuzp1q_s16(vmlaq_s32(v565, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v565.i8, *v396.i8), 0x18uLL), vmull_high_u32(v565, v396), 0x18uLL), v397), vmlaq_s32(v566, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v566.i8, *v396.i8), 0x18uLL), vmull_high_u32(v566, v396), 0x18uLL), v397));
  v568 = vaddq_s16(v567, v389);
  v569 = vorrq_s8(vandq_s8(vcltzq_s16(v568), v567), vmaxq_s16(v568, 0));
  v570 = vaddq_s16(v999, v1003);
  v571 = vaddq_s16(v570, v389);
  v998 = v562;
  v999 = vorrq_s8(vandq_s8(vcltzq_s16(v571), v570), vmaxq_s16(v571, 0));
  v572 = vaddq_s32(vmlsl_u16(vmull_u16(*v559.i8, *v563.i8), *v1003.i8, *v563.i8), v564);
  v573 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v559, v563), v1003, v563), v564);
  v574 = vuzp1q_s16(vmlaq_s32(v572, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v572.i8, *v396.i8), 0x18uLL), vmull_high_u32(v572, v396), 0x18uLL), v397), vmlaq_s32(v573, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v573.i8, *v396.i8), 0x18uLL), vmull_high_u32(v573, v396), 0x18uLL), v397));
  v575 = vaddq_s16(v574, v389);
  v1002 = v569;
  v1003 = vorrq_s8(vandq_s8(vcltzq_s16(v575), v574), vmaxq_s16(v575, 0));
  v576 = v1001;
  v577 = vaddq_s16(v1000, v1004);
  v578 = vaddq_s16(v577, v389);
  v579 = vorrq_s8(vandq_s8(vcltzq_s16(v578), v577), vmaxq_s16(v578, 0));
  v580 = vaddq_s32(vmlsl_u16(vmull_u16(*v1000.i8, *v563.i8), *v1004.i8, *v563.i8), v564);
  v581 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1000, v563), v1004, v563), v564);
  v582 = vuzp1q_s16(vmlaq_s32(v580, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v580.i8, *v396.i8), 0x18uLL), vmull_high_u32(v580, v396), 0x18uLL), v397), vmlaq_s32(v581, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v581.i8, *v396.i8), 0x18uLL), vmull_high_u32(v581, v396), 0x18uLL), v397));
  v583 = vaddq_s16(v582, v389);
  v584 = vorrq_s8(vandq_s8(vcltzq_s16(v583), v582), vmaxq_s16(v583, 0));
  v585 = vaddq_s16(v1001, v1005);
  v586 = vaddq_s16(v585, v389);
  v1000 = v579;
  v1001 = vorrq_s8(vandq_s8(vcltzq_s16(v586), v585), vmaxq_s16(v586, 0));
  v587 = vmlsl_high_u16(vmull_high_u16(v576, v563), v1005, v563);
  v588 = vaddq_s32(vmlsl_u16(vmull_u16(*v576.i8, *v563.i8), *v1005.i8, *v563.i8), v564);
  v589 = vaddq_s32(v587, v564);
  v590 = vuzp1q_s16(vmlaq_s32(v588, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v588.i8, *v396.i8), 0x18uLL), vmull_high_u32(v588, v396), 0x18uLL), v397), vmlaq_s32(v589, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v589.i8, *v396.i8), 0x18uLL), vmull_high_u32(v589, v396), 0x18uLL), v397));
  v591 = vaddq_s16(v590, v389);
  v1004 = v584;
  v1005 = vorrq_s8(vandq_s8(vcltzq_s16(v591), v590), vmaxq_s16(v591, 0));
  v592 = v1007;
  v593 = vaddq_s16(v1006, v1010);
  v594 = vaddq_s16(v593, v389);
  v595 = vorrq_s8(vandq_s8(vcltzq_s16(v594), v593), vmaxq_s16(v594, 0));
  v596 = vdupq_n_s16(0xA8Bu);
  v597 = vdupq_n_s32(0x89198Bu);
  v598 = vaddq_s32(vmlsl_u16(vmull_u16(*v1006.i8, *v596.i8), *v1010.i8, *v596.i8), v597);
  v599 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1006, v596), v1010, v596), v597);
  v600 = vuzp1q_s16(vmlaq_s32(v598, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v598.i8, *v396.i8), 0x18uLL), vmull_high_u32(v598, v396), 0x18uLL), v397), vmlaq_s32(v599, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v599.i8, *v396.i8), 0x18uLL), vmull_high_u32(v599, v396), 0x18uLL), v397));
  v601 = vaddq_s16(v600, v389);
  v602 = vorrq_s8(vandq_s8(vcltzq_s16(v601), v600), vmaxq_s16(v601, 0));
  v603 = vaddq_s16(v1007, v1011);
  v604 = vaddq_s16(v603, v389);
  v1006 = v595;
  v1007 = vorrq_s8(vandq_s8(vcltzq_s16(v604), v603), vmaxq_s16(v604, 0));
  v605 = vaddq_s32(vmlsl_u16(vmull_u16(*v592.i8, *v596.i8), *v1011.i8, *v596.i8), v597);
  v606 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v592, v596), v1011, v596), v597);
  v607 = vuzp1q_s16(vmlaq_s32(v605, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v605.i8, *v396.i8), 0x18uLL), vmull_high_u32(v605, v396), 0x18uLL), v397), vmlaq_s32(v606, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v606.i8, *v396.i8), 0x18uLL), vmull_high_u32(v606, v396), 0x18uLL), v397));
  v608 = vaddq_s16(v607, v389);
  v1010 = v602;
  v1011 = vorrq_s8(vandq_s8(vcltzq_s16(v608), v607), vmaxq_s16(v608, 0));
  v609 = v1009;
  v610 = vaddq_s16(v1008, v1012);
  v611 = vaddq_s16(v610, v389);
  v612 = vorrq_s8(vandq_s8(vcltzq_s16(v611), v610), vmaxq_s16(v611, 0));
  v613 = vaddq_s32(vmlsl_u16(vmull_u16(*v1008.i8, *v596.i8), *v1012.i8, *v596.i8), v597);
  v614 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1008, v596), v1012, v596), v597);
  v615 = vuzp1q_s16(vmlaq_s32(v613, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v613.i8, *v396.i8), 0x18uLL), vmull_high_u32(v613, v396), 0x18uLL), v397), vmlaq_s32(v614, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v614.i8, *v396.i8), 0x18uLL), vmull_high_u32(v614, v396), 0x18uLL), v397));
  v616 = vaddq_s16(v615, v389);
  v617 = vorrq_s8(vandq_s8(vcltzq_s16(v616), v615), vmaxq_s16(v616, 0));
  v618 = vaddq_s16(v1009, v1013);
  v619 = vaddq_s16(v618, v389);
  v1008 = v612;
  v1009 = vorrq_s8(vandq_s8(vcltzq_s16(v619), v618), vmaxq_s16(v619, 0));
  v620 = vmlsl_high_u16(vmull_high_u16(v609, v596), v1013, v596);
  v621 = vaddq_s32(vmlsl_u16(vmull_u16(*v609.i8, *v596.i8), *v1013.i8, *v596.i8), v597);
  v622 = vaddq_s32(v620, v597);
  v623 = vuzp1q_s16(vmlaq_s32(v621, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v621.i8, *v396.i8), 0x18uLL), vmull_high_u32(v621, v396), 0x18uLL), v397), vmlaq_s32(v622, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v622.i8, *v396.i8), 0x18uLL), vmull_high_u32(v622, v396), 0x18uLL), v397));
  v624 = vaddq_s16(v623, v389);
  v1012 = v617;
  v1013 = vorrq_s8(vandq_s8(vcltzq_s16(v624), v623), vmaxq_s16(v624, 0));
  v625 = v1015;
  v626 = vaddq_s16(v1014, v1018);
  v627 = vaddq_s16(v626, v389);
  v628 = vandq_s8(vcltzq_s16(v627), v626);
  v629 = vdupq_n_s16(0x2AFu);
  v630 = vorrq_s8(v628, vmaxq_s16(v627, 0));
  v631 = vdupq_n_s32(0x22E5AFu);
  v632 = vaddq_s32(vmlsl_u16(vmull_u16(*v1014.i8, *v629.i8), *v1018.i8, *v629.i8), v631);
  v633 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1014, v629), v1018, v629), v631);
  v634 = vuzp1q_s16(vmlaq_s32(v632, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v632.i8, *v396.i8), 0x18uLL), vmull_high_u32(v632, v396), 0x18uLL), v397), vmlaq_s32(v633, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v633.i8, *v396.i8), 0x18uLL), vmull_high_u32(v633, v396), 0x18uLL), v397));
  v635 = vaddq_s16(v634, v389);
  v636 = vorrq_s8(vandq_s8(vcltzq_s16(v635), v634), vmaxq_s16(v635, 0));
  v637 = vaddq_s16(v1015, v1019);
  v638 = vaddq_s16(v637, v389);
  v1014 = v630;
  v1015 = vorrq_s8(vandq_s8(vcltzq_s16(v638), v637), vmaxq_s16(v638, 0));
  v639 = vaddq_s32(vmlsl_u16(vmull_u16(*v625.i8, *v629.i8), *v1019.i8, *v629.i8), v631);
  v640 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v625, v629), v1019, v629), v631);
  v641 = vuzp1q_s16(vmlaq_s32(v639, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v639.i8, *v396.i8), 0x18uLL), vmull_high_u32(v639, v396), 0x18uLL), v397), vmlaq_s32(v640, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v640.i8, *v396.i8), 0x18uLL), vmull_high_u32(v640, v396), 0x18uLL), v397));
  v642 = vaddq_s16(v641, v389);
  v1018 = v636;
  v1019 = vorrq_s8(vandq_s8(vcltzq_s16(v642), v641), vmaxq_s16(v642, 0));
  v643 = v1017;
  v644 = vaddq_s16(v1016, v1020);
  v645 = vaddq_s16(v644, v389);
  v646 = vorrq_s8(vandq_s8(vcltzq_s16(v645), v644), vmaxq_s16(v645, 0));
  v647 = vaddq_s32(vmlsl_u16(vmull_u16(*v1016.i8, *v629.i8), *v1020.i8, *v629.i8), v631);
  v648 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1016, v629), v1020, v629), v631);
  v649 = vuzp1q_s16(vmlaq_s32(v647, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v647.i8, *v396.i8), 0x18uLL), vmull_high_u32(v647, v396), 0x18uLL), v397), vmlaq_s32(v648, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v648.i8, *v396.i8), 0x18uLL), vmull_high_u32(v648, v396), 0x18uLL), v397));
  v650 = vaddq_s16(v649, v389);
  v651 = vorrq_s8(vandq_s8(vcltzq_s16(v650), v649), vmaxq_s16(v650, 0));
  v652 = vaddq_s16(v1017, v1021);
  v653 = vaddq_s16(v652, v389);
  v1016 = v646;
  v1017 = vorrq_s8(vandq_s8(vcltzq_s16(v653), v652), vmaxq_s16(v653, 0));
  v654 = vmlsl_high_u16(vmull_high_u16(v643, v629), v1021, v629);
  v655 = vaddq_s32(vmlsl_u16(vmull_u16(*v643.i8, *v629.i8), *v1021.i8, *v629.i8), v631);
  v656 = vaddq_s32(v654, v631);
  v657 = vuzp1q_s16(vmlaq_s32(v655, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v655.i8, *v396.i8), 0x18uLL), vmull_high_u32(v655, v396), 0x18uLL), v397), vmlaq_s32(v656, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v656.i8, *v396.i8), 0x18uLL), vmull_high_u32(v656, v396), 0x18uLL), v397));
  v658 = vaddq_s16(v657, v389);
  v1020 = v651;
  v1021 = vorrq_s8(vandq_s8(vcltzq_s16(v658), v657), vmaxq_s16(v658, 0));
  v659 = v991;
  v660 = vaddq_s16(__dst, v998);
  v661 = vaddq_s16(v660, v389);
  v662 = vorrq_s8(vandq_s8(vcltzq_s16(v661), v660), vmaxq_s16(v661, 0));
  v660.i64[0] = 0x28002800280028;
  v660.i64[1] = 0x28002800280028;
  v663 = vdupq_n_s32(0x20828u);
  v664 = vaddq_s32(vmlsl_u16(vmull_u16(*__dst.i8, 0x28002800280028), *v998.i8, 0x28002800280028), v663);
  v665 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(__dst, v660), v998, v660), v663);
  v666 = vuzp1q_s16(vmlaq_s32(v664, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v664.i8, *v396.i8), 0x18uLL), vmull_high_u32(v664, v396), 0x18uLL), v397), vmlaq_s32(v665, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v665.i8, *v396.i8), 0x18uLL), vmull_high_u32(v665, v396), 0x18uLL), v397));
  v667 = vaddq_s16(v666, v389);
  v668 = vorrq_s8(vandq_s8(vcltzq_s16(v667), v666), vmaxq_s16(v667, 0));
  v669 = vaddq_s16(v991, v999);
  v670 = vaddq_s16(v669, v389);
  __dst = v662;
  v991 = vorrq_s8(vandq_s8(vcltzq_s16(v670), v669), vmaxq_s16(v670, 0));
  v671 = vaddq_s32(vmlsl_u16(vmull_u16(*v659.i8, 0x28002800280028), *v999.i8, 0x28002800280028), v663);
  v672 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v659, v660), v999, v660), v663);
  v673 = vuzp1q_s16(vmlaq_s32(v671, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v671.i8, *v396.i8), 0x18uLL), vmull_high_u32(v671, v396), 0x18uLL), v397), vmlaq_s32(v672, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v672.i8, *v396.i8), 0x18uLL), vmull_high_u32(v672, v396), 0x18uLL), v397));
  v674 = vaddq_s16(v673, v389);
  v998 = v668;
  v999 = vorrq_s8(vandq_s8(vcltzq_s16(v674), v673), vmaxq_s16(v674, 0));
  v675 = v993;
  v676 = vaddq_s16(v992, v1000);
  v677 = vaddq_s16(v676, v389);
  v678 = vorrq_s8(vandq_s8(vcltzq_s16(v677), v676), vmaxq_s16(v677, 0));
  v679 = vaddq_s32(vmlsl_u16(vmull_u16(*v992.i8, 0x28002800280028), *v1000.i8, 0x28002800280028), v663);
  v680 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v992, v660), v1000, v660), v663);
  v681 = vuzp1q_s16(vmlaq_s32(v679, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v679.i8, *v396.i8), 0x18uLL), vmull_high_u32(v679, v396), 0x18uLL), v397), vmlaq_s32(v680, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v680.i8, *v396.i8), 0x18uLL), vmull_high_u32(v680, v396), 0x18uLL), v397));
  v682 = vaddq_s16(v681, v389);
  v683 = vorrq_s8(vandq_s8(vcltzq_s16(v682), v681), vmaxq_s16(v682, 0));
  v684 = vaddq_s16(v993, v1001);
  v685 = vaddq_s16(v684, v389);
  v992 = v678;
  v993 = vorrq_s8(vandq_s8(vcltzq_s16(v685), v684), vmaxq_s16(v685, 0));
  v686 = vaddq_s32(vmlsl_u16(vmull_u16(*v675.i8, 0x28002800280028), *v1001.i8, 0x28002800280028), v663);
  v687 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v675, v660), v1001, v660), v663);
  v688 = vuzp1q_s16(vmlaq_s32(v686, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v686.i8, *v396.i8), 0x18uLL), vmull_high_u32(v686, v396), 0x18uLL), v397), vmlaq_s32(v687, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v687.i8, *v396.i8), 0x18uLL), vmull_high_u32(v687, v396), 0x18uLL), v397));
  v689 = vaddq_s16(v688, v389);
  v1000 = v683;
  v1001 = vorrq_s8(vandq_s8(vcltzq_s16(v689), v688), vmaxq_s16(v689, 0));
  v690 = v995;
  v691 = vaddq_s16(v994, v1002);
  v692 = vaddq_s16(v691, v389);
  v693 = vorrq_s8(vandq_s8(vcltzq_s16(v692), v691), vmaxq_s16(v692, 0));
  v694 = vaddq_s32(vmlsl_u16(vmull_u16(*v994.i8, 0x28002800280028), *v1002.i8, 0x28002800280028), v663);
  v695 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v994, v660), v1002, v660), v663);
  v696 = vuzp1q_s16(vmlaq_s32(v694, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v694.i8, *v396.i8), 0x18uLL), vmull_high_u32(v694, v396), 0x18uLL), v397), vmlaq_s32(v695, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v695.i8, *v396.i8), 0x18uLL), vmull_high_u32(v695, v396), 0x18uLL), v397));
  v697 = vaddq_s16(v696, v389);
  v698 = vorrq_s8(vandq_s8(vcltzq_s16(v697), v696), vmaxq_s16(v697, 0));
  v699 = vaddq_s16(v995, v1003);
  v700 = vaddq_s16(v699, v389);
  v994 = v693;
  v995 = vorrq_s8(vandq_s8(vcltzq_s16(v700), v699), vmaxq_s16(v700, 0));
  v701 = vaddq_s32(vmlsl_u16(vmull_u16(*v690.i8, 0x28002800280028), *v1003.i8, 0x28002800280028), v663);
  v702 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v690, v660), v1003, v660), v663);
  v703 = vuzp1q_s16(vmlaq_s32(v701, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v701.i8, *v396.i8), 0x18uLL), vmull_high_u32(v701, v396), 0x18uLL), v397), vmlaq_s32(v702, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v702.i8, *v396.i8), 0x18uLL), vmull_high_u32(v702, v396), 0x18uLL), v397));
  v704 = vaddq_s16(v703, v389);
  v1002 = v698;
  v1003 = vorrq_s8(vandq_s8(vcltzq_s16(v704), v703), vmaxq_s16(v704, 0));
  v705 = v997;
  v706 = vaddq_s16(v996, v1004);
  v707 = vaddq_s16(v706, v389);
  v708 = vorrq_s8(vandq_s8(vcltzq_s16(v707), v706), vmaxq_s16(v707, 0));
  v709 = vaddq_s32(vmlsl_u16(vmull_u16(*v996.i8, 0x28002800280028), *v1004.i8, 0x28002800280028), v663);
  v710 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v996, v660), v1004, v660), v663);
  v711 = vuzp1q_s16(vmlaq_s32(v709, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v709.i8, *v396.i8), 0x18uLL), vmull_high_u32(v709, v396), 0x18uLL), v397), vmlaq_s32(v710, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v710.i8, *v396.i8), 0x18uLL), vmull_high_u32(v710, v396), 0x18uLL), v397));
  v712 = vaddq_s16(v711, v389);
  v713 = vorrq_s8(vandq_s8(vcltzq_s16(v712), v711), vmaxq_s16(v712, 0));
  v714 = vaddq_s16(v997, v1005);
  v715 = vaddq_s16(v714, v389);
  v996 = v708;
  v997 = vorrq_s8(vandq_s8(vcltzq_s16(v715), v714), vmaxq_s16(v715, 0));
  v716 = vmlsl_high_u16(vmull_high_u16(v705, v660), v1005, v660);
  v717 = vaddq_s32(vmlsl_u16(vmull_u16(*v705.i8, 0x28002800280028), *v1005.i8, 0x28002800280028), v663);
  v718 = vaddq_s32(v716, v663);
  v719 = vuzp1q_s16(vmlaq_s32(v717, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v717.i8, *v396.i8), 0x18uLL), vmull_high_u32(v717, v396), 0x18uLL), v397), vmlaq_s32(v718, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v718.i8, *v396.i8), 0x18uLL), vmull_high_u32(v718, v396), 0x18uLL), v397));
  v720 = vaddq_s16(v719, v389);
  v1004 = v713;
  v1005 = vorrq_s8(vandq_s8(vcltzq_s16(v720), v719), vmaxq_s16(v720, 0));
  v721 = v1007;
  v722 = vaddq_s16(v1006, v1014);
  v723 = vaddq_s16(v722, v389);
  v724 = vorrq_s8(vandq_s8(vcltzq_s16(v723), v722), vmaxq_s16(v723, 0));
  v725 = vdupq_n_s16(0x2EDu);
  v726 = vdupq_n_s32(0x260BEDu);
  v727 = vaddq_s32(vmlsl_u16(vmull_u16(*v1006.i8, *v725.i8), *v1014.i8, *v725.i8), v726);
  v728 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1006, v725), v1014, v725), v726);
  v729 = vuzp1q_s16(vmlaq_s32(v727, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v727.i8, *v396.i8), 0x18uLL), vmull_high_u32(v727, v396), 0x18uLL), v397), vmlaq_s32(v728, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v728.i8, *v396.i8), 0x18uLL), vmull_high_u32(v728, v396), 0x18uLL), v397));
  v730 = vaddq_s16(v729, v389);
  v731 = vorrq_s8(vandq_s8(vcltzq_s16(v730), v729), vmaxq_s16(v730, 0));
  v732 = vaddq_s16(v1007, v1015);
  v733 = vaddq_s16(v732, v389);
  v1006 = v724;
  v1007 = vorrq_s8(vandq_s8(vcltzq_s16(v733), v732), vmaxq_s16(v733, 0));
  v734 = vaddq_s32(vmlsl_u16(vmull_u16(*v721.i8, *v725.i8), *v1015.i8, *v725.i8), v726);
  v735 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v721, v725), v1015, v725), v726);
  v736 = vuzp1q_s16(vmlaq_s32(v734, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v734.i8, *v396.i8), 0x18uLL), vmull_high_u32(v734, v396), 0x18uLL), v397), vmlaq_s32(v735, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v735.i8, *v396.i8), 0x18uLL), vmull_high_u32(v735, v396), 0x18uLL), v397));
  v737 = vaddq_s16(v736, v389);
  v1014 = v731;
  v1015 = vorrq_s8(vandq_s8(vcltzq_s16(v737), v736), vmaxq_s16(v737, 0));
  v738 = v1009;
  v739 = vaddq_s16(v1008, v1016);
  v740 = vaddq_s16(v739, v389);
  v741 = vorrq_s8(vandq_s8(vcltzq_s16(v740), v739), vmaxq_s16(v740, 0));
  v742 = vaddq_s32(vmlsl_u16(vmull_u16(*v1008.i8, *v725.i8), *v1016.i8, *v725.i8), v726);
  v743 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1008, v725), v1016, v725), v726);
  v744 = vuzp1q_s16(vmlaq_s32(v742, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v742.i8, *v396.i8), 0x18uLL), vmull_high_u32(v742, v396), 0x18uLL), v397), vmlaq_s32(v743, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v743.i8, *v396.i8), 0x18uLL), vmull_high_u32(v743, v396), 0x18uLL), v397));
  v745 = vaddq_s16(v744, v389);
  v746 = vorrq_s8(vandq_s8(vcltzq_s16(v745), v744), vmaxq_s16(v745, 0));
  v747 = vaddq_s16(v1009, v1017);
  v748 = vaddq_s16(v747, v389);
  v1008 = v741;
  v1009 = vorrq_s8(vandq_s8(vcltzq_s16(v748), v747), vmaxq_s16(v748, 0));
  v749 = vaddq_s32(vmlsl_u16(vmull_u16(*v738.i8, *v725.i8), *v1017.i8, *v725.i8), v726);
  v750 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v738, v725), v1017, v725), v726);
  v751 = vuzp1q_s16(vmlaq_s32(v749, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v749.i8, *v396.i8), 0x18uLL), vmull_high_u32(v749, v396), 0x18uLL), v397), vmlaq_s32(v750, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v750.i8, *v396.i8), 0x18uLL), vmull_high_u32(v750, v396), 0x18uLL), v397));
  v752 = vaddq_s16(v751, v389);
  v1016 = v746;
  v1017 = vorrq_s8(vandq_s8(vcltzq_s16(v752), v751), vmaxq_s16(v752, 0));
  v753 = v1011;
  v754 = vaddq_s16(v1010, v1018);
  v755 = vaddq_s16(v754, v389);
  v756 = vorrq_s8(vandq_s8(vcltzq_s16(v755), v754), vmaxq_s16(v755, 0));
  v757 = vaddq_s32(vmlsl_u16(vmull_u16(*v1010.i8, *v725.i8), *v1018.i8, *v725.i8), v726);
  v758 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1010, v725), v1018, v725), v726);
  v759 = vuzp1q_s16(vmlaq_s32(v757, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v757.i8, *v396.i8), 0x18uLL), vmull_high_u32(v757, v396), 0x18uLL), v397), vmlaq_s32(v758, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v758.i8, *v396.i8), 0x18uLL), vmull_high_u32(v758, v396), 0x18uLL), v397));
  v760 = vaddq_s16(v759, v389);
  v761 = vorrq_s8(vandq_s8(vcltzq_s16(v760), v759), vmaxq_s16(v760, 0));
  v762 = vaddq_s16(v1011, v1019);
  v763 = vaddq_s16(v762, v389);
  v1010 = v756;
  v1011 = vorrq_s8(vandq_s8(vcltzq_s16(v763), v762), vmaxq_s16(v763, 0));
  v764 = vaddq_s32(vmlsl_u16(vmull_u16(*v753.i8, *v725.i8), *v1019.i8, *v725.i8), v726);
  v765 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v753, v725), v1019, v725), v726);
  v766 = vuzp1q_s16(vmlaq_s32(v764, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v764.i8, *v396.i8), 0x18uLL), vmull_high_u32(v764, v396), 0x18uLL), v397), vmlaq_s32(v765, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v765.i8, *v396.i8), 0x18uLL), vmull_high_u32(v765, v396), 0x18uLL), v397));
  v767 = vaddq_s16(v766, v389);
  v1018 = v761;
  v1019 = vorrq_s8(vandq_s8(vcltzq_s16(v767), v766), vmaxq_s16(v767, 0));
  v768 = v1013;
  v769 = vaddq_s16(v1012, v1020);
  v770 = vaddq_s16(v769, v389);
  v771 = vorrq_s8(vandq_s8(vcltzq_s16(v770), v769), vmaxq_s16(v770, 0));
  v772 = vaddq_s32(vmlsl_u16(vmull_u16(*v1012.i8, *v725.i8), *v1020.i8, *v725.i8), v726);
  v773 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1012, v725), v1020, v725), v726);
  v774 = vuzp1q_s16(vmlaq_s32(v772, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v772.i8, *v396.i8), 0x18uLL), vmull_high_u32(v772, v396), 0x18uLL), v397), vmlaq_s32(v773, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v773.i8, *v396.i8), 0x18uLL), vmull_high_u32(v773, v396), 0x18uLL), v397));
  v775 = vaddq_s16(v774, v389);
  v776 = vorrq_s8(vandq_s8(vcltzq_s16(v775), v774), vmaxq_s16(v775, 0));
  v777 = vaddq_s16(v1013, v1021);
  v778 = vaddq_s16(v777, v389);
  v1012 = v771;
  v1013 = vorrq_s8(vandq_s8(vcltzq_s16(v778), v777), vmaxq_s16(v778, 0));
  v779 = vmlsl_high_u16(vmull_high_u16(v768, v725), v1021, v725);
  v780 = vaddq_s32(vmlsl_u16(vmull_u16(*v768.i8, *v725.i8), *v1021.i8, *v725.i8), v726);
  v781 = vaddq_s32(v779, v726);
  v782 = vuzp1q_s16(vmlaq_s32(v780, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v780.i8, *v396.i8), 0x18uLL), vmull_high_u32(v780, v396), 0x18uLL), v397), vmlaq_s32(v781, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v781.i8, *v396.i8), 0x18uLL), vmull_high_u32(v781, v396), 0x18uLL), v397));
  v783 = vaddq_s16(v782, v389);
  v1020 = v776;
  v1021 = vorrq_s8(vandq_s8(vcltzq_s16(v783), v782), vmaxq_s16(v783, 0));
  do
  {
    v784 = &__dst.i8[v386];
    v785 = *(&v1006 + v386);
    v786 = *(&__dst + v386);
    v787 = vaddq_s16(v786, v785);
    v788 = vaddq_s16(v787, v389);
    v789 = vdupq_n_s16(0x640u);
    v790 = vmlsl_high_u16(vmull_high_u16(v786, v789), v785, v789);
    v791 = vmlsl_u16(vmull_u16(*v786.i8, *v789.i8), *v785.i8, *v789.i8);
    v792 = vdupq_n_s32(0x514640u);
    v793 = vaddq_s32(v791, v792);
    v794 = vaddq_s32(v790, v792);
    v795 = vuzp1q_s16(vmlaq_s32(v793, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v793.i8, *v396.i8), 0x18uLL), vmull_high_u32(v793, v396), 0x18uLL), v397), vmlaq_s32(v794, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v794.i8, *v396.i8), 0x18uLL), vmull_high_u32(v794, v396), 0x18uLL), v397));
    v796 = vaddq_s16(v795, v389);
    *v784 = vorrq_s8(vandq_s8(vcltzq_s16(v788), v787), vmaxq_s16(v788, 0));
    v784[16] = vorrq_s8(vandq_s8(vcltzq_s16(v796), v795), vmaxq_s16(v796, 0));
    v386 += 16;
  }

  while (v386 != 256);
  v797 = 0;
  v798 = vdupq_n_s16(0xCE7u);
  v799 = vdupq_n_s32(0x13AFu);
  v800.i64[0] = 0xF2000000F2;
  v800.i64[1] = 0xF2000000F2;
  v801.i64[0] = 0xD000D000D000D00;
  v801.i64[1] = 0xD000D000D000D00;
  do
  {
    v802 = *(&__dst + v797);
    v803 = vmull_u16(*v802.i8, *v798.i8);
    v804 = vmull_high_u16(v802, v798);
    v805 = vuzp1q_s16(vmlal_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v803.i8, *v799.i8), 0x18uLL), vmull_high_u32(v803, v799), 0x18uLL), v800), *v802.i8, *v798.i8), vmlal_high_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v804.i8, *v799.i8), 0x18uLL), vmull_high_u32(v804, v799), 0x18uLL), v800), v802, v798));
    v806 = vaddq_s16(v805, v801);
    *(&__dst + v797) = vorrq_s8(vandq_s8(vcltzq_s16(v806), v805), vmaxq_s16(v806, 0));
    v797 += 16;
  }

  while (v797 != 512);
  v807 = 0;
  v808 = &v859;
  v809 = vdupq_n_s16(0xD01u);
  do
  {
    v810 = vsubq_s16(v808[-1], *(&__dst + v807));
    v811 = vsubq_s16(*v808, *(&__dst + v807 + 16));
    v808[-1] = vorrq_s8(vandq_s8(vcltzq_s16(v810), vaddq_s16(v810, v809)), vmaxq_s16(v810, 0));
    *v808 = vorrq_s8(vandq_s8(vcltzq_s16(v811), vaddq_s16(v811, v809)), vmaxq_s16(v811, 0));
    v808 += 2;
    v807 += 32;
  }

  while (v807 != 512);
  v812 = 0;
  v813 = vdupq_n_s16(0x275Eu);
  v814.i64[0] = 0xD0000000D00;
  v814.i64[1] = 0xD0000000D00;
  v815 = vdupq_n_s32(0x680u);
  v816 = vdupq_n_s32(0x1381u);
  v817.i64[0] = 0x1000100010001;
  v817.i64[1] = 0x1000100010001;
  do
  {
    v818 = *(&v858 + v812);
    v819 = vshll_high_n_u16(v818, 1uLL);
    v820 = vshll_n_u16(*v818.i8, 1uLL);
    v821 = vmull_high_u16(v818, v813);
    v822 = vshrq_n_u32(vmull_u16(*v818.i8, *v813.i8), 0x18uLL);
    v823 = vshrq_n_u32(v821, 0x18uLL);
    v824 = vmlaq_s32(v820, v822, v814);
    v825 = vmlaq_s32(v819, v823, v814);
    *(&v858 + v812) = vandq_s8(veorq_s8(vuzp1q_s16(vcgtq_u32(v824, v816), vcgtq_u32(v825, v816)), veorq_s8(vuzp1q_s16(vcgtq_u32(v824, v815), vcgtq_u32(v825, v815)), vuzp1q_s16(v822, v823))), v817);
    v812 += 16;
  }

  while (v812 != 512);
  v826 = 0;
  v827.i64[0] = 0x101010101010101;
  v827.i64[1] = 0x101010101010101;
  v828 = &v866;
  v829.i64[0] = 0x202020202020202;
  v829.i64[1] = 0x202020202020202;
  v830.i64[0] = 0x404040404040404;
  v830.i64[1] = 0x404040404040404;
  v831.i64[0] = 0x808080808080808;
  v831.i64[1] = 0x808080808080808;
  v832.i64[0] = 0x1010101010101010;
  v832.i64[1] = 0x1010101010101010;
  v833.i64[0] = 0x2020202020202020;
  v833.i64[1] = 0x2020202020202020;
  v834.i64[0] = 0x4040404040404040;
  v834.i64[1] = 0x4040404040404040;
  do
  {
    v835.i8[0] = v828[-8].i8[0];
    v835.i8[1] = v828[-7].i8[0];
    v836.i8[0] = v828[-8].i8[2];
    v836.i8[1] = v828[-7].i8[2];
    v835.i8[2] = v828[-6].i8[0];
    v836.i8[2] = v828[-6].i8[2];
    v835.i8[3] = v828[-5].i8[0];
    v836.i8[3] = v828[-5].i8[2];
    v835.i8[4] = v828[-4].i8[0];
    v837.i8[0] = v828[-8].i8[4];
    v836.i8[4] = v828[-4].i8[2];
    v837.i8[1] = v828[-7].i8[4];
    v835.i8[5] = v828[-3].i8[0];
    v837.i8[2] = v828[-6].i8[4];
    v836.i8[5] = v828[-3].i8[2];
    v837.i8[3] = v828[-5].i8[4];
    v835.i8[6] = v828[-2].i8[0];
    v837.i8[4] = v828[-4].i8[4];
    v836.i8[6] = v828[-2].i8[2];
    v837.i8[5] = v828[-3].i8[4];
    v835.i8[7] = v828[-1].i8[0];
    v837.i8[6] = v828[-2].i8[4];
    v836.i8[7] = v828[-1].i8[2];
    v838.i8[0] = v828[-8].i8[6];
    v838.i8[1] = v828[-7].i8[6];
    v837.i8[7] = v828[-1].i8[4];
    v838.i8[2] = v828[-6].i8[6];
    v835.i8[8] = v828->i8[0];
    v838.i8[3] = v828[-5].i8[6];
    v836.i8[8] = v828->i8[2];
    v838.i8[4] = v828[-4].i8[6];
    v837.i8[8] = v828->i8[4];
    v838.i8[5] = v828[-3].i8[6];
    v835.i8[9] = v828[1].i8[0];
    v838.i8[6] = v828[-2].i8[6];
    v836.i8[9] = v828[1].i8[2];
    v838.i8[7] = v828[-1].i8[6];
    v837.i8[9] = v828[1].i8[4];
    v838.i8[8] = v828->i8[6];
    v835.i8[10] = v828[2].i8[0];
    v838.i8[9] = v828[1].i8[6];
    v836.i8[10] = v828[2].i8[2];
    v839.i8[0] = v828[-8].i8[8];
    v839.i8[1] = v828[-7].i8[8];
    v837.i8[10] = v828[2].i8[4];
    v839.i8[2] = v828[-6].i8[8];
    v838.i8[10] = v828[2].i8[6];
    v839.i8[3] = v828[-5].i8[8];
    v835.i8[11] = v828[3].i8[0];
    v839.i8[4] = v828[-4].i8[8];
    v836.i8[11] = v828[3].i8[2];
    v839.i8[5] = v828[-3].i8[8];
    v837.i8[11] = v828[3].i8[4];
    v839.i8[6] = v828[-2].i8[8];
    v838.i8[11] = v828[3].i8[6];
    v839.i8[7] = v828[-1].i8[8];
    v835.i8[12] = v828[4].i8[0];
    v839.i8[8] = v828->i8[8];
    v836.i8[12] = v828[4].i8[2];
    v839.i8[9] = v828[1].i8[8];
    v837.i8[12] = v828[4].i8[4];
    v839.i8[10] = v828[2].i8[8];
    v838.i8[12] = v828[4].i8[6];
    v839.i8[11] = v828[3].i8[8];
    v835.i8[13] = v828[5].i8[0];
    v839.i8[12] = v828[4].i8[8];
    v836.i8[13] = v828[5].i8[2];
    v840.i8[0] = v828[-8].i8[10];
    v837.i8[13] = v828[5].i8[4];
    v840.i8[1] = v828[-7].i8[10];
    v838.i8[13] = v828[5].i8[6];
    v840.i8[2] = v828[-6].i8[10];
    v839.i8[13] = v828[5].i8[8];
    v840.i8[3] = v828[-5].i8[10];
    v835.i8[14] = v828[6].i8[0];
    v840.i8[4] = v828[-4].i8[10];
    v836.i8[14] = v828[6].i8[2];
    v840.i8[5] = v828[-3].i8[10];
    v837.i8[14] = v828[6].i8[4];
    v840.i8[6] = v828[-2].i8[10];
    v838.i8[14] = v828[6].i8[6];
    v840.i8[7] = v828[-1].i8[10];
    v840.i8[8] = v828->i8[10];
    v839.i8[14] = v828[6].i8[8];
    v840.i8[9] = v828[1].i8[10];
    v840.i8[10] = v828[2].i8[10];
    v835.i8[15] = v828[7].i8[0];
    v840.i8[11] = v828[3].i8[10];
    v840.i8[12] = v828[4].i8[10];
    v836.i8[15] = v828[7].i8[2];
    v840.i8[13] = v828[5].i8[10];
    v837.i8[15] = v828[7].i8[4];
    v840.i8[14] = v828[6].i8[10];
    v838.i8[15] = v828[7].i8[6];
    v839.i8[15] = v828[7].i8[8];
    v841.i8[0] = v828[-8].i8[12];
    v841.i8[1] = v828[-7].i8[12];
    v840.i8[15] = v828[7].i8[10];
    v841.i8[2] = v828[-6].i8[12];
    v841.i8[3] = v828[-5].i8[12];
    v841.i8[4] = v828[-4].i8[12];
    v841.i8[5] = v828[-3].i8[12];
    v841.i8[6] = v828[-2].i8[12];
    v841.i8[7] = v828[-1].i8[12];
    v841.i8[8] = v828->i8[12];
    v841.i8[9] = v828[1].i8[12];
    v841.i8[10] = v828[2].i8[12];
    v841.i8[11] = v828[3].i8[12];
    v841.i8[12] = v828[4].i8[12];
    v841.i8[13] = v828[5].i8[12];
    v841.i8[14] = v828[6].i8[12];
    v841.i8[15] = v828[7].i8[12];
    v842.i8[0] = v828[-8].i8[14];
    v842.i8[1] = v828[-7].i8[14];
    v842.i8[2] = v828[-6].i8[14];
    v842.i8[3] = v828[-5].i8[14];
    v842.i8[4] = v828[-4].i8[14];
    v842.i8[5] = v828[-3].i8[14];
    v842.i8[6] = v828[-2].i8[14];
    v842.i8[7] = v828[-1].i8[14];
    v842.i8[8] = v828->i8[14];
    v842.i8[9] = v828[1].i8[14];
    v842.i8[10] = v828[2].i8[14];
    v842.i8[11] = v828[3].i8[14];
    v842.i8[12] = v828[4].i8[14];
    v842.i8[13] = v828[5].i8[14];
    v842.i8[14] = v828[6].i8[14];
    v842.i8[15] = v828[7].i8[14];
    *&v987[v826] = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vandq_s8(vaddq_s8(v836, v836), v829), vandq_s8(v835, v827)), vorrq_s8(vandq_s8(vshlq_n_s8(v837, 2uLL), v830), vandq_s8(vshlq_n_s8(v838, 3uLL), v831))), vorrq_s8(vorrq_s8(vandq_s8(vshlq_n_s8(v839, 4uLL), v832), vandq_s8(vshlq_n_s8(v840, 5uLL), v833)), vandq_s8(vshlq_n_s8(v841, 6uLL), v834))), vshlq_n_s8(v842, 7uLL));
    v826 += 16;
    v828 += 16;
  }

  while (v826 != 32);
  v843 = *(a3 + 1584);
  v988 = *(a3 + 1568);
  v989 = v843;
  v904.i64[0] = 0;
  v905 = 0u;
  v903 = 0u;
  v902 = 0u;
  v901 = 0u;
  v900 = 0u;
  v899 = 0u;
  v897 = 0u;
  v898 = 0u;
  v895 = 0u;
  v896 = 0u;
  v893 = 0u;
  v894 = 0u;
  v892 = 0u;
  v891.i64[0] = 1;
  v891.i64[1] = 64;
  v904.i64[1] = 72;
  BORINGSSL_keccak_absorb(&v891, v987, 0x40uLL);
  BORINGSSL_keccak_squeeze(v891.i32, __dst.i8, 0x40uLL);
  v871.i64[0] = 0;
  v872 = 0u;
  v869 = 0u;
  v870 = 0u;
  v867 = 0u;
  v868 = 0u;
  v865 = 0u;
  v866 = 0u;
  v863 = 0u;
  v864 = 0u;
  v861 = 0u;
  v862 = 0u;
  v859 = 0u;
  v860 = 0u;
  v858 = 3uLL;
  v871.i64[1] = 136;
  BORINGSSL_keccak_absorb(&v858, (a3 + 7744), 0x20uLL);
  BORINGSSL_keccak_absorb(&v858, a2, 0x440uLL);
  result = BORINGSSL_keccak_squeeze(v858.i32, v890[0].i8, 0x20uLL);
  v845 = 0uLL;
  v846 = 0;
  v847 = (a2 + 16);
  v848 = 0uLL;
  do
  {
    v845 = vorrq_s8(veorq_s8(*(&v891 + v846), v847[-1]), v845);
    v848 = vorrq_s8(veorq_s8(*(&v891 + v846 + 16), *v847), v848);
    v846 += 32;
    v847 += 2;
  }

  while (v846 != 1088);
  v849 = vorrq_s8(v848, v845);
  v850 = 255;
  if (vorr_s8(*v849.i8, *&vextq_s8(v849, v849, 8uLL)))
  {
    v850 = 0;
  }

  v851 = vdupq_n_s8(v850);
  v852 = vdupq_n_s8(~v850);
  v853 = vorrq_s8(vandq_s8(v890[0], v852), vandq_s8(__dst, v851));
  v854 = vorrq_s8(vandq_s8(v890[1], v852), vandq_s8(v991, v851));
  *a1 = v853;
  a1[1] = v854;
  return result;
}

uint64_t CTR_DRBG_generate(uint64_t a1, char *a2, size_t a3, int8x16_t *a4, unint64_t a5)
{
  v44 = *MEMORY[0x277D85DE8];
  if (*(a1 + 280) > 0x1000000000000uLL)
  {
    return 0;
  }

  if (a5)
  {
    v11 = (a1 + 264);
    *(a1 + 276) = bswap32(bswap32(*(a1 + 276)) + 1);
    (*(a1 + 248))(a1 + 264, &__src, a1);
    *(a1 + 276) = bswap32(bswap32(*(a1 + 276)) + 1);
    (*(a1 + 248))(a1 + 264, v42, a1);
    *(a1 + 276) = bswap32(bswap32(*(a1 + 276)) + 1);
    (*(a1 + 248))(a1 + 264, &v43, a1);
    if (a5 < 8)
    {
      v12 = 0;
LABEL_15:
      v22 = a5 - v12;
      v23 = &__src.i8[v12];
      v24 = &a4->i8[v12];
      do
      {
        v25 = *v24++;
        *v23++ ^= v25;
        --v22;
      }

      while (v22);
LABEL_17:
      aes_nohw_set_encrypt_key(&__src, 256, a1);
      *(a1 + 248) = aes_nohw_encrypt;
      *(a1 + 256) = aes_nohw_ctr32_encrypt_blocks;
      *v11 = v43;
      goto LABEL_18;
    }

    if (a5 >= 0x20)
    {
      v12 = a5 & 0xFFFFFFFFFFFFFFE0;
      v13 = a4 + 1;
      v14 = v42;
      v15 = a5 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v16 = veorq_s8(*v14, *v13);
        v14[-1] = veorq_s8(v14[-1], v13[-1]);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 32;
      }

      while (v15);
      if (v12 == a5)
      {
        goto LABEL_17;
      }

      if ((a5 & 0x18) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v12 = 0;
    }

    v17 = v12;
    v12 = a5 & 0xFFFFFFFFFFFFFFF8;
    v18 = &a4->i8[v17];
    v19 = &__src.i8[v17];
    v20 = v17 - (a5 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v21 = *v18++;
      *v19 = veor_s8(*v19, v21);
      ++v19;
      v20 += 8;
    }

    while (v20);
    if (v12 == a5)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

LABEL_18:
  if (a3 >= 0x10)
  {
    do
    {
      if (a3 >= 0x2000)
      {
        v26 = 0x2000;
      }

      else
      {
        v26 = a3 & 0x1FF0;
      }

      if (v26)
      {
        bzero(a2, v26);
      }

      *(a1 + 276) = bswap32(bswap32(*(a1 + 276)) + 1);
      (*(a1 + 256))(a2, a2, v26 >> 4, a1, a1 + 264);
      *(a1 + 276) = bswap32((v26 >> 4) + bswap32(*(a1 + 276)) - 1);
      a2 += v26;
      a3 -= v26;
    }

    while (a3 > 0xF);
  }

  if (a3)
  {
    *(a1 + 276) = bswap32(bswap32(*(a1 + 276)) + 1);
    (*(a1 + 248))(a1 + 264, &__src, a1);
    memcpy(a2, &__src, a3);
  }

  *(a1 + 276) = bswap32(bswap32(*(a1 + 276)) + 1);
  (*(a1 + 248))(a1 + 264, &__src, a1);
  *(a1 + 276) = bswap32(bswap32(*(a1 + 276)) + 1);
  (*(a1 + 248))(a1 + 264, v42, a1);
  *(a1 + 276) = bswap32(bswap32(*(a1 + 276)) + 1);
  (*(a1 + 248))(a1 + 264, &v43, a1);
  if (!a5)
  {
    goto LABEL_42;
  }

  if (a5 >= 8)
  {
    if (a5 >= 0x20)
    {
      v27 = a5 & 0xFFFFFFFFFFFFFFE0;
      v28 = a4 + 1;
      v29 = v42;
      v30 = a5 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v31 = veorq_s8(*v29, *v28);
        v29[-1] = veorq_s8(v29[-1], v28[-1]);
        *v29 = v31;
        v28 += 2;
        v29 += 2;
        v30 -= 32;
      }

      while (v30);
      if (v27 == a5)
      {
        goto LABEL_42;
      }

      if ((a5 & 0x18) == 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v27 = 0;
    }

    v32 = v27;
    v27 = a5 & 0xFFFFFFFFFFFFFFF8;
    v33 = &a4->i8[v32];
    v34 = &__src.i8[v32];
    v35 = v32 - (a5 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v36 = *v33++;
      *v34 = veor_s8(*v34, v36);
      ++v34;
      v35 += 8;
    }

    while (v35);
    if (v27 == a5)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  v27 = 0;
LABEL_40:
  v37 = a5 - v27;
  v38 = &__src.i8[v27];
  v39 = &a4->i8[v27];
  do
  {
    v40 = *v39++;
    *v38++ ^= v40;
    --v37;
  }

  while (v37);
LABEL_42:
  aes_nohw_set_encrypt_key(&__src, 256, a1);
  *(a1 + 248) = aes_nohw_encrypt;
  *(a1 + 256) = aes_nohw_ctr32_encrypt_blocks;
  *(a1 + 264) = v43;
  ++*(a1 + 280);
  return 1;
}

void rand_thread_state_free(void *a1)
{
  if (a1)
  {
    v3 = *(a1 - 1);
    v2 = (a1 - 1);
    v4 = v3 + 8;
    if (v3 != -8)
    {
      v5 = v2;
      bzero(v2, v4);
      v2 = v5;
    }

    free(v2);
  }
}

void BN_BLINDING_free(ECDSA_SIG *a)
{
  if (!a)
  {
    return;
  }

  r = a->r;
  if (a->r)
  {
    flags = r->flags;
    if ((flags & 2) == 0)
    {
      d = r->d;
      if (r->d)
      {
        v6 = *(d - 1);
        v5 = d - 1;
        v7 = v6 + 8;
        if (v6 != -8)
        {
          bzero(v5, v7);
        }

        free(v5);
        flags = r->flags;
      }
    }

    if (flags)
    {
      v10 = *&r[-1].neg;
      p_neg = &r[-1].neg;
      v11 = v10 + 8;
      if (v10 != -8)
      {
        bzero(p_neg, v11);
      }

      free(p_neg);
      s = a->s;
      if (!s)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

    r->d = 0;
  }

  s = a->s;
  if (!s)
  {
    goto LABEL_23;
  }

LABEL_16:
  v12 = s->flags;
  if ((v12 & 2) == 0)
  {
    v13 = s->d;
    if (s->d)
    {
      v15 = *(v13 - 1);
      v14 = v13 - 1;
      v16 = v15 + 8;
      if (v15 != -8)
      {
        bzero(v14, v16);
      }

      free(v14);
      v12 = s->flags;
    }
  }

  if (v12)
  {
    v21 = *&s[-1].neg;
    v20 = &s[-1].neg;
    v22 = v21 + 8;
    if (v21 != -8)
    {
      bzero(v20, v22);
    }

    free(v20);
    v23 = a[-1].s;
    p_s = &a[-1].s;
    p_top = &v23->top;
    if (v23 == -8)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  s->d = 0;
LABEL_23:
  v18 = a[-1].s;
  p_s = &a[-1].s;
  p_top = &v18->top;
  if (v18 != -8)
  {
LABEL_24:
    bzero(p_s, p_top);
  }

LABEL_25:

  free(p_s);
}

int BN_BLINDING_convert(BIGNUM *n, BN_BLINDING *b, BN_CTX *ctx)
{
  v5 = v4;
  v6 = v3;
  v9 = *(b + 4) + 1;
  *(b + 4) = v9;
  if (v9 == 32)
  {
    if (BN_rand_range_ex(*b, 1uLL, &v3->RR.neg) && BN_from_montgomery(*(b + 1), *b, v6, v5))
    {
      v11 = *(b + 1);
      if (v11->neg || v6->N.top || BN_ucmp(*(b + 1), &v6->RR.neg) >= 0)
      {
        v12 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/gcd.cc.inc";
        v13 = 3;
        v14 = 107;
        v15 = 224;
      }

      else
      {
        v18 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
        if (v18)
        {
          v19 = v18;
          *v18 = 24;
          v18[1] = 0;
          v20 = (v18 + 1);
          v18[2] = 0;
          v18[3] = 0x100000000;
          v21 = 1;
          if (BN_rand_range_ex((v18 + 1), 1uLL, &v6->RR.neg))
          {
            v21 = !BN_mod_mul_montgomery(v11, v20, v11, v6, v5) || !BN_mod_inverse_odd(v11, &v27, v11, &v6->RR.neg, v5) || BN_mod_mul_montgomery(v11, v20, v11, v6, v5) == 0;
          }

          v22 = v19[7];
          if ((v22 & 2) == 0)
          {
            d = v20->d;
            if (v20->d)
            {
              v25 = *(d - 1);
              v24 = d - 1;
              v26 = v25 + 8;
              if (v25 != -8)
              {
                bzero(v24, v26);
              }

              free(v24);
              v22 = v19[7];
            }
          }

          if (v22)
          {
            free(v19);
          }

          else
          {
            v20->d = 0;
          }

          if (!v21 && BN_mod_exp_mont(*b, *b, ctx, &v6->RR.neg, v5, v6) && BN_mod_mul_montgomery(*b, *b, v6, v6, v5))
          {
            *(b + 4) = 0;
            goto LABEL_10;
          }

          goto LABEL_7;
        }

        v12 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
        v13 = 14;
        v14 = 65;
        v15 = 217;
      }

      ERR_put_error(v13, 0, v14, v12, v15);
    }

LABEL_7:
    ERR_put_error(4, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/blinding.cc.inc", 142);
LABEL_13:
    *(b + 4) = 31;
    return 0;
  }

  if (!BN_mod_mul_montgomery(*b, *b, *b, v3, v4) || !BN_mod_mul_montgomery(*(b + 1), *(b + 1), *(b + 1), v6, v5))
  {
    goto LABEL_13;
  }

LABEL_10:
  v16 = *b;

  return BN_mod_mul_montgomery(n, n, v16, v6, v5);
}

int RSA_padding_check_PKCS1_type_1(unsigned __int8 *to, int tlen, const unsigned __int8 *f, int fl, int rsa_len)
{
  if (*&rsa_len <= 1uLL)
  {
    ERR_put_error(4, 0, 116, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/padding.cc.inc", 59);
    return 0;
  }

  if (**&fl || *(*&fl + 1) != 1)
  {
    ERR_put_error(4, 0, 107, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/padding.cc.inc", 65);
    return 0;
  }

  v6 = *&rsa_len - 2;
  if (*&rsa_len == 2)
  {
    goto LABEL_13;
  }

  v7 = 0;
  while (*(*&fl + v7 + 2) == 255)
  {
    if (v6 == ++v7)
    {
      goto LABEL_13;
    }
  }

  if (*(*&fl + v7 + 2))
  {
    ERR_put_error(4, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/padding.cc.inc", 77);
    return 0;
  }

  else
  {
    if (v6 == v7)
    {
LABEL_13:
      ERR_put_error(4, 0, 131, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/padding.cc.inc", 83);
      return 0;
    }

    if ((v7 + 2) > 9)
    {
      v8 = *&rsa_len - v7 - 3;
      if (v8 <= f)
      {
        if (*&rsa_len - 3 != v7)
        {
          v9 = *&tlen;
          memcpy(to, (*&fl + v7 + 3), v8);
          *&tlen = v9;
        }

        **&tlen = v8;
        return 1;
      }

      else
      {
        ERR_put_error(4, 0, 113, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/padding.cc.inc", 96);
        return 0;
      }
    }

    else
    {
      ERR_put_error(4, 0, 103, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/padding.cc.inc", 88);
      return 0;
    }
  }
}

int RSA_padding_add_none(unsigned __int8 *to, int tlen, const unsigned __int8 *f, int fl)
{
  if (*&fl <= *&tlen)
  {
    if (*&fl >= *&tlen)
    {
      if (*&fl)
      {
        memcpy(to, f, *&fl);
      }

      return 1;
    }

    else
    {
      ERR_put_error(4, 0, 116, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/padding.cc.inc", 113);
      return 0;
    }
  }

  else
  {
    ERR_put_error(4, 0, 114, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/padding.cc.inc", 108);
    return 0;
  }
}

int PKCS1_MGF1(unsigned __int8 *mask, uint64_t len, const unsigned __int8 *seed, uint64_t seedlen, const EVP_MD *dgst)
{
  v30 = *MEMORY[0x277D85DE8];
  *v27 = 0u;
  v28 = 0u;
  if (len)
  {
    v8 = len;
    v10 = 0;
    pkey_type = dgst->pkey_type;
    do
    {
      v26 = bswap32(v10);
      v12 = v27[0];
      if (v27[0] != dgst)
      {
        final_high = HIDWORD(dgst->final);
        v14 = malloc_type_malloc(final_high + 8, 0xB4E622C9uLL);
        if (!v14)
        {
          ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
          v20 = 0;
          v21 = v27[1];
          if (v27[1])
          {
            goto LABEL_18;
          }

          goto LABEL_21;
        }

        *v14 = final_high;
        v15 = v14 + 1;
        if (v27[1])
        {
          v17 = v27[1] - 8;
          v16 = *(v27[1] - 1);
          if (v16 != -8)
          {
            bzero(v17, v16 + 8);
          }

          free(v17);
        }

        v27[0] = dgst;
        v27[1] = v15;
        v12 = dgst;
      }

      (v12->flags)(v27);
      (*(v27[0] + 3))(v27, seed, seedlen);
      (*(v27[0] + 3))(v27, &v26, 4);
      if (v8 < pkey_type)
      {
        (*(v27[0] + 4))(v27, __src);
        v19 = *(v27[0] + 11);
        if (v19)
        {
          bzero(v27[1], v19);
        }

        memcpy(mask, __src, v8);
        break;
      }

      (*(v27[0] + 4))(v27, mask);
      v18 = *(v27[0] + 11);
      if (v18)
      {
        bzero(v27[1], v18);
      }

      mask += pkey_type;
      ++v10;
      v8 -= pkey_type;
    }

    while (v8);
  }

  v20 = 1;
  v21 = v27[1];
  if (v27[1])
  {
LABEL_18:
    v23 = *(v21 - 1);
    v22 = (v21 - 1);
    v24 = v23 + 8;
    if (v23 != -8)
    {
      bzero(v22, v24);
    }

    free(v22);
  }

LABEL_21:
  if (*(&v28 + 1))
  {
    (**(&v28 + 1))(v28);
  }

  return v20;
}

int RSA_size(const RSA *a1)
{
  version = a1->version;
  v2 = *(version + 8);
  if (v2 < 1)
  {
    if (!v2)
    {
      return 0;
    }

    v3 = *version;
  }

  else
  {
    v3 = *version;
    while (!*(v3 - 8 + 8 * v2))
    {
      v4 = __OFSUB__(v2--, 1);
      if ((v2 < 0) ^ v4 | (v2 == 0))
      {
        return 0;
      }
    }
  }

  v5 = v2 - 1;
  v6 = *(v3 + 8 * v5);
  v7 = v6 != 0;
  v8 = HIDWORD(v6) != 0;
  if (HIDWORD(v6))
  {
    v6 >>= 32;
  }

  v9 = v6 >> 16 != 0;
  if (v6 >> 16)
  {
    v6 >>= 16;
  }

  v10 = v6 > 0xFF;
  if (v6 > 0xFF)
  {
    v6 >>= 8;
  }

  v11 = v6 > 0xF;
  if (v6 > 0xF)
  {
    v6 >>= 4;
  }

  v12 = v6 > 3;
  if (v6 > 3)
  {
    v6 >>= 2;
  }

  v13 = v7 | (v5 << 6) | (32 * v8) | (16 * v9) | (8 * v10) | (4 * v11) | (2 * v12);
  if (v6 > 1)
  {
    ++v13;
  }

  return (v13 + 7) >> 3;
}

uint64_t RSA_padding_add_PKCS1_PSS_mgf1(uint64_t a1, unsigned __int8 *a2, uint64_t a3, const EVP_MD *a4, const EVP_MD *a5, unsigned int a6)
{
  v6 = 0uLL;
  *v82 = 0u;
  v83 = 0u;
  if (a5)
  {
    v7 = a5;
  }

  else
  {
    v7 = a4;
  }

  v8 = *(a1 + 8);
  v9 = *(v8 + 8);
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = v9;
  v11 = *v8;
  if (v9 < 4)
  {
    v12 = 0;
    v13 = 0;
LABEL_10:
    v18 = v9 - v12;
    v19 = &v11->i64[v12];
    do
    {
      v20 = *v19++;
      *&v13 |= v20;
      --v18;
    }

    while (v18);
    goto LABEL_12;
  }

  v12 = v9 & 0xFFFFFFFFFFFFFFFCLL;
  v14 = v11 + 1;
  v15 = v12;
  v16 = 0uLL;
  do
  {
    v6 = vorrq_s8(v14[-1], v6);
    v16 = vorrq_s8(*v14, v16);
    v14 += 2;
    v15 -= 4;
  }

  while (v15);
  v17 = vorrq_s8(v16, v6);
  v13 = vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL));
  if (v12 != v9)
  {
    goto LABEL_10;
  }

LABEL_12:
  if (!*&v13)
  {
LABEL_19:
    v24 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/padding.cc.inc";
    v25 = 4;
    v26 = 120;
    v27 = 285;
LABEL_58:
    ERR_put_error(v25, 0, v26, v24, v27);
    v46 = 0;
    goto LABEL_59;
  }

  if (v9 >= 1)
  {
    LODWORD(v10) = v9;
    while (1)
    {
      v10 = v10;
      if (v11[-1].i64[v10 + 1])
      {
        break;
      }

      v21 = __OFSUB__(v10, 1);
      LODWORD(v10) = v10 - 1;
      if ((v10 < 0) ^ v21 | (v10 == 0))
      {
        v22 = 7;
        pkey_type = a4->pkey_type;
        goto LABEL_33;
      }
    }
  }

  v28 = v11->u64[v10 - 1];
  v29 = v28 == 0;
  if (HIDWORD(v28))
  {
    v28 >>= 32;
  }

  if (v28 >> 16)
  {
    v28 >>= 16;
  }

  if (v28 > 0xFF)
  {
    v28 >>= 8;
  }

  v30 = 4 * (v28 > 0xF);
  if (v28 > 0xF)
  {
    v28 >>= 4;
  }

  v31 = v28 > 3;
  if (v28 > 3)
  {
    v28 >>= 2;
  }

  v32 = v28 > 1;
  v33 = v30 - v29 + 2 * v31;
  if (v32)
  {
    ++v33;
  }

  v22 = v33 & 7;
  pkey_type = a4->pkey_type;
  if (v9 >= 1)
  {
LABEL_33:
    while (!v11[-1].i64[v9 + 1])
    {
      v21 = __OFSUB__(v9--, 1);
      if ((v9 < 0) ^ v21 | (v9 == 0))
      {
        v34 = 0;
        if (v22)
        {
          goto LABEL_56;
        }

        goto LABEL_37;
      }
    }
  }

  v37 = v9 - 1;
  v38 = v11->u64[v37];
  v39 = v38 != 0;
  v40 = HIDWORD(v38) != 0;
  if (HIDWORD(v38))
  {
    v38 >>= 32;
  }

  v41 = v38 >> 16 != 0;
  if (v38 >> 16)
  {
    v38 >>= 16;
  }

  v42 = v38 > 0xFF;
  if (v38 > 0xFF)
  {
    v38 >>= 8;
  }

  v43 = v38 > 0xF;
  if (v38 > 0xF)
  {
    v38 >>= 4;
  }

  v44 = v38 > 3;
  if (v38 > 3)
  {
    v38 >>= 2;
  }

  v45 = v39 | (v37 << 6) | (32 * v40) | (16 * v41) | (8 * v42) | (4 * v43) | (2 * v44);
  if (v38 > 1)
  {
    ++v45;
  }

  v34 = (v45 + 7) >> 3;
  if (v22)
  {
LABEL_56:
    if (v34 < pkey_type + 2)
    {
      goto LABEL_57;
    }
  }

  else
  {
LABEL_37:
    *a2++ = 0;
    if (--v34 < pkey_type + 2)
    {
LABEL_57:
      v24 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/padding.cc.inc";
      v25 = 4;
      v26 = 114;
      v27 = 298;
      goto LABEL_58;
    }
  }

  v35 = pkey_type;
  if (a6 != -1)
  {
    if (a6 != -2)
    {
      if ((a6 & 0x80000000) != 0)
      {
        v24 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/padding.cc.inc";
        v25 = 4;
        v26 = 138;
        v27 = 312;
        goto LABEL_58;
      }

      v35 = a6;
      v36 = v34 - pkey_type;
      if (v34 - pkey_type - 2 < a6)
      {
        goto LABEL_42;
      }

      goto LABEL_68;
    }

    v35 = v34 - pkey_type - 2;
  }

  v36 = v34 - pkey_type;
  if (v34 - pkey_type - 2 < v35)
  {
LABEL_42:
    v24 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/padding.cc.inc";
    v25 = 4;
    v26 = 114;
    v27 = 319;
    goto LABEL_58;
  }

LABEL_68:
  v51 = a2;
  if (v35)
  {
    if (v35 > 0xFFFFFFFFFFFFFFF7 || (v52 = a4, (v53 = malloc_type_malloc(v35 + 8, 0xB4E622C9uLL)) == 0))
    {
      v24 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v25 = 14;
      v26 = 65;
      v27 = 217;
      goto LABEL_58;
    }

    *v53 = v35;
    v54 = (v53 + 8);
    BCM_rand_bytes_with_additional_data(v53 + 8, v35, BCM_rand_bytes::kZeroAdditionalData);
    a4 = v52;
  }

  else
  {
    v54 = 0;
  }

  if (a4)
  {
    v81 = v54;
    v55 = a4;
    final_high = HIDWORD(a4->final);
    v57 = malloc_type_malloc(final_high + 8, 0xB4E622C9uLL);
    if (!v57)
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      v46 = 0;
      v54 = v81;
      goto LABEL_98;
    }

    *v57 = final_high;
    v82[0] = v55;
    v82[1] = v57 + 1;
    a4 = v55;
    v54 = v81;
  }

  v58 = v36 - 1;
  (a4->flags)(v82);
  (*(v82[0] + 3))(v82, &kPSSZeroes, 8);
  (*(v82[0] + 3))(v82, a3, pkey_type);
  (*(v82[0] + 3))(v82, v54, v35);
  (*(v82[0] + 4))(v82, &v51[v58]);
  v59 = *(v82[0] + 11);
  if (v59)
  {
    bzero(v82[1], v59);
  }

  if (PKCS1_MGF1(v51, v58, &v51[v58], pkey_type, v7))
  {
    v60 = v35 + pkey_type;
    v61 = v34 - (v35 + pkey_type);
    v62 = &v51[v61 - 2];
    *v62 ^= 1u;
    if (!v35)
    {
LABEL_95:
      if (v22)
      {
        *v51 &= 0xFFu >> (8 - v22);
      }

      v51[v34 - 1] = -68;
      v46 = 1;
      goto LABEL_98;
    }

    if (v35 < 8 || (&v51[v34 - 1 - v60] < v54 + v35 ? (v63 = v54 >= &v51[v34 - 1 - pkey_type]) : (v63 = 1), !v63))
    {
      v64 = 0;
      goto LABEL_93;
    }

    if (v35 >= 0x20)
    {
      v64 = v35 & 0xFFFFFFFFFFFFFFE0;
      v72 = &v51[v61 + 15];
      v73 = (v54 + 16);
      v74 = v35 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v75 = veorq_s8(*v72, *v73);
        v72[-1] = veorq_s8(v72[-1], v73[-1]);
        *v72 = v75;
        v72 += 2;
        v73 += 2;
        v74 -= 32;
      }

      while (v74);
      if (v35 == v64)
      {
        goto LABEL_95;
      }

      if ((v35 & 0x18) == 0)
      {
        v62 += v64;
LABEL_93:
        v65 = v35 - v64;
        v66 = (v54 + v64);
        v67 = v62 + 1;
        do
        {
          v68 = *v66++;
          *v67++ ^= v68;
          --v65;
        }

        while (v65);
        goto LABEL_95;
      }
    }

    else
    {
      v64 = 0;
    }

    v76 = v64;
    v64 = v35 & 0xFFFFFFFFFFFFFFF8;
    v62 += v35 & 0xFFFFFFFFFFFFFFF8;
    v77 = &v51[~v60 + v76 + v34];
    v78 = (v54 + v76);
    v79 = v76 - (v35 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v80 = *v78++;
      *v77 = veor_s8(*v77, v80);
      ++v77;
      v79 += 8;
    }

    while (v79);
    if (v35 == v64)
    {
      goto LABEL_95;
    }

    goto LABEL_93;
  }

  v46 = 0;
LABEL_98:
  if (v54)
  {
    v70 = *(v54 - 8);
    v69 = (v54 - 8);
    v71 = v70 + 8;
    if (v70 != -8)
    {
      bzero(v69, v71);
    }

    free(v69);
  }

LABEL_59:
  if (v82[1])
  {
    v48 = v82[1] - 8;
    v47 = *(v82[1] - 1);
    if (v47 != -8)
    {
      bzero(v82[1] - 8, v47 + 8);
    }

    free(v48);
  }

  if (*(&v83 + 1))
  {
    (**(&v83 + 1))(v83);
  }

  return v46;
}

int RSA_check_key(const RSA *a1)
{
  result = rsa_check_public_key(a1);
  if (!result)
  {
    return result;
  }

  n = a1->n;
  if ((n != 0) == (a1->e == 0))
  {
    v5 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa.cc.inc";
    v6 = 4;
    v7 = 134;
    v8 = 744;
    goto LABEL_7;
  }

  engine = a1->engine;
  if (!engine)
  {
    return 1;
  }

  if (engine->neg || (version = a1->version) != 0 && (version->neg || (BN_ucmp(engine, version) & 0x80000000) == 0))
  {
    v5 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa.cc.inc";
    v6 = 4;
    v7 = 147;
    v8 = 752;
LABEL_7:
    ERR_put_error(v6, 0, v7, v5, v8);
    return 0;
  }

  if (!n)
  {
    return 1;
  }

  v10 = malloc_type_malloc(0x48uLL, 0xB4E622C9uLL);
  if (!v10)
  {
    v5 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v6 = 14;
    v7 = 65;
    v8 = 217;
    goto LABEL_7;
  }

  *(v10 + 8) = 0u;
  v11 = (v10 + 8);
  *v10 = 64;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  memset(&a, 0, sizeof(a));
  memset(&v62, 0, sizeof(v62));
  memset(&b, 0, sizeof(b));
  memset(&v60, 0, sizeof(v60));
  v12 = a1->n;
  if (v12->neg || (v13 = a1->version, BN_cmp(a1->n, v13) >= 0) || (e = a1->e, e->neg) || BN_cmp(a1->e, v13) >= 0)
  {
    ERR_put_error(4, 0, 132, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa.cc.inc", 785);
    v15 = 0;
    flags = a.flags;
    goto LABEL_19;
  }

  if (!bn_mul_consttime(&a, v12, e, v11))
  {
    ERR_put_error(4, 0, 3, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa.cc.inc", 789);
    v15 = 0;
    flags = a.flags;
    if ((a.flags & 2) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  if (!BN_cmp(&a, a1->version))
  {
    v29 = a1->n;
    if (!pthread_once(&_MergedGlobals, BN_value_one_init))
    {
      if (!bn_usub_consttime(&b, v29, &_MergedGlobals_95))
      {
        goto LABEL_76;
      }

      v30 = a1->e;
      if (!pthread_once(&_MergedGlobals, BN_value_one_init))
      {
        if (bn_usub_consttime(&v60, v30, &_MergedGlobals_95))
        {
          v31 = BN_num_bits(&b);
          v32 = BN_num_bits(&v60);
          if (!bn_mul_consttime(&v62, a1->engine, a1->meth, v11) || !bn_div_consttime(0, &a, &v62, &b, v31, v11) || !bn_div_consttime(0, &v62, &v62, &v60, v32, v11))
          {
            ERR_put_error(4, 0, 3, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa.cc.inc", 811);
            v15 = 0;
            flags = a.flags;
            if ((a.flags & 2) != 0)
            {
              goto LABEL_23;
            }

            goto LABEL_19;
          }

          if (a.neg)
          {
            v33 = 1;
            goto LABEL_91;
          }

          if (a.top)
          {
            v34 = *a.d ^ 1;
            if (a.top >= 2)
            {
              if (a.top >= 5u)
              {
                v36 = (a.top - 1) & 0xFFFFFFFFFFFFFFFCLL;
                v35 = v36 | 1;
                v37 = 0uLL;
                v38 = *a.d ^ 1uLL;
                v39 = (a.d + 3);
                v40 = v36;
                do
                {
                  v38 = vorrq_s8(v39[-1], v38);
                  v37 = vorrq_s8(*v39, v37);
                  v39 += 2;
                  v40 -= 4;
                }

                while (v40);
                v41 = vorrq_s8(v37, v38);
                v34 = vorr_s8(*v41.i8, *&vextq_s8(v41, v41, 8uLL));
                if (a.top - 1 == v36)
                {
                  goto LABEL_90;
                }
              }

              else
              {
                v35 = 1;
              }

              v42 = a.top - v35;
              v43 = &a.d[v35];
              do
              {
                v44 = *v43++;
                v34 |= v44;
                --v42;
              }

              while (v42);
            }
          }

          else
          {
            v34 = 1;
          }

LABEL_90:
          v33 = v34 != 0;
LABEL_91:
          if (v33)
          {
            goto LABEL_106;
          }

          if (v62.neg)
          {
            v45 = 1;
LABEL_105:
            if (v45)
            {
LABEL_106:
              ERR_put_error(4, 0, 119, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa.cc.inc", 817);
              v15 = 0;
              flags = a.flags;
              if ((a.flags & 2) != 0)
              {
                goto LABEL_23;
              }

              goto LABEL_19;
            }

            d = a1->d;
            if ((d != 0) == (a1->p == 0) || (d != 0) == (a1->q == 0))
            {
              ERR_put_error(4, 0, 123, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa.cc.inc", 824);
              v15 = 0;
              flags = a.flags;
              if ((a.flags & 2) != 0)
              {
                goto LABEL_23;
              }
            }

            else
            {
              if (d)
              {
                *v59 = 0;
                v58 = 0;
                if (!check_mod_inverse(&v59[1], a1->meth, d, &b, v31, v11) || !check_mod_inverse(v59, a1->meth, a1->p, &v60, v32, v11) || !check_mod_inverse(&v58, a1->e, a1->q, a1->n, v31, v11))
                {
                  ERR_put_error(4, 0, 3, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa.cc.inc", 836);
                  v15 = 0;
                  flags = a.flags;
                  if ((a.flags & 2) != 0)
                  {
                    goto LABEL_23;
                  }

                  goto LABEL_19;
                }

                if (!v59[1] || !v59[0] || !v58)
                {
                  ERR_put_error(4, 0, 111, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa.cc.inc", 841);
                  v15 = 0;
                  flags = a.flags;
                  if ((a.flags & 2) != 0)
                  {
                    goto LABEL_23;
                  }

                  goto LABEL_19;
                }
              }

              v15 = 1;
              flags = a.flags;
              if ((a.flags & 2) != 0)
              {
                goto LABEL_23;
              }
            }

LABEL_19:
            if (a.d)
            {
              v18 = *(a.d - 1);
              v17 = a.d - 1;
              v19 = v18 + 8;
              if (v18 != -8)
              {
                bzero(v17, v19);
              }

              free(v17);
              flags = a.flags;
            }

            goto LABEL_23;
          }

          if (v62.top)
          {
            v46 = *v62.d ^ 1;
            if (v62.top >= 2)
            {
              if (v62.top >= 5u)
              {
                v48 = (v62.top - 1) & 0xFFFFFFFFFFFFFFFCLL;
                v47 = v48 | 1;
                v49 = 0uLL;
                v50 = *v62.d ^ 1uLL;
                v51 = (v62.d + 3);
                v52 = v48;
                do
                {
                  v50 = vorrq_s8(v51[-1], v50);
                  v49 = vorrq_s8(*v51, v49);
                  v51 += 2;
                  v52 -= 4;
                }

                while (v52);
                v53 = vorrq_s8(v49, v50);
                v46 = vorr_s8(*v53.i8, *&vextq_s8(v53, v53, 8uLL));
                if (v62.top - 1 == v48)
                {
                  goto LABEL_104;
                }
              }

              else
              {
                v47 = 1;
              }

              v54 = v62.top - v47;
              v55 = &v62.d[v47];
              do
              {
                v56 = *v55++;
                v46 |= v56;
                --v54;
              }

              while (v54);
            }
          }

          else
          {
            v46 = 1;
          }

LABEL_104:
          v45 = v46 != 0;
          goto LABEL_105;
        }

LABEL_76:
        ERR_put_error(4, 0, 3, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa.cc.inc", 803);
        v15 = 0;
        flags = a.flags;
        if ((a.flags & 2) != 0)
        {
          goto LABEL_23;
        }

        goto LABEL_19;
      }
    }

    abort();
  }

  ERR_put_error(4, 0, 132, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa.cc.inc", 793);
  v15 = 0;
  flags = a.flags;
  if ((a.flags & 2) == 0)
  {
    goto LABEL_19;
  }

LABEL_23:
  if (flags)
  {
    if (*&v62.neg != -8)
    {
      bzero(&v62.neg, *&v62.neg + 8);
    }

    free(&v62.neg);
  }

  else
  {
    a.d = 0;
  }

  v20 = v62.flags;
  if ((v62.flags & 2) == 0 && v62.d)
  {
    v22 = v62.d - 1;
    v21 = *(v62.d - 1);
    if (v21 != -8)
    {
      bzero(v22, v21 + 8);
    }

    free(v22);
    v20 = v62.flags;
  }

  if (v20)
  {
    if (*&b.neg != -8)
    {
      bzero(&b.neg, *&b.neg + 8);
    }

    free(&b.neg);
  }

  else
  {
    v62.d = 0;
  }

  v23 = b.flags;
  if ((b.flags & 2) == 0 && b.d)
  {
    v25 = b.d - 1;
    v24 = *(b.d - 1);
    if (v24 != -8)
    {
      bzero(v25, v24 + 8);
    }

    free(v25);
    v23 = b.flags;
  }

  if (v23)
  {
    if (*&v60.neg != -8)
    {
      bzero(&v60.neg, *&v60.neg + 8);
    }

    free(&v60.neg);
  }

  else
  {
    b.d = 0;
  }

  v26 = v60.flags;
  if ((v60.flags & 2) == 0 && v60.d)
  {
    v28 = v60.d - 1;
    v27 = *(v60.d - 1);
    if (v27 != -8)
    {
      bzero(v28, v27 + 8);
    }

    free(v28);
    v26 = v60.flags;
  }

  if (v26)
  {
    if (*v59 != -8)
    {
      bzero(v59, *v59 + 8);
    }

    free(v59);
  }

  else
  {
    v60.d = 0;
  }

  BN_CTX_free(v11);
  return v15;
}

void RSA_free(RSA *r)
{
  if (r)
  {
    v2 = atomic_load(&r->dmq1);
    if (v2 != -1)
    {
      while (1)
      {
        if (!v2)
        {
          abort();
        }

        v3 = v2;
        atomic_compare_exchange_strong(&r->dmq1, &v3, v2 - 1);
        if (v3 == v2)
        {
          break;
        }

        v2 = v3;
        if (v3 == -1)
        {
          return;
        }
      }

      if (v2 == 1)
      {
        v4 = *(*&r->pad + 24);
        if (v4)
        {
          v4(r);
        }

        CRYPTO_free_ex_data(&unk_28100B4D8, r, &r->dmp1);
        version = r->version;
        if (version)
        {
          v6 = *(version + 20);
          if ((v6 & 2) == 0)
          {
            v7 = *version;
            if (*version)
            {
              v9 = *(v7 - 8);
              v8 = (v7 - 8);
              v10 = v9 + 8;
              if (v9 != -8)
              {
                bzero(v8, v10);
              }

              free(v8);
              v6 = *(version + 20);
            }
          }

          if (v6)
          {
            v12 = *(version - 8);
            v11 = (version - 8);
            v13 = v12 + 8;
            if (v12 != -8)
            {
              bzero(v11, v13);
            }

            free(v11);
          }

          else
          {
            *version = 0;
          }
        }

        meth = r->meth;
        if (meth)
        {
          rsa_pub_dec_high = HIDWORD(meth->rsa_pub_dec);
          if ((rsa_pub_dec_high & 2) == 0)
          {
            name = meth->name;
            if (meth->name)
            {
              v18 = *(name - 1);
              v17 = (name - 8);
              v19 = v18 + 8;
              if (v18 != -8)
              {
                bzero(v17, v19);
              }

              free(v17);
              rsa_pub_dec_high = HIDWORD(meth->rsa_pub_dec);
            }
          }

          if (rsa_pub_dec_high)
          {
            rsa_keygen = meth[-1].rsa_keygen;
            p_rsa_keygen = &meth[-1].rsa_keygen;
            v22 = rsa_keygen + 8;
            if (rsa_keygen != -8)
            {
              bzero(p_rsa_keygen, v22);
            }

            free(p_rsa_keygen);
          }

          else
          {
            meth->name = 0;
          }
        }

        engine = r->engine;
        if (engine)
        {
          v24 = *(engine + 5);
          if ((v24 & 2) == 0)
          {
            v25 = *engine;
            if (*engine)
            {
              v27 = *(v25 - 8);
              v26 = (v25 - 8);
              v28 = v27 + 8;
              if (v27 != -8)
              {
                bzero(v26, v28);
              }

              free(v26);
              v24 = *(engine + 5);
            }
          }

          if (v24)
          {
            v30 = *(engine - 1);
            v29 = engine - 8;
            v31 = v30 + 8;
            if (v30 != -8)
            {
              bzero(v29, v31);
            }

            free(v29);
          }

          else
          {
            *engine = 0;
          }
        }

        n = r->n;
        if (n)
        {
          flags = n->flags;
          if ((flags & 2) == 0)
          {
            d = n->d;
            if (n->d)
            {
              v36 = *(d - 1);
              v35 = d - 1;
              v37 = v36 + 8;
              if (v36 != -8)
              {
                bzero(v35, v37);
              }

              free(v35);
              flags = n->flags;
            }
          }

          if (flags)
          {
            v39 = *&n[-1].neg;
            p_neg = &n[-1].neg;
            v40 = v39 + 8;
            if (v39 != -8)
            {
              bzero(p_neg, v40);
            }

            free(p_neg);
          }

          else
          {
            n->d = 0;
          }
        }

        e = r->e;
        if (e)
        {
          v42 = e->flags;
          if ((v42 & 2) == 0)
          {
            v43 = e->d;
            if (e->d)
            {
              v45 = *(v43 - 1);
              v44 = v43 - 1;
              v46 = v45 + 8;
              if (v45 != -8)
              {
                bzero(v44, v46);
              }

              free(v44);
              v42 = e->flags;
            }
          }

          if (v42)
          {
            v48 = *&e[-1].neg;
            v47 = &e[-1].neg;
            v49 = v48 + 8;
            if (v48 != -8)
            {
              bzero(v47, v49);
            }

            free(v47);
          }

          else
          {
            e->d = 0;
          }
        }

        v50 = r->d;
        if (v50)
        {
          v51 = v50->flags;
          if ((v51 & 2) == 0)
          {
            v52 = v50->d;
            if (v50->d)
            {
              v54 = *(v52 - 1);
              v53 = v52 - 1;
              v55 = v54 + 8;
              if (v54 != -8)
              {
                bzero(v53, v55);
              }

              free(v53);
              v51 = v50->flags;
            }
          }

          if (v51)
          {
            v57 = *&v50[-1].neg;
            v56 = &v50[-1].neg;
            v58 = v57 + 8;
            if (v57 != -8)
            {
              bzero(v56, v58);
            }

            free(v56);
          }

          else
          {
            v50->d = 0;
          }
        }

        p = r->p;
        if (p)
        {
          v60 = p->flags;
          if ((v60 & 2) == 0)
          {
            v61 = p->d;
            if (p->d)
            {
              v63 = *(v61 - 1);
              v62 = v61 - 1;
              v64 = v63 + 8;
              if (v63 != -8)
              {
                bzero(v62, v64);
              }

              free(v62);
              v60 = p->flags;
            }
          }

          if (v60)
          {
            v66 = *&p[-1].neg;
            v65 = &p[-1].neg;
            v67 = v66 + 8;
            if (v66 != -8)
            {
              bzero(v65, v67);
            }

            free(v65);
          }

          else
          {
            p->d = 0;
          }
        }

        q = r->q;
        if (q)
        {
          v69 = q->flags;
          if ((v69 & 2) == 0)
          {
            v70 = q->d;
            if (q->d)
            {
              v72 = *(v70 - 1);
              v71 = v70 - 1;
              v73 = v72 + 8;
              if (v72 != -8)
              {
                bzero(v71, v73);
              }

              free(v71);
              v69 = q->flags;
            }
          }

          if (v69)
          {
            v75 = *&q[-1].neg;
            v74 = &q[-1].neg;
            v76 = v75 + 8;
            if (v75 != -8)
            {
              bzero(v74, v76);
            }

            free(v74);
          }

          else
          {
            q->d = 0;
          }
        }

        rsa_invalidate_key(r);
        pthread_rwlock_destroy(&r->iqmp);
        mt_blinding = r[-1].mt_blinding;
        p_mt_blinding = &r[-1].mt_blinding;
        v79 = mt_blinding + 8;
        if (mt_blinding != -8)
        {
          bzero(p_mt_blinding, v79);
        }

        free(p_mt_blinding);
      }
    }
  }
}

RSA *__cdecl RSA_new_method(ENGINE *engine)
{
  v2 = malloc_type_malloc(0x188uLL, 0xB4E622C9uLL);
  if (!v2)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  v3 = v2;
  *(v2 + 8) = 0u;
  v4 = (v2 + 8);
  *v2 = 384;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 0u;
  *(v2 + 232) = 0u;
  *(v2 + 248) = 0u;
  *(v2 + 264) = 0u;
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  *(v2 + 312) = 0u;
  *(v2 + 328) = 0u;
  *(v2 + 344) = 0u;
  *(v2 + 360) = 0u;
  *(v2 + 376) = 0u;
  if (!engine || (v5 = *engine, *&v4->pad = *engine, !v5))
  {
    if (pthread_once(&stru_28100B4C8, RSA_default_method_init))
    {
      goto LABEL_12;
    }

    v5 = &RSA_default_method_storage;
    *&v4->pad = &RSA_default_method_storage;
  }

  v6 = *(v5 + 16);
  *(v3 + 22) = 1;
  *(v3 + 23) = v6;
  if (pthread_rwlock_init((v3 + 96), 0))
  {
LABEL_12:
    abort();
  }

  *(v3 + 10) = 0;
  v7 = *(*(v3 + 1) + 16);
  if (!v7 || v7(v4))
  {
    return v4;
  }

  CRYPTO_free_ex_data(&unk_28100B4D8, v4, v3 + 5);
  pthread_rwlock_destroy((v3 + 96));
  free(v3);
  return 0;
}

void rsa_invalidate_key(uint64_t a1)
{
  *(a1 + 376) &= ~1u;
  BN_MONT_CTX_free(*(a1 + 288));
  *(a1 + 288) = 0;
  BN_MONT_CTX_free(*(a1 + 296));
  *(a1 + 296) = 0;
  BN_MONT_CTX_free(*(a1 + 304));
  *(a1 + 304) = 0;
  v2 = *(a1 + 312);
  if (!v2)
  {
LABEL_9:
    *(a1 + 312) = 0;
    v8 = *(a1 + 320);
    if (!v8)
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  v3 = *(v2 + 5);
  if ((v3 & 2) == 0)
  {
    v4 = *v2;
    if (*v2)
    {
      v6 = *(v4 - 8);
      v5 = (v4 - 8);
      v7 = v6 + 8;
      if (v6 != -8)
      {
        bzero(v5, v7);
      }

      free(v5);
      v3 = *(v2 + 5);
    }
  }

  if ((v3 & 1) == 0)
  {
    *v2 = 0;
    goto LABEL_9;
  }

  v10 = *(v2 - 1);
  v9 = v2 - 1;
  v11 = v10 + 8;
  if (v10 != -8)
  {
    bzero(v9, v11);
  }

  free(v9);
  *(a1 + 312) = 0;
  v8 = *(a1 + 320);
  if (!v8)
  {
LABEL_21:
    *(a1 + 320) = 0;
    v17 = *(a1 + 328);
    if (!v17)
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

LABEL_14:
  v12 = *(v8 + 5);
  if ((v12 & 2) == 0)
  {
    v13 = *v8;
    if (*v8)
    {
      v15 = *(v13 - 8);
      v14 = (v13 - 8);
      v16 = v15 + 8;
      if (v15 != -8)
      {
        bzero(v14, v16);
      }

      free(v14);
      v12 = *(v8 + 5);
    }
  }

  if ((v12 & 1) == 0)
  {
    *v8 = 0;
    goto LABEL_21;
  }

  v19 = *(v8 - 1);
  v18 = v8 - 1;
  v20 = v19 + 8;
  if (v19 != -8)
  {
    bzero(v18, v20);
  }

  free(v18);
  *(a1 + 320) = 0;
  v17 = *(a1 + 328);
  if (!v17)
  {
LABEL_33:
    *(a1 + 328) = 0;
    v26 = *(a1 + 336);
    if (!v26)
    {
      goto LABEL_45;
    }

    goto LABEL_38;
  }

LABEL_26:
  v21 = *(v17 + 5);
  if ((v21 & 2) == 0)
  {
    v22 = *v17;
    if (*v17)
    {
      v24 = *(v22 - 8);
      v23 = (v22 - 8);
      v25 = v24 + 8;
      if (v24 != -8)
      {
        bzero(v23, v25);
      }

      free(v23);
      v21 = *(v17 + 5);
    }
  }

  if ((v21 & 1) == 0)
  {
    *v17 = 0;
    goto LABEL_33;
  }

  v28 = *(v17 - 1);
  v27 = v17 - 1;
  v29 = v28 + 8;
  if (v28 != -8)
  {
    bzero(v27, v29);
  }

  free(v27);
  *(a1 + 328) = 0;
  v26 = *(a1 + 336);
  if (!v26)
  {
LABEL_45:
    *(a1 + 336) = 0;
    if (!*(a1 + 344))
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

LABEL_38:
  v30 = *(v26 + 5);
  if ((v30 & 2) == 0)
  {
    v31 = *v26;
    if (*v26)
    {
      v33 = *(v31 - 8);
      v32 = (v31 - 8);
      v34 = v33 + 8;
      if (v33 != -8)
      {
        bzero(v32, v34);
      }

      free(v32);
      v30 = *(v26 + 5);
    }
  }

  if ((v30 & 1) == 0)
  {
    *v26 = 0;
    goto LABEL_45;
  }

  v36 = *(v26 - 1);
  v35 = v26 - 1;
  v37 = v36 + 8;
  if (v36 != -8)
  {
    bzero(v35, v37);
  }

  free(v35);
  *(a1 + 336) = 0;
  if (*(a1 + 344))
  {
LABEL_50:
    v38 = 0;
    do
    {
      BN_BLINDING_free(*(*(a1 + 352) + 8 * v38++));
    }

    while (v38 < *(a1 + 344));
  }

LABEL_52:
  v39 = *(a1 + 352);
  if (v39)
  {
    v41 = *(v39 - 8);
    v40 = (v39 - 8);
    v42 = v41 + 8;
    if (v41 != -8)
    {
      bzero(v40, v42);
    }

    free(v40);
  }

  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  v43 = *(a1 + 360);
  if (v43)
  {
    v45 = *(v43 - 8);
    v44 = (v43 - 8);
    v46 = v45 + 8;
    if (v45 != -8)
    {
      bzero(v44, v46);
    }

    free(v44);
  }

  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
}

uint64_t RSA_add_pkcs1_prefix(void *a1, size_t *a2, _DWORD *a3, int a4, const void *a5, size_t a6)
{
  if (a4 <= 671)
  {
    if (a4 == 4)
    {
      if (a6 != 16)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

    if (a4 != 64)
    {
      if (a4 == 114)
      {
        if (a6 == 36)
        {
          *a1 = a5;
          *a2 = 36;
          result = 1;
          *a3 = 0;
          return result;
        }

        v6 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa.cc.inc";
        v7 = 4;
        v8 = 125;
        v9 = 475;
        goto LABEL_40;
      }

      goto LABEL_17;
    }

    if (a6 == 20)
    {
      goto LABEL_21;
    }

LABEL_29:
    v6 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa.cc.inc";
    v7 = 4;
    v8 = 125;
    v9 = 485;
    goto LABEL_40;
  }

  if (a4 > 673)
  {
    if (a4 != 674)
    {
      if (a4 == 675)
      {
        if (a6 != 28)
        {
          goto LABEL_29;
        }

        goto LABEL_21;
      }

LABEL_17:
      v6 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa.cc.inc";
      v7 = 4;
      v8 = 142;
      v9 = 492;
LABEL_40:
      ERR_put_error(v7, 0, v8, v6, v9);
      return 0;
    }

    if (a6 == 64)
    {
      goto LABEL_21;
    }

    goto LABEL_29;
  }

  if (a4 == 672)
  {
    if (a6 != 32)
    {
      goto LABEL_29;
    }
  }

  else if (a6 != 48)
  {
    goto LABEL_29;
  }

LABEL_21:
  if (a4 <= 671)
  {
    v10 = a5;
    v11 = a1;
    v12 = a2;
    v13 = a3;
    if (a4 == 4)
    {
      v14 = &kPKCS1SigPrefixes;
    }

    else
    {
      v14 = &unk_273BA736C;
    }
  }

  else if (a4 > 673)
  {
    v10 = a5;
    v11 = a1;
    v12 = a2;
    v13 = a3;
    if (a4 == 674)
    {
      v14 = &unk_273BA73DC;
    }

    else
    {
      v14 = &unk_273BA7388;
    }
  }

  else
  {
    v10 = a5;
    v11 = a1;
    v12 = a2;
    v13 = a3;
    if (a4 == 672)
    {
      v14 = &unk_273BA73A4;
    }

    else
    {
      v14 = &unk_273BA73C0;
    }
  }

  v16 = v14[5];
  v18 = v16 + a6;
  v19 = malloc_type_malloc(v16 + a6 + 8, 0xB4E622C9uLL);
  if (!v19)
  {
    v6 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v7 = 14;
    v8 = 65;
    v9 = 217;
    goto LABEL_40;
  }

  *v19 = v18;
  v20 = v19 + 1;
  if (v16)
  {
    memcpy(v19 + 1, v14 + 6, v16);
  }

  memcpy(v20 + v16, v10, a6);
  *v11 = v20;
  *v12 = v18;
  result = 1;
  *v13 = 1;
  return result;
}

uint64_t rsa_sign_no_self_test(int a1, const void *a2, size_t a3, char *a4, _DWORD *a5, void *a6)
{
  v6 = *(*a6 + 32);
  if (v6)
  {
    if (a1 <= 671)
    {
      if (a1 == 4)
      {
        if (a3 != 16)
        {
          goto LABEL_61;
        }

        goto LABEL_57;
      }

      if (a1 != 64)
      {
        if (a1 != 114)
        {
LABEL_53:
          v12 = 142;
          v13 = 492;
          goto LABEL_62;
        }

        if (a3 != 36)
        {
          v12 = 125;
          v13 = 475;
LABEL_62:
          ERR_put_error(4, 0, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa.cc.inc", v13);
          return 0;
        }

LABEL_57:

        return v6();
      }

      if (a3 == 20)
      {
        goto LABEL_57;
      }
    }

    else
    {
      if (a1 <= 673)
      {
        if (a1 == 672)
        {
          if (a3 != 32)
          {
            goto LABEL_61;
          }
        }

        else if (a3 != 48)
        {
          goto LABEL_61;
        }

        goto LABEL_57;
      }

      if (a1 != 674)
      {
        if (a1 == 675)
        {
          if (a3 != 28)
          {
            goto LABEL_61;
          }

          goto LABEL_57;
        }

        goto LABEL_53;
      }

      if (a3 == 64)
      {
        goto LABEL_57;
      }
    }

LABEL_61:
    v12 = 125;
    v13 = 485;
    goto LABEL_62;
  }

  v7 = a6[1];
  v8 = *(v7 + 2);
  if (v8 < 1)
  {
    if (!v8)
    {
LABEL_37:
      v14 = a1;
      v15 = a2;
      v16 = a3;
      v17 = a4;
      v18 = a6;
      v19 = a5;
      v29 = 0;
      goto LABEL_38;
    }

    v9 = *v7;
  }

  else
  {
    v9 = *v7;
    v10 = *v7 - 8;
    while (!*(v10 + 8 * v8))
    {
      v11 = __OFSUB__(v8--, 1);
      if ((v8 < 0) ^ v11 | (v8 == 0))
      {
        goto LABEL_37;
      }
    }
  }

  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a5;
  v20 = v8 - 1;
  v21 = *(v9 + 8 * v20);
  v22 = v21 != 0;
  v23 = HIDWORD(v21) != 0;
  if (HIDWORD(v21))
  {
    v21 >>= 32;
  }

  v24 = v21 >> 16 != 0;
  if (v21 >> 16)
  {
    v21 >>= 16;
  }

  v25 = v21 > 0xFF;
  if (v21 > 0xFF)
  {
    v21 >>= 8;
  }

  v26 = v21 > 0xF;
  if (v21 > 0xF)
  {
    v21 >>= 4;
  }

  v27 = v21 > 3;
  if (v21 > 3)
  {
    v21 >>= 2;
  }

  v28 = v22 | (v20 << 6) | (32 * v23) | (16 * v24) | (8 * v25) | (4 * v26) | (2 * v27);
  if (v21 > 1)
  {
    ++v28;
  }

  v29 = (v28 + 7) >> 3;
LABEL_38:
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v35 = 0;
  result = RSA_add_pkcs1_prefix(&v38, &v37, &v36, v14, v15, v16);
  if (!result)
  {
    goto LABEL_45;
  }

  v31 = *(*v18 + 40);
  if (v31)
  {
    result = v31(v18, &v35, v17, v29, v38, v37, 1);
    if (!result)
    {
LABEL_45:
      if (!v36)
      {
        return result;
      }

      goto LABEL_46;
    }
  }

  else
  {
    result = rsa_default_sign_raw(v18, &v35, v17, v29, v38, v37, 1);
    if (!result)
    {
      goto LABEL_45;
    }
  }

  if (HIDWORD(v35))
  {
    ERR_put_error(4, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa.cc.inc", 578);
    result = 0;
    goto LABEL_45;
  }

  *v19 = v35;
  result = 1;
  if (!v36)
  {
    return result;
  }

LABEL_46:
  if (v38)
  {
    v32 = result;
    v34 = v38 - 8;
    v33 = *(v38 - 1);
    if (v33 != -8)
    {
      bzero(v38 - 8, v33 + 8);
    }

    free(v34);
    return v32;
  }

  return result;
}

BOOL RSA_sign_pss_mgf1(void *a1, unint64_t *a2, char *a3, unint64_t a4, uint64_t a5, uint64_t a6, const EVP_MD *a7, const EVP_MD *a8, unsigned int a9)
{
  if (a7->pkey_type != a6)
  {
    v17 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa.cc.inc";
    v18 = 4;
    v19 = 125;
    v20 = 603;
LABEL_29:
    ERR_put_error(v18, 0, v19, v17, v20);
    return 0;
  }

  v13 = a1[1];
  v14 = *(v13 + 2);
  if (v14 >= 1)
  {
    v15 = *v13;
    while (!*(v15 - 8 + 8 * v14))
    {
      v16 = __OFSUB__(v14--, 1);
      if ((v14 < 0) ^ v16 | (v14 == 0))
      {
        goto LABEL_27;
      }
    }

LABEL_11:
    v21 = a2;
    v22 = a3;
    v23 = a4;
    v24 = v14 - 1;
    v25 = *(v15 + 8 * v24);
    v26 = v25 != 0;
    v27 = HIDWORD(v25) != 0;
    if (HIDWORD(v25))
    {
      v25 >>= 32;
    }

    v28 = v25 >> 16 != 0;
    if (v25 >> 16)
    {
      v25 >>= 16;
    }

    v29 = v25 > 0xFF;
    if (v25 > 0xFF)
    {
      v25 >>= 8;
    }

    v30 = v25 > 0xF;
    if (v25 > 0xF)
    {
      v25 >>= 4;
    }

    v31 = v25 > 3;
    if (v25 > 3)
    {
      v25 >>= 2;
    }

    v32 = v26 | (v24 << 6) | (32 * v27) | (16 * v28) | (8 * v29) | (4 * v30) | (2 * v31);
    if (v25 > 1)
    {
      ++v32;
    }

    v33 = (v32 + 7) >> 3;
    v34 = malloc_type_malloc(v33 + 8, 0xB4E622C9uLL);
    if (v34)
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  if (v14)
  {
    v15 = *v13;
    goto LABEL_11;
  }

LABEL_27:
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v33 = 0;
  v34 = malloc_type_malloc(8uLL, 0xB4E622C9uLL);
  if (!v34)
  {
LABEL_28:
    v17 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v18 = 14;
    v19 = 65;
    v20 = 217;
    goto LABEL_29;
  }

LABEL_24:
  v35 = v34;
  *v34 = v33;
  v36 = v34 + 8;
  if (RSA_padding_add_PKCS1_PSS_mgf1(a1, v34 + 8, a5, a7, a8, a9))
  {
    v37 = *(*a1 + 40);
    if (v37)
    {
      v38 = v37(a1, v21, v22, v23, v36, v33, 3);
    }

    else
    {
      v38 = rsa_default_sign_raw(a1, v21, v22, v23, v36, v33, 3);
    }

    v40 = v38 != 0;
  }

  else
  {
    v40 = 0;
  }

  free(v35);
  return v40;
}

uint64_t rsa_verify_no_self_test(int a1, const void *a2, size_t a3, const unsigned __int8 *a4, const unsigned __int8 *a5, uint64_t a6)
{
  v6 = *(a6 + 8);
  if (!v6 || !*(a6 + 16))
  {
    v10 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa.cc.inc";
    v11 = 4;
    v12 = 144;
    v13 = 625;
    goto LABEL_43;
  }

  v7 = *(v6 + 2);
  if (v7 >= 1)
  {
    v8 = *v6;
    while (!*(v8 - 8 + 8 * v7))
    {
      v9 = __OFSUB__(v7--, 1);
      if ((v7 < 0) ^ v9 | (v7 == 0))
      {
        goto LABEL_26;
      }
    }

LABEL_12:
    v14 = v7 - 1;
    v15 = *(v8 + 8 * v14);
    v16 = v15 != 0;
    v17 = HIDWORD(v15) != 0;
    if (HIDWORD(v15))
    {
      v15 >>= 32;
    }

    v18 = v15 >> 16 != 0;
    if (v15 >> 16)
    {
      v15 >>= 16;
    }

    v19 = v15 > 0xFF;
    if (v15 > 0xFF)
    {
      v15 >>= 8;
    }

    v20 = v15 > 0xF;
    if (v15 > 0xF)
    {
      v15 >>= 4;
    }

    v21 = v15 > 3;
    if (v15 > 3)
    {
      v15 >>= 2;
    }

    v22 = v16 | (v14 << 6) | (32 * v17) | (16 * v18) | (8 * v19) | (4 * v20) | (2 * v21);
    if (v15 > 1)
    {
      ++v22;
    }

    v23 = (v22 + 7) >> 3;
    v39 = 0;
    __s2 = 0;
    v38 = 0;
    v37 = 0;
    if (a1 != 114)
    {
      goto LABEL_29;
    }

LABEL_27:
    if (a3 != 36)
    {
      v10 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa.cc.inc";
      v11 = 4;
      v12 = 125;
      v13 = 637;
      goto LABEL_43;
    }

    goto LABEL_29;
  }

  if (v7)
  {
    v8 = *v6;
    goto LABEL_12;
  }

LABEL_26:
  v23 = 0;
  v39 = 0;
  __s2 = 0;
  v38 = 0;
  v37 = 0;
  if (a1 == 114)
  {
    goto LABEL_27;
  }

LABEL_29:
  v30 = malloc_type_malloc(v23 + 8, 0xB4E622C9uLL);
  if (v30)
  {
    v31 = v30;
    *v30 = v23;
    v32 = v30 + 8;
    if (rsa_verify_raw_no_self_test(a6, &v38, v30 + 8, v23, a4, a5, 1) && RSA_add_pkcs1_prefix(&__s2, &v39, &v37, a1, a2, a3))
    {
      if (v38 == v39 && (!v38 || !memcmp(v32, __s2, v38)))
      {
        v33 = 1;
        free(v31);
        if (v37)
        {
LABEL_37:
          if (__s2)
          {
            v35 = __s2 - 8;
            v34 = *(__s2 - 1);
            if (v34 != -8)
            {
              bzero(__s2 - 8, v34 + 8);
            }

            free(v35);
          }
        }

        return v33;
      }

      ERR_put_error(4, 0, 105, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa.cc.inc", 657);
    }

    v33 = 0;
    free(v31);
    if (v37)
    {
      goto LABEL_37;
    }

    return v33;
  }

  v10 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
  v11 = 14;
  v12 = 65;
  v13 = 217;
LABEL_43:
  ERR_put_error(v11, 0, v12, v10, v13);
  return 0;
}

uint64_t rsa_verify_raw_no_self_test(uint64_t a1, const unsigned __int8 **a2, unsigned __int8 *a3, unint64_t a4, const unsigned __int8 *a5, const unsigned __int8 *a6, int a7)
{
  if (!*(a1 + 8) || !*(a1 + 16))
  {
    v20 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa_impl.cc.inc";
    v21 = 4;
    v22 = 144;
    v23 = 440;
LABEL_11:
    ERR_put_error(v21, 0, v22, v20, v23);
    return 0;
  }

  result = rsa_check_public_key(a1);
  if (!result)
  {
    return result;
  }

  v15 = *(a1 + 8);
  v16 = *(v15 + 2);
  if (v16 < 1)
  {
    if (!v16)
    {
LABEL_29:
      v33 = 0;
      goto LABEL_30;
    }

    v18 = a4;
    v17 = *v15;
  }

  else
  {
    v17 = *v15;
    v18 = a4;
    while (!*(v17 - 8 + 8 * v16))
    {
      v19 = __OFSUB__(v16--, 1);
      if ((v16 < 0) ^ v19 | (v16 == 0))
      {
        goto LABEL_29;
      }
    }
  }

  v24 = v16 - 1;
  v25 = *(v17 + 8 * v24);
  v26 = v25 != 0;
  v27 = HIDWORD(v25) != 0;
  if (HIDWORD(v25))
  {
    v25 >>= 32;
  }

  v28 = v25 >> 16 != 0;
  if (v25 >> 16)
  {
    v25 >>= 16;
  }

  v29 = v25 > 0xFF;
  if (v25 > 0xFF)
  {
    v25 >>= 8;
  }

  v30 = v25 > 0xF;
  if (v25 > 0xF)
  {
    v25 >>= 4;
  }

  v31 = v25 > 3;
  if (v25 > 3)
  {
    v25 >>= 2;
  }

  v32 = v26 | (v24 << 6) | (32 * v27) | (16 * v28) | (8 * v29) | (4 * v30) | (2 * v31);
  if (v25 > 1)
  {
    ++v32;
  }

  v33 = ((v32 + 7) >> 3);
  if (v33 > v18)
  {
    v20 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa_impl.cc.inc";
    v21 = 4;
    v22 = 135;
    v23 = 450;
    goto LABEL_11;
  }

LABEL_30:
  if (v33 != a6)
  {
    v20 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa_impl.cc.inc";
    v21 = 4;
    v22 = 112;
    v23 = 455;
    goto LABEL_11;
  }

  v34 = malloc_type_malloc(0x48uLL, 0xB4E622C9uLL);
  if (!v34)
  {
    v20 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v21 = 14;
    v22 = 65;
    v23 = 217;
    goto LABEL_11;
  }

  v35 = v34;
  *v34 = 64;
  *(v34 + 8) = 0u;
  v36 = (v34 + 8);
  *(v34 + 24) = 0u;
  *(v34 + 40) = 0u;
  *(v34 + 56) = 0u;
  if (bssl::Vector<unsigned long>::MaybeGrow(v34 + 4))
  {
    *(*(v35 + 4) + 8 * (*(v35 + 5))++) = 0;
  }

  else
  {
    *(v35 + 32) = 257;
    ERR_clear_error();
  }

  v37 = BN_CTX_get(v36);
  v38 = BN_CTX_get(v36);
  v39 = 0;
  if (v37 && v38)
  {
    r = v38;
    v40 = a3;
    if (a7 == 3 || (v40 = OPENSSL_malloc(a6)) != 0)
    {
      if (BN_bin2bn(a5, a6, v37))
      {
        v41 = *(a1 + 8);
        if (BN_ucmp(v37, v41) < 0)
        {
          if (!BN_MONT_CTX_set_locked((a1 + 288), a1 + 88, v41, v36) || !BN_mod_exp_mont(r, v37, *(a1 + 16), (*(a1 + 288) + 24), v36, *(a1 + 288)))
          {
            goto LABEL_45;
          }

          if (BN_bn2bin_padded(v40, a6, r))
          {
            if (a7 == 3)
            {
              *a2 = a6;
              v39 = 1;
              goto LABEL_46;
            }

            if (a7 == 1)
            {
              if (RSA_padding_check_PKCS1_type_1(a3, a2, a6, v40, a6))
              {
                v39 = 1;
                goto LABEL_46;
              }

              v42 = 136;
              v43 = 518;
            }

            else
            {
              v42 = 143;
              v43 = 513;
            }
          }

          else
          {
            v42 = 68;
            v43 = 499;
          }
        }

        else
        {
          v42 = 115;
          v43 = 488;
        }

        ERR_put_error(4, 0, v42, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa_impl.cc.inc", v43);
      }

LABEL_45:
      v39 = 0;
LABEL_46:
      if (v40 != a3 && v40)
      {
        v44 = v39;
        v46 = *(v40 - 1);
        v45 = v40 - 8;
        v47 = v46 + 8;
        if (v46 != -8)
        {
          bzero(v45, v47);
        }

        free(v45);
        v39 = v44;
      }

      goto LABEL_59;
    }

    v39 = 0;
  }

LABEL_59:
  v48 = v39;
  if ((v35[64] & 1) == 0)
  {
    v49 = *(v35 + 5);
    if (!v49)
    {
      abort();
    }

    *(v35 + 7) = *(*(v35 + 4) + 8 * v49 - 8);
    *(v35 + 5) = v49 - 1;
  }

  BN_CTX_free(v36);
  return v48;
}

uint64_t RSA_verify_pss_mgf1(uint64_t a1, uint64_t a2, uint64_t a3, EVP_MD *a4, const EVP_MD *a5, int a6, const unsigned __int8 *a7, const unsigned __int8 *a8)
{
  v121 = *MEMORY[0x277D85DE8];
  if (a4->pkey_type != a3)
  {
    v15 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa.cc.inc";
    v16 = 4;
    v17 = 125;
    v18 = 682;
LABEL_33:
    ERR_put_error(v16, 0, v17, v15, v18);
    return 0;
  }

  v11 = *(a1 + 8);
  v12 = *(v11 + 2);
  if (v12 < 1)
  {
    if (!v12)
    {
LABEL_31:
      v19 = a5;
      v20 = a6;
      v21 = a4;
      v22 = a2;
      v32 = 0;
      v118 = 0;
      v33 = malloc_type_malloc(8uLL, 0xB4E622C9uLL);
      if (v33)
      {
        goto LABEL_24;
      }

      goto LABEL_32;
    }

    v13 = *v11;
  }

  else
  {
    v13 = *v11;
    while (!*(v13 - 8 + 8 * v12))
    {
      v14 = __OFSUB__(v12--, 1);
      if ((v12 < 0) ^ v14 | (v12 == 0))
      {
        goto LABEL_31;
      }
    }
  }

  v19 = a5;
  v20 = a6;
  v21 = a4;
  v22 = a2;
  v23 = v12 - 1;
  v24 = *(v13 + 8 * v23);
  v25 = v24 != 0;
  v26 = HIDWORD(v24) != 0;
  if (HIDWORD(v24))
  {
    v24 >>= 32;
  }

  v27 = v24 >> 16 != 0;
  if (v24 >> 16)
  {
    v24 >>= 16;
  }

  v28 = v24 > 0xFF;
  if (v24 > 0xFF)
  {
    v24 >>= 8;
  }

  v29 = v24 > 0xF;
  if (v24 > 0xF)
  {
    v24 >>= 4;
  }

  v30 = v24 > 3;
  if (v24 > 3)
  {
    v24 >>= 2;
  }

  v31 = v25 | (v23 << 6) | (32 * v26) | (16 * v27) | (8 * v28) | (4 * v29) | (2 * v30);
  if (v24 > 1)
  {
    ++v31;
  }

  v32 = (v31 + 7) >> 3;
  v118 = v32;
  v33 = malloc_type_malloc(v32 + 8, 0xB4E622C9uLL);
  if (!v33)
  {
LABEL_32:
    v15 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v16 = 14;
    v17 = 65;
    v18 = 217;
    goto LABEL_33;
  }

LABEL_24:
  v34 = v33;
  *v33 = v32;
  v35 = v33 + 8;
  if (rsa_verify_raw_no_self_test(a1, &v118, v33 + 8, v32, a7, a8, 3))
  {
    v36 = *(a1 + 8);
    v37 = *(v36 + 2);
    if (v37 < 1)
    {
      v40 = v21;
      if (!v37)
      {
LABEL_56:
        if (!v118)
        {
          goto LABEL_49;
        }

LABEL_57:
        ERR_put_error(4, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa.cc.inc", 698);
        goto LABEL_58;
      }

      v38 = *v36;
      v39 = *(v36 + 2);
    }

    else
    {
      v38 = *v36;
      v39 = *(v36 + 2);
      v40 = v21;
      while (!*(*v36 - 8 + 8 * v39))
      {
        v14 = __OFSUB__(v39--, 1);
        if ((v39 < 0) ^ v14 | (v39 == 0))
        {
          goto LABEL_56;
        }
      }
    }

    v42 = v39 - 1;
    v43 = *(v38 + 8 * v42);
    v44 = v43 != 0;
    v45 = HIDWORD(v43) != 0;
    if (HIDWORD(v43))
    {
      v43 >>= 32;
    }

    v46 = v43 >> 16 != 0;
    if (v43 >> 16)
    {
      v43 >>= 16;
    }

    v47 = v43 > 0xFF;
    if (v43 > 0xFF)
    {
      v43 >>= 8;
    }

    v48 = v43 > 0xF;
    if (v43 > 0xF)
    {
      v43 >>= 4;
    }

    v49 = v43 > 3;
    if (v43 > 3)
    {
      v43 >>= 2;
    }

    v50 = v43 > 1;
    v51 = v44 | (v42 << 6) | (32 * v45) | (16 * v46) | (8 * v47) | (4 * v48) | (2 * v49);
    if (v50)
    {
      ++v51;
    }

    if (v118 == ((v51 + 7) >> 3))
    {
LABEL_49:
      if (v19)
      {
        v52 = v19;
      }

      else
      {
        v52 = v40;
      }

      memset(&ctx, 0, sizeof(ctx));
      pkey_type = v40->pkey_type;
      if (v20 == -2)
      {
        v54 = -2;
      }

      else
      {
        v54 = v40->pkey_type;
        if (v20 != -1)
        {
          v54 = v20;
          if (v20 <= -3)
          {
            v55 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/padding.cc.inc";
            v56 = 4;
            v57 = 138;
            v58 = 191;
LABEL_113:
            ERR_put_error(v56, 0, v57, v55, v58);
            v59 = 0;
            goto LABEL_114;
          }
        }
      }

      if (v37 < 1)
      {
        if (!v37)
        {
          v77 = 0;
          v62 = 7;
          if (!(*v35 >> 7))
          {
            goto LABEL_103;
          }

          goto LABEL_101;
        }

        v60 = *v36;
        v61 = v37;
      }

      else
      {
        v60 = *v36;
        v61 = v37;
        while (!*(v60 - 8 + 8 * v61))
        {
          v14 = __OFSUB__(v61--, 1);
          if ((v61 < 0) ^ v14 | (v61 == 0))
          {
            v62 = 7;
            goto LABEL_81;
          }
        }
      }

      v63 = *(v60 + 8 * v61 - 8);
      v64 = v63 == 0;
      if (HIDWORD(v63))
      {
        v63 >>= 32;
      }

      if (v63 >> 16)
      {
        v63 >>= 16;
      }

      if (v63 > 0xFF)
      {
        v63 >>= 8;
      }

      v65 = 4 * (v63 > 0xF);
      if (v63 > 0xF)
      {
        v63 >>= 4;
      }

      v66 = v63 > 3;
      if (v63 > 3)
      {
        v63 >>= 2;
      }

      v50 = v63 > 1;
      v67 = v65 - v64 + 2 * v66;
      if (v50)
      {
        ++v67;
      }

      v62 = v67 & 7;
LABEL_81:
      if (v37 >= 1)
      {
        while (!*(v60 - 8 + 8 * v37))
        {
          v14 = __OFSUB__(v37--, 1);
          if ((v37 < 0) ^ v14 | (v37 == 0))
          {
            v77 = 0;
            if (!(*v35 >> v62))
            {
              goto LABEL_103;
            }

            goto LABEL_101;
          }
        }
      }

      v68 = v37 - 1;
      v69 = *(v60 + 8 * v68);
      v70 = v69 != 0;
      v71 = HIDWORD(v69) != 0;
      if (HIDWORD(v69))
      {
        v69 >>= 32;
      }

      v72 = v69 >> 16 != 0;
      if (v69 >> 16)
      {
        v69 >>= 16;
      }

      v73 = v69 > 0xFF;
      if (v69 > 0xFF)
      {
        v69 >>= 8;
      }

      v74 = v69 > 0xF;
      if (v69 > 0xF)
      {
        v69 >>= 4;
      }

      v75 = v69 > 3;
      if (v69 > 3)
      {
        v69 >>= 2;
      }

      v76 = v70 | (v68 << 6) | (32 * v71) | (16 * v72) | (8 * v73) | (4 * v74) | (2 * v75);
      if (v69 > 1)
      {
        ++v76;
      }

      v77 = (v76 + 7) >> 3;
      if (!(*v35 >> v62))
      {
LABEL_103:
        v78 = v62 == 0;
        if (v62)
        {
          v79 = v35;
        }

        else
        {
          v79 = (v35 + 1);
        }

        if (v62)
        {
          v80 = 0;
        }

        else
        {
          v80 = -1;
        }

        v81 = v77 - v78;
        if (v77 - v78 < pkey_type + 2 || (v54 & 0x80000000) == 0 && v81 < pkey_type + 2 + v54)
        {
          v55 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/padding.cc.inc";
          v56 = 4;
          v57 = 113;
          v58 = 207;
          goto LABEL_113;
        }

        if (*(v79 + v81 - 1) != 188)
        {
          v55 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/padding.cc.inc";
          v56 = 4;
          v57 = 127;
          v58 = 211;
          goto LABEL_113;
        }

        type = v40;
        v82 = v81 + ~pkey_type;
        if (v82 > 0xFFFFFFFFFFFFFFF7 || (len = v81 + ~pkey_type, (v83 = malloc_type_malloc(v82 + 8, 0xB4E622C9uLL)) == 0))
        {
          v55 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
          v56 = 14;
          v57 = 65;
          v58 = 217;
          goto LABEL_113;
        }

        v115 = v83;
        *v83 = len;
        v114 = (v83 + 8);
        if (!PKCS1_MGF1(v83 + 8, len, (v79 + len), pkey_type, v52))
        {
          goto LABEL_149;
        }

        v85 = type;
        v86 = len;
        v87 = v114;
        if (!len)
        {
LABEL_135:
          if (v62)
          {
            *v87 &= 0xFFu >> (8 - v62);
          }

          v94 = 0;
          do
          {
            v95 = v87[v94];
            v96 = v94 + 1;
            if (v87[v94])
            {
              v97 = 1;
            }

            else
            {
              v97 = v94 >= v86 - 1;
            }

            ++v94;
          }

          while (!v97);
          if (v95 != 1)
          {
            v98 = 139;
            v99 = 237;
            goto LABEL_148;
          }

          if ((v54 & 0x80000000) == 0 && ~v54 + v77 + v80 - pkey_type != v96)
          {
            v98 = 138;
            v99 = 243;
LABEL_148:
            ERR_put_error(4, 0, v98, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/padding.cc.inc", v99);
            goto LABEL_149;
          }

          if (EVP_DigestInit_ex(&ctx, v85, v84))
          {
            (ctx.digest->init)(&ctx, &kPSSZeroes, 8);
            (ctx.digest->init)(&ctx, v22, pkey_type);
            (ctx.digest->init)(&ctx, v114 + v96, len - v96);
            (ctx.digest->update)(&ctx, __s1);
            final_high = HIDWORD(ctx.digest->final);
            if (final_high)
            {
              bzero(ctx.engine, final_high);
            }

            if (!pkey_type || !memcmp(__s1, (v79 + len), pkey_type))
            {
              v59 = 1;
              free(v115);
              engine = ctx.engine;
              if (ctx.engine)
              {
                goto LABEL_150;
              }

              goto LABEL_114;
            }

            v98 = 105;
            v99 = 255;
            goto LABEL_148;
          }

LABEL_149:
          v59 = 0;
          free(v115);
          engine = ctx.engine;
          if (ctx.engine)
          {
LABEL_150:
            v102 = *(engine - 1);
            v101 = engine - 8;
            v103 = v102 + 8;
            if (v102 != -8)
            {
              bzero(v101, v103);
            }

            free(v101);
          }

LABEL_114:
          if (ctx.md_data)
          {
            (*ctx.md_data)(ctx.flags);
          }

          goto LABEL_116;
        }

        if (len < 8 || (v114 < &v34[v77 + v80 + v78 - pkey_type + 7] ? (v88 = v79 >= &v115[v77 + v80 - pkey_type + 7]) : (v88 = 1), !v88))
        {
          v89 = 0;
LABEL_133:
          v90 = ~v89 + v77 + v80 - pkey_type;
          v91 = &v115[v89 + 8];
          v92 = &v34[v89 + 8 + v78];
          do
          {
            v93 = *v92++;
            *v91++ ^= v93;
            --v90;
          }

          while (v90);
          goto LABEL_135;
        }

        if (len >= 0x20)
        {
          v89 = len & 0xFFFFFFFFFFFFFFE0;
          v105 = &v34[v78 + 24];
          v106 = (v115 + 24);
          v107 = len & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v108 = veorq_s8(*v106, *v105);
            v106[-1] = veorq_s8(v106[-1], v105[-1]);
            *v106 = v108;
            v105 += 2;
            v106 += 2;
            v107 -= 32;
          }

          while (v107);
          v86 = len;
          v85 = type;
          v87 = v114;
          if (len == v89)
          {
            goto LABEL_135;
          }

          if ((len & 0x18) == 0)
          {
            goto LABEL_133;
          }
        }

        else
        {
          v89 = 0;
        }

        v109 = v89;
        v89 = v86 & 0xFFFFFFFFFFFFFFF8;
        v110 = &v34[v109 + 8 + v78];
        v111 = &v115[v109 + 8];
        v112 = v109 - (v86 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v113 = *v110++;
          *v111 = veor_s8(*v111, v113);
          ++v111;
          v112 += 8;
        }

        while (v112);
        if (v86 == v89)
        {
          goto LABEL_135;
        }

        goto LABEL_133;
      }

LABEL_101:
      v55 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/padding.cc.inc";
      v56 = 4;
      v57 = 122;
      v58 = 198;
      goto LABEL_113;
    }

    goto LABEL_57;
  }

LABEL_58:
  v59 = 0;
LABEL_116:
  free(v34);
  return v59;
}

uint64_t rsa_check_public_key(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    ERR_put_error(4, 0, 144, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa_impl.cc.inc", 40);
    return 0;
  }

  top = v2->top;
  if (top < 1)
  {
    if (!top)
    {
LABEL_26:
      ERR_put_error(4, 0, 126, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa_impl.cc.inc", 53);
      return 0;
    }

    d = v2->d;
    v5 = v2->top;
  }

  else
  {
    d = v2->d;
    v5 = v2->top;
    while (!v2->d[v5 - 1])
    {
      v6 = __OFSUB__(v5--, 1);
      if ((v5 < 0) ^ v6 | (v5 == 0))
      {
        goto LABEL_26;
      }
    }
  }

  v8 = v5 - 1;
  v9 = d[v8];
  v10 = v9 != 0;
  v11 = HIDWORD(v9) != 0;
  if (HIDWORD(v9))
  {
    v9 >>= 32;
  }

  v12 = v9 >> 16 != 0;
  if (v9 >> 16)
  {
    v9 >>= 16;
  }

  v13 = v9 > 0xFF;
  if (v9 > 0xFF)
  {
    v9 >>= 8;
  }

  v14 = v9 > 0xF;
  if (v9 > 0xF)
  {
    v9 >>= 4;
  }

  v15 = v9 > 3;
  if (v9 > 3)
  {
    v9 >>= 2;
  }

  v16 = v10 | (v8 << 6) | (32 * v11) | (16 * v12) | (8 * v13) | (4 * v14) | (2 * v15);
  if (v9 > 1)
  {
    ++v16;
  }

  if (v16 > 0x4000)
  {
    ERR_put_error(4, 0, 128, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa_impl.cc.inc", 46);
    return 0;
  }

  if (v16 <= 0x1FF)
  {
    goto LABEL_26;
  }

  if (top < 1 || (*d & 1) == 0 || v2->neg)
  {
    ERR_put_error(4, 0, 104, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa_impl.cc.inc", 60);
    return 0;
  }

  v17 = *(a1 + 16);
  if (!v17)
  {
    if ((*(a1 + 84) & 0x40) == 0)
    {
      ERR_put_error(4, 0, 144, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa_impl.cc.inc", 100);
      return 0;
    }

    return 1;
  }

  v18 = v17->top;
  if (v18 < 1)
  {
    if (!v18)
    {
LABEL_55:
      ERR_put_error(4, 0, 101, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa_impl.cc.inc", 70);
      return 0;
    }

    v19 = v17->d;
    v20 = v17->top;
  }

  else
  {
    v19 = v17->d;
    v20 = v17->top;
    while (!v17->d[v20 - 1])
    {
      v6 = __OFSUB__(v20--, 1);
      if ((v20 < 0) ^ v6 | (v20 == 0))
      {
        goto LABEL_55;
      }
    }
  }

  v21 = v20 - 1;
  v22 = v19[v21];
  v23 = v22 != 0;
  v24 = HIDWORD(v22) != 0;
  if (HIDWORD(v22))
  {
    v22 >>= 32;
  }

  v25 = v22 >> 16 != 0;
  if (v22 >> 16)
  {
    v22 >>= 16;
  }

  v26 = v22 > 0xFF;
  if (v22 > 0xFF)
  {
    v22 >>= 8;
  }

  v27 = v22 > 0xF;
  if (v22 > 0xF)
  {
    v22 >>= 4;
  }

  v28 = v22 > 3;
  if (v22 > 3)
  {
    v22 >>= 2;
  }

  v29 = v23 | (v21 << 6) | (32 * v24) | (16 * v25) | (8 * v26) | (4 * v27) | (2 * v28);
  if (v22 > 1)
  {
    ++v29;
  }

  if (v29 < 2 || v18 < 1 || v17->neg || (*v19 & 1) == 0)
  {
    goto LABEL_55;
  }

  if ((*(a1 + 84) & 0x80) == 0)
  {
    if (v29 >= 0x22)
    {
      ERR_put_error(4, 0, 101, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa_impl.cc.inc", 91);
      return 0;
    }

    return 1;
  }

  if (BN_ucmp(v2, v17) > 0)
  {
    return 1;
  }

  ERR_put_error(4, 0, 101, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa_impl.cc.inc", 77);
  return 0;
}

uint64_t check_mod_inverse(int *a1, const bignum_st *a2, const bignum_st *a, const bignum_st *b, int a5, bignum_ctx *ctx)
{
  if (a->neg || b && (b->neg || (v7 = a1, v8 = a2, v9 = ctx, v10 = a5, v11 = b, v12 = a, v13 = BN_ucmp(a, b), a2 = v8, a = v12, b = v11, a5 = v10, ctx = v9, v14 = v13, a1 = v7, v14 >= 0)))
  {
    *a1 = 0;
    return 1;
  }

  v15 = a2;
  v16 = a;
  v17 = b;
  v18 = a5;
  v19 = a1;
  if ((*(ctx + 56) & 1) == 0)
  {
    v20 = *(ctx + 6);
    v21 = ctx;
    if (bssl::Vector<unsigned long>::MaybeGrow(ctx + 3))
    {
      ctx = v21;
      *(*(v21 + 3) + 8 * (*(v21 + 4))++) = v20;
    }

    else
    {
      *(v21 + 28) = 257;
      ERR_clear_error();
      ctx = v21;
    }
  }

  v22 = ctx;
  result = BN_CTX_get(ctx);
  if (result)
  {
    if (v15->neg || v16->neg)
    {
      ERR_put_error(3, 0, 109, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/mul.cc.inc", 208);
      result = 0;
      goto LABEL_17;
    }

    v24 = v15;
    v25 = result;
    result = bn_mul_impl(result, v24, v16, v22);
    if (result)
    {
      result = bn_div_consttime(0, v25, v25, v17, v18, v22);
      if (result)
      {
        if (v25->neg)
        {
          v26 = 0;
          v27 = v19;
LABEL_35:
          *v27 = v26;
          result = 1;
          goto LABEL_17;
        }

        top = v25->top;
        v27 = v19;
        if (top)
        {
          d = v25->d;
          v30 = *v25->d ^ 1;
          if (top >= 2)
          {
            if (top >= 5)
            {
              v32 = (top - 1) & 0xFFFFFFFFFFFFFFFCLL;
              v31 = v32 | 1;
              v33 = 0uLL;
              v34 = *v25->d ^ 1uLL;
              v35 = (d + 3);
              v36 = v32;
              do
              {
                v34 = vorrq_s8(v35[-1], v34);
                v33 = vorrq_s8(*v35, v33);
                v35 += 2;
                v36 -= 4;
              }

              while (v36);
              v37 = vorrq_s8(v33, v34);
              v30 = vorr_s8(*v37.i8, *&vextq_s8(v37, v37, 8uLL));
              if (top - 1 == v32)
              {
                goto LABEL_34;
              }
            }

            else
            {
              v31 = 1;
            }

            v38 = top - v31;
            v39 = &d[v31];
            do
            {
              v40 = *v39++;
              v30 |= v40;
              --v38;
            }

            while (v38);
          }
        }

        else
        {
          v30 = 1;
        }

LABEL_34:
        v26 = v30 == 0;
        goto LABEL_35;
      }
    }
  }

LABEL_17:
  if ((*(v22 + 56) & 1) == 0)
  {
    v23 = *(v22 + 4);
    if (!v23)
    {
      abort();
    }

    *(v22 + 6) = *(*(v22 + 3) + 8 * v23 - 8);
    *(v22 + 4) = v23 - 1;
  }

  return result;
}

uint64_t rsa_default_private_transform(uint64_t a1, char *a2, const unsigned __int8 *a3, unint64_t a4)
{
  if (!*(a1 + 8) || !*(a1 + 24))
  {
    v11 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa_impl.cc.inc";
    v12 = 4;
    v13 = 144;
    v14 = 539;
LABEL_7:
    ERR_put_error(v12, 0, v13, v11, v14);
    return 0;
  }

  v8 = malloc_type_malloc(0x48uLL, 0xB4E622C9uLL);
  if (!v8)
  {
    v11 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v12 = 14;
    v13 = 65;
    v14 = 217;
    goto LABEL_7;
  }

  v9 = v8;
  *v8 = 64;
  *(v8 + 8) = 0u;
  v10 = (v8 + 8);
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  v66 = 0;
  if (bssl::Vector<unsigned long>::MaybeGrow(v8 + 4))
  {
    *(*(v9 + 4) + 8 * (*(v9 + 5))++) = 0;
  }

  else
  {
    *(v9 + 32) = 257;
    ERR_clear_error();
  }

  v16 = BN_CTX_get(v10);
  v17 = BN_CTX_get(v10);
  v18 = 0;
  if (!v16 || !v17)
  {
    goto LABEL_17;
  }

  v19 = v17;
  if (!BN_bin2bn(a3, a4, v16))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (BN_ucmp(v16, *(a1 + 8)) >= 0)
  {
    v20 = 115;
    v21 = 567;
LABEL_15:
    ERR_put_error(4, 0, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa_impl.cc.inc", v21);
    goto LABEL_16;
  }

  if (!freeze_private_key(a1, v10))
  {
    v20 = 68;
    v21 = 572;
    goto LABEL_15;
  }

  v25 = a1;
  v26 = *(a1 + 84) & 0x48;
  if (!*(a1 + 16) && !v26)
  {
    v20 = 130;
    v21 = 588;
    goto LABEL_15;
  }

  if (v26)
  {
    v27 = 0;
    v28 = *(a1 + 32);
    v29 = v19;
    if (!v28)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v37 = rsa_blinding_get(a1, &v66, v24);
    if (!v37)
    {
      v20 = 68;
      v21 = 595;
      goto LABEL_15;
    }

    v27 = v37;
    if (!BN_BLINDING_convert(v16, v37, *(a1 + 16)))
    {
      goto LABEL_51;
    }

    v25 = a1;
    v28 = *(a1 + 32);
    v29 = v19;
    if (!v28)
    {
      goto LABEL_40;
    }
  }

  v30 = *(v25 + 40);
  if (!v30 || !*(v25 + 16) || !*(v25 + 48) || !*(v25 + 56) || !*(v25 + 64) || *(v30 + 4))
  {
    goto LABEL_40;
  }

  v31 = *(*(v25 + 296) + 32);
  v32 = *(v30 + 2);
  if (v32 > v31)
  {
    v33 = *v30;
    v34 = v32 - v31;
    if ((v32 - v31) >= 4)
    {
      v36 = (v34 & 0xFFFFFFFFFFFFFFFCLL) + v31;
      v44 = (v33 + 8 * v31 + 16);
      v45 = 0uLL;
      v46 = v34 & 0xFFFFFFFFFFFFFFFCLL;
      v47 = 0uLL;
      do
      {
        v45 = vorrq_s8(v44[-1], v45);
        v47 = vorrq_s8(*v44, v47);
        v44 += 2;
        v46 -= 4;
      }

      while (v46);
      v48 = vorrq_s8(v47, v45);
      v35 = vorr_s8(*v48.i8, *&vextq_s8(v48, v48, 8uLL));
      if (v34 == (v34 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_66:
        v25 = a1;
        v29 = v19;
        if (v35)
        {
          goto LABEL_40;
        }

        goto LABEL_67;
      }
    }

    else
    {
      v35 = 0;
      v36 = *(*(v25 + 296) + 32);
    }

    v49 = v32 - v36;
    v50 = (v33 + 8 * v36);
    do
    {
      v51 = *v50++;
      *&v35 |= v51;
      --v49;
    }

    while (v49);
    goto LABEL_66;
  }

LABEL_67:
  if (*(v28 + 4))
  {
    goto LABEL_40;
  }

  v52 = *(*(v25 + 304) + 32);
  v53 = *(v28 + 2);
  if (v53 <= v52)
  {
    goto LABEL_77;
  }

  v54 = *v28;
  v55 = v53 - v52;
  if ((v53 - v52) < 4)
  {
    v56 = 0;
    v57 = *(*(v25 + 304) + 32);
LABEL_74:
    v63 = v53 - v57;
    v64 = (v54 + 8 * v57);
    do
    {
      v65 = *v64++;
      *&v56 |= v65;
      --v63;
    }

    while (v63);
    goto LABEL_76;
  }

  v57 = (v55 & 0xFFFFFFFFFFFFFFFCLL) + v52;
  v58 = (v54 + 8 * v52 + 16);
  v59 = 0uLL;
  v60 = v55 & 0xFFFFFFFFFFFFFFFCLL;
  v61 = 0uLL;
  do
  {
    v59 = vorrq_s8(v58[-1], v59);
    v61 = vorrq_s8(*v58, v61);
    v58 += 2;
    v60 -= 4;
  }

  while (v60);
  v62 = vorrq_s8(v61, v59);
  v56 = vorr_s8(*v62.i8, *&vextq_s8(v62, v62, 8uLL));
  if (v55 != (v55 & 0xFFFFFFFFFFFFFFFCLL))
  {
    goto LABEL_74;
  }

LABEL_76:
  v25 = a1;
  v29 = v19;
  if (!*&v56)
  {
LABEL_77:
    if (!rsa_mod_exp_crt(v29, v16, v25, v10))
    {
      goto LABEL_57;
    }

    goto LABEL_41;
  }

LABEL_40:
  if (BN_mod_exp_mont_consttime(v29, v16, *(v25 + 312), *(v25 + 8), v10, *(v25 + 288)))
  {
LABEL_41:
    if (*(a1 + 16))
    {
      v38 = BN_CTX_get(v10);
      if (!v38 || (v39 = v38, !BN_mod_exp_mont(v38, v19, *(a1 + 16), *(a1 + 8), v10, *(a1 + 288))) || !BN_equal_consttime(v39, v16))
      {
        v40 = 635;
LABEL_56:
        ERR_put_error(4, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa_impl.cc.inc", v40);
        goto LABEL_57;
      }
    }

    if (v26 || BN_mod_mul_montgomery(v19, v19, v27->s, *(a1 + 288), v10))
    {
      if (BN_bn2bin_padded(a2, a4, v19))
      {
        v18 = 1;
        goto LABEL_58;
      }

      v40 = 653;
      goto LABEL_56;
    }

LABEL_51:
    v41 = 0;
    v42 = v66;
    if (v66 == 1024)
    {
LABEL_60:
      BN_BLINDING_free(v27);
      v18 = v41;
      goto LABEL_17;
    }

    goto LABEL_52;
  }

LABEL_57:
  v18 = 0;
LABEL_58:
  if (!v27)
  {
    goto LABEL_17;
  }

  v41 = v18;
  v42 = v66;
  if (v66 == 1024)
  {
    goto LABEL_60;
  }

LABEL_52:
  if (pthread_rwlock_wrlock((a1 + 88)))
  {
    goto LABEL_54;
  }

  *(*(a1 + 360) + v42) = 0;
  v43 = pthread_rwlock_unlock((a1 + 88));
  v18 = v41;
  if (v43)
  {
    goto LABEL_54;
  }

LABEL_17:
  v22 = v18;
  if ((v9[64] & 1) == 0)
  {
    v23 = *(v9 + 5);
    if (v23)
    {
      *(v9 + 7) = *(*(v9 + 4) + 8 * v23 - 8);
      *(v9 + 5) = v23 - 1;
      goto LABEL_20;
    }

LABEL_54:
    abort();
  }

LABEL_20:
  BN_CTX_free(v10);
  return v22;
}

uint64_t rsa_default_sign_raw(void *a1, unint64_t *a2, char *a3, unint64_t a4, const void *a5, size_t a6, int a7)
{
  v12 = a1[1];
  v13 = *(v12 + 2);
  if (v13 < 1)
  {
    if (!v13)
    {
LABEL_23:
      v25 = 0;
      goto LABEL_24;
    }

    v14 = *v12;
  }

  else
  {
    v14 = *v12;
    while (!*(v14 - 8 + 8 * v13))
    {
      v15 = __OFSUB__(v13--, 1);
      if ((v13 < 0) ^ v15 | (v13 == 0))
      {
        goto LABEL_23;
      }
    }
  }

  v16 = v13 - 1;
  v17 = *(v14 + 8 * v16);
  v18 = v17 != 0;
  v19 = HIDWORD(v17) != 0;
  if (HIDWORD(v17))
  {
    v17 >>= 32;
  }

  v20 = v17 >> 16 != 0;
  if (v17 >> 16)
  {
    v17 >>= 16;
  }

  v21 = v17 > 0xFF;
  if (v17 > 0xFF)
  {
    v17 >>= 8;
  }

  v22 = v17 > 0xF;
  if (v17 > 0xF)
  {
    v17 >>= 4;
  }

  v23 = v17 > 3;
  if (v17 > 3)
  {
    v17 >>= 2;
  }

  v24 = v18 | (v16 << 6) | (32 * v19) | (16 * v20) | (8 * v21) | (4 * v22) | (2 * v23);
  if (v17 > 1)
  {
    ++v24;
  }

  v25 = (v24 + 7) >> 3;
  if (v25 <= a4)
  {
LABEL_24:
    v31 = malloc_type_malloc(v25 + 8, 0xB4E622C9uLL);
    if (!v31)
    {
      v26 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v27 = 14;
      v28 = 65;
      v29 = 217;
      goto LABEL_30;
    }

    v32 = v31;
    *v31 = v25;
    v33 = v31 + 8;
    if (a7 == 3)
    {
      if (v25 < a6)
      {
        v34 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/padding.cc.inc";
        v35 = 114;
        v36 = 108;
        goto LABEL_38;
      }

      if (v25 > a6)
      {
        v34 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/padding.cc.inc";
        v35 = 116;
        v36 = 113;
        goto LABEL_38;
      }

      v39 = v31 + 8;
      if (a6)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (a7 != 1)
      {
        v34 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa_impl.cc.inc";
        v35 = 143;
        v36 = 411;
        goto LABEL_38;
      }

      if (v25 <= 0xA)
      {
        v34 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/padding.cc.inc";
        v35 = 126;
        v36 = 36;
LABEL_38:
        ERR_put_error(4, 0, v35, v34, v36);
LABEL_39:
        v37 = 0;
LABEL_40:
        free(v32);
        return v37;
      }

      if (v25 - 11 < a6)
      {
        v34 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/padding.cc.inc";
        v35 = 118;
        v36 = 41;
        goto LABEL_38;
      }

      *(v31 + 4) = 256;
      memset(v31 + 10, 255, v25 - a6 - 3);
      v33[~a6 + v25] = 0;
      if (a6)
      {
        v39 = &v33[v25 - a6];
LABEL_45:
        memcpy(v39, a5, a6);
      }
    }

    v40 = *(*a1 + 56);
    if (v40)
    {
      if (!v40(a1, a3, v33, v25))
      {
        goto LABEL_39;
      }
    }

    else if (!rsa_default_private_transform(a1, a3, v33, v25))
    {
      goto LABEL_39;
    }

    *a2 = v25;
    v37 = 1;
    goto LABEL_40;
  }

  v26 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa_impl.cc.inc";
  v27 = 4;
  v28 = 135;
  v29 = 394;
LABEL_30:
  ERR_put_error(v27, 0, v28, v26, v29);
  return 0;
}

uint64_t freeze_private_key(rsa_st *a1, bignum_ctx *a2)
{
  if (pthread_rwlock_rdlock(&a1->iqmp))
  {
    goto LABEL_55;
  }

  e = a1[2].e;
  if (pthread_rwlock_unlock(&a1->iqmp))
  {
    goto LABEL_55;
  }

  if (e)
  {
    return 1;
  }

  if (pthread_rwlock_wrlock(&a1->iqmp))
  {
    goto LABEL_55;
  }

  if (a1[2].e)
  {
    goto LABEL_33;
  }

  if (!rsa_check_public_key(a1))
  {
    goto LABEL_52;
  }

  method_mod_n = a1[1]._method_mod_n;
  if (!method_mod_n)
  {
    method_mod_n = BN_MONT_CTX_new_for_modulus(a1->version, a2);
    a1[1]._method_mod_n = method_mod_n;
    if (!method_mod_n)
    {
      goto LABEL_52;
    }
  }

  engine = a1->engine;
  if (engine && !a1[1].bignum_data)
  {
    d_low = SLODWORD(method_mod_n->N.d);
    v15 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
    if (v15)
    {
      v16 = v15;
      *v15 = 24;
      *(v15 + 1) = 0;
      v17 = v15 + 8;
      *(v15 + 2) = 0;
      *(v15 + 3) = 0x100000000;
      if (BN_copy((v15 + 8), engine))
      {
        if (bn_resize_words(v17, d_low))
        {
          a1[1].bignum_data = v17;
          if (!a1->meth)
          {
            goto LABEL_32;
          }

          goto LABEL_12;
        }

        v24 = v16[7];
        if ((v24 & 2) == 0)
        {
          v25 = *v17;
          if (*v17)
          {
            v27 = *(v25 - 8);
            v26 = (v25 - 8);
            v28 = v27 + 8;
            if (v27 != -8)
            {
              bzero(v26, v28);
            }

            free(v26);
            v24 = v16[7];
          }
        }

        if (v24)
        {
LABEL_51:
          free(v16);
LABEL_52:
          v18 = 0;
          if (pthread_rwlock_unlock(&a1->iqmp))
          {
            goto LABEL_55;
          }

          return v18;
        }
      }

      else
      {
        v19 = v16[7];
        if ((v19 & 2) == 0)
        {
          v20 = *v17;
          if (*v17)
          {
            v22 = *(v20 - 8);
            v21 = (v20 - 8);
            v23 = v22 + 8;
            if (v22 != -8)
            {
              bzero(v21, v23);
            }

            free(v21);
            v19 = v16[7];
          }
        }

        if (v19)
        {
          goto LABEL_51;
        }
      }

      v18 = 0;
      *v17 = 0;
      if (!pthread_rwlock_unlock(&a1->iqmp))
      {
        return v18;
      }
    }

    else
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      v18 = 0;
      if (!pthread_rwlock_unlock(&a1->iqmp))
      {
        return v18;
      }
    }

LABEL_55:
    abort();
  }

  if (!a1->meth)
  {
    goto LABEL_32;
  }

LABEL_12:
  n = a1->n;
  if (!n || !a1->e)
  {
    goto LABEL_32;
  }

  if (!a1[1]._method_mod_p)
  {
    v8 = BN_MONT_CTX_new_consttime(n, a2);
    a1[1]._method_mod_p = v8;
    if (!v8)
    {
      goto LABEL_52;
    }
  }

  method_mod_q = a1[1]._method_mod_q;
  if (!method_mod_q)
  {
    method_mod_q = BN_MONT_CTX_new_consttime(a1->e, a2);
    a1[1]._method_mod_q = method_mod_q;
    if (!method_mod_q)
    {
      goto LABEL_52;
    }
  }

  d = a1->d;
  if (!d || !a1->p || !a1->q)
  {
    goto LABEL_32;
  }

  if (!ensure_fixed_copy(&a1[1].blinding, d, a1[1]._method_mod_p->N.d) || !ensure_fixed_copy(&a1[1].mt_blinding, a1->p, *(method_mod_q + 8)))
  {
    goto LABEL_52;
  }

  if (*&a1[2].pad)
  {
LABEL_32:
    LOBYTE(a1[2].e) |= 1u;
LABEL_33:
    v18 = 1;
    if (pthread_rwlock_unlock(&a1->iqmp))
    {
      goto LABEL_55;
    }

    return v18;
  }

  v11 = OPENSSL_malloc(0x18uLL);
  if (!v11)
  {
    goto LABEL_52;
  }

  v12 = v11;
  v11->d = 0;
  *&v11->top = 0;
  *&v11->neg = 0x100000000;
  if (BN_mod_mul_montgomery(v11, a1->q, a1[1]._method_mod_p, a1[1]._method_mod_p, a2))
  {
    *&a1[2].pad = v12;
    goto LABEL_32;
  }

  BN_free(v12);
  v18 = 0;
  if (pthread_rwlock_unlock(&a1->iqmp))
  {
    goto LABEL_55;
  }

  return v18;
}

ECDSA_SIG *rsa_blinding_get(rsa_st *a1, unint64_t *a2, bignum_ctx *a3)
{
  fork_generation = CRYPTO_get_fork_generation();
  if (pthread_rwlock_wrlock(&a1->iqmp))
  {
    goto LABEL_60;
  }

  version = a1[2].version;
  if (a1[2].n != fork_generation)
  {
    if (version)
    {
      meth = a1[2].meth;
      if (version == 1)
      {
        v8 = 0;
      }

      else
      {
        v8 = version & 0xFFFFFFFFFFFFFFFELL;
        p_rsa_pub_enc = &meth->rsa_pub_enc;
        v10 = version & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          v11 = *p_rsa_pub_enc;
          *(*(p_rsa_pub_enc - 1) + 4) = 31;
          *(v11 + 4) = 31;
          p_rsa_pub_enc += 2;
          v10 -= 2;
        }

        while (v10);
        if (version == v8)
        {
          goto LABEL_11;
        }
      }

      v12 = version - v8;
      v13 = &meth->name + v8;
      do
      {
        v14 = *v13++;
        *(v14 + 16) = 31;
        --v12;
      }

      while (v12);
    }

LABEL_11:
    a1[2].n = fork_generation;
  }

  if (!version)
  {
    goto LABEL_22;
  }

  v15 = memchr(a1[2].engine, 0, version);
  if (!v15)
  {
    if (version >= 0x400)
    {
      *a2 = 1024;
      v19 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
      if (!v19)
      {
        ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
        v18 = 0;
        if (!pthread_rwlock_unlock(&a1->iqmp))
        {
          return v18;
        }

        goto LABEL_60;
      }

      v20 = v19;
      *v19 = 24;
      v19[1] = 0;
      v18 = (v19 + 1);
      v19[2] = 0;
      v19[3] = 0;
      v21 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
      if (v21)
      {
        *v21 = 24;
        v21[2] = 0;
        v21[3] = 0x100000000;
        v21[1] = 0;
        v18->r = (v21 + 1);
        v22 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
        if (v22)
        {
          *v22 = 24;
          v22[2] = 0;
          v22[3] = 0x100000000;
          v22[1] = 0;
          v20[2] = v22 + 1;
          *(v20 + 6) = 31;
          if (!pthread_rwlock_unlock(&a1->iqmp))
          {
            return v18;
          }

          goto LABEL_60;
        }

        ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
        v49 = (v20 + 2);
      }

      else
      {
        ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
        v49 = v18;
      }

      v49->r = 0;
      BN_BLINDING_free(v18);
      v18 = 0;
      if (!pthread_rwlock_unlock(&a1->iqmp))
      {
        return v18;
      }

      goto LABEL_60;
    }

LABEL_22:
    v23 = 2 * version;
    if (2 * version >= 0x400)
    {
      v23 = 1024;
    }

    if (version)
    {
      v24 = v23;
    }

    else
    {
      v24 = 1;
    }

    v25 = malloc_type_malloc(8 * v24 + 8, 0xB4E622C9uLL);
    v26 = v25;
    if (v25)
    {
      *v25 = 8 * v24;
      v26 = (v25 + 1);
      if (v24)
      {
        bzero(v26, 8 * v24);
      }

      v27 = malloc_type_malloc(v24 + 8, 0xB4E622C9uLL);
      if (v27)
      {
LABEL_31:
        *v27 = v24;
        v28 = v27 + 8;
        if (!v26)
        {
LABEL_42:
          free(v27);
LABEL_43:
          v18 = 0;
          if (pthread_rwlock_unlock(&a1->iqmp))
          {
            goto LABEL_60;
          }

          return v18;
        }

        v53 = v27;
        v29 = a1[2].version;
        if (8 * v29)
        {
          memcpy(v26, a1[2].meth, 8 * v29);
          v29 = a1[2].version;
        }

        if (v29)
        {
          memcpy(v28, a1[2].engine, v29);
          v30 = a1[2].version;
          if (v30 < v24)
          {
            goto LABEL_46;
          }

LABEL_51:
          bzero(&v28[v30], v24 - v30);
          v28[a1[2].version] = 1;
          v40 = a1[2].version;
          v41 = a1[2].meth;
          *a2 = v40;
          v18 = *(&v26->name + v40);
          if (v41)
          {
            rsa_keygen = v41[-1].rsa_keygen;
            p_rsa_keygen = &v41[-1].rsa_keygen;
            v44 = rsa_keygen + 8;
            if (rsa_keygen != -8)
            {
              bzero(p_rsa_keygen, v44);
            }

            free(p_rsa_keygen);
          }

          a1[2].meth = v26;
          engine = a1[2].engine;
          if (engine)
          {
            v47 = *(engine - 1);
            v46 = engine - 8;
            v48 = v47 + 8;
            if (v47 != -8)
            {
              bzero(v46, v48);
            }

            free(v46);
          }

          a1[2].engine = v28;
          a1[2].version = v24;
          if (!pthread_rwlock_unlock(&a1->iqmp))
          {
            return v18;
          }

LABEL_60:
          abort();
        }

        v30 = 0;
        if (!v24)
        {
          goto LABEL_51;
        }

        while (1)
        {
LABEL_46:
          v35 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
          if (!v35)
          {
            ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
            goto LABEL_68;
          }

          v36 = v35;
          *v35 = 24;
          v35[1] = 0;
          v37 = (v35 + 1);
          v35[2] = 0;
          v35[3] = 0;
          v38 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
          if (!v38)
          {
            ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
            v50 = v37;
            goto LABEL_67;
          }

          *v38 = 24;
          v38[2] = 0;
          v38[3] = 0x100000000;
          v38[1] = 0;
          v37->r = (v38 + 1);
          v39 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
          if (!v39)
          {
            break;
          }

          *v39 = 24;
          v39[2] = 0;
          v39[3] = 0x100000000;
          v39[1] = 0;
          v36[2] = v39 + 1;
          *(&v26->name + v30++) = v37;
          *(v36 + 6) = 31;
          if (v24 == v30)
          {
            v30 = a1[2].version;
            goto LABEL_51;
          }
        }

        ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
        v50 = (v36 + 2);
LABEL_67:
        v50->r = 0;
        BN_BLINDING_free(v37);
LABEL_68:
        *(&v26->name + v30) = 0;
        v51 = a1[2].version;
        if (v51 < v30)
        {
          do
          {
            BN_BLINDING_free(*(&v26->name + v51++));
          }

          while (v30 != v51);
        }

        free(v53);
        v52 = v26[-1].rsa_keygen;
        v31 = &v26[-1].rsa_keygen;
        v33 = v52 + 8;
        if (v52 == -8)
        {
LABEL_41:
          v27 = v31;
          goto LABEL_42;
        }

LABEL_40:
        bzero(v31, v33);
        goto LABEL_41;
      }
    }

    else
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      v27 = malloc_type_malloc(v24 + 8, 0xB4E622C9uLL);
      if (v27)
      {
        goto LABEL_31;
      }
    }

    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    if (!v26)
    {
      goto LABEL_43;
    }

    v32 = v26[-1].rsa_keygen;
    v31 = &v26[-1].rsa_keygen;
    v33 = v32 + 8;
    if (v32 == -8)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  *v15 = 1;
  v16 = a1[2].meth;
  v17 = v15 - a1[2].engine;
  *a2 = v17;
  v18 = *(&v16->name + v17);
  if (pthread_rwlock_unlock(&a1->iqmp))
  {
    goto LABEL_60;
  }

  return v18;
}

uint64_t rsa_mod_exp_crt(bignum_st *a1, const bignum_st *a2, rsa_st *a3, bignum_ctx *ctx)
{
  if ((*(ctx + 56) & 1) == 0)
  {
    v8 = *(ctx + 6);
    if (bssl::Vector<unsigned long>::MaybeGrow(ctx + 3))
    {
      *(*(ctx + 3) + 8 * (*(ctx + 4))++) = v8;
    }

    else
    {
      *(ctx + 28) = 257;
      ERR_clear_error();
    }
  }

  v9 = BN_CTX_get(ctx);
  v10 = BN_CTX_get(ctx);
  v11 = 0;
  if (!v9 || !v10)
  {
LABEL_10:
    if (*(ctx + 56))
    {
      return v11;
    }

    goto LABEL_11;
  }

  method_mod_p = a3[1]._method_mod_p;
  if (method_mod_p[1].neg)
  {
    goto LABEL_8;
  }

  method_mod_n = a3[1]._method_mod_n;
  method_mod_q = a3[1]._method_mod_q;
  top = method_mod_q[1].top;
  v18 = method_mod_p[1].top;
  if (v18 <= top)
  {
    goto LABEL_23;
  }

  d = method_mod_p[1].d;
  v20 = v18 - top;
  if ((v18 - top) < 4)
  {
    v21 = 0;
    v22 = method_mod_q[1].top;
LABEL_20:
    v28 = v18 - v22;
    v29 = &d[v22];
    do
    {
      v30 = *v29++;
      *&v21 |= v30;
      --v28;
    }

    while (v28);
    goto LABEL_22;
  }

  v22 = (v20 & 0xFFFFFFFFFFFFFFFCLL) + top;
  v23 = &d[top + 2];
  v24 = 0uLL;
  v25 = v20 & 0xFFFFFFFFFFFFFFFCLL;
  v26 = 0uLL;
  do
  {
    v24 = vorrq_s8(v23[-1], v24);
    v26 = vorrq_s8(*v23, v26);
    v23 += 2;
    v25 -= 4;
  }

  while (v25);
  v27 = vorrq_s8(v26, v24);
  v21 = vorr_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
  if (v20 != (v20 & 0xFFFFFFFFFFFFFFFCLL))
  {
    goto LABEL_20;
  }

LABEL_22:
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_23:
  v31 = v10;
  if (!BN_from_montgomery(v9, a2, a3[1]._method_mod_q, ctx) || !BN_mod_mul_montgomery(v9, v9, method_mod_q, method_mod_q, ctx) || !BN_mod_exp_mont_consttime(v31, v9, a3[1].mt_blinding, method_mod_q + 1, ctx, a3[1]._method_mod_q))
  {
    goto LABEL_9;
  }

  if (method_mod_q[1].neg)
  {
    goto LABEL_8;
  }

  v32 = a3[1]._method_mod_p;
  v33 = v32[1].top;
  v34 = method_mod_q[1].top;
  if (v34 <= v33)
  {
    goto LABEL_36;
  }

  v35 = method_mod_q[1].d;
  v36 = v34 - v33;
  if ((v34 - v33) < 4)
  {
    v37 = 0;
    v38 = v32[1].top;
LABEL_33:
    v44 = v34 - v38;
    v45 = &v35[v38];
    do
    {
      v46 = *v45++;
      *&v37 |= v46;
      --v44;
    }

    while (v44);
    goto LABEL_35;
  }

  v38 = (v36 & 0xFFFFFFFFFFFFFFFCLL) + v33;
  v39 = &v35[v33 + 2];
  v40 = 0uLL;
  v41 = v36 & 0xFFFFFFFFFFFFFFFCLL;
  v42 = 0uLL;
  do
  {
    v40 = vorrq_s8(v39[-1], v40);
    v42 = vorrq_s8(*v39, v42);
    v39 += 2;
    v41 -= 4;
  }

  while (v41);
  v43 = vorrq_s8(v42, v40);
  v37 = vorr_s8(*v43.i8, *&vextq_s8(v43, v43, 8uLL));
  if (v36 != (v36 & 0xFFFFFFFFFFFFFFFCLL))
  {
    goto LABEL_33;
  }

LABEL_35:
  if (v37)
  {
    goto LABEL_8;
  }

LABEL_36:
  if (!BN_from_montgomery(v9, a2, a3[1]._method_mod_p, ctx) || !BN_mod_mul_montgomery(v9, v9, v32, v32, ctx) || !BN_mod_exp_mont_consttime(a1, v9, a3[1].blinding, method_mod_p + 1, ctx, a3[1]._method_mod_p))
  {
    goto LABEL_9;
  }

  if (method_mod_q[1].neg)
  {
    goto LABEL_8;
  }

  v47 = a3[1]._method_mod_p;
  v48 = v47[1].top;
  v49 = method_mod_q[1].top;
  if (v49 > v48)
  {
    v50 = method_mod_q[1].d;
    v51 = v49 - v48;
    if ((v49 - v48) >= 4)
    {
      v53 = (v51 & 0xFFFFFFFFFFFFFFFCLL) + v48;
      v54 = &v50[v48 + 2];
      v55 = 0uLL;
      v56 = v51 & 0xFFFFFFFFFFFFFFFCLL;
      v57 = 0uLL;
      do
      {
        v55 = vorrq_s8(v54[-1], v55);
        v57 = vorrq_s8(*v54, v57);
        v54 += 2;
        v56 -= 4;
      }

      while (v56);
      v58 = vorrq_s8(v57, v55);
      v52 = vorr_s8(*v58.i8, *&vextq_s8(v58, v58, 8uLL));
      if (v51 == (v51 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_48:
        if (!*&v52)
        {
          goto LABEL_49;
        }

LABEL_8:
        ERR_put_error(4, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa_impl.cc.inc", 676);
LABEL_9:
        v11 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v52 = 0;
      v53 = v47[1].top;
    }

    v59 = v49 - v53;
    v60 = &v50[v53];
    do
    {
      v61 = *v60++;
      *&v52 |= v61;
      --v59;
    }

    while (v59);
    goto LABEL_48;
  }

LABEL_49:
  if (!BN_from_montgomery(v9, v31, a3[1]._method_mod_p, ctx) || !BN_mod_mul_montgomery(v9, v9, v47, v47, ctx) || !bn_mod_sub_consttime(a1, a1, v9, &method_mod_p[1], ctx) || !BN_mod_mul_montgomery(a1, a1, *&a3[2].pad, a3[1]._method_mod_p, ctx) || !bn_mul_consttime(a1, a1, method_mod_q + 1, ctx) || !bn_uadd_consttime(a1, a1, v31))
  {
    goto LABEL_9;
  }

  v11 = bn_resize_words(a1, SLODWORD(method_mod_n->N.d));
  if (*(ctx + 56))
  {
    return v11;
  }

LABEL_11:
  v13 = *(ctx + 4);
  if (!v13)
  {
    abort();
  }

  *(ctx + 6) = *(*(ctx + 3) + 8 * v13 - 8);
  *(ctx + 4) = v13 - 1;
  return v11;
}

RSA *RSA_generate_key_ex_maybe_fips(rsa_st *a1, unsigned int a2, const bignum_st *a3, bn_gencb_st *a4, int a5)
{
  v274 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    ERR_put_error(15, 0, 67, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa_impl.cc.inc", 1183);
    return 0;
  }

  v5 = a2 & 0xFFFFFF80;
  if ((a2 & 0xFFFFFF80) < 256)
  {
    ERR_clear_error();
    v6 = RSA_new_method(0);
    if (v6)
    {
      ERR_put_error(4, 0, 126, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa_impl.cc.inc", 994);
      v7 = ERR_peek_error();
      RSA_free(v6);
      if ((v7 & 0xFF000FFF) != 0x400008D)
      {
        goto LABEL_11;
      }

      ERR_clear_error();
      v6 = RSA_new_method(0);
      if (!v6)
      {
        goto LABEL_191;
      }

      ERR_put_error(4, 0, 126, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa_impl.cc.inc", 994);
      v8 = ERR_peek_error();
      RSA_free(v6);
      if ((v8 & 0xFF000FFF) != 0x400008D)
      {
        goto LABEL_11;
      }

      ERR_clear_error();
      v6 = RSA_new_method(0);
      if (!v6)
      {
        goto LABEL_191;
      }

      ERR_put_error(4, 0, 126, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa_impl.cc.inc", 994);
      v9 = ERR_peek_error();
      RSA_free(v6);
      if ((v9 & 0xFF000FFF) != 0x400008D)
      {
LABEL_11:
        v10 = 0;
        v6 = 0;
        goto LABEL_313;
      }

      ERR_clear_error();
      v6 = RSA_new_method(0);
      if (v6)
      {
        ERR_put_error(4, 0, 126, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa_impl.cc.inc", 994);
        ERR_peek_error();
        RSA_free(v6);
        goto LABEL_11;
      }
    }

LABEL_191:
    v10 = 0;
    goto LABEL_313;
  }

  v257 = a2 & 0xFFFFFF80;
  v13 = 0;
  v265 = v5 >> 1;
  n = (v5 >> 1) - 100;
  v255 = (v5 >> 1) - 2048;
  v256 = 2048 - (v5 >> 1);
  while (2)
  {
    ERR_clear_error();
    v10 = RSA_new_method(0);
    if (!v10)
    {
      goto LABEL_312;
    }

    top = a3->top;
    if (top < 1)
    {
      if (!top)
      {
        goto LABEL_37;
      }

      d = a3->d;
    }

    else
    {
      d = a3->d;
      while (!a3->d[top - 1])
      {
        v16 = __OFSUB__(top--, 1);
        if ((top < 0) ^ v16 | (top == 0))
        {
          goto LABEL_37;
        }
      }
    }

    v17 = top - 1;
    v18 = d[v17];
    v19 = v18 != 0;
    v20 = HIDWORD(v18) != 0;
    if (HIDWORD(v18))
    {
      v18 >>= 32;
    }

    v21 = v18 >> 16 != 0;
    if (v18 >> 16)
    {
      v18 >>= 16;
    }

    v22 = v18 > 0xFF;
    if (v18 > 0xFF)
    {
      v18 >>= 8;
    }

    v23 = v18 > 0xF;
    if (v18 > 0xF)
    {
      v18 >>= 4;
    }

    v24 = v18 > 3;
    if (v18 > 3)
    {
      v18 >>= 2;
    }

    v25 = v19 | (v17 << 6) | (32 * v20) | (16 * v21) | (8 * v22) | (4 * v23) | (2 * v24);
    if (v18 > 1)
    {
      ++v25;
    }

    if (v25 >= 0x21)
    {
      ERR_put_error(4, 0, 101, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa_impl.cc.inc", 1005);
      goto LABEL_75;
    }

LABEL_37:
    v26 = malloc_type_malloc(0x48uLL, 0xB4E622C9uLL);
    if (!v26)
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      ERR_put_error(4, 0, 3, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa_impl.cc.inc", 1012);
      goto LABEL_75;
    }

    v27 = v26;
    *v26 = 64;
    *(v26 + 8) = 0u;
    v28 = (v26 + 8);
    *(v26 + 24) = 0u;
    *(v26 + 40) = 0u;
    *(v26 + 56) = 0u;
    if (bssl::Vector<unsigned long>::MaybeGrow(v26 + 4))
    {
      *(*(v27 + 4) + 8 * (*(v27 + 5))++) = 0;
    }

    else
    {
      *(v27 + 32) = 257;
      ERR_clear_error();
    }

    v29 = BN_CTX_get(v28);
    v269 = BN_CTX_get(v28);
    v268 = BN_CTX_get(v28);
    v30 = BN_CTX_get(v28);
    v31 = BN_CTX_get(v28);
    v32 = BN_CTX_get(v28);
    b = v29;
    if (!v29 || !v269 || !v268 || !v30 || !v31 || (v33 = v32) == 0 || !BN_set_bit(v31, n) || !BN_set_bit(v33, v265))
    {
      v43 = 3;
      v44 = 1029;
LABEL_70:
      ERR_put_error(4, 0, v43, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa_impl.cc.inc", v44);
      v45 = 1;
      goto LABEL_71;
    }

    p_version = &v10->version;
    if (v10->version)
    {
      p_engine = &v10->engine;
      if (v10->engine)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v48 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
      if (!v48)
      {
        v56 = &v10->version;
LABEL_164:
        ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
        *v56 = 0;
        v43 = 3;
        v44 = 1042;
        goto LABEL_70;
      }

      *v48 = 24;
      v48[2] = 0;
      v48[3] = 0x100000000;
      v48[1] = 0;
      *p_version = (v48 + 1);
      p_engine = &v10->engine;
      if (v10->engine)
      {
LABEL_52:
        p_meth = &v10->meth;
        if (v10->meth)
        {
          goto LABEL_53;
        }

        goto LABEL_82;
      }
    }

    v49 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
    if (!v49)
    {
      v56 = p_engine;
      goto LABEL_164;
    }

    *v49 = 24;
    v49[2] = 0;
    v49[3] = 0x100000000;
    v49[1] = 0;
    *p_engine = (v49 + 1);
    p_meth = &v10->meth;
    if (v10->meth)
    {
LABEL_53:
      p_n = &v10->n;
      if (v10->n)
      {
        goto LABEL_54;
      }

      goto LABEL_84;
    }

LABEL_82:
    v50 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
    if (!v50)
    {
      v56 = p_meth;
      goto LABEL_164;
    }

    *v50 = 24;
    v50[2] = 0;
    v50[3] = 0x100000000;
    v50[1] = 0;
    *p_meth = (v50 + 1);
    p_n = &v10->n;
    if (v10->n)
    {
LABEL_54:
      p_e = &v10->e;
      if (v10->e)
      {
        goto LABEL_55;
      }

      goto LABEL_86;
    }

LABEL_84:
    v51 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
    if (!v51)
    {
      v56 = p_n;
      goto LABEL_164;
    }

    *v51 = 24;
    v51[2] = 0;
    v51[3] = 0x100000000;
    v51[1] = 0;
    *p_n = (v51 + 1);
    p_e = &v10->e;
    if (v10->e)
    {
LABEL_55:
      p_d = &v10->d;
      if (v10->d)
      {
        goto LABEL_56;
      }

      goto LABEL_88;
    }

LABEL_86:
    v52 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
    if (!v52)
    {
      v56 = p_e;
      goto LABEL_164;
    }

    *v52 = 24;
    v52[2] = 0;
    v52[3] = 0x100000000;
    v52[1] = 0;
    *p_e = (v52 + 1);
    p_d = &v10->d;
    if (v10->d)
    {
LABEL_56:
      p_p = &v10->p;
      if (v10->p)
      {
        goto LABEL_57;
      }

      goto LABEL_90;
    }

LABEL_88:
    v53 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
    if (!v53)
    {
      v56 = p_d;
      goto LABEL_164;
    }

    *v53 = 24;
    v53[2] = 0;
    v53[3] = 0x100000000;
    v53[1] = 0;
    *p_d = (v53 + 1);
    p_p = &v10->p;
    if (v10->p)
    {
LABEL_57:
      p_q = &v10->q;
      if (v10->q)
      {
        goto LABEL_58;
      }

      goto LABEL_92;
    }

LABEL_90:
    v54 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
    if (!v54)
    {
      v56 = p_p;
      goto LABEL_164;
    }

    *v54 = 24;
    v54[2] = 0;
    v54[3] = 0x100000000;
    v54[1] = 0;
    *p_p = (v54 + 1);
    p_q = &v10->q;
    if (v10->q)
    {
LABEL_58:
      if (!BN_copy(*p_meth, a3))
      {
        goto LABEL_94;
      }

      goto LABEL_59;
    }

LABEL_92:
    v55 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
    if (!v55)
    {
      v56 = p_q;
      goto LABEL_164;
    }

    *v55 = 24;
    v55[2] = 0;
    v55[3] = 0x100000000;
    v55[1] = 0;
    *p_q = (v55 + 1);
    if (!BN_copy(*p_meth, a3))
    {
LABEL_94:
      v43 = 3;
      v44 = 1047;
      goto LABEL_70;
    }

LABEL_59:
    v254 = a4;
    if (v30->dmax >= 0x20u)
    {
      v36 = v30->d;
      v42 = a2;
    }

    else
    {
      if ((v30->flags & 2) != 0)
      {
        ERR_put_error(3, 0, 106, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc", 306);
LABEL_166:
        ERR_put_error(4, 0, 3, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa_impl.cc.inc", 1053);
        v45 = 1;
        goto LABEL_71;
      }

      v35 = OPENSSL_calloc(0x20uLL, 8uLL);
      if (!v35)
      {
        goto LABEL_166;
      }

      v36 = v35;
      v251 = p_n;
      v37 = v30->top;
      if (v37)
      {
        memcpy(v35, v30->d, 8 * v37);
      }

      v38 = v30->d;
      if (v30->d)
      {
        v40 = *(v38 - 1);
        v39 = v38 - 1;
        v41 = v40 + 8;
        if (v40 != -8)
        {
          bzero(v39, v41);
        }

        free(v39);
      }

      v30->d = v36;
      v30->dmax = 32;
      v42 = a2;
      p_n = v251;
    }

    *(v36 + 12) = xmmword_273BA74D8;
    *(v36 + 13) = unk_273BA74E8;
    *(v36 + 14) = xmmword_273BA74F8;
    *(v36 + 15) = unk_273BA7508;
    *(v36 + 8) = xmmword_273BA7498;
    *(v36 + 9) = unk_273BA74A8;
    *(v36 + 10) = xmmword_273BA74B8;
    *(v36 + 11) = unk_273BA74C8;
    *(v36 + 4) = xmmword_273BA7458;
    *(v36 + 5) = unk_273BA7468;
    *(v36 + 6) = xmmword_273BA7478;
    *(v36 + 7) = unk_273BA7488;
    *v36 = kBoringSSLRSASqrtTwo;
    *(v36 + 1) = unk_273BA7428;
    *(v36 + 2) = xmmword_273BA7438;
    *(v36 + 3) = unk_273BA7448;
    v30->top = 32;
    v30->neg = 0;
    if (v42 > 0xFFF)
    {
      a4 = v254;
      if (v257 > 0x1000 && (!BN_add_word(v30, 1uLL) || !BN_lshift(v30, v30, v255)))
      {
        v43 = 3;
        v44 = 1070;
        goto LABEL_70;
      }
    }

    else
    {
      a4 = v254;
      if (!BN_rshift(v30, v30, v256))
      {
        v43 = 3;
        v44 = 1062;
        goto LABEL_70;
      }
    }

    v252 = p_n;
    do
    {
      if (!generate_prime(*p_n, v265, *p_meth, 0, v30, v31, v28, a4) || a4 && !(a4->arg)(3, 0, a4) || !generate_prime(*p_e, v265, *p_meth, *p_n, v30, v31, v28, a4) || a4 && !(a4->arg)(3, 1, a4))
      {
        v43 = 3;
        v44 = 1088;
        goto LABEL_70;
      }

      v58 = *p_n;
      v59 = *p_e;
      if (!v58 || !v59)
      {
        if (!v58)
        {
          v59 = 0;
          goto LABEL_130;
        }

LABEL_128:
        *v252 = v59;
        *p_e = v58;
        goto LABEL_130;
      }

      neg = v58->neg;
      if (neg == v59->neg)
      {
        v247 = v58->neg;
        v61 = BN_ucmp(v58, *p_e);
        if (v247)
        {
          v62 = -v61;
        }

        else
        {
          v62 = v61;
        }

        if (v62 < 0)
        {
          goto LABEL_128;
        }
      }

      else if (neg)
      {
        goto LABEL_128;
      }

      v59 = v58;
LABEL_130:
      a4 = v254;
      if (pthread_once(&_MergedGlobals, BN_value_one_init))
      {
        goto LABEL_442;
      }

      if (!bn_usub_consttime(v269, v59, &_MergedGlobals_95))
      {
        goto LABEL_167;
      }

      v63 = *p_e;
      if (pthread_once(&_MergedGlobals, BN_value_one_init))
      {
        goto LABEL_442;
      }

      v64 = bn_usub_consttime(v268, v63, &_MergedGlobals_95);
      v65 = b;
      if (!v64)
      {
        goto LABEL_167;
      }

      if ((v27[64] & 1) == 0)
      {
        v66 = *(v27 + 7);
        if (bssl::Vector<unsigned long>::MaybeGrow(v27 + 4))
        {
          *(*(v27 + 4) + 8 * (*(v27 + 5))++) = v66;
        }

        else
        {
          *(v27 + 32) = 257;
          ERR_clear_error();
        }

        v65 = b;
      }

      v272[0] = 0;
      v67 = BN_CTX_get(v28);
      if (!v67)
      {
        goto LABEL_148;
      }

      if (v269->neg || v268->neg)
      {
        ERR_put_error(3, 0, 109, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/mul.cc.inc", 208);
LABEL_143:
        v68 = 1;
        v65 = b;
        goto LABEL_149;
      }

      v248 = v67;
      if (!bn_mul_impl(b, v269, v268, v28) || !bn_gcd_consttime(v248, v272, v269, v268, v28))
      {
        goto LABEL_143;
      }

      v65 = b;
      if (bn_div_consttime(b, 0, b, v248, 0, v28))
      {
        v68 = bn_rshift_secret_shift(b, b, v272[0], v28) == 0;
      }

      else
      {
LABEL_148:
        v68 = 1;
      }

LABEL_149:
      if ((v27[64] & 1) == 0)
      {
        v69 = *(v27 + 5);
        if (!v69)
        {
          goto LABEL_442;
        }

        *(v27 + 7) = *(*(v27 + 4) + 8 * v69 - 8);
        *(v27 + 5) = v69 - 1;
      }

      if (v68 || !bn_mod_inverse_consttime(*p_engine, &a, *p_meth, v65, v28))
      {
LABEL_167:
        v43 = 3;
        v44 = 1111;
        goto LABEL_70;
      }

      v70 = *p_engine;
      if (*p_engine)
      {
        v71 = v70->neg;
        if (v71 == v33->neg)
        {
          v72 = BN_ucmp(v70, v33);
          if (v71)
          {
            v57 = -v72;
          }

          else
          {
            v57 = v72;
          }
        }

        else if (v71)
        {
          v57 = -1;
        }

        else
        {
          v57 = 1;
        }
      }

      else
      {
        v57 = 1;
      }

      p_n = v252;
    }

    while (v57 < 1);
    if (!bn_mul_consttime(*p_version, *v252, *p_e, v28) || !bn_div_consttime(0, *p_d, *p_engine, v269, v265, v28) || !bn_div_consttime(0, *p_p, *p_engine, v268, v265, v28))
    {
      v43 = 3;
      v44 = 1130;
      goto LABEL_70;
    }

    v73 = *p_version;
    v74 = (*p_version)->top;
    if (v74 < 1)
    {
      if (!v74)
      {
LABEL_180:
        v73->neg = 0;
      }
    }

    else
    {
      while (!v73->d[v74 - 1])
      {
        v16 = __OFSUB__(v74--, 1);
        if ((v74 < 0) ^ v16 | (v74 == 0))
        {
          v73->top = 0;
          goto LABEL_180;
        }
      }

      v73->top = v74;
    }

    v75 = BN_MONT_CTX_new_consttime(v10->n, v28);
    v10[1]._method_mod_p = v75;
    if (!v75 || !bn_mod_inverse_secret_prime(*p_q, *p_e, *v252, v28, v75))
    {
      v43 = 3;
      v44 = 1143;
      goto LABEL_70;
    }

    if (BN_num_bits(*p_version) != v257)
    {
      v43 = 68;
      v44 = 1150;
      goto LABEL_70;
    }

    if (!RSA_check_key(v10) || !freeze_private_key(v10, v28))
    {
      v43 = 124;
      v44 = 1158;
      goto LABEL_70;
    }

    v45 = 0;
LABEL_71:
    if ((v27[64] & 1) == 0)
    {
      v46 = *(v27 + 5);
      if (v46)
      {
        *(v27 + 7) = *(*(v27 + 4) + 8 * v46 - 8);
        *(v27 + 5) = v46 - 1;
        goto LABEL_74;
      }

LABEL_442:
      abort();
    }

LABEL_74:
    BN_CTX_free(v28);
    if (v45)
    {
LABEL_75:
      v47 = ERR_peek_error();
      RSA_free(v10);
      v6 = 0;
      v10 = 0;
      if (v13 > 2)
      {
        goto LABEL_313;
      }

      ++v13;
      if ((v47 & 0xFF000FFF) != 0x400008D)
      {
        goto LABEL_313;
      }

      continue;
    }

    break;
  }

  v76 = a1;
  if (a5)
  {
    if (!RSA_check_key(v10))
    {
      goto LABEL_312;
    }

    v77 = malloc_type_malloc(0x48uLL, 0xB4E622C9uLL);
    if (!v77)
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      v6 = 0;
      goto LABEL_313;
    }

    *v77 = 64;
    *(v77 + 8) = 0u;
    v78 = (v77 + 8);
    *(v77 + 24) = 0u;
    *(v77 + 40) = 0u;
    *(v77 + 56) = 0u;
    memset(&a, 0, sizeof(a));
    HIDWORD(v270) = 0;
    meth = v10->meth;
    if (!meth)
    {
      goto LABEL_260;
    }

    rsa_pub_enc = meth->rsa_pub_enc;
    if (rsa_pub_enc < 1)
    {
      if (rsa_pub_enc)
      {
        name = meth->name;
        v82 = rsa_pub_enc;
        goto LABEL_205;
      }

      goto LABEL_260;
    }

    name = meth->name;
    v82 = rsa_pub_enc;
    while (!*&name[8 * v82 - 8])
    {
      v16 = __OFSUB__(v82--, 1);
      if ((v82 < 0) ^ v16 | (v82 == 0))
      {
        goto LABEL_260;
      }
    }

LABEL_205:
    v83 = v82 - 1;
    v84 = *&name[8 * v83];
    v85 = v84 != 0;
    v86 = HIDWORD(v84) != 0;
    if (HIDWORD(v84))
    {
      v84 >>= 32;
    }

    v87 = v84 >> 16 != 0;
    if (v84 >> 16)
    {
      v84 >>= 16;
    }

    v88 = v84 > 0xFF;
    if (v84 > 0xFF)
    {
      v84 >>= 8;
    }

    v89 = v84 > 0xF;
    if (v84 > 0xF)
    {
      v84 >>= 4;
    }

    v90 = v84 > 3;
    if (v84 > 3)
    {
      v84 >>= 2;
    }

    v91 = v85 | (v83 << 6) | (32 * v86) | (16 * v87) | (8 * v88) | (4 * v89) | (2 * v90);
    if (v84 > 1)
    {
      ++v91;
    }

    if (v91 < 0x11)
    {
      goto LABEL_260;
    }

    if (rsa_pub_enc < 1)
    {
      v92 = rsa_pub_enc;
    }

    else
    {
      v92 = rsa_pub_enc;
      while (!*&name[8 * v92 - 8])
      {
        v16 = __OFSUB__(v92--, 1);
        if ((v92 < 0) ^ v16 | (v92 == 0))
        {
          goto LABEL_238;
        }
      }
    }

    v93 = v92 - 1;
    v94 = *&name[8 * v93];
    v95 = v94 != 0;
    v96 = HIDWORD(v94) != 0;
    if (HIDWORD(v94))
    {
      v94 >>= 32;
    }

    v97 = v94 >> 16 != 0;
    if (v94 >> 16)
    {
      v94 >>= 16;
    }

    v98 = v94 > 0xFF;
    if (v94 > 0xFF)
    {
      v94 >>= 8;
    }

    v99 = v94 > 0xF;
    if (v94 > 0xF)
    {
      v94 >>= 4;
    }

    v100 = v94 > 3;
    if (v94 > 3)
    {
      v94 >>= 2;
    }

    v101 = v95 | (v93 << 6) | (32 * v96) | (16 * v97) | (8 * v98) | (4 * v99) | (2 * v100);
    if (v94 > 1)
    {
      ++v101;
    }

    if (v101 > 0x100)
    {
      goto LABEL_260;
    }

LABEL_238:
    version = v10->version;
    if (version->top < 1 || rsa_pub_enc < 1 || (*version->d & 1) == 0 || (*name & 1) == 0)
    {
      goto LABEL_260;
    }

    if (pthread_once(&stru_28100B4B8, g_small_factors_init))
    {
      goto LABEL_442;
    }

    v272[0] = 0;
    if (!bn_gcd_consttime(&a, v272, version, &qword_2808D4528, v78) || !BN_lshift(&a, &a, v272[0]) || a.neg || !a.top)
    {
      goto LABEL_260;
    }

    v103 = a1;
    v104 = *a.d ^ 1;
    if (a.top >= 2)
    {
      if (a.top < 5u)
      {
        v105 = 1;
        goto LABEL_253;
      }

      v106 = (a.top - 1) & 0xFFFFFFFFFFFFFFFCLL;
      v105 = v106 | 1;
      v107 = 0uLL;
      v108 = *a.d ^ 1uLL;
      v109 = (a.d + 3);
      v110 = v106;
      do
      {
        v108 = vorrq_s8(v109[-1], v108);
        v107 = vorrq_s8(*v109, v107);
        v109 += 2;
        v110 -= 4;
      }

      while (v110);
      v111 = vorrq_s8(v107, v108);
      v104 = vorr_s8(*v111.i8, *&vextq_s8(v111, v111, 8uLL));
      if (a.top - 1 != v106)
      {
LABEL_253:
        v112 = a.top - v105;
        v113 = &a.d[v105];
        do
        {
          v114 = *v113++;
          v104 |= v114;
          --v112;
        }

        while (v112);
      }
    }

    if (!v104 && (BN_enhanced_miller_rabin_primality_test(&v270 + 1, v10->version, v78) ? (v115 = HIDWORD(v270) == 2) : (v115 = 0), v115))
    {
      v117 = 0;
      v116 = 1;
      flags = a.flags;
      if ((a.flags & 2) == 0)
      {
        goto LABEL_261;
      }
    }

    else
    {
LABEL_260:
      v103 = a1;
      ERR_put_error(4, 0, 146, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa.cc.inc", 923);
      v116 = 0;
      v117 = 1;
      flags = a.flags;
      if ((a.flags & 2) == 0)
      {
LABEL_261:
        if (a.d)
        {
          v120 = a.d - 1;
          v119 = *(a.d - 1);
          if (v119 != -8)
          {
            bzero(a.d - 1, v119 + 8);
          }

          free(v120);
        }
      }
    }

    if (flags)
    {
      if (v270 != -8)
      {
        bzero(&v270, v270 + 8);
      }

      free(&v270);
    }

    BN_CTX_free(v78);
    if (v117)
    {
      v76 = v103;
      goto LABEL_303;
    }

    v76 = v103;
    if (v10->engine && v10->n)
    {
      *v272 = 0u;
      v273 = 0u;
      v121 = v10->version;
      v122 = *(v121 + 8);
      if (v122 < 1)
      {
        if (v122)
        {
          v123 = *v121;
          goto LABEL_281;
        }
      }

      else
      {
        v123 = *v121;
        while (!*(v123 - 8 + 8 * v122))
        {
          v16 = __OFSUB__(v122--, 1);
          if ((v122 < 0) ^ v16 | (v122 == 0))
          {
            v122 = 0;
            goto LABEL_294;
          }
        }

LABEL_281:
        v124 = v122 - 1;
        v125 = *(v123 + 8 * v124);
        v126 = v125 != 0;
        v127 = HIDWORD(v125) != 0;
        if (HIDWORD(v125))
        {
          v125 >>= 32;
        }

        v128 = v125 >> 16 != 0;
        if (v125 >> 16)
        {
          v125 >>= 16;
        }

        v129 = v125 > 0xFF;
        if (v125 > 0xFF)
        {
          v125 >>= 8;
        }

        v130 = v125 > 0xF;
        if (v125 > 0xF)
        {
          v125 >>= 4;
        }

        v131 = v125 > 3;
        if (v125 > 3)
        {
          v125 >>= 2;
        }

        v132 = v126 | (v124 << 6) | (32 * v127) | (16 * v128) | (8 * v129) | (4 * v130) | (2 * v131);
        if (v125 > 1)
        {
          ++v132;
        }

        v122 = (v132 + 7) >> 3;
      }

LABEL_294:
      LODWORD(v270) = v122;
      v133 = v122;
      v134 = malloc_type_malloc(v122 + 8, 0xB4E622C9uLL);
      if (v134)
      {
        v135 = v134;
        *v134 = v133;
        v136 = v134 + 8;
        if (rsa_sign_no_self_test(672, v272, 0x20uLL, v134 + 8, &v270, v10))
        {
          if (rsa_verify_no_self_test(672, v272, 0x20uLL, v136, v270, v10))
          {
            v116 = 1;
            goto LABEL_302;
          }

          v137 = 956;
        }

        else
        {
          v137 = 948;
        }

        ERR_put_error(4, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/rsa/rsa.cc.inc", v137);
        v116 = 0;
LABEL_302:
        free(v135);
      }

      else
      {
        ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
        v116 = 0;
      }
    }

LABEL_303:
    if (!v116)
    {
LABEL_312:
      v6 = 0;
      goto LABEL_313;
    }
  }

  rsa_invalidate_key(v76);
  v138 = v76->version;
  if (v138)
  {
    v139 = *(v138 + 20);
    if ((v139 & 2) == 0)
    {
      v140 = *v138;
      if (*v138)
      {
        v142 = *(v140 - 8);
        v141 = (v140 - 8);
        v143 = v142 + 8;
        if (v142 != -8)
        {
          bzero(v141, v143);
        }

        free(v141);
        v139 = *(v138 + 20);
      }
    }

    if (v139)
    {
      v146 = *(v138 - 8);
      v145 = (v138 - 8);
      v147 = v146 + 8;
      if (v146 != -8)
      {
        bzero(v145, v147);
      }

      free(v145);
    }

    else
    {
      *v138 = 0;
    }
  }

  v76->version = v10->version;
  v10->version = 0;
  v148 = v76->meth;
  if (v148)
  {
    rsa_pub_dec_high = HIDWORD(v148->rsa_pub_dec);
    if ((rsa_pub_dec_high & 2) == 0)
    {
      v150 = v148->name;
      if (v148->name)
      {
        v152 = *(v150 - 1);
        v151 = (v150 - 8);
        v153 = v152 + 8;
        if (v152 != -8)
        {
          bzero(v151, v153);
        }

        free(v151);
        rsa_pub_dec_high = HIDWORD(v148->rsa_pub_dec);
      }
    }

    if (rsa_pub_dec_high)
    {
      rsa_keygen = v148[-1].rsa_keygen;
      p_rsa_keygen = &v148[-1].rsa_keygen;
      v156 = rsa_keygen + 8;
      if (rsa_keygen != -8)
      {
        bzero(p_rsa_keygen, v156);
      }

      free(p_rsa_keygen);
    }

    else
    {
      v148->name = 0;
    }
  }

  v76->meth = v10->meth;
  v10->meth = 0;
  engine = v76->engine;
  if (engine)
  {
    v158 = *(engine + 5);
    if ((v158 & 2) == 0)
    {
      v159 = *engine;
      if (*engine)
      {
        v161 = *(v159 - 8);
        v160 = (v159 - 8);
        v162 = v161 + 8;
        if (v161 != -8)
        {
          bzero(v160, v162);
        }

        free(v160);
        v158 = *(engine + 5);
      }
    }

    if (v158)
    {
      v164 = *(engine - 1);
      v163 = engine - 8;
      v165 = v164 + 8;
      if (v164 != -8)
      {
        bzero(v163, v165);
      }

      free(v163);
    }

    else
    {
      *engine = 0;
    }
  }

  v76->engine = v10->engine;
  v10->engine = 0;
  v166 = v76->n;
  if (v166)
  {
    v167 = v166->flags;
    if ((v167 & 2) == 0)
    {
      v168 = v166->d;
      if (v166->d)
      {
        v170 = *(v168 - 1);
        v169 = v168 - 1;
        v171 = v170 + 8;
        if (v170 != -8)
        {
          bzero(v169, v171);
        }

        free(v169);
        v167 = v166->flags;
      }
    }

    if (v167)
    {
      v173 = *&v166[-1].neg;
      p_neg = &v166[-1].neg;
      v174 = v173 + 8;
      if (v173 != -8)
      {
        bzero(p_neg, v174);
      }

      free(p_neg);
    }

    else
    {
      v166->d = 0;
    }
  }

  v76->n = v10->n;
  v10->n = 0;
  e = v76->e;
  if (e)
  {
    v176 = e->flags;
    if ((v176 & 2) == 0)
    {
      v177 = e->d;
      if (e->d)
      {
        v179 = *(v177 - 1);
        v178 = v177 - 1;
        v180 = v179 + 8;
        if (v179 != -8)
        {
          bzero(v178, v180);
        }

        free(v178);
        v176 = e->flags;
      }
    }

    if (v176)
    {
      v182 = *&e[-1].neg;
      v181 = &e[-1].neg;
      v183 = v182 + 8;
      if (v182 != -8)
      {
        bzero(v181, v183);
      }

      free(v181);
    }

    else
    {
      e->d = 0;
    }
  }

  v76->e = v10->e;
  v10->e = 0;
  v184 = v76->d;
  if (v184)
  {
    v185 = v184->flags;
    if ((v185 & 2) == 0)
    {
      v186 = v184->d;
      if (v184->d)
      {
        v188 = *(v186 - 1);
        v187 = v186 - 1;
        v189 = v188 + 8;
        if (v188 != -8)
        {
          bzero(v187, v189);
        }

        free(v187);
        v185 = v184->flags;
      }
    }

    if (v185)
    {
      v191 = *&v184[-1].neg;
      v190 = &v184[-1].neg;
      v192 = v191 + 8;
      if (v191 != -8)
      {
        bzero(v190, v192);
      }

      free(v190);
    }

    else
    {
      v184->d = 0;
    }
  }

  v76->d = v10->d;
  v10->d = 0;
  p = v76->p;
  if (p)
  {
    v194 = p->flags;
    if ((v194 & 2) == 0)
    {
      v195 = p->d;
      if (p->d)
      {
        v197 = *(v195 - 1);
        v196 = v195 - 1;
        v198 = v197 + 8;
        if (v197 != -8)
        {
          bzero(v196, v198);
        }

        free(v196);
        v194 = p->flags;
      }
    }

    if (v194)
    {
      v200 = *&p[-1].neg;
      v199 = &p[-1].neg;
      v201 = v200 + 8;
      if (v200 != -8)
      {
        bzero(v199, v201);
      }

      free(v199);
    }

    else
    {
      p->d = 0;
    }
  }

  v76->p = v10->p;
  v10->p = 0;
  q = v76->q;
  if (q)
  {
    v203 = q->flags;
    if ((v203 & 2) == 0)
    {
      v204 = q->d;
      if (q->d)
      {
        v206 = *(v204 - 1);
        v205 = v204 - 1;
        v207 = v206 + 8;
        if (v206 != -8)
        {
          bzero(v205, v207);
        }

        free(v205);
        v203 = q->flags;
      }
    }

    if (v203)
    {
      v209 = *&q[-1].neg;
      v208 = &q[-1].neg;
      v210 = v209 + 8;
      if (v209 != -8)
      {
        bzero(v208, v210);
      }

      free(v208);
    }

    else
    {
      q->d = 0;
    }
  }

  v76->q = v10->q;
  v10->q = 0;
  BN_MONT_CTX_free(v76[1]._method_mod_n);
  v76[1]._method_mod_n = v10[1]._method_mod_n;
  v10[1]._method_mod_n = 0;
  BN_MONT_CTX_free(v76[1]._method_mod_p);
  v76[1]._method_mod_p = v10[1]._method_mod_p;
  v10[1]._method_mod_p = 0;
  BN_MONT_CTX_free(v76[1]._method_mod_q);
  v76[1]._method_mod_q = v10[1]._method_mod_q;
  v10[1]._method_mod_q = 0;
  bignum_data = v76[1].bignum_data;
  if (bignum_data)
  {
    v212 = *(bignum_data + 5);
    if ((v212 & 2) == 0)
    {
      v213 = *bignum_data;
      if (*bignum_data)
      {
        v215 = *(v213 - 8);
        v214 = (v213 - 8);
        v216 = v215 + 8;
        if (v215 != -8)
        {
          bzero(v214, v216);
        }

        free(v214);
        v212 = *(bignum_data + 5);
      }
    }

    if (v212)
    {
      v218 = *(bignum_data - 1);
      v217 = bignum_data - 8;
      v219 = v218 + 8;
      if (v218 != -8)
      {
        bzero(v217, v219);
      }

      free(v217);
    }

    else
    {
      *bignum_data = 0;
    }
  }

  v76[1].bignum_data = v10[1].bignum_data;
  v10[1].bignum_data = 0;
  blinding = v76[1].blinding;
  if (blinding)
  {
    v221 = *(blinding + 5);
    if ((v221 & 2) == 0)
    {
      v222 = *blinding;
      if (*blinding)
      {
        v224 = *(v222 - 8);
        v223 = (v222 - 8);
        v225 = v224 + 8;
        if (v224 != -8)
        {
          bzero(v223, v225);
        }

        free(v223);
        v221 = *(blinding + 5);
      }
    }

    if (v221)
    {
      v227 = *(blinding - 1);
      v226 = blinding - 8;
      v228 = v227 + 8;
      if (v227 != -8)
      {
        bzero(v226, v228);
      }

      free(v226);
    }

    else
    {
      *blinding = 0;
    }
  }

  v76[1].blinding = v10[1].blinding;
  v10[1].blinding = 0;
  mt_blinding = v76[1].mt_blinding;
  if (mt_blinding)
  {
    v230 = *(mt_blinding + 5);
    if ((v230 & 2) == 0)
    {
      v231 = *mt_blinding;
      if (*mt_blinding)
      {
        v233 = *(v231 - 8);
        v232 = (v231 - 8);
        v234 = v233 + 8;
        if (v233 != -8)
        {
          bzero(v232, v234);
        }

        free(v232);
        v230 = *(mt_blinding + 5);
      }
    }

    if (v230)
    {
      v236 = *(mt_blinding - 1);
      v235 = mt_blinding - 8;
      v237 = v236 + 8;
      if (v236 != -8)
      {
        bzero(v235, v237);
      }

      free(v235);
    }

    else
    {
      *mt_blinding = 0;
    }
  }

  v76[1].mt_blinding = v10[1].mt_blinding;
  v10[1].mt_blinding = 0;
  v238 = *&v76[2].pad;
  if (v238)
  {
    v239 = *(v238 + 5);
    if ((v239 & 2) == 0)
    {
      v240 = *v238;
      if (*v238)
      {
        v242 = *(v240 - 8);
        v241 = (v240 - 8);
        v243 = v242 + 8;
        if (v242 != -8)
        {
          bzero(v241, v243);
        }

        free(v241);
        v239 = *(v238 + 5);
      }
    }

    if (v239)
    {
      v245 = *(v238 - 1);
      v244 = v238 - 1;
      v246 = v245 + 8;
      if (v245 != -8)
      {
        bzero(v244, v246);
      }

      free(v244);
    }

    else
    {
      *v238 = 0;
    }
  }

  *&v76[2].pad = *&v10[2].pad;
  *&v10[2].pad = 0;
  LOBYTE(v76[2].e) = v76[2].e & 0xFE | v10[2].e & 1;
  v6 = 1;
LABEL_313:
  RSA_free(v10);
  return v6;
}