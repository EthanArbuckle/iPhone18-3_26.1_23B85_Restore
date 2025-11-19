void ssl_st::~ssl_st(ssl_st *this)
{
  CRYPTO_free_ex_data(&bssl::g_ex_data_class_ssl, this, &this->s2);
  method = this->method;
  this->method = 0;
  if (method)
  {
    bssl::SSL_CONFIG::~SSL_CONFIG(method);
    v4 = *(method - 1);
    v3 = method - 8;
    v5 = v4 + 8;
    if (v4 != -8)
    {
      bzero(v3, v5);
    }

    free(v3);
  }

  if (*&this->version)
  {
    (*(*&this->version + 16))(this);
  }

  v6 = *&this->read_ahead;
  *&this->read_ahead = 0;
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

  v10 = *&this->packet_length;
  *&this->packet_length = 0;
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = atomic_load(v10);
  if (v11 == -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    if (!v11)
    {
LABEL_73:
      abort();
    }

    v12 = v11;
    atomic_compare_exchange_strong(v10, &v12, v11 - 1);
    if (v12 == v11)
    {
      break;
    }

    v11 = v12;
    if (v12 == -1)
    {
      goto LABEL_18;
    }
  }

  if (v11 == 1)
  {
    ssl_ctx_st::~ssl_ctx_st(v10);
    v20 = *(v10 - 1);
    v19 = v10 - 2;
    v21 = v20 + 8;
    if (v20 != -8)
    {
      bzero(v19, v21);
    }

    free(v19);
    packet = this->packet;
    this->packet = 0;
    if (!packet)
    {
      goto LABEL_31;
    }
  }

  else
  {
LABEL_18:
    packet = this->packet;
    this->packet = 0;
    if (!packet)
    {
      goto LABEL_31;
    }
  }

  v14 = atomic_load(packet);
  if (v14 != -1)
  {
    while (1)
    {
      if (!v14)
      {
        goto LABEL_73;
      }

      v15 = v14;
      atomic_compare_exchange_strong(packet, &v15, v14 - 1);
      if (v15 == v14)
      {
        break;
      }

      v14 = v15;
      if (v15 == -1)
      {
        goto LABEL_31;
      }
    }

    if (v14 == 1)
    {
      ssl_ctx_st::~ssl_ctx_st(packet);
      v17 = *(packet - 1);
      v16 = packet - 8;
      v18 = v17 + 8;
      if (v17 != -8)
      {
        bzero(v16, v18);
      }

      free(v16);
    }
  }

LABEL_31:
  init_msg = this->init_msg;
  this->init_msg = 0;
  if (!init_msg)
  {
    goto LABEL_38;
  }

  v23 = atomic_load(init_msg);
  if (v23 == -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    if (!v23)
    {
      goto LABEL_73;
    }

    v24 = v23;
    atomic_compare_exchange_strong(&init_msg->ssl_version, &v24, v23 - 1);
    if (v24 == v23)
    {
      break;
    }

    v23 = v24;
    if (v24 == -1)
    {
      goto LABEL_38;
    }
  }

  if (v23 == 1)
  {
    ssl_session_st::~ssl_session_st(init_msg);
    tlsext_tick_lifetime_hint = init_msg[-1].tlsext_tick_lifetime_hint;
    p_tlsext_tick_lifetime_hint = &init_msg[-1].tlsext_tick_lifetime_hint;
    v35 = tlsext_tick_lifetime_hint + 8;
    if (tlsext_tick_lifetime_hint != -8)
    {
      bzero(p_tlsext_tick_lifetime_hint, v35);
    }

    free(p_tlsext_tick_lifetime_hint);
    bbio = this->bbio;
    this->bbio = 0;
    if (!bbio)
    {
      goto LABEL_55;
    }
  }

  else
  {
LABEL_38:
    bbio = this->bbio;
    this->bbio = 0;
    if (!bbio)
    {
      goto LABEL_55;
    }
  }

  do
  {
    v26 = bbio;
    v27 = atomic_load(&bbio->retry_reason);
    if (v27 == -1)
    {
      break;
    }

    while (1)
    {
      if (!v27)
      {
        goto LABEL_73;
      }

      v28 = v27;
      atomic_compare_exchange_strong(&bbio->retry_reason, &v28, v27 - 1);
      if (v28 == v27)
      {
        break;
      }

      v27 = v28;
      if (v28 == -1)
      {
        goto LABEL_55;
      }
    }

    if (v27 != 1)
    {
      break;
    }

    bbio = bbio->ptr;
    v26->ptr = 0;
    if (v26->method)
    {
      destroy = v26->method->destroy;
      if (destroy)
      {
        (destroy)(v26);
      }
    }

    CRYPTO_free_ex_data(&g_ex_data_class, v26, &v26->callback);
    v31 = *&v26[-1].ex_data.dummy;
    p_dummy = &v26[-1].ex_data.dummy;
    v32 = v31 + 8;
    if (v31 != -8)
    {
      bzero(p_dummy, v32);
    }

    free(p_dummy);
  }

  while (bbio);
LABEL_55:
  wbio = this->wbio;
  this->wbio = 0;
  while (wbio)
  {
    v37 = wbio;
    v38 = atomic_load(&wbio->retry_reason);
    if (v38 == -1)
    {
      break;
    }

    while (1)
    {
      if (!v38)
      {
        goto LABEL_73;
      }

      v39 = v38;
      atomic_compare_exchange_strong(&wbio->retry_reason, &v39, v38 - 1);
      if (v39 == v38)
      {
        break;
      }

      v38 = v39;
      if (v39 == -1)
      {
        goto LABEL_68;
      }
    }

    if (v38 != 1)
    {
      break;
    }

    wbio = wbio->ptr;
    v37->ptr = 0;
    if (v37->method)
    {
      v40 = v37->method->destroy;
      if (v40)
      {
        (v40)(v37);
      }
    }

    CRYPTO_free_ex_data(&g_ex_data_class, v37, &v37->callback);
    v42 = *&v37[-1].ex_data.dummy;
    v41 = &v37[-1].ex_data.dummy;
    v43 = v42 + 8;
    if (v42 != -8)
    {
      bzero(v41, v43);
    }

    free(v41);
  }

LABEL_68:
  v44 = this->method;
  this->method = 0;
  if (v44)
  {
    bssl::SSL_CONFIG::~SSL_CONFIG(v44);
    v46 = *(v44 - 1);
    v45 = v44 - 8;
    v47 = v46 + 8;
    if (v46 != -8)
    {
      bzero(v45, v47);
    }

    free(v45);
  }
}

void std::unique_ptr<bssl::SSL_CONFIG,bssl::internal::Deleter>::reset[abi:sn200100](bssl::SSL_CONFIG **a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    bssl::SSL_CONFIG::~SSL_CONFIG(v1);
    v3 = *(v1 - 1);
    v2 = v1 - 8;
    v4 = v3 + 8;
    if (v3 != -8)
    {
      bzero(v2, v4);
    }

    free(v2);
  }
}

SSL *__cdecl SSL_new(SSL_CTX *ctx)
{
  if (!ctx)
  {
    ERR_put_error(16, 0, 185, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_lib.cc", 496);
    return 0;
  }

  v2 = malloc_type_malloc(0xB0uLL, 0xB4E622C9uLL);
  if (!v2)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  v3 = v2;
  *v2 = 168;
  *(v2 + 1) = ctx->cipher_list;
  v4 = (v2 + 8);
  *(v2 + 2) = 0;
  *(v2 + 12) = WORD1(ctx[1].cipher_list_by_id);
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 8) = 0;
  *(v2 + 72) = *ctx->tlsext_tick_aes_key;
  *(v2 + 22) = 400;
  *(v2 + 12) = 0;
  *(v2 + 13) = 0;
  v5 = atomic_load(ctx);
  if (v5 != -1)
  {
    for (i = v5; i != -1; v5 = i)
    {
      atomic_compare_exchange_strong(ctx, &i, v5 + 1);
      if (i == v5)
      {
        break;
      }
    }
  }

  *(v2 + 14) = ctx;
  v7 = atomic_load(ctx);
  if (v7 != -1)
  {
    for (j = v7; j != -1; v7 = j)
    {
      atomic_compare_exchange_strong(ctx, &j, v7 + 1);
      if (j == v7)
      {
        break;
      }
    }
  }

  *(v2 + 15) = ctx;
  v9 = *(v2 + 14);
  *(v2 + 17) = *(v9 + 440);
  *(v2 + 36) = *(v9 + 448);
  *(v2 + 19) = 0;
  *(v2 + 20) = 0;
  *(v2 + 42) = 0;
  v10 = v2[172];
  v2[172] = v10 & 0xFE;
  v11 = *(v9 + 792) & 2 | v10 & 0xFC;
  v2[172] = v11;
  v12 = *(v9 + 793) & 4 | v11 & 0xFB;
  v2[172] = v12;
  v2[172] = v12 & 0xF7 | (*(v9 + 792) >> 10) & 8;
  *(v2 + 16) = 0;
  v13 = malloc_type_malloc(0x118uLL, 0xB4E622C9uLL);
  if (v13)
  {
    *v13 = 272;
    *(v13 + 1) = v4;
    v14 = v13 + 8;
    *(v13 + 4) = 0;
    v13[128] = 0;
    *(v13 + 24) = 0u;
    *(v13 + 40) = 0u;
    *(v13 + 56) = 0u;
    *(v13 + 72) = 0u;
    *(v13 + 88) = 0u;
    *(v13 + 97) = 0u;
    *(v13 + 152) = 0u;
    *(v13 + 168) = 0u;
    *(v13 + 184) = 0u;
    *(v13 + 200) = 0u;
    *(v13 + 216) = 0u;
    *(v13 + 232) = 0u;
    *(v13 + 248) = 0u;
    *(v13 + 136) = 0u;
    *(v13 + 261) = 0u;
    *(v13 + 277) = *(v13 + 277) & 0xD800 | 0x2010;
    v15 = v3[2];
    v3[2] = v13 + 8;
    if (!v15)
    {
      goto LABEL_13;
    }

LABEL_18:
    bssl::SSL_CONFIG::~SSL_CONFIG(v15);
    v17 = *(v15 - 1);
    v16 = v15 - 8;
    v18 = v17 + 8;
    if (v17 != -8)
    {
      bzero(v16, v18);
    }

    free(v16);
    v14 = v3[2];
    if (!v14)
    {
      goto LABEL_96;
    }

    goto LABEL_21;
  }

  ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  v14 = 0;
  v15 = v3[2];
  v3[2] = 0;
  if (v15)
  {
    goto LABEL_18;
  }

LABEL_13:
  if (!v14)
  {
    goto LABEL_96;
  }

LABEL_21:
  *(v14 + 2) = ctx->rsa_md5;
  bssl::ssl_cert_dup(*&ctx->tlsext_tick_hmac_key[8], &v115);
  v20 = v3[2];
  v21 = v115;
  v115 = 0;
  v22 = *(v20 + 32);
  *(v20 + 32) = v21;
  if (v22)
  {
    bssl::CERT::~CERT(v22);
    v24 = *(v22 - 1);
    v23 = v22 - 8;
    v25 = v24 + 8;
    if (v24 != -8)
    {
      bzero(v23, v25);
    }

    free(v23);
    v26 = v115;
    v115 = 0;
    if (v26)
    {
      bssl::CERT::~CERT(v26);
      v28 = *(v26 - 1);
      v27 = v26 - 8;
      v29 = v28 + 8;
      if (v28 != -8)
      {
        bzero(v27, v29);
      }

      free(v27);
    }
  }

  v30 = v3[2];
  if (!*(v30 + 32))
  {
    goto LABEL_96;
  }

  *(v30 + 268) = ctx->tlsext_ticket_key_cb;
  v31 = *ctx->sid_ctx;
  *(v30 + 40) = ctx->tlsext_status_cb;
  *(v30 + 48) = v31;
  *(v30 + 269) = *(v30 + 269) & 0xFFDF | (32 * (ctx[1].mode & 1));
  *(v3[2] + 269) = *(v3[2] + 269) & 0xFBFF | (16 * LOWORD(ctx[1].mode)) & 0x400;
  *(v3[2] + 269) = *(v3[2] + 269) & 0xF7FF | ctx[1].mode & 0x800;
  *(v3[2] + 269) = *(v3[2] + 269) & 0xEFFF | ctx[1].mode & 0x1000;
  v32 = v3[2];
  *(v32 + 264) = ctx[1].info_callback;
  v34 = (v32 + 128);
  v33 = *(v32 + 128);
  client_cert_cb = ctx[1].client_cert_cb;
  app_gen_cookie_cb = ctx[1].app_gen_cookie_cb;
  v37 = *(v32 + 136);
  if (v37)
  {
    v38 = v33 - 2;
    do
    {
      v38 += 2;
      if (!v38)
      {
        goto LABEL_132;
      }
    }

    while (--v37);
  }

  if (v33)
  {
    v40 = *(v33 - 8);
    v39 = (v33 - 8);
    v41 = v40 + 8;
    if (v40 != -8)
    {
      bzero(v39, v41);
    }

    free(v39);
  }

  *v34 = 0;
  *(v32 + 136) = 0;
  if (!app_gen_cookie_cb)
  {
    goto LABEL_56;
  }

  if ((app_gen_cookie_cb & 0x8000000000000000) != 0)
  {
    goto LABEL_95;
  }

  if (app_gen_cookie_cb > 0x7FFFFFFFFFFFFFFBLL)
  {
    goto LABEL_94;
  }

  result = malloc_type_malloc(2 * app_gen_cookie_cb + 8, 0xB4E622C9uLL);
  if (!result)
  {
    goto LABEL_94;
  }

  *&result->version = 2 * app_gen_cookie_cb;
  p_method = &result->method;
  *(v32 + 128) = &result->method;
  *(v32 + 136) = app_gen_cookie_cb;
  v43 = (app_gen_cookie_cb - 1) & 0x7FFFFFFFFFFFFFFFLL;
  if (v43 < 3)
  {
    v44 = client_cert_cb;
    goto LABEL_55;
  }

  v44 = client_cert_cb;
  if ((result - client_cert_cb + 8) < 0x20)
  {
    goto LABEL_55;
  }

  v45 = v43 + 1;
  if (v43 >= 0xF)
  {
    v46 = v45 & 0xFFFFFFFFFFFFFFF0;
    v47 = (client_cert_cb + 16);
    p_wbio = &result->wbio;
    v49 = v45 & 0xFFFFFFFFFFFFFFF0;
    do
    {
      v50 = *v47;
      *(p_wbio - 1) = *(v47 - 1);
      *p_wbio = v50;
      v47 += 2;
      p_wbio += 4;
      v49 -= 16;
    }

    while (v49);
    if (v45 == v46)
    {
      goto LABEL_56;
    }

    if ((v45 & 0xC) != 0)
    {
      goto LABEL_50;
    }

    v44 = (client_cert_cb + 2 * v46);
    p_method = (p_method + 2 * v46);
    do
    {
LABEL_55:
      v56 = *v44;
      v44 = (v44 + 2);
      *p_method = v56;
      p_method = (p_method + 2);
    }

    while (v44 != (client_cert_cb + 2 * app_gen_cookie_cb));
    goto LABEL_56;
  }

  v46 = 0;
LABEL_50:
  v51 = 2 * (v45 & 0xFFFFFFFFFFFFFFFCLL);
  p_method = (p_method + v51);
  v44 = (client_cert_cb + v51);
  v52 = (client_cert_cb + 2 * v46);
  v53 = (&result->method + 2 * v46);
  v54 = v46 - (v45 & 0xFFFFFFFFFFFFFFFCLL);
  do
  {
    v55 = *v52++;
    *v53++ = v55;
    v54 += 4;
  }

  while (v54);
  if (v45 != (v45 & 0xFFFFFFFFFFFFFFFCLL))
  {
    goto LABEL_55;
  }

LABEL_56:
  v57 = v3[2];
  v34 = (v57 + 152);
  v58 = *(v57 + 152);
  v59 = *&ctx[1].stats.sess_cache_full;
  v60 = *&ctx[1].stats.sess_cb_hit;
  v61 = *(v57 + 160);
  if (v61 && v61 - 1 >= -v58)
  {
    goto LABEL_132;
  }

  if (v58)
  {
    v63 = *(v58 - 8);
    v62 = (v58 - 8);
    v64 = v63 + 8;
    if (v63 != -8)
    {
      bzero(v62, v64);
    }

    free(v62);
  }

  *v34 = 0;
  *(v57 + 160) = 0;
  if (!v60)
  {
    goto LABEL_80;
  }

  if (v60 > 0xFFFFFFFFFFFFFFF7)
  {
    goto LABEL_94;
  }

  result = malloc_type_malloc(v60 + 8, 0xB4E622C9uLL);
  if (!result)
  {
    goto LABEL_94;
  }

  *&result->version = v60;
  v65 = &result->method;
  *(v57 + 152) = &result->method;
  *(v57 + 160) = v60;
  if (v60 < 8)
  {
    v66 = v59;
    goto LABEL_79;
  }

  v66 = v59;
  if (&result->method - v59 < 0x20)
  {
    goto LABEL_79;
  }

  if (v60 >= 0x20)
  {
    v67 = v60 & 0xFFFFFFFFFFFFFFE0;
    v68 = (v59 + 16);
    v69 = &result->wbio;
    v70 = v60 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v71 = *v68;
      *(v69 - 1) = *(v68 - 1);
      *v69 = v71;
      v68 += 2;
      v69 += 4;
      v70 -= 32;
    }

    while (v70);
    if (v60 == v67)
    {
      goto LABEL_80;
    }

    if ((v60 & 0x18) != 0)
    {
      goto LABEL_74;
    }

    v66 = (v59 + v67);
    v65 = (v65 + v67);
    do
    {
LABEL_79:
      v76 = *v66++;
      *v65 = v76;
      v65 = (v65 + 1);
    }

    while (v66 != (v59 + v60));
    goto LABEL_80;
  }

  v67 = 0;
