uint64_t bssl::ssl_reverify_peer_cert(bssl **this, bssl::SSL_HANDSHAKE *a2)
{
  v2 = *this;
  if (*(*(*this + 6) + 472))
  {
    bssl::ssl_reverify_peer_cert();
  }

  v3 = this[1];
  if (!*(v3 + 308))
  {
    bssl::ssl_reverify_peer_cert();
  }

  v4 = a2;
  LOBYTE(v7) = 46;
  v5 = *(v3 + 6);
  if (!v5 || (result = v5(v2, &v7), result == 1))
  {
    ERR_put_error(16, 0, 125, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake.cc", 444);
    if (v4)
    {
      bssl::ssl_send_alert(v2, 2, v7);
    }

    return 1;
  }

  return result;
}

uint64_t bssl::ssl_send_tls12_certificate(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16[1] = v3;
  v16[2] = v3;
  v16[0] = v3;
  CBB_zero(v16);
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[1] = v4;
  v15[2] = v4;
  v14[2] = v4;
  v15[0] = v4;
  v14[0] = v4;
  v14[1] = v4;
  v13[1] = v4;
  v13[2] = v4;
  v13[0] = v4;
  if ((*(**this + 88))(*this, v16, v15, 11) && CBB_add_u24_length_prefixed(v15, v14))
  {
    v5 = *(this + 190);
    if (v5)
    {
      if (*(v5 + 4))
      {
        __assert_rtn("ssl_send_tls12_certificate", "handshake.cc", 579, "hs->credential->type == SSLCredentialType::kX509");
      }

      v6 = 0;
      v7 = *(v5 + 48);
      while (v6 < EVP_MD_CTX_md(v7))
      {
        v8 = OPENSSL_sk_value(v7, v6);
        if (CBB_add_u24_length_prefixed(v14, v13))
        {
          v9 = CRYPTO_BUFFER_data(v8);
          v10 = CRYPTO_BUFFER_len(v8);
          ++v6;
          if (CBB_add_bytes(v13, v9, v10))
          {
            continue;
          }
        }

        goto LABEL_9;
      }
    }

    v11 = bssl::ssl_add_message_cbb(*this, v16);
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  CBB_cleanup(v16);
  return v11;
}

RSA *pkey_rsa_keygen(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (*(v3 + 8) || (result = BN_new(), (*(v3 + 8) = result) != 0) && (result = BN_set_word(result, 0x10001uLL), result))
  {
    result = RSA_new();
    if (result)
    {
      v5 = result;
      if (RSA_generate_key_ex(result, *v3, *(v3 + 8), 0))
      {
        EVP_PKEY_assign_RSA(a2, v5);
        return 1;
      }

      else
      {
        RSA_free(v5);
        return 0;
      }
    }
  }

  return result;
}

uint64_t pkey_rsa_sign(uint64_t a1, unsigned __int8 *a2, void *a3, const unsigned __int8 *a4, unsigned int a5)
{
  v9 = *(a1 + 40);
  v10 = *(a1 + 16);
  v11 = *(v10 + 8);
  v12 = EVP_PKEY_size(v10);
  v13 = v12;
  if (!a2)
  {
    goto LABEL_10;
  }

  if (*a3 < v12)
  {
    ERR_put_error(6, 0, 100, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_rsa.c", 181);
    return 0;
  }

  v15 = *(v9 + 24);
  if (v15)
  {
    siglen = -1431655766;
    v16 = *(v9 + 16);
    if (v16 == 6)
    {
      v19 = *(v9 + 32);
      v20 = *(v9 + 40);
      return RSA_sign_pss_mgf1();
    }

    if (v16 != 1)
    {
      return 0;
    }

    v17 = EVP_MD_type(v15);
    result = RSA_sign(v17, a4, a5, a2, &siglen, v11);
    if (result)
    {
      v13 = siglen;
LABEL_10:
      *a3 = v13;
      return 1;
    }
  }

  else
  {
    v18 = *(v9 + 16);

    return RSA_sign_raw();
  }

  return result;
}

uint64_t pkey_rsa_verify_recover(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 40);
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  v13 = EVP_PKEY_size(v11);
  v14 = v13;
  if (!a2)
  {
    *a3 = v13;
    return 1;
  }

  v15 = *a3;
  if (*a3 < v13)
  {
    ERR_put_error(6, 0, 100, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_rsa.c", 253);
    return 0;
  }

  v17 = *(v10 + 24);
  v18 = *(v10 + 16);
  if (v17)
  {
    if (v18 != 1)
    {
      return 0;
    }

    v19 = EVP_MD_size(v17);
    memset(v23, 170, sizeof(v23));
    result = setup_tbuf(v10, a1);
    if (result)
    {
      v20 = EVP_MD_type(*(v10 + 24));
      result = RSA_add_pkcs1_prefix(&v23[3], &v23[1], v23, v20, &pkey_rsa_verify_recover_kDummyHash, v19);
      if (result)
      {
        v22 = 0xAAAAAAAAAAAAAAAALL;
        v21 = !RSA_verify_raw(v12, &v22, *(v10 + 48), v14, a4, a5, 1) || v22 != *&v23[1] || CRYPTO_memcmp(*(v10 + 48), *&v23[3], v22 - v19);
        if (v23[0])
        {
          OPENSSL_free(*&v23[3]);
        }

        if (v21)
        {
          return 0;
        }

        if (v19)
        {
          memcpy(a2, (*(v10 + 48) + v22 - v19), v19);
        }

        *a3 = v19;
        return 1;
      }
    }
  }

  else
  {

    return RSA_verify_raw(v12, a3, a2, v15, a4, a5, v18);
  }

  return result;
}

uint64_t pkey_rsa_encrypt(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 40);
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  v13 = EVP_PKEY_size(v11);
  v14 = v13;
  if (a2)
  {
    v15 = *a3;
    if (*a3 >= v13)
    {
      v17 = *(v10 + 16);
      if (v17 == 4)
      {
        result = setup_tbuf(v10, a1);
        if (result)
        {
          v18 = *(v10 + 48);
          v19 = *(v10 + 56);
          v20 = *(v10 + 64);
          v21 = *(v10 + 24);
          v22 = *(v10 + 32);
          result = RSA_padding_add_PKCS1_OAEP_mgf1();
          if (result)
          {
            return RSA_encrypt(v12, a3, a2, *a3, *(v10 + 48), v14, 3);
          }
        }
      }

      else
      {

        return RSA_encrypt(v12, a3, a2, v15, a4, a5, v17);
      }
    }

    else
    {
      ERR_put_error(6, 0, 100, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_rsa.c", 317);
      return 0;
    }
  }

  else
  {
    *a3 = v13;
    return 1;
  }

  return result;
}

uint64_t pkey_rsa_decrypt(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 40);
  v7 = *(a1 + 16);
  v8 = *(v7 + 8);
  v9 = EVP_PKEY_size(v7);
  if (a2)
  {
    if (*a3 >= v9)
    {
      if (*(v6 + 16) == 4)
      {
        result = setup_tbuf(v6, a1);
        if (result)
        {
          v11 = *(v6 + 48);
          result = RSA_decrypt();
          if (result)
          {
            v12 = *(v6 + 48);
            v13 = *(v6 + 56);
            v14 = *(v6 + 64);
            v15 = *(v6 + 24);
            v16 = *(v6 + 32);
            return RSA_padding_check_PKCS1_OAEP_mgf1() != 0;
          }
        }
      }

      else
      {

        return RSA_decrypt();
      }
    }

    else
    {
      ERR_put_error(6, 0, 100, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_rsa.c", 349);
      return 0;
    }
  }

  else
  {
    *a3 = v9;
    return 1;
  }

  return result;
}

BOOL setup_tbuf(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    return 1;
  }

  v4 = EVP_PKEY_size(*(a2 + 16));
  v5 = OPENSSL_malloc(v4);
  *(a1 + 48) = v5;
  return v5 != 0;
}

void boringssl_bio_create_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  v3 = 82;
  _os_log_error_impl(&dword_1A8FF5000, v0, OS_LOG_TYPE_ERROR, "%{public}s(%d) Failed to allocate a boringssl_bio_state structure", v2, 0x12u);
  v1 = *MEMORY[0x1E69E9840];
}

void boringssl_bio_create_cold_2()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  v3 = 185;
  _os_log_error_impl(&dword_1A8FF5000, v0, OS_LOG_TYPE_ERROR, "%{public}s(%d) BIO_new(BIO_nw_protocol()) failed", v2, 0x12u);
  v1 = *MEMORY[0x1E69E9840];
}

