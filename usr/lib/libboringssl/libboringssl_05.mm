uint64_t boringssl_session_get_handshake_flight_time_ms(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      return *(v1 + 440);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nw_protocol_boringssl_waiting_for_output(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = nw_protocol_downcast();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if ((*(v1 + 435) & 1) == 0)
  {
    nw_protocol_boringssl_waiting_for_output_cold_1();
  }

  if (boringssl_session_in_early_data(*(v2 + 296)))
  {
    v3 = boringssl_session_get_state(*(v2 + 296)) < 2;
  }

  else
  {
    v3 = 0;
  }

  if ((*(v2 + 435) & 1) == 0)
  {
    nw_protocol_boringssl_waiting_for_output_cold_2(v2, v3, &v5);
    return v5;
  }

  return v3;
}

void nw_protocol_boringssl_waiting_for_output_cold_1()
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

void nw_protocol_boringssl_waiting_for_output_cold_2(uint64_t a1, char a2, _BYTE *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v5 = OUTLINED_FUNCTION_34();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_28();
      _os_log_debug_impl(v7, v8, v9, v10, v11, 0x30u);
    }
  }

  *a3 = a2 & 1;
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __boringssl_config_get_whitelisted_bundle_identifier_block_invoke()
{
  getpid();
  result = csops();
  if (result == -1 && (result = __error(), *result == 34) && (v1 = bswap32(0xAAAAAAAA), (v1 - 1025) >= 0xFFFFFC07) && (getpid(), result = csops(), !result))
  {
    csops_identifier_data_csops_data[v1] = 0;
    if ((qword_1ED4C050C != 0x6C7070612E6D6F63 || word_1ED4C0514 != 11877) && (qword_1ED4C050C != 0x7365745F6C737362 || word_1ED4C0514 != 116))
    {
      v5 = 0;
      v2 = "redacted_bundle_id";
      while (1)
      {
        result = strcmp(top_bundles[v5], &qword_1ED4C050C);
        if (!result)
        {
          break;
        }

        if (++v5 == 251)
        {
          goto LABEL_6;
        }
      }
    }

    result = strdup(&qword_1ED4C050C);
    v2 = result;
  }

  else
  {
    v2 = "no_bundle_id";
  }

LABEL_6:
  global_bundle_identifier = v2;
  return result;
}

uint64_t SSL_process_quic_post_handshake(void *a1)
{
  *(a1[6] + 196) = 0;
  ERR_clear_error();
  ERR_clear_system_error();
  v2 = a1[6];
  v3 = *(v2 + 280);
  if (!v3 || (*(v3 + 1600) & 8) != 0)
  {
    if (*(v2 + 172) == 2)
    {
      ERR_restore_state(*(v2 + 184));
    }

    else
    {
      v9 = 0xAAAAAAAAAAAAAAAALL;
      *&v4 = 0xAAAAAAAAAAAAAAAALL;
      *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v8[0] = v4;
      v8[1] = v4;
      if (!(*(*a1 + 24))(a1, v8))
      {
        return 1;
      }

      while (ssl_do_post_handshake(a1, v8))
      {
        (*(*a1 + 32))(a1);
        if (((*(*a1 + 24))(a1, v8) & 1) == 0)
        {
          return 1;
        }
      }

      v6 = a1[6];
      *(v6 + 172) = 2;
      v7 = ERR_save_state();
      std::unique_ptr<err_save_state_st,bssl::internal::Deleter>::reset[abi:ne200100]((v6 + 184), v7);
    }
  }

  else
  {
    ERR_put_error(16, 0, 66, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_lib.cc", 1193);
  }

  return 0;
}

uint64_t ssl_do_post_handshake(uint64_t a1, uint64_t a2)
{
  if (bssl::ssl_protocol_version(a1, a2) >= 0x304)
  {
    return bssl::tls13_post_handshake(a1, a2);
  }

  if (*(a1 + 180))
  {
    ERR_put_error(16, 0, 182, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_lib.cc", 1161);
  }

  else
  {
    if (*(a2 + 1) || *(a2 + 16))
    {
      bssl::ssl_send_alert(a1, 2, 50);
      ERR_put_error(16, 0, 110, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_lib.cc", 1168);
      return 0;
    }

    if (*(a1 + 176) == 3)
    {
      return 1;
    }

    *(*(a1 + 48) + 222) |= 0x800u;
    if (*(a1 + 176) == 4 || SSL_renegotiate(a1))
    {
      return 1;
    }
  }

  bssl::ssl_send_alert(a1, 2, 100);
  return 0;
}

uint64_t bssl::tls13_post_handshake(bssl *this, uint64_t a2)
{
  v3 = *(a2 + 1);
  v4 = *(this + 6);
  if (v3 == 24)
  {
    v5 = *(v4 + 214) + 1;
    *(v4 + 214) = v5;
    if (*(this + 21) || v5 >= 0x21u)
    {
      ERR_put_error(16, 0, 260, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 920);
      v7 = this;
      v8 = 10;
    }

    else
    {
      v10 = *(a2 + 8);
      v9 = -86;
      if (CBS_get_u8(&v10, &v9) && !*(&v10 + 1) && v9 < 2u)
      {
        result = bssl::tls13_rotate_traffic_key(this, 0);
        if (result)
        {
          if (v9 != 1)
          {
            return 1;
          }

          if ((*(*(this + 6) + 222) & 0x100) != 0)
          {
            return 1;
          }

          result = bssl::tls13_add_key_update(this, 0);
          if (result)
          {
            return 1;
          }
        }

        return result;
      }

      ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 896);
      v7 = this;
      v8 = 50;
    }

    bssl::ssl_send_alert(v7, 2, v8);
    return 0;
  }

  *(v4 + 214) = 0;
  if (v3 != 4 || (*(this + 180) & 1) != 0)
  {
    bssl::ssl_send_alert(this, 2, 10);
    ERR_put_error(16, 0, 223, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 935);
    return 0;
  }

  return bssl::tls13_process_new_session_ticket(this, a2);
}

void bssl::tls13_create_session_with_ticket(bssl *a1@<X0>, uint64_t *a2@<X1>, ssl_st **a3@<X8>)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v28 = 0xAAAAAAAAAAAAAAAALL;
  bssl::SSL_SESSION_dup(*(*(a1 + 6) + 472), 2, &v28);
  if (!v28)
  {
    *a3 = 0;
    goto LABEL_17;
  }

  bssl::ssl_session_rebase_time(a1, v28, v6);
  v27 = -1431655766;
  memset(v26, 170, sizeof(v26));
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_u32(a2, &v27))
  {
    goto LABEL_12;
  }

  if (!CBS_get_u32(a2, &v28->ex_data.dummy))
  {
    goto LABEL_12;
  }

  if (!CBS_get_u8_length_prefixed(a2, &v26[2]))
  {
    goto LABEL_12;
  }

  if (!CBS_get_u16_length_prefixed(a2, v26))
  {
    goto LABEL_12;
  }

  v7 = v28;
  v9 = v26[0];
  v8 = v26[1];
  if (!bssl::Array<unsigned char>::InitUninitialized(&v28->write_hash, v26[1]))
  {
    goto LABEL_12;
  }

  if (v8)
  {
    write_hash = v7->write_hash;
    do
    {
      v11 = *v9++;
      LOBYTE(write_hash->type) = v11;
      write_hash = (write_hash + 1);
      --v8;
    }

    while (v8);
  }

  if (!CBS_get_u16_length_prefixed(a2, &v25) || a2[1])
  {
LABEL_12:
    bssl::ssl_send_alert(a1, 2, 50);
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 1216);
LABEL_13:
    *a3 = 0;
    goto LABEL_14;
  }

  v14 = v28;
  if (LODWORD(v28->cipher_list) > v27)
  {
    LODWORD(v28->cipher_list) = v27;
  }

  v15 = v26[2];
  v16 = v26[3];
  v17 = SSL_is_dtls(a1) != 0;
  if (!bssl::tls13_derive_session_psk(v14, v15, v16, v17))
  {
    goto LABEL_13;
  }

  v22[1] = -1431655766;
  v23 = 0;
  v22[0] = 65578;
  v24 = 0;
  v21 = 50;
  v29[0] = v22;
  if ((bssl::ssl_parse_extensions(&v25, &v21, v29, 1, 1) & 1) == 0)
  {
    bssl::ssl_send_alert(a1, 2, v21);
LABEL_32:
    v20 = 0;
    goto LABEL_33;
  }

  v18 = v28;
  if (HIBYTE(v22[0]) == 1)
  {
    if (!CBS_get_u32(&v23, &v28->ex_data.dummy + 1) || v24)
    {
      bssl::ssl_send_alert(a1, 2, 50);
      v19 = 1243;
      goto LABEL_31;
    }

    v18 = v28;
    if (*(a1 + 21) && *(&v28->ex_data.dummy + 1) != -1)
    {
      bssl::ssl_send_alert(a1, 2, 47);
      v19 = 1252;
LABEL_31:
      ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", v19);
      goto LABEL_32;
    }
  }

  BYTE3(v18->init_msg) = 32;
  SHA256(v26[0], v26[1], &v18->server + 3);
  v20 = v28;
  LOBYTE(v28->tlsext_debug_arg) = v28->tlsext_debug_arg & 0xF3 | 8;
  v28 = 0;
LABEL_33:
  *a3 = v20;
LABEL_14:
  v12 = v28;
  v28 = 0;
  if (v12)
  {
    SSL_SESSION_free(v12);
  }

LABEL_17:
  v13 = *MEMORY[0x1E69E9840];
}

uint64_t bssl::tls13_process_new_session_ticket(bssl *a1, uint64_t a2)
{
  if (*(*(a1 + 6) + 176))
  {
    return 1;
  }

  v9 = *(a2 + 8);
  ses = 0xAAAAAAAAAAAAAAAALL;
  bssl::tls13_create_session_with_ticket(a1, &v9, &ses);
  v4 = ses;
  v2 = ses != 0;
  if (ses)
  {
    v5 = *(a1 + 16);
    if ((*(v5 + 300) & 1) == 0 || (v6 = *(v5 + 312)) == 0 || !v6(a1, ses))
    {
      ses = 0;
      SSL_SESSION_free(v4);
    }
  }

  return v2;
}

