BOOL webrtc::OpenSSLAdapter::SSLVerifyCallback(_BOOL8 this, uint64_t a2, x509_store_ctx_st *a3)
{
  v3 = *(**(*(a2 + 112) + 8) + 120);
  if (v3 && *v3)
  {
    v4 = **(v3 + 8);
    if (this)
    {
      return this;
    }
  }

  else
  {
    v4 = 0;
    if (this)
    {
      return this;
    }
  }

  if (*(v4 + 432))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_adapter.cc");
    }

    out = 0;
    v13 = i2d_X509(*(a2 + 80), &out);
    if ((v13 & 0x80000000) == 0)
    {
      v14 = out;
      v15 = v13;
      {
        v45 = v13;
        v15 = v45;
        if (v44)
        {
          webrtc::openssl::GetBufferPool(void)::instance = CRYPTO_BUFFER_POOL_new();
          v15 = v45;
        }
      }

      v16 = crypto_buffer_new(v14, v15, 0, webrtc::openssl::GetBufferPool(void)::instance);
      if (!v16)
      {
        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
        {
          v39 = 1;
          if (!v14)
          {
            goto LABEL_28;
          }
        }

        else
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v32, v33, v34, v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_adapter.cc");
          v39 = 1;
          if (!v14)
          {
            goto LABEL_28;
          }
        }

        goto LABEL_25;
      }

      v46 = &unk_288290050;
      v47 = v16;
      v17 = (*(**(v4 + 432) + 16))(*(v4 + 432), &v46);
      if (v17)
      {
        *(v4 + 584) = 1;
        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
        {
          goto LABEL_22;
        }
      }

      else if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
      {
        goto LABEL_22;
      }

      webrtc::webrtc_logging_impl::Log("\r\t", v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_adapter.cc");
LABEL_22:
      v39 = v17 ^ 1;
      v40 = v47;
      v47 = 0;
      if (v40)
      {
        CRYPTO_BUFFER_free(v40);
      }

      if (!v14)
      {
LABEL_28:
        if (!v39)
        {
          return 1;
        }

        return (*(v4 + 532) & 1) != 0;
      }

LABEL_25:
      v42 = *(v14 - 1);
      v41 = v14 - 8;
      v43 = v42 + 8;
      if (v42 != -8)
      {
        bzero(v41, v43);
      }

      free(v41);
      goto LABEL_28;
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v25, v26, v27, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_adapter.cc");
    }
  }

  return (*(v4 + 532) & 1) != 0;
}

uint64_t webrtc::OpenSSLAdapter::NewSSLSessionCallback(webrtc::OpenSSLAdapter *this, ssl_st *a2, ssl_session_st *a3)
{
  v4 = *(this + 15);
  if (!v4 || !*v4)
  {
    v5 = 0;
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v5 = **(v4 + 8);
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
LABEL_6:
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_adapter.cc");
  }

LABEL_7:
  v13 = *(v5 + 527);
  if ((v13 & 0x8000000000000000) != 0)
  {
    v14 = *(v5 + 504);
    v13 = *(v5 + 512);
  }

  else
  {
    v14 = (v5 + 504);
  }

  webrtc::OpenSSLSessionCache::AddSession(*(v5 + 424), v14, v13, &a2->version);
  return 1;
}

void BIO_socket_method(void)::$_0::operator()()
{
  v0 = malloc_type_malloc(0x58uLL, 0xB4E622C9uLL);
  if (v0)
  {
    *v0 = 80;
    *(v0 + 12) = 0u;
    *(v0 + 28) = 0u;
    *(v0 + 44) = 0u;
    *(v0 + 60) = 0u;
    *(v0 + 2) = 1043;
    *(v0 + 72) = 0u;
    *(v0 + 2) = "socket";
    *(v0 + 3) = socket_write;
    *(v0 + 4) = socket_read;
    *(v0 + 7) = socket_ctrl;
    *(v0 + 8) = socket_new;
    *(v0 + 9) = socket_free;
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    __break(1u);
  }
}

uint64_t socket_write(bio_st *a1, const char *a2, int a3)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *&a1->num;
  a1->init &= 0xFFFFFFF0;
  a1->shutdown = 0;
  result = (*(*v3 + 48))(v3, a2, a3);
  if (result <= 0)
  {
    if ((*(*v3 + 112))(v3) - 35 <= 1)
    {
      a1->init |= 0xAu;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t socket_read(bio_st *a1, char *a2, int a3)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *&a1->num;
  a1->init &= 0xFFFFFFF0;
  a1->shutdown = 0;
  result = (*(*v3 + 64))(v3, a2, a3, 0);
  if (result <= 0)
  {
    if ((*(*v3 + 112))(v3) - 35 <= 1)
    {
      a1->init |= 9u;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

BOOL socket_ctrl(bio_st *a1, int a2, uint64_t a3, void *a4)
{
  if (a2 == 11)
  {
    return 1;
  }

  if (a2 == 2)
  {
    return (*(*a4 + 128))(a4) == 0;
  }

  return 0;
}

uint64_t socket_new(bio_st *a1)
{
  a1->cb_arg = 1;
  *&a1->num = 0;
  return 1;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::OpenSSLAdapter::ContinueSSL(void)::$_0 &&>(uint64_t **a1)
{
  v1 = *a1;
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_adapter.cc");
  }

  DTLSv1_handle_timeout(v1[61]);

  return webrtc::OpenSSLAdapter::ContinueSSL(v1);
}

uint64_t webrtc::OpenSSLDigest::GetDigestEVP(unsigned __int16 *a1, uint64_t a2, const EVP_MD **a3)
{
  if (a2 == 7)
  {
    if (*a1 == *"sha-224" && *(a1 + 3) == *"-224")
    {
      *a3 = EVP_sha224();
      return 1;
    }

    if (*a1 == *"sha-256" && *(a1 + 3) == *"-256")
    {
      *a3 = EVP_sha256();
      return 1;
    }

    if (*a1 == *"sha-384" && *(a1 + 3) == *"-384")
    {
      *a3 = EVP_sha384();
      return 1;
    }

    if (*a1 == *"sha-512" && *(a1 + 3) == *"-512")
    {
      *a3 = EVP_sha512();
      return 1;
    }

    return 0;
  }

  if (a2 != 5)
  {
    if (a2 == 3)
    {
      if (*a1 != webrtc::DIGEST_MD5 || *(a1 + 2) != 53)
      {
        return 0;
      }

      *a3 = &evp_md_md5;
      return 1;
    }

    return 0;
  }

  if (*a1 != *"sha-1" || *(a1 + 4) != webrtc::DIGEST_SHA_1[4])
  {
    return 0;
  }

  *a3 = EVP_sha1();
  return 1;
}

void webrtc::OpenSSLDigest::OpenSSLDigest(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  *a1 = &unk_2882971F8;
  *(a1 + 8) = 0;
  v6 = malloc_type_malloc(0x28uLL, 0xB4E622C9uLL);
  if (v6)
  {
    *v6 = 32;
    *(a1 + 8) = v6 + 8;
    *(v6 + 8) = 0u;
    *(v6 + 24) = 0u;
    if (!webrtc::OpenSSLDigest::GetDigestEVP(a2, a3, (a1 + 16)))
    {
      *(a1 + 16) = 0;
      return;
    }

    v7 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (*v7 == v8)
    {
      v8 = *v7;
LABEL_12:
      (*(v8 + 16))(v7);
      return;
    }

    v9 = *(v8 + 44);
    v10 = malloc_type_malloc(v9 + 8, 0xB4E622C9uLL);
    if (v10)
    {
      *v10 = v9;
      v11 = v10 + 1;
      v12 = v7[1];
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

      *v7 = v8;
      v7[1] = v11;
      goto LABEL_12;
    }

    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    *(a1 + 8) = 0;
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_digest.cc", 21, "ctx_ != nullptr", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v16, v17, v18, v19, v21);
    webrtc::OpenSSLDigest::~OpenSSLDigest(v20);
  }
}

void webrtc::OpenSSLDigest::~OpenSSLDigest(webrtc::OpenSSLDigest *this)
{
  v1 = *(this + 1);
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

    v6 = *(v1 + 24);
    if (v6)
    {
      (*v6)(*(v1 + 16));
    }

    *v1 = 0u;
    *(v1 + 16) = 0u;
    v8 = *(v1 - 8);
    v7 = (v1 - 8);
    v9 = v8 + 8;
    if (v8 != -8)
    {
      bzero(v7, v9);
    }

    free(v7);
  }
}

{
  v1 = *(this + 1);
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

    v6 = *(v1 + 24);
    if (v6)
    {
      (*v6)(*(v1 + 16));
    }

    *v1 = 0u;
    *(v1 + 16) = 0u;
    v8 = *(v1 - 8);
    v7 = (v1 - 8);
    v9 = v8 + 8;
    if (v8 != -8)
    {
      bzero(v7, v9);
    }

    free(v7);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::OpenSSLDigest::Size(webrtc::OpenSSLDigest *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    return *(v1 + 4);
  }

  else
  {
    return 0;
  }
}

uint64_t webrtc::OpenSSLDigest::Update(uint64_t this, const void *a2)
{
  if (*(this + 16))
  {
    return (*(**(this + 8) + 24))(*(this + 8), a2);
  }

  return this;
}

uint64_t webrtc::OpenSSLDigest::Finish(webrtc::OpenSSLDigest *this, void *a2, unint64_t a3)
{
  v3 = *(this + 2);
  if (!v3 || *(v3 + 4) > a3)
  {
    return 0;
  }

  v6 = *(this + 1);
  (*(*v6 + 4))(v6, a2);
  v7 = *(*v6 + 1);
  v8 = *(*v6 + 11);
  if (v8)
  {
    bzero(v6[1], v8);
  }

  v9 = *(this + 1);
  v10 = *(this + 2);
  if (*v9 == v10)
  {
    v10 = *v9;
  }

  else
  {
    v11 = *(v10 + 44);
    v12 = malloc_type_malloc(v11 + 8, 0xB4E622C9uLL);
    if (!v12)
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      return v7;
    }

    *v12 = v11;
    v13 = v12 + 1;
    v14 = v9[1];
    if (v14)
    {
      v16 = *(v14 - 8);
      v15 = (v14 - 8);
      v17 = v16 + 8;
      if (v16 != -8)
      {
        bzero(v15, v17);
      }

      free(v15);
    }

    *v9 = v10;
    v9[1] = v13;
  }

  (*(v10 + 16))(v9);
  return v7;
}

uint64_t webrtc::OpenSSLKeyPair::Generate@<X0>(webrtc::OpenSSLKeyPair *this@<X0>, void *a2@<X8>)
{
  v101 = *MEMORY[0x277D85DE8];
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_key_pair.cc");
  }

  v13 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (v13)
  {
    *v13 = 24;
    *(v13 + 2) = 1;
    v14 = (v13 + 8);
    *(v13 + 20) = 0;
    *(v13 + 12) = 0;
    *(v13 + 7) = 0;
    v15 = *this;
    if (*this != 1)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (*(this + 1))
    {
      if (v14)
      {
        v20 = atomic_load(v14);
        if (v20 != -1)
        {
          while (1)
          {
            if (!v20)
            {
              goto LABEL_131;
            }

            v21 = v20;
            atomic_compare_exchange_strong(v14, &v21, v20 - 1);
            if (v21 == v20)
            {
              break;
            }

            v20 = v21;
            if (v21 == -1)
            {
              goto LABEL_88;
            }
          }

          if (v20 == 1)
          {
            v62 = *(v14 + 2);
            if (v62)
            {
              v63 = *(v62 + 160);
              if (v63)
              {
                v63(v14);
                *(v14 + 1) = 0;
                v14[1] = 0;
              }
            }

            v65 = *(v14 - 1);
            v64 = (v14 - 2);
            v66 = v65 + 8;
            if (v65 != -8)
            {
              bzero(v64, v66);
            }

            free(v64);
          }
        }
      }

LABEL_88:
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_90;
    }

    v33 = EC_KEY_new_by_curve_name(415);
    if (!v33)
    {
      if (v14)
      {
        v76 = atomic_load(v14);
        if (v76 != -1)
        {
          while (1)
          {
            if (!v76)
            {
LABEL_131:
              abort();
            }

            v77 = v76;
            atomic_compare_exchange_strong(v14, &v77, v76 - 1);
            if (v77 == v76)
            {
              break;
            }

            v76 = v77;
            if (v77 == -1)
            {
              goto LABEL_120;
            }
          }

          if (v76 == 1)
          {
            v90 = *(v14 + 2);
            if (v90)
            {
              v91 = *(v90 + 160);
              if (v91)
              {
                v91(v14);
                *(v14 + 1) = 0;
                v14[1] = 0;
              }
            }

            v93 = *(v14 - 1);
            v92 = (v14 - 2);
            v94 = v93 + 8;
            if (v93 != -8)
            {
              bzero(v92, v94);
            }

            free(v92);
          }
        }
      }

LABEL_120:
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_90;
    }

    if (v14)
    {
      v34 = v33;
      if (EC_KEY_generate_key(v33))
      {
        v35 = *(v14 + 2);
        if (v35)
        {
          v36 = *(v35 + 160);
          if (v36)
          {
            v36(v14);
          }
        }

        v14[1] = ec_asn1_meth;
        *(v14 + 1) = v34;
        *(v14 + 2) = &ec_asn1_meth;
        goto LABEL_105;
      }

      v88 = atomic_load(v14);
      v33 = v34;
      if (v88 != -1)
      {
        while (1)
        {
          if (!v88)
          {
            goto LABEL_131;
          }

          v89 = v88;
          atomic_compare_exchange_strong(v14, &v89, v88 - 1);
          if (v89 == v88)
          {
            break;
          }

          v88 = v89;
          if (v89 == -1)
          {
            goto LABEL_129;
          }
        }

        if (v88 == 1)
        {
          v95 = *(v14 + 2);
          if (v95)
          {
            v96 = *(v95 + 160);
            if (v96)
            {
              v96(v14);
              *(v14 + 1) = 0;
              v14[1] = 0;
            }
          }

          v98 = *(v14 - 1);
          v97 = (v14 - 2);
          v99 = v98 + 8;
          if (v98 != -8)
          {
            bzero(v97, v99);
          }

          free(v97);
          v33 = v34;
        }
      }
    }

LABEL_129:
    EC_KEY_free(v33);
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      goto LABEL_90;
    }

    goto LABEL_89;
  }

  ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  v14 = 0;
  v15 = *this;
  if (*this == 1)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (v15)
  {
    if (v14)
    {
      v22 = atomic_load(v14);
      if (v22 != -1)
      {
        while (1)
        {
          if (!v22)
          {
            goto LABEL_131;
          }

          v23 = v22;
          atomic_compare_exchange_strong(v14, &v23, v22 - 1);
          if (v23 == v22)
          {
            break;
          }

          v22 = v23;
          if (v23 == -1)
          {
            goto LABEL_58;
          }
        }

        if (v22 == 1)
        {
          v37 = *(v14 + 2);
          if (v37)
          {
            v38 = *(v37 + 160);
            if (v38)
            {
              v38(v14);
              *(v14 + 1) = 0;
              v14[1] = 0;
            }
          }

          v40 = *(v14 - 1);
          v39 = (v14 - 2);
          v41 = v40 + 8;
          if (v40 != -8)
          {
            bzero(v39, v41);
          }

          free(v39);
        }
      }
    }

LABEL_58:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_90;
  }

  v16 = *(this + 1);
  v17 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (v17)
  {
    *v17 = 24;
    v17[1] = 0;
    v18 = (v17 + 1);
    v17[2] = 0;
    v17[3] = 0x100000000;
    v19 = RSA_new_method(0);
    if (!v14)
    {
      goto LABEL_38;
    }
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v18 = 0;
    v19 = RSA_new_method(0);
    if (!v14)
    {
      goto LABEL_38;
    }
  }

  if (v18 && v19)
  {
    if (!BN_set_word(v18, *(this + 2)) || !RSA_generate_key_ex_maybe_fips(v19, v16, v18, 0, 0))
    {
LABEL_39:
      v31 = atomic_load(v14);
      if (v31 != -1)
      {
        while (1)
        {
          if (!v31)
          {
            goto LABEL_131;
          }

          v32 = v31;
          atomic_compare_exchange_strong(v14, &v32, v31 - 1);
          if (v32 == v31)
          {
            break;
          }

          v31 = v32;
          if (v32 == -1)
          {
            goto LABEL_67;
          }
        }

        if (v31 == 1)
        {
          v49 = *(v14 + 2);
          if (v49)
          {
            v50 = *(v49 + 160);
            if (v50)
            {
              v50(v14);
              *(v14 + 1) = 0;
              v14[1] = 0;
            }
          }

          v52 = *(v14 - 1);
          v51 = (v14 - 2);
          v53 = v52 + 8;
          if (v52 != -8)
          {
            bzero(v51, v53);
          }

          free(v51);
        }
      }

      goto LABEL_67;
    }

    v24 = *(v14 + 2);
    if (v24)
    {
      v25 = *(v24 + 160);
      if (v25)
      {
        v25(v14);
      }
    }

    v14[1] = rsa_asn1_meth;
    *(v14 + 1) = v19;
    *(v14 + 2) = &rsa_asn1_meth;
    flags = v18->flags;
    if ((flags & 2) == 0)
    {
      d = v18->d;
      if (v18->d)
      {
        v29 = *(d - 1);
        v28 = d - 1;
        v30 = v29 + 8;
        if (v29 != -8)
        {
          bzero(v28, v30);
        }

        free(v28);
        flags = v18->flags;
      }
    }

    if (flags)
    {
      v79 = *&v18[-1].neg;
      p_neg = &v18[-1].neg;
      v80 = v79 + 8;
      if (v79 != -8)
      {
        bzero(p_neg, v80);
      }

      free(p_neg);
    }

    else
    {
      v18->d = 0;
    }

LABEL_105:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v81, v82, v83, v84, v85, v86, v87, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_key_pair.cc");
    }

    operator new();
  }

LABEL_38:
  if (v14)
  {
    goto LABEL_39;
  }

LABEL_67:
  if (!v18)
  {
    goto LABEL_75;
  }

  v54 = v18->flags;
  if ((v54 & 2) == 0)
  {
    v55 = v18->d;
    if (v18->d)
    {
      v57 = *(v55 - 1);
      v56 = v55 - 1;
      v58 = v57 + 8;
      if (v57 != -8)
      {
        bzero(v56, v58);
      }

      free(v56);
      v54 = v18->flags;
    }
  }

  if ((v54 & 1) == 0)
  {
    v18->d = 0;
LABEL_75:
    RSA_free(v19);
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      goto LABEL_90;
    }

LABEL_89:
    webrtc::webrtc_logging_impl::Log("\r\t", v42, v43, v44, v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_key_pair.cc");
    goto LABEL_90;
  }

  v60 = *&v18[-1].neg;
  v59 = &v18[-1].neg;
  v61 = v60 + 8;
  if (v60 != -8)
  {
    bzero(v59, v61);
  }

  free(v59);
  RSA_free(v19);
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    goto LABEL_89;
  }

LABEL_90:
  for (i = ERR_get_error(); i; i = ERR_get_error())
  {
    ERR_error_string_n(i, buf, 0xC8uLL);
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      v3 = v3 & 0xFFFFFFFF00000000 | 0x78B;
      webrtc::webrtc_logging_impl::Log("\r\v\t\t\t", v68, v69, v70, v71, v72, v73, v74, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_utility.cc");
    }
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t webrtc::OpenSSLKeyPair::FromPrivateKeyPEMString@<X0>(void *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v4 = BIO_new_mem_buf(a1, a2);
  if (!v4)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      goto LABEL_35;
    }

LABEL_34:
    webrtc::webrtc_logging_impl::Log("\r\t", v26, v27, v28, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_key_pair.cc");
    goto LABEL_35;
  }

  v5 = v4;
  if (v4->method && (ctrl = v4->method->ctrl) != 0)
  {
    (ctrl)(v4, 130, 0, 0);
  }

  else
  {
    ERR_put_error(17, 0, 115, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 169);
  }

  bio_PrivateKey = PEM_read_bio_PrivateKey(v5, 0, 0, 0);
  do
  {
    v8 = v5;
    v9 = atomic_load(&v5->retry_reason);
    if (v9 == -1)
    {
      break;
    }

    while (1)
    {
      if (!v9)
      {
LABEL_43:
        abort();
      }

      v10 = v9;
      atomic_compare_exchange_strong(&v5->retry_reason, &v10, v9 - 1);
      if (v10 == v9)
      {
        break;
      }

      v9 = v10;
      if (v10 == -1)
      {
        goto LABEL_19;
      }
    }

    if (v9 != 1)
    {
      break;
    }

    v5 = v5->ptr;
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
    v13 = *&v8[-1].ex_data.dummy;
    p_dummy = &v8[-1].ex_data.dummy;
    v14 = v13 + 8;
    if (v13 != -8)
    {
      bzero(p_dummy, v14);
    }

    free(p_dummy);
  }

  while (v5);
LABEL_19:
  if (!bio_PrivateKey)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  ptr = bio_PrivateKey->pkey.ptr;
  if (!ptr || (v16 = *(ptr + 17)) == 0 || !v16(bio_PrivateKey))
  {
    operator new();
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v17, v18, v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_key_pair.cc");
  }

  v24 = atomic_load(bio_PrivateKey);
  if (v24 != -1)
  {
    while (1)
    {
      if (!v24)
      {
        goto LABEL_43;
      }

      v25 = v24;
      atomic_compare_exchange_strong(&bio_PrivateKey->type, &v25, v24 - 1);
      if (v25 == v24)
      {
        break;
      }

      v24 = v25;
      if (v25 == -1)
      {
        goto LABEL_35;
      }
    }

    if (v24 == 1)
    {
      v34 = bio_PrivateKey->pkey.ptr;
      if (v34)
      {
        v35 = *(v34 + 20);
        if (v35)
        {
          v35(bio_PrivateKey);
          *&bio_PrivateKey->references = 0;
          bio_PrivateKey->save_type = 0;
        }
      }

      attributes = bio_PrivateKey[-1].attributes;
      p_attributes = &bio_PrivateKey[-1].attributes;
      p_data = &attributes->data;
      if (attributes != -8)
      {
        bzero(p_attributes, p_data);
      }

      free(p_attributes);
    }
  }

LABEL_35:
  result = 0;
  *a3 = 0;
  return result;
}

