uint64_t eckey_set1_tls_encodedpoint(uint64_t a1, const unsigned __int8 *a2, size_t a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {

    return EC_KEY_oct2key(v4, a2, a3, 0);
  }

  else
  {
    ERR_put_error(6, 0, 120, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ec_asn1.c", 184);
    return 0;
  }
}

unsigned __int8 *eckey_get1_tls_encodedpoint(uint64_t a1, unsigned __int8 **a2, uint64_t a3, uint64_t a4, uint64_t a5, BN_CTX *a6)
{
  v7 = *(a1 + 8);
  if (v7)
  {

    return EC_KEY_key2buf(v7, POINT_CONVERSION_UNCOMPRESSED, a2, 0, a5, a6);
  }

  else
  {
    ERR_put_error(6, 0, 120, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ec_asn1.c", 195);
    return 0;
  }
}

uint64_t ec_bits(uint64_t a1)
{
  v1 = EC_KEY_get0_group(*(a1 + 8));
  if (v1)
  {

    return EC_GROUP_order_bits(v1);
  }

  else
  {
    ERR_clear_error();
    return 0;
  }
}

uint64_t ec_copy_parameters(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (!v3)
  {
    v8 = 120;
    v9 = 225;
LABEL_10:
    ERR_put_error(6, 0, v8, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ec_asn1.c", v9);
    return 0;
  }

  v4 = EC_KEY_get0_group(v3);
  if (!v4)
  {
    v8 = 118;
    v9 = 230;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = *(a1 + 8);
  if (!v6)
  {
    v6 = EC_KEY_new();
    *(a1 + 8) = v6;
    if (!v6)
    {
      return 0;
    }
  }

  return EC_KEY_set_group(v6, v5);
}

uint64_t ec_cmp_parameters(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 4294967294;
  }

  v5 = EC_KEY_get0_group(v2);
  v6 = EC_KEY_get0_group(v3);
  if (!v5 || v6 == 0)
  {
    return 4294967294;
  }

  else
  {
    return EC_GROUP_cmp(v5, v6, 0) == 0;
  }
}

BOOL EVP_PKEY_assign_EC_KEY(uint64_t a1, uint64_t a2)
{
  evp_pkey_set_method(a1, &ec_asn1_meth);
  *(a1 + 8) = a2;
  return a2 != 0;
}

uint64_t bssl::close_early_data(uint64_t a1, int a2)
{
  v2 = *(a1 + 1600);
  if ((v2 & 0x400) == 0)
  {
    bssl::close_early_data();
  }

  v4 = *a1;
  *(a1 + 1600) = v2 & 0xFFFFDFFF;
  if (v4[21])
  {
    goto LABEL_3;
  }

  if (!a2)
  {
    v9 = 0xAAAAAAAAAAAAAAAALL;
    bssl::SSLAEADContext::CreateNullCipher(&v9);
    if (!v9)
    {
      std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](&v9, 0);
      return 0;
    }

    v6 = *(*v4 + 144);
    v8 = v9;
    v9 = 0;
    v7 = v6(v4, 0, &v8, 0, 0);
    std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](&v8, 0);
    std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](&v9, 0);
    if ((v7 & 1) == 0)
    {
      return 0;
    }

LABEL_3:
    if (*(v4[6] + 204) != a2)
    {
      bssl::close_early_data();
    }

    return 1;
  }

  if (a2 != 2)
  {
    bssl::close_early_data();
  }

  result = bssl::tls13_set_traffic_key(v4, 2, 1, *(a1 + 1536), (a1 + 130), *(a1 + 178));
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

void sub_1A905F878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, bssl::SSLAEADContext *a9, bssl::SSLAEADContext *a10)
{
  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](&a9, 0);
  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](&a10, 0);
  _Unwind_Resume(a1);
}

uint64_t rsa_pub_encode(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[1] = v4;
  v10[2] = v4;
  v9[2] = v4;
  v10[0] = v4;
  v9[0] = v4;
  v9[1] = v4;
  v8[1] = v4;
  v8[2] = v4;
  v7[2] = v4;
  v8[0] = v4;
  v7[0] = v4;
  v7[1] = v4;
  v6[1] = v4;
  v6[2] = v4;
  v6[0] = v4;
  if (CBB_add_asn1(a1, v10, 0x20000010u) && CBB_add_asn1(v10, v9, 0x20000010u) && CBB_add_asn1(v9, v8, 6u) && CBB_add_bytes(v8, &unk_1F1CAFCAC, 9uLL) && CBB_add_asn1(v9, v7, 5u) && CBB_add_asn1(v10, v6, 3u) && CBB_add_u8(v6, 0) && RSA_marshal_public_key(v6, v3) && CBB_flush(a1))
  {
    return 1;
  }

  ERR_put_error(6, 0, 105, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_rsa_asn1.c", 82);
  return 0;
}

BOOL rsa_pub_cmp(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = EVP_HPKE_CTX_aead(v3);
  v5 = EVP_HPKE_CTX_aead(v2);
  if (BN_cmp(v4, v5))
  {
    return 0;
  }

  v7 = EVP_HPKE_CTX_kdf(v3);
  v8 = EVP_HPKE_CTX_kdf(v2);
  return BN_cmp(v7, v8) == 0;
}

uint64_t rsa_priv_decode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_asn1(a2, &v8, 5) || v9 || *(a2 + 8))
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_rsa_asn1.c", 144);
  }

  else
  {
    v7 = RSA_parse_private_key(a3);
    if (v7 && !*(a3 + 8))
    {
      evp_pkey_set_method(a1, &rsa_asn1_meth);
      *(a1 + 8) = v7;
      return 1;
    }

    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_rsa_asn1.c", 150);
    RSA_free(v7);
  }

  return 0;
}

uint64_t rsa_priv_encode(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[1] = v4;
  v10[2] = v4;
  v9[2] = v4;
  v10[0] = v4;
  v9[0] = v4;
  v9[1] = v4;
  v8[1] = v4;
  v8[2] = v4;
  v7[2] = v4;
  v8[0] = v4;
  v7[0] = v4;
  v7[1] = v4;
  v6[1] = v4;
  v6[2] = v4;
  v6[0] = v4;
  if (CBB_add_asn1(a1, v10, 0x20000010u) && CBB_add_asn1_uint64(v10, 0) && CBB_add_asn1(v10, v9, 0x20000010u) && CBB_add_asn1(v9, v8, 6u) && CBB_add_bytes(v8, &unk_1F1CAFCAC, 9uLL) && CBB_add_asn1(v9, v7, 5u) && CBB_add_asn1(v10, v6, 4u) && RSA_marshal_private_key(v6, v3) && CBB_flush(a1))
  {
    return 1;
  }

  ERR_put_error(6, 0, 105, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_rsa_asn1.c", 131);
  return 0;
}

int EVP_PKEY_set1_RSA(EVP_PKEY *pkey, rsa_st *key)
{
  evp_pkey_set_method(pkey, &rsa_asn1_meth);
  *&pkey->references = key;
  if (!key)
  {
    return 0;
  }

  RSA_up_ref(key);
  return 1;
}

BOOL EVP_PKEY_assign_RSA(uint64_t a1, uint64_t a2)
{
  evp_pkey_set_method(a1, &rsa_asn1_meth);
  *(a1 + 8) = a2;
  return a2 != 0;
}

uint64_t EVP_PKEY_get0_RSA(uint64_t a1)
{
  if (*(a1 + 4) == 6)
  {
    return *(a1 + 8);
  }

  ERR_put_error(6, 0, 107, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_rsa_asn1.c", 229);
  return 0;
}

BOOL PKCS5_PBKDF2_HMAC(const void *a1, int a2, const unsigned __int8 *a3, size_t a4, unsigned int a5, EVP_MD *md, size_t a7, char *a8)
{
  *&ctx.key[76] = *MEMORY[0x1E69E9840];
  v16 = EVP_MD_size(md);
  ctx.o_ctx.md_data = 0xAAAAAAAAAAAAAAAALL;
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&ctx.i_ctx.md_data = v17;
  *&ctx.o_ctx.engine = v17;
  *&ctx.md_ctx.md_data = v17;
  *&ctx.i_ctx.engine = v17;
  *&ctx.md = v17;
  *&ctx.md_ctx.engine = v17;
  HMAC_CTX_init(&ctx);
  HMAC_Init_ex(&ctx, a1, a2, md, 0);
  if (!v18)
  {
LABEL_27:
    v35 = 0;
    goto LABEL_28;
  }

  if (a7)
  {
    v19 = 1;
    *&v20 = 0xAAAAAAAAAAAAAAAALL;
    *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    do
    {
      *data = bswap32(v19);
      v21 = v16 >= a7 ? a7 : v16;
      *&ctx.key[36] = v20;
      *&ctx.key[52] = v20;
      *&ctx.key[20] = v20;
      *&ctx.key[4] = v20;
      HMAC_Init_ex(&ctx, 0, 0, 0, 0);
      if (!v22)
      {
        goto LABEL_27;
      }

      HMAC_Update(&ctx, a3, a4);
      if (!v23)
      {
        goto LABEL_27;
      }

      HMAC_Update(&ctx, data, 4uLL);
      if (!v24)
      {
        goto LABEL_27;
      }

      HMAC_Final(&ctx, &ctx.key[4], 0);
      if (!v25)
      {
        goto LABEL_27;
      }

      if (v16)
      {
        memcpy(a8, &ctx.key[4], v21);
      }

      if (a5 >= 2)
      {
        if (v21 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v21;
        }

        v27 = 1;
        do
        {
          HMAC_Init_ex(&ctx, 0, 0, 0, 0);
          if (!v28)
          {
            goto LABEL_27;
          }

          HMAC_Update(&ctx, &ctx.key[4], v16);
          if (!v29)
          {
            goto LABEL_27;
          }

          HMAC_Final(&ctx, &ctx.key[4], 0);
          if (!v30)
          {
            goto LABEL_27;
          }

          if (v16)
          {
            v31 = &ctx.key[4];
            v32 = a8;
            v33 = v26;
            do
            {
              v34 = *v31++;
              *v32++ ^= v34;
              --v33;
            }

            while (v33);
          }
        }

        while (++v27 != a5);
      }

      a8 += v21;
      ++v19;
      a7 -= v21;
      *&v20 = 0xAAAAAAAAAAAAAAAALL;
      *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    }

    while (a7);
  }

  v35 = a5 != 0;
LABEL_28:
  HMAC_CTX_cleanup(&ctx);
  v36 = *MEMORY[0x1E69E9840];
  return v35;
}

BN_CTX *BN_CTX_new(void)
{
  result = OPENSSL_malloc(0x30uLL);
  if (result)
  {
    *(result + 26) = 0u;
    *result = 0u;
    *(result + 1) = 0u;
  }

  return result;
}

void BN_CTX_free(BN_CTX *c)
{
  if (c)
  {
    if (*(c + 4) && !*(c + 40))
    {
      BN_CTX_free_cold_1();
    }

    OPENSSL_sk_pop_free_ex(*c, sk_BIGNUM_call_free_func, BN_free);
    OPENSSL_free(*(c + 1));

    OPENSSL_free(c);
  }
}

void BN_CTX_start(BN_CTX *ctx)
{
  if (!*(ctx + 40))
  {
    v2 = *(ctx + 4);
    v3 = *(ctx + 2);
    if (v3 != *(ctx + 3))
    {
      v6 = *(ctx + 1);
      goto LABEL_14;
    }

    if (v3)
    {
      v4 = (3 * v3) >> 1;
    }

    else
    {
      v4 = 32;
    }

    if (v4 > v3 && v4 >> 61 == 0)
    {
      v6 = OPENSSL_realloc(*(ctx + 1), 8 * v4);
      if (v6)
      {
        *(ctx + 1) = v6;
        *(ctx + 3) = v4;
        v3 = *(ctx + 2);
LABEL_14:
        v6[v3] = v2;
        ++*(ctx + 2);
        return;
      }
    }

    *(ctx + 20) = 257;
  }
}

BIGNUM *__cdecl BN_CTX_get(BN_CTX *ctx)
{
  if (!*(ctx + 40))
  {
    v3 = *ctx;
    if (*ctx || (v3 = OPENSSL_sk_new_null(), (*ctx = v3) != 0))
    {
      v4 = *(ctx + 4);
      if (v4 != EVP_MD_CTX_md(v3) || (v5 = BN_new()) != 0 && OPENSSL_sk_push(*ctx, v5))
      {
        v2 = OPENSSL_sk_value(*ctx, *(ctx + 4));
        BN_zero(v2);
        ++*(ctx + 4);
        return v2;
      }

      ERR_put_error(3, 0, 116, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/ctx.c.inc", 172);
      BN_free(v5);
    }

    v2 = 0;
    *(ctx + 40) = 1;
    return v2;
  }

  if (!*(ctx + 41))
  {
    return 0;
  }

  ERR_put_error(3, 0, 116, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/ctx.c.inc", 155);
  v2 = 0;
  *(ctx + 41) = 0;
  return v2;
}

void BN_CTX_end(BN_CTX *ctx)
{
  if (!*(ctx + 40))
  {
    v1 = *(ctx + 2);
    if (!v1)
    {
      BN_CTX_end_cold_1();
    }

    v2 = v1 - 1;
    *(ctx + 2) = v2;
    *(ctx + 4) = *(*(ctx + 1) + 8 * v2);
  }
}

BOOL bio_errno_should_retry(int a1)
{
  if (a1 != -1)
  {
    return 0;
  }

  if (*__error() == 35 || *__error() == 57 || *__error() == 4 || *__error() == 35 || *__error() == 100 || *__error() == 36)
  {
    return 1;
  }

  return *__error() == 37;
}

BOOL bssl::tls13_add_certificate_in_buffer(bssl *this, bssl::SSL_HANDSHAKE *a2, void *a3, unsigned __int8 **a4, unint64_t *a5)
{
  v7 = a2;
  v9 = *this;
  v10 = *(this + 190);
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v53[1] = v11;
  v53[2] = v11;
  v53[0] = v11;
  CBB_zero(v53);
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v52[1] = v12;
  v52[2] = v12;
  v52[0] = v12;
  v51[1] = v12;
  v51[2] = v12;
  v51[0] = v12;
  if ((*(this + 1602) & 0x10) != 0)
  {
    if (!CBB_init(v53, 0x400uLL))
    {
      goto LABEL_17;
    }

    v13 = v53;
  }

  else
  {
    if (!(*(*v9 + 88))(v9, v53, v52, 11))
    {
      goto LABEL_17;
    }

    v13 = v52;
  }

  if (!CBB_add_u8(v13, 0) || !CBB_add_u24_length_prefixed(v13, v51))
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 584);
    goto LABEL_17;
  }

  v15 = *(this + 400);
  if ((v15 & 0x400000) != 0 && *(this + 747) == 2 && (v9[180] & 1) == 0 && (v7 & 1) == 0)
  {
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v49 = v16;
    v50 = v16;
    v47 = v16;
    v48 = v16;
    v45 = v16;
    v46 = v16;
    if (!CBB_add_u24_length_prefixed(v51, &v48) || !EVP_marshal_public_key(&v48, *(v10 + 8)) || !CBB_add_u16_length_prefixed(v51, &v45))
    {
      ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 597);
      v18 = 0;
      goto LABEL_18;
    }

LABEL_15:
    v17 = bssl::ssl_add_message_cbb(v9, v53);
LABEL_64:
    v18 = v17;
    goto LABEL_18;
  }

  if (v15 & 0x200000) == 0 || *(this + 746) != 2 || (v7)
  {
    if (!bssl::ssl_has_certificate(this, v14))
    {
      if (!a3)
      {
        v17 = bssl::ssl_add_message_cbb(v9, v53);
        goto LABEL_64;
      }

      v40 = CBB_finish(v53, a3, a4);
      goto LABEL_60;
    }

    if (!ssl_credential_st::UsesX509(*(this + 190)))
    {
      __assert_rtn("tls13_add_certificate_in_buffer", "tls13_both.cc", 637, "hs->credential->UsesX509()");
    }

    v20 = OPENSSL_sk_value(*(v10 + 48), 0);
    *&v21 = 0xAAAAAAAAAAAAAAAALL;
    *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v49 = v21;
    v50 = v21;
    v47 = v21;
    v48 = v21;
    v45 = v21;
    v46 = v21;
    if (!CBB_add_u24_length_prefixed(v51, &v48) || (v22 = CRYPTO_BUFFER_data(v20), v23 = CRYPTO_BUFFER_len(v20), !CBB_add_bytes(&v48, v22, v23)) || !CBB_add_u16_length_prefixed(v51, &v45))
    {
      ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 644);
      v18 = 0;
      goto LABEL_18;
    }

    v24 = *(this + 400);
    if ((v24 & 4) != 0 && *(v10 + 72))
    {
      *&v25 = 0xAAAAAAAAAAAAAAAALL;
      *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v43 = v25;
      v44 = v25;
      v42 = v25;
      if (!CBB_add_u16(&v45, 0x12u) || !CBB_add_u16_length_prefixed(&v45, &v42) || (v26 = CRYPTO_BUFFER_data(*(v10 + 72)), v27 = CRYPTO_BUFFER_len(*(v10 + 72)), !CBB_add_bytes(&v42, v26, v27)) || !CBB_flush(&v45))
      {
        ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 657);
        goto LABEL_17;
      }

      v24 = *(this + 400);
    }

    if ((v24 & 0x80) == 0)
    {
      goto LABEL_79;
    }

    if (!*(v10 + 80))
    {
      goto LABEL_79;
    }

    *&v28 = 0xAAAAAAAAAAAAAAAALL;
    *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v43 = v28;
    v44 = v28;
    v41[2] = v28;
    v42 = v28;
    v41[0] = v28;
    v41[1] = v28;
    if (!CBB_add_u16(&v45, 5u))
    {
      goto LABEL_70;
    }

    if (CBB_add_u16_length_prefixed(&v45, &v42) && CBB_add_u8(&v42, 1u) && CBB_add_u24_length_prefixed(&v42, v41) && (v29 = CRYPTO_BUFFER_data(*(v10 + 80)), v30 = CRYPTO_BUFFER_len(*(v10 + 80)), CBB_add_bytes(v41, v29, v30)) && CBB_flush(&v45))
    {
LABEL_79:
      if (*(v10 + 4) != 1 || (*&v31 = 0xAAAAAAAAAAAAAAAALL, *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL, v43 = v31, v44 = v31, v42 = v31, CBB_add_u16(&v45, 0x22u)) && CBB_add_u16_length_prefixed(&v45, &v42) && (v32 = CRYPTO_BUFFER_data(*(v10 + 56)), v33 = CRYPTO_BUFFER_len(*(v10 + 56)), CBB_add_bytes(&v42, v32, v33)) && CBB_flush(&v45))
      {
        for (i = 1; i < EVP_MD_CTX_md(*(v10 + 48)); ++i)
        {
          v35 = OPENSSL_sk_value(*(v10 + 48), i);
          *&v36 = 0xAAAAAAAAAAAAAAAALL;
          *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v43 = v36;
          v44 = v36;
          v42 = v36;
          if (CBB_add_u24_length_prefixed(v51, &v42))
          {
            v37 = CRYPTO_BUFFER_data(v35);
            v38 = CRYPTO_BUFFER_len(v35);
            if (CBB_add_bytes(&v42, v37, v38))
            {
              if (CBB_add_u16(v51, 0))
              {
                continue;
              }
            }
          }

          ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 696);
          goto LABEL_17;
        }

        if ((*(this + 1602) & 0x10) != 0)
        {
          v17 = bssl::tls13_add_compressed_certificate(v9, v53, this, v52, a3, a4);
          goto LABEL_64;
        }

        if (!a3)
        {
          v17 = bssl::ssl_add_message_cbb(v9, v53);
          goto LABEL_64;
        }

        v40 = CBB_finish(v53, a3, a4);
LABEL_60:
        v18 = v40 != 0;
        goto LABEL_18;
      }

      ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 684);
    }

    else
    {
LABEL_70:
      ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 672);
    }

LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  *&v39 = 0xAAAAAAAAAAAAAAAALL;
  *(&v39 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v49 = v39;
  v50 = v39;
  v47 = v39;
  v48 = v39;
  v45 = v39;
  v46 = v39;
  if (CBB_add_u24_length_prefixed(v51, &v48) && EVP_marshal_public_key(&v48, *(v10 + 8)) && CBB_add_u16_length_prefixed(v51, &v45))
  {
    if ((*(this + 1602) & 0x10) != 0)
    {
      v17 = bssl::tls13_add_compressed_certificate(v9, v53, this, v52, a3, a4);
      goto LABEL_64;
    }

    goto LABEL_15;
  }

  ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 612);
  v18 = 0;
LABEL_18:
  CBB_cleanup(v53);
  return v18;
}

uint64_t bssl::tls13_add_compressed_certificate(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, void *a6)
{
  __s2 = 0;
  v33 = 0;
  if (bssl::CBBFinishArray(a2, &__s2))
  {
    v12 = a1[15];
    v13 = *(v12 + 736);
    if (!v13)
    {
      goto LABEL_24;
    }

    v14 = *(v12 + 728);
    v15 = 24 * v13;
    while (*(v14 + 16) != *(a3 + 744))
    {
      v14 += 24;
      v15 -= 24;
      if (!v15)
      {
        goto LABEL_24;
      }
    }

    if (*v14)
    {
      *&v16 = 0xAAAAAAAAAAAAAAAALL;
      *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v31[1] = v16;
      v31[2] = v16;
      v31[0] = v16;
      if ((*(*a1 + 88))(a1, a2, a4, 25) && CBB_add_u16(a4, *(a3 + 744)) && CBB_add_u24(a4, v33) && CBB_add_u24_length_prefixed(a4, v31))
      {
        v17 = *(a3 + 1592);
        if (v17 && (*(a3 + 1602) & 8) == 0 && *(v17 + 146) == *(a3 + 744) && (v18 = *(v17 + 160), v18 == v33) && !memcmp(*(v17 + 152), __s2, v18) && (v30 = *(v17 + 176)) != 0)
        {
          if (!CBB_add_bytes(v31, *(v17 + 168), v30))
          {
            v19 = 522;
            goto LABEL_29;
          }
        }

        else
        {
          if (!(*v14)(a1, v31, __s2, v33))
          {
            v19 = 527;
            goto LABEL_29;
          }

          if (v17 && (*(a3 + 1602) & 8) != 0)
          {
            *(v17 + 146) = *(a3 + 744);
            v23 = __s2;
            v22 = v33;
            if (!bssl::Array<unsigned char>::InitUninitialized(v17 + 152, v33))
            {
              goto LABEL_25;
            }

            if (v22)
            {
              v24 = *(v17 + 152);
              do
              {
                v25 = *v23++;
                *v24++ = v25;
                --v22;
              }

              while (v22);
            }

            v26 = CBB_data(v31);
            v27 = CBB_len(v31);
            if (!bssl::Array<unsigned char>::InitUninitialized(v17 + 168, v27))
            {
              goto LABEL_25;
            }

            if (v27)
            {
              v28 = *(v17 + 168);
              do
              {
                v29 = *v26++;
                *v28++ = v29;
                --v27;
              }

              while (v27);
            }
          }
        }

        if (a5)
        {
          if (!CBB_finish(a2, a5, a6))
          {
            v19 = 547;
LABEL_29:
            ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", v19);
            goto LABEL_25;
          }
        }

        else if ((bssl::ssl_add_message_cbb(a1, a2) & 1) == 0)
        {
          v19 = 542;
          goto LABEL_29;
        }

        v20 = 1;
        goto LABEL_26;
      }

      ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 511);
    }

    else
    {
LABEL_24:
      ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 500);
    }
  }

  else
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 487);
  }

LABEL_25:
  v20 = 0;
LABEL_26:
  OPENSSL_free(__s2);
  return v20;
}

void sub_1A9060C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  bssl::Array<unsigned char>::~Array(va);
  _Unwind_Resume(a1);
}

uint64_t bssl::tls13_add_key_update(bssl *this, ssl_st *a2)
{
  v2 = a2;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9[1] = v4;
  v9[2] = v4;
  v9[0] = v4;
  CBB_zero(v9);
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = v5;
  v8[2] = v5;
  v8[0] = v5;
  if (*(*this + 88))(this, v9, v8, 24) && CBB_add_u8(v8, v2) && bssl::ssl_add_message_cbb(this, v9) && (bssl::tls13_rotate_traffic_key(this, 1))
  {
    *(*(this + 6) + 222) |= 0x100u;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  CBB_cleanup(v9);
  return v6;
}

void sub_1A9060D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  CBB_cleanup(va);
  _Unwind_Resume(a1);
}

