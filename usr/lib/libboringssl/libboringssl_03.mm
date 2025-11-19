void sub_1A901CA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, bssl::SSLAEADContext *);
  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](va1, 0);
  _Unwind_Resume(a1);
}

void bssl::SSLAEADContext::Create(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, const ssl_cipher_st *a3@<X2>, _OWORD *a4@<X3>, size_t a5@<X4>, const void *a6@<X5>, size_t a7@<X6>, bssl::SSLAEADContext **a8@<X8>, char *a9, size_t a10)
{
  v44 = *MEMORY[0x1E69E9840];
  v41 = 0xAAAAAAAAAAAAAAAALL;
  v42 = a3;
  v40 = -21846;
  v38 = 0xAAAAAAAAAAAAAAAALL;
  v39 = 0xAAAAAAAAAAAAAAAALL;
  if (bssl::ssl_protocol_version_from_wire(&v40, a2))
  {
    evp_aead = bssl::ssl_cipher_get_evp_aead(&v41, &v39, &v38, a3, v40);
    v18 = v38 == a10 ? evp_aead : 0;
    if (v18 == 1 && v39 == a7)
    {
      v37 = bssl::New<bssl::SSLAEADContext,ssl_cipher_st const*&>(&v42);
      if (!v37)
      {
        *a8 = 0;
LABEL_40:
        std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](&v37, 0);
        goto LABEL_41;
      }

      *&v20 = 0xAAAAAAAAAAAAAAAALL;
      *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
      __dst[3] = v20;
      __dst[4] = v20;
      __dst[1] = v20;
      __dst[2] = v20;
      __dst[0] = v20;
      if (EVP_AEAD_nonce_length(v41) > 0x18)
      {
        v35 = "EVP_AEAD_nonce_length(aead) <= EVP_AEAD_MAX_NONCE_LENGTH";
        v36 = 77;
        goto LABEL_47;
      }

      v21 = a9;
      v22 = v37;
      *(v37 + 605) = EVP_AEAD_nonce_length(v41);
      if (a7)
      {
        if (v40 < 0x304u)
        {
          v23 = a7 + a5 + a10;
          if (v23 < 0x51)
          {
            memcpy(__dst, a6, a7);
            v24 = __dst + a7;
            if (a5)
            {
              memcpy(v24, a4, a5);
            }

            if (a10)
            {
              memcpy(&v24[a5], a9, a10);
            }

            *(v22 + 616) |= 0xBu;
            a4 = __dst;
            a5 = v23;
            goto LABEL_36;
          }

LABEL_48:
          abort();
        }

        v35 = "protocol_version < TLS1_3_VERSION";
        v36 = 108;
LABEL_47:
        __assert_rtn("Create", "ssl_aead_ctx.cc", v36, v35);
      }

      if (a10 > 0xC)
      {
        goto LABEL_48;
      }

      *(v22 + 604) = 0;
      if (a10)
      {
        v25 = v22 + 592;
        v26 = a10;
        do
        {
          v27 = *v21++;
          *v25++ = v27;
          --v26;
        }

        while (v26);
        v28 = a10;
      }

      else
      {
        v28 = 0;
      }

      *(v22 + 604) = v28;
      if (v40 <= 0x303u)
      {
        algorithms_high = HIDWORD(v42->algorithms);
        v22 = v37;
        if ((algorithms_high & 0x40) == 0)
        {
          v32 = *(v37 + 605);
          if (a10 > v32)
          {
            v35 = "fixed_iv.size() <= aead_ctx->variable_nonce_len_";
            v36 = 94;
            goto LABEL_47;
          }

          if ((algorithms_high & 0x18) == 0)
          {
            v35 = "cipher->algorithm_enc & (SSL_AES128GCM | SSL_AES256GCM)";
            v36 = 95;
            goto LABEL_47;
          }

          *(v37 + 605) = v32 - a10;
          v30 = *(v22 + 616) | 1;
          goto LABEL_34;
        }

        *(v37 + 616) |= 4u;
        *(v22 + 605) = 8;
        if (a10 >= 8)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v22 = v37;
        v29 = *(v37 + 616);
        *(v37 + 616) = v29 | 4;
        *(v22 + 605) = 8;
        if (a10 >= 8)
        {
          v30 = v29 | 0x14;
LABEL_34:
          *(v22 + 616) = v30;
LABEL_36:
          if (EVP_AEAD_CTX_init_with_direction(v22 + 1, v41, a4, a5, 0, a1))
          {
            v33 = v37;
            v37 = 0;
          }

          else
          {
            v33 = 0;
          }

          *a8 = v33;
          goto LABEL_40;
        }
      }

      v35 = "fixed_iv.size() >= aead_ctx->variable_nonce_len_";
      v36 = 91;
      goto LABEL_47;
    }
  }

  ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_aead_ctx.cc", 67);
  *a8 = 0;
LABEL_41:
  v34 = *MEMORY[0x1E69E9840];
}

uint64_t bssl::get_key_block_lengths(bssl *this, const ssl_st *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, const ssl_cipher_st *a6)
{
  v18 = 0;
  v10 = bssl::ssl_protocol_version(this, a2);
  if ((bssl::ssl_cipher_get_evp_aead(&v18, &a2->version, a4, a5, v10) & 1) == 0)
  {
    v15 = 130;
    v16 = 173;
    goto LABEL_6;
  }

  v11 = EVP_AEAD_key_length(v18);
  *a3 = v11;
  if (*&a2->version)
  {
    v12 = *a4 + *&a2->version;
    v13 = v11 >= v12;
    v14 = v11 - v12;
    if (!v13)
    {
      v15 = 68;
      v16 = 183;
LABEL_6:
      ERR_put_error(16, 0, v15, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/t1_enc.cc", v16);
      return 0;
    }

    *a3 = v14;
  }

  return 1;
}

uint64_t bssl::tls1_change_cipher_state(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = bssl::ssl_handshake_session(a1);

  return bssl::tls1_configure_aead(v4, a2, (a1 + 197), v5, 0, 0);
}

uint64_t bssl::ssl_cipher_get_evp_aead(void **a1, uint64_t *a2, uint64_t *a3, uint64_t a4, unsigned int a5)
{
  result = 0;
  *a1 = 0;
  *a2 = 0;
  *a3 = 0;
  v10 = *(a4 + 32);
  if (v10 > 3)
  {
    if (v10 == 4)
    {
      if (*(a4 + 28) == 4)
      {
        *a1 = EVP_aead_aes_256_cbc_sha384_tls();
        v11 = 48;
        goto LABEL_42;
      }
    }

    else
    {
      if (v10 != 8)
      {
        return result;
      }

      v12 = *(a4 + 28);
      switch(v12)
      {
        case 64:
          v13 = 12;
          v14 = EVP_aead_chacha20_poly1305();
LABEL_35:
          *a1 = v14;
          *a3 = v13;
          if (a5 >= 0x304)
          {
            *a3 = EVP_AEAD_nonce_length(v14);
          }

          return 1;
        case 16:
          v13 = 4;
          if (a5 > 0x303)
          {
            v14 = EVP_aead_aes_256_gcm_tls13();
          }

          else
          {
            v14 = EVP_aead_aes_256_gcm_tls12();
          }

          goto LABEL_35;
        case 8:
          v13 = 4;
          if (a5 > 0x303)
          {
            v14 = EVP_aead_aes_128_gcm_tls13();
          }

          else
          {
            v14 = EVP_aead_aes_128_gcm_tls12();
          }

          goto LABEL_35;
      }
    }

    return 0;
  }

  if (v10 == 1)
  {
    result = 0;
    v15 = *(a4 + 28);
    if (v15 > 3)
    {
      if (v15 == 4)
      {
        if (a5 == 769)
        {
          v16 = EVP_aead_aes_256_cbc_sha1_tls_implicit_iv();
          goto LABEL_31;
        }

        v17 = EVP_aead_aes_256_cbc_sha1_tls();
      }

      else
      {
        if (v15 != 32)
        {
          return result;
        }

        v17 = EVP_aead_null_sha1_tls();
      }
    }

    else if (v15 == 1)
    {
      if (a5 == 769)
      {
        *a1 = EVP_aead_des_ede3_cbc_sha1_tls_implicit_iv();
        v18 = 8;
LABEL_32:
        *a3 = v18;
LABEL_41:
        v11 = 20;
        goto LABEL_42;
      }

      v17 = EVP_aead_des_ede3_cbc_sha1_tls();
    }

    else
    {
      if (v15 != 2)
      {
        return result;
      }

      if (a5 == 769)
      {
        v16 = EVP_aead_aes_128_cbc_sha1_tls_implicit_iv();
LABEL_31:
        *a1 = v16;
        v18 = 16;
        goto LABEL_32;
      }

      v17 = EVP_aead_aes_128_cbc_sha1_tls();
    }

    *a1 = v17;
    goto LABEL_41;
  }

  if (v10 != 2)
  {
    return result;
  }

  if (*(a4 + 28) != 2)
  {
    return 0;
  }

  *a1 = EVP_aead_aes_128_cbc_sha256_tls();
  v11 = 32;
LABEL_42:
  *a2 = v11;
  return 1;
}

bssl::SSLAEADContext *bssl::New<bssl::SSLAEADContext,ssl_cipher_st const*&>(const ssl_cipher_st **a1)
{
  result = OPENSSL_malloc(0x270uLL);
  if (result)
  {
    return bssl::SSLAEADContext::SSLAEADContext(result, *a1);
  }

  return result;
}

uint64_t bssl::ssl_session_protocol_version(bssl *this, const ssl_session_st *a2)
{
  v3 = -21846;
  if ((bssl::ssl_protocol_version_from_wire(&v3, *(this + 2)) & 1) == 0)
  {
    bssl::ssl_session_protocol_version();
  }

  return v3;
}

const EVP_MD *bssl::ssl_session_get_digest(bssl *this, const ssl_session_st *a2)
{
  v3 = bssl::ssl_session_protocol_version(this, a2);
  v5 = *(this + 25);

  return bssl::ssl_get_handshake_digest(v3, v5, v4);
}

uint64_t bssl::ssl_handshake_session(void *a1)
{
  result = a1[192];
  if (!result)
  {
    return *(*a1 + 104);
  }

  return result;
}

uint64_t boringssl_session_is_eap_configured(uint64_t a1)
{
  if (a1 && *a1 == -1252936367 && (v1 = *(a1 + 8)) != 0)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 1;
    v2 = *(v1 + 504);
    nw_protocol_options_access_handle();
    v3 = *(v6 + 24);
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void sub_1A901D378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL __boringssl_session_is_eap_configured_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a2 + 368) != 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return a2 != 0;
}

BOOL CBS_peek_asn1_tag(__int128 *a1, int a2)
{
  v6 = *a1;
  v5 = -1431655766;
  return parse_asn1_tag(&v6, &v5) && v5 == a2;
}