void boringssl_bio_destroy_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  v3 = 196;
  _os_log_debug_impl(&dword_1A8FF5000, v0, OS_LOG_TYPE_DEBUG, "%{public}s(%d) ", v2, 0x12u);
  v1 = *MEMORY[0x1E69E9840];
}

void boringssl_ciphers_fillout_configuration_string_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void boringssl_ciphers_create_configuration_string_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void boringssl_ciphers_create_configuration_string_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void boringssl_ciphers_create_configuration_string_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x1E69E9840];
}

void boringssl_ciphers_copy_supported_list_for_groups_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x1E69E9840];
}

void boringssl_ciphers_copy_supported_list_for_groups_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void boringssl_session_set_peer_verification_state_from_session_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_session_set_peer_verification_state_from_session_cold_2()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_session_set_peer_verification_state_from_session_cold_3()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_session_set_peer_verification_state_from_session_cold_4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_session_set_state_cold_1(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  if (WeakRetained)
  {
    v2 = objc_loadWeakRetained((a1 + 16));
  }

  v6 = objc_loadWeakRetained((a1 + 16));
  boringssl_helper_get_session_state_description(*(a1 + 292));
  boringssl_helper_get_session_state_description(a2);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x3Au);

  if (WeakRetained)
  {
  }

  v12 = *MEMORY[0x1E69E9840];
}

void boringssl_session_handshake_incomplete_cold_1()
{
  OUTLINED_FUNCTION_11();
  v10 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_18(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_15();
  }

  v3 = OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x30u);

  if (v2)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10();
}

void boringssl_session_handshake_negotiate_cold_1()
{
  OUTLINED_FUNCTION_11();
  v10 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_18(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_15();
  }

  v3 = OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Cu);

  if (v2)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10();
}

void boringssl_context_start_handshake_timer_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_session_handshake_error_print_cold_1()
{
  OUTLINED_FUNCTION_11();
  v10 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_18(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_15();
  }

  v3 = OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x30u);

  if (v2)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10();
}

void boringssl_session_read_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_session_read_cold_3(uint64_t a1, unsigned int a2, int a3, _DWORD *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v9 = g_boringssl_log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 16));
      if (WeakRetained)
      {
        v4 = objc_loadWeakRetained((a1 + 16));
      }

      v12 = objc_loadWeakRetained((a1 + 16));
      boringssl_helper_get_ssl_error_code_description(a2);
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_17(&dword_1A8FF5000, v13, v14, "%{public}s(%d) %{public}s[%p] %{public}s", v15, v16, v17, v18, 2u);

      if (WeakRetained)
      {
      }
    }
  }

  *a4 = a3;
  v10 = *MEMORY[0x1E69E9840];
}

void boringssl_session_disconnect_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_session_disconnect_cold_2()
{
  OUTLINED_FUNCTION_11();
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((v1 + 16));
  if (WeakRetained)
  {
    v0 = OUTLINED_FUNCTION_16();
  }

  v3 = OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x30u);

  if (WeakRetained)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10();
}

void boringssl_session_copy_authenticator_trust_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_session_copy_authenticator_trust_cold_2()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_session_set_peer_hostname_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_session_set_peer_hostname_cold_2()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_session_set_ech_config_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_session_set_session_state_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_session_set_session_state_cold_2()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v4 = v3;
  v15 = *MEMORY[0x1E69E9840];
  v5 = OUTLINED_FUNCTION_18(v3);
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((v4 + 16));
  }

  v6 = objc_loadWeakRetained((v4 + 16));
  v7 = SSL_SESSION_get0_cipher(v2);
  SSL_CIPHER_get_name(v7);
  v8 = SSL_SESSION_get0_cipher(v2);
  SSL_CIPHER_get_id(v8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v9, v10, v11, v12, v13, 0x36u);

  if (v5)
  {
  }

  v14 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10();
}

void boringssl_session_set_session_state_cold_3()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_session_set_session_state_cold_4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_session_set_association_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void __boringssl_session_apply_protocol_options_for_transport_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void __boringssl_session_apply_protocol_options_for_transport_block_invoke_2_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  v3 = 2093;
  _os_log_error_impl(&dword_1A8FF5000, v0, OS_LOG_TYPE_ERROR, "%{public}s(%d) Clearning PSK data", v2, 0x12u);
  v1 = *MEMORY[0x1E69E9840];
}

void __boringssl_session_apply_protocol_options_for_transport_block_invoke_19_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  v3 = 2099;
  _os_log_error_impl(&dword_1A8FF5000, v0, OS_LOG_TYPE_ERROR, "%{public}s(%d) Clearning PSK identity", v2, 0x12u);
  v1 = *MEMORY[0x1E69E9840];
}

void boringssl_session_server_psk_callback_handler_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_session_server_psk_callback_handler_cold_2()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_session_server_psk_callback_handler_cold_3()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_session_client_psk_callback_handler_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_session_client_psk_callback_handler_cold_2()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_session_client_psk_callback_handler_cold_3()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void nw_protocol_boringssl_write_bytes_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v0)
  {
    if (g_boringssl_log)
    {
      v2 = OUTLINED_FUNCTION_20();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_13_0();
        OUTLINED_FUNCTION_4_0();
        OUTLINED_FUNCTION_19();
        OUTLINED_FUNCTION_10_0();
        _os_log_debug_impl(v3, v4, v5, v6, v7, 0x2Cu);
      }
    }
  }

  v1 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_allocate_batching_frame_cold_1(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = g_boringssl_log;
  if (g_boringssl_log && OUTLINED_FUNCTION_36())
  {
    v6 = v4;
    OUTLINED_FUNCTION_34();
    nw_protocol_get_name();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_37(&dword_1A8FF5000, v7, v8, "%{public}s(%d) %{public}s[%p] nw_protocol_get_output_frames(%s) is not valid", v9, v10, v11, v12, 2u);
  }

  *a3 = 0;
  v5 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_allocate_batching_frame_cold_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v4 && g_boringssl_log && OUTLINED_FUNCTION_23())
  {
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_4();
    _os_log_debug_impl(v6, v7, v8, v9, v10, 0x2Cu);
  }

  *a3 = 1;
  v5 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_allocate_batching_frame_cold_3(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log && OUTLINED_FUNCTION_23())
  {
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_4();
    _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Cu);
  }

  *a3 = 1;
  v4 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_allocate_batching_frame_cold_4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v4 && g_boringssl_log && OUTLINED_FUNCTION_23())
  {
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_4();
    _os_log_debug_impl(v6, v7, v8, v9, v10, 0x32u);
  }

  *a3 = 0;
  v5 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_allocate_batching_frame_cold_5(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log && OUTLINED_FUNCTION_23())
  {
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_4();
    _os_log_debug_impl(v5, v6, v7, v8, v9, 0x32u);
  }

  *a3 = 0;
  v4 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_allocate_batching_frame_cold_6()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log && OUTLINED_FUNCTION_27())
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v1, v2, "%{public}s(%d) %{public}s[%p] no output handler available", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_31();
  v0 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_flush_batching_frame_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_14_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }

  v1 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_flush_batching_frame_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_30())
  {
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_flush_batching_frame_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log && OUTLINED_FUNCTION_30())
  {
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v1, v2, v3, v4, v5, 0x30u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_flush_batching_frame_cold_4()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_14_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }

  v1 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_read_frames_cold_1(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = g_boringssl_log;
  if (g_boringssl_log && OUTLINED_FUNCTION_36())
  {
    v6 = v4;
    OUTLINED_FUNCTION_34();
    nw_protocol_get_name();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_37(&dword_1A8FF5000, v7, v8, "%{public}s(%d) %{public}s[%p] nw_protocol_get_input_frames(%s) is not valid", v9, v10, v11, v12, 2u);
  }

  *a3 = 0;
  v5 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_handshake_negotiate_cold_3()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_24();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_14_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x36u);
    }
  }

  v1 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_handshake_negotiate_cold_4()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_42(v1, v2, v3, v4, v5);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_handshake_negotiate_cold_5()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_42(v1, v2, v3, v4, v5);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void nw_boringssl_read_cold_2()
{
  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v1)
  {
    if (g_boringssl_log)
    {
      v3 = OUTLINED_FUNCTION_33();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v4 = *v0;
        OUTLINED_FUNCTION_13_0();
        OUTLINED_FUNCTION_12_0();
        OUTLINED_FUNCTION_10_0();
        _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Cu);
      }
    }
  }

  v2 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_output_available_cold_4()
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

