void nw_protocol_boringssl_read_bytes_cold_7()
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

STACK *__cdecl SSL_get_ciphers(STACK *s)
{
  if (s)
  {
    data = s->data;
    if (!data)
    {
      SSL_get_ciphers_cold_1();
    }

    v2 = data[3];
    if (!v2)
    {
      v2 = *(s[3].comp + 30);
    }

    return *v2;
  }

  return s;
}

uint64_t bssl::ext_ec_point_add_extension(uint64_t *a1)
{
  result = CBB_add_u16(a1, 0xBu);
  if (result)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v5[1] = v3;
    v5[2] = v3;
    v4[2] = v3;
    v5[0] = v3;
    v4[0] = v3;
    v4[1] = v3;
    result = CBB_add_u16_length_prefixed(a1, v5);
    if (result)
    {
      result = CBB_add_u8_length_prefixed(v5, v4);
      if (result)
      {
        result = CBB_add_u8(v4, 0);
        if (result)
        {
          return CBB_flush(a1) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ssl_run_handshake(bssl *this, bssl::SSL_HANDSHAKE *a2, BOOL *a3)
{
  v5 = *this;
  while (2)
  {
    v6 = *(this + 4);
    switch(v6)
    {
      case 0:
        ERR_restore_state(*(this + 48));
        return 0xFFFFFFFFLL;
      case 2:
      case 3:
      case 15:
        if (!*(v5 + 168))
        {
          v22[0] = 50;
          v21 = 0;
          v7 = *(v5 + 48);
          v8 = *(v7 + 92);
          v9 = *(v7 + 80) + *(v7 + 88);
          if (v6 == 15)
          {
            v10 = bssl::ssl_open_change_cipher_spec(v5, &v21, v22);
          }

          else
          {
            v10 = bssl::ssl_open_handshake(v5, &v21, v22);
          }

          v11 = v10;
          if (v10 == 4 && *(this + 4) == 2 && (ERR_peek_error() & 0xFF000FFF) == 0x10000410)
          {
            ERR_put_error(16, 0, 154, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake.cc", 657);
          }

          v20 = -86;
          result = bssl::ssl_handle_open_record(v5, &v20, v11, v21, v22[0]);
          if (result <= 0)
          {
            return result;
          }

          if ((v20 & 1) == 0)
          {
            bssl::SSLBuffer::DiscardConsumed((*(v5 + 48) + 80));
LABEL_18:
            v13 = (*(v5 + 40))(this, a2, a3);
            *(this + 4) = v13;
            if (v13 == 1)
            {
              if ((*(v5 + 180) & 1) == 0 && *(*(v5 + 48) + 216) == 2)
              {
                bssl::ssl_run_handshake();
              }

              *a2 = 0;
              return 1;
            }

            if (!v13)
            {
              v14 = ERR_save_state();
              std::unique_ptr<err_save_state_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 48, v14);
              return 0xFFFFFFFFLL;
            }
          }

          continue;
        }

        if (v6 == 15)
        {
          bssl::ssl_run_handshake();
        }

        v15 = *(v5 + 48);
        v16 = 2;
LABEL_44:
        *(v15 + 196) = v16;
        v19 = 1;
LABEL_45:
        *(this + 4) = v19;
        return 0xFFFFFFFFLL;
      case 4:
        result = (*(*v5 + 120))(v5, a2, a3);
        if (result <= 0)
        {
          return result;
        }

        goto LABEL_18;
      case 5:
        v15 = *(v5 + 48);
        v16 = 12;
        goto LABEL_44;
      case 6:
        v15 = *(v5 + 48);
        v16 = 17;
        goto LABEL_44;
      case 7:
        result = (*(*v5 + 120))(v5, a2, a3);
        if (result < 1)
        {
          return result;
        }

        *(*(v5 + 48) + 196) = 18;
        v19 = 7;
        goto LABEL_45;
      case 8:
        v15 = *(v5 + 48);
        v16 = 4;
        goto LABEL_44;
      case 9:
        v15 = *(v5 + 48);
        v16 = 13;
        goto LABEL_44;
      case 10:
        v15 = *(v5 + 48);
        v16 = 11;
        goto LABEL_44;
      case 11:
        v15 = *(v5 + 48);
        v16 = 14;
        goto LABEL_44;
      case 12:
        if ((*(v5 + 180) & 1) == 0 && *(*(v5 + 48) + 216) == 2)
        {
          bssl::ssl_run_handshake();
        }

        result = 1;
        *a2 = 1;
        *(this + 4) = 1;
        return result;
      case 13:
        v17 = *(v5 + 48);
        if (!*(v17 + 256))
        {
          bssl::ssl_run_handshake();
        }

        if ((*(this + 1601) & 0x20) != 0)
        {
          bssl::ssl_run_handshake();
        }

        v18 = 15;
        goto LABEL_40;
      case 14:
        if ((*(*(*(v5 + 48) + 280) + 1601) & 0x10) != 0)
        {
          result = 1;
          *a2 = 1;
          return result;
        }

        *(this + 4) = 1;
        goto LABEL_18;
      case 16:
        v15 = *(v5 + 48);
        v16 = 16;
        goto LABEL_44;
      case 17:
        v17 = *(v5 + 48);
        v18 = 20;
LABEL_40:
        *(v17 + 196) = v18;
        return 0xFFFFFFFFLL;
      default:
        goto LABEL_18;
    }
  }
}

uint64_t cbs_get_length_prefixed(unsigned __int8 **a1, unint64_t *a2, unint64_t a3)
{
  v3 = a1[1];
  v4 = v3 >= a3;
  v5 = v3 - a3;
  if (!v4)
  {
    return 0;
  }

  v6 = *a1;
  v7 = &(*a1)[a3];
  *a1 = v7;
  a1[1] = v5;
  v8 = 0;
  if (a3)
  {
    do
    {
      v9 = *v6++;
      v8 = v9 | (v8 << 8);
      --a3;
    }

    while (a3);
    if (v5 < v8)
    {
      return 0;
    }
  }

  *a1 = (v7 + v8);
  a1[1] = (v5 - v8);
  *a2 = v7;
  a2[1] = v8;
  return 1;
}

uint64_t bssl::ssl_client_handshake(bssl *this, ssl_session_st *a2)
{
  v223 = (this + 1536);
  v222 = (this + 1520);
  v253 = *MEMORY[0x1E69E9840];
  v219 = (this + 1480);
  v220 = (this + 1528);
  v216 = this + 712;
  v217 = (this + 1504);
  v218 = (this + 568);
  v221 = (this + 1544);
  while (2)
  {
    v3 = *(this + 5);
    switch(v3)
    {
      case 0:
        v4 = *this;
        bssl::ssl_do_info_callback(*this, 0x10);
        *(*(v4 + 48) + 222) &= ~0x20u;
        if (!bssl::ssl_get_version_range(this, this + 14, this + 15))
        {
          goto LABEL_428;
        }

        v233 = -86;
        *&v5 = 0xAAAAAAAAAAAAAAAALL;
        *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v231 = v5;
        v232 = v5;
        *v229 = v5;
        v230 = v5;
        v227 = 0xAAAAAAAAAAAAAAAALL;
        if (!bssl::ssl_select_ech_config(this, v229, 65, &v227))
        {
          goto LABEL_428;
        }

        is_dtls = SSL_is_dtls(*this);
        v8 = *(this + 15);
        if (v8 >= 0x303)
        {
          v9 = 771;
        }

        else
        {
          v9 = *(this + 15);
        }

        if (v8 <= 0x302)
        {
          v10 = -257;
        }

        else
        {
          v10 = -259;
        }

        if (!is_dtls)
        {
          v10 = v9;
        }

        *(this + 802) = v10;
        v11 = *(v4 + 104);
        if (v11 && ((*(v11 + 440) & 0x10) != 0 || !bssl::ssl_supports_version(this, *(v11 + 4)) || *(this + 195) && bssl::ssl_session_protocol_version(*(v4 + 104), v12) < 0x304 || !SSL_SESSION_is_resumable(*(v4 + 104)) || !bssl::ssl_session_is_time_valid(v4, *(v4 + 104), v7) || (*(v4 + 168) != 0) == ((*(*(v4 + 104) + 440) & 0x20) == 0) || (*(*(v4 + 48) + 222) & 0x10) != 0))
        {
          bssl::ssl_set_session(v4, 0, v7);
        }

        if (!RAND_bytes((*(v4 + 48) + 48), 32) || *(this + 195) && !RAND_bytes(this + 520, 32))
        {
          goto LABEL_428;
        }

        v13 = *(v4 + 104);
        if (v13)
        {
          v14 = *(v13 + 240);
          if (*(v13 + 91))
          {
            v15 = v14 == 0;
          }

          else
          {
            v15 = 0;
          }

          v16 = v15;
          if (v14)
          {
            v16 = 0;
            v17 = bssl::ssl_session_protocol_version(v13, a2) < 0x304;
            goto LABEL_312;
          }
        }

        else
        {
          v16 = 0;
        }

        v17 = 0;
LABEL_312:
        if (*(this + 15) < 0x304u || *(v4 + 168))
        {
          v142 = 0;
          if (v16)
          {
            goto LABEL_315;
          }
        }

        else
        {
          v142 = SSL_is_dtls(*this) == 0;
          if (v16)
          {
LABEL_315:
            bssl::InplaceVector<unsigned char,32ul>::operator=(this + 1613, (*(v4 + 104) + 59));
            goto LABEL_344;
          }
        }

        if (v17 || v142)
        {
          *(this + 1645) = 32;
          if (!RAND_bytes(this + 1613, 32))
          {
            goto LABEL_428;
          }
        }

LABEL_344:
        v144 = *this;
        if (*(this + 14) >= 0x304u && !*(v144 + 104))
        {
          v145 = *(*(v144 + 8) + 80);
          if (v145)
          {
            *&v250 = 0;
            memset(&v249[64], 170, 0x400uLL);
            v226[0] = 1024;
            *&v146 = 0xAAAAAAAAAAAAAAAALL;
            *(&v146 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *&v249[32] = v146;
            *&v249[48] = v146;
            *v249 = v146;
            *&v249[16] = v146;
            v247 = v146;
            v248 = v146;
            v245 = v146;
            v246 = v146;
            v243 = v146;
            v244 = v146;
            v241 = v146;
            v242 = v146;
            v239 = v146;
            v240 = v146;
            v237 = v146;
            v238 = v146;
            v235 = v146;
            v236 = v146;
            v234[0] = v146;
            v234[1] = v146;
            v224 = 256;
            v225 = 64;
            if (!v145(v144, &v250, &v249[64], v226, v249, &v225, v234, &v224) && v250)
            {
              v147 = *(v144 + 120);
              v148 = SSL_SESSION_new();
              v149 = v148;
              LOWORD(v148->key_arg_length) = 772;
              v148->cipher = v250;
              v150 = v225;
              if (v225 <= 0x30)
              {
                v148->master_key[38] = 0;
                if (v150)
                {
                  v151 = &v148->key_arg[2];
                  v152 = v249;
                  v153 = v150;
                  do
                  {
                    v154 = *v152++;
                    *v151++ = v154;
                    --v153;
                  }

                  while (v153);
                }

                v148->master_key[38] = v150;
              }

              v155 = v224;
              if (v224 - 1 <= 0xFE && bssl::Array<unsigned char>::InitUninitialized(&v148[1].sid_ctx_length, v224))
              {
                v156 = *(v149 + 392);
                v157 = v234;
                do
                {
                  v158 = *v157++;
                  *v156++ = v158;
                  --v155;
                }

                while (v155);
              }

              SSL_SESSION_set_ticket(v149, &v249[64], v226[0]);
              *(v149 + 380) = ((*(v144 + 180) << 13) >> 15) & 0x3800;
              *(v149 + 440) |= 0x80u;
              SSL_set_session(v144, v149);
              SSL_SESSION_free(v149);
            }

            v144 = *this;
          }
        }

        if (*(v144 + 180))
        {
          bssl::ssl_client_handshake();
        }

        if ((*(v144 + 180) & 4) != 0)
        {
          if (*(this + 15) >= 0x304u)
          {
            v160 = *(v144 + 104);
            if (v160)
            {
              if (bssl::ssl_session_protocol_version(v160, a2) >= 0x304 && (v161 = *(v144 + 104), *(v161 + 380)))
              {
                v162 = *(v161 + 400);
                if (!v162)
                {
                  goto LABEL_371;
                }

                if (bssl::ssl_is_alpn_protocol_allowed(this, *(v161 + 392), v162))
                {
                  v163 = *(v144 + 104);
                  if ((*(v163 + 440) & 0x40) == 0 || (*&v249[64] = 0, *&v249[72] = 0, bssl::ssl_get_local_application_settings(this, &v249[64], *(v163 + 392), *(v163 + 400))) && (v204 = *(v144 + 104), v205 = *(v204 + 416), *&v249[72] == v205) && !memcmp(*&v249[64], *(v204 + 408), v205))
                  {
LABEL_371:
                    *(this + 400) |= 0x800u;
                    goto LABEL_438;
                  }

                  v159 = 14;
                }

                else
                {
                  v159 = 9;
                }
              }

              else
              {
                v159 = 7;
              }
            }

            else
            {
              v159 = 5;
            }
          }

          else
          {
            v159 = 3;
          }
        }

        else
        {
          v159 = 1;
        }

        *(*(v4 + 48) + 256) = v159;
LABEL_438:
        if (bssl::ssl_setup_key_shares(this, 0) && bssl::ssl_setup_pake_shares(this, a2) && bssl::ssl_setup_extension_permutation(this, a2) && bssl::ssl_encrypt_client_hello(this, v229, v227) && bssl::ssl_add_client_hello(this, a2))
        {
          *(this + 5) = 1;
          goto LABEL_78;
        }

        goto LABEL_428;
      case 1:
        if ((*(this + 1601) & 8) != 0)
        {
          v70 = *this;
          v71 = *(*this + 104);
          if (v71)
          {
            SSL_SESSION_up_ref(*(*this + 104));
          }

          std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](v221, v71);
          *(*(v70 + 48) + 208) = (*v221)->key_arg_length;
          v19 = 2;
        }

        else
        {
          v19 = 3;
        }

        goto LABEL_487;
      case 2:
        v36 = *this;
        if (*(*(*this + 120) + 520) != 1)
        {
          goto LABEL_145;
        }

        v37 = bssl::ssl_reverify_peer_cert(this, 0);
        if (v37 == 1)
        {
          goto LABEL_428;
        }

        if (v37 == 2)
        {
          finished = 16;
LABEL_70:
          *(this + 5) = v37;
          goto LABEL_489;
        }

LABEL_145:
        if ((*(*v36 + 112))(v36, a2) && bssl::tls13_init_early_key_schedule(this, *(this + 193), v68) && bssl::tls13_derive_early_secret(this, a2) && bssl::tls13_set_traffic_key(*this, 1, 1, *(this + 193), this + 81, *(this + 129)))
        {
          *(this + 400) |= 0x2400u;
          finished = 12;
          v37 = 3;
          goto LABEL_70;
        }

        goto LABEL_428;
      case 3:
        v31 = *this;
        *&v235 = 0xAAAAAAAAAAAAAAAALL;
        *&v41 = 0xAAAAAAAAAAAAAAAALL;
        *(&v41 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v234[0] = v41;
        v234[1] = v41;
        if (!(*(*v31 + 24))(v31, v234))
        {
          finished = 2;
          goto LABEL_489;
        }

        if (!SSL_is_dtls(v31) || (*(this + 1603) & 4) != 0 || BYTE1(v234[0]) != 3)
        {
          *&v97 = 0xAAAAAAAAAAAAAAAALL;
          *(&v97 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v249[112] = v97;
          *&v249[128] = v97;
          *&v249[80] = v97;
          *&v249[96] = v97;
          *&v249[64] = v97;
          *&v249[80] = 0;
          *&v249[120] = 0;
          v249[122] = 0;
          LOWORD(v227) = -21846;
          LOBYTE(v226[0]) = 50;
          if (!bssl::ssl_parse_server_hello(&v249[64], v226, v234))
          {
            goto LABEL_427;
          }

          if (SSL_is_dtls(*this))
          {
            v98 = 65277;
          }

          else
          {
            v98 = 771;
          }

          v99 = *&v249[80];
          if (v98 == *&v249[80])
          {
            *v229 = 0xAAAAAAAA0001002BLL;
            *&v229[2] = 0;
            *&v230 = 0;
            *v249 = *&v249[128];
            *&v250 = v229;
            if (!bssl::ssl_parse_extensions(v249, v226, &v250, 1, 1))
            {
              goto LABEL_427;
            }

            if ((v229[0] & 0x1000000) != 0)
            {
              if (!CBS_get_u16(&v229[2], &v227) || v230)
              {
                LOBYTE(v226[0]) = 50;
LABEL_427:
                bssl::ssl_send_alert(v31, 2, LOBYTE(v226[0]));
                goto LABEL_428;
              }

              v99 = v227;
LABEL_374:
              if ((bssl::ssl_supports_version(this, v99) & 1) == 0)
              {
                ERR_put_error(16, 0, 240, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 796);
                bssl::ssl_send_alert(v31, 2, 70);
                goto LABEL_428;
              }

              v165 = *(v31 + 6);
              if ((*(v165 + 222) & 0x10) != 0)
              {
                v166 = v227;
                if (v227 != *(v165 + 208))
                {
                  ERR_put_error(16, 0, 246, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 809);
                  bssl::ssl_send_alert(v31, 2, 70);
                  goto LABEL_428;
                }
              }

              else
              {
                if (*(v165 + 208) && ((*(this + 1601) & 8) == 0 || *(v165 + 208) != LOWORD((*v221)->key_arg_length)))
                {
                  bssl::ssl_client_handshake();
                }

                v166 = v227;
                *(v165 + 208) = v227;
              }

              if ((*(this + 1601) & 8) != 0 && v166 != LOWORD((*v221)->key_arg_length))
              {
                if (bssl::ssl_protocol_version(v31, v164) >= 0x304)
                {
                  bssl::ssl_client_handshake();
                }

                if (bssl::ssl_session_protocol_version(*v221, v190) <= 0x303)
                {
                  bssl::ssl_client_handshake();
                }

                if (SSL_is_dtls(v31))
                {
                  bssl::ssl_client_handshake();
                }

                *(this + 400) &= ~0x2000u;
                ERR_put_error(16, 0, 278, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 841);
                bssl::ssl_send_alert(v31, 2, 70);
              }

              else if (bssl::ssl_protocol_version(v31, v164) < 0x304)
              {
                std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](this + 49, 0);
                std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](this + 50, 0);
                bssl::ssl_done_writing_client_hello(this);
                v167 = *(v31 + 6);
                if (*(this + 195))
                {
                  *(v167 + 216) = 2;
                }

                v168 = *(*&v249[88] + 16);
                *(v167 + 16) = **&v249[88];
                *(v167 + 32) = v168;
                if ((*(*(v31 + 6) + 222) & 0x10) == 0)
                {
                  if (bssl::ssl_supports_version(this, 0x304))
                  {
                    v169 = *(v31 + 6);
                    if (*(v169 + 40) == *"DOWNGRD" || *(v169 + 40) == 0x14452474E574F44 || *(v169 + 40) == 0xFF1047C2A8B4BFEDLL)
                    {
                      ERR_put_error(16, 0, 297, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 885);
                      bssl::ssl_send_alert(v31, 2, 47);
                      goto LABEL_428;
                    }
                  }
                }

                cipher_by_value = SSL_get_cipher_by_value(*&v249[120]);
                v171 = cipher_by_value;
                if (!cipher_by_value || (v172 = 8 * (*(*(this + 1) + 64) == 0), (cipher_by_value[5] & v172) != 0) || (cipher_by_value[6] & v172) != 0 || (min_version = SSL_CIPHER_get_min_version(cipher_by_value), min_version > bssl::ssl_protocol_version(v31, v174)) || (max_version = SSL_CIPHER_get_max_version(v171), max_version < bssl::ssl_protocol_version(v31, v176)) || (ciphers = SSL_get_ciphers(v31), !OPENSSL_sk_find(ciphers, 0, v171, sk_SSL_CIPHER_call_cmp_func)))
                {
                  ERR_put_error(16, 0, 242, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 901);
                  bssl::ssl_send_alert(v31, 2, 47);
                  goto LABEL_428;
                }

                *(this + 196) = v171;
                if (*(this + 1645) && (v178 = *&v249[112], *&v249[112] == *(this + 1645)) && !memcmp(*&v249[104], this + 1613, *&v249[112]))
                {
                  v208 = *(v31 + 13);
                  if (!v208 || (v209 = *(v31 + 6), *(v209 + 216) == 2))
                  {
                    ERR_put_error(16, 0, 286, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 918);
                    bssl::ssl_send_alert(v31, 2, 47);
                    goto LABEL_428;
                  }

                  if (*(v208 + 4) != *(v209 + 208))
                  {
                    ERR_put_error(16, 0, 188, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 923);
                    bssl::ssl_send_alert(v31, 2, 47);
                    goto LABEL_428;
                  }

                  if (*(v208 + 200) != v171)
                  {
                    ERR_put_error(16, 0, 187, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 928);
                    bssl::ssl_send_alert(v31, 2, 47);
                    goto LABEL_428;
                  }

                  if (!bssl::ssl_session_is_context_valid(this, v208))
                  {
                    ERR_put_error(16, 0, 101, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 935);
                    bssl::ssl_send_alert(v31, 2, 47);
                    goto LABEL_428;
                  }

                  v212 = *(v31 + 6);
                  v213 = *(v212 + 222);
                  if ((v213 & 0x10) != 0)
                  {
                    bssl::ssl_client_handshake();
                  }

                  *(v212 + 222) = v213 | 0x20;
                }

                else
                {
                  bssl::ssl_set_session(v31, 0, v178);
                  if ((bssl::ssl_get_new_session(this, v179) & 1) == 0)
                  {
                    goto LABEL_521;
                  }

                  v181 = *&v249[112];
                  if (*&v249[112] > 0x20uLL)
                  {
                    goto LABEL_563;
                  }

                  v182 = *&v249[104];
                  v183 = *v223;
                  (*v223)->session_id[19] = 0;
                  if (v181)
                  {
                    v184 = &v183->master_key[39];
                    v185 = v181;
                    do
                    {
                      v186 = *v182++;
                      *v184++ = v186;
                      --v185;
                    }

                    while (v185);
                    v187 = *v223;
                  }

                  else
                  {
                    v187 = v183;
                  }

                  v183->session_id[19] = v181;
                  v187->cipher = *(this + 196);
                }

                v206 = bssl::ssl_protocol_version(v31, v180);
                if (!bssl::SSLTranscript::InitHash((this + 424), v206, *(this + 196)) || (bssl::ssl_hash_message(this, v234) & 1) == 0)
                {
LABEL_521:
                  bssl::ssl_send_alert(v31, 2, 80);
                  goto LABEL_428;
                }

                if (*(v31 + 13) || !bssl::ssl_cipher_uses_certificate_auth(*(this + 196), v207))
                {
                  bssl::SSLTranscript::FreeBuffer(this + 53);
                }

                if (v249[122])
                {
                  ERR_put_error(16, 0, 238, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 975);
                  bssl::ssl_send_alert(v31, 2, 47);
                  goto LABEL_428;
                }

                if ((bssl::ssl_parse_serverhello_tlsext(this, &v249[128]) & 1) == 0)
                {
                  ERR_put_error(16, 0, 190, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 981);
                  goto LABEL_428;
                }

                v210 = *(v31 + 13);
                if (!v210 || (v211 = *(v210 + 440), (HIWORD(*(this + 400)) & 1) == (v211 & 1)))
                {
                  (*(*v31 + 32))(v31);
                  if (*(v31 + 13))
                  {
                    if (*(*(v31 + 15) + 520) == 1 && bssl::ssl_cipher_uses_certificate_auth(*(this + 196), a2))
                    {
                      v19 = 8;
                    }

                    else
                    {
                      v19 = 17;
                    }
                  }

                  else
                  {
                    v19 = 5;
                  }

                  goto LABEL_487;
                }

                if (v211)
                {
                  ERR_put_error(16, 0, 204, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 988);
                }

                else
                {
                  ERR_put_error(16, 0, 205, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 990);
                }

                bssl::ssl_send_alert(v31, 2, 40);
              }

              else
              {
                if ((*(this + 1603) & 4) == 0)
                {
                  v19 = 4;
                  goto LABEL_487;
                }

                ERR_put_error(16, 0, 159, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 848);
                bssl::ssl_send_alert(v31, 2, 70);
              }

              goto LABEL_428;
            }

            v99 = *&v249[80];
          }

          LOWORD(v227) = v99;
          goto LABEL_374;
        }

        v31 = *this;
        if (!SSL_is_dtls(*this))
        {
          bssl::ssl_client_handshake();
        }

        if (BYTE1(v234[0]) != 3)
        {
          bssl::ssl_client_handshake();
        }

        if ((*(this + 1603) & 4) != 0)
        {
          bssl::ssl_client_handshake();
        }

        *&v249[64] = *(v234 + 8);
        memset(v229, 170, sizeof(v229));
        *v249 = -21846;
        if (!CBS_get_u16(&v249[64], v249) || !CBS_get_u8_length_prefixed(&v249[64], v229) || *&v249[72])
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 716);
          v139 = 50;
          goto LABEL_471;
        }

        v42 = *v229;
        v43 = *&v229[2];
        if (!bssl::Array<unsigned char>::InitUninitialized(v218, *&v229[2]))
        {
          v139 = 80;
          goto LABEL_471;
        }

        if (v43)
        {
          v44 = *v218;
          do
          {
            v45 = *v42++;
            *v44++ = v45;
            --v43;
          }

          while (v43);
        }

        *(this + 400) |= 0x4000000u;
        (*(*v31 + 32))(v31);
        if (bssl::SSLTranscript::Init((this + 424)) && bssl::ssl_add_client_hello(this, a2))
        {
          *(this + 400) |= 0x4000000u;
          v40 = 3;
LABEL_77:
          *(this + 5) = v40;
LABEL_78:
          finished = 4;
          goto LABEL_489;
        }

        goto LABEL_428;
      case 4:
        finished = bssl::tls13_client_handshake(this, a2);
        if (finished != 1)
        {
          goto LABEL_489;
        }

        v30 = 20;
        goto LABEL_191;
      case 5:
        v50 = *this;
        if (!bssl::ssl_cipher_uses_certificate_auth(*(this + 196), a2))
        {
          goto LABEL_115;
        }

        *&v249[96] = 0xAAAAAAAAAAAAAAAALL;
        *&v51 = 0xAAAAAAAAAAAAAAAALL;
        *(&v51 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v249[64] = v51;
        *&v249[80] = v51;
        if (!(*(*v50 + 24))(v50, &v249[64]))
        {
          goto LABEL_188;
        }

        if (!bssl::ssl_check_message_type(v50, &v249[64], 11) || !bssl::ssl_hash_message(this, &v249[64]))
        {
          goto LABEL_428;
        }

        v234[0] = *&v249[72];
        LOBYTE(v229[0]) = 50;
        if (!bssl::ssl_parse_cert_chain(v229, &(*v223)->sid_ctx[28], v220, 0, v234, *(*(v50 + 15) + 800)))
        {
          bssl::ssl_send_alert(v50, 2, LOBYTE(v229[0]));
          goto LABEL_428;
        }

        if (!EVP_MD_CTX_md(*&(*v223)->sid_ctx[28]) || *(&v234[0] + 1) || ((*(*(*(v50 + 15) + 16) + 48))(*v223) & 1) == 0)
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1051);
          bssl::ssl_send_alert(v50, 2, 50);
          goto LABEL_428;
        }

        v52 = *(this + 191);
        OPENSSL_sk_value(*(*(this + 192) + 136), 0);
        if ((bssl::ssl_check_leaf_certificate(this, v52) & 1) == 0)
        {
          bssl::ssl_send_alert(v50, 2, 47);
          goto LABEL_428;
        }

        (*(*v50 + 32))(v50);
LABEL_115:
        v19 = 6;
        goto LABEL_487;
      case 6:
        if ((*(this + 1600) & 0x40) == 0)
        {
          goto LABEL_126;
        }

        v31 = *this;
        *&v249[96] = 0xAAAAAAAAAAAAAAAALL;
        *&v91 = 0xAAAAAAAAAAAAAAAALL;
        *(&v91 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v249[64] = v91;
        *&v249[80] = v91;
        if (!(*(*v31 + 24))(v31, &v249[64]))
        {
          goto LABEL_188;
        }

        if (v249[65] != 22)
        {
          goto LABEL_126;
        }

        if (!bssl::ssl_hash_message(this, &v249[64]))
        {
          goto LABEL_428;
        }

        v234[0] = *&v249[72];
        memset(v229, 170, sizeof(v229));
        v249[0] = -86;
        if (!CBS_get_u8(v234, v249) || v249[0] != 1 || !CBS_get_u24_length_prefixed(v234, v229) || !*&v229[2] || *(&v234[0] + 1))
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1100);
          bssl::ssl_send_alert(v31, 2, 50);
          goto LABEL_428;
        }

        v92 = *v223;
        v93 = CRYPTO_BUFFER_new_from_CBS(v229, *(*(v31 + 15) + 800));
        std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v92->tlsext_hostname, v93);
        if (!(*v223)->tlsext_hostname)
        {
          goto LABEL_521;
        }

        (*(*v31 + 32))(v31);
LABEL_126:
        v19 = 7;
        goto LABEL_487;
      case 7:
        if (bssl::ssl_cipher_uses_certificate_auth(*(this + 196), a2))
        {
          v46 = bssl::ssl_verify_peer_cert(this, a2);
          if (v46 == 1)
          {
            goto LABEL_428;
          }

          v47 = v46 == 2;
          v30 = 7;
          v48 = 9;
LABEL_137:
          if (v47)
          {
            finished = 16;
          }

          else
          {
            v30 = v48;
            finished = 1;
          }
        }

        else
        {
          finished = 1;
          v30 = 9;
        }

LABEL_191:
        *(this + 5) = v30;
        goto LABEL_489;
      case 8:
        if ((*(*(*this + 120) + 520) & 1) == 0)
        {
          bssl::ssl_client_handshake();
        }

        v66 = bssl::ssl_reverify_peer_cert(this, 1);
        if (v66 == 1)
        {
          goto LABEL_428;
        }

        v47 = v66 == 2;
        v30 = 8;
        v48 = 17;
        goto LABEL_137;
      case 9:
        v31 = *this;
        *&v235 = 0xAAAAAAAAAAAAAAAALL;
        *&v32 = 0xAAAAAAAAAAAAAAAALL;
        *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v234[0] = v32;
        v234[1] = v32;
        if (!(*(*v31 + 24))(v31, v234))
        {
          goto LABEL_188;
        }

        if (BYTE1(v234[0]) != 12)
        {
          if (bssl::ssl_cipher_requires_server_key_exchange(*(this + 196), a2))
          {
            ERR_put_error(16, 0, 223, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1165);
            bssl::ssl_send_alert(v31, 2, 10);
            goto LABEL_428;
          }

          goto LABEL_486;
        }

        if (!bssl::ssl_hash_message(this, v234))
        {
          goto LABEL_428;
        }

        v33 = *(this + 196);
        v34 = *(v33 + 20);
        v35 = *(v33 + 24);
        *v229 = *(v234 + 8);
        if ((v35 & 8) != 0)
        {
          *&v249[64] = 0xAAAAAAAAAAAAAAAALL;
          *&v249[72] = 0xAAAAAAAAAAAAAAAALL;
          if (!CBS_get_u16_length_prefixed(v229, &v249[64]))
          {
            ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1187);
            v139 = 50;
            goto LABEL_471;
          }

          if (*&v249[72] > 0x80uLL || CBS_contains_zero_byte(&v249[64]))
          {
            ERR_put_error(16, 0, 136, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1201);
            v139 = 40;
            goto LABEL_471;
          }

          *v249 = 0;
          if (*&v249[72])
          {
            if (!CBS_strdup(&v249[64], v249))
            {
              goto LABEL_521;
            }

            v191 = *v249;
          }

          else
          {
            v191 = 0;
          }

          std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100](v219, v191);
          if ((v34 & 2) == 0)
          {
LABEL_64:
            if ((v34 & 8) == 0)
            {
              ERR_put_error(16, 0, 223, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1247);
              bssl::ssl_send_alert(v31, 2, 10);
              goto LABEL_428;
            }

            goto LABEL_465;
          }
        }

        else if ((v34 & 2) == 0)
        {
          goto LABEL_64;
        }

        LOBYTE(v250) = -86;
        *v249 = -21846;
        *&v249[64] = 0xAAAAAAAAAAAAAAAALL;
        *&v249[72] = 0xAAAAAAAAAAAAAAAALL;
        if (!CBS_get_u8(v229, &v250) || v250 != 3 || !CBS_get_u16(v229, v249) || !CBS_get_u8_length_prefixed(v229, &v249[64]))
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1229);
          v139 = 50;
          goto LABEL_471;
        }

        if (!bssl::tls1_check_group_id(this, *v249))
        {
          ERR_put_error(16, 0, 243, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1236);
          v139 = 47;
LABEL_471:
          bssl::ssl_send_alert(v31, 2, v139);
          goto LABEL_428;
        }

        HIWORD((*v223)->key_arg_length) = *v249;
        v192 = *&v249[64];
        v193 = *&v249[72];
        if ((bssl::Array<unsigned char>::InitUninitialized(v216, *&v249[72]) & 1) == 0)
        {
          goto LABEL_428;
        }

        if (v193)
        {
          v194 = *v216;
          do
          {
            v195 = *v192++;
            *v194++ = v195;
            --v193;
          }

          while (v193);
        }