uint64_t cbs_get_any_asn1_element(__int128 *a1, void *a2, _DWORD *a3, unint64_t *a4, _DWORD *a5, _DWORD *a6, int a7)
{
  v31 = *a1;
  if (a7)
  {
    *a5 = 0;
    *a6 = 0;
  }

  else
  {
    if (a5)
    {
      cbs_get_any_asn1_element_cold_1();
    }

    if (a6)
    {
      cbs_get_any_asn1_element_cold_2();
    }
  }

  v30 = -1431655766;
  result = parse_asn1_tag(&v31, &v30);
  if (result)
  {
    if (a3)
    {
      *a3 = v30;
    }

    if (!*(&v31 + 1))
    {
      return 0;
    }

    v15 = (v31 + 1);
    v16 = *v31;
    v17 = *(a1 + 1);
    v18 = v17 - (*(&v31 + 1) - 1);
    if ((*v31 & 0x80000000) == 0)
    {
      v19 = v18 + v16;
      if (!a4)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v23 = v16 & 0x7F;
    if (a7)
    {
      if (!v23 && (v30 & 0x20000000) != 0)
      {
        if (a4)
        {
          *a4 = v18;
          v17 = *(a1 + 1);
        }

        *a5 = 1;
        *a6 = 1;
        v29 = v17 - v18;
        if (v17 < v18)
        {
          return 0;
        }

        v22 = *a1;
        *a1 += v18;
        *(a1 + 1) = v29;
        if (a2)
        {
LABEL_15:
          *a2 = v22;
          a2[1] = v18;
        }

        return 1;
      }
    }

    v25 = (v23 - 5) >= 0xFFFFFFFC && *(&v31 + 1) - 1 >= v23;
    if (!v25)
    {
      return 0;
    }

    v26 = 0;
    v27 = v23;
    do
    {
      v28 = *v15++;
      v26 = v28 | (v26 << 8);
      --v27;
    }

    while (v27);
    if (v26 > 0x7F)
    {
      if (v26 >> (8 * v23 - 8))
      {
        goto LABEL_42;
      }

      if (!a7)
      {
        return 0;
      }
    }

    else
    {
      if (!a7)
      {
        return 0;
      }

      *a5 = 1;
      if (v26 >> (8 * v23 - 8))
      {
LABEL_42:
        v18 += v23;
        if (!__CFADD__(v26, v18))
        {
          v19 = v26 + v18;
          if (!a4)
          {
LABEL_12:
            v20 = *(a1 + 1);
            v25 = v20 >= v19;
            v21 = v20 - v19;
            if (!v25)
            {
              return 0;
            }

            v22 = *a1;
            *a1 += v19;
            *(a1 + 1) = v21;
            v18 = v19;
            if (a2)
            {
              goto LABEL_15;
            }

            return 1;
          }

LABEL_11:
          *a4 = v18;
          goto LABEL_12;
        }

        return 0;
      }
    }

    *a5 = 1;
    goto LABEL_42;
  }

  return result;
}

uint64_t parse_asn1_tag(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v4 = (*a1)++;
  a1[1] = v2 - 1;
  v5 = *v4;
  v6 = v5 & 0x1F;
  if (v6 != 31 || (v10 = 0xAAAAAAAAAAAAAAAALL, v7 = parse_base128_integer(a1, &v10), result = 0, v7) && (v6 = v10, v10 - 31 <= 0x1FFFFFE0))
  {
    v9 = v6 | (v5 << 24) & 0xE0000000;
    if ((v9 & 0xDFFFFFFF) != 0)
    {
      *a2 = v9;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CBS_get_optional_asn1(__int128 *a1, void *a2, int *a3, int a4)
{
  v11 = *a1;
  v10 = -1431655766;
  v8 = 0;
  if (!parse_asn1_tag(&v11, &v10) || v10 != a4 || (v8 = 1, result = cbs_get_asn1(a1, a2, a4, 1), result))
  {
    if (a3)
    {
      *a3 = v8;
    }

    return 1;
  }

  return result;
}

uint64_t cbs_get_asn1(__int128 *a1, void *a2, int a3, int a4)
{
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v15 = -1431655766;
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = v14;
  }

  v14[0] = 0xAAAAAAAAAAAAAAAALL;
  v14[1] = 0xAAAAAAAAAAAAAAAALL;
  any_asn1_element = cbs_get_any_asn1_element(a1, v7, &v15, &v16, 0, 0, 0);
  result = 0;
  if (any_asn1_element && v15 == a3)
  {
    if (a4)
    {
      v10 = v14;
      if (a2)
      {
        v10 = a2;
      }

      v11 = v10[1];
      v12 = v11 >= v16;
      v13 = v11 - v16;
      if (!v12)
      {
        cbs_get_asn1_cold_1();
      }

      *v7 += v16;
      v10[1] = v13;
    }

    return 1;
  }

  return result;
}

uint64_t bssl::ssl_cert_check_key_usage(__int128 *a1, unsigned int a2)
{
  v13 = *a1;
  memset(v12, 170, sizeof(v12));
  v11 = -1431655766;
  if (bssl::ssl_cert_skip_to_spki(&v13, &v12[1]) && CBS_get_asn1(&v12[1], 0, 536870928) && CBS_get_optional_asn1(&v12[1], 0, 0, -2147483647) && CBS_get_optional_asn1(&v12[1], 0, 0, -2147483646) && CBS_get_optional_asn1(&v12[1], v12, &v11, -1610612733))
  {
    if (!v11)
    {
      return 1;
    }

    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    if (CBS_get_asn1(v12, &v10, 536870928))
    {
      if (*(&v10 + 1))
      {
        while (1)
        {
          memset(v9, 170, sizeof(v9));
          *&v8 = 0xAAAAAAAAAAAAAAAALL;
          *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
          if (!CBS_get_asn1(&v10, &v9[1], 536870928) || !CBS_get_asn1(&v9[1], v9, 6) || CBS_peek_asn1_tag(&v9[1], 1) && !CBS_get_asn1(&v9[1], 0, 1) || !CBS_get_asn1(&v9[1], &v8, 4) || *(&v9[1] + 1))
          {
            v5 = 272;
            v6 = 460;
            goto LABEL_23;
          }

          if (*(&v9[0] + 1) == 3 && **&v9[0] == 7509 && *(*&v9[0] + 2) == 15)
          {
            break;
          }

          if (!*(&v10 + 1))
          {
            return 1;
          }
        }

        v7[0] = 0xAAAAAAAAAAAAAAAALL;
        v7[1] = 0xAAAAAAAAAAAAAAAALL;
        if (!CBS_get_asn1(&v8, v7, 3) || *(&v8 + 1))
        {
          v5 = 272;
          v6 = 474;
          goto LABEL_23;
        }

        if (!CBS_is_valid_asn1_bitstring(v7))
        {
          v5 = 272;
          v6 = 481;
          goto LABEL_23;
        }

        if (!CBS_asn1_bitstring_has_bit(v7, a2))
        {
          v5 = 302;
          v6 = 486;
          goto LABEL_23;
        }
      }

      return 1;
    }

    v5 = 272;
    v6 = 448;
  }

  else
  {
    v5 = 272;
    v6 = 438;
  }

LABEL_23:
  ERR_put_error(16, 0, v5, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_cert.cc", v6);
  return 0;
}

uint64_t bssl::tls_set_write_state(bssl *a1, ssl_st *a2, bssl::SSLAEADContext **a3, uint64_t a4, uint64_t a5)
{
  result = bssl::tls_flush_pending_hs_data(a1, a2);
  if (result)
  {
    v11 = *(a1 + 21);
    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = *(*(a1 + 6) + 280);
    if (v12 && (*(v12 + 1602) & 8) != 0 || (result = (*(v11 + 8))(a1, a2, **a3, a4, a5), result))
    {
      if (a2 == 1)
      {
        return 1;
      }

LABEL_7:
      v13 = *(a1 + 6);
      *(v13 + 8) = 0;
      v14 = *a3;
      *a3 = 0;
      std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100]((v13 + 272), v14);
      *(*(a1 + 6) + 204) = a2;
      return 1;
    }
  }

  return result;
}

void bssl::SSLAEADContext::~SSLAEADContext(bssl::SSLAEADContext *this)
{
  std::unique_ptr<bssl::RecordNumberEncrypter,bssl::internal::Deleter>::reset[abi:ne200100](this + 76, 0);
  *(this + 604) = 0;
  EVP_AEAD_CTX_cleanup(this + 8);
}

void bssl::tls_next_message(bssl *this, ssl_st *a2)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[0] = v3;
  v11[1] = v3;
  if (!bssl::tls_get_message(this, v11) || (v4 = *(this + 6), (v5 = *(v4 + 224)) == 0) || (v6 = *v5, *v5 < v12))
  {
    bssl::tls_next_message();
  }

  if (*v5 == v12)
  {
    v7 = *v5;
  }

  else
  {
    memmove(*(v5 + 8), (*(v5 + 8) + v12), *v5 - v12);
    v7 = v12;
    v4 = *(this + 6);
    v5 = *(v4 + 224);
    v6 = *v5;
  }

  *v5 = v6 - v7;
  *(v4 + 222) &= ~4u;
  *(*(this + 6) + 222) &= ~8u;
  if (!SSL_in_init(this))
  {
    v8 = *(this + 6);
    v10 = *(v8 + 224);
    v9 = (v8 + 224);
    if (!*v10)
    {
      std::unique_ptr<buf_mem_st,bssl::internal::Deleter>::reset[abi:ne200100](v9, 0);
    }
  }
}

BOOL bssl::ssl_check_message_type(bssl *a1, uint64_t a2, int a3)
{
  v4 = *(a2 + 1);
  if (v4 != a3)
  {
    bssl::ssl_send_alert(a1, 2, 10);
    ERR_put_error(16, 0, 223, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake.cc", 215);
    ERR_add_error_dataf("got type %d, wanted type %d", v6, v7, v8, v9, v10, v11, v12, *(a2 + 1));
  }

  return v4 == a3;
}

void std::unique_ptr<bssl::RecordNumberEncrypter,bssl::internal::Deleter>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    (**v2)(v2);
    OPENSSL_free(v2);
  }
}

uint64_t EVP_AEAD_CTX_cleanup(uint64_t result)
{
  if (*result)
  {
    v1 = result;
    result = (*(*result + 24))(result);
    *v1 = 0;
  }

  return result;
}

BOOL CBS_asn1_bitstring_has_bit(uint64_t a1, unsigned int a2)
{
  result = CBS_is_valid_asn1_bitstring(a1);
  if (result)
  {
    v5 = (a2 >> 3) + 1;
    if (*(a1 + 8) <= v5)
    {
      return 0;
    }

    else
    {
      return (*(*a1 + v5) >> (~a2 & 7)) & 1;
    }
  }

  return result;
}

uint64_t bssl::ssl_cert_skip_to_spki(__int128 *a1, __int128 *a2)
{
  v6 = *a1;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  asn1 = CBS_get_asn1(&v6, &v5, 536870928);
  result = 0;
  if (asn1)
  {
    if (!*(&v6 + 1))
    {
      result = CBS_get_asn1(&v5, a2, 536870928);
      if (result)
      {
        result = CBS_get_optional_asn1(a2, 0, 0, -1610612736);
        if (result)
        {
          result = CBS_get_asn1(a2, 0, 2);
          if (result)
          {
            result = CBS_get_asn1(a2, 0, 536870928);
            if (result)
            {
              result = CBS_get_asn1(a2, 0, 536870928);
              if (result)
              {
                result = CBS_get_asn1(a2, 0, 536870928);
                if (result)
                {
                  return CBS_get_asn1(a2, 0, 536870928) != 0;
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

void HMAC_CTX_cleanup(HMAC_CTX *ctx)
{
  EVP_MD_CTX_cleanup(&ctx->i_ctx);
  EVP_MD_CTX_cleanup(&ctx->o_ctx);
  EVP_MD_CTX_cleanup(&ctx->md_ctx);

  OPENSSL_cleanse(ctx, 0x68uLL);
}

uint64_t tls1_P_hash(_BYTE *a1, unint64_t a2, EVP_MD *md, const void *a4, int a5, const unsigned __int8 *a6, size_t a7, const unsigned __int8 *a8, size_t len, const unsigned __int8 *a10, size_t a11)
{
  v51 = *MEMORY[0x1E69E9840];
  v48 = 0xAAAAAAAAAAAAAAAALL;
  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v46 = v19;
  v47 = v19;
  v44 = v19;
  v45 = v19;
  *&v42[57] = v19;
  v43 = v19;
  *&v42[53] = 0xAAAAAAAAAAAAAAAALL;
  *&v42[45] = v19;
  *&v42[49] = v19;
  *&v42[37] = v19;
  *&v42[41] = v19;
  *&v42[33] = v19;
  *&v42[29] = v19;
  *&v42[25] = 0xAAAAAAAAAAAAAAAALL;
  *&v42[17] = v19;
  *&v42[21] = v19;
  *&v42[9] = v19;
  *&v42[13] = v19;
  *&v42[1] = v19;
  *&v42[5] = v19;
  v50[2] = v19;
  v50[3] = v19;
  v50[0] = v19;
  v50[1] = v19;
  v42[0] = -1431655766;
  v20 = EVP_MD_size(md);
  HMAC_CTX_init(&v42[57]);
  HMAC_CTX_init(&v42[29]);
  HMAC_CTX_init(&v42[1]);
  HMAC_Init_ex(&v42[1], a4, a5, md, 0);
  if (v21)
  {
    if (HMAC_CTX_copy_ex(&v42[57], &v42[1]))
    {
      HMAC_Update(&v42[57], a6, a7);
      if (v22)
      {
        HMAC_Update(&v42[57], a8, len);
        if (v23)
        {
          HMAC_Update(&v42[57], a10, a11);
          if (v24)
          {
            HMAC_Final(&v42[57], v50, v42);
            if (v25)
            {
              while (1)
              {
                v41 = -1431655766;
                *&v26 = 0xAAAAAAAAAAAAAAAALL;
                *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v49[2] = v26;
                v49[3] = v26;
                v49[0] = v26;
                v49[1] = v26;
                if (!HMAC_CTX_copy_ex(&v42[57], &v42[1]))
                {
                  break;
                }

                HMAC_Update(&v42[57], v50, v42[0]);
                if (!v27 || a2 > v20 && !HMAC_CTX_copy_ex(&v42[29], &v42[57]))
                {
                  break;
                }

                HMAC_Update(&v42[57], a6, a7);
                if (!v28)
                {
                  break;
                }

                HMAC_Update(&v42[57], a8, len);
                if (!v29)
                {
                  break;
                }

                HMAC_Update(&v42[57], a10, a11);
                if (!v30)
                {
                  break;
                }

                HMAC_Final(&v42[57], v49, &v41);
                if (!v31)
                {
                  break;
                }

                if (v20 != v41)
                {
                  tls1_P_hash_cold_1();
                }

                if (a2 >= v20)
                {
                  v32 = v20;
                }

                else
                {
                  v32 = a2;
                }

                if (v32)
                {
                  v33 = v49;
                  v34 = a1;
                  v35 = v32;
                  do
                  {
                    v36 = *v33++;
                    *v34++ ^= v36;
                    --v35;
                  }

                  while (v35);
                }

                a2 -= v32;
                if (!a2)
                {
                  v38 = 1;
                  goto LABEL_26;
                }

                HMAC_Final(&v42[29], v50, v42);
                if (!v37)
                {
                  break;
                }

                a1 += v32;
              }
            }
          }
        }
      }
    }
  }

  v38 = 0;
LABEL_26:
  OPENSSL_cleanse(v50, 0x40uLL);
  HMAC_CTX_cleanup(&v42[57]);
  HMAC_CTX_cleanup(&v42[29]);
  HMAC_CTX_cleanup(&v42[1]);
  v39 = *MEMORY[0x1E69E9840];
  return v38;
}

uint64_t HMAC_CTX_copy_ex(uint64_t a1, uint64_t a2)
{
  result = EVP_MD_CTX_copy_ex((a1 + 40), (a2 + 40));
  if (result)
  {
    result = EVP_MD_CTX_copy_ex((a1 + 72), (a2 + 72));
    if (result)
    {
      result = EVP_MD_CTX_copy_ex((a1 + 8), (a2 + 8));
      if (result)
      {
        *a1 = *a2;
        return 1;
      }
    }
  }

  return result;
}

void HMAC_Final(HMAC_CTX *ctx, unsigned __int8 *md, unsigned int *len)
{
  v13 = *MEMORY[0x1E69E9840];
  s = -1431655766;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v6;
  v12 = v6;
  *mda = v6;
  v10 = v6;
  if (!EVP_DigestFinal_ex(&ctx->md_ctx, mda, &s) || !EVP_MD_CTX_copy_ex(&ctx->md_ctx, &ctx->o_ctx) || !EVP_DigestUpdate(&ctx->md_ctx, mda, s) || !EVP_DigestFinal_ex(&ctx->md_ctx, md, len))
  {
    *len = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
}

void HMAC_CTX_init(HMAC_CTX *ctx)
{
  ctx->md = 0;
  p_md_ctx = &ctx->md_ctx;
  EVP_MD_CTX_init(&ctx->i_ctx);
  EVP_MD_CTX_init(&ctx->o_ctx);

  EVP_MD_CTX_init(p_md_ctx);
}

uint64_t bssl::tls1_generate_master_secret(uint64_t *a1, _BYTE *a2, uint64_t a3, char *a4, unint64_t a5)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3 != 48)
  {
    abort();
  }

  if (*(a1 + 1602))
  {
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v19 = v12;
    v20 = v12;
    *v17 = v12;
    v18 = v12;
    v16 = 0xAAAAAAAAAAAAAAAALL;
    if (!bssl::SSLTranscript::GetHash((a1 + 53), v17, &v16))
    {
LABEL_8:
      result = 0;
      goto LABEL_9;
    }

    v13 = bssl::SSLTranscript::Digest((a1 + 53));
    v11 = CRYPTO_tls1_prf(v13, a2, 0x30uLL, a4, a5, "extended master secret", 0x16uLL, v17, v16, 0, 0);
  }

  else
  {
    v9 = *a1;
    v10 = bssl::SSLTranscript::Digest((a1 + 53));
    v11 = CRYPTO_tls1_prf(v10, a2, 0x30uLL, a4, a5, "master secret", 0xDuLL, (*(v9 + 48) + 48), 0x20uLL, (*(v9 + 48) + 16), 0x20uLL);
  }

  if (v11 != 1)
  {
    goto LABEL_8;
  }

  result = 1;
LABEL_9:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t bssl::ssl_add_message_cbb(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  if ((*(*a1 + 96))(a1, a2, &v8))
  {
    v3 = *(*a1 + 104);
    OPENSSL_free(0);
    v6 = v8;
    v7 = v9;
    v8 = 0;
    v9 = 0;
    v4 = v3(a1, &v6);
    OPENSSL_free(v6);
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v4 = 0;
  }

  OPENSSL_free(v8);
  return v4;
}

void sub_1A901E7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  bssl::Array<unsigned char>::~Array(&a9);
  bssl::Array<unsigned char>::~Array(&a11);
  _Unwind_Resume(a1);
}

uint64_t bssl::anonymous namespace::X25519KeyShare::Encap(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
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

void EVP_PKEY_CTX_free(EVP_PKEY **a1)
{
  if (a1)
  {
    if (*a1)
    {
      v2 = *&(*a1)->save_parameters;
      if (v2)
      {
        v2(a1);
      }
    }

    EVP_PKEY_free(a1[2]);
    EVP_PKEY_free(a1[3]);

    OPENSSL_free(a1);
  }
}

BOOL EVP_DigestVerifyFinal(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(**(a1 + 16) + 56))
  {
    *&v2 = 0xAAAAAAAAAAAAAAAALL;
    *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&ctx.digest = v2;
    *&ctx.flags = v2;
    v10 = v2;
    v11 = v2;
    *md = v2;
    v9 = v2;
    s = -1431655766;
    EVP_MD_CTX_init(&ctx);
    v3 = EVP_MD_CTX_copy_ex(&ctx, a1) && EVP_DigestFinal_ex(&ctx, md, &s) && EVP_PKEY_verify(*(a1 + 16)) != 0;
    EVP_MD_CTX_cleanup(&ctx);
  }

  else
  {
    ERR_put_error(6, 0, 125, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/digestsign/digestsign.c.inc", 186);
    v3 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t RSA_verify_PKCS1_PSS_mgf1(uint64_t a1, const void *a2, const EVP_MD *a3, const EVP_MD *a4, unsigned __int8 *a5, int a6)
{
  v45 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = a3;
  }

  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&ctx.digest = v12;
  *&ctx.flags = v12;
  EVP_MD_CTX_init(&ctx);
  v13 = EVP_MD_size(a3);
  v14 = v13;
  if (a6 != -2)
  {
    if (a6 == -1)
    {
      a6 = v13;
    }

    else if (a6 <= -3)
    {
      v15 = 138;
      v16 = 232;
LABEL_21:
      ERR_put_error(4, 0, v15, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/rsa/padding.c.inc", v16);
      v23 = 0;
      goto LABEL_22;
    }
  }

  v17 = (BN_num_bits(*(a1 + 8)) - 1) & 7;
  v18 = RSA_size(a1);
  if (*a5 >> v17)
  {
    v15 = 122;
    v16 = 239;
    goto LABEL_21;
  }

  v19 = v18;
  if (v17)
  {
    v20 = 0;
  }

  else
  {
    v20 = -1;
  }

  if (v17)
  {
    v21 = a5;
  }

  else
  {
    v21 = a5 + 1;
  }

  v22 = v18 - (v17 == 0);
  if (v22 < v14 + 2 || (a6 & 0x80000000) == 0 && v22 < v14 + 2 + a6)
  {
    v15 = 113;
    v16 = 249;
    goto LABEL_21;
  }

  if (v21[v22 - 1] != 188)
  {
    v15 = 127;
    v16 = 253;
    goto LABEL_21;
  }

  v39 = v21;
  v27 = v22 + ~v14;
  v28 = OPENSSL_malloc(v27);
  v23 = v28;
  if (!v28 || !PKCS1_MGF1(v28, v27, &v39[v27], v14, v11))
  {
    goto LABEL_22;
  }

  if (v27)
  {
    v29 = v39;
    v30 = v23;
    v31 = v27;
    do
    {
      v32 = *v29++;
      *v30++ ^= v32;
      --v31;
    }

    while (v31);
  }

  if (v17)
  {
    *v23 &= 0xFFu >> (8 - v17);
  }

  v33 = 0;
  do
  {
    v34 = *(v23 + v33);
    v35 = v33 + 1;
    if (v33 >= v27 - 1)
    {
      break;
    }

    ++v33;
  }

  while (!v34);
  if (v34 == 1)
  {
    if (a6 < 0 || ~v14 + v20 + v19 - a6 == v35)
    {
      *&v38 = 0xAAAAAAAAAAAAAAAALL;
      *(&v38 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v43 = v38;
      v44 = v38;
      *md = v38;
      v42 = v38;
      if (!EVP_DigestInit_ex(&ctx, a3, 0) || !EVP_DigestUpdate(&ctx, &kPSSZeroes, 8uLL) || !EVP_DigestUpdate(&ctx, a2, v14) || !EVP_DigestUpdate(&ctx, v23 + v35, v27 - v35) || !EVP_DigestFinal_ex(&ctx, md, 0))
      {
        goto LABEL_22;
      }

      if (!v14 || !memcmp(md, &v39[v27], v14))
      {
        v24 = 1;
        goto LABEL_23;
      }

      v36 = 105;
      v37 = 298;
    }

    else
    {
      v36 = 138;
      v37 = 286;
    }
  }

  else
  {
    v36 = 139;
    v37 = 280;
  }

  ERR_put_error(4, 0, v36, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/rsa/padding.c.inc", v37);
LABEL_22:
  v24 = 0;
LABEL_23:
  OPENSSL_free(v23);
  EVP_MD_CTX_cleanup(&ctx);
  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

int PKCS1_MGF1(unsigned __int8 *mask, uint64_t len, const unsigned __int8 *seed, uint64_t seedlen, const EVP_MD *dgst)
{
  v24 = *MEMORY[0x1E69E9840];
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&ctx.digest = v10;
  *&ctx.flags = v10;
  EVP_MD_CTX_init(&ctx);
  v11 = EVP_MD_size(dgst);
  if (len)
  {
    v12 = v11;
    v13 = 0;
    while (1)
    {
      d = bswap32(v13);
      if (!EVP_DigestInit_ex(&ctx, dgst, 0) || !EVP_DigestUpdate(&ctx, seed, seedlen) || !EVP_DigestUpdate(&ctx, &d, 4uLL))
      {
        break;
      }

      if (len < v12)
      {
        *&v14 = 0xAAAAAAAAAAAAAAAALL;
        *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v22 = v14;
        v23 = v14;
        *md = v14;
        v21 = v14;
        if (EVP_DigestFinal_ex(&ctx, md, 0))
        {
          memcpy(mask, md, len);
          goto LABEL_12;
        }

        break;
      }

      if (!EVP_DigestFinal_ex(&ctx, mask, 0))
      {
        break;
      }

      mask += v12;
      ++v13;
      len -= v12;
      if (!len)
      {
        goto LABEL_12;
      }
    }

    v15 = 0;
  }

  else
  {
LABEL_12:
    v15 = 1;
  }

  EVP_MD_CTX_cleanup(&ctx);
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t RSA_verify_pss_mgf1(uint64_t a1, const void *a2, uint64_t a3, EVP_MD *md, const EVP_MD *a5, int a6, uint64_t a7, uint64_t a8)
{
  if (EVP_MD_size(md) == a3)
  {
    if (a1)
    {
      v15 = BN_num_bytes(*(a1 + 8));
    }

    else
    {
      v15 = 0;
    }

    v25 = v15;
    v18 = malloc_type_malloc(v15, 0x100A789FuLL);
    if (v18)
    {
      v20 = v18;
      if (RSA_verify_raw(a1, &v25, v18, v19, a7, a8, 3))
      {
        v21 = v25;
        if (a1)
        {
          v22 = BN_num_bytes(*(a1 + 8));
        }

        else
        {
          v22 = 0;
        }

        if (v21 == v22)
        {
          v23 = RSA_verify_PKCS1_PSS_mgf1(a1, a2, md, a5, v20, a6);
LABEL_17:
          free(v20);
          return v23;
        }

        ERR_put_error(4, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_rsa.m", 372);
      }

      v23 = 0;
      goto LABEL_17;
    }

    v16 = 65;
    v17 = 362;
  }

  else
  {
    v16 = 125;
    v17 = 355;
  }

  ERR_put_error(4, 0, v16, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_rsa.m", v17);
  return 0;
}

BOOL bssl::ssl_public_key_verify(bssl *a1, uint64_t a2, uint64_t a3, evp_pkey_st *a4, EVP_PKEY *a5, const void *a6, size_t a7)
{
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v17.digest = v14;
  *&v17.flags = v14;
  EVP_MD_CTX_init(&v17);
  v15 = (bssl::setup_ctx(a1, &v17, a5, a4, 1) & 1) != 0 && EVP_DigestVerify(&v17, a2, a3, a6, a7) != 0;
  EVP_MD_CTX_cleanup(&v17);
  return v15;
}

uint64_t EVP_AEAD_CTX_init_with_direction(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*a2 != a4)
  {
    ERR_put_error(30, 0, 120, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/cipher/aead.c.inc", 78);
    goto LABEL_6;
  }

  *a1 = a2;
  v7 = *(a2 + 1);
  if (v7)
  {
    result = v7(a1, a3, a4, a5);
    if (result)
    {
      return result;
    }

    goto LABEL_6;
  }

  result = (*(a2 + 2))(a1, a3, a4, a5, a6);
  if (!result)
  {
LABEL_6:
    result = 0;
    *a1 = 0;
  }

  return result;
}

void std::unique_ptr<bssl::AES128RecordNumberEncrypter,bssl::internal::Deleter>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    (**v2)(v2);
    OPENSSL_free(v2);
  }
}

uint64_t CRYPTO_BUFFER_init_CBS(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  return result;
}

void BN_free(BIGNUM *a)
{
  if (a)
  {
    flags = a->flags;
    if ((flags & 2) == 0)
    {
      OPENSSL_free(a->d);
      flags = a->flags;
    }

    if (flags)
    {

      OPENSSL_free(a);
    }

    else
    {
      a->d = 0;
    }
  }
}

void pkey_rsa_cleanup(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    BN_free(*(v1 + 8));
    OPENSSL_free(*(v1 + 48));
    OPENSSL_free(*(v1 + 56));

    OPENSSL_free(v1);
  }
}

int RSA_size(const RSA *a1)
{
  if (a1)
  {
    LODWORD(a1) = BN_num_bytes(a1->version);
  }

  return a1;
}

void EVP_PKEY_free(EVP_PKEY *pkey)
{
  if (pkey && CRYPTO_refcount_dec_and_test_zero(pkey))
  {
    ptr = pkey->pkey.ptr;
    if (ptr)
    {
      v3 = *(ptr + 20);
      if (v3)
      {
        v3(pkey);
        *&pkey->references = 0;
        pkey->save_type = 0;
      }
    }

    OPENSSL_free(pkey);
  }
}

uint64_t aead_aes_gcm_init_with_dir(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  if ((a3 & 0x1FFFFFFFFFFFFFFFLL) != 0x10 && (a3 & 0x1FFFFFFFFFFFFFFFLL) != 0x20)
  {
    v7 = 102;
    v8 = 215;
    goto LABEL_11;
  }

  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = 16;
  }

  if (v6 >= 0x11)
  {
    v7 = 116;
    v8 = 224;
LABEL_11:
    ERR_put_error(30, 0, v7, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_aes.m", v8);
    return 0;
  }

  if (a5 == 1)
  {
    v9 = ccaes_gcm_encrypt_mode();
  }

  else
  {
    v9 = ccaes_gcm_decrypt_mode();
  }

  *(a1 + 8) = v9;
  v10 = malloc_type_malloc(*v9, 0xF5EACA89uLL);
  *(a1 + 16) = v10;
  if (!v10 || (v11 = *(a1 + 8), ccgcm_init()))
  {
    free((a1 + 8));
    return 0;
  }

  *(a1 + 24) = v6;
  *(a1 + 48) = 0;
  result = 1;
  *(a1 + 64) = 1;
  *(a1 + 576) = v6;
  return result;
}

uint64_t bssl::ssl_open_change_cipher_spec(void *a1, void *a2, _BYTE *a3)
{
  *a2 = 0;
  v4 = a1[6];
  if (*(v4 + 172) == 2)
  {
    ERR_restore_state(*(v4 + 184));
    *a3 = 0;
  }

  else
  {
    result = (*(*a1 + 56))(a1);
    if (result != 4)
    {
      return result;
    }

    v7 = a1[6];
    *(v7 + 172) = 2;
    v8 = ERR_save_state();
    std::unique_ptr<err_save_state_st,bssl::internal::Deleter>::reset[abi:ne200100]((v7 + 184), v8);
  }

  return 4;
}

int BN_num_bits(const BIGNUM *a)
{
  top = a->top;
  if (top >= 1)
  {
    d = a->d;
    while (!a->d[top - 1])
    {
      v3 = __OFSUB__(top--, 1);
      if ((top < 0) ^ v3 | (top == 0))
      {
        return 0;
      }
    }

    return BN_num_bits_word(d[top - 1]) + ((top - 1) << 6);
  }

  if (top)
  {
    d = a->d;
    return BN_num_bits_word(d[top - 1]) + ((top - 1) << 6);
  }

  return 0;
}

uint64_t RSA_verify_raw(uint64_t a1, void *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (!a1)
  {
    v11 = 67;
    v12 = 234;
    goto LABEL_19;
  }

  if (BN_num_bytes(*(a1 + 8)) >= 0x401)
  {
    v11 = 500;
    v12 = 238;
LABEL_19:
    ERR_put_error(4, 0, v11, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_rsa.m", v12);
    return 0;
  }

  v27 = 0xAAAAAAAAAAAAAAAALL;
  v28 = 0;
  v13 = *(a1 + 8);
  if (!v13 || !*(a1 + 16))
  {
    v11 = 144;
    v12 = 247;
    goto LABEL_19;
  }

  v14 = BN_num_bytes(v13);
  if (!RSA_public_key_to_bytes(&v28, &v27, a1) || !v28)
  {
    return 0;
  }

  v15 = ccrsa_import_pub_n();
  v16 = malloc_type_malloc(24 * v15 + 40, 0x10600407F0B3959uLL);
  if (!v16)
  {
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      RSA_verify_raw_cold_2();
    }

    return 0;
  }

  v17 = v16;
  *v16 = v15;
  v18 = malloc_type_malloc(8 * v15, 0x100004000313F17uLL);
  v19 = malloc_type_malloc(8 * v15, 0x100004000313F17uLL);
  v20 = v19;
  if (!v18 || !v19)
  {
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      RSA_verify_raw_cold_1();
    }

    free(v17);
    if (v18)
    {
      free(v18);
    }

    if (v20)
    {
      free(v20);
    }

    return 0;
  }

  ccn_zero();
  ccn_zero();
  ccn_read_uint();
  if (ccrsa_import_pub() || ccrsa_pub_crypt())
  {
    goto LABEL_14;
  }

  if (a7 == 3)
  {
    *a2 = v14;
    ccn_write_uint_padded();
    v23 = a3;
    if ((v14 & 0x80000000) == 0)
    {
LABEL_34:
      *a2 = v14;
      v21 = 1;
LABEL_43:
      if (v23 != a3 && v23)
      {
        free(v23);
      }

      goto LABEL_15;
    }

    goto LABEL_39;
  }

  v24 = malloc_type_malloc(v14, 0xDF2917AEuLL);
  if (v24)
  {
    v23 = v24;
    *a2 = v14;
    ccn_write_uint_padded();
    if (a7 != 1)
    {
      v25 = 143;
      v26 = 314;
      goto LABEL_42;
    }

    if (RSA_padding_check_PKCS1_type_1(a3, a2, v14, v23, v14))
    {
      v14 = *a2;
      if ((*a2 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_39:
    v25 = 136;
    v26 = 319;
LABEL_42:
    ERR_put_error(4, 0, v25, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_rsa.m", v26);
    v21 = 0;
    goto LABEL_43;
  }

  ERR_put_error(4, 0, 65, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_rsa.m", 295);
LABEL_14:
  v21 = 0;
LABEL_15:
  if (v28)
  {
    OPENSSL_free(v28);
    v28 = 0;
  }

  free(v18);
  free(v20);
  free(v17);
  return v21;
}

BOOL CBS_is_valid_asn1_bitstring(unsigned __int8 **a1)
{
  v1 = a1[1];
  if (!v1)
  {
    return 0;
  }

  v2 = **a1;
  if (v2 > 7)
  {
    return 0;
  }

  if (!**a1)
  {
    return 1;
  }

  if (v1 == 1)
  {
    return 0;
  }

  return (v1[*a1 - 1] & ~(-1 << v2)) == 0;
}

int BN_num_bits_word(unint64_t a1)
{
  v1 = HIDWORD(a1);
  if (!HIDWORD(a1))
  {
    v1 = a1;
  }

  v2 = (a1 != 0) | (32 * (HIDWORD(a1) != 0)) | (16 * (v1 >> 16 != 0));
  if (v1 >> 16)
  {
    v1 >>= 16;
  }

  v3 = v2 | (8 * (v1 > 0xFF));
  if (v1 > 0xFF)
  {
    v1 >>= 8;
  }

  v4 = v3 | (4 * (v1 > 0xF));
  if (v1 > 0xF)
  {
    v1 >>= 4;
  }

  v5 = v4 | (2 * (v1 > 3));
  if (v1 > 3)
  {
    v1 >>= 2;
  }

  if (v1 <= 1)
  {
    return v5;
  }

  else
  {
    return v5 + 1;
  }
}

uint64_t bssl::tls_open_change_cipher_spec(bssl *a1, unsigned __int8 **a2, ssl_st *a3, unsigned __int16 *a4, unint64_t a5)
{
  v11 = -86;
  v9 = 0;
  v10 = 0;
  result = bssl::tls_open_record(a1, &v11, &v9, a2, a3, a4, a5);
  if (!result)
  {
    if (v11 == 20)
    {
      if (v10 == 1 && *v9 == 1)
      {
        bssl::ssl_do_msg_callback(a1, 0, 20, v9, 1);
        return 0;
      }

      ERR_put_error(16, 0, 103, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/s3_pkt.cc", 403);
      v8 = 47;
    }

    else
    {
      ERR_put_error(16, 0, 225, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/s3_pkt.cc", 397);
      v8 = 10;
    }

    LOBYTE(a3->version) = v8;
    return 4;
  }

  return result;
}

uint64_t bssl::tls1_record_handshake_hashes_for_channel_id(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  if (*(*this + 104))
  {
    return 0;
  }

  v6 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *(this + 192);
  v5 = bssl::SSLTranscript::DigestLen((this + 424));
  if (v5 >= 0x41)
  {
    abort();
  }

  *(v4 + 368) = v5;
  result = bssl::SSLTranscript::GetHash((this + 424), (*(this + 192) + 304), &v6);
  if (result)
  {
    if (v6 != *(*(this + 192) + 368))
    {
      bssl::tls1_record_handshake_hashes_for_channel_id();
    }
  }

  return result;
}

uint64_t __nw_protocol_boringssl_input_available_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  nw_frame_unclaimed_bytes();
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  v6 = *(v4 + 8);
  v7 = (*(*(v5 + 232) + 16))();
  v8 = *v4;
  if ((v7 & 1) == 0 && (!v8 || (*(v8 + 435) & 1) == 0))
  {
    __nw_protocol_boringssl_input_available_block_invoke_cold_1(v4, v8, &v10);
  }

  nw_frame_array_remove();
  nw_frame_finalize();

  return 1;
}

void *SSL_provide_quic_data(uint64_t a1, int a2, const void *a3, size_t a4)
{
  if (!*(a1 + 168))
  {
    v9 = 66;
    v10 = 854;
    goto LABEL_10;
  }

  v5 = *(a1 + 48);
  if (*(v5 + 200) != a2)
  {
    v9 = 299;
    v10 = 859;
    goto LABEL_10;
  }

  v8 = *(v5 + 224);
  if (v8)
  {
    v8 = *v8;
  }

  if (__CFADD__(v8, a4) || v8 + a4 > SSL_quic_max_handshake_flight_len(a1, a2))
  {
    v9 = 150;
    v10 = 866;
LABEL_10:
    ERR_put_error(16, 0, v9, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_lib.cc", v10);
    return 0;
  }

  return bssl::tls_append_handshake_data(a1, a3, a4);
}

void *__boringssl_context_set_enable_message_mode_block_invoke(uint64_t a1, int a2, const void *a3, size_t a4)
{
  if (a2 <= 1)
  {
    if (a2 == 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = -1431655766;
    }

    if (a2)
    {
      a2 = v5;
    }

    else
    {
      a2 = 0;
    }

    goto LABEL_13;
  }

  if (a2 == 2)
  {
LABEL_13:
    v7 = SSL_provide_quic_data(*(*(a1 + 32) + 392), a2, a3, a4);
    return (v7 != 0);
  }

  if (a2 != 3)
  {
    a2 = -1431655766;
    goto LABEL_13;
  }

  result = SSL_provide_quic_data(*(*(a1 + 32) + 392), 3, a3, a4);
  if (!result)
  {
    return result;
  }

  v7 = SSL_process_quic_post_handshake(*(*(a1 + 32) + 392));
  return (v7 != 0);
}

uint64_t SSL_quic_max_handshake_flight_len(uint64_t a1, int a2)
{
  v2 = 0x4000;
  if (a2 <= 1)
  {
    if (a2)
    {
      return 0;
    }

    return v2;
  }

  if (a2 == 2)
  {
    if (*(a1 + 180))
    {
      if ((*(*(a1 + 8) + 308) & 1) == 0)
      {
        return 0x4000;
      }

      v2 = *(a1 + 152);
    }

    else
    {
      v2 = 2 * *(a1 + 152);
    }

    if (v2 > 0x4000)
    {
      return v2;
    }

    return 0x4000;
  }

  if (a2 != 3)
  {
    return 0;
  }

  return v2;
}

bssl::SSLAEADContext *bssl::SSLAEADContext::CreatePlaceholderForQUIC@<X0>(const ssl_cipher_st *this@<X0>, bssl::SSLAEADContext **a2@<X8>)
{
  v5 = this;
  result = bssl::New<bssl::SSLAEADContext,ssl_cipher_st const*&>(&v5);
  *a2 = result;
  return result;
}

void std::unique_ptr<bssl::AES256RecordNumberEncrypter,bssl::internal::Deleter>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    (**v2)(v2);
    OPENSSL_free(v2);
  }
}

void *boringssl_context_set_encryption_secrets(const SSL *a1)
{
  result = SSL_get_ex_data(a1, 0);
  if (result)
  {
    v2 = result;
    if (*result == -1252936367 && (v3 = result[1]) != 0)
    {
      boringssl_session_update_metadata(result);
      WeakRetained = objc_loadWeakRetained((v3 + 16));
      if (!WeakRetained || (v5 = WeakRetained, v6 = objc_loadWeakRetained((v3 + 16)), v7 = v6[435], v6, v5, (v7 & 1) == 0))
      {
        v8 = objc_loadWeakRetained((v3 + 16));
        if (v8)
        {
          v9 = objc_loadWeakRetained((v3 + 16));
          v10 = (v9[435] & 1) == 0;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          if (g_boringssl_log)
          {
            v11 = g_boringssl_log;
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              boringssl_context_set_encryption_secrets_cold_1((v3 + 16), v2);
            }
          }
        }
      }

      v12 = *(v3 + 504);
      return nw_protocol_options_access_handle();
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *boringssl_context_set_write_secret(const SSL *a1)
{
  v2 = SSL_get_ex_data(a1, 0);
  if (!v2 || *v2 != -1252936367 || !v2[1])
  {
    return 0;
  }

  return boringssl_context_set_encryption_secrets(a1);
}

const SSL *boringssl_session_get_negotiated_protocol_version(const SSL *result)
{
  if (result)
  {
    if (result->version == -1252936367 && (method = result->method) != 0)
    {
      result = method[1].ssl_pending;
      if (result)
      {
        LOWORD(result) = SSL_version(result);
      }
    }

    else
    {
      LOWORD(result) = 0;
    }
  }

  return result;
}

uint64_t boringssl_session_get_negotiated_ciphersuite(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      v2 = *(v1 + 392);
      if (v2)
      {
        result = SSL_get_pending_cipher(*(v1 + 392));
        if (result || (result = SSL_get_current_cipher(v2)) != 0)
        {
          LOWORD(result) = SSL_CIPHER_get_id(result);
        }
      }

      else
      {
        LOWORD(result) = 0;
      }
    }

    else
    {
      LOWORD(result) = 0;
    }
  }

  return result;
}

SSL_CIPHER *__cdecl SSL_get_current_cipher(const SSL *s)
{
  result = SSL_get_session(s);
  if (result)
  {
    return result[2].mask;
  }

  return result;
}

uint64_t boringssl_session_get_negotiated_protocol(uint64_t result, void *a2)
{
  if (result)
  {
    if (*result == -1252936367 && (v4 = *(result + 8)) != 0)
    {
      v7[3] = v2;
      v7[4] = v3;
      v7[0] = 0;
      v6 = 0;
      SSL_get0_alpn_selected(*(v4 + 392), v7, &v6);
      if (a2)
      {
        *a2 = v6;
      }

      return v7[0];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SSL_get0_ocsp_response(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = SSL_get_session(a1);
  if ((*(a1 + 180) & 1) == 0 && (v7 = result) != 0 && (result = *(result + 256)) != 0)
  {
    *a2 = CRYPTO_BUFFER_data(result);
    result = CRYPTO_BUFFER_len(*(v7 + 256));
    *a3 = result;
  }

  else
  {
    *a3 = 0;
    *a2 = 0;
  }

  return result;
}

dispatch_data_t boringssl_context_copy_ocsp_response(uint64_t a1)
{
  result = *(a1 + 392);
  if (result)
  {
    v3 = 0;
    v4 = 0;
    SSL_get0_ocsp_response(result, &v4, &v3);
    result = 0;
    if (v3)
    {
      v2 = v4 == 0;
    }

    else
    {
      v2 = 1;
    }

    if (!v2)
    {
      return dispatch_data_create(v4, v3, 0, 0);
    }
  }

  return result;
}

SSL_SESSION *SSL_get0_peer_certificates(const SSL *a1)
{
  result = SSL_get_session(a1);
  if (result)
  {
    return *&result->sid_ctx[28];
  }

  return result;
}

__CFArray *boringssl_helper_copy_certificates_from_session(void *a1, const SSL *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = 0;
  if (v4 && a2)
  {
    v6 = SSL_get0_peer_certificates(a2);
    if (v6)
    {
      v5 = boringssl_helper_copy_certificates_from_CRYPTO_BUFFERs(v4, v6);
      goto LABEL_21;
    }

    WeakRetained = objc_loadWeakRetained(v4 + 2);
    if (WeakRetained)
    {
      v8 = WeakRetained;
      v9 = objc_loadWeakRetained(v4 + 2);
      v2 = v9[435];

      if (v2)
      {
LABEL_20:
        v5 = 0;
        goto LABEL_21;
      }
    }

    v10 = objc_loadWeakRetained(v4 + 2);
    if (v10)
    {
      v11 = objc_loadWeakRetained(v4 + 2);
      v12 = (v11[435] & 1) == 0;
    }

    else
    {
      v12 = 1;
    }

    v5 = 0;
    if (v12 && g_boringssl_log)
    {
      v13 = g_boringssl_log;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = objc_loadWeakRetained(v4 + 2);
        if (v14)
        {
          v2 = objc_loadWeakRetained(v4 + 2);
          v15 = v2 + 351;
        }

        else
        {
          v15 = &unk_1A9098A9F;
        }

        v16 = objc_loadWeakRetained(v4 + 2);
        v19 = 136446978;
        v20 = "boringssl_helper_copy_certificates_from_session";
        v21 = 1024;
        v22 = 202;
        v23 = 2082;
        v24 = v15;
        v25 = 2048;
        v26 = v16;
        _os_log_impl(&dword_1A8FF5000, v13, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] SSL_get0_peer_certificates returned no certificates", &v19, 0x26u);

        if (v14)
        {
        }
      }

      goto LABEL_20;
    }
  }

LABEL_21:

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t boringssl_session_get_peer_signature_algorithms(uint64_t a1, void *a2)
{
  if (a1 && *a1 == -1252936367 && a2 && (v2 = *(a1 + 8)) != 0 && (v3 = *(v2 + 392)) != 0)
  {
    return SSL_get0_peer_verify_algorithms(v3, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t SSL_get0_peer_verify_algorithms(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 48) + 280);
  if (v2)
  {
    v3 = *(v2 + 664);
    result = *(v2 + 672);
  }

  else
  {
    result = 0;
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void boringssl_session_update_metadata(uint64_t a1)
{
  if (a1 && *a1 == -1252936367)
  {
    v1 = *(a1 + 8);
    if (v1)
    {
      v2 = v1;
      v3 = v2[64];
      v5 = v2;
      v4 = v2;
      nw_protocol_metadata_access_handle();
    }
  }
}

BOOL __boringssl_session_update_metadata_block_invoke(uint64_t a1, uint64_t a2)
{
  v101 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *(a2 + 88);
    *(a2 + 88) = 0;

    v5 = *(a2 + 104);
    *(a2 + 104) = 0;

    v6 = *(a2 + 136);
    *(a2 + 136) = 0;

    v7 = *(a2 + 144);
    *(a2 + 144) = 0;

    v8 = *(a2 + 152);
    *(a2 + 152) = 0;

    v9 = *(a2 + 168);
    *(a2 + 168) = 0;

    v10 = *(a2 + 160);
    *(a2 + 160) = 0;

    v11 = *(a2 + 80);
    *(a2 + 80) = 0;

    v12 = *(a2 + 40);
    if (v12)
    {
      free(v12);
      *(a2 + 40) = 0;
    }

    v13 = *(a2 + 176);
    if (v13)
    {
      free(v13);
      *(a2 + 176) = 0;
    }

    v14 = *(a2 + 48);
    if (v14)
    {
      free(v14);
      *(a2 + 48) = 0;
    }

    *(a2 + 32) = boringssl_session_get_negotiated_protocol_version(*(a1 + 40));
    *(a2 + 34) = boringssl_session_get_negotiated_ciphersuite(*(a1 + 40));
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    *__s1 = 0u;
    v94 = 0u;
    v90 = 0;
    if (boringssl_session_get_negotiated_protocol(*(a1 + 40), &v90))
    {
      __memcpy_chk();
      *(a2 + 40) = strdup(__s1);
    }

    v15 = sec_array_create();
    v16 = *(a2 + 136);
    *(a2 + 136) = v15;

    v17 = boringssl_context_copy_ocsp_response(*(a1 + 32));
    v18 = *(a2 + 136);
    sec_array_append();
    v19 = *(a1 + 32);
    if (!*(v19 + 360))
    {
      v20 = *(v19 + 344) ? CFRetain(*(v19 + 344)) : boringssl_helper_copy_certificates_from_session(v19, *(v19 + 392));
      v21 = v20;
      if (v20)
      {
        v22 = sec_array_create();
        v23 = *(a2 + 88);
        *(a2 + 88) = v22;

        if (CFArrayGetCount(v21) >= 1)
        {
          v24 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v21, v24);
            if (ValueAtIndex)
            {
              v26 = sec_certificate_create(ValueAtIndex);
              if (v26)
              {
                v27 = *(a2 + 88);
                sec_array_append();
              }
            }

            ++v24;
          }

          while (v24 < CFArrayGetCount(v21));
        }

        CFRelease(v21);
      }
    }

    v28 = *(a1 + 40);
    if (v28)
    {
      if (*v28 == -1252936367)
      {
        v29 = *(v28 + 8);
        if (v29)
        {
          if (*(v29 + 336))
          {
            v30 = SecKeyCopySubjectPublicKeyInfo();
            if (v30)
            {
              v31 = v30;
              BytePtr = CFDataGetBytePtr(v30);
              Length = CFDataGetLength(v31);
              v34 = dispatch_data_create(BytePtr, Length, 0, 0);
              v35 = *(a2 + 104);
              *(a2 + 104) = v34;

              CFRelease(v31);
            }
          }
        }
      }
    }

    v89 = 0;
    peer_signature_algorithms = boringssl_session_get_peer_signature_algorithms(*(a1 + 40), &v89);
    if (peer_signature_algorithms && v89)
    {
      v37 = peer_signature_algorithms;
      v38 = xpc_array_create(0, 0);
      v39 = *(a2 + 112);
      *(a2 + 112) = v38;

      v40 = 0;
      v41 = 1;
      do
      {
        xpc_array_set_uint64(*(a2 + 112), 0xFFFFFFFFFFFFFFFFLL, *(v89 + 2 * v40));
        v40 = v41;
      }

      while (v37 > v41++);
    }

    v43 = *(a2 + 368);
    if (v43)
    {
      CFRelease(v43);
    }

    *(a2 + 368) = 0;
    v44 = boringssl_session_export_session_info(*(a1 + 40), *(a1 + 48));

    *(a2 + 368) = v44;
    v45 = boringssl_context_copy_server_requested_CAs(*(a1 + 40));
    if (v45)
    {
      objc_storeStrong((a2 + 144), v45);
    }

    v46 = *(a1 + 40);
    if (v46 && *v46 == -1252936367 && (v47 = *(v46 + 8)) != 0 && (v48 = *(v47 + 392)) != 0 && (size = 0, buffer = 0, SSL_get_peer_quic_transport_params(v48, &buffer, &size), buffer) && size)
    {
      v49 = dispatch_data_create(buffer, size, 0, 0);
      if (v49)
      {
        objc_storeStrong((a2 + 152), v49);
      }
    }

    else
    {
      v49 = 0;
    }

    v50 = *(a1 + 32);
    v51 = *(v50 + 352);
    if (v51)
    {
      v52 = sec_trust_create(v51);
      v53 = *(a2 + 168);
      *(a2 + 168) = v52;

      v50 = *(a1 + 32);
    }

    v54 = *(v50 + 96);
    if (v54)
    {
      v55 = boringssl_identity_copy_sec_identity(v54);
      v56 = *(a2 + 160);
      *(a2 + 160) = v55;

      v57 = *(*(a1 + 32) + 96);
      if (v57)
      {
        v58 = boringssl_identity_copy_certificate_chain(v57);
        v59 = *(a2 + 80);
        *(a2 + 80) = v58;
      }
    }

    negotiated_group = boringssl_session_get_negotiated_group(*(a1 + 40));
    if (negotiated_group)
    {
      *(a2 + 176) = strdup(negotiated_group);
    }

    server_name = boringssl_session_get_server_name(*(a1 + 40));
    if (server_name)
    {
      *(a2 + 48) = strdup(server_name);
    }

    v62 = *(a1 + 40);
    if (v62)
    {
      if (*v62 == -1252936367)
      {
        v62 = *(v62 + 8);
        if (v62)
        {
          LOWORD(v62) = 16 * (*(v62 + 549) & 1);
        }
      }

      else
      {
        LOWORD(v62) = 0;
      }
    }

    v63 = *(a2 + 336) & 0xFFEF | v62;
    *(a2 + 336) = v63;
    v64 = *(a1 + 40);
    if (v64)
    {
      if (*v64 == -1252936367)
      {
        v64 = *(v64 + 8);
        if (v64)
        {
          LODWORD(v64) = (*(v64 + 550) >> 2) & 0x20;
        }
      }

      else
      {
        LOWORD(v64) = 0;
      }
    }

    *(a2 + 336) = v64 | v63 & 0xFFDF;
    if (boringssl_session_has_session_ticket(*(a1 + 40), *(a1 + 48)))
    {
      v65 = 64;
    }

    else
    {
      v65 = 0;
    }

    *(a2 + 336) = *(a2 + 336) & 0xFFBF | v65;
    if (boringssl_session_early_data_accepted(*(a1 + 40)))
    {
      v66 = 8;
    }

    else
    {
      v66 = 0;
    }

    *(a2 + 336) = *(a2 + 336) & 0xFFF7 | v66;
    if (boringssl_session_was_resumed(*(a1 + 40)))
    {
      v67 = 128;
    }

    else
    {
      v67 = 0;
    }

    *(a2 + 336) = *(a2 + 336) & 0xFF7F | v67;
    if (boringssl_session_was_renewed(*(a1 + 40), *(a1 + 48)))
    {
      v68 = 256;
    }

    else
    {
      v68 = 0;
    }

    v69 = *(a2 + 336) & 0xFEFF | v68;
    *(a2 + 336) = v69;
    v70 = *(a1 + 40);
    if (v70)
    {
      if (*v70 == -1252936367)
      {
        v70 = *(v70 + 8);
        if (v70)
        {
          LOWORD(v70) = (*(v70 + 551) & 0x80) << 6;
        }
      }

      else
      {
        LOWORD(v70) = 0;
      }
    }

    *(a2 + 336) = v70 | v69 & 0xDFFF;
    v71 = *(a1 + 40);
    if (v71)
    {
      if (*v71 == -1252936367)
      {
        v72 = *(v71 + 8);
        if (v72)
        {
          v73 = *(v72 + 456);
          *(a2 + 256) = *(v72 + 328);
          v74 = *(v72 + 448);
          v75 = v73 >= v74;
          v76 = v73 - v74;
          if (!v75)
          {
            v76 = -1;
          }

          *(a2 + 248) = v76;
          v72 = *(v72 + 424) - *(v72 + 416);
        }

        else
        {
          *(a2 + 256) = 0;
          *(a2 + 248) = 0;
        }

        *(a2 + 264) = v72;
        v77 = *(v71 + 8);
        if (v77)
        {
          *(a2 + 272) = *(v77 + 464) + *(v77 + 472);
          v77 = *(v77 + 464);
        }

        else
        {
          *(a2 + 272) = 0;
        }

        *(a2 + 280) = v77;
        v78 = *(v71 + 8);
        if (v78)
        {
          *(a2 + 288) = *(v78 + 472);
          v79 = *(v78 + 488);
        }

        else
        {
          v79 = 0;
          *(a2 + 288) = 0;
        }

        *(a2 + 296) = v79;
        v71 = *(v71 + 8);
        if (v71)
        {
          *(a2 + 304) = *(v71 + 480);
          v71 = *(v71 + 496);
        }

        else
        {
          *(a2 + 304) = 0;
        }

LABEL_100:
        *(a2 + 312) = v71;
        uuid_copy((a2 + 64), (*(a1 + 32) + 244));
        v80 = *(*(a1 + 32) + 88);
        if (v80)
        {
          if (*(a2 + 56))
          {
            free(*(a2 + 56));
            *(a2 + 56) = 0;
            v80 = *(*(a1 + 32) + 88);
          }

          *(a2 + 56) = strdup(v80);
        }

        *a2 = *(a1 + 40);
        *(a2 + 8) = boringssl_session_export_secret_data;
        *(a2 + 16) = *(a1 + 40);
        *(a2 + 24) = boringssl_session_copy_serialized_session;
        v81 = *(a1 + 40);
        *(a2 + 344) = boringssl_session_copy_authenticator;
        *(a2 + 352) = boringssl_session_copy_authenticator_trust;
        *(a2 + 360) = v81;
        if (boringssl_session_is_eap_configured(*(a1 + 40)))
        {
          boringssl_session_update_eap_metadata(*(a1 + 40));
        }

        *(a2 + 320) = SSL_negotiated_pake(*(*(a1 + 32) + 392));
        v82 = *(a1 + 40);
        if (v82)
        {
          if (*v82 == -1252936367)
          {
            v82 = *(v82 + 8);
            if (v82)
            {
              LODWORD(v82) = (*(v82 + 552) >> 4) & 4;
            }
          }

          else
          {
            LOBYTE(v82) = 0;
          }
        }

        v83 = *(a2 + 376) & 0xFB | v82;
        *(a2 + 376) = v83;
        v84 = *(a1 + 40);
        if (v84)
        {
          if (*v84 == -1252936367)
          {
            v84 = *(v84 + 8);
            if (v84)
            {
              LOBYTE(v84) = *(v84 + 552) < 0;
            }
          }

          else
          {
            LOBYTE(v84) = 0;
          }
        }

        v85 = v83 & 0xFE | v84;
        *(a2 + 376) = v85;
        v86 = *(a1 + 40);
        if (!v86)
        {
          goto LABEL_121;
        }

        if (*v86 == -1252936367)
        {
          v86 = *(v86 + 8);
          if (!v86)
          {
LABEL_121:
            *(a2 + 376) = v86 | v85 & 0xFD;

            goto LABEL_122;
          }

          if (*(v86 + 552) < 0)
          {
            LODWORD(v86) = (*(v86 + 549) >> 6) & 2;
            goto LABEL_121;
          }
        }

        LOBYTE(v86) = 0;
        goto LABEL_121;
      }

      v71 = 0;
    }

    *(a2 + 256) = 0;
    *(a2 + 248) = 0;
    *(a2 + 264) = 0u;
    *(a2 + 280) = 0u;
    *(a2 + 296) = 0u;
    goto LABEL_100;
  }

LABEL_122:
  result = a2 != 0;
  v88 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SSL_get0_alpn_selected(uint64_t result, void *a2, _DWORD *a3)
{
  v3 = *(result + 48);
  v4 = v3[35];
  if (v4 && (*(v4 + 1601) & 4) != 0 && (*(result + 180) & 1) == 0)
  {
    v8 = *(v4 + 1544);
    v5 = (v8 + 392);
    v6 = (v8 + 400);
  }

  else
  {
    v5 = v3 + 62;
    v6 = v3 + 63;
  }

  v7 = *v6;
  if (v7 >= 0xFFFFFFFF)
  {
    SSL_get0_alpn_selected_cold_1();
  }

  *a2 = *v5;
  *a3 = v7;
  return result;
}

id boringssl_session_export_session_info(uint64_t a1, SSL_SESSION *a2)
{
  if (!a1 || *a1 != -1252936367 || (v2 = *(a1 + 8)) == 0 || (v3 = *(v2 + 392)) == 0 || (session = a2) == 0 && (session = SSL_get_session(v3)) == 0)
  {
    v14 = 0;
    goto LABEL_14;
  }

  ticket_age_add = SSL_SESSION_get_ticket_age_add(session);
  time = SSL_SESSION_get_time(session);
  timeout = SSL_SESSION_get_timeout(session);
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  SSL_SESSION_get0_ticket(session, &v16, &v17);
  if (!v17)
  {
    v8 = 0;
LABEL_18:
    v13 = 0;
    goto LABEL_19;
  }

  v8 = [MEMORY[0x1E695DEF0] dataWithBytes:v16 length:?];
  if (!v8)
  {
    goto LABEL_18;
  }

  master_key = SSL_SESSION_get_master_key(session, 0, 0);
  if (!master_key)
  {
    goto LABEL_18;
  }

  v10 = master_key;
  v11 = malloc_type_malloc(master_key, 0x100004077774924uLL);
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = v11;
  SSL_SESSION_get_master_key(session, v11, v10);
  v13 = [MEMORY[0x1E695DEF0] dataWithBytes:v12 length:v10];
  free(v12);
  if (!v13)
  {
LABEL_19:
    v14 = 0;
    goto LABEL_20;
  }

  v14 = [objc_alloc(MEMORY[0x1E697AAB8]) initWithPSK:v13 :v8 :ticket_age_add :time :timeout];
LABEL_20:

LABEL_14:

  return v14;
}

uint64_t SSL_SESSION_get_time(uint64_t s)
{
  if (s)
  {
    return *(s + 192);
  }

  return s;
}

uint64_t SSL_SESSION_get0_ticket(uint64_t result, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = *(result + 232);
  }

  *a3 = *(result + 240);
  return result;
}

id boringssl_context_copy_server_requested_CAs(uint64_t a1)
{
  if (a1 && *a1 == -1252936367 && (v1 = *(a1 + 8)) != 0 && (v2 = *(v1 + 392)) != 0)
  {
    v3 = sec_array_create();
    v4 = SSL_get0_server_requested_CAs(v2);
    if (v4)
    {
      v5 = v4;
      if (EVP_MD_CTX_md(v4))
      {
        if (EVP_MD_CTX_md(v5))
        {
          v6 = 0;
          do
          {
            v7 = OPENSSL_sk_value(v5, v6);
            v8 = CRYPTO_BUFFER_data(v7);
            v9 = CRYPTO_BUFFER_len(v7);
            v10 = dispatch_data_create(v8, v9, 0, 0);
            sec_array_append();

            ++v6;
          }

          while (v6 < EVP_MD_CTX_md(v5));
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t SSL_get0_server_requested_CAs(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 280);
  if (v1)
  {
    return *(v1 + 1488);
  }

  else
  {
    return 0;
  }
}

SSL_SESSION *SSL_get_curve_id(const SSL *a1)
{
  result = SSL_get_session(a1);
  if (result)
  {
    return HIWORD(result->key_arg_length);
  }

  return result;
}

uint64_t boringssl_session_get_negotiated_group(uint64_t a1)
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

  curve_id = SSL_get_curve_id(v3);

  return SSL_get_curve_name(curve_id);
}

uint64_t SSL_get_peer_quic_transport_params(uint64_t result, void *a2, void *a3)
{
  *a2 = *(*(result + 48) + 584);
  *a3 = *(*(result + 48) + 592);
  return result;
}

const SSL *boringssl_session_get_server_name(const SSL *result)
{
  if (result)
  {
    if (result->version == -1252936367 && (method = result->method) != 0)
    {
      result = method[1].ssl_pending;
      if (result)
      {
        if ((BYTE4(method[2].ssl_renegotiate) & 0x10) != 0)
        {
          return SSL_get_servername(result, 0);
        }

        else
        {
          return method->ssl_shutdown;
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

const SSL *boringssl_session_has_session_ticket(const SSL *result, uint64_t a2)
{
  if (result)
  {
    if (result->version == -1252936367 && (method = result->method) != 0)
    {
      if (a2)
      {
        return SSL_SESSION_has_ticket(a2);
      }

      result = method[1].ssl_pending;
      if (result)
      {
        result = SSL_get_session(result);
        a2 = result;
        if (result)
        {
          return SSL_SESSION_has_ticket(a2);
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

uint64_t boringssl_session_early_data_accepted(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      result = *(v1 + 392);
      if (result)
      {
        return SSL_early_data_accepted(result) != 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const SSL *boringssl_session_was_renewed(const SSL *result, uint64_t a2)
{
  if (result)
  {
    if (result->version == -1252936367 && (method = result->method) != 0)
    {
      result = method[1].ssl_pending;
      if (result)
      {
        if (a2)
        {
          return (SSL_SESSION_was_renewed(a2) != 0);
        }

        result = SSL_get_session(result);
        a2 = result;
        if (result)
        {
          return (SSL_SESSION_was_renewed(a2) != 0);
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

uint64_t boringssl_session_was_resumed(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      result = *(v1 + 392);
      if (result)
      {
        return SSL_session_reused(result) != 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SSL_session_reused(uint64_t a1)
{
  v1 = *(a1 + 48);
  if ((*(v1 + 222) & 0x20) != 0)
  {
    return 1;
  }

  v2 = *(v1 + 280);
  if (v2)
  {
    return (*(v2 + 1600) >> 10) & 1;
  }

  else
  {
    return 0;
  }
}

double EVP_sha384_init()
{
  EVP_sha384_storage = 0x30000002A1;
  dword_1ED4C04C8 = 0;
  qword_1ED4C04D0 = sha384_init;
  qword_1ED4C04D8 = digest_update_wrapper;
  qword_1ED4C04E0 = digest_final_wrapper;
  *&result = 0x40800000080;
  qword_1ED4C04E8 = 0x40800000080;
  return result;
}

SSL_SESSION *__cdecl SSL_get_session(const SSL *ssl)
{
  handshake_func = ssl->handshake_func;
  v2 = *(handshake_func + 59);
  if (v2)
  {
    return v2;
  }

  v3 = *(handshake_func + 35);
  if (!v3)
  {
    SSL_get_session_cold_2();
  }

  if ((*(handshake_func + 111) & 0x10) != 0)
  {
    SSL_get_session_cold_1();
  }

  v2 = v3[193];
  if (v2)
  {
    return v2;
  }

  return bssl::ssl_handshake_session(v3);
}

BOOL __boringssl_context_set_encryption_secrets_block_invoke(uint64_t a1, uint64_t a2)
{
  v69 = *MEMORY[0x1E69E9840];
  if (a2 && *(a2 + 144) && *(a2 + 152))
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = dispatch_data_create(v4, *(a1 + 40), 0, 0);
    }

    else
    {
      v5 = 0;
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = dispatch_data_create(v6, *(a1 + 40), 0, 0);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(a1 + 72);
    if (v8 - 1 >= 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    v10 = MEMORY[0x1AC57F4F0](*(a2 + 144));
    if (v5)
    {
      v11 = *(a1 + 56);
      if (!v11)
      {
        goto LABEL_23;
      }

      WeakRetained = objc_loadWeakRetained((v11 + 16));
      if (!WeakRetained || (v13 = WeakRetained, v14 = objc_loadWeakRetained((*(a1 + 56) + 16)), v15 = v14[435], v14, v13, (v15 & 1) == 0))
      {
        v16 = *(a1 + 56);
        if (!v16)
        {
          goto LABEL_23;
        }

        v17 = objc_loadWeakRetained((v16 + 16));
        if (v17)
        {
          v18 = objc_loadWeakRetained((*(a1 + 56) + 16));
          v19 = (v18[435] & 1) == 0;
        }

        else
        {
          v19 = 1;
        }

        if (v19)
        {
LABEL_23:
          if (g_boringssl_log)
          {
            v20 = g_boringssl_log;
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              v33 = *(a1 + 56);
              v53 = v33;
              if (v33)
              {
                v38 = objc_loadWeakRetained((v33 + 16));
                v39 = *(a1 + 56);
                v47 = v38;
                if (v38)
                {
                  v51 = v39 != 0;
                  if (v39)
                  {
                    v38 = objc_loadWeakRetained((v39 + 16));
                    v39 = *(a1 + 56);
                  }

                  else
                  {
                    v38 = 0;
                  }

                  v34 = v38 + 351;
                }

                else
                {
                  v51 = 0;
                  v34 = &unk_1A9098A9F;
                }

                v46 = v38;
                if (v39)
                {
                  v49 = objc_loadWeakRetained((v39 + 16));
                  LODWORD(v48) = 0;
                }

                else
                {
                  v49 = 0;
                  LODWORD(v48) = 1;
                }
              }

              else
              {
                v51 = 0;
                v49 = 0;
                LODWORD(v48) = 1;
                v34 = &unk_1A9098A9F;
              }

              size = dispatch_data_get_size(v5);
              negotiated_ciphersuite = boringssl_session_get_negotiated_ciphersuite(*(a1 + 64));
              *buf = 136447746;
              v56 = "boringssl_context_set_encryption_secrets_block_invoke";
              v57 = 1024;
              v58 = 2563;
              v59 = 2082;
              v60 = v34;
              v61 = 2048;
              v62 = v49;
              v63 = 1024;
              v64 = v9;
              v65 = 2048;
              v66 = size;
              v67 = 1024;
              v68 = negotiated_ciphersuite;
              _os_log_debug_impl(&dword_1A8FF5000, v20, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] updating write secret. Level: %u, secret_data_length: %zu, currently negotiated ciphersuite: %u", buf, 0x3Cu);
              if ((v48 & 1) == 0)
              {
              }

              if (v51)
              {
              }

              if (v53)
              {
              }
            }
          }
        }
      }

      (v10)[2](v10, v9, 1, v5);
    }

    if (v7)
    {
      v21 = *(a1 + 56);
      if (!v21)
      {
        goto LABEL_37;
      }

      v22 = objc_loadWeakRetained((v21 + 16));
      if (!v22 || (v23 = v22, v24 = objc_loadWeakRetained((*(a1 + 56) + 16)), v25 = v24[435], v24, v23, (v25 & 1) == 0))
      {
        v26 = *(a1 + 56);
        if (!v26)
        {
          goto LABEL_37;
        }

        v27 = objc_loadWeakRetained((v26 + 16));
        if (v27)
        {
          v28 = objc_loadWeakRetained((*(a1 + 56) + 16));
          v29 = (v28[435] & 1) == 0;
        }

        else
        {
          v29 = 1;
        }

        if (v29)
        {
LABEL_37:
          if (g_boringssl_log)
          {
            v30 = g_boringssl_log;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              v35 = *(a1 + 56);
              v54 = v35;
              if (v35)
              {
                v40 = objc_loadWeakRetained((v35 + 16));
                v41 = *(a1 + 56);
                v48 = v40;
                if (v40)
                {
                  v52 = v41 != 0;
                  if (v41)
                  {
                    v40 = objc_loadWeakRetained((v41 + 16));
                    v41 = *(a1 + 56);
                  }

                  else
                  {
                    v40 = 0;
                  }

                  v37 = v40 + 351;
                }

                else
                {
                  v52 = 0;
                  v37 = &unk_1A9098A9F;
                }

                v47 = v40;
                if (v41)
                {
                  v36 = objc_loadWeakRetained((v41 + 16));
                  v50 = 0;
                }

                else
                {
                  v36 = 0;
                  v50 = 1;
                }
              }

              else
              {
                v52 = 0;
                v36 = 0;
                v50 = 1;
                v37 = &unk_1A9098A9F;
              }

              v44 = dispatch_data_get_size(v7);
              v45 = boringssl_session_get_negotiated_ciphersuite(*(a1 + 64));
              *buf = 136447746;
              v56 = "boringssl_context_set_encryption_secrets_block_invoke";
              v57 = 1024;
              v58 = 2568;
              v59 = 2082;
              v60 = v37;
              v61 = 2048;
              v62 = v36;
              v63 = 1024;
              v64 = v9;
              v65 = 2048;
              v66 = v44;
              v67 = 1024;
              v68 = v45;
              _os_log_debug_impl(&dword_1A8FF5000, v30, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] updating read secret. Level: %u, secret_data_length: %zu urrently negotiated ciphersuite: %u", buf, 0x3Cu);
              if ((v50 & 1) == 0)
              {
              }

              if (v52)
              {
              }

              if (v54)
              {
              }
            }
          }
        }
      }

      (v10)[2](v10, v9, 0, v7);
    }
  }

  result = a2 != 0;
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CBS_get_u32(uint64_t *a1, int *a2)
{
  v2 = a1[1];
  v3 = v2 - 4;
  if (v2 < 4)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = *a1;
  *a1 += 4;
  a1[1] = v3;
  do
  {
    v6 = *(v7 + v5++) | (v6 << 8);
  }

  while (v5 != 4);
  *a2 = v6;
  return 1;
}

BOOL boringssl_session_can_resume_with_state(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 0;
  if (v3 && a2)
  {
    v5 = (*(v3 + 551) & 1) != 0 || SSL_SESSION_get_protocol_version(a2) != 772;
  }

  return v5;
}

void SSL_SESSION_free(SSL_SESSION *ses)
{
  if (ses)
  {
    bssl::RefCounted<ssl_session_st>::DecRefInternal(ses);
  }
}

void CRYPTO_BUFFER_free(unsigned int *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *a1;
  if (!*a1)
  {
    if (!CRYPTO_refcount_dec_and_test_zero(a1 + 6))
    {
      return;
    }

    goto LABEL_8;
  }

  CRYPTO_MUTEX_lock_write((v2 + 1));
  if (CRYPTO_refcount_dec_and_test_zero(a1 + 6))
  {
    if (OPENSSL_lh_retrieve(*v2, a1, lh_CRYPTO_BUFFER_call_hash_func, lh_CRYPTO_BUFFER_call_cmp_func) == a1 && OPENSSL_lh_delete(*v2, a1, lh_CRYPTO_BUFFER_call_hash_func, lh_CRYPTO_BUFFER_call_cmp_func) != a1)
    {
      CRYPTO_BUFFER_free_cold_1();
    }

    CRYPTO_MUTEX_unlock_read((*a1 + 8));
LABEL_8:

    crypto_buffer_free_object(a1);
    return;
  }

  v3 = (*a1 + 8);

  CRYPTO_MUTEX_unlock_read(v3);
}

uint64_t boringssl_context_add_message(const SSL *a1, unsigned int a2, const void *a3, size_t a4)
{
  v7 = SSL_get_ex_data(a1, 0);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (*v7 != -1252936367)
  {
    return 0;
  }

  v9 = v7[1];
  if (!v9 || boringssl_session_get_state(v7) > 3 || (boringssl_session_is_cancelled(v8) & 1) != 0)
  {
    return 0;
  }

  if (a2 - 1 >= 3)
  {
    a2 = 0;
  }

  WeakRetained = objc_loadWeakRetained((v9 + 16));
  v12 = nw_protocol_boringssl_write_message(WeakRetained, a2, a3, a4);

  return v12;
}

uint64_t nw_protocol_boringssl_write_message(void *a1, unsigned int a2, const void *a3, size_t a4)
{
  v7 = a1;
  v8 = v7;
  if (a2 <= 3)
  {
    v9 = *(v7 + a2 + 30);
  }

  nw_frame_array_init();
  nw_protocol_upcast();
  if (nw_protocol_get_output_frames() == 1)
  {
    v10 = nw_frame_array_first();
    if (nw_frame_uses_external_data())
    {
      v11 = dispatch_data_create(a3, a4, 0, 0);
      nw_frame_set_external_data();
    }

    else
    {
      v13 = nw_frame_unclaimed_bytes();
      memcpy(v13, a3, a4);
    }

    nw_protocol_upcast();
    v12 = 0;
    if (nw_frame_claim())
    {
      nw_frame_collapse();
      nw_protocol_upcast();
      nw_frame_unclaim();
      v12 = 1;
      nw_frame_array_remove();
      nw_frame_array_append();
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t boringssl_context_flush_flight(const SSL *a1)
{
  v1 = SSL_get_ex_data(a1, 0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (*v1 != -1252936367)
  {
    return 0;
  }

  v3 = v1[1];
  if (!v3 || boringssl_session_get_state(v1) > 3 || (boringssl_session_is_cancelled(v2) & 1) != 0)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((v3 + 16));
  v6 = nw_protocol_boringssl_flush_flight(WeakRetained);

  return v6;
}

uint64_t nw_protocol_boringssl_flush_flight(void *a1)
{
  v1 = a1;
  if ((nw_frame_array_is_empty() & 1) == 0)
  {
    v2 = v1[30];
    nw_protocol_finalize_output_frames();
  }

  if ((nw_frame_array_is_empty() & 1) == 0)
  {
    v3 = v1[31];
    nw_protocol_finalize_output_frames();
  }

  if ((nw_frame_array_is_empty() & 1) == 0)
  {
    v4 = v1[32];
    nw_protocol_finalize_output_frames();
  }

  if ((nw_frame_array_is_empty() & 1) == 0)
  {
    v5 = v1[33];
    nw_protocol_finalize_output_frames();
  }

  return 1;
}

BOOL boringssl_session_state_is_session_state(_BOOL8 result)
{
  if (result)
  {
    return *(result + 8) == 1;
  }

  return result;
}

uint64_t boringssl_session_state_get_used_extended_master_secret(uint64_t result)
{
  if (result)
  {
    return *(result + 9);
  }

  return result;
}

void bssl::SSL_SESSION_parse(__int128 *a1@<X0>, uint64_t (**a2)(void)@<X1>, void **a3@<X2>, unint64_t *a4@<X8>)
{
  v88 = 0xAAAAAAAAAAAAAAAALL;
  bssl::ssl_session_new(a2, &v88);
  if (!v88)
  {
    *a4 = 0;
    return;
  }

  memset(v87, 170, sizeof(v87));
  v86 = -21846;
  if (!CBS_get_asn1(a1, &v87[1], 536870928) || !CBS_get_asn1_uint64(&v87[1], v87 + 1) || *(&v87[0] + 1) != 1 || !CBS_get_asn1_uint64(&v87[1], v87) || *&v87[0] >> 16 || (bssl::ssl_protocol_version_from_wire(&v86, LOWORD(v87[0])) & 1) == 0)
  {
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 538);
    goto LABEL_32;
  }

  *(v88 + 4) = v87[0];
  memset(v85, 170, 18);
  if (!CBS_get_asn1(&v87[1], &v85[1], 4) || !CBS_get_u16(&v85[1], v85) || *&v85[5])
  {
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 548);
    goto LABEL_32;
  }

  cipher_by_value = SSL_get_cipher_by_value(v85[0]);
  *(v88 + 200) = cipher_by_value;
  if (!cipher_by_value)
  {
    ERR_put_error(16, 0, 237, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 553);
    goto LABEL_32;
  }

  memset(v84, 170, sizeof(v84));
  memset(v83, 170, sizeof(v83));
  if (!CBS_get_asn1(&v87[1], &v84[2], 4))
  {
    goto LABEL_38;
  }

  v9 = v84[3];
  if (v84[3] > 0x20uLL)
  {
    goto LABEL_38;
  }

  v10 = v88;
  v11 = v84[2];
  *(v88 + 91) = 0;
  if (v9)
  {
    v12 = (v10 + 59);
    v13 = v9;
    do
    {
      v14 = *v11++;
      *v12++ = v14;
      --v13;
    }

    while (v13);
  }

  *(v10 + 91) = v9;
  if (!CBS_get_asn1(&v87[1], v84, 4))
  {
    goto LABEL_38;
  }

  v15 = v84[1];
  if (v84[1] > 0x30uLL)
  {
    goto LABEL_38;
  }

  v16 = v88;
  v17 = v84[0];
  *(v88 + 58) = 0;
  if (v15)
  {
    v18 = (v16 + 10);
    v19 = v15;
    do
    {
      v20 = *v17++;
      *v18++ = v20;
      --v19;
    }

    while (v19);
  }

  *(v16 + 58) = v15;
  if (!CBS_get_asn1(&v87[1], &v83[1], -1610612735) || !CBS_get_asn1_uint64(&v83[1], (v88 + 192)) || !CBS_get_asn1(&v87[1], &v83[1], -1610612734) || !CBS_get_asn1_uint64(&v83[1], v83) || HIDWORD(v83[0]))
  {
LABEL_38:
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 568);
    goto LABEL_32;
  }

  *(v88 + 184) = v83[0];
  memset(v82, 170, sizeof(v82));
  if (!CBS_get_optional_asn1(&v87[1], &v82[1], v82, -1610612733) || v82[0] && !*&v82[3])
  {
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 578);
LABEL_32:
    *a4 = 0;
    goto LABEL_33;
  }

  v80 = 0xAAAAAAAAAAAAAAAALL;
  v81 = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_optional_asn1_octet_string(&v87[1], &v80, 0, -1610612732))
  {
    goto LABEL_32;
  }

  v22 = v81;
  if (v81 > 0x20)
  {
    goto LABEL_32;
  }

  v23 = v88;
  v24 = v80;
  *(v88 + 124) = 0;
  if (v22)
  {
    v25 = (v23 + 92);
    v26 = v22;
    do
    {
      v27 = *v24++;
      *v25++ = v27;
      --v26;
    }

    while (v26);
    v28 = v88;
  }

  else
  {
    v28 = v23;
  }

  *(v23 + 124) = v22;
  if (!bssl::SSL_SESSION_parse_long(&v87[1], (v28 + 176)))
  {
    goto LABEL_32;
  }

  v79[0] = 0xAAAAAAAAAAAAAAAALL;
  v79[1] = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_optional_asn1(&v87[1], v79, 0, -1610612730))
  {
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 596);
    goto LABEL_32;
  }

  if (!bssl::SSL_SESSION_parse_string(&v87[1], (v88 + 128)) || !bssl::SSL_SESSION_parse_u32(&v87[1], (v88 + 372), -1610612727, 0) || (bssl::SSL_SESSION_parse_octet_string(&v87[1], (v88 + 232), -1610612726) & 1) == 0)
  {
    goto LABEL_32;
  }

  if (CBS_peek_asn1_tag(&v87[1], -1610612723))
  {
    v77 = 0xAAAAAAAAAAAAAAAALL;
    v78 = 0xAAAAAAAAAAAAAAAALL;
    if (!CBS_get_asn1(&v87[1], &v83[1], -1610612723) || !CBS_get_asn1(&v83[1], &v77, 4) || v78 != 32 || v83[2])
    {
      ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 614);
      goto LABEL_32;
    }

    v29 = v88;
    v30 = *(v77 + 1);
    *(v88 + 272) = *v77;
    *(v29 + 288) = v30;
    v31 = *(v29 + 440) | 2;
  }

  else
  {
    v29 = v88;
    v31 = *(v88 + 440) & 0xFD;
  }

  *(v29 + 440) = v31;
  v77 = 0xAAAAAAAAAAAAAAAALL;
  v78 = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_optional_asn1_octet_string(&v87[1], &v77, 0, -1610612722))
  {
    goto LABEL_32;
  }

  v32 = v78;
  if (v78 > 0x40)
  {
    goto LABEL_32;
  }

  v33 = v88;
  v34 = v77;
  *(v88 + 368) = 0;
  if (v32)
  {
    v35 = (v33 + 304);
    v36 = v32;
    do
    {
      v37 = *v34++;
      *v35++ = v37;
      --v36;
    }

    while (v36);
    v38 = v88;
  }

  else
  {
    v38 = v33;
  }

  *(v33 + 368) = v32;
  if (!bssl::SSL_SESSION_parse_crypto_buffer(&v87[1], (v38 + 248), -1610612721, a3) || !bssl::SSL_SESSION_parse_crypto_buffer(&v87[1], (v88 + 256), -1610612720, a3))
  {
    goto LABEL_32;
  }

  v76 = -1431655766;
  if (!CBS_get_optional_asn1_BOOL(&v87[1], &v76, -1610612719, 0))
  {
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 641);
    goto LABEL_32;
  }

  v39 = v88;
  v40 = *(v88 + 440) & 0xFE;
  if (v76)
  {
    ++v40;
  }

  *(v88 + 440) = v40;
  if (!bssl::SSL_SESSION_parse_u16(&v87[1], (v39 + 6), -1610612718))
  {
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 647);
    goto LABEL_32;
  }

  v75 = 0uLL;
  v74 = -1431655766;
  if (!CBS_get_optional_asn1(&v87[1], &v75, &v74, -1610612717))
  {
    goto LABEL_81;
  }

  if (!v74)
  {
    v41 = v82[0];
    goto LABEL_83;
  }

  if (!*(&v75 + 1))
  {
LABEL_81:
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 657);
    goto LABEL_32;
  }

  v41 = v82[0];
  if (!v82[0])
  {
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 661);
    goto LABEL_32;
  }

LABEL_83:
  if (!(v41 | v74))
  {
    goto LABEL_95;
  }

  v42 = v88;
  v43 = OPENSSL_sk_new_null();
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100]((v42 + 136), v43);
  if (!*(v88 + 136))
  {
    goto LABEL_32;
  }

  if (!v82[0])
  {
LABEL_89:
    if (*(&v75 + 1))
    {
      while (1)
      {
        v71 = 0xAAAAAAAAAAAAAAAALL;
        v72 = 0xAAAAAAAAAAAAAAAALL;
        if (!CBS_get_any_asn1_element(&v75, &v71, 0, 0) || !v72)
        {
          ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 682);
          goto LABEL_32;
        }

        v66[1] = 0xAAAAAAAAAAAAAAAALL;
        v46 = CRYPTO_BUFFER_new_from_CBS(&v71, a3);
        v66[1] = v46;
        if (!v46)
        {
          break;
        }

        v47 = *(v88 + 136);
        v66[1] = 0;
        v70 = v46;
        if (!OPENSSL_sk_push(v47, v46))
        {
          std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v70, 0);
          break;
        }

        v70 = 0;
        std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v70, 0);
        std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v66[1], 0);
        if (!*(&v75 + 1))
        {
          goto LABEL_95;
        }
      }

      *a4 = 0;
      v62 = &v66[1];
      goto LABEL_129;
    }

LABEL_95:
    v71 = 0xAAAAAAAAAAAAAAAALL;
    v72 = 0xAAAAAAAAAAAAAAAALL;
    v69 = -1431655766;
    if (!CBS_get_optional_asn1_octet_string(&v87[1], &v71, &v69, -1610612715))
    {
      goto LABEL_32;
    }

    if (v69)
    {
      if (!CBS_get_u32(&v71, (v88 + 376)) || v72)
      {
        goto LABEL_32;
      }

      v48 = 8 * (v69 != 0);
    }

    else
    {
      v48 = v72;
      if (v72)
      {
        goto LABEL_32;
      }
    }

    *(v88 + 440) = *(v88 + 440) & 0xF7 | v48;
    v68 = -1431655766;
    if (!CBS_get_optional_asn1_BOOL(&v87[1], &v68, -1610612714, 1))
    {
      ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 708);
      goto LABEL_32;
    }

    v49 = v88;
    *(v88 + 440) = *(v88 + 440) & 0xEF | (16 * (v68 != 0));
    v67 = -1431655766;
    if (!bssl::SSL_SESSION_parse_u16(&v87[1], (v49 + 8), -1610612713) || !bssl::SSL_SESSION_parse_u32(&v87[1], (v88 + 380), -1610612712, 0) || !bssl::SSL_SESSION_parse_u32(&v87[1], (v88 + 188), -1610612711, *(v88 + 184)) || !bssl::SSL_SESSION_parse_octet_string(&v87[1], (v88 + 392), -1610612710) || !CBS_get_optional_asn1_BOOL(&v87[1], &v67, -1610612709, 0) || (bssl::SSL_SESSION_parse_octet_string(&v87[1], (v88 + 448), -1610612708) & 1) == 0)
    {
      ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 729);
      goto LABEL_32;
    }

    memset(v66, 170, sizeof(v66));
    if (!CBS_get_optional_asn1_octet_string(&v87[1], &v66[1], v66 + 1, -1610612707))
    {
      goto LABEL_119;
    }

    v50 = v88;
    v52 = v66[1];
    v51 = v66[2];
    if (!bssl::Array<unsigned char>::InitUninitialized(v88 + 408, v66[2]))
    {
      goto LABEL_119;
    }

    if (v51)
    {
      v53 = *(v50 + 408);
      do
      {
        v54 = *v52;
        v52 = (v52 + 1);
        *v53++ = v54;
        v51 = (v51 - 1);
      }

      while (v51);
    }

    if (!CBS_get_optional_asn1_octet_string(&v87[1], &v66[1], v66, -1610612706))
    {
      goto LABEL_119;
    }

    v55 = v88;
    v57 = v66[1];
    v56 = v66[2];
    if (!bssl::Array<unsigned char>::InitUninitialized(v88 + 424, v66[2]))
    {
      goto LABEL_119;
    }

    if (v56)
    {
      v58 = *(v55 + 424);
      do
      {
        v59 = *v57;
        v57 = (v57 + 1);
        *v58++ = v59;
        v56 = (v56 - 1);
      }

      while (v56);
    }

    if (*(&v87[1] + 1))
    {
LABEL_119:
      v60 = 742;
      goto LABEL_120;
    }

    v63 = v88;
    v64 = *(v88 + 440) & 0xDF | (32 * (v67 != 0));
    *(v88 + 440) = v64;
    v65 = BYTE4(v66[0]);
    if (HIDWORD(v66[0]) == LODWORD(v66[0]))
    {
      if (!HIDWORD(v66[0]))
      {
LABEL_134:
        *(v63 + 440) = v65 | v64 & 0x3F;
        if (a2[6]())
        {
          v61 = v88;
          v88 = 0;
          goto LABEL_121;
        }

        v60 = 759;
LABEL_120:
        ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", v60);
        v61 = 0;
LABEL_121:
        *a4 = v61;
        goto LABEL_33;
      }

      if (*(v63 + 400))
      {
        v65 = 64;
        goto LABEL_134;
      }
    }

    v60 = 750;
    goto LABEL_120;
  }

  v44 = CRYPTO_BUFFER_new_from_CBS(&v82[1], a3);
  v71 = v44;
  if (v44)
  {
    v45 = *(v88 + 136);
    v71 = 0;
    v73 = v44;
    if (OPENSSL_sk_push(v45, v44))
    {
      v73 = 0;
      std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v73, 0);
      std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v71, 0);
      goto LABEL_89;
    }

    std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v73, 0);
  }

  *a4 = 0;
  v62 = &v71;
LABEL_129:
  std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](v62, 0);
LABEL_33:
  v21 = v88;
  v88 = 0;
  if (v21)
  {
    SSL_SESSION_free(v21);
  }
}

BOOL bssl::SSL_SESSION_parse_crypto_buffer(__int128 *a1, unsigned int **a2, int a3, void **a4)
{
  if (!CBS_peek_asn1_tag(a1, a3))
  {
    return 1;
  }

  memset(v10, 170, sizeof(v10));
  if (CBS_get_asn1(a1, &v10[1], a3) && CBS_get_asn1(&v10[1], v10, 4) && !*(&v10[1] + 1))
  {
    v8 = CRYPTO_BUFFER_new_from_CBS(v10, a4);
    std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](a2, v8);
    return *a2 != 0;
  }

  else
  {
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 468);
    return 0;
  }
}

uint64_t nw_protocol_boringssl_cache_entry_deallocator(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

uint64_t __boringssl_session_cache_pop_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v7 = *(a1 + 32);
    sec_array_append();
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  return 1;
}

uint64_t boringssl_session_set_session_state(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1 || *a1 != -1252936367)
  {
    goto LABEL_50;
  }

  v5 = 0;
  if (v3)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      used_extended_master_secret = boringssl_session_state_get_used_extended_master_secret(v3);
      has_remote_address = boringssl_session_state_has_remote_address(v4, (v6 + 216));
      if (used_extended_master_secret || has_remote_address)
      {
        inner_session = boringssl_session_state_create_inner_session(v4, v6);
        WeakRetained = objc_loadWeakRetained((v6 + 16));
        v18 = WeakRetained;
        if (inner_session)
        {
          if (!WeakRetained || (v19 = objc_loadWeakRetained((v6 + 16)), v20 = v19[435], v19, v18, (v20 & 1) == 0))
          {
            v21 = objc_loadWeakRetained((v6 + 16));
            if (v21)
            {
              v22 = objc_loadWeakRetained((v6 + 16));
              v23 = (v22[435] & 1) == 0;
            }

            else
            {
              v23 = 1;
            }

            if (v23)
            {
              if (g_boringssl_log)
              {
                v30 = g_boringssl_log;
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                {
                  boringssl_session_set_session_state_cold_2();
                }
              }
            }
          }

          if (!boringssl_session_can_resume_with_state(v6, inner_session))
          {
            v31 = objc_loadWeakRetained((v6 + 16));
            if (!v31 || (v32 = v31, v33 = objc_loadWeakRetained((v6 + 16)), v34 = v33[435], v33, v32, (v34 & 1) == 0))
            {
              v35 = objc_loadWeakRetained((v6 + 16));
              if (v35)
              {
                v36 = objc_loadWeakRetained((v6 + 16));
                v37 = (v36[435] & 1) == 0;
              }

              else
              {
                v37 = 1;
              }

              if (v37)
              {
                if (g_boringssl_log)
                {
                  v38 = g_boringssl_log;
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                  {
                    boringssl_session_set_session_state_cold_3();
                  }
                }
              }
            }

            SSL_SESSION_free(inner_session);
            goto LABEL_50;
          }

          SSL_set_session(*(v6 + 392), inner_session);
          *(v6 + 550) |= 0x40u;
          *(v6 + 550) = *(v6 + 550) & 0x7F | (SSL_SESSION_has_ticket(inner_session) << 7);
          SSL_SESSION_free(inner_session);
          v5 = 1;
        }

        else
        {
          if (WeakRetained)
          {
            v24 = objc_loadWeakRetained((v6 + 16));
            v25 = v24[435];

            if (v25)
            {
              goto LABEL_50;
            }
          }

          v26 = objc_loadWeakRetained((v6 + 16));
          if (v26)
          {
            v27 = objc_loadWeakRetained((v6 + 16));
            v28 = (v27[435] & 1) == 0;
          }

          else
          {
            v28 = 1;
          }

          v5 = 0;
          if (v28 && g_boringssl_log)
          {
            v29 = g_boringssl_log;
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              boringssl_session_set_session_state_cold_4();
            }

            goto LABEL_42;
          }
        }
      }

      else
      {
        v9 = objc_loadWeakRetained((v6 + 16));
        if (v9)
        {
          v10 = v9;
          v11 = objc_loadWeakRetained((v6 + 16));
          v12 = v11[435];

          if (v12)
          {
            goto LABEL_50;
          }
        }

        v13 = objc_loadWeakRetained((v6 + 16));
        if (v13)
        {
          v14 = objc_loadWeakRetained((v6 + 16));
          v15 = (v14[435] & 1) == 0;
        }

        else
        {
          v15 = 1;
        }

        v5 = 0;
        if (v15 && g_boringssl_log)
        {
          v29 = g_boringssl_log;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            boringssl_session_set_session_state_cold_1();
          }

LABEL_42:

LABEL_50:
          v5 = 0;
        }
      }
    }
  }

  return v5;
}

BOOL boringssl_session_state_has_remote_address(void *a1, unsigned __int8 *a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 0;
  if (v3 && a2)
  {
    v6 = v3 + 12;
    v7 = v4[12];
    v5 = v7 == *a2 && memcmp(v6, a2, v7) == 0;
  }

  return v5;
}

SSL_SESSION *boringssl_session_state_create_inner_session(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return SSL_SESSION_from_bytes(*(a1 + 40), *(a1 + 48), *(a2 + 400));
  }

  else
  {
    return 0;
  }
}

SSL_SESSION *SSL_SESSION_from_bytes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v7 = a1;
  *(&v7 + 1) = a2;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  bssl::SSL_SESSION_parse(&v7, *(a3 + 16), *(a3 + 800), &v6);
  v3 = v6;
  if (v6)
  {
    v4 = *(&v7 + 1) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 847);
    v6 = 0;
    SSL_SESSION_free(v3);
    return 0;
  }

  return v3;
}

void sub_1A902341C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void *bssl::ssl_session_new@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1;
  result = bssl::New<ssl_session_st,bssl::SSL_X509_METHOD const*&>(&v4);
  *a2 = result;
  return result;
}

uint64_t CBS_get_asn1_uint64(__int128 *a1, unint64_t *a2)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  result = cbs_get_asn1(a1, &v12, 2, 1);
  if (result)
  {
    result = CBS_is_unsigned_asn1_integer(&v12);
    if (result)
    {
      *a2 = 0;
      v4 = v13;
      if (v13)
      {
        v5 = 0;
        v6 = 0;
        v7 = v12;
        v8 = v13 - 1;
        do
        {
          *a2 = v6 << 8;
          v9 = v7[v5] | (v6 << 8);
          *a2 = v9;
          v10 = v5 + 1;
          if (v8 == v5)
          {
            break;
          }

          v11 = HIWORD(v6);
          ++v5;
          v6 = v9;
        }

        while (!v11);
        return v10 >= v4;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL CBS_is_unsigned_asn1_integer(unsigned __int8 **a1)
{
  v1 = a1[1];
  if (v1)
  {
    v2 = **a1;
    v3 = v2 >> 7;
    if (v1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v5 = (*a1)[1];
      v4 = (**a1 || v5 < 0) && (v2 != 255 || (v5 & 0x80u) == 0);
    }
  }

  else
  {
    v4 = 0;
    v3 = -1431655766;
  }

  return !v3 && v4;
}

uint64_t CBS_get_optional_asn1_octet_string(__int128 *a1, void *a2, _DWORD *a3, int a4)
{
  memset(v8, 170, sizeof(v8));
  result = CBS_get_optional_asn1(a1, &v8[1], v8, a4);
  if (result)
  {
    if (!v8[0])
    {
      *a2 = 0;
      a2[1] = 0;
      if (!a3)
      {
        return 1;
      }

      goto LABEL_7;
    }

    if (!a2)
    {
      CBS_get_optional_asn1_octet_string_cold_1();
    }

    asn1 = cbs_get_asn1(&v8[1], a2, 4, 1);
    result = 0;
    if (asn1 && !*&v8[3])
    {
      if (!a3)
      {
        return 1;
      }

LABEL_7:
      *a3 = v8[0];
      return 1;
    }
  }

  return result;
}

uint64_t CBS_get_optional_asn1_uint64(__int128 *a1, unint64_t *a2, int a3, unint64_t a4)
{
  memset(v8, 170, sizeof(v8));
  result = CBS_get_optional_asn1(a1, &v8[1], v8, a3);
  if (result)
  {
    if (v8[0])
    {
      asn1_uint64 = CBS_get_asn1_uint64(&v8[1], a2);
      result = 0;
      if (!asn1_uint64 || *&v8[3])
      {
        return result;
      }
    }

    else
    {
      *a2 = a4;
    }

    return 1;
  }

  return result;
}

uint64_t bssl::SSL_SESSION_parse_long(__int128 *a1, void *a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_optional_asn1_uint64(a1, &v4, -1610612731, 0) || (v4 & 0x8000000000000000) != 0)
  {
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 484);
    return 0;
  }

  else
  {
    *a2 = v4;
    return 1;
  }
}

BOOL bssl::SSL_SESSION_parse_string(__int128 *a1, void **a2)
{
  memset(v8, 170, sizeof(v8));
  if (!CBS_get_optional_asn1_octet_string(a1, &v8[1], v8, -1610612728))
  {
    v3 = 424;
    goto LABEL_6;
  }

  if (!v8[0])
  {
    v5 = a2;
    v6 = 0;
LABEL_10:
    std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100](v5, v6);
    return 1;
  }

  if (CBS_contains_zero_byte(&v8[1]))
  {
    v3 = 429;
LABEL_6:
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", v3);
    return 0;
  }

  v7 = 0;
  result = CBS_strdup(&v8[1], &v7);
  if (result)
  {
    v6 = v7;
    v5 = a2;
    goto LABEL_10;
  }

  return result;
}

uint64_t bssl::SSL_SESSION_parse_u32(__int128 *a1, _DWORD *a2, int a3, unsigned int a4)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  if (CBS_get_optional_asn1_uint64(a1, &v7, a3, a4))
  {
    v5 = HIDWORD(v7) == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    *a2 = v7;
    return 1;
  }

  else
  {
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 497);
    return 0;
  }
}

uint64_t bssl::SSL_SESSION_parse_octet_string(__int128 *a1, void *a2, int a3)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  if (CBS_get_optional_asn1_octet_string(a1, &v9, 0, a3))
  {
    v5 = v9;
    v4 = v10;
    result = bssl::Array<unsigned char>::InitUninitialized(a2, v10);
    if (result)
    {
      if (v4)
      {
        v7 = *a2;
        do
        {
          v8 = *v5++;
          *v7++ = v8;
          --v4;
        }

        while (v4);
      }

      return 1;
    }
  }

  else
  {
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 450);
    return 0;
  }

  return result;
}

uint64_t bssl::compare_uint16_t(bssl *this, unsigned __int16 *a2, const void *a3)
{
  v3 = *this;
  v4 = *a2;
  v5 = v3 >= v4;
  v6 = v3 > v4;
  if (v5)
  {
    return v6;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t bssl::tls_set_read_state(bssl *a1, const ssl_st *a2, bssl::SSLAEADContext **a3, uint64_t a4, uint64_t a5)
{
  if (bssl::tls_has_unprocessed_handshake_data(a1, a2))
  {
    ERR_put_error(16, 0, 255, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls_method.cc", 90);
    bssl::ssl_send_alert(a1, 2, 10);
    return 0;
  }

  v11 = *(a1 + 21);
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = *(*(a1 + 6) + 280);
  if (v12 && (*(v12 + 1602) & 8) != 0 || (result = (*v11)(a1, a2, **a3, a4, a5), result))
  {
    if (a2 == 1)
    {
      return 1;
    }

LABEL_8:
    v13 = *(a1 + 6);
    *v13 = 0;
    v14 = *a3;
    *a3 = 0;
    std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100]((v13 + 264), v14);
    *(*(a1 + 6) + 200) = a2;
    return 1;
  }

  return result;
}

uint64_t bssl::ext_channel_id_parse_serverhello(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (SSL_is_dtls(*a1))
    {
      bssl::ext_channel_id_parse_serverhello();
    }

    if (!*(*(a1 + 8) + 128))
    {
      bssl::ext_channel_id_parse_serverhello();
    }

    if (*(a3 + 8))
    {
      return 0;
    }

    *(a1 + 1600) |= 0x2000000u;
  }

  return 1;
}

uint64_t bssl::tls1_check_duplicate_extensions(__int128 *a1)
{
  v2 = 0;
  v16 = *a1;
  while (*(&v16 + 1))
  {
    LOWORD(v13[0]) = -21846;
    __base = 0xAAAAAAAAAAAAAAAALL;
    v15 = 0xAAAAAAAAAAAAAAAALL;
    if (CBS_get_u16(&v16, v13))
    {
      ++v2;
      if (CBS_get_u16_length_prefixed(&v16, &__base))
      {
        continue;
      }
    }

    return 0;
  }

  if (v2)
  {
    __base = 0;
    v15 = 0;
    if (bssl::Array<unsigned short>::InitUninitialized(&__base, v2))
    {
      v16 = *a1;
      if (v15)
      {
        v3 = 0;
        v4 = 0;
        while (1)
        {
          v13[0] = 0xAAAAAAAAAAAAAAAALL;
          v13[1] = 0xAAAAAAAAAAAAAAAALL;
          if (!CBS_get_u16(&v16, __base + v3) || !CBS_get_u16_length_prefixed(&v16, v13))
          {
            break;
          }

          ++v4;
          v5 = v15;
          v3 += 2;
          if (v4 >= v15)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        v5 = 0;
LABEL_16:
        if (*(&v16 + 1))
        {
          __assert_rtn("tls1_check_duplicate_extensions", "extensions.cc", 194, "CBS_len(&extensions) == 0");
        }

        qsort(__base, v5, 2uLL, bssl::compare_uint16_t);
        if (v2 == 1)
        {
          goto LABEL_31;
        }

        v6 = v15;
        if (v15 <= 1)
        {
          v7 = 1;
        }

        else
        {
          v7 = v15;
        }

        v8 = (__base + 2);
        v9 = v7 - 1;
        if (v2 <= 2)
        {
          v10 = 2;
        }

        else
        {
          v10 = v2;
        }

        v11 = 1;
        while (1)
        {
          if (!v6 || !v9)
          {
            abort();
          }

          if (*(v8 - 1) == *v8)
          {
            break;
          }

          ++v11;
          ++v8;
          --v9;
          --v6;
          if (v10 == v11)
          {
            v2 = v11 >= v2;
            goto LABEL_31;
          }
        }
      }
    }

    v2 = 0;
LABEL_31:
    OPENSSL_free(__base);
    return v2;
  }

  return 1;
}

void sub_1A9023C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  bssl::Array<unsigned char>::~Array(va);
  _Unwind_Resume(a1);
}

uint64_t bssl::ssl_parse_serverhello_tlsext(uint64_t a1, __int128 *a2)
{
  v3 = *a1;
  v46 = *a2;
  if (!bssl::tls1_check_duplicate_extensions(&v46))
  {
    goto LABEL_14;
  }

  if (*(&v46 + 1))
  {
    v4 = 0;
    v5 = "extension %u";
    while (2)
    {
      v45 = -21846;
      v44[0] = 0xAAAAAAAAAAAAAAAALL;
      v44[1] = 0xAAAAAAAAAAAAAAAALL;
      if (CBS_get_u16(&v46, &v45) && CBS_get_u16_length_prefixed(&v46, v44))
      {
        v6 = 0;
        v7 = off_1F1CAFD60;
        while (*(v7 - 8) != v45)
        {
          ++v6;
          v7 += 5;
          if (v6 == 30)
          {
            v10 = 4477;
LABEL_15:
            ERR_put_error(16, 0, 222, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", v10);
            ERR_add_error_dataf(v5, v11, v12, v13, v14, v15, v16, v17, v45);
            v9 = 110;
            goto LABEL_16;
          }
        }

        v8 = 1 << v6;
        if ((*(a1 + 376) & (1 << v6)) == 0)
        {
          v10 = 4488;
          v5 = "extension :%u";
          goto LABEL_15;
        }

        v43 = 50;
        if (((*v7)(a1, &v43, v44) & 1) == 0)
        {
          ERR_put_error(16, 0, 149, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 4498);
          ERR_add_error_dataf("extension %u", v36, v37, v38, v39, v40, v41, v42, v45);
          v9 = v43;
          goto LABEL_16;
        }

        v4 |= v8;
        if (*(&v46 + 1))
        {
          continue;
        }

        goto LABEL_19;
      }

      break;
    }

LABEL_14:
    v9 = 50;
    goto LABEL_16;
  }

  v4 = 0;
LABEL_19:
  v20 = 0;
  v21 = off_1F1CAFD60;
  do
  {
    if (((v4 >> v20) & 1) == 0)
    {
      LOBYTE(v44[0]) = 50;
      if (((*v21)(a1, v44, 0) & 1) == 0)
      {
        ERR_put_error(16, 0, 164, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 4511);
        ERR_add_error_dataf("extension %u", v23, v24, v25, v26, v27, v28, v29, *(v21 - 8));
        v9 = LOBYTE(v44[0]);
        goto LABEL_16;
      }
    }

    ++v20;
    v21 += 5;
  }

  while (v20 != 30);
  v22 = *(a1 + 1536);
  if (!v22 || (*(v22 + 440) & 0x40) == 0)
  {
    return 1;
  }

  v3 = *a1;
  v30 = *(*a1 + 48);
  v31 = *(v30 + 504);
  if (!v31)
  {
    ERR_put_error(16, 0, 308, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 4555);
    v18 = v3;
    v9 = 47;
    goto LABEL_17;
  }

  v46 = 0uLL;
  if (bssl::ssl_get_local_application_settings(a1, &v46, *(v30 + 496), v31))
  {
    v32 = *(&v46 + 1);
    v33 = v46;
    if (bssl::Array<unsigned char>::InitUninitialized(v22 + 408, *(&v46 + 1)))
    {
      if (v32)
      {
        v34 = *(v22 + 408);
        do
        {
          v35 = *v33++;
          *v34++ = v35;
          --v32;
        }

        while (v32);
      }

      return 1;
    }

    v9 = 80;
  }

  else
  {
    ERR_put_error(16, 0, 259, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 4564);
    v9 = 47;
  }

LABEL_16:
  v18 = v3;
LABEL_17:
  bssl::ssl_send_alert(v18, 2, v9);
  return 0;
}

uint64_t bssl::ext_alpn_parse_serverhello(uint64_t *a1, char *a2, uint64_t a3)
{
  v4 = *a1;
  if (!a3)
  {
    if (!*(v4 + 168))
    {
      return 1;
    }

    ERR_put_error(16, 0, 307, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 1410);
    result = 0;
    v13 = 120;
    goto LABEL_18;
  }

  if ((*(*(v4 + 48) + 222) & 0x10) != 0)
  {
    bssl::ext_alpn_parse_serverhello();
  }

  if (!*(a1[1] + 144))
  {
    bssl::ext_alpn_parse_serverhello();
  }

  if ((*(a1 + 1601) & 0x40) != 0)
  {
    *a2 = 47;
    ERR_put_error(16, 0, 170, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 1423);
    return 0;
  }

  memset(v14, 170, sizeof(v14));
  result = CBS_get_u16_length_prefixed(a3, &v14[2]);
  if (!result)
  {
    return result;
  }

  if (*(a3 + 8))
  {
    return 0;
  }

  result = CBS_get_u8_length_prefixed(&v14[2], v14);
  if (result)
  {
    result = 0;
    if (v14[1])
    {
      if (!v14[3])
      {
        if (bssl::ssl_is_alpn_protocol_allowed(a1, v14[0], v14[1]))
        {
          v8 = *(v4 + 48);
          v10 = v14[0];
          v9 = v14[1];
          if (bssl::Array<unsigned char>::InitUninitialized(v8 + 496, v14[1]))
          {
            if (v9)
            {
              v11 = *(v8 + 496);
              result = 1;
              do
              {
                v12 = *v10++;
                *v11++ = v12;
                --v9;
              }

              while (v9);
              return result;
            }

            return 1;
          }

          v13 = 80;
        }

        else
        {
          ERR_put_error(16, 0, 259, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 1440);
          v13 = 47;
        }

        result = 0;
LABEL_18:
        *a2 = v13;
      }
    }
  }

  return result;
}

uint64_t bssl::ssl_is_alpn_protocol_allowed(void *a1, const void *a2, size_t a3)
{
  v5 = a1[1];
  v6 = *(v5 + 144);
  if (!v6)
  {
    return 0;
  }

  if ((*(*(*a1 + 120) + 856) & 0x80) != 0)
  {
    return 1;
  }

  return bssl::ssl_alpn_list_contains_protocol(*(v5 + 136), v6, a2, a3);
}

uint64_t bssl::ext_quic_transport_params_parse_serverhello_impl(uint64_t a1, ssl_st *a2, uint64_t a3, int a4)
{
  v6 = *a1;
  if (!a3)
  {
    if (((*(*(a1 + 8) + 309) & 0x200) == 0) != a4 && *(v6 + 21))
    {
      result = 0;
      LOBYTE(a2->version) = 109;
      return result;
    }

    return 1;
  }

  if (!*(v6 + 21))
  {
    bssl::ext_quic_transport_params_parse_serverhello_impl();
  }

  if (bssl::ssl_protocol_version(*a1, a2) != 772)
  {
    bssl::ext_quic_transport_params_parse_serverhello_impl();
  }

  if (a4 != (*(*(a1 + 8) + 309) & 0x200) >> 9)
  {
    bssl::ext_quic_transport_params_parse_serverhello_impl();
  }

  v8 = (*(v6 + 6) + 584);
  v10 = *a3;
  v9 = *(a3 + 8);
  result = bssl::Array<unsigned char>::InitUninitialized(v8, v9);
  if (result)
  {
    if (v9)
    {
      v12 = *v8;
      do
      {
        v13 = *v10++;
        *v12++ = v13;
        --v9;
      }

      while (v9);
    }

    return 1;
  }

  return result;
}

uint64_t bssl::ext_ech_parse_serverhello(bssl **a1, ssl_st *a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v6 = *a1;
  if (bssl::ssl_protocol_version(*a1, a2) < 0x304 || *(*(v6 + 6) + 216) == 1)
  {
    LOBYTE(a2->version) = 110;
    ERR_put_error(16, 0, 222, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 633);
    return 0;
  }

  if ((bssl::ssl_is_valid_ech_config_list(*a3, *(a3 + 8)) & 1) == 0)
  {
    result = 0;
    v13 = 50;
LABEL_14:
    LOBYTE(a2->version) = v13;
    return result;
  }

  if (*(*(v6 + 6) + 216) != 2)
  {
    return 1;
  }

  v8 = a1 + 75;
  v10 = *a3;
  v9 = *(a3 + 8);
  result = bssl::Array<unsigned char>::InitUninitialized(v8, v9);
  if (!result)
  {
    v13 = 80;
    goto LABEL_14;
  }

  if (!v9)
  {
    return 1;
  }

  v11 = *v8;
  result = 1;
  do
  {
    v12 = *v10++;
    *v11++ = v12;
    --v9;
  }

  while (v9);
  return result;
}

uint64_t bssl::ext_ems_parse_serverhello(uint64_t a1, ssl_st *a2, uint64_t a3)
{
  v5 = *a1;
  if (a3)
  {
    if (bssl::ssl_protocol_version(*a1, a2) > 0x303 || *(a3 + 8))
    {
      return 0;
    }

    *(a1 + 1600) |= 0x10000u;
  }

  v8 = *(*(v5 + 6) + 472);
  if (!v8 || (HIWORD(*(a1 + 1600)) & 1) == (*(v8 + 440) & 1))
  {
    return 1;
  }

  ERR_put_error(16, 0, 263, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 897);
  result = 0;
  LOBYTE(a2->version) = 47;
  return result;
}

uint64_t bssl::ext_ri_parse_serverhello(bssl **a1, ssl_st *a2, uint64_t a3)
{
  v5 = *a1;
  if (a3 && bssl::ssl_protocol_version(*a1, a2) >= 0x304)
  {
    goto LABEL_11;
  }

  v6 = *(v5 + 6);
  v7 = *(v6 + 222);
  if ((v7 & 0x10) != 0 && (a3 != 0) == ((v7 & 0x40) == 0))
  {
    LOBYTE(a2->version) = 40;
    ERR_put_error(16, 0, 202, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 745);
    return 0;
  }

  else
  {
    if (a3)
    {
      v8 = *(v6 + 455);
      if (v8 != *(v6 + 468))
      {
        bssl::ext_ri_parse_serverhello();
      }

      if (((v7 & 0x10) == 0) != (v8 == 0))
      {
        bssl::ext_ri_parse_serverhello();
      }

      v14 = 0xAAAAAAAAAAAAAAAALL;
      v15 = 0xAAAAAAAAAAAAAAAALL;
      if (!CBS_get_u8_length_prefixed(a3, &v14) || *(a3 + 8))
      {
        ERR_put_error(16, 0, 201, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 770);
LABEL_11:
        result = 0;
        v10 = 47;
LABEL_12:
        LOBYTE(a2->version) = v10;
        return result;
      }

      memset(v13, 170, sizeof(v13));
      if (!CBS_get_bytes(&v14, &v13[2], *(*(v5 + 6) + 455)) || (CBS_get_bytes(&v14, v13, *(*(v5 + 6) + 468)) ? (v11 = v15 == 0) : (v11 = 0), !v11))
      {
        v12 = 782;
LABEL_26:
        ERR_put_error(16, 0, 202, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", v12);
        result = 0;
        v10 = 40;
        goto LABEL_12;
      }

      if (!CBS_mem_equal(&v13[2], (*(v5 + 6) + 443), *(*(v5 + 6) + 455)) || !CBS_mem_equal(v13, (*(v5 + 6) + 456), *(*(v5 + 6) + 468)))
      {
        v12 = 796;
        goto LABEL_26;
      }

      *(*(v5 + 6) + 222) |= 0x40u;
    }

    return 1;
  }
}

uint64_t bssl::ext_ec_point_parse_serverhello(bssl **a1, ssl_st *a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  if (bssl::ssl_protocol_version(*a1, a2) > 0x303)
  {
    return 0;
  }

  __s = 0xAAAAAAAAAAAAAAAALL;
  __n = 0xAAAAAAAAAAAAAAAALL;
  result = CBS_get_u8_length_prefixed(a3, &__s);
  if (!result)
  {
    return result;
  }

  if (*(a3 + 8))
  {
    return 0;
  }

  if (__n && memchr(__s, 0, __n))
  {
    return 1;
  }

  result = 0;
  LOBYTE(a2->version) = 47;
  return result;
}

uint64_t bssl::ext_ticket_parse_serverhello(uint64_t a1, const ssl_st *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *a1;
    if (bssl::ssl_protocol_version(*a1, a2) > 0x303)
    {
      return 0;
    }

    if ((SSL_get_options(v5) & 0x4000) != 0)
    {
      bssl::ext_ticket_parse_serverhello();
    }

    if (*(a3 + 8))
    {
      return 0;
    }

    *(a1 + 1600) |= 0x8000u;
  }

  return 1;
}

BOOL bssl::ext_ocsp_parse_serverhello(uint64_t a1, const ssl_st *a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  if (bssl::ssl_protocol_version(*a1, a2) > 0x303 || *(a3 + 8))
  {
    return 0;
  }

  result = bssl::ssl_cipher_uses_certificate_auth(*(a1 + 1568), v5);
  if (result)
  {
    *(a1 + 1600) |= 0x40u;
    return 1;
  }

  return result;
}

BOOL bssl::forbid_parse_serverhello(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (a3)
  {
    *a2 = 110;
    ERR_put_error(16, 0, 222, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 508);
  }

  return a3 == 0;
}

EVP_PKEY *EVP_parse_public_key(__int128 *a1)
{
  memset(v10, 170, sizeof(v10));
  memset(v9, 170, sizeof(v9));
  if (!CBS_get_asn1(a1, &v10[1], 536870928) || !CBS_get_asn1(&v10[1], v10, 536870928) || !CBS_get_asn1(&v10[1], &v9[1], 3) || *(&v10[1] + 1))
  {
    v6 = 102;
    v7 = 106;
LABEL_13:
    ERR_put_error(6, 0, v6, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/evp_asn1.c", v7);
    return 0;
  }

  v1 = parse_key_type(v10);
  if (!v1)
  {
    v6 = 128;
    v7 = 111;
    goto LABEL_13;
  }

  v2 = v1;
  if (!CBS_get_u8(&v9[1], v9) || v9[0])
  {
    v6 = 102;
    v7 = 118;
    goto LABEL_13;
  }

  v3 = EVP_PKEY_new();
  v4 = v3;
  if (!v3)
  {
LABEL_19:
    EVP_PKEY_free(v4);
    return 0;
  }

  evp_pkey_set_method(v3, v2);
  v5 = *(v4->pkey.ptr + 3);
  if (!v5)
  {
    ERR_put_error(6, 0, 128, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/evp_asn1.c", 131);
    goto LABEL_19;
  }

  if (!v5(v4, v10, &v9[1]))
  {
    goto LABEL_19;
  }

  return v4;
}

uint64_t parse_key_type(__int128 *a1)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_asn1(a1, &v6, 6))
  {
    return 0;
  }

  v1 = 0;
  v3 = v6;
  v2 = v7;
  while (1)
  {
    v4 = *(&kASN1Methods + v1);
    if (v2 == *(v4 + 13) && (!*(v4 + 13) || !memcmp(v3, (v4 + 4), v2)))
    {
      break;
    }

    v1 += 8;
    if (v1 == 40)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t evp_pkey_set_method(uint64_t result, _DWORD *a2)
{
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *(v4 + 160);
    if (v5)
    {
      result = v5(result);
      *(v3 + 8) = 0;
    }
  }

  *(v3 + 16) = a2;
  *(v3 + 4) = *a2;
  return result;
}

uint64_t bssl::ext_npn_parse_serverhello(uint64_t a1, ssl_st *a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v6 = *a1;
  if (bssl::ssl_protocol_version(*a1, a2) > 0x303)
  {
    return 0;
  }

  if ((*(*(v6 + 6) + 222) & 0x10) != 0)
  {
    bssl::ext_npn_parse_serverhello();
  }

  if (SSL_is_dtls(v6))
  {
    bssl::ext_npn_parse_serverhello();
  }

  v7 = *(v6 + 15);
  v8 = *(v7 + 616);
  if (!v8)
  {
    bssl::ext_npn_parse_serverhello();
  }

  if (*(*(v6 + 6) + 504))
  {
    LOBYTE(a2->version) = 47;
    ERR_put_error(16, 0, 170, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 1193);
    return 0;
  }

  v10 = *a3;
  v11 = *(a3 + 8);
  if (!v11)
  {
LABEL_14:
    v19 = 0xAAAAAAAAAAAAAAAALL;
    v18 = -86;
    if (v8(v6, &v19, &v18, v10, v11, *(v7 + 624)) || (v13 = *(v6 + 6), v14 = v19, v15 = v18, !bssl::Array<unsigned char>::InitUninitialized(v13 + 480, v18)))
    {
      result = 0;
      LOBYTE(a2->version) = 80;
      return result;
    }

    if (v15)
    {
      v16 = *(v13 + 480);
      do
      {
        v17 = *v14++;
        *v16++ = v17;
        --v15;
      }

      while (v15);
    }

    *(a1 + 1600) |= 0x4000u;
    return 1;
  }

  while (1)
  {
    v19 = 0xAAAAAAAAAAAAAAAALL;
    v20 = 0xAAAAAAAAAAAAAAAALL;
    u8_length_prefixed = CBS_get_u8_length_prefixed(a3, &v19);
    result = 0;
    if (!u8_length_prefixed || !v20)
    {
      return result;
    }

    if (!*(a3 + 8))
    {
      v7 = *(v6 + 15);
      v8 = *(v7 + 616);
      goto LABEL_14;
    }
  }
}

uint64_t bssl::ext_srtp_parse_serverhello(unsigned __int8 ***a1, _BYTE *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *a1;
    if (!SSL_is_dtls(*a1))
    {
      bssl::ext_srtp_parse_serverhello();
    }

    memset(v15, 170, sizeof(v15));
    v14 = -21846;
    if (!CBS_get_u16_length_prefixed(a3, &v15[2]) || !CBS_get_u16(&v15[2], &v14) || v15[3] || !CBS_get_u8_length_prefixed(a3, v15) || *(a3 + 8))
    {
      ERR_put_error(16, 0, 116, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 1737);
      return 0;
    }

    if (v15[1])
    {
      v7 = 115;
      v8 = 1743;
LABEL_16:
      ERR_put_error(16, 0, v7, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", v8);
      result = 0;
      *a2 = 47;
      return result;
    }

    srtp_profiles = SSL_get_srtp_profiles(v5);
    v10 = EVP_MD_CTX_md(srtp_profiles);
    if (!v10)
    {
LABEL_15:
      v7 = 116;
      v8 = 1756;
      goto LABEL_16;
    }

    v11 = v10;
    v12 = 0;
    while (1)
    {
      v13 = OPENSSL_sk_value(srtp_profiles, v12);
      if (v13[1] == v14)
      {
        break;
      }

      if (v11 == ++v12)
      {
        goto LABEL_15;
      }
    }

    *(v5[6] + 75) = v13;
  }

  return 1;
}

uint64_t bssl::ext_early_data_parse_serverhello(uint64_t *a1, _BYTE *a2, uint64_t a3)
{
  v3 = *a1;
  if (a3)
  {
    v4 = *(v3 + 48);
    v5 = *(v4 + 222);
    if ((v5 & 0x1000) != 0)
    {
      bssl::ext_early_data_parse_serverhello();
    }

    if (*(a3 + 8))
    {
      result = 0;
      *a2 = 50;
      return result;
    }

    if ((v5 & 0x20) == 0)
    {
      *a2 = 110;
      ERR_put_error(16, 0, 222, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 2206);
      return 0;
    }

    *(v4 + 256) = 2;
    *(v4 + 222) = v5 | 0x200;
  }

  else
  {
    v7 = *(v3 + 48);
    if ((*(a1 + 1601) & 8) == 0 || (v8 = *(v7 + 222), (v8 & 0x1000) != 0))
    {
      if (!*(v7 + 256))
      {
        bssl::ext_early_data_parse_serverhello();
      }
    }

    else
    {
      if ((v8 & 0x20) != 0)
      {
        v9 = 4;
      }

      else
      {
        v9 = 6;
      }

      *(v7 + 256) = v9;
    }
  }

  return 1;
}

uint64_t bssl::ext_alps_parse_serverhello_impl(uint64_t a1, ssl_st *a2, uint64_t a3, int a4)
{
  if (!a3)
  {
    return 1;
  }

  v5 = *a1;
  if ((*(*(v5 + 6) + 222) & 0x10) != 0)
  {
    bssl::ext_alps_parse_serverhello_impl();
  }

  v6 = *(a1 + 8);
  if (!*(v6 + 144))
  {
    bssl::ext_alps_parse_serverhello_impl();
  }

  if (!*(v6 + 160))
  {
    bssl::ext_alps_parse_serverhello_impl();
  }

  if (a4 != (*(v6 + 309) & 0x2000) >> 13)
  {
    bssl::ext_alps_parse_serverhello_impl();
  }

  if (bssl::ssl_protocol_version(v5, a2) <= 0x303)
  {
    LOBYTE(a2->version) = 110;
    ERR_put_error(16, 0, 222, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 3321);
    return 0;
  }

  v10 = *(a1 + 1536);
  v12 = *a3;
  v11 = *(a3 + 8);
  result = bssl::Array<unsigned char>::InitUninitialized(v10 + 424, v11);
  if (result)
  {
    if (v11)
    {
      v13 = *(v10 + 424);
      do
      {
        v14 = *v12++;
        *v13++ = v14;
        --v11;
      }

      while (v11);
    }

    *(*(a1 + 1536) + 440) |= 0x40u;
    return 1;
  }

  LOBYTE(a2->version) = 80;
  return result;
}

uint64_t bssl::ext_client_certificate_type_parse_serverhello(uint64_t a1, _BYTE *a2, void *a3)
{
  if (*(a1 + 30) < 0x304u)
  {
    return 1;
  }

  v12[4] = v3;
  v12[5] = v4;
  v7 = *(a1 + 8);
  v8 = *(v7 + 208);
  if (!v8)
  {
    return 1;
  }

  if (a3)
  {
    v12[0] = *(v7 + 200);
    v12[1] = v8;
    v11 = -86;
    if (CBS_get_u8(a3, &v11) && bssl::ssl_is_certificate_type_allowed(v12, v11))
    {
      *(a1 + 747) = v11;
      *(a1 + 1600) |= 0x400000u;
      return 1;
    }

    v10 = 3646;
  }

  else
  {
    v10 = 3629;
  }

  ERR_put_error(16, 0, 228, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", v10);
  result = 0;
  *a2 = 47;
  return result;
}

uint64_t bssl::ext_server_certificate_type_parse_serverhello(uint64_t a1, _BYTE *a2, void *a3)
{
  if (*(a1 + 30) < 0x304u)
  {
    return 1;
  }

  v12[4] = v3;
  v12[5] = v4;
  v7 = *(a1 + 8);
  v8 = *(v7 + 184);
  if (!v8)
  {
    return 1;
  }

  if (a3)
  {
    v12[0] = *(v7 + 176);
    v12[1] = v8;
    v11 = -86;
    if (CBS_get_u8(a3, &v11) && bssl::ssl_is_certificate_type_allowed(v12, v11))
    {
      *(a1 + 746) = v11;
      *(a1 + 1600) |= 0x200000u;
      return 1;
    }

    v10 = 3526;
  }

  else
  {
    v10 = 3509;
  }

  ERR_put_error(16, 0, 228, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", v10);
  result = 0;
  *a2 = 47;
  return result;
}

uint64_t bssl::ext_sct_parse_serverhello(uint64_t a1, ssl_st *a2, __int128 *a3)
{
  if (!a3)
  {
    return 1;
  }

  v6 = *a1;
  if (bssl::ssl_protocol_version(*a1, a2) > 0x303)
  {
    goto LABEL_8;
  }

  if ((*(*(a1 + 8) + 309) & 2) == 0)
  {
    bssl::ext_sct_parse_serverhello();
  }

  if (bssl::ssl_is_sct_list_valid(a3))
  {
    if ((*(*(v6 + 6) + 222) & 0x20) != 0)
    {
      return 1;
    }

    v7 = *(a1 + 1536);
    v8 = CRYPTO_BUFFER_new_from_CBS(a3, *(*(v6 + 15) + 800));
    std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100]((v7 + 248), v8);
    if (*(*(a1 + 1536) + 248))
    {
      return 1;
    }

    v10 = 80;
  }

  else
  {
LABEL_8:
    v10 = 50;
  }

  result = 0;
  LOBYTE(a2->version) = v10;
  return result;
}

BOOL bssl::ext_ticket_request_parse_serverhello(uint64_t a1, _BYTE *a2, void *a3)
{
  if (!a3)
  {
    return 1;
  }

  if (*(a1 + 30) < 0x304u)
  {
    return 1;
  }

  v6 = *(a1 + 8);
  if (!*(v6 + 224) && !*(v6 + 225))
  {
    return 1;
  }

  v8 = -86;
  u8 = CBS_get_u8(a3, &v8);
  result = u8 != 0;
  if (u8)
  {
    *(a1 + 750) = v8;
  }

  else
  {
    *a2 = 47;
  }

  return result;
}

EVP_PKEY *bssl::ssl_cert_parse_pubkey@<X0>(__int128 *a1@<X0>, EVP_PKEY **a2@<X8>)
{
  v5 = *a1;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  if (bssl::ssl_cert_skip_to_spki(&v5, &v4))
  {
    result = EVP_parse_public_key(&v4);
  }

  else
  {
    ERR_put_error(16, 0, 272, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_cert.cc", 388);
    result = 0;
  }

  *a2 = result;
  return result;
}

id nw_dispatch_data_create_subrange_map(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = v7;
  if (a4)
  {
    if (a3)
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x3032000000;
      v25 = __Block_byref_object_copy_;
      v26 = __Block_byref_object_dispose_;
      v27 = 0;
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v17 = 0;
      v13[0] = 0;
      v13[1] = v13;
      v13[2] = 0x2020000000;
      v13[3] = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __nw_dispatch_data_create_subrange_map_block_invoke;
      v12[3] = &unk_1E785EC38;
      v12[8] = a2;
      v12[9] = a3;
      v12[4] = &v22;
      v12[5] = &v18;
      v12[6] = &v14;
      v12[7] = v13;
      dispatch_data_apply(v7, v12);
      v9 = 0;
      if (v19[3] == a3)
      {
        *a4 = v15[3];
        v9 = v23[5];
      }

      _Block_object_dispose(v13, 8);
      _Block_object_dispose(&v14, 8);
      _Block_object_dispose(&v18, 8);
      _Block_object_dispose(&v22, 8);
    }

    else
    {
      v9 = MEMORY[0x1E69E9668];
      v10 = MEMORY[0x1E69E9668];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __nw_dispatch_data_create_subrange_map_block_invoke(void *a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2;
  v11 = a1[8];
  if (a5 + a3 > v11)
  {
    v12 = a1[9];
    v13 = v12 + v11;
    if (v12 + v11 > a3)
    {
      v14 = v11 >= a3;
      v15 = v11 - a3;
      if (v11 > a3)
      {
        a3 = a1[8];
      }

      if (!v14)
      {
        v15 = 0;
      }

      v16 = (a4 + v15);
      v17 = a5 - v15;
      v18 = *(a1[4] + 8);
      v20 = *(v18 + 40);
      v19 = (v18 + 40);
      if (v20)
      {
        goto LABEL_8;
      }

      if (v17 >= v12)
      {
        objc_storeStrong(v19, a2);
        v22 = 0;
        *(*(a1[5] + 8) + 24) = a1[9];
        *(*(a1[6] + 8) + 24) = v16;
        goto LABEL_17;
      }

      v23 = *(a1[7] + 8);
      alloc = dispatch_data_create_alloc();
      v25 = *(a1[4] + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = alloc;

      if (*(*(a1[4] + 8) + 40))
      {
        *(*(a1[6] + 8) + 24) = *(*(a1[7] + 8) + 24);
        v11 = a1[8];
        v13 = a1[9] + v11;
LABEL_8:
        if (v17 + a3 <= v13)
        {
          v21 = v17;
        }

        else
        {
          v21 = v13 - a3;
        }

        memcpy((*(*(a1[7] + 8) + 24) + a3 - v11), v16, v21);
        *(*(a1[5] + 8) + 24) += v21;
        goto LABEL_12;
      }
    }

    v22 = 0;
    goto LABEL_17;
  }

LABEL_12:
  v22 = 1;
LABEL_17:

  return v22;
}

void nw_protocol_boringssl_copy_info_cold_1()
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

uint64_t nw_protocol_boringssl_copy_info(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = nw_protocol_downcast();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if ((*(v3 + 435) & 1) == 0)
  {
    nw_protocol_boringssl_copy_info_cold_1();
  }

  nw_protocol_get_output_handler();
  is_valid = nw_protocol_copy_info_is_valid();
  if (a2 == 254)
  {
    if (is_valid)
    {
      nw_protocol_get_output_handler();
      v6 = nw_protocol_copy_info();
    }

    else
    {
      v6 = 0;
    }

    boringssl_session_get_handshake_time_ms(*(v4 + 296));
    boringssl_session_get_handshake_rtt_ms(*(v4 + 296));
    v8 = MEMORY[0x1AC57EEA0]();
    v7 = nw_protocol_establishment_report_create();

    if (!v7)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (a2 == 255)
  {
    if (is_valid)
    {
      nw_protocol_get_output_handler();
      v6 = nw_protocol_copy_info();
    }

    else
    {
      v6 = 0;
    }

    v7 = boringssl_context_copy_metadata(*(v4 + 296));
    if (!v7)
    {
LABEL_22:

      return v6;
    }

LABEL_19:
    if (!v6)
    {
      v6 = MEMORY[0x1AC57E910]();
    }

    nw_array_append();
    goto LABEL_22;
  }

  if (!is_valid)
  {
    return 0;
  }

  nw_protocol_get_output_handler();
  return nw_protocol_copy_info();
}

void *boringssl_context_set_read_secret(const SSL *a1)
{
  v2 = SSL_get_ex_data(a1, 0);
  if (!v2 || *v2 != -1252936367 || !v2[1])
  {
    return 0;
  }

  return boringssl_context_set_encryption_secrets(a1);
}

uint64_t crypto_buffer_new(const void *a1, unint64_t a2, int a3, void **a4)
{
  if (!a4)
  {
    goto LABEL_6;
  }

  v17[2] = a2;
  v17[3] = 0xAAAAAAAAAAAAAAAALL;
  v17[0] = a4;
  v17[1] = a1;
  CRYPTO_MUTEX_lock_read((a4 + 1));
  v8 = OPENSSL_lh_retrieve(*a4, v17, lh_CRYPTO_BUFFER_call_hash_func, lh_CRYPTO_BUFFER_call_cmp_func);
  v9 = v8;
  if (!a3 || !v8)
  {
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_16:
    CRYPTO_refcount_inc((v8 + 24));
    CRYPTO_MUTEX_unlock_read((a4 + 1));
    return v9;
  }

  if (*(v8 + 28))
  {
    goto LABEL_16;
  }

LABEL_5:
  CRYPTO_MUTEX_unlock_read((a4 + 1));
LABEL_6:
  v10 = OPENSSL_zalloc(0x20uLL);
  v9 = v10;
  if (v10)
  {
    if (a3)
    {
      v10[1] = a1;
      *(v10 + 7) = 1;
    }

    else
    {
      v15 = OPENSSL_memdup(a1, a2);
      *(v9 + 8) = v15;
      if (a2 && !v15)
      {
        OPENSSL_free(v9);
        return 0;
      }
    }

    *(v9 + 16) = a2;
    *(v9 + 24) = 1;
    if (a4)
    {
      *v9 = a4;
      CRYPTO_MUTEX_lock_write((a4 + 1));
      v11 = OPENSSL_lh_retrieve(*a4, v9, lh_CRYPTO_BUFFER_call_hash_func, lh_CRYPTO_BUFFER_call_cmp_func);
      v12 = v11;
      if (a3 && v11)
      {
        if (!*(v11 + 28))
        {
          goto LABEL_13;
        }
      }

      else if (!v11)
      {
LABEL_13:
        v13 = *a4;
        v17[0] = 0;
        v14 = OPENSSL_lh_insert(v13, v17, v9, lh_CRYPTO_BUFFER_call_hash_func, lh_CRYPTO_BUFFER_call_cmp_func);
        CRYPTO_MUTEX_unlock_read((a4 + 1));
        if (!v14)
        {
          v12 = 0;
LABEL_22:
          crypto_buffer_free_object(v9);
          return v12;
        }

        return v9;
      }

      CRYPTO_refcount_inc((v11 + 24));
      CRYPTO_MUTEX_unlock_read((a4 + 1));
      goto LABEL_22;
    }
  }

  return v9;
}

uint64_t parse_base128_integer(void *a1, unint64_t *a2)
{
  v2 = 0;
  for (i = a1[1] - 1; i != -1; --i)
  {
    v4 = (*a1)++;
    a1[1] = i;
    if (v2 >> 57)
    {
      break;
    }

    v5 = *v4;
    if (!v2 && v5 == 128)
    {
      break;
    }

    v6 = v5 & 0x7F | (v2 << 7);
    v2 = v6;
    if ((v5 & 0x80) == 0)
    {
      *a2 = v6;
      return 1;
    }
  }

  return 0;
}

uint64_t CBS_get_optional_asn1_BOOL(__int128 *a1, int *a2, int a3, int a4)
{
  memset(v9, 170, sizeof(v9));
  v8 = -1431655766;
  result = CBS_get_optional_asn1(a1, &v9[1], &v8, a3);
  if (result)
  {
    if (!v8)
    {
LABEL_9:
      *a2 = a4;
      return 1;
    }

    asn1 = cbs_get_asn1(&v9[1], v9, 1, 1);
    result = 0;
    if (asn1 && *(&v9[0] + 1) == 1 && !*(&v9[1] + 1))
    {
      a4 = **&v9[0];
      if (**&v9[0])
      {
        if (a4 != 255)
        {
          return 0;
        }

        a4 = 1;
      }

      goto LABEL_9;
    }
  }

  return result;
}

uint64_t bssl::SSL_SESSION_parse_u16(__int128 *a1, _WORD *a2, int a3)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  if (CBS_get_optional_asn1_uint64(a1, &v5, a3, 0) && v5 < 0x10000)
  {
    *a2 = v5;
    return 1;
  }

  else
  {
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 510);
    return 0;
  }
}

void crypto_buffer_free_object(void **a1)
{
  if (!*(a1 + 7))
  {
    OPENSSL_free(a1[1]);
  }

  OPENSSL_free(a1);
}

void bssl::RefCounted<ssl_session_st>::DecRefInternal(ssl_session_st *a1)
{
  if (CRYPTO_refcount_dec_and_test_zero(a1))
  {
    ssl_session_st::~ssl_session_st(a1);

    OPENSSL_free(v2);
  }
}

void ssl_session_st::~ssl_session_st(ssl_session_st *this)
{
  CRYPTO_free_ex_data(&bssl::g_ex_data_class, this, &this->cipher_id);
  (*(this->sess_cert + 8))(this);
  bssl::Array<unsigned char>::~Array(&this[1].verify_result);
  bssl::Array<unsigned char>::~Array(&this[1].sid_ctx[28]);
  bssl::Array<unsigned char>::~Array(&this[1].sid_ctx[12]);
  bssl::Array<unsigned char>::~Array(&this[1].sid_ctx_length);
  this[1].session_id[8] = 0;
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](&this->tlsext_tick, 0);
  std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&this->tlsext_hostname, 0);
  std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&this->next, 0);
  bssl::Array<unsigned char>::~Array(&this->ex_data.dummy);
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](&this->sid_ctx[28], 0);
  std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100](&this->sid_ctx[20], 0);
  this->sid_ctx[16] = 0;
  this->session_id[19] = 0;
  this->master_key[38] = 0;
}

void OPENSSL_sk_pop_free_ex(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
{
  if (a1)
  {
    v4 = *a1;
    if (*a1)
    {
      v7 = 0;
      do
      {
        if (*(a1[1] + 8 * v7))
        {
          a2(a3);
          v4 = *a1;
        }

        ++v7;
      }

      while (v7 < v4);
    }

    OPENSSL_free(a1[1]);

    OPENSSL_free(a1);
  }
}

uint64_t bssl::tls13_process_certificate(EVP_PKEY **a1, uint64_t a2, char a3)
{
  v94 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v91 = *(a2 + 8);
  v90 = 0;
  v6 = *(a2 + 1);
  if (v6 == 25)
  {
    v80 = 0xAAAAAAAAAAAAAAAALL;
    v81 = 0xAAAAAAAAAAAAAAAALL;
    LOWORD(v89[0]) = -21846;
    LODWORD(v89[2]) = -1431655766;
    if (!CBS_get_u16(&v91, v89) || !CBS_get_u24(&v91, &v89[2]) || !CBS_get_u24_length_prefixed(&v91, &v80) || *(&v91 + 1))
    {
      bssl::ssl_send_alert(v5, 2, 50);
      ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 144);
      goto LABEL_18;
    }

    if (LODWORD(v89[2]) > LODWORD(v5[3].attributes))
    {
      bssl::ssl_send_alert(v5, 2, 47);
      ERR_put_error(16, 0, 293, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 150);
      ERR_add_error_dataf("requested=%u", v7, v8, v9, v10, v11, v12, v13, v89[2]);
LABEL_18:
      v14 = 0;
      goto LABEL_112;
    }

    v15 = *&v5[3].type;
    v16 = *(v15 + 736);
    if (!v16)
    {
      goto LABEL_79;
    }

    v17 = (*(v15 + 728) + 16);
    v18 = 24 * v16;
    while (*v17 != LOWORD(v89[0]))
    {
      v17 += 12;
      v18 -= 24;
      if (!v18)
      {
        goto LABEL_79;
      }
    }

    v40 = *(v17 - 1);
    if (!v40)
    {
LABEL_79:
      bssl::ssl_send_alert(v5, 2, 47);
      ERR_put_error(16, 0, 294, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 166);
      ERR_add_error_dataf("alg=%d", v44, v45, v46, v47, v48, v49, v50, v89[0]);
      goto LABEL_18;
    }

    v78 = 0;
    if (!v40(v5, &v78))
    {
      bssl::ssl_send_alert(v5, 2, 50);
      ERR_put_error(16, 0, 292, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 175);
      ERR_add_error_dataf("alg=%d", v53, v54, v55, v56, v57, v58, v59, v89[0]);
      goto LABEL_18;
    }

    std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v90, v78);
    v41 = CRYPTO_BUFFER_len(v78);
    if (v41 != LODWORD(v89[2]))
    {
      bssl::ssl_send_alert(v5, 2, 50);
      ERR_put_error(16, 0, 292, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 183);
      v60 = v89[0];
      CRYPTO_BUFFER_len(v78);
      ERR_add_error_dataf("alg=%d got=%u expected=%u", v61, v62, v63, v64, v65, v66, v67, v60);
      goto LABEL_18;
    }

    v42 = CRYPTO_BUFFER_data(v78);
    v43 = CRYPTO_BUFFER_len(v78);
    *&v91 = v42;
    *(&v91 + 1) = v43;
  }

  else if (v6 != 11)
  {
    __assert_rtn("tls13_process_certificate", "tls13_both.cc", 194, "msg.type == SSL3_MT_CERTIFICATE");
  }

  memset(v89, 170, sizeof(v89));
  if (!CBS_get_u8_length_prefixed(&v91, &v89[2]) || v89[3] || !CBS_get_u24_length_prefixed(&v91, v89) || *(&v91 + 1))
  {
    bssl::ssl_send_alert(v5, 2, 50);
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 203);
    v14 = 0;
    goto LABEL_112;
  }

  ctx = 0xAAAAAAAAAAAAAAAALL;
  ctx = OPENSSL_sk_new_null();
  if (!ctx)
  {
    bssl::ssl_send_alert(v5, 2, 80);
    v14 = 0;
    goto LABEL_111;
  }

  v87 = 0xAAAAAAAAAAAAAAAALL;
  v87 = OPENSSL_sk_new_null();
  if (!v87)
  {
    bssl::ssl_send_alert(v5, 2, 80);
    ERR_put_error(16, 0, 65, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 217);
    v14 = 0;
    goto LABEL_110;
  }

  if (BYTE4(v5[4].pkey.dh))
  {
    v73 = (*(&a1[1][7].save_parameters + 5) >> 5) & 1;
  }

  else
  {
    v73 = 0;
  }

  v86 = 0;
  if (!v89[1])
  {
LABEL_67:
    if (!EVP_MD_CTX_md(ctx))
    {
      std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](&ctx, 0);
    }

    v34 = v86;
    v86 = 0;
    std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](a1 + 191, v34);
    v35 = a1[192];
    v36 = ctx;
    ctx = 0;
    std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](&v35[3].pkey, v36);
    v37 = a1[192];
    v38 = v87;
    v87 = 0;
    std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](&v37[6].save_parameters, v38);
    if ((*(*(*&v5[3].type + 16) + 48))(a1[192]))
    {
      if (EVP_MD_CTX_md(a1[192][3].pkey.ptr))
      {
        if (v73)
        {
          v39 = 2;
        }

        else
        {
          v39 = 0;
        }

        LOBYTE(a1[192][11].type) = a1[192][11].type & 0xFD | v39;
        goto LABEL_85;
      }

      if ((a3 & 1) != 0 || (v68 = *(a1 + 400), (v68 & 0x200000) != 0) && *(a1 + 746) == 2 || (v68 & 0x400000) != 0 && *(a1 + 747) == 2)
      {
        a1[192][4].pkey.ptr = 0;
LABEL_85:
        v14 = 1;
        goto LABEL_109;
      }

      ERR_put_error(16, 0, 192, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 380);
      v51 = 116;
    }

    else
    {
      ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 365);
      v51 = 50;
    }

    bssl::ssl_send_alert(v5, 2, v51);
    goto LABEL_108;
  }

  while (1)
  {
    memset(v85, 170, sizeof(v85));
    if (!CBS_get_u24_length_prefixed(v89, &v85[1]) || !CBS_get_u16_length_prefixed(v89, v85) || !*(&v85[1] + 1))
    {
      bssl::ssl_send_alert(v5, 2, 50);
      v69 = 231;
      v52 = 127;
      goto LABEL_107;
    }

    v19 = *(a1 + 400);
    if ((v19 & 0x200000) != 0 && *(a1 + 746) == 2)
    {
      v20 = EVP_parse_public_key(&v85[1]);
      v80 = 0;
      std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](&v86, v20);
      std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](&v80, 0);
      if (!v86)
      {
        bssl::ssl_send_alert(v5, 2, 50);
        v69 = 241;
        goto LABEL_106;
      }

      goto LABEL_45;
    }

    if ((v19 & 0x400000) == 0 || *(a1 + 747) != 2)
    {
      break;
    }

    v21 = EVP_parse_public_key(&v85[1]);
    v80 = 0;
    std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](&v86, v21);
    std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](&v80, 0);
    if (!v86)
    {
      bssl::ssl_send_alert(v5, 2, 50);
      v69 = 250;
      goto LABEL_106;
    }

LABEL_45:
    v84 = 0xAAAAAAAAAAAAAAAALL;
    v23 = CRYPTO_BUFFER_new_from_CBS(&v85[1], *(*&v5[3].type + 800));
    v84 = v23;
    if (!v23)
    {
      goto LABEL_88;
    }

    v83 = v23;
    v84 = 0;
    if (!OPENSSL_sk_push(ctx, v23))
    {
      std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v83, 0);
LABEL_88:
      bssl::ssl_send_alert(v5, 2, 80);
      goto LABEL_105;
    }

    v83 = 0;
    std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v83, 0);
    v80 = 0xAAAAAAAAAAAAAAAALL;
    if (BYTE4(v5[4].pkey.dh))
    {
      LOBYTE(v24) = 0;
      LODWORD(v80) = 5;
      v81 = 0;
      v82 = 0;
      v78 = 0xAAAAAAAAAAAAAAAALL;
    }

    else
    {
      v25 = (*(&a1[1][7].save_parameters + 5) & 4) != 0;
      LOWORD(v80) = 5;
      WORD1(v80) = v25;
      v81 = 0;
      v82 = 0;
      v78 = 0xAAAAAAAAAAAAAAAALL;
      v24 = (*(&a1[1][7].save_parameters + 5) >> 1) & 1;
    }

    LOWORD(v78) = 18;
    WORD1(v78) = v24;
    v79 = 0uLL;
    v77 = 50;
    v92 = &v80;
    v93 = &v78;
    if ((bssl::ssl_parse_extensions(v85, &v77, &v92, 2, 0) & 1) == 0)
    {
      v27 = v77;
      goto LABEL_104;
    }

    if (BYTE3(v80) == 1)
    {
      v76 = -86;
      v92 = 0xAAAAAAAAAAAAAAAALL;
      v93 = 0xAAAAAAAAAAAAAAAALL;
      u8 = CBS_get_u8(&v81, &v76);
      v27 = 50;
      if (!u8)
      {
        goto LABEL_104;
      }

      if (v76 != 1)
      {
        goto LABEL_104;
      }

      u24_length_prefixed = CBS_get_u24_length_prefixed(&v81, &v92);
      v27 = 50;
      if (!u24_length_prefixed || !v93 || v82)
      {
        goto LABEL_104;
      }

      if (EVP_MD_CTX_md(ctx) == 1)
      {
        v29 = a1[192];
        v30 = CRYPTO_BUFFER_new_from_CBS(&v92, *(*&v5[3].type + 800));
        std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v29[6].pkey, v30);
        if (!a1[192][6].pkey.ptr)
        {
          v27 = 80;
LABEL_104:
          bssl::ssl_send_alert(v5, 2, v27);
LABEL_105:
          std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v84, 0);
          goto LABEL_108;
        }
      }

      v75 = 0xAAAAAAAAAAAAAAAALL;
      v31 = CRYPTO_BUFFER_new_from_CBS(&v92, *(*&v5[3].type + 800));
      v75 = v31;
      if (!v31)
      {
        goto LABEL_98;
      }

      v74 = v31;
      v75 = 0;
      if (!OPENSSL_sk_push(v87, v31))
      {
        std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v74, 0);