void nw_protocol_boringssl_disconnect_cold_2(void *a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a1;
  boringssl_helper_get_session_state_description(a2);
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_add_input_handler_cold_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = g_boringssl_log;
  if (g_boringssl_log && OUTLINED_FUNCTION_36())
  {
    v6 = v4;
    OUTLINED_FUNCTION_34();
    nw_protocol_get_name();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_37(&dword_1A8FF5000, v7, v8, "%{public}s(%d) %{public}s[%p] nw_protocol_supports_external_data(%s) is not valid", v9, v10, v11, v12, 2u);
  }

  *a3 = 0;
  v5 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_add_input_handler_cold_3()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log && OUTLINED_FUNCTION_27())
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v1, v2, "%{public}s(%d) %{public}s[%p] no get_parameters callback", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_31();
  v0 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_add_input_handler_cold_4()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log && OUTLINED_FUNCTION_27())
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v1, v2, "%{public}s(%d) %{public}s[%p] received add input handler again", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_31();
  v0 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_add_input_handler_cold_5()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log && OUTLINED_FUNCTION_27())
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v1, v2, "%{public}s(%d) %{public}s[%p] boringssl_bio_create failed", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_31();
  v0 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_add_input_handler_cold_6()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log && OUTLINED_FUNCTION_27())
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v1, v2, "%{public}s(%d) %{public}s[%p] boringssl_context_create_with_nw_context failed", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_31();
  v0 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_add_input_handler_cold_7()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log && OUTLINED_FUNCTION_27())
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v1, v2, "%{public}s(%d) %{public}s[%p] no parameters", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_31();
  v0 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_get_output_frames_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_4();
    _os_log_debug_impl(v1, v2, v3, v4, v5, 0x26u);
  }

  OUTLINED_FUNCTION_39();
  v0 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_get_output_frames_cold_3(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v4 && g_boringssl_log && OUTLINED_FUNCTION_23())
  {
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_4();
    _os_log_debug_impl(v6, v7, v8, v9, v10, 0x2Cu);
  }

  *a3 = 0;
  v5 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_get_output_frames_cold_5(uint64_t a1, int a2, _DWORD *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v5)
  {
    if (g_boringssl_log)
    {
      v7 = OUTLINED_FUNCTION_34();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_13_0();
        OUTLINED_FUNCTION_2_0();
        OUTLINED_FUNCTION_28();
        _os_log_debug_impl(v8, v9, v10, v11, v12, 0x2Cu);
      }
    }
  }

  *a3 = a2;
  v6 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_get_output_frames_cold_6()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log && OUTLINED_FUNCTION_27())
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v1, v2, "%{public}s(%d) %{public}s[%p] nw_frame_create_external failed", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_39();
  v0 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_get_output_frames_cold_7()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log && OUTLINED_FUNCTION_27())
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v1, v2, "%{public}s(%d) %{public}s[%p] output buffer is NULL", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_39();
  v0 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_get_output_frames_cold_8()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log && OUTLINED_FUNCTION_27())
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v1, v2, "%{public}s(%d) %{public}s[%p] nw_frame_create failed", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_39();
  v0 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_input_finished_cold_3()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_33();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_10_0();
      _os_log_debug_impl(v2, v3, v4, v5, v6, 0x36u);
    }
  }

  v1 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_input_finished_cold_4()
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

void nw_protocol_boringssl_finalize_output_frames_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = 136446978;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  v4 = v0;
  _os_log_debug_impl(&dword_1A8FF5000, v1, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] ", v3, 0x26u);
  v2 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_connect_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_14_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }

  v1 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_connect_cold_3()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_14_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }

  v1 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_connect_cold_4()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log && OUTLINED_FUNCTION_27())
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v1, v2, "%{public}s(%d) %{public}s[%p] no parameters", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_31();
  v0 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_connected_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_14_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }

  v1 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_connected_cold_3()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_42(v1, v2, v3, v4, v5);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_connected_cold_5()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_14_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }

  v1 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_disconnected_cold_1()
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

void nw_protocol_boringssl_disconnected_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_42(v1, v2, v3, v4, v5);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_reset_cold_1()
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

void nw_protocol_boringssl_reset_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log && OUTLINED_FUNCTION_27())
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v1, v2, "%{public}s(%d) %{public}s[%p] boringssl_bio_create failed", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_31();
  v0 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_reset_cold_3()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log && OUTLINED_FUNCTION_27())
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v1, v2, "%{public}s(%d) %{public}s[%p] boringssl_context_create_with_nw_context failed", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_31();
  v0 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_reset_cold_4()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log && OUTLINED_FUNCTION_27())
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v1, v2, "%{public}s(%d) %{public}s[%p] nw_parameters_copy_context failed", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_31();
  v0 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_error_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_42(v1, v2, v3, v4, v5);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_error_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_24();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_17_0();
      _os_log_impl(v1, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 0x36u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_error_cold_5()
{
  v6 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_24();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_17_0();
      _os_log_impl(v1, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 0x36u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_error_cold_7()
{
  v6 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_17_0();
      _os_log_impl(v1, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 0x26u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void nw_protocol_error_print_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  *v4 = 136446978;
  OUTLINED_FUNCTION_0();
  *&v4[7] = 63;
  v4[9] = 2048;
  v5 = v0;
  v6 = 2082;
  v7 = v1;
  _os_log_error_impl(&dword_1A8FF5000, v2, OS_LOG_TYPE_ERROR, "%{public}s(%d) BoringSSL %p: %{public}s", v4, 0x26u);
  v3 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_write_frames_cold_2()
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

void nw_protocol_boringssl_write_frames_cold_3(uint64_t a1, unsigned int *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_FAULT))
  {
    v4 = *a2;
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_17_0();
    _os_log_fault_impl(v5, v6, OS_LOG_TYPE_FAULT, v7, v8, 0x32u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_write_frames_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_17_0();
      _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x26u);
    }
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __nw_protocol_boringssl_write_frames_block_invoke_138_cold_1(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v6 = OUTLINED_FUNCTION_34();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = *v3;
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_35();
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_46(&dword_1A8FF5000, v10, v11, "%{public}s(%d) %{public}s[%p] External data buffer length is too large. Partial writes are unsupported.", v12, v13, v14, v15, v16);
    }

    result = 0;
    *a3 = *a2;
  }

  else
  {
    result = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void __nw_protocol_boringssl_input_available_block_invoke_cold_1(uint64_t *a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      v6 = *a1;
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_35();
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_46(&dword_1A8FF5000, v7, v8, "%{public}s(%d) %{public}s[%p] Failed to process input message", v9, v10, v11, v12, v13);
    }

    a2 = *a1;
  }

  *a3 = a2;
  v5 = *MEMORY[0x1E69E9840];
}

void __nw_protocol_boringssl_get_input_frames_block_invoke_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v6 && g_boringssl_log)
  {
    v8 = v4;
    if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_DEBUG))
    {
      v9 = *v8;
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_35();
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_28();
      _os_log_debug_impl(v10, v11, v12, v13, v14, 0x26u);
    }

    v5 = *v8;
  }

  *a3 = v5;
  v7 = *MEMORY[0x1E69E9840];
}