void webrtc::OpenSSLKeyPair::PrivateKeyToPEMString(evp_pkey_st **this@<X0>, _BYTE *a2@<X8>)
{
  v4 = malloc_type_malloc(0x50uLL, 0xB4E622C9uLL);
  if (!v4)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  *v4 = 72;
  *(v4 + 1) = &mem_method;
  v5 = (v4 + 8);
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 9) = 0;
  *(v4 + 7) = 1;
  *(v4 + 11) = 1;
  *(v4 + 2) = 0;
  if (off_2882A4B88)
  {
    v6 = v4;
    if (!off_2882A4B88((v4 + 8)))
    {
      free(v6);
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
      {
LABEL_54:
        a2[23] = 0;
        *a2 = 0;
        return;
      }

LABEL_53:
      webrtc::webrtc_logging_impl::Log("\r\t\t\t", v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_key_pair.cc");
      goto LABEL_54;
    }
  }

  if (!do_pk8pkey(v5, *this, 0, -1, 0, 0, 0, 0, 0))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t\t\t", v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_key_pair.cc");
    }

    do
    {
      v25 = v5;
      v26 = atomic_load(&v5->retry_reason);
      if (v26 == -1)
      {
        break;
      }

      while (1)
      {
        if (!v26)
        {
LABEL_56:
          abort();
        }

        v27 = v26;
        atomic_compare_exchange_strong(&v5->retry_reason, &v27, v26 - 1);
        if (v27 == v26)
        {
          break;
        }

        v26 = v27;
        if (v27 == -1)
        {
          goto LABEL_54;
        }
      }

      if (v26 != 1)
      {
        break;
      }

      v5 = v5->ptr;
      v25->ptr = 0;
      if (v25->method)
      {
        destroy = v25->method->destroy;
        if (destroy)
        {
          (destroy)(v25);
        }
      }

      CRYPTO_free_ex_data(&g_ex_data_class, v25, &v25->callback);
      v30 = *&v25[-1].ex_data.dummy;
      p_dummy = &v25[-1].ex_data.dummy;
      v31 = v30 + 8;
      if (v30 != -8)
      {
        bzero(p_dummy, v31);
      }

      free(p_dummy);
    }

    while (v5);
    goto LABEL_54;
  }

  __src = 0;
  if (!v5->method || (ctrl = v5->method->ctrl) == 0)
  {
    ERR_put_error(17, 0, 115, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 169);
    goto LABEL_58;
  }

  v8 = (ctrl)(v5, 3, 0, &__src);
  v9 = __src;
  if (v8)
  {
    v10 = __src == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    goto LABEL_58;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_59;
  }

  if (v8 > 0x16)
  {
    operator new();
  }

  a2[23] = v8;
  v32 = &a2[v8];
  if (a2 <= v9 && v32 > v9)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v8)
  {
    memmove(a2, v9, v8);
  }

  *v32 = 0;
  do
  {
    v34 = v5;
    v35 = atomic_load(&v5->retry_reason);
    if (v35 == -1)
    {
      break;
    }

    while (1)
    {
      if (!v35)
      {
        goto LABEL_56;
      }

      v36 = v35;
      atomic_compare_exchange_strong(&v5->retry_reason, &v36, v35 - 1);
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
      break;
    }

    v5 = v5->ptr;
    v34->ptr = 0;
    if (v34->method)
    {
      v37 = v34->method->destroy;
      if (v37)
      {
        (v37)(v34);
      }
    }

    CRYPTO_free_ex_data(&g_ex_data_class, v34, &v34->callback);
    v39 = *&v34[-1].ex_data.dummy;
    v38 = &v34[-1].ex_data.dummy;
    v40 = v39 + 8;
    if (v39 != -8)
    {
      bzero(v38, v40);
    }

    free(v38);
  }

  while (v5);
}

void webrtc::OpenSSLKeyPair::PublicKeyToPEMString(EVP_PKEY **this@<X0>, char *a2@<X8>)
{
  v4 = malloc_type_malloc(0x50uLL, 0xB4E622C9uLL);
  if (!v4)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  *v4 = 72;
  *(v4 + 1) = &mem_method;
  v5 = (v4 + 8);
  *(v4 + 24) = 0u;
  v6 = v4 + 24;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 9) = 0;
  *(v4 + 7) = 1;
  *(v4 + 11) = 1;
  v7 = v4;
  *(v4 + 2) = 0;
  if (off_2882A4B88 && !off_2882A4B88((v4 + 8)))
  {
    free(v7);
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
LABEL_56:
      a2[23] = 0;
      *a2 = 0;
      return;
    }

LABEL_55:
    webrtc::webrtc_logging_impl::Log("\r\t\t\t", v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_key_pair.cc");
    goto LABEL_56;
  }

  if (!PEM_write_bio_PUBKEY(v5, *this))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t\t\t", v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_key_pair.cc");
    }

    do
    {
      v29 = v5;
      v30 = atomic_load(&v5->retry_reason);
      if (v30 == -1)
      {
        break;
      }

      while (1)
      {
        if (!v30)
        {
          goto LABEL_61;
        }

        v31 = v30;
        atomic_compare_exchange_strong(&v5->retry_reason, &v31, v30 - 1);
        if (v31 == v30)
        {
          break;
        }

        v30 = v31;
        if (v31 == -1)
        {
          goto LABEL_56;
        }
      }

      if (v30 != 1)
      {
        break;
      }

      v5 = v5->ptr;
      v29->ptr = 0;
      if (v29->method)
      {
        destroy = v29->method->destroy;
        if (destroy)
        {
          (destroy)(v29);
        }
      }

      CRYPTO_free_ex_data(&g_ex_data_class, v29, &v29->callback);
      v34 = *&v29[-1].ex_data.dummy;
      p_dummy = &v29[-1].ex_data.dummy;
      v35 = v34 + 8;
      if (v34 != -8)
      {
        bzero(p_dummy, v35);
      }

      free(p_dummy);
    }

    while (v5);
    goto LABEL_56;
  }

  if (v5->method && (bwrite = v5->method->bwrite) != 0)
  {
    if (!*v6)
    {
      ERR_put_error(17, 0, 114, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 125);
      __s = 0;
      method = v5->method;
      if (!v5->method)
      {
        goto LABEL_59;
      }

      goto LABEL_15;
    }

    v9 = (bwrite)(v5, &str_10, 1);
    if (v9 >= 1)
    {
      v7[9] += v9;
      __s = 0;
      method = v5->method;
      if (!v5->method)
      {
        goto LABEL_59;
      }

      goto LABEL_15;
    }
  }

  else
  {
    ERR_put_error(17, 0, 115, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 121);
  }

  __s = 0;
  method = v5->method;
  if (!v5->method)
  {
LABEL_59:
    ERR_put_error(17, 0, 115, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 169);
LABEL_60:
    __break(1u);
LABEL_61:
    abort();
  }

LABEL_15:
  ctrl = method->ctrl;
  if (!ctrl)
  {
    goto LABEL_59;
  }

  (ctrl)(v5, 3, 0, &__s);
  v19 = __s;
  if (!__s)
  {
    goto LABEL_60;
  }

  v20 = strlen(__s);
  if (v20 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v20 > 0x16)
  {
    operator new();
  }

  a2[23] = v20;
  v21 = &a2[v20];
  if (a2 <= v19 && v21 > v19)
  {
    goto LABEL_60;
  }

  if (v20)
  {
    memmove(a2, v19, v20);
  }

  *v21 = 0;
  do
  {
    v36 = v5;
    v37 = atomic_load(&v5->retry_reason);
    if (v37 == -1)
    {
      break;
    }

    while (1)
    {
      if (!v37)
      {
        goto LABEL_61;
      }

      v38 = v37;
      atomic_compare_exchange_strong(&v5->retry_reason, &v38, v37 - 1);
      if (v38 == v37)
      {
        break;
      }

      v37 = v38;
      if (v38 == -1)
      {
        return;
      }
    }

    if (v37 != 1)
    {
      break;
    }

    v5 = v5->ptr;
    v36->ptr = 0;
    if (v36->method)
    {
      v39 = v36->method->destroy;
      if (v39)
      {
        (v39)(v36);
      }
    }

    CRYPTO_free_ex_data(&g_ex_data_class, v36, &v36->callback);
    v41 = *&v36[-1].ex_data.dummy;
    v40 = &v36[-1].ex_data.dummy;
    v42 = v41 + 8;
    if (v41 != -8)
    {
      bzero(v40, v42);
    }

    free(v40);
  }

  while (v5);
}

void webrtc::OpenSSLSessionCache::AddSession(uint64_t a1, void **__src, size_t __len, uint64_t *a4)
{
  v8 = (a1 + 24);
  v9 = *(a1 + 24);
  if (!v9)
  {
    goto LABEL_42;
  }

  v10 = (a1 + 24);
  do
  {
    while (1)
    {
      v11 = *(v9 + 55);
      v12 = v11 >= 0 ? (v9 + 4) : v9[4];
      v13 = v11 >= 0 ? *(v9 + 55) : v9[5];
      v14 = __len >= v13 ? v13 : __len;
      v15 = memcmp(v12, __src, v14);
      if (v15)
      {
        break;
      }

      if (v13 >= __len)
      {
        goto LABEL_17;
      }

LABEL_3:
      v9 = v9[1];
      if (!v9)
      {
        goto LABEL_18;
      }
    }

    if (v15 < 0)
    {
      goto LABEL_3;
    }

LABEL_17:
    v10 = v9;
    v9 = *v9;
  }

  while (v9);
LABEL_18:
  if (v10 == v8)
  {
    goto LABEL_42;
  }

  v16 = *(v10 + 55);
  if (v16 >= 0)
  {
    v17 = (v10 + 4);
  }

  else
  {
    v17 = v10[4];
  }

  if (v16 >= 0)
  {
    v18 = *(v10 + 55);
  }

  else
  {
    v18 = v10[5];
  }

  if (v18 >= __len)
  {
    v19 = __len;
  }

  else
  {
    v19 = v18;
  }

  v20 = memcmp(__src, v17, v19);
  if (v20)
  {
    if (v20 < 0)
    {
      goto LABEL_42;
    }
  }

  else if (__len < v18)
  {
    goto LABEL_42;
  }

  v21 = v10[7];
  if (v21)
  {
    v22 = atomic_load(v21);
    if (v22 != -1)
    {
      while (1)
      {
        if (!v22)
        {
          goto LABEL_200;
        }

        v23 = v22;
        atomic_compare_exchange_strong(&v21->ssl_version, &v23, v22 - 1);
        if (v23 == v22)
        {
          break;
        }

        v22 = v23;
        if (v23 == -1)
        {
          goto LABEL_42;
        }
      }

      if (v22 == 1)
      {
        ssl_session_st::~ssl_session_st(v21);
        tlsext_tick_lifetime_hint = v21[-1].tlsext_tick_lifetime_hint;
        p_tlsext_tick_lifetime_hint = &v21[-1].tlsext_tick_lifetime_hint;
        v26 = tlsext_tick_lifetime_hint + 8;
        if (tlsext_tick_lifetime_hint != -8)
        {
          bzero(p_tlsext_tick_lifetime_hint, v26);
        }

        free(p_tlsext_tick_lifetime_hint);
      }
    }
  }

LABEL_42:
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__len > 0x16)
  {
    operator new();
  }

  v86 = __len;
  v27 = (__p + __len);
  if (__p <= __src && v27 > __src)
  {
    __break(1u);
LABEL_200:
    abort();
  }

  if (__len)
  {
    memmove(__p, __src, __len);
  }

  *v27 = 0;
  v28 = *v8;
  if (!*v8)
  {
    v31 = v8;
    if (*(a1 + 16) == v8)
    {
      v43 = 0;
      v31 = v8;
      v44 = v8;
      goto LABEL_150;
    }

    goto LABEL_105;
  }

  if ((v86 & 0x80u) == 0)
  {
    v29 = __p;
  }

  else
  {
    v29 = __p[0];
  }

  if ((v86 & 0x80u) == 0)
  {
    v30 = v86;
  }

  else
  {
    v30 = __p[1];
  }

  v31 = v8;
  v32 = *v8;
  while (2)
  {
    while (1)
    {
      v33 = *(v32 + 55);
      v34 = v33 >= 0 ? v32 + 4 : v32[4];
      v35 = v33 >= 0 ? *(v32 + 55) : v32[5];
      v36 = v30 >= v35 ? v35 : v30;
      v37 = memcmp(v34, v29, v36);
      if (!v37)
      {
        break;
      }

      if ((v37 & 0x80000000) == 0)
      {
        goto LABEL_72;
      }

LABEL_58:
      v32 = v32[1];
      if (!v32)
      {
        goto LABEL_73;
      }
    }

    if (v35 < v30)
    {
      goto LABEL_58;
    }

LABEL_72:
    v31 = v32;
    v32 = *v32;
    if (v32)
    {
      continue;
    }

    break;
  }

LABEL_73:
  if (v31 == v8)
  {
LABEL_100:
    v43 = *v31;
    if (*(a1 + 16) == v31)
    {
      v44 = v31;
      goto LABEL_150;
    }

    if (v43)
    {
      v50 = *v31;
      do
      {
        v44 = v50;
        v50 = v50[1];
      }

      while (v50);
      goto LABEL_108;
    }

LABEL_105:
    v44 = v31;
    do
    {
      v51 = v44;
      v44 = v44[2];
    }

    while (*v44 == v51);
    v43 = 0;
LABEL_108:
    v52 = *(v44 + 55);
    if (v52 >= 0)
    {
      v53 = (v44 + 4);
    }

    else
    {
      v53 = v44[4];
    }

    if (v52 >= 0)
    {
      v54 = *(v44 + 55);
    }

    else
    {
      v54 = v44[5];
    }

    if ((v86 & 0x80u) == 0)
    {
      v55 = __p;
    }

    else
    {
      v55 = __p[0];
    }

    if ((v86 & 0x80u) == 0)
    {
      v56 = v86;
    }

    else
    {
      v56 = __p[1];
    }

    if (v56 >= v54)
    {
      v57 = v54;
    }

    else
    {
      v57 = v56;
    }

    v58 = memcmp(v53, v55, v57);
    if (v58)
    {
      if (v58 < 0)
      {
LABEL_150:
        if (v43)
        {
          v59 = v44 + 1;
        }

        else
        {
          v59 = v31;
        }

        goto LABEL_153;
      }
    }

    else if (v54 < v56)
    {
      goto LABEL_150;
    }

    if (!v28)
    {
LABEL_128:
      v59 = v8;
      goto LABEL_153;
    }

    while (1)
    {
      v60 = v28;
      v61 = *(v28 + 55);
      if (v61 >= 0)
      {
        v62 = v28 + 4;
      }

      else
      {
        v62 = v28[4];
      }

      if (v61 >= 0)
      {
        v63 = *(v28 + 55);
      }

      else
      {
        v63 = v28[5];
      }

      if (v63 >= v56)
      {
        v64 = v56;
      }

      else
      {
        v64 = v63;
      }

      v65 = memcmp(v55, v62, v64);
      if (v65)
      {
        if (v65 < 0)
        {
          goto LABEL_129;
        }

LABEL_143:
        v66 = memcmp(v62, v55, v64);
        if (v66)
        {
          if ((v66 & 0x80000000) == 0)
          {
            goto LABEL_128;
          }
        }

        else if (v63 >= v56)
        {
          goto LABEL_128;
        }

        v8 = v60 + 1;
        v28 = v60[1];
        if (!v28)
        {
          goto LABEL_154;
        }
      }

      else
      {
        if (v56 >= v63)
        {
          goto LABEL_143;
        }

LABEL_129:
        v28 = *v60;
        v8 = v60;
        if (!*v60)
        {
          goto LABEL_154;
        }
      }
    }
  }

  v38 = (v31 + 4);
  v39 = *(v31 + 55);
  if ((v39 & 0x8000000000000000) != 0)
  {
    v40 = v31[5];
    if (v40 >= v30)
    {
      v45 = v30;
    }

    else
    {
      v45 = v31[5];
    }

    v42 = memcmp(v29, v31[4], v45);
    if (!v42)
    {
      goto LABEL_87;
    }

LABEL_79:
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_80;
    }

LABEL_88:
    if ((v39 & 0x80000000) == 0)
    {
      v46 = v39;
    }

    else
    {
      v38 = v31[4];
      v46 = v31[5];
    }

    if (v46 >= v30)
    {
      v47 = v30;
    }

    else
    {
      v47 = v46;
    }

    v48 = memcmp(v29, v38, v47);
    if (v48)
    {
      if ((v48 & 0x80000000) == 0)
      {
LABEL_96:
        v49 = memcmp(v38, v29, v47);
        if (v49)
        {
          if ((v49 & 0x80000000) == 0)
          {
            goto LABEL_155;
          }
        }

        else if (v46 >= v30)
        {
          goto LABEL_155;
        }

        v59 = v31 + 1;
        v67 = v31[1];
        if (v67)
        {
          do
          {
            v59 = v67;
            v67 = *v67;
            v68 = v59;
          }

          while (v67);
        }

        else
        {
          v68 = v31;
          do
          {
            v69 = v68;
            v68 = v68[2];
          }

          while (*v68 != v69);
        }

        if (v68 == v8)
        {
          goto LABEL_153;
        }

        v72 = v68[4];
        v70 = v68 + 4;
        v71 = v72;
        v73 = *(v70 + 23);
        if (v73 >= 0)
        {
          v74 = v70;
        }

        else
        {
          v74 = v71;
        }

        if (v73 >= 0)
        {
          v75 = *(v70 + 23);
        }

        else
        {
          v75 = v70[1];
        }

        if (v75 >= v30)
        {
          v76 = v30;
        }

        else
        {
          v76 = v75;
        }

        v77 = memcmp(v29, v74, v76);
        if (v77)
        {
          if ((v77 & 0x80000000) == 0)
          {
            goto LABEL_180;
          }

LABEL_153:
          if (!*v59)
          {
LABEL_154:
            operator new();
          }

          goto LABEL_155;
        }

        if (v30 < v75)
        {
          goto LABEL_153;
        }

        while (1)
        {
LABEL_180:
          v78 = v28;
          v79 = *(v28 + 55);
          if (v79 >= 0)
          {
            v80 = v28 + 4;
          }

          else
          {
            v80 = v28[4];
          }

          if (v79 >= 0)
          {
            v81 = *(v28 + 55);
          }

          else
          {
            v81 = v28[5];
          }

          if (v81 >= v30)
          {
            v82 = v30;
          }

          else
          {
            v82 = v81;
          }

          v83 = memcmp(v29, v80, v82);
          if (v83)
          {
            if (v83 < 0)
            {
              goto LABEL_179;
            }

LABEL_193:
            v84 = memcmp(v80, v29, v82);
            if (v84)
            {
              if ((v84 & 0x80000000) == 0)
              {
                goto LABEL_128;
              }
            }

            else if (v81 >= v30)
            {
              goto LABEL_128;
            }

            v8 = v78 + 1;
            v28 = v78[1];
            if (!v28)
            {
              goto LABEL_154;
            }
          }

          else
          {
            if (v30 >= v81)
            {
              goto LABEL_193;
            }

LABEL_179:
            v28 = *v78;
            v8 = v78;
            if (!*v78)
            {
              goto LABEL_154;
            }
          }
        }
      }
    }

    else if (v30 >= v46)
    {
      goto LABEL_96;
    }

    goto LABEL_100;
  }

  v40 = *(v31 + 55);
  if (v39 >= v30)
  {
    v41 = v30;
  }

  else
  {
    v41 = *(v31 + 55);
  }

  v42 = memcmp(v29, v31 + 4, v41);
  if (v42)
  {
    goto LABEL_79;
  }

LABEL_87:
  if (v30 < v40)
  {
    goto LABEL_88;
  }

LABEL_80:
  v31[7] = a4;
LABEL_155:
  if (v86 < 0)
  {
    operator delete(__p[0]);
  }
}

void webrtc::OpenSSLStreamAdapter::OpenSSLStreamAdapter(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = webrtc::StreamInterface::StreamInterface(a1);
  *(v6 + 96) = 1;
  *v6 = &unk_288297230;
  v7 = *a2;
  *a2 = 0;
  *(v6 + 104) = v7;
  (*(a3 + 16))(0, a3, v6 + 112);
  *(a1 + 128) = *(a3 + 16);
  *(a3 + 16) = absl::internal_any_invocable::EmptyManager;
  *(a3 + 24) = 0;
  {
    {
      operator new();
    }
  }

  *(a1 + 144) = pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
  operator new();
}