LABEL_98:
        bssl::ssl_send_alert(v5, 2, 80);
        ERR_put_error(16, 0, 65, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 328);
        std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v75, 0);
        goto LABEL_105;
      }

      v74 = 0;
      std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v74, 0);
      std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v75, 0);
    }

    if (BYTE3(v78) == 1)
    {
      if ((bssl::ssl_is_sct_list_valid(&v79) & 1) == 0)
      {
        ERR_put_error(16, 0, 149, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 336);
        v27 = 50;
        goto LABEL_104;
      }

      if (EVP_MD_CTX_md(ctx) == 1)
      {
        v32 = a1[192];
        v33 = CRYPTO_BUFFER_new_from_CBS(&v79, *(*&v5[3].type + 800));
        std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v32[6].references, v33);
        if (!*&a1[192][6].references)
        {
          v27 = 80;
          goto LABEL_104;
        }
      }
    }

    std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v84, 0);
    if (!v89[1])
    {
      goto LABEL_67;
    }
  }

  if (EVP_MD_CTX_md(ctx))
  {
    goto LABEL_45;
  }

  bssl::ssl_cert_parse_pubkey(&v85[1], &v80);
  v22 = v80;
  v80 = 0;
  std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](&v86, v22);
  std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](&v80, 0);
  if (v86)
  {
    if ((bssl::ssl_cert_check_key_usage(&v85[1], 0) & 1) == 0)
    {
      bssl::ssl_send_alert(v5, 2, 47);
      goto LABEL_108;
    }

    if (v73)
    {
      SHA256(*&v85[1], *(&v85[1] + 1), &a1[192][6].attributes);
    }

    goto LABEL_45;
  }

  bssl::ssl_send_alert(v5, 2, 50);
  v69 = 259;