LABEL_465:
        v197 = *(&v234[0] + 1);
        v196 = *&v234[1];
        v198 = *&v229[2];
        if (!bssl::ssl_cipher_uses_certificate_auth(*(this + 196), a2))
        {
          if (v35 != 8)
          {
            bssl::ssl_client_handshake();
          }

          if (*&v229[2])
          {
            ERR_put_error(16, 0, 151, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1319);
            bssl::ssl_send_alert(v31, 2, 50);
            goto LABEL_428;
          }

          goto LABEL_485;
        }

        LOWORD(v227) = 0;
        if (bssl::ssl_protocol_version(v31, v199) < 0x303)
        {
          if ((bssl::tls1_get_legacy_signature_algorithm(&v227, *v220, v200) & 1) == 0)
          {
            ERR_put_error(16, 0, 193, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1277);
            bssl::ssl_send_alert(v31, 2, 43);
            goto LABEL_428;
          }
        }

        else
        {
          if (!CBS_get_u16(v229, &v227))
          {
            ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1264);
            bssl::ssl_send_alert(v31, 2, 50);
            goto LABEL_428;
          }

          v249[64] = 50;
          if (!bssl::tls12_check_peer_sigalg(this, &v249[64], v227, *(this + 191), v201))
          {
            bssl::ssl_send_alert(v31, 2, v249[64]);
            goto LABEL_428;
          }

          *(*v223)->key_arg = v227;
        }

        memset(v249, 170, 16);
        if (!CBS_get_u16_length_prefixed(v229, v249) || *&v229[2])
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1286);
          bssl::ssl_send_alert(v31, 2, 50);
        }

        else
        {
          *&v202 = 0xAAAAAAAAAAAAAAAALL;
          *(&v202 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v249[80] = v202;
          *&v249[96] = v202;
          *&v249[64] = v202;
          CBB_zero(&v249[64]);
          v250 = 0uLL;
          if (CBB_init(&v249[64], v196 - v198 + 64) && CBB_add_bytes(&v249[64], (*(v31 + 6) + 48), 0x20uLL) && CBB_add_bytes(&v249[64], (*(v31 + 6) + 16), 0x20uLL) && CBB_add_bytes(&v249[64], v197, v196 - v198) && bssl::CBBFinishArray(&v249[64], &v250))
          {
            if (bssl::ssl_public_key_verify(v31, *v249, *&v249[8], v227, *v220, v250, *(&v250 + 1)))
            {
              bssl::Array<unsigned char>::~Array(&v250);
              CBB_cleanup(&v249[64]);
LABEL_485:
              (*(*v31 + 32))(v31);
LABEL_486:
              v19 = 10;
              goto LABEL_487;
            }

            ERR_put_error(16, 0, 114, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1310);
            v203 = 51;
          }

          else
          {
            ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1302);
            v203 = 80;
          }

          bssl::ssl_send_alert(v31, 2, v203);
          bssl::Array<unsigned char>::~Array(&v250);
          CBB_cleanup(&v249[64]);
        }

        goto LABEL_428;
      case 10:
        v31 = *this;
        if (!bssl::ssl_cipher_uses_certificate_auth(*(this + 196), a2))
        {
          goto LABEL_133;
        }

        *&v249[96] = 0xAAAAAAAAAAAAAAAALL;
        *&v65 = 0xAAAAAAAAAAAAAAAALL;
        *(&v65 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v249[64] = v65;
        *&v249[80] = v65;
        if (!(*(*v31 + 24))(v31, &v249[64]))
        {
          goto LABEL_188;
        }

        if (v249[65] != 14)
        {
          if (bssl::ssl_check_message_type(v31, &v249[64], 13) && bssl::ssl_hash_message(this, &v249[64]))
          {
            v234[0] = *&v249[72];
            memset(v229, 170, sizeof(v229));
            if (!CBS_get_u8_length_prefixed(v234, v229))
            {
              bssl::ssl_send_alert(v31, 2, 50);
              ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1360);
              goto LABEL_428;
            }

            v128 = *v229;
            v129 = *&v229[2];
            if (!bssl::Array<unsigned char>::InitUninitialized(v217, *&v229[2]))
            {
              goto LABEL_521;
            }

            if (v129)
            {
              v131 = *v217;
              do
              {
                v132 = *v128++;
                *v131++ = v132;
                --v129;
              }

              while (v129);
            }

            if (bssl::ssl_protocol_version(v31, v130) >= 0x303)
            {
              memset(v249, 170, 16);
              if (!CBS_get_u16_length_prefixed(v234, v249) || (bssl::tls1_parse_peer_sigalgs(this, v249) & 1) == 0)
              {
                bssl::ssl_send_alert(v31, 2, 50);
                ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1374);
                goto LABEL_428;
              }
            }

            LOBYTE(v250) = 50;
            *v249 = 0xAAAAAAAAAAAAAAAALL;
            bssl::SSL_parse_CA_list(v31, &v250, v234, v249);
            v133 = *v249;
            if (*v249)
            {
              if (*(&v234[0] + 1))
              {
                bssl::ssl_send_alert(v31, 2, 50);
                ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1389);
                goto LABEL_495;
              }

              *(this + 400) |= 0x20u;
              *v249 = 0;
              std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](this + 186, v133);
              (*(*(*(v31 + 15) + 16) + 80))(this);
              (*(*v31 + 32))(v31);
              *(this + 5) = 11;
              finished = 1;
            }

            else
            {
              bssl::ssl_send_alert(v31, 2, v250);
LABEL_495:
              finished = 0;
            }

            std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](v249, 0);
            goto LABEL_489;
          }

          goto LABEL_428;
        }

        bssl::SSLTranscript::FreeBuffer(this + 53);
LABEL_133:
        v19 = 11;
LABEL_487:
        *(this + 5) = v19;
LABEL_488:
        finished = 1;
        goto LABEL_489;
      case 11:
        v28 = *this;
        *&v249[96] = 0xAAAAAAAAAAAAAAAALL;
        *&v29 = 0xAAAAAAAAAAAAAAAALL;
        *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v249[64] = v29;
        *&v249[80] = v29;
        if (!(*(*v28 + 24))(v28, &v249[64]))
        {
          goto LABEL_188;
        }

        if (!bssl::ssl_check_message_type(v28, &v249[64], 14) || !bssl::ssl_hash_message(this, &v249[64]))
        {
          goto LABEL_428;
        }

        if (*&v249[80])
        {
          bssl::ssl_send_alert(v28, 2, 50);
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1417);
          goto LABEL_428;
        }

        if ((*(*v28 + 40))(v28))
        {
          bssl::ssl_send_alert(v28, 2, 10);
          ERR_put_error(16, 0, 255, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1424);
          goto LABEL_428;
        }

        (*(*v28 + 32))(v28);
        v19 = 12;
        goto LABEL_487;
      case 12:
        if ((*(this + 1600) & 0x20) == 0)
        {
          v19 = 13;
          goto LABEL_487;
        }

        v69 = *this;
        if (*(*(*this + 48) + 216) == 2)
        {
          SSL_certs_clear(*this);
        }

        else
        {
          v100 = *(*(this + 1) + 32);
          v101 = *(v100 + 64);
          if (v101)
          {
            v102 = v101(*this, *(v100 + 72));
            if (!v102)
            {
              bssl::ssl_send_alert(v69, 2, 80);
              ERR_put_error(16, 0, 126, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1487);
              goto LABEL_428;
            }

            if (v102 < 0)
            {
              *(this + 5) = 12;
              finished = 8;
              goto LABEL_489;
            }
          }
        }

        *&v249[64] = 0;
        *&v249[72] = 0;
        if ((bssl::ssl_get_credential_list(this, &v249[64]) & 1) == 0)
        {
          goto LABEL_334;
        }

        if (!*&v249[72])
        {
          bssl::SSLTranscript::FreeBuffer(this + 53);
          goto LABEL_331;
        }

        v103 = *&v249[64];
        v104 = 8 * *&v249[72];
        while (2)
        {
          v105 = *v103;
          ERR_clear_error();
          LOWORD(v234[0]) = -21846;
          if (*(v105 + 4))
          {
            v107 = 1436;
LABEL_223:
            ERR_put_error(16, 0, 228, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", v107);
LABEL_233:
            ++v103;
            v104 -= 8;
            if (!v104)
            {
              goto LABEL_330;
            }

            continue;
          }

          break;
        }

        if ((*(*(this + 1) + 309) & 0x4000) != 0)
        {
          v109 = EVP_PKEY_id(*(v105 + 8));
          if (v109 == 6)
          {
            v110 = 1;
          }

          else
          {
            if (v109 != 949 && v109 != 408)
            {
              v107 = 1452;
              goto LABEL_223;
            }

            v110 = 64;
          }

          v111 = *(this + 188);
          v112 = *(this + 189);
          v113 = memchr(v111, v110, v112);
          v107 = 1457;
          if (!v113 || v113 == &v111[v112])
          {
            goto LABEL_223;
          }
        }

        if (!bssl::tls1_choose_signature_algorithm(this, v105, v234, v106))
        {
          goto LABEL_233;
        }

        SSL_CREDENTIAL_up_ref(v105);
        std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100](v222, v105);
        *(this + 805) = v234[0];
LABEL_330:
        if (!*v222)
        {
          bssl::ssl_send_alert(v69, 2, 40);
          goto LABEL_334;
        }

LABEL_331:
        if (bssl::ssl_send_tls12_certificate(this, v108))
        {
          *(this + 5) = 13;
          finished = 1;
          goto LABEL_335;
        }

LABEL_334:
        finished = 0;
LABEL_335:
        OPENSSL_free(*&v249[64]);
        goto LABEL_489;
      case 13:
        v53 = *this;
        *&v54 = 0xAAAAAAAAAAAAAAAALL;
        *(&v54 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v230 = v54;
        v231 = v54;
        *v229 = v54;
        CBB_zero(v229);
        *&v55 = 0xAAAAAAAAAAAAAAAALL;
        *(&v55 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v249[16] = v55;
        *&v249[32] = v55;
        *v249 = v55;
        if (((*(*v53 + 88))(v53, v229, v249, 16) & 1) == 0)
        {
          finished = 0;
          goto LABEL_435;
        }

        v227 = 0;
        v228 = 0;
        v57 = *(this + 196);
        v58 = *(v57 + 5);
        v59 = *(v57 + 6);
        if (!bssl::ssl_cipher_uses_certificate_auth(v57, v56))
        {
          goto LABEL_119;
        }

        v60 = OPENSSL_sk_value(*&(*v223)->sid_ctx[28], 0);
        *&v249[64] = 0xAAAAAAAAAAAAAAAALL;
        *&v249[72] = 0xAAAAAAAAAAAAAAAALL;
        CRYPTO_BUFFER_init_CBS(v60, &v249[64]);
        if (bssl::ssl_cert_check_key_usage(&v249[64], 2 * (v58 & 1u)))
        {
          goto LABEL_119;
        }

        if ((*(*(this + 1) + 309) & 0x10) != 0 || EVP_PKEY_id(*v220) != 6)
        {
          goto LABEL_433;
        }

        ERR_clear_error();
        *(*(v53 + 6) + 222) |= 0x2000u;
LABEL_119:
        *&v61 = 0xAAAAAAAAAAAAAAAALL;
        *(&v61 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v249[288] = v61;
        *&v249[304] = v61;
        *&v249[256] = v61;
        *&v249[272] = v61;
        *&v249[224] = v61;
        *&v249[240] = v61;
        *&v249[192] = v61;
        *&v249[208] = v61;
        *&v249[160] = v61;
        *&v249[176] = v61;
        *&v249[128] = v61;
        *&v249[144] = v61;
        *&v249[96] = v61;
        *&v249[112] = v61;
        *&v249[64] = v61;
        *&v249[80] = v61;
        if ((v59 & 8) != 0)
        {
          v114 = *(this + 1);
          if (!*(v114 + 64))
          {
            v63 = 1575;
            v64 = 196;
            goto LABEL_293;
          }

          LOBYTE(v241) = 0;
          v239 = 0u;
          v240 = 0u;
          v237 = 0u;
          v238 = 0u;
          v235 = 0u;
          v236 = 0u;
          memset(v234, 0, sizeof(v234));
          v115 = (*(v114 + 64))(v53, *v219, v234, 129, &v249[64], 256);
          v62 = v115;
          if (!v115)
          {
            ERR_put_error(16, 0, 195, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1585);
            bssl::ssl_send_alert(v53, 2, 40);
            goto LABEL_433;
          }

          if (v115 >= 0x101)
          {
            __assert_rtn("do_send_client_key_exchange", "handshake_client.cc", 1589, "psk_len <= PSK_MAX_PSK_LEN");
          }

          v116 = *v223;
          v117 = OPENSSL_strdup(v234);
          std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100](&v116->sid_ctx[20], v117);
          if (!*&(*v223)->sid_ctx[20])
          {
            goto LABEL_433;
          }

          *&v118 = 0xAAAAAAAAAAAAAAAALL;
          *(&v118 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v251 = v118;
          v252 = v118;
          v250 = v118;
          if (!CBB_add_u16_length_prefixed(v249, &v250))
          {
            goto LABEL_433;
          }

          v119 = OPENSSL_strnlen(v234, 129);
          if (!CBB_add_bytes(&v250, v234, v119) || !CBB_flush(v249))
          {
            goto LABEL_433;
          }
        }

        else
        {
          v62 = 0;
        }

        if (v58)
        {
          OPENSSL_free(v227);
          v227 = 0;
          v228 = 0;
          v227 = OPENSSL_malloc(0x30uLL);
          if (!v227)
          {
            goto LABEL_433;
          }

          v228 = 48;
          v134 = EVP_PKEY_get0_RSA(*v220);
          if (!v134)
          {
            ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1614);
            goto LABEL_433;
          }

          if (!v228 || (*v227 = *(this + 1605), v228 <= 1) || (v227[1] = *(this + 1604), v228 <= 2))
          {
LABEL_563:
            abort();
          }

          if (!RAND_bytes(v227 + 2, 46))
          {
            goto LABEL_433;
          }

          *&v135 = 0xAAAAAAAAAAAAAAAALL;
          *(&v135 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v234[1] = v135;
          v235 = v135;
          v234[0] = v135;
          *&v250 = 0xAAAAAAAAAAAAAAAALL;
          *v226 = 0xAAAAAAAAAAAAAAAALL;
          if (!CBB_add_u16_length_prefixed(v249, v234))
          {
            goto LABEL_433;
          }

          v136 = RSA_size(v134);
          if (!CBB_reserve(v234, &v250, v136))
          {
            goto LABEL_433;
          }

          v137 = v250;
          v138 = RSA_size(v134);
          if (!RSA_encrypt(v134, v226, v137, v138, v227, v228, 1) || !CBB_did_write(v234, *v226) || !CBB_flush(v249))
          {
            goto LABEL_433;
          }
        }

        else if ((v58 & 2) != 0)
        {
          *&v140 = 0xAAAAAAAAAAAAAAAALL;
          *(&v140 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v234[1] = v140;
          v235 = v140;
          v234[0] = v140;
          if (!CBB_add_u8_length_prefixed(v249, v234))
          {
            goto LABEL_433;
          }

          *&v250 = 0xAAAAAAAAAAAAAAAALL;
          bssl::SSLKeyShare::Create(HIWORD((*v223)->key_arg_length), &v250);
          v141 = 50;
          LOBYTE(v226[0]) = 50;
          if (!v250)
          {
            goto LABEL_431;
          }

          if (((*(*v250 + 32))(v250, v234, &v227, v226, *(this + 89), *(this + 90)) & 1) == 0)
          {
            v141 = LOBYTE(v226[0]);
LABEL_431:
            bssl::ssl_send_alert(v53, 2, v141);
LABEL_432:
            std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](&v250, 0);
            goto LABEL_433;
          }

          if (!CBB_flush(v249))
          {
            goto LABEL_432;
          }

          OPENSSL_free(*v216);
          *v216 = 0;
          *(v216 + 1) = 0;
          std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](&v250, 0);
        }

        else
        {
          if ((v58 & 8) == 0)
          {
            bssl::ssl_send_alert(v53, 2, 40);
            v63 = 1664;
            v64 = 68;
LABEL_293:
            ERR_put_error(16, 0, v64, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", v63);
            goto LABEL_433;
          }

          if (!bssl::Array<unsigned char>::InitUninitialized(&v227, v62))
          {
            goto LABEL_433;
          }

          if (v228)
          {
            bzero(v227, v228);
          }
        }

        if ((v59 & 8) != 0)
        {
          *&v188 = 0xAAAAAAAAAAAAAAAALL;
          *(&v188 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v234[1] = v188;
          v235 = v188;
          v234[0] = v188;
          CBB_zero(v234);
          *&v189 = 0xAAAAAAAAAAAAAAAALL;
          *(&v189 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v251 = v189;
          v252 = v189;
          v250 = v189;
          if (!CBB_init(v234, v228 + v62 + 4) || !CBB_add_u16_length_prefixed(v234, &v250) || !CBB_add_bytes(&v250, v227, v228) || !CBB_add_u16_length_prefixed(v234, &v250) || !CBB_add_bytes(&v250, &v249[64], v62) || !bssl::CBBFinishArray(v234, &v227))
          {
            CBB_cleanup(v234);
            goto LABEL_433;
          }

          CBB_cleanup(v234);
        }

        if (bssl::ssl_add_message_cbb(v53, v229))
        {
          v143 = *(this + 192);
          *(v143 + 58) = 48;
          if (bssl::tls1_generate_master_secret(this, (v143 + 10), 48, v227, v228))
          {
            *(*(this + 192) + 440) = *(*(this + 192) + 440) & 0xFE | *(this + 1602) & 1;
            *(this + 5) = 14;
            finished = 1;
            goto LABEL_434;
          }
        }

LABEL_433:
        finished = 0;
LABEL_434:
        OPENSSL_free(v227);
LABEL_435:
        CBB_cleanup(v229);
LABEL_489:
        if (*(this + 5) != v3)
        {
          bssl::ssl_do_info_callback(*this, 0x1001);
        }

        if (finished == 1)
        {
          continue;
        }

LABEL_548:
        v214 = *MEMORY[0x1E69E9840];
        return finished;
      case 14:
        if ((*(this + 1600) & 0x20) == 0 || !*v222)
        {
          v19 = 15;
          goto LABEL_487;
        }

        v20 = *this;
        *&v21 = 0xAAAAAAAAAAAAAAAALL;
        *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v249[80] = v21;
        *&v249[96] = v21;
        *&v249[64] = v21;
        CBB_zero(&v249[64]);
        *&v22 = 0xAAAAAAAAAAAAAAAALL;
        *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v234[1] = v22;
        v235 = v22;
        v234[0] = v22;
        v230 = v22;
        v231 = v22;
        *v229 = v22;
        if (((*(*v20 + 88))(v20, &v249[64], v234, 15) & 1) == 0)
        {
          goto LABEL_320;
        }

        if (!*(this + 805))
        {
          __assert_rtn("do_send_client_certificate_verify", "handshake_client.cc", 1715, "hs->signature_algorithm != 0");
        }

        if (bssl::ssl_protocol_version(v20, v23) >= 0x303 && !CBB_add_u16(v234, *(this + 805)))
        {
          ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1719);
LABEL_320:
          finished = 0;
          goto LABEL_321;
        }

        v24 = EVP_PKEY_size(*(*v222 + 1));
        *v249 = 0xAAAAAAAAAAAAAAAALL;
        if (!CBB_add_u16_length_prefixed(v234, v229) || !CBB_reserve(v229, v249, v24))
        {
          goto LABEL_320;
        }

        *&v250 = v24;
        v25 = bssl::ssl_private_key_sign(this, *v249, &v250, v24, *(this + 805), *(*(this + 53) + 8), **(this + 53));
        if (v25 == 1)
        {
          finished = 9;
          v27 = 14;
        }

        else
        {
          if (v25 == 2 || !CBB_did_write(v229, v250) || !bssl::ssl_add_message_cbb(v20, &v249[64]))
          {
            goto LABEL_320;
          }

          bssl::SSLTranscript::FreeBuffer(this + 53);
          finished = 1;
          v27 = 15;
        }

        *(this + 5) = v27;
LABEL_321:
        CBB_cleanup(&v249[64]);
        goto LABEL_489;
      case 15:
        v38 = *this;
        *(this + 400) |= 0x1000000u;
        if (!(*(*v38 + 112))(v38, a2) || !bssl::tls1_change_cipher_state(this, 1))
        {
          goto LABEL_428;
        }

        v39 = *(this + 400);
        if ((v39 & 0x4000) != 0)
        {
          v121 = *(v38[6] + 488);
          *&v122 = 0xAAAAAAAAAAAAAAAALL;
          *(&v122 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v249[80] = v122;
          *&v249[96] = v122;
          *&v249[64] = v122;
          CBB_zero(&v249[64]);
          *&v123 = 0xAAAAAAAAAAAAAAAALL;
          *(&v123 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v234[1] = v123;
          v235 = v123;
          v234[0] = v123;
          v230 = v123;
          v231 = v123;
          *v229 = v123;
          if (!(*(*v38 + 88))(v38, &v249[64], v234, 67) || !CBB_add_u8_length_prefixed(v234, v229) || !CBB_add_bytes(v229, *(v38[6] + 480), *(v38[6] + 488)) || !CBB_add_u8_length_prefixed(v234, v229) || !CBB_add_bytes(v229, &bssl::do_send_client_finished(bssl::SSL_HANDSHAKE *)::kZero, 32 - ((v121 + 2) & 0x1F)) || (bssl::ssl_add_message_cbb(v38, &v249[64]) & 1) == 0)
          {
            ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1779);
            CBB_cleanup(&v249[64]);
            goto LABEL_428;
          }

          CBB_cleanup(&v249[64]);
          if ((*(this + 400) & 0x2000000) == 0)
          {
            goto LABEL_75;
          }
        }

        else if ((v39 & 0x2000000) == 0)
        {
          goto LABEL_75;
        }

        *&v124 = 0xAAAAAAAAAAAAAAAALL;
        *(&v124 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v249[80] = v124;
        *&v249[96] = v124;
        *&v249[64] = v124;
        CBB_zero(&v249[64]);
        *&v125 = 0xAAAAAAAAAAAAAAAALL;
        *(&v125 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v234[1] = v125;
        v235 = v125;
        v234[0] = v125;
        if (!(*(*v38 + 88))(v38, &v249[64], v234, 203) || !bssl::tls1_write_channel_id(this, v234, v126, v127) || (bssl::ssl_add_message_cbb(v38, &v249[64]) & 1) == 0)
        {
          ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1790);
          CBB_cleanup(&v249[64]);
          goto LABEL_428;
        }

        CBB_cleanup(&v249[64]);
LABEL_75:
        if (!bssl::ssl_send_finished(this, a2))
        {
          goto LABEL_428;
        }

        v40 = 16;
        goto LABEL_77;
      case 16:
        v18 = *this;
        if (*(*this + 104))
        {
          v19 = 20;
          goto LABEL_487;
        }

        if (!bssl::tls1_record_handshake_hashes_for_channel_id(this, a2))
        {
          goto LABEL_428;
        }

        *(this + 5) = 17;
        if ((SSL_get_mode(v18) & 0x80) == 0)
        {
          goto LABEL_488;
        }

        v94 = *this;
        if (SSL_is_dtls(*this))
        {
          goto LABEL_488;
        }

        if (SSL_version(v94) != 771)
        {
          goto LABEL_488;
        }

        v95 = *(this + 196);
        if (*(v95 + 20) != 2)
        {
          goto LABEL_488;
        }

        if (*(v95 + 32) != 8)
        {
          goto LABEL_488;
        }

        handshake_func = v94->handshake_func;
        if (*(handshake_func + 54) == 2 || (*&v94->s2[2].challenge[20] & 0x100) == 0 && !*(handshake_func + 63) && !*(handshake_func + 61))
        {
          goto LABEL_488;
        }

        if ((*(*(v18 + 48) + 222) & 0x10) != 0)
        {
          goto LABEL_488;
        }

        *(this + 400) |= 0x2200u;
        finished = 12;
        goto LABEL_489;
      case 17:
        if ((*(this + 1601) & 0x80) == 0)
        {
          goto LABEL_102;
        }

        v72 = *this;
        *&v249[96] = 0xAAAAAAAAAAAAAAAALL;
        *&v73 = 0xAAAAAAAAAAAAAAAALL;
        *(&v73 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v249[64] = v73;
        *&v249[80] = v73;
        if (!(*(*v72 + 24))(v72, &v249[64]))
        {
LABEL_188:
          finished = 3;
          goto LABEL_489;
        }

        if (!bssl::ssl_check_message_type(v72, &v249[64], 4) || !bssl::ssl_hash_message(this, &v249[64]))
        {
          goto LABEL_428;
        }

        v234[0] = *&v249[72];
        memset(v229, 170, sizeof(v229));
        LODWORD(v250) = -1431655766;
        if (!CBS_get_u32(v234, &v250) || !CBS_get_u16_length_prefixed(v234, v229) || *(&v234[0] + 1))
        {
          bssl::ssl_send_alert(v72, 2, 50);
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1894);
          goto LABEL_428;
        }

        if (*&v229[2])
        {
          v75 = *(v72 + 13);
          if (v75)
          {
            if (*v223)
            {
              bssl::ssl_client_handshake();
            }

            bssl::SSL_SESSION_dup(v75, 2, v249);
            v76 = *v249;
            *v249 = 0;
            std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](v223, v76);
            std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](v249, 0);
            if (!*v223)
            {
              goto LABEL_428;
            }

            (*v223)[1].session_id[24] |= 1u;
          }

          bssl::ssl_session_rebase_time(v72, *v223, v74);
          v77 = *v223;
          v78 = *v229;
          v79 = *&v229[2];
          if (!bssl::Array<unsigned char>::InitUninitialized(&(*v223)->ex_data.dummy, *&v229[2]))
          {
LABEL_428:
            finished = 0;
            goto LABEL_489;
          }

          if (v79)
          {
            v80 = *&v77->ex_data.dummy;
            do
            {
              v81 = *v78++;
              *v80++ = v81;
              --v79;
            }

            while (v79);
          }

          v82 = *(this + 192);
          *(v82 + 372) = v250;
          *(v82 + 91) = 32;
          SHA256(*v229, *&v229[2], (v82 + 59));
          (*(*v72 + 32))(v72);
        }

        else
        {
          *(this + 400) &= ~0x8000u;
          (*(*v72 + 32))(v72);
        }

LABEL_102:
        *(this + 5) = 18;
        finished = 15;
        goto LABEL_489;
      case 18:
        if (!bssl::tls1_change_cipher_state(this, 0))
        {
          goto LABEL_428;
        }

        v19 = 19;
        goto LABEL_487;
      case 19:
        v67 = *this;
        finished = bssl::ssl_get_finished(this, a2);
        if (finished != 1)
        {
          goto LABEL_489;
        }

        if (*(v67 + 104))
        {
          v30 = 15;
        }

        else
        {
          v30 = 20;
        }

        goto LABEL_191;
      case 20:
        v49 = *this;
        if (*(*(*this + 48) + 216) == 2)
        {
          *(this + 400) |= 2u;
          bssl::ssl_send_alert(v49, 2, 121);
          ERR_put_error(16, 0, 319, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1973);
          goto LABEL_428;
        }

        (*(*v49 + 128))(*this, a2);
        v83 = *v223;
        if (!*v223)
        {
          v120 = *(v49 + 104);
          if (!v120)
          {
            bssl::ssl_client_handshake();
          }

          SSL_SESSION_up_ref(*(v49 + 104));
          v89 = (*(v49 + 48) + 472);
          v90 = v120;
          goto LABEL_248;
        }

        bssl::SSL_SESSION_dup(*v223, 3, &v249[64]);
        v84 = *(v49 + 48);
        v85 = *&v249[64];
        *&v249[64] = 0;
        std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100]((v84 + 472), v85);
        v86 = *&v249[64];
        *&v249[64] = 0;
        if (v86)
        {
          SSL_SESSION_free(v86);
        }

        v87 = *(v49 + 48);
        v88 = *(v87 + 472);
        if (v88)
        {
          if ((*(v87 + 222) & 0x10) == 0)
          {
            *(v88 + 440) &= ~4u;
          }

          v89 = v223;
          v90 = 0;
LABEL_248:
          std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](v89, v90);
          *(this + 400) |= 8u;
          *(*(v49 + 48) + 222) |= 0x10u;
          if (v83)
          {
            bssl::ssl_update_cache(v49, a2);
          }

          v19 = 21;
          goto LABEL_487;
        }

        goto LABEL_428;
      case 21:
        bssl::ssl_do_info_callback(*this, 0x20);
        finished = 1;
        goto LABEL_548;
      default:
        goto LABEL_428;
    }
  }
}