uint64_t bssl::ssl_client_hello_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = a4;
  LODWORD(result) = bssl::ssl_parse_client_hello_with_trailing_data(a1, &v5, a2);
  if (v6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t bssl::ssl_parse_client_hello_with_trailing_data(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 104) = 0;
  *(a3 + 88) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *a3 = a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  memset(v16, 170, sizeof(v16));
  result = CBS_get_u16(a2, (a3 + 24));
  if (result)
  {
    result = CBS_get_bytes(a2, &v16[2], 0x20uLL);
    if (result)
    {
      result = CBS_get_u8_length_prefixed(a2, v16);
      if (result)
      {
        v8 = v16[1];
        if (v16[1] > 0x20)
        {
          return 0;
        }

        v9 = v16[3];
        *(a3 + 32) = v16[2];
        *(a3 + 40) = v9;
        *(a3 + 48) = v16[0];
        *(a3 + 56) = v8;
        if (!SSL_is_dtls(*a3) || (v15[2] = 0xAAAAAAAAAAAAAAAALL, v15[3] = 0xAAAAAAAAAAAAAAAALL, result = CBS_get_u8_length_prefixed(a2, &v15[2]), result))
        {
          memset(v15, 170, sizeof(v15));
          result = CBS_get_u16_length_prefixed(a2, &v15[2]);
          if (result)
          {
            result = 0;
            if (v15[3] >= 2 && (v15[3] & 1) == 0)
            {
              result = CBS_get_u8_length_prefixed(a2, v15);
              if (result)
              {
                v10 = v15[1];
                if (!v15[1])
                {
                  return 0;
                }

                v11 = v15[3];
                *(a3 + 64) = v15[2];
                *(a3 + 72) = v11;
                *(a3 + 80) = v15[0];
                *(a3 + 88) = v10;
                v12 = *(a2 + 8);
                if (v12)
                {
                  *&v14 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  if (!CBS_get_u16_length_prefixed(a2, &v14) || !bssl::tls1_check_duplicate_extensions(&v14))
                  {
                    return 0;
                  }

                  v13 = *(&v14 + 1);
                  *(a3 + 96) = v14;
                  *(a3 + 104) = v13;
                  v12 = *(a2 + 8);
                }

                else
                {
                  *(a3 + 96) = 0;
                  *(a3 + 104) = 0;
                }

                *(a3 + 8) = v5;
                *(a3 + 16) = v6 - v12;
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ssl_client_hello_get_extension(uint64_t a1, _OWORD *a2, int a3)
{
  v3 = *(a1 + 104);
  v9 = *(a1 + 96);
  v10 = v3;
  if (!v3)
  {
    return 0;
  }

  while (1)
  {
    v8 = -21846;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    result = CBS_get_u16(&v9, &v8);
    if (!result)
    {
      break;
    }

    result = CBS_get_u16_length_prefixed(&v9, &v7);
    if (!result)
    {
      break;
    }

    if (v8 == a3)
    {
      *a2 = v7;
      return 1;
    }

    if (!v10)
    {
      return 0;
    }
  }

  return result;
}

uint64_t bssl::tls1_get_shared_group(bssl *this, const ssl_st *a2, unsigned __int16 *a3)
{
  v3 = *this;
  if ((*(*this + 180) & 1) == 0)
  {
    bssl::tls1_get_shared_group();
  }

  v4 = *(this + 1);
  v5 = *(v4 + 120);
  if (v5)
  {
    v6 = *(v4 + 112);
  }

  else
  {
    v6 = &bssl::kDefaultGroups;
    v5 = 4;
  }

  v7 = *(this + 85);
  v8 = *(this + 86);
  if ((*(v3 + 146) & 0x40) != 0)
  {
    v14 = a2;
    v15 = &v6[v5];
    v9 = v6;
LABEL_9:
    while (!v8)
    {
LABEL_16:
      if (++v9 == v15)
      {
        return 0;
      }
    }

    v10 = *v9;
    v11 = 2 * v8;
    v12 = v7;
    while (v10 != *v12 || bssl::ssl_protocol_version(v3, a2) <= 0x303 && (v10 == 4588 || v10 == 25497))
    {
      ++v12;
      v11 -= 2;
      if (!v11)
      {
        goto LABEL_16;
      }
    }

    LOWORD(v14->version) = v10;
    return 1;
  }

  else
  {
    if (v8)
    {
      v14 = a2;
      v15 = &v7[v8];
      v9 = *(this + 85);
      v7 = v6;
      v8 = v5;
      goto LABEL_9;
    }

    return 0;
  }
}

uint64_t bssl::ssl_alpn_list_contains_protocol(unsigned __int8 *a1, uint64_t a2, const void *a3, size_t a4)
{
  v9 = a1;
  v10 = a2;
  __s1 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  if (!a2)
  {
    return 0;
  }

  while (1)
  {
    result = CBS_get_u8_length_prefixed(&v9, &__s1);
    if (!result)
    {
      break;
    }

    if (v8 == a4 && !memcmp(__s1, a3, a4))
    {
      return 1;
    }

    if (!v10)
    {
      return 0;
    }
  }

  return result;
}

uint64_t bssl::ssl_negotiate_alpn(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *a1;
  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  if (!v4[10] || (bssl::ssl_client_hello_get_extension(a3, &v22, 16) & 1) == 0)
  {
    if (!v4[21])
    {
      return 1;
    }

    ERR_put_error(16, 0, 307, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 1514);
    result = 0;
    v10 = 120;
LABEL_19:
    *a2 = v10;
    return result;
  }

  *(a1 + 1600) &= ~0x4000u;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_u16_length_prefixed(&v22, &v20) || *(&v22 + 1) || (bssl::ssl_is_valid_alpn_list(v20, v21) & 1) == 0)
  {
    ERR_put_error(16, 0, 190, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 1529);
    result = 0;
    v10 = 50;
    goto LABEL_19;
  }

  v19 = 0xAAAAAAAAAAAAAAAALL;
  v18 = -86;
  v6 = (v4[10])(v4, &v19, &v18, v20, v21, v4[11]);
  if ((v6 & 0xFFFFFFFD) == 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = v6;
  }

  if (v4[21])
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  result = 1;
  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_22;
      }

      return result;
    }

    v13 = v18;
    if (v18)
    {
      v14 = v4[6];
      v15 = v19;
      result = bssl::Array<unsigned char>::InitUninitialized(v14 + 496, v18);
      if (result)
      {
        v16 = *(v14 + 496);
        do
        {
          v17 = *v15++;
          *v16++ = v17;
          --v13;
        }

        while (v13);
        return 1;
      }
    }

    else
    {
      ERR_put_error(16, 0, 259, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 1556);
      result = 0;
    }

    v10 = 80;
    goto LABEL_19;
  }

  if (v8 == 2)
  {
    *a2 = 120;
    v11 = 307;
    v12 = 1571;
    goto LABEL_30;
  }

  if (v8 != 3)
  {
LABEL_22:
    *a2 = 80;
    v11 = 68;
    v12 = 1576;
LABEL_30:
    ERR_put_error(16, 0, v11, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", v12);
    return 0;
  }

  return result;
}

uint64_t bssl::ssl_ext_pre_shared_key_parse_serverhello(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = -21846;
  if (CBS_get_u16(a3, &v7) && !*(a3 + 8))
  {
    if (!v7)
    {
      return 1;
    }

    ERR_put_error(16, 0, 195, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 2002);
    v5 = 115;
  }

  else
  {
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 1995);
    v5 = 50;
  }

  result = 0;
  *a2 = v5;
  return result;
}

uint64_t bssl::ssl_ext_pre_shared_key_parse_clienthello(uint64_t a1, unint64_t *a2, _OWORD *a3, int *a4, char *a5, uint64_t a6, uint64_t a7)
{
  if (*a7 + *(a7 + 8) == *(a6 + 96) + *(a6 + 104))
  {
    memset(v20, 170, sizeof(v20));
    if (CBS_get_u16_length_prefixed(a7, &v20[1]) && CBS_get_u16_length_prefixed(&v20[1], a2) && CBS_get_u32(&v20[1], a4) && CBS_get_u16_length_prefixed(a7, v20) && *(&v20[0] + 1) && !*(a7 + 8))
    {
      *a3 = v20[0];
      if (*(&v20[1] + 1))
      {
        v17 = 1;
        do
        {
          memset(v19, 170, sizeof(v19));
          if (!CBS_get_u16_length_prefixed(&v20[1], &v19[1]) || !CBS_get_u32(&v20[1], v19))
          {
            v16 = 2045;
            goto LABEL_11;
          }

          ++v17;
        }

        while (*(&v20[1] + 1));
        if (*(&v20[0] + 1))
        {
          goto LABEL_23;
        }

        v18 = 0;
LABEL_26:
        if (v17 == v18)
        {
          return 1;
        }

        v8 = 271;
        v9 = 2068;
        goto LABEL_3;
      }

      v17 = 1;
LABEL_23:
      v18 = 0;
      while (1)
      {
        *&v19[1] = 0xAAAAAAAAAAAAAAAALL;
        *&v19[3] = 0xAAAAAAAAAAAAAAAALL;
        if (!CBS_get_u8_length_prefixed(v20, &v19[1]))
        {
          break;
        }

        ++v18;
        if (!*(&v20[0] + 1))
        {
          goto LABEL_26;
        }
      }

      v16 = 2059;
    }

    else
    {
      v16 = 2031;
    }

LABEL_11:
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", v16);
    result = 0;
    v11 = 50;
    goto LABEL_12;
  }

  v8 = 267;
  v9 = 2018;
LABEL_3:
  ERR_put_error(16, 0, v8, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", v9);
  result = 0;
  v11 = 47;
LABEL_12:
  *a5 = v11;
  return result;
}

uint64_t bssl::ssl_ext_pre_shared_key_add_serverhello(uint64_t a1, uint64_t *a2)
{
  if ((*(*(*a1 + 48) + 222) & 0x20) == 0)
  {
    return 1;
  }

  v8 = v2;
  v9 = v3;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = v6;
  v7[2] = v6;
  v7[0] = v6;
  result = CBB_add_u16(a2, 0x29u);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a2, v7);
    if (result)
    {
      result = CBB_add_u16(v7, 0);
      if (result)
      {
        return CBB_flush(a2) != 0;
      }
    }
  }

  return result;
}

uint64_t bssl::ssl_ext_key_share_parse_clienthello(uint64_t a1, BOOL *a2, unint64_t *a3, _BYTE *a4, uint64_t a5)
{
  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  if (bssl::ssl_client_hello_get_extension(a5, &v19, 51))
  {
    v17 = 0xAAAAAAAAAAAAAAAALL;
    v18 = 0xAAAAAAAAAAAAAAAALL;
    if (!CBS_get_u16_length_prefixed(&v19, &v17) || *(&v19 + 1))
    {
      v13 = 2404;
LABEL_17:
      ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", v13);
      return 0;
    }

    else
    {
      if (v18)
      {
        v9 = 0;
        v10 = 0;
        v11 = *(*(a1 + 1536) + 6);
        while (1)
        {
          v16 = -21846;
          v14 = 0xAAAAAAAAAAAAAAAALL;
          v15 = 0xAAAAAAAAAAAAAAAALL;
          if (!CBS_get_u16(&v17, &v16) || !CBS_get_u16_length_prefixed(&v17, &v14) || !v15)
          {
            v13 = 2418;
            goto LABEL_17;
          }

          if (v16 == v11)
          {
            if (v10)
            {
              ERR_put_error(16, 0, 264, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 2424);
              *a4 = 47;
              return 0;
            }

            v9 = v14;
            v10 = v15;
          }

          if (!v18)
          {
            goto LABEL_20;
          }
        }
      }

      v10 = 0;
      v9 = 0;
LABEL_20:
      if (a3)
      {
        *a3 = v9;
        a3[1] = v10;
      }

      *a2 = v10 != 0;
      return 1;
    }
  }

  else
  {
    ERR_put_error(16, 0, 258, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 2396);
    result = 0;
    *a4 = 109;
  }

  return result;
}

uint64_t bssl::ssl_ext_key_share_add_serverhello(void *a1, uint64_t *a2)
{
  if (a1[209])
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v12 = v4;
    v13 = v4;
    v11 = v4;
    result = CBB_add_u16(a2, 0x8A3Bu);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(a2, &v11);
      if (result)
      {
        v6 = a1[208];
        v7 = a1[209];
        v8 = &v11;
        goto LABEL_5;
      }
    }
  }

  else
  {
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v12 = v9;
    v13 = v9;
    v10[2] = v9;
    v11 = v9;
    v10[0] = v9;
    v10[1] = v9;
    result = CBB_add_u16(a2, 0x33u);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(a2, &v11);
      if (result)
      {
        result = CBB_add_u16(&v11, *(a1[192] + 6));
        if (result)
        {
          result = CBB_add_u16_length_prefixed(&v11, v10);
          if (result)
          {
            v6 = a1[81];
            v7 = a1[82];
            v8 = v10;
LABEL_5:
            result = CBB_add_bytes(v8, v6, v7);
            if (result)
            {
              return CBB_flush(a2) != 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ssl_ext_pake_parse_serverhello(uint64_t a1, _WORD *a2, uint64_t a3, char *a4, unsigned __int16 **a5)
{
  v24 = *MEMORY[0x1E69E9840];
  memset(v21, 170, sizeof(v21));
  if (!CBS_get_u16(a5, v21) || !CBS_get_u16_length_prefixed(a5, &v21[1]))
  {
    inited = 0;
    v14 = 50;
LABEL_9:
    *a4 = v14;
    goto LABEL_16;
  }

  if (v21[0] != 32150)
  {
    inited = 0;
    goto LABEL_16;
  }

  if (*&v21[5] != 97)
  {
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 3125);
LABEL_13:
    inited = 0;
    v14 = 47;
    goto LABEL_9;
  }

  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23[0] = v10;
  v23[1] = v10;
  __n = 32;
  v20 = 32;
  __src[0] = v10;
  __src[1] = v10;
  if (!SPAKE2PLUS_compute_prover_confirmation(*(a1 + 1680), *&v21[1], 65, (*&v21[1] + 65), 32, v23, &v20, 0x20uLL, __src, &__n, 0x20uLL))
  {
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 3139);
    goto LABEL_13;
  }

  __dst = 0;
  v18 = 0;
  inited = bssl::Array<unsigned char>::InitUninitialized(&__dst, __n);
  if (inited)
  {
    memcpy(__dst, __src, __n);
    OPENSSL_free(*a3);
    v12 = 0;
    v13 = v18;
    *a3 = __dst;
    *(a3 + 8) = v13;
    __dst = 0;
    v18 = 0;
    *a2 = 32150;
  }

  else
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 3146);
    *a4 = 80;
    v12 = __dst;
  }

  OPENSSL_free(v12);
LABEL_16:
  v15 = *MEMORY[0x1E69E9840];
  return inited;
}

void sub_1A9061B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t bssl::ssl_get_local_application_settings(uint64_t a1, void *a2, void *__s1, size_t __n)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 160);
  if (!v5)
  {
    return 0;
  }

  v9 = (*(v4 + 152) + 16);
  v10 = 32 * v5;
  while (__n != *(v9 - 1) || memcmp(__s1, *(v9 - 2), __n))
  {
    v9 += 4;
    v10 -= 32;
    if (!v10)
    {
      return 0;
    }
  }

  v12 = v9[1];
  *a2 = *v9;
  a2[1] = v12;
  return 1;
}

uint64_t bssl::ssl_negotiate_alps(bssl **a1, ssl_st *a2, uint64_t a3)
{
  v3 = *a1;
  if (!*(*(*a1 + 6) + 504))
  {
    return 1;
  }

  *&v24 = 0xAAAAAAAAAAAAAAAALL;
  *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0;
  v23 = 0;
  v7 = (*(a1[1] + 309) & 0x2000) != 0 ? 17613 : 17513;
  if (bssl::ssl_protocol_version(v3, a2) < 0x304 || !bssl::ssl_get_local_application_settings(a1, &v22, *(*(v3 + 6) + 496), *(*(v3 + 6) + 504)) || !bssl::ssl_client_hello_get_extension(a3, &v24, v7))
  {
    return 1;
  }

  v20 = 0xAAAAAAAAAAAAAAAALL;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  if (CBS_get_u16_length_prefixed(&v24, &v20) && !*(&v24 + 1) && v21)
  {
    v8 = 0;
    do
    {
      __s1 = 0xAAAAAAAAAAAAAAAALL;
      __n = 0xAAAAAAAAAAAAAAAALL;
      if (!CBS_get_u8_length_prefixed(&v20, &__s1) || !__n)
      {
        v16 = 3426;
        goto LABEL_25;
      }

      v9 = *(v3 + 6);
      if (__n == *(v9 + 504))
      {
        v8 |= memcmp(__s1, *(v9 + 496), __n) == 0;
      }
    }

    while (v21);
    if ((v8 & 1) == 0)
    {
      return 1;
    }

    *(a1[192] + 440) |= 0x40u;
    v10 = a1[192];
    v12 = v22;
    v11 = v23;
    if (bssl::Array<unsigned char>::InitUninitialized(v10 + 408, v23))
    {
      if (v11)
      {
        v13 = *(v10 + 51);
        do
        {
          v14 = *v12++;
          *v13++ = v14;
          --v11;
        }

        while (v11);
      }

      return 1;
    }

    v17 = 80;
  }

  else
  {
    v16 = 3417;
LABEL_25:
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", v16);
    v17 = 50;
  }

  LOBYTE(a2->version) = v17;
  return 0;
}

BOOL bssl::ssl_add_serverhello_tlsext(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[1] = v5;
  v17[2] = v5;
  v17[0] = v5;
  if (CBB_add_u16_length_prefixed(a2, v17))
  {
    v7 = 0;
    v8 = &off_1F1CAFD70;
    do
    {
      if (((*(a1 + 376) >> v7) & 1) != 0 && !(*v8)(a1, v17))
      {
        ERR_put_error(16, 0, 147, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 4350);
        ERR_add_error_dataf("extension %u", v10, v11, v12, v13, v14, v15, v16, *(v8 - 16));
        goto LABEL_11;
      }

      ++v7;
      v8 += 5;
    }

    while (v7 != 30);
    if (bssl::ssl_protocol_version(v4, v6) <= 0x303 && !CBB_len(v17))
    {
      CBB_discard_child(a2);
    }

    return CBB_flush(a2) != 0;
  }

  else
  {
LABEL_11:
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 4365);
    return 0;
  }
}

uint64_t bssl::ssl_parse_clienthello_tlsext(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *(a1 + 376) = 0;
  v5 = *(a2 + 104);
  *v37 = *(a2 + 96);
  v38 = v5;
  if (v5)
  {
    while (2)
    {
      v36 = -21846;
      v34 = 0xAAAAAAAAAAAAAAAALL;
      v35 = 0xAAAAAAAAAAAAAAAALL;
      if (!CBS_get_u16(v37, &v36) || !CBS_get_u16_length_prefixed(v37, &v34))
      {
        v16 = 50;
LABEL_29:
        bssl::ssl_send_alert(v4, 2, v16);
        return 0;
      }

      v6 = 0;
      v7 = bssl::kExtensions;
      while (*v7 != v36)
      {
        ++v6;
        v7 += 20;
        if (v6 == 30)
        {
          goto LABEL_9;
        }
      }

      *(a1 + 376) |= 1 << v6;
      v33 = 50;
      if (((*(v7 + 3))(a1, &v33, &v34) & 1) == 0)
      {
        v16 = v33;
        ERR_put_error(16, 0, 149, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 4397);
        ERR_add_error_dataf("extension %u", v25, v26, v27, v28, v29, v30, v31, v36);
        goto LABEL_29;
      }

LABEL_9:
      if (v38)
      {
        continue;
      }

      break;
    }
  }

  v32 = v4;
  v8 = 0;
  v9 = bssl::kExtensions;
  do
  {
    if (((1 << v8) & *(a1 + 376)) == 0)
    {
      v34 = 0xAAAAAAAAAAAAAAAALL;
      v35 = 0xAAAAAAAAAAAAAAAALL;
      v10 = *v9;
      if (v10 == 65281 && bssl::ssl_client_cipher_list_contains_cipher(a2, 255))
      {
        v34 = &bssl::ssl_scan_clienthello_tlsext(bssl::SSL_HANDSHAKE *,ssl_early_callback_ctx const*,int *)::kFakeRenegotiateExtension;
        v35 = 1;
        *(a1 + 376) |= 1 << v8;
        v11 = &v34;
      }

      else
      {
        v11 = 0;
      }

      LOBYTE(v36) = 50;
      if (((*(v9 + 3))(a1, &v36, v11) & 1) == 0)
      {
        ERR_put_error(16, 0, 164, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 4425);
        ERR_add_error_dataf("extension %u", v17, v18, v19, v20, v21, v22, v23, v10);
        v16 = v36;
        v4 = v32;
        goto LABEL_29;
      }
    }

    ++v8;
    v9 += 20;
  }

  while (v8 != 30);
  v12 = *a1;
  v37[0] = 112;
  v13 = *(v12 + 15);
  v14 = *(v13 + 528);
  if (!v14)
  {
    v13 = *(v12 + 16);
    v14 = *(v13 + 528);
    if (!v14)
    {
      goto LABEL_22;
    }
  }

  v15 = v14(v12, v37, *(v13 + 536));
  if (v15 != 2)
  {
    if (v15 != 3)
    {
      *(a1 + 1600) = *(a1 + 1600) & 0xFFFFFEFF | ((*(*(v12 + 6) + 512) != 0) << 8);
      return 1;
    }

LABEL_22:
    *(a1 + 1600) &= ~0x100u;
    return 1;
  }

  bssl::ssl_send_alert(v12, 2, v37[0]);
  ERR_put_error(16, 0, 132, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 4445);
  return 0;
}

uint64_t bssl::ssl_process_ticket(uint64_t *a1, SSL_SESSION **a2, _BYTE *a3, const unsigned __int8 *a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v47 = *MEMORY[0x1E69E9840];
  v13 = *a1;
  *a3 = 0;
  std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](a2, 0);
  v15 = 2;
  if ((SSL_get_options(*a1) & 0x4000) == 0 && a7 <= 0x20)
  {
    v16 = bssl::ssl_protocol_version(v13, v14);
    v17 = v16;
    v42 = 0;
    v43 = 0;
    v18 = a1[199];
    if (v16 < 0x304 || v18 == 0)
    {
      if (v16 <= 0x303 && v18 && (*(a1 + 1602) & 8) == 0)
      {
        v15 = *(v18 + 232);
        if (v15)
        {
          v20 = *(v18 + 224);
          if (bssl::Array<unsigned char>::InitUninitialized(&v42, *(v18 + 232)))
          {
            v21 = v42;
            do
            {
              v22 = *v20++;
              *v21++ = v22;
              --v15;
            }

            while (v15);
            *a3 = *(v18 + 240);
            goto LABEL_42;
          }

          goto LABEL_22;
        }

        if (*(v18 + 241))
        {
LABEL_24:
          v15 = 2;
          goto LABEL_42;
        }
      }
    }

    else if ((*(a1 + 1602) & 8) == 0)
    {
      v15 = *(v18 + 136);
      if (v15)
      {
        v23 = *(v18 + 128);
        if (bssl::Array<unsigned char>::InitUninitialized(&v42, *(v18 + 136)))
        {
          v24 = v42;
          do
          {
            v25 = *v23++;
            *v24++ = v25;
            --v15;
          }

          while (v15);
          goto LABEL_41;
        }

LABEL_22:
        v15 = 3;
        goto LABEL_42;
      }

      if (*(v18 + 144))
      {
        goto LABEL_24;
      }
    }

    v26 = v13[16];
    if (*(v26 + 808))
    {
      *&ctx.key[4] = 0;
      *&ctx.key[12] = 0;
      inited = bssl::Array<unsigned char>::InitUninitialized(&ctx.key[4], a5);
      v28 = *&ctx.key[4];
      if (inited)
      {
        ctx.md = 0xAAAAAAAAAAAAAAAALL;
        v15 = (*(*(*(*a1 + 128) + 808) + 16))();
        if (v15)
        {
          v28 = *&ctx.key[4];
        }

        else
        {
          if (*&ctx.key[12] < ctx.md)
          {
            abort();
          }

          *&ctx.key[12] = ctx.md;
          OPENSSL_free(v42);
          v28 = 0;
          v42 = *&ctx.key[4];
          v43 = *&ctx.key[12];
          *&ctx.key[4] = 0;
          *&ctx.key[12] = 0;
        }
      }

      else
      {
        v15 = 3;
      }

      OPENSSL_free(v28);
    }

    else if (a5 >= 0x20)
    {
      if (*(v26 + 560))
      {
        v46 = 0xAAAAAAAAAAAAAAAALL;
        *&v29 = 0xAAAAAAAAAAAAAAAALL;
        *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&ctx.key[116] = v29;
        v45 = v29;
        *&ctx.key[84] = v29;
        *&ctx.key[100] = v29;
        *&ctx.key[52] = v29;
        *&ctx.key[68] = v29;
        *&ctx.key[20] = v29;
        *&ctx.key[36] = v29;
        *&ctx.key[4] = v29;
        EVP_CIPHER_CTX_init(&ctx.key[4]);
        ctx.o_ctx.md_data = 0xAAAAAAAAAAAAAAAALL;
        *&v30 = 0xAAAAAAAAAAAAAAAALL;
        *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&ctx.i_ctx.md_data = v30;
        *&ctx.o_ctx.engine = v30;
        *&ctx.md_ctx.md_data = v30;
        *&ctx.i_ctx.engine = v30;
        *&ctx.md = v30;
        *&ctx.md_ctx.engine = v30;
        HMAC_CTX_init(&ctx);
        v31 = (*(*(*a1 + 128) + 560))();
        if (v31 < 0)
        {
          v15 = 3;
        }

        else if (v31)
        {
          if (v31 == 2)
          {
            *a3 = 1;
          }

          else if (v31 != 1)
          {
            __assert_rtn("ssl_decrypt_ticket_with_cb", "extensions.cc", 4669, "cb_ret == 1");
          }

          v15 = bssl::decrypt_ticket_with_cipher_ctx(&v42, &ctx.key[4], &ctx, a4, a5);
        }

        else
        {
          v15 = 2;
        }

        HMAC_CTX_cleanup(&ctx);
        EVP_CIPHER_CTX_cleanup(&ctx.key[4]);
      }

      else
      {
        v15 = bssl::ssl_decrypt_ticket_with_ticket_keys(a1, &v42, a4, a5);
      }
    }

    else
    {
      v15 = 2;
    }

LABEL_41:
    if (!v18)
    {
      goto LABEL_43;
    }

LABEL_42:
    if ((*(a1 + 1602) & 8) == 0)
    {
LABEL_43:
      if (v15)
      {
LABEL_65:
        OPENSSL_free(v42);
        goto LABEL_66;
      }

      goto LABEL_44;
    }

    if (v15)
    {
      if (v15 != 2)
      {
        goto LABEL_65;
      }

      if (v17 < 0x304)
      {
        *(v18 + 241) = 1;
      }

      else
      {
        *(v18 + 144) = 1;
      }

      goto LABEL_58;
    }

    v35 = v42;
    v34 = v43;
    if (v17 < 0x304)
    {
      if (bssl::Array<unsigned char>::InitUninitialized(v18 + 224, v43))
      {
        if (v34)
        {
          v38 = *(v18 + 224);
          do
          {
            v39 = *v35++;
            *v38++ = v39;
            --v34;
          }

          while (v34);
        }

        *(v18 + 240) = *a3;
        goto LABEL_44;
      }
    }

    else if (bssl::Array<unsigned char>::InitUninitialized(v18 + 128, v43))
    {
      if (v34)
      {
        v36 = *(v18 + 128);
        do
        {
          v37 = *v35++;
          *v36++ = v37;
          --v34;
        }

        while (v34);
      }

LABEL_44:
      v32 = SSL_SESSION_from_bytes(v42, v43, v13[15]);
      v33 = v32;
      *&ctx.key[4] = v32;
      if (v32)
      {
        v32->session_id[19] = 32;
        SHA256(a4, a5, &v32->master_key[39]);
        std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](a2, v33);
        v15 = 0;
        goto LABEL_65;
      }

      ERR_clear_error();
LABEL_58:
      v15 = 2;
      goto LABEL_65;
    }

    v15 = 3;
    goto LABEL_65;
  }

LABEL_66:
  v40 = *MEMORY[0x1E69E9840];
  return v15;
}

void sub_1A9062600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, HMAC_CTX *ctx)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t bssl::ssl_decrypt_ticket_with_ticket_keys(uint64_t a1, ssl_ctx_st *a2, uint64_t a3, unint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a4 <= 0x1F)
  {
    bssl::ssl_decrypt_ticket_with_ticket_keys();
  }

  v7 = *(*a1 + 128);
  if (bssl::ssl_ctx_rotate_ticket_encryption_key(v7, a2))
  {
    v8 = EVP_aes_128_cbc();
    EVP_CIPHER_iv_length(v8);
    v23 = 0xAAAAAAAAAAAAAAAALL;
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&ctx.key[116] = v9;
    v22 = v9;
    *&ctx.key[84] = v9;
    *&ctx.key[100] = v9;
    *&ctx.key[52] = v9;
    *&ctx.key[68] = v9;
    *&ctx.key[20] = v9;
    *&ctx.key[36] = v9;
    *&ctx.key[4] = v9;
    EVP_CIPHER_CTX_init(&ctx.key[4]);
    ctx.o_ctx.md_data = 0xAAAAAAAAAAAAAAAALL;
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&ctx.i_ctx.md_data = v10;
    *&ctx.o_ctx.engine = v10;
    *&ctx.md_ctx.md_data = v10;
    *&ctx.i_ctx.engine = v10;
    *&ctx.md = v10;
    *&ctx.md_ctx.engine = v10;
    HMAC_CTX_init(&ctx);
    v20 = 0xAAAAAAAAAAAAAAAALL;
    bssl::internal::MutexLockBase<&(CRYPTO_MUTEX_lock_read),&(CRYPTO_MUTEX_unlock_read)>::MutexLockBase(&v20, (v7 + 24));
    v11 = *(v7 + 544);
    if (v11 && (*a3 == *v11 ? (v12 = *(a3 + 8) == *(v11 + 8)) : (v12 = 0), v12) || (v11 = *(v7 + 552)) != 0 && (*a3 == *v11 ? (v13 = *(a3 + 8) == *(v11 + 8)) : (v13 = 0), v13))
    {
      v16 = EVP_sha256();
      HMAC_Init_ex(&ctx, (v11 + 16), 16, v16, 0);
      if (v17)
      {
        v14 = EVP_DecryptInit_ex(&ctx.key[4], v8, 0, (v11 + 32), (a3 + 16)) != 0;
      }

      else
      {
        v14 = 0;
      }

      v15 = 3;
    }

    else
    {
      v14 = 0;
      v15 = 2;
    }

    CRYPTO_MUTEX_unlock_read(v20);
    if (v14)
    {
      v15 = bssl::decrypt_ticket_with_cipher_ctx(a2, &ctx.key[4], &ctx, a3, a4);
    }

    HMAC_CTX_cleanup(&ctx);
    EVP_CIPHER_CTX_cleanup(&ctx.key[4]);
  }

  else
  {
    v15 = 3;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

void sub_1A9062874(_Unwind_Exception *a1, uint64_t a2, HMAC_CTX *ctx, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t ctxa, uint64_t ctx_8, uint64_t ctx_16, uint64_t ctx_24, uint64_t ctx_32, uint64_t ctx_40, uint64_t ctx_48, uint64_t ctx_56, uint64_t ctx_64, uint64_t ctx_72, uint64_t ctx_80, uint64_t ctx_88, uint64_t ctx_96, uint64_t ctx_104, uint64_t ctx_112)
{
  HMAC_CTX_cleanup(&ctxa);
  EVP_CIPHER_CTX_cleanup(&ctx_112);
  _Unwind_Resume(a1);
}

uint64_t bssl::tls1_parse_peer_sigalgs(bssl **a1, ssl_st *a2)
{
  if (bssl::ssl_protocol_version(*a1, a2) < 0x303)
  {
    return 1;
  }

  if (!a2->method)
  {
    return 0;
  }

  return bssl::parse_u16_array(&a2->version, (a1 + 83));
}

uint64_t bssl::parse_u16_array(__int128 *a1, uint64_t a2)
{
  v11 = *a1;
  v2 = *(&v11 + 1);
  if ((BYTE8(v11) & 1) == 0)
  {
    v9 = 0;
    v10 = 0;
    if (bssl::Array<unsigned short>::InitUninitialized(&v9, *(&v11 + 1) >> 1))
    {
      if (!v10)
      {
LABEL_8:
        if (v2)
        {
          __assert_rtn("parse_u16_array", "extensions.cc", 2605, "CBS_len(&copy) == 0");
        }

        OPENSSL_free(*a2);
        v6 = v10;
        *a2 = v9;
        *(a2 + 8) = v6;
        v9 = 0;
        v10 = 0;
        v7 = 1;
        goto LABEL_13;
      }

      v4 = 0;
      v5 = 0;
      while (CBS_get_u16(&v11, v9 + v4))
      {
        ++v5;
        v4 += 2;
        if (v5 >= v10)
        {
          v2 = *(&v11 + 1);
          goto LABEL_8;
        }
      }

      ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 2600);
    }

    v7 = 0;
LABEL_13:
    OPENSSL_free(v9);
    return v7;
  }

  ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 2590);
  return 0;
}

uint64_t bssl::tls1_get_legacy_signature_algorithm(bssl *this, unsigned __int16 *a2, const evp_pkey_st *a3)
{
  v4 = EVP_PKEY_id(a2);
  if (v4 == 6)
  {
    v5 = -255;
    goto LABEL_5;
  }

  if (v4 == 408)
  {
    v5 = 515;
LABEL_5:
    *this = v5;
    return 1;
  }

  return 0;
}

