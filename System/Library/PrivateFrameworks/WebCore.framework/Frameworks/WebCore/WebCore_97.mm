uint64_t bssl::Array<unsigned char>::InitForOverwrite(uint64_t result, unint64_t a2)
{
  v3 = result;
  v5 = *result;
  v4 = *(result + 8);
  if (v4 && v4 - 1 >= -v5)
  {
    __break(1u);
  }

  else
  {
    if (v5)
    {
      v7 = *(v5 - 8);
      v6 = (v5 - 8);
      v8 = v7 + 8;
      if (v7 != -8)
      {
        bzero(v6, v8);
      }

      free(v6);
    }

    *v3 = 0;
    v3[1] = 0;
    if (!a2)
    {
      return 1;
    }

    if (a2 <= 0xFFFFFFFFFFFFFFF7)
    {
      v9 = malloc_type_malloc(a2 + 8, 0xB4E622C9uLL);
      if (v9)
      {
        *v9 = a2;
        *v3 = v9 + 1;
        v3[1] = a2;
        return 1;
      }
    }

    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    result = 0;
    *v3 = 0;
  }

  return result;
}

uint64_t bssl::Array<unsigned char>::Init(uint64_t result, size_t a2)
{
  v3 = result;
  v5 = *result;
  v4 = *(result + 8);
  if (v4 && v4 - 1 >= -v5)
  {
    __break(1u);
  }

  else
  {
    if (v5)
    {
      v7 = *(v5 - 8);
      v6 = (v5 - 8);
      v8 = v7 + 8;
      if (v7 != -8)
      {
        bzero(v6, v8);
      }

      free(v6);
    }

    *v3 = 0;
    v3[1] = 0;
    if (a2 <= 0xFFFFFFFFFFFFFFF7 && (v9 = malloc_type_malloc(a2 + 8, 0xB4E622C9uLL)) != 0)
    {
      *v9 = a2;
      v10 = v9 + 1;
      *v3 = v10;
      v3[1] = a2;
      bzero(v10, a2);
      return 1;
    }

    else
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      result = 0;
      *v3 = 0;
    }
  }

  return result;
}

uint64_t x25519_init_key(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a3 == 32)
  {
    v3 = *a2;
    *(a1 + 24) = a2[1];
    *(a1 + 8) = v3;
    v4 = a2[1];
    v20 = *a2;
    v21 = v4;
    LOBYTE(v20) = v20 & 0xF8;
    HIBYTE(v21) = HIBYTE(v4) & 0x3F | 0x40;
    x25519_ge_scalarmult_base(v13, &v20);
    *v10 = vaddq_s64(v14, v17);
    v11 = vaddq_s64(v15, v18);
    v12 = v16 + v19;
    v8[0] = vaddq_s64(vsubq_s64(v17, v14), xmmword_273BA9E40);
    v8[1] = vaddq_s64(vsubq_s64(v18, v15), vdupq_n_s64(0xFFFFFFFFFFFFEuLL));
    v9 = v19 - v16 + 0xFFFFFFFFFFFFELL;
    fe_loose_invert(v7, v8);
    fe_mul_impl(v7, v10, v7);
    fe_tobytes((a1 + 40), v7);
    return 1;
  }

  else
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/hpke/hpke.cc", 154);
    return 0;
  }
}

uint64_t x25519_encap_with_seed(__int16 *a1, unsigned __int8 *a2, void *a3, int64x2_t *a4, void *a5, unint64_t a6, unsigned int *a7, uint64_t a8, __int128 *a9, uint64_t a10)
{
  v41 = *MEMORY[0x277D85DE8];
  if (a6 <= 0x1F)
  {
    v10 = 137;
    v11 = 174;
LABEL_11:
    ERR_put_error(6, 0, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/hpke/hpke.cc", v11);
    return 0;
  }

  if (a10 != 32)
  {
    v10 = 102;
    v11 = 178;
    goto LABEL_11;
  }

  v18 = a9[1];
  v39 = *a9;
  v40 = v18;
  LOBYTE(v39) = v39 & 0xF8;
  HIBYTE(v40) = HIBYTE(v18) & 0x3F | 0x40;
  x25519_ge_scalarmult_base(v32, &v39);
  *v26 = vaddq_s64(v33, v36);
  v27 = vaddq_s64(v34, v37);
  *&v28 = v35 + v38;
  __src[0] = vaddq_s64(vsubq_s64(v36, v33), xmmword_273BA9E40);
  __src[1] = vaddq_s64(vsubq_s64(v37, v34), vdupq_n_s64(0xFFFFFFFFFFFFEuLL));
  v31 = v38 - v35 + 0xFFFFFFFFFFFFELL;
  fe_loose_invert(v25, __src);
  fe_mul_impl(v25, v26, v25);
  fe_tobytes(a4, v25);
  if (a8 != 32 || !X25519(__src, a9, a7))
  {
    v10 = 134;
    v11 = 186;
    goto LABEL_11;
  }

  v20 = a4[1];
  *v26 = *a4;
  v27 = v20;
  v21 = *(a7 + 1);
  v28 = *a7;
  v29 = v21;
  v22 = *a1;
  v23 = EVP_sha256();
  qmemcpy(&v39, "KEM", 3);
  BYTE3(v39) = HIBYTE(v22);
  BYTE4(v39) = v22;
  v25[0] = 0;
  result = hpke_labeled_extract(v23, v32, v25, 0, 0, &v39, 5uLL, "eae_prk", __src, 0x20uLL);
  if (result)
  {
    result = hpke_labeled_expand(v23, a2, 32, v32, v25[0], &v39, 5uLL, "shared_secret", v26, 0x40uLL);
    if (result)
    {
      *a5 = 32;
      *a3 = 32;
      return 1;
    }
  }

  return result;
}

uint64_t x25519_decap(__int16 **a1, unsigned __int8 *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a5 == 32 && X25519(__src, (a1 + 1), a4))
  {
    v9 = *(a4 + 16);
    *v16 = *a4;
    v17 = v9;
    v10 = *(a1 + 7);
    v18 = *(a1 + 5);
    v19 = v10;
    v11 = **a1;
    v12 = EVP_sha256();
    qmemcpy(v15, "KEM", 3);
    v15[3] = HIBYTE(v11);
    v15[4] = v11;
    v14 = 0;
    result = hpke_labeled_extract(v12, v21, &v14, 0, 0, v15, 5uLL, "eae_prk", __src, 0x20uLL);
    if (result)
    {
      result = hpke_labeled_expand(v12, a2, 32, v21, v14, v15, 5uLL, "shared_secret", v16, 0x40uLL);
      if (result)
      {
        *a3 = 32;
        return 1;
      }
    }
  }

  else
  {
    ERR_put_error(6, 0, 134, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/hpke/hpke.cc", 211);
    return 0;
  }

  return result;
}

uint64_t x25519_auth_encap_with_seed(__int16 **a1, unsigned __int8 *a2, void *a3, uint64_t a4, void *a5, unint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, uint64_t a10)
{
  v40 = *MEMORY[0x277D85DE8];
  if (a6 <= 0x1F)
  {
    v10 = 137;
    v11 = 235;
LABEL_12:
    ERR_put_error(6, 0, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/hpke/hpke.cc", v11);
    return 0;
  }

  if (a10 != 32)
  {
    v10 = 102;
    v11 = 239;
    goto LABEL_12;
  }

  v18 = a9[1];
  v38 = *a9;
  v39 = v18;
  LOBYTE(v38) = v38 & 0xF8;
  HIBYTE(v39) = HIBYTE(v18) & 0x3F | 0x40;
  x25519_ge_scalarmult_base(v33, &v38);
  *v30 = vaddq_s64(*&v34[8], v35);
  v31 = vaddq_s64(*&v34[24], v36);
  v32 = *&v34[40] + v37;
  *__src = vaddq_s64(vsubq_s64(v35, *&v34[8]), xmmword_273BA9E40);
  v28 = vaddq_s64(vsubq_s64(v36, *&v34[24]), vdupq_n_s64(0xFFFFFFFFFFFFEuLL));
  v29[0].i64[0] = v37 - *&v34[40] + 0xFFFFFFFFFFFFELL;
  fe_loose_invert(v26, __src);
  fe_mul_impl(v26, v30, v26);
  fe_tobytes(a4, v26);
  if (a8 != 32 || !X25519(__src, a9, a7) || !X25519(v29, (a1 + 1), a7))
  {
    v10 = 134;
    v11 = 248;
    goto LABEL_12;
  }

  v20 = *(a4 + 16);
  v33[0] = *a4;
  v33[1] = v20;
  v21 = *(a7 + 16);
  *v34 = *a7;
  *&v34[16] = v21;
  v22 = *(a1 + 7);
  *&v34[32] = *(a1 + 5);
  v35 = v22;
  v23 = **a1;
  v24 = EVP_sha256();
  qmemcpy(&v38, "KEM", 3);
  BYTE3(v38) = HIBYTE(v23);
  BYTE4(v38) = v23;
  v26[0] = 0;
  result = hpke_labeled_extract(v24, v30, v26, 0, 0, &v38, 5uLL, "eae_prk", __src, 0x40uLL);
  if (result)
  {
    result = hpke_labeled_expand(v24, a2, 32, v30, v26[0], &v38, 5uLL, "shared_secret", v33, 0x60uLL);
    if (result)
    {
      *a5 = 32;
      *a3 = 32;
      return 1;
    }
  }

  return result;
}

uint64_t x25519_auth_decap(__int16 **a1, unsigned __int8 *a2, void *a3, uint64_t a4, uint64_t a5, unsigned int *a6, uint64_t a7)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a5 == 32 && a7 == 32 && X25519(__src, (a1 + 1), a4) && X25519(v27, (a1 + 1), a6))
  {
    v12 = *(a4 + 16);
    *v20 = *a4;
    v21 = v12;
    v13 = *(a1 + 7);
    v22 = *(a1 + 5);
    v23 = v13;
    v14 = *(a6 + 1);
    v24 = *a6;
    v25 = v14;
    v15 = **a1;
    v16 = EVP_sha256();
    qmemcpy(v19, "KEM", 3);
    v19[3] = HIBYTE(v15);
    v19[4] = v15;
    v18 = 0;
    result = hpke_labeled_extract(v16, v28, &v18, 0, 0, v19, 5uLL, "eae_prk", __src, 0x40uLL);
    if (result)
    {
      result = hpke_labeled_expand(v16, a2, 32, v28, v18, v19, 5uLL, "shared_secret", v20, 0x60uLL);
      if (result)
      {
        *a3 = 32;
        return 1;
      }
    }
  }

  else
  {
    ERR_put_error(6, 0, 134, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/hpke/hpke.cc", 279);
    return 0;
  }

  return result;
}

uint64_t EVP_HPKE_CTX_setup_sender(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const unsigned __int8 *a10, unint64_t a11)
{
  v26 = *MEMORY[0x277D85DE8];
  BCM_rand_bytes_with_additional_data(v24, *(a5 + 24), BCM_rand_bytes::kZeroAdditionalData);
  v19 = *(a5 + 24);
  bzero((a1 + 24), 0x2A8uLL);
  *(a1 + 696) = 1;
  *(a1 + 8) = a7;
  *(a1 + 16) = a6;
  *a1 = a5;
  v20 = *(a5 + 56);
  v23 = 0;
  if (v20(a5, v25, &v23, a2, a3, a4, a8, a9, v24, v19) && hpke_key_schedule(a1, 0, v25, v23, a10, a11))
  {
    return 1;
  }

  v22 = *(a1 + 24);
  if (!v22)
  {
    return 0;
  }

  (*(v22 + 24))(a1 + 24);
  result = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t hpke_key_schedule(unsigned __int8 *a1, char a2, const unsigned __int8 *a3, int a4, const unsigned __int8 *a5, unint64_t a6)
{
  v35 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  *&v30 = v34;
  *&v31 = 10;
  __dst[0] = 0;
  if (!CBB_add_space(&v29, __dst, 4))
  {
    return 0;
  }

  *__dst[0] = 1162563656;
  v12 = **a1;
  __dst[0] = 0;
  if (!CBB_add_space(&v29, __dst, 2))
  {
    return 0;
  }

  *(__dst[0] + 1) = v12;
  *__dst[0] = HIBYTE(v12);
  v13 = **(a1 + 2);
  __dst[0] = 0;
  if (!CBB_add_space(&v29, __dst, 2))
  {
    return 0;
  }

  *(__dst[0] + 1) = v13;
  *__dst[0] = HIBYTE(v13);
  v14 = **(a1 + 1);
  __dst[0] = 0;
  result = CBB_add_space(&v29, __dst, 2);
  if (result)
  {
    *(__dst[0] + 1) = v14;
    *__dst[0] = HIBYTE(v14);
    v16 = (*(*(a1 + 2) + 8))();
    v26 = 0;
    result = hpke_labeled_extract(v16, __src, &v26, 0, 0, v34, 0xAuLL, "psk_id_hash", 0, 0);
    if (result)
    {
      v25 = 0;
      result = hpke_labeled_extract(v16, v32, &v25, 0, 0, v34, 0xAuLL, "info_hash", a5, a6);
      if (result)
      {
        v24 = 0;
        v23[0] = 0u;
        v23[1] = &v29;
        v23[2] = 0x81uLL;
        __dst[0] = 0;
        result = CBB_add_space(v23, __dst, 1);
        if (result)
        {
          *__dst[0] = a2;
          v17 = v26;
          __dst[0] = 0;
          result = CBB_add_space(v23, __dst, v26);
          if (result)
          {
            if (v17)
            {
              memcpy(__dst[0], __src, v17);
            }

            v18 = v25;
            __dst[0] = 0;
            result = CBB_add_space(v23, __dst, v25);
            if (result)
            {
              if (v18)
              {
                memcpy(__dst[0], v32, v18);
              }

              result = CBB_finish(v23, 0, &v24);
              if (result)
              {
                v22 = 0;
                result = hpke_labeled_extract(v16, v28, &v22, a3, a4, v34, 0xAuLL, "secret", 0, 0);
                if (result)
                {
                  v19 = (*(*(a1 + 1) + 8))();
                  v20 = *v19;
                  v21 = v22;
                  result = hpke_labeled_expand(v16, __dst, v20, v28, v22, v34, 0xAuLL, "key", &v29, v24);
                  if (result)
                  {
                    result = EVP_AEAD_CTX_init(a1 + 3, v19, __dst, v20, 0);
                    if (result)
                    {
                      result = hpke_labeled_expand(v16, a1 + 600, v19[1], v28, v21, v34, 0xAuLL, "base_nonce", &v29, v24);
                      if (result)
                      {
                        return hpke_labeled_expand(v16, a1 + 624, v16->pkey_type, v28, v21, v34, 0xAuLL, "exp", &v29, v24);
                      }
                    }
                  }
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

uint64_t EVP_HPKE_CTX_open(uint64_t a1, char *a2, size_t *a3, size_t a4, char *a5, unint64_t a6)
{
  v34.i64[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 696))
  {
    v6 = 66;
    v7 = 1020;
LABEL_3:
    ERR_put_error(6, 0, v6, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/hpke/hpke.cc", v7);
    return 0;
  }

  v9 = *(a1 + 688);
  if (v9 == -1)
  {
    v6 = 69;
    v7 = 1024;
    goto LABEL_3;
  }

  v32 = a6;
  v12 = (a1 + 24);
  v11 = *(a1 + 24);
  v13 = *(v11 + 1);
  v14 = a1;
  if (*(v11 + 1))
  {
    v15 = a2;
    v16 = a4;
    v17 = a3;
    bzero(&v33, *(v11 + 1));
    a2 = v15;
    a3 = v17;
    a4 = v16;
    a1 = v14;
  }

  *(&v32 + v13) = bswap64(v9);
  if (v13)
  {
    if (v13 < 8)
    {
      v18 = 0;
LABEL_23:
      v28 = v13 - v18;
      v29 = &v33.i8[v18];
      v30 = (v18 + a1 + 600);
      do
      {
        v31 = *v30++;
        *v29++ ^= v31;
        --v28;
      }

      while (v28);
      goto LABEL_25;
    }

    if (v13 >= 0x20)
    {
      v18 = v13 & 0xE0;
      v19 = veorq_s8(v34, *(a1 + 616));
      v33 = veorq_s8(v33, *(a1 + 600));
      v34 = v19;
      if (v18 != 32)
      {
        v20 = veorq_s8(v36, *(a1 + 648));
        v35 = veorq_s8(v35, *(a1 + 632));
        v36 = v20;
        if (v18 != 64)
        {
          v21 = veorq_s8(v38, *(a1 + 680));
          v37 = veorq_s8(v37, *(a1 + 664));
          v38 = v21;
          if (v18 != 96)
          {
            v22 = veorq_s8(vars0, *(a1 + 712));
            v39 = veorq_s8(v39, *(a1 + 696));
            vars0 = v22;
          }
        }
      }

      if (v18 == v13)
      {
        goto LABEL_25;
      }

      if ((v13 & 0x18) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = 0;
    }

    v23 = v18;
    v18 = v13 & 0xF8;
    v24 = (v23 + a1 + 600);
    v25 = &v33.i8[v23];
    v26 = v23 - v18;
    do
    {
      v27 = *v24++;
      *v25 = veor_s8(*v25, v27);
      ++v25;
      v26 += 8;
    }

    while (v26);
    if (v18 == v13)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

LABEL_25:
  result = EVP_AEAD_CTX_open(v12, a2, a3, a4, &v33, v13, a5, v32);
  if (result)
  {
    ++*(v14 + 688);
    return 1;
  }

  return result;
}

uint64_t EVP_HPKE_CTX_seal(uint64_t a1, char *a2, void *a3, size_t a4, char *a5, size_t a6, uint64_t a7, uint64_t a8)
{
  v40.i64[1] = *MEMORY[0x277D85DE8];
  if (!*(a1 + 696))
  {
    v22 = 66;
    v23 = 1044;
LABEL_10:
    ERR_put_error(6, 0, v22, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/hpke/hpke.cc", v23);
    return 0;
  }

  v9 = *(a1 + 688);
  if (v9 == -1)
  {
    v22 = 69;
    v23 = 1048;
    goto LABEL_10;
  }

  v12 = a1 + 24;
  v13 = *(a1 + 24);
  v14 = *(v13 + 1);
  if (*(v13 + 1))
  {
    v38 = a1 + 24;
    v15 = a2;
    v16 = a4;
    v17 = a3;
    v18 = a7;
    v19 = a8;
    v20 = v14;
    bzero(&v39, v14);
    v14 = v20;
    v12 = a1 + 24;
    a8 = v19;
    a7 = v18;
    a2 = v15;
    a3 = v17;
    a4 = v16;
  }

  *(&v38 + v14) = bswap64(v9);
  if (!v14)
  {
    goto LABEL_24;
  }

  if (v14 >= 8)
  {
    if (v14 >= 0x20)
    {
      v21 = v14 & 0xE0;
      v25 = veorq_s8(v40, *(a1 + 616));
      v39 = veorq_s8(v39, *(a1 + 600));
      v40 = v25;
      if (v21 != 32)
      {
        v26 = veorq_s8(v42, *(a1 + 648));
        v41 = veorq_s8(v41, *(a1 + 632));
        v42 = v26;
        if (v21 != 64)
        {
          v27 = veorq_s8(v44, *(a1 + 680));
          v43 = veorq_s8(v43, *(a1 + 664));
          v44 = v27;
          if (v21 != 96)
          {
            v28 = veorq_s8(vars0, *(a1 + 712));
            v45 = veorq_s8(v45, *(a1 + 696));
            vars0 = v28;
          }
        }
      }

      if (v21 == v14)
      {
        goto LABEL_24;
      }

      if ((v14 & 0x18) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v21 = 0;
    }

    v29 = v21;
    v21 = v14 & 0xF8;
    v30 = (v29 + a1 + 600);
    v31 = &v39.i8[v29];
    v32 = v29 - v21;
    do
    {
      v33 = *v30++;
      *v31 = veor_s8(*v31, v33);
      ++v31;
      v32 += 8;
    }

    while (v32);
    if (v21 == v14)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v21 = 0;
LABEL_22:
  v34 = v14 - v21;
  v35 = &v39.i8[v21];
  v36 = (v21 + a1 + 600);
  do
  {
    v37 = *v36++;
    *v35++ ^= v37;
    --v34;
  }

  while (v34);
LABEL_24:
  result = EVP_AEAD_CTX_seal(v12, a2, a3, a4, &v39, v14, a5, a6, a7, a8);
  if (result)
  {
    ++*(a1 + 688);
    return 1;
  }

  return result;
}

uint64_t hpke_labeled_expand(env_md_st *a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4, ENGINE *a5, const unsigned __int8 *a6, size_t a7, const char *a8, const unsigned __int8 *__src, unint64_t a10)
{
  v32 = 0;
  *v30 = 0u;
  v31 = 0u;
  v18 = malloc_type_malloc(8uLL, 0xB4E622C9uLL);
  if (v18)
  {
    *v18 = 0;
    v19 = v18 + 1;
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v19 = 0;
  }

  LOBYTE(v30[0]) = 0;
  v29 = 0;
  v31 = 0uLL;
  v30[1] = v19;
  LOBYTE(v32) = 1;
  __dst = 0;
  result = CBB_add_space(&v29, &__dst, 2);
  if (result)
  {
    *(__dst + 1) = a3;
    *__dst = BYTE1(a3);
    __dst = 0;
    result = CBB_add_space(&v29, &__dst, 7);
    if (result)
    {
      v21 = __dst;
      *(__dst + 3) = 829828421;
      *v21 = 1162563656;
      __dst = 0;
      result = CBB_add_space(&v29, &__dst, a7);
      if (result)
      {
        if (a7)
        {
          memcpy(__dst, a6, a7);
        }

        v22 = strlen(a8);
        __dst = 0;
        result = CBB_add_space(&v29, &__dst, v22);
        if (result)
        {
          if (v22)
          {
            memcpy(__dst, a8, v22);
          }

          __dst = 0;
          result = CBB_add_space(&v29, &__dst, a10);
          if (result)
          {
            if (a10)
            {
              memcpy(__dst, __src, a10);
            }

            v23 = v30[1];
            if (LOBYTE(v30[0]))
            {
              v24 = v31 + BYTE8(v31);
              v23 = (v24 + *v30[1]);
              v25 = *(v30[1] + 1) - v24;
            }

            else
            {
              v25 = v31;
            }

            result = HKDF_expand(a2, a3, a1, a4, a5, v23, v25) != 0;
          }
        }
      }
    }
  }

  if (!LOBYTE(v30[0]) && (v32 & 1) != 0 && v30[1])
  {
    v26 = result;
    v28 = v30[1] - 8;
    v27 = *(v30[1] - 1);
    if (v27 != -8)
    {
      bzero(v28, v27 + 8);
    }

    free(v28);
    return v26;
  }

  return result;
}

uint64_t hpke_labeled_extract(const env_md_st *a1, unsigned __int8 *a2, unint64_t *a3, const unsigned __int8 *a4, int a5, const unsigned __int8 *a6, size_t a7, const char *a8, const unsigned __int8 *__src, unint64_t a10)
{
  v32 = 0;
  *d = 0u;
  *n = 0u;
  v18 = malloc_type_malloc(8uLL, 0xB4E622C9uLL);
  if (v18)
  {
    *v18 = 0;
    v19 = (v18 + 1);
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v19 = 0;
  }

  LOBYTE(d[0]) = 0;
  v29 = 0;
  n[0] = 0;
  n[1] = 0;
  d[1] = v19;
  LOBYTE(v32) = 1;
  __dst = 0;
  result = CBB_add_space(&v29, &__dst, 7);
  if (result)
  {
    v21 = __dst;
    *(__dst + 3) = 829828421;
    *v21 = 1162563656;
    __dst = 0;
    result = CBB_add_space(&v29, &__dst, a7);
    if (result)
    {
      if (a7)
      {
        memcpy(__dst, a6, a7);
      }

      v22 = strlen(a8);
      __dst = 0;
      result = CBB_add_space(&v29, &__dst, v22);
      if (result)
      {
        if (v22)
        {
          memcpy(__dst, a8, v22);
        }

        __dst = 0;
        result = CBB_add_space(&v29, &__dst, a10);
        if (result)
        {
          if (a10)
          {
            memcpy(__dst, __src, a10);
          }

          v23 = d[1];
          if (LOBYTE(d[0]))
          {
            v24 = n[0] + LOBYTE(n[1]);
            v23 = (v24 + *d[1]);
            v25 = *(d[1] + 1) - v24;
          }

          else
          {
            v25 = n[0];
          }

          LODWORD(__dst) = 0;
          if (!HMAC(a1, a4, a5, v23, v25, a2, &__dst))
          {
            ERR_put_error(31, 0, 28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/hkdf/hkdf.cc.inc", 51);
            result = 0;
            if (LOBYTE(d[0]))
            {
              return result;
            }

            goto LABEL_20;
          }

          *a3 = __dst;
          result = 1;
        }
      }
    }
  }

  if (LOBYTE(d[0]))
  {
    return result;
  }

LABEL_20:
  if ((v32 & 1) != 0 && d[1])
  {
    v26 = result;
    v28 = d[1] - 8;
    v27 = *(d[1] - 1);
    if (v27 != -8)
    {
      bzero(v28, v27 + 8);
    }

    free(v28);
    return v26;
  }

  return result;
}

__n128 KYBER_generate_key_external_entropy(char *a1, uint64_t a2, uint64_t a3)
{
  v137 = *MEMORY[0x277D85DE8];
  v114 = 0;
  v116 = 0u;
  memset(&v113[1], 0, 192);
  v113[0].i64[0] = 1;
  v113[0].i64[1] = 64;
  v115 = 72;
  BORINGSSL_keccak_absorb(v113, a3, 0x20uLL);
  BORINGSSL_keccak_squeeze(v113[0].i32, __dst, 0x40uLL);
  *(a2 + 1536) = __dst[0];
  *(a2 + 1552) = __dst[1];
  matrix_expand(a2 + 1600, __dst);
  v117 = 0;
  vector_generate_secret_eta_2((a2 + 6208), &v117, v136);
  vector_ntt((a2 + 6208));
  vector_generate_secret_eta_2(v113[0].i16, &v117, v136);
  vector_ntt(v113);
  bzero(a2, 0x600uLL);
  v6 = 0;
  v7 = (a2 + 16);
  v8 = a2 + 3136;
  v9 = 1600;
  v10 = vdupq_n_s32(0x13AFu);
  v11.i64[0] = 0xF2000000F2;
  v11.i64[1] = 0xF2000000F2;
  v12.i64[0] = 0xD000D000D000D00;
  v12.i64[1] = 0xD000D000D000D00;
  v13 = a2;
  do
  {
    v14 = 0;
    v15 = &kModRoots;
    do
    {
      v16 = (a2 + v9 + v14 * 8);
      v138 = vld2q_s16(v16);
      v17 = (a2 + v14 * 8 + 6208);
      v141 = vld2q_s16(v17);
      v18 = vmull_u16(*v141.val[1].i8, *v138.val[1].i8);
      v19 = vmull_high_u16(v141.val[1], v138.val[1]);
      v20 = vuzp1q_s16(vmlal_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v18.i8, *v10.i8), 0x18uLL), vmull_high_u32(v18, v10), 0x18uLL), v11), *v141.val[1].i8, *v138.val[1].i8), vmlal_high_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v19.i8, *v10.i8), 0x18uLL), vmull_high_u32(v19, v10), 0x18uLL), v11), v141.val[1], v138.val[1]));
      v21 = vaddq_s16(v20, v12);
      v22 = vorrq_s8(vandq_s8(vcltzq_s16(v21), v20), vmaxq_s16(v21, 0));
      v23 = *v15++;
      v24 = vmull_high_u16(v22, v23);
      v25 = vmlal_u16(vmull_u16(*v22.i8, *v23.i8), *v141.val[0].i8, *v138.val[0].i8);
      v26 = vmlal_high_u16(v24, v141.val[0], v138.val[0]);
      v27 = vuzp1q_s16(vmlaq_s32(v25, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v25.i8, *v10.i8), 0x18uLL), vmull_high_u32(v25, v10), 0x18uLL), v11), vmlaq_s32(v26, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v26.i8, *v10.i8), 0x18uLL), vmull_high_u32(v26, v10), 0x18uLL), v11));
      v28 = vaddq_s16(v27, v12);
      v29 = vmlal_u16(vmull_u16(*v141.val[1].i8, *v138.val[0].i8), *v138.val[1].i8, *v141.val[0].i8);
      v30 = vmlal_high_u16(vmull_high_u16(v141.val[1], v138.val[0]), v138.val[1], v141.val[0]);
      v31 = vuzp1q_s16(vmlaq_s32(v29, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v29.i8, *v10.i8), 0x18uLL), vmull_high_u32(v29, v10), 0x18uLL), v11), vmlaq_s32(v30, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v30.i8, *v10.i8), 0x18uLL), vmull_high_u32(v30, v10), 0x18uLL), v11));
      v32 = vorrq_s8(vandq_s8(vcltzq_s16(v28), v27), vmaxq_s16(v28, 0));
      v138.val[1] = vaddq_s16(v31, v12);
      v138.val[0] = vorrq_s8(vandq_s8(vcltzq_s16(v138.val[1]), v31), vmaxq_s16(v138.val[1], 0));
      v33 = &v118[v14];
      vst2q_s16(v33, v138);
      v14 += 4;
    }

    while (v14 != 64);
    v34 = 0;
    v35 = v7;
    do
    {
      v36 = vaddq_s16(*&v118[v34], v35[-1]);
      v37 = vaddq_s16(*&v118[v34 + 2], *v35);
      v38 = vaddq_s16(v36, v12);
      v39 = vaddq_s16(v37, v12);
      v35[-1] = vorrq_s8(vandq_s8(vcltzq_s16(v38), v36), vmaxq_s16(v38, 0));
      *v35 = vorrq_s8(vandq_s8(vcltzq_s16(v39), v37), vmaxq_s16(v39, 0));
      v35 += 2;
      v34 += 4;
    }

    while (v34 != 64);
    v40 = 0;
    v41 = &kModRoots;
    do
    {
      v42 = (v8 + v40 * 8);
      v139 = vld2q_s16(v42);
      v43 = (a2 + 6720 + v40 * 8);
      v142 = vld2q_s16(v43);
      v44 = vmull_u16(*v142.val[1].i8, *v139.val[1].i8);
      v45 = vmull_high_u16(v142.val[1], v139.val[1]);
      v46 = vuzp1q_s16(vmlal_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v44.i8, *v10.i8), 0x18uLL), vmull_high_u32(v44, v10), 0x18uLL), v11), *v142.val[1].i8, *v139.val[1].i8), vmlal_high_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v45.i8, *v10.i8), 0x18uLL), vmull_high_u32(v45, v10), 0x18uLL), v11), v142.val[1], v139.val[1]));
      v47 = vaddq_s16(v46, v12);
      v48 = vorrq_s8(vandq_s8(vcltzq_s16(v47), v46), vmaxq_s16(v47, 0));
      v49 = *v41++;
      v50 = vmull_high_u16(v48, v49);
      v51 = vmlal_u16(vmull_u16(*v48.i8, *v49.i8), *v142.val[0].i8, *v139.val[0].i8);
      v52 = vmlal_high_u16(v50, v142.val[0], v139.val[0]);
      v53 = vuzp1q_s16(vmlaq_s32(v51, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v51.i8, *v10.i8), 0x18uLL), vmull_high_u32(v51, v10), 0x18uLL), v11), vmlaq_s32(v52, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v52.i8, *v10.i8), 0x18uLL), vmull_high_u32(v52, v10), 0x18uLL), v11));
      v54 = vaddq_s16(v53, v12);
      v55 = vmlal_u16(vmull_u16(*v142.val[1].i8, *v139.val[0].i8), *v139.val[1].i8, *v142.val[0].i8);
      v56 = vmlal_high_u16(vmull_high_u16(v142.val[1], v139.val[0]), v139.val[1], v142.val[0]);
      v57 = vuzp1q_s16(vmlaq_s32(v55, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v55.i8, *v10.i8), 0x18uLL), vmull_high_u32(v55, v10), 0x18uLL), v11), vmlaq_s32(v56, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v56.i8, *v10.i8), 0x18uLL), vmull_high_u32(v56, v10), 0x18uLL), v11));
      v58 = vorrq_s8(vandq_s8(vcltzq_s16(v54), v53), vmaxq_s16(v54, 0));
      v139.val[1] = vaddq_s16(v57, v12);
      v139.val[0] = vorrq_s8(vandq_s8(vcltzq_s16(v139.val[1]), v57), vmaxq_s16(v139.val[1], 0));
      v59 = &v118[v40];
      vst2q_s16(v59, v139);
      v40 += 4;
    }

    while (v40 != 64);
    for (i = 0; i != 512; i += 32)
    {
      v61 = vaddq_s16(*&v118[i / 8], *(v13 + i));
      v62 = vaddq_s16(*&v118[i / 8 + 2], v7[i / 0x10]);
      v63 = vaddq_s16(v61, v12);
      v64 = vaddq_s16(v62, v12);
      *(v13 + i) = vorrq_s8(vandq_s8(vcltzq_s16(v63), v61), vmaxq_s16(v63, 0));
      v7[i / 0x10] = vorrq_s8(vandq_s8(vcltzq_s16(v64), v62), vmaxq_s16(v64, 0));
    }

    v65 = 0;
    v66 = &kModRoots;
    do
    {
      v67 = (a2 + 7232 + v65 * 8);
      v140 = vld2q_s16(v67);
      v68 = (v13 + v65 * 8 + 4672);
      v143 = vld2q_s16(v68);
      v69 = vmull_u16(*v140.val[1].i8, *v143.val[1].i8);
      v70 = vmull_high_u16(v140.val[1], v143.val[1]);
      v71 = vuzp1q_s16(vmlal_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v69.i8, *v10.i8), 0x18uLL), vmull_high_u32(v69, v10), 0x18uLL), v11), *v140.val[1].i8, *v143.val[1].i8), vmlal_high_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v70.i8, *v10.i8), 0x18uLL), vmull_high_u32(v70, v10), 0x18uLL), v11), v140.val[1], v143.val[1]));
      v72 = vaddq_s16(v71, v12);
      v73 = vorrq_s8(vandq_s8(vcltzq_s16(v72), v71), vmaxq_s16(v72, 0));
      v74 = *v66++;
      v75 = vmull_high_u16(v73, v74);
      v76 = vmlal_u16(vmull_u16(*v73.i8, *v74.i8), *v140.val[0].i8, *v143.val[0].i8);
      v77 = vmlal_high_u16(v75, v140.val[0], v143.val[0]);
      v78 = vuzp1q_s16(vmlaq_s32(v76, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v76.i8, *v10.i8), 0x18uLL), vmull_high_u32(v76, v10), 0x18uLL), v11), vmlaq_s32(v77, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v77.i8, *v10.i8), 0x18uLL), vmull_high_u32(v77, v10), 0x18uLL), v11));
      v79 = vaddq_s16(v78, v12);
      v80 = vmlal_u16(vmull_u16(*v140.val[1].i8, *v143.val[0].i8), *v143.val[1].i8, *v140.val[0].i8);
      v81 = vmlal_high_u16(vmull_high_u16(v140.val[1], v143.val[0]), v143.val[1], v140.val[0]);
      v82 = vuzp1q_s16(vmlaq_s32(v80, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v80.i8, *v10.i8), 0x18uLL), vmull_high_u32(v80, v10), 0x18uLL), v11), vmlaq_s32(v81, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v81.i8, *v10.i8), 0x18uLL), vmull_high_u32(v81, v10), 0x18uLL), v11));
      v83 = vorrq_s8(vandq_s8(vcltzq_s16(v79), v78), vmaxq_s16(v79, 0));
      v140.val[1] = vaddq_s16(v82, v12);
      v140.val[0] = vorrq_s8(vandq_s8(vcltzq_s16(v140.val[1]), v82), vmaxq_s16(v140.val[1], 0));
      v84 = &v118[v65];
      vst2q_s16(v84, v140);
      v65 += 4;
    }

    while (v65 != 64);
    for (j = 0; j != 512; j += 32)
    {
      v86 = vaddq_s16(*&v118[j / 8], *(v13 + j));
      v87 = vaddq_s16(*&v118[j / 8 + 2], v7[j / 0x10]);
      v88 = vaddq_s16(v86, v12);
      v89 = vaddq_s16(v87, v12);
      *(v13 + j) = vorrq_s8(vandq_s8(vcltzq_s16(v88), v86), vmaxq_s16(v88, 0));
      v7[j / 0x10] = vorrq_s8(vandq_s8(vcltzq_s16(v89), v87), vmaxq_s16(v89, 0));
    }

    ++v6;
    v9 += 512;
    v7 += 32;
    v8 += 512;
    v13 += 512;
  }

  while (v6 != 3);
  v90 = 0;
  v91.i64[0] = 0xD000D000D000D00;
  v91.i64[1] = 0xD000D000D000D00;
  do
  {
    v92 = (a2 + v90 * 16);
    v93 = vaddq_s16(v113[v90], *(a2 + v90 * 16));
    v94 = vaddq_s16(v113[v90 + 1], *(a2 + v90 * 16 + 16));
    v95 = vaddq_s16(v93, v91);
    v96 = vaddq_s16(v94, v91);
    *v92 = vorrq_s8(vandq_s8(vcltzq_s16(v95), v93), vmaxq_s16(v95, 0));
    v92[1] = vorrq_s8(vandq_s8(vcltzq_s16(v96), v94), vmaxq_s16(v96, 0));
    v90 += 2;
  }

  while (v90 != 32);
  v97.i64[0] = 0xD000D000D000D00;
  v97.i64[1] = 0xD000D000D000D00;
  do
  {
    v98 = (a2 + v90 * 16);
    v99 = vaddq_s16(v113[v90], *(a2 + v90 * 16));
    v100 = vaddq_s16(v113[v90 + 1], *(a2 + v90 * 16 + 16));
    v101 = vaddq_s16(v99, v97);
    v102 = vaddq_s16(v100, v97);
    *v98 = vorrq_s8(vandq_s8(vcltzq_s16(v101), v99), vmaxq_s16(v101, 0));
    v98[1] = vorrq_s8(vandq_s8(vcltzq_s16(v102), v100), vmaxq_s16(v102, 0));
    v90 += 2;
  }

  while (v90 != 64);
  v103.i64[0] = 0xD000D000D000D00;
  v103.i64[1] = 0xD000D000D000D00;
  do
  {
    v104 = (a2 + v90 * 16);
    v105 = vaddq_s16(v113[v90], *(a2 + v90 * 16));
    v106 = vaddq_s16(v113[v90 + 1], *(a2 + v90 * 16 + 16));
    v107 = vaddq_s16(v105, v103);
    v108 = vaddq_s16(v106, v103);
    *v104 = vorrq_s8(vandq_s8(vcltzq_s16(v107), v105), vmaxq_s16(v107, 0));
    v104[1] = vorrq_s8(vandq_s8(vcltzq_s16(v108), v106), vmaxq_s16(v108, 0));
    v90 += 2;
  }

  while (v90 != 96);
  v112[0] = 0u;
  v112[1] = a1;
  v112[2] = 0x4A0uLL;
  v134 = 0;
  if (!CBB_add_space(v112, &v134, 1152) || (vector_encode(v134, a2, 12), v118[0] = 0, !CBB_add_space(v112, v118, 32)))
  {
    abort();
  }

  v109 = v118[0];
  v110 = *(a2 + 1552);
  *v118[0] = *(a2 + 1536);
  *(v109 + 16) = v110;
  v131 = 0;
  v133 = 0u;
  v130 = 0u;
  v129 = 0u;
  v128 = 0u;
  v127 = 0u;
  v126 = 0u;
  v125 = 0u;
  v124 = 0u;
  v123 = 0u;
  v122 = 0u;
  v121 = 0u;
  v120 = 0u;
  v119 = 0u;
  v118[0] = 0;
  v118[1] = 32;
  v132 = 136;
  BORINGSSL_keccak_absorb(v118, a1, 0x4A0uLL);
  BORINGSSL_keccak_squeeze(v118, (a2 + 1568), 0x20uLL);
  result = *(a3 + 32);
  *(a2 + 7760) = *(a3 + 48);
  *(a2 + 7744) = result;
  return result;
}

unint64_t matrix_expand(uint64_t a1, _OWORD *a2)
{
  v2 = 0;
  v71 = *MEMORY[0x277D85DE8];
  v3 = a2[1];
  v67[0] = *a2;
  v67[1] = v3;
  while (2)
  {
    v68 = v2;
    v69 = 0;
    v64 = 0;
    v66 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 2;
    v51[0] = 0;
    v65 = 168;
    BORINGSSL_keccak_absorb(&v50, v67, 0x22uLL);
    v4 = v2;
    v5 = 0;
    v49 = v4;
    v6 = a1 + 1536 * v4;
    while (2)
    {
      if (v51[0])
      {
        if (v51[0] != 168 || HIDWORD(v50) == 1)
        {
          goto LABEL_100;
        }
      }

      if (!HIDWORD(v50))
      {
        if (v50 < 4)
        {
          *(&v52 + v66) ^= 0x1F1F0606u >> (8 * v50);
          HIBYTE(v51[v65 / 8]) ^= 0x80u;
          keccak_f(&v52);
          HIDWORD(v50) = 1;
          goto LABEL_13;
        }

LABEL_100:
        abort();
      }

LABEL_13:
      v8 = __dst;
      v9 = *(&v66 + 1);
      v10 = v65;
      v11 = 168;
      do
      {
        if (v9 == v10)
        {
          keccak_f(&v52);
          v9 = 0;
          *(&v66 + 1) = 0;
          v10 = v65;
          if (v11 >= v65)
          {
            v12 = v65;
          }

          else
          {
            v12 = v11;
          }

          v13 = v65;
          if (v65)
          {
LABEL_25:
            memcpy(v8, &v52 + v9, v12);
            v13 = v9;
          }
        }

        else
        {
          if (v11 >= v10 - v9)
          {
            v12 = v10 - v9;
          }

          else
          {
            v12 = v11;
          }

          v13 = v10;
          if (v10 != v9)
          {
            goto LABEL_25;
          }
        }

        v8 += v12;
        v9 = v13 + v12;
        *(&v66 + 1) = v13 + v12;
        v11 -= v12;
      }

      while (v11);
      v14 = 0;
      do
      {
        v15 = __dst[v14 + 1];
        v16 = __dst[v14] | ((v15 & 0xF) << 8);
        v17 = __dst[v14 + 2];
        if (v16 <= 0xD00)
        {
          *(v6 + 2 * v5++) = v16;
        }

        v18 = (v15 >> 4) | (16 * v17);
        if (v18 <= 0xD00 && v5 <= 255)
        {
          *(v6 + 2 * v5++) = v18;
        }

        if (v14 > 0xA4)
        {
          break;
        }

        v14 += 3;
      }

      while (v5 < 256);
      if (v5 < 256)
      {
        continue;
      }

      break;
    }

    v68 = v49;
    v69 = 1;
    v64 = 0;
    v66 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 2;
    v51[0] = 0;
    v65 = 168;
    BORINGSSL_keccak_absorb(&v50, v67, 0x22uLL);
    v19 = 0;
    v20 = a1 + 1536 * v49 + 512;
    while (2)
    {
      if (v51[0])
      {
        if (v51[0] != 168 || HIDWORD(v50) == 1)
        {
          goto LABEL_100;
        }
      }

      if (!HIDWORD(v50))
      {
        if (v50 >= 4)
        {
          goto LABEL_100;
        }

        *(&v52 + v66) ^= 0x1F1F0606u >> (8 * v50);
        HIBYTE(v51[v65 / 8]) ^= 0x80u;
        keccak_f(&v52);
        HIDWORD(v50) = 1;
      }

      v22 = __dst;
      v23 = *(&v66 + 1);
      v24 = v65;
      v25 = 168;
      while (2)
      {
        if (v23 == v24)
        {
          keccak_f(&v52);
          v23 = 0;
          *(&v66 + 1) = 0;
          v24 = v65;
          if (v25 >= v65)
          {
            v26 = v65;
          }

          else
          {
            v26 = v25;
          }

          v27 = v65;
          if (v65)
          {
LABEL_57:
            memcpy(v22, &v52 + v23, v26);
            v27 = v23;
          }
        }

        else
        {
          if (v25 >= v24 - v23)
          {
            v26 = v24 - v23;
          }

          else
          {
            v26 = v25;
          }

          v27 = v24;
          if (v24 != v23)
          {
            goto LABEL_57;
          }
        }

        v22 += v26;
        v23 = v27 + v26;
        *(&v66 + 1) = v27 + v26;
        v25 -= v26;
        if (v25)
        {
          continue;
        }

        break;
      }

      v28 = 0;
      do
      {
        v29 = __dst[v28 + 1];
        v30 = __dst[v28] | ((v29 & 0xF) << 8);
        v31 = __dst[v28 + 2];
        if (v30 <= 0xD00)
        {
          *(v20 + 2 * v19++) = v30;
        }

        v32 = (v29 >> 4) | (16 * v31);
        if (v32 <= 0xD00 && v19 <= 255)
        {
          *(v20 + 2 * v19++) = v32;
        }

        if (v28 > 0xA4)
        {
          break;
        }

        v28 += 3;
      }

      while (v19 < 256);
      if (v19 < 256)
      {
        continue;
      }

      break;
    }

    v68 = v49;
    v69 = 2;
    v64 = 0;
    v66 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 2;
    v51[0] = 0;
    v65 = 168;
    result = BORINGSSL_keccak_absorb(&v50, v67, 0x22uLL);
    v34 = 0;
    v35 = a1 + 1536 * v49 + 1024;
    while (2)
    {
      if (v51[0])
      {
        if (v51[0] != 168 || HIDWORD(v50) == 1)
        {
          goto LABEL_100;
        }
      }

      if (!HIDWORD(v50))
      {
        if (v50 >= 4)
        {
          goto LABEL_100;
        }

        *(&v52 + v66) ^= 0x1F1F0606u >> (8 * v50);
        HIBYTE(v51[v65 / 8]) ^= 0x80u;
        result = keccak_f(&v52);
        HIDWORD(v50) = 1;
      }

      v37 = __dst;
      v38 = *(&v66 + 1);
      v39 = v65;
      v40 = 168;
      while (2)
      {
        if (v38 == v39)
        {
          result = keccak_f(&v52);
          v38 = 0;
          *(&v66 + 1) = 0;
          v39 = v65;
          if (v40 >= v65)
          {
            v41 = v65;
          }

          else
          {
            v41 = v40;
          }

          v42 = v65;
          if (v65)
          {
LABEL_89:
            result = memcpy(v37, &v52 + v38, v41);
            v42 = v38;
          }
        }

        else
        {
          if (v40 >= v39 - v38)
          {
            v41 = v39 - v38;
          }

          else
          {
            v41 = v40;
          }

          v42 = v39;
          if (v39 != v38)
          {
            goto LABEL_89;
          }
        }

        v37 += v41;
        v38 = v42 + v41;
        *(&v66 + 1) = v42 + v41;
        v40 -= v41;
        if (v40)
        {
          continue;
        }

        break;
      }

      v43 = 0;
      do
      {
        v44 = __dst[v43 + 1];
        v45 = __dst[v43] | ((v44 & 0xF) << 8);
        v46 = __dst[v43 + 2];
        if (v45 <= 0xD00)
        {
          *(v35 + 2 * v34++) = v45;
        }

        v47 = (v44 >> 4) | (16 * v46);
        if (v47 <= 0xD00 && v34 <= 255)
        {
          *(v35 + 2 * v34++) = v47;
        }

        if (v43 > 0xA4)
        {
          break;
        }

        v43 += 3;
      }

      while (v34 < 256);
      if (v34 < 256)
      {
        continue;
      }

      break;
    }

    v2 = v49 + 1;
    if (v49 != 2)
    {
      continue;
    }

    return result;
  }
}

int *vector_generate_secret_eta_2(__int16 *a1, _BYTE *a2, _OWORD *a3)
{
  v331 = *MEMORY[0x277D85DE8];
  v5 = a3[1];
  v321[0] = *a3;
  v321[1] = v5;
  v6 = (*a2)++;
  v322 = v6;
  v318 = 0;
  v320 = 0u;
  v316 = 0u;
  v317 = 0u;
  v314 = 0u;
  v315 = 0u;
  v312 = 0u;
  v313 = 0u;
  v310 = 0u;
  v311 = 0u;
  v308 = 0u;
  v309 = 0u;
  v306 = 0u;
  v307 = 0u;
  v304 = 3;
  v305 = 0;
  v319 = 136;
  BORINGSSL_keccak_absorb(&v304, v321, 0x21uLL);
  BORINGSSL_keccak_squeeze(&v304, __dst.i8, 0x80uLL);
  v7 = vmovl_u8(*__dst.i8);
  v8 = vmovl_high_u16(v7);
  v9 = vmovl_u16(*v7.i8);
  v10 = vmovl_high_u8(__dst);
  v11 = vmovl_high_u16(v10);
  v12 = vmovl_u16(*v10.i8);
  v13 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v8 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v8, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v8, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v8, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v14 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v9 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v9, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v9, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v9, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v15 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v11 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v11, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v11, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v11, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v16 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v12 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v12, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v12, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v12, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v17 = vdupq_n_s32(0xD01u);
  v18 = vaddq_s32(vandq_s8(vcltzq_s32(v14), v17), v14);
  v332.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v16), v17), v16), vaddq_s32(vandq_s8(vcltzq_s32(v15), v17), v15));
  v19 = vshrq_n_u8(__dst, 4uLL);
  v20 = vmovl_high_u8(v19);
  v21 = vmovl_high_u16(v20);
  v22 = vmovl_u16(*v20.i8);
  v23 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v21 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v21, 3uLL)), (*&vshrq_n_u32(v21, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v21, 0x1DuLL), 0x1FuLL);
  v24 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v22 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v22, 3uLL)), (*&vshrq_n_u32(v22, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v22, 0x1DuLL), 0x1FuLL);
  v340.val[0] = vuzp1q_s16(v18, vaddq_s32(vandq_s8(vcltzq_s32(v13), v17), v13));
  v25 = vmovl_u8(*v19.i8);
  v26 = vmovl_high_u16(v25);
  v27 = vmovl_u16(*v25.i8);
  v28 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v26 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v26, 3uLL)), (*&vshrq_n_u32(v26, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v26, 0x1DuLL), 0x1FuLL);
  v29 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v27 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v27, 3uLL)), (*&vshrq_n_u32(v27, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v27, 0x1DuLL), 0x1FuLL);
  v340.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v29), v17), v29), vaddq_s32(vandq_s8(vcltzq_s32(v28), v17), v28));
  v30 = a1;
  vst2q_s16(v30, v340);
  v30 += 16;
  v332.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v24), v17), v24), vaddq_s32(vandq_s8(vcltzq_s32(v23), v17), v23));
  vst2q_s16(v30, v332);
  v332.val[0] = v325;
  v31 = vmovl_u8(*v324.i8);
  v32 = vmovl_high_u16(v31);
  v33 = vmovl_u16(*v31.i8);
  v34 = vmovl_high_u8(v324);
  v35 = vmovl_high_u16(v34);
  v36 = vmovl_u16(*v34.i8);
  v37 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v32 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v32, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v32, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v32, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v38 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v33 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v33, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v33, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v33, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v39 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v35 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v35, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v35, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v35, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v40 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v36 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v36, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v36, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v36, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v337.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v40), v17), v40), vaddq_s32(vandq_s8(vcltzq_s32(v39), v17), v39));
  v332.val[1] = vshrq_n_u8(v324, 4uLL);
  v340.val[0] = vmovl_high_u8(v332.val[1]);
  v340.val[1] = vmovl_high_u16(v340.val[0]);
  v340.val[0] = vmovl_u16(*v340.val[0].i8);
  v340.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v340.val[1] & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v340.val[1], 3uLL)), (*&vshrq_n_u32(v340.val[1], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v340.val[1], 0x1DuLL), 0x1FuLL);
  v340.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v340.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v340.val[0], 3uLL)), (*&vshrq_n_u32(v340.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v340.val[0], 0x1DuLL), 0x1FuLL);
  v334.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v38), v17), v38), vaddq_s32(vandq_s8(vcltzq_s32(v37), v17), v37));
  v332.val[1] = vmovl_u8(*v332.val[1].i8);
  v41 = vmovl_high_u16(v332.val[1]);
  v332.val[1] = vmovl_u16(*v332.val[1].i8);
  v42 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v41 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v41, 3uLL)), (*&vshrq_n_u32(v41, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v41, 0x1DuLL), 0x1FuLL);
  v332.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v332.val[1] & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v332.val[1], 3uLL)), (*&vshrq_n_u32(v332.val[1], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v332.val[1], 0x1DuLL), 0x1FuLL);
  v334.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v332.val[1]), v17), v332.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v42), v17), v42));
  v43 = a1 + 32;
  vst2q_s16(v43, v334);
  v337.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v340.val[0]), v17), v340.val[0]), vaddq_s32(vandq_s8(vcltzq_s32(v340.val[1]), v17), v340.val[1]));
  v44 = a1 + 48;
  vst2q_s16(v44, v337);
  v332.val[1] = vmovl_u8(*v332.val[0].i8);
  v334.val[0] = vmovl_high_u16(v332.val[1]);
  v332.val[1] = vmovl_u16(*v332.val[1].i8);
  v334.val[1] = vmovl_high_u8(v332.val[0]);
  v337.val[0] = vmovl_high_u16(v334.val[1]);
  v334.val[1] = vmovl_u16(*v334.val[1].i8);
  v334.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v334.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v334.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v334.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v334.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v332.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v332.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v332.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v332.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v332.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v337.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v337.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v337.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v337.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v337.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v334.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v334.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v334.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v334.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v334.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v340.val[1] = vaddq_s32(vandq_s8(vcltzq_s32(v332.val[1]), v17), v332.val[1]);
  v332.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v334.val[1]), v17), v334.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v337.val[0]), v17), v337.val[0]));
  v332.val[0] = vshrq_n_u8(v332.val[0], 4uLL);
  v334.val[1] = vmovl_high_u8(v332.val[0]);
  v337.val[0] = vmovl_high_u16(v334.val[1]);
  v334.val[1] = vmovl_u16(*v334.val[1].i8);
  v337.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v337.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v337.val[0], 3uLL)), (*&vshrq_n_u32(v337.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v337.val[0], 0x1DuLL), 0x1FuLL);
  v334.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v334.val[1] & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v334.val[1], 3uLL)), (*&vshrq_n_u32(v334.val[1], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v334.val[1], 0x1DuLL), 0x1FuLL);
  v337.val[1] = vuzp1q_s16(v340.val[1], vaddq_s32(vandq_s8(vcltzq_s32(v334.val[0]), v17), v334.val[0]));
  v332.val[0] = vmovl_u8(*v332.val[0].i8);
  v340.val[1] = vmovl_high_u16(v332.val[0]);
  v332.val[0] = vmovl_u16(*v332.val[0].i8);
  v340.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v340.val[1] & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v340.val[1], 3uLL)), (*&vshrq_n_u32(v340.val[1], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v340.val[1], 0x1DuLL), 0x1FuLL);
  v332.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v332.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v332.val[0], 3uLL)), (*&vshrq_n_u32(v332.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v332.val[0], 0x1DuLL), 0x1FuLL);
  v340.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v332.val[0]), v17), v332.val[0]), vaddq_s32(vandq_s8(vcltzq_s32(v340.val[1]), v17), v340.val[1]));
  v45 = a1 + 64;
  vst2q_s16(v45, v340);
  v334.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v334.val[1]), v17), v334.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v337.val[0]), v17), v337.val[0]));
  v46 = a1 + 80;
  vst2q_s16(v46, *(&v332 + 16));
  v332.val[0] = v327;
  v334.val[0] = vmovl_u8(*v326.i8);
  v334.val[1] = vmovl_high_u16(v334.val[0]);
  v334.val[0] = vmovl_u16(*v334.val[0].i8);
  v337.val[0] = vmovl_high_u8(v326);
  v337.val[1] = vmovl_high_u16(v337.val[0]);
  v337.val[0] = vmovl_u16(*v337.val[0].i8);
  v334.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v334.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v334.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v334.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v334.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v334.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v334.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v334.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v334.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v334.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v337.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v337.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v337.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v337.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v337.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v337.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v337.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v337.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v337.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v337.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v337.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v337.val[0]), v17), v337.val[0]), vaddq_s32(vandq_s8(vcltzq_s32(v337.val[1]), v17), v337.val[1]));
  v332.val[1] = vshrq_n_u8(v326, 4uLL);
  v340.val[0] = vmovl_high_u8(v332.val[1]);
  v340.val[1] = vmovl_high_u16(v340.val[0]);
  v340.val[0] = vmovl_u16(*v340.val[0].i8);
  v340.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v340.val[1] & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v340.val[1], 3uLL)), (*&vshrq_n_u32(v340.val[1], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v340.val[1], 0x1DuLL), 0x1FuLL);
  v340.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v340.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v340.val[0], 3uLL)), (*&vshrq_n_u32(v340.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v340.val[0], 0x1DuLL), 0x1FuLL);
  v334.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v334.val[0]), v17), v334.val[0]), vaddq_s32(vandq_s8(vcltzq_s32(v334.val[1]), v17), v334.val[1]));
  v332.val[1] = vmovl_u8(*v332.val[1].i8);
  v47 = vmovl_high_u16(v332.val[1]);
  v332.val[1] = vmovl_u16(*v332.val[1].i8);
  v48 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v47 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v47, 3uLL)), (*&vshrq_n_u32(v47, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v47, 0x1DuLL), 0x1FuLL);
  v332.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v332.val[1] & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v332.val[1], 3uLL)), (*&vshrq_n_u32(v332.val[1], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v332.val[1], 0x1DuLL), 0x1FuLL);
  v334.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v332.val[1]), v17), v332.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v48), v17), v48));
  v49 = a1 + 96;
  vst2q_s16(v49, v334);
  v337.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v340.val[0]), v17), v340.val[0]), vaddq_s32(vandq_s8(vcltzq_s32(v340.val[1]), v17), v340.val[1]));
  v50 = a1 + 112;
  vst2q_s16(v50, v337);
  v332.val[1] = vmovl_u8(*v332.val[0].i8);
  v334.val[0] = vmovl_high_u16(v332.val[1]);
  v332.val[1] = vmovl_u16(*v332.val[1].i8);
  v334.val[1] = vmovl_high_u8(v332.val[0]);
  v337.val[0] = vmovl_high_u16(v334.val[1]);
  v334.val[1] = vmovl_u16(*v334.val[1].i8);
  v334.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v334.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v334.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v334.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v334.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v332.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v332.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v332.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v332.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v332.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v337.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v337.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v337.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v337.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v337.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v334.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v334.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v334.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v334.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v334.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v340.val[1] = vaddq_s32(vandq_s8(vcltzq_s32(v332.val[1]), v17), v332.val[1]);
  v332.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v334.val[1]), v17), v334.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v337.val[0]), v17), v337.val[0]));
  v332.val[0] = vshrq_n_u8(v332.val[0], 4uLL);
  v334.val[1] = vmovl_high_u8(v332.val[0]);
  v337.val[0] = vmovl_high_u16(v334.val[1]);
  v334.val[1] = vmovl_u16(*v334.val[1].i8);
  v337.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v337.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v337.val[0], 3uLL)), (*&vshrq_n_u32(v337.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v337.val[0], 0x1DuLL), 0x1FuLL);
  v334.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v334.val[1] & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v334.val[1], 3uLL)), (*&vshrq_n_u32(v334.val[1], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v334.val[1], 0x1DuLL), 0x1FuLL);
  v337.val[1] = vuzp1q_s16(v340.val[1], vaddq_s32(vandq_s8(vcltzq_s32(v334.val[0]), v17), v334.val[0]));
  v332.val[0] = vmovl_u8(*v332.val[0].i8);
  v340.val[1] = vmovl_high_u16(v332.val[0]);
  v332.val[0] = vmovl_u16(*v332.val[0].i8);
  v340.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v340.val[1] & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v340.val[1], 3uLL)), (*&vshrq_n_u32(v340.val[1], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v340.val[1], 0x1DuLL), 0x1FuLL);
  v332.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v332.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v332.val[0], 3uLL)), (*&vshrq_n_u32(v332.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v332.val[0], 0x1DuLL), 0x1FuLL);
  v340.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v332.val[0]), v17), v332.val[0]), vaddq_s32(vandq_s8(vcltzq_s32(v340.val[1]), v17), v340.val[1]));
  v51 = a1 + 128;
  vst2q_s16(v51, v340);
  v334.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v334.val[1]), v17), v334.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v337.val[0]), v17), v337.val[0]));
  v52 = a1 + 144;
  vst2q_s16(v52, *(&v332 + 16));
  v334.val[0] = v329;
  v332.val[1] = vmovl_u8(*v328.i8);
  v334.val[1] = vmovl_high_u16(v332.val[1]);
  v332.val[1] = vmovl_u16(*v332.val[1].i8);
  v337.val[0] = vmovl_high_u8(v328);
  v337.val[1] = vmovl_high_u16(v337.val[0]);
  v337.val[0] = vmovl_u16(*v337.val[0].i8);
  v334.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v334.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v334.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v334.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v334.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v332.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v332.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v332.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v332.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v332.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v337.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v337.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v337.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v337.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v337.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v337.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v337.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v337.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v337.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v337.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v337.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v337.val[0]), v17), v337.val[0]), vaddq_s32(vandq_s8(vcltzq_s32(v337.val[1]), v17), v337.val[1]));
  v332.val[0] = vshrq_n_u8(v328, 4uLL);
  v340.val[0] = vmovl_high_u8(v332.val[0]);
  v340.val[1] = vmovl_high_u16(v340.val[0]);
  v340.val[0] = vmovl_u16(*v340.val[0].i8);
  v340.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v340.val[1] & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v340.val[1], 3uLL)), (*&vshrq_n_u32(v340.val[1], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v340.val[1], 0x1DuLL), 0x1FuLL);
  v340.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v340.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v340.val[0], 3uLL)), (*&vshrq_n_u32(v340.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v340.val[0], 0x1DuLL), 0x1FuLL);
  v337.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v340.val[0]), v17), v340.val[0]), vaddq_s32(vandq_s8(vcltzq_s32(v340.val[1]), v17), v340.val[1]));
  v340.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v332.val[1]), v17), v332.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v334.val[1]), v17), v334.val[1]));
  v332.val[0] = vmovl_u8(*v332.val[0].i8);
  v332.val[1] = vmovl_high_u16(v332.val[0]);
  v332.val[0] = vmovl_u16(*v332.val[0].i8);
  v332.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v332.val[1] & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v332.val[1], 3uLL)), (*&vshrq_n_u32(v332.val[1], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v332.val[1], 0x1DuLL), 0x1FuLL);
  v332.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v332.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v332.val[0], 3uLL)), (*&vshrq_n_u32(v332.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v332.val[0], 0x1DuLL), 0x1FuLL);
  v340.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v332.val[0]), v17), v332.val[0]), vaddq_s32(vandq_s8(vcltzq_s32(v332.val[1]), v17), v332.val[1]));
  v53 = a1 + 160;
  vst2q_s16(v53, v340);
  v54 = a1 + 176;
  vst2q_s16(v54, v337);
  v332.val[0] = vmovl_u8(*v334.val[0].i8);
  v332.val[1] = vmovl_high_u16(v332.val[0]);
  v332.val[0] = vmovl_u16(*v332.val[0].i8);
  v334.val[1] = vmovl_high_u8(v334.val[0]);
  v337.val[0] = vmovl_high_u16(v334.val[1]);
  v334.val[1] = vmovl_u16(*v334.val[1].i8);
  v332.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v332.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v332.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v332.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v332.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v332.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v332.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v332.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v332.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v332.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v337.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v337.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v337.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v337.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v337.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v334.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v334.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v334.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v334.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v334.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v340.val[1] = vaddq_s32(vandq_s8(vcltzq_s32(v332.val[0]), v17), v332.val[0]);
  v332.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v334.val[1]), v17), v334.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v337.val[0]), v17), v337.val[0]));
  v334.val[0] = vshrq_n_u8(v334.val[0], 4uLL);
  v334.val[1] = vmovl_high_u8(v334.val[0]);
  v337.val[0] = vmovl_high_u16(v334.val[1]);
  v334.val[1] = vmovl_u16(*v334.val[1].i8);
  v337.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v337.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v337.val[0], 3uLL)), (*&vshrq_n_u32(v337.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v337.val[0], 0x1DuLL), 0x1FuLL);
  v334.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v334.val[1] & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v334.val[1], 3uLL)), (*&vshrq_n_u32(v334.val[1], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v334.val[1], 0x1DuLL), 0x1FuLL);
  v342.val[0] = vuzp1q_s16(v340.val[1], vaddq_s32(vandq_s8(vcltzq_s32(v332.val[1]), v17), v332.val[1]));
  v334.val[0] = vmovl_u8(*v334.val[0].i8);
  v340.val[1] = vmovl_high_u16(v334.val[0]);
  v334.val[0] = vmovl_u16(*v334.val[0].i8);
  v340.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v340.val[1] & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v340.val[1], 3uLL)), (*&vshrq_n_u32(v340.val[1], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v340.val[1], 0x1DuLL), 0x1FuLL);
  v334.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v334.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v334.val[0], 3uLL)), (*&vshrq_n_u32(v334.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v334.val[0], 0x1DuLL), 0x1FuLL);
  v342.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v334.val[0]), v17), v334.val[0]), vaddq_s32(vandq_s8(vcltzq_s32(v340.val[1]), v17), v340.val[1]));
  v55 = a1 + 192;
  vst2q_s16(v55, v342);
  v332.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v334.val[1]), v17), v334.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v337.val[0]), v17), v337.val[0]));
  v56 = a1 + 208;
  v334.val[0] = vmovl_u8(*v330.i8);
  v334.val[1] = vmovl_high_u16(v334.val[0]);
  v334.val[0] = vmovl_u16(*v334.val[0].i8);
  v337.val[0] = vmovl_high_u8(v330);
  v337.val[1] = vmovl_high_u16(v337.val[0]);
  v337.val[0] = vmovl_u16(*v337.val[0].i8);
  v334.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v334.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v334.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v334.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v334.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v342.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v334.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v334.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v334.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v334.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v337.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v337.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v337.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v337.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v337.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v340.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v337.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v337.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v337.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v337.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v334.val[0] = vaddq_s32(vandq_s8(vcltzq_s32(v334.val[1]), v17), v334.val[1]);
  v334.val[1] = vaddq_s32(vandq_s8(vcltzq_s32(v342.val[0]), v17), v342.val[0]);
  v57 = vshrq_n_u8(v330, 4uLL);
  v340.val[0] = vmovl_high_u8(v57);
  v58 = vmovl_high_u16(v340.val[0]);
  v340.val[0] = vmovl_u16(*v340.val[0].i8);
  v59 = vmovl_u8(*v57.i8);
  v60 = vmovl_u16(*v59.i8);
  v61 = vmovl_high_u16(v59);
  vst2q_s16(v56, v332);
  v62 = a1 + 224;
  v63 = a1 + 240;
  v337.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v340.val[1]), v17), v340.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v337.val[1]), v17), v337.val[1]));
  v342.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v58 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v58, 3uLL)), (*&vshrq_n_u32(v58, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v58, 0x1DuLL), 0x1FuLL);
  v340.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v340.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v340.val[0], 3uLL)), (*&vshrq_n_u32(v340.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v340.val[0], 0x1DuLL), 0x1FuLL);
  v334.val[0] = vuzp1q_s16(v334.val[1], v334.val[0]);
  v332.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v61 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v61, 3uLL)), (*&vshrq_n_u32(v61, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v61, 0x1DuLL), 0x1FuLL);
  v64 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v60 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v60, 3uLL)), (*&vshrq_n_u32(v60, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v60, 0x1DuLL), 0x1FuLL);
  v303 = v17;
  v334.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v64), v17), v64), vaddq_s32(vandq_s8(vcltzq_s32(v332.val[1]), v17), v332.val[1]));
  vst2q_s16(v62, v334);
  v337.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v340.val[0]), v17), v340.val[0]), vaddq_s32(vandq_s8(vcltzq_s32(v342.val[0]), v17), v342.val[0]));
  vst2q_s16(v63, v337);
  LOBYTE(v62) = (*a2)++;
  v322 = v62;
  v318 = 0;
  v320 = 0u;
  v316 = 0u;
  v317 = 0u;
  v314 = 0u;
  v315 = 0u;
  v312 = 0u;
  v313 = 0u;
  v310 = 0u;
  v311 = 0u;
  v308 = 0u;
  v309 = 0u;
  v306 = 0u;
  v307 = 0u;
  v304 = 3;
  v305 = 0;
  v319 = 136;
  BORINGSSL_keccak_absorb(&v304, v321, 0x21uLL);
  BORINGSSL_keccak_squeeze(&v304, __dst.i8, 0x80uLL);
  v65 = v324;
  v66 = vmovl_u8(*__dst.i8);
  v67 = vmovl_high_u16(v66);
  v68 = vmovl_u16(*v66.i8);
  v69 = vmovl_high_u8(__dst);
  v70 = vmovl_high_u16(v69);
  v71 = vmovl_u16(*v69.i8);
  v72 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v67 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v67, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v67, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v67, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v73 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v68 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v68, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v68, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v68, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v74 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v70 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v70, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v70, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v70, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v75 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v71 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v71, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v71, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v71, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v338.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v75), v303), v75), vaddq_s32(vandq_s8(vcltzq_s32(v74), v303), v74));
  v76 = vshrq_n_u8(__dst, 4uLL);
  v77 = vmovl_high_u8(v76);
  v78 = vmovl_high_u16(v77);
  v79 = vmovl_u16(*v77.i8);
  v80 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v78 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v78, 3uLL)), (*&vshrq_n_u32(v78, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v78, 0x1DuLL), 0x1FuLL);
  v81 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v79 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v79, 3uLL)), (*&vshrq_n_u32(v79, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v79, 0x1DuLL), 0x1FuLL);
  v335.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v73), v303), v73), vaddq_s32(vandq_s8(vcltzq_s32(v72), v303), v72));
  v82 = vmovl_u8(*v76.i8);
  v83 = vmovl_high_u16(v82);
  v84 = vmovl_u16(*v82.i8);
  v85 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v83 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v83, 3uLL)), (*&vshrq_n_u32(v83, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v83, 0x1DuLL), 0x1FuLL);
  v86 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v84 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v84, 3uLL)), (*&vshrq_n_u32(v84, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v84, 0x1DuLL), 0x1FuLL);
  v335.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v86), v303), v86), vaddq_s32(vandq_s8(vcltzq_s32(v85), v303), v85));
  v87 = a1 + 256;
  vst2q_s16(v87, v335);
  v338.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v81), v303), v81), vaddq_s32(vandq_s8(vcltzq_s32(v80), v303), v80));
  v88 = a1 + 272;
  vst2q_s16(v88, v338);
  v89 = vmovl_u8(*v65.i8);
  v335.val[0] = vmovl_high_u16(v89);
  v90 = vmovl_u16(*v89.i8);
  v335.val[1] = vmovl_high_u8(v65);
  v338.val[0] = vmovl_high_u16(v335.val[1]);
  v335.val[1] = vmovl_u16(*v335.val[1].i8);
  v335.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v335.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v335.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v335.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v335.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v91 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v90 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v90, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v90, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v90, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v338.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v338.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v338.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v338.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v338.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v335.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v335.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v335.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v335.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v335.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v92 = vaddq_s32(vandq_s8(vcltzq_s32(v91), v303), v91);
  v93 = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v335.val[1]), v303), v335.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v338.val[0]), v303), v338.val[0]));
  v94 = vshrq_n_u8(v65, 4uLL);
  v335.val[1] = vmovl_high_u8(v94);
  v338.val[0] = vmovl_high_u16(v335.val[1]);
  v335.val[1] = vmovl_u16(*v335.val[1].i8);
  v338.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v338.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v338.val[0], 3uLL)), (*&vshrq_n_u32(v338.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v338.val[0], 0x1DuLL), 0x1FuLL);
  v335.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v335.val[1] & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v335.val[1], 3uLL)), (*&vshrq_n_u32(v335.val[1], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v335.val[1], 0x1DuLL), 0x1FuLL);
  v338.val[1] = vuzp1q_s16(v92, vaddq_s32(vandq_s8(vcltzq_s32(v335.val[0]), v303), v335.val[0]));
  v95 = vmovl_u8(*v94.i8);
  v96 = vmovl_high_u16(v95);
  v97 = vmovl_u16(*v95.i8);
  v98 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v96 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v96, 3uLL)), (*&vshrq_n_u32(v96, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v96, 0x1DuLL), 0x1FuLL);
  v99 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v97 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v97, 3uLL)), (*&vshrq_n_u32(v97, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v97, 0x1DuLL), 0x1FuLL);
  v100 = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v99), v303), v99), vaddq_s32(vandq_s8(vcltzq_s32(v98), v303), v98));
  v101 = a1 + 288;
  vst2q_s16(v101, *(&v338 + 16));
  v335.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v335.val[1]), v303), v335.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v338.val[0]), v303), v338.val[0]));
  v102 = a1 + 304;
  vst2q_s16(v102, v335);
  v103 = v326;
  v335.val[0] = vmovl_u8(*v325.i8);
  v335.val[1] = vmovl_high_u16(v335.val[0]);
  v335.val[0] = vmovl_u16(*v335.val[0].i8);
  v338.val[0] = vmovl_high_u8(v325);
  v338.val[1] = vmovl_high_u16(v338.val[0]);
  v338.val[0] = vmovl_u16(*v338.val[0].i8);
  v335.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v335.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v335.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v335.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v335.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v335.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v335.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v335.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v335.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v335.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v338.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v338.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v338.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v338.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v338.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v338.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v338.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v338.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v338.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v338.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v338.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v338.val[0]), v303), v338.val[0]), vaddq_s32(vandq_s8(vcltzq_s32(v338.val[1]), v303), v338.val[1]));
  v104 = vshrq_n_u8(v325, 4uLL);
  v105 = vmovl_high_u8(v104);
  v106 = vmovl_high_u16(v105);
  v107 = vmovl_u16(*v105.i8);
  v108 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v106 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v106, 3uLL)), (*&vshrq_n_u32(v106, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v106, 0x1DuLL), 0x1FuLL);
  v109 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v107 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v107, 3uLL)), (*&vshrq_n_u32(v107, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v107, 0x1DuLL), 0x1FuLL);
  v335.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v335.val[0]), v303), v335.val[0]), vaddq_s32(vandq_s8(vcltzq_s32(v335.val[1]), v303), v335.val[1]));
  v110 = vmovl_u8(*v104.i8);
  v111 = vmovl_high_u16(v110);
  v112 = vmovl_u16(*v110.i8);
  v113 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v111 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v111, 3uLL)), (*&vshrq_n_u32(v111, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v111, 0x1DuLL), 0x1FuLL);
  v114 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v112 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v112, 3uLL)), (*&vshrq_n_u32(v112, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v112, 0x1DuLL), 0x1FuLL);
  v335.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v114), v303), v114), vaddq_s32(vandq_s8(vcltzq_s32(v113), v303), v113));
  v115 = a1 + 320;
  vst2q_s16(v115, v335);
  v338.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v109), v303), v109), vaddq_s32(vandq_s8(vcltzq_s32(v108), v303), v108));
  v116 = a1 + 336;
  vst2q_s16(v116, v338);
  v117 = vmovl_u8(*v103.i8);
  v335.val[0] = vmovl_high_u16(v117);
  v118 = vmovl_u16(*v117.i8);
  v335.val[1] = vmovl_high_u8(v103);
  v338.val[0] = vmovl_high_u16(v335.val[1]);
  v335.val[1] = vmovl_u16(*v335.val[1].i8);
  v335.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v335.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v335.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v335.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v335.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v119 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v118 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v118, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v118, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v118, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v338.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v338.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v338.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v338.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v338.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v335.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v335.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v335.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v335.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v335.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v120 = vaddq_s32(vandq_s8(vcltzq_s32(v119), v303), v119);
  v121 = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v335.val[1]), v303), v335.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v338.val[0]), v303), v338.val[0]));
  v122 = vshrq_n_u8(v103, 4uLL);
  v335.val[1] = vmovl_high_u8(v122);
  v338.val[0] = vmovl_high_u16(v335.val[1]);
  v335.val[1] = vmovl_u16(*v335.val[1].i8);
  v338.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v338.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v338.val[0], 3uLL)), (*&vshrq_n_u32(v338.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v338.val[0], 0x1DuLL), 0x1FuLL);
  v335.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v335.val[1] & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v335.val[1], 3uLL)), (*&vshrq_n_u32(v335.val[1], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v335.val[1], 0x1DuLL), 0x1FuLL);
  v338.val[1] = vuzp1q_s16(v120, vaddq_s32(vandq_s8(vcltzq_s32(v335.val[0]), v303), v335.val[0]));
  v123 = vmovl_u8(*v122.i8);
  v124 = vmovl_high_u16(v123);
  v125 = vmovl_u16(*v123.i8);
  v126 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v124 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v124, 3uLL)), (*&vshrq_n_u32(v124, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v124, 0x1DuLL), 0x1FuLL);
  v127 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v125 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v125, 3uLL)), (*&vshrq_n_u32(v125, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v125, 0x1DuLL), 0x1FuLL);
  v128 = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v127), v303), v127), vaddq_s32(vandq_s8(vcltzq_s32(v126), v303), v126));
  v129 = a1 + 352;
  vst2q_s16(v129, *(&v338 + 16));
  v335.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v335.val[1]), v303), v335.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v338.val[0]), v303), v338.val[0]));
  v130 = a1 + 368;
  vst2q_s16(v130, v335);
  v131 = v328;
  v335.val[0] = vmovl_u8(*v327.i8);
  v335.val[1] = vmovl_high_u16(v335.val[0]);
  v335.val[0] = vmovl_u16(*v335.val[0].i8);
  v338.val[0] = vmovl_high_u8(v327);
  v338.val[1] = vmovl_high_u16(v338.val[0]);
  v338.val[0] = vmovl_u16(*v338.val[0].i8);
  v335.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v335.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v335.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v335.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v335.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v335.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v335.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v335.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v335.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v335.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v338.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v338.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v338.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v338.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v338.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v338.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v338.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v338.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v338.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v338.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v338.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v338.val[0]), v303), v338.val[0]), vaddq_s32(vandq_s8(vcltzq_s32(v338.val[1]), v303), v338.val[1]));
  v132 = vshrq_n_u8(v327, 4uLL);
  v133 = vmovl_high_u8(v132);
  v134 = vmovl_high_u16(v133);
  v135 = vmovl_u16(*v133.i8);
  v136 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v134 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v134, 3uLL)), (*&vshrq_n_u32(v134, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v134, 0x1DuLL), 0x1FuLL);
  v137 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v135 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v135, 3uLL)), (*&vshrq_n_u32(v135, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v135, 0x1DuLL), 0x1FuLL);
  v335.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v335.val[0]), v303), v335.val[0]), vaddq_s32(vandq_s8(vcltzq_s32(v335.val[1]), v303), v335.val[1]));
  v138 = vmovl_u8(*v132.i8);
  v139 = vmovl_high_u16(v138);
  v140 = vmovl_u16(*v138.i8);
  v141 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v139 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v139, 3uLL)), (*&vshrq_n_u32(v139, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v139, 0x1DuLL), 0x1FuLL);
  v142 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v140 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v140, 3uLL)), (*&vshrq_n_u32(v140, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v140, 0x1DuLL), 0x1FuLL);
  v335.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v142), v303), v142), vaddq_s32(vandq_s8(vcltzq_s32(v141), v303), v141));
  v143 = a1 + 384;
  vst2q_s16(v143, v335);
  v338.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v137), v303), v137), vaddq_s32(vandq_s8(vcltzq_s32(v136), v303), v136));
  v144 = a1 + 400;
  vst2q_s16(v144, v338);
  v145 = vmovl_u8(*v131.i8);
  v335.val[0] = vmovl_high_u16(v145);
  v146 = vmovl_u16(*v145.i8);
  v335.val[1] = vmovl_high_u8(v131);
  v338.val[0] = vmovl_high_u16(v335.val[1]);
  v335.val[1] = vmovl_u16(*v335.val[1].i8);
  v335.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v335.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v335.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v335.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v335.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v147 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v146 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v146, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v146, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v146, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v338.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v338.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v338.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v338.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v338.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v335.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v335.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v335.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v335.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v335.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v148 = vaddq_s32(vandq_s8(vcltzq_s32(v335.val[0]), v303), v335.val[0]);
  v149 = vaddq_s32(vandq_s8(vcltzq_s32(v147), v303), v147);
  v150 = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v335.val[1]), v303), v335.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v338.val[0]), v303), v338.val[0]));
  v151 = vshrq_n_u8(v131, 4uLL);
  v335.val[1] = vmovl_high_u8(v151);
  v338.val[0] = vmovl_high_u16(v335.val[1]);
  v335.val[1] = vmovl_u16(*v335.val[1].i8);
  v338.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v338.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v338.val[0], 3uLL)), (*&vshrq_n_u32(v338.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v338.val[0], 0x1DuLL), 0x1FuLL);
  v335.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v335.val[1] & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v335.val[1], 3uLL)), (*&vshrq_n_u32(v335.val[1], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v335.val[1], 0x1DuLL), 0x1FuLL);
  v335.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v335.val[1]), v303), v335.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v338.val[0]), v303), v338.val[0]));
  v335.val[1] = vuzp1q_s16(v149, v148);
  v152 = vmovl_u8(*v151.i8);
  v338.val[1] = vmovl_high_u16(v152);
  v153 = vmovl_u16(*v152.i8);
  v338.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v338.val[1] & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v338.val[1], 3uLL)), (*&vshrq_n_u32(v338.val[1], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v338.val[1], 0x1DuLL), 0x1FuLL);
  v154 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v153 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v153, 3uLL)), (*&vshrq_n_u32(v153, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v153, 0x1DuLL), 0x1FuLL);
  v338.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v154), v303), v154), vaddq_s32(vandq_s8(vcltzq_s32(v338.val[1]), v303), v338.val[1]));
  v155 = a1 + 416;
  vst2q_s16(v155, v338);
  v156 = a1 + 432;
  vst2q_s16(v156, v335);
  v335.val[0] = v330;
  v157 = vmovl_u8(*v329.i8);
  v158 = vmovl_high_u16(v157);
  v159 = vmovl_u16(*v157.i8);
  v338.val[0] = vmovl_high_u8(v329);
  v338.val[1] = vmovl_high_u16(v338.val[0]);
  v338.val[0] = vmovl_u16(*v338.val[0].i8);
  v160 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v158 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v158, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v158, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v158, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v161 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v159 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v159, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v159, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v159, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v338.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v338.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v338.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v338.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v338.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v338.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v338.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v338.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v338.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v338.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v162 = vaddq_s32(vandq_s8(vcltzq_s32(v160), v303), v160);
  v163 = vaddq_s32(vandq_s8(vcltzq_s32(v161), v303), v161);
  v333.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v338.val[0]), v303), v338.val[0]), vaddq_s32(vandq_s8(vcltzq_s32(v338.val[1]), v303), v338.val[1]));
  v335.val[1] = vshrq_n_u8(v329, 4uLL);
  v338.val[0] = vmovl_high_u8(v335.val[1]);
  v338.val[1] = vmovl_high_u16(v338.val[0]);
  v338.val[0] = vmovl_u16(*v338.val[0].i8);
  v338.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v338.val[1] & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v338.val[1], 3uLL)), (*&vshrq_n_u32(v338.val[1], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v338.val[1], 0x1DuLL), 0x1FuLL);
  v338.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v338.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v338.val[0], 3uLL)), (*&vshrq_n_u32(v338.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v338.val[0], 0x1DuLL), 0x1FuLL);
  v333.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v338.val[0]), v303), v338.val[0]), vaddq_s32(vandq_s8(vcltzq_s32(v338.val[1]), v303), v338.val[1]));
  v338.val[0] = vuzp1q_s16(v163, v162);
  v335.val[1] = vmovl_u8(*v335.val[1].i8);
  v164 = vmovl_high_u16(v335.val[1]);
  v335.val[1] = vmovl_u16(*v335.val[1].i8);
  v165 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v164 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v164, 3uLL)), (*&vshrq_n_u32(v164, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v164, 0x1DuLL), 0x1FuLL);
  v335.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v335.val[1] & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v335.val[1], 3uLL)), (*&vshrq_n_u32(v335.val[1], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v335.val[1], 0x1DuLL), 0x1FuLL);
  v338.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v335.val[1]), v303), v335.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v165), v303), v165));
  v166 = a1 + 448;
  vst2q_s16(v166, v338);
  v167 = a1 + 464;
  v335.val[1] = vmovl_u8(*v335.val[0].i8);
  v338.val[0] = vmovl_high_u16(v335.val[1]);
  v335.val[1] = vmovl_u16(*v335.val[1].i8);
  v338.val[1] = vmovl_high_u8(v335.val[0]);
  v168 = vmovl_high_u16(v338.val[1]);
  v338.val[1] = vmovl_u16(*v338.val[1].i8);
  v338.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v338.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v338.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v338.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v338.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v169 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v335.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v335.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v335.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v335.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v170 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v168 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v168, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v168, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v168, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v171 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v338.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v338.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v338.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v338.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v335.val[1] = vaddq_s32(vandq_s8(vcltzq_s32(v338.val[0]), v303), v338.val[0]);
  v338.val[0] = vaddq_s32(vandq_s8(vcltzq_s32(v169), v303), v169);
  v172 = vshrq_n_u8(v335.val[0], 4uLL);
  v335.val[0] = vmovl_high_u8(v172);
  v173 = vmovl_high_u16(v335.val[0]);
  v335.val[0] = vmovl_u16(*v335.val[0].i8);
  v174 = vmovl_u8(*v172.i8);
  v175 = vmovl_u16(*v174.i8);
  v176 = vmovl_high_u16(v174);
  vst2q_s16(v167, v333);
  v177 = a1 + 480;
  v178 = a1 + 496;
  v338.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v171), v303), v171), vaddq_s32(vandq_s8(vcltzq_s32(v170), v303), v170));
  v179 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v173 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v173, 3uLL)), (*&vshrq_n_u32(v173, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v173, 0x1DuLL), 0x1FuLL);
  v335.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v335.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v335.val[0], 3uLL)), (*&vshrq_n_u32(v335.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v335.val[0], 0x1DuLL), 0x1FuLL);
  v335.val[1] = vuzp1q_s16(v338.val[0], v335.val[1]);
  v333.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v176 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v176, 3uLL)), (*&vshrq_n_u32(v176, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v176, 0x1DuLL), 0x1FuLL);
  v180 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v175 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v175, 3uLL)), (*&vshrq_n_u32(v175, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v175, 0x1DuLL), 0x1FuLL);
  v338.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v180), v303), v180), vaddq_s32(vandq_s8(vcltzq_s32(v333.val[1]), v303), v333.val[1]));
  vst2q_s16(v177, v338);
  v181 = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v335.val[0]), v303), v335.val[0]), vaddq_s32(vandq_s8(vcltzq_s32(v179), v303), v179));
  vst2q_s16(v178, *(&v338 + 16));
  LOBYTE(v177) = (*a2)++;
  v322 = v177;
  v318 = 0;
  v320 = 0u;
  v316 = 0u;
  v317 = 0u;
  v314 = 0u;
  v315 = 0u;
  v312 = 0u;
  v313 = 0u;
  v310 = 0u;
  v311 = 0u;
  v308 = 0u;
  v309 = 0u;
  v306 = 0u;
  v307 = 0u;
  v304 = 3;
  v305 = 0;
  v319 = 136;
  BORINGSSL_keccak_absorb(&v304, v321, 0x21uLL);
  result = BORINGSSL_keccak_squeeze(&v304, __dst.i8, 0x80uLL);
  v183 = v324;
  v184 = vmovl_u8(*__dst.i8);
  v185 = vmovl_high_u16(v184);
  v186 = vmovl_u16(*v184.i8);
  v187 = vmovl_high_u8(__dst);
  v188 = vmovl_high_u16(v187);
  v189 = vmovl_u16(*v187.i8);
  v190 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v185 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v185, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v185, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v185, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v191 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v186 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v186, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v186, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v186, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v192 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v188 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v188, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v188, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v188, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v193 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v189 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v189, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v189, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v189, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v339.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v193), v303), v193), vaddq_s32(vandq_s8(vcltzq_s32(v192), v303), v192));
  v194 = vshrq_n_u8(__dst, 4uLL);
  v195 = vmovl_high_u8(v194);
  v196 = vmovl_high_u16(v195);
  v197 = vmovl_u16(*v195.i8);
  v198 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v196 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v196, 3uLL)), (*&vshrq_n_u32(v196, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v196, 0x1DuLL), 0x1FuLL);
  v199 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v197 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v197, 3uLL)), (*&vshrq_n_u32(v197, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v197, 0x1DuLL), 0x1FuLL);
  v336.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v191), v303), v191), vaddq_s32(vandq_s8(vcltzq_s32(v190), v303), v190));
  v200 = vmovl_u8(*v194.i8);
  v201 = vmovl_high_u16(v200);
  v202 = vmovl_u16(*v200.i8);
  v203 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v201 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v201, 3uLL)), (*&vshrq_n_u32(v201, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v201, 0x1DuLL), 0x1FuLL);
  v204 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v202 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v202, 3uLL)), (*&vshrq_n_u32(v202, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v202, 0x1DuLL), 0x1FuLL);
  v336.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v204), v303), v204), vaddq_s32(vandq_s8(vcltzq_s32(v203), v303), v203));
  v205 = a1 + 512;
  vst2q_s16(v205, v336);
  v339.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v199), v303), v199), vaddq_s32(vandq_s8(vcltzq_s32(v198), v303), v198));
  v206 = a1 + 528;
  vst2q_s16(v206, v339);
  v207 = vmovl_u8(*v183.i8);
  v336.val[0] = vmovl_high_u16(v207);
  v208 = vmovl_u16(*v207.i8);
  v336.val[1] = vmovl_high_u8(v183);
  v339.val[0] = vmovl_high_u16(v336.val[1]);
  v336.val[1] = vmovl_u16(*v336.val[1].i8);
  v336.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v336.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v336.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v336.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v336.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v209 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v208 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v208, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v208, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v208, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v339.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v339.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v339.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v339.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v339.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v336.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v336.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v336.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v336.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v336.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v210 = vaddq_s32(vandq_s8(vcltzq_s32(v209), v303), v209);
  v211 = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v336.val[1]), v303), v336.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v339.val[0]), v303), v339.val[0]));
  v212 = vshrq_n_u8(v183, 4uLL);
  v336.val[1] = vmovl_high_u8(v212);
  v339.val[0] = vmovl_high_u16(v336.val[1]);
  v336.val[1] = vmovl_u16(*v336.val[1].i8);
  v339.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v339.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v339.val[0], 3uLL)), (*&vshrq_n_u32(v339.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v339.val[0], 0x1DuLL), 0x1FuLL);
  v336.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v336.val[1] & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v336.val[1], 3uLL)), (*&vshrq_n_u32(v336.val[1], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v336.val[1], 0x1DuLL), 0x1FuLL);
  v339.val[1] = vuzp1q_s16(v210, vaddq_s32(vandq_s8(vcltzq_s32(v336.val[0]), v303), v336.val[0]));
  v213 = vmovl_u8(*v212.i8);
  v214 = vmovl_high_u16(v213);
  v215 = vmovl_u16(*v213.i8);
  v216 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v214 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v214, 3uLL)), (*&vshrq_n_u32(v214, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v214, 0x1DuLL), 0x1FuLL);
  v217 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v215 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v215, 3uLL)), (*&vshrq_n_u32(v215, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v215, 0x1DuLL), 0x1FuLL);
  v218 = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v217), v303), v217), vaddq_s32(vandq_s8(vcltzq_s32(v216), v303), v216));
  v219 = a1 + 544;
  vst2q_s16(v219, *(&v339 + 16));
  v336.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v336.val[1]), v303), v336.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v339.val[0]), v303), v339.val[0]));
  v220 = a1 + 560;
  vst2q_s16(v220, v336);
  v221 = v326;
  v336.val[0] = vmovl_u8(*v325.i8);
  v336.val[1] = vmovl_high_u16(v336.val[0]);
  v336.val[0] = vmovl_u16(*v336.val[0].i8);
  v339.val[0] = vmovl_high_u8(v325);
  v339.val[1] = vmovl_high_u16(v339.val[0]);
  v339.val[0] = vmovl_u16(*v339.val[0].i8);
  v336.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v336.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v336.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v336.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v336.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v336.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v336.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v336.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v336.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v336.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v339.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v339.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v339.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v339.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v339.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v339.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v339.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v339.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v339.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v339.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v339.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v339.val[0]), v303), v339.val[0]), vaddq_s32(vandq_s8(vcltzq_s32(v339.val[1]), v303), v339.val[1]));
  v222 = vshrq_n_u8(v325, 4uLL);
  v223 = vmovl_high_u8(v222);
  v224 = vmovl_high_u16(v223);
  v225 = vmovl_u16(*v223.i8);
  v226 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v224 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v224, 3uLL)), (*&vshrq_n_u32(v224, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v224, 0x1DuLL), 0x1FuLL);
  v227 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v225 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v225, 3uLL)), (*&vshrq_n_u32(v225, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v225, 0x1DuLL), 0x1FuLL);
  v336.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v336.val[0]), v303), v336.val[0]), vaddq_s32(vandq_s8(vcltzq_s32(v336.val[1]), v303), v336.val[1]));
  v228 = vmovl_u8(*v222.i8);
  v229 = vmovl_high_u16(v228);
  v230 = vmovl_u16(*v228.i8);
  v231 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v229 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v229, 3uLL)), (*&vshrq_n_u32(v229, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v229, 0x1DuLL), 0x1FuLL);
  v232 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v230 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v230, 3uLL)), (*&vshrq_n_u32(v230, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v230, 0x1DuLL), 0x1FuLL);
  v336.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v232), v303), v232), vaddq_s32(vandq_s8(vcltzq_s32(v231), v303), v231));
  v233 = a1 + 576;
  vst2q_s16(v233, v336);
  v339.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v227), v303), v227), vaddq_s32(vandq_s8(vcltzq_s32(v226), v303), v226));
  v234 = a1 + 592;
  vst2q_s16(v234, v339);
  v235 = vmovl_u8(*v221.i8);
  v336.val[0] = vmovl_high_u16(v235);
  v236 = vmovl_u16(*v235.i8);
  v336.val[1] = vmovl_high_u8(v221);
  v339.val[0] = vmovl_high_u16(v336.val[1]);
  v336.val[1] = vmovl_u16(*v336.val[1].i8);
  v336.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v336.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v336.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v336.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v336.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v237 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v236 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v236, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v236, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v236, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v339.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v339.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v339.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v339.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v339.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v336.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v336.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v336.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v336.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v336.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v238 = vaddq_s32(vandq_s8(vcltzq_s32(v237), v303), v237);
  v239 = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v336.val[1]), v303), v336.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v339.val[0]), v303), v339.val[0]));
  v240 = vshrq_n_u8(v221, 4uLL);
  v336.val[1] = vmovl_high_u8(v240);
  v339.val[0] = vmovl_high_u16(v336.val[1]);
  v336.val[1] = vmovl_u16(*v336.val[1].i8);
  v339.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v339.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v339.val[0], 3uLL)), (*&vshrq_n_u32(v339.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v339.val[0], 0x1DuLL), 0x1FuLL);
  v336.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v336.val[1] & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v336.val[1], 3uLL)), (*&vshrq_n_u32(v336.val[1], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v336.val[1], 0x1DuLL), 0x1FuLL);
  v339.val[1] = vuzp1q_s16(v238, vaddq_s32(vandq_s8(vcltzq_s32(v336.val[0]), v303), v336.val[0]));
  v241 = vmovl_u8(*v240.i8);
  v242 = vmovl_high_u16(v241);
  v243 = vmovl_u16(*v241.i8);
  v244 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v242 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v242, 3uLL)), (*&vshrq_n_u32(v242, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v242, 0x1DuLL), 0x1FuLL);
  v245 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v243 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v243, 3uLL)), (*&vshrq_n_u32(v243, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v243, 0x1DuLL), 0x1FuLL);
  v246 = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v245), v303), v245), vaddq_s32(vandq_s8(vcltzq_s32(v244), v303), v244));
  v247 = a1 + 608;
  vst2q_s16(v247, *(&v339 + 16));
  v336.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v336.val[1]), v303), v336.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v339.val[0]), v303), v339.val[0]));
  v248 = a1 + 624;
  vst2q_s16(v248, v336);
  v249 = v328;
  v336.val[0] = vmovl_u8(*v327.i8);
  v336.val[1] = vmovl_high_u16(v336.val[0]);
  v336.val[0] = vmovl_u16(*v336.val[0].i8);
  v339.val[0] = vmovl_high_u8(v327);
  v339.val[1] = vmovl_high_u16(v339.val[0]);
  v339.val[0] = vmovl_u16(*v339.val[0].i8);
  v336.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v336.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v336.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v336.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v336.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v336.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v336.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v336.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v336.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v336.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v339.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v339.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v339.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v339.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v339.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v339.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v339.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v339.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v339.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v339.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v339.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v339.val[0]), v303), v339.val[0]), vaddq_s32(vandq_s8(vcltzq_s32(v339.val[1]), v303), v339.val[1]));
  v250 = vshrq_n_u8(v327, 4uLL);
  v251 = vmovl_high_u8(v250);
  v252 = vmovl_high_u16(v251);
  v253 = vmovl_u16(*v251.i8);
  v254 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v252 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v252, 3uLL)), (*&vshrq_n_u32(v252, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v252, 0x1DuLL), 0x1FuLL);
  v255 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v253 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v253, 3uLL)), (*&vshrq_n_u32(v253, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v253, 0x1DuLL), 0x1FuLL);
  v336.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v336.val[0]), v303), v336.val[0]), vaddq_s32(vandq_s8(vcltzq_s32(v336.val[1]), v303), v336.val[1]));
  v256 = vmovl_u8(*v250.i8);
  v257 = vmovl_high_u16(v256);
  v258 = vmovl_u16(*v256.i8);
  v259 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v257 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v257, 3uLL)), (*&vshrq_n_u32(v257, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v257, 0x1DuLL), 0x1FuLL);
  v260 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v258 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v258, 3uLL)), (*&vshrq_n_u32(v258, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v258, 0x1DuLL), 0x1FuLL);
  v336.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v260), v303), v260), vaddq_s32(vandq_s8(vcltzq_s32(v259), v303), v259));
  v261 = a1 + 640;
  vst2q_s16(v261, v336);
  v339.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v255), v303), v255), vaddq_s32(vandq_s8(vcltzq_s32(v254), v303), v254));
  v262 = a1 + 656;
  vst2q_s16(v262, v339);
  v263 = vmovl_u8(*v249.i8);
  v336.val[0] = vmovl_high_u16(v263);
  v264 = vmovl_u16(*v263.i8);
  v336.val[1] = vmovl_high_u8(v249);
  v339.val[0] = vmovl_high_u16(v336.val[1]);
  v336.val[1] = vmovl_u16(*v336.val[1].i8);
  v336.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v336.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v336.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v336.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v336.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v265 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v264 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v264, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v264, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v264, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v339.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v339.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v339.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v339.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v339.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v336.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v336.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v336.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v336.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v336.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v266 = vaddq_s32(vandq_s8(vcltzq_s32(v265), v303), v265);
  v267 = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v336.val[1]), v303), v336.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v339.val[0]), v303), v339.val[0]));
  v268 = vshrq_n_u8(v249, 4uLL);
  v336.val[1] = vmovl_high_u8(v268);
  v339.val[0] = vmovl_high_u16(v336.val[1]);
  v336.val[1] = vmovl_u16(*v336.val[1].i8);
  v339.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v339.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v339.val[0], 3uLL)), (*&vshrq_n_u32(v339.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v339.val[0], 0x1DuLL), 0x1FuLL);
  v336.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v336.val[1] & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v336.val[1], 3uLL)), (*&vshrq_n_u32(v336.val[1], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v336.val[1], 0x1DuLL), 0x1FuLL);
  v339.val[1] = vuzp1q_s16(v266, vaddq_s32(vandq_s8(vcltzq_s32(v336.val[0]), v303), v336.val[0]));
  v269 = vmovl_u8(*v268.i8);
  v270 = vmovl_high_u16(v269);
  v271 = vmovl_u16(*v269.i8);
  v272 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v270 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v270, 3uLL)), (*&vshrq_n_u32(v270, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v270, 0x1DuLL), 0x1FuLL);
  v273 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v271 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v271, 3uLL)), (*&vshrq_n_u32(v271, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v271, 0x1DuLL), 0x1FuLL);
  v274 = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v273), v303), v273), vaddq_s32(vandq_s8(vcltzq_s32(v272), v303), v272));
  v275 = a1 + 672;
  vst2q_s16(v275, *(&v339 + 16));
  v336.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v336.val[1]), v303), v336.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v339.val[0]), v303), v339.val[0]));
  v276 = a1 + 688;
  vst2q_s16(v276, v336);
  v277 = v330;
  v336.val[0] = vmovl_u8(*v329.i8);
  v336.val[1] = vmovl_high_u16(v336.val[0]);
  v336.val[0] = vmovl_u16(*v336.val[0].i8);
  v339.val[0] = vmovl_high_u8(v329);
  v339.val[1] = vmovl_high_u16(v339.val[0]);
  v339.val[0] = vmovl_u16(*v339.val[0].i8);
  v336.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v336.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v336.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v336.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v336.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v336.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v336.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v336.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v336.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v336.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v339.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v339.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v339.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v339.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v339.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v339.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v339.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v339.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v339.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v339.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v339.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v339.val[0]), v303), v339.val[0]), vaddq_s32(vandq_s8(vcltzq_s32(v339.val[1]), v303), v339.val[1]));
  v278 = vshrq_n_u8(v329, 4uLL);
  v279 = vmovl_high_u8(v278);
  v280 = vmovl_high_u16(v279);
  v281 = vmovl_u16(*v279.i8);
  v282 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v280 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v280, 3uLL)), (*&vshrq_n_u32(v280, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v280, 0x1DuLL), 0x1FuLL);
  v283 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v281 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v281, 3uLL)), (*&vshrq_n_u32(v281, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v281, 0x1DuLL), 0x1FuLL);
  v336.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v336.val[0]), v303), v336.val[0]), vaddq_s32(vandq_s8(vcltzq_s32(v336.val[1]), v303), v336.val[1]));
  v284 = vmovl_u8(*v278.i8);
  v285 = vmovl_high_u16(v284);
  v286 = vmovl_u16(*v284.i8);
  v287 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v285 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v285, 3uLL)), (*&vshrq_n_u32(v285, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v285, 0x1DuLL), 0x1FuLL);
  v288 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v286 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v286, 3uLL)), (*&vshrq_n_u32(v286, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v286, 0x1DuLL), 0x1FuLL);
  v336.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v288), v303), v288), vaddq_s32(vandq_s8(vcltzq_s32(v287), v303), v287));
  v289 = a1 + 704;
  vst2q_s16(v289, v336);
  v339.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v283), v303), v283), vaddq_s32(vandq_s8(vcltzq_s32(v282), v303), v282));
  v290 = a1 + 720;
  vst2q_s16(v290, v339);
  v291 = vmovl_u8(*v277.i8);
  v336.val[0] = vmovl_high_u16(v291);
  v292 = vmovl_u16(*v291.i8);
  v336.val[1] = vmovl_high_u8(v277);
  v339.val[0] = vmovl_high_u16(v336.val[1]);
  v336.val[1] = vmovl_u16(*v336.val[1].i8);
  v336.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v336.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v336.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v336.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v336.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v293 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v292 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v292, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v292, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v292, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v339.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v339.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v339.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v339.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v339.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v336.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v336.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v336.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v336.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v336.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v294 = vaddq_s32(vandq_s8(vcltzq_s32(v293), v303), v293);
  v295 = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v336.val[1]), v303), v336.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v339.val[0]), v303), v339.val[0]));
  v336.val[1] = vshrq_n_u8(v277, 4uLL);
  v296 = vmovl_high_u8(v336.val[1]);
  v339.val[0] = vmovl_high_u16(v296);
  v297 = vmovl_u16(*v296.i8);
  v339.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v339.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v339.val[0], 3uLL)), (*&vshrq_n_u32(v339.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v339.val[0], 0x1DuLL), 0x1FuLL);
  v298 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v297 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v297, 3uLL)), (*&vshrq_n_u32(v297, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v297, 0x1DuLL), 0x1FuLL);
  v341.val[0] = vuzp1q_s16(v294, vaddq_s32(vandq_s8(vcltzq_s32(v336.val[0]), v303), v336.val[0]));
  v336.val[1] = vmovl_u8(*v336.val[1].i8);
  v299 = vmovl_high_u16(v336.val[1]);
  v336.val[1] = vmovl_u16(*v336.val[1].i8);
  v300 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v299 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v299, 3uLL)), (*&vshrq_n_u32(v299, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v299, 0x1DuLL), 0x1FuLL);
  v336.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v336.val[1] & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v336.val[1], 3uLL)), (*&vshrq_n_u32(v336.val[1], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v336.val[1], 0x1DuLL), 0x1FuLL);
  v301 = a1 + 736;
  v302 = a1 + 752;
  v341.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v336.val[1]), v303), v336.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v300), v303), v300));
  vst2q_s16(v301, v341);
  v336.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v298), v303), v298), vaddq_s32(vandq_s8(vcltzq_s32(v339.val[0]), v303), v339.val[0]));
  vst2q_s16(v302, v336);
  return result;
}

int16x8_t *vector_ntt(int16x8_t *result)
{
  v1 = 1;
  v2 = 256;
  v3 = vdupq_n_s32(0x13AFu);
  v4.i64[0] = 0xF2000000F2;
  v4.i64[1] = 0xF2000000F2;
  v5.i64[0] = 0xD000D000D000D00;
  v5.i64[1] = 0xD000D000D000D00;
  v6 = vdupq_n_s16(0xD01u);
  do
  {
    v7 = 0;
    v8 = 0;
    v9 = v2 >> 1;
    v10 = v2 & 0x1FE;
    v11 = v9 & 0xF8;
    v12 = result;
    v13 = v9;
    do
    {
      v14 = kNTTRoots[v7 + v1];
      v15 = v8;
      if (v2 <= 0xF)
      {
        goto LABEL_9;
      }

      v15 = v8 + v11;
      v16 = vdupq_n_s16(v14);
      v17 = v12;
      v18 = v9 & 0xF8;
      do
      {
        v19 = *(v17 + v10);
        v20 = vmull_u16(*v16.i8, *v19.i8);
        v21 = vmull_high_u16(v16, v19);
        v22 = vuzp1q_s16(vmlal_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v20.i8, *v3.i8), 0x18uLL), vmull_high_u32(v20, v3), 0x18uLL), v4), *v16.i8, *v19.i8), vmlal_high_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v21.i8, *v3.i8), 0x18uLL), vmull_high_u32(v21, v3), 0x18uLL), v4), v16, v19));
        v23 = vaddq_s16(v22, v5);
        v24 = vorrq_s8(vandq_s8(vcltzq_s16(v23), v22), vmaxq_s16(v23, 0));
        v25 = *v17;
        v26 = vaddq_s16(v24, *v17);
        v27 = vaddq_s16(v26, v5);
        *v17 = vorrq_s8(vandq_s8(vcltzq_s16(v27), v26), vmaxq_s16(v27, 0));
        v28 = vsubq_s16(v25, v24);
        *(v17++ + v10) = vorrq_s8(vandq_s8(vcltzq_s16(v28), vaddq_s16(v28, v6)), vmaxq_s16(v28, 0));
        v18 -= 8;
      }

      while (v18);
      if (v11 != v9)
      {
LABEL_9:
        v29 = v13 - v15;
        v30 = &result->i16[v15];
        v31 = &result->i16[v9 + v15];
        do
        {
          v32 = *v31 * v14 + 62207 * ((5039 * (*v31 * v14)) >> 24);
          v33 = v32 & ((v32 - 3329) >> 15) | (v32 - 3329) & ~((v32 - 3329) >> 31);
          v34 = *v30;
          *v30 = (v33 + *v30) & ((v33 + *v30 - 3329) >> 15) | (v33 + *v30 - 3329) & ~((v33 + *v30 - 3329) >> 15);
          ++v30;
          *v31++ = (v34 - v33 + 3329) & ((v34 - v33) >> 15) | (v34 - v33) & ~((v34 - v33) >> 15);
          --v29;
        }

        while (v29);
      }

      v8 += v10;
      ++v7;
      v13 += v10;
      v12 = (v12 + 4 * (v2 >> 1));
    }

    while (v7 != v1);
    v1 *= 2;
    v2 >>= 1;
  }

  while (v1 < 128);
  v35 = result[32].i64 + 2;
  v36 = 1;
  LODWORD(v37) = 256;
  v38 = vdupq_n_s32(0x13AFu);
  v39.i64[0] = 0xF2000000F2;
  v39.i64[1] = 0xF2000000F2;
  v40.i64[0] = 0xD000D000D000D00;
  v40.i64[1] = 0xD000D000D000D00;
  v41 = vdupq_n_s16(0xD01u);
  do
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = v37 & 0x1FE;
    v37 = v37 >> 1;
    v46 = 4 * v37;
    v47 = result + 32;
    v48 = 1;
    v49 = v37;
    do
    {
      if (v49 <= v48)
      {
        v50 = v48;
      }

      else
      {
        v50 = v49;
      }

      v51 = v44 + v37;
      if (v44 + v37 <= (v44 | 1uLL))
      {
        v52 = v44 + 1;
      }

      else
      {
        v52 = v44 + v37;
      }

      v53 = v52 + -2 * v37 * v43;
      v54 = kNTTRoots[v43 + v36];
      v55 = v44;
      if (v53 < 8)
      {
        goto LABEL_34;
      }

      v56 = v46 * v43;
      v57 = v51 <= (v44 | 1uLL) ? v44 + 1 : v44 + v37;
      v58 = 2 * (v57 + ((v37 << 63) - 2 * v37) * v43) - 2;
      v59 = v35 + v45 + v46 * v43 + v58;
      v60 = v35 + v56 + v58;
      v61 = result[32].u64 + v56 >= v59 || result[32].u64 + v45 + v56 >= v60;
      v55 = v44;
      if (!v61)
      {
        goto LABEL_34;
      }

      v62 = (v50 + v42) & 0xFFFFFFFFFFFFFFF8;
      v55 = v44 + (v53 & 0xFFFFFFFFFFFFFFF8);
      v63 = vdupq_n_s16(v54);
      v64 = v47;
      do
      {
        v65 = *(v64 + v45);
        v66 = vmull_u16(*v63.i8, *v65.i8);
        v67 = vmull_high_u16(v63, v65);
        v68 = vuzp1q_s16(vmlal_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v66.i8, *v38.i8), 0x18uLL), vmull_high_u32(v66, v38), 0x18uLL), v39), *v63.i8, *v65.i8), vmlal_high_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v67.i8, *v38.i8), 0x18uLL), vmull_high_u32(v67, v38), 0x18uLL), v39), v63, v65));
        v69 = vaddq_s16(v68, v40);
        v70 = vorrq_s8(vandq_s8(vcltzq_s16(v69), v68), vmaxq_s16(v69, 0));
        v71 = *v64;
        v72 = vaddq_s16(v70, *v64);
        v73 = vaddq_s16(v72, v40);
        *v64 = vorrq_s8(vandq_s8(vcltzq_s16(v73), v72), vmaxq_s16(v73, 0));
        v74 = vsubq_s16(v71, v70);
        *(v64++ + v45) = vorrq_s8(vandq_s8(vcltzq_s16(v74), vaddq_s16(v74, v41)), vmaxq_s16(v74, 0));
        v62 -= 8;
      }

      while (v62);
      if (v53 != (v53 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_34:
        v75 = v55 + 256;
        v76 = 2 * (v37 + v55) + 512;
        do
        {
          v77 = *(result->u16 + v76) * v54 + 62207 * ((5039 * (*(result->u16 + v76) * v54)) >> 24);
          v78 = v77 & ((v77 - 3329) >> 15) | (v77 - 3329) & ~((v77 - 3329) >> 31);
          v79 = result->i16[v75];
          result->i16[v75] = (v78 + v79) & ((v78 + v79 - 3329) >> 15) | (v78 + v79 - 3329) & ~((v78 + v79 - 3329) >> 15);
          *(result->i16 + v76) = (v79 - v78 + 3329) & ((v79 - v78) >> 15) | (v79 - v78) & ~((v79 - v78) >> 15);
          v80 = v75 - 255;
          ++v75;
          v76 += 2;
        }

        while (v80 < v51);
      }

      v44 += v45;
      ++v43;
      v49 += v45;
      v48 += v45;
      v42 -= v45;
      v47 = (v47 + v46);
    }

    while (v43 != v36);
    v36 *= 2;
  }

  while (v36 < 128);
  v81 = result[64].i64 + 2;
  v82 = 1;
  v83 = 256;
  v84 = vdupq_n_s32(0x13AFu);
  v85.i64[0] = 0xF2000000F2;
  v85.i64[1] = 0xF2000000F2;
  v86.i64[0] = 0xD000D000D000D00;
  v86.i64[1] = 0xD000D000D000D00;
  v87 = vdupq_n_s16(0xD01u);
  do
  {
    v88 = v83 >> 1;
    if (v82 >= 1)
    {
      v89 = 0;
      v90 = 0;
      v91 = v83 & 0x1FE;
      v92 = 4 * v88;
      v93 = result + 64;
      v94 = -2 * v88;
      do
      {
        v95 = v90 + v88;
        if (v90 + v88 <= (v90 | 1uLL))
        {
          v96 = v90 + 1;
        }

        else
        {
          v96 = v90 + v88;
        }

        v97 = v96 + v94 * v89;
        v98 = kNTTRoots[v89 + v82];
        v99 = v90;
        if (v97 < 8)
        {
          goto LABEL_57;
        }

        v100 = v92 * v89;
        v101 = v95 <= (v90 | 1uLL) ? v90 + 1 : v90 + v88;
        v102 = 2 * (v101 + v94 * v89) - 2;
        v103 = v81 + v91 + v92 * v89 + v102;
        v104 = v81 + v100 + v102;
        v105 = result[64].u64 + v100 >= v103 || result[64].u64 + v91 + v100 >= v104;
        v99 = v90;
        if (!v105)
        {
          goto LABEL_57;
        }

        v99 = v90 + (v97 & 0xFFFFFFFFFFFFFFF8);
        v106 = vdupq_n_s16(v98);
        v107 = v93;
        v108 = v88 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v109 = *(v107 + v91);
          v110 = vmull_u16(*v106.i8, *v109.i8);
          v111 = vmull_high_u16(v106, v109);
          v112 = vuzp1q_s16(vmlal_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v110.i8, *v84.i8), 0x18uLL), vmull_high_u32(v110, v84), 0x18uLL), v85), *v106.i8, *v109.i8), vmlal_high_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v111.i8, *v84.i8), 0x18uLL), vmull_high_u32(v111, v84), 0x18uLL), v85), v106, v109));
          v113 = vaddq_s16(v112, v86);
          v114 = vorrq_s8(vandq_s8(vcltzq_s16(v113), v112), vmaxq_s16(v113, 0));
          v115 = *v107;
          v116 = vaddq_s16(v114, *v107);
          v117 = vaddq_s16(v116, v86);
          *v107 = vorrq_s8(vandq_s8(vcltzq_s16(v117), v116), vmaxq_s16(v117, 0));
          v118 = vsubq_s16(v115, v114);
          *(v107++ + v91) = vorrq_s8(vandq_s8(vcltzq_s16(v118), vaddq_s16(v118, v87)), vmaxq_s16(v118, 0));
          v108 -= 8;
        }

        while (v108);
        if (v97 != (v97 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_57:
          v119 = v99 + 512;
          v120 = 2 * (v88 + v99) + 1024;
          do
          {
            v121 = *(result->u16 + v120) * v98 + 62207 * ((5039 * (*(result->u16 + v120) * v98)) >> 24);
            v122 = v121 & ((v121 - 3329) >> 15) | (v121 - 3329) & ~((v121 - 3329) >> 31);
            v123 = result->i16[v119];
            result->i16[v119] = (v122 + v123) & ((v122 + v123 - 3329) >> 15) | (v122 + v123 - 3329) & ~((v122 + v123 - 3329) >> 15);
            *(result->i16 + v120) = (v123 - v122 + 3329) & ((v123 - v122) >> 15) | (v123 - v122) & ~((v123 - v122) >> 15);
            v124 = v119 - 511;
            ++v119;
            v120 += 2;
          }

          while (v124 < v95);
        }

        v90 += v91;
        ++v89;
        v93 = (v93 + v92);
      }

      while (v89 != v82);
    }

    v82 *= 2;
    v83 = v88;
  }

  while (v82 < 128);
  return result;
}

int *KYBER_encap(char *a1, char *a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  BCM_rand_bytes_with_additional_data(v25, 0x20uLL, BCM_rand_bytes::kZeroAdditionalData);
  v28[0] = v25[0];
  v28[1] = v25[1];
  v6 = *(a3 + 1584);
  v28[2] = *(a3 + 1568);
  v28[3] = v6;
  v22 = 0;
  v24 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 1;
  v9 = 64;
  v23 = 72;
  BORINGSSL_keccak_absorb(&v8, v28, 0x40uLL);
  BORINGSSL_keccak_squeeze(&v8, __dst, 0x40uLL);
  encrypt_cpa(a1, a3, v25);
  v22 = 0;
  v24 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0;
  v9 = 32;
  v23 = 136;
  BORINGSSL_keccak_absorb(&v8, a1, 0x440uLL);
  BORINGSSL_keccak_squeeze(&v8, v27, 0x20uLL);
  v22 = 0;
  v24 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 3;
  v9 = 0;
  v23 = 136;
  BORINGSSL_keccak_absorb(&v8, __dst, 0x40uLL);
  return BORINGSSL_keccak_squeeze(&v8, a2, 0x20uLL);
}

uint64_t encrypt_cpa(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v5 = v4;
  v1587 = v6;
  v1588 = v3;
  v8 = v7;
  v9 = v1631;
  v1688 = *MEMORY[0x277D85DE8];
  v10 = v1632;
  v1653 = 0;
  vector_generate_secret_eta_2(v1652[0].i16, &v1653, v4);
  vector_ntt(v1652);
  vector_generate_secret_eta_2(v1651, &v1653, v5);
  v11 = v5[1];
  v1654[0] = *v5;
  v1654[1] = v11;
  v1655 = v1653;
  v1633 = 0;
  v1635 = 0u;
  memset(v1632, 0, sizeof(v1632));
  v1631[0] = 3;
  v1631[1] = 0;
  v1634 = 136;
  BORINGSSL_keccak_absorb(v1631, v1654, 0x21uLL);
  BORINGSSL_keccak_squeeze(v1631, v1656.i8, 0x80uLL);
  v12 = vmovl_u8(*v1656.i8);
  v13 = vmovl_high_u16(v12);
  v14 = vmovl_u16(*v12.i8);
  v15 = vmovl_high_u8(v1656);
  v16 = vmovl_high_u16(v15);
  v17 = vmovl_u16(*v15.i8);
  v18 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v13 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v13, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v13, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v13, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v19 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v14 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v14, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v14, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v14, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v20 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v16 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v16, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v16, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v16, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v21 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v17 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v17, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v17, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v17, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v22 = vdupq_n_s32(0xD01u);
  v23 = vaddq_s32(vandq_s8(vcltzq_s32(v18), v22), v18);
  v1689.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v21), v22), v21), vaddq_s32(vandq_s8(vcltzq_s32(v20), v22), v20));
  v24 = vshrq_n_u8(v1656, 4uLL);
  v25 = vmovl_high_u8(v24);
  v26 = vmovl_high_u16(v25);
  v27 = vmovl_u16(*v25.i8);
  v28 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v26 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v26, 3uLL)), (*&vshrq_n_u32(v26, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v26, 0x1DuLL), 0x1FuLL);
  v29 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v27 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v27, 3uLL)), (*&vshrq_n_u32(v27, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v27, 0x1DuLL), 0x1FuLL);
  v1701.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v19), v22), v19), v23);
  v30 = vmovl_u8(*v24.i8);
  v31 = vmovl_high_u16(v30);
  v32 = vmovl_u16(*v30.i8);
  v33 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v31 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v31, 3uLL)), (*&vshrq_n_u32(v31, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v31, 0x1DuLL), 0x1FuLL);
  v34 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v32 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v32, 3uLL)), (*&vshrq_n_u32(v32, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v32, 0x1DuLL), 0x1FuLL);
  v1701.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v34), v22), v34), vaddq_s32(vandq_s8(vcltzq_s32(v33), v22), v33));
  v35 = v1636;
  vst2q_s16(v35, v1701);
  v35 += 16;
  v1689.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v29), v22), v29), vaddq_s32(vandq_s8(vcltzq_s32(v28), v22), v28));
  vst2q_s16(v35, v1689);
  v1689.val[0] = v1658;
  v36 = vmovl_u8(*v1657.i8);
  v37 = vmovl_high_u16(v36);
  v38 = vmovl_u16(*v36.i8);
  v39 = vmovl_high_u8(v1657);
  v40 = vmovl_high_u16(v39);
  v41 = vmovl_u16(*v39.i8);
  v42 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v37 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v37, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v37, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v37, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v43 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v38 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v38, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v38, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v38, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v44 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v40 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v40, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v40, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v40, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v45 = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v41 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v41, 0x1CuLL), 0x1FuLL), vshlq_n_s32(v41, 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v41, 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v1692.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v45), v22), v45), vaddq_s32(vandq_s8(vcltzq_s32(v44), v22), v44));
  v1689.val[1] = vshrq_n_u8(v1657, 4uLL);
  v46 = vmovl_high_u8(v1689.val[1]);
  v1701.val[0] = vmovl_high_u16(v46);
  v47 = vmovl_u16(*v46.i8);
  v1701.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v1701.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v1701.val[0], 3uLL)), (*&vshrq_n_u32(v1701.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v1701.val[0], 0x1DuLL), 0x1FuLL);
  v48 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v47 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v47, 3uLL)), (*&vshrq_n_u32(v47, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v47, 0x1DuLL), 0x1FuLL);
  v1690.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v43), v22), v43), vaddq_s32(vandq_s8(vcltzq_s32(v42), v22), v42));
  v1689.val[1] = vmovl_u8(*v1689.val[1].i8);
  v1701.val[1] = vmovl_high_u16(v1689.val[1]);
  v1689.val[1] = vmovl_u16(*v1689.val[1].i8);
  v1701.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v1701.val[1] & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v1701.val[1], 3uLL)), (*&vshrq_n_u32(v1701.val[1], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v1701.val[1], 0x1DuLL), 0x1FuLL);
  v1689.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v1689.val[1] & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v1689.val[1], 3uLL)), (*&vshrq_n_u32(v1689.val[1], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v1689.val[1], 0x1DuLL), 0x1FuLL);
  v1690.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v1689.val[1]), v22), v1689.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v1701.val[1]), v22), v1701.val[1]));
  v49 = &v1637;
  vst2q_s16(v49, v1690);
  v1692.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v48), v22), v48), vaddq_s32(vandq_s8(vcltzq_s32(v1701.val[0]), v22), v1701.val[0]));
  v50 = &v1638;
  vst2q_s16(v50, v1692);
  v1689.val[1] = vmovl_u8(*v1689.val[0].i8);
  v1690.val[0] = vmovl_high_u16(v1689.val[1]);
  v1689.val[1] = vmovl_u16(*v1689.val[1].i8);
  v1690.val[1] = vmovl_high_u8(v1689.val[0]);
  v1692.val[0] = vmovl_high_u16(v1690.val[1]);
  v1690.val[1] = vmovl_u16(*v1690.val[1].i8);
  v1690.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v1690.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v1690.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v1690.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v1690.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v1689.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v1689.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v1689.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v1689.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v1689.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v1692.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v1692.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v1692.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v1692.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v1692.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v1690.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v1690.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v1690.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v1690.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v1690.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v1701.val[0] = vaddq_s32(vandq_s8(vcltzq_s32(v1689.val[1]), v22), v1689.val[1]);
  v1689.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v1690.val[1]), v22), v1690.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v1692.val[0]), v22), v1692.val[0]));
  v1689.val[0] = vshrq_n_u8(v1689.val[0], 4uLL);
  v1690.val[1] = vmovl_high_u8(v1689.val[0]);
  v1692.val[0] = vmovl_high_u16(v1690.val[1]);
  v1690.val[1] = vmovl_u16(*v1690.val[1].i8);
  v1692.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v1692.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v1692.val[0], 3uLL)), (*&vshrq_n_u32(v1692.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v1692.val[0], 0x1DuLL), 0x1FuLL);
  v1690.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v1690.val[1] & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v1690.val[1], 3uLL)), (*&vshrq_n_u32(v1690.val[1], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v1690.val[1], 0x1DuLL), 0x1FuLL);
  v1692.val[1] = vuzp1q_s16(v1701.val[0], vaddq_s32(vandq_s8(vcltzq_s32(v1690.val[0]), v22), v1690.val[0]));
  v1689.val[0] = vmovl_u8(*v1689.val[0].i8);
  v1701.val[0] = vmovl_high_u16(v1689.val[0]);
  v1689.val[0] = vmovl_u16(*v1689.val[0].i8);
  v1701.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v1701.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v1701.val[0], 3uLL)), (*&vshrq_n_u32(v1701.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v1701.val[0], 0x1DuLL), 0x1FuLL);
  v1689.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v1689.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v1689.val[0], 3uLL)), (*&vshrq_n_u32(v1689.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v1689.val[0], 0x1DuLL), 0x1FuLL);
  v51 = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v1689.val[0]), v22), v1689.val[0]), vaddq_s32(vandq_s8(vcltzq_s32(v1701.val[0]), v22), v1701.val[0]));
  v52 = &v1639;
  vst2q_s16(v52, *(&v1692 + 16));
  v1690.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v1690.val[1]), v22), v1690.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v1692.val[0]), v22), v1692.val[0]));
  v53 = &v1640;
  vst2q_s16(v53, *(&v1689 + 16));
  v1689.val[0] = v1660;
  v1690.val[0] = vmovl_u8(*v1659.i8);
  v1690.val[1] = vmovl_high_u16(v1690.val[0]);
  v1690.val[0] = vmovl_u16(*v1690.val[0].i8);
  v1692.val[0] = vmovl_high_u8(v1659);
  v1692.val[1] = vmovl_high_u16(v1692.val[0]);
  v1692.val[0] = vmovl_u16(*v1692.val[0].i8);
  v1690.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v1690.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v1690.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v1690.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v1690.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v1690.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v1690.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v1690.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v1690.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v1690.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v1692.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v1692.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v1692.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v1692.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v1692.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v1692.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v1692.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v1692.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v1692.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v1692.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v1692.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v1692.val[0]), v22), v1692.val[0]), vaddq_s32(vandq_s8(vcltzq_s32(v1692.val[1]), v22), v1692.val[1]));
  v1689.val[1] = vshrq_n_u8(v1659, 4uLL);
  v54 = vmovl_high_u8(v1689.val[1]);
  v1701.val[0] = vmovl_high_u16(v54);
  v55 = vmovl_u16(*v54.i8);
  v1701.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v1701.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v1701.val[0], 3uLL)), (*&vshrq_n_u32(v1701.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v1701.val[0], 0x1DuLL), 0x1FuLL);
  v56 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v55 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v55, 3uLL)), (*&vshrq_n_u32(v55, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v55, 0x1DuLL), 0x1FuLL);
  v1690.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v1690.val[0]), v22), v1690.val[0]), vaddq_s32(vandq_s8(vcltzq_s32(v1690.val[1]), v22), v1690.val[1]));
  v1689.val[1] = vmovl_u8(*v1689.val[1].i8);
  v1701.val[1] = vmovl_high_u16(v1689.val[1]);
  v1689.val[1] = vmovl_u16(*v1689.val[1].i8);
  v1701.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v1701.val[1] & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v1701.val[1], 3uLL)), (*&vshrq_n_u32(v1701.val[1], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v1701.val[1], 0x1DuLL), 0x1FuLL);
  v1689.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v1689.val[1] & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v1689.val[1], 3uLL)), (*&vshrq_n_u32(v1689.val[1], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v1689.val[1], 0x1DuLL), 0x1FuLL);
  v1690.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v1689.val[1]), v22), v1689.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v1701.val[1]), v22), v1701.val[1]));
  v57 = &v1641;
  vst2q_s16(v57, v1690);
  v1692.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v56), v22), v56), vaddq_s32(vandq_s8(vcltzq_s32(v1701.val[0]), v22), v1701.val[0]));
  v58 = &v1642;
  vst2q_s16(v58, v1692);
  v1689.val[1] = vmovl_u8(*v1689.val[0].i8);
  v1690.val[0] = vmovl_high_u16(v1689.val[1]);
  v1689.val[1] = vmovl_u16(*v1689.val[1].i8);
  v1690.val[1] = vmovl_high_u8(v1689.val[0]);
  v1692.val[0] = vmovl_high_u16(v1690.val[1]);
  v1690.val[1] = vmovl_u16(*v1690.val[1].i8);
  v1690.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v1690.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v1690.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v1690.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v1690.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v1689.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v1689.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v1689.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v1689.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v1689.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v1692.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v1692.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v1692.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v1692.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v1692.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v1690.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v1690.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v1690.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v1690.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v1690.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v1701.val[0] = vaddq_s32(vandq_s8(vcltzq_s32(v1689.val[1]), v22), v1689.val[1]);
  v1689.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v1690.val[1]), v22), v1690.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v1692.val[0]), v22), v1692.val[0]));
  v1689.val[0] = vshrq_n_u8(v1689.val[0], 4uLL);
  v1690.val[1] = vmovl_high_u8(v1689.val[0]);
  v1692.val[0] = vmovl_high_u16(v1690.val[1]);
  v1690.val[1] = vmovl_u16(*v1690.val[1].i8);
  v1692.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v1692.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v1692.val[0], 3uLL)), (*&vshrq_n_u32(v1692.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v1692.val[0], 0x1DuLL), 0x1FuLL);
  v1690.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v1690.val[1] & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v1690.val[1], 3uLL)), (*&vshrq_n_u32(v1690.val[1], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v1690.val[1], 0x1DuLL), 0x1FuLL);
  v1692.val[1] = vuzp1q_s16(v1701.val[0], vaddq_s32(vandq_s8(vcltzq_s32(v1690.val[0]), v22), v1690.val[0]));
  v1689.val[0] = vmovl_u8(*v1689.val[0].i8);
  v1701.val[0] = vmovl_high_u16(v1689.val[0]);
  v1689.val[0] = vmovl_u16(*v1689.val[0].i8);
  v1701.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v1701.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v1701.val[0], 3uLL)), (*&vshrq_n_u32(v1701.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v1701.val[0], 0x1DuLL), 0x1FuLL);
  v1689.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v1689.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v1689.val[0], 3uLL)), (*&vshrq_n_u32(v1689.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v1689.val[0], 0x1DuLL), 0x1FuLL);
  v59 = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v1689.val[0]), v22), v1689.val[0]), vaddq_s32(vandq_s8(vcltzq_s32(v1701.val[0]), v22), v1701.val[0]));
  v60 = &v1643;
  vst2q_s16(v60, *(&v1692 + 16));
  v1690.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v1690.val[1]), v22), v1690.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v1692.val[0]), v22), v1692.val[0]));
  v61 = &v1644;
  vst2q_s16(v61, *(&v1689 + 16));
  v1689.val[0] = v1662;
  v1690.val[0] = vmovl_u8(*v1661.i8);
  v1690.val[1] = vmovl_high_u16(v1690.val[0]);
  v1690.val[0] = vmovl_u16(*v1690.val[0].i8);
  v1692.val[0] = vmovl_high_u8(v1661);
  v1692.val[1] = vmovl_high_u16(v1692.val[0]);
  v1692.val[0] = vmovl_u16(*v1692.val[0].i8);
  v1690.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v1690.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v1690.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v1690.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v1690.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v1690.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v1690.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v1690.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v1690.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v1690.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v1692.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v1692.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v1692.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v1692.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v1692.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v1692.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v1692.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v1692.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v1692.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v1692.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v1692.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v1692.val[0]), v22), v1692.val[0]), vaddq_s32(vandq_s8(vcltzq_s32(v1692.val[1]), v22), v1692.val[1]));
  v1689.val[1] = vshrq_n_u8(v1661, 4uLL);
  v62 = vmovl_high_u8(v1689.val[1]);
  v1701.val[0] = vmovl_high_u16(v62);
  v63 = vmovl_u16(*v62.i8);
  v1701.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v1701.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v1701.val[0], 3uLL)), (*&vshrq_n_u32(v1701.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v1701.val[0], 0x1DuLL), 0x1FuLL);
  v64 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v63 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v63, 3uLL)), (*&vshrq_n_u32(v63, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v63, 0x1DuLL), 0x1FuLL);
  v1690.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v1690.val[0]), v22), v1690.val[0]), vaddq_s32(vandq_s8(vcltzq_s32(v1690.val[1]), v22), v1690.val[1]));
  v1689.val[1] = vmovl_u8(*v1689.val[1].i8);
  v1701.val[1] = vmovl_high_u16(v1689.val[1]);
  v1689.val[1] = vmovl_u16(*v1689.val[1].i8);
  v1701.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v1701.val[1] & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v1701.val[1], 3uLL)), (*&vshrq_n_u32(v1701.val[1], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v1701.val[1], 0x1DuLL), 0x1FuLL);
  v1689.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v1689.val[1] & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v1689.val[1], 3uLL)), (*&vshrq_n_u32(v1689.val[1], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v1689.val[1], 0x1DuLL), 0x1FuLL);
  v1690.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v1689.val[1]), v22), v1689.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v1701.val[1]), v22), v1701.val[1]));
  v65 = &v1645;
  vst2q_s16(v65, v1690);
  v1692.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v64), v22), v64), vaddq_s32(vandq_s8(vcltzq_s32(v1701.val[0]), v22), v1701.val[0]));
  v66 = &v1646;
  vst2q_s16(v66, v1692);
  v1689.val[1] = vmovl_u8(*v1689.val[0].i8);
  v1690.val[0] = vmovl_high_u16(v1689.val[1]);
  v1689.val[1] = vmovl_u16(*v1689.val[1].i8);
  v1690.val[1] = vmovl_high_u8(v1689.val[0]);
  v1692.val[0] = vmovl_high_u16(v1690.val[1]);
  v1690.val[1] = vmovl_u16(*v1690.val[1].i8);
  v1690.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v1690.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v1690.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v1690.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v1690.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v1689.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v1689.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v1689.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v1689.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v1689.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v1692.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v1692.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v1692.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v1692.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v1692.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v1690.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v1690.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v1690.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v1690.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v1690.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v1701.val[0] = vaddq_s32(vandq_s8(vcltzq_s32(v1689.val[1]), v22), v1689.val[1]);
  v1689.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v1690.val[1]), v22), v1690.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v1692.val[0]), v22), v1692.val[0]));
  v1689.val[0] = vshrq_n_u8(v1689.val[0], 4uLL);
  v1690.val[1] = vmovl_high_u8(v1689.val[0]);
  v1692.val[0] = vmovl_high_u16(v1690.val[1]);
  v1690.val[1] = vmovl_u16(*v1690.val[1].i8);
  v1692.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v1692.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v1692.val[0], 3uLL)), (*&vshrq_n_u32(v1692.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v1692.val[0], 0x1DuLL), 0x1FuLL);
  v1690.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v1690.val[1] & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v1690.val[1], 3uLL)), (*&vshrq_n_u32(v1690.val[1], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v1690.val[1], 0x1DuLL), 0x1FuLL);
  v1692.val[1] = vuzp1q_s16(v1701.val[0], vaddq_s32(vandq_s8(vcltzq_s32(v1690.val[0]), v22), v1690.val[0]));
  v1689.val[0] = vmovl_u8(*v1689.val[0].i8);
  v1701.val[0] = vmovl_high_u16(v1689.val[0]);
  v1689.val[0] = vmovl_u16(*v1689.val[0].i8);
  v1701.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v1701.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v1701.val[0], 3uLL)), (*&vshrq_n_u32(v1701.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v1701.val[0], 0x1DuLL), 0x1FuLL);
  v1689.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v1689.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v1689.val[0], 3uLL)), (*&vshrq_n_u32(v1689.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v1689.val[0], 0x1DuLL), 0x1FuLL);
  v67 = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v1689.val[0]), v22), v1689.val[0]), vaddq_s32(vandq_s8(vcltzq_s32(v1701.val[0]), v22), v1701.val[0]));
  v68 = &v1647;
  vst2q_s16(v68, *(&v1692 + 16));
  v1690.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v1690.val[1]), v22), v1690.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v1692.val[0]), v22), v1692.val[0]));
  v69 = &v1648;
  vst2q_s16(v69, *(&v1689 + 16));
  v1689.val[0] = vmovl_u8(*v1663.i8);
  v1689.val[1] = vmovl_high_u16(v1689.val[0]);
  v1689.val[0] = vmovl_u16(*v1689.val[0].i8);
  v1690.val[1] = vmovl_high_u8(v1663);
  v1692.val[0] = vmovl_high_u16(v1690.val[1]);
  v1690.val[1] = vmovl_u16(*v1690.val[1].i8);
  v1689.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v1689.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v1689.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v1689.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v1689.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v1689.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v1689.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v1689.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v1689.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v1689.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v1692.val[0] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*v1692.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v1692.val[0], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v1692.val[0], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v1692.val[0], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v1690.val[1] = vaddq_s32(vsraq_n_s32(vsraq_n_s32((*&v1690.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), vshlq_n_s32(v1690.val[1], 0x1CuLL), 0x1FuLL), vshlq_n_s32(v1690.val[1], 0x1DuLL), 0x1FuLL), (*&vshrq_n_u32(v1690.val[1], 1uLL) & __PAIR128__(0xFFFFFF81FFFFFF81, 0xFFFFFF81FFFFFF81)));
  v1701.val[0] = vaddq_s32(vandq_s8(vcltzq_s32(v1689.val[0]), v22), v1689.val[0]);
  v1689.val[0] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v1690.val[1]), v22), v1690.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v1692.val[0]), v22), v1692.val[0]));
  v1690.val[1] = vshrq_n_u8(v1663, 4uLL);
  v1690.val[0] = vmovl_high_u8(v1690.val[1]);
  v1692.val[0] = vmovl_high_u16(v1690.val[0]);
  v1690.val[0] = vmovl_u16(*v1690.val[0].i8);
  v1692.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v1692.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v1692.val[0], 3uLL)), (*&vshrq_n_u32(v1692.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v1692.val[0], 0x1DuLL), 0x1FuLL);
  v1690.val[0] = vsraq_n_s32(vaddq_s32(vsubq_s32((*v1690.val & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v1690.val[0], 3uLL)), (*&vshrq_n_u32(v1690.val[0], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v1690.val[0], 0x1DuLL), 0x1FuLL);
  v1701.val[0] = vuzp1q_s16(v1701.val[0], vaddq_s32(vandq_s8(vcltzq_s32(v1689.val[1]), v22), v1689.val[1]));
  v1690.val[1] = vmovl_u8(*v1690.val[1].i8);
  v70 = vmovl_high_u16(v1690.val[1]);
  v1690.val[1] = vmovl_u16(*v1690.val[1].i8);
  v71 = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v70 & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v70, 3uLL)), (*&vshrq_n_u32(v70, 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v70, 0x1DuLL), 0x1FuLL);
  v1690.val[1] = vsraq_n_s32(vaddq_s32(vsubq_s32((*&v1690.val[1] & __PAIR128__(0xFFFFFFF1FFFFFFF1, 0xFFFFFFF1FFFFFFF1)), vshrq_n_u32(v1690.val[1], 3uLL)), (*&vshrq_n_u32(v1690.val[1], 1uLL) & __PAIR128__(0xFFFFFFF9FFFFFFF9, 0xFFFFFFF9FFFFFFF9))), vshlq_n_s32(v1690.val[1], 0x1DuLL), 0x1FuLL);
  v72 = &v1649;
  v1701.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v1690.val[1]), v22), v1690.val[1]), vaddq_s32(vandq_s8(vcltzq_s32(v71), v22), v71));
  vst2q_s16(v72, v1701);
  v73 = &v1650;
  v74 = v8 + 1600;
  v1689.val[1] = vuzp1q_s16(vaddq_s32(vandq_s8(vcltzq_s32(v1690.val[0]), v22), v1690.val[0]), vaddq_s32(vandq_s8(vcltzq_s32(v1692.val[0]), v22), v1692.val[0]));
  vst2q_s16(v73, v1689);
  bzero(v1631, 0x600uLL);
  v75 = 0;
  v76 = v8 + 2112;
  v77 = v8 + 2624;
  v78.i64[0] = 0xF2000000F2;
  v78.i64[1] = 0xF2000000F2;
  v79.i64[0] = 0xD000D000D000D00;
  v79.i64[1] = 0xD000D000D000D00;
  do
  {
    v80 = 0;
    v81 = &kModRoots;
    do
    {
      v82 = (v74 + v80 * 2);
      v1693 = vld2q_s16(v82);
      v83 = &v1652[v80 / 8];
      v1702 = vld2q_s16(v83->i16);
      v84 = vmull_u16(*v1702.val[1].i8, *v1693.val[1].i8);
      v85 = vmull_high_u16(v1702.val[1], v1693.val[1]);
      v86 = vdupq_n_s32(0x13AFu);
      v87 = vuzp1q_s16(vmlal_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v84.i8, *v86.i8), 0x18uLL), vmull_high_u32(v84, v86), 0x18uLL), v78), *v1702.val[1].i8, *v1693.val[1].i8), vmlal_high_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v85.i8, *v86.i8), 0x18uLL), vmull_high_u32(v85, v86), 0x18uLL), v78), v1702.val[1], v1693.val[1]));
      v88 = vaddq_s16(v87, v79);
      v89 = vorrq_s8(vandq_s8(vcltzq_s16(v88), v87), vmaxq_s16(v88, 0));
      v90 = *v81++;
      v91 = vmull_high_u16(v89, v90);
      v92 = vmlal_u16(vmull_u16(*v89.i8, *v90.i8), *v1702.val[0].i8, *v1693.val[0].i8);
      v93 = vmlal_high_u16(v91, v1702.val[0], v1693.val[0]);
      v94 = vuzp1q_s16(vmlaq_s32(v92, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v92.i8, *v86.i8), 0x18uLL), vmull_high_u32(v92, v86), 0x18uLL), v78), vmlaq_s32(v93, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v93.i8, *v86.i8), 0x18uLL), vmull_high_u32(v93, v86), 0x18uLL), v78));
      v95 = vaddq_s16(v94, v79);
      v96 = vmlal_u16(vmull_u16(*v1702.val[1].i8, *v1693.val[0].i8), *v1693.val[1].i8, *v1702.val[0].i8);
      v97 = vmlal_high_u16(vmull_high_u16(v1702.val[1], v1693.val[0]), v1693.val[1], v1702.val[0]);
      v98 = vuzp1q_s16(vmlaq_s32(v96, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v96.i8, *v86.i8), 0x18uLL), vmull_high_u32(v96, v86), 0x18uLL), v78), vmlaq_s32(v97, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v97.i8, *v86.i8), 0x18uLL), vmull_high_u32(v97, v86), 0x18uLL), v78));
      v99 = vorrq_s8(vandq_s8(vcltzq_s16(v95), v94), vmaxq_s16(v95, 0));
      v1693.val[1] = vaddq_s16(v98, v79);
      v1693.val[0] = vorrq_s8(vandq_s8(vcltzq_s16(v1693.val[1]), v98), vmaxq_s16(v1693.val[1], 0));
      v100 = &v1656.i16[v80];
      vst2q_s16(v100, v1693);
      v80 += 16;
    }

    while (v80 != 256);
    v101 = 0;
    v102 = v10;
    do
    {
      v103 = vaddq_s16(*(&v1656 + v101), v102[-1]);
      v104 = vaddq_s16(*(&v1656 + v101 + 16), *v102);
      v105 = vaddq_s16(v103, v79);
      v106 = vaddq_s16(v104, v79);
      v102[-1] = vorrq_s8(vandq_s8(vcltzq_s16(v105), v103), vmaxq_s16(v105, 0));
      *v102 = vorrq_s8(vandq_s8(vcltzq_s16(v106), v104), vmaxq_s16(v106, 0));
      v102 += 2;
      v101 += 32;
    }

    while (v101 != 512);
    v107 = 0;
    v108 = &kModRoots;
    do
    {
      v109 = (v76 + v107 * 2);
      v1694 = vld2q_s16(v109);
      v110 = &v1652[v107 / 8 + 32];
      v1703 = vld2q_s16(v110->i16);
      v111 = vmull_u16(*v1703.val[1].i8, *v1694.val[1].i8);
      v112 = vmull_high_u16(v1703.val[1], v1694.val[1]);
      v113 = vuzp1q_s16(vmlal_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v111.i8, *v86.i8), 0x18uLL), vmull_high_u32(v111, v86), 0x18uLL), v78), *v1703.val[1].i8, *v1694.val[1].i8), vmlal_high_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v112.i8, *v86.i8), 0x18uLL), vmull_high_u32(v112, v86), 0x18uLL), v78), v1703.val[1], v1694.val[1]));
      v114 = vaddq_s16(v113, v79);
      v115 = vorrq_s8(vandq_s8(vcltzq_s16(v114), v113), vmaxq_s16(v114, 0));
      v116 = *v108++;
      v117 = vmull_high_u16(v115, v116);
      v118 = vmlal_u16(vmull_u16(*v115.i8, *v116.i8), *v1703.val[0].i8, *v1694.val[0].i8);
      v119 = vmlal_high_u16(v117, v1703.val[0], v1694.val[0]);
      v120 = vuzp1q_s16(vmlaq_s32(v118, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v118.i8, *v86.i8), 0x18uLL), vmull_high_u32(v118, v86), 0x18uLL), v78), vmlaq_s32(v119, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v119.i8, *v86.i8), 0x18uLL), vmull_high_u32(v119, v86), 0x18uLL), v78));
      v121 = vaddq_s16(v120, v79);
      v122 = vmlal_u16(vmull_u16(*v1703.val[1].i8, *v1694.val[0].i8), *v1694.val[1].i8, *v1703.val[0].i8);
      v123 = vmlal_high_u16(vmull_high_u16(v1703.val[1], v1694.val[0]), v1694.val[1], v1703.val[0]);
      v124 = vuzp1q_s16(vmlaq_s32(v122, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v122.i8, *v86.i8), 0x18uLL), vmull_high_u32(v122, v86), 0x18uLL), v78), vmlaq_s32(v123, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v123.i8, *v86.i8), 0x18uLL), vmull_high_u32(v123, v86), 0x18uLL), v78));
      v125 = vorrq_s8(vandq_s8(vcltzq_s16(v121), v120), vmaxq_s16(v121, 0));
      v1694.val[1] = vaddq_s16(v124, v79);
      v1694.val[0] = vorrq_s8(vandq_s8(vcltzq_s16(v1694.val[1]), v124), vmaxq_s16(v1694.val[1], 0));
      v126 = &v1656.i16[v107];
      vst2q_s16(v126, v1694);
      v107 += 16;
    }

    while (v107 != 256);
    v127 = 0;
    v128 = v10;
    do
    {
      v129 = vaddq_s16(*(&v1656 + v127), v128[-1]);
      v130 = vaddq_s16(*(&v1656 + v127 + 16), *v128);
      v131 = vaddq_s16(v129, v79);
      v132 = vaddq_s16(v130, v79);
      v128[-1] = vorrq_s8(vandq_s8(vcltzq_s16(v131), v129), vmaxq_s16(v131, 0));
      *v128 = vorrq_s8(vandq_s8(vcltzq_s16(v132), v130), vmaxq_s16(v132, 0));
      v128 += 2;
      v127 += 32;
    }

    while (v127 != 512);
    v133 = 0;
    v134 = &kModRoots;
    do
    {
      v135 = (v77 + v133 * 2);
      v1695 = vld2q_s16(v135);
      v136 = &v1652[v133 / 8 + 64];
      v1704 = vld2q_s16(v136->i16);
      v137 = vmull_u16(*v1704.val[1].i8, *v1695.val[1].i8);
      v138 = vmull_high_u16(v1704.val[1], v1695.val[1]);
      v139 = vuzp1q_s16(vmlal_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v137.i8, *v86.i8), 0x18uLL), vmull_high_u32(v137, v86), 0x18uLL), v78), *v1704.val[1].i8, *v1695.val[1].i8), vmlal_high_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v138.i8, *v86.i8), 0x18uLL), vmull_high_u32(v138, v86), 0x18uLL), v78), v1704.val[1], v1695.val[1]));
      v140 = vaddq_s16(v139, v79);
      v141 = vorrq_s8(vandq_s8(vcltzq_s16(v140), v139), vmaxq_s16(v140, 0));
      v142 = *v134++;
      v143 = vmull_high_u16(v141, v142);
      v144 = vmlal_u16(vmull_u16(*v141.i8, *v142.i8), *v1704.val[0].i8, *v1695.val[0].i8);
      v145 = vmlal_high_u16(v143, v1704.val[0], v1695.val[0]);
      v146 = vuzp1q_s16(vmlaq_s32(v144, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v144.i8, *v86.i8), 0x18uLL), vmull_high_u32(v144, v86), 0x18uLL), v78), vmlaq_s32(v145, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v145.i8, *v86.i8), 0x18uLL), vmull_high_u32(v145, v86), 0x18uLL), v78));
      v147 = vaddq_s16(v146, v79);
      v148 = vmlal_u16(vmull_u16(*v1704.val[1].i8, *v1695.val[0].i8), *v1695.val[1].i8, *v1704.val[0].i8);
      v149 = vmlal_high_u16(vmull_high_u16(v1704.val[1], v1695.val[0]), v1695.val[1], v1704.val[0]);
      v150 = vuzp1q_s16(vmlaq_s32(v148, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v148.i8, *v86.i8), 0x18uLL), vmull_high_u32(v148, v86), 0x18uLL), v78), vmlaq_s32(v149, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v149.i8, *v86.i8), 0x18uLL), vmull_high_u32(v149, v86), 0x18uLL), v78));
      v151 = vorrq_s8(vandq_s8(vcltzq_s16(v147), v146), vmaxq_s16(v147, 0));
      v1695.val[1] = vaddq_s16(v150, v79);
      v1695.val[0] = vorrq_s8(vandq_s8(vcltzq_s16(v1695.val[1]), v150), vmaxq_s16(v1695.val[1], 0));
      v152 = &v1656.i16[v133];
      vst2q_s16(v152, v1695);
      v133 += 16;
    }

    while (v133 != 256);
    for (i = 0; i != 512; i += 32)
    {
      v154 = vaddq_s16(*(&v1656 + i), *&v9[i / 8]);
      v155 = vaddq_s16(*(&v1656 + i + 16), v10[i / 0x10]);
      v156 = vaddq_s16(v154, v79);
      v157 = vaddq_s16(v155, v79);
      *&v9[i / 8] = vorrq_s8(vandq_s8(vcltzq_s16(v156), v154), vmaxq_s16(v156, 0));
      v10[i / 0x10] = vorrq_s8(vandq_s8(vcltzq_s16(v157), v155), vmaxq_s16(v157, 0));
    }

    ++v75;
    v74 += 1536;
    v10 += 32;
    v76 += 1536;
    v77 += 1536;
    v9 += 64;
  }

  while (v75 != 3);
  v158 = 0;
  v159 = vdupq_n_s32(0xD01u);
  v160.i64[0] = 0xD000D000D000D00;
  v160.i64[1] = 0xD000D000D000D00;
  v161 = vdupq_n_s32(0x13AFu);
  v162.i64[0] = 0xF2000000F2;
  v162.i64[1] = 0xF2000000F2;
  v163 = 0uLL;
  v164 = xmmword_273BA7000;
  v165 = xmmword_273BA7030;
  v166 = xmmword_273BA7040;
  v167 = xmmword_273BA7050;
  v168 = xmmword_273BA7060;
  v169 = xmmword_273BA7070;
  v170 = xmmword_273BA7090;
  v171 = xmmword_273BA70A0;
  v172 = xmmword_273BA70B0;
  v173 = xmmword_273BA70C0;
  v174 = xmmword_273BA70F0;
  v175 = v1631;
  v1590 = v159;
  do
  {
    v176 = 0;
    v177 = &v1631[64 * v158];
    v178 = v175;
    do
    {
      v1718 = vld4q_s16(v178);
      v179 = *(&kInverseNTTRoots + v176 + 128);
      v180 = vmovl_high_u16(v179);
      v181 = vmovl_u16(*v179.i8);
      v182 = vaddq_s16(v1718.val[0], v1718.val[2]);
      v183 = vaddq_s16(v182, v160);
      v184 = vmulq_s32(vaddq_s32(vsubl_u16(*v1718.val[0].i8, *v1718.val[2].i8), v159), v181);
      v185 = vmulq_s32(vaddq_s32(vsubl_high_u16(v1718.val[0], v1718.val[2]), v159), v180);
      v186 = vuzp1q_s16(vmlaq_s32(v184, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v184.i8, *v161.i8), 0x18uLL), vmull_high_u32(v184, v161), 0x18uLL), v162), vmlaq_s32(v185, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v185.i8, *v161.i8), 0x18uLL), vmull_high_u32(v185, v161), 0x18uLL), v162));
      v187 = vaddq_s16(v186, v160);
      v188 = vaddq_s16(v1718.val[1], v1718.val[3]);
      v189 = vaddq_s16(v188, v160);
      v190 = vmulq_s32(vaddq_s32(vsubl_u16(*v1718.val[1].i8, *v1718.val[3].i8), v159), v181);
      v1718.val[0] = vmulq_s32(vaddq_s32(vsubl_high_u16(v1718.val[1], v1718.val[3]), v159), v180);
      v191 = vuzp1q_s16(vmlaq_s32(v190, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v190.i8, *v161.i8), 0x18uLL), vmull_high_u32(v190, v161), 0x18uLL), v162), vmlaq_s32(v1718.val[0], vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1718.val[0].i8, *v161.i8), 0x18uLL), vmull_high_u32(v1718.val[0], v161), 0x18uLL), v162));
      v1718.val[0] = vaddq_s16(v191, v160);
      v1720.val[1] = vorrq_s8(vandq_s8(vcltzq_s16(v189), v188), vmaxq_s16(v189, v163));
      v1720.val[0] = vorrq_s8(vandq_s8(vcltzq_s16(v183), v182), vmaxq_s16(v183, v163));
      v1720.val[3] = vorrq_s8(vandq_s8(vcltzq_s16(v1718.val[0]), v191), vmaxq_s16(v1718.val[0], v163));
      v1720.val[2] = vorrq_s8(vandq_s8(vcltzq_s16(v187), v186), vmaxq_s16(v187, v163));
      vst4q_s16(v178, v1720);
      v178 += 32;
      v176 += 16;
    }

    while (v176 != 128);
    v192 = 0;
    v193 = &xmmword_273BB637A;
    v194 = v161;
    do
    {
      v195 = &v175[v192];
      v1707 = *&v175[v192 + 48];
      v1711 = *&v175[v192 + 32];
      v1709 = *&v175[v192 + 16];
      v196 = vqtbl2q_s8(v1711, xmmword_273BA7010);
      v1713 = *&v175[v192];
      v197 = v174;
      v198.i32[0] = vzip1q_s16(v1713.val[0], v1713.val[1]).u32[0];
      v196.i32[3] = vqtbl2q_s8(v1707, v164).i32[3];
      v198.i32[1] = vqtbl2q_s8(v1709, xmmword_273BA7020).i32[1];
      v199.i32[0] = vtrn2q_s16(v1713.val[0], v1713.val[1]).u32[0];
      v199.i32[1] = vzip1q_s16(*&v1709, *(&v1709 + 16)).i32[1];
      v200 = vqtbl2q_s8(v1711, v166);
      v201 = vzip1q_s16(v1711.val[0], v1711.val[1]);
      v200.i32[3] = vqtbl2q_s8(v1707, v165).i32[3];
      LOWORD(v202) = WORD2(*&v175[v192 + 16]);
      HIWORD(v202) = WORD2(*&v175[v192 + 24]);
      v203.i32[0] = vqtbl2q_s8(v1713, v168).u32[0];
      v201.i32[3] = vqtbl2q_s8(v1707, v167).i32[3];
      v204 = vqtbl2q_s8(v1711, v169);
      LODWORD(v205) = vqtbl2q_s8(v1713, xmmword_273BA7080).u32[0];
      v204.i32[3] = vzip1q_s16(*&v1707, *(&v1707 + 16)).i32[3];
      LOWORD(v206) = *&v175[v192 + 36];
      WORD1(v206) = *&v175[v192 + 44];
      HIDWORD(v205) = vtrn2q_s16(*&v1709, *(&v1709 + 16)).i32[1];
      v207.i64[0] = v205;
      v208.i32[0] = vzip2q_s16(v1713.val[0], v1713.val[1]).u32[0];
      v209 = *v193++;
      v210 = vtrn2q_s16(v1711.val[0], v1711.val[1]);
      v211.i32[0] = v208.i32[0];
      v210.i32[3] = vqtbl2q_s8(v1707, v172).i32[3];
      v211.i32[1] = vqtbl2q_s8(v1709, v171).i32[1];
      v212.i32[0] = vqtbl2q_s8(v1713, v173).u32[0];
      v213.i32[0] = v212.i32[0];
      v213.i32[1] = vzip2q_s16(*&v1709, *(&v1709 + 16)).i32[1];
      v203.i32[1] = v202;
      LOWORD(v214) = v1707.val[0].i16[6];
      HIWORD(v214) = v1707.val[1].i16[6];
      v215 = vzip2q_s16(v1711.val[0], v1711.val[1]);
      HIDWORD(v206) = vqtbl2q_s8(v1707, v170).i32[3];
      v216 = __PAIR64__(v214, v215.u32[2]);
      v217 = vqtbl2q_s8(v1711, v197);
      v198.i64[1] = v196.i64[1];
      v218 = vzip2q_s16(v1707.val[0], v1707.val[1]);
      v217.i32[3] = v218.i32[3];
      v219 = vqtbl2q_s8(v1709, xmmword_273BA7100);
      v199.i64[1] = v200.i64[1];
      v196.i64[0] = __PAIR64__(v219.u32[1], vqtbl2q_s8(v1713, xmmword_273BA7110).u32[0]);
      v1598 = v196.i32[0];
      v207.i64[1] = v204.i64[1];
      v215.i32[1] = vqtbl2q_s8(v1707, xmmword_273BA70A0).i32[1];
      v213.i64[1] = v210.i64[1];
      v208.i32[1] = v211.i32[1];
      *v200.i8 = vzip1_s16(*v1707.val[0].i8, *v1707.val[1].i8);
      v196.i64[1] = v217.i64[1];
      v1594 = v196;
      v217.i32[0] = vzip1_s16(*v1711.val[0].i8, *v1711.val[1].i8).u32[0];
      v217.i32[1] = vext_s8(*&v1707, *&v200, 4uLL).i32[1];
      *v204.i8 = vzip1_s16(*v1709.val[0].i8, *v1709.val[1].i8);
      v203.i64[1] = v201.i64[1];
      v201.i32[0] = vzip1_s16(*v1713.val[0].i8, *v1713.val[1].i8).u32[0];
      v201.i32[1] = vext_s8(*&v1709, *&v204, 4uLL).i32[1];
      v220 = vmovl_high_u16(v209);
      v221 = vmovl_u16(*v209.i8);
      v222 = vsubl_u16(*v201.i8, *v208.i8);
      v201.i32[0] = vqtbl2q_s8(v1713, xmmword_273BA70E0).u32[0];
      v211.i64[1] = v206;
      v208.i32[0] = v201.i32[0];
      v208.i32[1] = vqtbl2q_s8(v1709, xmmword_273BA70D0).i32[1];
      v208.i64[1] = v216;
      v223 = vmulq_s32(vaddq_s32(v222, v1590), v221);
      v222.i32[0] = vqtbl2q_s8(v1711, xmmword_273BA70C0).u32[0];
      v222.i32[1] = v218.i32[1];
      v224 = vmulq_s32(vaddq_s32(vsubl_u16(*v217.i8, *v215.i8), v1590), v220);
      v212.i32[1] = v213.i32[1];
      v215.i32[0] = vtrn2_s16(*v1711.val[0].i8, *v1711.val[1].i8).u32[0];
      v215.i32[1] = v200.i32[1];
      v225.i32[0] = vtrn2_s16(*v1713.val[0].i8, *v1713.val[1].i8).u32[0];
      v225.i32[1] = v204.i32[1];
      v1592 = vaddq_s16(v199, v213);
      v226 = vmulq_s32(vaddq_s32(vsubl_u16(v225, v212), v1590), v221);
      v227 = vaddq_s16(v198, v211);
      v228 = vmulq_s32(vaddq_s32(vsubl_u16(*v215.i8, *v222.i8), v1590), v220);
      v204.i32[0] = vqtbl2q_s8(v1711, xmmword_273BA70E0).u32[0];
      v204.i32[1] = vqtbl2q_s8(v1707, xmmword_273BA70D0).i32[1];
      v201.i32[1] = v208.i32[1];
      v217.i16[2] = WORD2(*&v175[v192 + 48]);
      v217.i16[3] = WORD2(*&v175[v192 + 56]);
      v229.i64[0] = 0xF2000000F2;
      v229.i64[1] = 0xF2000000F2;
      v225.i32[0] = vzip2_s16(*v1711.val[0].i8, *v1711.val[1].i8).u32[0];
      v225.i32[1] = v217.i32[1];
      v217.i16[2] = WORD2(*&v175[v192 + 16]);
      v217.i16[3] = WORD2(*&v175[v192 + 24]);
      v215.i32[0] = vzip2_s16(*v1713.val[0].i8, *v1713.val[1].i8).u32[0];
      v215.i32[1] = v217.i32[1];
      v230 = vaddq_s16(v203, v208);
      v231 = vmulq_s32(vaddq_s32(vsubl_u16(*v215.i8, *v201.i8), v1590), v221);
      v232 = vmulq_s32(vaddq_s32(vsubl_u16(v225, *v204.i8), v1590), v220);
      v217.i32[0] = vuzp2_s16(vuzp2_s16(*v1713.val[0].i8, *v1713.val[1].i8), *v1713.val[0].i8).u32[0];
      v222.i32[0] = vuzp2_s16(vuzp2_s16(*v1711.val[0].i8, *v1711.val[1].i8), *v1711.val[0].i8).u32[0];
      v200.i32[0] = vqtbl2q_s8(v1711, xmmword_273BA7110).u32[0];
      v200.i32[1] = vqtbl2q_s8(v1707, xmmword_273BA7100).i32[1];
      v233 = vuzp1q_s16(vmlaq_s32(v226, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v226.i8, *v194.i8), 0x18uLL), vmull_high_u32(v226, v194), 0x18uLL), v229), vmlaq_s32(v228, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v228.i8, *v194.i8), 0x18uLL), vmull_high_u32(v228, v194), 0x18uLL), v229));
      v174 = xmmword_273BA70F0;
      v164 = xmmword_273BA7000;
      v169 = xmmword_273BA7070;
      v222.i32[1] = vzip2_s16(*&v1707, *(&v1707 + 16)).i32[1];
      v1711.val[0] = vuzp1q_s16(vmlaq_s32(v223, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v223.i8, *v194.i8), 0x18uLL), vmull_high_u32(v223, v194), 0x18uLL), v229), vmlaq_s32(v224, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v224.i8, *v194.i8), 0x18uLL), vmull_high_u32(v224, v194), 0x18uLL), v229));
      v226.i64[0] = 0xD000D000D000D00;
      v226.i64[1] = 0xD000D000D000D00;
      v1707.val[1] = vaddq_s16(v227, v226);
      v217.i32[1] = vzip2_s16(*&v1709, *(&v1709 + 16)).i32[1];
      v1707.val[0] = vaddq_s16(v1592, v226);
      v234 = vaddq_s16(v233, v226);
      v1709.val[0] = vaddq_s16(v207, v1594);
      v1709.val[1] = vaddq_s16(v230, v226);
      v1711.val[1] = vaddq_s16(v1709.val[0], v226);
      v235 = vmulq_s32(vaddq_s32(vsubl_u16(*v217.i8, __PAIR64__(v219.u32[1], v1598)), v1590), v221);
      v171 = xmmword_273BA70A0;
      v236 = vmulq_s32(vaddq_s32(vsubl_u16(*v222.i8, *v200.i8), v1590), v220);
      v166 = xmmword_273BA7040;
      v237 = vuzp1q_s16(vmlaq_s32(v231, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v231.i8, *v194.i8), 0x18uLL), vmull_high_u32(v231, v194), 0x18uLL), v229), vmlaq_s32(v232, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v232.i8, *v194.i8), 0x18uLL), vmull_high_u32(v232, v194), 0x18uLL), v229));
      v1713.val[1] = vaddq_s16(v1711.val[0], v226);
      v238 = vaddq_s16(v237, v226);
      v239 = vuzp1q_s16(vmlaq_s32(v235, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v235.i8, *v194.i8), 0x18uLL), vmull_high_u32(v235, v194), 0x18uLL), v229), vmlaq_s32(v236, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v236.i8, *v194.i8), 0x18uLL), vmull_high_u32(v236, v194), 0x18uLL), v229));
      v240 = vaddq_s16(v239, v226);
      v167 = xmmword_273BA7050;
      v241 = vandq_s8(vcltzq_s16(v1711.val[1]), v1709.val[0]);
      v242 = vandq_s8(vcltzq_s16(v1709.val[1]), v230);
      v165 = xmmword_273BA7030;
      v173 = xmmword_273BA70C0;
      v168 = xmmword_273BA7060;
      v170 = xmmword_273BA7090;
      v163 = 0uLL;
      v1713.val[0] = vmaxq_s16(v1709.val[1], 0);
      v1709.val[1] = vmaxq_s16(v1711.val[1], 0);
      v243 = vandq_s8(vcltzq_s16(v1707.val[1]), v227);
      v172 = xmmword_273BA70B0;
      v1711.val[1] = vmaxq_s16(v1707.val[1], 0);
      v1707.val[1] = vorrq_s8(vandq_s8(vcltzq_s16(v1707.val[0]), v1592), vmaxq_s16(v1707.val[0], 0));
      v1707.val[0] = vorrq_s8(v243, v1711.val[1]);
      v1709.val[1] = vorrq_s8(v241, v1709.val[1]);
      v244 = vandq_s8(vcltzq_s16(v1713.val[1]), v1711.val[0]);
      v245 = vmaxq_s16(v1713.val[1], 0);
      v1709.val[0] = vorrq_s8(v242, v1713.val[0]);
      v246 = vorrq_s8(vandq_s8(vcltzq_s16(v240), v239), vmaxq_s16(v240, 0));
      v1713.val[1] = vorrq_s8(vandq_s8(vcltzq_s16(v238), v237), vmaxq_s16(v238, 0));
      v1696.val[1] = vorrq_s8(vandq_s8(vcltzq_s16(v234), v233), vmaxq_s16(v234, 0));
      v1696.val[0] = vorrq_s8(v244, v245);
      v247 = vqtbl2q_s8(v1696, xmmword_273BA7040);
      v1711.val[0].i32[0] = vtrn2q_s16(v1707.val[0], v1707.val[1]).u32[0];
      v1711.val[0].i32[1] = vzip1q_s16(*&v1709, *(&v1709 + 16)).i32[1];
      v239.i16[2] = v1709.val[0].i16[2];
      v1711.val[1] = vqtbl2q_s8(v1696, xmmword_273BA7010);
      v1713.val[0].i32[0] = vzip1q_s16(v1707.val[0], v1707.val[1]).u32[0];
      v1713.val[0].i32[1] = vqtbl2q_s8(v1709, xmmword_273BA7020).i32[1];
      v247.i32[3] = vqtbl2q_s8(*(&v1713 + 16), xmmword_273BA7030).i32[3];
      v248 = vzip1q_s16(v1696.val[0], v1696.val[1]);
      v239.i16[3] = v1709.val[1].i16[2];
      v1711.val[1].i32[3] = vqtbl2q_s8(*(&v1713 + 16), xmmword_273BA7000).i32[3];
      v219.i32[0] = vqtbl2q_s8(v1707, xmmword_273BA7060).u32[0];
      v219.i32[1] = v239.i32[1];
      v248.i32[3] = vqtbl2q_s8(*(&v1713 + 16), xmmword_273BA7050).i32[3];
      v249 = vtrn2q_s16(v1696.val[0], v1696.val[1]);
      v250 = vqtbl2q_s8(*(&v1713 + 16), xmmword_273BA7090);
      v251 = vzip1q_s16(v1713.val[1], v246);
      v249.i32[3] = vqtbl2q_s8(*(&v1713 + 16), xmmword_273BA70B0).i32[3];
      v252 = vzip2q_s16(v1713.val[1], v246);
      v253 = vzip2q_s16(v1696.val[0], v1696.val[1]);
      v1713.val[1].i16[7] = v246.i16[6];
      v253.i32[3] = v1713.val[1].i32[3];
      v246.i32[0] = vqtbl2q_s8(v1707, xmmword_273BA70C0).u32[0];
      v246.i32[1] = vzip2q_s16(*&v1709, *(&v1709 + 16)).i32[1];
      v1713.val[1].i16[4] = v1696.val[0].i16[4];
      v1713.val[1].i16[5] = v1696.val[1].i16[4];
      v1713.val[1].i32[3] = v250.i32[3];
      v1711.val[0].i64[1] = v247.i64[1];
      v250.i32[0] = vzip2q_s16(v1707.val[0], v1707.val[1]).u32[0];
      v250.i32[1] = vqtbl2q_s8(v1709, xmmword_273BA70A0).i32[1];
      v219.i64[1] = v248.i64[1];
      v254 = vqtbl2q_s8(v1696, xmmword_273BA7070);
      v254.i32[3] = v251.i32[3];
      v246.i64[1] = v249.i64[1];
      v251.i32[0] = vqtbl2q_s8(v1707, xmmword_273BA7080).u32[0];
      v251.i32[1] = vtrn2q_s16(*&v1709, *(&v1709 + 16)).i32[1];
      v251.i64[1] = v254.i64[1];
      v255 = vqtbl2q_s8(v1696, xmmword_273BA70F0);
      v255.i32[3] = v252.i32[3];
      v250.i64[1] = v1713.val[1].i64[1];
      v252.i32[0] = vqtbl2q_s8(v1707, xmmword_273BA7110).u32[0];
      v252.i32[1] = vqtbl2q_s8(v1709, xmmword_273BA7100).i32[1];
      v195[2] = v219;
      v195[3] = v251;
      v252.i64[1] = v255.i64[1];
      v254.i32[0] = vqtbl2q_s8(v1707, xmmword_273BA70E0).u32[0];
      v195[4] = v250;
      v195[5] = v246;
      v254.i32[1] = vqtbl2q_s8(v1709, xmmword_273BA70D0).i32[1];
      v254.i64[1] = v253.i64[1];
      v195[6] = v254;
      v195[7] = v252;
      v1713.val[0].i64[1] = v1711.val[1].i64[1];
      *v195 = v1713.val[0];
      v195[1] = v1711.val[0];
      v192 += 64;
    }

    while (v192 != 256);
    v256 = 0;
    v159 = v1590;
    v160.i64[0] = 0xD000D000D000D00;
    v160.i64[1] = 0xD000D000D000D00;
    v161 = v194;
    v162.i64[0] = 0xF2000000F2;
    v162.i64[1] = 0xF2000000F2;
    do
    {
      v257 = &v175[8 * v256];
      v258 = v257[1];
      v259 = vaddq_s16(*v257, v258);
      v260 = vaddq_s16(v259, v160);
      v261 = vdupq_n_s32(*(&kInverseNTTRoots + v256 + 32));
      v262 = vmulq_s32(vaddq_s32(vsubl_u16(*v257->i8, *v258.i8), v1590), v261);
      v263 = vmulq_s32(vaddq_s32(vsubl_high_u16(*v257, v258), v1590), v261);
      v264 = vuzp1q_s16(vmlaq_s32(v262, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v262.i8, *v161.i8), 0x18uLL), vmull_high_u32(v262, v161), 0x18uLL), v162), vmlaq_s32(v263, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v263.i8, *v161.i8), 0x18uLL), vmull_high_u32(v263, v161), 0x18uLL), v162));
      v265 = vaddq_s16(v264, v160);
      *v257 = vorrq_s8(vandq_s8(vcltzq_s16(v260), v259), vmaxq_s16(v260, 0));
      v257[1] = vorrq_s8(vandq_s8(vcltzq_s16(v265), v264), vmaxq_s16(v265, 0));
      v256 += 2;
    }

    while (v256 != 32);
    v266 = 0;
    v267 = v177[2];
    v268 = v177[3];
    v269 = v177[1];
    v270 = vaddq_s16(*v177, v267);
    v271 = vaddq_s16(v270, v160);
    v272 = vorrq_s8(vandq_s8(vcltzq_s16(v271), v270), vmaxq_s16(v271, 0));
    v273 = vdupq_n_s16(0x62Fu);
    v274 = vmlsl_high_u16(vmull_high_u16(*v177, v273), v267, v273);
    v275 = vmlsl_u16(vmull_u16(*v177->i8, *v273.i8), *v267.i8, *v273.i8);
    v276 = vdupq_n_s32(0x50692Fu);
    v277 = vaddq_s32(v275, v276);
    v278 = vaddq_s32(v274, v276);
    v279 = vuzp1q_s16(vmlaq_s32(v277, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v277.i8, *v161.i8), 0x18uLL), vmull_high_u32(v277, v161), 0x18uLL), v162), vmlaq_s32(v278, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v278.i8, *v161.i8), 0x18uLL), vmull_high_u32(v278, v161), 0x18uLL), v162));
    v280 = vaddq_s16(v279, v160);
    v281 = vorrq_s8(vandq_s8(vcltzq_s16(v280), v279), vmaxq_s16(v280, 0));
    v282 = vaddq_s16(v269, v268);
    v283 = vaddq_s16(v282, v160);
    *v177 = v272;
    v177[1] = vorrq_s8(vandq_s8(vcltzq_s16(v283), v282), vmaxq_s16(v283, 0));
    v284 = vmlsl_high_u16(vmull_high_u16(v269, v273), v268, v273);
    v285 = vaddq_s32(vmlsl_u16(vmull_u16(*v269.i8, *v273.i8), *v268.i8, *v273.i8), v276);
    v286 = vaddq_s32(v284, v276);
    v287 = vuzp1q_s16(vmlaq_s32(v285, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v285.i8, *v161.i8), 0x18uLL), vmull_high_u32(v285, v161), 0x18uLL), v162), vmlaq_s32(v286, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v286.i8, *v161.i8), 0x18uLL), vmull_high_u32(v286, v161), 0x18uLL), v162));
    v288 = vaddq_s16(v287, v160);
    v177[2] = v281;
    v177[3] = vorrq_s8(vandq_s8(vcltzq_s16(v288), v287), vmaxq_s16(v288, 0));
    v289 = v177[6];
    v290 = v177[7];
    v291 = v177[4];
    v292 = v177[5];
    v293 = vaddq_s16(v291, v289);
    v294 = vaddq_s16(v293, v160);
    v295 = vorrq_s8(vandq_s8(vcltzq_s16(v294), v293), vmaxq_s16(v294, 0));
    v296 = vdupq_n_s16(0xAC8u);
    v297 = vmlsl_high_u16(vmull_high_u16(v291, v296), v289, v296);
    v298 = vmlsl_u16(vmull_u16(*v291.i8, *v296.i8), *v289.i8, *v296.i8);
    v299 = vdupq_n_s32(0x8C32C8u);
    v300 = vaddq_s32(v298, v299);
    v301 = vaddq_s32(v297, v299);
    v302 = vuzp1q_s16(vmlaq_s32(v300, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v300.i8, *v161.i8), 0x18uLL), vmull_high_u32(v300, v161), 0x18uLL), v162), vmlaq_s32(v301, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v301.i8, *v161.i8), 0x18uLL), vmull_high_u32(v301, v161), 0x18uLL), v162));
    v303 = vaddq_s16(v302, v160);
    v304 = vorrq_s8(vandq_s8(vcltzq_s16(v303), v302), vmaxq_s16(v303, 0));
    v305 = vaddq_s16(v292, v290);
    v306 = vaddq_s16(v305, v160);
    v177[4] = v295;
    v177[5] = vorrq_s8(vandq_s8(vcltzq_s16(v306), v305), vmaxq_s16(v306, 0));
    v307 = vmlsl_high_u16(vmull_high_u16(v292, v296), v290, v296);
    v308 = vaddq_s32(vmlsl_u16(vmull_u16(*v292.i8, *v296.i8), *v290.i8, *v296.i8), v299);
    v309 = vaddq_s32(v307, v299);
    v310 = vuzp1q_s16(vmlaq_s32(v308, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v308.i8, *v161.i8), 0x18uLL), vmull_high_u32(v308, v161), 0x18uLL), v162), vmlaq_s32(v309, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v309.i8, *v161.i8), 0x18uLL), vmull_high_u32(v309, v161), 0x18uLL), v162));
    v311 = vaddq_s16(v310, v160);
    v177[6] = v304;
    v177[7] = vorrq_s8(vandq_s8(vcltzq_s16(v311), v310), vmaxq_s16(v311, 0));
    v312 = v177[10];
    v313 = v177[11];
    v314 = v177[8];
    v315 = v177[9];
    v316 = vaddq_s16(v314, v312);
    v317 = vaddq_s16(v316, v160);
    v318 = vorrq_s8(vandq_s8(vcltzq_s16(v317), v316), vmaxq_s16(v317, 0));
    v319.i64[0] = 0x45004500450045;
    v319.i64[1] = 0x45004500450045;
    v320 = vmlsl_high_u16(vmull_high_u16(v314, v319), v312, v319);
    v321 = vmlsl_u16(vmull_u16(*v314.i8, 0x45004500450045), *v312.i8, 0x45004500450045);
    v322 = vdupq_n_s32(0x38145u);
    v323 = vaddq_s32(v321, v322);
    v324 = vaddq_s32(v320, v322);
    v325 = vuzp1q_s16(vmlaq_s32(v323, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v323.i8, *v161.i8), 0x18uLL), vmull_high_u32(v323, v161), 0x18uLL), v162), vmlaq_s32(v324, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v324.i8, *v161.i8), 0x18uLL), vmull_high_u32(v324, v161), 0x18uLL), v162));
    v326 = vaddq_s16(v325, v160);
    v327 = vorrq_s8(vandq_s8(vcltzq_s16(v326), v325), vmaxq_s16(v326, 0));
    v328 = vaddq_s16(v315, v313);
    v329 = vaddq_s16(v328, v160);
    v177[8] = v318;
    v177[9] = vorrq_s8(vandq_s8(vcltzq_s16(v329), v328), vmaxq_s16(v329, 0));
    v330 = vmlsl_high_u16(vmull_high_u16(v315, v319), v313, v319);
    v331 = vaddq_s32(vmlsl_u16(vmull_u16(*v315.i8, 0x45004500450045), *v313.i8, 0x45004500450045), v322);
    v332 = vaddq_s32(v330, v322);
    v333 = vuzp1q_s16(vmlaq_s32(v331, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v331.i8, *v161.i8), 0x18uLL), vmull_high_u32(v331, v161), 0x18uLL), v162), vmlaq_s32(v332, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v332.i8, *v161.i8), 0x18uLL), vmull_high_u32(v332, v161), 0x18uLL), v162));
    v334 = vaddq_s16(v333, v160);
    v177[10] = v327;
    v177[11] = vorrq_s8(vandq_s8(vcltzq_s16(v334), v333), vmaxq_s16(v334, 0));
    v335 = v177[14];
    v336 = v177[15];
    v337 = v177[12];
    v338 = v177[13];
    v339 = vaddq_s16(v337, v335);
    v340 = vaddq_s16(v339, v160);
    v341 = vorrq_s8(vandq_s8(vcltzq_s16(v340), v339), vmaxq_s16(v340, 0));
    v342 = vdupq_n_s16(0x21Fu);
    v343 = vmlsl_high_u16(vmull_high_u16(v337, v342), v335, v342);
    v344 = vmlsl_u16(vmull_u16(*v337.i8, *v342.i8), *v335.i8, *v342.i8);
    v345 = vdupq_n_s32(0x1B951Fu);
    v346 = vaddq_s32(v344, v345);
    v347 = vaddq_s32(v343, v345);
    v348 = vuzp1q_s16(vmlaq_s32(v346, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v346.i8, *v161.i8), 0x18uLL), vmull_high_u32(v346, v161), 0x18uLL), v162), vmlaq_s32(v347, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v347.i8, *v161.i8), 0x18uLL), vmull_high_u32(v347, v161), 0x18uLL), v162));
    v349 = vaddq_s16(v348, v160);
    v350 = vorrq_s8(vandq_s8(vcltzq_s16(v349), v348), vmaxq_s16(v349, 0));
    v351 = vaddq_s16(v338, v336);
    v352 = vaddq_s16(v351, v160);
    v177[12] = v341;
    v177[13] = vorrq_s8(vandq_s8(vcltzq_s16(v352), v351), vmaxq_s16(v352, 0));
    v353 = vmlsl_high_u16(vmull_high_u16(v338, v342), v336, v342);
    v354 = vaddq_s32(vmlsl_u16(vmull_u16(*v338.i8, *v342.i8), *v336.i8, *v342.i8), v345);
    v355 = vaddq_s32(v353, v345);
    v356 = vuzp1q_s16(vmlaq_s32(v354, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v354.i8, *v161.i8), 0x18uLL), vmull_high_u32(v354, v161), 0x18uLL), v162), vmlaq_s32(v355, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v355.i8, *v161.i8), 0x18uLL), vmull_high_u32(v355, v161), 0x18uLL), v162));
    v357 = vaddq_s16(v356, v160);
    v177[14] = v350;
    v177[15] = vorrq_s8(vandq_s8(vcltzq_s16(v357), v356), vmaxq_s16(v357, 0));
    v358 = v177[18];
    v359 = v177[19];
    v360 = v177[16];
    v361 = v177[17];
    v362 = vaddq_s16(v360, v358);
    v363 = vaddq_s16(v362, v160);
    v364 = vorrq_s8(vandq_s8(vcltzq_s16(v363), v362), vmaxq_s16(v363, 0));
    v365 = vdupq_n_s16(0x9E4u);
    v366 = vmlsl_high_u16(vmull_high_u16(v360, v365), v358, v365);
    v367 = vmlsl_u16(vmull_u16(*v360.i8, *v365.i8), *v358.i8, *v365.i8);
    v368 = vdupq_n_s32(0x809DE4u);
    v369 = vaddq_s32(v367, v368);
    v370 = vaddq_s32(v366, v368);
    v371 = vuzp1q_s16(vmlaq_s32(v369, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v369.i8, *v161.i8), 0x18uLL), vmull_high_u32(v369, v161), 0x18uLL), v162), vmlaq_s32(v370, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v370.i8, *v161.i8), 0x18uLL), vmull_high_u32(v370, v161), 0x18uLL), v162));
    v372 = vaddq_s16(v371, v160);
    v373 = vorrq_s8(vandq_s8(vcltzq_s16(v372), v371), vmaxq_s16(v372, 0));
    v374 = vaddq_s16(v361, v359);
    v375 = vaddq_s16(v374, v160);
    v177[16] = v364;
    v177[17] = vorrq_s8(vandq_s8(vcltzq_s16(v375), v374), vmaxq_s16(v375, 0));
    v376 = vmlsl_high_u16(vmull_high_u16(v361, v365), v359, v365);
    v377 = vaddq_s32(vmlsl_u16(vmull_u16(*v361.i8, *v365.i8), *v359.i8, *v365.i8), v368);
    v378 = vaddq_s32(v376, v368);
    v379 = vuzp1q_s16(vmlaq_s32(v377, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v377.i8, *v161.i8), 0x18uLL), vmull_high_u32(v377, v161), 0x18uLL), v162), vmlaq_s32(v378, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v378.i8, *v161.i8), 0x18uLL), vmull_high_u32(v378, v161), 0x18uLL), v162));
    v380 = vaddq_s16(v379, v160);
    v177[18] = v373;
    v177[19] = vorrq_s8(vandq_s8(vcltzq_s16(v380), v379), vmaxq_s16(v380, 0));
    v381 = v177[22];
    v382 = v177[23];
    v383 = v177[20];
    v384 = v177[21];
    v385 = vaddq_s16(v383, v381);
    v386 = vaddq_s16(v385, v160);
    v387 = vorrq_s8(vandq_s8(vcltzq_s16(v386), v385), vmaxq_s16(v386, 0));
    v388 = vdupq_n_s16(0xC40u);
    v389 = vmlsl_high_u16(vmull_high_u16(v383, v388), v381, v388);
    v390 = vmlsl_u16(vmull_u16(*v383.i8, *v388.i8), *v381.i8, *v388.i8);
    v391 = vdupq_n_s32(0x9F4C40u);
    v392 = vaddq_s32(v390, v391);
    v393 = vaddq_s32(v389, v391);
    v394 = vuzp1q_s16(vmlaq_s32(v392, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v392.i8, *v161.i8), 0x18uLL), vmull_high_u32(v392, v161), 0x18uLL), v162), vmlaq_s32(v393, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v393.i8, *v161.i8), 0x18uLL), vmull_high_u32(v393, v161), 0x18uLL), v162));
    v395 = vaddq_s16(v394, v160);
    v396 = vorrq_s8(vandq_s8(vcltzq_s16(v395), v394), vmaxq_s16(v395, 0));
    v397 = vaddq_s16(v384, v382);
    v398 = vaddq_s16(v397, v160);
    v177[20] = v387;
    v177[21] = vorrq_s8(vandq_s8(vcltzq_s16(v398), v397), vmaxq_s16(v398, 0));
    v399 = vmlsl_high_u16(vmull_high_u16(v384, v388), v382, v388);
    v400 = vaddq_s32(vmlsl_u16(vmull_u16(*v384.i8, *v388.i8), *v382.i8, *v388.i8), v391);
    v401 = vaddq_s32(v399, v391);
    v402 = vuzp1q_s16(vmlaq_s32(v400, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v400.i8, *v161.i8), 0x18uLL), vmull_high_u32(v400, v161), 0x18uLL), v162), vmlaq_s32(v401, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v401.i8, *v161.i8), 0x18uLL), vmull_high_u32(v401, v161), 0x18uLL), v162));
    v403 = vaddq_s16(v402, v160);
    v177[22] = v396;
    v177[23] = vorrq_s8(vandq_s8(vcltzq_s16(v403), v402), vmaxq_s16(v403, 0));
    v404 = v177[26];
    v405 = v177[27];
    v406 = v177[24];
    v407 = v177[25];
    v408 = vaddq_s16(v406, v404);
    v409 = vaddq_s16(v408, v160);
    v410 = vorrq_s8(vandq_s8(vcltzq_s16(v409), v408), vmaxq_s16(v409, 0));
    v411 = vdupq_n_s16(0x582u);
    v412 = vmlsl_high_u16(vmull_high_u16(v406, v411), v404, v411);
    v413 = vmlsl_u16(vmull_u16(*v406.i8, *v411.i8), *v404.i8, *v411.i8);
    v414 = vdupq_n_s32(0x479F82u);
    v415 = vaddq_s32(v413, v414);
    v416 = vaddq_s32(v412, v414);
    v417 = vuzp1q_s16(vmlaq_s32(v415, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v415.i8, *v161.i8), 0x18uLL), vmull_high_u32(v415, v161), 0x18uLL), v162), vmlaq_s32(v416, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v416.i8, *v161.i8), 0x18uLL), vmull_high_u32(v416, v161), 0x18uLL), v162));
    v418 = vaddq_s16(v417, v160);
    v419 = vorrq_s8(vandq_s8(vcltzq_s16(v418), v417), vmaxq_s16(v418, 0));
    v420 = vaddq_s16(v407, v405);
    v421 = vaddq_s16(v420, v160);
    v177[24] = v410;
    v177[25] = vorrq_s8(vandq_s8(vcltzq_s16(v421), v420), vmaxq_s16(v421, 0));
    v422 = vmlsl_high_u16(vmull_high_u16(v407, v411), v405, v411);
    v423 = vaddq_s32(vmlsl_u16(vmull_u16(*v407.i8, *v411.i8), *v405.i8, *v411.i8), v414);
    v424 = vaddq_s32(v422, v414);
    v425 = vuzp1q_s16(vmlaq_s32(v423, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v423.i8, *v161.i8), 0x18uLL), vmull_high_u32(v423, v161), 0x18uLL), v162), vmlaq_s32(v424, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v424.i8, *v161.i8), 0x18uLL), vmull_high_u32(v424, v161), 0x18uLL), v162));
    v426 = vaddq_s16(v425, v160);
    v177[26] = v419;
    v177[27] = vorrq_s8(vandq_s8(vcltzq_s16(v426), v425), vmaxq_s16(v426, 0));
    v427 = v177[30];
    v428 = v177[31];
    v429 = v177[28];
    v430 = v177[29];
    v431 = vaddq_s16(v429, v427);
    v432 = vaddq_s16(v431, v160);
    v433 = vorrq_s8(vandq_s8(vcltzq_s16(v432), v431), vmaxq_s16(v432, 0));
    v434 = vdupq_n_s16(0x8DBu);
    v435 = vmlsl_high_u16(vmull_high_u16(v429, v434), v427, v434);
    v436 = vmlsl_u16(vmull_u16(*v429.i8, *v434.i8), *v427.i8, *v434.i8);
    v437 = vdupq_n_s32(0x7327DBu);
    v438 = vaddq_s32(v436, v437);
    v439 = vaddq_s32(v435, v437);
    v440 = vuzp1q_s16(vmlaq_s32(v438, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v438.i8, *v161.i8), 0x18uLL), vmull_high_u32(v438, v161), 0x18uLL), v162), vmlaq_s32(v439, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v439.i8, *v161.i8), 0x18uLL), vmull_high_u32(v439, v161), 0x18uLL), v162));
    v441 = vaddq_s16(v440, v160);
    v442 = vorrq_s8(vandq_s8(vcltzq_s16(v441), v440), vmaxq_s16(v441, 0));
    v443 = vaddq_s16(v430, v428);
    v444 = vaddq_s16(v443, v160);
    v177[28] = v433;
    v177[29] = vorrq_s8(vandq_s8(vcltzq_s16(v444), v443), vmaxq_s16(v444, 0));
    v445 = vmlsl_high_u16(vmull_high_u16(v430, v434), v428, v434);
    v446 = vaddq_s32(vmlsl_u16(vmull_u16(*v430.i8, *v434.i8), *v428.i8, *v434.i8), v437);
    v447 = vaddq_s32(v445, v437);
    v448 = vuzp1q_s16(vmlaq_s32(v446, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v446.i8, *v161.i8), 0x18uLL), vmull_high_u32(v446, v161), 0x18uLL), v162), vmlaq_s32(v447, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v447.i8, *v161.i8), 0x18uLL), vmull_high_u32(v447, v161), 0x18uLL), v162));
    v449 = vaddq_s16(v448, v160);
    v177[30] = v442;
    v177[31] = vorrq_s8(vandq_s8(vcltzq_s16(v449), v448), vmaxq_s16(v449, 0));
    v450 = v177[4];
    v451 = v177[5];
    v452 = v177[1];
    v453 = vaddq_s16(*v177, v450);
    v454 = vaddq_s16(v453, v160);
    v455 = vorrq_s8(vandq_s8(vcltzq_s16(v454), v453), vmaxq_s16(v454, 0));
    v456 = vdupq_n_s16(0x9B1u);
    v457 = vmlsl_high_u16(vmull_high_u16(*v177, v456), v450, v456);
    v458 = vdupq_n_s32(0x7E06B1u);
    v459 = vaddq_s32(vmlsl_u16(vmull_u16(*v177->i8, *v456.i8), *v450.i8, *v456.i8), v458);
    v460 = vaddq_s32(v457, v458);
    v461 = vuzp1q_s16(vmlaq_s32(v459, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v459.i8, *v161.i8), 0x18uLL), vmull_high_u32(v459, v161), 0x18uLL), v162), vmlaq_s32(v460, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v460.i8, *v161.i8), 0x18uLL), vmull_high_u32(v460, v161), 0x18uLL), v162));
    v462 = vaddq_s16(v461, v160);
    v463 = vorrq_s8(vandq_s8(vcltzq_s16(v462), v461), vmaxq_s16(v462, 0));
    v464 = vaddq_s16(v452, v451);
    v465 = vaddq_s16(v464, v160);
    *v177 = v455;
    v177[1] = vorrq_s8(vandq_s8(vcltzq_s16(v465), v464), vmaxq_s16(v465, 0));
    v466 = vmlsl_high_u16(vmull_high_u16(v452, v456), v451, v456);
    v467 = vaddq_s32(vmlsl_u16(vmull_u16(*v452.i8, *v456.i8), *v451.i8, *v456.i8), v458);
    v468 = vaddq_s32(v466, v458);
    v469 = vuzp1q_s16(vmlaq_s32(v467, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v467.i8, *v161.i8), 0x18uLL), vmull_high_u32(v467, v161), 0x18uLL), v162), vmlaq_s32(v468, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v468.i8, *v161.i8), 0x18uLL), vmull_high_u32(v468, v161), 0x18uLL), v162));
    v470 = vaddq_s16(v469, v160);
    v177[4] = v463;
    v177[5] = vorrq_s8(vandq_s8(vcltzq_s16(v470), v469), vmaxq_s16(v470, 0));
    v471 = v177[6];
    v472 = v177[7];
    v473 = v177[2];
    v474 = v177[3];
    v475 = vaddq_s16(v473, v471);
    v476 = vaddq_s16(v475, v160);
    v477 = vorrq_s8(vandq_s8(vcltzq_s16(v476), v475), vmaxq_s16(v476, 0));
    v478 = vmlsl_high_u16(vmull_high_u16(v473, v456), v471, v456);
    v479 = vaddq_s32(vmlsl_u16(vmull_u16(*v473.i8, *v456.i8), *v471.i8, *v456.i8), v458);
    v480 = vaddq_s32(v478, v458);
    v481 = vuzp1q_s16(vmlaq_s32(v479, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v479.i8, *v161.i8), 0x18uLL), vmull_high_u32(v479, v161), 0x18uLL), v162), vmlaq_s32(v480, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v480.i8, *v161.i8), 0x18uLL), vmull_high_u32(v480, v161), 0x18uLL), v162));
    v482 = vaddq_s16(v481, v160);
    v483 = vorrq_s8(vandq_s8(vcltzq_s16(v482), v481), vmaxq_s16(v482, 0));
    v484 = vaddq_s16(v474, v472);
    v485 = vaddq_s16(v484, v160);
    v177[2] = v477;
    v177[3] = vorrq_s8(vandq_s8(vcltzq_s16(v485), v484), vmaxq_s16(v485, 0));
    v486 = vmlsl_high_u16(vmull_high_u16(v474, v456), v472, v456);
    v487 = vaddq_s32(vmlsl_u16(vmull_u16(*v474.i8, *v456.i8), *v472.i8, *v456.i8), v458);
    v488 = vaddq_s32(v486, v458);
    v489 = vuzp1q_s16(vmlaq_s32(v487, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v487.i8, *v161.i8), 0x18uLL), vmull_high_u32(v487, v161), 0x18uLL), v162), vmlaq_s32(v488, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v488.i8, *v161.i8), 0x18uLL), vmull_high_u32(v488, v161), 0x18uLL), v162));
    v490 = vaddq_s16(v489, v160);
    v177[6] = v483;
    v177[7] = vorrq_s8(vandq_s8(vcltzq_s16(v490), v489), vmaxq_s16(v490, 0));
    v491 = v177[12];
    v492 = v177[13];
    v493 = v177[8];
    v494 = v177[9];
    v495 = vaddq_s16(v493, v491);
    v496 = vaddq_s16(v495, v160);
    v497 = vorrq_s8(vandq_s8(vcltzq_s16(v496), v495), vmaxq_s16(v496, 0));
    v498 = vdupq_n_s16(0x598u);
    v499 = vmlsl_high_u16(vmull_high_u16(v493, v498), v491, v498);
    v500 = vdupq_n_s32(0x48BD98u);
    v501 = vaddq_s32(vmlsl_u16(vmull_u16(*v493.i8, *v498.i8), *v491.i8, *v498.i8), v500);
    v502 = vaddq_s32(v499, v500);
    v503 = vuzp1q_s16(vmlaq_s32(v501, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v501.i8, *v161.i8), 0x18uLL), vmull_high_u32(v501, v161), 0x18uLL), v162), vmlaq_s32(v502, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v502.i8, *v161.i8), 0x18uLL), vmull_high_u32(v502, v161), 0x18uLL), v162));
    v504 = vaddq_s16(v503, v160);
    v505 = vorrq_s8(vandq_s8(vcltzq_s16(v504), v503), vmaxq_s16(v504, 0));
    v506 = vaddq_s16(v494, v492);
    v507 = vaddq_s16(v506, v160);
    v177[8] = v497;
    v177[9] = vorrq_s8(vandq_s8(vcltzq_s16(v507), v506), vmaxq_s16(v507, 0));
    v508 = vmlsl_high_u16(vmull_high_u16(v494, v498), v492, v498);
    v509 = vaddq_s32(vmlsl_u16(vmull_u16(*v494.i8, *v498.i8), *v492.i8, *v498.i8), v500);
    v510 = vaddq_s32(v508, v500);
    v511 = vuzp1q_s16(vmlaq_s32(v509, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v509.i8, *v161.i8), 0x18uLL), vmull_high_u32(v509, v161), 0x18uLL), v162), vmlaq_s32(v510, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v510.i8, *v161.i8), 0x18uLL), vmull_high_u32(v510, v161), 0x18uLL), v162));
    v512 = vaddq_s16(v511, v160);
    v177[12] = v505;
    v177[13] = vorrq_s8(vandq_s8(vcltzq_s16(v512), v511), vmaxq_s16(v512, 0));
    v513 = v177[14];
    v514 = v177[15];
    v515 = v177[10];
    v516 = v177[11];
    v517 = vaddq_s16(v515, v513);
    v518 = vaddq_s16(v517, v160);
    v519 = vorrq_s8(vandq_s8(vcltzq_s16(v518), v517), vmaxq_s16(v518, 0));
    v520 = vmlsl_high_u16(vmull_high_u16(v515, v498), v513, v498);
    v521 = vaddq_s32(vmlsl_u16(vmull_u16(*v515.i8, *v498.i8), *v513.i8, *v498.i8), v500);
    v522 = vaddq_s32(v520, v500);
    v523 = vuzp1q_s16(vmlaq_s32(v521, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v521.i8, *v161.i8), 0x18uLL), vmull_high_u32(v521, v161), 0x18uLL), v162), vmlaq_s32(v522, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v522.i8, *v161.i8), 0x18uLL), vmull_high_u32(v522, v161), 0x18uLL), v162));
    v524 = vaddq_s16(v523, v160);
    v525 = vorrq_s8(vandq_s8(vcltzq_s16(v524), v523), vmaxq_s16(v524, 0));
    v526 = vaddq_s16(v516, v514);
    v527 = vaddq_s16(v526, v160);
    v177[10] = v519;
    v177[11] = vorrq_s8(vandq_s8(vcltzq_s16(v527), v526), vmaxq_s16(v527, 0));
    v528 = vmlsl_high_u16(vmull_high_u16(v516, v498), v514, v498);
    v529 = vaddq_s32(vmlsl_u16(vmull_u16(*v516.i8, *v498.i8), *v514.i8, *v498.i8), v500);
    v530 = vaddq_s32(v528, v500);
    v531 = vuzp1q_s16(vmlaq_s32(v529, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v529.i8, *v161.i8), 0x18uLL), vmull_high_u32(v529, v161), 0x18uLL), v162), vmlaq_s32(v530, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v530.i8, *v161.i8), 0x18uLL), vmull_high_u32(v530, v161), 0x18uLL), v162));
    v532 = vaddq_s16(v531, v160);
    v177[14] = v525;
    v177[15] = vorrq_s8(vandq_s8(vcltzq_s16(v532), v531), vmaxq_s16(v532, 0));
    v533 = v177[20];
    v534 = v177[21];
    v535 = v177[16];
    v536 = v177[17];
    v537 = vaddq_s16(v535, v533);
    v538 = vaddq_s16(v537, v160);
    v539 = vorrq_s8(vandq_s8(vcltzq_s16(v538), v537), vmaxq_s16(v538, 0));
    v540 = vdupq_n_s16(0xA8Bu);
    v541 = vmlsl_high_u16(vmull_high_u16(v535, v540), v533, v540);
    v542 = vdupq_n_s32(0x89198Bu);
    v543 = vaddq_s32(vmlsl_u16(vmull_u16(*v535.i8, *v540.i8), *v533.i8, *v540.i8), v542);
    v544 = vaddq_s32(v541, v542);
    v545 = vuzp1q_s16(vmlaq_s32(v543, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v543.i8, *v161.i8), 0x18uLL), vmull_high_u32(v543, v161), 0x18uLL), v162), vmlaq_s32(v544, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v544.i8, *v161.i8), 0x18uLL), vmull_high_u32(v544, v161), 0x18uLL), v162));
    v546 = vaddq_s16(v545, v160);
    v547 = vorrq_s8(vandq_s8(vcltzq_s16(v546), v545), vmaxq_s16(v546, 0));
    v548 = vaddq_s16(v536, v534);
    v549 = vaddq_s16(v548, v160);
    v177[16] = v539;
    v177[17] = vorrq_s8(vandq_s8(vcltzq_s16(v549), v548), vmaxq_s16(v549, 0));
    v550 = vmlsl_high_u16(vmull_high_u16(v536, v540), v534, v540);
    v551 = vaddq_s32(vmlsl_u16(vmull_u16(*v536.i8, *v540.i8), *v534.i8, *v540.i8), v542);
    v552 = vaddq_s32(v550, v542);
    v553 = vuzp1q_s16(vmlaq_s32(v551, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v551.i8, *v161.i8), 0x18uLL), vmull_high_u32(v551, v161), 0x18uLL), v162), vmlaq_s32(v552, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v552.i8, *v161.i8), 0x18uLL), vmull_high_u32(v552, v161), 0x18uLL), v162));
    v554 = vaddq_s16(v553, v160);
    v177[20] = v547;
    v177[21] = vorrq_s8(vandq_s8(vcltzq_s16(v554), v553), vmaxq_s16(v554, 0));
    v555 = v177[22];
    v556 = v177[23];
    v557 = v177[18];
    v558 = v177[19];
    v559 = vaddq_s16(v557, v555);
    v560 = vaddq_s16(v559, v160);
    v561 = vorrq_s8(vandq_s8(vcltzq_s16(v560), v559), vmaxq_s16(v560, 0));
    v562 = vmlsl_high_u16(vmull_high_u16(v557, v540), v555, v540);
    v563 = vaddq_s32(vmlsl_u16(vmull_u16(*v557.i8, *v540.i8), *v555.i8, *v540.i8), v542);
    v564 = vaddq_s32(v562, v542);
    v565 = vuzp1q_s16(vmlaq_s32(v563, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v563.i8, *v161.i8), 0x18uLL), vmull_high_u32(v563, v161), 0x18uLL), v162), vmlaq_s32(v564, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v564.i8, *v161.i8), 0x18uLL), vmull_high_u32(v564, v161), 0x18uLL), v162));
    v566 = vaddq_s16(v565, v160);
    v567 = vorrq_s8(vandq_s8(vcltzq_s16(v566), v565), vmaxq_s16(v566, 0));
    v568 = vaddq_s16(v558, v556);
    v569 = vaddq_s16(v568, v160);
    v177[18] = v561;
    v177[19] = vorrq_s8(vandq_s8(vcltzq_s16(v569), v568), vmaxq_s16(v569, 0));
    v570 = vmlsl_high_u16(vmull_high_u16(v558, v540), v556, v540);
    v571 = vaddq_s32(vmlsl_u16(vmull_u16(*v558.i8, *v540.i8), *v556.i8, *v540.i8), v542);
    v572 = vaddq_s32(v570, v542);
    v573 = vuzp1q_s16(vmlaq_s32(v571, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v571.i8, *v161.i8), 0x18uLL), vmull_high_u32(v571, v161), 0x18uLL), v162), vmlaq_s32(v572, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v572.i8, *v161.i8), 0x18uLL), vmull_high_u32(v572, v161), 0x18uLL), v162));
    v574 = vaddq_s16(v573, v160);
    v177[22] = v567;
    v177[23] = vorrq_s8(vandq_s8(vcltzq_s16(v574), v573), vmaxq_s16(v574, 0));
    v575 = v177[28];
    v576 = v177[29];
    v577 = v177[24];
    v578 = v177[25];
    v579 = vaddq_s16(v577, v575);
    v580 = vaddq_s16(v579, v160);
    v581 = vorrq_s8(vandq_s8(vcltzq_s16(v580), v579), vmaxq_s16(v580, 0));
    v582 = vdupq_n_s16(0x2AFu);
    v583 = vmlsl_high_u16(vmull_high_u16(v577, v582), v575, v582);
    v584 = vdupq_n_s32(0x22E5AFu);
    v585 = vaddq_s32(vmlsl_u16(vmull_u16(*v577.i8, *v582.i8), *v575.i8, *v582.i8), v584);
    v586 = vaddq_s32(v583, v584);
    v587 = vuzp1q_s16(vmlaq_s32(v585, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v585.i8, *v161.i8), 0x18uLL), vmull_high_u32(v585, v161), 0x18uLL), v162), vmlaq_s32(v586, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v586.i8, *v161.i8), 0x18uLL), vmull_high_u32(v586, v161), 0x18uLL), v162));
    v588 = vaddq_s16(v587, v160);
    v589 = vorrq_s8(vandq_s8(vcltzq_s16(v588), v587), vmaxq_s16(v588, 0));
    v590 = vaddq_s16(v578, v576);
    v591 = vaddq_s16(v590, v160);
    v177[24] = v581;
    v177[25] = vorrq_s8(vandq_s8(vcltzq_s16(v591), v590), vmaxq_s16(v591, 0));
    v592 = vmlsl_high_u16(vmull_high_u16(v578, v582), v576, v582);
    v593 = vaddq_s32(vmlsl_u16(vmull_u16(*v578.i8, *v582.i8), *v576.i8, *v582.i8), v584);
    v594 = vaddq_s32(v592, v584);
    v595 = vuzp1q_s16(vmlaq_s32(v593, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v593.i8, *v161.i8), 0x18uLL), vmull_high_u32(v593, v161), 0x18uLL), v162), vmlaq_s32(v594, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v594.i8, *v161.i8), 0x18uLL), vmull_high_u32(v594, v161), 0x18uLL), v162));
    v596 = vaddq_s16(v595, v160);
    v177[28] = v589;
    v177[29] = vorrq_s8(vandq_s8(vcltzq_s16(v596), v595), vmaxq_s16(v596, 0));
    v597 = v177[30];
    v598 = v177[31];
    v599 = v177[26];
    v600 = v177[27];
    v601 = vaddq_s16(v599, v597);
    v602 = vaddq_s16(v601, v160);
    v603 = vorrq_s8(vandq_s8(vcltzq_s16(v602), v601), vmaxq_s16(v602, 0));
    v604 = vmlsl_high_u16(vmull_high_u16(v599, v582), v597, v582);
    v605 = vaddq_s32(vmlsl_u16(vmull_u16(*v599.i8, *v582.i8), *v597.i8, *v582.i8), v584);
    v606 = vaddq_s32(v604, v584);
    v607 = vuzp1q_s16(vmlaq_s32(v605, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v605.i8, *v161.i8), 0x18uLL), vmull_high_u32(v605, v161), 0x18uLL), v162), vmlaq_s32(v606, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v606.i8, *v161.i8), 0x18uLL), vmull_high_u32(v606, v161), 0x18uLL), v162));
    v608 = vaddq_s16(v607, v160);
    v609 = vorrq_s8(vandq_s8(vcltzq_s16(v608), v607), vmaxq_s16(v608, 0));
    v610 = vaddq_s16(v600, v598);
    v611 = vaddq_s16(v610, v160);
    v177[26] = v603;
    v177[27] = vorrq_s8(vandq_s8(vcltzq_s16(v611), v610), vmaxq_s16(v611, 0));
    v612 = vmlsl_high_u16(vmull_high_u16(v600, v582), v598, v582);
    v613 = vaddq_s32(vmlsl_u16(vmull_u16(*v600.i8, *v582.i8), *v598.i8, *v582.i8), v584);
    v614 = vaddq_s32(v612, v584);
    v615 = vuzp1q_s16(vmlaq_s32(v613, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v613.i8, *v161.i8), 0x18uLL), vmull_high_u32(v613, v161), 0x18uLL), v162), vmlaq_s32(v614, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v614.i8, *v161.i8), 0x18uLL), vmull_high_u32(v614, v161), 0x18uLL), v162));
    v616 = vaddq_s16(v615, v160);
    v177[30] = v609;
    v177[31] = vorrq_s8(vandq_s8(vcltzq_s16(v616), v615), vmaxq_s16(v616, 0));
    v617 = v177[8];
    v618 = v177[9];
    v619 = v177[1];
    v620 = vaddq_s16(*v177, v617);
    v621 = vaddq_s16(v620, v160);
    v622 = vorrq_s8(vandq_s8(vcltzq_s16(v621), v620), vmaxq_s16(v621, 0));
    v319.i64[0] = 0x28002800280028;
    v319.i64[1] = 0x28002800280028;
    v623 = vmlsl_high_u16(vmull_high_u16(*v177, v319), v617, v319);
    v624 = vdupq_n_s32(0x20828u);
    v625 = vaddq_s32(vmlsl_u16(vmull_u16(*v177->i8, 0x28002800280028), *v617.i8, 0x28002800280028), v624);
    v626 = vaddq_s32(v623, v624);
    v627 = vuzp1q_s16(vmlaq_s32(v625, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v625.i8, *v161.i8), 0x18uLL), vmull_high_u32(v625, v161), 0x18uLL), v162), vmlaq_s32(v626, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v626.i8, *v161.i8), 0x18uLL), vmull_high_u32(v626, v161), 0x18uLL), v162));
    v628 = vaddq_s16(v627, v160);
    v629 = vorrq_s8(vandq_s8(vcltzq_s16(v628), v627), vmaxq_s16(v628, 0));
    v630 = vaddq_s16(v619, v618);
    v631 = vaddq_s16(v630, v160);
    *v177 = v622;
    v177[1] = vorrq_s8(vandq_s8(vcltzq_s16(v631), v630), vmaxq_s16(v631, 0));
    v632 = vmlsl_high_u16(vmull_high_u16(v619, v319), v618, v319);
    v633 = vaddq_s32(vmlsl_u16(vmull_u16(*v619.i8, 0x28002800280028), *v618.i8, 0x28002800280028), v624);
    v634 = vaddq_s32(v632, v624);
    v635 = vuzp1q_s16(vmlaq_s32(v633, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v633.i8, *v161.i8), 0x18uLL), vmull_high_u32(v633, v161), 0x18uLL), v162), vmlaq_s32(v634, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v634.i8, *v161.i8), 0x18uLL), vmull_high_u32(v634, v161), 0x18uLL), v162));
    v636 = vaddq_s16(v635, v160);
    v177[8] = v629;
    v177[9] = vorrq_s8(vandq_s8(vcltzq_s16(v636), v635), vmaxq_s16(v636, 0));
    v637 = v177[10];
    v638 = v177[11];
    v639 = v177[2];
    v640 = v177[3];
    v641 = vaddq_s16(v639, v637);
    v642 = vaddq_s16(v641, v160);
    v643 = vorrq_s8(vandq_s8(vcltzq_s16(v642), v641), vmaxq_s16(v642, 0));
    v644 = vmlsl_high_u16(vmull_high_u16(v639, v319), v637, v319);
    v645 = vaddq_s32(vmlsl_u16(vmull_u16(*v639.i8, 0x28002800280028), *v637.i8, 0x28002800280028), v624);
    v646 = vaddq_s32(v644, v624);
    v647 = vuzp1q_s16(vmlaq_s32(v645, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v645.i8, *v161.i8), 0x18uLL), vmull_high_u32(v645, v161), 0x18uLL), v162), vmlaq_s32(v646, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v646.i8, *v161.i8), 0x18uLL), vmull_high_u32(v646, v161), 0x18uLL), v162));
    v648 = vaddq_s16(v647, v160);
    v649 = vorrq_s8(vandq_s8(vcltzq_s16(v648), v647), vmaxq_s16(v648, 0));
    v650 = vaddq_s16(v640, v638);
    v651 = vaddq_s16(v650, v160);
    v177[2] = v643;
    v177[3] = vorrq_s8(vandq_s8(vcltzq_s16(v651), v650), vmaxq_s16(v651, 0));
    v652 = vmlsl_high_u16(vmull_high_u16(v640, v319), v638, v319);
    v653 = vaddq_s32(vmlsl_u16(vmull_u16(*v640.i8, 0x28002800280028), *v638.i8, 0x28002800280028), v624);
    v654 = vaddq_s32(v652, v624);
    v655 = vuzp1q_s16(vmlaq_s32(v653, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v653.i8, *v161.i8), 0x18uLL), vmull_high_u32(v653, v161), 0x18uLL), v162), vmlaq_s32(v654, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v654.i8, *v161.i8), 0x18uLL), vmull_high_u32(v654, v161), 0x18uLL), v162));
    v656 = vaddq_s16(v655, v160);
    v177[10] = v649;
    v177[11] = vorrq_s8(vandq_s8(vcltzq_s16(v656), v655), vmaxq_s16(v656, 0));
    v657 = v177[12];
    v658 = v177[13];
    v659 = v177[4];
    v660 = v177[5];
    v661 = vaddq_s16(v659, v657);
    v662 = vaddq_s16(v661, v160);
    v663 = vorrq_s8(vandq_s8(vcltzq_s16(v662), v661), vmaxq_s16(v662, 0));
    v664 = vmlsl_high_u16(vmull_high_u16(v659, v319), v657, v319);
    v665 = vaddq_s32(vmlsl_u16(vmull_u16(*v659.i8, 0x28002800280028), *v657.i8, 0x28002800280028), v624);
    v666 = vaddq_s32(v664, v624);
    v667 = vuzp1q_s16(vmlaq_s32(v665, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v665.i8, *v161.i8), 0x18uLL), vmull_high_u32(v665, v161), 0x18uLL), v162), vmlaq_s32(v666, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v666.i8, *v161.i8), 0x18uLL), vmull_high_u32(v666, v161), 0x18uLL), v162));
    v668 = vaddq_s16(v667, v160);
    v669 = vorrq_s8(vandq_s8(vcltzq_s16(v668), v667), vmaxq_s16(v668, 0));
    v670 = vaddq_s16(v660, v658);
    v671 = vaddq_s16(v670, v160);
    v177[4] = v663;
    v177[5] = vorrq_s8(vandq_s8(vcltzq_s16(v671), v670), vmaxq_s16(v671, 0));
    v672 = vmlsl_high_u16(vmull_high_u16(v660, v319), v658, v319);
    v673 = vaddq_s32(vmlsl_u16(vmull_u16(*v660.i8, 0x28002800280028), *v658.i8, 0x28002800280028), v624);
    v674 = vaddq_s32(v672, v624);
    v675 = vuzp1q_s16(vmlaq_s32(v673, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v673.i8, *v161.i8), 0x18uLL), vmull_high_u32(v673, v161), 0x18uLL), v162), vmlaq_s32(v674, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v674.i8, *v161.i8), 0x18uLL), vmull_high_u32(v674, v161), 0x18uLL), v162));
    v676 = vaddq_s16(v675, v160);
    v177[12] = v669;
    v177[13] = vorrq_s8(vandq_s8(vcltzq_s16(v676), v675), vmaxq_s16(v676, 0));
    v677 = v177[14];
    v678 = v177[15];
    v679 = v177[6];
    v680 = v177[7];
    v681 = vaddq_s16(v679, v677);
    v682 = vaddq_s16(v681, v160);
    v683 = vorrq_s8(vandq_s8(vcltzq_s16(v682), v681), vmaxq_s16(v682, 0));
    v684 = vmlsl_high_u16(vmull_high_u16(v679, v319), v677, v319);
    v685 = vaddq_s32(vmlsl_u16(vmull_u16(*v679.i8, 0x28002800280028), *v677.i8, 0x28002800280028), v624);
    v686 = vaddq_s32(v684, v624);
    v687 = vuzp1q_s16(vmlaq_s32(v685, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v685.i8, *v161.i8), 0x18uLL), vmull_high_u32(v685, v161), 0x18uLL), v162), vmlaq_s32(v686, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v686.i8, *v161.i8), 0x18uLL), vmull_high_u32(v686, v161), 0x18uLL), v162));
    v688 = vaddq_s16(v687, v160);
    v689 = vorrq_s8(vandq_s8(vcltzq_s16(v688), v687), vmaxq_s16(v688, 0));
    v690 = vaddq_s16(v680, v678);
    v691 = vaddq_s16(v690, v160);
    v177[6] = v683;
    v177[7] = vorrq_s8(vandq_s8(vcltzq_s16(v691), v690), vmaxq_s16(v691, 0));
    v692 = vmlsl_high_u16(vmull_high_u16(v680, v319), v678, v319);
    v693 = vaddq_s32(vmlsl_u16(vmull_u16(*v680.i8, 0x28002800280028), *v678.i8, 0x28002800280028), v624);
    v694 = vaddq_s32(v692, v624);
    v695 = vuzp1q_s16(vmlaq_s32(v693, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v693.i8, *v161.i8), 0x18uLL), vmull_high_u32(v693, v161), 0x18uLL), v162), vmlaq_s32(v694, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v694.i8, *v161.i8), 0x18uLL), vmull_high_u32(v694, v161), 0x18uLL), v162));
    v696 = vaddq_s16(v695, v160);
    v177[14] = v689;
    v177[15] = vorrq_s8(vandq_s8(vcltzq_s16(v696), v695), vmaxq_s16(v696, 0));
    v697 = v177[24];
    v698 = v177[25];
    v699 = v177[16];
    v700 = v177[17];
    v701 = vaddq_s16(v699, v697);
    v702 = vaddq_s16(v701, v160);
    v703 = vorrq_s8(vandq_s8(vcltzq_s16(v702), v701), vmaxq_s16(v702, 0));
    v704 = vdupq_n_s16(0x2EDu);
    v705 = vmlsl_high_u16(vmull_high_u16(v699, v704), v697, v704);
    v706 = vdupq_n_s32(0x260BEDu);
    v707 = vaddq_s32(vmlsl_u16(vmull_u16(*v699.i8, *v704.i8), *v697.i8, *v704.i8), v706);
    v708 = vaddq_s32(v705, v706);
    v709 = vuzp1q_s16(vmlaq_s32(v707, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v707.i8, *v161.i8), 0x18uLL), vmull_high_u32(v707, v161), 0x18uLL), v162), vmlaq_s32(v708, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v708.i8, *v161.i8), 0x18uLL), vmull_high_u32(v708, v161), 0x18uLL), v162));
    v710 = vaddq_s16(v709, v160);
    v711 = vorrq_s8(vandq_s8(vcltzq_s16(v710), v709), vmaxq_s16(v710, 0));
    v712 = vaddq_s16(v700, v698);
    v713 = vaddq_s16(v712, v160);
    v177[16] = v703;
    v177[17] = vorrq_s8(vandq_s8(vcltzq_s16(v713), v712), vmaxq_s16(v713, 0));
    v714 = vmlsl_high_u16(vmull_high_u16(v700, v704), v698, v704);
    v715 = vaddq_s32(vmlsl_u16(vmull_u16(*v700.i8, *v704.i8), *v698.i8, *v704.i8), v706);
    v716 = vaddq_s32(v714, v706);
    v717 = vuzp1q_s16(vmlaq_s32(v715, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v715.i8, *v161.i8), 0x18uLL), vmull_high_u32(v715, v161), 0x18uLL), v162), vmlaq_s32(v716, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v716.i8, *v161.i8), 0x18uLL), vmull_high_u32(v716, v161), 0x18uLL), v162));
    v718 = vaddq_s16(v717, v160);
    v177[24] = v711;
    v177[25] = vorrq_s8(vandq_s8(vcltzq_s16(v718), v717), vmaxq_s16(v718, 0));
    v719 = v177[26];
    v720 = v177[27];
    v721 = v177[18];
    v722 = v177[19];
    v723 = vaddq_s16(v721, v719);
    v724 = vaddq_s16(v723, v160);
    v725 = vorrq_s8(vandq_s8(vcltzq_s16(v724), v723), vmaxq_s16(v724, 0));
    v726 = vmlsl_high_u16(vmull_high_u16(v721, v704), v719, v704);
    v727 = vaddq_s32(vmlsl_u16(vmull_u16(*v721.i8, *v704.i8), *v719.i8, *v704.i8), v706);
    v728 = vaddq_s32(v726, v706);
    v729 = vuzp1q_s16(vmlaq_s32(v727, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v727.i8, *v161.i8), 0x18uLL), vmull_high_u32(v727, v161), 0x18uLL), v162), vmlaq_s32(v728, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v728.i8, *v161.i8), 0x18uLL), vmull_high_u32(v728, v161), 0x18uLL), v162));
    v730 = vaddq_s16(v729, v160);
    v731 = vorrq_s8(vandq_s8(vcltzq_s16(v730), v729), vmaxq_s16(v730, 0));
    v732 = vaddq_s16(v722, v720);
    v733 = vaddq_s16(v732, v160);
    v177[18] = v725;
    v177[19] = vorrq_s8(vandq_s8(vcltzq_s16(v733), v732), vmaxq_s16(v733, 0));
    v734 = vmlsl_high_u16(vmull_high_u16(v722, v704), v720, v704);
    v735 = vaddq_s32(vmlsl_u16(vmull_u16(*v722.i8, *v704.i8), *v720.i8, *v704.i8), v706);
    v736 = vaddq_s32(v734, v706);
    v737 = vuzp1q_s16(vmlaq_s32(v735, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v735.i8, *v161.i8), 0x18uLL), vmull_high_u32(v735, v161), 0x18uLL), v162), vmlaq_s32(v736, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v736.i8, *v161.i8), 0x18uLL), vmull_high_u32(v736, v161), 0x18uLL), v162));
    v738 = vaddq_s16(v737, v160);
    v177[26] = v731;
    v177[27] = vorrq_s8(vandq_s8(vcltzq_s16(v738), v737), vmaxq_s16(v738, 0));
    v739 = v177[28];
    v740 = v177[29];
    v741 = v177[20];
    v742 = v177[21];
    v743 = vaddq_s16(v741, v739);
    v744 = vaddq_s16(v743, v160);
    v745 = vorrq_s8(vandq_s8(vcltzq_s16(v744), v743), vmaxq_s16(v744, 0));
    v746 = vmlsl_high_u16(vmull_high_u16(v741, v704), v739, v704);
    v747 = vaddq_s32(vmlsl_u16(vmull_u16(*v741.i8, *v704.i8), *v739.i8, *v704.i8), v706);
    v748 = vaddq_s32(v746, v706);
    v749 = vuzp1q_s16(vmlaq_s32(v747, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v747.i8, *v161.i8), 0x18uLL), vmull_high_u32(v747, v161), 0x18uLL), v162), vmlaq_s32(v748, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v748.i8, *v161.i8), 0x18uLL), vmull_high_u32(v748, v161), 0x18uLL), v162));
    v750 = vaddq_s16(v749, v160);
    v751 = vorrq_s8(vandq_s8(vcltzq_s16(v750), v749), vmaxq_s16(v750, 0));
    v752 = vaddq_s16(v742, v740);
    v753 = vaddq_s16(v752, v160);
    v177[20] = v745;
    v177[21] = vorrq_s8(vandq_s8(vcltzq_s16(v753), v752), vmaxq_s16(v753, 0));
    v754 = vmlsl_high_u16(vmull_high_u16(v742, v704), v740, v704);
    v755 = vaddq_s32(vmlsl_u16(vmull_u16(*v742.i8, *v704.i8), *v740.i8, *v704.i8), v706);
    v756 = vaddq_s32(v754, v706);
    v757 = vuzp1q_s16(vmlaq_s32(v755, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v755.i8, *v161.i8), 0x18uLL), vmull_high_u32(v755, v161), 0x18uLL), v162), vmlaq_s32(v756, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v756.i8, *v161.i8), 0x18uLL), vmull_high_u32(v756, v161), 0x18uLL), v162));
    v758 = vaddq_s16(v757, v160);
    v177[28] = v751;
    v177[29] = vorrq_s8(vandq_s8(vcltzq_s16(v758), v757), vmaxq_s16(v758, 0));
    v759 = v177[30];
    v760 = v177[31];
    v761 = v177[22];
    v762 = v177[23];
    v763 = vaddq_s16(v761, v759);
    v764 = vaddq_s16(v763, v160);
    v765 = vorrq_s8(vandq_s8(vcltzq_s16(v764), v763), vmaxq_s16(v764, 0));
    v766 = vmlsl_high_u16(vmull_high_u16(v761, v704), v759, v704);
    v767 = vaddq_s32(vmlsl_u16(vmull_u16(*v761.i8, *v704.i8), *v759.i8, *v704.i8), v706);
    v768 = vaddq_s32(v766, v706);
    v769 = vuzp1q_s16(vmlaq_s32(v767, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v767.i8, *v161.i8), 0x18uLL), vmull_high_u32(v767, v161), 0x18uLL), v162), vmlaq_s32(v768, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v768.i8, *v161.i8), 0x18uLL), vmull_high_u32(v768, v161), 0x18uLL), v162));
    v770 = vaddq_s16(v769, v160);
    v771 = vorrq_s8(vandq_s8(vcltzq_s16(v770), v769), vmaxq_s16(v770, 0));
    v772 = vaddq_s16(v762, v760);
    v773 = vaddq_s16(v772, v160);
    v177[22] = v765;
    v177[23] = vorrq_s8(vandq_s8(vcltzq_s16(v773), v772), vmaxq_s16(v773, 0));
    v774 = vmlsl_high_u16(vmull_high_u16(v762, v704), v760, v704);
    v775 = vaddq_s32(vmlsl_u16(vmull_u16(*v762.i8, *v704.i8), *v760.i8, *v704.i8), v706);
    v776 = vaddq_s32(v774, v706);
    v777 = vuzp1q_s16(vmlaq_s32(v775, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v775.i8, *v161.i8), 0x18uLL), vmull_high_u32(v775, v161), 0x18uLL), v162), vmlaq_s32(v776, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v776.i8, *v161.i8), 0x18uLL), vmull_high_u32(v776, v161), 0x18uLL), v162));
    v778 = vaddq_s16(v777, v160);
    v177[30] = v771;
    v177[31] = vorrq_s8(vandq_s8(vcltzq_s16(v778), v777), vmaxq_s16(v778, 0));
    do
    {
      v779 = &v175[v266];
      v780 = *&v175[v266 + 128];
      v781 = *&v175[v266];
      v782 = vaddq_s16(v781, v780);
      v783 = vaddq_s16(v782, v160);
      v784 = vdupq_n_s16(0x640u);
      v785 = vmlsl_high_u16(vmull_high_u16(v781, v784), v780, v784);
      v786 = vmlsl_u16(vmull_u16(*v781.i8, *v784.i8), *v780.i8, *v784.i8);
      v787 = vdupq_n_s32(0x514640u);
      v788 = vaddq_s32(v786, v787);
      v789 = vaddq_s32(v785, v787);
      v790 = vuzp1q_s16(vmlaq_s32(v788, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v788.i8, *v161.i8), 0x18uLL), vmull_high_u32(v788, v161), 0x18uLL), v162), vmlaq_s32(v789, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v789.i8, *v161.i8), 0x18uLL), vmull_high_u32(v789, v161), 0x18uLL), v162));
      v791 = vaddq_s16(v790, v160);
      *v779 = vorrq_s8(vandq_s8(vcltzq_s16(v783), v782), vmaxq_s16(v783, 0));
      v779[16] = vorrq_s8(vandq_s8(vcltzq_s16(v791), v790), vmaxq_s16(v791, 0));
      v266 += 8;
    }

    while (v266 != 128);
    for (j = 0; j != 256; j += 8)
    {
      v793 = *&v175[j];
      v794 = vdupq_n_s16(0xCE7u);
      v795 = vmull_u16(*v793.i8, *v794.i8);
      v796 = vmull_high_u16(v793, v794);
      v797 = vuzp1q_s16(vmlal_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v795.i8, *v161.i8), 0x18uLL), vmull_high_u32(v795, v161), 0x18uLL), v162), *v793.i8, *v794.i8), vmlal_high_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v796.i8, *v161.i8), 0x18uLL), vmull_high_u32(v796, v161), 0x18uLL), v162), v793, v794));
      v798 = vaddq_s16(v797, v160);
      *&v175[j] = vorrq_s8(vandq_s8(vcltzq_s16(v798), v797), vmaxq_s16(v798, 0));
    }

    ++v158;
    v175 += 256;
  }

  while (v158 != 3);
  v799 = 0;
  v800.i64[0] = 0xD000D000D000D00;
  v800.i64[1] = 0xD000D000D000D00;
  do
  {
    v801 = &v1631[v799 / 8];
    v802 = vaddq_s16(*&v1651[v799 / 2], *&v1631[v799 / 8]);
    v803 = vaddq_s16(*&v1651[v799 / 2 + 8], *&v1631[v799 / 8 + 2]);
    v804 = vaddq_s16(v802, v800);
    v805 = vaddq_s16(v803, v800);
    *v801 = vorrq_s8(vandq_s8(vcltzq_s16(v804), v802), vmaxq_s16(v804, 0));
    v801[1] = vorrq_s8(vandq_s8(vcltzq_s16(v805), v803), vmaxq_s16(v805, 0));
    v799 += 32;
  }

  while (v799 != 512);
  v806.i64[0] = 0xD000D000D000D00;
  v806.i64[1] = 0xD000D000D000D00;
  do
  {
    v807 = &v1631[v799 / 8];
    v808 = vaddq_s16(*&v1651[v799 / 2], *&v1631[v799 / 8]);
    v809 = vaddq_s16(*&v1651[v799 / 2 + 8], *&v1631[v799 / 8 + 2]);
    v810 = vaddq_s16(v808, v806);
    v811 = vaddq_s16(v809, v806);
    *v807 = vorrq_s8(vandq_s8(vcltzq_s16(v810), v808), vmaxq_s16(v810, 0));
    v807[1] = vorrq_s8(vandq_s8(vcltzq_s16(v811), v809), vmaxq_s16(v811, 0));
    v799 += 32;
  }

  while (v799 != 1024);
  v812.i64[0] = 0xD000D000D000D00;
  v812.i64[1] = 0xD000D000D000D00;
  do
  {
    v813 = &v1631[v799 / 8];
    v814 = vaddq_s16(*&v1651[v799 / 2], *&v1631[v799 / 8]);
    v815 = vaddq_s16(*&v1651[v799 / 2 + 8], *&v1631[v799 / 8 + 2]);
    v816 = vaddq_s16(v814, v812);
    v817 = vaddq_s16(v815, v812);
    *v813 = vorrq_s8(vandq_s8(vcltzq_s16(v816), v814), vmaxq_s16(v816, 0));
    v813[1] = vorrq_s8(vandq_s8(vcltzq_s16(v817), v815), vmaxq_s16(v817, 0));
    v799 += 32;
  }

  while (v799 != 1536);
  scalar_inner_product(&v1656, v8, v1652);
  v818 = 0;
  v819 = &xmmword_273BB63BA;
  v820 = vdupq_n_s32(0xD01u);
  v821.i64[0] = 0xD000D000D000D00;
  v821.i64[1] = 0xD000D000D000D00;
  v822 = vdupq_n_s32(0x13AFu);
  v823.i64[0] = 0xF2000000F2;
  v823.i64[1] = 0xF2000000F2;
  do
  {
    v824 = &v1656.i16[v818];
    v1719 = vld4q_s16(v824);
    v825 = *v819++;
    v826 = vmovl_high_u16(v825);
    v827 = vmovl_u16(*v825.i8);
    v828 = vaddq_s16(v1719.val[0], v1719.val[2]);
    v829 = vaddq_s16(v828, v821);
    v830 = vmulq_s32(vaddq_s32(vsubl_u16(*v1719.val[0].i8, *v1719.val[2].i8), v820), v827);
    v831 = vmulq_s32(vaddq_s32(vsubl_high_u16(v1719.val[0], v1719.val[2]), v820), v826);
    v832 = vaddq_s16(v1719.val[1], v1719.val[3]);
    v833 = vaddq_s16(v832, v821);
    v834 = vmulq_s32(vaddq_s32(vsubl_u16(*v1719.val[1].i8, *v1719.val[3].i8), v820), v827);
    v835 = vmulq_s32(vaddq_s32(vsubl_high_u16(v1719.val[1], v1719.val[3]), v820), v826);
    v836 = vuzp1q_s16(vmlaq_s32(v830, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v830.i8, *v822.i8), 0x18uLL), vmull_high_u32(v830, v822), 0x18uLL), v823), vmlaq_s32(v831, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v831.i8, *v822.i8), 0x18uLL), vmull_high_u32(v831, v822), 0x18uLL), v823));
    v1719.val[0] = vaddq_s16(v836, v821);
    v837 = vuzp1q_s16(vmlaq_s32(v834, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v834.i8, *v822.i8), 0x18uLL), vmull_high_u32(v834, v822), 0x18uLL), v823), vmlaq_s32(v835, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v835.i8, *v822.i8), 0x18uLL), vmull_high_u32(v835, v822), 0x18uLL), v823));
    v838 = vaddq_s16(v837, v821);
    v1721.val[1] = vorrq_s8(vandq_s8(vcltzq_s16(v833), v832), vmaxq_s16(v833, 0));
    v1721.val[0] = vorrq_s8(vandq_s8(vcltzq_s16(v829), v828), vmaxq_s16(v829, 0));
    v1721.val[3] = vorrq_s8(vandq_s8(vcltzq_s16(v838), v837), vmaxq_s16(v838, 0));
    v1721.val[2] = vorrq_s8(vandq_s8(vcltzq_s16(v1719.val[0]), v836), vmaxq_s16(v1719.val[0], 0));
    vst4q_s16(v824, v1721);
    v818 += 32;
  }

  while (v818 != 256);
  v839 = 0;
  v840 = &xmmword_273BB637A;
  v842 = xmmword_273BA7090;
  v841 = xmmword_273BA70B0;
  v844 = xmmword_273BA7050;
  v843 = xmmword_273BA7070;
  v846 = xmmword_273BA7030;
  v845 = xmmword_273BA7060;
  v848 = xmmword_273BA7010;
  v847 = xmmword_273BA7080;
  v849 = xmmword_273BA7040;
  v850 = xmmword_273BA7020;
  do
  {
    v851 = *v840++;
    v852 = &v1656.i8[v839 * 8];
    v1691.val[0] = *(&v1662 + v839 * 8);
    v1691.val[1] = *(&v1663 + v839 * 8);
    v1705.val[0] = *(&v1660 + v839 * 8);
    v1705.val[1] = *(&v1661 + v839 * 8);
    v1595 = vmovl_high_u16(v851);
    v1697.val[0] = *(&v1658 + v839 * 8);
    v1697.val[1] = *(&v1659 + v839 * 8);
    v853 = vqtbl2q_s8(v1705, v848);
    v1710 = *&v1656.i8[v839 * 8];
    v854.i32[0] = vzip1q_s16(v1710.val[0], v1710.val[1]).u32[0];
    v853.i32[3] = vqtbl2q_s8(v1691, xmmword_273BA7000).i32[3];
    v854.i32[1] = vqtbl2q_s8(v1697, v850).i32[1];
    v855.i32[0] = vtrn2q_s16(v1710.val[0], v1710.val[1]).u32[0];
    v855.i32[1] = vzip1q_s16(*&v1697, *(&v1697 + 16)).i32[1];
    v856 = vqtbl2q_s8(v1705, v849);
    v857 = vzip1q_s16(v1705.val[0], v1705.val[1]);
    v856.i32[3] = vqtbl2q_s8(v1691, v846).i32[3];
    LOWORD(v858) = WORD2(v1658.i64[v839]);
    HIWORD(v858) = WORD2(v1659.i64[v839]);
    v857.i32[3] = vqtbl2q_s8(v1691, v844).i32[3];
    v859.i32[0] = vqtbl2q_s8(v1710, v845).u32[0];
    v860 = vqtbl2q_s8(v1705, v843);
    v860.i32[3] = vzip1q_s16(*&v1691, *(&v1691 + 16)).i32[3];
    LODWORD(v861) = vqtbl2q_s8(v1710, v847).u32[0];
    LOWORD(v862) = v1660.i64[v839 + 1];
    WORD1(v862) = v1661.i64[v839 + 1];
    HIDWORD(v861) = vtrn2q_s16(*&v1697, *(&v1697 + 16)).i32[1];
    v863.i64[0] = v861;
    v864 = vqtbl2q_s8(v1691, v842);
    v865.i32[0] = vzip2q_s16(v1710.val[0], v1710.val[1]).u32[0];
    v866 = vtrn2q_s16(v1705.val[0], v1705.val[1]);
    v867 = vqtbl2q_s8(v1691, v841);
    v868.i32[0] = v865.i32[0];
    v866.i32[3] = v867.i32[3];
    v869.i32[0] = vqtbl2q_s8(v1710, xmmword_273BA70C0).u32[0];
    v868.i32[1] = vqtbl2q_s8(v1697, xmmword_273BA70A0).i32[1];
    v870.i32[0] = v869.i32[0];
    v870.i32[1] = vzip2q_s16(*&v1697, *(&v1697 + 16)).i32[1];
    LOWORD(v871) = v1691.val[0].i16[6];
    v859.i32[1] = v858;
    HIWORD(v871) = v1691.val[1].i16[6];
    v872 = vzip2q_s16(v1705.val[0], v1705.val[1]);
    v873 = __PAIR64__(v871, v872.u32[2]);
    HIDWORD(v862) = v864.i32[3];
    v874 = vqtbl2q_s8(v1705, xmmword_273BA70F0);
    v875 = vzip2q_s16(v1691.val[0], v1691.val[1]);
    v854.i64[1] = v853.i64[1];
    v874.i32[3] = v875.i32[3];
    v855.i64[1] = v856.i64[1];
    v856.i64[0] = __PAIR64__(vqtbl2q_s8(v1697, xmmword_273BA7100).u32[1], vqtbl2q_s8(v1710, xmmword_273BA7110).u32[0]);
    v863.i64[1] = v860.i64[1];
    v1600 = v863;
    v872.i32[1] = vqtbl2q_s8(v1691, xmmword_273BA70A0).i32[1];
    v865.i32[1] = v868.i32[1];
    v870.i64[1] = v866.i64[1];
    v876 = vzip1_s16(*v1691.val[0].i8, *v1691.val[1].i8);
    v867.i32[0] = vzip1_s16(*v1705.val[0].i8, *v1705.val[1].i8).u32[0];
    v856.i64[1] = v874.i64[1];
    v867.i32[1] = vext_s8(*&v1691, v876, 4uLL).i32[1];
    *v874.i8 = vzip1_s16(*v1697.val[0].i8, *v1697.val[1].i8);
    v859.i64[1] = v857.i64[1];
    v857.i32[0] = vzip1_s16(*v1710.val[0].i8, *v1710.val[1].i8).u32[0];
    v857.i32[1] = vext_s8(*&v1697, *&v874, 4uLL).i32[1];
    v877.i32[0] = vqtbl2q_s8(v1710, xmmword_273BA70E0).u32[0];
    v868.i64[1] = v862;
    v866.i32[0] = v877.i32[0];
    v866.i32[1] = vqtbl2q_s8(v1697, xmmword_273BA70D0).i32[1];
    v866.i64[1] = v873;
    v878 = vdupq_n_s32(0xD01u);
    v879 = vaddq_s32(vsubl_u16(*v867.i8, *v872.i8), v878);
    v880 = vmovl_u16(*v851.i8);
    v881 = vmulq_s32(vaddq_s32(vsubl_u16(*v857.i8, v865), v878), v880);
    v882 = vdupq_n_s32(0x13AFu);
    v872.i32[0] = vqtbl2q_s8(v1705, xmmword_273BA70C0).u32[0];
    v872.i32[1] = v875.i32[1];
    v883 = vmulq_s32(v879, v1595);
    v869.i32[1] = v870.i32[1];
    v879.i32[0] = vtrn2_s16(*v1705.val[0].i8, *v1705.val[1].i8).u32[0];
    v879.i32[1] = v876.i32[1];
    v884.i32[0] = vtrn2_s16(*v1710.val[0].i8, *v1710.val[1].i8).u32[0];
    v884.i32[1] = v874.i32[1];
    v1593 = vaddq_s16(v855, v870);
    v885 = vmulq_s32(vaddq_s32(vsubl_u16(v884, v869), v878), v880);
    v1589 = vaddq_s16(v854, v868);
    v886 = vmulq_s32(vaddq_s32(vsubl_u16(*v879.i8, *v872.i8), v878), v1595);
    v874.i32[0] = vqtbl2q_s8(v1705, xmmword_273BA70E0).u32[0];
    v874.i32[1] = vqtbl2q_s8(v1691, xmmword_273BA70D0).i32[1];
    v877.i32[1] = v866.i32[1];
    LOWORD(v887) = WORD2(v1662.i64[v839]);
    HIWORD(v887) = WORD2(v1663.i64[v839]);
    v888.i64[0] = 0xF2000000F2;
    v888.i64[1] = 0xF2000000F2;
    v860.i32[0] = vzip2_s16(*v1705.val[0].i8, *v1705.val[1].i8).u32[0];
    v860.i32[1] = v887;
    LOWORD(v887) = WORD2(v1658.i64[v839]);
    HIWORD(v887) = WORD2(v1659.i64[v839]);
    v872.i32[0] = vzip2_s16(*v1710.val[0].i8, *v1710.val[1].i8).u32[0];
    v872.i32[1] = v887;
    v889 = vaddq_s16(v859, v866);
    v890 = vaddq_s32(vsubl_u16(*v860.i8, *v874.i8), v878);
    v891 = vmulq_s32(vaddq_s32(vsubl_u16(*v872.i8, v877), v878), v880);
    v892 = vmulq_s32(v890, v1595);
    v890.i32[0] = vuzp2_s16(vuzp2_s16(*v1710.val[0].i8, *v1710.val[1].i8), *v1710.val[0].i8).u32[0];
    v1710.val[0].i32[0] = vuzp2_s16(vuzp2_s16(*v1705.val[0].i8, *v1705.val[1].i8), *v1705.val[0].i8).u32[0];
    v1705.val[0].i32[0] = vqtbl2q_s8(v1705, xmmword_273BA7110).u32[0];
    v1705.val[0].i32[1] = vqtbl2q_s8(v1691, xmmword_273BA7100).i32[1];
    v893 = vuzp1q_s16(vmlaq_s32(v885, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v885.i8, *v882.i8), 0x18uLL), vmull_high_u32(v885, v882), 0x18uLL), v888), vmlaq_s32(v886, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v886.i8, *v882.i8), 0x18uLL), vmull_high_u32(v886, v882), 0x18uLL), v888));
    v841 = xmmword_273BA70B0;
    v845 = xmmword_273BA7060;
    v1710.val[0].i32[1] = vzip2_s16(*&v1691, *(&v1691 + 16)).i32[1];
    v1705.val[1] = vuzp1q_s16(vmlaq_s32(v881, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v881.i8, *v882.i8), 0x18uLL), vmull_high_u32(v881, v882), 0x18uLL), v888), vmlaq_s32(v883, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v883.i8, *v882.i8), 0x18uLL), vmull_high_u32(v883, v882), 0x18uLL), v888));
    v849 = xmmword_273BA7040;
    v890.i32[1] = vzip2_s16(*&v1697, *(&v1697 + 16)).i32[1];
    v1691.val[0] = vaddq_s16(v1600, v856);
    v864.i64[0] = 0xD000D000D000D00;
    v864.i64[1] = 0xD000D000D000D00;
    v1691.val[1] = vaddq_s16(v1589, v864);
    v894 = vaddq_s16(v1593, v864);
    v1697.val[1] = vaddq_s16(v893, v864);
    v1697.val[0] = vsubl_u16(*v1710.val[0].i8, *v1705.val[0].i8);
    v1705.val[0] = vaddq_s16(v889, v864);
    v895 = vaddq_s16(v1691.val[0], v864);
    v1697.val[0] = vaddq_s32(v1697.val[0], v878);
    v896 = vaddq_s32(vsubl_u16(*v890.i8, *v856.i8), v878);
    v847 = xmmword_273BA7080;
    v897 = vmulq_s32(v896, v880);
    v1697.val[0] = vmulq_s32(v1697.val[0], v1595);
    v898 = vuzp1q_s16(vmlaq_s32(v891, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v891.i8, *v882.i8), 0x18uLL), vmull_high_u32(v891, v882), 0x18uLL), v888), vmlaq_s32(v892, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v892.i8, *v882.i8), 0x18uLL), vmull_high_u32(v892, v882), 0x18uLL), v888));
    v844 = xmmword_273BA7050;
    v843 = xmmword_273BA7070;
    v899 = vaddq_s16(v1705.val[1], v864);
    v1697.val[0] = vmlaq_s32(v1697.val[0], vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1697.val[0].i8, *v882.i8), 0x18uLL), vmull_high_u32(v1697.val[0], v882), 0x18uLL), v888);
    v900 = vmlaq_s32(v897, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v897.i8, *v882.i8), 0x18uLL), vmull_high_u32(v897, v882), 0x18uLL), v888);
    v846 = xmmword_273BA7030;
    v1710.val[0] = vaddq_s16(v898, v864);
    v901 = vuzp1q_s16(v900, v1697.val[0]);
    v1710.val[1] = vaddq_s16(v901, v864);
    v902 = vandq_s8(vcltzq_s16(v895), v1691.val[0]);
    v850 = xmmword_273BA7020;
    v848 = xmmword_273BA7010;
    v842 = xmmword_273BA7090;
    v1691.val[0] = vorrq_s8(vandq_s8(vcltzq_s16(v894), v1593), vmaxq_s16(v894, 0));
    v903 = vorrq_s8(vandq_s8(vcltzq_s16(v1691.val[1]), v1589), vmaxq_s16(v1691.val[1], 0));
    v1697.val[0] = vorrq_s8(v902, vmaxq_s16(v895, 0));
    v904 = vandq_s8(vcltzq_s16(v899), v1705.val[1]);
    v1691.val[1] = vorrq_s8(vandq_s8(vcltzq_s16(v1705.val[0]), v889), vmaxq_s16(v1705.val[0], 0));
    v905 = vorrq_s8(vandq_s8(vcltzq_s16(v1710.val[1]), v901), vmaxq_s16(v1710.val[1], 0));
    v1710.val[1] = vorrq_s8(vandq_s8(vcltzq_s16(v1710.val[0]), v898), vmaxq_s16(v1710.val[0], 0));
    v1705.val[1] = vorrq_s8(vandq_s8(vcltzq_s16(v1697.val[1]), v893), vmaxq_s16(v1697.val[1], 0));
    v1705.val[0] = vorrq_s8(v904, vmaxq_s16(v899, 0));
    v906 = vqtbl2q_s8(v1705, xmmword_273BA7040);
    v1697.val[1].i32[0] = vtrn2q_s16(v903, v1691.val[0]).u32[0];
    v1697.val[1].i32[1] = vzip1q_s16(*(&v1691 + 16), *&v1697).i32[1];
    v901.i16[2] = v1691.val[1].i16[2];
    v907 = vqtbl2q_s8(v1705, xmmword_273BA7010);
    v1710.val[0].i32[0] = vzip1q_s16(v903, v1691.val[0]).u32[0];
    v1710.val[0].i32[1] = vqtbl2q_s8(*(&v1691 + 16), xmmword_273BA7020).i32[1];
    v906.i32[3] = vqtbl2q_s8(*(&v1710 + 16), xmmword_273BA7030).i32[3];
    v908 = vzip1q_s16(v1705.val[0], v1705.val[1]);
    v901.i16[3] = v1697.val[0].i16[2];
    v907.i32[3] = vqtbl2q_s8(*(&v1710 + 16), xmmword_273BA7000).i32[3];
    v899.i32[0] = vqtbl2q_s8(v1691, xmmword_273BA7060).u32[0];
    v899.i32[1] = v901.i32[1];
    v908.i32[3] = vqtbl2q_s8(*(&v1710 + 16), xmmword_273BA7050).i32[3];
    v909 = vtrn2q_s16(v1705.val[0], v1705.val[1]);
    v910 = vqtbl2q_s8(*(&v1710 + 16), xmmword_273BA7090);
    v911 = vzip1q_s16(v1710.val[1], v905);
    v909.i32[3] = vqtbl2q_s8(*(&v1710 + 16), xmmword_273BA70B0).i32[3];
    v912 = vzip2q_s16(v1710.val[1], v905);
    v913 = vzip2q_s16(v1705.val[0], v1705.val[1]);
    v1710.val[1].i16[7] = v905.i16[6];
    v913.i32[3] = v1710.val[1].i32[3];
    v905.i32[0] = vqtbl2q_s8(v1691, xmmword_273BA70C0).u32[0];
    v905.i32[1] = vzip2q_s16(*(&v1691 + 16), *&v1697).i32[1];
    v1710.val[1].i16[4] = v1705.val[0].i16[4];
    v1710.val[1].i16[5] = v1705.val[1].i16[4];
    v1710.val[1].i32[3] = v910.i32[3];
    v1697.val[1].i64[1] = v906.i64[1];
    v906.i32[0] = vzip2q_s16(v903, v1691.val[0]).u32[0];
    v906.i32[1] = vqtbl2q_s8(*(&v1691 + 16), xmmword_273BA70A0).i32[1];
    v899.i64[1] = v908.i64[1];
    v914 = vqtbl2q_s8(v1705, xmmword_273BA7070);
    v914.i32[3] = v911.i32[3];
    v905.i64[1] = v909.i64[1];
    v910.i32[0] = vqtbl2q_s8(v1691, xmmword_273BA7080).u32[0];
    v910.i32[1] = vtrn2q_s16(*(&v1691 + 16), *&v1697).i32[1];
    v910.i64[1] = v914.i64[1];
    v915 = vqtbl2q_s8(v1705, xmmword_273BA70F0);
    v915.i32[3] = v912.i32[3];
    v906.i64[1] = v1710.val[1].i64[1];
    v912.i32[0] = vqtbl2q_s8(v1691, xmmword_273BA7110).u32[0];
    v912.i32[1] = vqtbl2q_s8(*(&v1691 + 16), xmmword_273BA7100).i32[1];
    v852[2] = v899;
    v852[3] = v910;
    v912.i64[1] = v915.i64[1];
    v909.i32[0] = vqtbl2q_s8(v1691, xmmword_273BA70E0).u32[0];
    v852[4] = v906;
    v852[5] = v905;
    v909.i32[1] = vqtbl2q_s8(*(&v1691 + 16), xmmword_273BA70D0).i32[1];
    v909.i64[1] = v913.i64[1];
    v852[6] = v909;
    v852[7] = v912;
    v1710.val[0].i64[1] = v907.i64[1];
    *v852 = v1710.val[0];
    v852[1] = v1697.val[1];
    v839 += 16;
  }

  while (v839 != 64);
  v916 = 0;
  v917.i64[0] = 0xD000D000D000D00;
  v917.i64[1] = 0xD000D000D000D00;
  v918.i64[0] = 0xF2000000F2;
  v918.i64[1] = 0xF2000000F2;
  do
  {
    v919 = (&v1656 + v916);
    v920 = v919[1];
    v921 = vaddq_s16(*v919, v920);
    v922 = vaddq_s16(v921, v917);
    v923 = vsubl_u16(*v919->i8, *v920.i8);
    v924 = vdupq_n_s32(0xD01u);
    v925 = vaddq_s32(vsubl_high_u16(*v919, v920), v924);
    v926 = vaddq_s32(v923, v924);
    v927 = vdupq_n_s32(*(&kInverseNTTRoots + v916 + 32));
    v928 = vmulq_s32(v926, v927);
    v929 = vmulq_s32(v925, v927);
    v930 = vdupq_n_s32(0x13AFu);
    v931 = vuzp1q_s16(vmlaq_s32(v928, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v928.i8, *v930.i8), 0x18uLL), vmull_high_u32(v928, v930), 0x18uLL), v918), vmlaq_s32(v929, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v929.i8, *v930.i8), 0x18uLL), vmull_high_u32(v929, v930), 0x18uLL), v918));
    v932 = vaddq_s16(v931, v917);
    *v919 = vorrq_s8(vandq_s8(vcltzq_s16(v922), v921), vmaxq_s16(v922, 0));
    v919[1] = vorrq_s8(vandq_s8(vcltzq_s16(v932), v931), vmaxq_s16(v932, 0));
    v916 += 2;
  }

  while (v916 != 32);
  v933 = 0;
  v934 = v1657;
  v935 = vaddq_s16(v1656, v1658);
  v936.i64[0] = 0xD000D000D000D00;
  v936.i64[1] = 0xD000D000D000D00;
  v937 = vaddq_s16(v935, v936);
  v938 = vorrq_s8(vandq_s8(vcltzq_s16(v937), v935), vmaxq_s16(v937, 0));
  v939 = vdupq_n_s16(0x62Fu);
  v940 = vdupq_n_s32(0x50692Fu);
  v941 = vaddq_s32(vmlsl_u16(vmull_u16(*v1656.i8, *v939.i8), *v1658.i8, *v939.i8), v940);
  v942 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1656, v939), v1658, v939), v940);
  v943 = vdupq_n_s32(0x13AFu);
  v944.i64[0] = 0xF2000000F2;
  v944.i64[1] = 0xF2000000F2;
  v945 = vuzp1q_s16(vmlaq_s32(v941, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v941.i8, *v943.i8), 0x18uLL), vmull_high_u32(v941, v943), 0x18uLL), v944), vmlaq_s32(v942, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v942.i8, *v943.i8), 0x18uLL), vmull_high_u32(v942, v943), 0x18uLL), v944));
  v946 = vaddq_s16(v945, v936);
  v947 = vorrq_s8(vandq_s8(vcltzq_s16(v946), v945), vmaxq_s16(v946, 0));
  v948 = vaddq_s16(v1657, v1659);
  v949 = vaddq_s16(v948, v936);
  v1656 = v938;
  v1657 = vorrq_s8(vandq_s8(vcltzq_s16(v949), v948), vmaxq_s16(v949, 0));
  v950 = vaddq_s32(vmlsl_u16(vmull_u16(*v934.i8, *v939.i8), *v1659.i8, *v939.i8), v940);
  v951 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v934, v939), v1659, v939), v940);
  v952 = vuzp1q_s16(vmlaq_s32(v950, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v950.i8, *v943.i8), 0x18uLL), vmull_high_u32(v950, v943), 0x18uLL), v944), vmlaq_s32(v951, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v951.i8, *v943.i8), 0x18uLL), vmull_high_u32(v951, v943), 0x18uLL), v944));
  v953 = vaddq_s16(v952, v936);
  v1658 = v947;
  v1659 = vorrq_s8(vandq_s8(vcltzq_s16(v953), v952), vmaxq_s16(v953, 0));
  v954 = v1661;
  v955 = vaddq_s16(v1660, v1662);
  v956 = vaddq_s16(v955, v936);
  v957 = vorrq_s8(vandq_s8(vcltzq_s16(v956), v955), vmaxq_s16(v956, 0));
  v958 = vdupq_n_s16(0xAC8u);
  v959 = vdupq_n_s32(0x8C32C8u);
  v960 = vaddq_s32(vmlsl_u16(vmull_u16(*v1660.i8, *v958.i8), *v1662.i8, *v958.i8), v959);
  v961 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1660, v958), v1662, v958), v959);
  v962 = vuzp1q_s16(vmlaq_s32(v960, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v960.i8, *v943.i8), 0x18uLL), vmull_high_u32(v960, v943), 0x18uLL), v944), vmlaq_s32(v961, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v961.i8, *v943.i8), 0x18uLL), vmull_high_u32(v961, v943), 0x18uLL), v944));
  v963 = vaddq_s16(v962, v936);
  v964 = vorrq_s8(vandq_s8(vcltzq_s16(v963), v962), vmaxq_s16(v963, 0));
  v965 = vaddq_s16(v1661, v1663);
  v966 = vaddq_s16(v965, v936);
  v1660 = v957;
  v1661 = vorrq_s8(vandq_s8(vcltzq_s16(v966), v965), vmaxq_s16(v966, 0));
  v967 = vaddq_s32(vmlsl_u16(vmull_u16(*v954.i8, *v958.i8), *v1663.i8, *v958.i8), v959);
  v968 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v954, v958), v1663, v958), v959);
  v969 = vuzp1q_s16(vmlaq_s32(v967, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v967.i8, *v943.i8), 0x18uLL), vmull_high_u32(v967, v943), 0x18uLL), v944), vmlaq_s32(v968, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v968.i8, *v943.i8), 0x18uLL), vmull_high_u32(v968, v943), 0x18uLL), v944));
  v970 = vaddq_s16(v969, v936);
  v1662 = v964;
  v1663 = vorrq_s8(vandq_s8(vcltzq_s16(v970), v969), vmaxq_s16(v970, 0));
  v971 = v1665;
  v972 = vaddq_s16(v1664, v1666);
  v973 = vaddq_s16(v972, v936);
  v974 = vorrq_s8(vandq_s8(vcltzq_s16(v973), v972), vmaxq_s16(v973, 0));
  v973.i64[0] = 0x45004500450045;
  v973.i64[1] = 0x45004500450045;
  v975 = vdupq_n_s32(0x38145u);
  v976 = vaddq_s32(vmlsl_u16(vmull_u16(*v1664.i8, 0x45004500450045), *v1666.i8, 0x45004500450045), v975);
  v977 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1664, v973), v1666, v973), v975);
  v978 = vuzp1q_s16(vmlaq_s32(v976, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v976.i8, *v943.i8), 0x18uLL), vmull_high_u32(v976, v943), 0x18uLL), v944), vmlaq_s32(v977, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v977.i8, *v943.i8), 0x18uLL), vmull_high_u32(v977, v943), 0x18uLL), v944));
  v979 = vaddq_s16(v978, v936);
  v980 = vorrq_s8(vandq_s8(vcltzq_s16(v979), v978), vmaxq_s16(v979, 0));
  v981 = vaddq_s16(v1665, v1667);
  v982 = vaddq_s16(v981, v936);
  v1664 = v974;
  v1665 = vorrq_s8(vandq_s8(vcltzq_s16(v982), v981), vmaxq_s16(v982, 0));
  v983 = vaddq_s32(vmlsl_u16(vmull_u16(*v971.i8, 0x45004500450045), *v1667.i8, 0x45004500450045), v975);
  v984 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v971, v973), v1667, v973), v975);
  v985 = vuzp1q_s16(vmlaq_s32(v983, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v983.i8, *v943.i8), 0x18uLL), vmull_high_u32(v983, v943), 0x18uLL), v944), vmlaq_s32(v984, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v984.i8, *v943.i8), 0x18uLL), vmull_high_u32(v984, v943), 0x18uLL), v944));
  v986 = vaddq_s16(v985, v936);
  v1666 = v980;
  v1667 = vorrq_s8(vandq_s8(vcltzq_s16(v986), v985), vmaxq_s16(v986, 0));
  v987 = v1669;
  v988 = vaddq_s16(v1668, v1670);
  v989 = vaddq_s16(v988, v936);
  v990 = vorrq_s8(vandq_s8(vcltzq_s16(v989), v988), vmaxq_s16(v989, 0));
  v991 = vdupq_n_s16(0x21Fu);
  v992 = vdupq_n_s32(0x1B951Fu);
  v993 = vaddq_s32(vmlsl_u16(vmull_u16(*v1668.i8, *v991.i8), *v1670.i8, *v991.i8), v992);
  v994 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1668, v991), v1670, v991), v992);
  v995 = vuzp1q_s16(vmlaq_s32(v993, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v993.i8, *v943.i8), 0x18uLL), vmull_high_u32(v993, v943), 0x18uLL), v944), vmlaq_s32(v994, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v994.i8, *v943.i8), 0x18uLL), vmull_high_u32(v994, v943), 0x18uLL), v944));
  v996 = vaddq_s16(v995, v936);
  v997 = vorrq_s8(vandq_s8(vcltzq_s16(v996), v995), vmaxq_s16(v996, 0));
  v998 = vaddq_s16(v1669, v1671);
  v999 = vaddq_s16(v998, v936);
  v1668 = v990;
  v1669 = vorrq_s8(vandq_s8(vcltzq_s16(v999), v998), vmaxq_s16(v999, 0));
  v1000 = vaddq_s32(vmlsl_u16(vmull_u16(*v987.i8, *v991.i8), *v1671.i8, *v991.i8), v992);
  v1001 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v987, v991), v1671, v991), v992);
  v1002 = vuzp1q_s16(vmlaq_s32(v1000, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1000.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1000, v943), 0x18uLL), v944), vmlaq_s32(v1001, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1001.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1001, v943), 0x18uLL), v944));
  v1003 = vaddq_s16(v1002, v936);
  v1670 = v997;
  v1671 = vorrq_s8(vandq_s8(vcltzq_s16(v1003), v1002), vmaxq_s16(v1003, 0));
  v1004 = v1673;
  v1005 = vaddq_s16(v1672, v1674);
  v1006 = vaddq_s16(v1005, v936);
  v1007 = vorrq_s8(vandq_s8(vcltzq_s16(v1006), v1005), vmaxq_s16(v1006, 0));
  v1008 = vdupq_n_s16(0x9E4u);
  v1009 = vdupq_n_s32(0x809DE4u);
  v1010 = vaddq_s32(vmlsl_u16(vmull_u16(*v1672.i8, *v1008.i8), *v1674.i8, *v1008.i8), v1009);
  v1011 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1672, v1008), v1674, v1008), v1009);
  v1012 = vuzp1q_s16(vmlaq_s32(v1010, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1010.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1010, v943), 0x18uLL), v944), vmlaq_s32(v1011, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1011.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1011, v943), 0x18uLL), v944));
  v1013 = vaddq_s16(v1012, v936);
  v1014 = vorrq_s8(vandq_s8(vcltzq_s16(v1013), v1012), vmaxq_s16(v1013, 0));
  v1015 = vaddq_s16(v1673, v1675);
  v1016 = vaddq_s16(v1015, v936);
  v1672 = v1007;
  v1673 = vorrq_s8(vandq_s8(vcltzq_s16(v1016), v1015), vmaxq_s16(v1016, 0));
  v1017 = vaddq_s32(vmlsl_u16(vmull_u16(*v1004.i8, *v1008.i8), *v1675.i8, *v1008.i8), v1009);
  v1018 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1004, v1008), v1675, v1008), v1009);
  v1019 = vuzp1q_s16(vmlaq_s32(v1017, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1017.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1017, v943), 0x18uLL), v944), vmlaq_s32(v1018, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1018.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1018, v943), 0x18uLL), v944));
  v1020 = vaddq_s16(v1019, v936);
  v1674 = v1014;
  v1675 = vorrq_s8(vandq_s8(vcltzq_s16(v1020), v1019), vmaxq_s16(v1020, 0));
  v1021 = v1677;
  v1022 = vaddq_s16(v1676, v1678);
  v1023 = vaddq_s16(v1022, v936);
  v1024 = vdupq_n_s16(0xC40u);
  v1025 = vorrq_s8(vandq_s8(vcltzq_s16(v1023), v1022), vmaxq_s16(v1023, 0));
  v1026 = vdupq_n_s32(0x9F4C40u);
  v1027 = vaddq_s32(vmlsl_u16(vmull_u16(*v1676.i8, *v1024.i8), *v1678.i8, *v1024.i8), v1026);
  v1028 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1676, v1024), v1678, v1024), v1026);
  v1029 = vuzp1q_s16(vmlaq_s32(v1027, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1027.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1027, v943), 0x18uLL), v944), vmlaq_s32(v1028, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1028.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1028, v943), 0x18uLL), v944));
  v1030 = vaddq_s16(v1029, v936);
  v1031 = vorrq_s8(vandq_s8(vcltzq_s16(v1030), v1029), vmaxq_s16(v1030, 0));
  v1032 = vaddq_s16(v1677, v1679);
  v1033 = vaddq_s16(v1032, v936);
  v1676 = v1025;
  v1677 = vorrq_s8(vandq_s8(vcltzq_s16(v1033), v1032), vmaxq_s16(v1033, 0));
  v1034 = vaddq_s32(vmlsl_u16(vmull_u16(*v1021.i8, *v1024.i8), *v1679.i8, *v1024.i8), v1026);
  v1035 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1021, v1024), v1679, v1024), v1026);
  v1036 = vuzp1q_s16(vmlaq_s32(v1034, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1034.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1034, v943), 0x18uLL), v944), vmlaq_s32(v1035, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1035.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1035, v943), 0x18uLL), v944));
  v1037 = vaddq_s16(v1036, v936);
  v1678 = v1031;
  v1679 = vorrq_s8(vandq_s8(vcltzq_s16(v1037), v1036), vmaxq_s16(v1037, 0));
  v1038 = v1681;
  v1039 = vaddq_s16(v1680, v1682);
  v1040 = vaddq_s16(v1039, v936);
  v1041 = vorrq_s8(vandq_s8(vcltzq_s16(v1040), v1039), vmaxq_s16(v1040, 0));
  v1042 = vdupq_n_s16(0x582u);
  v1043 = vdupq_n_s32(0x479F82u);
  v1044 = vaddq_s32(vmlsl_u16(vmull_u16(*v1680.i8, *v1042.i8), *v1682.i8, *v1042.i8), v1043);
  v1045 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1680, v1042), v1682, v1042), v1043);
  v1046 = vuzp1q_s16(vmlaq_s32(v1044, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1044.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1044, v943), 0x18uLL), v944), vmlaq_s32(v1045, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1045.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1045, v943), 0x18uLL), v944));
  v1047 = vaddq_s16(v1046, v936);
  v1048 = vorrq_s8(vandq_s8(vcltzq_s16(v1047), v1046), vmaxq_s16(v1047, 0));
  v1049 = vaddq_s16(v1681, v1683);
  v1050 = vaddq_s16(v1049, v936);
  v1680 = v1041;
  v1681 = vorrq_s8(vandq_s8(vcltzq_s16(v1050), v1049), vmaxq_s16(v1050, 0));
  v1051 = vaddq_s32(vmlsl_u16(vmull_u16(*v1038.i8, *v1042.i8), *v1683.i8, *v1042.i8), v1043);
  v1052 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1038, v1042), v1683, v1042), v1043);
  v1053 = vuzp1q_s16(vmlaq_s32(v1051, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1051.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1051, v943), 0x18uLL), v944), vmlaq_s32(v1052, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1052.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1052, v943), 0x18uLL), v944));
  v1054 = vaddq_s16(v1053, v936);
  v1682 = v1048;
  v1683 = vorrq_s8(vandq_s8(vcltzq_s16(v1054), v1053), vmaxq_s16(v1054, 0));
  v1055 = v1685;
  v1056 = vaddq_s16(v1684, v1686);
  v1057 = vaddq_s16(v1056, v936);
  v1058 = vorrq_s8(vandq_s8(vcltzq_s16(v1057), v1056), vmaxq_s16(v1057, 0));
  v1059 = vdupq_n_s16(0x8DBu);
  v1060 = vdupq_n_s32(0x7327DBu);
  v1061 = vaddq_s32(vmlsl_u16(vmull_u16(*v1684.i8, *v1059.i8), *v1686.i8, *v1059.i8), v1060);
  v1062 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1684, v1059), v1686, v1059), v1060);
  v1063 = vuzp1q_s16(vmlaq_s32(v1061, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1061.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1061, v943), 0x18uLL), v944), vmlaq_s32(v1062, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1062.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1062, v943), 0x18uLL), v944));
  v1064 = vaddq_s16(v1063, v936);
  v1065 = vorrq_s8(vandq_s8(vcltzq_s16(v1064), v1063), vmaxq_s16(v1064, 0));
  v1066 = vaddq_s16(v1685, v1687);
  v1067 = vaddq_s16(v1066, v936);
  v1684 = v1058;
  v1685 = vorrq_s8(vandq_s8(vcltzq_s16(v1067), v1066), vmaxq_s16(v1067, 0));
  v1068 = vaddq_s32(vmlsl_u16(vmull_u16(*v1055.i8, *v1059.i8), *v1687.i8, *v1059.i8), v1060);
  v1069 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1055, v1059), v1687, v1059), v1060);
  v1070 = vuzp1q_s16(vmlaq_s32(v1068, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1068.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1068, v943), 0x18uLL), v944), vmlaq_s32(v1069, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1069.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1069, v943), 0x18uLL), v944));
  v1071 = vaddq_s16(v1070, v936);
  v1686 = v1065;
  v1687 = vorrq_s8(vandq_s8(vcltzq_s16(v1071), v1070), vmaxq_s16(v1071, 0));
  v1072 = v1657;
  v1073 = vaddq_s16(v1656, v1660);
  v1074 = vaddq_s16(v1073, v936);
  v1075 = vandq_s8(vcltzq_s16(v1074), v1073);
  v1076 = vdupq_n_s16(0x9B1u);
  v1077 = vorrq_s8(v1075, vmaxq_s16(v1074, 0));
  v1078 = vdupq_n_s32(0x7E06B1u);
  v1079 = vaddq_s32(vmlsl_u16(vmull_u16(*v1656.i8, *v1076.i8), *v1660.i8, *v1076.i8), v1078);
  v1080 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1656, v1076), v1660, v1076), v1078);
  v1081 = vuzp1q_s16(vmlaq_s32(v1079, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1079.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1079, v943), 0x18uLL), v944), vmlaq_s32(v1080, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1080.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1080, v943), 0x18uLL), v944));
  v1082 = vaddq_s16(v1081, v936);
  v1083 = vorrq_s8(vandq_s8(vcltzq_s16(v1082), v1081), vmaxq_s16(v1082, 0));
  v1084 = vaddq_s16(v1657, v1661);
  v1085 = vaddq_s16(v1084, v936);
  v1656 = v1077;
  v1657 = vorrq_s8(vandq_s8(vcltzq_s16(v1085), v1084), vmaxq_s16(v1085, 0));
  v1086 = vaddq_s32(vmlsl_u16(vmull_u16(*v1072.i8, *v1076.i8), *v1661.i8, *v1076.i8), v1078);
  v1087 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1072, v1076), v1661, v1076), v1078);
  v1088 = vuzp1q_s16(vmlaq_s32(v1086, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1086.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1086, v943), 0x18uLL), v944), vmlaq_s32(v1087, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1087.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1087, v943), 0x18uLL), v944));
  v1089 = vaddq_s16(v1088, v936);
  v1660 = v1083;
  v1661 = vorrq_s8(vandq_s8(vcltzq_s16(v1089), v1088), vmaxq_s16(v1089, 0));
  v1090 = v1659;
  v1091 = vaddq_s16(v1658, v1662);
  v1092 = vaddq_s16(v1091, v936);
  v1093 = vorrq_s8(vandq_s8(vcltzq_s16(v1092), v1091), vmaxq_s16(v1092, 0));
  v1094 = vaddq_s32(vmlsl_u16(vmull_u16(*v1658.i8, *v1076.i8), *v1662.i8, *v1076.i8), v1078);
  v1095 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1658, v1076), v1662, v1076), v1078);
  v1096 = vuzp1q_s16(vmlaq_s32(v1094, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1094.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1094, v943), 0x18uLL), v944), vmlaq_s32(v1095, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1095.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1095, v943), 0x18uLL), v944));
  v1097 = vaddq_s16(v1096, v936);
  v1098 = vorrq_s8(vandq_s8(vcltzq_s16(v1097), v1096), vmaxq_s16(v1097, 0));
  v1099 = vaddq_s16(v1659, v1663);
  v1100 = vaddq_s16(v1099, v936);
  v1658 = v1093;
  v1659 = vorrq_s8(vandq_s8(vcltzq_s16(v1100), v1099), vmaxq_s16(v1100, 0));
  v1101 = vmlsl_high_u16(vmull_high_u16(v1090, v1076), v1663, v1076);
  v1102 = vaddq_s32(vmlsl_u16(vmull_u16(*v1090.i8, *v1076.i8), *v1663.i8, *v1076.i8), v1078);
  v1103 = vaddq_s32(v1101, v1078);
  v1104 = vuzp1q_s16(vmlaq_s32(v1102, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1102.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1102, v943), 0x18uLL), v944), vmlaq_s32(v1103, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1103.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1103, v943), 0x18uLL), v944));
  v1105 = vaddq_s16(v1104, v936);
  v1662 = v1098;
  v1663 = vorrq_s8(vandq_s8(vcltzq_s16(v1105), v1104), vmaxq_s16(v1105, 0));
  v1106 = v1665;
  v1107 = vaddq_s16(v1664, v1668);
  v1108 = vaddq_s16(v1107, v936);
  v1109 = vorrq_s8(vandq_s8(vcltzq_s16(v1108), v1107), vmaxq_s16(v1108, 0));
  v1110 = vdupq_n_s16(0x598u);
  v1111 = vdupq_n_s32(0x48BD98u);
  v1112 = vaddq_s32(vmlsl_u16(vmull_u16(*v1664.i8, *v1110.i8), *v1668.i8, *v1110.i8), v1111);
  v1113 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1664, v1110), v1668, v1110), v1111);
  v1114 = vuzp1q_s16(vmlaq_s32(v1112, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1112.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1112, v943), 0x18uLL), v944), vmlaq_s32(v1113, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1113.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1113, v943), 0x18uLL), v944));
  v1115 = vaddq_s16(v1114, v936);
  v1116 = vorrq_s8(vandq_s8(vcltzq_s16(v1115), v1114), vmaxq_s16(v1115, 0));
  v1117 = vaddq_s16(v1665, v1669);
  v1118 = vaddq_s16(v1117, v936);
  v1664 = v1109;
  v1665 = vorrq_s8(vandq_s8(vcltzq_s16(v1118), v1117), vmaxq_s16(v1118, 0));
  v1119 = vaddq_s32(vmlsl_u16(vmull_u16(*v1106.i8, *v1110.i8), *v1669.i8, *v1110.i8), v1111);
  v1120 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1106, v1110), v1669, v1110), v1111);
  v1121 = vuzp1q_s16(vmlaq_s32(v1119, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1119.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1119, v943), 0x18uLL), v944), vmlaq_s32(v1120, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1120.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1120, v943), 0x18uLL), v944));
  v1122 = vaddq_s16(v1121, v936);
  v1668 = v1116;
  v1669 = vorrq_s8(vandq_s8(vcltzq_s16(v1122), v1121), vmaxq_s16(v1122, 0));
  v1123 = v1667;
  v1124 = vaddq_s16(v1666, v1670);
  v1125 = vaddq_s16(v1124, v936);
  v1126 = vorrq_s8(vandq_s8(vcltzq_s16(v1125), v1124), vmaxq_s16(v1125, 0));
  v1127 = vaddq_s32(vmlsl_u16(vmull_u16(*v1666.i8, *v1110.i8), *v1670.i8, *v1110.i8), v1111);
  v1128 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1666, v1110), v1670, v1110), v1111);
  v1129 = vuzp1q_s16(vmlaq_s32(v1127, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1127.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1127, v943), 0x18uLL), v944), vmlaq_s32(v1128, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1128.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1128, v943), 0x18uLL), v944));
  v1130 = vaddq_s16(v1129, v936);
  v1131 = vorrq_s8(vandq_s8(vcltzq_s16(v1130), v1129), vmaxq_s16(v1130, 0));
  v1132 = vaddq_s16(v1667, v1671);
  v1133 = vaddq_s16(v1132, v936);
  v1666 = v1126;
  v1667 = vorrq_s8(vandq_s8(vcltzq_s16(v1133), v1132), vmaxq_s16(v1133, 0));
  v1134 = vmlsl_high_u16(vmull_high_u16(v1123, v1110), v1671, v1110);
  v1135 = vaddq_s32(vmlsl_u16(vmull_u16(*v1123.i8, *v1110.i8), *v1671.i8, *v1110.i8), v1111);
  v1136 = vaddq_s32(v1134, v1111);
  v1137 = vuzp1q_s16(vmlaq_s32(v1135, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1135.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1135, v943), 0x18uLL), v944), vmlaq_s32(v1136, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1136.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1136, v943), 0x18uLL), v944));
  v1138 = vaddq_s16(v1137, v936);
  v1670 = v1131;
  v1671 = vorrq_s8(vandq_s8(vcltzq_s16(v1138), v1137), vmaxq_s16(v1138, 0));
  v1139 = v1673;
  v1140 = vaddq_s16(v1672, v1676);
  v1141 = vaddq_s16(v1140, v936);
  v1142 = vorrq_s8(vandq_s8(vcltzq_s16(v1141), v1140), vmaxq_s16(v1141, 0));
  v1143 = vdupq_n_s16(0xA8Bu);
  v1144 = vdupq_n_s32(0x89198Bu);
  v1145 = vaddq_s32(vmlsl_u16(vmull_u16(*v1672.i8, *v1143.i8), *v1676.i8, *v1143.i8), v1144);
  v1146 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1672, v1143), v1676, v1143), v1144);
  v1147 = vuzp1q_s16(vmlaq_s32(v1145, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1145.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1145, v943), 0x18uLL), v944), vmlaq_s32(v1146, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1146.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1146, v943), 0x18uLL), v944));
  v1148 = vaddq_s16(v1147, v936);
  v1149 = vorrq_s8(vandq_s8(vcltzq_s16(v1148), v1147), vmaxq_s16(v1148, 0));
  v1150 = vaddq_s16(v1673, v1677);
  v1151 = vaddq_s16(v1150, v936);
  v1672 = v1142;
  v1673 = vorrq_s8(vandq_s8(vcltzq_s16(v1151), v1150), vmaxq_s16(v1151, 0));
  v1152 = vaddq_s32(vmlsl_u16(vmull_u16(*v1139.i8, *v1143.i8), *v1677.i8, *v1143.i8), v1144);
  v1153 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1139, v1143), v1677, v1143), v1144);
  v1154 = vuzp1q_s16(vmlaq_s32(v1152, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1152.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1152, v943), 0x18uLL), v944), vmlaq_s32(v1153, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1153.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1153, v943), 0x18uLL), v944));
  v1155 = vaddq_s16(v1154, v936);
  v1676 = v1149;
  v1677 = vorrq_s8(vandq_s8(vcltzq_s16(v1155), v1154), vmaxq_s16(v1155, 0));
  v1156 = v1675;
  v1157 = vaddq_s16(v1674, v1678);
  v1158 = vaddq_s16(v1157, v936);
  v1159 = vorrq_s8(vandq_s8(vcltzq_s16(v1158), v1157), vmaxq_s16(v1158, 0));
  v1160 = vaddq_s32(vmlsl_u16(vmull_u16(*v1674.i8, *v1143.i8), *v1678.i8, *v1143.i8), v1144);
  v1161 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1674, v1143), v1678, v1143), v1144);
  v1162 = vuzp1q_s16(vmlaq_s32(v1160, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1160.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1160, v943), 0x18uLL), v944), vmlaq_s32(v1161, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1161.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1161, v943), 0x18uLL), v944));
  v1163 = vaddq_s16(v1162, v936);
  v1164 = vorrq_s8(vandq_s8(vcltzq_s16(v1163), v1162), vmaxq_s16(v1163, 0));
  v1165 = vaddq_s16(v1675, v1679);
  v1166 = vaddq_s16(v1165, v936);
  v1674 = v1159;
  v1675 = vorrq_s8(vandq_s8(vcltzq_s16(v1166), v1165), vmaxq_s16(v1166, 0));
  v1167 = vmlsl_high_u16(vmull_high_u16(v1156, v1143), v1679, v1143);
  v1168 = vaddq_s32(vmlsl_u16(vmull_u16(*v1156.i8, *v1143.i8), *v1679.i8, *v1143.i8), v1144);
  v1169 = vaddq_s32(v1167, v1144);
  v1170 = vuzp1q_s16(vmlaq_s32(v1168, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1168.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1168, v943), 0x18uLL), v944), vmlaq_s32(v1169, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1169.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1169, v943), 0x18uLL), v944));
  v1171 = vaddq_s16(v1170, v936);
  v1678 = v1164;
  v1679 = vorrq_s8(vandq_s8(vcltzq_s16(v1171), v1170), vmaxq_s16(v1171, 0));
  v1172 = v1681;
  v1173 = vaddq_s16(v1680, v1684);
  v1174 = vaddq_s16(v1173, v936);
  v1175 = vandq_s8(vcltzq_s16(v1174), v1173);
  v1176 = vdupq_n_s16(0x2AFu);
  v1177 = vorrq_s8(v1175, vmaxq_s16(v1174, 0));
  v1178 = vdupq_n_s32(0x22E5AFu);
  v1179 = vaddq_s32(vmlsl_u16(vmull_u16(*v1680.i8, *v1176.i8), *v1684.i8, *v1176.i8), v1178);
  v1180 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1680, v1176), v1684, v1176), v1178);
  v1181 = vuzp1q_s16(vmlaq_s32(v1179, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1179.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1179, v943), 0x18uLL), v944), vmlaq_s32(v1180, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1180.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1180, v943), 0x18uLL), v944));
  v1182 = vaddq_s16(v1181, v936);
  v1183 = vorrq_s8(vandq_s8(vcltzq_s16(v1182), v1181), vmaxq_s16(v1182, 0));
  v1184 = vaddq_s16(v1681, v1685);
  v1185 = vaddq_s16(v1184, v936);
  v1680 = v1177;
  v1681 = vorrq_s8(vandq_s8(vcltzq_s16(v1185), v1184), vmaxq_s16(v1185, 0));
  v1186 = vaddq_s32(vmlsl_u16(vmull_u16(*v1172.i8, *v1176.i8), *v1685.i8, *v1176.i8), v1178);
  v1187 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1172, v1176), v1685, v1176), v1178);
  v1188 = vuzp1q_s16(vmlaq_s32(v1186, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1186.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1186, v943), 0x18uLL), v944), vmlaq_s32(v1187, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1187.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1187, v943), 0x18uLL), v944));
  v1189 = vaddq_s16(v1188, v936);
  v1684 = v1183;
  v1685 = vorrq_s8(vandq_s8(vcltzq_s16(v1189), v1188), vmaxq_s16(v1189, 0));
  v1190 = v1683;
  v1191 = vaddq_s16(v1682, v1686);
  v1192 = vaddq_s16(v1191, v936);
  v1193 = vorrq_s8(vandq_s8(vcltzq_s16(v1192), v1191), vmaxq_s16(v1192, 0));
  v1194 = vaddq_s32(vmlsl_u16(vmull_u16(*v1682.i8, *v1176.i8), *v1686.i8, *v1176.i8), v1178);
  v1195 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1682, v1176), v1686, v1176), v1178);
  v1196 = vuzp1q_s16(vmlaq_s32(v1194, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1194.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1194, v943), 0x18uLL), v944), vmlaq_s32(v1195, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1195.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1195, v943), 0x18uLL), v944));
  v1197 = vaddq_s16(v1196, v936);
  v1198 = vorrq_s8(vandq_s8(vcltzq_s16(v1197), v1196), vmaxq_s16(v1197, 0));
  v1199 = vaddq_s16(v1683, v1687);
  v1200 = vaddq_s16(v1199, v936);
  v1682 = v1193;
  v1683 = vorrq_s8(vandq_s8(vcltzq_s16(v1200), v1199), vmaxq_s16(v1200, 0));
  v1201 = vmlsl_high_u16(vmull_high_u16(v1190, v1176), v1687, v1176);
  v1202 = vaddq_s32(vmlsl_u16(vmull_u16(*v1190.i8, *v1176.i8), *v1687.i8, *v1176.i8), v1178);
  v1203 = vaddq_s32(v1201, v1178);
  v1204 = vuzp1q_s16(vmlaq_s32(v1202, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1202.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1202, v943), 0x18uLL), v944), vmlaq_s32(v1203, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1203.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1203, v943), 0x18uLL), v944));
  v1205 = vaddq_s16(v1204, v936);
  v1686 = v1198;
  v1687 = vorrq_s8(vandq_s8(vcltzq_s16(v1205), v1204), vmaxq_s16(v1205, 0));
  v1206 = v1657;
  v1207 = vaddq_s16(v1656, v1664);
  v1208 = vaddq_s16(v1207, v936);
  v1209 = vorrq_s8(vandq_s8(vcltzq_s16(v1208), v1207), vmaxq_s16(v1208, 0));
  v1207.i64[0] = 0x28002800280028;
  v1207.i64[1] = 0x28002800280028;
  v1210 = vdupq_n_s32(0x20828u);
  v1211 = vaddq_s32(vmlsl_u16(vmull_u16(*v1656.i8, 0x28002800280028), *v1664.i8, 0x28002800280028), v1210);
  v1212 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1656, v1207), v1664, v1207), v1210);
  v1213 = vuzp1q_s16(vmlaq_s32(v1211, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1211.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1211, v943), 0x18uLL), v944), vmlaq_s32(v1212, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1212.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1212, v943), 0x18uLL), v944));
  v1214 = vaddq_s16(v1213, v936);
  v1215 = vorrq_s8(vandq_s8(vcltzq_s16(v1214), v1213), vmaxq_s16(v1214, 0));
  v1216 = vaddq_s16(v1657, v1665);
  v1217 = vaddq_s16(v1216, v936);
  v1656 = v1209;
  v1657 = vorrq_s8(vandq_s8(vcltzq_s16(v1217), v1216), vmaxq_s16(v1217, 0));
  v1218 = vaddq_s32(vmlsl_u16(vmull_u16(*v1206.i8, 0x28002800280028), *v1665.i8, 0x28002800280028), v1210);
  v1219 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1206, v1207), v1665, v1207), v1210);
  v1220 = vuzp1q_s16(vmlaq_s32(v1218, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1218.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1218, v943), 0x18uLL), v944), vmlaq_s32(v1219, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1219.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1219, v943), 0x18uLL), v944));
  v1221 = vaddq_s16(v1220, v936);
  v1664 = v1215;
  v1665 = vorrq_s8(vandq_s8(vcltzq_s16(v1221), v1220), vmaxq_s16(v1221, 0));
  v1222 = v1659;
  v1223 = vaddq_s16(v1658, v1666);
  v1224 = vaddq_s16(v1223, v936);
  v1225 = vorrq_s8(vandq_s8(vcltzq_s16(v1224), v1223), vmaxq_s16(v1224, 0));
  v1226 = vaddq_s32(vmlsl_u16(vmull_u16(*v1658.i8, 0x28002800280028), *v1666.i8, 0x28002800280028), v1210);
  v1227 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1658, v1207), v1666, v1207), v1210);
  v1228 = vuzp1q_s16(vmlaq_s32(v1226, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1226.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1226, v943), 0x18uLL), v944), vmlaq_s32(v1227, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1227.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1227, v943), 0x18uLL), v944));
  v1229 = vaddq_s16(v1228, v936);
  v1230 = vorrq_s8(vandq_s8(vcltzq_s16(v1229), v1228), vmaxq_s16(v1229, 0));
  v1231 = vaddq_s16(v1659, v1667);
  v1232 = vaddq_s16(v1231, v936);
  v1658 = v1225;
  v1659 = vorrq_s8(vandq_s8(vcltzq_s16(v1232), v1231), vmaxq_s16(v1232, 0));
  v1233 = vaddq_s32(vmlsl_u16(vmull_u16(*v1222.i8, 0x28002800280028), *v1667.i8, 0x28002800280028), v1210);
  v1234 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1222, v1207), v1667, v1207), v1210);
  v1235 = vuzp1q_s16(vmlaq_s32(v1233, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1233.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1233, v943), 0x18uLL), v944), vmlaq_s32(v1234, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1234.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1234, v943), 0x18uLL), v944));
  v1236 = vaddq_s16(v1235, v936);
  v1666 = v1230;
  v1667 = vorrq_s8(vandq_s8(vcltzq_s16(v1236), v1235), vmaxq_s16(v1236, 0));
  v1237 = v1661;
  v1238 = vaddq_s16(v1660, v1668);
  v1239 = vaddq_s16(v1238, v936);
  v1240 = vorrq_s8(vandq_s8(vcltzq_s16(v1239), v1238), vmaxq_s16(v1239, 0));
  v1241 = vaddq_s32(vmlsl_u16(vmull_u16(*v1660.i8, 0x28002800280028), *v1668.i8, 0x28002800280028), v1210);
  v1242 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1660, v1207), v1668, v1207), v1210);
  v1243 = vuzp1q_s16(vmlaq_s32(v1241, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1241.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1241, v943), 0x18uLL), v944), vmlaq_s32(v1242, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1242.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1242, v943), 0x18uLL), v944));
  v1244 = vaddq_s16(v1243, v936);
  v1245 = vorrq_s8(vandq_s8(vcltzq_s16(v1244), v1243), vmaxq_s16(v1244, 0));
  v1246 = vaddq_s16(v1661, v1669);
  v1247 = vaddq_s16(v1246, v936);
  v1660 = v1240;
  v1661 = vorrq_s8(vandq_s8(vcltzq_s16(v1247), v1246), vmaxq_s16(v1247, 0));
  v1248 = vaddq_s32(vmlsl_u16(vmull_u16(*v1237.i8, 0x28002800280028), *v1669.i8, 0x28002800280028), v1210);
  v1249 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1237, v1207), v1669, v1207), v1210);
  v1250 = vuzp1q_s16(vmlaq_s32(v1248, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1248.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1248, v943), 0x18uLL), v944), vmlaq_s32(v1249, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1249.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1249, v943), 0x18uLL), v944));
  v1251 = vaddq_s16(v1250, v936);
  v1668 = v1245;
  v1669 = vorrq_s8(vandq_s8(vcltzq_s16(v1251), v1250), vmaxq_s16(v1251, 0));
  v1252 = v1663;
  v1253 = vaddq_s16(v1662, v1670);
  v1254 = vaddq_s16(v1253, v936);
  v1255 = vorrq_s8(vandq_s8(vcltzq_s16(v1254), v1253), vmaxq_s16(v1254, 0));
  v1256 = vaddq_s32(vmlsl_u16(vmull_u16(*v1662.i8, 0x28002800280028), *v1670.i8, 0x28002800280028), v1210);
  v1257 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1662, v1207), v1670, v1207), v1210);
  v1258 = vuzp1q_s16(vmlaq_s32(v1256, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1256.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1256, v943), 0x18uLL), v944), vmlaq_s32(v1257, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1257.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1257, v943), 0x18uLL), v944));
  v1259 = vaddq_s16(v1258, v936);
  v1260 = vorrq_s8(vandq_s8(vcltzq_s16(v1259), v1258), vmaxq_s16(v1259, 0));
  v1261 = vaddq_s16(v1663, v1671);
  v1262 = vaddq_s16(v1261, v936);
  v1662 = v1255;
  v1663 = vorrq_s8(vandq_s8(vcltzq_s16(v1262), v1261), vmaxq_s16(v1262, 0));
  v1263 = vmlsl_high_u16(vmull_high_u16(v1252, v1207), v1671, v1207);
  v1264 = vaddq_s32(vmlsl_u16(vmull_u16(*v1252.i8, 0x28002800280028), *v1671.i8, 0x28002800280028), v1210);
  v1265 = vaddq_s32(v1263, v1210);
  v1266 = vuzp1q_s16(vmlaq_s32(v1264, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1264.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1264, v943), 0x18uLL), v944), vmlaq_s32(v1265, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1265.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1265, v943), 0x18uLL), v944));
  v1267 = vaddq_s16(v1266, v936);
  v1670 = v1260;
  v1671 = vorrq_s8(vandq_s8(vcltzq_s16(v1267), v1266), vmaxq_s16(v1267, 0));
  v1268 = v1673;
  v1269 = vaddq_s16(v1672, v1680);
  v1270 = vaddq_s16(v1269, v936);
  v1271 = vorrq_s8(vandq_s8(vcltzq_s16(v1270), v1269), vmaxq_s16(v1270, 0));
  v1272 = vdupq_n_s16(0x2EDu);
  v1273 = vdupq_n_s32(0x260BEDu);
  v1274 = vaddq_s32(vmlsl_u16(vmull_u16(*v1672.i8, *v1272.i8), *v1680.i8, *v1272.i8), v1273);
  v1275 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1672, v1272), v1680, v1272), v1273);
  v1276 = vuzp1q_s16(vmlaq_s32(v1274, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1274.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1274, v943), 0x18uLL), v944), vmlaq_s32(v1275, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1275.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1275, v943), 0x18uLL), v944));
  v1277 = vaddq_s16(v1276, v936);
  v1278 = vorrq_s8(vandq_s8(vcltzq_s16(v1277), v1276), vmaxq_s16(v1277, 0));
  v1279 = vaddq_s16(v1673, v1681);
  v1280 = vaddq_s16(v1279, v936);
  v1672 = v1271;
  v1673 = vorrq_s8(vandq_s8(vcltzq_s16(v1280), v1279), vmaxq_s16(v1280, 0));
  v1281 = vaddq_s32(vmlsl_u16(vmull_u16(*v1268.i8, *v1272.i8), *v1681.i8, *v1272.i8), v1273);
  v1282 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1268, v1272), v1681, v1272), v1273);
  v1283 = vuzp1q_s16(vmlaq_s32(v1281, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1281.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1281, v943), 0x18uLL), v944), vmlaq_s32(v1282, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1282.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1282, v943), 0x18uLL), v944));
  v1284 = vaddq_s16(v1283, v936);
  v1680 = v1278;
  v1681 = vorrq_s8(vandq_s8(vcltzq_s16(v1284), v1283), vmaxq_s16(v1284, 0));
  v1285 = v1675;
  v1286 = vaddq_s16(v1674, v1682);
  v1287 = vaddq_s16(v1286, v936);
  v1288 = vorrq_s8(vandq_s8(vcltzq_s16(v1287), v1286), vmaxq_s16(v1287, 0));
  v1289 = vaddq_s32(vmlsl_u16(vmull_u16(*v1674.i8, *v1272.i8), *v1682.i8, *v1272.i8), v1273);
  v1290 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1674, v1272), v1682, v1272), v1273);
  v1291 = vuzp1q_s16(vmlaq_s32(v1289, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1289.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1289, v943), 0x18uLL), v944), vmlaq_s32(v1290, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1290.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1290, v943), 0x18uLL), v944));
  v1292 = vaddq_s16(v1291, v936);
  v1293 = vorrq_s8(vandq_s8(vcltzq_s16(v1292), v1291), vmaxq_s16(v1292, 0));
  v1294 = vaddq_s16(v1675, v1683);
  v1295 = vaddq_s16(v1294, v936);
  v1674 = v1288;
  v1675 = vorrq_s8(vandq_s8(vcltzq_s16(v1295), v1294), vmaxq_s16(v1295, 0));
  v1296 = vaddq_s32(vmlsl_u16(vmull_u16(*v1285.i8, *v1272.i8), *v1683.i8, *v1272.i8), v1273);
  v1297 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1285, v1272), v1683, v1272), v1273);
  v1298 = vuzp1q_s16(vmlaq_s32(v1296, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1296.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1296, v943), 0x18uLL), v944), vmlaq_s32(v1297, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1297.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1297, v943), 0x18uLL), v944));
  v1299 = vaddq_s16(v1298, v936);
  v1682 = v1293;
  v1683 = vorrq_s8(vandq_s8(vcltzq_s16(v1299), v1298), vmaxq_s16(v1299, 0));
  v1300 = v1677;
  v1301 = vaddq_s16(v1676, v1684);
  v1302 = vaddq_s16(v1301, v936);
  v1303 = vorrq_s8(vandq_s8(vcltzq_s16(v1302), v1301), vmaxq_s16(v1302, 0));
  v1304 = vaddq_s32(vmlsl_u16(vmull_u16(*v1676.i8, *v1272.i8), *v1684.i8, *v1272.i8), v1273);
  v1305 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1676, v1272), v1684, v1272), v1273);
  v1306 = vuzp1q_s16(vmlaq_s32(v1304, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1304.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1304, v943), 0x18uLL), v944), vmlaq_s32(v1305, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1305.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1305, v943), 0x18uLL), v944));
  v1307 = vaddq_s16(v1306, v936);
  v1308 = vorrq_s8(vandq_s8(vcltzq_s16(v1307), v1306), vmaxq_s16(v1307, 0));
  v1309 = vaddq_s16(v1677, v1685);
  v1310 = vaddq_s16(v1309, v936);
  v1676 = v1303;
  v1677 = vorrq_s8(vandq_s8(vcltzq_s16(v1310), v1309), vmaxq_s16(v1310, 0));
  v1311 = vaddq_s32(vmlsl_u16(vmull_u16(*v1300.i8, *v1272.i8), *v1685.i8, *v1272.i8), v1273);
  v1312 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1300, v1272), v1685, v1272), v1273);
  v1313 = vuzp1q_s16(vmlaq_s32(v1311, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1311.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1311, v943), 0x18uLL), v944), vmlaq_s32(v1312, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1312.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1312, v943), 0x18uLL), v944));
  v1314 = vaddq_s16(v1313, v936);
  v1684 = v1308;
  v1685 = vorrq_s8(vandq_s8(vcltzq_s16(v1314), v1313), vmaxq_s16(v1314, 0));
  v1315 = v1679;
  v1316 = vaddq_s16(v1678, v1686);
  v1317 = vaddq_s16(v1316, v936);
  v1318 = vorrq_s8(vandq_s8(vcltzq_s16(v1317), v1316), vmaxq_s16(v1317, 0));
  v1319 = vaddq_s32(vmlsl_u16(vmull_u16(*v1678.i8, *v1272.i8), *v1686.i8, *v1272.i8), v1273);
  v1320 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v1678, v1272), v1686, v1272), v1273);
  v1321 = vuzp1q_s16(vmlaq_s32(v1319, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1319.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1319, v943), 0x18uLL), v944), vmlaq_s32(v1320, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1320.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1320, v943), 0x18uLL), v944));
  v1322 = vaddq_s16(v1321, v936);
  v1323 = vorrq_s8(vandq_s8(vcltzq_s16(v1322), v1321), vmaxq_s16(v1322, 0));
  v1324 = vaddq_s16(v1679, v1687);
  v1325 = vaddq_s16(v1324, v936);
  v1678 = v1318;
  v1679 = vorrq_s8(vandq_s8(vcltzq_s16(v1325), v1324), vmaxq_s16(v1325, 0));
  v1326 = vmlsl_high_u16(vmull_high_u16(v1315, v1272), v1687, v1272);
  v1327 = vaddq_s32(vmlsl_u16(vmull_u16(*v1315.i8, *v1272.i8), *v1687.i8, *v1272.i8), v1273);
  v1328 = vaddq_s32(v1326, v1273);
  v1329 = vuzp1q_s16(vmlaq_s32(v1327, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1327.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1327, v943), 0x18uLL), v944), vmlaq_s32(v1328, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1328.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1328, v943), 0x18uLL), v944));
  v1330 = vaddq_s16(v1329, v936);
  v1686 = v1323;
  v1687 = vorrq_s8(vandq_s8(vcltzq_s16(v1330), v1329), vmaxq_s16(v1330, 0));
  do
  {
    v1331 = &v1656.i8[v933];
    v1332 = *(&v1672 + v933);
    v1333 = *(&v1656 + v933);
    v1334 = vaddq_s16(v1333, v1332);
    v1335 = vaddq_s16(v1334, v936);
    v1336 = vdupq_n_s16(0x640u);
    v1337 = vmlsl_high_u16(vmull_high_u16(v1333, v1336), v1332, v1336);
    v1338 = vmlsl_u16(vmull_u16(*v1333.i8, *v1336.i8), *v1332.i8, *v1336.i8);
    v1339 = vdupq_n_s32(0x514640u);
    v1340 = vaddq_s32(v1338, v1339);
    v1341 = vaddq_s32(v1337, v1339);
    v1342 = vuzp1q_s16(vmlaq_s32(v1340, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1340.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1340, v943), 0x18uLL), v944), vmlaq_s32(v1341, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1341.i8, *v943.i8), 0x18uLL), vmull_high_u32(v1341, v943), 0x18uLL), v944));
    v1343 = vaddq_s16(v1342, v936);
    *v1331 = vorrq_s8(vandq_s8(vcltzq_s16(v1335), v1334), vmaxq_s16(v1335, 0));
    v1331[16] = vorrq_s8(vandq_s8(vcltzq_s16(v1343), v1342), vmaxq_s16(v1343, 0));
    v933 += 16;
  }

  while (v933 != 256);
  v1344 = 0;
  v1345 = vdupq_n_s16(0xCE7u);
  v1346 = vdupq_n_s32(0x13AFu);
  v1347.i64[0] = 0xF2000000F2;
  v1347.i64[1] = 0xF2000000F2;
  v1348.i64[0] = 0xD000D000D000D00;
  v1348.i64[1] = 0xD000D000D000D00;
  do
  {
    v1349 = *(&v1656 + v1344);
    v1350 = vmull_u16(*v1349.i8, *v1345.i8);
    v1351 = vmull_high_u16(v1349, v1345);
    v1352 = vuzp1q_s16(vmlal_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1350.i8, *v1346.i8), 0x18uLL), vmull_high_u32(v1350, v1346), 0x18uLL), v1347), *v1349.i8, *v1345.i8), vmlal_high_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v1351.i8, *v1346.i8), 0x18uLL), vmull_high_u32(v1351, v1346), 0x18uLL), v1347), v1349, v1345));
    v1353 = vaddq_s16(v1352, v1348);
    *(&v1656 + v1344) = vorrq_s8(vandq_s8(vcltzq_s16(v1353), v1352), vmaxq_s16(v1353, 0));
    v1344 += 16;
  }

  while (v1344 != 512);
  v1354 = 0;
  v1355.i64[0] = 0xD000D000D000D00;
  v1355.i64[1] = 0xD000D000D000D00;
  do
  {
    v1356 = &v1656.i8[v1354];
    v1357 = vaddq_s16(*&v1636[v1354], *(&v1656 + v1354));
    v1358 = vaddq_s16(*&v1636[v1354 + 16], *(&v1656 + v1354 + 16));
    v1359 = vaddq_s16(v1357, v1355);
    v1360 = vaddq_s16(v1358, v1355);
    *v1356 = vorrq_s8(vandq_s8(vcltzq_s16(v1359), v1357), vmaxq_s16(v1359, 0));
    v1356[1] = vorrq_s8(vandq_s8(vcltzq_s16(v1360), v1358), vmaxq_s16(v1360, 0));
    v1354 += 32;
  }

  while (v1354 != 512);
  v1361 = 0;
  v1362 = *(v1587 + 16);
  v1363.i64[0] = 0x101010101010101;
  v1363.i64[1] = 0x101010101010101;
  v1364 = vandq_s8(vshrq_n_u8(*v1587, 6uLL), v1363);
  v1365 = vandq_s8(vshrq_n_u8(*v1587, 1uLL), v1363);
  v1366 = vandq_s8(*v1587, v1363);
  v1367 = vandq_s8(vshrq_n_u8(*v1587, 2uLL), v1363);
  v1368 = vandq_s8(vshrq_n_u8(*v1587, 3uLL), v1363);
  v1706.val[1] = vmovl_high_u8(v1368);
  v1706.val[0] = vmovl_high_u8(v1367);
  v1708.val[0] = vmovl_high_u8(v1366);
  v1708.val[1] = vmovl_high_u8(v1365);
  v1714.val[1] = vmovl_u8(*v1368.i8);
  v1714.val[0] = vmovl_u8(*v1367.i8);
  v1715.val[0] = vmovl_u8(*v1366.i8);
  v1715.val[1] = vmovl_u8(*v1365.i8);
  v1365.i32[0] = vzip1q_s16(v1715.val[0], v1715.val[1]).u32[0];
  v1365.i32[1] = vqtbl2q_s8(v1714, xmmword_273BA7020).i32[1];
  v1369 = vshrq_n_u8(*v1587, 7uLL);
  v1370 = vandq_s8(vshrq_n_u8(*v1587, 4uLL), v1363);
  v1371 = vandq_s8(vshrq_n_u8(*v1587, 5uLL), v1363);
  v1698.val[1] = vmovl_u8(*v1371.i8);
  v1698.val[0] = vmovl_u8(*v1370.i8);
  v1699.val[0] = vmovl_u8(*v1364.i8);
  v1699.val[1] = vmovl_u8(*v1369.i8);
  v1372 = vqtbl2q_s8(v1698, xmmword_273BA7010);
  v1372.i32[3] = vqtbl2q_s8(v1699, xmmword_273BA7000).i32[3];
  v1365.i64[1] = v1372.i64[1];
  v1601 = v1365;
  v1365.i32[0] = vtrn2q_s16(v1715.val[0], v1715.val[1]).u32[0];
  v1365.i32[1] = vzip1q_s16(*&v1714, *(&v1714 + 16)).i32[1];
  v1373 = vqtbl2q_s8(v1698, xmmword_273BA7040);
  v1373.i32[3] = vqtbl2q_s8(v1699, xmmword_273BA7030).i32[3];
  v1365.i64[1] = v1373.i64[1];
  v1599 = v1365;
  v1368.i16[2] = v1714.val[0].i16[2];
  v1368.i16[3] = v1714.val[1].i16[2];
  v1365.i32[0] = vqtbl2q_s8(v1715, xmmword_273BA7060).u32[0];
  v1365.i32[1] = v1368.i32[1];
  v1374 = vzip1q_s16(v1698.val[0], v1698.val[1]);
  v1374.i32[3] = vqtbl2q_s8(v1699, xmmword_273BA7050).i32[3];
  v1365.i64[1] = v1374.i64[1];
  v1597 = v1365;
  v1365.i32[0] = vqtbl2q_s8(v1715, xmmword_273BA7080).u32[0];
  v1365.i32[1] = vtrn2q_s16(*&v1714, *(&v1714 + 16)).i32[1];
  v1375 = vqtbl2q_s8(v1698, xmmword_273BA7070);
  v1375.i32[3] = vzip1q_s16(*&v1699, *(&v1699 + 16)).i32[3];
  v1365.i64[1] = v1375.i64[1];
  v1596 = v1365;
  v1373.i32[0] = vzip2q_s16(v1715.val[0], v1715.val[1]).u32[0];
  v1373.i32[1] = vqtbl2q_s8(v1714, xmmword_273BA70A0).i32[1];
  LOWORD(v1376) = v1698.val[0].i16[4];
  WORD1(v1376) = v1698.val[1].i16[4];
  v1712.val[1] = vmovl_high_u8(v1371);
  v1712.val[0] = vmovl_high_u8(v1370);
  HIDWORD(v1376) = vqtbl2q_s8(v1699, xmmword_273BA7090).i32[3];
  v1373.i64[1] = v1376;
  v1374.i32[0] = vqtbl2q_s8(v1715, xmmword_273BA70C0).u32[0];
  v1374.i32[1] = vzip2q_s16(*&v1714, *(&v1714 + 16)).i32[1];
  v1377 = vtrn2q_s16(v1698.val[0], v1698.val[1]);
  v1377.i32[3] = vqtbl2q_s8(v1699, xmmword_273BA70B0).i32[3];
  v1374.i64[1] = v1377.i64[1];
  v1591 = v1374;
  v1377.i32[0] = vqtbl2q_s8(v1715, xmmword_273BA70E0).u32[0];
  v1377.i32[1] = vqtbl2q_s8(v1714, xmmword_273BA70D0).i32[1];
  LOWORD(v1378) = v1699.val[0].i16[6];
  HIWORD(v1378) = v1699.val[1].i16[6];
  v1716.val[0] = vmovl_high_u8(v1364);
  v1716.val[1] = vmovl_high_u8(v1369);
  v1379 = vzip2q_s16(v1698.val[0], v1698.val[1]);
  v1379.i32[3] = v1378;
  v1377.i64[1] = v1379.i64[1];
  v1379.i32[0] = vqtbl2q_s8(v1715, xmmword_273BA7110).u32[0];
  v1379.i32[1] = vqtbl2q_s8(v1714, xmmword_273BA7100).i32[1];
  v1714.val[0] = vqtbl2q_s8(v1698, xmmword_273BA70F0);
  v1714.val[0].i32[3] = vzip2q_s16(*&v1699, *(&v1699 + 16)).i32[3];
  v1379.i64[1] = v1714.val[0].i64[1];
  v1714.val[0].i32[0] = vzip1q_s16(v1708.val[0], v1708.val[1]).u32[0];
  v1714.val[0].i32[1] = vqtbl2q_s8(v1706, xmmword_273BA7020).i32[1];
  v1714.val[1] = vqtbl2q_s8(v1712, xmmword_273BA7010);
  v1714.val[1].i32[3] = vqtbl2q_s8(v1716, xmmword_273BA7000).i32[3];
  v1714.val[0].i64[1] = v1714.val[1].i64[1];
  v1715.val[0].i32[0] = vtrn2q_s16(v1708.val[0], v1708.val[1]).u32[0];
  v1715.val[0].i32[1] = vzip1q_s16(*&v1706, *(&v1706 + 16)).i32[1];
  v1714.val[1] = vqtbl2q_s8(v1712, xmmword_273BA7040);
  v1714.val[1].i32[3] = vqtbl2q_s8(v1716, xmmword_273BA7030).i32[3];
  v1715.val[0].i64[1] = v1714.val[1].i64[1];
  v1714.val[1].i16[2] = v1706.val[0].i16[2];
  v1714.val[1].i16[3] = v1706.val[1].i16[2];
  v1715.val[1].i32[0] = vqtbl2q_s8(v1708, xmmword_273BA7060).u32[0];
  v1715.val[1].i32[1] = v1714.val[1].i32[1];
  v1714.val[1] = vzip1q_s16(v1712.val[0], v1712.val[1]);
  v1714.val[1].i32[3] = vqtbl2q_s8(v1716, xmmword_273BA7050).i32[3];
  v1715.val[1].i64[1] = v1714.val[1].i64[1];
  v1369.i32[0] = vqtbl2q_s8(v1708, xmmword_273BA7080).u32[0];
  v1369.i32[1] = vtrn2q_s16(*&v1706, *(&v1706 + 16)).i32[1];
  v1714.val[1] = vqtbl2q_s8(v1712, xmmword_273BA7070);
  v1714.val[1].i32[3] = vzip1q_s16(*&v1716, *(&v1716 + 16)).i32[3];
  v1369.i64[1] = v1714.val[1].i64[1];
  v1714.val[1].i32[0] = vzip2q_s16(v1708.val[0], v1708.val[1]).u32[0];
  v1714.val[1].i32[1] = vqtbl2q_s8(v1706, xmmword_273BA70A0).i32[1];
  LOWORD(v1380) = v1712.val[0].i16[4];
  WORD1(v1380) = v1712.val[1].i16[4];
  HIDWORD(v1380) = vqtbl2q_s8(v1716, xmmword_273BA7090).i32[3];
  v1714.val[1].i64[1] = v1380;
  v1698.val[0].i32[0] = vqtbl2q_s8(v1708, xmmword_273BA70C0).u32[0];
  v1698.val[0].i32[1] = vzip2q_s16(*&v1706, *(&v1706 + 16)).i32[1];
  v1381 = vtrn2q_s16(v1712.val[0], v1712.val[1]);
  v1381.i32[3] = vqtbl2q_s8(v1716, xmmword_273BA70B0).i32[3];
  v1698.val[0].i64[1] = v1381.i64[1];
  v1698.val[1].i32[0] = vqtbl2q_s8(v1708, xmmword_273BA70E0).u32[0];
  v1698.val[1].i32[1] = vqtbl2q_s8(v1706, xmmword_273BA70D0).i32[1];
  v1381.i16[6] = v1716.val[0].i16[6];
  v1381.i16[7] = v1716.val[1].i16[6];
  v1699.val[0] = vzip2q_s16(v1712.val[0], v1712.val[1]);
  v1699.val[0].i32[3] = v1381.i32[3];
  v1698.val[1].i64[1] = v1699.val[0].i64[1];
  v1706.val[0] = vqtbl2q_s8(v1706, xmmword_273BA7100);
  v1706.val[1].i32[0] = vqtbl2q_s8(v1708, xmmword_273BA7110).u32[0];
  v1706.val[1].i32[1] = v1706.val[0].i32[1];
  v1706.val[0] = vqtbl2q_s8(v1712, xmmword_273BA70F0);
  v1706.val[0].i32[3] = vzip2q_s16(*&v1716, *(&v1716 + 16)).i32[3];
  v1706.val[1].i64[1] = v1706.val[0].i64[1];
  v1613 = v1698.val[1];
  v1614 = v1706.val[1];
  v1611 = v1714.val[1];
  v1612 = v1698.val[0];
  v1609 = v1715.val[1];
  v1610 = v1369;
  v1607 = v1714.val[0];
  v1608 = v1715.val[0];
  v1605 = v1377;
  v1606 = v1379;
  v1708.val[1] = vandq_s8(vshrq_n_u8(v1362, 2uLL), v1363);
  v1382 = vandq_s8(vshrq_n_u8(v1362, 3uLL), v1363);
  v1706.val[1] = vmovl_high_u8(v1382);
  v1706.val[0] = vmovl_high_u8(v1708.val[1]);
  v1717.val[1] = vmovl_u8(*v1382.i8);
  v1717.val[0] = vmovl_u8(*v1708.val[1].i8);
  v1715.val[1] = vandq_s8(vshrq_n_u8(v1362, 6uLL), v1363);
  v1383 = vandq_s8(vshrq_n_u8(v1362, 1uLL), v1363);
  v1384 = vandq_s8(vshrq_n_u8(v1362, 4uLL), v1363);
  v1714.val[0] = vandq_s8(vshrq_n_u8(v1362, 5uLL), v1363);
  v1385 = vandq_s8(v1362, v1363);
  v1708.val[0] = vmovl_high_u8(v1385);
  v1708.val[1] = vmovl_high_u8(v1383);
  v1698.val[0] = vmovl_u8(*v1385.i8);
  v1698.val[1] = vmovl_u8(*v1383.i8);
  v1385.i32[0] = vzip1q_s16(v1698.val[0], v1698.val[1]).u32[0];
  v1385.i32[1] = vqtbl2q_s8(v1717, xmmword_273BA7020).i32[1];
  v1386 = vshrq_n_u8(v1362, 7uLL);
  v1699.val[1] = vmovl_u8(*v1714.val[0].i8);
  v1699.val[0] = vmovl_u8(*v1384.i8);
  v1700.val[0] = vmovl_u8(*v1715.val[1].i8);
  v1700.val[1] = vmovl_u8(*v1386.i8);
  v1387 = vqtbl2q_s8(v1699, xmmword_273BA7010);
  v1387.i32[3] = vqtbl2q_s8(v1700, xmmword_273BA7000).i32[3];
  v1385.i64[1] = v1387.i64[1];
  v1387.i32[0] = vtrn2q_s16(v1698.val[0], v1698.val[1]).u32[0];
  v1387.i32[1] = vzip1q_s16(*&v1717, *(&v1717 + 16)).i32[1];
  v1388 = vqtbl2q_s8(v1699, xmmword_273BA7040);
  v1388.i32[3] = vqtbl2q_s8(v1700, xmmword_273BA7030).i32[3];
  v1387.i64[1] = v1388.i64[1];
  v1712.val[0].i16[2] = v1717.val[0].i16[2];
  v1712.val[0].i16[3] = v1717.val[1].i16[2];
  v1388.i32[0] = vqtbl2q_s8(v1698, xmmword_273BA7060).u32[0];
  v1388.i32[1] = v1712.val[0].i32[1];
  v1712.val[0] = vzip1q_s16(v1699.val[0], v1699.val[1]);
  v1712.val[0].i32[3] = vqtbl2q_s8(v1700, xmmword_273BA7050).i32[3];
  v1388.i64[1] = v1712.val[0].i64[1];
  v1712.val[0].i32[0] = vqtbl2q_s8(v1698, xmmword_273BA7080).u32[0];
  v1712.val[0].i32[1] = vtrn2q_s16(*&v1717, *(&v1717 + 16)).i32[1];
  v1712.val[1] = vqtbl2q_s8(v1699, xmmword_273BA7070);
  v1712.val[1].i32[3] = vzip1q_s16(*&v1700, *(&v1700 + 16)).i32[3];
  v1712.val[0].i64[1] = v1712.val[1].i64[1];
  v1712.val[1].i32[0] = vzip2q_s16(v1698.val[0], v1698.val[1]).u32[0];
  v1712.val[1].i32[1] = vqtbl2q_s8(v1717, xmmword_273BA70A0).i32[1];
  v1716.val[0].i16[4] = v1699.val[0].i16[4];
  v1716.val[0].i16[5] = v1699.val[1].i16[4];
  v1715.val[0] = vmovl_high_u8(v1714.val[0]);
  v1714.val[1] = vmovl_high_u8(v1384);
  v1716.val[0].i32[3] = vqtbl2q_s8(v1700, xmmword_273BA7090).i32[3];
  v1712.val[1].i64[1] = v1716.val[0].i64[1];
  v1384.i32[0] = vqtbl2q_s8(v1698, xmmword_273BA70C0).u32[0];
  v1384.i32[1] = vzip2q_s16(*&v1717, *(&v1717 + 16)).i32[1];
  v1714.val[0] = vtrn2q_s16(v1699.val[0], v1699.val[1]);
  v1714.val[0].i32[3] = vqtbl2q_s8(v1700, xmmword_273BA70B0).i32[3];
  v1384.i64[1] = v1714.val[0].i64[1];
  v1714.val[0].i32[0] = vqtbl2q_s8(v1698, xmmword_273BA70E0).u32[0];
  v1714.val[0].i32[1] = vqtbl2q_s8(v1717, xmmword_273BA70D0).i32[1];
  LOWORD(v1389) = v1700.val[0].i16[6];
  HIWORD(v1389) = v1700.val[1].i16[6];
  v1716.val[0] = vmovl_high_u8(v1715.val[1]);
  v1716.val[1] = vmovl_high_u8(v1386);
  v1715.val[1] = vzip2q_s16(v1699.val[0], v1699.val[1]);
  v1715.val[1].i32[3] = v1389;
  v1714.val[0].i64[1] = v1715.val[1].i64[1];
  v1715.val[1].i32[0] = vqtbl2q_s8(v1698, xmmword_273BA7110).u32[0];
  v1715.val[1].i32[1] = vqtbl2q_s8(v1717, xmmword_273BA7100).i32[1];
  v1717.val[0] = vqtbl2q_s8(v1699, xmmword_273BA70F0);
  v1717.val[0].i32[3] = vzip2q_s16(*&v1700, *(&v1700 + 16)).i32[3];
  v1715.val[1].i64[1] = v1717.val[0].i64[1];
  v1717.val[0].i32[0] = vzip1q_s16(v1708.val[0], v1708.val[1]).u32[0];
  v1717.val[0].i32[1] = vqtbl2q_s8(v1706, xmmword_273BA7020).i32[1];
  v1717.val[1] = vqtbl2q_s8(*(&v1714 + 16), xmmword_273BA7010);
  v1717.val[1].i32[3] = vqtbl2q_s8(v1716, xmmword_273BA7000).i32[3];
  v1717.val[0].i64[1] = v1717.val[1].i64[1];
  v1717.val[1].i32[0] = vtrn2q_s16(v1708.val[0], v1708.val[1]).u32[0];
  v1717.val[1].i32[1] = vzip1q_s16(*&v1706, *(&v1706 + 16)).i32[1];
  v1698.val[0] = vqtbl2q_s8(*(&v1714 + 16), xmmword_273BA7040);
  v1698.val[0].i32[3] = vqtbl2q_s8(v1716, xmmword_273BA7030).i32[3];
  v1717.val[1].i64[1] = v1698.val[0].i64[1];
  v1698.val[1].i16[2] = v1706.val[0].i16[2];
  v1698.val[1].i16[3] = v1706.val[1].i16[2];
  v1698.val[0].i32[0] = vqtbl2q_s8(v1708, xmmword_273BA7060).u32[0];
  v1698.val[0].i32[1] = v1698.val[1].i32[1];
  v1699.val[0] = vzip1q_s16(v1714.val[1], v1715.val[0]);
  v1699.val[0].i32[3] = vqtbl2q_s8(v1716, xmmword_273BA7050).i32[3];
  v1698.val[0].i64[1] = v1699.val[0].i64[1];
  v1698.val[1].i32[0] = vqtbl2q_s8(v1708, xmmword_273BA7080).u32[0];
  v1698.val[1].i32[1] = vtrn2q_s16(*&v1706, *(&v1706 + 16)).i32[1];
  v1699.val[0] = vqtbl2q_s8(*(&v1714 + 16), xmmword_273BA7070);
  v1699.val[0].i32[3] = vzip1q_s16(*&v1716, *(&v1716 + 16)).i32[3];
  v1698.val[1].i64[1] = v1699.val[0].i64[1];
  v1699.val[0].i32[0] = vqtbl2q_s8(v1708, xmmword_273BA70C0).u32[0];
  v1699.val[1].i32[0] = vqtbl2q_s8(v1708, xmmword_273BA70E0).u32[0];
  v1700.val[0].i32[0] = vqtbl2q_s8(v1708, xmmword_273BA7110).u32[0];
  v1708.val[0].i32[0] = vzip2q_s16(v1708.val[0], v1708.val[1]).u32[0];
  v1708.val[0].i32[1] = vqtbl2q_s8(v1706, xmmword_273BA70A0).i32[1];
  v1708.val[1].i16[4] = v1714.val[1].i16[4];
  v1708.val[1].i16[5] = v1715.val[0].i16[4];
  v1708.val[1].i32[3] = vqtbl2q_s8(v1716, xmmword_273BA7090).i32[3];
  v1603 = v1373;
  v1708.val[0].i64[1] = v1708.val[1].i64[1];
  v1390 = vqtbl2q_s8(v1706, xmmword_273BA70D0);
  v1391 = vqtbl2q_s8(v1706, xmmword_273BA7100);
  v1699.val[0].i32[1] = vzip2q_s16(*&v1706, *(&v1706 + 16)).i32[1];
  v1706.val[0] = vtrn2q_s16(v1714.val[1], v1715.val[0]);
  v1706.val[0].i32[3] = vqtbl2q_s8(v1716, xmmword_273BA70B0).i32[3];
  v1699.val[0].i64[1] = v1706.val[0].i64[1];
  v1699.val[1].i32[1] = v1390.i32[1];
  v1392 = vqtbl2q_s8(*(&v1714 + 16), xmmword_273BA70F0);
  v1706.val[0] = vzip2q_s16(v1714.val[1], v1715.val[0]);
  v1706.val[1].i16[6] = v1716.val[0].i16[6];
  v1706.val[1].i16[7] = v1716.val[1].i16[6];
  v1706.val[0].i32[3] = v1706.val[1].i32[3];
  v1699.val[1].i64[1] = v1706.val[0].i64[1];
  v1700.val[0].i32[1] = v1391.i32[1];
  v1392.i32[3] = vzip2q_s16(*&v1716, *(&v1716 + 16)).i32[3];
  v1700.val[0].i64[1] = v1392.i64[1];
  v1393 = vdupq_n_s16(0xD01u);
  v1394 = vmull_high_u16(v1601, v1393);
  v1395 = vmull_u16(*v1601.i8, *v1393.i8);
  v1396 = vmull_high_u16(v1599, v1393);
  v1397 = vmull_u16(*v1599.i8, *v1393.i8);
  v1365.i64[0] = 0x100000001;
  v1365.i64[1] = 0x100000001;
  v1602[0] = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1395, v1365), v1395, 1uLL), vsraq_n_u32(vandq_s8(v1394, v1365), v1394, 1uLL));
  v1602[1] = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1397, v1365), v1397, 1uLL), vsraq_n_u32(vandq_s8(v1396, v1365), v1396, 1uLL));
  v1398 = vmull_high_u16(v1597, v1393);
  v1399 = vmull_u16(*v1597.i8, *v1393.i8);
  v1400 = vmull_high_u16(v1596, v1393);
  v1401 = vmull_u16(*v1596.i8, *v1393.i8);
  v1602[2] = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1399, v1365), v1399, 1uLL), vsraq_n_u32(vandq_s8(v1398, v1365), v1398, 1uLL));
  v1602[3] = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1401, v1365), v1401, 1uLL), vsraq_n_u32(vandq_s8(v1400, v1365), v1400, 1uLL));
  v1402 = vmull_high_u16(v1603, v1393);
  v1403 = vmull_u16(*v1603.i8, *v1393.i8);
  v1404 = vmull_high_u16(v1591, v1393);
  v1405 = vmull_u16(*v1591.i8, *v1393.i8);
  v1603 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1403, v1365), v1403, 1uLL), vsraq_n_u32(vandq_s8(v1402, v1365), v1402, 1uLL));
  v1604 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1405, v1365), v1405, 1uLL), vsraq_n_u32(vandq_s8(v1404, v1365), v1404, 1uLL));
  v1406 = vmull_high_u16(v1605, v1393);
  v1407 = vmull_u16(*v1605.i8, *v1393.i8);
  v1408 = vmull_high_u16(v1606, v1393);
  v1409 = vmull_u16(*v1606.i8, *v1393.i8);
  v1605 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1407, v1365), v1407, 1uLL), vsraq_n_u32(vandq_s8(v1406, v1365), v1406, 1uLL));
  v1606 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1409, v1365), v1409, 1uLL), vsraq_n_u32(vandq_s8(v1408, v1365), v1408, 1uLL));
  v1410 = vmull_high_u16(v1607, v1393);
  v1411 = vmull_u16(*v1607.i8, *v1393.i8);
  v1412 = vmull_high_u16(v1608, v1393);
  v1413 = vmull_u16(*v1608.i8, *v1393.i8);
  v1607 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1411, v1365), v1411, 1uLL), vsraq_n_u32(vandq_s8(v1410, v1365), v1410, 1uLL));
  v1608 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1413, v1365), v1413, 1uLL), vsraq_n_u32(vandq_s8(v1412, v1365), v1412, 1uLL));
  v1414 = vmull_high_u16(v1609, v1393);
  v1415 = vmull_u16(*v1609.i8, *v1393.i8);
  v1416 = vmull_high_u16(v1610, v1393);
  v1417 = vmull_u16(*v1610.i8, *v1393.i8);
  v1609 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1415, v1365), v1415, 1uLL), vsraq_n_u32(vandq_s8(v1414, v1365), v1414, 1uLL));
  v1610 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1417, v1365), v1417, 1uLL), vsraq_n_u32(vandq_s8(v1416, v1365), v1416, 1uLL));
  v1418 = vmull_high_u16(v1611, v1393);
  v1419 = vmull_u16(*v1611.i8, *v1393.i8);
  v1420 = vmull_high_u16(v1612, v1393);
  v1421 = vmull_u16(*v1612.i8, *v1393.i8);
  v1611 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1419, v1365), v1419, 1uLL), vsraq_n_u32(vandq_s8(v1418, v1365), v1418, 1uLL));
  v1612 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1421, v1365), v1421, 1uLL), vsraq_n_u32(vandq_s8(v1420, v1365), v1420, 1uLL));
  v1422 = vmull_high_u16(v1613, v1393);
  v1423 = vmull_u16(*v1613.i8, *v1393.i8);
  v1424 = vmull_high_u16(v1614, v1393);
  v1425 = vmull_u16(*v1614.i8, *v1393.i8);
  v1613 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1423, v1365), v1423, 1uLL), vsraq_n_u32(vandq_s8(v1422, v1365), v1422, 1uLL));
  v1614 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1425, v1365), v1425, 1uLL), vsraq_n_u32(vandq_s8(v1424, v1365), v1424, 1uLL));
  v1426 = vmull_high_u16(v1385, v1393);
  v1427 = vmull_u16(*v1385.i8, *v1393.i8);
  v1428 = vmull_high_u16(v1387, v1393);
  v1429 = vmull_u16(*v1387.i8, *v1393.i8);
  v1615 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1427, v1365), v1427, 1uLL), vsraq_n_u32(vandq_s8(v1426, v1365), v1426, 1uLL));
  v1616 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1429, v1365), v1429, 1uLL), vsraq_n_u32(vandq_s8(v1428, v1365), v1428, 1uLL));
  v1430 = vmull_high_u16(v1388, v1393);
  v1431 = vmull_u16(*v1388.i8, *v1393.i8);
  v1432 = vmull_high_u16(v1712.val[0], v1393);
  v1433 = vmull_u16(*v1712.val[0].i8, *v1393.i8);
  v1617 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1431, v1365), v1431, 1uLL), vsraq_n_u32(vandq_s8(v1430, v1365), v1430, 1uLL));
  v1618 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1433, v1365), v1433, 1uLL), vsraq_n_u32(vandq_s8(v1432, v1365), v1432, 1uLL));
  v1434 = vmull_high_u16(v1712.val[1], v1393);
  v1435 = vmull_u16(*v1712.val[1].i8, *v1393.i8);
  v1436 = vmull_high_u16(v1384, v1393);
  v1437 = vmull_u16(*v1384.i8, *v1393.i8);
  v1619 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1435, v1365), v1435, 1uLL), vsraq_n_u32(vandq_s8(v1434, v1365), v1434, 1uLL));
  v1620 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1437, v1365), v1437, 1uLL), vsraq_n_u32(vandq_s8(v1436, v1365), v1436, 1uLL));
  v1438 = vmull_high_u16(v1714.val[0], v1393);
  v1439 = vmull_u16(*v1714.val[0].i8, *v1393.i8);
  v1440 = vmull_high_u16(v1715.val[1], v1393);
  v1441 = vmull_u16(*v1715.val[1].i8, *v1393.i8);
  v1621 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1439, v1365), v1439, 1uLL), vsraq_n_u32(vandq_s8(v1438, v1365), v1438, 1uLL));
  v1622 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1441, v1365), v1441, 1uLL), vsraq_n_u32(vandq_s8(v1440, v1365), v1440, 1uLL));
  v1442 = vmull_high_u16(v1717.val[0], v1393);
  v1443 = vmull_u16(*v1717.val[0].i8, *v1393.i8);
  v1444 = vmull_high_u16(v1717.val[1], v1393);
  v1445 = vmull_u16(*v1717.val[1].i8, *v1393.i8);
  v1623 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1443, v1365), v1443, 1uLL), vsraq_n_u32(vandq_s8(v1442, v1365), v1442, 1uLL));
  v1624 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1445, v1365), v1445, 1uLL), vsraq_n_u32(vandq_s8(v1444, v1365), v1444, 1uLL));
  v1446 = vmull_high_u16(v1698.val[0], v1393);
  v1447 = vmull_u16(*v1698.val[0].i8, *v1393.i8);
  v1448 = vmull_high_u16(v1698.val[1], v1393);
  v1449 = vmull_u16(*v1698.val[1].i8, *v1393.i8);
  v1625 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1447, v1365), v1447, 1uLL), vsraq_n_u32(vandq_s8(v1446, v1365), v1446, 1uLL));
  v1626 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1449, v1365), v1449, 1uLL), vsraq_n_u32(vandq_s8(v1448, v1365), v1448, 1uLL));
  v1450 = vmull_high_u16(v1708.val[0], v1393);
  v1451 = vmull_u16(*v1708.val[0].i8, *v1393.i8);
  v1452 = vmull_high_u16(v1699.val[0], v1393);
  v1453 = vmull_u16(*v1699.val[0].i8, *v1393.i8);
  v1627 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1451, v1365), v1451, 1uLL), vsraq_n_u32(vandq_s8(v1450, v1365), v1450, 1uLL));
  v1628 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1453, v1365), v1453, 1uLL), vsraq_n_u32(vandq_s8(v1452, v1365), v1452, 1uLL));
  v1454 = vmull_high_u16(v1699.val[1], v1393);
  v1455 = vmull_u16(*v1699.val[1].i8, *v1393.i8);
  v1456 = vmull_high_u16(v1700.val[0], v1393);
  v1457 = vmull_u16(*v1700.val[0].i8, *v1393.i8);
  v1629 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1455, v1365), v1455, 1uLL), vsraq_n_u32(vandq_s8(v1454, v1365), v1454, 1uLL));
  v1630 = vuzp1q_s16(vsraq_n_u32(vandq_s8(v1457, v1365), v1457, 1uLL), vsraq_n_u32(vandq_s8(v1456, v1365), v1456, 1uLL));
  v1458.i64[0] = 0xD000D000D000D00;
  v1458.i64[1] = 0xD000D000D000D00;
  do
  {
    v1459 = &v1656.i8[v1361 * 16];
    v1460 = vaddq_s16(v1602[v1361], *(&v1656 + v1361 * 16));
    v1461 = vaddq_s16(v1602[v1361 + 1], *(&v1656 + v1361 * 16 + 16));
    v1462 = vaddq_s16(v1460, v1458);
    v1463 = vaddq_s16(v1461, v1458);
    *v1459 = vorrq_s8(vandq_s8(vcltzq_s16(v1462), v1460), vmaxq_s16(v1462, 0));
    v1459[1] = vorrq_s8(vandq_s8(vcltzq_s16(v1463), v1461), vmaxq_s16(v1463, 0));
    v1361 += 2;
  }

  while (v1361 != 32);
  v1464 = 0;
  v1465 = vdupq_n_s32(0x13AFu);
  v1466.i64[0] = 0xD0000000D00;
  v1466.i64[1] = 0xD0000000D00;
  v1467 = vdupq_n_s32(0x680u);
  v1468 = vdupq_n_s64(1uLL);
  v1469 = vdupq_n_s32(0x1381u);
  do
  {
    v1470 = *&v1631[v1464];
    v1471 = vshll_n_u16(*v1470.i8, 0xAuLL);
    v1472 = vshll_high_n_u16(v1470, 0xAuLL);
    v1473 = vmull_high_u32(v1471, v1465);
    v1474 = vmull_u32(*v1471.i8, *v1465.i8);
    v1475 = vmull_high_u32(v1472, v1465);
    v1476 = vmull_u32(*v1472.i8, *v1465.i8);
    v1477 = vmlaq_s32(v1472, vshrn_high_n_s64(vshrn_n_s64(v1476, 0x18uLL), v1475, 0x18uLL), v1466);
    v1478 = vmlaq_s32(v1471, vshrn_high_n_s64(vshrn_n_s64(v1474, 0x18uLL), v1473, 0x18uLL), v1466);
    v1479 = vcgtq_u32(v1478, v1467);
    v1480.i64[0] = v1479.u32[2];
    v1480.i64[1] = v1479.u32[3];
    v1481 = vandq_s8(v1480, v1468);
    v1480.i64[0] = v1479.u32[0];
    v1480.i64[1] = v1479.u32[1];
    v1482 = vandq_s8(v1480, v1468);
    v1483 = vcgtq_u32(v1477, v1467);
    v1480.i64[0] = v1483.u32[2];
    v1480.i64[1] = v1483.u32[3];
    v1484 = vandq_s8(v1480, v1468);
    v1480.i64[0] = v1483.u32[0];
    v1480.i64[1] = v1483.u32[1];
    v1485 = vsraq_n_u64(vandq_s8(v1480, v1468), v1476, 0x18uLL);
    v1486 = vsraq_n_u64(v1482, v1474, 0x18uLL);
    v1487 = vsraq_n_u64(v1481, v1473, 0x18uLL);
    v1488 = vcgtq_u32(v1477, v1469);
    v1480.i64[0] = v1488.u32[0];
    v1480.i64[1] = v1488.u32[1];
    v1489 = vandq_s8(v1480, v1468);
    v1480.i64[0] = v1488.u32[2];
    v1480.i64[1] = v1488.u32[3];
    v1490 = vandq_s8(v1480, v1468);
    v1491 = vcgtq_u32(v1478, v1469);
    v1480.i64[0] = v1491.u32[0];
    v1480.i64[1] = v1491.u32[1];
    v1492 = vandq_s8(v1480, v1468);
    v1480.i64[0] = v1491.u32[2];
    v1480.i64[1] = v1491.u32[3];
    *&v1631[v1464] = *&vuzp1q_s16(vuzp1q_s32(vaddq_s64(v1486, v1492), vaddq_s64(v1487, vandq_s8(v1480, v1468))), vuzp1q_s32(vaddq_s64(v1485, v1489), vaddq_s64(vsraq_n_u64(v1484, v1475, 0x18uLL), v1490))) & __PAIR128__(0x3FF03FF03FF03FFLL, 0x3FF03FF03FF03FFLL);
    v1464 += 2;
  }

  while (v1464 != 64);
  v1493 = vdupq_n_s32(0x13AFu);
  v1494.i64[0] = 0xD0000000D00;
  v1494.i64[1] = 0xD0000000D00;
  v1495 = vdupq_n_s32(0x680u);
  v1496 = vdupq_n_s64(1uLL);
  v1497 = vdupq_n_s32(0x1381u);
  do
  {
    v1498 = *&v1631[v1464];
    v1499 = vshll_n_u16(*v1498.i8, 0xAuLL);
    v1500 = vshll_high_n_u16(v1498, 0xAuLL);
    v1501 = vmull_high_u32(v1499, v1493);
    v1502 = vmull_u32(*v1499.i8, *v1493.i8);
    v1503 = vmull_high_u32(v1500, v1493);
    v1504 = vmull_u32(*v1500.i8, *v1493.i8);
    v1505 = vmlaq_s32(v1500, vshrn_high_n_s64(vshrn_n_s64(v1504, 0x18uLL), v1503, 0x18uLL), v1494);
    v1506 = vmlaq_s32(v1499, vshrn_high_n_s64(vshrn_n_s64(v1502, 0x18uLL), v1501, 0x18uLL), v1494);
    v1507 = vcgtq_u32(v1506, v1495);
    v1508.i64[0] = v1507.u32[2];
    v1508.i64[1] = v1507.u32[3];
    v1509 = vandq_s8(v1508, v1496);
    v1508.i64[0] = v1507.u32[0];
    v1508.i64[1] = v1507.u32[1];
    v1510 = vandq_s8(v1508, v1496);
    v1511 = vcgtq_u32(v1505, v1495);
    v1508.i64[0] = v1511.u32[2];
    v1508.i64[1] = v1511.u32[3];
    v1512 = vandq_s8(v1508, v1496);
    v1508.i64[0] = v1511.u32[0];
    v1508.i64[1] = v1511.u32[1];
    v1513 = vsraq_n_u64(vandq_s8(v1508, v1496), v1504, 0x18uLL);
    v1514 = vsraq_n_u64(v1510, v1502, 0x18uLL);
    v1515 = vsraq_n_u64(v1509, v1501, 0x18uLL);
    v1516 = vcgtq_u32(v1505, v1497);
    v1508.i64[0] = v1516.u32[0];
    v1508.i64[1] = v1516.u32[1];
    v1517 = vandq_s8(v1508, v1496);
    v1508.i64[0] = v1516.u32[2];
    v1508.i64[1] = v1516.u32[3];
    v1518 = vandq_s8(v1508, v1496);
    v1519 = vcgtq_u32(v1506, v1497);
    v1508.i64[0] = v1519.u32[0];
    v1508.i64[1] = v1519.u32[1];
    v1520 = vandq_s8(v1508, v1496);
    v1508.i64[0] = v1519.u32[2];
    v1508.i64[1] = v1519.u32[3];
    *&v1631[v1464] = *&vuzp1q_s16(vuzp1q_s32(vaddq_s64(v1514, v1520), vaddq_s64(v1515, vandq_s8(v1508, v1496))), vuzp1q_s32(vaddq_s64(v1513, v1517), vaddq_s64(vsraq_n_u64(v1512, v1503, 0x18uLL), v1518))) & __PAIR128__(0x3FF03FF03FF03FFLL, 0x3FF03FF03FF03FFLL);
    v1464 += 2;
  }

  while (v1464 != 128);
  v1521 = vdupq_n_s32(0x13AFu);
  v1522.i64[0] = 0xD0000000D00;
  v1522.i64[1] = 0xD0000000D00;
  v1523 = vdupq_n_s32(0x680u);
  v1524 = vdupq_n_s64(1uLL);
  v1525 = vdupq_n_s32(0x1381u);
  do
  {
    v1526 = *&v1631[v1464];
    v1527 = vshll_n_u16(*v1526.i8, 0xAuLL);
    v1528 = vshll_high_n_u16(v1526, 0xAuLL);
    v1529 = vmull_high_u32(v1527, v1521);
    v1530 = vmull_u32(*v1527.i8, *v1521.i8);
    v1531 = vmull_high_u32(v1528, v1521);
    v1532 = vmull_u32(*v1528.i8, *v1521.i8);
    v1533 = vmlaq_s32(v1528, vshrn_high_n_s64(vshrn_n_s64(v1532, 0x18uLL), v1531, 0x18uLL), v1522);
    v1534 = vmlaq_s32(v1527, vshrn_high_n_s64(vshrn_n_s64(v1530, 0x18uLL), v1529, 0x18uLL), v1522);
    v1535 = vcgtq_u32(v1534, v1523);
    v1536.i64[0] = v1535.u32[2];
    v1536.i64[1] = v1535.u32[3];
    v1537 = vandq_s8(v1536, v1524);
    v1536.i64[0] = v1535.u32[0];
    v1536.i64[1] = v1535.u32[1];
    v1538 = vandq_s8(v1536, v1524);
    v1539 = vcgtq_u32(v1533, v1523);
    v1536.i64[0] = v1539.u32[2];
    v1536.i64[1] = v1539.u32[3];
    v1540 = vandq_s8(v1536, v1524);
    v1536.i64[0] = v1539.u32[0];
    v1536.i64[1] = v1539.u32[1];
    v1541 = vsraq_n_u64(vandq_s8(v1536, v1524), v1532, 0x18uLL);
    v1542 = vsraq_n_u64(v1538, v1530, 0x18uLL);
    v1543 = vsraq_n_u64(v1537, v1529, 0x18uLL);
    v1544 = vcgtq_u32(v1533, v1525);
    v1536.i64[0] = v1544.u32[0];
    v1536.i64[1] = v1544.u32[1];
    v1545 = vandq_s8(v1536, v1524);
    v1536.i64[0] = v1544.u32[2];
    v1536.i64[1] = v1544.u32[3];
    v1546 = vandq_s8(v1536, v1524);
    v1547 = vcgtq_u32(v1534, v1525);
    v1536.i64[0] = v1547.u32[0];
    v1536.i64[1] = v1547.u32[1];
    v1548 = vandq_s8(v1536, v1524);
    v1536.i64[0] = v1547.u32[2];
    v1536.i64[1] = v1547.u32[3];
    *&v1631[v1464] = *&vuzp1q_s16(vuzp1q_s32(vaddq_s64(v1542, v1548), vaddq_s64(v1543, vandq_s8(v1536, v1524))), vuzp1q_s32(vaddq_s64(v1541, v1545), vaddq_s64(vsraq_n_u64(v1540, v1531, 0x18uLL), v1546))) & __PAIR128__(0x3FF03FF03FF03FFLL, 0x3FF03FF03FF03FFLL);
    v1464 += 2;
  }

  while (v1464 != 192);
  vector_encode(v1588, v1631, 10);
  v1549 = 0;
  v1550 = vdupq_n_s32(0x13AFu);
  v1551.i64[0] = 0xD0000000D00;
  v1551.i64[1] = 0xD0000000D00;
  v1552 = vdupq_n_s32(0x680u);
  v1553 = vdupq_n_s64(1uLL);
  v1554 = vdupq_n_s32(0x1381u);
  v1555.i64[0] = 0xF000F000F000FLL;
  v1555.i64[1] = 0xF000F000F000FLL;
  do
  {
    v1556 = *(&v1656 + v1549);
    v1557 = vshll_n_u16(*v1556.i8, 4uLL);
    v1558 = vshll_high_n_u16(v1556, 4uLL);
    v1559 = vmull_high_u32(v1557, v1550);
    v1560 = vmull_u32(*v1557.i8, *v1550.i8);
    v1561 = vmull_high_u32(v1558, v1550);
    v1562 = vmull_u32(*v1558.i8, *v1550.i8);
    v1563 = vmlaq_s32(v1558, vshrn_high_n_s64(vshrn_n_s64(v1562, 0x18uLL), v1561, 0x18uLL), v1551);
    v1564 = vmlaq_s32(v1557, vshrn_high_n_s64(vshrn_n_s64(v1560, 0x18uLL), v1559, 0x18uLL), v1551);
    v1565 = vcgtq_u32(v1564, v1552);
    v1566.i64[0] = v1565.u32[2];
    v1566.i64[1] = v1565.u32[3];
    v1567 = vandq_s8(v1566, v1553);
    v1566.i64[0] = v1565.u32[0];
    v1566.i64[1] = v1565.u32[1];
    v1568 = vandq_s8(v1566, v1553);
    v1569 = vcgtq_u32(v1563, v1552);
    v1566.i64[0] = v1569.u32[2];
    v1566.i64[1] = v1569.u32[3];
    v1570 = vandq_s8(v1566, v1553);
    v1566.i64[0] = v1569.u32[0];
    v1566.i64[1] = v1569.u32[1];
    v1571 = vsraq_n_u64(vandq_s8(v1566, v1553), v1562, 0x18uLL);
    v1572 = vsraq_n_u64(v1568, v1560, 0x18uLL);
    v1573 = vsraq_n_u64(v1567, v1559, 0x18uLL);
    v1574 = vcgtq_u32(v1563, v1554);
    v1566.i64[0] = v1574.u32[0];
    v1566.i64[1] = v1574.u32[1];
    v1575 = vandq_s8(v1566, v1553);
    v1566.i64[0] = v1574.u32[2];
    v1566.i64[1] = v1574.u32[3];
    v1576 = vandq_s8(v1566, v1553);
    v1577 = vcgtq_u32(v1564, v1554);
    v1566.i64[0] = v1577.u32[0];
    v1566.i64[1] = v1577.u32[1];
    v1578 = vandq_s8(v1566, v1553);
    v1566.i64[0] = v1577.u32[2];
    v1566.i64[1] = v1577.u32[3];
    *(&v1656 + v1549) = vandq_s8(vuzp1q_s16(vuzp1q_s32(vaddq_s64(v1572, v1578), vaddq_s64(v1573, vandq_s8(v1566, v1553))), vuzp1q_s32(vaddq_s64(v1571, v1575), vaddq_s64(vsraq_n_u64(v1570, v1561, 0x18uLL), v1576))), v1555);
    v1549 += 16;
  }

  while (v1549 != 512);
  v1579 = 0;
  v1580 = 0;
  v1581 = 0;
  v1582 = v1588 + 960;
  do
  {
    LODWORD(result) = 0;
    v1584 = v1656.u16[v1579];
    while (1)
    {
      v1585 = 8 - v1580;
      if (4 - result < 8 - v1580)
      {
        break;
      }

      v1586 = (v1584 & kMasks[7 - v1580]) << v1580;
      v1580 = 0;
      *v1582++ = v1581 | v1586;
      v1581 = 0;
      result = (v1585 + result);
      LOBYTE(v1584) = v1584 >> v1585;
      if (result >= 4)
      {
        goto LABEL_56;
      }
    }

    v1581 |= (v1584 & kMasks[(3 - result)]) << v1580;
    v1580 += 4 - result;
    result = 4;
LABEL_56:
    ++v1579;
  }

  while (v1579 != 256);
  if (v1580 >= 1)
  {
    *v1582 = v1581;
  }

  return result;
}

int *KYBER_decap(char *a1, unsigned __int8 *a2, uint64_t a3)
{
  v1022 = *MEMORY[0x277D85DE8];
  vector_decode(&v926, a2, 10);
  v6 = vdupq_n_s16(0xD01u);
  v7 = vmull_u16(*v926.i8, *v6.i8);
  v8 = vmull_high_u16(v926, v6);
  v9 = vmull_u16(*v927.i8, *v6.i8);
  v10 = vmull_high_u16(v927, v6);
  v11.i64[0] = 0x100000001;
  v11.i64[1] = 0x100000001;
  v926 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v7, 9uLL), v11), v7, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v8, 9uLL), v11), v8, 0xAuLL));
  v927 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v9, 9uLL), v11), v9, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v10, 9uLL), v11), v10, 0xAuLL));
  v12 = vmull_u16(*v928.i8, *v6.i8);
  v13 = vmull_high_u16(v928, v6);
  v14 = vmull_u16(*v929.i8, *v6.i8);
  v15 = vmull_high_u16(v929, v6);
  v928 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v12, 9uLL), v11), v12, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v13, 9uLL), v11), v13, 0xAuLL));
  v929 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v14, 9uLL), v11), v14, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v15, 9uLL), v11), v15, 0xAuLL));
  v16 = vmull_u16(*v930.i8, *v6.i8);
  v17 = vmull_high_u16(v930, v6);
  v18 = vmull_u16(*v931.i8, *v6.i8);
  v19 = vmull_high_u16(v931, v6);
  v930 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v16, 9uLL), v11), v16, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v17, 9uLL), v11), v17, 0xAuLL));
  v931 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v18, 9uLL), v11), v18, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v19, 9uLL), v11), v19, 0xAuLL));
  v20 = vmull_u16(*v932.i8, *v6.i8);
  v21 = vmull_high_u16(v932, v6);
  v22 = vmull_u16(*v933.i8, *v6.i8);
  v23 = vmull_high_u16(v933, v6);
  v932 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v20, 9uLL), v11), v20, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v21, 9uLL), v11), v21, 0xAuLL));
  v933 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v22, 9uLL), v11), v22, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v23, 9uLL), v11), v23, 0xAuLL));
  v24 = vmull_u16(*v934.i8, *v6.i8);
  v25 = vmull_high_u16(v934, v6);
  v26 = vmull_u16(*v935.i8, *v6.i8);
  v27 = vmull_high_u16(v935, v6);
  v934 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v24, 9uLL), v11), v24, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v25, 9uLL), v11), v25, 0xAuLL));
  v935 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v26, 9uLL), v11), v26, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v27, 9uLL), v11), v27, 0xAuLL));
  v28 = vmull_u16(*v936.i8, *v6.i8);
  v29 = vmull_high_u16(v936, v6);
  v30 = vmull_u16(*v937.i8, *v6.i8);
  v31 = vmull_high_u16(v937, v6);
  v936 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v28, 9uLL), v11), v28, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v29, 9uLL), v11), v29, 0xAuLL));
  v937 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v30, 9uLL), v11), v30, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v31, 9uLL), v11), v31, 0xAuLL));
  v32 = vmull_u16(*v938.i8, *v6.i8);
  v33 = vmull_high_u16(v938, v6);
  v34 = vmull_u16(*v939.i8, *v6.i8);
  v35 = vmull_high_u16(v939, v6);
  v938 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v32, 9uLL), v11), v32, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v33, 9uLL), v11), v33, 0xAuLL));
  v939 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v34, 9uLL), v11), v34, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v35, 9uLL), v11), v35, 0xAuLL));
  v36 = vmull_u16(*v940.i8, *v6.i8);
  v37 = vmull_high_u16(v940, v6);
  v38 = vmull_u16(*v941.i8, *v6.i8);
  v39 = vmull_high_u16(v941, v6);
  v940 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v36, 9uLL), v11), v36, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v37, 9uLL), v11), v37, 0xAuLL));
  v941 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v38, 9uLL), v11), v38, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v39, 9uLL), v11), v39, 0xAuLL));
  v40 = vmull_u16(*v942.i8, *v6.i8);
  v41 = vmull_high_u16(v942, v6);
  v42 = vmull_u16(*v943.i8, *v6.i8);
  v43 = vmull_high_u16(v943, v6);
  v942 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v40, 9uLL), v11), v40, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v41, 9uLL), v11), v41, 0xAuLL));
  v943 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v42, 9uLL), v11), v42, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v43, 9uLL), v11), v43, 0xAuLL));
  v44 = vmull_u16(*v944.i8, *v6.i8);
  v45 = vmull_high_u16(v944, v6);
  v46 = vmull_u16(*v945.i8, *v6.i8);
  v47 = vmull_high_u16(v945, v6);
  v944 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v44, 9uLL), v11), v44, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v45, 9uLL), v11), v45, 0xAuLL));
  v945 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v46, 9uLL), v11), v46, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v47, 9uLL), v11), v47, 0xAuLL));
  v48 = vmull_u16(*v946.i8, *v6.i8);
  v49 = vmull_high_u16(v946, v6);
  v50 = vmull_u16(*v947.i8, *v6.i8);
  v51 = vmull_high_u16(v947, v6);
  v946 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v48, 9uLL), v11), v48, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v49, 9uLL), v11), v49, 0xAuLL));
  v947 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v50, 9uLL), v11), v50, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v51, 9uLL), v11), v51, 0xAuLL));
  v52 = vmull_u16(*v948.i8, *v6.i8);
  v53 = vmull_high_u16(v948, v6);
  v54 = vmull_u16(*v949.i8, *v6.i8);
  v55 = vmull_high_u16(v949, v6);
  v948 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v52, 9uLL), v11), v52, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v53, 9uLL), v11), v53, 0xAuLL));
  v949 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v54, 9uLL), v11), v54, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v55, 9uLL), v11), v55, 0xAuLL));
  v56 = vmull_u16(*v950.i8, *v6.i8);
  v57 = vmull_high_u16(v950, v6);
  v58 = vmull_u16(*v951.i8, *v6.i8);
  v59 = vmull_high_u16(v951, v6);
  v950 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v56, 9uLL), v11), v56, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v57, 9uLL), v11), v57, 0xAuLL));
  v951 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v58, 9uLL), v11), v58, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v59, 9uLL), v11), v59, 0xAuLL));
  v60 = vmull_u16(*v952.i8, *v6.i8);
  v61 = vmull_high_u16(v952, v6);
  v62 = vmull_u16(*v953.i8, *v6.i8);
  v63 = vmull_high_u16(v953, v6);
  v952 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v60, 9uLL), v11), v60, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v61, 9uLL), v11), v61, 0xAuLL));
  v953 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v62, 9uLL), v11), v62, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v63, 9uLL), v11), v63, 0xAuLL));
  v64 = vmull_u16(*v954.i8, *v6.i8);
  v65 = vmull_high_u16(v954, v6);
  v66 = vmull_u16(*v955.i8, *v6.i8);
  v67 = vmull_high_u16(v955, v6);
  v954 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v64, 9uLL), v11), v64, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v65, 9uLL), v11), v65, 0xAuLL));
  v955 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v66, 9uLL), v11), v66, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v67, 9uLL), v11), v67, 0xAuLL));
  v68 = vmull_u16(*v956.i8, *v6.i8);
  v69 = vmull_high_u16(v956, v6);
  v70 = vmull_u16(*v957.i8, *v6.i8);
  v71 = vmull_high_u16(v957, v6);
  v956 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v68, 9uLL), v11), v68, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v69, 9uLL), v11), v69, 0xAuLL));
  v957 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v70, 9uLL), v11), v70, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v71, 9uLL), v11), v71, 0xAuLL));
  v72 = vmull_u16(*v958.i8, *v6.i8);
  v73 = vmull_high_u16(v958, v6);
  v74 = vmull_u16(*v959.i8, *v6.i8);
  v75 = vmull_high_u16(v959, v6);
  v958 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v72, 9uLL), v11), v72, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v73, 9uLL), v11), v73, 0xAuLL));
  v959 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v74, 9uLL), v11), v74, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v75, 9uLL), v11), v75, 0xAuLL));
  v76 = vmull_u16(*v960.i8, *v6.i8);
  v77 = vmull_high_u16(v960, v6);
  v78 = vmull_u16(*v961.i8, *v6.i8);
  v79 = vmull_high_u16(v961, v6);
  v960 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v76, 9uLL), v11), v76, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v77, 9uLL), v11), v77, 0xAuLL));
  v961 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v78, 9uLL), v11), v78, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v79, 9uLL), v11), v79, 0xAuLL));
  v80 = vmull_u16(*v962.i8, *v6.i8);
  v81 = vmull_high_u16(v962, v6);
  v82 = vmull_u16(*v963.i8, *v6.i8);
  v83 = vmull_high_u16(v963, v6);
  v962 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v80, 9uLL), v11), v80, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v81, 9uLL), v11), v81, 0xAuLL));
  v963 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v82, 9uLL), v11), v82, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v83, 9uLL), v11), v83, 0xAuLL));
  v84 = vmull_u16(*v964.i8, *v6.i8);
  v85 = vmull_high_u16(v964, v6);
  v86 = vmull_u16(*v965.i8, *v6.i8);
  v87 = vmull_high_u16(v965, v6);
  v964 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v84, 9uLL), v11), v84, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v85, 9uLL), v11), v85, 0xAuLL));
  v965 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v86, 9uLL), v11), v86, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v87, 9uLL), v11), v87, 0xAuLL));
  v88 = vmull_u16(*v966.i8, *v6.i8);
  v89 = vmull_high_u16(v966, v6);
  v90 = vmull_u16(*v967.i8, *v6.i8);
  v91 = vmull_high_u16(v967, v6);
  v966 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v88, 9uLL), v11), v88, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v89, 9uLL), v11), v89, 0xAuLL));
  v967 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v90, 9uLL), v11), v90, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v91, 9uLL), v11), v91, 0xAuLL));
  v92 = vmull_u16(*v968.i8, *v6.i8);
  v93 = vmull_high_u16(v968, v6);
  v94 = vmull_u16(*v969.i8, *v6.i8);
  v95 = vmull_high_u16(v969, v6);
  v968 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v92, 9uLL), v11), v92, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v93, 9uLL), v11), v93, 0xAuLL));
  v969 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v94, 9uLL), v11), v94, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v95, 9uLL), v11), v95, 0xAuLL));
  v96 = vmull_u16(*v970.i8, *v6.i8);
  v97 = vmull_high_u16(v970, v6);
  v98 = vmull_u16(*v971.i8, *v6.i8);
  v99 = vmull_high_u16(v971, v6);
  v970 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v96, 9uLL), v11), v96, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v97, 9uLL), v11), v97, 0xAuLL));
  v971 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v98, 9uLL), v11), v98, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v99, 9uLL), v11), v99, 0xAuLL));
  v100 = vmull_u16(*v972.i8, *v6.i8);
  v101 = vmull_high_u16(v972, v6);
  v102 = vmull_u16(*v973.i8, *v6.i8);
  v103 = vmull_high_u16(v973, v6);
  v972 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v100, 9uLL), v11), v100, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v101, 9uLL), v11), v101, 0xAuLL));
  v973 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v102, 9uLL), v11), v102, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v103, 9uLL), v11), v103, 0xAuLL));
  v104 = vmull_u16(*v974.i8, *v6.i8);
  v105 = vmull_high_u16(v974, v6);
  v106 = vmull_u16(*v975.i8, *v6.i8);
  v107 = vmull_high_u16(v975, v6);
  v974 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v104, 9uLL), v11), v104, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v105, 9uLL), v11), v105, 0xAuLL));
  v975 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v106, 9uLL), v11), v106, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v107, 9uLL), v11), v107, 0xAuLL));
  v108 = vmull_u16(*v976.i8, *v6.i8);
  v109 = vmull_high_u16(v976, v6);
  v110 = vmull_u16(*v977.i8, *v6.i8);
  v111 = vmull_high_u16(v977, v6);
  v976 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v108, 9uLL), v11), v108, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v109, 9uLL), v11), v109, 0xAuLL));
  v977 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v110, 9uLL), v11), v110, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v111, 9uLL), v11), v111, 0xAuLL));
  v112 = vmull_u16(*v978.i8, *v6.i8);
  v113 = vmull_high_u16(v978, v6);
  v114 = vmull_u16(*v979.i8, *v6.i8);
  v115 = vmull_high_u16(v979, v6);
  v978 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v112, 9uLL), v11), v112, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v113, 9uLL), v11), v113, 0xAuLL));
  v979 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v114, 9uLL), v11), v114, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v115, 9uLL), v11), v115, 0xAuLL));
  v116 = vmull_u16(*v980.i8, *v6.i8);
  v117 = vmull_high_u16(v980, v6);
  v118 = vmull_u16(*v981.i8, *v6.i8);
  v119 = vmull_high_u16(v981, v6);
  v980 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v116, 9uLL), v11), v116, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v117, 9uLL), v11), v117, 0xAuLL));
  v981 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v118, 9uLL), v11), v118, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v119, 9uLL), v11), v119, 0xAuLL));
  v120 = vmull_u16(*v982.i8, *v6.i8);
  v121 = vmull_high_u16(v982, v6);
  v122 = vmull_u16(*v983.i8, *v6.i8);
  v123 = vmull_high_u16(v983, v6);
  v982 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v120, 9uLL), v11), v120, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v121, 9uLL), v11), v121, 0xAuLL));
  v983 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v122, 9uLL), v11), v122, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v123, 9uLL), v11), v123, 0xAuLL));
  v124 = vmull_u16(*v984.i8, *v6.i8);
  v125 = vmull_high_u16(v984, v6);
  v126 = vmull_u16(*v985.i8, *v6.i8);
  v127 = vmull_high_u16(v985, v6);
  v984 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v124, 9uLL), v11), v124, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v125, 9uLL), v11), v125, 0xAuLL));
  v985 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v126, 9uLL), v11), v126, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v127, 9uLL), v11), v127, 0xAuLL));
  v128 = vmull_u16(*v986.i8, *v6.i8);
  v129 = vmull_high_u16(v986, v6);
  v130 = vmull_u16(*v987.i8, *v6.i8);
  v131 = vmull_high_u16(v987, v6);
  v986 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v128, 9uLL), v11), v128, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v129, 9uLL), v11), v129, 0xAuLL));
  v987 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v130, 9uLL), v11), v130, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v131, 9uLL), v11), v131, 0xAuLL));
  v132 = vmull_u16(*v988.i8, *v6.i8);
  v133 = vmull_high_u16(v988, v6);
  v134 = vmull_u16(*v989.i8, *v6.i8);
  v135 = vmull_high_u16(v989, v6);
  v988 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v132, 9uLL), v11), v132, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v133, 9uLL), v11), v133, 0xAuLL));
  v989 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v134, 9uLL), v11), v134, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v135, 9uLL), v11), v135, 0xAuLL));
  v136 = vmull_u16(*v990.i8, *v6.i8);
  v137 = vmull_high_u16(v990, v6);
  v138 = vmull_u16(*v991.i8, *v6.i8);
  v139 = vmull_high_u16(v991, v6);
  v990 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v136, 9uLL), v11), v136, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v137, 9uLL), v11), v137, 0xAuLL));
  v991 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v138, 9uLL), v11), v138, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v139, 9uLL), v11), v139, 0xAuLL));
  v140 = vmull_u16(*v992.i8, *v6.i8);
  v141 = vmull_high_u16(v992, v6);
  v142 = vmull_u16(*v993.i8, *v6.i8);
  v143 = vmull_high_u16(v993, v6);
  v992 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v140, 9uLL), v11), v140, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v141, 9uLL), v11), v141, 0xAuLL));
  v993 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v142, 9uLL), v11), v142, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v143, 9uLL), v11), v143, 0xAuLL));
  v144 = vmull_u16(*v994.i8, *v6.i8);
  v145 = vmull_high_u16(v994, v6);
  v146 = vmull_u16(*v995.i8, *v6.i8);
  v147 = vmull_high_u16(v995, v6);
  v994 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v144, 9uLL), v11), v144, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v145, 9uLL), v11), v145, 0xAuLL));
  v995 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v146, 9uLL), v11), v146, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v147, 9uLL), v11), v147, 0xAuLL));
  v148 = vmull_u16(*v996.i8, *v6.i8);
  v149 = vmull_high_u16(v996, v6);
  v150 = vmull_u16(*v997.i8, *v6.i8);
  v151 = vmull_high_u16(v997, v6);
  v996 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v148, 9uLL), v11), v148, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v149, 9uLL), v11), v149, 0xAuLL));
  v997 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v150, 9uLL), v11), v150, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v151, 9uLL), v11), v151, 0xAuLL));
  v152 = vmull_u16(*v998.i8, *v6.i8);
  v153 = vmull_high_u16(v998, v6);
  v154 = vmull_u16(*v999.i8, *v6.i8);
  v155 = vmull_high_u16(v999, v6);
  v998 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v152, 9uLL), v11), v152, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v153, 9uLL), v11), v153, 0xAuLL));
  v999 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v154, 9uLL), v11), v154, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v155, 9uLL), v11), v155, 0xAuLL));
  v156 = vmull_u16(*v1000.i8, *v6.i8);
  v157 = vmull_high_u16(v1000, v6);
  v158 = vmull_u16(*v1001.i8, *v6.i8);
  v159 = vmull_high_u16(v1001, v6);
  v1000 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v156, 9uLL), v11), v156, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v157, 9uLL), v11), v157, 0xAuLL));
  v1001 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v158, 9uLL), v11), v158, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v159, 9uLL), v11), v159, 0xAuLL));
  v160 = vmull_u16(*v1002.i8, *v6.i8);
  v161 = vmull_high_u16(v1002, v6);
  v162 = vmull_u16(*v1003.i8, *v6.i8);
  v163 = vmull_high_u16(v1003, v6);
  v1002 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v160, 9uLL), v11), v160, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v161, 9uLL), v11), v161, 0xAuLL));
  v1003 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v162, 9uLL), v11), v162, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v163, 9uLL), v11), v163, 0xAuLL));
  v164 = vmull_u16(*v1004.i8, *v6.i8);
  v165 = vmull_high_u16(v1004, v6);
  v166 = vmull_u16(*v1005.i8, *v6.i8);
  v167 = vmull_high_u16(v1005, v6);
  v1004 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v164, 9uLL), v11), v164, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v165, 9uLL), v11), v165, 0xAuLL));
  v1005 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v166, 9uLL), v11), v166, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v167, 9uLL), v11), v167, 0xAuLL));
  v168 = vmull_u16(*v1006.i8, *v6.i8);
  v169 = vmull_high_u16(v1006, v6);
  v170 = vmull_u16(*v1007.i8, *v6.i8);
  v171 = vmull_high_u16(v1007, v6);
  v1006 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v168, 9uLL), v11), v168, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v169, 9uLL), v11), v169, 0xAuLL));
  v1007 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v170, 9uLL), v11), v170, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v171, 9uLL), v11), v171, 0xAuLL));
  v172 = vmull_u16(*v1008.i8, *v6.i8);
  v173 = vmull_high_u16(v1008, v6);
  v174 = vmull_u16(*v1009.i8, *v6.i8);
  v175 = vmull_high_u16(v1009, v6);
  v1008 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v172, 9uLL), v11), v172, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v173, 9uLL), v11), v173, 0xAuLL));
  v1009 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v174, 9uLL), v11), v174, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v175, 9uLL), v11), v175, 0xAuLL));
  v176 = vmull_u16(*v1010.i8, *v6.i8);
  v177 = vmull_high_u16(v1010, v6);
  v178 = vmull_u16(*v1011.i8, *v6.i8);
  v179 = vmull_high_u16(v1011, v6);
  v1010 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v176, 9uLL), v11), v176, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v177, 9uLL), v11), v177, 0xAuLL));
  v1011 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v178, 9uLL), v11), v178, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v179, 9uLL), v11), v179, 0xAuLL));
  v180 = vmull_u16(*v1012.i8, *v6.i8);
  v181 = vmull_high_u16(v1012, v6);
  v182 = vmull_u16(*v1013.i8, *v6.i8);
  v183 = vmull_high_u16(v1013, v6);
  v1012 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v180, 9uLL), v11), v180, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v181, 9uLL), v11), v181, 0xAuLL));
  v1013 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v182, 9uLL), v11), v182, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v183, 9uLL), v11), v183, 0xAuLL));
  v184 = vmull_u16(*v1014.i8, *v6.i8);
  v185 = vmull_high_u16(v1014, v6);
  v186 = vmull_u16(*v1015.i8, *v6.i8);
  v187 = vmull_high_u16(v1015, v6);
  v1014 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v184, 9uLL), v11), v184, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v185, 9uLL), v11), v185, 0xAuLL));
  v1015 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v186, 9uLL), v11), v186, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v187, 9uLL), v11), v187, 0xAuLL));
  v188 = vmull_u16(*v1016.i8, *v6.i8);
  v189 = vmull_high_u16(v1016, v6);
  v190 = vmull_u16(*v1017.i8, *v6.i8);
  v191 = vmull_high_u16(v1017, v6);
  v1016 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v188, 9uLL), v11), v188, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v189, 9uLL), v11), v189, 0xAuLL));
  v1017 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v190, 9uLL), v11), v190, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v191, 9uLL), v11), v191, 0xAuLL));
  v192 = vmull_u16(*v1018.i8, *v6.i8);
  v193 = vmull_high_u16(v1018, v6);
  v194 = vmull_u16(*v1019.i8, *v6.i8);
  v195 = vmull_high_u16(v1019, v6);
  v1018 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v192, 9uLL), v11), v192, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v193, 9uLL), v11), v193, 0xAuLL));
  v1019 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v194, 9uLL), v11), v194, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v195, 9uLL), v11), v195, 0xAuLL));
  v196 = vmull_u16(*v1020.i8, *v6.i8);
  v197 = vmull_high_u16(v1020, v6);
  v198 = vmull_u16(*v1021.i8, *v6.i8);
  v199 = vmull_high_u16(v1021, v6);
  v1020 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v196, 9uLL), v11), v196, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v197, 9uLL), v11), v197, 0xAuLL));
  v1021 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v198, 9uLL), v11), v198, 0xAuLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v199, 9uLL), v11), v199, 0xAuLL));
  vector_ntt(&v926);
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

      v205 |= ((kMasks[v206 - 1] & v202) << v204);
      v201 -= v206;
      v202 = (v202 >> v206);
      v204 += v206;
    }

    while (v204 < 4);
    if (v205 > 0xD00)
    {
      break;
    }

    v857.i16[v200++] = v205;
  }

  while (v200 != 256);
  v208 = vdupq_n_s16(0xD01u);
  v209 = vmull_u16(*v857.i8, *v208.i8);
  v210 = vmull_high_u16(v857, v208);
  v211 = vmull_u16(*v858.i8, *v208.i8);
  v212 = vmull_high_u16(v858, v208);
  v213.i64[0] = 0x100000001;
  v213.i64[1] = 0x100000001;
  v857 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v209, 3uLL), v213), v209, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v210, 3uLL), v213), v210, 4uLL));
  v858 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v211, 3uLL), v213), v211, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v212, 3uLL), v213), v212, 4uLL));
  v214 = vmull_u16(*v859.i8, *v208.i8);
  v215 = vmull_high_u16(v859, v208);
  v216 = vmull_u16(*v860.i8, *v208.i8);
  v217 = vmull_high_u16(v860, v208);
  v859 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v214, 3uLL), v213), v214, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v215, 3uLL), v213), v215, 4uLL));
  v860 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v216, 3uLL), v213), v216, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v217, 3uLL), v213), v217, 4uLL));
  v218 = vmull_u16(*v861.i8, *v208.i8);
  v219 = vmull_high_u16(v861, v208);
  v220 = vmull_u16(*v862.i8, *v208.i8);
  v221 = vmull_high_u16(v862, v208);
  v861 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v218, 3uLL), v213), v218, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v219, 3uLL), v213), v219, 4uLL));
  v862 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v220, 3uLL), v213), v220, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v221, 3uLL), v213), v221, 4uLL));
  v222 = vmull_u16(*v863.i8, *v208.i8);
  v223 = vmull_high_u16(v863, v208);
  v224 = vmull_u16(*v864.i8, *v208.i8);
  v225 = vmull_high_u16(v864, v208);
  v863 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v222, 3uLL), v213), v222, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v223, 3uLL), v213), v223, 4uLL));
  v864 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v224, 3uLL), v213), v224, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v225, 3uLL), v213), v225, 4uLL));
  v226 = vmull_u16(*v865.i8, *v208.i8);
  v227 = vmull_high_u16(v865, v208);
  v228 = vmull_u16(*v866.i8, *v208.i8);
  v229 = vmull_high_u16(v866, v208);
  v865 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v226, 3uLL), v213), v226, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v227, 3uLL), v213), v227, 4uLL));
  v866 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v228, 3uLL), v213), v228, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v229, 3uLL), v213), v229, 4uLL));
  v230 = vmull_u16(*v867.i8, *v208.i8);
  v231 = vmull_high_u16(v867, v208);
  v232 = vmull_u16(*v868.i8, *v208.i8);
  v233 = vmull_high_u16(v868, v208);
  v867 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v230, 3uLL), v213), v230, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v231, 3uLL), v213), v231, 4uLL));
  v868 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v232, 3uLL), v213), v232, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v233, 3uLL), v213), v233, 4uLL));
  v234 = vmull_u16(*v869.i8, *v208.i8);
  v235 = vmull_high_u16(v869, v208);
  v236 = vmull_u16(*v870.i8, *v208.i8);
  v237 = vmull_high_u16(v870, v208);
  v869 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v234, 3uLL), v213), v234, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v235, 3uLL), v213), v235, 4uLL));
  v870 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v236, 3uLL), v213), v236, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v237, 3uLL), v213), v237, 4uLL));
  v238 = vmull_u16(*v871.i8, *v208.i8);
  v239 = vmull_high_u16(v871, v208);
  v240 = vmull_u16(*v872.i8, *v208.i8);
  v241 = vmull_high_u16(v872, v208);
  v871 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v238, 3uLL), v213), v238, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v239, 3uLL), v213), v239, 4uLL));
  v872 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v240, 3uLL), v213), v240, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v241, 3uLL), v213), v241, 4uLL));
  v242 = vmull_u16(*v873.i8, *v208.i8);
  v243 = vmull_high_u16(v873, v208);
  v244 = vmull_u16(*v874.i8, *v208.i8);
  v245 = vmull_high_u16(v874, v208);
  v873 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v242, 3uLL), v213), v242, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v243, 3uLL), v213), v243, 4uLL));
  v874 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v244, 3uLL), v213), v244, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v245, 3uLL), v213), v245, 4uLL));
  v246 = vmull_u16(*v875.i8, *v208.i8);
  v247 = vmull_high_u16(v875, v208);
  v248 = vmull_u16(*v876.i8, *v208.i8);
  v249 = vmull_high_u16(v876, v208);
  v875 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v246, 3uLL), v213), v246, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v247, 3uLL), v213), v247, 4uLL));
  v876 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v248, 3uLL), v213), v248, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v249, 3uLL), v213), v249, 4uLL));
  v250 = vmull_u16(*v877.i8, *v208.i8);
  v251 = vmull_high_u16(v877, v208);
  v252 = vmull_u16(*v878.i8, *v208.i8);
  v253 = vmull_high_u16(v878, v208);
  v877 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v250, 3uLL), v213), v250, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v251, 3uLL), v213), v251, 4uLL));
  v878 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v252, 3uLL), v213), v252, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v253, 3uLL), v213), v253, 4uLL));
  v254 = vmull_u16(*v879.i8, *v208.i8);
  v255 = vmull_high_u16(v879, v208);
  v256 = vmull_u16(*v880.i8, *v208.i8);
  v257 = vmull_high_u16(v880, v208);
  v879 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v254, 3uLL), v213), v254, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v255, 3uLL), v213), v255, 4uLL));
  v880 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v256, 3uLL), v213), v256, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v257, 3uLL), v213), v257, 4uLL));
  v258 = vmull_u16(*v881.i8, *v208.i8);
  v259 = vmull_high_u16(v881, v208);
  v260 = vmull_u16(*v882.i8, *v208.i8);
  v261 = vmull_high_u16(v882, v208);
  v881 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v258, 3uLL), v213), v258, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v259, 3uLL), v213), v259, 4uLL));
  v882 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v260, 3uLL), v213), v260, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v261, 3uLL), v213), v261, 4uLL));
  v262 = vmull_u16(*v883.i8, *v208.i8);
  v263 = vmull_high_u16(v883, v208);
  v264 = vmull_u16(*v884.i8, *v208.i8);
  v265 = vmull_high_u16(v884, v208);
  v883 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v262, 3uLL), v213), v262, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v263, 3uLL), v213), v263, 4uLL));
  v884 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v264, 3uLL), v213), v264, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v265, 3uLL), v213), v265, 4uLL));
  v266 = vmull_u16(*v885.i8, *v208.i8);
  v267 = vmull_high_u16(v885, v208);
  v268 = vmull_u16(*v886.i8, *v208.i8);
  v269 = vmull_high_u16(v886, v208);
  v885 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v266, 3uLL), v213), v266, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v267, 3uLL), v213), v267, 4uLL));
  v886 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v268, 3uLL), v213), v268, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v269, 3uLL), v213), v269, 4uLL));
  v270 = vmull_u16(*v887.i8, *v208.i8);
  v271 = vmull_high_u16(v887, v208);
  v272 = vmull_u16(*v888.i8, *v208.i8);
  v273 = vmull_high_u16(v888, v208);
  v887 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v270, 3uLL), v213), v270, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v271, 3uLL), v213), v271, 4uLL));
  v888 = vuzp1q_s16(vsraq_n_u32(vandq_s8(vshrq_n_u32(v272, 3uLL), v213), v272, 4uLL), vsraq_n_u32(vandq_s8(vshrq_n_u32(v273, 3uLL), v213), v273, 4uLL));
  scalar_inner_product(&__dst, a3 + 6208, &v926);
  v274 = 0;
  v275 = &xmmword_273BB63BA;
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
  v297 = &xmmword_273BB637A;
  do
  {
    v298 = *v297++;
    v299 = &__dst.i8[v296 * 8];
    v1030.val[0] = *(&v900 + v296 * 8);
    v1030.val[1] = *(&v901 + v296 * 8);
    v1027.val[0] = *(&v898 + v296 * 8);
    v1027.val[1] = *(&v899 + v296 * 8);
    v1026.val[0] = *(&v896 + v296 * 8);
    v1026.val[1] = *(&v897 + v296 * 8);
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
    LOWORD(v305) = WORD2(v896.i64[v296]);
    HIWORD(v305) = WORD2(v897.i64[v296]);
    v304.i32[3] = vqtbl2q_s8(v1030, xmmword_273BA7050).i32[3];
    v306.i32[0] = vqtbl2q_s8(v1028, xmmword_273BA7060).u32[0];
    v307 = vqtbl2q_s8(v1027, xmmword_273BA7070);
    v307.i32[3] = vzip1q_s16(*&v1030, *(&v1030 + 16)).i32[3];
    v308.i32[0] = vqtbl2q_s8(v1028, xmmword_273BA7080).u32[0];
    LOWORD(v309) = v898.i64[v296 + 1];
    WORD1(v309) = v899.i64[v296 + 1];
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
    v854 = vqtbl2q_s8(v1026, xmmword_273BA7100);
    v855 = v321.i32[0];
    v302.i64[1] = v303.i64[1];
    v321.i32[1] = v854.i32[1];
    v310.i64[1] = v307.i64[1];
    v856 = v310;
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
    LOWORD(v333) = WORD2(v900.i64[v296]);
    HIWORD(v333) = WORD2(v901.i64[v296]);
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
    v341 = vaddq_s16(v856, v321);
    v319.i64[0] = 0xD000D000D000D00;
    v319.i64[1] = 0xD000D000D000D00;
    v342 = vaddq_s16(v331, v319);
    v343 = vaddq_s16(v329, v319);
    v344 = vsubl_u16(*v307.i8, __PAIR64__(v854.u32[1], v855));
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
    v380 = vdupq_n_s32(*(&kInverseNTTRoots + v369 + 32));
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
  v387 = v895;
  v388 = vaddq_s16(__dst, v896);
  v389.i64[0] = 0xD000D000D000D00;
  v389.i64[1] = 0xD000D000D000D00;
  v390 = vaddq_s16(v388, v389);
  v391 = vorrq_s8(vandq_s8(vcltzq_s16(v390), v388), vmaxq_s16(v390, 0));
  v392 = vdupq_n_s16(0x62Fu);
  v393 = vdupq_n_s32(0x50692Fu);
  v394 = vaddq_s32(vmlsl_u16(vmull_u16(*__dst.i8, *v392.i8), *v896.i8, *v392.i8), v393);
  v395 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(__dst, v392), v896, v392), v393);
  v396 = vdupq_n_s32(0x13AFu);
  v397.i64[0] = 0xF2000000F2;
  v397.i64[1] = 0xF2000000F2;
  v398 = vuzp1q_s16(vmlaq_s32(v394, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v394.i8, *v396.i8), 0x18uLL), vmull_high_u32(v394, v396), 0x18uLL), v397), vmlaq_s32(v395, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v395.i8, *v396.i8), 0x18uLL), vmull_high_u32(v395, v396), 0x18uLL), v397));
  v399 = vaddq_s16(v398, v389);
  v400 = vorrq_s8(vandq_s8(vcltzq_s16(v399), v398), vmaxq_s16(v399, 0));
  v401 = vaddq_s16(v895, v897);
  v402 = vaddq_s16(v401, v389);
  __dst = v391;
  v895 = vorrq_s8(vandq_s8(vcltzq_s16(v402), v401), vmaxq_s16(v402, 0));
  v403 = vaddq_s32(vmlsl_u16(vmull_u16(*v387.i8, *v392.i8), *v897.i8, *v392.i8), v393);
  v404 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v387, v392), v897, v392), v393);
  v405 = vuzp1q_s16(vmlaq_s32(v403, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v403.i8, *v396.i8), 0x18uLL), vmull_high_u32(v403, v396), 0x18uLL), v397), vmlaq_s32(v404, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v404.i8, *v396.i8), 0x18uLL), vmull_high_u32(v404, v396), 0x18uLL), v397));
  v406 = vaddq_s16(v405, v389);
  v896 = v400;
  v897 = vorrq_s8(vandq_s8(vcltzq_s16(v406), v405), vmaxq_s16(v406, 0));
  v407 = v899;
  v408 = vaddq_s16(v898, v900);
  v409 = vaddq_s16(v408, v389);
  v410 = vorrq_s8(vandq_s8(vcltzq_s16(v409), v408), vmaxq_s16(v409, 0));
  v411 = vdupq_n_s16(0xAC8u);
  v412 = vdupq_n_s32(0x8C32C8u);
  v413 = vaddq_s32(vmlsl_u16(vmull_u16(*v898.i8, *v411.i8), *v900.i8, *v411.i8), v412);
  v414 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v898, v411), v900, v411), v412);
  v415 = vuzp1q_s16(vmlaq_s32(v413, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v413.i8, *v396.i8), 0x18uLL), vmull_high_u32(v413, v396), 0x18uLL), v397), vmlaq_s32(v414, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v414.i8, *v396.i8), 0x18uLL), vmull_high_u32(v414, v396), 0x18uLL), v397));
  v416 = vaddq_s16(v415, v389);
  v417 = vorrq_s8(vandq_s8(vcltzq_s16(v416), v415), vmaxq_s16(v416, 0));
  v418 = vaddq_s16(v899, v901);
  v419 = vaddq_s16(v418, v389);
  v898 = v410;
  v899 = vorrq_s8(vandq_s8(vcltzq_s16(v419), v418), vmaxq_s16(v419, 0));
  v420 = vaddq_s32(vmlsl_u16(vmull_u16(*v407.i8, *v411.i8), *v901.i8, *v411.i8), v412);
  v421 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v407, v411), v901, v411), v412);
  v422 = vuzp1q_s16(vmlaq_s32(v420, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v420.i8, *v396.i8), 0x18uLL), vmull_high_u32(v420, v396), 0x18uLL), v397), vmlaq_s32(v421, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v421.i8, *v396.i8), 0x18uLL), vmull_high_u32(v421, v396), 0x18uLL), v397));
  v423 = vaddq_s16(v422, v389);
  v900 = v417;
  v901 = vorrq_s8(vandq_s8(vcltzq_s16(v423), v422), vmaxq_s16(v423, 0));
  v424 = v903;
  v425 = vaddq_s16(v902, v904);
  v426 = vaddq_s16(v425, v389);
  v427 = vorrq_s8(vandq_s8(vcltzq_s16(v426), v425), vmaxq_s16(v426, 0));
  v426.i64[0] = 0x45004500450045;
  v426.i64[1] = 0x45004500450045;
  v428 = vdupq_n_s32(0x38145u);
  v429 = vaddq_s32(vmlsl_u16(vmull_u16(*v902.i8, 0x45004500450045), *v904.i8, 0x45004500450045), v428);
  v430 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v902, v426), v904, v426), v428);
  v431 = vuzp1q_s16(vmlaq_s32(v429, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v429.i8, *v396.i8), 0x18uLL), vmull_high_u32(v429, v396), 0x18uLL), v397), vmlaq_s32(v430, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v430.i8, *v396.i8), 0x18uLL), vmull_high_u32(v430, v396), 0x18uLL), v397));
  v432 = vaddq_s16(v431, v389);
  v433 = vorrq_s8(vandq_s8(vcltzq_s16(v432), v431), vmaxq_s16(v432, 0));
  v434 = vaddq_s16(v903, v905);
  v435 = vaddq_s16(v434, v389);
  v902 = v427;
  v903 = vorrq_s8(vandq_s8(vcltzq_s16(v435), v434), vmaxq_s16(v435, 0));
  v436 = vaddq_s32(vmlsl_u16(vmull_u16(*v424.i8, 0x45004500450045), *v905.i8, 0x45004500450045), v428);
  v437 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v424, v426), v905, v426), v428);
  v438 = vuzp1q_s16(vmlaq_s32(v436, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v436.i8, *v396.i8), 0x18uLL), vmull_high_u32(v436, v396), 0x18uLL), v397), vmlaq_s32(v437, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v437.i8, *v396.i8), 0x18uLL), vmull_high_u32(v437, v396), 0x18uLL), v397));
  v439 = vaddq_s16(v438, v389);
  v904 = v433;
  v905 = vorrq_s8(vandq_s8(vcltzq_s16(v439), v438), vmaxq_s16(v439, 0));
  v440 = v907;
  v441 = vaddq_s16(v906, v908);
  v442 = vaddq_s16(v441, v389);
  v443 = vorrq_s8(vandq_s8(vcltzq_s16(v442), v441), vmaxq_s16(v442, 0));
  v444 = vdupq_n_s16(0x21Fu);
  v445 = vdupq_n_s32(0x1B951Fu);
  v446 = vaddq_s32(vmlsl_u16(vmull_u16(*v906.i8, *v444.i8), *v908.i8, *v444.i8), v445);
  v447 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v906, v444), v908, v444), v445);
  v448 = vuzp1q_s16(vmlaq_s32(v446, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v446.i8, *v396.i8), 0x18uLL), vmull_high_u32(v446, v396), 0x18uLL), v397), vmlaq_s32(v447, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v447.i8, *v396.i8), 0x18uLL), vmull_high_u32(v447, v396), 0x18uLL), v397));
  v449 = vaddq_s16(v448, v389);
  v450 = vorrq_s8(vandq_s8(vcltzq_s16(v449), v448), vmaxq_s16(v449, 0));
  v451 = vaddq_s16(v907, v909);
  v452 = vaddq_s16(v451, v389);
  v906 = v443;
  v907 = vorrq_s8(vandq_s8(vcltzq_s16(v452), v451), vmaxq_s16(v452, 0));
  v453 = vaddq_s32(vmlsl_u16(vmull_u16(*v440.i8, *v444.i8), *v909.i8, *v444.i8), v445);
  v454 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v440, v444), v909, v444), v445);
  v455 = vuzp1q_s16(vmlaq_s32(v453, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v453.i8, *v396.i8), 0x18uLL), vmull_high_u32(v453, v396), 0x18uLL), v397), vmlaq_s32(v454, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v454.i8, *v396.i8), 0x18uLL), vmull_high_u32(v454, v396), 0x18uLL), v397));
  v456 = vaddq_s16(v455, v389);
  v908 = v450;
  v909 = vorrq_s8(vandq_s8(vcltzq_s16(v456), v455), vmaxq_s16(v456, 0));
  v457 = v911;
  v458 = vaddq_s16(v910, v912);
  v459 = vaddq_s16(v458, v389);
  v460 = vorrq_s8(vandq_s8(vcltzq_s16(v459), v458), vmaxq_s16(v459, 0));
  v461 = vdupq_n_s16(0x9E4u);
  v462 = vdupq_n_s32(0x809DE4u);
  v463 = vaddq_s32(vmlsl_u16(vmull_u16(*v910.i8, *v461.i8), *v912.i8, *v461.i8), v462);
  v464 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v910, v461), v912, v461), v462);
  v465 = vuzp1q_s16(vmlaq_s32(v463, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v463.i8, *v396.i8), 0x18uLL), vmull_high_u32(v463, v396), 0x18uLL), v397), vmlaq_s32(v464, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v464.i8, *v396.i8), 0x18uLL), vmull_high_u32(v464, v396), 0x18uLL), v397));
  v466 = vaddq_s16(v465, v389);
  v467 = vorrq_s8(vandq_s8(vcltzq_s16(v466), v465), vmaxq_s16(v466, 0));
  v468 = vaddq_s16(v911, v913);
  v469 = vaddq_s16(v468, v389);
  v910 = v460;
  v911 = vorrq_s8(vandq_s8(vcltzq_s16(v469), v468), vmaxq_s16(v469, 0));
  v470 = vaddq_s32(vmlsl_u16(vmull_u16(*v457.i8, *v461.i8), *v913.i8, *v461.i8), v462);
  v471 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v457, v461), v913, v461), v462);
  v472 = vuzp1q_s16(vmlaq_s32(v470, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v470.i8, *v396.i8), 0x18uLL), vmull_high_u32(v470, v396), 0x18uLL), v397), vmlaq_s32(v471, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v471.i8, *v396.i8), 0x18uLL), vmull_high_u32(v471, v396), 0x18uLL), v397));
  v473 = vaddq_s16(v472, v389);
  v912 = v467;
  v913 = vorrq_s8(vandq_s8(vcltzq_s16(v473), v472), vmaxq_s16(v473, 0));
  v474 = v915;
  v475 = vaddq_s16(v914, v916);
  v476 = vaddq_s16(v475, v389);
  v477 = vdupq_n_s16(0xC40u);
  v478 = vorrq_s8(vandq_s8(vcltzq_s16(v476), v475), vmaxq_s16(v476, 0));
  v479 = vdupq_n_s32(0x9F4C40u);
  v480 = vaddq_s32(vmlsl_u16(vmull_u16(*v914.i8, *v477.i8), *v916.i8, *v477.i8), v479);
  v481 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v914, v477), v916, v477), v479);
  v482 = vuzp1q_s16(vmlaq_s32(v480, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v480.i8, *v396.i8), 0x18uLL), vmull_high_u32(v480, v396), 0x18uLL), v397), vmlaq_s32(v481, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v481.i8, *v396.i8), 0x18uLL), vmull_high_u32(v481, v396), 0x18uLL), v397));
  v483 = vaddq_s16(v482, v389);
  v484 = vorrq_s8(vandq_s8(vcltzq_s16(v483), v482), vmaxq_s16(v483, 0));
  v485 = vaddq_s16(v915, v917);
  v486 = vaddq_s16(v485, v389);
  v914 = v478;
  v915 = vorrq_s8(vandq_s8(vcltzq_s16(v486), v485), vmaxq_s16(v486, 0));
  v487 = vaddq_s32(vmlsl_u16(vmull_u16(*v474.i8, *v477.i8), *v917.i8, *v477.i8), v479);
  v488 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v474, v477), v917, v477), v479);
  v489 = vuzp1q_s16(vmlaq_s32(v487, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v487.i8, *v396.i8), 0x18uLL), vmull_high_u32(v487, v396), 0x18uLL), v397), vmlaq_s32(v488, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v488.i8, *v396.i8), 0x18uLL), vmull_high_u32(v488, v396), 0x18uLL), v397));
  v490 = vaddq_s16(v489, v389);
  v916 = v484;
  v917 = vorrq_s8(vandq_s8(vcltzq_s16(v490), v489), vmaxq_s16(v490, 0));
  v491 = v919;
  v492 = vaddq_s16(v918, v920);
  v493 = vaddq_s16(v492, v389);
  v494 = vorrq_s8(vandq_s8(vcltzq_s16(v493), v492), vmaxq_s16(v493, 0));
  v495 = vdupq_n_s16(0x582u);
  v496 = vdupq_n_s32(0x479F82u);
  v497 = vaddq_s32(vmlsl_u16(vmull_u16(*v918.i8, *v495.i8), *v920.i8, *v495.i8), v496);
  v498 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v918, v495), v920, v495), v496);
  v499 = vuzp1q_s16(vmlaq_s32(v497, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v497.i8, *v396.i8), 0x18uLL), vmull_high_u32(v497, v396), 0x18uLL), v397), vmlaq_s32(v498, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v498.i8, *v396.i8), 0x18uLL), vmull_high_u32(v498, v396), 0x18uLL), v397));
  v500 = vaddq_s16(v499, v389);
  v501 = vorrq_s8(vandq_s8(vcltzq_s16(v500), v499), vmaxq_s16(v500, 0));
  v502 = vaddq_s16(v919, v921);
  v503 = vaddq_s16(v502, v389);
  v918 = v494;
  v919 = vorrq_s8(vandq_s8(vcltzq_s16(v503), v502), vmaxq_s16(v503, 0));
  v504 = vaddq_s32(vmlsl_u16(vmull_u16(*v491.i8, *v495.i8), *v921.i8, *v495.i8), v496);
  v505 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v491, v495), v921, v495), v496);
  v506 = vuzp1q_s16(vmlaq_s32(v504, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v504.i8, *v396.i8), 0x18uLL), vmull_high_u32(v504, v396), 0x18uLL), v397), vmlaq_s32(v505, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v505.i8, *v396.i8), 0x18uLL), vmull_high_u32(v505, v396), 0x18uLL), v397));
  v507 = vaddq_s16(v506, v389);
  v920 = v501;
  v921 = vorrq_s8(vandq_s8(vcltzq_s16(v507), v506), vmaxq_s16(v507, 0));
  v508 = v923;
  v509 = vaddq_s16(v922, v924);
  v510 = vaddq_s16(v509, v389);
  v511 = vorrq_s8(vandq_s8(vcltzq_s16(v510), v509), vmaxq_s16(v510, 0));
  v512 = vdupq_n_s16(0x8DBu);
  v513 = vdupq_n_s32(0x7327DBu);
  v514 = vaddq_s32(vmlsl_u16(vmull_u16(*v922.i8, *v512.i8), *v924.i8, *v512.i8), v513);
  v515 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v922, v512), v924, v512), v513);
  v516 = vuzp1q_s16(vmlaq_s32(v514, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v514.i8, *v396.i8), 0x18uLL), vmull_high_u32(v514, v396), 0x18uLL), v397), vmlaq_s32(v515, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v515.i8, *v396.i8), 0x18uLL), vmull_high_u32(v515, v396), 0x18uLL), v397));
  v517 = vaddq_s16(v516, v389);
  v518 = vorrq_s8(vandq_s8(vcltzq_s16(v517), v516), vmaxq_s16(v517, 0));
  v519 = vaddq_s16(v923, v925);
  v520 = vaddq_s16(v519, v389);
  v922 = v511;
  v923 = vorrq_s8(vandq_s8(vcltzq_s16(v520), v519), vmaxq_s16(v520, 0));
  v521 = vaddq_s32(vmlsl_u16(vmull_u16(*v508.i8, *v512.i8), *v925.i8, *v512.i8), v513);
  v522 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v508, v512), v925, v512), v513);
  v523 = vuzp1q_s16(vmlaq_s32(v521, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v521.i8, *v396.i8), 0x18uLL), vmull_high_u32(v521, v396), 0x18uLL), v397), vmlaq_s32(v522, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v522.i8, *v396.i8), 0x18uLL), vmull_high_u32(v522, v396), 0x18uLL), v397));
  v524 = vaddq_s16(v523, v389);
  v924 = v518;
  v925 = vorrq_s8(vandq_s8(vcltzq_s16(v524), v523), vmaxq_s16(v524, 0));
  v525 = v895;
  v526 = vaddq_s16(__dst, v898);
  v527 = vaddq_s16(v526, v389);
  v528 = vandq_s8(vcltzq_s16(v527), v526);
  v529 = vdupq_n_s16(0x9B1u);
  v530 = vorrq_s8(v528, vmaxq_s16(v527, 0));
  v531 = vdupq_n_s32(0x7E06B1u);
  v532 = vaddq_s32(vmlsl_u16(vmull_u16(*__dst.i8, *v529.i8), *v898.i8, *v529.i8), v531);
  v533 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(__dst, v529), v898, v529), v531);
  v534 = vuzp1q_s16(vmlaq_s32(v532, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v532.i8, *v396.i8), 0x18uLL), vmull_high_u32(v532, v396), 0x18uLL), v397), vmlaq_s32(v533, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v533.i8, *v396.i8), 0x18uLL), vmull_high_u32(v533, v396), 0x18uLL), v397));
  v535 = vaddq_s16(v534, v389);
  v536 = vorrq_s8(vandq_s8(vcltzq_s16(v535), v534), vmaxq_s16(v535, 0));
  v537 = vaddq_s16(v895, v899);
  v538 = vaddq_s16(v537, v389);
  __dst = v530;
  v895 = vorrq_s8(vandq_s8(vcltzq_s16(v538), v537), vmaxq_s16(v538, 0));
  v539 = vaddq_s32(vmlsl_u16(vmull_u16(*v525.i8, *v529.i8), *v899.i8, *v529.i8), v531);
  v540 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v525, v529), v899, v529), v531);
  v541 = vuzp1q_s16(vmlaq_s32(v539, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v539.i8, *v396.i8), 0x18uLL), vmull_high_u32(v539, v396), 0x18uLL), v397), vmlaq_s32(v540, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v540.i8, *v396.i8), 0x18uLL), vmull_high_u32(v540, v396), 0x18uLL), v397));
  v542 = vaddq_s16(v541, v389);
  v898 = v536;
  v899 = vorrq_s8(vandq_s8(vcltzq_s16(v542), v541), vmaxq_s16(v542, 0));
  v543 = v897;
  v544 = vaddq_s16(v896, v900);
  v545 = vaddq_s16(v544, v389);
  v546 = vorrq_s8(vandq_s8(vcltzq_s16(v545), v544), vmaxq_s16(v545, 0));
  v547 = vaddq_s32(vmlsl_u16(vmull_u16(*v896.i8, *v529.i8), *v900.i8, *v529.i8), v531);
  v548 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v896, v529), v900, v529), v531);
  v549 = vuzp1q_s16(vmlaq_s32(v547, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v547.i8, *v396.i8), 0x18uLL), vmull_high_u32(v547, v396), 0x18uLL), v397), vmlaq_s32(v548, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v548.i8, *v396.i8), 0x18uLL), vmull_high_u32(v548, v396), 0x18uLL), v397));
  v550 = vaddq_s16(v549, v389);
  v551 = vorrq_s8(vandq_s8(vcltzq_s16(v550), v549), vmaxq_s16(v550, 0));
  v552 = vaddq_s16(v897, v901);
  v553 = vaddq_s16(v552, v389);
  v896 = v546;
  v897 = vorrq_s8(vandq_s8(vcltzq_s16(v553), v552), vmaxq_s16(v553, 0));
  v554 = vmlsl_high_u16(vmull_high_u16(v543, v529), v901, v529);
  v555 = vaddq_s32(vmlsl_u16(vmull_u16(*v543.i8, *v529.i8), *v901.i8, *v529.i8), v531);
  v556 = vaddq_s32(v554, v531);
  v557 = vuzp1q_s16(vmlaq_s32(v555, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v555.i8, *v396.i8), 0x18uLL), vmull_high_u32(v555, v396), 0x18uLL), v397), vmlaq_s32(v556, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v556.i8, *v396.i8), 0x18uLL), vmull_high_u32(v556, v396), 0x18uLL), v397));
  v558 = vaddq_s16(v557, v389);
  v900 = v551;
  v901 = vorrq_s8(vandq_s8(vcltzq_s16(v558), v557), vmaxq_s16(v558, 0));
  v559 = v903;
  v560 = vaddq_s16(v902, v906);
  v561 = vaddq_s16(v560, v389);
  v562 = vorrq_s8(vandq_s8(vcltzq_s16(v561), v560), vmaxq_s16(v561, 0));
  v563 = vdupq_n_s16(0x598u);
  v564 = vdupq_n_s32(0x48BD98u);
  v565 = vaddq_s32(vmlsl_u16(vmull_u16(*v902.i8, *v563.i8), *v906.i8, *v563.i8), v564);
  v566 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v902, v563), v906, v563), v564);
  v567 = vuzp1q_s16(vmlaq_s32(v565, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v565.i8, *v396.i8), 0x18uLL), vmull_high_u32(v565, v396), 0x18uLL), v397), vmlaq_s32(v566, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v566.i8, *v396.i8), 0x18uLL), vmull_high_u32(v566, v396), 0x18uLL), v397));
  v568 = vaddq_s16(v567, v389);
  v569 = vorrq_s8(vandq_s8(vcltzq_s16(v568), v567), vmaxq_s16(v568, 0));
  v570 = vaddq_s16(v903, v907);
  v571 = vaddq_s16(v570, v389);
  v902 = v562;
  v903 = vorrq_s8(vandq_s8(vcltzq_s16(v571), v570), vmaxq_s16(v571, 0));
  v572 = vaddq_s32(vmlsl_u16(vmull_u16(*v559.i8, *v563.i8), *v907.i8, *v563.i8), v564);
  v573 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v559, v563), v907, v563), v564);
  v574 = vuzp1q_s16(vmlaq_s32(v572, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v572.i8, *v396.i8), 0x18uLL), vmull_high_u32(v572, v396), 0x18uLL), v397), vmlaq_s32(v573, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v573.i8, *v396.i8), 0x18uLL), vmull_high_u32(v573, v396), 0x18uLL), v397));
  v575 = vaddq_s16(v574, v389);
  v906 = v569;
  v907 = vorrq_s8(vandq_s8(vcltzq_s16(v575), v574), vmaxq_s16(v575, 0));
  v576 = v905;
  v577 = vaddq_s16(v904, v908);
  v578 = vaddq_s16(v577, v389);
  v579 = vorrq_s8(vandq_s8(vcltzq_s16(v578), v577), vmaxq_s16(v578, 0));
  v580 = vaddq_s32(vmlsl_u16(vmull_u16(*v904.i8, *v563.i8), *v908.i8, *v563.i8), v564);
  v581 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v904, v563), v908, v563), v564);
  v582 = vuzp1q_s16(vmlaq_s32(v580, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v580.i8, *v396.i8), 0x18uLL), vmull_high_u32(v580, v396), 0x18uLL), v397), vmlaq_s32(v581, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v581.i8, *v396.i8), 0x18uLL), vmull_high_u32(v581, v396), 0x18uLL), v397));
  v583 = vaddq_s16(v582, v389);
  v584 = vorrq_s8(vandq_s8(vcltzq_s16(v583), v582), vmaxq_s16(v583, 0));
  v585 = vaddq_s16(v905, v909);
  v586 = vaddq_s16(v585, v389);
  v904 = v579;
  v905 = vorrq_s8(vandq_s8(vcltzq_s16(v586), v585), vmaxq_s16(v586, 0));
  v587 = vmlsl_high_u16(vmull_high_u16(v576, v563), v909, v563);
  v588 = vaddq_s32(vmlsl_u16(vmull_u16(*v576.i8, *v563.i8), *v909.i8, *v563.i8), v564);
  v589 = vaddq_s32(v587, v564);
  v590 = vuzp1q_s16(vmlaq_s32(v588, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v588.i8, *v396.i8), 0x18uLL), vmull_high_u32(v588, v396), 0x18uLL), v397), vmlaq_s32(v589, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v589.i8, *v396.i8), 0x18uLL), vmull_high_u32(v589, v396), 0x18uLL), v397));
  v591 = vaddq_s16(v590, v389);
  v908 = v584;
  v909 = vorrq_s8(vandq_s8(vcltzq_s16(v591), v590), vmaxq_s16(v591, 0));
  v592 = v911;
  v593 = vaddq_s16(v910, v914);
  v594 = vaddq_s16(v593, v389);
  v595 = vorrq_s8(vandq_s8(vcltzq_s16(v594), v593), vmaxq_s16(v594, 0));
  v596 = vdupq_n_s16(0xA8Bu);
  v597 = vdupq_n_s32(0x89198Bu);
  v598 = vaddq_s32(vmlsl_u16(vmull_u16(*v910.i8, *v596.i8), *v914.i8, *v596.i8), v597);
  v599 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v910, v596), v914, v596), v597);
  v600 = vuzp1q_s16(vmlaq_s32(v598, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v598.i8, *v396.i8), 0x18uLL), vmull_high_u32(v598, v396), 0x18uLL), v397), vmlaq_s32(v599, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v599.i8, *v396.i8), 0x18uLL), vmull_high_u32(v599, v396), 0x18uLL), v397));
  v601 = vaddq_s16(v600, v389);
  v602 = vorrq_s8(vandq_s8(vcltzq_s16(v601), v600), vmaxq_s16(v601, 0));
  v603 = vaddq_s16(v911, v915);
  v604 = vaddq_s16(v603, v389);
  v910 = v595;
  v911 = vorrq_s8(vandq_s8(vcltzq_s16(v604), v603), vmaxq_s16(v604, 0));
  v605 = vaddq_s32(vmlsl_u16(vmull_u16(*v592.i8, *v596.i8), *v915.i8, *v596.i8), v597);
  v606 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v592, v596), v915, v596), v597);
  v607 = vuzp1q_s16(vmlaq_s32(v605, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v605.i8, *v396.i8), 0x18uLL), vmull_high_u32(v605, v396), 0x18uLL), v397), vmlaq_s32(v606, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v606.i8, *v396.i8), 0x18uLL), vmull_high_u32(v606, v396), 0x18uLL), v397));
  v608 = vaddq_s16(v607, v389);
  v914 = v602;
  v915 = vorrq_s8(vandq_s8(vcltzq_s16(v608), v607), vmaxq_s16(v608, 0));
  v609 = v913;
  v610 = vaddq_s16(v912, v916);
  v611 = vaddq_s16(v610, v389);
  v612 = vorrq_s8(vandq_s8(vcltzq_s16(v611), v610), vmaxq_s16(v611, 0));
  v613 = vaddq_s32(vmlsl_u16(vmull_u16(*v912.i8, *v596.i8), *v916.i8, *v596.i8), v597);
  v614 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v912, v596), v916, v596), v597);
  v615 = vuzp1q_s16(vmlaq_s32(v613, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v613.i8, *v396.i8), 0x18uLL), vmull_high_u32(v613, v396), 0x18uLL), v397), vmlaq_s32(v614, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v614.i8, *v396.i8), 0x18uLL), vmull_high_u32(v614, v396), 0x18uLL), v397));
  v616 = vaddq_s16(v615, v389);
  v617 = vorrq_s8(vandq_s8(vcltzq_s16(v616), v615), vmaxq_s16(v616, 0));
  v618 = vaddq_s16(v913, v917);
  v619 = vaddq_s16(v618, v389);
  v912 = v612;
  v913 = vorrq_s8(vandq_s8(vcltzq_s16(v619), v618), vmaxq_s16(v619, 0));
  v620 = vmlsl_high_u16(vmull_high_u16(v609, v596), v917, v596);
  v621 = vaddq_s32(vmlsl_u16(vmull_u16(*v609.i8, *v596.i8), *v917.i8, *v596.i8), v597);
  v622 = vaddq_s32(v620, v597);
  v623 = vuzp1q_s16(vmlaq_s32(v621, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v621.i8, *v396.i8), 0x18uLL), vmull_high_u32(v621, v396), 0x18uLL), v397), vmlaq_s32(v622, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v622.i8, *v396.i8), 0x18uLL), vmull_high_u32(v622, v396), 0x18uLL), v397));
  v624 = vaddq_s16(v623, v389);
  v916 = v617;
  v917 = vorrq_s8(vandq_s8(vcltzq_s16(v624), v623), vmaxq_s16(v624, 0));
  v625 = v919;
  v626 = vaddq_s16(v918, v922);
  v627 = vaddq_s16(v626, v389);
  v628 = vandq_s8(vcltzq_s16(v627), v626);
  v629 = vdupq_n_s16(0x2AFu);
  v630 = vorrq_s8(v628, vmaxq_s16(v627, 0));
  v631 = vdupq_n_s32(0x22E5AFu);
  v632 = vaddq_s32(vmlsl_u16(vmull_u16(*v918.i8, *v629.i8), *v922.i8, *v629.i8), v631);
  v633 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v918, v629), v922, v629), v631);
  v634 = vuzp1q_s16(vmlaq_s32(v632, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v632.i8, *v396.i8), 0x18uLL), vmull_high_u32(v632, v396), 0x18uLL), v397), vmlaq_s32(v633, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v633.i8, *v396.i8), 0x18uLL), vmull_high_u32(v633, v396), 0x18uLL), v397));
  v635 = vaddq_s16(v634, v389);
  v636 = vorrq_s8(vandq_s8(vcltzq_s16(v635), v634), vmaxq_s16(v635, 0));
  v637 = vaddq_s16(v919, v923);
  v638 = vaddq_s16(v637, v389);
  v918 = v630;
  v919 = vorrq_s8(vandq_s8(vcltzq_s16(v638), v637), vmaxq_s16(v638, 0));
  v639 = vaddq_s32(vmlsl_u16(vmull_u16(*v625.i8, *v629.i8), *v923.i8, *v629.i8), v631);
  v640 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v625, v629), v923, v629), v631);
  v641 = vuzp1q_s16(vmlaq_s32(v639, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v639.i8, *v396.i8), 0x18uLL), vmull_high_u32(v639, v396), 0x18uLL), v397), vmlaq_s32(v640, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v640.i8, *v396.i8), 0x18uLL), vmull_high_u32(v640, v396), 0x18uLL), v397));
  v642 = vaddq_s16(v641, v389);
  v922 = v636;
  v923 = vorrq_s8(vandq_s8(vcltzq_s16(v642), v641), vmaxq_s16(v642, 0));
  v643 = v921;
  v644 = vaddq_s16(v920, v924);
  v645 = vaddq_s16(v644, v389);
  v646 = vorrq_s8(vandq_s8(vcltzq_s16(v645), v644), vmaxq_s16(v645, 0));
  v647 = vaddq_s32(vmlsl_u16(vmull_u16(*v920.i8, *v629.i8), *v924.i8, *v629.i8), v631);
  v648 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v920, v629), v924, v629), v631);
  v649 = vuzp1q_s16(vmlaq_s32(v647, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v647.i8, *v396.i8), 0x18uLL), vmull_high_u32(v647, v396), 0x18uLL), v397), vmlaq_s32(v648, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v648.i8, *v396.i8), 0x18uLL), vmull_high_u32(v648, v396), 0x18uLL), v397));
  v650 = vaddq_s16(v649, v389);
  v651 = vorrq_s8(vandq_s8(vcltzq_s16(v650), v649), vmaxq_s16(v650, 0));
  v652 = vaddq_s16(v921, v925);
  v653 = vaddq_s16(v652, v389);
  v920 = v646;
  v921 = vorrq_s8(vandq_s8(vcltzq_s16(v653), v652), vmaxq_s16(v653, 0));
  v654 = vmlsl_high_u16(vmull_high_u16(v643, v629), v925, v629);
  v655 = vaddq_s32(vmlsl_u16(vmull_u16(*v643.i8, *v629.i8), *v925.i8, *v629.i8), v631);
  v656 = vaddq_s32(v654, v631);
  v657 = vuzp1q_s16(vmlaq_s32(v655, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v655.i8, *v396.i8), 0x18uLL), vmull_high_u32(v655, v396), 0x18uLL), v397), vmlaq_s32(v656, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v656.i8, *v396.i8), 0x18uLL), vmull_high_u32(v656, v396), 0x18uLL), v397));
  v658 = vaddq_s16(v657, v389);
  v924 = v651;
  v925 = vorrq_s8(vandq_s8(vcltzq_s16(v658), v657), vmaxq_s16(v658, 0));
  v659 = v895;
  v660 = vaddq_s16(__dst, v902);
  v661 = vaddq_s16(v660, v389);
  v662 = vorrq_s8(vandq_s8(vcltzq_s16(v661), v660), vmaxq_s16(v661, 0));
  v660.i64[0] = 0x28002800280028;
  v660.i64[1] = 0x28002800280028;
  v663 = vdupq_n_s32(0x20828u);
  v664 = vaddq_s32(vmlsl_u16(vmull_u16(*__dst.i8, 0x28002800280028), *v902.i8, 0x28002800280028), v663);
  v665 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(__dst, v660), v902, v660), v663);
  v666 = vuzp1q_s16(vmlaq_s32(v664, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v664.i8, *v396.i8), 0x18uLL), vmull_high_u32(v664, v396), 0x18uLL), v397), vmlaq_s32(v665, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v665.i8, *v396.i8), 0x18uLL), vmull_high_u32(v665, v396), 0x18uLL), v397));
  v667 = vaddq_s16(v666, v389);
  v668 = vorrq_s8(vandq_s8(vcltzq_s16(v667), v666), vmaxq_s16(v667, 0));
  v669 = vaddq_s16(v895, v903);
  v670 = vaddq_s16(v669, v389);
  __dst = v662;
  v895 = vorrq_s8(vandq_s8(vcltzq_s16(v670), v669), vmaxq_s16(v670, 0));
  v671 = vaddq_s32(vmlsl_u16(vmull_u16(*v659.i8, 0x28002800280028), *v903.i8, 0x28002800280028), v663);
  v672 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v659, v660), v903, v660), v663);
  v673 = vuzp1q_s16(vmlaq_s32(v671, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v671.i8, *v396.i8), 0x18uLL), vmull_high_u32(v671, v396), 0x18uLL), v397), vmlaq_s32(v672, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v672.i8, *v396.i8), 0x18uLL), vmull_high_u32(v672, v396), 0x18uLL), v397));
  v674 = vaddq_s16(v673, v389);
  v902 = v668;
  v903 = vorrq_s8(vandq_s8(vcltzq_s16(v674), v673), vmaxq_s16(v674, 0));
  v675 = v897;
  v676 = vaddq_s16(v896, v904);
  v677 = vaddq_s16(v676, v389);
  v678 = vorrq_s8(vandq_s8(vcltzq_s16(v677), v676), vmaxq_s16(v677, 0));
  v679 = vaddq_s32(vmlsl_u16(vmull_u16(*v896.i8, 0x28002800280028), *v904.i8, 0x28002800280028), v663);
  v680 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v896, v660), v904, v660), v663);
  v681 = vuzp1q_s16(vmlaq_s32(v679, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v679.i8, *v396.i8), 0x18uLL), vmull_high_u32(v679, v396), 0x18uLL), v397), vmlaq_s32(v680, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v680.i8, *v396.i8), 0x18uLL), vmull_high_u32(v680, v396), 0x18uLL), v397));
  v682 = vaddq_s16(v681, v389);
  v683 = vorrq_s8(vandq_s8(vcltzq_s16(v682), v681), vmaxq_s16(v682, 0));
  v684 = vaddq_s16(v897, v905);
  v685 = vaddq_s16(v684, v389);
  v896 = v678;
  v897 = vorrq_s8(vandq_s8(vcltzq_s16(v685), v684), vmaxq_s16(v685, 0));
  v686 = vaddq_s32(vmlsl_u16(vmull_u16(*v675.i8, 0x28002800280028), *v905.i8, 0x28002800280028), v663);
  v687 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v675, v660), v905, v660), v663);
  v688 = vuzp1q_s16(vmlaq_s32(v686, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v686.i8, *v396.i8), 0x18uLL), vmull_high_u32(v686, v396), 0x18uLL), v397), vmlaq_s32(v687, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v687.i8, *v396.i8), 0x18uLL), vmull_high_u32(v687, v396), 0x18uLL), v397));
  v689 = vaddq_s16(v688, v389);
  v904 = v683;
  v905 = vorrq_s8(vandq_s8(vcltzq_s16(v689), v688), vmaxq_s16(v689, 0));
  v690 = v899;
  v691 = vaddq_s16(v898, v906);
  v692 = vaddq_s16(v691, v389);
  v693 = vorrq_s8(vandq_s8(vcltzq_s16(v692), v691), vmaxq_s16(v692, 0));
  v694 = vaddq_s32(vmlsl_u16(vmull_u16(*v898.i8, 0x28002800280028), *v906.i8, 0x28002800280028), v663);
  v695 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v898, v660), v906, v660), v663);
  v696 = vuzp1q_s16(vmlaq_s32(v694, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v694.i8, *v396.i8), 0x18uLL), vmull_high_u32(v694, v396), 0x18uLL), v397), vmlaq_s32(v695, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v695.i8, *v396.i8), 0x18uLL), vmull_high_u32(v695, v396), 0x18uLL), v397));
  v697 = vaddq_s16(v696, v389);
  v698 = vorrq_s8(vandq_s8(vcltzq_s16(v697), v696), vmaxq_s16(v697, 0));
  v699 = vaddq_s16(v899, v907);
  v700 = vaddq_s16(v699, v389);
  v898 = v693;
  v899 = vorrq_s8(vandq_s8(vcltzq_s16(v700), v699), vmaxq_s16(v700, 0));
  v701 = vaddq_s32(vmlsl_u16(vmull_u16(*v690.i8, 0x28002800280028), *v907.i8, 0x28002800280028), v663);
  v702 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v690, v660), v907, v660), v663);
  v703 = vuzp1q_s16(vmlaq_s32(v701, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v701.i8, *v396.i8), 0x18uLL), vmull_high_u32(v701, v396), 0x18uLL), v397), vmlaq_s32(v702, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v702.i8, *v396.i8), 0x18uLL), vmull_high_u32(v702, v396), 0x18uLL), v397));
  v704 = vaddq_s16(v703, v389);
  v906 = v698;
  v907 = vorrq_s8(vandq_s8(vcltzq_s16(v704), v703), vmaxq_s16(v704, 0));
  v705 = v901;
  v706 = vaddq_s16(v900, v908);
  v707 = vaddq_s16(v706, v389);
  v708 = vorrq_s8(vandq_s8(vcltzq_s16(v707), v706), vmaxq_s16(v707, 0));
  v709 = vaddq_s32(vmlsl_u16(vmull_u16(*v900.i8, 0x28002800280028), *v908.i8, 0x28002800280028), v663);
  v710 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v900, v660), v908, v660), v663);
  v711 = vuzp1q_s16(vmlaq_s32(v709, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v709.i8, *v396.i8), 0x18uLL), vmull_high_u32(v709, v396), 0x18uLL), v397), vmlaq_s32(v710, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v710.i8, *v396.i8), 0x18uLL), vmull_high_u32(v710, v396), 0x18uLL), v397));
  v712 = vaddq_s16(v711, v389);
  v713 = vorrq_s8(vandq_s8(vcltzq_s16(v712), v711), vmaxq_s16(v712, 0));
  v714 = vaddq_s16(v901, v909);
  v715 = vaddq_s16(v714, v389);
  v900 = v708;
  v901 = vorrq_s8(vandq_s8(vcltzq_s16(v715), v714), vmaxq_s16(v715, 0));
  v716 = vmlsl_high_u16(vmull_high_u16(v705, v660), v909, v660);
  v717 = vaddq_s32(vmlsl_u16(vmull_u16(*v705.i8, 0x28002800280028), *v909.i8, 0x28002800280028), v663);
  v718 = vaddq_s32(v716, v663);
  v719 = vuzp1q_s16(vmlaq_s32(v717, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v717.i8, *v396.i8), 0x18uLL), vmull_high_u32(v717, v396), 0x18uLL), v397), vmlaq_s32(v718, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v718.i8, *v396.i8), 0x18uLL), vmull_high_u32(v718, v396), 0x18uLL), v397));
  v720 = vaddq_s16(v719, v389);
  v908 = v713;
  v909 = vorrq_s8(vandq_s8(vcltzq_s16(v720), v719), vmaxq_s16(v720, 0));
  v721 = v911;
  v722 = vaddq_s16(v910, v918);
  v723 = vaddq_s16(v722, v389);
  v724 = vorrq_s8(vandq_s8(vcltzq_s16(v723), v722), vmaxq_s16(v723, 0));
  v725 = vdupq_n_s16(0x2EDu);
  v726 = vdupq_n_s32(0x260BEDu);
  v727 = vaddq_s32(vmlsl_u16(vmull_u16(*v910.i8, *v725.i8), *v918.i8, *v725.i8), v726);
  v728 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v910, v725), v918, v725), v726);
  v729 = vuzp1q_s16(vmlaq_s32(v727, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v727.i8, *v396.i8), 0x18uLL), vmull_high_u32(v727, v396), 0x18uLL), v397), vmlaq_s32(v728, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v728.i8, *v396.i8), 0x18uLL), vmull_high_u32(v728, v396), 0x18uLL), v397));
  v730 = vaddq_s16(v729, v389);
  v731 = vorrq_s8(vandq_s8(vcltzq_s16(v730), v729), vmaxq_s16(v730, 0));
  v732 = vaddq_s16(v911, v919);
  v733 = vaddq_s16(v732, v389);
  v910 = v724;
  v911 = vorrq_s8(vandq_s8(vcltzq_s16(v733), v732), vmaxq_s16(v733, 0));
  v734 = vaddq_s32(vmlsl_u16(vmull_u16(*v721.i8, *v725.i8), *v919.i8, *v725.i8), v726);
  v735 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v721, v725), v919, v725), v726);
  v736 = vuzp1q_s16(vmlaq_s32(v734, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v734.i8, *v396.i8), 0x18uLL), vmull_high_u32(v734, v396), 0x18uLL), v397), vmlaq_s32(v735, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v735.i8, *v396.i8), 0x18uLL), vmull_high_u32(v735, v396), 0x18uLL), v397));
  v737 = vaddq_s16(v736, v389);
  v918 = v731;
  v919 = vorrq_s8(vandq_s8(vcltzq_s16(v737), v736), vmaxq_s16(v737, 0));
  v738 = v913;
  v739 = vaddq_s16(v912, v920);
  v740 = vaddq_s16(v739, v389);
  v741 = vorrq_s8(vandq_s8(vcltzq_s16(v740), v739), vmaxq_s16(v740, 0));
  v742 = vaddq_s32(vmlsl_u16(vmull_u16(*v912.i8, *v725.i8), *v920.i8, *v725.i8), v726);
  v743 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v912, v725), v920, v725), v726);
  v744 = vuzp1q_s16(vmlaq_s32(v742, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v742.i8, *v396.i8), 0x18uLL), vmull_high_u32(v742, v396), 0x18uLL), v397), vmlaq_s32(v743, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v743.i8, *v396.i8), 0x18uLL), vmull_high_u32(v743, v396), 0x18uLL), v397));
  v745 = vaddq_s16(v744, v389);
  v746 = vorrq_s8(vandq_s8(vcltzq_s16(v745), v744), vmaxq_s16(v745, 0));
  v747 = vaddq_s16(v913, v921);
  v748 = vaddq_s16(v747, v389);
  v912 = v741;
  v913 = vorrq_s8(vandq_s8(vcltzq_s16(v748), v747), vmaxq_s16(v748, 0));
  v749 = vaddq_s32(vmlsl_u16(vmull_u16(*v738.i8, *v725.i8), *v921.i8, *v725.i8), v726);
  v750 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v738, v725), v921, v725), v726);
  v751 = vuzp1q_s16(vmlaq_s32(v749, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v749.i8, *v396.i8), 0x18uLL), vmull_high_u32(v749, v396), 0x18uLL), v397), vmlaq_s32(v750, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v750.i8, *v396.i8), 0x18uLL), vmull_high_u32(v750, v396), 0x18uLL), v397));
  v752 = vaddq_s16(v751, v389);
  v920 = v746;
  v921 = vorrq_s8(vandq_s8(vcltzq_s16(v752), v751), vmaxq_s16(v752, 0));
  v753 = v915;
  v754 = vaddq_s16(v914, v922);
  v755 = vaddq_s16(v754, v389);
  v756 = vorrq_s8(vandq_s8(vcltzq_s16(v755), v754), vmaxq_s16(v755, 0));
  v757 = vaddq_s32(vmlsl_u16(vmull_u16(*v914.i8, *v725.i8), *v922.i8, *v725.i8), v726);
  v758 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v914, v725), v922, v725), v726);
  v759 = vuzp1q_s16(vmlaq_s32(v757, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v757.i8, *v396.i8), 0x18uLL), vmull_high_u32(v757, v396), 0x18uLL), v397), vmlaq_s32(v758, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v758.i8, *v396.i8), 0x18uLL), vmull_high_u32(v758, v396), 0x18uLL), v397));
  v760 = vaddq_s16(v759, v389);
  v761 = vorrq_s8(vandq_s8(vcltzq_s16(v760), v759), vmaxq_s16(v760, 0));
  v762 = vaddq_s16(v915, v923);
  v763 = vaddq_s16(v762, v389);
  v914 = v756;
  v915 = vorrq_s8(vandq_s8(vcltzq_s16(v763), v762), vmaxq_s16(v763, 0));
  v764 = vaddq_s32(vmlsl_u16(vmull_u16(*v753.i8, *v725.i8), *v923.i8, *v725.i8), v726);
  v765 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v753, v725), v923, v725), v726);
  v766 = vuzp1q_s16(vmlaq_s32(v764, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v764.i8, *v396.i8), 0x18uLL), vmull_high_u32(v764, v396), 0x18uLL), v397), vmlaq_s32(v765, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v765.i8, *v396.i8), 0x18uLL), vmull_high_u32(v765, v396), 0x18uLL), v397));
  v767 = vaddq_s16(v766, v389);
  v922 = v761;
  v923 = vorrq_s8(vandq_s8(vcltzq_s16(v767), v766), vmaxq_s16(v767, 0));
  v768 = v917;
  v769 = vaddq_s16(v916, v924);
  v770 = vaddq_s16(v769, v389);
  v771 = vorrq_s8(vandq_s8(vcltzq_s16(v770), v769), vmaxq_s16(v770, 0));
  v772 = vaddq_s32(vmlsl_u16(vmull_u16(*v916.i8, *v725.i8), *v924.i8, *v725.i8), v726);
  v773 = vaddq_s32(vmlsl_high_u16(vmull_high_u16(v916, v725), v924, v725), v726);
  v774 = vuzp1q_s16(vmlaq_s32(v772, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v772.i8, *v396.i8), 0x18uLL), vmull_high_u32(v772, v396), 0x18uLL), v397), vmlaq_s32(v773, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v773.i8, *v396.i8), 0x18uLL), vmull_high_u32(v773, v396), 0x18uLL), v397));
  v775 = vaddq_s16(v774, v389);
  v776 = vorrq_s8(vandq_s8(vcltzq_s16(v775), v774), vmaxq_s16(v775, 0));
  v777 = vaddq_s16(v917, v925);
  v778 = vaddq_s16(v777, v389);
  v916 = v771;
  v917 = vorrq_s8(vandq_s8(vcltzq_s16(v778), v777), vmaxq_s16(v778, 0));
  v779 = vmlsl_high_u16(vmull_high_u16(v768, v725), v925, v725);
  v780 = vaddq_s32(vmlsl_u16(vmull_u16(*v768.i8, *v725.i8), *v925.i8, *v725.i8), v726);
  v781 = vaddq_s32(v779, v726);
  v782 = vuzp1q_s16(vmlaq_s32(v780, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v780.i8, *v396.i8), 0x18uLL), vmull_high_u32(v780, v396), 0x18uLL), v397), vmlaq_s32(v781, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v781.i8, *v396.i8), 0x18uLL), vmull_high_u32(v781, v396), 0x18uLL), v397));
  v783 = vaddq_s16(v782, v389);
  v924 = v776;
  v925 = vorrq_s8(vandq_s8(vcltzq_s16(v783), v782), vmaxq_s16(v783, 0));
  do
  {
    v784 = &__dst.i8[v386];
    v785 = *(&v910 + v386);
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
  v808 = &v858;
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
    v818 = *(&v857 + v812);
    v819 = vshll_high_n_u16(v818, 1uLL);
    v820 = vshll_n_u16(*v818.i8, 1uLL);
    v821 = vmull_high_u16(v818, v813);
    v822 = vshrq_n_u32(vmull_u16(*v818.i8, *v813.i8), 0x18uLL);
    v823 = vshrq_n_u32(v821, 0x18uLL);
    v824 = vmlaq_s32(v820, v822, v814);
    v825 = vmlaq_s32(v819, v823, v814);
    *(&v857 + v812) = vandq_s8(veorq_s8(vuzp1q_s16(vcgtq_u32(v824, v816), vcgtq_u32(v825, v816)), veorq_s8(vuzp1q_s16(vcgtq_u32(v824, v815), vcgtq_u32(v825, v815)), vuzp1q_s16(v822, v823))), v817);
    v812 += 16;
  }

  while (v812 != 512);
  v826 = 0;
  v827.i64[0] = 0x101010101010101;
  v827.i64[1] = 0x101010101010101;
  v828 = &v865;
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
    *&v891[v826] = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vandq_s8(vaddq_s8(v836, v836), v829), vandq_s8(v835, v827)), vorrq_s8(vandq_s8(vshlq_n_s8(v837, 2uLL), v830), vandq_s8(vshlq_n_s8(v838, 3uLL), v831))), vorrq_s8(vorrq_s8(vandq_s8(vshlq_n_s8(v839, 4uLL), v832), vandq_s8(vshlq_n_s8(v840, 5uLL), v833)), vandq_s8(vshlq_n_s8(v841, 6uLL), v834))), vshlq_n_s8(v842, 7uLL));
    v826 += 16;
    v828 += 16;
  }

  while (v826 != 32);
  v843 = *(a3 + 1584);
  v892 = *(a3 + 1568);
  v893 = v843;
  v939.i64[0] = 0;
  v940 = 0u;
  v938 = 0u;
  v937 = 0u;
  v936 = 0u;
  v935 = 0u;
  v934 = 0u;
  v933 = 0u;
  v932 = 0u;
  v931 = 0u;
  v930 = 0u;
  v929 = 0u;
  v928 = 0u;
  v927 = 0u;
  v926.i64[0] = 1;
  v926.i64[1] = 64;
  v939.i64[1] = 72;
  BORINGSSL_keccak_absorb(&v926, v891, 0x40uLL);
  BORINGSSL_keccak_squeeze(v926.i32, __dst.i8, 0x40uLL);
  encrypt_cpa(&v926, a3, v891);
  v844 = 0uLL;
  v845 = 0;
  v846 = 0uLL;
  do
  {
    v844 = vorrq_s8(veorq_s8(*(&v926 + v845), *&a2[v845]), v844);
    v846 = vorrq_s8(veorq_s8(*(&v926 + v845 + 16), *&a2[v845 + 16]), v846);
    v845 += 32;
  }

  while (v845 != 1088);
  v847 = vorrq_s8(v846, v844);
  v848 = 255;
  if (vorr_s8(*v847.i8, *&vextq_s8(v847, v847, 8uLL)))
  {
    v848 = 0;
  }

  v849 = vdupq_n_s8(v848);
  v850 = vdupq_n_s8(~v848);
  v851 = vorrq_s8(vandq_s8(*(a3 + 7744), v850), vandq_s8(__dst, v849));
  v852 = vorrq_s8(vandq_s8(*(a3 + 7760), v850), vandq_s8(v895, v849));
  v889[0] = v851;
  v889[1] = v852;
  v870.i64[0] = 0;
  v871 = 0u;
  v868 = 0u;
  v869 = 0u;
  v866 = 0u;
  v867 = 0u;
  v864 = 0u;
  v865 = 0u;
  v862 = 0u;
  v863 = 0u;
  v860 = 0u;
  v861 = 0u;
  v858 = 0u;
  v859 = 0u;
  v857.i64[0] = 0;
  v857.i64[1] = 32;
  v870.i64[1] = 136;
  BORINGSSL_keccak_absorb(&v857, a2, 0x440uLL);
  BORINGSSL_keccak_squeeze(v857.i32, v890, 0x20uLL);
  v870.i64[0] = 0;
  v871 = 0u;
  v868 = 0u;
  v869 = 0u;
  v866 = 0u;
  v867 = 0u;
  v864 = 0u;
  v865 = 0u;
  v862 = 0u;
  v863 = 0u;
  v860 = 0u;
  v861 = 0u;
  v858 = 0u;
  v859 = 0u;
  v857 = 3uLL;
  v870.i64[1] = 136;
  BORINGSSL_keccak_absorb(&v857, v889, 0x40uLL);
  return BORINGSSL_keccak_squeeze(v857.i32, a1, 0x20uLL);
}

uint64_t vector_encode(_BYTE *a1, uint64_t a2, int a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1;
  do
  {
    v7 = 0;
    v8 = *(a2 + 2 * v3);
    while (1)
    {
      v9 = a3 - v7;
      v10 = 8 - v4;
      if (a3 - v7 < 8 - v4)
      {
        break;
      }

      v11 = (v8 & kMasks[7 - v4]) << v4;
      v4 = 0;
      *v6++ = v5 | v11;
      v5 = 0;
      v7 += v10;
      LOBYTE(v8) = v8 >> v10;
      if (v7 >= a3)
      {
        goto LABEL_2;
      }
    }

    v5 |= (v8 & kMasks[v9 - 1]) << v4;
    v4 += v9;
LABEL_2:
    ++v3;
  }

  while (v3 != 256);
  if (v4 >= 1)
  {
    *v6 = v5;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = &a1[32 * a3];
  do
  {
    v16 = 0;
    v17 = *(a2 + 512 + 2 * v12);
    while (1)
    {
      v18 = a3 - v16;
      v19 = 8 - v13;
      if (v18 < 8 - v13)
      {
        break;
      }

      *v15++ = v14 | ((v17 & kMasks[7 - v13]) << v13);
      v14 = 0;
      v13 = 0;
      v16 += v19;
      LOBYTE(v17) = v17 >> v19;
      if (v16 >= a3)
      {
        goto LABEL_11;
      }
    }

    v14 |= (v17 & kMasks[v18 - 1]) << v13;
    v13 += v18;
LABEL_11:
    ++v12;
  }

  while (v12 != 256);
  if (v13 >= 1)
  {
    *v15 = v14;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = &a1[a3 << 6];
  v24 = a2 + 1024;
  do
  {
    v25 = 0;
    LODWORD(result) = *(v24 + 2 * v20);
    while (1)
    {
      v27 = a3 - v25;
      v28 = 8 - v21;
      if (v27 < 8 - v21)
      {
        break;
      }

      *v23++ = v22 | ((result & kMasks[7 - v21]) << v21);
      v22 = 0;
      v21 = 0;
      v25 += v28;
      result = (result >> v28);
      if (v25 >= a3)
      {
        goto LABEL_20;
      }
    }

    v22 |= (result & kMasks[v27 - 1]) << v21;
    v21 += v27;
    result = (result >> v27);
LABEL_20:
    ++v20;
  }

  while (v20 != 256);
  if (v21 >= 1)
  {
    *v23 = v22;
  }

  return result;
}

uint64_t vector_decode(void *a1, unsigned __int8 *a2, int a3)
{
  if (a3 < 1)
  {
    bzero(a1, 0x600uLL);
    return 1;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = a2;
    do
    {
      v8 = 0;
      v9 = 0;
      do
      {
        if (!v5)
        {
          v11 = *v7++;
          v6 = v11;
          v5 = 8;
        }

        v10 = a3 - v8;
        if (a3 - v8 >= v5)
        {
          v10 = v5;
        }

        v9 |= ((kMasks[v10 - 1] & v6) << v8);
        v5 -= v10;
        v6 = (v6 >> v10);
        v8 += v10;
      }

      while (v8 < a3);
      if (v9 > 0xD00)
      {
        break;
      }

      *(a1 + v3) = v9;
      v4 = v3++ > 0xFE;
    }

    while (v3 != 256);
    if (!v4)
    {
      return 0;
    }

    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = &a2[32 * a3];
    do
    {
      v17 = 0;
      v18 = 0;
      do
      {
        if (!v14)
        {
          v20 = *v16++;
          v15 = v20;
          v14 = 8;
        }

        v19 = a3 - v17;
        if (a3 - v17 >= v14)
        {
          v19 = v14;
        }

        v18 |= ((kMasks[v19 - 1] & v15) << v17);
        v14 -= v19;
        v15 = (v15 >> v19);
        v17 += v19;
      }

      while (v17 < a3);
      if (v18 > 0xD00)
      {
        break;
      }

      *(a1 + v12 + 256) = v18;
      v13 = v12++ > 0xFE;
    }

    while (v12 != 256);
    if (v13)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = &a2[64 * a3];
      do
      {
        v26 = 0;
        v27 = 0;
        do
        {
          if (!v23)
          {
            v29 = *v25++;
            v24 = v29;
            v23 = 8;
          }

          v28 = a3 - v26;
          if (a3 - v26 >= v23)
          {
            v28 = v23;
          }

          v27 |= ((kMasks[v28 - 1] & v24) << v26);
          v23 -= v28;
          v24 = (v24 >> v28);
          v26 += v28;
        }

        while (v26 < a3);
        if (v27 > 0xD00)
        {
          break;
        }

        *(a1 + v21 + 512) = v27;
        v22 = v21++ > 0xFE;
      }

      while (v21 != 256);
      return v22;
    }

    else
    {
      return 0;
    }
  }
}

int16x8_t *scalar_inner_product(int16x8_t *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  result[30] = 0u;
  result[31] = 0u;
  result[28] = 0u;
  result[29] = 0u;
  result[26] = 0u;
  result[27] = 0u;
  result[24] = 0u;
  result[25] = 0u;
  result[22] = 0u;
  result[23] = 0u;
  result[20] = 0u;
  result[21] = 0u;
  result[18] = 0u;
  result[19] = 0u;
  result[16] = 0u;
  result[17] = 0u;
  result[14] = 0u;
  result[15] = 0u;
  result[12] = 0u;
  result[13] = 0u;
  result[10] = 0u;
  result[11] = 0u;
  result[8] = 0u;
  result[9] = 0u;
  result[6] = 0u;
  result[7] = 0u;
  result[4] = 0u;
  result[5] = 0u;
  v4 = &kModRoots;
  v5 = vdupq_n_s32(0x13AFu);
  result[2] = 0u;
  result[3] = 0u;
  v6.i64[0] = 0xF2000000F2;
  v6.i64[1] = 0xF2000000F2;
  v7.i64[0] = 0xD000D000D000D00;
  v7.i64[1] = 0xD000D000D000D00;
  *result = 0u;
  result[1] = 0u;
  do
  {
    v8 = (a2 + v3);
    v94 = vld2q_s16(v8);
    v9 = (a3 + v3);
    v97 = vld2q_s16(v9);
    v10 = vmull_u16(*v97.val[1].i8, *v94.val[1].i8);
    v11 = vmull_high_u16(v97.val[1], v94.val[1]);
    v12 = vuzp1q_s16(vmlal_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v10.i8, *v5.i8), 0x18uLL), vmull_high_u32(v10, v5), 0x18uLL), v6), *v97.val[1].i8, *v94.val[1].i8), vmlal_high_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v11.i8, *v5.i8), 0x18uLL), vmull_high_u32(v11, v5), 0x18uLL), v6), v97.val[1], v94.val[1]));
    v13 = vaddq_s16(v12, v7);
    v14 = vorrq_s8(vandq_s8(vcltzq_s16(v13), v12), vmaxq_s16(v13, 0));
    v15 = *v4++;
    v16 = vmull_high_u16(v14, v15);
    v17 = vmlal_u16(vmull_u16(*v14.i8, *v15.i8), *v97.val[0].i8, *v94.val[0].i8);
    v18 = vmlal_high_u16(v16, v97.val[0], v94.val[0]);
    v19 = vuzp1q_s16(vmlaq_s32(v17, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v17.i8, *v5.i8), 0x18uLL), vmull_high_u32(v17, v5), 0x18uLL), v6), vmlaq_s32(v18, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v18.i8, *v5.i8), 0x18uLL), vmull_high_u32(v18, v5), 0x18uLL), v6));
    v20 = vaddq_s16(v19, v7);
    v21 = vmlal_u16(vmull_u16(*v97.val[1].i8, *v94.val[0].i8), *v94.val[1].i8, *v97.val[0].i8);
    v22 = vmlal_high_u16(vmull_high_u16(v97.val[1], v94.val[0]), v94.val[1], v97.val[0]);
    v23 = vuzp1q_s16(vmlaq_s32(v21, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v21.i8, *v5.i8), 0x18uLL), vmull_high_u32(v21, v5), 0x18uLL), v6), vmlaq_s32(v22, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v22.i8, *v5.i8), 0x18uLL), vmull_high_u32(v22, v5), 0x18uLL), v6));
    v24 = vorrq_s8(vandq_s8(vcltzq_s16(v20), v19), vmaxq_s16(v20, 0));
    v94.val[1] = vaddq_s16(v23, v7);
    v94.val[0] = vorrq_s8(vandq_s8(vcltzq_s16(v94.val[1]), v23), vmaxq_s16(v94.val[1], 0));
    v25 = &v93[v3];
    vst2q_s16(v25, v94);
    v3 += 32;
  }

  while (v3 != 512);
  v26 = 0;
  v27 = result + 1;
  v28.i64[0] = 0xD000D000D000D00;
  v28.i64[1] = 0xD000D000D000D00;
  do
  {
    v29 = vaddq_s16(*&v93[v26], v27[-1]);
    v30 = vaddq_s16(*&v93[v26 + 16], *v27);
    v31 = vaddq_s16(v29, v28);
    v32 = vaddq_s16(v30, v28);
    v27[-1] = vorrq_s8(vandq_s8(vcltzq_s16(v31), v29), vmaxq_s16(v31, 0));
    *v27 = vorrq_s8(vandq_s8(vcltzq_s16(v32), v30), vmaxq_s16(v32, 0));
    v27 += 2;
    v26 += 32;
  }

  while (v26 != 512);
  v33 = 0;
  v34 = &kModRoots;
  v35 = vdupq_n_s32(0x13AFu);
  v36.i64[0] = 0xF2000000F2;
  v36.i64[1] = 0xF2000000F2;
  v37.i64[0] = 0xD000D000D000D00;
  v37.i64[1] = 0xD000D000D000D00;
  do
  {
    v38 = (a2 + 512 + v33);
    v95 = vld2q_s16(v38);
    v39 = (a3 + 512 + v33);
    v98 = vld2q_s16(v39);
    v40 = vmull_u16(*v98.val[1].i8, *v95.val[1].i8);
    v41 = vmull_high_u16(v98.val[1], v95.val[1]);
    v42 = vuzp1q_s16(vmlal_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v40.i8, *v35.i8), 0x18uLL), vmull_high_u32(v40, v35), 0x18uLL), v36), *v98.val[1].i8, *v95.val[1].i8), vmlal_high_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v41.i8, *v35.i8), 0x18uLL), vmull_high_u32(v41, v35), 0x18uLL), v36), v98.val[1], v95.val[1]));
    v43 = vaddq_s16(v42, v37);
    v44 = vorrq_s8(vandq_s8(vcltzq_s16(v43), v42), vmaxq_s16(v43, 0));
    v45 = *v34++;
    v46 = vmull_high_u16(v44, v45);
    v47 = vmlal_u16(vmull_u16(*v44.i8, *v45.i8), *v98.val[0].i8, *v95.val[0].i8);
    v48 = vmlal_high_u16(v46, v98.val[0], v95.val[0]);
    v49 = vuzp1q_s16(vmlaq_s32(v47, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v47.i8, *v35.i8), 0x18uLL), vmull_high_u32(v47, v35), 0x18uLL), v36), vmlaq_s32(v48, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v48.i8, *v35.i8), 0x18uLL), vmull_high_u32(v48, v35), 0x18uLL), v36));
    v50 = vaddq_s16(v49, v37);
    v51 = vmlal_u16(vmull_u16(*v98.val[1].i8, *v95.val[0].i8), *v95.val[1].i8, *v98.val[0].i8);
    v52 = vmlal_high_u16(vmull_high_u16(v98.val[1], v95.val[0]), v95.val[1], v98.val[0]);
    v53 = vuzp1q_s16(vmlaq_s32(v51, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v51.i8, *v35.i8), 0x18uLL), vmull_high_u32(v51, v35), 0x18uLL), v36), vmlaq_s32(v52, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v52.i8, *v35.i8), 0x18uLL), vmull_high_u32(v52, v35), 0x18uLL), v36));
    v54 = vorrq_s8(vandq_s8(vcltzq_s16(v50), v49), vmaxq_s16(v50, 0));
    v95.val[1] = vaddq_s16(v53, v37);
    v95.val[0] = vorrq_s8(vandq_s8(vcltzq_s16(v95.val[1]), v53), vmaxq_s16(v95.val[1], 0));
    v55 = &v93[v33];
    vst2q_s16(v55, v95);
    v33 += 32;
  }

  while (v33 != 512);
  v56 = 0;
  v57 = result + 1;
  v58.i64[0] = 0xD000D000D000D00;
  v58.i64[1] = 0xD000D000D000D00;
  do
  {
    v59 = vaddq_s16(*&v93[v56], v57[-1]);
    v60 = vaddq_s16(*&v93[v56 + 16], *v57);
    v61 = vaddq_s16(v59, v58);
    v62 = vaddq_s16(v60, v58);
    v57[-1] = vorrq_s8(vandq_s8(vcltzq_s16(v61), v59), vmaxq_s16(v61, 0));
    *v57 = vorrq_s8(vandq_s8(vcltzq_s16(v62), v60), vmaxq_s16(v62, 0));
    v57 += 2;
    v56 += 32;
  }

  while (v56 != 512);
  v63 = 0;
  v64 = &kModRoots;
  v65 = vdupq_n_s32(0x13AFu);
  v66.i64[0] = 0xF2000000F2;
  v66.i64[1] = 0xF2000000F2;
  v67.i64[0] = 0xD000D000D000D00;
  v67.i64[1] = 0xD000D000D000D00;
  do
  {
    v68 = (a2 + 1024 + v63);
    v96 = vld2q_s16(v68);
    v69 = (a3 + 1024 + v63);
    v99 = vld2q_s16(v69);
    v70 = vmull_u16(*v99.val[1].i8, *v96.val[1].i8);
    v71 = vmull_high_u16(v99.val[1], v96.val[1]);
    v72 = vuzp1q_s16(vmlal_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v70.i8, *v65.i8), 0x18uLL), vmull_high_u32(v70, v65), 0x18uLL), v66), *v99.val[1].i8, *v96.val[1].i8), vmlal_high_u16(vmulq_s32(vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v71.i8, *v65.i8), 0x18uLL), vmull_high_u32(v71, v65), 0x18uLL), v66), v99.val[1], v96.val[1]));
    v73 = vaddq_s16(v72, v67);
    v74 = vorrq_s8(vandq_s8(vcltzq_s16(v73), v72), vmaxq_s16(v73, 0));
    v75 = *v64++;
    v76 = vmull_high_u16(v74, v75);
    v77 = vmlal_u16(vmull_u16(*v74.i8, *v75.i8), *v99.val[0].i8, *v96.val[0].i8);
    v78 = vmlal_high_u16(v76, v99.val[0], v96.val[0]);
    v79 = vuzp1q_s16(vmlaq_s32(v77, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v77.i8, *v65.i8), 0x18uLL), vmull_high_u32(v77, v65), 0x18uLL), v66), vmlaq_s32(v78, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v78.i8, *v65.i8), 0x18uLL), vmull_high_u32(v78, v65), 0x18uLL), v66));
    v80 = vaddq_s16(v79, v67);
    v81 = vmlal_u16(vmull_u16(*v99.val[1].i8, *v96.val[0].i8), *v96.val[1].i8, *v99.val[0].i8);
    v82 = vmlal_high_u16(vmull_high_u16(v99.val[1], v96.val[0]), v96.val[1], v99.val[0]);
    v83 = vuzp1q_s16(vmlaq_s32(v81, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v81.i8, *v65.i8), 0x18uLL), vmull_high_u32(v81, v65), 0x18uLL), v66), vmlaq_s32(v82, vshrn_high_n_s64(vshrn_n_s64(vmull_u32(*v82.i8, *v65.i8), 0x18uLL), vmull_high_u32(v82, v65), 0x18uLL), v66));
    v84 = vorrq_s8(vandq_s8(vcltzq_s16(v80), v79), vmaxq_s16(v80, 0));
    v96.val[1] = vaddq_s16(v83, v67);
    v96.val[0] = vorrq_s8(vandq_s8(vcltzq_s16(v96.val[1]), v83), vmaxq_s16(v96.val[1], 0));
    v85 = &v93[v63];
    vst2q_s16(v85, v96);
    v63 += 32;
  }

  while (v63 != 512);
  v86 = 0;
  v87 = result + 1;
  v88.i64[0] = 0xD000D000D000D00;
  v88.i64[1] = 0xD000D000D000D00;
  do
  {
    v89 = vaddq_s16(*&v93[v86], v87[-1]);
    v90 = vaddq_s16(*&v93[v86 + 16], *v87);
    v91 = vaddq_s16(v89, v88);
    v92 = vaddq_s16(v90, v88);
    v87[-1] = vorrq_s8(vandq_s8(vcltzq_s16(v91), v89), vmaxq_s16(v91, 0));
    *v87 = vorrq_s8(vandq_s8(vcltzq_s16(v92), v90), vmaxq_s16(v92, 0));
    v87 += 2;
    v86 += 32;
  }

  while (v86 != 512);
  return result;
}

uint64_t OPENSSL_lh_insert(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t), unsigned int (*a5)(void, void, uint64_t))
{
  *a2 = 0;
  v9 = a4(*(a1 + 40), a3);
  v10 = (*(a1 + 8) + 8 * (v9 % *(a1 + 16)));
  v11 = *v10;
  if (*v10)
  {
    if (a5(*(a1 + 32), *v11, a3))
    {
      while (1)
      {
        v12 = v11;
        v11 = v11[1];
        if (!v11)
        {
          break;
        }

        if (!a5(*(a1 + 32), *v11, a3))
        {
          v10 = (v12 + 1);
          goto LABEL_6;
        }
      }

      v10 = (v12 + 1);
    }

    else
    {
LABEL_6:
      if (*v10)
      {
        *a2 = **v10;
        **v10 = a3;
        return 1;
      }
    }
  }

  v13 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (!v13)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  *v13 = 24;
  v13[1] = a3;
  *(v13 + 6) = v9;
  v13[2] = 0;
  *v10 = v13 + 1;
  v14 = *a1 + 1;
  *a1 = v14;
  if (*(a1 + 24))
  {
    return 1;
  }

  v16 = *(a1 + 16);
  if (v14 / v16 >= 3)
  {
    if (v16 >= 1)
    {
      v17 = 2 * v16;
      if (!((2 * v16) >> 61))
      {
        goto LABEL_24;
      }
    }

    return 1;
  }

  result = 1;
  if (v16 > v14 && v16 >= 0x11)
  {
    v18 = v16 >> 1;
    if (v18 <= 0x10)
    {
      v17 = 16;
    }

    else
    {
      v17 = v18;
    }

    if (!(v17 >> 61))
    {
LABEL_24:
      if (v17 == 0x1FFFFFFFFFFFFFFFLL || (v19 = malloc_type_malloc(8 * v17 + 8, 0xB4E622C9uLL)) == 0)
      {
        ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      }

      else
      {
        *v19 = 8 * v17;
        v20 = v19 + 1;
        bzero(v19 + 1, 8 * v17);
        v22 = *(a1 + 8);
        v21 = *(a1 + 16);
        if (v21)
        {
          for (i = 0; i != v21; ++i)
          {
            v24 = *(v22 + 8 * i);
            if (v24)
            {
              do
              {
                v25 = *(v24 + 16) % v17;
                v26 = *(v24 + 8);
                *(v24 + 8) = v20[v25];
                v20[v25] = v24;
                v24 = v26;
              }

              while (v26);
            }
          }
        }

        if (v22)
        {
          v28 = *(v22 - 8);
          v27 = (v22 - 8);
          v29 = v28 + 8;
          if (v28 != -8)
          {
            bzero(v27, v29);
          }

          free(v27);
        }

        *(a1 + 8) = v20;
        *(a1 + 16) = v17;
      }
    }

    return 1;
  }

  return result;
}

uint64_t OPENSSL_lh_delete(uint64_t a1, uint64_t a2, unsigned int (*a3)(void), unsigned int (*a4)(void, uint64_t, uint64_t))
{
  v7 = (*(a1 + 8) + 8 * (a3(*(a1 + 40)) % *(a1 + 16)));
  v8 = *v7;
  if (!*v7)
  {
    return 0;
  }

  if (a4(*(a1 + 32), *v8, a2))
  {
    while (1)
    {
      v9 = v8;
      v8 = v8[1];
      if (!v8)
      {
        return 0;
      }

      if (!a4(*(a1 + 32), *v8, a2))
      {
        v7 = (v9 + 1);
        break;
      }
    }
  }

  v10 = *v7;
  if (!*v7)
  {
    return 0;
  }

  v11 = *v10;
  *v7 = v10[1];
  v13 = *(v10 - 1);
  v12 = v10 - 1;
  v14 = v13 + 8;
  if (v13 != -8)
  {
    bzero(v12, v14);
  }

  free(v12);
  v15 = *a1 - 1;
  *a1 = v15;
  if (*(a1 + 24))
  {
    return v11;
  }

  v17 = *(a1 + 16);
  if (v15 / v17 < 3)
  {
    result = v11;
    if (v17 <= v15 || v17 < 0x11)
    {
      return result;
    }

    v19 = v17 >> 1;
    if (v19 <= 0x10)
    {
      v18 = 16;
    }

    else
    {
      v18 = v19;
    }
  }

  else
  {
    result = v11;
    if (v17 < 1)
    {
      return result;
    }

    v18 = 2 * v17;
  }

  if (!(v18 >> 61))
  {
    if (v18 == 0x1FFFFFFFFFFFFFFFLL || (v20 = malloc_type_malloc(8 * v18 + 8, 0xB4E622C9uLL)) == 0)
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      return v11;
    }

    else
    {
      *v20 = 8 * v18;
      v21 = v20 + 1;
      bzero(v20 + 1, 8 * v18);
      v23 = *(a1 + 8);
      v22 = *(a1 + 16);
      result = v11;
      if (v22)
      {
        for (i = 0; i != v22; ++i)
        {
          v25 = *(v23 + 8 * i);
          if (v25)
          {
            do
            {
              v26 = *(v25 + 16) % v18;
              v27 = *(v25 + 8);
              *(v25 + 8) = v21[v26];
              v21[v26] = v25;
              v25 = v27;
            }

            while (v27);
          }
        }
      }

      if (v23)
      {
        v29 = *(v23 - 8);
        v28 = (v23 - 8);
        v30 = v29 + 8;
        if (v29 != -8)
        {
          bzero(v28, v30);
        }

        free(v28);
        result = v11;
      }

      *(a1 + 8) = v21;
      *(a1 + 16) = v18;
    }
  }

  return result;
}

void OPENSSL_lh_doall_arg(uint64_t a1, void (*a2)(void, uint64_t), uint64_t a3)
{
  if (!a1)
  {
    return;
  }

  v6 = *(a1 + 24);
  if (v6 != -1)
  {
    v7 = v6 + 1;
    *(a1 + 24) = v6 + 1;
    v8 = *(a1 + 16);
    if (!v8)
    {
      goto LABEL_4;
    }

LABEL_7:
    for (i = 0; i < v8; ++i)
    {
      v10 = *(*(a1 + 8) + 8 * i);
      if (v10)
      {
        do
        {
          v11 = v10[1];
          a2(*v10, a3);
          v10 = v11;
        }

        while (v11);
        v8 = *(a1 + 16);
      }
    }

    v7 = *(a1 + 24);
    if (v7 == -1)
    {
      return;
    }

    goto LABEL_13;
  }

  v7 = -1;
  v8 = *(a1 + 16);
  if (v8)
  {
    goto LABEL_7;
  }

LABEL_4:
  if (v7 == -1)
  {
    return;
  }

LABEL_13:
  v12 = v7 - 1;
  *(a1 + 24) = v12;
  if (v12)
  {
    return;
  }

  if (*a1 / v8 < 3)
  {
    if (v8 < 0x11 || v8 <= *a1)
    {
      return;
    }

    v14 = v8 >> 1;
    v13 = v14 <= 0x10 ? 16 : v14;
    if (v13 >> 61)
    {
      return;
    }
  }

  else
  {
    if (v8 < 1)
    {
      return;
    }

    v13 = 2 * v8;
    if ((2 * v8) >> 61)
    {
      return;
    }
  }

  if (v13 == 0x1FFFFFFFFFFFFFFFLL || (v15 = malloc_type_malloc(8 * v13 + 8, 0xB4E622C9uLL)) == 0)
  {

    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  }

  else
  {
    *v15 = 8 * v13;
    v16 = v15 + 1;
    bzero(v15 + 1, 8 * v13);
    v18 = *(a1 + 8);
    v17 = *(a1 + 16);
    if (v17)
    {
      for (j = 0; j != v17; ++j)
      {
        v20 = *(v18 + 8 * j);
        if (v20)
        {
          do
          {
            v21 = *(v20 + 16) % v13;
            v22 = *(v20 + 8);
            *(v20 + 8) = v16[v21];
            v16[v21] = v20;
            v20 = v22;
          }

          while (v22);
        }
      }
    }

    if (v18)
    {
      v24 = *(v18 - 8);
      v23 = (v18 - 8);
      v25 = v24 + 8;
      if (v24 != -8)
      {
        bzero(v23, v25);
      }

      free(v23);
    }

    *(a1 + 8) = v16;
    *(a1 + 16) = v13;
  }
}

int MD4_Update(MD4_CTX *c, const void *data, size_t len)
{
  if (!len)
  {
    return 1;
  }

  v3 = len;
  v5 = *&c->Nl + 8 * len;
  *&c->Nl = v5;
  num = c->num;
  if (num)
  {
    v7 = c->data;
    if (len <= 0x3F && num + len < 0x40)
    {
      memcpy(v7 + num, data, len);
      c->num += v3;
      return 1;
    }

    v9 = data;
    v10 = 64 - num;
    if (num != 64)
    {
      memcpy(v7 + num, data, 64 - num);
    }

    md4_block_data_order(c, c->data, 1);
    v11 = v3 >= v10;
    v3 -= v10;
    if (!v11)
    {
      abort();
    }

    data = &v9[v10];
    c->num = 0;
    *&c->data[8] = 0u;
    *&c->data[12] = 0u;
    *v7 = 0u;
    *&c->data[4] = 0u;
  }

  if (v3 >= 0x40)
  {
    v12 = data;
    md4_block_data_order(c, data, v3 >> 6);
    data = &v12[v3 & 0xFFFFFFFFFFFFFFC0];
    v3 &= 0x3Fu;
  }

  if (!v3)
  {
    return 1;
  }

  c->num = v3;
  memcpy(c->data, data, v3);
  return 1;
}

uint64_t md4_block_data_order(uint64_t result, const unsigned __int8 *a2, uint64_t a3)
{
  v68 = result;
  if (a3)
  {
    v4 = *(result + 8);
    v3 = *(result + 12);
    v6 = *result;
    v5 = *(result + 4);
    do
    {
      v69 = *(a2 + 1);
      HIDWORD(v8) = (v4 & v5 | v3 & ~v5) + v6 + *a2;
      LODWORD(v8) = HIDWORD(v8);
      v7 = v8 >> 29;
      HIDWORD(v8) = v69 + v3 + (v5 & v7 | v4 & ~v7);
      LODWORD(v8) = HIDWORD(v8);
      v9 = v8 >> 25;
      v10 = *(a2 + 2);
      result = *(a2 + 3);
      HIDWORD(v8) = v10 + v4 + (v7 & v9 | v5 & ~v9);
      LODWORD(v8) = HIDWORD(v8);
      v11 = v8 >> 21;
      HIDWORD(v8) = result + v5 + (v9 & v11 | v7 & ~v11);
      LODWORD(v8) = HIDWORD(v8);
      v12 = v8 >> 13;
      v14 = *(a2 + 4);
      v13 = *(a2 + 5);
      HIDWORD(v8) = v14 + v7 + (v11 & v12 | v9 & ~v12);
      LODWORD(v8) = HIDWORD(v8);
      v15 = v8 >> 29;
      HIDWORD(v8) = v9 + v13 + (v12 & v15 | v11 & ~v15);
      LODWORD(v8) = HIDWORD(v8);
      v16 = v8 >> 25;
      v18 = *(a2 + 6);
      v17 = *(a2 + 7);
      HIDWORD(v8) = v11 + v18 + (v15 & v16 | v12 & ~v16);
      LODWORD(v8) = HIDWORD(v8);
      v19 = v8 >> 21;
      HIDWORD(v8) = v12 + v17 + (v16 & v19 | v15 & ~v19);
      LODWORD(v8) = HIDWORD(v8);
      v20 = v8 >> 13;
      v22 = *(a2 + 8);
      v21 = *(a2 + 9);
      HIDWORD(v8) = v15 + v22 + (v19 & v20 | v16 & ~v20);
      LODWORD(v8) = HIDWORD(v8);
      v23 = v8 >> 29;
      HIDWORD(v8) = v16 + v21 + (v20 & v23 | v19 & ~v23);
      LODWORD(v8) = HIDWORD(v8);
      v24 = v8 >> 25;
      v26 = *(a2 + 10);
      v25 = *(a2 + 11);
      HIDWORD(v8) = v19 + v26 + (v23 & v24 | v20 & ~v24);
      LODWORD(v8) = HIDWORD(v8);
      v27 = v8 >> 21;
      HIDWORD(v8) = v20 + v25 + (v24 & v27 | v23 & ~v27);
      LODWORD(v8) = HIDWORD(v8);
      v28 = v8 >> 13;
      v30 = *(a2 + 12);
      v29 = *(a2 + 13);
      HIDWORD(v8) = v23 + v30 + (v27 & v28 | v24 & ~v28);
      LODWORD(v8) = HIDWORD(v8);
      v31 = v8 >> 29;
      HIDWORD(v8) = v24 + v29 + (v28 & v31 | v27 & ~v31);
      LODWORD(v8) = HIDWORD(v8);
      v32 = v8 >> 25;
      v34 = *(a2 + 14);
      v33 = *(a2 + 15);
      HIDWORD(v8) = v27 + v34 + (v31 & v32 | v28 & ~v32);
      LODWORD(v8) = HIDWORD(v8);
      v35 = v8 >> 21;
      HIDWORD(v8) = v28 + v33 + (v35 & v32 | v31 & ~v35);
      LODWORD(v8) = HIDWORD(v8);
      v36 = v8 >> 13;
      HIDWORD(v8) = *a2 + 1518500249 + v31 + (v36 & (v35 | v32) | v35 & v32);
      LODWORD(v8) = HIDWORD(v8);
      v37 = v8 >> 29;
      HIDWORD(v8) = v14 + 1518500249 + v32 + (v37 & (v36 | v35) | v36 & v35);
      LODWORD(v8) = HIDWORD(v8);
      v38 = v8 >> 27;
      HIDWORD(v8) = v22 + 1518500249 + v35 + (v38 & (v37 | v36) | v37 & v36);
      LODWORD(v8) = HIDWORD(v8);
      v39 = v8 >> 23;
      HIDWORD(v8) = v30 + 1518500249 + v36 + (v39 & (v38 | v37) | v38 & v37);
      LODWORD(v8) = HIDWORD(v8);
      v40 = v8 >> 19;
      HIDWORD(v8) = v69 + 1518500249 + v37 + (v40 & (v39 | v38) | v39 & v38);
      LODWORD(v8) = HIDWORD(v8);
      v41 = v8 >> 29;
      HIDWORD(v8) = v13 + 1518500249 + v38 + (v41 & (v40 | v39) | v40 & v39);
      LODWORD(v8) = HIDWORD(v8);
      v42 = v8 >> 27;
      HIDWORD(v8) = v21 + 1518500249 + v39 + (v42 & (v41 | v40) | v41 & v40);
      LODWORD(v8) = HIDWORD(v8);
      v43 = v8 >> 23;
      HIDWORD(v8) = v29 + 1518500249 + v40 + (v43 & (v42 | v41) | v42 & v41);
      LODWORD(v8) = HIDWORD(v8);
      v44 = v8 >> 19;
      HIDWORD(v8) = v10 + 1518500249 + v41 + (v44 & (v43 | v42) | v43 & v42);
      LODWORD(v8) = HIDWORD(v8);
      v45 = v8 >> 29;
      HIDWORD(v8) = v18 + 1518500249 + v42 + (v45 & (v44 | v43) | v44 & v43);
      LODWORD(v8) = HIDWORD(v8);
      v46 = v8 >> 27;
      HIDWORD(v8) = v26 + 1518500249 + v43 + (v46 & (v45 | v44) | v45 & v44);
      LODWORD(v8) = HIDWORD(v8);
      v47 = v8 >> 23;
      HIDWORD(v8) = v34 + 1518500249 + v44 + (v47 & (v46 | v45) | v46 & v45);
      LODWORD(v8) = HIDWORD(v8);
      v48 = v8 >> 19;
      HIDWORD(v8) = result + 1518500249 + v45 + (v48 & (v47 | v46) | v47 & v46);
      LODWORD(v8) = HIDWORD(v8);
      v49 = v8 >> 29;
      HIDWORD(v8) = v17 + 1518500249 + v46 + (v49 & (v48 | v47) | v48 & v47);
      LODWORD(v8) = HIDWORD(v8);
      v50 = v8 >> 27;
      HIDWORD(v8) = v25 + 1518500249 + v47 + (v50 & (v49 | v48) | v49 & v48);
      LODWORD(v8) = HIDWORD(v8);
      v51 = v8 >> 23;
      HIDWORD(v8) = v33 + 1518500249 + v48 + (v51 & (v50 | v49) | v50 & v49);
      LODWORD(v8) = HIDWORD(v8);
      v52 = v8 >> 19;
      HIDWORD(v8) = *a2 + 1859775393 + v49 + (v52 ^ v51 ^ v50);
      LODWORD(v8) = HIDWORD(v8);
      v53 = v8 >> 29;
      HIDWORD(v8) = v22 + 1859775393 + v50 + (v53 ^ v52 ^ v51);
      LODWORD(v8) = HIDWORD(v8);
      v54 = v8 >> 23;
      HIDWORD(v8) = v14 + 1859775393 + v51 + (v54 ^ v53 ^ v52);
      LODWORD(v8) = HIDWORD(v8);
      v55 = v8 >> 21;
      HIDWORD(v8) = v30 + 1859775393 + v52 + (v54 ^ v53 ^ v55);
      LODWORD(v8) = HIDWORD(v8);
      v56 = v8 >> 17;
      HIDWORD(v8) = v10 + 1859775393 + v53 + (v55 ^ v54 ^ v56);
      LODWORD(v8) = HIDWORD(v8);
      v57 = v8 >> 29;
      HIDWORD(v8) = v26 + 1859775393 + v54 + (v56 ^ v55 ^ v57);
      LODWORD(v8) = HIDWORD(v8);
      v58 = v8 >> 23;
      HIDWORD(v8) = v18 + 1859775393 + v55 + (v57 ^ v56 ^ v58);
      LODWORD(v8) = HIDWORD(v8);
      v59 = v8 >> 21;
      HIDWORD(v8) = v34 + 1859775393 + v56 + (v58 ^ v57 ^ v59);
      LODWORD(v8) = HIDWORD(v8);
      v60 = v8 >> 17;
      HIDWORD(v8) = v69 + 1859775393 + v57 + (v59 ^ v58 ^ v60);
      LODWORD(v8) = HIDWORD(v8);
      v61 = v8 >> 29;
      HIDWORD(v8) = v21 + 1859775393 + v58 + (v60 ^ v59 ^ v61);
      LODWORD(v8) = HIDWORD(v8);
      v62 = v8 >> 23;
      HIDWORD(v8) = v13 + 1859775393 + v59 + (v61 ^ v60 ^ v62);
      LODWORD(v8) = HIDWORD(v8);
      v63 = v8 >> 21;
      HIDWORD(v8) = v29 + 1859775393 + v60 + (v62 ^ v61 ^ v63);
      LODWORD(v8) = HIDWORD(v8);
      v64 = v8 >> 17;
      HIDWORD(v8) = result + 1859775393 + v61 + (v63 ^ v62 ^ v64);
      LODWORD(v8) = HIDWORD(v8);
      v65 = v8 >> 29;
      HIDWORD(v8) = v25 + 1859775393 + v62 + (v64 ^ v63 ^ v65);
      LODWORD(v8) = HIDWORD(v8);
      v66 = v8 >> 23;
      HIDWORD(v8) = v17 + 1859775393 + v63 + (v65 ^ v64 ^ v66);
      LODWORD(v8) = HIDWORD(v8);
      v67 = v8 >> 21;
      v6 += v65;
      v4 += v67;
      v3 += v66;
      HIDWORD(v8) = v33 + 1859775393 + v64 + (v66 ^ v65 ^ v67);
      LODWORD(v8) = HIDWORD(v8);
      v5 += v8 >> 17;
      *v68 = v6;
      v68[1] = v5;
      v68[2] = v4;
      v68[3] = v3;
      a2 += 64;
      --a3;
    }

    while (a3);
  }

  return result;
}

int MD5_Update(_MD5_CTX *c, const void *data, size_t len)
{
  if (!len)
  {
    return 1;
  }

  v3 = len;
  v5 = *&c->Nl + 8 * len;
  *&c->Nl = v5;
  num = c->num;
  if (num)
  {
    v7 = c->data;
    if (len <= 0x3F && num + len < 0x40)
    {
      memcpy(v7 + num, data, len);
      c->num += v3;
      return 1;
    }

    v9 = data;
    v10 = 64 - num;
    if (num != 64)
    {
      memcpy(v7 + num, data, 64 - num);
    }

    md5_block_data_order(c, c->data, 1);
    v11 = v3 >= v10;
    v3 -= v10;
    if (!v11)
    {
      abort();
    }

    data = &v9[v10];
    c->num = 0;
    *&c->data[8] = 0u;
    *&c->data[12] = 0u;
    *v7 = 0u;
    *&c->data[4] = 0u;
  }

  if (v3 >= 0x40)
  {
    v12 = data;
    md5_block_data_order(c, data, v3 >> 6);
    data = &v12[v3 & 0xFFFFFFFFFFFFFFC0];
    v3 &= 0x3Fu;
  }

  if (!v3)
  {
    return 1;
  }

  c->num = v3;
  memcpy(c->data, data, v3);
  return 1;
}

uint64_t md5_block_data_order(uint64_t result, const unsigned __int8 *a2, uint64_t a3)
{
  v85 = result;
  if (a3)
  {
    v4 = *(result + 8);
    v3 = *(result + 12);
    v6 = *result;
    v5 = *(result + 4);
    do
    {
      v7 = *(a2 + 1);
      HIDWORD(v8) = v6 + (v4 & v5 | v3 & ~v5) - 680876936 + *a2;
      LODWORD(v8) = HIDWORD(v8);
      v9 = (v8 >> 25) + v5;
      HIDWORD(v8) = v3 + v7 - 389564586 + (v5 & v9 | v4 & ~v9);
      LODWORD(v8) = HIDWORD(v8);
      v10 = (v8 >> 20) + v9;
      result = *(a2 + 2);
      v11 = *(a2 + 3);
      HIDWORD(v8) = v4 + result + 606105819 + (v9 & v10 | v5 & ~v10);
      LODWORD(v8) = HIDWORD(v8);
      v12 = (v8 >> 15) + v10;
      HIDWORD(v8) = v5 + v11 - 1044525330 + (v10 & v12 | v9 & ~v12);
      LODWORD(v8) = HIDWORD(v8);
      v13 = (v8 >> 10) + v12;
      v14 = *(a2 + 4);
      v15 = *(a2 + 5);
      HIDWORD(v8) = v9 + v14 - 176418897 + (v12 & v13 | v10 & ~v13);
      LODWORD(v8) = HIDWORD(v8);
      v16 = (v8 >> 25) + v13;
      HIDWORD(v8) = v15 + v10 + 1200080426 + (v13 & v16 | v12 & ~v16);
      LODWORD(v8) = HIDWORD(v8);
      v17 = (v8 >> 20) + v16;
      v19 = *(a2 + 6);
      v18 = *(a2 + 7);
      HIDWORD(v8) = v19 + v12 - 1473231341 + (v16 & v17 | v13 & ~v17);
      LODWORD(v8) = HIDWORD(v8);
      v20 = (v8 >> 15) + v17;
      HIDWORD(v8) = v18 + v13 - 45705983 + (v17 & v20 | v16 & ~v20);
      LODWORD(v8) = HIDWORD(v8);
      v21 = (v8 >> 10) + v20;
      v23 = *(a2 + 8);
      v22 = *(a2 + 9);
      HIDWORD(v8) = v23 + v16 + 1770035416 + (v20 & v21 | v17 & ~v21);
      LODWORD(v8) = HIDWORD(v8);
      v24 = (v8 >> 25) + v21;
      HIDWORD(v8) = v22 + v17 - 1958414417 + (v21 & v24 | v20 & ~v24);
      LODWORD(v8) = HIDWORD(v8);
      v25 = (v8 >> 20) + v24;
      v26 = *(a2 + 10);
      v27 = *(a2 + 11);
      HIDWORD(v8) = v26 + v20 - 42063 + (v24 & v25 | v21 & ~v25);
      LODWORD(v8) = HIDWORD(v8);
      v28 = (v8 >> 15) + v25;
      HIDWORD(v8) = v27 + v21 - 1990404162 + (v25 & v28 | v24 & ~v28);
      LODWORD(v8) = HIDWORD(v8);
      v29 = (v8 >> 10) + v28;
      v31 = *(a2 + 12);
      v30 = *(a2 + 13);
      HIDWORD(v8) = v31 + v24 + 1804603682 + (v28 & v29 | v25 & ~v29);
      LODWORD(v8) = HIDWORD(v8);
      v32 = (v8 >> 25) + v29;
      HIDWORD(v8) = v30 + v25 - 40341101 + (v29 & v32 | v28 & ~v32);
      LODWORD(v8) = HIDWORD(v8);
      v33 = (v8 >> 20) + v32;
      v35 = *(a2 + 14);
      v34 = *(a2 + 15);
      HIDWORD(v8) = v35 + v28 - 1502002290 + (v32 & v33 | v29 & ~v33);
      LODWORD(v8) = HIDWORD(v8);
      v36 = (v8 >> 15) + v33;
      HIDWORD(v8) = v34 + v29 + 1236535329 + (v33 & v36 | v32 & ~v36);
      LODWORD(v8) = HIDWORD(v8);
      v37 = (v8 >> 10) + v36;
      HIDWORD(v8) = v7 + v32 - 165796510 + (v37 & v33 | v36 & ~v33);
      LODWORD(v8) = HIDWORD(v8);
      v38 = (v8 >> 27) + v37;
      HIDWORD(v8) = v19 + v33 - 1069501632 + (v38 & v36 | v37 & ~v36);
      LODWORD(v8) = HIDWORD(v8);
      v39 = (v8 >> 23) + v38;
      HIDWORD(v8) = v27 + v36 + 643717713 + (v39 & v37 | v38 & ~v37);
      LODWORD(v8) = HIDWORD(v8);
      v40 = (v8 >> 18) + v39;
      HIDWORD(v8) = *a2 + v37 - 373897302 + (v40 & v38 | v39 & ~v38);
      LODWORD(v8) = HIDWORD(v8);
      v41 = (v8 >> 12) + v40;
      HIDWORD(v8) = v15 + v38 - 701558691 + (v41 & v39 | v40 & ~v39);
      LODWORD(v8) = HIDWORD(v8);
      v42 = (v8 >> 27) + v41;
      HIDWORD(v8) = v26 + v39 + 38016083 + (v42 & v40 | v41 & ~v40);
      LODWORD(v8) = HIDWORD(v8);
      v43 = (v8 >> 23) + v42;
      HIDWORD(v8) = v34 + v40 - 660478335 + (v43 & v41 | v42 & ~v41);
      LODWORD(v8) = HIDWORD(v8);
      v44 = (v8 >> 18) + v43;
      HIDWORD(v8) = v14 + v41 - 405537848 + (v44 & v42 | v43 & ~v42);
      LODWORD(v8) = HIDWORD(v8);
      v45 = (v8 >> 12) + v44;
      HIDWORD(v8) = v22 + v42 + 568446438 + (v45 & v43 | v44 & ~v43);
      LODWORD(v8) = HIDWORD(v8);
      v46 = (v8 >> 27) + v45;
      HIDWORD(v8) = v35 + v43 - 1019803690 + (v46 & v44 | v45 & ~v44);
      LODWORD(v8) = HIDWORD(v8);
      v47 = (v8 >> 23) + v46;
      HIDWORD(v8) = v11 + v44 - 187363961 + (v47 & v45 | v46 & ~v45);
      LODWORD(v8) = HIDWORD(v8);
      v48 = (v8 >> 18) + v47;
      HIDWORD(v8) = v23 + v45 + 1163531501 + (v48 & v46 | v47 & ~v46);
      LODWORD(v8) = HIDWORD(v8);
      v49 = (v8 >> 12) + v48;
      HIDWORD(v8) = v30 + v46 - 1444681467 + (v49 & v47 | v48 & ~v47);
      LODWORD(v8) = HIDWORD(v8);
      v50 = (v8 >> 27) + v49;
      HIDWORD(v8) = result + v47 - 51403784 + (v50 & v48 | v49 & ~v48);
      LODWORD(v8) = HIDWORD(v8);
      v51 = (v8 >> 23) + v50;
      HIDWORD(v8) = v18 + v48 + 1735328473 + (v51 & v49 | v50 & ~v49);
      LODWORD(v8) = HIDWORD(v8);
      v52 = (v8 >> 18) + v51;
      HIDWORD(v8) = v31 + v49 - 1926607734 + ((v52 ^ v51) & v50 ^ v51);
      LODWORD(v8) = HIDWORD(v8);
      v53 = (v8 >> 12) + v52;
      HIDWORD(v8) = v15 + v50 - 378558 + (v53 ^ v52 ^ v51);
      LODWORD(v8) = HIDWORD(v8);
      v54 = (v8 >> 28) + v53;
      HIDWORD(v8) = v23 + v51 - 2022574463 + (v54 ^ v53 ^ v52);
      LODWORD(v8) = HIDWORD(v8);
      v55 = (v8 >> 21) + v54;
      HIDWORD(v8) = v27 + v52 + 1839030562 + (v54 ^ v53 ^ v55);
      LODWORD(v8) = HIDWORD(v8);
      v56 = (v8 >> 16) + v55;
      HIDWORD(v8) = v35 + v53 - 35309556 + (v55 ^ v54 ^ v56);
      LODWORD(v8) = HIDWORD(v8);
      v57 = (v8 >> 9) + v56;
      HIDWORD(v8) = v7 + v54 - 1530992060 + (v56 ^ v55 ^ v57);
      LODWORD(v8) = HIDWORD(v8);
      v58 = (v8 >> 28) + v57;
      HIDWORD(v8) = v14 + v55 + 1272893353 + (v57 ^ v56 ^ v58);
      LODWORD(v8) = HIDWORD(v8);
      v59 = (v8 >> 21) + v58;
      HIDWORD(v8) = v18 + v56 - 155497632 + (v58 ^ v57 ^ v59);
      LODWORD(v8) = HIDWORD(v8);
      v60 = (v8 >> 16) + v59;
      HIDWORD(v8) = v26 + v57 - 1094730640 + (v59 ^ v58 ^ v60);
      LODWORD(v8) = HIDWORD(v8);
      v61 = (v8 >> 9) + v60;
      HIDWORD(v8) = v30 + v58 + 681279174 + (v60 ^ v59 ^ v61);
      LODWORD(v8) = HIDWORD(v8);
      v62 = (v8 >> 28) + v61;
      HIDWORD(v8) = *a2 + v59 - 358537222 + (v61 ^ v60 ^ v62);
      LODWORD(v8) = HIDWORD(v8);
      v63 = (v8 >> 21) + v62;
      HIDWORD(v8) = v11 + v60 - 722521979 + (v62 ^ v61 ^ v63);
      LODWORD(v8) = HIDWORD(v8);
      v64 = (v8 >> 16) + v63;
      HIDWORD(v8) = v19 + v61 + 76029189 + (v63 ^ v62 ^ v64);
      LODWORD(v8) = HIDWORD(v8);
      v65 = (v8 >> 9) + v64;
      HIDWORD(v8) = v22 + v62 - 640364487 + (v64 ^ v63 ^ v65);
      LODWORD(v8) = HIDWORD(v8);
      v66 = (v8 >> 28) + v65;
      HIDWORD(v8) = v31 + v63 - 421815835 + (v65 ^ v64 ^ v66);
      LODWORD(v8) = HIDWORD(v8);
      v67 = (v8 >> 21) + v66;
      HIDWORD(v8) = v34 + v64 + 530742520 + (v66 ^ v65 ^ v67);
      LODWORD(v8) = HIDWORD(v8);
      v68 = (v8 >> 16) + v67;
      HIDWORD(v8) = result + v65 - 995338651 + (v67 ^ v66 ^ v68);
      LODWORD(v8) = HIDWORD(v8);
      v69 = (v8 >> 9) + v68;
      HIDWORD(v8) = *a2 + v66 - 198630844 + ((v69 | ~v67) ^ v68);
      LODWORD(v8) = HIDWORD(v8);
      v70 = (v8 >> 26) + v69;
      HIDWORD(v8) = v18 + v67 + 1126891415 + ((v70 | ~v68) ^ v69);
      LODWORD(v8) = HIDWORD(v8);
      v71 = (v8 >> 22) + v70;
      HIDWORD(v8) = v35 + v68 - 1416354905 + ((v71 | ~v69) ^ v70);
      LODWORD(v8) = HIDWORD(v8);
      v72 = (v8 >> 17) + v71;
      HIDWORD(v8) = v15 + v69 - 57434055 + ((v72 | ~v70) ^ v71);
      LODWORD(v8) = HIDWORD(v8);
      v73 = (v8 >> 11) + v72;
      HIDWORD(v8) = v31 + v70 + 1700485571 + ((v73 | ~v71) ^ v72);
      LODWORD(v8) = HIDWORD(v8);
      v74 = (v8 >> 26) + v73;
      HIDWORD(v8) = v11 + v71 - 1894986606 + ((v74 | ~v72) ^ v73);
      LODWORD(v8) = HIDWORD(v8);
      v75 = (v8 >> 22) + v74;
      HIDWORD(v8) = v26 + v72 - 1051523 + ((v75 | ~v73) ^ v74);
      LODWORD(v8) = HIDWORD(v8);
      v76 = (v8 >> 17) + v75;
      HIDWORD(v8) = v7 + v73 - 2054922799 + ((v76 | ~v74) ^ v75);
      LODWORD(v8) = HIDWORD(v8);
      v77 = (v8 >> 11) + v76;
      HIDWORD(v8) = v23 + v74 + 1873313359 + ((v77 | ~v75) ^ v76);
      LODWORD(v8) = HIDWORD(v8);
      v78 = (v8 >> 26) + v77;
      HIDWORD(v8) = v34 + v75 - 30611744 + ((v78 | ~v76) ^ v77);
      LODWORD(v8) = HIDWORD(v8);
      v79 = (v8 >> 22) + v78;
      HIDWORD(v8) = v19 + v76 - 1560198380 + ((v79 | ~v77) ^ v78);
      LODWORD(v8) = HIDWORD(v8);
      v80 = (v8 >> 17) + v79;
      HIDWORD(v8) = v30 + v77 + 1309151649 + ((v80 | ~v78) ^ v79);
      LODWORD(v8) = HIDWORD(v8);
      v81 = (v8 >> 11) + v80;
      HIDWORD(v8) = v14 + v78 - 145523070 + ((v81 | ~v79) ^ v80);
      LODWORD(v8) = HIDWORD(v8);
      v82 = (v8 >> 26) + v81;
      HIDWORD(v8) = v27 + v79 - 1120210379 + ((v82 | ~v80) ^ v81);
      LODWORD(v8) = HIDWORD(v8);
      v83 = (v8 >> 22) + v82;
      HIDWORD(v8) = result + v80 + 718787259 + ((v83 | ~v81) ^ v82);
      LODWORD(v8) = HIDWORD(v8);
      v84 = (v8 >> 17) + v83;
      v6 += v82;
      HIDWORD(v8) = v22 + v81 - 343485551 + ((v84 | ~v82) ^ v83);
      LODWORD(v8) = HIDWORD(v8);
      v5 += v84 + (v8 >> 11);
      v4 += v84;
      v3 += v83;
      *v85 = v6;
      v85[1] = v5;
      v85[2] = v4;
      v85[3] = v3;
      a2 += 64;
      --a3;
    }

    while (a3);
  }

  return result;
}

void *OPENSSL_malloc(unint64_t a1)
{
  if (a1 <= 0xFFFFFFFFFFFFFFF7 && (v2 = malloc_type_malloc(a1 + 8, 0xB4E622C9uLL)) != 0)
  {
    *v2 = a1;
    return v2 + 1;
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }
}

void *OPENSSL_calloc(unint64_t a1, unint64_t a2)
{
  if (!a2 || is_mul_ok(a2, a1))
  {
    v3 = a2 * a1;
    if (a2 * a1 <= 0xFFFFFFFFFFFFFFF7 && (v4 = malloc_type_malloc(v3 + 8, 0xB4E622C9uLL)) != 0)
    {
      *v4 = v3;
      result = v4 + 1;
      if (v3)
      {
        v5 = result;
        bzero(result, v3);
        return v5;
      }
    }

    else
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      return 0;
    }
  }

  else
  {
    ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 231);
    return 0;
  }

  return result;
}

void OPENSSL_free(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 - 8);
    v2 = (a1 - 8);
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

void *OPENSSL_realloc(void *a1, unint64_t a2)
{
  if (!a1)
  {
    if (a2 <= 0xFFFFFFFFFFFFFFF7)
    {
      v12 = malloc_type_malloc(a2 + 8, 0xB4E622C9uLL);
      if (v12)
      {
        *v12 = a2;
        return v12 + 1;
      }
    }

    goto LABEL_13;
  }

  if (a2 > 0xFFFFFFFFFFFFFFF7 || (v4 = (a1 - 1), v5 = *(a1 - 1), (v6 = malloc_type_malloc(a2 + 8, 0xB4E622C9uLL)) == 0))
  {
LABEL_13:
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  *v6 = a2;
  v7 = v6 + 1;
  if (v5 >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = v5;
  }

  v9 = v7;
  memcpy(v7, a1, v8);
  v10 = *(a1 - 1);
  if (v10 != -8)
  {
    bzero(v4, v10 + 8);
  }

  free(v4);
  return v9;
}

void *OPENSSL_strdup(const char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = strlen(a1);
  v3 = v2 + 1;
  if (v2 == -1)
  {
    return 0;
  }

  if (v3 > 0xFFFFFFFFFFFFFFF7 || (v4 = malloc_type_malloc(v2 + 9, 0xB4E622C9uLL)) == 0)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  *v4 = v3;
  v5 = v4 + 1;

  return memcpy(v5, a1, v3);
}

uint64_t OPENSSL_strncasecmp(char *a1, char *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  for (i = a3 - 1; ; --i)
  {
    v5 = *a1++;
    v4 = v5;
    v6 = v5 | 0x20;
    v7 = (v5 - 65) >= 0x1A;
    v9 = *a2++;
    v8 = v9;
    if (!v7)
    {
      v4 = v6;
    }

    if ((v8 - 65) < 0x1A)
    {
      v8 |= 0x20u;
    }

    if (v4 < v8)
    {
      break;
    }

    if (v4 > v8)
    {
      return 1;
    }

    if (v4)
    {
      v10 = i == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t OPENSSL_vasprintf_internal(char **a1, const char *a2, va_list a3, int a4)
{
  if (a4)
  {
    v6 = MEMORY[0x277D86140];
  }

  else
  {
    v6 = OPENSSL_malloc;
  }

  if (a4)
  {
    v7 = MEMORY[0x277D86138];
  }

  else
  {
    v7 = OPENSSL_free;
  }

  if (a4)
  {
    v8 = MEMORY[0x277D86168];
  }

  else
  {
    v8 = OPENSSL_realloc;
  }

  v9 = v6(64uLL);
  v10 = v9;
  if (!v9)
  {
    goto LABEL_19;
  }

  result = vsnprintf(v9, 0x40uLL, a2, a3);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  if (result < 0x40)
  {
    v12 = 64;
  }

  else
  {
    v12 = (result + 1);
    v13 = v8(v10, v12);
    if (!v13)
    {
      goto LABEL_19;
    }

    v10 = v13;
    result = vsnprintf(v13, v12, a2, a3);
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_19;
    }
  }

  if (v12 > result)
  {
    *a1 = v10;
    return result;
  }

LABEL_19:
  v7(v10);
  *a1 = 0;
  *__error() = 12;
  return 0xFFFFFFFFLL;
}

uint64_t OPENSSL_vasprintf(char **a1, const char *a2, va_list a3)
{
  v5 = malloc_type_malloc(0x48uLL, 0xB4E622C9uLL);
  if (v5)
  {
    v6 = v5;
    *v5 = 64;
    v7 = (v5 + 1);
    result = vsnprintf(v5 + 8, 0x40uLL, a2, a3);
    if ((result & 0x80000000) == 0)
    {
      if (result < 0x40)
      {
        v9 = 64;
        goto LABEL_12;
      }

      v9 = (result + 1);
      v10 = *v6;
      v11 = malloc_type_malloc(v9 + 8, 0xB4E622C9uLL);
      if (v11)
      {
        *v11 = v9;
        v12 = (v11 + 1);
        if (v10 >= v9)
        {
          v13 = v9;
        }

        else
        {
          v13 = v10;
        }

        v14 = v12;
        memcpy(v12, v7, v13);
        free(v6);
        result = vsnprintf(v14, v9, a2, a3);
        v7 = v14;
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_15;
        }

LABEL_12:
        if (v9 > result)
        {
          *a1 = v7;
          return result;
        }

        goto LABEL_15;
      }

      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    }

LABEL_15:
    v16 = *(v7 - 1);
    v15 = v7 - 8;
    v17 = v16 + 8;
    if (v16 != -8)
    {
      bzero(v15, v17);
    }

    free(v15);
    goto LABEL_18;
  }

  ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
LABEL_18:
  *a1 = 0;
  *__error() = 12;
  return 0xFFFFFFFFLL;
}

int X509_NAME_print_ex(BIO *out, X509_NAME *nm, int indent, unint64_t flags)
{
  v68 = *MEMORY[0x277D85DE8];
  if (!flags)
  {

    return X509_NAME_print(out, nm, indent);
  }

  if (out && indent >= 1)
  {
    v8 = 0;
    v9 = 1;
    v10 = indent;
    while (1)
    {
      if (!out->method || (bwrite = out->method->bwrite) == 0)
      {
        ERR_put_error(17, 0, 115, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 121);
        if (!v8)
        {
          return -1;
        }

        goto LABEL_19;
      }

      if (!LODWORD(out->cb_arg))
      {
        break;
      }

      v12 = (bwrite)(out, " ", 1);
      if (v12 > 0)
      {
        out->prev_bio = (out->prev_bio + v12);
        if (v12 == 1)
        {
          v8 = v9++ >= indent;
          if (--v10)
          {
            continue;
          }
        }
      }

      if (!v8)
      {
        return -1;
      }

      goto LABEL_19;
    }

    ERR_put_error(17, 0, 114, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 125);
    if (!v8)
    {
      return -1;
    }
  }

LABEL_19:
  v14 = indent & ~(indent >> 31);
  v15 = ((flags & 0xF0000) - 0x10000) >> 16;
  v16 = -1;
  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v17 = 0;
      v18 = 3;
      v19 = 2;
      v20 = " + ";
      v21 = "; ";
    }

    else
    {
      if (v15 != 3)
      {
        return v16;
      }

      v18 = 3;
      v19 = 1;
      v20 = " + ";
      v17 = v14;
      v21 = "\n";
    }
  }

  else
  {
    v17 = 0;
    if (v15)
    {
      v18 = 3;
      v19 = 2;
      v20 = " + ";
      v21 = ", ";
    }

    else
    {
      v19 = 1;
      v20 = "+";
      v18 = 1;
      v21 = ",";
    }
  }

  v22 = "=";
  if ((flags & 0x800000) != 0)
  {
    v22 = " = ";
    v23 = 3;
  }

  else
  {
    v23 = 1;
  }

  v66 = v23;
  if (!nm)
  {
    return v14;
  }

  if (!nm->entries)
  {
    return v14;
  }

  num = nm->entries->num;
  if (num < 1)
  {
    return v14;
  }

  v64 = v22;
  v58 = v21;
  v59 = v20;
  v25 = 0;
  v60 = v19;
  v61 = v17;
  v62 = v17 + v19;
  v63 = v18;
  v26 = -1;
  v16 = v14;
  v65 = nm->entries->num;
  while (1)
  {
    LODWORD(v27) = ~v25 + num;
    v27 = (flags & 0x100000) != 0 ? v27 : v25;
    if ((v27 & 0x80000000) != 0 || (entries = nm->entries) == 0 || *&entries->num <= v27)
    {
      v29 = 0;
      if (v26 == -1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v29 = entries->data[v27];
      if (v26 == -1)
      {
        goto LABEL_52;
      }
    }

    if (v26 == *(v29 + 4))
    {
      if (out)
      {
        if (!out->method)
        {
          goto LABEL_109;
        }

        v30 = out->method->bwrite;
        if (!v30)
        {
          goto LABEL_109;
        }

        if (!LODWORD(out->cb_arg))
        {
          break;
        }

        v31 = (v30)(out, v59, v63);
        if (v31 >= 1)
        {
          out->prev_bio = (out->prev_bio + v31);
        }

        if (v31 != v63)
        {
          return -1;
        }
      }

      v16 += v63;
LABEL_52:
      v26 = *(v29 + 4);
      v32 = *v29;
      v33 = *(v29 + 1);
      v34 = OBJ_obj2nid(*v29);
      if (!v34)
      {
        goto LABEL_79;
      }

      goto LABEL_53;
    }

    if (out)
    {
      if (!out->method || (v38 = out->method->bwrite) == 0)
      {
LABEL_109:
        v56 = 115;
        v57 = 121;
        goto LABEL_111;
      }

      if (!LODWORD(out->cb_arg))
      {
        break;
      }

      v39 = (v38)(out, v58, v60);
      if (v39 >= 1)
      {
        out->prev_bio = (out->prev_bio + v39);
      }

      if (v39 != v60)
      {
        return -1;
      }

      if (v61)
      {
        v40 = 0;
        v41 = 1;
        v42 = v61;
        while (1)
        {
          if (!out->method || (v43 = out->method->bwrite) == 0)
          {
            v45 = 115;
            v46 = 121;
            goto LABEL_76;
          }

          if (!LODWORD(out->cb_arg))
          {
            break;
          }

          v44 = (v43)(out, " ", 1);
          if (v44 > 0)
          {
            out->prev_bio = (out->prev_bio + v44);
            if (v44 == 1)
            {
              v40 = v41++ >= v61;
              if (--v42)
              {
                continue;
              }
            }
          }

          goto LABEL_77;
        }

        v45 = 114;
        v46 = 125;
LABEL_76:
        ERR_put_error(17, 0, v45, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", v46);
LABEL_77:
        if (!v40)
        {
          return -1;
        }
      }
    }

    v16 += v62;
    v26 = *(v29 + 4);
    v32 = *v29;
    v33 = *(v29 + 1);
    v34 = OBJ_obj2nid(*v29);
    if (!v34)
    {
LABEL_79:
      sn = buf;
      OBJ_obj2txt(buf, 80, v32, 1);
      v37 = strlen(buf);
      if (!out)
      {
        goto LABEL_96;
      }

      goto LABEL_80;
    }

LABEL_53:
    v35 = OBJ_nid2obj(v34);
    if (v35)
    {
      sn = v35->sn;
      v37 = strlen(v35->sn);
      if (!out)
      {
        goto LABEL_96;
      }
    }

    else
    {
      sn = 0;
      v37 = strlen(0);
      if (!out)
      {
        goto LABEL_96;
      }
    }

LABEL_80:
    if (!out->method || (v47 = out->method->bwrite) == 0)
    {
      v49 = 115;
      v50 = 121;
LABEL_88:
      ERR_put_error(17, 0, v49, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", v50);
      v48 = -2;
LABEL_89:
      if (v48 != v37)
      {
        return -1;
      }

      goto LABEL_90;
    }

    if (!LODWORD(out->cb_arg))
    {
      v49 = 114;
      v50 = 125;
      goto LABEL_88;
    }

    if (v37 >= 1)
    {
      v48 = (v47)(out, sn, v37);
      if (v48 >= 1)
      {
        out->prev_bio = (out->prev_bio + v48);
        if (v48 != v37)
        {
          return -1;
        }

        goto LABEL_90;
      }

      goto LABEL_89;
    }

    if (v37)
    {
      return -1;
    }

LABEL_90:
    if (!out->method)
    {
      goto LABEL_109;
    }

    v51 = out->method->bwrite;
    if (!v51)
    {
      goto LABEL_109;
    }

    if (!LODWORD(out->cb_arg))
    {
      break;
    }

    v52 = (v51)(out, v64, v66);
    if (v52 >= 1)
    {
      out->prev_bio = (out->prev_bio + v52);
    }

    if (v52 != v66)
    {
      return -1;
    }

LABEL_96:
    if (v34)
    {
      v53 = 1;
    }

    else
    {
      v53 = (flags & 0x1000000) == 0;
    }

    v54 = 128;
    if (v53)
    {
      v54 = 0;
    }

    v55 = ASN1_STRING_print_ex(out, v33, v54 | flags);
    if (v55 < 0)
    {
      return -1;
    }

    num = v65;
    v16 += v66 + v37 + v55;
    if (++v25 == v65)
    {
      return v16;
    }
  }

  v56 = 114;
  v57 = 125;
LABEL_111:
  ERR_put_error(17, 0, v56, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", v57);
  return -1;
}

ASN1_OBJECT *__cdecl OBJ_dup(ASN1_OBJECT *o)
{
  if (o && (o->flags & 1) != 0)
  {
    v1 = o;
    v2 = malloc_type_malloc(0x30uLL, 0xB4E622C9uLL);
    if (!v2)
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      ERR_put_error(8, 0, 12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/obj/obj.cc", 70);
      return 0;
    }

    v3 = v2;
    *v2 = 40;
    *(v2 + 1) = 0;
    v4 = (v2 + 8);
    *(v2 + 3) = 0;
    *(v2 + 4) = 0;
    *(v2 + 10) = 1;
    *(v2 + 2) = 0;
    length = v1->length;
    if (length)
    {
      if (length <= 0xFFFFFFF7 && (data = v1->data, (v7 = malloc_type_malloc(length + 8, 0xB4E622C9uLL)) != 0))
      {
        *v7 = length;
        v8 = v7 + 1;
        memcpy(v7 + 1, data, length);
        v3[4] = v8;
        v9 = v1;
        v10 = v1->length;
      }

      else
      {
        ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
        v11 = v1->length;
        v3[4] = 0;
        if (v11)
        {
          goto LABEL_31;
        }

        v10 = 0;
        v9 = v1;
      }
    }

    else
    {
      v9 = v1;
      v10 = 0;
    }

    *(v3 + 6) = v9->nid;
    *(v3 + 7) = v10;
    ln = v9->ln;
    if (!ln)
    {
      v16 = 0;
      goto LABEL_18;
    }

    v13 = strlen(v9->ln);
    v14 = v13 + 1;
    if (v13 != -1)
    {
      if (v14 <= 0xFFFFFFFFFFFFFFF7)
      {
        v15 = malloc_type_malloc(v13 + 9, 0xB4E622C9uLL);
        if (v15)
        {
          *v15 = v14;
          v16 = v15 + 1;
          memcpy(v15 + 1, ln, v14);
          v9 = v1;
LABEL_18:
          sn = v9->sn;
          if (!v9->sn)
          {
            v21 = 0;
            goto LABEL_25;
          }

          v18 = strlen(v9->sn);
          v19 = v18 + 1;
          if (v18 != -1)
          {
            if (v19 <= 0xFFFFFFFFFFFFFFF7)
            {
              v20 = malloc_type_malloc(v18 + 9, 0xB4E622C9uLL);
              if (v20)
              {
                *v20 = v19;
                v21 = v20 + 1;
                memcpy(v20 + 1, sn, v19);
                v9 = v1;
LABEL_25:
                v3[1] = v21;
                v3[2] = v16;
                *(v3 + 10) = v9->flags | 0xD;
                return v4;
              }
            }

            ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
          }

          if (v16)
          {
            v23 = *(v16 - 1);
            v22 = v16 - 1;
            v24 = v23 + 8;
            if (v23 != -8)
            {
              bzero(v22, v24);
            }

            free(v22);
          }

          goto LABEL_31;
        }
      }

      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    }

LABEL_31:
    free(v3);
    return 0;
  }

  return o;
}

int OBJ_cmp(const ASN1_OBJECT *a, const ASN1_OBJECT *b)
{
  length = a->length;
  v3 = b->length;
  if (length < v3)
  {
    return -1;
  }

  if (length > v3)
  {
    return 1;
  }

  if (length)
  {
    return memcmp(a->data, b->data, length);
  }

  return 0;
}

int OBJ_obj2nid(const ASN1_OBJECT *o)
{
  if (o)
  {
    v1 = o;
    LODWORD(o) = o->nid;
    if (!o)
    {
      if (pthread_rwlock_rdlock(&global_added_lock) || pthread_rwlock_unlock(&global_added_lock))
      {
        goto LABEL_9;
      }

      o = bsearch(v1, &kNIDsInOIDOrder, 0x371uLL, 2uLL, obj_cmp);
      if (!o)
      {
        return o;
      }

      v2 = LOWORD(o->sn) - 1;
      if (v2 >= 0x3C5)
      {
LABEL_9:
        abort();
      }

      LODWORD(o) = kObjects[5 * v2 + 2];
    }
  }

  return o;
}

uint64_t obj_cmp(int *a1, unsigned __int16 *a2)
{
  v3 = *a2 - 1;
  if (v3 >= 0x3C5)
  {
    abort();
  }

  v4 = &kObjects[5 * v3];
  v5 = a1[5];
  v6 = *(v4 + 5);
  if (v5 < v6)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 > v6)
  {
    return 1;
  }

  if (!v5)
  {
    return 0;
  }

  v8 = v4[3];
  v9 = *(a1 + 3);

  return memcmp(v9, v8, v5);
}

int OBJ_sn2nid(const char *s)
{
  if (pthread_rwlock_rdlock(&global_added_lock) || pthread_rwlock_unlock(&global_added_lock))
  {
    goto LABEL_7;
  }

  v2 = bsearch(s, &kNIDsInShortNameOrder, 0x3BAuLL, 2uLL, short_name_cmp);
  if (v2)
  {
    v3 = *v2 - 1;
    if (v3 < 0x3C5)
    {
      LODWORD(v2) = kObjects[5 * v3 + 2];
      return v2;
    }

LABEL_7:
    abort();
  }

  return v2;
}

uint64_t short_name_cmp(const char *a1, unsigned __int16 *a2)
{
  v3 = *a2 - 1;
  if (v3 >= 0x3C5)
  {
    abort();
  }

  v4 = kObjects[5 * v3];

  return strcmp(a1, v4);
}

int OBJ_ln2nid(const char *s)
{
  if (pthread_rwlock_rdlock(&global_added_lock) || pthread_rwlock_unlock(&global_added_lock))
  {
    goto LABEL_7;
  }

  v2 = bsearch(s, &kNIDsInLongNameOrder, 0x3BAuLL, 2uLL, long_name_cmp);
  if (v2)
  {
    v3 = *v2 - 1;
    if (v3 < 0x3C5)
    {
      LODWORD(v2) = kObjects[5 * v3 + 2];
      return v2;
    }

LABEL_7:
    abort();
  }

  return v2;
}

uint64_t long_name_cmp(const char *a1, unsigned __int16 *a2)
{
  v3 = *a2 - 1;
  if (v3 >= 0x3C5)
  {
    abort();
  }

  v4 = kObjects[5 * v3 + 1];

  return strcmp(a1, v4);
}

ASN1_OBJECT *__cdecl OBJ_txt2obj(const char *s, int no_name)
{
  if (!no_name)
  {
    if (pthread_rwlock_rdlock(&global_added_lock) || pthread_rwlock_unlock(&global_added_lock))
    {
      goto LABEL_21;
    }

    v4 = bsearch(s, &kNIDsInShortNameOrder, 0x3BAuLL, 2uLL, short_name_cmp);
    if (!v4)
    {
      goto LABEL_24;
    }

    v5 = *v4 - 1;
    if (v5 >= 0x3C5)
    {
      goto LABEL_21;
    }

    v6 = kObjects[5 * v5 + 2];
    if (!v6)
    {
LABEL_24:
      if (pthread_rwlock_rdlock(&global_added_lock) || pthread_rwlock_unlock(&global_added_lock))
      {
        goto LABEL_21;
      }

      v7 = bsearch(s, &kNIDsInLongNameOrder, 0x3BAuLL, 2uLL, long_name_cmp);
      if (!v7)
      {
        goto LABEL_2;
      }

      v8 = *v7 - 1;
      if (v8 >= 0x3C5)
      {
        goto LABEL_21;
      }

      v6 = kObjects[5 * v8 + 2];
      if (!v6)
      {
        goto LABEL_2;
      }
    }

    if (v6 <= 0x3C5)
    {
      result = &kObjects[5 * v6 - 5];
      if (result->nid)
      {
        return result;
      }

LABEL_20:
      ERR_put_error(8, 0, 100, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/obj/obj.cc", 323);
      return 0;
    }

    if (!pthread_rwlock_rdlock(&global_added_lock) && !pthread_rwlock_unlock(&global_added_lock))
    {
      goto LABEL_20;
    }

LABEL_21:
    abort();
  }

LABEL_2:

  return create_object_with_text_oid(0, s, 0, 0);
}

ASN1_OBJECT *__cdecl OBJ_nid2obj(int n)
{
  if (!n)
  {
    return OBJ_get_undef::kUndef;
  }

  if (n > 0x3C5)
  {
    if (pthread_rwlock_rdlock(&global_added_lock) || pthread_rwlock_unlock(&global_added_lock))
    {
      abort();
    }

    goto LABEL_8;
  }

  result = &kObjects[5 * (n - 1)];
  if (!result->nid)
  {
LABEL_8:
    ERR_put_error(8, 0, 100, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/obj/obj.cc", 323);
    return 0;
  }

  return result;
}

ASN1_OBJECT *create_object_with_text_oid(uint64_t (*a1)(uint64_t), char *a2, const char *a3, const char *a4)
{
  memset(v22, 0, sizeof(v22));
  v8 = malloc_type_malloc(0x28uLL, 0xB4E622C9uLL);
  if (!v8)
  {
    v10 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v11 = 65;
    v12 = 217;
    goto LABEL_6;
  }

  *v8 = 32;
  BYTE8(v22[0]) = 0;
  *&v22[0] = 0;
  *&v22[1] = v8 + 1;
  *(&v22[1] + 8) = xmmword_273BA9E30;
  BYTE8(v22[2]) = 1;
  v9 = strlen(a2);
  if (!CBB_add_asn1_oid_from_text(v22, a2, v9))
  {
LABEL_7:
    ERR_put_error(8, 0, 101, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/obj/obj.cc", 355);
    if (BYTE8(v22[0]))
    {
      return 0;
    }

    if ((BYTE8(v22[2]) & 1) == 0 || !*&v22[1])
    {
      return 0;
    }

    v15 = (*&v22[1] - 8);
    v14 = *(*&v22[1] - 8);
    if (v14 != -8)
    {
      bzero(v15, v14 + 8);
    }

    v16 = 0;
LABEL_26:
    free(v15);
    return v16;
  }

  if (BYTE8(v22[0]))
  {
    v10 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bytestring/cbb.cc";
    v11 = 66;
    v12 = 126;
LABEL_6:
    ERR_put_error(14, 0, v11, v10, v12);
    goto LABEL_7;
  }

  v17 = CBB_flush(v22);
  if (!v17)
  {
    goto LABEL_7;
  }

  v18 = v22[1];
  *&v22[1] = 0;
  if (a1)
  {
    v19 = a1(v17);
    if (*(&v18 + 1) >> 31)
    {
LABEL_19:
      ERR_put_error(12, 0, 173, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_object.cc", 180);
      result = 0;
      goto LABEL_23;
    }
  }

  else
  {
    v19 = 0;
    if (*(&v22[1] + 1) >> 31)
    {
      goto LABEL_19;
    }
  }

  o.sn = a3;
  o.ln = a4;
  o.data = v18;
  o.nid = v19;
  o.length = DWORD2(v18);
  o.flags = 13;
  result = OBJ_dup(&o);
LABEL_23:
  if (v18)
  {
    v16 = result;
    v20 = *(v18 - 8);
    v15 = (v18 - 8);
    v21 = v20 + 8;
    if (v20 != -8)
    {
      bzero(v15, v21);
    }

    goto LABEL_26;
  }

  return result;
}