void sub_1A90131E4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

const SSL *boringssl_context_info_handler(const SSL *result, char *a2, char *a3)
{
  v76 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    result = SSL_get_ex_data(result, 0);
    if (result)
    {
      v6 = result;
      if (result->version == -1252936367)
      {
        method = result->method;
        if (method)
        {
          if (a2 > 0x2000)
          {
            if (a2 > 16387)
            {
              if (a2 == 16388)
              {
                boringssl_context_alert_callback_handler(v5, 16388, a3, 1);
              }

              else if (a2 == 16392)
              {
                boringssl_context_alert_callback_handler(v5, 16392, a3, 0);
              }
            }

            else if (a2 == 8193)
            {
              v22 = SSL_state(v5);
              LODWORD(method[1].ssl_write) = v22;
              get_cipher = method[1].get_cipher;
              if (get_cipher)
              {
                (*(get_cipher + 2))(get_cipher, v22);
              }

              WeakRetained = objc_loadWeakRetained(&method->ssl_clear);
              if (!WeakRetained || (v25 = WeakRetained, v26 = objc_loadWeakRetained(&method->ssl_clear), a2 = v26[435], v26, v25, (a2 & 1) == 0))
              {
                v27 = objc_loadWeakRetained(&method->ssl_clear);
                if (v27)
                {
                  v28 = objc_loadWeakRetained(&method->ssl_clear);
                  v29 = (v28[435] & 1) == 0;
                }

                else
                {
                  v29 = 1;
                }

                if (v29)
                {
                  if (g_boringssl_log)
                  {
                    v42 = g_boringssl_log;
                    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                    {
                      v43 = objc_loadWeakRetained(&method->ssl_clear);
                      if (v43)
                      {
                        a2 = objc_loadWeakRetained(&method->ssl_clear);
                        v44 = a2 + 351;
                      }

                      else
                      {
                        v44 = &unk_1A9098A9F;
                      }

                      v55 = objc_loadWeakRetained(&method->ssl_clear);
                      if ((BYTE4(method[2].ssl_renegotiate) & 0x10) != 0)
                      {
                        v56 = "Server";
                      }

                      else
                      {
                        v56 = "Client";
                      }

                      v64 = 136447490;
                      v65 = "boringssl_context_info_handler";
                      v66 = 1024;
                      v67 = 2405;
                      v68 = 2082;
                      v69 = v44;
                      v70 = 2048;
                      v71 = v55;
                      v72 = 2082;
                      v73 = v56;
                      v74 = 2082;
                      v75 = SSL_state_string_long(v5);
                      _os_log_impl(&dword_1A8FF5000, v42, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] %{public}s handshake state: %{public}s", &v64, 0x3Au);

                      if (v43)
                      {
                      }
                    }
                  }
                }
              }

              if (nw_settings_get_signposts_enabled() && kdebug_is_enabled())
              {
                boringssl_context_info_handler_cold_1(v5);
              }
            }
          }

          else if (a2 > 4096)
          {
            if (a2 == 4097)
            {
              v30 = SSL_state(v5);
              LODWORD(method[1].ssl_write) = v30;
              v31 = method[1].get_cipher;
              if (v31)
              {
                (*(v31 + 2))(v31, v30);
              }

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
                    v45 = g_boringssl_log;
                    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                    {
                      v46 = objc_loadWeakRetained(&method->ssl_clear);
                      if (v46)
                      {
                        a2 = objc_loadWeakRetained(&method->ssl_clear);
                        v47 = a2 + 351;
                      }

                      else
                      {
                        v47 = &unk_1A9098A9F;
                      }

                      v57 = objc_loadWeakRetained(&method->ssl_clear);
                      if ((BYTE4(method[2].ssl_renegotiate) & 0x10) != 0)
                      {
                        v58 = "Server";
                      }

                      else
                      {
                        v58 = "Client";
                      }

                      v64 = 136447490;
                      v65 = "boringssl_context_info_handler";
                      v66 = 1024;
                      v67 = 2394;
                      v68 = 2082;
                      v69 = v47;
                      v70 = 2048;
                      v71 = v57;
                      v72 = 2082;
                      v73 = v58;
                      v74 = 2082;
                      v75 = SSL_state_string_long(v5);
                      _os_log_impl(&dword_1A8FF5000, v45, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] %{public}s handshake state: %{public}s", &v64, 0x3Au);

                      if (v46)
                      {
                      }
                    }
                  }
                }
              }

              if (nw_settings_get_signposts_enabled() && kdebug_is_enabled())
              {
                boringssl_context_info_handler_cold_1(v5);
              }
            }
          }

          else if (a2 == 16)
          {
            v15 = objc_loadWeakRetained(&method->ssl_clear);
            if (!v15 || (v16 = v15, v17 = objc_loadWeakRetained(&method->ssl_clear), v18 = v17[435], v17, v16, (v18 & 1) == 0))
            {
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

              if (v21)
              {
                if (g_boringssl_log)
                {
                  v39 = g_boringssl_log;
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                  {
                    v40 = objc_loadWeakRetained(&method->ssl_clear);
                    if (v40)
                    {
                      a3 = objc_loadWeakRetained(&method->ssl_clear);
                      v41 = a3 + 351;
                    }

                    else
                    {
                      v41 = &unk_1A9098A9F;
                    }

                    v51 = objc_loadWeakRetained(&method->ssl_clear);
                    v52 = v51;
                    v53 = BYTE4(method[2].ssl_renegotiate);
                    v65 = "boringssl_context_info_handler";
                    v66 = 1024;
                    v64 = 136447234;
                    v67 = 2377;
                    if ((v53 & 0x10) != 0)
                    {
                      v54 = "Server";
                    }

                    else
                    {
                      v54 = "Client";
                    }

                    v68 = 2082;
                    v69 = v41;
                    v70 = 2048;
                    v71 = v51;
                    v72 = 2082;
                    v73 = v54;
                    _os_log_impl(&dword_1A8FF5000, v39, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] %{public}s handshake started", &v64, 0x30u);

                    if (v40)
                    {
                    }
                  }
                }
              }
            }

            boringssl_session_set_state(v6, 1);
          }

          else if (a2 == 32)
          {
            v8 = objc_loadWeakRetained(&method->ssl_clear);
            if (!v8 || (v9 = v8, v10 = objc_loadWeakRetained(&method->ssl_clear), v11 = v10[435], v10, v9, (v11 & 1) == 0))
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
                  v48 = g_boringssl_log;
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                  {
                    v49 = objc_loadWeakRetained(&method->ssl_clear);
                    if (v49)
                    {
                      a3 = objc_loadWeakRetained(&method->ssl_clear);
                      v50 = a3 + 351;
                    }

                    else
                    {
                      v50 = &unk_1A9098A9F;
                    }

                    v59 = objc_loadWeakRetained(&method->ssl_clear);
                    v60 = v59;
                    v61 = BYTE4(method[2].ssl_renegotiate);
                    v65 = "boringssl_context_info_handler";
                    v66 = 1024;
                    v64 = 136447234;
                    v67 = 2383;
                    if ((v61 & 0x10) != 0)
                    {
                      v62 = "Server";
                    }

                    else
                    {
                      v62 = "Client";
                    }

                    v68 = 2082;
                    v69 = v50;
                    v70 = 2048;
                    v71 = v59;
                    v72 = 2082;
                    v73 = v62;
                    _os_log_impl(&dword_1A8FF5000, v48, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] %{public}s handshake done", &v64, 0x30u);

                    if (v49)
                    {
                    }
                  }
                }
              }
            }

            boringssl_session_finish_handshake(v6);
          }

          result = nw_settings_get_signposts_enabled();
          if (result)
          {
            result = kdebug_is_enabled();
            if (result)
            {
              result = kdebug_trace();
            }
          }
        }
      }
    }
  }

  v63 = *MEMORY[0x1E69E9840];
  return result;
}

void BUF_MEM_free(BUF_MEM *a)
{
  if (a)
  {
    OPENSSL_free(a->data);

    OPENSSL_free(a);
  }
}

int SSL_do_handshake(SSL *s)
{
  *(s->handshake_func + 49) = 0;
  ERR_clear_error();
  ERR_clear_system_error();
  if (!*&s->rwstate)
  {
    ERR_put_error(16, 0, 134, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_lib.cc", 877);
    LODWORD(v4) = -1;
    return v4;
  }

  v3 = *(s->handshake_func + 35);
  if (!v3 || (*(v3 + 1600) & 8) != 0)
  {
    goto LABEL_13;
  }

  v11 = 0;
  v4 = bssl::ssl_run_handshake(v3, &v11, v2);
  if (BYTE4(s->param))
  {
    v5 = 8194;
  }

  else
  {
    v5 = 4098;
  }

  v6 = *&s->packet_length;
  if (v6 || (v6 = *&s->s2[1].rbuf_offs) != 0)
  {
    v6(s, v5, v4);
  }

  if (v4 >= 1)
  {
    if ((v11 & 1) == 0)
    {
      handshake_func = s->handshake_func;
      v8 = *(handshake_func + 35);
      *(handshake_func + 35) = 0;
      std::unique_ptr<bssl::SSL_HANDSHAKE,bssl::internal::Deleter>::reset[abi:ne200100](handshake_func + 36, v8);
      std::unique_ptr<bssl::SSL_HANDSHAKE,bssl::internal::Deleter>::reset[abi:ne200100](s->handshake_func + 35, 0);
      bssl::ssl_maybe_shed_handshake_config(s, v9);
    }

LABEL_13:
    LODWORD(v4) = 1;
  }

  return v4;
}

uint64_t nw_protocol_boringssl_handshake_negotiate(void *a1)
{
  v1 = a1;
  v2 = v1;
  if ((!v1 || (v1[435] & 1) == 0) && (nw_protocol_boringssl_handshake_negotiate_cold_1(v1 == 0) & 1) != 0 || !*(v2 + 37) || (v3 = *(v2 + 5)) == 0)
  {
    v4 = 0xFFFFFFFFLL;
    goto LABEL_30;
  }

  if ((*(v2 + 349) & 4) != 0)
  {
    v4 = 0;
    goto LABEL_30;
  }

  *(v2 + 349) |= 4u;
  v4 = v3();
  *(v2 + 349) &= ~4u;
  v5 = v2;
  if ((v5[435] & 1) == 0)
  {
    nw_protocol_boringssl_handshake_negotiate_cold_2();
  }

  v6 = *(v2 + 37);
  if (v6)
  {
    if (v4)
    {
      current_handshake_state = boringssl_session_get_current_handshake_state(v6);
      if (current_handshake_state)
      {
        boringssl_helper_get_handshake_state_description(current_handshake_state);
        if ((v5[435] & 1) == 0)
        {
          nw_protocol_boringssl_handshake_negotiate_cold_3();
        }
      }

      ERR_print_errors_cb(nw_protocol_error_print, *(v2 + 37));
      if (*(v5 + 35))
      {
        nw_queue_cancel_source();
        *(v5 + 35) = 0;
      }

      nw_protocol_boringssl_internal_error(v5, -9858);
      v8 = nw_protocol_upcast();
      nw_protocol_upcast();
      nw_protocol_get_output_handler();
      nw_protocol_boringssl_disconnect(v8);
      goto LABEL_27;
    }

    if (boringssl_session_get_state(v6) == 2)
    {
      goto LABEL_26;
    }

    if (boringssl_session_in_false_start(*(v2 + 37)))
    {
      if ((v5[435] & 1) == 0)
      {
        nw_protocol_boringssl_handshake_negotiate_cold_5();
      }

LABEL_26:
      nw_protocol_boringssl_signal_connected(v5);
      v9 = nw_protocol_upcast();
      nw_boringssl_read(v9);
      goto LABEL_27;
    }

    if (boringssl_session_in_early_data(*(v2 + 37)))
    {
      if ((v5[435] & 1) == 0)
      {
        nw_protocol_boringssl_handshake_negotiate_cold_4();
      }

      goto LABEL_26;
    }
  }

LABEL_27:

  if (boringssl_session_get_state(*(v2 + 37)) == 2)
  {
    *(v2 + 349) &= ~2u;
  }

  v10 = nw_protocol_upcast();
  nw_boringssl_read(v10);
LABEL_30:

  return v4;
}

uint64_t boringssl_session_handshake_negotiate(uint64_t result)
{
  if (!result)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = result;
  if (*result != -1252936367)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(result + 8);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(v2 + 292);
  if ((v3 - 2) >= 4)
  {
    if (v3 == 1)
    {
      boringssl_context_start_handshake_timer(result);

      return boringssl_session_handshake_continue_inner(v1, 0);
    }

    else if (!v3)
    {
      boringssl_session_set_state(result, 1);
      boringssl_context_start_handshake_timer(v1);

      return boringssl_session_handshake_start(v1);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));
    if (WeakRetained)
    {
      v5 = WeakRetained;
      v6 = objc_loadWeakRetained((v2 + 16));
      v7 = v6[435];

      if (v7)
      {
        return 0;
      }
    }

    v8 = objc_loadWeakRetained((v2 + 16));
    if (v8)
    {
      v9 = objc_loadWeakRetained((v2 + 16));
      v10 = (v9[435] & 1) == 0;
    }

    else
    {
      v10 = 1;
    }

    result = 0;
    if (v10 && g_boringssl_log)
    {
      v11 = g_boringssl_log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        boringssl_session_handshake_negotiate_cold_1();
      }

      return 0;
    }
  }

  return result;
}

__darwin_time_t boringssl_helper_get_current_time_ms()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return 1000 * v1.tv_sec + v1.tv_usec / 1000;
}

void boringssl_context_start_handshake_timer(uint64_t a1)
{
  if (*a1 == -1252936367)
  {
    v1 = *(a1 + 8);
    if (v1)
    {
      if ((v1[548] & 0x20) != 0)
      {
        v2 = v1;
        WeakRetained = objc_loadWeakRetained(v2 + 2);
        v4 = WeakRetained[35];

        if (v4)
        {
          v5 = objc_loadWeakRetained(v2 + 2);
          v6 = v5[35];
          nw_queue_cancel_source();

          v7 = objc_loadWeakRetained(v2 + 2);
          v7[35] = 0;
        }

        v26 = v2;
        v8 = v26;
        source = nw_queue_context_create_source();
        v10 = objc_loadWeakRetained(v8 + 2);
        v10[35] = source;

        v11 = objc_loadWeakRetained(v8 + 2);
        v12 = v11[35];

        if (v12)
        {
          v13 = *(v8 + 548);
          v14 = objc_loadWeakRetained(v8 + 2);
          v15 = v14[35];
          if ((v13 & 0x10) != 0)
          {
            v16 = 10000000000;
          }

          else
          {
            v16 = 2000000000;
          }

          dispatch_time(0, v16);
          nw_queue_set_timer_values();

          v17 = objc_loadWeakRetained(v8 + 2);
          isa = v17[35].isa;
          nw_queue_activate_source();
        }

        else
        {
          v19 = objc_loadWeakRetained(v8 + 2);
          if (v19)
          {
            v20 = v19;
            v21 = objc_loadWeakRetained(v8 + 2);
            v22 = v21[435];

            if (v22)
            {
              goto LABEL_12;
            }
          }

          v23 = objc_loadWeakRetained(v8 + 2);
          if (v23)
          {
            v24 = objc_loadWeakRetained(v8 + 2);
            v25 = (v24[435] & 1) == 0;
          }

          else
          {
            v25 = 1;
          }

          if (!v25 || !g_boringssl_log)
          {
            goto LABEL_12;
          }

          v17 = g_boringssl_log;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            boringssl_context_start_handshake_timer_cold_1();
          }
        }

LABEL_12:
      }
    }
  }
}

const char *SSL_get_group_name(int a1)
{
  result = "P-224";
  v3 = 504;
  while (*(result - 1) != a1)
  {
    result += 72;
    v3 -= 72;
    if (!v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t nw_protocol_boringssl_handshake_negotiate_cold_1(char a1)
{
  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v2 && g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_28();
    _os_log_debug_impl(v5, v6, v7, v8, v9, 0x26u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return a1 & 1;
}

unint64_t *OPENSSL_sk_value(unint64_t *result, unint64_t a2)
{
  if (result)
  {
    if (*result <= a2)
    {
      return 0;
    }

    else
    {
      return *(result[1] + 8 * a2);
    }
  }

  return result;
}

void std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    (**v2)(v2);
    OPENSSL_free(v2);
  }
}

uint64_t bssl::ssl_do_info_callback(uint64_t this, const ssl_st *a2)
{
  v2 = *(this + 112);
  if (v2)
  {
    return v2();
  }

  v2 = *(*(this + 120) + 392);
  if (v2)
  {
    return v2();
  }

  return this;
}

void *__cdecl CRYPTO_get_ex_data(const CRYPTO_EX_DATA *ad, int idx)
{
  if (idx < 0)
  {
    return 0;
  }

  sk = ad->sk;
  if (!sk || EVP_MD_CTX_md(sk) <= idx)
  {
    return 0;
  }

  v5 = ad->sk;

  return OPENSSL_sk_value(v5, idx);
}

uint64_t boringssl_context_set_key_exchange_groups(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = v5;
  if (a1 && *a1 == -1252936367)
  {
    v7 = 0xFFFFFFFFLL;
    if (v5 && *(a1 + 8))
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      count = xpc_array_get_count(v5);
      v8 = malloc_type_malloc(2 * v17[3], 0x1000040BDFB0063uLL);
      if (v8)
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __boringssl_context_set_key_exchange_groups_block_invoke;
        v11[3] = &unk_1E7869520;
        v15 = a3;
        v12 = v6;
        v13 = &v16;
        v14 = v8;
        xpc_array_apply(v12, v11);
        v9 = v17[3];
        if (v9)
        {
          v7 = boringssl_context_set_key_exchange_groups_from_list(a1, v8, v9);
        }

        free(v8);
      }

      _Block_object_dispose(&v16, 8);
    }
  }

  else
  {
    v7 = 0xFFFFFFFFLL;
  }

  return v7;
}