uint64_t bssl::tls1_choose_signature_algorithm(bssl *this, bssl::SSL_HANDSHAKE *a2, const ssl_credential_st *a3, unsigned __int16 *a4)
{
  v7 = *this;
  if (ssl_credential_st::UsesPrivateKey(a2))
  {
    v9 = bssl::ssl_protocol_version(v7, v8);
    if (v9 > 0x302)
    {
      if (*(a2 + 1) == 1)
      {
        v14 = *(this + 87);
        v15 = *(this + 88);
      }

      else
      {
        v16 = *(this + 84) == 0;
        v17 = v9 == 771;
        if (v17 && v16)
        {
          v15 = 2;
        }

        else
        {
          v15 = *(this + 84);
        }

        if (v17 && v16)
        {
          v14 = &bssl::tls1_choose_signature_algorithm(bssl::SSL_HANDSHAKE *,ssl_credential_st const*,unsigned short *)::kTLS12Default;
        }

        else
        {
          v14 = *(this + 83);
        }
      }

      v18 = *(a2 + 5);
      if (v18)
      {
        v19 = *(a2 + 4);
      }

      else
      {
        v19 = &bssl::kSignSignatureAlgorithms;
        v18 = 12;
      }

      v20 = &v19[v18];
      while (1)
      {
        v21 = *v19;
        if (bssl::ssl_pkey_supports_algorithm(v7, *(a2 + 1), *v19, 0))
        {
          if (v15)
          {
            v22 = 2 * v15;
            v23 = v14;
            while (*v23 != v21)
            {
              v23 += 2;
              v22 -= 2;
              if (!v22)
              {
                v23 = &v14[2 * v15];
                break;
              }
            }
          }

          else
          {
            v23 = v14;
          }

          if (v23 - v14 != 2 * v15)
          {
            break;
          }
        }

        if (++v19 == v20)
        {
          v12 = 253;
          v13 = 4910;
          goto LABEL_34;
        }
      }

      *a3 = v21;
      return 1;
    }

    v10 = EVP_PKEY_id(*(a2 + 1));
    if (v10 == 6)
    {
      v11 = -255;
      goto LABEL_31;
    }

    if (v10 == 408)
    {
      v11 = 515;
LABEL_31:
      *a3 = v11;
      return 1;
    }

    v12 = 253;
    v13 = 4873;
  }

  else
  {
    v12 = 228;
    v13 = 4864;
  }

LABEL_34:
  ERR_put_error(16, 0, v12, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", v13);
  return 0;
}

uint64_t bssl::tls1_verify_channel_id(bssl **a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v30 = -21846;
  v29 = *(a2 + 8);
  s = 0xAAAAAAAAAAAAAAAALL;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_u16(&v29, &v30) || !CBS_get_u16_length_prefixed(&v29, &s) || *(&v29 + 1) || v30 != 30032 || v28 != 128)
  {
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 4925);
    bssl::ssl_send_alert(v3, 2, 50);
    v18 = 0;
    goto LABEL_22;
  }

  v4 = EC_group_p256();
  v5 = ECDSA_SIG_new();
  v26 = v5;
  v6 = BN_new();
  v25 = v6;
  v7 = BN_new();
  v8 = v7;
  v24 = v7;
  if (!v5 || !v6 || !v7)
  {
    v11 = 0;
    v18 = 0;
    v24 = 0;
    if (!v7)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v9 = s;
  if (BN_bin2bn(s, 32, v6) && BN_bin2bn(v9 + 32, 32, v8) && BN_bin2bn(v9 + 64, 32, v5->r) && BN_bin2bn(v9 + 96, 32, v5->s))
  {
    eckey = EC_KEY_new();
    v10 = EC_POINT_new(v4);
    v11 = 0;
    v22 = v10;
    if (!eckey || !v10)
    {
      goto LABEL_34;
    }

    if (EC_POINT_set_affine_coordinates_GFp(v4, v10, v6, v8, 0))
    {
      if (EC_KEY_set_group(eckey, v4))
      {
        if (EC_KEY_set_public_key(eckey, v22))
        {
          *&v13 = 0xAAAAAAAAAAAAAAAALL;
          *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v33 = v13;
          v34 = v13;
          *dgst = v13;
          v32 = v13;
          *dgst_len = 0xAAAAAAAAAAAAAAAALL;
          if (bssl::tls1_channel_id_hash(a1, dgst, dgst_len, v12))
          {
            if (ECDSA_do_verify(dgst, dgst_len[0], v5, eckey))
            {
              v14 = (*(v3 + 6) + 520);
              v15 = *v9;
              v16 = *(v9 + 1);
              v17 = *(v9 + 3);
              v14[2] = *(v9 + 2);
              v14[3] = v17;
              *v14 = v15;
              v14[1] = v16;
              *(*(v3 + 6) + 222) |= 0x80u;
              v11 = 1;
LABEL_34:
              std::unique_ptr<ec_point_st,bssl::internal::Deleter>::reset[abi:ne200100](&v22, 0);
              std::unique_ptr<ec_key_st,bssl::internal::Deleter>::reset[abi:ne200100](&eckey, 0);
              goto LABEL_26;
            }

            ERR_put_error(16, 0, 129, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 4967);
            bssl::ssl_send_alert(v3, 2, 51);
          }
        }
      }
    }

    v11 = 0;
    goto LABEL_34;
  }

  v11 = 0;
LABEL_26:
  v24 = 0;
LABEL_27:
  BN_free(v8);
  v18 = v11;
LABEL_28:
  v25 = 0;
  if (v6)
  {
    BN_free(v6);
  }

  v26 = 0;
  if (v5)
  {
    ECDSA_SIG_free(v5);
  }

LABEL_22:
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

void sub_1A9062FA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va4, a2);
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, EC_POINT *);
  va_copy(va2, va1);
  v5 = va_arg(va2, EC_KEY *);
  va_copy(va3, va2);
  v7 = va_arg(va3, BIGNUM *);
  va_copy(va4, va3);
  v9 = va_arg(va4, BIGNUM *);
  std::unique_ptr<ec_point_st,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  std::unique_ptr<ec_key_st,bssl::internal::Deleter>::reset[abi:ne200100](va1, 0);
  std::unique_ptr<bignum_st,bssl::internal::Deleter>::reset[abi:ne200100](va2, 0);
  std::unique_ptr<bignum_st,bssl::internal::Deleter>::reset[abi:ne200100](va3, 0);
  std::unique_ptr<ecdsa_sig_st,bssl::internal::Deleter>::reset[abi:ne200100](va4, 0);
  _Unwind_Resume(a1);
}

uint64_t bssl::tls1_channel_id_hash(bssl **this, bssl::SSL_HANDSHAKE *a2, unsigned __int8 *a3, unint64_t *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = *this;
  if (bssl::ssl_protocol_version(*this, a2) < 0x304)
  {
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&c.data[10] = v9;
    *&c.data[14] = v9;
    *&c.data[6] = v9;
    *&c.Nl = v9;
    *&c.data[2] = v9;
    *c.h = v9;
    *&c.h[4] = v9;
    SHA256_Init(&c);
    SHA256_Update(&c, "TLS Channel ID signature", 0x19uLL);
    if (*(v7 + 13))
    {
      SHA256_Update(&c, "Resumption", 0xBuLL);
      v10 = *(v7 + 13);
      if (!*(v10 + 368))
      {
        ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 5044);
        Hash = 0;
        goto LABEL_11;
      }

      SHA256_Update(&c, (v10 + 304), *(v10 + 368));
    }

    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    data[2] = v11;
    data[3] = v11;
    data[0] = v11;
    data[1] = v11;
    len = 0xAAAAAAAAAAAAAAAALL;
    Hash = bssl::SSLTranscript::GetHash((this + 53), data, &len);
    if (Hash)
    {
      SHA256_Update(&c, data, len);
      SHA256_Final(a2, &c);
      *a3 = 32;
    }
  }

  else
  {
    *c.h = 0;
    *&c.h[2] = 0;
    Hash = bssl::tls13_get_cert_verify_signature_input(this, &c, 2u, 0, 0);
    if (Hash)
    {
      SHA256(*c.h, *&c.h[2], a2);
      *a3 = 32;
    }

    OPENSSL_free(*c.h);
  }

LABEL_11:
  v12 = *MEMORY[0x1E69E9840];
  return Hash;
}

void sub_1A90631E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL bssl::tls1_write_channel_id(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25 = v6;
  v26 = v6;
  *dgst = v6;
  v24 = v6;
  *dgst_len = 0xAAAAAAAAAAAAAAAALL;
  if (!bssl::tls1_channel_id_hash(a1, dgst, dgst_len, a4))
  {
    goto LABEL_15;
  }

  v7 = EVP_PKEY_get0_EC_KEY(*(*(a1 + 8) + 128));
  if (!v7)
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 4986);
LABEL_15:
    v15 = 0;
    goto LABEL_25;
  }

  v8 = BN_new();
  v21 = v8;
  v9 = BN_new();
  v10 = v9;
  v20 = v9;
  if (v8)
  {
    if (!v9)
    {
      v15 = 0;
      v21 = 0;
LABEL_24:
      BN_free(v8);
      goto LABEL_25;
    }

    v11 = EC_KEY_get0_group(v7);
    v12 = EC_KEY_get0_public_key(v7);
    if (EC_POINT_get_affine_coordinates_GFp(v11, v12, v8, v10, 0) && (v13 = ECDSA_do_sign(dgst, dgst_len[0], v7), (v19 = v13) != 0))
    {
      *&v14 = 0xAAAAAAAAAAAAAAAALL;
      *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v18[1] = v14;
      v18[2] = v14;
      v18[0] = v14;
      v15 = CBB_add_u16(a2, 0x7550u) && CBB_add_u16_length_prefixed(a2, v18) && BN_bn2cbb_padded(v18, 0x20uLL, v8) && BN_bn2cbb_padded(v18, 0x20uLL, v10) && BN_bn2cbb_padded(v18, 0x20uLL, *v13) && BN_bn2cbb_padded(v18, 0x20uLL, v13[1]) && CBB_flush(a2) != 0;
      v19 = 0;
      ECDSA_SIG_free(v13);
    }

    else
    {
      v15 = 0;
    }

    v20 = 0;
  }

  else
  {
    v20 = 0;
    v15 = 0;
    if (!v9)
    {
      goto LABEL_25;
    }
  }

  BN_free(v10);
  v21 = 0;
  if (v8)
  {
    goto LABEL_24;
  }

LABEL_25:
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

void sub_1A9063420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, int a20, __int16 a21, char a22, char a23)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t bssl::ssl_is_sct_list_valid(__int128 *a1)
{
  v10 = *a1;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  u16_length_prefixed = CBS_get_u16_length_prefixed(&v10, &v8);
  result = 0;
  if (u16_length_prefixed)
  {
    if (!*(&v10 + 1) && v9 != 0)
    {
      do
      {
        v6 = 0xAAAAAAAAAAAAAAAALL;
        v7 = 0xAAAAAAAAAAAAAAAALL;
        if (CBS_get_u16_length_prefixed(&v8, &v6))
        {
          v4 = v7 == 0;
        }

        else
        {
          v4 = 1;
        }

        result = !v4;
      }

      while (result == 1 && v9 != 0);
    }
  }

  return result;
}

uint64_t bssl::ext_sni_add_serverhello(_BYTE *a1, uint64_t a2)
{
  if ((*(*(*a1 + 48) + 222) & 0x20) != 0 || (a1[1601] & 1) == 0)
  {
    return 1;
  }

  result = CBB_add_u16(a2, 0);
  if (result)
  {
    return CBB_add_u16(a2, 0) != 0;
  }

  return result;
}

uint64_t bssl::ext_ech_parse_clienthello(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return 1;
  }

  v6 = -86;
  result = CBS_get_u8(a3, &v6);
  if (!result)
  {
    return result;
  }

  if (v6)
  {
    if (v6 != 1 || a3[1])
    {
      return 0;
    }

    *(a1 + 1600) |= 1u;
  }

  return 1;
}

uint64_t bssl::ext_ech_add_serverhello(uint64_t a1, ssl_st *a2)
{
  v4 = *a1;
  if (bssl::ssl_protocol_version(*a1, a2) < 0x304 || *(*(v4 + 6) + 216) == 1 || !*(a1 + 1552))
  {
    return 1;
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12[1] = v5;
  v12[2] = v5;
  v11[2] = v5;
  v12[0] = v5;
  v11[0] = v5;
  v11[1] = v5;
  result = CBB_add_u16(a2, 0xFE0Du);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(&a2->version, v12);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v12, v11);
      if (result)
      {
        v7 = *(a1 + 1552);
        v8 = *(v7 + 16);
        if (v8)
        {
          v9 = *(v7 + 8);
          v10 = 8 * v8;
          while (1)
          {
            if (*(*v9 + 184) == 1)
            {
              result = CBB_add_bytes(v11, **v9, (*v9)[1]);
              if (!result)
              {
                break;
              }
            }

            ++v9;
            v10 -= 8;
            if (!v10)
            {
              return CBB_flush(&a2->version) != 0;
            }
          }
        }

        else
        {
          return CBB_flush(&a2->version) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_ems_parse_clienthello(uint64_t a1, const ssl_st *a2, uint64_t a3)
{
  v5 = bssl::ssl_protocol_version(*a1, a2);
  result = 1;
  if (a3 && v5 <= 0x303)
  {
    if (*(a3 + 8))
    {
      return 0;
    }

    else
    {
      *(a1 + 1600) |= 0x10000u;
    }
  }

  return result;
}

uint64_t bssl::ext_ems_add_serverhello(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 1602) & 1) == 0)
  {
    return 1;
  }

  result = CBB_add_u16(a2, 0x17u);
  if (result)
  {
    return CBB_add_u16(a2, 0) != 0;
  }

  return result;
}

uint64_t bssl::ext_ri_parse_clienthello(bssl **a1, ssl_st *a2, uint64_t a3)
{
  v3 = *a1;
  if ((*(*(*a1 + 6) + 222) & 0x10) != 0)
  {
    bssl::ext_ri_parse_clienthello();
  }

  v6 = bssl::ssl_protocol_version(*a1, a2);
  result = 1;
  if (a3 && v6 <= 0x303)
  {
    v8 = 0xAAAAAAAAAAAAAAAALL;
    v9 = 0xAAAAAAAAAAAAAAAALL;
    if (CBS_get_u8_length_prefixed(a3, &v8) && !*(a3 + 8))
    {
      if (v9)
      {
        ERR_put_error(16, 0, 202, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 830);
        result = 0;
        LOBYTE(a2->version) = 40;
      }

      else
      {
        *(*(v3 + 6) + 222) |= 0x40u;
        return 1;
      }
    }

    else
    {
      ERR_put_error(16, 0, 201, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 823);
      return 0;
    }
  }

  return result;
}

uint64_t bssl::ext_ri_add_serverhello(bssl **a1, const ssl_st *a2)
{
  v2 = *a1;
  if ((*(*(v2 + 6) + 222) & 0x10) != 0)
  {
    bssl::ext_ri_add_serverhello();
  }

  if (bssl::ssl_protocol_version(v2, a2) > 0x303)
  {
    return 1;
  }

  result = CBB_add_u16(a2, 0xFF01u);
  if (result)
  {
    result = CBB_add_u16(a2, 1u);
    if (result)
    {
      return CBB_add_u8(a2, 0) != 0;
    }
  }

  return result;
}

uint64_t bssl::ext_supported_groups_parse_clienthello(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  u16_length_prefixed = CBS_get_u16_length_prefixed(a3, &v7);
  result = 0;
  if (u16_length_prefixed && *(&v7 + 1))
  {
    if (*(a3 + 8))
    {
      return 0;
    }

    else
    {
      return bssl::parse_u16_array(&v7, a1 + 680);
    }
  }

  return result;
}

uint64_t bssl::ext_ec_point_parse_clienthello(bssl **a1, ssl_st *a2, uint64_t a3)
{
  if (bssl::ssl_protocol_version(*a1, a2) > 0x303)
  {
    return 1;
  }

  return bssl::ext_ec_point_parse_serverhello(a1, a2, a3);
}

uint64_t bssl::ext_ec_point_add_serverhello(uint64_t a1, ssl_st *a2)
{
  if (bssl::ssl_protocol_version(*a1, a2) > 0x303 || !(*(*(a1 + 1568) + 20) & 2 | *(*(a1 + 1568) + 24) & 4))
  {
    return 1;
  }

  return bssl::ext_ec_point_add_extension(&a2->version);
}

uint64_t bssl::ext_ticket_add_serverhello(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 1601) & 0x80) == 0)
  {
    return 1;
  }

  if ((SSL_get_options(*a1) & 0x4000) != 0)
  {
    bssl::ext_ticket_add_serverhello();
  }

  result = CBB_add_u16(a2, 0x23u);
  if (result)
  {
    return CBB_add_u16(a2, 0) != 0;
  }

  return result;
}

uint64_t bssl::ext_alpn_add_serverhello(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (!*(*(*a1 + 48) + 504))
  {
    return 1;
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = v4;
  v8[2] = v4;
  v8[0] = v4;
  v7[1] = v4;
  v7[2] = v4;
  v6[2] = v4;
  v7[0] = v4;
  v6[0] = v4;
  v6[1] = v4;
  result = CBB_add_u16(a2, 0x10u);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a2, v8);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v8, v7);
      if (result)
      {
        result = CBB_add_u8_length_prefixed(v7, v6);
        if (result)
        {
          result = CBB_add_bytes(v6, *(*(v2 + 48) + 496), *(*(v2 + 48) + 504));
          if (result)
          {
            return CBB_flush(a2) != 0;
          }
        }
      }
    }
  }

  return result;
}

BOOL bssl::ext_ocsp_parse_clienthello(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return 1;
  }

  v6 = -86;
  u8 = CBS_get_u8(a3, &v6);
  result = u8 != 0;
  if (u8)
  {
    *(a1 + 1600) = *(a1 + 1600) & 0xFFFFFF7F | ((v6 == 1) << 7);
  }

  return result;
}

uint64_t bssl::ext_ocsp_add_serverhello(uint64_t a1, const ssl_st *a2)
{
  v4 = *a1;
  if (bssl::ssl_protocol_version(*a1, a2) > 0x303 || (*(a1 + 1600) & 0x80) == 0 || (*(*(v4 + 6) + 222) & 0x20) != 0 || !bssl::ssl_cipher_uses_certificate_auth(*(a1 + 1568), v5) || !*(*(a1 + 1520) + 80))
  {
    return 1;
  }

  *(a1 + 1600) |= 0x40u;
  result = CBB_add_u16(a2, 5u);
  if (result)
  {
    return CBB_add_u16(a2, 0) != 0;
  }

  return result;
}

uint64_t bssl::ext_sigalgs_parse_clienthello(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + 664);
  OPENSSL_free(*(a1 + 664));
  *v5 = 0u;
  if (!a3)
  {
    return 1;
  }

  v7[0] = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = 0xAAAAAAAAAAAAAAAALL;
  result = CBS_get_u16_length_prefixed(a3, v7);
  if (result)
  {
    if (*(a3 + 8))
    {
      return 0;
    }

    else
    {
      return bssl::tls1_parse_peer_sigalgs(a1, v7);
    }
  }

  return result;
}

uint64_t bssl::ext_npn_parse_clienthello(uint64_t a1, const ssl_st *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = bssl::ssl_protocol_version(*a1, a2);
  result = 1;
  if (a3 && v6 <= 0x303)
  {
    if (*(a3 + 8))
    {
      return 0;
    }

    else if ((*(*(v5 + 6) + 222) & 0x10) == 0 && *(*(v5 + 15) + 600))
    {
      if (!SSL_is_dtls(v5))
      {
        *(a1 + 1600) |= 0x4000u;
      }

      return 1;
    }
  }

  return result;
}

uint64_t bssl::ext_npn_add_serverhello(uint64_t *a1, uint64_t *a2)
{
  if ((*(a1 + 1601) & 0x40) == 0)
  {
    return 1;
  }

  v14 = v2;
  v15 = v3;
  v7 = *a1;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v12 = -1431655766;
  v8 = *(v7 + 120);
  v9 = *(v8 + 608);
  if ((*(v8 + 600))())
  {
    *(a1 + 400) &= ~0x4000u;
    return 1;
  }

  else
  {
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v11[1] = v10;
    v11[2] = v10;
    v11[0] = v10;
    result = CBB_add_u16(a2, 0x3374u);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(a2, v11);
      if (result)
      {
        result = CBB_add_bytes(v11, v13, v12);
        if (result)
        {
          return CBB_flush(a2) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_sct_parse_clienthello(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (*(a3 + 8))
    {
      return 0;
    }

    *(a1 + 1600) |= 4u;
  }

  return 1;
}

uint64_t bssl::ext_sct_add_serverhello(uint64_t a1, ssl_st *a2)
{
  if ((*(a1 + 1600) & 4) == 0)
  {
    bssl::ext_sct_add_serverhello();
  }

  v4 = *a1;
  if (bssl::ssl_protocol_version(*a1, a2) > 0x303 || (*(*(v4 + 6) + 222) & 0x20) != 0 || !bssl::ssl_cipher_uses_certificate_auth(*(a1 + 1568), v5) || !*(*(a1 + 1520) + 72))
  {
    return 1;
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[1] = v6;
  v10[2] = v6;
  v10[0] = v6;
  result = CBB_add_u16(a2, 0x12u);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(&a2->version, v10);
    if (result)
    {
      v8 = CRYPTO_BUFFER_data(*(*(a1 + 1520) + 72));
      v9 = CRYPTO_BUFFER_len(*(*(a1 + 1520) + 72));
      result = CBB_add_bytes(v10, v8, v9);
      if (result)
      {
        return CBB_flush(&a2->version) != 0;
      }
    }
  }

  return result;
}

uint64_t bssl::ext_channel_id_parse_clienthello(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  if ((*(*(a1 + 8) + 309) & 8) == 0 || SSL_is_dtls(*a1))
  {
    return 1;
  }

  if (!*(a3 + 8))
  {
    *(a1 + 1600) |= 0x2000000u;
    return 1;
  }

  return 0;
}

uint64_t bssl::ext_channel_id_add_serverhello(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 1603) & 2) == 0)
  {
    return 1;
  }

  result = CBB_add_u16(a2, 0x7550u);
  if (result)
  {
    return CBB_add_u16(a2, 0) != 0;
  }

  return result;
}

uint64_t bssl::ext_srtp_parse_clienthello(unsigned __int8 ***a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *a1;
    if (SSL_is_dtls(*a1))
    {
      memset(v19, 170, sizeof(v19));
      if (CBS_get_u16_length_prefixed(a3, &v19[2]) && v19[3] >= 2 && CBS_get_u8_length_prefixed(a3, v19) && !*(a3 + 8))
      {
        srtp_profiles = SSL_get_srtp_profiles(v4);
        v8 = EVP_MD_CTX_md(srtp_profiles);
        if (v8)
        {
          v10 = v8;
          v11 = 0;
          while (1)
          {
            v12 = OPENSSL_sk_value(srtp_profiles, v11);
            v9 = v19[2];
            v17 = v19[2];
            v18 = v19[3];
            if (v19[3])
            {
              break;
            }

LABEL_18:
            if (++v11 == v10)
            {
              goto LABEL_19;
            }
          }

          v13 = v12;
          while (1)
          {
            v16 = -21846;
            u16 = CBS_get_u16(&v17, &v16);
            v9 = u16 != 0;
            if (!u16)
            {
              break;
            }

            if (v13[1] == v16)
            {
              *(v4[6] + 75) = v13;
              break;
            }

            v9 = v18;
            if (!v18)
            {
              goto LABEL_18;
            }
          }

          v15 = 0;
        }

        else
        {
LABEL_19:
          v15 = 1;
        }

        v5 = v15 | v9;
      }

      else
      {
        ERR_put_error(16, 0, 116, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 1774);
        v5 = 0;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t bssl::ext_srtp_add_serverhello(unsigned __int8 ***a1, uint64_t *a2)
{
  v2 = *a1;
  if (!*((*a1)[6] + 75))
  {
    return 1;
  }

  if (!SSL_is_dtls(*a1))
  {
    bssl::ext_srtp_add_serverhello();
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = v4;
  v7[2] = v4;
  v6[2] = v4;
  v7[0] = v4;
  v6[0] = v4;
  v6[1] = v4;
  result = CBB_add_u16(a2, 0xEu);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a2, v7);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v7, v6);
      if (result)
      {
        result = CBB_add_u16(v6, *(*(v2[6] + 75) + 8));
        if (result)
        {
          result = CBB_add_u8(v7, 0);
          if (result)
          {
            return CBB_flush(a2) != 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_psk_key_exchange_modes_parse_clienthello(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  __s = 0xAAAAAAAAAAAAAAAALL;
  __n = 0xAAAAAAAAAAAAAAAALL;
  if (CBS_get_u8_length_prefixed(a3, &__s) && __n && !*(a3 + 8))
  {
    v6 = 1;
    *(a1 + 1600) = *(a1 + 1600) & 0xFFFFFFEF | (16 * (memchr(__s, 1, __n) != 0));
  }

  else
  {
    v6 = 0;
    *a2 = 50;
  }

  return v6;
}

uint64_t bssl::ext_early_data_parse_clienthello(uint64_t a1, ssl_st *a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  if (bssl::ssl_protocol_version(*a1, a2) >= 0x304)
  {
    if (*(a3 + 8))
    {
      result = 0;
      LOBYTE(a2->version) = 50;
      return result;
    }

    *(a1 + 1600) |= 0x800u;
  }

  return 1;
}

uint64_t bssl::ext_early_data_add_serverhello(uint64_t a1, uint64_t *a2)
{
  if ((*(*(*a1 + 48) + 222) & 0x200) == 0)
  {
    return 1;
  }

  result = CBB_add_u16(a2, 0x2Au);
  if (result)
  {
    result = CBB_add_u16(a2, 0);
    if (result)
    {
      return CBB_flush(a2) != 0;
    }
  }

  return result;
}

uint64_t bssl::cert_compression_parse_clienthello(bssl **a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v5 = *(*a1 + 15);
  v6 = *(v5 + 736);
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_u8_length_prefixed(a3, &v32) || *(a3 + 8))
  {
    return 0;
  }

  v7 = 0;
  v9 = v33;
  if (v33 && (v33 & 1) == 0)
  {
    v10 = v33 >> 1;
    v30 = 0;
    v31 = 0;
    if (!bssl::Array<unsigned short>::InitUninitialized(&v30, v33 >> 1))
    {
LABEL_45:
      v7 = 0;
      goto LABEL_46;
    }

    if (v33)
    {
      v11 = 0;
      v12 = v6;
      while (1)
      {
        v29 = -21846;
        if (!CBS_get_u16(&v32, &v29))
        {
          goto LABEL_45;
        }

        v13 = v31;
        if (v31 <= v11)
        {
          goto LABEL_47;
        }

        v14 = v29;
        v15 = v30;
        *(v30 + v11) = v29;
        if (v6)
        {
          v16 = 0;
          v17 = 0;
          while (1)
          {
            if (*(v5 + 736) == v17)
            {
              goto LABEL_47;
            }

            v18 = (*(v5 + 728) + v16);
            v19 = *(v18 + 8);
            v20 = *v18;
            if (v19 == v14 && v20 != 0)
            {
              break;
            }

            ++v17;
            v16 += 24;
            if (v6 == v17)
            {
              goto LABEL_26;
            }
          }

          if (v17 < v12)
          {
            v12 = v17;
          }
        }

LABEL_26:
        ++v11;
        if (!v33)
        {
          goto LABEL_29;
        }
      }
    }

    v15 = v30;
    v13 = v31;
    v12 = v6;
LABEL_29:
    qsort(v15, v13, 2uLL, bssl::compare_uint16_t);
    if (v9 >= 3)
    {
      v23 = v31;
      if (v31 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v31;
      }

      v25 = 2;
      if (v10 > 2)
      {
        v25 = v9 >> 1;
      }

      v26 = (v30 + 2);
      v27 = v24 - 1;
      v28 = v25 - 1;
      while (v23 && v27)
      {
        if (*(v26 - 1) == *v26)
        {
          goto LABEL_45;
        }

        ++v26;
        --v27;
        --v23;
        if (!--v28)
        {
          goto LABEL_40;
        }
      }

LABEL_47:
      abort();
    }

LABEL_40:
    if (v12 < v6 && bssl::ssl_protocol_version(*a1, v22) >= 0x304)
    {
      *(a1 + 400) |= 0x100000u;
      if (*(v5 + 736) <= v12)
      {
        goto LABEL_47;
      }

      *(a1 + 372) = *(*(v5 + 728) + 24 * v12 + 16);
    }

    v7 = 1;
LABEL_46:
    OPENSSL_free(v30);
  }

  return v7;
}

void sub_1A9064680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  bssl::Array<unsigned char>::~Array(va);
  _Unwind_Resume(a1);
}

uint64_t bssl::ext_delegated_credential_parse_clienthello(bssl **a1, const ssl_st *a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  if (bssl::ssl_protocol_version(*a1, a2) < 0x304)
  {
    return 1;
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  u16_length_prefixed = CBS_get_u16_length_prefixed(a3, &v7);
  result = 0;
  if (u16_length_prefixed && *(&v7 + 1))
  {
    if (*(a3 + 8))
    {
      return 0;
    }

    else
    {
      return bssl::parse_u16_array(&v7, (a1 + 87));
    }
  }

  return result;
}

uint64_t bssl::ext_client_certificate_type_parse_clienthello(uint64_t a1, _BYTE *a2, unsigned __int8 **a3)
{
  if (!a3)
  {
    return 1;
  }

  if (*(a1 + 30) < 0x304u)
  {
    return 1;
  }

  v4 = *(a1 + 8);
  v5 = *(v4 + 208);
  if (!v5)
  {
    return 1;
  }

  v11[0] = *(v4 + 200);
  v11[1] = v5;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_u8_length_prefixed(a3, &v9))
  {
    v10 = 0;
  }

  v8 = -86;
  while (v10 && CBS_get_u8(&v9, &v8))
  {
    if (bssl::ssl_is_certificate_type_allowed(v11, v8))
    {
      *(a1 + 747) = v8;
      *(a1 + 1600) |= 0x400000u;
      return 1;
    }
  }

  result = 0;
  *a2 = 47;
  return result;
}

uint64_t bssl::ext_client_certificate_type_add_serverhello(uint64_t a1, uint64_t *a2)
{
  if ((*(a1 + 1602) & 0x40) == 0)
  {
    return 1;
  }

  v9 = v2;
  v10 = v3;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = v7;
  v8[2] = v7;
  v8[0] = v7;
  result = CBB_add_u16(a2, 0x13u);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a2, v8);
    if (result)
    {
      result = CBB_add_u8(v8, *(a1 + 747));
      if (result)
      {
        return CBB_flush(a2) != 0;
      }
    }
  }

  return result;
}

uint64_t bssl::ext_server_certificate_type_parse_clienthello(uint64_t a1, _BYTE *a2, unsigned __int8 **a3)
{
  if (!a3)
  {
    return 1;
  }

  if (*(a1 + 30) < 0x304u)
  {
    return 1;
  }

  v4 = *(a1 + 8);
  v5 = *(v4 + 184);
  if (!v5)
  {
    return 1;
  }

  v11[0] = *(v4 + 176);
  v11[1] = v5;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_u8_length_prefixed(a3, &v9))
  {
    v10 = 0;
  }

  v8 = -86;
  while (v10 && CBS_get_u8(&v9, &v8))
  {
    if (bssl::ssl_is_certificate_type_allowed(v11, v8))
    {
      *(a1 + 746) = v8;
      *(a1 + 1600) |= 0x200000u;
      return 1;
    }
  }

  result = 0;
  *a2 = 47;
  return result;
}

uint64_t bssl::ext_server_certificate_type_add_serverhello(unsigned __int8 *a1, uint64_t *a2)
{
  if ((a1[1602] & 0x20) == 0)
  {
    return 1;
  }

  v9 = v2;
  v10 = v3;
  if ((*(*(*a1 + 48) + 222) & 0x20) != 0)
  {
    return 1;
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = v7;
  v8[2] = v7;
  v8[0] = v7;
  result = CBB_add_u16(a2, 0x14u);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a2, v8);
    if (result)
    {
      result = CBB_add_u8(v8, a1[746]);
      if (result)
      {
        return CBB_flush(a2) != 0;
      }
    }
  }

  return result;
}

