uint64_t boringssl_session_set_trust_reference(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if (*result == -1252936367)
    {
      result = 0;
      if (a2)
      {
        v4 = *(v2 + 8);
        if (v4)
        {
          v5 = *(v4 + 352);
          if (v5)
          {
            CFRelease(v5);
          }

          *(v4 + 352) = 0;
          *(v4 + 352) = a2;
          CFRetain(*(v4 + 352));
          return 1;
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

void __boringssl_context_evaluate_trust_async_external_block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  if (boringssl_session_get_state(*(a1 + 64)) <= 3 && !boringssl_session_is_cancelled(*(a1 + 64)))
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __boringssl_context_evaluate_trust_async_external_block_invoke_2;
    v25[3] = &unk_1E7869638;
    v26 = *(a1 + 32);
    v28 = *(a1 + 64);
    v3 = *(a1 + 48);
    v4 = *(a1 + 80);
    v27 = v3;
    v29 = v4;
    v5 = MEMORY[0x1AC57F4F0](v25);
    v6 = *(a1 + 32);
    if (!v6)
    {
      goto LABEL_10;
    }

    WeakRetained = objc_loadWeakRetained((v6 + 16));
    if (WeakRetained)
    {
      v8 = WeakRetained;
      v9 = objc_loadWeakRetained((*(a1 + 32) + 16));
      v10 = v9[435];

      if (v10)
      {
        goto LABEL_16;
      }
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = objc_loadWeakRetained((v11 + 16));
      if (v12)
      {
        v13 = objc_loadWeakRetained((*(a1 + 32) + 16));
        v14 = (v13[435] & 1) == 0;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        goto LABEL_16;
      }
    }

    else
    {
LABEL_10:
      v14 = 1;
    }

    if (!g_boringssl_log)
    {
LABEL_16:
      v16 = *(a1 + 40);
      v17 = *(*(a1 + 32) + 512);
      (*(*(a1 + 56) + 16))();

      goto LABEL_17;
    }

    v15 = g_boringssl_log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
LABEL_15:

      goto LABEL_16;
    }

    v19 = *(a1 + 32);
    if (v19)
    {
      v14 = objc_loadWeakRetained((v19 + 16));
      v24 = *(a1 + 32);
      if (v14)
      {
        v20 = v24 != 0;
        if (v24)
        {
          v1 = objc_loadWeakRetained((v24 + 16));
          v24 = *(a1 + 32);
        }

        else
        {
          v1 = 0;
        }

        v23 = v1 + 351;
      }

      else
      {
        v20 = 0;
        v23 = &unk_1A9098A9F;
      }

      if (v24)
      {
        v21 = objc_loadWeakRetained((v24 + 16));
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 1;
      }
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v22 = 1;
      v23 = &unk_1A9098A9F;
    }

    *buf = 136446978;
    v31 = "boringssl_context_evaluate_trust_async_external_block_invoke";
    v32 = 1024;
    v33 = 1800;
    v34 = 2082;
    v35 = v23;
    v36 = 2048;
    v37 = v21;
    _os_log_debug_impl(&dword_1A8FF5000, v15, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] Invoking verify block", buf, 0x26u);
    if (v22)
    {
      if (!v20)
      {
        goto LABEL_31;
      }
    }

    else
    {

      if (!v20)
      {
LABEL_31:
        if (!v19)
        {
          goto LABEL_15;
        }

        goto LABEL_35;
      }
    }

    if (!v19)
    {
      goto LABEL_15;
    }

LABEL_35:

    goto LABEL_15;
  }

  *(*(a1 + 72) + 550) &= ~8u;
LABEL_17:
  v18 = *MEMORY[0x1E69E9840];
}

double bssl::ssl_done_writing_client_hello(void **a1)
{
  v2 = a1 + 73;
  OPENSSL_free(a1[73]);
  *v2 = 0u;
  OPENSSL_free(a1[69]);
  *(a1 + 69) = 0u;
  OPENSSL_free(a1[79]);
  result = 0.0;
  *(a1 + 79) = 0u;
  return result;
}

uint64_t OPENSSL_sk_find(uint64_t result, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void))
{
  if (!result)
  {
    return result;
  }

  v6 = result;
  if (!*(result + 32))
  {
    if (*result)
    {
      v9 = 0;
      while (*(*(result + 8) + 8 * v9) != a3)
      {
        if (*result == ++v9)
        {
          return 0;
        }
      }

      goto LABEL_31;
    }

    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  v8 = *result;
  if (*(result + 16) || v8 < 2)
  {
    if (v8)
    {
      v10 = 0;
      do
      {
        v11 = v8 - v10 - 1;
        v9 = v10 + (v11 >> 1);
        if (__CFADD__(v10, v11 >> 1) || v9 >= v8)
        {
          OPENSSL_sk_find_cold_3();
        }

        v12 = a4(v6[4], a3, *(v6[1] + 8 * v9));
        if (v12 < 1)
        {
          if (v12 < 0)
          {
            v8 = v9;
          }

          else
          {
            if (v8 - v10 == 1)
            {
              goto LABEL_31;
            }

            v13 = v9 + 1 >= v8;
            v8 = v9 + 1;
            if (v13)
            {
              OPENSSL_sk_find_cold_1();
            }
          }
        }

        else
        {
          v10 = v9 + 1;
        }
      }

      while (v10 < v8);
      if (v10 != v8)
      {
        OPENSSL_sk_find_cold_2();
      }
    }

    return 0;
  }

  v9 = 0;
  while (a4(v6[4], a3, *(v6[1] + 8 * v9)))
  {
    if (++v9 >= *v6)
    {
      return 0;
    }
  }

LABEL_31:
  if (a2)
  {
    *a2 = v9;
  }

  return 1;
}

void bssl::ssl_set_session(ssl_st **this, SSL_SESSION *a2, ssl_session_st *a3)
{
  v3 = (this + 13);
  if (this[13] != a2)
  {
    if (a2)
    {
      CRYPTO_refcount_inc(a2);
    }

    std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](v3, a2);
  }
}

BOOL bssl::ssl_parse_cert_chain(char *a1, unint64_t **a2, EVP_PKEY **a3, unsigned __int8 *a4, unsigned __int8 **a5, void **a6)
{
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](a2, 0);
  std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](a3, 0);
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_u24_length_prefixed(a5, &v23))
  {
    *a1 = 50;
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_cert.cc", 257);
    return 0;
  }

  if (!v24)
  {
    return 1;
  }

  ctx = OPENSSL_sk_new_null();
  if (!ctx)
  {
    v12 = 0;
    *a1 = 80;
    goto LABEL_27;
  }

  pkey = 0;
  v12 = v24 == 0;
  v13 = 0;
  if (!v24)
  {
LABEL_17:
    v16 = ctx;
    ctx = 0;
    std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](a2, v16);
    pkey = 0;
    std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](a3, v13);
    v13 = pkey;
    goto LABEL_25;
  }

  while (1)
  {
    *&v20 = 0xAAAAAAAAAAAAAAAALL;
    *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    if (!CBS_get_u24_length_prefixed(&v23, &v20) || !*(&v20 + 1))
    {
      *a1 = 50;
      ERR_put_error(16, 0, 127, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_cert.cc", 277);
      goto LABEL_25;
    }

    if (!EVP_MD_CTX_md(ctx))
    {
      break;
    }

LABEL_14:
    v15 = CRYPTO_BUFFER_new_from_CBS(&v20, a6);
    if (!v15)
    {
      goto LABEL_23;
    }

    v19 = 0;
    if (!OPENSSL_sk_push(ctx, v15))
    {
      CRYPTO_BUFFER_free(v15);
LABEL_23:
      v17 = 80;
      goto LABEL_24;
    }

    v12 = v24 == 0;
    if (!v24)
    {
      goto LABEL_17;
    }
  }

  bssl::ssl_cert_parse_pubkey(&v20, &v19);
  v14 = v19;
  v19 = 0;
  pkey = v14;
  if (v13)
  {
    EVP_PKEY_free(v13);
    v13 = pkey;
    if (!pkey)
    {
      goto LABEL_29;
    }

    goto LABEL_12;
  }

  v13 = v14;
  if (v14)
  {
LABEL_12:
    if (a4)
    {
      SHA256(v20, *(&v20 + 1), a4);
    }

    goto LABEL_14;
  }

LABEL_29:
  v17 = 50;
LABEL_24:
  *a1 = v17;
LABEL_25:
  pkey = 0;
  if (v13)
  {
    EVP_PKEY_free(v13);
  }

LABEL_27:
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](&ctx, 0);
  return v12;
}

void sub_1A902A11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, EVP_PKEY *);
  std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](va1, 0);
  _Unwind_Resume(a1);
}

uint64_t SSL_clear_options(uint64_t a1, int a2)
{
  v2 = *(a1 + 144) & ~a2;
  *(a1 + 144) = v2;
  return v2;
}

uint64_t EC_KEY_parse_curve_name(__int128 *a1)
{
  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = 0xAAAAAAAAAAAAAAAALL;
  if (CBS_get_asn1(a1, v6, 6))
  {
    v1 = 0;
    while (1)
    {
      v2 = (*(&kAllGroups + v1))();
      if (CBS_mem_equal(v6, (v2 + 516), *(v2 + 525)))
      {
        break;
      }

      v1 += 8;
      if (v1 == 32)
      {
        v3 = 123;
        v4 = 357;
        goto LABEL_7;
      }
    }
  }

  else
  {
    v3 = 128;
    v4 = 345;
LABEL_7:
    ERR_put_error(15, 0, v3, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/ec_extra/ec_asn1.c", v4);
    return 0;
  }

  return v2;
}

uint64_t eckey_pub_decode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = EC_KEY_parse_curve_name(a2);
  if (!v6 || *(a2 + 8))
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ec_asn1.c", 99);
    v7 = 0;
LABEL_4:
    EC_KEY_free(v7);
    return 0;
  }

  v9 = v6;
  v10 = EC_KEY_new();
  v7 = v10;
  if (!v10 || !EC_KEY_set_group(v10, v9) || !EC_KEY_oct2key(v7, *a3, *(a3 + 8), 0))
  {
    goto LABEL_4;
  }

  evp_pkey_set_method(a1, &ec_asn1_meth);
  *(a1 + 8) = v7;
  return 1;
}

void *EC_KEY_new_method(uint64_t a1)
{
  v2 = OPENSSL_zalloc(0x38uLL);
  v5 = v2;
  if (!v2)
  {
    return v5;
  }

  if (!a1)
  {
    ECDSA_method = v2[5];
    if (!ECDSA_method)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  ECDSA_method = ENGINE_get_ECDSA_method(a1);
  v5[5] = ECDSA_method;
  if (ECDSA_method)
  {
LABEL_4:
    METHOD_ref(ECDSA_method);
  }

LABEL_5:
  *(v5 + 28) = 0x100000004;
  CRYPTO_new_ex_data(v5 + 48, v3, v4);
  v7 = v5[5];
  if (v7)
  {
    v8 = *(v7 + 16);
    if (v8)
    {
      if (!v8(v5))
      {
        CRYPTO_free_ex_data(&g_ec_ex_data_class, v5, v5 + 3);
        v9 = v5[5];
        if (v9)
        {
          METHOD_unref(v9);
        }

        OPENSSL_free(v5);
        return 0;
      }
    }
  }

  return v5;
}

int EC_KEY_set_group(EC_KEY *a1, const EC_GROUP *a2)
{
  v4 = *a1;
  if (v4)
  {
    if (EC_GROUP_cmp(v4, a2, 0))
    {
      ERR_put_error(15, 0, 130, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec_key.c.inc", 220);
      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 2))
    {
      EC_KEY_set_group_cold_1();
    }

    if (*(a1 + 1))
    {
      EC_KEY_set_group_cold_2();
    }

    EC_GROUP_free(0);
    v6 = EC_GROUP_dup(a2);
    *a1 = v6;
    return v6 != 0;
  }
}

void EC_GROUP_free(EC_GROUP *a1)
{
  if (a1 && !*(a1 + 128) && CRYPTO_refcount_dec_and_test_zero(a1 + 135))
  {
    bn_mont_ctx_cleanup((a1 + 232));
    bn_mont_ctx_cleanup((a1 + 296));

    OPENSSL_free(a1);
  }
}

EC_GROUP *__cdecl EC_GROUP_dup(const EC_GROUP *a1)
{
  if (a1 && !*(a1 + 128))
  {
    CRYPTO_refcount_inc(a1 + 135);
  }

  return a1;
}

uint64_t EC_KEY_oct2key(EC_KEY *a1, const unsigned __int8 *a2, size_t a3, BN_CTX *a4)
{
  v5 = *a1;
  if (v5)
  {
    v9 = EC_POINT_new(v5);
    if (v9 && EC_POINT_oct2point(*a1, v9, a2, a3, a4))
    {
      v10 = EC_KEY_set_public_key(a1, v9);
    }

    else
    {
      v10 = 0;
    }

    EC_POINT_free(v9);
  }

  else
  {
    ERR_put_error(15, 0, 114, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec_key.c.inc", 405);
    return 0;
  }

  return v10;
}

EC_POINT *__cdecl EC_POINT_new(const EC_GROUP *a1)
{
  if (a1)
  {
    v2 = OPENSSL_malloc(0xE0uLL);
    if (v2)
    {
      if (!*(a1 + 128))
      {
        CRYPTO_refcount_inc(a1 + 135);
      }

      *v2 = a1;
      ec_GFp_simple_point_init(v2 + 8);
    }
  }

  else
  {
    ERR_put_error(15, 0, 67, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec.c.inc", 469);
    return 0;
  }

  return v2;
}

double ec_GFp_simple_point_init(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  return result;
}

int EC_POINT_oct2point(const EC_GROUP *a1, EC_POINT *a2, const unsigned __int8 *buf, size_t len, BN_CTX *a5)
{
  if (EC_GROUP_cmp(a1, *a2, 0))
  {
    v10 = 106;
    v11 = 205;
LABEL_3:
    ERR_put_error(15, 0, v10, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/oct.c.inc", v11);
    return 0;
  }

  if (!len)
  {
    v10 = 100;
    v11 = 140;
    goto LABEL_3;
  }

  v14 = *buf;
  if (v14 != 4)
  {
    v18 = BN_num_bytes((a1 + 320));
    if ((v14 & 0xFE) != 2 || v18 + 1 != len)
    {
      v10 = 109;
      v11 = 162;
      goto LABEL_3;
    }

    if (a5)
    {
      v20 = 0;
    }

    else
    {
      a5 = BN_CTX_new();
      v20 = a5;
      if (!a5)
      {
        return 0;
      }
    }

    BN_CTX_start(a5);
    v21 = BN_CTX_get(a5);
    if (v21)
    {
      v22 = v21;
      if (BN_bin2bn(buf + 1, v18, v21))
      {
        if (BN_ucmp(v22, (a1 + 320)) < 0)
        {
          v12 = EC_POINT_set_compressed_coordinates_GFp(a1, a2, v22, v14 & 1, a5);
          goto LABEL_25;
        }

        ERR_put_error(15, 0, 109, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/oct.c.inc", 186);
      }
    }

    v12 = 0;
LABEL_25:
    BN_CTX_end(a5);
    BN_CTX_free(v20);
    return v12;
  }

  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23[7] = v15;
  v23[8] = v15;
  v23[5] = v15;
  v23[6] = v15;
  v23[3] = v15;
  v23[4] = v15;
  v23[1] = v15;
  v23[2] = v15;
  v23[0] = v15;
  v16 = ec_point_from_uncompressed(a1, v23, buf, len);
  v17 = a2 + 8;
  if (v16)
  {
    ec_affine_to_jacobian(a1, v17, v23);
    return 1;
  }

  ec_set_to_safe_point(a1, v17);
  return 0;
}

uint64_t ec_point_from_uncompressed(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  if (((2 * BN_num_bytes((a1 + 320))) | 1) == a4 && *a3 == 4)
  {
    v12 = 0xAAAAAAAAAAAAAAAALL;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v11[2] = v7;
    v11[3] = v7;
    v11[0] = v7;
    v11[1] = v7;
    v10 = 0xAAAAAAAAAAAAAAAALL;
    v9[2] = v7;
    v9[3] = v7;
    v9[0] = v7;
    v9[1] = v7;
    result = ec_felem_from_bytes(a1);
    if (result)
    {
      result = ec_felem_from_bytes(a1);
      if (result)
      {
        return ec_point_set_affine_coordinates(a1, a2, v11, v9) != 0;
      }
    }
  }

  else
  {
    ERR_put_error(15, 0, 109, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/oct.c.inc", 122);
    return 0;
  }

  return result;
}

int EC_GROUP_cmp(const EC_GROUP *a1, const EC_GROUP *a2, BN_CTX *a3)
{
  if (a1 == a2)
  {
    return 0;
  }

  v5 = *(a1 + 128);
  if (v5 != *(a2 + 128))
  {
    return 1;
  }

  if (v5)
  {
    return 0;
  }

  return *a1 != *a2 || !*(a1 + 133) || !*(a2 + 133) || BN_cmp((a1 + 256), (a2 + 256)) || BN_cmp((a1 + 320), (a2 + 320)) || !ec_felem_equal(a1, a1 + 360, a2 + 360) || !ec_felem_equal(a1, a1 + 432, a2 + 432) || ec_GFp_simple_points_equal(a1, a1 + 16, a2 + 1) == 0;
}

uint64_t ec_GFp_mont_felem_from_bytes(uint64_t a1, unint64_t *a2, unsigned __int8 *a3, unint64_t a4)
{
  result = ec_GFp_simple_felem_from_bytes(a1, a2, a3, a4);
  if (result)
  {
    bn_to_montgomery_small(a2, a2, *(a1 + 328), (a1 + 296));
    return 1;
  }

  return result;
}

uint64_t bn_cmp_words_consttime(uint64_t *a1, unint64_t a2, uint64_t *a3, unint64_t a4)
{
  if (a2 >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a2;
  }

  if (v5)
  {
    result = 0;
    v7 = a1;
    v8 = a3;
    do
    {
      v10 = *v7++;
      v9 = v10;
      v11 = *v8++;
      v12 = (((v11 ^ v9) - 1) & ~(v11 ^ v9)) >> 63;
      result = v12 & result | (((((v9 - v11) ^ v9 | v11 ^ v9) ^ v9) >> 63) | 1) & ~v12;
      --v5;
    }

    while (v5);
  }

  else
  {
    result = 0;
  }

  v13 = a2 - a4;
  if (a2 >= a4)
  {
    if (a4 < a2)
    {
      v18 = 0;
      v19 = &a1[a4];
      do
      {
        v20 = *v19++;
        v18 |= v20;
        --v13;
      }

      while (v13);
      return (((((v18 - 1) & ~v18) >> 63) & 1) == 0) | (((v18 - 1) & ~v18) >> 63) & result;
    }
  }

  else
  {
    v14 = 0;
    v15 = a4 - a2;
    v16 = &a3[a2];
    do
    {
      v17 = *v16++;
      v14 |= v17;
      --v15;
    }

    while (v15);
    return result | ~(((v14 - 1) & ~v14) >> 63);
  }

  return result;
}

void bn_mul_normal(unint64_t *a1, unint64_t *a2, unint64_t a3, unint64_t *a4, unint64_t a5)
{
  if (a3 < a5)
  {
    v6 = a5;
  }

  else
  {
    v6 = a3;
  }

  if (a3 < a5)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  if (a3 < a5)
  {
    v8 = a3;
  }

  else
  {
    v8 = a5;
  }

  if (a3 < a5)
  {
    v9 = a4;
  }

  else
  {
    v9 = a2;
  }

  if (v8)
  {
    a1[v6] = bn_mul_words(a1, v9, v6, *v7);
    if (v8 != 1)
    {
      v10 = 0;
      v11 = v7 + 2;
      v12 = 4 - v8;
      v13 = &a1[v6 + 4];
      do
      {
        v13[v10 - 3] = bn_mul_add_words(&a1[v10 + 1], v9, v6, v11[v10 - 1]);
        if (v12 == 2)
        {
          break;
        }

        v13[v10 - 2] = bn_mul_add_words(&a1[v10 + 2], v9, v6, v11[v10]);
        if (v12 == 1)
        {
          break;
        }

        v13[v10 - 1] = bn_mul_add_words(&a1[v10 + 3], v9, v6, v11[v10 + 1]);
        if (!v12)
        {
          break;
        }

        v13[v10] = bn_mul_add_words(&a1[v10 + 4], v9, v6, v11[v10 + 2]);
        v12 += 4;
        v10 += 4;
      }

      while (v12 != 3);
    }
  }

  else if (8 * v6)
  {

    bzero(a1, 8 * v6);
  }
}

void bn_mod_mul_montgomery_small(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a4 > 9 || *(a5 + 32) != a4)
  {
    goto LABEL_8;
  }

  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13[7] = v10;
  v13[8] = v10;
  v13[5] = v10;
  v13[6] = v10;
  v13[3] = v10;
  v13[4] = v10;
  v13[1] = v10;
  v13[2] = v10;
  v13[0] = v10;
  v11 = 2 * a4;
  if (a2 == a3)
  {
    bn_sqr_small(v13, v11, a2, a4);
  }

  else
  {
    bn_mul_small(v13, v11, a2, a4, a3, a4);
  }

  if (!bn_from_montgomery_in_place(a1, a4, v13, 2 * a4, a5))
  {
LABEL_8:
    abort();
  }

  OPENSSL_cleanse(v13, 16 * a4);
  v12 = *MEMORY[0x1E69E9840];
}

uint64_t bn_reduce_once_in_place(unint64_t *ap, uint64_t a2, const unint64_t *a3, unint64_t *rp, uint64_t num)
{
  v8 = a2 - bn_sub_words(rp, ap, a3, num);
  if ((v8 + 1) >= 2)
  {
    bn_reduce_once_in_place_cold_1();
  }

  bn_select_words(ap, v8, ap, rp, num);
  return v8;
}

__n128 ec_affine_to_jacobian(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  v4 = *(a3 + 16);
  v5 = *(a3 + 32);
  v6 = *(a3 + 48);
  *(a2 + 64) = *(a3 + 64);
  *(a2 + 32) = v5;
  *(a2 + 48) = v6;
  *(a2 + 16) = v4;
  v7 = *(a3 + 104);
  v8 = *(a3 + 120);
  v9 = *(a3 + 136);
  *(a2 + 88) = *(a3 + 88);
  *(a2 + 136) = v9;
  *(a2 + 120) = v8;
  *(a2 + 104) = v7;
  *(a2 + 72) = *(a3 + 72);
  v10 = ec_felem_one(a1);
  *(a2 + 144) = *v10;
  v12 = *(v10 + 32);
  result = *(v10 + 48);
  v13 = *(v10 + 16);
  *(a2 + 208) = *(v10 + 64);
  *(a2 + 176) = v12;
  *(a2 + 192) = result;
  *(a2 + 160) = v13;
  return result;
}

int EC_KEY_set_public_key(EC_KEY *a1, const EC_POINT *a2)
{
  v3 = *a1;
  if (v3)
  {
    if (!a2 || !EC_GROUP_cmp(v3, *a2, 0))
    {
      EC_POINT_free(*(a1 + 1));
      v7 = EC_POINT_dup(a2, *a1);
      *(a1 + 1) = v7;
      return v7 != 0;
    }

    v5 = 130;
    v6 = 273;
  }

  else
  {
    v5 = 114;
    v6 = 268;
  }

  ERR_put_error(15, 0, v5, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec_key.c.inc", v6);
  return 0;
}

int EC_POINT_copy(EC_POINT *a1, const EC_POINT *a2)
{
  if (EC_GROUP_cmp(*a1, *a2, v2))
  {
    ERR_put_error(15, 0, 106, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec.c.inc", 501);
    return 0;
  }

  else
  {
    if (a1 != a2)
    {
      ec_GFp_simple_point_copy(a1 + 8, a2 + 8);
    }

    return 1;
  }
}

__n128 ec_GFp_simple_point_copy(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = v2;
  v5 = *(a2 + 104);
  v6 = *(a2 + 120);
  v7 = *(a2 + 136);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 136) = v7;
  *(a1 + 120) = v6;
  *(a1 + 104) = v5;
  *(a1 + 72) = *(a2 + 72);
  v9 = *(a2 + 176);
  v8 = *(a2 + 192);
  v10 = *(a2 + 160);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v9;
  *(a1 + 192) = v8;
  *(a1 + 160) = v10;
  result = *(a2 + 144);
  *(a1 + 144) = result;
  return result;
}

void nw_protocol_boringssl_disconnect_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t boringssl_session_disconnect(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 != -1252936367)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 8);
  if (!v2 || !*(v2 + 392))
  {
    return 0xFFFFFFFFLL;
  }

  WeakRetained = objc_loadWeakRetained((v2 + 16));
  if (!WeakRetained || (v4 = WeakRetained, v5 = objc_loadWeakRetained((v2 + 16)), v6 = v5[435], v5, v4, (v6 & 1) == 0))
  {
    v7 = objc_loadWeakRetained((v2 + 16));
    if (v7)
    {
      v8 = objc_loadWeakRetained((v2 + 16));
      v9 = (v8[435] & 1) == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (g_boringssl_log)
      {
        v11 = g_boringssl_log;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          boringssl_session_disconnect_cold_1();
        }
      }
    }
  }

  v12 = SSL_shutdown(*(v2 + 392));
  v13 = objc_loadWeakRetained((v2 + 16));
  if (!v13 || (v14 = v13, v15 = objc_loadWeakRetained((v2 + 16)), v16 = v15[435], v15, v14, (v16 & 1) == 0))
  {
    v17 = objc_loadWeakRetained((v2 + 16));
    if (v17)
    {
      v18 = objc_loadWeakRetained((v2 + 16));
      v19 = (v18[435] & 1) == 0;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      if (g_boringssl_log)
      {
        v20 = g_boringssl_log;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          boringssl_session_disconnect_cold_2();
        }
      }
    }
  }

  boringssl_session_set_state(a1, 3);
  return (v12 >> 31);
}

void bn_mul_small(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4, unint64_t *a5, unint64_t a6)
{
  if (a6 + a4 != a2)
  {
    abort();
  }

  if (a4 == 8 && a6 == 8)
  {

    bn_mul_comba8(a1, a3, a5);
  }

  else
  {

    bn_mul_normal(a1, a3, a4, a5, a6);
  }
}

uint64_t ec_point_set_affine_coordinates(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*a1 + 88);
  v9 = *(*a1 + 96);
  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[2] = v10;
  v26[3] = v10;
  v26[0] = v10;
  v26[1] = v10;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v24[2] = v10;
  v24[3] = v10;
  v24[0] = v10;
  v24[1] = v10;
  v9(a1, v26, a4);
  v9(a1, v24, a3);
  ec_felem_add(a1, v24, v24, (a1 + 360));
  v8(a1, v24, v24, a3);
  ec_felem_add(a1, v24, v24, (a1 + 432));
  if (ec_felem_equal(a1, v26, v24))
  {
    *a2 = *a3;
    v11 = *(a3 + 16);
    v12 = *(a3 + 32);
    v13 = *(a3 + 48);
    *(a2 + 64) = *(a3 + 64);
    *(a2 + 32) = v12;
    *(a2 + 48) = v13;
    *(a2 + 16) = v11;
    v15 = *(a4 + 32);
    v14 = *(a4 + 48);
    v16 = *(a4 + 64);
    *(a2 + 88) = *(a4 + 16);
    *(a2 + 136) = v16;
    *(a2 + 120) = v14;
    *(a2 + 104) = v15;
    *(a2 + 72) = *a4;
    return 1;
  }

  else
  {
    ERR_put_error(15, 0, 120, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec.c.inc", 628);
    result = 0;
    if (*(a1 + 532))
    {
      *a2 = *(a1 + 16);
      v18 = *(a1 + 32);
      v19 = *(a1 + 48);
      v20 = *(a1 + 64);
      *(a2 + 64) = *(a1 + 80);
      *(a2 + 32) = v19;
      *(a2 + 48) = v20;
      *(a2 + 16) = v18;
      v21 = *(a1 + 120);
      v22 = *(a1 + 136);
      v23 = *(a1 + 104);
      *(a2 + 136) = *(a1 + 152);
      *(a2 + 88) = v23;
      *(a2 + 120) = v22;
      *(a2 + 104) = v21;
      *(a2 + 72) = *(a1 + 88);
    }
  }

  return result;
}

void bn_sqr_small(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a4 > 9 || 2 * a4 != a2)
  {
    abort();
  }

  if (a4 == 8)
  {
    v6 = *MEMORY[0x1E69E9840];

    bn_sqr_comba8(a1, a3);
  }

  else if (a4 == 4)
  {
    v5 = *MEMORY[0x1E69E9840];

    bn_sqr_comba4(a1, a3);
  }

  else
  {
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9[7] = v7;
    v9[8] = v7;
    v9[5] = v7;
    v9[6] = v7;
    v9[3] = v7;
    v9[4] = v7;
    v9[1] = v7;
    v9[2] = v7;
    v9[0] = v7;
    bn_sqr_normal(a1, a3, a4, v9);
    OPENSSL_cleanse(v9, 16 * a4);
    v8 = *MEMORY[0x1E69E9840];
  }
}

EC_POINT *__cdecl EC_POINT_dup(const EC_POINT *a1, const EC_GROUP *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = EC_POINT_new(a2);
  v4 = v3;
  if (!v3 || !EC_POINT_copy(v3, a1))
  {
    EC_POINT_free(v4);
    return 0;
  }

  return v4;
}

uint64_t CBB_add_asn1(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  if (!CBB_flush(a1))
  {
    return 0;
  }

  if ((a3 & 0x1FFFFFFF) < 0x1F)
  {
    if (!cbb_add_u(a1, HIBYTE(a3) & 0xE0 | a3, 1uLL))
    {
      return 0;
    }
  }

  else if (!cbb_add_u(a1, HIBYTE(a3) | 0x1F, 1uLL) || !add_base128_integer(a1, a3 & 0x1FFFFFFF))
  {
    return 0;
  }

  return cbb_add_child(a1, a2, 1u, 1);
}

uint64_t CBB_add_asn1_octet_string(uint64_t a1, const void *a2, size_t a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9[1] = v6;
  v9[2] = v6;
  v9[0] = v6;
  if (CBB_add_asn1(a1, v9, 4u) && CBB_add_bytes(v9, a2, a3) && CBB_flush(a1))
  {
    return 1;
  }

  v8 = (a1 + 16);
  if (*(a1 + 8))
  {
    v8 = *v8;
  }

  result = 0;
  *(v8 + 24) |= 2u;
  *a1 = 0;
  return result;
}

void ssl_st::~ssl_st(ssl_st *this)
{
  CRYPTO_free_ex_data(&bssl::g_ex_data_class_ssl, this, &this->d1);
  std::unique_ptr<bssl::SSL_CONFIG,bssl::internal::Deleter>::reset[abi:ne200100](&this->method, 0);
  if (*&this->version)
  {
    (*(*&this->version + 16))(this);
  }

  std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100](&this->msg_callback_arg, 0);
  std::unique_ptr<ssl_ctx_st,bssl::internal::Deleter>::reset[abi:ne200100](&this->s3, 0);
  std::unique_ptr<ssl_ctx_st,bssl::internal::Deleter>::reset[abi:ne200100](&this->s2, 0);
  std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](&this->packet, 0);
  std::unique_ptr<bio_st,bssl::internal::Deleter>::reset[abi:ne200100](&this->bbio, 0);
  std::unique_ptr<bio_st,bssl::internal::Deleter>::reset[abi:ne200100](&this->wbio, 0);
  std::unique_ptr<bssl::SSL_CONFIG,bssl::internal::Deleter>::reset[abi:ne200100](&this->method, 0);
}

