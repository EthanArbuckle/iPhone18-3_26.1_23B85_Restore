void sub_1A9079960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t boringssl_context_enable_keylog(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367)
    {
      v1 = *(result + 8);
      if (v1)
      {
        result = *(v1 + 400);
        if (result)
        {
          return SSL_CTX_set_keylog_callback(result, boringssl_context_keylog_handler);
        }
      }
    }
  }

  return result;
}

void boringssl_context_keylog_handler(const SSL *a1)
{
  if (a1)
  {
    v1 = SSL_get_ex_data(a1, 0);
    if (v1)
    {
      if (*v1 == -1252936367)
      {
        v2 = v1[1];
        if (v2)
        {
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
                v10 = g_boringssl_log;
                if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
                {
                  boringssl_context_keylog_handler_cold_1();
                }
              }
            }
          }
        }
      }
    }
  }
}

_DWORD *boringssl_context_set_raw_public_key_certificate(_DWORD *result, CFArrayRef theArray, int a3)
{
  if (result)
  {
    v3 = result;
    if (*result == -1252936367)
    {
      result = 0;
      if (theArray)
      {
        v5 = *(v3 + 1);
        if (v5)
        {
          if (CFArrayGetCount(theArray) < 1)
          {
            return 0;
          }

          else
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
            result = CFDataGetLength(ValueAtIndex);
            if (result)
            {
              v8 = result;
              result = CFDataGetBytePtr(ValueAtIndex);
              if (result)
              {
                v9 = result;
                v10 = *(v5 + 392);
                if (v10)
                {
                  if (a3)
                  {
                    v11 = SSL_use_server_raw_public_key_certificate(v10, v9, v8);
                  }

                  else
                  {
                    v11 = SSL_use_client_raw_public_key_certificate(v10, v9, v8);
                  }
                }

                else
                {
                  v12 = *(v5 + 400);
                  if (a3)
                  {
                    v11 = SSL_CTX_use_server_raw_public_key_certificate(v12, v9, v8);
                  }

                  else
                  {
                    v11 = SSL_CTX_use_client_raw_public_key_certificate(v12, v9, v8);
                  }
                }

                return (v11 == 1);
              }
            }
          }
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

uint64_t boringssl_context_set_experiment_identifier(uint64_t result, char *__s1)
{
  if (result)
  {
    if (*result == -1252936367)
    {
      v2 = *(result + 8);
      if (v2)
      {
        v4 = *(v2 + 88);
        if (v4)
        {
          free(v4);
          *(v2 + 88) = 0;
        }

        *(v2 + 88) = strdup(__s1);
        return 1;
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

  return result;
}

const __CFArray *boringssl_context_copy_peer_sct_list_from_extension(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v75 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v8 = Mutable;
    v9 = (a3 - 2);
    if (!v9)
    {
LABEL_37:
      if (!CFArrayGetCount(v8))
      {
        goto LABEL_72;
      }

      goto LABEL_74;
    }

    v10 = (a2 + 1);
    while (1)
    {
      v12 = *v10;
      v11 = v10 + 2;
      v13 = __rev16(v12);
      if (v9 < v13 + 2)
      {
        if (v5)
        {
          WeakRetained = objc_loadWeakRetained(v5 + 2);
          if (WeakRetained)
          {
            v35 = WeakRetained;
            v36 = objc_loadWeakRetained(v5 + 2);
            v37 = v36[435];

            if (v37)
            {
              goto LABEL_72;
            }
          }

          v38 = objc_loadWeakRetained(v5 + 2);
          if (v38)
          {
            v39 = objc_loadWeakRetained(v5 + 2);
            v40 = (v39[435] & 1) == 0;
          }

          else
          {
            v40 = 1;
          }
        }

        else
        {
          v40 = 1;
        }

        if (v40 && g_boringssl_log)
        {
          v49 = g_boringssl_log;
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            if (v5)
            {
              v40 = objc_loadWeakRetained(v5 + 2);
              v57 = v40 != 0;
              if (v40)
              {
                v9 = objc_loadWeakRetained(v5 + 2);
                v59 = v9 + 351;
              }

              else
              {
                v59 = &unk_1A9098A9F;
              }

              v58 = objc_loadWeakRetained(v5 + 2);
            }

            else
            {
              v57 = 0;
              v58 = 0;
              v59 = &unk_1A9098A9F;
            }

            *buf = 136446978;
            v66 = "boringssl_context_copy_peer_sct_list_from_extension";
            v67 = 1024;
            v68 = 988;
            v69 = 2082;
            v70 = v59;
            v71 = 2048;
            v72 = v58;
            _os_log_error_impl(&dword_1A8FF5000, v49, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] Received incorrectly encoded SerializedSCT list", buf, 0x26u);
            if (v5)
            {
            }

            if (v57)
            {
            }

            if (v5)
            {
              goto LABEL_108;
            }
          }

          goto LABEL_71;
        }

LABEL_72:
        CFRelease(v8);
LABEL_73:
        v8 = 0;
        goto LABEL_74;
      }

      if (!v5)
      {
        goto LABEL_15;
      }

      v14 = objc_loadWeakRetained(v5 + 2);
      if (v14)
      {
        v15 = v14;
        v16 = objc_loadWeakRetained(v5 + 2);
        v17 = v16[435];

        if (v17)
        {
          v21 = CFDataCreate(v6, v11, v13);
          if (!v21)
          {
            goto LABEL_46;
          }

          goto LABEL_19;
        }
      }

      v18 = objc_loadWeakRetained(v5 + 2);
      if (v18)
      {
        v19 = objc_loadWeakRetained(v5 + 2);
        v20 = (v19[435] & 1) == 0;
      }

      else
      {
        v20 = 1;
      }

      if (v20)
      {
LABEL_15:
        if (g_boringssl_log)
        {
          v22 = g_boringssl_log;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            if (v5)
            {
              v26 = objc_loadWeakRetained(v5 + 2);
              v64 = v26 != 0;
              v25 = &unk_1A9098A9F;
              v63 = v26;
              if (v26)
              {
                v61 = objc_loadWeakRetained(v5 + 2);
                v25 = v61 + 351;
              }

              v62 = objc_loadWeakRetained(v5 + 2);
              v24 = v62;
            }

            else
            {
              v64 = 0;
              v24 = 0;
              v25 = &unk_1A9098A9F;
            }

            *buf = 136447234;
            v66 = "boringssl_context_copy_peer_sct_list_from_extension";
            v67 = 1024;
            v68 = 994;
            v69 = 2082;
            v70 = v25;
            v71 = 2048;
            v72 = v24;
            v73 = 1024;
            v74 = v13;
            _os_log_debug_impl(&dword_1A8FF5000, v22, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] SerializedSCT length %d", buf, 0x2Cu);
            if (v5)
            {
            }

            if (v64)
            {
            }

            if (v5)
            {
            }
          }
        }
      }

      v21 = CFDataCreate(v6, v11, v13);
      if (!v21)
      {
        if (!v5)
        {
          v48 = 0;
          v40 = 1;
          goto LABEL_60;
        }

LABEL_46:
        v41 = objc_loadWeakRetained(v5 + 2);
        if (!v41 || (v42 = v41, v43 = objc_loadWeakRetained(v5 + 2), v44 = v43[435], v43, v42, (v44 & 1) == 0))
        {
          v45 = objc_loadWeakRetained(v5 + 2);
          if (v45)
          {
            v46 = objc_loadWeakRetained(v5 + 2);
            v40 = (v46[435] & 1) == 0;
          }

          else
          {
            v40 = 1;
          }

          v48 = 1;
LABEL_60:
          if (v40 && g_boringssl_log)
          {
            v49 = g_boringssl_log;
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              if (v48)
              {
                v40 = objc_loadWeakRetained(v5 + 2);
                v50 = v40 != 0;
                if (v40)
                {
                  v9 = objc_loadWeakRetained(v5 + 2);
                  v51 = v9 + 351;
                }

                else
                {
                  v51 = &unk_1A9098A9F;
                }

                v60 = objc_loadWeakRetained(v5 + 2);
              }

              else
              {
                v50 = 0;
                v60 = 0;
                v51 = &unk_1A9098A9F;
              }

              *buf = 136446978;
              v66 = "boringssl_context_copy_peer_sct_list_from_extension";
              v67 = 1024;
              v68 = 997;
              v69 = 2082;
              v70 = v51;
              v71 = 2048;
              v72 = v60;
              _os_log_error_impl(&dword_1A8FF5000, v49, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] CFDataCreate failed", buf, 0x26u);
              if (v48)
              {

                if (v50)
                {
                  goto LABEL_107;
                }

LABEL_104:
                if (v48)
                {
LABEL_108:
                }
              }

              else
              {
                if (!v50)
                {
                  goto LABEL_104;
                }

LABEL_107:

                if (v48)
                {
                  goto LABEL_108;
                }
              }
            }

LABEL_71:

            goto LABEL_72;
          }
        }

        goto LABEL_72;
      }

LABEL_19:
      v23 = v21;
      CFArrayAppendValue(v8, v21);
      CFRelease(v23);
      v10 = &v11[v13];
      v9 += -v13 - 2;
      if (!v9)
      {
        goto LABEL_37;
      }
    }
  }

  if (v5)
  {
    v27 = objc_loadWeakRetained(v5 + 2);
    if (v27)
    {
      v28 = v27;
      v29 = objc_loadWeakRetained(v5 + 2);
      v30 = v29[435];

      if (v30)
      {
        goto LABEL_73;
      }
    }

    v31 = objc_loadWeakRetained(v5 + 2);
    if (v31)
    {
      v32 = objc_loadWeakRetained(v5 + 2);
      v33 = (v32[435] & 1) == 0;
    }

    else
    {
      v33 = 1;
    }
  }

  else
  {
    v33 = 1;
  }

  v8 = 0;
  if (v33 && g_boringssl_log)
  {
    v47 = g_boringssl_log;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      if (v5)
      {
        v33 = objc_loadWeakRetained(v5 + 2);
        v54 = v33 != 0;
        if (v33)
        {
          a2 = objc_loadWeakRetained(v5 + 2);
          v56 = a2 + 351;
        }

        else
        {
          v56 = &unk_1A9098A9F;
        }

        v55 = objc_loadWeakRetained(v5 + 2);
      }

      else
      {
        v54 = 0;
        v55 = 0;
        v56 = &unk_1A9098A9F;
      }

      *buf = 136446978;
      v66 = "boringssl_context_copy_peer_sct_list_from_extension";
      v67 = 1024;
      v68 = 977;
      v69 = 2082;
      v70 = v56;
      v71 = 2048;
      v72 = v55;
      _os_log_error_impl(&dword_1A8FF5000, v47, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] CFArrayCreateMutable failed", buf, 0x26u);
      if (v5)
      {
      }

      if (v54)
      {
      }

      if (v5)
      {
      }
    }

    goto LABEL_73;
  }

LABEL_74:

  v52 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t boringssl_context_select_alpn_callback(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  *a3 = 0;
  if (a6)
  {
    if (*a6 == -1252936367)
    {
      v6 = *(a6 + 8);
      if (v6)
      {
        v9 = boringssl_helper_create_protocol_list_from_encoded_list(a4, a5);
        if (v9)
        {
          boringssl_helper_find_first_overlapping_protocol(*(v6 + 56), v9, a2, a3);
        }
      }
    }
  }

  return 0;
}

uint64_t boringssl_context_set_alpn_data(uint64_t a1, size_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 == -1252936367)
  {
    v4 = *(a1 + 8);
    v5 = !v4 || a3 == 0;
    if (!v5 && a2 != 0)
    {
      v7 = boringssl_helper_create_protocol_list_from_encoded_list(a3, a2);
      v8 = *(v4 + 56);
      *(v4 + 56) = v7;

      v9 = *(v4 + 56);
      if (v9)
      {
        return (boringssl_context_set_alpn_protocol_list(a1, v9, 0) - 1);
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t boringssl_context_set_allow_unknown_alpn_protos(uint64_t a1, int a2)
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

  SSL_CTX_set_allow_unknown_alpn_protos(*(v2 + 400), a2);
  return 0;
}

uint64_t boringssl_context_set_client_auth(uint64_t a1, int a2)
{
  if (!a1 || *a1 != -1252936367 || !*(a1 + 8))
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return boringssl_context_set_verify_mode(a1, v2);
}

uint64_t boringssl_context_set_signed_cert_timestamp_list(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1 || *a1 != -1252936367)
  {
    goto LABEL_29;
  }

  v5 = 0;
  if (!v3)
  {
    goto LABEL_30;
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
    goto LABEL_30;
  }

  size = dispatch_data_get_size(v3);
  buffer_from_dispatch_data = boringssl_helper_create_buffer_from_dispatch_data(v4);
  if (buffer_from_dispatch_data)
  {
    v9 = buffer_from_dispatch_data;
    v10 = *(v6 + 392);
    if (v10)
    {
      if (SSL_set_signed_cert_timestamp_list(v10, v9, size))
      {
        v5 = 1;
        goto LABEL_30;
      }

      WeakRetained = objc_loadWeakRetained((v6 + 16));
      if (!WeakRetained || (v19 = WeakRetained, v20 = objc_loadWeakRetained((v6 + 16)), v21 = v20[435], v20, v19, (v21 & 1) == 0))
      {
        v22 = objc_loadWeakRetained((v6 + 16));
        if (v22)
        {
          v23 = objc_loadWeakRetained((v6 + 16));
          v24 = (v23[435] & 1) == 0;
        }

        else
        {
          v24 = 1;
        }

        v5 = 0;
        if (v24 && g_boringssl_log)
        {
          v25 = g_boringssl_log;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            boringssl_context_set_signed_cert_timestamp_list_cold_1();
          }

LABEL_28:

          goto LABEL_29;
        }

        goto LABEL_30;
      }
    }

    else
    {
      free(v9);
    }

LABEL_29:
    v5 = 0;
    goto LABEL_30;
  }

  v11 = objc_loadWeakRetained((v6 + 16));
  if (v11)
  {
    v12 = v11;
    v13 = objc_loadWeakRetained((v6 + 16));
    v14 = v13[435];

    if (v14)
    {
      goto LABEL_29;
    }
  }

  v15 = objc_loadWeakRetained((v6 + 16));
  if (v15)
  {
    v16 = objc_loadWeakRetained((v6 + 16));
    v17 = (v16[435] & 1) == 0;
  }

  else
  {
    v17 = 1;
  }

  v5 = 0;
  if (v17 && g_boringssl_log)
  {
    v25 = g_boringssl_log;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      boringssl_context_set_signed_cert_timestamp_list_cold_2();
    }

    goto LABEL_28;
  }

LABEL_30:

  return v5;
}

uint64_t boringssl_context_set_ocsp_response(uint64_t a1, uint64_t a2)
{
  if (!a1 || *a1 != -1252936367)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(v2 + 392);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (SSL_set_ocsp_response(v3, *(a2 + 8), *a2))
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((v2 + 16));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = objc_loadWeakRetained((v2 + 16));
    v8 = v7[435];

    if (v8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v9 = objc_loadWeakRetained((v2 + 16));
  if (v9)
  {
    v10 = objc_loadWeakRetained((v2 + 16));
    v11 = (v10[435] & 1) == 0;
  }

  else
  {
    v11 = 1;
  }

  result = 0xFFFFFFFFLL;
  if (v11 && g_boringssl_log)
  {
    v12 = g_boringssl_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      boringssl_context_set_ocsp_response_cold_1();
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t boringssl_context_set_mtu(uint64_t a1, unsigned int a2)
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
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(v2 + 392);
  if (!v3 || (*(v2 + 548) & 0x20) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (SSL_set_mtu(v3, a2) == 1)
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t __boringssl_context_copy_global_trust_queue_for_qos_block_invoke(uint64_t a1)
{
  boringssl_context_copy_global_trust_queue_for_qos_userInteractiveQueue = boringssl_context_create_queue_for_qos(*(a1 + 32), "com.apple.network.boringssl.user_interactive_qos_trust_queue", QOS_CLASS_USER_INTERACTIVE);

  return MEMORY[0x1EEE66BB8]();
}

dispatch_queue_t boringssl_context_create_queue_for_qos(void *a1, const char *a2, dispatch_qos_class_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = dispatch_queue_attr_make_with_qos_class(0, a3, 0);
  if (v7)
  {
    goto LABEL_2;
  }

  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(v6 + 2);
    if (WeakRetained)
    {
      v12 = WeakRetained;
      v13 = objc_loadWeakRetained(v6 + 2);
      v14 = v13[435];

      if (v14)
      {
        goto LABEL_2;
      }
    }

    v15 = objc_loadWeakRetained(v6 + 2);
    if (v15)
    {
      v16 = objc_loadWeakRetained(v6 + 2);
      v17 = (v16[435] & 1) == 0;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      goto LABEL_2;
    }
  }

  else
  {
    v17 = 1;
  }

  if (g_boringssl_log)
  {
    v25 = g_boringssl_log;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      if (v6)
      {
        v17 = objc_loadWeakRetained(v6 + 2);
        v27 = v17 != 0;
        if (v17)
        {
          v3 = objc_loadWeakRetained(v6 + 2);
          v29 = v3 + 351;
        }

        else
        {
          v29 = &unk_1A9098A9F;
        }

        v28 = objc_loadWeakRetained(v6 + 2);
      }

      else
      {
        v27 = 0;
        v28 = 0;
        v29 = &unk_1A9098A9F;
      }

      *buf = 136447490;
      v35 = "boringssl_context_create_queue_for_qos";
      v36 = 1024;
      v37 = 1586;
      v38 = 2082;
      v39 = v29;
      v40 = 2048;
      v41 = v28;
      v42 = 1024;
      *v43 = a3;
      *&v43[4] = 2082;
      *&v43[6] = a2;
      _os_log_error_impl(&dword_1A8FF5000, v25, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] Failed to set the %u QoS class attribute for queue %{public}s.", buf, 0x36u);
      if (v6)
      {
      }

      if (v27)
      {
      }

      if (v6)
      {
      }
    }
  }

LABEL_2:
  v8 = dispatch_queue_create(a2, v7);
  if (v8)
  {
    goto LABEL_3;
  }

  if (v6)
  {
    v18 = objc_loadWeakRetained(v6 + 2);
    if (v18)
    {
      v19 = v18;
      v20 = objc_loadWeakRetained(v6 + 2);
      v21 = v20[435];

      if (v21)
      {
        goto LABEL_3;
      }
    }

    v22 = objc_loadWeakRetained(v6 + 2);
    if (v22)
    {
      v23 = objc_loadWeakRetained(v6 + 2);
      v24 = (v23[435] & 1) == 0;
    }

    else
    {
      v24 = 1;
    }

    if (!v24)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = 1;
  }

  if (g_boringssl_log)
  {
    v26 = g_boringssl_log;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      if (v6)
      {
        v24 = objc_loadWeakRetained(v6 + 2);
        v30 = v24 != 0;
        if (v24)
        {
          v33 = objc_loadWeakRetained(v6 + 2);
          v32 = v33 + 351;
        }

        else
        {
          v32 = &unk_1A9098A9F;
        }

        v31 = objc_loadWeakRetained(v6 + 2);
      }

      else
      {
        v30 = 0;
        v31 = 0;
        v32 = &unk_1A9098A9F;
      }

      *buf = 136447490;
      v35 = "boringssl_context_create_queue_for_qos";
      v36 = 1024;
      v37 = 1590;
      v38 = 2082;
      v39 = v32;
      v40 = 2048;
      v41 = v31;
      v42 = 2082;
      *v43 = a2;
      *&v43[8] = 1024;
      *&v43[10] = a3;
      _os_log_error_impl(&dword_1A8FF5000, v26, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] Failed to create queue %{public}s with QoS class %u.", buf, 0x36u);
      if (v6)
      {
      }

      if (v30)
      {
      }

      if (v6)
      {
      }
    }
  }

LABEL_3:

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t __boringssl_context_copy_global_trust_queue_for_qos_block_invoke_2(uint64_t a1)
{
  boringssl_context_copy_global_trust_queue_for_qos_userInitiatedQueue = boringssl_context_create_queue_for_qos(*(a1 + 32), "com.apple.network.boringssl.user_initiated_qos_trust_queue", QOS_CLASS_USER_INITIATED);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __boringssl_context_copy_global_trust_queue_for_qos_block_invoke_3(uint64_t a1)
{
  boringssl_context_copy_global_trust_queue_for_qos_defaultQueue = boringssl_context_create_queue_for_qos(*(a1 + 32), "com.apple.network.boringssl.unspecified_qos_trust_queue", QOS_CLASS_UNSPECIFIED);

  return MEMORY[0x1EEE66BB8]();
}

void boringssl_context_async(uint64_t a1, dispatch_queue_t queue, dispatch_block_t block)
{
  if (a1 && queue)
  {
    if (block)
    {
      ++*(a1 + 496);
      dispatch_async(queue, block);
    }
  }
}

uint64_t __boringssl_context_evaluate_trust_async_internal_block_invoke_196(uint64_t a1)
{
  *(*(a1 + 32) + 551) |= 0x20u;
  *(*(a1 + 48) + 550) &= ~8u;
  boringssl_context_process_trust_result(*(a1 + 56), *(a1 + 64), *(a1 + 72));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __boringssl_context_evaluate_trust_async_internal_block_invoke_200(void *a1)
{
  *(a1[4] + 551) |= 0x20u;
  *(a1[6] + 550) &= ~8u;
  return (*(a1[5] + 16))();
}

uint64_t boringssl_context_certificate_request_callback(SSL *a1, uint64_t a2)
{
  v3 = a2;
  v62 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (*a2 == -1252936367 && (v4 = *(a2 + 8)) != 0)
    {
      *(v4 + 550) |= 0x10u;
      if ((*(v4 + 549) & 4) == 0)
      {
        v6 = *(v4 + 96);
        WeakRetained = objc_loadWeakRetained((v4 + 16));
        v8 = WeakRetained;
        if (v6)
        {
          if (!WeakRetained || (v9 = objc_loadWeakRetained((v4 + 16)), v10 = v9[435], v9, v8, (v10 & 1) == 0))
          {
            v11 = objc_loadWeakRetained((v4 + 16));
            if (v11)
            {
              v12 = objc_loadWeakRetained((v4 + 16));
              v13 = (v12[435] & 1) == 0;
            }

            else
            {
              v13 = 1;
            }

            if (v13)
            {
              if (g_boringssl_log)
              {
                v35 = g_boringssl_log;
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                {
                  boringssl_context_certificate_request_callback_cold_2();
                }
              }
            }
          }

          *(v4 + 549) |= 4u;
          goto LABEL_45;
        }

        if (SSL_renegotiate_pending(a1))
        {
          if (v8)
          {
            nw_protocol_upcast();
            if (nw_protocol_get_input_handler())
            {
              v23 = nw_protocol_get_parameters();
              nw_protocol_upcast();
              v24 = nw_parameters_copy_protocol_options_legacy();
              if (v24)
              {
                v49 = MEMORY[0x1E69E9820];
                v50 = 3221225472;
                v51 = __boringssl_context_certificate_request_callback_block_invoke;
                v52 = &__block_descriptor_40_e9_B16__0_v8lu32l8;
                v53 = v4;
                nw_protocol_options_access_handle();
              }
            }
          }
        }

        if (*v3 == -1252936367 && (v25 = *(v3 + 8)) != 0 && *(v25 + 128) && *(v25 + 136) && (*(v25 + 551) & 4) == 0)
        {
          boringssl_session_update_metadata(v3);
          v26 = MEMORY[0x1AC57F4F0](*(v4 + 128));
          v27 = v4;
          v28 = objc_loadWeakRetained((v4 + 16));
          if (!v28 || (v29 = v28, v30 = objc_loadWeakRetained((v4 + 16)), v31 = v30[435], v30, v29, (v31 & 1) == 0))
          {
            v32 = objc_loadWeakRetained((v4 + 16));
            if (v32)
            {
              v33 = objc_loadWeakRetained((v4 + 16));
              v34 = (v33[435] & 1) == 0;
            }

            else
            {
              v34 = 1;
            }

            if (v34)
            {
              if (g_boringssl_log)
              {
                v36 = g_boringssl_log;
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  v37 = objc_loadWeakRetained((v4 + 16));
                  if (v37)
                  {
                    v2 = objc_loadWeakRetained((v4 + 16));
                    v38 = v2 + 351;
                  }

                  else
                  {
                    v38 = &unk_1A9098A9F;
                  }

                  v39 = objc_loadWeakRetained((v4 + 16));
                  *buf = 136446978;
                  v55 = "boringssl_context_certificate_request_callback";
                  v56 = 1024;
                  v57 = 1891;
                  v58 = 2082;
                  v59 = v38;
                  v60 = 2048;
                  v61 = v39;
                  _os_log_impl(&dword_1A8FF5000, v36, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] Asyncing for challenge block", buf, 0x26u);

                  if (v37)
                  {
                  }
                }
              }
            }
          }

          v40 = v27[17];
          v45[0] = MEMORY[0x1E69E9820];
          v45[1] = 3221225472;
          v45[2] = __boringssl_context_certificate_request_callback_block_invoke_213;
          v45[3] = &unk_1E78696D8;
          v48 = v3;
          v41 = v26;
          v47 = v41;
          v42 = v27;
          v43 = v42;
          v46 = v42;
          v44 = v42;
          if (v40)
          {
            ++v42[62];
            dispatch_async(v40, v45);
            v44 = v46;
          }

          v3 = 0xFFFFFFFFLL;
        }

        else
        {
          v3 = 1;
        }

        goto LABEL_37;
      }

      v16 = objc_loadWeakRetained((v4 + 16));
      if (v16)
      {
        v17 = v16;
        v18 = objc_loadWeakRetained((v4 + 16));
        v19 = v18[435];

        if (v19)
        {
LABEL_45:
          v3 = 1;
          goto LABEL_11;
        }
      }

      v20 = objc_loadWeakRetained((v4 + 16));
      if (v20)
      {
        v21 = objc_loadWeakRetained((v4 + 16));
        v22 = (v21[435] & 1) == 0;
      }

      else
      {
        v22 = 1;
      }

      v3 = 1;
      if (v22 && g_boringssl_log)
      {
        v8 = g_boringssl_log;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          boringssl_context_certificate_request_callback_cold_1();
        }

LABEL_37:
      }
    }

    else
    {
      v3 = 0;
    }
  }

LABEL_11:
  v14 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t __boringssl_context_certificate_request_callback_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1AC57F4F0](*(a2 + 104));
  v5 = *(a1 + 32);
  v6 = *(v5 + 128);
  *(v5 + 128) = v4;

  objc_storeStrong((*(a1 + 32) + 136), *(a2 + 112));
  return 1;
}

void __boringssl_context_certificate_request_callback_block_invoke_213(void *a1)
{
  if (boringssl_session_get_state(a1[6]) <= 3 && (boringssl_session_is_cancelled(a1[6]) & 1) == 0)
  {
    v2 = a1[4];
    v3 = a1[5];
    v4 = v2[64];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __boringssl_context_certificate_request_callback_block_invoke_2;
    v7[3] = &unk_1E78696B0;
    v5 = v2;
    v6 = a1[6];
    v8 = v5;
    v9 = v6;
    (*(v3 + 16))(v3, v4, v7);
  }
}

void __boringssl_context_certificate_request_callback_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[3];
  v8 = *(a1 + 40);
  v7 = v4;
  v6 = v3;
  nw_queue_context_async_if_needed();
}

void __boringssl_context_certificate_request_callback_block_invoke_3(void *a1)
{
  v64 = *MEMORY[0x1E69E9840];
  if (boringssl_session_get_state(a1[6]) <= 3 && (boringssl_session_is_cancelled(a1[6]) & 1) == 0)
  {
    v12 = a1[4];
    if (v12)
    {
      WeakRetained = objc_loadWeakRetained((v12 + 16));
      if (WeakRetained)
      {
        v14 = WeakRetained;
        v15 = objc_loadWeakRetained((a1[4] + 16));
        v16 = v15[435];

        if (v16)
        {
          goto LABEL_58;
        }
      }

      v17 = a1[4];
      if (v17)
      {
        v18 = objc_loadWeakRetained((v17 + 16));
        if (v18)
        {
          v19 = objc_loadWeakRetained((a1[4] + 16));
          v20 = (v19[435] & 1) == 0;
        }

        else
        {
          v20 = 1;
        }

        if (v20)
        {
LABEL_30:
          if (!g_boringssl_log)
          {
            goto LABEL_58;
          }

          v28 = g_boringssl_log;
          if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_57;
          }

          v29 = a1[4];
          if (v29)
          {
            v20 = objc_loadWeakRetained((v29 + 16));
            v30 = a1[4];
            if (v20)
            {
              v31 = v30 != 0;
              if (v30)
              {
                v1 = objc_loadWeakRetained((v30 + 16));
                v30 = a1[4];
              }

              else
              {
                v1 = 0;
              }

              v34 = v1 + 351;
            }

            else
            {
              v31 = 0;
              v34 = &unk_1A9098A9F;
            }

            if (v30)
            {
              v32 = objc_loadWeakRetained((v30 + 16));
              v33 = 0;
            }

            else
            {
              v32 = 0;
              v33 = 1;
            }
          }

          else
          {
            v31 = 0;
            v32 = 0;
            v33 = 1;
            v34 = &unk_1A9098A9F;
          }

          v56 = 136446978;
          v57 = "boringssl_context_certificate_request_callback_block_invoke_3";
          v58 = 1024;
          v59 = 1900;
          v60 = 2082;
          v61 = v34;
          v62 = 2048;
          v63 = v32;
          _os_log_impl(&dword_1A8FF5000, v28, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] Returning from challenge block", &v56, 0x26u);
          if (v33)
          {
            if (!v31)
            {
              goto LABEL_55;
            }
          }

          else
          {

            if (!v31)
            {
LABEL_55:
              if (!v29)
              {
LABEL_57:

                goto LABEL_58;
              }

LABEL_56:

              goto LABEL_57;
            }
          }

          if (!v29)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        }

LABEL_58:
        v35 = a1[5];
        if (v35)
        {
          v36 = boringssl_context_set_identity(a1[6], v35);
          v37 = a1[4];
          if (!v36)
          {
            if (!v37)
            {
              goto LABEL_68;
            }

            v38 = objc_loadWeakRetained((v37 + 16));
            if (v38)
            {
              v39 = v38;
              v40 = objc_loadWeakRetained((a1[4] + 16));
              v41 = v40[435];

              if (v41)
              {
                goto LABEL_77;
              }
            }

            v42 = a1[4];
            if (v42)
            {
              v43 = objc_loadWeakRetained((v42 + 16));
              if (v43)
              {
                v44 = objc_loadWeakRetained((a1[4] + 16));
                v45 = (v44[435] & 1) == 0;
              }

              else
              {
                v45 = 1;
              }

              if (!v45)
              {
                goto LABEL_77;
              }
            }

            else
            {
LABEL_68:
              v45 = 1;
            }

            if (!g_boringssl_log)
            {
LABEL_77:
              v47 = a1[4];
              v48 = *(v47 + 272);
              v21 = objc_loadWeakRetained((v47 + 16));
              (*(v48 + 16))(v48, v21, 0, 4294957486);
              goto LABEL_78;
            }

            v46 = g_boringssl_log;
            if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
LABEL_76:

              goto LABEL_77;
            }

            v50 = a1[4];
            if (v50)
            {
              v45 = objc_loadWeakRetained((v50 + 16));
              v55 = a1[4];
              if (v45)
              {
                v51 = v55 != 0;
                if (v55)
                {
                  v1 = objc_loadWeakRetained((v55 + 16));
                  v55 = a1[4];
                }

                else
                {
                  v1 = 0;
                }

                v54 = v1 + 351;
              }

              else
              {
                v51 = 0;
                v54 = &unk_1A9098A9F;
              }

              if (v55)
              {
                v52 = objc_loadWeakRetained((v55 + 16));
                v53 = 0;
              }

              else
              {
                v52 = 0;
                v53 = 1;
              }
            }

            else
            {
              v51 = 0;
              v52 = 0;
              v53 = 1;
              v54 = &unk_1A9098A9F;
            }

            v56 = 136446978;
            v57 = "boringssl_context_certificate_request_callback_block_invoke";
            v58 = 1024;
            v59 = 1903;
            v60 = 2082;
            v61 = v54;
            v62 = 2048;
            v63 = v52;
            _os_log_error_impl(&dword_1A8FF5000, v46, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] boringssl_context_set_identity failed", &v56, 0x26u);
            if (v53)
            {
              if (!v51)
              {
                goto LABEL_93;
              }
            }

            else
            {

              if (!v51)
              {
LABEL_93:
                if (!v50)
                {
                  goto LABEL_76;
                }

                goto LABEL_97;
              }
            }

            if (!v50)
            {
              goto LABEL_76;
            }

LABEL_97:

            goto LABEL_76;
          }
        }

        else
        {
          v37 = a1[4];
        }

        *(v37 + 549) |= 4u;
        v21 = objc_loadWeakRetained((a1[4] + 16));
        nw_protocol_boringssl_handshake_negotiate(v21);
        goto LABEL_78;
      }
    }

    v20 = 1;
    goto LABEL_30;
  }

  v3 = a1[4];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = objc_loadWeakRetained((v3 + 16));
  if (v4)
  {
    v5 = v4;
    v6 = objc_loadWeakRetained((a1[4] + 16));
    v7 = v6[435];

    if (v7)
    {
      goto LABEL_79;
    }
  }

  v8 = a1[4];
  if (v8)
  {
    v9 = objc_loadWeakRetained((v8 + 16));
    if (v9)
    {
      v10 = objc_loadWeakRetained((a1[4] + 16));
      v11 = (v10[435] & 1) == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      goto LABEL_79;
    }
  }

  else
  {
LABEL_9:
    v11 = 1;
  }

  if (g_boringssl_log)
  {
    v21 = g_boringssl_log;
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_78;
    }

    v22 = a1[4];
    if (v22)
    {
      v11 = objc_loadWeakRetained((v22 + 16));
      v23 = a1[4];
      if (v11)
      {
        v24 = v23 != 0;
        if (v23)
        {
          v1 = objc_loadWeakRetained((v23 + 16));
          v23 = a1[4];
        }

        else
        {
          v1 = 0;
        }

        v27 = v1 + 351;
        if (v23)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v24 = 0;
        v27 = &unk_1A9098A9F;
        if (v23)
        {
LABEL_38:
          v25 = objc_loadWeakRetained((v23 + 16));
          v26 = 0;
          goto LABEL_39;
        }
      }

      v25 = 0;
      v26 = 1;
    }

    else
    {
      v24 = 0;
      v25 = 0;
      v26 = 1;
      v27 = &unk_1A9098A9F;
    }