uint64_t bssl::ext_ticket_request_parse_clienthello(uint64_t a1, _BYTE *a2, void *a3)
{
  if (!a3)
  {
    return 1;
  }

  if (*(a1 + 30) < 0x304u)
  {
    return 1;
  }

  v8 = -86;
  v7 = -86;
  if (CBS_get_u8(a3, &v8) && CBS_get_u8(a3, &v7))
  {
    *(a1 + 748) = v8;
    *(a1 + 749) = v7;
    return 1;
  }

  result = 0;
  *a2 = 47;
  return result;
}

uint64_t bssl::ext_ticket_request_add_serverhello(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 30) < 0x304u)
  {
    return 1;
  }

  v4 = *(a1 + 748);
  v5 = *(a1 + 749);
  if (!*(a1 + 748))
  {
    return 1;
  }

  v12 = v2;
  v13 = v3;
  v8 = v5 + v4;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[1] = v9;
  v11[2] = v9;
  if (v8 >= 0xFF)
  {
    v10 = -1;
  }

  else
  {
    v10 = v8;
  }

  v11[0] = v9;
  result = CBB_add_u16(a2, 0x3Au);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a2, v11);
    if (result)
    {
      result = CBB_add_u8(v11, v10);
      if (result)
      {
        return CBB_flush(a2) != 0;
      }
    }
  }

  return result;
}

uint64_t bssl::ext_pake_parse_clienthello(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  *a2 = 50;
  memset(v25, 170, sizeof(v25));
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_u16_length_prefixed(a3, &v25[2]) || !CBS_get_u16_length_prefixed(a3, v25) || !CBS_get_u16_length_prefixed(a3, &v23) || *(a3 + 8))
  {
    v5 = 137;
    v6 = 3184;
    goto LABEL_7;
  }

  if (!v24)
  {
    return 1;
  }

  v8 = 0;
  v9 = 0;
  v10 = (a1 + 1656);
  while (1)
  {
    v22 = -21846;
    v20 = 0xAAAAAAAAAAAAAAAALL;
    v21 = 0xAAAAAAAAAAAAAAAALL;
    if (!CBS_get_u16(&v23, &v22) || !CBS_get_u16_length_prefixed(&v23, &v20))
    {
      v5 = 137;
      v6 = 3193;
      goto LABEL_7;
    }

    v11 = v22;
    if (v8 && v9 >= v22)
    {
      v5 = 137;
      v6 = 3198;
      goto LABEL_7;
    }

    if (v22 == 32150)
    {
      break;
    }

LABEL_18:
    --v8;
    result = 1;
    v9 = v11;
    if (!v24)
    {
      return result;
    }
  }

  std::unique_ptr<bssl::SSLPAKEShare,bssl::internal::Deleter>::reset[abi:ne200100](v10, 0);
  v18 = v25[2];
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v16 = v25[0];
  v17 = v25[3];
  v14 = v20;
  v15 = v25[1];
  v13 = v21;
  v12 = bssl::New<bssl::SSLPAKEShare,unsigned short &,unsigned char const*,unsigned long,unsigned char const*,unsigned long,unsigned char const*,unsigned long>(&v22, &v18, &v17, &v16, &v15, &v14, &v13);
  v19 = 0;
  std::unique_ptr<bssl::SSLPAKEShare,bssl::internal::Deleter>::reset[abi:ne200100](v10, v12);
  std::unique_ptr<bssl::SSLPAKEShare,bssl::internal::Deleter>::reset[abi:ne200100](&v19, 0);
  if (*v10)
  {
    *(*v10 + 4) = v22;
    goto LABEL_18;
  }

  v5 = 68;
  v6 = 3221;
LABEL_7:
  ERR_put_error(16, 0, v5, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", v6);
  return 0;
}

BOOL bssl::ext_certificate_authorities_parse_clienthello(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  if (!*(a3 + 8))
  {
    return 0;
  }

  bssl::SSL_parse_CA_list(*a1, a2, a3, &v6);
  v4 = v6;
  v6 = 0;
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100]((a1 + 1488), v4);
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](&v6, 0);
  return *(a1 + 1488) != 0;
}

uint64_t bssl::ext_quic_transport_params_parse_clienthello_impl(void *a1, ssl_st *a2, uint64_t a3, int a4)
{
  v7 = *a1;
  v8 = *(*a1 + 168);
  if (!a3)
  {
    v16 = a1[1];
    if (v8)
    {
      if (((((*(v16 + 309) & 0x200) == 0) ^ a4) & 1) == 0)
      {
        return 1;
      }

      v17 = 109;
    }

    else
    {
      if (!*(v16 + 240))
      {
        return 1;
      }

      ERR_put_error(16, 0, 305, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 2765);
      v17 = 80;
    }

LABEL_17:
    result = 0;
    LOBYTE(a2->version) = v17;
    return result;
  }

  if (!v8)
  {
    if (a4)
    {
      return 1;
    }

    v17 = 110;
    goto LABEL_17;
  }

  if (bssl::ssl_protocol_version(*a1, a2) != 772)
  {
    bssl::ext_quic_transport_params_parse_clienthello_impl();
  }

  if (((*(a1[1] + 309) & 0x200) == 0) != a4)
  {
    v10 = (*(v7 + 48) + 584);
    v12 = *a3;
    v11 = *(a3 + 8);
    result = bssl::Array<unsigned char>::InitUninitialized(v10, v11);
    if (!result)
    {
      return result;
    }

    if (v11)
    {
      v14 = *v10;
      do
      {
        v15 = *v12++;
        *v14++ = v15;
        --v11;
      }

      while (v11);
    }
  }

  return 1;
}

uint64_t bssl::ext_quic_transport_params_add_serverhello_impl(void *a1, uint64_t *a2, int a3)
{
  v5 = *(*a1 + 168);
  if (!v5 && (a3 & 1) != 0)
  {
    return 1;
  }

  if (!v5)
  {
    bssl::ext_quic_transport_params_add_serverhello_impl();
  }

  v6 = a1[1];
  if (!*(v6 + 240))
  {
    ERR_put_error(16, 0, 305, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 2818);
    return 0;
  }

  v7 = *(v6 + 309) & 0x200;
  if (a3 != v7 >> 9)
  {
    return 1;
  }

  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[1] = v8;
  v11[2] = v8;
  v11[0] = v8;
  if (v7)
  {
    v9 = 65445;
  }

  else
  {
    v9 = 57;
  }

  result = CBB_add_u16(a2, v9);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a2, v11);
    if (result)
    {
      result = CBB_add_bytes(v11, *(a1[1] + 232), *(a1[1] + 240));
      if (result)
      {
        return CBB_flush(a2) != 0;
      }
    }
  }

  return result;
}

uint64_t bssl::ext_alps_add_serverhello_impl(void *a1, uint64_t *a2, int a3)
{
  v3 = a1[192];
  if (!v3)
  {
    return 1;
  }

  if ((*(v3 + 440) & 0x40) == 0)
  {
    return 1;
  }

  if ((*(*(*a1 + 48) + 222) & 0x200) != 0)
  {
    return 1;
  }

  v5 = *(a1[1] + 309) & 0x2000;
  if (a3 != v5 >> 13)
  {
    return 1;
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[1] = v7;
  v10[2] = v7;
  v10[0] = v7;
  if (v5)
  {
    v8 = 17613;
  }

  else
  {
    v8 = 17513;
  }

  result = CBB_add_u16(a2, v8);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a2, v10);
    if (result)
    {
      result = CBB_add_bytes(v10, *(a1[192] + 408), *(a1[192] + 416));
      if (result)
      {
        return CBB_flush(a2) != 0;
      }
    }
  }

  return result;
}

uint64_t bssl::ssl_is_certificate_type_allowed(void *a1, int a2)
{
  v5 = -86;
  while (a1[1])
  {
    result = CBS_get_u8(a1, &v5);
    if (!result)
    {
      return result;
    }

    if (v5 == a2)
    {
      return 1;
    }
  }

  return 0;
}

bssl::SSLPAKEShare *bssl::New<bssl::SSLPAKEShare,unsigned short &,unsigned char const*,unsigned long,unsigned char const*,unsigned long,unsigned char const*,unsigned long>(__int16 *a1, char **a2, unint64_t *a3, char **a4, unint64_t *a5, char **a6, unint64_t *a7)
{
  result = OPENSSL_malloc(0x40uLL);
  if (result)
  {
    return bssl::SSLPAKEShare::SSLPAKEShare(result, *a1, *a2, *a3, *a4, *a5, *a6, *a7);
  }

  return result;
}

bssl::SSLPAKEShare *bssl::SSLPAKEShare::SSLPAKEShare(bssl::SSLPAKEShare *this, __int16 a2, char *a3, unint64_t a4, char *a5, unint64_t a6, char *a7, unint64_t a8)
{
  v12 = a4;
  *this = &unk_1F1CB0210;
  *(this + 1) = 0u;
  v15 = (this + 16);
  *(this + 2) = 0u;
  v16 = (this + 32);
  *(this + 3) = 0u;
  v17 = (this + 48);
  *(this + 4) = a2;
  if (bssl::Array<unsigned char>::InitUninitialized(this + 16, a4))
  {
    v18 = v12 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    v19 = *v15;
    do
    {
      v20 = *a3++;
      *v19++ = v20;
      --v12;
    }

    while (v12);
  }

  if (bssl::Array<unsigned char>::InitUninitialized(v16, a6) && a6)
  {
    v21 = *v16;
    do
    {
      v22 = *a5++;
      *v21++ = v22;
      --a6;
    }

    while (a6);
  }

  if (bssl::Array<unsigned char>::InitUninitialized(v17, a8) && a8)
  {
    v23 = *v17;
    do
    {
      v24 = *a7++;
      *v23++ = v24;
      --a8;
    }

    while (a8);
  }

  return this;
}

void sub_1A90652D4(_Unwind_Exception *a1)
{
  bssl::Array<unsigned char>::~Array(v2);
  bssl::Array<unsigned char>::~Array(v3);
  bssl::Array<unsigned char>::~Array(v1);
  _Unwind_Resume(a1);
}

void bssl::SSLPAKEShare::~SSLPAKEShare(bssl::SSLPAKEShare *this)
{
  bssl::SSLPAKEShare::~SSLPAKEShare(this);

  JUMPOUT(0x1AC57E0F0);
}

{
  *this = &unk_1F1CB0210;
  v2 = this + 16;
  bssl::Array<unsigned char>::~Array(this + 48);
  bssl::Array<unsigned char>::~Array(this + 32);
  bssl::Array<unsigned char>::~Array(v2);
}

uint64_t bssl::decrypt_ticket_with_cipher_ctx(uint64_t a1, EVP_CIPHER_CTX *ctx, HMAC_CTX *a3, const unsigned __int8 *a4, unint64_t a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = EVP_CIPHER_CTX_iv_length(ctx);
  v11 = HMAC_size(&a3->md);
  if (a5 < v11 + v10 + 17)
  {
    goto LABEL_4;
  }

  v12 = v11;
  v13 = a5 - v11;
  if (a5 < v11)
  {
    goto LABEL_17;
  }

  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28 = v14;
  v29 = v14;
  *md = v14;
  v27 = v14;
  HMAC_Update(a3, a4, v13);
  HMAC_Final(a3, md, 0);
  if (!CRYPTO_memcmp(md, &a4[a5 - v12], v12))
  {
    v18 = v10 + 16;
    if (v13 >= v18)
    {
      out = 0;
      v25 = 0;
      if (v13 - v18 > 0x7FFFFFFE)
      {
        v19 = 0;
        v15 = 2;
LABEL_16:
        OPENSSL_free(v19);
        goto LABEL_5;
      }

      inited = bssl::Array<unsigned char>::InitUninitialized(&out, v13 - v18);
      v19 = out;
      if ((inited & 1) == 0)
      {
        v15 = 3;
        goto LABEL_16;
      }

      v22 = -1431655766;
      outl = -1431655766;
      if (!EVP_DecryptUpdate(ctx, out, &outl, &a4[v18], v13 - v18) || !EVP_DecryptFinal_ex(ctx, &out[outl], &v22))
      {
        ERR_clear_error();
        v15 = 2;
        v19 = out;
        goto LABEL_16;
      }

      if (v25 >= v22 + outl)
      {
        v25 = v22 + outl;
        OPENSSL_free(*a1);
        v19 = 0;
        v15 = 0;
        v21 = v25;
        *a1 = out;
        *(a1 + 8) = v21;
        out = 0;
        v25 = 0;
        goto LABEL_16;
      }
    }

LABEL_17:
    abort();
  }

LABEL_4:
  v15 = 2;
LABEL_5:
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

void sub_1A9065560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  bssl::Array<unsigned char>::~Array(va);
  _Unwind_Resume(a1);
}

pthread_rwlock_t **bssl::internal::MutexLockBase<&(CRYPTO_MUTEX_lock_read),&(CRYPTO_MUTEX_unlock_read)>::MutexLockBase(pthread_rwlock_t **a1, pthread_rwlock_t *a2)
{
  *a1 = a2;
  if (!a2)
  {
    bssl::internal::MutexLockBase<&(CRYPTO_MUTEX_lock_read),&(CRYPTO_MUTEX_unlock_read)>::MutexLockBase();
  }

  CRYPTO_MUTEX_lock_read(a2);
  return a1;
}

void std::unique_ptr<ec_key_st,bssl::internal::Deleter>::reset[abi:ne200100](EC_KEY **a1, EC_KEY *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    EC_KEY_free(v3);
  }
}

bssl::SSLPAKEShare *bssl::New<bssl::SSLPAKEShare,unsigned short &,unsigned char *,unsigned long,unsigned char *,unsigned long,unsigned char (&)[65],unsigned long &>(__int16 *a1, char **a2, unint64_t *a3, char **a4, unint64_t *a5, char *a6, unint64_t *a7)
{
  result = OPENSSL_malloc(0x40uLL);
  if (result)
  {
    return bssl::SSLPAKEShare::SSLPAKEShare(result, *a1, *a2, *a3, *a4, *a5, a6, *a7);
  }

  return result;
}

void std::unique_ptr<ecdsa_sig_st,bssl::internal::Deleter>::reset[abi:ne200100](ECDSA_SIG **a1, ECDSA_SIG *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    ECDSA_SIG_free(v3);
  }
}

void std::unique_ptr<bignum_st,bssl::internal::Deleter>::reset[abi:ne200100](BIGNUM **a1, BIGNUM *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    BN_free(v3);
  }
}

void std::unique_ptr<ec_point_st,bssl::internal::Deleter>::reset[abi:ne200100](EC_POINT **a1, EC_POINT *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    EC_POINT_free(v3);
  }
}