void webrtc::OpenSSLStreamAdapter::~OpenSSLStreamAdapter(webrtc::OpenSSLStreamAdapter *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    *(v2 + 4) = 0;
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }

    *(this + 20) = 0;
  }

  webrtc::OpenSSLStreamAdapter::Cleanup(this, 0);
  v3 = *(this + 37);
  if (v3)
  {
    *(this + 38) = v3;
    operator delete(v3);
  }

  if (*(this + 295) < 0)
  {
    operator delete(*(this + 34));
    if ((*(this + 271) & 0x80000000) == 0)
    {
LABEL_9:
      v4 = *(this + 30);
      *(this + 30) = 0;
      if (!v4)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*(this + 271) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(*(this + 31));
  v4 = *(this + 30);
  *(this + 30) = 0;
  if (v4)
  {
LABEL_10:
    MEMORY[0x2743DA520](v4, 0x1000C8077774924);
  }

LABEL_11:
  v5 = *(this + 26);
  *(this + 26) = 0;
  if (v5)
  {
    v6 = *v5;
    if (*v5)
    {
      v7 = v5[1];
      v8 = *v5;
      if (v7 != v6)
      {
        do
        {
          v10 = *--v7;
          v9 = v10;
          *v7 = 0;
          if (v10)
          {
            (*(*v9 + 8))(v9);
          }
        }

        while (v7 != v6);
        v8 = *v5;
      }

      v5[1] = v6;
      operator delete(v8);
    }

    MEMORY[0x2743DA540](v5, 0x20C40960023A9);
  }

  v11 = *(this + 25);
  *(this + 25) = 0;
  if (v11)
  {
    webrtc::BoringSSLIdentity::~BoringSSLIdentity(v11);
    MEMORY[0x2743DA540]();
  }

  v12 = *(this + 20);
  if (v12 && atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v13 = *(this + 19);
  *(v13 + 4) = 0;
  if (atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  (*(this + 16))(1, this + 112, this + 112);
  v14 = *(this + 13);
  *(this + 13) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  *this = &unk_2882A01E0;
  (*(this + 10))(1, this + 64, this + 64);
  for (i = *(this + 5); i; i = *(this + 5))
  {
    v16 = *(this + 4);
    v17 = v16[3];
    v19 = *v16;
    v18 = v16[1];
    *(v19 + 8) = v18;
    *v18 = v19;
    *(this + 5) = i - 1;
    operator delete(v16);
    (*(v17 + 16))(v17, this + 8);
  }

  *(this + 6) = this + 24;
}

{
  webrtc::OpenSSLStreamAdapter::~OpenSSLStreamAdapter(this);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::OpenSSLStreamAdapter::Cleanup(webrtc::OpenSSLStreamAdapter *this, int a2)
{
  if (*(this + 42) != 4)
  {
    *(this + 42) = 5;
    *(this + 44) = 0;
  }

  v3 = *(this + 23);
  if (v3)
  {
    if (!a2)
    {
      if (SSL_shutdown(v3) & 0x80000000) == 0 || (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    handshake_func = v3->handshake_func;
    v5 = *(handshake_func + 110);
    if ((v5 & 0x400) != 0)
    {
      if (*(handshake_func + 461) == 2 && *(handshake_func + 462) == a2)
      {
        goto LABEL_15;
      }

      ERR_put_error(16, 0, 194, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_lib.cc", 1077);
    }

    else
    {
      if (*(handshake_func + 44))
      {
        ERR_put_error(16, 0, 194, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/s3_pkt.cc", 338);
        goto LABEL_16;
      }

      *(handshake_func + 44) = 2;
      *(handshake_func + 110) = v5 | 0x400;
      *(v3->handshake_func + 461) = 2;
      *(v3->handshake_func + 462) = a2;
      if (!*(v3->handshake_func + 57))
      {
LABEL_15:
        if (((*(*&v3->version + 80))(v3) & 0x80000000) == 0)
        {
          goto LABEL_18;
        }
      }
    }

LABEL_16:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
LABEL_17:
      ERR_peek_error();
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_stream_adapter.cc");
    }

LABEL_18:
    v13 = *(this + 23);
    if (v13)
    {
      ssl_st::~ssl_st(*(this + 23));
      v15 = *(v13 - 8);
      v14 = (v13 - 8);
      v16 = v15 + 8;
      if (v15 != -8)
      {
        bzero(v14, v16);
      }

      free(v14);
    }

    *(this + 23) = 0;
  }

  v17 = *(this + 24);
  if (v17)
  {
    v18 = atomic_load(v17);
    if (v18 != -1)
    {
      while (1)
      {
        if (!v18)
        {
          abort();
        }

        v19 = v18;
        atomic_compare_exchange_strong(v17, &v19, v18 - 1);
        if (v19 == v18)
        {
          break;
        }

        v18 = v19;
        if (v19 == -1)
        {
          goto LABEL_33;
        }
      }

      if (v18 == 1)
      {
        ssl_ctx_st::~ssl_ctx_st(v17);
        v21 = *(v17 - 1);
        v20 = v17 - 2;
        v22 = v21 + 8;
        if (v21 != -8)
        {
          bzero(v20, v22);
        }

        free(v20);
      }
    }

LABEL_33:
    *(this + 24) = 0;
  }

  v23 = *(this + 25);
  *(this + 25) = 0;
  if (v23)
  {
    webrtc::BoringSSLIdentity::~BoringSSLIdentity(v23);
    MEMORY[0x2743DA540]();
  }

  v24 = *(this + 26);
  *(this + 26) = 0;
  if (v24)
  {
    v25 = *v24;
    if (*v24)
    {
      v26 = v24[1];
      v27 = *v24;
      if (v26 != v25)
      {
        do
        {
          v29 = *--v26;
          v28 = v29;
          *v26 = 0;
          if (v29)
          {
            (*(*v28 + 8))(v28);
          }
        }

        while (v26 != v25);
        v27 = *v24;
      }

      v24[1] = v25;
      operator delete(v27);
    }

    MEMORY[0x2743DA540](v24, 0x20C40960023A9);
  }

  result = *(this + 20);
  if (result)
  {
    *(result + 4) = 0;
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      result = MEMORY[0x2743DA540]();
    }

    *(this + 20) = 0;
  }

  return result;
}

webrtc::BoringSSLIdentity *webrtc::OpenSSLStreamAdapter::SetIdentity(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 200);
  *(a1 + 200) = v3;
  if (result)
  {
    webrtc::BoringSSLIdentity::~BoringSSLIdentity(result);

    JUMPOUT(0x2743DA540);
  }

  return result;
}

uint64_t webrtc::OpenSSLStreamAdapter::SetPeerCertificateDigest(uint64_t a1, unsigned __int16 *a2, size_t a3, const void *a4, size_t a5)
{
  *&v27 = 0;
  if ((webrtc::OpenSSLDigest::GetDigestEVP(a2, a3, &v27) & 1) == 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*> const&)::t, v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_stream_adapter.cc");
    }

    return 1;
  }

  if (a5 != *(v27 + 4))
  {
    return 2;
  }

  *(a1 + 224) = 0;
  if (a5)
  {
    if (*(a1 + 232) < a5)
    {
      operator new[]();
    }

    memcpy(*(a1 + 240), a4, a5);
    *(a1 + 224) = a5;
  }

  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_33:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a3 > 0x16)
  {
    operator new();
  }

  HIBYTE(v28) = a3;
  v18 = (&v27 + a3);
  if (&v27 <= a2 && v18 > a2)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (a3)
  {
    memmove(&v27, a2, a3);
  }

  *v18 = 0;
  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
    *(a1 + 248) = v27;
    *(a1 + 264) = v28;
    if (!*(a1 + 208))
    {
      return 0;
    }
  }

  else
  {
    *(a1 + 248) = v27;
    *(a1 + 264) = v28;
    if (!*(a1 + 208))
    {
      return 0;
    }
  }

  if (webrtc::OpenSSLStreamAdapter::VerifyPeerCertificate(a1))
  {
    if (*(a1 + 168) == 3)
    {
      v19 = *(a1 + 152);
      if (v19)
      {
        atomic_fetch_add_explicit(v19, 1u, memory_order_relaxed);
      }

      operator new();
    }

    return 0;
  }

  *&v27 = "SetPeerCertificateDigest";
  *(&v27 + 1) = 24;
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_stream_adapter.cc");
  }

  *(a1 + 168) = 4;
  *(a1 + 176) = -1;
  webrtc::OpenSSLStreamAdapter::Cleanup(a1, 42);
  return 3;
}

uint64_t webrtc::OpenSSLStreamAdapter::VerifyPeerCertificate(webrtc::OpenSSLStreamAdapter *this)
{
  if ((*(this + 271) & 0x8000000000000000) != 0)
  {
    if (!*(this + 32))
    {
      goto LABEL_9;
    }
  }

  else if (!*(this + 271))
  {
    goto LABEL_9;
  }

  if (*(this + 28))
  {
    v1 = *(this + 26);
    if (v1)
    {
      if (*(*(this + 26) + 8) != *v1)
      {
        operator new[]();
      }
    }
  }

LABEL_9:
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_stream_adapter.cc");
  }

  return 0;
}

uint64_t webrtc::OpenSSLStreamAdapter::Error(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_stream_adapter.cc");
  }

  *(a1 + 168) = 4;
  *(a1 + 176) = a4;
  result = webrtc::OpenSSLStreamAdapter::Cleanup(a1, a5);
  if (a6)
  {
    v18 = *(a1 + 88);
    if (v18)
    {
      v18(a1 + 64, 8, a4);
    }

    result = *(a1 + 32);
    for (*(a1 + 48) = result; result != a1 + 24; result = *(a1 + 48))
    {
      v20 = *(result + 16);
      v19 = result + 16;
      *(a1 + 48) = *(v19 - 8);
      v20(v19, a1, 8, a4);
    }
  }

  return result;
}

size_t webrtc::OpenSSLStreamAdapter::GetTlsCipherSuiteName@<X0>(size_t this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 168) == 3)
  {
    v3 = *(*(this + 184) + 48);
    v4 = *(v3 + 464);
    if (!v4)
    {
      v5 = *(v3 + 280);
      v4 = v5[195];
      if (!v4)
      {
        v4 = v5[194];
        if (!v4)
        {
          v4 = *(*v5 + 88);
        }
      }
    }

    this = *(*(v4 + 200) + 8);
    *a2 = this;
    if (this)
    {
      this = strlen(this);
      *(a2 + 8) = this;
      *(a2 + 16) = 1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return this;
}

uint64_t webrtc::OpenSSLStreamAdapter::GetSslCipherSuite(webrtc::OpenSSLStreamAdapter *this, int *a2)
{
  if (*(this + 42) != 3)
  {
    return 0;
  }

  v2 = *(*(this + 23) + 48);
  v3 = *(v2 + 464);
  if (!v3)
  {
    v4 = *(v2 + 280);
    v3 = v4[195];
    if (!v3)
    {
      v3 = v4[194];
      if (!v3)
      {
        v3 = *(*v4 + 88);
        if (!v3)
        {
          return 0;
        }
      }
    }
  }

  v5 = *(v3 + 200);
  if (!v5)
  {
    return 0;
  }

  *a2 = *(v5 + 16);
  return 1;
}

uint64_t webrtc::OpenSSLStreamAdapter::GetSslVersion(webrtc::OpenSSLStreamAdapter *this)
{
  if (*(this + 42) != 3)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = *(this + 23);
  v2 = *(v1 + 48);
  v3 = *(v2 + 280);
  if (v3 && (*(v3 + 1617) & 4) != 0 && (*(v1 + 164) & 1) == 0)
  {
    LOWORD(v4) = *(*(v3 + 1560) + 4);
    if (*(this + 80) == 1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(v2 + 208);
    if (!v4)
    {
      if (**v1)
      {
        LOWORD(v4) = -259;
      }

      else
      {
        LOWORD(v4) = 771;
      }
    }

    if (*(this + 80) == 1)
    {
LABEL_10:
      if ((v4 + 260) < 4u)
      {
        return dword_273B97A40[(v4 + 260)];
      }

      return 0xFFFFFFFFLL;
    }
  }

  v6 = v4 - 769;
  v7 = (v4 - 769);
  if ((v6 & 0xFFFC) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v7;
  }
}

BOOL webrtc::OpenSSLStreamAdapter::GetSslVersionBytes(webrtc::OpenSSLStreamAdapter *this, int *a2)
{
  v2 = *(this + 42);
  if (v2 == 3)
  {
    v3 = *(this + 23);
    v4 = *(v3 + 48);
    v5 = *(v4 + 280);
    if (v5 && (*(v5 + 1617) & 4) != 0 && (*(v3 + 164) & 1) == 0)
    {
      LOWORD(v6) = *(*(v5 + 1560) + 4);
    }

    else
    {
      v6 = *(v4 + 208);
      if (!v6)
      {
        if (**v3)
        {
          LOWORD(v6) = -259;
        }

        else
        {
          LOWORD(v6) = 771;
        }
      }
    }

    *a2 = v6;
  }

  return v2 == 3;
}

uint64_t webrtc::OpenSSLStreamAdapter::GetSslGroupId(webrtc::OpenSSLStreamAdapter *this)
{
  if (*(this + 42) == 3 && ((v1 = *(*(this + 23) + 48), (v2 = *(v1 + 464)) != 0) || (v3 = *(v1 + 280), (v2 = v3[195]) != 0) || (v2 = v3[194]) != 0 || (v2 = *(*v3 + 88)) != 0))
  {
    return *(v2 + 6);
  }

  else
  {
    return 0;
  }
}

uint64_t webrtc::OpenSSLStreamAdapter::GetPeerSignatureAlgorithm(webrtc::OpenSSLStreamAdapter *this)
{
  if (*(this + 42) == 3 && ((v1 = *(*(this + 23) + 48), (v2 = *(v1 + 464)) != 0) || (v3 = *(v1 + 280), (v2 = v3[195]) != 0) || (v2 = v3[194]) != 0 || (v2 = *(*v3 + 88)) != 0))
  {
    return *(v2 + 8);
  }

  else
  {
    return 0;
  }
}

void webrtc::OpenSSLStreamAdapter::SetDtlsSrtpCryptoSuites(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 168))
  {
    return;
  }

  memset(&v30, 0, sizeof(v30));
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*a2 == v4)
  {
LABEL_57:
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_64;
    }

    return;
  }

  while (1)
  {
    v5 = *v3 - 1;
    if (v5 >= 8 || ((0xC3u >> v5) & 1) == 0)
    {
      break;
    }

    v6 = (&off_279E943B8)[v5];
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v30.__r_.__value_.__l.__size_;
      if (!v30.__r_.__value_.__l.__size_)
      {
        goto LABEL_22;
      }

      v7 = (v30.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v7 != v30.__r_.__value_.__l.__size_)
      {
LABEL_16:
        v10 = &v30;
        if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v10 = v30.__r_.__value_.__r.__words[0];
        }

        v11 = v10 + size;
        if (v10 + size <= ":" && v11 + 1 > ":")
        {
LABEL_67:
          __break(1u);
          return;
        }

        *v11 = 58;
        v12 = size + 1;
        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          v30.__r_.__value_.__l.__size_ = v12;
          v10->__r_.__value_.__s.__data_[v12] = 0;
          v9 = *v6;
          if (!v9)
          {
            goto LABEL_67;
          }

          goto LABEL_23;
        }

        *(&v30.__r_.__value_.__s + 23) = v12 & 0x7F;
        v10->__r_.__value_.__s.__data_[v12] = 0;
LABEL_22:
        v9 = *v6;
        if (!v9)
        {
          goto LABEL_67;
        }

        goto LABEL_23;
      }
    }

    else
    {
      if (!*(&v30.__r_.__value_.__s + 23))
      {
        goto LABEL_22;
      }

      v7 = 22;
      size = SHIBYTE(v30.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) != 22)
      {
        goto LABEL_16;
      }
    }

    std::string::__grow_by_and_replace(&v30, v7, 1uLL, v7, v7, 0, 1uLL, ":");
    v9 = *v6;
    if (!v9)
    {
      goto LABEL_67;
    }

LABEL_23:
    v13 = strlen(v9);
    v14 = v13;
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = 22;
    }

    else
    {
      v15 = (v30.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v16 = v30.__r_.__value_.__l.__size_;
    }

    if (v15 - v16 < v13)
    {
      std::string::__grow_by_and_replace(&v30, v15, v16 + v13 - v15, v16, v16, 0, v13, v9);
    }

    else if (v13)
    {
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v30;
      }

      else
      {
        v17 = v30.__r_.__value_.__r.__words[0];
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_67;
      }

      if (v17 + v16 <= v9 && v17 + v16 + v13 > v9)
      {
        goto LABEL_67;
      }

      memmove(v17 + v16, v9, v13);
      v19 = v16 + v14;
      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        v30.__r_.__value_.__l.__size_ = v16 + v14;
      }

      else
      {
        *(&v30.__r_.__value_.__s + 23) = v19 & 0x7F;
      }

      v17->__r_.__value_.__s.__data_[v19] = 0;
    }

    if (++v3 == v4)
    {
      v28 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v28 = v30.__r_.__value_.__l.__size_;
      }

      if (!v28)
      {
        goto LABEL_57;
      }

      v27 = (a1 + 272);
      if ((a1 + 272) != &v30)
      {
        if ((*(a1 + 295) & 0x80000000) == 0)
        {
          if ((*(&v30.__r_.__value_.__s + 23) & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>(v27, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
            if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              return;
            }
          }

          else
          {
            *&v27->__r_.__value_.__l.__data_ = *&v30.__r_.__value_.__l.__data_;
            *(a1 + 288) = *(&v30.__r_.__value_.__l + 2);
            if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              return;
            }
          }

          goto LABEL_64;
        }

        if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = &v30;
        }

        else
        {
          v29 = v30.__r_.__value_.__r.__words[0];
        }

        std::string::__assign_no_alias<false>(v27, v29, v28);
      }

      if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_64;
    }
  }

  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
  {
    goto LABEL_57;
  }

  webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_stream_adapter.cc");
  if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return;
  }

LABEL_64:
  operator delete(v30.__r_.__value_.__l.__data_);
}

uint64_t webrtc::OpenSSLStreamAdapter::GetDtlsSrtpCryptoSuite(webrtc::OpenSSLStreamAdapter *this, int *a2)
{
  if (*(this + 42) != 3)
  {
    return 0;
  }

  v2 = *(*(*(this + 23) + 48) + 592);
  if (!v2)
  {
    return 0;
  }

  *a2 = *(v2 + 8);
  return 1;
}

uint64_t webrtc::OpenSSLStreamAdapter::StartSSL(webrtc::OpenSSLStreamAdapter *this)
{
  if (*(this + 42))
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(**(this + 13) + 16))(*(this + 13)) == 2)
  {
    *(this + 42) = 2;
    v1 = webrtc::OpenSSLStreamAdapter::BeginSSL(this);
    if (!v1)
    {
      return v1;
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_stream_adapter.cc");
    }

    *(this + 42) = 4;
    *(this + 44) = v1;
    webrtc::OpenSSLStreamAdapter::Cleanup(this, 0);
    return v1;
  }

  else
  {
    *(this + 42) = 1;
    return 0;
  }
}

uint64_t webrtc::OpenSSLStreamAdapter::BeginSSL(webrtc::OpenSSLStreamAdapter *this)
{
  if (*(this + 80) == 1)
  {
    v2 = &DTLS_with_buffers_method::kMethod;
  }

  else
  {
    v2 = &TLS_with_buffers_method::kMethod;
  }

  v3 = SSL_CTX_new(v2);
  if (!v3)
  {
LABEL_102:
    *(this + 24) = 0;
    return 0xFFFFFFFFLL;
  }

  v4 = v3;
  v5 = *(this + 80);
  if (*(this + 81) == 3)
  {
    v6 = -260;
  }

  else
  {
    v6 = -259;
  }

  if (*(this + 81) == 3)
  {
    LOWORD(v7) = 772;
  }

  else
  {
    LOWORD(v7) = 771;
  }

  if (v5)
  {
    v7 = *(this + 80);
  }

  if (v5 == 1)
  {
    LOWORD(v7) = v6;
  }

  v8 = *(this + 84);
  v9 = -260;
  if (v8 == 1)
  {
    LOWORD(v7) = -260;
LABEL_19:
    if (v5 == 1)
    {
      v9 = -259;
    }

    else
    {
      v9 = 771;
    }

    v10 = v7;
    goto LABEL_23;
  }

  v10 = -260;
  if (v8 != 2)
  {
    goto LABEL_19;
  }

LABEL_23:
  cipher_list = v3->cipher_list;
  v12 = 6;
  if (LOBYTE(cipher_list->num))
  {
    v12 = 4;
    v13 = &bssl::kDTLSVersions;
  }

  else
  {
    v13 = &bssl::kTLSVersions;
  }

  do
  {
    v15 = *v13++;
    v14 = v15;
    v16 = v15 == v9 || v12 == 0;
    v12 -= 2;
  }

  while (!v16);
  if (v14 == v9)
  {
    WORD1(v3->rsa_md5) = v9;
    v17 = v10;
    if (v10 - 769 < 4)
    {
LABEL_37:
      v16 = LOBYTE(cipher_list->num) == 0;
      v18 = 6;
      if (v16)
      {
        v19 = &bssl::kTLSVersions;
      }

      else
      {
        v18 = 4;
        v19 = &bssl::kDTLSVersions;
      }

      do
      {
        v21 = *v19++;
        v20 = v21;
        v22 = v21 == v10 || v18 == 0;
        v18 -= 2;
      }

      while (!v22);
      if (v20 == v10)
      {
        LOWORD(v4->rsa_md5) = v10;
        goto LABEL_53;
      }

      goto LABEL_52;
    }
  }

  else
  {
    ERR_put_error(16, 0, 234, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_versions.cc", 137);
    cipher_list = v4->cipher_list;
    v17 = v10;
    if (v10 - 769 < 4)
    {
      goto LABEL_37;
    }
  }

  if ((v17 - 65276) <= 3 && v17 != 65278)
  {
    goto LABEL_37;
  }

  if (v17)
  {
LABEL_52:
    ERR_put_error(16, 0, 234, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_versions.cc", 137);
    goto LABEL_53;
  }

  if (LOBYTE(cipher_list->num))
  {
    v23 = -259;
  }

  else
  {
    v23 = 772;
  }

  LOWORD(v4->rsa_md5) = v23;
LABEL_53:
  if (_MergedGlobals_17 == 1)
  {
  }

  {
    webrtc::openssl::GetBufferPool(void)::instance = CRYPTO_BUFFER_POOL_new();
  }

  v4[1].md5 = webrtc::openssl::GetBufferPool(void)::instance;
  v24 = *(this + 25);
  if (v24)
  {
    webrtc::BoringSSLIdentity::ConfigureIdentity(v24, v4);
    if ((v25 & 1) == 0)
    {
      v28 = atomic_load(v4);
      if (v28 != -1)
      {
        while (1)
        {
          if (!v28)
          {
            goto LABEL_125;
          }

          v29 = v28 - 1;
          v30 = v28;
          atomic_compare_exchange_strong(v4, &v30, v28 - 1);
          if (v30 == v28)
          {
            break;
          }

          v28 = v30;
          if (v30 == -1)
          {
            goto LABEL_102;
          }
        }

LABEL_98:
        if (!v29)
        {
          ssl_ctx_st::~ssl_ctx_st(v4);
          tlsext_status_arg = v4[-1].tlsext_status_arg;
          p_tlsext_status_arg = &v4[-1].tlsext_status_arg;
          v48 = tlsext_status_arg + 8;
          if (tlsext_status_arg != -8)
          {
            bzero(p_tlsext_status_arg, v48);
          }

          free(p_tlsext_status_arg);
        }
      }

      goto LABEL_102;
    }
  }

  v4->generate_session_id = webrtc::OpenSSLAdapter::SSLInfoCallback;
  if (*(this + 96))
  {
    v26 = 3;
  }

  else
  {
    v26 = 1;
  }

  LODWORD(v4->tlsext_ticket_key_cb) = v26;
  *v4->sid_ctx = webrtc::OpenSSLStreamAdapter::SSLVerifyCallback;
  bssl::ssl_create_cipher_list(&v4->sha1, (~LOWORD(v4[1].mode) & 0x1800) == 0, "DEFAULT:!NULL:!aNULL:!SHA256:!SHA384:!aECDH:!AESGCM+AES256:!aPSK:!3DES", 0);
  v27 = (this + 272);
  if (*(this + 295) < 0)
  {
    if (*(this + 35) && !ssl_ctx_make_profiles(*v27, &v4[1].app_verify_callback))
    {
LABEL_93:
      v44 = atomic_load(v4);
      if (v44 != -1)
      {
        while (v44)
        {
          v29 = v44 - 1;
          v45 = v44;
          atomic_compare_exchange_strong(v4, &v45, v44 - 1);
          if (v45 == v44)
          {
            goto LABEL_98;
          }

          v44 = v45;
          if (v45 == -1)
          {
            goto LABEL_102;
          }
        }

LABEL_125:
        abort();
      }

      goto LABEL_102;
    }
  }

  else if (*(this + 295) && !ssl_ctx_make_profiles(v27, &v4[1].app_verify_callback))
  {
    goto LABEL_93;
  }

  LOWORD(v4[1].mode) |= 0x40u;
  *&v4->tlsext_tick_key_name[8] |= 0x4000u;
  *(this + 24) = v4;
  v31 = *(this + 13);
  if ((atomic_load_explicit(&qword_28100BA90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28100BA90))
  {
    webrtc::BIO_stream_method(void)::$_0::operator()();
    qword_28100BA88 = v62;
    __cxa_guard_release(&qword_28100BA90);
  }

  v32 = qword_28100BA88;
  v33 = malloc_type_malloc(0x50uLL, 0xB4E622C9uLL);
  if (!v33)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0xFFFFFFFFLL;
  }

  *v33 = 72;
  *(v33 + 1) = v32;
  v34 = (v33 + 8);
  *(v33 + 24) = 0u;
  *(v33 + 40) = 0u;
  *(v33 + 56) = 0u;
  *(v33 + 9) = 0;
  *(v33 + 7) = 1;
  *(v33 + 11) = 1;
  *(v33 + 2) = 0;
  v35 = *(v32 + 56);
  if (v35)
  {
    v36 = v33;
    v37 = v35(v33 + 8);
    v33 = v36;
    if (!v37)
    {
      free(v36);
      return 0xFFFFFFFFLL;
    }
  }

  *(v33 + 6) = v31;
  v38 = SSL_new(*(this + 24));
  *(this + 23) = v38;
  if (v38)
  {
    v39 = v38;
    s2 = v38->s2;
    if (s2 || (s2 = OPENSSL_sk_new_null(), (v39->s2 = s2) != 0))
    {
      if (*s2 || OPENSSL_sk_push(s2, 0) && (s2 = v39->s2) != 0 && *s2)
      {
        **(s2 + 1) = this;
      }
    }

    SSL_set_bio(*(this + 23), v34, v34);
    v41 = *(this + 23);
    *(v41 + 128) |= 0x1000u;
    v42 = *(this + 83);
    if (v42 >= 0xE4 && **v41)
    {
      *(*(v41 + 56) + 936) = v42;
    }

    if (*(this + 80) == 1)
    {
      *(v41 + 80) = *(this + 82);
    }

    if ((*(this + 344) & 1) == 0)
    {
      if (!SSL_set1_group_ids(v41, *(this + 37), (*(this + 38) - *(this + 37)) >> 1))
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v55, v56, v57, v58, v59, v60, v61, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_stream_adapter.cc");
        }

        return 0xFFFFFFFFLL;
      }

      v41 = *(this + 23);
    }

    *(v41 + 132) |= 3u;

    return webrtc::OpenSSLStreamAdapter::ContinueSSL(this);
  }

  else
  {
    do
    {
      v49 = v34;
      result = atomic_load(&v34->retry_reason);
      if (result == -1)
      {
        break;
      }

      while (1)
      {
        if (!result)
        {
          goto LABEL_125;
        }

        v50 = result;
        atomic_compare_exchange_strong(&v34->retry_reason, &v50, result - 1);
        if (v50 == result)
        {
          break;
        }

        result = v50;
        if (v50 == -1)
        {
          return result;
        }
      }

      if (result != 1)
      {
        return 0xFFFFFFFFLL;
      }

      v34 = v34->ptr;
      v49->ptr = 0;
      if (v49->method)
      {
        destroy = v49->method->destroy;
        if (destroy)
        {
          (destroy)(v49);
        }
      }

      CRYPTO_free_ex_data(&g_ex_data_class, v49, &v49->callback);
      v53 = *&v49[-1].ex_data.dummy;
      p_dummy = &v49[-1].ex_data.dummy;
      v54 = v53 + 8;
      if (v53 != -8)
      {
        bzero(p_dummy, v54);
      }

      free(p_dummy);
      result = 0xFFFFFFFFLL;
    }

    while (v34);
  }

  return result;
}