void SSL_free(SSL *ssl)
{
  if (ssl)
  {
    ssl_st::~ssl_st(ssl);

    OPENSSL_free(v1);
  }
}

uint64_t bn_from_montgomery_in_place(unint64_t *a1, uint64_t num, unint64_t *rp, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 32);
  if (v5 == num && 2 * v5 == a4)
  {
    v11 = *(a5 + 24);
    v12 = 0;
    if (v5)
    {
      v13 = *(a5 + 48);
      v14 = rp;
      v15 = num;
      do
      {
        v16 = bn_mul_add_words(v14, v11, num, *v14 * v13);
        v17 = v14[num];
        v18 = v16 + v12 + v17;
        v12 = (v18 <= v17) & ((v16 + v12 != 0) | v12);
        v14[num] = v18;
        ++v14;
        --v15;
      }

      while (v15);
    }

    bn_reduce_once(a1, &rp[num], v12, v11, num);
    return 1;
  }

  else
  {
    ERR_put_error(3, 0, 66, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/montgomery.c.inc", 294);
    return 0;
  }
}

void *bn_sqr_comba4(void *result, unint64_t *a2)
{
  v2 = (*a2 * *a2) >> 64;
  *result = *a2 * *a2;
  v3 = a2[1];
  v4 = (*a2 * v3) >> 64;
  v5 = *a2 * v3;
  v6 = __CFADD__(v5, v2);
  v7 = v5 + v2;
  if (v6)
  {
    v8 = v4 + 1;
  }

  else
  {
    v8 = v4;
  }

  v6 = __CFADD__(v7, v5);
  v9 = v7 + v5;
  if (v6)
  {
    v10 = v4 + 1;
  }

  else
  {
    v10 = v4;
  }

  result[1] = v9;
  v12 = *a2;
  v11 = a2[1];
  v13 = (v11 * v11) >> 64;
  v14 = v11 * v11;
  v6 = __CFADD__(v14, v10 + v8);
  v15 = v14 + v10 + v8;
  if (v6)
  {
    v16 = v13 + 1;
  }

  else
  {
    v16 = v13;
  }

  v6 = __CFADD__(__CFADD__(v10, v8), v16);
  v17 = __CFADD__(v10, v8) + v16;
  v18 = v6;
  v19 = a2[2];
  v20 = (v12 * v19) >> 64;
  v21 = v12 * v19;
  v6 = __CFADD__(v15, v21);
  v22 = v15 + v21;
  if (v6)
  {
    v23 = v20 + 1;
  }

  else
  {
    v23 = v20;
  }

  v6 = __CFADD__(v17, v23);
  v24 = v17 + v23;
  v25 = v6;
  v6 = __CFADD__(v22, v21);
  v26 = v22 + v21;
  if (v6)
  {
    v27 = v20 + 1;
  }

  else
  {
    v27 = v20;
  }

  v6 = __CFADD__(v24, v27);
  v28 = v24 + v27;
  v29 = v18 + v6 + v25;
  result[2] = v26;
  v31 = a2[2];
  v30 = a2[3];
  v32 = a2[1];
  v33 = (*a2 * v30) >> 64;
  v34 = *a2 * v30;
  v6 = __CFADD__(v34, v28);
  v35 = v34 + v28;
  if (v6)
  {
    v36 = v33 + 1;
  }

  else
  {
    v36 = v33;
  }

  v37 = v29 + v36;
  v6 = __CFADD__(v35, v34);
  v38 = v35 + v34;
  if (v6)
  {
    v39 = v33 + 1;
  }

  else
  {
    v39 = v33;
  }

  v6 = __CFADD__(v37, v39);
  v40 = v37 + v39;
  v41 = v6;
  if (__CFADD__(v29, v36))
  {
    v42 = v41 + 1;
  }

  else
  {
    v42 = v41;
  }

  v43 = (v32 * v31) >> 64;
  v44 = v32 * v31;
  v6 = __CFADD__(v38, v44);
  v45 = v38 + v44;
  if (v6)
  {
    v46 = v43 + 1;
  }

  else
  {
    v46 = v43;
  }

  v6 = __CFADD__(v40, v46);
  v47 = v40 + v46;
  v48 = v6;
  v6 = __CFADD__(v45, v44);
  v49 = v45 + v44;
  if (v6)
  {
    v50 = v43 + 1;
  }

  else
  {
    v50 = v43;
  }

  v51 = __PAIR128__(v42, v47) + __PAIR128__(v48, v50);
  result[3] = v49;
  v52 = a2[1];
  v53 = a2[2] * a2[2] + v51;
  v54 = *(&v51 + 1) + v51;
  v55 = __CFADD__(*(&v51 + 1), v51);
  v56 = a2[3];
  v57 = (v52 * v56) >> 64;
  v58 = v52 * v56;
  v6 = __CFADD__(v53, v58);
  v59 = v53 + v58;
  if (v6)
  {
    v60 = v57 + 1;
  }

  else
  {
    v60 = v57;
  }

  v6 = __CFADD__(v54, v60);
  v61 = v54 + v60;
  v62 = v6;
  v6 = __CFADD__(v59, v58);
  v63 = v59 + v58;
  if (v6)
  {
    v64 = v57 + 1;
  }

  else
  {
    v64 = v57;
  }

  v6 = __CFADD__(v61, v64);
  v65 = v61 + v64;
  v66 = v55 + v6 + v62;
  result[4] = v63;
  v68 = a2[2];
  v67 = a2[3];
  v69 = (v68 * v67) >> 64;
  v70 = v68 * v67;
  v6 = __CFADD__(v70, v65);
  v71 = v70 + v65;
  if (v6)
  {
    v72 = v69 + 1;
  }

  else
  {
    v72 = v69;
  }

  v73 = v66 + v72;
  v6 = __CFADD__(v71, v70);
  v74 = v71 + v70;
  if (v6)
  {
    v75 = v69 + 1;
  }

  else
  {
    v75 = v69;
  }

  v6 = __CFADD__(v73, v75);
  v76 = v73 + v75;
  v77 = v6;
  result[5] = v74;
  v78 = a2[3];
  v79 = (v78 * v78) >> 64;
  v80 = v78 * v78;
  v6 = __CFADD__(v80, v76);
  v81 = v80 + v76;
  if (v6)
  {
    v82 = v79 + 1;
  }

  else
  {
    v82 = v79;
  }

  result[6] = v81;
  result[7] = v77 + __CFADD__(v66, v72) + v82;
  return result;
}

uint64_t ec_felem_add(uint64_t a1, unint64_t *a2, const unint64_t *a3, const unint64_t *a4)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[2] = v4;
  v6[3] = v4;
  v6[0] = v4;
  v6[1] = v4;
  return bn_mod_add_words(a2, a3, a4, *(a1 + 320), v6, *(a1 + 328));
}

uint64_t bn_mod_add_words(unint64_t *a1, const unint64_t *a2, const unint64_t *a3, const unint64_t *a4, unint64_t *a5, uint64_t num)
{
  v10 = bn_add_words(a1, a2, a3, num);

  return bn_reduce_once_in_place(a1, v10, a4, a5, num);
}

uint64_t *bn_select_words(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v6 = *a3++;
    v5 = v6;
    v7 = *a4++;
    *result++ = a2 & v5 | v7 & ~a2;
  }

  return result;
}

void EC_POINT_free(EC_POINT *a1)
{
  if (a1)
  {
    EC_GROUP_free(*a1);

    OPENSSL_free(a1);
  }
}

void EC_KEY_free(EC_KEY *a1)
{
  if (a1 && CRYPTO_refcount_dec_and_test_zero(a1 + 8))
  {
    v2 = *(a1 + 5);
    if (v2)
    {
      v3 = *(v2 + 24);
      if (v3)
      {
        v3(a1);
        v2 = *(a1 + 5);
      }

      METHOD_unref(v2);
    }

    CRYPTO_free_ex_data(&g_ec_ex_data_class, a1, a1 + 3);
    EC_GROUP_free(*a1);
    EC_POINT_free(*(a1 + 1));
    OPENSSL_free(*(a1 + 2));

    OPENSSL_free(a1);
  }
}

void bssl::SSL_SESSION_dup(bssl *this@<X0>, ssl_session_st *a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v38 = *(this + 18);
  v6 = bssl::New<ssl_session_st,bssl::SSL_X509_METHOD const*&>(&v38);
  v7 = v6;
  if (!v6)
  {
    goto LABEL_18;
  }

  v8 = v6[55] & 0xEF | (16 * ((*(this + 440) >> 4) & 1));
  *(v6 + 440) = v8;
  *(v6 + 2) = *(this + 2);
  *(v6 + 440) = *(this + 440) & 0x20 | v8 & 0xDF;
  bssl::InplaceVector<unsigned char,32ul>::operator=(v6 + 92, this + 92);
  bssl::InplaceVector<unsigned char,48ul>::operator=(v7 + 10, this + 10);
  v7[25] = *(this + 25);
  v9 = *(this + 16);
  if (!v9 || (v10 = OPENSSL_strdup(v9), std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100](v7 + 16, v10), v7[16]))
  {
    v11 = *(this + 17);
    if (!v11 || (v12 = OPENSSL_sk_deep_copy(v11, sk_CRYPTO_BUFFER_call_copy_func, bssl::SSL_SESSION_dup(ssl_session_st *,int)::$_0::__invoke, sk_CRYPTO_BUFFER_call_free_func, CRYPTO_BUFFER_free), std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](v7 + 17, v12), v7[17]))
    {
      if ((*(*(this + 18) + 56))(v7, this))
      {
        v7[22] = *(this + 22);
        v13 = *(this + 32);
        if (v13)
        {
          CRYPTO_BUFFER_up_ref(*(this + 32));
        }

        std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](v7 + 32, v13);
        v14 = *(this + 31);
        if (v14)
        {
          CRYPTO_BUFFER_up_ref(*(this + 31));
        }

        std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](v7 + 31, v14);
        v15 = *(this + 18);
        *(v7 + 17) = *(this + 17);
        *(v7 + 18) = v15;
        *(v7 + 440) = v7[55] & 0xFD | *(this + 440) & 2;
        *(v7 + 4) = *(this + 4);
        v7[23] = *(this + 23);
        v7[24] = *(this + 24);
        if ((v3 & 2) != 0)
        {
          bssl::InplaceVector<unsigned char,32ul>::operator=(v7 + 59, this + 59);
          *(v7 + 3) = *(this + 3);
          bssl::InplaceVector<unsigned char,64ul>::operator=(v7 + 304, this + 304);
          *(v7 + 93) = *(this + 93);
          v7[47] = *(this + 47);
          v21 = v7[55] & 0xFE | *(this + 440) & 1;
          *(v7 + 440) = v21;
          *(v7 + 440) = v21 & 0xBF | *(this + 440) & 0x40;
          v23 = *(this + 49);
          v22 = *(this + 50);
          if (!bssl::Array<unsigned char>::InitUninitialized((v7 + 49), v22))
          {
            goto LABEL_36;
          }

          if (v22)
          {
            v24 = v7[49];
            do
            {
              v25 = *v23++;
              *v24++ = v25;
              --v22;
            }

            while (v22);
          }

          v27 = *(this + 56);
          v26 = *(this + 57);
          if (!bssl::Array<unsigned char>::InitUninitialized((v7 + 56), v26))
          {
            goto LABEL_36;
          }

          if (v26)
          {
            v28 = v7[56];
            do
            {
              v29 = *v27++;
              *v28++ = v29;
              --v26;
            }

            while (v26);
          }

          v31 = *(this + 51);
          v30 = *(this + 52);
          if (!bssl::Array<unsigned char>::InitUninitialized((v7 + 51), v30))
          {
            goto LABEL_36;
          }

          if (v30)
          {
            v32 = v7[51];
            do
            {
              v33 = *v31++;
              *v32++ = v33;
              --v30;
            }

            while (v30);
          }

          v35 = *(this + 53);
          v34 = *(this + 54);
          if (!bssl::Array<unsigned char>::InitUninitialized((v7 + 53), v34))
          {
            goto LABEL_36;
          }

          if (v34)
          {
            v36 = v7[53];
            do
            {
              v37 = *v35++;
              *v36++ = v37;
              --v34;
            }

            while (v34);
          }
        }

        if ((v3 & 1) == 0)
        {
LABEL_17:
          v20 = *(v7 + 440) | 4;
          *(v7 + 440) = v20;
          *(v7 + 440) = *(this + 440) & 0x80 | v20 & 0x7F;
LABEL_18:
          *a3 = v7;
          return;
        }

        v17 = *(this + 29);
        v16 = *(this + 30);
        if (bssl::Array<unsigned char>::InitUninitialized((v7 + 29), v16))
        {
          if (v16)
          {
            v18 = v7[29];
            do
            {
              v19 = *v17++;
              *v18++ = v19;
              --v16;
            }

            while (v16);
          }

          goto LABEL_17;
        }
      }
    }
  }

LABEL_36:
  *a3 = 0;
  bssl::RefCounted<ssl_session_st>::DecRefInternal(v7);
}

void __boringssl_metrics_log_metric_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if ((SecTrustReportNetworkingAnalytics() & 1) == 0 && g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
  {
    __boringssl_metrics_log_metric_block_invoke_cold_1();
  }
}