uint64_t bssl::read_v2_client_hello(uint64_t a1, unint64_t *a2, _BYTE *a3, unint64_t a4)
{
  v44 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  if (a4 <= 4)
  {
    bssl::read_v2_client_hello();
  }

  v4 = a3[1] | ((*a3 & 0x7F) << 8);
  if (v4 > 0x1000)
  {
    v5 = 200;
    v6 = 362;
LABEL_6:
    ERR_put_error(16, 0, v5, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/s3_both.cc", v6);
    goto LABEL_7;
  }

  if (v4 <= 2)
  {
    v5 = 199;
    v6 = 369;
    goto LABEL_6;
  }

  v11 = v4 + 2;
  if (a4 < v4 + 2)
  {
    *a2 = v11;
    v7 = 2;
    goto LABEL_8;
  }

  v13 = *(a1 + 48);
  v14 = *(v13 + 92);
  if (v14 <= 1)
  {
    abort();
  }

  v15 = (*(v13 + 80) + *(v13 + 88) + 2);
  v16 = v14 - 2;
  if (v16 >= v4)
  {
    v17 = a3[1] | ((*a3 & 0x7F) << 8);
  }

  else
  {
    v17 = v16;
  }

  v41 = (*(v13 + 80) + *(v13 + 88) + 2);
  v42 = v17;
  if (bssl::SSLTranscript::Update(*(v13 + 280) + 424, v15, v17))
  {
    bssl::ssl_do_msg_callback(a1, 0, 0, v15, v17);
    v40 = -86;
    v39 = -21846;
    v38 = -21846;
    v37 = -21846;
    v36 = -21846;
    memset(v35, 170, sizeof(v35));
    v33 = 0xAAAAAAAAAAAAAAAALL;
    v34 = 0xAAAAAAAAAAAAAAAALL;
    if (!CBS_get_u8(&v41, &v40) || !CBS_get_u16(&v41, &v39) || !CBS_get_u16(&v41, &v38) || !CBS_get_u16(&v41, &v37) || !CBS_get_u16(&v41, &v36) || !CBS_get_bytes(&v41, &v35[2], v38) || !CBS_get_bytes(&v41, v35, v37) || !CBS_get_bytes(&v41, &v33, v36) || v42)
    {
      ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/s3_both.cc", 402);
      goto LABEL_7;
    }

    if (v40 != 1)
    {
      bssl::read_v2_client_hello();
    }

    memset(v43, 0, 32);
    if (v34)
    {
      if (v34 >= 0x20)
      {
        v18 = 32;
      }

      else
      {
        v18 = v34;
      }

      memcpy(&v43[-v18 + 32], v33, v18);
    }

    v19 = v35[3];
    *&v20 = 0xAAAAAAAAAAAAAAAALL;
    *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v32[2] = v20;
    v32[0] = v20;
    v32[1] = v20;
    CBB_zero(v32);
    *&v21 = 0xAAAAAAAAAAAAAAAALL;
    *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v31[1] = v21;
    v31[2] = v21;
    v30[2] = v21;
    v31[0] = v21;
    v30[0] = v21;
    v30[1] = v21;
    v22 = *(a1 + 48);
    v25 = *(v22 + 224);
    v24 = (v22 + 224);
    v23 = v25;
    if (v25 || (v26 = BUF_MEM_new(), std::unique_ptr<buf_mem_st,bssl::internal::Deleter>::reset[abi:ne200100](v24, v26), (v23 = *(*(a1 + 48) + 224)) != 0))
    {
      if (BUF_MEM_reserve(v23, (((v19 * 0xAAAAAAAAAAAAAAABLL) >> 64) & 0xFFFFFFFFFFFFFFFELL) + 43) && CBB_init_fixed(v32, *(*(*(a1 + 48) + 224) + 8), *(*(*(a1 + 48) + 224) + 16)) && CBB_add_u8(v32, 1u) && CBB_add_u24_length_prefixed(v32, v31) && CBB_add_u16(v31, v39) && CBB_add_bytes(v31, v43, 0x20uLL) && CBB_add_u8(v31, 0) && CBB_add_u16_length_prefixed(v31, v30))
      {
        if (v35[3])
        {
          while (1)
          {
            v29 = -1431655766;
            if (!CBS_get_u24(&v35[2], &v29))
            {
              v27 = 449;
              v28 = 137;
              goto LABEL_55;
            }

            if ((v29 & 0xFF0000) == 0 && !CBB_add_u16(v30, v29))
            {
              break;
            }

            if (!v35[3])
            {
              goto LABEL_46;
            }
          }

          v27 = 458;
          v28 = 68;
LABEL_55:
          ERR_put_error(16, 0, v28, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/s3_both.cc", v27);
        }

        else
        {
LABEL_46:
          if (CBB_add_u8(v31, 1u) && CBB_add_u8(v31, 0) && CBB_finish(v32, 0, *(*(a1 + 48) + 224)))
          {
            *a2 = v11;
            v7 = 0;
            *(*(a1 + 48) + 222) |= 4u;
LABEL_57:
            CBB_cleanup(v32);
            goto LABEL_8;
          }

          ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/s3_both.cc", 467);
        }
      }
    }

    v7 = 4;
    goto LABEL_57;
  }

LABEL_7:
  v7 = 4;
LABEL_8:
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1A9065B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  CBB_cleanup(va);
  _Unwind_Resume(a1);
}

uint64_t bssl::ssl_choose_tls13_cipher(unsigned __int16 *a1, uint64_t a2, char a3, unsigned int a4, int a5)
{
  v19 = a1;
  v20 = a2;
  if ((a2 & 1) == 0)
  {
    v17 = &unk_1F1CB0240;
    v18 = 0xAAAAAAAAAAAAAAAALL;
    LOBYTE(v18) = a3;
    v16 = &unk_1F1CB0290;
    v6 = a5 == 3 ? &v16 : &v17;
    if (a2)
    {
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v15 = -21846;
        if (!CBS_get_u16(&v19, &v15))
        {
          break;
        }

        cipher_by_value = SSL_get_cipher_by_value(v15);
        if (cipher_by_value)
        {
          v11 = cipher_by_value;
          if (SSL_CIPHER_get_min_version(cipher_by_value) <= a4 && SSL_CIPHER_get_max_version(v11) >= a4)
          {
            protocol_id = SSL_CIPHER_get_protocol_id(v11);
            if (bssl::ssl_tls13_cipher_meets_policy(protocol_id, a5))
            {
              v13 = (*(*v6 + 2))(v6, v11);
              if (v13 > v9)
              {
                v9 = v13;
                v8 = v11;
              }
            }
          }
        }

        if (!v20)
        {
          return v8;
        }
      }
    }
  }

  return 0;
}

uint64_t bssl::anonymous namespace::AesHwCipherScorer::Evaluate(bssl::_anonymous_namespace_::AesHwCipherScorer *this, const ssl_cipher_st *a2)
{
  if (*(this + 8))
  {
    return 2;
  }

  if (HIDWORD(a2->algorithms) == 64)
  {
    return 2;
  }

  return 1;
}

uint64_t bssl::anonymous namespace::CNsaCipherScorer::Evaluate(bssl::_anonymous_namespace_::CNsaCipherScorer *this, const ssl_cipher_st *a2)
{
  id = a2->id;
  if (id == 50336513)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (id == 50336514)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t bn_abs_sub_part_words(unint64_t *a1, const unint64_t *a2, const unint64_t *a3, unsigned int a4, signed int a5, unint64_t *a6)
{
  v12 = bn_sub_part_words(a6, a2, a3, a4, a5);
  bn_sub_part_words(a1, a3, a2, a4, -a5);
  if (a5 >= 0)
  {
    v13 = a5;
  }

  else
  {
    v13 = -a5;
  }

  bn_select_words(a1, -v12, a1, a6, (v13 + a4));
  return -v12;
}

int BN_mul(BIGNUM *r, const BIGNUM *a, const BIGNUM *b, BN_CTX *ctx)
{
  result = bn_mul_impl(r, a, b, ctx);
  if (result)
  {
    bn_set_minimal_width(r);
    return 1;
  }

  return result;
}

uint64_t bn_mul_impl(BIGNUM *a1, BIGNUM *a2, BIGNUM *a3, BN_CTX *ctx)
{
  top = a2->top;
  v6 = a3->top;
  if (top)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    BN_CTX_start(ctx);
    if (a1 == a2 || (v12 = a1, a1 == a3))
    {
      v12 = BN_CTX_get(ctx);
      if (!v12)
      {
        goto LABEL_45;
      }
    }

    v12->neg = a3->neg ^ a2->neg;
    if (top == 8 && v6 == 8)
    {
      if (!bn_wexpand(&v12->d, 0x10uLL))
      {
        goto LABEL_45;
      }

      v12->top = 16;
      bn_mul_comba8(v12->d, a2->d, a3->d);
    }

    else
    {
      v13 = v6 + top;
      if (top < 16 || v6 < 16 || (top - v6 + 1) > 2)
      {
        if (!bn_wexpand(&v12->d, v13))
        {
          goto LABEL_45;
        }

        v12->top = v13;
        bn_mul_normal(v12->d, a2->d, top, a3->d, v6);
      }

      else
      {
        if (top - v6 >= 0)
        {
          v14 = top;
        }

        else
        {
          v14 = v6;
        }

        v15 = BN_num_bits_word(v14);
        v16 = v15 - 1;
        v17 = 1 << (v15 - 1);
        if (top < v17 && v6 < v17)
        {
          bn_mul_impl_cold_1();
        }

        v19 = v15;
        v20 = BN_CTX_get(ctx);
        if (!v20)
        {
          goto LABEL_45;
        }

        if (top <= v17 && v6 <= v17)
        {
          v24 = (4 << v16);
          p_d = &v20->d;
          if (!bn_wexpand(&v20->d, v24) || !bn_wexpand(&v12->d, (1 << v19)))
          {
            goto LABEL_45;
          }

          bn_mul_recursive(v12->d, a2->d, a3->d, v17, (top - v17), (v6 - v17), *p_d);
        }

        else
        {
          if (top < v17 || v6 < v17)
          {
            bn_mul_impl_cold_2();
          }

          v23 = &v20->d;
          if (!bn_wexpand(&v20->d, 8 << v16) || !bn_wexpand(&v12->d, 4 << v16))
          {
            goto LABEL_45;
          }

          bn_mul_part_recursive(v12->d, a2->d, a3->d, v17, top - v17, v6 - v17, *v23);
        }

        v12->top = v6 + top;
      }
    }

    if (v12 == a1 || BN_copy(a1, v12))
    {
      v8 = 1;
LABEL_46:
      BN_CTX_end(ctx);
      return v8;
    }

LABEL_45:
    v8 = 0;
    goto LABEL_46;
  }

  BN_zero(a1);
  return 1;
}

uint64_t bn_mul_consttime(BIGNUM *a1, BIGNUM *a2, BIGNUM *a3, BN_CTX *a4)
{
  if (a2->neg || a3->neg)
  {
    ERR_put_error(3, 0, 109, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/mul.c.inc", 524);
    return 0;
  }

  else
  {

    return bn_mul_impl(a1, a2, a3, a4);
  }
}

uint64_t bn_sqr_consttime(BIGNUM *a1, BIGNUM *a2, BN_CTX *ctx)
{
  v18 = *MEMORY[0x1E69E9840];
  top = a2->top;
  if (top > 0)
  {
    BN_CTX_start(ctx);
    v7 = a1;
    if (a2 == a1)
    {
      v7 = BN_CTX_get(ctx);
    }

    v8 = BN_CTX_get(ctx);
    v9 = 0;
    if (!v7)
    {
      goto LABEL_24;
    }

    v10 = v8;
    if (!v8)
    {
      goto LABEL_24;
    }

    if (!bn_wexpand(&v7->d, 2 * top))
    {
      goto LABEL_23;
    }

    if (top == 8)
    {
      bn_sqr_comba8(v7->d, a2->d);
      goto LABEL_20;
    }

    if (top == 4)
    {
      bn_sqr_comba4(v7->d, a2->d);
      goto LABEL_20;
    }

    if (top > 0xF)
    {
      if ((top & (top - 1)) == 0)
      {
        if (!bn_wexpand(&v10->d, (4 * top)))
        {
          goto LABEL_23;
        }

        bn_sqr_recursive(v7->d, a2->d, top, v10->d);
LABEL_20:
        v7->neg = 0;
        v7->top = 2 * top;
        if (v7 == a1 || BN_copy(a1, v7))
        {
          v9 = 1;
LABEL_24:
          BN_CTX_end(ctx);
          goto LABEL_25;
        }

LABEL_23:
        v9 = 0;
        goto LABEL_24;
      }

      if (!bn_wexpand(&v10->d, 2 * top))
      {
        goto LABEL_23;
      }

      d = v7->d;
      v13 = a2->d;
      v14 = v10->d;
    }

    else
    {
      *&v11 = 0xAAAAAAAAAAAAAAAALL;
      *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v17[14] = v11;
      v17[15] = v11;
      v17[12] = v11;
      v17[13] = v11;
      v17[10] = v11;
      v17[11] = v11;
      v17[8] = v11;
      v17[9] = v11;
      v17[6] = v11;
      v17[7] = v11;
      v17[4] = v11;
      v17[5] = v11;
      v17[2] = v11;
      v17[3] = v11;
      v17[0] = v11;
      v17[1] = v11;
      d = v7->d;
      v13 = a2->d;
      v14 = v17;
    }

    bn_sqr_normal(d, v13, top, v14);
    goto LABEL_20;
  }

  a1->top = 0;
  a1->neg = 0;
  v9 = 1;
LABEL_25:
  v15 = *MEMORY[0x1E69E9840];
  return v9;
}

unint64_t *bn_sqr_normal(unint64_t *rp, uint64_t a2, unint64_t a3, unint64_t *a4)
{
  if (a3)
  {
    v7 = rp;
    v8 = 2 * a3;
    rp[2 * a3 - 1] = 0;
    *rp = 0;
    v9 = a3 - 1;
    if (v9)
    {
      rp[a3] = bn_mul_words(rp + 1, (a2 + 8), v9, *a2);
      if (a3 >= 3)
      {
        v10 = a3 - 2;
        v11 = v7 + 3;
        v12 = &v7[a3 + 1];
        v13 = (a2 + 16);
        do
        {
          *v12++ = bn_mul_add_words(v11, v13, v10, *(v13 - 1));
          v11 += 2;
          ++v13;
          --v10;
        }

        while (v10);
      }
    }

    bn_add_words(v7, v7, v7, v8);
    bn_sqr_words(a4, a2, a3);

    return bn_add_words(v7, v7, a4, v8);
  }

  return rp;
}

unint64_t *bn_sqr_recursive(unint64_t *a1, unint64_t *a2, unint64_t a3, unint64_t *a4)
{
  if ((a3 & (a3 - 1)) != 0)
  {
    bn_sqr_recursive_cold_2();
  }

  if (a3 == 8)
  {

    return bn_sqr_comba8(a1, a2);
  }

  else if (a3 > 0xF)
  {
    v9 = a3 >> 1;
    v10 = bn_sub_words(&a4[a3 >> 1], a2, &a2[a3 >> 1], a3 >> 1);
    bn_sub_words(a4, &a2[a3 >> 1], a2, a3 >> 1);
    bn_select_words(a4, -v10, a4, &a4[a3 >> 1], a3 >> 1);
    v11 = &a4[a3];
    bn_sqr_recursive(v11, a4, a3 >> 1, &a4[2 * a3]);
    bn_sqr_recursive(a1, a2, a3 >> 1, &a4[2 * a3]);
    bn_sqr_recursive(&a1[a3], &a2[a3 >> 1], a3 >> 1, &a4[2 * a3]);
    v12 = bn_add_words(a4, a1, &a1[a3], a3);
    v13 = v12 - bn_sub_words(v11, a4, v11, a3);
    result = bn_add_words(&a1[v9], &a1[v9], v11, a3);
    v14 = result + v13;
    v15 = a3 + (a3 >> 1);
    if (v15 < 2 * a3)
    {
      v16 = a3 - v9;
      v17 = &a1[v15];
      do
      {
        v18 = &v14[*v17];
        v14 = __CFADD__(*v17, v14);
        *v17++ = v18;
        --v16;
      }

      while (v16);
    }

    if (v14)
    {
      bn_sqr_recursive_cold_1();
    }
  }

  else
  {

    return bn_sqr_normal(a1, a2, a3, a4);
  }

  return result;
}

int BN_sqr(BIGNUM *r, const BIGNUM *a, BN_CTX *ctx)
{
  result = bn_sqr_consttime(r, a, ctx);
  if (result)
  {
    bn_set_minimal_width(r);
    return 1;
  }

  return result;
}

unint64_t bn_sub_part_words(unint64_t *a1, const unint64_t *a2, const unint64_t *a3, unsigned int num, unsigned int a5)
{
  if ((num & 0x80000000) != 0)
  {
    bn_sub_part_words_cold_3();
  }

  v9 = num;
  result = bn_sub_words(a1, a2, a3, num);
  if (a5)
  {
    v11 = &a1[v9];
    if ((a5 & 0x80000000) != 0)
    {
      v16 = &a3[v9];
      if (-a5 > 1)
      {
        v17 = -a5;
      }

      else
      {
        v17 = 1;
      }

      do
      {
        if (result >= 2)
        {
          bn_usub_consttime_cold_1();
        }

        v18 = *v16++;
        v19 = v18 != 0;
        v20 = -v18 - result;
        result = -v18 < result || v19;
        *v11++ = v20;
        --v17;
      }

      while (v17);
    }

    else
    {
      v12 = &a2[v9];
      v13 = a5;
      do
      {
        if (result >= 2)
        {
          bn_usub_consttime_cold_1();
        }

        v14 = *v12++;
        v15 = v14 - result;
        result = v14 < result;
        *v11++ = v15;
        --v13;
      }

      while (v13);
    }
  }

  return result;
}

void bn_mul_part_recursive(unint64_t *a1, unint64_t *a2, unint64_t *a3, unsigned int a4, unsigned int a5, unsigned int a6, unint64_t *a7)
{
  if ((a4 ^ (a4 - 1)) <= a4 - 1)
  {
    bn_mul_part_recursive_cold_1();
  }

  if ((a5 & 0x80000000) != 0 || (v9 = a4 - a5, a4 <= a5))
  {
    bn_mul_part_recursive_cold_5();
  }

  if ((a6 & 0x80000000) != 0 || a6 >= a4)
  {
    bn_mul_part_recursive_cold_4();
  }

  if (a5 - a6 - 2 <= 0xFFFFFFFC)
  {
    bn_mul_part_recursive_cold_3();
  }

  v13 = 2 * a4;
  if (a4 > 7)
  {
    v15 = &a7[v13];
    v38 = &a2[a4];
    v39 = a4;
    v16 = bn_abs_sub_part_words(a7, a2, v38, a5, v9, v15);
    v17 = &a7[a4];
    v37 = &a3[a4];
    v18 = bn_abs_sub_part_words(v17, v37, a3, a6, a6 - a4, v15) ^ v16;
    v36 = &a1[v13];
    if (a4 == 8)
    {
      bn_mul_comba8(v15, a7, v17);
      bn_mul_comba8(a1, a2, a3);
      v19 = &a1[v13];
      bn_mul_normal(v36, v38, a5, v37, a6);
      bzero(&a1[v13 + a5 + a6], 8 * (16 - (a6 + a5)));
      v20 = v15;
      v21 = 32;
      v22 = a1;
    }

    else
    {
      v23 = v15;
      v21 = 4 * a4;
      v34 = v23;
      bn_mul_recursive(v23, a7, &a7[a4], a4, 0, 0, &a7[v21]);
      bn_mul_recursive(a1, a2, a3, a4, 0, 0, &a7[v21]);
      v19 = &a1[v13];
      bzero(v36, 8 * v13);
      if ((a6 | a5) >= 0x10)
      {
        if (a5 <= a6)
        {
          v24 = a6;
        }

        else
        {
          v24 = a5;
        }

        LODWORD(v25) = a4;
        while (1)
        {
          v25 = (v25 / 2);
          if (v25 < v24)
          {
            break;
          }

          if (a5 == v25 || a6 == v25)
          {
            bn_mul_recursive(v36, v38, v37, v25, a5 - v25, a6 - v25, &a7[v21]);
            goto LABEL_28;
          }
        }

        bn_mul_part_recursive(v36, v38, v37, v25, a5 - v25, a6 - v25, &a7[v21]);
      }

      else
      {
        bn_mul_normal(v36, v38, a5, v37, a6);
      }

LABEL_28:
      v20 = v34;
      v22 = a1;
    }

    v27 = bn_add_words(a7, v22, v19, 2 * a4);
    v28 = v27 - bn_sub_words(&a7[v21], a7, v20, 2 * a4);
    v29 = bn_add_words(v20, a7, v20, 2 * a4) + v27;
    bn_select_words(v20, v18, &a7[v21], v20, 2 * a4);
    v30 = (v18 & v28 | v29 & ~v18) + bn_add_words(&a1[v39], &a1[v39], v20, 2 * a4);
    v31 = 3 * a4;
    if ((3 * a4) < v21)
    {
      v32 = &a1[v31];
      do
      {
        v33 = *v32 + v30;
        v30 = __CFADD__(*v32, v30);
        *v32++ = v33;
        ++v31;
      }

      while (v21 > v31);
    }

    if (v30)
    {
      bn_mul_part_recursive_cold_2();
    }
  }

  else
  {
    bn_mul_normal(a1, a2, (a5 + a4), a3, (a6 + a4));
    if (v13 != a6 + a5)
    {

      bzero(&a1[v13 + a5 + a6], (v13 - (a6 + a5)));
    }
  }
}

void bn_mul_recursive(unint64_t *a1, unint64_t *a2, unint64_t *a3, unsigned int a4, uint64_t a5, uint64_t a6, unint64_t *a7)
{
  if ((a4 ^ (a4 - 1)) <= a4 - 1)
  {
    bn_mul_recursive_cold_1();
  }

  if ((a5 - 1) <= 0xFFFFFFF6)
  {
    bn_mul_recursive_cold_4();
  }

  if ((a6 - 1) <= 0xFFFFFFF6)
  {
    bn_mul_recursive_cold_3();
  }

  v14 = a6 | a5;
  if (a4 != 8 || v14)
  {
    if (a4 > 15)
    {
      v15 = a4 >> 1;
      v36 = a6 + (a4 >> 1);
      v16 = &a7[a4];
      v33 = &a2[a4 >> 1];
      v17 = bn_abs_sub_part_words(a7, a2, v33, a5 + (a4 >> 1), -a5, v16);
      v30 = &a7[v15];
      v31 = &a3[v15];
      v34 = bn_abs_sub_part_words(v30, v31, a3, v36, a6, &a7[a4]) ^ v17;
      v32 = &a1[a4];
      *v37 = a4 >> 1;
      if (v15 != 8 || v14)
      {
        v19 = 2 * a4;
        bn_mul_recursive(&a7[a4], a7, v30, *v37, 0, 0);
        v21 = a3;
        v20 = a4 >> 1;
        bn_mul_recursive(a1, a2, v21, *v37, 0, 0);
        v18 = &a1[a4];
        bn_mul_recursive(v32, v33, v31, *v37, a5, a6);
      }

      else
      {
        bn_mul_comba8(&a7[a4], a7, v30);
        bn_mul_comba8(a1, a2, a3);
        v18 = &a1[a4];
        bn_mul_comba8(v32, v33, v31);
        v19 = 2 * a4;
        v20 = a4 >> 1;
      }

      v22 = bn_add_words(a7, a1, v18, a4);
      v23 = &a7[v19];
      v24 = v22 - bn_sub_words(v23, a7, &a7[a4], a4);
      v25 = bn_add_words(&a7[a4], a7, &a7[a4], a4) + v22;
      bn_select_words(v16, v34, v23, v16, a4);
      v26 = (v34 & v24 | v25 & ~v34) + bn_add_words(&a1[v20], &a1[v20], v16, a4);
      v27 = v20 + a4;
      if ((v20 + a4) < v19)
      {
        v28 = &a1[v27];
        do
        {
          v29 = *v28 + v26;
          v26 = __CFADD__(*v28, v26);
          *v28++ = v29;
          ++v27;
        }

        while (v19 > v27);
      }

      if (v26)
      {
        bn_mul_recursive_cold_2();
      }
    }

    else
    {
      bn_mul_normal(a1, a2, (a5 + a4), a3, (a6 + a4));
      if (a6 + a5 < 0)
      {

        bzero(&a1[(a5 + 2 * a4 + a6)], 8 * -(a6 + a5));
      }
    }
  }

  else
  {

    bn_mul_comba8(a1, a2, a3);
  }
}

RSA *RSA_parse_private_key(__int128 *a1)
{
  v2 = RSA_new();
  if (v2)
  {
    memset(v6, 170, sizeof(v6));
    if (CBS_get_asn1(a1, &v6[1], 536870928) && CBS_get_asn1_uint64(&v6[1], v6))
    {
      if (v6[0])
      {
        v3 = 106;
        v4 = 171;
      }

      else
      {
        if (!parse_integer(&v6[1], &v2->version) || !parse_integer(&v6[1], &v2->meth) || !parse_integer(&v6[1], &v2->engine) || !parse_integer(&v6[1], &v2->n) || !parse_integer(&v6[1], &v2->e) || !parse_integer(&v6[1], &v2->d) || !parse_integer(&v6[1], &v2->p) || !parse_integer(&v6[1], &v2->q))
        {
          goto LABEL_8;
        }

        if (v6[2])
        {
          v3 = 100;
          v4 = 187;
        }

        else
        {
          if (RSA_check_key(v2))
          {
            return v2;
          }

          v3 = 104;
          v4 = 192;
        }
      }
    }

    else
    {
      v3 = 100;
      v4 = 166;
    }

    ERR_put_error(4, 0, v3, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/rsa_extra/rsa_asn1.c", v4);
LABEL_8:
    RSA_free(v2);
    return 0;
  }

  return v2;
}

RSA *RSA_private_key_from_bytes(uint64_t a1, uint64_t a2)
{
  *&v4 = a1;
  *(&v4 + 1) = a2;
  v2 = RSA_parse_private_key(&v4);
  if (!v2 || *(&v4 + 1))
  {
    ERR_put_error(4, 0, 100, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/rsa_extra/rsa_asn1.c", 208);
    RSA_free(v2);
    return 0;
  }

  return v2;
}

uint64_t RSA_marshal_private_key(uint64_t *a1, const BIGNUM **a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = v4;
  v6[2] = v4;
  v6[0] = v4;
  if (CBB_add_asn1(a1, v6, 0x20000010u) && CBB_add_asn1_uint64(v6, 0) && marshal_integer(v6, a2[1]) && marshal_integer(v6, a2[2]) && marshal_integer(v6, a2[3]) && marshal_integer(v6, a2[4]) && marshal_integer(v6, a2[5]) && marshal_integer(v6, a2[6]) && marshal_integer(v6, a2[7]) && marshal_integer(v6, a2[8]) && CBB_flush(a1))
  {
    return 1;
  }

  ERR_put_error(4, 0, 121, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/rsa_extra/rsa_asn1.c", 228);
  return 0;
}

uint64_t RSA_private_key_to_bytes(void *a1, void *a2, const BIGNUM **a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = v6;
  v8[2] = v6;
  v8[0] = v6;
  CBB_zero(v8);
  if (CBB_init(v8, 0) && RSA_marshal_private_key(v8, a3) && CBB_finish(v8, a1, a2))
  {
    return 1;
  }

  ERR_put_error(4, 0, 121, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/rsa_extra/rsa_asn1.c", 241);
  CBB_cleanup(v8);
  return 0;
}

void __boringssl_session_state_copy_serialized_session_state_block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (v2)
  {
    free(v2);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

boringssl_concrete_boringssl_session_state *boringssl_session_state_create_from_dispatch_data(void *a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = a2;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_24;
  }

  size = dispatch_data_get_size(v5);
  if (!size)
  {
    goto LABEL_24;
  }

  v8 = size;
  buffer_from_dispatch_data = boringssl_helper_create_buffer_from_dispatch_data(v6);
  v10 = buffer_from_dispatch_data;
  if (!buffer_from_dispatch_data)
  {
    goto LABEL_25;
  }

  if (LOBYTE(buffer_from_dispatch_data->super.isa) != 1)
  {
    if (v4)
    {
      WeakRetained = objc_loadWeakRetained(v4 + 2);
      v2 = &OBJC_IVAR___boringssl_concrete_nw_protocol_boringssl_logging_disabled;
      if (WeakRetained)
      {
        v15 = WeakRetained;
        v16 = objc_loadWeakRetained(v4 + 2);
        v17 = v16[435];

        if (v17)
        {
          goto LABEL_23;
        }
      }

      v18 = objc_loadWeakRetained(v4 + 2);
      if (v18)
      {
        v19 = objc_loadWeakRetained(v4 + 2);
        v20 = (v19[435] & 1) == 0;
      }

      else
      {
        v20 = 1;
      }
    }

    else
    {
      v20 = 1;
    }

    if (v20 && g_boringssl_log)
    {
      v21 = g_boringssl_log;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        if (v4)
        {
          v20 = objc_loadWeakRetained(v4 + 2);
          v24 = v20 != 0;
          if (v20)
          {
            v2 = objc_loadWeakRetained(v4 + 2);
            v26 = v2 + 351;
          }

          else
          {
            v26 = &unk_1A9098A9F;
          }

          v25 = objc_loadWeakRetained(v4 + 2);
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v26 = &unk_1A9098A9F;
        }

        *v35 = 136446978;
        *&v35[4] = "boringssl_session_state_create_from_dispatch_data";
        *&v35[12] = 1024;
        *&v35[14] = 150;
        *&v35[18] = 2082;
        *&v35[20] = v26;
        v36 = 2048;
        v37 = v25;
        _os_log_error_impl(&dword_1A8FF5000, v21, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] Serialized data is not of the correct content type.", v35, 0x26u);
        if (v4)
        {
        }

        if (v24)
        {
        }

        if (v4)
        {
        }
      }
    }

    goto LABEL_23;
  }

  if (v8 == 1 || (v11 = BYTE1(buffer_from_dispatch_data->super.isa), v12 = v8 - 2, v12 < v11) || v11 >= 0x1D || (*v35 = 0, *&v35[8] = 0, *&v35[16] = 0xAAAAAAAAAAAAAAAALL, *&v35[24] = -1431655766, __memcpy_chk(), v12 == v11))
  {
LABEL_23:
    free(v10);
    goto LABEL_24;
  }

  v13 = SSL_SESSION_from_bytes(&v10->super.isa + v11 + 2, v12 - v11, *(v4 + 50));
  free(v10);
  if (v13)
  {
    v10 = boringssl_session_state_create(v13, v35);
    SSL_SESSION_free(v13);
    goto LABEL_25;
  }

  v27 = objc_loadWeakRetained(v4 + 2);
  if (v27)
  {
    v28 = v27;
    v29 = objc_loadWeakRetained(v4 + 2);
    v30 = v29[435];

    if (v30)
    {
LABEL_24:
      v10 = 0;
      goto LABEL_25;
    }
  }

  v31 = objc_loadWeakRetained(v4 + 2);
  if (v31)
  {
    v32 = objc_loadWeakRetained(v4 + 2);
    v33 = (v32[435] & 1) == 0;
  }

  else
  {
    v33 = 1;
  }

  v10 = 0;
  if (v33 && g_boringssl_log)
  {
    v34 = g_boringssl_log;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      boringssl_session_state_create_from_dispatch_data_cold_1(v4, v34);
    }

    goto LABEL_24;
  }

LABEL_25:

  v22 = *MEMORY[0x1E69E9840];
  return v10;
}

_WORD *bssl::SSLBuffer::Clear(_WORD *this)
{
  this[4] = this[5];
  this[6] = 0;
  this[7] = this[8];
  return this;
}

uint64_t BCM_sha1_init(_OWORD *a1)
{
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = xmmword_1A90AF840;
  a1[1] = 0u;
  *(a1 + 4) = -1009589776;
  return 0;
}

uint64_t sha1_block_data_order(int *a1, unsigned int *a2, uint64_t a3)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[1];
  v6 = a1[2];
  v7 = *a1;
  do
  {
    v531 = v6;
    v532 = v5;
    v530 = v3;
    v527 = v7;
    v528 = v4;
    v533 = a2;
    v529 = a3;
    v8 = v7;
    HIDWORD(v10) = v7;
    LODWORD(v10) = v7;
    v9 = v10 >> 27;
    v11 = v3 & ~v5;
    v12 = bswap32(*a2);
    HIDWORD(v10) = v5;
    LODWORD(v10) = v5;
    v13 = v10 >> 2;
    v14 = v8 & __ROR4__(v5, 2);
    v15 = bswap32(a2[1]);
    v16 = v9 + v4 + 1518500249 + (v6 & v5 | v11) + v12;
    HIDWORD(v10) = v16;
    LODWORD(v10) = v16;
    v17 = v10 >> 27;
    HIDWORD(v10) = v8;
    LODWORD(v10) = v8;
    v18 = v10 >> 2;
    v19 = v16 & __ROR4__(v8, 2);
    v20 = v530 + 1518500249 + (v14 | v531 & ~v8) + v15 + v17;
    HIDWORD(v10) = v20;
    LODWORD(v10) = v20;
    v21 = v10 >> 27;
    HIDWORD(v10) = v16;
    LODWORD(v10) = v16;
    v22 = v10 >> 2;
    v23 = bswap32(a2[2]);
    v24 = bswap32(a2[3]);
    v26 = __PAIR64__(v20, __ROR4__(v16, 2));
    v25 = v20 & v26;
    LODWORD(v26) = v20;
    v27 = v26 >> 2;
    v28 = v531 + 1518500249 + v23 + (v19 | v13 & ~v16) + v21;
    v29 = a2[4];
    v30 = a2[5];
    HIDWORD(v26) = v28;
    LODWORD(v26) = v28;
    v31 = v26 >> 27;
    v33 = __PAIR64__(v28, __ROR4__(v20, 2));
    v32 = v28 & v33;
    v34 = bswap32(v29);
    LODWORD(v33) = v28;
    v35 = v33 >> 2;
    v36 = v24;
    v37 = v13 + 1518500249 + v24 + (v25 | v18 & ~v20) + v31;
    HIDWORD(v33) = v37;
    LODWORD(v33) = v37;
    v38 = v34;
    v39 = v18 + 1518500249 + v34 + (v32 | v22 & ~v28) + (v33 >> 27);
    HIDWORD(v33) = v39;
    LODWORD(v33) = v39;
    v40 = v33 >> 27;
    v42 = __PAIR64__(v37, __ROR4__(v28, 2));
    v41 = v37 & v42;
    LODWORD(v42) = v37;
    v43 = v42 >> 2;
    v45 = __PAIR64__(v39, __ROR4__(v37, 2));
    v44 = v39 & v45;
    v46 = bswap32(v30);
    v47 = v41 | v27 & ~v37;
    LODWORD(v45) = v39;
    v48 = v45 >> 2;
    v49 = v22 + v46 + 1518500249 + v47 + v40;
    HIDWORD(v45) = v49;
    LODWORD(v45) = v49;
    v50 = v45 >> 27;
    v519 = bswap32(v533[6]);
    HIDWORD(v45) = v49;
    LODWORD(v45) = v49;
    v51 = v45 >> 2;
    v52 = v27 + v519 + 1518500249 + (v44 | v35 & ~v39) + v50;
    HIDWORD(v45) = v52;
    LODWORD(v45) = v52;
    v53 = v45 >> 27;
    v54 = __PAIR64__(v52, __ROR4__(v39, 2));
    v523 = bswap32(v533[7]);
    v55 = v49 & v54 | v43 & ~v49;
    LODWORD(v54) = v52;
    v56 = v54 >> 2;
    v57 = v523 + 1518500249 + v35 + v55 + v53;
    HIDWORD(v54) = v57;
    LODWORD(v54) = v57;
    v58 = v54 >> 27;
    v60 = __PAIR64__(v57, __ROR4__(v52, 2));
    v59 = v57 & v60;
    LODWORD(v60) = v57;
    v61 = v60 >> 2;
    v515 = bswap32(v533[8]);
    v62 = v515 + 1518500249 + v43 + (v52 & __ROR4__(v49, 2) | v48 & ~v52) + v58;
    v63 = bswap32(v533[13]);
    HIDWORD(v60) = v62;
    LODWORD(v60) = v62;
    v64 = v60 >> 27;
    v65 = v23 ^ v12 ^ v515 ^ v63;
    HIDWORD(v60) = v65;
    LODWORD(v60) = v65;
    v66 = v60 >> 31;
    v68 = __PAIR64__(v62, __ROR4__(v57, 2));
    v67 = v62 & v68;
    v69 = bswap32(v533[9]);
    LODWORD(v68) = v62;
    v70 = v68 >> 2;
    v71 = v69 + 1518500249 + v48 + (v59 | v51 & ~v57) + v64;
    HIDWORD(v68) = v71;
    LODWORD(v68) = v71;
    v72 = v68 >> 27;
    v73 = bswap32(v533[10]);
    HIDWORD(v68) = v71;
    LODWORD(v68) = v71;
    v74 = v68 >> 2;
    v75 = v73 + 1518500249 + v51 + (v67 | v56 & ~v62) + v72;
    HIDWORD(v68) = v75;
    LODWORD(v68) = v75;
    v76 = v68 >> 27;
    v77 = __PAIR64__(v75, __ROR4__(v62, 2));
    v78 = bswap32(v533[11]);
    v79 = v71 & v77 | v61 & ~v71;
    LODWORD(v77) = v75;
    v80 = v77 >> 2;
    v81 = v78 + 1518500249 + v56 + v79 + v76;
    HIDWORD(v77) = v81;
    LODWORD(v77) = v81;
    v82 = v77 >> 27;
    v83 = __PAIR64__(v81, __ROR4__(v71, 2));
    v84 = bswap32(v533[12]);
    v85 = v75 & v83 | v70 & ~v75;
    LODWORD(v83) = v81;
    v86 = v83 >> 2;
    v87 = v84 + 1518500249 + v61 + v85 + v82;
    HIDWORD(v83) = v87;
    LODWORD(v83) = v87;
    v88 = v83 >> 27;
    v89 = bswap32(v533[14]);
    v91 = __PAIR64__(v87, __ROR4__(v81, 2));
    v90 = v87 & v91;
    v489 = v63;
    v92 = v63 + 1518500249 + v70 + (v81 & __ROR4__(v75, 2) | v74 & ~v81);
    LODWORD(v91) = v87;
    v93 = v91 >> 2;
    v94 = v92 + v88;
    HIDWORD(v91) = v92 + v88;
    LODWORD(v91) = v92 + v88;
    v95 = v91 >> 27;
    HIDWORD(v91) = v36 ^ v15 ^ v69 ^ v89;
    LODWORD(v91) = HIDWORD(v91);
    v96 = v91 >> 31;
    v97 = HIDWORD(v91);
    HIDWORD(v91) = v94;
    LODWORD(v91) = v94;
    v98 = v91 >> 2;
    v99 = v89 + 1518500249 + v74 + (v90 | v80 & ~v87) + v95;
    HIDWORD(v91) = v99;
    LODWORD(v91) = v99;
    v100 = v91 >> 27;
    v101 = bswap32(v533[15]);
    v102 = v38;
    v103 = v38 ^ v23 ^ v73 ^ v101;
    v105 = __PAIR64__(v103, __ROR4__(v94, 2));
    v104 = v99 & v105;
    LODWORD(v105) = v103;
    v505 = v105 >> 31;
    v486 = v103;
    v106 = v94 & __ROR4__(v87, 2) | v86 & ~v94;
    HIDWORD(v105) = v99;
    LODWORD(v105) = v99;
    v107 = v105 >> 2;
    v108 = v101 + 1518500249 + v80 + v106 + v100;
    HIDWORD(v105) = v108;
    LODWORD(v105) = v108;
    v109 = v105 >> 27;
    v111 = __PAIR64__(v108, __ROR4__(v99, 2));
    v110 = v108 & v111;
    v112 = v66 + 1518500249;
    LODWORD(v111) = v108;
    v113 = v111 >> 2;
    v114 = v112 + v86 + (v104 | v93 & ~v99) + v109;
    HIDWORD(v111) = v114;
    LODWORD(v111) = v114;
    v115 = v111 >> 27;
    LODWORD(v111) = v46 ^ v36 ^ v78 ^ __ROR4__(v65, 31);
    HIDWORD(v111) = v111;
    v492 = v111 >> 31;
    v116 = v111;
    v117 = v114 & __ROR4__(v108, 2);
    v119 = __PAIR64__(v114, __ROR4__(v97, 31));
    v118 = v519 ^ v102 ^ v84 ^ v119;
    LODWORD(v119) = v114;
    v120 = v119 >> 2;
    v121 = v96 + 1518500249 + v93 + (v110 | v98 & ~v108) + v115;
    HIDWORD(v119) = v121;
    LODWORD(v119) = v121;
    v122 = v119 >> 27;
    HIDWORD(v119) = v118;
    LODWORD(v119) = v118;
    v509 = v119 >> 31;
    v123 = v523 ^ v46 ^ v63 ^ __ROR4__(v103, 31);
    v125 = __PAIR64__(v121, __ROR4__(v114, 2));
    v124 = v121 & v125;
    LODWORD(v125) = v121;
    v126 = v125 >> 2;
    HIDWORD(v125) = v123;
    LODWORD(v125) = v123;
    v502 = v125 >> 31;
    v127 = v505 + 1518500249 + v98 + (v117 | v107 & ~v114) + v122;
    HIDWORD(v125) = v127;
    LODWORD(v125) = v127;
    v128 = v125 >> 27;
    HIDWORD(v125) = v127;
    LODWORD(v125) = v127;
    v129 = v125 >> 2;
    v130 = v492 + 1518500249 + v107 + (v124 | v113 & ~v121) + v128;
    HIDWORD(v125) = v130;
    LODWORD(v125) = v130;
    v131 = v125 >> 27;
    HIDWORD(v125) = v130;
    LODWORD(v125) = v130;
    v132 = v125 >> 2;
    LODWORD(v125) = v515 ^ v519 ^ v89 ^ __ROR4__(v116, 31);
    v133 = v125;
    HIDWORD(v125) = v125;
    v483 = v125 >> 31;
    v134 = v509 + 1859775393 + v113 + (v126 ^ __ROR4__(v114, 2) ^ v127) + v131;
    HIDWORD(v125) = v134;
    LODWORD(v125) = v134;
    v135 = v125 >> 27;
    v137 = __PAIR64__(v134, __ROR4__(v118, 31));
    v136 = v69 ^ v523 ^ v101 ^ v137;
    LODWORD(v137) = v134;
    v138 = v137 >> 2;
    v139 = v502 + 1859775393 + v120 + (v129 ^ __ROR4__(v121, 2) ^ v130) + v135;
    HIDWORD(v137) = v139;
    LODWORD(v137) = v139;
    v140 = v137 >> 27;
    HIDWORD(v137) = v136;
    LODWORD(v137) = v136;
    v479 = v137 >> 31;
    v141 = v73;
    v142 = v65;
    v143 = v73 ^ v515 ^ __ROR4__(v65, 31) ^ __ROR4__(v123, 31);
    v144 = v483 + 1859775393 + v126 + (v132 ^ __ROR4__(v127, 2) ^ v134) + v140;
    HIDWORD(v137) = v144;
    LODWORD(v137) = v144;
    v145 = v137 >> 27;
    HIDWORD(v137) = v143;
    LODWORD(v137) = v143;
    v146 = v137 >> 31;
    v147 = v479 + 1859775393 + v129 + (v138 ^ __ROR4__(v130, 2) ^ v139) + v145;
    HIDWORD(v137) = v139;
    LODWORD(v137) = v139;
    v148 = v137 >> 2;
    v149 = __PAIR64__(v147, __ROR4__(v134, 2));
    v150 = v146 + 1859775393 + v132 + (v148 ^ v149 ^ v144);
    LODWORD(v149) = v147;
    v151 = v78 ^ v69 ^ __ROR4__(v97, 31);
    v152 = v97;
    v154 = v150 + (v149 >> 27);
    LODWORD(v149) = v151 ^ __ROR4__(v133, 31);
    v153 = v149;
    HIDWORD(v149) = v149;
    v520 = v149 >> 31;
    v155 = v520 + 1859775393 + v138;
    HIDWORD(v149) = v144;
    LODWORD(v149) = v144;
    v156 = v149 >> 2;
    v157 = __PAIR64__(v154, __ROR4__(v139, 2));
    v158 = v155 + (v156 ^ v157 ^ v147);
    LODWORD(v157) = v154;
    v159 = v158 + (v157 >> 27);
    LODWORD(v157) = v84 ^ v141 ^ __ROR4__(v486, 31) ^ __ROR4__(v136, 31);
    v160 = v157;
    HIDWORD(v157) = v157;
    v161 = v157 >> 31;
    HIDWORD(v157) = v147;
    LODWORD(v157) = v147;
    v162 = v157 >> 2;
    v163 = __PAIR64__(v159, __ROR4__(v144, 2));
    v164 = v161 + 1859775393 + v148 + (v162 ^ v163 ^ v154);
    LODWORD(v163) = v159;
    v165 = v164 + (v163 >> 27);
    v166 = v116;
    LODWORD(v163) = v489 ^ v78 ^ __ROR4__(v116, 31) ^ __ROR4__(v143, 31);
    v167 = v163;
    HIDWORD(v163) = v163;
    v499 = v163 >> 31;
    HIDWORD(v163) = v154;
    LODWORD(v163) = v154;
    v168 = v163 >> 2;
    v169 = __PAIR64__(v165, __ROR4__(v147, 2));
    v170 = v499 + 1859775393 + v156 + (v168 ^ v169 ^ v159);
    LODWORD(v169) = v165;
    v171 = v170 + (v169 >> 27);
    LODWORD(v169) = v89 ^ v84 ^ __ROR4__(v118, 31) ^ __ROR4__(v153, 31);
    v172 = v169;
    HIDWORD(v169) = v169;
    v516 = v169 >> 31;
    v173 = v516 + 1859775393 + v162;
    HIDWORD(v169) = v159;
    LODWORD(v169) = v159;
    v174 = v169 >> 2;
    v175 = __PAIR64__(v171, __ROR4__(v154, 2));
    v176 = v173 + (v174 ^ v175 ^ v165);
    LODWORD(v175) = v171;
    v177 = v176 + (v175 >> 27);
    LODWORD(v175) = v101 ^ v489 ^ __ROR4__(v123, 31) ^ __ROR4__(v160, 31);
    v178 = v175;
    HIDWORD(v175) = v175;
    v524 = v175 >> 31;
    HIDWORD(v175) = v165;
    LODWORD(v175) = v165;
    v179 = v175 >> 2;
    v180 = __PAIR64__(v177, __ROR4__(v159, 2));
    v181 = v524 + 1859775393 + v168 + (v179 ^ v180 ^ v171);
    LODWORD(v180) = v177;
    v182 = v181 + (v180 >> 27);
    LODWORD(v180) = v89 ^ __ROR4__(v142, 31) ^ __ROR4__(v133, 31) ^ __ROR4__(v167, 31);
    v183 = v180;
    HIDWORD(v180) = v180;
    v512 = v180 >> 31;
    HIDWORD(v180) = v171;
    LODWORD(v180) = v171;
    v184 = v180 >> 2;
    v185 = __PAIR64__(v182, __ROR4__(v165, 2));
    v186 = v512 + 1859775393 + v174 + (v184 ^ v185 ^ v177);
    LODWORD(v185) = v182;
    v187 = v186 + (v185 >> 27);
    LODWORD(v185) = v101 ^ __ROR4__(v152, 31) ^ __ROR4__(v136, 31) ^ __ROR4__(v172, 31);
    v188 = v185;
    HIDWORD(v185) = v185;
    v496 = v185 >> 31;
    v189 = v496 + 1859775393 + v179;
    HIDWORD(v185) = v177;
    LODWORD(v185) = v177;
    v190 = v185 >> 2;
    v191 = __PAIR64__(v187, __ROR4__(v171, 2));
    v192 = v189 + (v190 ^ v191 ^ v182);
    LODWORD(v191) = v187;
    v193 = v192 + (v191 >> 27);
    LODWORD(v191) = v505 ^ __ROR4__(v142, 31) ^ __ROR4__(v143, 31) ^ __ROR4__(v178, 31);
    v194 = v191;
    HIDWORD(v191) = v191;
    v506 = v191 >> 31;
    HIDWORD(v191) = v182;
    LODWORD(v191) = v182;
    v195 = v191 >> 2;
    v196 = __PAIR64__(v193, __ROR4__(v177, 2));
    v197 = v506 + 1859775393 + v184 + (v195 ^ v196 ^ v187);
    LODWORD(v196) = v193;
    v198 = v197 + (v196 >> 27);
    LODWORD(v196) = v492 ^ __ROR4__(v152, 31) ^ __ROR4__(v153, 31) ^ __ROR4__(v183, 31);
    v199 = v196;
    HIDWORD(v196) = v196;
    v493 = v196 >> 31;
    v200 = v493 + 1859775393 + v190;
    HIDWORD(v196) = v187;
    LODWORD(v196) = v187;
    v201 = v196 >> 2;
    v202 = __PAIR64__(v198, __ROR4__(v182, 2));
    v203 = v200 + (v201 ^ v202 ^ v193);
    LODWORD(v202) = v198;
    v204 = v203 + (v202 >> 27);
    LODWORD(v202) = v509 ^ __ROR4__(v486, 31) ^ __ROR4__(v160, 31) ^ __ROR4__(v188, 31);
    v205 = v202;
    HIDWORD(v202) = v202;
    v490 = v202 >> 31;
    HIDWORD(v202) = v193;
    LODWORD(v202) = v193;
    v206 = v202 >> 2;
    v207 = __PAIR64__(v204, __ROR4__(v187, 2));
    v208 = v490 + 1859775393 + v195 + (v206 ^ v207 ^ v198);
    LODWORD(v207) = v204;
    v209 = v208 + (v207 >> 27);
    LODWORD(v207) = v502 ^ __ROR4__(v166, 31) ^ __ROR4__(v167, 31) ^ __ROR4__(v194, 31);
    v210 = v207;
    HIDWORD(v207) = v207;
    v487 = v207 >> 31;
    v211 = v487 + 1859775393 + v201;
    HIDWORD(v207) = v198;
    LODWORD(v207) = v198;
    v212 = v207 >> 2;
    v213 = __PAIR64__(v209, __ROR4__(v193, 2));
    v214 = v211 + (v212 ^ v213 ^ v204);
    LODWORD(v213) = v209;
    v215 = v214 + (v213 >> 27);
    LODWORD(v213) = v483 ^ __ROR4__(v118, 31) ^ __ROR4__(v172, 31) ^ __ROR4__(v199, 31);
    v216 = v213;
    HIDWORD(v213) = v213;
    v481 = v213 >> 31;
    v217 = v481 + 1859775393 + v206;
    HIDWORD(v213) = v204;
    LODWORD(v213) = v204;
    v218 = v213 >> 2;
    v219 = __PAIR64__(v215, __ROR4__(v198, 2));
    v220 = v217 + (v218 ^ v219 ^ v209);
    LODWORD(v219) = v215;
    v221 = v220 + (v219 >> 27);
    LODWORD(v219) = v479 ^ __ROR4__(v123, 31) ^ __ROR4__(v178, 31) ^ __ROR4__(v205, 31);
    HIDWORD(v219) = v219;
    v484 = v219 >> 31;
    v222 = v219;
    HIDWORD(v219) = v209;
    LODWORD(v219) = v209;
    v223 = v219 >> 2;
    v224 = __PAIR64__(v221, __ROR4__(v204, 2));
    v225 = v484 + 1859775393 + v212 + (v223 ^ v224 ^ v215);
    LODWORD(v224) = v221;
    v226 = v225 + (v224 >> 27);
    LODWORD(v224) = v146 ^ __ROR4__(v133, 31) ^ __ROR4__(v183, 31) ^ __ROR4__(v210, 31);
    v227 = v224;
    HIDWORD(v224) = v224;
    v510 = v224 >> 31;
    v228 = v510 + 1859775393 + v218;
    HIDWORD(v224) = v215;
    LODWORD(v224) = v215;
    v229 = v224 >> 2;
    v230 = __PAIR64__(v226, __ROR4__(v209, 2));
    v231 = v228 + (v229 ^ v230 ^ v221);
    LODWORD(v230) = v226;
    v232 = v231 + (v230 >> 27);
    LODWORD(v230) = v520 ^ __ROR4__(v136, 31) ^ __ROR4__(v188, 31) ^ __ROR4__(v216, 31);
    HIDWORD(v230) = v230;
    v521 = v230 >> 31;
    v233 = v230;
    v234 = v521 + 1859775393 + v223;
    HIDWORD(v230) = v221;
    LODWORD(v230) = v221;
    v235 = v230 >> 2;
    v236 = __PAIR64__(v232, __ROR4__(v215, 2));
    v237 = v234 + (v235 ^ v236 ^ v226);
    LODWORD(v236) = v232;
    v238 = v237 + (v236 >> 27);
    LODWORD(v236) = v161 ^ __ROR4__(v143, 31) ^ __ROR4__(v194, 31) ^ __ROR4__(v222, 31);
    v239 = v236;
    HIDWORD(v236) = v236;
    v503 = v236 >> 31;
    HIDWORD(v236) = v238;
    LODWORD(v236) = v238;
    v240 = v503 - 1894007588 + v229 + ((v232 | __ROR4__(v226, 2)) & __ROR4__(v221, 2) | v232 & __ROR4__(v226, 2)) + (v236 >> 27);
    v241 = v499 ^ __ROR4__(v153, 31) ^ __ROR4__(v199, 31);
    v242 = v227;
    LODWORD(v236) = v241 ^ __ROR4__(v227, 31);
    HIDWORD(v236) = v236;
    v500 = v236 >> 31;
    v243 = v236;
    HIDWORD(v236) = v240;
    LODWORD(v236) = v240;
    v244 = v500 - 1894007588 + v235 + ((v238 | __ROR4__(v232, 2)) & __ROR4__(v226, 2) | v238 & __ROR4__(v232, 2)) + (v236 >> 27);
    v246 = __PAIR64__(v226, __ROR4__(v160, 31));
    v245 = v516 ^ v246;
    LODWORD(v246) = v226;
    v247 = v246 >> 2;
    v249 = v233;
    LODWORD(v246) = v245 ^ __ROR4__(v205, 31) ^ __ROR4__(v233, 31);
    v248 = v246;
    HIDWORD(v246) = v246;
    v517 = v246 >> 31;
    v251 = __PAIR64__(v244, __ROR4__(v167, 31));
    v250 = v524 ^ v251;
    LODWORD(v251) = v244;
    v252 = v517 - 1894007588 + v247 + ((v240 | __ROR4__(v238, 2)) & __ROR4__(v232, 2) | v240 & __ROR4__(v238, 2)) + (v251 >> 27);
    HIDWORD(v251) = v232;
    LODWORD(v251) = v232;
    v253 = v251 >> 2;
    LODWORD(v251) = v250 ^ __ROR4__(v210, 31) ^ __ROR4__(v239, 31);
    v254 = v251;
    HIDWORD(v251) = v251;
    v525 = v251 >> 31;
    v255 = __PAIR64__(v252, __ROR4__(v240, 2));
    v256 = v525 - 1894007588 + v253 + ((v244 | __ROR4__(v240, 2)) & __ROR4__(v238, 2) | v244 & v255);
    LODWORD(v255) = v252;
    v257 = v256 + (v255 >> 27);
    v259 = __PAIR64__(v238, __ROR4__(v216, 31));
    v258 = v512 ^ __ROR4__(v172, 31) ^ v259;
    LODWORD(v259) = v238;
    v260 = v259 >> 2;
    LODWORD(v259) = v258 ^ __ROR4__(v243, 31);
    v261 = v259;
    HIDWORD(v259) = v259;
    v513 = v259 >> 31;
    HIDWORD(v259) = v257;
    LODWORD(v259) = v257;
    v262 = v513 - 1894007588 + v260 + ((v252 | __ROR4__(v244, 2)) & __ROR4__(v240, 2) | v252 & __ROR4__(v244, 2)) + (v259 >> 27);
    v264 = __PAIR64__(v240, __ROR4__(v248, 31));
    v263 = v496 ^ __ROR4__(v178, 31) ^ __ROR4__(v222, 31) ^ v264;
    LODWORD(v264) = v240;
    v265 = v264 >> 2;
    HIDWORD(v264) = v263;
    LODWORD(v264) = v263;
    v497 = v264 >> 31;
    HIDWORD(v264) = v262;
    LODWORD(v264) = v262;
    v266 = v497 - 1894007588 + v265 + ((v257 | __ROR4__(v252, 2)) & __ROR4__(v244, 2) | v257 & __ROR4__(v252, 2)) + (v264 >> 27);
    v268 = __PAIR64__(v244, __ROR4__(v242, 31));
    v267 = v506 ^ __ROR4__(v183, 31) ^ v268;
    LODWORD(v268) = v244;
    v269 = v268 >> 2;
    v270 = v267 ^ __ROR4__(v254, 31);
    v272 = __PAIR64__(v270, __ROR4__(v252, 2));
    v271 = (v262 | __ROR4__(v257, 2)) & v272;
    LODWORD(v272) = v270;
    v507 = v272 >> 31;
    v273 = __PAIR64__(v266, __ROR4__(v257, 2));
    v274 = v507 - 1894007588 + v269 + (v271 | v262 & v273);
    LODWORD(v273) = v266;
    v275 = v274 + (v273 >> 27);
    v276 = __PAIR64__(v252, __ROR4__(v262, 2));
    v277 = (v266 | __ROR4__(v262, 2)) & __ROR4__(v257, 2) | v266 & v276;
    LODWORD(v276) = v252;
    v278 = v276 >> 2;
    LODWORD(v276) = v493 ^ __ROR4__(v188, 31) ^ __ROR4__(v233, 31) ^ __ROR4__(v261, 31);
    v279 = v276;
    HIDWORD(v276) = v276;
    v494 = v276 >> 31;
    HIDWORD(v276) = v275;
    LODWORD(v276) = v275;
    v280 = v494 - 1894007588 + v278 + v277 + (v276 >> 27);
    v282 = __PAIR64__(v257, __ROR4__(v194, 31));
    v281 = v490 ^ v282;
    LODWORD(v282) = v257;
    v283 = v282 >> 2;
    LODWORD(v282) = v281 ^ __ROR4__(v239, 31) ^ __ROR4__(v263, 31);
    v284 = v282;
    HIDWORD(v282) = v282;
    v491 = v282 >> 31;
    v285 = v491 - 1894007588 + v283 + ((v275 | __ROR4__(v266, 2)) & __ROR4__(v262, 2) | v275 & __ROR4__(v266, 2));
    v287 = __PAIR64__(v280, __ROR4__(v199, 31));
    v286 = v487 ^ v287;
    LODWORD(v287) = v280;
    v288 = v285 + (v287 >> 27);
    HIDWORD(v287) = v262;
    LODWORD(v287) = v262;
    v289 = v287 >> 2;
    v290 = v243;
    LODWORD(v287) = v286 ^ __ROR4__(v243, 31) ^ __ROR4__(v270, 31);
    v291 = v287;
    HIDWORD(v287) = v287;
    v488 = v287 >> 31;
    v292 = __PAIR64__(v288, __ROR4__(v275, 2));
    v293 = v488 - 1894007588 + v289 + ((v280 | __ROR4__(v275, 2)) & __ROR4__(v266, 2) | v280 & v292);
    LODWORD(v292) = v288;
    v294 = v293 + (v292 >> 27);
    v296 = __PAIR64__(v266, __ROR4__(v248, 31));
    v295 = v481 ^ __ROR4__(v205, 31) ^ v296;
    LODWORD(v296) = v266;
    v297 = v296 >> 2;
    LODWORD(v296) = v295 ^ __ROR4__(v279, 31);
    v298 = v296;
    HIDWORD(v296) = v296;
    v482 = v296 >> 31;
    HIDWORD(v296) = v294;
    LODWORD(v296) = v294;
    v299 = v482 - 1894007588 + v297 + ((v288 | __ROR4__(v280, 2)) & __ROR4__(v275, 2) | v288 & __ROR4__(v280, 2)) + (v296 >> 27);
    v301 = __PAIR64__(v275, __ROR4__(v284, 31));
    v300 = v484 ^ __ROR4__(v210, 31) ^ __ROR4__(v254, 31) ^ v301;
    LODWORD(v301) = v275;
    v302 = v301 >> 2;
    HIDWORD(v301) = v300;
    LODWORD(v301) = v300;
    v485 = v301 >> 31;
    HIDWORD(v301) = v299;
    LODWORD(v301) = v299;
    v303 = v485 - 1894007588 + v302 + ((v294 | __ROR4__(v288, 2)) & __ROR4__(v280, 2) | v294 & __ROR4__(v288, 2)) + (v301 >> 27);
    v305 = __PAIR64__(v280, __ROR4__(v261, 31));
    v304 = v510 ^ __ROR4__(v216, 31) ^ v305;
    LODWORD(v305) = v280;
    v306 = v305 >> 2;
    v307 = v304 ^ __ROR4__(v291, 31);
    v309 = __PAIR64__(v307, __ROR4__(v288, 2));
    v308 = (v299 | __ROR4__(v294, 2)) & v309;
    LODWORD(v309) = v307;
    v511 = v309 >> 31;
    v310 = __PAIR64__(v303, __ROR4__(v294, 2));
    v311 = v511 - 1894007588 + v306 + (v308 | v299 & v310);
    LODWORD(v310) = v303;
    v312 = v311 + (v310 >> 27);
    v313 = __PAIR64__(v288, __ROR4__(v299, 2));
    v314 = (v303 | __ROR4__(v299, 2)) & __ROR4__(v294, 2) | v303 & v313;
    LODWORD(v313) = v288;
    v315 = v313 >> 2;
    LODWORD(v313) = v521 ^ __ROR4__(v222, 31) ^ __ROR4__(v263, 31) ^ __ROR4__(v298, 31);
    v316 = v313;
    HIDWORD(v313) = v313;
    v522 = v313 >> 31;
    HIDWORD(v313) = v312;
    LODWORD(v313) = v312;
    v317 = v522 - 1894007588 + v315 + v314 + (v313 >> 27);
    v319 = __PAIR64__(v294, __ROR4__(v242, 31));
    v318 = v503 ^ v319;
    LODWORD(v319) = v294;
    v320 = v319 >> 2;
    LODWORD(v319) = v318 ^ __ROR4__(v270, 31) ^ __ROR4__(v300, 31);
    v321 = v319;
    HIDWORD(v319) = v319;
    v504 = v319 >> 31;
    v322 = v504 - 1894007588 + v320 + ((v312 | __ROR4__(v303, 2)) & __ROR4__(v299, 2) | v312 & __ROR4__(v303, 2));
    v324 = __PAIR64__(v317, __ROR4__(v249, 31));
    v323 = v500 ^ v324;
    LODWORD(v324) = v317;
    v325 = v322 + (v324 >> 27);
    HIDWORD(v324) = v299;
    LODWORD(v324) = v299;
    v326 = v324 >> 2;
    LODWORD(v324) = v323 ^ __ROR4__(v279, 31) ^ __ROR4__(v307, 31);
    v327 = v324;
    HIDWORD(v324) = v324;
    v501 = v324 >> 31;
    v328 = __PAIR64__(v325, __ROR4__(v312, 2));
    v329 = v501 - 1894007588 + v326 + ((v317 | __ROR4__(v312, 2)) & __ROR4__(v303, 2) | v317 & v328);
    LODWORD(v328) = v325;
    v330 = v329 + (v328 >> 27);
    v332 = __PAIR64__(v303, __ROR4__(v284, 31));
    v331 = v517 ^ __ROR4__(v239, 31) ^ v332;
    LODWORD(v332) = v303;
    v333 = v332 >> 2;
    LODWORD(v332) = v331 ^ __ROR4__(v316, 31);
    v334 = v332;
    HIDWORD(v332) = v332;
    v518 = v332 >> 31;
    HIDWORD(v332) = v330;
    LODWORD(v332) = v330;
    v335 = v518 - 1894007588 + v333 + ((v325 | __ROR4__(v317, 2)) & __ROR4__(v312, 2) | v325 & __ROR4__(v317, 2)) + (v332 >> 27);
    v337 = __PAIR64__(v312, __ROR4__(v321, 31));
    v336 = v525 ^ __ROR4__(v290, 31) ^ __ROR4__(v291, 31) ^ v337;
    LODWORD(v337) = v312;
    v338 = v337 >> 2;
    HIDWORD(v337) = v336;
    LODWORD(v337) = v336;
    v526 = v337 >> 31;
    HIDWORD(v337) = v335;
    LODWORD(v337) = v335;
    v339 = v526 - 1894007588 + v338 + ((v330 | __ROR4__(v325, 2)) & __ROR4__(v317, 2) | v330 & __ROR4__(v325, 2)) + (v337 >> 27);
    v341 = __PAIR64__(v317, __ROR4__(v298, 31));
    v340 = v513 ^ __ROR4__(v248, 31) ^ v341;
    LODWORD(v341) = v317;
    v342 = v341 >> 2;
    v343 = v340 ^ __ROR4__(v327, 31);
    v345 = __PAIR64__(v343, __ROR4__(v325, 2));
    v344 = (v335 | __ROR4__(v330, 2)) & v345;
    LODWORD(v345) = v343;
    v480 = v345 >> 31;
    v346 = __PAIR64__(v339, __ROR4__(v330, 2));
    v347 = v480 - 1894007588 + v342 + (v344 | v335 & v346);
    LODWORD(v346) = v339;
    v348 = v347 + (v346 >> 27);
    v349 = __PAIR64__(v325, __ROR4__(v335, 2));
    v350 = (v339 | __ROR4__(v335, 2)) & __ROR4__(v330, 2) | v339 & v349;
    LODWORD(v349) = v325;
    v351 = v349 >> 2;
    LODWORD(v349) = v497 ^ __ROR4__(v254, 31) ^ __ROR4__(v300, 31) ^ __ROR4__(v334, 31);
    v352 = v349;
    HIDWORD(v349) = v349;
    v353 = v349 >> 31;
    v354 = v353 - 1894007588 + v351 + v350;
    v356 = __PAIR64__(v330, __ROR4__(v261, 31));
    v355 = v507 ^ v356;
    LODWORD(v356) = v330;
    v357 = v356 >> 2;
    LODWORD(v356) = v355 ^ __ROR4__(v307, 31) ^ __ROR4__(v336, 31);
    v358 = v356;
    HIDWORD(v356) = v356;
    v498 = v356 >> 31;
    HIDWORD(v356) = v348;
    LODWORD(v356) = v348;
    v359 = v354 + (v356 >> 27);
    result = 3395469782;
    HIDWORD(v356) = v339;
    LODWORD(v356) = v339;
    v361 = v356 >> 2;
    v362 = v498 - 899497514 + v357 + (v361 ^ __ROR4__(v335, 2) ^ v348);
    v364 = __PAIR64__(v359, __ROR4__(v263, 31));
    v363 = v494 ^ v364;
    LODWORD(v364) = v359;
    v365 = v362 + (v364 >> 27);
    HIDWORD(v364) = v335;
    LODWORD(v364) = v335;
    v366 = v364 >> 2;
    LODWORD(v364) = v363 ^ __ROR4__(v316, 31) ^ __ROR4__(v343, 31);
    v367 = v364;
    HIDWORD(v364) = v364;
    v495 = v364 >> 31;
    HIDWORD(v364) = v348;
    LODWORD(v364) = v348;
    v368 = v364 >> 2;
    v369 = __PAIR64__(v365, __ROR4__(v339, 2));
    v370 = v495 - 899497514 + v366 + (v368 ^ v369 ^ v359);
    LODWORD(v369) = v365;
    v371 = v370 + (v369 >> 27);
    LODWORD(v369) = v491 ^ __ROR4__(v270, 31) ^ __ROR4__(v321, 31) ^ __ROR4__(v352, 31);
    v372 = v369;
    HIDWORD(v369) = v369;
    v373 = v369 >> 31;
    HIDWORD(v369) = v359;
    LODWORD(v369) = v359;
    v374 = v369 >> 2;
    v375 = __PAIR64__(v371, __ROR4__(v348, 2));
    v376 = v373 - 899497514 + v361 + (v374 ^ v375 ^ v365);
    LODWORD(v375) = v371;
    v377 = v376 + (v375 >> 27);
    LODWORD(v375) = v488 ^ __ROR4__(v279, 31) ^ __ROR4__(v327, 31) ^ __ROR4__(v358, 31);
    v378 = v375;
    HIDWORD(v375) = v375;
    v508 = v375 >> 31;
    v379 = v508 - 899497514 + v368;
    HIDWORD(v375) = v365;
    LODWORD(v375) = v365;
    v380 = v375 >> 2;
    v381 = __PAIR64__(v377, __ROR4__(v359, 2));
    v382 = v379 + (v380 ^ v381 ^ v371);
    LODWORD(v381) = v377;
    v383 = v382 + (v381 >> 27);
    LODWORD(v381) = v482 ^ __ROR4__(v284, 31) ^ __ROR4__(v334, 31) ^ __ROR4__(v367, 31);
    v384 = v381;
    HIDWORD(v381) = v381;
    v385 = v381 >> 31;
    HIDWORD(v381) = v371;
    LODWORD(v381) = v371;
    v386 = v381 >> 2;
    v387 = __PAIR64__(v383, __ROR4__(v365, 2));
    v388 = v385 - 899497514 + v374 + (v386 ^ v387 ^ v377);
    LODWORD(v387) = v383;
    v389 = v388 + (v387 >> 27);
    LODWORD(v387) = v485 ^ __ROR4__(v291, 31) ^ __ROR4__(v336, 31) ^ __ROR4__(v372, 31);
    v390 = v387;
    HIDWORD(v387) = v387;
    v514 = v387 >> 31;
    HIDWORD(v387) = v377;
    LODWORD(v387) = v377;
    v391 = v387 >> 2;
    v392 = __PAIR64__(v389, __ROR4__(v371, 2));
    v393 = v514 - 899497514 + v380 + (v391 ^ v392 ^ v383);
    LODWORD(v392) = v389;
    v394 = v393 + (v392 >> 27);
    LODWORD(v392) = v511 ^ __ROR4__(v298, 31) ^ __ROR4__(v343, 31) ^ __ROR4__(v378, 31);
    v395 = v392;
    HIDWORD(v392) = v392;
    v396 = (v392 >> 31) - 899497514;
    HIDWORD(v392) = v383;
    LODWORD(v392) = v383;
    v397 = v392 >> 2;
    v398 = __PAIR64__(v394, __ROR4__(v377, 2));
    v399 = v396 + v386 + (v397 ^ v398 ^ v389);
    LODWORD(v398) = v394;
    v400 = v399 + (v398 >> 27);
    LODWORD(v398) = v522 ^ __ROR4__(v300, 31) ^ __ROR4__(v352, 31) ^ __ROR4__(v384, 31);
    v401 = v398;
    HIDWORD(v398) = v398;
    v402 = (v398 >> 31) - 899497514 + v391;
    HIDWORD(v398) = v389;
    LODWORD(v398) = v389;
    v403 = v398 >> 2;
    v404 = __PAIR64__(v400, __ROR4__(v383, 2));
    v405 = v402 + (v403 ^ v404 ^ v394);
    LODWORD(v404) = v400;
    v406 = v405 + (v404 >> 27);
    LODWORD(v404) = v504 ^ __ROR4__(v307, 31) ^ __ROR4__(v358, 31) ^ __ROR4__(v390, 31);
    v407 = v404;
    HIDWORD(v404) = v404;
    v408 = (v404 >> 31) - 899497514;
    HIDWORD(v404) = v394;
    LODWORD(v404) = v394;
    v409 = v404 >> 2;
    v410 = __PAIR64__(v406, __ROR4__(v389, 2));
    v411 = v408 + v397 + (v409 ^ v410 ^ v400);
    LODWORD(v410) = v406;
    v412 = v411 + (v410 >> 27);
    LODWORD(v410) = v501 ^ __ROR4__(v316, 31) ^ __ROR4__(v367, 31) ^ __ROR4__(v395, 31);
    v413 = v410;
    HIDWORD(v410) = v410;
    v414 = (v410 >> 31) - 899497514 + v403;
    HIDWORD(v410) = v400;
    LODWORD(v410) = v400;
    v415 = v410 >> 2;
    v416 = __PAIR64__(v412, __ROR4__(v394, 2));
    v417 = v414 + (v415 ^ v416 ^ v406);
    LODWORD(v416) = v412;
    v418 = v417 + (v416 >> 27);
    LODWORD(v416) = v518 ^ __ROR4__(v321, 31) ^ __ROR4__(v372, 31) ^ __ROR4__(v401, 31);
    v419 = v416;
    HIDWORD(v416) = v416;
    v420 = (v416 >> 31) - 899497514;
    HIDWORD(v416) = v406;
    LODWORD(v416) = v406;
    v421 = v416 >> 2;
    v422 = __PAIR64__(v418, __ROR4__(v400, 2));
    v423 = v420 + v409 + (v421 ^ v422 ^ v412);
    LODWORD(v422) = v418;
    v424 = v423 + (v422 >> 27);
    LODWORD(v422) = v526 ^ __ROR4__(v327, 31) ^ __ROR4__(v378, 31) ^ __ROR4__(v407, 31);
    v425 = v422;
    HIDWORD(v422) = v422;
    v426 = (v422 >> 31) - 899497514 + v415;
    HIDWORD(v422) = v412;
    LODWORD(v422) = v412;
    v427 = v422 >> 2;
    v428 = v426 + (v427 ^ __ROR4__(v406, 2) ^ v418);
    v430 = __PAIR64__(v424, __ROR4__(v334, 31));
    v429 = v480 ^ v430;
    LODWORD(v430) = v424;
    v431 = v428 + (v430 >> 27);
    v432 = v429 ^ __ROR4__(v384, 31) ^ __ROR4__(v413, 31);
    HIDWORD(v430) = v432;
    LODWORD(v430) = v432;
    v433 = (v430 >> 31) - 899497514;
    HIDWORD(v430) = v418;
    LODWORD(v430) = v418;
    v434 = v430 >> 2;
    v435 = __PAIR64__(v431, __ROR4__(v412, 2));
    v436 = v433 + v421 + (v434 ^ v435 ^ v424);
    LODWORD(v435) = v431;
    v437 = v436 + (v435 >> 27);
    v438 = v353 ^ __ROR4__(v336, 31) ^ __ROR4__(v390, 31) ^ __ROR4__(v419, 31);
    HIDWORD(v435) = v438;
    LODWORD(v435) = v438;
    v439 = (v435 >> 31) - 899497514 + v427;
    HIDWORD(v435) = v424;
    LODWORD(v435) = v424;
    v440 = v435 >> 2;
    v442 = __PAIR64__(v437, __ROR4__(v343, 31));
    v441 = v498 ^ v442;
    LODWORD(v442) = v437;
    v443 = v439 + (v440 ^ __ROR4__(v418, 2) ^ v431) + (v442 >> 27);
    v444 = v441 ^ __ROR4__(v395, 31) ^ __ROR4__(v425, 31);
    HIDWORD(v442) = v444;
    LODWORD(v442) = v444;
    v445 = (v442 >> 31) - 899497514;
    HIDWORD(v442) = v431;
    LODWORD(v442) = v431;
    v446 = v442 >> 2;
    v447 = __PAIR64__(v443, __ROR4__(v424, 2));
    v448 = v445 + v434 + (v446 ^ v447 ^ v437);
    LODWORD(v447) = v443;
    v449 = v448 + (v447 >> 27);
    v450 = v495 ^ __ROR4__(v352, 31) ^ __ROR4__(v401, 31) ^ __ROR4__(v432, 31);
    HIDWORD(v447) = v450;
    LODWORD(v447) = v450;
    v451 = (v447 >> 31) - 899497514 + v440;
    HIDWORD(v447) = v437;
    LODWORD(v447) = v437;
    v452 = v447 >> 2;
    v453 = v451 + (v452 ^ __ROR4__(v431, 2) ^ v443);
    v455 = __PAIR64__(v449, __ROR4__(v407, 31));
    v454 = v373 ^ __ROR4__(v358, 31) ^ v455;
    LODWORD(v455) = v449;
    v456 = v453 + (v455 >> 27);
    LODWORD(v455) = v454 ^ __ROR4__(v438, 31);
    v457 = v455;
    HIDWORD(v455) = v455;
    v458 = (v455 >> 31) - 899497514;
    HIDWORD(v455) = v443;
    LODWORD(v455) = v443;
    v459 = v455 >> 2;
    v460 = __PAIR64__(v456, __ROR4__(v437, 2));
    v461 = v458 + v446 + (v459 ^ v460 ^ v449);
    LODWORD(v460) = v456;
    v462 = v461 + (v460 >> 27);
    LODWORD(v460) = v508 ^ __ROR4__(v367, 31) ^ __ROR4__(v413, 31) ^ __ROR4__(v444, 31);
    HIDWORD(v460) = v460;
    v463 = (v460 >> 31) - 899497514 + v452;
    HIDWORD(v460) = v449;
    LODWORD(v460) = v449;
    v464 = v460 >> 2;
    v465 = v463 + (v464 ^ __ROR4__(v443, 2) ^ v456);
    v467 = __PAIR64__(v462, __ROR4__(v419, 31));
    v466 = v385 ^ __ROR4__(v372, 31) ^ v467;
    LODWORD(v467) = v462;
    v468 = v465 + (v467 >> 27);
    LODWORD(v467) = v466 ^ __ROR4__(v450, 31);
    HIDWORD(v467) = v467;
    v469 = (v467 >> 31) - 899497514;
    HIDWORD(v467) = v456;
    LODWORD(v467) = v456;
    v470 = v467 >> 2;
    v471 = __PAIR64__(v468, __ROR4__(v449, 2));
    v472 = v469 + v459 + (v470 ^ v471 ^ v462);
    LODWORD(v471) = v468;
    v473 = v472 + (v471 >> 27);
    LODWORD(v471) = v514 ^ __ROR4__(v378, 31) ^ __ROR4__(v425, 31) ^ __ROR4__(v457, 31);
    HIDWORD(v471) = v471;
    v474 = v527 - 899497514 + (v471 >> 31) + v464;
    HIDWORD(v471) = v462;
    LODWORD(v471) = v462;
    v475 = v471 >> 2;
    v476 = __PAIR64__(v473, __ROR4__(v456, 2));
    v477 = v474 + (v475 ^ v476 ^ v468);
    LODWORD(v476) = v473;
    v7 = v477 + (v476 >> 27);
    HIDWORD(v476) = v468;
    LODWORD(v476) = v468;
    v5 = v473 + v532;
    v6 = (v476 >> 2) + v531;
    v3 = v475 + v530;
    v4 = v470 + v528;
    *a1 = v7;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v475 + v530;
    a1[4] = v470 + v528;
    a2 = v533 + 16;
    a3 = v529 - 1;
  }

  while (v529 != 1);
  return result;
}

int SHA512_Final(unsigned __int8 *md, SHA512_CTX *c)
{
  if (md)
  {
    BCM_sha512_final(md, c);
    LODWORD(md) = 1;
  }

  return md;
}

unsigned __int8 *__cdecl SHA512(const unsigned __int8 *d, size_t n, unsigned __int8 *md)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v6.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v6.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v9[11] = v6;
  v9[12] = v6;
  v9[9] = v6;
  v9[10] = v6;
  v9[7] = v6;
  v9[8] = v6;
  v9[5] = v6;
  v9[6] = v6;
  v9[3] = v6;
  v9[4] = v6;
  v9[1] = v6;
  v9[2] = v6;
  v9[0] = v6;
  BCM_sha512_init(v9);
  BCM_sha512_update(v9, d, n);
  BCM_sha512_final(md, v9);
  OPENSSL_cleanse(v9, 0xD8uLL);
  v7 = *MEMORY[0x1E69E9840];
  return md;
}

void bssl::ssl_send_alert(bssl *this, ssl_st *a2, int a3)
{
  v6 = ERR_save_state();
  bssl::ssl_send_alert_impl(this, a2, a3);
  ERR_restore_state(v6);
  if (v6)
  {
    ERR_SAVE_STATE_free(v6);
  }
}

void sub_1A9068A18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<err_save_state_st,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t boringssl_config_get_tls13_external_psk_enabled()
{
  if (boringssl_config_get_whitelisted_bundle_identifier_onceToken != -1)
  {
    boringssl_config_get_whitelisted_bundle_identifier_cold_1();
  }

  v0 = global_bundle_identifier;
  result = strcmp(global_bundle_identifier, "redacted_bundle_id");
  if (result)
  {
    return strcmp(v0, "no_bundle_id") != 0;
  }

  return result;
}

uint64_t boringssl_config_restricted_mode_restrict_tls_version(uint64_t result)
{
  if (result <= 0x303)
  {
    return 771;
  }

  else
  {
    return result;
  }
}

uint64_t boringssl_config_restricted_mode_restrict_dtls_version(uint64_t result)
{
  if (result >= 0xFEFD)
  {
    return 65277;
  }

  else
  {
    return result;
  }
}

void **std::unique_ptr<bssl::anonymous namespace::ECKeyShare,bssl::internal::Deleter>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (**v2)(v2);
    OPENSSL_free(v2);
  }

  return a1;
}