void sub_1A90147DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __boringssl_context_set_key_exchange_groups_block_invoke(uint64_t a1, size_t a2)
{
  uint64 = xpc_array_get_uint64(*(a1 + 32), a2);
  if ((*(a1 + 56) & 1) != 0 || uint64 != 4588)
  {
    *(*(a1 + 48) + 2 * a2) = uint64;
  }

  else
  {
    --*(*(*(a1 + 40) + 8) + 24);
  }

  return 1;
}

uint64_t boringssl_context_set_key_exchange_groups_from_list(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1 || *a1 != -1252936367)
  {
    goto LABEL_36;
  }

  result = 0xFFFFFFFFLL;
  if (!a3)
  {
    goto LABEL_37;
  }

  if (!a2)
  {
    goto LABEL_37;
  }

  v7 = *(a1 + 8);
  if (!v7)
  {
    goto LABEL_37;
  }

  v8 = *(v7 + 392);
  if (!v8)
  {
    goto LABEL_37;
  }

  v27 = v7;
  bzero(v28, 0x400uLL);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  do
  {
    while (1)
    {
      curve_name = SSL_get_curve_name(*(a2 + 2 * v11));
      if (!curve_name)
      {
        break;
      }

      v13 = curve_name;
      if (v10)
      {
        if (v9 + 1 > 0x3FF)
        {
          goto LABEL_23;
        }

        v28[v9++] = 58;
      }

      v14 = strlen(curve_name);
      v15 = v14 + v9;
      if (v14 + v9 >= 0x400)
      {
        goto LABEL_23;
      }

      v16 = v28;
      strncpy(&v28[v9], v13, v14);
      v10 = 1;
      v9 = v15;
      if (a3 - 1 == v11++)
      {
        goto LABEL_24;
      }
    }

    ++v11;
  }

  while (a3 != v11);
  if (v10)
  {
    v16 = v28;
    goto LABEL_24;
  }

  if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
  {
    boringssl_context_set_key_exchange_groups_from_list_cold_1();
  }

LABEL_23:
  v16 = 0;
LABEL_24:
  if (SSL_set1_curves_list(v8, v16))
  {
    result = 0;
    goto LABEL_37;
  }

  WeakRetained = objc_loadWeakRetained((v27 + 16));
  if (WeakRetained)
  {
    v19 = WeakRetained;
    v20 = objc_loadWeakRetained((v27 + 16));
    v21 = v20[435];

    if (v21)
    {
LABEL_36:
      result = 0xFFFFFFFFLL;
      goto LABEL_37;
    }
  }

  v22 = objc_loadWeakRetained((v27 + 16));
  if (v22)
  {
    v23 = objc_loadWeakRetained((v27 + 16));
    v24 = (v23[435] & 1) == 0;
  }

  else
  {
    v24 = 1;
  }

  result = 0xFFFFFFFFLL;
  if (v24 && g_boringssl_log)
  {
    v25 = g_boringssl_log;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      boringssl_context_set_key_exchange_groups_from_list_cold_2();
    }

    goto LABEL_36;
  }

LABEL_37:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ssl_str_to_group_ids(uint64_t a1, char *__s)
{
  v2 = __s;
  v4 = 0;
  v5 = __s;
  do
  {
    v6 = strchr(v5, 58);
    ++v4;
    v5 = v6 + 1;
  }

  while (v6);
  v15 = 0;
  v16 = 0;
  if (bssl::Array<unsigned short>::InitUninitialized(&v15, v4))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = strchr(v2, 58);
      if (v16 <= v8)
      {
        abort();
      }

      v10 = v9;
      if (v9)
      {
        v11 = (v9 - v2);
      }

      else
      {
        v11 = strlen(v2);
      }

      if ((bssl::ssl_name_to_group_id((v15 + v7), v2, v11) & 1) == 0)
      {
        ERR_put_error(16, 0, 239, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_lib.cc", 2299);
        goto LABEL_14;
      }

      v2 = v10 + 1;
      v7 += 2;
      ++v8;
    }

    while (v10);
    if (v4 != v8)
    {
      __assert_rtn("ssl_str_to_group_ids", "ssl_lib.cc", 2307, "i == count");
    }

    OPENSSL_free(*a1);
    v12 = v16;
    *a1 = v15;
    *(a1 + 8) = v12;
    v15 = 0;
    v16 = 0;
    v13 = 1;
  }

  else
  {
LABEL_14:
    v13 = 0;
  }

  OPENSSL_free(v15);
  return v13;
}

uint64_t SSL_set1_curves_list(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return ssl_str_to_group_ids(v2 + 112, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t bssl::ssl_name_to_group_id(bssl *this, const char *a2, const char *a3)
{
  v6 = 504;
  for (i = "secp224r1"; strlen(i - 32) != a3 || strncmp(i - 32, a2, a3); i += 72)
  {
    v8 = strlen(i);
    if (v8)
    {
      if (v8 == a3 && !strncmp(i, a2, a3))
      {
        break;
      }
    }

    v6 -= 72;
    if (!v6)
    {
      return 0;
    }
  }

  *this = *(i - 17);
  return 1;
}

void boringssl_context_set_ciphersuites_from_list(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (*a1 == -1252936367)
    {
      if (v3)
      {
        if (*(a1 + 8))
        {
          count = xpc_array_get_count(v3);
          v6 = malloc_type_malloc(2 * count, 0x1000040BDFB0063uLL);
          if (v6)
          {
            v7 = v6;
            v8[0] = MEMORY[0x1E69E9820];
            v8[1] = 3221225472;
            v8[2] = __boringssl_context_set_ciphersuites_from_list_block_invoke;
            v8[3] = &unk_1E785EAA0;
            v9 = v4;
            v10 = v7;
            xpc_array_apply(v9, v8);
            if (count)
            {
              boringssl_context_set_cipher_suites(a1, v7, count);
            }

            free(v7);
          }
        }
      }
    }
  }
}

BOOL boringssl_context_set_ticket_request(_BOOL8 result, char a2, char a3)
{
  if (result)
  {
    if (*result == -1252936367 && (v3 = *(result + 8)) != 0)
    {
      v4 = *(v3 + 392);
      if (v4)
      {
        v5 = SSL_use_ticket_request(v4, a2, a3);
      }

      else
      {
        v5 = SSL_CTX_use_ticket_request(*(v3 + 400), a2, a3);
      }

      return v5 == 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SSL_use_ticket_request(uint64_t a1, char a2, char a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  *(v3 + 224) = a2;
  *(v3 + 225) = a3;
  return 1;
}

const char *nw_protocol_boringssl_get_redacted_identity(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    return "redacted";
  }

  v2 = "nil";
  if (a2)
  {
    v2 = a2;
  }

  if ((*(a1 + 435) & 2) != 0)
  {
    return "redacted";
  }

  else
  {
    return v2;
  }
}

uint64_t boringssl_session_get_early_data_enabled(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      return *(v1 + 551) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t boringssl_context_get_ech_enabled(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      return (*(v1 + 552) >> 4) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void boringssl_session_set_association(uint64_t a1, void *a2)
{
  v75 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    if (*a1 == -1252936367)
    {
      if (v4)
      {
        v6 = *(a1 + 8);
        if (v6)
        {
          v7 = boringssl_session_cache_create_with_association(v4);
          v8 = *(v6 + 32);
          *(v6 + 32) = v7;

          if ((boringssl_context_get_is_probe(a1) & 1) == 0)
          {
            v9 = *(v6 + 32);
            v10 = v9;
            if (*a1 != -1252936367)
            {
              goto LABEL_73;
            }

            v11 = *(a1 + 8);
            v12 = !v9 || v11 == 0;
            if (v12)
            {
              goto LABEL_73;
            }

            v13 = boringssl_session_cache_pop(v9);
            if (v13)
            {
              v14 = v13;
              is_session_state = boringssl_session_state_is_session_state(v13);
              WeakRetained = objc_loadWeakRetained((v11 + 16));
              v2 = WeakRetained;
              if (is_session_state)
              {
                if (!WeakRetained || (v17 = objc_loadWeakRetained((v11 + 16)), v18 = v17[435], v17, v2, (v18 & 1) == 0))
                {
                  v19 = objc_loadWeakRetained((v11 + 16));
                  if (v19)
                  {
                    v20 = objc_loadWeakRetained((v11 + 16));
                    v21 = (v20[435] & 1) == 0;
                  }

                  else
                  {
                    v21 = 1;
                  }

                  if (v21)
                  {
                    if (g_boringssl_log)
                    {
                      v26 = g_boringssl_log;
                      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
                      {
                        v27 = objc_loadWeakRetained((v11 + 16));
                        if (v27)
                        {
                          v62 = objc_loadWeakRetained((v11 + 16));
                          v28 = v62 + 351;
                        }

                        else
                        {
                          v28 = &unk_1A9098A9F;
                        }

                        v43 = objc_loadWeakRetained((v11 + 16));
                        v44 = v43;
                        v12 = (*(v11 + 548) & 0x10) == 0;
                        *buf = 136447234;
                        v64 = "boringssl_session_install_association_state";
                        if (v12)
                        {
                          v45 = "Client";
                        }

                        else
                        {
                          v45 = "Server";
                        }

                        v65 = 1024;
                        v66 = 1532;
                        v67 = 2082;
                        v68 = v28;
                        v69 = 2048;
                        v70 = v43;
                        v71 = 2082;
                        v72 = v45;
                        _os_log_impl(&dword_1A8FF5000, v26, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] %{public}s session cache hit", buf, 0x30u);

                        if (v27)
                        {
                        }
                      }
                    }
                  }
                }

                v46 = boringssl_session_set_session_state(a1, v14);
                v47 = objc_loadWeakRetained((v11 + 16));
                if (v47)
                {
                  v48 = v47;
                  v49 = objc_loadWeakRetained((v11 + 16));
                  v50 = v49[435];

                  if (v50)
                  {
                    goto LABEL_72;
                  }
                }

                v51 = objc_loadWeakRetained((v11 + 16));
                if (v51)
                {
                  v52 = objc_loadWeakRetained((v11 + 16));
                  v53 = (v52[435] & 1) == 0;
                }

                else
                {
                  v53 = 1;
                }

                if (!v53 || !g_boringssl_log)
                {
                  goto LABEL_72;
                }

                v37 = g_boringssl_log;
                if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                {
                  v54 = objc_loadWeakRetained((v11 + 16));
                  if (v54)
                  {
                    v62 = objc_loadWeakRetained((v11 + 16));
                    v55 = v62 + 351;
                  }

                  else
                  {
                    v55 = &unk_1A9098A9F;
                  }

                  v57 = objc_loadWeakRetained((v11 + 16));
                  v58 = v57;
                  v59 = *(v11 + 548);
                  v60 = "Server";
                  v64 = "boringssl_session_install_association_state";
                  v65 = 1024;
                  v12 = (v59 & 0x10) == 0;
                  v66 = 1535;
                  v61 = "not set";
                  v68 = v55;
                  *buf = 136447490;
                  if (v12)
                  {
                    v60 = "Client";
                  }

                  v67 = 2082;
                  v69 = 2048;
                  if (v46)
                  {
                    v61 = "set";
                  }

                  v70 = v57;
                  v71 = 2082;
                  v72 = v60;
                  v73 = 2082;
                  v74 = v61;
                  _os_log_impl(&dword_1A8FF5000, v37, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] %{public}s session state %{public}s.", buf, 0x3Au);

                  if (v54)
                  {
                  }
                }

                goto LABEL_53;
              }

              if (!WeakRetained || (v22 = objc_loadWeakRetained((v11 + 16)), v23 = v22[435], v22, v2, (v23 & 1) == 0))
              {
                v24 = objc_loadWeakRetained((v11 + 16));
                if (v24)
                {
                  v25 = objc_loadWeakRetained((v11 + 16));
                  v2 = (v25[435] & 1) == 0;
                }

                else
                {
                  v2 = 1;
                }

                if (v2)
                {
                  if (g_boringssl_log)
                  {
                    v29 = g_boringssl_log;
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                    {
                      boringssl_session_set_association_cold_1();
                    }
                  }
                }
              }
            }

            v30 = objc_loadWeakRetained((v11 + 16));
            if (v30)
            {
              v31 = v30;
              v32 = objc_loadWeakRetained((v11 + 16));
              v33 = v32[435];

              if (v33)
              {
                v14 = 0;
LABEL_72:

LABEL_73:
                goto LABEL_74;
              }
            }

            v34 = objc_loadWeakRetained((v11 + 16));
            if (v34)
            {
              v35 = objc_loadWeakRetained((v11 + 16));
              v36 = (v35[435] & 1) == 0;
            }

            else
            {
              v36 = 1;
            }

            v14 = 0;
            if (!v36 || !g_boringssl_log)
            {
              goto LABEL_72;
            }

            v37 = g_boringssl_log;
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              v38 = objc_loadWeakRetained((v11 + 16));
              if (v38)
              {
                v2 = objc_loadWeakRetained((v11 + 16));
                v39 = (v2 + 351);
              }

              else
              {
                v39 = &unk_1A9098A9F;
              }

              v40 = objc_loadWeakRetained((v11 + 16));
              v41 = v40;
              v12 = (*(v11 + 548) & 0x10) == 0;
              *buf = 136447234;
              v64 = "boringssl_session_install_association_state";
              if (v12)
              {
                v42 = "Client";
              }

              else
              {
                v42 = "Server";
              }

              v65 = 1024;
              v66 = 1537;
              v67 = 2082;
              v68 = v39;
              v69 = 2048;
              v70 = v40;
              v71 = 2082;
              v72 = v42;
              _os_log_impl(&dword_1A8FF5000, v37, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] %{public}s session cache miss", buf, 0x30u);

              if (v38)
              {
              }
            }

            v14 = 0;
LABEL_53:

            goto LABEL_72;
          }
        }
      }
    }
  }

LABEL_74:

  v56 = *MEMORY[0x1E69E9840];
}

boringssl_concrete_boringssl_session_cache *boringssl_session_cache_create_with_association(void *a1)
{
  v2 = a1;
  v3 = objc_alloc_init(boringssl_concrete_boringssl_session_cache);
  v4 = v3;
  if (v3)
  {
    objc_storeStrong(&v3->association, a1);
  }

  return v4;
}

uint64_t boringssl_context_get_is_probe(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      return (*(v1 + 551) >> 2) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id boringssl_session_cache_pop(void *a1)
{
  v1 = a1;
  v2 = boringssl_session_cache_copy_queue(v1);
  if (v2 || (v2 = sec_array_create()) != 0)
  {
    v3 = v2;
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__0;
    v14 = __Block_byref_object_dispose__0;
    v15 = 0;
    v9 = sec_array_create();
    sec_array_apply();
    v4 = v1[1];
    v5 = nw_protocol_boringssl_copy_definition();
    v6 = v9;
    time(0);
    nw_association_set_cached_content_for_protocol();

    v7 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1A9015884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *boringssl_session_cache_copy_queue(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = nw_protocol_boringssl_copy_definition();
  cached_content_for_protocol = nw_association_get_cached_content_for_protocol();

  if (cached_content_for_protocol)
  {
    v4 = cached_content_for_protocol;
  }

  return cached_content_for_protocol;
}

uint64_t boringssl_session_clear_eap_metadata(uint64_t result)
{
  if (result && *result == -1252936367)
  {
    v1 = *(result + 8);
    if (v1)
    {
      v2 = *(v1 + 512);
      return nw_protocol_metadata_access_handle();
    }
  }

  return result;
}

uint64_t __boringssl_session_clear_eap_metadata_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 328);
  if (v2)
  {
    free(v2);
    *(a2 + 328) = 0;
  }

  return 1;
}

uint64_t boringssl_session_set_state(uint64_t a1, int a2)
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

  WeakRetained = objc_loadWeakRetained((v2 + 16));
  if (!WeakRetained || (v5 = WeakRetained, v6 = objc_loadWeakRetained((v2 + 16)), v7 = v6[435], v6, v5, (v7 & 1) == 0))
  {
    v8 = objc_loadWeakRetained((v2 + 16));
    if (v8)
    {
      v9 = objc_loadWeakRetained((v2 + 16));
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
        v12 = g_boringssl_log;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          boringssl_session_set_state_cold_1(v2, a2);
        }
      }
    }
  }

  result = 0;
  *(v2 + 292) = a2;
  return result;
}

uint64_t boringssl_session_handshake_start(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a1 || *a1 != -1252936367 || (v3 = a1[1]) == 0 || !*(v3 + 392))
  {
    result = 0xFFFFFFFFLL;
LABEL_8:
    v7 = *MEMORY[0x1E69E9840];
    return result;
  }

  *(v3 + 416) = boringssl_helper_get_current_time_ms();
  v4 = *(v3 + 392);
  if ((*(v3 + 548) & 0x10) != 0)
  {
    v5 = SSL_accept(v4);
  }

  else
  {
    v5 = SSL_connect(v4);
  }

  if (v5 > 0)
  {
    v8 = SSL_in_early_data(*(v3 + 392));
    WeakRetained = objc_loadWeakRetained((v3 + 16));
    if (!WeakRetained || (v10 = WeakRetained, v11 = objc_loadWeakRetained((v3 + 16)), v1 = v11[435], v11, v10, (v1 & 1) == 0))
    {
      v12 = objc_loadWeakRetained((v3 + 16));
      if (v12)
      {
        v13 = objc_loadWeakRetained((v3 + 16));
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
          v16 = g_boringssl_log;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = objc_loadWeakRetained((v3 + 16));
            if (v17)
            {
              v1 = objc_loadWeakRetained((v3 + 16));
              v18 = v1 + 351;
            }

            else
            {
              v18 = &unk_1A9098A9F;
            }

            v19 = objc_loadWeakRetained((v3 + 16));
            v20 = v19;
            v22 = 136447234;
            v23 = "boringssl_session_handshake_start";
            v21 = "true";
            v24 = 1024;
            v25 = 291;
            v26 = 2082;
            if (!v8)
            {
              v21 = "false";
            }

            v27 = v18;
            v28 = 2048;
            v29 = v19;
            v30 = 2082;
            v31 = v21;
            _os_log_impl(&dword_1A8FF5000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] In early data: %{public}s", &v22, 0x30u);

            if (v17)
            {
            }
          }
        }
      }
    }

    boringssl_session_update_metadata(a1);
    result = 0;
    goto LABEL_8;
  }

  v15 = *MEMORY[0x1E69E9840];

  return boringssl_session_handshake_incomplete(a1, v5, 0);
}

int SSL_connect(SSL *ssl)
{
  if (!*&ssl->rwstate)
  {
    BYTE4(ssl->param) &= ~1u;
    *&ssl->rwstate = bssl::ssl_client_handshake;
  }

  return SSL_do_handshake(ssl);
}

uint64_t SSL_set_tls13_pqtls_ciphersuites_enabled(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  *(*(result + 120) + 248) = *(*(result + 120) + 248) & 0xFB | v2;
  return result;
}

uint64_t bssl::ssl_get_version_range(void *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v6 = *a1;
  v7 = *(v6 + 144);
  if (SSL_is_dtls(v6))
  {
    v7 = v7 & 0xEFFFFFFF | (((v7 >> 26) & 1) << 28);
  }

  v20 = -21846;
  v8 = a1[1];
  if (bssl::ssl_protocol_version_from_wire(&v20, *(v8 + 10)) && (v19 = -21846, (bssl::ssl_protocol_version_from_wire(&v19, *(v8 + 8)) & 1) != 0))
  {
    v9 = 0;
    if (v20 <= 0x304u)
    {
      v10 = 772;
    }

    else
    {
      v10 = v20;
    }

    if (*(*a1 + 168))
    {
      v11 = v10;
    }

    else
    {
      v11 = v20;
    }

    v12 = &bssl::kProtocolVersions;
    v13 = v19;
    v14 = 4;
    do
    {
      v15 = *v12;
      if (v15 >= v11)
      {
        if (v19 < v15)
        {
          break;
        }

        if ((*(v12 + 1) & v7) != 0)
        {
          if (v9)
          {
            v13 = *(v12 - 4);
            goto LABEL_26;
          }

          v9 = 0;
        }

        else
        {
          if ((v9 & 1) == 0)
          {
            v11 = *v12;
          }

          v9 = 1;
        }
      }

      v12 += 4;
      --v14;
    }

    while (v14);
    if ((v9 & 1) == 0)
    {
      v16 = 280;
      v17 = 243;
      goto LABEL_24;
    }

LABEL_26:
    *a2 = v11;
    *a3 = v13;
    return 1;
  }

  else
  {
    v16 = 68;
    v17 = 196;
LABEL_24:
    ERR_put_error(16, 0, v16, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_versions.cc", v17);
    return 0;
  }
}

BOOL bssl::ssl_select_ech_config(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if (*(a1 + 30) >= 0x304u && (v5 = *(a1 + 8), (v6 = *(v5 + 296)) != 0))
  {
    v43 = *(v5 + 288);
    v44 = v6;
    v41 = 0xAAAAAAAAAAAAAAAALL;
    v42 = 0xAAAAAAAAAAAAAAAALL;
    v10 = 0;
    if (CBS_get_u16_length_prefixed(&v43, &v41) && v42 && !v44)
    {
      v30 = a2;
      v31 = a3;
      v32 = a4;
      v29 = (a1 + 1560);
      while (1)
      {
        *v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0xAAAAAAAA00000000;
        v35 = -86;
        if (bssl::parse_ech_config(&v41, v36, &v35, 0))
        {
          v11 = EVP_hpke_x25519_hkdf_sha256();
          v12 = 1;
          if (v35 == 1 && v40 == 32)
          {
            v13 = v11;
            v14 = v39;
            v15 = *(*(*a1 + 8) + 309);
            if ((v15 & 0x800) != 0)
            {
              is_opaque = (v15 >> 12) & 1;
            }

            else
            {
              is_opaque = RSA_is_opaque();
            }

            v34[0] = v14;
            if (*(&v14 + 1))
            {
              v17 = 0;
              while (1)
              {
                v18 = v17;
                LOWORD(v33) = -21846;
                v45[0] = -21846;
                if (!CBS_get_u16(v34, &v33) || !CBS_get_u16(v34, v45))
                {
                  break;
                }

                v19 = 0;
                v20 = v45[0];
                while (1)
                {
                  v17 = bssl::kSupportedAEADs[v19]();
                  if (EVP_HPKE_KDF_id(v17) == v20)
                  {
                    break;
                  }

                  if (++v19 == 3)
                  {
                    goto LABEL_26;
                  }
                }

                if (v17)
                {
                  v21 = v33 == 1;
                }

                else
                {
                  v21 = 0;
                }

                if (!v21)
                {
LABEL_26:
                  v17 = v18;
                  goto LABEL_27;
                }

                if (v18)
                {
                  if (is_opaque)
                  {
                    goto LABEL_26;
                  }

                  if (v45[0] != 3)
                  {
                    v17 = v18;
                  }
                }

LABEL_27:
                if (!*(&v34[0] + 1))
                {
                  if (!v17)
                  {
                    break;
                  }

                  v22 = EVP_hpke_hkdf_sha256();
                  *&v23 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  v34[1] = v23;
                  v34[2] = v23;
                  v34[0] = v23;
                  CBB_zero(v34);
                  if (CBB_init(v34, v36[1] + 8) && CBB_add_bytes(v34, "tls ech", 8uLL) && CBB_add_bytes(v34, v36[0], v36[1]) && (v24 = v37, v25 = CBB_data(v34), v26 = CBB_len(v34), EVP_HPKE_CTX_setup_sender((a1 + 752), v30, v32, v31, v13, v22, v17, v24, *(&v24 + 1), v25, v26)) && bssl::SSLTranscript::Init((a1 + 472)))
                  {
                    v27 = bssl::New<bssl::ECHConfig,bssl::ECHConfig>(v36);
                    v33 = 0;
                    std::unique_ptr<bssl::ECHConfig,bssl::internal::Deleter>::reset[abi:ne200100](v29, v27);
                    std::unique_ptr<bssl::ECHConfig,bssl::internal::Deleter>::reset[abi:ne200100](&v33, 0);
                    v10 = *v29 != 0;
                  }

                  else
                  {
                    v10 = 0;
                  }

                  CBB_cleanup(v34);
                  v12 = 0;
                  goto LABEL_42;
                }
              }
            }

            v12 = 1;
          }
        }

        else
        {
          v12 = 0;
          v10 = 0;
        }

LABEL_42:
        OPENSSL_free(v36[0]);
        if ((v12 & 1) == 0)
        {
          break;
        }

        if (!v42)
        {
          return 1;
        }
      }
    }
  }

  else
  {
    return 1;
  }

  return v10;
}

void sub_1A9016280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  CBB_cleanup(va);
  bssl::Array<unsigned char>::~Array(va1);
  _Unwind_Resume(a1);
}

uint64_t boringssl_context_set_resumption(uint64_t a1, char a2)
{
  if (!a1 || *a1 != -1252936367)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  if (v2)
  {
    if ((a2 & 1) == 0)
    {
      SSL_CTX_set_session_cache_mode(*(v2 + 400), 0);
      return 0;
    }
  }

  return result;
}

uint64_t boringssl_context_set_false_start(uint64_t a1, int a2)
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

  if (a2)
  {
    v4 = 0x80;
    SSL_set_mode(v3, 0x80u);
  }

  else
  {
    SSL_clear_mode(v3, 128);
    v4 = 0;
  }

  result = 0;
  *(v2 + 548) = *(v2 + 548) & 0x7F | v4;
  return result;
}