void sub_1A9037220(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

int8x8_t bssl::ssl_session_rebase_time(bssl *this, ssl_st *a2, ssl_session_st *a3)
{
  v11[0] = 0xAAAAAAAAAAAAAAAALL;
  v11[1] = 0xAAAAAAAAAAAAAAAALL;
  bssl::ssl_get_current_time(this, v11);
  cipher_list_by_id = a2->cipher_list_by_id;
  v6 = v11[0];
  v7 = v11[0] >= cipher_list_by_id;
  v8 = v11[0] - cipher_list_by_id;
  if (v7)
  {
    a2->cipher_list_by_id = v11[0];
    cipher_list = a2->cipher_list;
    v10.i64[0] = cipher_list;
    v10.i64[1] = HIDWORD(cipher_list);
    result = vbic_s8(vsub_s32(cipher_list, vdup_n_s32(v8)), vmovn_s64(vcgtq_u64(vdupq_n_s64(v8), v10)));
    a2->cipher_list = result;
  }

  else
  {
    a2->cipher_list = 0;
    a2->cipher_list_by_id = v6;
  }

  return result;
}

BOOL bssl::tls13_derive_session_psk(unsigned __int8 *a1, const ssl_session_st *a2, size_t a3, char a4)
{
  digest = bssl::ssl_session_get_digest(a1, a2);
  v9 = a1[58];
  if (EVP_MD_size(digest) != v9)
  {
    bssl::tls13_derive_session_psk();
  }

  return bssl::hkdf_expand_label(a1 + 10, a1[58], digest, (a1 + 10), a1[58], "resumption", 0xAuLL, v10, a2, a3, a4);
}

uint64_t bssl::ssl_get_finished(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = *this;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22 = v4;
  v23 = v4;
  if ((*(*v3 + 24))(v3, &v22))
  {
    result = bssl::ssl_check_message_type(v3, &v22, 20);
    if (result)
    {
      *&v6 = 0xAAAAAAAAAAAAAAAALL;
      *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v27 = v6;
      v28 = v6;
      *v25 = v6;
      v26 = v6;
      v21 = 0xAAAAAAAAAAAAAAAALL;
      v7 = *(this + 192);
      if (!v7)
      {
        v7 = *(*this + 104);
      }

      result = bssl::SSLTranscript::GetFinishedMAC((this + 424), v25, &v21, v7, (*(v3 + 180) & 1) == 0);
      if (result)
      {
        if ((v22 & 1) != 0 || (result = bssl::SSLTranscript::Update(this + 424, *(&v23 + 1), v24), result))
        {
          if (CBS_mem_equal(&v22 + 8, v25, v21))
          {
            v8 = v21;
            if (v21 < 0xD)
            {
              v12 = *(v3 + 48);
              if (*(v3 + 180))
              {
                v12[455] = 0;
                if (v8)
                {
                  v13 = v12 + 443;
                  v14 = v25;
                  v15 = v8;
                  do
                  {
                    v16 = *v14++;
                    *v13++ = v16;
                    --v15;
                  }

                  while (v15);
                }

                v12[455] = v8;
              }

              else
              {
                v12[468] = 0;
                if (v8)
                {
                  v17 = v12 + 456;
                  v18 = v25;
                  v19 = v8;
                  do
                  {
                    v20 = *v18++;
                    *v17++ = v20;
                    --v19;
                  }

                  while (v19);
                }

                v12[468] = v8;
              }

              if (!(*(*v3 + 40))(v3))
              {
                (*(*v3 + 32))(v3);
                result = 1;
                goto LABEL_12;
              }

              bssl::ssl_send_alert(v3, 2, 10);
              v9 = 255;
              v10 = 523;
            }

            else
            {
              v9 = 68;
              v10 = 508;
            }
          }

          else
          {
            bssl::ssl_send_alert(v3, 2, 51);
            v9 = 142;
            v10 = 501;
          }

          ERR_put_error(16, 0, v9, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake.cc", v10);
          result = 0;
        }
      }
    }
  }

  else
  {
    result = 3;
  }

LABEL_12:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t BCM_sha256_update(uint64_t a1, int8x16_t *__src, size_t __n)
{
  if (__n)
  {
    v3 = __n;
    v4 = __src;
    v6 = a1 + 40;
    v7 = *(a1 + 32) + 8 * __n;
    *(a1 + 32) = v7;
    v8 = *(a1 + 104);
    if (v8)
    {
      if (__n <= 0x3F && v8 + __n < 0x40)
      {
        memcpy((v6 + v8), __src, __n);
        *(a1 + 104) += v3;
        return 0;
      }

      v9 = 64 - v8;
      if (v8 != 64)
      {
        memcpy((v6 + v8), __src, 64 - v8);
      }

      sha256_block_data_order(a1, v6, 1);
      v4 = (v4 + v9);
      v3 -= v9;
      *(a1 + 104) = 0;
      *v6 = 0u;
      *(v6 + 16) = 0u;
      *(v6 + 32) = 0u;
      *(v6 + 48) = 0u;
    }

    if (v3 >= 0x40)
    {
      sha256_block_data_order(a1, v4, v3 >> 6);
      v4 = (v4 + (v3 & 0xFFFFFFFFFFFFFFC0));
      v3 &= 0x3Fu;
    }

    if (v3)
    {
      *(a1 + 104) = v3;
      memcpy(v6, v4, v3);
    }
  }

  return 0;
}

unsigned __int8 *__cdecl SHA256(const unsigned __int8 *d, size_t n, unsigned __int8 *md)
{
  v10 = *MEMORY[0x1E69E9840];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9[5] = v6;
  v9[6] = v6;
  v9[3] = v6;
  v9[4] = v6;
  v9[1] = v6;
  v9[2] = v6;
  v9[0] = v6;
  BCM_sha256_init(v9);
  BCM_sha256_update(v9, d, n);
  BCM_sha256_final(md, v9);
  OPENSSL_cleanse(v9, 0x70uLL);
  v7 = *MEMORY[0x1E69E9840];
  return md;
}

_DWORD *sha256_block_data_order(_DWORD *result, int8x16_t *a2, uint64_t a3)
{
  v212 = result;
  v224 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = *result;
    v4 = result[1];
    v6 = result[2];
    v5 = result[3];
    v8 = result[4];
    v7 = result[5];
    v9 = result[6];
    v10 = result[7];
    do
    {
      v222 = a3;
      HIDWORD(v11) = v8;
      LODWORD(v11) = v8;
      v12 = (v11 >> 6) ^ __ROR4__(v8, 11);
      v13 = __PAIR64__(v3, __ROR4__(v8, 25));
      v213 = v10;
      v214 = v9;
      v14 = vrev32q_s8(*a2);
      v15 = v10 + (v9 & ~v8 | v8 & v7) + (v12 ^ v13) + v14.i32[0];
      LODWORD(v13) = v3;
      v15 += 1116352408;
      v217 = v5;
      v16 = v15 + v5;
      v17 = ((v13 >> 2) ^ __ROR4__(v3, 13) ^ __ROR4__(v3, 22)) + ((v4 ^ v6) & v3 ^ v4 & v6) + v15;
      HIDWORD(v13) = v15 + v5;
      LODWORD(v13) = v15 + v5;
      v18 = (v13 >> 6) ^ __ROR4__(v15 + v5, 11);
      v19 = __PAIR64__(v17, __ROR4__(v16, 25));
      v215 = v7;
      v20 = v9 + v14.i32[1] + (v16 & v8 | v7 & ~v16) + 1899447441 + (v18 ^ v19);
      LODWORD(v19) = v17;
      v218 = v6;
      v21 = v20 + v6;
      v22 = ((v19 >> 2) ^ __ROR4__(v17, 13) ^ __ROR4__(v17, 22)) + (v17 & (v3 ^ v4) ^ v3 & v4) + v20;
      HIDWORD(v19) = v20 + v6;
      LODWORD(v19) = v20 + v6;
      v23 = (v19 >> 6) ^ __ROR4__(v20 + v6, 11);
      v24 = __PAIR64__(v22, __ROR4__(v21, 25));
      v25 = v7 + v14.i32[2] + (v21 & v16 | v8 & ~v21) - 1245643825 + (v23 ^ v24);
      LODWORD(v24) = v22;
      v219 = v4;
      v26 = v25 + v4;
      v27 = ((v24 >> 2) ^ __ROR4__(v22, 13) ^ __ROR4__(v22, 22)) + (v22 & (v17 ^ v3) ^ v17 & v3) + v25;
      HIDWORD(v24) = v26;
      LODWORD(v24) = v26;
      v28 = (v24 >> 6) ^ __ROR4__(v26, 11);
      v29 = __PAIR64__(v27, __ROR4__(v26, 25));
      v216 = v8;
      v30 = v8 + v14.i32[3] + (v26 & v21 | v16 & ~v26) - 373957723 + (v28 ^ v29);
      LODWORD(v29) = v27;
      v220 = v3;
      v31 = v30 + v3;
      v32 = ((v29 >> 2) ^ __ROR4__(v27, 13) ^ __ROR4__(v27, 22)) + (v27 & (v22 ^ v17) ^ v22 & v17) + v30;
      v33 = vrev32q_s8(a2[1]);
      HIDWORD(v29) = v32;
      LODWORD(v29) = v32;
      v34 = (v29 >> 2) ^ __ROR4__(v32, 13);
      v35 = __PAIR64__(v31, __ROR4__(v32, 22));
      v36 = (v34 ^ v35) + (v32 & (v27 ^ v22) ^ v27 & v22);
      v37 = v21 + v33.i32[1];
      LODWORD(v35) = v31;
      v38 = v16 + v33.i32[0] + (v31 & v26 | v21 & ~v31) + 961987163 + ((v35 >> 6) ^ __ROR4__(v31, 11) ^ __ROR4__(v31, 25));
      v39 = v38 + v17;
      v40 = v36 + v38;
      HIDWORD(v35) = v39;
      LODWORD(v35) = v39;
      v41 = (v35 >> 6) ^ __ROR4__(v39, 11);
      v42 = __PAIR64__(v40, __ROR4__(v39, 25));
      v43 = v37 + (v39 & v31 | v26 & ~v39) + 1508970993 + (v41 ^ v42);
      LODWORD(v42) = v40;
      v44 = v43 + v22;
      v45 = ((v42 >> 2) ^ __ROR4__(v40, 13) ^ __ROR4__(v40, 22)) + (v40 & (v32 ^ v27) ^ v32 & v27) + v43;
      HIDWORD(v42) = v44;
      LODWORD(v42) = v44;
      v46 = (v42 >> 6) ^ __ROR4__(v44, 11);
      v47 = __PAIR64__(v45, __ROR4__(v44, 25));
      v48 = v33.i32[2] + v26 + (v44 & v39 | v31 & ~v44) - 1841331548 + (v46 ^ v47);
      LODWORD(v47) = v45;
      v49 = v48 + v27;
      v50 = ((v47 >> 2) ^ __ROR4__(v45, 13) ^ __ROR4__(v45, 22)) + (v45 & (v40 ^ v32) ^ v40 & v32) + v48;
      HIDWORD(v47) = v49;
      LODWORD(v47) = v49;
      v51 = (v47 >> 6) ^ __ROR4__(v49, 11);
      v52 = __PAIR64__(v50, __ROR4__(v49, 25));
      v53 = v33.i32[3] + v31 + (v49 & v44 | v39 & ~v49) - 1424204075 + (v51 ^ v52);
      LODWORD(v52) = v50;
      v54 = v53 + v32;
      v55 = ((v52 >> 2) ^ __ROR4__(v50, 13) ^ __ROR4__(v50, 22)) + (v50 & (v45 ^ v40) ^ v45 & v40) + v53;
      HIDWORD(v52) = v55;
      LODWORD(v52) = v55;
      v56 = (v52 >> 2) ^ __ROR4__(v55, 13);
      v57 = __PAIR64__(v54, __ROR4__(v55, 22));
      v58 = (v56 ^ v57) + (v55 & (v50 ^ v45) ^ v50 & v45);
      v59 = a2[3];
      v221 = a2;
      v60 = vrev32q_s8(a2[2]);
      LODWORD(v57) = v54;
      v61 = v60.i32[0] + v39 + (v54 & v49 | v44 & ~v54) - 670586216 + ((v57 >> 6) ^ __ROR4__(v54, 11) ^ __ROR4__(v54, 25));
      v62 = v61 + v40;
      v63 = v58 + v61;
      v64 = v60.i32[1] + v44 + ((v61 + v40) & v54 | v49 & ~(v61 + v40));
      HIDWORD(v57) = v62;
      LODWORD(v57) = v62;
      v65 = (v57 >> 6) ^ __ROR4__(v62, 11);
      v66 = __PAIR64__(v63, __ROR4__(v62, 25));
      v67 = v64 + 310598401 + (v65 ^ v66);
      LODWORD(v66) = v63;
      v68 = v67 + v45;
      v69 = ((v66 >> 2) ^ __ROR4__(v63, 13) ^ __ROR4__(v63, 22)) + (v63 & (v55 ^ v50) ^ v55 & v50) + v67;
      HIDWORD(v66) = v68;
      LODWORD(v66) = v68;
      v70 = (v66 >> 6) ^ __ROR4__(v68, 11);
      v71 = __PAIR64__(v69, __ROR4__(v68, 25));
      v72 = v60.i32[2] + v49 + (v68 & v62 | v54 & ~v68) + 607225278 + (v70 ^ v71);
      LODWORD(v71) = v69;
      v73 = v72 + v50;
      v74 = ((v71 >> 2) ^ __ROR4__(v69, 13) ^ __ROR4__(v69, 22)) + (v69 & (v63 ^ v55) ^ v63 & v55) + v72;
      HIDWORD(v71) = v73;
      LODWORD(v71) = v73;
      v75 = (v71 >> 6) ^ __ROR4__(v73, 11);
      v76 = __PAIR64__(v74, __ROR4__(v73, 25));
      v77 = v60.i32[3] + v54 + (v73 & v68 | v62 & ~v73) + 1426881987 + (v75 ^ v76);
      LODWORD(v76) = v74;
      v78 = ((v76 >> 2) ^ __ROR4__(v74, 13) ^ __ROR4__(v74, 22)) + (v74 & (v69 ^ v63) ^ v69 & v63);
      v79 = v77 + v55;
      v80 = v78 + v77;
      HIDWORD(v76) = v78 + v77;
      LODWORD(v76) = v78 + v77;
      v81 = (v76 >> 2) ^ __ROR4__(v78 + v77, 13);
      v82 = __PAIR64__(v79, __ROR4__(v78 + v77, 22));
      v83 = (v81 ^ v82) + ((v78 + v77) & (v74 ^ v69) ^ v74 & v69);
      v84 = vrev32q_s8(v59);
      LODWORD(v82) = v79;
      v85 = v84.i32[0] + v62 + (v79 & v73 | v68 & ~v79) + 1925078388 + ((v82 >> 6) ^ __ROR4__(v79, 11) ^ __ROR4__(v79, 25));
      v86 = v85 + v63;
      v87 = v83 + v85;
      v88 = v84.i32[1] + v68 + (v86 & v79 | v73 & ~v86);
      HIDWORD(v82) = v86;
      LODWORD(v82) = v86;
      v89 = (v82 >> 6) ^ __ROR4__(v86, 11);
      v90 = __PAIR64__(v87, __ROR4__(v86, 25));
      v91 = v88 - 2132889090 + (v89 ^ v90);
      LODWORD(v90) = v87;
      v92 = v91 + v69;
      v93 = ((v90 >> 2) ^ __ROR4__(v87, 13) ^ __ROR4__(v87, 22)) + (v87 & (v80 ^ v74) ^ v80 & v74) + v91;
      v223[0] = v14;
      v223[1] = v33;
      v223[2] = v60;
      v223[3] = v84;
      HIDWORD(v90) = v92;
      LODWORD(v90) = v92;
      v94 = (v90 >> 6) ^ __ROR4__(v92, 11);
      v95 = __PAIR64__(v93, __ROR4__(v92, 25));
      v96 = v84.i32[2] + v73 + (v92 & v86 | v79 & ~v92) - 1680079193 + (v94 ^ v95);
      LODWORD(v95) = v93;
      v97 = v96 + v74;
      v98 = ((v95 >> 2) ^ __ROR4__(v93, 13) ^ __ROR4__(v93, 22)) + (v93 & (v87 ^ v80) ^ v87 & v80) + v96;
      HIDWORD(v95) = v97;
      LODWORD(v95) = v96 + v74;
      v99 = v84.i32[3] + v79 + (v97 & v92 | v86 & ~v97) - 1046744716 + ((v95 >> 6) ^ __ROR4__(v97, 11) ^ __ROR4__(v97, 25));
      HIDWORD(v95) = v98;
      LODWORD(v95) = v98;
      v100 = v99 + v80;
      v101 = ((v95 >> 2) ^ __ROR4__(v98, 13) ^ __ROR4__(v98, 22)) + (v98 & (v93 ^ v87) ^ v93 & v87) + v99;
      v102 = &dword_1A90A994C;
      v103 = 31;
      do
      {
        v104 = v103 - 15;
        v105 = (v103 - 14) & 9;
        v106 = *(v223 + v105);
        v107 = *(v223 + ((v103 - 1) & 0xE));
        HIDWORD(v109) = v106;
        LODWORD(v109) = v106;
        v108 = v109 >> 7;
        v111 = __PAIR64__(v107, __ROR4__(v106, 18));
        v110 = v108 ^ v111;
        LODWORD(v111) = v107;
        v112 = v111 >> 17;
        v114 = __PAIR64__(v100, __ROR4__(v107, 19));
        v113 = v112 ^ v114;
        v115 = (v103 - 15) & 8;
        LODWORD(v114) = v100;
        v116 = (v103 - 15) & 8;
        v117 = (v110 ^ (v106 >> 3)) + *(v223 + ((v103 - 6) & 9)) + *(v223 + v115) + (v113 ^ (v107 >> 10));
        v118 = (v114 >> 6) ^ __ROR4__(v100, 11);
        v120 = __PAIR64__(v101, __ROR4__(v100, 25));
        v119 = v118 ^ v120;
        LODWORD(v120) = v101;
        v121 = *(v102 - 6);
        v122 = (v92 & ~v100 | v100 & v97) + v86 + *(v102 - 7) + v119;
        *(v223 + v115) = v117;
        v123 = ((v120 >> 2) ^ __ROR4__(v101, 13) ^ __ROR4__(v101, 22)) + ((v98 ^ v93) & v101 ^ v98 & v93);
        v124 = v122 + v117;
        v125 = v124 + v87;
        HIDWORD(v120) = *(v223 + (v116 | 2u));
        LODWORD(v120) = HIDWORD(v120);
        v126 = v123 + v124;
        v127 = *(v223 + (v103 & 0xF));
        v128 = (v120 >> 7) ^ __ROR4__(HIDWORD(v120), 18) ^ (HIDWORD(v120) >> 3);
        HIDWORD(v120) = v127;
        LODWORD(v120) = v127;
        v129 = v120 >> 17;
        v130 = __PAIR64__(v125, __ROR4__(v127, 19));
        v131 = *(v223 + ((v103 - 5) & 0xALL)) + v106 + (v129 ^ v130 ^ (v127 >> 10));
        LODWORD(v130) = v125;
        v132 = v131 + v128;
        v133 = (v130 >> 6) ^ __ROR4__(v125, 11);
        v135 = __PAIR64__(v126, __ROR4__(v125, 25));
        v134 = v133 ^ v135;
        LODWORD(v135) = v126;
        *(v223 + v105) = v132;
        v136 = v121 + v92 + (v125 & v100 | v97 & ~v125) + v132;
        v137 = (v135 >> 2) ^ __ROR4__(v126, 13);
        v138 = __PAIR64__(v117, __ROR4__(v126, 22));
        v139 = v136 + v134;
        v140 = (v137 ^ v138) + (v126 & (v101 ^ v98) ^ v101 & v98);
        v141 = v139 + v93;
        v142 = *(v223 + (v116 | 3u));
        LODWORD(v138) = v117;
        v143 = v138 >> 17;
        HIDWORD(v138) = v142;
        LODWORD(v138) = v142;
        v144 = (v138 >> 7) ^ __ROR4__(v142, 18);
        v145 = __PAIR64__(v141, __ROR4__(v117, 19));
        v146 = v144 ^ (v142 >> 3);
        v147 = (v103 - 13) & 0xALL;
        v148 = v140 + v139;
        v149 = *(v223 + ((v103 - 4) & 0xBLL)) + *(v223 + v147) + v146 + (v143 ^ v145 ^ (v117 >> 10));
        LODWORD(v145) = v141;
        v150 = (v145 >> 6) ^ __ROR4__(v141, 11);
        v152 = __PAIR64__(v148, __ROR4__(v141, 25));
        v151 = v150 ^ v152;
        *(v223 + v147) = v149;
        v153 = *(v102 - 4);
        LODWORD(v152) = v148;
        v154 = ((v152 >> 2) ^ __ROR4__(v148, 13) ^ __ROR4__(v148, 22)) + (v148 & (v126 ^ v101) ^ v126 & v101);
        v155 = *(v223 + (v116 | 4u));
        v156 = *(v102 - 5) + v97 + v149 + (v141 & v125 | v100 & ~v141) + v151;
        HIDWORD(v152) = v155;
        LODWORD(v152) = v155;
        v157 = v152 >> 7;
        v158 = *(v223 + (v116 | 1u));
        v160 = __PAIR64__(v158, __ROR4__(v155, 18));
        v159 = v157 ^ v160;
        LODWORD(v160) = v158;
        v161 = (v103 - 12) & 0xBLL;
        LODWORD(v147) = (v160 >> 17) ^ __ROR4__(v158, 19) ^ (v158 >> 10);
        v162 = v156 + v98;
        v163 = (v159 ^ (v155 >> 3)) + *(v223 + ((v103 - 3) & 0xC)) + *(v223 + v161) + v147;
        v164 = v154 + v156;
        HIDWORD(v160) = v162;
        LODWORD(v160) = v162;
        v165 = (v160 >> 6) ^ __ROR4__(v162, 11);
        v167 = __PAIR64__(v164, __ROR4__(v162, 25));
        v166 = v165 ^ v167;
        *(v223 + v161) = v163;
        LODWORD(v167) = v164;
        v168 = v153 + v100 + v163 + (v162 & v141 | v125 & ~v162) + v166;
        v169 = ((v167 >> 2) ^ __ROR4__(v164, 13) ^ __ROR4__(v164, 22)) + (v164 & (v148 ^ v126) ^ v148 & v126);
        v170 = v168 + v101;
        v171 = *(v223 + (v116 | 5u));
        HIDWORD(v167) = v171;
        LODWORD(v167) = v171;
        LODWORD(v161) = (v167 >> 7) ^ __ROR4__(v171, 18);
        LODWORD(v115) = *(v223 + (v116 | 2u));
        HIDWORD(v167) = v115;
        LODWORD(v167) = v115;
        v172 = v167 >> 17;
        v173 = __PAIR64__(v170, __ROR4__(v115, 19));
        v174 = (v103 - 11) & 0xC;
        v175 = (v161 ^ (v171 >> 3)) + *(v223 + ((v103 - 2) & 0xDLL)) + *(v223 + v174) + (v172 ^ v173 ^ (v115 >> 10));
        v176 = v169 + v168;
        LODWORD(v173) = v170;
        v177 = (v173 >> 6) ^ __ROR4__(v170, 11);
        v179 = __PAIR64__(v176, __ROR4__(v170, 25));
        v178 = v177 ^ v179;
        *(v223 + v174) = v175;
        LODWORD(v161) = *(v102 - 2);
        LODWORD(v174) = *(v102 - 3) + v175 + v125;
        LODWORD(v179) = v176;
        v180 = ((v179 >> 2) ^ __ROR4__(v176, 13) ^ __ROR4__(v176, 22)) + (v176 & (v164 ^ v148) ^ v164 & v148);
        v181 = v174 + (v170 & v162 | v141 & ~v170) + v178;
        v86 = v181 + v126;
        v182 = *(v223 + (v116 | 6u));
        HIDWORD(v179) = v182;
        LODWORD(v179) = v182;
        LODWORD(v115) = v179 >> 7;
        v183 = *(v223 + (v116 | 3u));
        HIDWORD(v179) = v183;
        LODWORD(v179) = v183;
        v184 = v179 >> 17;
        v185 = v115 ^ __ROR4__(v182, 18) ^ (v182 >> 3);
        v186 = __PAIR64__(v181 + v126, __ROR4__(v183, 19));
        LODWORD(v115) = v184 ^ v186;
        v187 = (v103 - 10) & 0xDLL;
        v87 = v180 + v181;
        v188 = *(v223 + v187) + v107 + v185 + (v115 ^ (v183 >> 10));
        LODWORD(v186) = v86;
        v189 = (v186 >> 6) ^ __ROR4__(v86, 11);
        v191 = __PAIR64__(v87, __ROR4__(v86, 25));
        v190 = v189 ^ v191;
        *(v223 + v187) = v188;
        LODWORD(v191) = v87;
        v192 = v161 + v188 + v141 + (v86 & v170 | v162 & ~v86) + v190;
        v193 = ((v191 >> 2) ^ __ROR4__(v87, 13) ^ __ROR4__(v87, 22)) + (v87 & (v176 ^ v164) ^ v176 & v164);
        LODWORD(v174) = *(v223 + (v116 | 7u));
        v92 = v192 + v148;
        HIDWORD(v191) = v174;
        LODWORD(v191) = v174;
        v194 = v191 >> 7;
        LODWORD(v105) = *(v223 + (v116 | 4u));
        v195 = __PAIR64__(v105, __ROR4__(v174, 18));
        LODWORD(v174) = v194 ^ v195 ^ (v174 >> 3);
        LODWORD(v195) = v105;
        v196 = v195 >> 17;
        v197 = __PAIR64__(v92, __ROR4__(v105, 19));
        v198 = (v103 - 9) & 0xE;
        LODWORD(v174) = *(v223 + v198) + v127 + v174 + (v196 ^ v197 ^ (v105 >> 10));
        v93 = v193 + v192;
        LODWORD(v197) = v92;
        v199 = (v197 >> 6) ^ __ROR4__(v92, 11);
        v201 = __PAIR64__(v93, __ROR4__(v92, 25));
        v200 = v199 ^ v201;
        *(v223 + v198) = v174;
        LODWORD(v201) = v93;
        v202 = *(v102 - 1) + v174 + v162 + (v92 & v86 | v170 & ~v92) + v200;
        v97 = v202 + v164;
        v98 = ((v201 >> 2) ^ __ROR4__(v93, 13) ^ __ROR4__(v93, 22)) + (v93 & (v87 ^ v176) ^ v87 & v176) + v202;
        v203 = *(v223 + (v116 ^ 8u));
        HIDWORD(v201) = v203;
        LODWORD(v201) = v203;
        LODWORD(v174) = v201 >> 7;
        LODWORD(v161) = *(v223 + (v116 | 5u));
        HIDWORD(v201) = v161;
        LODWORD(v201) = v161;
        LODWORD(v105) = v201 >> 17;
        v204 = v174 ^ __ROR4__(v203, 18) ^ (v203 >> 3);
        v205 = __PAIR64__(v97, __ROR4__(v161, 19));
        v206 = (v103 - 8) & 0xF;
        LODWORD(v174) = v105 ^ v205 ^ (v161 >> 10);
        LODWORD(v205) = v97;
        LODWORD(v161) = (v205 >> 6) ^ __ROR4__(v97, 11);
        v207 = *(v223 + v206) + v204 + v117 + v174;
        v208 = __PAIR64__(v98, __ROR4__(v97, 25));
        LODWORD(v174) = v161 ^ v208;
        result = (v86 & ~v97);
        *(v223 + v206) = v207;
        v209 = *v102;
        v102 += 8;
        LODWORD(v208) = v98;
        v210 = v209 + v207 + v170 + (v97 & v92 | result) + v174;
        v100 = v210 + v176;
        v101 = ((v208 >> 2) ^ __ROR4__(v98, 13) ^ __ROR4__(v98, 22)) + (v98 & (v93 ^ v87) ^ v93 & v87) + v210;
        v103 += 8;
      }

      while (v104 < 0x38);
      a2 = v221 + 4;
      v3 = v101 + v220;
      v4 = v98 + v219;
      *v212 = v101 + v220;
      v212[1] = v98 + v219;
      v6 = v93 + v218;
      v5 = v87 + v217;
      v212[2] = v93 + v218;
      v212[3] = v87 + v217;
      v8 = v100 + v216;
      v7 = v97 + v215;
      v212[4] = v100 + v216;
      v212[5] = v97 + v215;
      v9 = v92 + v214;
      v10 = v86 + v213;
      v212[6] = v92 + v214;
      v212[7] = v86 + v213;
      a3 = v222 - 1;
    }

    while (v222 != 1);
  }

  v211 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t BCM_sha256_init(uint64_t a1)
{
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = xmmword_1A90A98D0;
  *(a1 + 16) = xmmword_1A90A98E0;
  *(a1 + 32) = 0u;
  *(a1 + 108) = 32;
  return 0;
}

_DWORD *sha256_final_impl(_DWORD *a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 104);
  if (v3 >= 0x40)
  {
    sha256_final_impl_cold_2();
  }

  v4 = a3;
  v7 = a3 + 40;
  v8 = *(a3 + 32);
  *(a3 + 40 + v3) = 0x80;
  v9 = v3 + 1;
  if (v3 < 0x38)
  {
    if (v3 == 55)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v3 != 63)
    {
      bzero((v7 + v9), 63 - v3);
    }

    sha256_block_data_order(v4, v7, 1);
    v9 = 0;
  }

  bzero((v7 + v9), 56 - v9);
LABEL_8:
  v4[12] = vrev64_s32(vrev32_s8(v8));
  result = sha256_block_data_order(v4, v7, 1);
  v4[13].i32[0] = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  if (a2 >= 0x21)
  {
    abort();
  }

  if ((a2 & 3) != 0)
  {
    sha256_final_impl_cold_1();
  }

  if (a2)
  {
    v11 = a2 >> 2;
    do
    {
      v12 = v4->i32[0];
      v4 = (v4 + 4);
      *a1++ = bswap32(v12);
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t boringssl_context_new_session_handler(const SSL *a1, uint64_t a2)
{
  v86 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v4 = a1;
      v5 = SSL_get_ex_data(a1, 0);
      if (v5)
      {
        v6 = v5;
        if (v5->version == -1252936367)
        {
          method = v5->method;
          if (method)
          {
            WeakRetained = objc_loadWeakRetained(&method->ssl_clear);
            if (!WeakRetained || (v9 = WeakRetained, v10 = objc_loadWeakRetained(&method->ssl_clear), v11 = v10[435], v10, v9, (v11 & 1) == 0))
            {
              v12 = objc_loadWeakRetained(&method->ssl_clear);
              if (v12)
              {
                v13 = objc_loadWeakRetained(&method->ssl_clear);
                v14 = (v13[435] & 1) == 0;
              }

              else
              {
                v14 = 1;
              }

              if (v14)
              {
                if (g_boringssl_log)
                {
                  v15 = g_boringssl_log;
                  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
                  {
                    v16 = objc_loadWeakRetained(&method->ssl_clear);
                    if (v16)
                    {
                      v2 = objc_loadWeakRetained(&method->ssl_clear);
                      v17 = (v2 + 351);
                    }

                    else
                    {
                      v17 = &unk_1A9098A9F;
                    }

                    v18 = objc_loadWeakRetained(&method->ssl_clear);
                    *buf = 136446978;
                    v79 = "boringssl_context_new_session_handler";
                    v80 = 1024;
                    v81 = 1497;
                    v82 = 2082;
                    v83 = v17;
                    v84 = 2048;
                    v85 = v18;
                    _os_log_impl(&dword_1A8FF5000, v15, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] New session available", buf, 0x26u);

                    if (v16)
                    {
                    }
                  }
                }
              }
            }

            v19 = boringssl_session_state_create(a2, &method->ssl_callback_ctrl);
            if (v19)
            {
              objc_storeStrong(&method[1].put_cipher_by_char, v19);
              boringssl_session_update_metadata(v6);
              if (method->ssl_pending)
              {
                v20 = method;
                v21 = nw_protocol_boringssl_copy_definition();
                v22 = MEMORY[0x1AC57F130]();

                ssl_read = v20[2].ssl_read;
                v73 = MEMORY[0x1E69E9820];
                v74 = 3221225472;
                v75 = __boringssl_context_new_session_handler_block_invoke;
                v76 = &unk_1E7869750;
                v24 = v22;
                v77 = v24;
                nw_protocol_metadata_access_handle();
                v25 = objc_loadWeakRetained(&method->ssl_clear);
                if (!v25 || (v26 = v25, v27 = objc_loadWeakRetained(&method->ssl_clear), v28 = v27[435], v27, v26, (v28 & 1) == 0))
                {
                  v29 = objc_loadWeakRetained(&method->ssl_clear);
                  if (v29)
                  {
                    v30 = objc_loadWeakRetained(&method->ssl_clear);
                    v31 = (v30[435] & 1) == 0;
                  }

                  else
                  {
                    v31 = 1;
                  }

                  if (v31)
                  {
                    if (g_boringssl_log)
                    {
                      v39 = g_boringssl_log;
                      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                      {
                        v40 = objc_loadWeakRetained(&method->ssl_clear);
                        if (v40)
                        {
                          v68 = objc_loadWeakRetained(&method->ssl_clear);
                          v69 = v68 + 351;
                        }

                        else
                        {
                          v69 = &unk_1A9098A9F;
                        }

                        v44 = objc_loadWeakRetained(&method->ssl_clear);
                        *buf = 136446978;
                        v79 = "boringssl_context_new_session_handler";
                        v80 = 1024;
                        v81 = 1520;
                        v82 = 2082;
                        v83 = v69;
                        v84 = 2048;
                        v85 = v44;
                        _os_log_impl(&dword_1A8FF5000, v39, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] Asyncing for session update block", buf, 0x26u);

                        if (v40)
                        {
                        }
                      }
                    }
                  }
                }

                num_ciphers = v20->num_ciphers;
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = __boringssl_context_new_session_handler_block_invoke_238;
                block[3] = &unk_1E7869848;
                v46 = v20;
                v71 = v46;
                v2 = v24;
                v72 = v2;
                v47 = v2;
                if (num_ciphers)
                {
                  ++v46[2].ssl_accept;
                  dispatch_async(num_ciphers, block);
                  v47 = v72;
                }
              }

              if (method->ssl_accept)
              {
                v48 = objc_loadWeakRetained(&method->ssl_clear);
                if (!v48 || (v49 = v48, v50 = objc_loadWeakRetained(&method->ssl_clear), v2 = v50[435], v50, v49, (v2 & 1) == 0))
                {
                  v51 = objc_loadWeakRetained(&method->ssl_clear);
                  if (v51)
                  {
                    v52 = objc_loadWeakRetained(&method->ssl_clear);
                    v2 = (v52[435] & 1) == 0;
                  }

                  else
                  {
                    v2 = 1;
                  }

                  if (v2)
                  {
                    if (g_boringssl_log)
                    {
                      v53 = g_boringssl_log;
                      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
                      {
                        boringssl_context_new_session_handler_cold_1();
                      }
                    }
                  }
                }

                boringssl_session_cache_push(method->ssl_accept, v19);
              }

              if (SSL_session_reused(v4) && method[1].ssl_dispatch_alert)
              {
                v54 = objc_loadWeakRetained(&method->ssl_clear);
                if (!v54 || (v55 = v54, v56 = objc_loadWeakRetained(&method->ssl_clear), v57 = v56[435], v56, v55, (v57 & 1) == 0))
                {
                  v58 = objc_loadWeakRetained(&method->ssl_clear);
                  if (v58)
                  {
                    v59 = objc_loadWeakRetained(&method->ssl_clear);
                    v60 = (v59[435] & 1) == 0;
                  }

                  else
                  {
                    v60 = 1;
                  }

                  if (v60)
                  {
                    if (g_boringssl_log)
                    {
                      v61 = g_boringssl_log;
                      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
                      {
                        v62 = objc_loadWeakRetained(&method->ssl_clear);
                        if (v62)
                        {
                          v2 = objc_loadWeakRetained(&method->ssl_clear);
                          v63 = (v2 + 351);
                        }

                        else
                        {
                          v63 = &unk_1A9098A9F;
                        }

                        v65 = objc_loadWeakRetained(&method->ssl_clear);
                        *buf = 136446978;
                        v79 = "boringssl_context_new_session_handler";
                        v80 = 1024;
                        v81 = 1536;
                        v82 = 2082;
                        v83 = v63;
                        v84 = 2048;
                        v85 = v65;
                        _os_log_impl(&dword_1A8FF5000, v61, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] Rebuilding session state for resumed session", buf, 0x26u);

                        if (v62)
                        {
                        }
                      }
                    }
                  }
                }

                boringssl_session_set_peer_verification_state_from_session(v6, a2);
              }
            }

            else
            {
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
                    v41 = g_boringssl_log;
                    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                    {
                      v42 = objc_loadWeakRetained(&method->ssl_clear);
                      if (v42)
                      {
                        v4 = objc_loadWeakRetained(&method->ssl_clear);
                        v43 = v4 + 351;
                      }

                      else
                      {
                        v43 = &unk_1A9098A9F;
                      }

                      v64 = objc_loadWeakRetained(&method->ssl_clear);
                      *buf = 136446978;
                      v79 = "boringssl_context_new_session_handler";
                      v80 = 1024;
                      v81 = 1501;
                      v82 = 2082;
                      v83 = v43;
                      v84 = 2048;
                      v85 = v64;
                      _os_log_impl(&dword_1A8FF5000, v41, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] boringssl_session_state_create failed", buf, 0x26u);

                      if (v42)
                      {
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

  v66 = *MEMORY[0x1E69E9840];
  return 0;
}

boringssl_concrete_boringssl_session_state *boringssl_session_state_create(uint64_t a1, unsigned __int8 *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v5 = objc_alloc_init(boringssl_concrete_boringssl_session_state);
    v6 = v5;
    if (v5)
    {
      v5->cached_content_type = 1;
      v5->used_extended_master_secret = SSL_SESSION_used_extended_master_secret(a1);
      memcpy(&v6->remote_address, a2, *a2);
      if (SSL_SESSION_to_bytes(a1, &v6->serialized_session, &v6->serialized_session_length))
      {
        v2 = v6;
LABEL_13:

        return v2;
      }

      if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
      {
        boringssl_session_state_create_cold_1();
      }
    }

    else if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      boringssl_session_state_create_cold_2();
    }

    v2 = 0;
    goto LABEL_13;
  }

  return v2;
}

BOOL SSL_SESSION_to_bytes(uint64_t a1, void *a2, void *a3)
{
  if ((*(a1 + 440) & 4) != 0)
  {
    *a3 = 13;
    v8 = OPENSSL_memdup("NOT RESUMABLE", 0xDuLL);
    *a2 = v8;
    return v8 != 0;
  }

  else
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v10[1] = v6;
    v10[2] = v6;
    v10[0] = v6;
    CBB_zero(v10);
    v7 = CBB_init(v10, 0x100uLL) && bssl::SSL_SESSION_to_bytes_full(a1, v10, 0) && CBB_finish(v10, a2, a3) != 0;
    CBB_cleanup(v10);
  }

  return v7;
}

uint64_t SSL_SESSION_used_extended_master_secret(uint64_t a1)
{
  if (*(a1 + 4) <= 0x303u)
  {
    return *(a1 + 440) & 1;
  }

  else
  {
    return 1;
  }
}

uint64_t CBB_add_asn1_uint64_with_tag(uint64_t a1, unint64_t a2, unsigned int a3)
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[1] = v5;
  v10[2] = v5;
  v10[0] = v5;
  if (!CBB_add_asn1(a1, v10, a3))
  {
LABEL_13:
    v9 = (a1 + 16);
    if (*(a1 + 8))
    {
      v9 = *v9;
    }

    result = 0;
    *(v9 + 24) |= 2u;
    *a1 = 0;
    return result;
  }

  v6 = 0;
  v7 = 1;
  do
  {
    while ((v7 & 1) == 0)
    {
LABEL_7:
      if (!cbb_add_u(v10, (a2 >> (56 - 8 * v6)), 1uLL))
      {
        goto LABEL_13;
      }

      v7 = 0;
      if (++v6 == 8)
      {
        return CBB_flush(a1);
      }
    }

    if ((a2 >> (56 - 8 * v6)))
    {
      if (((a2 >> (56 - 8 * v6)) & 0x80) != 0 && !cbb_add_u(v10, 0, 1uLL))
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }

    ++v6;
    v7 = 1;
  }

  while (v6 != 8);
  if (!cbb_add_u(v10, 0, 1uLL))
  {
    goto LABEL_13;
  }

  return CBB_flush(a1);
}

uint64_t CBB_add_asn1_BOOL(uint64_t a1, int a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = v4;
  v8[2] = v4;
  v8[0] = v4;
  if (CBB_add_asn1(a1, v8, 1u))
  {
    v5 = a2 ? 255 : 0;
    if (cbb_add_u(v8, v5, 1uLL) && CBB_flush(a1))
    {
      return 1;
    }
  }

  v7 = (a1 + 16);
  if (*(a1 + 8))
  {
    v7 = *v7;
  }

  result = 0;
  *(v7 + 24) |= 2u;
  *a1 = 0;
  return result;
}

size_t SSL_SESSION_get_master_key(uint64_t a1, void *__dst, size_t __n)
{
  if (!__n)
  {
    return *(a1 + 58);
  }

  v3 = __n;
  if (*(a1 + 58) < __n)
  {
    v3 = *(a1 + 58);
    if (!*(a1 + 58))
    {
      return 0;
    }
  }

  memcpy(__dst, (a1 + 10), v3);
  return v3;
}

uint64_t __boringssl_context_new_session_handler_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  nw_protocol_metadata_access_handle();
  return 1;
}

_OWORD *nw_protocol_boringssl_copy_metadata_contents(_OWORD *result, uint64_t a2)
{
  if (result && a2)
  {
    v3 = result;
    *result = *a2;
    result[1] = *(a2 + 16);
    *(result + 8) = *(a2 + 32);
    v4 = *(a2 + 40);
    if (v4)
    {
      *(v3 + 5) = strdup(v4);
    }

    v5 = *(a2 + 48);
    if (v5)
    {
      *(v3 + 6) = strdup(v5);
    }

    v6 = *(a2 + 56);
    if (v6)
    {
      *(v3 + 7) = strdup(v6);
    }

    v3[4] = *(a2 + 64);
    objc_storeStrong(v3 + 10, *(a2 + 80));
    objc_storeStrong(v3 + 11, *(a2 + 88));
    v7 = *(a2 + 96);
    if (v7)
    {
      v8 = xpc_copy(v7);
      v9 = *(v3 + 12);
      *(v3 + 12) = v8;
    }

    objc_storeStrong(v3 + 13, *(a2 + 104));
    v10 = *(a2 + 112);
    if (v10)
    {
      v11 = xpc_copy(v10);
      v12 = *(v3 + 14);
      *(v3 + 14) = v11;
    }

    objc_storeStrong(v3 + 15, *(a2 + 120));
    objc_storeStrong(v3 + 16, *(a2 + 128));
    objc_storeStrong(v3 + 17, *(a2 + 136));
    objc_storeStrong(v3 + 18, *(a2 + 144));
    objc_storeStrong(v3 + 19, *(a2 + 152));
    objc_storeStrong(v3 + 20, *(a2 + 160));
    objc_storeStrong(v3 + 21, *(a2 + 168));
    v13 = *(a2 + 176);
    if (v13)
    {
      *(v3 + 22) = strdup(v13);
    }

    v14 = *(a2 + 184);
    if (v14)
    {
      *(v3 + 23) = strdup(v14);
    }

    v15 = *(a2 + 192);
    if (v15)
    {
      *(v3 + 24) = strdup(v15);
    }

    *(v3 + 200) = *(a2 + 200);
    *(v3 + 216) = *(a2 + 216);
    *(v3 + 232) = *(a2 + 232);
    *(v3 + 31) = *(a2 + 248);
    *(v3 + 128) = *(a2 + 256);
    *(v3 + 33) = *(a2 + 264);
    v3[17] = *(a2 + 272);
    v3[18] = *(a2 + 288);
    v3[19] = *(a2 + 304);
    v16 = *(a2 + 328);
    if (v16)
    {
      *(v3 + 41) = boringssl_memory_copy_array(v16, 0x80uLL);
    }

    v17 = v3[21] & 0xFFFE | *(a2 + 336) & 1;
    *(v3 + 168) = v3[21] & 0xFFFE | *(a2 + 336) & 1;
    v18 = v17 & 0xFFFFFFFD | (2 * ((*(a2 + 336) >> 1) & 1));
    *(v3 + 168) = v18;
    v19 = v18 & 0xFFFFFFFB | (4 * ((*(a2 + 336) >> 2) & 1));
    *(v3 + 168) = v19;
    v20 = v19 & 0xFFFFFFF7 | (8 * ((*(a2 + 336) >> 3) & 1));
    *(v3 + 168) = v20;
    v21 = v20 & 0xFFFFFFEF | (16 * ((*(a2 + 336) >> 4) & 1));
    *(v3 + 168) = v21;
    v22 = v21 & 0xFFFFFFDF | (32 * ((*(a2 + 336) >> 5) & 1));
    *(v3 + 168) = v22;
    v23 = v22 & 0xFFFFFFBF | (((*(a2 + 336) >> 6) & 1) << 6);
    *(v3 + 168) = v23;
    v24 = v23 & 0xFFFFFF7F | (((*(a2 + 336) >> 7) & 1) << 7);
    *(v3 + 168) = v24;
    v25 = v24 & 0xFFFFFEFF | ((HIBYTE(*(a2 + 336)) & 1) << 8);
    *(v3 + 168) = v25;
    v26 = v25 & 0xFFFFFDFF | (((*(a2 + 336) >> 9) & 1) << 9);
    *(v3 + 168) = v26;
    v27 = v26 & 0xFFFFFBFF | (((*(a2 + 336) >> 10) & 1) << 10);
    *(v3 + 168) = v27;
    v28 = v27 & 0xFFFFF7FF | (((*(a2 + 336) >> 11) & 1) << 11);
    *(v3 + 168) = v28;
    LOWORD(v28) = v28 & 0xEFFF | (((*(a2 + 336) >> 12) & 1) << 12);
    *(v3 + 168) = v28;
    *(v3 + 168) = v28 & 0xDFFF | *(a2 + 336) & 0x2000;
    *(v3 + 43) = *(a2 + 344);
    v3[22] = *(a2 + 352);
    result = *(a2 + 368);
    if (result)
    {
      result = CFRetain(result);
      *(v3 + 46) = result;
    }

    *(v3 + 48) = 0;
  }

  return result;
}

void boringssl_session_cache_push(void *a1, void *a2)
{
  v9 = a1;
  v3 = a2;
  if (v9 && v3)
  {
    v4 = boringssl_session_cache_copy_queue(v9);
    if (!v4)
    {
      v5 = sec_array_create();
      if (!v5)
      {
        v4 = 0;
LABEL_9:

        goto LABEL_10;
      }

      v4 = v5;
    }

    sec_array_append();
    v6 = v9[1];
    v7 = nw_protocol_boringssl_copy_definition();
    time(0);
    nw_association_set_cached_content_for_protocol();

    if (sec_array_get_count() >= 2)
    {
      v8 = boringssl_session_cache_pop(v9);
    }

    goto LABEL_9;
  }

LABEL_10:
}

uint64_t boringssl_session_copy_serialized_session(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      boringssl_session_state_copy_serialized_session_state(*(v1 + 384));
      return objc_claimAutoreleasedReturnValue();
    }

    else
    {
      return 0;
    }
  }

  return result;
}

dispatch_data_t boringssl_session_state_copy_serialized_session_state(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  v3 = *(v1 + 12);
  v4 = v1[6];
  if (~v4 < v3)
  {
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      boringssl_session_state_copy_serialized_session_state_cold_4(v2 + 12);
    }

    goto LABEL_14;
  }

  if (~v4 == v3)
  {
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      boringssl_session_state_copy_serialized_session_state_cold_3(v2 + 12);
    }

    goto LABEL_14;
  }

  v5 = v4 + v3;
  if (v4 + v3 == -2)
  {
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      boringssl_session_state_copy_serialized_session_state_cold_2(v2 + 12);
    }

    goto LABEL_14;
  }

  v8 = *(v1 + 8);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = malloc_type_malloc(v5 + 2, 0x7D92A5ADuLL);
  v9 = v14[3];
  if (v9)
  {
    v10 = *(v2 + 5);
    *v9 = v8;
    *(v14[3] + 1) = v2[12];
    memcpy((v14[3] + 2), v2 + 12, v2[12]);
    memcpy((v14[3] + v2[12] + 2), v10, v4);
    v11 = v14[3];
    destructor[0] = MEMORY[0x1E69E9820];
    destructor[1] = 3221225472;
    destructor[2] = __boringssl_session_state_copy_serialized_session_state_block_invoke;
    destructor[3] = &unk_1E785EF90;
    destructor[4] = &v13;
    v6 = dispatch_data_create(v11, v5 + 2, 0, destructor);
  }

  else
  {
    v6 = g_boringssl_log;
    if (g_boringssl_log)
    {
      if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
      {
        boringssl_session_state_copy_serialized_session_state_cold_1();
      }

      v6 = 0;
    }
  }

  _Block_object_dispose(&v13, 8);
LABEL_15:

  return v6;
}

uint64_t SSL_CIPHER_get_kx_nid(uint64_t a1)
{
  v1 = *(a1 + 20);
  if (v1 > 7)
  {
    if (v1 == 8)
    {
      return 953;
    }

    else
    {
      if (v1 != 16)
      {
        goto LABEL_10;
      }

      return 957;
    }
  }

  else
  {
    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 952;
      }

LABEL_10:
      SSL_CIPHER_get_kx_nid_cold_1();
    }

    return 951;
  }
}

void BN_MONT_CTX_free(BN_MONT_CTX *mont)
{
  if (mont)
  {
    BN_free(mont);
    BN_free(&mont->RR.neg);

    OPENSSL_free(mont);
  }
}

int SSL_set_session(SSL *to, SSL_SESSION *session)
{
  handshake_func = to->handshake_func;
  if ((*(handshake_func + 111) & 0x10) != 0 || (v4 = *(handshake_func + 35)) == 0 || *(v4 + 20))
  {
    abort();
  }

  bssl::ssl_set_session(to, session, v2);
  return 1;
}