uint64_t webrtc::OpenSSLStreamAdapter::SetInitialRetransmissionTimeout(uint64_t this, int a2)
{
  *(this + 328) = a2;
  if (*(this + 192))
  {
    if (*(this + 320) == 1)
    {
      *(*(this + 184) + 80) = a2;
    }
  }

  return this;
}

uint64_t webrtc::OpenSSLStreamAdapter::SetMTU(uint64_t this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(this + 332) = a2;
  v8 = *(this + 184);
  if (v8)
  {
    if (a2 >= 0xE4 && **v8)
    {
      *(*(v8 + 56) + 936) = a2;
    }

    else
    {
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_stream_adapter.cc", 577, "SSL_set_mtu(ssl_, dtls_mtu_)", "\t", a5, a6, a7, a8, "Call to SSL_set_mtu failed.");
      return webrtc::OpenSSLStreamAdapter::Write();
    }
  }

  return this;
}

uint64_t webrtc::OpenSSLStreamAdapter::Write(uint64_t a1, const void *a2, unint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 168);
  if ((v8 - 1) < 2)
  {
    return 2;
  }

  if (v8 != 3)
  {
    if (v8)
    {
      result = 0;
      *a5 = *(a1 + 176);
    }

    else
    {
      v9 = *(**(a1 + 104) + 32);

      return v9();
    }

    return result;
  }

  if (*(a1 + 96) == 1 && (*(a1 + 216) & 1) == 0)
  {
    return 2;
  }

  if (!a3)
  {
    *a4 = 0;
    return 1;
  }

  *(a1 + 181) = 0;
  if (a3 >> 31)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/numerics/safe_conversions.h", 36, "IsValueInRangeForNumericType<Dst>(value)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v32);
    return webrtc::OpenSSLStreamAdapter::Read();
  }

  v14 = SSL_write(*(a1 + 184), a2, a3);
  if (v14 > 0)
  {
    *a4 = v14;
    return 1;
  }

  v16 = v14;
  v17 = *(a1 + 184);
  v18 = ERR_peek_error();
  if (v18)
  {
    if (HIBYTE(v18) == 2)
    {
      v19 = 5;
    }

    else
    {
      v19 = 1;
    }

    goto LABEL_34;
  }

  v19 = *(v17[6] + 196);
  if (!v16)
  {
    if (v19 == 6)
    {
      v19 = 6;
    }

    else
    {
      v19 = 5;
    }

    goto LABEL_34;
  }

  if ((v19 - 11) < 0xA || v19 == 4)
  {
    goto LABEL_34;
  }

  if (v19 == 3)
  {
    v22 = v17[4];
    v23 = *(v22 + 24);
    if ((v23 & 2) != 0)
    {
      return 2;
    }

    v21 = a1;
    if ((v23 & 1) == 0)
    {
LABEL_39:
      v19 = 5;
      if ((v23 & 4) != 0)
      {
        v31 = *(v22 + 28);
        v19 = v31 == 3 ? 8 : 5;
        if (v31 == 2)
        {
          v19 = 7;
        }
      }

      goto LABEL_34;
    }

    goto LABEL_45;
  }

  if (v19 == 2)
  {
    v21 = a1;
    if (!v17[19])
    {
      v22 = v17[3];
      v23 = *(v22 + 24);
      if ((v23 & 1) == 0)
      {
        if ((v23 & 2) == 0)
        {
          goto LABEL_39;
        }

        return 2;
      }
    }

LABEL_45:
    *(v21 + 181) = 1;
    return 2;
  }

  v19 = 5;
LABEL_34:
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v24, v25, v26, v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_stream_adapter.cc");
  }

  *(a1 + 168) = 4;
  *(a1 + 176) = v19;
  webrtc::OpenSSLStreamAdapter::Cleanup(a1, 0);
  result = 0;
  *a5 = *(a1 + 176);
  return result;
}

uint64_t webrtc::OpenSSLStreamAdapter::Read(uint64_t a1, void *a2, unint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 168);
  if (v8 <= 2)
  {
    if ((v8 - 1) < 2)
    {
      return 2;
    }

    if (!v8)
    {
      v10 = *(**(a1 + 104) + 24);

      return v10();
    }

LABEL_19:
    result = 0;
    *a5 = *(a1 + 176);
    return result;
  }

  if (v8 != 3)
  {
    if (v8 == 5)
    {
      return 3;
    }

    goto LABEL_19;
  }

  if (*(a1 + 96) == 1 && (*(a1 + 216) & 1) == 0)
  {
    return 2;
  }

  if (!a3)
  {
    *a4 = 0;
    return 1;
  }

  *(a1 + 180) = 0;
  if (a3 >> 31)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/numerics/safe_conversions.h", 36, "IsValueInRangeForNumericType<Dst>(value)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v27);
    return webrtc::OpenSSLStreamAdapter::FlushInput(v25, v26);
  }

  v14 = SSL_read(*(a1 + 184), a2, a3);
  v15 = *(a1 + 184);
  if (v14 <= 0)
  {
    v18 = ERR_peek_error();
    if (v18)
    {
      if (HIBYTE(v18) == 2)
      {
        v19 = 5;
      }

      else
      {
        v19 = 1;
      }

LABEL_26:
      v20 = a1;
LABEL_41:
      webrtc::OpenSSLStreamAdapter::Error(v20, "SSL_read", 8, v19, 0, 0);
      result = 0;
      *a5 = *(v20 + 176);
      return result;
    }

    v19 = *(v15[6] + 196);
    if (v14)
    {
      v21 = (v19 - 11) < 0xA || v19 == 4;
      v20 = a1;
      if (v21)
      {
        goto LABEL_41;
      }

      if (v19 == 3)
      {
        v22 = v15[4];
        v23 = *(v22 + 24);
        if ((v23 & 2) != 0)
        {
LABEL_50:
          *(a1 + 180) = 1;
          return 2;
        }

        if (v23)
        {
          return 2;
        }

LABEL_44:
        v19 = 5;
        if ((v23 & 4) == 0)
        {
          goto LABEL_41;
        }

        v24 = *(v22 + 28);
        if (v24 == 3)
        {
          v19 = 8;
        }

        else
        {
          v19 = 5;
        }

        if (v24 == 2)
        {
          v19 = 7;
        }

        goto LABEL_26;
      }

      if (v19 == 2)
      {
        if (v15[19])
        {
          return 2;
        }

        v22 = v15[3];
        v23 = *(v22 + 24);
        if (v23)
        {
          return 2;
        }

        if ((v23 & 2) != 0)
        {
          goto LABEL_50;
        }

        goto LABEL_44;
      }
    }

    else
    {
      v20 = a1;
      if (v19 == 6)
      {
        webrtc::OpenSSLStreamAdapter::Close(a1);
        return 3;
      }
    }

    v19 = 5;
    goto LABEL_41;
  }

  *a4 = v14;
  if (*(a1 + 320) != 1)
  {
    return 1;
  }

  v16 = *(v15[6] + 136);
  if (!v16)
  {
    return 1;
  }

  webrtc::OpenSSLStreamAdapter::FlushInput(a1, v16);
  result = 0;
  *a5 = 16711681;
  return result;
}

uint64_t webrtc::OpenSSLStreamAdapter::FlushInput(SSL **this, unsigned int a2)
{
  v24 = *MEMORY[0x277D85DE8];
  while (1)
  {
    v4 = a2 >= 0x800 ? 2048 : a2;
    result = SSL_read(this[23], buf, v4);
    if (result <= 0)
    {
      break;
    }

    a2 -= result;
    if (!a2)
    {
      return result;
    }
  }

  v6 = result;
  v7 = this[23];
  v8 = ERR_peek_error();
  if (v8)
  {
    if (HIBYTE(v8) == 2)
    {
      v9 = 5;
    }

    else
    {
      v9 = 1;
    }

    goto LABEL_32;
  }

  v9 = *(v7->handshake_func + 49);
  if (v6)
  {
    if ((v9 - 11) < 0xA || v9 == 4)
    {
      goto LABEL_32;
    }

    if (v9 == 3)
    {
      bbio = v7->bbio;
      init = bbio->init;
      if ((init & 2) != 0)
      {
        goto LABEL_40;
      }

      if ((init & 1) == 0)
      {
        if ((init & 4) != 0)
        {
          goto LABEL_23;
        }

        goto LABEL_38;
      }
    }

    else
    {
      if (v9 != 2)
      {
        goto LABEL_38;
      }

      if (!v7->msg_callback)
      {
        bbio = v7->wbio;
        v12 = bbio->init;
        if ((v12 & 1) == 0)
        {
          if ((v12 & 2) == 0)
          {
            if ((v12 & 4) != 0)
            {
LABEL_23:
              shutdown = bbio->shutdown;
              if (shutdown == 3)
              {
                v14 = 8;
              }

              else
              {
                v14 = 5;
              }

              if (shutdown == 2)
              {
                v9 = 7;
              }

              else
              {
                v9 = v14;
              }

              goto LABEL_32;
            }

LABEL_38:
            v9 = 5;
            goto LABEL_32;
          }

LABEL_40:
          v9 = 3;
          goto LABEL_32;
        }
      }
    }

    v9 = 2;
    goto LABEL_32;
  }

  if (v9 == 6)
  {
    v9 = 6;
  }

  else
  {
    v9 = 5;
  }

LABEL_32:
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_stream_adapter.cc");
  }

  *(this + 42) = 4;
  *(this + 44) = v9;
  return webrtc::OpenSSLStreamAdapter::Cleanup(this, 0);
}

uint64_t webrtc::OpenSSLStreamAdapter::Close(webrtc::OpenSSLStreamAdapter *this)
{
  webrtc::OpenSSLStreamAdapter::Cleanup(this, 0);
  v2 = *(**(this + 13) + 40);

  return v2();
}

uint64_t webrtc::OpenSSLStreamAdapter::GetState(webrtc::OpenSSLStreamAdapter *this)
{
  v1 = *(this + 42);
  if ((v1 - 1) < 2)
  {
    return 1;
  }

  if (v1 != 3)
  {
    return 0;
  }

  if (*(this + 96) != 1)
  {
    return 2;
  }

  if (*(this + 216))
  {
    return 2;
  }

  return 1;
}

uint64_t webrtc::OpenSSLStreamAdapter::ContinueSSL(webrtc::OpenSSLStreamAdapter *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    *(v2 + 4) = 0;
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }

    *(this + 20) = 0;
  }

  v3 = *(this + 23);
  if (*(this + 43))
  {
    v4 = SSL_accept(v3);
    if (v4 > 0)
    {
LABEL_7:
      *(this + 42) = 3;
      if (*(this + 96) != 1 || *(this + 216) == 1)
      {
        v5 = *(this + 11);
        if (v5)
        {
          v5(this + 64, 7, 0);
        }

        v6 = *(this + 4);
        for (*(this + 6) = v6; v6 != (this + 24); v6 = *(this + 6))
        {
          v8 = v6[2];
          v7 = v6 + 2;
          *(this + 6) = *(v7 - 1);
          v8(v7, this, 7, 0);
        }
      }

      goto LABEL_13;
    }
  }

  else
  {
    v4 = SSL_connect(v3);
    if (v4 > 0)
    {
      goto LABEL_7;
    }
  }

  v11 = v4;
  v12 = *(this + 23);
  v13 = ERR_peek_error();
  if (v13)
  {
    if (HIBYTE(v13) == 2)
    {
      v14 = 5;
    }

    else
    {
      v14 = 1;
    }

    goto LABEL_39;
  }

  v14 = *(v12[6] + 196);
  if (!v11)
  {
    if (v14 == 6)
    {
      v14 = 6;
    }

    else
    {
      v14 = 5;
    }

    goto LABEL_39;
  }

  if ((v14 - 11) < 0xA || v14 == 4)
  {
    goto LABEL_39;
  }

  if (v14 == 3)
  {
    v16 = v12[4];
    v17 = *(v16 + 24);
    if ((v17 & 3) == 0)
    {
LABEL_43:
      v14 = 5;
      if ((v17 & 4) != 0)
      {
        v21 = *(v16 + 28);
        v14 = v21 == 3 ? 8 : 5;
        if (v21 == 2)
        {
          v14 = 7;
        }
      }

      goto LABEL_39;
    }

LABEL_13:
    result = *(this + 23);
    if (result)
    {
      if (DTLSv1_get_timeout(result, &v22))
      {
        v10 = *(this + 19);
        if (v10)
        {
          atomic_fetch_add_explicit(v10, 1u, memory_order_relaxed);
        }

        v23 = v10;
        v24 = this;
        v26 = absl::internal_any_invocable::LocalInvoker<false,webrtc::TimeDelta,webrtc::OpenSSLStreamAdapter::SetTimeout(int)::$_0 &>;
        v25 = absl::internal_any_invocable::LocalManagerNontrivial<webrtc::OpenSSLStreamAdapter::SetTimeout(int)::$_0>;
        {
          {
            operator new();
          }
        }

        webrtc::RepeatingTaskHandle::DelayedStart();
      }

      return 0;
    }

    return result;
  }

  if (v14 == 2)
  {
    if (!v12[19])
    {
      v16 = v12[3];
      v17 = *(v16 + 24);
      if ((v17 & 3) == 0)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_13;
  }

  v14 = 5;
LABEL_39:
  v18 = v14;
  error = ERR_peek_last_error();
  v20 = *(this + 17);
  if (v20)
  {
    v20(this + 112, (error & 0xFFF) == 184);
  }

  return v18;
}

uint64_t webrtc::anonymous namespace::TimeCallbackForTesting(webrtc::_anonymous_namespace_ *this, const ssl_st *a2, timeval *a3)
{
  if (webrtc::g_clock)
  {
    result = (*(*webrtc::g_clock + 16))(webrtc::g_clock, a2, a3);
  }

  else
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    result = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
  }

  *&a2->version = result / 1000000000;
  LODWORD(a2->method) = result % 1000000000 / 1000;
  return result;
}

void webrtc::OpenSSLStreamAdapter::SSLVerifyCallback(webrtc::OpenSSLStreamAdapter *this, ssl_st *a2, unsigned __int8 *a3)
{
  v3 = *(this + 15);
  if (v3 && !*v3)
  {
    v4 = *(this + 6);
    v5 = *(v4 + 464);
    if (!v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4 = *(this + 6);
    v5 = *(v4 + 464);
    if (!v5)
    {
LABEL_4:
      v6 = *(v4 + 280);
      v5 = v6[195];
      if (!v5)
      {
        v5 = v6[194];
        if (!v5)
        {
          v5 = *(*v6 + 88);
          if (!v5)
          {
            goto LABEL_12;
          }
        }
      }
    }
  }

  v7 = *(v5 + 136);
  if (v7)
  {
    if (*v7)
    {
      operator new();
    }
  }

LABEL_12:
  operator new();
}

webrtc::SSLCertChain *webrtc::OpenSSLStreamAdapter::GetPeerSSLCertChain@<X0>(webrtc::OpenSSLStreamAdapter *this@<X0>, void *a2@<X8>)
{
  result = *(this + 26);
  if (result)
  {
    webrtc::SSLCertChain::Clone(result);
  }

  *a2 = 0;
  return result;
}

BOOL webrtc::OpenSSLStreamAdapter::SetSslGroupIds(uint64_t a1, char **a2)
{
  v2 = *(a1 + 168);
  v3 = (a1 + 296);
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == a2;
  }

  if (!v4)
  {
    std::vector<unsigned short>::__assign_with_size[abi:sn200100]<unsigned short *,unsigned short *>(v3, *a2, a2[1], (a2[1] - *a2) >> 1);
  }

  return v2 == 0;
}

void webrtc::BIO_stream_method(void)::$_0::operator()()
{
  v0 = malloc_type_malloc(0x58uLL, 0xB4E622C9uLL);
  if (v0)
  {
    *v0 = 80;
    *(v0 + 12) = 0u;
    *(v0 + 28) = 0u;
    *(v0 + 44) = 0u;
    *(v0 + 60) = 0u;
    *(v0 + 2) = 1043;
    *(v0 + 72) = 0u;
    *(v0 + 2) = "stream";
    *(v0 + 3) = webrtc::stream_write;
    *(v0 + 4) = webrtc::stream_read;
    *(v0 + 7) = webrtc::stream_ctrl;
    *(v0 + 8) = webrtc::stream_new;
    *(v0 + 9) = webrtc::stream_free;
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    __break(1u);
  }
}

unint64_t webrtc::stream_write(webrtc *this, bio_st *a2, const char *a3)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(this + 5);
  *(this + 6) &= 0xFFFFFFF0;
  *(this + 7) = 0;
  v16 = 0;
  HIDWORD(v15) = 0;
  if (!a3)
  {
    a2 = 0;
  }

  v5 = (*(*v4 + 32))(v4, a2, a3, &v16, &v15 + 4);
  if (v5 == 2)
  {
    *(this + 6) |= 0xAu;
    return 0xFFFFFFFFLL;
  }

  if (v5 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = v16;
  if (v16 >> 31)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/numerics/safe_conversions.h", 36, "IsValueInRangeForNumericType<Dst>(value)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v6, v7, v8, v9, v15);
    return webrtc::stream_read(v11, v12, v13, v14);
  }

  return result;
}

unint64_t webrtc::stream_read(webrtc *this, bio_st *a2, char *a3)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(this + 5);
  *(this + 6) &= 0xFFFFFFF0;
  *(this + 7) = 0;
  v17 = 0;
  HIDWORD(v16) = 0;
  if (!a3)
  {
    a2 = 0;
  }

  v5 = (*(*v4 + 24))(v4, a2, a3, &v17, &v16 + 4);
  if (v5 == 2)
  {
    *(this + 6) |= 9u;
    return 0xFFFFFFFFLL;
  }

  if (v5 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = v17;
  if (v17 >> 31)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/numerics/safe_conversions.h", 36, "IsValueInRangeForNumericType<Dst>(value)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v6, v7, v8, v9, v16);
    return webrtc::stream_ctrl(v11, v12, v13, v14, v15);
  }

  return result;
}

uint64_t webrtc::stream_ctrl(webrtc *this, bio_st *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2 == 40)
  {
    return 1200;
  }

  if (a2 != 11)
  {
    if (a2 == 2)
    {
      return (*(*a4 + 16))(a4) == 0;
    }

    return 0;
  }

  if (!(*(**(this + 5) + 48))(*(this + 5), a2, a3, a4, a5))
  {
    return 1;
  }

  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
  {
    return 0;
  }

  webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_stream_adapter.cc");
  return 0;
}

uint64_t webrtc::stream_new(webrtc *this, bio_st *a2)
{
  *(this + 2) = 1;
  *(this + 5) = 0;
  return 1;
}

