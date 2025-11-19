uint64_t bssl::ssl_crypto_x509_session_dup(bssl *this, ssl_session_st *a2, const ssl_session_st *a3)
{
  peer = a2->peer;
  if (peer)
  {
    v6 = atomic_load(&peer->valid);
    if (v6 != -1)
    {
      for (i = v6; i != -1; v6 = i)
      {
        atomic_compare_exchange_strong(&peer->valid, &i, v6 + 1);
        if (i == v6)
        {
          break;
        }
      }
    }
  }

  *(this + 19) = peer;
  verify_result = a2->verify_result;
  if (verify_result)
  {
    v9 = OPENSSL_sk_dup(verify_result);
    if (!v9)
    {
      *(this + 20) = 0;
      return 0;
    }

    if (*v9)
    {
      v10 = 0;
      do
      {
        v11 = (*(*(v9 + 1) + 8 * v10) + 24);
        v12 = atomic_load(v11);
        if (v12 != -1)
        {
          for (j = v12; j != -1; v12 = j)
          {
            atomic_compare_exchange_strong(v11, &j, v12 + 1);
            if (j == v12)
            {
              break;
            }
          }
        }

        ++v10;
      }

      while (v10 < *v9);
    }

    *(this + 20) = v9;
  }

  v14 = *&a2->references;
  if (!v14)
  {
    return 1;
  }

  v15 = OPENSSL_sk_dup(v14);
  if (v15)
  {
    if (*v15)
    {
      v16 = 0;
      do
      {
        v17 = (*(*(v15 + 1) + 8 * v16) + 24);
        v18 = atomic_load(v17);
        if (v18 != -1)
        {
          for (k = v18; k != -1; v18 = k)
          {
            atomic_compare_exchange_strong(v17, &k, v18 + 1);
            if (k == v18)
            {
              break;
            }
          }
        }

        ++v16;
      }

      while (v16 < *v15);
      *(this + 21) = v15;
      return 1;
    }

    else
    {
      *(this + 21) = v15;
      return 1;
    }
  }

  else
  {
    *(this + 21) = 0;
    return 0;
  }
}

void bssl::ssl_crypto_x509_session_clear(X509 **this, ssl_session_st *a2)
{
  X509_free(this[19]);
  this[19] = 0;
  v3 = this[20];
  if (v3)
  {
    cert_info = v3->cert_info;
    if (v3->cert_info)
    {
      v5 = 0;
      do
      {
        v6 = *(&v3->sig_alg->algorithm + v5);
        if (v6)
        {
          X509_free(v6);
          cert_info = v3->cert_info;
        }

        ++v5;
      }

      while (v5 < cert_info);
    }

    sig_alg = v3->sig_alg;
    if (sig_alg)
    {
      parameter = sig_alg[-1].parameter;
      p_parameter = &sig_alg[-1].parameter;
      p_value = &parameter->value;
      if (parameter != -8)
      {
        bzero(p_parameter, p_value);
      }

      free(p_parameter);
    }

    aux = v3[-1].aux;
    p_aux = &v3[-1].aux;
    p_reject = &aux->reject;
    if (aux != -8)
    {
      bzero(p_aux, p_reject);
    }

    free(p_aux);
  }

  this[20] = 0;
  v14 = this[21];
  if (v14)
  {
    v15 = v14->cert_info;
    if (v14->cert_info)
    {
      v16 = 0;
      do
      {
        v17 = *(&v14->sig_alg->algorithm + v16);
        if (v17)
        {
          X509_free(v17);
          v15 = v14->cert_info;
        }

        ++v16;
      }

      while (v16 < v15);
    }

    v18 = v14->sig_alg;
    if (v18)
    {
      v20 = v18[-1].parameter;
      v19 = &v18[-1].parameter;
      v21 = &v20->value;
      if (v20 != -8)
      {
        bzero(v19, v21);
      }

      free(v19);
    }

    v23 = v14[-1].aux;
    v22 = &v14[-1].aux;
    v24 = &v23->reject;
    if (v23 != -8)
    {
      bzero(v22, v24);
    }

    free(v22);
  }

  this[21] = 0;
}

uint64_t bssl::ssl_crypto_x509_session_verify_cert_chain(bssl *this, ssl_session_st *a2, bssl::SSL_HANDSHAKE *a3, unsigned __int8 *a4)
{
  *a3 = 80;
  v4 = *(this + 20);
  if (!v4 || !*&v4->num)
  {
    return 0;
  }

  v5 = 0;
  v6 = *&a2->ssl_version;
  v7 = *(*&a2->ssl_version + 104);
  if (*(*&a2->ssl_version + 164))
  {
    v10 = 0;
  }

  else
  {
    v8 = *(v6 + 48);
    v9 = *(v8 + 280);
    v10 = 0;
    if (v9)
    {
      if (*(v8 + 216) == 2)
      {
        v11 = *(v9 + 1576);
        v5 = *(v11 + 32);
        v10 = *(v11 + 40);
      }

      else
      {
        v5 = 0;
        v10 = 0;
      }
    }
  }

  v13 = *v4->data;
  v14 = v7[31];
  v15 = *(*(*a2->key_arg + 32) + 80);
  v16 = malloc_type_malloc(0x80uLL, 0xB4E622C9uLL);
  if (!v16)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    ERR_put_error(16, 0, 11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_x509.cc", 238);
    return 0;
  }

  v17 = v16;
  *v16 = 120;
  *(v16 + 8) = 0u;
  v18 = (v16 + 8);
  *(v16 + 24) = 0u;
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 72) = 0u;
  *(v16 + 88) = 0u;
  *(v16 + 104) = 0u;
  if (v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = v14;
  }

  *(v16 + 15) = 0;
  if (X509_STORE_CTX_init((v16 + 8), v19, v13, v4) && CRYPTO_set_ex_data((v17 + 120), 0, v6))
  {
    v20 = (*(v6 + 164) & 1) != 0 ? "ssl_client" : "ssl_server";
    if (X509_STORE_CTX_set_default(v18, v20) && x509_verify_param_copy(*(v17 + 5), *(*a2->key_arg + 16), 1))
    {
      if (!v10 || (v21 = *(v17 + 5), int_x509_param_set_hosts(v21, 0, v5, v10)))
      {
        v22 = *(*a2->key_arg + 40);
        if (v22)
        {
          *(v17 + 7) = v22;
        }

        v23 = v7[41];
        if (v23)
        {
          v24 = v23(v18, v7[42]);
        }

        else
        {
          v24 = X509_verify_cert(v18);
        }

        v25 = v24;
        v26 = *(v17 + 21);
        *(this + 22) = v26;
        if (v25 <= 0 && *(*a2->key_arg + 268))
        {
          v27 = 0;
          *a3 = SSL_alert_from_verify_result(v26);
        }

        else
        {
          ERR_clear_error();
          v27 = 1;
        }

        goto LABEL_35;
      }

      *(v21 + 88) = 1;
    }
  }

  ERR_put_error(16, 0, 11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_x509.cc", 238);
  v27 = 0;
LABEL_35:
  X509_STORE_CTX_free(v18);
  return v27;
}

void bssl::ssl_crypto_x509_hs_flush_cached_ca_names(uint64_t a1)
{
  v2 = *(a1 + 1512);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = 0;
      do
      {
        if (*(v2[1] + 8 * v4))
        {
          pval = *(v2[1] + 8 * v4);
          ASN1_item_ex_free(&pval, &X509_NAME_ENTRY_it.sname);
          v3 = *v2;
        }

        ++v4;
      }

      while (v4 < v3);
    }

    v5 = v2[1];
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

    v10 = *(v2 - 1);
    v9 = v2 - 1;
    v11 = v10 + 8;
    if (v10 != -8)
    {
      bzero(v9, v11);
    }

    free(v9);
  }

  *(a1 + 1512) = 0;
}

BOOL bssl::ssl_crypto_x509_ssl_new(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  v3 = malloc_type_malloc(0x68uLL, 0xB4E622C9uLL);
  v4 = v3;
  if (v3)
  {
    *v3 = 96;
    *(v3 + 24) = 0u;
    *(v3 + 40) = 0u;
    *(v3 + 56) = 0u;
    *(v3 + 72) = 0u;
    *(v3 + 88) = 0u;
    *(v3 + 8) = 0u;
    *(v3 + 8) = -1;
    v5 = *this;
    *(*(this + 1) + 16) = v3 + 8;
    x509_verify_param_copy((v3 + 8), *(*(v5 + 104) + 496), 0);
    return v4 != 0;
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    *(*(this + 1) + 16) = 0;
    return 0;
  }
}

void bssl::ssl_crypto_x509_ssl_config_free(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = 0;
      do
      {
        if (*(v2[1] + 8 * v4))
        {
          pval = *(v2[1] + 8 * v4);
          ASN1_item_ex_free(&pval, &X509_NAME_ENTRY_it.sname);
          v3 = *v2;
        }

        ++v4;
      }

      while (v4 < v3);
    }

    v5 = v2[1];
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

    v10 = *(v2 - 1);
    v9 = v2 - 1;
    v11 = v10 + 8;
    if (v10 != -8)
    {
      bzero(v9, v11);
    }

    free(v9);
  }

  *(a1 + 88) = 0;
  v12 = *(a1 + 16);

  X509_VERIFY_PARAM_free(v12);
}

void bssl::ssl_crypto_x509_ssl_flush_cached_client_CA(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = 0;
      do
      {
        if (*(v2[1] + 8 * v4))
        {
          pval = *(v2[1] + 8 * v4);
          ASN1_item_ex_free(&pval, &X509_NAME_ENTRY_it.sname);
          v3 = *v2;
        }

        ++v4;
      }

      while (v4 < v3);
    }

    v5 = v2[1];
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

    v10 = *(v2 - 1);
    v9 = v2 - 1;
    v11 = v10 + 8;
    if (v10 != -8)
    {
      bzero(v9, v11);
    }

    free(v9);
  }

  *(a1 + 88) = 0;
}

uint64_t bssl::ssl_crypto_x509_ssl_auto_chain_if_needed(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  v2 = *this;
  if ((*(*this + 132) & 8) != 0)
  {
    return 1;
  }

  v3 = *(*(*(this + 1) + 32) + 24);
  v4 = *(v3 + 4);
  if (v4 < 2)
  {
    v10 = *(v3 + 48);
    if (!v10 || !*v10 || !**(v10 + 8) || !*(v3 + 8) || !*(v3 + 16) && !*(v3 + 24) || v4 == 1 && !*(v3 + 56))
    {
      return 1;
    }
  }

  else if (v4 - 2 >= 2)
  {
    abort();
  }

  v5 = *(v3 + 48);
  if (!v5 || *v5 != 1)
  {
    return 1;
  }

  v6 = **(v5 + 8);
  v7 = *(v6 + 16);
  v29 = *(v6 + 8);
  v30 = v7;
  v8 = x509_parse(&v29, v6);
  if (!v8)
  {
LABEL_9:
    ERR_put_error(16, 0, 11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_x509.cc", 304);
    return 0;
  }

  if (v30)
  {
    X509_free(v8);
    goto LABEL_9;
  }

  v11 = v8;
  v12 = malloc_type_malloc(0x80uLL, 0xB4E622C9uLL);
  if (v12)
  {
    v13 = v12;
    *v12 = 120;
    *(v12 + 8) = 0u;
    v14 = (v12 + 8);
    *(v12 + 24) = 0u;
    *(v12 + 40) = 0u;
    *(v12 + 56) = 0u;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    *(v12 + 104) = 0u;
    *(v12 + 15) = 0;
    if (X509_STORE_CTX_init((v12 + 8), *(*(v2 + 104) + 248), v11, 0))
    {
      X509_verify_cert(v14);
      ERR_clear_error();
      v15 = *(v13 + 9);
      if (v15)
      {
        v16 = OPENSSL_sk_dup(v15);
        if (v16)
        {
          v17 = v16;
          if (!*v16)
          {
            goto LABEL_39;
          }

          v18 = 0;
          do
          {
            v20 = (*(*(v16 + 1) + 8 * v18) + 24);
            v21 = atomic_load(v20);
            if (v21 != -1)
            {
              for (i = v21; i != -1; v21 = i)
              {
                atomic_compare_exchange_strong(v20, &i, v21 + 1);
                if (i == v21)
                {
                  break;
                }
              }
            }

            ++v18;
            v19 = *v16;
          }

          while (v18 < *v16);
          if (v19)
          {
            v24 = *(v16 + 1);
            v25 = *v24;
            v26 = v19 - 1;
            if (v26 && 8 * v26)
            {
              v27 = *v24;
              memmove(*(v17 + 1), v24 + 1, 8 * v26);
              v25 = v27;
              v26 = *v17 - 1;
            }

            *v17 = v26;
          }

          else
          {
LABEL_39:
            v25 = 0;
          }

          X509_free(v25);
          v28 = *(v2 + 8);
          if (v28)
          {
            v23 = bssl::ssl_cert_set1_chain(*(v28 + 32), v17);
          }

          else
          {
            v23 = 0;
          }

          OPENSSL_sk_pop_free_ex(v17, bssl::internal::DeleterImpl<stack_st_X509,void>::Free(stack_st_X509*)::{lambda(void (*)(void *),void *)#1}::__invoke, 0);
          goto LABEL_44;
        }
      }
    }

    else
    {
      ERR_put_error(16, 0, 11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_x509.cc", 311);
    }

    v23 = 0;
LABEL_44:
    X509_STORE_CTX_free(v14);
    goto LABEL_45;
  }

  ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  ERR_put_error(16, 0, 11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_x509.cc", 311);
  v23 = 0;
LABEL_45:
  X509_free(v11);
  return v23;
}

BOOL bssl::ssl_crypto_x509_ssl_ctx_new(bssl *this, ssl_ctx_st *a2)
{
  *(this + 31) = X509_STORE_new();
  v3 = malloc_type_malloc(0x68uLL, 0xB4E622C9uLL);
  if (v3)
  {
    *v3 = 96;
    *(v3 + 8) = 0u;
    v4 = v3 + 8;
    *(v3 + 24) = 0u;
    *(v3 + 40) = 0u;
    *(v3 + 56) = 0u;
    *(v3 + 72) = 0u;
    *(v3 + 88) = 0u;
    *(v3 + 8) = -1;
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v4 = 0;
  }

  *(this + 62) = v4;
  if (v4)
  {
    v5 = *(this + 31) == 0;
  }

  else
  {
    v5 = 1;
  }

  return !v5;
}

void bssl::ssl_crypto_x509_ssl_ctx_free(bssl *this, ssl_ctx_st *a2)
{
  v3 = *(this + 50);
  if (v3)
  {
    v4 = *v3;
    if (*v3)
    {
      v5 = 0;
      do
      {
        if (*(v3[1] + 8 * v5))
        {
          pval = *(v3[1] + 8 * v5);
          ASN1_item_ex_free(&pval, &X509_NAME_ENTRY_it.sname);
          v4 = *v3;
        }

        ++v5;
      }

      while (v5 < v4);
    }

    v6 = v3[1];
    if (v6)
    {
      v8 = *(v6 - 8);
      v7 = (v6 - 8);
      v9 = v8 + 8;
      if (v8 != -8)
      {
        bzero(v7, v9);
      }

      free(v7);
    }

    v11 = *(v3 - 1);
    v10 = v3 - 1;
    v12 = v11 + 8;
    if (v11 != -8)
    {
      bzero(v10, v12);
    }

    free(v10);
  }

  *(this + 50) = 0;
  X509_VERIFY_PARAM_free(*(this + 62));
  v13 = *(this + 31);

  X509_STORE_free(v13);
}

void bssl::ssl_crypto_x509_ssl_ctx_flush_cached_client_CA(bssl *this, ssl_ctx_st *a2)
{
  v3 = *(this + 50);
  if (v3)
  {
    v4 = *v3;
    if (*v3)
    {
      v5 = 0;
      do
      {
        if (*(v3[1] + 8 * v5))
        {
          pval = *(v3[1] + 8 * v5);
          ASN1_item_ex_free(&pval, &X509_NAME_ENTRY_it.sname);
          v4 = *v3;
        }

        ++v5;
      }

      while (v5 < v4);
    }

    v6 = v3[1];
    if (v6)
    {
      v8 = *(v6 - 8);
      v7 = (v6 - 8);
      v9 = v8 + 8;
      if (v8 != -8)
      {
        bzero(v7, v9);
      }

      free(v7);
    }

    v11 = *(v3 - 1);
    v10 = v3 - 1;
    v12 = v11 + 8;
    if (v11 != -8)
    {
      bzero(v10, v12);
    }

    free(v10);
  }

  *(this + 50) = 0;
}

uint64_t bssl::ssl_cert_set1_chain(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 24);
  for (i = *(v4 + 48); i; i = *(v4 + 48))
  {
    if (*i < 2)
    {
      break;
    }

    v6 = *i - 1;
    v7 = *(i[1] + 8 * v6);
    *i = v6;
    CRYPTO_BUFFER_free(v7);
  }

  if (a2 && (v8 = *a2) != 0)
  {
    v9 = 0;
    while (1)
    {
      if (*a2 <= v9)
      {
        out = 0;
        v11 = i2d_X509(0, &out);
        if (v11 <= 0)
        {
          return 0;
        }
      }

      else
      {
        v10 = *(a2[1] + 8 * v9);
        out = 0;
        v11 = i2d_X509(v10, &out);
        if (v11 <= 0)
        {
          return 0;
        }
      }

      v12 = crypto_buffer_new(out, v11, 0, 0);
      if (out)
      {
        v14 = out - 8;
        v13 = *(out - 1);
        if (v13 != -8)
        {
          bzero(out - 8, v13 + 8);
        }

        free(v14);
      }

      if (!v12)
      {
        return 0;
      }

      v15 = *(a1 + 24);
      v30 = v12;
      appended = ssl_credential_st::AppendIntermediateCert(v15, &v30);
      v17 = v30;
      v30 = 0;
      if (v17)
      {
        CRYPTO_BUFFER_free(v17);
        if ((appended & 1) == 0)
        {
          return 0;
        }
      }

      else if (!appended)
      {
        return 0;
      }

      if (v8 == ++v9)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
LABEL_21:
    v19 = *(a1 + 40);
    if (v19)
    {
      v20 = *v19;
      if (*v19)
      {
        v21 = 0;
        do
        {
          v22 = *(v19[1] + 8 * v21);
          if (v22)
          {
            X509_free(v22);
            v20 = *v19;
          }

          ++v21;
        }

        while (v21 < v20);
      }

      v23 = v19[1];
      if (v23)
      {
        v25 = *(v23 - 8);
        v24 = (v23 - 8);
        v26 = v25 + 8;
        if (v25 != -8)
        {
          bzero(v24, v26);
        }

        free(v24);
      }

      v28 = *(v19 - 1);
      v27 = v19 - 1;
      v29 = v28 + 8;
      if (v28 != -8)
      {
        bzero(v27, v29);
      }

      free(v27);
    }

    *(a1 + 40) = 0;
    return 1;
  }
}

uint64_t SSL_alert_from_verify_result(uint64_t a1)
{
  if ((a1 - 1) > 0x41)
  {
    return 46;
  }

  else
  {
    return dword_273BB963C[a1 - 1];
  }
}

char *OPENSSL_sk_new_null()
{
  v0 = malloc_type_malloc(0x30uLL, 0xB4E622C9uLL);
  if (v0)
  {
    v1 = v0;
    *v0 = 40;
    *(v0 + 8) = 0u;
    v2 = v0 + 8;
    *(v0 + 24) = 0u;
    *(v0 + 5) = 0;
    v3 = malloc_type_malloc(0x28uLL, 0xB4E622C9uLL);
    if (v3)
    {
      *v3 = 32;
      *(v3 + 24) = 0u;
      *(v3 + 8) = 0u;
      v1[2] = v3 + 8;
      v1[4] = 4;
      v1[5] = 0;
      return v2;
    }

    else
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      free(v1);
      return 0;
    }
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }
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

    v8 = a1[1];
    if (v8)
    {
      v10 = *(v8 - 8);
      v9 = (v8 - 8);
      v11 = v10 + 8;
      if (v10 != -8)
      {
        bzero(v9, v11);
      }

      free(v9);
    }

    v13 = *(a1 - 1);
    v12 = (a1 - 1);
    v14 = v13 + 8;
    if (v13 != -8)
    {
      bzero(v12, v14);
    }

    free(v12);
  }
}

uint64_t OPENSSL_sk_delete_ptr(uint64_t *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1[1];
  for (i = 8 * v2 - 8; ; i -= 8)
  {
    v6 = *v4;
    if (*v4 == a2)
    {
      break;
    }

    ++v3;
    ++v4;
    if (v2 == v3)
    {
      return 0;
    }
  }

  v8 = v2 - 1;
  if (v8 == v3)
  {
    goto LABEL_10;
  }

  if (i)
  {
    v9 = a1;
    memmove(v4, v4 + 1, i);
    a1 = v9;
    v3 = *v9 - 1;
LABEL_10:
    *a1 = v3;
    return v6;
  }

  *a1 = v8;
  return v6;
}

uint64_t OPENSSL_sk_delete_if (uint64_t result, uint64_t (*a2)(uint64_t, void, uint64_t), uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    if (*result)
    {
      v8 = 0;
      v9 = 0;
      for (result = a2(a3, **(result + 8), a4); ; result = a2(a3, *(v4[1] + 8 * v8), a4))
      {
        if (!result)
        {
          *(v4[1] + 8 * v9++) = *(v4[1] + 8 * v8);
        }

        if (++v8 >= *v4)
        {
          break;
        }
      }
    }

    else
    {
      v9 = 0;
    }

    *v4 = v9;
  }

  return result;
}

uint64_t OPENSSL_sk_find(uint64_t result, void *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void))
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

      goto LABEL_25;
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
      while (1)
      {
        v9 = v10 + ((v8 - v10 - 1) >> 1);
        v11 = a4(v6[4], a3, *(v6[1] + 8 * v9));
        if (v11 >= 1)
        {
          v10 = v9 + 1;
        }

        else if (v11 < 0)
        {
          v8 = v10 + ((v8 - v10 - 1) >> 1);
        }

        else
        {
          if (v8 - v10 == 1)
          {
            goto LABEL_25;
          }

          v8 = v9 + 1;
        }

        if (v10 >= v8)
        {
          return 0;
        }
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

LABEL_25:
  if (a2)
  {
    *a2 = v9;
  }

  return 1;
}

void *OPENSSL_sk_push(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 >= 0x7FFFFFFF)
  {
    ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
    return 0;
  }

  v5 = a1[3];
  if (v5 <= v2 + 1)
  {
    v8 = a2;
    v9 = a1;
    v3 = OPENSSL_realloc(a1[1], 16 * v5);
    if (!v3)
    {
      return v3;
    }

    a1 = v9;
    v9[1] = v3;
    v9[3] = 2 * v5;
    v6 = *v9;
    v10 = *v9 - v2;
    if (*v9 <= v2)
    {
      a2 = v8;
      v7 = &v3[v6];
    }

    else
    {
      if (8 * v10)
      {
        memmove(&v3[v2 + 1], &v3[v2], 8 * v10);
        a1 = v9;
        v6 = *v9;
        v3 = v9[1];
      }

      v7 = &v3[v2];
      a2 = v8;
    }
  }

  else
  {
    v6 = *a1;
    v7 = (a1[1] + 8 * v2);
  }

  *v7 = a2;
  *a1 = v6 + 1;
  *(a1 + 4) = 0;
  return (v6 + 1);
}

char *OPENSSL_sk_dup(char *result)
{
  if (result)
  {
    v1 = result;
    v2 = malloc_type_malloc(0x30uLL, 0xB4E622C9uLL);
    if (!v2)
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      return 0;
    }

    v3 = v2;
    *(v2 + 8) = 0u;
    *v2 = 40;
    *(v2 + 24) = 0u;
    *(v2 + 5) = 0;
    v4 = 8 * *(v1 + 3);
    if (v4 != -8)
    {
      if (!v4)
      {
LABEL_9:
        free(v3);
        return 0;
      }

      v5 = *(v1 + 1);
      v6 = v2 + 8;
      v7 = malloc_type_malloc(v4 + 8, 0xB4E622C9uLL);
      if (v7)
      {
        *v7 = v4;
        v8 = v7 + 1;
        memcpy(v7 + 1, v5, v4);
        result = v6;
        *(v3 + 1) = *v1;
        *(v3 + 2) = v8;
        *(v3 + 6) = *(v1 + 4);
        v9 = *(v1 + 4);
        *(v3 + 4) = *(v1 + 3);
        *(v3 + 5) = v9;
        return result;
      }
    }

    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    goto LABEL_9;
  }

  return result;
}

uint64_t OPENSSL_sk_sort(uint64_t result, uint64_t (*a2)(void, void, void))
{
  if (result)
  {
    v2 = result;
    if (*(result + 32))
    {
      if (!*(result + 16))
      {
        v3 = *result;
        if (*result >= 2uLL)
        {
          for (i = (*result - 2) >> 1; i < v3; --i)
          {
            v6 = (2 * i) | 1;
            if (v6 < v3)
            {
              v7 = 2 * i;
              v8 = i;
              do
              {
                result = a2(*(v2 + 32), *(*(v2 + 8) + 8 * v8), *(*(v2 + 8) + 8 * v6));
                if (result >= 0)
                {
                  v9 = v8;
                }

                else
                {
                  v9 = v6;
                }

                if (v7 + 2 < v3)
                {
                  result = a2(*(v2 + 32), *(*(v2 + 8) + 8 * v9), *(*(v2 + 8) + 8 * (v7 + 2)));
                  if (result < 0)
                  {
                    v9 = v7 + 2;
                  }
                }

                if (v8 == v9)
                {
                  break;
                }

                v10 = *(v2 + 8);
                v11 = *(v10 + 8 * v8);
                *(v10 + 8 * v8) = *(v10 + 8 * v9);
                *(*(v2 + 8) + 8 * v9) = v11;
                v7 = 2 * v9;
                v6 = (2 * v9) | 1;
                v8 = v9;
              }

              while (v6 < v3);
              v3 = *v2;
            }
          }

          v12 = v3 - 1;
          if (v12)
          {
            while (1)
            {
              v13 = *(v2 + 8);
              v14 = *v13;
              *v13 = v13[v12];
              *(*(v2 + 8) + 8 * v12) = v14;
              if (v12 == 1)
              {
                break;
              }

              v15 = 0;
              v16 = 0;
              v17 = 1;
              do
              {
                result = a2(*(v2 + 32), *(*(v2 + 8) + 8 * v16), *(*(v2 + 8) + 8 * v17));
                if (result >= 0)
                {
                  v18 = v16;
                }

                else
                {
                  v18 = v17;
                }

                v19 = v15 + 2;
                if (v19 < v12)
                {
                  result = a2(*(v2 + 32), *(*(v2 + 8) + 8 * v18), *(*(v2 + 8) + 8 * v19));
                  if (result < 0)
                  {
                    v18 = v19;
                  }
                }

                if (v16 == v18)
                {
                  break;
                }

                v20 = *(v2 + 8);
                v21 = *(v20 + 8 * v16);
                *(v20 + 8 * v16) = *(v20 + 8 * v18);
                *(*(v2 + 8) + 8 * v18) = v21;
                v15 = 2 * v18;
                v17 = (2 * v18) | 1;
                v16 = v18;
              }

              while (v17 < v12);
              --v12;
            }
          }
        }

        *(v2 + 16) = 1;
      }
    }
  }

  return result;
}