BOOL SSL_SESSION_is_resumable(uint64_t a1)
{
  if ((*(a1 + 440) & 4) != 0)
  {
    return 0;
  }

  if (*(a1 + 91))
  {
    return 1;
  }

  return *(a1 + 240) != 0;
}

BOOL bssl::ssl_session_is_time_valid(bssl *this, const ssl_st *a2, const ssl_session_st *a3)
{
  if (!a2)
  {
    return 0;
  }

  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = 0xAAAAAAAAAAAAAAAALL;
  bssl::ssl_get_current_time(this, v6);
  cipher_list_by_id = a2->cipher_list_by_id;
  return v6[0] >= cipher_list_by_id && v6[0] - cipher_list_by_id < LODWORD(a2->cipher_list);
}

void thread_local_destructor(char *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1 && !pthread_mutex_lock(&g_destructors_lock))
  {
    v5[0] = g_destructors;
    v5[1] = unk_1ED4C0958;
    v6 = qword_1ED4C0968;
    pthread_mutex_unlock(&g_destructors_lock);
    for (i = 0; i != 40; i += 8)
    {
      v3 = *(v5 + i);
      if (v3)
      {
        v3(*&a1[i]);
      }
    }

    free(a1);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void err_state_free(void **a1)
{
  if (a1)
  {
    for (i = 0; i != 48; i += 3)
    {
      v3 = &a1[i];
      free(a1[i + 1]);
      *v3 = 0;
      v3[1] = 0;
      v3[2] = 0;
    }

    free(a1[49]);

    free(a1);
  }
}

uint64_t bssl::ssl_process_alert(bssl *a1, _BYTE *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a4 != 2)
  {
    *a2 = 50;
    v12 = 102;
    v13 = 539;
    goto LABEL_12;
  }

  bssl::ssl_do_msg_callback(a1, 0, 21, a3, 2);
  v7 = *a3;
  v8 = a3[1];
  bssl::ssl_do_info_callback(a1, 0x4004);
  if (v7 == 2)
  {
    ERR_put_error(16, 0, v8 + 1000, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls_record.cc", 579);
    ERR_add_error_dataf("SSL alert number %d", v14, v15, v16, v17, v18, v19, v20, v8);
    *a2 = 0;
    return 4;
  }

  if (v7 != 1)
  {
    *a2 = 47;
    v12 = 227;
    v13 = 586;
    goto LABEL_12;
  }

  v10 = *(a1 + 6);
  if (v8)
  {
    if (*(v10 + 208))
    {
      v11 = bssl::ssl_protocol_version(a1, v9);
      if (v8 != 90 && v11 > 0x303)
      {
        *a2 = 50;
        v12 = 102;
        v13 = 565;
LABEL_12:
        ERR_put_error(16, 0, v12, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls_record.cc", v13);
        return 4;
      }

      v10 = *(a1 + 6);
    }

    v22 = ++*(v10 + 213);
    if (v22 >= 5)
    {
      *a2 = 10;
      v12 = 220;
      v13 = 572;
      goto LABEL_12;
    }

    return 1;
  }

  else
  {
    *(v10 + 172) = 1;
    return 3;
  }
}

uint64_t SSL_set_mode(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 148) | a2;
  *(a1 + 148) = v2;
  return v2;
}

void __boringssl_context_evaluate_trust_async_internal_block_invoke_2(uint64_t a1, uint64_t a2, int a3, __CFError *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  if (!v7)
  {
    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained((v7 + 16));
  if (!WeakRetained || (v9 = WeakRetained, v10 = objc_loadWeakRetained((*(a1 + 32) + 16)), v11 = v10[435], v10, v9, (v11 & 1) == 0))
  {
    v12 = *(a1 + 32);
    if (!v12)
    {
      goto LABEL_10;
    }

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

    if (v15)
    {
LABEL_10:
      if (g_boringssl_log)
      {
        v16 = g_boringssl_log;
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        v17 = *(a1 + 32);
        if (v17)
        {
          v18 = objc_loadWeakRetained((v17 + 16));
          v19 = *(a1 + 32);
          v28 = v18;
          if (v18)
          {
            v20 = v19 != 0;
            if (v19)
            {
              v18 = objc_loadWeakRetained((v19 + 16));
              v19 = *(a1 + 32);
            }

            else
            {
              v18 = 0;
            }

            v23 = v18 + 351;
          }

          else
          {
            v20 = 0;
            v23 = &unk_1A9098A9F;
          }

          v27 = v18;
          if (v19)
          {
            v21 = objc_loadWeakRetained((v19 + 16));
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

        *buf = 136447490;
        v33 = "boringssl_context_evaluate_trust_async_internal_block_invoke_2";
        v34 = 1024;
        v35 = 1667;
        v36 = 2082;
        v37 = v23;
        v38 = 2048;
        v39 = v21;
        v40 = 1024;
        v41 = a3;
        v42 = 2114;
        v43 = a4;
        _os_log_impl(&dword_1A8FF5000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] Returning from internal verify block with result: %{BOOL}d (%{public}@)", buf, 0x36u);
        if (v22)
        {
          if (!v20)
          {
            goto LABEL_25;
          }
        }

        else
        {

          if (!v20)
          {
LABEL_25:
            if (v17)
            {
LABEL_26:
            }

LABEL_27:

            goto LABEL_28;
          }
        }

        if (!v17)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }
  }

LABEL_28:
  if (a4)
  {
    *(*(a1 + 32) + 316) = CFErrorGetCode(a4);
  }

  if (boringssl_session_get_state(*(a1 + 48)) <= 3 && (boringssl_session_is_cancelled(*(a1 + 48)) & 1) == 0)
  {
    v24 = *(a1 + 32);
    v25 = v24[3];
    v29 = v24;
    v31 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
    v30 = *(a1 + 40);
    nw_queue_context_async_if_needed();
  }

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t boringssl_context_process_trust_result(uint64_t a1, __SecTrust *a2, uint64_t a3)
{
  v68 = *MEMORY[0x1E69E9840];
  if (!a1 || *a1 != -1252936367 || (v5 = *(a1 + 8)) == 0)
  {
    a3 = 0;
    goto LABEL_10;
  }

  if ((*(v5 + 551) & 2) == 0)
  {
    goto LABEL_44;
  }

  WeakRetained = objc_loadWeakRetained((v5 + 16));
  if (!WeakRetained || (v9 = WeakRetained, v10 = objc_loadWeakRetained((v5 + 16)), v3 = v10[435], v10, v9, (v3 & 1) == 0))
  {
    v11 = objc_loadWeakRetained((v5 + 16));
    if (v11)
    {
      v12 = objc_loadWeakRetained((v5 + 16));
      v3 = (v12[435] & 1) == 0;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      if (g_boringssl_log)
      {
        v15 = g_boringssl_log;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v3 = objc_loadWeakRetained((v5 + 16));
          if (v3)
          {
            v4 = objc_loadWeakRetained((v5 + 16));
            v16 = v4 + 351;
          }

          else
          {
            v16 = &unk_1A9098A9F;
          }

          v17 = objc_loadWeakRetained((v5 + 16));
          v56 = 136446978;
          v57 = "boringssl_context_process_trust_result";
          v58 = 1024;
          v59 = 1554;
          v60 = 2082;
          v61 = v16;
          v62 = 2048;
          v63 = v17;
          _os_log_impl(&dword_1A8FF5000, v15, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] Applying EV constraint", &v56, 0x26u);

          if (v3)
          {
          }
        }
      }
    }
  }

  v18 = SecTrustCopyResult(a2);
  if (v18)
  {
    v19 = v18;
    v20 = CFGetTypeID(v18);
    if (v20 == CFDictionaryGetTypeID() && (v21 = CFDictionaryGetValue(v19, *MEMORY[0x1E697B338])) != 0 && (v22 = v21, v3 = CFGetTypeID(v21), v3 == CFBooleanGetTypeID()))
    {
      Value = CFBooleanGetValue(v22);
      CFRelease(v19);
      if (Value)
      {
        v24 = objc_loadWeakRetained((v5 + 16));
        if (!v24 || (v25 = v24, v26 = objc_loadWeakRetained((v5 + 16)), v27 = v26[435], v26, v25, (v27 & 1) == 0))
        {
          v28 = objc_loadWeakRetained((v5 + 16));
          if (v28)
          {
            v29 = objc_loadWeakRetained((v5 + 16));
            v30 = (v29[435] & 1) == 0;
          }

          else
          {
            v30 = 1;
          }

          if (v30)
          {
            if (g_boringssl_log)
            {
              v38 = g_boringssl_log;
              if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
              {
                v53 = objc_loadWeakRetained((v5 + 16));
                if (v53)
                {
                  v3 = objc_loadWeakRetained((v5 + 16));
                  v54 = (v3 + 351);
                }

                else
                {
                  v54 = &unk_1A9098A9F;
                }

                v55 = objc_loadWeakRetained((v5 + 16));
                v56 = 136446978;
                v57 = "boringssl_context_process_trust_result";
                v58 = 1024;
                v59 = 1571;
                v60 = 2082;
                v61 = v54;
                v62 = 2048;
                v63 = v55;
                _os_log_impl(&dword_1A8FF5000, v38, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] EV constraint passed", &v56, 0x26u);

                if (v53)
                {
                }
              }

LABEL_43:

              goto LABEL_44;
            }
          }
        }

        goto LABEL_44;
      }
    }

    else
    {
      CFRelease(v19);
    }
  }

  v31 = objc_loadWeakRetained((v5 + 16));
  if (v31)
  {
    v32 = v31;
    v33 = objc_loadWeakRetained((v5 + 16));
    v34 = v33[435];

    if (v34)
    {
      a3 = 0;
      goto LABEL_44;
    }
  }

  v35 = objc_loadWeakRetained((v5 + 16));
  if (v35)
  {
    v36 = objc_loadWeakRetained((v5 + 16));
    v37 = (v36[435] & 1) == 0;
  }

  else
  {
    v37 = 1;
  }

  a3 = 0;
  if (v37 && g_boringssl_log)
  {
    v38 = g_boringssl_log;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      boringssl_context_process_trust_result_cold_1();
    }

    a3 = 0;
    goto LABEL_43;
  }

LABEL_44:
  v39 = objc_loadWeakRetained((v5 + 16));
  if (!v39 || (v40 = v39, v41 = objc_loadWeakRetained((v5 + 16)), v42 = v41[435], v41, v40, (v42 & 1) == 0))
  {
    v43 = objc_loadWeakRetained((v5 + 16));
    if (v43)
    {
      v44 = objc_loadWeakRetained((v5 + 16));
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
        v46 = g_boringssl_log;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          v47 = objc_loadWeakRetained((v5 + 16));
          if (v47)
          {
            v3 = objc_loadWeakRetained((v5 + 16));
            v48 = (v3 + 351);
          }

          else
          {
            v48 = &unk_1A9098A9F;
          }

          v49 = objc_loadWeakRetained((v5 + 16));
          v50 = *(v5 + 72);
          v51 = v49;
          redacted_identity = nw_protocol_boringssl_get_redacted_identity(v51, v50);
          v56 = 136447490;
          v57 = "boringssl_context_process_trust_result";
          v58 = 1024;
          v59 = 1577;
          v60 = 2082;
          v61 = v48;
          v62 = 2048;
          v63 = v49;
          v64 = 2082;
          v65 = redacted_identity;
          v66 = 1024;
          v67 = a3;
          _os_log_debug_impl(&dword_1A8FF5000, v46, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] Subject name: %{public}s, tls_handshake_trust: %{BOOL}d", &v56, 0x36u);

          if (v47)
          {
          }
        }
      }
    }
  }

LABEL_10:
  v13 = *MEMORY[0x1E69E9840];
  return a3;
}

void nw_protocol_boringssl_input_finished(uint64_t a1)
{
  if (a1)
  {
    v2 = nw_protocol_downcast();
    if (v2)
    {
      v3 = v2;
      if ((*(v2 + 435) & 1) == 0)
      {
        nw_protocol_boringssl_input_finished_cold_1();
      }

      if (nw_protocol_get_input_handler())
      {
        if ((*(v3 + 350) & 0x20) != 0)
        {
          if ((*(v3 + 435) & 1) == 0)
          {
            nw_protocol_boringssl_input_finished_cold_2();
          }
        }

        else
        {
          state = boringssl_session_get_state(*(v3 + 296));
          boringssl_helper_get_session_state_description(state);
          if ((*(v3 + 435) & 1) == 0)
          {
            nw_protocol_boringssl_input_finished_cold_3();
          }

          if (state < 2)
          {
            if ((nw_protocol_boringssl_initiate_pqtls_fallback(a1) & 1) == 0)
            {
              nw_protocol_boringssl_internal_error(v3, -9816);
              nw_protocol_get_input_handler();
              if (nw_protocol_disconnected_is_valid())
              {
                nw_protocol_get_input_handler();
                nw_protocol_disconnected();
              }
            }
          }

          else if ((*(v3 + 349) & 2) != 0)
          {
            *(v3 + 349) |= 1u;
          }

          else
          {
            *(v3 + 348) &= ~0x80u;
            nw_boringssl_read(a1);
            nw_protocol_get_input_handler();
            if (nw_protocol_input_finished_is_valid())
            {
              nw_protocol_get_input_handler();
              nw_protocol_input_finished();
            }
          }
        }
      }

      else if ((*(v3 + 435) & 1) == 0)
      {
        nw_protocol_boringssl_input_finished_cold_4();
      }
    }
  }
}

void nw_protocol_boringssl_input_finished_cold_1()
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

const char *boringssl_helper_get_session_state_description(int a1)
{
  if ((a1 - 1) > 4)
  {
    return "idle";
  }

  else
  {
    return off_1E785F988[a1 - 1];
  }
}

void nw_protocol_boringssl_input_finished_cold_2()
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

void bssl::tls_open_app_data()
{
  __assert_rtn("tls_open_app_data", "s3_pkt.cc", 334, "!ssl->s3->aead_read_ctx->is_null_cipher()");
}

{
  __assert_rtn("tls_open_app_data", "s3_pkt.cc", 333, "ssl_can_read(ssl)");
}

void nw_protocol_boringssl_error(uint64_t a1, uint64_t a2, int a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_30;
  }

  v5 = nw_protocol_downcast();
  if (!v5)
  {
    goto LABEL_30;
  }

  v6 = v5;
  if ((*(v5 + 435) & 1) == 0)
  {
    nw_protocol_boringssl_error_cold_1();
  }

  if ((*(v6 + 350) & 0x20) == 0)
  {
    *(v6 + 344) = a3;
    v23 = 0u;
    memset(v24, 0, sizeof(v24));
    v21 = 0u;
    v22 = 0u;
    *__strerrbuf = 0u;
    v20 = 0u;
    strerror_r(a3, __strerrbuf, 0x64uLL);
    if (boringssl_session_get_state(*(v6 + 296)) < 2)
    {
      if ((*(v6 + 348) & 4) != 0)
      {
        if ((*(v6 + 349) & 0xC0) != 0x80)
        {
          if ((*(v6 + 435) & 1) == 0)
          {
            nw_protocol_boringssl_error_cold_3();
          }

          if (a3 == 54 && nw_protocol_boringssl_initiate_pqtls_fallback(a1))
          {
            v7 = *(v6 + 435);
            if ((v7 & 1) == 0)
            {
              v8 = g_boringssl_log;
              if (g_boringssl_log)
              {
                if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_DEFAULT))
                {
                  v11 = 136446978;
                  v12 = "nw_protocol_boringssl_error";
                  v13 = 1024;
                  v14 = 2293;
                  v15 = 2082;
                  v16 = v6 + 351;
                  v17 = 2048;
                  v18 = v6;
                  _os_log_impl(&dword_1A8FF5000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] PQ-TLS fallback initiated; shortcircuiting the error propagation up the stack", &v11, 0x26u);
                }

                v7 = *(v6 + 435);
              }
            }

LABEL_28:
            if ((v7 & 1) == 0)
            {
              nw_protocol_boringssl_error_cold_6();
            }

            goto LABEL_30;
          }
        }
      }

      else if ((*(v6 + 435) & 1) == 0)
      {
        nw_protocol_boringssl_error_cold_4();
      }
    }

    else if ((*(v6 + 435) & 1) == 0)
    {
      nw_protocol_boringssl_error_cold_5();
    }

    nw_protocol_get_input_handler();
    is_valid = nw_protocol_error_is_valid();
    v7 = *(v6 + 435);
    if (is_valid)
    {
      if ((*(v6 + 435) & 1) == 0)
      {
        nw_protocol_boringssl_error_cold_7();
      }

      nw_protocol_get_input_handler();
      nw_protocol_error();
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if ((*(v6 + 435) & 1) == 0)
  {
    nw_protocol_boringssl_error_cold_2();
  }

LABEL_30:
  v10 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_error_cold_1()
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

void nw_protocol_boringssl_error_cold_4()
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

id OUTLINED_FUNCTION_18(uint64_t a1)
{
  v3 = (a1 + *v1);

  return objc_loadWeakRetained(v3);
}

BOOL OUTLINED_FUNCTION_18_0()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG);
}

BOOL OUTLINED_FUNCTION_23()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG);
}

void OUTLINED_FUNCTION_43(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

id OUTLINED_FUNCTION_15()
{
  v3 = (v0 + *v1);

  return objc_loadWeakRetained(v3);
}

void nw_protocol_boringssl_error_cold_6()
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

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_3_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0x12u);
}

NSObject *boringssl_private_key_sign(__SecKey *a1, int a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = boringssl_helper_SecKeyAlgorithm_from_signature_algorithm(a2);
  if (!CFEqual(v6, *MEMORY[0x1E697B1F8]))
  {
    v8 = dispatch_data_get_size(v5);
    v9 = malloc_type_malloc(v8, 0x100004077774924uLL);
    if (v9)
    {
      v10 = v9;
      boringssl_helper_dispatch_data_copyout(v5, v9, v8);
      if (v6 != *MEMORY[0x1E697B1B8])
      {
        v11 = CFDataCreate(*MEMORY[0x1E695E480], v10, v8);
        free(v10);
        error[0] = 0;
        Signature = SecKeyCreateSignature(a1, v6, v11, error);
        if (Signature)
        {
          v13 = Signature;
          Length = CFDataGetLength(Signature);
          BytePtr = CFDataGetBytePtr(v13);
          v16 = dispatch_data_create(BytePtr, Length, 0, 0);
          if (v11)
          {
            CFRelease(v11);
          }
        }

        else
        {
          if (g_boringssl_log)
          {
            v24 = g_boringssl_log;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              boringssl_private_key_sign_cold_2(error, v24);
            }
          }

          if (v11)
          {
            CFRelease(v11);
          }

          v16 = 0;
          v7 = 0;
          v13 = error[0];
          if (!error[0])
          {
            goto LABEL_24;
          }
        }

        CFRelease(v13);
        v7 = v16;
        goto LABEL_24;
      }

      v17 = EVP_MD_CTX_create();
      if (v17)
      {
        v18 = v17;
        v19 = EVP_md5_sha1();
        v31 = -1431655766;
        *&v20 = 0xAAAAAAAAAAAAAAAALL;
        *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *error = v20;
        v30 = v20;
        EVP_DigestInit_ex(v18, v19, 0);
        EVP_DigestUpdate(v18, v10, v8);
        s = 0;
        EVP_DigestFinal_ex(v18, error, &s);
        EVP_MD_CTX_destroy(v18);
        BlockSize = SecKeyGetBlockSize(a1);
        v22 = malloc_type_malloc(BlockSize, 0x100004077774924uLL);
        if (v22)
        {
          v23 = v22;
          size = BlockSize;
          if (SecKeyRawSign(a1, 1u, error, 0x24uLL, v22, &size))
          {
            v7 = 0;
          }

          else
          {
            v7 = dispatch_data_create(v23, size, 0, 0);
          }

          free(v23);
          free(v10);
          goto LABEL_24;
        }
      }

      free(v10);
    }

LABEL_23:
    v7 = 0;
    goto LABEL_24;
  }

  v7 = g_boringssl_log;
  if (g_boringssl_log)
  {
    if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      boringssl_private_key_sign_cold_1(a2, v7);
    }

    goto LABEL_23;
  }

LABEL_24:

  v25 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t boringssl_identity_private_key_sign(void *a1, uint64_t a2, unint64_t *a3, unint64_t a4, int a5, void *a6, void *a7, void *a8)
{
  v15 = a1;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (*(v15 + 4) && *(v15 + 6))
  {
    v19 = MEMORY[0x1AC57F4F0]();
    v20 = *(v15 + 6);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __boringssl_identity_private_key_sign_block_invoke;
    v27[3] = &unk_1E785FA08;
    v32 = a5;
    v30 = v19;
    v27[4] = v16;
    v28 = v17;
    v29 = v15;
    v31 = v18;
    v21 = v19;
    boringssl_context_async(v28, v20, v27);

    v22 = 2;
  }

  else
  {
    v23 = boringssl_private_key_sign(*(v15 + 1), a5, v16);
    v24 = v23;
    if (v23)
    {
      size = dispatch_data_get_size(v23);
      if (size < a4)
      {
        a4 = size;
      }

      boringssl_helper_dispatch_data_copyout(v24, a2, a4);
      v22 = 0;
      *a3 = a4;
    }

    else
    {
      v22 = 1;
    }
  }

  return v22;
}

uint64_t bssl::ssl_private_key_sign(uint64_t a1, char *a2, unint64_t *a3, unint64_t a4, unsigned int a5, char *a6, size_t a7)
{
  v34 = a5;
  v13 = *a1;
  v14 = *(a1 + 1520);
  v15 = *(a1 + 1592);
  v37 = 0;
  v38 = 0;
  if (v15)
  {
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v35.flags = v16;
    v36 = v16;
    *&v35.digest = v16;
    CBB_zero(&v35);
    if (!CBB_init(&v35, 0x40uLL) || !EVP_marshal_public_key(&v35, v14[1]) || !bssl::CBBFinishArray(&v35, &v37))
    {
      bssl::ssl_send_alert(v13, 2, 80);
      CBB_cleanup(&v35);
      goto LABEL_43;
    }

    CBB_cleanup(&v35);
    v17 = *(a1 + 1600);
    if ((v17 & 0x80000) == 0 && *(v15 + 72) == v34)
    {
      v18 = *(v15 + 88);
      if (a7 == v18 && !memcmp(a6, *(v15 + 80), v18) && v38 == *(v15 + 104) && !memcmp(v37, *(v15 + 96), v38))
      {
        v19 = *(v15 + 120);
        if (v19 - 1 < a4)
        {
          *a3 = v19;
          v20 = *(v15 + 120);
          if (v20)
          {
            memcpy(a2, *(v15 + 112), v20);
          }

          goto LABEL_32;
        }
      }
    }
  }

  else
  {
    v17 = *(a1 + 1600);
  }

  if ((v17 & 0x1000000) != 0)
  {
    __assert_rtn("ssl_private_key_sign", "ssl_privkey.cc", 280, "!hs->can_release_private_key");
  }

  v21 = v14[3];
  if (v21)
  {
    if ((v17 & 0x20000) != 0)
    {
      v22 = (*(v21 + 16))(v13, a2, a3, a4);
    }

    else
    {
      v22 = (*v21)(v13, a2, a3, a4, v34, a6, a7);
    }

    v25 = v22;
    if (v22 == 2)
    {
      ERR_put_error(16, 0, 287, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_privkey.cc", 291);
    }

    *(a1 + 1600) = *(a1 + 1600) & 0xFFFDFFFF | ((v25 == 1) << 17);
    if (v25)
    {
      v26 = 1;
    }

    else
    {
      v26 = v15 == 0;
    }

    if (v26)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v23 = v14[2];
    *a3 = a4;
    *&v24 = 0xAAAAAAAAAAAAAAAALL;
    *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v35.digest = v24;
    *&v35.flags = v24;
    EVP_MD_CTX_init(&v35);
    if (!bssl::setup_ctx(v13, &v35, v23, v34, 0) || !EVP_DigestSign(&v35, a2, a3, a6, a7))
    {
      EVP_MD_CTX_cleanup(&v35);
      goto LABEL_43;
    }

    EVP_MD_CTX_cleanup(&v35);
    if (!v15)
    {
      goto LABEL_32;
    }
  }

  if ((*(a1 + 1602) & 8) == 0)
  {
LABEL_32:
    v25 = 0;
    goto LABEL_44;
  }

  *(v15 + 72) = v34;
  OPENSSL_free(*(v15 + 96));
  v27 = v38;
  *(v15 + 96) = v37;
  *(v15 + 104) = v27;
  v37 = 0;
  v38 = 0;
  if (!bssl::Array<unsigned char>::InitUninitialized(v15 + 80, a7))
  {
    goto LABEL_43;
  }

  if (a7)
  {
    v28 = *(v15 + 80);
    do
    {
      v29 = *a6++;
      *v28++ = v29;
      --a7;
    }

    while (a7);
  }

  v30 = *a3;
  if (!bssl::Array<unsigned char>::InitUninitialized(v15 + 112, *a3))
  {
LABEL_43:
    v25 = 2;
    goto LABEL_44;
  }

  if (!v30)
  {
    goto LABEL_32;
  }

  v31 = *(v15 + 112);
  v25 = 0;
  do
  {
    v32 = *a2++;
    *v31++ = v32;
    --v30;
  }

  while (v30);
LABEL_44:
  OPENSSL_free(v37);
  return v25;
}

void sub_1A903B780(_Unwind_Exception *a1, uint64_t a2, EVP_MD_CTX *ctx, uint64_t a4, uint64_t a5, uint64_t ctxa, uint64_t ctx_8, uint64_t ctx_16, uint64_t ctx_24, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  bssl::Array<unsigned char>::~Array(va);
  _Unwind_Resume(a1);
}

uint64_t bssl::tls13_add_certificate_verify_in_buffer(bssl *this, bssl::SSL_HANDSHAKE *a2, void *a3, unsigned __int8 **a4, unint64_t *a5, const unsigned __int8 *a6)
{
  if (!*(this + 805))
  {
    bssl::tls13_add_certificate_verify_in_buffer();
  }

  v10 = a2;
  v12 = *this;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[1] = v13;
  v26[2] = v13;
  v26[0] = v13;
  CBB_zero(v26);
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25[1] = v14;
  v25[2] = v14;
  v25[0] = v14;
  if ((*(*v12 + 88))(v12, v26, v25, 15) && CBB_add_u16(v25, *(this + 805)))
  {
    *&v15 = 0xAAAAAAAAAAAAAAAALL;
    *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v24[1] = v15;
    v24[2] = v15;
    v24[0] = v15;
    v16 = EVP_PKEY_size(*(*(this + 190) + 8));
    v22 = 0xAAAAAAAAAAAAAAAALL;
    v23 = 0xAAAAAAAAAAAAAAAALL;
    if (CBB_add_u16_length_prefixed(v25, v24) && CBB_reserve(v24, &v23, v16))
    {
      v20 = 0;
      v21 = 0;
      if (v10)
      {
        v17 = 3;
      }

      else
      {
        v17 = (*(v12 + 180) & 1) == 0;
      }

      if (bssl::tls13_get_cert_verify_signature_input(this, &v20, v17, a5, a6))
      {
        v18 = bssl::ssl_private_key_sign(this, v23, &v22, v16, *(this + 805), v20, v21);
        if (!v18)
        {
          if (a3)
          {
            if (!CBB_did_write(v24, v22) || !CBB_finish(v26, a3, a4))
            {
LABEL_23:
              v18 = 2;
              goto LABEL_18;
            }
          }

          else if (!CBB_did_write(v24, v22) || (bssl::ssl_add_message_cbb(v12, v26) & 1) == 0)
          {
            goto LABEL_23;
          }

          v18 = 0;
        }
      }

      else
      {
        v18 = 2;
        bssl::ssl_send_alert(v12, 2, 80);
      }

LABEL_18:
      OPENSSL_free(v20);
      goto LABEL_19;
    }

    v18 = 2;
    bssl::ssl_send_alert(v12, 2, 80);
  }

  else
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 795);
    v18 = 2;
  }

LABEL_19:
  CBB_cleanup(v26);
  return v18;
}

void sub_1A903B9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  bssl::Array<unsigned char>::~Array(&a9);
  CBB_cleanup(&a25);
  _Unwind_Resume(a1);
}