LABEL_39:
    v56 = 136446978;
    v57 = "boringssl_context_certificate_request_callback_block_invoke";
    v58 = 1024;
    v59 = 1910;
    v60 = 2082;
    v61 = v27;
    v62 = 2048;
    v63 = v25;
    _os_log_impl(&dword_1A8FF5000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] Cancelled during challenge block", &v56, 0x26u);
    if (v26)
    {
      if (!v24)
      {
        goto LABEL_41;
      }
    }

    else
    {

      if (!v24)
      {
LABEL_41:
        if (!v22)
        {
          goto LABEL_78;
        }

        goto LABEL_45;
      }
    }

    if (v22)
    {
LABEL_45:
    }

LABEL_78:
  }

LABEL_79:
  v49 = *MEMORY[0x1E69E9840];
}

BOOL boringssl_context_set_identity(uint64_t a1, void *a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (!a1)
  {
    goto LABEL_58;
  }

  if (*a1 != -1252936367)
  {
    goto LABEL_58;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    goto LABEL_58;
  }

  if (SSL_has_server_raw_public_key_certificate(*(v5 + 392)))
  {
    v6 = v4;
    v7 = v6;
    if (*a1 == -1252936367)
    {
      v8 = *(a1 + 8);
      if (v8)
      {
        v9 = boringssl_identity_create_from_identity_without_certificates(v6);
        v10 = *(v8 + 96);
        *(v8 + 96) = v9;

        if (*(v8 + 96))
        {
          WeakRetained = objc_loadWeakRetained((v8 + 16));
          if (!WeakRetained || (v12 = WeakRetained, v13 = objc_loadWeakRetained((v8 + 16)), v2 = v13[435], v13, v12, (v2 & 1) == 0))
          {
            v14 = objc_loadWeakRetained((v8 + 16));
            if (v14)
            {
              v15 = objc_loadWeakRetained((v8 + 16));
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
                v42 = g_boringssl_log;
                if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
                {
                  v43 = objc_loadWeakRetained((v8 + 16));
                  if (v43)
                  {
                    v2 = objc_loadWeakRetained((v8 + 16));
                    v44 = v2 + 351;
                  }

                  else
                  {
                    v44 = &unk_1A9098A9F;
                  }

                  v49 = objc_loadWeakRetained((v8 + 16));
                  *buf = 136446978;
                  *&buf[4] = "boringssl_context_set_identity_without_certificates";
                  v61 = 1024;
                  v62 = 2111;
                  v63 = 2082;
                  v64 = v44;
                  v65 = 2048;
                  v66 = v49;
                  _os_log_impl(&dword_1A8FF5000, v42, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] Calling SSL_set_private_key_method", buf, 0x26u);

                  if (v43)
                  {
                  }
                }
              }
            }
          }

          SSL_set_private_key_method(*(v8 + 392), g_boringssl_private_key_methods);
          v30 = 1;
          goto LABEL_35;
        }
      }
    }

    goto LABEL_34;
  }

  v17 = sec_identity_copy_type();
  if (v17 == 2)
  {
    v31 = SSL_CREDENTIAL_new_SPAKE2PLUSV1();
    v7 = sec_identity_copy_SPAKE2PLUSV1_context();
    v59 = 0;
    *buf = 0;
    if (!boringssl_helper_dispatch_data_copyout_and_alloc(v7, buf, &v59))
    {
LABEL_34:
      v30 = 0;
LABEL_35:

      goto LABEL_59;
    }

    v32 = sec_identity_copy_SPAKE2PLUSV1_client_identity();
    v57 = 0;
    v58 = 0;
    if (!boringssl_helper_dispatch_data_copyout_and_alloc(v32, &v58, &v57))
    {
      if (*buf)
      {
        free(*buf);
        v30 = 0;
        *buf = 0;
      }

      else
      {
        v30 = 0;
      }

      goto LABEL_87;
    }

    v33 = sec_identity_copy_SPAKE2PLUSV1_server_identity();
    v55 = 0;
    v56 = 0;
    if (boringssl_helper_dispatch_data_copyout_and_alloc(v33, &v56, &v55))
    {
      SSL_CREDENTIAL_set1_PAKE_identities(v31, *buf, v59, v58, v57, v56, v55);
      if (*buf)
      {
        free(*buf);
        *buf = 0;
      }

      if (v58)
      {
        free(v58);
        v58 = 0;
      }

      if (v56)
      {
        free(v56);
        v56 = 0;
      }

      if ((*(v5 + 548) & 0x10) != 0)
      {
        v34 = sec_identity_copy_SPAKE2PLUSV1_server_password_verifier();
        v53 = 0;
        v54 = 0;
        if (boringssl_helper_dispatch_data_copyout_and_alloc(v34, &v54, &v53))
        {
          v50 = sec_identity_copy_SPAKE2PLUSV1_registration_record();
          v51 = 0;
          v52 = 0;
          if (boringssl_helper_dispatch_data_copyout_and_alloc(v50, &v52, &v51))
          {
            SSL_CREDENTIAL_set1_PAKE_server_password_record(v31, v54, v53, v52, v51);
            if (v54)
            {
              free(v54);
              v54 = 0;
            }

            if (v52)
            {
              free(v52);
            }

            goto LABEL_80;
          }

          if (v54)
          {
            free(v54);
            v54 = 0;
          }
        }
      }

      else
      {
        v34 = sec_identity_copy_SPAKE2PLUSV1_client_password_verifier();
        v53 = 0;
        v54 = 0;
        if (boringssl_helper_dispatch_data_copyout_and_alloc(v34, &v54, &v53))
        {
          SSL_CREDENTIAL_set1_PAKE_client_password_record(v31, v54, v53);
          if (v54)
          {
            free(v54);
          }

LABEL_80:

          v30 = SSL_add1_credential(*(v5 + 392), v31) == 1;
          SSL_CREDENTIAL_free(v31);
          *(v5 + 552) |= 0x40u;
          goto LABEL_86;
        }
      }
    }

    else
    {
      if (*buf)
      {
        free(*buf);
        *buf = 0;
      }

      if (v58)
      {
        free(v58);
        v30 = 0;
        v58 = 0;
LABEL_86:

LABEL_87:
        goto LABEL_35;
      }
    }

    v30 = 0;
    goto LABEL_86;
  }

  v18 = v17;
  if (v17 == 1)
  {
    v27 = boringssl_identity_create_from_identity(v4);
    v28 = *(v5 + 96);
    *(v5 + 96) = v27;

    v29 = *(v5 + 96);
    if (v29)
    {
      v30 = boringssl_context_install_identity(a1, v29);
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  v19 = (v5 + 16);
  if (v18)
  {
    v35 = objc_loadWeakRetained(v19);
    if (!v35 || (v36 = v35, v37 = objc_loadWeakRetained((v5 + 16)), v38 = v37[435], v37, v36, (v38 & 1) == 0))
    {
      v39 = objc_loadWeakRetained((v5 + 16));
      if (v39)
      {
        v40 = objc_loadWeakRetained((v5 + 16));
        v41 = (v40[435] & 1) == 0;
      }

      else
      {
        v41 = 1;
      }

      v30 = 0;
      if (v41 && g_boringssl_log)
      {
        v46 = g_boringssl_log;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          boringssl_context_set_identity_cold_2();
        }

        goto LABEL_58;
      }

      goto LABEL_59;
    }

LABEL_58:
    v30 = 0;
    goto LABEL_59;
  }

  v20 = objc_loadWeakRetained(v19);
  if (v20)
  {
    v21 = v20;
    v22 = objc_loadWeakRetained((v5 + 16));
    v23 = v22[435];

    if (v23)
    {
      goto LABEL_58;
    }
  }

  v24 = objc_loadWeakRetained((v5 + 16));
  if (v24)
  {
    v25 = objc_loadWeakRetained((v5 + 16));
    v26 = (v25[435] & 1) == 0;
  }

  else
  {
    v26 = 1;
  }

  v30 = 0;
  if (v26 && g_boringssl_log)
  {
    v45 = g_boringssl_log;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      boringssl_context_set_identity_cold_1();
    }

    goto LABEL_58;
  }

LABEL_59:

  v47 = *MEMORY[0x1E69E9840];
  return v30;
}

uint64_t boringssl_context_set_identity_from_array(uint64_t a1, const __CFArray *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 != -1252936367)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (a2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      if (*(v4 + 392))
      {
        v5 = boringssl_identity_create_from_identity_array(a2);
        v6 = *(v4 + 96);
        *(v4 + 96) = v5;

        v7 = *(v4 + 96);
        if (v7)
        {
          return (boringssl_context_install_identity(a1, v7) - 1);
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

BOOL boringssl_context_install_identity(uint64_t a1, void *a2)
{
  v71[2] = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = v4;
  if (*a1 != -1252936367)
  {
    goto LABEL_39;
  }

  v6 = 0;
  if (!v4)
  {
    goto LABEL_40;
  }

  v7 = *(a1 + 8);
  if (!v7)
  {
    goto LABEL_40;
  }

  if (!*(v7 + 392))
  {
LABEL_39:
    v6 = 0;
    goto LABEL_40;
  }

  v8 = boringssl_identity_copy_certificate_chain(v4);
  certificate_buffer_chain_from_certificate_chain = boringssl_helper_create_certificate_buffer_chain_from_certificate_chain(v8);

  if (!certificate_buffer_chain_from_certificate_chain)
  {
    WeakRetained = objc_loadWeakRetained((v7 + 16));
    if (WeakRetained)
    {
      v22 = WeakRetained;
      v23 = objc_loadWeakRetained((v7 + 16));
      v24 = v23[435];

      if (v24)
      {
        goto LABEL_39;
      }
    }

    v25 = objc_loadWeakRetained((v7 + 16));
    if (v25)
    {
      v26 = objc_loadWeakRetained((v7 + 16));
      v27 = (v26[435] & 1) == 0;
    }

    else
    {
      v27 = 1;
    }

    v6 = 0;
    if (!v27 || !g_boringssl_log)
    {
      goto LABEL_40;
    }

    v38 = g_boringssl_log;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      boringssl_context_install_identity_cold_2();
    }

LABEL_38:

    goto LABEL_39;
  }

  v10 = EVP_MD_CTX_md(certificate_buffer_chain_from_certificate_chain);
  v11 = malloc_type_malloc(8 * v10, 0x66D395AFuLL);
  if (!v11)
  {
    OPENSSL_sk_pop_free_ex(certificate_buffer_chain_from_certificate_chain, sk_CRYPTO_BUFFER_call_free_func_0, CRYPTO_BUFFER_free);
    v28 = objc_loadWeakRetained((v7 + 16));
    if (v28)
    {
      v29 = v28;
      v30 = objc_loadWeakRetained((v7 + 16));
      v31 = v30[435];

      if (v31)
      {
        goto LABEL_39;
      }
    }

    v32 = objc_loadWeakRetained((v7 + 16));
    if (v32)
    {
      v33 = objc_loadWeakRetained((v7 + 16));
      v34 = (v33[435] & 1) == 0;
    }

    else
    {
      v34 = 1;
    }

    v6 = 0;
    if (!v34 || !g_boringssl_log)
    {
      goto LABEL_40;
    }

    v38 = g_boringssl_log;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      boringssl_context_install_identity_cold_1();
    }

    goto LABEL_38;
  }

  v12 = v11;
  if (EVP_MD_CTX_md(certificate_buffer_chain_from_certificate_chain))
  {
    v13 = 0;
    do
    {
      v12[v13] = OPENSSL_sk_value(certificate_buffer_chain_from_certificate_chain, v13);
      ++v13;
    }

    while (v13 < EVP_MD_CTX_md(certificate_buffer_chain_from_certificate_chain));
  }

  v14 = objc_loadWeakRetained((v7 + 16));
  if (!v14 || (v15 = v14, v16 = objc_loadWeakRetained((v7 + 16)), v17 = v16[435], v16, v15, (v17 & 1) == 0))
  {
    v18 = objc_loadWeakRetained((v7 + 16));
    if (v18)
    {
      v19 = objc_loadWeakRetained((v7 + 16));
      v20 = (v19[435] & 1) == 0;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      if (g_boringssl_log)
      {
        v35 = g_boringssl_log;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = objc_loadWeakRetained((v7 + 16));
          if (v36)
          {
            v2 = objc_loadWeakRetained((v7 + 16));
            v37 = v2 + 351;
          }

          else
          {
            v37 = &unk_1A9098A9F;
          }

          v41 = objc_loadWeakRetained((v7 + 16));
          *buf = 136447234;
          v63 = "boringssl_context_install_identity";
          v64 = 1024;
          v65 = 2070;
          v66 = 2082;
          v67 = v37;
          v68 = 2048;
          v69 = v41;
          v70 = 2048;
          v71[0] = EVP_MD_CTX_md(certificate_buffer_chain_from_certificate_chain);
          _os_log_impl(&dword_1A8FF5000, v35, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] Calling SSL_set_chain_and_key with %zu certificates", buf, 0x30u);

          if (v36)
          {
          }
        }
      }
    }
  }

  v42 = *(v7 + 392);
  v43 = EVP_MD_CTX_md(certificate_buffer_chain_from_certificate_chain);
  v44 = SSL_set_chain_and_key(v42, v12, v43, 0, g_boringssl_private_key_methods);
  v6 = v44 != 0;
  if (!v44)
  {
    error = ERR_get_error();
    v46 = error;
    v47 = ERR_reason_error_string(error);
    v48 = objc_loadWeakRetained((v7 + 16));
    if (!v48 || (v49 = v48, v50 = objc_loadWeakRetained((v7 + 16)), v51 = v50[435], v50, v49, (v51 & 1) == 0))
    {
      v52 = objc_loadWeakRetained((v7 + 16));
      if (v52)
      {
        v53 = objc_loadWeakRetained((v7 + 16));
        v54 = (v53[435] & 1) == 0;
      }

      else
      {
        v54 = 1;
      }

      if (v54)
      {
        if (g_boringssl_log)
        {
          v55 = g_boringssl_log;
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            v56 = objc_loadWeakRetained((v7 + 16));
            if (v56)
            {
              v60 = objc_loadWeakRetained((v7 + 16));
              v61 = v60 + 351;
            }

            else
            {
              v61 = &unk_1A9098A9F;
            }

            v57 = objc_loadWeakRetained((v7 + 16));
            v58 = v57;
            *buf = 136447490;
            v63 = "boringssl_context_install_identity";
            if (v47)
            {
              v59 = v47;
            }

            else
            {
              v59 = &unk_1A9098A9F;
            }

            v64 = 1024;
            v65 = 2075;
            v66 = 2082;
            v67 = v61;
            v68 = 2048;
            v69 = v57;
            v70 = 1024;
            LODWORD(v71[0]) = v46;
            WORD2(v71[0]) = 2080;
            *(v71 + 6) = v59;
            _os_log_error_impl(&dword_1A8FF5000, v55, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] SSL_set_chain_and_key failed: %d %s", buf, 0x36u);

            if (v56)
            {
            }
          }
        }
      }
    }
  }

  OPENSSL_sk_pop_free_ex(certificate_buffer_chain_from_certificate_chain, sk_CRYPTO_BUFFER_call_free_func_0, CRYPTO_BUFFER_free);
  free(v12);
LABEL_40:

  v39 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t boringssl_context_set_temporary_identity(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (*a1 == -1252936367)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        if (v3)
        {
          v7 = *(v5 + 96);
          v6 = (v5 + 96);
          objc_storeStrong(v6 + 1, v7);
          v8 = boringssl_identity_create_from_identity(v4);
          v9 = *v6;
          *v6 = v8;

          if (*v6 && boringssl_context_install_identity(a1, *v6))
          {
            a1 = 1;
            goto LABEL_12;
          }

          objc_storeStrong(v6, v6[1]);
          v10 = v6[1];
          v6[1] = 0;
        }

        else
        {
          v11 = *(v5 + 104);
          if (v11)
          {
            objc_storeStrong((v5 + 96), v11);
            v12 = *(v5 + 104);
            *(v5 + 104) = 0;

            a1 = boringssl_context_install_identity(a1, *(v5 + 96));
            goto LABEL_12;
          }
        }
      }
    }

    a1 = 0;
  }

LABEL_12:

  return a1;
}

BOOL boringssl_context_set_external_identity(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (!a1 || *a1 != -1252936367)
  {
    goto LABEL_10;
  }

  v14 = 0;
  if (v12)
  {
    if (v11)
    {
      if (v10)
      {
        if (v9)
        {
          v15 = *(a1 + 8);
          if (v15)
          {
            v16 = boringssl_identity_create_from_external_identity(v9, v10, v11, v12);
            v17 = *(v15 + 96);
            *(v15 + 96) = v16;

            v18 = *(v15 + 96);
            if (v18)
            {
              v14 = boringssl_context_install_identity(a1, v18);
              goto LABEL_11;
            }

LABEL_10:
            v14 = 0;
          }
        }
      }
    }
  }

LABEL_11:

  return v14;
}

uint64_t boringssl_context_ssl_context_create_datagram(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 1;
  }

  if (*a1 != -1252936367)
  {
    return 1;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained((v3 + 16));

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained((v3 + 16));
    WeakRetained = v6[36];
  }

  v7 = DTLS_with_buffers_method();
  v8 = boringssl_context_restore_ssl_context(v3, WeakRetained, v7);
  *(v3 + 400) = v8;
  if (a2)
  {
    v9 = 48;
  }

  else
  {
    v9 = 32;
  }

  *(v3 + 548) = v9 | *(v3 + 548) & 0xCF;
  if (v8)
  {
    v10 = boringssl_context_configure_defaults(a1);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL __boringssl_context_zlib_compress_data_block_invoke(uint64_t a1, const void *a2, size_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = CBB_add_bytes(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_14;
    }

    WeakRetained = objc_loadWeakRetained((v6 + 16));
    if (WeakRetained)
    {
      v8 = WeakRetained;
      v9 = objc_loadWeakRetained((*(a1 + 40) + 16));
      v10 = v9[435];

      if (v10)
      {
        goto LABEL_27;
      }
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      v12 = objc_loadWeakRetained((v11 + 16));
      if (v12)
      {
        v13 = objc_loadWeakRetained((*(a1 + 40) + 16));
        v14 = (v13[435] & 1) == 0;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        goto LABEL_27;
      }
    }

    else
    {
LABEL_14:
      v14 = 1;
    }

    if (g_boringssl_log)
    {
      v22 = g_boringssl_log;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = *(a1 + 40);
        if (v23)
        {
          v14 = objc_loadWeakRetained((v23 + 16));
          v32 = *(a1 + 40);
          if (v14)
          {
            v24 = v32 != 0;
            if (v32)
            {
              v3 = objc_loadWeakRetained((v32 + 16));
              v32 = *(a1 + 40);
            }

            else
            {
              v3 = 0;
            }

            v27 = v3 + 351;
          }

          else
          {
            v24 = 0;
            v27 = &unk_1A9098A9F;
          }

          if (v32)
          {
            v25 = objc_loadWeakRetained((v32 + 16));
            v26 = 0;
          }

          else
          {
            v25 = 0;
            v26 = 1;
          }
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v26 = 1;
          v27 = &unk_1A9098A9F;
        }

        v34 = 136446978;
        v35 = "boringssl_context_zlib_compress_data_block_invoke";
        v36 = 1024;
        v37 = 756;
        v38 = 2082;
        v39 = v27;
        v40 = 2048;
        v41 = v25;
        _os_log_debug_impl(&dword_1A8FF5000, v22, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] Wrote compressed certificate data", &v34, 0x26u);
        if (v26)
        {
          goto LABEL_45;
        }

        goto LABEL_44;
      }

      goto LABEL_26;
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_15;
    }

    v15 = objc_loadWeakRetained((v6 + 16));
    if (v15)
    {
      v16 = v15;
      v17 = objc_loadWeakRetained((*(a1 + 40) + 16));
      v18 = v17[435];

      if (v18)
      {
        goto LABEL_27;
      }
    }

    v19 = *(a1 + 40);
    if (v19)
    {
      v20 = objc_loadWeakRetained((v19 + 16));
      if (v20)
      {
        v21 = objc_loadWeakRetained((*(a1 + 40) + 16));
        v14 = (v21[435] & 1) == 0;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        goto LABEL_27;
      }
    }

    else
    {
LABEL_15:
      v14 = 1;
    }

    if (g_boringssl_log)
    {
      v22 = g_boringssl_log;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 40);
        if (v23)
        {
          v14 = objc_loadWeakRetained((v23 + 16));
          v33 = *(a1 + 40);
          if (v14)
          {
            v24 = v33 != 0;
            if (v33)
            {
              v3 = objc_loadWeakRetained((v33 + 16));
              v33 = *(a1 + 40);
            }

            else
            {
              v3 = 0;
            }

            v31 = v3 + 351;
          }

          else
          {
            v24 = 0;
            v31 = &unk_1A9098A9F;
          }

          if (v33)
          {
            v25 = objc_loadWeakRetained((v33 + 16));
            v30 = 0;
          }

          else
          {
            v25 = 0;
            v30 = 1;
          }
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v30 = 1;
          v31 = &unk_1A9098A9F;
        }

        v34 = 136446978;
        v35 = "boringssl_context_zlib_compress_data_block_invoke";
        v36 = 1024;
        v37 = 753;
        v38 = 2082;
        v39 = v31;
        v40 = 2048;
        v41 = v25;
        _os_log_error_impl(&dword_1A8FF5000, v22, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] CBB_add_bytes failed", &v34, 0x26u);
        if (v30)
        {
          goto LABEL_45;
        }

LABEL_44:

LABEL_45:
        if (v24)
        {
        }

        if (v23)
        {
        }
      }

LABEL_26:
    }
  }