LABEL_106:
  v52 = 137;
LABEL_107:
  ERR_put_error(16, 0, v52, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", v69);
LABEL_108:
  v14 = 0;
LABEL_109:
  std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](&v86, 0);
LABEL_110:
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](&v87, 0);
LABEL_111:
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](&ctx, 0);
LABEL_112:
  v70 = v90;
  v90 = 0;
  if (v70)
  {
    CRYPTO_BUFFER_free(v70);
  }

  v71 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_1A902683C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned int *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, EVP_PKEY *a29, unint64_t *a30, unint64_t *a31)
{
  std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&a24, 0);
  std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](&a29, 0);
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](&a30, 0);
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](&a31, 0);
  std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100]((v31 - 136), 0);
  _Unwind_Resume(a1);
}

EVP_PKEY *EVP_PKEY_new(void)
{
  result = OPENSSL_zalloc(0x18uLL);
  if (result)
  {
    *&result->type = 1;
  }

  return result;
}

double EVP_aead_aes_256_gcm_tls13_init()
{
  unk_1ED4C0430 = 0u;
  *&qword_1ED4C0440 = 0u;
  unk_1ED4C0460 = 0u;
  *&result = 269487136;
  EVP_aead_aes_256_gcm_tls13_storage = 269487136;
  dword_1ED4C042C = 1;
  qword_1ED4C0438 = aead_aes_gcm_init_with_dir;
  qword_1ED4C0440 = aead_aes_gcm_cleanup;
  qword_1ED4C0450 = aead_aes_gcm_tls13_seal_scatter;
  qword_1ED4C0458 = aead_aes_gcm_open_gather;
  return result;
}