uint64_t CBB_did_write(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 16);
  if (*(a1 + 8))
  {
    v3 = *v3;
  }

  result = 0;
  v5 = v3[1];
  v6 = __CFADD__(v5, a2);
  v7 = v5 + a2;
  v8 = v6;
  if (!*a1 && (v8 & 1) == 0)
  {
    if (v7 <= v3[2])
    {
      v3[1] = v7;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t bssl::tls13_server_handshake(bssl *this, bssl::SSL_HANDSHAKE *a2, ssl_session_st *a3)
{
  v185 = (this + 1536);
  v223 = *MEMORY[0x1E69E9840];
  v186 = (this + 1680);
  v187 = this + 326;
  v180 = this + 648;
  v181 = (this + 1664);
  v182 = (this + 616);
  v183 = (this + 1520);
  v184 = this + 1613;
  while (2)
  {
    v4 = *(this + 6);
    v5 = 1;
    switch(v4)
    {
      case 0:
        v6 = *this;
        *&v211 = 0xAAAAAAAAAAAAAAAALL;
        *&v7 = 0xAAAAAAAAAAAAAAAALL;
        *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v209 = v7;
        v210 = v7;
        v194 = v7;
        v195 = v7;
        v192 = v7;
        v193 = v7;
        *&v190[16] = v7;
        v191 = v7;
        *v190 = v7;
        if (!bssl::SSL_HANDSHAKE::GetClientHello(this, v209, v190))
        {
          goto LABEL_285;
        }

        if (*(v6 + 21))
        {
          v8 = *(&v192 + 1) == 0;
        }

        else
        {
          v8 = 1;
        }

        if (!v8)
        {
          ERR_put_error(16, 0, 306, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 305);
          bssl::ssl_send_alert(v6, 2, 47);
          goto LABEL_285;
        }

        if (!SSL_is_dtls(v6))
        {
          v9 = *(&v192 + 1);
          if (*(&v192 + 1) > 0x20uLL)
          {
            goto LABEL_465;
          }

          v10 = v192;
          *(this + 1645) = 0;
          if (v9)
          {
            v11 = v9;
            v12 = v184;
            do
            {
              v13 = *v10++;
              *v12++ = v13;
              --v11;
            }

            while (v11);
          }

          *(this + 1645) = v9;
        }

        v204[0] = 0;
        v204[1] = 0;
        if ((bssl::ssl_get_credential_list(this, v204) & 1) == 0)
        {
          goto LABEL_268;
        }

        if (!v204[1])
        {
          ERR_put_error(16, 0, 174, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 323);
          v96 = 80;
          goto LABEL_267;
        }

        v14 = v204[0];
        v15 = v204[0] + 8 * v204[1];
        while (2)
        {
          v16 = *v14;
          ERR_clear_error();
          LOWORD(v201[0]) = -21846;
          v19 = *(v16 + 4);
          switch(v19)
          {
            case 3:
              goto LABEL_37;
            case 2:
              if ((*(this + 1602) & 0x20) != 0 && *(this + 746) == 2)
              {
                break;
              }

              v23 = 255;
LABEL_35:
              ERR_put_error(16, 0, 253, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", v23);
LABEL_36:
              if (*(v16 + 4) == 3)
              {
LABEL_37:
                v25 = *(this + 207);
                if (v25 && *(v25 + 8) == 32150)
                {
                  SSL_CREDENTIAL_up_ref(v16);
                  std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100](v183, v16);
                  v98 = SPAKE2PLUS_CTX_new_verifier(*(v16 + 88), *(v16 + 96), *(v16 + 104), *(v16 + 112), *(v16 + 120), *(v16 + 128), *(v16 + 136), *(v16 + 144), *(v16 + 168), *(v16 + 176));
                  std::unique_ptr<spake2plus_ctx_st,bssl::internal::Deleter>::reset[abi:ne200100](v186, v98);
                  goto LABEL_263;
                }
              }

              if (++v14 == v15)
              {
                goto LABEL_263;
              }

              continue;
            case 1:
              v20 = *(this + 84);
              if (v20)
              {
                v21 = 2 * v20;
                v22 = *(this + 83);
                while (*v22 != *(v16 + 64))
                {
                  ++v22;
                  v21 -= 2;
                  if (!v21)
                  {
                    goto LABEL_34;
                  }
                }
              }

              else
              {
                v22 = *(this + 83);
              }

              if (v22 == (*(this + 83) + 2 * v20))
              {
LABEL_34:
                v23 = 246;
                goto LABEL_35;
              }

              break;
          }

          break;
        }

        if (!bssl::tls1_choose_signature_algorithm(this, v16, v201, v18) || !bssl::ssl_credential_matches_requested_issuers(this, v16, v24))
        {
          goto LABEL_36;
        }

        if (v16)
        {
          SSL_CREDENTIAL_up_ref(v16);
        }

        std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100](v183, v16);
        *(this + 805) = v201[0];
LABEL_263:
        if (!*v183)
        {
          v96 = 40;
LABEL_267:
          bssl::ssl_send_alert(v6, 2, v96);
LABEL_268:
          v5 = 0;
          goto LABEL_269;
        }

        v99 = v193;
        v100 = bssl::ssl_protocol_version(v6, v17);
        v101 = *(v6 + 1);
        v102 = *(v101 + 309);
        if ((v102 & 0x800) != 0)
        {
          is_opaque = (v102 >> 12) & 1;
        }

        else
        {
          is_opaque = RSA_is_opaque();
          v101 = *(v6 + 1);
        }

        v104 = bssl::ssl_choose_tls13_cipher(v99, *(&v99 + 1), is_opaque != 0, v100, *(v101 + 304));
        *(this + 196) = v104;
        if (!v104)
        {
          ERR_put_error(16, 0, 184, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 356);
          bssl::ssl_send_alert(v6, 2, 40);
          goto LABEL_268;
        }

        LOBYTE(v201[0]) = 50;
        if ((bssl::ssl_negotiate_alpn(this, v201, v190) & 1) == 0)
        {
          bssl::ssl_send_alert(v6, 2, LOBYTE(v201[0]));
          goto LABEL_268;
        }

        v106 = bssl::ssl_protocol_version(v6, v105);
        if (!bssl::SSLTranscript::InitHash((this + 424), v106, *(this + 196)))
        {
          goto LABEL_268;
        }

        v5 = 1;
        *(this + 6) = 1;
LABEL_269:
        OPENSSL_free(v204[0]);
LABEL_286:
        if (*(this + 6) != v4)
        {
          bssl::ssl_do_info_callback(*this, 0x2001);
        }

        if (v5 == 1)
        {
          continue;
        }

LABEL_461:
        v178 = *MEMORY[0x1E69E9840];
        return v5;
      case 1:
        v44 = *this;
        *&v222 = 0xAAAAAAAAAAAAAAAALL;
        *&v45 = 0xAAAAAAAAAAAAAAAALL;
        *(&v45 + 1) = 0xAAAAAAAAAAAAAAAALL;
        d = v45;
        v221 = v45;
        v194 = v45;
        v195 = v45;
        v192 = v45;
        v193 = v45;
        *&v190[16] = v45;
        v191 = v45;
        *v190 = v45;
        if (!bssl::SSL_HANDSHAKE::GetClientHello(this, &d, v190))
        {
          goto LABEL_285;
        }

        v189 = 50;
        v46 = *(v44 + 48);
        v47 = *this;
        v207 = 0;
        v209[0] = 0xAAAAAAAAAAAAAAAALL;
        v209[1] = 0xAAAAAAAAAAAAAAAALL;
        extension = bssl::ssl_client_hello_get_extension(v190, v209, 41);
        if ((extension & 1) == 0)
        {
          goto LABEL_304;
        }

        v204[0] = 0xAAAAAAAAAAAAAAAALL;
        v204[1] = 0xAAAAAAAAAAAAAAAALL;
        if ((bssl::ssl_client_hello_get_extension(v190, v204, 45) & 1) == 0)
        {
          v189 = 109;
          ERR_put_error(16, 0, 164, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 398);
          goto LABEL_321;
        }

        memset(v201, 170, sizeof(v201));
        *&v217 = 0xAAAAAAAAAAAAAAAALL;
        *(&v217 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v199[0] = -1431655766;
        if ((bssl::ssl_ext_pre_shared_key_parse_clienthello(this, v201, &v217, v199, &v189, v190, v209) & 1) == 0)
        {
          goto LABEL_321;
        }

        if ((*(this + 1600) & 0x10) == 0 || *v183 && *(*v183 + 1) == 3)
        {
          goto LABEL_304;
        }

        LOBYTE(v188) = -86;
        ses[0] = 0;
        v49 = bssl::ssl_process_ticket(this, ses, &v188, *v201, *&v201[2], 0, 0);
        v50 = v49;
        if (v49)
        {
          if (v49 == 3)
          {
            v189 = 80;
          }
        }

        else
        {
          if (!bssl::ssl_session_is_resumable(this, ses[0], a3))
          {
            goto LABEL_294;
          }

          v107 = ses[0];
          if ((ses[0][1].peer & 8) == 0)
          {
            ses[0] = 0;
            v50 = 2;
LABEL_296:
            SSL_SESSION_free(v107);
LABEL_297:
            if (v50 > 1)
            {
              if (v50 != 2)
              {
                if (v50 == 3)
                {
                  goto LABEL_321;
                }

                goto LABEL_306;
              }

LABEL_304:
              if (v207)
              {
                __assert_rtn("do_select_session", "tls13_server.cc", 504, "!session");
              }

              if (bssl::ssl_get_new_session(this, a2))
              {
LABEL_306:
                if (bssl::ssl_negotiate_alps(this, &v189, v190))
                {
                  v111 = *(this + 192);
                  *(v111 + 200) = *(this + 196);
                  v112 = *(this + 210);
                  if (v112)
                  {
                    v113 = 0;
LABEL_309:
                    v213 = -86;
                    *&v114 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v114 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    v211 = v114;
                    v212 = v114;
                    *v209 = v114;
                    v210 = v114;
                    ses[0] = 65;
                    v217 = v114;
                    v218 = v114;
                    *v199 = 32;
                    v214 = v114;
                    v215 = v114;
                    v188 = 32;
                    if (!SPAKE2PLUS_process_prover_share(v112, *(*(this + 207) + 48), *(*(this + 207) + 56), v209, ses, 0x41uLL, &v217, v199, 0x20uLL, &v214, &v188, 0x20uLL))
                    {
                      goto LABEL_338;
                    }

                    *(*(v44 + 48) + 220) = 32150;
                    *&v115 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v115 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    v205 = v115;
                    v206 = v115;
                    *v204 = v115;
                    CBB_zero(v204);
                    if (!CBB_init(v204, 0x41uLL) || (*&v116 = 0xAAAAAAAAAAAAAAAALL, *(&v116 + 1) = 0xAAAAAAAAAAAAAAAALL, v202 = v116, v203 = v116, *v201 = v116, !CBB_add_u16(v204, 0x7D96u)) || !CBB_add_u16_length_prefixed(v204, v201) || !CBB_add_bytes(v201, v209, ses[0]) || !CBB_add_bytes(v201, &v217, *v199) || !CBB_flush(v204) || !bssl::CBBFinishArray(v204, v181) || !CBB_init(v204, 0x20uLL) || !CBB_add_bytes(v204, &v214, v188))
                    {
                      CBB_cleanup(v204);
                      goto LABEL_338;
                    }

                    v117 = bssl::CBBFinishArray(v204, this + 1688);
                    CBB_cleanup(v204);
                    if (!v117)
                    {
                      goto LABEL_338;
                    }

LABEL_325:
                    if ((*(v44 + 180) & 4) == 0)
                    {
                      v119 = *(v44 + 48);
                      v120 = 1;
LABEL_327:
                      *(v119 + 256) = v120;
                      goto LABEL_380;
                    }

                    if (extension)
                    {
                      v124 = v207;
                      if (v207)
                      {
                        if (*&v207[1].session_id[20])
                        {
                          v125 = *(this + 400);
                          if ((v125 & 0x800) == 0)
                          {
                            v119 = *(v44 + 48);
                            v120 = 4;
                            goto LABEL_327;
                          }

                          v119 = *(v44 + 48);
                          if ((v125 & 0x2000000) != 0)
                          {
                            v127 = 10;
                          }

                          else
                          {
                            v139 = *(v119 + 504);
                            if (v139 == *&v207[1].sid_ctx[4] && !memcmp(*(v119 + 496), *&v207[1].sid_ctx_length, v139))
                            {
                              v166 = *v185;
                              if (((LOBYTE(v124[1].peer) ^ LOBYTE((*v185)[1].peer)) & 0x40) == 0 && (v167 = *&v166[1].sid_ctx[20], v167 == *&v124[1].sid_ctx[20]) && !memcmp(*&v166[1].sid_ctx[12], *&v124[1].sid_ctx[12], v167))
                              {
                                if ((*(v119 + 252) - 61) > 0xFFFFFF86)
                                {
                                  if (bssl::quic_ticket_compatible(v124, *(this + 1), v168))
                                  {
                                    if (v113)
                                    {
                                      v119 = *(v44 + 48);
                                      *(v119 + 256) = 8;
                                      v113 = 1;
                                    }

                                    else
                                    {
                                      if (*(this + 196) != v207->cipher)
                                      {
                                        __assert_rtn("do_select_session", "tls13_server.cc", 647, "hs->new_cipher == session->cipher");
                                      }

                                      v113 = 0;
                                      v177 = *(v44 + 48);
                                      *(v177 + 256) = 2;
                                      *(v177 + 222) |= 0x200u;
                                      v119 = *(v44 + 48);
                                    }

LABEL_380:
                                    v140 = *v185;
                                    v142 = *(v119 + 496);
                                    v141 = *(v119 + 504);
                                    if (bssl::Array<unsigned char>::InitUninitialized(&(*v185)[1].sid_ctx_length, v141))
                                    {
                                      if (v141)
                                      {
                                        v144 = *&v140[1].sid_ctx_length;
                                        do
                                        {
                                          v145 = *v142++;
                                          *v144++ = v145;
                                          --v141;
                                        }

                                        while (v141);
                                      }

                                      if ((*(*(v44 + 48) + 222) & 0x200) != 0)
                                      {
                                        v146 = *v185;
                                        if (((*v185)[1].peer & 0x40) != 0)
                                        {
                                          v147 = *&v207[1].sid_ctx[28];
                                          sess_cert = v207[1].sess_cert;
                                          if (!bssl::Array<unsigned char>::InitUninitialized(&v146[1].sid_ctx[28], sess_cert))
                                          {
                                            goto LABEL_407;
                                          }

                                          if (sess_cert)
                                          {
                                            v149 = *&v146[1].sid_ctx[28];
                                            do
                                            {
                                              v150 = *v147++;
                                              *v149++ = v150;
                                              sess_cert = (sess_cert - 1);
                                            }

                                            while (sess_cert);
                                          }
                                        }
                                      }

                                      if ((*(v44 + 180) & 4) == 0 || !*(v44 + 168))
                                      {
LABEL_396:
                                        v157 = *(*(v44 + 120) + 512);
                                        if (!v157 || v157(v190))
                                        {
                                          v158 = bssl::ssl_protocol_version(v44, v143);
                                          handshake_digest = bssl::ssl_get_handshake_digest(v158, *(this + 196), v159);
                                          EVP_MD_size(handshake_digest);
                                          if ((*(*(v44 + 48) + 222) & 0x20) != 0)
                                          {
                                            v161 = &(*v185)->key_arg[2];
                                            v162 = (*v185)->master_key[38];
                                          }

                                          else
                                          {
                                            v161 = &bssl::kZeroes;
                                          }

                                          if (!bssl::tls13_init_key_schedule(this, v161) || (bssl::ssl_hash_message(this, &d) & 1) == 0)
                                          {
                                            goto LABEL_338;
                                          }

                                          v163 = *(v44 + 48);
                                          if ((*(v163 + 222) & 0x200) != 0)
                                          {
                                            if ((bssl::tls13_derive_early_secret(this, a2) & 1) == 0)
                                            {
                                              goto LABEL_338;
                                            }
                                          }

                                          else if ((*(this + 1601) & 8) != 0)
                                          {
                                            *(v163 + 222) |= 1u;
                                          }

                                          if ((v113 & 1) == 0)
                                          {
                                            if (*v186)
                                            {
                                              v164 = *(this + 211);
                                              v165 = *(this + 212);
                                              if (!bssl::tls13_advance_key_schedule(this))
                                              {
                                                goto LABEL_338;
                                              }
                                            }

                                            else if ((bssl::resolve_ecdhe_secret(this, v190) & 1) == 0)
                                            {
                                              goto LABEL_338;
                                            }

                                            (*(*v44 + 32))(v44);
                                            OPENSSL_free(*v182);
                                            *v182 = 0;
                                            v182[1] = 0;
                                            v5 = 1;
                                            *(this + 6) = 4;
LABEL_339:
                                            v123 = v207;
                                            v207 = 0;
                                            if (v123)
                                            {
                                              SSL_SESSION_free(v123);
                                            }

                                            goto LABEL_286;
                                          }

                                          (*(*v44 + 32))(v44);
                                          if (bssl::SSLTranscript::UpdateForHelloRetryRequest((this + 424)))
                                          {
                                            *(this + 6) = 2;
                                            v5 = 1;
                                            goto LABEL_339;
                                          }

LABEL_338:
                                          v5 = 0;
                                          goto LABEL_339;
                                        }

                                        ERR_put_error(16, 0, 133, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 684);
                                        goto LABEL_407;
                                      }

                                      v151 = *(this + 192);
                                      v152 = *(this + 1);
                                      v153 = *(v152 + 248);
                                      v154 = *(v152 + 256);
                                      if (bssl::Array<unsigned char>::InitUninitialized(v151 + 448, v154))
                                      {
                                        if (v154)
                                        {
                                          v155 = *(v151 + 448);
                                          do
                                          {
                                            v156 = *v153++;
                                            *v155++ = v156;
                                            --v154;
                                          }

                                          while (v154);
                                        }

                                        goto LABEL_396;
                                      }
                                    }

LABEL_407:
                                    v118 = 80;
                                    goto LABEL_337;
                                  }

                                  v119 = *(v44 + 48);
                                  v127 = 13;
                                }

                                else
                                {
                                  v127 = 12;
                                }
                              }

                              else
                              {
                                v127 = 14;
                              }
                            }

                            else
                            {
                              v127 = 9;
                            }
                          }
                        }

                        else
                        {
                          v119 = *(v44 + 48);
                          v127 = 7;
                        }
                      }

                      else
                      {
                        v119 = *(v44 + 48);
                        v127 = 6;
                      }
                    }

                    else
                    {
                      v119 = *(v44 + 48);
                      v127 = 5;
                    }

                    *(v119 + 256) = v127;
                    goto LABEL_380;
                  }

                  if (bssl::tls1_get_shared_group(this, (v111 + 6), v110))
                  {
                    LOBYTE(v209[0]) = -86;
                    if ((bssl::ssl_ext_key_share_parse_clienthello(this, v209, 0, &v189, v190) & 1) == 0)
                    {
                      bssl::ssl_send_alert(v44, 2, v189);
                      goto LABEL_338;
                    }

                    v113 = LOBYTE(v209[0]) ^ 1;
                    v112 = *v186;
                    if (!*v186)
                    {
                      goto LABEL_325;
                    }

                    goto LABEL_309;
                  }

                  ERR_put_error(16, 0, 266, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 553);
                  v118 = 40;
LABEL_337:
                  bssl::ssl_send_alert(v44, 2, v118);
                  goto LABEL_338;
                }

LABEL_321:
                v118 = v189;
                goto LABEL_337;
              }
            }

            else
            {
              if (v50)
              {
                if (v50 == 1)
                {
                  *(this + 6) = 1;
                  v5 = 11;
                  goto LABEL_339;
                }

                goto LABEL_306;
              }

              bssl::SSL_SESSION_dup(v207, 0, v209);
              v121 = v209[0];
              v209[0] = 0;
              std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](v185, v121);
              v122 = v209[0];
              v209[0] = 0;
              if (v122)
              {
                SSL_SESSION_free(v122);
              }

              if (*v185)
              {
                *(*(v44 + 48) + 222) |= 0x20u;
                *(this + 400) |= 0x1000000u;
                bssl::ssl_session_renew_timeout(v44, *(this + 192), *(*(v44 + 128) + 308));
                goto LABEL_306;
              }
            }

            v118 = 80;
            goto LABEL_337;
          }

          v199[0] = (v199[0] - *&ses[0][1].session_id[16]) / 0x3E8u;
          *&v214 = 0xAAAAAAAAAAAAAAAALL;
          *(&v214 + 1) = 0xAAAAAAAAAAAAAAAALL;
          bssl::ssl_get_current_time(v47, &v214);
          a2 = ses[0];
          v108 = *&ses[0]->compress_meth;
          v109 = v214 - v108;
          if (v214 < v108)
          {
            __assert_rtn("select_session", "tls13_server.cc", 451, "now.tv_sec >= session->time");
          }

          if (!(v109 >> 31))
          {
            *(v46 + 252) = v199[0] - v109;
            if (bssl::tls13_verify_psk_binder(this, a2, &d, &v217))
            {
              v126 = ses[0];
              ses[0] = 0;
              std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](&v207, v126);
              v50 = 0;
            }

            else
            {
              v189 = 51;
              v50 = 3;
            }
          }

          else
          {
LABEL_294:
            v50 = 2;
          }
        }

        v107 = ses[0];
        ses[0] = 0;
        if (!v107)
        {
          goto LABEL_297;
        }

        goto LABEL_296;
      case 2:
        if ((*(this + 1602) & 8) != 0)
        {
          goto LABEL_115;
        }

        if (*v186)
        {
          bssl::tls13_server_handshake();
        }

        v37 = *this;
        *&v38 = 0xAAAAAAAAAAAAAAAALL;
        *(&v38 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v190[16] = v38;
        v191 = v38;
        *v190 = v38;
        CBB_zero(v190);
        *&v39 = 0xAAAAAAAAAAAAAAAALL;
        *(&v39 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v210 = v39;
        v211 = v39;
        *v209 = v39;
        v205 = v39;
        v206 = v39;
        v203 = v39;
        *v204 = v39;
        *v201 = v39;
        v202 = v39;
        if (!(*(*v37 + 88))(v37, v190, v209, 2) || !CBB_add_u16(v209, 0x303u) || !CBB_add_bytes(v209, &bssl::kHelloRetryRequest, 0x20uLL) || !CBB_add_u8_length_prefixed(v209, v204) || !CBB_add_bytes(v204, v184, *(this + 1645)) || (protocol_id = SSL_CIPHER_get_protocol_id(*(this + 196)), !CBB_add_u16(v209, protocol_id)) || !CBB_add_u8(v209, 0) || !CBB_add_u16_length_prefixed(v209, v201) || !CBB_add_u16(v201, 0x2Bu) || !CBB_add_u16(v201, 2u) || !CBB_add_u16(v201, *(v37[6] + 208)) || !CBB_add_u16(v201, 0x33u) || !CBB_add_u16(v201, 2u) || !CBB_add_u16(v201, HIWORD((*v185)->key_arg_length)) || (*(this + 400) & 1) != 0 && (!CBB_add_u16(v201, 0xFE0Du) || !CBB_add_u16(v201, 8u) || !CBB_add_zeros(v201, 8uLL)))
        {
          v5 = 0;
LABEL_199:
          CBB_cleanup(v190);
          goto LABEL_286;
        }

        d = 0uLL;
        if (((*(*v37 + 96))(v37, v190, &d) & 1) == 0)
        {
          goto LABEL_416;
        }

        if ((*(this + 400) & 1) == 0)
        {
          goto LABEL_90;
        }

        if (*(&d + 1) <= 7uLL)
        {
          goto LABEL_465;
        }

        if (!bssl::ssl_ech_accept_confirmation(this, DWORD2(d) - 8 + d, 8, v37[6] + 48, 32, (this + 424), 1, v41, d, *(&d + 1), *(&d + 1) - 8))
        {
          goto LABEL_416;
        }

LABEL_90:
        v42 = *(*v37 + 104);
        v217 = 0uLL;
        OPENSSL_free(0);
        v217 = d;
        d = 0uLL;
        if (v42(v37, &v217))
        {
          v43 = (*(*v37 + 112))(v37);
          bssl::Array<unsigned char>::~Array(&v217);
          if (v43)
          {
            *(v37[6] + 222) |= 0x1000u;
            *(this + 6) = 3;
            v5 = 4;
LABEL_417:
            bssl::Array<unsigned char>::~Array(&d);
            goto LABEL_199;
          }
        }

        else
        {
          bssl::Array<unsigned char>::~Array(&v217);
        }

LABEL_416:
        v5 = 0;
        goto LABEL_417;
      case 3:
        v27 = *this;
        *&v211 = 0xAAAAAAAAAAAAAAAALL;
        *&v64 = 0xAAAAAAAAAAAAAAAALL;
        *(&v64 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v209 = v64;
        v210 = v64;
        if (!(*(*v27 + 24))(v27, v209))
        {
          goto LABEL_245;
        }

        if (!bssl::ssl_check_message_type(v27, v209, 1))
        {
          goto LABEL_285;
        }

        *&v65 = 0xAAAAAAAAAAAAAAAALL;
        *(&v65 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v194 = v65;
        v195 = v65;
        v192 = v65;
        v193 = v65;
        *&v190[16] = v65;
        v191 = v65;
        *v190 = v65;
        if ((bssl::ssl_client_hello_init(v27, v190, v209[1], v210) & 1) == 0)
        {
          ERR_put_error(16, 0, 131, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 803);
          bssl::ssl_send_alert(v27, 2, 50);
          goto LABEL_285;
        }

        v66 = *(v27 + 6);
        if (*(v66 + 216) != 1)
        {
          goto LABEL_152;
        }

        v204[0] = 0xAAAAAAAAAAAAAAAALL;
        v204[1] = 0xAAAAAAAAAAAAAAAALL;
        if ((bssl::ssl_client_hello_get_extension(v190, v204, 65037) & 1) == 0)
        {
          ERR_put_error(16, 0, 164, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 814);
          bssl::ssl_send_alert(v27, 2, 109);
          goto LABEL_285;
        }

        LOWORD(v217) = -21846;
        LOWORD(v214) = -21846;
        LOBYTE(ses[0]) = -86;
        LOBYTE(v207) = -86;
        memset(v201, 170, sizeof(v201));
        *&d = 0xAAAAAAAAAAAAAAAALL;
        *(&d + 1) = 0xAAAAAAAAAAAAAAAALL;
        u8 = CBS_get_u8(v204, ses);
        v68 = 50;
        v69 = 829;
        if (!u8 || LOBYTE(ses[0]))
        {
          goto LABEL_259;
        }

        if (CBS_get_u16(v204, &v217) && CBS_get_u16(v204, &v214) && CBS_get_u8(v204, &v207) && CBS_get_u16_length_prefixed(v204, v201))
        {
          u16_length_prefixed = CBS_get_u16_length_prefixed(v204, &d);
          v69 = 829;
          if (u16_length_prefixed && !v204[1])
          {
            v71 = v217;
            v72 = EVP_HPKE_CTX_kdf((this + 752));
            if (v71 == EVP_HPKE_KDF_id(v72) && (v73 = v214, v74 = EVP_HPKE_CTX_aead(this + 752), v73 == EVP_HPKE_KDF_id(v74)))
            {
              v68 = 47;
              v69 = 838;
              if (v207 == *(this + 1612) && !*&v201[2])
              {
                LOBYTE(v199[0]) = 50;
                LOBYTE(v188) = -86;
                if (bssl::ssl_client_hello_decrypt(this, v199, &v188, v182, v190, d, *(&d + 1)))
                {
                  if (bssl::SSL_HANDSHAKE::GetClientHello(this, v209, v190))
                  {
                    v66 = *(v27 + 6);
LABEL_152:
                    if ((*(v66 + 222) & 0x20) != 0)
                    {
                      v204[0] = 0xAAAAAAAAAAAAAAAALL;
                      v204[1] = 0xAAAAAAAAAAAAAAAALL;
                      if ((bssl::ssl_client_hello_get_extension(v190, v204, 41) & 1) == 0)
                      {
                        ERR_put_error(16, 0, 303, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 873);
                        bssl::ssl_send_alert(v27, 2, 47);
                        goto LABEL_285;
                      }

                      memset(v201, 170, sizeof(v201));
                      *&d = 0xAAAAAAAAAAAAAAAALL;
                      *(&d + 1) = 0xAAAAAAAAAAAAAAAALL;
                      LODWORD(v217) = -1431655766;
                      LOBYTE(v214) = 50;
                      if ((bssl::ssl_ext_pre_shared_key_parse_clienthello(this, v201, &d, &v217, &v214, v190, v204) & 1) == 0)
                      {
                        v97 = v214;
LABEL_284:
                        bssl::ssl_send_alert(v27, 2, v97);
                        goto LABEL_285;
                      }

                      if (!bssl::tls13_verify_psk_binder(this, *(this + 192), v209, &d))
                      {
                        v97 = 51;
                        goto LABEL_284;
                      }
                    }

                    if (bssl::resolve_ecdhe_secret(this, v190) && bssl::ssl_hash_message(this, v209))
                    {
                      if ((*(*v27 + 40))(v27))
                      {
                        bssl::ssl_send_alert(v27, 2, 10);
                        ERR_put_error(16, 0, 255, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 908);
                        goto LABEL_285;
                      }

                      (*(*v27 + 32))(v27);
                      OPENSSL_free(*(this + 77));
                      *v182 = 0;
                      v182[1] = 0;
                      v5 = 1;
                      *(this + 6) = 4;
                      goto LABEL_286;
                    }
                  }

                  else
                  {
                    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 857);
                  }
                }

                else
                {
                  ERR_put_error(16, 0, 138, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 850);
                  bssl::ssl_send_alert(v27, 2, LOBYTE(v199[0]));
                }

LABEL_285:
                v5 = 0;
                goto LABEL_286;
              }
            }

            else
            {
              v68 = 47;
              v69 = 838;
            }
          }
        }

        else
        {
          v69 = 829;
        }

LABEL_259:
        ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", v69);
        bssl::ssl_send_alert(v27, 2, v68);
        goto LABEL_285;
      case 4:
        v59 = *this;
        v60 = *(*this + 48);
        v61 = *(this + 199);
        if (v61)
        {
          if ((*(this + 1602) & 8) != 0 || *(v61 + 24) != 32)
          {
            RAND_bytes((v60 + 16), 32);
            if ((*(this + 1602) & 8) != 0)
            {
              if (!bssl::Array<unsigned char>::InitUninitialized(v61 + 16, 0x20uLL))
              {
                goto LABEL_285;
              }

              v87 = 0;
              v88 = *(v61 + 16);
              do
              {
                *(v88 + v87) = *(v60 + 16 + v87);
                ++v87;
              }

              while (v87 != 32);
            }
          }

          else
          {
            v62 = *(v61 + 16);
            v63 = v62[1];
            *(v60 + 16) = *v62;
            *(v60 + 32) = v63;
          }
        }

        else
        {
          RAND_bytes((v60 + 16), 32);
        }

        if (SSL_is_dtls(v59))
        {
          v89 = -259;
        }

        else
        {
          v89 = 771;
        }

        v207 = 0;
        v208 = 0;
        *&v90 = 0xAAAAAAAAAAAAAAAALL;
        *(&v90 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v190[16] = v90;
        v191 = v90;
        *v190 = v90;
        CBB_zero(v190);
        *&v91 = 0xAAAAAAAAAAAAAAAALL;
        *(&v91 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v210 = v91;
        v211 = v91;
        *v209 = v91;
        v205 = v91;
        v206 = v91;
        v203 = v91;
        *v204 = v91;
        *v201 = v91;
        v202 = v91;
        if (!(*(*v59 + 88))(v59, v190, v209, 2))
        {
          goto LABEL_456;
        }

        if (!CBB_add_u16(v209, v89))
        {
          goto LABEL_456;
        }

        if (!CBB_add_bytes(v209, (*(v59 + 48) + 16), 0x20uLL))
        {
          goto LABEL_456;
        }

        if (!CBB_add_u8_length_prefixed(v209, v201))
        {
          goto LABEL_456;
        }

        if (!CBB_add_bytes(v201, v184, *(this + 1645)))
        {
          goto LABEL_456;
        }

        v92 = SSL_CIPHER_get_protocol_id(*(this + 196));
        if (!CBB_add_u16(v209, v92) || !CBB_add_u8(v209, 0) || !CBB_add_u16_length_prefixed(v209, v204) || !bssl::ssl_ext_pre_shared_key_add_serverhello(this, v204) || !bssl::ssl_ext_key_share_add_serverhello(this, v204) || !bssl::ssl_ext_supported_versions_add_serverhello(this, v204) || ((*(*v59 + 96))(v59, v190, &v207) & 1) == 0)
        {
          goto LABEL_456;
        }

        v94 = *(this + 400);
        if (*(*(v59 + 48) + 216) == 1)
        {
          if ((v94 & 1) == 0)
          {
            __assert_rtn("do_send_server_hello", "tls13_server.cc", 960, "ssl->s3->ech_status != ssl_ech_accepted || hs->ech_is_inner");
          }
        }

        else if ((v94 & 1) == 0)
        {
          goto LABEL_354;
        }

        v128 = bssl::ssl_ech_confirmation_signal_hello_offset(v59, v93);
        if (!bssl::ssl_ech_accept_confirmation(this, v60 + 40, 8, *(v59 + 48) + 48, 32, (this + 424), 0, v129, v207, v208, v128))
        {
          goto LABEL_456;
        }

        if (v208 < v128)
        {
LABEL_465:
          abort();
        }

        *(&v207->ssl_version + v128) = *(v60 + 40);
LABEL_354:
        v130 = *(*v59 + 104);
        *v199 = 0;
        v200 = 0;
        OPENSSL_free(0);
        *v199 = v207;
        v200 = v208;
        v207 = 0;
        v208 = 0;
        v131 = v130(v59, v199);
        bssl::Array<unsigned char>::~Array(v199);
        if ((v131 & 1) == 0)
        {
          goto LABEL_456;
        }

        OPENSSL_free(*v180);
        *v180 = 0;
        *(v180 + 1) = 0;
        if ((*(*(v59 + 48) + 223) & 0x10) == 0 && !(*(*v59 + 112))(v59))
        {
          goto LABEL_456;
        }

        if (!bssl::tls13_derive_handshake_secrets(this, v132) || !bssl::tls13_set_traffic_key(v59, 2, 1, *(this + 192), this + 179, *(this + 227)) || !(*(*v59 + 88))(v59, v190, v209, 8) || !bssl::ssl_add_serverhello_tlsext(this, v209) || !bssl::ssl_add_message_cbb(v59, v190))
        {
          goto LABEL_456;
        }

        if ((*(*(v59 + 48) + 222) & 0x20) != 0)
        {
          v134 = *(this + 400);
        }

        else
        {
          v134 = *(this + 400);
          if (!*(this + 210))
          {
            v135 = *(this + 1);
            v136 = v134 & 0xFFFFFFDF;
            v8 = (v134 & 0x2000000) == 0;
            v134 = v134 & 0xFFFFFFDF | (32 * (*(v135 + 308) & 1));
            *(this + 400) = v134;
            v137 = *(v135 + 308) & 4;
            if (!v8 && v137 != 0)
            {
              v134 = v136;
            }

            *(this + 400) = v134;
          }
        }

        if ((v134 & 0x20) != 0 && !*v181)
        {
          *&v170 = 0xAAAAAAAAAAAAAAAALL;
          *(&v170 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v221 = v170;
          v222 = v170;
          v219 = v170;
          d = v170;
          v217 = v170;
          v218 = v170;
          v215 = v170;
          v216 = v170;
          v214 = v170;
          if (!(*(*v59 + 88))(v59, v190, v209, 13))
          {
            goto LABEL_456;
          }

          if (!CBB_add_u8(v209, 0))
          {
            goto LABEL_456;
          }

          if (!CBB_add_u16_length_prefixed(v209, &d))
          {
            goto LABEL_456;
          }

          if (!CBB_add_u16(&d, 0xDu))
          {
            goto LABEL_456;
          }

          if (!CBB_add_u16_length_prefixed(&d, &v217))
          {
            goto LABEL_456;
          }

          if (!CBB_add_u16_length_prefixed(&v217, &v214))
          {
            goto LABEL_456;
          }

          if (!bssl::tls12_add_verify_sigalgs(this, &v214))
          {
            goto LABEL_456;
          }

          if (bssl::ssl_has_client_CAs(*(this + 1), v171))
          {
            *&v172 = 0xAAAAAAAAAAAAAAAALL;
            *(&v172 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v197 = v172;
            v198 = v172;
            *ses = v172;
            if (!CBB_add_u16(&d, 0x2Fu) || !CBB_add_u16_length_prefixed(&d, ses) || !bssl::ssl_add_client_CA_list(this, ses) || !CBB_flush(&d))
            {
              goto LABEL_456;
            }
          }

          if ((bssl::ssl_add_message_cbb(v59, v190) & 1) == 0)
          {
            goto LABEL_456;
          }
        }

        if ((*(*(v59 + 48) + 222) & 0x20) != 0 || *v186)
        {
          v169 = 6;
LABEL_431:
          *(this + 6) = v169;
          v5 = 1;
LABEL_457:
          CBB_cleanup(v190);
          OPENSSL_free(v207);
          goto LABEL_286;
        }

        if (bssl::ssl_has_certificate(this, v133) || bssl::ssl_has_server_raw_public_key_certificate(this, v173))
        {
          if (bssl::tls13_add_certificate(this, v173, v174, v175, v176))
          {
            v169 = 5;
            goto LABEL_431;
          }
        }

        else
        {
          ERR_put_error(16, 0, 174, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 1052);
        }

LABEL_456:
        v5 = 0;
        goto LABEL_457;
      case 5:
        v51 = bssl::tls13_add_certificate_verify(this, a2);
        if (v51)
        {
          if (v51 == 2)
          {
            goto LABEL_285;
          }

          if (v51 != 1)
          {
            bssl::tls13_server_handshake();
          }

          v5 = 9;
          v26 = 5;
        }

        else
        {
          v26 = 6;
        }

        goto LABEL_225;
      case 6:
        v52 = *(this + 400);
        if ((v52 & 0x80000) != 0)
        {
LABEL_115:
          v5 = 17;
          goto LABEL_286;
        }

        v53 = *this;
        *(this + 400) = v52 | 0x1000000;
        if (!bssl::tls13_add_finished(this, a2))
        {
          goto LABEL_285;
        }

        bssl::SSLTranscript::DigestLen((this + 424));
        if (!bssl::tls13_advance_key_schedule(this) || !bssl::tls13_derive_application_secrets(this, a2) || !bssl::tls13_set_traffic_key(v53, 3, 1, *(this + 192), this + 277, *(this + 325)))
        {
          goto LABEL_285;
        }

        *(this + 6) = 7;
        if ((*(this + 1602) & 4) != 0)
        {
          v5 = 7;
        }

        else
        {
          v5 = 1;
        }

        goto LABEL_286;
      case 7:
        if ((*(*(*this + 48) + 222) & 0x200) == 0)
        {
          goto LABEL_65;
        }

        if (!*(*this + 168) && (bssl::SSLTranscript::Update(this + 424, bssl::do_send_half_rtt_ticket(bssl::SSL_HANDSHAKE *)::kEndOfEarlyData, 4uLL) & 1) == 0)
        {
          ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 1121);
          goto LABEL_285;
        }

        *v190 = 0xAAAAAAAAAAAAAAAALL;
        v81 = bssl::SSLTranscript::DigestLen((this + 424));
        v82 = v81;
        if (v81 > 0x30)
        {
          goto LABEL_465;
        }

        v83 = *(this + 374);
        if (v81 > v83)
        {
          bzero(&v187[v83], v81 - v83);
        }

        *(this + 374) = v82;
        if (bssl::tls13_finished_mac(this, v187, v190, 0))
        {
          if (*v190 == *(this + 374))
          {
            if (SSL_is_dtls(*this))
            {
              bssl::tls13_server_handshake();
            }

            v84 = *(this + 374);
            LOWORD(v209[0]) = 20;
            BYTE2(v209[0]) = 0;
            BYTE3(v209[0]) = v84;
            if (bssl::SSLTranscript::Update(this + 424, v209, 4uLL) && bssl::SSLTranscript::Update(this + 424, v187, *(this + 374)) && bssl::tls13_derive_resumption_secret(this, a2) && bssl::add_new_session_tickets(this, v204, a3))
            {
LABEL_65:
              *(this + 6) = 8;
LABEL_166:
              v5 = 4;
              goto LABEL_286;
            }
          }

          else
          {
            ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 1133);
          }
        }

        goto LABEL_285;
      case 8:
        v57 = *this;
        if ((*(*(*this + 48) + 222) & 0x200) == 0)
        {
          goto LABEL_124;
        }

        if (!bssl::tls13_set_traffic_key(*this, 1, 0, *(this + 192), this + 81, *(this + 129)))
        {
          goto LABEL_285;
        }

        *(this + 400) |= 0x3400u;
LABEL_124:
        if (*(v57 + 168) || SSL_is_dtls(v57))
        {
          if (!bssl::tls13_set_traffic_key(v57, 2, 0, *(this + 192), this + 130, *(this + 178)))
          {
            goto LABEL_285;
          }

          v58 = 12;
        }

        else
        {
          v58 = 14;
        }

        *(this + 6) = 9;
        if ((*(*(v57 + 48) + 222) & 0x200) != 0)
        {
          v5 = v58;
        }

        else
        {
          v5 = 1;
        }

        goto LABEL_286;
      case 9:
        v36 = *this;
        if (*(*this + 168) || SSL_is_dtls(*this))
        {
          goto LABEL_63;
        }

        if ((*(*(*this + 48) + 222) & 0x200) == 0)
        {
          goto LABEL_227;
        }

        *&v191 = 0xAAAAAAAAAAAAAAAALL;
        *&v95 = 0xAAAAAAAAAAAAAAAALL;
        *(&v95 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v190 = v95;
        *&v190[16] = v95;
        if (!(*(*v36 + 24))(v36, v190))
        {
          goto LABEL_245;
        }

        if (!bssl::ssl_check_message_type(v36, v190, 5))
        {
          goto LABEL_285;
        }

        if (*&v190[16])
        {
          bssl::ssl_send_alert(v36, 2, 50);
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 1210);
        }

        else
        {
          (*(*v36 + 32))(v36);
LABEL_227:
          if (bssl::tls13_set_traffic_key(v36, 2, 0, *(this + 192), this + 130, *(this + 178)))
          {
LABEL_63:
            v35 = 10;
            goto LABEL_161;
          }
        }

        goto LABEL_285;
      case 10:
        if ((*(*(this + 192) + 440) & 0x40) == 0)
        {
          goto LABEL_60;
        }

        v27 = *this;
        if ((*(*(*this + 48) + 222) & 0x200) != 0)
        {
          goto LABEL_60;
        }

        *&v191 = 0xAAAAAAAAAAAAAAAALL;
        *&v28 = 0xAAAAAAAAAAAAAAAALL;
        *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v190 = v28;
        *&v190[16] = v28;
        if (!(*(*v27 + 24))(v27, v190))
        {
          goto LABEL_245;
        }

        if (!bssl::ssl_check_message_type(v27, v190, 8))
        {
          goto LABEL_285;
        }

        *v204 = *&v190[8];
        memset(v201, 170, sizeof(v201));
        if (!CBS_get_u16_length_prefixed(v204, v201) || v204[1])
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 1243);
          bssl::ssl_send_alert(v27, 2, 50);
          goto LABEL_285;
        }

        if ((*(*(this + 1) + 309) & 0x2000) != 0)
        {
          v29 = 17613;
        }

        else
        {
          v29 = 17513;
        }

        v209[0] = 0xAAAAAAAA0001AAAALL;
        LOWORD(v209[0]) = v29;
        v209[1] = 0;
        *&v210 = 0;
        LOBYTE(v217) = 50;
        *&d = v209;
        if ((bssl::ssl_parse_extensions(v201, &v217, &d, 1, 0) & 1) == 0)
        {
          v97 = v217;
          goto LABEL_284;
        }

        if ((BYTE3(v209[0]) & 1) == 0)
        {
          ERR_put_error(16, 0, 164, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 1261);
          v97 = 109;
          goto LABEL_284;
        }

        v30 = *v185;
        v31 = v209[1];
        v32 = v210;
        if (!bssl::Array<unsigned char>::InitUninitialized(&(*v185)[1].sid_ctx[28], v210))
        {
          goto LABEL_283;
        }

        if (v32)
        {
          v33 = *&v30[1].sid_ctx[28];
          do
          {
            ssl_version = v31->ssl_version;
            v31 = (v31 + 1);
            *v33++ = ssl_version;
            --v32;
          }

          while (v32);
        }

        if ((bssl::ssl_hash_message(this, v190) & 1) == 0)
        {
LABEL_283:
          v97 = 80;
          goto LABEL_284;
        }

        (*(*v27 + 32))(v27);
LABEL_60:
        v35 = 11;
        goto LABEL_161;
      case 11:
        v75 = *this;
        if ((*(this + 1600) & 0x20) == 0)
        {
          if ((*(*(v75 + 6) + 222) & 0x20) == 0)
          {
            (*v185)->timeout = 0;
          }

LABEL_160:
          v35 = 13;
          goto LABEL_161;
        }

        v85 = *(*(this + 1) + 308);
        *&v191 = 0xAAAAAAAAAAAAAAAALL;
        *&v86 = 0xAAAAAAAAAAAAAAAALL;
        *(&v86 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v190 = v86;
        *&v190[16] = v86;
        if (!(*(*v75 + 24))(v75, v190))
        {
          goto LABEL_245;
        }

        if (bssl::ssl_check_message_type(v75, v190, 11) && bssl::tls13_process_certificate(this, v190, (v85 & 2) == 0) && bssl::ssl_hash_message(this, v190))
        {
          (*(*v75 + 32))(v75);
          v35 = 12;
          goto LABEL_161;
        }

        goto LABEL_285;
      case 12:
        v54 = *this;
        if (!EVP_MD_CTX_md(*(*(this + 192) + 136)))
        {
          goto LABEL_160;
        }

        *&v191 = 0xAAAAAAAAAAAAAAAALL;
        *&v55 = 0xAAAAAAAAAAAAAAAALL;
        *(&v55 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v190 = v55;
        *&v190[16] = v55;
        if (!(*(*v54 + 24))(v54, v190))
        {
          goto LABEL_245;
        }

        v56 = bssl::ssl_verify_peer_cert(this, a2);
        if (v56 == 1)
        {
          goto LABEL_285;
        }

        if (v56 == 2)
        {
          v5 = 16;
          v26 = 12;
          goto LABEL_225;
        }

        if (!bssl::ssl_check_message_type(v54, v190, 15) || !bssl::tls13_process_certificate_verify(this, v190) || !bssl::ssl_hash_message(this, v190))
        {
          goto LABEL_285;
        }

        (*(*v54 + 32))(v54);
        v5 = 1;
        v26 = 13;
        goto LABEL_225;
      case 13:
        if ((*(this + 1603) & 2) == 0)
        {
          v26 = 14;
LABEL_225:
          *(this + 6) = v26;
          goto LABEL_286;
        }

        v79 = *this;
        *&v191 = 0xAAAAAAAAAAAAAAAALL;
        *&v80 = 0xAAAAAAAAAAAAAAAALL;
        *(&v80 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v190 = v80;
        *&v190[16] = v80;
        if (!(*(*v79 + 24))(v79, v190))
        {
LABEL_245:
          v5 = 3;
          goto LABEL_286;
        }

        if (bssl::ssl_check_message_type(v79, v190, 203) && bssl::tls1_verify_channel_id(this, v190) && bssl::ssl_hash_message(this, v190))
        {
          (*(*v79 + 32))(v79);
          v35 = 14;
LABEL_161:
          *(this + 6) = v35;
          goto LABEL_162;
        }

        goto LABEL_285;
      case 14:
        v76 = *this;
        *&v191 = 0xAAAAAAAAAAAAAAAALL;
        *&v77 = 0xAAAAAAAAAAAAAAAALL;
        *(&v77 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v190 = v77;
        *&v190[16] = v77;
        if (!(*(*v76 + 24))(v76, v190))
        {
          goto LABEL_245;
        }

        if (!bssl::ssl_check_message_type(v76, v190, 20) || !bssl::tls13_process_finished(this, v190, (*(*(v76 + 6) + 222) >> 9) & 1) || !bssl::tls13_set_traffic_key(v76, 3, 0, *(this + 192), this + 228, *(this + 276)))
        {
          goto LABEL_285;
        }

        if ((*(*(v76 + 6) + 222) & 0x200) != 0)
        {
          v78 = 16;
        }

        else
        {
          if (!bssl::ssl_hash_message(this, v190) || !bssl::tls13_derive_resumption_secret(this, a2))
          {
            goto LABEL_285;
          }

          v78 = 15;
        }

        *(this + 6) = v78;
        (*(*v76 + 32))(v76);
LABEL_162:
        v5 = 1;
        goto LABEL_286;
      case 15:
        v190[0] = -86;
        if (!bssl::add_new_session_tickets(this, v190, a3))
        {
          goto LABEL_285;
        }

        *(this + 6) = 16;
        if (*(*this + 168) && (v190[0] & 1) != 0)
        {
          goto LABEL_166;
        }

        goto LABEL_286;
      case 16:
        goto LABEL_461;
      default:
        goto LABEL_285;
    }
  }
}

void sub_1A903DBBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  CBB_cleanup(&a23);
  bssl::Array<unsigned char>::~Array(&a57);
  _Unwind_Resume(a1);
}

BOOL boringssl_context_evaluate_trust_async_internal(uint64_t a1, uint64_t a2, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
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
          v9 = boringssl_context_copy_global_trust_queue_for_qos(*(a1 + 8));
          v7 = v9 != 0;
          if (v9)
          {
            v10 = v8;
            v35[0] = MEMORY[0x1E69E9820];
            v35[1] = 3221225472;
            v35[2] = __boringssl_context_evaluate_trust_async_internal_block_invoke;
            v35[3] = &unk_1E78695C0;
            v39 = a1;
            v40 = v10;
            v11 = v10;
            v36 = v11;
            v38 = v6;
            v41 = a2;
            v12 = v9;
            v37 = v12;
            v13 = MEMORY[0x1AC57F4F0](v35);
            BYTE6(v11[68].isa) |= 8u;
            WeakRetained = objc_loadWeakRetained(&v11[2].isa);
            if (!WeakRetained || (v15 = WeakRetained, v16 = objc_loadWeakRetained(&v11[2].isa), v17 = v16[435], v16, v15, (v17 & 1) == 0))
            {
              v18 = objc_loadWeakRetained(&v11[2].isa);
              if (v18)
              {
                v19 = objc_loadWeakRetained(&v11[2].isa);
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
                  v30 = g_boringssl_log;
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                  {
                    v31 = objc_loadWeakRetained(&v11[2].isa);
                    if (v31)
                    {
                      v34 = objc_loadWeakRetained(&v11[2].isa);
                      v32 = v34 + 351;
                    }

                    else
                    {
                      v32 = &unk_1A9098A9F;
                    }

                    v33 = objc_loadWeakRetained(&v11[2].isa);
                    *buf = 136446978;
                    v43 = "boringssl_context_evaluate_trust_async_internal";
                    v44 = 1024;
                    v45 = 1694;
                    v46 = 2082;
                    v47 = v32;
                    v48 = 2048;
                    v49 = v33;
                    _os_log_impl(&dword_1A8FF5000, v30, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] Asyncing for internal verify block", buf, 0x26u);

                    if (v31)
                    {
                    }
                  }
                }
              }
            }

            if (v13)
            {
              ++v11[62].isa;
              dispatch_async(v12, v13);
            }
          }

          else
          {
            v23 = objc_loadWeakRetained(v8 + 2);
            if (v23)
            {
              v24 = v23;
              v25 = objc_loadWeakRetained(v8 + 2);
              v26 = v25[435];

              if (v26)
              {
                goto LABEL_37;
              }
            }

            v27 = objc_loadWeakRetained(v8 + 2);
            if (v27)
            {
              v28 = objc_loadWeakRetained(v8 + 2);
              v29 = (v28[435] & 1) == 0;
            }

            else
            {
              v29 = 1;
            }

            if (!v29 || !g_boringssl_log)
            {
              goto LABEL_37;
            }

            v11 = g_boringssl_log;
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              boringssl_context_evaluate_trust_async_internal_cold_1();
            }
          }

LABEL_37:
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v7;
}

id boringssl_context_copy_global_trust_queue_for_qos(void *a1)
{
  v1 = a1;
  v2 = v1[3];
  scheduling_mode = nw_context_get_scheduling_mode();
  if (scheduling_mode == 1)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __boringssl_context_copy_global_trust_queue_for_qos_block_invoke_2;
    v10[3] = &unk_1E785EB40;
    v4 = &v11;
    v11 = v1;
    if (boringssl_context_copy_global_trust_queue_for_qos_userInitiatedQueueToken != -1)
    {
      dispatch_once(&boringssl_context_copy_global_trust_queue_for_qos_userInitiatedQueueToken, v10);
    }

    v5 = &boringssl_context_copy_global_trust_queue_for_qos_userInitiatedQueue;
  }

  else if (scheduling_mode == 2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __boringssl_context_copy_global_trust_queue_for_qos_block_invoke;
    block[3] = &unk_1E785EB40;
    v4 = &v13;
    v13 = v1;
    if (boringssl_context_copy_global_trust_queue_for_qos_userInteractiveQueueToken != -1)
    {
      dispatch_once(&boringssl_context_copy_global_trust_queue_for_qos_userInteractiveQueueToken, block);
    }

    v5 = &boringssl_context_copy_global_trust_queue_for_qos_userInteractiveQueue;
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __boringssl_context_copy_global_trust_queue_for_qos_block_invoke_3;
    v8[3] = &unk_1E785EB40;
    v4 = &v9;
    v9 = v1;
    if (boringssl_context_copy_global_trust_queue_for_qos_defaultQueueToken != -1)
    {
      dispatch_once(&boringssl_context_copy_global_trust_queue_for_qos_defaultQueueToken, v8);
    }

    v5 = &boringssl_context_copy_global_trust_queue_for_qos_defaultQueue;
  }

  v6 = *v5;

  return v6;
}

void __boringssl_context_evaluate_trust_async_internal_block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x1E69E9840];
  if (boringssl_session_get_state(*(a1 + 56)) <= 3 && !boringssl_session_is_cancelled(*(a1 + 56)))
  {
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __boringssl_context_evaluate_trust_async_internal_block_invoke_2;
    v48[3] = &unk_1E7869570;
    v2 = *(a1 + 32);
    v3 = *(a1 + 64);
    v49 = v2;
    v51 = v3;
    v44 = *(a1 + 48);
    v4 = v44;
    v50 = v44;
    v5 = MEMORY[0x1AC57F4F0](v48);
    v6 = *(a1 + 32);
    if (v6)
    {
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
    }

    if (!g_boringssl_log)
    {
      goto LABEL_16;
    }

    v15 = g_boringssl_log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
LABEL_15:

LABEL_16:
      if (!SecTrustEvaluateAsyncWithError(*(a1 + 72), *(a1 + 40), v5))
      {
LABEL_30:

        goto LABEL_31;
      }

      v16 = *(a1 + 32);
      if (!v16)
      {
        goto LABEL_23;
      }

      v17 = objc_loadWeakRetained((v16 + 16));
      if (v17)
      {
        v18 = v17;
        v19 = objc_loadWeakRetained((*(a1 + 32) + 16));
        v20 = v19[435];

        if (v20)
        {
          goto LABEL_29;
        }
      }

      v21 = *(a1 + 32);
      if (v21)
      {
        v22 = objc_loadWeakRetained((v21 + 16));
        if (v22)
        {
          v23 = objc_loadWeakRetained((*(a1 + 32) + 16));
          v24 = (v23[435] & 1) == 0;
        }

        else
        {
          v24 = 1;
        }

        if (!v24)
        {
          goto LABEL_29;
        }
      }

      else
      {
LABEL_23:
        v24 = 1;
      }

      if (!g_boringssl_log)
      {
LABEL_29:
        v26 = *(a1 + 32);
        v27 = v26[3];
        v45 = v26;
        v47 = *(a1 + 64);
        v46 = *(a1 + 48);
        nw_queue_context_async_if_needed();

        goto LABEL_30;
      }

      v25 = g_boringssl_log;
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
LABEL_28:

        goto LABEL_29;
      }

      v34 = *(a1 + 32);
      if (v34)
      {
        v41 = objc_loadWeakRetained((v34 + 16));
        v24 = v41;
        v42 = *(a1 + 32);
        if (v41)
        {
          v35 = v42 != 0;
          if (v42)
          {
            v41 = objc_loadWeakRetained((v42 + 16));
            v42 = *(a1 + 32);
          }

          else
          {
            v41 = 0;
          }

          v38 = v41 + 351;
        }

        else
        {
          v35 = 0;
          v38 = &unk_1A9098A9F;
        }

        *&v44 = v41;
        if (v42)
        {
          v36 = objc_loadWeakRetained((v42 + 16));
          v37 = 0;
        }

        else
        {
          v36 = 0;
          v37 = 1;
        }
      }

      else
      {
        v35 = 0;
        v36 = 0;
        v37 = 1;
        v38 = &unk_1A9098A9F;
      }

      *buf = 136446978;
      v53 = "boringssl_context_evaluate_trust_async_internal_block_invoke";
      v54 = 1024;
      v55 = 1684;
      v56 = 2082;
      v57 = v38;
      v58 = 2048;
      v59 = v36;
      _os_log_error_impl(&dword_1A8FF5000, v25, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] SecTrustEvaluateAsyncWithError failed", buf, 0x26u);
      if (v37)
      {
        if (!v35)
        {
          goto LABEL_63;
        }
      }

      else
      {

        if (!v35)
        {
LABEL_63:
          if (!v34)
          {
            goto LABEL_28;
          }

          goto LABEL_67;
        }
      }

      if (!v34)
      {
        goto LABEL_28;
      }

LABEL_67:

      goto LABEL_28;
    }

    v29 = *(a1 + 32);
    if (v29)
    {
      v39 = objc_loadWeakRetained((v29 + 16));
      v40 = *(a1 + 32);
      *&v44 = v39;
      if (v39)
      {
        v30 = v40 != 0;
        if (v40)
        {
          v39 = objc_loadWeakRetained((v40 + 16));
          v40 = *(a1 + 32);
        }

        else
        {
          v39 = 0;
        }

        v33 = v39 + 351;
      }

      else
      {
        v30 = 0;
        v33 = &unk_1A9098A9F;
      }

      v43 = v39;
      if (v40)
      {
        v31 = objc_loadWeakRetained((v40 + 16));
        v32 = 0;
      }

      else
      {
        v31 = 0;
        v32 = 1;
      }
    }

    else
    {
      v30 = 0;
      v31 = 0;
      v32 = 1;
      v33 = &unk_1A9098A9F;
    }

    *buf = 136446978;
    v53 = "boringssl_context_evaluate_trust_async_internal_block_invoke_2";
    v54 = 1024;
    v55 = 1681;
    v56 = 2082;
    v57 = v33;
    v58 = 2048;
    v59 = v31;
    _os_log_debug_impl(&dword_1A8FF5000, v15, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] Invoking SecTrustEvaluateAsyncWithError", buf, 0x26u);
    if (v32)
    {
      if (!v30)
      {
        goto LABEL_51;
      }
    }

    else
    {

      if (!v30)
      {
LABEL_51:
        if (!v29)
        {
          goto LABEL_15;
        }

        goto LABEL_55;
      }
    }

    if (!v29)
    {
      goto LABEL_15;
    }

LABEL_55:

    goto LABEL_15;
  }

  *(*(a1 + 64) + 550) &= ~8u;