uint64_t bssl::SSL_SESSION_to_bytes_full(uint64_t result, uint64_t *a2, int a3)
{
  if (result)
  {
    v3 = result;
    if (!*(result + 200))
    {
      return 0;
    }

    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v23[1] = v6;
    v23[2] = v6;
    v22[2] = v6;
    v23[0] = v6;
    v22[0] = v6;
    v22[1] = v6;
    v21[1] = v6;
    v21[2] = v6;
    v21[0] = v6;
    result = CBB_add_asn1(a2, v23, 0x20000010u);
    if (result)
    {
      result = CBB_add_asn1_uint64(v23, 1uLL);
      if (result)
      {
        result = CBB_add_asn1_uint64(v23, *(v3 + 4));
        if (result)
        {
          result = CBB_add_asn1(v23, v22, 4u);
          if (result)
          {
            result = CBB_add_u16(v22, *(*(v3 + 200) + 16));
            if (result)
            {
              v7 = a3 ? 0 : *(v3 + 91);
              result = CBB_add_asn1_octet_string(v23, (v3 + 59), v7);
              if (result)
              {
                result = CBB_add_asn1_octet_string(v23, (v3 + 10), *(v3 + 58));
                if (result)
                {
                  result = CBB_add_asn1(v23, v22, 0xA0000001);
                  if (result)
                  {
                    result = CBB_add_asn1_uint64(v22, *(v3 + 192));
                    if (result)
                    {
                      result = CBB_add_asn1(v23, v22, 0xA0000002);
                      if (result)
                      {
                        result = CBB_add_asn1_uint64(v22, *(v3 + 184));
                        if (result)
                        {
                          if (!EVP_MD_CTX_md(*(v3 + 136)) || (*(v3 + 440) & 2) != 0 || (v8 = OPENSSL_sk_value(*(v3 + 136), 0), result = CBB_add_asn1(v23, v22, 0xA0000003), result) && (v9 = CRYPTO_BUFFER_data(v8), v10 = CRYPTO_BUFFER_len(v8), result = CBB_add_bytes(v22, v9, v10), result))
                          {
                            result = CBB_add_asn1(v23, v22, 0xA0000004);
                            if (result)
                            {
                              result = CBB_add_asn1_octet_string(v22, (v3 + 92), *(v3 + 124));
                              if (result)
                              {
                                if (!*(v3 + 176) || (result = CBB_add_asn1(v23, v22, 0xA0000005), result) && (result = CBB_add_asn1_uint64(v22, *(v3 + 176)), result))
                                {
                                  if (!*(v3 + 128) || (result = CBB_add_asn1(v23, v22, 0xA0000008), result) && (v11 = strlen(*(v3 + 128)), result = CBB_add_asn1_octet_string(v22, *(v3 + 128), v11), result))
                                  {
                                    if (!*(v3 + 372) || (result = CBB_add_asn1(v23, v22, 0xA0000009), result) && (result = CBB_add_asn1_uint64(v22, *(v3 + 372)), result))
                                    {
                                      if (a3 || !*(v3 + 240) || (result = CBB_add_asn1(v23, v22, 0xA000000A), result) && (result = CBB_add_asn1_octet_string(v22, *(v3 + 232), *(v3 + 240)), result))
                                      {
                                        if ((*(v3 + 440) & 2) == 0 || (result = CBB_add_asn1(v23, v22, 0xA000000D), result) && (result = CBB_add_asn1_octet_string(v22, (v3 + 272), 0x20uLL), result))
                                        {
                                          if (!*(v3 + 368) || (result = CBB_add_asn1(v23, v22, 0xA000000E), result) && (result = CBB_add_asn1_octet_string(v22, (v3 + 304), *(v3 + 368)), result))
                                          {
                                            if (!*(v3 + 248) || (result = CBB_add_asn1(v23, v22, 0xA000000F), result) && (v12 = CRYPTO_BUFFER_data(*(v3 + 248)), v13 = CRYPTO_BUFFER_len(*(v3 + 248)), result = CBB_add_asn1_octet_string(v22, v12, v13), result))
                                            {
                                              if (!*(v3 + 256) || (result = CBB_add_asn1(v23, v22, 0xA0000010), result) && (v14 = CRYPTO_BUFFER_data(*(v3 + 256)), v15 = CRYPTO_BUFFER_len(*(v3 + 256)), result = CBB_add_asn1_octet_string(v22, v14, v15), result))
                                              {
                                                if ((*(v3 + 440) & 1) == 0 || (result = CBB_add_asn1(v23, v22, 0xA0000011), result) && (result = CBB_add_asn1_BOOL(v22, 1), result))
                                                {
                                                  if (!*(v3 + 6) || (result = CBB_add_asn1(v23, v22, 0xA0000012), result) && (result = CBB_add_asn1_uint64(v22, *(v3 + 6)), result))
                                                  {
                                                    v16 = *(v3 + 136);
                                                    if (v16 && (*(v3 + 440) & 2) == 0 && EVP_MD_CTX_md(v16) >= 2)
                                                    {
                                                      result = CBB_add_asn1(v23, v22, 0xA0000013);
                                                      if (!result)
                                                      {
                                                        return result;
                                                      }

                                                      if (EVP_MD_CTX_md(*(v3 + 136)) >= 2)
                                                      {
                                                        v17 = 1;
                                                        do
                                                        {
                                                          v18 = OPENSSL_sk_value(*(v3 + 136), v17);
                                                          v19 = CRYPTO_BUFFER_data(v18);
                                                          v20 = CRYPTO_BUFFER_len(v18);
                                                          result = CBB_add_bytes(v22, v19, v20);
                                                          if (!result)
                                                          {
                                                            return result;
                                                          }
                                                        }

                                                        while (++v17 < EVP_MD_CTX_md(*(v3 + 136)));
                                                      }
                                                    }

                                                    if ((*(v3 + 440) & 8) != 0)
                                                    {
                                                      result = CBB_add_asn1(v23, v22, 0xA0000015);
                                                      if (!result)
                                                      {
                                                        return result;
                                                      }

                                                      result = CBB_add_asn1(v22, v21, 4u);
                                                      if (!result)
                                                      {
                                                        return result;
                                                      }

                                                      result = CBB_add_u32(v21, *(v3 + 376));
                                                      if (!result)
                                                      {
                                                        return result;
                                                      }

                                                      if ((*(v3 + 440) & 0x10) != 0)
                                                      {
                                                        goto LABEL_73;
                                                      }
                                                    }

                                                    else if ((*(v3 + 440) & 0x10) != 0)
                                                    {
LABEL_73:
                                                      if (!*(v3 + 8) || (result = CBB_add_asn1(v23, v22, 0xA0000017), result) && (result = CBB_add_asn1_uint64(v22, *(v3 + 8)), result))
                                                      {
                                                        if (!*(v3 + 380) || (result = CBB_add_asn1(v23, v22, 0xA0000018), result) && (result = CBB_add_asn1_uint64(v22, *(v3 + 380)), result))
                                                        {
                                                          if (*(v3 + 184) == *(v3 + 188) || (result = CBB_add_asn1(v23, v22, 0xA0000019), result) && (result = CBB_add_asn1_uint64(v22, *(v3 + 188)), result))
                                                          {
                                                            if (!*(v3 + 400) || (result = CBB_add_asn1(v23, v22, 0xA000001A), result) && (result = CBB_add_asn1_octet_string(v22, *(v3 + 392), *(v3 + 400)), result))
                                                            {
                                                              if ((*(v3 + 440) & 0x20) == 0 || (result = CBB_add_asn1(v23, v22, 0xA000001B), result) && (result = CBB_add_asn1_BOOL(v22, 1), result))
                                                              {
                                                                if (!*(v3 + 456) || (result = CBB_add_asn1(v23, v22, 0xA000001C), result) && (result = CBB_add_asn1_octet_string(v22, *(v3 + 448), *(v3 + 456)), result))
                                                                {
                                                                  if ((*(v3 + 440) & 0x40) == 0)
                                                                  {
                                                                    return CBB_flush(a2);
                                                                  }

                                                                  result = CBB_add_asn1(v23, v22, 0xA000001D);
                                                                  if (result)
                                                                  {
                                                                    result = CBB_add_asn1_octet_string(v22, *(v3 + 408), *(v3 + 416));
                                                                    if (result)
                                                                    {
                                                                      result = CBB_add_asn1(v23, v22, 0xA000001E);
                                                                      if (result)
                                                                      {
                                                                        result = CBB_add_asn1_octet_string(v22, *(v3 + 424), *(v3 + 432));
                                                                        if (result)
                                                                        {
                                                                          return CBB_flush(a2);
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

                                                    result = CBB_add_asn1(v23, v22, 0xA0000016);
                                                    if (!result)
                                                    {
                                                      return result;
                                                    }

                                                    result = CBB_add_asn1_BOOL(v22, 0);
                                                    if (!result)
                                                    {
                                                      return result;
                                                    }

                                                    goto LABEL_73;
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
      }
    }
  }

  return result;
}

void nw_protocol_boringssl_disconnect(uint64_t a1)
{
  if (a1)
  {
    v1 = nw_protocol_downcast();
    if (v1)
    {
      v2 = v1;
      if ((*(v1 + 435) & 1) == 0)
      {
        nw_protocol_boringssl_disconnect_cold_1();
      }

      v3 = *(v2 + 296);
      if (v3)
      {
        *(v2 + 348) &= ~0x20u;
        state = boringssl_session_get_state(v3);
        v5 = g_boringssl_log;
        if (state == 3)
        {
          if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
          {
            nw_protocol_boringssl_disconnect_cold_3(v5);
          }
        }

        else
        {
          v6 = state;
          if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_DEBUG))
          {
            nw_protocol_boringssl_disconnect_cold_2(v5, v6);
          }

          if (v6 > 3)
          {
            goto LABEL_15;
          }
        }

        boringssl_session_set_state(*(v2 + 296), 3);
        boringssl_session_disconnect(*(v2 + 296));
LABEL_15:
        boringssl_session_set_state(*(v2 + 296), 4);
        nw_protocol_get_output_handler();
        if (nw_protocol_disconnect_is_valid())
        {
          nw_protocol_get_output_handler();
          nw_protocol_disconnect();
          v7 = g_boringssl_log;
          if (g_boringssl_log)
          {
            if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_DEBUG))
            {
              nw_protocol_boringssl_disconnect_cold_4(v7);
            }
          }
        }
      }
    }
  }
}

int SSL_shutdown(SSL *s)
{
  *(s->handshake_func + 49) = 0;
  ERR_clear_error();
  ERR_clear_system_error();
  if (!*&s->rwstate)
  {
    v5 = 226;
    v6 = 1402;
LABEL_12:
    ERR_put_error(16, 0, v5, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_lib.cc", v6);
    return -1;
  }

  handshake_func = s->handshake_func;
  v3 = *(handshake_func + 35);
  if (v3 && (*(v3 + 1600) & 8) == 0)
  {
    return 1;
  }

  if ((BYTE4(s->param) & 2) != 0)
  {
    *(handshake_func + 172) = 0x100000001;
    return 1;
  }

  if (*(handshake_func + 44) != 1)
  {
    v8 = bssl::ssl_send_alert_impl(s, 1, 0);
    goto LABEL_18;
  }

  if ((*(handshake_func + 111) & 0x400) != 0)
  {
    v8 = (*(*&s->version + 80))(s);
LABEL_18:
    if (v8 < 1)
    {
      return -1;
    }

    return *(s->handshake_func + 43) == 1;
  }

  v4 = *(handshake_func + 43);
  if (v4 != 1)
  {
    if (**&s->version)
    {
      if (v4 == 2)
      {
        ERR_restore_state(*(handshake_func + 23));
        return -1;
      }

      *(handshake_func + 43) = 1;
      return *(s->handshake_func + 43) == 1;
    }

    if (ssl_read_impl(s) >= 1)
    {
      v5 = 291;
      v6 = 1449;
      goto LABEL_12;
    }

    if (*(s->handshake_func + 43) != 1)
    {
      return -1;
    }
  }

  return *(s->handshake_func + 43) == 1;
}

uint64_t bssl::tls_dispatch_alert(bssl *this, ssl_st *a2)
{
  v3 = *(this + 21);
  if (v3)
  {
    if (!(*(v3 + 32))(this, *(*(this + 6) + 204), *(*(this + 6) + 470)))
    {
      ERR_put_error(16, 0, 298, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/s3_pkt.cc", 461);
      return 0;
    }

    goto LABEL_10;
  }

  v10 = 0xAAAAAAAAAAAAAAAALL;
  v5 = bssl::do_tls_write(this, &v10, 0x15, *(this + 6) + 469, 2);
  if (v5 >= 1 && v10 != 2)
  {
    bssl::tls_dispatch_alert();
  }

  v4 = v5;
  if (v5 >= 1)
  {
LABEL_10:
    *(*(this + 6) + 222) &= ~0x400u;
    v7 = *(this + 6);
    if (*(v7 + 469) == 2)
    {
      BIO_flush(*(this + 4));
      v7 = *(this + 6);
    }

    v4 = 1;
    bssl::ssl_do_msg_callback(this, 1, 21, v7 + 469, 2);
    v8 = *(*(this + 6) + 469);
    bssl::ssl_do_info_callback(this, 0x4008);
  }

  return v4;
}

uint64_t bssl::ssl_send_alert_impl(bssl *this, ssl_st *a2, int a3)
{
  v3 = *(this + 6);
  if (*(v3 + 176))
  {
    ERR_put_error(16, 0, 194, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/s3_pkt.cc", 432);
    return 0xFFFFFFFFLL;
  }

  if (a2 != 1 || a3)
  {
    if (a2 != 2)
    {
      bssl::ssl_send_alert_impl();
    }

    if (!a3)
    {
      bssl::ssl_send_alert_impl();
    }

    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  *(v3 + 176) = v4;
  *(v3 + 222) |= 0x400u;
  *(*(this + 6) + 469) = a2;
  *(*(this + 6) + 470) = a3;
  if (*(*(this + 6) + 116))
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(*this + 80);

  return v6();
}

void boringssl_context_alert_callback_handler(const SSL *a1, uint64_t a2, int a3, int a4)
{
  v63 = *MEMORY[0x1E69E9840];
  v7 = SSL_get_ex_data(a1, 0);
  if (v7)
  {
    v8 = v7;
    if (*v7 == -1252936367)
    {
      v9 = *(v7 + 1);
      if (v9)
      {
        v10 = BYTE1(a3);
        WeakRetained = objc_loadWeakRetained((v9 + 16));
        v12 = WeakRetained;
        if (BYTE1(a3) == 1)
        {
          if (!WeakRetained || (v18 = objc_loadWeakRetained((v9 + 16)), v19 = v18[435], v18, v12, (v19 & 1) == 0))
          {
            v20 = objc_loadWeakRetained((v9 + 16));
            if (v20)
            {
              v21 = objc_loadWeakRetained((v9 + 16));
              v22 = (v21[435] & 1) == 0;
            }

            else
            {
              v22 = 1;
            }

            if (v22)
            {
              if (g_boringssl_log)
              {
                v32 = g_boringssl_log;
                if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                {
                  v33 = objc_loadWeakRetained((v9 + 16));
                  if (v33)
                  {
                    v12 = objc_loadWeakRetained((v9 + 16));
                    v34 = v12 + 351;
                  }

                  else
                  {
                    v34 = &unk_1A9098A9F;
                  }

                  v36 = objc_loadWeakRetained((v9 + 16));
                  if (a4)
                  {
                    v37 = "read";
                  }

                  else
                  {
                    v37 = "write";
                  }

                  *buf = 136447746;
                  v50 = "boringssl_context_handle_warning_alert";
                  v51 = 1024;
                  v52 = 2335;
                  v53 = 2082;
                  v54 = v34;
                  v55 = 2048;
                  v56 = v36;
                  v57 = 2082;
                  v58 = v37;
                  v59 = 2082;
                  v60 = SSL_alert_type_string_long(a3);
                  v61 = 2082;
                  v62 = SSL_alert_desc_string_long(a3);
                  _os_log_impl(&dword_1A8FF5000, v32, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] %{public}s alert, level: %{public}s, description: %{public}s", buf, 0x44u);

                  if (v33)
                  {
                  }
                }
              }
            }
          }

          ++*(v9 + 310);
        }

        else if (BYTE1(a3) == 2)
        {
          if (!WeakRetained || (v13 = objc_loadWeakRetained((v9 + 16)), v14 = v13[435], v13, v12, (v14 & 1) == 0))
          {
            v15 = objc_loadWeakRetained((v9 + 16));
            if (v15)
            {
              v16 = objc_loadWeakRetained((v9 + 16));
              v17 = (v16[435] & 1) == 0;
            }

            else
            {
              v17 = 1;
            }

            if (v17)
            {
              if (g_boringssl_log)
              {
                v28 = g_boringssl_log;
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  v39 = objc_loadWeakRetained((v9 + 16));
                  if (v39)
                  {
                    v48 = objc_loadWeakRetained((v9 + 16));
                    v40 = v48 + 351;
                  }

                  else
                  {
                    v40 = &unk_1A9098A9F;
                  }

                  v43 = objc_loadWeakRetained((v9 + 16));
                  if (a4)
                  {
                    v44 = "read";
                  }

                  else
                  {
                    v44 = "write";
                  }

                  *buf = 136447746;
                  v50 = "boringssl_context_handle_fatal_alert";
                  v51 = 1024;
                  v52 = 2316;
                  v53 = 2082;
                  v54 = v40;
                  v55 = 2048;
                  v56 = v43;
                  v57 = 2082;
                  v58 = v44;
                  v59 = 2082;
                  v60 = SSL_alert_type_string_long(a3);
                  v61 = 2082;
                  v62 = SSL_alert_desc_string_long(a3);
                  _os_log_error_impl(&dword_1A8FF5000, v28, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] %{public}s alert, level: %{public}s, description: %{public}s", buf, 0x44u);

                  if (v39)
                  {
                  }
                }
              }
            }
          }

          ERR_print_errors_cb(boringssl_context_error_print, v8);
          *(v9 + 304) = a2;
          *(v9 + 308) = 2;
          *(v9 + 309) = a3;
          v29 = boringssl_helper_convert_alert_code(a3, a2);
          v30 = *(v9 + 272);
          v31 = objc_loadWeakRetained((v9 + 16));
          (*(v30 + 16))(v30, v31, a2, v29);
        }

        else if (!WeakRetained || (v23 = objc_loadWeakRetained((v9 + 16)), v24 = v23[435], v23, v12, (v24 & 1) == 0))
        {
          v25 = objc_loadWeakRetained((v9 + 16));
          if (v25)
          {
            v26 = objc_loadWeakRetained((v9 + 16));
            v27 = (v26[435] & 1) == 0;
          }

          else
          {
            v27 = 1;
          }

          if (v27)
          {
            if (g_boringssl_log)
            {
              v35 = g_boringssl_log;
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                v41 = objc_loadWeakRetained((v9 + 16));
                if (v41)
                {
                  v8 = objc_loadWeakRetained((v9 + 16));
                  v42 = v8 + 351;
                }

                else
                {
                  v42 = &unk_1A9098A9F;
                }

                v45 = objc_loadWeakRetained((v9 + 16));
                v46 = v45;
                *buf = 136447490;
                v50 = "boringssl_context_alert_callback_handler";
                v47 = "write";
                v52 = 2358;
                v51 = 1024;
                if (a4)
                {
                  v47 = "read";
                }

                v53 = 2082;
                v54 = v42;
                v55 = 2048;
                v56 = v45;
                v57 = 2082;
                v58 = v47;
                v59 = 1024;
                LODWORD(v60) = v10;
                _os_log_error_impl(&dword_1A8FF5000, v35, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] Unhandled %{public}s alert level: %d", buf, 0x36u);

                if (v41)
                {
                }
              }
            }
          }
        }
      }
    }
  }

  v38 = *MEMORY[0x1E69E9840];
}

const char *__cdecl SSL_alert_type_string_long(int value)
{
  v1 = "unknown";
  if (value >> 8 == 2)
  {
    v1 = "fatal";
  }

  if (value >> 8 == 1)
  {
    return "warning";
  }

  else
  {
    return v1;
  }
}

const char *__cdecl SSL_alert_desc_string_long(int value)
{
  if (value > 0x45u)
  {
    if (value > 0x6Eu)
    {
      if (value <= 0x72u)
      {
        if (value > 0x70u)
        {
          if (value == 113)
          {
            return "bad certificate status response";
          }

          else
          {
            return "bad certificate hash value";
          }
        }

        else if (value == 111)
        {
          return "certificate unobtainable";
        }

        else
        {
          return "unrecognized name";
        }
      }

      if (value > 0x77u)
      {
        if (value == 120)
        {
          return "no application protocol";
        }

        if (value == 121)
        {
          return "ECH required";
        }
      }

      else
      {
        if (value == 115)
        {
          return "unknown PSK identity";
        }

        if (value == 116)
        {
          return "certificate required";
        }
      }
    }

    else if (value > 0x59u)
    {
      if (value > 0x6Cu)
      {
        if (value == 109)
        {
          return "missing extension";
        }

        else
        {
          return "unsupported extension";
        }
      }

      if (value == 90)
      {
        return "user canceled";
      }

      if (value == 100)
      {
        return "no renegotiation";
      }
    }

    else if (value > 0x4Fu)
    {
      if (value == 80)
      {
        return "internal error";
      }

      if (value == 86)
      {
        return "inappropriate fallback";
      }
    }

    else
    {
      if (value == 70)
      {
        return "protocol version";
      }

      if (value == 71)
      {
        return "insufficient security";
      }
    }

    return "unknown";
  }

  switch(value)
  {
    case 20:
      return "bad record mac";
    case 21:
      return "decryption failed";
    case 22:
      return "record overflow";
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
      return "unknown";
    case 30:
      return "decompression failure";
    case 40:
      return "handshake failure";
    case 41:
      return "no certificate";
    case 42:
      return "bad certificate";
    case 43:
      return "unsupported certificate";
    case 44:
      return "certificate revoked";
    case 45:
      return "certificate expired";
    case 46:
      return "certificate unknown";
    case 47:
      return "illegal parameter";
    case 48:
      return "unknown CA";
    case 49:
      return "access denied";
    case 50:
      return "decode error";
    case 51:
      return "decrypt error";
    case 60:
      return "export restriction";
    default:
      if (value)
      {
        if (value != 10)
        {
          return "unknown";
        }

        result = "unexpected_message";
      }

      else
      {
        result = "close notify";
      }

      break;
  }

  return result;
}

void nw_protocol_boringssl_get_input_frames_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v0 && g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_4();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  }

  OUTLINED_FUNCTION_39();
  v1 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_remove_input_handler_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t nw_protocol_boringssl_remove_input_handler(uint64_t result, uint64_t a2, int a3)
{
  if (result)
  {
    result = nw_protocol_downcast();
    if (result)
    {
      v5 = result;
      if ((*(result + 435) & 1) == 0)
      {
        nw_protocol_boringssl_remove_input_handler_cold_1();
      }

      nw_protocol_set_output_handler();
      if (nw_protocol_get_input_handler() == a2)
      {
        nw_protocol_set_input_handler();
        *(v5 + 336) = 0;
        v6 = *(v5 + 328);
        *(v5 + 328) = 0;

        nw_frame_array_foreach();
        nw_frame_array_foreach();
        nw_frame_array_foreach();
        nw_frame_array_foreach();
        nw_frame_array_foreach();
        nw_protocol_get_output_handler();
        if (nw_protocol_remove_input_handler_is_valid())
        {
          nw_protocol_get_output_handler();
          nw_protocol_remove_input_handler();
        }

        if (a3)
        {
          v7 = *(v5 + 16);
          *(v5 + 16) = 0;

          nw_protocol_destroy();
        }

        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void nw_protocol_boringssl_cleanup(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = v1[37];
    if (v3)
    {
      v4 = *(v3 + 8);
      v5 = v4[49];
      if (v5)
      {
        SSL_set_msg_callback(v5, 0);
        SSL_set_msg_callback_arg(v4[49], 0);
      }

      v6 = v4[5];
      if (v6)
      {
        boringssl_psk_cache_clear_context(v6);
      }
    }

    v1[37] = 0;
    objc_autoreleasePoolPop(v2);
    v12 = v1;
    nw_frame_array_foreach();
    v7 = v12;
    nw_frame_array_foreach();
    if (v7[19])
    {
      nw_frame_finalize();
      v8 = v7[19];
      v7[19] = 0;
    }

    v9 = v7[38];
    if (v9)
    {
      boringssl_bio_destroy(v9);
      v7[38] = 0;
    }

    v10 = v7[14];
    if (v10)
    {
      v7[14] = 0;

      v7[15] = 0;
      *(v7 + 32) = 0;
    }

    if (v7[35])
    {
      nw_queue_cancel_source();
      v7[35] = 0;
    }

    v11 = v7[39];
    if (v11)
    {
      free(v11);
      v7[39] = 0;
    }
  }
}

void boringssl_session_destroy(uint64_t a1)
{
  if (a1)
  {
    if (*a1 == -1252936367)
    {
      v1 = *(a1 + 8);
      if (v1)
      {
        v2 = *(v1 + 392);
        if (v2)
        {
          SSL_free(v2);
          *(v1 + 392) = 0;
          *(v1 + 292) = 5;
        }
      }
    }
  }
}

void bssl::SSL_CONFIG::~SSL_CONFIG(BUF_MEM **this)
{
  v2 = *&(*this)[5].length;
  if (v2)
  {
    (*(*(v2 + 16) + 96))(this);
  }

  bssl::Array<unsigned char>::~Array((this + 36));
  std::unique_ptr<stack_st_SRTP_PROTECTION_PROFILE,bssl::internal::Deleter>::reset[abi:ne200100](this + 35, 0);
  bssl::Array<unsigned char>::~Array((this + 33));
  bssl::Array<unsigned char>::~Array((this + 31));
  bssl::Array<unsigned char>::~Array((this + 29));
  std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 27, 0);
  bssl::Array<unsigned char>::~Array((this + 25));
  std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 24, 0);
  bssl::Array<unsigned char>::~Array((this + 22));
  bssl::Vector<bssl::ALPSConfig>::~Vector(this + 19);
  bssl::Array<unsigned char>::~Array((this + 17));
  std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 16, 0);
  bssl::Array<unsigned char>::~Array((this + 14));
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](this + 13, 0);
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](this + 11, 0);
  std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100](this + 7, 0);
  std::unique_ptr<bssl::CERT,bssl::internal::Deleter>::reset[abi:ne200100](this + 4, 0);
  std::unique_ptr<bssl::SSLCipherPreferenceList,bssl::internal::Deleter>::reset[abi:ne200100](this + 3, 0);
}

void std::unique_ptr<stack_st_SRTP_PROTECTION_PROFILE,bssl::internal::Deleter>::reset[abi:ne200100](BUF_MEM **a1, BUF_MEM *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    BUF_MEM_free(v3);
  }
}

uint64_t bssl::cxx17_destroy_n<bssl::ALPSConfig *>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    do
    {
      bssl::Array<unsigned char>::~Array(a1 + 16);
      bssl::Array<unsigned char>::~Array(a1);
      a1 += 32;
      --v3;
    }

    while (v3);
  }

  return a1;
}

void bssl::Vector<std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>>::clear(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    do
    {
      std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100](v2++, 0);
      --v3;
    }

    while (v3);
    v2 = *a1;
  }

  OPENSSL_free(v2);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t ec_GFp_simple_felem_from_bytes(uint64_t a1, unint64_t *a2, unsigned __int8 *a3, unint64_t a4)
{
  if (BN_num_bytes((a1 + 320)) == a4)
  {
    bn_big_endian_to_words(a2, *(a1 + 328), a3, a4);
    if (bn_less_than_words(a2, *(a1 + 320), *(a1 + 328)))
    {
      return 1;
    }

    v9 = 331;
  }

  else
  {
    v9 = 324;
  }

  ERR_put_error(15, 0, 128, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/simple.c.inc", v9);
  return 0;
}

uint64_t *bssl::Vector<bssl::ALPSConfig>::~Vector(uint64_t *a1)
{
  bssl::cxx17_destroy_n<bssl::ALPSConfig *>(*a1, a1[1]);
  OPENSSL_free(*a1);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return a1;
}

void bssl::CERT::~CERT(bssl::CERT *this)
{
  (*(*(this + 4) + 16))();
  *(this + 120) = 0;
  std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 3, 0);
  bssl::Vector<std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>>::clear(this);
}

void bssl::SSL3_STATE::~SSL3_STATE(bssl::SSL3_STATE *this)
{
  bssl::Array<unsigned char>::~Array(this + 584);
  std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100](this + 64, 0);
  bssl::Array<unsigned char>::~Array(this + 496);
  bssl::Array<unsigned char>::~Array(this + 480);
  std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 59, 0);
  *(this + 468) = 0;
  *(this + 455) = 0;
  *(this + 442) = 0;
  *(this + 393) = 0;
  *(this + 344) = 0;
  std::unique_ptr<bssl::SSL_HANDSHAKE,bssl::internal::Deleter>::reset[abi:ne200100](this + 36, 0);
  std::unique_ptr<bssl::SSL_HANDSHAKE,bssl::internal::Deleter>::reset[abi:ne200100](this + 35, 0);
  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](this + 34, 0);
  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](this + 33, 0);
  std::unique_ptr<buf_mem_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 30, 0);
  std::unique_ptr<buf_mem_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 29, 0);
  std::unique_ptr<buf_mem_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 28, 0);
  std::unique_ptr<err_save_state_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 23, 0);
  bssl::SSLBuffer::~SSLBuffer((this + 104));
  bssl::SSLBuffer::~SSLBuffer((this + 80));
}

void bssl::tls_free(bssl *this, ssl_st *a2)
{
  if (this)
  {
    v3 = *(this + 6);
    if (v3)
    {
      bssl::SSL3_STATE::~SSL3_STATE(v3);
      OPENSSL_free(v4);
      *(this + 6) = 0;
    }
  }
}

void bssl::SSL_HANDSHAKE::~SSL_HANDSHAKE(bssl::SSL_HANDSHAKE *this)
{
  (*(*(*(*this + 120) + 16) + 80))();
  bssl::Array<unsigned char>::~Array(this + 1688);
  std::unique_ptr<spake2plus_ctx_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 210, 0);
  bssl::Array<unsigned char>::~Array(this + 1664);
  std::unique_ptr<bssl::SSLPAKEShare,bssl::internal::Deleter>::reset[abi:ne200100](this + 207, 0);
  *(this + 1645) = 0;
  std::unique_ptr<bssl::SSL_HANDSHAKE_HINTS,bssl::internal::Deleter>::reset[abi:ne200100](this + 199, 0);
  bssl::Array<unsigned char>::~Array(this + 1576);
  std::unique_ptr<bssl::ECHConfig,bssl::internal::Deleter>::reset[abi:ne200100](this + 195, 0);
  std::unique_ptr<ssl_ech_keys_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 194, 0);
  std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 193, 0);
  std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 192, 0);
  std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 191, 0);
  std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 190, 0);
  bssl::Array<unsigned char>::~Array(this + 1504);
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](this + 186, 0);
  std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100](this + 185, 0);
  bssl::Array<unsigned char>::~Array(this + 1464);
  EVP_HPKE_CTX_cleanup(this + 752);
  bssl::Array<unsigned char>::~Array(this + 728);
  bssl::Array<unsigned char>::~Array(this + 712);
  bssl::Array<unsigned char>::~Array(this + 696);
  bssl::Array<unsigned char>::~Array(this + 680);
  bssl::Array<unsigned char>::~Array(this + 664);
  bssl::Array<unsigned char>::~Array(this + 648);
  bssl::Array<unsigned char>::~Array(this + 632);
  bssl::Array<unsigned char>::~Array(this + 616);
  bssl::Array<unsigned char>::~Array(this + 600);
  bssl::Array<unsigned char>::~Array(this + 584);
  bssl::Array<unsigned char>::~Array(this + 568);
  bssl::Array<unsigned char>::~Array(this + 552);
  bssl::SSLTranscript::~SSLTranscript((this + 472));
  bssl::SSLTranscript::~SSLTranscript((this + 424));
  for (i = 400; i != 384; i -= 8)
  {
    std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100]((this + i), 0);
  }

  std::unique_ptr<err_save_state_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 48, 0);
  *(this + 374) = 0;
  *(this + 325) = 0;
  *(this + 276) = 0;
  *(this + 227) = 0;
  *(this + 178) = 0;
  *(this + 129) = 0;
  *(this + 80) = 0;
}

void std::unique_ptr<bssl::SSLPAKEShare,bssl::internal::Deleter>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    (**v2)(v2);
    OPENSSL_free(v2);
  }
}

void std::unique_ptr<bssl::SSL_HANDSHAKE_HINTS,bssl::internal::Deleter>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    bssl::Array<unsigned char>::~Array(v2 + 224);
    bssl::Array<unsigned char>::~Array(v2 + 208);
    bssl::Array<unsigned char>::~Array(v2 + 192);
    bssl::Array<unsigned char>::~Array(v2 + 168);
    bssl::Array<unsigned char>::~Array(v2 + 152);
    bssl::Array<unsigned char>::~Array(v2 + 128);
    bssl::Array<unsigned char>::~Array(v2 + 112);
    bssl::Array<unsigned char>::~Array(v2 + 96);
    bssl::Array<unsigned char>::~Array(v2 + 80);
    bssl::Array<unsigned char>::~Array(v2 + 56);
    bssl::Array<unsigned char>::~Array(v2 + 40);
    bssl::Array<unsigned char>::~Array(v2 + 16);
    v3 = bssl::Array<unsigned char>::~Array(v2);
    OPENSSL_free(v3);
  }
}

void bn_set_static_words(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((*(a1 + 20) & 2) == 0)
  {
    OPENSSL_free(*a1);
  }

  *a1 = a2;
  if (a3 >= 0x800000)
  {
    bn_set_static_words_cold_1();
  }

  *(a1 + 8) = a3;
  *(a1 + 12) = a3;
  v6 = *(a1 + 20) | 2;
  *(a1 + 16) = 0;
  *(a1 + 20) = v6;
}

double EC_group_p224_init()
{
  qword_1ED4BFF48 = "NIST P-224";
  unk_1ED4BFF50 = 0x4812B000002C9;
  byte_1ED4BFF58 = 33;
  byte_1ED4BFF5D = 5;
  bn_set_static_words(&unk_1ED4BFE90, &kP224Field, 4uLL);
  bn_set_static_words(&unk_1ED4BFE78, &kP224FieldRR, 4uLL);
  qword_1ED4BFEA8 = -1;
  bn_set_static_words(&unk_1ED4BFE50, &kP224Order, 4uLL);
  bn_set_static_words(&unk_1ED4BFE38, &kP224OrderRR, 4uLL);
  qword_1ED4BFE68 = 0xD6E242706A1FC2EBLL;
  v0 = EC_GFp_nistp224_method();
  xmmword_1ED4BFD60 = kP224GX;
  unk_1ED4BFD70 = unk_1A90AFC68;
  unk_1ED4BFDA8 = kP224GY;
  unk_1ED4BFDB8 = unk_1A90AFC88;
  qword_1ED4BFDF0 = 1;
  xmmword_1ED4BFF00 = kP224B;
  unk_1ED4BFF10 = unk_1A90AFCA8;
  EC_group_p224_storage = v0;
  *algn_1ED4BFD58 = &EC_group_p224_storage;
  ec_group_set_a_minus3(&EC_group_p224_storage);
  *&result = 0x100000001;
  qword_1ED4BFF64 = 0x100000001;
  return result;
}

void std::unique_ptr<ssl_ech_keys_st,bssl::internal::Deleter>::reset[abi:ne200100](unsigned int **a1, unsigned int *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    SSL_ECH_KEYS_free(v3);
  }
}

void std::unique_ptr<bssl::ECHConfig,bssl::internal::Deleter>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = bssl::Array<unsigned char>::~Array(v3);
    OPENSSL_free(v4);
  }
}

void EC_GFp_nistp224_method_init()
{
  EC_GFp_nistp224_method_storage = ec_GFp_nistp224_point_get_affine_coordinates;
  qword_1ED4C02D8 = ec_GFp_nistp224_add;
  qword_1ED4C02E0 = ec_GFp_nistp224_dbl;
  qword_1ED4C02E8 = ec_GFp_nistp224_point_mul;
  qword_1ED4C02F0 = ec_GFp_nistp224_point_mul_base;
  qword_1ED4C0300 = ec_GFp_nistp224_point_mul_public;
  qword_1ED4C0320 = ec_GFp_nistp224_felem_mul;
  qword_1ED4C0328 = ec_GFp_nistp224_felem_sqr;
  qword_1ED4C0330 = ec_GFp_simple_felem_to_bytes;
  qword_1ED4C0338 = ec_GFp_simple_felem_from_bytes;
  qword_1ED4C0350 = ec_simple_scalar_inv0_montgomery;
  qword_1ED4C0358 = ec_simple_scalar_to_montgomery_inv_vartime;
  qword_1ED4C0360 = ec_GFp_simple_cmp_x_coordinate;
}

uint64_t *ec_group_set_a_minus3(uint64_t a1)
{
  v2 = ec_felem_one(a1);
  *(a1 + 528) = 1;
  ec_felem_neg(a1, (a1 + 360), v2);
  ec_felem_sub(a1, (a1 + 360), (a1 + 360), v2);

  return ec_felem_sub(a1, (a1 + 360), (a1 + 360), v2);
}

unint64_t ec_felem_neg(uint64_t a1, unint64_t *rp, const unint64_t *a3)
{
  v3 = rp;
  v5 = *(a1 + 328);
  if (v5 < 1)
  {
    v10 = 0;
  }

  else
  {
    v6 = 0;
    v7 = a3;
    v8 = *(a1 + 328);
    do
    {
      v9 = *v7++;
      v6 |= v9;
      --v8;
    }

    while (v8);
    if (v6)
    {
      v10 = -1;
    }

    else
    {
      v10 = 0;
    }
  }

  result = bn_sub_words(rp, *(a1 + 320), a3, v5);
  if (result)
  {
    ec_felem_neg_cold_1();
  }

  v12 = *(a1 + 328);
  if (v12 >= 1)
  {
    do
    {
      *v3++ &= v10;
      --v12;
    }

    while (v12);
  }

  return result;
}

void std::unique_ptr<err_save_state_st,bssl::internal::Deleter>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    ERR_SAVE_STATE_free(v3);
  }
}

uint64_t *ec_felem_sub(uint64_t a1, unint64_t *a2, const unint64_t *a3, const unint64_t *a4)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[2] = v4;
  v6[3] = v4;
  v6[0] = v4;
  v6[1] = v4;
  return bn_mod_sub_words(a2, a3, a4, *(a1 + 320), v6, *(a1 + 328));
}

uint64_t *bn_mod_sub_words(unint64_t *a1, const unint64_t *a2, const unint64_t *a3, const unint64_t *a4, unint64_t *a5, uint64_t num)
{
  v10 = bn_sub_words(a1, a2, a3, num);
  bn_add_words(a5, a1, a4, num);

  return bn_select_words(a1, -v10, a5, a1, num);
}

void aead_aes_gcm_cleanup(uint64_t a1)
{
  if (a1 && *(a1 + 16))
  {
    v2 = **(a1 + 8);
    cc_clear();
    v3 = *(a1 + 16);
    if (v3)
    {
      free(v3);
      *(a1 + 16) = 0;
    }
  }
}

void bssl::SSLBuffer::~SSLBuffer(bssl::SSLBuffer *this)
{
  *(this + 4) = *(this + 5);
  *(this + 6) = 0;
  *(this + 7) = *(this + 8);
  if (*(this + 23) == 1)
  {
    free(*this);
  }
}

void bssl::RefCounted<ssl_ctx_st>::DecRefInternal(ssl_ctx_st *a1)
{
  if (CRYPTO_refcount_dec_and_test_zero(a1))
  {
    ssl_ctx_st::~ssl_ctx_st(a1);

    OPENSSL_free(v2);
  }
}

void std::unique_ptr<ssl_ctx_st,bssl::internal::Deleter>::reset[abi:ne200100](ssl_ctx_st **a1, ssl_ctx_st *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    bssl::RefCounted<ssl_ctx_st>::DecRefInternal(v3);
  }
}

double EC_group_p256_init()
{
  dword_1ED4C0170 = 415;
  qword_1ED4C0168 = "NIST P-256";
  qword_1ED4C0174 = 0x701033DCE48862ALL;
  byte_1ED4C017D = 8;
  bn_set_static_words(&unk_1ED4C00B0, &kP256Field, 4uLL);
  bn_set_static_words(&unk_1ED4C0098, &kP256FieldRR, 4uLL);
  qword_1ED4C00C8 = 1;
  bn_set_static_words(&unk_1ED4C0070, &kP256Order, 4uLL);
  bn_set_static_words(&unk_1ED4C0058, &kP256OrderRR, 4uLL);
  qword_1ED4C0088 = 0xCCD1C8AAEE00BC4FLL;
  EC_group_p256_storage = EC_GFp_nistp256_method();
  *algn_1ED4BFF78 = &EC_group_p256_storage;
  xmmword_1ED4BFF80 = kP256MontGX;
  unk_1ED4BFF90 = unk_1A90AFD48;
  unk_1ED4BFFC8 = kP256MontGY;
  unk_1ED4BFFD8 = unk_1A90AFD68;
  xmmword_1ED4C0010 = kP256FieldR;
  unk_1ED4C0020 = unk_1A90AFD88;
  xmmword_1ED4C0120 = kP256MontB;
  unk_1ED4C0130 = unk_1A90AFDA8;
  ec_group_set_a_minus3(&EC_group_p256_storage);
  *&result = 0x100000001;
  qword_1ED4C0184 = 0x100000001;
  return result;
}