unint64_t *OPENSSL_sk_deep_copy(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  if (!a1)
  {
    return 0;
  }

  v10 = malloc_type_malloc(0x30uLL, 0xB4E622C9uLL);
  if (!v10)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  v11 = v10;
  *(v10 + 8) = 0u;
  v12 = (v10 + 8);
  *v10 = 40;
  *(v10 + 24) = 0u;
  *(v10 + 5) = 0;
  v13 = 8 * a1[3];
  if (v13 == -8)
  {
    goto LABEL_13;
  }

  if (!v13)
  {
    goto LABEL_14;
  }

  v14 = a1[1];
  v15 = malloc_type_malloc(v13 + 8, 0xB4E622C9uLL);
  if (!v15)
  {
LABEL_13:
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    goto LABEL_14;
  }

  *v15 = v13;
  v16 = v15 + 1;
  memcpy(v15 + 1, v14, v13);
  v17 = *a1;
  v11[1] = *a1;
  v11[2] = v16;
  *(v11 + 6) = *(a1 + 4);
  v18 = a1[4];
  v11[4] = a1[3];
  v11[5] = v18;
  if (v17)
  {
    for (i = 0; i < v17; ++i)
    {
      if (v16[i])
      {
        *(v11[2] + 8 * i) = a2(a3);
        v16 = v11[2];
        if (!v16[i])
        {
          if (!i)
          {
            goto LABEL_23;
          }

          for (j = 0; j != i; ++j)
          {
            if (*(v11[2] + 8 * j))
            {
              a4(a5);
            }
          }

          v16 = v11[2];
          if (v16)
          {
LABEL_23:
            v23 = *(v16 - 1);
            v22 = v16 - 1;
            v24 = v23 + 8;
            if (v23 != -8)
            {
              bzero(v22, v24);
            }

            free(v22);
          }

LABEL_14:
          free(v11);
          return 0;
        }

        v17 = *v12;
      }
    }
  }

  return v12;
}

uint64_t bssl::tls1_configure_aead(uint64_t *a1, unsigned int a2, const void **a3, uint64_t a4, char *a5, size_t a6)
{
  v12 = 0;
  v13 = *(a4 + 200);
  v61 = 0;
  v14 = *(a1[6] + 208);
  if (v14 <= 0xFEFB)
  {
    if (v14 - 769 >= 4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  switch(v14)
  {
    case 0xFEFCu:
      v14 = 772;
      goto LABEL_3;
    case 0xFEFDu:
      v14 = 771;
      goto LABEL_3;
    case 0xFEFFu:
      v14 = 770;
LABEL_3:
      v12 = v14;
      break;
  }

LABEL_4:
  v59 = 0;
  v60 = 0;
  if ((bssl::ssl_cipher_get_evp_aead(&v61, &v60, &v59, v13, v12) & 1) == 0)
  {
    v18 = 130;
    v19 = 54;
    goto LABEL_9;
  }

  v15 = v60;
  v16 = *v61;
  if (v60)
  {
    v17 = v16 >= v59 + v60;
    v16 -= v59 + v60;
    if (!v17)
    {
      v18 = 68;
      v19 = 64;
LABEL_9:
      ERR_put_error(16, 0, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/t1_enc.cc", v19);
      return 0;
    }
  }

  v21 = a3[1];
  if (v21)
  {
    v22 = *a3;
    if (((*(a1 + 164) & 1) == 0) == a2)
    {
      goto LABEL_18;
    }

    goto LABEL_53;
  }

  v28 = 2 * (v16 + v60 + v59);
  v29 = *a3;
  if (*a3)
  {
    v31 = *(v29 - 1);
    v30 = (v29 - 1);
    v32 = v31 + 8;
    if (v31 != -8)
    {
      bzero(v30, v32);
    }

    free(v30);
  }

  *a3 = 0;
  a3[1] = 0;
  if (!v28)
  {
    v34 = 0;
    v35 = 0;
    v36 = *(a4 + 4);
    if (v36 > 0xFEFB)
    {
      goto LABEL_32;
    }

LABEL_40:
    if (v36 - 769 >= 4)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (v28 > 0xFFFFFFFFFFFFFFF7 || (v33 = malloc_type_malloc(v28 + 8, 0xB4E622C9uLL)) == 0)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    result = 0;
    *a3 = 0;
    return result;
  }

  *v33 = v28;
  v34 = (v33 + 1);
  *a3 = v33 + 1;
  a3[1] = v28;
  v35 = 0;
  v36 = *(a4 + 4);
  if (v36 <= 0xFEFB)
  {
    goto LABEL_40;
  }

LABEL_32:
  switch(v36)
  {
    case 0xFEFCu:
      v36 = 772;
      break;
    case 0xFEFDu:
      v36 = 771;
      break;
    case 0xFEFFu:
      v36 = 770;
      break;
    default:
      goto LABEL_42;
  }

LABEL_41:
  v35 = v36 > 0x302;
LABEL_42:
  v37 = *(*(a4 + 200) + 36);
  switch(v37)
  {
    case 4:
      v38 = EVP_sha384();
      break;
    case 2:
LABEL_46:
      v38 = EVP_sha256();
      break;
    case 1:
      if (v35)
      {
        goto LABEL_46;
      }

      v38 = &evp_md_md5_sha1;
      break;
    default:
      v38 = 0;
      break;
  }

  if (CRYPTO_tls1_prf(v38, v34, v28, (a4 + 10), *(a4 + 58), "key expansion", 13, (a1[6] + 16), 0x20uLL, (a1[6] + 48), 0x20uLL) != 1)
  {
    return 0;
  }

  v22 = *a3;
  v21 = a3[1];
  if (((*(a1 + 164) & 1) == 0) == a2)
  {
LABEL_18:
    if (v21 >= v15)
    {
      v23 = v15;
    }

    else
    {
      v23 = v21;
    }

    v24 = 2 * v15;
    if (v21 >= 2 * v15)
    {
      v25 = 2 * (v15 + v16);
      if (v21 >= v25)
      {
        v26 = v59;
        v27 = v22;
        goto LABEL_60;
      }
    }

LABEL_91:
    abort();
  }

LABEL_53:
  if (v21 < v15)
  {
    goto LABEL_91;
  }

  v24 = v16 + 2 * v15;
  if (v21 < v24)
  {
    goto LABEL_91;
  }

  v23 = v21 - v15 >= v15 ? v15 : v21 - v15;
  v26 = v59;
  v25 = v59 + 2 * (v15 + v16);
  if (v21 < v25)
  {
    goto LABEL_91;
  }

  v27 = &v22[v15];
LABEL_60:
  if (v21 - v24 >= v16)
  {
    v39 = v16;
  }

  else
  {
    v39 = v21 - v24;
  }

  v40 = v21 - v25;
  if (v40 >= v26)
  {
    v40 = v26;
  }

  if (a6)
  {
    if (a6 != v26)
    {
      return 0;
    }
  }

  else
  {
    a5 = &v22[v25];
    a6 = v40;
  }

  bssl::SSLAEADContext::Create(a2, *(a1[6] + 208), *(a4 + 200), &v22[v24], v39, v27, v23, &v61, a5, a6);
  v41 = v61;
  if (!v61)
  {
    return 0;
  }

  v42 = *a1;
  if (a2)
  {
    v43 = *(v42 + 160);
    v61 = 0;
    v57 = v41;
    result = v43(a1, 3, &v57, 0, 0);
    v44 = v57;
    v57 = 0;
    if (!v44)
    {
      goto LABEL_81;
    }
  }

  else
  {
    v45 = *(v42 + 152);
    v61 = 0;
    v58 = v41;
    result = v45(a1, 3, &v58, 0, 0);
    v44 = v58;
    v58 = 0;
    if (!v44)
    {
      goto LABEL_81;
    }
  }

  v46 = result;
  if (v44[596] && (v44 + 583) >= -v44[596])
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v47 = *(v44 + 1);
  v44[596] = 0;
  if (v47)
  {
    (*(v47 + 24))(v44 + 8);
    *(v44 + 1) = 0;
  }

  v49 = *(v44 - 1);
  v48 = v44 - 8;
  v50 = v49 + 8;
  if (v49 != -8)
  {
    bzero(v48, v50);
  }

  free(v48);
  result = v46;
LABEL_81:
  v51 = v61;
  v61 = 0;
  if (!v51)
  {
    return result;
  }

  v52 = result;
  if (v51[596] && (v51 + 583) >= -v51[596])
  {
    goto LABEL_90;
  }

  v53 = *(v51 + 1);
  v51[596] = 0;
  if (v53)
  {
    (*(v53 + 24))(v51 + 8);
    *(v51 + 1) = 0;
  }

  v55 = *(v51 - 1);
  v54 = v51 - 8;
  v56 = v55 + 8;
  if (v55 != -8)
  {
    bzero(v54, v56);
  }

  free(v54);
  return v52;
}

BOOL bssl::tls1_generate_master_secret(uint64_t a1, int8x16_t *a2, uint64_t a3, const unsigned __int8 *a4, ENGINE *a5)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a3 != 48)
  {
    abort();
  }

  if ((*(a1 + 1618) & 2) != 0)
  {
    memset(&out, 0, sizeof(out));
    v9 = EVP_MD_CTX_copy_ex(&out, (a1 + 416));
    if (v9)
    {
      (out.digest->update)(&out, v19);
      pkey_type = out.digest->pkey_type;
      final_high = HIDWORD(out.digest->final);
      if (final_high)
      {
        bzero(out.engine, final_high);
      }

      engine = out.engine;
      if (out.engine)
      {
LABEL_9:
        v14 = *(engine - 1);
        v13 = engine - 8;
        v15 = v14 + 8;
        if (v14 != -8)
        {
          bzero(v13, v15);
        }

        free(v13);
        md_data = out.md_data;
        if (!out.md_data)
        {
          return v9 && CRYPTO_tls1_prf(*(a1 + 416), a2, 0x30uLL, a4, a5, "extended master secret", 22, v19, pkey_type, 0, 0) == 1;
        }

LABEL_15:
        (*md_data)(out.flags);
        return v9 && CRYPTO_tls1_prf(*(a1 + 416), a2, 0x30uLL, a4, a5, "extended master secret", 22, v19, pkey_type, 0, 0) == 1;
      }
    }

    else
    {
      pkey_type = 0;
      engine = out.engine;
      if (out.engine)
      {
        goto LABEL_9;
      }
    }

    md_data = out.md_data;
    if (!out.md_data)
    {
      return v9 && CRYPTO_tls1_prf(*(a1 + 416), a2, 0x30uLL, a4, a5, "extended master secret", 22, v19, pkey_type, 0, 0) == 1;
    }

    goto LABEL_15;
  }

  return CRYPTO_tls1_prf(*(a1 + 416), a2, 0x30uLL, a4, a5, "master secret", 13, (*(*a1 + 48) + 48), 0x20uLL, (*(*a1 + 48) + 16), 0x20uLL) == 1;
}

uint64_t SSL_export_keying_material(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, size_t a5, const void *a6, unint64_t a7, uint64_t a8)
{
  if ((a5 & 0x8000000000000000) != 0 || !a4 && a5)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    abort();
  }

  v10 = *(a1 + 48);
  v11 = *(v10 + 208);
  if (v11 - 769 < 4)
  {
    if (v11 >= 0x304)
    {
      goto LABEL_6;
    }

LABEL_15:
    v15 = *(v10 + 280);
    if (v15 && (*(v15 + 1616) & 0x208) == 0)
    {
      v16 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/t1_enc.cc";
      v17 = 16;
      v18 = 284;
      v19 = 225;
      goto LABEL_41;
    }

    if (a8)
    {
      if (a7 >= 0x10000)
      {
        v16 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/t1_enc.cc";
        v17 = 16;
        v18 = 69;
        v19 = 232;
LABEL_41:
        ERR_put_error(v17, 0, v18, v16, v19);
        return 0;
      }

      v20 = a8;
      v21 = a6;
      v23 = a1;
      v24 = a2;
      v25 = a3;
      v22 = a7;
      v26 = a7 + 66;
      v27 = malloc_type_malloc(a7 + 74, 0xB4E622C9uLL);
      if (!v27)
      {
LABEL_39:
        v16 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
        v17 = 14;
        v18 = 65;
        v19 = 217;
        goto LABEL_41;
      }
    }

    else
    {
      v20 = 0;
      v21 = a6;
      v22 = a7;
      v23 = a1;
      v24 = a2;
      v25 = a3;
      v26 = 64;
      v27 = malloc_type_malloc(0x48uLL, 0xB4E622C9uLL);
      if (!v27)
      {
        goto LABEL_39;
      }
    }

    v28 = v27;
    *v27 = v26;
    v29 = v23;
    v30 = *(v23 + 48);
    v31 = *(v30 + 48);
    *(v27 + 24) = *(v30 + 64);
    *(v27 + 8) = v31;
    v32 = *(v23 + 48);
    v33 = *(v32 + 16);
    *(v27 + 56) = *(v32 + 32);
    *(v27 + 40) = v33;
    if (v20)
    {
      if (v26 <= 0x40)
      {
        goto LABEL_54;
      }

      *(v27 + 36) = bswap32(v22) >> 16;
      if (v22)
      {
        memcpy(v27 + 74, v21, v22);
        v29 = v23;
      }
    }

    v34 = *(v29 + 48);
    v35 = *(v34 + 464);
    if (!v35)
    {
      v36 = *(v34 + 280);
      v35 = v36[195];
      if (!v35)
      {
        v35 = v36[194];
        if (!v35)
        {
          v35 = *(*v36 + 88);
        }
      }
    }

    v37 = 0;
    v38 = *(v35 + 4);
    if (v38 > 0xFEFB)
    {
      switch(v38)
      {
        case 0xFEFCu:
          v38 = 772;
          break;
        case 0xFEFDu:
          v38 = 771;
          break;
        case 0xFEFFu:
          v38 = 770;
          break;
        default:
LABEL_33:
          v39 = *(*(v35 + 200) + 36);
          switch(v39)
          {
            case 4:
              v40 = EVP_sha384();
              break;
            case 2:
LABEL_37:
              v40 = EVP_sha256();
              break;
            case 1:
              if (v37)
              {
                goto LABEL_37;
              }

              v40 = &evp_md_md5_sha1;
              break;
            default:
              v40 = 0;
              break;
          }

          v41 = CRYPTO_tls1_prf(v40, v24, v25, (v35 + 10), *(v35 + 58), a4, a5, v28 + 8, v26, 0, 0);
          if (v26 - 1 < -(v28 + 8))
          {
            v42 = v41 == 1;
            free(v28);
            return v42;
          }

          goto LABEL_53;
      }
    }

    else if (v38 - 769 >= 4)
    {
      goto LABEL_33;
    }

    v37 = v38 > 0x302;
    goto LABEL_33;
  }

  if (v11 != 65276)
  {
    goto LABEL_15;
  }

LABEL_6:
  if (!*(v10 + 434))
  {
    v16 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/t1_enc.cc";
    v17 = 16;
    v18 = 284;
    v19 = 211;
    goto LABEL_41;
  }

  if (a8)
  {
    v12 = a7;
  }

  else
  {
    v12 = 0;
  }

  if (a8)
  {
    v13 = a6;
  }

  else
  {
    v13 = 0;
  }

  return bssl::tls13_export_keying_material(a1, a2, a3, (v10 + 386), *(v10 + 434), a4, a5, a8, v13, v12);
}