LABEL_31:
  v28 = *MEMORY[0x1E69E9840];
}

const char *bssl::ssl_server_handshake_state(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  v2 = *(this + 5);
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
      result = bssl::tls13_server_handshake_state(this);
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

  return result;
}

const char *bssl::tls13_server_handshake_state(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 0x10)
  {
    return "TLS 1.3 server unknown";
  }

  else
  {
    return off_1E785ED98[v1];
  }
}

id *boringssl_identity_copy_certificate_chain(id *result)
{
  if (result)
  {
    return result[2];
  }

  return result;
}

id *boringssl_identity_copy_sec_identity(id *result)
{
  if (result)
  {
    return result[3];
  }

  return result;
}

const char *__cdecl SSL_get_servername(const SSL *s, const int type)
{
  if (type)
  {
    return 0;
  }

  result = s->msg_callback_arg;
  if (!result)
  {
    return *(s->handshake_func + 64);
  }

  return result;
}

uint64_t bssl::ssl_server_handshake(bssl *this, ssl_st *cipher_by_value, ssl_session_st *a3)
{
  v207 = (this + 1528);
  v242 = *MEMORY[0x1E69E9840];
  v208 = (this + 1464);
  v209 = (this + 1520);
  v210 = this + 1613;
  v211 = this + 1645;
  v205 = (this + 1552);
  v206 = (this + 616);
  while (2)
  {
    v4 = *(this + 5);
    switch(v4)
    {
      case 0:
        bssl::ssl_do_info_callback(*this, 0x10);
        prev_session = 1;
        goto LABEL_9;
      case 1:
        v37 = *this;
        *&v221 = 0xAAAAAAAAAAAAAAAALL;
        *&v38 = 0xAAAAAAAAAAAAAAAALL;
        *(&v38 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v220 = v38;
        *v219 = v38;
        if (!(*(*v37 + 24))(v37, v219))
        {
          goto LABEL_193;
        }

        if (!bssl::ssl_check_message_type(v37, v219, 1))
        {
          goto LABEL_412;
        }

        *&v39 = 0xAAAAAAAAAAAAAAAALL;
        *(&v39 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v231 = v39;
        v232 = v39;
        v229 = v39;
        v230 = v39;
        v227[1] = v39;
        v228 = v39;
        v227[0] = v39;
        if ((bssl::ssl_client_hello_init(v37, v227, v219[1], v220) & 1) == 0)
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 683);
          bssl::ssl_send_alert(v37, 2, 50);
          goto LABEL_412;
        }

        if ((*(*v37 + 40))(v37))
        {
          bssl::ssl_send_alert(v37, 2, 10);
          ERR_put_error(16, 0, 255, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 692);
          goto LABEL_412;
        }

        if ((*(*(this + 1) + 309) & 0x40) != 0)
        {
          prev_session = 6;
          goto LABEL_413;
        }

        v212 = 50;
        if (*(*(v37 + 6) + 216) == 2)
        {
          goto LABEL_283;
        }

        v126 = *this;
        v216[0] = 0xAAAAAAAAAAAAAAAALL;
        v216[1] = 0xAAAAAAAAAAAAAAAALL;
        if ((bssl::ssl_client_hello_get_extension(v227, v216, 65037) & 1) == 0)
        {
          goto LABEL_283;
        }

        v226 = -86;
        if (!CBS_get_u8(v216, &v226))
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 552);
LABEL_496:
          v185 = 50;
          v212 = 50;
LABEL_497:
          bssl::ssl_send_alert(v37, 2, v185);
          goto LABEL_412;
        }

        if (v226)
        {
          goto LABEL_283;
        }

        v225 = -86;
        v224 = -21846;
        v223 = -21846;
        memset(v213, 170, 16);
        *v222 = 0xAAAAAAAAAAAAAAAALL;
        *&v222[2] = 0xAAAAAAAAAAAAAAAALL;
        if (!CBS_get_u16(v216, &v224) || !CBS_get_u16(v216, &v223) || !CBS_get_u8(v216, &v225) || !CBS_get_u16_length_prefixed(v216, v213) || !CBS_get_u16_length_prefixed(v216, v222) || v216[1])
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 569);
          goto LABEL_496;
        }

        v177 = *(v126 + 120);
        CRYPTO_MUTEX_lock_read((v177 + 24));
        v178 = *(*(v126 + 120) + 776);
        if (v178)
        {
          SSL_CREDENTIAL_up_ref(v178);
        }

        v215[0] = 0;
        std::unique_ptr<ssl_ech_keys_st,bssl::internal::Deleter>::reset[abi:ne200100](v205, v178);
        std::unique_ptr<ssl_ech_keys_st,bssl::internal::Deleter>::reset[abi:ne200100](v215, 0);
        CRYPTO_MUTEX_unlock_read((v177 + 24));
        v179 = *v205;
        if (!*v205 || (v180 = *(v179 + 2)) == 0)
        {
LABEL_490:
          v183 = *(v126 + 48);
          v184 = 2;
          goto LABEL_491;
        }

        v181 = *(v179 + 1);
        v182 = 8 * v180;
        while (1)
        {
          EVP_HPKE_CTX_cleanup(this + 752);
          EVP_HPKE_CTX_zero(this + 752);
          if (v225 != *(*v181 + 67) || !bssl::ECHServerConfig::SetupContext(*v181, this + 94, v224, v223, *v213, *&v213[8]))
          {
            ERR_clear_error();
            goto LABEL_489;
          }

          LOBYTE(v215[0]) = -86;
          if (bssl::ssl_client_hello_decrypt(this, &v212, v215, v206, v227, *v222, *&v222[2]))
          {
            break;
          }

          if ((v215[0] & 1) == 0)
          {
            ERR_put_error(16, 0, 138, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 605);
            v185 = v212;
            goto LABEL_497;
          }

          ERR_clear_error();
          v212 = 50;
LABEL_489:
          ++v181;
          v182 -= 8;
          if (!v182)
          {
            goto LABEL_490;
          }
        }

        *(this + 1612) = v225;
        v183 = *(v126 + 48);
        v184 = 1;