void *absl::internal_any_invocable::LocalInvoker<false,void,webrtc::OpenSSLStreamAdapter::OpenSSLStreamAdapter(std::unique_ptr<webrtc::StreamInterface>,absl::AnyInvocable<void ()(webrtc::SSLHandshakeError)>,webrtc::FieldTrialsView const*)::$_0 &,int,int>(void *result, char a2, uint64_t a3)
{
  v4 = *result;
  if (a2)
  {
    if (*(v4 + 168) == 1)
    {
      v7 = a2;
      *(v4 + 168) = 2;
      result = webrtc::OpenSSLStreamAdapter::BeginSSL(v4);
      v5 = result;
      if (result)
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_stream_adapter.cc");
        }

        *(v4 + 168) = 4;
        *(v4 + 176) = v5;
        webrtc::OpenSSLStreamAdapter::Cleanup(v4, 0);
        v15 = *(v4 + 88);
        if (v15)
        {
          v15(v4 + 64, 8, v5);
        }

        result = *(v4 + 32);
        for (*(v4 + 48) = result; result != (v4 + 24); result = *(v4 + 48))
        {
          v17 = result[2];
          v16 = result + 2;
          *(v4 + 48) = *(v16 - 1);
          v17(v16, v4, 8, v5);
        }

        return result;
      }

      a2 = v7;
      v6 = v7 & 6;
      if ((v7 & 6) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v5 = 1;
      v6 = a2 & 6;
      if ((a2 & 6) == 0)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v5 = 0;
    v6 = a2 & 6;
    if ((a2 & 6) == 0)
    {
      goto LABEL_35;
    }
  }

  v18 = *(v4 + 168);
  if (v18 == 3)
  {
    if ((a2 & 2) != 0)
    {
      if ((*(v4 + 181) | ((a2 & 4) >> 2)))
      {
        LODWORD(v5) = v5 | 4;
      }
    }

    else
    {
      if ((a2 & 4) == 0)
      {
        goto LABEL_35;
      }

      v5 = v5 | 4;
      if (*(v4 + 180) != 1)
      {
        goto LABEL_35;
      }
    }

    v5 = v5 | 2;
    goto LABEL_35;
  }

  if (v18 != 2)
  {
    if (!v18)
    {
      v5 = v5 | v6;
    }

LABEL_35:
    if ((a2 & 8) != 0)
    {
      webrtc::OpenSSLStreamAdapter::Cleanup(v4, 0);
      v5 = v5 | 8;
      v31 = *(v4 + 88);
      if (!v31)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (!v5)
      {
        return result;
      }

      a3 = 0;
      v31 = *(v4 + 88);
      if (!v31)
      {
        goto LABEL_41;
      }
    }

    v31(v4 + 64, v5, a3);
LABEL_41:
    result = *(v4 + 32);
    for (*(v4 + 48) = result; result != (v4 + 24); result = *(v4 + 48))
    {
      v33 = result[2];
      v32 = result + 2;
      *(v4 + 48) = *(v32 - 1);
      v33(v32, v4, v5, a3);
    }

    return result;
  }

  v19 = a2;
  result = webrtc::OpenSSLStreamAdapter::ContinueSSL(v4);
  a2 = v19;
  if (!result)
  {
    goto LABEL_35;
  }

  v20 = result;
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v21, v22, v23, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_stream_adapter.cc");
  }

  *(v4 + 168) = 4;
  *(v4 + 176) = v20;
  webrtc::OpenSSLStreamAdapter::Cleanup(v4, 0);
  v28 = *(v4 + 88);
  if (v28)
  {
    v28(v4 + 64, 8, v20);
  }

  result = *(v4 + 32);
  for (*(v4 + 48) = result; result != (v4 + 24); result = *(v4 + 48))
  {
    v30 = result[2];
    v29 = result + 2;
    *(v4 + 48) = *(v29 - 1);
    v30(v29, v4, 8, v20);
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::OpenSSLStreamAdapter::PostEvent(int,int)::$_0 &&>(unsigned int *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(*a1 + 88);
  if (v4)
  {
    v4(v1 + 64, v2, v3);
  }

  result = *(v1 + 32);
  for (*(v1 + 48) = result; result != v1 + 24; result = *(v1 + 48))
  {
    v7 = *(result + 16);
    v6 = result + 16;
    *(v1 + 48) = *(v6 - 8);
    v7(v6, v1, v2, v3);
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,webrtc::TimeDelta,webrtc::OpenSSLStreamAdapter::SetTimeout(int)::$_0 &>(void *a1)
{
  if (*(*a1 + 4) != 1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v1 = a1[1];
  v2 = *(v1 + 160);
  if (v2)
  {
    *(v2 + 4) = 0;
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }

    *(v1 + 160) = 0;
  }

  v3 = DTLSv1_handle_timeout(*(v1 + 184));
  if (v3 >= 1)
  {
    ++*(v1 + 340);
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_stream_adapter.cc");
    }

    goto LABEL_10;
  }

  v11 = v3;
  if ((v3 & 0x80000000) == 0)
  {
LABEL_10:
    if (*(v1 + 168) == 2)
    {
      webrtc::OpenSSLStreamAdapter::ContinueSSL(v1);
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_stream_adapter.cc");
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_stream_adapter.cc");
  }

  *(v1 + 168) = 4;
  *(v1 + 176) = v11;
  webrtc::OpenSSLStreamAdapter::Cleanup(v1, 255);
  v27 = *(v1 + 88);
  if (v27)
  {
    v27(v1 + 64, 8, v11);
  }

  v28 = *(v1 + 32);
  for (*(v1 + 48) = v28; v28 != v1 + 24; v28 = *(v1 + 48))
  {
    v30 = *(v28 + 16);
    v29 = v28 + 16;
    *(v1 + 48) = *(v29 - 8);
    v30(v29, v1, 8, v11);
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

atomic_uint *absl::internal_any_invocable::LocalManagerNontrivial<webrtc::OpenSSLStreamAdapter::SetTimeout(int)::$_0>(char a1, __int128 *a2, _OWORD *a3)
{
  if ((a1 & 1) == 0)
  {
    v3 = *a2;
    *a2 = 0;
    *a3 = v3;
  }

  result = *a2;
  if (*a2)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      JUMPOUT(0x2743DA540);
    }
  }

  return result;
}

BOOL webrtc::openssl::ParseCertificate(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v5 = *(a1 + 16);
  v21[0] = *(a1 + 8);
  v21[1] = v5;
  v22 = 0;
  LODWORD(v17) = 0;
  if (!cbs_get_any_asn1_element(v21, &v19, &v17, &v22, 0, 0, 0) || v17 != 536870928 || v20 < v22)
  {
    return 0;
  }

  v19 += v22;
  v20 -= v22;
  v22 = 0;
  LODWORD(v15) = 0;
  if (!cbs_get_any_asn1_element(&v19, &v17, &v15, &v22, 0, 0, 0))
  {
    return 0;
  }

  if (v15 != 536870928)
  {
    return 0;
  }

  if (v18 < v22)
  {
    return 0;
  }

  v17 += v22;
  v18 -= v22;
  v22 = 0;
  LODWORD(v14[0]) = 0;
  if (!cbs_get_any_asn1_element(&v19, &v15, v14, &v22, 0, 0, 0) || LODWORD(v14[0]) != 536870928 || v16 < v22)
  {
    return 0;
  }

  v15 += v22;
  v16 -= v22;
  v14[0] = 0;
  v24 = 0;
  v7 = (a2 ? a2 : &v22);
  if (!cbs_get_any_asn1_element(&v15, v7, &v24, v14, 0, 0, 0) || v24 != 6)
  {
    return 0;
  }

  v8 = &v22;
  if (a2)
  {
    v8 = a2;
  }

  v9 = v8[1];
  v10 = v9 >= v14[0];
  v11 = v9 - v14[0];
  if (!v10)
  {
    return 0;
  }

  *v7 += v14[0];
  v8[1] = v11;
  v14[0] = 0;
  v24 = 0;
  if (!cbs_get_any_asn1_element(&v19, &v22, &v24, v14, 0, 0, 0))
  {
    return 0;
  }

  if (v24 != 3)
  {
    return 0;
  }

  if (v23 < v14[0])
  {
    return 0;
  }

  if (v20)
  {
    return 0;
  }

  if (!CBS_get_optional_asn1(&v17, 0, 0, -1610612736))
  {
    return 0;
  }

  v14[0] = 0;
  v24 = 0;
  if (!cbs_get_any_asn1_element(&v17, &v22, &v24, v14, 0, 0, 0))
  {
    return 0;
  }

  if (v24 != 2)
  {
    return 0;
  }

  if (v23 < v14[0])
  {
    return 0;
  }

  v14[0] = 0;
  v24 = 0;
  if (!cbs_get_any_asn1_element(&v17, &v22, &v24, v14, 0, 0, 0) || v24 != 536870928 || v23 < v14[0] || !CBS_get_asn1(&v17, 0, 536870928) || !CBS_get_asn1(&v17, &v22, 536870928) || !cbs_get_any_asn1_element(&v22, 0, 0, 0, 0, 0, 0))
  {
    return 0;
  }

  v24 = 0;
  any_asn1 = CBS_get_any_asn1(&v22, v14, &v24);
  v13 = 0;
  if (!any_asn1)
  {
    return 0;
  }

  if (v24 == 23)
  {
    goto LABEL_39;
  }

  if (v24 != 24)
  {
    return 0;
  }

  v13 = 1;
LABEL_39:
  if (a3)
  {
    *a3 = webrtc::ASN1TimeToSec(v14[0], v14[1], v13);
  }

  if (!CBS_get_asn1_element(&v17, 0, 536870928) || !CBS_get_asn1(&v17, 0, 536870928) || !CBS_get_optional_asn1(&v17, 0, 0, -2147483647) || !CBS_get_optional_asn1(&v17, 0, 0, -2147483646) || !CBS_get_optional_asn1(&v17, 0, 0, -1610612733))
  {
    return 0;
  }

  return v18 == 0;
}

BOOL webrtc::openssl::VerifyPeerCertMatchesHost(uint64_t a1, char *a2, size_t a3)
{
  result = 0;
  if (a1 && a3)
  {
    v5 = *(a1 + 48);
    v6 = *(v5 + 464);
    if (!v6 && (v7 = *(v5 + 280), (v6 = v7[195]) == 0) && (v6 = v7[194]) == 0 && (v6 = *(*v7 + 88)) == 0 || (v8 = *(v6 + 136)) == 0 || !*v8)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
LABEL_15:
        webrtc::webrtc_logging_impl::Log("\r\t", v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_utility.cc");
      }

      return 0;
    }

    v11 = **(v8 + 8);
    v12 = *(v11 + 16);
    v24 = *(v11 + 8);
    v25 = v12;
    v13 = x509_parse(&v24, v11);
    if (!v13)
    {
LABEL_12:
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        goto LABEL_15;
      }

      return 0;
    }

    if (v25)
    {
      X509_free(v13);
      goto LABEL_12;
    }

    if (a2)
    {
      v21 = v13;
      if (memchr(a2, 0, a3))
      {
        v22 = 0;
        v13 = v21;
      }

      else
      {
        v23 = do_x509_check(v21, a2, a3, 0, 2, 0);
        v13 = v21;
        v22 = v23 == 1;
      }
    }

    else
    {
      v22 = 0;
    }

    X509_free(v13);
    return v22;
  }

  return result;
}

BOOL webrtc::openssl::LoadBuiltinSSLRootCertificates(x509_store_st **this, ssl_ctx_st *a2)
{
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = kSSLCertCertificateSizeList[v4];
    v17[0] = *(&kSSLCertCertificateList + v4 * 8);
    v17[1] = v6;
    v7 = x509_parse(v17, 0);
    if (v7)
    {
      v8 = v7;
      if (x509_store_add(this[31], v7, 0))
      {
        ++v5;
      }

      else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        v2 = v2 & 0xFFFFFFFF00000000 | 0x802;
        webrtc::webrtc_logging_impl::Log("\r\t", v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/openssl_utility.cc");
      }

      X509_free(v8);
    }

    ++v4;
  }

  while (v4 != 36);
  return v5 > 0;
}

uint64_t webrtc::openssl::GetBufferPool(webrtc::openssl *this)
{
  {
    return webrtc::openssl::GetBufferPool(void)::instance;
  }

  v3 = &unk_280905000;
  if (v2)
  {
    webrtc::openssl::GetBufferPool(void)::instance = CRYPTO_BUFFER_POOL_new();
    v3 = &unk_280905000;
  }

  return v3[394];
}

void webrtc::OperationsChain::~OperationsChain(webrtc::OperationsChain *this)
{
  if (*(this + 88) != 1)
  {
    goto LABEL_5;
  }

  v2 = *(this + 10);
  if (v2 != (this + 56))
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

LABEL_5:
    v3 = *(this + 2);
    v4 = *(this + 3);
    if (v4 != v3)
    {
      goto LABEL_6;
    }

LABEL_30:
    v4 = v3;
    *(this + 6) = 0;
    v12 = 0;
    goto LABEL_17;
  }

  (*(*v2 + 32))(v2);
  v3 = *(this + 2);
  v4 = *(this + 3);
  if (v4 == v3)
  {
    goto LABEL_30;
  }

LABEL_6:
  v5 = *(this + 5);
  v6 = &v3[v5 >> 9];
  v7 = *v6;
  v8 = (*v6 + 8 * (v5 & 0x1FF));
  v9 = *(v3 + (((*(this + 6) + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 6) + v5) & 0x1FF);
  if (v8 == v9)
  {
LABEL_15:
    *(this + 6) = 0;
    v12 = v4 - v3;
    if (v12 >= 3)
    {
      do
      {
        operator delete(*v3);
        v4 = *(this + 3);
        v3 = (*(this + 2) + 8);
        *(this + 2) = v3;
        v12 = v4 - v3;
      }

      while (v12 > 2);
    }

LABEL_17:
    if (v12 == 1)
    {
      v13 = 256;
    }

    else
    {
      if (v12 != 2)
      {
LABEL_22:
        if (v3 != v4)
        {
          do
          {
            v14 = *v3++;
            operator delete(v14);
          }

          while (v3 != v4);
          v16 = *(this + 2);
          v15 = *(this + 3);
          if (v15 != v16)
          {
            *(this + 3) = v15 + ((v16 - v15 + 7) & 0xFFFFFFFFFFFFFFF8);
          }
        }

        v17 = *(this + 1);
        if (v17)
        {
          operator delete(v17);
        }

        return;
      }

      v13 = 512;
    }

    *(this + 5) = v13;
    goto LABEL_22;
  }

  while (v8)
  {
    v10 = *v8;
    *v8 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
      v7 = *v6;
    }

    if (++v8 - v7 == 4096)
    {
      v11 = v6[1];
      ++v6;
      v7 = v11;
      v8 = v11;
    }

    if (v8 == v9)
    {
      v3 = *(this + 2);
      v4 = *(this + 3);
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t std::optional<std::function<void ()(void)>>::operator=[abi:sn200100]<std::function<void ()(void)>,void>(uint64_t result, uint64_t a2)
{
  if (*(result + 32) == 1)
  {
    v3 = *(result + 24);
    *(result + 24) = 0;
    if (v3 == result)
    {
      v4 = result;
      (*(*v3 + 32))(v3);
    }

    else
    {
      if (!v3)
      {
        goto LABEL_10;
      }

      v4 = result;
      (*(*v3 + 40))(v3);
    }

    result = v4;
LABEL_10:
    v6 = *(a2 + 24);
    if (v6)
    {
      if (v6 == a2)
      {
        *(result + 24) = result;
        v8 = *(a2 + 24);
        v9 = result;
        (*(*v8 + 24))(v8, result);
        return v9;
      }

      else
      {
        *(result + 24) = v6;
        *(a2 + 24) = 0;
      }
    }

    else
    {
      *(result + 24) = 0;
    }

    return result;
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(result + 24) = result;
      v7 = result;
      (*(**(a2 + 24) + 24))(*(a2 + 24), result);
      result = v7;
      *(v7 + 32) = 1;
    }

    else
    {
      *(result + 24) = v5;
      *(a2 + 24) = 0;
      *(result + 32) = 1;
    }
  }

  else
  {
    *(result + 24) = 0;
    *(result + 32) = 1;
  }

  return result;
}

void *std::__function::__func<webrtc::OperationsChain::CreateOperationsChainCallback(void)::$_0,std::allocator<webrtc::OperationsChain::CreateOperationsChainCallback(void)::$_0>,void ()(void)>::~__func(void *a1)
{
  v1 = a1;
  *a1 = &unk_288297330;
  v2 = a1[1];
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    v3 = v1;
    v4 = *(v2 + 8);
    if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      v5 = v2;
      webrtc::OperationsChain::~OperationsChain(v4);
      MEMORY[0x2743DA540]();
      v2 = v5;
    }

    MEMORY[0x2743DA540](v2, 0x1020C40D5A9D86FLL);
    return v3;
  }

  return v1;
}

void std::__function::__func<webrtc::OperationsChain::CreateOperationsChainCallback(void)::$_0,std::allocator<webrtc::OperationsChain::CreateOperationsChainCallback(void)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_288297330;
  v2 = a1[1];
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    v3 = *(v2 + 8);
    if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      v4 = v2;
      webrtc::OperationsChain::~OperationsChain(v3);
      MEMORY[0x2743DA540]();
      v2 = v4;
    }

    MEMORY[0x2743DA540](v2, 0x1020C40D5A9D86FLL);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t std::__function::__func<webrtc::OperationsChain::CreateOperationsChainCallback(void)::$_0,std::allocator<webrtc::OperationsChain::CreateOperationsChainCallback(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288297330;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<webrtc::OperationsChain::CreateOperationsChainCallback(void)::$_0,std::allocator<webrtc::OperationsChain::CreateOperationsChainCallback(void)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  result = *(a1 + 8);
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    v3 = *(result + 8);
    if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      webrtc::OperationsChain::~OperationsChain(v3);
      MEMORY[0x2743DA540]();
    }

    JUMPOUT(0x2743DA540);
  }

  return result;
}

void std::__function::__func<webrtc::OperationsChain::CreateOperationsChainCallback(void)::$_0,std::allocator<webrtc::OperationsChain::CreateOperationsChainCallback(void)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p;
  v3 = __p[1];
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    v4 = v2;
    v5 = *(v3 + 8);
    if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
    {
      v6 = v3;
      webrtc::OperationsChain::~OperationsChain(v5);
      MEMORY[0x2743DA540]();
      v3 = v6;
    }

    MEMORY[0x2743DA540](v3, 0x1020C40D5A9D86FLL);
    v2 = v4;
  }

  operator delete(v2);
}

webrtc::OperationsChain *std::__function::__func<webrtc::OperationsChain::CreateOperationsChainCallback(void)::$_0,std::allocator<webrtc::OperationsChain::CreateOperationsChainCallback(void)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 8);
  v3 = *(v2 + 48);
  if (!v3 || (v4 = *(v2 + 40), (v5 = *(*(v2 + 16) + ((v4 >> 6) & 0x3FFFFFFFFFFFFF8))) == 0))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = *(v5 + 8 * (*(v2 + 40) & 0x1FFLL));
  *(v5 + 8 * (*(v2 + 40) & 0x1FFLL)) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
    v4 = *(v2 + 40);
    v3 = *(v2 + 48);
  }

  v7 = v3 - 1;
  v8 = v4 + 1;
  *(v2 + 40) = v4 + 1;
  *(v2 + 48) = v7;
  if (v4 + 1 >= 0x400)
  {
    operator delete(**(v2 + 16));
    *(v2 + 16) += 8;
    v7 = *(v2 + 48);
    v8 = *(v2 + 40) - 512;
    *(v2 + 40) = v8;
  }

  if (!v7)
  {
    if (*(v2 + 88) != 1)
    {
      goto LABEL_12;
    }

    v10 = *(v2 + 80);
    if (v10)
    {
      (*(*v10 + 48))(v10);
      goto LABEL_12;
    }

LABEL_17:
    v12 = std::__throw_bad_function_call[abi:sn200100]();
    return WebRtcOpus_EncoderCreate(v12, v13, v14, v15);
  }

  v9 = *(*(*(v2 + 16) + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF));
  (*(*v9 + 16))(v9);
LABEL_12:
  result = *(v1 + 8);
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      webrtc::OperationsChain::~OperationsChain(result);
      result = MEMORY[0x2743DA540]();
    }
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t WebRtcOpus_EncoderCreate(void ***a1, void *a2, int a3, int a4)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    v6 = a1;
    v7 = 2048;
LABEL_7:
    v9 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200406C4767B9uLL);
    if (a4 <= 15999)
    {
      if (a4 != 8000 && a4 != 12000)
      {
        goto LABEL_18;
      }
    }

    else if (a4 != 16000 && a4 != 48000 && a4 != 24000)
    {
LABEL_18:
      *v9 = 0;
      free(v9[1]);
      free(v9);
      return -1;
    }

    if ((a2 - 3) >= 0xFFFFFFFE)
    {
      v10 = malloc_type_malloc((4912 * a2 + 38668), 0xECF9CF46uLL);
      if (v10)
      {
        v11 = v10;
        if (!opus_encoder_init(v10, a4, a2, v7))
        {
          v12 = 0;
          *v9 = v11;
          v9[2] = a2;
          *(v9 + 6) = 0;
          *(v9 + 7) = a4;
          *v6 = v9;
          return v12;
        }

        free(v11);
      }
    }

    goto LABEL_18;
  }

  if (a3 == 1)
  {
    v6 = a1;
    v7 = 2049;
    goto LABEL_7;
  }

  return -1;
}

uint64_t WebRtcOpus_EncoderFree(void **a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a1;
  if (!v2)
  {
    v2 = a1[1];
  }

  free(v2);
  free(a1);
  return 0;
}

uint64_t WebRtcOpus_MultistreamEncoderCreate(void ***a1, void *a2, int a3, int a4, int a5, uint64_t a6)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      return -1;
    }

    v9 = a6;
    v10 = a1;
    v11 = 2049;
  }

  else
  {
    v9 = a6;
    v10 = a1;
    v11 = 2048;
  }

  v13 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200406C4767B9uLL);
  if ((a2 - 256) >= 0xFFFFFF01 && (a5 & 0x80000000) == 0 && a4 >= 1 && a5 <= a4 && 255 - a5 >= a4 && a5 + a4 <= a2)
  {
    v15 = malloc_type_malloc(43584 * (a4 - a5) + 48496 * a5 + 296, 0xECF9CF46uLL);
    if (v15)
    {
      v16 = v15;
      if (!opus_multistream_encoder_init_impl(v15, 48000, a2, a4, a5, v9, v11, 0))
      {
        v14 = 0;
        v13[1] = v16;
        v13[2] = a2;
        v13[3] = 0xBB8000000000;
        *v10 = v13;
        return v14;
      }

      free(v16);
    }
  }

  v13[1] = 0;
  if (*v13)
  {
    free(*v13);
  }

  free(v13);
  return -1;
}

uint64_t WebRtcOpus_SetBitRate(int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *a1;
  if (v9)
  {
    return opus_encoder_ctl(v9, 4002, a3, a4, a5, a6, a7, a8, a2);
  }

  else
  {
    return opus_multistream_encoder_ctl(a1[1], 4002, a3, a4, a5, a6, a7, a8, a2);
  }
}

uint64_t WebRtcOpus_SetPacketLossRate(int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *a1;
  if (v9)
  {
    return opus_encoder_ctl(v9, 4014, a3, a4, a5, a6, a7, a8, a2);
  }

  else
  {
    return opus_multistream_encoder_ctl(a1[1], 4014, a3, a4, a5, a6, a7, a8, a2);
  }
}

uint64_t WebRtcOpus_SetMaxPlaybackRate(int **a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 < 0x5DC1)
  {
    v8 = 1104;
  }

  else
  {
    v8 = 1105;
  }

  if (a2 >= 0x3E81)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1103;
  }

  if (a2 >= 0x2EE1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1102;
  }

  if (a2 >= 8001)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1101;
  }

  if (*a1)
  {
    return opus_encoder_ctl(*a1, 4004, a3, a4, a5, a6, a7, a8, v11);
  }

  else
  {
    return opus_multistream_encoder_ctl(a1[1], 4004, a3, a4, a5, a6, a7, a8, v11);
  }
}

uint64_t WebRtcOpus_EnableFec(int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *a1;
  if (v9)
  {
    return opus_encoder_ctl(v9, 4012, a3, a4, a5, a6, a7, a8, 1);
  }

  else
  {
    return opus_multistream_encoder_ctl(a1[1], 4012, a3, a4, a5, a6, a7, a8, 1);
  }
}

uint64_t WebRtcOpus_DisableFec(int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *a1;
  if (v9)
  {
    return opus_encoder_ctl(v9, 4012, a3, a4, a5, a6, a7, a8, 0);
  }

  else
  {
    return opus_multistream_encoder_ctl(a1[1], 4012, a3, a4, a5, a6, a7, a8, 0);
  }
}

uint64_t WebRtcOpus_EnableDtx(int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *a1;
  if (v9)
  {
    return opus_encoder_ctl(v9, 4016, a3, a4, a5, a6, a7, a8, 1);
  }

  else
  {
    return opus_multistream_encoder_ctl(a1[1], 4016, a3, a4, a5, a6, a7, a8, 1);
  }
}

uint64_t WebRtcOpus_DisableDtx(int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *a1;
  if (v9)
  {
    return opus_encoder_ctl(v9, 4016, a3, a4, a5, a6, a7, a8, 0);
  }

  else
  {
    return opus_multistream_encoder_ctl(a1[1], 4016, a3, a4, a5, a6, a7, a8, 0);
  }
}

uint64_t WebRtcOpus_EnableCbr(int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *a1;
  if (v9)
  {
    return opus_encoder_ctl(v9, 4006, a3, a4, a5, a6, a7, a8, 0);
  }

  else
  {
    return opus_multistream_encoder_ctl(a1[1], 4006, a3, a4, a5, a6, a7, a8, 0);
  }
}

uint64_t WebRtcOpus_DisableCbr(int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *a1;
  if (v9)
  {
    return opus_encoder_ctl(v9, 4006, a3, a4, a5, a6, a7, a8, 1);
  }

  else
  {
    return opus_multistream_encoder_ctl(a1[1], 4006, a3, a4, a5, a6, a7, a8, 1);
  }
}