void bssl::anonymous namespace::ECKeyShare::~ECKeyShare(BIGNUM **this)
{
  *this = &unk_1F1CB0310;
  std::unique_ptr<bignum_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 1, 0);
}

{
  *this = &unk_1F1CB0310;
  std::unique_ptr<bignum_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 1, 0);

  JUMPOUT(0x1AC57E0F0);
}

BOOL bssl::anonymous namespace::ECKeyShare::Generate(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  if (*(a1 + 8))
  {
  }

  v5 = BN_new();
  std::unique_ptr<bignum_st,bssl::internal::Deleter>::reset[abi:ne200100](v2, v5);
  v6 = *v2;
  if (!v6)
  {
    return 0;
  }

  v7 = EC_GROUP_get0_order(*(a1 + 16));
  if (!BN_rand_range_ex(v6, 1uLL, v7))
  {
    return 0;
  }

  v8 = EC_POINT_new(*(a1 + 16));
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  if (EC_POINT_mul(*(a1 + 16), v8, *(a1 + 8), 0, 0, 0))
  {
    v10 = EC_POINT_point2cbb(a2, *(a1 + 16), v9, POINT_CONVERSION_UNCOMPRESSED, 0) != 0;
  }

  else
  {
    v10 = 0;
  }

  EC_POINT_free(v9);
  return v10;
}