uint64_t SSL_set_options(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 144) | a2;
  *(a1 + 144) = v2;
  return v2;
}

uint64_t boringssl_session_set_early_data_enabled(uint64_t result, int a2)
{
  if (result)
  {
    if (*result == -1252936367)
    {
      v2 = *(result + 8);
      if (v2)
      {
        result = *(v2 + 392);
        if (result)
        {
          *(v2 + 551) = *(v2 + 551) & 0xFE | a2;
          return SSL_set_early_data_enabled(result, a2);
        }
      }
    }
  }

  return result;
}

void boringssl_context_set_ats_enforced(uint64_t a1, int a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*a1 == -1252936367)
    {
      v3 = *(a1 + 8);
      if (v3)
      {
        WeakRetained = objc_loadWeakRetained((v3 + 16));
        if (!WeakRetained || (v6 = WeakRetained, v7 = objc_loadWeakRetained((v3 + 16)), v2 = v7[435], v7, v6, (v2 & 1) == 0))
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
              if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
              {
                v12 = objc_loadWeakRetained((v3 + 16));
                if (v12)
                {
                  v2 = objc_loadWeakRetained((v3 + 16));
                  v13 = v2 + 351;
                }

                else
                {
                  v13 = &unk_1A9098A9F;
                }

                v14 = objc_loadWeakRetained((v3 + 16));
                v15 = v14;
                v19 = 136447234;
                v20 = "boringssl_context_set_ats_enforced";
                v16 = "false";
                v21 = 1024;
                v22 = 659;
                if (a2)
                {
                  v16 = "true";
                }

                v23 = 2082;
                v24 = v13;
                v25 = 2048;
                v26 = v14;
                v27 = 2082;
                v28 = v16;
                _os_log_impl(&dword_1A8FF5000, v11, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] set %{public}s", &v19, 0x30u);

                if (v12)
                {
                }
              }
            }
          }
        }

        if (a2)
        {
          v17 = 8;
        }

        else
        {
          v17 = 0;
        }

        *(v3 + 551) = *(v3 + 551) & 0xF7 | v17;
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t boringssl_context_set_enforce_ev(uint64_t result, int a2)
{
  if (result)
  {
    if (*result == -1252936367)
    {
      v2 = *(result + 8);
      if (v2)
      {
        if (a2)
        {
          v3 = 2;
        }

        else
        {
          v3 = 0;
        }

        *(v2 + 551) = *(v2 + 551) & 0xFD | v3;
      }
    }
  }

  return result;
}

void boringssl_context_set_ats_minimum_rsa_key_size(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*a1 == -1252936367)
    {
      v3 = *(a1 + 8);
      if (v3)
      {
        WeakRetained = objc_loadWeakRetained((v3 + 16));
        if (!WeakRetained || (v6 = WeakRetained, v7 = objc_loadWeakRetained((v3 + 16)), v2 = v7[435], v7, v6, (v2 & 1) == 0))
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
              if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
              {
                v12 = objc_loadWeakRetained((v3 + 16));
                if (v12)
                {
                  v2 = objc_loadWeakRetained((v3 + 16));
                  v13 = v2 + 351;
                }

                else
                {
                  v13 = &unk_1A9098A9F;
                }

                v14 = objc_loadWeakRetained((v3 + 16));
                v16 = 136447234;
                v17 = "boringssl_context_set_ats_minimum_rsa_key_size";
                v18 = 1024;
                v19 = 668;
                v20 = 2082;
                v21 = v13;
                v22 = 2048;
                v23 = v14;
                v24 = 2050;
                v25 = a2;
                _os_log_impl(&dword_1A8FF5000, v11, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] set %{public}zu", &v16, 0x30u);

                if (v12)
                {
                }
              }
            }
          }
        }

        *(v3 + 520) = a2;
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void boringssl_context_set_ats_minimum_ecdsa_key_size(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*a1 == -1252936367)
    {
      v3 = *(a1 + 8);
      if (v3)
      {
        WeakRetained = objc_loadWeakRetained((v3 + 16));
        if (!WeakRetained || (v6 = WeakRetained, v7 = objc_loadWeakRetained((v3 + 16)), v2 = v7[435], v7, v6, (v2 & 1) == 0))
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
              if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
              {
                v12 = objc_loadWeakRetained((v3 + 16));
                if (v12)
                {
                  v2 = objc_loadWeakRetained((v3 + 16));
                  v13 = v2 + 351;
                }

                else
                {
                  v13 = &unk_1A9098A9F;
                }

                v14 = objc_loadWeakRetained((v3 + 16));
                v16 = 136447234;
                v17 = "boringssl_context_set_ats_minimum_ecdsa_key_size";
                v18 = 1024;
                v19 = 677;
                v20 = 2082;
                v21 = v13;
                v22 = 2048;
                v23 = v14;
                v24 = 2050;
                v25 = a2;
                _os_log_impl(&dword_1A8FF5000, v11, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] set %{public}zu", &v16, 0x30u);

                if (v12)
                {
                }
              }
            }
          }
        }

        *(v3 + 528) = a2;
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void boringssl_context_set_ats_minimum_signature_algorithm(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*a1 == -1252936367)
    {
      v3 = *(a1 + 8);
      if (v3)
      {
        WeakRetained = objc_loadWeakRetained((v3 + 16));
        if (!WeakRetained || (v6 = WeakRetained, v7 = objc_loadWeakRetained((v3 + 16)), v2 = v7[435], v7, v6, (v2 & 1) == 0))
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
              if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
              {
                v12 = objc_loadWeakRetained((v3 + 16));
                if (v12)
                {
                  v2 = objc_loadWeakRetained((v3 + 16));
                  v13 = v2 + 351;
                }

                else
                {
                  v13 = &unk_1A9098A9F;
                }

                v14 = objc_loadWeakRetained((v3 + 16));
                v16 = 136447234;
                v17 = "boringssl_context_set_ats_minimum_signature_algorithm";
                v18 = 1024;
                v19 = 687;
                v20 = 2082;
                v21 = v13;
                v22 = 2048;
                v23 = v14;
                v24 = 1026;
                v25 = a2;
                _os_log_impl(&dword_1A8FF5000, v11, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] set %{public}d", &v16, 0x2Cu);

                if (v12)
                {
                }
              }
            }
          }
        }

        *(v3 + 536) = a2;
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void boringssl_context_set_ats_non_pfs_ciphersuite_allowed(uint64_t a1, int a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*a1 == -1252936367)
    {
      v3 = *(a1 + 8);
      if (v3)
      {
        WeakRetained = objc_loadWeakRetained((v3 + 16));
        if (!WeakRetained || (v6 = WeakRetained, v7 = objc_loadWeakRetained((v3 + 16)), v2 = v7[435], v7, v6, (v2 & 1) == 0))
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
              if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
              {
                v12 = objc_loadWeakRetained((v3 + 16));
                if (v12)
                {
                  v2 = objc_loadWeakRetained((v3 + 16));
                  v13 = v2 + 351;
                }

                else
                {
                  v13 = &unk_1A9098A9F;
                }

                v14 = objc_loadWeakRetained((v3 + 16));
                v15 = v14;
                v19 = 136447234;
                v20 = "boringssl_context_set_ats_non_pfs_ciphersuite_allowed";
                v16 = "false";
                v21 = 1024;
                v22 = 696;
                if (a2)
                {
                  v16 = "true";
                }

                v23 = 2082;
                v24 = v13;
                v25 = 2048;
                v26 = v14;
                v27 = 2082;
                v28 = v16;
                _os_log_impl(&dword_1A8FF5000, v11, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] set %{public}s", &v19, 0x30u);

                if (v12)
                {
                }
              }
            }
          }
        }

        if (a2)
        {
          v17 = 16;
        }

        else
        {
          v17 = 0;
        }

        *(v3 + 551) = *(v3 + 551) & 0xEF | v17;
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t bssl::Vector<bssl::CertCompressionAlg>::MaybeGrow(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(a1 + 8) < v1)
  {
    return 1;
  }

  if (v1)
  {
    if ((v1 & 0x8000000000000000) != 0)
    {
      v4 = 479;
      goto LABEL_9;
    }

    if (v1 >= 0x555555555555556)
    {
      v4 = 485;
LABEL_9:
      ERR_put_error(16, 0, 69, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/internal.h", v4);
      return 0;
    }

    v5 = 2 * v1;
  }

  else
  {
    v5 = 16;
  }

  result = OPENSSL_malloc(24 * v5);
  if (result)
  {
    v6 = result;
    v7 = *a1;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = 24 * v8;
      v10 = v6;
      do
      {
        v11 = *v7;
        *(v10 + 16) = v7[2];
        *v10 = v11;
        v10 += 24;
        v7 += 3;
        v9 -= 24;
      }

      while (v9);
      v7 = *a1;
    }

    OPENSSL_free(v7);
    *a1 = v6;
    *(a1 + 8) = v8;
    result = 1;
    *(a1 + 16) = v5;
  }

  return result;
}

uint64_t SSL_CTX_add_cert_compression_alg(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (!(a3 | a4))
  {
    SSL_CTX_add_cert_compression_alg_cold_1();
  }

  v6 = a2;
  v8 = *(a1 + 736);
  if (v8)
  {
    v9 = (*(a1 + 728) + 16);
    v10 = 24 * v8;
    while (1)
    {
      v11 = *v9;
      v9 += 12;
      if (v11 == a2)
      {
        return 0;
      }

      v10 -= 24;
      if (!v10)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    result = bssl::Vector<bssl::CertCompressionAlg>::MaybeGrow(a1 + 728);
    if (result)
    {
      v13 = *(a1 + 728) + 24 * *(a1 + 736);
      *v13 = a3;
      *(v13 + 8) = a4;
      *(v13 + 16) = v6;
      *(v13 + 18) = -1431655766;
      *(v13 + 22) = -21846;
      ++*(a1 + 736);
    }
  }

  return result;
}

uint64_t boringssl_context_set_certificate_compression(uint64_t result, int a2)
{
  if (result)
  {
    if (*result == -1252936367)
    {
      v2 = *(result + 8);
      result = v2 != 0;
      if (v2)
      {
        v3 = a2 == 0;
      }

      else
      {
        v3 = 1;
      }

      if (!v3)
      {
        result = *(v2 + 400);
        if (result)
        {
          *(v2 + 551) |= 0x40u;
          return SSL_CTX_add_cert_compression_alg(result, 1, boringssl_context_zlib_compress_data, boringssl_context_zlib_uncompress_data) == 1;
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

uint64_t boringssl_context_set_GREASE_enabled(uint64_t result, int a2)
{
  if (result)
  {
    if (*result == -1252936367)
    {
      v2 = *(result + 8);
      if (v2)
      {
        result = *(v2 + 400);
        if (result)
        {
          if (a2)
          {
            v3 = 2;
          }

          else
          {
            v3 = 0;
          }

          *(v2 + 552) = *(v2 + 552) & 0xFD | v3;
          return SSL_CTX_set_grease_enabled(result, a2);
        }
      }
    }
  }

  return result;
}

uint64_t boringssl_context_set_ech_grease_enabled(uint64_t result, int a2)
{
  if (result)
  {
    if (*result == -1252936367)
    {
      v2 = *(result + 8);
      if (v2)
      {
        result = *(v2 + 392);
        if (result)
        {
          if (a2)
          {
            v3 = 16;
          }

          else
          {
            v3 = 0;
          }

          *(v2 + 552) = *(v2 + 552) & 0xEF | v3;
          return SSL_set_enable_ech_grease(result, a2);
        }
      }
    }
  }

  return result;
}

uint64_t SSL_set_enable_ech_grease(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    v3 = (v2 + 309);
    v4 = *v3 & 0xFFFE;
    if (a2)
    {
      ++v4;
    }

    *v3 = v4;
  }

  return result;
}

uint64_t boringssl_context_set_verify_mode(uint64_t a1, int a2)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *a1 != -1252936367 || (v3 = *(a1 + 8)) == 0 || !*(v3 + 400))
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_14;
  }

  if ((*(v3 + 548) & 0x10) != 0)
  {
    if (a2 == 3)
    {
      WeakRetained = objc_loadWeakRetained((v3 + 16));
      if (WeakRetained)
      {
        v21 = WeakRetained;
        v22 = objc_loadWeakRetained((v3 + 16));
        v23 = v22[435];

        if (v23)
        {
          goto LABEL_51;
        }
      }

      v24 = objc_loadWeakRetained((v3 + 16));
      if (v24)
      {
        v25 = objc_loadWeakRetained((v3 + 16));
        v26 = (v25[435] & 1) == 0;
      }

      else
      {
        v26 = 1;
      }

      if (!v26 || !g_boringssl_log)
      {
        goto LABEL_51;
      }

      v27 = g_boringssl_log;
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_50;
      }

      v28 = objc_loadWeakRetained((v3 + 16));
      if (v28)
      {
        v2 = objc_loadWeakRetained((v3 + 16));
        v30 = v2 + 351;
      }

      else
      {
        v30 = &unk_1A9098A9F;
      }

      v32 = objc_loadWeakRetained((v3 + 16));
      v35 = 136446978;
      v36 = "boringssl_context_set_verify_mode";
      v37 = 1024;
      v38 = 600;
      v39 = 2082;
      v40 = v30;
      v41 = 2048;
      v42 = v32;
      v33 = "%{public}s(%d) %{public}s[%p] Requiring client cert";
    }

    else if (a2 == 1)
    {
      v13 = objc_loadWeakRetained((v3 + 16));
      if (v13)
      {
        v14 = v13;
        v15 = objc_loadWeakRetained((v3 + 16));
        v16 = v15[435];

        if (v16)
        {
          goto LABEL_51;
        }
      }

      v17 = objc_loadWeakRetained((v3 + 16));
      if (v17)
      {
        v18 = objc_loadWeakRetained((v3 + 16));
        v19 = (v18[435] & 1) == 0;
      }

      else
      {
        v19 = 1;
      }

      if (!v19 || !g_boringssl_log)
      {
        goto LABEL_51;
      }

      v27 = g_boringssl_log;
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_50;
      }

      v28 = objc_loadWeakRetained((v3 + 16));
      if (v28)
      {
        v2 = objc_loadWeakRetained((v3 + 16));
        v29 = v2 + 351;
      }

      else
      {
        v29 = &unk_1A9098A9F;
      }

      v32 = objc_loadWeakRetained((v3 + 16));
      v35 = 136446978;
      v36 = "boringssl_context_set_verify_mode";
      v37 = 1024;
      v38 = 604;
      v39 = 2082;
      v40 = v29;
      v41 = 2048;
      v42 = v32;
      v33 = "%{public}s(%d) %{public}s[%p] Will request optional client cert";
    }

    else
    {
      if (a2)
      {
        goto LABEL_51;
      }

      v5 = objc_loadWeakRetained((v3 + 16));
      if (v5)
      {
        v6 = v5;
        v7 = objc_loadWeakRetained((v3 + 16));
        v2 = v7[435];

        if (v2)
        {
          goto LABEL_51;
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

      if (!v10 || !g_boringssl_log)
      {
        goto LABEL_51;
      }

      v27 = g_boringssl_log;
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_50;
      }

      v28 = objc_loadWeakRetained((v3 + 16));
      if (v28)
      {
        v2 = objc_loadWeakRetained((v3 + 16));
        v31 = v2 + 351;
      }

      else
      {
        v31 = &unk_1A9098A9F;
      }

      v32 = objc_loadWeakRetained((v3 + 16));
      v35 = 136446978;
      v36 = "boringssl_context_set_verify_mode";
      v37 = 1024;
      v38 = 596;
      v39 = 2082;
      v40 = v31;
      v41 = 2048;
      v42 = v32;
      v33 = "%{public}s(%d) %{public}s[%p] Not requesting client cert";
    }

    _os_log_impl(&dword_1A8FF5000, v27, OS_LOG_TYPE_DEFAULT, v33, &v35, 0x26u);

    if (v28)
    {
    }

LABEL_50:
  }

LABEL_51:
  v34 = *(v3 + 392);
  if (v34)
  {
    SSL_set_custom_verify(v34, a2, boringssl_context_certificate_verify_callback);
  }

  else
  {
    SSL_CTX_set_custom_verify(*(v3 + 400), a2, boringssl_context_certificate_verify_callback);
  }

  result = 0;
LABEL_14:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SSL_set_custom_verify(uint64_t result, char a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (v3)
  {
    *(v3 + 308) = a2;
    *(v3 + 48) = a3;
  }

  return result;
}

BOOL boringssl_context_set_alpn_protocol_list(uint64_t a1, void *a2, unsigned int a3)
{
  v118 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (!a1 || *a1 != -1252936367)
  {
    goto LABEL_23;
  }

  v7 = 0;
  if (!v5)
  {
    goto LABEL_24;
  }

  v8 = *(a1 + 8);
  if (!v8)
  {
    goto LABEL_24;
  }

  if (!xpc_array_get_count(v5) || !v8[49] || !v8[50])
  {
LABEL_23:
    v7 = 0;
    goto LABEL_24;
  }

  v102 = v8[49];
  v103 = v8;
  v9 = v6;
  xarray = xpc_array_create(0, 0);
  count = xpc_array_get_count(v9);
  if (!count)
  {
    v12 = 0;
LABEL_26:
    v27 = xarray;
    v28 = xarray;
    v29 = v103;
    goto LABEL_74;
  }

  v11 = count;
  v12 = 0;
  v13 = 0;
  v14 = a3;
  v104 = v9;
  while (1)
  {
    v15 = xpc_array_get_value(v9, v13);
    if (MEMORY[0x1AC57FB30]() != MEMORY[0x1E69E9F10])
    {
      if (MEMORY[0x1AC57FB30](v15) == MEMORY[0x1E69E9E50])
      {
        if (xpc_array_get_count(v15) == 2)
        {
          v16 = v12;
          string = xpc_array_get_string(v15, 0);
          uint64 = xpc_array_get_uint64(v15, 1uLL);
          if (string)
          {
            v19 = uint64;
            v20 = strlen(string);
            v21 = v20;
            if (v20 < 0x100)
            {
              if (v19 == v14)
              {
                v12 = v16 + v20 + 1;
                xpc_array_set_string(xarray, 0xFFFFFFFFFFFFFFFFLL, string);
              }

              else
              {
                v12 = v16;
              }

              v9 = v104;
              goto LABEL_21;
            }

            v29 = v103;
            WeakRetained = objc_loadWeakRetained(v103 + 2);
            v12 = v16;
            if (WeakRetained)
            {
              v52 = WeakRetained;
              v53 = objc_loadWeakRetained(v103 + 2);
              v54 = v53[435];

              if (v54)
              {
                goto LABEL_73;
              }
            }

            v55 = objc_loadWeakRetained(v103 + 2);
            if (v55)
            {
              v56 = objc_loadWeakRetained(v103 + 2);
              v57 = (v56[435] & 1) == 0;
            }

            else
            {
              v57 = 1;
            }

            if (!v57 || !g_boringssl_log)
            {
              goto LABEL_73;
            }

            v65 = g_boringssl_log;
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              log = v65;
              v66 = objc_loadWeakRetained(v103 + 2);
              if (v66)
              {
                v96 = objc_loadWeakRetained(v103 + 2);
                v99 = v96 + 351;
              }

              else
              {
                v99 = &unk_1A9098A9F;
              }

              v29 = v103;
              v92 = objc_loadWeakRetained(v103 + 2);
              v93 = v92;
              *buf = 136447490;
              v107 = "boringssl_context_copy_validated_alpn_array";
              v108 = 1024;
              v109 = 1145;
              v110 = 2082;
              v111 = v99;
              v112 = 2048;
              v113 = v92;
              v114 = 2048;
              v115 = v21;
              v116 = 2082;
              redacted_identity = nw_protocol_boringssl_get_redacted_identity(v93, string);
              _os_log_error_impl(&dword_1A8FF5000, log, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] ALPN protocol exceeds length restrictions (%zu): %{public}s", buf, 0x3Au);

              if (v66)
              {
              }

              v12 = v16;
              v65 = log;
            }
          }

          else
          {
            v29 = v103;
            v44 = objc_loadWeakRetained(v103 + 2);
            if (v44)
            {
              v45 = v44;
              v46 = objc_loadWeakRetained(v103 + 2);
              v47 = v46[435];

              if (v47)
              {
                goto LABEL_73;
              }
            }

            v48 = objc_loadWeakRetained(v103 + 2);
            if (v48)
            {
              v49 = objc_loadWeakRetained(v103 + 2);
              v50 = (v49[435] & 1) == 0;
            }

            else
            {
              v50 = 1;
            }

            if (!v50 || !g_boringssl_log)
            {
              goto LABEL_73;
            }

            v65 = g_boringssl_log;
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              boringssl_context_set_alpn_protocol_list_cold_3();
            }
          }
        }

        else
        {
          v29 = v103;
          v37 = objc_loadWeakRetained(v103 + 2);
          if (v37)
          {
            v38 = v37;
            v39 = objc_loadWeakRetained(v103 + 2);
            v40 = v39[435];

            if (v40)
            {
              goto LABEL_73;
            }
          }

          v41 = objc_loadWeakRetained(v103 + 2);
          if (v41)
          {
            v42 = objc_loadWeakRetained(v103 + 2);
            v43 = (v42[435] & 1) == 0;
          }

          else
          {
            v43 = 1;
          }

          if (!v43 || !g_boringssl_log)
          {
            goto LABEL_73;
          }

          v65 = g_boringssl_log;
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            boringssl_context_set_alpn_protocol_list_cold_2();
          }
        }
      }

      else
      {
        v29 = v103;
        v30 = objc_loadWeakRetained(v103 + 2);
        if (v30)
        {
          v31 = v30;
          v32 = objc_loadWeakRetained(v103 + 2);
          v33 = v32[435];

          if (v33)
          {
            goto LABEL_73;
          }
        }

        v34 = objc_loadWeakRetained(v103 + 2);
        if (v34)
        {
          v35 = objc_loadWeakRetained(v103 + 2);
          v36 = (v35[435] & 1) == 0;
        }

        else
        {
          v36 = 1;
        }

        if (!v36 || !g_boringssl_log)
        {
          goto LABEL_73;
        }

        v65 = g_boringssl_log;
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          boringssl_context_set_alpn_protocol_list_cold_1();
        }
      }

LABEL_72:

      goto LABEL_73;
    }

    v22 = xpc_array_get_string(v9, v13);
    v23 = strlen(v22);
    v24 = v23;
    if (v23 >= 0x100)
    {
      break;
    }

    v12 += v23 + 1;
    xpc_array_set_string(xarray, 0xFFFFFFFFFFFFFFFFLL, v22);
LABEL_21:

    if (v11 == ++v13)
    {
      goto LABEL_26;
    }
  }

  v29 = v103;
  v58 = objc_loadWeakRetained(v103 + 2);
  if (!v58 || (v59 = v58, v60 = objc_loadWeakRetained(v103 + 2), v61 = v60[435], v60, v59, (v61 & 1) == 0))
  {
    v62 = objc_loadWeakRetained(v103 + 2);
    if (v62)
    {
      v63 = objc_loadWeakRetained(v103 + 2);
      v64 = (v63[435] & 1) == 0;
    }

    else
    {
      v64 = 1;
    }

    if (v64)
    {
      if (g_boringssl_log)
      {
        v65 = g_boringssl_log;
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          loga = v65;
          v101 = v12;
          v90 = objc_loadWeakRetained(v103 + 2);
          if (v90)
          {
            v29 = objc_loadWeakRetained(v103 + 2);
            v91 = v29 + 351;
          }

          else
          {
            v91 = &unk_1A9098A9F;
          }

          v94 = objc_loadWeakRetained(v103 + 2);
          v95 = v94;
          *buf = 136447490;
          v107 = "boringssl_context_copy_validated_alpn_array";
          v108 = 1024;
          v109 = 1132;
          v110 = 2082;
          v111 = v91;
          v112 = 2048;
          v113 = v94;
          v114 = 2048;
          v115 = v24;
          v116 = 2082;
          redacted_identity = nw_protocol_boringssl_get_redacted_identity(v95, v22);
          _os_log_error_impl(&dword_1A8FF5000, loga, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] ALPN protocol exceeds length restrictions (%zu): %{public}s", buf, 0x3Au);

          if (v90)
          {
          }

          v29 = v103;
          v65 = loga;
          v12 = v101;
        }

        goto LABEL_72;
      }
    }
  }

LABEL_73:

  v28 = 0;
  v9 = v104;
  v27 = xarray;
LABEL_74:

  if (!v28)
  {
LABEL_102:
    v7 = 0;
    goto LABEL_103;
  }

  v67 = xpc_array_get_count(v28);
  if (!v67)
  {
    v75 = objc_loadWeakRetained(v29 + 2);
    if (!v75 || (v76 = v75, v77 = objc_loadWeakRetained(v29 + 2), v78 = v77[435], v77, v76, (v78 & 1) == 0))
    {
      v79 = objc_loadWeakRetained(v29 + 2);
      if (v79)
      {
        v80 = objc_loadWeakRetained(v29 + 2);
        v81 = (v80[435] & 1) == 0;
      }

      else
      {
        v81 = 1;
      }

      v7 = 0;
      if (!v81 || !g_boringssl_log)
      {
        goto LABEL_103;
      }

      v89 = g_boringssl_log;
      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        boringssl_context_set_alpn_protocol_list_cold_5();
      }

LABEL_101:
    }

    goto LABEL_102;
  }

  v68 = v67;
  v69 = malloc_type_malloc(v12, 0x100004077774924uLL);
  if (v69)
  {
    v70 = v69;
    v100 = v12;
    v71 = 0;
    v72 = 0;
    do
    {
      v73 = xpc_array_get_string(v28, v71);
      v74 = strlen(v73);
      v70[v72] = v74;
      memcpy(&v70[v72 + 1], v73, v74);
      v72 += v74 + 1;
      ++v71;
    }

    while (v68 != v71);
    if ((*(v103 + 548) & 0x10) != 0)
    {
      SSL_set_alpn_select_cb(v102, boringssl_context_select_alpn_callback, a1);
      v7 = 1;
    }

    else
    {
      v7 = SSL_set_alpn_protos(v102, v70, v100) == 0;
    }

    free(v70);
    *(v103 + 549) |= 0x40u;
    objc_storeStrong(v103 + 7, v28);
    goto LABEL_103;
  }

  v82 = objc_loadWeakRetained(v29 + 2);
  if (v82)
  {
    v83 = v82;
    v84 = objc_loadWeakRetained(v29 + 2);
    v85 = v84[435];

    if (v85)
    {
      goto LABEL_102;
    }
  }

  v86 = objc_loadWeakRetained(v29 + 2);
  if (v86)
  {
    v87 = objc_loadWeakRetained(v29 + 2);
    v88 = (v87[435] & 1) == 0;
  }

  else
  {
    v88 = 1;
  }

  v7 = 0;
  if (v88 && g_boringssl_log)
  {
    v89 = g_boringssl_log;
    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      boringssl_context_set_alpn_protocol_list_cold_4();
    }

    goto LABEL_101;
  }