uint64_t WebRtcOpus_SetComplexity(int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *a1;
  if (v9)
  {
    return opus_encoder_ctl(v9, 4010, a3, a4, a5, a6, a7, a8, a2);
  }

  else
  {
    return opus_multistream_encoder_ctl(a1[1], 4010, a3, a4, a5, a6, a7, a8, a2);
  }
}

uint64_t WebRtcOpus_SetBandwidth(int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *a1;
  if (v9)
  {
    return opus_encoder_ctl(v9, 4008, a3, a4, a5, a6, a7, a8, a2);
  }

  else
  {
    return opus_multistream_encoder_ctl(a1[1], 4008, a3, a4, a5, a6, a7, a8, a2);
  }
}

uint64_t WebRtcOpus_SetForceChannels(int **a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    if (a2 <= 2)
    {
      if (*a1)
      {
        return opus_encoder_ctl(*a1, 4022, a3, a4, a5, a6, a7, a8, a2);
      }

      return opus_multistream_encoder_ctl(a1[1], 4022, a3, a4, a5, a6, a7, a8, a2);
    }

    return 0xFFFFFFFFLL;
  }

  if (*a1)
  {
    return opus_encoder_ctl(*a1, 4022, a3, a4, a5, a6, a7, a8, 4294966296);
  }

  return opus_multistream_encoder_ctl(a1[1], 4022, a3, a4, a5, a6, a7, a8, 4294966296);
}

uint64_t WebRtcOpus_DecoderCreate(char ***a1, char *a2, int a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = malloc_type_calloc(1uLL, 0x28uLL, 0x1020040EF90260EuLL);
  if (!v6)
  {
    return -1;
  }

  if (a3 <= 15999)
  {
    if (a3 != 8000 && a3 != 12000)
    {
      goto LABEL_15;
    }

LABEL_11:
    if ((a2 - 3) >= 0xFFFFFFFE)
    {
      v8 = v6;
      v9 = malloc_type_malloc((8768 * a2 + 9460), 0xECF9CF46uLL);
      v6 = v8;
      if (v9)
      {
        if (!opus_decoder_init(v9, a3, a2))
        {
          v10 = 0;
          *v8 = v9;
          v8[2] = a2;
          *(v8 + 6) = 0;
          *(v8 + 7) = a3;
          *(v8 + 8) = a2;
          *a1 = v8;
          return v10;
        }

        free(v9);
        v6 = v8;
      }
    }

    goto LABEL_15;
  }

  if (a3 == 16000 || a3 == 48000 || a3 == 24000)
  {
    goto LABEL_11;
  }

LABEL_15:
  free(v6);
  return -1;
}

uint64_t WebRtcOpus_MultistreamDecoderCreate(void *a1, uint64_t a2, int a3, int a4, _OWORD *a5)
{
  if (a1)
  {
    v10 = malloc_type_calloc(1uLL, 0x28uLL, 0x1020040EF90260EuLL);
    if (v10)
    {
      if ((a2 - 256) >= 0xFFFFFF01 && (a4 & 0x80000000) == 0 && a3 >= 1 && a4 <= a3 && 255 - a4 >= a3)
      {
        v13 = v10;
        v14 = malloc_type_malloc(18232 * (a3 - a4) + 27000 * a4 + 272, 0xECF9CF46uLL);
        v10 = v13;
        if (v14)
        {
          if (!opus_multistream_decoder_init(v14, 48000, a2, a3, a4, a5))
          {
            v11 = 0;
            v13[1] = v14;
            v13[2] = a2;
            v13[3] = 0xBB8000000000;
            *a1 = v13;
            return v11;
          }

          free(v14);
          v10 = v13;
        }
      }

      free(v10);
    }

    return -1;
  }

  return 0xFFFFFFFFLL;
}

uint64_t WebRtcOpus_DecoderInit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  if (v9)
  {
    result = opus_decoder_ctl(v9, 4028, a3, a4, a5, a6, a7, a8, v11);
  }

  else
  {
    result = opus_multistream_decoder_ctl(*(a1 + 8), 4028, a3, a4, a5, a6, a7, a8, v11);
  }

  *(a1 + 24) = 0;
  return result;
}