int BIO_free(BIO *a)
{
  if (!a)
  {
    return 1;
  }

  v1 = a;
  while (1)
  {
    v2 = v1;
    result = CRYPTO_refcount_dec_and_test_zero(&v1->retry_reason);
    if (!result)
    {
      break;
    }

    v1 = v1->ptr;
    v2->ptr = 0;
    if (v2->method)
    {
      destroy = v2->method->destroy;
      if (destroy)
      {
        (destroy)(v2);
      }
    }

    CRYPTO_free_ex_data(&g_ex_data_class, v2, &v2->callback);
    OPENSSL_free(v2);
    if (!v1)
    {
      return 1;
    }
  }

  return result;
}

void EC_GFp_nistp256_method_init()
{
  EC_GFp_nistp256_method_storage = ec_GFp_nistp256_point_get_affine_coordinates;
  qword_1ED4C0388 = ec_GFp_nistp256_add;
  qword_1ED4C0390 = ec_GFp_nistp256_dbl;
  qword_1ED4C0398 = ec_GFp_nistp256_point_mul;
  qword_1ED4C03A0 = ec_GFp_nistp256_point_mul_base;
  qword_1ED4C03B0 = ec_GFp_nistp256_point_mul_public;
  qword_1ED4C03D0 = ec_GFp_mont_felem_mul;
  qword_1ED4C03D8 = ec_GFp_mont_felem_sqr;
  qword_1ED4C03E0 = ec_GFp_mont_felem_to_bytes;
  qword_1ED4C03E8 = ec_GFp_mont_felem_from_bytes;
  qword_1ED4C03F0 = ec_GFp_mont_felem_reduce;
  qword_1ED4C03F8 = ec_GFp_mont_felem_exp;
  qword_1ED4C0400 = ec_simple_scalar_inv0_montgomery;
  qword_1ED4C0408 = ec_simple_scalar_to_montgomery_inv_vartime;
  qword_1ED4C0410 = ec_GFp_nistp256_cmp_x_coordinate;
}

void SSL_CTX_free(SSL_CTX *a1)
{
  if (a1)
  {
    bssl::RefCounted<ssl_ctx_st>::DecRefInternal(a1);
  }
}

void boringssl_context_ssl_context_destroy(uint64_t a1)
{
  if (a1)
  {
    if (*a1 == -1252936367)
    {
      v1 = *(a1 + 8);
      if (v1)
      {
        v2 = *(v1 + 400);
        if (v2)
        {
          SSL_CTX_free(v2);
          *(v1 + 400) = 0;
        }
      }
    }
  }
}

void ssl_ctx_st::~ssl_ctx_st(ssl_ctx_st *this)
{
  SSL_CTX_flush_sessions(this, 0);
  CRYPTO_free_ex_data(&bssl::g_ex_data_class_ssl_ctx, this, &this->generate_session_id);
  CRYPTO_MUTEX_cleanup(&this->cert_store);
  OPENSSL_lh_free(this->info_callback);
  (*&this->cipher_list_by_id[4].num)(this);
  bssl::Array<unsigned char>::~Array(&this[1].verify_mode);
  std::unique_ptr<ssl_ech_keys_st,bssl::internal::Deleter>::reset[abi:ne200100](&this[1].client_CA, 0);
  std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](&this[1].info_callback, 0);
  bssl::Array<unsigned char>::~Array(&this[1].extra_certs);
  bssl::Vector<bssl::CertCompressionAlg>::~Vector(&this[1].rsa_md5);
  std::unique_ptr<stack_st_SRTP_PROTECTION_PROFILE,bssl::internal::Deleter>::reset[abi:ne200100](&this[1].ex_data.dummy, 0);
  std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100](&this[1].app_verify_cookie_cb, 0);
  bssl::Array<unsigned char>::~Array(&this[1].client_cert_cb);
  std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100](&this[1].default_passwd_callback_userdata, 0);
  bssl::Array<unsigned char>::~Array(&this[1].app_verify_arg);
  bssl::Array<unsigned char>::~Array(&this[1].stats.sess_cb_hit);
  std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100](&this[1].session_cache_mode, 0);
  std::unique_ptr<bssl::TicketKey,bssl::internal::Deleter>::reset[abi:ne200100](&this[1].session_cache_head, 0);
  std::unique_ptr<bssl::TicketKey,bssl::internal::Deleter>::reset[abi:ne200100](&this[1].session_cache_size, 0);
  std::unique_ptr<bssl::CERT,bssl::internal::Deleter>::reset[abi:ne200100](&this->tlsext_tick_key_name[8], 0);
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](&this->tlsext_servername_callback, 0);
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](&this->quiet_shutdown, 0);
  std::unique_ptr<bssl::SSLCipherPreferenceList,bssl::internal::Deleter>::reset[abi:ne200100](&this->sha1, 0);
}

pthread_rwlock_t **bssl::internal::MutexLockBase<&(CRYPTO_MUTEX_lock_write),&(CRYPTO_MUTEX_unlock_write)>::MutexLockBase(pthread_rwlock_t **a1, pthread_rwlock_t *a2)
{
  *a1 = a2;
  if (!a2)
  {
    bssl::internal::MutexLockBase<&(CRYPTO_MUTEX_lock_read),&(CRYPTO_MUTEX_unlock_read)>::MutexLockBase();
  }

  CRYPTO_MUTEX_lock_write(a2);
  return a1;
}

void SSL_CTX_flush_sessions(SSL_CTX *ctx, uint64_t tm)
{
  info_callback = ctx->info_callback;
  v4[0] = ctx;
  v4[2] = info_callback;
  if (info_callback)
  {
    v4[1] = tm;
    v3 = 0xAAAAAAAAAAAAAAAALL;
    bssl::internal::MutexLockBase<&(CRYPTO_MUTEX_lock_write),&(CRYPTO_MUTEX_unlock_write)>::MutexLockBase(&v3, &ctx->cert_store);
    v5[0] = timeout_doall_arg;
    v5[1] = v4;
    OPENSSL_lh_doall_arg(info_callback, lh_SSL_SESSION_call_doall_arg, v5);
    CRYPTO_MUTEX_unlock_read(v3);
  }
}

void __boringssl_context_evaluate_trust_async_external_block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 56);
  v3 = *(a1 + 32);
  v4 = v3[3];
  v9 = *(a1 + 48);
  v5 = v3;
  v6 = *v2;
  v7 = *(a1 + 40);
  *&v8 = v5;
  *(&v8 + 1) = v7;
  v10 = v8;
  v11 = *(a1 + 64);
  nw_queue_context_async_if_needed();
}

uint64_t CRYPTO_MUTEX_lock_write(pthread_rwlock_t *a1)
{
  result = pthread_rwlock_wrlock(a1);
  if (result)
  {
    abort();
  }

  return result;
}

void __boringssl_context_evaluate_trust_async_external_block_invoke_3(uint64_t a1)
{
  v134 = *MEMORY[0x1E69E9840];
  if (boringssl_session_get_state(*(a1 + 48)) <= 3 && (boringssl_session_is_cancelled(*(a1 + 48)) & 1) == 0)
  {
    v13 = *(a1 + 32);
    if (v13)
    {
      WeakRetained = objc_loadWeakRetained((v13 + 16));
      if (WeakRetained)
      {
        v15 = WeakRetained;
        v16 = objc_loadWeakRetained((*(a1 + 32) + 16));
        v17 = v16[435];

        if (v17)
        {
          goto LABEL_59;
        }
      }

      v18 = *(a1 + 32);
      if (v18)
      {
        v19 = objc_loadWeakRetained((v18 + 16));
        if (v19)
        {
          v20 = objc_loadWeakRetained((*(a1 + 32) + 16));
          v21 = (v20[435] & 1) == 0;
        }

        else
        {
          v21 = 1;
        }

        if (v21)
        {
LABEL_30:
          if (!g_boringssl_log)
          {
            goto LABEL_59;
          }

          v29 = g_boringssl_log;
          if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_58;
          }

          v30 = *(a1 + 32);
          if (v30)
          {
            v21 = objc_loadWeakRetained((v30 + 16));
            v31 = *(a1 + 32);
            if (v21)
            {
              v32 = v31 != 0;
              if (v31)
              {
                v1 = objc_loadWeakRetained((v31 + 16));
                v31 = *(a1 + 32);
              }

              else
              {
                v1 = 0;
              }

              v34 = (v1 + 351);
            }

            else
            {
              v32 = 0;
              v34 = &unk_1A9098A9F;
            }

            if (v31)
            {
              SignatureHashAlgorithm = objc_loadWeakRetained((v31 + 16));
              v33 = 0;
            }

            else
            {
              SignatureHashAlgorithm = 0;
              v33 = 1;
            }
          }

          else
          {
            v32 = 0;
            SignatureHashAlgorithm = 0;
            v33 = 1;
            v34 = &unk_1A9098A9F;
          }

          v35 = *(a1 + 72);
          *buf = 136447234;
          v125 = "boringssl_context_evaluate_trust_async_external_block_invoke_3";
          v126 = 1024;
          v127 = 1760;
          v128 = 2082;
          v129 = v34;
          v130 = 2048;
          v131 = SignatureHashAlgorithm;
          v132 = 1024;
          v133 = v35;
          _os_log_impl(&dword_1A8FF5000, v29, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] Returning from external verify block with result: %{BOOL}d", buf, 0x2Cu);
          if (v33)
          {
            if (!v32)
            {
              goto LABEL_56;
            }
          }

          else
          {

            if (!v32)
            {
LABEL_56:
              if (!v30)
              {
LABEL_58:

                goto LABEL_59;
              }

LABEL_57:

              goto LABEL_58;
            }
          }

          if (!v30)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        }

LABEL_59:
        if ((*(a1 + 72) & 1) == 0)
        {
          goto LABEL_118;
        }

        v36 = *(a1 + 32);
        v37 = v36;
        if (v36 && (*(v36 + 551) & 0x18) == 8)
        {
          BlockSize = SecKeyGetBlockSize(v36[42]);
          v39 = v37[42];
          AlgorithmId = SecKeyGetAlgorithmId();
          if (AlgorithmId == 3)
          {
            SignatureHashAlgorithm = (8 * BlockSize);
            if (8 * BlockSize < v37[66])
            {
              v46 = objc_loadWeakRetained(v37 + 2);
              if (!v46 || (v47 = v46, v48 = objc_loadWeakRetained(v37 + 2), v1 = v48[435], v48, v47, (v1 & 1) == 0))
              {
                v49 = objc_loadWeakRetained(v37 + 2);
                if (v49)
                {
                  v50 = objc_loadWeakRetained(v37 + 2);
                  v1 = (v50[435] & 1) == 0;
                }

                else
                {
                  v1 = 1;
                }

                v65 = 4294957413;
                if (v1 && g_boringssl_log)
                {
                  v1 = g_boringssl_log;
                  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
                  {
                    __boringssl_context_evaluate_trust_async_external_block_invoke_3_cold_1();
                  }

                  goto LABEL_165;
                }

                goto LABEL_92;
              }

              goto LABEL_138;
            }
          }

          else if (AlgorithmId == 1)
          {
            SignatureHashAlgorithm = (8 * BlockSize);
            if (8 * BlockSize < v37[65])
            {
              v41 = objc_loadWeakRetained(v37 + 2);
              if (!v41 || (v42 = v41, v43 = objc_loadWeakRetained(v37 + 2), v1 = v43[435], v43, v42, (v1 & 1) == 0))
              {
                v44 = objc_loadWeakRetained(v37 + 2);
                if (v44)
                {
                  v45 = objc_loadWeakRetained(v37 + 2);
                  v1 = (v45[435] & 1) == 0;
                }

                else
                {
                  v1 = 1;
                }

                v65 = 4294957413;
                if (v1 && g_boringssl_log)
                {
                  v1 = g_boringssl_log;
                  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
                  {
                    __boringssl_context_evaluate_trust_async_external_block_invoke_3_cold_2();
                  }

LABEL_165:

                  goto LABEL_92;
                }

                goto LABEL_92;
              }

LABEL_138:
              v65 = 4294957413;
              goto LABEL_92;
            }
          }

          if (!CFArrayGetValueAtIndex(v37[43], 0))
          {
            v57 = objc_loadWeakRetained(v37 + 2);
            if (!v57 || (v58 = v57, v59 = objc_loadWeakRetained(v37 + 2), v1 = v59[435], v59, v58, (v1 & 1) == 0))
            {
              v60 = objc_loadWeakRetained(v37 + 2);
              if (v60)
              {
                v61 = objc_loadWeakRetained(v37 + 2);
                v1 = (v61[435] & 1) == 0;
              }

              else
              {
                v1 = 1;
              }

              v65 = 4294957412;
              if (v1 && g_boringssl_log)
              {
                v1 = g_boringssl_log;
                if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
                {
                  __boringssl_context_evaluate_trust_async_external_block_invoke_3_cold_5();
                }

                goto LABEL_165;
              }

              goto LABEL_92;
            }

            goto LABEL_123;
          }

          SignatureHashAlgorithm = SecCertificateGetSignatureHashAlgorithm();
          v51 = *(v37 + 134);
          v52 = objc_loadWeakRetained(v37 + 2);
          v53 = v52;
          if (SignatureHashAlgorithm < v51)
          {
            if (!v52 || (v54 = objc_loadWeakRetained(v37 + 2), v1 = v54[435], v54, v53, (v1 & 1) == 0))
            {
              v55 = objc_loadWeakRetained(v37 + 2);
              if (v55)
              {
                v56 = objc_loadWeakRetained(v37 + 2);
                v1 = (v56[435] & 1) == 0;
              }

              else
              {
                v1 = 1;
              }

              v65 = 4294957412;
              if (v1 && g_boringssl_log)
              {
                v1 = g_boringssl_log;
                if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
                {
                  __boringssl_context_evaluate_trust_async_external_block_invoke_3_cold_4();
                }

                goto LABEL_165;
              }

LABEL_92:

              v66 = *(a1 + 32);
              if (v65 && (*(v66 + 551) & 8) != 0)
              {
                v67 = objc_loadWeakRetained((v66 + 16));
                if (v67)
                {
                  v68 = v67;
                  v69 = objc_loadWeakRetained((*(a1 + 32) + 16));
                  v70 = v69[435];

                  if (v70)
                  {
                    goto LABEL_117;
                  }
                }

                v71 = *(a1 + 32);
                if (v71)
                {
                  v72 = objc_loadWeakRetained((v71 + 16));
                  if (v72)
                  {
                    v73 = objc_loadWeakRetained((*(a1 + 32) + 16));
                    v74 = (v73[435] & 1) == 0;
                  }

                  else
                  {
                    v74 = 1;
                  }
                }

                else
                {
                  v74 = 1;
                }

                if (!v74 || !g_boringssl_log)
                {
                  goto LABEL_117;
                }

                v92 = g_boringssl_log;
                if (!os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
                {
LABEL_116:

LABEL_117:
                  v93 = *(*(a1 + 32) + 272);
                  v94 = objc_loadWeakRetained((*(a1 + 56) + 16));
                  (*(v93 + 16))(v93, v94, 0, v65);

                  goto LABEL_118;
                }

                v102 = *(a1 + 32);
                if (v102)
                {
                  v74 = objc_loadWeakRetained((v102 + 16));
                  v117 = *(a1 + 32);
                  if (v74)
                  {
                    v103 = v117 != 0;
                    if (v117)
                    {
                      SignatureHashAlgorithm = objc_loadWeakRetained((v117 + 16));
                      v117 = *(a1 + 32);
                    }

                    else
                    {
                      SignatureHashAlgorithm = 0;
                    }

                    v106 = SignatureHashAlgorithm + 351;
                  }

                  else
                  {
                    v103 = 0;
                    v106 = &unk_1A9098A9F;
                  }

                  if (v117)
                  {
                    v104 = objc_loadWeakRetained((v117 + 16));
                    v105 = 0;
                  }

                  else
                  {
                    v104 = 0;
                    v105 = 1;
                  }
                }

                else
                {
                  v103 = 0;
                  v104 = 0;
                  v105 = 1;
                  v106 = &unk_1A9098A9F;
                }

                *buf = 136446978;
                v125 = "boringssl_context_evaluate_trust_async_external_block_invoke";
                v126 = 1024;
                v127 = 1772;
                v128 = 2082;
                v129 = v106;
                v130 = 2048;
                v131 = v104;
                _os_log_debug_impl(&dword_1A8FF5000, v92, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] Generating ATS violation error", buf, 0x26u);
                if (v105)
                {
                  if (!v103)
                  {
                    goto LABEL_191;
                  }
                }

                else
                {

                  if (!v103)
                  {
LABEL_191:
                    if (!v102)
                    {
                      goto LABEL_116;
                    }

                    goto LABEL_195;
                  }
                }

                if (!v102)
                {
                  goto LABEL_116;
                }

LABEL_195:

                goto LABEL_116;
              }

              v75 = *(a1 + 56);
              if ((*(v75 + 551) & 0x28) == 8)
              {
                v76 = objc_loadWeakRetained((v75 + 16));
                if (v76)
                {
                  v77 = v76;
                  v78 = objc_loadWeakRetained((*(a1 + 56) + 16));
                  v79 = v78[435];

                  if (v79)
                  {
                    goto LABEL_130;
                  }
                }

                v80 = *(a1 + 56);
                if (v80)
                {
                  v81 = objc_loadWeakRetained((v80 + 16));
                  if (v81)
                  {
                    v82 = objc_loadWeakRetained((*(a1 + 56) + 16));
                    v83 = (v82[435] & 1) == 0;
                  }

                  else
                  {
                    v83 = 1;
                  }
                }

                else
                {
                  v83 = 1;
                }

                if (!v83 || !g_boringssl_log)
                {
                  goto LABEL_130;
                }

                v97 = g_boringssl_log;
                if (!os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
                {
LABEL_129:

LABEL_130:
                  SecTrustSetExceptions(*(a1 + 64), 0);
                  v98 = *(a1 + 64);
                  v121[0] = MEMORY[0x1E69E9820];
                  v121[1] = 3221225472;
                  v121[2] = __boringssl_context_evaluate_trust_async_external_block_invoke_204;
                  v121[3] = &unk_1E78695E8;
                  v99 = *(a1 + 48);
                  v123 = *(a1 + 56);
                  v122 = *(a1 + 40);
                  boringssl_context_evaluate_trust_async_internal(v99, v98, v121);

                  goto LABEL_120;
                }

                v107 = *(a1 + 56);
                if (v107)
                {
                  v83 = objc_loadWeakRetained((v107 + 16));
                  v118 = *(a1 + 56);
                  if (v83)
                  {
                    v108 = v118 != 0;
                    if (v118)
                    {
                      v1 = objc_loadWeakRetained((v118 + 16));
                      v118 = *(a1 + 56);
                    }

                    else
                    {
                      v1 = 0;
                    }

                    v111 = (v1 + 351);
                  }

                  else
                  {
                    v108 = 0;
                    v111 = &unk_1A9098A9F;
                  }

                  if (v118)
                  {
                    v109 = objc_loadWeakRetained((v118 + 16));
                    v110 = 0;
                  }

                  else
                  {
                    v109 = 0;
                    v110 = 1;
                  }
                }

                else
                {
                  v108 = 0;
                  v109 = 0;
                  v110 = 1;
                  v111 = &unk_1A9098A9F;
                }

                *buf = 136446978;
                v125 = "boringssl_context_evaluate_trust_async_external_block_invoke";
                v126 = 1024;
                v127 = 1781;
                v128 = 2082;
                v129 = v111;
                v130 = 2048;
                v131 = v109;
                _os_log_debug_impl(&dword_1A8FF5000, v97, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] Performing local ATS trust evaluation", buf, 0x26u);
                if (v110)
                {
                  if (!v108)
                  {
                    goto LABEL_203;
                  }
                }

                else
                {

                  if (!v108)
                  {
LABEL_203:
                    if (!v107)
                    {
                      goto LABEL_129;
                    }

                    goto LABEL_207;
                  }
                }

                if (!v107)
                {
                  goto LABEL_129;
                }

LABEL_207:

                goto LABEL_129;
              }

              v84 = objc_loadWeakRetained((v66 + 16));
              if (v84)
              {
                v85 = v84;
                v86 = objc_loadWeakRetained((*(a1 + 32) + 16));
                v87 = v86[435];

                if (v87)
                {
                  goto LABEL_137;
                }
              }

              v88 = *(a1 + 32);
              if (v88)
              {
                v89 = objc_loadWeakRetained((v88 + 16));
                if (v89)
                {
                  v90 = objc_loadWeakRetained((*(a1 + 32) + 16));
                  v91 = (v90[435] & 1) == 0;
                }

                else
                {
                  v91 = 1;
                }
              }

              else
              {
                v91 = 1;
              }

              if (!v91 || !g_boringssl_log)
              {
LABEL_137:
                *(*(a1 + 56) + 550) &= ~8u;
                v101 = *(a1 + 72);
                v95 = *(*(a1 + 40) + 16);
                goto LABEL_119;
              }

              v100 = g_boringssl_log;
              if (!os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
              {
LABEL_136:

                goto LABEL_137;
              }

              v112 = *(a1 + 32);
              if (v112)
              {
                v91 = objc_loadWeakRetained((v112 + 16));
                v119 = *(a1 + 32);
                if (v91)
                {
                  v113 = v119 != 0;
                  if (v119)
                  {
                    v1 = objc_loadWeakRetained((v119 + 16));
                    v119 = *(a1 + 32);
                  }

                  else
                  {
                    v1 = 0;
                  }

                  v116 = (v1 + 351);
                }

                else
                {
                  v113 = 0;
                  v116 = &unk_1A9098A9F;
                }

                if (v119)
                {
                  v114 = objc_loadWeakRetained((v119 + 16));
                  v115 = 0;
                }

                else
                {
                  v114 = 0;
                  v115 = 1;
                }
              }

              else
              {
                v113 = 0;
                v114 = 0;
                v115 = 1;
                v116 = &unk_1A9098A9F;
              }

              v120 = *(a1 + 72);
              *buf = 136447234;
              v125 = "boringssl_context_evaluate_trust_async_external_block_invoke_2";
              v126 = 1024;
              v127 = 1788;
              v128 = 2082;
              v129 = v116;
              v130 = 2048;
              v131 = v114;
              v132 = 1024;
              v133 = v120;
              _os_log_debug_impl(&dword_1A8FF5000, v100, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] Setting verify result to %{BOOL}d", buf, 0x2Cu);
              if (v115)
              {
                if (!v113)
                {
                  goto LABEL_215;
                }
              }

              else
              {

                if (!v113)
                {
LABEL_215:
                  if (!v112)
                  {
                    goto LABEL_136;
                  }

                  goto LABEL_219;
                }
              }

              if (!v112)
              {
                goto LABEL_136;
              }

LABEL_219:

              goto LABEL_136;
            }

LABEL_123:
            v65 = 4294957412;
            goto LABEL_92;
          }

          if (!v52 || (v62 = objc_loadWeakRetained(v37 + 2), v1 = v62[435], v62, v53, (v1 & 1) == 0))
          {
            v63 = objc_loadWeakRetained(v37 + 2);
            if (v63)
            {
              v64 = objc_loadWeakRetained(v37 + 2);
              v1 = (v64[435] & 1) == 0;
            }

            else
            {
              v1 = 1;
            }

            v65 = 0;
            if (v1 && g_boringssl_log)
            {
              v1 = g_boringssl_log;
              if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
              {
                __boringssl_context_evaluate_trust_async_external_block_invoke_3_cold_3();
              }

              v65 = 0;
              goto LABEL_165;
            }

            goto LABEL_92;
          }
        }

        v65 = 0;
        goto LABEL_92;
      }
    }

    v21 = 1;
    goto LABEL_30;
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = objc_loadWeakRetained((v4 + 16));
  if (v5)
  {
    v6 = v5;
    v7 = objc_loadWeakRetained((*(a1 + 32) + 16));
    v8 = v7[435];

    if (v8)
    {
      goto LABEL_118;
    }
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = objc_loadWeakRetained((v9 + 16));
    if (v10)
    {
      v11 = objc_loadWeakRetained((*(a1 + 32) + 16));
      v12 = (v11[435] & 1) == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      goto LABEL_118;
    }
  }

  else
  {
LABEL_9:
    v12 = 1;
  }

  if (g_boringssl_log)
  {
    v22 = g_boringssl_log;
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_43;
    }

    v23 = *(a1 + 32);
    if (!v23)
    {
      v25 = 0;
      v26 = 0;
      v27 = 1;
      v28 = &unk_1A9098A9F;
      goto LABEL_39;
    }

    v12 = objc_loadWeakRetained((v23 + 16));
    v24 = *(a1 + 32);
    if (v12)
    {
      v25 = v24 != 0;
      if (v24)
      {
        v1 = objc_loadWeakRetained((v24 + 16));
        v24 = *(a1 + 32);
      }

      else
      {
        v1 = 0;
      }

      v28 = (v1 + 351);
      if (v24)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v25 = 0;
      v28 = &unk_1A9098A9F;
      if (v24)
      {
LABEL_38:
        v26 = objc_loadWeakRetained((v24 + 16));
        v27 = 0;
LABEL_39:
        *buf = 136446978;
        v125 = "boringssl_context_evaluate_trust_async_external_block_invoke";
        v126 = 1024;
        v127 = 1793;
        v128 = 2082;
        v129 = v28;
        v130 = 2048;
        v131 = v26;
        _os_log_impl(&dword_1A8FF5000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] Cancelled during verify block", buf, 0x26u);
        if (v27)
        {
          if (!v25)
          {
            goto LABEL_41;
          }
        }

        else
        {

          if (!v25)
          {
LABEL_41:
            if (v23)
            {
LABEL_42:
            }

LABEL_43:

            goto LABEL_118;
          }
        }

        if (!v23)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }
    }

    v26 = 0;
    v27 = 1;
    goto LABEL_39;
  }

LABEL_118:
  *(*(a1 + 56) + 550) &= ~8u;
  v95 = *(*(a1 + 40) + 16);
LABEL_119:
  v95();
LABEL_120:
  v96 = *MEMORY[0x1E69E9840];
}

void __boringssl_context_certificate_verify_callback_block_invoke(uint64_t a1, char a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    if (*v3 == -1252936367)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        *(v4 + 312) = a2;
        *(v4 + 550) |= 4u;
      }
    }
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  nw_protocol_boringssl_handshake_negotiate(WeakRetained);
}

void OPENSSL_lh_doall_arg(uint64_t a1, void (*a2)(void, uint64_t), uint64_t a3)
{
  if (a1)
  {
    v6 = *(a1 + 24);
    if (v6 == -1)
    {
      v7 = -1;
    }

    else
    {
      v7 = v6 + 1;
      *(a1 + 24) = v6 + 1;
    }

    v8 = *(a1 + 16);
    if (v8)
    {
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
    }

    if (v7 != -1)
    {
      *(a1 + 24) = v7 - 1;
    }

    lh_maybe_resize(a1);
  }
}

uint64_t CRYPTO_MUTEX_unlock_read(pthread_rwlock_t *a1)
{
  result = pthread_rwlock_unlock(a1);
  if (result)
  {
    abort();
  }

  return result;
}

void lh_maybe_resize(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    v2 = *(a1 + 16);
    if (v2 <= 0xF)
    {
      lh_maybe_resize_cold_1();
    }

    if (*a1 / v2 < 3)
    {
      if (v2 == 16 || v2 <= *a1)
      {
        return;
      }

      v4 = v2 >> 1;
      if (v4 <= 0x10)
      {
        v3 = 16;
      }

      else
      {
        v3 = v4;
      }
    }

    else
    {
      if (v2 < 1)
      {
        return;
      }

      v3 = 2 * v2;
    }

    lh_rebucket(a1, v3);
  }
}

void OPENSSL_lh_free(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      for (i = 0; i < v2; ++i)
      {
        v4 = *(a1[1] + 8 * i);
        if (v4)
        {
          do
          {
            v5 = v4[1];
            OPENSSL_free(v4);
            v4 = v5;
          }

          while (v5);
          v2 = a1[2];
        }
      }
    }

    OPENSSL_free(a1[1]);

    OPENSSL_free(a1);
  }
}

uint64_t bssl::Vector<bssl::CertCompressionAlg>::~Vector(uint64_t a1)
{
  OPENSSL_free(*a1);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return a1;
}

void std::unique_ptr<bssl::TicketKey,bssl::internal::Deleter>::reset[abi:ne200100](void **a1, void *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    OPENSSL_free(v3);
  }
}