int X509_NAME_print(BIO *bp, X509_NAME *name, int obase)
{
  v4 = X509_NAME_oneline(name, 0, 0);
  if (v4)
  {
    v5 = v4;
    if (!*v4)
    {
LABEL_36:
      v18 = 1;
      v20 = *(v5 - 1);
      v19 = v5 - 8;
      v21 = v20 + 8;
      if (v20 == -8)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    v6 = v4 + 1;
    v7 = (v4 + 2);
    v8 = v4 + 1;
    while (1)
    {
      v9 = *(v7 - 1);
      if (*(v7 - 1))
      {
        if (v9 != 47)
        {
          goto LABEL_5;
        }

        if (*v7 - 65 > 0x19 || (v10 = v7[1], v10 != 61) && ((v10 - 65) > 0x19 || v7[2] != 61))
        {
          v9 = 47;
          goto LABEL_5;
        }
      }

      v11 = v8 - v6;
      if (!bp)
      {
        break;
      }

      if (!bp->method)
      {
        break;
      }

      bwrite = bp->method->bwrite;
      if (!bwrite)
      {
        break;
      }

      if (!LODWORD(bp->cb_arg))
      {
        v14 = 114;
        v15 = 125;
        goto LABEL_19;
      }

      if (v11 < 1)
      {
        if (v11)
        {
          goto LABEL_43;
        }

        goto LABEL_21;
      }

      v13 = (bwrite)(bp);
      if (v13 < 1)
      {
        goto LABEL_20;
      }

      bp->prev_bio = (bp->prev_bio + v13);
      if (v11 != v13)
      {
        goto LABEL_43;
      }

LABEL_21:
      if (!*(v7 - 1))
      {
        goto LABEL_36;
      }

      if (!bp || !bp->method || (v16 = bp->method->bwrite) == 0)
      {
        v23 = 115;
        v24 = 121;
        goto LABEL_42;
      }

      if (!LODWORD(bp->cb_arg))
      {
        v23 = 114;
        v24 = 125;
LABEL_42:
        ERR_put_error(17, 0, v23, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", v24);
LABEL_43:
        ERR_put_error(11, 0, 7, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/t_x509.cc", 283);
        v18 = 0;
        v25 = *(v5 - 1);
        v19 = v5 - 8;
        v21 = v25 + 8;
        if (v25 == -8)
        {
LABEL_38:
          free(v19);
          return v18;
        }

LABEL_37:
        bzero(v19, v21);
        goto LABEL_38;
      }

      v17 = (v16)(bp, ", ", 2);
      if (v17 < 1)
      {
        goto LABEL_43;
      }

      bp->prev_bio = (bp->prev_bio + v17);
      if (v17 != 2)
      {
        goto LABEL_43;
      }

      v9 = *(v7 - 1);
      v6 = v7;
LABEL_5:
      ++v7;
      ++v8;
      if (!v9)
      {
        goto LABEL_36;
      }
    }

    v14 = 115;
    v15 = 121;
LABEL_19:
    ERR_put_error(17, 0, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", v15);
    v13 = -2;
LABEL_20:
    if (v11 != v13)
    {
      goto LABEL_43;
    }

    goto LABEL_21;
  }

  return 0;
}

unint64_t ASN1_tag2bit(int tag)
{
  if ((tag - 3) > 0x1B)
  {
    return 0;
  }

  else
  {
    return qword_273BB9748[tag - 3];
  }
}

uint64_t asn1_item_ex_d2i(uint64_t result, unsigned __int8 **a2, uint64_t a3, ASN1_ITEM_st *a4, const unsigned __int8 **a5, uint64_t a6, int a7, uint64_t a8, int a9)
{
  if (!result)
  {
    return result;
  }

  v10 = result;
  HIBYTE(tag) = 0;
  LODWORD(tag) = 0;
  if (a3 >= 0x3FFFFFFF)
  {
    v11 = 0x3FFFFFFFLL;
  }

  else
  {
    v11 = a3;
  }

  if (a9 >= 30)
  {
    v12 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_dec.cc";
    v13 = 192;
    v14 = 177;
    goto LABEL_7;
  }

  result = 0;
  itype = a4->itype;
  if (itype > 1)
  {
    if (itype != 2)
    {
      if (itype == 4)
      {
        if (a5 != -1)
        {
          v12 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_dec.cc";
          v13 = 193;
          v14 = 237;
          goto LABEL_7;
        }

        v31 = *(a4->tcount + 16);

        return v31(v10, a2, v11);
      }

      if (itype != 5)
      {
        return result;
      }

      if (a5 != -1)
      {
        v12 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_dec.cc";
        v13 = 193;
        v14 = 202;
        goto LABEL_7;
      }

      v32 = a7;
      v83 = *a2;
      if (!asn1_check_tlen(&tag, (&tag + 7), &v83, v11, a5, a6, a7, a8, v76))
      {
        v12 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_dec.cc";
        v13 = 158;
        v14 = 210;
        goto LABEL_7;
      }

      if (HIBYTE(tag))
      {
        if (!v32)
        {
          v12 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_dec.cc";
          v13 = 156;
          v14 = 220;
          goto LABEL_7;
        }
      }

      else
      {
        v62 = tag;
        if ((ASN1_tag2bit(tag) & *(&a4->itype + 1)) != 0)
        {
          return asn1_d2i_ex_primitive(v10, a2, v11, a4, v62, 0, 0);
        }

        if (!v32)
        {
          v12 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_dec.cc";
          v13 = 157;
          v14 = 229;
          goto LABEL_7;
        }
      }

      return 0xFFFFFFFFLL;
    }

    if (a5 != -1)
    {
      v12 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_dec.cc";
      v13 = 193;
      v14 = 249;
      goto LABEL_7;
    }

    tcount = a4->tcount;
    if (tcount)
    {
      v26 = a2;
      v27 = *(tcount + 16);
      if (v27)
      {
        v28 = a7;
        v29 = a8;
        if (!v27(4, v10, a4, 0))
        {
          goto LABEL_149;
        }

        v30 = 0;
        a8 = v29;
        a7 = v28;
LABEL_68:
        v36 = *v10;
        if (*v10)
        {
          v37 = *(&v36->type + *(&a4->itype + 1));
          if ((v37 & 0x80000000) == 0 && a4->templates > v37)
          {
            v38 = a8;
            v39 = a7;
            ASN1_template_free((v36 + *(a4->utype + 32 * v37 + 8)), (a4->utype + 32 * v37));
            a7 = v39;
            a8 = v38;
            *(&(*v10)->type + *(&a4->itype + 1)) = -1;
          }
        }

        else
        {
          v40 = a8;
          v41 = a7;
          v42 = ASN1_item_ex_new(v10, a4);
          a7 = v41;
          a8 = v40;
          if (!v42)
          {
            v12 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_dec.cc";
            v13 = 158;
            v14 = 269;
            goto LABEL_7;
          }
        }

        v43 = v26;
        v83 = *v26;
        templates = a4->templates;
        if (templates < 1)
        {
          v50 = 0;
          v46 = 0;
        }

        else
        {
          omaxa = v30;
          v45 = a7;
          v46 = 0;
          utype = a4->utype;
          while (1)
          {
            v48 = a8;
            v49 = asn1_template_ex_d2i(*v10 + utype->tag, &v83, v11, utype, 1, a8, a9 + 1);
            if (v49 != -1)
            {
              break;
            }

            v46 = (v46 + 1);
            utype = (utype + 32);
            templates = a4->templates;
            a8 = v48;
            if (templates <= v46)
            {
              v50 = v46;
              a7 = v45;
              goto LABEL_124;
            }
          }

          if (!v49)
          {
            v51 = 158;
            v52 = 288;
            goto LABEL_81;
          }

          a7 = v45;
          templates = a4->templates;
          v50 = v46;
LABEL_124:
          v30 = omaxa;
        }

        if (templates == v46)
        {
          if (!a7)
          {
            v12 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_dec.cc";
            v13 = 163;
            v14 = 300;
            goto LABEL_7;
          }

          ASN1_item_ex_free(v10, a4);
          return 0xFFFFFFFFLL;
        }

        *(&(*v10)->type + *(&a4->itype + 1)) = v50;
        if ((v30 & 1) != 0 || v27(5, v10, a4, 0))
        {
          *v43 = v83;
          return 1;
        }

LABEL_149:
        v12 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_dec.cc";
        v13 = 101;
        v14 = 436;
        goto LABEL_7;
      }
    }

    else
    {
      v26 = a2;
      v27 = 0;
    }

    v30 = 1;
    goto LABEL_68;
  }

  if (!a4->itype)
  {
    v22 = a4->utype;
    if (v22)
    {
      if (a5 != -1 || a7)
      {
        v12 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_dec.cc";
        v13 = 136;
        v14 = 189;
        goto LABEL_7;
      }

      return asn1_template_ex_d2i(v10, a2, v11, v22, 0, a8, a9 + 1);
    }

    else
    {

      return asn1_d2i_ex_primitive(v10, a2, v11, a4, a5, a6, a7);
    }
  }

  if (itype != 1)
  {
    return result;
  }

  v16 = a7;
  v17 = a8;
  v18 = *a2;
  if (a5 == -1)
  {
    v19 = 0;
  }

  else
  {
    v19 = a6;
  }

  *pclass = 0;
  if (a5 == -1)
  {
    v20 = 16;
  }

  else
  {
    v20 = a5;
  }

  pp = v18;
  plength = 0;
  object = ASN1_get_object(&pp, &plength, &pclass[1], pclass, v11);
  if (object >= 0x80)
  {
    v23 = 103;
    v24 = 931;
    goto LABEL_42;
  }

  if ((v20 & 0x80000000) == 0 && (pclass[1] != v20 || pclass[0] != v19))
  {
    if (v16)
    {
      return 0xFFFFFFFFLL;
    }

    v23 = 190;
    v24 = 940;
LABEL_42:
    ERR_put_error(12, 0, v23, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_dec.cc", v24);
    v12 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_dec.cc";
    v13 = 158;
    v14 = 323;
    goto LABEL_7;
  }

  omax = plength;
  v83 = pp;
  if ((object & 0x20) == 0)
  {
    v12 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_dec.cc";
    v13 = 169;
    v14 = 329;
    goto LABEL_7;
  }

  if (!*v10 && !ASN1_item_ex_new(v10, a4))
  {
    v12 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_dec.cc";
    v13 = 158;
    v14 = 334;
    goto LABEL_7;
  }

  v34 = a4->tcount;
  if (v34 && (v35 = *(v34 + 16)) != 0)
  {
    if (!v35(4, v10, a4, 0))
    {
      goto LABEL_149;
    }

    v78 = v35;
    v77 = 0;
  }

  else
  {
    v78 = 0;
    v77 = 1;
  }

  v53 = a4->utype;
  if (a4->templates < 1)
  {
LABEL_121:
    v73 = 0;
LABEL_138:
    if (omax)
    {
      v12 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_dec.cc";
      v13 = 168;
      v14 = 398;
      goto LABEL_7;
    }

    while (a4->templates > v73)
    {
      v74 = asn1_do_adb(v10, v53, 1);
      if (!v74)
      {
        goto LABEL_8;
      }

      utype = v74;
      if ((v74->flags & 1) == 0)
      {
        v51 = 121;
        v52 = 417;
LABEL_81:
        ERR_put_error(12, 0, v51, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_dec.cc", v52);
        goto LABEL_82;
      }

      ASN1_template_free((*v10 + v74->tag), v74);
      v53 += 32;
      ++v73;
    }

    v75 = v83;
    if (asn1_enc_save(v10, *a2, v83 - *a2, a4) && ((v77 & 1) != 0 || v78(5, v10, a4, 0)))
    {
      *a2 = v75;
      return 1;
    }

    goto LABEL_149;
  }

  v54 = 0;
  v55 = v17;
  do
  {
    if ((*(v53 + 1) & 3) != 0)
    {
      v58 = *(v53 + 24);
      v59 = *(&(*v10)->type + v58[1]);
      if (v59)
      {
        v60 = OBJ_obj2nid(v59);
        v55 = v17;
        v61 = v58[4];
        if (v61 < 1)
        {
LABEL_87:
          v56 = v58[5];
          if (!v56)
          {
            goto LABEL_89;
          }
        }

        else
        {
          v56 = (v58[3] + 8);
          while (LODWORD(v56[-1].item) != v60)
          {
            ++v56;
            if (!--v61)
            {
              goto LABEL_87;
            }
          }
        }

LABEL_88:
        ASN1_template_free((*v10 + v56->tag), v56);
        v55 = v17;
        goto LABEL_89;
      }

      v56 = v58[6];
      if (v56)
      {
        goto LABEL_88;
      }
    }

LABEL_89:
    ++v54;
    v53 += 32;
    v57 = a4->templates;
  }

  while (v57 > v54);
  v53 = a4->utype;
  if (v57 < 1)
  {
    goto LABEL_121;
  }

  v63 = 0;
  while (1)
  {
    utype = v53;
    if ((*(v53 + 1) & 3) == 0)
    {
      goto LABEL_113;
    }

    v64 = *(v53 + 24);
    v65 = *(&(*v10)->type + v64[1]);
    if (!v65)
    {
      break;
    }

    v66 = OBJ_obj2nid(v65);
    v55 = v17;
    v67 = v64[4];
    if (v67 < 1)
    {
LABEL_110:
      utype = v64[5];
      if (!utype)
      {
        goto LABEL_150;
      }
    }

    else
    {
      utype = (v64[3] + 8);
      while (LODWORD(utype[-1].item) != v66)
      {
        ++utype;
        if (!--v67)
        {
          goto LABEL_110;
        }
      }
    }

LABEL_113:
    if (!omax)
    {
      omax = 0;
LABEL_137:
      v73 = v63;
      goto LABEL_138;
    }

    if ((a4->templates - 1) == v63)
    {
      v68 = 0;
    }

    else
    {
      v68 = utype->flags & 1;
    }

    v69 = *v10;
    v70 = utype->tag;
    v71 = v83;
    v72 = asn1_template_ex_d2i(*v10 + v70, &v83, omax, utype, v68, v55, a9 + 1);
    if (v72 == -1)
    {
      ASN1_template_free((v69 + v70), utype);
      v63 = (v63 + 1);
      v53 += 32;
      v55 = v17;
      if (a4->templates <= v63)
      {
        goto LABEL_137;
      }
    }

    else
    {
      if (!v72)
      {
LABEL_82:
        ASN1_item_ex_free(v10, a4);
        ERR_add_error_data(4, "Field=", utype->offset, ", Type=", a4->size);
        return 0;
      }

      omax = &v71[omax] - v83;
      v63 = (v63 + 1);
      v53 += 32;
      v55 = v17;
      if (a4->templates <= v63)
      {
        goto LABEL_137;
      }
    }
  }

  utype = v64[6];
  if (utype)
  {
    goto LABEL_113;
  }

LABEL_150:
  v12 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_utl.cc";
  v13 = 186;
  v14 = 226;
LABEL_7:
  ERR_put_error(12, 0, v13, v12, v14);
LABEL_8:
  ASN1_item_ex_free(v10, a4);
  ERR_add_error_data(2, "Type=", a4->size);
  return 0;
}

uint64_t asn1_template_ex_d2i(uint64_t result, unsigned __int8 **a2, uint64_t omax, ASN1_TEMPLATE *a4, int a5, uint64_t a6, int a7)
{
  if (!result)
  {
    return result;
  }

  flags = a4->flags;
  if ((a4->flags & 0x10) != 0)
  {
    v11 = result;
    v13 = *a2;
    flags_high = HIDWORD(a4->flags);
    plength = 0;
    *pclass = 0;
    pp = v13;
    object = ASN1_get_object(&pp, &plength, &pclass[1], pclass, omax);
    if (object >= 0x80)
    {
      v21 = 103;
      v22 = 931;
    }

    else
    {
      if (flags_high < 0 || pclass[1] == flags_high && pclass[0] == (flags & 0xC0))
      {
        v18 = pp;
        v17 = plength;
        v23 = pp;
        if ((object & 0x20) != 0)
        {
          if (asn1_template_noexp_d2i(v11, &v23, plength, a4, 0, a6, a7))
          {
            if (!(v18 - v23 + v17))
            {
              *a2 = v23;
              return 1;
            }

            ERR_put_error(12, 0, 119, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_dec.cc", 500);
            ASN1_template_free(v11, a4);
            return 0;
          }

          v19 = 158;
          v20 = 493;
        }

        else
        {
          v19 = 120;
          v20 = 487;
        }

LABEL_14:
        ERR_put_error(12, 0, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_dec.cc", v20);
        return 0;
      }

      if (a5)
      {
        return 0xFFFFFFFFLL;
      }

      v21 = 190;
      v22 = 940;
    }

    ERR_put_error(12, 0, v21, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_dec.cc", v22);
    v19 = 158;
    v20 = 481;
    goto LABEL_14;
  }

  return asn1_template_noexp_d2i(result, a2, omax, a4, a5, a6, a7);
}

uint64_t asn1_d2i_ex_primitive(ASN1_TYPE **a1, unsigned __int8 **a2, uint64_t omax, const ASN1_ITEM_st *a4, int a5, int a6, int a7)
{
  v8 = a5;
  if (a4->itype == 5)
  {
    v13 = -1;
    v14 = a5;
    if ((a5 + 5) >= 2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v14 = *(&a4->itype + 1);
    if ((v14 + 5) >= 2)
    {
      v13 = a5;
      v8 = *(&a4->itype + 1);
      goto LABEL_10;
    }

    v13 = a5;
    if ((a5 & 0x80000000) == 0)
    {
      v15 = 137;
      v16 = 641;
LABEL_26:
      ERR_put_error(12, 0, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_dec.cc", v16);
      return 0;
    }
  }

  if (a7)
  {
    v15 = 135;
    v16 = 645;
    goto LABEL_26;
  }

  v25 = a6;
  v26 = *a2;
  *ptag = 0;
  *&plength = 0;
  pp = v26;
  object = ASN1_get_object(&pp, &plength, &ptag[1], ptag, omax);
  if (object >= 0x80)
  {
    ERR_put_error(12, 0, 103, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_dec.cc", 931);
    v15 = 158;
    v16 = 652;
    goto LABEL_26;
  }

  if (LOBYTE(ptag[0]))
  {
    v8 = -3;
    a6 = v25;
  }

  else
  {
    a6 = v25;
    if ((ptag[1] - 1) > 0x1D)
    {
      v8 = -3;
    }

    else
    {
      v8 = dword_273BB9828[ptag[1] - 1];
    }
  }

  if (v14 == -5 && v8 <= 6 && ((1 << v8) & 0x62) != 0)
  {
    if ((object & 0x20) != 0)
    {
      v15 = 179;
      v16 = 663;
      goto LABEL_26;
    }

    v40 = plength;
    v41 = pp;
    switch(v8)
    {
      case 1:
        if (plength != 1)
        {
          v15 = 106;
          v16 = 678;
          goto LABEL_26;
        }

        if (*pp - 255 >= 0xFFFFFF02)
        {
          v15 = 109;
          v16 = 683;
          goto LABEL_26;
        }

        break;
      case 5:
        if (plength)
        {
          v15 = 164;
          v16 = 673;
          goto LABEL_26;
        }

        break;
      case 6:
        if (!plength)
        {
          goto LABEL_179;
        }

        LOBYTE(v42) = 0;
        while (1)
        {
          v43 = v42;
          if (!v40)
          {
            break;
          }

          v44 = *v41++;
          v42 = v44;
          --v40;
          if ((v43 & 0x80) == 0 && v42 == 128)
          {
            goto LABEL_179;
          }
        }

        if ((v42 & 0x80) != 0)
        {
LABEL_179:
          v15 = 146;
          v16 = 669;
          goto LABEL_26;
        }

        break;
    }

    v8 = -3;
  }

LABEL_10:
  v17 = *a2;
  if (v13 == -1)
  {
    v18 = 0;
  }

  else
  {
    v18 = a6;
  }

  if (v13 == -1)
  {
    v13 = v8;
  }

  *ptag = 0;
  *&plength = 0;
  pp = v17;
  v19 = ASN1_get_object(&pp, &plength, &ptag[1], ptag, omax);
  if (v19 >= 0x80)
  {
    v22 = 103;
    v23 = 931;
    goto LABEL_25;
  }

  if ((v13 & 0x80000000) == 0 && (ptag[1] != v13 || ptag[0] != v18))
  {
    if (a7)
    {
      return 0xFFFFFFFFLL;
    }

    v22 = 190;
    v23 = 940;
LABEL_25:
    ERR_put_error(12, 0, v22, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_dec.cc", v23);
    v15 = 158;
    v16 = 698;
    goto LABEL_26;
  }

  v20 = plength;
  v21 = pp;
  if ((v8 + 3) > 0x14 || ((1 << (v8 + 3)) & 0x180001) == 0)
  {
    if ((v19 & 0x20) != 0)
    {
      v15 = 179;
      v16 = 720;
      goto LABEL_26;
    }

    v28 = pp;
    v29 = plength;
    if (*(&a4->itype + 1) == -4)
    {
      goto LABEL_34;
    }

LABEL_49:
    v31 = 0;
    p_value = a1;
    a1 = 0;
    if (v8 <= 3)
    {
      goto LABEL_41;
    }

LABEL_50:
    if (v8 > 0x1E)
    {
      goto LABEL_159;
    }

    if (((1 << v8) & 0x5FFF1000) != 0)
    {
      goto LABEL_52;
    }

    if (v8 == 6)
    {
      if (c2i_ASN1_OBJECT(p_value, &pp, v29))
      {
        goto LABEL_158;
      }

      goto LABEL_173;
    }

    if (v8 != 10)
    {
LABEL_159:
      if (v8 != 4)
      {
        if (v8 != 5)
        {
          goto LABEL_163;
        }

        if (v29)
        {
          v38 = 164;
          v39 = 784;
LABEL_172:
          ERR_put_error(12, 0, v38, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_dec.cc", v39);
          goto LABEL_173;
        }

        *p_value = 1;
LABEL_156:
        if (v31)
        {
          v31->value.ptr = 0;
        }

        goto LABEL_158;
      }

      goto LABEL_52;
    }

LABEL_153:
    if (!c2i_ASN1_INTEGER(p_value, &pp, v29))
    {
      goto LABEL_173;
    }

    HIDWORD((*p_value)->sn) = HIDWORD((*p_value)->sn) & 0x100 | v8;
LABEL_155:
    if (v8 != 5)
    {
      goto LABEL_158;
    }

    goto LABEL_156;
  }

  if (v8 != -3 && (v19 & 0x20) == 0)
  {
    v15 = 178;
    v16 = 709;
    goto LABEL_26;
  }

  v28 = *a2;
  v29 = &pp[plength] - *a2;
  v30 = *(&a4->itype + 1);
  pp = *a2;
  if (v30 != -4)
  {
    goto LABEL_49;
  }

LABEL_34:
  v31 = *a1;
  if (!*a1)
  {
    *&plength = 0;
    if (!ASN1_item_ex_new(&plength, &ASN1_OBJECT_it.sname) || (v31 = plength) == 0)
    {
      *&plength = 0;
      ASN1_item_ex_free(&plength, &ASN1_OBJECT_it.sname);
      return 0;
    }

    *a1 = plength;
  }

  if (v31->type != v8)
  {
    ASN1_TYPE_set(v31, v8, 0);
  }

  p_value = &v31->value;
  if (v8 > 3)
  {
    goto LABEL_50;
  }

LABEL_41:
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      if (c2i_ASN1_BIT_STRING(p_value, &pp, v29))
      {
        goto LABEL_158;
      }

LABEL_173:
      *&plength = v31;
      ASN1_item_ex_free(&plength, &ASN1_OBJECT_it.sname);
      if (a1)
      {
        *a1 = 0;
      }

      return 0;
    }

    goto LABEL_153;
  }

  if (v8 == -3)
  {
LABEL_52:
    *&plength = v28;
    *(&plength + 1) = v29;
    if (v8 <= 23)
    {
      if (v8 == 12)
      {
        if (v29)
        {
          v53 = v29;
          v54 = v28;
          v55 = v28;
          do
          {
            v58 = *v55++;
            v57 = v58;
            v56 = v53 - 1;
            if (v58 < 0)
            {
              v59 = v57;
              v60 = v57 & 0xE0;
              if (v60 == 192)
              {
                v61 = 0;
                v62 = 0;
                v63 = 128;
                v64 = 31;
                v65 = 1;
              }

              else if ((v57 & 0xF0) == 0xE0)
              {
                v62 = 0;
                v61 = 1;
                v63 = 2048;
                v64 = 15;
                v65 = 2;
              }

              else
              {
                if ((v57 & 0xF8) != 0xF0)
                {
                  goto LABEL_143;
                }

                v61 = 0;
                v62 = 1;
                v63 = 0x10000;
                v64 = 7;
                v65 = 3;
              }

              if (v53 == 1)
              {
                goto LABEL_143;
              }

              v66 = v54[1];
              if ((v66 & 0xC0) != 0x80)
              {
                goto LABEL_143;
              }

              v67 = v64 & v59;
              v68 = v67 << 6;
              v69 = (v67 << 6) | v66 & 0x3F;
              if (v60 != 192)
              {
                if (v53 == 2)
                {
                  goto LABEL_143;
                }

                v70 = v54[2];
                if ((v70 & 0xC0) != 0x80)
                {
                  goto LABEL_143;
                }

                v68 = v69 << 6;
                v71 = (v69 << 6) | v70 & 0x3F;
                if (v61)
                {
                  LOWORD(v67) = v69;
                  v69 = v71;
                }

                else
                {
                  if (v53 == 3)
                  {
                    goto LABEL_143;
                  }

                  v72 = v54[3];
                  if ((v72 & 0xC0) != 0x80 || (v62 & 1) == 0)
                  {
                    goto LABEL_143;
                  }

                  v68 = v71 << 6;
                  v69 = (v71 << 6) | v72 & 0x3F;
                  LOWORD(v67) = v71;
                }
              }

              if ((v67 & 0x7FE0) == 0x360 || (v69 - 64976 >= 0x20 ? (v73 = HIWORD(v68) > 0x10u) : (v73 = 1), !v73 ? (v74 = (v69 & 0xFFFE) == 65534) : (v74 = 1), !v74 ? (v75 = v69 >= v63) : (v75 = 0), !v75))
              {
LABEL_143:
                v38 = 150;
                v39 = 858;
                goto LABEL_172;
              }

              v55 += v65;
              v56 -= v65;
            }

            v53 = v56;
            v54 = v55;
          }

          while (v56);
        }
      }

      else if (v8 == 23 && !CBS_parse_rfc5280_time_internal(&plength, 0, 1, 0))
      {
        v38 = 148;
        v39 = 865;
        goto LABEL_172;
      }
    }

    else if (v8 == 24)
    {
      if (!CBS_parse_rfc5280_time_internal(&plength, 1, 0, 0))
      {
        v38 = 148;
        v39 = 872;
        goto LABEL_172;
      }
    }

    else if (v8 == 28)
    {
      if (v29)
      {
        if (v29 >= 4)
        {
          v45 = v29;
          v46 = v28;
          do
          {
            v47 = (*v46 << 16) | (v46[1] << 8);
            v48 = v47 | v46[2];
            if ((v48 & 0x1FF8) == 0xD8)
            {
              break;
            }

            v49 = v46[3] | (v48 << 8);
            v50 = v47 >> 8;
            v51 = (v49 - 64976) < 0x20 || v50 > 0x10;
            if (v51 || (v49 & 0xFFFE) == 65534)
            {
              break;
            }

            if (v45 == 4)
            {
              goto LABEL_144;
            }

            v45 -= 4;
            v46 += 4;
          }

          while (v45 >= 4);
        }

        v38 = 149;
        v39 = 849;
        goto LABEL_172;
      }
    }

    else if (v8 == 30 && v29)
    {
      if (v29 != 1)
      {
        v33 = v29;
        v34 = v28;
        do
        {
          v35 = *v34;
          if ((v35 & 0xF8) == 0xD8)
          {
            break;
          }

          v36 = v34[1] | (v35 << 8);
          v37 = (v36 - 64976) < 0x20 || (v36 & 0xFFFE) == 65534;
          if (v37)
          {
            break;
          }

          if (v33 == 2)
          {
            goto LABEL_144;
          }

          v34 += 2;
          v37 = v33 == 3;
          v33 -= 2;
        }

        while (!v37);
      }

      v38 = 142;
      v39 = 840;
      goto LABEL_172;
    }

LABEL_144:
    v76 = *p_value;
    if (*p_value)
    {
      HIDWORD(v76->sn) = v8;
    }

    else
    {
      v77 = ASN1_STRING_type_new(v8);
      if (!v77)
      {
        goto LABEL_173;
      }

      v76 = v77;
      *p_value = v77;
    }

    if (!ASN1_STRING_set(v76, v28, v29))
    {
      ASN1_STRING_free(v76);
      *p_value = 0;
      goto LABEL_173;
    }

    goto LABEL_155;
  }

  if (v8 != 1)
  {
LABEL_163:
    v38 = 193;
    v39 = 898;
    goto LABEL_172;
  }

  if (v29 != 1)
  {
    v38 = 106;
    v39 = 792;
    goto LABEL_172;
  }

  *p_value = *v28;
LABEL_158:
  *a2 = &v21[v20];
  return 1;
}

uint64_t asn1_check_tlen(uint64_t *a1, int *a2, unsigned __int8 *a3, char *omax, const unsigned __int8 **a5, uint64_t a6, int a7, int a8, char a9)
{
  *pclass = 0;
  pp = *a3;
  if (ASN1_get_object(&pp, &plength, &pclass[1], pclass, omax) >= 0x80)
  {
    ERR_put_error(12, 0, 103, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_dec.cc", 931);
    return 0;
  }

  else
  {
    if (a2)
    {
      *a2 = pclass[0];
    }

    if (a1)
    {
      *a1 = pclass[1];
    }

    *a3 = pp;
    return 1;
  }
}

uint64_t asn1_template_noexp_d2i(ASN1_VALUE_st **a1, unsigned __int8 **a2, uint64_t a3, int *a4, int a5, uint64_t a6, int a7)
{
  v7 = a7;
  v8 = a6;
  v12 = a1;
  v13 = *a4;
  v14 = *a4 & 0xC0;
  v15 = *a2;
  v42 = *a2;
  if ((v13 & 6) == 0)
  {
    v17 = *(a4 + 3);
    if ((v13 & 8) != 0)
    {
      result = asn1_item_ex_d2i(a1, &v42, a3, v17, a4[1], v13 & 0xC0, a5, a6, a7);
      if (result == -1)
      {
        return result;
      }

      v41 = a2;
      if (result)
      {
        goto LABEL_42;
      }

      v19 = 590;
    }

    else
    {
      result = asn1_item_ex_d2i(a1, &v42, a3, v17, -1, 0, a5, a6, a7);
      if (result == -1)
      {
        return result;
      }

      v41 = a2;
      if (result)
      {
        goto LABEL_42;
      }

      v19 = 600;
    }

LABEL_45:
    ERR_put_error(12, 0, 158, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_dec.cc", v19);
    goto LABEL_48;
  }

  if ((v13 & 8) != 0)
  {
    v16 = a4[1];
  }

  else
  {
    v14 = 0;
    if ((v13 & 2) != 0)
    {
      v16 = 17;
    }

    else
    {
      v16 = 16;
    }
  }

  plength = 0;
  *pclass = 0;
  pp = v15;
  if (ASN1_get_object(&pp, &plength, &pclass[1], pclass, a3) >= 0x80)
  {
    v25 = 103;
    v26 = 931;
  }

  else
  {
    if (v16 < 0 || pclass[1] == v16 && pclass[0] == v14)
    {
      v20 = plength;
      v41 = a2;
      v42 = pp;
      v21 = *v12;
      if (*v12)
      {
        plength = 0;
        v22 = *v21;
        if (*v21)
        {
          do
          {
            v23 = v22 - 1;
            v24 = *(*(v21 + 1) + 8 * v23);
            *v21 = v23;
            plength = v24;
            ASN1_item_ex_free(&plength, *(a4 + 3));
            v22 = *v21;
          }

          while (*v21);
          v21 = *v12;
        }

        if (!v21)
        {
          goto LABEL_48;
        }

        goto LABEL_29;
      }

      v27 = OPENSSL_sk_new_null();
      *v12 = v27;
      if (v27)
      {
LABEL_29:
        if (v20 >= 1)
        {
          while (1)
          {
            v28 = v42;
            plength = 0;
            if (!asn1_item_ex_d2i(&plength, &v42, v20, *(a4 + 3), -1, 0, 0, v8, v7))
            {
              v19 = 576;
              goto LABEL_45;
            }

            v29 = v12;
            v30 = *v12;
            v31 = **v12;
            if (v31 >= 0x7FFFFFFF)
            {
              break;
            }

            v32 = v8;
            v33 = v42;
            v34 = plength;
            v35 = *(v30 + 3);
            if (v35 <= v31 + 1)
            {
              v38 = OPENSSL_realloc(*(v30 + 1), 16 * v35);
              if (!v38)
              {
                goto LABEL_47;
              }

              *(v30 + 1) = v38;
              *(v30 + 3) = 2 * v35;
              v36 = *v30;
              v39 = *v30 - v31;
              if (*v30 <= v31)
              {
                v37 = &v38[v36];
              }

              else
              {
                if (8 * v39)
                {
                  memmove(&v38[v31 + 1], &v38[v31], 8 * v39);
                  v36 = *v30;
                  v38 = *(v30 + 1);
                }

                v37 = &v38[v31];
              }
            }

            else
            {
              v36 = v31;
              v37 = (*(v30 + 1) + 8 * v31);
            }

            *v37 = v34;
            *(v30 + 4) = 0;
            *v30 = v36 + 1;
            if (v36 == -1)
            {
              goto LABEL_47;
            }

            v20 = &v28[v20] - v33;
            v8 = v32;
            v7 = v40;
            v12 = v29;
            if (v20 <= 0)
            {
              goto LABEL_42;
            }
          }

          ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
LABEL_47:
          ASN1_item_ex_free(&plength, *(a4 + 3));
          v12 = v29;
          goto LABEL_48;
        }

LABEL_42:
        *v41 = v42;
        return 1;
      }

LABEL_48:
      ASN1_template_free(v12, a4);
      return 0;
    }

    if (a5)
    {
      return 0xFFFFFFFFLL;
    }

    v25 = 190;
    v26 = 940;
  }

  ERR_put_error(12, 0, v25, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_dec.cc", v26);
  ERR_put_error(12, 0, 158, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_dec.cc", 548);
  return 0;
}

int ASN1_item_i2d(ASN1_VALUE *val, unsigned __int8 **out, const ASN1_ITEM *it)
{
  v14 = val;
  if (!out || *out)
  {
    return asn1_item_ex_i2d_opt(&v14, out, it, -1, 0, 0);
  }

  result = asn1_item_ex_i2d_opt(&v14, 0, it, -1, 0, 0);
  if (result >= 1)
  {
    v6 = result;
    v7 = result;
    v8 = malloc_type_malloc(result + 8, 0xB4E622C9uLL);
    if (v8)
    {
      v9 = v8;
      *v8 = v7;
      v10 = v8 + 8;
      v13 = v8 + 8;
      v11 = asn1_item_ex_i2d_opt(&v14, &v13, it, -1, 0, 0);
      if (v11 <= 0)
      {
        v12 = v11;
        free(v9);
        return v12;
      }

      else
      {
        *out = v10;
        return v6;
      }
    }

    else
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      return -1;
    }
  }

  return result;
}

uint64_t asn1_item_ex_i2d_opt(ASN1_VALUE_st **a1, unsigned __int8 **a2, const ASN1_ITEM_st *a3, int a4, int a5, int a6)
{
  v6 = a3;
  v8 = a1;
  itype = a3->itype;
  if (a3->itype)
  {
    v10 = *a1;
    if (!*a1)
    {
      if (!a6)
      {
        v11 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_enc.cc";
        v12 = 155;
        v13 = 99;
        goto LABEL_84;
      }

      return 0;
    }

    if (a3->itype <= 3u)
    {
      if (itype == 1)
      {
        tcount = a3->tcount;
        if (tcount)
        {
          if ((*(tcount + 8) & 2) != 0)
          {
            v18 = *(tcount + 24);
            v19 = v10 + v18;
            v16 = *(v10 + v18 + 8);
            if (v16)
            {
              if (a2)
              {
                memcpy(*a2, *v19, *(v10 + v18 + 8));
                v16 = *(v19 + 1);
                *a2 += v16;
              }

              return v16;
            }
          }
        }

        if (a4 == -1)
        {
          v20 = 0;
        }

        else
        {
          v20 = a5;
        }

        if (a4 == -1)
        {
          v21 = 16;
        }

        else
        {
          v21 = a4;
        }

        if (a3->templates >= 1)
        {
          v22 = 0;
          v23 = 0;
          utype = a3->utype;
          while (1)
          {
            v25 = utype;
            if ((*(utype + 1) & 3) != 0)
            {
              v26 = *(utype + 24);
              v27 = *(*v8 + v26[1]);
              if (v27)
              {
                v28 = OBJ_obj2nid(v27);
                v29 = v26[4];
                if (v29 < 1)
                {
LABEL_47:
                  v25 = v26[5];
                  if (!v25)
                  {
                    goto LABEL_82;
                  }
                }

                else
                {
                  v25 = (v26[3] + 8);
                  while (LODWORD(v25[-1].item) != v28)
                  {
                    ++v25;
                    if (!--v29)
                    {
                      goto LABEL_47;
                    }
                  }
                }
              }

              else
              {
                v25 = v26[6];
                if (!v25)
                {
LABEL_82:
                  v11 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_utl.cc";
                  v12 = 186;
                  v13 = 226;
                  goto LABEL_84;
                }
              }
            }

            v16 = 0xFFFFFFFFLL;
            v30 = asn1_template_ex_i2d((*v8 + v25->tag), 0, v25, -1, 0, 0);
            if (v30 == -1 || v30 > (v22 ^ 0x7FFFFFFF))
            {
              return v16;
            }

            v22 += v30;
            utype += 32;
            if (v6->templates <= ++v23)
            {
              goto LABEL_65;
            }
          }
        }

        v22 = 0;
LABEL_65:
        v33 = ASN1_object_size(1, v22, v21);
        v16 = v33;
        if (!a2)
        {
          return v16;
        }

        if (v33 == -1)
        {
          return v16;
        }

        ASN1_put_object(a2, 1, v22, v21, v20);
        if (v6->templates < 1)
        {
          return v16;
        }

        v34 = 0;
        for (i = v6->utype; ; i += 32)
        {
          v36 = i;
          if ((*(i + 1) & 3) != 0)
          {
            v37 = *(i + 24);
            v38 = *(*v8 + v37[1]);
            if (v38)
            {
              v39 = OBJ_obj2nid(v38);
              v40 = v37[4];
              if (v40 < 1)
              {
LABEL_75:
                v36 = v37[5];
                if (!v36)
                {
                  goto LABEL_82;
                }
              }

              else
              {
                v36 = (v37[3] + 8);
                while (LODWORD(v36[-1].item) != v39)
                {
                  ++v36;
                  if (!--v40)
                  {
                    goto LABEL_75;
                  }
                }
              }
            }

            else
            {
              v36 = v37[6];
              if (!v36)
              {
                goto LABEL_82;
              }
            }
          }

          if ((asn1_template_ex_i2d((*v8 + v36->tag), a2, v36, -1, 0, 0) & 0x80000000) != 0)
          {
            break;
          }

          if (v6->templates <= ++v34)
          {
            return v16;
          }
        }

        return 0xFFFFFFFFLL;
      }

      if (itype == 2)
      {
        if (a4 != -1)
        {
          v11 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_enc.cc";
          v12 = 193;
          v13 = 129;
          goto LABEL_84;
        }

        v32 = *(v10 + *(&a3->itype + 1));
        if ((v32 & 0x80000000) != 0 || a3->templates <= v32)
        {
          v11 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_enc.cc";
          v12 = 163;
          v13 = 134;
          goto LABEL_84;
        }

        v14 = (a3->utype + 32 * v32);
        if ((v14->flags & 1) == 0)
        {
          a1 = (v10 + v14->tag);
          a4 = -1;
          LOBYTE(a5) = 0;
          a6 = 0;
LABEL_10:

          return asn1_template_ex_i2d(a1, a2, v14, a4, a5, a6);
        }

        v11 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_enc.cc";
        v12 = 193;
        v13 = 139;
LABEL_84:
        ERR_put_error(12, 0, v12, v11, v13);
        return 0xFFFFFFFFLL;
      }

LABEL_25:
      v11 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_enc.cc";
      v12 = 193;
      v13 = 223;
      goto LABEL_84;
    }

    if (itype == 4)
    {
      if (a4 != -1)
      {
        v11 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_enc.cc";
        v12 = 193;
        v13 = 149;
        goto LABEL_84;
      }

      v16 = (*(a3->tcount + 24))(a1, a2, a3);
      if (!v16)
      {
        v11 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_enc.cc";
        v12 = 68;
        v13 = 159;
        goto LABEL_84;
      }

      return v16;
    }

    if (itype != 5)
    {
      goto LABEL_25;
    }

    if (a4 != -1)
    {
      v11 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_enc.cc";
      v12 = 193;
      v13 = 120;
      goto LABEL_84;
    }

    LOBYTE(a5) = 0;
  }

  else
  {
    v14 = a3->utype;
    if (v14)
    {
      if (v14->flags)
      {
        v11 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_enc.cc";
        v12 = 193;
        v13 = 108;
        goto LABEL_84;
      }

      goto LABEL_10;
    }

    a3 = v6;
  }

  return asn1_i2d_ex_primitive(a1, a2, a3, a4, a5, a6);
}

uint64_t asn1_template_ex_i2d(ASN1_VALUE_st **a1, unsigned __int8 **a2, const ASN1_TEMPLATE_st *a3, int a4, char a5, int a6)
{
  flags_high = a4;
  flags = a3->flags;
  if ((a3->flags & 0x18) == 0)
  {
    if (a4 == -1)
    {
      v14 = 0;
    }

    else
    {
      v14 = a5 & 0xC0;
    }

    v15 = a3->flags & 1 | a6;
    v16 = v15 != 0;
    if ((flags & 6) == 0)
    {
      goto LABEL_32;
    }

LABEL_10:
    v17 = *a1;
    v93 = 0;
    if (!v17)
    {
      if (v15)
      {
        return 0;
      }

      v10 = 155;
      v11 = 286;
LABEL_4:
      ERR_put_error(12, 0, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_enc.cc", v11);
      return 0xFFFFFFFFLL;
    }

    v18 = flags_high != -1;
    v19 = (flags & 0x10) == 0;
    if ((flags & 2) != 0)
    {
      v20 = 17;
    }

    else
    {
      v20 = 16;
    }

    v92 = v19 && v18;
    if (v19 && v18)
    {
      v21 = flags_high;
    }

    else
    {
      v21 = v20;
    }

    v22 = *v17;
    if (*v17)
    {
      v23 = 0;
      v24 = 0;
      while (1)
      {
        v25 = v22 <= v24 ? 0 : *(v17[1] + 8 * v24);
        v93 = v25;
        v12 = 0xFFFFFFFFLL;
        v26 = asn1_item_ex_i2d_opt(&v93, 0, a3->field_name, -1, 0, 0);
        v27 = v26 != -1 && v23 <= (v26 ^ 0x7FFFFFFF);
        if (!v27)
        {
          return v12;
        }

        v23 += v26;
        ++v24;
        v22 = *v17;
        if (v24 >= *v17)
        {
          if ((v23 & 0x80000000) != 0)
          {
            return v12;
          }

          v28 = 2;
          if (v21 >= 31)
          {
            goto LABEL_44;
          }

          goto LABEL_46;
        }
      }
    }

    v23 = 0;
    v28 = 2;
    if (v21 >= 31)
    {
LABEL_44:
      v35 = v21;
      do
      {
        ++v28;
        v27 = v35 > 0x7F;
        v35 >>= 7;
      }

      while (v27);
    }

LABEL_46:
    if (v23 >= 0x80)
    {
      v36 = v23;
      do
      {
        ++v28;
        v27 = v36 > 0xFF;
        v36 >>= 8;
      }

      while (v27);
    }

    v12 = 0xFFFFFFFFLL;
    if (v28 >= (v23 ^ 0x7FFFFFFF))
    {
      return v12;
    }

    v37 = v28 + v23;
    if (v28 + v23 == -1)
    {
      return v12;
    }

    if ((flags & 0x10) != 0)
    {
      if (v37 < 0)
      {
        return v12;
      }

      v41 = 2;
      if (flags_high >= 31)
      {
        v42 = flags_high;
        do
        {
          ++v41;
          v27 = v42 > 0x7F;
          v42 >>= 7;
        }

        while (v27);
      }

      if (v37 >= 128)
      {
        v43 = v37;
        do
        {
          ++v41;
          v27 = v43 > 0xFF;
          v43 >>= 8;
        }

        while (v27);
      }

      v44 = v41 + v37;
      v12 = v41 >= (v37 ^ 0x7FFFFFFF) ? 0xFFFFFFFFLL : v44;
      if (!a2 || v12 == -1)
      {
        return v12;
      }

      ASN1_put_object(a2, 1, v37, flags_high, v14);
      v37 = v44;
    }

    else
    {
      v12 = v28 + v23;
      if (!a2)
      {
        return v12;
      }
    }

    v45 = *a2;
    v46 = v14 & 0xC0 | 0x20;
    if (!v92)
    {
      v46 = 32;
    }

    if (v21 > 30)
    {
      v58 = 0;
      *v45 = v46 | 0x1F;
      v59 = v45;
      v60 = v21;
      do
      {
        --v58;
        ++v59;
        v51 = v60 >= 0x80;
        v60 >>= 7;
      }

      while (v51);
      *v59 = v21 & 0x7F;
      if (v58 != -1)
      {
        v61 = -v58;
        v62 = v45 - 1;
        do
        {
          v21 = v21 >> 7;
          v62[v61--] = v21 | 0x80;
        }

        while (v61 > 1);
      }

      v47 = v59 + 1;
    }

    else
    {
      *v45 = v46 | v21 & 0x1F;
      v47 = v45 + 1;
    }

    if (v23 >= 0x80)
    {
      v65 = 1;
      v66 = v23;
      do
      {
        ++v65;
        v27 = v66 > 0xFF;
        v66 >>= 8;
      }

      while (v27);
      *v47 = (v65 - 1) | 0x80;
      v67 = v65;
      v68 = v23;
      do
      {
        v47[(v67 - 2) + 1] = v68;
        v68 >>= 8;
        --v67;
      }

      while (v67 > 1);
      v63 = v37;
      v64 = &v47[v65];
    }

    else
    {
      v63 = v37;
      *v47 = v23;
      v64 = v47 + 1;
    }

    *a2 = v64;
    field_name = a3->field_name;
    if ((flags & 2) == 0 || *v17 <= 1)
    {
      v70 = 0;
      do
      {
        v71 = v70;
        v72 = *v17;
        if (v70 >= *v17)
        {
          break;
        }

        v95 = *(v17[1] + 8 * v70);
        v73 = asn1_item_ex_i2d_opt(&v95, a2, field_name, -1, 0, 0);
        v70 = v71 + 1;
      }

      while ((v73 & 0x80000000) == 0);
      v74 = v71 >= v72;
LABEL_119:
      if (v74)
      {
        return v63;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    v75 = OPENSSL_malloc(v23);
    v76 = OPENSSL_calloc(*v17, 0x10uLL);
    v77 = v76;
    v95 = v75;
    if (v76 && v75)
    {
      v78 = 0;
      v79 = v76 + 2;
      while (v78 < *v17)
      {
        v94 = *(v17[1] + 8 * v78);
        *(v79 - 1) = v95;
        v80 = asn1_item_ex_i2d_opt(&v94, &v95, field_name, -1, 0, 0);
        *v79 = v80;
        v79 += 4;
        ++v78;
        if (v80 < 0)
        {
          v74 = 0;
          goto LABEL_136;
        }
      }

      qsort(v77, *v17, 0x10uLL, der_cmp);
      v81 = *a2;
      v95 = *a2;
      v82 = *v17;
      if (*v17)
      {
        v83 = 0;
        v84 = (v77 + 2);
        do
        {
          while (1)
          {
            v85 = *v84;
            if (!v85)
            {
              break;
            }

            memcpy(v81, *(v84 - 1), v85);
            v82 = *v17;
            v81 = v95 + *v84;
            v95 = v81;
            ++v83;
            v84 += 2;
            if (v83 >= v82)
            {
              goto LABEL_135;
            }
          }

          v95 = v81;
          ++v83;
          v84 += 2;
        }

        while (v83 < v82);
      }

LABEL_135:
      *a2 = v81;
      v74 = 1;
    }

    else
    {
      v74 = 0;
      if (!v76)
      {
LABEL_139:
        if (v75)
        {
          v90 = *(v75 - 1);
          v89 = v75 - 8;
          v91 = v90 + 8;
          if (v90 != -8)
          {
            bzero(v89, v91);
          }

          free(v89);
        }

        goto LABEL_119;
      }
    }

LABEL_136:
    v87 = *(v77 - 1);
    v86 = v77 - 2;
    v88 = v87 + 8;
    if (v87 != -8)
    {
      bzero(v86, v88);
    }

    free(v86);
    goto LABEL_139;
  }

  if (a4 != -1)
  {
    v10 = 193;
    v11 = 250;
    goto LABEL_4;
  }

  flags_high = HIDWORD(a3->flags);
  v14 = a3->flags & 0xC0;
  v15 = a3->flags & 1 | a6;
  v16 = v15 != 0;
  if ((flags & 6) != 0)
  {
    goto LABEL_10;
  }

LABEL_32:
  v29 = a3->field_name;
  if ((flags & 0x10) != 0)
  {
    v31 = asn1_item_ex_i2d_opt(a1, 0, v29, -1, 0, v16);
    if (v31 < 1)
    {
      return v31;
    }

    v32 = 2;
    if (flags_high < 31)
    {
      v34 = a1;
    }

    else
    {
      v33 = flags_high;
      v34 = a1;
      do
      {
        ++v32;
        v27 = v33 > 0x7F;
        v33 >>= 7;
      }

      while (v27);
    }

    if (v31 >= 128)
    {
      v38 = v31;
      do
      {
        ++v32;
        v27 = v38 > 0xFF;
        v38 >>= 8;
      }

      while (v27);
    }

    if (v32 >= (v31 ^ 0x7FFFFFFF))
    {
      v12 = 0xFFFFFFFFLL;
    }

    else
    {
      v12 = (v32 + v31);
    }

    if (a2 && v12 != -1)
    {
      v39 = *a2;
      if (flags_high > 30)
      {
        v48 = 0;
        *v39 = v14 & 0xC0 | 0x3F;
        v49 = v39;
        v50 = flags_high;
        do
        {
          --v48;
          ++v49;
          v51 = v50 >= 0x80;
          v50 >>= 7;
        }

        while (v51);
        *v49 = flags_high & 0x7F;
        if (v48 != -1)
        {
          v52 = -v48;
          v53 = v39 - 1;
          do
          {
            flags_high = flags_high >> 7;
            v53[v52--] = flags_high | 0x80;
          }

          while (v52 > 1);
        }

        v40 = v49 + 1;
      }

      else
      {
        *v39 = v14 & 0xC0 | 0x20 | flags_high & 0x1F;
        v40 = v39 + 1;
      }

      if (v31 >= 128)
      {
        v55 = 1;
        v56 = v31;
        do
        {
          ++v55;
          v27 = v56 > 0xFF;
          v56 >>= 8;
        }

        while (v27);
        *v40 = (v55 - 1) | 0x80;
        v57 = v55;
        do
        {
          v40[(v57 - 2) + 1] = v31;
          LODWORD(v31) = v31 >> 8;
          --v57;
        }

        while (v57 > 1);
        v54 = &v40[v55];
      }

      else
      {
        *v40 = v31;
        v54 = v40 + 1;
      }

      *a2 = v54;
      if (asn1_item_ex_i2d_opt(v34, a2, a3->field_name, -1, 0, 0) >= 0)
      {
        return v12;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    return v12;
  }

  return asn1_item_ex_i2d_opt(a1, a2, v29, flags_high, v14, v16);
}

uint64_t asn1_i2d_ex_primitive(ASN1_BIT_STRING **a1, unsigned __int8 **a2, const ASN1_ITEM_st *a3, int a4, char a5, int a6)
{
  v35 = *(&a3->itype + 1);
  v36 = 0;
  result = asn1_ex_i2c(a1, 0, &v36, &v35, a3);
  if ((result & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (v36)
  {
    if (a6)
    {
      return 0;
    }

    ERR_put_error(12, 0, 155, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_enc.cc", 469);
    return 0xFFFFFFFFLL;
  }

  v13 = v35;
  if (a4 == -1)
  {
    a4 = v35;
  }

  if (a2)
  {
    if ((v35 + 3) > 0x14 || ((1 << (v35 + 3)) & 0x180001) == 0)
    {
      v15 = *a2;
      v16 = a5 & 0xC0;
      if (a4 > 30)
      {
        v18 = 0;
        *v15 = v16 | 0x1F;
        v19 = v15;
        v20 = a4;
        do
        {
          --v18;
          ++v19;
          v21 = v20 >= 0x80;
          v20 >>= 7;
        }

        while (v21);
        *v19 = a4 & 0x7F;
        if (v18 != -1)
        {
          v22 = -v18;
          v23 = v15 - 1;
          v24 = a4;
          do
          {
            v24 >>= 7;
            v23[v22--] = v24 | 0x80;
          }

          while (v22 > 1);
        }

        v17 = v19 + 1;
      }

      else
      {
        *v15 = a4 & 0x1F | v16;
        v17 = v15 + 1;
      }

      if (result >= 128)
      {
        v26 = 1;
        v27 = result;
        do
        {
          ++v26;
          v28 = v27 > 0xFF;
          v27 >>= 8;
        }

        while (v28);
        *v17 = (v26 - 1) | 0x80;
        v29 = v26;
        v30 = result;
        do
        {
          v17[(v29 - 2) + 1] = v30;
          v30 >>= 8;
          --v29;
        }

        while (v29 > 1);
        v25 = &v17[v26];
      }

      else
      {
        *v17 = result;
        v25 = v17 + 1;
      }

      *a2 = v25;
    }

    v31 = result;
    if ((asn1_ex_i2c(a1, *a2, &v36, &v35, a3) & 0x80000000) == 0)
    {
      result = v31;
      *a2 += v31;
      goto LABEL_32;
    }

    return 0xFFFFFFFFLL;
  }

LABEL_32:
  if ((v13 + 3) > 0x14 || ((1 << (v13 + 3)) & 0x180001) == 0)
  {
    v33 = 2;
    if (a4 >= 31)
    {
      do
      {
        ++v33;
        v28 = a4 > 0x7F;
        a4 = a4 >> 7;
      }

      while (v28);
    }

    if (result >= 128)
    {
      v34 = result;
      do
      {
        ++v33;
        v28 = v34 > 0xFF;
        v34 >>= 8;
      }

      while (v28);
    }

    if (v33 >= (result ^ 0x7FFFFFFF))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return (v33 + result);
    }
  }

  return result;
}

uint64_t der_cmp(const void **a1, const void **a2)
{
  v2 = *(a1 + 2);
  v3 = *(a2 + 2);
  v4 = (v2 - v3);
  if (v2 >= v3)
  {
    v2 = *(a2 + 2);
  }

  if (!v2)
  {
    return v4;
  }

  result = memcmp(*a1, *a2, v2);
  if (!result)
  {
    return v4;
  }

  return result;
}

uint64_t asn1_ex_i2c(ASN1_BIT_STRING **p_data, unsigned __int8 *__dst, int *a3, int *a4, const ASN1_ITEM_st *a5)
{
  v25 = __dst;
  *a3 = 0;
  if (a5->itype)
  {
    v5 = *p_data;
    if (!*p_data)
    {
      goto LABEL_67;
    }

    if (a5->itype == 5)
    {
      goto LABEL_9;
    }

    v6 = *(&a5->itype + 1);
  }

  else
  {
    v6 = *(&a5->itype + 1);
    if (v6 == 1)
    {
      goto LABEL_12;
    }

    v5 = *p_data;
    if (!*p_data)
    {
      goto LABEL_67;
    }
  }

  if (v6 != -4)
  {
    if (v6 == -5)
    {
LABEL_9:
      type = v5->type;
      if (type < 0 && type != -3)
      {
        v8 = 191;
        v9 = 552;
LABEL_65:
        ERR_put_error(12, 0, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_enc.cc", v9);
        return 0xFFFFFFFFLL;
      }

      if (type == 266)
      {
        v11 = 10;
      }

      else
      {
        v11 = v5->type;
      }

      if (type == 258)
      {
        length = 2;
      }

      else
      {
        length = v11;
      }

      *a4 = length;
      v24 = 0;
      if (length > 3)
      {
        goto LABEL_21;
      }

      goto LABEL_32;
    }

LABEL_12:
    length = *a4;
    v24 = 0;
    if (length > 3)
    {
      goto LABEL_21;
    }

    goto LABEL_32;
  }

  length = v5->length;
  if (v5->length < 0 && length != -3)
  {
    v8 = 191;
    v9 = 570;
    goto LABEL_65;
  }

  *a4 = length;
  p_data = &v5->data;
  v24 = 0;
  if (length > 3)
  {
LABEL_21:
    if (length <= 0x1E)
    {
      if (((1 << length) & 0x5FFF1000) != 0)
      {
LABEL_23:
        data = (*p_data)->data;
        flags_high = (*p_data)->length;
LABEL_24:
        if (__dst)
        {
          if (flags_high)
          {
            memcpy(__dst, data, flags_high);
          }
        }

        return flags_high;
      }

      if (length == 6)
      {
        flags_high = HIDWORD((*p_data)->flags);
        if (!flags_high)
        {
          v8 = 134;
          v9 = 586;
          goto LABEL_65;
        }

        data = *&(*p_data)[1].length;
        goto LABEL_24;
      }

      if (length == 10)
      {
        goto LABEL_48;
      }
    }

    if (length == 4)
    {
      goto LABEL_23;
    }

    flags_high = 0;
    if (length == 5)
    {
      return flags_high;
    }

LABEL_58:
    v8 = 193;
    v9 = 654;
    goto LABEL_65;
  }

LABEL_32:
  if (length <= 1)
  {
    if (length == -3)
    {
      goto LABEL_23;
    }

    if (length != 1)
    {
      goto LABEL_58;
    }

    v15 = *p_data;
    if (*p_data != -1)
    {
      if (*(&a5->itype + 1) == -4)
      {
LABEL_37:
        if (v15)
        {
          v16 = -1;
        }

        else
        {
          v16 = 0;
        }

        v24 = v16;
        flags_high = 1;
        data = &v24;
        goto LABEL_24;
      }

      funcs = a5->funcs;
      if (v15)
      {
        if (funcs <= 0)
        {
          goto LABEL_37;
        }
      }

      else if (funcs)
      {
        goto LABEL_37;
      }
    }

LABEL_67:
    *a3 = 1;
    return 0;
  }

  if (length != 2)
  {
    v17 = *p_data;
    if (__dst)
    {
      v18 = &v25;
    }

    else
    {
      v18 = 0;
    }

    v19 = i2c_ASN1_BIT_STRING(v17, v18);
    goto LABEL_52;
  }

LABEL_48:
  v20 = *p_data;
  if (__dst)
  {
    v21 = &v25;
  }

  else
  {
    v21 = 0;
  }

  v19 = i2c_ASN1_INTEGER(v20, v21);
LABEL_52:
  if (v19 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v19;
  }
}

void ASN1_item_ex_free(ASN1_VALUE **pval, const ASN1_ITEM *it)
{
  if (!pval)
  {
    return;
  }

  v2 = it;
  itype = it->itype;
  if (it->itype)
  {
LABEL_6:
    v6 = *pval;
    if (!*pval)
    {
      return;
    }

    if (itype > 3)
    {
      if (itype == 4)
      {
        tcount = v2->tcount;
        if (tcount)
        {
          v28 = *(tcount + 8);
          if (v28)
          {

            v28();
          }
        }
      }

      else if (itype == 5)
      {
        v10 = *(v6 + 1);
        if (v10)
        {
          v12 = *(v10 - 8);
          v11 = (v10 - 8);
          v13 = v12 + 8;
          if (v12 != -8)
          {
            bzero(v11, v13);
          }

          free(v11);
        }

        v15 = *(v6 - 1);
        v14 = v6 - 8;
        v16 = v15 + 8;
        if (v15 != -8)
        {
          bzero(v14, v16);
        }

        v17 = v14;
        goto LABEL_88;
      }

      return;
    }

    if (itype != 1)
    {
      if (itype != 2)
      {
        return;
      }

      v7 = v2->tcount;
      if (v7)
      {
        v8 = *(v7 + 16);
        if (v8)
        {
          if (v8(2, pval, v2, 0) == 2)
          {
            return;
          }

          v9 = 0;
          v6 = *pval;
          goto LABEL_54;
        }
      }

      else
      {
        v8 = 0;
      }

      v9 = 1;
LABEL_54:
      v33 = *(v6 + *(&v2->itype + 1));
      if ((v33 & 0x80000000) == 0 && v2->templates > v33)
      {
        ASN1_template_free((v6 + *(v2->utype + 32 * v33 + 8)), (v2->utype + 32 * v33));
      }

      if ((v9 & 1) == 0)
      {
        v8(3, pval, v2, 0);
      }

      goto LABEL_84;
    }

    v23 = v2->tcount;
    if (v23 && (*(v23 + 8) & 1) != 0)
    {
      v34 = (v6 + *(v23 + 12));
      v35 = atomic_load(v34);
      if (v35 == -1)
      {
        return;
      }

      while (1)
      {
        if (!v35)
        {
          abort();
        }

        v36 = v35;
        atomic_compare_exchange_strong(v34, &v36, v35 - 1);
        if (v36 == v35)
        {
          break;
        }

        v35 = v36;
        if (v36 == -1)
        {
          return;
        }
      }

      if (v35 != 1)
      {
        return;
      }
    }

    v24 = v2->tcount;
    if (v24)
    {
      v25 = *(v24 + 16);
      if (v25)
      {
        if (v25(2, pval, v2, 0) == 2)
        {
          return;
        }

        v26 = 0;
LABEL_66:
        if (*pval)
        {
          v37 = v2->tcount;
          if (v37)
          {
            if ((*(v37 + 8) & 2) != 0)
            {
              v38 = (*pval + *(v37 + 24));
              v39 = v38[2];
              if (v39)
              {
                CRYPTO_BUFFER_free(v39);
              }

              else
              {
                v41 = *v38;
                if (*v38)
                {
                  v43 = *(v41 - 8);
                  v42 = (v41 - 8);
                  v44 = v43 + 8;
                  if (v43 != -8)
                  {
                    bzero(v42, v44);
                  }

                  free(v42);
                }
              }

              *v38 = 0;
              v38[1] = 0;
              v38[2] = 0;
            }
          }
        }

        templates = v2->templates;
        v46 = (templates - 1);
        if (templates - 1 < 0)
        {
LABEL_82:
          if ((v26 & 1) == 0)
          {
            v25(3, pval, v2, 0);
          }

          goto LABEL_84;
        }

        while (1)
        {
          v51 = v2->utype + 32 * v46;
          if ((*(v51 + 1) & 3) == 0)
          {
            goto LABEL_102;
          }

          v52 = *(v51 + 24);
          v53 = *(*pval + v52[1]);
          if (v53)
          {
            v54 = OBJ_obj2nid(v53);
            v55 = v52[4];
            if (v55 >= 1)
            {
              v51 = v52[3] + 8;
              while (*(v51 - 8) != v54)
              {
                v51 += 40;
                if (!--v55)
                {
                  goto LABEL_99;
                }
              }

LABEL_102:
              v56 = *pval;
              v57 = *(v51 + 8);
              if ((*v51 & 6) != 0)
              {
                v58 = *(v56 + v57);
                if (v58)
                {
                  v59 = *v58;
                  if (*v58)
                  {
                    v60 = 0;
                    do
                    {
                      if (v59 > v60)
                      {
                        v61 = *(v58[1] + 8 * v60);
                      }

                      else
                      {
                        v61 = 0;
                      }

                      pvala = v61;
                      ASN1_item_ex_free(&pvala, *(v51 + 24));
                      ++v60;
                      v59 = *v58;
                    }

                    while (v60 < *v58);
                  }

                  v62 = v58[1];
                  if (v62)
                  {
                    v64 = *(v62 - 8);
                    v63 = (v62 - 8);
                    v65 = v64 + 8;
                    if (v64 != -8)
                    {
                      bzero(v63, v65);
                    }

                    free(v63);
                  }

                  v67 = *(v58 - 1);
                  v66 = v58 - 1;
                  v68 = v67 + 8;
                  if (v67 != -8)
                  {
                    bzero(v66, v68);
                  }

                  free(v66);
                }

                *(v56 + v57) = 0;
              }

              else
              {
                ASN1_item_ex_free((v56 + v57), *(v51 + 24));
              }

              goto LABEL_92;
            }

LABEL_99:
            v51 = v52[5];
            if (v51)
            {
              goto LABEL_102;
            }
          }

          else
          {
            v51 = v52[6];
            if (v51)
            {
              goto LABEL_102;
            }
          }

LABEL_92:
          if (v46-- <= 0)
          {
            goto LABEL_82;
          }
        }
      }
    }

    else
    {
      v25 = 0;
    }

    v26 = 1;
    goto LABEL_66;
  }

  while (1)
  {
    utype = v2->utype;
    if (!utype)
    {
      v18 = *(&v2->itype + 1);
      if (v18 > 4)
      {
        if (v18 == 5)
        {
          goto LABEL_89;
        }

        if (v18 == 6)
        {
          ASN1_OBJECT_free(*pval);
          goto LABEL_89;
        }

        goto LABEL_71;
      }

      if (v18 != -4)
      {
        if (v18 == 1)
        {
          *pval = v2->funcs;
          return;
        }

LABEL_71:
        ASN1_STRING_free(*pval);
        goto LABEL_89;
      }

      v40 = *pval;
      if (!*pval)
      {
        goto LABEL_89;
      }

      asn1_type_cleanup(v40);
LABEL_84:
      v19 = *pval;
      if (*pval)
      {
        goto LABEL_85;
      }

      goto LABEL_89;
    }

    if ((*utype & 6) != 0)
    {
      break;
    }

    v2 = *(utype + 24);
    itype = v2->itype;
    if (v2->itype)
    {
      goto LABEL_6;
    }
  }

  v19 = *pval;
  if (!*pval)
  {
    goto LABEL_89;
  }

  v20 = *v19;
  if (*v19)
  {
    v21 = 0;
    do
    {
      if (v20 > v21)
      {
        v22 = *(*(v19 + 1) + 8 * v21);
      }

      else
      {
        v22 = 0;
      }

      pvala = v22;
      ASN1_item_ex_free(&pvala, *(utype + 24));
      ++v21;
      v20 = *v19;
    }

    while (v21 < *v19);
  }

  v29 = *(v19 + 1);
  if (v29)
  {
    v31 = *(v29 - 8);
    v30 = (v29 - 8);
    v32 = v31 + 8;
    if (v31 != -8)
    {
      bzero(v30, v32);
    }

    free(v30);
  }

LABEL_85:
  v48 = *(v19 - 1);
  v47 = v19 - 8;
  v49 = v48 + 8;
  if (v48 != -8)
  {
    bzero(v47, v49);
  }

  v17 = v47;
LABEL_88:
  free(v17);
LABEL_89:
  *pval = 0;
}

void ASN1_template_free(ASN1_VALUE **pval, const ASN1_TEMPLATE *tt)
{
  if ((tt->flags & 6) != 0)
  {
    v4 = *pval;
    if (*pval)
    {
      v5 = *v4;
      if (*v4)
      {
        v6 = 0;
        do
        {
          if (v5 > v6)
          {
            v7 = *(*(v4 + 1) + 8 * v6);
          }

          else
          {
            v7 = 0;
          }

          pvala = v7;
          ASN1_item_ex_free(&pvala, tt->field_name);
          ++v6;
          v5 = *v4;
        }

        while (v6 < *v4);
      }

      v8 = *(v4 + 1);
      if (v8)
      {
        v10 = *(v8 - 8);
        v9 = (v8 - 8);
        v11 = v10 + 8;
        if (v10 != -8)
        {
          bzero(v9, v11);
        }

        free(v9);
      }

      v13 = *(v4 - 1);
      v12 = v4 - 8;
      v14 = v13 + 8;
      if (v13 != -8)
      {
        bzero(v12, v14);
      }

      free(v12);
    }

    *pval = 0;
  }

  else
  {
    field_name = tt->field_name;

    ASN1_item_ex_free(pval, field_name);
  }
}

int ASN1_item_ex_new(ASN1_VALUE **pval, const ASN1_ITEM *it)
{
  itype = it->itype;
  v5 = 1;
  if (itype <= 1)
  {
    if (it->itype)
    {
      if (itype != 1)
      {
        return v5;
      }

      tcount = it->tcount;
      if (tcount)
      {
        v9 = *(tcount + 16);
        if (v9)
        {
          v10 = v9(0, pval, it, 0);
          if (!v10)
          {
            goto LABEL_98;
          }

          v11 = 0;
          if (v10 == 2)
          {
            return 1;
          }

          funcs = it->funcs;
          if (funcs > 0xFFFFFFFFFFFFFFF7)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v11 = 1;
          funcs = it->funcs;
          if (funcs > 0xFFFFFFFFFFFFFFF7)
          {
            goto LABEL_60;
          }
        }
      }

      else
      {
        v9 = 0;
        v11 = 1;
        funcs = it->funcs;
        if (funcs > 0xFFFFFFFFFFFFFFF7)
        {
          goto LABEL_60;
        }
      }

      v28 = malloc_type_malloc(funcs + 8, 0xB4E622C9uLL);
      if (!v28)
      {
        goto LABEL_60;
      }

      *v28 = funcs;
      v29 = (v28 + 1);
      if (funcs)
      {
        bzero(v28 + 1, funcs);
      }

      *pval = v29;
      v30 = it->tcount;
      if (it->itype == 1)
      {
        if (v30)
        {
          if (*(v30 + 8))
          {
            *(v29 + *(v30 + 12)) = 1;
          }

          goto LABEL_72;
        }
      }

      else if (v30)
      {
LABEL_72:
        if ((*(v30 + 8) & 2) != 0)
        {
          v32 = (v29 + *(v30 + 24));
          *v32 = 0;
          v32[1] = 0;
          v32[2] = 0;
        }
      }

      if (it->templates < 1)
      {
LABEL_95:
        if (v11)
        {
          return 1;
        }

LABEL_96:
        v5 = 1;
        if (v9(1, pval, it, 0))
        {
          return v5;
        }

        ASN1_item_ex_free(pval, it);
        goto LABEL_98;
      }

      v33 = 0;
      utype = it->utype;
      while (1)
      {
        v35 = *pval;
        v36 = *(utype + 8);
        v37 = *utype;
        if (*utype)
        {
          break;
        }

        if ((v37 & 0x300) != 0)
        {
          goto LABEL_77;
        }

        if ((v37 & 6) != 0)
        {
          v41 = OPENSSL_sk_new_null();
          if (!v41)
          {
            goto LABEL_94;
          }

          *(v35 + v36) = v41;
        }

        else if (!ASN1_item_ex_new((v35 + v36), *(utype + 24)))
        {
LABEL_94:
          ASN1_item_ex_free(pval, it);
          return 0;
        }

LABEL_78:
        utype += 32;
        if (it->templates <= ++v33)
        {
          goto LABEL_95;
        }
      }

      v38 = utype;
      while ((*v38 & 0x306) == 0)
      {
        v39 = *(v38 + 24);
        v40 = *v39;
        if (*v39)
        {
          if ((v40 - 1) < 2 || v40 == 5 || v40 == 4)
          {
            break;
          }

          goto LABEL_78;
        }

        v38 = *(v39 + 1);
        if (!v38)
        {
          if (*(v39 + 1) != 1)
          {
            break;
          }

          *(v35 + v36) = *(v39 + 4);
          goto LABEL_78;
        }
      }

LABEL_77:
      *(v35 + v36) = 0;
      goto LABEL_78;
    }

    v19 = it->utype;
    if (v19)
    {
      v20 = *v19;
      if (*v19)
      {
        while ((*v19 & 0x306) == 0)
        {
          v24 = *(v19 + 24);
          v25 = *v24;
          if (*v24)
          {
            if ((v25 - 1) >= 2 && v25 != 5 && v25 != 4)
            {
              return 1;
            }

            break;
          }

          v19 = *(v24 + 1);
          if (!v19)
          {
            if (*(v24 + 1) != 1)
            {
              break;
            }

            v23 = *(v24 + 4);
            goto LABEL_45;
          }
        }
      }

      else if ((v20 & 0x300) == 0)
      {
        if ((v20 & 6) != 0)
        {
          v21 = OPENSSL_sk_new_null();
          if (!v21)
          {
            return 0;
          }

          goto LABEL_103;
        }

        return ASN1_item_ex_new(pval, *(v19 + 24)) != 0;
      }

      *pval = 0;
      return 1;
    }

    v22 = *(&it->itype + 1);
    if (v22 > 4)
    {
      if (v22 == 5)
      {
        v5 = 1;
        *pval = 1;
        return v5;
      }

      if (v22 == 6)
      {
        v18 = OBJ_get_undef::kUndef;
        goto LABEL_25;
      }
    }

    else
    {
      if (v22 == -4)
      {
        v21 = OPENSSL_malloc(0x10uLL);
        if (!v21)
        {
          return 0;
        }

        *(v21 + 1) = 0;
        *v21 = -1;
LABEL_103:
        *pval = v21;
        return 1;
      }

      if (v22 == 1)
      {
        v23 = it->funcs;
LABEL_45:
        *pval = v23;
        return 1;
      }
    }

    v42 = ASN1_STRING_type_new(v22);
    *pval = v42;
    return v42 != 0;
  }

  switch(itype)
  {
    case 2u:
      v13 = it->tcount;
      if (v13)
      {
        v9 = *(v13 + 16);
        if (v9)
        {
          v14 = v9(0, pval, it, 0);
          if (v14)
          {
            v15 = 0;
            if (v14 == 2)
            {
              return 1;
            }

            v16 = it->funcs;
            if (v16 > 0xFFFFFFFFFFFFFFF7)
            {
              goto LABEL_60;
            }

            goto LABEL_47;
          }

LABEL_98:
          ERR_put_error(12, 0, 101, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_new.cc", 139);
          return 0;
        }

        v15 = 1;
        v16 = it->funcs;
        if (v16 > 0xFFFFFFFFFFFFFFF7)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v9 = 0;
        v15 = 1;
        v16 = it->funcs;
        if (v16 > 0xFFFFFFFFFFFFFFF7)
        {
          goto LABEL_60;
        }
      }

LABEL_47:
      v26 = malloc_type_malloc(v16 + 8, 0xB4E622C9uLL);
      if (!v26)
      {
        goto LABEL_60;
      }

      *v26 = v16;
      v27 = (v26 + 1);
      if (v16)
      {
        bzero(v26 + 1, v16);
      }

      *pval = v27;
      *(v27 + *(&it->itype + 1)) = -1;
      if (v15)
      {
        return 1;
      }

      goto LABEL_96;
    case 5u:
      v17 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
      if (v17)
      {
        *v17 = 24;
        v17[1] = 0xFFFFFFFF00000000;
        v18 = (v17 + 1);
        v17[2] = 0;
        v17[3] = 0;
LABEL_25:
        *pval = v18;
        return 1;
      }

LABEL_60:
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      *pval = 0;
      return 0;
    case 4u:
      v6 = it->tcount;
      if (v6)
      {
        v7 = *v6;
        if (v7)
        {
          if (!v7(pval, it))
          {
            return 0;
          }
        }
      }

      return 1;
  }

  return v5;
}

ASN1_BIT_STRING *ASN1_BIT_STRING_new(void)
{
  v0 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (v0)
  {
    *v0 = 24;
    *(v0 + 1) = 0x300000000;
    *(v0 + 2) = 0;
    *(v0 + 3) = 0;
    return (v0 + 8);
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }
}

int asn1_enc_save(ASN1_VALUE **pval, const unsigned __int8 *in, int inlen, const ASN1_ITEM *it)
{
  if (!pval)
  {
    return 1;
  }

  if (!*pval)
  {
    return 1;
  }

  tcount = it->tcount;
  if (!tcount)
  {
    return 1;
  }

  if ((*(tcount + 8) & 2) == 0)
  {
    return 1;
  }

  v6 = v4;
  v7 = (*pval + *(tcount + 24));
  v8 = v7[2];
  if (v8)
  {
    v9 = *&inlen;
    v10 = in;
    CRYPTO_BUFFER_free(v8);
    in = v10;
    *&inlen = v9;
  }

  else
  {
    v12 = *v7;
    if (*v7)
    {
      v13 = in;
      v14 = *&inlen;
      v16 = *(v12 - 1);
      v15 = (v12 - 8);
      v17 = v16 + 8;
      if (v16 != -8)
      {
        bzero(v15, v17);
      }

      free(v15);
      *&inlen = v14;
      in = v13;
    }
  }

  *v7 = 0;
  v7[1] = 0;
  v7[2] = 0;
  if (v6)
  {
    v18 = atomic_load((v6 + 24));
    if (v18 != -1)
    {
      for (i = v18; i != -1; v18 = i)
      {
        atomic_compare_exchange_strong((v6 + 24), &i, v18 + 1);
        if (i == v18)
        {
          break;
        }
      }
    }

    v7[2] = v6;
    goto LABEL_18;
  }

  if (*&inlen)
  {
    if (*&inlen <= 0xFFFFFFFFFFFFFFF7)
    {
      v20 = in;
      v21 = *&inlen;
      v22 = malloc_type_malloc(*&inlen + 8, 0xB4E622C9uLL);
      if (v22)
      {
        v23 = v20;
        *v22 = v21;
        v24 = (v22 + 1);
        memcpy(v22 + 1, v23, v21);
        *&inlen = v21;
        in = v24;
LABEL_18:
        *v7 = in;
        v7[1] = *&inlen;
        return 1;
      }
    }

    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  }

  result = 0;
  *v7 = 0;
  return result;
}

const ASN1_TEMPLATE *__cdecl asn1_do_adb(ASN1_VALUE **pval, const ASN1_TEMPLATE *tt, int nullerr)
{
  if ((tt->flags & 0x300) == 0)
  {
    return tt;
  }

  field_name = tt->field_name;
  v5 = *(*pval + *(field_name + 1));
  if (!v5)
  {
    tt = *(field_name + 6);
    if (tt)
    {
      return tt;
    }

LABEL_10:
    if (nullerr)
    {
      ERR_put_error(12, 0, 186, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/tasn_utl.cc", 226);
    }

    return 0;
  }

  v6 = OBJ_obj2nid(v5);
  v7 = *(field_name + 4);
  if (v7 < 1)
  {
LABEL_7:
    tt = *(field_name + 5);
    if (tt)
    {
      return tt;
    }

    goto LABEL_10;
  }

  tt = (*(field_name + 3) + 8);
  while (LODWORD(tt[-1].item) != v6)
  {
    ++tt;
    if (!--v7)
    {
      goto LABEL_7;
    }
  }

  return tt;
}

void *CRYPTO_get_thread_local(int a1)
{
  if (pthread_once(&_MergedGlobals_0, thread_local_init))
  {
    abort();
  }

  if (!_MergedGlobals_1)
  {
    return 0;
  }

  result = pthread_getspecific(qword_28100BEE8);
  if (result)
  {
    return result[a1];
  }

  return result;
}

uint64_t thread_local_init(void)
{
  result = pthread_key_create(&qword_28100BEE8, thread_local_destructor);
  _MergedGlobals_1 = result == 0;
  return result;
}

uint64_t CRYPTO_set_thread_local(unsigned int a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (pthread_once(&_MergedGlobals_0, thread_local_init))
  {
    abort();
  }

  if (!_MergedGlobals_1[0])
  {
    goto LABEL_9;
  }

  v6 = pthread_getspecific(qword_28100BEE8);
  if (!v6)
  {
    v9 = malloc_type_malloc(0x28uLL, 0x80040B8603338uLL);
    if (!v9)
    {
      goto LABEL_9;
    }

    v6 = v9;
    *(v9 + 4) = 0;
    *v9 = 0u;
    *(v9 + 1) = 0u;
    if (pthread_setspecific(qword_28100BEE8, v9))
    {
      free(v6);
      goto LABEL_9;
    }
  }

  if (!pthread_mutex_lock(&stru_28100B5D8))
  {
    v7 = 2 * a1;
    *&_MergedGlobals_1[v7 + 4] = a3;
    pthread_mutex_unlock(&stru_28100B5D8);
    *&v6[v7 * 4] = a2;
    return 1;
  }

LABEL_9:
  a3(a2);
  return 0;
}

void thread_local_destructor(void *a1)
{
  if (a1 && !pthread_mutex_lock(&stru_28100B5D8))
  {
    v3 = qword_28100BEF0;
    v2 = *algn_28100BEF8;
    v5 = qword_28100BF00;
    v4 = unk_28100BF08;
    v6 = off_28100BF10;
    pthread_mutex_unlock(&stru_28100B5D8);
    if (v3)
    {
      v3(*a1);
    }

    if (v2)
    {
      v2(a1[1]);
    }

    if (v5)
    {
      v5(a1[2]);
    }

    if (v4)
    {
      v4(a1[3]);
    }

    if (v6)
    {
      v6(a1[4]);
    }

    free(a1);
  }
}

uint64_t bssl::tls13_get_cert_verify_signature_input(const EVP_MD_CTX *a1, uint64_t *a2, unsigned int a3)
{
  __dst[8] = *MEMORY[0x277D85DE8];
  memset(v19, 0, sizeof(v19));
  v6 = malloc_type_malloc(0xEAuLL, 0xB4E622C9uLL);
  if (v6)
  {
    *v6 = 226;
    BYTE8(v19[0]) = 0;
    *&v19[0] = 0;
    *&v19[1] = v6 + 1;
    *(&v19[1] + 8) = xmmword_273BB98B0;
    BYTE8(v19[2]) = 1;
    v7 = 64;
    while (1)
    {
      __dst[0] = 0;
      result = CBB_add_space(v19, __dst, 1);
      if (!result)
      {
        break;
      }

      *__dst[0] = 32;
      if (!--v7)
      {
        if (a3 > 2)
        {
          goto LABEL_11;
        }

        v9 = qword_273BB9960[a3];
        v10 = *(&ASN1_FBOOLEAN_it.sname + a3);
        __dst[0] = 0;
        result = CBB_add_space(v19, __dst, v9);
        if (!result)
        {
          break;
        }

        memcpy(__dst[0], v10, v9);
        memset(&out, 0, sizeof(out));
        v11 = EVP_MD_CTX_copy_ex(&out, a1 + 13);
        if (v11)
        {
          (out.digest->update)(&out, __dst);
          pkey_type = out.digest->pkey_type;
          final_high = HIDWORD(out.digest->final);
          if (final_high)
          {
            bzero(out.engine, final_high);
          }
        }

        else
        {
          pkey_type = 0;
        }

        if (out.engine)
        {
          v18 = out.engine - 8;
          v17 = *(out.engine - 1);
          if (v17 != -8)
          {
            bzero(v18, v17 + 8);
          }

          free(v18);
        }

        if (out.md_data)
        {
          (*out.md_data)(out.flags);
        }

        if (v11)
        {
          out.digest = 0;
          result = CBB_add_space(v19, &out, pkey_type);
          if (result)
          {
            if (pkey_type)
            {
              memcpy(out.digest, __dst, pkey_type);
            }

            result = bssl::CBBFinishArray(v19, a2);
          }

          break;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
LABEL_11:
    result = 0;
  }

  if (!BYTE8(v19[0]) && (BYTE8(v19[2]) & 1) != 0 && *&v19[1])
  {
    v14 = result;
    v16 = (*&v19[1] - 8);
    v15 = *(*&v19[1] - 8);
    if (v15 != -8)
    {
      bzero(v16, v15 + 8);
    }

    free(v16);
    return v14;
  }

  return result;
}

uint64_t bssl::tls13_process_certificate(bssl **a1, uint64_t a2, char a3)
{
  v3 = a1;
  v164[3] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (*(a2 + 1) == 25)
  {
    if (v6 < 2 || v6 - 2 < 3 || v6 - 5 < 3 || v6 - 8 != ((v5[5] << 16) | (v5[6] << 8) | v5[7]))
    {
      bssl::ssl_send_alert(v4, 2, 50);
      ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_both.cc", 118);
      return 0;
    }

    v6 = (v5[2] << 16) | (v5[3] << 8) | v5[4];
    if (v6 > *(v4 + 34))
    {
      bssl::ssl_send_alert(v4, 2, 47);
      ERR_put_error(16, 0, 293, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_both.cc", 124);
      ERR_add_error_dataf("requested=%u", v7, v8, v9, v10, v11, v12, v13, v6);
      return 0;
    }

    v24 = __rev16(*v5);
    v25 = *(v4 + 13);
    v26 = *(v25 + 672);
    if (!v26)
    {
      goto LABEL_124;
    }

    v27 = (*(v25 + 664) + 16);
    v28 = 24 * v26;
    while (*v27 != v24)
    {
      v27 += 12;
      v28 -= 24;
      if (!v28)
      {
        goto LABEL_124;
      }
    }

    v85 = *(v27 - 1);
    if (!v85)
    {
LABEL_124:
      bssl::ssl_send_alert(v4, 2, 47);
      ERR_put_error(16, 0, 294, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_both.cc", 140);
      ERR_add_error_dataf("alg=%d", v89, v90, v91, v92, v93, v94, v95, v24);
      return 0;
    }

    v86 = v3;
    v87 = a3;
    *&v160 = 0;
    v88 = v4;
    if (!v85())
    {
      bssl::ssl_send_alert(v88, 2, 50);
      ERR_put_error(16, 0, 292, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_both.cc", 149);
      ERR_add_error_dataf("alg=%d", v116, v117, v118, v119, v120, v121, v122, v24);
      return 0;
    }

    if (*(v160 + 16) != v6)
    {
      bssl::ssl_send_alert(v88, 2, 50);
      ERR_put_error(16, 0, 292, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_both.cc", 157);
      ERR_add_error_dataf("alg=%d got=%u expected=%u", v123, v124, v125, v126, v127, v128, v129, v24);
      return 0;
    }

    v5 = *(v160 + 8);
    v4 = v88;
    a3 = v87;
    v3 = v86;
    if (!v6)
    {
LABEL_122:
      bssl::ssl_send_alert(v4, 2, 50);
      ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_both.cc", 177);
      return 0;
    }
  }

  else if (!v6)
  {
    goto LABEL_122;
  }

  v14 = *v5;
  v15 = v6 - 1 - v14;
  if (v6 - 1 < v14)
  {
    goto LABEL_122;
  }

  v16 = !*v5 && v15 >= 3;
  if (!v16)
  {
    goto LABEL_122;
  }

  v17 = &v5[v14];
  v18 = v15 - 3;
  if (v15 - 3 != ((v5[v14 + 1] << 16) | (v5[v14 + 2] << 8) | v5[v14 + 3]))
  {
    goto LABEL_122;
  }

  v149 = v3;
  v150 = v4;
  v148 = a3;
  v19 = OPENSSL_sk_new_null();
  if (!v19)
  {
    bssl::ssl_send_alert(v150, 2, 80);
    return 0;
  }

  v20 = v19;
  v21 = v150;
  if (*(v150 + 164))
  {
    v22 = v149;
    v147 = (*(v149[1] + 269) >> 5) & 1;
  }

  else
  {
    v147 = 0;
    v22 = v149;
  }

  v29 = 0;
  if (!v18)
  {
LABEL_106:
    if (!*v20)
    {
      OPENSSL_sk_pop_free_ex(v20, bssl::internal::DeleterImpl<stack_st_CRYPTO_BUFFER,void>::Free(stack_st_CRYPTO_BUFFER*)::{lambda(void (*)(void *),void *)#1}::__invoke, 0);
      v22 = v149;
      v21 = v150;
      v20 = 0;
    }

    v81 = v22[193];
    v22[193] = v29;
    if (v81)
    {
      v82 = atomic_load(v81);
      if (v82 != -1)
      {
        while (1)
        {
          if (!v82)
          {
            goto LABEL_193;
          }

          v83 = v82;
          atomic_compare_exchange_strong(v81, &v83, v82 - 1);
          if (v83 == v82)
          {
            break;
          }

          v82 = v83;
          if (v83 == -1)
          {
            goto LABEL_133;
          }
        }

        if (v82 == 1)
        {
          v96 = *(v81 + 2);
          if (v96)
          {
            v97 = *(v96 + 160);
            if (v97)
            {
              v97(v81);
              *(v81 + 1) = 0;
              *(v81 + 1) = 0;
            }
          }

          v99 = *(v81 - 1);
          v98 = v81 - 8;
          v100 = v99 + 8;
          if (v99 != -8)
          {
            bzero(v98, v100);
          }

          free(v98);
          v22 = v149;
          v21 = v150;
        }
      }
    }

LABEL_133:
    v101 = v22[194];
    v102 = *(v101 + 17);
    *(v101 + 17) = v20;
    if (v102)
    {
      v103 = *v102;
      if (*v102)
      {
        v104 = 0;
        do
        {
          v105 = *(v102[1] + 8 * v104);
          if (v105)
          {
            CRYPTO_BUFFER_free(v105);
            v103 = *v102;
          }

          ++v104;
        }

        while (v104 < v103);
      }

      v106 = v102[1];
      if (v106)
      {
        v108 = *(v106 - 8);
        v107 = (v106 - 8);
        v109 = v108 + 8;
        if (v108 != -8)
        {
          bzero(v107, v109);
        }

        free(v107);
      }

      v111 = *(v102 - 1);
      v110 = v102 - 1;
      v112 = v111 + 8;
      if (v111 != -8)
      {
        bzero(v110, v112);
      }

      free(v110);
      v21 = v150;
      v101 = v149[194];
    }

    if (((*(*(*(v21 + 13) + 16) + 48))(v101) & 1) == 0)
    {
      ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_both.cc", 310);
      bssl::ssl_send_alert(v150, 2, 50);
      return 0;
    }

    v113 = v149[194];
    v114 = *(v113 + 17);
    if (v114 && *v114)
    {
      if (v147)
      {
        v115 = 2;
      }

      else
      {
        v115 = 0;
      }

      *(v113 + 408) = *(v113 + 408) & 0xFD | v115;
      return 1;
    }

    else
    {
      if ((v148 & 1) == 0)
      {
        ERR_put_error(16, 0, 192, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_both.cc", 317);
        bssl::ssl_send_alert(v150, 2, 116);
        return 0;
      }

      *(v113 + 22) = 0;
      return 1;
    }
  }

  v30 = v17 + 4;
  while (1)
  {
    v31 = v18 - 3;
    if (v18 < 3 || (v32 = (*v30 << 16) | (v30[1] << 8) | v30[2], v16 = v31 >= v32, v33 = v31 - v32, !v16) || (v34 = (v30 + 3), *&v163 = v34, *(&v163 + 1) = v32, v16 = v33 >= 2, v35 = v33 - 2, !v16) || (v36 = &v34[v32], v37 = __rev16(*&v34[v32]), v18 = v35 - v37, v35 < v37) || (v38 = v36 + 2, v162[0] = (v36 + 2), v162[1] = v37, !v32))
    {
      bssl::ssl_send_alert(v21, 2, 50);
      ERR_put_error(16, 0, 127, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_both.cc", 196);
      goto LABEL_163;
    }

    v39 = *v20;
    if (!*v20)
    {
      break;
    }

LABEL_59:
    v49 = crypto_buffer_new(v34, v32, 0, *(*(v21 + 13) + 736));
    if (!v49)
    {
      goto LABEL_161;
    }

    v50 = v49;
    v51 = *v20;
    if (*v20 >= 0x7FFFFFFFuLL)
    {
      ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
LABEL_160:
      CRYPTO_BUFFER_free(v50);
LABEL_161:
      v21 = v150;
      v66 = 80;
      goto LABEL_162;
    }

    v52 = *(v20 + 3);
    if (v52 <= v51 + 1)
    {
      v57 = OPENSSL_realloc(*(v20 + 1), 16 * v52);
      v54 = v149;
      v55 = v150;
      if (!v57)
      {
        goto LABEL_160;
      }

      *(v20 + 1) = v57;
      *(v20 + 3) = 2 * v52;
      v53 = *v20;
      v58 = *v20 - v51;
      if (*v20 <= v51)
      {
        v56 = &v57[v53];
      }

      else
      {
        if (8 * v58)
        {
          memmove(&v57[v51 + 1], &v57[v51], 8 * v58);
          v54 = v149;
          v55 = v150;
          v53 = *v20;
          v57 = *(v20 + 1);
        }

        v56 = &v57[v51];
      }
    }

    else
    {
      v53 = *v20;
      v54 = v149;
      v55 = v150;
      v56 = (*(v20 + 1) + 8 * v51);
    }

    *v56 = v50;
    *(v20 + 4) = 0;
    *v20 = v53 + 1;
    if (v53 == -1)
    {
      goto LABEL_160;
    }

    v59 = *(v55 + 164);
    if (v59)
    {
      LOBYTE(v60) = 0;
      LOBYTE(v61) = 0;
      *(&v160 + 1) = 0;
      v161 = 0;
    }

    else
    {
      v62 = *(v54[1] + 269);
      v60 = (v62 >> 2) & 1;
      *(&v160 + 1) = 0;
      v161 = 0;
      v61 = (v62 >> 1) & 1;
    }

    v63 = 0;
    LOWORD(v160) = 5;
    WORD1(v160) = v60;
    LOWORD(v157) = 18;
    WORD1(v157) = v61;
    v158 = 0;
    v159 = 0;
    if (!v39 && (v59 & 1) == 0)
    {
      v63 = *(v54[1] + 120);
    }

    v152 = -13772;
    v153 = v63 & 1;
    v154 = 0;
    v155 = 0;
    v156 = 0;
    v151 = 50;
    v164[0] = &v160;
    v164[1] = &v157;
    v164[2] = &v152;
    if ((bssl::ssl_parse_extensions(v162, &v151, v164, 3, 0) & 1) == 0)
    {
      v66 = v151;
      v21 = v150;
      goto LABEL_162;
    }

    v22 = v149;
    v21 = v150;
    if (BYTE3(v160) == 1)
    {
      v64 = v161;
      if (!v161)
      {
        goto LABEL_116;
      }

      v65 = (*(&v160 + 1))++;
      --v161;
      v66 = 50;
      v67 = v64 - 4;
      if (v64 < 4)
      {
        goto LABEL_162;
      }

      if (*v65 != 1)
      {
        goto LABEL_162;
      }

      v68 = v65 + 4;
      *(&v160 + 1) = v65 + 4;
      v161 = v67;
      v69 = (v65[1] << 16) | (v65[2] << 8) | v65[3];
      if (v67 < v69)
      {
        goto LABEL_162;
      }

      *(&v160 + 1) = &v68[v69];
      v161 = v67 - v69;
      if (!v69 || v67 != v69)
      {
        goto LABEL_162;
      }

      if (*v20 == 1)
      {
        v70 = v149[194];
        v71 = crypto_buffer_new(v68, v67, 0, *(*(v150 + 13) + 736));
        v72 = *(v70 + 32);
        *(v70 + 32) = v71;
        if (v72)
        {
          CRYPTO_BUFFER_free(v72);
        }

        v22 = v149;
        v21 = v150;
        if (!*(v149[194] + 32))
        {
LABEL_192:
          v66 = 80;
          goto LABEL_162;
        }
      }
    }

    if (BYTE3(v157) == 1)
    {
      v73 = v159 - 2;
      if (v159 >= 2)
      {
        v74 = __rev16(*v158);
        if (v73 >= v74 && v73 == v74 && v74)
        {
          v75 = v158 + 1;
          while (1)
          {
            v16 = v73 >= 2;
            v76 = v73 - 2;
            if (!v16)
            {
              break;
            }

            v77 = __rev16(*v75);
            if (v77 - 1 >= v76)
            {
              break;
            }

            v75 = (v75 + v77 + 2);
            v73 = v76 - v77;
            if (!v73)
            {
              if (*v20 == 1)
              {
                v78 = v22[194];
                v79 = crypto_buffer_new(v158, v159, 0, *(*(v21 + 13) + 736));
                v80 = *(v78 + 31);
                *(v78 + 31) = v79;
                if (v80)
                {
                  CRYPTO_BUFFER_free(v80);
                }

                v22 = v149;
                v21 = v150;
                if (!*(v149[194] + 31))
                {
                  goto LABEL_192;
                }
              }

              goto LABEL_102;
            }
          }
        }
      }

      v84 = 275;
      goto LABEL_115;
    }

LABEL_102:
    if (v154 == 1)
    {
      if (v156)
      {
        v84 = 292;
LABEL_115:
        ERR_put_error(16, 0, 149, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_both.cc", v84);
        v21 = v150;
LABEL_116:
        v66 = 50;
LABEL_162:
        bssl::ssl_send_alert(v21, 2, v66);
        goto LABEL_163;
      }

      *(v22 + 404) |= 0x8000000u;
    }

    v30 = v37 + v38;
    if (!v18)
    {
      goto LABEL_106;
    }
  }

  v160 = v163;
  if (bssl::ssl_cert_skip_to_spki(&v160, &v157))
  {
    v40 = EVP_parse_public_key(&v157);
  }

  else
  {
    ERR_put_error(16, 0, 272, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_cert.cc", 265);
    v40 = 0;
  }

  v41 = v150;
  if (v29)
  {
    v42 = atomic_load(v29);
    if (v42 != -1)
    {
      while (1)
      {
        if (!v42)
        {
LABEL_193:
          abort();
        }

        v43 = v42;
        atomic_compare_exchange_strong(v29, &v43, v42 - 1);
        if (v43 == v42)
        {
          break;
        }

        v42 = v43;
        if (v43 == -1)
        {
          goto LABEL_54;
        }
      }

      if (v42 == 1)
      {
        v44 = *(v29 + 2);
        if (v44)
        {
          v45 = *(v44 + 160);
          if (v45)
          {
            v45(v29);
            *(v29 + 1) = 0;
            v29[1] = 0;
          }
        }

        v47 = *(v29 - 1);
        v46 = v29 - 2;
        v48 = v47 + 8;
        if (v47 != -8)
        {
          bzero(v46, v48);
        }

        free(v46);
        v41 = v150;
      }
    }
  }

LABEL_54:
  if (!v40)
  {
    bssl::ssl_send_alert(v41, 2, 50);
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_both.cc", 205);
    v29 = 0;
    goto LABEL_163;
  }

  if (bssl::ssl_cert_check_key_usage(&v163, 0))
  {
    v32 = *(&v163 + 1);
    v34 = v163;
    if (v147)
    {
      SHA256(v163, *(&v163 + 1), v149[194] + 264);
      v32 = *(&v163 + 1);
      v34 = v163;
    }

    v29 = v40;
    v21 = v150;
    goto LABEL_59;
  }

  bssl::ssl_send_alert(v150, 2, 47);
  v29 = v40;
LABEL_163:
  if (v29)
  {
    v130 = atomic_load(v29);
    if (v130 != -1)
    {
      while (1)
      {
        if (!v130)
        {
          goto LABEL_193;
        }

        v131 = v130;
        atomic_compare_exchange_strong(v29, &v131, v130 - 1);
        if (v131 == v130)
        {
          break;
        }

        v130 = v131;
        if (v131 == -1)
        {
          goto LABEL_176;
        }
      }

      if (v130 == 1)
      {
        v132 = *(v29 + 2);
        if (v132)
        {
          v133 = *(v132 + 160);
          if (v133)
          {
            v133(v29);
            *(v29 + 1) = 0;
            v29[1] = 0;
          }
        }

        v135 = *(v29 - 1);
        v134 = v29 - 2;
        v136 = v135 + 8;
        if (v135 != -8)
        {
          bzero(v134, v136);
        }

        free(v134);
      }
    }
  }

LABEL_176:
  v137 = *v20;
  if (*v20)
  {
    v138 = 0;
    do
    {
      v139 = *(*(v20 + 1) + 8 * v138);
      if (v139)
      {
        CRYPTO_BUFFER_free(v139);
        v137 = *v20;
      }

      ++v138;
    }

    while (v138 < v137);
  }

  v140 = *(v20 + 1);
  if (v140)
  {
    v142 = *(v140 - 8);
    v141 = (v140 - 8);
    v143 = v142 + 8;
    if (v142 != -8)
    {
      bzero(v141, v143);
    }

    free(v141);
  }

  v145 = *(v20 - 1);
  v144 = v20 - 8;
  v146 = v145 + 8;
  if (v145 != -8)
  {
    bzero(v144, v146);
  }

  free(v144);
  return 0;
}

uint64_t bssl::tls13_process_certificate_verify(const EVP_MD_CTX *a1, uint64_t a2)
{
  engine = a1[48].engine;
  if (!engine)
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_both.cc", 338);
    return 0;
  }

  digest = a1->digest;
  v5 = *(a2 + 16);
  if (v5 < 2 || (v5 & 0xFFFFFFFFFFFFFFFELL) == 2 || (v6 = *(a2 + 8), v7 = v5 - 4, v5 - 4 != __rev16(v6[1])))
  {
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_both.cc", 347);
    v13 = digest;
    v14 = 50;
LABEL_8:
    bssl::ssl_send_alert(v13, 2, v14);
    return 0;
  }

  v8 = (bswap32(*v6) >> 16);
  v9 = a1->engine;
  v10 = *(v9 + 29);
  if (v10)
  {
    v11 = *(v9 + 28);
    v12 = 2 * v10;
  }

  else
  {
    v11 = &bssl::kVerifySignatureAlgorithms;
    v12 = 18;
  }

  v16 = v12;
  v17 = v11;
  while (*v17 != v8)
  {
    ++v17;
    v16 -= 2;
    if (!v16)
    {
      v17 = &v11[v12 / 2];
      break;
    }
  }

  if (v17 - v11 == v12 || (bssl::ssl_pkey_supports_algorithm(a1->digest, engine, v8, 1), (v19 & 1) == 0))
  {
    ERR_put_error(16, 0, 245, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 343);
    v13 = digest;
    v14 = 47;
    goto LABEL_8;
  }

  *(a1[48].flags + 8) = v8;
  v29 = 0;
  v30 = 0;
  cert_verify_signature_input = bssl::tls13_get_cert_verify_signature_input(a1, &v29, *(digest + 164) & 1);
  v21 = v29;
  if ((cert_verify_signature_input & 1) == 0)
  {
    v24 = 80;
    v23 = v30;
LABEL_24:
    bssl::ssl_send_alert(digest, 2, v24);
    result = 0;
    goto LABEL_25;
  }

  v22 = a1[48].engine;
  v23 = v30;
  if (!bssl::ssl_public_key_verify(digest, v6 + 4, v7, v8, v22, v29, v30))
  {
    ERR_put_error(16, 0, 114, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_both.cc", 370);
    v24 = 51;
    goto LABEL_24;
  }

  result = 1;
LABEL_25:
  if (v23 && v23 - 1 >= -v21)
  {
    __break(1u);
  }

  else if (v21)
  {
    v25 = result;
    v27 = *(v21 - 8);
    v26 = (v21 - 8);
    v28 = v27 + 8;
    if (v27 != -8)
    {
      bzero(v26, v28);
    }

    free(v26);
    return v25;
  }

  return result;
}

void bssl::tls13_add_certificate(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  v4 = *this;
  v5 = *(this + 192);
  memset(v58, 0, sizeof(v58));
  if ((*(this + 1618) & 0x20) != 0)
  {
    memset(v58, 0, sizeof(v58));
    v7 = malloc_type_malloc(0x408uLL, 0xB4E622C9uLL);
    if (!v7)
    {
      v10 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v11 = 14;
      v12 = 65;
      v13 = 217;
      goto LABEL_59;
    }

    *v7 = 1024;
    BYTE8(v58[0]) = 0;
    *&v58[0] = 0;
    *&v58[1] = v7 + 1;
    *(&v58[1] + 8) = xmmword_273BB98C0;
    BYTE8(v58[2]) = 1;
    v6 = v58;
    v56[0] = 0;
    if (!CBB_add_space(v58, v56, 1))
    {
LABEL_13:
      v10 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_both.cc";
      v11 = 16;
      v12 = 68;
      v13 = 430;
LABEL_59:
      ERR_put_error(v11, 0, v12, v10, v13);
      goto LABEL_60;
    }
  }

  else
  {
    v6 = v57;
    if (!(*(*v4 + 88))(v4, v58, v57, 11))
    {
      goto LABEL_60;
    }

    v56[0] = 0;
    if (!CBB_add_space(v57, v56, 1))
    {
      goto LABEL_13;
    }
  }

  *v56[0] = 0;
  if (!CBB_add_u24_length_prefixed(v6, v56))
  {
    goto LABEL_13;
  }

  if (!*(this + 192))
  {
    goto LABEL_57;
  }

  v8 = *(v5 + 48);
  if (v8 && *v8)
  {
    v9 = **(v8 + 8);
    if (!CBB_add_u24_length_prefixed(v56, v55))
    {
      goto LABEL_58;
    }
  }

  else
  {
    v9 = 0;
    if (!CBB_add_u24_length_prefixed(v56, v55))
    {
LABEL_58:
      v10 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_both.cc";
      v11 = 16;
      v12 = 68;
      v13 = 445;
      goto LABEL_59;
    }
  }

  v14 = *(v9 + 8);
  v15 = *(v9 + 16);
  __dst[0] = 0;
  if (!CBB_add_space(v55, __dst, v15))
  {
    goto LABEL_58;
  }

  if (v15)
  {
    memcpy(__dst[0], v14, v15);
  }

  if (!CBB_add_u16_length_prefixed(v56, __dst))
  {
    goto LABEL_58;
  }

  v16 = *(this + 404);
  if ((v16 & 4) != 0 && *(v5 + 72))
  {
    if (!CBB_add_u16(__dst, 18))
    {
      goto LABEL_67;
    }

    if (!CBB_add_u16_length_prefixed(__dst, v50))
    {
      goto LABEL_67;
    }

    v17 = *(v5 + 72);
    v18 = *(v17 + 8);
    v19 = *(v17 + 16);
    __s2 = 0;
    if (!CBB_add_space(v50, &__s2, v19))
    {
      goto LABEL_67;
    }

    if (v19)
    {
      memcpy(__s2, v18, v19);
    }

    if (!CBB_flush(__dst))
    {
LABEL_67:
      v10 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_both.cc";
      v11 = 16;
      v12 = 68;
      v13 = 458;
      goto LABEL_59;
    }

    v16 = *(this + 404);
  }

  if ((v16 & 0x80) != 0 && *(v5 + 80))
  {
    if (!CBB_add_u16(__dst, 5))
    {
      goto LABEL_69;
    }

    if (!CBB_add_u16_length_prefixed(__dst, v50))
    {
      goto LABEL_69;
    }

    v59 = 0;
    if (!CBB_add_space(v50, &v59, 1))
    {
      goto LABEL_69;
    }

    *v59 = 1;
    if (!CBB_add_u24_length_prefixed(v50, &__s2))
    {
      goto LABEL_69;
    }

    v20 = *(v5 + 80);
    v21 = *(v20 + 8);
    v22 = *(v20 + 16);
    v59 = 0;
    if (!CBB_add_space(&__s2, &v59, v22))
    {
      goto LABEL_69;
    }

    if (v22)
    {
      memcpy(v59, v21, v22);
    }

    if (!CBB_flush(__dst))
    {
LABEL_69:
      v10 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_both.cc";
      v11 = 16;
      v12 = 68;
      v13 = 473;
      goto LABEL_59;
    }
  }

  if (*(v5 + 4) == 1)
  {
    if (!CBB_add_u16(__dst, 34))
    {
      goto LABEL_68;
    }

    if (!CBB_add_u16_length_prefixed(__dst, v50))
    {
      goto LABEL_68;
    }

    v23 = *(v5 + 56);
    v24 = *(v23 + 8);
    v25 = *(v23 + 16);
    __s2 = 0;
    if (!CBB_add_space(v50, &__s2, v25))
    {
      goto LABEL_68;
    }

    if (v25)
    {
      memcpy(__s2, v24, v25);
    }

    if (!CBB_flush(__dst))
    {
LABEL_68:
      v10 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_both.cc";
      v11 = 16;
      v12 = 68;
      v13 = 485;
      goto LABEL_59;
    }
  }

  if ((*(this + 1619) & 4) == 0 || CBB_add_u16(__dst, 51764) && CBB_add_u16_length_prefixed(__dst, v50) && CBB_flush(__dst))
  {
    v26 = *(v5 + 48);
    if (v26)
    {
      v2 = 1;
      while (1)
      {
        if (v2 >= *v26)
        {
          goto LABEL_56;
        }

        v27 = *(v26[1] + 8 * v2);
        if (!CBB_add_u24_length_prefixed(v56, v50))
        {
          break;
        }

        v28 = *(v27 + 8);
        v29 = *(v27 + 16);
        __s2 = 0;
        if (!CBB_add_space(v50, &__s2, v29))
        {
          break;
        }

        if (v29)
        {
          memcpy(__s2, v28, v29);
        }

        __s2 = 0;
        if (!CBB_add_space(v56, &__s2, 2))
        {
          break;
        }

        *(__s2 + 1) = 0;
        *__s2 = 0;
        ++v2;
        v26 = *(v5 + 48);
        if (!v26)
        {
          goto LABEL_56;
        }
      }

      v10 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_both.cc";
      v11 = 16;
      v12 = 68;
      v13 = 507;
      goto LABEL_59;
    }

LABEL_56:
    if ((*(this + 1618) & 0x20) != 0)
    {
      __s2 = 0;
      v49 = 0;
      if (bssl::CBBFinishArray(v58, &__s2))
      {
        v33 = v4[13];
        v34 = *(v33 + 672);
        if (!v34)
        {
          goto LABEL_98;
        }

        v35 = *(v33 + 664);
        v36 = 24 * v34;
        while (*(v35 + 16) != *(this + 364))
        {
          v35 += 24;
          v36 -= 24;
          if (!v36)
          {
            goto LABEL_98;
          }
        }

        if (*v35)
        {
          if ((*(*v4 + 88))(v4, v58, v57, 25) && CBB_add_u16(v57, *(this + 364)) && (v38 = v49, !(v49 >> 24)) && CBB_add_u24(v57, v49) && CBB_add_u24_length_prefixed(v57, v50))
          {
            v2 = *(this + 201);
            if (v2)
            {
              if ((*(this + 1618) & 0x10) == 0 && *(v2 + 146) == *(this + 364) && *(v2 + 160) == v38 && !memcmp(*(v2 + 152), __s2, v38))
              {
                v46 = *(v2 + 176);
                if (v46)
                {
                  v47 = *(v2 + 168);
                  v59 = 0;
                  if (CBB_add_space(v50, &v59, v46))
                  {
                    memcpy(v59, v47, v46);
                    goto LABEL_96;
                  }

                  v37 = 554;
                  goto LABEL_99;
                }
              }
            }

            v39 = __s2;
            if ((*v35)(v4, v50, __s2, v38))
            {
              if (!v2 || (*(this + 1618) & 0x10) == 0)
              {
                goto LABEL_96;
              }

              *(v2 + 146) = *(this + 364);
              if (bssl::Array<unsigned char>::CopyFrom(v2 + 152, v39, v38))
              {
                v40 = v51;
                if (v50[8])
                {
                  v44 = v52 + v53;
                  v40 = v44 + *v51;
                  v45 = v51[1] - v44;
                  goto LABEL_114;
                }

                goto LABEL_113;
              }

LABEL_100:
              while (1)
              {
                v4 = __s2;
                if (!v49 || v49 - 1 < -__s2)
                {
                  break;
                }

                __break(1u);
LABEL_113:
                v45 = v52;
LABEL_114:
                if (bssl::Array<unsigned char>::CopyFrom(v2 + 168, v40, v45))
                {
LABEL_96:
                  bssl::ssl_add_message_cbb(v4, v58);
                  if ((v41 & 1) == 0)
                  {
                    v37 = 573;
                    goto LABEL_99;
                  }
                }
              }

              if (__s2)
              {
                v43 = __s2 - 8;
                v42 = *(__s2 - 1);
                if (v42 != -8)
                {
                  bzero(v43, v42 + 8);
                }

                free(v43);
              }

              goto LABEL_60;
            }

            v37 = 559;
          }

          else
          {
            v37 = 543;
          }
        }

        else
        {
LABEL_98:
          v37 = 531;
        }
      }

      else
      {
        v37 = 518;
      }

LABEL_99:
      ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_both.cc", v37);
      goto LABEL_100;
    }

LABEL_57:
    bssl::ssl_add_message_cbb(v4, v58);
  }

LABEL_60:
  if (!BYTE8(v58[0]) && (BYTE8(v58[2]) & 1) != 0 && *&v58[1])
  {
    v31 = *(*&v58[1] - 8);
    v30 = (*&v58[1] - 8);
    v32 = v31 + 8;
    if (v31 != -8)
    {
      bzero(v30, v32);
    }

    free(v30);
  }
}

void bssl::tls13_add_certificate_verify(bssl **this, bssl::SSL_HANDSHAKE *a2)
{
  v3 = *this;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  if (!(*(*v3 + 88))(v3, &v30, v29, 15) || (v4 = *(this + 813), v24 = 0, !CBB_add_space(v29, &v24, 2)))
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_both.cc", 588);
    goto LABEL_22;
  }

  v24[1] = v4;
  *v24 = HIBYTE(v4);
  v5 = *(this[192] + 1);
  if (v5 && (v6 = *(v5 + 16)) != 0 && (v7 = *(v6 + 120)) != 0)
  {
    v8 = v7();
    v22 = 0;
    v23 = 0;
    if (!CBB_add_u16_length_prefixed(v29, &v24))
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = 0;
    v22 = 0;
    v23 = 0;
    if (!CBB_add_u16_length_prefixed(v29, &v24))
    {
LABEL_14:
      bssl::ssl_send_alert(v3, 2, 80);
      goto LABEL_22;
    }
  }

  if (!CBB_reserve(&v24, &v23, v8))
  {
    goto LABEL_14;
  }

  v20 = 0;
  v21 = 0;
  if (bssl::tls13_get_cert_verify_signature_input(this, &v20, (*(v3 + 164) & 1) == 0))
  {
    v9 = v20;
    v10 = v21;
    if (!bssl::ssl_private_key_sign(this, v23, &v22, v8, *(this + 813), v20, v21))
    {
      v16 = &v27;
      if (v25)
      {
        v16 = (v26 + 8);
      }

      v17 = *v16 + v22;
      v18 = __CFADD__(*v16, v22);
      if (!v24 && !v18)
      {
        v19 = v25 ? (v26 + 16) : &v28;
        if (v17 <= *v19)
        {
          *v16 = v17;
          bssl::ssl_add_message_cbb(v3, &v30);
        }
      }
    }
  }

  else
  {
    bssl::ssl_send_alert(v3, 2, 80);
    v9 = v20;
    v10 = v21;
  }

  if (v10 && v10 - 1 >= -v9)
  {
    __break(1u);
    return;
  }

  if (v9)
  {
    v12 = *(v9 - 8);
    v11 = (v9 - 8);
    v13 = v12 + 8;
    if (v12 != -8)
    {
      bzero(v11, v13);
    }

    free(v11);
  }

LABEL_22:
  if (!BYTE8(v30) && (BYTE8(v32) & 1) != 0 && v31)
  {
    v15 = (v31 - 8);
    v14 = *(v31 - 8);
    if (v14 != -8)
    {
      bzero((v31 - 8), v14 + 8);
    }

    free(v15);
  }
}

void bssl::tls13_add_finished(const EVP_MD_CTX *this, bssl::SSL_HANDSHAKE *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  digest = this->digest;
  *v10 = 0;
  if (bssl::tls13_finished_mac(this, __src, v10, (*(digest + 164) & 1)))
  {
    *v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    if ((*(*digest + 88))(digest, &v7, v6, 20))
    {
      v3 = *v10;
      v11 = 0;
      if (CBB_add_space(v6, &v11, *v10))
      {
        if (v3)
        {
          memcpy(v11, __src, v3);
        }

        bssl::ssl_add_message_cbb(digest, &v7);
      }
    }

    if (!BYTE8(v7) && (BYTE8(v9) & 1) != 0 && v8[0])
    {
      v5 = v8[0] - 8;
      v4 = *(v8[0] - 1);
      if (v4 != -8)
      {
        bzero(v5, v4 + 8);
      }

      free(v5);
    }
  }

  else
  {
    bssl::ssl_send_alert(digest, 2, 80);
    ERR_put_error(16, 0, 142, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_both.cc", 631);
  }
}

void bssl::tls13_add_key_update(bssl *this, ssl_st *a2)
{
  if ((*(*(this + 6) + 220) & 0x100) != 0)
  {
    return;
  }

  v4 = *this;
  if (**this)
  {
    v5 = *(this + 7);
    if (*(v5 + 640))
    {
      if (a2 == 1)
      {
        v6 = 256;
      }

      else
      {
        v6 = 128;
      }

      *v5 = *v5 & 0xFE7F | v6;
      return;
    }
  }

  v24[3] = v2;
  v24[4] = v3;
  v7 = a2;
  *v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  if ((*(v4 + 88))())
  {
    v24[0] = 0;
    if (CBB_add_space(&v20, v24, 1))
    {
      *v24[0] = v7;
      bssl::ssl_add_message_cbb(this, &v21);
      if (v15)
      {
        v16 = this;
        if ((**this & 1) == 0)
        {
          v17 = bssl::tls13_rotate_traffic_key(this, 1u, v9, v10, v11, v12, v13, v14);
          v16 = this;
          if (!v17)
          {
            if (BYTE8(v21))
            {
              return;
            }

            goto LABEL_16;
          }
        }

        *(*(v16 + 6) + 220) |= 0x100u;
        (*(*v16 + 120))(v16);
      }
    }
  }

  if (BYTE8(v21))
  {
    return;
  }

LABEL_16:
  if ((BYTE8(v23) & 1) != 0 && v22[0])
  {
    v19 = v22[0] - 8;
    v18 = *(v22[0] - 1);
    if (v18 != -8)
    {
      bzero(v19, v18 + 8);
    }

    free(v19);
  }
}

void bssl::tls13_post_handshake(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 1);
  if (v8 != 24)
  {
    if (v8 == 4 && (*(a1 + 164) & 1) == 0)
    {

      bssl::tls13_process_new_session_ticket(a1, a2);
    }

    else
    {
      *(*(a1 + 48) + 214) = 0;
      bssl::ssl_send_alert(a1, 2, 10);
      ERR_put_error(16, 0, 223, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_both.cc", 726);
    }

    return;
  }

  v9 = *(a1 + 48);
  v10 = *(v9 + 214) + 1;
  *(v9 + 214) = v10;
  if (*(a1 + 152) || v10 >= 0x21u)
  {
    ERR_put_error(16, 0, 260, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_both.cc", 715);
    v14 = a1;
    v15 = 10;
LABEL_18:
    bssl::ssl_send_alert(v14, 2, v15);
    return;
  }

  if (*(a2 + 16) != 1 || (v11 = **(a2 + 8), v11 >= 2))
  {
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_both.cc", 689);
    v14 = a1;
    v15 = 50;
    goto LABEL_18;
  }

  if (bssl::tls13_rotate_traffic_key(a1, 0, a3, a4, a5, a6, a7, a8) && v11 == 1)
  {
    bssl::tls13_add_key_update(a1, 0);
  }
}

uint64_t bssl::tls13_client_handshake(bssl *this, ssl_st *a2)
{
  v281 = *MEMORY[0x277D85DE8];
  v3 = this + 1629;
  v251 = (this + 504);
  while (2)
  {
    v4 = *(this + 6);
    v5 = 1;
    switch(v4)
    {
      case 0:
        v6 = *this;
        if (!(*(**this + 24))(*this, &v262))
        {
          goto LABEL_102;
        }

        if ((*(this + 1617) & 8) == 0 && !(*(*v6 + 112))(v6))
        {
          goto LABEL_403;
        }

        LOWORD(v270) = 0;
        v273 = 0;
        v274 = 0;
        v259[0] = 50;
        if ((bssl::ssl_parse_server_hello(&v269, v259, &v262) & 1) == 0)
        {
          goto LABEL_400;
        }

        if (***this)
        {
          v7 = 0;
          v8 = 0;
          if (v270 != 65277)
          {
            goto LABEL_234;
          }
        }

        else
        {
          v8 = *(this + 1661);
          v7 = v3;
          if (v270 != 771)
          {
            goto LABEL_234;
          }
        }

        if (v274 || v272 != v8 || memcmp(*(&v271 + 1), v7, v8) || !v276)
        {
          goto LABEL_234;
        }

        cipher_by_value = SSL_get_cipher_by_value(v273);
        if (!cipher_by_value)
        {
          goto LABEL_298;
        }

        id_high = HIDWORD(cipher_by_value->id);
        if (id_high == 8 || LODWORD(cipher_by_value->algorithms) == 16)
        {
          v124 = 772;
          v125 = 0;
          v126 = *(*(v6 + 6) + 208);
          if (v126 <= 0xFEFB)
          {
            goto LABEL_229;
          }
        }

        else
        {
          if (HIDWORD(cipher_by_value->algo_strength) == 1)
          {
            v124 = 768;
          }

          else
          {
            v124 = 771;
          }

          v125 = 0;
          v126 = *(*(v6 + 6) + 208);
          if (v126 <= 0xFEFB)
          {
LABEL_229:
            v127 = v126;
            if ((v126 - 769) >= 4)
            {
              goto LABEL_231;
            }

            goto LABEL_230;
          }
        }

        switch(v126)
        {
          case 65276:
            v127 = 772;
            goto LABEL_230;
          case 65277:
            v127 = 771;
            goto LABEL_230;
          case 65279:
            v127 = 770;
LABEL_230:
            v125 = v127;
            break;
        }

LABEL_231:
        if (v124 > v125)
        {
          goto LABEL_298;
        }

        if (id_high == 8)
        {
          v128 = 772;
        }

        else if (LODWORD(cipher_by_value->algorithms) == 16)
        {
          v128 = 772;
        }

        else
        {
          v128 = 771;
        }

        v167 = 0;
        if (v126 <= 65275)
        {
          if ((v126 - 769) >= 4)
          {
            goto LABEL_297;
          }

          goto LABEL_296;
        }

        switch(v126)
        {
          case 65276:
            v126 = 772;
            goto LABEL_296;
          case 65277:
            v126 = 771;
            goto LABEL_296;
          case 65279:
            v126 = 770;
LABEL_296:
            v167 = v126;
            break;
        }

LABEL_297:
        if (v167 > v128)
        {
          goto LABEL_298;
        }

        id_low = LOWORD(cipher_by_value->id);
        v171 = *(*(v6 + 1) + 264);
        if (v171 > 1)
        {
          if (v171 == 2)
          {
            if (id_low != 4866)
            {
              goto LABEL_298;
            }
          }

          else if (v171 != 3)
          {
            goto LABEL_298;
          }
        }

        else if (v171 && (v171 != 1 || (id_low - 4865) >= 2))
        {
LABEL_298:
          v168 = 242;
          v169 = 215;
LABEL_299:
          ERR_put_error(16, 0, v168, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_client.cc", v169);
          v41 = v6;
          v40 = 47;
          goto LABEL_402;
        }

        *(this + 198) = cipher_by_value;
        v179 = cipher_by_value;
        v183 = v271 == 32 && **(&v270 + 1) == 0x11619AE574AD21CFLL && *(*(&v270 + 1) + 8) == 0x91B8651E028C1DBELL && *(*(&v270 + 1) + 16) == 0x5E8CBB7A1611A2C2 && *(*(&v270 + 1) + 24) == 0x9C33A8C8E2099E07;
        v184 = bssl::ssl_protocol_version(v6, v122);
        if (!bssl::SSLTranscript::InitHash((this + 408), v184, v179) || v183 && !bssl::SSLTranscript::UpdateForHelloRetryRequest((this + 408)) || *(this + 197) && ((v189 = bssl::ssl_protocol_version(v6, a2), !bssl::SSLTranscript::InitHash((this + 456), v189, *(this + 198))) || v183 && !bssl::SSLTranscript::UpdateForHelloRetryRequest((this + 456))))
        {
LABEL_403:
          v5 = 0;
          goto LABEL_404;
        }

        v252 = 0;
        if ((bssl::check_ech_confirmation(this, &v252, v259, &v269, v185, v186, v187, v188) & 1) == 0)
        {
          goto LABEL_400;
        }

        v190 = *(this + 197);
        if (v190)
        {
          if (v252)
          {
            v191 = 1;
          }

          else
          {
            v191 = 2;
          }

          *(*(v6 + 6) + 216) = v191;
        }

        if (v183)
        {
          *&v259[1] = 65580;
          v260 = 0;
          v261 = 0;
          v192 = *(this + 78) != 0;
          LOWORD(__dst) = 51;
          WORD1(__dst) = v192;
          v257 = 0;
          v258 = 0;
          LODWORD(v266) = 65579;
          v267 = 0;
          v268 = 0;
          if (v190)
          {
            LOBYTE(v193) = 1;
          }

          else
          {
            v193 = *(*(this + 1) + 269);
          }

          LOWORD(v253) = -499;
          HIWORD(v253) = v193 & 1;
          v254 = 0;
          v255 = 0;
          v277 = &v259[1];
          p_dst = &__dst;
          v279 = &v266;
          v280 = &v253;
          if ((bssl::ssl_parse_extensions(&v275, v259, &v277, 4, 0) & 1) == 0)
          {
LABEL_400:
            v40 = v259[0];
LABEL_401:
            v41 = v6;
            goto LABEL_402;
          }

          if (v259[4])
          {
            v206 = v261 - 2;
            if (v261 >= 2)
            {
              v207 = v260;
              v208 = ++v260;
              v261 -= 2;
              v209 = __rev16(*v207);
              if (v206 >= v209)
              {
                v260 = (v208 + v209);
                v261 = v206 - v209;
                if (v209)
                {
                  if (v206 == v209)
                  {
                    if (!bssl::Array<unsigned char>::CopyFrom(this + 536, v208, v206))
                    {
                      goto LABEL_325;
                    }

                    if ((BYTE3(__dst) & 1) == 0)
                    {
                      goto LABEL_488;
                    }

LABEL_417:
                    if (v258 < 2 || (v217 = v257, ++v257, (v258 -= 2) != 0))
                    {
                      ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_client.cc", 295);
                      v173 = v6;
                      v174 = 50;
                      goto LABEL_324;
                    }

                    v238 = bswap32(*v217);
                    v239 = HIWORD(v238);
                    if (!bssl::tls1_check_group_id(this, HIWORD(v238)))
                    {
                      bssl::ssl_send_alert(v6, 2, 47);
                      ERR_put_error(16, 0, 243, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_client.cc", 303);
                      goto LABEL_325;
                    }

                    if ((*(**(this + 49) + 16))(*(this + 49)) == v239 || (v240 = *(this + 50)) != 0 && (*(*v240 + 16))(v240) == v239)
                    {
                      bssl::ssl_send_alert(v6, 2, 47);
                      ERR_put_error(16, 0, 243, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_client.cc", 312);
                      goto LABEL_325;
                    }

                    bssl::ssl_setup_key_shares(this, v239);
                    if (!v243)
                    {
                      goto LABEL_325;
                    }

LABEL_488:
                    if ((v262 & 1) == 0 && !bssl::SSLTranscript::Update(this + 408, v264, v265) || *(*(v6 + 6) + 216) == 1 && !bssl::SSLTranscript::Update(this + 456, v264, v265))
                    {
                      goto LABEL_325;
                    }

                    if ((*(*v6 + 40))(v6))
                    {
                      bssl::ssl_send_alert(v6, 2, 10);
                      ERR_put_error(16, 0, 255, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_client.cc", 336);
                      goto LABEL_325;
                    }

                    (*(*v6 + 32))(v6);
                    *(*(v6 + 6) + 220) |= 0x1000u;
                    v5 = 1;
                    *(this + 6) = 1;
                    if ((*(this + 1617) & 4) == 0)
                    {
                      goto LABEL_404;
                    }

                    *(*(v6 + 6) + 256) = 8;
                    v226 = this;
                    v227 = 0;
LABEL_434:
                    if (bssl::close_early_data(v226, v227))
                    {
                      v5 = 13;
                    }

                    else
                    {
                      v5 = 0;
                    }

                    goto LABEL_404;
                  }
                }
              }
            }

            ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_client.cc", 277);
            v41 = v6;
LABEL_162:
            v40 = 50;
LABEL_402:
            bssl::ssl_send_alert(v41, 2, v40);
            goto LABEL_403;
          }

          if (BYTE3(__dst))
          {
            goto LABEL_417;
          }

          ERR_put_error(16, 0, 282, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_client.cc", 268);
          v173 = v6;
LABEL_323:
          v174 = 47;
LABEL_324:
          bssl::ssl_send_alert(v173, 2, v174);
LABEL_325:
          v5 = 0;
          goto LABEL_404;
        }

        v19 = 2;
LABEL_119:
        *(this + 6) = v19;
        v5 = 1;
        goto LABEL_404;
      case 1:
        if (*(*(*this + 48) + 216) == 1 && !bssl::ssl_encrypt_client_hello(this, 0, 0))
        {
          goto LABEL_403;
        }

        bssl::ssl_add_client_hello(this, a2);
        if (!v36)
        {
          goto LABEL_403;
        }

        bssl::ssl_done_writing_client_hello(this);
        *(this + 6) = 2;
        goto LABEL_61;
      case 2:
        v6 = *this;
        if (!(*(**this + 24))(*this, &v262))
        {
          goto LABEL_102;
        }

        LOWORD(v270) = 0;
        v273 = 0;
        v274 = 0;
        v259[0] = 50;
        if ((bssl::ssl_parse_server_hello(&v269, v259, &v262) & 1) == 0)
        {
          goto LABEL_400;
        }

        if (***this)
        {
          v45 = 0;
          v46 = 0;
          if (v270 != 65277)
          {
            goto LABEL_234;
          }
        }

        else
        {
          v46 = *(this + 1661);
          v45 = v3;
          if (v270 != 771)
          {
            goto LABEL_234;
          }
        }

        if (v274 || v272 != v46 || memcmp(*(&v271 + 1), v45, v46) || !v276)
        {
LABEL_234:
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_client.cc", 128);
          v40 = 50;
          v259[0] = 50;
          goto LABEL_401;
        }

        if (v271 == 32)
        {
          v92 = **(&v270 + 1) == 0x11619AE574AD21CFLL && *(*(&v270 + 1) + 8) == 0x91B8651E028C1DBELL;
          v93 = v92 && *(*(&v270 + 1) + 16) == 0x5E8CBB7A1611A2C2;
          if (v93 && *(*(&v270 + 1) + 24) == 0x9C33A8C8E2099E07)
          {
            bssl::ssl_send_alert(v6, 2, 10);
            ERR_put_error(16, 0, 223, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_client.cc", 387);
            goto LABEL_403;
          }
        }

        if (v273 != *(*(this + 198) + 16))
        {
          ERR_put_error(16, 0, 242, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_client.cc", 393);
          v41 = v6;
          v40 = 47;
          goto LABEL_402;
        }

        v95 = *(v6 + 6);
        if (*(v95 + 216) != 1)
        {
          goto LABEL_202;
        }

        if ((*(v95 + 220) & 0x1000) == 0)
        {
          goto LABEL_187;
        }

        LOBYTE(v277) = 0;
        if ((bssl::check_ech_confirmation(this, &v277, v259, &v269, v88, v89, v90, v91) & 1) == 0)
        {
          goto LABEL_400;
        }

        if ((v277 & 1) == 0)
        {
          ERR_put_error(16, 0, 321, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_client.cc", 407);
          v40 = 47;
          goto LABEL_401;
        }

LABEL_187:
        v96 = *(this + 57);
        *(this + 57) = 0;
        v97 = *(this + 51);
        *(this + 51) = v96;
        if (v97)
        {
          v98 = *(v97 + 8);
          if (v98)
          {
            v100 = *(v98 - 8);
            v99 = (v98 - 8);
            v101 = v100 + 8;
            if (v100 != -8)
            {
              bzero(v99, v101);
            }

            free(v99);
          }

          v103 = *(v97 - 8);
          v102 = (v97 - 8);
          v104 = v103 + 8;
          if (v103 != -8)
          {
            bzero(v102, v104);
          }

          free(v102);
        }

        v105 = *(this + 53);
        if (v105)
        {
          v107 = *(v105 - 8);
          v106 = (v105 - 8);
          v108 = v107 + 8;
          if (v107 != -8)
          {
            bzero(v106, v108);
          }

          free(v106);
        }

        v109 = *(this + 55);
        if (v109)
        {
          (*v109)(*(this + 54));
        }

        v110 = *(this + 30);
        *(this + 26) = *(this + 29);
        *(this + 27) = v110;
        *(this + 29) = 0u;
        *(this + 30) = 0u;
        *(this + 112) = *(this + 124);
        *(this + 94) = *(this + 95);
        v111 = *(v6 + 6);
        v112 = v251[1];
        *(v111 + 48) = *v251;
        *(v111 + 64) = v112;
        v95 = *(v6 + 6);
LABEL_202:
        v113 = *(*(&v270 + 1) + 16);
        *(v95 + 16) = **(&v270 + 1);
        *(v95 + 32) = v113;
        v114 = *(v6 + 11);
        if (!v114 || (*(v114 + 408) & 4) != 0)
        {
          goto LABEL_329;
        }

        v115 = *(v114 + 4);
        if (v115 - 769 >= 4)
        {
          if (v115 == 65276)
          {
            v116 = *(v114 + 240);
            if (!v116)
            {
              goto LABEL_330;
            }

LABEL_328:
            LOBYTE(v116) = *(*(v6 + 6) + 216) != 2;
            goto LABEL_330;
          }

LABEL_329:
          LOBYTE(v116) = 0;
        }

        else
        {
          LOBYTE(v116) = 0;
          if (v115 >= 0x304 && *(v114 + 240))
          {
            goto LABEL_328;
          }
        }

LABEL_330:
        v175 = *(this + 49) != 0;
        strcpy(&v259[1], "3");
        *&v259[3] = v175;
        v260 = 0;
        v261 = 0;
        v176 = *(this + 212) != 0;
        LOWORD(__dst) = -30149;
        WORD1(__dst) = v176;
        v257 = 0;
        v258 = 0;
        LOWORD(v266) = 41;
        WORD1(v266) = v116;
        v267 = 0;
        v268 = 0;
        v253 = 65579;
        v254 = 0;
        v255 = 0;
        v277 = &v259[1];
        p_dst = &v266;
        v279 = &v253;
        v280 = &__dst;
        if ((bssl::ssl_parse_extensions(&v275, v259, &v277, 4, 0) & 1) == 0)
        {
          goto LABEL_400;
        }

        if (HIBYTE(v253) != 1 || v255 < 2 || (v178 = v254, ++v254, (v255 -= 2) != 0) || *(*(v6 + 6) + 208) != bswap32(*v178) >> 16)
        {
          v168 = 288;
          v169 = 447;
          goto LABEL_299;
        }

        if (BYTE3(__dst) == 1)
        {
          if ((v259[4] & 1) != 0 || BYTE3(v266) == 1)
          {
            ERR_put_error(16, 0, 222, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_client.cc", 457);
            v41 = v6;
            v40 = 110;
            goto LABEL_402;
          }

          if (!*(this + 212))
          {
LABEL_425:
            v196 = 258;
            v197 = 470;
            goto LABEL_426;
          }

          v259[0] = 50;
LABEL_422:
          if ((bssl::ssl_get_new_session(this, v177) & 1) == 0)
          {
            goto LABEL_502;
          }

          goto LABEL_423;
        }

        if (*(this + 212))
        {
          v196 = 164;
          v197 = 463;
LABEL_426:
          ERR_put_error(16, 0, v196, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_client.cc", v197);
          v41 = v6;
          v40 = 109;
          goto LABEL_402;
        }

        if ((v259[4] & 1) == 0)
        {
          goto LABEL_425;
        }

        v259[0] = 50;
        if ((BYTE3(v266) & 1) == 0)
        {
          goto LABEL_422;
        }

        if ((bssl::ssl_ext_pre_shared_key_parse_serverhello(this, v259, &v267) & 1) == 0)
        {
          bssl::ssl_send_alert(v6, 2, v259[0]);
          v5 = 0;
          goto LABEL_404;
        }

        v211 = *(v6 + 11);
        v212 = *(v6 + 6);
        if (*(v211 + 4) != *(v212 + 208))
        {
          v215 = 188;
          v216 = 494;
          goto LABEL_486;
        }

        if (*(*(v211 + 200) + 36) != *(*(this + 198) + 36))
        {
          v215 = 268;
          v216 = 500;
          goto LABEL_486;
        }

        v213 = *(v211 + 124);
        v214 = *(*(this + 1) + 32);
        if (v213 != *(v214 + 120) || memcmp((v211 + 92), (v214 + 88), v213))
        {
          v215 = 101;
          v216 = 508;
LABEL_486:
          ERR_put_error(16, 0, v215, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_client.cc", v216);
          bssl::ssl_send_alert(v6, 2, 47);
          v5 = 0;
          goto LABEL_404;
        }

        *(v212 + 220) |= 0x20u;
        *(this + 404) |= 0x800000u;
        bssl::SSL_SESSION_dup(*(v6 + 11), 0, &v277);
        v245 = v277;
        v277 = 0;
        v246 = *(this + 194);
        *(this + 194) = v245;
        if (v246)
        {
          SSL_SESSION_free(v246);
          v247 = v277;
          v277 = 0;
          if (v247)
          {
            SSL_SESSION_free(v247);
          }

          v245 = *(this + 194);
        }

        if (!v245)
        {
LABEL_502:
          bssl::ssl_send_alert(v6, 2, 80);
          v5 = 0;
          goto LABEL_404;
        }

        bssl::ssl_set_session(v6, 0, v244);
        bssl::ssl_session_renew_timeout(v6, *(this + 194), *(*(v6 + 14) + 300));
LABEL_423:
        v219 = *(this + 198);
        *(*(this + 194) + 200) = v219;
        v220 = bssl::ssl_protocol_version(v6, v218);
        handshake_digest = bssl::ssl_get_handshake_digest(v220, v219, v221);
        if ((*(*(v6 + 6) + 220) & 0x20) != 0)
        {
          v230 = *(this + 194);
          v224 = (v230 + 10);
          pkey_type = *(v230 + 58);
        }

        else
        {
          pkey_type = handshake_digest->pkey_type;
          v224 = bssl::kZeroes;
        }

        if (!bssl::tls13_init_key_schedule(this, v224, pkey_type))
        {
          goto LABEL_325;
        }

        v277 = 0;
        p_dst = 0;
        v259[0] = 50;
        if (v259[4] == 1)
        {
          if ((bssl::ssl_ext_key_share_parse_serverhello(this, &v277, v259, &v260) & 1) == 0)
          {
            goto LABEL_467;
          }

          goto LABEL_455;
        }

        if (BYTE3(__dst) != 1)
        {
          ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_client.cc", 559);
          v237 = v6;
          v236 = 80;
          goto LABEL_475;
        }

        bssl::ssl_ext_pake_parse_serverhello(this, &v277, v259, &v257, v231, v232, v233, v234);
        if ((v235 & 1) == 0)
        {
LABEL_467:
          v236 = v259[0];
          v237 = v6;
LABEL_475:
          bssl::ssl_send_alert(v237, 2, v236);
          goto LABEL_476;
        }

LABEL_455:
        if (bssl::tls13_advance_key_schedule(this, v277, p_dst) && ((v262 & 1) != 0 || bssl::SSLTranscript::Update(this + 408, v264, v265)) && bssl::tls13_derive_handshake_secrets(this, a2) && ((*(this + 1617) & 4) != 0 && !*(v6 + 19) || bssl::tls13_set_traffic_key(v6, 2, 1u, *(this + 194), (this + 130), *(this + 178))) && bssl::tls13_set_traffic_key(v6, 2, 0, *(this + 194), (this + 179), *(this + 227)))
        {
          (*(*v6 + 32))(v6);
          *(this + 6) = 3;
          v5 = 1;
          goto LABEL_477;
        }

LABEL_476:
        v5 = 0;
LABEL_477:
        if (p_dst && p_dst - 1 >= -v277)
        {
          goto LABEL_504;
        }

        if (v277)
        {
          p_tlsext_tick_lifetime_hint = &v277[-1].tlsext_tick_lifetime_hint;
          tlsext_tick_lifetime_hint = v277[-1].tlsext_tick_lifetime_hint;
          if (tlsext_tick_lifetime_hint != -8)
          {
            bzero(p_tlsext_tick_lifetime_hint, tlsext_tick_lifetime_hint + 8);
          }

          free(p_tlsext_tick_lifetime_hint);
        }

LABEL_404:
        if (*(this + 6) != v4)
        {
          v210 = *(*this + 96);
          if (v210 || (v210 = *(*(*this + 104) + 384)) != 0)
          {
            v210();
          }
        }

        if (v5 == 1)
        {
          continue;
        }

        return v5;
      case 3:
        v21 = *this;
        if (!(*(**this + 24))(*this, &v269))
        {
          goto LABEL_102;
        }

        if (BYTE1(v269) != 8)
        {
          goto LABEL_208;
        }

        v22 = v270 - 2;
        if (v270 < 2 || (v23 = __rev16(**(&v269 + 1)), v22 < v23) || (*&v262 = *(&v269 + 1) + 2, *(&v262 + 1) = v23, v22 != v23))
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_client.cc", 606);
          v41 = v21;
          goto LABEL_162;
        }

        if ((bssl::ssl_parse_serverhello_tlsext(this, &v262) & 1) == 0)
        {
          v54 = 190;
          v55 = 612;
          goto LABEL_244;
        }

        v24 = *(v21 + 6);
        if ((*(v24 + 220) & 0x200) == 0)
        {
          v25 = *(this + 194);
          v26 = *(v24 + 496);
          v250 = *(v24 + 488);
          v28 = *(v25 + 360);
          v27 = *(v25 + 368);
          if (!v27)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        }

        v163 = *(this + 195);
        v164 = *(this + 194);
        if (*(v163 + 200) == *(v164 + 200))
        {
          v172 = *(v163 + 368);
          if (v172 == *(v24 + 496) && !memcmp(*(v163 + 360), *(v24 + 488), v172))
          {
            if ((*(this + 1619) & 1) == 0 && (*(v164 + 408) & 0x40) == 0)
            {
              *(v164 + 408) |= *(v163 + 408) & 0x40;
              if (!bssl::Array<unsigned char>::CopyFrom(*(this + 194) + 376, *(*(this + 195) + 376), *(*(this + 195) + 384)) || !bssl::Array<unsigned char>::CopyFrom(*(this + 194) + 392, *(*(this + 195) + 392), *(*(this + 195) + 400)))
              {
LABEL_445:
                v173 = v21;
                v174 = 80;
                goto LABEL_324;
              }

              v195 = *(v21 + 6);
              v25 = *(this + 194);
              v26 = *(v195 + 496);
              v250 = *(v195 + 488);
              v28 = *(v25 + 360);
              v27 = *(v25 + 368);
              if (!v27)
              {
LABEL_48:
                if (v28)
                {
                  v249 = v26;
                  v30 = *(v28 - 8);
                  v29 = (v28 - 8);
                  v31 = v30 + 8;
                  if (v30 != -8)
                  {
                    bzero(v29, v31);
                  }

                  free(v29);
                  v26 = v249;
                }

                *(v25 + 360) = 0;
                *(v25 + 368) = 0;
                if (!v26)
                {
                  goto LABEL_429;
                }

                if (v26 > 0xFFFFFFFFFFFFFFF7 || (v32 = v26, (v33 = malloc_type_malloc(v26 + 8, 0xB4E622C9uLL)) == 0))
                {
                  ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
                  *(v25 + 360) = 0;
                  v41 = v21;
                  v40 = 80;
                  goto LABEL_402;
                }

                *v33 = v32;
                v34 = v33 + 1;
                *(v25 + 360) = v33 + 1;
                *(v25 + 368) = v32;
                if (v32 < 8)
                {
                  v35 = v250;
                  goto LABEL_428;
                }

                v35 = v250;
                if (v33 - v250 + 8 >= 0x20)
                {
                  if (v32 < 0x20)
                  {
                    v194 = 0;
                    goto LABEL_390;
                  }

                  v194 = v32 & 0xFFFFFFFFFFFFFFE0;
                  v198 = (v250 + 16);
                  v199 = v33 + 3;
                  v200 = v32 & 0xFFFFFFFFFFFFFFE0;
                  do
                  {
                    v201 = *v198;
                    *(v199 - 1) = *(v198 - 1);
                    *v199 = v201;
                    v198 += 2;
                    v199 += 2;
                    v200 -= 32;
                  }

                  while (v200);
                  if (v32 == v194)
                  {
                    goto LABEL_429;
                  }

                  if ((v32 & 0x18) != 0)
                  {
LABEL_390:
                    v34 += v32 & 0xFFFFFFFFFFFFFFF8;
                    v35 = (v250 + (v32 & 0xFFFFFFFFFFFFFFF8));
                    v202 = (v250 + v194);
                    v203 = (v33 + v194 + 8);
                    v204 = v194 - (v32 & 0xFFFFFFFFFFFFFFF8);
                    do
                    {
                      v205 = *v202++;
                      *v203++ = v205;
                      v204 += 8;
                    }

                    while (v204);
                    if (v32 == (v32 & 0xFFFFFFFFFFFFFFF8))
                    {
                      goto LABEL_429;
                    }

                    goto LABEL_428;
                  }

                  v35 = (v250 + v194);
                  v34 += v194;
                }

                do
                {
LABEL_428:
                  v225 = *v35++;
                  *v34++ = v225;
                }

                while (v35 != (v250 + v32));
LABEL_429:
                if ((v269 & 1) == 0 && !bssl::SSLTranscript::Update(this + 408, *(&v270 + 1), v271))
                {
                  goto LABEL_403;
                }

                (*(*v21 + 32))(v21);
                *(this + 6) = 4;
                if ((*(this + 1617) & 4) == 0 || (*(*(v21 + 6) + 220) & 0x200) != 0)
                {
                  v5 = 1;
                  goto LABEL_404;
                }

                v226 = this;
                v227 = 2;
                goto LABEL_434;
              }

LABEL_47:
              if (v27 - 1 >= -v28)
              {
                goto LABEL_504;
              }

              goto LABEL_48;
            }

            v165 = 279;
            v166 = 638;
          }

          else
          {
            v165 = 277;
            v166 = 630;
          }
        }

        else
        {
          v165 = 304;
          v166 = 625;
        }

        ERR_put_error(16, 0, v165, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_client.cc", v166);
        v173 = v21;
        goto LABEL_323;
      case 4:
        v21 = *this;
        if ((*(*(*this + 48) + 220) & 0x20) != 0)
        {
          if (*(*(*this + 48) + 220) & 0x200) == 0 && (*(*(v21 + 13) + 520))
          {
            v43 = 7;
            goto LABEL_117;
          }

LABEL_118:
          v19 = 8;
          goto LABEL_119;
        }

        if (*(this + 212))
        {
          goto LABEL_118;
        }

        if (!(*(*v21 + 24))(*this, &v269))
        {
LABEL_102:
          v5 = 3;
          goto LABEL_404;
        }

        if (BYTE1(v269) != 13)
        {
          v43 = 5;
          goto LABEL_117;
        }

        LODWORD(v262) = 65549;
        *(&v262 + 1) = 0;
        v263 = 0;
        LODWORD(v277) = 65583;
        p_dst = 0;
        v279 = 0;
        LOBYTE(v253) = 50;
        if (!v270 || (v52 = **(&v269 + 1), v53 = v270 - 1 - v52, v270 - 1 < v52) || **(&v269 + 1) || (v129 = v53 >= 2, v130 = (v53 - 2), !v129) || (v131 = (*(&v269 + 1) + v52 + 1), v132 = __rev16(*v131), v130 < v132) || (*&v259[1] = v131 + 1, v260 = v132, v130 != v132) || (v266 = &v262, v267 = &v277, !bssl::ssl_parse_extensions(&v259[1], &v253, &v266, 2, 1)) || BYTE3(v262) != 1 || (v133 = &v263[-1].tlsext_tick_lifetime_hint + 6, v263 < 2) || (v134 = *(&v262 + 1), v135 = (*(&v262 + 1) + 2), *(&v262 + 1) += 2, v263 = (v263 - 2), v136 = __rev16(*v134), v129 = v133 >= v136, v137 = (v133 - v136), !v129) || (*(&v262 + 1) = &v136[v135], v263 = v137, __dst = v135, v257 = v136, (bssl::tls1_parse_peer_sigalgs(this, &__dst) & 1) == 0))
        {
          bssl::ssl_send_alert(v21, 2, v253);
          v54 = 137;
          v55 = 718;
          goto LABEL_244;
        }

        if (BYTE3(v277) == 1)
        {
          bssl::SSL_parse_CA_list(v21, &v253, &p_dst, &v266);
          v138 = v266;
          v266 = 0;
          v139 = *(this + 183);
          *(this + 183) = v138;
          if (v139)
          {
            OPENSSL_sk_pop_free_ex(v139, bssl::internal::DeleterImpl<stack_st_CRYPTO_BUFFER,void>::Free(stack_st_CRYPTO_BUFFER*)::{lambda(void (*)(void *),void *)#1}::__invoke, 0);
            v140 = v266;
            v266 = 0;
            if (v140)
            {
              OPENSSL_sk_pop_free_ex(v140, bssl::internal::DeleterImpl<stack_st_CRYPTO_BUFFER,void>::Free(stack_st_CRYPTO_BUFFER*)::{lambda(void (*)(void *),void *)#1}::__invoke, 0);
            }

            v138 = *(this + 183);
          }

          if (!v138)
          {
            bssl::ssl_send_alert(v21, 2, v253);
            v5 = 0;
            goto LABEL_404;
          }
        }

        else
        {
          v228 = OPENSSL_sk_new_null();
          v229 = *(this + 183);
          *(this + 183) = v228;
          if (v229)
          {
            OPENSSL_sk_pop_free_ex(v229, bssl::internal::DeleterImpl<stack_st_CRYPTO_BUFFER,void>::Free(stack_st_CRYPTO_BUFFER*)::{lambda(void (*)(void *),void *)#1}::__invoke, 0);
            v228 = *(this + 183);
          }

          if (!v228)
          {
            goto LABEL_445;
          }
        }

        *(this + 404) |= 0x20u;
        (*(*(*(v21 + 13) + 16) + 80))(this);
        if ((v269 & 1) != 0 || bssl::SSLTranscript::Update(this + 408, *(&v270 + 1), v271))
        {
          (*(*v21 + 32))(v21);
          *(this + 6) = 5;
          v5 = 1;
          goto LABEL_404;
        }

        goto LABEL_325;
      case 5:
        v21 = *this;
        if (!(*(**this + 24))(*this, &v269))
        {
          goto LABEL_102;
        }

        if (BYTE1(v269) != 11 && BYTE1(v269) != 25)
        {
          goto LABEL_208;
        }

        if (!bssl::tls13_process_certificate(this, &v269, 0) || (v269 & 1) == 0 && !bssl::SSLTranscript::Update(this + 408, *(&v270 + 1), v271))
        {
          goto LABEL_403;
        }

        (*(*v21 + 32))(v21);
        v43 = 6;
        goto LABEL_117;
      case 6:
        v21 = *this;
        if (!(*(**this + 24))(*this, &v269))
        {
          goto LABEL_102;
        }

        v44 = bssl::ssl_verify_peer_cert(this, a2);
        if (v44 == 1)
        {
          goto LABEL_403;
        }

        if (v44 == 2)
        {
          v5 = 16;
          *(this + 6) = 6;
          goto LABEL_404;
        }

        if (BYTE1(v269) != 15)
        {
LABEL_208:
          bssl::ssl_send_alert(v21, 2, 10);
          ERR_put_error(16, 0, 223, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake.cc", 116);
          v70 = BYTE1(v269);
          goto LABEL_209;
        }

        if (bssl::tls13_process_certificate_verify(this, &v269) && ((v269 & 1) != 0 || bssl::SSLTranscript::Update(this + 408, *(&v270 + 1), v271)))
        {
          (*(*v21 + 32))(v21);
          v5 = 1;
          *(this + 6) = 8;
          goto LABEL_404;
        }

        goto LABEL_403;
      case 7:
        LOBYTE(v269) = 46;
        v37 = *this;
        v38 = *(*(this + 1) + 48);
        if (!v38 || (v39 = v38(*this, &v269), v39 == 1))
        {
          ERR_put_error(16, 0, 125, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake.cc", 340);
          v40 = v269;
          v41 = v37;
          goto LABEL_402;
        }

        if (v39 == 2)
        {
          v62 = 7;
        }

        else
        {
          v62 = 8;
        }

        if (v39 == 2)
        {
          v5 = 16;
        }

        else
        {
          v5 = 1;
        }

        *(this + 6) = v62;
        goto LABEL_404;
      case 8:
        v48 = *this;
        if (!(*(**this + 24))(*this, &v262))
        {
          goto LABEL_102;
        }

        if (BYTE1(v262) != 20)
        {
          bssl::ssl_send_alert(v48, 2, 10);
          ERR_put_error(16, 0, 223, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake.cc", 116);
          v70 = BYTE1(v262);
LABEL_209:
          ERR_add_error_dataf("got type %d, wanted type %d", v63, v64, v65, v66, v67, v68, v69, v70);
          goto LABEL_403;
        }

        v49 = *this;
        v277 = 0;
        if (!bssl::tls13_finished_mac(this, &v269, &v277, ((*(v49 + 164) & 1) == 0)))
        {
          goto LABEL_403;
        }

        if (v263 != v277)
        {
LABEL_274:
          bssl::ssl_send_alert(v49, 2, 51);
          ERR_put_error(16, 0, 142, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_both.cc", 401);
          goto LABEL_403;
        }

        if (!v277)
        {
          goto LABEL_275;
        }

        if (v277 < 8)
        {
          v50 = 0;
          v51 = 0;
LABEL_271:
          v157 = (v277 - v50);
          v158 = &v269 + v50;
          v159 = v50 + *(&v262 + 1);
          do
          {
            v161 = *v159++;
            v160 = v161;
            v162 = *v158++;
            v51 |= v162 ^ v160;
            --v157;
          }

          while (v157);
          goto LABEL_273;
        }

        if (v277 >= 0x20)
        {
          v50 = (v277 & 0xFFFFFFFFFFFFFFE0);
          v141 = (*(&v262 + 1) + 16);
          v142 = 0uLL;
          v143 = v277 & 0xFFFFFFFFFFFFFFE0;
          v144 = &v270;
          v145 = 0uLL;
          do
          {
            v142 = vorrq_s8(veorq_s8(v144[-1], v141[-1]), v142);
            v145 = vorrq_s8(veorq_s8(*v144, *v141), v145);
            v141 += 2;
            v144 += 2;
            v143 -= 32;
          }

          while (v143);
          v146 = vorrq_s8(v145, v142);
          *v146.i8 = vorr_s8(*v146.i8, *&vextq_s8(v146, v146, 8uLL));
          v147 = v146.i64[0] | HIDWORD(v146.i64[0]) | ((v146.i64[0] | HIDWORD(v146.i64[0])) >> 16);
          v51 = v147 | BYTE1(v147);
          if (v277 == v50)
          {
            goto LABEL_273;
          }

          if ((v277 & 0x18) == 0)
          {
            goto LABEL_271;
          }
        }

        else
        {
          v51 = 0;
          v50 = 0;
        }

        v148 = v50;
        v50 = (v277 & 0xFFFFFFFFFFFFFFF8);
        v149 = v51;
        v150 = (v148 + *(&v262 + 1));
        v151 = (&v269 + v148);
        v152 = v148 - (v277 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v153 = *v150++;
          v154 = v153;
          v155 = *v151++;
          v149 = vorr_s8(veor_s8(v155, v154), v149);
          v152 += 8;
        }

        while (v152);
        v156 = *&v149 | HIDWORD(*&v149) | ((*&v149 | HIDWORD(*&v149)) >> 16);
        v51 = v156 | BYTE1(v156);
        if (v277 != v50)
        {
          goto LABEL_271;
        }

LABEL_273:
        if (v51)
        {
          goto LABEL_274;
        }

LABEL_275:
        if ((v262 & 1) == 0 && !bssl::SSLTranscript::Update(this + 408, v264, v265) || !bssl::tls13_advance_key_schedule(this, bssl::kZeroes, *(*(this + 52) + 4)) || !bssl::tls13_derive_application_secrets(this, a2))
        {
          goto LABEL_403;
        }

        if ((*(*v48 + 40))(v48))
        {
          bssl::ssl_send_alert(v48, 2, 10);
          v54 = 255;
          v55 = 830;
LABEL_244:
          ERR_put_error(16, 0, v54, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_client.cc", v55);
          goto LABEL_403;
        }

        (*(*v48 + 32))(v48);
        v43 = 9;
LABEL_117:
        *(this + 6) = v43;
        v5 = 1;
        goto LABEL_404;
      case 9:
        v20 = *this;
        if ((*(*(*this + 48) + 220) & 0x200) == 0)
        {
          goto LABEL_38;
        }

        if (v20[19] || (**v20 & 1) != 0)
        {
          *(this + 404) &= ~0x2000u;
          if (!v20[19])
          {
LABEL_37:
            if (!bssl::tls13_set_traffic_key(v20, 2, 1u, *(this + 194), (this + 130), *(this + 178)))
            {
              goto LABEL_403;
            }
          }

LABEL_38:
          *(this + 6) = 10;
          goto LABEL_404;
        }

        v271 = 0u;
        v270 = 0u;
        v269 = 0u;
        v117 = v20;
        if ((*(*v20 + 88))(v20, &v269, &v262, 5))
        {
          bssl::ssl_add_message_cbb(v117, &v269);
          if (v118)
          {
            CBB_cleanup(&v269);
            v20 = *this;
            *(this + 404) &= ~0x2000u;
            if (!v20[19])
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }
        }

LABEL_214:
        if (!BYTE8(v269) && (BYTE8(v271) & 1) != 0 && v270)
        {
          v120 = (v270 - 8);
          v119 = *(v270 - 8);
          if (v119 != -8)
          {
            bzero(v120, v119 + 8);
          }

          free(v120);
        }

        goto LABEL_403;
      case 10:
        if ((*(*(this + 194) + 408) & 0x40) == 0)
        {
          goto LABEL_32;
        }

        v12 = *this;
        if ((*(*(*this + 48) + 220) & 0x200) != 0)
        {
          goto LABEL_32;
        }

        v271 = 0u;
        v270 = 0u;
        v269 = 0u;
        v13 = *(*(this + 1) + 269);
        if (!(*(*v12 + 88))(v12, &v269, &v262, 8))
        {
          goto LABEL_214;
        }

        if (!CBB_add_u16_length_prefixed(&v262, &v277))
        {
          goto LABEL_214;
        }

        __dst = 0;
        if (!CBB_add_space(&v277, &__dst, 2))
        {
          goto LABEL_214;
        }

        v14 = (v13 & 0x2000) != 0 ? -51 : 105;
        *(__dst + 1) = v14;
        *__dst = 68;
        if (!CBB_add_u16_length_prefixed(&v277, &v259[1]))
        {
          goto LABEL_214;
        }

        v15 = *(this + 194);
        v17 = *(v15 + 376);
        v16 = *(v15 + 384);
        __dst = 0;
        if (!CBB_add_space(&v259[1], &__dst, v16))
        {
          goto LABEL_214;
        }

        if (v16)
        {
          memcpy(__dst, v17, v16);
        }

        bssl::ssl_add_message_cbb(v12, &v269);
        if (!v18)
        {
          goto LABEL_214;
        }

        CBB_cleanup(&v269);
LABEL_32:
        v19 = 11;
        goto LABEL_119;
      case 11:
        if ((*(this + 1616) & 0x20) == 0)
        {
          goto LABEL_104;
        }

        v61 = *this;
        if (*(*(*this + 48) + 216) == 2)
        {
          SSL_certs_clear(*this);
        }

        else
        {
          v71 = *(*(this + 1) + 32);
          v72 = *(v71 + 64);
          if (v72)
          {
            v73 = v72(*this, *(v71 + 72));
            if (!v73)
            {
              bssl::ssl_send_alert(v61, 2, 80);
              v54 = 126;
              v55 = 928;
              goto LABEL_244;
            }

            if (v73 < 0)
            {
              *(this + 6) = 11;
              v5 = 8;
              goto LABEL_404;
            }
          }
        }

        v269 = 0uLL;
        if (!bssl::ssl_get_full_credential_list(this, &v269))
        {
          goto LABEL_153;
        }

        if (!*(&v269 + 1))
        {
          goto LABEL_150;
        }

        v74 = v269;
        v75 = 8 * *(&v269 + 1);
        while (2)
        {
          v76 = *v74;
          ERR_clear_error();
          LOWORD(v262) = 0;
          if (*(v76 + 1))
          {
            ERR_put_error(16, 0, 228, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_client.cc", 897);
LABEL_138:
            ++v74;
            v75 -= 8;
            if (!v75)
            {
              goto LABEL_149;
            }

            continue;
          }

          break;
        }

        if (!bssl::tls1_choose_signature_algorithm(this, v76, &v262) || !bssl::ssl_credential_matches_requested_issuers(this, v76, v77))
        {
          goto LABEL_138;
        }

        v78 = atomic_load(v76);
        if (v78 != -1)
        {
          for (i = v78; i != -1; v78 = i)
          {
            atomic_compare_exchange_strong(v76, &i, v78 + 1);
            if (i == v78)
            {
              break;
            }
          }
        }

        v80 = *(this + 192);
        *(this + 192) = v76;
        if (v80)
        {
          SSL_CREDENTIAL_free(v80);
        }

        *(this + 813) = v262;
LABEL_149:
        if (!*(this + 192))
        {
          bssl::ssl_send_alert(v61, 2, 40);
          v5 = 0;
          v82 = *(&v269 + 1);
          v83 = v269;
          if (!*(&v269 + 1))
          {
            goto LABEL_157;
          }

          goto LABEL_154;
        }

LABEL_150:
        bssl::tls13_add_certificate(this, a2);
        if (v81)
        {
          *(this + 6) = 12;
          v5 = 1;
          v82 = *(&v269 + 1);
          v83 = v269;
          if (!*(&v269 + 1))
          {
            goto LABEL_157;
          }

LABEL_154:
          v84 = v83 - 8;
          while (1)
          {
            v84 += 8;
            if (!v84)
            {
              break;
            }

            if (!--v82)
            {
              goto LABEL_157;
            }
          }

LABEL_504:
          __break(1u);
        }

LABEL_153:
        v5 = 0;
        v82 = *(&v269 + 1);
        v83 = v269;
        if (*(&v269 + 1))
        {
          goto LABEL_154;
        }

LABEL_157:
        if (v83)
        {
          v86 = *(v83 - 8);
          v85 = (v83 - 8);
          v87 = v86 + 8;
          if (v86 != -8)
          {
            bzero(v85, v87);
          }

          free(v85);
        }

        goto LABEL_404;
      case 12:
        if (*(this + 192) && (bssl::tls13_add_certificate_verify(this, a2), v47))
        {
          if (v47 != 1)
          {
            goto LABEL_403;
          }

          v5 = 9;
          *(this + 6) = 12;
        }

        else
        {
LABEL_104:
          *(this + 6) = 13;
        }

        goto LABEL_404;
      case 13:
        v9 = *this;
        v10 = *(this + 404);
        *(this + 404) = v10 | 0x800000;
        if ((v10 & 0x1000000) == 0)
        {
          goto LABEL_13;
        }

        v271 = 0u;
        v270 = 0u;
        v269 = 0u;
        if (!(*(*v9 + 88))(v9, &v269, &v262, 203))
        {
          goto LABEL_214;
        }

        if (!bssl::tls1_write_channel_id(this, &v262, v56, v57))
        {
          goto LABEL_214;
        }

        bssl::ssl_add_message_cbb(v9, &v269);
        if (!v58)
        {
          goto LABEL_214;
        }

        if (!BYTE8(v269) && (BYTE8(v271) & 1) != 0 && v270)
        {
          v60 = (v270 - 8);
          v59 = *(v270 - 8);
          if (v59 != -8)
          {
            bzero(v60, v59 + 8);
          }

          free(v60);
        }

LABEL_13:
        bssl::tls13_add_finished(this, a2);
        if (!v11 || !bssl::tls13_set_traffic_key(v9, 3, 1u, *(this + 194), (this + 228), *(this + 276)) || !bssl::tls13_set_traffic_key(v9, 3, 0, *(this + 194), (this + 277), *(this + 325)) || !bssl::derive_secret_with_transcript(this, *(this + 194) + 10, this + 408, "res master", 0xAuLL))
        {
          goto LABEL_403;
        }

        *(this + 6) = 14;
LABEL_61:
        v5 = 4;
        goto LABEL_404;
      case 14:
        return v5;
      default:
        goto LABEL_403;
    }
  }
}