LABEL_103:

LABEL_24:
  v25 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t bssl::ssl_is_valid_alpn_list(unsigned __int8 *a1, uint64_t a2)
{
  v7 = a1;
  v8 = a2;
  if (!a2)
  {
    return 0;
  }

  do
  {
    v5 = 0xAAAAAAAAAAAAAAAALL;
    v6 = 0xAAAAAAAAAAAAAAAALL;
    if (CBS_get_u8_length_prefixed(&v7, &v5))
    {
      v2 = v6 == 0;
    }

    else
    {
      v2 = 1;
    }

    result = !v2;
  }

  while (result == 1 && v8 != 0);
  return result;
}

uint64_t SSL_set_alpn_protos(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 1;
  }

  v4 = a3;
  if (!a3)
  {
    return bssl::Array<unsigned char>::InitUninitialized(v3 + 136, 0) ^ 1;
  }

  v5 = a2;
  if ((bssl::ssl_is_valid_alpn_list(a2, a3) & 1) == 0)
  {
    ERR_put_error(16, 0, 315, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_lib.cc", 2655);
    return 1;
  }

  v7 = *(a1 + 8);
  if (!bssl::Array<unsigned char>::InitUninitialized(v7 + 136, v4))
  {
    return 1;
  }

  v8 = *(v7 + 136);
  do
  {
    v9 = *v5++;
    *v8++ = v9;
    --v4;
  }

  while (v4);
  return 0;
}

double CBB_zero(_OWORD *a1)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

BOOL bssl::ssl_setup_key_shares(bssl *this, unint64_t a2)
{
  v4 = *this;
  std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](this + 49, 0);
  std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](this + 50, 0);
  OPENSSL_free(*(this + 79));
  *(this + 632) = 0u;
  if (*(this + 15) >= 0x304u && !*(this + 210))
  {
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v26[1] = v7;
    v26[2] = v7;
    v26[0] = v7;
    CBB_zero(v26);
    if (!CBB_init(v26, 0x40uLL))
    {
      goto LABEL_25;
    }

    if (a2)
    {
      goto LABEL_7;
    }

    if ((*(v4[15] + 856) & 0x20) != 0)
    {
      grease_value = bssl::ssl_get_grease_value(this, 1u);
      if (!CBB_add_u16(v26, grease_value) || !CBB_add_u16(v26, 1u) || !CBB_add_u8(v26, 0))
      {
        goto LABEL_25;
      }
    }

    v12 = *(this + 1);
    v13 = *(v12 + 120);
    if (v13)
    {
      v14 = *(v12 + 112);
      a2 = *v14;
      if (v13 == 1)
      {
LABEL_7:
        v8 = 0;
        goto LABEL_8;
      }
    }

    else
    {
      v14 = &bssl::kDefaultGroups;
      a2 = 29;
      v13 = 4;
    }

    v17 = a2 == 25497 || a2 == 4588;
    v18 = (v14 + 1);
    v19 = 2;
    do
    {
      v20 = *v18++;
      v8 = v20;
      v22 = v20 == 25497 || v8 == 4588;
      if (v17 == v22)
      {
        v8 = 0;
      }

      else if (v8 == a2)
      {
        __assert_rtn("ssl_setup_key_shares", "extensions.cc", 2294, "second_group_id != group_id");
      }

      if (v8)
      {
        break;
      }
    }

    while (v19++ < v13);
LABEL_8:
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v25[1] = v9;
    v25[2] = v9;
    v25[0] = v9;
    bssl::SSLKeyShare::Create(a2, &v24);
    v10 = v24;
    v24 = 0;
    std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](this + 49, v10);
    std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](&v24, 0);
    if (*(this + 49))
    {
      if (CBB_add_u16(v26, a2))
      {
        if (CBB_add_u16_length_prefixed(v26, v25))
        {
          if ((*(**(this + 49) + 24))(*(this + 49), v25))
          {
            if (!v8 || (bssl::SSLKeyShare::Create(v8, &v24), v11 = v24, v24 = 0, std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](this + 50, v11), std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](&v24, 0), *(this + 50)) && CBB_add_u16(v26, v8) && CBB_add_u16_length_prefixed(v26, v25) && ((*(**(this + 50) + 24))(*(this + 50), v25) & 1) != 0)
            {
              v5 = bssl::CBBFinishArray(v26, this + 632);
LABEL_26:
              CBB_cleanup(v26);
              return v5;
            }
          }
        }
      }
    }

LABEL_25:
    v5 = 0;
    goto LABEL_26;
  }

  return 1;
}

void sub_1A9018444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  CBB_cleanup(va);
  _Unwind_Resume(a1);
}

uint64_t bssl::ssl_get_grease_value(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + a2 + 1646) & 0xF0;
  result = v3 | 0xA | ((v3 | 0xAu) << 8);
  if (a2 == 3)
  {
    if (v3 == (*(a1 + 1648) & 0xF0))
    {
      return result ^ 0x1010;
    }

    else
    {
      return result;
    }
  }

  return result;
}

void *bssl::SSLKeyShare::Create@<X0>(void *this@<X0>, void *a2@<X8>)
{
  if (this <= 24)
  {
    switch(this)
    {
      case 0x15:
        v7 = EC_group_p224();
        v5 = OPENSSL_malloc(0x20uLL);
        if (!v5)
        {
          goto LABEL_28;
        }

        *v5 = &unk_1F1CB0310;
        v5[1] = 0;
        v5[2] = v7;
        v6 = 21;
        break;
      case 0x17:
        v9 = EC_group_p256();
        v5 = OPENSSL_malloc(0x20uLL);
        if (v5)
        {
          *v5 = &unk_1F1CB0310;
          v5[1] = 0;
          v5[2] = v9;
          v6 = 23;
          break;
        }

        goto LABEL_28;
      case 0x18:
        v4 = EC_group_p384();
        v5 = OPENSSL_malloc(0x20uLL);
        if (!v5)
        {
          goto LABEL_28;
        }

        *v5 = &unk_1F1CB0310;
        v5[1] = 0;
        v5[2] = v4;
        v6 = 24;
        break;
      default:
        goto LABEL_19;
    }

LABEL_27:
    *(v5 + 12) = v6;
    goto LABEL_28;
  }

  if (this > 4587)
  {
    if (this == 4588)
    {
      this = OPENSSL_malloc(0x30uLL);
      if (this)
      {
        *this = &unk_1F1CB0458;
        this[5] = 0;
      }

      goto LABEL_24;
    }

    if (this == 25497)
    {
      this = OPENSSL_malloc(0x30uLL);
      if (this)
      {
        v3 = &unk_1F1CB03F0;
        goto LABEL_16;
      }

LABEL_24:
      *a2 = this;
      return this;
    }

LABEL_19:
    *a2 = 0;
    return this;
  }

  if (this != 25)
  {
    if (this == 29)
    {
      this = OPENSSL_malloc(0x28uLL);
      if (this)
      {
        v3 = &unk_1F1CB0388;
LABEL_16:
        *this = v3;
        goto LABEL_24;
      }

      goto LABEL_24;
    }

    goto LABEL_19;
  }

  v8 = EC_group_p521();
  v5 = OPENSSL_malloc(0x20uLL);
  if (v5)
  {
    *v5 = &unk_1F1CB0310;
    v5[1] = 0;
    v5[2] = v8;
    v6 = 25;
    goto LABEL_27;
  }

LABEL_28:
  v10 = 0;
  *a2 = v5;
}

uint64_t CBB_init(uint64_t a1, unint64_t a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = OPENSSL_malloc(a2);
  if (!a2 || result)
  {
    *(a1 + 8) = 0;
    *a1 = 0;
    *(a1 + 16) = result;
    *(a1 + 24) = 0;
    *(a1 + 32) = a2;
    *(a1 + 40) = *(a1 + 40) & 0xFC | 1;
    return 1;
  }

  return result;
}

uint64_t bssl::anonymous namespace::X25519MLKEM768KeyShare::Generate(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  MLKEM768_generate_key(__b, 0, (a1 + 40));
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[0] = v4;
  v7[1] = v4;
  X25519_keypair(v7, (a1 + 8));
  result = CBB_add_bytes(a2, __b, 0x4A0uLL);
  if (result)
  {
    result = CBB_add_bytes(a2, v7, 0x20uLL) != 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void MLKEM768_generate_key(uint64_t a1, uint64_t a2, void *a3)
{
  cckem_kyber768();
  v4 = cckem_sizeof_full_ctx();
  v5 = malloc_type_malloc(v4, 0x3D4C49F2uLL);
  *a3 = v5;
  if (v5)
  {
    cckem_full_ctx_init();
    ccrng();
    cckem_generate_key();
    cckem_public_ctx();
    if (cckem_export_pubkey() && g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_FAULT))
    {
      MLKEM768_generate_key_cold_1();
    }
  }

  else if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_FAULT))
  {
    MLKEM768_generate_key_cold_2();
  }
}