void __nw_protocol_boringssl_get_input_frames_block_invoke_143_cold_1()
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

void __nw_protocol_boringssl_get_input_frames_block_invoke_143_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_33();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_14_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x32u);
    }
  }

  v1 = *MEMORY[0x1E69E9840];
}

void __nw_protocol_boringssl_get_input_frames_block_invoke_143_cold_3()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_20();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_14_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
    }
  }

  v1 = *MEMORY[0x1E69E9840];
}

void __nw_protocol_boringssl_get_input_frames_block_invoke_143_cold_4()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_33();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_14_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x36u);
    }
  }

  v1 = *MEMORY[0x1E69E9840];
}

void __nw_protocol_boringssl_get_input_frames_block_invoke_143_cold_5()
{
  v10 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log && OUTLINED_FUNCTION_27())
  {
    v2 = *v0;
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v3, v4, "%{public}s(%d) %{public}s[%p] Failed to create trimmed frame", v5, v6, v7, v8, v9);
  }

  OUTLINED_FUNCTION_31();
  v1 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_initiate_pqtls_fallback_cold_1()
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

void nw_protocol_boringssl_begin_connection_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) boringssl session create failed", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_begin_connection_cold_3()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) boringssl session set bio failed", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_begin_connection_cold_4(uint64_t a1, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v3 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *a2;
      OUTLINED_FUNCTION_35();
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_14_0();
      _os_log_error_impl(v5, v6, v7, v8, v9, 0x30u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_begin_connection_cold_5()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_14_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }

  v1 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_begin_connection_cold_6()
{
  v6 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log && OUTLINED_FUNCTION_30())
  {
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v1, v2, v3, v4, v5, 0x30u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_begin_connection_cold_7()
{
  v6 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v1, v2, v3, v4, v5, 0x26u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_begin_connection_cold_8(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v7 = OUTLINED_FUNCTION_34();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = *a2;
      OUTLINED_FUNCTION_35();
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_28();
      _os_log_debug_impl(v10, v11, v12, v13, v14, 0x30u);
    }
  }

  *a4 = a3;
  v8 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_begin_connection_cold_9()
{
  v6 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v1, v2, v3, v4, v5, 0x26u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_begin_connection_cold_10()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_14_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }

  v1 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_begin_connection_cold_11()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_14_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }

  v1 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_begin_connection_cold_12()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) no parameters", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void boringssl_crypto_hash_nid_to_cc_digest_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  *v4 = 136446722;
  OUTLINED_FUNCTION_0();
  *&v4[7] = 361;
  v4[9] = v0;
  v5 = v1;
  _os_log_error_impl(&dword_1A8FF5000, v2, OS_LOG_TYPE_ERROR, "%{public}s(%d) No support for cc digest with NID %i.", v4, 0x18u);
  v3 = *MEMORY[0x1E69E9840];
}

void bssl::dtls1_open_handshake()
{
  __assert_rtn("dtls1_get_incoming_message", "d1_both.cc", 271, "frag->seq == msg_hdr->seq");
}

{
  __assert_rtn("dtls1_open_handshake", "d1_both.cc", 386, "frag->msg_len == msg_len");
}

{
  __assert_rtn("dtls1_open_handshake", "d1_both.cc", 392, "msg_len > 0");
}

void bssl::dtls1_hm_fragment_mark()
{
  __assert_rtn("dtls1_hm_fragment_mark", "d1_both.cc", 215, "msg_len > 0");
}

{
  __assert_rtn("dtls1_hm_fragment_mark", "d1_both.cc", 211, "0");
}

void bssl::dtls1_next_message()
{
  __assert_rtn("dtls1_next_message", "d1_both.cc", 423, "dtls1_is_current_message_complete(ssl)");
}

{
  __assert_rtn("dtls1_next_message", "d1_both.cc", 422, "ssl->s3->has_message");
}

void bssl::tls13_server_handshake()
{
  __assert_rtn("do_send_half_rtt_ticket", "tls13_server.cc", 1139, "!SSL_is_dtls(hs->ssl)");
}

{
  __assert_rtn("do_send_server_certificate_verify", "tls13_server.cc", 1083, "0");
}

{
  __assert_rtn("do_send_hello_retry_request", "tls13_server.cc", 739, "hs->pake_participant == nullptr");
}

void boringssl_private_key_sign_cold_1(unsigned __int16 a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 136446722;
  v4 = "boringssl_private_key_sign";
  v5 = 1024;
  v6 = 24;
  v7 = 1026;
  v8 = a1;
  _os_log_error_impl(&dword_1A8FF5000, a2, OS_LOG_TYPE_ERROR, "%{public}s(%d) Failed to get signature algorithm: %{public}d", &v3, 0x18u);
  v2 = *MEMORY[0x1E69E9840];
}

void boringssl_private_key_sign_cold_2(__CFError **a1, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  if (v3)
  {
    LODWORD(v3) = CFErrorGetCode(v3);
  }

  v5 = 136446722;
  v6 = "boringssl_private_key_sign";
  v7 = 1024;
  v8 = 84;
  v9 = 1024;
  v10 = v3;
  _os_log_error_impl(&dword_1A8FF5000, log, OS_LOG_TYPE_ERROR, "%{public}s(%d) SecKeyCreateSignature failed: %d", &v5, 0x18u);
  v4 = *MEMORY[0x1E69E9840];
}

void bssl::dtls1_write_record()
{
  __assert_rtn("dtls1_write_record", "d1_pkt.cc", 231, "buf->empty()");
}

{
  __assert_rtn("dtls1_write_record", "d1_pkt.cc", 227, "in.size() <= SSL3_RT_MAX_PLAIN_LENGTH");
}

void bssl::ssl_protocol_version()
{
  __assert_rtn("ssl_protocol_version", "ssl_versions.cc", 274, "0");
}

{
  __assert_rtn("ssl_protocol_version", "ssl_versions.cc", 270, "ssl->s3->version != 0");
}

void bssl::tls_on_handshake_complete()
{
  __assert_rtn("tls_on_handshake_complete", "tls_method.cc", 72, "!ssl->s3->has_message");
}

{
  __assert_rtn("tls_on_handshake_complete", "tls_method.cc", 79, "!ssl->s3->hs_buf || ssl->s3->hs_buf->length == 0");
}

void bssl::tls_seal_record()
{
  __assert_rtn("tls_seal_scatter_record", "tls_record.cc", 460, "ssl->s3->aead_write_ctx->ExplicitNonceLen() == 0");
}

{
  __assert_rtn("tls_seal_scatter_record", "tls_record.cc", 474, "false");
}