LABEL_74:
  v65 = (v65 + (v60 & 0xFFFFFFFFFFFFFFF8));
  v66 = (v59 + (v60 & 0xFFFFFFFFFFFFFFF8));
  v72 = (v59 + v67);
  v73 = (&result->method + v67);
  v74 = v67 - (v60 & 0xFFFFFFFFFFFFFFF8);
  do
  {
    v75 = *v72++;
    *v73++ = v75;
    v74 += 8;
  }

  while (v74);
  if (v60 != (v60 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_79;
  }

LABEL_80:
  v77 = v3[2];
  v34 = (v77 + 224);
  v78 = *(v77 + 224);
  client_CA = ctx[1].client_CA;
  options = ctx[1].options;
  v81 = *(v77 + 232);
  if (v81)
  {
    v82 = v78 - 2;
    do
    {
      v82 += 2;
      if (!v82)
      {
        goto LABEL_132;
      }
    }

    while (--v81);
  }

  if (v78)
  {
    v84 = *(v78 - 8);
    v83 = (v78 - 8);
    v85 = v84 + 8;
    if (v84 != -8)
    {
      bzero(v83, v85);
    }

    free(v83);
  }

  *v34 = 0;
  *(v77 + 232) = 0;
  if (!options)
  {
    goto LABEL_112;
  }

  if ((options & 0x8000000000000000) != 0)
  {
LABEL_95:
    ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/../crypto/mem_internal.h", 213);
    goto LABEL_96;
  }

  if (options > 0x7FFFFFFFFFFFFFFBLL || (v86 = malloc_type_malloc(2 * options + 8, 0xB4E622C9uLL)) == 0)
  {
LABEL_94:
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    *v34 = 0;
    goto LABEL_96;
  }

  *v86 = 2 * options;
  v87 = v86 + 1;
  *(v77 + 224) = v86 + 1;
  *(v77 + 232) = options;
  v88 = (options - 1) & 0x7FFFFFFFFFFFFFFFLL;
  if (v88 < 3)
  {
    v89 = client_CA;
    goto LABEL_111;
  }

  v89 = client_CA;
  if ((v86 - client_CA + 8) < 0x20)
  {
    goto LABEL_111;
  }

  v90 = v88 + 1;
  if (v88 >= 0xF)
  {
    v91 = v90 & 0xFFFFFFFFFFFFFFF0;
    p_sorted = &client_CA->sorted;
    v93 = v86 + 3;
    v94 = v90 & 0xFFFFFFFFFFFFFFF0;
    do
    {
      v95 = *p_sorted;
      *(v93 - 1) = *(p_sorted - 1);
      *v93 = v95;
      p_sorted += 8;
      v93 += 2;
      v94 -= 16;
    }

    while (v94);
    if (v90 == v91)
    {
      goto LABEL_112;
    }

    if ((v90 & 0xC) != 0)
    {
      goto LABEL_106;
    }

    v89 = (client_CA + 2 * v91);
    v87 += v91;
    do
    {
LABEL_111:
      num = v89->num;
      v89 = (v89 + 2);
      *v87++ = num;
    }

    while (v89 != (client_CA + 2 * options));
    goto LABEL_112;
  }

  v91 = 0;
LABEL_106:
  v96 = 2 * (v90 & 0xFFFFFFFFFFFFFFFCLL);
  v87 = (v87 + v96);
  v89 = (client_CA + v96);
  v97 = (&client_CA->num + 2 * v91);
  v98 = (v86 + 2 * v91 + 8);
  v99 = v91 - (v90 & 0xFFFFFFFFFFFFFFFCLL);
  do
  {
    v100 = *v97++;
    *v98++ = v100;
    v99 += 4;
  }

  while (v99);
  if (v90 != (v90 & 0xFFFFFFFFFFFFFFFCLL))
  {
    goto LABEL_111;
  }

LABEL_112:
  if (ctx->tlsext_tick_key_name[0] != 1)
  {
    goto LABEL_116;
  }

  result = _ZNSt3__18optionalIN4bssl5ArrayIhEEE7emplaceB8sn200100IJEvEERS3_DpOT_((v3[2] + 104));
  v102 = v3[2];
  if (*(v102 + 120) & 1) != 0 && (ctx->tlsext_tick_key_name[0])
  {
    if (bssl::Array<unsigned char>::CopyFrom(v102 + 104, ctx->tlsext_servername_callback, ctx->tlsext_servername_arg))
    {
LABEL_116:
      v103 = *&ctx[1].session_cache_mode;
      v104 = v3[2];
      if (!v103)
      {
        goto LABEL_130;
      }

      v105 = OPENSSL_strdup(v103);
      v106 = *(v104 + 56);
      *(v104 + 56) = v105;
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

      v104 = v3[2];
      if (*(v104 + 56))
      {
LABEL_130:
        *(v104 + 64) = *&ctx[1].session_timeout;
        *(v104 + 269) = *(v104 + 269) & 0xFFF7 | (LOWORD(ctx[1].mode) >> 1) & 8;
        app_verify_cookie_cb = ctx[1].app_verify_cookie_cb;
        if (app_verify_cookie_cb)
        {
          v111 = atomic_load(app_verify_cookie_cb);
          if (v111 != -1)
          {
            for (k = v111; k != -1; v111 = k)
            {
              atomic_compare_exchange_strong(app_verify_cookie_cb, &k, v111 + 1);
              if (k == v111)
              {
                break;
              }
            }
          }
        }

        v113 = v3[2];
        v114 = *(v113 + 144);
        *(v113 + 144) = app_verify_cookie_cb;
        if (v114)
        {
          EVP_PKEY_free(v114);
          v113 = v3[2];
        }

        *(v113 + 269) = *(v113 + 269) & 0xFFFD | (LOWORD(ctx[1].mode) >> 2) & 2;
        *(v3[2] + 269) = *(v3[2] + 269) & 0xFFFB | ctx[1].mode & 4;
        *(v3[2] + 269) = *(v3[2] + 269) & 0xFFBF | (LOWORD(ctx[1].mode) >> 3) & 0x40;
        v3[20] = ctx->md5;
        if ((*(v3[1] + 8))(v4))
        {
          if ((*(*(v3[14] + 16) + 88))(*(v3[7] + 280)))
          {
            return v4;
          }
        }
      }
    }

LABEL_96:
    ssl_st::~ssl_st(v4);
    free(v3);
    return 0;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t *_ZNSt3__18optionalIN4bssl5ArrayIhEEE7emplaceB8sn200100IJEvEERS3_DpOT_(uint64_t *result)
{
  if (*(result + 16) != 1)
  {
LABEL_8:
    *result = 0;
    result[1] = 0;
    *(result + 16) = 1;
    return result;
  }

  v2 = *result;
  v1 = result[1];
  if (!v1 || v1 - 1 < -v2)
  {
    if (v2)
    {
      v3 = result;
      v5 = *(v2 - 8);
      v4 = (v2 - 8);
      v6 = v5 + 8;
      if (v5 != -8)
      {
        bzero(v4, v6);
      }

      free(v4);
      result = v3;
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void bssl::SSL_CONFIG::~SSL_CONFIG(bssl::SSL_CONFIG *this)
{
  v2 = *(*this + 104);
  if (v2)
  {
    (*(*(v2 + 16) + 96))(this);
  }

  v4 = *(this + 31);
  v3 = *(this + 32);
  if (v3 && v3 - 1 >= -v4)
  {
    goto LABEL_145;
  }

  if (v4)
  {
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    v7 = v6 + 8;
    if (v6 != -8)
    {
      bzero(v5, v7);
    }

    free(v5);
  }

  *(this + 31) = 0;
  *(this + 32) = 0;
  v8 = *(this + 30);
  *(this + 30) = 0;
  if (v8)
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      v11 = *(v9 - 8);
      v10 = (v9 - 8);
      v12 = v11 + 8;
      if (v11 != -8)
      {
        bzero(v10, v12);
      }

      free(v10);
    }

    v14 = *(v8 - 8);
    v13 = (v8 - 8);
    v15 = v14 + 8;
    if (v14 != -8)
    {
      bzero(v13, v15);
    }

    free(v13);
  }

  v17 = *(this + 28);
  v16 = *(this + 29);
  if (v16)
  {
    v18 = v17 - 2;
    while (1)
    {
      v18 += 2;
      if (!v18)
      {
        break;
      }

      if (!--v16)
      {
        goto LABEL_21;
      }
    }

LABEL_145:
    __break(1u);
LABEL_146:
    abort();
  }

LABEL_21:
  if (v17)
  {
    v20 = *(v17 - 8);
    v19 = (v17 - 8);
    v21 = v20 + 8;
    if (v20 != -8)
    {
      bzero(v19, v21);
    }

    free(v19);
  }

  *(this + 28) = 0;
  *(this + 29) = 0;
  v23 = *(this + 26);
  v22 = *(this + 27);
  if (v22 && v22 - 1 >= -v23)
  {
    goto LABEL_145;
  }

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

  *(this + 26) = 0;
  *(this + 27) = 0;
  v28 = *(this + 24);
  v27 = *(this + 25);
  if (v27)
  {
    if (v27 - 1 >= -v28)
    {
      goto LABEL_145;
    }
  }

  if (v28)
  {
    v30 = *(v28 - 8);
    v29 = (v28 - 8);
    v31 = v30 + 8;
    if (v30 != -8)
    {
      bzero(v29, v31);
    }

    free(v29);
  }

  *(this + 24) = 0;
  *(this + 25) = 0;
  v32 = *(this + 21);
  v34 = *(this + 22);
  v33 = (this + 168);
  if (v34)
  {
    do
    {
      if (!v32)
      {
        goto LABEL_145;
      }

      v39 = v32[2];
      v38 = v32[3];
      if (v38)
      {
        if (v38 - 1 >= -v39)
        {
          goto LABEL_145;
        }
      }

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

      v32[2] = 0;
      v32[3] = 0;
      v44 = *v32;
      v43 = v32[1];
      if (v43)
      {
        if (v43 - 1 >= -v44)
        {
          goto LABEL_145;
        }
      }

      if (v44)
      {
        v46 = *(v44 - 8);
        v45 = (v44 - 8);
        v47 = v46 + 8;
        if (v46 != -8)
        {
          bzero(v45, v47);
        }

        free(v45);
      }

      *v32 = 0;
      v32[1] = 0;
      v32 += 4;
      --v34;
    }

    while (v34);
    v32 = *v33;
    if (!*v33)
    {
LABEL_39:
      *v33 = 0;
      *(this + 22) = 0;
      *(this + 23) = 0;
      v36 = *(this + 19);
      v35 = *(this + 20);
      v37 = (this + 152);
      if (!v35)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    }
  }

  else if (!v32)
  {
    goto LABEL_39;
  }

  v49 = *(v32 - 1);
  v48 = v32 - 1;
  v50 = v49 + 8;
  if (v49 != -8)
  {
    bzero(v48, v50);
  }

  free(v48);
  *v33 = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  v36 = *(this + 19);
  v35 = *(this + 20);
  v37 = (this + 152);
  if (!v35)
  {
    goto LABEL_60;
  }

LABEL_59:
  if (v35 - 1 >= -v36)
  {
    goto LABEL_145;
  }

LABEL_60:
  if (v36)
  {
    v52 = *(v36 - 8);
    v51 = (v36 - 8);
    v53 = v52 + 8;
    if (v52 != -8)
    {
      bzero(v51, v53);
    }

    free(v51);
  }

  *v37 = 0;
  v37[1] = 0;
  v54 = *(this + 18);
  *(this + 18) = 0;
  if (!v54)
  {
    goto LABEL_71;
  }

  v55 = atomic_load(v54);
  if (v55 == -1)
  {
    goto LABEL_71;
  }

  while (1)
  {
    if (!v55)
    {
      goto LABEL_146;
    }

    v56 = v55;
    atomic_compare_exchange_strong(v54, &v56, v55 - 1);
    if (v56 == v55)
    {
      break;
    }

    v55 = v56;
    if (v56 == -1)
    {
      goto LABEL_71;
    }
  }

  if (v55 == 1)
  {
    v115 = *(v54 + 16);
    if (v115)
    {
      v116 = *(v115 + 160);
      if (v116)
      {
        v116(v54);
        *(v54 + 8) = 0;
        *(v54 + 4) = 0;
      }
    }

    v118 = *(v54 - 8);
    v117 = (v54 - 8);
    v119 = v118 + 8;
    if (v118 != -8)
    {
      bzero(v117, v119);
    }

    free(v117);
    v58 = *(this + 16);
    v57 = *(this + 17);
    v59 = (this + 128);
    if (v57)
    {
LABEL_72:
      v60 = v58 - 2;
      do
      {
        v60 += 2;
        if (!v60)
        {
          goto LABEL_145;
        }
      }

      while (--v57);
    }
  }

  else
  {
LABEL_71:
    v58 = *(this + 16);
    v57 = *(this + 17);
    v59 = (this + 128);
    if (v57)
    {
      goto LABEL_72;
    }
  }

  if (v58)
  {
    v62 = *(v58 - 8);
    v61 = (v58 - 8);
    v63 = v62 + 8;
    if (v62 != -8)
    {
      bzero(v61, v63);
    }

    free(v61);
  }

  *v59 = 0;
  v59[1] = 0;
  if (*(this + 120) == 1)
  {
    v65 = *(this + 13);
    v64 = *(this + 14);
    if (v64 && v64 - 1 >= -v65)
    {
      goto LABEL_145;
    }

    if (v65)
    {
      v67 = *(v65 - 8);
      v66 = (v65 - 8);
      v68 = v67 + 8;
      if (v67 != -8)
      {
        bzero(v66, v68);
      }

      free(v66);
    }

    *(this + 13) = 0;
    *(this + 14) = 0;
  }

  v69 = *(this + 12);
  *(this + 12) = 0;
  if (v69)
  {
    v70 = *v69;
    if (*v69)
    {
      v71 = 0;
      do
      {
        v72 = *(v69[1] + 8 * v71);
        if (v72)
        {
          CRYPTO_BUFFER_free(v72);
          v70 = *v69;
        }

        ++v71;
      }

      while (v71 < v70);
    }

    v73 = v69[1];
    if (v73)
    {
      v75 = *(v73 - 8);
      v74 = (v73 - 8);
      v76 = v75 + 8;
      if (v75 != -8)
      {
        bzero(v74, v76);
      }

      free(v74);
    }

    v78 = *(v69 - 1);
    v77 = v69 - 1;
    v79 = v78 + 8;
    if (v78 != -8)
    {
      bzero(v77, v79);
    }

    free(v77);
  }

  v80 = *(this + 10);
  *(this + 10) = 0;
  if (v80)
  {
    v81 = *v80;
    if (*v80)
    {
      v82 = 0;
      do
      {
        v83 = *(v80[1] + 8 * v82);
        if (v83)
        {
          CRYPTO_BUFFER_free(v83);
          v81 = *v80;
        }

        ++v82;
      }

      while (v82 < v81);
    }

    v84 = v80[1];
    if (v84)
    {
      v86 = *(v84 - 8);
      v85 = (v84 - 8);
      v87 = v86 + 8;
      if (v86 != -8)
      {
        bzero(v85, v87);
      }

      free(v85);
    }

    v89 = *(v80 - 1);
    v88 = v80 - 1;
    v90 = v89 + 8;
    if (v89 != -8)
    {
      bzero(v88, v90);
    }

    free(v88);
  }

  v91 = *(this + 7);
  *(this + 7) = 0;
  if (v91)
  {
    v93 = *(v91 - 8);
    v92 = (v91 - 8);
    v94 = v93 + 8;
    if (v93 != -8)
    {
      bzero(v92, v94);
    }

    free(v92);
  }

  v95 = *(this + 4);
  *(this + 4) = 0;
  if (v95)
  {
    bssl::CERT::~CERT(v95);
    v97 = *(v95 - 1);
    v96 = v95 - 8;
    v98 = v97 + 8;
    if (v97 != -8)
    {
      bzero(v96, v98);
    }

    free(v96);
  }

  v99 = *(this + 3);
  *(this + 3) = 0;
  if (v99)
  {
    v100 = v99[1];
    if (v100)
    {
      v102 = *(v100 - 8);
      v101 = (v100 - 8);
      v103 = v102 + 8;
      if (v102 != -8)
      {
        bzero(v101, v103);
      }

      free(v101);
    }

    v104 = *v99;
    *v99 = 0;
    if (v104)
    {
      v105 = *(v104 + 8);
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

      v110 = *(v104 - 8);
      v109 = (v104 - 8);
      v111 = v110 + 8;
      if (v110 != -8)
      {
        bzero(v109, v111);
      }

      free(v109);
    }

    v113 = *(v99 - 1);
    v112 = v99 - 1;
    v114 = v113 + 8;
    if (v113 != -8)
    {
      bzero(v112, v114);
    }

    free(v112);
  }
}

void SSL_set_bio(SSL *s, BIO *rbio, BIO *wbio)
{
  v3 = s->wbio;
  if (*&s->wbio == __PAIR128__(wbio, rbio))
  {
    return;
  }

  if (rbio && rbio == wbio)
  {
    v4 = atomic_load(&rbio->retry_reason);
    if (v4 != -1)
    {
      for (i = v4; i != -1; v4 = i)
      {
        atomic_compare_exchange_strong(&rbio->retry_reason, &i, v4 + 1);
        if (i == v4)
        {
          break;
        }
      }
    }

    v3 = s->wbio;
  }

  bbio = s->bbio;
  if (v3 != rbio)
  {
    s->wbio = rbio;
    if (bbio == wbio && v3 != bbio)
    {
      bbio = v3;
      if (!v3)
      {
        return;
      }

      goto LABEL_32;
    }

    if (v3)
    {
      do
      {
        v8 = v3;
        v9 = atomic_load(&v3->retry_reason);
        if (v9 == -1)
        {
          break;
        }

        while (1)
        {
          if (!v9)
          {
LABEL_45:
            abort();
          }

          v10 = v9;
          atomic_compare_exchange_strong(&v3->retry_reason, &v10, v9 - 1);
          if (v10 == v9)
          {
            break;
          }

          v9 = v10;
          if (v10 == -1)
          {
            goto LABEL_28;
          }
        }

        if (v9 != 1)
        {
          break;
        }

        v11 = s;
        v12 = wbio;
        v3 = v3->ptr;
        v8->ptr = 0;
        if (v8->method)
        {
          destroy = v8->method->destroy;
          if (destroy)
          {
            (destroy)(v8);
          }
        }

        CRYPTO_free_ex_data(&g_ex_data_class, v8, &v8->callback);
        v15 = *&v8[-1].ex_data.dummy;
        p_dummy = &v8[-1].ex_data.dummy;
        v16 = v15 + 8;
        if (v15 != -8)
        {
          bzero(p_dummy, v16);
        }

        free(p_dummy);
        wbio = v12;
        s = v11;
      }

      while (v3);
LABEL_28:
      bbio = s->bbio;
    }
  }

  s->bbio = wbio;
  if (!bbio)
  {
    return;
  }

  do
  {
LABEL_32:
    v17 = bbio;
    v18 = atomic_load(&bbio->retry_reason);
    if (v18 == -1)
    {
      break;
    }

    while (1)
    {
      if (!v18)
      {
        goto LABEL_45;
      }

      v19 = v18;
      atomic_compare_exchange_strong(&bbio->retry_reason, &v19, v18 - 1);
      if (v19 == v18)
      {
        break;
      }

      v18 = v19;
      if (v19 == -1)
      {
        return;
      }
    }

    if (v18 != 1)
    {
      break;
    }

    bbio = bbio->ptr;
    v17->ptr = 0;
    if (v17->method)
    {
      v20 = v17->method->destroy;
      if (v20)
      {
        (v20)(v17);
      }
    }

    CRYPTO_free_ex_data(&g_ex_data_class, v17, &v17->callback);
    v22 = *&v17[-1].ex_data.dummy;
    v21 = &v17[-1].ex_data.dummy;
    v23 = v22 + 8;
    if (v22 != -8)
    {
      bzero(v21, v23);
    }

    free(v21);
  }

  while (bbio);
}

int SSL_do_handshake(SSL *s)
{
  *(s->handshake_func + 49) = 0;
  ERR_clear_error();
  *__error() = 0;
  if (*&s->rwstate)
  {
    v3 = *(s->handshake_func + 35);
    if (!v3 || (*(v3 + 1616) & 8) != 0)
    {
      goto LABEL_21;
    }

    v18 = 0;
    p_method = bssl::ssl_run_handshake(v3, &v18, v2);
    if (BYTE4(s->msg_callback_arg))
    {
      v5 = 8194;
    }

    else
    {
      v5 = 4098;
    }

    v6 = *&s->init_num;
    if (v6 || (v6 = *(s->packet + 48)) != 0)
    {
      v7 = p_method;
      v6(s, v5, p_method);
      LODWORD(p_method) = v7;
    }

    if (p_method >= 1)
    {
      if (v18)
      {
        goto LABEL_21;
      }

      handshake_func = s->handshake_func;
      v9 = *(handshake_func + 35);
      *(handshake_func + 35) = 0;
      if (v9)
      {
        bssl::SSL_HANDSHAKE::~SSL_HANDSHAKE(v9);
        v11 = *(v9 - 1);
        v10 = v9 - 8;
        v12 = v11 + 8;
        if (v11 != -8)
        {
          bzero(v10, v12);
        }

        free(v10);
        handshake_func = s->handshake_func;
        if (*(handshake_func + 35))
        {
          goto LABEL_21;
        }
      }

      p_method = &s->method;
      method = s->method;
      if (!method || (*(&method[1].ssl_accept + 5) & 0x80) == 0)
      {
        goto LABEL_21;
      }

      if ((BYTE4(s->msg_callback_arg) & 1) != 0 || (**&s->version & 1) != 0 || *(handshake_func + 104) && (v14 = bssl::ssl_protocol_version(s, v5), p_method = &s->method, v14 > 0x303))
      {
LABEL_20:
        std::unique_ptr<bssl::SSL_CONFIG,bssl::internal::Deleter>::reset[abi:sn200100](p_method);
LABEL_21:
        LODWORD(p_method) = 1;
        return p_method;
      }

      v15 = p_method;
      msg_callback_arg = s->msg_callback_arg;
      LODWORD(p_method) = 1;
      if (msg_callback_arg != 4 && msg_callback_arg != 2)
      {
        p_method = v15;
        if (msg_callback_arg == 1 && !*(handshake_func + 48))
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }
  }

  else
  {
    ERR_put_error(16, 0, 134, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_lib.cc", 720);
    LODWORD(p_method) = -1;
  }

  return p_method;
}

int SSL_connect(SSL *ssl)
{
  if (!*&ssl->rwstate)
  {
    BYTE4(ssl->msg_callback_arg) &= ~1u;
    *&ssl->rwstate = bssl::ssl_client_handshake;
  }

  return SSL_do_handshake(ssl);
}

int SSL_accept(SSL *ssl)
{
  if (!*&ssl->rwstate)
  {
    BYTE4(ssl->msg_callback_arg) |= 1u;
    *&ssl->rwstate = bssl::ssl_server_handshake;
  }

  return SSL_do_handshake(ssl);
}

int SSL_read(SSL *ssl, void *buf, int num)
{
  if (ssl->msg_callback)
  {
    ERR_put_error(16, 0, 66, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_lib.cc", 925);
    LODWORD(v3) = -1;
    return v3;
  }

  LODWORD(v3) = num;
  result = ssl_read_impl(ssl);
  if (result >= 1)
  {
    if (v3 < 1)
    {
      return v3;
    }

    handshake_func = ssl->handshake_func;
    v8 = *(handshake_func + 17);
    if (v8 >= v3)
    {
      v3 = v3;
    }

    else
    {
      v3 = *(handshake_func + 17);
    }

    if (v8)
    {
      memcpy(buf, *(handshake_func + 16), v3);
      v9 = ssl->handshake_func;
      v10 = *(v9 + 17);
      v11 = v10 >= v3;
      v12 = v10 - v3;
      if (!v11)
      {
        abort();
      }

      *(v9 + 16) += v3;
      *(v9 + 17) = v12;
      v13 = ssl->handshake_func;
      if (*(v13 + 17) || *(v13 + 45))
      {
        return v3;
      }

      v14 = *(v13 + 10);
      if (v14 != v13 + 94)
      {
        free(v14);
      }

      *(v13 + 86) = 0;
      *(v13 + 10) = 0;
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ssl_read_impl(ssl_st *a1)
{
  *(a1->handshake_func + 49) = 0;
  ERR_clear_error();
  *__error() = 0;
  if (!*&a1->rwstate)
  {
    v4 = 226;
    v5 = 833;
LABEL_5:
    ERR_put_error(16, 0, v4, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_lib.cc", v5);
    return 0xFFFFFFFFLL;
  }

  handshake_func = a1->handshake_func;
  if (*(handshake_func + 43) == 2)
  {
    ERR_restore_state(*(handshake_func + 23));
    return 0xFFFFFFFFLL;
  }

  if (*(handshake_func + 17))
  {
    return 1;
  }

  while (1)
  {
    while (1)
    {
      while (1)
      {
        if ((*(handshake_func + 110) & 0x800) != 0)
        {
          *(handshake_func + 49) = 19;
          return 0xFFFFFFFFLL;
        }

        if (**&a1->version)
        {
          result = (*(*&a1->version + 136))(a1);
          if (result < 1)
          {
            return result;
          }
        }

        while (1)
        {
          v6 = *(a1->handshake_func + 35);
          if (!v6 || (*(v6 + 1616) & 0x1008) != 0)
          {
            break;
          }

          result = SSL_do_handshake(a1);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (!result)
          {
            v4 = 215;
            v5 = 866;
            goto LABEL_5;
          }
        }

        if ((*(*&a1->version + 24))(a1, v43))
        {
          break;
        }

        v42 = 50;
        v16 = a1->handshake_func;
        v17 = *(v16 + 10);
        v18 = *(v16 + 44);
        v19 = *(v16 + 45);
        v45 = 0;
        if (*(v16 + 43) == 2)
        {
          ERR_restore_state(*(v16 + 23));
          v42 = 0;
        }

        else
        {
          v23 = (*(*&a1->version + 64))(a1, v16 + 128, &v45, &v42, v17 + v18, v19);
          if (v23 != 4)
          {
            goto LABEL_35;
          }

          v24 = a1->handshake_func;
          *(v24 + 43) = 2;
          v25 = ERR_save_state();
          v26 = *(v24 + 23);
          *(v24 + 23) = v25;
          if (v26)
          {
            if (*(v26 + 8))
            {
              v27 = 0;
              v28 = 0;
              do
              {
                v29 = *v26 + v27;
                free(*(v29 + 8));
                *v29 = 0;
                *(v29 + 8) = 0;
                *(v29 + 16) = 0;
                ++v28;
                v27 += 24;
              }

              while (v28 < *(v26 + 8));
            }

            free(*v26);
            free(v26);
          }
        }

        v23 = 4;
LABEL_35:
        v41 = 0;
        result = bssl::ssl_handle_open_record(a1, &v41, v23, v45, v42);
        if (result > 0)
        {
          if ((v41 & 1) == 0)
          {
            *(a1->handshake_func + 214) = 0;
          }

          handshake_func = a1->handshake_func;
          result = 1;
          if (!*(handshake_func + 17))
          {
            continue;
          }
        }

        return result;
      }

      v13 = a1->handshake_func;
      v14 = *(v13 + 35);
      if (!v14)
      {
        break;
      }

      v15 = *(v14 + 1616);
      if ((v15 & 8) != 0)
      {
        break;
      }

      *(v14 + 1616) = v15 & 0xFFFFEFF7;
      handshake_func = a1->handshake_func;
      result = 1;
      if (*(handshake_func + 17))
      {
        return result;
      }
    }

    v20 = *(v13 + 104);
    if (v20 - 769 >= 4)
    {
      if (v20 == 65276)
      {
LABEL_26:
        bssl::tls13_post_handshake(a1, v43, v7, v8, v9, v10, v11, v12);
        if ((v22 & 1) == 0)
        {
          goto LABEL_77;
        }

        goto LABEL_66;
      }
    }

    else if (v20 > 0x303)
    {
      goto LABEL_26;
    }

    if (BYTE4(a1->msg_callback_arg))
    {
      v39 = 182;
      v40 = 774;
      goto LABEL_75;
    }

    if (v43[1] || v44)
    {
      bssl::ssl_send_alert(a1, 2, 50);
      ERR_put_error(16, 0, 110, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_lib.cc", 781);
      goto LABEL_77;
    }

    if (LODWORD(a1->msg_callback_arg) != 3)
    {
      *(v13 + 110) |= 0x800u;
      msg_callback_arg = a1->msg_callback_arg;
      if (msg_callback_arg != 4)
      {
        break;
      }
    }

LABEL_66:
    (*(*&a1->version + 32))(a1);
    handshake_func = a1->handshake_func;
    result = 1;
    if (*(handshake_func + 17))
    {
      return result;
    }
  }

  v31 = a1->handshake_func;
  if ((*(v31 + 110) & 0x800) == 0)
  {
    v39 = 66;
    v40 = 1629;
    goto LABEL_75;
  }

  if (BYTE4(a1->msg_callback_arg) & 1) != 0 || (**&a1->version)
  {
    goto LABEL_69;
  }

  v32 = *(v31 + 104);
  if (v32 - 769 >= 4)
  {
    if (v32 == 65276)
    {
      goto LABEL_69;
    }
  }

  else if (v32 > 0x303)
  {
    goto LABEL_69;
  }

  if (!a1->method || msg_callback_arg != 2 && (msg_callback_arg != 1 || *(v31 + 48)))
  {
LABEL_69:
    v39 = 182;
    v40 = 1634;
    goto LABEL_75;
  }

  if (*(v31 + 57) || *(v31 + 44))
  {
    v39 = 182;
    v40 = 1647;
    goto LABEL_75;
  }

  if (!*(v31 + 35))
  {
    bssl::ssl_handshake_new(a1, &v45);
    v33 = a1->handshake_func;
    v34 = v45;
    v35 = *(v33 + 35);
    *(v33 + 35) = v45;
    if (v35)
    {
      bssl::SSL_HANDSHAKE::~SSL_HANDSHAKE(v35);
      v37 = *(v35 - 1);
      v36 = v35 - 8;
      v38 = v37 + 8;
      if (v37 != -8)
      {
        bzero(v36, v38);
      }

      free(v36);
      v33 = a1->handshake_func;
      v34 = *(v33 + 35);
    }

    if (!v34)
    {
      goto LABEL_76;
    }

    *(v33 + 110) &= ~0x800u;
    ++*(a1->handshake_func + 48);
    goto LABEL_66;
  }

  v39 = 68;
  v40 = 1653;
LABEL_75:
  ERR_put_error(16, 0, v39, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_lib.cc", v40);
LABEL_76:
  bssl::ssl_send_alert(a1, 2, 100);
LABEL_77:
  bssl::ssl_set_read_error(a1->handshake_func, v21);
  return 0xFFFFFFFFLL;
}

int SSL_write(SSL *ssl, const void *buf, int num)
{
  *(ssl->handshake_func + 49) = 0;
  ERR_clear_error();
  *__error() = 0;
  if (ssl->msg_callback)
  {
    v6 = 66;
    v7 = 946;
LABEL_3:
    ERR_put_error(16, 0, v6, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_lib.cc", v7);
    return -1;
  }

  if (!*&ssl->rwstate)
  {
    v6 = 226;
    v7 = 951;
    goto LABEL_3;
  }

  v12 = 0;
  v11 = 0;
  if ((num & 0x80000000) == 0)
  {
    while (1)
    {
      v9 = *(ssl->handshake_func + 35);
      if (v9 && (*(v9 + 1616) & 0x2008) == 0)
      {
        result = SSL_do_handshake(ssl);
        if (result < 0)
        {
          return result;
        }

        if (!result)
        {
          break;
        }
      }

      result = (*(*&ssl->version + 72))(ssl, &v11, &v12, buf, num);
      if ((v11 & 1) == 0)
      {
        if (result >= 1)
        {
          return v12;
        }

        return result;
      }
    }

    goto LABEL_13;
  }

  v10 = *(ssl->handshake_func + 35);
  if (!v10 || (*(v10 + 1616) & 0x2008) != 0)
  {
LABEL_20:
    v6 = 111;
    v7 = 972;
    goto LABEL_3;
  }

  result = SSL_do_handshake(ssl);
  if ((result & 0x80000000) == 0)
  {
    if (!result)
    {
LABEL_13:
      v6 = 215;
      v7 = 966;
      goto LABEL_3;
    }

    goto LABEL_20;
  }

  return result;
}

int SSL_shutdown(SSL *s)
{
  *(s->handshake_func + 49) = 0;
  ERR_clear_error();
  *__error() = 0;
  if (!*&s->rwstate)
  {
    ERR_put_error(16, 0, 226, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_lib.cc", 1012);
    return -1;
  }

  handshake_func = s->handshake_func;
  v3 = *(handshake_func + 35);
  if (v3 && (*(v3 + 1616) & 8) == 0)
  {
    return 1;
  }

  if ((BYTE4(s->msg_callback_arg) & 2) != 0)
  {
    *(handshake_func + 172) = 0x100000001;
    return 1;
  }

  v5 = *(handshake_func + 44);
  if (!v5)
  {
    *(handshake_func + 44) = 1;
    *(handshake_func + 110) |= 0x400u;
    *(s->handshake_func + 461) = 1;
    *(s->handshake_func + 462) = 0;
    if (*(s->handshake_func + 57))
    {
      return -1;
    }

    if ((*(*&s->version + 80))(s) < 1)
    {
      return -1;
    }

    return *(s->handshake_func + 43) == 1;
  }

  if (v5 != 1)
  {
    ERR_put_error(16, 0, 194, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/s3_pkt.cc", 338);
    return -1;
  }

  if ((*(handshake_func + 110) & 0x400) != 0)
  {
    if ((*(*&s->version + 80))(s) < 1)
    {
      return -1;
    }

    return *(s->handshake_func + 43) == 1;
  }

  v6 = *(handshake_func + 43);
  if (v6 == 1)
  {
    return *(s->handshake_func + 43) == 1;
  }

  if (**&s->version)
  {
    if (v6 == 2)
    {
      ERR_restore_state(*(handshake_func + 23));
      return -1;
    }

    *(handshake_func + 43) = 1;
    return *(s->handshake_func + 43) == 1;
  }

  if (ssl_read_impl(s) >= 1)
  {
    ERR_put_error(16, 0, 291, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_lib.cc", 1059);
    return -1;
  }

  if (*(s->handshake_func + 43) == 1)
  {
    return *(s->handshake_func + 43) == 1;
  }

  return -1;
}

uint64_t SSL_set1_group_ids(uint64_t a1, unsigned __int16 *a2, unint64_t a3)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    return 0;
  }

  if (a3)
  {
    v3 = 2 * a3;
    v4 = 4588;
    v6 = a2;
    do
    {
      v7 = *v6;
      if (v7 > 0x1C)
      {
        if (v7 != 29 && v7 != 4588 && v7 != 25497)
        {
LABEL_28:
          v24 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_lib.cc";
          v25 = 16;
          v26 = 239;
          v27 = 1818;
          goto LABEL_31;
        }
      }

      else if (v7 != 23 && v7 != 24 && v7 != 25)
      {
        goto LABEL_28;
      }

      ++v6;
      v3 -= 2;
    }

    while (v3);
  }

  v9 = *(v5 + 128);
  v8 = *(v5 + 136);
  v10 = (v5 + 128);
  if (v8)
  {
    v11 = v9 - 2;
    while (1)
    {
      v11 += 2;
      if (!v11)
      {
        break;
      }

      v8 = (v8 - 1);
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_44:
    v22 = (v3 + 2 * v4);
    v8 += v4;
    goto LABEL_45;
  }

LABEL_17:
  if (v9)
  {
    v12 = a2;
    v13 = a3;
    v15 = *(v9 - 8);
    v14 = (v9 - 8);
    v16 = v15 + 8;
    if (v15 != -8)
    {
      bzero(v14, v16);
    }

    free(v14);
    a3 = v13;
    a2 = v12;
  }

  *v10 = 0;
  *(v5 + 136) = 0;
  if (!a3)
  {
    return 1;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (a3 > 0x7FFFFFFFFFFFFFFBLL || (v17 = a2, v18 = 2 * a3, v19 = a3, (v20 = malloc_type_malloc(2 * a3 + 8, 0xB4E622C9uLL)) == 0))
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      result = 0;
      *v10 = 0;
      return result;
    }

    v11 = v19;
    *v20 = v18;
    v8 = v20 + 1;
    *(v5 + 128) = v20 + 1;
    *(v5 + 136) = v19;
    v21 = (v19 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    v3 = v17;
    if (v21 < 3)
    {
      v22 = v17;
      goto LABEL_45;
    }

    v22 = v17;
    if (v20 - v17 + 8 < 0x20)
    {
LABEL_45:
      v38 = (v3 + 2 * v11);
      do
      {
        v39 = *v22++;
        *v8++ = v39;
      }

      while (v22 != v38);
      return 1;
    }

    v28 = v21 + 1;
    if (v21 >= 0xF)
    {
      v4 = v28 & 0xFFFFFFFFFFFFFFF0;
      v29 = (v17 + 16);
      v30 = v20 + 3;
      v31 = v28 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v32 = *v29;
        *(v30 - 1) = *(v29 - 1);
        *v30 = v32;
        v29 += 2;
        v30 += 2;
        v31 -= 16;
      }

      while (v31);
      if (v28 == v4)
      {
        return 1;
      }

      if ((v28 & 0xC) == 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v4 = 0;
    }

    v33 = 2 * (v28 & 0xFFFFFFFFFFFFFFFCLL);
    v8 = (v8 + v33);
    v22 = (v17 + v33);
    v34 = (v17 + 2 * v4);
    v35 = (v20 + 2 * v4 + 8);
    v36 = v4 - (v28 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v37 = *v34++;
      *v35++ = v37;
      v36 += 4;
    }

    while (v36);
    if (v28 == (v28 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return 1;
    }

    goto LABEL_45;
  }

  v24 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/../crypto/mem_internal.h";
  v25 = 14;
  v26 = 69;
  v27 = 213;
LABEL_31:
  ERR_put_error(v25, 0, v26, v24, v27);
  return 0;
}

uint64_t ssl_str_to_group_ids(bssl **a1, char *__s)
{
  v2 = __s;
  v4 = 0;
  v5 = 0;
  v6 = __s;
  do
  {
    v7 = strchr(v6, 58);
    ++v5;
    v6 = v7 + 1;
    v4 += 2;
  }

  while (v7);
  if (v5)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      v20 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/../crypto/mem_internal.h";
      v21 = 69;
      v22 = 213;
    }

    else
    {
      if (v5 <= 0x7FFFFFFFFFFFFFFBLL)
      {
        v8 = malloc_type_malloc(v4 + 8, 0xB4E622C9uLL);
        if (v8)
        {
          *v8 = v4;
          v9 = (v8 + 1);
          goto LABEL_9;
        }
      }

      v20 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v21 = 65;
      v22 = 217;
    }

    ERR_put_error(14, 0, v21, v20, v22);
    return 0;
  }

  v9 = 0;
LABEL_9:
  v10 = v5 + 1;
  v11 = v9;
  do
  {
    v13 = strchr(v2, 58);
    if (!--v10)
    {
      goto LABEL_36;
    }

    v14 = v13;
    if (v13)
    {
      if (!bssl::ssl_name_to_group_id(v11, v2, (v13 - v2)))
      {
LABEL_15:
        ERR_put_error(16, 0, 239, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_lib.cc", 1896);
        v15 = -v5;
        v16 = v9 - 2;
        do
        {
          v16 += 2;
          if (!v16)
          {
            goto LABEL_35;
          }

          ++v15;
        }

        while (v15);
        if (v9)
        {
          v18 = *(v9 - 1);
          v17 = v9 - 8;
          v19 = v18 + 8;
          if (v18 != -8)
          {
            bzero(v17, v19);
          }

          free(v17);
        }

        return 0;
      }
    }

    else
    {
      v12 = strlen(v2);
      if (!bssl::ssl_name_to_group_id(v11, v2, v12))
      {
        goto LABEL_15;
      }
    }

    v11 = (v11 + 2);
    v2 = v14 + 1;
  }

  while (v14);
  v24 = *a1;
  v23 = a1[1];
  if (v23)
  {
    v25 = v24 - 2;
    while (1)
    {
      v25 += 2;
      if (!v25)
      {
        break;
      }

      v23 = (v23 - 1);
      if (!v23)
      {
        goto LABEL_27;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    abort();
  }

LABEL_27:
  if (v24)
  {
    v27 = *(v24 - 1);
    v26 = v24 - 8;
    v28 = v27 + 8;
    if (v27 != -8)
    {
      bzero(v26, v28);
    }

    free(v26);
  }

  *a1 = v9;
  a1[1] = v5;
  return 1;
}

BOOL SSL_set_tlsext_host_name(uint64_t a1, char *__s)
{
  v4 = *(a1 + 144);
  *(a1 + 144) = 0;
  if (v4)
  {
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    v7 = v6 + 8;
    if (v6 != -8)
    {
      bzero(v5, v7);
    }

    free(v5);
  }

  if (!__s)
  {
    return 1;
  }

  if (strlen(__s) - 256 <= 0xFFFFFFFFFFFFFF00)
  {
    ERR_put_error(16, 0, 213, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_lib.cc", 2113);
    return 0;
  }

  v9 = strlen(__s);
  v10 = v9 + 1;
  if (v9 == -1)
  {
    goto LABEL_14;
  }

  if (v10 > 0xFFFFFFFFFFFFFFF7 || (v11 = malloc_type_malloc(v9 + 9, 0xB4E622C9uLL)) == 0)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  *v11 = v10;
  v12 = v11 + 1;
  memcpy(v11 + 1, __s, v10);
LABEL_15:
  v13 = *(a1 + 144);
  *(a1 + 144) = v12;
  if (v13)
  {
    v15 = *(v13 - 8);
    v14 = (v13 - 8);
    v16 = v15 + 8;
    if (v15 != -8)
    {
      bzero(v14, v16);
    }

    free(v14);
    v12 = *(a1 + 144);
  }

  return v12 != 0;
}

uint64_t SSL_set_alpn_protos(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = *(result + 8);
  if (!v3)
  {
    return 1;
  }

  if (!a3)
  {
LABEL_10:
    v12 = *(v3 + 152);
    v11 = *(v3 + 160);
    v13 = (v3 + 152);
    if (v11 && v11 - 1 >= -v12)
    {
      __break(1u);
      return result;
    }

    if (v12)
    {
      v15 = *(v12 - 8);
      v14 = (v12 - 8);
      v16 = v15 + 8;
      if (v15 != -8)
      {
        bzero(v14, v16);
      }

      free(v14);
    }

    *v13 = 0;
    *(v3 + 160) = 0;
    if (!a3)
    {
      return 0;
    }

    if (a3 > 0xFFFFFFFFFFFFFFF7 || (v17 = malloc_type_malloc(a3 + 8, 0xB4E622C9uLL)) == 0)
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      *v13 = 0;
      return 1;
    }

    *v17 = a3;
    v18 = v17 + 1;
    *(v3 + 152) = v17 + 1;
    *(v3 + 160) = a3;
    if (a3 < 8)
    {
      v19 = a2;
      goto LABEL_35;
    }

    v19 = a2;
    if (v17 - a2 + 8 >= 0x20)
    {
      if (a3 < 0x20)
      {
        v20 = 0;
        goto LABEL_30;
      }

      v20 = a3 & 0xFFFFFFFFFFFFFFE0;
      v21 = (a2 + 16);
      v22 = v17 + 3;
      v23 = a3 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v24 = *v21;
        *(v22 - 1) = *(v21 - 1);
        *v22 = v24;
        v21 += 2;
        v22 += 2;
        v23 -= 32;
      }

      while (v23);
      if (v20 == a3)
      {
        return 0;
      }

      if ((a3 & 0x18) != 0)
      {
LABEL_30:
        v18 += a3 & 0xFFFFFFFFFFFFFFF8;
        v19 = (a2 + (a3 & 0xFFFFFFFFFFFFFFF8));
        v25 = (a2 + v20);
        v26 = (v17 + v20 + 8);
        v27 = v20 - (a3 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v28 = *v25++;
          *v26++ = v28;
          v27 += 8;
        }

        while (v27);
        if ((a3 & 0xFFFFFFFFFFFFFFF8) == a3)
        {
          return 0;
        }

        goto LABEL_35;
      }

      v19 = (a2 + v20);
      v18 += v20;
    }

    do
    {
LABEL_35:
      v29 = *v19++;
      *v18++ = v29;
    }

    while (v19 != (a2 + a3));
    return 0;
  }

  v6 = a2;
  v7 = a3;
  while (1)
  {
    v8 = v7 - 1;
    v9 = *v6;
    if (!*v6 || v8 < v9)
    {
      break;
    }

    v6 += v9 + 1;
    v7 = v8 - v9;
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  ERR_put_error(16, 0, 315, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_lib.cc", 2226);
  return 1;
}

void bssl::ssl_pkey_supports_algorithm(bssl *this, const ssl_st *a2, evp_pkey_st *a3, int a4)
{
  if (a3 > 1536)
  {
    if (a3 <= 2052)
    {
      switch(a3)
      {
        case 0x601:
          v4 = &unk_2882A5FD8;
          if (a2->type != dword_2882A5FDC)
          {
            return;
          }

          break;
        case 0x603:
          v4 = &unk_2882A60D8;
          if (a2->type != dword_2882A60DC)
          {
            return;
          }

          break;
        case 0x804:
          v4 = &unk_2882A6018;
          if (a2->type != dword_2882A601C)
          {
            return;
          }

          break;
        default:
          return;
      }
    }

    else if (a3 > 2054)
    {
      if (a3 == 2055)
      {
        v4 = &unk_2882A60F8;
        if (a2->type != dword_2882A60FC)
        {
          return;
        }
      }

      else
      {
        if (a3 != 65281)
        {
          return;
        }

        v4 = &bssl::kSignatureAlgorithms;
        if (a2->type != dword_2882A5F5C)
        {
          return;
        }
      }
    }

    else if (a3 == 2053)
    {
      v4 = &unk_2882A6038;
      if (a2->type != dword_2882A603C)
      {
        return;
      }
    }

    else
    {
      v4 = &unk_2882A6058;
      if (a2->type != dword_2882A605C)
      {
        return;
      }
    }
  }

  else if (a3 <= 1026)
  {
    switch(a3)
    {
      case 0x201:
        v4 = &unk_2882A5F78;
        if (a2->type != dword_2882A5F7C)
        {
          return;
        }

        break;
      case 0x203:
        v4 = &unk_2882A6078;
        if (a2->type != dword_2882A607C)
        {
          return;
        }

        break;
      case 0x401:
        v4 = &unk_2882A5F98;
        if (a2->type != dword_2882A5F9C)
        {
          return;
        }

        break;
      default:
        return;
    }
  }

  else if (a3 > 1280)
  {
    if (a3 == 1281)
    {
      v4 = &unk_2882A5FB8;
      if (a2->type != dword_2882A5FBC)
      {
        return;
      }
    }

    else
    {
      if (a3 != 1283)
      {
        return;
      }

      v4 = &unk_2882A60B8;
      if (a2->type != dword_2882A60BC)
      {
        return;
      }
    }
  }

  else if (a3 == 1027)
  {
    v4 = &unk_2882A6098;
    if (a2->type != dword_2882A609C)
    {
      return;
    }
  }

  else
  {
    if (a3 != 1056)
    {
      return;
    }

    v4 = &unk_2882A5FF8;
    if (a2->type != dword_2882A5FFC)
    {
      return;
    }
  }

  if (*(v4 + 24) == 1)
  {
    rbio = a2->rbio;
    if (rbio)
    {
      v6 = a3;
      v7 = this;
      v8 = a4;
      callback = rbio[1].callback;
      if (callback)
      {
        v10 = a2;
        v11 = (callback)(a2);
        goto LABEL_44;
      }
    }

    else
    {
      v6 = a3;
      v7 = this;
      v8 = a4;
    }

    v10 = a2;
    v11 = 0;
LABEL_44:
    v12 = 2 * v4[2]()->pkey_type + 2;
    a2 = v10;
    a4 = v8;
    this = v7;
    LODWORD(a3) = v6;
    if (v12 > v11)
    {
      return;
    }
  }

  v13 = *(*(this + 6) + 208);
  if (v13 - 769 >= 4)
  {
    if (v13 - 65276 >= 2 || a3 == 65281)
    {
      return;
    }
  }

  else if (v13 <= 0x302 || a3 == 65281)
  {
    return;
  }

  if (v13 - 771 >= 2)
  {
    if (v13 != 65276)
    {
      return;
    }
  }

  else if (v13 < 0x304)
  {
    return;
  }

  if (*(v4 + 26) == 1 && (*(v4 + 27) != 1 || (*(this + 164) & 1) == a4) && *(v4 + 1) == 408 && *(v4 + 2) && a2->type != 408)
  {
    ERR_put_error(6, 0, 106, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_ec_asn1.cc", 274);
    __break(1u);
  }
}

uint64_t bssl::ssl_private_key_sign(uint64_t a1, __int128 *a2, unint64_t a3, unint64_t a4, evp_pkey_st *a5, void *a6, unint64_t a7)
{
  v13 = *a1;
  v14 = *(a1 + 1536);
  v15 = *(a1 + 1608);
  v80 = 0;
  v81 = 0;
  if (!v15)
  {
    goto LABEL_22;
  }

  v16 = a4;
  memset(v79, 0, sizeof(v79));
  v17 = malloc_type_malloc(0x48uLL, 0xB4E622C9uLL);
  if (!v17)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    bssl::ssl_send_alert(v13, 2, 80);
    if (v79[8])
    {
      goto LABEL_90;
    }

    goto LABEL_30;
  }

  *v17 = 64;
  v79[8] = 0;
  *v79 = 0;
  *&v79[16] = v17 + 1;
  *&v79[24] = xmmword_273B8F050;
  v79[40] = 1;
  v18 = *(v14[1] + 16);
  if (!v18 || (v19 = *(v18 + 32)) == 0)
  {
    ERR_put_error(6, 0, 128, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/evp_asn1.cc", 101);
    goto LABEL_27;
  }

  if (!v19(v79) || (bssl::CBBFinishArray(v79, &v80) & 1) == 0)
  {
LABEL_27:
    bssl::ssl_send_alert(v13, 2, 80);
    if (v79[8])
    {
      goto LABEL_90;
    }

LABEL_30:
    if ((v79[40] & 1) != 0 && *&v79[16])
    {
      v31 = (*&v79[16] - 8);
      v30 = *(*&v79[16] - 8);
      if (v30 != -8)
      {
        bzero(v31, v30 + 8);
      }

      free(v31);
    }

    goto LABEL_90;
  }

  if (!v79[8] && (v79[40] & 1) != 0 && *&v79[16])
  {
    v20 = (*&v79[16] - 8);
    v21 = *(*&v79[16] - 8);
    if (v21 != -8)
    {
      v78 = (*&v79[16] - 8);
      bzero(v20, v21 + 8);
      v20 = v78;
    }

    free(v20);
  }

  a4 = v16;
  if ((*(a1 + 1618) & 0x10) != 0 || *(v15 + 72) != a5 || (v22 = *(v15 + 88), a7 != v22) || (v23 = memcmp(a6, *(v15 + 80), v22), a4 = v16, v23) || v81 != *(v15 + 104) || (v24 = memcmp(v80, *(v15 + 96), v81), a4 = v16, v24) || (v26 = *(v15 + 120), v26 - 1 >= v16))
  {
LABEL_22:
    v29 = v14[3];
    if (!v29)
    {
      v32 = v14[2];
      *a3 = a4;
      memset(v79, 0, 32);
      if (!bssl::setup_ctx(v13, v79, v32, a5, 0) || !EVP_DigestSign(v79, a2, a3, a6, a7))
      {
        if (*&v79[8])
        {
          v37 = (*&v79[8] - 8);
          v36 = *(*&v79[8] - 8);
          if (v36 != -8)
          {
            bzero(v37, v36 + 8);
          }

          free(v37);
        }

        if (*&v79[24])
        {
          (**&v79[24])(*&v79[16]);
        }

        goto LABEL_90;
      }

      if (*&v79[8])
      {
        v34 = (*&v79[8] - 8);
        v33 = *(*&v79[8] - 8);
        if (v33 != -8)
        {
          bzero(v34, v33 + 8);
        }

        free(v34);
      }

      if (*&v79[24])
      {
        (**&v79[24])(*&v79[16]);
      }

      if (!v15)
      {
        goto LABEL_50;
      }

      v35 = *(a1 + 1616);
      goto LABEL_49;
    }

    if ((*(a1 + 1618) & 4) != 0)
    {
      v28 = (*(v29 + 16))(v13, a2, a3);
      if (v28 != 2)
      {
LABEL_47:
        v35 = *(a1 + 1616) & 0xFFFBFFFF | ((v28 == 1) << 18);
        *(a1 + 1616) = v35;
        if (!v15 || v28)
        {
          goto LABEL_91;
        }

LABEL_49:
        if ((v35 & 0x100000) != 0)
        {
          *(v15 + 72) = a5;
          v39 = *(v15 + 96);
          v38 = *(v15 + 104);
          if (v38)
          {
            v40 = v38 - 1;
            if (v40 >= -v39)
            {
              goto LABEL_119;
            }
          }

          if (v39)
          {
            v42 = *(v39 - 8);
            v41 = (v39 - 8);
            v43 = v42 + 8;
            if (v42 != -8)
            {
              bzero(v41, v43);
            }

            free(v41);
          }

          v45 = (v15 + 80);
          v44 = *(v15 + 80);
          v46 = v81;
          *(v15 + 96) = v80;
          *(v15 + 104) = v46;
          v80 = 0;
          v81 = 0;
          v47 = *(v15 + 88);
          if (v47)
          {
            v40 = v47 - 1;
            if (v40 >= -v44)
            {
              goto LABEL_119;
            }
          }

          if (v44)
          {
            v49 = *(v44 - 8);
            v48 = (v44 - 8);
            v50 = v49 + 8;
            if (v49 != -8)
            {
              bzero(v48, v50);
            }

            free(v48);
          }

          *v45 = 0;
          *(v15 + 88) = 0;
          if (!a7)
          {
            goto LABEL_77;
          }

          if (a7 <= 0xFFFFFFFFFFFFFFF7)
          {
            v51 = malloc_type_malloc(a7 + 8, 0xB4E622C9uLL);
            if (v51)
            {
              *v51 = a7;
              v40 = (v51 + 1);
              *(v15 + 80) = v51 + 1;
              *(v15 + 88) = a7;
              if (a7 < 8 || (v51 - a6 + 8) < 0x20)
              {
                v52 = a6;
                goto LABEL_75;
              }

              if (a7 >= 0x20)
              {
                v25 = a7 & 0xFFFFFFFFFFFFFFE0;
                v63 = (a6 + 2);
                v64 = v51 + 3;
                v65 = a7 & 0xFFFFFFFFFFFFFFE0;
                do
                {
                  v66 = *v63;
                  *(v64 - 1) = *(v63 - 1);
                  *v64 = v66;
                  v63 += 2;
                  v64 += 2;
                  v65 -= 32;
                }

                while (v65);
                if (a7 == v25)
                {
                  goto LABEL_77;
                }

                if ((a7 & 0x18) == 0)
                {
                  goto LABEL_120;
                }
              }

              else
              {
                v25 = 0;
              }

              v40 += a7 & 0xFFFFFFFFFFFFFFF8;
              v52 = a6 + (a7 & 0xFFFFFFFFFFFFFFF8);
              v67 = (a6 + v25);
              v68 = (v51 + v25 + 8);
              v25 -= a7 & 0xFFFFFFFFFFFFFFF8;
              do
              {
                v69 = *v67++;
                *v68++ = v69;
                v25 += 8;
              }

              while (v25);
              if (a7 != (a7 & 0xFFFFFFFFFFFFFFF8))
              {
                goto LABEL_75;
              }

              goto LABEL_77;
            }
          }

          ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
          *v45 = 0;
          goto LABEL_90;
        }

        goto LABEL_50;
      }
    }

    else
    {
      v28 = (*v29)(v13, a2, a3, a4, a5, a6, a7);
      if (v28 != 2)
      {
        goto LABEL_47;
      }
    }

    ERR_put_error(16, 0, 287, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_privkey.cc", 239);
    goto LABEL_47;
  }

  *a3 = v26;
  v27 = *(v15 + 120);
  if (!v27)
  {
    goto LABEL_50;
  }

  memcpy(a2, *(v15 + 112), v27);
  v28 = 0;
LABEL_91:
  while (1)
  {
    a2 = v80;
    if (!v81)
    {
      break;
    }

    v40 = v81 - 1;
    if (v81 - 1 < -v80)
    {
      break;
    }

    do
    {
LABEL_119:
      __break(1u);
LABEL_120:
      v52 = a6 + v25;
      v40 += v25;
LABEL_75:
      v25 = a6 + a7;
      do
      {
        v53 = *v52++;
        *v40++ = v53;
      }

      while (v52 != v25);
LABEL_77:
      a7 = *(v15 + 112);
      v54 = *(v15 + 120);
      a6 = (v15 + 112);
      a3 = *a3;
      if (!v54)
      {
        break;
      }

      v40 = v54 - 1;
    }

    while (v40 >= -a7);
    if (a7)
    {
      v55 = *(a7 - 8);
      a7 -= 8;
      v56 = v55 + 8;
      if (v55 != -8)
      {
        bzero(a7, v56);
      }

      free(a7);
    }

    *a6 = 0;
    *(v15 + 120) = 0;
    if (!a3)
    {
      goto LABEL_50;
    }

    if (a3 <= 0xFFFFFFFFFFFFFFF7 && (v57 = malloc_type_malloc(a3 + 8, 0xB4E622C9uLL)) != 0)
    {
      *v57 = a3;
      v58 = v57 + 1;
      *(v15 + 112) = v57 + 1;
      *(v15 + 120) = a3;
      if (a3 < 8)
      {
        v59 = a2;
        goto LABEL_122;
      }

      v59 = a2;
      if ((v57 - a2 + 8) < 0x20)
      {
        goto LABEL_122;
      }

      if (a3 < 0x20)
      {
        v25 = 0;
        goto LABEL_115;
      }

      v25 = a3 & 0xFFFFFFFFFFFFFFE0;
      v70 = a2 + 1;
      v71 = v57 + 3;
      v72 = a3 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v73 = *v70;
        *(v71 - 1) = *(v70 - 1);
        *v71 = v73;
        v70 += 2;
        v71 += 2;
        v72 -= 32;
      }

      while (v72);
      if (a3 == v25)
      {
LABEL_50:
        v28 = 0;
      }

      else
      {
        if ((a3 & 0x18) == 0)
        {
          v59 = a2 + v25;
          v58 += v25;
          goto LABEL_122;
        }

LABEL_115:
        v58 += a3 & 0xFFFFFFFFFFFFFFF8;
        v59 = a2 + (a3 & 0xFFFFFFFFFFFFFFF8);
        v74 = (a2 + v25);
        v75 = (v57 + v25 + 8);
        v25 -= a3 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v76 = *v74++;
          *v75++ = v76;
          v25 += 8;
        }

        while (v25);
        if (a3 == (a3 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_50;
        }

LABEL_122:
        v25 = a2 + a3;
        do
        {
          v28 = 0;
          v77 = *v59++;
          *v58++ = v77;
        }

        while (v59 != v25);
      }
    }

    else
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      *a6 = 0;
LABEL_90:
      v28 = 2;
    }
  }

  if (v80)
  {
    v61 = (v80 - 8);
    v60 = *(v80 - 8);
    if (v60 != -8)
    {
      bzero(v61, v60 + 8);
    }

    free(v61);
  }

  return v28;
}

uint64_t bssl::setup_ctx(bssl *this, ssl_st *a2, const ssl_st *a3, evp_pkey_st *a4, int a5)
{
  v6 = a4;
  bssl::ssl_pkey_supports_algorithm(this, a3, a4, a5);
  if ((v9 & 1) == 0)
  {
    ERR_put_error(16, 0, 245, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_privkey.cc", 171);
    return 0;
  }

  if (v6 > 1536)
  {
    v20 = &bssl::kSignatureAlgorithms;
    if (v6 == 2055)
    {
      v20 = &unk_2882A60F8;
    }

    v21 = &unk_2882A6038;
    if (v6 != 2053)
    {
      v21 = &unk_2882A6058;
    }

    if (v6 <= 2054)
    {
      v20 = v21;
    }

    v22 = &unk_2882A5FD8;
    v23 = &unk_2882A60D8;
    if (v6 != 1539)
    {
      v23 = &unk_2882A6018;
    }

    if (v6 != 1537)
    {
      v22 = v23;
    }

    if (v6 <= 2052)
    {
      v14 = v22;
    }

    else
    {
      v14 = v20;
    }

    v15 = *(v14 + 2);
    if (v15)
    {
LABEL_17:
      v16 = v15();
      v24 = 0;
      p_version = &a2->version;
      v18 = a3;
      if (a5)
      {
        goto LABEL_18;
      }

LABEL_36:
      result = do_sigver_init(p_version, &v24, v16, 0, v18, 0);
      if (!result)
      {
        return result;
      }

      goto LABEL_37;
    }
  }

  else
  {
    v10 = &unk_2882A5FB8;
    if (v6 != 1281)
    {
      v10 = &unk_2882A60B8;
    }

    v11 = &unk_2882A6098;
    if (v6 != 1027)
    {
      v11 = &unk_2882A5FF8;
    }

    if (v6 <= 1280)
    {
      v10 = v11;
    }

    v12 = &unk_2882A5F78;
    v13 = &unk_2882A6078;
    if (v6 != 515)
    {
      v13 = &unk_2882A5F98;
    }

    if (v6 != 513)
    {
      v12 = v13;
    }

    if (v6 <= 1026)
    {
      v14 = v12;
    }

    else
    {
      v14 = v10;
    }

    v15 = *(v14 + 2);
    if (v15)
    {
      goto LABEL_17;
    }
  }

  v16 = 0;
  v24 = 0;
  p_version = &a2->version;
  v18 = a3;
  if (!a5)
  {
    goto LABEL_36;
  }

LABEL_18:
  result = do_sigver_init(p_version, &v24, v16, 0, v18, 1);
  if (!result)
  {
    return result;
  }

LABEL_37:
  if (*(v14 + 24) != 1)
  {
    return 1;
  }

  result = EVP_PKEY_CTX_ctrl(v24, 6, -1);
  if (result)
  {
    result = EVP_PKEY_CTX_ctrl(v24, 6, 24);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

BOOL bssl::ssl_public_key_verify(bssl *a1, int a2, int a3, evp_pkey_st *a4, const ssl_st *a5, uint64_t a6, uint64_t a7)
{
  memset(&v16, 0, sizeof(v16));
  if (bssl::setup_ctx(a1, &v16, a5, a4, 1))
  {
    if (*(*v16.flags + 56))
    {
      (v16.digest->init)(&v16, a6, a7);
      v9 = EVP_DigestVerifyFinal(&v16);
      engine = v16.engine;
      if (!v16.engine)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v11 = *(*v16.flags + 64);
      if (v11)
      {
        v9 = v11() != 0;
        engine = v16.engine;
        if (!v16.engine)
        {
          goto LABEL_14;
        }
      }

      else
      {
        ERR_put_error(6, 0, 125, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/digestsign/digestsign.cc.inc", 214);
        v9 = 0;
        engine = v16.engine;
        if (!v16.engine)
        {
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
    v9 = 0;
    engine = v16.engine;
    if (!v16.engine)
    {
      goto LABEL_14;
    }
  }

  v13 = *(engine - 1);
  v12 = engine - 8;
  v14 = v13 + 8;
  if (v13 != -8)
  {
    bzero(v12, v14);
  }

  free(v12);
LABEL_14:
  if (v16.md_data)
  {
    (*v16.md_data)(v16.flags);
  }

  return v9;
}

uint64_t bssl::ssl_private_key_decrypt(uint64_t *a1, char *a2, unint64_t *a3, unint64_t a4, const unsigned __int8 *a5, unint64_t a6)
{
  v6 = a1[192];
  v7 = *(v6 + 24);
  if (v7)
  {
    v9 = *a1;
    if ((*(a1 + 1618) & 4) != 0)
    {
      result = (*(v7 + 16))(v9);
      if (result != 2)
      {
LABEL_10:
        *(a1 + 404) = a1[202] & 0xFFFBFFFF | ((result == 1) << 18);
        return result;
      }
    }

    else
    {
      result = (*(v7 + 8))(v9);
      if (result != 2)
      {
        goto LABEL_10;
      }
    }

    v13 = result;
    ERR_put_error(16, 0, 287, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_privkey.cc", 299);
    result = v13;
    goto LABEL_10;
  }

  v11 = *(v6 + 16);
  if (*(v11 + 4) == 6)
  {
    v12 = *(v11 + 8);
    if (v12)
    {
      return 2 * (RSA_decrypt(v12, a3, a2, a4, a5, a6, 3) == 0);
    }
  }

  else
  {
    ERR_put_error(6, 0, 107, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_rsa_asn1.cc", 186);
  }

  ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_privkey.cc", 308);
  return 2;
}

void bssl::SSL_SESSION_dup(bssl *this@<X0>, ssl_session_st *a2@<X1>, ssl_session_st **a3@<X8>)
{
  LOBYTE(v5) = a2;
  v6 = this;
  v8 = *(this + 18);
  v9 = malloc_type_malloc(0x1B8uLL, 0xB4E622C9uLL);
  if (!v9)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    *a3 = 0;
    return;
  }

  v10 = v9;
  *(v9 + 1) = 1;
  v11 = (v9 + 8);
  *v9 = 432;
  *(v9 + 8) = 0;
  v9[66] = 0;
  v9[99] = 0;
  v9[132] = 0;
  *(v9 + 17) = 0;
  v12 = (v9 + 136);
  *(v9 + 18) = 0;
  *(v9 + 19) = v8;
  *(v9 + 20) = 0;
  *(v9 + 21) = 0;
  *(v9 + 22) = 0;
  *(v9 + 23) = 65;
  *(v9 + 24) = vdup_n_s32(0x1C20u);
  v9[352] = 0;
  *(v9 + 53) = 0;
  *(v9 + 54) = 0;
  *(v9 + 200) = 0u;
  v13 = v9 + 200;
  *(v9 + 401) = 0u;
  *(v9 + 388) = 0u;
  *(v9 + 372) = 0u;
  *(v9 + 356) = 0u;
  *(v9 + 216) = 0u;
  *(v9 + 232) = 0u;
  *(v9 + 248) = 0u;
  *(v9 + 264) = 0u;
  *(v9 + 280) = 0u;
  *(v9 + 37) = 0;
  *(v9 + 25) = time(0);
  v14 = v13[216] & 0xEF | (16 * ((*(v6 + 408) >> 4) & 1));
  v13[216] = v14;
  *(v13 - 94) = *(v6 + 4);
  v13[216] = *(v6 + 408) & 0x20 | v14 & 0xDF;
  if (v11 != v6)
  {
    v15 = *(v6 + 124);
    if (v15 > 0x20)
    {
      goto LABEL_209;
    }

    v16 = v13 - 100;
    if (v10[132])
    {
      v17 = -v10[132];
      if ((v13 - 101) >= v17)
      {
        goto LABEL_199;
      }
    }

    v10[132] = 0;
    if (v15)
    {
      v18 = v6 + 92;
      if (v15 < 8 || &v10[-v6 + 8] < 0x20)
      {
        v19 = v13 - 100;
        v20 = (v6 + 92);
        do
        {
LABEL_10:
          v21 = *v20++;
          *v19++ = v21;
        }

        while (v20 != (v18 + v15));
        goto LABEL_11;
      }

      if (v15 == 32)
      {
        v26 = *(v6 + 108);
        *(v10 + 100) = *(v6 + 92);
        *(v10 + 116) = v26;
        goto LABEL_11;
      }

      v19 = &v16[v15 & 0x38];
      v20 = (v18 + (v15 & 0x38));
      v27 = v15 & 0x38;
      v28 = (v6 + 92);
      do
      {
        v29 = *v28++;
        *v16 = v29;
        v16 += 8;
        v27 -= 8;
      }

      while (v27);
      if ((v15 & 0x18) != v15)
      {
        goto LABEL_10;
      }
    }

LABEL_11:
    v10[132] = v15;
    v15 = *(v6 + 58);
    if (v15 > 0x30)
    {
      goto LABEL_209;
    }

    v22 = v10 + 18;
    if (v10[66])
    {
      v17 = -v10[66];
      if ((v10 + 17) >= v17)
      {
        goto LABEL_199;
      }
    }

    v10[66] = 0;
    if (!v15)
    {
      goto LABEL_38;
    }

    v23 = v6 + 10;
    if (v15 < 8)
    {
      v24 = (v6 + 10);
      goto LABEL_36;
    }

    v24 = (v6 + 10);
    if (&v10[-v6 + 8] >= 0x20)
    {
      if (v15 < 0x20)
      {
        v25 = 0;
        goto LABEL_31;
      }

      v25 = v15 & 0x20;
      v30 = (v6 + 26);
      v31 = v10 + 34;
      v32 = v25;
      do
      {
        v33 = *v30;
        *(v31 - 1) = *(v30 - 1);
        *v31 = v33;
        v30 += 2;
        v31 += 2;
        v32 -= 32;
      }

      while (v32);
      if (v25 == v15)
      {
        goto LABEL_38;
      }

      if ((v15 & 0x18) != 0)
      {
LABEL_31:
        v22 += v15 & 0x38;
        v24 = (v23 + (v15 & 0x38));
        v34 = (v25 + v6 + 10);
        v35 = &v10[v25 + 18];
        v36 = v25 - (v15 & 0x38);
        do
        {
          v37 = *v34++;
          *v35 = v37;
          v35 += 8;
          v36 += 8;
        }

        while (v36);
        if ((v15 & 0x38) == v15)
        {
          goto LABEL_38;
        }

        goto LABEL_36;
      }

      v24 = (v23 + v25);
      v22 += v25;
    }

LABEL_36:
    v38 = (v23 + v15);
    do
    {
      v39 = *v24++;
      *v22++ = v39;
    }

    while (v24 != v38);
LABEL_38:
    v10[66] = v15;
  }

  *(v10 + 26) = *(v6 + 200);
  v40 = *(v6 + 128);
  if (!v40)
  {
    goto LABEL_51;
  }

  v41 = strlen(*(v6 + 128));
  v4 = v41 + 1;
  if (v41 != -1)
  {
    if (v4 <= 0xFFFFFFFFFFFFFFF7)
    {
      v42 = malloc_type_malloc(v41 + 9, 0xB4E622C9uLL);
      if (v42)
      {
        *v42 = v4;
        v3 = (v42 + 1);
        memcpy(v42 + 1, v40, v4);
        v43 = *v12;
        *v12 = v3;
        if (!v43)
        {
          goto LABEL_50;
        }

        goto LABEL_47;
      }
    }

    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  }

  v3 = 0;
  v43 = *v12;
  *v12 = 0;
  if (!v43)
  {
    goto LABEL_50;
  }

LABEL_47:
  v45 = *(v43 - 1);
  v44 = v43 - 8;
  v46 = v45 + 8;
  if (v45 != -8)
  {
    bzero(v44, v46);
  }

  free(v44);
  v3 = *v12;
LABEL_50:
  if (!v3)
  {
    goto LABEL_179;
  }

LABEL_51:
  v47 = *(v6 + 136);
  if (!v47)
  {
    goto LABEL_212;
  }

  v48 = OPENSSL_sk_deep_copy(v47, sk_CRYPTO_BUFFER_call_copy_func, bssl::SSL_SESSION_dup(ssl_session_st *,int)::$_0::__invoke, sk_CRYPTO_BUFFER_call_free_func, CRYPTO_BUFFER_free);
  v49 = *(v10 + 18);
  *(v10 + 18) = v48;
  if (v49)
  {
    v50 = *v49;
    if (*v49)
    {
      v51 = 0;
      do
      {
        v52 = *(v49[1] + 8 * v51);
        if (v52)
        {
          CRYPTO_BUFFER_free(v52);
          v50 = *v49;
        }

        ++v51;
      }

      while (v51 < v50);
    }

    v3 = v49[1];
    if (v3)
    {
      v53 = *(v3 - 1);
      v3 -= 8;
      v54 = v53 + 8;
      if (v53 != -8)
      {
        bzero(v3, v54);
      }

      free(v3);
    }

    v56 = *(v49 - 1);
    v55 = v49 - 1;
    v57 = v56 + 8;
    if (v56 != -8)
    {
      bzero(v55, v57);
    }

    free(v55);
    v48 = *(v10 + 18);
  }

  if (v48)
  {
LABEL_212:
    if ((*(*(v6 + 144) + 56))(v11, v6))
    {
      *(v10 + 23) = *(v6 + 176);
      v58 = *(v6 + 256);
      if (v58)
      {
        v17 = atomic_load((v58 + 24));
        if (v17 != -1)
        {
          v59 = v17;
          do
          {
            atomic_compare_exchange_strong((v58 + 24), &v59, v17 + 1);
            if (v59 == v17)
            {
              break;
            }

            v17 = v59;
          }

          while (v59 != -1);
        }
      }

      v60 = *(v10 + 33);
      *(v10 + 33) = v58;
      if (v60)
      {
        CRYPTO_BUFFER_free(v60);
      }

      v61 = *(v6 + 248);
      if (v61)
      {
        v17 = atomic_load((v61 + 24));
        if (v17 != -1)
        {
          v62 = v17;
          do
          {
            atomic_compare_exchange_strong((v61 + 24), &v62, v17 + 1);
            if (v62 == v17)
            {
              break;
            }

            v17 = v62;
          }

          while (v62 != -1);
        }
      }

      v63 = *(v10 + 32);
      *(v10 + 32) = v61;
      if (v63)
      {
        CRYPTO_BUFFER_free(v63);
      }

      v64 = *(v6 + 280);
      *(v10 + 17) = *(v6 + 264);
      *(v10 + 18) = v64;
      LODWORD(v15) = v10[416] & 0xFD | (2 * ((*(v6 + 408) >> 1) & 1));
      v10[416] = v10[416] & 0xFD | (2 * ((*(v6 + 408) & 2) != 0));
      *(v10 + 8) = *(v6 + 8);
      *(v10 + 24) = *(v6 + 184);
      *(v10 + 25) = *(v6 + 192);
      if ((v5 & 2) == 0)
      {
        while (1)
        {
          if ((v5 & 1) == 0)
          {
            goto LABEL_207;
          }

          v5 = *(v10 + 30);
          v65 = *(v10 + 31);
          v66 = v10 + 240;
          v67 = *(v6 + 232);
          v6 = *(v6 + 240);
          if (!v65)
          {
            break;
          }

          v15 = v65 - 1;
          if (v15 < -v5)
          {
            break;
          }

LABEL_199:
          __break(1u);
LABEL_200:
          v128 = &v3[v17];
          v15 += v17;
          do
          {
LABEL_201:
            v139 = *v128++;
            *v15++ = v139;
          }

          while (v128 != &v3[v4]);
LABEL_202:
          if (!bssl::Array<unsigned char>::CopyFrom((v10 + 384), *(v6 + 376), *(v6 + 384)) || !bssl::Array<unsigned char>::CopyFrom((v10 + 400), *(v6 + 392), *(v6 + 400)))
          {
            goto LABEL_179;
          }
        }

        if (v5)
        {
          v69 = *(v5 - 8);
          v68 = (v5 - 8);
          v70 = v69 + 8;
          if (v69 != -8)
          {
            bzero(v68, v70);
          }

          free(v68);
        }

        *v66 = 0;
        *(v10 + 31) = 0;
        if (!v6)
        {
LABEL_207:
          v10[416] |= 4u;
          *a3 = v11;
          return;
        }

        if (v6 <= 0xFFFFFFFFFFFFFFF7)
        {
          v71 = malloc_type_malloc(v6 + 8, 0xB4E622C9uLL);
          if (v71)
          {
            *v71 = v6;
            v72 = v71 + 1;
            *(v10 + 30) = v71 + 1;
            *(v10 + 31) = v6;
            if (v6 < 8)
            {
              v73 = v67;
              goto LABEL_206;
            }

            v73 = v67;
            if (v71 - v67 + 8 >= 0x20)
            {
              if (v6 < 0x20)
              {
                v93 = 0;
                goto LABEL_159;
              }

              v93 = v6 & 0xFFFFFFFFFFFFFFE0;
              v113 = (v67 + 16);
              v114 = v71 + 3;
              v115 = v6 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v116 = *v113;
                *(v114 - 1) = *(v113 - 1);
                *v114 = v116;
                v113 += 2;
                v114 += 2;
                v115 -= 32;
              }

              while (v115);
              if (v6 == v93)
              {
                goto LABEL_207;
              }

              if ((v6 & 0x18) != 0)
              {
LABEL_159:
                v72 += v6 & 0xFFFFFFFFFFFFFFF8;
                v73 = (v67 + (v6 & 0xFFFFFFFFFFFFFFF8));
                v117 = (v67 + v93);
                v118 = (v71 + v93 + 8);
                v119 = v93 - (v6 & 0xFFFFFFFFFFFFFFF8);
                do
                {
                  v120 = *v117++;
                  *v118++ = v120;
                  v119 += 8;
                }

                while (v119);
                if (v6 == (v6 & 0xFFFFFFFFFFFFFFF8))
                {
                  goto LABEL_207;
                }

                goto LABEL_206;
              }

              v73 = (v67 + v93);
              v72 += v93;
            }

            do
            {
LABEL_206:
              v140 = *v73++;
              *v72++ = v140;
            }

            while (v73 != (v67 + v6));
            goto LABEL_207;
          }
        }

        goto LABEL_178;
      }

      if (v11 == v6)
      {
        *(v10 + 7) = *(v6 + 6);
        goto LABEL_114;
      }

      v15 = *(v6 + 91);
      if (v15 > 0x20)
      {
        goto LABEL_209;
      }

      v74 = v10 + 67;
      if (v10[99])
      {
        v17 = -v10[99];
        if ((v10 + 66) >= v17)
        {
          goto LABEL_199;
        }
      }

      v10[99] = 0;
      if (v15)
      {
        v75 = v6 + 59;
        if (v15 < 8 || &v10[-v6 + 8] < 0x20)
        {
          v76 = v10 + 67;
          v77 = (v6 + 59);
          do
          {
LABEL_102:
            v78 = *v77++;
            *v76++ = v78;
          }

          while (v77 != (v75 + v15));
          goto LABEL_103;
        }

        if (v15 == 32)
        {
          v91 = *(v6 + 75);
          *(v10 + 67) = *(v6 + 59);
          *(v10 + 83) = v91;
          goto LABEL_103;
        }

        v76 = v74 + (v15 & 0x38);
        v77 = (v75 + (v15 & 0x38));
        v94 = v15 & 0x38;
        v95 = (v6 + 59);
        do
        {
          v96 = *v95++;
          *v74++ = v96;
          v94 -= 8;
        }

        while (v94);
        if ((v15 & 0x18) != v15)
        {
          goto LABEL_102;
        }
      }

LABEL_103:
      v10[99] = v15;
      *(v10 + 7) = *(v6 + 6);
      v15 = *(v6 + 344);
      if (v15 <= 0x30)
      {
        v79 = v10 + 304;
        v17 = v10[352];
        if (v10[352])
        {
          v17 = -v17;
          if ((v10 + 303) >= v17)
          {
            goto LABEL_199;
          }
        }

        v10[352] = 0;
        if (!v15)
        {
          goto LABEL_112;
        }

        v17 = v6 + 296;
        if (v15 < 8 || &v10[-v6 + 8] < 0x20)
        {
          v80 = (v6 + 296);
          goto LABEL_110;
        }

        if (v15 >= 0x20)
        {
          v92 = v15 & 0x20;
          v97 = v10 + 320;
          v98 = v92;
          v99 = (v6 + 296);
          do
          {
            v100 = *v99;
            v101 = v99[1];
            v99 += 2;
            *(v97 - 1) = v100;
            *v97 = v101;
            v97 += 2;
            v98 -= 32;
          }

          while (v98);
          if (v92 == v15)
          {
            goto LABEL_112;
          }

          if ((v15 & 0x18) == 0)
          {
            v80 = (v17 + v92);
            v79 += v92;
LABEL_110:
            v17 += v15;
            do
            {
              v81 = *v80++;
              *v79++ = v81;
            }

            while (v80 != v17);
LABEL_112:
            v10[352] = v15;
            LOBYTE(v15) = v10[416];
LABEL_114:
            *(v10 + 89) = *(v6 + 348);
            *(v10 + 45) = *(v6 + 352);
            v82 = v15 & 0xFE | *(v6 + 408) & 1;
            v10[416] = v82;
            v10[416] = v82 & 0xBF | *(v6 + 408) & 0x40;
            v3 = *(v6 + 360);
            v4 = *(v6 + 368);
            v84 = *(v10 + 46);
            v83 = *(v10 + 47);
            if (v83)
            {
              v15 = v83 - 1;
              if (v15 >= -v84)
              {
                goto LABEL_199;
              }
            }

            v66 = v10 + 368;
            if (v84)
            {
              v86 = *(v84 - 8);
              v85 = (v84 - 8);
              v87 = v86 + 8;
              if (v86 != -8)
              {
                bzero(v85, v87);
              }

              free(v85);
            }

            *v66 = 0;
            *(v10 + 47) = 0;
            if (!v4)
            {
              goto LABEL_167;
            }

            if (v4 > 0xFFFFFFFFFFFFFFF7 || (v88 = malloc_type_malloc(v4 + 8, 0xB4E622C9uLL)) == 0)
            {
LABEL_178:
              ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
              *v66 = 0;
              goto LABEL_179;
            }

            *v88 = v4;
            v89 = v88 + 1;
            *(v10 + 46) = v88 + 1;
            *(v10 + 47) = v4;
            if (v4 < 8)
            {
              v90 = v3;
              goto LABEL_165;
            }

            v90 = v3;
            if ((v88 - v3 + 8) >= 0x20)
            {
              if (v4 < 0x20)
              {
                v17 = 0;
LABEL_151:
                v89 += v4 & 0xFFFFFFFFFFFFFFF8;
                v90 = &v3[v4 & 0xFFFFFFFFFFFFFFF8];
                v110 = &v3[v17];
                v111 = (v88 + v17 + 8);
                v17 -= v4 & 0xFFFFFFFFFFFFFFF8;
                do
                {
                  v112 = *v110;
                  v110 += 8;
                  *v111++ = v112;
                  v17 += 8;
                }

                while (v17);
                if (v4 != (v4 & 0xFFFFFFFFFFFFFFF8))
                {
                  goto LABEL_165;
                }

LABEL_167:
                v3 = *(v6 + 416);
                v4 = *(v6 + 424);
                v123 = *(v10 + 53);
                v122 = *(v10 + 54);
                if (v122)
                {
                  v15 = v122 - 1;
                  if (v15 >= -v123)
                  {
                    goto LABEL_199;
                  }
                }

                v66 = v10 + 424;
                if (v123)
                {
                  v125 = *(v123 - 8);
                  v124 = (v123 - 8);
                  v126 = v125 + 8;
                  if (v125 != -8)
                  {
                    bzero(v124, v126);
                  }

                  free(v124);
                }

                *v66 = 0;
                *(v10 + 54) = 0;
                if (!v4)
                {
                  goto LABEL_202;
                }

                if (v4 <= 0xFFFFFFFFFFFFFFF7)
                {
                  v127 = malloc_type_malloc(v4 + 8, 0xB4E622C9uLL);
                  if (v127)
                  {
                    *v127 = v4;
                    v15 = (v127 + 1);
                    *(v10 + 53) = v127 + 1;
                    *(v10 + 54) = v4;
                    if (v4 < 8)
                    {
                      v128 = v3;
                      goto LABEL_201;
                    }

                    v128 = v3;
                    if ((v127 - v3 + 8) < 0x20)
                    {
                      goto LABEL_201;
                    }

                    if (v4 >= 0x20)
                    {
                      v17 = v4 & 0xFFFFFFFFFFFFFFE0;
                      v131 = (v3 + 16);
                      v132 = v127 + 3;
                      v133 = v4 & 0xFFFFFFFFFFFFFFE0;
                      do
                      {
                        v134 = *v131;
                        *(v132 - 1) = *(v131 - 1);
                        *v132 = v134;
                        v131 += 2;
                        v132 += 2;
                        v133 -= 32;
                      }

                      while (v133);
                      if (v4 == v17)
                      {
                        goto LABEL_202;
                      }

                      if ((v4 & 0x18) == 0)
                      {
                        goto LABEL_200;
                      }
                    }

                    else
                    {
                      v17 = 0;
                    }

                    v15 += v4 & 0xFFFFFFFFFFFFFFF8;
                    v128 = &v3[v4 & 0xFFFFFFFFFFFFFFF8];
                    v135 = &v3[v17];
                    v136 = (v127 + v17 + 8);
                    v137 = v17 - (v4 & 0xFFFFFFFFFFFFFFF8);
                    do
                    {
                      v138 = *v135;
                      v135 += 8;
                      *v136++ = v138;
                      v137 += 8;
                    }

                    while (v137);
                    if (v4 != (v4 & 0xFFFFFFFFFFFFFFF8))
                    {
                      goto LABEL_201;
                    }

                    goto LABEL_202;
                  }
                }

                goto LABEL_178;
              }

              v17 = v4 & 0xFFFFFFFFFFFFFFE0;
              v106 = (v3 + 16);
              v107 = v88 + 3;
              v108 = v4 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v109 = *v106;
                *(v107 - 1) = *(v106 - 1);
                *v107 = v109;
                v106 += 2;
                v107 += 2;
                v108 -= 32;
              }

              while (v108);
              if (v4 == v17)
              {
                goto LABEL_167;
              }

              if ((v4 & 0x18) != 0)
              {
                goto LABEL_151;
              }

              v90 = &v3[v17];
              v89 += v17;
            }

LABEL_165:
            v17 = &v3[v4];
            do
            {
              v121 = *v90++;
              *v89++ = v121;
            }

            while (v90 != v17);
            goto LABEL_167;
          }
        }

        else
        {
          v92 = 0;
        }

        v79 += v15 & 0x38;
        v80 = (v17 + (v15 & 0x38));
        v102 = (v92 + v6 + 296);
        v103 = &v10[v92 + 304];
        v104 = v92 - (v15 & 0x38);
        do
        {
          v105 = *v102++;
          *v103 = v105;
          v103 += 8;
          v104 += 8;
        }

        while (v104);
        if ((v15 & 0x38) == v15)
        {
          goto LABEL_112;
        }

        goto LABEL_110;
      }

LABEL_209:
      abort();
    }
  }

LABEL_179:
  *a3 = 0;
  v129 = atomic_load(v11);
  if (v129 != -1)
  {
    while (1)
    {
      if (!v129)
      {
        goto LABEL_209;
      }

      v130 = v129;
      atomic_compare_exchange_strong(&v11->ssl_version, &v130, v129 - 1);
      if (v130 == v129)
      {
        break;
      }

      v129 = v130;
      if (v130 == -1)
      {
        return;
      }
    }

    if (v129 == 1)
    {
      ssl_session_st::~ssl_session_st(v11);

      free(v10);
    }
  }
}

int8x8_t bssl::ssl_session_rebase_time(bssl *this, ssl_st *a2, ssl_session_st *a3)
{
  v4 = *(*(this + 13) + 728);
  if (v4)
  {
    v4(0, &v13, a3);
    v6 = (v13.tv_sec & ~(v13.tv_sec >> 63));
    cipher_list_by_id = a2->cipher_list_by_id;
    v8 = v6 >= cipher_list_by_id;
    v9 = v6 - cipher_list_by_id;
    if (!v8)
    {
LABEL_3:
      a2->cipher_list = 0;
      a2->cipher_list_by_id = v6;
      return result;
    }
  }

  else
  {
    gettimeofday(&v13, 0);
    v6 = (v13.tv_sec & ~(v13.tv_sec >> 63));
    v10 = a2->cipher_list_by_id;
    v8 = v6 >= v10;
    v9 = v6 - v10;
    if (!v8)
    {
      goto LABEL_3;
    }
  }

  a2->cipher_list_by_id = v6;
  cipher_list = a2->cipher_list;
  v12.i64[0] = cipher_list;
  v12.i64[1] = HIDWORD(cipher_list);
  result = vbic_s8(vsub_s32(cipher_list, vdup_n_s32(v9)), vmovn_s64(vcgtq_u64(vdupq_n_s64(v9), v12)));
  a2->cipher_list = result;
  return result;
}

uint64_t bssl::ssl_session_renew_timeout(bssl *this, ssl_st *a2, ssl_session_st *a3)
{
  v3 = a3;
  v5 = *(*(this + 13) + 728);
  if (v5)
  {
    result = v5(0, &v17);
    v7 = (v17.tv_sec & ~(v17.tv_sec >> 63));
    cipher_list_by_id = a2->cipher_list_by_id;
    v9 = v7 >= cipher_list_by_id;
    v10 = v7 - cipher_list_by_id;
    if (!v9)
    {
LABEL_3:
      v11 = 0;
      a2->cipher_list_by_id = v7;
      HIDWORD(a2->cipher_list) = 0;
      goto LABEL_8;
    }
  }

  else
  {
    result = gettimeofday(&v17, 0);
    v7 = (v17.tv_sec & ~(v17.tv_sec >> 63));
    v12 = a2->cipher_list_by_id;
    v9 = v7 >= v12;
    v10 = v7 - v12;
    if (!v9)
    {
      goto LABEL_3;
    }
  }

  a2->cipher_list_by_id = v7;
  cipher_list = a2->cipher_list;
  v14.i64[0] = cipher_list;
  v14.i64[1] = HIDWORD(cipher_list);
  v15 = vbic_s8(vsub_s32(cipher_list, vdup_n_s32(v10)), vmovn_s64(vcgtq_u64(vdupq_n_s64(v10), v14)));
  a2->cipher_list = v15;
  if (v15 > v3)
  {
    return result;
  }

  v11 = HIDWORD(v15);
LABEL_8:
  if (v11 >= v3)
  {
    v16 = v3;
  }

  else
  {
    v16 = v11;
  }

  LODWORD(a2->cipher_list) = v16;
  return result;
}

uint64_t bssl::ssl_session_protocol_version(bssl *this, const ssl_session_st *a2)
{
  result = 0;
  v4 = *(this + 2);
  if (v4 <= 65275)
  {
    if ((v4 - 769) >= 4)
    {
      return result;
    }

    return v4;
  }

  switch(v4)
  {
    case 0xFEFC:
      return 772;
    case 0xFEFD:
      return 771;
    case 0xFEFF:
      return 770;
  }

  return result;
}

const EVP_MD *bssl::ssl_session_get_digest(bssl *this, const ssl_session_st *a2)
{
  v2 = 0;
  v3 = *(this + 2);
  if (v3 <= 0xFEFB)
  {
    if (v3 - 769 >= 4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  switch(v3)
  {
    case 0xFEFCu:
      v3 = 772;
      goto LABEL_3;
    case 0xFEFDu:
      v3 = 771;
      goto LABEL_3;
    case 0xFEFFu:
      v3 = 770;
LABEL_3:
      v2 = v3 > 0x302;
      break;
  }

LABEL_4:
  v4 = *(*(this + 25) + 36);
  if (v4 == 4)
  {
    return EVP_sha384();
  }

  if (v4 == 2)
  {
    return EVP_sha256();
  }

  if (v4 != 1)
  {
    return 0;
  }

  if (v2)
  {
    return EVP_sha256();
  }

  return &evp_md_md5_sha1;
}

uint64_t bssl::ssl_get_new_session(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  v2 = *this;
  if ((*(*this + 133) & 2) != 0)
  {
    ERR_put_error(16, 0, 209, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_session.cc", 221);
    return 0;
  }

  v4 = *(*(v2 + 104) + 16);
  v5 = malloc_type_malloc(0x1B8uLL, 0xB4E622C9uLL);
  if (!v5)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  v6 = v5;
  *v5 = 432;
  *(v5 + 1) = 1;
  v7 = (v5 + 8);
  *(v5 + 8) = 0;
  v5[66] = 0;
  v5[99] = 0;
  v5[132] = 0;
  *(v5 + 17) = 0;
  *(v5 + 18) = 0;
  *(v5 + 19) = v4;
  *(v5 + 20) = 0;
  *(v5 + 21) = 0;
  *(v5 + 22) = 0;
  *(v5 + 23) = 65;
  *(v5 + 24) = vdup_n_s32(0x1C20u);
  v5[352] = 0;
  *(v5 + 53) = 0;
  *(v5 + 54) = 0;
  *(v5 + 200) = 0u;
  v8 = v5 + 200;
  *(v5 + 401) = 0u;
  *(v5 + 388) = 0u;
  *(v5 + 372) = 0u;
  *(v5 + 356) = 0u;
  *(v5 + 216) = 0u;
  *(v5 + 232) = 0u;
  *(v5 + 248) = 0u;
  *(v5 + 264) = 0u;
  *(v5 + 280) = 0u;
  *(v5 + 37) = 0;
  *(v5 + 25) = time(0);
  v9 = v8[216] & 0xEF | (16 * (*(v2 + 164) & 1));
  v8[216] = v9;
  *(v8 - 94) = *(*(v2 + 48) + 208);
  v8[216] = v9 & 0xDF | (32 * (*(v2 + 152) != 0));
  v10 = *(*(v2 + 104) + 728);
  if (v10)
  {
    v10(0, &v40);
  }

  else
  {
    gettimeofday(&v40, 0);
  }

  *v8 = v40.tv_sec & ~(v40.tv_sec >> 63);
  v11 = *(*(v2 + 48) + 208);
  if (v11 - 769 >= 4)
  {
    if (v11 != 65276)
    {
      v12 = *(v2 + 112);
      goto LABEL_23;
    }

    v12 = *(v2 + 112);
  }

  else
  {
    v12 = *(v2 + 112);
    if (v11 < 0x304)
    {
LABEL_23:
      v18 = *(v12 + 296);
      *(v6 + 48) = v18;
      *(v6 + 49) = v18;
      v13 = *(*(this + 1) + 32);
      v14 = *(v13 + 120);
      if (v14 <= 0x20)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }
  }

  *(v6 + 48) = *(v12 + 300);
  *(v6 + 49) = 604800;
  v13 = *(*(this + 1) + 32);
  v14 = *(v13 + 120);
  if (v14 > 0x20)
  {
LABEL_14:
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_session.cc", 252);
    v15 = atomic_load(v7);
    if (v15 != -1)
    {
      while (1)
      {
        if (!v15)
        {
          goto LABEL_59;
        }

        v16 = v15;
        atomic_compare_exchange_strong(&v7->ssl_version, &v16, v15 - 1);
        if (v16 == v15)
        {
          break;
        }

        v15 = v16;
        if (v16 == -1)
        {
          return 0;
        }
      }

      if (v15 == 1)
      {
        ssl_session_st::~ssl_session_st(v7);
        free(v6);
      }
    }

    return 0;
  }

LABEL_24:
  v19 = v6 + 100;
  if (v6[132] && (v6 + 99) >= -v6[132])
  {
    __break(1u);
LABEL_59:
    abort();
  }

  v6[132] = 0;
  if (!v14)
  {
    goto LABEL_31;
  }

  v20 = (v13 + 88);
  if (v14 < 8 || &v6[-v13 + 12] < 0x20)
  {
    v21 = v6 + 100;
    v22 = v20;
    do
    {
LABEL_30:
      v23 = *v22++;
      *v21++ = v23;
    }

    while (v22 != &v20[v14]);
    goto LABEL_31;
  }

  if (v14 != 32)
  {
    v21 = v19 + (v14 & 0x38);
    v22 = &v20[v14 & 0x38];
    v37 = v14 & 0x38;
    v38 = v20;
    do
    {
      v39 = *v38++;
      *v19++ = v39;
      v37 -= 8;
    }

    while (v37);
    if ((v14 & 0x18) == v14)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v36 = *(v13 + 104);
  *(v6 + 100) = *(v13 + 88);
  *(v6 + 116) = v36;
LABEL_31:
  v6[132] = v14;
  v6[416] |= 4u;
  *(v6 + 23) = 65;
  v24 = *(this + 194);
  *(this + 194) = v7;
  if (v24)
  {
    v25 = atomic_load(v24);
    if (v25 != -1)
    {
      while (1)
      {
        if (!v25)
        {
          goto LABEL_59;
        }

        v26 = v25;
        atomic_compare_exchange_strong(&v24->ssl_version, &v26, v25 - 1);
        if (v26 == v25)
        {
          break;
        }

        v25 = v26;
        if (v26 == -1)
        {
          goto LABEL_41;
        }
      }

      if (v25 == 1)
      {
        ssl_session_st::~ssl_session_st(v24);
        tlsext_tick_lifetime_hint = v24[-1].tlsext_tick_lifetime_hint;
        p_tlsext_tick_lifetime_hint = &v24[-1].tlsext_tick_lifetime_hint;
        v29 = tlsext_tick_lifetime_hint + 8;
        if (tlsext_tick_lifetime_hint != -8)
        {
          bzero(p_tlsext_tick_lifetime_hint, v29);
        }

        free(p_tlsext_tick_lifetime_hint);
      }
    }
  }

LABEL_41:
  v30 = *(v2 + 88);
  if (v30)
  {
    *(v2 + 88) = 0;
    v31 = atomic_load(v30);
    if (v31 != -1)
    {
      while (1)
      {
        if (!v31)
        {
          goto LABEL_59;
        }

        v32 = v31;
        atomic_compare_exchange_strong(&v30->ssl_version, &v32, v31 - 1);
        if (v32 == v31)
        {
          break;
        }

        v31 = v32;
        if (v32 == -1)
        {
          return 1;
        }
      }

      if (v31 == 1)
      {
        ssl_session_st::~ssl_session_st(v30);
        v34 = v30[-1].tlsext_tick_lifetime_hint;
        v33 = &v30[-1].tlsext_tick_lifetime_hint;
        v35 = v34 + 8;
        if (v34 != -8)
        {
          bzero(v33, v35);
        }

        free(v33);
      }
    }
  }

  return 1;
}

void bssl::ssl_set_session(bssl *this, ssl_session_st *a2, ssl_session_st *a3)
{
  v3 = *(this + 11);
  if (v3 != a2)
  {
    if (a2)
    {
      v4 = atomic_load(a2);
      if (v4 != -1)
      {
        for (i = v4; i != -1; v4 = i)
        {
          atomic_compare_exchange_strong(&a2->ssl_version, &i, v4 + 1);
          if (i == v4)
          {
            break;
          }
        }
      }

      v3 = *(this + 11);
    }

    *(this + 11) = a2;
    if (v3)
    {
      v6 = atomic_load(v3);
      if (v6 != -1)
      {
        while (1)
        {
          if (!v6)
          {
            abort();
          }

          v7 = v6;
          atomic_compare_exchange_strong(&v3->ssl_version, &v7, v6 - 1);
          if (v7 == v6)
          {
            break;
          }

          v6 = v7;
          if (v7 == -1)
          {
            return;
          }
        }

        if (v6 == 1)
        {
          ssl_session_st::~ssl_session_st(v3);
          tlsext_tick_lifetime_hint = v3[-1].tlsext_tick_lifetime_hint;
          p_tlsext_tick_lifetime_hint = &v3[-1].tlsext_tick_lifetime_hint;
          v10 = tlsext_tick_lifetime_hint + 8;
          if (tlsext_tick_lifetime_hint != -8)
          {
            bzero(p_tlsext_tick_lifetime_hint, v10);
          }

          free(p_tlsext_tick_lifetime_hint);
        }
      }
    }
  }
}

uint64_t bssl::ssl_ctx_rotate_ticket_encryption_key(bssl *this, ssl_ctx_st *a2)
{
  v3 = *(this + 91);
  if (v3)
  {
    v3(0, &v28);
    v4 = v28.tv_sec & ~(v28.tv_sec >> 63);
    if (pthread_rwlock_rdlock((this + 24)))
    {
      goto LABEL_33;
    }
  }

  else
  {
    gettimeofday(&v28, 0);
    v4 = v28.tv_sec & ~(v28.tv_sec >> 63);
    if (pthread_rwlock_rdlock((this + 24)))
    {
      goto LABEL_33;
    }
  }

  v5 = *(this + 68);
  if (v5)
  {
    if (*(v5 + 48) - 1 >= v4)
    {
      v6 = *(this + 69);
      if (!v6 || *(v6 + 48) > v4)
      {
        if (pthread_rwlock_unlock((this + 24)))
        {
          goto LABEL_33;
        }

        return 1;
      }
    }
  }

  if (pthread_rwlock_unlock((this + 24)) || pthread_rwlock_wrlock((this + 24)))
  {
LABEL_33:
    abort();
  }

  v8 = *(this + 68);
  if (v8 && *(v8 + 48) - 1 >= v4)
  {
LABEL_25:
    v23 = *(this + 69);
    if (v23 && *(v23 + 48) <= v4)
    {
      *(this + 69) = 0;
      v25 = *(v23 - 8);
      v24 = (v23 - 8);
      v26 = v25 + 8;
      if (v25 != -8)
      {
        bzero(v24, v26);
      }

      free(v24);
    }

    v7 = 1;
    if (!pthread_rwlock_unlock((this + 24)))
    {
      return v7;
    }

    goto LABEL_33;
  }

  v9 = malloc_type_malloc(0x40uLL, 0xB4E622C9uLL);
  if (v9)
  {
    *v9 = 56;
    *(v9 + 8) = 0u;
    v10 = v9 + 8;
    *(v9 + 7) = 0;
    *(v9 + 40) = 0u;
    v11 = v9 + 40;
    *(v9 + 24) = 0u;
    v12 = v9 + 24;
    v13 = v9;
    BCM_rand_bytes_with_additional_data(v9 + 8, 0x10uLL, BCM_rand_bytes::kZeroAdditionalData);
    BCM_rand_bytes_with_additional_data(v12, 0x10uLL, BCM_rand_bytes::kZeroAdditionalData);
    BCM_rand_bytes_with_additional_data(v11, 0x10uLL, BCM_rand_bytes::kZeroAdditionalData);
    *(v13 + 7) = v4 + 172800;
    v14 = *(this + 68);
    if (v14 && (*(v14 + 48) += 172800, *(this + 68) = 0, v15 = *(this + 69), *(this + 69) = v14, v15))
    {
      v17 = *(v15 - 8);
      v16 = (v15 - 8);
      v18 = v17 + 8;
      if (v17 != -8)
      {
        bzero(v16, v18);
      }

      free(v16);
      v19 = *(this + 68);
      *(this + 68) = v10;
      if (v19)
      {
        v21 = *(v19 - 8);
        v20 = (v19 - 8);
        v22 = v21 + 8;
        if (v21 != -8)
        {
          bzero(v20, v22);
        }

        free(v20);
      }
    }

    else
    {
      *(this + 68) = v10;
    }

    goto LABEL_25;
  }

  ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  v7 = 0;
  if (pthread_rwlock_unlock((this + 24)))
  {
    goto LABEL_33;
  }

  return v7;
}

uint64_t bssl::ssl_encrypt_ticket(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v64 = *MEMORY[0x277D85DE8];
  v56 = 0;
  v57 = 0;
  if (!SSL_SESSION_to_bytes_for_ticket(a3, &v57, &v56))
  {
    return 0;
  }

  v6 = *a1;
  v7 = *(*(*a1 + 112) + 744);
  v9 = v56;
  v8 = v57;
  if (v7)
  {
    v10 = (*v7)(v6);
    v11 = v10 + v9;
    if (__CFADD__(v10, v9))
    {
      ERR_put_error(16, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_session.cc", 404);
      v12 = 0;
      if (!v8)
      {
        return v12;
      }

      goto LABEL_85;
    }

    *&ctx.key[36] = 0;
    if (!CBB_reserve(a2, &ctx.key[36], v11))
    {
      v12 = 0;
      goto LABEL_84;
    }

    ctx.md = 0;
    if ((*(v7 + 8))(v6, *&ctx.key[36], &ctx, v11, v8, v9))
    {
      v14 = (a2 + 16);
      if (*(a2 + 8))
      {
        v14 = *v14;
      }

      v12 = 0;
      v15 = v14[1];
      v16 = ctx.md + v15;
      v17 = __CFADD__(v15, ctx.md);
      if (!*a2 && !v17)
      {
        if (v16 <= v14[2])
        {
          v14[1] = v16;
          v12 = 1;
          if (!v8)
          {
            return v12;
          }
        }

        else
        {
          v12 = 0;
          if (!v8)
          {
            return v12;
          }
        }

        goto LABEL_85;
      }

LABEL_84:
      if (!v8)
      {
        return v12;
      }

      goto LABEL_85;
    }

    ERR_put_error(16, 0, 276, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_session.cc", 415);
    v12 = 0;
    if (!v8)
    {
      return v12;
    }

LABEL_85:
    v53 = *(v8 - 1);
    v52 = (v8 - 8);
    v54 = v53 + 8;
    if (v53 != -8)
    {
      bzero(v52, v54);
    }

    free(v52);
    return v12;
  }

  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  memset(&ctx.key[36], 0, 96);
  memset(&ctx, 0, 104);
  if (v56 >> 7 > 0x1FE)
  {
    goto LABEL_9;
  }

  v18 = *(v6 + 112);
  v19 = *(v18 + 560);
  if (!v19)
  {
    if (!bssl::ssl_ctx_rotate_ticket_encryption_key(*(v6 + 112), v5))
    {
      goto LABEL_75;
    }

    if (!pthread_rwlock_rdlock((v18 + 24)))
    {
      BCM_rand_bytes_with_additional_data(&ctx.key[20], 0x10uLL, BCM_rand_bytes::kZeroAdditionalData);
      v21 = EVP_aes_128_cbc();
      if (EVP_CipherInit_ex(&ctx.key[36], v21, v22, (*(v18 + 544) + 32), &ctx.key[20], 1) && (v23 = *(v18 + 544), v24 = EVP_sha256(), HMAC_Init_ex(&ctx, (v23 + 16), 16, v24, 0), v25))
      {
        *&ctx.key[4] = **(v18 + 544);
        if (!pthread_rwlock_unlock((v18 + 24)))
        {
          goto LABEL_34;
        }
      }

      else if (!pthread_rwlock_unlock((v18 + 24)))
      {
        goto LABEL_75;
      }
    }

    abort();
  }

  v20 = v19(v6, &ctx.key[4], &ctx.key[20], &ctx.key[36], &ctx, 1);
  if (v20 < 0)
  {
    goto LABEL_75;
  }

  if (!v20)
  {
    goto LABEL_9;
  }

LABEL_34:
  out = 0;
  *&ctx.key_length = 0;
  if (!CBB_add_space(a2, &ctx.key_length, 16))
  {
    goto LABEL_75;
  }

  **&ctx.key_length = *&ctx.key[4];
  if ((*(*&ctx.key[36] + 20) & 0x3F) != 6)
  {
    goto LABEL_47;
  }

  ctx.key_length = 0;
  v26 = *(*&ctx.key[36] + 48);
  if (!v26)
  {
    v29 = 104;
    v30 = 582;
LABEL_46:
    ERR_put_error(30, 0, v29, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/cipher/cipher.cc.inc", v30);
    goto LABEL_47;
  }

  v27 = v26(&ctx.key[36], 25, 0, &ctx.key_length);
  if (v27 == -1)
  {
    v29 = 105;
    v30 = 588;
    goto LABEL_46;
  }

  if (v27 == 1)
  {
    key_length = ctx.key_length;
    goto LABEL_48;
  }

LABEL_47:
  key_length = *(*&ctx.key[36] + 12);
LABEL_48:
  v31 = key_length;
  *&ctx.key_length = 0;
  if (!CBB_add_space(a2, &ctx.key_length, key_length))
  {
    goto LABEL_75;
  }

  if (v31)
  {
    memcpy(*&ctx.key_length, &ctx.key[20], v31);
  }

  if (!CBB_reserve(a2, &out, v9 + 32))
  {
    goto LABEL_75;
  }

  ctx.key_length = 0;
  if (!EVP_EncryptUpdate(&ctx.key[36], out, &ctx.key_length, v8, v9))
  {
    goto LABEL_75;
  }

  v32 = ctx.key_length;
  if (!EVP_EncryptFinal_ex(&ctx.key[36], &out[ctx.key_length], &ctx.key_length))
  {
    goto LABEL_75;
  }

  v33 = ctx.key_length + v32;
  v34 = *(a2 + 8);
  v35 = (a2 + 16);
  v36 = (a2 + 16);
  if (*(a2 + 8))
  {
    v36 = *v35;
  }

  v12 = 0;
  v37 = v36[1];
  v38 = __CFADD__(v33, v37);
  v39 = v33 + v37;
  v40 = v38;
  if (!*a2 && (v40 & 1) == 0)
  {
    if (v39 > v36[2])
    {
      goto LABEL_75;
    }

    v36[1] = v39;
    ctx.key_length = 0;
    v41 = *v35;
    if (v34)
    {
      v42 = *(a2 + 24) + *(a2 + 32);
      v43 = v41[1];
      v41 = (v42 + *v41);
      v44 = v43 - v42;
    }

    else
    {
      v44 = *(a2 + 24);
    }

    (ctx.md_ctx.digest->init)(&ctx.md_ctx, v41, v44);
    if (!CBB_reserve(a2, &out, 64))
    {
      goto LABEL_75;
    }

    HMAC_Final(&ctx, out, &ctx.key_length);
    if (!v45)
    {
      goto LABEL_75;
    }

    if (*(a2 + 8))
    {
      v35 = *v35;
    }

    v12 = 0;
    v46 = v35[1];
    v47 = v46 + ctx.key_length;
    v48 = __CFADD__(v46, ctx.key_length);
    if (!*a2 && !v48)
    {
      if (v47 <= v35[2])
      {
        v35[1] = v47;
LABEL_9:
        v12 = 1;
        goto LABEL_76;
      }

LABEL_75:
      v12 = 0;
    }
  }

LABEL_76:
  HMAC_CTX_cleanup(&ctx);
  if (*&ctx.key[36])
  {
    v49 = *(*&ctx.key[36] + 40);
    if (v49)
    {
      v49(&ctx.key[36]);
    }
  }

  if (!*&ctx.key[52])
  {
    goto LABEL_84;
  }

  v51 = (*&ctx.key[52] - 8);
  v50 = *(*&ctx.key[52] - 8);
  if (v50 != -8)
  {
    bzero(v51, v50 + 8);
  }

  free(v51);
  if (v8)
  {
    goto LABEL_85;
  }

  return v12;
}

uint64_t bssl::ssl_session_get_type(bssl *this, const ssl_session_st *a2)
{
  if ((*(this + 408) & 4) != 0)
  {
    return 0;
  }

  v2 = *(this + 2);
  if (v2 > 0xFEFB)
  {
    if (v2 == 65276)
    {
      v4 = *(this + 30) == 0;
      goto LABEL_17;
    }

    if (v2 == 65277 || v2 == 65279)
    {
      if (*(this + 30))
      {
        return 2;
      }

      return *(this + 91) != 0;
    }

LABEL_20:
    if (*(this + 30))
    {
      return 2;
    }

    return *(this + 91) != 0;
  }

  if (v2 - 769 >= 4)
  {
    goto LABEL_20;
  }

  v3 = *(this + 30);
  v4 = v3 == 0;
  if (v2 < 0x304)
  {
    if (v3)
    {
      return 2;
    }

    return *(this + 91) != 0;
  }

LABEL_17:
  if (v4)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

BOOL bssl::ssl_session_is_time_valid(bssl *this, const ssl_st *a2, const ssl_session_st *a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(*(this + 13) + 728);
  if (v4)
  {
    v4(0, &v12, a3);
    v5 = v12.tv_sec & ~(v12.tv_sec >> 63);
    cipher_list_by_id = a2->cipher_list_by_id;
    v7 = v5 >= cipher_list_by_id;
    v8 = v5 - cipher_list_by_id;
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    gettimeofday(&v12, 0);
    v10 = v12.tv_sec & ~(v12.tv_sec >> 63);
    v11 = a2->cipher_list_by_id;
    v7 = v10 >= v11;
    v8 = v10 - v11;
    if (!v7)
    {
      return 0;
    }
  }

  return v8 < LODWORD(a2->cipher_list);
}

uint64_t bssl::ssl_session_is_resumable(uint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(a2 + 124);
  v3 = *(a1[1] + 32);
  if (v2 != *(v3 + 120))
  {
    return 0;
  }

  v5 = *a1;
  if (memcmp((a2 + 92), (v3 + 88), v2) || ((*(v5 + 164) ^ (*(a2 + 408) >> 4)) & 1) != 0)
  {
    return 0;
  }

  v7 = *(*(v5 + 104) + 728);
  if (v7)
  {
    v7(0, &v18);
    v8 = v18.tv_sec & ~(v18.tv_sec >> 63);
    v9 = *(a2 + 192);
    v10 = v8 >= v9;
    v11 = v8 - v9;
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    gettimeofday(&v18, 0);
    v13 = v18.tv_sec & ~(v18.tv_sec >> 63);
    v14 = *(a2 + 192);
    v10 = v13 >= v14;
    v11 = v13 - v14;
    if (!v10)
    {
      return 0;
    }
  }

  if (v11 >= *(a2 + 184) || *(*(v5 + 48) + 208) != *(a2 + 4) || a1[198] != *(a2 + 200))
  {
    return 0;
  }

  v15 = *(a2 + 136);
  v16 = !v15 || *v15 == 0;
  v17 = *(a2 + 408);
  if ((!v16 || (v17 & 2) != 0) && ((*(a1[1] + 269) >> 5) & 1) != ((v17 >> 1) & 1))
  {
    return 0;
  }

  return ((v17 & 0x20) == 0) ^ (*(v5 + 152) != 0);
}

uint64_t bssl::ssl_get_prev_session(uint64_t a1, ssl_session_st **a2, char *a3, _BYTE *a4, void *a5)
{
  v67 = 0;
  v66 = 0;
  v8 = *a1;
  if ((*(*a1 + 129) & 0x40) != 0 || (v9 = a5[15]) == 0)
  {
LABEL_9:
    v14 = 0;
    v15 = a5[6];
    v16 = a5[7];
    v67 = 0;
    if (v16 - 33 < 0xFFFFFFFFFFFFFFE0)
    {
      goto LABEL_74;
    }

    goto LABEL_10;
  }

  v10 = a5[14];
  while (1)
  {
    if (v9 < 2)
    {
      goto LABEL_9;
    }

    if ((v9 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      goto LABEL_9;
    }

    v11 = v9 - 4;
    v12 = __rev16(*(v10 + 1));
    if (v11 < v12)
    {
      goto LABEL_9;
    }

    v13 = v10 + 4;
    if (__rev16(*v10) == 35)
    {
      break;
    }

    v10 = &v13[v12];
    v9 = v11 - v12;
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  if (!v12)
  {
    v14 = 1;
    v15 = a5[6];
    v16 = a5[7];
    v67 = 0;
    if (v16 - 33 < 0xFFFFFFFFFFFFFFE0)
    {
      goto LABEL_74;
    }

LABEL_10:
    v17 = *(v8 + 112);
    if ((*(v17 + 293) & 1) == 0)
    {
      p_dst = v15;
      if (v16 <= 3)
      {
        LODWORD(__dst.tv_sec) = 0;
        p_dst = &__dst;
        memcpy(&__dst, v15, v16);
      }

      tv_sec_low = LODWORD(p_dst->tv_sec);
      if (pthread_rwlock_rdlock((v17 + 24)))
      {
        goto LABEL_100;
      }

      v20 = *(*(*(*(v8 + 112) + 256) + 8) + 8 * (tv_sec_low % *(*(*(v8 + 112) + 256) + 16)));
      if (v20)
      {
        while (1)
        {
          v23 = *v20;
          if (v16 == *(*v20 + 91) && !memcmp(v15, (v23 + 59), v16))
          {
            break;
          }

          v20 = v20[1];
          if (!v20)
          {
            goto LABEL_15;
          }
        }

        v32 = atomic_load(v23);
        if (v32 != -1)
        {
          for (i = v32; i != -1; v32 = i)
          {
            atomic_compare_exchange_strong(v23, &i, v32 + 1);
            if (i == v32)
            {
              break;
            }
          }
        }

        v34 = (v17 + 24);
        goto LABEL_58;
      }

LABEL_15:
      if (pthread_rwlock_unlock((v17 + 24)))
      {
        goto LABEL_100;
      }

      v17 = *(v8 + 112);
    }

    v21 = *(v17 + 320);
    if (v21)
    {
      v68 = 1;
      v22 = v21(v8, v15, v16, &v68);
      v23 = v22;
      if (!v22)
      {
        goto LABEL_75;
      }

      if (v22 == &bssl::g_pending_session_magic)
      {
        result = 10;
        v67 = 0;
        return result;
      }

      if (v68)
      {
        v24 = atomic_load(v22);
        if (v24 != -1)
        {
          for (j = v24; j != -1; v24 = j)
          {
            atomic_compare_exchange_strong(v22, &j, v24 + 1);
            if (j == v24)
            {
              break;
            }
          }
        }
      }

      v26 = *(v8 + 112);
      if ((*(v26 + 293) & 2) != 0)
      {
LABEL_59:
        v41 = *(*(v8 + 104) + 728);
        if (v41)
        {
          v41(0, &__dst);
          v42 = __dst.tv_sec & ~(__dst.tv_sec >> 63);
          v43 = *(v23 + 192);
          v44 = v42 >= v43;
          v45 = v42 - v43;
          if (!v44)
          {
            goto LABEL_65;
          }
        }

        else
        {
          gettimeofday(&__dst, 0);
          v46 = __dst.tv_sec & ~(__dst.tv_sec >> 63);
          v47 = *(v23 + 192);
          v44 = v46 >= v47;
          v45 = v46 - v47;
          if (!v44)
          {
LABEL_65:
            bssl::remove_session(*(v8 + 112), v23, 1);
            v48 = atomic_load(v23);
            if (v48 != -1)
            {
              while (1)
              {
                if (!v48)
                {
                  goto LABEL_100;
                }

                v49 = v48;
                atomic_compare_exchange_strong(v23, &v49, v48 - 1);
                if (v49 == v48)
                {
                  break;
                }

                v48 = v49;
                if (v49 == -1)
                {
                  goto LABEL_74;
                }
              }

              if (v48 == 1)
              {
                ssl_session_st::~ssl_session_st(v23);
                v51 = *(v23 - 8);
                v50 = (v23 - 8);
                v52 = v51 + 8;
                if (v51 != -8)
                {
                  bzero(v50, v52);
                }

                free(v50);
              }
            }

            goto LABEL_74;
          }
        }

        if (v45 < *(v23 + 184))
        {
          goto LABEL_75;
        }

        goto LABEL_65;
      }

      v27 = atomic_load(v22);
      if (v27 != -1)
      {
        for (k = v27; k != -1; v27 = k)
        {
          atomic_compare_exchange_strong(v22, &k, v27 + 1);
          if (k == v27)
          {
            break;
          }
        }
      }

      if (pthread_rwlock_wrlock((v26 + 24)))
      {
LABEL_100:
        abort();
      }

      __dst.tv_sec = v23;
      bssl::add_session_locked(v26, &__dst.tv_sec);
      tv_sec = __dst.tv_sec;
      if (__dst.tv_sec)
      {
        v30 = atomic_load(__dst.tv_sec);
        if (v30 != -1)
        {
          while (1)
          {
            if (!v30)
            {
              goto LABEL_100;
            }

            v31 = v30;
            atomic_compare_exchange_strong(&tv_sec->ssl_version, &v31, v30 - 1);
            if (v31 == v30)
            {
              break;
            }

            v30 = v31;
            if (v31 == -1)
            {
              goto LABEL_57;
            }
          }

          if (v30 == 1)
          {
            ssl_session_st::~ssl_session_st(tv_sec);
            tlsext_tick_lifetime_hint = tv_sec[-1].tlsext_tick_lifetime_hint;
            p_tlsext_tick_lifetime_hint = &tv_sec[-1].tlsext_tick_lifetime_hint;
            v40 = tlsext_tick_lifetime_hint + 8;
            if (tlsext_tick_lifetime_hint != -8)
            {
              bzero(p_tlsext_tick_lifetime_hint, v40);
            }

            free(p_tlsext_tick_lifetime_hint);
          }
        }
      }

LABEL_57:
      v34 = (v26 + 24);
LABEL_58:
      if (!pthread_rwlock_unlock(v34))
      {
        goto LABEL_59;
      }

      goto LABEL_100;
    }

LABEL_74:
    v23 = 0;
LABEL_75:
    v67 = 0;
    v53 = *a2;
    *a2 = v23;
    if (!v53)
    {
      goto LABEL_85;
    }

LABEL_76:
    v54 = atomic_load(v53);
    if (v54 != -1)
    {
      while (1)
      {
        if (!v54)
        {
          goto LABEL_100;
        }

        v55 = v54;
        atomic_compare_exchange_strong(&v53->ssl_version, &v55, v54 - 1);
        if (v55 == v54)
        {
          break;
        }

        v54 = v55;
        if (v55 == -1)
        {
          goto LABEL_85;
        }
      }

      if (v54 == 1)
      {
        ssl_session_st::~ssl_session_st(v53);
        v57 = v53[-1].tlsext_tick_lifetime_hint;
        v56 = &v53[-1].tlsext_tick_lifetime_hint;
        v58 = v57 + 8;
        if (v57 != -8)
        {
          bzero(v56, v58);
        }

        free(v56);
      }
    }

LABEL_85:
    *a3 = v14;
    *a4 = v66;
    result = 1;
    v37 = v67;
    v67 = 0;
    if (!v37)
    {
      return result;
    }

    goto LABEL_86;
  }

  v36 = bssl::ssl_process_ticket(a1, &v67, &v66, v13, v12, a5[6], a5[7]);
  if (v36 == 1)
  {
    result = 11;
    v37 = v67;
    v67 = 0;
    if (!v37)
    {
      return result;
    }

    goto LABEL_86;
  }

  if (v36 != 3)
  {
    v14 = 1;
    v65 = v67;
    v67 = 0;
    v53 = *a2;
    *a2 = v65;
    if (!v53)
    {
      goto LABEL_85;
    }

    goto LABEL_76;
  }

  result = 0;
  v37 = v67;
  v67 = 0;
  if (!v37)
  {
    return result;
  }

LABEL_86:
  v59 = atomic_load(v37);
  if (v59 != -1)
  {
    while (1)
    {
      if (!v59)
      {
        goto LABEL_100;
      }

      v60 = v59;
      atomic_compare_exchange_strong(&v37->ssl_version, &v60, v59 - 1);
      if (v60 == v59)
      {
        break;
      }

      v59 = v60;
      if (v60 == -1)
      {
        return result;
      }
    }

    if (v59 == 1)
    {
      v61 = result;
      ssl_session_st::~ssl_session_st(v37);
      v63 = v37[-1].tlsext_tick_lifetime_hint;
      v62 = &v37[-1].tlsext_tick_lifetime_hint;
      v64 = v63 + 8;
      if (v63 != -8)
      {
        bzero(v62, v64);
      }

      free(v62);
      return v61;
    }
  }

  return result;
}

void bssl::ssl_update_cache(bssl **this, ssl_st *a2)
{
  v2 = *(this[6] + 58);
  if ((*(v2 + 408) & 4) != 0)
  {
    return;
  }

  v3 = 0;
  v4 = *(v2 + 4);
  if (v4 > 0xFEFB)
  {
    switch(v4)
    {
      case 0xFEFCu:
        v4 = 772;
        break;
      case 0xFEFDu:
        v4 = 771;
        break;
      case 0xFEFFu:
        v4 = 770;
        break;
      default:
        goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (v4 - 769 < 4)
  {
LABEL_4:
    v3 = v4 > 0x303;
  }

LABEL_5:
  v5 = this[14];
  v6 = *(v2 + 240);
  if (v3 || v6)
  {
    if (v3 && !v6)
    {
      return;
    }
  }

  else if (!*(v2 + 91))
  {
    return;
  }

  v7 = *(v5 + 73);
  if (*(this + 164))
  {
    v8 = -3;
  }

  else
  {
    v8 = -2;
  }

  if ((v7 | v8) == 0xFFFFFFFF)
  {
    if ((v7 & 0x200) != 0 || (*(this + 164) & 1) == 0)
    {
      goto LABEL_49;
    }

    v9 = this;
    v10 = atomic_load(v2);
    if (v10 != -1)
    {
      for (i = v10; i != -1; v10 = i)
      {
        atomic_compare_exchange_strong(v2, &i, v10 + 1);
        if (i == v10)
        {
          break;
        }
      }
    }

    if (!pthread_rwlock_wrlock((v5 + 24)))
    {
      v31 = v2;
      bssl::add_session_locked(v5, &v31);
      v12 = v31;
      if (v31)
      {
        v13 = atomic_load(v31);
        if (v13 != -1)
        {
          while (1)
          {
            if (!v13)
            {
              goto LABEL_64;
            }

            v14 = v13;
            atomic_compare_exchange_strong(&v12->ssl_version, &v14, v13 - 1);
            if (v14 == v13)
            {
              break;
            }

            v13 = v14;
            if (v14 == -1)
            {
              goto LABEL_38;
            }
          }

          if (v13 == 1)
          {
            ssl_session_st::~ssl_session_st(v12);
            tlsext_tick_lifetime_hint = v12[-1].tlsext_tick_lifetime_hint;
            p_tlsext_tick_lifetime_hint = &v12[-1].tlsext_tick_lifetime_hint;
            v17 = tlsext_tick_lifetime_hint + 8;
            if (tlsext_tick_lifetime_hint != -8)
            {
              bzero(p_tlsext_tick_lifetime_hint, v17);
            }

            free(p_tlsext_tick_lifetime_hint);
          }
        }
      }

LABEL_38:
      if ((*(v5 + 292) & 0x80) != 0)
      {
        v23 = pthread_rwlock_unlock((v5 + 24));
        this = v9;
        if (!v23)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v18 = *(v5 + 72);
        if (v18 <= 253)
        {
          v19 = v18 + 1;
        }

        else
        {
          v19 = 0;
        }

        *(v5 + 72) = v19;
        if (!pthread_rwlock_unlock((v5 + 24)))
        {
          this = v9;
          if (v18 < 254)
          {
LABEL_49:
            if (*(v5 + 38))
            {
              v24 = atomic_load(v2);
              if (v24 != -1)
              {
                for (j = v24; j != -1; v24 = j)
                {
                  atomic_compare_exchange_strong(v2, &j, v24 + 1);
                  if (j == v24)
                  {
                    break;
                  }
                }
              }

              if (!(*(v5 + 38))(this, v2))
              {
                v26 = atomic_load(v2);
                if (v26 != -1)
                {
                  while (1)
                  {
                    if (!v26)
                    {
                      goto LABEL_64;
                    }

                    v27 = v26;
                    atomic_compare_exchange_strong(v2, &v27, v26 - 1);
                    if (v27 == v26)
                    {
                      break;
                    }

                    v26 = v27;
                    if (v27 == -1)
                    {
                      return;
                    }
                  }

                  if (v26 == 1)
                  {
                    ssl_session_st::~ssl_session_st(v2);
                    v29 = *(v2 - 8);
                    v28 = (v2 - 8);
                    v30 = v29 + 8;
                    if (v29 != -8)
                    {
                      bzero(v28, v30);
                    }

                    free(v28);
                  }
                }
              }
            }

            return;
          }

          current_time = bssl::ssl_ctx_get_current_time(v9[13], v20);
          v22 = *(v5 + 32);
          v32[0] = v5;
          v32[2] = v22;
          if (!v22 || (v32[1] = current_time, !pthread_rwlock_wrlock((v5 + 24))) && (v33[0] = timeout_doall_arg, v33[1] = v32, OPENSSL_lh_doall_arg(v22, lh_SSL_SESSION_call_doall_arg, v33), !pthread_rwlock_unlock((v5 + 24))))
          {
            this = v9;
            goto LABEL_49;
          }
        }
      }
    }

LABEL_64:
    abort();
  }
}

uint64_t bssl::add_session_locked(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a1[32];
  v22 = 0;
  result = OPENSSL_lh_insert(v5, &v22, v4, lh_SSL_SESSION_call_hash_func, lh_SSL_SESSION_call_cmp_func);
  if (result)
  {
    v7 = v22;
    *a2 = v22;
    if (v7)
    {
      if (v7 == v4)
      {
        return result;
      }

      v8 = *(v7 + 224);
      if (v8)
      {
        v11 = *(v7 + 216);
        v9 = (v7 + 216);
        v10 = v11;
        if (v11)
        {
          v12 = a1 + 35;
          v13 = (a1 + 34);
          if (v8 == a1 + 35)
          {
            if (v10 == v13)
            {
              *v13 = 0;
              a1[35] = 0;
            }

            else
            {
              *v12 = v10;
              v10[28] = v12;
            }
          }

          else if (v10 == v13)
          {
            *v13 = v8;
            v8[27] = v13;
          }

          else
          {
            v8[27] = v10;
            *(*v9 + 224) = v8;
          }

          *v9 = 0;
          v9[1] = 0;
        }
      }
    }

    v14 = *(v4 + 224);
    if (v14)
    {
      v15 = v4 + 216;
      v16 = *(v4 + 216);
      if (v16)
      {
        v17 = a1 + 35;
        v18 = (a1 + 34);
        if (v14 == a1 + 35)
        {
          if (v16 == v18)
          {
            *v18 = 0;
            a1[35] = 0;
          }

          else
          {
            *v17 = v16;
            v16[28] = v17;
          }
        }

        else if (v16 == v18)
        {
          *v18 = v14;
          v14[27] = v18;
        }

        else
        {
          v14[27] = v16;
          *(*v15 + 224) = v14;
        }

        *v15 = 0;
        *(v4 + 224) = 0;
      }
    }

    v20 = a1[33];
    v19 = a1[34];
    v21 = v19 + 27;
    if (!v19)
    {
      v21 = a1 + 35;
    }

    *v21 = v4;
    if (!v19)
    {
      v19 = a1 + 35;
    }

    a1[34] = v4;
    *(v4 + 216) = a1 + 34;
    *(v4 + 224) = v19;
    if (v20)
    {
      do
      {
        if (*a1[32] <= a1[33])
        {
          break;
        }

        result = bssl::remove_session(a1, a1[35], 0);
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

void SSL_CTX_flush_sessions(SSL_CTX *ctx, uint64_t tm)
{
  comp_methods = ctx->comp_methods;
  v4[0] = ctx;
  v4[2] = comp_methods;
  if (comp_methods)
  {
    v4[1] = tm;
    if (pthread_rwlock_wrlock(&ctx->cert_store) || (v5[0] = timeout_doall_arg, v5[1] = v4, OPENSSL_lh_doall_arg(comp_methods, lh_SSL_SESSION_call_doall_arg, v5), pthread_rwlock_unlock(&ctx->cert_store)))
    {
      abort();
    }
  }
}

void ssl_session_st::~ssl_session_st(ssl_session_st *this)
{
  CRYPTO_free_ex_data(&bssl::g_ex_data_class, this, &this->cipher_id);
  (*(this->sess_cert + 8))(this);
  v3 = *&this[1].sid_ctx[20];
  v2 = *&this[1].sid_ctx[28];
  if (v2 && v2 - 1 >= -v3)
  {
    goto LABEL_61;
  }

  if (v3)
  {
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    v6 = v5 + 8;
    if (v5 != -8)
    {
      bzero(v4, v6);
    }

    free(v4);
  }

  *&this[1].sid_ctx[20] = 0;
  *&this[1].sid_ctx[28] = 0;
  v8 = *&this[1].sid_ctx_length;
  v7 = *&this[1].sid_ctx[4];
  if (v7)
  {
    if (v7 - 1 >= -v8)
    {
      goto LABEL_61;
    }
  }

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

  *&this[1].sid_ctx_length = 0;
  *&this[1].sid_ctx[4] = 0;
  v13 = *&this[1].session_id[16];
  v12 = *&this[1].session_id[24];
  if (v12)
  {
    if (v12 - 1 >= -v13)
    {
      goto LABEL_61;
    }
  }

  if (v13)
  {
    v15 = *(v13 - 8);
    v14 = (v13 - 8);
    v16 = v15 + 8;
    if (v15 != -8)
    {
      bzero(v14, v16);
    }

    free(v14);
  }

  *&this[1].session_id[16] = 0;
  *&this[1].session_id[24] = 0;
  v18 = *this[1].session_id;
  v17 = *&this[1].session_id[8];
  if (v17)
  {
    if (v17 - 1 >= -v18)
    {
      goto LABEL_61;
    }
  }

  if (v18)
  {
    v20 = *(v18 - 8);
    v19 = (v18 - 8);
    v21 = v20 + 8;
    if (v20 != -8)
    {
      bzero(v19, v21);
    }

    free(v19);
  }

  *this[1].session_id = 0;
  *&this[1].session_id[8] = 0;
  if (this[1].master_key[36])
  {
    if (&this[1].key_arg_length + 3 >= -this[1].master_key[36])
    {
      goto LABEL_61;
    }
  }

  this[1].master_key[36] = 0;
  tlsext_hostname = this->tlsext_hostname;
  this->tlsext_hostname = 0;
  if (tlsext_hostname)
  {
    CRYPTO_BUFFER_free(tlsext_hostname);
  }

  next = this->next;
  this->next = 0;
  if (next)
  {
    CRYPTO_BUFFER_free(next);
  }

  v25 = *&this->ex_data.dummy;
  prev = this->prev;
  if (prev)
  {
    if (&prev[-1].tlsext_tick_lifetime_hint + 7 >= -v25)
    {
      goto LABEL_61;
    }
  }

  if (v25)
  {
    v27 = *(v25 - 8);
    v26 = (v25 - 8);
    v28 = v27 + 8;
    if (v27 != -8)
    {
      bzero(v26, v28);
    }

    free(v26);
  }

  *&this->ex_data.dummy = 0;
  this->prev = 0;
  v29 = *&this->sid_ctx[28];
  *&this->sid_ctx[28] = 0;
  if (v29)
  {
    v30 = *v29;
    if (*v29)
    {
      v31 = 0;
      do
      {
        v32 = *(v29[1] + 8 * v31);
        if (v32)
        {
          CRYPTO_BUFFER_free(v32);
          v30 = *v29;
        }

        ++v31;
      }

      while (v31 < v30);
    }

    v33 = v29[1];
    if (v33)
    {
      v35 = *(v33 - 8);
      v34 = (v33 - 8);
      v36 = v35 + 8;
      if (v35 != -8)
      {
        bzero(v34, v36);
      }

      free(v34);
    }

    v38 = *(v29 - 1);
    v37 = v29 - 1;
    v39 = v38 + 8;
    if (v38 != -8)
    {
      bzero(v37, v39);
    }

    free(v37);
  }

  v40 = *&this->sid_ctx[20];
  *&this->sid_ctx[20] = 0;
  if (v40)
  {
    v42 = *(v40 - 8);
    v41 = (v40 - 8);
    v43 = v42 + 8;
    if (v42 != -8)
    {
      bzero(v41, v43);
    }

    free(v41);
  }

  if (this->sid_ctx[16] && &this->session_id[19] >= -this->sid_ctx[16] || (this->sid_ctx[16] = 0, this->session_id[19]) && &this->master_key[38] >= -this->session_id[19] || (this->session_id[19] = 0, this->master_key[38]) && &this->key_arg[1] >= -this->master_key[38])
  {
LABEL_61:
    __break(1u);
  }

  else
  {
    this->master_key[38] = 0;
  }
}

void SSL_SESSION_free(SSL_SESSION *ses)
{
  if (ses)
  {
    v1 = atomic_load(ses);
    if (v1 != -1)
    {
      while (1)
      {
        if (!v1)
        {
          abort();
        }

        v2 = v1;
        atomic_compare_exchange_strong(&ses->ssl_version, &v2, v1 - 1);
        if (v2 == v1)
        {
          break;
        }

        v1 = v2;
        if (v2 == -1)
        {
          return;
        }
      }

      if (v1 == 1)
      {
        ssl_session_st::~ssl_session_st(ses);
        v5 = *(v3 - 8);
        v4 = (v3 - 8);
        v6 = v5 + 8;
        if (v5 != -8)
        {
          v7 = v4;
          bzero(v4, v6);
          v4 = v7;
        }

        free(v4);
      }
    }
  }
}

uint64_t bssl::remove_session(bssl *this, ssl_ctx_st *a2, ssl_session_st *a3)
{
  if (!a2 || !BYTE3(a2->remove_session_cb))
  {
    return 0;
  }

  v4 = a3;
  if (a3 && pthread_rwlock_wrlock((this + 24)))
  {
LABEL_41:
    abort();
  }

  v6 = *(this + 32);
  p_cipher_list = (*(v6 + 8) + 8 * ((*(v6 + 40))(a2) % *(v6 + 16)));
  v8 = *p_cipher_list;
  if (*p_cipher_list)
  {
    if ((*(v6 + 32))(v8->method, a2))
    {
      while (1)
      {
        v9 = v8;
        v8 = v8->cipher_list;
        if (!v8)
        {
          break;
        }

        if (!(*(v6 + 32))(v8->method, a2))
        {
          p_cipher_list = &v9->cipher_list;
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      if (!*p_cipher_list)
      {
        v8 = 0;
        v10 = 0;
        goto LABEL_13;
      }

      v8 = **p_cipher_list;
    }
  }

  v10 = v8;
  if (v8 == a2)
  {
    v10 = OPENSSL_lh_delete(*(this + 32), a2, lh_SSL_SESSION_call_hash_func, lh_SSL_SESSION_call_cmp_func);
    rsa_md5 = a2->rsa_md5;
    if (rsa_md5)
    {
      p_dummy = &a2->ex_data.dummy;
      v17 = *&a2->ex_data.dummy;
      if (v17)
      {
        v18 = (this + 280);
        v19 = (this + 272);
        if (rsa_md5 == (this + 280))
        {
          if (v17 == v19)
          {
            *v19 = 0;
            *(this + 35) = 0;
          }

          else
          {
            *v18 = v17;
            v17[28] = v18;
          }
        }

        else if (v17 == v19)
        {
          *v19 = rsa_md5;
          *&rsa_md5[1].ctx_size = v19;
        }

        else
        {
          *&rsa_md5[1].ctx_size = v17;
          *(*p_dummy + 224) = rsa_md5;
        }

        *p_dummy = 0;
        a2->rsa_md5 = 0;
      }
    }
  }

LABEL_13:
  if (v4 && pthread_rwlock_unlock((this + 24)))
  {
    goto LABEL_41;
  }

  if (v8 != a2)
  {
    return 0;
  }

  v12 = *(this + 39);
  if (v12)
  {
    v12(this, v10);
  }

  if (!v10)
  {
    return 1;
  }

  v13 = atomic_load(v10);
  if (v13 == -1)
  {
    return 1;
  }

  while (1)
  {
    if (!v13)
    {
      goto LABEL_41;
    }

    v14 = v13;
    atomic_compare_exchange_strong(&v10->ssl_version, &v14, v13 - 1);
    if (v14 == v13)
    {
      break;
    }

    v13 = v14;
    if (v14 == -1)
    {
      return 1;
    }
  }

  if (v13 != 1)
  {
    return 1;
  }

  ssl_session_st::~ssl_session_st(v10);
  tlsext_tick_lifetime_hint = v10[-1].tlsext_tick_lifetime_hint;
  p_tlsext_tick_lifetime_hint = &v10[-1].tlsext_tick_lifetime_hint;
  v22 = tlsext_tick_lifetime_hint + 8;
  if (tlsext_tick_lifetime_hint != -8)
  {
    bzero(p_tlsext_tick_lifetime_hint, v22);
  }

  free(p_tlsext_tick_lifetime_hint);
  return 1;
}

int SSL_set_session(SSL *to, SSL_SESSION *session)
{
  handshake_func = to->handshake_func;
  if ((*(handshake_func + 110) & 0x10) != 0 || (v3 = *(handshake_func + 35)) == 0 || *(v3 + 20))
  {
LABEL_21:
    abort();
  }

  init_msg = to->init_msg;
  if (init_msg == session)
  {
    return 1;
  }

  if (session)
  {
    v5 = atomic_load(session);
    if (v5 != -1)
    {
      for (i = v5; i != -1; v5 = i)
      {
        atomic_compare_exchange_strong(&session->ssl_version, &i, v5 + 1);
        if (i == v5)
        {
          break;
        }
      }
    }

    init_msg = to->init_msg;
  }

  to->init_msg = session;
  if (!init_msg)
  {
    return 1;
  }

  v7 = atomic_load(init_msg);
  if (v7 == -1)
  {
    return 1;
  }

  while (1)
  {
    if (!v7)
    {
      goto LABEL_21;
    }

    v8 = v7;
    atomic_compare_exchange_strong(&init_msg->ssl_version, &v8, v7 - 1);
    if (v8 == v7)
    {
      break;
    }

    v7 = v8;
    if (v8 == -1)
    {
      return 1;
    }
  }

  if (v7 != 1)
  {
    return 1;
  }

  ssl_session_st::~ssl_session_st(init_msg);
  tlsext_tick_lifetime_hint = init_msg[-1].tlsext_tick_lifetime_hint;
  p_tlsext_tick_lifetime_hint = &init_msg[-1].tlsext_tick_lifetime_hint;
  v12 = tlsext_tick_lifetime_hint + 8;
  if (tlsext_tick_lifetime_hint != -8)
  {
    bzero(p_tlsext_tick_lifetime_hint, v12);
  }

  free(p_tlsext_tick_lifetime_hint);
  return 1;
}

void timeout_doall_arg(ssl_session_st *a1, uint64_t *a2)
{
  v4 = a2[1];
  if (!v4 || (v5 = *&a1->compress_meth, time_low = LODWORD(a1->time), v7 = __CFADD__(v5, time_low), v8 = v5 + time_low, v7) || v4 > v8)
  {
    OPENSSL_lh_delete(a2[2], a1, lh_SSL_SESSION_call_hash_func, lh_SSL_SESSION_call_cmp_func);
    v9 = *a2;
    sk = a1->ex_data.sk;
    if (sk)
    {
      p_ciphers = &a1->ciphers;
      ciphers = a1->ciphers;
      if (ciphers)
      {
        v13 = (v9 + 280);
        v14 = (v9 + 272);
        if (sk == (v9 + 280))
        {
          if (ciphers == v14)
          {
            *v14 = 0;
            *(v9 + 280) = 0;
          }

          else
          {
            *v13 = ciphers;
            *&ciphers[7].num = v13;
          }
        }

        else if (ciphers == v14)
        {
          *v14 = sk;
          sk[6].comp = v14;
        }

        else
        {
          sk[6].comp = ciphers;
          *&(*p_ciphers)[7].num = sk;
        }

        *p_ciphers = 0;
        a1->ex_data.sk = 0;
        v9 = *a2;
      }
    }

    v15 = *(v9 + 312);
    if (v15)
    {
      v15();
    }

    v16 = atomic_load(a1);
    if (v16 != -1)
    {
      while (1)
      {
        if (!v16)
        {
          abort();
        }

        v17 = v16;
        atomic_compare_exchange_strong(&a1->ssl_version, &v17, v16 - 1);
        if (v17 == v16)
        {
          break;
        }

        v16 = v17;
        if (v17 == -1)
        {
          return;
        }
      }

      if (v16 == 1)
      {
        ssl_session_st::~ssl_session_st(a1);
        tlsext_tick_lifetime_hint = a1[-1].tlsext_tick_lifetime_hint;
        p_tlsext_tick_lifetime_hint = &a1[-1].tlsext_tick_lifetime_hint;
        v20 = tlsext_tick_lifetime_hint + 8;
        if (tlsext_tick_lifetime_hint != -8)
        {
          bzero(p_tlsext_tick_lifetime_hint, v20);
        }

        free(p_tlsext_tick_lifetime_hint);
      }
    }
  }
}

uint64_t bssl::SSL_SESSION_dup(ssl_session_st *,int)::$_0::__invoke(uint64_t result)
{
  v1 = atomic_load((result + 24));
  if (v1 != -1)
  {
    for (i = v1; i != -1; v1 = i)
    {
      atomic_compare_exchange_strong((result + 24), &i, v1 + 1);
      if (i == v1)
      {
        break;
      }
    }
  }

  return result;
}

const char *__cdecl SSL_state_string_long(const SSL *s)
{
  v1 = *(s->handshake_func + 35);
  if (!v1)
  {
    return "SSL negotiation finished successfully";
  }

  v2 = *(v1 + 20);
  if (BYTE4(s->msg_callback_arg))
  {
    result = "TLS server start_accept";
    switch(v2)
    {
      case 0:
        return result;
      case 1:
        result = "TLS server read_client_hello";
        break;
      case 2:
        result = "TLS server read_client_hello_after_ech";
        break;
      case 3:
        result = "TLS server cert_callback";
        break;
      case 4:
        v4 = *(v1 + 24);
        if (v4 < 0x11)
        {
          v5 = &off_279EA0748;
          goto LABEL_18;
        }

        result = "TLS 1.3 server unknown";
        break;
      case 5:
        result = "TLS server select_parameters";
        break;
      case 6:
        result = "TLS server send_server_hello";
        break;
      case 7:
        result = "TLS server send_server_certificate";
        break;
      case 8:
        result = "TLS server send_server_key_exchange";
        break;
      case 9:
        result = "TLS server send_server_hello_done";
        break;
      case 10:
        result = "TLS server read_client_certificate";
        break;
      case 11:
        result = "TLS server verify_client_certificate";
        break;
      case 12:
        result = "TLS server read_client_key_exchange";
        break;
      case 13:
        result = "TLS server read_client_certificate_verify";
        break;
      case 14:
        result = "TLS server read_change_cipher_spec";
        break;
      case 15:
        result = "TLS server process_change_cipher_spec";
        break;
      case 16:
        result = "TLS server read_next_proto";
        break;
      case 17:
        result = "TLS server read_channel_id";
        break;
      case 18:
        result = "TLS server read_client_finished";
        break;
      case 19:
        result = "TLS server send_server_finished";
        break;
      case 20:
        result = "TLS server finish_server_handshake";
        break;
      case 21:
        result = "TLS server done";
        break;
      default:
        result = "TLS server unknown";
        break;
    }
  }

  else
  {
    result = "TLS client start_connect";
    switch(v2)
    {
      case 0:
        return result;
      case 1:
        result = "TLS client enter_early_data";
        break;
      case 2:
        result = "TLS client early_reverify_server_certificate";
        break;
      case 3:
        result = "TLS client read_server_hello";
        break;
      case 4:
        v4 = *(v1 + 24);
        if (v4 >= 0xF)
        {
          result = "TLS 1.3 client unknown";
        }

        else
        {
          v5 = &off_279EA07D0;
LABEL_18:
          result = v5[v4];
        }

        break;
      case 5:
        result = "TLS client read_server_certificate";
        break;
      case 6:
        result = "TLS client read_certificate_status";
        break;
      case 7:
        result = "TLS client verify_server_certificate";
        break;
      case 8:
        result = "TLS client reverify_server_certificate";
        break;
      case 9:
        result = "TLS client read_server_key_exchange";
        break;
      case 10:
        result = "TLS client read_certificate_request";
        break;
      case 11:
        result = "TLS client read_server_hello_done";
        break;
      case 12:
        result = "TLS client send_client_certificate";
        break;
      case 13:
        result = "TLS client send_client_key_exchange";
        break;
      case 14:
        result = "TLS client send_client_certificate_verify";
        break;
      case 15:
        result = "TLS client send_client_finished";
        break;
      case 16:
        result = "TLS client finish_flight";
        break;
      case 17:
        result = "TLS client read_session_ticket";
        break;
      case 18:
        result = "TLS client process_change_cipher_spec";
        break;
      case 19:
        result = "TLS client read_server_finished";
        break;
      case 20:
        result = "TLS client finish_client_handshake";
        break;
      case 21:
        result = "TLS client done";
        break;
      default:
        result = "TLS client unknown";
        break;
    }
  }

  return result;
}

const char *__cdecl SSL_alert_desc_string_long(int value)
{
  v1 = value;
  result = "close notify";
  switch(v1)
  {
    case 0:
      return result;
    case 10:
      result = "unexpected_message";
      break;
    case 20:
      result = "bad record mac";
      break;
    case 21:
      result = "decryption failed";
      break;
    case 22:
      result = "record overflow";
      break;
    case 30:
      result = "decompression failure";
      break;
    case 40:
      result = "handshake failure";
      break;
    case 41:
      result = "no certificate";
      break;
    case 42:
      result = "bad certificate";
      break;
    case 43:
      result = "unsupported certificate";
      break;
    case 44:
      result = "certificate revoked";
      break;
    case 45:
      result = "certificate expired";
      break;
    case 46:
      result = "certificate unknown";
      break;
    case 47:
      result = "illegal parameter";
      break;
    case 48:
      result = "unknown CA";
      break;
    case 49:
      result = "access denied";
      break;
    case 50:
      result = "decode error";
      break;
    case 51:
      result = "decrypt error";
      break;
    case 60:
      result = "export restriction";
      break;
    case 70:
      result = "protocol version";
      break;
    case 71:
      result = "insufficient security";
      break;
    case 80:
      result = "internal error";
      break;
    case 86:
      result = "inappropriate fallback";
      break;
    case 90:
      result = "user canceled";
      break;
    case 100:
      result = "no renegotiation";
      break;
    case 109:
      result = "missing extension";
      break;
    case 110:
      result = "unsupported extension";
      break;
    case 111:
      result = "certificate unobtainable";
      break;
    case 112:
      result = "unrecognized name";
      break;
    case 113:
      result = "bad certificate status response";
      break;
    case 114:
      result = "bad certificate hash value";
      break;
    case 115:
      result = "unknown PSK identity";
      break;
    case 116:
      result = "certificate required";
      break;
    case 120:
      result = "no application protocol";
      break;
    case 121:
      result = "ECH required";
      break;
    default:
      result = "unknown";
      break;
  }

  return result;
}

BOOL bssl::SSLTranscript::Init(bssl::SSLTranscript *this)
{
  v2 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (v2)
  {
    *v2 = 24;
    v2[1] = 0;
    v3 = v2 + 1;
    v2[2] = 0;
    v2[3] = 0;
    v4 = *this;
    *this = v2 + 1;
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v3 = 0;
    v4 = *this;
    *this = 0;
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  v5 = v4[1];
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

  v10 = *(v4 - 1);
  v9 = v4 - 1;
  v11 = v10 + 8;
  if (v10 != -8)
  {
    bzero(v9, v11);
  }

  free(v9);
  v3 = *this;
LABEL_12:
  if (v3)
  {
    v12 = *(this + 2);
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

    v16 = *(this + 4);
    if (v16)
    {
      (*v16)(*(this + 3));
    }

    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  return v3 != 0;
}

uint64_t bssl::SSLTranscript::InitHash(bssl::SSLTranscript *this, unsigned int a2, const ssl_cipher_st *a3)
{
  *(this + 21) = a2;
  algo_strength_high = HIDWORD(a3->algo_strength);
  switch(algo_strength_high)
  {
    case 4:
      v5 = EVP_sha384();
LABEL_7:
      v6 = v5;
      v7 = (this + 8);
      if (*(this + 1) == v5)
      {
        return 1;
      }

      goto LABEL_12;
    case 2:
LABEL_5:
      v5 = EVP_sha256();
      goto LABEL_7;
    case 1:
      if (a2 < 0x303)
      {
        v6 = &evp_md_md5_sha1;
        v7 = (this + 8);
        if (*(this + 1) == &evp_md_md5_sha1)
        {
          return 1;
        }

        goto LABEL_12;
      }

      goto LABEL_5;
  }

  v6 = 0;
  v7 = (this + 8);
  if (!*(this + 1))
  {
    return 1;
  }

LABEL_12:
  result = bssl::SSLTranscript::HashBuffer(this, v7, v6);
  if (!result)
  {
    return result;
  }

  if ((*(this + 40) & 1) != 0 && *(this + 21) >= 0x304u)
  {
    v9 = *this;
    *this = 0;
    if (v9)
    {
      v10 = *(v9 + 8);
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

      v15 = *(v9 - 8);
      v14 = (v9 - 8);
      v16 = v15 + 8;
      if (v15 != -8)
      {
        bzero(v14, v16);
      }

      free(v14);
    }
  }

  return 1;
}

uint64_t bssl::SSLTranscript::HashBuffer(bssl::SSLTranscript *this, env_md_ctx_st *a2, const env_md_st *a3)
{
  if (a2->digest == a3)
  {
    (a2->digest->flags)(a2);
    if ((*(this + 40) & 1) == 0)
    {
LABEL_11:
      (a2->digest->init)(a2, *(*this + 8), **this);
      return 1;
    }
  }

  else
  {
    final_high = HIDWORD(a3->final);
    v7 = malloc_type_malloc(final_high + 8, 0xB4E622C9uLL);
    if (!v7)
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      return 0;
    }

    *v7 = final_high;
    v8 = (v7 + 1);
    engine = a2->engine;
    if (engine)
    {
      v11 = *(engine - 1);
      v10 = engine - 8;
      v12 = v11 + 8;
      if (v11 != -8)
      {
        bzero(v10, v12);
      }

      free(v10);
    }

    a2->digest = a3;
    a2->engine = v8;
    (a3->flags)(a2);
    if ((*(this + 40) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (*(this + 21) <= 0x303u)
  {
    goto LABEL_11;
  }

  v14 = *this;
  v15 = **this;
  if (!v15)
  {
    return 1;
  }

  v16 = v15 - 12;
  if (v15 >= 0xC)
  {
    v17 = *(v14 + 8);
    (a2->digest->init)(a2, v17, 4);
    (a2->digest->init)(a2, v17 + 12, v16);
    return 1;
  }

  return 0;
}

void bssl::SSLTranscript::FreeBuffer(bssl::SSLTranscript *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
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

    v7 = *(v1 - 8);
    v6 = (v1 - 8);
    v8 = v7 + 8;
    if (v7 != -8)
    {
      bzero(v6, v8);
    }

    free(v6);
  }
}

uint64_t bssl::SSLTranscript::UpdateForHelloRetryRequest(bssl::SSLTranscript *this)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*this)
  {
    **this = 0;
  }

  memset(&v11, 0, sizeof(v11));
  if (EVP_MD_CTX_copy_ex(&v11, (this + 8)))
  {
    (v11.digest->update)(&v11, v12);
    pkey_type = v11.digest->pkey_type;
    final_high = HIDWORD(v11.digest->final);
    if (final_high)
    {
      bzero(v11.engine, final_high);
    }

    if (v11.engine)
    {
      v5 = v11.engine - 8;
      v4 = *(v11.engine - 1);
      if (v4 != -8)
      {
        bzero(v5, v4 + 8);
      }

      free(v5);
    }

    if (v11.md_data)
    {
      (*v11.md_data)(v11.flags);
    }

    LOWORD(v11.digest) = 254;
    BYTE2(v11.digest) = 0;
    BYTE3(v11.digest) = pkey_type;
    (*(*(this + 1) + 16))(this + 8);
    if (!*this || (result = BUF_MEM_append(*this, &v11, 4uLL), result))
    {
      v7 = *(this + 1);
      if (v7)
      {
        (*(v7 + 24))(this + 8, &v11, 4);
      }

      if (!*this || (result = BUF_MEM_append(*this, v12, pkey_type), result))
      {
        v8 = *(this + 1);
        if (v8)
        {
          (*(v8 + 24))(this + 8, v12, pkey_type);
        }

        return 1;
      }
    }
  }

  else
  {
    if (v11.engine)
    {
      v10 = v11.engine - 8;
      v9 = *(v11.engine - 1);
      if (v9 != -8)
      {
        bzero(v10, v9 + 8);
      }

      free(v10);
    }

    if (v11.md_data)
    {
      (*v11.md_data)(v11.flags);
    }

    return 0;
  }

  return result;
}

uint64_t bssl::SSLTranscript::Update(uint64_t a1, uint64_t a2, size_t a3)
{
  if ((*(a1 + 40) & 1) != 0 && *(a1 + 42) > 0x303u)
  {
    v10 = a3 - 12;
    if (a3 < 0xC)
    {
      return 0;
    }

    v11 = *a1;
    if (!*a1 || (result = BUF_MEM_append(v11, a2, 4uLL), result))
    {
      v13 = a1 + 8;
      v12 = *(a1 + 8);
      if (v12)
      {
        (*(v12 + 24))(a1 + 8, a2, 4);
      }

      if (!*a1 || (result = BUF_MEM_append(*a1, (a2 + 12), v10), result))
      {
        if (*v13)
        {
          (*(*v13 + 24))(a1 + 8, a2 + 12);
        }

        return 1;
      }
    }
  }

  else
  {
    v5 = *a1;
    if (!*a1 || (result = BUF_MEM_append(v5, a2, a3), result))
    {
      v9 = *(a1 + 8);
      v8 = a1 + 8;
      v7 = v9;
      if (v9)
      {
        (*(v7 + 24))(v8, a2);
      }

      return 1;
    }
  }

  return result;
}

uint64_t bssl::SSLTranscript::GetFinishedMAC(bssl::SSLTranscript *this, int8x16_t *a2, unint64_t *a3, const ssl_session_st *a4, int a5)
{
  v20 = *MEMORY[0x277D85DE8];
  memset(&out, 0, sizeof(out));
  if (EVP_MD_CTX_copy_ex(&out, (this + 8)))
  {
    (out.digest->update)(&out, v19);
    pkey_type = out.digest->pkey_type;
    final_high = HIDWORD(out.digest->final);
    if (final_high)
    {
      bzero(out.engine, final_high);
    }

    if (out.engine)
    {
      v13 = out.engine - 8;
      v12 = *(out.engine - 1);
      if (v12 != -8)
      {
        bzero(v13, v12 + 8);
      }

      free(v13);
    }

    if (out.md_data)
    {
      (*out.md_data)(out.flags);
    }

    if (a5)
    {
      v14 = "server finished";
    }

    else
    {
      v14 = "client finished";
    }

    result = CRYPTO_tls1_prf(*(this + 1), a2, 0xCuLL, &a4->key_arg[2], a4->master_key[38], v14, 15, v19, pkey_type, 0, 0);
    if (result == 1)
    {
      *a3 = 12;
      return result;
    }
  }

  else
  {
    if (out.engine)
    {
      v17 = out.engine - 8;
      v16 = *(out.engine - 1);
      if (v16 != -8)
      {
        bzero(v17, v16 + 8);
      }

      free(v17);
    }

    if (out.md_data)
    {
      (*out.md_data)(out.flags);
    }
  }

  return 0;
}

uint64_t bssl::ssl_get_version_range(void *a1, _WORD *a2, __int16 *a3)
{
  v3 = a1[1];
  v4 = *(*a1 + 128);
  if (***a1)
  {
    v4 = *(*a1 + 128) & 0xEFFFFFFF | (((v4 >> 26) & 1) << 28);
  }

  v5 = *(v3 + 10);
  if (v5 > 0xFEFB)
  {
    switch(v5)
    {
      case 0xFEFCu:
        v5 = 772;
        break;
      case 0xFEFDu:
        v5 = 771;
        break;
      case 0xFEFFu:
        v5 = 770;
        break;
      default:
        goto LABEL_28;
    }
  }

  else if (v5 - 769 >= 4)
  {
    goto LABEL_28;
  }

  v6 = *(v3 + 8);
  if (v6 <= 65275)
  {
    if (v6 - 769 < 4)
    {
      goto LABEL_7;
    }

LABEL_28:
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_versions.cc", 196);
    return 0;
  }

  switch(v6)
  {
    case 0xFEFCu:
      v6 = 772;
      break;
    case 0xFEFDu:
      v6 = 771;
      break;
    case 0xFEFFu:
      v6 = 770;
      break;
    default:
      goto LABEL_28;
  }

LABEL_7:
  if (*(*a1 + 152))
  {
    v7 = 772;
  }

  else
  {
    v7 = v5;
  }

  if (v7 <= 0x301)
  {
    v8 = (v4 & 0x4000000) == 0;
    LOWORD(v7) = 769;
    if (v6 < 0x302)
    {
      goto LABEL_45;
    }

    goto LABEL_19;
  }

  if (v7 == 770)
  {
    v8 = 0;
    if (v6 < 0x302)
    {
      goto LABEL_45;
    }

LABEL_19:
    if ((v4 & 0x10000000) != 0)
    {
      if (v8)
      {
        v10 = 0;
        goto LABEL_56;
      }

      v8 = 0;
      if (v6 < 0x303)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (!v8)
      {
        LOWORD(v7) = 770;
      }

      v8 = 1;
      if (v6 < 0x303)
      {
LABEL_45:
        if (!v8)
        {
LABEL_46:
          ERR_put_error(16, 0, 280, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_versions.cc", 243);
          return 0;
        }

        goto LABEL_53;
      }
    }

    goto LABEL_41;
  }

  v8 = 0;
  if (v7 <= 0x303)
  {
    LOWORD(v7) = 771;
    if (v6 < 0x303)
    {
      goto LABEL_45;
    }

LABEL_41:
    if ((v4 & 0x8000000) != 0)
    {
      if (v8)
      {
        v10 = 1;
        goto LABEL_56;
      }

      v8 = 0;
      if (v6 < 0x304)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (!v8)
      {
        LOWORD(v7) = 771;
      }

      v8 = 1;
      if (v6 < 0x304)
      {
        goto LABEL_45;
      }
    }

    goto LABEL_50;
  }

  LOWORD(v7) = 772;
  if (v6 < 0x304)
  {
    goto LABEL_45;
  }

LABEL_50:
  if ((v4 & 0x20000000) == 0)
  {
    LOWORD(v6) = 772;
    if (!v8)
    {
      LOWORD(v7) = 772;
    }

LABEL_53:
    *a2 = v7;
    *a3 = v6;
    return 1;
  }

  if (!v8)
  {
    goto LABEL_46;
  }

  v10 = 2;
LABEL_56:
  v11 = bssl::kProtocolVersions[4 * v10];
  *a2 = v7;
  *a3 = v11;
  return 1;
}

uint64_t bssl::ssl_protocol_version(bssl *this, const ssl_st *a2)
{
  result = 0;
  v4 = *(*(this + 6) + 208);
  if (v4 <= 65275)
  {
    if ((v4 - 769) >= 4)
    {
      return result;
    }

    return v4;
  }

  switch(v4)
  {
    case 0xFEFC:
      return 772;
    case 0xFEFD:
      return 771;
    case 0xFEFF:
      return 770;
  }

  return result;
}

uint64_t bssl::ssl_add_supported_versions(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = 4;
  if (***a1)
  {
    v5 = 3;
    v6 = &bssl::kDTLSVersions;
  }

  else
  {
    v6 = &bssl::kTLSVersions;
  }

  v7 = &v6[v5];
  do
  {
    v8 = *v6;
    if (***a1)
    {
      v9 = 4;
    }

    else
    {
      v9 = 6;
    }

    if (***a1)
    {
      v10 = &bssl::kDTLSVersions;
    }

    else
    {
      v10 = &bssl::kTLSVersions;
    }

    do
    {
      v12 = *v10++;
      v11 = v12;
      v13 = v12 == v8 || v9 == 0;
      v9 -= 2;
    }

    while (!v13);
    if (v11 == v8)
    {
      if (*v6 > 0xFEFBu)
      {
        switch(v8)
        {
          case 65276:
            v14 = 772;
            break;
          case 65277:
            v14 = 771;
            break;
          case 65279:
            v14 = 770;
            break;
          default:
            goto LABEL_5;
        }
      }

      else
      {
        v14 = *v6;
        if ((v8 - 769) >= 4)
        {
          goto LABEL_5;
        }
      }

      if (*(a1 + 28) <= v14 && v14 <= *(a1 + 30))
      {
        if (*v6 > 0xFEFBu)
        {
          if (v8 == 65276)
          {
            v15 = 772;
          }

          else if (v8 == 65277)
          {
            v15 = 771;
          }

          else
          {
            v15 = 770;
          }
        }

        else
        {
          v15 = *v6;
          if ((v8 - 769) >= 4)
          {
            goto LABEL_5;
          }
        }

        if (v15 >= a3)
        {
          v18 = 0;
          result = CBB_add_space(a2, &v18, 2);
          if (!result)
          {
            return result;
          }

          v18[1] = v8;
          *v18 = BYTE1(v8);
        }
      }
    }

LABEL_5:
    ++v6;
  }

  while (v6 != v7);
  return 1;
}

uint64_t bssl::ssl_negotiate_version(uint64_t a1, _BYTE *a2, _WORD *a3, unsigned __int16 **a4)
{
  if (***a1)
  {
    v5 = 6;
  }

  else
  {
    v5 = 8;
  }

  v6 = &bssl::kTLSVersions;
  if (***a1)
  {
    v6 = &bssl::kDTLSVersions;
  }

  v7 = &v6[v5];
  v8 = v5 - 2;
  v9 = v6;
  while (1)
  {
    v10 = *v9;
    v11 = v8;
    v12 = v6;
    do
    {
      v14 = *v12++;
      v13 = v14;
      v15 = v14 == v10 || v11 == 0;
      v11 -= 2;
    }

    while (!v15);
    if (v13 != v10)
    {
      goto LABEL_7;
    }

    if (*v9 <= 0xFEFBu)
    {
      v16 = *v9;
      if ((v10 - 769) < 4)
      {
        goto LABEL_17;
      }

      goto LABEL_7;
    }

    if (v10 == 65276)
    {
      v16 = 772;
      goto LABEL_17;
    }

    if (v10 == 65277)
    {
      break;
    }

    if (v10 == 65279)
    {
      v16 = 770;
      goto LABEL_17;
    }

LABEL_7:
    if (++v9 == v7)
    {
      ERR_put_error(16, 0, 240, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_versions.cc", 348);
      result = 0;
      *a2 = 70;
      return result;
    }
  }

  v16 = 771;
LABEL_17:
  if (*(a1 + 28) > v16 || v16 > *(a1 + 30) || v10 == 772 && (*(a1 + 1618) & 0x40) != 0)
  {
    goto LABEL_7;
  }

  v17 = a4[1];
  if (!v17)
  {
    goto LABEL_7;
  }

  v18 = *a4;
  while (1)
  {
    if (v17 <= 1)
    {
      ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_versions.cc", 336);
      result = 0;
      *a2 = 50;
      return result;
    }

    if (v10 == bswap32(*v18) >> 16)
    {
      break;
    }

    ++v18;
    v17 -= 2;
    if (!v17)
    {
      goto LABEL_7;
    }
  }

  *a3 = v10;
  return 1;
}

uint64_t SSL_CTX_set_min_proto_version(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if ((a2 - 769) < 4 || ((a2 - 65276) <= 3 ? (v3 = a2 == 65278) : (v3 = 1), !v3))
  {
    v4 = *v2 == 0;
    v5 = 6;
    if (!v4)
    {
      v5 = 4;
    }

    v6 = &bssl::kTLSVersions;
    if (!v4)
    {
      v6 = &bssl::kDTLSVersions;
    }

    do
    {
      v8 = *v6++;
      v7 = v8;
      v9 = v8 == a2 || v5 == 0;
      v5 -= 2;
    }

    while (!v9);
    if (v7 == a2)
    {
      *(a1 + 226) = a2;
      return 1;
    }

    goto LABEL_22;
  }

  if (a2)
  {
LABEL_22:
    ERR_put_error(16, 0, 234, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_versions.cc", 137);
    return 0;
  }

  if (*v2)
  {
    v11 = -259;
  }

  else
  {
    v11 = 771;
  }

  *(a1 + 226) = v11;
  return 1;
}

uint64_t SSL_CTX_set_max_proto_version(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if ((a2 - 769) < 4 || ((a2 - 65276) <= 3 ? (v3 = a2 == 65278) : (v3 = 1), !v3))
  {
    v4 = *v2 == 0;
    v5 = 6;
    if (!v4)
    {
      v5 = 4;
    }

    v6 = &bssl::kTLSVersions;
    if (!v4)
    {
      v6 = &bssl::kDTLSVersions;
    }

    do
    {
      v8 = *v6++;
      v7 = v8;
      v9 = v8 == a2 || v5 == 0;
      v5 -= 2;
    }

    while (!v9);
    if (v7 == a2)
    {
      *(a1 + 224) = a2;
      return 1;
    }

    goto LABEL_22;
  }

  if (a2)
  {
LABEL_22:
    ERR_put_error(16, 0, 234, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_versions.cc", 137);
    return 0;
  }

  if (*v2)
  {
    v11 = -259;
  }

  else
  {
    v11 = 772;
  }

  *(a1 + 224) = v11;
  return 1;
}

uint64_t bssl::ssl_crypto_x509_check_client_CA_list(unint64_t *a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v3 = 0;
  while (1)
  {
    v4 = *a1 <= v3 ? 0 : *(a1[1] + 8 * v3);
    v5 = *(v4 + 16);
    v7 = *(v4 + 8);
    pval = 0;
    if (asn1_item_ex_d2i(&pval, &v7, v5, &X509_NAME_ENTRY_it.sname, 0xFFFFFFFFLL, 0, 0, 0, 0) <= 0)
    {
      ASN1_item_ex_free(&pval, &X509_NAME_ENTRY_it.sname);
    }

    if (!pval)
    {
      break;
    }

    if (v7 != (*(v4 + 8) + *(v4 + 16)))
    {
      ASN1_item_ex_free(&pval, &X509_NAME_ENTRY_it.sname);
      return 0;
    }

    ASN1_item_ex_free(&pval, &X509_NAME_ENTRY_it.sname);
    if (v2 == ++v3)
    {
      return 1;
    }
  }

  return 0;
}

void bssl::ssl_crypto_x509_cert_clear(uint64_t a1)
{
  X509_free(*(a1 + 48));
  *(a1 + 48) = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = 0;
      do
      {
        v5 = *(v2[1] + 8 * v4);
        if (v5)
        {
          X509_free(v5);
          v3 = *v2;
        }

        ++v4;
      }

      while (v4 < v3);
    }

    v6 = v2[1];
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

    v11 = *(v2 - 1);
    v10 = v2 - 1;
    v12 = v11 + 8;
    if (v11 != -8)
    {
      bzero(v10, v12);
    }

    free(v10);
  }

  *(a1 + 40) = 0;
  X509_free(*(a1 + 56));
  *(a1 + 56) = 0;
}

void bssl::ssl_crypto_x509_cert_free(uint64_t a1)
{
  X509_free(*(a1 + 48));
  *(a1 + 48) = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = 0;
      do
      {
        v5 = *(v2[1] + 8 * v4);
        if (v5)
        {
          X509_free(v5);
          v3 = *v2;
        }

        ++v4;
      }

      while (v4 < v3);
    }

    v6 = v2[1];
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

    v11 = *(v2 - 1);
    v10 = v2 - 1;
    v12 = v11 + 8;
    if (v11 != -8)
    {
      bzero(v10, v12);
    }

    free(v10);
  }

  *(a1 + 40) = 0;
  X509_free(*(a1 + 56));
  *(a1 + 56) = 0;
  v13 = *(a1 + 80);

  X509_STORE_free(v13);
}

uint64_t bssl::ssl_crypto_x509_cert_dup(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 80);
  if (v2)
  {
    v3 = atomic_load((v2 + 232));
    if (v3 != -1)
    {
      for (i = v3; i != -1; v3 = i)
      {
        atomic_compare_exchange_strong((v2 + 232), &i, v3 + 1);
        if (i == v3)
        {
          break;
        }
      }
    }

    *(result + 80) = *(a2 + 80);
  }

  return result;
}

void bssl::ssl_crypto_x509_cert_flush_cached_chain(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = 0;
      do
      {
        v5 = *(v2[1] + 8 * v4);
        if (v5)
        {
          X509_free(v5);
          v3 = *v2;
        }

        ++v4;
      }

      while (v4 < v3);
    }

    v6 = v2[1];
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

    v11 = *(v2 - 1);
    v10 = v2 - 1;
    v12 = v11 + 8;
    if (v11 != -8)
    {
      bzero(v10, v12);
    }

    free(v10);
  }

  *(a1 + 40) = 0;
}

uint64_t bssl::ssl_crypto_x509_session_cache_objects(bssl *this, ssl_session_st *a2)
{
  v3 = *(this + 17);
  if (v3 && *v3)
  {
    result = OPENSSL_sk_new_null();
    if (!result)
    {
      return result;
    }

    v5 = result;
    if ((*(this + 408) & 0x10) != 0)
    {
      v6 = OPENSSL_sk_new_null();
      if (!v6)
      {
LABEL_121:
        v74 = *v5;
        if (*v5)
        {
          v75 = 0;
          do
          {
            v76 = *(*(v5 + 8) + 8 * v75);
            if (v76)
            {
              X509_free(v76);
              v74 = *v5;
            }

            ++v75;
          }

          while (v75 < v74);
        }

        v77 = *(v5 + 8);
        if (v77)
        {
          v79 = *(v77 - 8);
          v78 = (v77 - 8);
          v80 = v79 + 8;
          if (v79 != -8)
          {
            bzero(v78, v80);
          }

          free(v78);
        }

        v82 = *(v5 - 8);
        v81 = (v5 - 8);
        v83 = v82 + 8;
        if (v82 != -8)
        {
          bzero(v81, v83);
        }

        free(v81);
        return 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v30 = *(this + 17);
    if (v30)
    {
      v31 = *v30;
      if (*v30)
      {
        if (v6)
        {
          v32 = 0;
          v33 = 0;
          while (1)
          {
            v34 = *v30 <= v32 ? 0 : *(v30[1] + 8 * v32);
            v35 = *(v34 + 16);
            v84 = *(v34 + 8);
            v85 = v35;
            v36 = x509_parse(&v84, v34);
            if (!v36)
            {
              break;
            }

            v37 = v36;
            if (v85)
            {
              goto LABEL_98;
            }

            v38 = atomic_load(&v36->valid);
            if (v38 != -1)
            {
              for (i = v38; i != -1; v38 = i)
              {
                atomic_compare_exchange_strong(&v36->valid, &i, v38 + 1);
                if (i == v38)
                {
                  break;
                }
              }
            }

            v7 = v36;
            if (v33)
            {
              v40 = *v6;
              if (*v6 >= 0x7FFFFFFFuLL)
              {
                ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
LABEL_105:
                X509_free(v37);
                goto LABEL_106;
              }

              v41 = *(v6 + 3);
              if (v41 <= v40 + 1)
              {
                v44 = OPENSSL_realloc(*(v6 + 1), 16 * v41);
                if (!v44)
                {
                  goto LABEL_105;
                }

                *(v6 + 1) = v44;
                *(v6 + 3) = 2 * v41;
                v42 = *v6;
                v45 = *v6 - v40;
                if (*v6 <= v40)
                {
                  v43 = &v44[v42];
                }

                else
                {
                  if (8 * v45)
                  {
                    memmove(&v44[v40 + 1], &v44[v40], 8 * v45);
                    v42 = *v6;
                    v44 = *(v6 + 1);
                  }

                  v43 = &v44[v40];
                }
              }

              else
              {
                v42 = *v6;
                v43 = (*(v6 + 1) + 8 * v40);
              }

              *v43 = v37;
              *(v6 + 4) = 0;
              *v6 = v42 + 1;
              if (v42 == -1)
              {
                goto LABEL_105;
              }

              v7 = v33;
            }

            v46 = *v5;
            if (*v5 >= 0x7FFFFFFFuLL)
            {
              ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
LABEL_102:
              v33 = v7;
              goto LABEL_106;
            }

            v47 = *(v5 + 24);
            if (v47 <= v46 + 1)
            {
              v50 = OPENSSL_realloc(*(v5 + 8), 16 * v47);
              if (!v50)
              {
                goto LABEL_102;
              }

              *(v5 + 8) = v50;
              *(v5 + 24) = 2 * v47;
              v48 = *v5;
              v51 = *v5 - v46;
              if (*v5 <= v46)
              {
                v49 = &v50[v48];
              }

              else
              {
                if (8 * v51)
                {
                  memmove(&v50[v46 + 1], &v50[v46], 8 * v51);
                  v48 = *v5;
                  v50 = *(v5 + 8);
                }

                v49 = &v50[v46];
              }
            }

            else
            {
              v48 = *v5;
              v49 = (*(v5 + 8) + 8 * v46);
            }

            *v49 = v37;
            *(v5 + 16) = 0;
            *v5 = v48 + 1;
            if (v48 == -1)
            {
              goto LABEL_102;
            }

            ++v32;
            v33 = v7;
            if (v32 == v31)
            {
              goto LABEL_8;
            }
          }
        }

        else
        {
          v52 = 0;
          v33 = 0;
          while (1)
          {
            v53 = *v30 <= v52 ? 0 : *(v30[1] + 8 * v52);
            v54 = *(v53 + 16);
            v84 = *(v53 + 8);
            v85 = v54;
            v55 = x509_parse(&v84, v53);
            if (!v55)
            {
              break;
            }

            v37 = v55;
            if (v85)
            {
LABEL_98:
              X509_free(v37);
              break;
            }

            if (!v33)
            {
              v56 = atomic_load(&v55->valid);
              v33 = v55;
              if (v56 != -1)
              {
                for (j = v56; j != -1; v56 = j)
                {
                  atomic_compare_exchange_strong(&v55->valid, &j, v56 + 1);
                  if (j == v56)
                  {
                    break;
                  }
                }

                v33 = v55;
              }
            }

            v58 = *v5;
            if (*v5 >= 0x7FFFFFFFuLL)
            {
              ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
LABEL_106:
              X509_free(v37);
              goto LABEL_107;
            }

            v59 = *(v5 + 24);
            if (v59 <= v58 + 1)
            {
              v62 = OPENSSL_realloc(*(v5 + 8), 16 * v59);
              if (!v62)
              {
                goto LABEL_106;
              }

              *(v5 + 8) = v62;
              *(v5 + 24) = 2 * v59;
              v60 = *v5;
              v63 = *v5 - v58;
              if (*v5 <= v58)
              {
                v61 = &v62[v60];
              }

              else
              {
                if (8 * v63)
                {
                  memmove(&v62[v58 + 1], &v62[v58], 8 * v63);
                  v60 = *v5;
                  v62 = *(v5 + 8);
                }

                v61 = &v62[v58];
              }
            }

            else
            {
              v60 = *v5;
              v61 = (*(v5 + 8) + 8 * v58);
            }

            *v61 = v37;
            *(v5 + 16) = 0;
            *v5 = v60 + 1;
            if (v60 == -1)
            {
              goto LABEL_106;
            }

            if (++v52 == v31)
            {
              v6 = 0;
              v7 = v33;
              goto LABEL_8;
            }
          }
        }

        ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_x509.cc", 146);
        if (v33)
        {
LABEL_107:
          X509_free(v33);
        }

        if (v6)
        {
          v64 = *v6;
          if (*v6)
          {
            v65 = 0;
            do
            {
              v66 = *(*(v6 + 1) + 8 * v65);
              if (v66)
              {
                X509_free(v66);
                v64 = *v6;
              }

              ++v65;
            }

            while (v65 < v64);
          }

          v67 = *(v6 + 1);
          if (v67)
          {
            v69 = *(v67 - 8);
            v68 = (v67 - 8);
            v70 = v69 + 8;
            if (v69 != -8)
            {
              bzero(v68, v70);
            }

            free(v68);
          }

          v72 = *(v6 - 1);
          v71 = v6 - 8;
          v73 = v72 + 8;
          if (v72 != -8)
          {
            bzero(v71, v73);
          }

          free(v71);
        }

        goto LABEL_121;
      }
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = 0;
LABEL_8:
  v8 = *(this + 20);
  if (v8)
  {
    v9 = *v8;
    if (*v8)
    {
      v10 = 0;
      do
      {
        v11 = *(v8[1] + 8 * v10);
        if (v11)
        {
          X509_free(v11);
          v9 = *v8;
        }

        ++v10;
      }

      while (v10 < v9);
    }

    v12 = v8[1];
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

    v17 = *(v8 - 1);
    v16 = v8 - 1;
    v18 = v17 + 8;
    if (v17 != -8)
    {
      bzero(v16, v18);
    }

    free(v16);
  }

  *(this + 20) = v5;
  v19 = *(this + 21);
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

  *(this + 21) = v6;
  X509_free(*(this + 19));
  *(this + 19) = v7;
  return 1;
}