BOOL bssl::ssl_encrypt_client_hello(uint64_t a1, const void *a2, size_t a3)
{
  v72 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (*(a1 + 1560))
  {
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v64 = v7;
    v65 = v7;
    *buf = v7;
    CBB_zero(buf);
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v61 = v8;
    v62 = v8;
    v60 = v8;
    CBB_zero(&v60);
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v58 = v9;
    v59 = v9;
    v57 = v9;
    v56 = -86;
    v54 = 0;
    v55 = 0;
    if (!(*(*v4 + 11))(v4, buf, &v57, 1) || !CBB_init(&v60, 0x100uLL) || !bssl::ssl_write_client_hello_without_extensions(a1, &v57, 1, 0) || !bssl::ssl_write_client_hello_without_extensions(a1, &v60, 1, 1) || (v10 = CBB_len(&v57), !bssl::ssl_add_clienthello_tlsext(a1, &v57, &v60, &v56, 1, v10)) || ((*(*v4 + 12))(v4, buf, &v54) & 1) == 0)
    {
      ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/encrypted_client_hello.cc", 792);
      goto LABEL_20;
    }

    v11 = v55;
    if (v56 == 1)
    {
      *&v69 = 0xAAAAAAAAAAAAAAAALL;
      if ((bssl::tls13_write_psk_binder(a1, (a1 + 472), v54, v55, &v69) & 1) == 0)
      {
        goto LABEL_20;
      }

      v12 = CBB_data(&v60);
      v13 = CBB_len(&v60);
      if (v13 < v69)
      {
        goto LABEL_67;
      }

      v11 = v55;
      if (v55 < v69)
      {
        goto LABEL_67;
      }

      if (v69)
      {
        memcpy(v12 + v13 - v69, v54 + v55 - v69, v69);
        v11 = v55;
      }
    }

    bssl::ssl_do_msg_callback(v4, 1, 257, v54, v11);
    if (bssl::SSLTranscript::Update(a1 + 472, v54, v55))
    {
      v14 = *(*(a1 + 1560) + 66);
      v15 = v4[20];
      if (v15)
      {
        v16 = strlen(v15);
        if (v14 >= v16)
        {
          v17 = v14 - v16;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = v14 + 9;
      }

      v33 = CBB_len(&v60);
      v52 = 0;
      v53 = 0;
      if (!CBB_add_zeros(&v60, ((-v33 - v17) & 0x1F) + v17))
      {
        goto LABEL_62;
      }

      if (!bssl::CBBFinishArray(&v60, &v52))
      {
        goto LABEL_62;
      }

      v34 = EVP_HPKE_CTX_kdf((a1 + 752));
      v35 = EVP_HPKE_CTX_aead(a1 + 752);
      v36 = v53;
      v37 = EVP_HPKE_AEAD_aead(v35);
      v38 = EVP_AEAD_max_overhead(v37) + v36;
      v51 = v38;
      *&v39 = 0xAAAAAAAAAAAAAAAALL;
      *(&v39 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v70 = v39;
      v71 = v39;
      v68 = v39;
      v69 = v39;
      *v66 = v39;
      v67 = v39;
      if (!CBB_init(buf, 0x100uLL) || (v40 = EVP_HPKE_KDF_id(v34), !CBB_add_u16(buf, v40)) || (v41 = EVP_HPKE_KDF_id(v35), !CBB_add_u16(buf, v41)) || !CBB_add_u8(buf, *(*(a1 + 1560) + 67)) || !CBB_add_u16_length_prefixed(buf, &v69) || !CBB_add_bytes(&v69, a2, a3) || !CBB_add_u16_length_prefixed(buf, v66) || !CBB_add_zeros(v66, v38) || !bssl::CBBFinishArray(buf, a1 + 584))
      {
LABEL_62:
        v18 = 0;
LABEL_63:
        bssl::Array<unsigned char>::~Array(&v52);
        goto LABEL_21;
      }

      *&v42 = 0xAAAAAAAAAAAAAAAALL;
      *(&v42 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v49 = v42;
      v50 = v42;
      *v48 = v42;
      CBB_zero(v48);
      if (!CBB_init(v48, 0x100uLL) || !bssl::ssl_write_client_hello_without_extensions(a1, v48, 2, 0) || (v43 = CBB_len(v48), !bssl::ssl_add_clienthello_tlsext(a1, v48, 0, &v56, 2, v43)))
      {
        ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/encrypted_client_hello.cc", 870);
        goto LABEL_65;
      }

      if (v56 == 1)
      {
        __assert_rtn("ssl_encrypt_client_hello", "encrypted_client_hello.cc", 876, "!needs_psk_binder");
      }

      v44 = *(a1 + 592);
      if (v44 >= v38)
      {
        v45 = *(a1 + 584);
        v46 = v52;
        v47 = v53;
        CBB_data(v48);
        CBB_len(v48);
        if (EVP_HPKE_CTX_seal(a1 + 752, (v45 + v44 - v38), &v51, v38, v46, v47))
        {
          v18 = v51 == v38;
LABEL_66:
          CBB_cleanup(v48);
          goto LABEL_63;
        }

LABEL_65:
        v18 = 0;
        goto LABEL_66;
      }

LABEL_67:
      abort();
    }

LABEL_20:
    v18 = 0;
LABEL_21:
    OPENSSL_free(v54);
    CBB_cleanup(&v60);
    CBB_cleanup(buf);
    goto LABEL_42;
  }

  if (*(a1 + 30) < 0x304u || (*(*(a1 + 8) + 309) & 1) == 0)
  {
    v18 = 1;
    goto LABEL_42;
  }

  v19 = *(v4[1] + 309);
  if ((v19 & 0x800) != 0)
  {
    if ((v19 >> 12))
    {
      goto LABEL_26;
    }
  }

  else if (RSA_is_opaque())
  {
LABEL_26:
    v20 = EVP_hpke_aes_128_gcm();
    goto LABEL_30;
  }

  v20 = EVP_hpke_chacha20_poly1305();
LABEL_30:
  v21 = v20;
  v22 = *(a1 + 1652);
  *&v23 = 0xAAAAAAAAAAAAAAAALL;
  *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v69 = v23;
  v70 = v23;
  *v66 = v23;
  v67 = v23;
  X25519_keypair(&v69, v66);
  *buf = 0xAAAAAAAAAAAAAAAALL;
  RAND_bytes(buf, 8);
  v24 = buf[0];
  v25 = EVP_HPKE_AEAD_aead(v21);
  v26 = EVP_AEAD_max_overhead(v25);
  *&v27 = 0xAAAAAAAAAAAAAAAALL;
  *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v64 = v27;
  v65 = v27;
  *buf = v27;
  CBB_zero(buf);
  *&v28 = 0xAAAAAAAAAAAAAAAALL;
  *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v61 = v28;
  v62 = v28;
  v59 = v28;
  v60 = v28;
  v57 = v28;
  v58 = v28;
  v48[0] = 0xAAAAAAAAAAAAAAAALL;
  v18 = CBB_init(buf, 0x100uLL) && CBB_add_u16(buf, 1u) && (v29 = EVP_HPKE_KDF_id(v21), CBB_add_u16(buf, v29)) && CBB_add_u8(buf, v22) && CBB_add_u16_length_prefixed(buf, &v60) && CBB_add_bytes(&v60, &v69, 0x20uLL) && CBB_add_u16_length_prefixed(buf, &v57) && (v30 = (32 * (v24 & 3)) | 0x80, CBB_add_space(&v57, v48, v30 + v26)) && RAND_bytes(v48[0], v30 + v26) && bssl::CBBFinishArray(buf, a1 + 584);
  CBB_cleanup(buf);
LABEL_42:
  v31 = *MEMORY[0x1E69E9840];
  return v18;
}

void sub_1A9018F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  CBB_cleanup(&a9);
  bssl::Array<unsigned char>::~Array(&a16);
  bssl::Array<unsigned char>::~Array(&a18);
  CBB_cleanup(&a27);
  CBB_cleanup(&a33);
  _Unwind_Resume(a1);
}

uint64_t bssl::ssl_write_client_hello_without_extensions(uint64_t a1, uint64_t *a2, int a3, char a4)
{
  v8 = *a1;
  result = CBB_add_u16(a2, *(a1 + 1604));
  if (result)
  {
    v10 = (a3 == 1 ? a1 + 520 : *(v8 + 48) + 48);
    result = CBB_add_bytes(a2, v10, 0x20uLL);
    if (result)
    {
      *&v11 = 0xAAAAAAAAAAAAAAAALL;
      *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v34[1] = v11;
      v34[2] = v11;
      v34[0] = v11;
      result = CBB_add_u8_length_prefixed(a2, v34);
      if (result)
      {
        if ((*(*(v8 + 48) + 222) & 0x10) != 0 || (a4 & 1) != 0 || (result = CBB_add_bytes(v34, (a1 + 1613), *(a1 + 1645)), result))
        {
          if (!SSL_is_dtls(v8) || (result = CBB_add_u8_length_prefixed(a2, v34), result) && (result = CBB_add_bytes(v34, *(a1 + 568), *(a1 + 576)), result))
          {
            v12 = *a1;
            v33 = *(*(a1 + 8) + 64) == 0;
            *&v13 = 0xAAAAAAAAAAAAAAAALL;
            *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v35[1] = v13;
            v35[2] = v13;
            v35[0] = v13;
            if (!CBB_add_u16_length_prefixed(a2, v35))
            {
              return 0;
            }

            if ((*(*(v12 + 120) + 856) & 0x20) != 0)
            {
              grease_value = bssl::ssl_get_grease_value(a1, 0);
              if (!CBB_add_u16(v35, grease_value))
              {
                return 0;
              }
            }

            if (*(a1 + 30) >= 0x304u)
            {
              v15 = *(*(v12 + 8) + 309);
              if ((v15 & 0x800) != 0)
              {
                is_opaque = (v15 >> 12) & 1;
              }

              else
              {
                is_opaque = RSA_is_opaque();
              }

              v17 = 0;
              if ((*(*(**(a1 + 8) + 120) + 248) & 4) != 0)
              {
                v18 = &bssl::ssl_write_client_cipher_list(bssl::SSL_HANDSHAKE const*,cbb_st *,bssl::ssl_client_hello_type_t)::kCiphersAESHardwarePQTLS;
              }

              else
              {
                v18 = &bssl::ssl_write_client_cipher_list(bssl::SSL_HANDSHAKE const*,cbb_st *,bssl::ssl_client_hello_type_t)::kCiphersAESHardware;
              }

              v19 = &bssl::ssl_write_client_cipher_list(bssl::SSL_HANDSHAKE const*,cbb_st *,bssl::ssl_client_hello_type_t)::kCiphersNoAESHardwarePQTLS;
              if ((*(*(**(a1 + 8) + 120) + 248) & 4) == 0)
              {
                v19 = &bssl::ssl_write_client_cipher_list(bssl::SSL_HANDSHAKE const*,cbb_st *,bssl::ssl_client_hello_type_t)::kCiphersNoAESHardware;
              }

              if (is_opaque)
              {
                v20 = v18;
              }

              else
              {
                v20 = v19;
              }

              do
              {
                v21 = *&v20[v17];
                if (v21 == 4865 || v21 == 4866)
                {
                  if ((*(*(**(a1 + 8) + 120) + 248) & 1) == 0)
                  {
                    goto LABEL_36;
                  }
                }

                else if (v21 != 4867 || (*(*(**(a1 + 8) + 120) + 248) & 2) == 0)
                {
                  goto LABEL_36;
                }

                if (bssl::ssl_tls13_cipher_meets_policy(*&v20[v17], *(*(v12 + 8) + 304)) && !CBB_add_u16(v35, v21))
                {
                  return 0;
                }

LABEL_36:
                v17 += 2;
              }

              while (v17 != 6);
            }

            if (a3 != 1 && *(a1 + 28) <= 0x303u)
            {
              ciphers = SSL_get_ciphers(v12);
              v23 = EVP_MD_CTX_md(ciphers);
              if (!v23)
              {
                goto LABEL_52;
              }

              v24 = v23;
              v25 = 0;
              v26 = 0;
              v27 = 8 * v33;
              v28 = &v23[-1].ctx_size + 7;
              do
              {
                while (1)
                {
                  v29 = OPENSSL_sk_value(ciphers, v26);
                  if ((*(v29 + 5) & v27) != 0)
                  {
                    break;
                  }

                  v30 = v29;
                  if ((v29[3] & v27) != 0 || SSL_CIPHER_get_min_version(v29) > *(a1 + 30) || SSL_CIPHER_get_max_version(v30) < *(a1 + 28))
                  {
                    break;
                  }

                  protocol_id = SSL_CIPHER_get_protocol_id(v30);
                  if (!CBB_add_u16(v35, protocol_id))
                  {
                    return 0;
                  }

                  v25 = 1;
                  if (v28 == v26++)
                  {
                    goto LABEL_54;
                  }
                }

                ++v26;
              }

              while (v24 != v26);
              if ((v25 & 1) == 0)
              {
LABEL_52:
                if (*(a1 + 30) <= 0x303u)
                {
                  ERR_put_error(16, 0, 175, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 330);
                  return 0;
                }
              }
            }

LABEL_54:
            if ((*(v12 + 149) & 4) != 0 && !CBB_add_u16(v35, 0x5600u))
            {
              return 0;
            }

            result = CBB_flush(a2);
            if (result)
            {
              result = CBB_add_u8(a2, 1u);
              if (result)
              {
                return CBB_add_u8(a2, 0) != 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t CBB_len(uint64_t a1)
{
  if (*a1)
  {
    CBB_len_cold_1();
  }

  if (!*(a1 + 8))
  {
    return *(a1 + 24);
  }

  v1 = *(a1 + 24) + *(a1 + 32);
  v2 = *(*(a1 + 16) + 8);
  result = v2 - v1;
  if (v2 < v1)
  {
    CBB_len_cold_2();
  }

  return result;
}

BOOL bssl::ssl_add_clienthello_tlsext(uint64_t a1, uint64_t *a2, uint64_t *a3, _BYTE *a4, const ssl_session_st *a5, uint64_t a6)
{
  *a4 = 0;
  if (a5 != 1)
  {
    if (a3)
    {
      bssl::ssl_add_clienthello_tlsext();
    }

    v39 = *a1;
    *&v40 = 0xAAAAAAAAAAAAAAAALL;
    *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v89 = v40;
    v90 = v40;
    v88 = v40;
    if (!CBB_add_u16_length_prefixed(a2, &v88))
    {
      v51 = 4225;
LABEL_55:
      ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", v51);
      return 0;
    }

    *(a1 + 376) = 0;
    if ((*(*(v39 + 120) + 856) & 0x20) != 0)
    {
      grease_value = bssl::ssl_get_grease_value(a1, 2u);
      if (!bssl::add_padding_extension(&v88, grease_value, 0))
      {
        return 0;
      }
    }

    v78 = a6;
    v80 = a2;
    v82 = a4;
    for (i = 0; i != 30; ++i)
    {
      v43 = *(a1 + 736);
      v44 = i;
      if (v43)
      {
        if (v43 <= i)
        {
LABEL_85:
          abort();
        }

        v44 = *(*(a1 + 728) + i);
      }

      v45 = CBB_len(&v88);
      v46 = &bssl::kExtensions[20 * v44];
      if (!(*(v46 + 1))(a1, &v88, &v88, a5))
      {
        ERR_put_error(16, 0, 147, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 4248);
        ERR_add_error_dataf("extension %u", v52, v53, v54, v55, v56, v57, v58, *v46);
        return 0;
      }

      v47 = CBB_len(&v88);
      if (v47 != v45)
      {
        *(a1 + 376) |= 1 << v44;
      }
    }

    v48 = v47 - v45 == 4;
    if ((*(*(v39 + 120) + 856) & 0x20) != 0)
    {
      v60 = bssl::ssl_get_grease_value(a1, 3u);
      v48 = 0;
      v36 = 0;
      v50 = v78;
      v49 = v80;
      if (!bssl::add_padding_extension(&v88, v60, 1uLL))
      {
        return v36;
      }
    }

    else
    {
      v50 = v78;
      v49 = v80;
    }

    v61 = *a1;
    if (bssl::should_offer_psk(a1, a5))
    {
      digest = bssl::ssl_session_get_digest(*(v61 + 104), v62);
      v64 = EVP_MD_size(digest) + *(*(v61 + 104) + 240) + 15;
    }

    else
    {
      v64 = 0;
    }

    if (SSL_is_dtls(v39) || *(v39 + 168) || (*(*(v39 + 48) + 222) & 0x1000) != 0)
    {
LABEL_76:
      v77 = CBB_len(&v88);
      if (bssl::ext_pre_shared_key_add_clienthello(a1, &v88, v82, a5))
      {
        if (v64 != CBB_len(&v88) - v77)
        {
          bssl::ssl_add_clienthello_tlsext();
        }

        if (!CBB_len(&v88))
        {
          CBB_discard_child(v49);
        }

        return CBB_flush(v49) != 0;
      }

      v51 = 4322;
      goto LABEL_55;
    }

    v65 = v50 + v64 + CBB_len(&v88);
    v66 = v65 + 6;
    v67 = v64 == 0;
    v68 = v65 + 11;
    v69 = v48 & v67;
    if (!v48 || !v67)
    {
      v68 = v66;
    }

    if ((v68 & 0xFFFFFFFFFFFFFF00) == 0x100)
    {
      if (v66 > 0x1FB)
      {
        v69 = 1;
        goto LABEL_75;
      }

      v69 = 508 - v66;
    }

    if (!v69)
    {
      goto LABEL_76;
    }

LABEL_75:
    if (!bssl::add_padding_extension(&v88, 0x15u, v69))
    {
      return 0;
    }

    goto LABEL_76;
  }

  v10 = *a1;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v89 = v11;
  v90 = v11;
  v88 = v11;
  CBB_zero(&v88);
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v87[1] = v12;
  v87[2] = v12;
  v87[0] = v12;
  CBB_zero(v87);
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v86[1] = v13;
  v86[2] = v13;
  v85[2] = v13;
  v86[0] = v13;
  v85[0] = v13;
  v85[1] = v13;
  if (CBB_add_u16_length_prefixed(a2, v86) && CBB_add_u16_length_prefixed(a3, v85) && CBB_init(&v88, 0x40uLL) && CBB_init(v87, 0x40uLL))
  {
    *(a1 + 380) = 0;
    if ((*(*(v10 + 120) + 856) & 0x20) == 0 || (v14 = bssl::ssl_get_grease_value(a1, 2u), bssl::add_padding_extension(&v88, v14, 0)) && CBB_add_u16(v87, v14))
    {
      v79 = v10;
      v81 = a4;
      v15 = a2;
      for (j = 0; j != 30; ++j)
      {
        v17 = *(a1 + 736);
        v18 = j;
        if (v17)
        {
          if (v17 <= j)
          {
            goto LABEL_85;
          }

          v18 = *(*(a1 + 728) + j);
        }

        v19 = CBB_len(v86);
        v20 = CBB_len(&v88);
        v21 = &bssl::kExtensions[20 * v18];
        if (((*(v21 + 1))(a1, v86, &v88, 1) & 1) == 0)
        {
          ERR_put_error(16, 0, 147, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 4141);
          ERR_add_error_dataf("extension %u", v70, v71, v72, v73, v74, v75, v76, *v21);
          goto LABEL_52;
        }

        v22 = CBB_len(v86);
        v23 = CBB_len(&v88);
        if (v22 != v19 && v23 != v20)
        {
          __assert_rtn("ssl_add_clienthello_tlsext_inner", "extensions.cc", 4150, "bytes_written == 0 || bytes_written_compressed == 0");
        }

        if (v22 != v19 || v23 != v20)
        {
          *(a1 + 380) |= 1 << v18;
        }

        if (v23 != v20 && !CBB_add_u16(v87, *v21))
        {
          goto LABEL_52;
        }
      }

      v24 = v15;
      if ((*(*(v79 + 120) + 856) & 0x20) == 0 || (v25 = bssl::ssl_get_grease_value(a1, 3u), bssl::add_padding_extension(&v88, v25, 1uLL)) && CBB_add_u16(v87, v25))
      {
        v26 = CBB_data(v86);
        v27 = CBB_len(v86);
        if (CBB_add_bytes(v85, v26, v27))
        {
          if (!CBB_len(&v88))
          {
            goto LABEL_88;
          }

          *&v28 = 0xAAAAAAAAAAAAAAAALL;
          *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v84[1] = v28;
          v84[2] = v28;
          v83[2] = v28;
          v84[0] = v28;
          v83[0] = v28;
          v83[1] = v28;
          v29 = CBB_data(&v88);
          v30 = CBB_len(&v88);
          if (CBB_add_bytes(v86, v29, v30))
          {
            if (CBB_add_u16(v85, 0xFD00u))
            {
              if (CBB_add_u16_length_prefixed(v85, v84))
              {
                if (CBB_add_u8_length_prefixed(v84, v83))
                {
                  v31 = CBB_data(v87);
                  v32 = CBB_len(v87);
                  if (CBB_add_bytes(v83, v31, v32))
                  {
                    if (CBB_flush(v85))
                    {
LABEL_88:
                      v33 = CBB_len(v86);
                      if (bssl::ext_pre_shared_key_add_clienthello(a1, v86, v81, 1))
                      {
                        v34 = CBB_data(v86);
                        v35 = CBB_len(v86);
                        if (CBB_add_bytes(v85, v34 + v33, v35 - v33))
                        {
                          if (CBB_flush(v24))
                          {
                            v36 = CBB_flush(a3) != 0;
                            goto LABEL_53;
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

  else
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 4117);
  }

LABEL_52:
  v36 = 0;
LABEL_53:
  CBB_cleanup(v87);
  CBB_cleanup(&v88);
  return v36;
}

void sub_1A9019AC4(_Unwind_Exception *a1)
{
  CBB_cleanup(v1 - 192);
  CBB_cleanup(v1 - 144);
  _Unwind_Resume(a1);
}

uint64_t bssl::ext_ems_add_clienthello(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = 1;
  if (a4 != 1 && *(a1 + 28) <= 0x303u)
  {
    result = CBB_add_u16(a2, 0x17u);
    if (result)
    {
      return CBB_add_u16(a2, 0) != 0;
    }
  }

  return result;
}

uint64_t bssl::ext_ri_add_clienthello(unsigned __int16 *a1, uint64_t *a2, uint64_t a3, int a4)
{
  result = 1;
  if (a4 != 1 && a1[14] <= 0x303u)
  {
    v6 = *a1;
    if ((*(*(*a1 + 48) + 455) == 0) != ((*(*(*a1 + 48) + 222) & 0x10) == 0))
    {
      bssl::ext_ri_add_clienthello();
    }

    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v10[1] = v8;
    v10[2] = v8;
    v9[2] = v8;
    v10[0] = v8;
    v9[0] = v8;
    v9[1] = v8;
    result = CBB_add_u16(a2, 0xFF01u);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(a2, v10);
      if (result)
      {
        result = CBB_add_u8_length_prefixed(v10, v9);
        if (result)
        {
          result = CBB_add_bytes(v9, (*(v6 + 48) + 443), *(*(v6 + 48) + 455));
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

uint64_t bssl::ext_ec_point_add_clienthello(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  if (a4 == 1 || *(a1 + 28) > 0x303u)
  {
    return 1;
  }

  else
  {
    return bssl::ext_ec_point_add_extension(a2);
  }
}

uint64_t bssl::ext_alpn_add_clienthello(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  if (!*(a1[1] + 144))
  {
    if (*(v3 + 168))
    {
      ERR_put_error(16, 0, 307, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 1381);
      return 0;
    }

    return 1;
  }

  if ((*(*(v3 + 48) + 222) & 0x10) != 0)
  {
    return 1;
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9[1] = v6;
  v9[2] = v6;
  v8[2] = v6;
  v9[0] = v6;
  v8[0] = v6;
  v8[1] = v6;
  result = CBB_add_u16(a3, 0x10u);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a3, v9);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v9, v8);
      if (result)
      {
        result = CBB_add_bytes(v8, *(a1[1] + 136), *(a1[1] + 144));
        if (result)
        {
          return CBB_flush(a3) != 0;
        }
      }
    }
  }

  return result;
}

BOOL bssl::ssl_setup_pake_shares(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  OPENSSL_free(*(this + 208));
  *(this + 104) = 0u;
  if (*(this + 15) >= 0x304u)
  {
    v31 = 0;
    v32 = 0;
    v4 = *(*(*this + 8) + 32);
    v5 = *(v4 + 8);
    v6 = ssl_credential_st::IsComplete(*(v4 + 24));
    v7 = v6;
    if (bssl::Array<ssl_credential_st *>::InitUninitialized(&v31, v5 + v6))
    {
      v8 = *(v4 + 8);
      if (v8)
      {
        v9 = 0;
        v10 = v32;
        while (v10 != v9)
        {
          v31[v9] = *(*v4 + 8 * v9);
          if (v8 == ++v9)
          {
            goto LABEL_8;
          }
        }

LABEL_32:
        abort();
      }

LABEL_8:
      if (v7)
      {
        if (v32 <= v5)
        {
          goto LABEL_32;
        }

        v31[v5] = *(v4 + 24);
      }

      if (!v32)
      {
LABEL_15:
        v3 = 1;
LABEL_28:
        OPENSSL_free(v31);
        goto LABEL_29;
      }

      v11 = v31;
      v12 = 8 * v32;
      while (1)
      {
        v13 = *v11;
        ERR_clear_error();
        if (*(v13 + 4) == 3)
        {
          break;
        }

        ++v11;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_15;
        }
      }

      v14 = SPAKE2PLUS_CTX_new_prover(*(v13 + 88), *(v13 + 96), *(v13 + 104), *(v13 + 112), *(v13 + 120), *(v13 + 128), *(v13 + 136), *(v13 + 144), *(v13 + 152), *(v13 + 160));
      std::unique_ptr<spake2plus_ctx_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 210, v14);
      v34 = -86;
      *&v15 = 0xAAAAAAAAAAAAAAAALL;
      *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v33[2] = v15;
      v33[3] = v15;
      v33[0] = v15;
      v33[1] = v15;
      v30 = 65;
      if (SPAKE2PLUS_generate_prover_share(*(this + 210), v33, &v30, 0x41uLL))
      {
        v29 = 32150;
        v28 = 0xAAAAAAAAAAAAAAAALL;
        v16 = *(v13 + 112);
        *&v27[0] = *(v13 + 104);
        *&v26[0] = v16;
        v17 = *(v13 + 128);
        *&v25[0] = *(v13 + 120);
        *&v24[0] = v17;
        v18 = bssl::New<bssl::SSLPAKEShare,unsigned short &,unsigned char *,unsigned long,unsigned char *,unsigned long,unsigned char (&)[65],unsigned long &>(&v29, v27, v26, v25, v24, v33, &v30);
        v28 = 0;
        std::unique_ptr<bssl::SSLPAKEShare,bssl::internal::Deleter>::reset[abi:ne200100](this + 207, v18);
        SSL_CREDENTIAL_up_ref(v13);
        std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 190, v13);
        *&v19 = 0xAAAAAAAAAAAAAAAALL;
        *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v27[1] = v19;
        v27[2] = v19;
        v27[0] = v19;
        CBB_zero(v27);
        *&v20 = 0xAAAAAAAAAAAAAAAALL;
        *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v26[1] = v20;
        v26[2] = v20;
        v25[2] = v20;
        v26[0] = v20;
        v25[0] = v20;
        v25[1] = v20;
        v24[1] = v20;
        v24[2] = v20;
        v23[2] = v20;
        v24[0] = v20;
        v23[0] = v20;
        v23[1] = v20;
        v3 = CBB_init(v27, 0x40uLL) && CBB_add_u16_length_prefixed(v27, v25) && CBB_add_bytes(v25, *(v13 + 104), *(v13 + 112)) && CBB_add_u16_length_prefixed(v27, v24) && CBB_add_bytes(v24, *(v13 + 120), *(v13 + 128)) && CBB_add_u16_length_prefixed(v27, v26) && CBB_add_u16(v26, v29) && CBB_add_u16_length_prefixed(v26, v23) && CBB_add_bytes(v23, v33, 0x41uLL) && bssl::CBBFinishArray(v27, this + 1664);
        CBB_cleanup(v27);
        std::unique_ptr<bssl::SSLPAKEShare,bssl::internal::Deleter>::reset[abi:ne200100](&v28, 0);
        goto LABEL_28;
      }
    }

    v3 = 0;
    goto LABEL_28;
  }

  v3 = 1;
LABEL_29:
  v21 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1A901A06C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *ssl_credential_st::IsComplete(ssl_credential_st *this)
{
  v2 = *(this + 1);
  if ((v2 & 0xFFFFFFFE) != 2)
  {
    result = EVP_MD_CTX_md(*(this + 6));
    if (!result)
    {
      return result;
    }

    result = OPENSSL_sk_value(*(this + 6), 0);
    if (!result)
    {
      return result;
    }

    v2 = *(this + 1);
  }

  return (v2 == 3 || *(this + 1) && (*(this + 2) || *(this + 3)) && (v2 != 1 || *(this + 7)));
}

uint64_t bssl::Array<ssl_credential_st *>::InitUninitialized(uint64_t a1, unint64_t a2)
{
  OPENSSL_free(*a1);
  *a1 = 0;
  *(a1 + 8) = 0;
  if (!a2)
  {
    return 1;
  }

  if (a2 >> 61)
  {
    ERR_put_error(16, 0, 69, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/internal.h", 382);
    return 0;
  }

  result = OPENSSL_malloc(8 * a2);
  *a1 = result;
  if (result)
  {
    *(a1 + 8) = a2;
    return 1;
  }

  return result;
}

uint64_t bssl::ssl_setup_extension_permutation(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if ((*(*(this + 1) + 309) & 0x400) != 0)
  {
    v31 = -1431655766;
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v29 = v4;
    v30 = v4;
    v27 = v4;
    v28 = v4;
    v25 = v4;
    v26 = v4;
    *buf = v4;
    if (RAND_bytes(buf, 116) && (OPENSSL_free(0), v5 = OPENSSL_malloc(0x1EuLL), (v6 = v5) != 0))
    {
      v7 = 0;
      v8 = xmmword_1A90AF6E0;
      v9 = xmmword_1A90AF6F0;
      v10 = xmmword_1A90AF700;
      v11 = xmmword_1A90AF710;
      v12 = xmmword_1A90AF720;
      v13 = xmmword_1A90AF730;
      v14 = xmmword_1A90AF740;
      v15 = xmmword_1A90A98B0;
      v16 = vdupq_n_s64(0x10uLL);
      do
      {
        if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), v15)), *v8.i8), *v8.i8).u8[0])
        {
          LOBYTE(v5[v7]) = v7 * 8;
        }

        if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v15)), *&v8), *&v8).i8[1])
        {
          BYTE1(v5[v7]) = (v7 * 8) | 1;
        }

        if (vuzp1_s8(vuzp1_s16(*&v8, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v14))), *&v8).i8[2])
        {
          BYTE2(v5[v7]) = (v7 * 8) | 2;
          BYTE3(v5[v7]) = (v7 * 8) | 3;
        }

        if (vuzp1_s8(*&v8, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v13)), *&v8)).i32[1])
        {
          BYTE4(v5[v7]) = (v7 * 8) | 4;
        }

        if (vuzp1_s8(*&v8, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v13)), *&v8)).i8[5])
        {
          BYTE5(v5[v7]) = (v7 * 8) | 5;
        }

        if (vuzp1_s8(*&v8, vuzp1_s16(*&v8, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v12)))).i8[6])
        {
          BYTE6(v5[v7]) = (v7 * 8) | 6;
          HIBYTE(v5[v7]) = (v7 * 8) | 7;
        }

        if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), v11)), *v8.i8), *v8.i8).u8[0])
        {
          LOBYTE(v5[v7 + 1]) = (v7 * 8) | 8;
        }

        if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v11)), *&v8), *&v8).i8[1])
        {
          BYTE1(v5[v7 + 1]) = (v7 * 8) | 9;
        }

        if (vuzp1_s8(vuzp1_s16(*&v8, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v10))), *&v8).i8[2])
        {
          BYTE2(v5[v7 + 1]) = (v7 * 8) | 0xA;
          BYTE3(v5[v7 + 1]) = (v7 * 8) | 0xB;
        }

        if (vuzp1_s8(*&v8, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v9)), *&v8)).i32[1])
        {
          BYTE4(v5[v7 + 1]) = (v7 * 8) | 0xC;
        }

        if (vuzp1_s8(*&v8, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v9)), *&v8)).i8[5])
        {
          BYTE5(v5[v7 + 1]) = (v7 * 8) | 0xD;
        }

        if (vuzp1_s8(*&v8, vuzp1_s16(*&v8, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v8)))).i8[6])
        {
          BYTE6(v5[v7 + 1]) = (v7 * 8) | 0xE;
          HIBYTE(v5[v7 + 1]) = (v7 * 8) | 0xF;
        }

        v13 = vaddq_s64(v13, v16);
        v7 += 2;
        v14 = vaddq_s64(v14, v16);
        v15 = vaddq_s64(v15, v16);
        v12 = vaddq_s64(v12, v16);
        v11 = vaddq_s64(v11, v16);
        v10 = vaddq_s64(v10, v16);
        v9 = vaddq_s64(v9, v16);
        v8 = vaddq_s64(v8, v16);
      }

      while (v7 != 4);
      v17 = &v31;
      v18 = 29;
      do
      {
        v19 = *v17--;
        v20 = v19 % (v18 + 1);
        v21 = *(v5 + v18);
        *(v5 + v18) = *(v5 + v20);
        *(v5 + v20) = v21;
        --v18;
      }

      while (v18);
      OPENSSL_free(*(this + 91));
      *(this + 91) = v6;
      *(this + 92) = 30;
      v2 = 1;
    }

    else
    {
      v2 = 0;
    }

    OPENSSL_free(0);
  }

  else
  {
    v2 = 1;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_1A901A600(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t bssl::ssl_add_client_hello(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  v3 = *this;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[1] = v4;
  v18[2] = v4;
  v18[0] = v4;
  CBB_zero(v18);
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[1] = v5;
  v17[2] = v5;
  v17[0] = v5;
  v6 = *(this + 195);
  v16 = -86;
  v14 = 0;
  v15 = 0;
  if (!(*(*v3 + 88))(v3, v18, v17, 1))
  {
    goto LABEL_9;
  }

  v7 = (2 * (v6 != 0));
  if (!bssl::ssl_write_client_hello_without_extensions(this, v17, v7, 0))
  {
    goto LABEL_9;
  }

  v8 = CBB_len(v17);
  if (!bssl::ssl_add_clienthello_tlsext(this, v17, 0, &v16, v7, v8) || ((*(*v3 + 96))(v3, v18, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v16 != 1)
  {
    goto LABEL_8;
  }

  if (v6)
  {
    __assert_rtn("ssl_add_client_hello", "handshake_client.cc", 405, "type != ssl_client_hello_outer");
  }

  if (bssl::tls13_write_psk_binder(this, (this + 424), v14, v15, 0))
  {
LABEL_8:
    v9 = *(*v3 + 104);
    OPENSSL_free(0);
    v12 = v14;
    v13 = v15;
    v14 = 0;
    v15 = 0;
    v10 = v9(v3, &v12);
    OPENSSL_free(v12);
    v12 = 0;
    v13 = 0;
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  OPENSSL_free(v14);
  CBB_cleanup(v18);
  return v10;
}

void sub_1A901A7B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  bssl::Array<unsigned char>::~Array(va);
  bssl::Array<unsigned char>::~Array(va1);
  CBB_cleanup(v2 - 80);
  _Unwind_Resume(a1);
}

uint64_t CBB_add_zeros(uint64_t a1, size_t a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  result = CBB_add_space(a1, &v4, a2);
  if (result)
  {
    if (a2)
    {
      bzero(v4, a2);
    }

    return 1;
  }

  return result;
}

uint64_t bssl::ext_sni_add_clienthello(void *a1, uint64_t *a2, uint64_t a3, int a4)
{
  if (a4 == 2)
  {
    v5 = a1[195];
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);
  }

  else
  {
    v6 = *(*a1 + 160);
    if (!v6)
    {
      return 1;
    }

    v7 = strlen(*(*a1 + 160));
  }

  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12[1] = v8;
  v12[2] = v8;
  v12[0] = v8;
  v11[1] = v8;
  v11[2] = v8;
  v10[2] = v8;
  v11[0] = v8;
  v10[0] = v8;
  v10[1] = v8;
  result = CBB_add_u16(a2, 0);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a2, v12);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v12, v11);
      if (result)
      {
        result = CBB_add_u8(v11, 0);
        if (result)
        {
          result = CBB_add_u16_length_prefixed(v11, v10);
          if (result)
          {
            result = CBB_add_bytes(v10, v6, v7);
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

uint64_t bssl::ext_ech_add_clienthello(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  if (a4 == 1)
  {
    result = CBB_add_u16(a2, 0xFE0Du);
    if (result)
    {
      result = CBB_add_u16(a2, 1u);
      if (result)
      {
        v6 = CBB_add_u8(a2, 1u);
        return v6 != 0;
      }
    }
  }

  else if (*(a1 + 592))
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9[1] = v8;
    v9[2] = v8;
    v9[0] = v8;
    result = CBB_add_u16(a2, 0xFE0Du);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(a2, v9);
      if (result)
      {
        result = CBB_add_u8(v9, 0);
        if (result)
        {
          result = CBB_add_bytes(v9, *(a1 + 584), *(a1 + 592));
          if (result)
          {
            v6 = CBB_flush(a2);
            return v6 != 0;
          }
        }
      }
    }
  }

  else
  {
    return 1;
  }

  return result;
}

uint64_t bssl::ext_supported_groups_add_clienthello(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 1680))
  {
    return 1;
  }

  v19 = v3;
  v20 = v4;
  v8 = *a1;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[1] = v9;
  v18[2] = v9;
  v17[2] = v9;
  v18[0] = v9;
  v17[0] = v9;
  v17[1] = v9;
  result = CBB_add_u16(a3, 0xAu);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a3, v18);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v18, v17);
      if (result)
      {
        if ((*(*(v8 + 120) + 856) & 0x20) == 0 || (grease_value = bssl::ssl_get_grease_value(a1, 1u), result = CBB_add_u16(v17, grease_value), result))
        {
          v11 = *(a1 + 8);
          v12 = *(v11 + 120);
          if (v12)
          {
            v13 = *(v11 + 112);
          }

          else
          {
            v13 = &bssl::kDefaultGroups;
            v12 = 4;
          }

          v14 = 2 * v12;
          while (1)
          {
            v15 = *v13;
            v16 = v15 == 25497 || v15 == 4588;
            if (!v16 || *(a1 + 30) >= 0x304u)
            {
              result = CBB_add_u16(v17, v15);
              if (!result)
              {
                break;
              }
            }

            ++v13;
            v14 -= 2;
            if (!v14)
            {
              return CBB_flush(a3) != 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_ticket_add_clienthello(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  result = 1;
  if (a4 != 1 && *(a1 + 28) <= 0x303u)
  {
    v17 = v4;
    v18 = v5;
    v9 = *a1;
    if ((SSL_get_options(*a1) & 0x4000) != 0)
    {
      return 1;
    }

    else
    {
      if ((*(*(v9 + 48) + 222) & 0x10) == 0 && (v11 = *(v9 + 104)) != 0 && *(v11 + 30) && bssl::ssl_session_protocol_version(v11, v10) <= 0x303)
      {
        v12 = *(v9 + 104);
        v14 = *(v12 + 232);
        v13 = *(v12 + 240);
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }

      *&v15 = 0xAAAAAAAAAAAAAAAALL;
      *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v16[1] = v15;
      v16[2] = v15;
      v16[0] = v15;
      result = CBB_add_u16(a2, 0x23u);
      if (result)
      {
        result = CBB_add_u16_length_prefixed(a2, v16);
        if (result)
        {
          result = CBB_add_bytes(v16, v14, v13);
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

uint64_t bssl::ext_ocsp_add_clienthello(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if ((*(*(a1 + 8) + 309) & 4) == 0)
  {
    return 1;
  }

  v9 = v3;
  v10 = v4;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = v7;
  v8[2] = v7;
  v8[0] = v7;
  result = CBB_add_u16(a3, 5u);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a3, v8);
    if (result)
    {
      result = CBB_add_u8(v8, 1u);
      if (result)
      {
        result = CBB_add_u16(v8, 0);
        if (result)
        {
          result = CBB_add_u16(v8, 0);
          if (result)
          {
            return CBB_flush(a3) != 0;
          }
        }
      }
    }
  }

  return result;
}

BOOL bssl::add_padding_extension(uint64_t *a1, unsigned int a2, size_t a3)
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = v5;
  v7[2] = v5;
  v7[0] = v5;
  if (CBB_add_u16(a1, a2) && CBB_add_u16_length_prefixed(a1, v7) && CBB_add_zeros(v7, a3))
  {
    return CBB_flush(a1) != 0;
  }

  ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 4096);
  return 0;
}

uint64_t bssl::ext_sigalgs_add_clienthello(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 30) < 0x303u)
  {
    return 1;
  }

  v11 = v3;
  v12 = v4;
  if (*(a1 + 1680))
  {
    return 1;
  }

  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[1] = v8;
  v10[2] = v8;
  v9[2] = v8;
  v10[0] = v8;
  v9[0] = v8;
  v9[1] = v8;
  result = CBB_add_u16(a3, 0xDu);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a3, v10);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v10, v9);
      if (result)
      {
        result = bssl::tls12_add_verify_sigalgs(a1, v9);
        if (result)
        {
          return CBB_flush(a3) != 0;
        }
      }
    }
  }

  return result;
}

BOOL bssl::tls12_add_verify_sigalgs(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 272);
  if (v4)
  {
    v5 = *(v3 + 264);
  }

  else
  {
    v5 = &bssl::kVerifySignatureAlgorithms;
    v4 = 10;
  }

  v6 = 2 * v4 - 2;
  do
  {
    v7 = *v5++;
    v8 = CBB_add_u16(a2, v7);
    if (v8)
    {
      v9 = v6 == 0;
    }

    else
    {
      v9 = 1;
    }

    v6 -= 2;
  }

  while (!v9);
  return v8 != 0;
}

uint64_t bssl::ext_sct_add_clienthello(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*(a1 + 8) + 309) & 2) == 0)
  {
    return 1;
  }

  result = CBB_add_u16(a3, 0x12u);
  if (result)
  {
    return CBB_add_u16(a3, 0) != 0;
  }

  return result;
}

uint64_t bssl::ext_npn_add_clienthello(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *a1;
  if (!*(*(v5 + 120) + 616) || (*(*(v5 + 48) + 222) & 0x10) != 0 || SSL_is_dtls(v5))
  {
    return 1;
  }

  result = 1;
  if (a4 != 1 && *(a1 + 14) <= 0x303u)
  {
    result = CBB_add_u16(a2, 0x3374u);
    if (result)
    {
      return CBB_add_u16(a2, 0) != 0;
    }
  }

  return result;
}

uint64_t bssl::ext_channel_id_add_clienthello(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!*(*(a1 + 8) + 128))
  {
    return 1;
  }

  is_dtls = SSL_is_dtls(*a1);
  result = 1;
  if (a4 != 2 && !is_dtls)
  {
    result = CBB_add_u16(a2, 0x7550u);
    if (result)
    {
      return CBB_add_u16(a2, 0) != 0;
    }
  }

  return result;
}