void sub_1A9068CC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<ec_point_st,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t bssl::anonymous namespace::ECKeyShare::Encap(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  *a4 = 80;
  result = (*(*a1 + 24))(a1);
  if (result)
  {
    v12 = *(*a1 + 40);

    return v12(a1, a3, a4, a5, a6);
  }

  return result;
}

uint64_t bssl::anonymous namespace::ECKeyShare::Decap(uint64_t a1, uint64_t a2, _BYTE *a3, const unsigned __int8 *a4, size_t a5)
{
  if (!*(a1 + 16))
  {
  }

  if (!*(a1 + 8))
  {
  }

  *a3 = 80;
  v10 = EC_POINT_new(*(a1 + 16));
  v23 = v10;
  v11 = EC_POINT_new(*(a1 + 16));
  v22 = v11;
  v12 = BN_new();
  v13 = v12;
  v21 = v12;
  if (v10 && v11 && v12)
  {
    if (a5 && *a4 == 4 && EC_POINT_oct2point(*(a1 + 16), v10, a4, a5, 0))
    {
      if (EC_POINT_mul(*(a1 + 16), v11, 0, v10, *(a1 + 8), 0) && EC_POINT_get_affine_coordinates_GFp(*(a1 + 16), v11, v13, 0, 0))
      {
        v19 = 0;
        v20 = 0;
        degree = EC_GROUP_get_degree(*(a1 + 16));
        if (bssl::Array<unsigned char>::InitUninitialized(&v19, (degree + 7) >> 3) && BN_bn2bin_padded(v19, v20, v13))
        {
          OPENSSL_free(*a2);
          v15 = v20;
          *a2 = v19;
          *(a2 + 8) = v15;
          v19 = 0;
          v20 = 0;
          v16 = 1;
        }

        else
        {
          v16 = 0;
        }

        bssl::Array<unsigned char>::~Array(&v19);
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      ERR_put_error(16, 0, 108, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_key_share.cc", 103);
      v16 = 0;
      *a3 = 47;
    }

    v21 = 0;
    goto LABEL_18;
  }

  v16 = 0;
  v17 = 0;
  v21 = 0;
  if (v12)
  {
LABEL_18:
    BN_free(v13);
    v17 = v16;
  }

  v22 = 0;
  if (v11)
  {
    EC_POINT_free(v11);
  }

  v23 = 0;
  if (v10)
  {
    EC_POINT_free(v10);
  }

  return v17;
}

void sub_1A9068F80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, BIGNUM *);
  va_copy(va3, va2);
  v8 = va_arg(va3, EC_POINT *);
  bssl::Array<unsigned char>::~Array(va);
  std::unique_ptr<bignum_st,bssl::internal::Deleter>::reset[abi:ne200100](va1, 0);
  std::unique_ptr<ec_point_st,bssl::internal::Deleter>::reset[abi:ne200100](va2, 0);
  std::unique_ptr<ec_point_st,bssl::internal::Deleter>::reset[abi:ne200100](va3, 0);
  _Unwind_Resume(a1);
}

BOOL bssl::anonymous namespace::ECKeyShare::SerializePrivateKey(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
  }

  if (!*(a1 + 8))
  {
  }

  v5 = EC_GROUP_get0_order(v3);
  v6 = BN_num_bytes(v5);
  return BN_bn2cbb_padded(a2, v6, *(a1 + 8)) != 0;
}

BOOL bssl::anonymous namespace::ECKeyShare::DeserializePrivateKey(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  if (*(a1 + 8))
  {
  }

  v3 = BN_bin2bn(*a2, *(a2 + 8), 0);
  std::unique_ptr<bignum_st,bssl::internal::Deleter>::reset[abi:ne200100](v2, v3);
  return *v2 != 0;
}

uint64_t bssl::anonymous namespace::X25519Kyber768KeyShare::Generate(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[0] = v4;
  v8[1] = v4;
  X25519_keypair(v8, (a1 + 8));
  memset(v7, 170, sizeof(v7));
  KYBER_generate_key(v7, (a1 + 40));
  result = CBB_add_bytes(a2, v8, 0x20uLL);
  if (result)
  {
    result = CBB_add_bytes(a2, v7, 0x4A0uLL) != 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t bssl::anonymous namespace::X25519Kyber768KeyShare::Encap(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v25 = *MEMORY[0x1E69E9840];
  OPENSSL_free(0);
  v22 = 0;
  v12 = OPENSSL_malloc(0x40uLL);
  v21 = v12;
  if (!v12)
  {
    goto LABEL_11;
  }

  v22 = 64;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[0] = v13;
  v24[1] = v13;
  X25519_keypair(v24, (a1 + 8));
  v19 = a6;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  memset(v17, 170, sizeof(v17));
  v18 = a5;
  if (!CBS_get_bytes(&v18, &v17[2], 0x20uLL) || !CBS_get_bytes(&v18, v17, 0x4A0uLL) || v19 || !X25519(v12, (a1 + 8), v17[2]) || !KYBER_parse_public_key(&v20, v17))
  {
    *a4 = 47;
    ERR_put_error(16, 0, 108, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_key_share.cc", 247);
    v14 = 0;
    goto LABEL_12;
  }

  memset(__b, 170, sizeof(__b));
  KYBER_encap(__b, (v12 + 32), &v20);
  if (!CBB_add_bytes(a2, v24, 0x20uLL) || !CBB_add_bytes(a2, __b, 0x440uLL))
  {
LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  OPENSSL_free(*a3);
  *a3 = v12;
  *(a3 + 8) = 64;
  v21 = 0;
  v22 = 0;
  v14 = 1;
  v12 = 0;
LABEL_12:
  OPENSSL_free(v12);
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_1A90693C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  bssl::Array<unsigned char>::~Array(va);
  _Unwind_Resume(a1);
}

uint64_t bssl::anonymous namespace::X25519Kyber768KeyShare::Decap(uint64_t a1, uint64_t a2, _BYTE *a3, int64x2_t *a4, uint64_t a5)
{
  *a3 = 80;
  OPENSSL_free(0);
  v10 = OPENSSL_malloc(0x40uLL);
  v11 = v10;
  if (v10)
  {
    if (a5 == 1120 && X25519(v10, (a1 + 8), a4))
    {
      KYBER_decap((v11 + 32), a4[2].i64, (a1 + 40));
      OPENSSL_free(*a2);
      *a2 = v11;
      *(a2 + 8) = 64;
      v12 = 1;
      v11 = 0;
    }

    else
    {
      *a3 = 47;
      ERR_put_error(16, 0, 108, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_key_share.cc", 277);
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  OPENSSL_free(v11);
  return v12;
}

uint64_t bssl::anonymous namespace::X25519MLKEM768KeyShare::Encap(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v25 = *MEMORY[0x1E69E9840];
  OPENSSL_free(0);
  v22 = 0;
  v12 = OPENSSL_malloc(0x40uLL);
  v21 = v12;
  if (!v12)
  {
    goto LABEL_11;
  }

  v22 = 64;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[0] = v13;
  v24[1] = v13;
  X25519_keypair(v24, (a1 + 8));
  v19 = a6;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  memset(v17, 170, sizeof(v17));
  v18 = a5;
  if (!CBS_get_bytes(&v18, &v17[2], 0x4A0uLL) || !MLKEM768_parse_public_key(&v20, &v17[2]) || !CBS_get_bytes(&v18, v17, 0x20uLL) || v19 || !X25519(v12 + 32, (a1 + 8), v17[0]))
  {
    MLKEM768_public_key_free(&v20);
    *a4 = 47;
    ERR_put_error(16, 0, 108, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_key_share.cc", 349);
    v14 = 0;
    goto LABEL_12;
  }

  memset(__b, 170, sizeof(__b));
  MLKEM768_encap(__b, v12, &v20);
  MLKEM768_public_key_free(&v20);
  if (!CBB_add_bytes(a2, __b, 0x440uLL) || !CBB_add_bytes(a2, v24, 0x20uLL))
  {
LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  OPENSSL_free(*a3);
  *a3 = v12;
  *(a3 + 8) = 64;
  v21 = 0;
  v22 = 0;
  v14 = 1;
  v12 = 0;
LABEL_12:
  OPENSSL_free(v12);
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_1A9069720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  bssl::Array<unsigned char>::~Array(va);
  _Unwind_Resume(a1);
}

uint64_t bssl::anonymous namespace::X25519MLKEM768KeyShare::Decap(uint64_t a1, uint64_t a2, _BYTE *a3, int64x2_t *a4, uint64_t a5)
{
  *a3 = 80;
  OPENSSL_free(0);
  v10 = OPENSSL_malloc(0x40uLL);
  v11 = v10;
  if (v10)
  {
    if (a5 == 1120 && MLKEM768_decap(v10, a4, 1088, (a1 + 40)) && X25519(v11 + 32, (a1 + 8), a4 + 68))
    {
      OPENSSL_free(*a2);
      *a2 = v11;
      *(a2 + 8) = 64;
      v12 = 1;
      v11 = 0;
    }

    else
    {
      *a3 = 47;
      ERR_put_error(16, 0, 108, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_key_share.cc", 385);
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  OPENSSL_free(v11);
  return v12;
}

BOOL boringssl_helper_dispatch_data_copyout_and_alloc(NSObject *a1, void *a2, uint64_t *a3)
{
  *a2 = 0;
  size = dispatch_data_get_size(a1);
  *a3 = size;
  if (!size)
  {
    return 1;
  }

  v7 = size;
  v8 = a1;
  v9 = malloc_type_malloc(v7, 0xEBD43093uLL);
  *a2 = v9;
  v10 = boringssl_helper_dispatch_data_copyout(v8, v9, *a3);

  return v10 == *a3;
}

uint64_t boringssl_helper_convert_trusterror_to_alertcode(int a1)
{
  if (a1 <= -67736)
  {
    if (a1 > -67820)
    {
      if ((a1 + 67819) < 2)
      {
        return 45;
      }

      return 46;
    }

    if (a1 != -67880 && a1 != -67843)
    {
      if (a1 == -67820)
      {
        return 44;
      }

      return 46;
    }

    return 42;
  }

  if (a1 <= -67613)
  {
    if (a1 == -67735 || a1 == -67655)
    {
      return 42;
    }
  }

  else
  {
    switch(a1)
    {
      case -67612:
        return 48;
      case -67602:
        return 42;
      case -25318:
        return 48;
    }
  }

  return 46;
}

uint64_t boringssl_helper_convert_alert_code(int a1, int a2)
{
  if (a1 <= 69)
  {
    switch(a1)
    {
      case 20:
        v2 = a2 == 16388;
        v3 = -9846;
        v4 = -9820;
        goto LABEL_42;
      case 21:
        v2 = a2 == 16388;
        v3 = -9845;
        v4 = -9821;
        goto LABEL_42;
      case 22:
        v2 = a2 == 16388;
        v3 = -9847;
        v4 = -9822;
        goto LABEL_42;
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
        return 4294957494;
      case 30:
        v2 = a2 == 16388;
        v3 = -9857;
        v4 = -9823;
        goto LABEL_42;
      case 40:
        v2 = a2 == 16388;
        v3 = -9858;
        v4 = -9824;
        goto LABEL_42;
      case 41:
      case 46:
        v2 = a2 == 16388;
        v3 = -9808;
        v4 = -9825;
        goto LABEL_42;
      case 42:
        return 4294957488;
      case 43:
        v2 = a2 == 16388;
        v3 = -9808;
        v4 = -9826;
        goto LABEL_42;
      case 44:
        v2 = a2 == 16388;
        v3 = -9808;
        v4 = -9827;
        goto LABEL_42;
      case 45:
        v2 = a2 == 16388;
        v3 = -9814;
        v4 = -9828;
        goto LABEL_42;
      case 47:
        return 4294957466;
      case 48:
        v2 = a2 == 16388;
        v3 = -9813;
        v4 = -9831;
        goto LABEL_42;
      case 49:
        return 4294957464;
      case 50:
        v2 = a2 == 16388;
        v3 = -9859;
        v4 = -9833;
        goto LABEL_42;
      case 51:
        v2 = a2 == 16388;
        v3 = -9845;
        v4 = -9834;
        goto LABEL_42;
      case 60:
        v2 = a2 == 16388;
        v3 = -9802;
        v4 = -9835;
        goto LABEL_42;
      default:
        if (!a1)
        {
          return 4294957491;
        }

        if (a1 != 10)
        {
          return 4294957494;
        }

        v2 = a2 == 16388;
        v3 = -9856;
        v4 = -9819;
        break;
    }

    goto LABEL_42;
  }

  if (a1 > 109)
  {
    if (a1 <= 112)
    {
      return 4294957496;
    }

    if (a1 <= 114)
    {
      if (a1 != 113)
      {
        return 4294957488;
      }

      return 4294957496;
    }

    if (a1 == 115)
    {
      return 4294957432;
    }

    if (a1 == 116)
    {
      v2 = a2 == 16388;
      v3 = -9863;
      v4 = -9829;
      goto LABEL_42;
    }

    return 4294957494;
  }

  if (a1 > 85)
  {
    switch(a1)
    {
      case 'V':
        return 4294957436;
      case 'Z':
        return 4294957457;
      case 'd':
        v2 = a2 == 16388;
        v3 = -9800;
        v4 = -9840;
        goto LABEL_42;
    }

    return 4294957494;
  }

  if (a1 == 70)
  {
    return 4294957460;
  }

  if (a1 != 71)
  {
    if (a1 == 80)
    {
      v2 = a2 == 16388;
      v3 = -9810;
      v4 = -9838;
      goto LABEL_42;
    }

    return 4294957494;
  }

  v2 = a2 == 16388;
  v3 = -9802;
  v4 = -9837;
LABEL_42:
  if (v2)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t boringssl_helper_dispatch_data_equal(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = v3 == v4;
  if (v3 != v4 && v3 && v4)
  {
    size = dispatch_data_get_size(v3);
    if (size == dispatch_data_get_size(v5))
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 1;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __boringssl_helper_dispatch_data_equal_block_invoke;
      v9[3] = &unk_1E785F7E0;
      v10 = v5;
      v11 = &v12;
      dispatch_data_apply(v3, v9);
      v6 = *(v13 + 24);

      _Block_object_dispose(&v12, 8);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

uint64_t __boringssl_helper_dispatch_data_equal_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __boringssl_helper_dispatch_data_equal_block_invoke_2;
  v8[3] = &unk_1E785F7B8;
  v8[4] = *(a1 + 40);
  v8[5] = a3;
  v8[6] = a5;
  v8[7] = a4;
  dispatch_data_apply(v6, v8);
  return *(*(*(a1 + 40) + 8) + 24);
}

uint64_t __boringssl_helper_dispatch_data_equal_block_invoke_2(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1[5];
  v6 = a1[6];
  if (v7 <= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = a1[5];
  }

  v9 = v6 + v7;
  if (v6 + v7 >= a5 + a3)
  {
    v10 = a5 + a3;
  }

  else
  {
    v10 = v6 + v7;
  }

  v11 = v10 > v8;
  v12 = v10 - v8;
  if (v11)
  {
    *(*(a1[4] + 8) + 24) = memcmp((a4 + v8 - a3), (a1[7] + v8 - v7), v12) == 0;
  }

  else
  {
    if (v9 < a3)
    {
      v13 = 0;
      return v13 & 1;
    }

    if (a5 + a3 < v7)
    {
      v13 = 1;
      return v13 & 1;
    }
  }

  v13 = *(*(a1[4] + 8) + 24);
  return v13 & 1;
}

id boringssl_helper_create_protocol_list_from_encoded_list(uint64_t a1, size_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v5 = xpc_array_create(0, 0);
    if (v5)
    {
      v6 = 0;
      while (1)
      {
        v7 = *(a1 + v6);
        if (v6 + v7 >= a2)
        {
          break;
        }

        v8 = v7 + 1;
        v9 = malloc_type_malloc(v7 + 1, 0x100004077774924uLL);
        if (!v9)
        {
          break;
        }

        v10 = v9;
        memcpy(v9, (a1 + v6 + 1), v7);
        v10[v7] = 0;
        v11 = xpc_string_create(v10);
        if (!v11)
        {
          free(v10);
          break;
        }

        v12 = v11;
        xpc_array_append_value(v5, v11);
        free(v10);
        v6 += v8;

        if (v6 >= a2)
        {
          v2 = v5;
          goto LABEL_12;
        }
      }
    }

    v2 = 0;
LABEL_12:
  }

  return v2;
}

BOOL boringssl_helper_find_first_overlapping_protocol(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = v7;
  v9 = 0;
  *a4 = 0;
  if (a1 && v7 && a3)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __boringssl_helper_find_first_overlapping_protocol_block_invoke;
    applier[3] = &unk_1E785F830;
    v12 = v7;
    v13 = a4;
    v14 = a3;
    v9 = !xpc_array_apply(a1, applier);
  }

  return v9;
}

BOOL __boringssl_helper_find_first_overlapping_protocol_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  length = xpc_string_get_length(v4);
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = xpc_string_get_string_ptr(v4);
  v6 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __boringssl_helper_find_first_overlapping_protocol_block_invoke_2;
  v9[3] = &unk_1E785F808;
  v9[4] = v11;
  v9[5] = length;
  v10 = *(a1 + 40);
  v7 = xpc_array_apply(v6, v9);
  _Block_object_dispose(v11, 8);

  return v7;
}

void sub_1A906A164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __boringssl_helper_find_first_overlapping_protocol_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  length = xpc_string_get_length(v4);
  string_ptr = xpc_string_get_string_ptr(v4);

  if (*(a1 + 40) != length)
  {
    return 1;
  }

  result = strncmp(*(*(*(a1 + 32) + 8) + 24), string_ptr, length);
  if (result)
  {
    return 1;
  }

  **(a1 + 48) = length;
  **(a1 + 56) = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *boringssl_helper_create_certificate_sec_array_from_CFArray(const __CFArray *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = sec_array_create();
  if (v2)
  {
    if (CFArrayGetCount(a1) >= 1)
    {
      v3 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v3);
        if (ValueAtIndex)
        {
          v5 = sec_certificate_create(ValueAtIndex);
          sec_array_append();
        }

        ++v3;
      }

      while (v3 < CFArrayGetCount(a1));
    }

    v6 = v2;
  }

  return v2;
}

uint64_t boringssl_helper_SecKeyAlgorithm_from_signature_algorithm(int a1)
{
  v1 = MEMORY[0x1E697B1F8];
  v2 = MEMORY[0x1E697B1E8];
  v3 = MEMORY[0x1E697B1F0];
  v4 = MEMORY[0x1E697B1B8];
  if (a1 != 65281)
  {
    v4 = MEMORY[0x1E697B1F8];
  }

  if (a1 != 2054)
  {
    v3 = v4;
  }

  if (a1 != 2053)
  {
    v2 = v3;
  }

  v5 = MEMORY[0x1E697B1D8];
  v6 = MEMORY[0x1E697B128];
  v7 = MEMORY[0x1E697B1E0];
  if (a1 != 2052)
  {
    v7 = MEMORY[0x1E697B1F8];
  }

  if (a1 != 1539)
  {
    v6 = v7;
  }

  if (a1 != 1537)
  {
    v5 = v6;
  }

  if (a1 <= 2052)
  {
    v2 = v5;
  }

  v8 = MEMORY[0x1E697B128];
  v9 = MEMORY[0x1E697B1D0];
  v10 = MEMORY[0x1E697B130];
  if (a1 != 1283)
  {
    v10 = MEMORY[0x1E697B1F8];
  }

  if (a1 != 1281)
  {
    v9 = v10;
  }

  if (a1 != 1027)
  {
    v8 = v9;
  }

  if (a1 == 1025)
  {
    v1 = MEMORY[0x1E697B1C8];
  }

  if (a1 == 515)
  {
    v1 = MEMORY[0x1E697B120];
  }

  if (a1 == 513)
  {
    v1 = MEMORY[0x1E697B1C0];
  }

  if (a1 > 1026)
  {
    v1 = v8;
  }

  if (a1 > 1536)
  {
    v1 = v2;
  }

  return *v1;
}

uint64_t boringssl_helper_zlib_compress_data(void *a1, uint64_t a2, uLong a3, void *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (v7 && a2 && a3 && v8)
  {
    memset(&v32, 0, sizeof(v32));
    if (deflateInit_(&v32, -1, "1.2.12", 112))
    {
      WeakRetained = objc_loadWeakRetained(v7 + 2);
      if (WeakRetained)
      {
        v12 = WeakRetained;
        v13 = objc_loadWeakRetained(v7 + 2);
        v14 = v13[435];

        if (v14)
        {
LABEL_29:
          v10 = 0;
          goto LABEL_38;
        }
      }

      v15 = objc_loadWeakRetained(v7 + 2);
      if (v15)
      {
        v16 = objc_loadWeakRetained(v7 + 2);
        v17 = (v16[435] & 1) == 0;
      }

      else
      {
        v17 = 1;
      }

      v10 = 0;
      if (v17 && g_boringssl_log)
      {
        v28 = g_boringssl_log;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          boringssl_helper_zlib_compress_data_cold_1(v7, v28);
        }

        goto LABEL_29;
      }
    }

    else
    {
      memset(__b, 170, sizeof(__b));
      while (2)
      {
        v18 = a3 - LODWORD(v32.total_in);
        if (a3 - v32.total_in >= 0x400)
        {
          v18 = 1024;
        }

        v32.avail_in = v18;
        v32.next_in = (a2 + v32.total_in);
        v19 = v32.total_in + 1024;
        v20 = 4 * (v32.total_in + 1024 >= a3);
        do
        {
          v32.avail_out = 1024;
          v32.next_out = __b;
          if (deflate(&v32, v20) == -2)
          {
            v21 = objc_loadWeakRetained(v7 + 2);
            if (!v21 || (v22 = v21, v23 = objc_loadWeakRetained(v7 + 2), v24 = v23[435], v23, v22, (v24 & 1) == 0))
            {
              v25 = objc_loadWeakRetained(v7 + 2);
              if (v25)
              {
                v26 = objc_loadWeakRetained(v7 + 2);
                v27 = (v26[435] & 1) == 0;
              }

              else
              {
                v27 = 1;
              }

              v10 = 0;
              if (!v27 || !g_boringssl_log)
              {
                goto LABEL_37;
              }

              v29 = g_boringssl_log;
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                boringssl_helper_zlib_compress_data_cold_2(v7, v29);
              }
            }

LABEL_36:
            v10 = 0;
            goto LABEL_37;
          }

          if (!(v9)[2](v9, __b, 1024 - v32.avail_out))
          {
            goto LABEL_36;
          }
        }

        while (!v32.avail_out);
        if (v19 < a3)
        {
          continue;
        }

        break;
      }

      v10 = 1;
LABEL_37:
      deflateEnd(&v32);
    }
  }

LABEL_38:

  v30 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t boringssl_helper_zlib_decompress_data(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (v7 && a2 && a3 && v8)
  {
    memset(&v23, 0, sizeof(v23));
    if (inflateInit_(&v23, "1.2.12", 112))
    {
      WeakRetained = objc_loadWeakRetained(v7 + 2);
      if (WeakRetained)
      {
        v12 = WeakRetained;
        v13 = objc_loadWeakRetained(v7 + 2);
        v14 = v13[435];

        if (v14)
        {
LABEL_28:
          v10 = 0;
          goto LABEL_31;
        }
      }

      v15 = objc_loadWeakRetained(v7 + 2);
      if (v15)
      {
        v16 = objc_loadWeakRetained(v7 + 2);
        v17 = (v16[435] & 1) == 0;
      }

      else
      {
        v17 = 1;
      }

      v10 = 0;
      if (v17 && g_boringssl_log)
      {
        v20 = g_boringssl_log;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          boringssl_helper_zlib_decompress_data_cold_1(v7, v20);
        }

        goto LABEL_28;
      }
    }

    else
    {
      memset(__b, 170, sizeof(__b));
      while (1)
      {
        v18 = a3 - LODWORD(v23.total_in);
        if (a3 - v23.total_in >= 0x400)
        {
          v18 = 1024;
        }

        v23.avail_in = v18;
        if (a3 == v23.total_in)
        {
          break;
        }

        v23.avail_out = 1024;
        v23.next_in = (a2 + v23.total_in);
        v23.next_out = __b;
        v19 = inflate(&v23, 0);
        if (v19 == 2)
        {
          v10 = 4294967293;
        }

        else
        {
          v10 = v19;
          if ((v19 + 4) < 2)
          {
            goto LABEL_21;
          }
        }

        if (!(v9)[2](v9, __b, 1024 - v23.avail_out))
        {
LABEL_21:
          v10 = 0;
          goto LABEL_30;
        }

        if (v10 == 1)
        {
          goto LABEL_30;
        }
      }

      v10 = 1;
LABEL_30:
      inflateEnd(&v23);
    }
  }

LABEL_31:

  v21 = *MEMORY[0x1E69E9840];
  return v10;
}

__CFArray *boringssl_helper_copy_identity_certificate_chain_from_identity_array(const __CFArray *a1)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (!Count)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    v4 = g_boringssl_log;
    if (!g_boringssl_log)
    {
      return v4;
    }

    if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      boringssl_helper_copy_identity_certificate_chain_from_identity_array_cold_4();
    }

    return 0;
  }

  v4 = Mutable;
  ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
  if (!ValueAtIndex)
  {
    v4 = g_boringssl_log;
    if (!g_boringssl_log)
    {
      return v4;
    }

    if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      boringssl_helper_copy_identity_certificate_chain_from_identity_array_cold_3();
    }

    return 0;
  }

  v6 = ValueAtIndex;
  v7 = CFGetTypeID(ValueAtIndex);
  if (v7 != SecIdentityGetTypeID())
  {
    v4 = g_boringssl_log;
    if (!g_boringssl_log)
    {
      return v4;
    }

    if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      boringssl_helper_copy_identity_certificate_chain_from_identity_array_cold_1();
    }

    return 0;
  }

  certificateRef = 0;
  if (SecIdentityCopyCertificate(v6, &certificateRef) || (v8 = certificateRef) == 0)
  {
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      boringssl_helper_copy_identity_certificate_chain_from_identity_array_cold_2();
    }

    return 0;
  }

  CFArrayAppendValue(v4, certificateRef);
  CFRelease(v8);
  v9 = Count;
  if (Count >= 2)
  {
    v10 = 1;
    do
    {
      v11 = CFArrayGetValueAtIndex(a1, v10);
      CFArrayAppendValue(v4, v11);
      ++v10;
    }

    while (v9 != v10);
  }

  return v4;
}

const __CFArray *boringssl_helper_copy_leaf_private_key_from_identity_array(const __CFArray *result)
{
  if (result)
  {
    v1 = result;
    result = CFArrayGetCount(result);
    if (result)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v1, 0);
      if (ValueAtIndex)
      {
        v3 = ValueAtIndex;
        v4 = CFGetTypeID(ValueAtIndex);
        if (v4 == SecIdentityGetTypeID())
        {
          privateKeyRef = 0;
          if (!SecIdentityCopyPrivateKey(v3, &privateKeyRef))
          {
            return privateKeyRef;
          }

          if (g_boringssl_log)
          {
            if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
            {
              boringssl_helper_copy_leaf_private_key_from_identity_array_cold_2();
            }
          }
        }

        else if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
        {
          boringssl_helper_copy_leaf_private_key_from_identity_array_cold_1();
        }
      }

      else if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
      {
        boringssl_helper_copy_leaf_private_key_from_identity_array_cold_3();
      }

      return 0;
    }
  }

  return result;
}