LABEL_491:
        *(v183 + 216) = v184;
LABEL_283:
        if (bssl::SSL_HANDSHAKE::GetClientHello(this, v219, v227))
        {
          if (bssl::extract_sni(this, &v212, v227))
          {
            v6 = 2;
            goto LABEL_231;
          }

          bssl::ssl_send_alert(v37, 2, v212);
        }

        else
        {
          ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 712);
        }

LABEL_412:
        prev_session = 0;
LABEL_413:
        if (*(this + 5) != v4)
        {
          bssl::ssl_do_info_callback(*this, 0x2001);
        }

        if (prev_session == 1)
        {
          continue;
        }

LABEL_544:
        v201 = *MEMORY[0x1E69E9840];
        return prev_session;
      case 2:
        v8 = *this;
        *&v221 = 0xAAAAAAAAAAAAAAAALL;
        *&v17 = 0xAAAAAAAAAAAAAAAALL;
        *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v220 = v17;
        *v219 = v17;
        v231 = v17;
        v232 = v17;
        v229 = v17;
        v230 = v17;
        v227[1] = v17;
        v228 = v17;
        v227[0] = v17;
        if (!bssl::SSL_HANDSHAKE::GetClientHello(this, v219, v227))
        {
          goto LABEL_412;
        }

        v18 = *(*(v8 + 15) + 488);
        if (!v18)
        {
          goto LABEL_197;
        }

        v19 = v18(v227);
        switch(v19)
        {
          case 0:
            prev_session = 5;
            goto LABEL_413;
          case -1:
            ERR_put_error(16, 0, 133, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 749);
            bssl::ssl_send_alert(v8, 2, 40);
            goto LABEL_412;
          case -2:
            OPENSSL_free(*(this + 77));
            *v206 = 0;
            v206[1] = 0;
            std::unique_ptr<ssl_ech_keys_st,bssl::internal::Deleter>::reset[abi:ne200100](v205, 0);
            prev_session = 1;
            *(this + 5) = 1;
            *(*(v8 + 6) + 216) = 2;
            goto LABEL_413;
        }

LABEL_197:
        if (!bssl::ssl_get_version_range(this, this + 14, this + 15))
        {
          goto LABEL_412;
        }

        if (*(*(this + 1) + 309) & 0x100) == 0 || (bssl::ssl_client_cipher_list_contains_cipher(v227, 4867))
        {
          goto LABEL_349;
        }

        v108 = 0;
        v203 = 0;
        v109 = 0;
        __s2 = 0;
        v110 = 0;
        v111 = 0;
        memset(v213, 170, 16);
        *v216 = v232;
        v112 = &byte_1A90B855C;
        v113 = 64;
        do
        {
          *v222 = *v216;
          v224 = -21846;
          if (CBS_get_u16(v222, &v224) && v224 == *(v112 - 1))
          {
            *v216 = *v222;
            v215[0] = 0xAAAAAAAAAAAAAAAALL;
            v215[1] = 0xAAAAAAAAAAAAAAAALL;
            if (!CBS_get_u16_length_prefixed(v216, v215))
            {
              goto LABEL_349;
            }

            if (v224 <= 0xCu)
            {
              if (v224 == 5)
              {
                v108 = 1;
              }

              else if (v224 == 10)
              {
                *v213 = *v215;
              }
            }

            else
            {
              switch(v224)
              {
                case 0xDu:
                  v111 = v215[0];
                  v110 = v215[1];
                  break;
                case 0x11u:
                  v203 = 1;
                  break;
                case 0x32u:
                  v109 = v215[1];
                  __s2 = v215[0];
                  break;
              }
            }
          }

          else if (*v112)
          {
            goto LABEL_349;
          }

          v112 += 4;
          v113 -= 4;
        }

        while (v113);
        if (!v216[1])
        {
          while (*&v213[8])
          {
            LOWORD(v222[0]) = -21846;
            if (!CBS_get_u16(v213, v222) || LOWORD(v222[0]) == 29)
            {
              goto LABEL_349;
            }
          }

          if (v110 == v109 && !memcmp(v111, __s2, v110) && ((v203 ^ v108) & 1) == 0)
          {
            *(this + 400) |= 0x800000u;
          }
        }

LABEL_349:
        LOBYTE(v222[0]) = 50;
        v141 = *this;
        if (*(*(*this + 48) + 208))
        {
          bssl::ssl_server_handshake();
        }

        v216[0] = 0xAAAAAAAAAAAAAAAALL;
        v216[1] = 0xAAAAAAAAAAAAAAAALL;
        memset(v213, 170, 16);
        if (bssl::ssl_client_hello_get_extension(v227, v216, 43))
        {
          if (!CBS_get_u8_length_prefixed(v216, v213) || v216[1] || !*&v213[8])
          {
            ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 211);
            v119 = 50;
LABEL_409:
            LOBYTE(v222[0]) = v119;
            goto LABEL_411;
          }
        }

        else
        {
          if (SSL_is_dtls(v141))
          {
            v142 = 4;
            if (WORD4(v227[1]) >= 0xFEFEu)
            {
              v142 = 2 * (BYTE9(v227[1]) != 255);
            }

            v143 = &bssl::ssl_write_client_cipher_list(bssl::SSL_HANDSHAKE const*,cbb_st *,bssl::ssl_client_hello_type_t)::kCiphersNoAESHardwarePQTLS;
          }

          else if (WORD4(v227[1]) <= 0x302u)
          {
            v142 = 4;
            if (WORD4(v227[1]) != 770)
            {
              v142 = 2 * (WORD4(v227[1]) > 0x300u);
            }

            v143 = &bssl::negotiate_version(bssl::SSL_HANDSHAKE *,unsigned char *,ssl_early_callback_ctx const*)::kDTLSVersions;
          }

          else
          {
            v142 = 6;
            v143 = &bssl::negotiate_version(bssl::SSL_HANDSHAKE *,unsigned char *,ssl_early_callback_ctx const*)::kDTLSVersions;
          }

          *v213 = &v143[-v142];
          *&v213[8] = v142;
        }

        if (!bssl::ssl_negotiate_version(this, v222, (*(v141 + 48) + 208), v213))
        {
          v119 = LOBYTE(v222[0]);
          goto LABEL_411;
        }

        if (!bssl::ssl_client_cipher_list_contains_cipher(v227, 22016) || bssl::ssl_protocol_version(v141, v163) >= *(this + 15))
        {
          *(this + 802) = WORD4(v227[1]);
          if (*(&v228 + 1) != 32)
          {
            ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 776);
            goto LABEL_412;
          }

          v164 = *(v8 + 6);
          v165 = *(v228 + 16);
          *(v164 + 48) = *v228;
          *(v164 + 64) = v165;
          if (!*(&v231 + 1) || !memchr(v231, 0, *(&v231 + 1)) || bssl::ssl_protocol_version(v8, v166) >= 0x304 && *(&v231 + 1) != 1)
          {
            ERR_put_error(16, 0, 256, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 788);
            bssl::ssl_send_alert(v8, 2, 47);
            goto LABEL_412;
          }

          if ((bssl::ssl_parse_clienthello_tlsext(this, v227) & 1) == 0)
          {
            ERR_put_error(16, 0, 190, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 795);
            goto LABEL_412;
          }

          v174 = *(v8 + 15);
          v175 = *(v174 + 496);
          if (v175)
          {
            v176 = *(this + 207);
            if (v176)
            {
              v175(*this, *(v176 + 8), *(v176 + 16), *(v176 + 24), *(v176 + 32), *(v176 + 40), *(v174 + 504));
            }
          }

          v6 = 3;
LABEL_231:
          *(this + 5) = v6;
LABEL_232:
          prev_session = 1;
          goto LABEL_413;
        }

        ERR_put_error(16, 0, 157, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 257);
        v119 = 86;
        goto LABEL_409;
      case 3:
        v20 = *this;
        v21 = *(*(this + 1) + 32);
        v22 = *(v21 + 64);
        if (!v22)
        {
          goto LABEL_39;
        }

        v23 = v22(*this, *(v21 + 72));
        if (!v23)
        {
          ERR_put_error(16, 0, 126, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 819);
          bssl::ssl_send_alert(v20, 2, 80);
          goto LABEL_412;
        }

        if (v23 < 0)
        {
          prev_session = 8;
          goto LABEL_413;
        }

LABEL_39:
        if ((*(this + 1600) & 0x80) == 0)
        {
          goto LABEL_44;
        }

        v24 = *(v20 + 15);
        v25 = *(v24 + 816);
        if (!v25)
        {
          goto LABEL_44;
        }

        v26 = v25(v20, *(v24 + 824));
        if (!v26)
        {
          goto LABEL_44;
        }

        if (v26 != 3)
        {
          ERR_put_error(16, 0, 289, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 838);
          bssl::ssl_send_alert(v20, 2, 80);
          goto LABEL_412;
        }

        *(this + 400) &= ~0x80u;
LABEL_44:
        if (bssl::ssl_protocol_version(v20, cipher_by_value) >= 0x304)
        {
          *(this + 5) = 4;
          goto LABEL_232;
        }

        v107 = *(v20 + 6);
        if (*(v107 + 216) == 1)
        {
          bssl::ssl_server_handshake();
        }

        *(v107 + 256) = 3;
        v6 = 5;
        goto LABEL_231;
      case 4:
        prev_session = bssl::tls13_server_handshake(this, cipher_by_value, a3);
        if (prev_session == 1)
        {
          *(this + 5) = 20;
        }

        goto LABEL_413;
      case 5:
        v44 = *this;
        *&v221 = 0xAAAAAAAAAAAAAAAALL;
        *&v45 = 0xAAAAAAAAAAAAAAAALL;
        *(&v45 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v220 = v45;
        *v219 = v45;
        v231 = v45;
        v232 = v45;
        v229 = v45;
        v230 = v45;
        v227[1] = v45;
        v228 = v45;
        v227[0] = v45;
        if (!bssl::SSL_HANDSHAKE::GetClientHello(this, v219, v227))
        {
          goto LABEL_412;
        }

        v224 = 0;
        shared_group = bssl::tls1_get_shared_group(this, &v224, a3);
        v47 = *(&v230 + 1);
        *v216 = v230;
        v48 = OPENSSL_sk_new_null();
        *v213 = v48;
        if (!v48 || !v47)
        {
          goto LABEL_79;
        }

        do
        {
          LOWORD(v215[0]) = -21846;
          if (!CBS_get_u16(v216, v215))
          {
            ERR_put_error(16, 0, 148, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 280);
LABEL_264:
            *v222 = 0;
            *v213 = 0;
            BUF_MEM_free(v48);
            goto LABEL_412;
          }

          cipher_by_value = SSL_get_cipher_by_value(LOWORD(v215[0]));
          if (cipher_by_value && !OPENSSL_sk_push(v48, cipher_by_value))
          {
            goto LABEL_264;
          }
        }

        while (v216[1]);
LABEL_79:
        *v222 = v48;
        if (!v48)
        {
          goto LABEL_412;
        }

        v216[0] = 0;
        v216[1] = 0;
        if (bssl::ssl_get_credential_list(this, v216))
        {
          if (v216[1])
          {
            v49 = v216[0];
            v50 = 8 * v216[1];
            while (1)
            {
              v51 = *v49;
              ERR_clear_error();
              v53 = bssl::choose_params(this, v51, v48, shared_group);
              if (v53)
              {
                break;
              }

              ++v49;
              v50 -= 8;
              if (!v50)
              {
                goto LABEL_289;
              }
            }

            v128 = v52;
            if (v51)
            {
              SSL_CREDENTIAL_up_ref(v51);
            }

            std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100](v209, v51);
LABEL_302:
            *(this + 196) = v53;
            *(this + 805) = v128;
            v129 = *(&v229 + 1);
            if (*(&v229 + 1) <= 0x20uLL)
            {
              v130 = v229;
              *v211 = 0;
              if (v129)
              {
                v131 = v129;
                v132 = v210;
                do
                {
                  v133 = *v130++;
                  *v132++ = v133;
                  --v131;
                }

                while (v131);
              }

              *(this + 1645) = v129;
              *v213 = 0;
              LOBYTE(v215[0]) = 0;
              LOBYTE(v223) = 0;
              prev_session = bssl::ssl_get_prev_session(this, v213, v215, &v223, v227);
              if (prev_session != 1)
              {
                goto LABEL_448;
              }

              if (*v213)
              {
                if ((*(*v213 + 440) & 1) != 0 && (*(this + 1602) & 1) == 0)
                {
                  ERR_put_error(16, 0, 204, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 940);
                  bssl::ssl_send_alert(v44, 2, 40);
                  goto LABEL_447;
                }

                if (bssl::ssl_session_is_resumable(this, *v213, v134))
                {
                  v144 = *(this + 400);
                  v145 = *v213;
                  if ((HIWORD(v144) & 1) == (*(*v213 + 440) & 1))
                  {
                    goto LABEL_373;
                  }
                }

                std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](v213, 0);
                v145 = *v213;
                if (*v213)
                {
                  v144 = *(this + 400);
LABEL_373:
                  *(this + 400) = v144 & 0xFFFF7FFF | ((v223 & 1) << 15);
                  *v213 = 0;
                  std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100]((v44 + 104), v145);
                  *(*(v44 + 48) + 222) |= 0x20u;
                  *(this + 400) |= 0x1000000u;
LABEL_378:
                  v149 = *(*(v44 + 120) + 512);
                  if (v149 && !v149(v227))
                  {
                    ERR_put_error(16, 0, 133, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 978);
                    bssl::ssl_send_alert(v44, 2, 80);
                  }

                  else
                  {
                    if (!*(v44 + 104))
                    {
                      v150 = *(this + 196);
                      v151 = *(this + 192);
                      *(v151 + 200) = v150;
                      if ((*(v150 + 20) & 2) != 0)
                      {
                        if ((shared_group & 1) == 0)
                        {
                          __assert_rtn("do_select_parameters", "handshake_server.cc", 986, "has_ecdhe_group");
                        }

                        *(v151 + 6) = v224;
                      }

                      v152 = *(this + 1);
                      v153 = *(this + 400);
                      v154 = v153 & 0xFFFFFFDF;
                      v157 = (v153 & 0x2000000) == 0;
                      v155 = v153 & 0xFFFFFFDF | (32 * (*(v152 + 308) & 1));
                      *(this + 400) = v155;
                      v156 = *(v152 + 308) & 4;
                      v157 = v157 || v156 == 0;
                      if (v157)
                      {
                        v158 = v155;
                      }

                      else
                      {
                        v158 = v154;
                      }

                      *(this + 400) = v158;
                      v159 = bssl::ssl_cipher_uses_certificate_auth(v150, v146);
                      v160 = *(this + 400);
                      if (!v159)
                      {
                        v160 &= ~0x20u;
                        *(this + 400) = v160;
                      }

                      if ((v160 & 0x20) == 0)
                      {
                        *(*(this + 192) + 176) = 0;
                      }
                    }

                    v226 = 50;
                    if (bssl::ssl_negotiate_alpn(this, &v226, v227))
                    {
                      v162 = bssl::ssl_protocol_version(v44, v161);
                      if (bssl::SSLTranscript::InitHash((this + 424), v162, *(this + 196)))
                      {
                        if ((*(this + 400) & 0x40020) == 0)
                        {
                          bssl::SSLTranscript::FreeBuffer(this + 53);
                        }

                        if (bssl::ssl_hash_message(this, v219))
                        {
                          (*(*v44 + 32))(v44);
                          *(this + 5) = 6;
                          prev_session = 1;
                          goto LABEL_448;
                        }
                      }

                      v167 = 80;
                    }

                    else
                    {
                      v167 = v226;
                    }

                    bssl::ssl_send_alert(v44, 2, v167);
                  }

LABEL_447:
                  prev_session = 0;
LABEL_448:
                  v173 = *v213;
                  *v213 = 0;
                  if (v173)
                  {
                    SSL_SESSION_free(v173);
                  }

                  goto LABEL_450;
                }
              }

              *(this + 400) = *(this + 400) & 0xFFFF7FFF | ((v215[0] & 1) << 15);
              bssl::ssl_set_session(v44, 0, v134);
              if (!bssl::ssl_get_new_session(this, v147))
              {
                goto LABEL_447;
              }

              if ((*(this + 1601) & 0x80) == 0 && (*(*(v44 + 120) + 300) & 2) != 0)
              {
                v148 = *(this + 192);
                *(v148 + 91) = 32;
                RAND_bytes((v148 + 59), 32);
              }

              goto LABEL_378;
            }

            goto LABEL_553;
          }

          v53 = bssl::choose_params(this, 0, v48, shared_group);
          if (v53)
          {
            v128 = v127;
            goto LABEL_302;
          }

LABEL_289:
          bssl::ssl_send_alert(v44, 2, 40);
          prev_session = 0;
        }

        else
        {
          prev_session = 0;
        }

LABEL_450:
        OPENSSL_free(v216[0]);
        *v222 = 0;
        BUF_MEM_free(v48);
        goto LABEL_413;
      case 6:
        v59 = *(this + 400);
        if ((v59 & 0x2000000) != 0 && (*(*(this + 196) + 20) & 2) == 0)
        {
          v59 &= ~0x2000000u;
          *(this + 400) = v59;
        }

        v60 = *this;
        v61 = *(*this + 104);
        if (v61 && !*(v61 + 368))
        {
          v59 &= ~0x2000000u;
          *(this + 400) = v59;
        }

        v62 = *(this + 199);
        if (v62 && (v59 & 0x80000) == 0 && *(v62 + 8) == 32)
        {
          v63 = *(v60 + 6);
          v64 = *(*v62 + 16);
          *(v63 + 16) = **v62;
          *(v63 + 32) = v64;
        }

        else
        {
          *&v227[0] = 0xAAAAAAAAAAAAAAAALL;
          *(&v227[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
          bssl::ssl_get_current_time(v60, v227);
          *(*(v60 + 6) + 16) = bswap32(v227[0]);
          if (!RAND_bytes((*(v60 + 6) + 20), 28))
          {
            goto LABEL_412;
          }

          if (v62 && (*(this + 1602) & 8) != 0)
          {
            v79 = *(v60 + 6);
            if (!bssl::Array<unsigned char>::InitUninitialized(v62, 0x20uLL))
            {
              goto LABEL_412;
            }

            v80 = 0;
            v81 = *v62;
            do
            {
              *(v81 + v80) = *(v79 + 16 + v80);
              ++v80;
            }

            while (v80 != 32);
          }
        }

        if (bssl::ssl_supports_version(this, 0x304))
        {
          v83 = bssl::ssl_protocol_version(v60, v82);
          v84 = "DOWNGRD";
          if (v83 == 771)
          {
            v84 = &bssl::kJDK11DowngradeRandom;
            if ((*(this + 1602) & 0x80) == 0)
            {
              v84 = &bssl::kTLS13DowngradeRandom;
            }
          }

          *(*(v60 + 6) + 40) = *v84;
        }

        v86 = v210;
        v85 = v211;
        if (!*(v60 + 13))
        {
          v87 = *(this + 192);
          v86 = (v87 + 59);
          v85 = (v87 + 91);
        }

        v88 = *v85;
        *&v89 = 0xAAAAAAAAAAAAAAAALL;
        *(&v89 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v227[1] = v89;
        v228 = v89;
        v227[0] = v89;
        CBB_zero(v227);
        *&v90 = 0xAAAAAAAAAAAAAAAALL;
        *(&v90 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v220 = v90;
        v221 = v90;
        v218 = v90;
        *v219 = v90;
        *v216 = v90;
        v217 = v90;
        if (!(*(*v60 + 88))(v60, v227, v219, 2) || !CBB_add_u16(v219, *(*(v60 + 6) + 208)) || !CBB_add_bytes(v219, (*(v60 + 6) + 16), 0x20uLL) || !CBB_add_u8_length_prefixed(v219, v216) || !CBB_add_bytes(v216, v86, v88) || (protocol_id = SSL_CIPHER_get_protocol_id(*(this + 196)), !CBB_add_u16(v219, protocol_id)) || !CBB_add_u8(v219, 0) || !bssl::ssl_add_serverhello_tlsext(this, v219) || (bssl::ssl_add_message_cbb(v60, v227) & 1) == 0)
        {
          ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1120);
          prev_session = 0;
          goto LABEL_471;
        }

        if (!*(v60 + 13))
        {
          v92 = 7;
          goto LABEL_494;
        }

        if ((*(this + 1602) & 8) == 0)
        {
          v92 = 19;
LABEL_494:
          *(this + 5) = v92;
          prev_session = 1;
          goto LABEL_471;
        }

        prev_session = 17;
        goto LABEL_471;
      case 7:
        v27 = *this;
        *&v28 = 0xAAAAAAAAAAAAAAAALL;
        *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v227[1] = v28;
        v228 = v28;
        v227[0] = v28;
        CBB_zero(v227);
        if (!bssl::ssl_cipher_uses_certificate_auth(*(this + 196), v29))
        {
          goto LABEL_50;
        }

        if (!*v209)
        {
          __assert_rtn("do_send_server_certificate", "handshake_server.cc", 1141, "hs->credential != nullptr");
        }

        if (!bssl::ssl_send_tls12_certificate(this, v30))
        {
          goto LABEL_261;
        }

        if ((*(this + 1600) & 0x40) != 0)
        {
          *&v120 = 0xAAAAAAAAAAAAAAAALL;
          *(&v120 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v220 = v120;
          v221 = v120;
          v218 = v120;
          *v219 = v120;
          *v216 = v120;
          v217 = v120;
          if (!(*(*v27 + 88))(v27, v227, v219, 22) || !CBB_add_u8(v219, 1u) || !CBB_add_u24_length_prefixed(v219, v216) || (v121 = CRYPTO_BUFFER_data(*(*v209 + 10)), v122 = CRYPTO_BUFFER_len(*(*v209 + 10)), !CBB_add_bytes(v216, v121, v122)) || (bssl::ssl_add_message_cbb(v27, v227) & 1) == 0)
          {
            ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1157);
            goto LABEL_261;
          }
        }

LABEL_50:
        v31 = *(this + 196);
        v32 = *(v31 + 5);
        v33 = *(v31 + 6);
        if ((bssl::ssl_cipher_requires_server_key_exchange(v31, v30) & 1) != 0 || (v33 & 8) != 0 && *(*(this + 1) + 56))
        {
          *&v34 = 0xAAAAAAAAAAAAAAAALL;
          *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v220 = v34;
          v221 = v34;
          *v219 = v34;
          if (!CBB_init(v227, 0xC0uLL) || !CBB_add_bytes(v227, (v27[6] + 48), 0x20uLL) || !CBB_add_bytes(v227, (v27[6] + 16), 0x20uLL))
          {
            goto LABEL_261;
          }

          if ((v33 & 8) != 0)
          {
            v35 = *(*(this + 1) + 56);
            v36 = v35 ? strlen(v35) : 0;
            if (!CBB_add_u16_length_prefixed(v227, v219) || !CBB_add_bytes(v219, *(*(this + 1) + 56), v36))
            {
              goto LABEL_261;
            }
          }

          if ((v32 & 2) != 0)
          {
            v137 = *(this + 192);
            if (!*(v137 + 6))
            {
              __assert_rtn("do_send_server_certificate", "handshake_server.cc", 1191, "hs->new_session->group_id != 0");
            }

            bssl::SSLKeyShare::Create(*(v137 + 6), v216);
            v138 = v216[0];
            v216[0] = 0;
            std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](this + 49, v138);
            std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](v216, 0);
            if (!*(this + 49) || !CBB_add_u8(v227, 3u) || !CBB_add_u16(v227, *(*(this + 192) + 6)) || !CBB_add_u8_length_prefixed(v227, v219))
            {
              goto LABEL_261;
            }

            v139 = *(this + 199);
            if (v139 && (*(this + 1602) & 8) == 0 && *(v139 + 184) == *(*(this + 192) + 6) && *(v139 + 200) && (v140 = *(v139 + 216)) != 0 && (v216[0] = *(v139 + 208), v216[1] = v140, ((*(**(this + 49) + 56))(*(this + 49), v216) & 1) != 0))
            {
              if (!CBB_add_bytes(v219, *(v139 + 192), *(v139 + 200)))
              {
                goto LABEL_261;
              }
            }

            else
            {
              if (!(*(**(this + 49) + 24))(*(this + 49), v219))
              {
                goto LABEL_261;
              }

              if (v139 && (*(this + 1602) & 8) != 0)
              {
                *&v168 = 0xAAAAAAAAAAAAAAAALL;
                *(&v168 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v217 = v168;
                v218 = v168;
                *v216 = v168;
                CBB_zero(v216);
                v169 = CBB_data(v219);
                v170 = CBB_len(v219);
                if (!bssl::Array<unsigned char>::InitUninitialized(v139 + 192, v170))
                {
                  goto LABEL_503;
                }

                if (v170)
                {
                  v171 = *(v139 + 192);
                  do
                  {
                    v172 = *v169++;
                    *v171++ = v172;
                    --v170;
                  }

                  while (v170);
                }

                if (!CBB_init(v216, 0x20uLL) || !(*(**(this + 49) + 48))(*(this + 49), v216) || !bssl::CBBFinishArray(v216, v139 + 208))
                {
LABEL_503:
                  CBB_cleanup(v216);
                  goto LABEL_261;
                }

                *(v139 + 184) = *(*(this + 192) + 6);
                CBB_cleanup(v216);
              }
            }
          }

          else if ((v32 & 8) == 0)
          {
            __assert_rtn("do_send_server_certificate", "handshake_server.cc", 1235, "alg_k & SSL_kPSK");
          }

          if (!bssl::CBBFinishArray(v227, v208))
          {
LABEL_261:
            prev_session = 0;
            goto LABEL_471;
          }
        }

        *(this + 5) = 8;
        prev_session = 1;
        goto LABEL_471;
      case 8:
        if (!*(this + 184))
        {
          v6 = 9;
          goto LABEL_231;
        }

        v68 = *this;
        *&v69 = 0xAAAAAAAAAAAAAAAALL;
        *(&v69 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v227[1] = v69;
        v228 = v69;
        v227[0] = v69;
        CBB_zero(v227);
        *&v70 = 0xAAAAAAAAAAAAAAAALL;
        *(&v70 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v220 = v70;
        v221 = v70;
        v218 = v70;
        *v219 = v70;
        *v216 = v70;
        v217 = v70;
        if (!(*(*v68 + 88))(v68, v227, v219, 12))
        {
          goto LABEL_470;
        }

        v71 = *(this + 184);
        if (v71 < 0x40 || !CBB_add_bytes(v219, *v208 + 8, v71 - 64))
        {
          goto LABEL_470;
        }

        if (!bssl::ssl_cipher_uses_certificate_auth(*(this + 196), v72))
        {
          goto LABEL_468;
        }

        LOWORD(v215[0]) = -21846;
        if (bssl::tls1_choose_signature_algorithm(this, *(this + 190), v215, v73))
        {
          if (bssl::ssl_protocol_version(v68, v74) < 0x303 || CBB_add_u16(v219, LOWORD(v215[0])))
          {
            v75 = EVP_PKEY_size(*(*v209 + 1));
            *v213 = 0xAAAAAAAAAAAAAAAALL;
            if (CBB_add_u16_length_prefixed(v219, v216) && CBB_reserve(v216, v213, v75))
            {
              *v222 = v75;
              v76 = bssl::ssl_private_key_sign(this, *v213, v222, v75, LOWORD(v215[0]), *(this + 183), *(this + 184));
              if (v76)
              {
                if (v76 == 1)
                {
                  prev_session = 9;
                  goto LABEL_471;
                }

                if (v76 != 2)
                {
LABEL_468:
                  *(this + 400) |= 0x1000000u;
                  if (bssl::ssl_add_message_cbb(v68, v227))
                  {
                    OPENSSL_free(*v208);
                    *v208 = 0;
                    v208[1] = 0;
                    prev_session = 1;
                    *(this + 5) = 9;
                    goto LABEL_471;
                  }
                }
              }

              else if (CBB_did_write(v216, *v222))
              {
                goto LABEL_468;
              }
            }

LABEL_470:
            prev_session = 0;
LABEL_471:
            CBB_cleanup(v227);
            goto LABEL_413;
          }

          ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1277);
          v136 = 80;
        }

        else
        {
          v136 = 40;
        }

        bssl::ssl_send_alert(v68, 2, v136);
        goto LABEL_470;
      case 9:
        if ((*(this + 1602) & 8) != 0)
        {
          prev_session = 17;
          goto LABEL_413;
        }

        v14 = *this;
        *&v15 = 0xAAAAAAAAAAAAAAAALL;
        *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v227[1] = v15;
        v228 = v15;
        v227[0] = v15;
        CBB_zero(v227);
        *&v16 = 0xAAAAAAAAAAAAAAAALL;
        *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v220 = v16;
        v221 = v16;
        *v219 = v16;
        if (*(this + 1600) & 0x20) == 0 || (v217 = v16, v218 = v16, *v216 = v16, *&v213[16] = v16, v214 = v16, *v213 = v16, (*(*v14 + 88))(v14, v227, v219, 13)) && CBB_add_u8_length_prefixed(v219, v216) && CBB_add_u8(v216, 1u) && CBB_add_u8(v216, 0x40u) && (bssl::ssl_protocol_version(v14, v114) < 0x303 || CBB_add_u16_length_prefixed(v219, v213) && bssl::tls12_add_verify_sigalgs(this, v213)) && bssl::ssl_add_client_CA_list(this, v219) && (bssl::ssl_add_message_cbb(v14, v227))
        {
          if (*(*v14 + 88))(v14, v227, v219, 14) && (bssl::ssl_add_message_cbb(v14, v227))
          {
            *(this + 5) = 10;
            prev_session = 4;
          }

          else
          {
            ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1346);
            prev_session = 0;
          }
        }

        else
        {
          ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1338);
          prev_session = 0;
        }

        goto LABEL_471;
      case 10:
        v66 = *this;
        v67 = *(this + 400);
        if ((v67 & 0x40000) != 0 && *(*(this + 196) + 20) == 2)
        {
          goto LABEL_109;
        }

        if ((v67 & 0x20) == 0)
        {
          goto LABEL_156;
        }

        *&v228 = 0xAAAAAAAAAAAAAAAALL;
        *&v104 = 0xAAAAAAAAAAAAAAAALL;
        *(&v104 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v227[0] = v104;
        v227[1] = v104;
        if (!(*(*v66 + 24))(v66, v227))
        {
          goto LABEL_193;
        }

        if (!bssl::ssl_check_message_type(v66, v227, 11) || !bssl::ssl_hash_message(this, v227))
        {
          goto LABEL_412;
        }

        *v219 = *(v227 + 8);
        LOBYTE(v216[0]) = 50;
        v105 = *(this + 192);
        if ((*(*(this + 1) + 309) & 0x20) != 0)
        {
          v106 = (v105 + 272);
        }

        else
        {
          v106 = 0;
        }

        if (!bssl::ssl_parse_cert_chain(v216, (v105 + 136), v207, v106, v219, *(*(v66 + 15) + 800)))
        {
          bssl::ssl_send_alert(v66, 2, LOBYTE(v216[0]));
          goto LABEL_412;
        }

        if (v219[1] || ((*(*(*(v66 + 15) + 16) + 48))(*(this + 192)) & 1) == 0)
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1391);
          bssl::ssl_send_alert(v66, 2, 50);
          goto LABEL_412;
        }

        if (EVP_MD_CTX_md(*(*(this + 192) + 136)))
        {
          if ((*(*(this + 1) + 309) & 0x20) != 0)
          {
            *(*(this + 192) + 440) |= 2u;
          }
        }

        else
        {
          bssl::SSLTranscript::FreeBuffer(this + 53);
          if ((*(*(this + 1) + 308) & 2) != 0)
          {
            ERR_put_error(16, 0, 192, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1402);
            bssl::ssl_send_alert(v66, 2, 40);
            goto LABEL_412;
          }

          *(*(this + 192) + 176) = 0;
        }

        (*(*v66 + 32))(v66);