void boringssl_bio_destroy(BIO *a)
{
  if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_DEBUG))
  {
    boringssl_bio_destroy_cold_1();
    if (!a)
    {
      return;
    }
  }

  else if (!a)
  {
    return;
  }

  v2 = *&a->num;
  if (v2)
  {
    free(v2);
  }

  BIO_free(a);
}

uint64_t bssl::tls13_process_certificate_verify_with_transcript(uint64_t a1, uint64_t a2, char a3, const void *a4, size_t a5)
{
  if (*(a1 + 1528))
  {
    v9 = *a1;
    v21 = *(a2 + 8);
    memset(v20, 170, sizeof(v20));
    if (CBS_get_u16(&v21, v20) && CBS_get_u16_length_prefixed(&v21, &v20[2]) && !*(&v21 + 1))
    {
      v19 = 50;
      if (bssl::tls12_check_peer_sigalg(a1, &v19, *v20, *(a1 + 1528), v10))
      {
        *(*(a1 + 1536) + 8) = *v20;
        v17 = 0;
        v18 = 0;
        if (a3)
        {
          v11 = 3;
        }

        else
        {
          v11 = *(v9 + 180) & 1;
        }

        if (bssl::tls13_get_cert_verify_signature_input(a1, &v17, v11, a4, a5))
        {
          if (bssl::ssl_public_key_verify(v9, *&v20[2], *&v20[10], *v20, *(a1 + 1528), v17, v18))
          {
            v14 = 1;
LABEL_21:
            OPENSSL_free(v17);
            return v14;
          }

          ERR_put_error(16, 0, 114, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 442);
          v16 = 51;
        }

        else
        {
          v16 = 80;
        }

        bssl::ssl_send_alert(v9, 2, v16);
        v14 = 0;
        goto LABEL_21;
      }

      v13 = v19;
      v12 = v9;
    }

    else
    {
      ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 415);
      v12 = v9;
      v13 = 50;
    }

    bssl::ssl_send_alert(v12, 2, v13);
  }

  else
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 406);
  }

  return 0;
}

void sub_1A9030A94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  bssl::Array<unsigned char>::~Array(va);
  _Unwind_Resume(a1);
}

uint64_t boringssl_bio_free(uint64_t result)
{
  if (result)
  {
    if (*(result + 20))
    {
      *(result + 16) = 0;
      *(result + 24) = 0;
    }

    return 1;
  }

  return result;
}

uint64_t bssl::tls12_check_peer_sigalg(bssl *this, const bssl::SSL_HANDSHAKE *a2, evp_pkey_st *a3, EVP_PKEY *a4, evp_pkey_st *a5)
{
  v6 = *(this + 1);
  v7 = *(v6 + 272);
  if (v7)
  {
    v8 = *(v6 + 264);
    v9 = 2 * v7;
  }

  else
  {
    v8 = &bssl::kVerifySignatureAlgorithms;
    v9 = 20;
  }

  v10 = v9;
  v11 = v8;
  while (*v11 != a3)
  {
    ++v11;
    v10 -= 2;
    if (!v10)
    {
      v11 = &v8[v9 / 2];
      break;
    }
  }

  if (v11 - v8 == v9 || (v12 = 1, !bssl::ssl_pkey_supports_algorithm(*this, a4, a3, 1)))
  {
    ERR_put_error(16, 0, 245, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 456);
    v12 = 0;
    *a2 = 47;
  }

  return v12;
}

void nw_protocol_boringssl_deallocate_metadata(void *a1, uint64_t a2)
{
  v3 = a1;
  if (a2)
  {
    v23 = v3;
    v4 = *(a2 + 40);
    if (v4)
    {
      free(v4);
      *(a2 + 40) = 0;
    }

    v5 = *(a2 + 176);
    if (v5)
    {
      free(v5);
      *(a2 + 176) = 0;
    }

    v6 = *(a2 + 48);
    if (v6)
    {
      free(v6);
      *(a2 + 48) = 0;
    }

    v7 = *(a2 + 56);
    if (v7)
    {
      free(v7);
      *(a2 + 56) = 0;
    }

    v8 = *(a2 + 328);
    if (v8)
    {
      free(v8);
      *(a2 + 328) = 0;
    }

    v9 = *(a2 + 384);
    if (v9)
    {
      CFSetApplyFunction(v9, nw_protocol_boringssl_returned_raw_string_pointer_deallocate, 0);
      CFRelease(*(a2 + 384));
    }

    v10 = *(a2 + 80);
    *(a2 + 80) = 0;

    v11 = *(a2 + 88);
    *(a2 + 88) = 0;

    v12 = *(a2 + 96);
    *(a2 + 96) = 0;

    v13 = *(a2 + 104);
    *(a2 + 104) = 0;

    v14 = *(a2 + 112);
    *(a2 + 112) = 0;

    v15 = *(a2 + 120);
    *(a2 + 120) = 0;

    v16 = *(a2 + 128);
    *(a2 + 128) = 0;

    v17 = *(a2 + 136);
    *(a2 + 136) = 0;

    v18 = *(a2 + 144);
    *(a2 + 144) = 0;

    v19 = *(a2 + 152);
    *(a2 + 152) = 0;

    v20 = *(a2 + 160);
    *(a2 + 160) = 0;

    v21 = *(a2 + 168);
    *(a2 + 168) = 0;

    v22 = *(a2 + 368);
    if (v22)
    {
      CFRelease(v22);
    }

    free(a2);
    v3 = v23;
  }
}

BOOL bssl::ssl_pkey_supports_algorithm(bssl *this, EVP_PKEY *a2, evp_pkey_st *a3, int a4)
{
  v5 = a3;
  v8 = 14;
  for (i = &byte_1F1CAF48B; *(i - 27) != a3; i += 32)
  {
    if (!--v8)
    {
      return 0;
    }
  }

  v10 = EVP_PKEY_id(a2);
  if (v10 != *(i - 23))
  {
    return 0;
  }

  v12 = v10;
  if (*(i - 3) == 1)
  {
    v13 = EVP_PKEY_size(a2);
    v14 = (*(i - 11))();
    if (2 * EVP_MD_size(v14) + 2 > v13)
    {
      return 0;
    }
  }

  if (bssl::ssl_protocol_version(this, v11) > 0x302)
  {
    if (v5 != 65281)
    {
      if (bssl::ssl_protocol_version(this, v15) < 0x304)
      {
        if (*(i - 2) != 1)
        {
          return 0;
        }
      }

      else
      {
        if (*(i - 1) != 1 || *i == 1 && (*(this + 180) & 1) != a4)
        {
          return 0;
        }

        if (v12 == 408)
        {
          v18 = *(i - 19);
          if (!v18)
          {
            return 0;
          }

          v19 = EVP_PKEY_get0_EC_KEY(a2);
          v20 = EC_KEY_get0_group(v19);
          if (EC_GROUP_get_curve_name(v20) != v18)
          {
            return 0;
          }
        }
      }

      return 1;
    }

    return 0;
  }

  return v5 == 65281 || v5 == 515;
}