{
  __assert_rtn("tls_seal_scatter_record", "tls_record.cc", 480, "SSL3_RT_HEADER_LENGTH + ssl_cipher_get_record_split_len( ssl->s3->aead_write_ctx->cipher()) == split_record_len");
}

{
  __assert_rtn("tls_seal_scatter_record", "tls_record.cc", 490, "tls_seal_scatter_prefix_len(ssl, type, in_len) == split_record_len + SSL3_RT_HEADER_LENGTH - 1");
}

void bssl::do_seal_record()
{
  __assert_rtn("do_seal_record", "tls_record.cc", 377, "in == out || !buffers_alias(in, in_len, out, in_len)");
}

{
  __assert_rtn("do_seal_record", "tls_record.cc", 378, "!buffers_alias(in, in_len, out_prefix, ssl_record_prefix_len(ssl))");
}

{
  __assert_rtn("do_seal_record", "tls_record.cc", 379, "!buffers_alias(in, in_len, out_suffix, suffix_len)");
}

void RSA_encrypt_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) RSA_NO_PADDING encryption not implemented", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void RSA_encrypt_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) RSA_PKCS1_OAEP_PADDING encryption not implemented", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void RSA_encrypt_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) boringssl_memory_malloc failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void RSA_padding_check_PKCS1_OAEP_mgf1_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) RSA_padding_check_PKCS1_OAEP_mgf1 not implemented", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void RSA_padding_add_PKCS1_OAEP_mgf1_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) RSA_padding_add_PKCS1_OAEP_mgf1 not implemented", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void RSA_verify_raw_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) boringssl_memory_malloc failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void RSA_verify_raw_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) boringssl_memory_malloc failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void RSA_decrypt_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) RSA_decrypt not implemented", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void rsa_default_sign_raw_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) rsa_default_sign_raw not implemented", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void RSA_sign_raw_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) RSA_sign_raw not implemented", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void RSA_sign_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) RSA_sign not implemented", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void RSA_sign_pss_mgf1_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) RSA_sign not implemented", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void HMAC_cold_1(void *a1, const EVP_MD *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v5 = 136446722;
  v6 = "HMAC";
  v7 = 1024;
  v8 = 34;
  v9 = 1024;
  v10 = EVP_MD_type(a2);
  _os_log_error_impl(&dword_1A8FF5000, v3, OS_LOG_TYPE_ERROR, "%{public}s(%d) evp_to_ccdigest_info(%d) failed", &v5, 0x18u);

  v4 = *MEMORY[0x1E69E9840];
}

void MLKEM768_generate_key_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1(&dword_1A8FF5000, v0, v1, "%{public}s(%d) cckem_export_pubkey failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void MLKEM768_generate_key_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x1E69E9840];
}

void MLKEM768_parse_public_key_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x1E69E9840];
}

void MLKEM768_encap_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1(&dword_1A8FF5000, v0, v1, "%{public}s(%d) cckem_encapsulate failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void MLKEM768_encap_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1(&dword_1A8FF5000, v0, v1, "%{public}s(%d) MLKEM768_public_key not initialized", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void MLKEM768_decap_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1(&dword_1A8FF5000, v0, v1, "%{public}s(%d) cckem_decapsulate failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void MLKEM768_decap_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1(&dword_1A8FF5000, v0, v1, "%{public}s(%d) MLKEM768_private_key not initialized", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void KYBER_generate_key_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1(&dword_1A8FF5000, v0, v1, "%{public}s(%d) cckem_export_pubkey failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void KYBER_generate_key_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x1E69E9840];
}

void KYBER_parse_public_key_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x1E69E9840];
}

void KYBER_encap_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1(&dword_1A8FF5000, v0, v1, "%{public}s(%d) cckem_encapsulate failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void KYBER_encap_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1(&dword_1A8FF5000, v0, v1, "%{public}s(%d) KYBER_public_key not initialized", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void KYBER_decap_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1(&dword_1A8FF5000, v0, v1, "%{public}s(%d) cckem_decapsulate failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void KYBER_decap_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1(&dword_1A8FF5000, v0, v1, "%{public}s(%d) KYBER_private_key not initialized", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void aes_init_key_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) EVP_CIPH_ECB_MODE not implemented", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void aes_init_key_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) EVP_CIPH_ECB_MODE not implemented", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void aes_init_key_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) EVP_CIPH_ECB_MODE not implemented", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void aes_init_key_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) EVP_CIPH_CTR_MODE not implemented", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void aes_init_key_cold_5(int a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 136446722;
  v4 = "aes_init_key";
  v5 = 1024;
  v6 = 99;
  v7 = 1024;
  v8 = a1;
  _os_log_error_impl(&dword_1A8FF5000, a2, OS_LOG_TYPE_ERROR, "%{public}s(%d) Unsupported EVP mode: %d", &v3, 0x18u);
  v2 = *MEMORY[0x1E69E9840];
}

void aead_aes_gcm_seal_scatter_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) ccgcm_set_iv failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void aead_aes_gcm_seal_scatter_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) ccgcm_aad failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void aead_aes_gcm_seal_scatter_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) ccgcm_update failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void aead_aes_gcm_seal_scatter_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) ccgcm_update failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void aead_aes_gcm_seal_scatter_cold_5()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) ccgcm_finalize failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void aead_aes_gcm_seal_scatter_cold_6()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) ccgcm_reset failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void aead_aes_gcm_open_gather_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) ccgcm_aad failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void aead_aes_gcm_open_gather_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) ccgcm_update failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void aead_aes_gcm_open_gather_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) ccgcm_finalize failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void bssl::tls13_client_handshake()
{
  __assert_rtn("do_send_client_certificate_verify", "tls13_client.cc", 1021, "0");
}

{
  __assert_rtn("do_read_encrypted_extensions", "tls13_client.cc", 634, "ssl->s3->ech_status != ssl_ech_rejected");
}

{
  __assert_rtn("do_read_encrypted_extensions", "tls13_client.cc", 630, "ssl->s3->session_reused");
}

{
  __assert_rtn("do_send_second_client_hello", "tls13_client.cc", 359, "hs->ssl->s3->write_level == ssl_encryption_initial");
}

{
  __assert_rtn("do_read_hello_retry_request", "tls13_client.cc", 293, "!hs->pake_participant");
}

{
  __assert_rtn("do_read_hello_retry_request", "tls13_client.cc", 189, "ssl->s3->version != 0");
}

void bssl::close_early_data()
{
  __assert_rtn("close_early_data", "tls13_client.cc", 106, "ssl->s3->write_level == level");
}

{
  __assert_rtn("close_early_data", "tls13_client.cc", 97, "level == ssl_encryption_handshake");
}

{
  __assert_rtn("close_early_data", "tls13_client.cc", 64, "hs->in_early_data");
}

void bssl::ssl_add_clienthello_tlsext()
{
  __assert_rtn("ssl_add_clienthello_tlsext", "extensions.cc", 4221, "out_encoded == nullptr");
}

{
  __assert_rtn("ssl_add_clienthello_tlsext", "extensions.cc", 4325, "psk_extension_len == CBB_len(&extensions) - len_before");
}

void bssl::ext_ri_parse_serverhello()
{
  __assert_rtn("ext_ri_parse_serverhello", "extensions.cc", 762, "ssl->s3->previous_client_finished.size() == ssl->s3->previous_server_finished.size()");
}

{
  __assert_rtn("ext_ri_parse_serverhello", "extensions.cc", 764, "ssl->s3->initial_handshake_complete == !ssl->s3->previous_client_finished.empty()");
}

void bssl::ext_alpn_parse_serverhello()
{
  __assert_rtn("ext_alpn_parse_serverhello", "extensions.cc", 1417, "!ssl->s3->initial_handshake_complete");
}