uint64_t rsa_pub_decode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_asn1(a2, &v8, 5) || v9 || *(a2 + 8))
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_rsa_asn1.c", 97);
  }

  else
  {
    v7 = RSA_parse_public_key(a3);
    if (v7 && !*(a3 + 8))
    {
      evp_pkey_set_method(a1, &rsa_asn1_meth);
      *(a1 + 8) = v7;
      return 1;
    }

    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_rsa_asn1.c", 103);
    RSA_free(v7);
  }

  return 0;
}

RSA *RSA_parse_public_key(__int128 *a1)
{
  v2 = RSA_new();
  if (v2)
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    if (!CBS_get_asn1(a1, &v6, 536870928) || !parse_integer(&v6, &v2->version) || !parse_integer(&v6, &v2->meth) || *(&v6 + 1))
    {
      v3 = 100;
      v4 = 100;
      goto LABEL_9;
    }

    if (!RSA_check_key(v2))
    {
      v3 = 104;
      v4 = 106;
LABEL_9:
      ERR_put_error(4, 0, v3, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/rsa_extra/rsa_asn1.c", v4);
      RSA_free(v2);
      return 0;
    }
  }

  return v2;
}

RSA *__cdecl RSA_new_method(ENGINE *engine)
{
  v1 = malloc_type_malloc(0x180uLL, 0x10B0040B1D60C94uLL);
  v2 = v1;
  if (v1)
  {
    *(v1 + 22) = 0u;
    *(v1 + 23) = 0u;
    *(v1 + 20) = 0u;
    *(v1 + 21) = 0u;
    *(v1 + 18) = 0u;
    *(v1 + 19) = 0u;
    *(v1 + 16) = 0u;
    *(v1 + 17) = 0u;
    *(v1 + 14) = 0u;
    *(v1 + 15) = 0u;
    *(v1 + 12) = 0u;
    *(v1 + 13) = 0u;
    *(v1 + 10) = 0u;
    *(v1 + 11) = 0u;
    *(v1 + 8) = 0u;
    *(v1 + 9) = 0u;
    *(v1 + 6) = 0u;
    *(v1 + 7) = 0u;
    *(v1 + 4) = 0u;
    *(v1 + 5) = 0u;
    *(v1 + 2) = 0u;
    *(v1 + 3) = 0u;
    *v1 = 0u;
    *(v1 + 1) = 0u;
    CRYPTO_once(&RSA_default_method_once, RSA_default_method_init);
    *v2 = &RSA_default_method_storage;
    METHOD_ref(&RSA_default_method_storage);
    v3 = *(*v2 + 72);
    *(v2 + 20) = 1;
    *(v2 + 21) = v3;
    CRYPTO_MUTEX_init((v2 + 11));
    CRYPTO_new_ex_data(v2 + 72, v4, v5);
    v6 = *(*v2 + 16);
    if (v6 && !v6(v2))
    {
      CRYPTO_MUTEX_cleanup((v2 + 11));
      METHOD_unref(*v2);
      free(v2);
      return 0;
    }
  }

  else
  {
    ERR_put_error(4, 0, 65, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_rsa.m", 77);
  }

  return v2;
}

double RSA_default_method_init()
{
  result = 0.0;
  xmmword_1ED4C04A0 = 0u;
  unk_1ED4C04B0 = 0u;
  xmmword_1ED4C0480 = 0u;
  unk_1ED4C0490 = 0u;
  RSA_default_method_storage = 0u;
  BYTE4(RSA_default_method_storage) = 1;
  return result;
}

BIGNUM *parse_integer(__int128 *a1, BIGNUM **a2)
{
  if (*a2)
  {
    parse_integer_cold_1();
  }

  result = BN_new();
  *a2 = result;
  if (result)
  {

    return BN_parse_asn1_unsigned(a1, result);
  }

  return result;
}

BIGNUM *parse_integer_0(__int128 *a1, BIGNUM **a2)
{
  if (*a2)
  {
    parse_integer_cold_1_0();
  }

  result = BN_new();
  *a2 = result;
  if (result)
  {

    return BN_parse_asn1_unsigned(a1, result);
  }

  return result;
}

BIGNUM *BN_new(void)
{
  result = OPENSSL_malloc(0x18uLL);
  if (result)
  {
    *&result->top = 0;
    *&result->neg = 0;
    result->d = 0;
    result->flags = 1;
  }

  return result;
}

BOOL BN_parse_asn1_unsigned(__int128 *a1, BIGNUM *a2)
{
  memset(v6, 170, sizeof(v6));
  if (CBS_get_asn1(a1, &v6[1], 2) && CBS_is_valid_asn1_integer(&v6[1], v6))
  {
    if (!v6[0])
    {
      return BN_bin2bn(*&v6[1], v6[3], a2) != 0;
    }

    v3 = 109;
    v4 = 31;
  }

  else
  {
    v3 = 117;
    v4 = 26;
  }

  ERR_put_error(3, 0, v3, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/bn_extra/bn_asn1.c", v4);
  return 0;
}

uint64_t METHOD_ref(uint64_t result)
{
  if (!*(result + 4))
  {
    METHOD_ref_cold_1();
  }

  return result;
}

uint64_t bn_wexpand(void **a1, unint64_t a2)
{
  if (*(a1 + 3) >= a2)
  {
    return 1;
  }

  v2 = a2;
  if (a2 >= 0x800000)
  {
    v3 = 102;
    v4 = 355;
LABEL_11:
    ERR_put_error(3, 0, v3, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/bn.c.inc", v4);
    return 0;
  }

  if ((*(a1 + 20) & 2) != 0)
  {
    v3 = 106;
    v4 = 360;
    goto LABEL_11;
  }

  result = OPENSSL_calloc(a2, 8uLL);
  if (result)
  {
    v7 = result;
    v8 = *(a1 + 2);
    if (v8)
    {
      memcpy(result, *a1, 8 * v8);
    }

    OPENSSL_free(*a1);
    *a1 = v7;
    *(a1 + 3) = v2;
    return 1;
  }

  return result;
}

BOOL CBS_is_valid_asn1_integer(unsigned __int8 **a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = **a1;
  if (a2)
  {
    *a2 = v4 >> 7;
  }

  if (v2 == 1)
  {
    return 1;
  }

  v6 = *(v3 + 1);
  if (!v4 && (v6 & 0x80000000) == 0)
  {
    return 0;
  }

  return v4 != 255 || (v6 & 0x80u) == 0;
}

void bn_big_endian_to_words(unint64_t *a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4)
{
  if (a4 > 8 * a2)
  {
    abort();
  }

  if (a4 < 8)
  {
    v4 = a4;
    if (!a4)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  do
  {
    v4 = a4 - 8;
    *a1++ = bswap64(*&a3[a4 - 8]);
    --a2;
    a4 = v4;
  }

  while (v4 > 7);
  if (v4)
  {
LABEL_7:
    v5 = 0;
    do
    {
      v6 = *a3++;
      v5 = v6 | (v5 << 8);
      --v4;
    }

    while (v4);
    *a1++ = v5;
    --a2;
  }

LABEL_10:
  v7 = 8 * a2;
  if (v7)
  {

    bzero(a1, v7);
  }
}

void RSA_free(RSA *r)
{
  if (r && CRYPTO_refcount_dec_and_test_zero(&r->dmq1))
  {
    CRYPTO_free_ex_data(&g_ex_data_class_0, r, &r->dmp1);
    BN_clear_free(r->version);
    BN_clear_free(r->meth);
    BN_clear_free(r->engine);
    BN_clear_free(r->n);
    BN_clear_free(r->e);
    BN_clear_free(r->d);
    BN_clear_free(r->p);
    BN_clear_free(r->q);
    BN_MONT_CTX_free(r[1]._method_mod_n);
    BN_MONT_CTX_free(r[1]._method_mod_p);
    BN_MONT_CTX_free(r[1]._method_mod_q);
    if (r[2].version)
    {
      v2 = 0;
      v3 = 1;
      do
      {
        BN_BLINDING_free(*(&r[2].meth->name + v2));
        v2 = v3;
      }

      while (r[2].version > v3++);
    }

    meth = r[2].meth;
    if (meth)
    {
      free(meth);
      r[2].meth = 0;
    }

    engine = r[2].engine;
    if (engine)
    {
      free(engine);
      r[2].engine = 0;
    }

    CRYPTO_MUTEX_cleanup(&r->iqmp);

    free(r);
  }
}

uint64_t bssl::ssl_verify_peer_cert(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  v3 = *this;
  v4 = *(*(*this + 48) + 472);
  if (!v4)
  {
    v24 = 46;
    v16 = *(*(this + 1) + 48);
    if (v16)
    {
      result = v16(v3, &v24);
      if (result == 1)
      {
        if (*(*(this + 1) + 308))
        {
          result = 1;
        }

        else
        {
          ERR_clear_error();
          result = 0;
        }

        *(*(this + 192) + 176) = 50;
        if (!result)
        {
          goto LABEL_32;
        }

        goto LABEL_22;
      }

      if (!result)
      {
        *(*(this + 192) + 176) = 0;
        goto LABEL_32;
      }
    }

    else
    {
      result = (*(*(*(v3 + 120) + 16) + 72))(*(this + 192), this, &v24) ^ 1;
    }

    if (!result)
    {
LABEL_32:
      if (*(v3 + 180))
      {
        return 0;
      }

      if ((*(*(this + 1) + 309) & 4) == 0)
      {
        return 0;
      }

      v20 = *(v3 + 120);
      v21 = *(v20 + 816);
      if (!v21)
      {
        return 0;
      }

      v22 = v21(v3, *(v20 + 824));
      if (v22 > 0)
      {
        return 0;
      }

      v23 = v22;
      ERR_put_error(16, 0, 289, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake.cc", 413);
      if (v23)
      {
        v18 = 80;
      }

      else
      {
        v18 = 113;
      }

LABEL_24:
      v19 = v3;
LABEL_27:
      bssl::ssl_send_alert(v19, 2, v18);
      return 1;
    }

LABEL_22:
    if (result != 1)
    {
      return result;
    }

    ERR_put_error(16, 0, 125, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake.cc", 401);
    v18 = v24;
    goto LABEL_24;
  }

  if (*(v3 + 180))
  {
    bssl::ssl_verify_peer_cert();
  }

  v5 = EVP_MD_CTX_md(*(v4 + 136));
  if (v5 != EVP_MD_CTX_md(*(*(this + 192) + 136)))
  {
    v17 = 342;
LABEL_26:
    ERR_put_error(16, 0, 273, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake.cc", v17);
    v19 = v3;
    v18 = 47;
    goto LABEL_27;
  }

  if (EVP_MD_CTX_md(*(*(this + 192) + 136)))
  {
    v6 = 0;
    while (1)
    {
      v7 = OPENSSL_sk_value(*(v4 + 136), v6);
      v8 = OPENSSL_sk_value(*(*(this + 192) + 136), v6);
      v9 = CRYPTO_BUFFER_len(v7);
      if (v9 != CRYPTO_BUFFER_len(v8))
      {
        break;
      }

      v10 = CRYPTO_BUFFER_data(v7);
      v11 = CRYPTO_BUFFER_data(v8);
      v12 = CRYPTO_BUFFER_len(v7);
      if (v12)
      {
        if (memcmp(v10, v11, v12))
        {
          break;
        }
      }

      if (++v6 >= EVP_MD_CTX_md(*(*(this + 192) + 136)))
      {
        goto LABEL_10;
      }
    }

    v17 = 357;
    goto LABEL_26;
  }

LABEL_10:
  v13 = *(v4 + 256);
  if (v13)
  {
    CRYPTO_BUFFER_up_ref(*(v4 + 256));
  }

  std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100]((*(this + 192) + 256), v13);
  v14 = *(v4 + 248);
  if (v14)
  {
    CRYPTO_BUFFER_up_ref(*(v4 + 248));
  }

  std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100]((*(this + 192) + 248), v14);
  result = 0;
  *(*(this + 192) + 176) = *(v4 + 176);
  return result;
}

uint64_t boringssl_session_set_peer_verification_state_from_session(const SSL *a1, uint64_t a2)
{
  if (!a1 || a1->version != -1252936367)
  {
    return 0;
  }

  v3 = 0;
  if (a2)
  {
    method = a1->method;
    if (method)
    {
      if (method[1].ssl_ctrl)
      {
        return 0;
      }

      v6 = SSL_SESSION_get0_peer_certificates(a2);
      v7 = boringssl_helper_copy_certificates_from_CRYPTO_BUFFERs(method, v6);
      if (v7)
      {
        v8 = v7;
        v9 = boringssl_helper_copy_public_key_from_certificates(method, v7);
        if (!v9)
        {
          WeakRetained = objc_loadWeakRetained(&method->ssl_clear);
          if (!WeakRetained || (v40 = WeakRetained, v41 = objc_loadWeakRetained(&method->ssl_clear), v42 = v41[435], v41, v40, (v42 & 1) == 0))
          {
            v43 = objc_loadWeakRetained(&method->ssl_clear);
            if (v43)
            {
              v44 = objc_loadWeakRetained(&method->ssl_clear);
              v45 = (v44[435] & 1) == 0;
            }

            else
            {
              v45 = 1;
            }

            if (v45)
            {
              if (g_boringssl_log)
              {
                v48 = g_boringssl_log;
                if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                {
                  boringssl_session_set_peer_verification_state_from_session_cold_3();
                }
              }
            }
          }

          CFRelease(v8);
          return 0;
        }

        v10 = v9;
        string = boringssl_helper_create_string(method->ssl_shutdown);
        v12 = boringssl_context_copy_ocsp_responses(method);
        v13 = boringssl_context_copy_peer_sct_list(method);
        sec_trust_with_certificates = boringssl_helper_create_sec_trust_with_certificates(a1, string, v8, v12, v13);
        if (boringssl_session_set_trust_reference(a1, sec_trust_with_certificates) && boringssl_session_set_peer_certificate_chain(a1, v8) && boringssl_session_set_peer_public_key(a1, v10))
        {
          v15 = objc_loadWeakRetained(&method->ssl_clear);
          if (v15)
          {
            v16 = v15;
            v17 = objc_loadWeakRetained(&method->ssl_clear);
            v18 = v17[435];

            if (v18)
            {
              v3 = 1;
              goto LABEL_44;
            }
          }

          v19 = objc_loadWeakRetained(&method->ssl_clear);
          if (v19)
          {
            v20 = objc_loadWeakRetained(&method->ssl_clear);
            v21 = (v20[435] & 1) == 0;
          }

          else
          {
            v21 = 1;
          }

          v3 = 1;
          if (!v21 || !g_boringssl_log)
          {
            goto LABEL_44;
          }

          v47 = g_boringssl_log;
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            boringssl_session_set_peer_verification_state_from_session_cold_2();
          }

          goto LABEL_42;
        }

        cf = v13;
        v29 = string;
        v30 = sec_trust_with_certificates;
        v31 = v12;
        v32 = objc_loadWeakRetained(&method->ssl_clear);
        if (v32 && (v33 = v32, v34 = objc_loadWeakRetained(&method->ssl_clear), v35 = v34[435], v34, v33, (v35 & 1) != 0))
        {
          v3 = 0;
        }

        else
        {
          v36 = objc_loadWeakRetained(&method->ssl_clear);
          if (v36)
          {
            v37 = objc_loadWeakRetained(&method->ssl_clear);
            v38 = (v37[435] & 1) == 0;
          }

          else
          {
            v38 = 1;
          }

          v3 = 0;
          if (v38)
          {
            v12 = v31;
            sec_trust_with_certificates = v30;
            string = v29;
            v13 = cf;
            if (!g_boringssl_log)
            {
LABEL_44:
              if (string)
              {
                CFRelease(string);
              }

              if (v13)
              {
                CFRelease(v13);
              }

              if (v12)
              {
                CFRelease(v12);
              }

              if (sec_trust_with_certificates)
              {
                CFRelease(sec_trust_with_certificates);
              }

              CFRelease(v8);
              CFRelease(v10);
              return v3;
            }

            v47 = g_boringssl_log;
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              boringssl_session_set_peer_verification_state_from_session_cold_1();
            }

            v3 = 0;
LABEL_42:

            goto LABEL_44;
          }
        }

        v12 = v31;
        sec_trust_with_certificates = v30;
        string = v29;
        v13 = cf;
        goto LABEL_44;
      }

      v22 = objc_loadWeakRetained(&method->ssl_clear);
      if (v22)
      {
        v23 = v22;
        v24 = objc_loadWeakRetained(&method->ssl_clear);
        v25 = v24[435];

        if (v25)
        {
          return 0;
        }
      }

      v26 = objc_loadWeakRetained(&method->ssl_clear);
      if (v26)
      {
        v27 = objc_loadWeakRetained(&method->ssl_clear);
        v28 = (v27[435] & 1) == 0;
      }

      else
      {
        v28 = 1;
      }

      v3 = 0;
      if (v28 && g_boringssl_log)
      {
        v46 = g_boringssl_log;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          boringssl_session_set_peer_verification_state_from_session_cold_4();
        }

        return 0;
      }
    }
  }

  return v3;
}

__CFArray *boringssl_helper_copy_certificates_from_CRYPTO_BUFFERs(void *a1, unint64_t *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = 0;
  if (v3 && a2)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v4 = Mutable;
      if (EVP_MD_CTX_md(a2))
      {
        v6 = 0;
        do
        {
          v7 = OPENSSL_sk_value(a2, v6);
          CRYPTO_BUFFER_data(v7);
          CRYPTO_BUFFER_len(v7);
          v8 = SecCertificateCreateWithBytes();
          if (v8)
          {
            v9 = v8;
            CFArrayAppendValue(v4, v8);
            CFRelease(v9);
          }

          else
          {
            WeakRetained = objc_loadWeakRetained(v3 + 2);
            if (!WeakRetained || (v11 = WeakRetained, v12 = objc_loadWeakRetained(v3 + 2), v13 = v12[435], v12, v11, (v13 & 1) == 0))
            {
              v14 = objc_loadWeakRetained(v3 + 2);
              if (v14)
              {
                v15 = objc_loadWeakRetained(v3 + 2);
                v16 = (v15[435] & 1) == 0;
              }

              else
              {
                v16 = 1;
              }

              if (v16)
              {
                if (g_boringssl_log)
                {
                  v17 = g_boringssl_log;
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                  {
                    v18 = &unk_1A9098A9F;
                    v31 = objc_loadWeakRetained(v3 + 2);
                    if (v31)
                    {
                      v30 = objc_loadWeakRetained(v3 + 2);
                      v18 = v30 + 351;
                    }

                    v19 = objc_loadWeakRetained(v3 + 2);
                    *buf = 136447234;
                    v33 = "boringssl_helper_copy_certificates_from_CRYPTO_BUFFERs";
                    v34 = 1024;
                    v35 = 167;
                    v36 = 2082;
                    v37 = v18;
                    v38 = 2048;
                    v39 = v19;
                    v40 = 2048;
                    v41 = v6;
                    _os_log_error_impl(&dword_1A8FF5000, v17, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] Failed to extract certificate #%zu", buf, 0x30u);

                    if (v31)
                    {
                    }
                  }
                }
              }
            }
          }

          ++v6;
        }

        while (v6 < EVP_MD_CTX_md(a2));
      }

      if (CFArrayGetCount(v4) < 1)
      {
        CFRelease(v4);
LABEL_36:
        v4 = 0;
      }
    }

    else
    {
      v20 = objc_loadWeakRetained(v3 + 2);
      if (v20)
      {
        v21 = v20;
        v22 = objc_loadWeakRetained(v3 + 2);
        v23 = v22[435];

        if (v23)
        {
          goto LABEL_36;
        }
      }

      v24 = objc_loadWeakRetained(v3 + 2);
      if (v24)
      {
        v25 = objc_loadWeakRetained(v3 + 2);
        v26 = (v25[435] & 1) == 0;
      }

      else
      {
        v26 = 1;
      }

      v4 = 0;
      if (v26 && g_boringssl_log)
      {
        v27 = g_boringssl_log;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          boringssl_helper_copy_certificates_from_CRYPTO_BUFFERs_cold_1(v3, v27);
        }

        goto LABEL_36;
      }
    }
  }

  v28 = *MEMORY[0x1E69E9840];
  return v4;
}

