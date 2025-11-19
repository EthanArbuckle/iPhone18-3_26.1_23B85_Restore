void tls_metric_client_finished(uint64_t a1)
{
  if (arc4random_uniform(0x64u) > 9)
  {
    return;
  }

  KeyExchangeMethod = sslCipherSuiteGetKeyExchangeMethod(*(a1 + 328));
  if (KeyExchangeMethod == 17 || KeyExchangeMethod == 15)
  {
    v4 = *(a1 + 144);
    if (v4 > 23)
    {
      if (v4 == 24)
      {
        v28 = 0;
        v5 = 0;
        v6 = "p384";
        goto LABEL_32;
      }

      if (v4 == 25)
      {
        v28 = 0;
        v5 = 0;
        v6 = "p521";
        goto LABEL_32;
      }
    }

    else
    {
      if (v4 == -1)
      {
LABEL_14:
        v28 = 0;
        v6 = 0;
        v5 = 1;
        goto LABEL_32;
      }

      if (v4 == 23)
      {
        v28 = 0;
        v5 = 0;
        v6 = "p256";
        goto LABEL_32;
      }
    }

    v28 = 0;
    v5 = 0;
    v6 = "other";
    goto LABEL_32;
  }

  if (KeyExchangeMethod != 9 || !*(a1 + 96))
  {
    goto LABEL_14;
  }

  v7 = cczp_bitlen();
  if (v7 < 0x800)
  {
    v8 = 4;
  }

  else
  {
    v8 = 5;
  }

  if (v7 >= 0x400)
  {
    v9 = v8;
  }

  else
  {
    v9 = 3;
  }

  if (v7 >= 0x300)
  {
    v10 = v9;
  }

  else
  {
    v10 = 2;
  }

  if (v7 < 0x200)
  {
    v10 = 1;
  }

  v28 = v10;
  v5 = 1;
  v6 = 0;
LABEL_32:
  v11 = *(a1 + 772);
  if (v11)
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v15 = *(a1 + 776);
    do
    {
      v17 = *v15++;
      v16 = v17;
      v18 = v17 == 64;
      if (v17 == 64)
      {
        v19 = 1;
      }

      else
      {
        v19 = v13;
      }

      if (v18)
      {
        v20 = v14;
      }

      else
      {
        v20 = 1;
      }

      if (v16 == 1)
      {
        v12 = 1;
      }

      else
      {
        v13 = v19;
        v14 = v20;
      }

      --v11;
    }

    while (v11);
  }

  else
  {
    v12 = 0;
    LOBYTE(v13) = 0;
    LOBYTE(v14) = 0;
  }

  v21 = *(a1 + 784);
  if (v21 == -1)
  {
    v23 = 0;
    v22 = 1;
  }

  else if (v21 == 1)
  {
    v22 = 0;
    v23 = "rsa";
  }

  else
  {
    v22 = 0;
    if (v21 == 64)
    {
      v23 = "ecc";
    }

    else
    {
      v23 = "other";
    }
  }

  if (*(a1 + 48))
  {
    if (*(a1 + 40))
    {
      v24 = "rsa";
    }

    else
    {
      v24 = "ecc";
    }
  }

  else
  {
    v24 = "none";
  }

  if (process_identifier___csops_once != -1)
  {
    tls_metric_client_finished_cold_1();
  }

  if (*(a1 + 16))
  {
    v25 = "dtls";
  }

  else
  {
    v25 = "tls";
  }

  v26 = tls_metric_event_new("client_finished", process_identifier_data, v25);
  if (v26)
  {
    v27 = v26;
    tls_metric_event_add_string(v26, "config", "%d", *(a1 + 1092));
    tls_metric_event_add_string(v27, "pv", "%04x", *a1);
    tls_metric_event_add_string(v27, "cs", "%04x", *(a1 + 328));
    tls_metric_event_add_string(v27, "key_type", "%s", v24);
    if (*(a1 + 824))
    {
      tls_metric_event_add_string(v27, "kxSigAlg", "%02x_%02x", *(a1 + 824), *(a1 + 828));
    }

    if (*(a1 + 816))
    {
      tls_metric_event_add_string(v27, "certSigAlg", "%02x_%02x", *(a1 + 816), *(a1 + 820));
    }

    if (v28)
    {
      tls_metric_event_add_string(v27, "dhe_bucket", "%d", v28);
    }

    if (v5)
    {
      if (v22)
      {
        goto LABEL_71;
      }
    }

    else
    {
      tls_metric_event_add_string(v27, "curve", "%s", v6);
      if (v22)
      {
LABEL_71:
        if ((v12 & 1) == 0)
        {
          goto LABEL_72;
        }

        goto LABEL_98;
      }
    }

    tls_metric_event_add_string(v27, "neg_client_cert", "%s", v23);
    if ((v12 & 1) == 0)
    {
LABEL_72:
      if ((v13 & 1) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_99;
    }

LABEL_98:
    ADClientIncValueForScalarKeyWithFormat("com.apple.coretls.%s.%s.%s.%s", *v27, v27[1], "req_client_cert_rsa", v27[2]);
    if ((v13 & 1) == 0)
    {
LABEL_73:
      if ((v14 & 1) == 0)
      {
LABEL_75:
        if (*(a1 + 931) == 1)
        {
          ADClientIncValueForScalarKeyWithFormat("com.apple.coretls.%s.%s.%s.%s", *v27, v27[1], "npn_confirmed", v27[2]);
        }

        if (*(a1 + 971) == 1)
        {
          ADClientIncValueForScalarKeyWithFormat("com.apple.coretls.%s.%s.%s.%s", *v27, v27[1], "alpn_received", v27[2]);
        }

        if (*(a1 + 1009) == 1)
        {
          ADClientIncValueForScalarKeyWithFormat("com.apple.coretls.%s.%s.%s.%s", *v27, v27[1], "ocsp_peer_enabled", v27[2]);
        }

        if (*(a1 + 1040) == 1)
        {
          ADClientIncValueForScalarKeyWithFormat("com.apple.coretls.%s.%s.%s.%s", *v27, v27[1], "ocsp_response_received", v27[2]);
        }

        if (*(a1 + 1067) == 1)
        {
          ADClientIncValueForScalarKeyWithFormat("com.apple.coretls.%s.%s.%s.%s", *v27, v27[1], "sct_peer_enabled", v27[2]);
        }

        if (*(a1 + 1072))
        {
          ADClientIncValueForScalarKeyWithFormat("com.apple.coretls.%s.%s.%s.%s", *v27, v27[1], "sct_list", v27[2]);
        }

        if (*(a1 + 707) == 1)
        {
          ADClientIncValueForScalarKeyWithFormat("com.apple.coretls.%s.%s.%s.%s", *v27, v27[1], "sessionticket_confirmed", v27[2]);
        }

        if (*(a1 + 952))
        {
          ADClientIncValueForScalarKeyWithFormat("com.apple.coretls.%s.%s.%s.%s", *v27, v27[1], "npnpeerdata", v27[2]);
        }

        if (*(a1 + 712))
        {
          ADClientIncValueForScalarKeyWithFormat("com.apple.coretls.%s.%s.%s.%s", *v27, v27[1], "sessionticket", v27[2]);
        }

        free(v27);
        return;
      }

LABEL_74:
      ADClientIncValueForScalarKeyWithFormat("com.apple.coretls.%s.%s.%s.%s", *v27, v27[1], "req_client_cert_other", v27[2]);
      goto LABEL_75;
    }

LABEL_99:
    ADClientIncValueForScalarKeyWithFormat("com.apple.coretls.%s.%s.%s.%s", *v27, v27[1], "req_client_cert_ecc", v27[2]);
    if ((v14 & 1) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }
}

void tls_metric_event_add_string(const char **a1, const char *a2, char *a3, ...)
{
  va_start(va, a3);
  v5[0] = 0;
  va_copy(&v5[1], va);
  vasprintf(v5, a3, va);
  if (v5[0])
  {
    ADClientIncValueForScalarKeyWithFormat("com.apple.coretls.%s.%s.%s=%s.%s", *a1, a1[1], a2, v5[0], a1[2]);
    free(v5[0]);
  }
}

uint64_t tls_metric_insecure_dh_param()
{
  result = arc4random_uniform(0x64u);
  if (result <= 9)
  {
    if (process_identifier___csops_once != -1)
    {
      tls_metric_client_finished_cold_1();
    }

    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 0x40000000;
    v3[2] = __tls_metric_insecure_dh_param_block_invoke;
    v3[3] = &__block_descriptor_tmp;
    v3[4] = process_identifier_data;
    v5 = 0;
    v6 = &v5;
    v7 = 0x2000000000;
    v1 = getanalytics_send_event_lazySymbolLoc_ptr;
    v8 = getanalytics_send_event_lazySymbolLoc_ptr;
    if (!getanalytics_send_event_lazySymbolLoc_ptr)
    {
      v4[0] = MEMORY[0x29EDCA5F8];
      v4[1] = 0x40000000;
      v4[2] = __getanalytics_send_event_lazySymbolLoc_block_invoke;
      v4[3] = &unk_29EEA7208;
      v4[4] = &v5;
      __getanalytics_send_event_lazySymbolLoc_block_invoke(v4);
      v1 = v6[3];
    }

    _Block_object_dispose(&v5, 8);
    if (v1)
    {
      return v1("com.apple.coretls.insecureDHParams", v3);
    }

    else
    {
      tls_metric_insecure_dh_param_cold_2();
      return __tls_metric_insecure_dh_param_block_invoke(v2);
    }
  }

  return result;
}

xpc_object_t __tls_metric_insecure_dh_param_block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "Client", *(a1 + 32));
  return v2;
}

void __process_identifier_block_invoke()
{
  getpid();
  if (csops() != -1)
  {
    goto LABEL_7;
  }

  if (*__error() != 34)
  {
    goto LABEL_7;
  }

  v0 = bswap32(0xAAAAAAAA);
  if ((v0 - 1025) < 0xFFFFFC07)
  {
    goto LABEL_7;
  }

  v1 = malloc_type_malloc((v0 + 1), 0xE5AED833uLL);
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  getpid();
  if (csops())
  {
    free(v2);
LABEL_7:
    v2 = 0;
    v3 = "no_bundle_id";
    goto LABEL_8;
  }

  v2[v0] = 0;
  if (strncmp(v2 + 8, "com.apple.", 0xAuLL))
  {
    v4 = 0;
    v3 = "redacted_bundle_id";
    while (strcmp(top_bundles[v4], v2 + 8))
    {
      if (++v4 == 249)
      {
        goto LABEL_8;
      }
    }
  }

  v3 = strdup(v2 + 8);
LABEL_8:
  process_identifier_data = v3;
  free(v2);
}

void ADClientIncValueForScalarKeyWithFormat(char *a1, ...)
{
  va_start(va, a1);
  v3[0] = 0;
  va_copy(&v3[1], va);
  vasprintf(v3, a1, va);
  v1 = v3[0];
  if (v3[0])
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v2, "operation", 5);
    xpc_dictionary_set_int64(v2, "value", 1);
    xpc_dictionary_set_string(v2, "key", v1);
    if (connection___once != -1)
    {
      ADClientIncValueForScalarKeyWithFormat_cold_1();
    }

    xpc_connection_send_notification();
    xpc_release(v2);
    free(v3[0]);
  }
}

void __connection_block_invoke()
{
  if (queue___once != -1)
  {
    __connection_block_invoke_cold_1();
  }

  connection___connection = xpc_connection_create_mach_service("com.apple.aggregated", queue___queue, 0);
  xpc_connection_set_event_handler(connection___connection, &__block_literal_global_306);
  v0 = connection___connection;

  xpc_connection_resume(v0);
}

dispatch_queue_t __queue_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  result = dispatch_queue_create("com.apple.aggregated.requestQueue", v0);
  queue___queue = result;
  return result;
}