{
  __assert_rtn("ext_alpn_parse_serverhello", "extensions.cc", 1418, "!hs->config->alpn_client_proto_list.empty()");
}

void bssl::ext_npn_parse_serverhello()
{
  __assert_rtn("ext_npn_parse_serverhello", "extensions.cc", 1186, "!ssl->s3->initial_handshake_complete");
}

{
  __assert_rtn("ext_npn_parse_serverhello", "extensions.cc", 1187, "!SSL_is_dtls(ssl)");
}

{
  __assert_rtn("ext_npn_parse_serverhello", "extensions.cc", 1188, "ssl->ctx->next_proto_select_cb != NULL");
}

void bssl::ext_channel_id_parse_serverhello()
{
  __assert_rtn("ext_channel_id_parse_serverhello", "extensions.cc", 1640, "!SSL_is_dtls(hs->ssl)");
}

{
  __assert_rtn("ext_channel_id_parse_serverhello", "extensions.cc", 1641, "hs->config->channel_id_private");
}

void bssl::ext_early_data_parse_serverhello()
{
  __assert_rtn("ext_early_data_parse_serverhello", "extensions.cc", 2197, "!ssl->s3->used_hello_retry_request");
}

{
  __assert_rtn("ext_early_data_parse_serverhello", "extensions.cc", 2189, "ssl->s3->early_data_reason != ssl_early_data_unknown");
}

void bssl::ext_quic_transport_params_parse_serverhello_impl()
{
  __assert_rtn("ext_quic_transport_params_parse_serverhello_impl", "extensions.cc", 2736, "ssl_protocol_version(ssl) == TLS1_3_VERSION");
}

{
  __assert_rtn("ext_quic_transport_params_parse_serverhello_impl", "extensions.cc", 2737, "used_legacy_codepoint == hs->config->quic_use_legacy_codepoint");
}

{
  __assert_rtn("ext_quic_transport_params_parse_serverhello_impl", "extensions.cc", 2735, "ssl->quic_method != nullptr");
}

void bssl::ext_alps_parse_serverhello_impl()
{
  __assert_rtn("ext_alps_parse_serverhello_impl", "extensions.cc", 3313, "!ssl->s3->initial_handshake_complete");
}

{
  __assert_rtn("ext_alps_parse_serverhello_impl", "extensions.cc", 3316, "use_new_codepoint == hs->config->alps_use_new_codepoint");
}

{
  __assert_rtn("ext_alps_parse_serverhello_impl", "extensions.cc", 3315, "!hs->config->alps_configs.empty()");
}

{
  __assert_rtn("ext_alps_parse_serverhello_impl", "extensions.cc", 3314, "!hs->config->alpn_client_proto_list.empty()");
}

void bssl::add_record_to_flight()
{
  __assert_rtn("add_record_to_flight", "s3_both.cc", 140, "!ssl->s3->pending_hs_data");
}

{
  __assert_rtn("add_record_to_flight", "s3_both.cc", 142, "ssl->s3->pending_flight_offset == 0");
}

void bssl::read_v2_client_hello()
{
  __assert_rtn("read_v2_client_hello", "s3_both.cc", 407, "msg_type == SSL2_MT_CLIENT_HELLO");
}

{
  __assert_rtn("read_v2_client_hello", "s3_both.cc", 358, "in.size() >= SSL3_RT_HEADER_LENGTH");
}

void bssl::ssl_tls13_cipher_meets_policy()
{
  __assert_rtn("ssl_tls13_cipher_meets_policy", "s3_both.cc", 738, "false");
}

{
  __assert_rtn("ssl_tls13_cipher_meets_policy", "s3_both.cc", 726, "false");
}

{
  __assert_rtn("ssl_tls13_cipher_meets_policy", "s3_both.cc", 743, "false");
}

void boringssl_session_state_create_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136446466;
  OUTLINED_FUNCTION_0();
  *(&v2[3] + 2) = 52;
  _os_log_error_impl(&dword_1A8FF5000, v0, OS_LOG_TYPE_ERROR, "%{public}s(%d) SSL_SESSION_to_bytes failed", v2, 0x12u);
  v1 = *MEMORY[0x1E69E9840];
}

void boringssl_session_state_create_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136446466;
  OUTLINED_FUNCTION_0();
  *(&v2[3] + 2) = 40;
  _os_log_error_impl(&dword_1A8FF5000, v0, OS_LOG_TYPE_ERROR, "%{public}s(%d) Failed to allocate a boringssl session state object.", v2, 0x12u);
  v1 = *MEMORY[0x1E69E9840];
}

void boringssl_session_state_copy_serialized_session_state_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  *v3 = 136446722;
  OUTLINED_FUNCTION_0();
  *&v3[7] = 86;
  v3[9] = 2048;
  v4 = v0;
  _os_log_error_impl(&dword_1A8FF5000, v1, OS_LOG_TYPE_ERROR, "%{public}s(%d) boringssl_memory_malloc(%zu) failed", v3, 0x1Cu);
  v2 = *MEMORY[0x1E69E9840];
}

void boringssl_session_state_copy_serialized_session_state_cold_2(unsigned __int8 *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x40u);
  v7 = *MEMORY[0x1E69E9840];
}

void boringssl_session_state_copy_serialized_session_state_cold_3(unsigned __int8 *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x36u);
  v7 = *MEMORY[0x1E69E9840];
}

void boringssl_session_state_copy_serialized_session_state_cold_4(unsigned __int8 *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
  v7 = *MEMORY[0x1E69E9840];
}

void boringssl_session_state_create_from_dispatch_data_cold_1(uint64_t a1, NSObject *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  if (WeakRetained)
  {
    v2 = objc_loadWeakRetained((a1 + 16));
    v6 = v2 + 351;
  }

  else
  {
    v6 = &unk_1A9098A9F;
  }

  v7 = objc_loadWeakRetained((a1 + 16));
  *v10 = 136446978;
  OUTLINED_FUNCTION_0();
  *&v10[7] = 194;
  v10[9] = 2082;
  v11 = v6;
  v12 = 2048;
  v13 = v8;
  _os_log_error_impl(&dword_1A8FF5000, a2, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] Failed to extract the SSL_SESSION bytes.", v10, 0x26u);

  if (WeakRetained)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
}

void bssl::tls_write_app_data()
{
  __assert_rtn("tls_write_app_data", "s3_pkt.cc", 134, "ssl_can_write(ssl)");
}

{
  __assert_rtn("tls_write_app_data", "s3_pkt.cc", 186, "bytes_written <= to_write");
}

{
  __assert_rtn("tls_write_app_data", "s3_pkt.cc", 135, "!ssl->s3->aead_write_ctx->is_null_cipher()");
}

void bssl::ssl_send_alert_impl()
{
  __assert_rtn("ssl_send_alert_impl", "s3_pkt.cc", 439, "level == SSL3_AL_FATAL");
}

{
  __assert_rtn("ssl_send_alert_impl", "s3_pkt.cc", 440, "desc != SSL_AD_CLOSE_NOTIFY");
}

void bssl::anonymous namespace::ECKeyShare::Decap()
{
  __assert_rtn("Decap", "ssl_key_share.cc", 90, "private_key_");
}

{
  __assert_rtn("Decap", "ssl_key_share.cc", 89, "group_");
}

void bssl::anonymous namespace::ECKeyShare::SerializePrivateKey()
{
  __assert_rtn("SerializePrivateKey", "ssl_key_share.cc", 129, "private_key_");
}

{
  __assert_rtn("SerializePrivateKey", "ssl_key_share.cc", 128, "group_");
}

void boringssl_helper_create_sec_trust_with_certificates_cold_1()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  v10 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_18(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_15();
  }

  v3 = OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Cu);

  if (v2)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10();
}