LABEL_27:
  result = v5 != 0;
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL __boringssl_context_zlib_uncompress_data_block_invoke(void *a1, const void *a2, size_t __n)
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = *(*(a1[4] + 8) + 24);
  v7 = a1[5] - v6;
  if (v7 < __n)
  {
    v17 = a1[6];
    if (!v17)
    {
      goto LABEL_15;
    }

    WeakRetained = objc_loadWeakRetained((v17 + 16));
    if (WeakRetained)
    {
      v19 = WeakRetained;
      v20 = objc_loadWeakRetained((a1[6] + 16));
      v21 = v20[435];

      if (v21)
      {
        goto LABEL_27;
      }
    }

    v22 = a1[6];
    if (v22)
    {
      v23 = objc_loadWeakRetained((v22 + 16));
      if (v23)
      {
        v24 = objc_loadWeakRetained((a1[6] + 16));
        v16 = (v24[435] & 1) == 0;
      }

      else
      {
        v16 = 1;
      }

      if (!v16)
      {
        goto LABEL_27;
      }
    }

    else
    {
LABEL_15:
      v16 = 1;
    }

    if (g_boringssl_log)
    {
      v25 = g_boringssl_log;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = a1[6];
        if (v26)
        {
          v16 = objc_loadWeakRetained((v26 + 16));
          v36 = a1[6];
          if (v16)
          {
            v27 = v36 != 0;
            if (v36)
            {
              v3 = objc_loadWeakRetained((v36 + 16));
              v36 = a1[6];
            }

            else
            {
              v3 = 0;
            }

            v34 = v3 + 351;
          }

          else
          {
            v27 = 0;
            v34 = &unk_1A9098A9F;
          }

          if (v36)
          {
            v28 = objc_loadWeakRetained((v36 + 16));
            v33 = 0;
          }

          else
          {
            v28 = 0;
            v33 = 1;
          }
        }

        else
        {
          v27 = 0;
          v28 = 0;
          v33 = 1;
          v34 = &unk_1A9098A9F;
        }

        v37 = 136446978;
        v38 = "boringssl_context_zlib_uncompress_data_block_invoke";
        v39 = 1024;
        v40 = 786;
        v41 = 2082;
        v42 = v34;
        v43 = 2048;
        v44 = v28;
        _os_log_error_impl(&dword_1A8FF5000, v25, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] Uncompressed data length exceeded buffer bounds", &v37, 0x26u);
        if (v33)
        {
          goto LABEL_52;
        }

LABEL_51:

LABEL_52:
        if (v27)
        {
        }

        if (v26)
        {
        }
      }

LABEL_26:
    }
  }

  else
  {
    memcpy((a1[7] + v6), a2, __n);
    *(*(a1[4] + 8) + 24) += __n;
    v8 = a1[6];
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = objc_loadWeakRetained((v8 + 16));
    if (v9)
    {
      v10 = v9;
      v11 = objc_loadWeakRetained((a1[6] + 16));
      v12 = v11[435];

      if (v12)
      {
        goto LABEL_27;
      }
    }

    v13 = a1[6];
    if (v13)
    {
      v14 = objc_loadWeakRetained((v13 + 16));
      if (v14)
      {
        v15 = objc_loadWeakRetained((a1[6] + 16));
        v16 = (v15[435] & 1) == 0;
      }

      else
      {
        v16 = 1;
      }

      if (!v16)
      {
        goto LABEL_27;
      }
    }

    else
    {
LABEL_14:
      v16 = 1;
    }

    if (g_boringssl_log)
    {
      v25 = g_boringssl_log;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = a1[6];
        if (v26)
        {
          v16 = objc_loadWeakRetained((v26 + 16));
          v35 = a1[6];
          if (v16)
          {
            v27 = v35 != 0;
            if (v35)
            {
              v3 = objc_loadWeakRetained((v35 + 16));
              v35 = a1[6];
            }

            else
            {
              v3 = 0;
            }

            v30 = v3 + 351;
          }

          else
          {
            v27 = 0;
            v30 = &unk_1A9098A9F;
          }

          if (v35)
          {
            v28 = objc_loadWeakRetained((v35 + 16));
            v29 = 0;
          }

          else
          {
            v28 = 0;
            v29 = 1;
          }
        }

        else
        {
          v27 = 0;
          v28 = 0;
          v29 = 1;
          v30 = &unk_1A9098A9F;
        }

        v37 = 136446978;
        v38 = "boringssl_context_zlib_uncompress_data_block_invoke";
        v39 = 1024;
        v40 = 791;
        v41 = 2082;
        v42 = v30;
        v43 = 2048;
        v44 = v28;
        _os_log_debug_impl(&dword_1A8FF5000, v25, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] Wrote decompressed certificate data", &v37, 0x26u);
        if (v29)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      }

      goto LABEL_26;
    }
  }

LABEL_27:
  result = v7 >= __n;
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t boringssl_context_send_alert(const SSL *a1, unsigned int a2)
{
  v3 = SSL_get_ex_data(a1, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (*v3 != -1252936367)
  {
    return 0;
  }

  v5 = v3[1];
  if (!v5 || boringssl_session_get_state(v3) > 3 || (boringssl_session_is_cancelled(v4) & 1) != 0)
  {
    return 0;
  }

  if (a2 - 1 >= 3)
  {
    a2 = 0;
  }

  WeakRetained = objc_loadWeakRetained((v5 + 16));
  v8 = nw_protocol_boringssl_send_alert(WeakRetained, a2);

  return v8;
}

uint64_t __boringssl_context_restore_ssl_context_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!boringssl_context_state_is_context_state(v5))
  {
    v7 = *(a1 + 32);
    if (!v7)
    {
      goto LABEL_8;
    }

    WeakRetained = objc_loadWeakRetained((v7 + 16));
    if (WeakRetained)
    {
      v9 = WeakRetained;
      v10 = objc_loadWeakRetained((*(a1 + 32) + 16));
      v11 = v10[435];

      if (v11)
      {
        goto LABEL_14;
      }
    }

    v12 = *(a1 + 32);
    if (v12)
    {
      v13 = objc_loadWeakRetained((v12 + 16));
      if (v13)
      {
        v14 = objc_loadWeakRetained((*(a1 + 32) + 16));
        v15 = (v14[435] & 1) == 0;
      }

      else
      {
        v15 = 1;
      }

      if (!v15)
      {
        goto LABEL_14;
      }
    }

    else
    {
LABEL_8:
      v15 = 1;
    }

    if (!g_boringssl_log)
    {
LABEL_14:

      v6 = 0;
      goto LABEL_15;
    }

    v16 = g_boringssl_log;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
LABEL_13:

      goto LABEL_14;
    }

    v19 = *(a1 + 32);
    if (v19)
    {
      v15 = objc_loadWeakRetained((v19 + 16));
      v24 = *(a1 + 32);
      if (v15)
      {
        v20 = v24 != 0;
        if (v24)
        {
          v3 = objc_loadWeakRetained((v24 + 16));
          v24 = *(a1 + 32);
        }

        else
        {
          v3 = 0;
        }

        v23 = v3 + 351;
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

    v25 = 136446978;
    v26 = "boringssl_context_restore_ssl_context_block_invoke";
    v27 = 1024;
    v28 = 2784;
    v29 = 2082;
    v30 = v23;
    v31 = 2048;
    v32 = v21;
    _os_log_error_impl(&dword_1A8FF5000, v16, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] Cached context state is invalid.", &v25, 0x26u);
    if (v22)
    {
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {

      if (!v20)
      {
LABEL_29:
        if (!v19)
        {
          goto LABEL_13;
        }

        goto LABEL_33;
      }
    }

    if (!v19)
    {
      goto LABEL_13;
    }

LABEL_33:

    goto LABEL_13;
  }

LABEL_15:
  *(*(*(a1 + 40) + 8) + 24) = boringssl_context_state_get_ssl_ctx(v6);

  v17 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t boringssl_context_error_print(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3 || *a3 != -1252936367)
  {
    return 0;
  }

  v3 = *(a3 + 8);
  if (!v3)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((v3 + 16));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained((v3 + 16));
    v7 = v6[435];

    if (v7)
    {
      return 1;
    }
  }

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

  result = 1;
  if (v10 && g_boringssl_log)
  {
    v12 = g_boringssl_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      boringssl_context_error_print_cold_1();
    }

    return 1;
  }

  return result;
}

void __boringssl_context_new_session_handler_block_invoke_238(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  (*(*(*(a1 + 32) + 160) + 16))();
  v4 = *(a1 + 32);
  if (!v4)
  {
    goto LABEL_7;
  }

  WeakRetained = objc_loadWeakRetained((v4 + 16));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = objc_loadWeakRetained((*(a1 + 32) + 16));
    v8 = v7[435];

    if (v8)
    {
      goto LABEL_27;
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
      goto LABEL_27;
    }
  }

  else
  {
LABEL_7:
    v12 = 1;
  }

  if (g_boringssl_log)
  {
    v13 = g_boringssl_log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v14 = *(a1 + 32);
    if (!v14)
    {
      v16 = 0;
      v17 = 0;
      v18 = 1;
      v19 = &unk_1A9098A9F;
      goto LABEL_22;
    }

    v12 = objc_loadWeakRetained((v14 + 16));
    v15 = *(a1 + 32);
    if (v12)
    {
      v16 = v15 != 0;
      if (v15)
      {
        v1 = objc_loadWeakRetained((v15 + 16));
        v15 = *(a1 + 32);
      }

      else
      {
        v1 = 0;
      }

      v19 = v1 + 351;
      if (v15)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v16 = 0;
      v19 = &unk_1A9098A9F;
      if (v15)
      {
LABEL_21:
        v17 = objc_loadWeakRetained((v15 + 16));
        v18 = 0;
LABEL_22:
        v21 = 136446978;
        v22 = "boringssl_context_new_session_handler_block_invoke";
        v23 = 1024;
        v24 = 1523;
        v25 = 2082;
        v26 = v19;
        v27 = 2048;
        v28 = v17;
        _os_log_impl(&dword_1A8FF5000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] Returning from session update block", &v21, 0x26u);
        if (v18)
        {
          if (!v16)
          {
            goto LABEL_24;
          }
        }

        else
        {

          if (!v16)
          {
LABEL_24:
            if (v14)
            {
LABEL_25:
            }

LABEL_26:

            goto LABEL_27;
          }
        }

        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }
    }

    v17 = 0;
    v18 = 1;
    goto LABEL_22;
  }

LABEL_27:
  v20 = *MEMORY[0x1E69E9840];
}

uint64_t OUTLINED_FUNCTION_11_1()
{

  return kdebug_trace();
}