uint64_t WebRtcOpus_Decode(uint64_t a1, unsigned __int8 *a2, unint64_t a3, int16x8_t *a4, _WORD *a5)
{
  if (!a3)
  {
    v15 = *(a1 + 28);
    *a5 = 2 * (*(a1 + 24) != 0);
    v16 = (10 * (v15 / 1000));
    v17 = *a1;
    if (*a1)
    {
      result = opus_decode(v17, 0, 0, a4, v16, 0);
      if (result >= 1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      result = opus_multistream_decode(*(a1 + 8), 0, 0, a4, v16, 0);
      if (result >= 1)
      {
        goto LABEL_10;
      }
    }

    return 0xFFFFFFFFLL;
  }

  v10 = (120 * (*(a1 + 28) / 1000));
  v11 = *a1;
  if (!*a1)
  {
    result = opus_multistream_decode(*(a1 + 8), a2, a3, a4, v10, 0);
    if (result > 0)
    {
      goto LABEL_4;
    }

LABEL_16:
    if ((*a2 & 4) != 0)
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    *(a1 + 32) = v20;
    return 0xFFFFFFFFLL;
  }

  result = opus_decode(v11, a2, a3, a4, v10, 0);
  if (result <= 0)
  {
    goto LABEL_16;
  }

LABEL_4:
  v13 = a3 < 3;
  *(a1 + 24) = v13;
  *a5 = 2 * v13;
  if ((*a2 & 4) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  *(a1 + 32) = v14;
LABEL_10:
  if (*(a1 + 16) == 2 && *(a1 + 32) == 1)
  {
    v18 = (2 * result);
    if (v18 >= 1)
    {
      if (v18 == 2)
      {
        for (i = 0; i < v18; i += 2)
        {
LABEL_26:
          a4->i16[i + 1] = a4->i16[i];
        }

        return result;
      }

      v21 = ((v18 - 1) >> 1) + 1;
      i = 2 * (v21 & 0xFFFFFFFFFFFFFFFELL);
      v22 = &a4->i16[2];
      v23 = v21 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        v24 = *v22;
        *(v22 - 1) = *(v22 - 2);
        v22[1] = v24;
        v22 += 4;
        v23 -= 2;
      }

      while (v23);
      if (v21 != (v21 & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_26;
      }
    }
  }

  return result;
}

uint64_t WebRtcOpus_DecodeFec(uint64_t a1, unsigned __int8 *a2, unint64_t a3, int16x8_t *a4, __int16 *a5)
{
  result = WebRtcOpus_PacketHasFec(a2, a3);
  if (result)
  {
    v11 = *(a1 + 28);
    v12 = *a2;
    if (*a2 < 0)
    {
      v23 = 1374389535 * (v11 << ((*a2 >> 3) & 3));
      v19 = (v23 >> 39) + (v23 >> 63);
      v20 = *a1;
      if (*a1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v13 = 1374389535 * (v11 << ((*a2 >> 3) & 3));
      v14 = (v13 >> 37) + (v13 >> 63);
      if (((v12 >> 3) & 3) == 3)
      {
        v15 = 60 * v11 / 1000;
      }

      else
      {
        v15 = v14;
      }

      v16 = 1374389535 * v11;
      v17 = (v16 >> 37) + (v16 >> 63);
      v18 = (v16 >> 36) + (v16 >> 63);
      if ((v12 & 8) == 0)
      {
        v18 = v17;
      }

      if ((~v12 & 0x60) != 0)
      {
        v19 = v15;
      }

      else
      {
        v19 = v18;
      }

      v20 = *a1;
      if (*a1)
      {
LABEL_12:
        result = opus_decode(v20, a2, a3, a4, v19, 1);
        if (result >= 1)
        {
          goto LABEL_13;
        }

        return 0xFFFFFFFFLL;
      }
    }

    result = opus_multistream_decode(*(a1 + 8), a2, a3, a4, v19, 1);
    if (result >= 1)
    {
LABEL_13:
      if (a3)
      {
        if (a3 < 3)
        {
          v21 = 2;
          v22 = 1;
LABEL_23:
          *(a1 + 24) = v22;
          *a5 = v21;
          return result;
        }
      }

      else if (*(a1 + 24))
      {
        *a5 = 2;
        return result;
      }

      v22 = 0;
      v21 = 0;
      goto LABEL_23;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

BOOL WebRtcOpus_PacketHasFec(unsigned __int8 *a1, uint64_t a2)
{
  v2 = 0;
  v17 = *MEMORY[0x277D85DE8];
  if (!a1 || !a2)
  {
    return v2;
  }

  v3 = *a1;
  if (v3 < 0)
  {
    return 0;
  }

  v4 = *a1;
  if ((~v4 & 0x60) != 0)
  {
    v6 = (v4 >> 3) & 3;
    if (v6 == 3)
    {
      v7 = 4;
      goto LABEL_19;
    }

    v5 = (42949673 * (48000 << v6)) >> 32;
  }

  else if ((v3 & 8) != 0)
  {
    LOWORD(v5) = 960;
  }

  else
  {
    LOWORD(v5) = 480;
  }

  v8 = v5 / 0x30u;
  if (v8 == 10 || v8 == 20)
  {
    v7 = 2;
    goto LABEL_19;
  }

  if (v8 != 40)
  {
    return 0;
  }

  v7 = 3;
LABEL_19:
  memset(&v15[22], 0, 32);
  if ((v4 & 4) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  memset(v15, 0, 352);
  v11 = opus_packet_parse_impl(a1, a2, 0, 0, v15, v16, 0, 0);
  v2 = 0;
  if ((v11 & 0x80000000) == 0 && v16[0].i16[0] >= 1)
  {
    v12 = (0x80u >> (v7 - 1)) & **&v15[0];
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = v10;
    }

    if (!v12 && (v4 & 4) != 0)
    {
      if (((**&v15[0] << (2 * v7 - 1)) & 0x80) != 0)
      {
        v13 = 1;
      }

      else
      {
        v13 = v10;
      }
    }

    return v13 < v10;
  }

  return v2;
}

double dcsctp::OutOfResourceErrorCause::SerializeTo(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (v3 > 0xFFFFFFFFFFFFFFFBLL)
  {
    a2[1] = v2 + v3 + 4;
    result = 2.0542726e-289;
    *(v2 + v3) = 67109888;
  }

  else
  {
    std::vector<unsigned char>::__append(a2, 4uLL);
    result = 2.0542726e-289;
    *(*a2 + v3) = 67109888;
  }

  return result;
}

void dcsctp::OutOfResourceErrorCause::ToString(char *a1@<X8>)
{
  a1[23] = 15;
  if (a1 <= "Out Of Resource" && a1 + 15 > "Out Of Resource")
  {
    __break(1u);
  }

  else
  {
    strcpy(a1, "Out Of Resource");
  }
}

unsigned __int16 *dcsctp::OutgoingSSNResetRequestParameter::Parse@<X0>(unsigned __int16 *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v3 = result;
  }

  else
  {
    v3 = 0;
  }

  if (a2 < 0x10 || __rev16(*v3) != 13 || (v4 = *(v3 + 3), (v4 & 1) != 0) || ((v5 = v4 | (*(v3 + 2) << 8), v5 >= 0x10) ? (v6 = a2 >= v5) : (v6 = 0), v6 ? (v7 = a2 - v5 >= 4) : (v7 = 1), v7))
  {
    v8 = 0;
    *a3 = 0;
  }

  else
  {
    v10 = *(v3 + 2);
    v11 = *(v3 + 1);
    v9 = *(v3 + 3);
    if (v5 - 16 >= 2)
    {
      operator new();
    }

    *a3 = &unk_2882973A8;
    *(a3 + 8) = bswap32(v11);
    *(a3 + 12) = bswap32(v10);
    *(a3 + 16) = bswap32(v9);
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    v8 = 1;
    *(a3 + 40) = 0;
  }

  *(a3 + 48) = v8;
  return result;
}

void dcsctp::OutgoingSSNResetRequestParameter::~OutgoingSSNResetRequestParameter(dcsctp::OutgoingSSNResetRequestParameter *this)
{
  *this = &unk_2882973A8;
  v1 = *(this + 3);
  if (v1)
  {
    *(this + 4) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_2882973A8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void dcsctp::OutgoingSSNResetRequestParameter::SerializeTo(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 32) - *(a1 + 24);
  v11 = *a2;
  v12 = a2[1] - *a2;
  v13 = v10 + 16;
  v14 = v12 + v10 + 16;
  if (v12 >= v14)
  {
    if (v12 > v14)
    {
      a2[1] = v11 + v14;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a2, v10 + 16);
    v11 = *a2;
  }

  v15 = v11 + v12;
  *v15 = 3328;
  *(v15 + 2) = BYTE1(v13);
  *(v15 + 3) = v13;
  if (v10 >= 0xFFFFFFFFFFFFFFF0)
  {
LABEL_13:
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 59, "data.size() >= FixedSize", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v21);
LABEL_14:
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 84, "FixedSize + variable_offset + SubSize <= data_.size()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v21);
    dcsctp::OutgoingSSNResetRequestParameter::ToString(v20);
    return;
  }

  v16 = (*a2 + v12);
  v16[1] = bswap32(*(a1 + 8));
  v16[2] = bswap32(*(a1 + 12));
  v16[3] = bswap32(*(a1 + 16));
  v17 = *(a1 + 24);
  if (*(a1 + 32) != v17)
  {
    v18 = 0;
    for (i = 16; i + 2 <= v13; i += 2)
    {
      if (v13 <= i || v10 <= 1)
      {
        goto LABEL_13;
      }

      *(v16 + i) = bswap32(*(v17 + 2 * v18++)) >> 16;
      v17 = *(a1 + 24);
      v10 -= 2;
      if (v18 >= (*(a1 + 32) - v17) >> 1)
      {
        return;
      }
    }

    goto LABEL_14;
  }
}

void *std::set<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>>::insert[abi:sn200100]<std::__tree_const_iterator<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,std::__tree_node<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,void *> *,long>>(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v12[7] = v3;
    v12[8] = v4;
    v6 = a2;
    v7 = result;
    do
    {
      result = std::__tree<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>>::__find_equal<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>>(v7, v7 + 1, v12, &v11, v6 + 4);
      if (!*result)
      {
        operator new();
      }

      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != a3);
  }

  return result;
}

void dcsctp::OutstandingData::HandleSack(void *a1@<X0>, uint64_t a2@<X1>, unsigned __int16 *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = a2;
  *(a6 + 24) = 0u;
  *(a6 + 40) = 0u;
  *(a6 + 56) = 0u;
  dcsctp::OutstandingData::RemoveAcked(a1, a2, a6);
  if (a4)
  {
    v12 = a3;
  }

  else
  {
    v12 = 0;
  }

  dcsctp::OutstandingData::AckGapBlocks(a1, a2, v12, a4, a6);
  v13 = *(a6 + 16);
  if (a5 && a1[1] < a2)
  {
    if (a4)
    {
      v14 = a3[2 * a4 - 1];
    }

    else
    {
      v14 = 0;
    }

    v13 = v14 + a2;
  }

  if (a4)
  {
    v15 = &v12[2 * a4];
    v16 = *(a6 + 8);
    v17 = a2;
    do
    {
      v18 = *a3 + a2;
      v19 = v17 + 1;
      for (i = v17 + 1 < v18 && v17 < v13; i; i = v19++ < v13)
      {
        v16 |= dcsctp::OutstandingData::NackItem(a1, v19, 0, a5 ^ 1u);
        if (v19 + 1 >= v18)
        {
          break;
        }
      }

      v17 = a3[1] + a2;
      a3 += 2;
    }

    while (a3 != v15);
    *(a6 + 8) = v16;
  }
}

void dcsctp::OutstandingData::RemoveAcked(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 88))
  {
    v6 = (a1 + 152);
    v7 = *(a1 + 8);
    while (1)
    {
      if (v7 >= a2)
      {
        goto LABEL_41;
      }

      v8 = *(*(a1 + 56) + 8 * (*(a1 + 80) / 0x2EuLL)) + 88 * (*(a1 + 80) % 0x2EuLL);
      v9 = *(v8 + 19);
      if (v9 != 1)
      {
        break;
      }

LABEL_30:
      if (*(v8 + 32))
      {
        if (*(v8 + 18) == 2)
        {
          v40 = *(v8 + 32);
          v23 = a3 + 6;
        }

        else
        {
          v40 = *(v8 + 32);
          v23 = a3 + 3;
        }

        std::vector<std::pair<webrtc::Socket::Option,int>>::push_back[abi:sn200100](v23, &v40);
      }

      v24 = *(a1 + 88);
      if (!v24)
      {
        goto LABEL_54;
      }

      v25 = *(a1 + 80);
      v26 = *(*(a1 + 56) + 8 * (v25 / 0x2E));
      if (!v26)
      {
        goto LABEL_54;
      }

      v27 = v26 + 88 * (v25 % 0x2E);
      v28 = *(v27 + 56);
      if (v28)
      {
        *(v27 + 64) = v28;
        operator delete(v28);
        v25 = *(a1 + 80);
        v24 = *(a1 + 88);
      }

      v29 = v24 - 1;
      *(a1 + 80) = v25 + 1;
      *(a1 + 88) = v24 - 1;
      if (v25 + 1 >= 0x5C)
      {
        operator delete(**(a1 + 56));
        *(a1 + 56) += 8;
        v29 = *(a1 + 88);
        *(a1 + 80) -= 46;
      }

      v7 = *(a1 + 8) + 1;
      *(a1 + 8) = v7;
      if (!v29)
      {
        goto LABEL_41;
      }
    }

    v11 = *(v8 + 56);
    v10 = *(v8 + 64);
    v12 = (*a1 + v10 - v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    *a3 += v12;
    if (v9)
    {
      v13 = v7 + 1;
      v14 = *(v8 + 18);
      if (v14 != 1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v15 = *(a1 + 104) - v12;
      *(a1 + 96) += v11 - v10;
      *(a1 + 104) = v15;
      --*(a1 + 112);
      v13 = v7 + 1;
      v14 = *(v8 + 18);
      if (v14 != 1)
      {
LABEL_8:
        if (v14 == 2)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

    v16 = *v6;
    if (*v6)
    {
      v17 = (a1 + 152);
      v18 = *v6;
      do
      {
        if (v18[4] > v7)
        {
          v17 = v18;
        }

        v18 = v18[v18[4] <= v7];
      }

      while (v18);
      if (v17 != v6 && v17[4] <= v13)
      {
        v19 = v17[1];
        v20 = v17;
        if (v19)
        {
          do
          {
            v21 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v21 = v20[2];
            v38 = *v21 == v20;
            v20 = v21;
          }

          while (!v38);
        }

        if (*(a1 + 144) == v17)
        {
          *(a1 + 144) = v21;
        }

        --*(a1 + 160);
        std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v16, v17);
        operator delete(v17);
        if (*(v8 + 18) == 2)
        {
          goto LABEL_27;
        }
      }
    }

LABEL_26:
    *(v8 + 18) = 0;
LABEL_27:
    *(v8 + 19) = 1;
    v22 = a3[2];
    if (v22 <= v13)
    {
      v22 = v13;
    }

    a3[2] = v22;
    goto LABEL_30;
  }

LABEL_41:
  v31 = *(a1 + 168);
  v30 = *(a1 + 176);
  if (v30 != v31)
  {
    v32 = (v30 - v31) >> 3;
    v33 = *(a1 + 168);
    do
    {
      v34 = v32 >> 1;
      v35 = &v33[8 * (v32 >> 1)];
      v37 = *v35;
      v36 = v35 + 8;
      v32 += ~(v32 >> 1);
      if (a2 + 1 < v37)
      {
        v32 = v34;
      }

      else
      {
        v33 = v36;
      }
    }

    while (v32);
    v38 = v33 == v31;
    if (v33 >= v31)
    {
      goto LABEL_48;
    }

LABEL_54:
    __break(1u);
    return;
  }

  v33 = *(a1 + 176);
  v38 = v30 == v31;
  if (v30 < v31)
  {
    goto LABEL_54;
  }

LABEL_48:
  if (!v38)
  {
    v39 = v30 - v33;
    if (v30 != v33)
    {
      memmove(*(a1 + 168), v33, v30 - v33);
    }

    *(a1 + 176) = &v31[v39];
  }
}

void dcsctp::OutstandingData::AckGapBlocks(void *a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, void *a5)
{
  if (a4)
  {
    v6 = a3;
    v8 = (a1 + 19);
    v9 = &a3[2 * a4];
    v34 = v9;
    v35 = a2;
    while (1)
    {
      v10 = *v6;
      v11 = v6[1];
      if (v10 <= v11)
      {
        break;
      }

LABEL_3:
      v6 += 2;
      if (v6 == v9)
      {
        return;
      }
    }

    v12 = v11 + a2;
    v13 = v10 + a2;
    if (v10 + a2 <= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v10 + a2;
    }

    while (1)
    {
      v17 = a1[1];
      v18 = v13 - v17;
      if (v13 > v17)
      {
        v19 = a1[11];
        if (v13 < v17 + v19 + 1)
        {
          if (v18 < 0)
          {
            LODWORD(v18) = v17 - v13;
          }

          v20 = v18 - 1;
          if (v19 <= v20)
          {
            __break(1u);
            return;
          }

          v21 = *(a1[7] + 8 * ((a1[10] + v20) / 0x2E)) + 88 * ((a1[10] + v20) % 0x2E);
          v22 = *(v21 + 19);
          if (v22 != 1)
          {
            break;
          }
        }
      }

LABEL_12:
      v16 = v13++ == v14;
      if (v16)
      {
        goto LABEL_3;
      }
    }

    v24 = *(v21 + 56);
    v23 = *(v21 + 64);
    v25 = (*a1 + v23 - v24 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    *a5 += v25;
    if (v22)
    {
      v26 = *(v21 + 18);
      if (v26 != 1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v27 = a1[13] - v25;
      a1[12] += v24 - v23;
      a1[13] = v27;
      --a1[14];
      v26 = *(v21 + 18);
      if (v26 != 1)
      {
LABEL_21:
        if (v26 == 2)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

    v28 = *v8;
    if (*v8)
    {
      v29 = v8;
      v30 = *v8;
      do
      {
        if (v30[4] >= v13)
        {
          v29 = v30;
        }

        v30 = v30[v30[4] < v13];
      }

      while (v30);
      if (v29 != v8 && v29[4] <= v13)
      {
        v31 = v29[1];
        v32 = v29;
        if (v31)
        {
          do
          {
            v33 = v31;
            v31 = *v31;
          }

          while (v31);
        }

        else
        {
          do
          {
            v33 = v32[2];
            v16 = *v33 == v32;
            v32 = v33;
          }

          while (!v16);
        }

        if (a1[18] == v29)
        {
          a1[18] = v33;
        }

        --a1[20];
        std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v28, v29);
        operator delete(v29);
        v9 = v34;
        a2 = v35;
        if (*(v21 + 18) == 2)
        {
          goto LABEL_9;
        }
      }
    }

LABEL_8:
    *(v21 + 18) = 0;
LABEL_9:
    *(v21 + 19) = 1;
    v15 = a5[2];
    if (v15 <= v13)
    {
      v15 = v13;
    }

    a5[2] = v15;
    goto LABEL_12;
  }
}

void *dcsctp::OutstandingData::NackItem(void *result, uint64_t a2, int a3, int a4)
{
  v4 = a2 - result[1];
  if (v4 < 0)
  {
    v4 = result[1] - a2;
  }

  v5 = v4 - 1;
  if (result[11] <= v5)
  {
    __break(1u);
  }

  else
  {
    v6 = *(result[7] + 8 * ((result[10] + v5) / 0x2E)) + 88 * ((result[10] + v5) % 0x2E);
    if (!*(v6 + 19))
    {
      v8 = *(v6 + 56);
      v7 = *(v6 + 64);
      v9 = v8 - v7 + result[12];
      v10 = result[13] - ((v7 - v8 + *result + 3) & 0xFFFFFFFFFFFFFFFCLL);
      result[12] = v9;
      result[13] = v10;
      --result[14];
    }

    *(v6 + 19) = 2;
    v11 = ++*(v6 + 20);
    v12 = (*(v6 + 18) - 3 < 0xFFFFFFFE) & (a3 | (v11 > 2));
    if (v12 != 1)
    {
      return v12;
    }

    v13 = *(v6 + 22);
    v14 = *(v6 + 16);
    v15 = v13 >= v14;
    if (v13 < v14)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    *(v6 + 18) = v16;
    if (!v15)
    {
      if (a4)
      {
        v17 = result[16];
        if (!v17)
        {
LABEL_18:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v18 = v17;
            v19 = v17[4];
            if (v19 <= a2)
            {
              break;
            }

            v17 = *v18;
            if (!*v18)
            {
              goto LABEL_18;
            }
          }

          if (v19 >= a2)
          {
            break;
          }

          v17 = v18[1];
          if (!v17)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
        v20 = result[19];
        if (!v20)
        {
LABEL_27:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v21 = v20;
            v22 = v20[4];
            if (v22 <= a2)
            {
              break;
            }

            v20 = *v21;
            if (!*v21)
            {
              goto LABEL_27;
            }
          }

          if (v22 >= a2)
          {
            break;
          }

          v20 = v21[1];
          if (!v20)
          {
            goto LABEL_27;
          }
        }
      }

      return v12;
    }

    dcsctp::OutstandingData::AbandonAllFor(result, v6);
    return v12;
  }

  return result;
}

void dcsctp::OutstandingData::AbandonAllFor(void *a1, uint64_t a2)
{
  v3 = *a2;
  LOWORD(v45) = *(a2 + 40);
  LODWORD(v47) = v3;
  v4 = a1[5];
  if (v4)
  {
    if ((*(*v4 + 48))(v4, &v45, &v47))
    {
      v6 = *(a2 + 40);
      v7 = *(a2 + 52);
      v8 = *(a2 + 82);
      *(&v47 + 4) = *(a2 + 44);
      HIDWORD(v47) = v7;
      v49 = 0;
      v50 = 0;
      __p = 0;
      v51 = 256;
      v52 = v8;
      v46 = *a2;
      LODWORD(v47) = v6;
      v45 = 0;
      v44 = 0;
      v42 = 0;
      v43 = 0x7FFFFFFFFFFFFFFFLL;
      v9 = std::deque<dcsctp::OutstandingData::Item>::emplace_back<webrtc::StrongAlias<dcsctp::OutgoingMessageIdTag,unsigned int>,dcsctp::Data,webrtc::Timestamp,dcsctp::MaxRetransmits,webrtc::Timestamp,dcsctp::LifecycleId>(a1 + 6, &v46, &v47, &v45, &v44, &v43, &v42);
      if (__p)
      {
        operator delete(__p);
      }

      if (*(v9 + 18) != 2)
      {
        *(v9 + 18) = 0;
      }

      *(v9 + 19) = 1;
    }

    v10 = a1[7];
    if (a1[8] != v10)
    {
      v11 = a1[10];
      v12 = *(v10 + 8 * (v11 / 0x2E));
      v13 = v12 + 88 * (v11 % 0x2E);
      v14 = *(v10 + 8 * ((a1[11] + v11) / 0x2E)) + 88 * ((a1[11] + v11) % 0x2E);
      if (v13 != v14)
      {
        v15 = a1[1];
        v16 = (a1 + 16);
        v17 = (a1 + 19);
        v18 = (v10 + 8 * (v11 / 0x2E));
        do
        {
          v19 = v15 + 1;
          v20 = *(v13 + 18);
          if (v20 != 2 && *(v13 + 40) == *(a2 + 40) && *v13 == *a2)
          {
            if (v20 == 1)
            {
              v21 = *v16;
              if (*v16)
              {
                v22 = a1 + 16;
                v23 = *v16;
                do
                {
                  if (v23[4] > v15)
                  {
                    v22 = v23;
                  }

                  v23 = v23[v23[4] <= v15];
                }

                while (v23);
                if (v22 != v16 && v19 >= v22[4])
                {
                  v24 = v22[1];
                  v25 = v22;
                  if (v24)
                  {
                    do
                    {
                      v26 = v24;
                      v24 = *v24;
                    }

                    while (v24);
                  }

                  else
                  {
                    do
                    {
                      v26 = v25[2];
                      v27 = *v26 == v25;
                      v25 = v26;
                    }

                    while (!v27);
                  }

                  if (a1[15] == v22)
                  {
                    a1[15] = v26;
                  }

                  --a1[17];
                  std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v21, v22);
                  operator delete(v22);
                }
              }

              v28 = *v17;
              if (*v17)
              {
                v29 = a1 + 19;
                v30 = *v17;
                do
                {
                  if (v30[4] > v15)
                  {
                    v29 = v30;
                  }

                  v30 = v30[v30[4] <= v15];
                }

                while (v30);
                if (v29 != v17 && v19 >= v29[4])
                {
                  v31 = v29[1];
                  v32 = v29;
                  if (v31)
                  {
                    do
                    {
                      v33 = v31;
                      v31 = *v31;
                    }

                    while (v31);
                  }

                  else
                  {
                    do
                    {
                      v33 = v32[2];
                      v27 = *v33 == v32;
                      v32 = v33;
                    }

                    while (!v27);
                  }

                  if (a1[18] == v29)
                  {
                    a1[18] = v33;
                  }

                  --a1[20];
                  std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v28, v29);
                  operator delete(v29);
                }
              }
            }

            *(v13 + 18) = 2;
            v12 = *v18;
          }

          v13 += 88;
          if (v13 - v12 == 4048)
          {
            v34 = v18[1];
            ++v18;
            v12 = v34;
            v13 = v34;
          }

          ++v15;
        }

        while (v13 != v14);
      }
    }
  }

  else
  {
    v35 = std::__throw_bad_function_call[abi:sn200100]();
    std::deque<dcsctp::OutstandingData::Item>::emplace_back<webrtc::StrongAlias<dcsctp::OutgoingMessageIdTag,unsigned int>,dcsctp::Data,webrtc::Timestamp,dcsctp::MaxRetransmits,webrtc::Timestamp,dcsctp::LifecycleId>(v35, v36, v37, v38, v39, v40, v41);
  }
}

void *std::deque<dcsctp::OutstandingData::Item>::emplace_back<webrtc::StrongAlias<dcsctp::OutgoingMessageIdTag,unsigned int>,dcsctp::Data,webrtc::Timestamp,dcsctp::MaxRetransmits,webrtc::Timestamp,dcsctp::LifecycleId>(void *result, int *a2, __int128 *a3, uint64_t *a4, __int16 *a5, uint64_t *a6, uint64_t *a7)
{
  v13 = result;
  v15 = result[1];
  v14 = result[2];
  v16 = 46 * ((v14 - v15) >> 3) - 1;
  if (v14 == v15)
  {
    v16 = 0;
  }

  if (v16 == result[5] + result[4])
  {
    result = std::deque<dcsctp::OutstandingData::Item>::__add_back_capacity(result);
    v15 = v13[1];
    v14 = v13[2];
  }

  if (v14 == v15 || (v17 = v13[5] + v13[4], (v18 = *(v15 + 8 * (v17 / 0x2E))) == 0))
  {
    __break(1u);
  }

  else
  {
    v19 = v18 + 88 * (v17 % 0x2E);
    v20 = *a2;
    v21 = a3[1];
    v35 = *a3;
    v22 = *(a3 + 4);
    *(a3 + 3) = 0;
    *(a3 + 4) = 0;
    *(a3 + 2) = 0;
    v33 = *(a3 + 20);
    v34 = *(a3 + 42);
    v23 = *a4;
    v24 = *a5;
    v25 = *a6;
    v26 = *a7;
    *v19 = v20;
    *(v19 + 8) = v23;
    *(v19 + 16) = v24;
    *(v19 + 18) = 0;
    *(v19 + 20) = 0;
    *(v19 + 22) = 0;
    *(v19 + 24) = v25;
    *(v19 + 32) = v26;
    *(v19 + 40) = v35;
    *(v19 + 56) = v21;
    *(v19 + 72) = v22;
    *(v19 + 80) = v33;
    *(v19 + 82) = v34;
    v27 = v13[4];
    v28 = v13[5] + 1;
    v13[5] = v28;
    v29 = v27 + v28;
    v30 = v13[1];
    v31 = (v30 + 8 * (v29 / 0x2E));
    v32 = *v31 + 88 * (v29 % 0x2E);
    if (v13[2] == v30)
    {
      v32 = 0;
    }

    if (v32 == *v31)
    {
      v32 = *(v31 - 1) + 4048;
    }

    return (v32 - 88);
  }

  return result;
}

void dcsctp::OutstandingData::ExtractChunksThatCanFit(uint64_t *a1@<X0>, uint64_t **a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v7 = *a2;
  v5 = (a2 + 1);
  v6 = v7;
  v25 = vdupq_n_s64(1uLL);
  v26 = v5;
  while (v6 != v5)
  {
    v10 = v6[4];
    v11 = v10 - a1[1];
    if (v11 < 0)
    {
      v11 = a1[1] - v10;
    }

    v12 = v11 - 1;
    if (a1[11] <= v12)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v13 = *(a1[7] + 8 * ((a1[10] + v12) / 0x2E)) + 88 * ((a1[10] + v12) % 0x2E);
    v9 = *a1;
    v15 = *(v13 + 56);
    v14 = *(v13 + 64);
    v16 = (*a1 + v14 - v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    if (a3 >= v16)
    {
      *(v13 + 18) = 0;
      *(v13 + 20) = 0;
      ++*(v13 + 22);
      v29 = a3 - v16;
      if (v14 != v15)
      {
        if (((v14 - v15) & 0x8000000000000000) == 0)
        {
          operator new();
        }

LABEL_30:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v30 = *(v13 + 40);
      v31 = *(v13 + 80);
      v32 = *(v13 + 82);
      v20 = a4[1];
      if (v20 >= a4[2])
      {
        std::vector<std::pair<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>,dcsctp::Data>>::__emplace_back_slow_path<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>,dcsctp::Data>(a4);
      }

      if (!v20)
      {
        goto LABEL_29;
      }

      *v20 = v10;
      *(v20 + 8) = v30;
      *(v20 + 40) = 0;
      *(v20 + 24) = 0uLL;
      *(v20 + 40) = 0;
      *(v20 + 48) = v31;
      *(v20 + 50) = v32;
      a4[1] = v20 + 56;
      a1[12] += *(v13 + 64) - *(v13 + 56);
      v21.i64[1] = v25.i64[1];
      v21.i64[0] = v16;
      *(a1 + 13) = vaddq_s64(*(a1 + 13), v21);
      v22 = v6[1];
      v23 = v6;
      if (v22)
      {
        do
        {
          v18 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v18 = v23[2];
          v24 = *v18 == v23;
          v23 = v18;
        }

        while (!v24);
      }

      if (*a2 == v6)
      {
        *a2 = v18;
      }

      v8 = a2[1];
      a2[2] = (a2[2] - 1);
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v8, v6);
      operator delete(v6);
      v9 = *a1;
      a3 = v29;
      v5 = v26;
    }

    else
    {
      v17 = v6[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v19 = v6;
          v6 = v6[2];
        }

        while (*v6 != v19);
        v18 = v6;
      }
    }

    v6 = v18;
    if (a3 <= v9)
    {
      return;
    }
  }
}

void dcsctp::OutstandingData::ExpireOutstandingChunks(dcsctp::OutstandingData *this, Timestamp a2)
{
  v30 = 0u;
  v31 = 0u;
  *v29 = 0u;
  v2 = *(this + 7);
  if (*(this + 8) == v2 || (v4 = *(this + 10), v5 = *(v2 + 8 * (v4 / 0x2E)), v6 = v5 + 88 * (v4 % 0x2E), v7 = *(v2 + 8 * ((*(this + 11) + v4) / 0x2E)) + 88 * ((*(this + 11) + v4) % 0x2E), v6 == v7))
  {
    v13 = 0;
    v14 = 0;
    goto LABEL_14;
  }

  v9 = (v2 + 8 * (v4 / 0x2E));
  do
  {
    if (*(v6 + 18) != 2)
    {
      if (*(v6 + 19) != 2 || *(v6 + 24) > a2.var0)
      {
        break;
      }

      v10 = *(v6 + 52);
      v11 = *(v6 + 82);
      LODWORD(v37) = *(v6 + 40);
      *(&v37 + 4) = *(v6 + 44);
      HIDWORD(v37) = v10;
      v39 = 0;
      v40 = 0;
      __p = 0;
      v41 = 0;
      v42 = 1;
      v43 = v11;
      v36 = *v6;
      v35 = 0;
      v34 = 0;
      v32 = 0;
      v33 = 0x7FFFFFFFFFFFFFFFLL;
      std::deque<dcsctp::OutstandingData::Item>::emplace_back<webrtc::StrongAlias<dcsctp::OutgoingMessageIdTag,unsigned int>,dcsctp::Data,webrtc::Timestamp,dcsctp::MaxRetransmits,webrtc::Timestamp,dcsctp::LifecycleId>(v29, &v36, &v37, &v35, &v34, &v33, &v32);
      if (__p)
      {
        operator delete(__p);
      }

      v5 = *v9;
    }

    v6 += 88;
    if (v6 - v5 == 4048)
    {
      v12 = v9[1];
      ++v9;
      v5 = v12;
      v6 = v12;
    }
  }

  while (v6 != v7);
  v13 = v29[1];
  v14 = v30;
  if (v30 == v29[1])
  {
    v14 = v29[1];
    goto LABEL_14;
  }

  v17 = v29[1] + 8 * (v31 / 0x2E);
  v18 = *v17 + 88 * (v31 % 0x2E);
  v19 = *(v29[1] + (*(&v31 + 1) + v31) / 0x2EuLL) + 88 * ((*(&v31 + 1) + v31) % 0x2EuLL);
  while (v18 != v19)
  {
    dcsctp::OutstandingData::AbandonAllFor(this, v18);
    v18 += 88;
    if (v18 - *v17 == 4048)
    {
      v20 = v17[1];
      ++v17;
      v18 = v20;
    }
  }

  v23 = &v13[v31 / 0x2E];
  v24 = *v23;
  v25 = *v23 + 88 * (v31 % 0x2E);
  v26 = v13[(*(&v31 + 1) + v31) / 0x2EuLL] + 88 * ((*(&v31 + 1) + v31) % 0x2EuLL);
  if (v25 == v26)
  {
LABEL_14:
    *(&v31 + 1) = 0;
    v15 = v14 - v13;
    if (v15 >= 3)
    {
      do
      {
        operator delete(*v13);
        v14 = v30;
        v13 = (v29[1] + 8);
        v29[1] = v13;
        v15 = (v30 - v13) >> 3;
      }

      while (v15 > 2);
    }

    if (v15 == 1)
    {
      v16 = 23;
    }

    else
    {
      if (v15 != 2)
      {
        goto LABEL_26;
      }

      v16 = 46;
    }

    *&v31 = v16;
LABEL_26:
    if (v13 != v14)
    {
      do
      {
        v21 = *v13++;
        operator delete(v21);
      }

      while (v13 != v14);
      if (v30 != v29[1])
      {
        *&v30 = v30 + ((v29[1] - v30 + 7) & 0xFFFFFFFFFFFFFFF8);
      }
    }

    v22 = v29[0];
    if (v29[0])
    {

      operator delete(v22);
    }

    return;
  }

  while (v25)
  {
    v27 = *(v25 + 56);
    if (v27)
    {
      *(v25 + 64) = v27;
      operator delete(v27);
      v24 = *v23;
    }

    v25 += 88;
    if (v25 - v24 == 4048)
    {
      v28 = v23[1];
      ++v23;
      v24 = v28;
      v25 = v28;
    }

    if (v25 == v26)
    {
      v13 = v29[1];
      v14 = v30;
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t dcsctp::OutstandingData::Insert(uint64_t a1, int a2, __int16 *a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a3 + 2);
  v9 = *(a3 + 3);
  v35 = *(a1 + 8);
  v11 = vdupq_n_s64(1uLL);
  v11.i64[0] = (*a1 + v9 - v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 104) = vaddq_s64(*(a1 + 104), v11);
  v12 = *(a1 + 88);
  v13 = *a3;
  v14 = a3[1];
  v15 = *(a3 + 2);
  v16 = *(a3 + 3);
  *(a1 + 96) += v9 - v10;
  v40 = v12;
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_19:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v18 = *(a1 + 56);
  v17 = *(a1 + 64);
  v19 = 46 * ((v17 - v18) >> 3) - 1;
  v20 = *(a3 + 40);
  v21 = *(a3 + 41);
  v22 = *(a3 + 42);
  if (v17 == v18)
  {
    v19 = 0;
  }

  if (v19 == v12 + *(a1 + 80))
  {
    std::deque<dcsctp::OutstandingData::Item>::__add_back_capacity((a1 + 48));
    v18 = *(a1 + 56);
    v17 = *(a1 + 64);
  }

  if (v17 == v18 || (v23 = *(a1 + 88) + *(a1 + 80), (v24 = *(v18 + 8 * (v23 / 0x2E))) == 0))
  {
    __break(1u);
    goto LABEL_19;
  }

  v25 = v24 + 88 * (v23 % 0x2E);
  *v25 = a2;
  *(v25 + 8) = a4;
  *(v25 + 16) = a5;
  *(v25 + 18) = 0;
  *(v25 + 20) = 0;
  *(v25 + 22) = 0;
  *(v25 + 24) = a6;
  *(v25 + 32) = a7;
  *(v25 + 40) = v13;
  *(v25 + 42) = v14;
  *(v25 + 44) = v15;
  *(v25 + 52) = v16;
  *(v25 + 56) = 0;
  *(v25 + 64) = 0;
  *(v25 + 72) = 0;
  *(v25 + 80) = v20;
  *(v25 + 81) = v21;
  *(v25 + 82) = v22;
  v26 = *(a1 + 80);
  v27 = *(a1 + 88) + 1;
  *(a1 + 88) = v27;
  v28 = v26 + v27;
  v29 = *(a1 + 56);
  v30 = (v29 + 8 * (v28 / 0x2E));
  v31 = *v30 + 88 * (v28 % 0x2E);
  if (*(a1 + 64) == v29)
  {
    v31 = 0;
  }

  if (v31 == *v30)
  {
    v31 = *(v30 - 1) + 4048;
    v34 = *(*(v30 - 1) + 3984) <= a4;
    v32 = v40;
    if (!v34)
    {
      return v35 + v32 + 1;
    }
  }

  else
  {
    v32 = v40;
    if (*(v31 - 64) > a4)
    {
      return v35 + v32 + 1;
    }
  }

  dcsctp::OutstandingData::AbandonAllFor(a1, v31 - 88);
  return 0;
}

void dcsctp::OutstandingData::NackAll(dcsctp::OutstandingData *this)
{
  v1 = *(this + 7);
  if (*(this + 8) != v1)
  {
    v2 = *(this + 10);
    v3 = (v1 + 8 * (v2 / 0x2E));
    v4 = *v3 + 88 * (v2 % 0x2E);
    v5 = *(v1 + 8 * ((*(this + 11) + v2) / 0x2E)) + 88 * ((*(this + 11) + v2) % 0x2E);
    if (v4 != v5)
    {
      v6 = *(this + 1) + 1;
      do
      {
        if (*(v4 + 19) != 1)
        {
          operator new();
        }

        v4 += 88;
        if (v4 - *v3 == 4048)
        {
          v7 = v3[1];
          ++v3;
          v4 = v7;
        }

        ++v6;
      }

      while (v4 != v5);
    }
  }
}

void dcsctp::OutstandingData::CreateForwardTsn(dcsctp::OutstandingData *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 1);
  v3 = *(this + 7);
  if (*(this + 8) != v3)
  {
    v4 = *(this + 10);
    v5 = *(v3 + 8 * (v4 / 0x2E)) + 88 * (v4 % 0x2E);
    v6 = *(v3 + 8 * ((*(this + 11) + v4) / 0x2E)) + 88 * ((*(this + 11) + v4) % 0x2E);
    if (v5 != v6)
    {
      v7 = (v3 + 8 * (v4 / 0x2E));
      while (1)
      {
        v8 = v2 + 1;
        v9 = *(this + 21);
        v10 = *(this + 22);
        if (v10 != v9)
        {
          v11 = v10 - v9;
          do
          {
            v12 = v11 >> 1;
            v13 = &v9[v11 >> 1];
            v15 = *v13;
            v14 = v13 + 1;
            v11 += ~(v11 >> 1);
            if (v15 <= v2)
            {
              v9 = v14;
            }

            else
            {
              v11 = v12;
            }
          }

          while (v11);
          if (v9 != v10 && v8 >= *v9)
          {
            break;
          }
        }

        if (*(v5 + 18) != 2)
        {
          LODWORD(v8) = v2;
          goto LABEL_22;
        }

        if ((*(v5 + 82) & 1) == 0)
        {
          operator new();
        }

        v5 += 88;
        if (v5 - *v7 == 4048)
        {
          v16 = v7[1];
          ++v7;
          v5 = v16;
        }

        ++v2;
        if (v5 == v6)
        {
          goto LABEL_22;
        }
      }

      LODWORD(v8) = v2;
LABEL_22:
      LODWORD(v2) = v8;
    }
  }

  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *a2 = &unk_288293BB8;
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(0);
}

void dcsctp::OutstandingData::CreateIForwardTsn(dcsctp::OutstandingData *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 1);
  v3 = *(this + 7);
  if (*(this + 8) != v3)
  {
    v4 = *(this + 10);
    v5 = *(v3 + 8 * (v4 / 0x2E)) + 88 * (v4 % 0x2E);
    if (v5 != *(v3 + 8 * ((*(this + 11) + v4) / 0x2E)) + 88 * ((*(this + 11) + v4) % 0x2E))
    {
      v6 = *(this + 21);
      v7 = *(this + 22);
      if (v7 == v6)
      {
        goto LABEL_11;
      }

      v8 = v7 - v6;
      do
      {
        v9 = v8 >> 1;
        v10 = &v6[v8 >> 1];
        v12 = *v10;
        v11 = v10 + 1;
        v8 += ~(v8 >> 1);
        if (v12 <= v2)
        {
          v6 = v11;
        }

        else
        {
          v8 = v9;
        }
      }

      while (v8);
      if (v6 == v7 || v2 + 1 < *v6)
      {
LABEL_11:
        if (*(v5 + 18) == 2)
        {
          operator new();
        }

        v13 = *(this + 1);
      }

      else
      {
        v13 = *(this + 1);
      }

      LODWORD(v2) = v13;
    }
  }

  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *a2 = &unk_288294AB0;
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(0);
}

void std::vector<std::pair<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>,dcsctp::Data>>::__emplace_back_slow_path<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>,dcsctp::Data>(void *a1)
{
  v1 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3) + 1;
  if (v1 <= 0x492492492492492)
  {
    if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v1)
    {
      v1 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
    }

    if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
    {
      v2 = 0x492492492492492;
    }

    else
    {
      v2 = v1;
    }

    if (v2)
    {
      if (v2 <= 0x492492492492492)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void *std::__tree<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>>::__find_equal<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>>(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    v16 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = v18[4];
          if (v16 >= v20)
          {
            break;
          }

          v18 = *v19;
          v5 = v19;
          if (!*v19)
          {
            goto LABEL_25;
          }
        }

        if (v20 >= v16)
        {
          break;
        }

        v5 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
LABEL_25:
      *a3 = v19;
      return v5;
    }

    else
    {
      *a3 = v5;
      return a1 + 1;
    }
  }

  else if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v21 = a2;
      do
      {
        v13 = v21[2];
        v15 = *v13 == v21;
        v21 = v13;
      }

      while (!v15);
    }

    if (v13 == v5 || v6 < v13[4])
    {
      if (v11)
      {
        *a3 = v13;
        return v13;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }
    }

    else
    {
      v22 = *v5;
      if (*v5)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = v22[4];
            if (v6 >= v24)
            {
              break;
            }

            v22 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_41;
            }
          }

          if (v24 >= v6)
          {
            break;
          }

          v5 = v23 + 1;
          v22 = v23[1];
        }

        while (v22);
LABEL_41:
        *a3 = v23;
        return v5;
      }

      else
      {
        *a3 = v5;
        return a1 + 1;
      }
    }
  }
}