void boringssl_helper_create_sec_trust_with_certificates_cold_2()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  v10 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_18(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_15();
  }

  v3 = OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Cu);

  if (v2)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10();
}

void boringssl_helper_create_sec_trust_with_certificates_cold_3()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  v12 = *MEMORY[0x1E69E9840];
  v3 = OUTLINED_FUNCTION_18(v2);
  if (v3)
  {
    v0 = OUTLINED_FUNCTION_15();
  }

  v10 = OUTLINED_FUNCTION_15();
  v11 = *(v1 + 264);
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x36u);

  if (v3)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10();
}

void boringssl_helper_create_sec_trust_with_certificates_cold_4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  v10 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_18(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_15();
  }

  v3 = OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Cu);

  if (v2)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10();
}

void boringssl_helper_create_sec_trust_with_certificates_cold_5()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_helper_create_sec_trust_with_certificates_cold_6()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  v10 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_18(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_15();
  }

  v3 = OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Cu);

  if (v2)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10();
}

void boringssl_helper_create_sec_trust_with_certificates_cold_7()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_helper_copy_identity_certificate_chain_from_identity_array_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  v6 = *MEMORY[0x1E69E9840];
}

void boringssl_helper_copy_identity_certificate_chain_from_identity_array_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) Failed to extract the certificate from the leaf (first element of the certificate chain)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void boringssl_helper_copy_identity_certificate_chain_from_identity_array_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) The leaf of the certificate chain is not a SecIdentityRef", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void boringssl_helper_copy_identity_certificate_chain_from_identity_array_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) CFArrayCreateMutable failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void boringssl_helper_copy_leaf_private_key_from_identity_array_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  v6 = *MEMORY[0x1E69E9840];
}

void boringssl_helper_copy_leaf_private_key_from_identity_array_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) Failed to extract the private key from the leaf certificate", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void boringssl_helper_copy_leaf_private_key_from_identity_array_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) The leaf of the certificate chain is not a SecIdentityRef", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void ECDH_compute_key_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x1E69E9840];
}

void ECDH_compute_key_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void ECDH_compute_key_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x1E69E9840];
}

void ECDH_compute_key_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void ECDH_compute_key_cold_5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x1E69E9840];
}

void ECDH_compute_key_cold_6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void ECDH_compute_key_cold_7()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void ECDH_compute_key_cold_8()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void bssl::ssl_ctx_get_current_time()
{
  __assert_rtn("ssl_ctx_get_current_time", "ssl_lib.cc", 384, "0");
}

{
  __assert_rtn("ssl_ctx_get_current_time", "ssl_lib.cc", 412, "0");
}

void boringssl_ecdsa_get_cc_curve_parameters_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_4_3(&dword_1A8FF5000, v0, v1, "%{public}s(%d) Elliptic curve algorithm with NID %d is not supported", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void ECDSA_sign_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) ECDSA_sign not implemented", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void ECDSA_do_sign_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) ECDSA_do_sign not implemented", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void ECDSA_verify_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) ccec_import_pub failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void ECDSA_verify_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) ccec_verify failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void ECDSA_verify_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) boringssl_memory_malloc failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void ECDSA_verify_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) i2o_ECPublicKey failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void ECDSA_size_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_4_3(&dword_1A8FF5000, v0, v1, "%{public}s(%d) ecdsa_get_cc_curve_parameters(%d) failed", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void ECDSA_do_verify_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) ccec_import_pub failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void ECDSA_do_verify_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) ccec_verify_composite failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void ECDSA_do_verify_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) BN_bn2bin_padded failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void ECDSA_do_verify_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) boringssl_memory_malloc failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void ECDSA_do_verify_cold_5()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) i2o_ECPublicKey failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void ECDSA_do_verify_cold_6()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) boringssl_memory_malloc failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void ECDSA_do_verify_cold_7()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_4_3(&dword_1A8FF5000, v0, v1, "%{public}s(%d) ecdsa_get_cc_curve_parameters(%d) failed", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void boringssl_metrics_create_connection_event_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) xpc_dictionary_create failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void boringssl_metrics_create_connection_failure_event_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) xpc_dictionary_create failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void boringssl_metrics_create_ech_event_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) xpc_dictionary_create failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void boringssl_metrics_log_event_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) xpc_copy failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __boringssl_metrics_log_metric_block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) Failed to log metrics", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void boringssl_context_state_create_cold_1(os_log_t log)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136446466;
  v3 = "boringssl_context_state_create";
  v4 = 1024;
  v5 = 35;
  _os_log_error_impl(&dword_1A8FF5000, log, OS_LOG_TYPE_ERROR, "%{public}s(%d) Failed to allocate a boringssl context state object.", &v2, 0x12u);
  v1 = *MEMORY[0x1E69E9840];
}

void boringssl_context_set_max_version_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_context_set_min_version_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_context_set_cipher_suites_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_context_set_key_exchange_groups_from_list_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  v3 = 523;
  _os_log_error_impl(&dword_1A8FF5000, v0, OS_LOG_TYPE_ERROR, "%{public}s(%d) No supported key exchange groups from the provided selection", v2, 0x12u);
  v1 = *MEMORY[0x1E69E9840];
}

void boringssl_context_set_key_exchange_groups_from_list_cold_2()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_context_certificate_verify_callback_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_context_certificate_verify_callback_cold_2()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_context_set_quic_transport_parameters_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_context_set_quic_transport_parameters_cold_2()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_context_zlib_uncompress_data_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_context_zlib_uncompress_data_cold_2()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  v3 = 778;
  _os_log_error_impl(&dword_1A8FF5000, v0, OS_LOG_TYPE_ERROR, "%{public}s(%d) boringssl_memory_malloc failed", v2, 0x12u);
  v1 = *MEMORY[0x1E69E9840];
}

void boringssl_context_keylog_handler_cold_1()
{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_6();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x30u);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_14_1();
}

void boringssl_context_copy_peer_sct_list_cold_1()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v14 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v4 = v1;
    v5 = g_boringssl_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      WeakRetained = objc_loadWeakRetained(v4);
      if (WeakRetained)
      {
        v0 = objc_loadWeakRetained(v4);
      }

      v8 = objc_loadWeakRetained(v4);
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_4();
      _os_log_debug_impl(v9, v10, v11, v12, v13, 0x26u);

      if (WeakRetained)
      {
      }
    }
  }

  *v3 = 0;
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_context_set_alpn_protocol_list_cold_1()
{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_6();
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v3);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v2);
  }

  v5 = objc_loadWeakRetained(v2);
  MEMORY[0x1AC57FB30](v1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x2Cu);

  if (WeakRetained)
  {
  }

  v11 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_14_1();
}

void boringssl_context_set_alpn_protocol_list_cold_2()
{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_6();
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v3);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v2);
  }

  v5 = objc_loadWeakRetained(v2);
  xpc_array_get_count(v1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x30u);

  if (WeakRetained)
  {
  }

  v11 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_14_1();
}

void boringssl_context_set_alpn_protocol_list_cold_3()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_context_set_alpn_protocol_list_cold_4()
{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_6();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x30u);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_14_1();
}

void boringssl_context_set_alpn_protocol_list_cold_5()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_context_set_signed_cert_timestamp_list_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_context_set_signed_cert_timestamp_list_cold_2()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_context_set_ocsp_response_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_context_process_trust_result_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_context_evaluate_trust_async_internal_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void __boringssl_context_evaluate_trust_async_external_block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_6();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x36u);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_14_1();
}

void __boringssl_context_evaluate_trust_async_external_block_invoke_3_cold_2()
{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_6();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x36u);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_14_1();
}