SecKeyRef boringssl_helper_copy_public_key_from_certificates(void *a1, const __CFArray *a2)
{
  v3 = a1;
  v4 = 0;
  if (v3 && a2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, 0);
    if (ValueAtIndex)
    {
      v4 = SecCertificateCopyKey(ValueAtIndex);
      goto LABEL_16;
    }

    WeakRetained = objc_loadWeakRetained(v3 + 2);
    if (WeakRetained)
    {
      v7 = WeakRetained;
      v8 = objc_loadWeakRetained(v3 + 2);
      v9 = v8[435];

      if (v9)
      {
LABEL_15:
        v4 = 0;
        goto LABEL_16;
      }
    }

    v10 = objc_loadWeakRetained(v3 + 2);
    if (v10)
    {
      v11 = objc_loadWeakRetained(v3 + 2);
      v12 = (v11[435] & 1) == 0;
    }

    else
    {
      v12 = 1;
    }

    v4 = 0;
    if (v12 && g_boringssl_log)
    {
      v13 = g_boringssl_log;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        boringssl_helper_copy_public_key_from_certificates_cold_1(v3, v13);
      }

      goto LABEL_15;
    }
  }

LABEL_16:

  return v4;
}

const char *boringssl_helper_create_string(const char *cStr)
{
  if (cStr)
  {
    return CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
  }

  return cStr;
}