void *__getanalytics_send_event_lazySymbolLoc_block_invoke(uint64_t a1)
{
  v6[9] = *MEMORY[0x29EDCA608];
  v6[0] = 0;
  if (!CoreAnalyticsLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x29EDCA5F8];
    v6[2] = 0x40000000;
    v6[3] = __CoreAnalyticsLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_tmp_315;
    v6[5] = v6;
    v6[7] = 0;
    v6[8] = 0;
    v6[6] = "/System/Library/PrivateFrameworks/CoreAnalytics.framework/CoreAnalytics";
    CoreAnalyticsLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = CoreAnalyticsLibraryCore_frameworkLibrary;
    if (CoreAnalyticsLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = CoreAnalyticsLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "analytics_send_event_lazy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getanalytics_send_event_lazySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __CoreAnalyticsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreAnalyticsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SSLProcessServerKeyExchange(unint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  tls_handshake_set_session_warning(a3, 0);
  v6 = *(a3 + 336);
  result = 4294967292;
  if (v6 > 0x12)
  {
    return result;
  }

  if (((1 << v6) & 0x28200) == 0)
  {
    if (((1 << v6) & 0x40800) == 0)
    {
      return result;
    }

    v16 = a2;
    if (v6 == 18)
    {
      LODWORD(result) = SSLDecodeECDHKeyParams(a3, &v16, a1);
    }

    else
    {
      if (v6 != 11)
      {
        return 4294957486;
      }

      LODWORD(result) = SSLDecodeDHKeyParams(a3, &v16, a1);
    }

    if (&a2[a1] == v16)
    {
      v9 = 0;
    }

    else
    {
      v9 = -9800;
    }

    if (result)
    {
      return result;
    }

    else
    {
      return v9;
    }
  }

  if (a1 <= 1)
  {
    __ssl_debug("sslError", "SSLDecodeSignedServerKeyExchange", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslKeyExchange.c", 717, "SSLDecodeSignedServerKeyExchange: msg len error 1\n");
    return 4294957496;
  }

  v16 = a2;
  if (v6 == 17)
  {
    v8 = 1;
LABEL_25:
    result = SSLDecodeECDHKeyParams(a3, &v16, a1);
    if (result)
    {
      return result;
    }

    goto LABEL_27;
  }

  if (v6 == 15)
  {
    v8 = 0;
    goto LABEL_25;
  }

  if (v6 != 9)
  {
    return 4294957486;
  }

  result = SSLDecodeDHKeyParams(a3, &v16, a1);
  if (result)
  {
    return result;
  }

  v8 = 1;
LABEL_27:
  v10 = &a2[a1];
  v11 = v16;
  if (*(a3 + 16))
  {
    v12 = 65279;
  }

  else
  {
    v12 = 770;
  }

  if (*a3 <= v12)
  {
    v13 = v16;
  }

  else
  {
    v13 = v16 + 2;
    if ((v16 + 2) > v10)
    {
      __ssl_debug("sslError", "SSLDecodeSignedServerKeyExchange", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslKeyExchange.c", 757, "signedServerKeyExchange: msg len error 499\n");
      return 4294957496;
    }

    *(a3 + 824) = *v16;
    *(a3 + 828) = v11[1];
  }

  if (&v13[SSLDecodeInt(v13, 2) + 2] != v10)
  {
    __ssl_debug("sslError", "SSLDecodeSignedServerKeyExchange", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslKeyExchange.c", 767, "signedServerKeyExchange: msg len error 4\n");
    return 4294957496;
  }

  v14 = v11 - a2;
  if (*(a3 + 16))
  {
    v15 = 65279;
  }

  else
  {
    v15 = 770;
  }

  if (*a3 <= v15)
  {
    return SSLVerifySignedServerKeyExchange(a3, v8, v14, a2);
  }

  else
  {
    return SSLVerifySignedServerKeyExchangeTls12(a3, *(a3 + 824), v14, a2);
  }
}

uint64_t SSLEncodeKeyExchange(size_t *a1, uint64_t a2)
{
  v4 = *(a2 + 336);
  if (v4 <= 0x13)
  {
    if (((1 << v4) & 0x68000) != 0)
    {
      v30 = 0xAAAAAAAAAAAAAAAALL;
      v31 = 0xAAAAAAAAAAAAAAAALL;
      v5 = v4 > 0x12;
      v6 = (1 << v4) & 0x68000;
      if (v5 || v6 == 0)
      {
        return 4294957486;
      }

      if (*(a2 + 136))
      {
        EcPubKeyFromBits = sslGetEcPubKeyFromBits(*(a2 + 144), (a2 + 128), &v30);
        if (EcPubKeyFromBits || (sslFree(*(a2 + 152)), EcPubKeyFromBits = sslEcdhCreateKey(*v31, (a2 + 152)), EcPubKeyFromBits))
        {
          v9 = EcPubKeyFromBits;
          sslFreePubKey(&v30);
        }

        else
        {
          SSLFreeBuffer((a2 + 504));
          v9 = sslEcdhKeyExchange(*(a2 + 152), v31, (a2 + 504));
          sslFreePubKey(&v30);
          if (!v9)
          {
            v30 = 0;
            v31 = 0;
            sslEcdhExportPub(*(a2 + 152), &v30);
            v10 = v30 + 1;
            v11 = 4;
            if (*(a2 + 16))
            {
              v11 = 12;
            }

            v9 = SSLAllocBuffer(a1, v11 + v10);
            if (!v9)
            {
              v12 = SSLEncodeHandshakeHeader(a2, a1, 16, v10);
              v13 = SSLEncodeInt(v12, v30, 1);
              memcpy(v13, v31, v30);
              SSLFreeBuffer(&v30);
            }
          }
        }
      }

      else
      {
        __ssl_debug("sslError", "SSLGenClientECDHKeyAndExchange", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslKeyExchange.c", 1399, "SSLGenClientECDHKeyAndExchange: incomplete server params\n");
        return 4294957496;
      }

      return v9;
    }

    if (v4 == 19)
    {
      v14 = *(a2 + 912) + 2;
      v15 = 4;
      if (*(a2 + 16))
      {
        v15 = 12;
      }

      v16 = SSLAllocBuffer(a1, v15 + v14);
      if (!v16)
      {
        v17 = SSLEncodeHandshakeHeader(a2, a1, 16, v14);
        v18 = SSLEncodeInt(v17, *(a2 + 912), 2);
        memcpy(v18, *(a2 + 920), *(a2 + 912));
        v19 = *(a2 + 896);
        if (!v19)
        {
          return 4294957448;
        }

        v16 = SSLAllocBuffer((a2 + 504), 2 * v19 + 4);
        if (!v16)
        {
          v20 = SSLEncodeInt(*(a2 + 512), v19, 2);
          bzero(v20, v19);
          v21 = SSLEncodeInt(v20 + v19, v19, 2);
          memcpy(v21, *(a2 + 904), v19);
          return 0;
        }
      }

      return v16;
    }

    if (((1 << v4) & 0xA00) != 0)
    {
      SSLEncodeKeyExchange_cold_1(a2, a1, &v30);
      return v30;
    }
  }

  if (v4 != 1)
  {
    __ssl_debug("sslError", "SSLEncodeKeyExchange", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslKeyExchange.c", 1823, "SSLEncodeKeyExchange: unknown method (%d)\n", v4);
    return 4294967292;
  }

  if (*(a2 + 40) != 1 || !*(a2 + 48))
  {
    __ssl_debug("sslError", "SSLEncodeRSAKeyExchange", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslKeyExchange.c", 954, "SSLEncodeRSAKeyExchange: no RSA peer pub key\n");
    return 4294957487;
  }

  v16 = SSLAllocBuffer((a2 + 504), 0x30uLL);
  if (v16)
  {
    return v16;
  }

  v29 = 0xAAAAAAAAAAAAAAAALL;
  SSLEncodeInt(*(a2 + 512), *(a2 + 4), 2);
  v22 = (*(a2 + 512) + 2);
  v30 = 46;
  v31 = v22;
  v16 = sslRand(&v30);
  if (v16)
  {
    return v16;
  }

  v23 = sslPubKeyLengthInBytes(a2 + 40);
  if (!v23)
  {
    __ssl_debug("sslError", "SSLEncodeRSAKeyExchange", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslKeyExchange.c", 965, "SSLEncodeRSAKeyExchange: peer key modulus is 0\n");
  }

  v24 = *a2;
  v25 = *a2 <= 0x300u ? v23 : v23 + 2;
  v26 = *(a2 + 16) ? 12 : 4;
  v16 = SSLAllocBuffer(a1, v26 + v25);
  if (v16)
  {
    return v16;
  }

  v28 = (a1[1] + v26 + 2 * (v24 > 0x300));
  SSLEncodeHandshakeHeader(a2, a1, 16, v25);
  if (v24 >= 0x301)
  {
    SSLEncodeInt(a1[1] + v26, v23, 2);
  }

  v9 = sslRsaEncrypt(a2 + 40, *(a2 + 512), 0x30uLL, v28, v23, &v29);
  if (v9)
  {
    __ssl_debug("sslError", "SSLEncodeRSAKeyExchange", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslKeyExchange.c", 1004, "SSLEncodeRSAKeyExchange: error %d\n", v9);
  }

  return v9;
}

uint64_t SSLGenServerDHParamsAndKey(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (!v2)
  {
    v2 = ccdh_gp_rfc5114_MODP_2048_256();
  }

  return sslDhCreateKey(v2, (a1 + 104));
}

uint64_t SSLEncodedDHKeyParamsLen(uint64_t a1)
{
  v2 = **(a1 + 104);
  MEMORY[0x29C28DA10](v2);
  MEMORY[0x29C28DA20](v2);
  v3 = ccn_write_uint_size();
  ccdh_gp_g();
  v4 = ccn_write_uint_size();
  v5 = *(a1 + 104);
  ccdh_ctx_public();
  return v3 + v4 + ccdh_export_pub_size() + 6;
}

uint64_t SSLEncodeDHKeyParams(uint64_t a1, uint64_t a2)
{
  v4 = **(a1 + 104);
  MEMORY[0x29C28DA10](v4);
  MEMORY[0x29C28DA20](v4);
  v5 = ccn_write_uint_size();
  ccdh_gp_g();
  v6 = ccn_write_uint_size();
  v7 = *(a1 + 104);
  ccdh_ctx_public();
  v8 = ccdh_export_pub_size();
  v9 = SSLEncodeInt(a2, v5, 2);
  MEMORY[0x29C28DA20](v4);
  ccn_write_uint();
  v10 = SSLEncodeInt(v9 + v5, v6, 2);
  ccdh_gp_g();
  ccn_write_uint();
  SSLEncodeInt(v10 + v6, v8, 2);
  v11 = *(a1 + 104);
  ccdh_ctx_public();

  return ccdh_export_pub();
}

uint64_t SSLDecodeDHKeyParams(uint64_t a1, unsigned __int8 **a2, uint64_t a3)
{
  v5 = &(*a2)[a3];
  SSLFreeBuffer((a1 + 80));
  if ((*a2 + 2) > v5)
  {
    return 4294957496;
  }

  v6 = SSLDecodeInt(*a2, 2);
  v7 = (*a2 + 2);
  *a2 = v7;
  v8 = (v7 + v6);
  if (v8 > v5)
  {
    return 4294957496;
  }

  v16[0] = v6;
  v16[1] = v7;
  *a2 = v8;
  if ((v8 + 2) > v5)
  {
    return 4294957496;
  }

  v9 = SSLDecodeInt(v8, 2);
  v10 = (*a2 + 2);
  *a2 = v10;
  v11 = (v10 + v9);
  if (v11 > v5)
  {
    return 4294957496;
  }

  v15[0] = v9;
  v15[1] = v10;
  *a2 = v11;
  sslFree(*(a1 + 96));
  result = sslEncodeDhParams(a1, (a1 + 96), v16, v15);
  if (!result)
  {
    if ((*a2 + 2) > v5)
    {
      return 4294957496;
    }

    v13 = SSLDecodeInt(*a2, 2);
    *a2 += 2;
    v14 = v13;
    result = SSLAllocBuffer((a1 + 80), v13);
    if (!result)
    {
      memmove(*(a1 + 88), *a2, v14);
      result = 0;
      *a2 += v14;
    }
  }

  return result;
}

uint64_t SSLDecodeECDHKeyParams(uint64_t a1, const void **a2, uint64_t a3)
{
  v5 = *a2 + a3;
  SSLFreeBuffer((a1 + 128));
  v6 = *a2;
  v7 = *a2 + 1;
  if (v7 > v5)
  {
    return 4294957496;
  }

  v9 = *v6;
  v8 = v6 + 3;
  *a2 = v7;
  if (v9 != 3 || v8 > v5)
  {
    return 4294957496;
  }

  v11 = SSLDecodeInt(v7, 2);
  *(a1 + 144) = v11;
  v12 = *a2;
  v13 = *a2 + 2;
  *a2 = v13;
  v14 = v12 + 3;
  if ((v11 - 26) < 0xFFFFFFFD || v14 > v5)
  {
    return 4294957496;
  }

  v16 = SSLDecodeInt(v13, 1);
  v17 = *a2 + 1;
  *a2 = v17;
  if (v17 + v16 > v5)
  {
    return 4294957496;
  }

  v19 = v16;
  result = SSLAllocBuffer((a1 + 128), v16);
  if (!result)
  {
    memmove(*(a1 + 136), *a2, v19);
    result = 0;
    *a2 = *a2 + v19;
  }

  return result;
}

uint64_t SSLVerifySignedServerKeyExchangeTls12(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x29EDCA608];
  v21[0] = a3;
  v21[1] = a4;
  v19[0] = 0xAAAAAAAAAAAAAAAALL;
  v19[1] = 0;
  v18[0] = 32;
  v18[1] = a1 + 436;
  v17[1] = a1 + 468;
  v16[1] = 0;
  v17[0] = 32;
  v5 = a2 - 2;
  if (a2 - 2) < 5 && ((0x1Du >> v5))
  {
    v7 = *(&off_29EEA7248 + v5);
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v22[2] = v8;
    v22[3] = v8;
    v22[0] = v8;
    v22[1] = v8;
    v16[0] = 0xAAAAAAAAAAAAAAAALL;
    v20[0] = *v7;
    v20[1] = v22;
    ready = ReadyHash(v7, v19);
    if (ready || (v10 = *(v7 + 3), ready = v10(v19, v18), ready) || (ready = v10(v19, v17), ready) || (ready = v10(v19, v21), ready) || (ready = (*(v7 + 4))(v19, v20), ready))
    {
      v11 = ready;
    }

    else
    {
      v14 = a1 + 40;
      if (HIDWORD(a2) == 1)
      {
        v15 = sslRsaVerify(v14, a2);
      }

      else
      {
        v15 = sslRawVerify(v14);
      }

      v11 = v15;
      if (v15)
      {
        __ssl_debug("sslError", "SSLVerifySignedServerKeyExchangeTls12", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslKeyExchange.c", 691, "SSLDecodeSignedServerKeyExchangeTls12: sslRawVerify returned %d\n", v15);
      }
    }

    SSLFreeBuffer(v16);
    SSLFreeBuffer(v19);
  }

  else
  {
    __ssl_debug("sslError", "SSLVerifySignedServerKeyExchangeTls12", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslKeyExchange.c", 654, "SSLVerifySignedServerKeyExchangeTls12: unsupported hash %d\n", a2);
    v11 = 4294957496;
  }

  v12 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t SSLVerifySignedServerKeyExchange(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x29EDCA608];
  v18[0] = a3;
  v18[1] = a4;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v21 = -1431655766;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19 = v5;
  v20 = v5;
  v12[0] = 0xAAAAAAAAAAAAAAAALL;
  v12[1] = 0;
  v15[0] = 0xAAAAAAAAAAAAAAAALL;
  v15[1] = 0;
  v14[0] = 32;
  v14[1] = a1 + 436;
  v13[0] = 32;
  v13[1] = a1 + 468;
  if (a2)
  {
    v16 = 16;
    v17 = &v19;
    ready = ReadyHash(&SSLHashMD5, v15);
    if (ready)
    {
      goto LABEL_13;
    }

    v7 = off_2A1EFF3E8[0];
    ready = (off_2A1EFF3E8[0])(v15, v14);
    if (ready)
    {
      goto LABEL_13;
    }

    ready = v7(v15, v13);
    if (ready)
    {
      goto LABEL_13;
    }

    ready = v7(v15, v18);
    if (ready)
    {
      goto LABEL_13;
    }

    ready = (off_2A1EFF3F0[0])(v15, &v16);
    if (ready)
    {
      goto LABEL_13;
    }
  }

  v16 = 20;
  v17 = &v20;
  ready = SSLFreeBuffer(v15);
  if (ready || (ready = ReadyHash(&SSLHashSHA1, v15), ready) || (v8 = off_2A1EFF3B0[0], ready = (off_2A1EFF3B0[0])(v15, v14), ready) || (ready = v8(v15, v13), ready) || (ready = v8(v15, v18), ready) || (ready = (off_2A1EFF3B8[0])(v15, &v16), ready))
  {
LABEL_13:
    v9 = ready;
  }

  else
  {
    v9 = sslRawVerify(a1 + 40);
    if (v9)
    {
      __ssl_debug("sslError", "SSLVerifySignedServerKeyExchange", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslKeyExchange.c", 609, "SSLDecodeSignedServerKeyExchange: sslRawVerify returned %d\n", v9);
    }
  }

  SSLFreeBuffer(v12);
  SSLFreeBuffer(v15);
  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t SSLProcessAlert(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1)
  {
    v13 = SSLFatalSessionAlert(47, a3);
    if (v13)
    {
      return v13;
    }

    else
    {
      return 4294957496;
    }
  }

  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = a1 - 2;
  while (1)
  {
    v7 = v6;
    v8 = *a2;
    v9 = a2[1];
    if (v8 == 2)
    {
      __ssl_debug("sslError", "SSLProcessAlert", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslAlertMessage.c", 112, "***Fatal alert %d received\n", a2[1]);
    }

    v10 = *(a3 + 17);
    if ((v10 & 1) == 0 && *(a3 + 428) == 2 && ((v9 - 42) < 5 || v9 == 48))
    {
      *(a3 + 428) = 3;
    }

    if (v9 <= 69)
    {
      break;
    }

    if (v9 > 89)
    {
      switch(v9)
      {
        case 'Z':
          v12 = 4294957457;
          break;
        case 'd':
          v12 = 4294957456;
          break;
        case 'n':
          v12 = 4294957494;
LABEL_45:
          SSLDeleteSessionData(a3);
          return v12;
        default:
LABEL_39:
          if (v8 == 2)
          {
            v12 = 4294957494;
          }

          else
          {
            v12 = 0;
          }

          break;
      }
    }

    else
    {
      switch(v9)
      {
        case 'F':
          v12 = 4294957460;
          break;
        case 'G':
          v12 = 4294957459;
          break;
        case 'P':
          v12 = 4294957458;
          break;
        default:
          goto LABEL_39;
      }
    }

LABEL_42:
    if (v8 != 2)
    {
      v6 = v7 - 2;
      a2 += 2;
      v5 = v12;
      if (v7)
      {
        continue;
      }
    }

    if (v8 != 2)
    {
      return v12;
    }

    goto LABEL_45;
  }

  v11 = v9 - 20;
  v12 = 4294957471;
  switch(v11)
  {
    case 0:
      v12 = 4294957476;
      goto LABEL_45;
    case 1:
      v12 = 4294957475;
      goto LABEL_45;
    case 2:
      v12 = 4294957474;
      goto LABEL_45;
    case 10:
      v12 = 4294957473;
      goto LABEL_45;
    case 20:
      v12 = 4294957472;
      goto LABEL_45;
    case 21:
      v12 = v5;
      if (*(a3 + 380) != 10)
      {
        goto LABEL_42;
      }

      if (!v10)
      {
        goto LABEL_42;
      }

      v12 = SSLAdvanceHandshake(11, a3);
      if (!v12)
      {
        goto LABEL_42;
      }

      break;
    case 22:
      goto LABEL_42;
    case 23:
      v12 = 4294957470;
      goto LABEL_42;
    case 24:
      v12 = 4294957469;
      goto LABEL_42;
    case 25:
      v12 = 4294957468;
      goto LABEL_42;
    case 26:
      v12 = 4294957467;
      goto LABEL_42;
    case 27:
      v12 = 4294957466;
      goto LABEL_45;
    case 28:
      v12 = 4294957465;
      goto LABEL_42;
    case 29:
      v12 = 4294957464;
      goto LABEL_42;
    case 30:
      v12 = 4294957463;
      goto LABEL_42;
    case 31:
      v12 = 4294957462;
      goto LABEL_42;
    case 40:
      v12 = 4294957461;
      goto LABEL_42;
    default:
      goto LABEL_39;
  }

  return v12;
}

uint64_t SSLFatalSessionAlert(int a1, uint64_t a2)
{
  v3 = a1;
  *(a2 + 380) = 4;
  if (*a2 > 0x300u)
  {
    goto LABEL_5;
  }

  v4 = (a1 - 48);
  if (v4 <= 0x34)
  {
    if (((1 << (a1 - 48)) & 0x10040000C0000ELL) != 0)
    {
LABEL_4:
      v3 = 40;
      goto LABEL_5;
    }

    if (a1 == 48)
    {
      v3 = 43;
      goto LABEL_5;
    }

    if (v4 == 32)
    {
      v3 = 0;
      goto LABEL_5;
    }
  }

  if (a1 == 22)
  {
    goto LABEL_4;
  }

LABEL_5:
  v5 = SSLDeleteSessionData(a2);
  LODWORD(result) = SSLSendAlert(2, v3, a2);
  *(a2 + 704) = 1;
  if (v5)
  {
    return v5;
  }

  else
  {
    return result;
  }
}

uint64_t SSLProcessSSL2Message(unint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1 - 3;
  if (a1 < 3)
  {
    return 4294967246;
  }

  v7 = SSLDecodeInt(a2, 2);
  if ((v7 & 0x8000) == 0)
  {
    return 4294967246;
  }

  if (a1 != (v7 & 0x7FFF) + 2 || a2[2] != 1)
  {
    return 4294967246;
  }

  v9 = SSLProcessSSL2ClientHello(v3, a2 + 3, a3);
  if (v9)
  {
    return v9;
  }

  v13[0] = a1 - 2;
  v13[1] = (a2 + 2);
  v10 = SSLUpdateHandshakeMacs(v13, a3);
  if (!v10)
  {
    return SSLAdvanceHandshake(1, a3);
  }

  v11 = v10;
  SSLFatalSessionAlert(80, a3);
  return v11;
}

uint64_t DTLSRetransmit(uint64_t a1)
{
  if (*(a1 + 672) != 1 || (result = (*(*(a1 + 1112) + 80))(*(a1 + 1104)), !result))
  {

    return SSLSendFlight(a1);
  }

  return result;
}

uint64_t SSLResumeServerSide(uint64_t a1)
{
  v2 = SSLPrepareAndQueueMessage(SSLEncodeServerHello, 22, a1);
  if (v2)
  {
    return v2;
  }

  v4 = SSLInitPendingCiphers(a1);
  if (v4)
  {
    v3 = v4;
    SSLFatalSessionAlert(80, a1);
    return v3;
  }

  v2 = SSLPrepareAndQueueMessage(SSLEncodeChangeCipherSpec, 20, a1);
  if (v2)
  {
    return v2;
  }

  v3 = SSLPrepareAndQueueMessage(SSLEncodeFinishedMessage, 22, a1);
  if (!v3)
  {
    *(a1 + 380) = 14;
  }

  return v3;
}

uint64_t sslGetMaxProtVersion(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 12);
  if (!v2)
  {
    return 4294967246;
  }

  result = 0;
  *a2 = v2;
  return result;
}

uint64_t SSLEncodeNPNEncryptedExtensionMessage(size_t *a1, uint64_t a2)
{
  if (!*(a2 + 944))
  {
    return 4294957448;
  }

  v4 = *(a2 + 936);
  v5 = (v4 + 2) & 0x1F;
  v6 = (v4 - v5 + 34);
  if (*(a2 + 16))
  {
    v7 = 12;
  }

  else
  {
    v7 = 4;
  }

  result = SSLAllocBuffer(a1, (v6 + v7));
  if (!result)
  {
    v9 = (32 - v5);
    v10 = SSLEncodeHandshakeHeader(a2, a1, 67, v6);
    v11 = SSLEncodeInt(v10, *(a2 + 936), 1);
    memcpy(v11, *(a2 + 944), *(a2 + 936));
    v12 = SSLEncodeInt(v11 + *(a2 + 936), v9, 1);
    bzero(v12, v9);
    result = 0;
    *(a2 + 931) = 1;
  }

  return result;
}

uint64_t SSLProcessEncryptedExtension(size_t size, const void *a2, uint64_t a3)
{
  v3 = *(a3 + 930);
  if (v3 != 1)
  {
    return 4294957496;
  }

  *(a3 + 932) = v3;
  result = SSLAllocBuffer((a3 + 952), size);
  if (!result)
  {
    memcpy(*(a3 + 960), a2, *(a3 + 952));
    return 0;
  }

  return result;
}

uint64_t SSLProcessServerHelloDone(uint64_t result)
{
  if (result)
  {
    __ssl_debug("sslError", "SSLProcessServerHelloDone", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslHandshakeFinish.c", 269, "SSLProcessServerHelloDone: nonzero msg len\n");
    return 4294957496;
  }

  return result;
}

uint64_t tls1GenerateMasterSecret(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v12[0] = 0xAAAAAAAAAAAAAAAALL;
  v11[0] = 0xAAAAAAAAAAAAAAAALL;
  v14 = -1431655766;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13[0] = v2;
  v13[1] = v2;
  if (*(a1 + 768) == 1 && *(a1 + 769) == 1)
  {
    v12[1] = 0;
    v11[1] = 0;
    v3 = CloneHashState(&SSLHashSHA1, a1 + 568, v12);
    if (!v3)
    {
      v4 = CloneHashState(&SSLHashMD5, a1 + 584, v11);
      if (v4)
      {
        v3 = v4;
        v5 = v12;
      }

      else
      {
        *&v15[0] = 16;
        *(&v15[0] + 1) = v13;
        v10 = (off_2A1EFF3F0[0])(v11, v15);
        if (!v10)
        {
          *&v15[0] = 20;
          *(&v15[0] + 1) += 16;
          v10 = (off_2A1EFF3B8[0])(v12, v15);
          if (!v10)
          {
            v10 = tls_handshake_internal_prf(a1, *(a1 + 512), *(a1 + 504), "extended master secret", 0x16uLL, v13, 0x24uLL, (a1 + 520), 0x30uLL);
          }
        }

        v3 = v10;
        SSLFreeBuffer(v12);
        v5 = v11;
      }

      SSLFreeBuffer(v5);
    }
  }

  else
  {
    v6 = *(a1 + 452);
    v15[0] = *(a1 + 436);
    v15[1] = v6;
    v7 = *(a1 + 484);
    v15[2] = *(a1 + 468);
    v15[3] = v7;
    v3 = tls_handshake_internal_prf(a1, *(a1 + 512), *(a1 + 504), "master secret", 0xDuLL, v15, 0x40uLL, (a1 + 520), 0x30uLL);
  }

  v8 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t tls1ComputeFinishedMac(uint64_t a1, size_t a2, char *a3, int a4)
{
  v21 = *MEMORY[0x29EDCA608];
  v20 = -1431655766;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19[0] = v8;
  v19[1] = v8;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v16[0] = 0xAAAAAAAAAAAAAAAALL;
  v16[1] = 0;
  v15[0] = 0xAAAAAAAAAAAAAAAALL;
  v15[1] = 0;
  v9 = CloneHashState(&SSLHashSHA1, a1 + 568, v16);
  if (!v9)
  {
    v9 = CloneHashState(&SSLHashMD5, a1 + 584, v15);
    if (!v9)
    {
      if (a4)
      {
        v13 = "server finished";
      }

      else
      {
        v13 = "client finished";
      }

      v17 = 16;
      v18 = v19;
      v14 = (off_2A1EFF3F0[0])(v15, &v17);
      if (v14 || (v17 = 20, ++v18, v14 = (off_2A1EFF3B8[0])(v16, &v17), v14))
      {
        v10 = v14;
        goto LABEL_4;
      }

      v9 = tls_handshake_internal_prf(a1, a1 + 520, 0x30uLL, v13, 0xFuLL, v19, 0x24uLL, a3, a2);
    }
  }

  v10 = v9;
  SSLFreeBuffer(v16);
  SSLFreeBuffer(v15);
LABEL_4:
  v11 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t tls1ComputeCertVfyMac(uint64_t a1, uint64_t *a2)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v10[0] = 0xAAAAAAAAAAAAAAAALL;
  v10[1] = 0;
  v9[0] = 0xAAAAAAAAAAAAAAAALL;
  v9[1] = 0;
  v4 = CloneHashState(&SSLHashSHA1, a1 + 568, v10);
  if (!v4)
  {
    v4 = CloneHashState(&SSLHashMD5, a1 + 584, v9);
    if (!v4)
    {
      v5 = a2[1];
      if (*(a1 + 784) == 64)
      {
        v6 = 20;
LABEL_7:
        *a2 = v6;
        v11 = 20;
        v12 = v5;
        v4 = (off_2A1EFF3B8[0])(v10, &v11);
        goto LABEL_8;
      }

      v11 = 16;
      v12 = v5;
      v4 = (off_2A1EFF3F0[0])(v9, &v11);
      if (!v4)
      {
        v5 = a2[1] + 16;
        v6 = 36;
        goto LABEL_7;
      }
    }
  }

LABEL_8:
  v7 = v4;
  SSLFreeBuffer(v10);
  SSLFreeBuffer(v9);
  return v7;
}

uint64_t SSLEncodeServerHelloRequest(size_t *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = 12;
  }

  else
  {
    v4 = 4;
  }

  v5 = SSLAllocBuffer(a1, v4);
  if (!v5)
  {
    SSLEncodeHandshakeHeader(a2, a1, 0, 0);
  }

  return v5;
}

uint64_t SSLEncodeServerHelloVerifyRequest(size_t *a1, unsigned int *a2)
{
  v4 = *(a2 + 23) + 3;
  v5 = 4;
  if (*(a2 + 16))
  {
    v5 = 12;
  }

  result = SSLAllocBuffer(a1, v5 + v4);
  if (!result)
  {
    v7 = SSLEncodeHandshakeHeader(a2, a1, 3, v4);
    v8 = SSLEncodeInt(v7, *a2, 2);
    *v8 = *(a2 + 23);
    v9 = v8 + 1;
    memcpy(v8 + 1, *(a2 + 24), *(a2 + 23));
    if (&v9[*(a2 + 23)] == (a1[1] + *a1))
    {
      return 0;
    }

    else
    {
      return 4294957486;
    }
  }

  return result;
}

uint64_t SSLProcessServerHelloVerifyRequest(unint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 <= 2)
  {
    __ssl_debug("sslError", "SSLProcessServerHelloVerifyRequest", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslHandshakeHello.c", 344, "SSLProcessServerHelloVerifyRequest: msg len error\n");
    return 4294957496;
  }

  if (SSLDecodeInt(a2, 2) != 65279)
  {
    __ssl_debug("sslError", "SSLProcessServerHelloVerifyRequest", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslHandshakeHello.c", 354, "SSLProcessServerHelloVerifyRequest: protocol version error\n");
    return 4294957496;
  }

  v6 = a2[2];
  if (a1 < v6 + 3)
  {
    __ssl_debug("sslError", "SSLProcessServerHelloVerifyRequest", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslHandshakeHello.c", 362, "SSLProcessServerHelloVerifyRequest: msg len error 2\n");
    return 4294957496;
  }

  result = SSLAllocBuffer((a3 + 184), a2[2]);
  if (!result)
  {
    memcpy(*(a3 + 192), a2 + 3, v6);
    return 0;
  }

  return result;
}

uint64_t SSLProcessServerHello(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 <= 0x25)
  {
    __ssl_debug("sslError", "SSLProcessServerHello", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslHandshakeHello.c", 596, "SSLProcessServerHello: msg len error\n");
    return 4294957496;
  }

  v7 = SSLDecodeInt(a2, 2);
  v8 = v7;
  v9 = *(a3 + 8);
  if (*(a3 + 16) != 1)
  {
    if (v9 > v7)
    {
      return 4294957495;
    }

    v10 = *(a3 + 12);
    if (v10 >= v7)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v9 < v7)
  {
    return 4294957495;
  }

  v10 = *(a3 + 12);
  if (v10 > v7)
  {
LABEL_10:
    v8 = v10;
    if (*(a3 + 17) == 1)
    {
      goto LABEL_11;
    }

    return 4294957495;
  }

LABEL_11:
  *a3 = v8;
  result = 4294957495;
  if (v8 <= 770)
  {
    if ((v8 - 769) >= 2)
    {
      if (v8 != 768)
      {
        return result;
      }

      v11 = Ssl3Callouts;
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v8 != 771)
  {
    if (v8 != 65279)
    {
      return result;
    }

LABEL_18:
    v11 = Tls1Callouts;
    goto LABEL_20;
  }

  v11 = Tls12Callouts;
LABEL_20:
  *(a3 + 24) = v11;
  result = (*(*(a3 + 1112) + 96))(*(a3 + 1104));
  if (!result)
  {
    v12 = *(a2 + 18);
    *(a3 + 468) = *(a2 + 2);
    *(a3 + 484) = v12;
    v13 = *(a2 + 34);
    v14 = v13 + 38;
    if (a1 < v13 + 38)
    {
      __ssl_debug("sslError", "SSLProcessServerHello", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslHandshakeHello.c", 637, "SSLProcessServerHello: msg len error 2\n");
      return 4294957496;
    }

    v15 = (a2 + 35);
    SSLFreeBuffer((a3 + 304));
    if (v13 && *(a3 + 256) && !SSLAllocBuffer((a3 + 304), v13))
    {
      memcpy(*(a3 + 312), v15, v13);
    }

    v16 = &v15[v13];
    *(a3 + 328) = SSLDecodeInt(v16, 2);
    result = ValidateSelectedCiphersuite(a3);
    if (!result)
    {
      if (v16[2])
      {
        return 4294967292;
      }

      if (a1 == v14 || (result = SSLProcessServerHelloExtensions(a3, (a1 - v14), v16 + 3), !result))
      {
        v17 = *(a3 + 849);
        if (*(a3 + 848))
        {
          if (*(a3 + 849))
          {
            result = 0;
          }

          else
          {
            result = 4294957495;
          }

          if (*(a3 + 849))
          {
            goto LABEL_40;
          }
        }

        else
        {
          if (*(a3 + 849))
          {
LABEL_40:
            result = 0;
            *(a3 + 848) = 1;
            return result;
          }

          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t SSLProcessServerHelloExtensions(uint64_t a1, unsigned int a2, unsigned __int8 *a3)
{
  if (a2 <= 1)
  {
    __ssl_debug("sslError", "SSLProcessServerHelloExtensions", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslHandshakeHello.c", 494, "SSLProcessHelloExtensions: need a least 2 bytes\n");
    return 4294957496;
  }

  v4 = a2;
  *(a1 + 1009) = 0;
  *(a1 + 1067) = 0;
  *(a1 + 849) = 0;
  tls_free_buffer_list(*(a1 + 1072));
  *(a1 + 769) = 0;
  v6 = SSLDecodeInt(a3, 2);
  if (v6 > (v4 - 2))
  {
    __ssl_debug("sslError", "SSLProcessServerHelloExtensions", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslHandshakeHello.c", 512, "SSLProcessHelloExtensions: ext len error 1\n");
    return 4294957496;
  }

  v8 = v6;
  if (v6 < (v4 - 2))
  {
    __ssl_debug("sslError", "SSLProcessServerHelloExtensions", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslHandshakeHello.c", 517, "Warning: SSLProcessServerHelloExtensions: Too many bytes\n");
  }

  if (!v8)
  {
    return 0;
  }

  v9 = 0;
  v10 = a3 + 2;
  v27 = a1 + 849;
  while (1)
  {
    if (v8 <= 3u)
    {
      __ssl_debug("sslError", "SSLProcessServerHelloExtensions", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslHandshakeHello.c", 525, "SSLProcessHelloExtensions: ext len error\n", v27);
      return 4294957496;
    }

    v11 = SSLDecodeInt(v10, 2);
    v12 = SSLDecodeInt(v10 + 2, 2);
    v13 = v12;
    if (v12 + 4 > v8)
    {
      __ssl_debug("sslError", "SSLProcessServerHelloExtensions", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslHandshakeHello.c", 533, "SSLProcessHelloExtension: ext len error 2\n", v27);
      return 4294957496;
    }

    v14 = v12;
    v15 = v10 + 4;
    if (v11 <= 0x16u)
    {
      break;
    }

    if (v11 > 0x3373u)
    {
      if (v11 == 13172)
      {
        if (*(a1 + 930) != 1)
        {
          return 4294957496;
        }

        *(a1 + 932) = 1;
        if (*(a1 + 960))
        {
          return 4294957496;
        }

        v21 = (a1 + 952);
        v22 = v10 + 4;
        v23 = v13;
LABEL_48:
        result = SSLCopyBufferFromData(v22, v23, v21);
        if (result)
        {
          return result;
        }

        goto LABEL_49;
      }

      if (v11 == 65281)
      {
        if (v9)
        {
          return 4294957496;
        }

        v18 = *(a1 + 856);
        v19 = *(a1 + 872);
        if (v19 + v18 + 1 == v12 && v19 + v18 == *v15)
        {
          v20 = (v10 + 5);
          if (!memcmp(v20, *(a1 + 864), *(a1 + 856)))
          {
            v26 = memcmp(&v20[v18], *(a1 + 880), v19);
            v9 = 1;
            v16 = (a1 + 849);
            if (v26)
            {
              goto LABEL_49;
            }

            goto LABEL_39;
          }
        }

        v9 = 1;
      }
    }

    else
    {
      if (v11 == 23)
      {
        v16 = (a1 + 769);
LABEL_39:
        *v16 = 1;
        goto LABEL_49;
      }

      if (v11 == 35)
      {
        result = 4294957496;
        if (v14)
        {
          return result;
        }

        v16 = (a1 + 707);
        if ((*(a1 + 706) & 1) == 0)
        {
          return result;
        }

        goto LABEL_39;
      }
    }

LABEL_49:
    v8 -= v13 + 4;
    v10 = &v15[v13];
    if (!v8)
    {
      return 0;
    }
  }

  if (v11 == 5)
  {
    result = 4294957496;
    if (v14)
    {
      return result;
    }

    v16 = (a1 + 1009);
    if ((*(a1 + 1008) & 1) == 0)
    {
      return result;
    }

    goto LABEL_39;
  }

  if (v11 == 16)
  {
    v24 = v12;
    result = 4294957496;
    if (v24 < 4)
    {
      return result;
    }

    if ((*(a1 + 969) & 1) == 0)
    {
      return result;
    }

    *(a1 + 971) = 1;
    if (*(a1 + 1000))
    {
      return result;
    }

    v25 = SSLDecodeSize((v10 + 4), 2);
    if (v25 != v13 - 2)
    {
      return 4294957496;
    }

    v23 = v25;
    v22 = v10 + 6;
    v21 = (a1 + 992);
    goto LABEL_48;
  }

  if (v11 != 18)
  {
    goto LABEL_49;
  }

  if (*(a1 + 1066) != 1)
  {
    return 4294957496;
  }

  if (v12 <= 1u)
  {
    __ssl_debug("sslError", "SSLProcessServerHelloExtension_SCT", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslHandshakeHello.c", 457, "SSLProcessClientHelloExtension_SCT: length decode error 1\n", v27);
    return 4294957496;
  }

  v17 = SSLDecodeSize((v10 + 4), 2);
  if (v17 == (v14 - 2))
  {
    result = SSLDecodeBufferList(v10 + 6, v17, 2, (a1 + 1072));
    if (result)
    {
      return result;
    }

    goto LABEL_49;
  }

  __ssl_debug("sslError", "SSLProcessServerHelloExtension_SCT", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslHandshakeHello.c", 464, "SSLProcessClientHelloExtension_SCT: length decode error 2\n", v27);
  return 4294957496;
}

uint64_t SSLEncodeClientHello(size_t *a1, unsigned int *a2)
{
  v103 = 0;
  __src = 0;
  v102 = 0uLL;
  *a1 = 0;
  a1[1] = 0;
  v4 = *(a2 + 16);
  v5 = (a2 + 184);
  if (*(a2 + 92))
  {
    v6 = 0;
    v102 = *v5;
  }

  else
  {
    v7 = *(a2 + 34);
    if (!v7 || SSLClientValidateSessionDataBefore(*(a2 + 33), v7, a2))
    {
      goto LABEL_5;
    }

    MaxProtVersion = SSLRetrieveSessionID(*(a2 + 33), *(a2 + 34), &v103);
    if (MaxProtVersion || (MaxProtVersion = SSLRetrieveSessionTicket(*(a2 + 33), *(a2 + 34), &v102), MaxProtVersion))
    {
LABEL_82:
      v39 = MaxProtVersion;
      goto LABEL_83;
    }

    if (v102 && *(a2 + 705) != 1)
    {
LABEL_5:
      v6 = 0;
    }

    else
    {
      v6 = v103;
      SSLCopyBuffer(&v103, a2 + 36);
    }
  }

  if (a2[90])
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v9 += tls_handshake_ciphersuite_is_valid(a2, *(*(a2 + 44) + 2 * v8++));
    }

    while (v8 < a2[90]);
  }

  else
  {
    LOWORD(v9) = 0;
  }

  v10 = *(a2 + 848);
  v11 = *(a2 + 1064);
  MaxProtVersion = sslGetMaxProtVersion(a2, a2 + 1);
  if (MaxProtVersion)
  {
    goto LABEL_82;
  }

  v13 = 2 * (v9 + ((v10 & 1) == 0) + v11);
  v14 = v6 + (v13 + 39);
  *(a2 + 849) = 0;
  v15 = *a2;
  if (!v15)
  {
    v15 = a2[2];
    if (v15 <= 0x300 && a2[3] > 0x300)
    {
      v15 = 769;
    }
  }

  (*(*(a2 + 139) + 96))(*(a2 + 138), v15);
  v16 = *(a2 + 16);
  if (v16 == 1)
  {
    v14 += *(a2 + 23) + 1;
  }

  if (*(a2 + 848) == 1)
  {
    v17 = *(a2 + 107) + 5;
  }

  else
  {
    v17 = 0;
  }

  v18 = a2[1];
  if (v18 >= 0x301 && *(a2 + 50))
  {
    v19 = *(a2 + 49);
    v20 = v19 + 9 + v17;
    v21 = v19 == 0;
    if (v19)
    {
      v22 = v19 + 9;
    }

    else
    {
      v22 = 0;
    }

    v98 = v22;
    if (!v21)
    {
      v17 = v20;
    }
  }

  else
  {
    v98 = 0;
  }

  if ((*(a2 + 705) & 1) != 0 || *v5)
  {
    v23 = v102 + 4;
    v17 += v102 + 4;
    *(a2 + 706) = 1;
  }

  else
  {
    v23 = 0;
  }

  if (v18 >= 0x301 && *(a2 + 771) == 1)
  {
    v100 = 2 * a2[30] + 6;
    v17 += v100 + 6;
    v101 = 6;
    if (!v16)
    {
      goto LABEL_36;
    }

LABEL_39:
    if (v18 >= 0xFEFF)
    {
      v99 = 0;
      goto LABEL_49;
    }

    goto LABEL_40;
  }

  v100 = 0;
  v101 = 0;
  if (v16)
  {
    goto LABEL_39;
  }

LABEL_36:
  if (v18 < 0x303)
  {
    v99 = 0;
    goto LABEL_41;
  }

LABEL_40:
  v99 = 2 * a2[200] + 6;
  v17 += v99;
LABEL_41:
  if (v18 < 0x301)
  {
    v94 = 0;
    v24 = 0;
    v93 = 0;
LABEL_62:
    v95 = 0;
    v97 = 0;
    goto LABEL_69;
  }

LABEL_49:
  if (*(a2 + 929) == 1)
  {
    v24 = *(a2 + 930) ^ 1;
    if (!*(a2 + 930))
    {
      v17 += 4;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = *(a2 + 122);
  v21 = v25 == 0;
  v26 = v25 != 0;
  v27 = v25 + 6;
  if (v21)
  {
    v28 = 0;
  }

  else
  {
    v28 = v27;
  }

  if (v27)
  {
    v29 = v26;
  }

  else
  {
    v29 = 0;
  }

  v93 = v29;
  v17 += v28;
  if (*(a2 + 1008) == 1)
  {
    v94 = SSLEncodedBufferListSize(*(a2 + 129), 2) + *(a2 + 127) + 9;
    v17 += v94;
    if (a2[1] < 0x301)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v94 = 0;
  }

  v30 = v17 + 4;
  v95 = *(a2 + 1066);
  if (!*(a2 + 1066))
  {
    v30 = v17;
  }

  v97 = *(a2 + 768);
  if (*(a2 + 768))
  {
    v17 = v30 + 4;
  }

  else
  {
    v17 = v30;
  }

LABEL_69:
  v31 = 4;
  if (v4)
  {
    v32 = 12;
  }

  else
  {
    v32 = 4;
  }

  v33 = v14 + v32 + v17;
  v34 = (v33 + 2) & 0xFFFFFFFFFFFFFF00;
  v35 = 510 - v33;
  if (v35 > 4)
  {
    v31 = v35;
  }

  v96 = v34;
  v92 = v31;
  if (v34 != 256)
  {
    v31 = 0;
  }

  v36 = v31 + v17;
  if (v31 + v17)
  {
    if (v36 < 0x10000)
    {
      v14 += v36 + 2;
    }

    else
    {
      __ssl_debug("sslError", "SSLEncodeClientHello", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslHandshakeHello.c", 931, "Total extensions length EXCEEDED\n");
      v23 = 0;
      v98 = 0;
      v99 = 0;
      v100 = 0;
      v101 = 0;
      v36 = 0;
    }
  }

  MaxProtVersion = SSLAllocBuffer(a1, v14 + v32);
  if (MaxProtVersion)
  {
    goto LABEL_82;
  }

  v37 = SSLEncodeHandshakeHeader(a2, a1, 1, v14);
  v38 = SSLEncodeInt(v37, a2[1], 2);
  MaxProtVersion = SSLEncodeRandom(v38);
  if (MaxProtVersion)
  {
    goto LABEL_82;
  }

  v41 = *(v38 + 16);
  *(a2 + 109) = *v38;
  *(a2 + 113) = v41;
  *(v38 + 32) = v6;
  if (v6)
  {
    memcpy((v38 + 33), __src, v6);
  }

  v42 = (v38 + 33 + v6);
  if (*(a2 + 16) == 1)
  {
    *v42++ = *(a2 + 23);
    v43 = *(a2 + 23);
    v44 = v24;
    if (v43)
    {
      memcpy(v42, *(a2 + 24), v43);
      v42 += *(a2 + 23);
    }
  }

  else
  {
    v44 = v24;
  }

  v45 = SSLEncodeInt(v42, v13, 2);
  v46 = v45;
  if ((a2[212] & 1) == 0)
  {
    v46 = SSLEncodeInt(v45, 0xFFuLL, 2);
  }

  if (*(a2 + 1064) == 1)
  {
    v46 = SSLEncodeInt(v46, 0x5600uLL, 2);
  }

  if (a2[90])
  {
    v47 = 0;
    do
    {
      if (tls_handshake_ciphersuite_is_valid(a2, *(*(a2 + 44) + 2 * v47)))
      {
        v46 = SSLEncodeInt(v46, *(*(a2 + 44) + 2 * v47), 2);
      }

      ++v47;
    }

    while (v47 < a2[90]);
  }

  *v46 = 1;
  v48 = (v46 + 1);
  if (v36)
  {
    v48 = SSLEncodeInt(v48, v36, 2);
  }

  if (*(a2 + 848) == 1 && v48)
  {
    v49 = SSLEncodeInt(v48, 0xFF01uLL, 2);
    v50 = SSLEncodeInt(v49, *(a2 + 107) + 1, 2);
    v51 = SSLEncodeInt(v50, *(a2 + 107), 1);
    memcpy(v51, *(a2 + 108), *(a2 + 107));
    v48 = v51 + *(a2 + 107);
  }

  if (v23 && v48)
  {
    v52 = SSLEncodeInt(v48, 0x23uLL, 2);
    v53 = SSLEncodeInt(v52, v102, 2);
    memcpy(v53, *(&v102 + 1), v102);
    v48 = v53 + v102;
  }

  if (v98 && v48)
  {
    v54 = SSLEncodeInt(v48, 0, 2);
    v55 = SSLEncodeInt(v54, *(a2 + 49) + 5, 2);
    v56 = SSLEncodeInt(v55, *(a2 + 49) + 3, 2);
    v57 = SSLEncodeInt(v56, 0, 1);
    v58 = SSLEncodeInt(v57, *(a2 + 49), 2);
    memcpy(v58, *(a2 + 50), *(a2 + 49));
    v48 = v58 + *(a2 + 49);
  }

  if (v100)
  {
    if (v48)
    {
      v59 = 2 * a2[30];
      v60 = SSLEncodeInt(v48, 0xAuLL, 2);
      v61 = SSLEncodeInt(v60, (v59 + 2), 2);
      v48 = SSLEncodeInt(v61, v59, 2);
      if (a2[30])
      {
        v62 = 0;
        do
        {
          v48 = SSLEncodeInt(v48, *(*(a2 + 14) + 2 * v62++), 2);
        }

        while (v62 < a2[30]);
      }
    }
  }

  if (v101)
  {
    v63 = v99;
    if (v48)
    {
      v64 = SSLEncodeInt(v48, 0xBuLL, 2);
      v65 = SSLEncodeInt(v64, 2uLL, 2);
      v66 = SSLEncodeInt(v65, 1uLL, 1);
      v48 = SSLEncodeInt(v66, 0, 1);
    }
  }

  else
  {
    v63 = v99;
  }

  if (v63)
  {
    if (v48)
    {
      v67 = 2 * a2[200];
      v68 = SSLEncodeInt(v48, 0xDuLL, 2);
      v69 = SSLEncodeInt(v68, (v67 + 2), 2);
      v48 = SSLEncodeInt(v69, v67, 2);
      if (a2[200])
      {
        v70 = 0;
        v71 = 0;
        do
        {
          v72 = SSLEncodeInt(v48, *(*(a2 + 101) + v70), 1);
          v48 = SSLEncodeInt(v72, *(*(a2 + 101) + v70 + 4), 1);
          ++v71;
          v70 += 8;
        }

        while (v71 < a2[200]);
      }
    }
  }

  if (v48)
  {
    v73 = v44;
  }

  else
  {
    v73 = 0;
  }

  if (v73 == 1)
  {
    *(a2 + 930) = 1;
    v74 = SSLEncodeInt(v48, 0x3374uLL, 2);
    v48 = SSLEncodeInt(v74, 0, 2);
  }

  v75 = v93;
  if (!v48)
  {
    v75 = 0;
  }

  if (v75)
  {
    *(a2 + 969) = 1;
    v76 = SSLEncodeInt(v48, 0x10uLL, 2);
    v77 = SSLEncodeInt(v76, *(a2 + 122) + 2, 2);
    v78 = SSLEncodeInt(v77, *(a2 + 122), 2);
    memcpy(v78, *(a2 + 123), *(a2 + 122));
    v48 = v78 + *(a2 + 122);
  }

  if (v94 && v48)
  {
    v79 = SSLEncodeInt(v48, 5uLL, 2);
    v80 = SSLEncodeInt(v79, v94 - 4, 2);
    *v80 = 1;
    v81 = (v80 + 1);
    v82 = SSLEncodedBufferListSize(*(a2 + 129), 2);
    v83 = SSLEncodeInt(v81, v82, 2);
    v84 = SSLEncodeBufferList(*(a2 + 129), 2, v83);
    v85 = SSLEncodeInt(v84, *(a2 + 127), 2);
    memcpy(v85, *(a2 + 128), *(a2 + 127));
    v48 = v85 + *(a2 + 127);
  }

  if (v48)
  {
    v86 = v95;
  }

  else
  {
    v86 = 0;
  }

  if (v86 == 1)
  {
    v87 = SSLEncodeInt(v48, 0x12uLL, 2);
    v48 = SSLEncodeInt(v87, 0, 2);
  }

  v88 = v97;
  if (!v48)
  {
    v88 = 0;
  }

  if (v88 == 1)
  {
    v89 = SSLEncodeInt(v48, 0x17uLL, 2);
    v48 = SSLEncodeInt(v89, 0, 2);
  }

  if (v96 == 256 && v48)
  {
    v90 = SSLEncodeInt(v48, 0x15uLL, 2);
    v91 = SSLEncodeInt(v90, v92 - 4, 2);
    bzero(v91, v92 - 4);
    v48 = v91 + v92 - 4;
  }

  if (v48 == a1[1] + *a1)
  {
    v39 = SSLInitMessageHashes(a2);
    if (!v39)
    {
      return v39;
    }
  }

  else
  {
    v39 = 4294957486;
  }

LABEL_83:
  SSLFreeBuffer(a1);
  return v39;
}

uint64_t SSLProcessSSL2ClientHello(unint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 < 8)
  {
    return 4294967246;
  }

  v6 = SSLDecodeInt(a2, 2);
  v7 = SSLDecodeInt(a2 + 2, 2);
  v8 = SSLDecodeInt(a2 + 4, 2);
  v9 = SSLDecodeInt(a2 + 6, 2);
  if (v8)
  {
    return 4294967246;
  }

  v10 = v9;
  v11 = v9;
  result = 4294967246;
  if (v11 == 32)
  {
    v13 = v7;
    v14 = v7 + v10 + 8;
    v15 = v7 / 3u;
    if (!(v7 % 3u) && a1 == v14)
    {
      v17 = v6;
      *(a3 + 4) = v6;
      v18 = *(a3 + 8);
      if (*(a3 + 16) == 1)
      {
        if (v18 < v6)
        {
          return 4294957495;
        }

        v19 = *(a3 + 12);
        if (v19 <= v6)
        {
LABEL_16:
          result = 4294957495;
          if (v17 > 770)
          {
            if (v17 == 771)
            {
              v20 = Tls12Callouts;
LABEL_25:
              *(a3 + 24) = v20;
              *a3 = v17;
              result = (*(*(a3 + 1112) + 96))(*(a3 + 1104));
              if (!result)
              {
                v21 = a2 + 8;
                *(a3 + 376) = 0;
                if (v7 >= 3u)
                {
                  v22 = 0;
                  if (v15 <= 1)
                  {
                    v23 = 1;
                  }

                  else
                  {
                    v23 = v15;
                  }

                  v24 = a2 + 8;
                  do
                  {
                    v25 = *v24;
                    v24 += 3;
                    if (!v25)
                    {
                      *(a3 + 376) = ++v22;
                    }

                    --v23;
                  }

                  while (v23);
                }

                sslFree(*(a3 + 368));
                v26 = sslMalloc(2 * *(a3 + 376));
                *(a3 + 368) = v26;
                if (v26)
                {
                  if (v7 >= 3u)
                  {
                    v27 = 0;
                    if (v15 <= 1)
                    {
                      v28 = 1;
                    }

                    else
                    {
                      v28 = v15;
                    }

                    v29 = a2 + 9;
                    do
                    {
                      if (!*(v29 - 1))
                      {
                        *(*(a3 + 368) + 2 * v27++) = SSLDecodeInt(v29, 2);
                      }

                      v29 += 3;
                      --v28;
                    }

                    while (v28);
                  }

                  v30 = &v21[v13];
                  v31 = *(v30 + 1);
                  *(a3 + 436) = *v30;
                  *(a3 + 452) = v31;
                  return SSLInitMessageHashes(a3);
                }

                else
                {
                  return 4294967188;
                }
              }

              return result;
            }

            if (v17 != 65279)
            {
              return result;
            }
          }

          else if ((v17 - 769) >= 2)
          {
            if (v17 != 768)
            {
              return result;
            }

            v20 = Ssl3Callouts;
            goto LABEL_25;
          }

          v20 = Tls1Callouts;
          goto LABEL_25;
        }
      }

      else
      {
        if (v18 > v6)
        {
          return 4294957495;
        }

        v19 = *(a3 + 12);
        if (v19 >= v6)
        {
          goto LABEL_16;
        }
      }

      v17 = v19;
      if (*(a3 + 17) == 1)
      {
        goto LABEL_16;
      }

      return 4294957495;
    }
  }

  return result;
}

uint64_t ssl3GenerateKeyMaterial(unint64_t a1, char *a2, uint64_t a3)
{
  v30 = *MEMORY[0x29EDCA608];
  v29 = -21846;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  memset(v27, 170, 20);
  __src[0] = 0xAAAAAAAAAAAAAAAALL;
  __src[1] = 0xAAAAAAAAAAAAAAAALL;
  v23[0] = 0xAAAAAAAAAAAAAAAALL;
  v23[1] = &v28;
  v22[0] = 48;
  v22[1] = a3 + 520;
  v21[0] = 32;
  v21[1] = a3 + 468;
  v20[0] = 32;
  v20[1] = a3 + 436;
  v19[0] = 20;
  v19[1] = v27;
  v18[0] = 16;
  v18[1] = __src;
  v24[0] = 0xAAAAAAAAAAAAAAAALL;
  v24[1] = 0;
  v25[0] = 0xAAAAAAAAAAAAAAAALL;
  v25[1] = 0;
  ready = ReadyHash(&SSLHashMD5, v24);
  if (!ready)
  {
    ready = ReadyHash(&SSLHashSHA1, v25);
    if (!ready)
    {
      if (!a1)
      {
LABEL_24:
        v6 = 0;
        goto LABEL_4;
      }

      v9 = 0;
      v10 = off_2A1EFF3E8[0];
      v16 = off_2A1EFF3E0[0];
      v17 = off_2A1EFF3F0[0];
      v11 = off_2A1EFF3B0[0];
      v12 = off_2A1EFF3B8[0];
      v13 = off_2A1EFF3A8[0];
      while (1)
      {
        v14 = 0;
        do
        {
          *(&v28 + v14++) = v9 + 65;
        }

        while (v14 <= v9);
        v23[0] = ++v9;
        ready = v11(v25, v23);
        if (ready)
        {
          break;
        }

        ready = v11(v25, v22);
        if (ready)
        {
          break;
        }

        ready = v11(v25, v21);
        if (ready)
        {
          break;
        }

        ready = v11(v25, v20);
        if (ready)
        {
          break;
        }

        ready = (v12)(v25, v19);
        if (ready)
        {
          break;
        }

        ready = v10(v24, v22);
        if (ready)
        {
          break;
        }

        ready = v10(v24, v19);
        if (ready)
        {
          break;
        }

        ready = (v17)(v24, v18);
        if (ready)
        {
          break;
        }

        if (a1 >= 0x10)
        {
          v15 = 16;
        }

        else
        {
          v15 = a1;
        }

        memcpy(a2, __src, v15);
        a1 -= v15;
        if (!a1)
        {
          goto LABEL_24;
        }

        ready = (v16)(v24);
        if (ready)
        {
          break;
        }

        a2 += v15;
        v6 = v13(v25);
        if (v6)
        {
          goto LABEL_4;
        }
      }
    }
  }

  v6 = ready;
LABEL_4:
  SSLFreeBuffer(v24);
  SSLFreeBuffer(v25);
  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t ssl3GenerateMasterSecret(uint64_t a1)
{
  v20[3] = *MEMORY[0x29EDCA608];
  memset(v18, 170, 24);
  memset(v17, 170, sizeof(v17));
  memset(v16, 170, sizeof(v16));
  memset(v20, 170, 20);
  v14 = -21846;
  v15 = -86;
  v19[0] = 0xAAAAAAAAAAAAAAAALL;
  v19[1] = 0;
  v18[3] = 0;
  v2 = SSLAllocBuffer(&v18[2], dword_2A1EFF3D8);
  if (!v2)
  {
    v2 = SSLAllocBuffer(v19, dword_2A1EFF3A0);
    if (!v2)
    {
      v18[0] = 32;
      v18[1] = a1 + 436;
      v17[2] = 32;
      v17[3] = a1 + 468;
      v17[0] = 20;
      v17[1] = v20;
      v6 = a1 + 520;
      v7 = off_2A1EFF3A8[0];
      v8 = off_2A1EFF3B0[0];
      v9 = off_2A1EFF3B8[0];
      v10 = off_2A1EFF3E0[0];
      v11 = off_2A1EFF3E8[0];
      v12 = 1;
      v13 = off_2A1EFF3F0[0];
      while (1)
      {
        v2 = v10(&v18[2]);
        if (v2)
        {
          break;
        }

        v2 = v7(v19);
        if (v2)
        {
          break;
        }

        v15 = v12 | 0x40;
        HIBYTE(v14) = v12 | 0x40;
        LOBYTE(v14) = v12 | 0x40;
        v16[0] = v12;
        v16[1] = &v14;
        v2 = v8(v19, v16);
        if (v2)
        {
          break;
        }

        v2 = v8(v19, (a1 + 504));
        if (v2)
        {
          break;
        }

        v2 = v8(v19, v18);
        if (v2)
        {
          break;
        }

        v2 = v8(v19, &v17[2]);
        if (v2)
        {
          break;
        }

        v2 = (v9)(v19, v17);
        if (v2)
        {
          break;
        }

        v2 = v11(&v18[2], (a1 + 504));
        if (v2)
        {
          break;
        }

        v2 = v11(&v18[2], v17);
        if (v2)
        {
          break;
        }

        v16[2] = 16;
        v16[3] = v6;
        v3 = (v13)(&v18[2], &v16[2]);
        if (!v3)
        {
          v6 += 16;
          if (++v12 != 4)
          {
            continue;
          }
        }

        goto LABEL_4;
      }
    }
  }

  v3 = v2;
LABEL_4:
  SSLFreeBuffer(v19);
  SSLFreeBuffer(&v18[2]);
  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t ssl3ComputeFinishedMac(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v15 = 0;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v13 = 0;
  v8 = CloneHashState(&SSLHashSHA1, a1 + 568, &v14);
  if (!v8)
  {
    v8 = CloneHashState(&SSLHashMD5, a1 + 584, &v12);
    if (!v8)
    {
      if (a4)
      {
        v9 = 1397904978;
      }

      else
      {
        v9 = 1129074260;
      }

      v8 = ssl3CalculateFinishedMessage(a1, a2, a3, v14, v15, v12, v13, v9);
    }
  }

  v10 = v8;
  SSLFreeBuffer(&v14);
  SSLFreeBuffer(&v12);
  return v10;
}

uint64_t ssl3ComputeCertVfyMac(uint64_t a1, void *a2)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 0;
  v4 = CloneHashState(&SSLHashSHA1, a1 + 568, &v9);
  if (!v4)
  {
    v4 = CloneHashState(&SSLHashMD5, a1 + 584, &v7);
    if (!v4)
    {
      *a2 = 36;
      v4 = ssl3CalculateFinishedMessage(a1, 36, a2[1], v9, v10, v7, v8, 0);
    }
  }

  v5 = v4;
  SSLFreeBuffer(&v9);
  SSLFreeBuffer(&v7);
  return v5;
}

uint64_t ssl3CalculateFinishedMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v24[2] = *MEMORY[0x29EDCA608];
  v22[0] = a4;
  v22[1] = a5;
  v21[0] = a6;
  v21[1] = a7;
  memset(v20, 170, sizeof(v20));
  v19 = -1431655766;
  v24[0] = 0xAAAAAAAAAAAAAAAALL;
  v24[1] = 0xAAAAAAAAAAAAAAAALL;
  memset(v23, 170, 20);
  if (a8)
  {
    SSLEncodeInt(&v19, a8, 4);
    v20[0] = 4;
    v20[1] = &v19;
    v10 = off_2A1EFF3E8[0];
    result = (off_2A1EFF3E8[0])(v21, v20);
    if (result)
    {
      goto LABEL_22;
    }

    result = (off_2A1EFF3B0[0])(v22, v20);
    if (result)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v10 = off_2A1EFF3E8[0];
  }

  v12 = a1 + 520;
  v20[0] = 48;
  v20[1] = a1 + 520;
  result = v10(v21, v20);
  if (!result)
  {
    v13 = off_2A1EFF3B0[0];
    result = (off_2A1EFF3B0[0])(v22, v20);
    if (!result)
    {
      v14 = dword_2A1EFF3D4;
      v20[0] = dword_2A1EFF3D4;
      v20[1] = &SSLMACPad1;
      result = v10(v21, v20);
      if (!result)
      {
        v15 = dword_2A1EFF39C;
        v20[0] = dword_2A1EFF39C;
        result = v13(v22, v20);
        if (!result)
        {
          v20[2] = 16;
          v20[3] = v24;
          v16 = off_2A1EFF3F0[0];
          result = (off_2A1EFF3F0[0])(v21, &v20[2]);
          if (!result)
          {
            v20[2] = 20;
            v20[3] = v23;
            v17 = off_2A1EFF3B8[0];
            result = (off_2A1EFF3B8[0])(v22, &v20[2]);
            if (!result)
            {
              result = (off_2A1EFF3E0[0])(v21);
              if (!result)
              {
                result = (off_2A1EFF3A8[0])(v22);
                if (!result)
                {
                  v20[0] = 48;
                  v20[1] = v12;
                  result = v10(v21, v20);
                  if (!result)
                  {
                    result = v13(v22, v20);
                    if (!result)
                    {
                      v20[0] = v14;
                      v20[1] = "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\@";
                      result = v10(v21, v20);
                      if (!result)
                      {
                        v20[0] = v15;
                        result = v13(v22, v20);
                        if (!result)
                        {
                          v20[0] = 16;
                          v20[1] = v24;
                          result = v10(v21, v20);
                          if (!result)
                          {
                            v20[2] = 16;
                            v20[3] = a3;
                            result = (v16)(v21, &v20[2]);
                            if (!result)
                            {
                              v20[0] = 20;
                              v20[1] = v23;
                              result = v13(v22, v20);
                              if (!result)
                              {
                                v20[2] = 20;
                                v20[3] = a3 + 16;
                                result = (v17)(v22, &v20[2]);
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

LABEL_22:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SSLComputeMac(char a1, void *a2, uint64_t a3, uint64_t a4, unint64_t *a5, int a6)
{
  v107 = a4;
  v118[1] = *MEMORY[0x29EDCA608];
  v113 = a2;
  v10 = *a2;
  v11 = *a5;
  v116 = *(*a5 + 16);
  v12 = *v11;
  (MEMORY[0x2A1C7C4A8])();
  if (v12)
  {
    memset(v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v12);
  }

  v13 = v10 - a3;
  v108 = v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v108, v12);
  v14 = 40;
  if (v12 == 16)
  {
    v14 = 48;
  }

  if (a6 == 768)
  {
    v15 = v14;
  }

  else
  {
    v15 = 40;
  }

  if (a6 == 768)
  {
    v16 = v12 + v14 + 11;
  }

  else
  {
    v16 = v116 + 13;
  }

  (MEMORY[0x2A1C7C4A8])();
  v17 = v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v17;
  if (v16)
  {
    memset(v115, 170, v16);
    v17 = v115;
  }

  v105[0] = a5;
  if (a6 == 768)
  {
    memcpy(v17, a5 + 41, v12);
    v18 = &v17[v12];
    memset(v18, 54, v15);
    v19 = SSLEncodeUInt64(&v18[v15], a5[4]);
    *v19 = a1;
    v20 = v19 + 2;
    v19[1] = BYTE1(v13);
    v21 = v116;
  }

  else
  {
    memset(v115, 54, v116);
    v22 = v115;
    if (v12)
    {
      for (i = 0; i < v12; ++i)
      {
        v22[i] ^= *(a5 + i + 41);
      }
    }

    v21 = v116;
    v24 = SSLEncodeUInt64(&v22[v116], a5[4]);
    *v24 = a1;
    v24[1] = BYTE1(a6);
    v24[2] = a6;
    v20 = v24 + 4;
    v24[3] = BYTE1(v13);
  }

  v105[1] = v15;
  v106 = a6;
  *v20 = v13;
  v25 = (MEMORY[0x2A1C7C4A8])();
  v26 = v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v21)
  {
    v25 = memset(v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v21);
  }

  v27 = *(v11 + 8);
  MEMORY[0x2A1C7C4A8](v25);
  v28 = (8 * ((v27 + 7) >> 3) + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = v113;
  v117 = v105 - v28;
  if (v30 > 7)
  {
    v32 = (v27 - 1) & 0xFFFFFFFFFFFFFFF8;
    v33 = memset(v117, 170, v32 + 8);
    MEMORY[0x2A1C7C4A8](v33);
    v109 = v105 - v28;
    memset(v105 - v28, 170, v32 + 8);
    v31 = v117;
  }

  else
  {
    v31 = MEMORY[0x2A1C7C4A8](v105 - v28);
    v109 = v105 - v28;
  }

  memcpy(v31, *(v11 + 40), v27);
  v34 = *v11;
  bzero(v108, *v11);
  v35 = v16 + v13;
  v118[0] = 0;
  if (v34 == 16)
  {
    v118[0] = 8 * v35;
    v36 = 8;
  }

  else
  {
    v37 = *(v11 + 16);
    v118[0] = bswap64(8 * v35);
    if (v37 == 128)
    {
      v36 = 16;
    }

    else
    {
      v36 = 8;
    }
  }

  v39 = v115;
  v38 = v116;
  v114 = v11;
  v40 = v16 + *v29;
  v111 = v36;
  v41 = (v36 + v40) / v116;
  v42 = v41 + 1;
  v43 = v41 - 5;
  v112 = v42;
  if (v42 >= 6)
  {
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  v45 = v117;
  if (v44)
  {
    v46 = 0;
    v47 = 0;
    v48 = v116 - v16;
    v49 = v16;
    do
    {
      if (v38 + v46 >= v16)
      {
        if (v46 >= v16)
        {
          (*(v114 + 48))(v45, 1, v113[1] + v46 - v16);
        }

        else
        {
          v50 = v45;
          memcpy(v26, &v39[v46], v49);
          memcpy(&v26[v49], v113[1], v48 + v46);
          (*(v114 + 48))(v50, 1, v26);
        }
      }

      else
      {
        (*(v114 + 48))(v45, 1, &v39[v46]);
      }

      ++v47;
      v39 = v115;
      v38 = v116;
      v46 += v116;
      v49 -= v116;
      v45 = v117;
    }

    while (v47 < v44);
  }

  v51 = v113;
  if (v44 < v112)
  {
    v52 = (v111 + v35) / v38;
    v53 = v38 + v38 * v52;
    v54 = v53 - 1;
    v55 = v53 - 9;
    v56 = v38 - 8;
    if (v38 <= 1)
    {
      v57 = 1;
    }

    else
    {
      v57 = v38;
    }

    v58 = &v118[1] - v38;
    v110 = v58;
    v111 = v53 - 1;
    v59 = v114;
    do
    {
      v60 = 0;
      v61 = v44 * v38;
      do
      {
        v62 = v60 + v61;
        v63 = v60 + v61 - v16;
        if (v60 + v61 >= v16)
        {
          if (v63 >= *v51)
          {
            v65 = 0;
          }

          else
          {
            v65 = *(v51[1] + v63);
          }

          if (v62 == v35)
          {
            v66 = 0;
          }

          else
          {
            v66 = -1;
          }

          v64 = v65 & v66 | ~v66 & 0x80;
          v67 = v62 <= v55 && v62 > v35;
          if (v67)
          {
            v64 = 0;
          }

          if (v60 >= v56)
          {
            if (v62 <= v54 && v62 > v55)
            {
              v69 = -1;
            }

            else
            {
              v69 = 0;
            }

            v64 = v69 & v58[v60] | v64 & ~v69;
          }
        }

        else
        {
          v64 = v39[v62];
        }

        v26[v60++] = v64;
      }

      while (v57 != v60);
      (*(v59 + 48))(v117, 1, v26);
      v45 = v117;
      v70 = *(v59 + 8);
      if (v70 >= 4)
      {
        v71 = v70 >> 2;
        v72 = v109;
        v73 = v117;
        do
        {
          if (v44 == v52)
          {
            v74 = v73;
          }

          else
          {
            v74 = v72;
          }

          *v72 = *v74;
          v72 += 4;
          v73 += 4;
          --v71;
        }

        while (v71);
      }

      ++v44;
      v51 = v113;
      v39 = v115;
      v38 = v116;
      v58 = v110;
      v54 = v111;
    }

    while (v44 < v112);
  }

  v75 = v114;
  v76 = *v114;
  if (*v114 > 0x10uLL)
  {
    v78 = v108;
    v83 = v109;
    v79 = v106;
    if (v76 >= 0x21)
    {
      v87 = 0;
      v88 = 0;
      v89 = v76 >> 3;
      v90 = 1;
      do
      {
        *&v78[v87] = bswap64(*&v83[8 * v88]);
        v88 = v90;
        v67 = v89 > v90++;
        v87 += 8;
      }

      while (v67);
    }

    else
    {
      v84 = 0;
      v85 = v76 >> 2;
      v86 = 1;
      do
      {
        *&v78[v84] = bswap32(*&v83[v84]);
        v84 += 4;
        v67 = v85 > v86++;
      }

      while (v67);
    }
  }

  else
  {
    v78 = v108;
    v77 = v109;
    v79 = v106;
    if (v76 >= 4)
    {
      v80 = 0;
      v81 = v76 >> 2;
      v82 = 1;
      do
      {
        *&v78[v80] = *&v77[v80];
        v80 += 4;
        v67 = v81 > v82++;
      }

      while (v67);
    }
  }

  v91 = *(v75 + 8);
  bzero(v45, v91);
  v92 = memset(v26, 92, v116);
  v93 = v91 + *(v75 + 16) + 19;
  MEMORY[0x2A1C7C4A8](v92);
  v96 = v105 - v95;
  if (v97 >= 8)
  {
    memset(v105 - v95, 170, v94);
  }

  ccdigest_init();
  v98 = *v75;
  if (v79 == 768)
  {
    ccdigest_update();
  }

  else if (v98)
  {
    v99 = 0;
    v100 = v105[0] + 41;
    do
    {
      v26[v99] ^= *(v100 + v99);
      ++v99;
    }

    while (v99 < v98);
  }

  ccdigest_update();
  v101 = *v75;
  ccdigest_update();
  (*(v75 + 56))(v75, v96, v107);
  v102 = *(v75 + 8) + *(v75 + 16);
  cc_clear();
  bzero(v78, *v75);
  v103 = *MEMORY[0x29EDCA608];
  return 0;
}

BOOL SSLVerifyMac(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  v17[1] = *MEMORY[0x29EDCA608];
  v9 = (a5 + 8);
  v10 = **(a5 + 8);
  MEMORY[0x2A1C7C4A8](a1);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11)
  {
    memset(v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v11);
  }

  SSLComputeMac(v8, a2, a3, v12, v9, *(a5 + 492));
  v13 = **(a5 + 8);
  v14 = cc_cmp_safe();
  v15 = *MEMORY[0x29EDCA608];
  return (v14 & 1) == 0;
}

__CFString *copyHexString(uint64_t a1, unint64_t a2)
{
  Mutable = CFStringCreateMutable(0, 2 * a2);
  if (a2)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      CFStringAppendFormat(Mutable, 0, @"%02X", *(a1 + v5));
      v5 = v6++;
    }

    while (v5 < a2);
  }

  return Mutable;
}

unint64_t SSLDecodeUInt64(unsigned __int8 *a1, uint64_t a2)
{
  for (i = 0; a2; --a2)
  {
    v3 = *a1++;
    i = v3 | (i << 8);
  }

  return i;
}

void *__ssl_add_debug_logger(uint64_t a1, uint64_t a2)
{
  result = sslMalloc(0x18uLL);
  *result = a1;
  result[1] = a2;
  result[2] = gDebugLoggers;
  gDebugLoggers = result;
  return result;
}

uint64_t CCSymmInit(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6)
{
  if (*a6)
  {
    sslFree(*a6);
  }

  if ((*a1 - 5) > 1)
  {
    if (a2)
    {
      v9 = ccdes3_cbc_encrypt_mode();
    }

    else
    {
      v9 = ccdes3_cbc_decrypt_mode();
    }
  }

  else if (a2)
  {
    v9 = ccaes_cbc_encrypt_mode();
  }

  else
  {
    v9 = ccaes_cbc_decrypt_mode();
  }

  v10 = v9;
  v11 = sslMalloc(((v9[1] + ((*v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  if (!v11)
  {
    __ssl_debug("sslError", "CCSymmInit", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/symCipher.c", 140, "CCSymmInit: Can't allocate context\n");
    return 4294957296;
  }

  v12 = v11;
  *v11 = v10;
  v13 = *(a1 + 8);
  v14 = cccbc_init();
  if (v14)
  {
    v16 = v14;
    goto LABEL_17;
  }

  v15 = (**v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = cccbc_set_iv();
  if (v16)
  {
LABEL_17:
    sslFree(v12);
    return v16;
  }

  *a6 = v12;
  return v16;
}

uint64_t CCSymmEncryptDecrypt(uint64_t a1, uint64_t a2, unint64_t a3, void **a4)
{
  if (!a4 || (v5 = *a4) == 0)
  {
    __ssl_debug("sslError", "CCSymmEncryptDecrypt", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/symCipher.c", 167, "CCSymmEncryptDecrypt: NULL cipherCtx\n");
    return 4294957296;
  }

  v6 = v5[1];
  v7 = a3 / v6;
  if (a3 % v6)
  {
    __ssl_debug("sslError", "CCSymmEncryptDecrypt", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/symCipher.c", 174, "CCSymmEncryptDecrypt: Invalid size\n");
    return 4294957296;
  }

  v9 = a4 + ((*v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;

  return MEMORY[0x2A1C74110](v5, a4 + 2, v9, v7, a1, a2);
}

uint64_t HashMD5Update(uint64_t a1, uint64_t *a2)
{
  ccmd5_di();
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[1];
  ccdigest_update();
  return 0;
}

uint64_t HashMD5Final(uint64_t a1, void *a2)
{
  v4 = ccmd5_di();
  (*(v4 + 56))(v4, *(a1 + 8), a2[1]);
  *a2 = *v4;
  return 0;
}

uint64_t HashMD5Clone(uint64_t a1, uint64_t a2)
{
  v4 = ccmd5_di();
  memcpy(*(a2 + 8), *(a1 + 8), *(v4 + 8) + *(v4 + 16) + 12);
  return 0;
}

uint64_t HashSHA1Final(uint64_t a1, void *a2)
{
  v4 = ccsha1_di();
  (*(v4 + 56))(v4, *(a1 + 8), a2[1]);
  *a2 = *v4;
  return 0;
}

uint64_t HashSHA1Clone(uint64_t a1, uint64_t a2)
{
  v4 = ccsha1_di();
  memcpy(*(a2 + 8), *(a1 + 8), *(v4 + 8) + *(v4 + 16) + 12);
  return 0;
}

uint64_t HashSHA512Final(uint64_t a1, void *a2)
{
  v4 = ccsha512_di();
  (*(v4 + 56))(v4, *(a1 + 8), a2[1]);
  *a2 = *v4;
  return 0;
}

uint64_t HashSHA512Clone(uint64_t a1, uint64_t a2)
{
  v4 = ccsha512_di();
  memcpy(*(a2 + 8), *(a1 + 8), *(v4 + 8) + *(v4 + 16) + 12);
  return 0;
}

uint64_t tls_stream_parser_parse(uint64_t *a1, unint64_t a2, char *__src)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a2;
  v6 = (a1 + 1);
  do
  {
    v7 = *a1;
    if (*a1 > 4)
    {
      if (v4 >= a1[2] - v7)
      {
        v8 = a1[2] - v7;
      }

      else
      {
        v8 = v4;
      }

      memcpy((a1[3] + v7), __src, v8);
      v11 = *a1 + v8;
      *a1 = v11;
      if (v11 >= a1[2])
      {
        v12 = a1[3];
        result = (a1[5])(a1[4]);
        if (result)
        {
          return result;
        }

        *a1 = 0;
        SSLFreeBuffer(a1 + 2);
      }
    }

    else
    {
      if (v4 >= 5 - v7)
      {
        v8 = 5 - v7;
      }

      else
      {
        v8 = v4;
      }

      memcpy(&v6[v7], __src, v8);
      v9 = *a1 + v8;
      *a1 = v9;
      if (v9 == 5)
      {
        if (*v6 < 0)
        {
          v10 = (SSLDecodeInt(v6, 2) & 0x7FFF) + 2;
        }

        else
        {
          v10 = SSLDecodeInt(a1 + 11, 2) + 5;
        }

        result = SSLAllocBuffer(a1 + 2, v10);
        if (result)
        {
          return result;
        }

        v14 = a1[3];
        v15 = *v6;
        *(v14 + 4) = v6[4];
        *v14 = v15;
      }
    }

    __src += v8;
    v4 -= v8;
  }

  while (v4);
  return 0;
}

uint64_t tls_handshake_request_renegotiation(uint64_t a1)
{
  if (*(a1 + 380) != 16)
  {
    return 4294957466;
  }

  result = SSLResetFlight(a1);
  if (!result)
  {
    *(a1 + 202) = 0;
    result = SSLPrepareAndQueueMessage(SSLEncodeServerHelloRequest, 22, a1);
    if (!result)
    {

      return SSLSendFlight(a1);
    }
  }

  return result;
}

uint64_t SSLServerValidateSessionData(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0x90)
  {
    return 4294957486;
  }

  if (a1 != vaddvq_s64(vaddq_s64(*(a2 + 104), *(a2 + 120))) + 144)
  {
    return 4294957486;
  }

  if (*a2 != *(a3 + 288) || memcmp((a2 + 8), *(a3 + 296), *a2) || *(a2 + 40) != *a3 || !cipherSuiteInSet(*(a2 + 48), *(a3 + 352), *(a3 + 360)) || !cipherSuiteInSet(*(a2 + 48), *(a3 + 368), *(a3 + 376)))
  {
    return 4294957492;
  }

  v6 = *(a3 + 769);
  if (*(a2 + 136) == 1)
  {
    if ((*(a3 + 769) & 1) == 0)
    {
      SSLFatalSessionAlert(40, a3);
      return 4294957494;
    }

    goto LABEL_15;
  }

  if (*(a3 + 769))
  {
    return 4294957492;
  }

LABEL_15:
  *(a3 + 328) = *(a2 + 48);
  InitCipherSpecParams(a3);
  return 0;
}

uint64_t sslDhExportPub(uint64_t a1, size_t *a2)
{
  ccdh_ctx_public();
  v3 = ccdh_export_pub_size();
  v4 = SSLAllocBuffer(a2, v3);
  if (!v4)
  {
    ccdh_ctx_public();
    v5 = a2[1];
    ccdh_export_pub();
  }

  return v4;
}

uint64_t sslEcdhExportPub(uint64_t *a1, size_t *a2)
{
  v3 = *a1;
  v4 = cczp_bitlen();
  v5 = SSLAllocBuffer(a2, ((v4 + 7) >> 2) | 1);
  if (!v5)
  {
    v6 = a2[1];
    ccec_export_pub();
  }

  return v5;
}

void *tls_metric_event_new(const char *a1, const char *a2, const char *a3)
{
  v6 = malloc_type_malloc(0x20uLL, 0x50040BBB33FCDuLL);
  v7 = v6;
  if (v6)
  {
    *v6 = a1;
    v6[1] = a3;
    v6[2] = a2;
    ADClientIncValueForScalarKeyWithFormat("com.apple.coretls.%s.%s.%s.%s", a1, a3, "events", a2);
  }

  return v7;
}

void tls_metric_insecure_dh_param_cold_2()
{
  dlerror();
  abort_report_np();
  ADClientIncValueForScalarKeyWithFormat_cold_1();
}

uint64_t SSLEncodeKeyExchange_cold_1(uint64_t a1, size_t *a2, _DWORD *a3)
{
  v7 = (a1 + 104);
  v6 = *(a1 + 104);
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  sslFree(v6);
  SSLFreeBuffer(v7 + 50);
  if (*(v7 - 1))
  {
    if (cczp_bitlen() >= *(a1 + 76))
    {
      result = sslDhCreateKey(*(a1 + 96), v7);
      if (!result)
      {
        result = sslDhKeyExchange(*(a1 + 104), (a1 + 80), v7 + 50);
        if (!result)
        {
          result = sslDhExportPub(*v7, &v13);
          if (!result)
          {
            v9 = v13 + 2;
            v10 = 4;
            if (*(a1 + 16))
            {
              v10 = 12;
            }

            result = SSLAllocBuffer(a2, v10 + v9);
            if (!result)
            {
              v11 = SSLEncodeHandshakeHeader(a1, a2, 16, v9);
              v12 = SSLEncodeInt(v11, v13, 2);
              memcpy(v12, v14, v13);
              SSLFreeBuffer(&v13);
              result = 0;
            }
          }
        }
      }
    }

    else
    {
      result = 4294957446;
    }
  }

  else
  {
    result = 4294957496;
  }

  *a3 = result;
  return result;
}

uint64_t SSLProcessNewSessionTicket(unint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1 - 6;
  if (a1 < 6)
  {
    return 4294957496;
  }

  v6 = SSLDecodeInt(a2, 4);
  if (v3 != SSLDecodeInt(a2 + 4, 2))
  {
    return 4294957496;
  }

  *(a3 + 728) = v6;
  SSLFreeBuffer((a3 + 712));

  return SSLCopyBufferFromData(a2 + 6, v3, (a3 + 712));
}

uint64_t __security_debug_init()
{
  result = open("/Library/Preferences/com.apple.security.plist", 0);
  if (result != -1)
  {
    v1 = result;
    memset(&v7, 170, sizeof(v7));
    if (fstat(v1, &v7) != -1 && v7.st_size <= 99999)
    {
      v2 = malloc_type_malloc(v7.st_size, 0x1B5381A8uLL);
      if (v2)
      {
        v3 = v2;
        st_size = v7.st_size;
        if (st_size == read(v1, v2, v7.st_size))
        {
          v5 = xpc_create_from_plist();
          if (v5)
          {
            v6 = v5;
            gDebugScope = xpc_dictionary_get_value(v5, "SSLDebugScope");
            if (gDebugScope)
            {
              if (MEMORY[0x29C28DF20]() == MEMORY[0x29EDCAA00])
              {
                xpc_retain(gDebugScope);
              }

              else if (MEMORY[0x29C28DF20](gDebugScope) == MEMORY[0x29EDCA9E8])
              {
                __ssl_debug_all = xpc_BOOL_get_value(gDebugScope);
                gDebugScope = 0;
              }
            }

            xpc_release(v6);
          }
        }

        free(v3);
      }
    }

    return close(v1);
  }

  return result;
}