void *std::deque<dcsctp::OutstandingData::Item>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2E;
  v3 = v1 - 46;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<webrtc::BitrateProber::ProbeCluster *>::emplace_back<webrtc::BitrateProber::ProbeCluster *&>(a1, &v10);
}

char *std::vector<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>>::emplace<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>>(uint64_t a1, char *__src, uint64_t *a3)
{
  v3 = __src;
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v5 < v7)
  {
    if (__src != v5)
    {
      v8 = *a3;
      v9 = __src + 8;
      if (v5 < 8)
      {
        *(a1 + 8) = v5;
        if (v5 == v9)
        {
LABEL_26:
          *v3 = v8;
          return v3;
        }
      }

      else
      {
        *v5 = *(v5 - 1);
        *(a1 + 8) = v5 + 8;
        if (v5 == v9)
        {
          goto LABEL_26;
        }
      }

      memmove(__src + 8, __src, v5 - v9);
      goto LABEL_26;
    }

    if (v6)
    {
      *v5 = *a3;
      *(a1 + 8) = v5 + 8;
      return v3;
    }

    goto LABEL_32;
  }

  v10 = ((v5 - v6) >> 3) + 1;
  if (v10 >> 61)
  {
    goto LABEL_33;
  }

  v11 = v7 - v6;
  if (v11 >> 2 > v10)
  {
    v10 = v11 >> 2;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    v12 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 61))
    {
      operator new();
    }

    goto LABEL_34;
  }

  v13 = __src - v6;
  v14 = (__src - v6) >> 3;
  v15 = (8 * v14);
  if (!v14)
  {
    if (v13 < 1)
    {
      v21 = v13 >> 2;
      if (v6 == __src)
      {
        v21 = 1;
      }

      if (!(v21 >> 61))
      {
        operator new();
      }

LABEL_34:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v15 = (v15 - (((v13 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
  }

  if (!v15)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *v15 = *a3;
  v16 = *(a1 + 8) - __src;
  memcpy(v15 + 1, __src, v16);
  *(a1 + 8) = v3;
  v17 = &v3[-*a1];
  v18 = v15 - v17;
  memcpy(v15 - v17, *a1, v17);
  v19 = *a1;
  *a1 = v18;
  *(a1 + 8) = v15 + v16 + 8;
  *(a1 + 16) = 0;
  if (v19)
  {
    operator delete(v19);
  }

  return v15;
}

double webrtc::OveruseEstimator::Update(uint64_t a1, uint64_t a2, int a3, int a4, double a5)
{
  v10 = *(a1 + 136);
  if (v10 > 0x3B)
  {
    v11 = *(a1 + 104);
    v12 = *(a1 + 128);
    if (!*(v11 + ((v12 >> 6) & 0x3FFFFFFFFFFFFF8)))
    {
      goto LABEL_55;
    }

    v13 = v10 - 1;
    v14 = v12 + 1;
    *(a1 + 128) = v12 + 1;
    *(a1 + 136) = v13;
    if (v12 + 1 >= 0x400)
    {
      operator delete(*v11);
      v11 = (*(a1 + 104) + 8);
      *(a1 + 104) = v11;
      v14 = *(a1 + 128) - 512;
      *(a1 + 128) = v14;
    }

    v15 = *(a1 + 112);
    v16 = v15 - v11;
    if (v15 != v11)
    {
      goto LABEL_6;
    }

LABEL_13:
    v20 = *(a1 + 136);
    v21 = v20 + v14;
    v22 = a5;
    goto LABEL_14;
  }

  v11 = *(a1 + 104);
  v15 = *(a1 + 112);
  v14 = *(a1 + 128);
  v16 = v15 - v11;
  if (v15 == v11)
  {
    goto LABEL_13;
  }

LABEL_6:
  v17 = &v11[v14 >> 9];
  v18 = *v17;
  v19 = (*v17 + 8 * (v14 & 0x1FF));
  v20 = *(a1 + 136);
  v21 = v20 + v14;
  v22 = a5;
  while (v19 != (*(v11 + (((v20 + v14) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v20 + v14) & 0x1FF)))
  {
    v23 = *v19++;
    v24 = v23;
    if (v22 >= v23)
    {
      v22 = v24;
    }

    if (v19 - v18 == 4096)
    {
      v25 = v17[1];
      ++v17;
      v18 = v25;
      v19 = v25;
    }
  }

LABEL_14:
  v26 = (v16 << 6) - 1;
  if (v15 == v11)
  {
    v26 = 0;
  }

  if (v26 == v21)
  {
    v27 = v14 >= 0x200;
    v28 = v14 - 512;
    if (!v27)
    {
      v29 = *(a1 + 120);
      v30 = *(a1 + 96);
      if (v15 - v11 < (v29 - v30))
      {
        operator new();
      }

      if (v29 == v30)
      {
        v31 = 1;
      }

      else
      {
        v31 = (v29 - v30) >> 2;
      }

      if (!(v31 >> 61))
      {
        operator new();
      }

LABEL_56:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    *(a1 + 128) = v28;
    v74 = *v11;
    *(a1 + 104) = v11 + 1;
    std::__split_buffer<webrtc::BufferT<unsigned char,false> **,std::allocator<webrtc::BufferT<unsigned char,false> **>>::emplace_back<webrtc::BufferT<unsigned char,false> **&>((a1 + 96), &v74);
    v20 = *(a1 + 136);
    v11 = *(a1 + 104);
    v15 = *(a1 + 112);
  }

  if (v15 == v11 || (v32 = *(a1 + 128) + v20, (v33 = *(v11 + ((v32 >> 6) & 0x3FFFFFFFFFFFFF8))) == 0))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  *(v33 + 8 * (v32 & 0x1FF)) = a5;
  *(a1 + 136) = v20 + 1;
  v34 = a2 - a5;
  v35 = a3;
  if (*a1 < 1000)
  {
    v36 = *a1 + 1;
  }

  else
  {
    v36 = 1000;
  }

  *a1 = v36;
  v37 = *(a1 + 64) + *(a1 + 32);
  v38 = *(a1 + 72);
  v39 = v38 + *(a1 + 56);
  v40 = *(a1 + 16);
  if (a4 == 1)
  {
    if (v40 > *(a1 + 24))
    {
LABEL_35:
      v39 = v39 + v38 * 10.0;
    }
  }

  else if (a4 == 2 && v40 < *(a1 + 24))
  {
    goto LABEL_35;
  }

  v41 = *(a1 + 40);
  v42 = *(a1 + 48);
  v43 = v41 + v37 * v35;
  v44 = v39 + v42 * v35;
  v45 = v34 - *(a1 + 8) * v35;
  v46 = v45 - v40;
  v47 = *(a1 + 88);
  v48 = sqrt(v47) * 3.0;
  v73 = v45 - v40;
  if (vabdd_f64(v45, v40) >= v48)
  {
    if (a4)
    {
      goto LABEL_47;
    }

    if (v46 >= 0.0)
    {
      v46 = v48;
    }

    else
    {
      v46 = -v48;
    }
  }

  else if (a4)
  {
    goto LABEL_47;
  }

  v72 = v46;
  v49 = v22 * 30.0 / 1000.0;
  v50 = *(a1 + 64) + *(a1 + 32);
  v51 = pow(dbl_273BA01F0[v36 > 300], v49);
  v37 = v50;
  v52 = (1.0 - v51) * v72 + v51 * *(a1 + 80);
  v53 = (v52 - v72) * ((1.0 - v51) * (v52 - v72)) + v51 * v47;
  if (v53 >= 1.0)
  {
    v47 = v53;
  }

  else
  {
    v47 = 1.0;
  }

  *(a1 + 80) = v52;
  *(a1 + 88) = v47;
LABEL_47:
  v54 = v44 + v47 + v35 * v43;
  v55 = v43 / v54;
  v56 = v44 / v54;
  v57 = 1.0 - v43 / v54 * v35;
  v58 = -(v56 * v35);
  v59 = v37 * v57 - v43 / v54 * v42;
  v60 = v41 * v57 - v55 * v39;
  *(a1 + 32) = v59;
  *(a1 + 40) = v60;
  v61 = v42 * (1.0 - v56) + v37 * v58;
  v62 = v39 * (1.0 - v56) + v41 * v58;
  *(a1 + 48) = v61;
  *(a1 + 56) = v62;
  if ((v59 + v62 < 0.0 || v59 < 0.0 || v59 * v62 - v60 * v61 < 0.0) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v63, v64, v65, v66, v67, v68, v69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/remote_bitrate_estimator/overuse_estimator.cc");
  }

  v70 = *(a1 + 16);
  result = *(a1 + 8) + v55 * v73;
  *(a1 + 24) = v70;
  *(a1 + 8) = result;
  *(a1 + 16) = v70 + v56 * v73;
  return result;
}

uint64_t webrtc::OveruseFrameDetector::OveruseFrameDetector(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  *a1 = &unk_2882973D8;
  *(a1 + 8) = xmmword_273BA0220;
  *(a1 + 24) = 0x200000003;
  *(a1 + 32) = 0;
  v4 = *a2;
  *(a1 + 40) = *a2;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
  }

  v5 = *(a2 + 3);
  *(a1 + 48) = *(a2 + 1);
  *(a1 + 64) = v5;
  *(a1 + 80) = 0;
  *(a1 + 88) = a3;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0;
  *(a1 + 104) = xmmword_273B92200;
  *(a1 + 120) = 0x1E00000000;
  *(a1 + 128) = -1;
  *(a1 + 136) = 0;
  *(a1 + 144) = -1;
  *(a1 + 152) = 0;
  *(a1 + 156) = 40000;
  *(a1 + 160) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 223) = 3;
  *(a1 + 176) = 0;
  if (a1 + 200 <= "tau" && a1 + 203 > "tau")
  {
    __break(1u);
  }

  *(a1 + 202) = 117;
  *(a1 + 200) = 24948;
  *(a1 + 203) = 0;
  *(a1 + 224) = 0;
  *(a1 + 168) = &unk_2882939D0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  v11[0] = a1 + 168;
  (*(**(a1 + 48) + 16))(__p);
  if ((v10 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = __p[1];
  }

  webrtc::ParseFieldTrial(v11, 1, v6, v7);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void webrtc::OveruseFrameDetector::~OveruseFrameDetector(webrtc::OveruseFrameDetector *this)
{
  *this = &unk_2882973D8;
  *(this + 21) = &unk_288293910;
  if (*(this + 223) < 0)
  {
    operator delete(*(this + 25));
  }

  v2 = *(this + 22);
  if (v2)
  {
    *(this + 23) = v2;
    operator delete(v2);
  }

  v3 = *(this + 20);
  *(this + 20) = 0;
  if (v3)
  {
    (*(*v3 + 48))(v3);
  }

  v4 = *(this + 10);
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v5 = *(this + 5);
  if (v5)
  {
    if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v5 + 8))(v5);
    }
  }
}

{
  *this = &unk_2882973D8;
  *(this + 21) = &unk_288293910;
  if (*(this + 223) < 0)
  {
    operator delete(*(this + 25));
  }

  v2 = *(this + 22);
  if (v2)
  {
    *(this + 23) = v2;
    operator delete(v2);
  }

  v3 = *(this + 20);
  *(this + 20) = 0;
  if (v3)
  {
    (*(*v3 + 48))(v3);
  }

  v4 = *(this + 10);
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v5 = *(this + 5);
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v5 + 8))(v5);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::OveruseFrameDetector::StartCheckForOveruse(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  *(a1 + 20) = *(a3 + 12);
  *(a1 + 8) = v3;
  if (*(a1 + 240) == 1)
  {
    v4 = *(a1 + 232);
    v5 = v4 / 0x3E8uLL;
    if (v4 % 0x3E8uLL > 0x1F3)
    {
      LODWORD(v5) = v5 + 1;
    }

    if (-v4 % 0x3E8uLL <= 0x1F4)
    {
      v6 = 0;
    }

    else
    {
      v6 = -1;
    }

    if (v4 < 0)
    {
      v7 = v6 - -v4 / 0x3E8uLL;
    }

    else
    {
      v7 = v5;
    }

    *(a1 + 32) = v7;
  }

  *(a1 + 120) = 0;
  if (*(a3 + 6) >= 1)
  {
    operator new();
  }

  operator new();
}

uint64_t webrtc::OveruseFrameDetector::OnTargetFramerateUpdated(webrtc::OveruseFrameDetector *this, int a2)
{
  if (a2 >= 30)
  {
    v2 = 30;
  }

  else
  {
    v2 = a2;
  }

  *(this + 31) = v2;
  v3 = *(this + 20);
  if (v2 <= 7)
  {
    v2 = 7;
  }

  return (*(*v3 + 8))((0x3E8u / v2) * 1.35);
}

uint64_t webrtc::OveruseFrameDetector::FrameCaptured(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = (*(*v6 + 40))(v6);
    v8 = *(a2 + 8);
    if (v8)
    {
      LODWORD(v8) = (*(*v8 + 48))(v8);
    }

    if (*(a1 + 120) != v8 * v7)
    {
      goto LABEL_9;
    }

LABEL_7:
    v9 = *(a1 + 112);
    if (v9 == -1 || a3 - v9 <= 1000 * *(a1 + 16))
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  if (!*(a1 + 120))
  {
    goto LABEL_7;
  }

LABEL_9:
  v10 = *(a2 + 8);
  if (v10)
  {
    v11 = (*(*v10 + 40))(v10);
    v10 = *(a2 + 8);
    if (v10)
    {
      LODWORD(v10) = (*(*v10 + 48))(v10);
    }
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 120) = v10 * v11;
  (***(a1 + 160))(*(a1 + 160));
  *(a1 + 104) = xmmword_273B92200;
  if (*(a1 + 100) == 1)
  {
    *(a1 + 100) = 0;
  }

  (*(*a1 + 16))(a1, *(a1 + 124));
  v9 = *(a1 + 112);
LABEL_16:
  result = (*(**(a1 + 160) + 16))(*(a1 + 160), a2, a3, v9);
  *(a1 + 112) = a3;
  return result;
}

double webrtc::anonymous namespace::SendProcessingUsage2::Reset(webrtc::_anonymous_namespace_::SendProcessingUsage2 *this)
{
  *(this + 8) = -1;
  result = (*(this + 2) + *(this + 3)) / 200.0;
  *(this + 9) = result;
  return result;
}

uint64_t webrtc::anonymous namespace::SendProcessingUsage2::FrameSent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  if ((a5 & 0x100000000) == 0)
  {
    goto LABEL_28;
  }

  v11 = *(a1 + 40);
  v12 = (a1 + 48);
  if (v11 != (a1 + 48))
  {
    v13 = a4 - 2000000;
    do
    {
      if (v11[4] >= v13)
      {
        break;
      }

      v15 = v11[1];
      v16 = v11;
      if (v15)
      {
        do
        {
          v17 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v17 = v16[2];
          v18 = *v17 == v16;
          v16 = v17;
        }

        while (!v18);
      }

      if (*(a1 + 40) == v11)
      {
        *(a1 + 40) = v17;
      }

      v14 = *(a1 + 48);
      --*(a1 + 56);
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v14, v11);
      operator delete(v11);
      v11 = v17;
    }

    while (v17 != v12);
  }

  v19 = *v12;
  if (!*v12)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v20 = v19;
      v21 = *(v19 + 32);
      if (v21 <= v9)
      {
        break;
      }

      v19 = *v20;
      if (!*v20)
      {
        goto LABEL_19;
      }
    }

    if (v21 >= v9)
    {
      break;
    }

    v19 = *(v20 + 8);
    if (!v19)
    {
      goto LABEL_19;
    }
  }

  v31 = *(v20 + 40);
  if (a5 <= v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = a5 - v31;
    *(v20 + 40) = a5;
  }

  v22 = *(a1 + 64);
  if (v22 == -1)
  {
    goto LABEL_28;
  }

  if (v22 > v9)
  {
    v9 = *(a1 + 64);
  }

  v23 = (v9 - v22);
  v24 = v23 * 0.000001;
  if (v23 * 0.000001 >= 0.0)
  {
    v25 = v32 * 0.000001;
    v26 = *(a1 + 32) * 0.001;
    v27 = v24 / v26;
    if (v24 / v26 >= 0.0001)
    {
      v29 = -v27;
      v28 = -expm1(-v27) / v24;
    }

    else
    {
      v28 = (v27 * -0.5 + 1.0) / v26;
      v29 = -v27;
    }

    *(a1 + 72) = exp(v29) * *(a1 + 72) + v28 * v25;
LABEL_28:
    *(a1 + 64) = v9;
    return a5;
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/adaptation/overuse_frame_detector.cc", 281, "diff_time >= 0.0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)7,double>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)7,double>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)7,double>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)7,double> const&)::t, a5, a6, a7, a8, COERCE__INT64(v23 * 0.000001));
}

void webrtc::anonymous namespace::SendProcessingUsage2::~SendProcessingUsage2(webrtc::_anonymous_namespace_::SendProcessingUsage2 *this)
{
  *this = &unk_288297400;
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 6));
}

{
  *this = &unk_288297400;
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 6));

  JUMPOUT(0x2743DA540);
}

void *webrtc::anonymous namespace::SendProcessingUsage1::Reset(void *this)
{
  v1 = this;
  if (this[8])
  {
    v2 = this + 6;
    this = this[7];
    v3 = *this;
    v4 = *(v1[6] + 8);
    *(v3 + 8) = v4;
    *v4 = v3;
    v1[8] = 0;
    if (this != v1 + 6)
    {
      do
      {
        v5 = this[1];
        operator delete(this);
        this = v5;
      }

      while (v5 != v2);
    }
  }

  *(v1 + 9) = xmmword_273B92200;
  *(v1 + 22) = 1110704128;
  v6 = v1[13];
  v7 = *(v1 + 4);
  v8 = *(v6 + 8);
  if (v7 > v8 && v8 != -1.0)
  {
    v7 = *(v6 + 8);
  }

  *v6 = *(v1 + 2);
  *(v6 + 4) = v7;
  v10 = v1[12];
  v11 = (*(v1 + 4) * vcvts_n_f32_s32(*(v1 + 6) + *(v1 + 5), 1uLL)) / 100.0;
  v12 = *(v10 + 8);
  if (v11 > v12 && v12 != -1.0)
  {
    v11 = *(v10 + 8);
  }

  *v10 = *(v1 + 3);
  *(v10 + 4) = v11;
  return this;
}

void webrtc::anonymous namespace::SendProcessingUsage1::FrameCaptured(webrtc::_anonymous_namespace_::SendProcessingUsage1 *this, const webrtc::VideoFrame *a2, uint64_t a3, uint64_t a4)
{
  if (a4 != -1)
  {
    v4 = (a3 - a4) * 0.001;
    v5 = *(this + 13);
    v6 = 7.0;
    if ((v4 / 33.333) <= 7.0)
    {
      v6 = v4 / 33.333;
    }

    v7 = v5[1];
    if (v7 != -1.0)
    {
      v8 = *v5;
      if (v6 != 1.0)
      {
        v8 = powf(v8, v6);
      }

      v4 = ((1.0 - v8) * v4) + (v8 * v7);
    }

    v9 = v5[2];
    if (v4 <= v9 || v9 == -1.0)
    {
      v9 = v4;
    }

    v5[1] = v9;
  }

  operator new();
}

void webrtc::anonymous namespace::SendProcessingUsage1::FrameSent(void *a1, int a2, uint64_t a3)
{
  v5 = a1[7];
  if (v5 == a1 + 6)
  {
LABEL_4:
    v6 = a1[8];
    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    while (*(v5 + 24) != a2)
    {
      v5 = *(v5 + 8);
      if (v5 == a1 + 6)
      {
        goto LABEL_4;
      }
    }

    *(v5 + 40) = a3;
    v6 = a1[8];
    if (v6)
    {
LABEL_8:
      do
      {
        v9 = a1[7];
        v10 = v9[4];
        if (a3 - v10 < 1000000)
        {
          break;
        }

        v11 = v9[5];
        if (v11 != -1)
        {
          v12 = v11 - v10;
          v13 = a1[10];
          if (v13 == -1)
          {
            a1[10] = v10;
          }

          else
          {
            v14 = v12 * 0.001;
            ++a1[9];
            if ((((v10 - v13) * 0.001) / 33.333) <= 7.0)
            {
              v15 = ((v10 - v13) * 0.001) / 33.333;
            }

            else
            {
              v15 = 7.0;
            }

            v16 = a1[12];
            v17 = v16[1];
            if (v17 != -1.0)
            {
              v18 = *v16;
              if (v15 != 1.0)
              {
                v18 = powf(v18, v15);
              }

              v14 = ((1.0 - v18) * v14) + (v18 * v17);
            }

            v19 = v16[2];
            if (v14 <= v19 || v19 == -1.0)
            {
              v19 = v14;
            }

            v16[1] = v19;
            v6 = a1[8];
            a1[10] = v10;
            if (!v6)
            {
              __break(1u);
              return;
            }

            v9 = a1[7];
          }
        }

        v7 = *v9;
        v8 = v9[1];
        *(v7 + 8) = v8;
        *v8 = v7;
        a1[8] = v6 - 1;
        operator delete(v9);
        v6 = a1[8];
      }

      while (v6);
    }
  }
}

uint64_t webrtc::anonymous namespace::SendProcessingUsage1::Value(webrtc::_anonymous_namespace_::SendProcessingUsage1 *this)
{
  if (*(this + 9) < *(this + 8))
  {
    return (vcvts_n_f32_s32(*(this + 6) + *(this + 5), 1uLL) + 0.5);
  }

  v2 = *(*(this + 13) + 4);
  if (v2 < 1.0)
  {
    v2 = 1.0;
  }

  if (*(this + 22) < v2)
  {
    v2 = *(this + 22);
  }

  return (((*(*(this + 12) + 4) * 100.0) / v2) + 0.5);
}