void nw_protocol_boringssl_returned_raw_string_pointer_deallocate(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

int EVP_PKEY_size(EVP_PKEY *pkey)
{
  if (pkey && (ptr = pkey->pkey.ptr) != 0 && (v2 = *(ptr + 15)) != 0)
  {
    return v2();
  }

  else
  {
    return 0;
  }
}

double EVP_sha256_init()
{
  EVP_sha256_storage = 0x20000002A0;
  dword_1ED4C0918 = 0;
  qword_1ED4C0920 = sha256_init;
  qword_1ED4C0928 = digest_update_wrapper;
  qword_1ED4C0930 = digest_final_wrapper;
  *&result = 0x40800000040;
  qword_1ED4C0938 = 0x40800000040;
  return result;
}

BOOL bssl::tls13_get_cert_verify_signature_input(uint64_t a1, uint64_t a2, unsigned int a3, const void *a4, size_t a5)
{
  v20 = *MEMORY[0x1E69E9840];
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[1] = v10;
  v18[2] = v10;
  v18[0] = v10;
  CBB_zero(v18);
  if (!CBB_init(v18, 0xE2uLL))
  {
    goto LABEL_17;
  }

  v11 = 64;
  do
  {
    if (!CBB_add_u8(v18, 0x20u))
    {
      goto LABEL_17;
    }

    --v11;
  }

  while (v11);
  if (a3 < 4 && CBB_add_bytes(v18, off_1E785EF68[a3], *&asc_1A90AF6B8[8 * a3]))
  {
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    __dst[2] = v12;
    __dst[3] = v12;
    __dst[0] = v12;
    __dst[1] = v12;
    v17 = 0xAAAAAAAAAAAAAAAALL;
    if (a4)
    {
      if (a5 - 65 < 0xFFFFFFFFFFFFFFC0)
      {
        v13 = 105;
LABEL_16:
        ERR_put_error(16, 0, 65, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", v13);
        goto LABEL_17;
      }

      memcpy(__dst, a4, a5);
      v17 = a5;
    }

    else
    {
      if (!bssl::SSLTranscript::GetHash((a1 + 424), __dst, &v17))
      {
        v13 = 112;
        goto LABEL_16;
      }

      a5 = v17;
    }

    if (!CBB_add_bytes(v18, __dst, a5))
    {
      goto LABEL_17;
    }

    v14 = bssl::CBBFinishArray(v18, a2);
  }

  else
  {
LABEL_17:
    v14 = 0;
  }

  CBB_cleanup(v18);
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_1A90310FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CBB_cleanup(va);
  _Unwind_Resume(a1);
}

uint64_t EVP_PKEY_get0_EC_KEY(uint64_t a1)
{
  if (*(a1 + 4) == 408)
  {
    return *(a1 + 8);
  }

  ERR_put_error(6, 0, 106, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ec_asn1.c", 320);
  return 0;
}

uint64_t bssl::setup_ctx(bssl *this, ssl_st *a2, EVP_PKEY *a3, evp_pkey_st *a4, int a5)
{
  v6 = a4;
  if (!bssl::ssl_pkey_supports_algorithm(this, a3, a4, a5))
  {
    ERR_put_error(16, 0, 245, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_privkey.cc", 223);
    return 0;
  }

  v9 = &bssl::kSignatureAlgorithms;
  if (v6 != 65281)
  {
    do
    {
      v10 = v9[16];
      v9 += 16;
    }

    while (v10 != v6);
  }

  v11 = *(v9 + 2);
  if (v11)
  {
    v12 = v11();
  }

  else
  {
    v12 = 0;
  }

  v14 = 0xAAAAAAAAAAAAAAAALL;
  if (a5)
  {
    result = EVP_DigestVerifyInit(a2, &v14, v12, 0, a3);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = EVP_DigestSignInit(a2, &v14, v12, 0, a3);
    if (!result)
    {
      return result;
    }
  }

  if (*(v9 + 24) != 1)
  {
    return 1;
  }

  result = EVP_PKEY_CTX_set_rsa_padding(v14);
  if (result)
  {
    result = EVP_PKEY_CTX_set_rsa_pss_saltlen(v14);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t do_sigver_init(uint64_t a1, void *a2, const EVP_MD *a3, ENGINE *a4, uint64_t a5, int a6)
{
  if (!*(a1 + 16))
  {
    result = EVP_PKEY_CTX_new(a5, a4);
    *(a1 + 16) = result;
    if (!result)
    {
      return result;
    }
  }

  CRYPTO_once(&md_pctx_ops_once, md_pctx_ops_init);
  *(a1 + 24) = &md_pctx_ops_storage;
  v12 = *(a1 + 16);
  if (a6 == 1)
  {
    result = EVP_PKEY_verify_init(v12);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = EVP_PKEY_sign_init(v12);
    if (!result)
    {
      return result;
    }
  }

  if (!a3)
  {
    v14 = 56;
    if (!a6)
    {
      v14 = 40;
    }

    if (*(**(a1 + 16) + v14))
    {
      ERR_put_error(6, 0, 119, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/digestsign/digestsign.c.inc", 109);
      return 0;
    }

    goto LABEL_18;
  }

  result = EVP_PKEY_CTX_set_signature_md(*(a1 + 16));
  if (result)
  {
    v13 = 56;
    if (!a6)
    {
      v13 = 40;
    }

    if (!*(**(a1 + 16) + v13) || (result = EVP_DigestInit_ex(a1, a3, a4), result))
    {
LABEL_18:
      if (a2)
      {
        *a2 = *(a1 + 16);
      }

      return 1;
    }
  }

  return result;
}

void *EVP_PKEY_CTX_new(uint64_t a1, uint64_t a2)
{
  if (!a1 || (v3 = *(a1 + 16)) == 0)
  {
    ERR_put_error(6, 0, 67, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/evp_ctx.c", 116);
    return 0;
  }

  v4 = *(v3 + 16);
  if (!v4)
  {
    ERR_put_error(6, 0, 128, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/evp_ctx.c", 122);
    ERR_add_error_dataf("algorithm %d", v6, v7, v8, v9, v10, v11, v12, **(a1 + 16));
    return 0;
  }

  return evp_pkey_ctx_new(a1, a2, v4);
}

void *evp_pkey_ctx_new(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v6 = OPENSSL_zalloc(0x30uLL);
  v7 = v6;
  if (v6)
  {
    *v6 = a3;
    v6[1] = a2;
    *(v6 + 8) = 0;
    if (a1)
    {
      EVP_PKEY_up_ref(a1);
      v7[2] = a1;
    }

    v8 = *(a3 + 8);
    if (v8 && v8(v7) <= 0)
    {
      EVP_PKEY_free(v7[2]);
      OPENSSL_free(v7);
      return 0;
    }
  }

  return v7;
}

uint64_t bssl::ssl_check_leaf_certificate(uint64_t a1, ssl_st *a2)
{
  if (bssl::ssl_protocol_version(*a1, a2) >= 0x304)
  {
    bssl::ssl_check_leaf_certificate();
  }

  v4 = *(*(a1 + 1568) + 24);
  if ((bssl::ssl_cipher_auth_mask_for_key(a2, 1) & v4) != 0)
  {
    if (EVP_PKEY_id(a2) != 408)
    {
      return 1;
    }

    v5 = EVP_PKEY_get0_EC_KEY(a2);
    LOWORD(v11) = -21846;
    v6 = EC_KEY_get0_group(v5);
    curve_name = EC_GROUP_get_curve_name(v6);
    if (bssl::ssl_nid_to_group_id(&v11, curve_name) && bssl::tls1_check_group_id(a1, v11) && EC_KEY_get_conv_form(v5) == POINT_CONVERSION_UNCOMPRESSED)
    {
      return 1;
    }

    v9 = 107;
    v10 = 616;
  }

  else
  {
    v9 = 241;
    v10 = 604;
  }

  ERR_put_error(16, 0, v9, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_cert.cc", v10);
  return 0;
}

uint64_t bssl::ssl_cipher_auth_mask_for_key(bssl *this, const evp_pkey_st *a2)
{
  v2 = a2;
  v3 = EVP_PKEY_id(this);
  if (v3 == 949 || v3 == 408)
  {
    if (v2)
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (v2)
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    if (v3 == 6)
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t pkey_rsa_init(uint64_t a1)
{
  result = OPENSSL_zalloc(0x48uLL);
  if (result)
  {
    v3 = result;
    *result = 2048;
    result = 1;
    *(v3 + 16) = 1;
    *(v3 + 40) = -2;
    *(a1 + 40) = v3;
  }

  return result;
}

uint64_t EVP_PKEY_verify_init(uint64_t *a1)
{
  if (a1 && (v1 = *a1) != 0 && (*(v1 + 56) || *(v1 + 64)))
  {
    *(a1 + 8) = 16;
    return 1;
  }

  else
  {
    ERR_put_error(6, 0, 125, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/evp_ctx.c", 240);
    return 0;
  }
}

uint64_t EVP_PKEY_CTX_ctrl(uint64_t *a1, int a2, int a3)
{
  if (!a1 || (v3 = *a1) == 0 || (v4 = *(v3 + 112)) == 0)
  {
    v7 = 101;
    v8 = 192;
LABEL_12:
    ERR_put_error(6, 0, v7, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/evp_ctx.c", v8);
    return 0;
  }

  if (a2 != -1 && *v3 != a2)
  {
    v7 = 125;
    v8 = 196;
    goto LABEL_12;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    v7 = 123;
    v8 = 201;
    goto LABEL_12;
  }

  if ((v5 & a3) == 0)
  {
    v7 = 114;
    v8 = 206;
    goto LABEL_12;
  }

  return v4();
}

uint64_t pkey_rsa_ctrl(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v5 = *(a1 + 40);
  if (a2 <= 4101)
  {
    if (a2 <= 4097)
    {
      if (a2 != 1)
      {
        if (a2 != 2)
        {
          if (a2 == 4097)
          {
            if (a3 > 6 || ((1 << a3) & 0x5A) == 0)
            {
              goto LABEL_11;
            }

            v7 = *(v5 + 24);
            if (a3 == 3 && v7)
            {
              ERR_put_error(6, 0, 115, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_rsa.c", 375);
LABEL_11:
              v8 = 109;
              v9 = 403;
LABEL_57:
              ERR_put_error(6, 0, v8, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_rsa.c", v9);
              return 0;
            }

            if (a3 == 4)
            {
              if ((*(a1 + 32) & 0xC0) == 0)
              {
                goto LABEL_11;
              }
            }

            else
            {
              if (a3 != 6)
              {
LABEL_65:
                *(v5 + 16) = a3;
                return 1;
              }

              if ((*(a1 + 32) & 0x18) == 0)
              {
                goto LABEL_11;
              }
            }

            if (!v7)
            {
              *(v5 + 24) = EVP_sha1();
            }

            goto LABEL_65;
          }

LABEL_42:
          v8 = 101;
          v9 = 512;
          goto LABEL_57;
        }

        goto LABEL_30;
      }

      if (a4 && *(v5 + 16) == 3)
      {
        v8 = 115;
        v9 = 375;
        goto LABEL_57;
      }

      goto LABEL_41;
    }

    if ((a2 - 4099) < 2)
    {
      if (*(v5 + 16) != 6)
      {
        v8 = 116;
        v9 = 420;
        goto LABEL_57;
      }

      if (a2 != 4100)
      {
        if (a3 < -2)
        {
          return 0;
        }

        *(v5 + 40) = a3;
        return 1;
      }

      v12 = *(v5 + 40);
    }

    else
    {
      if (a2 != 4098)
      {
        if (a2 != 4101)
        {
          goto LABEL_42;
        }

        if (a3 <= 255)
        {
          v8 = 112;
          v9 = 435;
          goto LABEL_57;
        }

        *v5 = a3;
        return 1;
      }

      v12 = *(v5 + 16);
    }

    *a4 = v12;
    return 1;
  }

  if (a2 <= 4104)
  {
    if ((a2 - 4103) < 2)
    {
      if (*(v5 + 16) != 4)
      {
        v8 = 115;
        v9 = 452;
        goto LABEL_57;
      }

      if (a2 == 4104)
      {
LABEL_30:
        v11 = *(v5 + 24);
LABEL_31:
        *a4 = v11;
        return 1;
      }

LABEL_41:
      *(v5 + 24) = a4;
      return 1;
    }

    if (a2 != 4102)
    {
      goto LABEL_42;
    }

    if (!a4)
    {
      return 0;
    }

    BN_free(*(v5 + 8));
    *(v5 + 8) = a4;
  }

  else
  {
    if ((a2 - 4105) < 2)
    {
      if ((*(v5 + 16) | 2) != 6)
      {
        v8 = 113;
        v9 = 477;
        goto LABEL_57;
      }

      if (a2 != 4106)
      {
        *(v5 + 32) = a4;
        return 1;
      }

      v11 = *(v5 + 32);
      if (v11)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    if (a2 == 4107)
    {
      if (*(v5 + 16) != 4)
      {
        v8 = 115;
        v9 = 493;
        goto LABEL_57;
      }

      OPENSSL_free(*(v5 + 56));
      v13 = *(a4 + 8);
      *(v5 + 56) = *a4;
      *(v5 + 64) = v13;
    }

    else
    {
      if (a2 != 4108)
      {
        goto LABEL_42;
      }

      if (*(v5 + 16) != 4)
      {
        v8 = 115;
        v9 = 505;
        goto LABEL_57;
      }

      v10 = *(v5 + 64);
      *a4 = *(v5 + 56);
      *(a4 + 8) = v10;
    }
  }

  return 1;
}

BOOL bssl::ssl_nid_to_group_id(bssl *this, unsigned __int16 *a2)
{
  v2 = 504;
  for (i = &word_1A90AF854; ; i += 36)
  {
    v4 = *(i - 1);
    if (v4 == a2)
    {
      break;
    }

    v2 -= 72;
    if (!v2)
    {
      return v4 == a2;
    }
  }

  *this = *i;
  return v4 == a2;
}

BOOL bssl::tls1_check_group_id(bssl **this, const ssl_st *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  if ((a2 == 25497 || a2 == 4588) && bssl::ssl_protocol_version(*this, a2) < 0x304)
  {
    return 0;
  }

  v5 = this[1];
  v6 = *(v5 + 15);
  if (v6)
  {
    v7 = *(v5 + 14);
  }

  else
  {
    v7 = &bssl::kDefaultGroups;
    v6 = 4;
  }

  v8 = 2 * v6 - 2;
  do
  {
    v9 = *v7++;
    result = v9 == v2;
    v10 = v9 == v2 || v8 == 0;
    v8 -= 2;
  }

  while (!v10);
  return result;
}

uint64_t EVP_DigestVerify(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5)
{
  v6 = *(a1 + 16);
  if (*(*v6 + 56))
  {
    if (EVP_DigestVerifyUpdate(a1, a4, a5))
    {

      return EVP_DigestVerifyFinal(a1);
    }

    return 0;
  }

  v8 = *(*v6 + 64);
  if (!v8)
  {
    ERR_put_error(6, 0, 125, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/digestsign/digestsign.c.inc", 255);
    return 0;
  }

  return v8();
}

uint64_t pkey_ec_init(uint64_t a1)
{
  result = OPENSSL_zalloc(0x10uLL);
  if (result)
  {
    *(a1 + 40) = result;
    return 1;
  }

  return result;
}

uint64_t EVP_DigestVerifyUpdate(uint64_t a1, const void *a2, size_t a3)
{
  if (*(**(a1 + 16) + 56))
  {

    return EVP_DigestUpdate(a1, a2, a3);
  }

  else
  {
    ERR_put_error(6, 0, 125, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/digestsign/digestsign.c.inc", 144);
    return 0;
  }
}

uint64_t pkey_ec_ctrl(uint64_t a1, int a2, int nid, EVP_MD *md)
{
  v4 = *(a1 + 40);
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      v9 = EVP_MD_type(md);
      if ((v9 - 672) < 4 || v9 == 64)
      {
        *v4 = md;
        return 1;
      }

      v7 = 111;
      v8 = 177;
LABEL_10:
      ERR_put_error(6, 0, v7, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ec.c", v8);
      return 0;
    }

    if (a2 == 2)
    {
      *&md->type = *v4;
      return 1;
    }

LABEL_9:
    v7 = 101;
    v8 = 202;
    goto LABEL_10;
  }

  if (a2 == 3)
  {
    return 1;
  }

  if (a2 != 4109)
  {
    goto LABEL_9;
  }

  result = EC_GROUP_new_by_curve_name(nid);
  if (!result)
  {
    return result;
  }

  v4[1] = result;
  return 1;
}

EVP_PKEY **EVP_PKEY_CTX_dup(uint64_t a1)
{
  if (!*a1 || !*(*a1 + 16))
  {
    return 0;
  }

  v2 = OPENSSL_zalloc(0x30uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = *a1;
    *(v2 + 8) = *(a1 + 32);
    v4 = *(a1 + 16);
    if (v4)
    {
      EVP_PKEY_up_ref(v4);
      v3[2] = *(a1 + 16);
    }

    v5 = *(a1 + 24);
    if (v5)
    {
      EVP_PKEY_up_ref(v5);
      v3[3] = *(a1 + 24);
    }

    if ((*(*a1 + 16))(v3, a1) <= 0)
    {
      *v3 = 0;
      EVP_PKEY_CTX_free(v3);
      ERR_put_error(6, 0, 6, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/evp_ctx.c", 180);
      return 0;
    }
  }

  return v3;
}

uint64_t pkey_rsa_copy(uint64_t a1, uint64_t a2)
{
  result = OPENSSL_zalloc(0x48uLL);
  if (result)
  {
    v5 = result;
    *result = 2048;
    *(result + 16) = 1;
    *(result + 40) = -2;
    *(a1 + 40) = result;
    v6 = *(a2 + 40);
    *result = *v6;
    v7 = *(v6 + 8);
    if (!v7 || (result = BN_dup(v7), (*(v5 + 8) = result) != 0))
    {
      *(v5 + 16) = *(v6 + 16);
      *(v5 + 24) = *(v6 + 24);
      *(v5 + 40) = *(v6 + 40);
      if (*(v6 + 56))
      {
        OPENSSL_free(*(v5 + 56));
        result = OPENSSL_memdup(*(v6 + 56), *(v6 + 64));
        *(v5 + 56) = result;
        if (!result)
        {
          return result;
        }

        *(v5 + 64) = *(v6 + 64);
      }

      return 1;
    }
  }

  return result;
}

uint64_t pkey_rsa_verify(uint64_t a1, unsigned __int8 *a2, uint64_t a3, char *a4, uint64_t a5)
{
  v10 = *(a1 + 40);
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  v13 = *(v10 + 24);
  if (!v13)
  {
    v22 = 0xAAAAAAAAAAAAAAAALL;
    v17 = EVP_PKEY_size(v11);
    result = setup_tbuf(v10, a1);
    if (!result)
    {
      return result;
    }

    if (RSA_verify_raw(v12, &v22, *(v10 + 48), v17, a2, a3, *(v10 + 16)))
    {
      v18 = v22 == a5;
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      return CRYPTO_memcmp(a4, *(v10 + 48), a5) == 0;
    }

    return 0;
  }

  v14 = *(v10 + 16);
  if (v14 != 6)
  {
    if (v14 == 1)
    {
      v15 = EVP_MD_type(*(v10 + 24));

      return RSA_verify(v15, a4, a5, a2, a3, v12);
    }

    return 0;
  }

  v19 = *(v10 + 32);
  v20 = *(v10 + 40);
  v21 = *(v11 + 8);

  return RSA_verify_pss_mgf1(v21, a4, a5, v13, v19, v20, a2, a3);
}

uint64_t EVP_PKEY_verify(_DWORD *a1)
{
  if (!a1 || !*a1 || (v1 = *(*a1 + 56)) == 0)
  {
    v3 = 125;
    v4 = 250;
LABEL_9:
    ERR_put_error(6, 0, v3, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/evp_ctx.c", v4);
    return 0;
  }

  if (a1[8] != 16)
  {
    v3 = 126;
    v4 = 254;
    goto LABEL_9;
  }

  return v1();
}

uint64_t RSA_public_key_to_bytes(void *a1, void *a2, uint64_t a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = v6;
  v8[2] = v6;
  v8[0] = v6;
  CBB_zero(v8);
  if (CBB_init(v8, 0) && RSA_marshal_public_key(v8, a3) && CBB_finish(v8, a1, a2))
  {
    return 1;
  }

  ERR_put_error(4, 0, 121, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/rsa_extra/rsa_asn1.c", 145);
  CBB_cleanup(v8);
  return 0;
}

uint64_t bn_reduce_once(unint64_t *a1, unint64_t *a2, uint64_t a3, unint64_t *bp, uint64_t num)
{
  if (a1 == a2)
  {
    bn_reduce_once_cold_2();
  }

  v8 = a3 - bn_sub_words(a1, a2, bp, num);
  if ((v8 + 1) >= 2)
  {
    bn_reduce_once_cold_1();
  }

  bn_select_words(a1, v8, a2, a1, num);
  return v8;
}

uint64_t pkey_ec_copy(uint64_t a1, uint64_t a2)
{
  result = OPENSSL_zalloc(0x10uLL);
  if (result)
  {
    *(a1 + 40) = result;
    *result = **(a2 + 40);
    return 1;
  }

  return result;
}

uint64_t RSA_marshal_public_key(uint64_t *a1, uint64_t a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = v4;
  v6[2] = v4;
  v6[0] = v4;
  if (CBB_add_asn1(a1, v6, 0x20000010u) && marshal_integer(v6, *(a2 + 8)) && marshal_integer(v6, *(a2 + 16)) && CBB_flush(a1))
  {
    return 1;
  }

  ERR_put_error(4, 0, 121, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/rsa_extra/rsa_asn1.c", 132);
  return 0;
}

int i2o_ECPublicKey(EC_KEY *a, unsigned __int8 **out)
{
  if (a)
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v7[1] = v4;
    v7[2] = v4;
    v7[0] = v4;
    if (CBB_init(v7, 0) && EC_POINT_point2cbb(v7, *a, *(a + 1), *(a + 7), 0))
    {
      v5 = CBB_finish_i2d(v7, out);
      return v5 & ~(v5 >> 31);
    }

    else
    {
      CBB_cleanup(v7);
      return -1;
    }
  }

  else
  {
    ERR_put_error(15, 0, 67, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/ec_extra/ec_asn1.c", 581);
    return 0;
  }
}

uint64_t BN_marshal_asn1(uint64_t *a1, const BIGNUM *a2)
{
  if (BN_is_negative(a2))
  {
    v4 = 109;
    v5 = 41;
  }

  else
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9[1] = v6;
    v9[2] = v6;
    v9[0] = v6;
    if (CBB_add_asn1(a1, v9, 2u) && ((BN_num_bits(a2) & 7) != 0 || CBB_add_u8(v9, 0)))
    {
      v7 = BN_num_bytes(a2);
      if (BN_bn2cbb_padded(v9, v7, a2))
      {
        if (CBB_flush(a1))
        {
          return 1;
        }
      }
    }

    v4 = 118;
    v5 = 52;
  }

  ERR_put_error(3, 0, v4, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/bn_extra/bn_asn1.c", v5);
  return 0;
}

int ECDSA_verify(int type, const unsigned __int8 *dgst, int dgstlen, const unsigned __int8 *sig, int siglen, EC_KEY *eckey)
{
  out = 0;
  v7 = i2o_ECPublicKey(eckey, &out);
  if (!out)
  {
    if (g_boringssl_log)
    {
      result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      ECDSA_verify_cold_4();
    }

    return 0;
  }

  v8 = v7;
  v9 = EC_KEY_get0_group(eckey);
  curve_name = EC_GROUP_get_curve_name(v9);
  cc_curve_parameters = boringssl_ecdsa_get_cc_curve_parameters(curve_name);
  if (!cc_curve_parameters)
  {
    goto LABEL_17;
  }

  v12 = cc_curve_parameters;
  v13 = malloc_type_malloc(24 * *cc_curve_parameters + 16, 0x60040B37CB4BBuLL);
  if (!v13)
  {
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      ECDSA_verify_cold_3();
    }

LABEL_17:
    if (out)
    {
      cc_clear();
      OPENSSL_free(out);
    }

    return 0;
  }

  v14 = v13;
  if (MEMORY[0x1AC57E2E0](v12, v8, out, v13))
  {
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      ECDSA_verify_cold_1();
    }

    if (out)
    {
      cc_clear();
      OPENSSL_free(out);
    }

    free(v14);
    return 0;
  }

  if (ccec_verify())
  {
    v16 = g_boringssl_log == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16 && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
  {
    ECDSA_verify_cold_2();
  }

  if (out)
  {
    cc_clear();
    OPENSSL_free(out);
  }

  free(v14);
  return 0;
}

uint64_t marshal_integer(uint64_t *a1, const BIGNUM *a2)
{
  if (a2)
  {

    return BN_marshal_asn1(a1, a2);
  }

  else
  {
    ERR_put_error(4, a2, 144, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/rsa_extra/rsa_asn1.c", 84);
    return 0;
  }
}

uint64_t marshal_integer_0(uint64_t *a1, const BIGNUM *a2)
{
  if (a2)
  {

    return BN_marshal_asn1(a1, a2);
  }

  else
  {
    ERR_put_error(10, a2, 67, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/dsa/dsa_asn1.c", 143);
    return 0;
  }
}

uint64_t BN_bn2cbb_padded(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  result = CBB_add_space(a1, &v6, a2);
  if (result)
  {
    return BN_bn2bin_padded(v6, a2, a3) != 0;
  }

  return result;
}

uint64_t EC_POINT_point2cbb(uint64_t a1, EC_GROUP *a2, EC_POINT *a3, point_conversion_form_t form, BN_CTX *a5)
{
  result = EC_POINT_point2oct(a2, a3, form, 0, 0, a5);
  if (result)
  {
    v11 = result;
    buf = 0xAAAAAAAAAAAAAAAALL;
    result = CBB_add_space(a1, &buf, result);
    if (result)
    {
      return EC_POINT_point2oct(a2, a3, form, buf, v11, a5) == v11;
    }
  }

  return result;
}

uint64_t BN_bn2bin_padded(char *a1, unint64_t a2, uint64_t a3)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  if (a2 < 8 * v5)
  {
    v6 = 0;
    v7 = a2 - 8 * v5;
    v8 = &v4[a2];
    do
    {
      v9 = *v8++;
      v6 |= v9;
    }

    while (!__CFADD__(v7++, 1));
    if (v6)
    {
      return 0;
    }
  }

  bn_words_to_big_endian(a1, a2, v4, v5);
  return 1;
}

size_t EC_POINT_point2oct(const EC_GROUP *a1, const EC_POINT *a2, point_conversion_form_t form, unsigned __int8 *buf, size_t len, BN_CTX *a6)
{
  if (EC_GROUP_cmp(a1, *a2, 0))
  {
    v11 = 106;
    v12 = 215;
LABEL_3:
    ERR_put_error(15, 0, v11, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/oct.c.inc", v12);
    return 0;
  }

  if (buf)
  {
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v15[7] = v14;
    v15[8] = v14;
    v15[5] = v14;
    v15[6] = v14;
    v15[3] = v14;
    v15[4] = v14;
    v15[1] = v14;
    v15[2] = v14;
    v15[0] = v14;
    if (ec_jacobian_to_affine(a1, v15, a2 + 8))
    {
      return ec_point_to_bytes(a1, v15, form, buf, len);
    }

    return 0;
  }

  if (ec_GFp_simple_is_at_infinity(a1, a2 + 8))
  {
    v11 = 119;
    v12 = 222;
    goto LABEL_3;
  }

  return ec_point_byte_len(a1, form);
}

void bn_words_to_big_endian(char *a1, unint64_t a2, char *a3, uint64_t a4)
{
  v4 = 8 * a4;
  if (a2 >= 8 * a4)
  {
    v10 = 1;
  }

  else
  {
    v5 = 0;
    v6 = a2 - v4;
    v7 = &a3[a2];
    do
    {
      v8 = *v7++;
      v5 |= v8;
    }

    while (!__CFADD__(v6++, 1));
    v10 = v5 == 0;
  }

  if (!v10)
  {
    bn_words_to_big_endian_cold_1();
  }

  if (v4 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = 8 * a4;
  }

  if (v11)
  {
    v12 = &a1[a2 - 1];
    v13 = v11;
    do
    {
      v14 = *a3++;
      *v12-- = v14;
      --v13;
    }

    while (v13);
  }

  if (a2 > v4)
  {
    v15 = a2 - v11;

    bzero(a1, v15);
  }
}

uint64_t ec_felem_non_zero_mask(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 328);
  if (v2 < 1)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = *a2++;
    v3 |= v4;
    --v2;
  }

  while (v2);
  if (v3)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

uint64_t ec_point_byte_len(uint64_t a1, int a2)
{
  if (a2 == 2 || a2 == 4)
  {
    v3 = BN_num_bytes((a1 + 320));
    v4 = v3;
    if (a2 != 4)
    {
      v4 = 0;
    }

    return v4 + v3 + 1;
  }

  else
  {
    ERR_put_error(15, 0, 111, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/oct.c.inc", 79);
    return 0;
  }
}

uint64_t ec_GFp_nistp256_point_get_affine_coordinates(uint64_t a1, __int128 *a2, _OWORD *a3, _OWORD *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  if (ec_GFp_simple_is_at_infinity(a1, a2))
  {
    ERR_put_error(15, 0, 119, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/p256.c.inc", 421);
    result = 0;
  }

  else
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v24[0] = v8;
    v24[1] = v8;
    v9 = a2[10];
    v25[0] = a2[9];
    v25[1] = v9;
    v33 = v8;
    v34 = v8;
    v32[0] = v8;
    v32[1] = v8;
    v31[0] = v8;
    v31[1] = v8;
    v30[0] = v8;
    v30[1] = v8;
    v29[0] = v8;
    v29[1] = v8;
    v28[0] = v8;
    v28[1] = v8;
    v27[0] = v8;
    v27[1] = v8;
    fiat_p256_square(&v33, v25);
    fiat_p256_mul(&v33, &v33, v25);
    fiat_p256_square(v32, &v33);
    fiat_p256_mul(v32, v32, v25);
    fiat_p256_square(v31, v32);
    v10 = 2;
    do
    {
      fiat_p256_square(v31, v31);
      --v10;
    }

    while (v10);
    fiat_p256_mul(v31, v31, v32);
    fiat_p256_square(v30, v31);
    v11 = 5;
    do
    {
      fiat_p256_square(v30, v30);
      --v11;
    }

    while (v11);
    fiat_p256_mul(v30, v30, v31);
    fiat_p256_square(v29, v30);
    v12 = 2;
    do
    {
      fiat_p256_square(v29, v29);
      --v12;
    }

    while (v12);
    fiat_p256_mul(v29, v29, v32);
    fiat_p256_square(v28, v29);
    v13 = 14;
    do
    {
      fiat_p256_square(v28, v28);
      --v13;
    }

    while (v13);
    fiat_p256_mul(v28, v28, v29);
    fiat_p256_square(v27, v28);
    fiat_p256_square(v27, v27);
    fiat_p256_mul(v27, v27, &v33);
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v26[0] = v14;
    v26[1] = v14;
    fiat_p256_square(v26, v27);
    v15 = 31;
    do
    {
      fiat_p256_square(v26, v26);
      --v15;
    }

    while (v15);
    fiat_p256_mul(v26, v26, v25);
    v16 = 128;
    do
    {
      fiat_p256_square(v26, v26);
      --v16;
    }

    while (v16);
    fiat_p256_mul(v26, v26, v27);
    v17 = 32;
    do
    {
      fiat_p256_square(v26, v26);
      --v17;
    }

    while (v17);
    fiat_p256_mul(v26, v26, v27);
    v18 = 30;
    do
    {
      fiat_p256_square(v26, v26);
      --v18;
    }

    while (v18);
    fiat_p256_mul(v26, v26, v28);
    fiat_p256_square(v26, v26);
    fiat_p256_square(v24, v26);
    if (a3)
    {
      v19 = a2[1];
      v33 = *a2;
      v34 = v19;
      fiat_p256_mul(&v33, &v33, v24);
      v20 = v34;
      *a3 = v33;
      a3[1] = v20;
    }

    if (a4)
    {
      v21 = *(a2 + 88);
      v33 = *(a2 + 72);
      v34 = v21;
      fiat_p256_square(v24, v24);
      fiat_p256_mul(&v33, &v33, v25);
      fiat_p256_mul(&v33, &v33, v24);
      v22 = v34;
      *a4 = v33;
      a4[1] = v22;
    }

    result = 1;
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *fiat_p256_square(uint64_t *result, unint64_t *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v5 = *a2;
  v4 = a2[1];
  v6 = (*a2 * v2) >> 64;
  v7 = *a2 * v2;
  v8 = (*a2 * v3) >> 64;
  v9 = *a2 * v3;
  v10 = (v5 * v4) >> 64;
  v11 = v5 * v4;
  v12 = v5 * v5;
  v13 = (v5 * v5) >> 64;
  v14 = (__PAIR128__(v4, v5) * v5) >> 64;
  v15 = v10 + __CFADD__(v13, v5 * v4) + v9;
  v16 = v8 + (__CFADD__(__CFADD__(v13, v5 * v4), v9) | __CFADD__(v10, __CFADD__(v13, v5 * v4) + v9)) + v7;
  if (__CFADD__(__CFADD__(__CFADD__(v13, v5 * v4), v9) | __CFADD__(v10, __CFADD__(v13, v5 * v4) + v9), v7) | __CFADD__(v8, (__CFADD__(__CFADD__(v13, v5 * v4), v9) | __CFADD__(v10, __CFADD__(v13, v5 * v4) + v9)) + v7))
  {
    v17 = v6 + 1;
  }

  else
  {
    v17 = v6;
  }

  v18 = (v12 * 0xFFFFFFFF00000001) >> 64;
  v19 = 0xFFFFFFFFLL * v12;
  v20 = (v12 * 0xFFFFFFFFFFFFFFFFLL) >> 64;
  v21 = -(v5 * v5);
  v22 = v11 + __CFADD__(v21, v12) + v13;
  v23 = (__CFADD__(__CFADD__(v21, v12), v14) | __CFADD__((__PAIR128__(0xFFFFFFFFLL, -1) * v12) >> 64, __CFADD__(v21, v12) + v14)) + v15;
  v24 = __CFADD__(__CFADD__(__CFADD__(v21, v12), v14) | __CFADD__((__PAIR128__(0xFFFFFFFFLL, -1) * v12) >> 64, __CFADD__(v21, v12) + v14), v15);
  v72 = __CFADD__(v16, 0xFFFFFFFF00000001 * v12);
  v25 = v16 - 0xFFFFFFFFLL * v12;
  v26 = v72;
  v72 = __CFADD__(v18, v17);
  v27 = v18 + v17;
  v28 = v72;
  v29 = (v2 * v4) >> 64;
  v30 = v2 * v4;
  v31 = (v3 * v4) >> 64;
  v32 = v3 * v4;
  v33 = v4 * v4;
  v34 = __PAIR128__(v3 * v4, v10) + v4 * v4;
  v36 = __CFADD__(__CFADD__(v10, v4 * v4), v3 * v4) | __CFADD__((v4 * v4) >> 64, __CFADD__(v10, v4 * v4) + v3 * v4);
  v35 = v31 + v36 + v2 * v4;
  if (__CFADD__(v36, v2 * v4) | __CFADD__(v31, v36 + v2 * v4))
  {
    v37 = v29 + 1;
  }

  else
  {
    v37 = (v2 * v4) >> 64;
  }

  v72 = __CFADD__(v20, v19);
  v38 = (v12 * 0xFFFFFFFFFFFFFFFFLL) >> 64;
  v39 = 0xFFFFFFFFLL * v12;
  v40 = (v12 * 0xFFFFFFFFuLL) >> 64;
  v41 = v22 + v20 + v19;
  v72 = __CFADD__(v72, v23) | __CFADD__(v40, (__PAIR128__(v23, v38) + v39) >> 64);
  v42 = v40 + ((__PAIR128__(v23, v38) + v39) >> 64);
  v44 = v72;
  v72 = __CFADD__(v72, v25);
  v43 = v44 + v25;
  v72 |= __CFADD__(v24, v43);
  v43 += v24;
  v46 = v72;
  v72 = __CFADD__(v72, v27);
  v45 = v46 + v27;
  v72 |= __CFADD__(v26, v45);
  v45 += v26;
  v48 = v72;
  v72 = __CFADD__(v72, v37);
  v47 = v48 + v37;
  v72 |= __CFADD__(v28, v47);
  v47 += v28;
  v49 = v72;
  v50 = __PAIR128__(v10, v41) + __PAIR128__(v33, v11);
  v51 = ((__PAIR128__(v10, v41) + __PAIR128__(v33, v11)) >> 64) + v42;
  v53 = (__CFADD__(__CFADD__(v41, v11), v34) | __CFADD__(v42, __CFADD__(v41, v11) + v34)) + *(&v34 + 1);
  v72 = __CFADD__(__CFADD__(__CFADD__(v41, v11), v34) | __CFADD__(v42, __CFADD__(v41, v11) + v34), *(&v34 + 1)) | __CFADD__(v43, v53);
  v52 = v43 + v53;
  v55 = v72;
  v72 = __CFADD__(v72, v35);
  v54 = v55 + v35;
  v72 |= __CFADD__(v45, v54);
  v54 += v45;
  v56 = v72 + v47;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0));
  v58 = 0xFFFFFFFF00000001 * (v41 + v11);
  v59 = (__PAIR128__(0xFFFFFFFFLL, -1) * (v41 + v11)) >> 64;
  v60 = v42 + __CFADD__(-v50, v50) + *(&v50 + 1);
  v61 = (__CFADD__(__CFADD__(-v50, v50), v51) | __CFADD__(v59, __CFADD__(-v50, v50) + v51)) + v52;
  v62 = __CFADD__(__CFADD__(__CFADD__(-v50, v50), v51) | __CFADD__(v59, __CFADD__(-v50, v50) + v51), v52);
  v63 = (v50 * 0xFFFFFFFFFFFFFFFFLL) >> 64;
  v64 = (v50 * 0xFFFFFFFF00000001) >> 64;
  v65 = (v50 * 0xFFFFFFFFuLL) >> 64;
  v72 = __CFADD__(__CFADD__(v63, 0xFFFFFFFF * v50), v61) | __CFADD__(v65, (__PAIR128__(v61, v63) + (0xFFFFFFFF * v50)) >> 64);
  v66 = v65 + ((__PAIR128__(v61, v63) + (0xFFFFFFFF * v50)) >> 64);
  v67 = v62 + v72 + v58;
  if (__CFADD__(v72, v58) | __CFADD__(v62, v72 + v58))
  {
    v68 = 1;
  }

  else
  {
    v68 = 0;
  }

  v72 = __CFADD__(v67, v54);
  v69 = v67 + v54;
  v70 = v68 + v72 + v64;
  if (__CFADD__(v72, v64) | __CFADD__(v68, v72 + v64))
  {
    v71 = 1;
  }

  else
  {
    v71 = 0;
  }

  v72 = __CFADD__(v70, v56);
  v73 = v70 + v56;
  if (v72)
  {
    v74 = v71 + 1;
  }

  else
  {
    v74 = v71;
  }

  v75 = v60 + v63 + 0xFFFFFFFF * v50;
  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0), StatusReg);
  v76 = v49 + v72 + v74;
  v77 = (v2 * v3) >> 64;
  v78 = v2 * v3;
  v79 = (v3 * v3) >> 64;
  v80 = v3 * v3;
  v81 = v8 + v32;
  v72 = __CFADD__(__CFADD__(v8, v32), v80);
  v82 = __CFADD__(v8, v32) + v80;
  v72 |= __CFADD__(v31, v82);
  v82 += v31;
  v83 = v79 + v72 + v78;
  if (__CFADD__(v72, v78) | __CFADD__(v79, v72 + v78))
  {
    v84 = v77 + 1;
  }

  else
  {
    v84 = v77;
  }

  v85 = __PAIR128__(v8, v75) + __PAIR128__(v32, v9);
  v86 = ((__PAIR128__(v8, v75) + __PAIR128__(v32, v9)) >> 64) + v66;
  v88 = (__CFADD__(__CFADD__(v75, v9), v81) | __CFADD__(v66, __CFADD__(v75, v9) + v81)) + v82;
  v72 = __CFADD__(__CFADD__(__CFADD__(v75, v9), v81) | __CFADD__(v66, __CFADD__(v75, v9) + v81), v82) | __CFADD__(v69, v88);
  v87 = v69 + v88;
  v90 = v72 + v83;
  v72 = __CFADD__(v72, v83) | __CFADD__(v73, v90);
  v89 = v73 + v90;
  v91 = (v85 * 0xFFFFFFFFFFFFFFFFLL) >> 64;
  v92 = v84 + v72 + v76;
  v93 = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0));
  v94 = 0xFFFFFFFF * v85;
  v95 = (__PAIR128__(0xFFFFFFFFLL, -1) * v85) >> 64;
  v72 = __CFADD__(__CFADD__(__CFADD__(-v85, v85), v86) | __CFADD__(v95, __CFADD__(-v85, v85) + v86), v87);
  v96 = (__CFADD__(__CFADD__(-v85, v85), v86) | __CFADD__(v95, __CFADD__(-v85, v85) + v86)) + v87;
  v97 = v72;
  v72 = __CFADD__(v91, v94);
  v98 = v91 + v94;
  v99 = (v85 * 0xFFFFFFFF00000001) >> 64;
  v100 = (v85 * 0xFFFFFFFFuLL) >> 64;
  v102 = v72;
  v72 = __CFADD__(v72, v96);
  v101 = v102 + v96;
  v72 |= __CFADD__(v100, v101);
  v101 += v100;
  v103 = v97 + v72 - 0xFFFFFFFF * v85;
  if (__CFADD__(v72, 0xFFFFFFFF00000001 * v85) | __CFADD__(v97, v72 - 0xFFFFFFFF * v85))
  {
    v104 = 1;
  }

  else
  {
    v104 = 0;
  }

  v72 = __CFADD__(v103, v89);
  v105 = v103 + v89;
  v106 = v104 + v72 + v99;
  if (__CFADD__(v72, v99) | __CFADD__(v104, v72 + v99))
  {
    v107 = 1;
  }

  else
  {
    v107 = 0;
  }

  v108 = __CFADD__(v106, v92);
  v109 = v106 + v92;
  if (v108)
  {
    ++v107;
  }

  v110 = v66 + __CFADD__(-v85, v85) + *(&v85 + 1) + v98;
  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0), v93);
  if (v108)
  {
    v111 = v107 + 1;
  }

  else
  {
    v111 = v107;
  }

  v112 = (v2 * v2) >> 64;
  v113 = v2 * v2;
  v114 = v6 + v30;
  v72 = __CFADD__(__CFADD__(v6, v30), v78) | __CFADD__(v29, __CFADD__(v6, v30) + v78);
  v115 = v29 + __CFADD__(v6, v30) + v78;
  v117 = v72;
  v72 = __CFADD__(v72, v113);
  v116 = v117 + v113;
  v72 |= __CFADD__(v77, v116);
  v116 += v77;
  if (v72)
  {
    ++v112;
  }

  v118 = __PAIR128__(v6, v110) + __PAIR128__(v30, v7);
  v119 = ((__PAIR128__(v6, v110) + __PAIR128__(v30, v7)) >> 64) + v101;
  v121 = (__CFADD__(__CFADD__(v110, v7), v114) | __CFADD__(v101, __CFADD__(v110, v7) + v114)) + v115;
  v72 = __CFADD__(__CFADD__(__CFADD__(v110, v7), v114) | __CFADD__(v101, __CFADD__(v110, v7) + v114), v115) | __CFADD__(v105, v121);
  v120 = v105 + v121;
  v123 = v72;
  v72 = __CFADD__(v72, v116);
  v122 = v123 + v116;
  v72 |= __CFADD__(v109, v122);
  v122 += v109;
  v124 = v112 + v72 + v111;
  v125 = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0));
  v126 = v101 + __CFADD__(-v118, v118) + *(&v118 + 1);
  v127 = (__CFADD__(__CFADD__(-v118, v118), v119) | __CFADD__((__PAIR128__(0xFFFFFFFFLL, -1) * v118) >> 64, __CFADD__(-v118, v118) + v119)) + v120;
  v128 = (v118 * 0xFFFFFFFF00000001) >> 64;
  v129 = (v118 * 0xFFFFFFFFuLL) >> 64;
  v72 = __CFADD__(__CFADD__((v118 * 0xFFFFFFFFFFFFFFFFLL) >> 64, 0xFFFFFFFF * v118), v127);
  v130 = __CFADD__((v118 * 0xFFFFFFFFFFFFFFFFLL) >> 64, 0xFFFFFFFF * v118) + v127;
  v72 |= __CFADD__(v129, v130);
  v130 += v129;
  v132 = v72 - 0xFFFFFFFF * v118;
  v131 = *(&v118 + 1) + v132;
  if (__CFADD__(v72, 0xFFFFFFFF00000001 * v118) | __CFADD__(*(&v118 + 1), v132))
  {
    v133 = 1;
  }

  else
  {
    v133 = 0;
  }

  v135 = v131 + v122;
  v72 = __CFADD__(__CFADD__(v131, v122), v128) | __CFADD__(v133, (__PAIR128__(v128, v131) + v122) >> 64);
  v134 = v133 + ((__PAIR128__(v128, v131) + v122) >> 64);
  v136 = v72;
  v137 = __CFADD__(v134, v124);
  v138 = v134 + v124;
  if (v137)
  {
    ++v136;
  }

  v139 = v126 + ((__PAIR128__(0xFFFFFFFFLL, -1) * v118) >> 64);
  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0), v125);
  if (v137)
  {
    ++v136;
  }

  v140 = v130 - __PAIR128__(0xFFFFFFFFLL * v118, (1 - __CFADD__(v139, 1)));
  v141 = v138 - -((v135 - __PAIR128__(v124, (1 - (__CFADD__(v140, 0xFFFFFFFF00000001) + BYTE8(v140))))) >> 64);
  v142 = -(v136 + (v136 < (1 - (__CFADD__(v141, 0xFFFFFFFFLL) + ((v138 - __PAIR128__(v125, -((v135 - __PAIR128__(v124, (1 - (__CFADD__(v140, 0xFFFFFFFF00000001) + BYTE8(v140))))) >> 64))) >> 64)))));
  v143 = v142 == 0;
  if (v142)
  {
    v144 = 0;
  }

  else
  {
    v144 = -1;
  }

  if (v143)
  {
    v145 = 0;
  }

  else
  {
    v145 = -1;
  }

  *result = v144 & (v139 + 1) | v145 & v139;
  result[1] = v144 & (v140 - 0xFFFFFFFF) | v145 & v130;
  result[2] = v144 & (v135 - (1 - (__CFADD__(v140, 0xFFFFFFFF00000001) + BYTE8(v140)))) | v145 & v135;
  result[3] = v144 & (v141 + 0xFFFFFFFF) | v145 & v138;
  return result;
}

uint64_t *fiat_p256_mul(uint64_t *result, unint64_t *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v6 = a3[2];
  v5 = a3[3];
  v7 = v5 * *a2;
  v8 = v6 * *a2;
  v9 = (v6 * *a2) >> 64;
  v11 = *a3;
  v10 = a3[1];
  v12 = (v10 * *a2) >> 64;
  v13 = v10 * *a2;
  v14 = (*a3 * *a2) >> 64;
  v15 = *a3 * *a2;
  v16 = 0xFFFFFFFF00000001 * v15;
  v17 = (v15 * 0xFFFFFFFFuLL) >> 64;
  v18 = (__PAIR128__(0xFFFFFFFFLL, -1) * v15) >> 64;
  if (__CFADD__((v15 * 0xFFFFFFFFFFFFFFFFLL) >> 64, 0xFFFFFFFF * v15))
  {
    ++v17;
  }

  v19 = v14 + v13;
  v31 = __CFADD__(__CFADD__(v14, v13), v12) | __CFADD__(v8, __CFADD__(v14, v13) + v12);
  v20 = v8 + __CFADD__(v14, v13) + v12;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0));
  v22 = v9 + v7 + v31 - 0xFFFFFFFF * v15;
  v23 = v13 + __CFADD__(-(v11 * v3), v15) + v14 + v18;
  v24 = v17 + (__CFADD__(__CFADD__(-(v11 * v3), v15), v19) | __CFADD__(v18, __CFADD__(-(v11 * v3), v15) + v19)) + v20;
  v25 = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0));
  v26 = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0));
  v27 = (v11 * v4) >> 64;
  v28 = v6 * v4 + __CFADD__(v27, v10 * v4) + ((v10 * v4) >> 64);
  v29 = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0));
  v30 = __PAIR128__(v10 * v4, v23) + v11 * v4;
  v31 = __CFADD__(__CFADD__(v23, v11 * v4), (__PAIR128__(v10, v11) * v4) >> 64) | __CFADD__(v24, __CFADD__(v23, v11 * v4) + ((__PAIR128__(v10, v11) * v4) >> 64));
  v32 = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0));
  if (v31)
  {
    v33 = v28 + 1;
  }

  else
  {
    v33 = v6 * v4 + __CFADD__(v27, v10 * v4) + ((v10 * v4) >> 64);
  }

  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0), v26);
  v34 = v22 + (__CFADD__(__CFADD__(v23, v11 * v4), (__PAIR128__(v10, v11) * v4) >> 64) | __CFADD__(v24, __CFADD__(v23, v11 * v4) + ((__PAIR128__(v10, v11) * v4) >> 64))) + v33;
  v35 = (v5 * v4) >> 64;
  v36 = v5 * v4;
  v37 = (v6 * v4) >> 64;
  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0), v29);
  v40 = v31;
  v31 = __CFADD__(v31, v37);
  v39 = v40 + v37;
  v38 = v31 | __CFADD__(v36, v39);
  v39 += v36;
  if (v38)
  {
    v41 = v35 + 1;
  }

  else
  {
    v41 = v35;
  }

  v42 = (v5 * v3) >> 64;
  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0), StatusReg);
  v45 = v38 + v9;
  v43 = __CFADD__(v38, v9) | __CFADD__(v7, v45);
  v44 = v7 + v45;
  if (v43)
  {
    v46 = v42 + 1;
  }

  else
  {
    v46 = v42;
  }

  v47 = (v15 * 0xFFFFFFFF00000001) >> 64;
  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0), v25);
  if (v43)
  {
    v48 = v22 + 1;
  }

  else
  {
    v48 = v22;
  }

  v50 = __CFADD__(v43, v44) | __CFADD__(v16, v43 + v44);
  v49 = v46 + v50 + v47;
  v53 = __CFADD__(v50, v47) | __CFADD__(v46, v50 + v47);
  v51 = __CFADD__(v53, v41);
  v52 = v53 + v41;
  v54 = __CFADD__(v53, v41);
  v55 = *(&v30 + 1) + v24;
  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0), v32);
  v57 = __CFADD__(v51, v28) | __CFADD__(v48, v51 + v28);
  v31 = __CFADD__(v57, v39);
  v56 = v57 + v39;
  v31 |= __CFADD__(v49, v56);
  v56 += v49;
  v58 = v31 + v52;
  v59 = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0));
  v60 = (v30 * 0xFFFFFFFFFFFFFFFFLL) >> 64;
  v61 = (__PAIR128__(0xFFFFFFFFLL, -1) * v30) >> 64;
  v62 = v24 + __CFADD__(-v30, v30) + *(&v30 + 1);
  v31 = __CFADD__(__CFADD__(__CFADD__(-v30, v30), v55) | __CFADD__(v61, __CFADD__(-v30, v30) + v55), v34);
  v63 = (__CFADD__(__CFADD__(-v30, v30), v55) | __CFADD__(v61, __CFADD__(-v30, v30) + v55)) + v34;
  v64 = v31;
  v65 = (v30 * 0xFFFFFFFF00000001) >> 64;
  v66 = (v30 * 0xFFFFFFFFuLL) >> 64;
  v31 = __CFADD__(__CFADD__(v60, 0xFFFFFFFF * v30), v63) | __CFADD__(v66, (__PAIR128__(v63, v60) + (0xFFFFFFFF * v30)) >> 64);
  v67 = v66 + ((__PAIR128__(v63, v60) + (0xFFFFFFFF * v30)) >> 64);
  v68 = v64 + v31 - 0xFFFFFFFF * v30;
  if (__CFADD__(v31, 0xFFFFFFFF00000001 * v30) | __CFADD__(v64, v31 - 0xFFFFFFFF * v30))
  {
    v69 = 1;
  }

  else
  {
    v69 = 0;
  }

  v31 = __CFADD__(v68, v56);
  v70 = v68 + v56;
  v71 = v69 + v31 + v65;
  if (__CFADD__(v31, v65) | __CFADD__(v69, v31 + v65))
  {
    v72 = 1;
  }

  else
  {
    v72 = 0;
  }

  v73 = __CFADD__(v71, v58);
  v74 = v71 + v58;
  if (v73)
  {
    v75 = v72 + 1;
  }

  else
  {
    v75 = v72;
  }

  v76 = v62 + v60 + 0xFFFFFFFF * v30;
  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0), v59);
  v77 = v54 + v73 + v75;
  v79 = a2[2];
  v78 = a2[3];
  v80 = (v5 * v79) >> 64;
  v81 = v5 * v79;
  v82 = (v6 * v79) >> 64;
  v83 = v6 * v79;
  v84 = (v10 * v79) >> 64;
  v85 = v10 * v79;
  v86 = v11 * v79;
  v87 = (v11 * v79) >> 64;
  v88 = v87 + v85;
  v31 = __CFADD__(__CFADD__(v87, v85), v84) | __CFADD__(v83, __CFADD__(v87, v85) + v84);
  v89 = v83 + __CFADD__(v87, v85) + v84;
  v91 = v31 + v82;
  v31 = __CFADD__(v31, v82) | __CFADD__(v81, v91);
  v90 = v81 + v91;
  if (v31)
  {
    ++v80;
  }

  v92 = __PAIR128__(v87, v76) + __PAIR128__(v85, v86);
  v93 = ((__PAIR128__(v87, v76) + __PAIR128__(v85, v86)) >> 64) + v67;
  v95 = (__CFADD__(__CFADD__(v76, v86), v88) | __CFADD__(v67, __CFADD__(v76, v86) + v88)) + v89;
  v31 = __CFADD__(__CFADD__(__CFADD__(v76, v86), v88) | __CFADD__(v67, __CFADD__(v76, v86) + v88), v89) | __CFADD__(v70, v95);
  v94 = v70 + v95;
  v97 = v31 + v90;
  v31 = __CFADD__(v31, v90) | __CFADD__(v74, v97);
  v96 = v74 + v97;
  v98 = v80 + v31 + v77;
  v99 = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0));
  v100 = 0xFFFFFFFF00000001 * (v76 + v86);
  v101 = v67 + __CFADD__(-v92, v92) + *(&v92 + 1);
  v102 = (__CFADD__(__CFADD__(-v92, v92), v93) | __CFADD__((__PAIR128__(0xFFFFFFFFLL, -1) * (v76 + v86)) >> 64, __CFADD__(-v92, v92) + v93)) + v94;
  v31 = __CFADD__(((v76 + v86) * 0xFFFFFFFFFFFFFFFFLL) >> 64, 0xFFFFFFFF * (v76 + v86));
  v103 = (__PAIR128__(0xFFFFFFFFLL, -1) * (v76 + v86)) >> 64;
  v104 = ((v76 + v86) * 0xFFFFFFFF00000001) >> 64;
  v105 = ((v76 + v86) * 0xFFFFFFFFuLL) >> 64;
  v107 = v31;
  v31 = __CFADD__(v31, v102);
  v106 = v107 + v102;
  v31 |= __CFADD__(v105, v106);
  v106 += v105;
  v108 = *(&v92 + 1) + v31 + v100;
  if (__CFADD__(v31, v100) | __CFADD__(*(&v92 + 1), v31 + v100))
  {
    v109 = 1;
  }

  else
  {
    v109 = 0;
  }

  v31 = __CFADD__(v108, v96);
  v110 = v108 + v96;
  v111 = v109 + v31 + v104;
  if (__CFADD__(v31, v104) | __CFADD__(v109, v31 + v104))
  {
    v112 = 1;
  }

  else
  {
    v112 = 0;
  }

  v113 = __CFADD__(v111, v98);
  v114 = v111 + v98;
  if (v113)
  {
    v115 = v112 + 1;
  }

  else
  {
    v115 = v112;
  }

  v116 = v101 + v103;
  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0), v99);
  if (v113)
  {
    ++v115;
  }

  v117 = (v5 * v78) >> 64;
  v118 = v5 * v78;
  v119 = (v6 * v78) >> 64;
  v120 = v6 * v78;
  v121 = (v10 * v78) >> 64;
  v122 = v10 * v78;
  v123 = v11 * v78;
  v124 = (v11 * v78) >> 64;
  v125 = v124 + v122;
  v31 = __CFADD__(__CFADD__(v124, v122), v121) | __CFADD__(v120, __CFADD__(v124, v122) + v121);
  v126 = v120 + __CFADD__(v124, v122) + v121;
  v128 = v31 + v119;
  v31 = __CFADD__(v31, v119) | __CFADD__(v118, v128);
  v127 = v118 + v128;
  if (v31)
  {
    ++v117;
  }

  v31 = __CFADD__(v116, v123);
  v129 = v116 + v123;
  v130 = v122 + v31 + v124;
  v131 = v130 + v106;
  v133 = __CFADD__(v31, v125) | __CFADD__(v106, v31 + v125);
  v31 = __CFADD__(v133, v126);
  v132 = v133 + v126;
  v31 |= __CFADD__(v110, v132);
  v132 += v110;
  v135 = v31;
  v31 = __CFADD__(v31, v127);
  v134 = v135 + v127;
  v31 |= __CFADD__(v114, v134);
  v134 += v114;
  v136 = (v129 * 0xFFFFFFFFFFFFFFFFLL) >> 64;
  v137 = v117 + v31 + v115;
  v138 = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0));
  v139 = 0xFFFFFFFF00000001 * v129;
  v140 = 0xFFFFFFFF * v129;
  v141 = (__PAIR128__(0xFFFFFFFFLL, -1) * v129) >> 64;
  v142 = v106 + __CFADD__(-v129, v129) + v130;
  v31 = __CFADD__(__CFADD__(__CFADD__(-v129, v129), v131) | __CFADD__(v141, __CFADD__(-v129, v129) + v131), v132);
  v143 = (__CFADD__(__CFADD__(-v129, v129), v131) | __CFADD__(v141, __CFADD__(-v129, v129) + v131)) + v132;
  v144 = v31;
  v31 = __CFADD__(v136, v140);
  v145 = v136 + v140;
  v146 = (v129 * 0xFFFFFFFF00000001) >> 64;
  v147 = (v129 * 0xFFFFFFFFuLL) >> 64;
  v149 = v31;
  v31 = __CFADD__(v31, v143);
  v148 = v149 + v143;
  v31 |= __CFADD__(v147, v148);
  v148 += v147;
  v151 = v31 + v139;
  v31 = __CFADD__(v31, v139) | __CFADD__(v144, v151);
  v150 = v144 + v151;
  v152 = v31;
  v31 = __CFADD__(v150, v134);
  v153 = v150 + v134;
  v154 = v152 + v31 + v146;
  if (__CFADD__(v31, v146) | __CFADD__(v152, v31 + v146))
  {
    v155 = 1;
  }

  else
  {
    v155 = 0;
  }

  v156 = __CFADD__(v154, v137);
  v157 = v154 + v137;
  if (v156)
  {
    ++v155;
  }

  v158 = v142 + v145;
  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0), v138);
  if (v156)
  {
    v159 = v155 + 1;
  }

  else
  {
    v159 = v155;
  }

  v161 = v148 - (1 - __CFADD__(v158, 1));
  v160 = (v148 - __PAIR128__(v140, (1 - __CFADD__(v158, 1)))) >> 64;
  v162 = v157 - __PAIR128__(v137, -((v153 - __PAIR128__(v160, (1 - (__CFADD__(v161, 0xFFFFFFFF00000001) + v160)))) >> 64));
  if (1 - (__CFADD__(v162, 0xFFFFFFFFLL) + BYTE8(v162)) + (v159 < (1 - (__CFADD__(v162, 0xFFFFFFFFLL) + BYTE8(v162)))))
  {
    v163 = 0;
  }

  else
  {
    v163 = -1;
  }

  if (1 - (__CFADD__(v162, 0xFFFFFFFFLL) + BYTE8(v162)) + (v159 < (1 - (__CFADD__(v162, 0xFFFFFFFFLL) + BYTE8(v162)))))
  {
    v164 = -1;
  }

  else
  {
    v164 = 0;
  }

  *result = v163 & (v158 + 1) | v164 & v158;
  result[1] = v163 & (v161 - 0xFFFFFFFF) | v164 & v148;
  result[2] = v163 & (v153 - (1 - (__CFADD__(v161, 0xFFFFFFFF00000001) + v160))) | v164 & v153;
  result[3] = v163 & (v162 + 0xFFFFFFFF) | v164 & v157;
  return result;
}