void __boringssl_context_evaluate_trust_async_external_block_invoke_3_cold_3()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void __boringssl_context_evaluate_trust_async_external_block_invoke_3_cold_4()
{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_6();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Cu);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_14_1();
}

void __boringssl_context_evaluate_trust_async_external_block_invoke_3_cold_5()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_context_certificate_request_callback_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_context_certificate_request_callback_cold_2()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_context_set_identity_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_context_set_identity_cold_2()
{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_6();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Cu);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_14_1();
}

void boringssl_context_install_identity_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_context_install_identity_cold_2()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_context_message_handler_cold_1()
{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_6();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Cu);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_14_1();
}

void boringssl_context_set_enable_message_mode_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_context_create_with_nw_context_cold_1()
{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x30u);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_14_1();
}

void boringssl_context_set_encryption_secrets_cold_1(id *a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1);
  if (WeakRetained)
  {
    v2 = objc_loadWeakRetained(a1);
  }

  v6 = objc_loadWeakRetained(a1);
  boringssl_session_in_early_data(a2);
  boringssl_session_early_data_accepted(a2);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x3Au);

  if (WeakRetained)
  {
  }

  v12 = *MEMORY[0x1E69E9840];
}

void boringssl_context_new_session_handler_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
}

void boringssl_context_error_print_cold_1()
{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_6();
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x30u);

  if (WeakRetained)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_14_1();
}

void bssl::ssl_server_handshake()
{
  __assert_rtn("do_finish_server_handshake", "handshake_server.cc", 1900, "ssl->session == nullptr");
}

{
  __assert_rtn("do_finish_server_handshake", "handshake_server.cc", 1904, "ssl->session != nullptr");
}

{
  __assert_rtn("do_cert_callback", "handshake_server.cc", 853, "ssl->s3->ech_status != ssl_ech_accepted");
}

{
  __assert_rtn("negotiate_version", "handshake_server.cc", 204, "ssl->s3->version == 0");
}

void bssl::ssl_client_handshake()
{
  __assert_rtn("do_finish_client_handshake", "handshake_client.cc", 2000, "ssl->session != nullptr");
}

{
  __assert_rtn("do_read_session_ticket", "handshake_client.cc", 1912, "!hs->new_session");
}

{
  __assert_rtn("do_read_server_key_exchange", "handshake_client.cc", 1316, "alg_a == SSL_aPSK");
}

{
  __assert_rtn("do_reverify_server_certificate", "handshake_client.cc", 1139, "hs->ssl->ctx->reverify_on_resume");
}

{
  __assert_rtn("handle_hello_verify_request", "handshake_client.cc", 708, "msg.type == DTLS1_MT_HELLO_VERIFY_REQUEST");
}

{
  __assert_rtn("handle_hello_verify_request", "handshake_client.cc", 709, "!hs->received_hello_verify_request");
}

{
  __assert_rtn("handle_hello_verify_request", "handshake_client.cc", 707, "SSL_is_dtls(ssl)");
}

{
  __assert_rtn("do_read_server_hello", "handshake_client.cc", 806, "ssl->s3->version == 0 || (hs->early_data_offered && ssl->s3->version == hs->early_session->ssl_version)");
}

{
  __assert_rtn("do_read_server_hello", "handshake_client.cc", 839, "!SSL_is_dtls(ssl)");
}

{
  __assert_rtn("do_read_server_hello", "handshake_client.cc", 823, "ssl_session_protocol_version(hs->early_session.get()) >= TLS1_3_VERSION");
}

{
  __assert_rtn("do_read_server_hello", "handshake_client.cc", 821, "ssl_protocol_version(ssl) < TLS1_3_VERSION");
}

{
  __assert_rtn("do_read_server_hello", "handshake_client.cc", 940, "!ssl->s3->initial_handshake_complete");
}

{
  __assert_rtn("should_offer_early_data", "handshake_client.cc", 496, "!ssl->server");
}

void bssl::ssl_create_cipher_list()
{
  __assert_rtn("ssl_create_cipher_list", "ssl_cipher.cc", 1422, "co_list[num - 1].cipher != nullptr");
}

{
  __assert_rtn("ssl_create_cipher_list", "ssl_cipher.cc", 1429, "num == OPENSSL_ARRAY_SIZE(co_list)");
}

{
  __assert_rtn("ssl_create_cipher_list", "ssl_cipher.cc", 1427, "co_list[num - 1].cipher != nullptr");
}

{
  __assert_rtn("ssl_create_cipher_list", "ssl_cipher.cc", 1417, "co_list[num - 1].cipher != nullptr");
}

{
  __assert_rtn("ssl_create_cipher_list", "ssl_cipher.cc", 1412, "co_list[num - 1].cipher != nullptr");
}

void boringssl_memory_copy_array_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  *v3 = 136446722;
  OUTLINED_FUNCTION_0();
  *&v3[7] = 42;
  v3[9] = 2048;
  v4 = v0;
  _os_log_error_impl(&dword_1A8FF5000, v1, OS_LOG_TYPE_ERROR, "%{public}s(%d) boringssl_memory_malloc(%zu) failed", v3, 0x1Cu);
  v2 = *MEMORY[0x1E69E9840];
}

void boringssl_memory_copy_array_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136446466;
  OUTLINED_FUNCTION_0();
  *(&v2[3] + 2) = 36;
  _os_log_error_impl(&dword_1A8FF5000, v0, OS_LOG_TYPE_ERROR, "%{public}s(%d) Input array length is 0 (empty)", v2, 0x12u);
  v1 = *MEMORY[0x1E69E9840];
}

void boringssl_memory_copy_array_cold_3()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136446466;
  OUTLINED_FUNCTION_0();
  *(&v2[3] + 2) = 32;
  _os_log_error_impl(&dword_1A8FF5000, v0, OS_LOG_TYPE_ERROR, "%{public}s(%d) Input array is NULL", v2, 0x12u);
  v1 = *MEMORY[0x1E69E9840];
}

void aead_chacha20_poly1305_seal_scatter_cold_1(os_log_t log)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136446466;
  v3 = "aead_chacha20_poly1305_seal_scatter";
  v4 = 1024;
  v5 = 168;
  _os_log_error_impl(&dword_1A8FF5000, log, OS_LOG_TYPE_ERROR, "%{public}s(%d) ccchacha20 failed", &v2, 0x12u);
  v1 = *MEMORY[0x1E69E9840];
}

void bssl::SSLAEADContext::Open()
{
  __assert_rtn("Open", "ssl_aead_ctx.cc", 264, "variable_nonce_len_ == 8");
}

{
  __assert_rtn("Open", "ssl_aead_ctx.cc", 271, "nonce_len == fixed_nonce_.size()");
}

void bssl::SSLAEADContext::SealScatter()
{
  __assert_rtn("SealScatter", "ssl_aead_ctx.cc", 333, "variable_nonce_included_in_record_");
}

{
  __assert_rtn("SealScatter", "ssl_aead_ctx.cc", 340, "variable_nonce_len_ == 8");
}

{
  __assert_rtn("SealScatter", "ssl_aead_ctx.cc", 347, "!xor_fixed_nonce_");
}

{
  __assert_rtn("SealScatter", "ssl_aead_ctx.cc", 358, "nonce_len == fixed_nonce_.size()");
}

{
  __assert_rtn("SealScatter", "ssl_aead_ctx.cc", 368, "!result || written_suffix_len == suffix_len");
}

void bssl::ssl_reverify_peer_cert()
{
  __assert_rtn("ssl_reverify_peer_cert", "handshake.cc", 434, "ssl->s3->established_session == nullptr");
}

{
  __assert_rtn("ssl_reverify_peer_cert", "handshake.cc", 435, "hs->config->verify_mode != SSL_VERIFY_NONE");
}

void operator delete()
{
    ;
  }
}