LABEL_156:
        v6 = 11;
        goto LABEL_231;
      case 11:
        if (!EVP_MD_CTX_md(*(*(this + 192) + 136)))
        {
          goto LABEL_158;
        }

        v7 = bssl::ssl_verify_peer_cert(this, cipher_by_value);
        if (v7 == 1)
        {
          goto LABEL_412;
        }

        if (v7 == 2)
        {
          prev_session = 16;
          goto LABEL_413;
        }

LABEL_158:
        v6 = 12;
        goto LABEL_231;
      case 12:
        v8 = *this;
        *&v214 = 0xAAAAAAAAAAAAAAAALL;
        *&v9 = 0xAAAAAAAAAAAAAAAALL;
        *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v213 = v9;
        *&v213[16] = v9;
        if (!(*(*v8 + 24))(v8, v213))
        {
          goto LABEL_193;
        }

        if (!bssl::ssl_check_message_type(v8, v213, 16))
        {
          goto LABEL_412;
        }

        *v222 = *&v213[8];
        v10 = *(this + 196);
        v12 = *(v10 + 20);
        v11 = *(v10 + 24);
        if ((v11 & 8) == 0)
        {
          goto LABEL_19;
        }

        *&v227[0] = 0xAAAAAAAAAAAAAAAALL;
        *(&v227[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
        if (!CBS_get_u16_length_prefixed(v222, v227) || (v12 & 8) != 0 && *&v222[2])
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1459);
          v119 = 50;
LABEL_411:
          bssl::ssl_send_alert(v8, 2, v119);
          goto LABEL_412;
        }

        if (*(&v227[0] + 1) > 0x80uLL || CBS_contains_zero_byte(v227))
        {
          ERR_put_error(16, 0, 136, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1466);
          v119 = 47;
          goto LABEL_411;
        }

        v219[0] = 0;
        if (!CBS_strdup(v227, v219))
        {
          bssl::ssl_send_alert(v8, 2, 80);
          goto LABEL_412;
        }

        std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100]((*(this + 192) + 128), v219[0]);
LABEL_19:
        v215[0] = 0;
        v215[1] = 0;
        if ((v12 & 1) == 0)
        {
          if ((v12 & 2) != 0)
          {
            *&v227[0] = 0xAAAAAAAAAAAAAAAALL;
            *(&v227[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
            if (!CBS_get_u8_length_prefixed(v222, v227) || *&v222[2])
            {
              ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1560);
              bssl::ssl_send_alert(v8, 2, 50);
              goto LABEL_539;
            }

            LOBYTE(v219[0]) = 50;
            if (((*(**(this + 49) + 40))(*(this + 49), v215, v219, *&v227[0], *(&v227[0] + 1)) & 1) == 0)
            {
              bssl::ssl_send_alert(v8, 2, LOBYTE(v219[0]));
              goto LABEL_539;
            }

            std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](this + 49, 0);
            std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](this + 50, 0);
          }

          else if ((v12 & 8) == 0)
          {
            ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1576);
            v13 = 40;
LABEL_538:
            bssl::ssl_send_alert(v8, 2, v13);
            goto LABEL_539;
          }

          if ((v11 & 8) == 0)
          {
LABEL_316:
            if (!bssl::ssl_hash_message(this, v213))
            {
              goto LABEL_539;
            }

            v135 = *(this + 192);
            *(v135 + 58) = 48;
            if (!bssl::tls1_generate_master_secret(this, (v135 + 10), 48, v215[0], v215[1]))
            {
              goto LABEL_539;
            }

            *(*(this + 192) + 440) = *(*(this + 192) + 440) & 0xFE | *(this + 1602) & 1;
            *(this + 400) |= 0x1000000u;
            (*(*v8 + 32))(v8);
            *(this + 5) = 13;
            prev_session = 1;
LABEL_540:
            OPENSSL_free(v215[0]);
            goto LABEL_413;
          }

          goto LABEL_519;
        }

        *&v227[0] = 0xAAAAAAAAAAAAAAAALL;
        *(&v227[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
        if (!CBS_get_u16_length_prefixed(v222, v227) || *&v222[2])
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1485);
          bssl::ssl_send_alert(v8, 2, 50);
          goto LABEL_539;
        }

        v219[0] = 0;
        v219[1] = 0;
        v123 = EVP_PKEY_size(*(*v209 + 1));
        if ((bssl::Array<unsigned char>::InitUninitialized(v219, v123) & 1) == 0)
        {
          OPENSSL_free(v219[0]);
          goto LABEL_539;
        }

        v216[0] = 0xAAAAAAAAAAAAAAAALL;
        v124 = bssl::ssl_private_key_decrypt(this, v219[0], v216, v219[1], *&v227[0], *(&v227[0] + 1));
        if (v124 == 1)
        {
          prev_session = 9;
LABEL_465:
          OPENSSL_free(v219[0]);
          goto LABEL_540;
        }

        if (v124 == 2)
        {
          goto LABEL_464;
        }

        if (v216[0] == v219[1])
        {
          if (!bssl::Array<unsigned char>::InitUninitialized(v215, 0x30uLL) || !RAND_bytes(v215[0], v215[1]))
          {
            goto LABEL_464;
          }

          if (v216[0] >= (v215[1] + 11))
          {
            if (v219[1] < 2)
            {
              goto LABEL_553;
            }

            v186 = v216[0] - v215[1];
            v187 = (((*(v219[0] + 1) ^ 2) - 1) & (*v219[0] - 1)) >> 63;
            v188 = v216[0] - v215[1] - 1;
            if (v188 >= 3)
            {
              if (v219[1] - 2 <= v186 - 4)
              {
                goto LABEL_553;
              }

              v189 = v186 - 3;
              v190 = v219[0] + 2;
              do
              {
                if (!*v190++)
                {
                  LOBYTE(v187) = 0;
                }

                --v189;
              }

              while (v189);
            }

            if (v219[1] <= v188 || v219[1] <= v186 || v219[1] <= v186 + 1)
            {
LABEL_553:
              abort();
            }

            if (v215[1])
            {
              v192 = 0;
              v193 = v187 & ((((*(v219[0] + v186) ^ HIBYTE(*(this + 802))) - 1) & (*(v219[0] + v188) - 1) & ((*(this + 802) ^ *(v219[0] + (v186 + 1))) - 1)) >> 63);
              while (v219[1] > &v186[v192])
              {
                *(v215[0] + v192) = v193 & *(v219[0] + v186 + v192) | *(v215[0] + v192) & ~v193;
                if (++v192 >= v215[1])
                {
                  goto LABEL_518;
                }
              }

              goto LABEL_553;
            }

LABEL_518:
            bssl::Array<unsigned char>::~Array(v219);
            if ((v11 & 8) == 0)
            {
              goto LABEL_316;
            }

LABEL_519:
            v194 = *(this + 1);
            if (!*(v194 + 72))
            {
              ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1585);
              v13 = 80;
              goto LABEL_538;
            }

            *&v195 = 0xAAAAAAAAAAAAAAAALL;
            *(&v195 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v240 = v195;
            v241 = v195;
            v238 = v195;
            v239 = v195;
            v236 = v195;
            v237 = v195;
            v234 = v195;
            v235 = v195;
            v232 = v195;
            v233 = v195;
            v230 = v195;
            v231 = v195;
            v228 = v195;
            v229 = v195;
            v227[0] = v195;
            v227[1] = v195;
            v196 = (*(v194 + 72))(v8, *(*(this + 192) + 128), v227, 256);
            v197 = v196;
            if (v196 >= 0x101)
            {
              ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1595);
              v13 = 80;
              goto LABEL_538;
            }

            if (!v196)
            {
              ERR_put_error(16, 0, 195, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1600);
              v13 = 115;
              goto LABEL_538;
            }

            if ((v12 & 8) == 0)
            {
              goto LABEL_528;
            }

            if (bssl::Array<unsigned char>::InitUninitialized(v215, v196))
            {
              if (v215[1])
              {
                bzero(v215[0], v215[1]);
              }

LABEL_528:
              *&v198 = 0xAAAAAAAAAAAAAAAALL;
              *(&v198 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v220 = v198;
              v221 = v198;
              *v219 = v198;
              CBB_zero(v219);
              *&v199 = 0xAAAAAAAAAAAAAAAALL;
              *(&v199 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v217 = v199;
              v218 = v199;
              *v216 = v199;
              v200 = CBB_init(v219, v215[1] + v197 + 4) && CBB_add_u16_length_prefixed(v219, v216) && CBB_add_bytes(v216, v215[0], v215[1]) && CBB_add_u16_length_prefixed(v219, v216) && CBB_add_bytes(v216, v227, v197) && bssl::CBBFinishArray(v219, v215);
              CBB_cleanup(v219);
              if (!v200)
              {
                goto LABEL_539;
              }

              goto LABEL_316;
            }

LABEL_539:
            prev_session = 0;
            goto LABEL_540;
          }

          v125 = 1528;
        }

        else
        {
          v125 = 1511;
        }

        ERR_put_error(16, 0, 138, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", v125);
        bssl::ssl_send_alert(v8, 2, 51);
LABEL_464:
        prev_session = 0;
        goto LABEL_465;
      case 13:
        if (*(this + 191))
        {
          v54 = *this;
          *&v228 = 0xAAAAAAAAAAAAAAAALL;
          *&v55 = 0xAAAAAAAAAAAAAAAALL;
          *(&v55 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v227[0] = v55;
          v227[1] = v55;
          if (!(*(*v54 + 24))(v54, v227))
          {
LABEL_193:
            prev_session = 3;
            goto LABEL_413;
          }

          if (!bssl::ssl_check_message_type(v54, v227, 15))
          {
            goto LABEL_412;
          }

          v56 = OPENSSL_sk_value(*(*(this + 192) + 136), 0);
          v219[0] = 0xAAAAAAAAAAAAAAAALL;
          v219[1] = 0xAAAAAAAAAAAAAAAALL;
          CRYPTO_BUFFER_init_CBS(v56, v219);
          if (!bssl::ssl_cert_check_key_usage(v219, 0))
          {
            goto LABEL_412;
          }

          *v216 = *(v227 + 8);
          memset(v213, 170, 16);
          LOWORD(v222[0]) = 0;
          if (bssl::ssl_protocol_version(v54, cipher_by_value) < 0x303)
          {
            if ((bssl::tls1_get_legacy_signature_algorithm(v222, *v207, v57) & 1) == 0)
            {
              ERR_put_error(16, 0, 193, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1700);
              bssl::ssl_send_alert(v54, 2, 43);
              goto LABEL_412;
            }
          }

          else
          {
            if (!CBS_get_u16(v216, v222))
            {
              ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1687);
              bssl::ssl_send_alert(v54, 2, 50);
              goto LABEL_412;
            }

            LOBYTE(v215[0]) = 50;
            if (!bssl::tls12_check_peer_sigalg(this, v215, LOWORD(v222[0]), *(this + 191), v58))
            {
              bssl::ssl_send_alert(v54, 2, LOBYTE(v215[0]));
              goto LABEL_412;
            }

            *(*(this + 192) + 8) = v222[0];
          }

          if (!CBS_get_u16_length_prefixed(v216, v213) || v216[1])
          {
            ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1708);
            bssl::ssl_send_alert(v54, 2, 50);
            goto LABEL_412;
          }

          if (!bssl::ssl_public_key_verify(v54, *v213, *&v213[8], LOWORD(v222[0]), *v207, *(*(this + 53) + 8), **(this + 53)))
          {
            ERR_put_error(16, 0, 114, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1715);
            bssl::ssl_send_alert(v54, 2, 51);
            goto LABEL_412;
          }

          bssl::SSLTranscript::FreeBuffer(this + 53);
          if (!bssl::ssl_hash_message(this, v227))
          {
            goto LABEL_412;
          }

          (*(*v54 + 32))(v54);
        }

        else
        {
          bssl::SSLTranscript::FreeBuffer(this + 53);
        }

        v6 = 14;
        goto LABEL_231;
      case 14:
        if ((*(this + 1602) & 4) != 0 && *(*this + 104))
        {
          goto LABEL_109;
        }

        prev_session = 15;
LABEL_9:
        *(this + 5) = prev_session;
        goto LABEL_413;
      case 15:
        if (!bssl::tls1_change_cipher_state(this, 0))
        {
          goto LABEL_412;
        }

        v6 = 16;
        goto LABEL_231;
      case 16:
        if ((*(this + 1601) & 0x40) == 0)
        {
          goto LABEL_5;
        }

        v93 = *this;
        *&v228 = 0xAAAAAAAAAAAAAAAALL;
        *&v94 = 0xAAAAAAAAAAAAAAAALL;
        *(&v94 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v227[0] = v94;
        v227[1] = v94;
        if (!(*(*v93 + 24))(v93, v227))
        {
          goto LABEL_193;
        }

        if (!bssl::ssl_check_message_type(v93, v227, 67) || !bssl::ssl_hash_message(this, v227))
        {
          goto LABEL_412;
        }

        *v219 = *(v227 + 8);
        v216[0] = 0xAAAAAAAAAAAAAAAALL;
        v216[1] = 0xAAAAAAAAAAAAAAAALL;
        memset(v213, 170, 16);
        if (!CBS_get_u8_length_prefixed(v219, v216) || !CBS_get_u8_length_prefixed(v219, v213) || v219[1])
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1771);
          bssl::ssl_send_alert(v93, 2, 50);
          goto LABEL_412;
        }

        v95 = *(v93 + 6);
        v96 = v216[0];
        v97 = v216[1];
        if (!bssl::Array<unsigned char>::InitUninitialized(v95 + 480, v216[1]))
        {
          goto LABEL_412;
        }

        if (v97)
        {
          v98 = *(v95 + 480);
          do
          {
            v99 = *v96++;
            *v98++ = v99;
            --v97;
          }

          while (v97);
        }

        (*(*v93 + 32))(v93);
LABEL_5:
        v6 = 17;
        goto LABEL_231;
      case 17:
        if ((*(this + 1603) & 2) == 0)
        {
          goto LABEL_65;
        }

        v100 = *this;
        *&v228 = 0xAAAAAAAAAAAAAAAALL;
        *&v101 = 0xAAAAAAAAAAAAAAAALL;
        *(&v101 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v227[0] = v101;
        v227[1] = v101;
        if (!(*(*v100 + 24))(v100, v227))
        {
          goto LABEL_193;
        }

        if (!bssl::ssl_check_message_type(v100, v227, 203) || !bssl::tls1_verify_channel_id(this, v227) || !bssl::ssl_hash_message(this, v227))
        {
          goto LABEL_412;
        }

        (*(*v100 + 32))(v100);
LABEL_65:
        v6 = 18;
        goto LABEL_231;
      case 18:
        v65 = *this;
        prev_session = bssl::ssl_get_finished(this, cipher_by_value);
        if (prev_session != 1)
        {
          goto LABEL_413;
        }

        if (*(v65 + 104))
        {
          v6 = 20;
          goto LABEL_231;
        }

        *(this + 5) = 19;
        if ((*(*(v65 + 48) + 222) & 0x80) != 0 && !bssl::tls1_record_handshake_hashes_for_channel_id(this, cipher_by_value))
        {
          goto LABEL_412;
        }

        goto LABEL_232;
      case 19:
        v77 = *this;
        if ((*(this + 1601) & 0x80) == 0)
        {
          goto LABEL_125;
        }

        *v213 = 0;
        v102 = *(v77 + 13);
        if (v102)
        {
          bssl::SSL_SESSION_dup(v102, 2, v227);
          prev_session = *&v227[0];
          *v213 = *&v227[0];
          if (!*&v227[0])
          {
            goto LABEL_413;
          }

          bssl::ssl_session_rebase_time(v77, *&v227[0], a3);
          v103 = prev_session;
        }

        else
        {
          bssl::ssl_session_rebase_time(v77, *(this + 192), a3);
          prev_session = 0;
          v103 = *(this + 192);
        }

        *&v116 = 0xAAAAAAAAAAAAAAAALL;
        *(&v116 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v227[1] = v116;
        v228 = v116;
        v227[0] = v116;
        CBB_zero(v227);
        *&v117 = 0xAAAAAAAAAAAAAAAALL;
        *(&v117 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v220 = v117;
        v221 = v117;
        v218 = v117;
        *v219 = v117;
        *v216 = v117;
        v217 = v117;
        if (!(*(*v77 + 88))(v77, v227, v219, 4) || !CBB_add_u32(v219, *(v103 + 184)) || !CBB_add_u16_length_prefixed(v219, v216) || !bssl::ssl_encrypt_ticket(this, v216, v103))
        {
          CBB_cleanup(v227);
          *v213 = 0;
          if (prev_session)
          {
            SSL_SESSION_free(prev_session);
          }

          goto LABEL_412;
        }

        v118 = bssl::ssl_add_message_cbb(v77, v227);
        CBB_cleanup(v227);
        *v213 = 0;
        if (prev_session)
        {
          SSL_SESSION_free(prev_session);
        }

        if ((v118 & 1) == 0)
        {
          goto LABEL_412;
        }

LABEL_125:
        if (!(*(*v77 + 112))(v77, cipher_by_value) || !bssl::tls1_change_cipher_state(this, 1) || !bssl::ssl_send_finished(this, cipher_by_value))
        {
          goto LABEL_412;
        }

        if (*(v77 + 13))
        {
          v78 = 14;
        }

        else
        {
          v78 = 20;
        }

        *(this + 5) = v78;
        prev_session = 4;
        goto LABEL_413;
      case 20:
        if ((*(this + 1602) & 4) != 0)
        {
LABEL_109:
          prev_session = 7;
          goto LABEL_413;
        }

        v40 = *this;
        (*(**this + 128))(*this, cipher_by_value);
        v41 = *(this + 192);
        if (v41 && ((*(*(this + 1) + 309) & 0x20) == 0 || (std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100]((v41 + 136), 0), (*(*(*(v40 + 120) + 16) + 64))(*(this + 192)), (v41 = *(this + 192)) != 0)))
        {
          if (*(v40 + 104))
          {
            bssl::ssl_server_handshake();
          }

          v42 = *(v40 + 48);
          *(this + 192) = 0;
          std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100]((v42 + 472), v41);
          *(*(*(v40 + 48) + 472) + 440) &= ~4u;
          *(this + 400) |= 8u;
          *(*(v40 + 48) + 222) |= 0x10u;
          bssl::ssl_update_cache(v40, v43);
        }

        else
        {
          v115 = *(v40 + 104);
          if (!v115)
          {
            bssl::ssl_server_handshake();
          }

          SSL_SESSION_up_ref(*(v40 + 104));
          std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100]((*(v40 + 48) + 472), v115);
          *(this + 400) |= 8u;
          *(*(v40 + 48) + 222) |= 0x10u;
        }

        v6 = 21;
        goto LABEL_231;
      case 21:
        bssl::ssl_do_info_callback(*this, 0x20);
        prev_session = 1;
        goto LABEL_544;
      default:
        goto LABEL_412;
    }
  }
}