unint64_t ec_point_to_bytes(uint64_t a1, uint64_t a2, int a3, char *a4, unint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v9 = ec_point_byte_len(a1, a3);
  if (v9 <= a5)
  {
    v10 = v9;
    v15 = 0xAAAAAAAAAAAAAAAALL;
    ec_felem_to_bytes(a1);
    if (BN_num_bytes((a1 + 320)) != 0xAAAAAAAAAAAAAAAALL)
    {
      ec_point_to_bytes_cold_1();
    }

    if (a3 == 4)
    {
      ec_felem_to_bytes(a1);
      if (v15 != BN_num_bytes((a1 + 320)))
      {
        ec_point_to_bytes_cold_2();
      }

      v11 = 4;
    }

    else
    {
      v17 = -21846;
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v16[2] = v12;
      v16[3] = v12;
      v16[0] = v12;
      v16[1] = v12;
      ec_felem_to_bytes(a1);
      v11 = (*(v16 + v15 - 1) & 1) + a3;
    }

    *a4 = v11;
  }

  else
  {
    ERR_put_error(15, 0, 100, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/oct.c.inc", 97);
    v10 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

void ec_GFp_mont_felem_to_bytes(uint64_t a1, char *a2, unint64_t *a3, uint64_t a4)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[2] = v7;
  v8[3] = v7;
  v8[0] = v7;
  v8[1] = v7;
  bn_from_montgomery_small(v8, *(a1 + 328), a4, *(a1 + 328), a1 + 296);
  ec_GFp_simple_felem_to_bytes(a1, a2, a3, v8);
}

void bn_from_montgomery_small(unint64_t *a1, unint64_t num, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v12 = *MEMORY[0x1E69E9840];
  if (num > 9)
  {
    goto LABEL_11;
  }

  v7 = 2 * num;
  if (*(a5 + 32) != num || v7 < a4)
  {
    goto LABEL_11;
  }

  memset(v11, 0, sizeof(v11));
  if (a4)
  {
    __memcpy_chk();
  }

  if (!bn_from_montgomery_in_place(a1, num, v11, v7, a5))
  {
LABEL_11:
    abort();
  }

  OPENSSL_cleanse(v11, 16 * num);
  v10 = *MEMORY[0x1E69E9840];
}

void ec_GFp_simple_felem_to_bytes(uint64_t a1, char *a2, unint64_t *a3, char *a4)
{
  v8 = BN_num_bytes((a1 + 320));
  bn_words_to_big_endian(a2, v8, a4, *(a1 + 328));
  *a3 = v8;
}

uint64_t CBB_finish_i2d(uint64_t a1, void **a2)
{
  if (*(a1 + 8))
  {
    CBB_finish_i2d_cold_1();
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    CBB_finish_i2d_cold_2();
  }

  __n = 0xAAAAAAAAAAAAAAAALL;
  __src = 0xAAAAAAAAAAAAAAAALL;
  if (!CBB_finish(a1, &__src, &__n))
  {
    CBB_cleanup(a1);
    return 0xFFFFFFFFLL;
  }

  if (__n >> 31)
  {
    OPENSSL_free(__src);
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      if (__n)
      {
        memcpy(v5, __src, __n);
        v6 = __n;
        v5 = *a2;
      }

      else
      {
        v6 = 0;
      }

      *a2 = &v5[v6];
    }

    else
    {
      *a2 = __src;
      __src = 0;
    }
  }

  OPENSSL_free(__src);
  return __n;
}

uint64_t boringssl_ecdsa_get_cc_curve_parameters(int a1)
{
  if (a1 <= 714)
  {
    if (a1 == 415)
    {

      JUMPOUT(0x1AC57E2A0);
    }

    if (a1 == 713)
    {

      JUMPOUT(0x1AC57E290);
    }

LABEL_12:
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      boringssl_ecdsa_get_cc_curve_parameters_cold_1();
    }

    return 0;
  }

  if (a1 == 715)
  {

    JUMPOUT(0x1AC57E2B0);
  }

  if (a1 != 716)
  {
    goto LABEL_12;
  }

  return MEMORY[0x1EEE6F3C8]();
}

void pkey_ec_cleanup(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    OPENSSL_free(v1);
  }
}