uint64_t bssl::ext_key_share_add_clienthello(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 30) < 0x304u || *(a1 + 1680))
  {
    return 1;
  }

  if (!*(a1 + 640))
  {
    bssl::ext_key_share_add_clienthello();
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = v6;
  v8[2] = v6;
  v7[2] = v6;
  v8[0] = v6;
  v7[0] = v6;
  v7[1] = v6;
  result = CBB_add_u16(a3, 0x33u);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a3, v8);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v8, v7);
      if (result)
      {
        result = CBB_add_bytes(v7, *(a1 + 632), *(a1 + 640));
        if (result)
        {
          return CBB_flush(a3) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_early_data_add_clienthello(_BYTE *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(*a1 + 48);
  if ((*(v3 + 222) & 0x1000) != 0)
  {
    if (!*(v3 + 256))
    {
      bssl::ext_early_data_add_clienthello();
    }

    return 1;
  }

  if ((a1[1601] & 8) == 0)
  {
    return 1;
  }

  result = CBB_add_u16(a3, 0x2Au);
  if (result)
  {
    result = CBB_add_u16(a3, 0);
    if (result)
    {
      return CBB_flush(a3) != 0;
    }
  }

  return result;
}

uint64_t bssl::ext_cookie_add_clienthello(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*(a1 + 560))
  {
    return 1;
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = v5;
  v8[2] = v5;
  v7[2] = v5;
  v8[0] = v5;
  v7[0] = v5;
  v7[1] = v5;
  result = CBB_add_u16(a3, 0x2Cu);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a3, v8);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v8, v7);
      if (result)
      {
        result = CBB_add_bytes(v7, *(a1 + 552), *(a1 + 560));
        if (result)
        {
          return CBB_flush(a3) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_quic_transport_params_add_clienthello_impl(uint64_t a1, uint64_t *a2, int a3)
{
  v3 = *(a1 + 8);
  v4 = *(*a1 + 168);
  if (!*(v3 + 240))
  {
    if (!v4)
    {
      return 1;
    }

LABEL_13:
    ERR_put_error(16, 0, 305, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 2679);
    return 0;
  }

  if (!v4)
  {
    goto LABEL_13;
  }

  if (*(a1 + 28) <= 0x303u)
  {
    bssl::ext_quic_transport_params_add_clienthello_impl();
  }

  v6 = *(v3 + 309) & 0x200;
  if (a3 != v6 >> 9)
  {
    return 1;
  }

  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[1] = v8;
  v11[2] = v8;
  v11[0] = v8;
  if (v6)
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
      result = CBB_add_bytes(v11, *(*(a1 + 8) + 232), *(*(a1 + 8) + 240));
      if (result)
      {
        return CBB_flush(a2) != 0;
      }
    }
  }

  return result;
}

uint64_t bssl::cert_compression_add_clienthello(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(*a1 + 120);
  v4 = *(v3 + 736);
  if (!v4)
  {
    return 1;
  }

  v6 = *(v3 + 728);
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13[1] = v7;
  v13[2] = v7;
  v8 = v6 + 24 * v4;
  v12[2] = v7;
  v13[0] = v7;
  v12[0] = v7;
  v12[1] = v7;
  v9 = 1;
  while (2)
  {
    for (v6 += 24; !*(v6 - 16); v6 += 24)
    {
      if (v6 == v8)
      {
        if (v9)
        {
          return 1;
        }

        return CBB_flush(a3) != 0;
      }
    }

    if ((v9 & 1) == 0 || (result = CBB_add_u16(a3, 0x1Bu), result) && (result = CBB_add_u16_length_prefixed(a3, v13), result) && (result = CBB_add_u8_length_prefixed(v13, v12), result))
    {
      result = CBB_add_u16(v12, *(v6 - 8));
      if (result)
      {
        v9 = 0;
        if (v6 != v8)
        {
          continue;
        }

        return CBB_flush(a3) != 0;
      }
    }

    break;
  }

  return result;
}

uint64_t bssl::ext_alps_add_clienthello_impl(uint64_t a1, uint64_t *a2, int a3)
{
  if (*(a1 + 30) < 0x304u)
  {
    return 1;
  }

  v19 = v3;
  v20 = v4;
  v7 = *(a1 + 8);
  if (!*(v7 + 144))
  {
    return 1;
  }

  if (!*(v7 + 160))
  {
    return 1;
  }

  if ((*(*(*a1 + 48) + 222) & 0x10) != 0)
  {
    return 1;
  }

  v8 = *(v7 + 309) & 0x2000;
  if (a3 != v8 >> 13)
  {
    return 1;
  }

  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[1] = v10;
  v18[2] = v10;
  v18[0] = v10;
  v17[1] = v10;
  v17[2] = v10;
  v16[2] = v10;
  v17[0] = v10;
  if (v8)
  {
    v11 = 17613;
  }

  else
  {
    v11 = 17513;
  }

  v16[0] = v10;
  v16[1] = v10;
  result = CBB_add_u16(a2, v11);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a2, v18);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v18, v17);
      if (result)
      {
        v12 = *(a1 + 8);
        v13 = *(v12 + 160);
        if (v13)
        {
          v14 = *(v12 + 152);
          v15 = v14 + 32 * v13;
          while (1)
          {
            result = CBB_add_u8_length_prefixed(v17, v16);
            if (!result)
            {
              break;
            }

            result = CBB_add_bytes(v16, *v14, *(v14 + 8));
            if (!result)
            {
              break;
            }

            v14 += 32;
            if (v14 == v15)
            {
              return CBB_flush(a2) != 0;
            }
          }
        }

        else
        {
          return CBB_flush(a2) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_client_certificate_type_add_clienthello(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 30) < 0x304u)
  {
    return 1;
  }

  v11 = v3;
  v12 = v4;
  if (!*(*(a1 + 8) + 208))
  {
    return 1;
  }

  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[1] = v8;
  v10[2] = v8;
  v9[2] = v8;
  v10[0] = v8;
  v9[0] = v8;
  v9[1] = v8;
  result = CBB_add_u16(a3, 0x13u);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a3, v10);
    if (result)
    {
      result = CBB_add_u8_length_prefixed(v10, v9);
      if (result)
      {
        result = CBB_add_bytes(v9, *(*(a1 + 8) + 200), *(*(a1 + 8) + 208));
        if (result)
        {
          return CBB_flush(a3) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_server_certificate_type_add_clienthello(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 30) < 0x304u)
  {
    return 1;
  }

  v11 = v3;
  v12 = v4;
  if (!*(*(a1 + 8) + 184))
  {
    return 1;
  }

  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[1] = v8;
  v10[2] = v8;
  v9[2] = v8;
  v10[0] = v8;
  v9[0] = v8;
  v9[1] = v8;
  result = CBB_add_u16(a3, 0x14u);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a3, v10);
    if (result)
    {
      result = CBB_add_u8_length_prefixed(v10, v9);
      if (result)
      {
        result = CBB_add_bytes(v9, *(*(a1 + 8) + 176), *(*(a1 + 8) + 184));
        if (result)
        {
          return CBB_flush(a3) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_pake_add_clienthello(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*(a1 + 1672))
  {
    return 1;
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = v5;
  v7[2] = v5;
  v7[0] = v5;
  result = CBB_add_u16(a3, 0x8A3Bu);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a3, v7);
    if (result)
    {
      result = CBB_add_bytes(v7, *(a1 + 1664), *(a1 + 1672));
      if (result)
      {
        return CBB_flush(a3) != 0;
      }
    }
  }

  return result;
}

bssl *bssl::should_offer_psk(uint64_t *a1, const ssl_session_st *a2)
{
  if (*(a1 + 15) < 0x304u)
  {
    return 0;
  }

  v4 = *a1;
  result = *(*a1 + 104);
  if (result)
  {
    v5 = a2;
    v6 = bssl::ssl_session_protocol_version(result, a2);
    result = 0;
    if (v5 != 2 && v6 >= 0x304)
    {
      return ((*(*(v4 + 48) + 222) & 0x1000) == 0 || *(*(*(v4 + 104) + 200) + 36) == *(a1[196] + 36));
    }
  }

  return result;
}

uint64_t bssl::ext_pre_shared_key_add_clienthello(uint64_t *a1, uint64_t *a2, _BYTE *a3, const ssl_session_st *a4)
{
  v6 = *a1;
  *a3 = 0;
  if (!bssl::should_offer_psk(a1, a4))
  {
    return 1;
  }

  v22[0] = 0xAAAAAAAAAAAAAAAALL;
  v22[1] = 0xAAAAAAAAAAAAAAAALL;
  bssl::ssl_get_current_time(v6, v22);
  v7 = v22[0];
  v8 = *(v6 + 104);
  v9 = *(v8 + 192);
  v10 = *(v8 + 376);
  v11 = *(v8 + 440);
  digest = bssl::ssl_session_get_digest(v8, v12);
  v14 = EVP_MD_size(digest);
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[1] = v15;
  v21[2] = v15;
  v21[0] = v15;
  v20[1] = v15;
  v20[2] = v15;
  v19[2] = v15;
  v20[0] = v15;
  v19[0] = v15;
  v19[1] = v15;
  v18[1] = v15;
  v18[2] = v15;
  v17[2] = v15;
  v18[0] = v15;
  v17[0] = v15;
  v17[1] = v15;
  result = CBB_add_u16(a2, 0x29u);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a2, v21);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v21, v20);
      if (result)
      {
        result = CBB_add_u16_length_prefixed(v20, v19);
        if (result)
        {
          result = CBB_add_bytes(v19, *(*(v6 + 104) + 232), *(*(v6 + 104) + 240));
          if (result)
          {
            result = CBB_add_u32(v20, (v10 + 1000 * (v7 - v9)) & ~(v11 >> 31));
            if (result)
            {
              result = CBB_add_u16_length_prefixed(v21, v18);
              if (result)
              {
                result = CBB_add_u8_length_prefixed(v18, v17);
                if (result)
                {
                  result = CBB_add_zeros(v17, v14);
                  if (result)
                  {
                    *a3 = 1;
                    return CBB_flush(a2) != 0;
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

uint64_t SSL_set_quic_use_legacy_codepoint(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    *(v2 + 309) = *(v2 + 309) & 0xFDFF | ((a2 != 0) << 9);
  }

  return result;
}

BOOL boringssl_context_set_quic_transport_parameters(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1 || *a1 != -1252936367)
  {
    goto LABEL_22;
  }

  v5 = 0;
  if (!v3)
  {
    goto LABEL_23;
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
    goto LABEL_23;
  }

  if (!*(v6 + 392))
  {
    goto LABEL_22;
  }

  size = dispatch_data_get_size(v3);
  buffer_from_dispatch_data = boringssl_helper_create_buffer_from_dispatch_data(v4);
  if (!buffer_from_dispatch_data)
  {
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
      if (!v24 || !g_boringssl_log)
      {
        goto LABEL_23;
      }

      v25 = g_boringssl_log;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        boringssl_context_set_quic_transport_parameters_cold_2();
      }
    }

LABEL_22:
    v5 = 0;
    goto LABEL_23;
  }

  v9 = buffer_from_dispatch_data;
  v10 = SSL_set_quic_transport_params(*(v6 + 392), buffer_from_dispatch_data, size);
  v5 = v10 == 1;
  if (v10 != 1)
  {
    v11 = objc_loadWeakRetained((v6 + 16));
    if (!v11 || (v12 = v11, v13 = objc_loadWeakRetained((v6 + 16)), v14 = v13[435], v13, v12, (v14 & 1) == 0))
    {
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

      if (v17)
      {
        if (g_boringssl_log)
        {
          v27 = g_boringssl_log;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            boringssl_context_set_quic_transport_parameters_cold_1();
          }
        }
      }
    }
  }

  free(v9);
LABEL_23:

  return v5;
}

void *boringssl_helper_create_buffer_from_dispatch_data(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_5;
  }

  size = dispatch_data_get_size(v1);
  v4 = malloc_type_malloc(size, 0x100004077774924uLL);
  if (v4 && boringssl_helper_dispatch_data_copyout(v2, v4, size) != size)
  {
    free(v4);
LABEL_5:
    v4 = 0;
  }

  return v4;
}

uint64_t boringssl_helper_dispatch_data_copyout(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v6[3] = a2;
  if (a1)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __boringssl_helper_dispatch_data_copyout_block_invoke;
    applier[3] = &unk_1E785F790;
    applier[5] = v6;
    applier[6] = a3;
    applier[4] = &v7;
    dispatch_data_apply(a1, applier);
    v3 = v8[3];
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v7, 8);
  return v3;
}

BOOL __boringssl_helper_dispatch_data_copyout_block_invoke(void *a1, int a2, int a3, void *__src, size_t a5)
{
  v5 = a1[6];
  v6 = *(*(a1[4] + 8) + 24);
  if (v5 - v6 >= a5)
  {
    v7 = a5;
  }

  else
  {
    v7 = v5 - v6;
  }

  if (v7)
  {
    memcpy((*(*(a1[5] + 8) + 24) + v6), __src, v7);
    *(*(a1[4] + 8) + 24) += v7;
    v6 = *(*(a1[4] + 8) + 24);
    v5 = a1[6];
  }

  return v6 < v5;
}

uint64_t SSL_set_quic_transport_params(uint64_t a1, char *a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = a3;
  result = bssl::Array<unsigned char>::InitUninitialized(v3 + 232, a3);
  if (result)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = *(v3 + 232);
    do
    {
      v9 = *a2++;
      *v8++ = v9;
      --v4;
    }

    while (v4);
  }

  return result;
}

void __check_and_init_restricted_mode_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    CFNumberGetValue(v0, kCFNumberIntType, &boringssl_config_restricted_mode_status);

    CFRelease(v1);
  }
}

uint64_t thread_local_init()
{
  result = pthread_key_create(&g_thread_local_key, thread_local_destructor);
  g_thread_local_key_created = result == 0;
  return result;
}

uint64_t SSL_set_quic_method(uint64_t a1, uint64_t a2)
{
  if (**a1)
  {
    return 0;
  }

  *(a1 + 168) = a2;
  return 1;
}

uint64_t bssl::ext_srtp_add_clienthello(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  srtp_profiles = SSL_get_srtp_profiles(*a1);
  if (!srtp_profiles)
  {
    return 1;
  }

  v6 = srtp_profiles;
  if (!EVP_MD_CTX_md(srtp_profiles) || !SSL_is_dtls(v4))
  {
    return 1;
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[1] = v7;
  v14[2] = v7;
  v13[2] = v7;
  v14[0] = v7;
  v13[0] = v7;
  v13[1] = v7;
  result = CBB_add_u16(a3, 0xEu);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a3, v14);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v14, v13);
      if (result)
      {
        v9 = EVP_MD_CTX_md(v6);
        if (v9)
        {
          v10 = v9;
          v11 = 0;
          while (1)
          {
            v12 = OPENSSL_sk_value(v6, v11);
            result = CBB_add_u16(v13, *(v12 + 4));
            if (!result)
            {
              break;
            }

            if (v10 == ++v11)
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
LABEL_11:
          result = CBB_add_u8(v14, 0);
          if (result)
          {
            return CBB_flush(a3) != 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_psk_key_exchange_modes_add_clienthello(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 30) < 0x304u || *(a1 + 1680))
  {
    return 1;
  }

  v10 = v3;
  v11 = v4;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9[1] = v7;
  v9[2] = v7;
  v8[2] = v7;
  v9[0] = v7;
  v8[0] = v7;
  v8[1] = v7;
  result = CBB_add_u16(a3, 0x2Du);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a3, v9);
    if (result)
    {
      result = CBB_add_u8_length_prefixed(v9, v8);
      if (result)
      {
        result = CBB_add_u8(v8, 1u);
        if (result)
        {
          return CBB_flush(a3) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_supported_versions_add_clienthello(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  if (*(a1 + 30) < 0x304u)
  {
    return 1;
  }

  v16 = v4;
  v17 = v5;
  v9 = *a1;
  if (*(a1 + 28) <= 0x303u)
  {
    a3 = a2;
  }

  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[1] = v11;
  v15[2] = v11;
  v14[2] = v11;
  v15[0] = v11;
  v14[0] = v11;
  v14[1] = v11;
  result = CBB_add_u16(a3, 0x2Bu);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a3, v15);
    if (result)
    {
      result = CBB_add_u8_length_prefixed(v15, v14);
      if (result)
      {
        if ((*(v9[15] + 428) & 0x20) == 0 || (grease_value = bssl::ssl_get_grease_value(a1, 4u), result = CBB_add_u16(v14, grease_value), result))
        {
          if (a4 == 1)
          {
            v13 = 772;
          }

          else
          {
            v13 = 0;
          }

          result = bssl::ssl_add_supported_versions(a1, v14, v13);
          if (result)
          {
            return CBB_flush(a3) != 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ssl_add_supported_versions(_BYTE ***a1, uint64_t a2, unsigned int a3)
{
  if (***a1)
  {
    v6 = 6;
  }

  else
  {
    v6 = 8;
  }

  if (***a1)
  {
    v7 = &bssl::kDTLSVersions;
  }

  else
  {
    v7 = &bssl::kTLSVersions;
  }

  while (1)
  {
    v8 = *v7;
    v11 = -21846;
    if (bssl::ssl_supports_version(a1, v8))
    {
      if (bssl::ssl_protocol_version_from_wire(&v11, v8) && v11 >= a3)
      {
        result = CBB_add_u16(a2, v8);
        if (!result)
        {
          break;
        }
      }
    }

    ++v7;
    v6 -= 2;
    if (!v6)
    {
      return 1;
    }
  }

  return result;
}

uint64_t bssl::ext_ticket_request_add_clienthello(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 30) < 0x304u)
  {
    return 1;
  }

  v11 = v3;
  v12 = v4;
  v8 = *(a1 + 8);
  if (!*(v8 + 224) && !*(v8 + 225))
  {
    return 1;
  }

  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[1] = v9;
  v10[2] = v9;
  v10[0] = v9;
  result = CBB_add_u16(a3, 0x3Au);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a3, v10);
    if (result)
    {
      result = CBB_add_u8(v10, *(*(a1 + 8) + 224));
      if (result)
      {
        result = CBB_add_u8(v10, *(*(a1 + 8) + 225));
        if (result)
        {
          return CBB_flush(a3) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_certificate_authorities_add_clienthello(uint64_t a1, const bssl::SSL_CONFIG *a2)
{
  if (!bssl::ssl_has_CA_names(*(a1 + 8), a2))
  {
    return 1;
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = v4;
  v6[2] = v4;
  v6[0] = v4;
  if (CBB_add_u16(a2, 0x2Fu) && CBB_add_u16_length_prefixed(a2, v6) && (bssl::ssl_add_CA_names(a1, v6) & 1) != 0)
  {
    result = CBB_flush(a2);
    if (!result)
    {
      return result;
    }

    return 1;
  }

  return 0;
}

uint64_t SSL_get_srtp_profiles(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 8);
  if (!v1)
  {
    SSL_get_srtp_profiles_cold_1();
  }

  v2 = *(v1 + 280);
  if (!v2)
  {
    return *(*(a1 + 120) + 720);
  }

  return v2;
}

const EVP_MD_CTX *bssl::ssl_has_CA_names(bssl *this, const bssl::SSL_CONFIG *a2)
{
  result = *(this + 13);
  if (result)
  {
    return (EVP_MD_CTX_md(result) != 0);
  }

  result = *(*(*this + 120) + 416);
  if (result)
  {
    return (EVP_MD_CTX_md(result) != 0);
  }

  return result;
}

uint64_t bssl::ssl_send_finished(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(this + 192);
  if (!v3)
  {
    v3 = *(v2 + 104);
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27 = v4;
  v28 = v4;
  *v25 = v4;
  v26 = v4;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  if (!bssl::SSLTranscript::GetFinishedMAC((this + 424), v25, &v24, v3, *(v2 + 180) & 1))
  {
    goto LABEL_21;
  }

  v5 = v24;
  if (!bssl::ssl_log_secret(v2, "CLIENT_RANDOM", &v3->key_arg[2], v3->master_key[38]))
  {
    goto LABEL_21;
  }

  if (*(v2 + 180))
  {
    if (v5 <= 0xC)
    {
      v6 = *(v2 + 48);
      *(v6 + 468) = 0;
      if (!v5)
      {
        goto LABEL_16;
      }

      v7 = (v6 + 468);
      v8 = (v6 + 456);
      v9 = v25;
      v10 = v5;
      do
      {
        v11 = *v9++;
        *v8++ = v11;
        --v10;
      }

      while (v10);
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  if (v5 > 0xC)
  {
LABEL_20:
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake.cc", 553);
LABEL_21:
    v19 = 0;
    goto LABEL_22;
  }

  v12 = *(v2 + 48);
  *(v12 + 455) = 0;
  if (!v5)
  {
    goto LABEL_16;
  }

  v7 = (v12 + 455);
  v13 = (v12 + 443);
  v14 = v25;
  v15 = v5;
  do
  {
    v16 = *v14++;
    *v13++ = v16;
    --v15;
  }

  while (v15);
LABEL_15:
  *v7 = v5;
LABEL_16:
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23[1] = v17;
  v23[2] = v17;
  v23[0] = v17;
  CBB_zero(v23);
  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[1] = v18;
  v22[2] = v18;
  v22[0] = v18;
  if (*(*v2 + 88))(v2, v23, v22, 20) && CBB_add_bytes(v22, v25, v5) && (bssl::ssl_add_message_cbb(v2, v23))
  {
    v19 = 1;
  }

  else
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake.cc", 562);
    v19 = 0;
  }

  CBB_cleanup(v23);
LABEL_22:
  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

void sub_1A901C5C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CRYPTO_tls1_prf(uint64_t *a1, _BYTE *a2, size_t a3, char *a4, unint64_t a5, const unsigned __int8 *a6, size_t a7, const unsigned __int8 *a8, size_t len, const unsigned __int8 *a10, size_t a11)
{
  if (!a3)
  {
    return 1;
  }

  bzero(a2, a3);
  if (EVP_md5_sha1() == a1)
  {
    v18 = EVP_md5();
    result = tls1_P_hash(a2, a3, v18, a4, a5 - (a5 >> 1), a6, a7, a8, len, a10, a11);
    if (!result)
    {
      return result;
    }

    a4 += a5 >> 1;
    a5 -= a5 >> 1;
    a1 = EVP_sha1();
  }

  return tls1_P_hash(a2, a3, a1, a4, a5, a6, a7, a8, len, a10, a11);
}

uint64_t bssl::SSLTranscript::GetFinishedMAC(bssl::SSLTranscript *this, unsigned __int8 *a2, unint64_t *a3, const ssl_session_st *a4, int a5)
{
  v21 = *MEMORY[0x1E69E9840];
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19 = v10;
  v20 = v10;
  *v17 = v10;
  v18 = v10;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  result = bssl::SSLTranscript::GetHash(this, v17, &v16);
  if (result)
  {
    if (a5)
    {
      v12 = "server finished";
    }

    else
    {
      v12 = "client finished";
    }

    v13 = EVP_MD_CTX_md((this + 8));
    result = bssl::tls1_prf(v13, a2, 0xCuLL, &a4->key_arg[2], a4->master_key[38], v12, 0xFuLL, v14, v17, v16, 0, 0);
    if (result)
    {
      *a3 = 12;
      result = 1;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t bssl::tls1_configure_aead(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t **a4, char *a5, const ssl_cipher_st *a6)
{
  v6 = a6;
  memset(var58, 170, 24);
  if (!bssl::get_key_block_lengths(a1, &var58[2], &var58[1], var58, a4[25], a6))
  {
    return 0;
  }

  v12 = var58[1];
  v13 = 2 * (var58[1] + var58[2] + var58[0]);
  v14 = *(a3 + 8);
  if (!v14)
  {
    if (!bssl::Array<unsigned char>::InitUninitialized(a3, 2 * (var58[1] + var58[2] + var58[0])) || !bssl::generate_key_block(a1, *a3, *(a3 + 8), a4))
    {
      return 0;
    }

    v14 = *(a3 + 8);
  }

  if (v14 != v13)
  {
    bssl::tls1_configure_aead();
  }

  v15 = *a3;
  if (((*(a1 + 180) & 1) == 0) == a2)
  {
    if (v13 >= var58[2])
    {
      v16 = var58[2];
    }

    else
    {
      v16 = v13;
    }

    if (v13 >= 2 * var58[2] && v13 >= 2 * (var58[2] + v12))
    {
      v17 = 2 * var58[2];
      v18 = 2 * (var58[2] + v12);
      v19 = var58[0];
      v20 = *a3;
      goto LABEL_21;
    }

LABEL_39:
    abort();
  }

  if (v13 < var58[2])
  {
    goto LABEL_39;
  }

  v17 = v12 + 2 * var58[2];
  if (v13 < v17)
  {
    goto LABEL_39;
  }

  v16 = v13 - var58[2] >= var58[2] ? var58[2] : v13 - var58[2];
  v19 = var58[0];
  v18 = var58[0] + 2 * (var58[2] + v12);
  if (v13 < v18)
  {
    goto LABEL_39;
  }

  v20 = (v15 + var58[2]);
LABEL_21:
  if (v13 - v17 >= v12)
  {
    v21 = v12;
  }

  else
  {
    v21 = v13 - v17;
  }

  v22 = v13 - v18;
  if (v13 - v18 >= v19)
  {
    v22 = v19;
  }

  if (v6)
  {
    if (v6 != v19)
    {
      return 0;
    }
  }

  else
  {
    a5 = v15 + v18;
    v6 = v22;
  }

  v33 = 0xAAAAAAAAAAAAAAAALL;
  bssl::SSLAEADContext::Create(a2, *(*(a1 + 48) + 208), a4[25], (&v15->ssl_version + v17), v21, v20, v16, &v33, a5, v6);
  v24 = v33;
  if (v33)
  {
    v25 = *a1;
    if (a2)
    {
      v26 = *(v25 + 144);
      v33 = 0;
      v27 = &v31;
      v31 = v24;
      v28 = v26(a1, 3, &v31, 0, 0);
    }

    else
    {
      v29 = *(v25 + 136);
      v32 = v33;
      v33 = 0;
      v27 = &v32;
      v28 = v29(a1, 3, &v32, 0, 0);
    }

    v23 = v28;
    std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](v27, 0);
  }

  else
  {
    v23 = 0;
  }

  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](&v33, 0);
  return v23;
}