uint64_t boringssl_helper_create_certificate_buffer_chain_from_certificate_chain(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2020000000;
    v7 = OPENSSL_sk_new_null();
    sec_array_apply();
    v2 = v5[3];
    _Block_object_dispose(&v4, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1A906AC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __boringssl_helper_create_certificate_buffer_chain_from_certificate_chain_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = sec_certificate_copy_ref(v4);
    if (v6)
    {
      v7 = v6;
      v8 = SecCertificateCopyData(v6);
      if (v8)
      {
        v9 = v8;
        BytePtr = CFDataGetBytePtr(v8);
        Length = CFDataGetLength(v9);
        v12 = CRYPTO_BUFFER_new(BytePtr, Length, 0);
        if (v12)
        {
          OPENSSL_sk_push(*(*(*(a1 + 32) + 8) + 24), v12);
        }

        CFRelease(v9);
      }

      CFRelease(v7);
    }
  }

  return 1;
}

void boringssl_helper_dump_dispatch_data(void *a1, NSObject *a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __boringssl_helper_dump_dispatch_data_block_invoke;
    applier[3] = &unk_1E785F880;
    v6 = v3;
    dispatch_data_apply(a2, applier);
  }
}

uint64_t __boringssl_helper_dump_dispatch_data_block_invoke(uint64_t a1, void *a2, __int128 *a3, uint64_t a4, char *a5)
{
  v77 = *MEMORY[0x1E69E9840];
  v52 = a2;
  v9 = *(a1 + 32);
  if (!v9)
  {
    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained((v9 + 16));
  if (!WeakRetained || (v11 = WeakRetained, v12 = objc_loadWeakRetained((*(a1 + 32) + 16)), v13 = v12[435], v12, v11, (v13 & 1) == 0))
  {
    v14 = *(a1 + 32);
    if (!v14)
    {
      goto LABEL_10;
    }

    v15 = objc_loadWeakRetained((v14 + 16));
    if (v15)
    {
      v16 = objc_loadWeakRetained((*(a1 + 32) + 16));
      v17 = (v16[435] & 1) == 0;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
LABEL_10:
      if (g_boringssl_log)
      {
        v18 = g_boringssl_log;
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          goto LABEL_27;
        }

        v19 = *(a1 + 32);
        if (v19)
        {
          v20 = objc_loadWeakRetained((v19 + 16));
          v5 = v20;
          v21 = *(a1 + 32);
          if (v20)
          {
            v22 = v21 != 0;
            if (v21)
            {
              v20 = objc_loadWeakRetained((v21 + 16));
              v21 = *(a1 + 32);
            }

            else
            {
              v20 = 0;
            }

            v25 = v20 + 351;
          }

          else
          {
            v22 = 0;
            v25 = &unk_1A9098A9F;
          }

          v57 = v20;
          if (v21)
          {
            v23 = objc_loadWeakRetained((v21 + 16));
            v24 = 0;
          }

          else
          {
            v23 = 0;
            v24 = 1;
          }
        }

        else
        {
          v22 = 0;
          v23 = 0;
          v24 = 1;
          v25 = &unk_1A9098A9F;
        }

        *buf = 136447490;
        v60 = "boringssl_helper_dump_dispatch_data_block_invoke";
        v61 = 1024;
        v62 = 963;
        v63 = 2082;
        v64 = v25;
        v65 = 2048;
        v66 = v23;
        v67 = 2048;
        v68 = v52;
        v69 = 2048;
        v70 = a3;
        _os_log_impl(&dword_1A8FF5000, v18, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] data region %p, offset %zu", buf, 0x3Au);
        if (v24)
        {
          if (!v22)
          {
            goto LABEL_25;
          }
        }

        else
        {

          if (!v22)
          {
LABEL_25:
            if (v19)
            {
LABEL_26:
            }

LABEL_27:

            goto LABEL_28;
          }
        }

        if (!v19)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }
  }

LABEL_28:
  v26 = *(a1 + 32);
  memset(v73, 170, 17);
  if (a4 && a5)
  {
    v27 = 0;
    *&v28 = 0x2020202020202020;
    *(&v28 + 1) = 0x2020202020202020;
    *&v75[15] = v28;
    v74 = v28;
    *v75 = v28;
    v76 = 0;
    do
    {
      if ((a5 - v27) >= 0x10)
      {
        v29 = 16;
      }

      else
      {
        v29 = a5 - v27;
      }

      if (a5 != v27)
      {
        v30 = &v74 + 1;
        v31 = &v27[a4];
        if (v29 <= 1)
        {
          v32 = 1;
        }

        else
        {
          v32 = v29;
        }

        v33 = 3 * (v29 - 1);
        v34 = v73;
        do
        {
          v36 = *v31++;
          v35 = v36;
          if (v36 - 32 >= 0x5F)
          {
            v37 = 46;
          }

          else
          {
            v37 = v35;
          }

          v38 = boringssl_helper_dump_buffer_hexChars[v35 >> 4];
          *v34 = v37;
          *(v30 - 1) = v38;
          *v30 = boringssl_helper_dump_buffer_hexChars[v35 & 0xF];
          if (!v33)
          {
            *(v73 + (v29 - 1) + 1) = 0;
          }

          v33 -= 3;
          v30 += 3;
          ++v34;
          --v32;
        }

        while (v32);
      }

      if ((a5 - v27) <= 0xF)
      {
        memset(&v75[3 * v29 - 16], 32, (3 * (16 - v29) - 1));
      }

      if (!v26)
      {
        goto LABEL_56;
      }

      v39 = objc_loadWeakRetained(v26 + 2);
      if (!v39 || (v40 = v39, v41 = objc_loadWeakRetained(v26 + 2), v42 = v41[435], v41, v40, (v42 & 1) == 0))
      {
        v43 = objc_loadWeakRetained(v26 + 2);
        if (v43)
        {
          v44 = objc_loadWeakRetained(v26 + 2);
          v45 = (v44[435] & 1) == 0;
        }

        else
        {
          v45 = 1;
        }

        if (v45)
        {
LABEL_56:
          if (g_boringssl_log)
          {
            v46 = g_boringssl_log;
            if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
            {
              if (v26)
              {
                v47 = objc_loadWeakRetained(v26 + 2);
                v56 = v47 != 0;
                v55 = v47;
                if (v47)
                {
                  v53 = objc_loadWeakRetained(v26 + 2);
                  v48 = v53 + 351;
                }

                else
                {
                  v48 = &unk_1A9098A9F;
                }

                v54 = objc_loadWeakRetained(v26 + 2);
                v49 = v54;
              }

              else
              {
                v56 = 0;
                v49 = 0;
                v48 = &unk_1A9098A9F;
              }

              *buf = 136447746;
              v60 = "boringssl_helper_dump_buffer";
              v61 = 1024;
              v62 = 952;
              v63 = 2082;
              v64 = v48;
              v65 = 2048;
              v66 = v49;
              v67 = 2048;
              v68 = v27;
              v69 = 2080;
              v70 = &v74;
              v71 = 2080;
              v72 = v73;
              _os_log_impl(&dword_1A8FF5000, v46, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] %4lu   %s   %s", buf, 0x44u);
              if (v26)
              {
              }

              if (v56)
              {
              }

              if (v26)
              {
              }
            }
          }
        }
      }

      v27 += v29;
    }

    while (v27 < a5);
  }

  v50 = *MEMORY[0x1E69E9840];
  return 1;
}

id boringssl_helper_xpc_array_union(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__1;
    v14 = __Block_byref_object_dispose__1;
    v15 = xpc_array_create(0, 0);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __boringssl_helper_xpc_array_union_block_invoke;
    applier[3] = &unk_1E785F8A8;
    applier[4] = &v10;
    xpc_array_apply(v3, applier);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __boringssl_helper_xpc_array_union_block_invoke_2;
    v8[3] = &unk_1E785F8A8;
    v8[4] = &v10;
    xpc_array_apply(v5, v8);
    v6 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  return v6;
}

void sub_1A906B520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __boringssl_helper_xpc_array_union_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __boringssl_helper_xpc_array_union_block_invoke_3;
  v8[3] = &unk_1E785F8D0;
  v6 = v4;
  v9 = v6;
  v10 = &v11;
  xpc_array_apply(v5, v8);
  if ((v12[3] & 1) == 0)
  {
    xpc_array_append_value(*(*(*(a1 + 32) + 8) + 40), v6);
  }

  _Block_object_dispose(&v11, 8);
  return 1;
}

void sub_1A906B66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL __boringssl_helper_xpc_array_union_block_invoke_3(uint64_t a1, int a2, xpc_object_t object2)
{
  v4 = xpc_equal(*(a1 + 32), object2);
  if (v4)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return !v4;
}

const char *boringssl_helper_get_handshake_state_description(int a1)
{
  v1 = "unknown state";
  if (a1 == 3)
  {
    v1 = "connection established";
  }

  if (a1 == 12288)
  {
    return "not completed";
  }

  else
  {
    return v1;
  }
}

int BN_div(BIGNUM *dv, BIGNUM *rem, const BIGNUM *m, const BIGNUM *d, BN_CTX *ctx)
{
  if (!BN_is_zero(d))
  {
    BN_CTX_start(ctx);
    v10 = BN_CTX_get(ctx);
    v11 = BN_CTX_get(ctx);
    v12 = BN_CTX_get(ctx);
    if (!dv)
    {
      dv = BN_CTX_get(ctx);
    }

    v37 = v10;
    if (v10)
    {
      if (v11)
      {
        if (v12)
        {
          if (dv)
          {
            n = 64 - (BN_num_bits(d) & 0x3F);
            if (BN_lshift(v12, d, n))
            {
              if (BN_lshift(v11, m, n))
              {
                bn_set_minimal_width(v12);
                bn_set_minimal_width(v11);
                top = v12->top;
                v14 = v12->d[top - 1];
                if (top == 1)
                {
                  v15 = 0;
                }

                else
                {
                  v15 = v12->d[top - 2];
                }

                v34 = v15;
                if ((v14 & 0x8000000000000000) == 0)
                {
                  BN_div_cold_2();
                }

                v16 = v11->top;
                if (v16 <= top)
                {
                  v16 = v12->top;
                }

                v17 = v16 + 1;
                if (bn_resize_words(v11, v16 + 1))
                {
                  v18 = v17 - top;
                  dv->neg = v12->neg ^ v11->neg;
                  if (bn_wexpand(&dv->d, v17 - top))
                  {
                    if (bn_wexpand(&v37->d, top + 1))
                    {
                      dv->top = v18;
                      if (v18 >= 1)
                      {
                        v36 = v11;
                        while (1)
                        {
                          v19 = &v11->d[v18 - 1];
                          v20 = v19[top];
                          if (v20 == v14)
                          {
                            break;
                          }

                          if (v20 >= v14)
                          {
                            BN_div_cold_1();
                          }

                          v22 = v19[top - 1];
                          v23 = __udivti3();
                          v21 = v23;
                          if (top < 2)
                          {
                            goto LABEL_31;
                          }

                          v24 = v22 - v14 * v23;
                          v25 = (v23 * v34) >> 64;
                          v26 = v23 * v34;
                          if (__PAIR128__(v24, v19[top - 2]) >= v23 * v34)
                          {
                            goto LABEL_31;
                          }

                          p_d = &v37->d;
                          do
                          {
                            --v21;
                            v28 = __CFADD__(v24, v14);
                            v24 += v14;
                            if (v28)
                            {
                              break;
                            }

                            v29 = __PAIR128__(v25, v26) - v34;
                            v25 = *(&v29 + 1);
                            v26 = v29;
                          }

                          while (__PAIR128__(v24, v19[top - 2]) < v29);
LABEL_32:
                          v30 = bn_mul_words(*p_d, v12->d, top, v21);
                          v31 = *p_d;
                          (*p_d)[top] = v30;
                          if (bn_sub_words(v19, v19, v31, top + 1))
                          {
                            --v21;
                            v19[top] += bn_add_words(v19, v19, v12->d, top);
                          }

                          v11 = v36;
                          dv->d[v18 - 1] = v21;
                          if (v18-- <= 1)
                          {
                            goto LABEL_36;
                          }
                        }

                        v21 = -1;
LABEL_31:
                        p_d = &v37->d;
                        goto LABEL_32;
                      }

LABEL_36:
                      bn_set_minimal_width(v11);
                      bn_set_minimal_width(dv);
                      if (!rem || BN_rshift(rem, v11, n))
                      {
                        BN_CTX_end(ctx);
                        return 1;
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

    BN_CTX_end(ctx);
    return 0;
  }

  ERR_put_error(3, 0, 105, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/div.c.inc", 189);
  return 0;
}

int BN_nnmod(BIGNUM *r, const BIGNUM *m, const BIGNUM *d, BN_CTX *ctx)
{
  result = BN_div(0, r, m, d, ctx);
  if (result)
  {
    if (r->neg)
    {

      return BN_usub(r, d, r);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t bn_mod_add_consttime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, BN_CTX *ctx)
{
  BN_CTX_start(ctx);
  v10 = bn_resized_from_ctx(a2, *(a4 + 8), ctx);
  v11 = bn_resized_from_ctx(a3, *(a4 + 8), ctx);
  v12 = bn_scratch_space_from_ctx(*(a4 + 8), ctx);
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13 || v12 == 0;
  if (v14 || (p_d = &v12->d, !bn_wexpand(a1, *(a4 + 8))))
  {
    v23 = 0;
  }

  else
  {
    v16 = *a1;
    d = v10->d;
    v18 = v11->d;
    v19 = *a4;
    v20 = *p_d;
    v21 = *(a4 + 8);
    v22 = bn_add_words(*a1, d, v18, *(a4 + 8));
    bn_reduce_once_in_place(v16, v22, v19, v20, v21);
    *(a1 + 8) = *(a4 + 8);
    *(a1 + 16) = 0;
    v23 = 1;
  }

  BN_CTX_end(ctx);
  return v23;
}

const BIGNUM *bn_resized_from_ctx(uint64_t a1, unint64_t a2, BN_CTX *ctx)
{
  v4 = a1;
  if (*(a1 + 8) >= a2)
  {
    if (!bn_fits_in_words(a1, a2))
    {
      bn_resized_from_ctx_cold_1();
    }
  }

  else
  {
    v5 = bn_scratch_space_from_ctx(a2, ctx);
    if (v5 && (v6 = v5, BN_copy(v5, v4)))
    {
      if (bn_resize_words(v6, a2))
      {
        return v6;
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

  return v4;
}

BIGNUM *bn_scratch_space_from_ctx(unint64_t a1, BN_CTX *ctx)
{
  v3 = BN_CTX_get(ctx);
  v4 = v3;
  if (v3)
  {
    if (bn_wexpand(&v3->d, a1))
    {
      v4->neg = 0;
      v4->top = a1;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t bn_mod_sub_consttime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, BN_CTX *ctx)
{
  BN_CTX_start(ctx);
  v10 = bn_resized_from_ctx(a2, *(a4 + 8), ctx);
  v11 = bn_resized_from_ctx(a3, *(a4 + 8), ctx);
  v12 = bn_scratch_space_from_ctx(*(a4 + 8), ctx);
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13 || v12 == 0;
  if (v14 || (p_d = &v12->d, !bn_wexpand(a1, *(a4 + 8))))
  {
    v16 = 0;
  }

  else
  {
    bn_mod_sub_words(*a1, v10->d, v11->d, *a4, *p_d, *(a4 + 8));
    *(a1 + 8) = *(a4 + 8);
    *(a1 + 16) = 0;
    v16 = 1;
  }

  BN_CTX_end(ctx);
  return v16;
}

int BN_mod_mul(BIGNUM *r, const BIGNUM *a, const BIGNUM *b, const BIGNUM *m, BN_CTX *ctx)
{
  BN_CTX_start(ctx);
  v10 = BN_CTX_get(ctx);
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = v10;
  if (a == b)
  {
    if (BN_sqr(v10, a, ctx))
    {
      goto LABEL_4;
    }

LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  if (!BN_mul(v10, a, b, ctx))
  {
    goto LABEL_6;
  }

LABEL_4:
  v12 = BN_nnmod(r, v11, m, ctx) != 0;
LABEL_7:
  BN_CTX_end(ctx);
  return v12;
}

int BN_mod_sqr(BIGNUM *r, const BIGNUM *a, const BIGNUM *m, BN_CTX *ctx)
{
  result = BN_sqr(r, a, ctx);
  if (result)
  {

    return BN_div(0, r, r, m, ctx);
  }

  return result;
}

BOOL bn_mod_lshift_consttime(BIGNUM *a1, const BIGNUM *a2, int a3, uint64_t a4, BN_CTX *a5)
{
  if (!BN_copy(a1, a2) || !bn_resize_words(a1, *(a4 + 8)))
  {
    return 0;
  }

  BN_CTX_start(a5);
  v9 = bn_scratch_space_from_ctx(*(a4 + 8), a5);
  v10 = v9 != 0;
  if (v9)
  {
    if (a3 >= 1)
    {
      p_d = &v9->d;
      do
      {
        d = a1->d;
        v13 = *a4;
        v14 = *p_d;
        v15 = *(a4 + 8);
        v16 = bn_add_words(a1->d, a1->d, a1->d, *(a4 + 8));
        bn_reduce_once_in_place(d, v16, v13, v14, v15);
        --a3;
      }

      while (a3);
    }

    a1->neg = 0;
  }

  BN_CTX_end(a5);
  return v10;
}

uint64_t EVP_PKEY_is_opaque(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && (v2 = *(v1 + 112)) != 0)
  {
    return v2();
  }

  else
  {
    return 0;
  }
}

int EVP_PKEY_cmp(const EVP_PKEY *a, const EVP_PKEY *b)
{
  if (a->save_type != b->save_type)
  {
    return -1;
  }

  ptr = a->pkey.ptr;
  if (!ptr)
  {
    return -2;
  }

  v5 = *(ptr + 19);
  if (v5)
  {
    result = v5(a, b);
    if (result < 1)
    {
      return result;
    }

    ptr = a->pkey.ptr;
  }

  v7 = *(ptr + 5);
  if (!v7)
  {
    return -2;
  }

  return v7(a, b);
}

uint64_t EVP_PKEY_set_type(uint64_t a1, int a2)
{
  if (a1)
  {
    if (*(a1 + 8))
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = *(v4 + 160);
        if (v5)
        {
          v5(a1);
          *(a1 + 8) = 0;
          *(a1 + 4) = 0;
        }
      }
    }
  }

  if (a2 <= 407)
  {
    if (a2 == 6)
    {
      v6 = &rsa_asn1_meth;
      if (!a1)
      {
        return 1;
      }

LABEL_21:
      v7 = *(a1 + 16);
      if (v7)
      {
        v8 = *(v7 + 160);
        if (v8)
        {
          v8(a1);
          *(a1 + 8) = 0;
        }
      }

      *(a1 + 16) = v6;
      *(a1 + 4) = *v6;
      return 1;
    }

    if (a2 == 116)
    {
      v6 = &dsa_asn1_meth;
      if (!a1)
      {
        return 1;
      }

      goto LABEL_21;
    }
  }

  else
  {
    switch(a2)
    {
      case 949:
        v6 = &ed25519_asn1_meth;
        if (!a1)
        {
          return 1;
        }

        goto LABEL_21;
      case 948:
        v6 = &x25519_asn1_meth;
        if (!a1)
        {
          return 1;
        }

        goto LABEL_21;
      case 408:
        v6 = &ec_asn1_meth;
        if (!a1)
        {
          return 1;
        }

        goto LABEL_21;
    }
  }

  ERR_put_error(6, 0, 128, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/evp.c", 265);
  ERR_add_error_dataf("algorithm %d", v10, v11, v12, v13, v14, v15, v16, a2);
  return 0;
}

uint64_t *ec_GFp_nistp_recode_scalar_bits(uint64_t *result, void *a2, unint64_t a3)
{
  *result = -(a3 >> 5) & 1;
  *a2 = (((a3 >> 5) - 1) & a3 | (63 - a3) & -(a3 >> 5)) - ((((a3 >> 5) - 1) & a3 | (63 - a3) & -(a3 >> 5)) >> 1);
  return result;
}

uint64_t pkey_x25519_keygen(uint64_t a1, uint64_t a2)
{
  v3 = OPENSSL_malloc(0x41uLL);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  evp_pkey_set_method(a2, &x25519_asn1_meth);
  X25519_keypair(v4, v4 + 32);
  v5 = 1;
  v4[64] = 1;
  OPENSSL_free(*(a2 + 8));
  *(a2 + 8) = v4;
  return v5;
}

uint64_t pkey_x25519_derive(uint64_t a1, char *a2, void *a3)
{
  v3 = *(a1 + 16);
  if (!v3 || (v4 = *(a1 + 24)) == 0)
  {
    v9 = 117;
    v10 = 46;
    goto LABEL_10;
  }

  v6 = *(v3 + 8);
  v7 = *(v4 + 8);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 117;
    v10 = 53;
LABEL_10:
    ERR_put_error(6, 0, v9, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_x25519.c", v10);
    return 0;
  }

  if (!*(v6 + 64))
  {
    v9 = 130;
    v10 = 58;
    goto LABEL_10;
  }

  if (a2)
  {
    if (*a3 <= 0x1FuLL)
    {
      v9 = 100;
      v10 = 64;
      goto LABEL_10;
    }

    if (!X25519(a2, (v6 + 32), v7))
    {
      v9 = 134;
      v10 = 68;
      goto LABEL_10;
    }
  }

  *a3 = 32;
  return 1;
}

uint64_t pkey_x25519_ctrl(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    return 1;
  }

  ERR_put_error(6, 0, 101, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_x25519.c", 85);
  return 0;
}

void ec_GFp_mont_mul()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  __b[864] = *MEMORY[0x1E69E9840];
  memset(__b, 170, 0x1B00uLL);
  ec_GFp_simple_point_set_to_infinity(v7, __b);
  ec_GFp_simple_point_copy(&__b[27], v4);
  v8 = &__b[54];
  for (i = 2; i != 32; ++i)
  {
    if (i)
    {
      ec_GFp_mont_add(v7, v8, &__b[27], (v8 - 27));
    }

    else
    {
      ec_GFp_mont_dbl(v7, v8, &__b[27 * (i >> 1)]);
    }

    v8 += 27;
  }

  v10 = EC_GROUP_order_bits(v7);
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = v10 - 1;
    v14 = v10;
    while (2)
    {
      v15 = v14;
      while (1)
      {
        v14 = v13;
        if (v12)
        {
          ec_GFp_mont_dbl(v7, v6, v6);
        }

        if (5 * (v14 / 5) == v14)
        {
          break;
        }

        v13 = v14 - 1;
        v15 = v14;
        if (v14 - 1 >= v11)
        {
          if (v12)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }
      }

      v16 = *(v7 + 264);
      is_bit_set_words = bn_is_bit_set_words(v2, v16, v15 + 3);
      v18 = (8 * bn_is_bit_set_words(v2, v16, v15 + 2)) | (16 * is_bit_set_words);
      v19 = v18 | (4 * bn_is_bit_set_words(v2, v16, v15 + 1));
      v20 = v19 | (2 * bn_is_bit_set_words(v2, v16, v15));
      v21 = bn_is_bit_set_words(v2, v16, v14);
      v22 = 0;
      v27 = 0;
      v23 = (v20 | v21);
      v24 = __b;
      memset(v26, 0, sizeof(v26));
      do
      {
        ec_point_select(v7, v26, ((v22++ ^ v23) - 1) >> 63, v24, v26);
        v24 += 27;
      }

      while (v22 != 32);
      if (v12)
      {
        ec_GFp_mont_add(v7, v6, v6, v26);
      }

      else
      {
        ec_GFp_simple_point_copy(v6, v26);
      }

      v13 = v14 - 1;
      v12 = 1;
      if (v14 - 1 < v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_22:
    ec_GFp_simple_point_set_to_infinity(v7, v6);
  }

LABEL_23:
  v25 = *MEMORY[0x1E69E9840];
}

void ec_GFp_mont_mul_batch()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v20 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v0;
  __b[1377] = *MEMORY[0x1E69E9840];
  memset(__b, 170, 0x2B08uLL);
  ec_GFp_mont_batch_precomp(v14, __b, v11);
  ec_GFp_mont_batch_precomp(v14, &__b[459], v7);
  if (v3)
  {
    ec_GFp_mont_batch_precomp(v14, &__b[918], v3);
  }

  v15 = EC_GROUP_order_bits(v14);
  v16 = 0;
  v17 = v15;
  do
  {
    while (1)
    {
      if (v16)
      {
        ec_GFp_mont_dbl(v14, v13, v13);
      }

      if (5 * (v17 / 5) != v17)
      {
        break;
      }

      v22 = 0xAAAAAAAAAAAAAAAALL;
      *&v18 = 0xAAAAAAAAAAAAAAAALL;
      *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v21[11] = v18;
      v21[12] = v18;
      v21[9] = v18;
      v21[10] = v18;
      v21[7] = v18;
      v21[8] = v18;
      v21[5] = v18;
      v21[6] = v18;
      v21[3] = v18;
      v21[4] = v18;
      v21[1] = v18;
      v21[2] = v18;
      v21[0] = v18;
      ec_GFp_mont_batch_get_window(v14, v21, __b, v9, v17);
      if (v16)
      {
        ec_GFp_mont_add(v14, v13, v13, v21);
      }

      else
      {
        ec_GFp_simple_point_copy(v13, v21);
      }

      ec_GFp_mont_batch_get_window(v14, v21, &__b[459], v5, v17);
      ec_GFp_mont_add(v14, v13, v13, v21);
      if (v3)
      {
        ec_GFp_mont_batch_get_window(v14, v21, &__b[918], v20, v17);
        ec_GFp_mont_add(v14, v13, v13, v21);
      }

      --v17;
      v16 = 1;
      if (v17 > v15)
      {
        goto LABEL_18;
      }
    }

    --v17;
  }

  while (v17 <= v15);
  if ((v16 & 1) == 0)
  {
    ec_GFp_simple_point_set_to_infinity(v14, v13);
  }

LABEL_18:
  v19 = *MEMORY[0x1E69E9840];
}