_BYTE *x25519_ge_tobytes(_BYTE *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13[0] = v4;
  v13[1] = v4;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v11[0] = v4;
  v11[1] = v4;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v9[0] = v4;
  v9[1] = v4;
  v5 = *(a2 + 96);
  v15 = *(a2 + 80);
  v16 = v5;
  v17 = *(a2 + 112);
  fe_loose_invert(v13, &v15);
  fe_mul_impl(v11, a2, v13);
  fe_mul_impl(v9, (a2 + 40), v13);
  fe_tobytes(a1, v9);
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15 = v6;
  v16 = v6;
  result = fe_tobytes(&v15, v11);
  a1[31] ^= v15 << 7;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t x25519_ge_frombytes_vartime(uint64_t a1, int64x2_t *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v4.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v4.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v26[0] = v4;
  v26[1] = v4;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v24[0] = v4;
  v24[1] = v4;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v22[0] = v4;
  v22[1] = v4;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v20[0] = v4;
  v20[1] = v4;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v18[0] = v4;
  v18[1] = v4;
  v5 = a2[1];
  v32 = *a2;
  v33 = v5;
  v33.i8[15] = v5.i8[15] & 0x7F;
  fe_frombytes_strict((a1 + 40), &v32);
  *(a1 + 80) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 80) = 1;
  fe_sq_tt(v22[0].i64, (a1 + 40));
  fe_mul_impl(v20[0].i64, v22, d);
  fe_sub(v24, v22, (a1 + 80));
  fe_carry(v26, v24);
  fe_add(v24, v20, (a1 + 80));
  fe_mul_impl(v22[0].i64, v26, v24);
  v34 = 0xAAAAAAAAAAAAAAAALL;
  v6.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v6.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v32 = v6;
  v33 = v6;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v30[0] = v6;
  v30[1] = v6;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  v28[0] = v6;
  v28[1] = v6;
  fe_sq_tt(v32.i64, v22);
  fe_sq_tt(v30, &v32);
  fe_sq_tt(v30, v30);
  fe_mul_impl(v30, v22, v30);
  fe_mul_impl(v32.i64, &v32, v30);
  fe_sq_tt(v32.i64, &v32);
  fe_mul_impl(v32.i64, v30, &v32);
  fe_sq_tt(v30, &v32);
  v7 = 4;
  do
  {
    fe_sq_tt(v30, v30);
    --v7;
  }

  while (v7);
  fe_mul_impl(v32.i64, v30, &v32);
  fe_sq_tt(v30, &v32);
  v8 = 9;
  do
  {
    fe_sq_tt(v30, v30);
    --v8;
  }

  while (v8);
  fe_mul_impl(v30, v30, &v32);
  fe_sq_tt(v28, v30);
  v9 = 19;
  do
  {
    fe_sq_tt(v28, v28);
    --v9;
  }

  while (v9);
  fe_mul_impl(v30, v28, v30);
  fe_sq_tt(v30, v30);
  v10 = 9;
  do
  {
    fe_sq_tt(v30, v30);
    --v10;
  }

  while (v10);
  fe_mul_impl(v32.i64, v30, &v32);
  fe_sq_tt(v30, &v32);
  v11 = 49;
  do
  {
    fe_sq_tt(v30, v30);
    --v11;
  }

  while (v11);
  fe_mul_impl(v30, v30, &v32);
  fe_sq_tt(v28, v30);
  v12 = 99;
  do
  {
    fe_sq_tt(v28, v28);
    --v12;
  }

  while (v12);
  fe_mul_impl(v30, v28, v30);
  fe_sq_tt(v30, v30);
  v13 = 49;
  do
  {
    fe_sq_tt(v30, v30);
    --v13;
  }

  while (v13);
  fe_mul_impl(v32.i64, v30, &v32);
  fe_sq_tt(v32.i64, &v32);
  fe_sq_tt(v32.i64, &v32);
  fe_mul_impl(a1, &v32, v22);
  fe_mul_impl(a1, a1, v26);
  fe_sq_tt(v20[0].i64, a1);
  fe_mul_impl(v20[0].i64, v20, v24);
  fe_sub(v18, v20, v26);
  if (fe_isnonzero(v18))
  {
    fe_add(v18, v20, v26);
    if (fe_isnonzero(v18))
    {
      result = 0;
      goto LABEL_22;
    }

    fe_mul_impl(a1, a1, sqrtm1);
  }

  v15.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v15.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v32 = v15;
  v33 = v15;
  fe_tobytes(&v32, a1);
  if ((v32.i8[0] & 1) != a2[1].u8[15] >> 7)
  {
    v34 = 0xAAAAAAAAAAAAAAAALL;
    v16.i64[0] = 0xAAAAAAAAAAAAAAAALL;
    v16.i64[1] = 0xAAAAAAAAAAAAAAAALL;
    v32 = v16;
    v33 = v16;
    fe_neg(&v32, a1);
    fe_carry(a1, &v32);
  }

  fe_mul_impl((a1 + 120), a1, (a1 + 40));
  result = 1;
LABEL_22:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL fe_isnonzero(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 0xAAAAAAAAAAAAAAAALL;
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v5[0] = v1;
  v5[1] = v1;
  fe_carry(v5, a1);
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[0] = v2;
  v7[1] = v2;
  fe_tobytes(v7, v5);
  result = CRYPTO_memcmp(v7, fe_isnonzero_zero, 32) != 0;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *x25519_ge_p3_to_cached(uint64_t a1, uint64_t a2)
{
  fe_add(a1, (a2 + 40), a2);
  fe_sub((a1 + 40), (a2 + 40), a2);
  v4 = *(a2 + 80);
  v5 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v4;
  *(a1 + 96) = v5;

  return fe_mul_impl((a1 + 120), (a2 + 120), d2);
}

int64x2_t *x25519_ge_add(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v6.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v6.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v14[0] = v6;
  v14[1] = v6;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v12[0] = v6;
  v12[1] = v6;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v10[0] = v6;
  v10[1] = v6;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v8[0] = v6;
  v8[1] = v6;
  fe_add(a1, (a2 + 40), a2);
  fe_sub((a1 + 40), (a2 + 40), a2);
  fe_mul_impl(v10[0].i64, a1, a3);
  fe_mul_impl(v12[0].i64, (a1 + 40), a3 + 5);
  fe_mul_impl(v8[0].i64, a3 + 15, (a2 + 120));
  fe_mul_impl(v14[0].i64, (a2 + 80), a3 + 10);
  fe_add((a1 + 120), v14, v14);
  fe_sub(a1, v10, v12);
  fe_add((a1 + 40), v10, v12);
  fe_carry(v10, (a1 + 120));
  fe_add((a1 + 80), v10, v8);
  return fe_sub((a1 + 120), v10, v8);
}

int64x2_t *x25519_ge_sub(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v6.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v6.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v14[0] = v6;
  v14[1] = v6;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v12[0] = v6;
  v12[1] = v6;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v10[0] = v6;
  v10[1] = v6;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v8[0] = v6;
  v8[1] = v6;
  fe_add(a1, (a2 + 40), a2);
  fe_sub((a1 + 40), (a2 + 40), a2);
  fe_mul_impl(v10[0].i64, a1, a3 + 5);
  fe_mul_impl(v12[0].i64, (a1 + 40), a3);
  fe_mul_impl(v8[0].i64, a3 + 15, (a2 + 120));
  fe_mul_impl(v14[0].i64, (a2 + 80), a3 + 10);
  fe_add((a1 + 120), v14, v14);
  fe_sub(a1, v10, v12);
  fe_add((a1 + 40), v10, v12);
  fe_carry(v10, (a1 + 120));
  fe_sub((a1 + 80), v10, v8);
  return fe_add((a1 + 120), v10, v8);
}

unsigned __int16 *x25519_sc_reduce(unsigned __int16 *result)
{
  v1 = *(result + 15);
  v2 = *(result + 9);
  v3 = (v2 >> 24) | (*(result + 40) << 8) | (*(result + 41) << 16);
  v4 = ((HIBYTE(*(result + 11)) | (*(result + 48) << 8) | (*(result + 49) << 16)) >> 2) & 0x1FFFFF;
  v5 = (*(result + 49) >> 7) & 0x1FFFFF;
  v6 = (*(result + 13) >> 4) & 0x1FFFFF;
  v7 = ((HIBYTE(*(result + 13)) | (*(result + 56) << 8) | (*(result + 57) << 16)) >> 1) & 0x1FFFFF;
  v8 = ((v1 >> 6) & 0x1FFFFF) + 666643 * v4;
  v9 = (*(result + 21) | ((*(result + 23) & 0x1F) << 16)) + 470296 * v5 + 666643 * v6 + 654183 * v4;
  v10 = (((v1 >> 24) | (*(result + 19) << 8) | (*(result + 20) << 16)) >> 3) + 666643 * v5 + 470296 * v4 + ((v8 + 0x100000) >> 21);
  v11 = ((*(result + 23) >> 5) & 0x1FFFFF) + 654183 * v5 + 470296 * v6 - 997805 * v4 + 666643 * v7 + ((v9 + 0x100000) >> 21);
  v12 = (((HIBYTE(*(result + 23)) | (*(result + 27) << 8) | (*(result + 28) << 16)) >> 2) & 0x1FFFFF) - 997805 * v5 + 654183 * v6 + 136657 * v4;
  v13 = ((*(result + 7) >> 7) & 0x1FFFFF) + 136657 * v5 - 997805 * v6 - 683901 * v4;
  v14 = ((*(result + 31) >> 4) & 0x1FFFFF) - 683901 * v5 + 136657 * v6;
  v15 = (((HIBYTE(*(result + 31)) | (*(result + 35) << 8) | (*(result + 36) << 16)) >> 1) & 0x1FFFFF) - 683901 * v6;
  v16 = *(result + 15) >> 3;
  v17 = ((v2 >> 6) & 0x1FFFFF) - 997805 * v16;
  v18 = (v3 >> 3) + 136657 * v16;
  v19 = (result[21] | ((result[22] & 0x1F) << 16)) - 683901 * v16;
  v20 = v14 + 470296 * v16;
  v21 = v13 + 666643 * v16;
  v22 = v15 + 654183 * v16;
  v23 = (*(result + 57) >> 6) & 0x1FFFFF;
  v24 = v17 + 136657 * v23 - 683901 * v7;
  v25 = v20 + 654183 * v23 - 997805 * v7;
  v26 = v12 + 666643 * v23 + 470296 * v7;
  v27 = v21 + 470296 * v23 + 654183 * v7 + ((v26 + 0x100000) >> 21);
  v28 = v22 - 997805 * v23 + 136657 * v7 + ((v25 + 0x100000) >> 21);
  v29 = v25 - ((v25 + 0x100000) & 0xFFFFFFFFFFE00000);
  v30 = v18 - 683901 * v23 + ((v24 + 0x100000) >> 21);
  v31 = ((*(result + 11) >> 5) & 0x1FFFFF) + ((v19 + 0x100000) >> 21);
  v32 = v29 + ((v27 + 0x100000) >> 21);
  v33 = v24 - ((v24 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v28 + 0x100000) >> 21);
  v34 = v28 - ((v28 + 0x100000) & 0xFFFFFFFFFFE00000);
  v35 = v19 - ((v19 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v30 + 0x100000) >> 21);
  v36 = v30 - ((v30 + 0x100000) & 0xFFFFFFFFFFE00000);
  v37 = v26 - 683901 * v31 - ((v26 + 0x100000) & 0xFFFFFFFFFFE00000);
  v38 = ((*(result + 7) >> 7) & 0x1FFFFF) + 666643 * v36;
  v39 = ((*(result + 5) >> 4) & 0x1FFFFF) + 666643 * v35 + 470296 * v36;
  v40 = (((HIBYTE(*(result + 5)) | (*(result + 14) << 8) | (*(result + 15) << 16)) >> 1) & 0x1FFFFF) + 666643 * v31 + 470296 * v35 + 654183 * v36;
  v41 = v8 - ((v8 + 0x100000) & 0x7FFFFE00000) + 470296 * v31 + 654183 * v35 - 997805 * v36;
  v42 = v10 - ((v10 + 0x100000) & 0x7FFFFFFFFFE00000) + 654183 * v31 - 997805 * v35 + 136657 * v36;
  v43 = v9 - ((v9 + 0x100000) & 0xFFFFFE00000) + ((v10 + 0x100000) >> 21) - 997805 * v31 + 136657 * v35 - 683901 * v36;
  v44 = (((HIBYTE(*(result + 1)) | (*(result + 6) << 8) | (*(result + 7) << 16)) >> 2) & 0x1FFFFF) + 666643 * v33;
  v45 = v38 + 470296 * v33;
  v46 = v39 + 654183 * v33;
  v47 = v40 - 997805 * v33;
  v48 = v41 + 136657 * v33;
  v49 = v42 - 683901 * v33;
  v50 = v48 - 683901 * v34;
  v51 = v37 + ((v11 + 0x100000) >> 21);
  v52 = (*result | ((result[1] & 0x1F) << 16)) + 666643 * v32;
  v53 = v44 + 470296 * v34 + 654183 * v32;
  v54 = v45 + 654183 * v34 - 997805 * v32;
  v55 = v46 - 997805 * v34 + 136657 * v32;
  v56 = v47 + 136657 * v34 - 683901 * v32;
  v57 = ((*(result + 1) >> 5) & 0x1FFFFF) + 666643 * v34 + 470296 * v32 + ((v52 + 0x100000) >> 21);
  v58 = v52 - ((v52 + 0x100000) & 0xFFFFFFFFFFE00000);
  v59 = v49 + ((v50 + 0x100000) >> 21);
  v60 = v50 - ((v50 + 0x100000) & 0xFFFFFFFFFFE00000);
  v61 = v11 + 136657 * v31 - ((v11 + 0x100000) & 0xFFFFFFFFFFE00000) - 683901 * v35 + ((v43 + 0x100000) >> 21);
  v62 = v27 - ((v27 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v51 + 0x100000) >> 21);
  v63 = v57 + 0x100000;
  v64 = v43 - ((v43 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v59 + 0x100000) >> 21);
  v65 = v59 - ((v59 + 0x100000) & 0xFFFFFFFFFFE00000);
  v66 = v51 - ((v51 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v61 + 0x100000) >> 21);
  v67 = v61 - ((v61 + 0x100000) & 0xFFFFFFFFFFE00000);
  v68 = (v62 + 0x100000) >> 21;
  v69 = v54 + ((v53 + 0x100000) >> 21);
  v70 = v69 - 997805 * v68 - ((v69 + 0x100000) & 0xFFFFFFFFFFE00000);
  v71 = v56 + ((v55 + 0x100000) >> 21);
  v72 = v55 + 136657 * v68 - ((v55 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v69 + 0x100000) >> 21);
  v73 = v58 + 666643 * v68;
  v74 = v71 - 683901 * v68;
  v71 += 0x100000;
  v75 = v57 + 470296 * v68 - ((v57 + 0x100000) & 0xFFFFFFFFFFE00000) + (v73 >> 21);
  v76 = v53 + 654183 * v68 - ((v53 + 0x100000) & 0xFFFFFFFFFFE00000) + (v63 >> 21) + (v75 >> 21);
  v77 = v70 + (v76 >> 21);
  v78 = v72 + (v77 >> 21);
  v79 = v74 - (v71 & 0xFFFFFFFFFFE00000) + (v78 >> 21);
  v80 = v60 + (v71 >> 21) + (v79 >> 21);
  v81 = v65 + (v80 >> 21);
  v82 = v64 + (v81 >> 21);
  v83 = v67 + (v82 >> 21);
  v84 = v66 + (v83 >> 21);
  v85 = v62 - ((v62 + 0x100000) & 0xFFFFFFFFFFE00000) + (v84 >> 21);
  v86 = (v73 & 0x1FFFFF) + 666643 * (v85 >> 21);
  *(result + 1) = (v73 + 11283 * (v85 >> 21)) >> 8;
  v87 = (v75 & 0x1FFFFF) + 470296 * (v85 >> 21) + (v86 >> 21);
  *result = v73 + 19 * (v85 >> 21);
  *(result + 2) = (((v73 & 0x1FFFFF) + 666643 * (v85 >> 21)) >> 16) & 0x1F | (32 * (v75 + 24 * (v85 >> 21) + (v86 >> 21)));
  *(result + 3) = v87 >> 3;
  *(result + 4) = v87 >> 11;
  v88 = (v76 & 0x1FFFFF) + 654183 * (v85 >> 21) + (v87 >> 21);
  *(result + 5) = (v87 >> 19) & 3 | (4 * (v76 + 103 * (v85 >> 21) + (v87 >> 21)));
  *(result + 6) = v88 >> 6;
  v89 = (v77 & 0x1FFFFF) - 997805 * (v85 >> 21) + (v88 >> 21);
  *(result + 7) = (v88 >> 14) & 0x7F | ((v77 - -83 * (v85 >> 21) + (v88 >> 21)) << 7);
  *(result + 8) = v89 >> 1;
  *(result + 9) = v89 >> 9;
  v90 = (v78 & 0x1FFFFF) + 136657 * (v85 >> 21) + (v89 >> 21);
  *(result + 10) = (v89 >> 17) & 0xF | (16 * (v78 - 47 * (v85 >> 21) + (v89 >> 21)));
  *(result + 11) = v90 >> 4;
  *(result + 12) = v90 >> 12;
  v91 = (v79 & 0x1FFFFF) - 683901 * (v85 >> 21) + (v90 >> 21);
  *(result + 13) = ((v90 & 0x100000) != 0) | (2 * (v79 - 125 * (v85 >> 21) + (v90 >> 21)));
  *(result + 14) = v91 >> 7;
  v92 = (v80 & 0x1FFFFF) + (v91 >> 21);
  *(result + 15) = (v91 >> 15) & 0x3F | ((v80 + (v91 >> 21)) << 6);
  *(result + 16) = v92 >> 2;
  *(result + 17) = v92 >> 10;
  v93 = (v81 & 0x1FFFFF) + (v92 >> 21);
  *(result + 18) = (v92 >> 18) & 7 | (8 * (v81 + (v92 >> 21)));
  *(result + 19) = v93 >> 5;
  v94 = (v82 & 0x1FFFFF) + (v93 >> 21);
  *(result + 20) = v93 >> 13;
  *(result + 22) = (v82 + (v93 >> 21)) >> 8;
  v95 = (v83 & 0x1FFFFF) + (v94 >> 21);
  *(result + 21) = v94;
  *(result + 23) = BYTE2(v94) & 0x1F | (32 * (v83 + (v94 >> 21)));
  *(result + 24) = v95 >> 3;
  *(result + 25) = v95 >> 11;
  v96 = (v84 & 0x1FFFFF) + (v95 >> 21);
  v97 = (v85 & 0x1FFFFF) + (v96 >> 21);
  *(result + 26) = (v95 >> 19) & 3 | (4 * (v84 + (v95 >> 21)));
  *(result + 27) = v96 >> 6;
  *(result + 28) = (v96 >> 14) & 0x7F | ((v85 + (v96 >> 21)) << 7);
  *(result + 29) = ((v96 >> 21) + v85) >> 1;
  *(result + 30) = v97 >> 9;
  *(result + 31) = v97 >> 17;
  return result;
}

void ED25519_keypair(uint64_t a1, _OWORD *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[0] = v4;
  v6[1] = v4;
  RAND_bytes(v6, 32);
  ED25519_keypair_from_seed(a1, a2, v6);
  v5 = *MEMORY[0x1E69E9840];
}

__n128 ED25519_keypair_from_seed(uint64_t a1, _OWORD *a2, unsigned __int8 *d)
{
  v17 = *MEMORY[0x1E69E9840];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15 = v6;
  v16 = v6;
  *md = v6;
  v14 = v6;
  SHA512(d, 0x20uLL, md);
  md[0] &= 0xF8u;
  HIBYTE(v14) = HIBYTE(v14) & 0x3F | 0x40;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12[8] = v7;
  v12[9] = v7;
  v12[6] = v7;
  v12[7] = v7;
  v12[4] = v7;
  v12[5] = v7;
  v12[2] = v7;
  v12[3] = v7;
  v12[0] = v7;
  v12[1] = v7;
  x25519_ge_scalarmult_base(v12, md);
  x25519_ge_tobytes(a1, v12);
  v8 = *(d + 1);
  *a2 = *d;
  a2[1] = v8;
  result = *a1;
  v10 = *(a1 + 16);
  a2[2] = *a1;
  a2[3] = v10;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ED25519_sign(_BYTE *a1, const void *a2, size_t a3, unsigned __int8 *d)
{
  v179 = *MEMORY[0x1E69E9840];
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v178[0] = v8;
  v178[1] = v8;
  *md = v8;
  *&md[16] = v8;
  SHA512(d, 0x20uLL, md);
  md[0] &= 0xF8u;
  md[31] = md[31] & 0x3F | 0x40;
  *&c.num = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&c.u.p[96] = v9;
  *&c.u.p[112] = v9;
  *&c.u.p[64] = v9;
  *&c.u.p[80] = v9;
  *&c.u.p[32] = v9;
  *&c.u.p[48] = v9;
  *c.u.d = v9;
  *&c.u.p[16] = v9;
  *&c.h[6] = v9;
  *&c.Nl = v9;
  *&c.h[2] = v9;
  *&c.h[4] = v9;
  *c.h = v9;
  SHA512_Init(&c);
  SHA512_Update(&c, v178, 0x20uLL);
  SHA512_Update(&c, a2, a3);
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v174 = v10;
  v175 = v10;
  *v173 = v10;
  *&v173[16] = v10;
  SHA512_Final(v173, &c);
  x25519_sc_reduce(v173);
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v169[8] = v11;
  v169[9] = v11;
  v169[6] = v11;
  v169[7] = v11;
  v169[4] = v11;
  v169[5] = v11;
  v169[2] = v11;
  v169[3] = v11;
  v169[0] = v11;
  v169[1] = v11;
  x25519_ge_scalarmult_base(v169, v173);
  x25519_ge_tobytes(a1, v169);
  SHA512_Init(&c);
  SHA512_Update(&c, a1, 0x20uLL);
  SHA512_Update(&c, d + 32, 0x20uLL);
  SHA512_Update(&c, a2, a3);
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v171 = v12;
  v172 = v12;
  *v170 = v12;
  *&v170[16] = v12;
  SHA512_Final(v170, &c);
  x25519_sc_reduce(v170);
  v13 = *v170 | ((v170[2] & 0x1F) << 16);
  v14 = *&v170[21] | ((v170[23] & 0x1F) << 16);
  v15 = *md | ((md[2] & 0x1F) << 16);
  v16 = *&md[21] | ((md[23] & 0x1F) << 16);
  v17 = (*&v170[2] >> 5) & 0x1FFFFF;
  v18 = ((v170[5] | (v170[6] << 8) | (v170[7] << 16)) >> 2) & 0x1FFFFF;
  v19 = (*&md[2] >> 5) & 0x1FFFFF;
  v20 = ((md[5] | (md[6] << 8) | (md[7] << 16)) >> 2) & 0x1FFFFF;
  v168 = v19 * v17 + v15 * v18 + v20 * v13 + (((v173[5] | (v173[6] << 8) | (v173[7] << 16)) >> 2) & 0x1FFFFF);
  v21 = (*&v170[7] >> 7) & 0x1FFFFF;
  v22 = (*&v170[10] >> 4) & 0x1FFFFF;
  v23 = (*&md[7] >> 7) & 0x1FFFFF;
  v24 = (*&md[10] >> 4) & 0x1FFFFF;
  v25 = v19 * v21 + v15 * v22 + v23 * v17 + v13 * v24 + v20 * v18 + ((*&v173[10] >> 4) & 0x1FFFFF);
  v26 = ((v170[13] | (v170[14] << 8) | (v170[15] << 16)) >> 1) & 0x1FFFFF;
  v27 = (*&v170[15] >> 6) & 0x1FFFFF;
  v28 = (*&md[15] >> 6) & 0x1FFFFF;
  v29 = ((md[13] | (md[14] << 8) | (md[15] << 16)) >> 1) & 0x1FFFFF;
  v167 = v26 * v19 + v15 * v27 + v23 * v21 + v18 * v24 + v20 * v22 + v13 * v28 + v29 * v17 + ((*&v173[15] >> 6) & 0x1FFFFF);
  v30 = (v170[18] | (v170[19] << 8) | (v170[20] << 16)) >> 3;
  v31 = (md[18] | (md[19] << 8) | (md[20] << 16)) >> 3;
  v166 = v30 * v19 + v15 * v14 + v26 * v23 + v24 * v22 + v20 * v27 + v18 * v28 + v29 * v21 + v31 * v17 + v16 * v13 + *&v173[21] + ((v173[23] & 0x1F) << 16);
  v32 = (*&v170[23] >> 5) & 0x1FFFFF;
  v33 = ((HIBYTE(*&v170[23]) | (v170[27] << 8) | (v170[28] << 16)) >> 2) & 0x1FFFFF;
  v34 = (*&md[23] >> 5) & 0x1FFFFF;
  v35 = ((HIBYTE(*&md[23]) | (md[27] << 8) | (md[28] << 16)) >> 2) & 0x1FFFFF;
  v165 = v19 * v32 + v15 * v33 + v30 * v23 + v24 * v27 + v20 * v14 + v28 * v22 + v29 * v26 + v31 * v21 + v34 * v17 + v16 * v18 + v35 * v13 + (((HIBYTE(*&v173[23]) | (v173[27] << 8) | (v173[28] << 16)) >> 2) & 0x1FFFFF);
  v36 = (*v173 | ((v173[2] & 0x1F) << 16)) + v15 * v13;
  v37 = v13 * v19 + v15 * v17 + ((*&v173[2] >> 5) & 0x1FFFFF) + ((v36 + 0x100000) >> 21);
  v38 = v18 * v19 + v15 * v21 + v13 * v23 + v20 * v17 + ((*&v173[7] >> 7) & 0x1FFFFF);
  v163 = v19 * v22 + v15 * v26 + v18 * v23 + v24 * v17 + v20 * v21 + v29 * v13 + ((v25 + 0x100000) >> 21) + (((v173[13] | (v173[14] << 8) | (v173[15] << 16)) >> 1) & 0x1FFFFF);
  v158 = v25 - ((v25 + 0x100000) & 0xFFFFFFFFFFE00000);
  v159 = v19 * v27 + v15 * v30 + v23 * v22 + v24 * v21 + v20 * v26 + v28 * v17 + v29 * v18 + v31 * v13 + ((v173[18] | (v173[19] << 8) | (v173[20] << 16)) >> 3);
  v160 = v14 * v19 + v15 * v32 + v23 * v27 + v26 * v24 + v20 * v30 + v28 * v21 + v29 * v22 + v31 * v18 + v13 * v34 + v16 * v17 + ((*&v173[23] >> 5) & 0x1FFFFF);
  v39 = *&v170[28] >> 7;
  v40 = v33 * v19 + v15 * v39;
  v41 = *&md[28] >> 7;
  v42 = v40 + v14 * v23 + v30 * v24 + v20 * v32 + v26 * v28 + v29 * v27 + v31 * v22 + v18 * v34 + v16 * v21 + v13 * v41;
  v43 = v19 * v39 + v23 * v32 + v14 * v24 + v20 * v33 + v28 * v27 + v29 * v30 + v31 * v26 + v34 * v21 + v16 * v22 + v41 * v17;
  v44 = v42 + v35 * v17 + (*&v173[28] >> 7);
  v45 = v43 + v35 * v18;
  v46 = v33 * v23 + v24 * v32 + v20 * v39 + v30 * v28 + v29 * v14 + v31 * v27 + v34 * v22 + v16 * v26 + v18 * v41 + v35 * v21;
  v47 = v31 * v39 + v34 * v32 + v16 * v33 + v30 * v41 + v35 * v14;
  v48 = v33 * v34 + v16 * v39 + v14 * v41 + v35 * v32 + ((v47 + 0x100000) >> 21);
  v49 = v23 * v39 + v33 * v24 + v14 * v28 + v29 * v32 + v31 * v30 + v26 * v34 + v16 * v27 + v41 * v21 + v35 * v22;
  v50 = v24 * v39 + v28 * v32 + v29 * v33 + v31 * v14 + v34 * v27 + v16 * v30 + v41 * v22;
  v51 = v33 * v28 + v29 * v39 + v31 * v32 + v30 * v34 + v16 * v14 + v26 * v41;
  v52 = v38 + ((v168 + 0x100000) >> 21);
  v53 = v46 + ((v45 + 0x100000) >> 21);
  v54 = v51 + v35 * v27;
  v55 = v28 * v39 + v31 * v33 + v14 * v34 + v16 * v32 + v41 * v27;
  v56 = v50 + v35 * v26 + ((v49 + 0x100000) >> 21);
  v57 = v55 + v35 * v30 + ((v54 + 0x100000) >> 21);
  v58 = v34 * v39 + v41 * v32 + v35 * v33;
  v59 = v33 * v41 + v35 * v39 + ((v58 + 0x100000) >> 21);
  v60 = v58 - ((v58 + 0x100000) & 0x1FFFFFFE00000);
  v61 = v41 * v39;
  v62 = (v61 + 0x100000) >> 21;
  v63 = v37 + 0x100000;
  v161 = v37 - ((v37 + 0x100000) & 0xFFFFFFFFFFE00000);
  v164 = v158 + ((v52 + 0x100000) >> 21);
  v162 = v52 - ((v52 + 0x100000) & 0xFFFFFFFFFFE00000);
  v64 = v47 - ((v47 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v57 + 0x100000) >> 21);
  v65 = v57 - ((v57 + 0x100000) & 0xFFFFFFFFFFE00000);
  v66 = v60 + ((v48 + 0x100000) >> 21);
  v67 = v48 - ((v48 + 0x100000) & 0xFFFFFFFFFFE00000);
  v68 = v61 - ((v61 + 0x100000) & 0x7FFFFFFE00000) + ((v59 + 0x100000) >> 21);
  v69 = v59 - ((v59 + 0x100000) & 0x1FFFFFFE00000);
  v70 = v54 - 683901 * v62 - ((v54 + 0x100000) & 0xFFFFFFFFFFE00000);
  v71 = v49 - 997805 * v62 - ((v49 + 0x100000) & 0xFFFFFFFFFFE00000);
  v72 = v45 + 470296 * v62 - ((v45 + 0x100000) & 0xFFFFFFFFFFE00000);
  v73 = v159 + ((v167 + 0x100000) >> 21);
  v74 = v167 + 666643 * v64 - ((v167 + 0x100000) & 0xFFFFFFFFFFE00000);
  v75 = v160 + ((v166 + 0x100000) >> 21);
  v76 = 666643 * v66 + 470296 * v67 + 654183 * v64 + v166 + ((v73 + 0x100000) >> 21) - ((v166 + 0x100000) & 0xFFFFFFFFFFE00000);
  v77 = v44 + ((v165 + 0x100000) >> 21);
  v78 = 666643 * v68 + 470296 * v69 + 654183 * v66 - 997805 * v67 + 136657 * v64 + ((v75 + 0x100000) >> 21) + v165 - ((v165 + 0x100000) & 0xFFFFFFFFFFE00000);
  v79 = 666643 * v67 + 470296 * v64 + v73 - ((v73 + 0x100000) & 0xFFFFFFFFFFE00000);
  v80 = 666643 * v69 + 470296 * v66 + 654183 * v67 - 997805 * v64 + v75 - ((v75 + 0x100000) & 0xFFFFFFFFFFE00000);
  v81 = v72 + 654183 * v68 - 997805 * v69 + 136657 * v66 - 683901 * v67 + ((v77 + 0x100000) >> 21);
  v82 = 470296 * v68 + 666643 * v62 + 654183 * v69 - 997805 * v66 + 136657 * v67 - 683901 * v64 + v77 - ((v77 + 0x100000) & 0xFFFFFFFFFFE00000);
  v83 = v71 + ((v53 + 0x100000) >> 21);
  v84 = v53 + 654183 * v62 - ((v53 + 0x100000) & 0xFFFFFFFFFFE00000) - 997805 * v68 + 136657 * v69 - 683901 * v66 + ((v81 + 0x100000) >> 21);
  v85 = v56 + 136657 * v62;
  v56 += 0x100000;
  v86 = v70 + (v56 >> 21);
  v87 = v74 + ((v163 + 0x100000) >> 21);
  v88 = v80 + ((v76 + 0x100000) >> 21);
  v89 = v83 + 136657 * v68 - 683901 * v69;
  v90 = v82 + ((v78 + 0x100000) >> 21);
  v91 = v85 - (v56 & 0xFFFFFFFFFFE00000) - 683901 * v68 + ((v89 + 0x100000) >> 21);
  v92 = v65 + ((v86 + 0x100000) >> 21);
  v93 = v86 - ((v86 + 0x100000) & 0xFFFFFFFFFFE00000);
  v94 = v81 - ((v81 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v90 + 0x100000) >> 21);
  v95 = v90 - ((v90 + 0x100000) & 0xFFFFFFFFFFE00000);
  v96 = v89 - ((v89 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v84 + 0x100000) >> 21);
  v97 = v84 - ((v84 + 0x100000) & 0xFFFFFFFFFFE00000);
  v98 = v93 + ((v91 + 0x100000) >> 21);
  v99 = v91 - ((v91 + 0x100000) & 0xFFFFFFFFFFE00000);
  v100 = v78 - 683901 * v92 + ((v88 + 0x100000) >> 21) - ((v78 + 0x100000) & 0xFFFFFFFFFFE00000);
  v101 = v79 + ((v87 + 0x100000) >> 21);
  v102 = -997805 * v92 + 136657 * v98 - 683901 * v99 + v76 + ((v101 + 0x100000) >> 21) - ((v76 + 0x100000) & 0xFFFFFFFFFFE00000);
  v103 = v87 + 470296 * v92 - ((v87 + 0x100000) & 0xFFFFFFFFFFE00000);
  v104 = v168 + (v63 >> 21) - ((v168 + 0x100000) & 0xFFFFFFFFFFE00000);
  v105 = v36 - ((v36 + 0x100000) & 0xFFFFFE00000) + 666643 * v94;
  v106 = v161 + 470296 * v94 + 666643 * v97 + ((v105 + 0x100000) >> 21);
  v107 = v163 + 666643 * v92 - ((v163 + 0x100000) & 0xFFFFFFFFFFE00000);
  v108 = v103 + 654183 * v98 - 997805 * v99 + 136657 * v96 - 683901 * v97;
  v109 = v101 + 654183 * v92 - 997805 * v98 + 136657 * v99 - ((v101 + 0x100000) & 0xFFFFFFFFFFE00000) - 683901 * v96 + ((v108 + 0x100000) >> 21);
  v110 = v108 - ((v108 + 0x100000) & 0xFFFFFFFFFFE00000);
  v111 = 136657 * v92 - 683901 * v98 + v88 - ((v88 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v102 + 0x100000) >> 21);
  v112 = v100 + 0x100000;
  v113 = v95 + ((v100 + 0x100000) >> 21);
  v114 = v102 - ((v102 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v109 + 0x100000) >> 21);
  v115 = v109 - ((v109 + 0x100000) & 0xFFFFFFFFFFE00000);
  v116 = v111 + 0x100000;
  v117 = v111 - ((v111 + 0x100000) & 0xFFFFFFFFFFE00000);
  v118 = v113 - ((v113 + 0x100000) & 0xFFFFFFFFFFE00000);
  v119 = (v113 + 0x100000) >> 21;
  v120 = v104 + 654183 * v94 + 666643 * v96 + 470296 * v97;
  v121 = v162 + 666643 * v99 - 997805 * v94 + 470296 * v96 + 654183 * v97 + ((v120 + 0x100000) >> 21);
  v122 = v121 + 0x100000;
  v123 = v164 + 666643 * v98;
  v124 = v107 + 470296 * v98 + 654183 * v99;
  v125 = v123 + 470296 * v99 + 136657 * v94;
  v126 = v124 - 683901 * v94 - 997805 * v96;
  v127 = v125 + 654183 * v96 - 997805 * v97;
  v128 = v126 + 136657 * v97 + ((v127 + 0x100000) >> 21);
  v129 = v110 + ((v128 + 0x100000) >> 21);
  v130 = v100 + (v116 >> 21);
  v131 = v105 - ((v105 + 0x100000) & 0xFFFFFFFFFFE00000) + 666643 * v119;
  v132 = v112 & 0xFFFFFFFFFFE00000;
  v133 = v106 + 470296 * v119 - ((v106 + 0x100000) & 0xFFFFFFFFFFE00000) + (v131 >> 21);
  v134 = v120 + 654183 * v119 - ((v120 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v106 + 0x100000) >> 21) + (v133 >> 21);
  v135 = v121 - 997805 * v119 - ((v121 + 0x100000) & 0xFFFFFFFFFFE00000) + (v134 >> 21);
  v136 = v127 + 136657 * v119 - ((v127 + 0x100000) & 0xFFFFFFFFFFE00000) + (v122 >> 21) + (v135 >> 21);
  v137 = v128 - 683901 * v119 - ((v128 + 0x100000) & 0xFFFFFFFFFFE00000) + (v136 >> 21);
  v138 = v129 + (v137 >> 21);
  v139 = v115 + (v138 >> 21);
  v140 = v114 + (v139 >> 21);
  v141 = v117 + (v140 >> 21);
  v142 = v130 - v132 + (v141 >> 21);
  v143 = v118 + (v142 >> 21);
  v144 = (v131 & 0x1FFFFF) + 666643 * (v143 >> 21);
  a1[33] = (v131 + 11283 * (v143 >> 21)) >> 8;
  v145 = (v133 & 0x1FFFFF) + 470296 * (v143 >> 21) + (v144 >> 21);
  a1[32] = v131 + 19 * (v143 >> 21);
  a1[34] = (((v131 & 0x1FFFFF) + 666643 * (v143 >> 21)) >> 16) & 0x1F | (32 * (v106 + 24 * v119 + (v131 >> 21) + 24 * (v143 >> 21) + (v144 >> 21)));
  a1[35] = v145 >> 3;
  a1[36] = v145 >> 11;
  v146 = (v134 & 0x1FFFFF) + 654183 * (v143 >> 21) + (v145 >> 21);
  a1[37] = (v145 >> 19) & 3 | (4 * (v134 + 103 * (v143 >> 21) + (v145 >> 21)));
  a1[38] = v146 >> 6;
  v147 = (v135 & 0x1FFFFF) - 997805 * (v143 >> 21) + (v146 >> 21);
  a1[39] = (v146 >> 14) & 0x7F | ((v135 - -83 * (v143 >> 21) + (v146 >> 21)) << 7);
  a1[40] = v147 >> 1;
  a1[41] = v147 >> 9;
  v148 = (v136 & 0x1FFFFF) + 136657 * (v143 >> 21) + (v147 >> 21);
  a1[42] = (v147 >> 17) & 0xF | (16 * (v136 - 47 * (v143 >> 21) + (v147 >> 21)));
  a1[43] = v148 >> 4;
  a1[44] = v148 >> 12;
  v149 = (v137 & 0x1FFFFF) - 683901 * (v143 >> 21) + (v148 >> 21);
  a1[45] = ((v148 & 0x100000) != 0) | (2 * (v137 - 125 * (v143 >> 21) + (v148 >> 21)));
  a1[46] = v149 >> 7;
  v150 = (v138 & 0x1FFFFF) + (v149 >> 21);
  a1[47] = (v149 >> 15) & 0x3F | ((v138 + (v149 >> 21)) << 6);
  a1[48] = v150 >> 2;
  a1[49] = v150 >> 10;
  v151 = (v139 & 0x1FFFFF) + (v150 >> 21);
  a1[50] = (v150 >> 18) & 7 | (8 * (v139 + (v150 >> 21)));
  a1[51] = v151 >> 5;
  v152 = (v140 & 0x1FFFFF) + (v151 >> 21);
  a1[52] = v151 >> 13;
  a1[54] = (v140 + (v151 >> 21)) >> 8;
  v153 = (v141 & 0x1FFFFF) + (v152 >> 21);
  a1[53] = v152;
  a1[55] = BYTE2(v152) & 0x1F | (32 * (v141 + (v152 >> 21)));
  a1[56] = v153 >> 3;
  a1[57] = v153 >> 11;
  v154 = (v142 & 0x1FFFFF) + (v153 >> 21);
  v155 = (v143 & 0x1FFFFF) + (v154 >> 21);
  a1[58] = (v153 >> 19) & 3 | (4 * (v142 + (v153 >> 21)));
  a1[59] = v154 >> 6;
  a1[60] = (v154 >> 14) & 0x7F | ((v143 + (v154 >> 21)) << 7);
  a1[61] = ((v154 >> 21) + v143) >> 1;
  a1[62] = v155 >> 9;
  a1[63] = v155 >> 17;
  v156 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t ED25519_verify(const void *a1, size_t a2, unsigned __int8 *a3, int64x2_t *a4)
{
  v68 = *MEMORY[0x1E69E9840];
  if (a3[63] > 0x1Fu)
  {
LABEL_8:
    result = 0;
    goto LABEL_9;
  }

  v8.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v8.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v37[1] = v8;
  v37[2] = v8;
  v36 = v8;
  v37[0] = v8;
  *&v34[32] = v8;
  v35 = v8;
  *v34 = v8;
  *&v34[16] = v8;
  v32 = v8;
  v33 = v8;
  result = x25519_ge_frombytes_vartime(&v32, a4);
  if (result)
  {
    v31 = 0xAAAAAAAAAAAAAAAALL;
    v10.i64[0] = 0xAAAAAAAAAAAAAAAALL;
    v10.i64[1] = 0xAAAAAAAAAAAAAAAALL;
    v30[0] = v10;
    v30[1] = v10;
    fe_neg(v30, &v32);
    fe_carry(&v32, v30);
    fe_neg(v30, (v37 + 8));
    fe_carry(v37 + 1, v30);
    v11 = 0;
    v12 = *(a3 + 1);
    v64[0] = *a3;
    v64[1] = v12;
    v13 = *(a3 + 3);
    v63[0] = *(a3 + 2);
    v63[1] = v13;
    while (1)
    {
      v14 = (*(&v63[1] + v11 + 8) | (*(&v63[1] + v11 + 9) << 8) | (*(&v63[1] + v11 + 10) << 16) | (*(&v63[1] + v11 + 11) << 24) | (*(&v63[1] + v11 + 12) << 32) | (*(&v63[1] + v11 + 13) << 40)) + (*(&v63[1] + v11 + 14) << 48) + (*(&v63[1] + v11 + 15) << 56);
      v15 = *(&ED25519_verify_kOrder + v11 + 24);
      v11 -= 8;
      if (v14 > v15)
      {
        goto LABEL_8;
      }

      if (v14 < v15)
      {
        *&c.num = 0xAAAAAAAAAAAAAAAALL;
        *&v17 = 0xAAAAAAAAAAAAAAAALL;
        *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&c.u.p[112] = v17;
        *&c.u.p[96] = v17;
        *&c.u.p[80] = v17;
        *&c.u.p[64] = v17;
        *&c.u.p[48] = v17;
        *&c.u.p[32] = v17;
        *&c.u.p[16] = v17;
        *c.u.d = v17;
        *&c.Nl = v17;
        *&c.h[6] = v17;
        *&c.h[4] = v17;
        *&c.h[2] = v17;
        *c.h = v17;
        SHA512_Init(&c);
        SHA512_Update(&c, a3, 0x20uLL);
        SHA512_Update(&c, a4, 0x20uLL);
        SHA512_Update(&c, a1, a2);
        *&v18 = 0xAAAAAAAAAAAAAAAALL;
        *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v60 = v18;
        v61 = v18;
        *md = v18;
        v59 = v18;
        SHA512_Final(md, &c);
        x25519_sc_reduce(md);
        *&v19 = 0xAAAAAAAAAAAAAAAALL;
        *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v67[15] = v19;
        v67[14] = v19;
        v67[13] = v19;
        v67[12] = v19;
        v67[11] = v19;
        v67[10] = v19;
        v67[9] = v19;
        v67[8] = v19;
        v67[7] = v19;
        v67[6] = v19;
        v67[5] = v19;
        v67[4] = v19;
        v67[3] = v19;
        v67[2] = v19;
        v67[1] = v19;
        v67[0] = v19;
        v66[15] = v19;
        v66[14] = v19;
        v66[13] = v19;
        v66[12] = v19;
        v66[11] = v19;
        v66[10] = v19;
        v66[9] = v19;
        v66[8] = v19;
        v66[7] = v19;
        v66[6] = v19;
        v66[5] = v19;
        v66[4] = v19;
        v66[3] = v19;
        v66[2] = v19;
        v66[1] = v19;
        v66[0] = v19;
        memset(__b, 170, sizeof(__b));
        v20.i64[0] = 0xAAAAAAAAAAAAAAAALL;
        v20.i64[1] = 0xAAAAAAAAAAAAAAAALL;
        v46[1] = v20;
        v46[2] = v20;
        v45[1] = v20;
        v46[0] = v20;
        v44[2] = v20;
        v45[0] = v20;
        v44[0] = v20;
        v44[1] = v20;
        v43[0] = v20;
        v43[1] = v20;
        v42[1] = v20;
        v42[2] = v20;
        v41[1] = v20;
        v42[0] = v20;
        v40[2] = v20;
        v41[0] = v20;
        v40[0] = v20;
        v40[1] = v20;
        v39[0] = v20;
        v39[1] = v20;
        v38[8] = v20;
        v38[9] = v20;
        v38[6] = v20;
        v38[7] = v20;
        v38[4] = v20;
        v38[5] = v20;
        v38[2] = v20;
        v38[3] = v20;
        v38[0] = v20;
        v38[1] = v20;
        slide(v67, md);
        slide(v66, v63);
        x25519_ge_p3_to_cached(__b, &v32);
        v47 = v32;
        v48 = v33;
        *v50 = *&v34[8];
        *&v50[16] = *&v34[24];
        v49 = *v34;
        *&v50[32] = *&v34[40];
        v51[0] = v35;
        v51[1] = v36;
        *&v51[2] = *&v37[0];
        ge_p2_dbl(v43, &v47);
        x25519_ge_p1p1_to_p3(v38, v43);
        x25519_ge_add(v43, v38, __b);
        x25519_ge_p1p1_to_p3(v39[0].i64, v43);
        x25519_ge_p3_to_cached(&__b[10], v39);
        x25519_ge_add(v43, v38, &__b[10]);
        x25519_ge_p1p1_to_p3(v39[0].i64, v43);
        x25519_ge_p3_to_cached(&__b[20], v39);
        x25519_ge_add(v43, v38, &__b[20]);
        x25519_ge_p1p1_to_p3(v39[0].i64, v43);
        x25519_ge_p3_to_cached(&__b[30], v39);
        x25519_ge_add(v43, v38, &__b[30]);
        x25519_ge_p1p1_to_p3(v39[0].i64, v43);
        x25519_ge_p3_to_cached(&__b[40], v39);
        x25519_ge_add(v43, v38, &__b[40]);
        x25519_ge_p1p1_to_p3(v39[0].i64, v43);
        x25519_ge_p3_to_cached(&__b[50], v39);
        x25519_ge_add(v43, v38, &__b[50]);
        x25519_ge_p1p1_to_p3(v39[0].i64, v43);
        x25519_ge_p3_to_cached(&__b[60], v39);
        x25519_ge_add(v43, v38, &__b[60]);
        x25519_ge_p1p1_to_p3(v39[0].i64, v43);
        x25519_ge_p3_to_cached(&__b[70], v39);
        memset(&v50[8], 0, 32);
        v48 = 0u;
        v49 = 0;
        v47 = 0u;
        *v50 = 1;
        memset(v51 + 8, 0, 32);
        v21 = 255;
        *&v51[0] = 1;
        while (1)
        {
          v22 = v21;
          if (*(v67 + v21))
          {
            break;
          }

          v23 = *(v66 + v21);
          if (*(v66 + v22))
          {
            break;
          }

          v21 = v22 - 1;
          if (!v22)
          {
            goto LABEL_25;
          }
        }

        if ((v22 & 0x80000000) == 0)
        {
          do
          {
            ge_p2_dbl(v43, &v47);
            v24 = *(v67 + v22);
            if (*(v67 + v22) < 1)
            {
              if ((v24 & 0x80) != 0)
              {
                x25519_ge_p1p1_to_p3(v39[0].i64, v43);
                x25519_ge_sub(v43, v39, &__b[10 * (-v24 >> 1)]);
              }
            }

            else
            {
              x25519_ge_p1p1_to_p3(v39[0].i64, v43);
              x25519_ge_add(v43, v39, &__b[10 * (v24 >> 1)]);
            }

            v25 = *(v66 + v22);
            if (v25 < 1)
            {
              if (v25 < 0)
              {
                x25519_ge_p1p1_to_p3(v39[0].i64, v43);
                v57 = 0xAAAAAAAAAAAAAAAALL;
                v26 = &Bi[15 * (-v25 >> 1)];
                v27.i64[0] = 0xAAAAAAAAAAAAAAAALL;
                v27.i64[1] = 0xAAAAAAAAAAAAAAAALL;
                v56[0] = v27;
                v56[1] = v27;
                v55 = 0xAAAAAAAAAAAAAAAALL;
                v54[0] = v27;
                v54[1] = v27;
                v53 = 0xAAAAAAAAAAAAAAAALL;
                v52[0] = v27;
                v52[1] = v27;
                fe_add(v43, (v40 + 8), v39);
                fe_sub((v44 + 8), (v40 + 8), v39);
                fe_mul_impl(v54[0].i64, v43, v26 + 5);
                fe_mul_impl(v56[0].i64, v44 + 1, v26);
                fe_mul_impl(v52[0].i64, v26 + 10, v42 + 1);
                fe_add((v46 + 8), v41, v41);
                fe_sub(v43, v54, v56);
                fe_add((v44 + 8), v54, v56);
                fe_carry(v54, v46 + 1);
                fe_sub(v45, v54, v52);
                fe_add((v46 + 8), v54, v52);
              }
            }

            else
            {
              x25519_ge_p1p1_to_p3(v39[0].i64, v43);
              ge_madd(v43, v39, &Bi[15 * (v25 >> 1)]);
            }

            x25519_ge_p1p1_to_p2(v47.i64, v43);
          }

          while (v22-- > 0);
        }

LABEL_25:
        *&v29 = 0xAAAAAAAAAAAAAAAALL;
        *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
        __b[1] = v29;
        __b[0] = v29;
        x25519_ge_tobytes(__b, &v47);
        result = CRYPTO_memcmp(__b, v64, 32) == 0;
        break;
      }

      if (v11 == -32)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_9:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t slide(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 256; ++i)
  {
    *(result + i) = (*(a2 + (i >> 3)) >> (i & 7)) & 1;
  }

  v3 = 0;
  v4 = result + 1;
  v5 = 1;
  do
  {
    if (*(result + v3) && v3 <= 0xFE)
    {
      v6 = v3;
      v7 = 1;
      v8 = v5;
      do
      {
        v9 = *(result + v8);
        if (*(result + v8))
        {
          v10 = *(result + v3);
          v11 = v9 << v7;
          v12 = (v9 << v7) + v10;
          if (v12 > 15)
          {
            v13 = v10 - v11;
            if (v13 < -15)
            {
              break;
            }

            *(result + v3) = v13;
            v14 = v6;
            while (*(v4 + v14))
            {
              *(v4 + v14++) = 0;
              if (v14 >= 0xFF)
              {
                goto LABEL_16;
              }
            }

            *(v4 + v14) = 1;
          }

          else
          {
            *(result + v3) = v12;
            *(result + v8) = 0;
          }
        }

LABEL_16:
        if (v7 > 5)
        {
          break;
        }

        ++v7;
        ++v8;
        ++v6;
      }

      while (v7 + v3 < 0x100);
    }

    ++v3;
    ++v5;
  }

  while (v3 != 256);
  return result;
}

int BN_bn2bin(const BIGNUM *a, unsigned __int8 *to)
{
  v4 = BN_num_bytes(a);
  bn_words_to_big_endian(to, v4, a->d, a->top);
  return v4;
}

uint64_t bssl::ssl_hash_session_id(int *__src, size_t __n)
{
  p_dst = __src;
  __dst = -1431655766;
  if (__n <= 3)
  {
    __dst = 0;
    if (__n)
    {
      memcpy(&__dst, __src, __n);
    }

    p_dst = &__dst;
  }

  return *p_dst;
}

void bssl::ssl_session_renew_timeout(bssl *this, ssl_st *a2, ssl_session_st *a3)
{
  v3 = a3;
  bssl::ssl_session_rebase_time(this, a2, a3);
  if (LODWORD(a2->cipher_list) <= v3)
  {
    cipher_list_high = HIDWORD(a2->cipher_list);
    if (cipher_list_high >= v3)
    {
      cipher_list_high = v3;
    }

    LODWORD(a2->cipher_list) = cipher_list_high;
  }
}

uint64_t bssl::ssl_ctx_rotate_ticket_encryption_key(bssl *this, ssl_ctx_st *a2)
{
  v13[0] = 0xAAAAAAAAAAAAAAAALL;
  v13[1] = 0xAAAAAAAAAAAAAAAALL;
  bssl::ssl_ctx_get_current_time(this, v13);
  v12 = 0xAAAAAAAAAAAAAAAALL;
  bssl::internal::MutexLockBase<&(CRYPTO_MUTEX_lock_read),&(CRYPTO_MUTEX_unlock_read)>::MutexLockBase(&v12, (this + 24));
  v3 = *(this + 68);
  if (!v3 || (*(v3 + 48) - 1) < v13[0] || (v4 = *(this + 69)) != 0 && *(v4 + 48) <= v13[0])
  {
    CRYPTO_MUTEX_unlock_read(v12);
    v6 = (this + 544);
    v12 = 0xAAAAAAAAAAAAAAAALL;
    bssl::internal::MutexLockBase<&(CRYPTO_MUTEX_lock_write),&(CRYPTO_MUTEX_unlock_write)>::MutexLockBase(&v12, (this + 24));
    if (!*(this + 68) || (*(*(this + 68) + 48) - 1) < v13[0])
    {
      v7 = OPENSSL_malloc(0x38uLL);
      v8 = v7;
      if (!v7)
      {
        v5 = 0;
LABEL_17:
        CRYPTO_MUTEX_unlock_read(v12);
        return v5;
      }

      *(v7 + 6) = 0;
      *(v7 + 1) = 0u;
      *(v7 + 2) = 0u;
      *v7 = 0u;
      RAND_bytes(v7, 16);
      RAND_bytes(v8 + 16, 16);
      RAND_bytes(v8 + 32, 16);
      *(v8 + 6) = v13[0] + 172800;
      v9 = *v6;
      if (*v6)
      {
        v9[6] += 172800;
        *(this + 68) = 0;
        std::unique_ptr<bssl::TicketKey,bssl::internal::Deleter>::reset[abi:ne200100](this + 69, v9);
      }

      std::unique_ptr<bssl::TicketKey,bssl::internal::Deleter>::reset[abi:ne200100](this + 68, v8);
    }

    v10 = *(this + 69);
    if (v10 && *(v10 + 48) <= v13[0])
    {
      std::unique_ptr<bssl::TicketKey,bssl::internal::Deleter>::reset[abi:ne200100](this + 69, 0);
    }

    v5 = 1;
    goto LABEL_17;
  }

  CRYPTO_MUTEX_unlock_read(v12);
  return 1;
}

BOOL bssl::ssl_encrypt_ticket(void *a1, uint64_t a2, uint64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v32 = 0;
  if (!SSL_SESSION_to_bytes_for_ticket(a3, &v32, &v31))
  {
    v12 = 0;
    goto LABEL_36;
  }

  v6 = v31;
  v5 = v32;
  v7 = *a1;
  v8 = *(*(*a1 + 128) + 808);
  if (!v8)
  {
    v40 = 0xAAAAAAAAAAAAAAAALL;
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v38 = v13;
    v39 = v13;
    *&ctx.key[116] = v13;
    v37 = v13;
    *&ctx.key[84] = v13;
    *&ctx.key[100] = v13;
    *&ctx.key[52] = v13;
    *&ctx.key[68] = v13;
    *&ctx.key[36] = v13;
    EVP_CIPHER_CTX_init(&ctx.key[36]);
    ctx.o_ctx.md_data = 0xAAAAAAAAAAAAAAAALL;
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&ctx.i_ctx.md_data = v14;
    *&ctx.o_ctx.engine = v14;
    *&ctx.md_ctx.md_data = v14;
    *&ctx.i_ctx.engine = v14;
    *&ctx.md = v14;
    *&ctx.md_ctx.engine = v14;
    HMAC_CTX_init(&ctx);
    if (v6 >> 7 >= 0x1FF)
    {
      v11 = CBB_add_bytes(a2, "TICKET TOO LARGE", 0x10uLL);
LABEL_33:
      HMAC_CTX_cleanup(&ctx);
      EVP_CIPHER_CTX_cleanup(&ctx.key[36]);
      goto LABEL_34;
    }

    v17 = *(*a1 + 128);
    memset(&ctx.key[4], 170, 32);
    v18 = *(v17 + 560);
    if (v18)
    {
      if ((v18() & 0x80000000) != 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (!bssl::ssl_ctx_rotate_ticket_encryption_key(v17, v15))
      {
        goto LABEL_32;
      }

      CRYPTO_MUTEX_lock_read((v17 + 24));
      if (!RAND_bytes(&ctx.key[20], 16) || (v25 = EVP_aes_128_cbc(), !EVP_EncryptInit_ex(&ctx.key[36], v25, 0, (*(v17 + 544) + 32), &ctx.key[20])) || (v26 = *(v17 + 544), v27 = EVP_sha256(), HMAC_Init_ex(&ctx, (v26 + 16), 16, v27, 0), !v28))
      {
        CRYPTO_MUTEX_unlock_read((v17 + 24));
        goto LABEL_32;
      }

      *&ctx.key[4] = **(v17 + 544);
      CRYPTO_MUTEX_unlock_read((v17 + 24));
    }

    out = 0xAAAAAAAAAAAAAAAALL;
    if (CBB_add_bytes(a2, &ctx.key[4], 0x10uLL))
    {
      v19 = EVP_CIPHER_CTX_iv_length(&ctx.key[36]);
      if (CBB_add_bytes(a2, &ctx.key[20], v19))
      {
        if (CBB_reserve(a2, &out, v6 + 32))
        {
          outl = -1431655766;
          if (EVP_EncryptUpdate(&ctx.key[36], out, &outl, v5, v6))
          {
            v20 = outl;
            if (EVP_EncryptFinal_ex(&ctx.key[36], &out[outl], &outl))
            {
              if (CBB_did_write(a2, outl + v20))
              {
                len = -1431655766;
                v21 = CBB_data(a2);
                v22 = CBB_len(a2);
                HMAC_Update(&ctx, v21, v22);
                if (v23)
                {
                  if (CBB_reserve(a2, &out, 64))
                  {
                    HMAC_Final(&ctx, out, &len);
                    if (v24)
                    {
                      v11 = CBB_did_write(a2, len) != 0;
                      goto LABEL_33;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_32:
    v11 = 0;
    goto LABEL_33;
  }

  v9 = (*v8)(*a1);
  v10 = v9 + v6;
  if (__CFADD__(v9, v6))
  {
    ERR_put_error(16, 0, 69, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_session.cc", 533);
    v11 = 0;
  }

  else
  {
    *&ctx.key[36] = 0xAAAAAAAAAAAAAAAALL;
    if (CBB_reserve(a2, &ctx.key[36], v10))
    {
      ctx.md = 0xAAAAAAAAAAAAAAAALL;
      if ((*(v8 + 8))(v7, *&ctx.key[36], &ctx, v10, v5, v6))
      {
        v11 = CBB_did_write(a2, ctx.md) != 0;
      }

      else
      {
        ERR_put_error(16, 0, 276, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_session.cc", 545);
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

LABEL_34:
  v12 = v11 != 0;
  if (v5)
  {
    OPENSSL_free(v5);
  }

LABEL_36:
  v29 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_1A908068C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, HMAC_CTX *ctx)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL bssl::ssl_session_is_context_valid(uint64_t a1, uint64_t a2)
{
  if (a2 && (v2 = *(a2 + 124), v3 = *(*(a1 + 8) + 32), v2 == *(v3 + 120)))
  {
    return memcmp((a2 + 92), (v3 + 88), v2) == 0;
  }

  else
  {
    return 0;
  }
}

BOOL bssl::ssl_session_is_resumable(bssl *this, const bssl::SSL_HANDSHAKE *a2, const ssl_session_st *a3)
{
  v5 = *this;
  result = bssl::ssl_session_is_context_valid(this, a2);
  if (result)
  {
    if (((*(v5 + 180) ^ (*(a2 + 440) >> 4)) & 1) == 0)
    {
      result = bssl::ssl_session_is_time_valid(v5, a2, v7);
      if (!result)
      {
        return result;
      }

      if (*(*(v5 + 48) + 208) == *(a2 + 2) && *(this + 196) == *(a2 + 25))
      {
        v8 = EVP_MD_CTX_md(*(a2 + 17));
        v9 = *(a2 + 440);
        if (!v8 && (v9 & 2) == 0)
        {
          return (*(*this + 168) != 0) ^ ((v9 & 0x20) == 0);
        }

        if (((*(*(this + 1) + 309) >> 5) & 1) == ((v9 >> 1) & 1))
        {
          return (*(*this + 168) != 0) ^ ((v9 & 0x20) == 0);
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t bssl::ssl_get_prev_session(uint64_t *a1, SSL_SESSION **a2, char *a3, _BYTE *a4, uint64_t a5)
{
  v6 = *a1;
  if ((*(v6 + 180) & 1) == 0)
  {
    bssl::ssl_get_prev_session();
  }

  v33 = 0;
  v32 = 0;
  *&v31 = 0xAAAAAAAAAAAAAAAALL;
  *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
  if ((SSL_get_options(v6) & 0x4000) != 0 || !bssl::ssl_client_hello_get_extension(a5, &v31, 35))
  {
    v13 = 0;
    goto LABEL_10;
  }

  if (!*(&v31 + 1))
  {
    v13 = 1;
LABEL_10:
    p_dst = *(a5 + 48);
    v14 = *(a5 + 56);
    v35 = p_dst;
    v36 = v14;
    v16 = *a1;
    v17 = v33;
    v33 = 0;
    if (v17)
    {
      bssl::RefCounted<ssl_session_st>::DecRefInternal(v17);
    }

    if (v14 - 33 <= 0xFFFFFFFFFFFFFFDFLL)
    {
      goto LABEL_37;
    }

    v34 = 0;
    v18 = *(v16 + 128);
    if ((*(v18 + 301) & 1) == 0)
    {
      LODWORD(__dst) = -1431655766;
      if (v14 <= 3)
      {
        LODWORD(__dst) = 0;
        memcpy(&__dst, p_dst, v14);
        p_dst = &__dst;
      }

      v19 = *p_dst;
      CRYPTO_MUTEX_lock_read((v18 + 24));
      v20 = *(*(v16 + 128) + 264);
      __dst = bssl::ssl_lookup_session(bssl::SSL_HANDSHAKE *,std::unique_ptr<ssl_session_st,bssl::internal::Deleter> *,bssl::Span<unsigned char const>)::$_0::__invoke;
      v38 = &v35;
      key = OPENSSL_lh_retrieve_key(v20, &__dst, v19, lh_SSL_SESSION_call_cmp_key);
      v22 = key;
      if (key)
      {
        CRYPTO_refcount_inc(key);
      }

      v34 = v22;
      CRYPTO_MUTEX_unlock_read((v18 + 24));
      if (v22)
      {
        goto LABEL_27;
      }

      v18 = *(v16 + 128);
    }

    v23 = *(v18 + 328);
    if (!v23)
    {
      goto LABEL_30;
    }

    LODWORD(__dst) = 1;
    v24 = v23(v16, v35, v36, &__dst);
    v22 = v24;
    v34 = v24;
    if (!v24)
    {
LABEL_37:
      v28 = v33;
      v33 = 0;
      std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](a2, v28);
      *a3 = v13;
      *a4 = v32;
      v12 = 1;
      goto LABEL_38;
    }

    if (v24 == &bssl::g_pending_session_magic)
    {
      v12 = 10;
      goto LABEL_38;
    }

    if (__dst)
    {
      CRYPTO_refcount_inc(v24);
    }

    v25 = *(v16 + 128);
    if ((*(v25 + 301) & 2) == 0)
    {
      SSL_CTX_add_session(v25, v22);
    }

LABEL_27:
    __dst = 0xAAAAAAAAAAAAAAAALL;
    v38 = 0xAAAAAAAAAAAAAAAALL;
    bssl::ssl_get_current_time(v16, &__dst);
    v26 = *(v22 + 24);
    if (__dst >= v26 && __dst - v26 < v22[46])
    {
LABEL_31:
      v27 = v33;
      v33 = v22;
      v34 = 0;
      if (v27)
      {
        bssl::RefCounted<ssl_session_st>::DecRefInternal(v27);
      }

      goto LABEL_37;
    }

    bssl::remove_session(*(v16 + 128), v22, 1);
    v34 = 0;
    bssl::RefCounted<ssl_session_st>::DecRefInternal(v22);
LABEL_30:
    v22 = 0;
    goto LABEL_31;
  }

  v11 = bssl::ssl_process_ticket(a1, &v33, &v32, v31, *(&v31 + 1), *(a5 + 48), *(a5 + 56));
  if (v11 != 1)
  {
    if (v11 == 2)
    {
      if (v33)
      {
        __assert_rtn("ssl_get_prev_session", "ssl_session.cc", 717, "!session");
      }
    }

    else if (v11 == 3)
    {
      v12 = 0;
      goto LABEL_38;
    }

    v13 = 1;
    goto LABEL_37;
  }

  v12 = 11;
LABEL_38:
  v29 = v33;
  v33 = 0;
  if (v29)
  {
    bssl::RefCounted<ssl_session_st>::DecRefInternal(v29);
  }

  return v12;
}

void sub_1A9080B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, SSL_SESSION *);
  std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](va1, 0);
  std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t bssl::add_session_locked(uint64_t a1, SSL_SESSION **a2)
{
  v4 = *a2;
  v5 = *(a1 + 264);
  v12 = 0;
  result = OPENSSL_lh_insert(v5, &v12, v4, lh_SSL_SESSION_call_hash_func, lh_SSL_SESSION_call_cmp_func);
  if (result)
  {
    v7 = v12;
    *a2 = 0;
    std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](a2, v7);
    if (v7)
    {
      if (v7 == v4)
      {
        return 0;
      }

      bssl::SSL_SESSION_list_remove(a1, v7, v8);
    }

    if (v4->ex_data.sk && v4->ciphers)
    {
      bssl::SSL_SESSION_list_remove(a1, v4, v8);
    }

    v9 = *(a1 + 280);
    p_comp = &v9[6].comp;
    if (!v9)
    {
      p_comp = (a1 + 288);
    }

    *p_comp = v4;
    *(a1 + 280) = v4;
    if (!v9)
    {
      v9 = (a1 + 288);
    }

    v4->ciphers = (a1 + 280);
    v4->ex_data.sk = v9;
    if (SSL_CTX_sess_get_cache_size(a1))
    {
      do
      {
        v11 = EVP_AEAD_CTX_aead(*(a1 + 264));
      }

      while (v11 > SSL_CTX_sess_get_cache_size(a1) && (bssl::remove_session(a1, *(a1 + 288), 0) & 1) != 0);
    }

    return 1;
  }

  return result;
}

const unsigned __int8 *__cdecl SSL_SESSION_get_id(const SSL_SESSION *s, unsigned int *len)
{
  if (len)
  {
    *len = s->session_id[19];
  }

  return &s->master_key[39];
}

uint64_t SSL_SESSION_set_ticket(uint64_t a1, char *a2, unint64_t a3)
{
  v3 = a3;
  result = bssl::Array<unsigned char>::InitUninitialized(a1 + 232, a3);
  if (result && v3)
  {
    v7 = *(a1 + 232);
    do
    {
      v8 = *a2++;
      *v7++ = v8;
      --v3;
    }

    while (v3);
  }

  return result;
}

int SSL_CTX_add_session(SSL_CTX *s, SSL_SESSION *c)
{
  if (c)
  {
    CRYPTO_refcount_inc(c);
  }

  v8 = 0xAAAAAAAAAAAAAAAALL;
  v9 = c;
  bssl::internal::MutexLockBase<&(CRYPTO_MUTEX_lock_write),&(CRYPTO_MUTEX_unlock_write)>::MutexLockBase(&v8, &s->cert_store);
  v9 = 0;
  v7 = c;
  v4 = bssl::add_session_locked(s, &v7);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    bssl::RefCounted<ssl_session_st>::DecRefInternal(v5);
  }

  CRYPTO_MUTEX_unlock_read(v8);
  return v4;
}

void sub_1A9080DE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, SSL_SESSION *);
  v5 = va_arg(va1, pthread_rwlock_t *);
  std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  CRYPTO_MUTEX_unlock_read(v5);
  std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](va1, 0);
  _Unwind_Resume(a1);
}

uint64_t bssl::remove_session(bssl *this, ssl_ctx_st *a2, ssl_session_st *a3)
{
  if (!a2)
  {
    return 0;
  }

  if (!BYTE3(a2->remove_session_cb))
  {
    return 0;
  }

  v4 = a3;
  if (a3)
  {
    CRYPTO_MUTEX_lock_write((this + 24));
  }

  v6 = OPENSSL_lh_retrieve(*(this + 33), a2, lh_SSL_SESSION_call_hash_func, lh_SSL_SESSION_call_cmp_func);
  v7 = v6;
  if (v6 == a2)
  {
    v7 = OPENSSL_lh_delete(*(this + 33), a2, lh_SSL_SESSION_call_hash_func, lh_SSL_SESSION_call_cmp_func);
    bssl::SSL_SESSION_list_remove(this, a2, v9);
    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v4)
  {
LABEL_7:
    CRYPTO_MUTEX_unlock_read((this + 24));
  }

LABEL_8:
  if (v6 != a2)
  {
    return 0;
  }

  v10 = *(this + 40);
  if (v10)
  {
    v10(this, v7);
  }

  if (v7)
  {
    bssl::RefCounted<ssl_session_st>::DecRefInternal(v7);
  }

  return 1;
}

void timeout_doall_arg(ssl_ctx_st *a1, uint64_t *a2)
{
  v4 = a2[1];
  if (!v4 || (app_gen_cookie_cb = a1->app_gen_cookie_cb, client_cert_cb_low = LODWORD(a1->client_cert_cb), v7 = __CFADD__(app_gen_cookie_cb, client_cert_cb_low), v8 = app_gen_cookie_cb + client_cert_cb_low, v7) || v4 > v8)
  {
    OPENSSL_lh_delete(a2[2], a1, lh_SSL_SESSION_call_hash_func, lh_SSL_SESSION_call_cmp_func);
    bssl::SSL_SESSION_list_remove(*a2, a1, v9);
    v10 = *(*a2 + 320);
    if (v10)
    {
      v10();
    }

    if (a1)
    {

      bssl::RefCounted<ssl_session_st>::DecRefInternal(a1);
    }
  }
}

uint64_t bssl::SSL_SESSION_list_remove(uint64_t this, ssl_ctx_st *a2, ssl_session_st *a3)
{
  rsa_md5 = a2->rsa_md5;
  if (rsa_md5)
  {
    v6 = *&a2->ex_data.dummy;
    p_dummy = &a2->ex_data.dummy;
    v5 = v6;
    if (v6)
    {
      v7 = (this + 288);
      v8 = (this + 280);
      if (rsa_md5 == (this + 288))
      {
        if (v5 == v8)
        {
          *v8 = 0;
          *(this + 288) = 0;
        }

        else
        {
          *v7 = v5;
          v5[28] = v7;
        }
      }

      else if (v5 == v8)
      {
        *v8 = rsa_md5;
        *&rsa_md5[1].ctx_size = v8;
      }

      else
      {
        *&rsa_md5[1].ctx_size = v5;
        *(*p_dummy + 224) = rsa_md5;
      }

      *p_dummy = 0;
      *(p_dummy + 1) = 0;
    }
  }

  return this;
}

void std::unique_ptr<unsigned char,bssl::internal::Deleter>::reset[abi:ne200100](void **a1, void *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    OPENSSL_free(v3);
  }
}

uint64_t bssl::ssl_client_cipher_list_contains_cipher(uint64_t a1, int a2)
{
  v2 = *(a1 + 72);
  v7 = *(a1 + 64);
  v8 = v2;
  if (!v2)
  {
    return 0;
  }

  do
  {
    v6 = -21846;
    result = CBS_get_u16(&v7, &v6);
    if (!result)
    {
      break;
    }

    result = v6 == a2;
  }

  while (v6 != a2 && v8 != 0);
  return result;
}

uint64_t bssl::ssl_server_handshake_int_state(uint64_t a1)
{
  if (*(a1 + 20) == 4)
  {
    return bssl::tls13_server_handshake_int_state(a1);
  }

  else
  {
    return (4 * *(a1 + 20)) | 0x2B291000u;
  }
}

uint64_t bssl::extract_sni(uint64_t *a1, char *a2, uint64_t a3)
{
  v4 = *a1;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  if (bssl::ssl_client_hello_get_extension(a3, &v12, 0))
  {
    memset(v11, 170, sizeof(v11));
    v10 = -86;
    if (CBS_get_u16_length_prefixed(&v12, &v11[2]) && CBS_get_u8(&v11[2], &v10) && CBS_get_u16_length_prefixed(&v11[2], v11) && !v11[3] && !*(&v12 + 1))
    {
      if (v10 || v11[1] - 256 < 0xFFFFFFFFFFFFFF01 || CBS_contains_zero_byte(v11))
      {
        v5 = 0;
        v6 = 112;
      }

      else
      {
        v9 = 0;
        v8 = CBS_strdup(v11, &v9);
        v5 = v8;
        if (v8)
        {
          std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100]((*(v4 + 48) + 512), v9);
          return v5;
        }

        v6 = 80;
      }
    }

    else
    {
      v5 = 0;
      v6 = 50;
    }

    *a2 = v6;
  }

  else
  {
    std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100]((*(v4 + 48) + 512), 0);
    return 1;
  }

  return v5;
}

bssl *bssl::choose_params(bssl *this, bssl::SSL_HANDSHAKE *a2, EVP_MD_CTX *ctx, unsigned __int16 *a4)
{
  if (a4)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(this + 1);
  v8 = *(v7 + 72);
  if (v8)
  {
    v6 |= 8u;
  }

  v49 = 8 * (v8 != 0);
  v50 = v6;
  v52 = 0;
  if (a2 && !*(a2 + 1))
  {
    v10 = bssl::tls1_choose_signature_algorithm(this, a2, &v52, a4);
    ERR_clear_error();
    v11 = EVP_PKEY_id(*(a2 + 1));
    v12 = v11;
    if (*(*(this + 1) + 309) < 0 && v11 == 408)
    {
      v13 = EVP_PKEY_get0_EC_KEY(*(a2 + 1));
      v51 = -21846;
      v14 = EC_KEY_get0_group(v13);
      curve_name = EC_GROUP_get_curve_name(v14);
      if (bssl::ssl_nid_to_group_id(&v51, curve_name))
      {
        v16 = *(this + 85);
        v17 = *(this + 86);
        v18 = &v16[v17];
        if (v17)
        {
          v19 = 2 * v17;
          while (*v16 != v51)
          {
            ++v16;
            v19 -= 2;
            if (!v19)
            {
              v16 = v18;
              break;
            }
          }
        }

        v10 = ((v16 != v18) & v10);
        if (v16 != v18 || v8)
        {
          goto LABEL_21;
        }

LABEL_67:
        v40 = 243;
        v41 = 410;
        goto LABEL_56;
      }

      if (!v8)
      {
        goto LABEL_67;
      }

      v10 = 0;
    }

LABEL_21:
    v49 |= bssl::ssl_cipher_auth_mask_for_key(*(a2 + 1), v10);
    v20 = v50;
    if (v12 == 6)
    {
      v20 = v50 + 1;
    }

    v50 = v20;
    v7 = *(this + 1);
  }

  v21 = *this;
  v22 = *(v7 + 24);
  if (!v22)
  {
    v22 = *(*(v21 + 120) + 240);
  }

  v23 = *v22;
  if ((*(v21 + 146) & 0x40) != 0)
  {
    v24 = v22[1];
    v25 = ctx;
    ctx = *v22;
  }

  else
  {
    v24 = 0;
    v25 = *v22;
  }

  if (!EVP_MD_CTX_md(ctx))
  {
LABEL_55:
    v40 = 184;
    v41 = 364;
LABEL_56:
    ERR_put_error(16, 0, v40, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", v41);
    return 0;
  }

  v26 = 0;
  v27 = -1;
  while (1)
  {
    v28 = OPENSSL_sk_value(ctx, v26);
    v29 = 0;
    if (EVP_MD_CTX_md(v25))
    {
      while (1)
      {
        v30 = OPENSSL_sk_value(v25, v29);
        v31 = *(v28 + 4);
        v32 = *(v30 + 4);
        v33 = v31 != v32;
        if (v31 == v32)
        {
          break;
        }

        if (++v29 >= EVP_MD_CTX_md(v25))
        {
          v29 = 0;
          break;
        }
      }
    }

    else
    {
      v33 = 1;
    }

    min_version = SSL_CIPHER_get_min_version(v28);
    if (min_version <= bssl::ssl_protocol_version(v21, v35))
    {
      v37 = bssl::ssl_protocol_version(v21, v36);
      if (v37 <= SSL_CIPHER_get_max_version(v28) && (*(v28 + 5) & v50) != 0 && (v28[3] & v49) != 0 && !v33)
      {
        break;
      }
    }

    if (v24 && (*(&v24->digest + v26) & 1) == 0 && v27 != -1)
    {
      v44 = v27;
      goto LABEL_63;
    }

LABEL_54:
    if (++v26 >= EVP_MD_CTX_md(ctx))
    {
      goto LABEL_55;
    }
  }

  if (v24 && *(&v24->digest + v26) == 1)
  {
    if (v29 < v27 || v27 == -1)
    {
      v27 = v29;
    }

    goto LABEL_54;
  }

  v45 = v27;
  if (v29 < v27)
  {
    v45 = v29;
  }

  if (v27 == -1)
  {
    v44 = v29;
  }

  else
  {
    v44 = v45;
  }

LABEL_63:
  v46 = OPENSSL_sk_value(v25, v44);
  v42 = v46;
  if (v46 && bssl::ssl_cipher_requires_server_key_exchange(v46, v47))
  {
    bssl::ssl_cipher_uses_certificate_auth(v42, v48);
  }

  return v42;
}

uint64_t bssl::ssl_client_handshake_int_state(uint64_t a1)
{
  if (*(a1 + 20) == 4)
  {
    return bssl::tls13_client_handshake_int_state(a1);
  }

  else
  {
    return (4 * *(a1 + 20)) | 0x2B290C00u;
  }
}

uint64_t sk_SSL_CIPHER_call_cmp_func(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  return a1(&v5, &v4);
}

uint64_t bssl::dtls_open_record(bssl *a1, char *a2, uint64_t a3, unint64_t *a4, char *a5, uint64_t a6, unint64_t a7)
{
  __dst[1] = *MEMORY[0x1E69E9840];
  *a4 = 0;
  if (*(*(a1 + 6) + 172) == 1)
  {
    result = 3;
    goto LABEL_30;
  }

  if (!a7)
  {
    result = 2;
    goto LABEL_30;
  }

  *&v50[1] = a6;
  v51 = a7;
  v50[0] = -86;
  v49 = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_u8(&v50[1], v50))
  {
    goto LABEL_28;
  }

  v16 = *(*(a1 + 6) + 264);
  *v48 = 0xAAAAAAAAAAAAAAAALL;
  v47 = -1431699456;
  v45 = 0xAAAAAAAAAAAAAAAALL;
  v46 = 0xAAAAAAAAAAAAAAAALL;
  v17 = v16;
  if ((v50[0] & 0xE0) == 0x20)
  {
    v17 = v16;
    if (*v16)
    {
      if (bssl::ssl_protocol_version(a1, v15) > 0x303)
      {
        if (bssl::parse_dtls13_record_header(a1, &v50[1], a6, a7, v50[0], &v45, v48, &v47 + 1, &v49))
        {
          v18 = v49;
          LODWORD(v19) = HIWORD(v47);
          goto LABEL_32;
        }

LABEL_28:
        *a4 = a7;
LABEL_29:
        result = 1;
        goto LABEL_30;
      }

      v17 = *(*(a1 + 6) + 264);
    }
  }

  __dst[0] = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_u16(&v50[1], &v47))
  {
    goto LABEL_28;
  }

  if (!CBS_copy_bytes(&v50[1], __dst, 8uLL))
  {
    goto LABEL_28;
  }

  v20 = v51;
  if (!CBS_get_u16_length_prefixed(&v50[1], &v45) || v46 > 0x4140)
  {
    goto LABEL_28;
  }

  v44 = v20;
  v22 = v47;
  if (*v17)
  {
    if (*(*(a1 + 6) + 208))
    {
      if (bssl::ssl_protocol_version(a1, v21) <= 0x303)
      {
        v23 = *(*(a1 + 6) + 208);
      }

      else
      {
        v23 = 65277;
      }
    }

    else
    {
      v23 = 65279;
    }

    v26 = v22 == v23;
    v24 = v44;
    if (!v26)
    {
      goto LABEL_28;
    }

    v27 = *v17;
    v25 = bswap64(__dst[0]);
    *v48 = v25;
    if (v27)
    {
      if (bssl::ssl_protocol_version(a1, v21) >= 0x304)
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
    v24 = v44;
    if ((v47 & 0xFF00) != 0xFE00)
    {
      goto LABEL_28;
    }

    v25 = bswap64(__dst[0]);
    *v48 = v25;
  }

  v18 = a7 - v24 + 2;
  v19 = HIWORD(v25);
LABEL_32:
  if (a7 >= v18)
  {
    v29 = v18;
  }

  else
  {
    v29 = a7;
  }

  bssl::ssl_do_msg_callback(a1, 0, 256, a6, v29);
  v31 = *(a1 + 7);
  if (v19 != *(v31 + 2))
  {
    goto LABEL_52;
  }

  v32 = *v48;
  v33 = *(v31 + 40);
  v34 = v33 >= *v48;
  v35 = v33 - *v48;
  if (v34 && (v35 > 0xFF || ((*(v31 + 8 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v35) & 1) != 0))
  {
    goto LABEL_52;
  }

  if (!bssl::SSLAEADContext::Open(v16, a3, v50[0], v47, *v48, a6, v29, v30, v45, v46))
  {
    ERR_clear_error();
LABEL_52:
    *a4 = a7 - v51;
    goto LABEL_29;
  }

  *a4 = a7 - v51;
  if (!*v16)
  {
    if (*(a3 + 8) <= 0x4000uLL)
    {
      goto LABEL_56;
    }

LABEL_54:
    ERR_put_error(16, 0, 136, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/dtls_record.cc", 398);
    v42 = 22;
LABEL_55:
    *a5 = v42;
    result = 4;
    goto LABEL_30;
  }

  v37 = bssl::ssl_protocol_version(a1, v36);
  if (v37 <= 0x303)
  {
    v38 = 0x4000;
  }

  else
  {
    v38 = 16385;
  }

  v39 = *(a3 + 8);
  if (v39 > v38)
  {
    goto LABEL_54;
  }

  if (v37 >= 0x304)
  {
    v40 = v39 - 1;
    while (v40 != -1)
    {
      v50[0] = *(*a3 + v40);
      v41 = v50[0];
      *(a3 + 8) = v40--;
      if (v41)
      {
        goto LABEL_56;
      }
    }

    ERR_put_error(16, 0, 139, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/dtls_record.cc", 406);
    v42 = 51;
    goto LABEL_55;
  }

LABEL_56:
  bssl::dtls1_bitmap_record((*(a1 + 7) + 8), v32);
  v43 = v50[0];
  if (v50[0] == 21)
  {
    result = bssl::ssl_process_alert(a1, a5, *a3, *(a3 + 8));
  }

  else
  {
    result = 0;
    *(*(a1 + 6) + 213) = 0;
    *a2 = v43;
  }

LABEL_30:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t bssl::parse_dtls13_record_header(uint64_t a1, unsigned __int8 **a2, uint64_t a3, unint64_t a4, char a5, unint64_t *a6, unint64_t *a7, _WORD *a8, unint64_t *a9)
{
  v40[2] = *MEMORY[0x1E69E9840];
  if ((a5 & 0x10) != 0)
  {
    result = 0;
  }

  else
  {
    v16 = *(*(a1 + 56) + 2);
    v17 = v16 & 0xFFFC | a5 & 3;
    if (v17 <= v16 || (v16 & 0xFFFC) == 0)
    {
      v19 = v16 & 0xFFFC | a5 & 3;
    }

    else
    {
      v19 = v17 - 4;
    }

    *a8 = v19;
    if ((a5 & 8) != 0)
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    result = CBS_skip(a2, v20);
    if (result)
    {
      v22 = a4 - a2[1];
      *a9 = v22;
      if ((a5 & 4) != 0)
      {
        *a9 = v22 + 2;
        result = CBS_get_u16_length_prefixed(a2, a6);
        if (!result)
        {
          goto LABEL_16;
        }
      }

      else
      {
        result = CBS_get_bytes(a2, a6, a2[1]);
        if (!result)
        {
          goto LABEL_16;
        }
      }

      v40[0] = 0xAAAAAAAAAAAAAAAALL;
      v40[1] = 0xAAAAAAAAAAAAAAAALL;
      v24 = *a6;
      v25 = a6[1];
      result = bssl::SSLAEADContext::GenerateRecordNumberMask(*(*(a1 + 48) + 264));
      if (result)
      {
        v26 = 0;
        if (a4 <= 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = a4;
        }

        v28 = v27 - 1;
        v29 = (a3 + 1);
        v30 = v40;
        v31 = v20;
        do
        {
          if (!v28)
          {
            abort();
          }

          v32 = *v30++;
          v33 = *v29;
          *v29++ ^= v32;
          v26 = (v33 ^ v32) | (v26 << 8);
          --v28;
          --v31;
        }

        while (v31);
        v34 = ~(-1 << (8 * v20));
        v35 = *(*(a1 + 56) + 40);
        v36 = (v26 - (v35 + 1)) & v34;
        v37 = v34 + 1;
        v38 = v36 + v35 + 1;
        if (v38 < v35 || (v36 > v37 >> 1 ? (v39 = v38 > v34) : (v39 = 0), v39))
        {
          v38 -= v37;
        }

        *a7 = v38;
      }
    }
  }

LABEL_16:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

void bssl::dtls1_bitmap_record(bssl *this, DTLS1_BITMAP *a2)
{
  v4 = *(this + 4);
  v5 = a2 > v4;
  v6 = (a2 - v4);
  if (v5)
  {
    if (v6 >= 0x100)
    {
      v8 = this;
      v9 = 0;
      std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<4ul,256ul>>(&v8, 0x100uLL);
    }

    else
    {
      std::bitset<256ul>::operator<<=[abi:ne200100](this, v6);
    }

    *(this + 4) = a2;
    v4 = a2;
  }

  v7 = v4 - a2;
  if (v7 <= 0xFF)
  {
    *(this + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v7;
  }
}

uint64_t bssl::dtls_record_header_write_len(bssl *this, const ssl_st *a2)
{
  if (!*(*(this + 6) + 208))
  {
    return 13;
  }

  v2 = a2;
  if (bssl::ssl_protocol_version(this, a2) <= 0x303u || v2 == 0)
  {
    return 13;
  }

  else
  {
    return 5;
  }
}

uint64_t bssl::dtls_max_seal_overhead(bssl *this, const ssl_st *a2)
{
  if (*(*(this + 6) + 208))
  {
    if (bssl::ssl_protocol_version(this, a2) <= 0x303u || a2 == 0)
    {
      v5 = 13;
    }

    else
    {
      v5 = 5;
    }
  }

  else
  {
    v5 = 13;
  }

  v6 = bssl::get_write_aead(this, a2);
  v8 = bssl::SSLAEADContext::MaxOverhead(v6) + v5;
  if (*(*(this + 6) + 208))
  {
    v9 = bssl::ssl_protocol_version(this, v7);
    if (a2)
    {
      v10 = v9 > 0x303;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      ++v8;
    }
  }

  return v8;
}

uint64_t bssl::get_write_aead(bssl *this, const ssl_st *a2)
{
  v2 = *(this + 7);
  if (!a2)
  {
    v4 = *(v2 + 72);
    return *v4;
  }

  v3 = *(v2 + 4);
  if (v3 <= a2)
  {
    if (v3 == a2)
    {
      v4 = *(this + 6) + 272;
      return *v4;
    }

LABEL_9:
    abort();
  }

  if (a2 + 1 != v3)
  {
    goto LABEL_9;
  }

  v4 = v2 + 56;
  return *v4;
}

uint64_t bssl::dtls_seal_prefix_len(bssl *this, const ssl_st *a2)
{
  if (*(*(this + 6) + 208))
  {
    if (bssl::ssl_protocol_version(this, a2) <= 0x303u || a2 == 0)
    {
      v5 = 13;
    }

    else
    {
      v5 = 5;
    }
  }

  else
  {
    v5 = 13;
  }

  v6 = bssl::get_write_aead(this, a2);
  return bssl::SSLAEADContext::ExplicitNonceLen(v6) + v5;
}

uint64_t bssl::dtls_seal_record(bssl *this, ssl_st *a2, unsigned __int8 *a3, unint64_t *a4, char a5, char *a6, const unsigned __int8 *a7, ssl_st *a8, unsigned __int16 a9)
{
  v55 = *MEMORY[0x1E69E9840];
  v52 = a5;
  v17 = bssl::dtls_seal_prefix_len(this, a8);
  v18 = v17;
  if (a4 + a2 <= a6 || &a7[a6] <= a2 || v17 <= a4 && a2 + v17 == a6)
  {
    v50 = bssl::get_write_aead(this, a8);
    if (a8)
    {
      v20 = *(this + 6);
      v21 = *(this + 7);
      v22 = *(v21 + 4);
      v23 = (v21 + 64);
      if (v22 <= a8)
      {
        v24 = (v20 + 8);
      }

      else
      {
        v24 = v23;
      }
    }

    else
    {
      v20 = *(this + 6);
      v24 = (*(*(this + 7) + 72) + 8);
    }

    if (*(v20 + 208))
    {
      v25 = bssl::ssl_protocol_version(this, v19) <= 0x303u || a8 == 0;
      if (v25)
      {
        v26 = 13;
      }

      else
      {
        v26 = 5;
      }
    }

    else
    {
      v26 = 13;
    }

    if (*v24 - 0xFFFFFFFFFFFFLL > 0xFFFEFFFFFFFFFFFFLL)
    {
      v49 = v26;
      v44 = a3;
      if (*(*(this + 6) + 208))
      {
        v29 = bssl::ssl_protocol_version(this, v19);
        v31 = *(*(this + 6) + 208);
        if (v29 <= 0x303)
        {
          v32 = *(*(this + 6) + 208);
        }

        else
        {
          v32 = -259;
        }

        v48 = v32;
        v45 = *v24 | (a8 << 48);
        if (*(*(this + 6) + 208))
        {
          v33 = bssl::ssl_protocol_version(this, v30) > 0x303u;
          v34 = a8 != 0;
          v35 = v34 & v33;
          v25 = !v34 || !v33;
          v36 = &v52;
          if (v25)
          {
            v36 = 0;
          }

          v47 = v36;
          v46 = v35;
        }

        else
        {
          v35 = 0;
          v46 = 0;
          v47 = 0;
        }
      }

      else
      {
        v35 = 0;
        v46 = 0;
        v47 = 0;
        v45 = *v24 | (a8 << 48);
        v48 = -257;
      }

      v51 = 0xAAAAAAAAAAAAAAAALL;
      if (bssl::SSLAEADContext::CiphertextLen(v50, &v51, a7, v35))
      {
        v38 = v51;
        if (v51 + v49 <= a4)
        {
          if (v46)
          {
            LOBYTE(a2->version) = a8 & 3 | 0x2C;
            BYTE1(a2->version) = BYTE1(*v24);
            BYTE2(a2->version) = *v24;
            HIBYTE(a2->version) = HIBYTE(v38);
            LOBYTE(a2->type) = v38;
            if ((bssl::SSLAEADContext::SealScatter(v50, a2 + v49, a2 + v18, &a7[a2 + v18], a5, v48, *v24, v37, a2, v49, a6, a7, v47, v35) & 1) == 0)
            {
              goto LABEL_37;
            }

            v53 = 0xAAAAAAAAAAAAAAAALL;
            v54 = 0xAAAAAAAAAAAAAAAALL;
            if (!bssl::SSLAEADContext::GenerateRecordNumberMask(v50))
            {
              goto LABEL_37;
            }

            *(&a2->version + 1) ^= v53;
            v42 = v49;
          }

          else
          {
            LOBYTE(a2->version) = a5;
            BYTE1(a2->version) = HIBYTE(v48);
            BYTE2(a2->version) = v48;
            *(&a2->version + 3) = bswap64(v45);
            BYTE3(a2->method) = HIBYTE(v38);
            BYTE4(a2->method) = v38;
            __src = a6;
            v42 = v49;
            if ((bssl::SSLAEADContext::SealScatter(v50, a2 + v49, a2 + v18, &a7[a2 + v18], a5, v48, v45, v37, a2, v49, __src, a7, v47, v35) & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          ++*v24;
          *v44 = v51 + v42;
          v39 = 1;
          bssl::ssl_do_msg_callback(this, 1, 256, a2, v42);
          goto LABEL_38;
        }

        v27 = 121;
        v28 = 524;
      }

      else
      {
        v27 = 200;
        v28 = 520;
      }
    }

    else
    {
      v27 = 69;
      v28 = 503;
    }
  }

  else
  {
    v27 = 189;
    v28 = 485;
  }

  ERR_put_error(16, 0, v27, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/dtls_record.cc", v28);
LABEL_37:
  v39 = 0;
LABEL_38:
  v40 = *MEMORY[0x1E69E9840];
  return v39;
}

uint64_t std::bitset<256ul>::operator<<=[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x100)
  {
    v4 = 256;
  }

  else
  {
    v4 = a2;
  }

  v11 = a1;
  v12 = 0;
  v9 = a1 + (((256 - v4) >> 3) & 0x38);
  if ((-v4 & 0x3F) != 0)
  {
    v10 = -v4 & 0x3F;
    v7 = a1 + 32;
    v8 = 0;
    std::__copy_backward_unaligned[abi:ne200100]<std::__bitset<4ul,256ul>,false>(&v11, &v9, &v7, v6);
  }

  else
  {
    v10 = 0;
    v7 = a1 + 32;
    v8 = 0;
    std::__copy_backward_aligned[abi:ne200100]<std::__bitset<4ul,256ul>,false>(&v11, &v9, &v7, v6);
  }

  if (a2)
  {
    v11 = a1;
    v12 = 0;
    std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<4ul,256ul>>(&v11, v4);
  }

  return a1;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<4ul,256ul>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

unsigned int *std::__copy_backward_aligned[abi:ne200100]<std::__bitset<4ul,256ul>,false>@<X0>(unsigned int *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 8);
  v7 = result[2];
  v8 = v6 + 8 * (*a2 - *result) - v7;
  v9 = *a3;
  if (v8 >= 1)
  {
    if (v6)
    {
      v11 = 8 * (*a2 - *result) - v7 < 0;
      if (v8 >= v6)
      {
        v12 = *(a2 + 8);
      }

      else
      {
        v12 = v6 + 8 * (*a2 - *result) - v7;
      }

      v8 -= v12;
      v13 = (-1 << (v6 - v12)) & (0xFFFFFFFFFFFFFFFFLL >> -v6);
      *v9 = *v9 & ~v13 | **a2 & v13;
      *(a3 + 8) = (*(a3 + 8) - v12) & 0x3F;
    }

    if (v8 >= 0)
    {
      v14 = v8;
    }

    else
    {
      v14 = v8 + 63;
    }

    v15 = v14 >> 6;
    *a3 = &v9[-(v14 >> 6)];
    v16 = (*a2 - 8 * (v14 >> 6));
    *a2 = v16;
    if ((v8 + 63) >= 0x7F)
    {
      result = memmove(*a3, v16, 8 * v15);
    }

    if (v8 - (v15 << 6) <= 0)
    {
      v9 = *a3;
    }

    else
    {
      v17 = *(*a2 - 8);
      *a2 -= 8;
      v9 = (*a3 - 8);
      v18 = *v9;
      *a3 = v9;
      *v9 = v18 & ~(-1 << ((v15 << 6) - v8)) | v17 & (-1 << ((v15 << 6) - v8));
      *(a3 + 8) = -v8 & 0x3F;
    }
  }

  *a4 = v9;
  *(a4 + 8) = *(a3 + 8);
  return result;
}

unint64_t std::__copy_backward_unaligned[abi:ne200100]<std::__bitset<4ul,256ul>,false>@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 8);
  v5 = *(result + 8);
  v6 = v4 + 8 * (*a2 - *result) - v5;
  if (v6 <= 0)
  {
    v17 = *(a3 + 8);
  }

  else
  {
    if (v4)
    {
      v7 = 8 * (*a2 - *result) - v5 < 0;
      if (v6 >= v4)
      {
        v8 = *(a2 + 8);
      }

      else
      {
        v8 = v4 + 8 * (*a2 - *result) - v5;
      }

      v6 -= v8;
      v9 = (-1 << (v4 - v8)) & (0xFFFFFFFFFFFFFFFFLL >> -v4) & **a2;
      v10 = *(a3 + 8);
      if (v8 >= v10)
      {
        v11 = *(a3 + 8);
      }

      else
      {
        v11 = v8;
      }

      if (v10)
      {
        v12 = v9 >> (v4 - v10);
        v13 = v10 >= v4;
        v15 = v10 - v4;
        v14 = v15 != 0 && v13;
        v16 = v9 << v15;
        if (!v14)
        {
          v16 = v12;
        }

        **a3 = **a3 & ~((-1 << (v10 - v11)) & (0xFFFFFFFFFFFFFFFFLL >> -v10)) | v16;
        v17 = (v10 - v11) & 0x3F;
        *(a3 + 8) = v17;
        v8 -= v11;
      }

      else
      {
        v17 = 0;
      }

      if (v8 >= 1)
      {
        v19 = (*a3 - 8);
        v18 = *v19;
        *a3 = v19;
        *(a3 + 8) = -v8 & 0x3F;
        v20 = v18 & ~(-1 << -v8);
        v21 = *(a2 + 8) - v8 - v11;
        *(a2 + 8) = v21;
        v17 = *(a3 + 8);
        *v19 = (v9 << (v17 - v21)) | v20;
      }
    }

    else
    {
      v17 = *(a3 + 8);
    }

    v22 = 64 - v17;
    v23 = 0xFFFFFFFFFFFFFFFFLL >> -v17;
    if (v6 < 64)
    {
      v27 = v6;
    }

    else
    {
      do
      {
        v24 = *(*a2 - 8);
        *a2 -= 8;
        v25 = *a3;
        result = v24 >> v22;
        *v25 = **a3 & ~v23 | (v24 >> v22);
        v26 = *--v25;
        *a3 = v25;
        *v25 = v26 & v23 | (v24 << v17);
        v27 = v6 - 64;
        v14 = v6 > 0x7F;
        v6 -= 64;
      }

      while (v14);
    }

    if (v27 >= 1)
    {
      v28 = *(*a2 - 8);
      *a2 -= 8;
      v29 = v28 & (-1 << -v27);
      if (v27 >= v17)
      {
        v30 = v17;
      }

      else
      {
        v30 = v27;
      }

      v31 = (-1 << (v17 - v30)) & v23;
      v32 = *a3;
      **a3 = **a3 & ~v31 | (v29 >> v22);
      v17 = (v17 - v30) & 0x3F;
      *(a3 + 8) = v17;
      if (v27 - v30 >= 1)
      {
        v34 = *(v32 - 1);
        v33 = v32 - 1;
        *a3 = v33;
        v17 = (v30 - v27) & 0x3F;
        *(a3 + 8) = v17;
        *v33 = v34 & ~(-1 << (v30 - v27)) | (v29 << (v27 + ((v30 - v27) & 0x3F)));
      }
    }
  }

  *a4 = *a3;
  *(a4 + 8) = v17;
  return result;
}

void ec_GFp_mont_felem_reduce(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t a4)
{
  bn_from_montgomery_small(a2, *(a1 + 328), a3, a4, a1 + 296);
  bn_to_montgomery_small(a2, a2, *(a1 + 328), (a1 + 296));
  v6 = *(a1 + 328);

  bn_to_montgomery_small(a2, a2, v6, (a1 + 296));
}

uint64_t *ec_GFp_mont_add(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == a4)
  {

    return ec_GFp_mont_dbl(a1, a2, a3);
  }

  else
  {
    v60 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v59[2] = v8;
    v59[3] = v8;
    v59[0] = v8;
    v59[1] = v8;
    v58 = 0xAAAAAAAAAAAAAAAALL;
    v57[2] = v8;
    v57[3] = v8;
    v57[0] = v8;
    v57[1] = v8;
    v56 = 0xAAAAAAAAAAAAAAAALL;
    v55[3] = v8;
    v55[2] = v8;
    v55[1] = v8;
    v55[0] = v8;
    v9 = ec_felem_non_zero_mask(a1, (a3 + 144));
    v10 = ec_felem_non_zero_mask(a1, (a4 + 144));
    v54 = 0xAAAAAAAAAAAAAAAALL;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v53[3] = v11;
    v53[2] = v11;
    v53[1] = v11;
    v53[0] = v11;
    bn_mod_mul_montgomery_small(v53, (a3 + 144), (a3 + 144), *(a1 + 328), a1 + 296);
    v52 = 0xAAAAAAAAAAAAAAAALL;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v51[2] = v12;
    v51[3] = v12;
    v51[0] = v12;
    v51[1] = v12;
    bn_mod_mul_montgomery_small(v51, (a4 + 144), (a4 + 144), *(a1 + 328), a1 + 296);
    v50 = 0xAAAAAAAAAAAAAAAALL;
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v49[2] = v13;
    v49[3] = v13;
    v49[0] = v13;
    v49[1] = v13;
    bn_mod_mul_montgomery_small(v49, a3, v51, *(a1 + 328), a1 + 296);
    v48 = 0xAAAAAAAAAAAAAAAALL;
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v47[2] = v14;
    v47[3] = v14;
    v47[0] = v14;
    v47[1] = v14;
    ec_felem_add(a1, v47, (a3 + 144), (a4 + 144));
    bn_mod_mul_montgomery_small(v47, v47, v47, *(a1 + 328), a1 + 296);
    ec_felem_sub(a1, v47, v47, v53);
    ec_felem_sub(a1, v47, v47, v51);
    v46 = 0xAAAAAAAAAAAAAAAALL;
    *&v15 = 0xAAAAAAAAAAAAAAAALL;
    *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v45[2] = v15;
    v45[3] = v15;
    v45[0] = v15;
    v45[1] = v15;
    bn_mod_mul_montgomery_small(v45, (a4 + 144), v51, *(a1 + 328), a1 + 296);
    bn_mod_mul_montgomery_small(v45, v45, (a3 + 72), *(a1 + 328), a1 + 296);
    v44 = 0xAAAAAAAAAAAAAAAALL;
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v43[2] = v16;
    v43[3] = v16;
    v43[0] = v16;
    v43[1] = v16;
    bn_mod_mul_montgomery_small(v43, a4, v53, *(a1 + 328), a1 + 296);
    v42 = 0xAAAAAAAAAAAAAAAALL;
    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v41[2] = v17;
    v41[3] = v17;
    v41[0] = v17;
    v41[1] = v17;
    ec_felem_sub(a1, v41, v43, v49);
    v18 = ec_felem_non_zero_mask(a1, v41);
    bn_mod_mul_montgomery_small(v55, v41, v47, *(a1 + 328), a1 + 296);
    v40 = 0xAAAAAAAAAAAAAAAALL;
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v39[2] = v19;
    v39[3] = v19;
    v39[0] = v19;
    v39[1] = v19;
    bn_mod_mul_montgomery_small(v39, (a3 + 144), v53, *(a1 + 328), a1 + 296);
    v38 = 0xAAAAAAAAAAAAAAAALL;
    *&v20 = 0xAAAAAAAAAAAAAAAALL;
    *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v37[2] = v20;
    v37[3] = v20;
    v37[0] = v20;
    v37[1] = v20;
    bn_mod_mul_montgomery_small(v37, (a4 + 72), v39, *(a1 + 328), a1 + 296);
    v36 = 0xAAAAAAAAAAAAAAAALL;
    *&v21 = 0xAAAAAAAAAAAAAAAALL;
    *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v35[2] = v21;
    v35[3] = v21;
    v35[0] = v21;
    v35[1] = v21;
    ec_felem_sub(a1, v35, v37, v45);
    ec_felem_add(a1, v35, v35, v35);
    if ((v9 & ~(ec_felem_non_zero_mask(a1, v35) | v18) & v10) != 0)
    {
      return ec_GFp_mont_dbl(a1, a2, a3);
    }

    else
    {
      v34 = 0xAAAAAAAAAAAAAAAALL;
      *&v23 = 0xAAAAAAAAAAAAAAAALL;
      *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v33[2] = v23;
      v33[3] = v23;
      v33[0] = v23;
      v33[1] = v23;
      ec_felem_add(a1, v33, v41, v41);
      bn_mod_mul_montgomery_small(v33, v33, v33, *(a1 + 328), a1 + 296);
      v32 = 0xAAAAAAAAAAAAAAAALL;
      *&v24 = 0xAAAAAAAAAAAAAAAALL;
      *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v31[2] = v24;
      v31[3] = v24;
      v31[0] = v24;
      v31[1] = v24;
      bn_mod_mul_montgomery_small(v31, v41, v33, *(a1 + 328), a1 + 296);
      v30 = 0xAAAAAAAAAAAAAAAALL;
      *&v25 = 0xAAAAAAAAAAAAAAAALL;
      *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v29[2] = v25;
      v29[3] = v25;
      v29[0] = v25;
      v29[1] = v25;
      bn_mod_mul_montgomery_small(v29, v49, v33, *(a1 + 328), a1 + 296);
      bn_mod_mul_montgomery_small(v59, v35, v35, *(a1 + 328), a1 + 296);
      ec_felem_sub(a1, v59, v59, v31);
      ec_felem_sub(a1, v59, v59, v29);
      ec_felem_sub(a1, v59, v59, v29);
      ec_felem_sub(a1, v57, v29, v59);
      bn_mod_mul_montgomery_small(v57, v57, v35, *(a1 + 328), a1 + 296);
      v28 = 0xAAAAAAAAAAAAAAAALL;
      *&v26 = 0xAAAAAAAAAAAAAAAALL;
      *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v27[2] = v26;
      v27[3] = v26;
      v27[0] = v26;
      v27[1] = v26;
      bn_mod_mul_montgomery_small(v27, v45, v31, *(a1 + 328), a1 + 296);
      ec_felem_sub(a1, v57, v57, v27);
      ec_felem_sub(a1, v57, v57, v27);
      ec_felem_select(a1, v59, v9, v59, a4);
      ec_felem_select(a1, a2, v10, v59, a3);
      ec_felem_select(a1, v57, v9, v57, (a4 + 72));
      ec_felem_select(a1, (a2 + 72), v10, v57, (a3 + 72));
      ec_felem_select(a1, v55, v9, v55, (a4 + 144));
      return ec_felem_select(a1, (a2 + 144), v10, v55, (a3 + 144));
    }
  }
}

uint64_t *ec_GFp_mont_dbl(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (*(a1 + 528))
  {
    v47 = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v45 = v6;
    v46 = v6;
    v43 = v6;
    v44 = v6;
    v42 = 0xAAAAAAAAAAAAAAAALL;
    v40 = v6;
    v41 = v6;
    v38 = v6;
    v39 = v6;
    v37 = 0xAAAAAAAAAAAAAAAALL;
    v35 = v6;
    v36 = v6;
    v33 = v6;
    v34 = v6;
    v32 = 0xAAAAAAAAAAAAAAAALL;
    v30 = v6;
    v31 = v6;
    v28 = v6;
    v29 = v6;
    v27 = 0xAAAAAAAAAAAAAAAALL;
    v25 = v6;
    v26 = v6;
    v23 = v6;
    v24 = v6;
    v22 = 0xAAAAAAAAAAAAAAAALL;
    v20 = v6;
    v21 = v6;
    v18 = v6;
    v19 = v6;
    v17 = 0xAAAAAAAAAAAAAAAALL;
    v16[2] = v6;
    v16[3] = v6;
    v16[0] = v6;
    v16[1] = v6;
    v15 = 0xAAAAAAAAAAAAAAAALL;
    v14[2] = v6;
    v14[3] = v6;
    v14[0] = v6;
    v14[1] = v6;
    bn_mod_mul_montgomery_small(&v43, a3 + 18, a3 + 18, *(a1 + 328), a1 + 296);
    bn_mod_mul_montgomery_small(&v38, a3 + 9, a3 + 9, *(a1 + 328), a1 + 296);
    bn_mod_mul_montgomery_small(&v33, a3, &v38, *(a1 + 328), a1 + 296);
    ec_felem_sub(a1, &v28, a3, &v43);
    ec_felem_add(a1, &v23, a3, &v43);
    ec_felem_add(a1, &v18, &v23, &v23);
    ec_felem_add(a1, &v23, &v23, &v18);
    bn_mod_mul_montgomery_small(v16, &v28, &v23, *(a1 + 328), a1 + 296);
    bn_mod_mul_montgomery_small(a2, v16, v16, *(a1 + 328), a1 + 296);
    ec_felem_add(a1, v14, &v33, &v33);
    ec_felem_add(a1, v14, v14, v14);
    ec_felem_add(a1, &v18, v14, v14);
    ec_felem_sub(a1, a2, a2, &v18);
    ec_felem_add(a1, &v43, &v38, &v43);
    ec_felem_add(a1, &v28, a3 + 9, a3 + 18);
    bn_mod_mul_montgomery_small(a2 + 18, &v28, &v28, *(a1 + 328), a1 + 296);
    ec_felem_sub(a1, a2 + 18, a2 + 18, &v43);
    ec_felem_sub(a1, a2 + 9, v14, a2);
    ec_felem_add(a1, &v38, &v38, &v38);
    bn_mod_mul_montgomery_small(&v38, &v38, &v38, *(a1 + 328), a1 + 296);
    bn_mod_mul_montgomery_small(a2 + 9, v16, a2 + 9, *(a1 + 328), a1 + 296);
    ec_felem_add(a1, &v38, &v38, &v38);
    v7 = a2 + 9;
    v8 = a2 + 9;
    v9 = &v38;
  }

  else
  {
    v47 = 0xAAAAAAAAAAAAAAAALL;
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v45 = v10;
    v46 = v10;
    v43 = v10;
    v44 = v10;
    v42 = 0xAAAAAAAAAAAAAAAALL;
    v40 = v10;
    v41 = v10;
    v38 = v10;
    v39 = v10;
    v37 = 0xAAAAAAAAAAAAAAAALL;
    v35 = v10;
    v36 = v10;
    v33 = v10;
    v34 = v10;
    v32 = 0xAAAAAAAAAAAAAAAALL;
    v30 = v10;
    v31 = v10;
    v28 = v10;
    v29 = v10;
    bn_mod_mul_montgomery_small(&v43, a3, a3, *(a1 + 328), a1 + 296);
    bn_mod_mul_montgomery_small(&v38, a3 + 9, a3 + 9, *(a1 + 328), a1 + 296);
    bn_mod_mul_montgomery_small(&v33, &v38, &v38, *(a1 + 328), a1 + 296);
    bn_mod_mul_montgomery_small(&v28, a3 + 18, a3 + 18, *(a1 + 328), a1 + 296);
    v27 = 0xAAAAAAAAAAAAAAAALL;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v25 = v11;
    v26 = v11;
    v23 = v11;
    v24 = v11;
    ec_felem_add(a1, &v23, a3, &v38);
    bn_mod_mul_montgomery_small(&v23, &v23, &v23, *(a1 + 328), a1 + 296);
    ec_felem_sub(a1, &v23, &v23, &v43);
    ec_felem_sub(a1, &v23, &v23, &v33);
    ec_felem_add(a1, &v23, &v23, &v23);
    v22 = 0xAAAAAAAAAAAAAAAALL;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v20 = v12;
    v21 = v12;
    v18 = v12;
    v19 = v12;
    bn_mod_mul_montgomery_small(&v18, &v28, &v28, *(a1 + 328), a1 + 296);
    bn_mod_mul_montgomery_small(&v18, (a1 + 360), &v18, *(a1 + 328), a1 + 296);
    ec_felem_add(a1, &v18, &v18, &v43);
    ec_felem_add(a1, &v18, &v18, &v43);
    ec_felem_add(a1, &v18, &v18, &v43);
    bn_mod_mul_montgomery_small(a2, &v18, &v18, *(a1 + 328), a1 + 296);
    ec_felem_sub(a1, a2, a2, &v23);
    ec_felem_sub(a1, a2, a2, &v23);
    ec_felem_add(a1, a2 + 18, a3 + 9, a3 + 18);
    bn_mod_mul_montgomery_small(a2 + 18, a2 + 18, a2 + 18, *(a1 + 328), a1 + 296);
    ec_felem_sub(a1, a2 + 18, a2 + 18, &v38);
    ec_felem_sub(a1, a2 + 18, a2 + 18, &v28);
    ec_felem_add(a1, &v33, &v33, &v33);
    ec_felem_add(a1, &v33, &v33, &v33);
    ec_felem_add(a1, &v33, &v33, &v33);
    ec_felem_sub(a1, a2 + 9, &v23, a2);
    bn_mod_mul_montgomery_small(a2 + 9, a2 + 9, &v18, *(a1 + 328), a1 + 296);
    v7 = a2 + 9;
    v8 = a2 + 9;
    v9 = &v33;
  }

  return ec_felem_sub(a1, v7, v8, v9);
}

void EC_GFp_mont_method_init()
{
  EC_GFp_mont_method_storage = ec_GFp_mont_point_get_affine_coordinates;
  qword_1ED4C0218 = ec_GFp_mont_jacobian_to_affine_batch;
  qword_1ED4C0220 = ec_GFp_mont_add;
  qword_1ED4C0228 = ec_GFp_mont_dbl;
  qword_1ED4C0230 = ec_GFp_mont_mul;
  qword_1ED4C0238 = ec_GFp_mont_mul_base;
  qword_1ED4C0240 = ec_GFp_mont_mul_batch;
  qword_1ED4C0250 = ec_GFp_mont_mul_public_batch;
  qword_1ED4C0258 = ec_GFp_mont_init_precomp;
  qword_1ED4C0260 = ec_GFp_mont_mul_precomp;
  qword_1ED4C0268 = ec_GFp_mont_felem_mul;
  qword_1ED4C0270 = ec_GFp_mont_felem_sqr;
  qword_1ED4C0278 = ec_GFp_mont_felem_to_bytes;
  qword_1ED4C0280 = ec_GFp_mont_felem_from_bytes;
  qword_1ED4C0288 = ec_GFp_mont_felem_reduce;
  qword_1ED4C0290 = ec_GFp_mont_felem_exp;
  qword_1ED4C0298 = ec_simple_scalar_inv0_montgomery;
  qword_1ED4C02A0 = ec_simple_scalar_to_montgomery_inv_vartime;
  qword_1ED4C02A8 = ec_GFp_mont_cmp_x_coordinate;
}

uint64_t ec_GFp_mont_point_get_affine_coordinates(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  if (ec_GFp_simple_is_at_infinity(a1, a2))
  {
    ERR_put_error(15, 0, 119, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec_montgomery.c.inc", 150);
    return 0;
  }

  else
  {
    v13 = 0xAAAAAAAAAAAAAAAALL;
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v12[2] = v9;
    v12[3] = v9;
    v12[0] = v9;
    v12[1] = v9;
    v11 = 0xAAAAAAAAAAAAAAAALL;
    v10[2] = v9;
    v10[3] = v9;
    v10[0] = v9;
    v10[1] = v9;
    bn_mod_inverse0_prime_mont_small(v10, (a2 + 18), *(a1 + 328), a1 + 296);
    bn_mod_mul_montgomery_small(v12, v10, v10, *(a1 + 328), a1 + 296);
    if (a3)
    {
      bn_mod_mul_montgomery_small(a3, a2, v12, *(a1 + 328), a1 + 296);
    }

    if (a4)
    {
      bn_mod_mul_montgomery_small(v12, v12, v10, *(a1 + 328), a1 + 296);
      bn_mod_mul_montgomery_small(a4, a2 + 9, v12, *(a1 + 328), a1 + 296);
    }

    return 1;
  }
}

uint64_t ec_GFp_mont_jacobian_to_affine_batch(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a4)
  {
    return 1;
  }

  v6 = a2;
  *a2 = *(a3 + 144);
  v8 = *(a3 + 160);
  v9 = *(a3 + 176);
  v10 = *(a3 + 192);
  *(a2 + 64) = *(a3 + 208);
  *(a2 + 32) = v9;
  *(a2 + 48) = v10;
  *(a2 + 16) = v8;
  v11 = a4 - 1;
  if (a4 != 1)
  {
    v12 = (a3 + 360);
    v13 = a4 - 1;
    do
    {
      v14 = a2 + 144;
      bn_mod_mul_montgomery_small((a2 + 144), a2, v12, *(a1 + 328), a1 + 296);
      v12 += 27;
      a2 = v14;
      --v13;
    }

    while (v13);
  }

  if (ec_felem_non_zero_mask(a1, (v6 + 144 * v11)))
  {
    v31 = 0xAAAAAAAAAAAAAAAALL;
    *&v15 = 0xAAAAAAAAAAAAAAAALL;
    *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v29 = v15;
    v30 = v15;
    v27 = v15;
    v28 = v15;
    bn_mod_inverse0_prime_mont_small(&v27, v6 + 144 * v11, *(a1 + 328), a1 + 296);
    v16 = (a3 + 216 * a4 - 216);
    v17 = (v6 + 144 * a4 - 144);
    do
    {
      v26 = 0xAAAAAAAAAAAAAAAALL;
      *&v18 = 0xAAAAAAAAAAAAAAAALL;
      *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v24 = v18;
      v25 = v18;
      v22 = v18;
      v23 = v18;
      v21 = 0xAAAAAAAAAAAAAAAALL;
      v20[2] = v18;
      v20[3] = v18;
      v20[0] = v18;
      v20[1] = v18;
      if (v11)
      {
        bn_mod_mul_montgomery_small(&v22, &v27, v17 - 18, *(a1 + 328), a1 + 296);
        bn_mod_mul_montgomery_small(&v27, &v27, v16 + 18, *(a1 + 328), a1 + 296);
      }

      else
      {
        v24 = v29;
        v25 = v30;
        v26 = v31;
        v22 = v27;
        v23 = v28;
      }

      bn_mod_mul_montgomery_small(v20, &v22, &v22, *(a1 + 328), a1 + 296);
      bn_mod_mul_montgomery_small(v17, v16, v20, *(a1 + 328), a1 + 296);
      bn_mod_mul_montgomery_small(v17 + 9, v16 + 9, v20, *(a1 + 328), a1 + 296);
      bn_mod_mul_montgomery_small(v17 + 9, v17 + 9, &v22, *(a1 + 328), a1 + 296);
      --v11;
      v16 -= 27;
      v17 -= 18;
    }

    while (v11 < a4);
    return 1;
  }

  else
  {
    ERR_put_error(15, 0, 119, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec_montgomery.c.inc", 189);
    return 0;
  }
}

uint64_t ec_GFp_mont_cmp_x_coordinate(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (*(a1 + 536) && *(a1 + 328) == *(a1 + 264))
  {
    if (ec_GFp_simple_is_at_infinity(a1, a2))
    {
      return 0;
    }

    v17 = 0xAAAAAAAAAAAAAAAALL;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v15 = v7;
    v16 = v7;
    *rp = v7;
    v14 = v7;
    v12 = 0xAAAAAAAAAAAAAAAALL;
    v11[2] = v7;
    v11[3] = v7;
    v11[0] = v7;
    v11[1] = v7;
    v10 = 0xAAAAAAAAAAAAAAAALL;
    v9[2] = v7;
    v9[3] = v7;
    v9[0] = v7;
    v9[1] = v7;
    bn_mod_mul_montgomery_small(v11, (a2 + 144), (a2 + 144), *(a1 + 328), a1 + 296);
    v8 = *(a1 + 328);
    if (v8)
    {
      __memcpy_chk();
    }

    bn_mod_mul_montgomery_small(rp, rp, v11, v8, a1 + 296);
    bn_from_montgomery_small(v9, *(a1 + 328), a2, *(a1 + 328), a1 + 296);
    if (ec_felem_equal(a1, rp, v9))
    {
      return 1;
    }

    if (!bn_add_words(rp, a3, *(a1 + 256), *(a1 + 328)) && bn_less_than_words(rp, *(a1 + 320), *(a1 + 328)) && (bn_mod_mul_montgomery_small(rp, rp, v11, *(a1 + 328), a1 + 296), ec_felem_equal(a1, rp, v9)))
    {
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return ec_GFp_simple_cmp_x_coordinate(a1, a2, a3);
  }
}

char *CRYPTO_chacha_20(char *result, char *a2, unint64_t a3, __int128 *a4, uint64_t a5, int a6)
{
  v99 = *MEMORY[0x1E69E9840];
  if (a2 != result && &result[a3] > a2 && &a2[a3] > result)
  {
    CRYPTO_chacha_20_cold_1();
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v90[2] = v6;
  v90[3] = v6;
  v90[0] = v6;
  v90[1] = v6;
  v7 = *a4;
  v8 = a4[1];
  v91 = xmmword_1A90B85E0;
  v92 = v7;
  v93 = v8;
  LODWORD(v94) = a6;
  *(&v94 + 4) = *a5;
  for (HIDWORD(v94) = *(a5 + 8); a3; a3 -= v81)
  {
    v95 = v91;
    v96 = v92;
    v97 = v93;
    v98 = v94;
    v10 = v92;
    v9 = DWORD1(v92);
    v11 = v91;
    v12 = DWORD1(v91);
    v13 = v94;
    v14 = DWORD1(v94);
    v15 = v93;
    v16 = DWORD1(v93);
    v18 = DWORD2(v92);
    v17 = HIDWORD(v92);
    v19 = DWORD2(v91);
    v20 = HIDWORD(v91);
    v22 = DWORD2(v94);
    v21 = HIDWORD(v94);
    v23 = 22;
    v24 = DWORD2(v93);
    v25 = HIDWORD(v93);
    do
    {
      v26 = v11 + v10;
      v27 = v13 ^ v26;
      HIDWORD(v28) = v27;
      LODWORD(v28) = v27;
      v29 = (v28 >> 16) + v15;
      v30 = v29 ^ v10;
      HIDWORD(v28) = v30;
      LODWORD(v28) = v30;
      v31 = (v28 >> 20) + v26;
      LODWORD(v28) = v31 ^ __ROR4__(v27, 16);
      v32 = v28;
      HIDWORD(v28) = v28;
      v33 = (v28 >> 24) + v29;
      LODWORD(v28) = v33 ^ __ROR4__(v30, 20);
      v34 = v28;
      HIDWORD(v28) = v28;
      v35 = v28 >> 25;
      v36 = v12 + v9;
      v37 = v14 ^ v36;
      HIDWORD(v28) = v37;
      LODWORD(v28) = v37;
      v38 = (v28 >> 16) + v16;
      v39 = v38 ^ v9;
      HIDWORD(v28) = v39;
      LODWORD(v28) = v39;
      v40 = (v28 >> 20) + v36;
      LODWORD(v28) = v40 ^ __ROR4__(v37, 16);
      v41 = v28;
      HIDWORD(v28) = v28;
      v42 = (v28 >> 24) + v38;
      LODWORD(v28) = v42 ^ __ROR4__(v39, 20);
      v43 = v28;
      HIDWORD(v28) = v28;
      v44 = v28 >> 25;
      v45 = v19 + v18;
      v46 = v22 ^ v45;
      HIDWORD(v28) = v46;
      LODWORD(v28) = v46;
      v47 = (v28 >> 16) + v24;
      v48 = v47 ^ v18;
      HIDWORD(v28) = v48;
      LODWORD(v28) = v48;
      v49 = (v28 >> 20) + v45;
      LODWORD(v28) = v49 ^ __ROR4__(v46, 16);
      v50 = v28;
      HIDWORD(v28) = v28;
      v51 = (v28 >> 24) + v47;
      LODWORD(v28) = v51 ^ __ROR4__(v48, 20);
      v52 = v28;
      HIDWORD(v28) = v28;
      v53 = v28 >> 25;
      v54 = v20 + v17;
      v55 = v21 ^ v54;
      HIDWORD(v28) = v55;
      LODWORD(v28) = v55;
      v56 = (v28 >> 16) + v25;
      v57 = v56 ^ v17;
      HIDWORD(v28) = v57;
      LODWORD(v28) = v57;
      v58 = (v28 >> 20) + v54;
      LODWORD(v28) = v58 ^ __ROR4__(v55, 16);
      v59 = v28;
      HIDWORD(v28) = v28;
      v60 = (v28 >> 24) + v56;
      LODWORD(v28) = v60 ^ __ROR4__(v57, 20);
      v61 = v28;
      HIDWORD(v28) = v28;
      v62 = v28 >> 25;
      v63 = v44 + v31;
      LODWORD(v28) = v63 ^ __ROR4__(v59, 24);
      v64 = v28;
      HIDWORD(v28) = v28;
      v65 = (v28 >> 16) + v51;
      LODWORD(v28) = v65 ^ __ROR4__(v43, 25);
      v66 = v28;
      HIDWORD(v28) = v28;
      v11 = (v28 >> 20) + v63;
      LODWORD(v28) = v11 ^ __ROR4__(v64, 16);
      HIDWORD(v28) = v28;
      v21 = v28 >> 24;
      v24 = v21 + v65;
      LODWORD(v28) = v24 ^ __ROR4__(v66, 20);
      HIDWORD(v28) = v28;
      v9 = v28 >> 25;
      v67 = v53 + v40;
      LODWORD(v28) = v67 ^ __ROR4__(v32, 24);
      v68 = v28;
      HIDWORD(v28) = v28;
      v69 = (v28 >> 16) + v60;
      LODWORD(v28) = v69 ^ __ROR4__(v52, 25);
      v70 = v28;
      HIDWORD(v28) = v28;
      v12 = (v28 >> 20) + v67;
      LODWORD(v28) = v12 ^ __ROR4__(v68, 16);
      HIDWORD(v28) = v28;
      v13 = v28 >> 24;
      v25 = v13 + v69;
      LODWORD(v28) = v25 ^ __ROR4__(v70, 20);
      HIDWORD(v28) = v28;
      v18 = v28 >> 25;
      v71 = v62 + v49;
      LODWORD(v28) = v71 ^ __ROR4__(v41, 24);
      v72 = v28;
      HIDWORD(v28) = v28;
      v73 = (v28 >> 16) + v33;
      LODWORD(v28) = v73 ^ __ROR4__(v61, 25);
      v74 = v28;
      HIDWORD(v28) = v28;
      v19 = (v28 >> 20) + v71;
      LODWORD(v28) = v19 ^ __ROR4__(v72, 16);
      HIDWORD(v28) = v28;
      v14 = v28 >> 24;
      v15 = v14 + v73;
      LODWORD(v28) = v15 ^ __ROR4__(v74, 20);
      HIDWORD(v28) = v28;
      v17 = v28 >> 25;
      v75 = v58 + v35;
      LODWORD(v28) = v75 ^ __ROR4__(v50, 24);
      v76 = v28;
      HIDWORD(v28) = v28;
      v77 = (v28 >> 16) + v42;
      LODWORD(v28) = v77 ^ __ROR4__(v34, 25);
      v78 = v28;
      HIDWORD(v28) = v28;
      v20 = (v28 >> 20) + v75;
      LODWORD(v28) = v20 ^ __ROR4__(v76, 16);
      HIDWORD(v28) = v28;
      v22 = v28 >> 24;
      v16 = v22 + v77;
      v23 -= 2;
      LODWORD(v28) = v16 ^ __ROR4__(v78, 20);
      HIDWORD(v28) = v28;
      v10 = v28 >> 25;
    }

    while (v23 > 2);
    v79 = 0;
    *&v96 = __PAIR64__(v9, v10);
    *&v95 = __PAIR64__(v12, v11);
    *&v98 = __PAIR64__(v14, v13);
    *&v97 = __PAIR64__(v16, v15);
    *(&v96 + 1) = __PAIR64__(v17, v18);
    *(&v95 + 1) = __PAIR64__(v20, v19);
    *(&v98 + 1) = __PAIR64__(v21, v22);
    *(&v97 + 1) = __PAIR64__(v25, v24);
    do
    {
      *(&v95 + v79) = vaddq_s32(*(&v95 + v79), *(&v91 + v79));
      v79 += 16;
    }

    while (v79 != 64);
    for (i = 0; i != 64; i += 4)
    {
      *(v90 + i) = *(&v95 + i);
    }

    if (a3 >= 0x40)
    {
      v81 = 64;
    }

    else
    {
      v81 = a3;
    }

    if (v81 <= 1)
    {
      v82 = 1;
    }

    else
    {
      v82 = v81;
    }

    v83 = v90;
    v84 = a2;
    v85 = result;
    do
    {
      v87 = *v84++;
      v86 = v87;
      v88 = *v83++;
      *v85++ = v88 ^ v86;
      --v82;
    }

    while (v82);
    result += v81;
    a2 += v81;
    LODWORD(v94) = ++a6;
  }

  v89 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t bssl::ssl_cipher_get_record_split_len(bssl *this, const ssl_cipher_st *a2)
{
  v2 = *(this + 7);
  if (v2 == 1)
  {
    v4 = 24;
  }

  else
  {
    if (v2 != 4 && v2 != 2)
    {
      return 0;
    }

    v4 = 32;
  }

  if (*(this + 8) != 1)
  {
    bssl::ssl_cipher_get_record_split_len();
  }

  return v4;
}

uint64_t SSL_CIPHER_get_cipher_nid(uint64_t a1)
{
  v1 = *(a1 + 28);
  if (v1 <= 7)
  {
    switch(v1)
    {
      case 1:
        return 44;
      case 2:
        return 419;
      case 4:
        return 427;
      default:
        goto LABEL_17;
    }
  }

  else if (v1 > 31)
  {
    if (v1 == 32)
    {
      return 0;
    }

    else
    {
      if (v1 != 64)
      {
        goto LABEL_17;
      }

      return 950;
    }
  }

  else
  {
    if (v1 != 8)
    {
      if (v1 == 16)
      {
        return 901;
      }

LABEL_17:
      SSL_CIPHER_get_cipher_nid_cold_1();
    }

    return 895;
  }
}

uint64_t SSL_CIPHER_get_digest_nid(uint64_t a1)
{
  v1 = *(a1 + 32) - 1;
  if (v1 >= 8 || ((0x8Bu >> v1) & 1) == 0)
  {
    SSL_CIPHER_get_digest_nid_cold_1();
  }

  return dword_1A90B8638[v1];
}

const EVP_MD *SSL_CIPHER_get_handshake_digest(uint64_t a1)
{
  v2 = *(a1 + 36);
  switch(v2)
  {
    case 4:

      return EVP_sha384();
    case 2:

      return EVP_sha256();
    case 1:

      return EVP_md5_sha1();
    default:
      SSL_CIPHER_get_handshake_digest_cold_1();
  }
}

EVP_MD *SSL_CIPHER_get_prf_nid(uint64_t a1)
{
  result = SSL_CIPHER_get_handshake_digest(a1);
  if (result)
  {

    return EVP_MD_nid(result);
  }

  return result;
}

int SSL_CIPHER_get_bits(const SSL_CIPHER *c, int *alg_bits)
{
  if (c)
  {
    algorithms_high = HIDWORD(c->algorithms);
    v3 = (algorithms_high - 2);
    if (v3 <= 0x3E)
    {
      if (((1 << (algorithms_high - 2)) & 0x4000000000004004) != 0)
      {
        v4 = 256;
        LODWORD(c) = 256;
        if (!alg_bits)
        {
          return c;
        }

        goto LABEL_11;
      }

      if (((1 << (algorithms_high - 2)) & 0x41) != 0)
      {
        v4 = 128;
        LODWORD(c) = 128;
        if (!alg_bits)
        {
          return c;
        }

LABEL_11:
        *alg_bits = v4;
        return c;
      }

      if (v3 == 30)
      {
        v4 = 0;
        LODWORD(c) = 0;
        if (!alg_bits)
        {
          return c;
        }

        goto LABEL_11;
      }
    }

    if (algorithms_high != 1)
    {
      SSL_CIPHER_get_bits_cold_1();
    }

    LODWORD(c) = 112;
    v4 = 168;
    if (alg_bits)
    {
      goto LABEL_11;
    }
  }

  return c;
}

uint64_t bssl::Array<int>::InitUninitialized(uint64_t a1, unint64_t a2)
{
  OPENSSL_free(*a1);
  *a1 = 0;
  *(a1 + 8) = 0;
  if (!a2)
  {
    return 1;
  }

  if (a2 >> 62)
  {
    ERR_put_error(16, 0, 69, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/internal.h", 382);
    return 0;
  }

  result = OPENSSL_malloc(4 * a2);
  *a1 = result;
  if (result)
  {
    *(a1 + 8) = a2;
    return 1;
  }

  return result;
}

void *boringssl_memory_copy_array(const void *a1, size_t size)
{
  if (!a1)
  {
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      boringssl_memory_copy_array_cold_3();
    }

    return 0;
  }

  if (!size)
  {
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      boringssl_memory_copy_array_cold_2();
    }

    return 0;
  }

  v4 = malloc_type_malloc(size, 0x100004077774924uLL);
  if (!v4)
  {
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      boringssl_memory_copy_array_cold_1();
    }

    return 0;
  }

  return memcpy(v4, a1, size);
}

uint64_t aead_chacha20_poly1305_init(uint64_t a1, __int128 *a2, uint64_t a3, unint64_t a4)
{
  v4 = 16;
  if (a4)
  {
    v4 = a4;
  }

  if (v4 < 0x11)
  {
    if (a3 == 32)
    {
      v6 = *a2;
      *(a1 + 24) = a2[1];
      *(a1 + 8) = v6;
      *(a1 + 40) = v4;
      *(a1 + 576) = v4;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    ERR_put_error(30, 0, 117, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_chacha20poly1305.m", 30);
    return 0;
  }
}

BOOL aead_chacha20_poly1305_open(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a6 != 12)
  {
    v13 = 121;
    v14 = 214;
    goto LABEL_5;
  }

  v11 = *(a1 + 40);
  v12 = a8 - v11;
  if (a8 < v11)
  {
    v13 = 101;
    v14 = 219;
LABEL_5:
    ERR_put_error(30, 0, v13, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_chacha20poly1305.m", v14);
    goto LABEL_6;
  }

  if (a8 >= 0x3FFFFFFFC0)
  {
    v13 = 117;
    v14 = 230;
    goto LABEL_5;
  }

  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20[1] = v19;
  v20[2] = v19;
  v20[0] = v19;
  if (!calc_tag(v20, a1 + 8, a5, a9, a10, a7, v12, 0, 0))
  {
    if (ccchacha20())
    {
      if (g_boringssl_log)
      {
        result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          goto LABEL_7;
        }

        aead_chacha20_poly1305_open_cold_2();
      }

      goto LABEL_6;
    }

    if (!CRYPTO_memcmp(v20, (a7 + v12), *(a1 + 40)))
    {
      *a3 = v12;
      result = 1;
      goto LABEL_7;
    }

    v13 = 101;
    v14 = 250;
    goto LABEL_5;
  }

  if (g_boringssl_log)
  {
    result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_7;
    }

    aead_chacha20_poly1305_open_cold_1();
  }

LABEL_6:
  result = 0;
LABEL_7:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL aead_chacha20_poly1305_seal_scatter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a7 != 12)
  {
    v13 = 121;
    v14 = 133;
    goto LABEL_5;
  }

  if (a9 >= 0x3FFFFFFFC0)
  {
    v13 = 117;
    v14 = 145;
LABEL_5:
    ERR_put_error(30, 0, v13, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_chacha20poly1305.m", v14);
    goto LABEL_6;
  }

  v18 = a4;
  v20 = a2;
  memset(__src, 0, sizeof(__src));
  if (a11)
  {
    v22 = 0;
    v23 = a9 >> 6;
    v24 = a9 & 0x3F;
    while (1)
    {
      LODWORD(v23) = v23 + 1;
      memset(v29, 0, sizeof(v29));
      if (ccchacha20())
      {
        break;
      }

      while (v22 < a11)
      {
        *(a3 + v22) = *(v29 + v24) ^ *(a10 + v22);
        ++v22;
        if (v24 > 0x3E)
        {
          break;
        }

        ++v24;
      }

      v24 = 0;
      if (v22 >= a11)
      {
        v20 = a2;
        v18 = a4;
        goto LABEL_16;
      }
    }

    v25 = g_boringssl_log;
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      aead_chacha20_poly1305_seal_scatter_cold_1(v25);
    }
  }

  else
  {
LABEL_16:
    if (ccchacha20())
    {
      if (g_boringssl_log)
      {
        result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          goto LABEL_7;
        }

        aead_chacha20_poly1305_seal_scatter_cold_2();
      }
    }

    else
    {
      if (!calc_tag(__src, a1 + 8, a6, a12, a13, v20, a9, a3, a11))
      {
        v26 = *(a1 + 40);
        *v18 = v26 + a11;
        memcpy((a3 + a11), __src, v26);
        result = 1;
        goto LABEL_7;
      }

      if (g_boringssl_log)
      {
        result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          goto LABEL_7;
        }

        aead_chacha20_poly1305_seal_scatter_cold_3();
      }
    }
  }

LABEL_6:
  result = 0;
LABEL_7:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL aead_chacha20_poly1305_open_gather(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char *a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v16[3] = *MEMORY[0x1E69E9840];
  if (a4 != 12)
  {
    v11 = 121;
    v12 = 274;
    goto LABEL_7;
  }

  if (*(a1 + 576) != a8)
  {
    v11 = 101;
    v12 = 279;
    goto LABEL_7;
  }

  if (a6 >= 0x3FFFFFFFC0)
  {
    v11 = 117;
    v12 = 291;
LABEL_7:
    ERR_put_error(30, 0, v11, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_chacha20poly1305.m", v12);
    goto LABEL_8;
  }

  v16[0] = 0xAAAAAAAAAAAAAAAALL;
  v16[1] = 0xAAAAAAAAAAAAAAAALL;
  if (!calc_tag(v16, a1 + 8, a3, a9, a10, a5, a6, 0, 0))
  {
    if (ccchacha20())
    {
      if (g_boringssl_log)
      {
        result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          goto LABEL_9;
        }

        aead_chacha20_poly1305_open_cold_2();
      }

      goto LABEL_8;
    }

    if (!CRYPTO_memcmp(v16, a7, *(a1 + 40)))
    {
      result = 1;
      goto LABEL_9;
    }

    v11 = 101;
    v12 = 310;
    goto LABEL_7;
  }

  if (g_boringssl_log)
  {
    result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_9;
    }

    aead_chacha20_poly1305_open_cold_1();
  }

LABEL_8:
  result = 0;
LABEL_9:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t calc_tag(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v11 = ccchacha20();
  if (v11)
  {
    v12 = v11;
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      aead_chacha20_poly1305_open_cold_2();
    }
  }

  else
  {
    v13 = ccpoly1305_init();
    if (v13)
    {
      v12 = v13;
      if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
      {
        calc_tag_cold_2();
      }
    }

    else
    {
      v14 = ccpoly1305_update();
      v15 = v14;
      if ((a5 & 0xF) != 0 && !v14)
      {
        v15 = ccpoly1305_update();
      }

      v16 = ccpoly1305_update() | v15;
      v17 = v16 | ccpoly1305_update();
      v18 = a9 + a7;
      if ((v18 & 0xF) != 0 && !v17)
      {
        v17 = ccpoly1305_update();
      }

      v19 = 0;
      v25[0] = 0xAAAAAAAAAAAAAAAALL;
      do
      {
        *(v25 + v19) = a5;
        a5 >>= 8;
        ++v19;
      }

      while (v19 != 8);
      v20 = ccpoly1305_update();
      v21 = 0;
      v25[0] = 0xAAAAAAAAAAAAAAAALL;
      do
      {
        *(v25 + v21) = v18;
        v18 >>= 8;
        ++v21;
      }

      while (v21 != 8);
      v22 = v20 | v17 | ccpoly1305_update();
      v12 = v22 | ccpoly1305_final();
      if (v12 && g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
      {
        calc_tag_cold_3();
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t bssl::SSLAEADContext::GenerateRecordNumberMask(uint64_t a1)
{
  result = *(a1 + 608);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t bssl::AESRecordNumberEncrypter::GenerateMask(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *in, unint64_t a5)
{
  v5 = a5 > 0xF && a3 == 16;
  v6 = v5;
  if (v5)
  {
    AES_encrypt(in, a2, (a1 + 8));
  }

  return v6;
}

BOOL bssl::ChaChaRecordNumberEncrypter::SetKey(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (a3 == 32)
  {
    v3 = *a2;
    *(a1 + 24) = a2[1];
    *(a1 + 8) = v3;
  }

  return a3 == 32;
}

BOOL bssl::ChaChaRecordNumberEncrypter::GenerateMask(uint64_t a1, void *a2, size_t a3, int *a4, unint64_t a5)
{
  if (a5 >= 0x10)
  {
    v9 = (a4 + 1);
    v10 = *a4;
    if (a3)
    {
      bzero(a2, a3);
    }

    CRYPTO_chacha_20(a2, a2, a3, (a1 + 8), v9, v10);
  }

  return a5 > 0xF;
}

void std::unique_ptr<bssl::ChaChaRecordNumberEncrypter,bssl::internal::Deleter>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    (**v2)(v2);
    OPENSSL_free(v2);
  }
}

uint64_t METHOD_unref(uint64_t result)
{
  if (result)
  {
    if (!*(result + 4))
    {
      METHOD_unref_cold_1();
    }
  }

  return result;
}

int BN_generate_prime_ex(BIGNUM *ret, int bits, int safe, const BIGNUM *add, const BIGNUM *rem, BN_GENCB *cb)
{
  if (bits > 3746)
  {
    v11 = 3;
LABEL_13:
    v12 = safe != 0;
    goto LABEL_14;
  }

  if (bits > 1344)
  {
    v11 = 4;
    goto LABEL_13;
  }

  if (bits > 475)
  {
    v11 = 5;
    goto LABEL_13;
  }

  if (bits > 399)
  {
    v11 = 6;
    goto LABEL_13;
  }

  if (bits > 346)
  {
    v11 = 7;
    goto LABEL_13;
  }

  if (bits >= 308)
  {
    v11 = 8;
    goto LABEL_13;
  }

  if (bits <= 1)
  {
    v35 = 393;
LABEL_95:
    ERR_put_error(3, 0, 103, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/prime.c.inc", v35);
    return 0;
  }

  if (bits <= 0x36)
  {
    v11 = 34;
  }

  else
  {
    v11 = 27;
  }

  v12 = safe != 0;
  if (bits == 2 && safe)
  {
    v35 = 397;
    goto LABEL_95;
  }

LABEL_14:
  v13 = BN_CTX_new();
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  BN_CTX_start(v13);
  r = BN_CTX_get(v14);
  if (r)
  {
    v15 = 0;
    v39 = v12;
    while (1)
    {
LABEL_17:
      v41 = v15;
      if (!add)
      {
        while (BN_rand(ret, bits, 1, 1))
        {
          if (!bn_odd_number_is_obviously_composite(ret))
          {
            goto LABEL_48;
          }
        }

        goto LABEL_85;
      }

      v37 = v11;
      a = rem;
      v38 = cb;
      BN_CTX_start(v14);
      v16 = BN_CTX_get(v14);
      v17 = v12;
      v18 = v16;
      if (v17)
      {
        break;
      }

      if (!v16 || !BN_rand(ret, bits, 0, 1) || !BN_div(0, v18, ret, add, v14) || !BN_sub(ret, ret, v18))
      {
        goto LABEL_84;
      }

      if (rem)
      {
        if (!BN_add(ret, ret, rem))
        {
          goto LABEL_84;
        }
      }

      else if (!BN_add_word(ret, 1uLL))
      {
        goto LABEL_84;
      }

      if (ret->top <= 16)
      {
        v22 = 512;
      }

      else
      {
        v22 = 1024;
      }

      for (i = 1; i != v22; ++i)
      {
        while (bn_mod_u16_consttime(ret, kPrimes[i]) <= 1)
        {
          i = 1;
          if (!BN_add(ret, ret, add))
          {
            goto LABEL_84;
          }
        }
      }

LABEL_47:
      BN_CTX_end(v14);
      cb = v38;
      rem = a;
      v11 = v37;
      v12 = v39;
LABEL_48:
      if (cb && !(cb->arg)(0, v41, cb))
      {
        goto LABEL_85;
      }

      v42 = v41 + 1;
      if (v12)
      {
        if (BN_rshift1(r, ret))
        {
          v24 = 0;
          while (1)
          {
            v45 = -1431655766;
            v25 = BN_primality_test(&v45, ret, 1, v14, 0, 0);
            v26 = v45;
            if (!v25)
            {
              v26 = -1;
            }

            if (v26 == -1)
            {
              break;
            }

            if (!v26)
            {
              goto LABEL_83;
            }

            v46 = -1431655766;
            v27 = BN_primality_test(&v46, r, 1, v14, 0, 0);
            v28 = v46;
            if (!v27)
            {
              v28 = -1;
            }

            if (v28 == -1)
            {
              goto LABEL_85;
            }

            if (!v28)
            {
LABEL_83:
              v12 = v39;
              v15 = v42;
              goto LABEL_17;
            }

            if (cb && !(cb->arg)(1, v24, cb))
            {
              goto LABEL_85;
            }

            v24 = (v24 + 1);
            v29 = 1;
            if (v11 == v24)
            {
              goto LABEL_86;
            }
          }
        }

        goto LABEL_85;
      }

      v44 = -1431655766;
      v30 = BN_primality_test(&v44, ret, v11, v14, 0, cb);
      v31 = v44;
      if (!v30)
      {
        v31 = -1;
      }

      v15 = v42;
      if (v31)
      {
        v29 = v31 != -1;
        goto LABEL_86;
      }
    }

    v19 = BN_CTX_get(v14);
    v20 = BN_CTX_get(v14);
    if (v20)
    {
      v21 = v20;
      if (BN_rshift1(v20, add))
      {
        if (BN_rand(v19, bits - 1, 0, 1) && BN_div(0, v18, v19, v21, v14) && BN_sub(v19, v19, v18))
        {
          if (rem)
          {
            if (!BN_rshift1(v18, rem) || !BN_add(v19, v19, v18))
            {
              goto LABEL_84;
            }

LABEL_70:
            if (BN_lshift1(ret, v19) && BN_add_word(ret, 1uLL))
            {
              if (ret->top <= 16)
              {
                v32 = 512;
              }

              else
              {
                v32 = 1024;
              }

              v33 = 1;
              do
              {
                while (1)
                {
                  v34 = kPrimes[v33];
                  if (!bn_mod_u16_consttime(ret, v34) || !bn_mod_u16_consttime(v19, v34))
                  {
                    break;
                  }

                  if (++v33 == v32)
                  {
                    goto LABEL_47;
                  }
                }

                if (!BN_add(ret, ret, add))
                {
                  break;
                }

                v33 = 1;
              }

              while (BN_add(v19, v19, v21));
            }

            goto LABEL_84;
          }

          if (BN_add_word(v19, 1uLL))
          {
            goto LABEL_70;
          }
        }
      }
    }

LABEL_84:
    BN_CTX_end(v14);
  }

LABEL_85:
  v29 = 0;
LABEL_86:
  BN_CTX_end(v14);
  BN_CTX_free(v14);
  return v29;
}

BOOL bn_odd_number_is_obviously_composite(unsigned int *a1)
{
  v3 = -21846;
  result = bn_trial_division(&v3, a1);
  if (result)
  {
    return !BN_is_word(a1, v3);
  }

  return result;
}

BOOL bn_trial_division(__int16 *a1, uint64_t a2)
{
  if (*(a2 + 8) <= 16)
  {
    v4 = 512;
  }

  else
  {
    v4 = 1024;
  }

  v5 = 3;
  if (bn_mod_u16_consttime(a2, 3u))
  {
    v7 = v4 - 2;
    v8 = -1;
    v9 = &word_1A90B8724;
    while (v7)
    {
      v10 = *v9++;
      v5 = v10;
      --v8;
      --v7;
      if (!bn_mod_u16_consttime(a2, v10))
      {
        result = -v8 < v4;
        goto LABEL_10;
      }
    }

    return 0;
  }

  else
  {
    result = 1;
LABEL_10:
    *a1 = v5;
  }

  return result;
}

uint64_t bn_miller_rabin_init(uint64_t a1, BIGNUM *a2, BN_CTX *ctx)
{
  *a1 = BN_CTX_get(ctx);
  *(a1 + 8) = BN_CTX_get(ctx);
  *(a1 + 16) = BN_CTX_get(ctx);
  v6 = BN_CTX_get(ctx);
  *(a1 + 24) = v6;
  v7 = *a1;
  if (!*a1 || !*(a1 + 8))
  {
    return 0;
  }

  v8 = v6;
  result = 0;
  if (*(a1 + 16))
  {
    if (v8)
    {
      v10 = BN_value_one();
      result = bn_usub_consttime(v7, &a2[1], v10);
      if (result)
      {
        v11 = BN_count_low_zero_bits(*a1);
        *(a1 + 36) = v11;
        result = bn_rshift_secret_shift(*(a1 + 8), *a1, v11, ctx);
        if (result)
        {
          *(a1 + 32) = BN_num_bits(a2 + 1);
          result = bn_one_to_montgomery(*(a1 + 16), a2, ctx);
          if (result)
          {
            return bn_usub_consttime(*(a1 + 24), &a2[1], *(a1 + 16)) != 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t bn_miller_rabin_iteration(uint64_t a1, _DWORD *a2, const BIGNUM *a3, uint64_t a4, BN_CTX *ctx)
{
  BN_CTX_start(ctx);
  v10 = BN_CTX_get(ctx);
  if (v10 && (v11 = v10, BN_mod_exp_mont_consttime(v10, a3, *(a1 + 8), (a4 + 24), ctx, a4)) && BN_to_montgomery(v11, v11, a4, ctx))
  {
    v12 = BN_equal_consttime(v11, *(a1 + 16));
    v13 = -(BN_equal_consttime(v11, *(a1 + 24)) | v12);
    if (*(a1 + 32) >= 2)
    {
      v14 = 1;
      do
      {
        if (v14 == *(a1 + 36))
        {
          v15 = ~v13;
        }

        else
        {
          v15 = 0;
        }

        if (v15)
        {
          break;
        }

        if (!BN_mod_mul_montgomery(v11, v11, v11, a4, ctx))
        {
          goto LABEL_14;
        }

        v13 |= -BN_equal_consttime(v11, *(a1 + 24));
        if ((BN_equal_consttime(v11, *(a1 + 16)) & ~v13) != 0)
        {
          break;
        }

        ++v14;
      }

      while (v14 < *(a1 + 32));
    }

    *a2 = v13 & 1;
    v16 = 1;
  }

  else
  {
LABEL_14:
    v16 = 0;
  }

  BN_CTX_end(ctx);
  return v16;
}

uint64_t BN_primality_test(_DWORD *a1, BIGNUM *a2, int a3, BN_CTX *a4, int a5, uint64_t a6)
{
  *a1 = 0;
  v12 = BN_value_one();
  if (BN_cmp(a2, v12) < 1)
  {
    return 1;
  }

  if (!BN_is_odd(a2))
  {
    v14 = a2;
    v15 = 2;
LABEL_6:
    *a1 = BN_is_word(v14, v15);
    return 1;
  }

  if (BN_is_word(a2, 3))
  {
    v13 = 1;
    *a1 = 1;
    return v13;
  }

  if (a5)
  {
    LOWORD(v33[0]) = -21846;
    if (bn_trial_division(v33, a2))
    {
      v15 = LOWORD(v33[0]);
      v14 = a2;
      goto LABEL_6;
    }

    if (a6 && !(*(a6 + 8))(1, 0xFFFFFFFFLL, a6))
    {
      return 0;
    }
  }

  if (!a3)
  {
    v17 = BN_num_bits(a2);
    if (v17 <= 3746)
    {
      if (v17 <= 1344)
      {
        if (v17 <= 475)
        {
          if (v17 <= 399)
          {
            if (v17 <= 346)
            {
              if (v17 <= 307)
              {
                if (v17 <= 54)
                {
                  a3 = 34;
                }

                else
                {
                  a3 = 27;
                }
              }

              else
              {
                a3 = 8;
              }
            }

            else
            {
              a3 = 7;
            }
          }

          else
          {
            a3 = 6;
          }
        }

        else
        {
          a3 = 5;
        }
      }

      else
      {
        a3 = 4;
      }
    }

    else
    {
      a3 = 3;
    }
  }

  if (a4)
  {
    v18 = 0;
    goto LABEL_33;
  }

  a4 = BN_CTX_new();
  v18 = a4;
  if (!a4)
  {
    return 0;
  }

LABEL_33:
  BN_CTX_start(a4);
  v19 = BN_CTX_get(a4);
  v20 = BN_MONT_CTX_new_consttime(a2, a4);
  v21 = v20;
  v13 = 0;
  v34 = 0xAAAAAAAAAAAAAAAALL;
  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v33[0] = v22;
  v33[1] = v22;
  if (v19 && v20)
  {
    if (bn_miller_rabin_init(v33, v20, a4))
    {
      v30 = v18;
      v23 = a3;
      v24 = 0;
      v25 = 1;
      v26 = *&v33[0];
      do
      {
        v32 = -1431655766;
        if (!bn_rand_secret_range(v19, &v32, 2uLL, v26) || (v27 = v32, v31 = 0, !bn_miller_rabin_iteration(v33, &v31, v19, v21, a4)))
        {
LABEL_50:
          v13 = 0;
          goto LABEL_52;
        }

        if (!v31)
        {
          *a1 = 0;
          v13 = 1;
          goto LABEL_52;
        }

        if (a6 && !(*(a6 + 8))(1, v25 - 1, a6))
        {
          goto LABEL_50;
        }

        v24 += v27;
        v29 = v25++ < 0x10;
      }

      while (v29 | ((((v24 - v23) ^ v24 | v24 ^ v23) ^ v24) >> 63));
      if (v24 < v23)
      {
        BN_primality_test_cold_1();
      }

      v13 = 1;
      *a1 = 1;
LABEL_52:
      v18 = v30;
    }

    else
    {
      v13 = 0;
    }
  }

  BN_MONT_CTX_free(v21);
  BN_CTX_end(a4);
  BN_CTX_free(v18);
  return v13;
}

uint64_t EVP_DigestSignUpdate(uint64_t a1, const void *a2, size_t a3)
{
  if (*(**(a1 + 16) + 40))
  {

    return EVP_DigestUpdate(a1, a2, a3);
  }

  else
  {
    ERR_put_error(6, 0, 125, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/digestsign/digestsign.c.inc", 135);
    return 0;
  }
}

uint64_t EVP_DigestSignFinal(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!*(**(a1 + 16) + 40))
  {
    ERR_put_error(6, 0, 125, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/digestsign/digestsign.c.inc", 154);
    v4 = 0;
LABEL_9:
    v5 = *MEMORY[0x1E69E9840];
    return v4;
  }

  if (a2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&ctx.digest = v3;
    *&ctx.flags = v3;
    v13 = v3;
    v14 = v3;
    *md = v3;
    v12 = v3;
    s = -1431655766;
    EVP_MD_CTX_init(&ctx);
    v4 = EVP_MD_CTX_copy_ex(&ctx, a1) && EVP_DigestFinal_ex(&ctx, md, &s) && EVP_PKEY_sign(*(a1 + 16)) != 0;
    EVP_MD_CTX_cleanup(&ctx);
    goto LABEL_9;
  }

  EVP_MD_size(*a1);
  v7 = *(a1 + 16);
  v8 = *MEMORY[0x1E69E9840];

  return EVP_PKEY_sign(v7);
}

uint64_t EVP_DigestSign(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5)
{
  v7 = *(a1 + 16);
  if (*(*v7 + 40))
  {
    if (!a2 || EVP_DigestSignUpdate(a1, a4, a5))
    {

      return EVP_DigestSignFinal(a1, a2);
    }

    return 0;
  }

  v9 = *(*v7 + 48);
  if (!v9)
  {
    ERR_put_error(6, 0, 125, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/digestsign/digestsign.c.inc", 228);
    return 0;
  }

  return v9();
}

uint64_t CRYPTO_get_ex_new_index_ex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OPENSSL_malloc(0x20uLL);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = 0;
  CRYPTO_MUTEX_lock_write(a1);
  v10 = atomic_load((a1 + 216));
  if ((*(a1 + 220) ^ 0x7FFFFFFFuLL) < v10)
  {
    ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/ex_data.c", 155);
    CRYPTO_MUTEX_unlock_read(a1);
    return 0xFFFFFFFFLL;
  }

  v12 = *(a1 + 208);
  if (v12)
  {
    v13 = (v12 + 24);
  }

  else
  {
    if (v10)
    {
      CRYPTO_get_ex_new_index_ex_cold_1();
    }

    v13 = (a1 + 200);
  }

  *v13 = v9;
  *(a1 + 208) = v9;
  atomic_store(v10 + 1, (a1 + 216));
  CRYPTO_MUTEX_unlock_read(a1);
  return v10 + *(a1 + 220);
}

uint64_t OPENSSL_strnlen(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  result = 0;
  while (*(a1 + result))
  {
    if (a2 == ++result)
    {
      return a2;
    }
  }

  return result;
}

uint64_t OPENSSL_vasprintf_internal(char **a1, const char *a2, va_list a3, int a4)
{
  if (a4)
  {
    v6 = MEMORY[0x1E69E9B40];
  }

  else
  {
    v6 = OPENSSL_malloc;
  }

  if (a4)
  {
    v7 = MEMORY[0x1E69E9B38];
  }

  else
  {
    v7 = OPENSSL_free;
  }

  if (a4)
  {
    v8 = MEMORY[0x1E69E9B70];
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

    v14 = v13;
    result = vsnprintf(v13, v12, a2, a3);
    v10 = v14;
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

void *OPENSSL_strndup(_BYTE *a1, size_t a2)
{
  v3 = 0;
  if (!a2)
  {
    goto LABEL_6;
  }

  while (a1[v3])
  {
    if (a2 == ++v3)
    {
      v3 = a2;
      break;
    }
  }

  if (v3 == -1)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/mem.c", 596);
    return 0;
  }

  else
  {
LABEL_6:
    v4 = OPENSSL_malloc(v3 + 1);
    v5 = v4;
    if (v4)
    {
      if (v3)
      {
        memcpy(v4, a1, v3);
      }

      *(v5 + v3) = 0;
    }
  }

  return v5;
}

size_t OPENSSL_strlcpy(_BYTE *a1, char *__s, unint64_t a3)
{
  if (a3 < 2)
  {
    v4 = 0;
    if (!a3)
    {
      return strlen(__s) + v4;
    }
  }

  else
  {
    v3 = 0;
    v4 = a3 - 1;
    while (__s[v3])
    {
      a1[v3] = __s[v3];
      if (v4 == ++v3)
      {
        __s += v3;
        a1 += v3;
        goto LABEL_9;
      }
    }

    __s += v3;
    a1 += v3;
    v4 = v3;
  }

LABEL_9:
  *a1 = 0;
  return strlen(__s) + v4;
}

size_t OPENSSL_strlcat(_BYTE *a1, char *a2, unint64_t a3)
{
  v3 = a3;
  if (a3)
  {
    for (i = 0; a1[i]; ++i)
    {
      if (!--a3)
      {
        a1 += v3;
        return OPENSSL_strlcpy(a1, a2, a3) + v3;
      }
    }

    a1 += i;
    v3 = i;
  }

  return OPENSSL_strlcpy(a1, a2, a3) + v3;
}

void nw_protocol_boringssl_prepend_frame_array()
{
  v0[0] = 0;
  v0[1] = v0;
  v0[2] = 0x3010000000;
  v0[4] = 0;
  v0[5] = 0;
  v0[3] = &unk_1A90C3C6B;
  nw_frame_array_init();
  nw_frame_array_foreach();
  nw_frame_array_prepend_array();
  _Block_object_dispose(v0, 8);
}

void sub_1A9085E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __nw_protocol_boringssl_prepend_frame_array_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = a2;
  nw_frame_array_remove();
  v6 = *(*(a1 + 32) + 8);
  v7 = *(a1 + 49);
  nw_frame_array_append();

  return 1;
}

uint64_t CRYPTO_MUTEX_lock_read(pthread_rwlock_t *a1)
{
  result = pthread_rwlock_rdlock(a1);
  if (result)
  {
    abort();
  }

  return result;
}

void BN_init(BIGNUM *a1)
{
  a1->d = 0;
  *&a1->top = 0;
  *&a1->neg = 0;
}

BIGNUM *__cdecl BN_dup(const BIGNUM *a)
{
  if (!a)
  {
    return 0;
  }

  v2 = OPENSSL_malloc(0x18uLL);
  v3 = v2;
  if (v2)
  {
    *&v2->top = 0;
    *&v2->neg = 0;
    v2->d = 0;
    v2->flags = 1;
    if (!BN_copy(v2, a))
    {
      BN_free(v3);
      return 0;
    }
  }

  return v3;
}

BIGNUM *__cdecl BN_copy(BIGNUM *a, const BIGNUM *b)
{
  v2 = a;
  if (b != a)
  {
    if (bn_wexpand(&a->d, b->top))
    {
      top = b->top;
      if (top)
      {
        memcpy(v2->d, b->d, 8 * top);
        LODWORD(top) = b->top;
      }

      v2->top = top;
      v2->neg = b->neg;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

double BN_value_one_init()
{
  BN_value_one_storage = &BN_value_one_do_init_kOneLimbs;
  *&result = 0x100000001;
  unk_1ED4C02B8 = xmmword_1A90B8F30;
  return result;
}

uint64_t bn_minimal_width(uint64_t a1)
{
  result = *(a1 + 8);
  if (result >= 1)
  {
    v3 = *a1 - 8;
    while (!*(v3 + 8 * result))
    {
      v4 = __OFSUB__(result, 1);
      result = (result - 1);
      if ((result < 0) ^ v4 | (result == 0))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t BN_zero(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t BN_one(uint64_t a1)
{
  v2 = 1;
  if (!bn_wexpand(a1, 1uLL))
  {
    return 0;
  }

  *(a1 + 16) = 0;
  **a1 = 1;
  *(a1 + 8) = 1;
  return v2;
}

int BN_set_word(BIGNUM *a, unint64_t w)
{
  if (w)
  {
    result = bn_wexpand(&a->d, 1uLL);
    if (!result)
    {
      return result;
    }

    a->neg = 0;
    *a->d = w;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    a->neg = 0;
  }

  a->top = v5;
  return 1;
}

BOOL bn_fits_in_words(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2 > a2;
  v4 = v2 - a2;
  if (!v3)
  {
    return 1;
  }

  v5 = 0;
  v6 = (*a1 + 8 * a2);
  do
  {
    v7 = *v6++;
    v5 |= v7;
    --v4;
  }

  while (v4);
  return v5 == 0;
}

uint64_t bn_copy_words(void *__dst, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v3 = 109;
    v4 = 317;
LABEL_3:
    ERR_put_error(3, 0, v3, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/bn.c.inc", v4);
    return 0;
  }

  v8 = *(a3 + 8);
  v9 = v8 - a2;
  if (v8 > a2)
  {
    v10 = 0;
    v11 = (*a3 + 8 * a2);
    do
    {
      v12 = *v11++;
      v10 |= v12;
      --v9;
    }

    while (v9);
    v8 = a2;
    if (v10)
    {
      v3 = 102;
      v4 = 324;
      goto LABEL_3;
    }
  }

  v13 = 8 * a2;
  if (v13)
  {
    bzero(__dst, v13);
  }

  if (8 * v8)
  {
    memcpy(__dst, *a3, 8 * v8);
  }

  return 1;
}

uint64_t bn_resize_words(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = v4 > a2;
  v6 = v4 - a2;
  if (v5)
  {
    v7 = 0;
    v8 = (*a1 + 8 * a2);
    do
    {
      v9 = *v8++;
      v7 |= v9;
      --v6;
    }

    while (v6);
    if (v7)
    {
      ERR_put_error(3, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/bn.c.inc", 399);
      return 0;
    }

    goto LABEL_10;
  }

  result = bn_wexpand(a1, a2);
  if (result)
  {
    v11 = *(a1 + 8);
    v12 = 8 * (a2 - v11);
    if (v12)
    {
      bzero((*a1 + 8 * v11), v12);
    }

LABEL_10:
    *(a1 + 8) = a2;
    return 1;
  }

  return result;
}

uint64_t bn_set_minimal_width(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 < 1)
  {
    if (!v1)
    {
LABEL_7:
      *(result + 16) = 0;
    }
  }

  else
  {
    while (!*(*result - 8 + 8 * v1))
    {
      v2 = __OFSUB__(v1--, 1);
      if ((v1 < 0) ^ v2 | (v1 == 0))
      {
        *(result + 8) = 0;
        goto LABEL_7;
      }
    }

    *(result + 8) = v1;
  }

  return result;
}

uint64_t bssl::SSL_HANDSHAKE::GetClientHello(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[78];
  if (v6)
  {
    *a2 = 256;
    v7 = a1[77];
    *(a2 + 24) = v7;
    *(a2 + 32) = v6;
    v8 = a1[78];
    if (v8 <= 3)
    {
      abort();
    }

    v9 = v7 + 4;
    v10 = v8 - 4;
    *(a2 + 8) = v7 + 4;
    *(a2 + 16) = v8 - 4;
  }

  else
  {
    v11 = *a1;
    if (!(*(**a1 + 24))())
    {
      ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake.cc", 187);
      return 0;
    }

    v9 = *(a2 + 8);
    v10 = *(a2 + 16);
  }

  if (bssl::ssl_client_hello_init(*a1, a3, v9, v10))
  {
    return 1;
  }

  ERR_put_error(16, 0, 131, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake.cc", 192);
  bssl::ssl_send_alert(*a1, 2, 50);
  return 0;
}