uint64_t bssl::tls13_finished_mac(unsigned __int8 ***this, bssl::SSL_HANDSHAKE *a2, unsigned __int8 *a3, unint64_t *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = 130;
  if (a4)
  {
    v7 = 179;
  }

  v8 = this + v7;
  v9 = *(this + v7 + 48);
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = v10;
  v21 = v10;
  *v18 = v10;
  v19 = v10;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  result = bssl::SSLTranscript::GetHash((this + 53), v18, &v17);
  if (result)
  {
    v12 = bssl::SSLTranscript::Digest((this + 53));
    v13 = *this;
    v14 = v17;
    v15 = SSL_is_dtls(v13) != 0;
    result = bssl::tls13_verify_data(a2, a3, v12, v8, v9, v18, v14, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t bssl::tls13_process_finished(uint64_t a1, uint64_t a2, int a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[2] = v5;
  v11[3] = v5;
  v11[0] = v5;
  v11[1] = v5;
  if (a3)
  {
    if ((*(v4 + 180) & 1) == 0)
    {
      bssl::tls13_process_finished();
    }

    v6 = (a1 + 326);
    v7 = *(a1 + 374);
  }

  else
  {
    *v10 = 0xAAAAAAAAAAAAAAAALL;
    result = bssl::tls13_finished_mac(a1, v11, v10, ((*(v4 + 180) & 1) == 0));
    if (!result)
    {
      goto LABEL_9;
    }

    v7 = *v10;
    v6 = v11;
  }

  if (CBS_mem_equal(a2 + 8, v6, v7))
  {
    result = 1;
  }

  else
  {
    bssl::ssl_send_alert(v4, 2, 51);
    ERR_put_error(16, 0, 142, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 473);
    result = 0;
  }

LABEL_9:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t bssl::tls13_verify_data(unsigned __int8 *a1, void *a2, EVP_MD *md, uint64_t a4, uint64_t a5, const unsigned __int8 *a6, size_t a7, char a8)
{
  v23 = *MEMORY[0x1E69E9840];
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  key[2] = v16;
  key[3] = v16;
  key[0] = v16;
  key[1] = v16;
  v17 = EVP_MD_size(md);
  md_len = 0;
  result = bssl::hkdf_expand_label(key, v17, md, a4, a5, "finished", 8uLL, v18, 0, 0, a8);
  if (result)
  {
    result = HMAC(md, key, v17, a6, a7, a1, &md_len);
    if (result)
    {
      *a2 = md_len;
      result = 1;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned __int8 *__cdecl HMAC(const EVP_MD *evp_md, const void *key, int key_len, const unsigned __int8 *d, size_t n, unsigned __int8 *md, unsigned int *md_len)
{
  if (md)
  {
    v9 = md;
  }

  else
  {
    v9 = &HMAC_static_out_buffer;
  }

  v10 = EVP_MD_type(evp_md);
  v11 = boringssl_crypto_hash_nid_to_cc_digest(v10);
  if (v11)
  {
    v12 = v11;
    v13 = malloc_type_malloc(((*(v11 + 8) + *(v11 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + *(v11 + 8), 0x100004052888210uLL);
    if (!v13)
    {
      return 0;
    }

    v14 = v13;
    cchmac_init();
    cchmac_update();
    cchmac_final();
    v15 = (*(v12 + 8) + *(v12 + 16) + 19) & 0xFFFFFFFFFFFFFFF8;
    cc_clear();
    free(v14);
    if (md_len)
    {
      v16 = *v12;
LABEL_13:
      *md_len = v16;
    }
  }

  else
  {
    v17 = g_boringssl_log;
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      HMAC_cold_1(v17, evp_md);
    }

    v9 = 0;
    if (md_len)
    {
      v16 = 0;
      goto LABEL_13;
    }
  }

  return v9;
}

uint64_t bssl::tls13_derive_application_secrets(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  v4 = this + 228;
  v3 = *this;
  if (!bssl::derive_secret_with_transcript(this, this + 228, (this + 424), "c ap traffic", 0xCuLL) || !bssl::ssl_log_secret(v3, "CLIENT_TRAFFIC_SECRET_0", v4, *(this + 276)) || !bssl::derive_secret_with_transcript(this, this + 277, (this + 424), "s ap traffic", 0xCuLL) || !bssl::ssl_log_secret(v3, "SERVER_TRAFFIC_SECRET_0", this + 277, *(this + 325)) || !bssl::derive_secret_with_transcript(this, *(v3 + 48) + 394, (this + 424), "exp master", 0xAuLL))
  {
    return 0;
  }

  v5 = *(v3 + 48);
  v6 = *(v5 + 442);

  return bssl::ssl_log_secret(v3, "EXPORTER_SECRET", (v5 + 394), v6);
}

uint64_t bssl::tls13_add_finished(unsigned __int8 ***this, bssl::SSL_HANDSHAKE *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *this;
  *v11 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12[2] = v3;
  v12[3] = v3;
  v12[0] = v3;
  v12[1] = v3;
  if (bssl::tls13_finished_mac(this, v12, v11, (*(v2 + 180) & 1)))
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v10[1] = v4;
    v10[2] = v4;
    v10[0] = v4;
    CBB_zero(v10);
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9[1] = v5;
    v9[2] = v5;
    v9[0] = v5;
    if ((*(*v2 + 11))(v2, v10, v9, 20) && CBB_add_bytes(v9, v12, *v11))
    {
      v6 = bssl::ssl_add_message_cbb(v2, v10);
    }

    else
    {
      v6 = 0;
    }

    CBB_cleanup(v10);
  }

  else
  {
    bssl::ssl_send_alert(v2, 2, 80);
    ERR_put_error(16, 0, 142, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 855);
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1A90342B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void bssl::tls_on_handshake_complete(bssl *this, ssl_st *a2)
{
  v2 = *(this + 6);
  if ((*(v2 + 222) & 8) != 0)
  {
    bssl::tls_on_handshake_complete();
  }

  v5 = *(v2 + 224);
  v3 = (v2 + 224);
  v4 = v5;
  if (v5)
  {
    if (*v4)
    {
      bssl::tls_on_handshake_complete();
    }

    std::unique_ptr<buf_mem_st,bssl::internal::Deleter>::reset[abi:ne200100](v3, 0);
  }
}

void bssl::ssl_update_cache(bssl *this, ssl_st *a2)
{
  v3 = *(this + 16);
  v4 = *(*(this + 6) + 472);
  is_server = SSL_is_server(this);
  if ((*(v4 + 440) & 4) == 0 && (*(v4 + 91) || *(v4 + 240)))
  {
    v6 = *(v3 + 300);
    v7 = is_server ? -3 : -2;
    if ((v6 | v7) == 0xFFFFFFFF)
    {
      if (v6 & 0x200) == 0 && (*(this + 180))
      {
        CRYPTO_refcount_inc(v4);
        v13 = v4;
        tm[0] = 0xAAAAAAAAAAAAAAAALL;
        bssl::internal::MutexLockBase<&(CRYPTO_MUTEX_lock_write),&(CRYPTO_MUTEX_unlock_write)>::MutexLockBase(tm, (v3 + 24));
        v12 = v4;
        v13 = 0;
        bssl::add_session_locked(v3, &v12);
        v8 = v12;
        v12 = 0;
        if (v8)
        {
          bssl::RefCounted<ssl_session_st>::DecRefInternal(v8);
        }

        if ((*(v3 + 300) & 0x80) != 0)
        {
          CRYPTO_MUTEX_unlock_read(tm[0]);
        }

        else
        {
          v9 = *(v3 + 296);
          if (v9 <= 253)
          {
            v10 = v9 + 1;
          }

          else
          {
            v10 = 0;
          }

          *(v3 + 296) = v10;
          CRYPTO_MUTEX_unlock_read(tm[0]);
          if (v9 > 253)
          {
            tm[0] = 0xAAAAAAAAAAAAAAAALL;
            tm[1] = 0xAAAAAAAAAAAAAAAALL;
            bssl::ssl_get_current_time(this, tm);
            SSL_CTX_flush_sessions(v3, tm[0]);
          }
        }
      }

      if (*(v3 + 312))
      {
        CRYPTO_refcount_inc(v4);
        tm[0] = v4;
        if (!(*(v3 + 312))(this, v4))
        {
          tm[0] = 0;
          bssl::RefCounted<ssl_session_st>::DecRefInternal(v4);
        }
      }
    }
  }
}

void sub_1A90344A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

SSL *boringssl_session_finish_handshake(SSL *result)
{
  if (result)
  {
    v1 = result;
    if (result->version == -1252936367)
    {
      method = result->method;
      if (method)
      {
        session = SSL_get_session(method[1].ssl_pending);
        boringssl_session_set_peer_verification_state_from_session(v1, session);
        if ((BYTE4(method[2].ssl_renegotiate) & 0x10) != 0)
        {
          WeakRetained = objc_loadWeakRetained(&method->ssl_clear);
          if (WeakRetained)
          {
            v5 = WeakRetained;
            v6 = objc_loadWeakRetained(&method->ssl_clear);
            v7 = v6[35];

            if (v7)
            {
              v8 = objc_loadWeakRetained(&method->ssl_clear);
              v9 = v8[35];

              if (v9)
              {
                v10 = objc_loadWeakRetained(&method->ssl_clear);
                v11 = v10[35];
                nw_queue_cancel_source();

                v12 = objc_loadWeakRetained(&method->ssl_clear);
                v12[35] = 0;
              }
            }
          }
        }

        boringssl_session_set_state(v1, 2);
        if (v1->version == -1252936367)
        {
          v13 = v1->method;
          if (v13)
          {
            v13[1].get_timeout = boringssl_helper_get_current_time_ms();
          }
        }

        boringssl_session_update_metadata(v1);
        boringssl_context_update_encryption_level(v1);
        boringssl_metrics_log_connection(v1);

        return boringssl_metrics_log_ech(v1);
      }
    }
  }

  return result;
}

BOOL boringssl_metrics_log_connection(SSL *a1)
{
  if (!a1 || a1->version != -1252936367 || !a1->method)
  {
    return 0;
  }

  if (metricsQueueToken != -1)
  {
    v5 = a1;
    boringssl_metrics_log_connection_cold_1();
    a1 = v5;
  }

  if (!boringssl_context_metrics_queue)
  {
    return 0;
  }

  connection_event = boringssl_metrics_create_connection_event(a1);
  if (!connection_event)
  {
    return 0;
  }

  v2 = connection_event;
  v3 = boringssl_metrics_log_event("TLSConnectionEvent", connection_event, boringssl_context_metrics_queue);

  return v3;
}

xpc_object_t boringssl_metrics_create_connection_event(SSL *a1)
{
  v55 = *MEMORY[0x1E69E9840];
  if (a1 && a1->version == -1252936367 && (method = a1->method) != 0)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    if (v3)
    {
      v4 = TLS_METRIC_DEFAULT_EMPTY_STRING;
      if (boringssl_session_get_peer_public_key(a1))
      {
        v5 = SecKeyGetAlgorithmId() - 1;
        if (v5 <= 2)
        {
          v4 = off_1E785FA68[v5];
        }
      }

      negotiated_group = boringssl_session_get_negotiated_group(a1);
      v46 = 0;
      negotiated_protocol = boringssl_session_get_negotiated_protocol(a1, &v46);
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      *string = 0u;
      v48 = 0u;
      if (!negotiated_protocol)
      {
        strlen(TLS_METRIC_DEFAULT_EMPTY_STRING);
      }

      __memcpy_chk();
      v10 = boringssl_session_ticket_lifetime_hint(a1);
      v11 = &dword_1A90AFB4C;
      v12 = 5;
      while (1)
      {
        v13 = *(v11 - 1);
        if (v13 <= v10 && *v11 > v10)
        {
          break;
        }

        ++v11;
        if (!--v12)
        {
          v13 = 108000;
          break;
        }
      }

      boringssl_metrics_log_configuration_data(a1, v3);
      boringssl_metrics_log_connection_data(a1, v3);
      v14 = TLS_METRIC_CIPHERSUITE;
      negotiated_ciphersuite = boringssl_session_get_negotiated_ciphersuite(a1);
      xpc_dictionary_set_uint64(v3, v14, negotiated_ciphersuite);
      negotiated_protocol_version = boringssl_session_get_negotiated_protocol_version(a1);
      xpc_dictionary_set_uint64(v3, TLS_METRIC_PROTOCOL_VERSION, negotiated_protocol_version);
      xpc_dictionary_set_uint64(v3, TLS_METRIC_TICKET_LIFETIME, v13);
      v17 = TLS_METRIC_HANDSHAKE_TIME;
      handshake_time_ms = boringssl_session_get_handshake_time_ms(a1);
      xpc_dictionary_set_uint64(v3, v17, handshake_time_ms);
      v19 = TLS_METRIC_SIGNATURE_ALGORITHM;
      peer_signature_algorithm = boringssl_session_get_peer_signature_algorithm(a1);
      xpc_dictionary_set_uint64(v3, v19, peer_signature_algorithm);
      if (negotiated_group)
      {
        v21 = v3;
        v22 = negotiated_group;
      }

      else
      {
        v22 = TLS_METRIC_DEFAULT_EMPTY_STRING;
        v21 = v3;
      }

      xpc_dictionary_set_string(v21, TLS_METRIC_GROUP_NAME, v22);
      v23 = TLS_METRIC_PQTLS_ENABLED;
      pqtls_enabled = boringssl_session_get_pqtls_enabled(a1);
      xpc_dictionary_set_uint64(v3, v23, pqtls_enabled);
      has_internal_content = os_variant_has_internal_content();
      if (negotiated_protocol_version - 769 <= 1 && has_internal_content)
      {
        server_name = boringssl_session_get_server_name(a1);
        if (server_name)
        {
          v27 = server_name;
        }

        else
        {
          v27 = TLS_METRIC_DEFAULT_EMPTY_STRING;
        }

        xpc_dictionary_set_string(v3, TLS_METRIC_SERVER_NAME, v27);
      }

      if (v4)
      {
        v28 = v3;
        v29 = v4;
      }

      else
      {
        v29 = TLS_METRIC_DEFAULT_EMPTY_STRING;
        v28 = v3;
      }

      xpc_dictionary_set_string(v28, TLS_METRIC_PEER_PUBLIC_KEY_TYPE, v29);
      xpc_dictionary_set_string(v3, TLS_METRIC_NEGOTIATED_PROTOCOL, string);
      v30 = TLS_METRIC_UNKNOWN_NEGOTIATED_PROTOCOL;
      is_unknown = boringssl_context_negotiated_protocol_is_unknown(a1, string);
      xpc_dictionary_set_BOOL(v3, v30, is_unknown);
      xpc_dictionary_set_BOOL(v3, TLS_METRIC_FALSE_START_USED, BYTE5(method[2].ssl_renegotiate) & 1);
      v32 = TLS_METRIC_TICKET_RECEIVED;
      v33 = boringssl_session_has_session_ticket(a1, 0);
      xpc_dictionary_set_BOOL(v3, v32, v33);
      v34 = TLS_METRIC_SESSION_RENEWED;
      v35 = boringssl_session_was_renewed(a1, 0);
      xpc_dictionary_set_BOOL(v3, v34, v35);
      v36 = TLS_METRIC_ALPN_USED;
      v37 = boringssl_session_get_negotiated_protocol(a1, 0) != 0;
      xpc_dictionary_set_BOOL(v3, v36, v37);
      v38 = TLS_METRIC_OCSP_RECEIVED;
      ocsp_response_received = boringssl_session_get_ocsp_response_received(a1);
      xpc_dictionary_set_BOOL(v3, v38, ocsp_response_received);
      v40 = TLS_METRIC_SCT_RECEIVED;
      sct_received = boringssl_session_get_sct_received(a1);
      xpc_dictionary_set_BOOL(v3, v40, sct_received);
      xpc_dictionary_set_BOOL(v3, TLS_METRIC_FALLBACK_ATTEMPTED, (BYTE4(method[2].ssl_renegotiate) & 0x40) != 0);
      xpc_dictionary_set_BOOL(v3, TLS_METRIC_HANDSHAKE_CANCELLED, (BYTE4(method[2].ssl_renegotiate) & 2) != 0);
      xpc_dictionary_set_BOOL(v3, TLS_METRIC_CERTIFICATE_REQUESTED, (BYTE6(method[2].ssl_renegotiate) & 0x10) != 0);
      xpc_dictionary_set_BOOL(v3, TLS_METRIC_CERTIFICATE_COMPRESSION_ENABLED, (HIBYTE(method[2].ssl_renegotiate) & 0x40) != 0);
      xpc_dictionary_set_BOOL(v3, TLS_METRIC_CERTIFICATE_COMPRESSION_USED, HIBYTE(method[2].ssl_renegotiate) >> 7);
      xpc_dictionary_set_uint64(v3, TLS_METRIC_CERTIFICATE_COMPRESSION_ALGORITHM, LOWORD(method[1].ssl_get_message));
      v42 = TLS_METRIC_EXTENDED_MASTER_SECRET_NEGOTIATED;
      ems_used = boringssl_session_get_ems_used(a1, v43);
      xpc_dictionary_set_uint64(v3, v42, ems_used);
      xpc_dictionary_set_uuid(v3, TLS_METRIC_CONNECTION_ID, &method[1].ssl_new + 4);
      v45 = v3;
    }

    else if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      boringssl_metrics_create_connection_event_cold_1();
    }
  }

  else
  {
    v3 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t boringssl_session_get_peer_public_key(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      return *(v1 + 336);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const SSL *boringssl_session_ticket_lifetime_hint(const SSL *result)
{
  if (result)
  {
    if (result->version == -1252936367 && (method = result->method) != 0)
    {
      result = method[1].ssl_pending;
      if (result)
      {
        result = SSL_get_session(result);
        if (result)
        {
          return SSL_SESSION_get_ticket_lifetime_hint(result);
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

char *bssl::InplaceVector<unsigned char,48ul>::operator=(char *result, char *a2)
{
  if (result != a2)
  {
    v2 = a2[48];
    if (v2 > 0x30)
    {
      abort();
    }

    result[48] = 0;
    if (v2)
    {
      v3 = v2;
      v4 = result;
      do
      {
        v5 = *a2++;
        *v4++ = v5;
        --v3;
      }

      while (v3);
    }

    result[48] = v2;
  }

  return result;
}

unint64_t *OPENSSL_sk_deep_copy(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v9 = OPENSSL_sk_dup(a1);
  v10 = v9;
  if (!v9)
  {
    return v10;
  }

  v11 = *v9;
  if (!*v9)
  {
    return v10;
  }

  v12 = 0;
  v13 = v9[1];
  while (!v13[v12])
  {
LABEL_7:
    if (++v12 >= v11)
    {
      return v10;
    }
  }

  *(v10[1] + 8 * v12) = a2(a3);
  v13 = v10[1];
  if (v13[v12])
  {
    v11 = *v10;
    goto LABEL_7;
  }

  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*(v10[1] + 8 * i))
      {
        a4(a5);
      }
    }

    v13 = v10[1];
  }

  OPENSSL_free(v13);
  OPENSSL_free(v10);
  return 0;
}

void boringssl_metrics_log_configuration_data(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*a1 == -1252936367)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      v5 = TLS_METRIC_MIN_PROTOCOL_VERSION;
      xdict = v3;
      min_protocol_version = boringssl_context_get_min_protocol_version(a1);
      xpc_dictionary_set_uint64(xdict, v5, min_protocol_version);
      v7 = TLS_METRIC_MAX_PROTOCOL_VERSION;
      max_protocol_version = boringssl_context_get_max_protocol_version(a1);
      xpc_dictionary_set_uint64(xdict, v7, max_protocol_version);
      v9 = TLS_METRIC_CONFIGURED_CIPHERSUITE_SET;
      configured_ciphersuite_set = boringssl_context_get_configured_ciphersuite_set(a1);
      xpc_dictionary_set_uint64(xdict, v9, configured_ciphersuite_set);
      xpc_dictionary_set_BOOL(xdict, TLS_METRIC_FALSE_START_ENABLED, *(v4 + 548) >> 7);
      xpc_dictionary_set_BOOL(xdict, TLS_METRIC_SESSION_RESUMED, *(v4 + 549) >> 7);
      v11 = TLS_METRIC_TICKET_ENABLED;
      session_ticket_enabled = boringssl_context_get_session_ticket_enabled(a1);
      xpc_dictionary_set_BOOL(xdict, v11, session_ticket_enabled);
      v13 = TLS_METRIC_TICKET_OFFERED;
      ticket_offered = boringssl_session_get_ticket_offered(a1);
      xpc_dictionary_set_BOOL(xdict, v13, ticket_offered);
      v15 = TLS_METRIC_RESUMPTION_ATTEMPTED;
      v16 = boringssl_session_attempted_resumption(a1);
      xpc_dictionary_set_BOOL(xdict, v15, v16);
      xpc_dictionary_set_BOOL(xdict, TLS_METRIC_OCSP_ENABLED, (*(v4 + 548) & 8) != 0);
      xpc_dictionary_set_BOOL(xdict, TLS_METRIC_SCT_ENABLED, (*(v4 + 548) & 4) != 0);
      xpc_dictionary_set_BOOL(xdict, TLS_METRIC_VERIFY_BLOCK_USED, *(v4 + 112) != 0);
      xpc_dictionary_set_BOOL(xdict, TLS_METRIC_CHALLENGE_BLOCK_USED, *(v4 + 128) != 0);
      xpc_dictionary_set_BOOL(xdict, TLS_METRIC_DTLS, (*(v4 + 548) & 0x20) != 0);
      v17 = TLS_METRIC_PSK_USED;
      psk_was_negotiated = boringssl_session_get_psk_was_negotiated(a1);
      xpc_dictionary_set_BOOL(xdict, v17, psk_was_negotiated);
      v19 = TLS_METRIC_PSK_CONFIGURED;
      v20 = boringssl_psk_cache_get_count(*(v4 + 40)) != 0;
      xpc_dictionary_set_BOOL(xdict, v19, v20);
      xpc_dictionary_set_BOOL(xdict, TLS_METRIC_CLIENT_MODE, (*(v4 + 548) & 0x10) == 0);
      v21 = TLS_METRIC_IS_PROBE;
      is_probe = boringssl_context_get_is_probe(a1);
      xpc_dictionary_set_BOOL(xdict, v21, is_probe);
      v23 = TLS_METRIC_GREASE_ENABLED;
      GREASE_enabled = boringssl_context_get_GREASE_enabled(a1);
      xpc_dictionary_set_BOOL(xdict, v23, GREASE_enabled);
      v25 = TLS_METRIC_ATS_ENFORCED;
      ats_enforced = boringssl_context_get_ats_enforced(a1);
      xpc_dictionary_set_BOOL(xdict, v25, ats_enforced);
      v27 = TLS_METRIC_ATS_MINIMUM_RSA_KEY_SIZE;
      ats_minimum_rsa_key_size = boringssl_context_get_ats_minimum_rsa_key_size(a1);
      xpc_dictionary_set_uint64(xdict, v27, ats_minimum_rsa_key_size);
      v29 = TLS_METRIC_ATS_MINIMUM_ECDSA_KEY_SIZE;
      ats_minimum_ecdsa_key_size = boringssl_context_get_ats_minimum_ecdsa_key_size(a1);
      xpc_dictionary_set_uint64(xdict, v29, ats_minimum_ecdsa_key_size);
      v31 = TLS_METRIC_ATS_MINIMUM_SIGNATURE_ALGORITHM;
      ats_minimum_signature_algorithm = boringssl_context_get_ats_minimum_signature_algorithm(a1);
      xpc_dictionary_set_uint64(xdict, v31, ats_minimum_signature_algorithm);
      v33 = TLS_METRIC_ATS_NON_PFS_CIPHERSUITE_ALLOWED;
      ats_non_pfs_ciphersuite_allowed = boringssl_context_get_ats_non_pfs_ciphersuite_allowed(a1);
      xpc_dictionary_set_BOOL(xdict, v33, ats_non_pfs_ciphersuite_allowed);
      experiment_identifer = boringssl_context_get_experiment_identifer(a1);
      v36 = TLS_METRIC_EXPERIMENT_IDENTIFIER;
      if (experiment_identifer)
      {
        v37 = boringssl_context_get_experiment_identifer(a1);
      }

      else
      {
        v37 = TLS_METRIC_DEFAULT_EMPTY_STRING;
      }

      xpc_dictionary_set_string(xdict, v36, v37);
      v3 = xdict;
    }
  }
}

void *OPENSSL_sk_dup(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = OPENSSL_zalloc(0x28uLL);
  if (v2)
  {
    v3 = OPENSSL_memdup(*(a1 + 8), 8 * *(a1 + 24));
    v2[1] = v3;
    if (v3)
    {
      *v2 = *a1;
      *(v2 + 4) = *(a1 + 16);
      v4 = *(a1 + 32);
      v2[3] = *(a1 + 24);
      v2[4] = v4;
      return v2;
    }

    OPENSSL_free(0);
    OPENSSL_free(v2);
    return 0;
  }

  return v2;
}

uint64_t boringssl_context_get_min_protocol_version(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      return *(v1 + 50);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t boringssl_context_get_max_protocol_version(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      return *(v1 + 48);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t boringssl_ciphers_create_set_bitmask(unint64_t *a1)
{
  v2 = 0;
  if (EVP_MD_CTX_md(a1))
  {
    v3 = 0;
    do
    {
      v4 = OPENSSL_sk_value(a1, v3);
      if (v4)
      {
        id = SSL_CIPHER_get_id(v4);
        v6 = &qword_1A90A90A8;
        v7 = 38;
        while (*(v6 - 4) != id)
        {
          v6 += 2;
          if (!--v7)
          {
            goto LABEL_9;
          }
        }

        v2 |= *v6;
      }

LABEL_9:
      ++v3;
    }

    while (v3 < EVP_MD_CTX_md(a1));
  }

  return v2;
}

uint64_t boringssl_context_get_configured_ciphersuite_set(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1 != -1252936367)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 392);
  if (!v3)
  {
    return 0;
  }

  ciphers = SSL_get_ciphers(v3);
  if (!ciphers)
  {
    return 0;
  }

  return boringssl_ciphers_create_set_bitmask(ciphers);
}

char *bssl::InplaceVector<unsigned char,64ul>::operator=(char *result, char *a2)
{
  if (result != a2)
  {
    v2 = a2[64];
    if (v2 > 0x40)
    {
      abort();
    }

    result[64] = 0;
    if (v2)
    {
      v3 = v2;
      v4 = result;
      do
      {
        v5 = *a2++;
        *v4++ = v5;
        --v3;
      }

      while (v3);
    }

    result[64] = v2;
  }

  return result;
}

uint64_t boringssl_context_get_session_ticket_enabled(uint64_t a1)
{
  if (a1 && *a1 == -1252936367 && (v1 = *(a1 + 8)) != 0)
  {
    return (*(v1 + 549) >> 4) & 1;
  }

  else
  {
    return 1;
  }
}

BOOL boringssl_session_get_ticket_offered(_BOOL8 result)
{
  if (result)
  {
    return *result == -1252936367 && (v1 = *(result + 8)) != 0 && *(v1 + 550) < 0;
  }

  return result;
}

uint64_t boringssl_session_attempted_resumption(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      return (*(v1 + 550) >> 6) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t boringssl_session_get_psk_was_negotiated(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      return *(v1 + 552) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t boringssl_psk_cache_get_count(uint64_t a1)
{
  if (a1 && *(a1 + 8))
  {
    return sec_array_get_count();
  }

  else
  {
    return 0;
  }
}

uint64_t boringssl_context_get_GREASE_enabled(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      return (*(v1 + 552) >> 1) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t boringssl_context_get_ats_enforced(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      return (*(v1 + 551) >> 3) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t boringssl_context_get_ats_minimum_rsa_key_size(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      return *(v1 + 520);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t boringssl_context_get_ats_minimum_ecdsa_key_size(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      return *(v1 + 528);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t boringssl_context_get_ats_minimum_signature_algorithm(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      return *(v1 + 536);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double EVP_md5_sha1_init()
{
  EVP_md5_sha1_storage = 0x2400000072;
  dword_1ED4C0198 = 0;
  qword_1ED4C01A0 = md5_sha1_init;
  qword_1ED4C01A8 = md5_sha1_update;
  qword_1ED4C01B0 = md5_sha1_final;
  *&result = 0x81000000040;
  qword_1ED4C01B8 = 0x81000000040;
  return result;
}

uint64_t boringssl_context_get_ats_non_pfs_ciphersuite_allowed(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      return (*(v1 + 551) >> 4) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t boringssl_context_get_experiment_identifer(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      return *(v1 + 88);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void boringssl_metrics_log_connection_data(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*a1 == -1252936367)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      xdict = v3;
      xpc_dictionary_set_uint64(v3, TLS_METRIC_HANDSHAKE_TIMER_FIRES, *(v4 + 320));
      v5 = TLS_METRIC_HANDSHAKE_RTT;
      handshake_rtt_ms = boringssl_session_get_handshake_rtt_ms(a1);
      xpc_dictionary_set_uint64(xdict, v5, handshake_rtt_ms);
      v7 = TLS_METRIC_HANDSHAKE_INBOUND_BYTE_COUNT;
      handshake_inbound_byte_count = boringssl_session_get_handshake_inbound_byte_count(a1);
      xpc_dictionary_set_uint64(xdict, v7, handshake_inbound_byte_count);
      v9 = TLS_METRIC_HANDSHAKE_OUTBOUND_BYTE_COUNT;
      handshake_outbound_byte_count = boringssl_session_get_handshake_outbound_byte_count(a1);
      xpc_dictionary_set_uint64(xdict, v9, handshake_outbound_byte_count);
      v11 = TLS_METRIC_HANDSHAKE_BYTE_COUNT;
      handshake_byte_count = boringssl_session_get_handshake_byte_count(a1);
      xpc_dictionary_set_uint64(xdict, v11, handshake_byte_count);
      v13 = TLS_METRIC_HANDSHAKE_READ_STALLS;
      stall_count = boringssl_session_get_handshake_read_stall_count(a1);
      xpc_dictionary_set_uint64(xdict, v13, stall_count);
      v15 = TLS_METRIC_HANDSHAKE_WRITE_STALLS;
      v16 = boringssl_session_get_handshake_write_stall_count(a1);
      xpc_dictionary_set_uint64(xdict, v15, v16);
      v17 = TLS_METRIC_HANDSHAKE_ASYNC_CALLS;
      handshake_async_count = boringssl_session_get_handshake_async_count(a1);
      xpc_dictionary_set_uint64(xdict, v17, handshake_async_count);
      v19 = TLS_METRIC_ADDRESS_FAMILY;
      address_family = boringssl_session_get_address_family(a1);
      xpc_dictionary_set_uint64(xdict, v19, address_family);
      v3 = xdict;
    }
  }
}

uint64_t boringssl_session_get_handshake_rtt_ms(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      v2 = *(v1 + 456);
      v3 = *(v1 + 448);
      v4 = v2 >= v3;
      v5 = v2 - v3;
      if (v4)
      {
        return v5;
      }

      else
      {
        return -1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t __boringssl_metrics_log_connection_block_invoke()
{
  boringssl_context_metrics_queue = dispatch_queue_create("com.apple.network.boringssl.metrics_queue", 0);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t boringssl_session_get_handshake_inbound_byte_count(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      return *(v1 + 472);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t boringssl_session_get_handshake_outbound_byte_count(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      return *(v1 + 464);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t boringssl_session_get_handshake_byte_count(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      return *(v1 + 464) + *(v1 + 472);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t boringssl_session_get_handshake_read_stall_count(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      return *(v1 + 488);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t boringssl_session_get_handshake_write_stall_count(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      return *(v1 + 480);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t boringssl_session_get_handshake_async_count(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      return *(v1 + 496);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t boringssl_session_get_address_family(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      return *(v1 + 217);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t boringssl_session_get_handshake_time_ms(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      return *(v1 + 424) - *(v1 + 416);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

SSL_SESSION *SSL_get_peer_signature_algorithm(const SSL *a1)
{
  result = SSL_get_session(a1);
  if (result)
  {
    return *result->key_arg;
  }

  return result;
}

SSL_SESSION *boringssl_session_get_peer_signature_algorithm(uint64_t a1)
{
  if (a1 && *a1 == -1252936367 && (v1 = *(a1 + 8)) != 0 && (v2 = *(v1 + 392)) != 0)
  {
    return SSL_get_peer_signature_algorithm(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t boringssl_session_get_pqtls_enabled(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      return (*(v1 + 552) >> 5) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL boringssl_context_negotiated_protocol_is_unknown(uint64_t a1, char *__s)
{
  if (a1 && *a1 == -1252936367 && (v2 = *(a1 + 8)) != 0 && (*(v2 + 549) & 0x40) != 0)
  {
    if (__s)
    {
      v6 = strlen(__s);
      v7 = *(v2 + 56);
      count = xpc_array_get_count(v7);
      if (count)
      {
        v9 = count;
        v3 = 0;
        for (i = 0; i != v9; v3 = i >= v9)
        {
          string = xpc_array_get_string(v7, i);
          if (v6 == strlen(string) && !strncmp(__s, string, v6))
          {
            break;
          }

          ++i;
        }
      }

      else
      {
        v3 = 1;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 0;
  }

  return v3;
}

uint64_t boringssl_session_get_ocsp_response_received(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v3 = *(result + 8)) != 0)
    {
      result = *(v3 + 392);
      if (result)
      {
        v5[1] = v1;
        v5[2] = v2;
        v4 = 0;
        v5[0] = 0;
        SSL_get0_ocsp_response(result, v5, &v4);
        return v4 != 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t boringssl_session_get_sct_received(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v3 = *(result + 8)) != 0)
    {
      result = *(v3 + 392);
      if (result)
      {
        v5[1] = v1;
        v5[2] = v2;
        v4 = 0;
        v5[0] = 0;
        SSL_get0_signed_cert_timestamp_list(result, v5, &v4);
        return v4 != 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

bssl *boringssl_session_get_ems_used(bssl *result, const ssl_st *a2)
{
  if (result)
  {
    if (*result == -1252936367 && (v2 = *(result + 1)) != 0)
    {
      result = *(v2 + 392);
      if (result)
      {
        return (SSL_get_extms_support(result, a2) != 0);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SSL_get_extms_support(bssl *a1, const ssl_st *a2)
{
  if (!*(*(a1 + 6) + 208))
  {
    return 0;
  }

  if (bssl::ssl_protocol_version(a1, a2) > 0x303)
  {
    return 1;
  }

  v4 = *(a1 + 6);
  v5 = *(v4 + 472);
  if (v5)
  {
    return *(v5 + 440) & 1;
  }

  v6 = *(v4 + 280);
  if (!v6)
  {
    SSL_get_extms_support_cold_1();
  }

  return HIWORD(*(v6 + 1600)) & 1;
}

BOOL boringssl_metrics_log_event(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = xpc_copy(a2);
    v7 = v6 != 0;
    if (v6)
    {
      v8 = TLS_METRIC_PROCESS_IDENTIFIER;
      whitelisted_bundle_identifier = boringssl_config_get_whitelisted_bundle_identifier();
      xpc_dictionary_set_string(v6, v8, whitelisted_bundle_identifier);
      v10 = v6;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __boringssl_metrics_log_metric_block_invoke;
      v12[3] = &unk_1E785EB18;
      v13 = v10;
      v14 = a1;
      dispatch_async(v5, v12);
    }

    else if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      boringssl_metrics_log_event_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t boringssl_config_get_whitelisted_bundle_identifier()
{
  if (boringssl_config_get_whitelisted_bundle_identifier_onceToken != -1)
  {
    boringssl_config_get_whitelisted_bundle_identifier_cold_1();
  }

  return global_bundle_identifier;
}

xpc_object_t boringssl_metrics_create_ech_event(uint64_t a1)
{
  if (!a1 || *a1 != -1252936367 || !*(a1 + 8) || !boringssl_context_get_ech_enabled(a1))
  {
    return 0;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = TLS_METRIC_ECH_USED;
    ech_was_used = boringssl_session_get_ech_was_used(a1);
    xpc_dictionary_set_BOOL(v2, v3, ech_was_used);
    v5 = v2;
  }

  else if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
  {
    boringssl_metrics_create_ech_event_cold_1();
  }

  return v2;
}

BOOL boringssl_metrics_log_ech(uint64_t a1)
{
  if (!a1 || *a1 != -1252936367 || !*(a1 + 8))
  {
    return 0;
  }

  if (metricsQueueToken != -1)
  {
    v5 = a1;
    boringssl_metrics_log_ech_cold_1();
    a1 = v5;
  }

  if (!boringssl_context_metrics_queue)
  {
    return 0;
  }

  ech_event = boringssl_metrics_create_ech_event(a1);
  if (!ech_event)
  {
    return 0;
  }

  v2 = ech_event;
  v3 = boringssl_metrics_log_event("TLSExperimentECHConnectionEvent", ech_event, boringssl_context_metrics_queue);

  return v3;
}

void nw_protocol_boringssl_signal_connected(void *a1)
{
  v82 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ((v1[435] & 1) == 0)
  {
    nw_protocol_boringssl_signal_connected_cold_1();
  }

  v2 = *(v1 + 37);
  if (v2)
  {
    if (*(v1 + 35))
    {
      v3 = *(v1 + 35);
      nw_queue_cancel_source();
      *(v1 + 35) = 0;
      v2 = *(v1 + 37);
    }

    v34 = 0;
    negotiated_protocol = boringssl_session_get_negotiated_protocol(v2, &v34);
    memset(v81, 0, 128);
    if (negotiated_protocol)
    {
      __memcpy_chk();
    }

    negotiated_ciphersuite_name = boringssl_session_get_negotiated_ciphersuite_name(*(v1 + 37));
    if ((v1[435] & 1) == 0)
    {
      v7 = g_boringssl_log;
      if (g_boringssl_log)
      {
        v8 = negotiated_ciphersuite_name;
        if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_DEFAULT))
        {
          v9 = negotiated_protocol;
          v10 = *(v1 + 37);
          if (v10 && v10->version == -1252936367 && (method = v10->method) != 0)
          {
            v33 = (BYTE4(method[2].ssl_renegotiate) >> 4) & 1;
          }

          else
          {
            v33 = 0;
          }

          log = v7;
          negotiated_protocol_version = boringssl_session_get_negotiated_protocol_version(v10);
          if (v8)
          {
            v12 = v8;
          }

          else
          {
            v12 = "nil";
          }

          v30 = v12;
          negotiated_group_id = boringssl_session_get_negotiated_group_id(*(v1 + 37));
          peer_signature_algorithm = boringssl_session_get_peer_signature_algorithm(*(v1 + 37));
          v13 = v81;
          if (!v9)
          {
            v13 = "nil";
          }

          v27 = v13;
          v26 = boringssl_session_was_resumed(*(v1 + 37));
          ticket_offered = boringssl_session_get_ticket_offered(*(v1 + 37));
          v24 = boringssl_session_in_early_data(*(v1 + 37));
          v23 = boringssl_session_early_data_accepted(*(v1 + 37));
          false_start_used = boringssl_session_get_false_start_used(*(v1 + 37));
          ocsp_response_received = boringssl_session_get_ocsp_response_received(*(v1 + 37));
          sct_received = boringssl_session_get_sct_received(*(v1 + 37));
          handshake_time_ms = boringssl_session_get_handshake_time_ms(*(v1 + 37));
          handshake_flight_time_ms = boringssl_session_get_handshake_flight_time_ms(*(v1 + 37));
          handshake_rtt_ms = boringssl_session_get_handshake_rtt_ms(*(v1 + 37));
          v20 = boringssl_session_get_handshake_write_stall_count(*(v1 + 37));
          stall_count = boringssl_session_get_handshake_read_stall_count(*(v1 + 37));
          negotiated_pake = boringssl_session_get_negotiated_pake(*(v1 + 37));
          *buf = 136451842;
          v36 = "nw_protocol_boringssl_signal_connected";
          v37 = 1024;
          v38 = 895;
          v39 = 2082;
          v40 = v1 + 351;
          v41 = 2048;
          v42 = v1;
          v43 = 1024;
          v44 = v33;
          v45 = 1024;
          v46 = negotiated_protocol_version;
          v47 = 2080;
          v48 = v30;
          v49 = 1024;
          v50 = negotiated_group_id;
          v51 = 1024;
          v52 = peer_signature_algorithm;
          v53 = 2082;
          v54 = v27;
          v55 = 1024;
          v56 = v26;
          v57 = 1024;
          v58 = ticket_offered;
          v59 = 1024;
          v60 = v24;
          v61 = 1024;
          v62 = v23;
          v63 = 1024;
          v64 = false_start_used;
          v65 = 1024;
          v66 = ocsp_response_received;
          v67 = 1024;
          v68 = sct_received;
          v69 = 2048;
          v70 = handshake_time_ms;
          v71 = 2048;
          v72 = handshake_flight_time_ms;
          v73 = 2048;
          v74 = handshake_rtt_ms;
          v75 = 2048;
          v76 = v20;
          v77 = 2048;
          v78 = stall_count;
          v79 = 1024;
          v80 = negotiated_pake;
          _os_log_impl(&dword_1A8FF5000, log, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] TLS connected [server(%d) version(0x%04x) ciphersuite(%s) group(0x%04x) signature_alg(0x%04x) alpn(%{public}s) resumed(%d) offered_ticket(%d) in_early_data(%d) early_data_accepted(%d) false_started(%d) ocsp_received(%d) sct_received(%d) connect_time(%llums) flight_time(%llums) rtt(%llums) write_stalls(%zu) read_stalls(%zu) pake(0x%04x)]", buf, 0xB4u);
        }
      }
    }

    nw_protocol_upcast();
    nw_protocol_get_input_handler();
    nw_protocol_upcast();
    nw_protocol_connected();
    v1[350] |= 2u;
  }

  v6 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_signal_connected_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void *boringssl_session_get_negotiated_ciphersuite_name(uint64_t a1)
{
  negotiated_ciphersuite = boringssl_session_get_negotiated_ciphersuite(a1);
  result = SSL_get_cipher_by_value(negotiated_ciphersuite);
  if (result)
  {

    return EVP_HPKE_CTX_aead(result);
  }

  return result;
}

SSL_SESSION *boringssl_session_get_negotiated_group_id(uint64_t a1)
{
  if (a1 && *a1 == -1252936367 && (v1 = *(a1 + 8)) != 0 && (v2 = *(v1 + 392)) != 0)
  {
    return SSL_get_curve_id(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t boringssl_session_get_false_start_used(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      return *(v1 + 549) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}