__CFArray *boringssl_context_copy_ocsp_responses(void *a1)
{
  v1 = a1;
  v2 = v1;
  Mutable = v1[49];
  if (Mutable)
  {
    v4 = SSL_get0_ocsp_responses(v1[49]);
    if (v4)
    {
      v5 = v4;
      v6 = EVP_MD_CTX_md(v4);
      if (v6)
      {
        v7 = v6;
        v8 = *MEMORY[0x1E695E480];
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v6, MEMORY[0x1E695E9C0]);
        for (i = 0; i != v7; ++i)
        {
          v10 = OPENSSL_sk_value(v5, i);
          v11 = CRYPTO_BUFFER_data(v10);
          v12 = CRYPTO_BUFFER_len(v10);
          v13 = CFDataCreate(v8, v11, v12);
          CFArrayAppendValue(Mutable, v13);
          CFRelease(v13);
        }

        goto LABEL_11;
      }
    }

    else
    {
      v17 = 0;
      v18 = 0;
      SSL_get0_ocsp_response(Mutable, &v18, &v17);
      if (v17 && v18)
      {
        v14 = *MEMORY[0x1E695E480];
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9C0]);
        v15 = CFDataCreate(v14, v18, v17);
        CFArrayAppendValue(Mutable, v15);
        CFRelease(v15);
        goto LABEL_11;
      }
    }

    Mutable = 0;
  }