uint64_t nw_protocol_boringssl_replace_input_handler(uint64_t result, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (result)
  {
    result = nw_protocol_downcast();
    if (result)
    {
      v3 = result;
      if ((*(result + 435) & 1) == 0)
      {
        nw_protocol_boringssl_replace_input_handler_cold_1();
      }

      if (nw_protocol_get_input_handler() == a2)
      {
        nw_protocol_set_input_handler();
        nw_protocol_set_output_handler();
        if (nw_protocol_supports_external_data_is_valid() && nw_protocol_supports_external_data())
        {
          v4 = *(v3 + 349) | 0x10;
        }

        else
        {
          v4 = *(v3 + 349) & 0xEF;
        }

        *(v3 + 349) = v4;
        result = 1;
      }

      else
      {
        if ((*(v3 + 435) & 1) == 0)
        {
          v6 = g_boringssl_log;
          if (g_boringssl_log)
          {
            result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
            if (!result)
            {
              goto LABEL_13;
            }

            v7 = v6;
            v8 = 136447490;
            v9 = "nw_protocol_boringssl_replace_input_handler";
            v10 = 1024;
            v11 = 1381;
            v12 = 2082;
            v13 = v3 + 351;
            v14 = 2048;
            v15 = v3;
            v16 = 2048;
            input_handler = nw_protocol_get_input_handler();
            v18 = 2048;
            v19 = a2;
            _os_log_error_impl(&dword_1A8FF5000, v7, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] old input handler does not match (%p != %p)", &v8, 0x3Au);
          }
        }

        result = 0;
      }
    }
  }

LABEL_13:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void nw_protocol_boringssl_replace_input_handler_cold_1()
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

void nw_protocol_boringssl_connected_cold_4()
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

uint64_t __nw_protocol_boringssl_write_frames_block_invoke(void *a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = nw_frame_uses_external_data();
  v5 = a1[4];
  v6 = *(v5 + 120);
  if (v6)
  {
    memcpy((a1[7] + *(*(a1[6] + 8) + 24)), v6, *(v5 + 128));
    *(*(a1[6] + 8) + 24) += *(a1[4] + 128);
    v7 = a1[4];
    v8 = *(v7 + 112);
    *(v7 + 112) = 0;

    *(a1[4] + 120) = 0;
    *(a1[4] + 128) = 0;
  }

  else if (v4)
  {
    __src = 0;
    v9 = nw_frame_copy_external_data();
    v10 = v9;
    if (v9)
    {
      v11 = nw_dispatch_data_create_subrange_map(v9, 0, 0, &__src);
      if (v11)
      {
        *(*(a1[6] + 8) + 24) = *(*(a1[6] + 8) + 24);
      }

      else
      {
        v12 = a1[4];
        if (!v12 || (*(v12 + 435) & 1) == 0)
        {
          v13 = g_boringssl_log;
          if (g_boringssl_log)
          {
            if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
            {
              v17 = a1[4];
              v18 = (v17 + 351);
              if (!v17)
              {
                v18 = &unk_1A9098A9F;
              }

              v20[0] = 136447746;
              *&v20[1] = "nw_protocol_boringssl_write_frames_block_invoke";
              v21 = 1024;
              v22 = 1163;
              v23 = 2082;
              v24 = v18;
              v25 = 2048;
              v26 = v17;
              v27 = 2112;
              v28 = v10;
              v29 = 1024;
              v30 = 0;
              v31 = 1024;
              v32 = 0;
              _os_log_error_impl(&dword_1A8FF5000, v13, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] Failed to flatten external data %@ (offset %u, unclaimed %u)", v20, 0x3Cu);
            }
          }
        }
      }
    }
  }

  else
  {
    v20[0] = 0;
    nw_frame_unclaimed_bytes();
    *(*(a1[6] + 8) + 24) = *(*(a1[6] + 8) + 24);
  }

  if (a1[5] != v3)
  {
    v14 = a1[4];
    nw_frame_array_remove();
    nw_frame_finalize();
  }

  v15 = *MEMORY[0x1E69E9840];
  return 1;
}

EC_KEY *EC_KEY_parse_private_key(__int128 *a1, const EC_GROUP *a2)
{
  memset(v15, 170, sizeof(v15));
  v14 = 0xAAAAAAAAAAAAAAAALL;
  if (CBS_get_asn1(a1, &v15[1], 536870928) && CBS_get_asn1_uint64(&v15[1], &v14) && v14 == 1 && CBS_get_asn1(&v15[1], v15, 4))
  {
    if (CBS_peek_asn1_tag(&v15[1], -1610612736))
    {
      buf[2] = 0xAAAAAAAAAAAAAAAALL;
      buf[3] = 0xAAAAAAAAAAAAAAAALL;
      if (!CBS_get_asn1(&v15[1], &buf[2], -1610612736))
      {
        v4 = 128;
        v5 = 106;
        goto LABEL_34;
      }

      v3 = EC_KEY_parse_parameters(&buf[2]);
      if (!v3)
      {
LABEL_35:
        v6 = 0;
LABEL_36:
        v9 = 0;
LABEL_37:
        EC_KEY_free(v6);
        BN_free(v9);
        return 0;
      }

      if (a2)
      {
        if (EC_GROUP_cmp(a2, v3, 0))
        {
          v4 = 130;
          v5 = 117;
LABEL_34:
          ERR_put_error(15, 0, v4, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/ec_extra/ec_asn1.c", v5);
          goto LABEL_35;
        }
      }

      else
      {
        a2 = v3;
      }

      if (buf[3])
      {
        v4 = 128;
        v5 = 121;
        goto LABEL_34;
      }
    }

    else if (!a2)
    {
      v4 = 114;
      v5 = 127;
      goto LABEL_34;
    }

    v8 = EC_KEY_new();
    v6 = v8;
    if (!v8 || !EC_KEY_set_group(v8, a2))
    {
      goto LABEL_36;
    }

    v9 = BN_bin2bn(*&v15[0], SDWORD2(v15[0]), 0);
    v10 = EC_POINT_new(a2);
    *(v6 + 1) = v10;
    if (!v9 || !v10 || !EC_KEY_set_private_key(v6, v9))
    {
      goto LABEL_37;
    }

    if (CBS_peek_asn1_tag(&v15[1], -1610612735))
    {
      memset(buf, 170, sizeof(buf));
      v12 = -86;
      if (!CBS_get_asn1(&v15[1], &buf[2], -1610612735) || !CBS_get_asn1(&buf[2], buf, 3) || !CBS_get_u8(buf, &v12) || v12 || !buf[1] || !EC_POINT_oct2point(a2, *(v6 + 1), buf[0], buf[1], 0) || buf[3])
      {
        v11 = 161;
LABEL_43:
        ERR_put_error(15, 0, 128, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/ec_extra/ec_asn1.c", v11);
        goto LABEL_37;
      }

      *(v6 + 7) = *buf[0] & 0xFE;
    }

    else
    {
      if (!ec_point_mul_scalar_base(a2, *(v6 + 1) + 8, *(v6 + 2) + 24))
      {
        goto LABEL_37;
      }

      *(v6 + 6) |= 2u;
    }

    if (!*(&v15[1] + 1))
    {
      if (EC_KEY_check_key(v6))
      {
        BN_free(v9);
        return v6;
      }

      goto LABEL_37;
    }

    v11 = 181;
    goto LABEL_43;
  }

  ERR_put_error(15, 0, 128, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/ec_extra/ec_asn1.c", 92);
  return 0;
}

uint64_t EC_KEY_parse_parameters(__int128 *a1)
{
  if (!CBS_peek_asn1_tag(a1, 536870928))
  {

    return EC_KEY_parse_curve_name(a1);
  }

  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29 = v2;
  v30 = v2;
  v27 = v2;
  v28 = v2;
  v25 = v2;
  v26 = v2;
  memset(v36, 170, sizeof(v36));
  memset(v35, 170, sizeof(v35));
  memset(v34, 170, sizeof(v34));
  v33 = -1431655766;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_asn1(a1, &v36[1], 536870928) || !CBS_get_asn1_uint64(&v36[1], &v32) || v32 != 1 || !CBS_get_asn1(&v36[1], v36, 536870928) || !CBS_get_asn1(v36, &v35[1], 6) || *(&v35[1] + 1) != 7 || (**&v35[1] == -834107862 ? (v3 = *(*&v35[1] + 3) == 16858574) : (v3 = 0), !v3 || !CBS_get_asn1(v36, &v25, 2) || !CBS_is_unsigned_asn1_integer(&v25) || *(&v36[0] + 1) || !CBS_get_asn1(&v36[1], v35, 536870928) || !CBS_get_asn1(v35, &v26, 4) || !CBS_get_asn1(v35, &v27, 4) || !CBS_get_optional_asn1(v35, 0, 0, 3) || *(&v35[0] + 1) || !CBS_get_asn1(&v36[1], &v34[2], 4) || !CBS_get_asn1(&v36[1], &v30, 2) || !CBS_is_unsigned_asn1_integer(&v30) || !CBS_get_optional_asn1(&v36[1], v34, &v33, 2) || *(&v36[1] + 1)))
  {
    v4 = 128;
    v5 = 288;
LABEL_13:
    ERR_put_error(15, 0, v4, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/ec_extra/ec_asn1.c", v5);
    return 0;
  }

  if (v33 && (v34[1] != 1 || *v34[0] != 1))
  {
    v4 = 123;
    v5 = 296;
    goto LABEL_13;
  }

  v31 = -86;
  if (!CBS_get_u8(&v34[2], &v31) || v31 != 4)
  {
    v4 = 111;
    v5 = 304;
    goto LABEL_13;
  }

  if (v34[3])
  {
    v4 = 128;
    v5 = 309;
    goto LABEL_13;
  }

  *&v28 = v34[2];
  *(&v28 + 1) = v34[3] >> 1;
  *&v29 = v34[2] + (v34[3] >> 1);
  *(&v29 + 1) = v34[3] >> 1;
  v7 = BN_new();
  v8 = BN_new();
  v9 = BN_new();
  v10 = BN_new();
  v11 = BN_new();
  v17 = v11;
  v18 = 0;
  if (v7 && v8 && v9 && v10 && v11)
  {
    v19 = 0;
    v20 = &kAllGroups;
    while (1)
    {
      v21 = v19;
      v22 = v20;
      v18 = (*(v20 + v19))(v11, v12, v13, v14, v15, v16);
      v23 = EC_GROUP_get0_order(v18);
      v11 = integers_equal(&v30, v23);
      if (v11)
      {
        break;
      }

      v19 = v21 + 8;
      v20 = v22;
      if (v21 == 24)
      {
        goto LABEL_44;
      }
    }

    if (!EC_GROUP_get_curve_GFp(v18, v7, v8, v9, 0))
    {
LABEL_45:
      v18 = 0;
      goto LABEL_46;
    }

    if (!integers_equal(&v25, v7) || !integers_equal(&v26, v8) || !integers_equal(&v27, v9))
    {
      goto LABEL_44;
    }

    v24 = EC_GROUP_get0_generator(v18);
    if (!EC_POINT_get_affine_coordinates_GFp(v18, v24, v10, v17, 0))
    {
      goto LABEL_45;
    }

    if (!integers_equal(&v28, v10) || !integers_equal(&v29, v17) || !v18)
    {
LABEL_44:
      ERR_put_error(15, 0, 123, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/ec_extra/ec_asn1.c", 422);
      goto LABEL_45;
    }
  }

LABEL_46:
  BN_free(v7);
  BN_free(v8);
  BN_free(v9);
  BN_free(v10);
  BN_free(v17);
  return v18;
}

uint64_t EC_KEY_marshal_private_key(uint64_t *a1, uint64_t a2, char a3)
{
  if (a2 && *a2 && *(a2 + 16))
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v20[1] = v6;
    v20[2] = v6;
    v20[0] = v6;
    v19[1] = v6;
    v19[2] = v6;
    v19[0] = v6;
    if (CBB_add_asn1(a1, v20, 0x20000010u) && CBB_add_asn1_uint64(v20, 1uLL) && CBB_add_asn1(v20, v19, 4u) && (v7 = EC_GROUP_get0_order(*a2), v8 = BN_num_bytes(v7), v9 = EVP_HPKE_CTX_kdf(a2), BN_bn2cbb_padded(v19, v8, v9)))
    {
      if ((a3 & 1) != 0 || (*&v10 = 0xAAAAAAAAAAAAAAAALL, *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL, v17 = v10, v18 = v10, v16 = v10, CBB_add_asn1(v20, &v16, 0xA0000000)) && EC_KEY_marshal_curve_name(&v16, *a2) && CBB_flush(v20))
      {
        if ((a3 & 2) != 0)
        {
          goto LABEL_30;
        }

        if (!*(a2 + 8))
        {
          goto LABEL_30;
        }

        *&v11 = 0xAAAAAAAAAAAAAAAALL;
        *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v17 = v11;
        v18 = v11;
        v15[2] = v11;
        v16 = v11;
        v15[0] = v11;
        v15[1] = v11;
        if (!CBB_add_asn1(v20, &v16, 0xA0000001))
        {
          goto LABEL_26;
        }

        if (CBB_add_asn1(&v16, v15, 3u) && CBB_add_u8(v15, 0) && EC_POINT_point2cbb(v15, *a2, *(a2 + 8), *(a2 + 28), 0) && CBB_flush(v20))
        {
LABEL_30:
          if (CBB_flush(a1))
          {
            return 1;
          }

          v13 = 129;
          v14 = 244;
        }

        else
        {
LABEL_26:
          v13 = 129;
          v14 = 238;
        }
      }

      else
      {
        v13 = 129;
        v14 = 222;
      }
    }

    else
    {
      v13 = 129;
      v14 = 213;
    }
  }

  else
  {
    v13 = 67;
    v14 = 202;
  }

  ERR_put_error(15, 0, v13, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/ec_extra/ec_asn1.c", v14);
  return 0;
}

uint64_t EC_KEY_marshal_curve_name(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 525))
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v6[1] = v4;
    v6[2] = v4;
    v6[0] = v4;
    result = CBB_add_asn1(a1, v6, 6u);
    if (result)
    {
      result = CBB_add_bytes(v6, (a2 + 516), *(a2 + 525));
      if (result)
      {
        return CBB_flush(a1) != 0;
      }
    }
  }

  else
  {
    ERR_put_error(15, 0, 123, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/ec_extra/ec_asn1.c", 363);
    return 0;
  }

  return result;
}

BOOL integers_equal(__int128 *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  for (i = *a1; *(&i + 1); CBS_skip(&i, 1uLL))
  {
    if (*i)
    {
      if (*(&i + 1) > 0x42uLL)
      {
        goto LABEL_9;
      }

      break;
    }
  }

  v8 = -21846;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[2] = v3;
  v7[3] = v3;
  v7[0] = v3;
  v7[1] = v3;
  if (BN_bn2bin_padded(v7, *(&i + 1), a2))
  {
    result = CBS_mem_equal(&i, v7, *(&i + 1));
    goto LABEL_10;
  }

  ERR_clear_error();
LABEL_9:
  result = 0;
LABEL_10:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

EC_KEY *__cdecl d2i_ECPrivateKey(EC_KEY **a, const unsigned __int8 **in, uint64_t len)
{
  if (a && (v6 = *a) != 0)
  {
    v7 = EC_KEY_get0_group(v6);
    if (len < 0)
    {
LABEL_4:
      ERR_put_error(15, 0, 128, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/ec_extra/ec_asn1.c", 454);
      return 0;
    }
  }

  else
  {
    v7 = 0;
    if (len < 0)
    {
      goto LABEL_4;
    }
  }

  *&v10 = *in;
  *(&v10 + 1) = len;
  v8 = EC_KEY_parse_private_key(&v10, v7);
  if (v8)
  {
    if (a)
    {
      EC_KEY_free(*a);
      *a = v8;
    }

    *in = v10;
  }

  return v8;
}

int i2d_ECPrivateKey(EC_KEY *a, unsigned __int8 **out)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = v4;
  v7[2] = v4;
  v7[0] = v4;
  if (CBB_init(v7, 0))
  {
    enc_flags = EC_KEY_get_enc_flags(a);
    if (EC_KEY_marshal_private_key(v7, a, enc_flags))
    {
      return CBB_finish_i2d(v7, out);
    }
  }

  CBB_cleanup(v7);
  return -1;
}

uint64_t ed25519_pub_decode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8))
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ed25519_asn1.c", 119);
    return 0;
  }

  else
  {
    v5 = *a3;
    v6 = *(a3 + 8);

    return ed25519_set_pub_raw(a1, v5, v6);
  }
}

uint64_t ed25519_pub_encode(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9[1] = v4;
  v9[2] = v4;
  v9[0] = v4;
  v8[1] = v4;
  v8[2] = v4;
  v7[2] = v4;
  v8[0] = v4;
  v7[0] = v4;
  v7[1] = v4;
  v6[1] = v4;
  v6[2] = v4;
  v6[0] = v4;
  if (CBB_add_asn1(a1, v9, 0x20000010u) && CBB_add_asn1(v9, v8, 0x20000010u) && CBB_add_asn1(v8, v7, 6u) && CBB_add_bytes(v7, &unk_1F1CAF0D4, 3uLL) && CBB_add_asn1(v9, v6, 3u) && CBB_add_u8(v6, 0) && CBB_add_bytes(v6, (v3 + 32), 0x20uLL) && CBB_flush(a1))
  {
    return 1;
  }

  ERR_put_error(6, 0, 105, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ed25519_asn1.c", 140);
  return 0;
}

BOOL ed25519_pub_cmp(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2[4];
  v5 = v2[5];
  v6 = v3[4];
  v7 = v3[5];
  v9 = v2[6];
  v8 = v2[7];
  v11 = v3[6];
  v10 = v3[7];
  return v4 == v6 && v5 == v7 && v9 == v11 && v8 == v10;
}

uint64_t ed25519_priv_decode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  if (!*(a2 + 8) && CBS_get_asn1(a3, &v6, 4) && !*(a3 + 8))
  {
    return ed25519_set_priv_raw(a1, v6, v7);
  }

  ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ed25519_asn1.c", 163);
  return 0;
}

uint64_t ed25519_priv_encode(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2[64])
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v12[1] = v4;
    v12[2] = v4;
    v11[2] = v4;
    v12[0] = v4;
    v11[0] = v4;
    v11[1] = v4;
    v10[1] = v4;
    v10[2] = v4;
    v9[2] = v4;
    v10[0] = v4;
    v9[0] = v4;
    v9[1] = v4;
    v8[1] = v4;
    v8[2] = v4;
    v8[0] = v4;
    if (CBB_add_asn1(a1, v12, 0x20000010u) && CBB_add_asn1_uint64(v12, 0) && CBB_add_asn1(v12, v11, 0x20000010u) && CBB_add_asn1(v11, v10, 6u) && CBB_add_bytes(v10, &unk_1F1CAF0D4, 3uLL) && CBB_add_asn1(v12, v9, 4u) && CBB_add_asn1(v9, v8, 4u) && CBB_add_bytes(v8, v2, 0x20uLL) && CBB_flush(a1))
    {
      return 1;
    }

    v6 = 105;
    v7 = 190;
  }

  else
  {
    v6 = 130;
    v7 = 173;
  }

  ERR_put_error(6, 0, v6, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ed25519_asn1.c", v7);
  return 0;
}

uint64_t ed25519_set_priv_raw(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3 != 32)
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ed25519_asn1.c", 33);
    goto LABEL_5;
  }

  v5 = OPENSSL_malloc(0x41uLL);
  if (!v5)
  {
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v6 = v5;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[0] = v7;
  v11[1] = v7;
  ED25519_keypair_from_seed(v11, v5, a2);
  v8 = 1;
  *(v6 + 64) = 1;
  OPENSSL_free(*(a1 + 8));
  *(a1 + 8) = v6;
LABEL_6:
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t ed25519_set_pub_raw(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  if (a3 == 32)
  {
    result = OPENSSL_malloc(0x41uLL);
    if (result)
    {
      v6 = result;
      v7 = a2[1];
      *(result + 32) = *a2;
      *(result + 48) = v7;
      *(result + 64) = 0;
      OPENSSL_free(*(a1 + 8));
      *(a1 + 8) = v6;
      return 1;
    }
  }

  else
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ed25519_asn1.c", 55);
    return 0;
  }

  return result;
}

uint64_t ed25519_get_priv_raw(uint64_t a1, _OWORD *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!*(v3 + 64))
  {
    v4 = 130;
    v5 = 76;
    goto LABEL_6;
  }

  if (a2)
  {
    if (*a3 <= 0x1FuLL)
    {
      v4 = 100;
      v5 = 86;
LABEL_6:
      ERR_put_error(6, 0, v4, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ed25519_asn1.c", v5);
      return 0;
    }

    v7 = *(v3 + 16);
    *a2 = *v3;
    a2[1] = v7;
  }

  *a3 = 32;
  return 1;
}

uint64_t ed25519_get_pub_raw(uint64_t a1, _OWORD *a2, void *a3)
{
  if (a2)
  {
    if (*a3 <= 0x1FuLL)
    {
      ERR_put_error(6, 0, 100, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ed25519_asn1.c", 105);
      return 0;
    }

    v4 = *(a1 + 8);
    v5 = *(v4 + 48);
    *a2 = *(v4 + 32);
    a2[1] = v5;
  }

  *a3 = 32;
  return 1;
}

char *boringssl_ciphers_create_configuration_string(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    if (Mutable)
    {
      v6 = Mutable;
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = v8;
        while (1)
        {
          v10 = boringssl_ciphers_value_to_string(*(a1 + 2 * v9));
          if (v10)
          {
            break;
          }

          if (a2 == ++v9)
          {
            if (v7)
            {
              goto LABEL_14;
            }

            if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
            {
              boringssl_ciphers_create_configuration_string_cold_1();
            }

LABEL_23:
            CFRelease(v6);
            return 0;
          }
        }

        v11 = v10;
        if (v7)
        {
          CFStringAppend(v6, @":");
        }

        CFStringAppendCString(v6, v11, 0x8000100u);
        v8 = v9 + 1;
        v7 = 1;
      }

      while (a2 - 1 != v9);
LABEL_14:
      Length = CFStringGetLength(v6);
      v13 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
      if (!v13)
      {
        if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
        {
          boringssl_ciphers_create_configuration_string_cold_3();
        }

        goto LABEL_23;
      }

      v2 = v13;
      if (CFStringGetCString(v6, v13, Length + 1, 0x8000100u))
      {
        CFRelease(v6);
        return v2;
      }

      if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
      {
        boringssl_ciphers_create_configuration_string_cold_2();
      }

      CFRelease(v6);
      free(v2);
    }

    return 0;
  }

  return v2;
}

void boringssl_session_update_eap_metadata(uint64_t a1)
{
  if (a1)
  {
    if (*a1 == -1252936367)
    {
      v2 = *(a1 + 8);
      if (v2)
      {
        if (*(v2 + 392) && *(v2 + 292) == 2)
        {
          v16 = 0;
          v17 = &v16;
          v18 = 0x2020000000;
          v19 = 0;
          v12 = 0;
          v13 = &v12;
          v14 = 0x2020000000;
          v15 = 0;
          v8 = 0;
          v9 = &v8;
          v10 = 0x2020000000;
          v11 = 0;
          v3 = *(v2 + 504);
          nw_protocol_options_access_handle();
          if (v13[3] && v17[3])
          {
            v4 = *(v9 + 24);
            if (*a1 == -1252936367)
            {
              v5 = *(a1 + 8);
              if (v5)
              {
                v6 = *(v5 + 512);
                nw_protocol_metadata_access_handle();
              }
            }

            v7 = *(v2 + 512);
            nw_protocol_metadata_access_handle();
          }

          _Block_object_dispose(&v8, 8);
          _Block_object_dispose(&v12, 8);
          _Block_object_dispose(&v16, 8);
        }
      }
    }
  }
}

void sub_1A9043298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Block_object_dispose((v29 - 96), 8);
  _Unwind_Resume(a1);
}

BOOL __boringssl_session_update_eap_metadata_block_invoke(void *a1, uint64_t a2)
{
  v60 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_77;
  }

  negotiated_tls_protocol_version = sec_protocol_metadata_get_negotiated_tls_protocol_version(*(a1[7] + 512));
  if (*(a2 + 368) == 1)
  {
    v6 = a1[7];
    if (negotiated_tls_protocol_version == 772)
    {
      if (!v6)
      {
        goto LABEL_23;
      }

      WeakRetained = objc_loadWeakRetained((v6 + 16));
      if (WeakRetained)
      {
        v8 = WeakRetained;
        v9 = objc_loadWeakRetained((a1[7] + 16));
        v2 = v9[435];

        if (v2)
        {
          goto LABEL_62;
        }
      }

      v10 = a1[7];
      if (v10)
      {
        v11 = objc_loadWeakRetained((v10 + 16));
        if (v11)
        {
          v12 = objc_loadWeakRetained((a1[7] + 16));
          v13 = (v12[435] & 1) == 0;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          goto LABEL_62;
        }
      }

      else
      {
LABEL_23:
        v13 = 1;
      }

      if (!g_boringssl_log)
      {
LABEL_62:
        *(*(a1[4] + 8) + 24) = "EXPORTER_EAP_TLS_Key_Material";
        *(*(a1[5] + 8) + 24) = 29;
        *(*(a1[6] + 8) + 24) = 1;
        goto LABEL_77;
      }

      v30 = g_boringssl_log;
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        goto LABEL_61;
      }

      v31 = a1[7];
      if (v31)
      {
        v13 = objc_loadWeakRetained((v31 + 16));
        v32 = a1[7];
        if (v13)
        {
          v33 = v32 != 0;
          if (v32)
          {
            v2 = objc_loadWeakRetained((v32 + 16));
            v32 = a1[7];
          }

          else
          {
            v2 = 0;
          }

          v40 = v2 + 351;
        }

        else
        {
          v33 = 0;
          v40 = &unk_1A9098A9F;
        }

        if (v32)
        {
          v38 = objc_loadWeakRetained((v32 + 16));
          v39 = 0;
        }

        else
        {
          v38 = 0;
          v39 = 1;
        }
      }

      else
      {
        v33 = 0;
        v38 = 0;
        v39 = 1;
        v40 = &unk_1A9098A9F;
      }

      v52 = 136446978;
      v53 = "boringssl_session_update_eap_metadata_block_invoke";
      v54 = 1024;
      v55 = 104;
      v56 = 2082;
      v57 = v40;
      v58 = 2048;
      v59 = v38;
      _os_log_impl(&dword_1A8FF5000, v30, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] TLS handshake is complete using TLS 1.3 version", &v52, 0x26u);
      if (v39)
      {
        if (!v33)
        {
          goto LABEL_59;
        }
      }

      else
      {

        if (!v33)
        {
LABEL_59:
          if (v31)
          {
LABEL_60:
          }

LABEL_61:

          goto LABEL_62;
        }
      }

      if (!v31)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    if (!v6)
    {
      goto LABEL_24;
    }

    v22 = objc_loadWeakRetained((v6 + 16));
    if (v22)
    {
      v23 = v22;
      v24 = objc_loadWeakRetained((a1[7] + 16));
      v2 = v24[435];

      if (v2)
      {
        goto LABEL_76;
      }
    }

    v25 = a1[7];
    if (v25)
    {
      v26 = objc_loadWeakRetained((v25 + 16));
      if (v26)
      {
        v27 = objc_loadWeakRetained((a1[7] + 16));
        v28 = (v27[435] & 1) == 0;
      }

      else
      {
        v28 = 1;
      }

      if (!v28)
      {
        goto LABEL_76;
      }
    }

    else
    {
LABEL_24:
      v28 = 1;
    }

    if (!g_boringssl_log)
    {
LABEL_76:
      *(*(a1[4] + 8) + 24) = "client EAP encryption";
      *(*(a1[5] + 8) + 24) = 21;
      goto LABEL_77;
    }

    v34 = g_boringssl_log;
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      goto LABEL_75;
    }

    v35 = a1[7];
    if (v35)
    {
      v28 = objc_loadWeakRetained((v35 + 16));
      v36 = a1[7];
      if (v28)
      {
        v37 = v36 != 0;
        if (v36)
        {
          v2 = objc_loadWeakRetained((v36 + 16));
          v36 = a1[7];
        }

        else
        {
          v2 = 0;
        }

        v43 = v2 + 351;
      }

      else
      {
        v37 = 0;
        v43 = &unk_1A9098A9F;
      }

      if (v36)
      {
        v41 = objc_loadWeakRetained((v36 + 16));
        v42 = 0;
      }

      else
      {
        v41 = 0;
        v42 = 1;
      }
    }

    else
    {
      v37 = 0;
      v41 = 0;
      v42 = 1;
      v43 = &unk_1A9098A9F;
    }

    v52 = 136446978;
    v53 = "boringssl_session_update_eap_metadata_block_invoke";
    v54 = 1024;
    v55 = 109;
    v56 = 2082;
    v57 = v43;
    v58 = 2048;
    v59 = v41;
    _os_log_impl(&dword_1A8FF5000, v34, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] TLS handshake is complete using legacy TLS version", &v52, 0x26u);
    if (v42)
    {
      if (!v37)
      {
        goto LABEL_73;
      }
    }

    else
    {

      if (!v37)
      {
LABEL_73:
        if (v35)
        {
LABEL_74:
        }

LABEL_75:

        goto LABEL_76;
      }
    }

    if (!v35)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  v14 = a1[7];
  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = objc_loadWeakRetained((v14 + 16));
  if (v15)
  {
    v16 = v15;
    v17 = objc_loadWeakRetained((a1[7] + 16));
    v2 = v17[435];

    if (v2)
    {
      goto LABEL_77;
    }
  }

  v18 = a1[7];
  if (v18)
  {
    v19 = objc_loadWeakRetained((v18 + 16));
    if (v19)
    {
      v20 = objc_loadWeakRetained((a1[7] + 16));
      v21 = (v20[435] & 1) == 0;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      goto LABEL_77;
    }
  }

  else
  {
LABEL_16:
    v21 = 1;
  }

  if (g_boringssl_log)
  {
    v29 = g_boringssl_log;
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
LABEL_29:

      goto LABEL_77;
    }

    v44 = a1[7];
    if (v44)
    {
      v21 = objc_loadWeakRetained((v44 + 16));
      v51 = a1[7];
      if (v21)
      {
        v45 = v51 != 0;
        if (v51)
        {
          v2 = objc_loadWeakRetained((v51 + 16));
          v51 = a1[7];
        }

        else
        {
          v2 = 0;
        }

        v48 = v2 + 351;
      }

      else
      {
        v45 = 0;
        v48 = &unk_1A9098A9F;
      }

      if (v51)
      {
        v46 = objc_loadWeakRetained((v51 + 16));
        v47 = 0;
      }

      else
      {
        v46 = 0;
        v47 = 1;
      }
    }

    else
    {
      v45 = 0;
      v46 = 0;
      v47 = 1;
      v48 = &unk_1A9098A9F;
    }

    v52 = 136446978;
    v53 = "boringssl_session_update_eap_metadata_block_invoke";
    v54 = 1024;
    v55 = 115;
    v56 = 2082;
    v57 = v48;
    v58 = 2048;
    v59 = v46;
    _os_log_error_impl(&dword_1A8FF5000, v29, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] Unexpected EAP method", &v52, 0x26u);
    if (v47)
    {
      if (!v45)
      {
        goto LABEL_92;
      }
    }

    else
    {

      if (!v45)
      {
LABEL_92:
        if (!v44)
        {
          goto LABEL_29;
        }

        goto LABEL_96;
      }
    }

    if (!v44)
    {
      goto LABEL_29;
    }

LABEL_96:

    goto LABEL_29;
  }

LABEL_77:
  result = a2 != 0;
  v50 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __boringssl_session_update_eap_metadata_block_invoke_4(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = malloc_type_malloc(0x80uLL, 0x100004077774924uLL);
  *(a2 + 328) = v5;
  if (v5)
  {
    if (SSL_export_keying_material(*(*(a1 + 64) + 392), v5, 0x80uLL, *(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 40) + 8) + 24), *(a1 + 72), *(a1 + 80), *(*(*(a1 + 48) + 8) + 24)))
    {
      goto LABEL_30;
    }

    v6 = *(a2 + 328);
    if (v6)
    {
      free(v6);
    }

    *(a2 + 328) = 0;
    v7 = *(a1 + 56);
    if (!v7)
    {
      goto LABEL_18;
    }

    WeakRetained = objc_loadWeakRetained((v7 + 16));
    if (WeakRetained)
    {
      v9 = WeakRetained;
      v10 = objc_loadWeakRetained((*(a1 + 56) + 16));
      v2 = v10[435];

      if (v2)
      {
        goto LABEL_30;
      }
    }

    v11 = *(a1 + 56);
    if (v11)
    {
      v12 = objc_loadWeakRetained((v11 + 16));
      if (v12)
      {
        v13 = objc_loadWeakRetained((*(a1 + 56) + 16));
        v14 = (v13[435] & 1) == 0;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        goto LABEL_30;
      }
    }

    else
    {
LABEL_18:
      v14 = 1;
    }

    if (g_boringssl_log)
    {
      v22 = g_boringssl_log;
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      v23 = *(a1 + 56);
      if (v23)
      {
        v14 = objc_loadWeakRetained((v23 + 16));
        v32 = *(a1 + 56);
        if (v14)
        {
          v24 = v32 != 0;
          if (v32)
          {
            v2 = objc_loadWeakRetained((v32 + 16));
            v32 = *(a1 + 56);
          }

          else
          {
            v2 = 0;
          }

          v30 = v2 + 351;
        }

        else
        {
          v24 = 0;
          v30 = &unk_1A9098A9F;
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
        v30 = &unk_1A9098A9F;
      }

      v34 = 136446978;
      v35 = "boringssl_session_update_eap_metadata_block_invoke";
      v36 = 1024;
      v37 = 145;
      v38 = 2082;
      v39 = v30;
      v40 = 2048;
      v41 = v25;
      v33 = "%{public}s(%d) %{public}s[%p] EAP key material computation failed";
      goto LABEL_53;
    }
  }

  else
  {
    v15 = *(a1 + 56);
    if (!v15)
    {
      goto LABEL_17;
    }

    v16 = objc_loadWeakRetained((v15 + 16));
    if (v16)
    {
      v17 = v16;
      v18 = objc_loadWeakRetained((*(a1 + 56) + 16));
      v2 = v18[435];

      if (v2)
      {
        goto LABEL_30;
      }
    }

    v19 = *(a1 + 56);
    if (v19)
    {
      v20 = objc_loadWeakRetained((v19 + 16));
      if (v20)
      {
        v21 = objc_loadWeakRetained((*(a1 + 56) + 16));
        v14 = (v21[435] & 1) == 0;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        goto LABEL_30;
      }
    }

    else
    {
LABEL_17:
      v14 = 1;
    }

    if (g_boringssl_log)
    {
      v22 = g_boringssl_log;
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
LABEL_29:

        goto LABEL_30;
      }

      v23 = *(a1 + 56);
      if (v23)
      {
        v14 = objc_loadWeakRetained((v23 + 16));
        v31 = *(a1 + 56);
        if (v14)
        {
          v24 = v31 != 0;
          if (v31)
          {
            v2 = objc_loadWeakRetained((v31 + 16));
            v31 = *(a1 + 56);
          }

          else
          {
            v2 = 0;
          }

          v27 = v2 + 351;
        }

        else
        {
          v24 = 0;
          v27 = &unk_1A9098A9F;
        }

        if (v31)
        {
          v25 = objc_loadWeakRetained((v31 + 16));
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
      v35 = "boringssl_session_update_eap_metadata_block_invoke";
      v36 = 1024;
      v37 = 134;
      v38 = 2082;
      v39 = v27;
      v40 = 2048;
      v41 = v25;
      v33 = "%{public}s(%d) %{public}s[%p] EAP key material allocation failed";
LABEL_53:
      _os_log_error_impl(&dword_1A8FF5000, v22, OS_LOG_TYPE_ERROR, v33, &v34, 0x26u);
      if (v26)
      {
        if (!v24)
        {
          goto LABEL_55;
        }
      }

      else
      {

        if (!v24)
        {
LABEL_55:
          if (!v23)
          {
            goto LABEL_29;
          }

          goto LABEL_59;
        }
      }

      if (!v23)
      {
        goto LABEL_29;
      }

LABEL_59:

      goto LABEL_29;
    }
  }

LABEL_30:
  v28 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t boringssl_session_handshake_error_print(uint64_t a1, uint64_t a2, uint64_t a3)
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
      boringssl_session_handshake_error_print_cold_1();
    }

    return 1;
  }

  return result;
}

void *boringssl_session_export_secret_with_context(uint64_t a1, size_t a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1 != -1252936367)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  if (!v6 || !*(v6 + 392))
  {
    return 0;
  }

  v12 = malloc_type_malloc(0x10uLL, 0x1010040466105CCuLL);
  v13 = v12;
  if (v12)
  {
    *v12 = a6;
    v14 = malloc_type_malloc(a6, 0x100004077774924uLL);
    v13[1] = v14;
    if (!v14)
    {
LABEL_10:
      free(v13);
      return 0;
    }

    if (!SSL_export_keying_material(*(v6 + 392), v14, *v13, a3, a2, a5, a4, 1))
    {
      v15 = v13[1];
      if (v15)
      {
        free(v15);
      }

      goto LABEL_10;
    }
  }

  return v13;
}