LABEL_11:

  return Mutable;
}

unsigned __int8 *SSL_get0_ocsp_responses(uint64_t a1)
{
  session = SSL_get_session(a1);
  result = 0;
  if ((*(a1 + 180) & 1) == 0)
  {
    if (session)
    {
      return session->tlsext_tick;
    }
  }

  return result;
}

uint64_t boringssl_context_certificate_verify_callback(const SSL *a1, char *a2)
{
  v75 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_35;
  }

  v4 = SSL_get_ex_data(a1, 0);
  if (!v4)
  {
    goto LABEL_35;
  }

  v5 = v4;
  v6 = 3042030929;
  if (v4->version != -1252936367)
  {
    goto LABEL_35;
  }

  method = v4->method;
  if (!method)
  {
    goto LABEL_35;
  }

  if (method[1].ssl_ctrl || method[1].ssl_ctx_ctrl)
  {
    v8 = SSL_get_ex_data(a1, 0);
    if (!v8)
    {
      goto LABEL_35;
    }

    if (*v8 != -1252936367)
    {
      goto LABEL_35;
    }

    v9 = v8[1];
    if (!v9)
    {
      goto LABEL_35;
    }

    is_server = SSL_is_server(a1);
    v11 = 368;
    if (!is_server)
    {
      v11 = 360;
    }

    v12 = *(v9 + v11);
    if (v12)
    {
      v13 = SSL_get0_peer_pubkey(a1);
      if (!v13)
      {
        v23 = 46;
        goto LABEL_34;
      }

      v14 = v13;
      if (CFArrayGetCount(v12) < 1)
      {
LABEL_22:
        v23 = 42;
LABEL_34:
        *a2 = v23;
LABEL_35:
        v35 = 1;
        goto LABEL_36;
      }

      v15 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v12, v15);
        if (!ValueAtIndex)
        {
          break;
        }

        v17 = ValueAtIndex;
        Length = CFDataGetLength(ValueAtIndex);
        BytePtr = CFDataGetBytePtr(v17);
        if (!Length)
        {
          break;
        }

        if (!BytePtr)
        {
          break;
        }

        *buf = BytePtr;
        *&buf[8] = Length;
        v20 = EVP_parse_public_key(buf);
        if (!v20)
        {
          break;
        }

        v21 = v20;
        v22 = EVP_PKEY_cmp(v14, v20);
        EVP_PKEY_free(v21);
        if (v22 == 1)
        {
          goto LABEL_82;
        }

        if (++v15 >= CFArrayGetCount(v12))
        {
          goto LABEL_22;
        }
      }
    }

    v23 = 80;
    goto LABEL_34;
  }

  if ((BYTE6(method[2].ssl_renegotiate) & 0xC) == 8)
  {
    WeakRetained = objc_loadWeakRetained(&method->ssl_clear);
    if (WeakRetained)
    {
      v25 = WeakRetained;
      v26 = objc_loadWeakRetained(&method->ssl_clear);
      v27 = v26[435];

      if (v27)
      {
LABEL_48:
        v35 = 2;
        goto LABEL_36;
      }
    }

    v28 = objc_loadWeakRetained(&method->ssl_clear);
    if (v28)
    {
      v29 = objc_loadWeakRetained(&method->ssl_clear);
      v30 = (v29[435] & 1) == 0;
    }

    else
    {
      v30 = 1;
    }

    v35 = 2;
    if (v30 && g_boringssl_log)
    {
      v46 = g_boringssl_log;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        boringssl_context_certificate_verify_callback_cold_2();
      }

      goto LABEL_48;
    }
  }

  else
  {
    if ((BYTE6(method[2].ssl_renegotiate) & 4) != 0)
    {
      ssl_renegotiate_low = LOBYTE(method[1].ssl_renegotiate);
      v39 = objc_loadWeakRetained(&method->ssl_clear);
      v40 = v39;
      if (ssl_renegotiate_low != 1)
      {
        if (!v39 || (v54 = objc_loadWeakRetained(&method->ssl_clear), v6 = v54[435], v54, v40, (v6 & 1) == 0))
        {
          v55 = objc_loadWeakRetained(&method->ssl_clear);
          if (v55)
          {
            v56 = objc_loadWeakRetained(&method->ssl_clear);
            v57 = (v56[435] & 1) == 0;
          }

          else
          {
            v57 = 1;
          }

          if (v57)
          {
            if (g_boringssl_log)
            {
              v62 = g_boringssl_log;
              if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
              {
                v63 = objc_loadWeakRetained(&method->ssl_clear);
                if (v63)
                {
                  v6 = objc_loadWeakRetained(&method->ssl_clear);
                  v64 = (v6 + 351);
                }

                else
                {
                  v64 = &unk_1A9098A9F;
                }

                v66 = objc_loadWeakRetained(&method->ssl_clear);
                *buf = 136446978;
                *&buf[4] = "boringssl_context_certificate_verify_callback";
                *&buf[12] = 1024;
                *&buf[14] = 2004;
                v71 = 2082;
                v72 = v64;
                v73 = 2048;
                v74 = v66;
                _os_log_impl(&dword_1A8FF5000, v62, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] Certificate verification result: FAIL", buf, 0x26u);

                if (v63)
                {
                }
              }
            }
          }
        }

        *a2 = boringssl_helper_convert_trusterror_to_alertcode(HIDWORD(method[1].ssl_renegotiate));
        goto LABEL_35;
      }

      if (!v39 || (v41 = objc_loadWeakRetained(&method->ssl_clear), v42 = v41[435], v41, v40, (v42 & 1) == 0))
      {
        v43 = objc_loadWeakRetained(&method->ssl_clear);
        if (v43)
        {
          v44 = objc_loadWeakRetained(&method->ssl_clear);
          v45 = (v44[435] & 1) == 0;
        }

        else
        {
          v45 = 1;
        }

        v35 = 0;
        if (!v45 || !g_boringssl_log)
        {
          goto LABEL_36;
        }

        v58 = g_boringssl_log;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v59 = objc_loadWeakRetained(&method->ssl_clear);
          if (v59)
          {
            ssl_renegotiate_low = objc_loadWeakRetained(&method->ssl_clear);
            v60 = ssl_renegotiate_low + 351;
          }

          else
          {
            v60 = &unk_1A9098A9F;
          }

          v65 = objc_loadWeakRetained(&method->ssl_clear);
          *buf = 136446978;
          *&buf[4] = "boringssl_context_certificate_verify_callback";
          *&buf[12] = 1024;
          *&buf[14] = 2001;
          v71 = 2082;
          v72 = v60;
          v73 = 2048;
          v74 = v65;
          _os_log_impl(&dword_1A8FF5000, v58, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] Certificate verification result: OK", buf, 0x26u);

          if (v59)
          {
          }
        }
      }

LABEL_82:
      v35 = 0;
      goto LABEL_36;
    }

    session = SSL_get_session(a1);
    if (boringssl_session_set_peer_verification_state_from_session(v5, session))
    {
      v32 = method;
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __boringssl_context_certificate_verify_callback_block_invoke;
      v67[3] = &unk_1E78697E0;
      v69 = v5;
      v33 = v32;
      v68 = v33;
      v34 = MEMORY[0x1AC57F4F0](v67);
      if (boringssl_context_evaluate_trust_async(v5, v33[44], v34))
      {
        v35 = 2;
      }

      else
      {
        *a2 = 80;
        v35 = 1;
      }
    }

    else
    {
      v47 = objc_loadWeakRetained(&method->ssl_clear);
      if (v47)
      {
        v48 = v47;
        v49 = objc_loadWeakRetained(&method->ssl_clear);
        v50 = v49[435];

        if (v50)
        {
          goto LABEL_35;
        }
      }

      v51 = objc_loadWeakRetained(&method->ssl_clear);
      if (v51)
      {
        v52 = objc_loadWeakRetained(&method->ssl_clear);
        v53 = (v52[435] & 1) == 0;
      }

      else
      {
        v53 = 1;
      }

      v35 = 1;
      if (v53 && g_boringssl_log)
      {
        v61 = g_boringssl_log;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          boringssl_context_certificate_verify_callback_cold_1();
        }

        goto LABEL_35;
      }
    }
  }

LABEL_36:
  v36 = *MEMORY[0x1E69E9840];
  return v35;
}

void ERR_put_error(int lib, int func, int reason, const char *file, int line)
{
  v5 = line;
  state = err_get_state();
  if (state)
  {
    v10 = state;
    if (lib == 2 && !reason)
    {
      reason = *__error();
    }

    v11 = *(v10 + 96);
    v12 = (v11 + 1) & 0xF;
    *(v10 + 96) = v12;
    if (v12 == *(v10 + 97))
    {
      *(v10 + 97) = (v11 + 2) & 0xF;
    }

    v13 = &v10[3 * ((v11 + 1) & 0xF)];
    free(v13[1]);
    v13[1] = 0;
    v13[2] = 0;
    *v13 = file;
    *(v13 + 10) = v5;
    *(v13 + 4) = reason & 0xFFF | (lib << 24);
  }
}

void bssl::ssl_run_handshake()
{
  __assert_rtn("ssl_run_handshake", "handshake.cc", 627, "hs->wait != ssl_hs_read_change_cipher_spec");
}

{
  __assert_rtn("ssl_run_handshake", "handshake.cc", 736, "ssl->s3->ech_status != ssl_ech_rejected");
}

{
  __assert_rtn("ssl_run_handshake", "handshake.cc", 729, "!hs->can_early_write");
}

{
  __assert_rtn("ssl_run_handshake", "handshake.cc", 728, "ssl->s3->early_data_reason != ssl_early_data_unknown");
}

{
  __assert_rtn("ssl_run_handshake", "handshake.cc", 759, "ssl->s3->ech_status != ssl_ech_rejected");
}

const __CFArray *boringssl_context_copy_peer_sct_list(void *a1)
{
  v1 = a1;
  v2 = *(v1 + 49);
  if (!v2)
  {
LABEL_9:
    v3 = 0;
    goto LABEL_10;
  }

  v13 = 0;
  v14[0] = 0;
  SSL_get0_signed_cert_timestamp_list(v2, v14, &v13);
  if (!v13)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 2);
    if (!WeakRetained || (v5 = WeakRetained, v6 = objc_loadWeakRetained(v1 + 2), v7 = v6[435], v6, v5, (v7 & 1) == 0))
    {
      v8 = objc_loadWeakRetained(v1 + 2);
      if (!v8 || (v9 = v8, v10 = objc_loadWeakRetained(v1 + 2), v11 = v10[435], v10, v9, (v11 & 1) == 0))
      {
        if (datapath_logging_enabled == 1)
        {
          boringssl_context_copy_peer_sct_list_cold_1();
          v3 = v14[1];
          goto LABEL_10;
        }
      }
    }

    goto LABEL_9;
  }

  v3 = boringssl_context_copy_peer_sct_list_from_extension(v1, v14[0], v13);
LABEL_10:

  return v3;
}

uint64_t SSL_get0_signed_cert_timestamp_list(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = SSL_get_session(a1);
  if ((*(a1 + 180) & 1) == 0 && (v7 = result) != 0 && (result = *(result + 248)) != 0)
  {
    *a2 = CRYPTO_BUFFER_data(result);
    result = CRYPTO_BUFFER_len(*(v7 + 248));
    *a3 = result;
  }

  else
  {
    *a3 = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t boringssl_helper_ciphersuite_to_key_usage(int a1, int a2)
{
  if (a1 == 772)
  {
    return 1;
  }

  result = SSL_get_cipher_by_value(a2);
  if (result)
  {
    kx_nid = SSL_CIPHER_get_kx_nid(result);
    if (kx_nid == 951)
    {
      return 4;
    }

    else
    {
      return kx_nid == 952;
    }
  }

  return result;
}

uint64_t boringssl_session_set_peer_certificate_chain(uint64_t result, uint64_t a2)
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
          v5 = *(v4 + 344);
          if (v5)
          {
            CFRelease(v5);
          }

          *(v4 + 344) = 0;
          *(v4 + 344) = a2;
          CFRetain(*(v4 + 344));
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

uint64_t boringssl_session_set_peer_public_key(uint64_t result, uint64_t a2)
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
          v5 = *(v4 + 336);
          if (v5)
          {
            CFRelease(v5);
          }

          *(v4 + 336) = 0;
          *(v4 + 336) = a2;
          CFRetain(*(v4 + 336));
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

uint64_t boringssl_context_evaluate_trust_async(uint64_t a1, __SecTrust *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (a1 && *a1 == -1252936367)
  {
    v8 = 0;
    if (v6)
    {
      if (a2)
      {
        v9 = *(a1 + 8);
        if (v9)
        {
          if (*(v9 + 112) && *(v9 + 120))
          {
            WeakRetained = objc_loadWeakRetained((v9 + 16));
            if (!WeakRetained || (v11 = WeakRetained, v12 = objc_loadWeakRetained((v9 + 16)), v3 = v12[435], v12, v11, (v3 & 1) == 0))
            {
              v13 = objc_loadWeakRetained((v9 + 16));
              if (v13)
              {
                v14 = objc_loadWeakRetained((v9 + 16));
                v15 = (v14[435] & 1) == 0;
              }

              else
              {
                v15 = 1;
              }

              if (v15)
              {
                if (g_boringssl_log)
                {
                  v28 = g_boringssl_log;
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                  {
                    v29 = objc_loadWeakRetained((v9 + 16));
                    if (v29)
                    {
                      v3 = objc_loadWeakRetained((v9 + 16));
                      v30 = v3 + 351;
                    }

                    else
                    {
                      v30 = &unk_1A9098A9F;
                    }

                    v33 = objc_loadWeakRetained((v9 + 16));
                    v34 = 136446978;
                    v35 = "boringssl_context_evaluate_trust_async";
                    v36 = 1024;
                    v37 = 1820;
                    v38 = 2082;
                    v39 = v30;
                    v40 = 2048;
                    v41 = v33;
                    _os_log_impl(&dword_1A8FF5000, v28, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] Performing external trust evaluation", &v34, 0x26u);

                    if (v29)
                    {
                    }
                  }
                }
              }
            }

            boringssl_session_update_metadata(a1);
            v32 = boringssl_context_evaluate_trust_async_external(a1, a2, v7);
          }

          else
          {
            v18 = objc_loadWeakRetained((v9 + 16));
            if (!v18 || (v19 = v18, v20 = objc_loadWeakRetained((v9 + 16)), v21 = v20[435], v20, v19, (v21 & 1) == 0))
            {
              v22 = objc_loadWeakRetained((v9 + 16));
              if (v22)
              {
                v23 = objc_loadWeakRetained((v9 + 16));
                v24 = (v23[435] & 1) == 0;
              }

              else
              {
                v24 = 1;
              }

              if (v24)
              {
                if (g_boringssl_log)
                {
                  v25 = g_boringssl_log;
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                  {
                    v26 = objc_loadWeakRetained((v9 + 16));
                    if (v26)
                    {
                      v3 = objc_loadWeakRetained((v9 + 16));
                      v27 = v3 + 351;
                    }

                    else
                    {
                      v27 = &unk_1A9098A9F;
                    }

                    v31 = objc_loadWeakRetained((v9 + 16));
                    v34 = 136446978;
                    v35 = "boringssl_context_evaluate_trust_async";
                    v36 = 1024;
                    v37 = 1824;
                    v38 = 2082;
                    v39 = v27;
                    v40 = 2048;
                    v41 = v31;
                    _os_log_impl(&dword_1A8FF5000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] Performing local trust evaluation", &v34, 0x26u);

                    if (v26)
                    {
                    }
                  }
                }
              }
            }

            v32 = boringssl_context_evaluate_trust_async_internal(a1, a2, v7);
          }

          v8 = v32;
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t boringssl_context_evaluate_trust_async_external(uint64_t a1, __SecTrust *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a1 && *a1 == -1252936367)
  {
    v7 = 0;
    if (v5)
    {
      if (a2)
      {
        v8 = *(a1 + 8);
        if (v8)
        {
          v9 = sec_trust_create(a2);
          v10 = MEMORY[0x1AC57F4F0](v8[14]);
          v11 = v10;
          if (v9)
          {
            v12 = v10 == 0;
          }

          else
          {
            v12 = 1;
          }

          v7 = !v12;
          if (!v12)
          {
            v13 = v8;
            v31[0] = MEMORY[0x1E69E9820];
            v31[1] = 3221225472;
            v31[2] = __boringssl_context_evaluate_trust_async_external_block_invoke;
            v31[3] = &unk_1E7869660;
            v36 = a1;
            v37 = v13;
            v14 = v13;
            v32 = v14;
            v34 = v6;
            v38 = a2;
            v35 = v11;
            v33 = v9;
            v15 = MEMORY[0x1AC57F4F0](v31);
            *(v14 + 550) |= 8u;
            WeakRetained = objc_loadWeakRetained(v14 + 2);
            if (!WeakRetained || (v17 = WeakRetained, v18 = objc_loadWeakRetained(v14 + 2), v19 = v18[435], v18, v17, (v19 & 1) == 0))
            {
              v20 = objc_loadWeakRetained(v14 + 2);
              if (v20)
              {
                v21 = objc_loadWeakRetained(v14 + 2);
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
                  v25 = g_boringssl_log;
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                  {
                    v26 = objc_loadWeakRetained(v14 + 2);
                    if (v26)
                    {
                      v30 = objc_loadWeakRetained(v14 + 2);
                      v27 = v30 + 351;
                    }

                    else
                    {
                      v27 = &unk_1A9098A9F;
                    }

                    v28 = objc_loadWeakRetained(v14 + 2);
                    *buf = 136446978;
                    v40 = "boringssl_context_evaluate_trust_async_external";
                    v41 = 1024;
                    v42 = 1805;
                    v43 = 2082;
                    v44 = v27;
                    v45 = 2048;
                    v46 = v28;
                    _os_log_impl(&dword_1A8FF5000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] Asyncing for external verify block", buf, 0x26u);

                    if (v26)
                    {
                    }
                  }
                }
              }
            }

            if (v15)
            {
              v29 = v14[15];
              if (v29)
              {
                v14[62] = v14[62] + 1;
                dispatch_async(v29, v15);
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v7;
}

const SSL *boringssl_helper_create_sec_trust_with_certificates(const SSL *result, uint64_t a2, const void *a3, const void *a4, const __CFArray *a5)
{
  if (result)
  {
    v5 = result;
    if (result->version != -1252936367)
    {
      return 0;
    }

    method = result->method;
    if (!method)
    {
      return 0;
    }

    negotiated_protocol_version = boringssl_session_get_negotiated_protocol_version(result);
    negotiated_ciphersuite = boringssl_session_get_negotiated_ciphersuite(v5);
    boringssl_helper_ciphersuite_to_key_usage(negotiated_protocol_version, negotiated_ciphersuite);
    WeakRetained = objc_loadWeakRetained(&method->ssl_clear);
    if (!WeakRetained || (v13 = WeakRetained, v14 = objc_loadWeakRetained(&method->ssl_clear), v15 = v14[435], v14, v13, (v15 & 1) == 0))
    {
      v16 = objc_loadWeakRetained(&method->ssl_clear);
      if (v16)
      {
        v17 = objc_loadWeakRetained(&method->ssl_clear);
        v18 = (v17[435] & 1) == 0;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
        if (g_boringssl_log)
        {
          v19 = g_boringssl_log;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            boringssl_helper_create_sec_trust_with_certificates_cold_1();
          }
        }
      }
    }

    SSLWithKeyUsage = SecPolicyCreateSSLWithKeyUsage();
    trust = 0;
    v21 = SecTrustCreateWithCertificates(a3, SSLWithKeyUsage, &trust);
    if (SSLWithKeyUsage)
    {
      CFRelease(SSLWithKeyUsage);
    }

    v22 = objc_loadWeakRetained(&method->ssl_clear);
    if (!v22 || (v23 = v22, v24 = objc_loadWeakRetained(&method->ssl_clear), v25 = v24[435], v24, v23, (v25 & 1) == 0))
    {
      v26 = objc_loadWeakRetained(&method->ssl_clear);
      if (v26)
      {
        v27 = objc_loadWeakRetained(&method->ssl_clear);
        v28 = (v27[435] & 1) == 0;
      }

      else
      {
        v28 = 1;
      }

      if (v28)
      {
        if (g_boringssl_log)
        {
          v29 = g_boringssl_log;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            boringssl_helper_create_sec_trust_with_certificates_cold_2();
          }
        }
      }
    }

    if (v21)
    {
      goto LABEL_82;
    }

    ssl_accept = method[1].ssl_accept;
    v31 = SecTrustSetURLRequestAttribution();
    v32 = objc_loadWeakRetained(&method->ssl_clear);
    if (!v32 || (v33 = v32, v34 = objc_loadWeakRetained(&method->ssl_clear), v35 = v34[435], v34, v33, (v35 & 1) == 0))
    {
      v36 = objc_loadWeakRetained(&method->ssl_clear);
      if (v36)
      {
        v37 = objc_loadWeakRetained(&method->ssl_clear);
        v38 = (v37[435] & 1) == 0;
      }

      else
      {
        v38 = 1;
      }

      if (v38)
      {
        if (g_boringssl_log)
        {
          v39 = g_boringssl_log;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            boringssl_helper_create_sec_trust_with_certificates_cold_3();
          }
        }
      }
    }

    if (BYTE4(method[2].ssl_renegotiate) & 0x10 | v31)
    {
      goto LABEL_81;
    }

    if (a4)
    {
      v31 = SecTrustSetOCSPResponse(trust, a4);
      v40 = objc_loadWeakRetained(&method->ssl_clear);
      if (!v40 || (v41 = v40, v42 = objc_loadWeakRetained(&method->ssl_clear), v43 = v42[435], v42, v41, (v43 & 1) == 0))
      {
        v44 = objc_loadWeakRetained(&method->ssl_clear);
        if (v44)
        {
          v45 = objc_loadWeakRetained(&method->ssl_clear);
          v46 = (v45[435] & 1) == 0;
        }

        else
        {
          v46 = 1;
        }

        if (v46)
        {
          if (g_boringssl_log)
          {
            v54 = g_boringssl_log;
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
            {
              boringssl_helper_create_sec_trust_with_certificates_cold_4();
            }

LABEL_60:
          }
        }
      }
    }

    else
    {
      v47 = objc_loadWeakRetained(&method->ssl_clear);
      if (v47)
      {
        v48 = v47;
        v49 = objc_loadWeakRetained(&method->ssl_clear);
        v50 = v49[435];

        if (v50)
        {
          v31 = 0;
          goto LABEL_61;
        }
      }

      v51 = objc_loadWeakRetained(&method->ssl_clear);
      if (v51)
      {
        v52 = objc_loadWeakRetained(&method->ssl_clear);
        v53 = (v52[435] & 1) == 0;
      }

      else
      {
        v53 = 1;
      }

      v31 = 0;
      if (v53 && g_boringssl_log)
      {
        v54 = g_boringssl_log;
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
        {
          boringssl_helper_create_sec_trust_with_certificates_cold_5();
        }

        v31 = 0;
        goto LABEL_60;
      }
    }

LABEL_61:
    if (a5)
    {
      v31 |= SecTrustSetSignedCertificateTimestamps(trust, a5);
      v55 = objc_loadWeakRetained(&method->ssl_clear);
      if (!v55 || (v56 = v55, v57 = objc_loadWeakRetained(&method->ssl_clear), v58 = v57[435], v57, v56, (v58 & 1) == 0))
      {
        v59 = objc_loadWeakRetained(&method->ssl_clear);
        if (v59)
        {
          v60 = objc_loadWeakRetained(&method->ssl_clear);
          v61 = (v60[435] & 1) == 0;
        }

        else
        {
          v61 = 1;
        }

        if (v61)
        {
          if (g_boringssl_log)
          {
            v69 = g_boringssl_log;
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
            {
              boringssl_helper_create_sec_trust_with_certificates_cold_6();
            }

LABEL_80:
          }
        }
      }
    }

    else
    {
      v62 = objc_loadWeakRetained(&method->ssl_clear);
      if (!v62 || (v63 = v62, v64 = objc_loadWeakRetained(&method->ssl_clear), v65 = v64[435], v64, v63, (v65 & 1) == 0))
      {
        v66 = objc_loadWeakRetained(&method->ssl_clear);
        if (v66)
        {
          v67 = objc_loadWeakRetained(&method->ssl_clear);
          v68 = (v67[435] & 1) == 0;
        }

        else
        {
          v68 = 1;
        }

        if (v68)
        {
          if (g_boringssl_log)
          {
            v69 = g_boringssl_log;
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
            {
              boringssl_helper_create_sec_trust_with_certificates_cold_7();
            }

            goto LABEL_80;
          }
        }
      }
    }

LABEL_81:
    if (!v31)
    {
      return trust;
    }

LABEL_82:
    v70 = objc_loadWeakRetained(&method->ssl_clear);
    if (!v70 || (v71 = v70, v72 = objc_loadWeakRetained(&method->ssl_clear), v73 = v72[435], v72, v71, (v73 & 1) == 0))
    {
      v74 = objc_loadWeakRetained(&method->ssl_clear);
      if (v74)
      {
        v75 = objc_loadWeakRetained(&method->ssl_clear);
        v76 = (v75[435] & 1) == 0;
      }

      else
      {
        v76 = 1;
      }

      if (v76)
      {
        if (g_boringssl_log)
        {
          v77 = g_boringssl_log;
          if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
          {
            boringssl_helper_create_sec_trust_with_certificates_cold_8(method, v77);
          }
        }
      }
    }

    return trust;
  }

  return result;
}