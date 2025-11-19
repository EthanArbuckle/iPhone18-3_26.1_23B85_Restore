uint64_t bssl::SSL_HANDSHAKE::GetClientHello(bssl **a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[76];
  if (v4)
  {
    *a2 = 256;
    v5 = a1[75];
    *(a2 + 24) = v5;
    *(a2 + 32) = v4;
    v6 = *a1;
    v7 = 4;
    if (***a1)
    {
      v7 = 12;
    }

    v8 = a1[76];
    v9 = v8 >= v7;
    v10 = v8 - v7;
    if (!v9)
    {
      abort();
    }

    v11 = v5 + v7;
    *(a2 + 8) = v11;
    *(a2 + 16) = v10;
    v17 = v11;
    v18 = v10;
    if (!bssl::ssl_parse_client_hello_with_trailing_data(v6, &v17, a3))
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (!(*(**a1 + 24))())
    {
      ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake.cc", 88);
      return 0;
    }

    v14 = *(a2 + 16);
    v15 = *a1;
    v17 = *(a2 + 8);
    v18 = v14;
    if (!bssl::ssl_parse_client_hello_with_trailing_data(v15, &v17, a3))
    {
LABEL_12:
      bssl::ssl_send_alert(*a1, 2, 50);
      return 0;
    }
  }

  if (v18)
  {
    ERR_put_error(16, 0, 131, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 4774);
    goto LABEL_12;
  }

  return 1;
}

void bssl::ssl_handshake_new(char **this@<X0>, bssl::SSL_HANDSHAKE **a2@<X8>)
{
  v5 = malloc_type_malloc(0x6B8uLL, 0xB4E622C9uLL);
  if (v5)
  {
    v6 = v5;
    *v5 = 1712;
    v5[1] = this;
    v7 = (v5 + 1);
    *(v5 + 6) = 1;
    *(v5 + 88) = 0;
    *(v5 + 137) = 0;
    *(v5 + 186) = 0;
    *(v5 + 235) = 0;
    *(v5 + 284) = 0;
    *(v5 + 333) = 0;
    *(v5 + 382) = 0;
    *(v5 + 28) = 0;
    *(v5 + 9) = 0;
    *(v5 + 24) = 0u;
    *(v5 + 25) = 0u;
    v8 = **this;
    v5[56] = 0;
    *(v5 + 26) = 0u;
    *(v5 + 27) = 0u;
    *(v5 + 456) = v5[57] & 0xFE | v8;
    *(v5 + 229) = 0;
    v9 = **this;
    v5[62] = 0;
    *(v5 + 29) = 0u;
    *(v5 + 30) = 0u;
    *(v5 + 504) = v5[63] & 0xFE | v9;
    *(v5 + 253) = 0;
    *(v5 + 32) = 0u;
    *(v5 + 33) = 0u;
    *(v5 + 34) = 0u;
    *(v5 + 35) = 0u;
    *(v5 + 36) = 0u;
    *(v5 + 37) = 0u;
    *(v5 + 38) = 0u;
    *(v5 + 39) = 0u;
    *(v5 + 40) = 0u;
    *(v5 + 41) = 0u;
    *(v5 + 42) = 0u;
    *(v5 + 43) = 0u;
    *(v5 + 44) = 0u;
    *(v5 + 45) = 0u;
    *(v5 + 1496) = 0;
    v5[202] = 0;
    *(v5 + 100) = 0u;
    *(v5 + 99) = 0u;
    *(v5 + 98) = 0u;
    *(v5 + 97) = 0u;
    *(v5 + 96) = 0u;
    *(v5 + 95) = 0u;
    *(v5 + 94) = 0u;
    bzero(v5 + 93, 0x2E1uLL);
    *(v6 + 406) &= 0xF0000000;
    *(v6 + 1628) = 0;
    v6[1636] = 0;
    *(v6 + 1669) = 0;
    *(v6 + 105) = 0u;
    *(v6 + 106) = 0u;
    *(v6 + 214) = 0;
    BCM_rand_bytes_with_additional_data(v6 + 1670, 7uLL, BCM_rand_bytes::kZeroAdditionalData);
    if (bssl::SSLTranscript::Init((v6 + 416)) && (v10 = this[1], (*(v6 + 2) = v10) != 0))
    {
      *a2 = v7;
    }

    else
    {
      *a2 = 0;
      bssl::SSL_HANDSHAKE::~SSL_HANDSHAKE(v7);

      free(v6);
    }
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    *a2 = 0;
  }
}

void bssl::ssl_add_message_cbb(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  v14 = 0;
  if ((*(*a1 + 96))(a1, a2, &v13))
  {
    v3 = *(*a1 + 104);
    v11 = v13;
    v12 = v14;
    v13 = 0;
    v14 = 0;
    v3(a1, &v11);
    if (v12 && v12 - 1 >= -v11)
    {
      goto LABEL_17;
    }

    if (v11)
    {
      v5 = (v11 - 8);
      v4 = *(v11 - 8);
      if (v4 != -8)
      {
        bzero(v5, v4 + 8);
      }

      free(v5);
    }

    v11 = 0;
    v12 = 0;
    v7 = v13;
    v6 = v14;
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = v13;
    v6 = v14;
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  if (v6 - 1 >= -v7)
  {
LABEL_17:
    __break(1u);
    return;
  }

LABEL_12:
  if (v7)
  {
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    v10 = v9 + 8;
    if (v9 != -8)
    {
      bzero(v8, v10);
    }

    free(v8);
  }
}

uint64_t bssl::ssl_parse_extensions(unsigned __int16 **a1, _BYTE *a2, uint64_t *a3, uint64_t a4, int a5)
{
  if (a4)
  {
    v6 = 8 * a4;
    v7 = a3;
    do
    {
      v8 = *v7++;
      *(v8 + 3) = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      v6 -= 8;
    }

    while (v6);
    v9 = a1[1];
    if (v9)
    {
      v10 = *a1;
      if (a5)
      {
        while (v9 >= 2)
        {
          if ((v9 & 0xFFFFFFFFFFFFFFFELL) == 2)
          {
            break;
          }

          v11 = v9 - 4;
          v12 = __rev16(v10[1]);
          v13 = v11 >= v12;
          v9 = v11 - v12;
          if (!v13)
          {
            break;
          }

          v14 = __rev16(*v10);
          v15 = v10 + 2;
          v10 = (v10 + v12 + 4);
          v16 = 8 * a4;
          v17 = a3;
          while (1)
          {
            v18 = *v17;
            if (v14 == **v17 && (*(v18 + 2) & 1) != 0)
            {
              break;
            }

            ++v17;
            v16 -= 8;
            if (!v16)
            {
              goto LABEL_7;
            }
          }

          if (*(v18 + 3))
          {
            goto LABEL_44;
          }

          *(v18 + 3) = 1;
          *(v18 + 8) = v15;
          *(v18 + 16) = v12;
LABEL_7:
          if (!v9)
          {
            return 1;
          }
        }
      }

      else
      {
        result = 1;
        while (v9 >= 2)
        {
          if ((v9 & 0xFFFFFFFFFFFFFFFELL) == 2)
          {
            break;
          }

          v24 = v9 - 4;
          v25 = __rev16(v10[1]);
          v13 = v24 >= v25;
          v9 = v24 - v25;
          if (!v13)
          {
            break;
          }

          v26 = __rev16(*v10);
          v27 = v10 + 2;
          v10 = (v10 + v25 + 4);
          v28 = 8 * a4;
          v29 = a3;
          while (1)
          {
            v30 = *v29;
            if (v26 == **v29 && (*(v30 + 2) & 1) != 0)
            {
              break;
            }

            ++v29;
            v28 -= 8;
            if (!v28)
            {
              goto LABEL_43;
            }
          }

          if (*(v30 + 3) == 1)
          {
LABEL_44:
            ERR_put_error(16, 0, 257, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake.cc", 217);
            result = 0;
            *a2 = 47;
            return result;
          }

          *(v30 + 3) = 1;
          *(v30 + 8) = v27;
          *(v30 + 16) = v25;
          if (!v9)
          {
            return result;
          }
        }
      }

      goto LABEL_41;
    }

    return 1;
  }

  v19 = a1[1];
  if (!v19)
  {
    return 1;
  }

  v20 = *a1;
  if (a5)
  {
    while (1)
    {
      v13 = v19 >= 4;
      v21 = v19 - 4;
      if (!v13)
      {
        break;
      }

      v22 = __rev16(v20[1]);
      if (v21 < v22)
      {
        break;
      }

      v20 = (v20 + v22 + 4);
      v19 = v21 - v22;
      if (!v19)
      {
        return 1;
      }
    }

    goto LABEL_41;
  }

  v13 = v19 >= 4;
  v31 = v19 - 4;
  if (!v13 || v31 < __rev16(v20[1]))
  {
LABEL_41:
    ERR_put_error(16, 0, 190, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake.cc", 192);
    result = 0;
    *a2 = 50;
    return result;
  }

  LOBYTE(v26) = __rev16(*v20);
LABEL_43:
  ERR_put_error(16, 0, 222, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake.cc", 209);
  ERR_add_error_dataf("extension %u", v32, v33, v34, v35, v36, v37, v38, v26);
  result = 0;
  *a2 = 110;
  return result;
}

uint64_t bssl::ssl_verify_peer_cert(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  v3 = *this;
  v4 = *(*(*this + 48) + 464);
  if (!v4)
  {
    v34 = 46;
    v12 = *(*(this + 1) + 48);
    if (v12)
    {
      result = v12(v3, &v34);
      if (result == 1)
      {
        if (*(*(this + 1) + 268))
        {
          result = 1;
          *(*(this + 194) + 176) = 50;
          goto LABEL_28;
        }

        ERR_clear_error();
        *(*(this + 194) + 176) = 50;
LABEL_56:
        if (*(v3 + 164))
        {
          return 0;
        }

        if ((*(*(this + 1) + 269) & 4) == 0)
        {
          return 0;
        }

        v30 = *(v3 + 104);
        v31 = *(v30 + 752);
        if (!v31)
        {
          return 0;
        }

        v32 = v31(v3, *(v30 + 760));
        if (v32 > 0)
        {
          return 0;
        }

        v33 = v32;
        ERR_put_error(16, 0, 289, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake.cc", 309);
        if (v33)
        {
          v15 = 80;
        }

        else
        {
          v15 = 113;
        }

        goto LABEL_30;
      }

      if (!result)
      {
        *(*(this + 194) + 176) = 0;
        goto LABEL_56;
      }
    }

    else
    {
      result = (*(*(*(v3 + 104) + 16) + 72))(*(this + 194), this, &v34) ^ 1;
    }

    if (result)
    {
LABEL_28:
      if (result != 1)
      {
        return result;
      }

      ERR_put_error(16, 0, 125, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake.cc", 297);
      v15 = v34;
LABEL_30:
      v16 = v3;
LABEL_38:
      bssl::ssl_send_alert(v16, 2, v15);
      return 1;
    }

    goto LABEL_56;
  }

  v5 = v4[17];
  if (v5)
  {
    v6 = *v5;
    v7 = *(*(this + 194) + 136);
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_24:
    if (!v6)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

  v6 = 0;
  v7 = *(*(this + 194) + 136);
  if (!v7)
  {
    goto LABEL_24;
  }

LABEL_4:
  if (v6 != *v7)
  {
LABEL_25:
    v14 = 240;
LABEL_37:
    ERR_put_error(16, 0, 273, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake.cc", v14);
    v16 = v3;
    v15 = 47;
    goto LABEL_38;
  }

LABEL_5:
  if (v5)
  {
    v8 = 0;
    while (v7 && v8 < *v7)
    {
      if (*v5 <= v8)
      {
        v11 = 0;
      }

      else
      {
        v11 = *(v5[1] + 8 * v8);
      }

      if (*v7 <= v8)
      {
        v9 = 0;
        v10 = *(v11 + 16);
        if (v10 != MEMORY[0x10])
        {
          goto LABEL_36;
        }
      }

      else
      {
        v9 = *(v7[1] + 8 * v8);
        v10 = *(v11 + 16);
        if (v10 != *(v9 + 16))
        {
          goto LABEL_36;
        }
      }

      ++v8;
      if (memcmp(*(v11 + 8), *(v9 + 8), v10))
      {
        goto LABEL_36;
      }
    }
  }

  else if (v7)
  {
    v17 = 0;
    v18 = *v7;
    while (v18 != v17)
    {
      v19 = *(v7[1] + 8 * v17);
      if (MEMORY[0x10] == *(v19 + 16))
      {
        ++v17;
        if (!memcmp(MEMORY[8], *(v19 + 8), MEMORY[0x10]))
        {
          continue;
        }
      }

LABEL_36:
      v14 = 253;
      goto LABEL_37;
    }
  }

  v20 = v4[32];
  if (v20)
  {
    v21 = atomic_load((v20 + 24));
    if (v21 != -1)
    {
      for (i = v21; i != -1; v21 = i)
      {
        atomic_compare_exchange_strong((v20 + 24), &i, v21 + 1);
        if (i == v21)
        {
          break;
        }
      }
    }
  }

  v23 = *(this + 194);
  v24 = *(v23 + 256);
  *(v23 + 256) = v20;
  if (v24)
  {
    CRYPTO_BUFFER_free(v24);
  }

  v25 = v4[31];
  if (v25)
  {
    v26 = atomic_load((v25 + 24));
    if (v26 != -1)
    {
      for (j = v26; j != -1; v26 = j)
      {
        atomic_compare_exchange_strong((v25 + 24), &j, v26 + 1);
        if (j == v26)
        {
          break;
        }
      }
    }
  }

  v28 = *(this + 194);
  v29 = *(v28 + 248);
  *(v28 + 248) = v25;
  if (v29)
  {
    CRYPTO_BUFFER_free(v29);
    v28 = *(this + 194);
  }

  result = 0;
  *(v28 + 176) = v4[22];
  return result;
}

uint64_t bssl::ssl_get_finished(const ssl_session_st **this, bssl::SSL_HANDSHAKE *a2)
{
  v63[6] = *MEMORY[0x277D85DE8];
  v3 = *this;
  if (!(*(*&(*this)->ssl_version + 24))(*this, &v56))
  {
    return 3;
  }

  if (v57 != 20)
  {
    bssl::ssl_send_alert(v3, 2, 10);
    ERR_put_error(16, 0, 223, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake.cc", 116);
    ERR_add_error_dataf("got type %d, wanted type %d", v9, v10, v11, v12, v13, v14, v15, v57);
    return 0;
  }

  v55 = 0;
  v4 = this[194];
  if (!v4)
  {
    v4 = *&(*this)->session_id[16];
  }

  result = bssl::SSLTranscript::GetFinishedMAC((this + 51), &v62, &v55, v4, (v3->verify_result & 0x100000000) == 0);
  if (result)
  {
    if ((v56 & 1) != 0 || (result = bssl::SSLTranscript::Update((this + 51), v60, v61), result))
    {
      v6 = v55;
      if (v59 != v55)
      {
LABEL_26:
        bssl::ssl_send_alert(v3, 2, 51);
        v38 = 142;
        v39 = 397;
LABEL_27:
        ERR_put_error(16, 0, v38, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake.cc", v39);
        return 0;
      }

      if (!v55)
      {
LABEL_31:
        v40 = *&v3->master_key[28];
        v41 = 435;
        if ((v3->verify_result & 0x100000000) == 0)
        {
          v41 = 448;
        }

        v42 = v40 + v41;
        if (*(v40 + v41 + 12) && v42 - 1 >= -*(v40 + v41 + 12))
        {
          __break(1u);
          return result;
        }

        *(v42 + 12) = 0;
        if (!v6)
        {
          goto LABEL_40;
        }

        v43 = &v62;
        if (v6 < 8 || (v41 + v40 - &v62) < 0x20)
        {
          v44 = (v40 + v41);
          goto LABEL_39;
        }

        if (v6 >= 0x20)
        {
          v46 = v6 & 0xFFFFFFFFFFFFFFE0;
          v47 = v63;
          v48 = (v41 + v40 + 16);
          v49 = v6 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v50 = *v47;
            *(v48 - 1) = *(v47 - 1);
            *v48 = v50;
            v47 += 2;
            v48 += 2;
            v49 -= 32;
          }

          while (v49);
          if (v6 == v46)
          {
            goto LABEL_40;
          }

          if ((v6 & 0x18) == 0)
          {
            v43 = (&v62 + v46);
            v44 = (v42 + v46);
            do
            {
LABEL_39:
              v45 = v43->i8[0];
              v43 = (v43 + 1);
              *v44++ = v45;
            }

            while (v43 != &v62.i8[v6]);
LABEL_40:
            *(v42 + 12) = v6;
            if (!(*(*&v3->ssl_version + 40))(v3))
            {
              (*(*&v3->ssl_version + 32))(v3);
              return 1;
            }

            bssl::ssl_send_alert(v3, 2, 10);
            v38 = 255;
            v39 = 417;
            goto LABEL_27;
          }
        }

        else
        {
          v46 = 0;
        }

        v44 = (v42 + (v6 & 0xFFFFFFFFFFFFFFF8));
        v43 = (&v62 + (v6 & 0xFFFFFFFFFFFFFFF8));
        v51 = (v62.i64 + v46);
        v52 = (v40 + v41 + v46);
        v53 = v46 - (v6 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v54 = *v51++;
          *v52++ = v54;
          v53 += 8;
        }

        while (v53);
        if (v6 == (v6 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      if (v55 < 8)
      {
        v7 = 0;
        v8 = 0;
LABEL_23:
        v32 = v55 - v7;
        v33 = &v62.i8[v7];
        v34 = &v58->i8[v7];
        do
        {
          v36 = *v34++;
          v35 = v36;
          v37 = *v33++;
          v8 |= v37 ^ v35;
          --v32;
        }

        while (v32);
LABEL_25:
        if (v8)
        {
          goto LABEL_26;
        }

        if (v55 >= 0xD)
        {
          v38 = 68;
          v39 = 404;
          goto LABEL_27;
        }

        goto LABEL_31;
      }

      if (v55 >= 0x20)
      {
        v7 = v55 & 0xFFFFFFFFFFFFFFE0;
        v16 = v58 + 1;
        v17 = v63;
        v18 = 0uLL;
        v19 = v55 & 0xFFFFFFFFFFFFFFE0;
        v20 = 0uLL;
        do
        {
          v18 = vorrq_s8(veorq_s8(v17[-1], v16[-1]), v18);
          v20 = vorrq_s8(veorq_s8(*v17, *v16), v20);
          v16 += 2;
          v17 += 2;
          v19 -= 32;
        }

        while (v19);
        v21 = vorrq_s8(v20, v18);
        *v21.i8 = vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL));
        v22 = v21.i64[0] | HIDWORD(v21.i64[0]) | ((v21.i64[0] | HIDWORD(v21.i64[0])) >> 16);
        v8 = v22 | BYTE1(v22);
        if (v55 == v7)
        {
          goto LABEL_25;
        }

        if ((v55 & 0x18) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v8 = 0;
        v7 = 0;
      }

      v23 = v7;
      v7 = v55 & 0xFFFFFFFFFFFFFFF8;
      v24 = v8;
      v25 = &v58->i8[v23];
      v26 = &v62.i8[v23];
      v27 = v23 - (v55 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v28 = *v25++;
        v29 = v28;
        v30 = *v26++;
        v24 = vorr_s8(veor_s8(v30, v29), v24);
        v27 += 8;
      }

      while (v27);
      v31 = *&v24 | HIDWORD(*&v24) | ((*&v24 | HIDWORD(*&v24)) >> 16);
      v8 = v31 | BYTE1(v31);
      if (v55 == v7)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }
  }

  return result;
}

uint64_t bssl::ssl_send_finished(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(this + 194);
  if (!v3)
  {
    v3 = *(v2 + 88);
  }

  v30 = 0;
  result = bssl::SSLTranscript::GetFinishedMAC((this + 408), __src, &v30, v3, *(v2 + 164) & 1);
  if (result)
  {
    v5 = v30;
    result = bssl::ssl_log_secret(v2, "CLIENT_RANDOM", &v3->key_arg[2], v3->master_key[38]);
    if (result)
    {
      v6 = *(v2 + 48);
      if (*(v2 + 164))
      {
        if (v5 <= 0xC)
        {
          v7 = (v6 + 448);
          if (!*(v6 + 460) || v6 + 447 < -*(v6 + 460))
          {
            v8 = (v6 + 460);
            *(v6 + 460) = 0;
            if (v5)
            {
              v9 = __src;
              if (v5 >= 8 && (v6 - __src + 448) >= 0x20)
              {
                v10 = v7 + (v5 & 8);
                v20 = __src;
                v9 = (__src + (v5 & 8));
                v21 = v5 & 8;
                do
                {
                  v22 = v20->i64[0];
                  v20 = (v20 + 8);
                  *v7++ = v22;
                  v21 -= 8;
                }

                while (v21);
                if (v5 == (v5 & 8))
                {
                  goto LABEL_23;
                }
              }

              else
              {
                v10 = (v6 + 448);
              }

              do
              {
                v11 = v9->i8[0];
                v9 = (v9 + 1);
                *v10++ = v11;
              }

              while (v9 != (__src + v5));
LABEL_23:
              *v8 = v5;
              goto LABEL_24;
            }

            goto LABEL_24;
          }

          goto LABEL_47;
        }
      }

      else if (v5 <= 0xC)
      {
        v12 = (v6 + 435);
        if (!*(v6 + 447) || v6 + 434 < -*(v6 + 447))
        {
          v8 = (v6 + 447);
          *(v6 + 447) = 0;
          if (v5)
          {
            v13 = __src;
            if (v5 >= 8 && (v6 - __src + 435) >= 0x20)
            {
              v14 = v12 + (v5 & 8);
              v23 = __src;
              v13 = (__src + (v5 & 8));
              v24 = v5 & 8;
              do
              {
                v25 = v23->i64[0];
                v23 = (v23 + 8);
                *v12++ = v25;
                v24 -= 8;
              }

              while (v24);
              if (v5 == (v5 & 8))
              {
                goto LABEL_23;
              }
            }

            else
            {
              v14 = (v6 + 435);
            }

            do
            {
              v15 = v13->i8[0];
              v13 = (v13 + 1);
              *v14++ = v15;
            }

            while (v13 != (__src + v5));
            goto LABEL_23;
          }

LABEL_24:
          *v28 = 0u;
          v29 = 0u;
          v27 = 0u;
          if (!(*(*v2 + 88))(v2, &v27, v26, 20))
          {
            goto LABEL_31;
          }

          __dst = 0;
          if (!CBB_add_space(v26, &__dst, v5))
          {
            goto LABEL_31;
          }

          if (v5)
          {
            memcpy(__dst, __src, v5);
          }

          bssl::ssl_add_message_cbb(v2, &v27);
          if (v16)
          {
            result = 1;
          }

          else
          {
LABEL_31:
            ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake.cc", 456);
            result = 0;
          }

          if (!BYTE8(v27) && (BYTE8(v29) & 1) != 0 && v28[0])
          {
            v17 = result;
            v19 = v28[0] - 8;
            v18 = *(v28[0] - 1);
            if (v18 != -8)
            {
              bzero(v28[0] - 8, v18 + 8);
            }

            free(v19);
            return v17;
          }

          return result;
        }

LABEL_47:
        __break(1u);
      }

      ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake.cc", 447);
      return 0;
    }
  }

  return result;
}

void bssl::ssl_send_tls12_certificate(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  if ((*(**this + 88))(*this, &v16, v15, 11) && CBB_add_u24_length_prefixed(v15, v14))
  {
    v3 = *(this + 192);
    if (v3 && (v4 = *(v3 + 48)) != 0 && (v5 = *v4) != 0)
    {
      v6 = 0;
      while (1)
      {
        v7 = v5 <= v6 ? 0 : *(v4[1] + 8 * v6);
        if (!CBB_add_u24_length_prefixed(v14, v13))
        {
          break;
        }

        v8 = *(v7 + 8);
        v9 = *(v7 + 16);
        v19 = 0;
        if (!CBB_add_space(v13, &v19, v9))
        {
          break;
        }

        if (v9)
        {
          memcpy(v19, v8, v9);
        }

        ++v6;
        v5 = *v4;
        if (v6 >= *v4)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      bssl::ssl_add_message_cbb(*this, &v16);
    }
  }

  if (!BYTE8(v16) && (BYTE8(v18) & 1) != 0 && v17)
  {
    v11 = *(v17 - 8);
    v10 = (v17 - 8);
    v12 = v11 + 8;
    if (v11 != -8)
    {
      bzero(v10, v12);
    }

    free(v10);
  }
}

uint64_t bssl::ssl_run_handshake(uint64_t this, bssl::SSL_HANDSHAKE *a2, BOOL *a3)
{
  v3 = this;
  LODWORD(this) = *(this + 16);
  if (!this)
  {
LABEL_33:
    ERR_restore_state(*(v3 + 384));
    return 0xFFFFFFFFLL;
  }

  v5 = *v3;
  while (2)
  {
    if (**v5)
    {
      this = (*(*v5 + 136))(v5, a2, a3);
      if (this < 1)
      {
        return this;
      }

      LODWORD(this) = *(v3 + 16);
    }

    switch(this)
    {
      case 0:
        goto LABEL_33;
      case 2:
      case 3:
      case 15:
        if (!*(v5 + 152))
        {
          v19[0] = 50;
          v18 = 0;
          if (this == 15)
          {
            v6 = bssl::ssl_open_change_cipher_spec(v5, &v18, v19);
            if (v6 != 4)
            {
              goto LABEL_18;
            }
          }

          else
          {
            v6 = bssl::ssl_open_handshake(v5, &v18, v19);
            if (v6 != 4)
            {
              goto LABEL_18;
            }
          }

          if (*(v3 + 16) == 2 && (ERR_peek_error() & 0xFF000FFF) == 0x10000410)
          {
            ERR_put_error(16, 0, 154, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake.cc", 561);
          }

LABEL_18:
          v17 = 0;
          this = bssl::ssl_handle_open_record(v5, &v17, v6, v18, v19[0]);
          if (this <= 0)
          {
            return this;
          }

          if (v17)
          {
            goto LABEL_4;
          }

          v7 = *(v5 + 48);
          if (*(v7 + 90))
          {
LABEL_26:
            this = (*(v5 + 40))(v3, a2, a3);
            *(v3 + 16) = this;
            if (this == 4)
            {
              goto LABEL_3;
            }
          }

          else
          {
            v8 = *(v7 + 80);
            if (v8 != (v7 + 94))
            {
              free(v8);
            }

            *(v7 + 86) = 0;
            *(v7 + 80) = 0;
            this = (*(v5 + 40))(v3);
            *(v3 + 16) = this;
            if (this == 4)
            {
LABEL_3:
              (*(*v5 + 120))(v5);
LABEL_4:
              LODWORD(this) = *(v3 + 16);
              goto LABEL_5;
            }
          }

LABEL_27:
          if (this == 1)
          {
            *a2 = 0;
            return this;
          }

          if (!this)
          {
            v11 = ERR_save_state();
            v12 = *(v3 + 384);
            *(v3 + 384) = v11;
            if (v12)
            {
              if (*(v12 + 8))
              {
                v13 = 0;
                v14 = 0;
                do
                {
                  v15 = *v12 + v13;
                  free(*(v15 + 8));
                  *v15 = 0;
                  *(v15 + 8) = 0;
                  *(v15 + 16) = 0;
                  ++v14;
                  v13 += 24;
                }

                while (v14 < *(v12 + 8));
              }

              free(*v12);
              free(v12);
            }

            return 0xFFFFFFFFLL;
          }

LABEL_5:
          if (!this)
          {
            goto LABEL_33;
          }

          continue;
        }

        v9 = *(v5 + 48);
        v10 = 2;
LABEL_51:
        *(v9 + 196) = v10;
        v16 = 1;
LABEL_52:
        *(v3 + 16) = v16;
        return 0xFFFFFFFFLL;
      case 4:
        this = (*(*v5 + 136))(v5, a2, a3);
        if (this > 0)
        {
          goto LABEL_26;
        }

        return this;
      case 5:
        v9 = *(v5 + 48);
        v10 = 12;
        goto LABEL_51;
      case 6:
        v9 = *(v5 + 48);
        v10 = 17;
        goto LABEL_51;
      case 7:
        this = (*(*v5 + 136))(v5, a2, a3);
        if (this < 1)
        {
          return this;
        }

        *(*(v5 + 48) + 196) = 18;
        v16 = 7;
        goto LABEL_52;
      case 8:
        v9 = *(v5 + 48);
        v10 = 4;
        goto LABEL_51;
      case 9:
        v9 = *(v5 + 48);
        v10 = 13;
        goto LABEL_51;
      case 10:
        v9 = *(v5 + 48);
        v10 = 11;
        goto LABEL_51;
      case 11:
        v9 = *(v5 + 48);
        v10 = 14;
        goto LABEL_51;
      case 12:
        this = 1;
        *a2 = 1;
        *(v3 + 16) = 1;
        return this;
      case 13:
        *(*(v5 + 48) + 196) = 15;
        return 0xFFFFFFFFLL;
      case 14:
        if ((*(*(*(v5 + 48) + 280) + 1617) & 0x10) != 0)
        {
          this = 1;
          *a2 = 1;
          return this;
        }

        *(v3 + 16) = 1;
        this = (*(v5 + 40))(v3, a2, a3);
        *(v3 + 16) = this;
        if (this == 4)
        {
          goto LABEL_3;
        }

        goto LABEL_27;
      case 16:
        v9 = *(v5 + 48);
        v10 = 16;
        goto LABEL_51;
      case 17:
        *(*(v5 + 48) + 196) = 20;
        return 0xFFFFFFFFLL;
      default:
        goto LABEL_26;
    }
  }
}

uint64_t bssl::ssl_write_client_hello_without_extensions(uint64_t *a1, uint64_t *a2, int a3, char a4)
{
  v8 = *a1;
  v9 = *(a1 + 810);
  __dst[0] = 0;
  result = CBB_add_space(a2, __dst, 2);
  if (!result)
  {
    return result;
  }

  *(__dst[0] + 1) = v9;
  *__dst[0] = HIBYTE(v9);
  if (a3 == 1)
  {
    v11 = a1 + 63;
    __dst[0] = 0;
    result = CBB_add_space(a2, __dst, 32);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v11 = (*(v8 + 48) + 48);
    __dst[0] = 0;
    result = CBB_add_space(a2, __dst, 32);
    if (!result)
    {
      return result;
    }
  }

  v12 = __dst[0];
  v13 = v11[1];
  *__dst[0] = *v11;
  v12[1] = v13;
  result = CBB_add_u8_length_prefixed(a2, v45);
  if (!result)
  {
    return result;
  }

  if ((*(*(v8 + 48) + 220) & 0x10) == 0 && (a4 & 1) == 0)
  {
    v14 = *(a1 + 1661);
    __dst[0] = 0;
    result = CBB_add_space(v45, __dst, v14);
    if (!result)
    {
      return result;
    }

    if (v14)
    {
      memcpy(__dst[0], a1 + 1629, v14);
    }
  }

  if (**v8)
  {
    result = CBB_add_u8_length_prefixed(a2, v45);
    if (!result)
    {
      return result;
    }

    v15 = a1[69];
    v16 = a1[70];
    __dst[0] = 0;
    result = CBB_add_space(v45, __dst, v16);
    if (!result)
    {
      return result;
    }

    if (v16)
    {
      memcpy(__dst[0], v15, v16);
    }
  }

  v17 = *a1;
  v18 = *(a1[1] + 64) == 0;
  if (!CBB_add_u16_length_prefixed(a2, __dst))
  {
    return 0;
  }

  if ((*(*(v17 + 104) + 792) & 0x20) != 0)
  {
    v19 = *(a1 + 1662);
    v47 = 0;
    if (!CBB_add_space(__dst, &v47, 2))
    {
      return 0;
    }

    v47[1] = v19 & 0xF0 | 0xA;
    *v47 = v19 & 0xF0 | 0xA;
  }

  if (*(a1 + 15) < 0x304u)
  {
    goto LABEL_62;
  }

  v20 = *(v17 + 8);
  v21 = *(v20 + 264);
  if ((~*(v20 + 269) & 0x1800) != 0)
  {
    v22 = &bssl::ssl_write_client_cipher_list(bssl::SSL_HANDSHAKE const*,cbb_st *,bssl::ssl_client_hello_type_t)::kCiphersNoAESHardware;
  }

  else
  {
    v22 = &bssl::ssl_write_client_cipher_list(bssl::SSL_HANDSHAKE const*,cbb_st *,bssl::ssl_client_hello_type_t)::kCiphersAESHardware;
  }

  if (v21 == 3)
  {
    v23 = &bssl::ssl_write_client_cipher_list(bssl::SSL_HANDSHAKE const*,cbb_st *,bssl::ssl_client_hello_type_t)::kCiphersCNSA;
  }

  else
  {
    v23 = v22;
  }

  v24 = *v23;
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      if (v24 != 4866)
      {
        goto LABEL_39;
      }
    }

    else if (v21 != 3)
    {
      goto LABEL_39;
    }
  }

  else if (v21 && (v21 != 1 || (v24 - 4865) >= 2u))
  {
    goto LABEL_39;
  }

  if (!CBB_add_u16(__dst, v24))
  {
    return 0;
  }

  v20 = *(v17 + 8);
LABEL_39:
  v25 = v23[1];
  v26 = *(v20 + 264);
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      if (v25 != 4866)
      {
        v27 = v23[2];
        goto LABEL_59;
      }
    }

    else if (v26 != 3)
    {
      goto LABEL_50;
    }
  }

  else if (v26)
  {
    if (v26 != 1)
    {
      goto LABEL_50;
    }

    if ((v25 - 4865) >= 2u)
    {
      LOWORD(v27) = v23[2];
LABEL_53:
      if ((v27 - 4865) >= 2u)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (CBB_add_u16(__dst, v27))
      {
        goto LABEL_62;
      }

      return 0;
    }
  }

  if (!CBB_add_u16(__dst, v25))
  {
    return 0;
  }

  v26 = *(*(v17 + 8) + 264);
LABEL_50:
  v27 = v23[2];
  if (v26 > 1)
  {
    if (v26 != 2)
    {
      if (v26 != 3)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

LABEL_59:
    v28 = v27 == 4866;
    LOWORD(v27) = 4866;
    if (!v28)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  if (!v26)
  {
    goto LABEL_61;
  }

  if (v26 == 1)
  {
    goto LABEL_53;
  }

LABEL_62:
  if (a3 == 1 || *(a1 + 14) > 0x303u)
  {
    goto LABEL_96;
  }

  v29 = *(v17 + 8);
  if (!v29)
  {
    goto LABEL_94;
  }

  v30 = *(v29 + 24);
  if (!v30)
  {
    v30 = *(*(v17 + 104) + 240);
  }

  v31 = *v30;
  if (!*v30 || (v32 = *v31) == 0)
  {
LABEL_94:
    if (*(a1 + 15) > 0x303u)
    {
      goto LABEL_96;
    }

    ERR_put_error(16, 0, 175, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc", 166);
    return 0;
  }

  v33 = 0;
  v34 = 0;
  v35 = 4 * v18;
  v36 = 8 * v18;
  v37 = v32 - 1;
  do
  {
    while (1)
    {
      if (*v31 <= v34)
      {
        v38 = 0;
        v39 = MEMORY[0x14];
        if ((MEMORY[0x14] & v35) != 0)
        {
          break;
        }
      }

      else
      {
        v38 = *(v31[1] + 8 * v34);
        v39 = *(v38 + 20);
        if ((v39 & v35) != 0)
        {
          break;
        }
      }

      v40 = *(v38 + 24);
      if ((v40 & v36) != 0)
      {
        break;
      }

      if (v39 == 8)
      {
        if (*(a1 + 15) >= 0x304u)
        {
          v41 = 772;
          goto LABEL_70;
        }

        break;
      }

      if (v40 == 16)
      {
        v42 = 772;
      }

      else if (*(v38 + 36) == 1)
      {
        v42 = 768;
      }

      else
      {
        v42 = 771;
      }

      if (v42 > *(a1 + 15))
      {
        break;
      }

      if (v40 == 16)
      {
        v41 = 772;
      }

      else
      {
        v41 = 771;
      }

LABEL_70:
      if (*(a1 + 14) > v41)
      {
        break;
      }

      v44 = v37;
      if (!CBB_add_u16(__dst, *(v38 + 16)))
      {
        return 0;
      }

      v33 = 1;
      v37 = v44;
      v28 = v44 == v34++;
      if (v28)
      {
        goto LABEL_96;
      }
    }

    ++v34;
  }

  while (v32 != v34);
  if ((v33 & 1) == 0)
  {
    goto LABEL_94;
  }

LABEL_96:
  if ((*(v17 + 133) & 4) != 0 && !CBB_add_u16(__dst, 22016))
  {
    return 0;
  }

  result = CBB_flush(a2);
  if (result)
  {
    __dst[0] = 0;
    result = CBB_add_space(a2, __dst, 1);
    if (result)
    {
      *__dst[0] = 1;
      __dst[0] = 0;
      v43 = CBB_add_space(a2, __dst, 1);
      result = v43 != 0;
      if (v43)
      {
        *__dst[0] = 0;
      }
    }
  }

  return result;
}

void bssl::ssl_add_client_hello(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  v3 = *this;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  v4 = *(this + 197) != 0;
  v22 = 0;
  v20 = 0;
  v21 = 0;
  if ((*(*v3 + 88))(v3, &v28, &v23, 1))
  {
    v5 = (2 * v4);
    if (bssl::ssl_write_client_hello_without_extensions(this, &v23, v5, 0))
    {
      v6 = v24 ? *(v25 + 8) - (v26 + v27) : v26;
      if (bssl::ssl_add_clienthello_tlsext(this, &v23, 0, &v22, v5, v6) && (*(*v3 + 96))(v3, &v28, &v20) && (v22 != 1 || bssl::tls13_write_psk_binder(this, this + 408, v20, v21, 0)))
      {
        v7 = *(*v3 + 104);
        v18 = v20;
        v19 = v21;
        v20 = 0;
        v21 = 0;
        v7(v3, &v18);
        if (v19 && v19 - 1 >= -v18)
        {
          goto LABEL_31;
        }

        if (v18)
        {
          v9 = (v18 - 8);
          v8 = *(v18 - 8);
          if (v8 != -8)
          {
            bzero(v9, v8 + 8);
          }

          free(v9);
        }

        v18 = 0;
        v19 = 0;
        v11 = v20;
        v10 = v21;
        if (!v21)
        {
          goto LABEL_20;
        }

LABEL_19:
        if (v10 - 1 < -v11)
        {
          goto LABEL_20;
        }

LABEL_31:
        __break(1u);
        return;
      }
    }
  }

  v11 = v20;
  v10 = v21;
  if (v21)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (v11)
  {
    v13 = *(v11 - 8);
    v12 = (v11 - 8);
    v14 = v13 + 8;
    if (v13 != -8)
    {
      bzero(v12, v14);
    }

    free(v12);
  }

  if (!BYTE8(v28) && (BYTE8(v30) & 1) != 0 && v29)
  {
    v16 = *(v29 - 8);
    v15 = (v29 - 8);
    v17 = v16 + 8;
    if (v16 != -8)
    {
      bzero(v15, v17);
    }

    free(v15);
  }
}

void bssl::ssl_done_writing_client_hello(void *a1)
{
  v2 = a1[71];
  v3 = a1[72];
  if (v3 && v3 - 1 >= -v2)
  {
    goto LABEL_26;
  }

  v4 = a1 + 71;
  if (v2)
  {
    v6 = *(v2 - 8);
    v5 = (v2 - 8);
    v7 = v6 + 8;
    if (v6 != -8)
    {
      bzero(v5, v7);
    }

    free(v5);
  }

  *v4 = 0;
  a1[72] = 0;
  v8 = a1[67];
  v9 = a1[68];
  if (v9)
  {
    if (v9 - 1 >= -v8)
    {
      goto LABEL_26;
    }
  }

  if (v8)
  {
    v11 = *(v8 - 8);
    v10 = (v8 - 8);
    v12 = v11 + 8;
    if (v11 != -8)
    {
      bzero(v10, v12);
    }

    free(v10);
  }

  a1[67] = 0;
  a1[68] = 0;
  v13 = a1[77];
  v14 = a1[78];
  if (v14)
  {
    if (v14 - 1 >= -v13)
    {
      goto LABEL_26;
    }
  }

  if (v13)
  {
    v16 = *(v13 - 8);
    v15 = (v13 - 8);
    v17 = v16 + 8;
    if (v16 != -8)
    {
      bzero(v15, v17);
    }

    free(v15);
  }

  a1[77] = 0;
  a1[78] = 0;
  v18 = a1[210];
  v19 = a1[211];
  if (v19 && v19 - 1 >= -v18)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    v20 = a1 + 210;
    if (v18)
    {
      v22 = *(v18 - 8);
      v21 = (v18 - 8);
      v23 = v22 + 8;
      if (v22 != -8)
      {
        bzero(v21, v23);
      }

      free(v21);
    }

    *v20 = 0;
    v20[1] = 0;
  }
}

uint64_t bssl::ssl_parse_server_hello(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*(a3 + 1) == 2)
  {
    *a1 = *(a3 + 24);
    v4 = *(a3 + 16);
    if (v4 < 2 || (v5 = *(a3 + 8), *(a1 + 16) = bswap32(*v5) >> 16, v4 - 2 < 0x20) || (*(a1 + 24) = v5 + 1, *(a1 + 32) = 32, v4 == 34) || (v6 = v4 - 35, v7 = *(v5 + 34), v10 = v6 >= v7, v8 = v6 - v7, !v10) || ((v9 = v5 + 35, *(a1 + 40) = v9, *(a1 + 48) = v7, v7 <= 0x20) ? (v10 = v8 >= 2) : (v10 = 0), !v10 || (v11 = &v9[v7], *(a1 + 56) = bswap32(*v11) >> 16, v8 == 2)))
    {
      v12 = 553;
LABEL_14:
      ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc", v12);
      result = 0;
      *a2 = 50;
      return result;
    }

    *(a1 + 58) = v11[2];
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    if (v8 != 3)
    {
      if (v8 == 4 || (v14 = v8 - 5, v15 = __rev16(*(v11 + 3)), v14 < v15) || (*(a1 + 64) = v11 + 5, *(a1 + 72) = v15, v14 != v15))
      {
        v12 = 563;
        goto LABEL_14;
      }
    }

    return 1;
  }

  else
  {
    ERR_put_error(16, 0, 223, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc", 541);
    result = 0;
    *a2 = 10;
  }

  return result;
}

uint64_t bssl::ssl_client_handshake(char ***this, bssl::SSL_HANDSHAKE *a2)
{
  v3 = this + 1629;
  v458 = (this + 193);
  v456 = this + 190;
  v477 = *MEMORY[0x277D85DE8];
  v457 = this + 69;
  v455 = this + 1660;
  v454 = this + 1628;
  v453 = this + 1570;
  v4 = BCM_rand_bytes::kZeroAdditionalData;
  while (2)
  {
    v5 = *(this + 5);
    switch(v5)
    {
      case 0:
        v6 = *this;
        v7 = (*this)[12];
        if (v7 || (v7 = *(v6[13] + 48)) != 0)
        {
          (v7)(*this, 16, 1);
        }

        *(v6[6] + 110) &= ~0x20u;
        if (!bssl::ssl_get_version_range(this, this + 14, this + 15))
        {
          goto LABEL_857;
        }

        v462[0] = 0;
        bssl::ssl_select_ech_config(this, __src, 65, v462);
        if (!v8)
        {
          goto LABEL_857;
        }

        v9 = *(this + 15);
        v10 = v9 >= 0x303 ? 771 : *(this + 15);
        v11 = v9 <= 0x302 ? -257 : -259;
        v12 = ***this ? v11 : v10;
        *(this + 810) = v12;
        if (!bssl::ssl_setup_pake_shares(this, a2))
        {
          goto LABEL_857;
        }

        v14 = v6[11];
        if (!v14)
        {
          goto LABEL_648;
        }

        if ((v14[408] & 4) != 0)
        {
          v18 = 0;
          goto LABEL_609;
        }

        v15 = *(v14 + 2);
        if (v15 > 0xFEFB)
        {
          if (v15 != 65276)
          {
LABEL_520:
            if (!*(v14 + 30))
            {
LABEL_26:
              v18 = v14[91] != 0;
              goto LABEL_609;
            }

            goto LABEL_521;
          }

          v17 = *(v14 + 30) == 0;
        }

        else
        {
          if (v15 - 769 >= 4)
          {
            goto LABEL_520;
          }

          v16 = *(v14 + 30);
          v17 = v16 == 0;
          if (v15 < 0x304)
          {
            if (!v16)
            {
              goto LABEL_26;
            }

LABEL_521:
            v18 = 2;
            goto LABEL_609;
          }
        }

        if (v17)
        {
          v18 = 0;
        }

        else
        {
          v18 = 3;
        }

LABEL_609:
        if ((v14[408] & 0x10) != 0)
        {
          goto LABEL_638;
        }

        v300 = *(v14 + 2);
        v301 = 6;
        if (***this)
        {
          v301 = 4;
        }

        v302 = &bssl::kTLSVersions;
        if (***this)
        {
          v302 = &bssl::kDTLSVersions;
        }

        do
        {
          v304 = *v302++;
          v303 = v304;
          v305 = v304 == v300 || v301 == 0;
          v301 -= 2;
        }

        while (!v305);
        if (v303 != v300)
        {
          goto LABEL_638;
        }

        if (*(v14 + 2) > 0xFEFBu)
        {
          switch(v300)
          {
            case 0xFEFCu:
              v300 = 772;
              break;
            case 0xFEFDu:
              v300 = 771;
              break;
            case 0xFEFFu:
              v300 = 770;
              break;
            default:
              goto LABEL_638;
          }
        }

        else if (v300 - 769 >= 4)
        {
          goto LABEL_638;
        }

        if (*(this + 14) <= v300 && v300 <= *(this + 15) && (!this[197] || bssl::ssl_session_protocol_version(v14, a2) >= 0x304) && v18 && (v18 != 2 || (*(v6 + 129) & 0x40) == 0) && !this[212] && bssl::ssl_session_is_time_valid(v6, v6[11], v13) && (v6[19] != 0) != ((v6[11][408] & 0x20) == 0) && (*(v6[6] + 110) & 0x10) == 0)
        {
          goto LABEL_649;
        }

LABEL_638:
        v306 = v6[11];
        if (v306)
        {
          v6[11] = 0;
          v307 = atomic_load(v306);
          if (v307 != -1)
          {
            while (1)
            {
              if (!v307)
              {
                goto LABEL_937;
              }

              v308 = v307;
              atomic_compare_exchange_strong(&v306->ssl_version, &v308, v307 - 1);
              if (v308 == v307)
              {
                break;
              }

              v307 = v308;
              if (v308 == -1)
              {
                goto LABEL_648;
              }
            }

            if (v307 == 1)
            {
              ssl_session_st::~ssl_session_st(v306);
              tlsext_tick_lifetime_hint = v306[-1].tlsext_tick_lifetime_hint;
              p_tlsext_tick_lifetime_hint = &v306[-1].tlsext_tick_lifetime_hint;
              v311 = tlsext_tick_lifetime_hint + 8;
              if (tlsext_tick_lifetime_hint != -8)
              {
                bzero(p_tlsext_tick_lifetime_hint, v311);
              }

              free(p_tlsext_tick_lifetime_hint);
            }
          }
        }

LABEL_648:
        v18 = 0;
LABEL_649:
        BCM_rand_bytes_with_additional_data(v6[6] + 48, 0x20uLL, v4);
        if (this[197])
        {
          BCM_rand_bytes_with_additional_data(this + 504, 0x20uLL, v4);
        }

        if (*(this + 15) < 0x304u || v6[19])
        {
          v313 = 0;
          if (v18 == 2)
          {
            goto LABEL_667;
          }
        }

        else
        {
          v313 = **v6 == 0;
          if (v18 == 2)
          {
            goto LABEL_667;
          }
        }

        if (v18 != 1)
        {
          if (v313)
          {
LABEL_667:
            v318 = *(this + 1661);
            if (v318 >= 0x21 && 32 - v318 <= v455)
            {
              goto LABEL_936;
            }

            *(this + 1661) = 32;
            BCM_rand_bytes_with_additional_data(v3, 0x20uLL, v4);
          }

LABEL_670:
          v319 = *this;
          if ((*(*this + 164) & 4) == 0)
          {
            goto LABEL_671;
          }

          goto LABEL_804;
        }

        v314 = v6[11];
        v315 = v314 + 59;
        if (v3 == v314 + 59)
        {
          goto LABEL_670;
        }

        v316 = v314[91];
        if (v316 > 0x20)
        {
          goto LABEL_937;
        }

        if (*(this + 1661) && v454 >= -*(this + 1661))
        {
          goto LABEL_936;
        }

        *(this + 1661) = 0;
        if (!v316)
        {
          goto LABEL_670;
        }

        if (v316 < 4 || (v453 - v314) < 0x10)
        {
          v321 = v3;
          v322 = v314 + 59;
          goto LABEL_801;
        }

        if (v316 >= 0x10)
        {
          v317 = v316 & 0x30;
          *v3 = *v315;
          if (v317 != 16)
          {
            *(v3 + 1) = *(v314 + 75);
          }

          if (v317 == v316)
          {
            goto LABEL_803;
          }

          if ((v316 & 0xC) == 0)
          {
            v322 = v315 + v317;
            v321 = &v3[v317];
LABEL_801:
            v396 = v315 + v316;
            do
            {
              v397 = *v322++;
              *v321++ = v397;
            }

            while (v322 != v396);
            goto LABEL_803;
          }
        }

        else
        {
          v317 = 0;
        }

        v321 = &v3[v316 & 0x3C];
        v322 = v315 + (v316 & 0x3C);
        v324 = &v314[v317 + 59];
        v325 = &v3[v317];
        v326 = v317 - (v316 & 0x3C);
        do
        {
          v327 = *v324++;
          *v325 = v327;
          v325 += 4;
          v326 += 4;
        }

        while (v326);
        if ((v316 & 0x3C) != v316)
        {
          goto LABEL_801;
        }

LABEL_803:
        *(this + 1661) = v316;
        v319 = *this;
        if ((*(*this + 164) & 4) == 0)
        {
LABEL_671:
          v320 = 1;
          goto LABEL_807;
        }

LABEL_804:
        if (*(this + 15) < 0x304u || (**v319 & 1) != 0)
        {
          v320 = 3;
          goto LABEL_807;
        }

        v400 = v319[11];
        if (!v400)
        {
          v320 = 5;
          goto LABEL_807;
        }

        if (bssl::ssl_session_protocol_version(v400, v312) < 0x304 || (v401 = v319[11], !*(v401 + 89)))
        {
          v320 = 7;
          goto LABEL_807;
        }

        v402 = *(v401 + 46);
        if (!v402)
        {
          goto LABEL_818;
        }

        if (!bssl::ssl_is_alpn_protocol_allowed(this, *(v401 + 45), v402))
        {
          v320 = 9;
          goto LABEL_807;
        }

        v403 = v319[11];
        if ((v403[408] & 0x40) != 0)
        {
          ses[0] = 0;
          ses[1] = 0;
          if (!bssl::ssl_get_local_application_settings(this, ses, *(v403 + 45), *(v403 + 46)) || (v417 = *(v403 + 48), ses[1] != v417) || memcmp(ses[0], *(v403 + 47), v417))
          {
            v320 = 14;
LABEL_807:
            *(v6[6] + 64) = v320;
            bssl::ssl_setup_key_shares(this, 0);
            if (!v398)
            {
              goto LABEL_857;
            }

            goto LABEL_808;
          }
        }

LABEL_818:
        *(this + 404) |= 0x800u;
        bssl::ssl_setup_key_shares(this, 0);
        if (!v404)
        {
          goto LABEL_857;
        }

LABEL_808:
        if (bssl::ssl_setup_extension_permutation(this, a2))
        {
          if (bssl::ssl_encrypt_client_hello(this, __src, v462[0]))
          {
            bssl::ssl_add_client_hello(this, a2);
            if (v399)
            {
              *(this + 5) = 1;
              finished = 4;
              goto LABEL_858;
            }
          }
        }

        goto LABEL_857;
      case 1:
        if ((*(this + 1617) & 8) != 0)
        {
          v92 = *this;
          v93 = (*this)[11];
          if (v93)
          {
            v94 = atomic_load(v93);
            if (v94 != -1)
            {
              for (i = v94; i != -1; v94 = i)
              {
                atomic_compare_exchange_strong(v93, &i, v94 + 1);
                if (i == v94)
                {
                  break;
                }
              }
            }
          }

          v96 = this[195];
          this[195] = v93;
          if (v96)
          {
            v97 = atomic_load(v96);
            if (v97 != -1)
            {
              while (1)
              {
                if (!v97)
                {
                  goto LABEL_937;
                }

                v98 = v97;
                atomic_compare_exchange_strong(&v96->ssl_version, &v98, v97 - 1);
                if (v98 == v97)
                {
                  break;
                }

                v97 = v98;
                if (v98 == -1)
                {
                  goto LABEL_291;
                }
              }

              if (v97 == 1)
              {
                ssl_session_st::~ssl_session_st(v96);
                v170 = v96[-1].tlsext_tick_lifetime_hint;
                v169 = &v96[-1].tlsext_tick_lifetime_hint;
                v171 = v170 + 8;
                if (v170 != -8)
                {
                  bzero(v169, v171);
                }

                free(v169);
              }
            }

LABEL_291:
            v93 = this[195];
          }

          *(v92[6] + 104) = *(v93 + 2);
          *(this + 404) |= 0x4000u;
          v20 = 2;
        }

        else
        {
          v20 = 3;
        }

        goto LABEL_410;
      case 2:
        v37 = *this;
        if ((*this)[13][520] != 1)
        {
          goto LABEL_272;
        }

        LOBYTE(__src[0]) = 46;
        v38 = this[1][6];
        if (!v38 || (v39 = (v38)(v37, __src), v39 == 1))
        {
          v25 = 125;
          v26 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake.cc";
          v27 = 340;
          goto LABEL_95;
        }

        if (v39 == 2)
        {
          finished = 16;
          *(this + 5) = 2;
          goto LABEL_858;
        }

LABEL_272:
        if (!(*(*v37 + 14))(v37, a2) || !bssl::tls13_init_early_key_schedule(this, this[195], v158))
        {
          goto LABEL_857;
        }

        v159 = *this;
        if ((*(*this + 164) & 1) != 0 || !this[197])
        {
          v160 = 51;
        }

        else
        {
          v160 = 57;
        }

        if (!bssl::derive_secret_with_transcript(this, this + 81, &this[v160], "c e traffic", 0xBuLL) || !bssl::ssl_log_secret(v159, "CLIENT_EARLY_TRAFFIC_SECRET", this + 81, *(this + 129)) || !bssl::tls13_set_traffic_key(*this, 1, 1u, this[195], (this + 81), *(this + 129)))
        {
          goto LABEL_857;
        }

        *(this + 404) |= 0x2400u;
        finished = 12;
        *(this + 5) = 3;
        goto LABEL_858;
      case 3:
        v43 = *this;
        if (!(*(**this + 3))(*this, ses))
        {
          finished = 2;
          goto LABEL_858;
        }

        if (!**v43 || (*(this + 1619) & 2) != 0 || BYTE1(ses[0]) != 3)
        {
          LOWORD(__src[1]) = 0;
          v474 = 0;
          v475 = 0;
          LOBYTE(v459) = 50;
          if (!bssl::ssl_parse_server_hello(__src, &v459, ses))
          {
            goto LABEL_221;
          }

          v121 = ***this;
          if (v121)
          {
            v122 = 65277;
          }

          else
          {
            v122 = 771;
          }

          v123 = LOWORD(__src[1]);
          if (v122 == LOWORD(__src[1]))
          {
            LODWORD(v462[0]) = 65579;
            v462[1] = 0;
            *&v463 = 0;
            *__dst = v476[0];
            v466[0] = v462;
            if (!bssl::ssl_parse_extensions(__dst, &v459, v466, 1, 1))
            {
              goto LABEL_221;
            }

            if (BYTE3(v462[0]))
            {
              if (v463 < 2 || (v124 = v462[1], v462[1] = v462[1] + 2, *&v463 = v463 - 2, v463))
              {
                LOBYTE(v459) = 50;
LABEL_221:
                v87 = v459;
                v88 = v43;
                goto LABEL_414;
              }

              v123 = __rev16(*v124);
            }

            else
            {
              v123 = LOWORD(__src[1]);
            }

            v121 = ***this;
          }

          v260 = (v121 & 1) == 0;
          v261 = 6;
          if (!v260)
          {
            v261 = 4;
          }

          v262 = &bssl::kTLSVersions;
          if (!v260)
          {
            v262 = &bssl::kDTLSVersions;
          }

          do
          {
            v264 = *v262++;
            v263 = v264;
            v265 = v264 == v123 || v261 == 0;
            v261 -= 2;
          }

          while (!v265);
          if (v263 != v123)
          {
            goto LABEL_517;
          }

          if (v123 > 65275)
          {
            switch(v123)
            {
              case 65276:
                v266 = 772;
                break;
              case 65277:
                v266 = 771;
                break;
              case 65279:
                v266 = 770;
                break;
              default:
                goto LABEL_517;
            }
          }

          else
          {
            v266 = v123;
            if ((v123 - 769) >= 4)
            {
              goto LABEL_517;
            }
          }

          if (*(this + 14) > v266 || v266 > *(this + 15))
          {
LABEL_517:
            v269 = 240;
            v270 = 597;
            goto LABEL_518;
          }

          v267 = *(v43 + 6);
          if ((*(v267 + 220) & 0x10) != 0)
          {
            if (v123 == *(v267 + 208))
            {
              v268 = *(this + 404);
              goto LABEL_586;
            }

            v269 = 246;
            v270 = 611;
          }

          else
          {
            *(v267 + 208) = v123;
            v268 = this[202] & 0xFFFFBFFF;
            *(this + 404) = v268;
            v267 = *(v43 + 6);
LABEL_586:
            v297 = *(v267 + 208);
            if ((v268 & 0x800) != 0 && v297 != *(this[195] + 2))
            {
              *(this + 404) = v268 & 0xFFFFDFFF;
              v269 = 278;
              v270 = 643;
            }

            else if (v297 - 769 >= 4)
            {
              if (v297 == 65276)
              {
                goto LABEL_590;
              }

LABEL_770:
              if (!this[212])
              {
                std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:sn200100](this + 49, 0);
                std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:sn200100](this + 50, 0);
                bssl::ssl_done_writing_client_hello(this);
                v385 = *(v43 + 6);
                if (this[197])
                {
                  *(v385 + 216) = 2;
                }

                v386 = *(*(&__src[1] + 1) + 16);
                *(v385 + 16) = **(&__src[1] + 1);
                *(v385 + 32) = v386;
                v387 = *(v43 + 6);
                if ((*(v387 + 220) & 0x10) != 0 || *(this + 15) < 0x304u || *(v387 + 40) != *"DOWNGRD" && *(v387 + 40) != 0x14452474E574F44 && *(v387 + 40) != 0xFF1047C2A8B4BFEDLL)
                {
                  v388 = v4;
                  cipher_by_value = SSL_get_cipher_by_value(v474);
                  v391 = this[1][8];
                  v392 = v391 == 0;
                  if (!cipher_by_value)
                  {
                    goto LABEL_796;
                  }

                  v393 = v391 == 0;
                  v394 = cipher_by_value[5];
                  if ((v394 & (4 * v393)) != 0)
                  {
                    goto LABEL_796;
                  }

                  v395 = cipher_by_value[6];
                  if ((v395 & (8 * v392)) != 0)
                  {
                    goto LABEL_796;
                  }

                  v421 = cipher_by_value;
                  if (v394 == 8)
                  {
                    v422 = bssl::ssl_protocol_version(v43, v390);
                    if (v422 < 0x304)
                    {
LABEL_796:
                      ERR_put_error(16, 0, 242, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc", 710);
                      bssl::ssl_send_alert(v43, 2, 47);
                      finished = 0;
                      v4 = v388;
                      goto LABEL_858;
                    }

                    v423 = 772;
                  }

                  else
                  {
                    if (v395 == 16)
                    {
                      v424 = 772;
                    }

                    else if (cipher_by_value[9] == 1)
                    {
                      v424 = 768;
                    }

                    else
                    {
                      v424 = 771;
                    }

                    v422 = bssl::ssl_protocol_version(v43, v390);
                    if (v424 > v422)
                    {
                      goto LABEL_796;
                    }

                    if (v395 == 16)
                    {
                      v423 = 772;
                    }

                    else
                    {
                      v423 = 771;
                    }
                  }

                  if (v422 <= v423)
                  {
                    v425 = *(v43 + 1);
                    if (v425)
                    {
                      v426 = *(v425 + 24);
                      if (!v426)
                      {
                        v426 = *(*(v43 + 13) + 240);
                      }

                      v427 = *v426;
                    }

                    else
                    {
                      v427 = 0;
                    }

                    if (OPENSSL_sk_find(v427, 0, v421, sk_SSL_CIPHER_call_cmp_func))
                    {
                      this[198] = v421;
                      if (!*(this + 1661) || (v428 = __n, __n != *(this + 1661)) || memcmp(__s1[1], v3, __n))
                      {
                        bssl::ssl_set_session(v43, 0, v428);
                        if (bssl::ssl_get_new_session(this, v429))
                        {
                          if ((bssl::InplaceVector<unsigned char,32ul>::TryCopyFrom(this[194] + 59, __s1[1], __n) & 1) == 0)
                          {
                            goto LABEL_937;
                          }

                          v431 = this[198];
                          this[194][25] = v431;
                          goto LABEL_892;
                        }

                        goto LABEL_897;
                      }

                      v435 = *(v43 + 11);
                      if (!v435 || (v436 = *(v43 + 6), *(v436 + 216) == 2))
                      {
                        v437 = 286;
                        v438 = 727;
                        goto LABEL_906;
                      }

                      if (*(v435 + 4) != *(v436 + 208))
                      {
                        v437 = 188;
                        v438 = 732;
                        goto LABEL_906;
                      }

                      if (*(v435 + 200) != v421)
                      {
                        v437 = 187;
                        v438 = 737;
LABEL_906:
                        ERR_put_error(16, 0, v437, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc", v438);
                        bssl::ssl_send_alert(v43, 2, 47);
LABEL_907:
                        finished = 0;
                        v4 = v388;
                        goto LABEL_858;
                      }

                      v444 = *(v435 + 124);
                      v445 = this[1][4];
                      if (v444 != v445[120] || memcmp((v435 + 92), v445 + 88, v444))
                      {
                        v437 = 101;
                        v438 = 744;
                        goto LABEL_906;
                      }

                      *(v436 + 220) |= 0x20u;
                      v431 = this[198];
LABEL_892:
                      v432 = bssl::ssl_protocol_version(v43, v430);
                      if (bssl::SSLTranscript::InitHash((this + 51), v432, v431) && ((ses[0] & 1) != 0 || (bssl::SSLTranscript::Update((this + 51), *(&v468 + 1), *&v469[0]) & 1) != 0))
                      {
                        if (*(v43 + 11) || (this[198][3] & 7) == 0)
                        {
                          bssl::SSLTranscript::FreeBuffer((this + 51));
                        }

                        if (v475)
                        {
                          v437 = 238;
                          v438 = 784;
                          goto LABEL_906;
                        }

                        if ((bssl::ssl_parse_serverhello_tlsext(this, v476) & 1) == 0)
                        {
                          ERR_put_error(16, 0, 190, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc", 790);
                          goto LABEL_907;
                        }

                        v439 = *(v43 + 11);
                        if (!v439 || (v440 = *(v439 + 408), ((*(this + 404) >> 17) & 1) == (v440 & 1)))
                        {
                          (*(*v43 + 32))(v43);
                          if (*(v43 + 11))
                          {
                            if (*(*(v43 + 13) + 520) == 1 && (this[198][3] & 7) != 0)
                            {
                              v441 = 8;
                            }

                            else
                            {
                              v441 = 17;
                            }
                          }

                          else
                          {
                            v441 = 5;
                          }

                          *(this + 5) = v441;
                          finished = 1;
                          goto LABEL_899;
                        }

                        if (v440)
                        {
                          v442 = 204;
                          v443 = 797;
                        }

                        else
                        {
                          v442 = 205;
                          v443 = 799;
                        }

                        ERR_put_error(16, 0, v442, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc", v443);
                        v433 = v43;
                        v434 = 40;
                      }

                      else
                      {
LABEL_897:
                        v433 = v43;
                        v434 = 80;
                      }

                      bssl::ssl_send_alert(v433, 2, v434);
                      finished = 0;
LABEL_899:
                      v4 = v388;
                      goto LABEL_858;
                    }
                  }

                  goto LABEL_796;
                }

                ERR_put_error(16, 0, 297, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc", 694);
                v88 = v43;
LABEL_674:
                v87 = 47;
                goto LABEL_414;
              }

              v269 = 240;
              v270 = 662;
            }

            else
            {
              if (v297 < 0x304)
              {
                goto LABEL_770;
              }

LABEL_590:
              if ((v268 & 0x2000000) == 0)
              {
                *(this + 5) = 4;
LABEL_411:
                finished = 1;
                goto LABEL_858;
              }

              v269 = 159;
              v270 = 650;
            }
          }

LABEL_518:
          ERR_put_error(16, 0, v269, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc", v270);
          v88 = v43;
          v87 = 70;
LABEL_414:
          bssl::ssl_send_alert(v88, 2, v87);
          finished = 0;
          goto LABEL_858;
        }

        v44 = *this;
        v45 = v468;
        v46 = v468 - 3;
        if (v468 < 3 || (v47 = ses[1], v48 = BYTE2(ses[1]->ssl_version), v46 != v48))
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc", 517);
          v181 = 50;
LABEL_312:
          bssl::ssl_send_alert(v44, 2, v181);
          finished = 0;
          goto LABEL_858;
        }

        v49 = this[69];
        v50 = this[70];
        if (v50 && v50 - 1 >= -v49)
        {
          goto LABEL_936;
        }

        if (v49)
        {
          v52 = *(v49 - 1);
          v51 = v49 - 1;
          v53 = v52 + 8;
          if (v52 != -8)
          {
            bzero(v51, v53);
          }

          free(v51);
        }

        *v457 = 0;
        v457[1] = 0;
        if (!v48)
        {
          goto LABEL_854;
        }

        v54 = malloc_type_malloc(v45 + 5, 0xB4E622C9uLL);
        if (!v54)
        {
          ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
          *v457 = 0;
          v181 = 80;
          goto LABEL_312;
        }

        *v54 = v46;
        v55 = v54 + 1;
        v56 = &v47->ssl_version + 3;
        this[69] = (v54 + 1);
        this[70] = v46;
        if (v46 < 8 || (v54 - v47 + 5) < 0x20)
        {
          goto LABEL_853;
        }

        if (v46 >= 0x20)
        {
          v57 = v46 & 0xFFFFFFFFFFFFFFE0;
          v377 = (&v47->master_key_length + 3);
          v378 = v54 + 3;
          v379 = v46 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v380 = *v377;
            *(v378 - 1) = *(v377 - 1);
            *v378 = v380;
            v377 += 2;
            v378 += 2;
            v379 -= 32;
          }

          while (v379);
          if (v46 == v57)
          {
            goto LABEL_854;
          }

          if ((v46 & 0x18) == 0)
          {
            v56 += v57;
            v55 += v57;
            do
            {
LABEL_853:
              v418 = *v56++;
              *v55++ = v418;
            }

            while (v56 != v47 + v45);
            goto LABEL_854;
          }
        }

        else
        {
          v57 = 0;
        }

        v55 += v46 & 0xFFFFFFFFFFFFFFF8;
        v56 += v46 & 0xFFFFFFFFFFFFFFF8;
        v381 = (&v47->ssl_version + v57 + 3);
        v382 = (v54 + v57 + 8);
        v383 = v57 - (v46 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v384 = *v381++;
          *v382++ = v384;
          v383 += 8;
        }

        while (v383);
        if (v46 != (v46 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_853;
        }

LABEL_854:
        *(this + 404) |= 0x2000000u;
        (*(*v44 + 32))(v44);
        if (!bssl::SSLTranscript::Init((this + 51)))
        {
          finished = 0;
          goto LABEL_858;
        }

        bssl::ssl_add_client_hello(this, a2);
        if (!v419)
        {
LABEL_857:
          finished = 0;
          goto LABEL_858;
        }

        *(this + 404) |= 0x2000000u;
        v152 = 3;
LABEL_262:
        *(this + 5) = v152;
        finished = 4;
        goto LABEL_858;
      case 4:
        finished = bssl::tls13_client_handshake(this, a2);
        if (finished == 1)
        {
          *(this + 5) = 20;
        }

        goto LABEL_858;
      case 5:
        if ((this[198][3] & 7) == 0)
        {
          *(this + 5) = 6;
          goto LABEL_411;
        }

        v61 = *this;
        if (!(*(**this + 3))(*this, __src))
        {
LABEL_198:
          finished = 3;
          goto LABEL_858;
        }

        if (BYTE1(__src[0]) != 11)
        {
          goto LABEL_318;
        }

        if ((__src[0] & 1) == 0 && !bssl::SSLTranscript::Update((this + 51), *(&__src[1] + 1), __s1[0]))
        {
          goto LABEL_857;
        }

        *ses = *(__src + 8);
        LOBYTE(v462[0]) = 50;
        if ((bssl::ssl_parse_cert_chain(v462, this[194] + 17, v458, 0, ses, *(*(v61 + 13) + 736)) & 1) == 0)
        {
          v87 = LOBYTE(v462[0]);
          v88 = v61;
          goto LABEL_414;
        }

        v62 = this[194][17];
        if (!v62 || (*v62 ? (v63 = ses[1] == 0) : (v63 = 0), !v63 || ((*(*(*(v61 + 13) + 16) + 48))() & 1) == 0))
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc", 860);
          v88 = v61;
          goto LABEL_430;
        }

        v298 = bssl::ssl_check_leaf_certificate(this, this[193]);
        if (v298)
        {
          (*(*v61 + 32))(v61);
          *(this + 5) = 6;
          goto LABEL_411;
        }

        v88 = v61;
        goto LABEL_674;
      case 6:
        if ((this[202] & 0x40) == 0)
        {
          goto LABEL_120;
        }

        v112 = *this;
        if (!(*(**this + 3))(*this, __src))
        {
          goto LABEL_198;
        }

        if (BYTE1(__src[0]) != 22)
        {
          goto LABEL_120;
        }

        if ((__src[0] & 1) == 0 && !bssl::SSLTranscript::Update((this + 51), *(&__src[1] + 1), __s1[0]))
        {
          goto LABEL_857;
        }

        if (!*&__src[1] || (v113 = *&__src[1] - 4, *&__src[1] < 4uLL) || **(&__src[0] + 1) != 1 || ((v114 = (*(*(&__src[0] + 1) + 1) << 16) | (*(*(&__src[0] + 1) + 2) << 8) | *(*(&__src[0] + 1) + 3), v113 >= v114) ? (v115 = v114 == 0) : (v115 = 1), !v115 ? (v116 = v113 == v114) : (v116 = 0), !v116))
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc", 909);
          v88 = v112;
LABEL_430:
          v87 = 50;
          goto LABEL_414;
        }

        v294 = this[194];
        v295 = crypto_buffer_new((*(&__src[0] + 1) + 4), v113, 0, *(*(v112 + 13) + 736));
        v296 = v294[32];
        v294[32] = v295;
        if (v296)
        {
          CRYPTO_BUFFER_free(v296);
        }

        if (!this[194][32])
        {
          v88 = v112;
          v87 = 80;
          goto LABEL_414;
        }

        (*(*v112 + 32))(v112);
LABEL_120:
        v20 = 7;
        goto LABEL_410;
      case 7:
        if ((this[198][3] & 7) != 0)
        {
          v58 = bssl::ssl_verify_peer_cert(this, a2);
          if (v58 == 1)
          {
            goto LABEL_857;
          }

          if (v58 == 2)
          {
            v59 = 7;
          }

          else
          {
            v59 = 9;
          }

          if (v58 == 2)
          {
            finished = 16;
          }

          else
          {
            finished = 1;
          }

          *(this + 5) = v59;
        }

        else
        {
          finished = 1;
          *(this + 5) = 9;
        }

        goto LABEL_858;
      case 8:
        LOBYTE(__src[0]) = 46;
        v84 = *this;
        v85 = this[1][6];
        if (!v85 || (v86 = (v85)(*this, __src), v86 == 1))
        {
          ERR_put_error(16, 0, 125, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake.cc", 340);
          v87 = LOBYTE(__src[0]);
          v88 = v84;
          goto LABEL_414;
        }

        if (v86 == 2)
        {
          v125 = 8;
        }

        else
        {
          v125 = 17;
        }

        if (v86 == 2)
        {
          finished = 16;
        }

        else
        {
          finished = 1;
        }

        *(this + 5) = v125;
        goto LABEL_858;
      case 9:
        v29 = *this;
        if (!(*(**this + 3))(*this, ses))
        {
          goto LABEL_198;
        }

        if (BYTE1(ses[0]) != 12)
        {
          if ((*(this[198] + 20) & 2) == 0)
          {
            v20 = 10;
            goto LABEL_410;
          }

          ERR_put_error(16, 0, 223, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc", 974);
          v88 = v29;
          v87 = 10;
          goto LABEL_414;
        }

        if ((ses[0] & 1) == 0 && !bssl::SSLTranscript::Update((this + 51), *(&v468 + 1), *&v469[0]))
        {
          goto LABEL_857;
        }

        v30 = v4;
        v31 = this[198];
        v32 = *(v31 + 5);
        v34 = ses[1];
        v33 = v468;
        if ((v31[3] & 8) != 0)
        {
          v205 = v468 - 2;
          if (v468 < 2 || (v206 = __rev16(ses[1]->ssl_version), v33 = v205 - v206, v205 < v206))
          {
            v207 = 996;
LABEL_703:
            ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc", v207);
            v259 = 50;
            goto LABEL_704;
          }

          v258 = &ses[1]->ssl_version + 2;
          *&__src[0] = &ses[1]->ssl_version + 2;
          *(&__src[0] + 1) = v206;
          if (v206 > 0x80)
          {
            goto LABEL_494;
          }

          if (v206)
          {
            if (memchr(v258, 0, v206))
            {
LABEL_494:
              ERR_put_error(16, 0, 136, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc", 1010);
              v259 = 40;
              goto LABEL_704;
            }

            v462[0] = 0;
            if (!CBS_strdup(__src, v462))
            {
              v334 = v29;
              v259 = 80;
              goto LABEL_705;
            }

            v451 = v3;
            v323 = v462[0];
          }

          else
          {
            v451 = v3;
            v323 = 0;
          }

          v328 = this[182];
          this[182] = v323;
          if (v328)
          {
            v330 = *(v328 - 1);
            v329 = v328 - 1;
            v331 = v330 + 8;
            if (v330 != -8)
            {
              bzero(v329, v331);
            }

            free(v329);
          }

          v34 = &v258[v206];
          v3 = v451;
          if ((v32 & 2) == 0)
          {
LABEL_52:
            if ((v32 & 4) == 0)
            {
              ERR_put_error(16, 0, 223, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc", 1056);
              v35 = v29;
              v36 = 10;
LABEL_750:
              bssl::ssl_send_alert(v35, 2, v36);
              finished = 0;
              v4 = v30;
              goto LABEL_858;
            }

LABEL_711:
            if ((this[198][3] & 7) == 0)
            {
              if (v33)
              {
                v340 = 151;
                v341 = 1128;
                goto LABEL_749;
              }

              goto LABEL_747;
            }

            v339 = ses[1];
            v338 = v468;
            if (bssl::ssl_protocol_version(v29, a2) < 0x303)
            {
              v342 = (*v458)[1];
              if (v342 == 6)
              {
                v450 = v339;
                v452 = v338;
                LODWORD(v338) = 65281;
              }

              else
              {
                if (v342 != 408)
                {
                  ERR_put_error(16, 0, 193, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc", 1086);
                  v35 = v29;
                  v36 = 43;
                  goto LABEL_750;
                }

                v450 = v339;
                v452 = v338;
                LODWORD(v338) = 515;
              }

              v343 = v33;
LABEL_730:
              v348 = v343 - 2;
              if (v343 < 2 || (ssl_version_low = LOWORD(v34->ssl_version), v349 = v34 + 2, v348 != __rev16(ssl_version_low)))
              {
                v340 = 137;
                v341 = 1095;
                goto LABEL_749;
              }

              v448 = v338;
              *__s1 = 0u;
              memset(__src, 0, sizeof(__src));
              v462[0] = 0;
              v462[1] = 0;
              v449 = v452 - v33;
              if (CBB_init(__src, &v452[1].save_parameters - v33))
              {
                v351 = *(v29 + 6);
                __dst[0] = 0;
                if (CBB_add_space(__src, __dst, 32) && (v352 = __dst[0], v353 = *(v351 + 64), *__dst[0] = *(v351 + 48), v352[1] = v353, v354 = *(v29 + 6), __dst[0] = 0, CBB_add_space(__src, __dst, 32)) && (v355 = __dst[0], v356 = *(v354 + 32), *__dst[0] = *(v354 + 16), v355[1] = v356, __dst[0] = 0, CBB_add_space(__src, __dst, v449)))
                {
                  if (v452 != v33)
                  {
                    memcpy(__dst[0], v450, v449);
                  }

                  v357 = bssl::CBBFinishArray(__src, v462);
                  v358 = v462[0];
                  v359 = v462[1];
                  if (v357)
                  {
                    v360 = v348;
                    v361 = v462[1];
                    if (bssl::ssl_public_key_verify(v29, v349, v360, v448, *v458, v462[0], v462[1]))
                    {
                      if (v359 && (v359 - 1) >= -v358)
                      {
                        goto LABEL_936;
                      }

                      if (v358)
                      {
                        v363 = *(v358 - 8);
                        v362 = (v358 - 8);
                        v364 = v363 + 8;
                        if (v363 != -8)
                        {
                          bzero(v362, v364);
                        }

                        free(v362);
                      }

                      CBB_cleanup(__src);
LABEL_747:
                      (*(*v29 + 32))(v29);
                      *(this + 5) = 10;
                      finished = 1;
LABEL_707:
                      v4 = v30;
                      goto LABEL_858;
                    }

                    ERR_put_error(16, 0, 114, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc", 1119);
                    v4 = v30;
                    bssl::ssl_send_alert(v29, 2, 51);
                    if (!v361)
                    {
LABEL_826:
                      if (v358)
                      {
                        v406 = *(v358 - 8);
                        v405 = (v358 - 8);
                        v407 = v406 + 8;
                        if (v406 != -8)
                        {
                          bzero(v405, v407);
                        }

                        free(v405);
                      }

                      CBB_cleanup(__src);
                      finished = 0;
                      goto LABEL_858;
                    }

LABEL_825:
                    if ((v361 - 1) >= -v358)
                    {
                      goto LABEL_936;
                    }

                    goto LABEL_826;
                  }

                  v361 = v462[1];
                }

                else
                {
                  v361 = 0;
                  v358 = 0;
                }
              }

              else
              {
                v361 = 0;
                v358 = 0;
              }

              ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc", 1111);
              v4 = v30;
              bssl::ssl_send_alert(v29, 2, 80);
              if (!v361)
              {
                goto LABEL_826;
              }

              goto LABEL_825;
            }

            if (v33 <= 1)
            {
              v340 = 137;
              v341 = 1073;
LABEL_749:
              ERR_put_error(16, 0, v340, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc", v341);
              v35 = v29;
              v36 = 50;
              goto LABEL_750;
            }

            v452 = v338;
            v338 = (bswap32(LOWORD(v34->ssl_version)) >> 16);
            LOBYTE(__src[0]) = 50;
            if (bssl::tls12_check_peer_sigalg(this, __src, v338, this[193]))
            {
              v450 = v339;
              v343 = v33 - 2;
              v34 = (v34 + 2);
              *(this[194] + 4) = v338;
              goto LABEL_730;
            }

            v259 = LOBYTE(__src[0]);
            goto LABEL_704;
          }
        }

        else if ((v32 & 2) == 0)
        {
          goto LABEL_52;
        }

        if (!v33 || (LOBYTE(v34->ssl_version) == 3 ? (v332 = v33 >= 3) : (v332 = 0), !v332 || v33 == 3 || (ssl_version_high = HIBYTE(v34->ssl_version), v332 = v33 - 4 >= ssl_version_high, v33 = v33 - 4 - ssl_version_high, !v332)))
        {
          v207 = 1038;
          goto LABEL_703;
        }

        v335 = v3;
        v336 = bswap32(*(&v34->ssl_version + 1)) >> 16;
        if (bssl::tls1_check_group_id(this, v336))
        {
          p_key_arg_length = &v34->key_arg_length;
          *(this[194] + 3) = v336;
          if ((bssl::Array<unsigned char>::CopyFrom((this + 87), p_key_arg_length, ssl_version_high) & 1) == 0)
          {
            finished = 0;
            v3 = v335;
            goto LABEL_707;
          }

          v34 = (p_key_arg_length + ssl_version_high);
          v3 = v335;
          goto LABEL_711;
        }

        ERR_put_error(16, 0, 243, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc", 1045);
        v259 = 47;
        v3 = v335;
LABEL_704:
        v334 = v29;
LABEL_705:
        bssl::ssl_send_alert(v334, 2, v259);
        goto LABEL_706;
      case 10:
        if ((this[198][3] & 7) == 0)
        {
          goto LABEL_136;
        }

        v61 = *this;
        if (!(*(**this + 3))(*this, __src))
        {
          goto LABEL_198;
        }

        if (BYTE1(__src[0]) == 13)
        {
          if ((__src[0] & 1) == 0 && !bssl::SSLTranscript::Update((this + 51), *(&__src[1] + 1), __s1[0]))
          {
            goto LABEL_857;
          }

          v182 = v3;
          *ses = *(__src + 8);
          if (!*&__src[1] || (v183 = ses[0], v184 = &ses[0]->ssl_version + 1, ++ses[0], ses[1] = (*&__src[1] - 1), v185 = LOBYTE(v183->ssl_version), *&__src[1] - 1 < v185))
          {
            bssl::ssl_send_alert(v61, 2, 50);
            ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc", 1169);
            finished = 0;
            v3 = v182;
            goto LABEL_858;
          }

          v250 = &v184[v185];
          ses[0] = &v184[v185];
          ses[1] = (*&__src[1] - 1 - v185);
          v251 = this[190];
          v252 = this[191];
          if (v252 && v252 - 1 >= -v251)
          {
            goto LABEL_936;
          }

          if (v251)
          {
            v254 = *(v251 - 1);
            v253 = v251 - 1;
            v255 = v254 + 8;
            if (v254 != -8)
            {
              bzero(v253, v255);
            }

            free(v253);
          }

          *v456 = 0;
          v456[1] = 0;
          if (!v185)
          {
            goto LABEL_833;
          }

          v256 = OPENSSL_malloc(v185);
          *v456 = v256;
          if (!v256)
          {
            bssl::ssl_send_alert(v61, 2, 80);
            finished = 0;
            v3 = v182;
            v4 = BCM_rand_bytes::kZeroAdditionalData;
            goto LABEL_858;
          }

          this[191] = v185;
          if (v185 < 8)
          {
            v365 = v256;
          }

          else if ((v183 - v256) > 0xFFFFFFFFFFFFFFDFLL)
          {
            v365 = v256;
          }

          else if (v185 >= 0x20)
          {
            v257 = v185 & 0xE0;
            v366 = *(&v183->master_key_length + 1);
            *v256 = *(&v183->ssl_version + 1);
            v256[1] = v366;
            if (v257 != 32)
            {
              v367 = *&v183->master_key[29];
              v256[2] = *&v183->master_key[13];
              v256[3] = v367;
              if (v257 != 64)
              {
                v368 = *&v183->session_id[9];
                v256[4] = *&v183->master_key[45];
                v256[5] = v368;
                if (v257 != 96)
                {
                  v369 = *&v183->sid_ctx[5];
                  v256[6] = *&v183->session_id[25];
                  v256[7] = v369;
                  if (v257 != 128)
                  {
                    v370 = *(&v183->sess_cert + 1);
                    v256[8] = *&v183->sid_ctx[21];
                    v256[9] = v370;
                    if (v257 != 160)
                    {
                      v371 = *(&v183->timeout + 1);
                      v256[10] = *(&v183->verify_result + 1);
                      v256[11] = v371;
                      if (v257 != 192)
                      {
                        v372 = *(&v183->cipher_id + 1);
                        v256[12] = *(&v183->compress_meth + 1);
                        v256[13] = v372;
                      }
                    }
                  }
                }
              }
            }

            if (v257 == v185)
            {
              goto LABEL_833;
            }

            if ((v185 & 0x18) != 0)
            {
              goto LABEL_765;
            }

            v184 += v257;
            v365 = v256 + v257;
          }

          else
          {
            v257 = 0;
LABEL_765:
            v365 = v256 + (v185 & 0xF8);
            v184 += v185 & 0xF8;
            v373 = (&v183->ssl_version + v257 + 1);
            v374 = (v256 + v257);
            v375 = v257 - (v185 & 0xF8);
            do
            {
              v376 = *v373++;
              *v374++ = v376;
              v375 += 8;
            }

            while (v375);
            if ((v185 & 0xF8) == v185)
            {
LABEL_833:
              v3 = v182;
              v4 = BCM_rand_bytes::kZeroAdditionalData;
              if (bssl::ssl_protocol_version(v61, a2) >= 0x303)
              {
                v409 = &ses[1][-1].tlsext_tick_lifetime_hint + 6;
                if (ses[1] < 2 || (v410 = ses[0], v411 = &ses[0]->ssl_version + 2, ses[0] = (ses[0] + 2), ses[1] = (ses[1] - 2), v412 = __rev16(LOWORD(v410->ssl_version)), v332 = v409 >= v412, v413 = (v409 - v412), !v332) || (ses[0] = &v412[v411], ses[1] = v413, v462[0] = v411, v462[1] = v412, (bssl::tls1_parse_peer_sigalgs(this, v462) & 1) == 0))
                {
                  bssl::ssl_send_alert(v61, 2, 50);
                  v25 = 137;
                  v26 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc";
                  v27 = 1183;
                  goto LABEL_95;
                }
              }

              LOBYTE(__dst[0]) = 50;
              bssl::SSL_parse_CA_list(v61, __dst, ses, v462);
              v414 = v462[0];
              if (v462[0])
              {
                if (ses[1])
                {
                  bssl::ssl_send_alert(v61, 2, 50);
                  ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc", 1198);
                  finished = 0;
                }

                else
                {
                  *(this + 404) |= 0x20u;
                  v462[0] = 0;
                  v415 = this[183];
                  this[183] = v414;
                  if (v415)
                  {
                    OPENSSL_sk_pop_free_ex(v415, bssl::internal::DeleterImpl<stack_st_CRYPTO_BUFFER,void>::Free(stack_st_CRYPTO_BUFFER*)::{lambda(void (*)(void *),void *)#1}::__invoke, 0);
                  }

                  (*(*(*(v61 + 13) + 16) + 80))(this);
                  (*(*v61 + 32))(v61);
                  *(this + 5) = 11;
                  finished = 1;
                }
              }

              else
              {
                bssl::ssl_send_alert(v61, 2, LOBYTE(__dst[0]));
                finished = 0;
              }

              v416 = v462[0];
              v462[0] = 0;
              if (v416)
              {
                OPENSSL_sk_pop_free_ex(v416, bssl::internal::DeleterImpl<stack_st_CRYPTO_BUFFER,void>::Free(stack_st_CRYPTO_BUFFER*)::{lambda(void (*)(void *),void *)#1}::__invoke, 0);
              }

              goto LABEL_858;
            }
          }

          do
          {
            v408 = *v184++;
            *v365++ = v408;
          }

          while (v184 != v250);
          goto LABEL_833;
        }

        if (BYTE1(__src[0]) == 14)
        {
          v76 = this[51];
          this[51] = 0;
          if (v76)
          {
            v77 = v76[1];
            if (v77)
            {
              v79 = *(v77 - 1);
              v78 = v77 - 8;
              v80 = v79 + 8;
              if (v79 != -8)
              {
                bzero(v78, v80);
              }

              free(v78);
            }

            v82 = *(v76 - 1);
            v81 = v76 - 1;
            v83 = v82 + 8;
            if (v82 != -8)
            {
              bzero(v81, v83);
            }

            free(v81);
          }

LABEL_136:
          *(this + 5) = 11;
          goto LABEL_411;
        }

LABEL_318:
        bssl::ssl_send_alert(v61, 2, 10);
        ERR_put_error(16, 0, 223, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake.cc", 116);
        v133 = BYTE1(__src[0]);
LABEL_319:
        ERR_add_error_dataf("got type %d, wanted type %d", v126, v127, v128, v129, v130, v131, v132, v133);
        finished = 0;
        goto LABEL_858;
      case 11:
        v24 = *this;
        if (!(*(**this + 3))(*this, __src))
        {
          goto LABEL_198;
        }

        if (BYTE1(__src[0]) != 14)
        {
          bssl::ssl_send_alert(v24, 2, 10);
          ERR_put_error(16, 0, 223, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake.cc", 116);
          v133 = BYTE1(__src[0]);
          goto LABEL_319;
        }

        if ((__src[0] & 1) == 0 && !bssl::SSLTranscript::Update((this + 51), *(&__src[1] + 1), __s1[0]))
        {
          goto LABEL_857;
        }

        if (*&__src[1])
        {
          bssl::ssl_send_alert(v24, 2, 50);
          v25 = 137;
          v26 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc";
          v27 = 1226;
          goto LABEL_95;
        }

        if ((*(*v24 + 40))(v24))
        {
          bssl::ssl_send_alert(v24, 2, 10);
          v25 = 255;
          v26 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc";
          v27 = 1233;
          goto LABEL_95;
        }

        (*(*v24 + 32))(v24);
        v20 = 12;
        goto LABEL_410;
      case 12:
        if ((this[202] & 0x20) == 0)
        {
          *(this + 5) = 13;
          goto LABEL_411;
        }

        v91 = *this;
        if (*((*this)[6] + 54) == 2)
        {
          SSL_certs_clear(*this);
        }

        else
        {
          v134 = this[1][4];
          v135 = *(v134 + 8);
          if (v135)
          {
            v136 = v135(*this, *(v134 + 9));
            if (!v136)
            {
              bssl::ssl_send_alert(v91, 2, 80);
              v25 = 126;
              v26 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc";
              v27 = 1295;
LABEL_95:
              ERR_put_error(16, 0, v25, v26, v27);
              finished = 0;
              goto LABEL_858;
            }

            if (v136 < 0)
            {
              *(this + 5) = 12;
              finished = 8;
              goto LABEL_858;
            }
          }
        }

        __src[0] = 0uLL;
        if (!bssl::ssl_get_full_credential_list(this, __src))
        {
          goto LABEL_568;
        }

        if (!*(&__src[0] + 1))
        {
          v208 = this[51];
          this[51] = 0;
          if (v208)
          {
            v209 = v208[1];
            if (v209)
            {
              v211 = *(v209 - 1);
              v210 = v209 - 8;
              v212 = v211 + 8;
              if (v211 != -8)
              {
                bzero(v210, v212);
              }

              free(v210);
            }

            v214 = *(v208 - 1);
            v213 = v208 - 1;
            v215 = v214 + 8;
            if (v214 != -8)
            {
              bzero(v213, v215);
            }

            free(v213);
          }

          goto LABEL_565;
        }

        v137 = v4;
        v138 = *&__src[0];
        v139 = 8 * *(&__src[0] + 1);
        while (2)
        {
          v141 = *v138;
          ERR_clear_error();
          LOWORD(ses[0]) = 0;
          if (*(v141 + 4))
          {
            v140 = 1245;
LABEL_237:
            ERR_put_error(16, 0, 228, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc", v140);
LABEL_238:
            ++v138;
            v139 -= 8;
            if (!v139)
            {
              goto LABEL_564;
            }

            continue;
          }

          break;
        }

        v142 = *(*(v141 + 8) + 4);
        if (v142 == 6)
        {
          v143 = 1;
        }

        else
        {
          if (v142 != 949 && v142 != 408)
          {
            v140 = 1260;
            goto LABEL_237;
          }

          v143 = 64;
        }

        v144 = this[190];
        v145 = this[191];
        v146 = v144 + v145;
        v147 = memchr(v144, v143, v145);
        if (v147)
        {
          v148 = v147 == v146;
        }

        else
        {
          v148 = 1;
        }

        if (v148)
        {
          v140 = 1265;
          goto LABEL_237;
        }

        v149 = bssl::tls1_choose_signature_algorithm(this, v141, ses);
        if (!v149 || !bssl::ssl_credential_matches_requested_issuers(this, v141, v150))
        {
          goto LABEL_238;
        }

        v285 = atomic_load(v141);
        if (v285 != -1)
        {
          for (j = v285; j != -1; v285 = j)
          {
            atomic_compare_exchange_strong(v141, &j, v285 + 1);
            if (j == v285)
            {
              break;
            }
          }
        }

        v287 = this[192];
        this[192] = v141;
        if (v287)
        {
          SSL_CREDENTIAL_free(v287);
        }

        *(this + 813) = ses[0];
LABEL_564:
        v4 = v137;
        if (this[192])
        {
LABEL_565:
          bssl::ssl_send_tls12_certificate(this, a2);
          if (v288)
          {
            *(this + 5) = 13;
            finished = 1;
            v289 = *(&__src[0] + 1);
            v221 = *&__src[0];
            if (!*(&__src[0] + 1))
            {
              goto LABEL_572;
            }

LABEL_569:
            v290 = v221 - 8;
            while (1)
            {
              v290 += 8;
              if (!v290)
              {
                break;
              }

              if (!--v289)
              {
                goto LABEL_572;
              }
            }

LABEL_936:
            __break(1u);
LABEL_937:
            abort();
          }

LABEL_568:
          finished = 0;
          v289 = *(&__src[0] + 1);
          v221 = *&__src[0];
          if (!*(&__src[0] + 1))
          {
            goto LABEL_572;
          }

          goto LABEL_569;
        }

        bssl::ssl_send_alert(v91, 2, 40);
        finished = 0;
        v289 = *(&__src[0] + 1);
        v221 = *&__src[0];
        if (*(&__src[0] + 1))
        {
          goto LABEL_569;
        }

LABEL_572:
        if (v221)
        {
          goto LABEL_573;
        }

        goto LABEL_858;
      case 13:
        v64 = *this;
        v463 = 0u;
        v464 = 0u;
        *v462 = 0u;
        if (!(*(*v64 + 88))(v64, v462, __dst, 16))
        {
          finished = 0;
          goto LABEL_475;
        }

        v459 = 0;
        v460 = 0;
        v65 = this[198];
        v66 = *(v65 + 5);
        v67 = *(v65 + 6);
        if ((v67 & 7) != 0 && (v68 = **(this[194][17] + 1), v70 = *(v68 + 8), v69 = *(v68 + 16), *&__src[0] = v70, *(&__src[0] + 1) = v69, (bssl::ssl_cert_check_key_usage(__src, 2 * (v66 & 1u)) & 1) == 0))
        {
          if ((*(this[1] + 269) & 0x10) != 0 || (*v458)[1] != 6)
          {
            goto LABEL_467;
          }

          ERR_clear_error();
          *(*(v64 + 6) + 220) |= 0x2000u;
          if ((v67 & 8) == 0)
          {
LABEL_114:
            v71 = 0;
            goto LABEL_115;
          }
        }

        else if ((v67 & 8) == 0)
        {
          goto LABEL_114;
        }

        v161 = this[1];
        if (!v161[8])
        {
          v72 = 196;
          v73 = 1384;
          goto LABEL_428;
        }

        v470 = 0;
        memset(v469, 0, sizeof(v469));
        *ses = 0u;
        v468 = 0u;
        v162 = (v161[8])(v64, this[182], ses, 129, __src, 256);
        if (!v162)
        {
          ERR_put_error(16, 0, 195, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc", 1394);
          bssl::ssl_send_alert(v64, 2, 40);
          goto LABEL_467;
        }

        v71 = v162;
        v163 = v3;
        v164 = this[194];
        v165 = strlen(ses);
        v166 = v165 + 1;
        if (v165 == -1)
        {
          goto LABEL_437;
        }

        if (v166 <= 0xFFFFFFFFFFFFFFF7 && (v167 = malloc_type_malloc(v165 + 9, 0xB4E622C9uLL)) != 0)
        {
          *v167 = v166;
          v168 = (v167 + 1);
          memcpy(v167 + 1, ses, v166);
        }

        else
        {
          ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
LABEL_437:
          v168 = 0;
        }

        v235 = v164[16];
        v164[16] = v168;
        v3 = v163;
        if (v235)
        {
          v237 = *(v235 - 1);
          v236 = v235 - 8;
          v238 = v237 + 8;
          if (v237 != -8)
          {
            bzero(v236, v238);
          }

          free(v236);
        }

        if (!this[194][16] || !CBB_add_u16_length_prefixed(__dst, v466))
        {
          goto LABEL_467;
        }

        for (k = 0; k != 129; ++k)
        {
          if (!*(ses + k))
          {
            break;
          }
        }

        v465 = 0;
        if (!CBB_add_space(v466, &v465, k))
        {
          goto LABEL_467;
        }

        if (k)
        {
          memcpy(v465, ses, k);
        }

        if (!CBB_flush(__dst))
        {
          goto LABEL_467;
        }

LABEL_115:
        if (v66)
        {
          if ((*v458)[1] != 6)
          {
            ERR_put_error(6, 0, 107, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_rsa_asn1.cc", 186);
LABEL_427:
            v72 = 68;
            v73 = 1419;
            goto LABEL_428;
          }

          v186 = *(*v458 + 1);
          if (!v186)
          {
            goto LABEL_427;
          }

          v187 = v3;
          if (v460 && v460 - 1 >= -v459)
          {
            goto LABEL_936;
          }

          if (v459)
          {
            v189 = (v459 - 8);
            v188 = *(v459 - 8);
            if (v188 != -8)
            {
              bzero(v189, v188 + 8);
            }

            free(v189);
          }

          v459 = 0;
          v460 = 0;
          v190 = malloc_type_malloc(0x38uLL, 0xB4E622C9uLL);
          if (!v190)
          {
            ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
            finished = 0;
            v459 = 0;
            v3 = v187;
            goto LABEL_468;
          }

          *v190 = 48;
          v190[8] = *(this + 1621);
          v459 = (v190 + 8);
          v460 = 48;
          v190[9] = *(this + 1620);
          BCM_rand_bytes_with_additional_data(v190 + 10, 0x2EuLL, BCM_rand_bytes::kZeroAdditionalData);
          v465 = 0;
          v466[0] = 0;
          v3 = v187;
          if (!CBB_add_u16_length_prefixed(__dst, ses))
          {
            goto LABEL_467;
          }

          v191 = RSA_size(v186);
          if (!CBB_reserve(ses, v466, v191))
          {
            goto LABEL_467;
          }

          v192 = v466[0];
          v193 = RSA_size(v186);
          v194 = v192;
          v3 = v187;
          if (!RSA_encrypt(v186, &v465, v194, v193, v459, v460, 1))
          {
            goto LABEL_467;
          }

          v195 = (v468 + 8);
          if (!LOBYTE(ses[1]))
          {
            v195 = &v468 + 1;
          }

          v196 = v465 + *v195;
          v197 = __CFADD__(*v195, v465);
          if (ses[0] || v197)
          {
            goto LABEL_467;
          }

          v198 = v469;
          if (LOBYTE(ses[1]))
          {
            v198 = (v468 + 16);
          }

          if (v196 > *v198)
          {
            goto LABEL_467;
          }

          *v195 = v196;
          if (!CBB_flush(__dst))
          {
            goto LABEL_467;
          }
        }

        else if ((v66 & 2) != 0)
        {
          if (!CBB_add_u8_length_prefixed(__dst, ses))
          {
            goto LABEL_467;
          }

          bssl::SSLKeyShare::Create(*(this[194] + 3), v466);
          v234 = 50;
          LOBYTE(v465) = 50;
          if (!v466[0])
          {
            goto LABEL_550;
          }

          if (((*(*v466[0] + 4))(v466[0], ses, &v459, &v465, this[87], this[88]) & 1) == 0)
          {
            v234 = v465;
LABEL_550:
            bssl::ssl_send_alert(v64, 2, v234);
LABEL_551:
            v281 = v466[0];
            v466[0] = 0;
            v4 = BCM_rand_bytes::kZeroAdditionalData;
            if (v281)
            {
              (**v281)(v281);
              v283 = *(v281 - 1);
              v282 = v281 - 1;
              v284 = v283 + 8;
              if (v283 != -8)
              {
                bzero(v282, v284);
              }

              free(v282);
            }

LABEL_555:
            finished = 0;
            goto LABEL_469;
          }

          if (!CBB_flush(__dst))
          {
            goto LABEL_551;
          }

          bssl::Array<unsigned char>::Reset(this + 87);
          std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::~unique_ptr[abi:sn200100](v466);
        }

        else
        {
          if ((v66 & 4) == 0)
          {
            bssl::ssl_send_alert(v64, 2, 40);
            v72 = 68;
            v73 = 1471;
LABEL_428:
            ERR_put_error(16, 0, v72, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc", v73);
LABEL_467:
            finished = 0;
LABEL_468:
            v4 = BCM_rand_bytes::kZeroAdditionalData;
            goto LABEL_469;
          }

          if (v460 && v460 - 1 >= -v459)
          {
            goto LABEL_936;
          }

          if (v459)
          {
            v241 = (v459 - 8);
            v240 = *(v459 - 8);
            if (v240 != -8)
            {
              bzero(v241, v240 + 8);
            }

            free(v241);
          }

          v459 = 0;
          v460 = 0;
          if (v71)
          {
            v242 = OPENSSL_malloc(v71);
            v459 = v242;
            if (!v242)
            {
              goto LABEL_467;
            }

            v460 = v71;
            bzero(v242, v71);
          }
        }

        if ((v67 & 8) == 0)
        {
          bssl::ssl_add_message_cbb(v64, v462);
          v4 = BCM_rand_bytes::kZeroAdditionalData;
          if (!v243)
          {
            goto LABEL_555;
          }

LABEL_463:
          v244 = this[194];
          v247 = *(v244 + 58);
          v245 = (v244 + 58);
          v246 = v247;
          if (v247 >= 0x31uLL && 48 - v246 <= &v245[-1].u64[1] + 7)
          {
            goto LABEL_936;
          }

          v245->i8[0] = 48;
          if (bssl::tls1_generate_master_secret(this, v245 - 3, 48, v459, v460))
          {
            *(this[194] + 408) = this[194][51] & 0xFE | ((this[202] & 0x20000) != 0);
            *(this + 5) = 14;
            finished = 1;
            goto LABEL_469;
          }

          goto LABEL_555;
        }

        v468 = 0u;
        v469[0] = 0u;
        *ses = 0u;
        v4 = BCM_rand_bytes::kZeroAdditionalData;
        if (CBB_init(ses, v460 + v71 + 4) && CBB_add_u16_length_prefixed(ses, v466))
        {
          v277 = v3;
          v278 = v459;
          v279 = v460;
          v465 = 0;
          if (CBB_add_space(v466, &v465, v460))
          {
            if (v279)
            {
              memcpy(v465, v278, v279);
            }

            v3 = v277;
            if (CBB_add_u16_length_prefixed(ses, v466))
            {
              v465 = 0;
              if (CBB_add_space(v466, &v465, v71))
              {
                if (v71)
                {
                  memcpy(v465, __src, v71);
                }

                if (bssl::CBBFinishArray(ses, &v459))
                {
                  CBB_cleanup(ses);
                  bssl::ssl_add_message_cbb(v64, v462);
                  v4 = BCM_rand_bytes::kZeroAdditionalData;
                  if (!v280)
                  {
                    goto LABEL_555;
                  }

                  goto LABEL_463;
                }
              }
            }
          }

          else
          {
            v3 = v277;
          }
        }

        CBB_cleanup(ses);
        finished = 0;
LABEL_469:
        if (v460 && v460 - 1 >= -v459)
        {
          goto LABEL_936;
        }

        if (v459)
        {
          v249 = (v459 - 8);
          v248 = *(v459 - 8);
          if (v248 != -8)
          {
            bzero(v249, v248 + 8);
          }

          free(v249);
        }

LABEL_475:
        if (!LOBYTE(v462[1]) && (BYTE8(v464) & 1) != 0)
        {
          v221 = v463;
          if (v463)
          {
LABEL_573:
            v292 = *(v221 - 8);
            v291 = (v221 - 8);
            v293 = v292 + 8;
            if (v292 != -8)
            {
              bzero(v291, v293);
            }

            free(v291);
          }
        }

LABEL_858:
        if (*(this + 5) != v5)
        {
          v420 = (*this)[12];
          if (v420 || (v420 = *((*this)[13] + 48)) != 0)
          {
            v420();
          }
        }

        if (finished == 1)
        {
          continue;
        }

        return finished;
      case 14:
        if ((this[202] & 0x20) == 0 || !this[192])
        {
          v20 = 15;
          goto LABEL_410;
        }

        v21 = *this;
        *__s1 = 0u;
        memset(__src, 0, sizeof(__src));
        if (!(*(*v21 + 11))(v21, __src, ses, 15))
        {
          goto LABEL_385;
        }

        v22 = *(v21[6] + 104);
        if (v22 - 769 >= 4)
        {
          if (v22 - 65276 >= 2)
          {
LABEL_34:
            v23 = this[192][1];
            if (!v23)
            {
              goto LABEL_380;
            }

            goto LABEL_377;
          }
        }

        else if (v22 < 0x303)
        {
          goto LABEL_34;
        }

        v216 = *(this + 813);
        __dst[0] = 0;
        if (!CBB_add_space(ses, __dst, 2))
        {
          ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc", 1525);
          finished = 0;
          goto LABEL_386;
        }

        *(__dst[0] + 1) = v216;
        *__dst[0] = HIBYTE(v216);
        v23 = this[192][1];
        if (!v23)
        {
          goto LABEL_380;
        }

LABEL_377:
        v217 = *(v23 + 2);
        if (v217)
        {
          v218 = *(v217 + 120);
          if (v218)
          {
            v219 = v218();
            goto LABEL_381;
          }
        }

LABEL_380:
        v219 = 0;
LABEL_381:
        __dst[0] = 0;
        if (!CBB_add_u16_length_prefixed(ses, v462) || !CBB_reserve(v462, __dst, v219))
        {
          goto LABEL_385;
        }

        v466[0] = v219;
        v220 = bssl::ssl_private_key_sign(this, __dst[0], v466, v219, *(this + 813), this[51][1], *this[51]);
        if (v220 == 1)
        {
          finished = 9;
          v271 = 14;
LABEL_523:
          *(this + 5) = v271;
          goto LABEL_386;
        }

        if (v220 == 2)
        {
          goto LABEL_385;
        }

        finished = 0;
        v272 = (v463 + 8);
        if (!LOBYTE(v462[1]))
        {
          v272 = &v463 + 1;
        }

        v273 = v466[0] + *v272;
        v274 = __CFADD__(*v272, v466[0]);
        if (!v462[0] && !v274)
        {
          v275 = &v464;
          if (LOBYTE(v462[1]))
          {
            v275 = (v463 + 16);
          }

          if (v273 > *v275 || (*v272 = v273, bssl::ssl_add_message_cbb(v21, __src), !v276))
          {
LABEL_385:
            finished = 0;
            goto LABEL_386;
          }

          bssl::SSLTranscript::FreeBuffer((this + 51));
          finished = 1;
          v271 = 15;
          goto LABEL_523;
        }

LABEL_386:
        if (BYTE8(__src[0]))
        {
          goto LABEL_858;
        }

        if ((__s1[1] & 1) == 0)
        {
          goto LABEL_858;
        }

        v221 = *&__src[1];
        if (!*&__src[1])
        {
          goto LABEL_858;
        }

        goto LABEL_573;
      case 15:
        v40 = *this;
        *(this + 404) |= 0x800000u;
        if (!(*(*v40 + 14))(v40, a2))
        {
          goto LABEL_857;
        }

        v41 = *this;
        v42 = this[194];
        if (v42)
        {
          if (!bssl::tls1_configure_aead(v41, 1u, this + 199, v42, 0, 0))
          {
            goto LABEL_857;
          }
        }

        else if (!bssl::tls1_configure_aead(v41, 1u, this + 199, v41[11], 0, 0))
        {
          goto LABEL_857;
        }

        v151 = *(this + 404);
        if ((v151 & 0x8000) != 0)
        {
          v172 = *(v40[6] + 120);
          *__s1 = 0u;
          memset(__src, 0, sizeof(__src));
          if (!(*(*v40 + 11))(v40, __src, ses, 67))
          {
            goto LABEL_309;
          }

          if (!CBB_add_u8_length_prefixed(ses, v462))
          {
            goto LABEL_309;
          }

          v173 = v40[6];
          v174 = *(v173 + 59);
          v175 = *(v173 + 60);
          __dst[0] = 0;
          if (!CBB_add_space(v462, __dst, v175))
          {
            goto LABEL_309;
          }

          if (v175)
          {
            memcpy(__dst[0], v174, v175);
          }

          if (!CBB_add_u8_length_prefixed(ses, v462) || (__dst[0] = 0, !CBB_add_space(v462, __dst, 32 - ((v172 + 2) & 0x1F))) || (bzero(__dst[0], 32 - ((v172 + 2) & 0x1F)), bssl::ssl_add_message_cbb(v40, __src), (v176 & 1) == 0))
          {
LABEL_309:
            ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc", 1585);
            if (BYTE8(__src[0]))
            {
              goto LABEL_857;
            }

LABEL_416:
            if ((__s1[1] & 1) != 0 && *&__src[1])
            {
              v233 = (*&__src[1] - 8);
              v232 = *(*&__src[1] - 8);
              if (v232 != -8)
              {
                bzero(v233, v232 + 8);
              }

              free(v233);
            }

            goto LABEL_857;
          }

          CBB_cleanup(__src);
          if ((this[202] & 0x1000000) == 0)
          {
LABEL_260:
            if (!bssl::ssl_send_finished(this, a2))
            {
              goto LABEL_857;
            }

LABEL_261:
            v152 = 16;
            goto LABEL_262;
          }
        }

        else if ((v151 & 0x1000000) == 0)
        {
          goto LABEL_260;
        }

        *__s1 = 0u;
        memset(__src, 0, sizeof(__src));
        if (!(*(*v40 + 11))(v40, __src, ses, 203) || !bssl::tls1_write_channel_id(this, ses, v177, v178) || (bssl::ssl_add_message_cbb(v40, __src), (v179 & 1) == 0))
        {
          ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc", 1596);
          if (BYTE8(__src[0]))
          {
            goto LABEL_857;
          }

          goto LABEL_416;
        }

        CBB_cleanup(__src);
        if (bssl::ssl_send_finished(this, v180))
        {
          goto LABEL_261;
        }

        goto LABEL_857;
      case 16:
        v19 = *this;
        if ((*this)[11])
        {
          v20 = 20;
          goto LABEL_410;
        }

        if (!bssl::tls1_record_handshake_hashes_for_channel_id(this))
        {
          goto LABEL_857;
        }

        *(this + 5) = 17;
        if ((*(v19 + 132) & 0x80) == 0)
        {
          goto LABEL_411;
        }

        v117 = *this;
        if (***this)
        {
          goto LABEL_411;
        }

        v118 = v117[6];
        v119 = *(v118 + 35);
        if (v119 && (*(v119 + 1617) & 4) != 0 && (*(v117 + 164) & 1) == 0)
        {
          v120 = *(*(v119 + 1560) + 4);
        }

        else
        {
          v120 = *(v118 + 104);
          if (!*(v118 + 104))
          {
            goto LABEL_597;
          }
        }

        if (v120 != 771)
        {
          goto LABEL_411;
        }

LABEL_597:
        v299 = this[198];
        if (*(v299 + 5) != 2 || *(v299 + 8) != 4 || *(v118 + 54) == 2 || (*(v117[13] + 396) & 0x100) == 0 && !*(v118 + 62) && !*(v118 + 60) || (*(v19[6] + 110) & 0x10) != 0)
        {
          goto LABEL_411;
        }

        *(this + 404) |= 0x2200u;
        finished = 12;
        goto LABEL_858;
      case 17:
        if ((*(this + 1618) & 1) == 0)
        {
          goto LABEL_92;
        }

        v61 = *this;
        if (!(*(**this + 3))(*this, __src))
        {
          goto LABEL_198;
        }

        if (BYTE1(__src[0]) != 4)
        {
          goto LABEL_318;
        }

        if ((__src[0] & 1) == 0 && !bssl::SSLTranscript::Update((this + 51), *(&__src[1] + 1), __s1[0]))
        {
          goto LABEL_857;
        }

        if (*&__src[1] < 4uLL || (*&__src[1] & 0xFFFFFFFFFFFFFFFELL) == 4 || (v100 = *(&__src[0] + 1), v101 = *&__src[1] - 6, *&__src[1] - 6 != __rev16(*(*(&__src[0] + 1) + 4))))
        {
          bssl::ssl_send_alert(v61, 2, 50);
          v25 = 137;
          v26 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc";
          v27 = 1700;
          goto LABEL_95;
        }

        if (*&__src[1] == 6)
        {
          *(this + 404) &= ~0x10000u;
          (*(*v61 + 32))(v61);
LABEL_92:
          *(this + 5) = 18;
          finished = 15;
          goto LABEL_858;
        }

        v30 = v4;
        v102 = **(&__src[0] + 1);
        v103 = *(v61 + 11);
        if (v103)
        {
          bssl::SSL_SESSION_dup(v103, 2, ses);
          a2 = ses[0];
          ses[0] = 0;
          v104 = this[194];
          this[194] = a2;
          if (v104)
          {
            SSL_SESSION_free(v104);
            v105 = ses[0];
            ses[0] = 0;
            if (v105)
            {
              SSL_SESSION_free(v105);
            }

            a2 = this[194];
          }

          if (!a2)
          {
LABEL_706:
            finished = 0;
            goto LABEL_707;
          }
        }

        else
        {
          a2 = this[194];
        }

        bssl::ssl_session_rebase_time(v61, a2, v99);
        if (!bssl::Array<unsigned char>::CopyFrom((this[194] + 29), v100 + 6, v101))
        {
          goto LABEL_706;
        }

        v344 = this[194];
        v347 = *(v344 + 91);
        v345 = v344 + 91;
        v346 = v347;
        *(v345 + 257) = bswap32(v102);
        if (v347 >= 0x21uLL && 32 - v346 <= (v345 - 1))
        {
          goto LABEL_936;
        }

        *v345 = 32;
        SHA256((v100 + 6), v101, (v345 - 32));
        (*(*v61 + 32))(v61);
        *(this + 5) = 18;
        finished = 15;
        goto LABEL_707;
      case 18:
        v74 = *this;
        v75 = this[194];
        if (v75)
        {
          if (!bssl::tls1_configure_aead(v74, 0, this + 199, v75, 0, 0))
          {
            goto LABEL_857;
          }
        }

        else if (!bssl::tls1_configure_aead(v74, 0, this + 199, v74[11], 0, 0))
        {
          goto LABEL_857;
        }

        v20 = 19;
        goto LABEL_410;
      case 19:
        v89 = *this;
        finished = bssl::ssl_get_finished(this, a2);
        if (finished == 1)
        {
          if (v89[11])
          {
            v90 = 15;
          }

          else
          {
            v90 = 20;
          }

          *(this + 5) = v90;
        }

        goto LABEL_858;
      case 20:
        v60 = *this;
        if (*((*this)[6] + 54) == 2)
        {
          *(this + 404) |= 2u;
          bssl::ssl_send_alert(v60, 2, 121);
          v25 = 319;
          v26 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_client.cc";
          v27 = 1776;
          goto LABEL_95;
        }

        (*(*v60 + 144))(*this, a2);
        v106 = this[194];
        if (!v106)
        {
          v153 = *(v60 + 11);
          if (v153)
          {
            v154 = atomic_load(v153);
            if (v154 != -1)
            {
              for (m = v154; m != -1; v154 = m)
              {
                atomic_compare_exchange_strong(v153, &m, v154 + 1);
                if (m == v154)
                {
                  break;
                }
              }
            }
          }

          v156 = *(v60 + 6);
          v157 = *(v156 + 464);
          *(v156 + 464) = v153;
          if (!v157)
          {
            goto LABEL_407;
          }

          goto LABEL_398;
        }

        bssl::SSL_SESSION_dup(this[194], 3, __src);
        v107 = *(v60 + 6);
        v108 = *&__src[0];
        *&__src[0] = 0;
        v109 = *(v107 + 464);
        *(v107 + 464) = v108;
        if (!v109)
        {
          goto LABEL_394;
        }

        v110 = atomic_load(v109);
        if (v110 == -1)
        {
          goto LABEL_353;
        }

        while (1)
        {
          if (!v110)
          {
            goto LABEL_937;
          }

          v111 = v110;
          atomic_compare_exchange_strong(&v109->ssl_version, &v111, v110 - 1);
          if (v111 == v110)
          {
            break;
          }

          v110 = v111;
          if (v111 == -1)
          {
            goto LABEL_353;
          }
        }

        if (v110 == 1)
        {
          ssl_session_st::~ssl_session_st(v109);
          v200 = v109[-1].tlsext_tick_lifetime_hint;
          v199 = &v109[-1].tlsext_tick_lifetime_hint;
          v201 = v200 + 8;
          if (v200 != -8)
          {
            bzero(v199, v201);
          }

          free(v199);
        }

LABEL_353:
        v202 = *&__src[0];
        *&__src[0] = 0;
        if (v202)
        {
          v203 = atomic_load(v202);
          if (v203 != -1)
          {
            while (1)
            {
              if (!v203)
              {
                goto LABEL_937;
              }

              v204 = v203;
              atomic_compare_exchange_strong(&v202->ssl_version, &v204, v203 - 1);
              if (v204 == v203)
              {
                break;
              }

              v203 = v204;
              if (v204 == -1)
              {
                goto LABEL_394;
              }
            }

            if (v203 == 1)
            {
              ssl_session_st::~ssl_session_st(v202);
              v223 = v202[-1].tlsext_tick_lifetime_hint;
              v222 = &v202[-1].tlsext_tick_lifetime_hint;
              v224 = v223 + 8;
              if (v223 != -8)
              {
                bzero(v222, v224);
              }

              free(v222);
            }
          }
        }

LABEL_394:
        v225 = *(v60 + 6);
        v226 = *(v225 + 464);
        if (!v226)
        {
          goto LABEL_857;
        }

        if ((*(v225 + 220) & 0x10) == 0)
        {
          *(v226 + 408) &= ~4u;
        }

        v157 = this[194];
        this[194] = 0;
        if (!v157)
        {
          goto LABEL_407;
        }

LABEL_398:
        v227 = atomic_load(v157);
        if (v227 == -1)
        {
          goto LABEL_407;
        }

        while (1)
        {
          if (!v227)
          {
            goto LABEL_937;
          }

          v228 = v227;
          atomic_compare_exchange_strong(&v157->ssl_version, &v228, v227 - 1);
          if (v228 == v227)
          {
            break;
          }

          v227 = v228;
          if (v228 == -1)
          {
            goto LABEL_407;
          }
        }

        if (v227 == 1)
        {
          ssl_session_st::~ssl_session_st(v157);
          v230 = v157[-1].tlsext_tick_lifetime_hint;
          v229 = &v157[-1].tlsext_tick_lifetime_hint;
          v231 = v230 + 8;
          if (v230 != -8)
          {
            bzero(v229, v231);
          }

          free(v229);
        }

LABEL_407:
        *(this + 404) |= 8u;
        *(*(v60 + 6) + 220) |= 0x10u;
        if (v106)
        {
          bssl::ssl_update_cache(v60, a2);
        }

        v20 = 21;
LABEL_410:
        *(this + 5) = v20;
        goto LABEL_411;
      case 21:
        v446 = (*this)[12];
        if (!v446)
        {
          v446 = *((*this)[13] + 48);
          if (!v446)
          {
            return 1;
          }
        }

        finished = 1;
        v446();
        return finished;
      default:
        goto LABEL_857;
    }
  }
}

uint64_t bssl::InplaceVector<unsigned char,32ul>::TryCopyFrom(uint64_t result, char *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    return a3 < 0x21;
  }

  if (!*(result + 32) || result - 1 < -*(result + 32))
  {
    *(result + 32) = 0;
    if (a3)
    {
      if (a3 < 8)
      {
        v3 = result;
        v4 = a2;
      }

      else
      {
        v3 = result;
        v4 = a2;
        if ((result - a2) >= 0x20)
        {
          if (a3 == 32)
          {
            v5 = *(a2 + 1);
            *result = *a2;
            *(result + 16) = v5;
            goto LABEL_14;
          }

          v3 = (result + (a3 & 0x38));
          v4 = &a2[a3 & 0x38];
          v6 = a3 & 0x38;
          v7 = result;
          v8 = a2;
          do
          {
            v9 = *v8++;
            *v7++ = v9;
            v6 -= 8;
          }

          while (v6);
          if (a3 == (a3 & 0x18))
          {
            goto LABEL_14;
          }
        }
      }

      do
      {
        v10 = *v4++;
        *v3++ = v10;
      }

      while (v4 != &a2[a3]);
    }

LABEL_14:
    *(result + 32) = a3;
    return a3 < 0x21;
  }

  __break(1u);
  return result;
}

void std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:sn200100](void (****a1)(void), void (***a2)(void))
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    (**v2)(v2);
    v4 = *(v2 - 1);
    v3 = v2 - 1;
    v5 = v4 + 8;
    if (v4 != -8)
    {
      bzero(v3, v5);
    }

    free(v3);
  }
}

uint64_t sk_SSL_CIPHER_call_cmp_func(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  return a1(&v5, &v4);
}

uint64_t bssl::ssl_server_handshake(bssl *this, bssl::SSL_HANDSHAKE *a2, BOOL *a3)
{
  v522 = (this + 1629);
  v520 = (this + 1544);
  v547 = *MEMORY[0x277D85DE8];
  v521 = (this + 1440);
  v523 = this + 1661;
  v518 = this + 1628;
  v519 = (this + 600);
  v517 = this + 760;
  while (2)
  {
    v4 = *(this + 5);
    switch(v4)
    {
      case 0:
        v5 = *(*this + 96);
        if (v5 || (v5 = *(*(*this + 104) + 384)) != 0)
        {
          v5();
        }

        prev_session = 1;
        *(this + 5) = 1;
        goto LABEL_624;
      case 1:
        v54 = *this;
        if (!(*(**this + 24))(*this, &v534))
        {
          goto LABEL_196;
        }

        if (BYTE1(v534) == 1)
        {
          v531[0] = *(&v534 + 1);
          v531[1] = v535;
          if (!bssl::ssl_parse_client_hello_with_trailing_data(v54, v531, __src))
          {
LABEL_621:
            v238 = v54;
            v239 = 50;
            goto LABEL_622;
          }

          if (v531[1])
          {
            v55 = 131;
            v56 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc";
            v57 = 4774;
LABEL_620:
            ERR_put_error(16, 0, v55, v56, v57);
            goto LABEL_621;
          }

          if ((*(*v54 + 40))(v54))
          {
            bssl::ssl_send_alert(v54, 2, 10);
            ERR_put_error(16, 0, 255, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc", 545);
            goto LABEL_623;
          }

          if ((*(*(this + 1) + 269) & 0x40) != 0)
          {
            prev_session = 6;
            goto LABEL_624;
          }

          LOBYTE(v537) = 50;
          if (*(*(v54 + 6) + 216) == 2)
          {
            goto LABEL_512;
          }

          v309 = *this;
          if ((bssl::ssl_client_hello_get_extension(__src, v531, 65037) & 1) == 0)
          {
            goto LABEL_512;
          }

          if (!v531[1])
          {
            ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc", 405);
            v239 = 50;
            LOBYTE(v537) = 50;
            v238 = v54;
            goto LABEL_622;
          }

          if (*v531[0])
          {
LABEL_512:
            if (bssl::SSL_HANDSHAKE::GetClientHello(this, &v534, __src))
            {
LABEL_513:
              v310 = *this;
              if (bssl::ssl_client_hello_get_extension(__src, v531, 0))
              {
                v311 = v531[1] - 2;
                if (v531[1] < 2 || (v312 = __rev16(*v531[0]), v312 - 1 >= v311) || (v313 = v312 - 3, v312 < 3) || (v314 = __rev16(*(v531[0] + 3)), v313 < v314))
                {
                  v315 = 50;
LABEL_519:
                  LOBYTE(v537) = v315;
LABEL_629:
                  bssl::ssl_send_alert(v54, 2, v315);
                  prev_session = 0;
                  goto LABEL_624;
                }

                v482 = *(v531[0] + 2);
                *&v524[1] = v531[0] + 5;
                v525 = v314;
                v315 = 50;
                if (v311 != v312 || v313 != v314)
                {
                  goto LABEL_519;
                }

                v315 = 112;
                if (v482)
                {
                  LOBYTE(v537) = 112;
                  goto LABEL_629;
                }

                if (v312 - 259 < 0xFFFFFFFFFFFFFF01)
                {
                  goto LABEL_519;
                }

                if (memchr(v531[0] + 5, 0, v313))
                {
                  v315 = 112;
                  LOBYTE(v537) = 112;
                  goto LABEL_629;
                }

                v529 = 0;
                if (!CBS_strdup(&v524[1], &v529))
                {
                  v315 = 80;
                  LOBYTE(v537) = 80;
                  goto LABEL_629;
                }

                v501 = *(v310 + 48);
                v502 = *(v501 + 504);
                *(v501 + 504) = v529;
                if (v502)
                {
                  v504 = *(v502 - 8);
                  v503 = (v502 - 8);
                  v505 = v504 + 8;
                  if (v504 != -8)
                  {
                    bzero(v503, v505);
                  }

                  free(v503);
                }
              }

              else
              {
                v403 = *(v310 + 48);
                v404 = *(v403 + 504);
                *(v403 + 504) = 0;
                if (v404)
                {
                  v406 = *(v404 - 8);
                  v405 = (v404 - 8);
                  v407 = v406 + 8;
                  if (v406 != -8)
                  {
                    bzero(v405, v407);
                  }

                  free(v405);
                  v41 = 2;
                  goto LABEL_172;
                }
              }

              v41 = 2;
LABEL_172:
              *(this + 5) = v41;
              prev_session = 1;
              goto LABEL_624;
            }

LABEL_904:
            ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc", 565);
            goto LABEL_623;
          }

          if (v531[1] < 3 || v531[1] - 3 < 2 || v531[1] == 5 || v531[1] - 5 < 3 || (v454 = __rev16(*(v531[0] + 3)), v455 = v531[1] - v454 - 8, v531[1] - 8 < v454) || (v516 = (v455 - 2), v455 < 2) || (v510 = v531[0] + 8, v456 = (v531[0] + v454 + 8), v458 = *v456, v457 = (v456 + 1), v459 = __rev16(v458), v516 < v459) || (v460 = *(v531[0] + 1), v461 = *(v531[0] + 3), v462 = *(v531[0] + 5), v531[0] = v459 + v457, v531[1] = (v516 - v459), v516 != v459))
          {
            ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc", 422);
            v239 = 50;
            LOBYTE(v537) = 50;
          }

          else
          {
            v463 = *(v309 + 104);
            if (pthread_rwlock_rdlock((v463 + 24)))
            {
              goto LABEL_936;
            }

            v464 = *(*(v309 + 104) + 712);
            if (v464)
            {
              v465 = atomic_load(v464);
              if (v465 != -1)
              {
                for (i = v465; i != -1; v465 = i)
                {
                  atomic_compare_exchange_strong(v464, &i, v465 + 1);
                  if (i == v465)
                  {
                    break;
                  }
                }
              }
            }

            v467 = *(this + 196);
            *(this + 196) = v464;
            if (v467)
            {
              SSL_ECH_KEYS_free(v467);
            }

            if (pthread_rwlock_unlock((v463 + 24)))
            {
              goto LABEL_936;
            }

            v468 = *(this + 196);
            if (!v468 || (v469 = *(v468 + 16)) == 0)
            {
LABEL_902:
              v491 = *(v309 + 48);
              v492 = 2;
LABEL_903:
              *(v491 + 216) = v492;
              if (bssl::SSL_HANDSHAKE::GetClientHello(this, &v534, __src))
              {
                goto LABEL_513;
              }

              goto LABEL_904;
            }

            v470 = bswap32(v460) >> 16;
            v508 = bswap32(v461) >> 16;
            v471 = *(v468 + 8);
            v472 = 8 * v469;
            while (1)
            {
              while (1)
              {
                if (*v517)
                {
                  (*(*v517 + 24))(v517);
                }

                bzero(this + 736, 0x2C0uLL);
                if (v462 == *(*v471 + 67) && (bssl::ECHServerConfig::SetupContext(*v471, this + 92, v470, v508, v510, v454) & 1) != 0)
                {
                  break;
                }

                ERR_clear_error();
                ++v471;
                v472 -= 8;
                if (!v472)
                {
                  goto LABEL_902;
                }
              }

              v524[1] = 0;
              if (bssl::ssl_client_hello_decrypt(this, &v537, &v524[1], v519, __src, v457, v516))
              {
                *(this + 1628) = v462;
                v491 = *(v309 + 48);
                v492 = 1;
                goto LABEL_903;
              }

              if ((v524[1] & 1) == 0)
              {
                break;
              }

              ERR_clear_error();
              LOBYTE(v537) = 50;
              ++v471;
              v472 -= 8;
              if (!v472)
              {
                goto LABEL_902;
              }
            }

            ERR_put_error(16, 0, 138, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc", 458);
            v239 = v537;
          }

          v238 = v54;
          goto LABEL_622;
        }

        bssl::ssl_send_alert(v54, 2, 10);
        ERR_put_error(16, 0, 223, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake.cc", 116);
        v154 = BYTE1(v534);
        goto LABEL_373;
      case 2:
        v21 = *this;
        if (!bssl::SSL_HANDSHAKE::GetClientHello(this, &v534, __src))
        {
          goto LABEL_623;
        }

        v22 = *(*(v21 + 13) + 504);
        if (!v22)
        {
          goto LABEL_198;
        }

        v23 = v22(__src);
        if (!v23)
        {
          prev_session = 5;
          goto LABEL_624;
        }

        if (v23 != -1)
        {
          if (v23 == -2)
          {
            v24 = *(this + 75);
            v25 = *(this + 76);
            if (!v25 || v25 - 1 < -v24)
            {
              if (v24)
              {
                v27 = *(v24 - 8);
                v26 = (v24 - 8);
                v28 = v27 + 8;
                if (v27 != -8)
                {
                  bzero(v26, v28);
                }

                free(v26);
              }

              *v519 = 0;
              v519[1] = 0;
              v29 = *(this + 196);
              *(this + 196) = 0;
              if (v29)
              {
                SSL_ECH_KEYS_free(v29);
              }

              prev_session = 1;
              *(this + 5) = 1;
              *(*(v21 + 6) + 216) = 2;
              goto LABEL_624;
            }

            goto LABEL_935;
          }

LABEL_198:
          if (bssl::ssl_get_version_range(this, this + 14, this + 15))
          {
            v133 = v511;
            v132 = v512;
            if ((*(*(this + 1) + 269) & 0x100) != 0)
            {
              v266 = v542;
              if (v542)
              {
                v267 = v541;
                do
                {
                  if (v266 < 2)
                  {
                    break;
                  }

                  if (bswap32(*v267) >> 16 == 4867)
                  {
                    goto LABEL_200;
                  }

                  ++v267;
                  v266 -= 2;
                }

                while (v266);
              }

              v268 = 0;
              v269 = 0;
              v270 = 0;
              v271 = 0;
              v272 = 0;
              v273 = 0;
              v274 = v545;
              v275 = v546;
              v276 = &byte_273BB60F2;
              v277 = 64;
              do
              {
                if (v275 >= 2 && (v278 = __rev16(*v274), v278 == *(v276 - 1)))
                {
                  if ((v275 & 0xFFFFFFFFFFFFFFFELL) == 2)
                  {
                    goto LABEL_200;
                  }

                  v279 = v275 - 4;
                  v280 = __rev16(*(v274 + 1));
                  v117 = v279 >= v280;
                  v275 = v279 - v280;
                  if (!v117)
                  {
                    goto LABEL_200;
                  }

                  v281 = (v274 + 4);
                  v274 += v280 + 4;
                  if (v278 <= 12)
                  {
                    if (v278 != 10)
                    {
                      v280 = v133;
                      v281 = v132;
                    }

                    if (v278 == 5)
                    {
                      v268 = 1;
                    }

                    else
                    {
                      v133 = v280;
                      v132 = v281;
                    }
                  }

                  else if (v278 == 13)
                  {
                    v273 = v281;
                    v272 = v280;
                  }

                  else
                  {
                    if (v278 != 50)
                    {
                      v281 = v271;
                      v280 = v270;
                    }

                    if (v278 == 17)
                    {
                      v269 = 1;
                    }

                    else
                    {
                      v271 = v281;
                      v270 = v280;
                    }
                  }
                }

                else if (*v276)
                {
                  goto LABEL_200;
                }

                v276 += 4;
                v277 -= 4;
              }

              while (v277);
              if (!v275)
              {
                while (v133)
                {
                  if (v133 != 1)
                  {
                    v316 = *v132++;
                    v133 -= 2;
                    if (__rev16(v316) != 29)
                    {
                      continue;
                    }
                  }

                  goto LABEL_200;
                }

                if (v272 == v270)
                {
                  v382 = v132;
                  v383 = memcmp(v273, v271, v272);
                  v133 = 0;
                  if (v383)
                  {
                    v132 = v382;
                  }

                  else
                  {
                    v132 = v382;
                    if (((v269 ^ v268) & 1) == 0)
                    {
                      v133 = 0;
                      *(this + 404) |= 0x400000u;
                    }
                  }
                }

                else
                {
                  v133 = 0;
                }
              }
            }

LABEL_200:
            v524[1] = 50;
            v134 = *this;
            v135 = v546;
            v511 = v133;
            v512 = v132;
            if (v546)
            {
              v136 = v545;
              do
              {
                if (v135 < 2)
                {
                  break;
                }

                if ((v135 & 0xFFFFFFFFFFFFFFFELL) == 2)
                {
                  break;
                }

                v137 = v135 - 4;
                v138 = __rev16(*(v136 + 1));
                if (v137 < v138)
                {
                  break;
                }

                v139 = v136 + 4;
                if (__rev16(*v136) == 43)
                {
                  if (v138)
                  {
                    v319 = (v138 - 1);
                    v320 = *v139;
                    if (v319 >= v320)
                    {
                      v531[0] = v136 + 5;
                      v531[1] = v320;
                      if (v320)
                      {
                        if (v319 == v320)
                        {
                          goto LABEL_220;
                        }
                      }
                    }
                  }

                  ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc", 74);
                  v239 = 50;
LABEL_589:
                  v524[1] = v239;
                  goto LABEL_590;
                }

                v136 = &v139[v138];
                v135 = v137 - v138;
              }

              while (v135);
            }

            v140 = 2 * (LOWORD(__src[1].tv_usec) > 0x300u);
            if (LOWORD(__src[1].tv_usec) == 770)
            {
              v140 = 4;
            }

            if (LOWORD(__src[1].tv_usec) > 0x302u)
            {
              v140 = 6;
            }

            if (LOWORD(__src[1].tv_usec) >= 0xFEFEu)
            {
              v141 = 2 * (HIBYTE(LOWORD(__src[1].tv_usec)) < 0xFFu);
            }

            else
            {
              v141 = 4;
            }

            if (**v134)
            {
              v142 = v141;
            }

            else
            {
              v142 = v140;
            }

            v143 = kNTTRoots;
            if (!**v134)
            {
              v143 = &bssl::negotiate_version(bssl::SSL_HANDSHAKE *,unsigned char *,ssl_early_callback_ctx const*)::kDTLSVersions;
            }

            v531[0] = (v143 - v142);
            v531[1] = v142;
LABEL_220:
            if ((bssl::ssl_negotiate_version(this, &v524[1], (*(v134 + 6) + 208), v531) & 1) == 0)
            {
              v239 = v524[1];
LABEL_590:
              v238 = v21;
              goto LABEL_622;
            }

            v145 = v542;
            if (v542)
            {
              v146 = v541;
              while (v145 >= 2)
              {
                if (bswap32(*v146) >> 16 == 22016)
                {
                  if (bssl::ssl_protocol_version(v134, v144) >= *(this + 15))
                  {
                    break;
                  }

                  ERR_put_error(16, 0, 157, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc", 120);
                  v239 = 86;
                  goto LABEL_589;
                }

                ++v146;
                v145 -= 2;
                if (!v145)
                {
                  break;
                }
              }
            }

            *(this + 810) = __src[1].tv_usec;
            if (*&__src[2].tv_usec != 32)
            {
              ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc", 629);
              goto LABEL_623;
            }

            v344 = *(v21 + 6);
            v345 = *(__src[2].tv_sec + 16);
            *(v344 + 48) = *__src[2].tv_sec;
            *(v344 + 64) = v345;
            v346 = v544;
            if (v544)
            {
              if (memchr(v543, 0, v544))
              {
                v348 = bssl::ssl_protocol_version(v21, v347);
                if (v346 == 1 || v348 < 0x304)
                {
                  if ((bssl::ssl_parse_clienthello_tlsext(this, __src) & 1) == 0)
                  {
                    ERR_put_error(16, 0, 190, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc", 648);
                    goto LABEL_623;
                  }

                  v41 = 3;
                  goto LABEL_172;
                }
              }
            }

            ERR_put_error(16, 0, 256, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc", 641);
            v238 = v21;
            v239 = 47;
LABEL_622:
            bssl::ssl_send_alert(v238, 2, v239);
            goto LABEL_623;
          }

          goto LABEL_623;
        }

        ERR_put_error(16, 0, 133, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc", 602);
        v238 = v21;
        goto LABEL_378;
      case 3:
        v32 = *this;
        v33 = *(*(this + 1) + 32);
        v34 = *(v33 + 64);
        if (!v34)
        {
          goto LABEL_53;
        }

        v35 = v34(*this, *(v33 + 72));
        if (v35)
        {
          if (v35 < 0)
          {
            prev_session = 8;
            goto LABEL_624;
          }

LABEL_53:
          if ((*(this + 1616) & 0x80) == 0)
          {
            goto LABEL_58;
          }

          v36 = *(v32 + 13);
          v37 = *(v36 + 752);
          if (!v37)
          {
            goto LABEL_58;
          }

          v38 = v37(v32, *(v36 + 760));
          if (!v38)
          {
            goto LABEL_58;
          }

          if (v38 == 3)
          {
            *(this + 404) &= ~0x80u;
LABEL_58:
            v39 = *(v32 + 6);
            v40 = *(v39 + 208);
            if (v40 - 769 >= 4)
            {
              if (v40 == 65276)
              {
                goto LABEL_60;
              }
            }

            else if (v40 >= 0x304)
            {
LABEL_60:
              v41 = 4;
              goto LABEL_172;
            }

            *(v39 + 256) = 3;
            v7 = 5;
LABEL_392:
            *(this + 5) = v7;
            prev_session = 1;
            goto LABEL_624;
          }

          v156 = 289;
          v157 = 682;
        }

        else
        {
          v156 = 126;
          v157 = 663;
        }

        ERR_put_error(16, 0, v156, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc", v157);
        v238 = v32;
        v239 = 80;
        goto LABEL_622;
      case 4:
        prev_session = bssl::tls13_server_handshake(this, a2, a3);
        if (prev_session == 1)
        {
          *(this + 5) = 20;
        }

        goto LABEL_624;
      case 5:
        v64 = *this;
        if (!bssl::SSL_HANDSHAKE::GetClientHello(this, &v534, __src))
        {
          goto LABEL_623;
        }

        v65 = *(this + 1);
        v66 = *(v65 + 136);
        if (v66)
        {
          v67 = *(v65 + 128);
          v68 = *this;
          v69 = *(this + 83);
          v70 = *(this + 84);
          v513 = v64;
          if ((*(*this + 130) & 0x40) == 0)
          {
            goto LABEL_93;
          }
        }

        else
        {
          v66 = 3;
          v67 = &bssl::kDefaultGroups;
          v68 = *this;
          v69 = *(this + 83);
          v70 = *(this + 84);
          v513 = v64;
          if ((*(*this + 130) & 0x40) == 0)
          {
LABEL_93:
            if (v70)
            {
              v71 = &v69[v70];
              v72 = v67;
              v73 = &v67[v66];
              goto LABEL_278;
            }

LABEL_293:
            v181 = 0;
            v187 = 0;
            v189 = v541;
            v188 = v542;
            v190 = OPENSSL_sk_new_null();
            if (!v190)
            {
              goto LABEL_738;
            }

            goto LABEL_294;
          }
        }

        if (!v70)
        {
          goto LABEL_293;
        }

        v73 = &v69[v70];
        v72 = v69;
        v69 = v67;
        v71 = &v67[v66];
LABEL_278:
        while (1)
        {
          v181 = *v69;
          v182 = *v69;
          v183 = v182 == 25497 || v182 == 4588;
          v184 = v72;
          v185 = v72;
          if (!v183)
          {
            break;
          }

          do
          {
            if (*v184 == v181)
            {
              v186 = *(*(v68 + 48) + 208);
              if (v186 - 769 >= 4)
              {
                if (v186 == 65276)
                {
                  goto LABEL_291;
                }
              }

              else if (v186 > 0x303)
              {
                goto LABEL_291;
              }
            }

            ++v184;
          }

          while (v184 != v73);
LABEL_284:
          if (++v69 == v71)
          {
            goto LABEL_293;
          }
        }

        while (*v185 != v181)
        {
          if (++v185 == v73)
          {
            goto LABEL_284;
          }
        }

LABEL_291:
        v187 = 1;
        v189 = v541;
        v188 = v542;
        v190 = OPENSSL_sk_new_null();
        if (!v190)
        {
          goto LABEL_738;
        }

LABEL_294:
        v191 = v190;
        if (!v188)
        {
LABEL_309:
          v531[0] = 0;
          v531[1] = 0;
          full_credential_list = bssl::ssl_get_full_credential_list(this, v531);
          v200 = v531[1];
          if (full_credential_list)
          {
            if (!v531[1])
            {
              v204 = bssl::choose_params(this, 0, v191, v187);
              if (v204)
              {
                goto LABEL_497;
              }

LABEL_482:
              bssl::ssl_send_alert(v513, 2, 40);
              prev_session = 0;
              goto LABEL_815;
            }

            v201 = v531[0];
            v202 = 8 * v531[1];
            while (1)
            {
              v203 = *v201;
              ERR_clear_error();
              v204 = bssl::choose_params(this, v203, v191, v187);
              if (v204)
              {
                break;
              }

              ++v201;
              v202 -= 8;
              if (!v202)
              {
                goto LABEL_482;
              }
            }

            if (v203)
            {
              v301 = atomic_load(v203);
              if (v301 != -1)
              {
                for (j = v301; j != -1; v301 = j)
                {
                  atomic_compare_exchange_strong(v203, &j, v301 + 1);
                  if (j == v301)
                  {
                    break;
                  }
                }
              }
            }

            v303 = *(this + 192);
            *(this + 192) = v203;
            if (v303)
            {
              v304 = v204;
              v305 = v205;
              SSL_CREDENTIAL_free(v303);
              v204 = v304;
              v205 = v305;
            }

LABEL_497:
            *(this + 198) = v204;
            *(this + 813) = v205;
            v306 = v540;
            if (v540 > 0x20)
            {
              goto LABEL_936;
            }

            v307 = v539;
            if (*v523 && v518 >= -*v523)
            {
              goto LABEL_935;
            }

            *v523 = 0;
            if (!v306)
            {
              goto LABEL_763;
            }

            if (v306 < 4 || (v522 - v307) < 0x10)
            {
              v321 = v522;
              v322 = v307;
            }

            else if (v306 >= 0x10)
            {
              v308 = v306 & 0x30;
              *v522 = *v307;
              if (v308 != 16)
              {
                v522[1] = *(v307 + 1);
              }

              if (v306 == v308)
              {
                goto LABEL_763;
              }

              if ((v306 & 0xC) != 0)
              {
                goto LABEL_635;
              }

              v322 = &v307[v308];
              v321 = v522 + v308;
            }

            else
            {
              v308 = 0;
LABEL_635:
              v321 = v522 + (v306 & 0x3C);
              v322 = &v307[v306 & 0x3C];
              v355 = &v307[v308];
              v356 = (v522 + v308);
              v357 = v308 - (v306 & 0x3C);
              do
              {
                v358 = *v355++;
                *v356++ = v358;
                v357 += 4;
              }

              while (v357);
              if (v306 == (v306 & 0x3C))
              {
LABEL_763:
                *(this + 1661) = v306;
                *&v524[1] = 0;
                LOBYTE(v529) = 0;
                LOBYTE(v537) = 0;
                prev_session = bssl::ssl_get_prev_session(this, &v524[1], &v529, &v537, __src);
                if (prev_session == 1)
                {
                  if (*&v524[1])
                  {
                    if ((*(*&v524[1] + 408) & 1) != 0 && (*(this + 1618) & 2) == 0)
                    {
                      ERR_put_error(16, 0, 204, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc", 785);
                      v423 = v513;
                      v424 = 40;
                      goto LABEL_802;
                    }

                    is_resumable = bssl::ssl_session_is_resumable(this, *&v524[1]);
                    v426 = *&v524[1];
                    if (is_resumable)
                    {
                      v427 = *(this + 404);
                      if (((v427 >> 17) & 1) != (*(*&v524[1] + 408) & 1))
                      {
                        *&v524[1] = 0;
                        goto LABEL_772;
                      }

LABEL_774:
                      *(this + 404) = v427 & 0xFFFEFFFF | ((v537 & 1) << 16);
                      *&v524[1] = 0;
                      v428 = *(v513 + 11);
                      *(v513 + 11) = v426;
                      if (v428)
                      {
                        SSL_SESSION_free(v428);
                      }

                      *(*(v513 + 6) + 220) |= 0x20u;
                      *(this + 404) |= 0x800000u;
LABEL_783:
                      v434 = *(*(v513 + 13) + 512);
                      if (v434 && !v434(__src))
                      {
                        ERR_put_error(16, 0, 133, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc", 824);
                        goto LABEL_800;
                      }

                      if (!*(v513 + 11))
                      {
                        v435 = *(this + 198);
                        v436 = *(this + 194);
                        *(v436 + 200) = v435;
                        if ((*(v435 + 20) & 2) != 0)
                        {
                          *(v436 + 6) = v181;
                        }

                        if ((*(*(this + 1) + 268) & 1) != 0 && (*(v435 + 24) & 7) != 0)
                        {
                          *(this + 404) |= 0x20u;
                        }

                        else
                        {
                          *(this + 404) &= ~0x20u;
                          *(v436 + 176) = 0;
                        }
                      }

                      v524[0] = 50;
                      if (bssl::ssl_negotiate_alpn(this, v524, __src))
                      {
                        v438 = bssl::ssl_protocol_version(v513, v437);
                        if (bssl::SSLTranscript::InitHash((this + 408), v438, *(this + 198)))
                        {
                          if ((*(this + 404) & 0x80020) == 0)
                          {
                            bssl::SSLTranscript::FreeBuffer((this + 408));
                          }

                          if (v534 & 1) != 0 || (bssl::SSLTranscript::Update(this + 408, *(&v535 + 1), v536))
                          {
                            (*(*v513 + 32))(v513);
                            *(this + 5) = 6;
                            prev_session = 1;
                            goto LABEL_804;
                          }
                        }

LABEL_800:
                        v423 = v513;
                        v424 = 80;
                      }

                      else
                      {
                        v424 = v524[0];
                        v423 = v513;
                      }

LABEL_802:
                      bssl::ssl_send_alert(v423, 2, v424);
LABEL_803:
                      prev_session = 0;
                      goto LABEL_804;
                    }

                    *&v524[1] = 0;
                    if (v426)
                    {
LABEL_772:
                      SSL_SESSION_free(v426);
                      v426 = *&v524[1];
                      if (*&v524[1])
                      {
                        v427 = *(this + 404);
                        goto LABEL_774;
                      }
                    }
                  }

                  *(this + 404) = *(this + 404) & 0xFFFEFFFF | ((v529 & 1) << 16);
                  bssl::ssl_set_session(v513, 0, v422);
                  if (!bssl::ssl_get_new_session(this, v429))
                  {
                    goto LABEL_803;
                  }

                  if ((*(this + 1618) & 1) != 0 || (*(*(v513 + 13) + 292) & 2) == 0)
                  {
                    goto LABEL_783;
                  }

                  v430 = *(this + 194);
                  v433 = *(v430 + 91);
                  v431 = (v430 + 91);
                  v432 = v433;
                  if (v433 < 0x21uLL || 32 - v432 > (v431 - 1))
                  {
                    *v431 = 32;
                    BCM_rand_bytes_with_additional_data(v431 - 32, 0x20uLL, BCM_rand_bytes::kZeroAdditionalData);
                    goto LABEL_783;
                  }

LABEL_935:
                  __break(1u);
LABEL_936:
                  abort();
                }

LABEL_804:
                v439 = *&v524[1];
                *&v524[1] = 0;
                if (v439)
                {
                  v440 = atomic_load(v439);
                  if (v440 != -1)
                  {
                    while (1)
                    {
                      if (!v440)
                      {
                        goto LABEL_936;
                      }

                      v441 = v440;
                      atomic_compare_exchange_strong(&v439->ssl_version, &v441, v440 - 1);
                      if (v441 == v440)
                      {
                        break;
                      }

                      v440 = v441;
                      if (v441 == -1)
                      {
                        goto LABEL_814;
                      }
                    }

                    if (v440 == 1)
                    {
                      ssl_session_st::~ssl_session_st(v439);
                      tlsext_tick_lifetime_hint = v439[-1].tlsext_tick_lifetime_hint;
                      p_tlsext_tick_lifetime_hint = &v439[-1].tlsext_tick_lifetime_hint;
                      v444 = tlsext_tick_lifetime_hint + 8;
                      if (tlsext_tick_lifetime_hint != -8)
                      {
                        bzero(p_tlsext_tick_lifetime_hint, v444);
                      }

                      free(p_tlsext_tick_lifetime_hint);
                    }
                  }
                }

LABEL_814:
                v200 = v531[1];
LABEL_815:
                if (!v200)
                {
LABEL_819:
                  if (v531[0])
                  {
                    v447 = v531[0] - 8;
                    v446 = *(v531[0] - 1);
                    if (v446 != -8)
                    {
                      bzero(v531[0] - 8, v446 + 8);
                    }

                    free(v447);
                  }

                  v448 = *(v191 + 8);
                  if (v448)
                  {
                    v450 = *(v448 - 8);
                    v449 = (v448 - 8);
                    v451 = v450 + 8;
                    if (v450 != -8)
                    {
                      bzero(v449, v451);
                    }

                    free(v449);
                  }

                  v452 = *(v191 - 8);
                  v292 = (v191 - 8);
                  v453 = v452 + 8;
                  if (v452 != -8)
                  {
                    bzero(v292, v453);
                  }

                  goto LABEL_829;
                }

                v445 = v531[0] - 8;
                while (1)
                {
                  v445 += 8;
                  if (!v445)
                  {
                    goto LABEL_935;
                  }

                  if (!--v200)
                  {
                    goto LABEL_819;
                  }
                }
              }
            }

            v420 = &v307[v306];
            do
            {
              v421 = *v322++;
              *v321++ = v421;
            }

            while (v322 != v420);
            goto LABEL_763;
          }

          prev_session = 0;
          goto LABEL_815;
        }

        while (2)
        {
          if (v188 <= 1)
          {
            v282 = 16;
            v283 = 148;
            v284 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc";
            v285 = 143;
            goto LABEL_466;
          }

          cipher_by_value = SSL_get_cipher_by_value(bswap32(*v189) >> 16);
          if (!cipher_by_value)
          {
            goto LABEL_308;
          }

          v195 = *v191;
          if (*v191 < 0x7FFFFFFFuLL)
          {
            v196 = cipher_by_value;
            v197 = *(v191 + 24);
            if (v197 > v195 + 1)
            {
              v192 = *(v191 + 8);
              v193 = *v191;
LABEL_297:
              v192[v195] = v196;
              *(v191 + 16) = 0;
              *v191 = v193 + 1;
              if (v193 == -1)
              {
                goto LABEL_467;
              }
            }

            else
            {
              v192 = OPENSSL_realloc(*(v191 + 8), 16 * v197);
              if (!v192)
              {
                goto LABEL_467;
              }

              *(v191 + 8) = v192;
              *(v191 + 24) = 2 * v197;
              v193 = *v191;
              v198 = *v191 - v195;
              if (*v191 > v195)
              {
                if (8 * v198)
                {
                  memmove(&v192[v195 + 1], &v192[v195], 8 * v198);
                  v193 = *v191;
                  v192 = *(v191 + 8);
                }

                goto LABEL_297;
              }

              v192[v193] = v196;
              *(v191 + 16) = 0;
              *v191 = v193 + 1;
              if (v193 == -1)
              {
                goto LABEL_467;
              }
            }

LABEL_308:
            ++v189;
            v188 -= 2;
            if (!v188)
            {
              goto LABEL_309;
            }

            continue;
          }

          break;
        }

        v282 = 14;
        v283 = 69;
        v284 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc";
        v285 = 139;
LABEL_466:
        ERR_put_error(v282, 0, v283, v284, v285);
LABEL_467:
        v288 = *(v191 + 8);
        if (v288)
        {
          v290 = *(v288 - 8);
          v289 = (v288 - 8);
          v291 = v290 + 8;
          if (v290 != -8)
          {
            bzero(v289, v291);
          }

          free(v289);
        }

        v293 = *(v191 - 8);
        v292 = (v191 - 8);
        v294 = v293 + 8;
        if (v293 != -8)
        {
          bzero(v292, v294);
        }

        prev_session = 0;
LABEL_829:
        v328 = v292;
LABEL_830:
        free(v328);
LABEL_624:
        if (*(this + 5) != v4)
        {
          v354 = *(*this + 96);
          if (v354 || (v354 = *(*(*this + 104) + 384)) != 0)
          {
            v354();
          }
        }

        if (prev_session == 1)
        {
          continue;
        }

        return prev_session;
      case 6:
        v82 = *(this + 404);
        if ((v82 & 0x1000000) != 0 && (*(*(this + 198) + 20) & 2) == 0)
        {
          v82 &= ~0x1000000u;
          *(this + 404) = v82;
        }

        v83 = *this;
        v84 = *(*this + 88);
        if (v84 && !*(v84 + 344))
        {
          v82 &= ~0x1000000u;
          *(this + 404) = v82;
          v85 = *(this + 201);
          if (!v85)
          {
            goto LABEL_238;
          }
        }

        else
        {
          v85 = *(this + 201);
          if (!v85)
          {
            goto LABEL_238;
          }
        }

        if ((v82 & 0x100000) == 0 && v85[1] == 32)
        {
          v86 = v83[6];
          v87 = *(*v85 + 16);
          *(v86 + 16) = **v85;
          *(v86 + 32) = v87;
LABEL_251:
          if (*(this + 15) >= 0x304u)
          {
            v166 = v83[6];
            v167 = *(v166 + 208);
            if (v167 == 65277 || (v168 = "DOWNGRD", v167 == 771))
            {
              v168 = &bssl::kJDK11DowngradeRandom;
              if ((*(this + 1618) & 0x40) == 0)
              {
                v168 = &bssl::kTLS13DowngradeRandom;
              }
            }

            *(v166 + 40) = *v168;
          }

          v170 = v522;
          v169 = v523;
          if (!v83[11])
          {
            v171 = *(this + 194);
            v170 = (v171 + 59);
            v169 = (v171 + 91);
          }

          v172 = *v169;
          memset(__src, 0, sizeof(__src));
          if ((*(*v83 + 88))(v83, __src, &v534, 2))
          {
            v173 = *(v83[6] + 208);
            v531[0] = 0;
            if (CBB_add_space(&v534, v531, 2))
            {
              *(v531[0] + 1) = v173;
              *v531[0] = HIBYTE(v173);
              v174 = v83[6];
              v531[0] = 0;
              if (CBB_add_space(&v534, v531, 32))
              {
                v175 = v531[0];
                v176 = *(v174 + 32);
                *v531[0] = *(v174 + 16);
                v175[1] = v176;
                if (CBB_add_u8_length_prefixed(&v534, v531))
                {
                  *&v524[1] = 0;
                  if (CBB_add_space(v531, &v524[1], v172))
                  {
                    if (v172)
                    {
                      memcpy(*&v524[1], v170, v172);
                    }

                    v177 = *(*(this + 198) + 16);
                    *&v524[1] = 0;
                    if (CBB_add_space(&v534, &v524[1], 2))
                    {
                      *(*&v524[1] + 1) = v177;
                      **&v524[1] = BYTE1(v177);
                      *&v524[1] = 0;
                      if (CBB_add_space(&v534, &v524[1], 1))
                      {
                        **&v524[1] = 0;
                        if (bssl::ssl_add_serverhello_tlsext(this, &v534))
                        {
                          bssl::ssl_add_message_cbb(v83, __src);
                          if (v178)
                          {
                            if (v83[11])
                            {
                              if ((*(this + 1618) & 0x10) != 0)
                              {
                                prev_session = 17;
                                goto LABEL_550;
                              }

                              v179 = 19;
                            }

                            else
                            {
                              v179 = 7;
                            }

                            *(this + 5) = v179;
                            prev_session = 1;
LABEL_550:
                            if (LOBYTE(__src[0].tv_usec))
                            {
                              goto LABEL_624;
                            }

                            if ((__src[2].tv_usec & 1) == 0)
                            {
                              goto LABEL_624;
                            }

                            tv_sec = __src[1].tv_sec;
                            if (!__src[1].tv_sec)
                            {
                              goto LABEL_624;
                            }

                            goto LABEL_553;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          v180 = 957;
          goto LABEL_548;
        }

LABEL_238:
        v158 = *(v83[13] + 728);
        if (v158)
        {
          v158(0, __src);
        }

        else
        {
          gettimeofday(__src, 0);
        }

        *(v83[6] + 16) = bswap32(__src[0].tv_sec & ~(__src[0].tv_sec >> 63));
        BCM_rand_bytes_with_additional_data((v83[6] + 20), 0x1CuLL, BCM_rand_bytes::kZeroAdditionalData);
        if (v85 && (*(this + 1618) & 0x10) != 0)
        {
          v159 = v83[6];
          v161 = *v85;
          v160 = v85[1];
          if (v160 && v160 - 1 >= -v161)
          {
            goto LABEL_935;
          }

          if (v161)
          {
            v163 = *(v161 - 8);
            v162 = (v161 - 8);
            v164 = v163 + 8;
            if (v163 != -8)
            {
              bzero(v162, v164);
            }

            free(v162);
          }

          *v85 = 0;
          v85[1] = 0;
          v165 = malloc_type_malloc(0x28uLL, 0xB4E622C9uLL);
          if (!v165)
          {
            ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
            prev_session = 0;
            *v85 = 0;
            goto LABEL_624;
          }

          *v165 = 32;
          *v85 = (v165 + 8);
          v85[1] = 32;
          v165[8] = v159[16];
          v165[9] = v159[17];
          v165[10] = v159[18];
          v165[11] = v159[19];
          v165[12] = v159[20];
          v165[13] = v159[21];
          v165[14] = v159[22];
          v165[15] = v159[23];
          v165[16] = v159[24];
          v165[17] = v159[25];
          v165[18] = v159[26];
          v165[19] = v159[27];
          v165[20] = v159[28];
          v165[21] = v159[29];
          v165[22] = v159[30];
          v165[23] = v159[31];
          v165[24] = v159[32];
          v165[25] = v159[33];
          v165[26] = v159[34];
          v165[27] = v159[35];
          v165[28] = v159[36];
          v165[29] = v159[37];
          v165[30] = v159[38];
          v165[31] = v159[39];
          v165[32] = v159[40];
          v165[33] = v159[41];
          v165[34] = v159[42];
          v165[35] = v159[43];
          v165[36] = v159[44];
          v165[37] = v159[45];
          v165[38] = v159[46];
          v165[39] = v159[47];
        }

        goto LABEL_251;
      case 7:
        v42 = *this;
        memset(__src, 0, sizeof(__src));
        if ((*(*(this + 198) + 24) & 7) == 0)
        {
          goto LABEL_64;
        }

        bssl::ssl_send_tls12_certificate(this, a2);
        if (!v43)
        {
          goto LABEL_549;
        }

        if ((*(this + 1616) & 0x40) == 0)
        {
          goto LABEL_64;
        }

        if ((*(*v42 + 88))(v42, __src, &v534, 22))
        {
          *&v524[1] = 0;
          if (CBB_add_space(&v534, &v524[1], 1))
          {
            **&v524[1] = 1;
            if (CBB_add_u24_length_prefixed(&v534, v531))
            {
              v211 = *(*(this + 192) + 80);
              v212 = *(v211 + 8);
              v213 = *(v211 + 16);
              *&v524[1] = 0;
              if (CBB_add_space(v531, &v524[1], v213))
              {
                if (v213)
                {
                  memcpy(*&v524[1], v212, v213);
                }

                bssl::ssl_add_message_cbb(v42, __src);
                if (v214)
                {
LABEL_64:
                  v44 = *(this + 198);
                  v46 = *(v44 + 20);
                  v45 = *(v44 + 24);
                  if ((v46 & 2) != 0 || (v45 & 8) != 0 && *(*(this + 1) + 56))
                  {
                    memset(__src, 0, sizeof(__src));
                    v47 = malloc_type_malloc(0xC8uLL, 0xB4E622C9uLL);
                    if (!v47)
                    {
                      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
                      goto LABEL_549;
                    }

                    *v47 = 192;
                    LOBYTE(__src[0].tv_usec) = 0;
                    __src[0].tv_sec = 0;
                    __src[1].tv_sec = (v47 + 1);
                    *&__src[1].tv_usec = xmmword_273BB60E0;
                    LOBYTE(__src[2].tv_usec) = __src[2].tv_usec & 0xFC | 1;
                    v48 = v42[6];
                    v531[0] = 0;
                    if (!CBB_add_space(__src, v531, 32))
                    {
                      goto LABEL_549;
                    }

                    v49 = v531[0];
                    v50 = *(v48 + 64);
                    *v531[0] = *(v48 + 48);
                    v49[1] = v50;
                    v51 = v42[6];
                    v531[0] = 0;
                    if (!CBB_add_space(__src, v531, 32))
                    {
                      goto LABEL_549;
                    }

                    v52 = v531[0];
                    v53 = *(v51 + 32);
                    *v531[0] = *(v51 + 16);
                    v52[1] = v53;
                    if ((v45 & 8) != 0)
                    {
                      v286 = *(*(this + 1) + 56);
                      if (v286)
                      {
                        v287 = strlen(v286);
                      }

                      else
                      {
                        v287 = 0;
                      }

                      if (!CBB_add_u16_length_prefixed(__src, &v534))
                      {
                        goto LABEL_549;
                      }

                      v318 = *(*(this + 1) + 56);
                      v531[0] = 0;
                      if (!CBB_add_space(&v534, v531, v287))
                      {
                        goto LABEL_549;
                      }

                      if (v287)
                      {
                        memcpy(v531[0], v318, v287);
                      }
                    }

                    if ((v46 & 2) != 0)
                    {
                      bssl::SSLKeyShare::Create(*(*(this + 194) + 6), v531);
                      v296 = v531[0];
                      v297 = *(this + 49);
                      *(this + 49) = v531[0];
                      if (v297)
                      {
                        (**v297)(v297);
                        v299 = *(v297 - 1);
                        v298 = v297 - 1;
                        v300 = v299 + 8;
                        if (v299 != -8)
                        {
                          bzero(v298, v300);
                        }

                        free(v298);
                        v296 = *(this + 49);
                      }

                      if (!v296)
                      {
                        goto LABEL_549;
                      }

                      v531[0] = 0;
                      if (!CBB_add_space(__src, v531, 1))
                      {
                        goto LABEL_549;
                      }

                      *v531[0] = 3;
                      if (!CBB_add_u16(__src, *(*(this + 194) + 6)) || !CBB_add_u8_length_prefixed(__src, &v534))
                      {
                        goto LABEL_549;
                      }

                      v349 = *(this + 201);
                      if (v349 && (*(this + 1618) & 0x10) == 0 && *(v349 + 184) == *(*(this + 194) + 6) && *(v349 + 200) && (v350 = *(v349 + 216)) != 0 && (v531[0] = *(v349 + 208), v531[1] = v350, (*(**(this + 49) + 56))(*(this + 49), v531)))
                      {
                        v351 = *(v349 + 192);
                        v352 = *(v349 + 200);
                        v531[0] = 0;
                        if (!CBB_add_space(&v534, v531, v352))
                        {
                          goto LABEL_549;
                        }

                        if (v352)
                        {
                          memcpy(v531[0], v351, v352);
                        }
                      }

                      else
                      {
                        if (!(*(**(this + 49) + 24))(*(this + 49), &v534))
                        {
                          goto LABEL_549;
                        }

                        if (v349 && (*(this + 1618) & 0x10) != 0)
                        {
                          v532 = 0u;
                          v533 = 0u;
                          *v531 = 0u;
                          v379 = v535;
                          if (BYTE8(v534))
                          {
                            v380 = *(&v535 + 1) + v536;
                            v379 = v380 + *v535;
                            v381 = *(v535 + 8) - v380;
                          }

                          else
                          {
                            v381 = *(&v535 + 1);
                          }

                          if (!bssl::Array<unsigned char>::CopyFrom(v349 + 192, v379, v381) || !CBB_init(v531, 0x20uLL) || !(*(**(this + 49) + 48))(*(this + 49), v531) || !bssl::CBBFinishArray(v531, (v349 + 208)))
                          {
                            CBB_cleanup(v531);
                            goto LABEL_549;
                          }

                          *(v349 + 184) = *(*(this + 194) + 6);
                          CBB_cleanup(v531);
                        }
                      }
                    }

                    if (!bssl::CBBFinishArray(__src, v521))
                    {
                      prev_session = 0;
                      goto LABEL_550;
                    }
                  }

                  *(this + 5) = 8;
                  prev_session = 1;
                  goto LABEL_550;
                }
              }
            }
          }
        }

        ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc", 994);
        goto LABEL_549;
      case 8:
        if (!*(this + 181))
        {
          v7 = 9;
          goto LABEL_392;
        }

        v91 = *this;
        memset(__src, 0, sizeof(__src));
        if (!(*(*v91 + 88))(v91, __src, &v534, 12))
        {
          goto LABEL_549;
        }

        v92 = *(this + 181);
        v93 = v92 - 64;
        if (v92 < 0x40)
        {
          goto LABEL_549;
        }

        v94 = *v521;
        *&v524[1] = 0;
        if (!CBB_add_space(&v534, &v524[1], v93))
        {
          goto LABEL_549;
        }

        if (v93)
        {
          memcpy(*&v524[1], (v94 + 64), v93);
        }

        if ((*(*(this + 198) + 24) & 7) == 0)
        {
          goto LABEL_579;
        }

        LOWORD(v537) = 0;
        if (bssl::tls1_choose_signature_algorithm(this, *(this + 192), &v537))
        {
          v95 = *(*(v91 + 6) + 208);
          if (v95 - 769 >= 4)
          {
            if (v95 - 65276 >= 2)
            {
LABEL_558:
              v329 = *(*(this + 192) + 8);
              if (v329 && (v330 = *(v329 + 16)) != 0 && (v331 = *(v330 + 120)) != 0)
              {
                v332 = v331();
              }

              else
              {
                v332 = 0;
              }

              *&v524[1] = 0;
              if (!CBB_add_u16_length_prefixed(&v534, v531))
              {
                goto LABEL_549;
              }

              if (!CBB_reserve(v531, &v524[1], v332))
              {
                goto LABEL_549;
              }

              v529 = 0;
              v333 = bssl::ssl_private_key_sign(this, *&v524[1], &v529, v332, v537, *(this + 180), *(this + 181));
              switch(v333)
              {
                case 2:
                  goto LABEL_549;
                case 1:
                  prev_session = 9;
                  goto LABEL_550;
                case 0:
                  prev_session = 0;
                  v334 = (v532 + 8);
                  if (!LOBYTE(v531[1]))
                  {
                    v334 = &v532 + 1;
                  }

                  v335 = &v529[*v334];
                  v336 = __CFADD__(*v334, v529);
                  if (v531[0] || v336)
                  {
                    goto LABEL_550;
                  }

                  v337 = &v533;
                  if (LOBYTE(v531[1]))
                  {
                    v337 = (v532 + 16);
                  }

                  if (v335 > *v337)
                  {
LABEL_549:
                    prev_session = 0;
                    goto LABEL_550;
                  }

                  *v334 = v335;
                  break;
              }

LABEL_579:
              *(this + 404) |= 0x800000u;
              bssl::ssl_add_message_cbb(v91, __src);
              if (v338)
              {
                v339 = *(this + 180);
                v340 = *(this + 181);
                if (v340 && v340 - 1 >= -v339)
                {
                  goto LABEL_935;
                }

                if (v339)
                {
                  v342 = *(v339 - 8);
                  v341 = (v339 - 8);
                  v343 = v342 + 8;
                  if (v342 != -8)
                  {
                    bzero(v341, v343);
                  }

                  free(v341);
                }

                *v521 = 0;
                v521[1] = 0;
                prev_session = 1;
                *(this + 5) = 9;
                goto LABEL_550;
              }

              goto LABEL_549;
            }
          }

          else if (v95 < 0x303)
          {
            goto LABEL_558;
          }

          if (CBB_add_u16(&v534, v537))
          {
            goto LABEL_558;
          }

          ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc", 1114);
          v295 = 80;
        }

        else
        {
          v295 = 40;
        }

        bssl::ssl_send_alert(v91, 2, v295);
        goto LABEL_549;
      case 9:
        v18 = *(this + 404);
        if ((v18 & 0x100000) != 0)
        {
          prev_session = 17;
          goto LABEL_624;
        }

        v19 = *this;
        memset(__src, 0, sizeof(__src));
        if ((v18 & 0x20) == 0)
        {
          goto LABEL_30;
        }

        if (!(*(*v19 + 88))(v19, __src, &v534, 13))
        {
          goto LABEL_547;
        }

        if (!CBB_add_u8_length_prefixed(&v534, v531))
        {
          goto LABEL_547;
        }

        v529 = 0;
        if (!CBB_add_space(v531, &v529, 1))
        {
          goto LABEL_547;
        }

        *v529 = 1;
        v529 = 0;
        if (!CBB_add_space(v531, &v529, 1))
        {
          goto LABEL_547;
        }

        *v529 = 64;
        v155 = *(v19[6] + 208);
        if (v155 - 769 >= 4)
        {
          if (v155 - 65276 >= 2)
          {
LABEL_545:
            if (bssl::marshal_CA_names(*(*(this + 1) + 80), *(*(*this + 104) + 392), &v534))
            {
              bssl::ssl_add_message_cbb(v19, __src);
              if (v323)
              {
LABEL_30:
                if ((*(*v19 + 88))(v19, __src, &v534, 14))
                {
                  bssl::ssl_add_message_cbb(v19, __src);
                  if (v20)
                  {
                    *(this + 5) = 10;
                    prev_session = 4;
                    goto LABEL_550;
                  }
                }

                v180 = 1183;
LABEL_548:
                ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc", v180);
                goto LABEL_549;
              }
            }

LABEL_547:
            v180 = 1175;
            goto LABEL_548;
          }
        }

        else if (v155 < 0x303)
        {
          goto LABEL_545;
        }

        if (!CBB_add_u16_length_prefixed(&v534, &v524[1]) || !bssl::tls12_add_verify_sigalgs(this, &v524[1]))
        {
          goto LABEL_547;
        }

        goto LABEL_545;
      case 10:
        v54 = *this;
        v90 = *(this + 404);
        if ((v90 & 0x80000) != 0 && *(*(this + 198) + 20) == 2)
        {
          goto LABEL_118;
        }

        if ((v90 & 0x20) == 0)
        {
          v41 = 11;
          goto LABEL_172;
        }

        if (!(*(*v54 + 24))(*this, __src))
        {
          goto LABEL_196;
        }

        if (BYTE1(__src[0].tv_sec) != 11)
        {
          goto LABEL_372;
        }

        if ((__src[0].tv_sec & 1) == 0 && !bssl::SSLTranscript::Update(this + 408, *&__src[1].tv_usec, __src[2].tv_sec))
        {
          goto LABEL_623;
        }

        v534 = *&__src[0].tv_usec;
        LOBYTE(v531[0]) = 50;
        v128 = *(this + 194);
        if ((*(*(this + 1) + 269) & 0x20) != 0)
        {
          v129 = (v128 + 264);
        }

        else
        {
          v129 = 0;
        }

        if ((bssl::ssl_parse_cert_chain(v531, (v128 + 136), v520, v129, &v534, *(*(v54 + 13) + 736)) & 1) == 0)
        {
          v239 = LOBYTE(v531[0]);
          v238 = v54;
          goto LABEL_622;
        }

        if (*(&v534 + 1) || ((*(*(*(v54 + 13) + 16) + 48))(*(this + 194)) & 1) == 0)
        {
          v55 = 137;
          v56 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc";
          v57 = 1228;
          goto LABEL_620;
        }

        v130 = *(this + 194);
        v131 = *(v130 + 136);
        if (v131 && *v131)
        {
          if ((*(*(this + 1) + 269) & 0x20) != 0)
          {
            *(v130 + 408) |= 2u;
          }
        }

        else
        {
          bssl::SSLTranscript::FreeBuffer((this + 408));
          if ((*(*(this + 1) + 268) & 2) != 0)
          {
            ERR_put_error(16, 0, 192, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc", 1239);
            v238 = v54;
LABEL_378:
            v239 = 40;
            goto LABEL_622;
          }

          *(*(this + 194) + 176) = 0;
        }

        (*(*v54 + 32))(v54);
        v41 = 11;
        goto LABEL_172;
      case 11:
        v8 = *(*(this + 194) + 136);
        if (!v8 || !*v8)
        {
          goto LABEL_137;
        }

        v9 = bssl::ssl_verify_peer_cert(this, a2);
        if (v9 == 1)
        {
          goto LABEL_623;
        }

        if (v9 == 2)
        {
          prev_session = 16;
          goto LABEL_624;
        }

LABEL_137:
        v7 = 12;
        goto LABEL_392;
      case 12:
        v10 = *this;
        if (!(*(**this + 24))(*this, &v524[1]))
        {
          goto LABEL_196;
        }

        if (v524[2] == 16)
        {
          v11 = v525;
          v12 = v526;
          v13 = *(this + 198);
          v14 = *(v13 + 20);
          v15 = *(v13 + 24);
          if ((v15 & 8) == 0)
          {
            v529 = 0;
            v530 = 0;
            if ((v14 & 1) == 0)
            {
LABEL_25:
              if ((v14 & 2) == 0)
              {
                if ((v14 & 4) == 0)
                {
                  ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc", 1414);
                  v16 = v10;
                  v17 = 40;
LABEL_662:
                  bssl::ssl_send_alert(v16, 2, v17);
LABEL_663:
                  prev_session = 0;
                  goto LABEL_664;
                }

                goto LABEL_707;
              }

              if (v12 && v12 - 1 == *v11)
              {
                LOBYTE(__src[0].tv_sec) = 50;
                if (!(*(**(this + 49) + 40))(*(this + 49), &v529, __src, v11 + 1, v12 - 1))
                {
                  bssl::ssl_send_alert(v10, 2, LOBYTE(__src[0].tv_sec));
                  goto LABEL_740;
                }

                std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:sn200100](this + 49, 0);
                std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:sn200100](this + 50, 0);
LABEL_707:
                if ((v15 & 8) == 0)
                {
LABEL_708:
                  if ((v524[1] & 1) == 0 && !bssl::SSLTranscript::Update(this + 408, v527, v528))
                  {
                    goto LABEL_663;
                  }

                  v391 = *(this + 194);
                  v394 = *(v391 + 58);
                  v392 = (v391 + 58);
                  v393 = v394;
                  if (v394 >= 0x31uLL && 48 - v393 <= &v392[-1].u64[1] + 7)
                  {
                    goto LABEL_935;
                  }

                  v392->i8[0] = 48;
                  if (!bssl::tls1_generate_master_secret(this, v392 - 3, 48, v529, v530))
                  {
                    goto LABEL_663;
                  }

                  *(*(this + 194) + 408) = *(*(this + 194) + 408) & 0xFE | ((*(this + 404) & 0x20000) != 0);
                  *(this + 404) |= 0x800000u;
                  (*(*v10 + 32))(v10);
                  *(this + 5) = 13;
                  prev_session = 1;
LABEL_664:
                  tv_sec = v529;
                  if (v530 && v530 - 1 >= -v529)
                  {
                    goto LABEL_935;
                  }

                  if (!v529)
                  {
                    goto LABEL_624;
                  }

LABEL_553:
                  v326 = *(tv_sec - 1);
                  v325 = tv_sec - 8;
                  v327 = v326 + 8;
                  if (v326 != -8)
                  {
                    bzero(v325, v327);
                  }

                  v328 = v325;
                  goto LABEL_830;
                }

                v395 = *(*(this + 1) + 72);
                if (!v395)
                {
                  ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc", 1423);
                  v16 = v10;
                  v17 = 80;
                  goto LABEL_662;
                }

                v396 = v395(v10, *(*(this + 194) + 128), __src, 256, v11);
                if (v396 >= 0x101)
                {
                  ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc", 1433);
                  v17 = 80;
LABEL_743:
                  v16 = v10;
                  goto LABEL_662;
                }

                if (!v396)
                {
                  ERR_put_error(16, 0, 195, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc", 1438);
                  v17 = 115;
                  goto LABEL_743;
                }

                if ((v14 & 4) != 0)
                {
                  v397 = v396;
                  v398 = bssl::Array<unsigned char>::Init(&v529, v396);
                  v396 = v397;
                  if (!v398)
                  {
                    goto LABEL_663;
                  }
                }

                v535 = 0u;
                v536 = 0u;
                v534 = 0u;
                v399 = v396;
                if (CBB_init(&v534, v530 + v396 + 4))
                {
                  if (CBB_add_u16_length_prefixed(&v534, v531))
                  {
                    v400 = v529;
                    v401 = v530;
                    v537 = 0;
                    if (CBB_add_space(v531, &v537, v530))
                    {
                      if (v401)
                      {
                        memcpy(v537, v400, v401);
                      }

                      if (CBB_add_u16_length_prefixed(&v534, v531))
                      {
                        v537 = 0;
                        if (CBB_add_space(v531, &v537, v399))
                        {
                          memcpy(v537, __src, v399);
                          v402 = bssl::CBBFinishArray(&v534, &v529);
                          CBB_cleanup(&v534);
                          if (!v402)
                          {
                            goto LABEL_663;
                          }

                          goto LABEL_708;
                        }
                      }
                    }
                  }
                }

                CBB_cleanup(&v534);
LABEL_740:
                prev_session = 0;
                goto LABEL_664;
              }

              v317 = 1398;
LABEL_661:
              ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc", v317);
              v16 = v10;
              v17 = 50;
              goto LABEL_662;
            }

LABEL_652:
            v364 = v12 - 2;
            if (v12 < 2 || (v366 = *v11, v365 = v11 + 2, v364 != __rev16(v366)))
            {
              v317 = 1322;
              goto LABEL_661;
            }

            v367 = *(*(this + 192) + 8);
            if (v367 && (v368 = *(v367 + 16)) != 0 && (v369 = *(v368 + 120)) != 0)
            {
              v370 = v365;
              v371 = v369();
              if (v371)
              {
                v372 = v371;
                v514 = v371;
                v373 = OPENSSL_malloc(v371);
                if (!v373)
                {
                  goto LABEL_740;
                }

                v374 = v373;
                v509 = v372;
                v375 = 0;
                v365 = v370;
                v376 = v514;
              }

              else
              {
                v376 = 0;
                v509 = 0;
                v374 = 0;
                v375 = 1;
                v365 = v370;
              }
            }

            else
            {
              v376 = 0;
              v509 = 0;
              v374 = 0;
              v375 = 1;
            }

            __src[0].tv_sec = 0;
            v515 = v376;
            v377 = bssl::ssl_private_key_decrypt(this, v374, __src, v376, v365, v364);
            if (v377 == 2)
            {
              goto LABEL_695;
            }

            if (v377 == 1)
            {
              prev_session = 9;
LABEL_696:
              if (v375)
              {
                if (v374)
                {
                  v385 = *(v374 - 8);
                  v384 = (v374 - 8);
                  v386 = v385 + 8;
                  if (v385 != -8)
                  {
                    bzero(v384, v386);
                  }

                  free(v384);
                }

                goto LABEL_664;
              }

              v387 = 0;
              if (v515 - 1 >= -v374)
              {
                goto LABEL_935;
              }

              goto LABEL_702;
            }

            if (__src[0].tv_sec != v515)
            {
              v378 = 1349;
              goto LABEL_694;
            }

            if (!bssl::Array<unsigned char>::InitForOverwrite(&v529, 0x30uLL))
            {
LABEL_695:
              prev_session = 0;
              goto LABEL_696;
            }

            BCM_rand_bytes_with_additional_data(v529, v530, BCM_rand_bytes::kZeroAdditionalData);
            if (__src[0].tv_sec < v530 + 11)
            {
              v378 = 1366;
LABEL_694:
              ERR_put_error(16, 0, 138, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc", v378);
              bssl::ssl_send_alert(v10, 2, 51);
              goto LABEL_695;
            }

            if (v509 == 1)
            {
              goto LABEL_936;
            }

            v473 = v515;
            if (!v509)
            {
              goto LABEL_936;
            }

            v474 = __src[0].tv_sec - v530;
            v475 = (((*(v374 + 1) ^ 2) - 1) & (*v374 - 1)) >> 63;
            v476 = __src[0].tv_sec - v530 - 1;
            if (v476 < 3)
            {
              v479 = (((*(v374 + 1) ^ 2) - 1) & (*v374 - 1)) >> 63;
            }

            else
            {
              if (v515 - 2 <= v474 - 4)
              {
                goto LABEL_936;
              }

              v477 = v474 - 3;
              if (v474 - 3 < 8)
              {
                v478 = 2;
                goto LABEL_907;
              }

              if (v477 < 0x20)
              {
                v481 = 0;
                v479 = (((*(v374 + 1) ^ 2) - 1) & (*v374 - 1)) >> 63;
                goto LABEL_888;
              }

              v481 = v477 & 0xFFFFFFFFFFFFFFE0;
              v483 = (v374 + 18);
              v484 = 0uLL;
              v485 = v477 & 0xFFFFFFFFFFFFFFE0;
              v486 = 0uLL;
              do
              {
                v484 = vorrq_s8(v484, vceqzq_s8(v483[-1]));
                v486 = vorrq_s8(v486, vceqzq_s8(*v483));
                v483 += 2;
                v485 -= 32;
              }

              while (v485);
              if (vmaxvq_u8(vcltzq_s8(vshlq_n_s8(vorrq_s8(v486, v484), 7uLL))))
              {
                LOBYTE(v479) = 0;
              }

              else
              {
                LOBYTE(v479) = (((*(v374 + 1) ^ 2) - 1) & (*v374 - 1)) >> 63;
              }

              if (v477 != v481)
              {
                if ((v477 & 0x18) == 0)
                {
                  v478 = v481 | 2;
                  LOBYTE(v475) = v479;
                  v473 = v515;
LABEL_907:
                  v493 = v530 + v478 - __src[0].tv_sec + 1;
                  v494 = (v374 + v478);
                  LOBYTE(v479) = v475;
                  do
                  {
                    if (!*v494++)
                    {
                      LOBYTE(v479) = 0;
                    }

                    v117 = __CFADD__(v493++, 1);
                  }

                  while (!v117);
                  goto LABEL_912;
                }

LABEL_888:
                v478 = v477 & 0xFFFFFFFFFFFFFFF8 | 2;
                v487 = vdup_n_s8(v479 != v475);
                v488 = (v374 + v481 + 2);
                v489 = v481 - (v477 & 0xFFFFFFFFFFFFFFF8);
                do
                {
                  v490 = *v488++;
                  v487 = vorr_s8(v487, vceqz_s8(v490));
                  v489 += 8;
                }

                while (v489);
                if (vmaxv_u8(vcltz_s8(vshl_n_s8(v487, 7uLL))))
                {
                  LOBYTE(v475) = 0;
                }

                LOBYTE(v479) = v475;
                v473 = v515;
                if (v477 == (v477 & 0xFFFFFFFFFFFFFFF8))
                {
                  goto LABEL_912;
                }

                goto LABEL_907;
              }

              v473 = v515;
            }

LABEL_912:
            if (v476 >= v473)
            {
              goto LABEL_936;
            }

            if (v474 >= v473)
            {
              goto LABEL_936;
            }

            v496 = v474 + 1;
            if (v474 + 1 >= v473)
            {
              goto LABEL_936;
            }

            if (v530)
            {
              v497 = 0;
              v498 = (v374 + v474);
              v499 = v479 & ((((*v498 ^ HIBYTE(*(this + 810))) - 1) & (*(v374 + v476) - 1) & ((*(this + 810) ^ *(v374 + v496)) - 1)) >> 63);
              v500 = v530 + v473 - __src[0].tv_sec;
              while (v500 != v497)
              {
                v497[v529] = v499 & v497[v498] | v497[v529] & ~v499;
                if (++v497 >= v530)
                {
                  goto LABEL_919;
                }
              }

              goto LABEL_936;
            }

LABEL_919:
            prev_session = 0;
            v387 = 1;
            if (v473 - 1 >= -v374)
            {
              goto LABEL_935;
            }

LABEL_702:
            if (v374)
            {
              v389 = *(v374 - 8);
              v388 = (v374 - 8);
              v390 = v389 + 8;
              if (v389 != -8)
              {
                bzero(v388, v390);
              }

              free(v388);
            }

            if ((v387 & 1) == 0)
            {
              goto LABEL_664;
            }

            goto LABEL_707;
          }

          v215 = v526 - 2;
          if (v526 < 2 || (v216 = __rev16(*v525), v12 = v215 - v216, v215 < v216) || (v217 = (v525 + 2), __src[0].tv_sec = (v525 + 2), *&__src[0].tv_usec = v216, (v14 & 4) != 0) && v12)
          {
            ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc", 1296);
            v218 = 50;
          }

          else
          {
            if (v216 <= 0x80 && (!v216 || !memchr(v525 + 2, 0, v216)))
            {
              *&v534 = 0;
              if (!CBS_strdup(__src, &v534))
              {
                bssl::ssl_send_alert(v10, 2, 80);
LABEL_738:
                prev_session = 0;
                goto LABEL_624;
              }

              v359 = *(this + 194);
              v360 = *(v359 + 128);
              *(v359 + 128) = v534;
              if (v360)
              {
                v362 = *(v360 - 8);
                v361 = (v360 - 8);
                v363 = v362 + 8;
                if (v362 != -8)
                {
                  bzero(v361, v363);
                }

                free(v361);
              }

              v11 = v217 + v216;
              v529 = 0;
              v530 = 0;
              if ((v14 & 1) == 0)
              {
                goto LABEL_25;
              }

              goto LABEL_652;
            }

            ERR_put_error(16, 0, 136, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc", 1303);
            v218 = 47;
          }

          bssl::ssl_send_alert(v10, 2, v218);
          prev_session = 0;
          goto LABEL_624;
        }

        bssl::ssl_send_alert(v10, 2, 10);
        ERR_put_error(16, 0, 223, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake.cc", 116);
        v154 = v524[2];
        goto LABEL_373;
      case 13:
        if (!*(this + 193))
        {
          v120 = *(this + 51);
          *(this + 51) = 0;
          if (v120)
          {
            v121 = *(v120 + 8);
            if (v121)
            {
              v123 = *(v121 - 8);
              v122 = (v121 - 8);
              v124 = v123 + 8;
              if (v123 != -8)
              {
                bzero(v122, v124);
              }

              free(v122);
            }

            v126 = *(v120 - 8);
            v125 = (v120 - 8);
            v127 = v126 + 8;
            if (v126 != -8)
            {
              bzero(v125, v127);
            }

            free(v125);
          }

          v7 = 14;
          goto LABEL_392;
        }

        v54 = *this;
        if (!(*(**this + 24))(*this, __src))
        {
          goto LABEL_196;
        }

        if (BYTE1(__src[0].tv_sec) != 15)
        {
          goto LABEL_372;
        }

        v74 = **(*(*(this + 194) + 136) + 8);
        v76 = *(v74 + 8);
        v75 = *(v74 + 16);
        *&v534 = v76;
        *(&v534 + 1) = v75;
        if (!bssl::ssl_cert_check_key_usage(&v534, 0))
        {
          goto LABEL_623;
        }

        v77 = *&__src[0].tv_usec;
        v78 = __src[1].tv_sec;
        v79 = *(*(v54 + 6) + 208);
        if (v79 - 769 >= 4)
        {
          if (v79 - 65276 >= 2)
          {
            goto LABEL_101;
          }
        }

        else if (v79 < 0x303)
        {
LABEL_101:
          v80 = (*v520)[1];
          if (v80 == 6)
          {
            v81 = 65281;
          }

          else
          {
            if (v80 != 408)
            {
              ERR_put_error(16, 0, 193, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc", 1537);
              v238 = v54;
              v239 = 43;
              goto LABEL_622;
            }

            v81 = 515;
          }

LABEL_613:
          v353 = v78 - 2;
          if (v78 < 2 || v353 != __rev16(*v77))
          {
            v55 = 137;
            v56 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc";
            v57 = 1545;
            goto LABEL_620;
          }

          if (!bssl::ssl_public_key_verify(v54, v77 + 2, v353, v81, *v520, *(*(this + 51) + 8), **(this + 51)))
          {
            ERR_put_error(16, 0, 114, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc", 1552);
            v238 = v54;
            v239 = 51;
            goto LABEL_622;
          }

          bssl::SSLTranscript::FreeBuffer((this + 408));
          if ((__src[0].tv_sec & 1) != 0 || bssl::SSLTranscript::Update(this + 408, *&__src[1].tv_usec, __src[2].tv_sec))
          {
            (*(*v54 + 32))(v54);
            v7 = 14;
            goto LABEL_392;
          }

          goto LABEL_623;
        }

        if (__src[1].tv_sec <= 1uLL)
        {
          v55 = 137;
          v56 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc";
          v57 = 1524;
          goto LABEL_620;
        }

        v81 = bswap32(**&__src[0].tv_usec) >> 16;
        LOBYTE(v531[0]) = 50;
        if (!bssl::tls12_check_peer_sigalg(this, v531, v81, *(this + 193)))
        {
          v315 = LOBYTE(v531[0]);
          goto LABEL_629;
        }

        v78 -= 2;
        ++v77;
        *(*(this + 194) + 8) = v81;
        goto LABEL_613;
      case 14:
        if ((*(this + 1618) & 8) != 0 && *(*this + 88))
        {
          goto LABEL_118;
        }

        prev_session = 15;
        *(this + 5) = 15;
        goto LABEL_624;
      case 15:
        v30 = *this;
        v31 = *(this + 194);
        if (v31)
        {
          if (!bssl::tls1_configure_aead(v30, 0, this + 199, v31, 0, 0))
          {
            goto LABEL_623;
          }
        }

        else if (!bssl::tls1_configure_aead(v30, 0, this + 199, v30[11], 0, 0))
        {
          goto LABEL_623;
        }

        v41 = 16;
        goto LABEL_172;
      case 16:
        if ((*(this + 1617) & 0x80) == 0)
        {
          v7 = 17;
          goto LABEL_392;
        }

        v54 = *this;
        if (!(*(**this + 24))(*this, __src))
        {
LABEL_196:
          prev_session = 3;
          goto LABEL_624;
        }

        if (BYTE1(__src[0].tv_sec) != 67)
        {
LABEL_372:
          bssl::ssl_send_alert(v54, 2, 10);
          ERR_put_error(16, 0, 223, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake.cc", 116);
          v154 = BYTE1(__src[0].tv_sec);
LABEL_373:
          ERR_add_error_dataf("got type %d, wanted type %d", v147, v148, v149, v150, v151, v152, v153, v154);
          goto LABEL_623;
        }

        if ((__src[0].tv_sec & 1) == 0 && !bssl::SSLTranscript::Update(this + 408, *&__src[1].tv_usec, __src[2].tv_sec))
        {
          goto LABEL_623;
        }

        if (!__src[1].tv_sec || (v99 = *&__src[0].tv_usec, v100 = (*&__src[0].tv_usec + 1), v101 = **&__src[0].tv_usec, __src[1].tv_sec - 1 <= v101) || (v102 = &v100[v101], __src[1].tv_sec - 1 + ~v101 != v100[v101]))
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc", 1608);
          bssl::ssl_send_alert(v54, 2, 50);
          prev_session = 0;
          goto LABEL_624;
        }

        v103 = *(v54 + 6);
        v105 = *(v103 + 472);
        v104 = *(v103 + 480);
        if (v104 && v104 - 1 >= -v105)
        {
          goto LABEL_935;
        }

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

        *(v103 + 472) = 0;
        *(v103 + 480) = 0;
        if (!v101)
        {
          goto LABEL_864;
        }

        v109 = OPENSSL_malloc(v101);
        *(v103 + 472) = v109;
        if (!v109)
        {
          prev_session = 0;
          goto LABEL_624;
        }

        *(v103 + 480) = v101;
        if (v101 < 8)
        {
          v408 = v109;
        }

        else if ((v99 - v109) > 0xFFFFFFFFFFFFFFDFLL)
        {
          v408 = v109;
        }

        else
        {
          if (v101 < 0x20)
          {
            v110 = 0;
            goto LABEL_756;
          }

          v110 = v101 & 0xE0;
          v409 = *(v99 + 17);
          *v109 = *(v99 + 1);
          v109[1] = v409;
          if (v110 != 32)
          {
            v410 = *(v99 + 49);
            v109[2] = *(v99 + 33);
            v109[3] = v410;
            if (v110 != 64)
            {
              v411 = *(v99 + 81);
              v109[4] = *(v99 + 65);
              v109[5] = v411;
              if (v110 != 96)
              {
                v412 = *(v99 + 113);
                v109[6] = *(v99 + 97);
                v109[7] = v412;
                if (v110 != 128)
                {
                  v413 = *(v99 + 145);
                  v109[8] = *(v99 + 129);
                  v109[9] = v413;
                  if (v110 != 160)
                  {
                    v414 = *(v99 + 177);
                    v109[10] = *(v99 + 161);
                    v109[11] = v414;
                    if (v110 != 192)
                    {
                      v415 = *(v99 + 209);
                      v109[12] = *(v99 + 193);
                      v109[13] = v415;
                    }
                  }
                }
              }
            }
          }

          if (v110 == v101)
          {
            goto LABEL_864;
          }

          if ((v101 & 0x18) != 0)
          {
LABEL_756:
            v408 = v109 + (v101 & 0xF8);
            v100 += v101 & 0xF8;
            v416 = (v99 + v110 + 1);
            v417 = (v109 + v110);
            v418 = v110 - (v101 & 0xF8);
            do
            {
              v419 = *v416++;
              *v417++ = v419;
              v418 += 8;
            }

            while (v418);
            if ((v101 & 0xF8) == v101)
            {
              goto LABEL_864;
            }

            goto LABEL_863;
          }

          v100 += v110;
          v408 = v109 + v110;
        }

        do
        {
LABEL_863:
          v480 = *v100++;
          *v408++ = v480;
        }

        while (v100 != v102);
LABEL_864:
        (*(*v54 + 32))(v54);
        *(this + 5) = 17;
        prev_session = 1;
        goto LABEL_624;
      case 17:
        if ((*(this + 1619) & 1) == 0)
        {
          v7 = 18;
          goto LABEL_392;
        }

        v111 = *this;
        if (!(*(**this + 24))(*this, __src))
        {
          goto LABEL_196;
        }

        if (BYTE1(__src[0].tv_sec) != 203)
        {
          bssl::ssl_send_alert(v111, 2, 10);
          ERR_put_error(16, 0, 223, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake.cc", 116);
          v154 = BYTE1(__src[0].tv_sec);
          goto LABEL_373;
        }

        if (bssl::tls1_verify_channel_id(this, __src) && ((__src[0].tv_sec & 1) != 0 || bssl::SSLTranscript::Update(this + 408, *&__src[1].tv_usec, __src[2].tv_sec)))
        {
          (*(*v111 + 32))(v111);
          v7 = 18;
          goto LABEL_392;
        }

        goto LABEL_623;
      case 18:
        v88 = *this;
        finished = bssl::ssl_get_finished(this, a2);
        if (finished != 1)
        {
          prev_session = finished;
          goto LABEL_624;
        }

        if (*(v88 + 88))
        {
          *(this + 5) = 20;
          prev_session = 1;
          goto LABEL_624;
        }

        *(this + 5) = 19;
        if ((*(*(v88 + 48) + 220) & 0x80) != 0 && !bssl::tls1_record_handshake_hashes_for_channel_id(this))
        {
          goto LABEL_623;
        }

        prev_session = 1;
        goto LABEL_624;
      case 19:
        v96 = *this;
        if ((*(this + 1618) & 1) == 0)
        {
          goto LABEL_131;
        }

        v112 = v96[11];
        if (v112)
        {
          bssl::SSL_SESSION_dup(v112, 2, __src);
          v113 = __src[0].tv_sec;
          if (!__src[0].tv_sec)
          {
            goto LABEL_623;
          }

          v114 = *(v96[13] + 728);
          if (v114)
          {
            v114(0, __src);
            v115 = __src[0].tv_sec & ~(__src[0].tv_sec >> 63);
            v116 = *(v113 + 192);
            v117 = v115 >= v116;
            v118 = v115 - v116;
            if (!v117)
            {
LABEL_169:
              *(v113 + 184) = 0;
              *(v113 + 192) = v115;
              v119 = v113;
LABEL_400:
              memset(__src, 0, sizeof(__src));
              if ((*(*v96 + 88))(v96, __src, &v534, 4) && (v252 = *(v119 + 184), *&v524[1] = 0, CBB_add_space(&v534, &v524[1], 4)) && (*(*&v524[1] + 3) = v252, *(*&v524[1] + 2) = BYTE1(v252), *(*&v524[1] + 1) = BYTE2(v252), **&v524[1] = HIBYTE(v252), CBB_add_u16_length_prefixed(&v534, v531)) && bssl::ssl_encrypt_ticket(this, v531, v119))
              {
                bssl::ssl_add_message_cbb(v96, __src);
                v254 = v253;
                if (!LOBYTE(__src[0].tv_usec) && (__src[2].tv_usec & 1) != 0 && __src[1].tv_sec)
                {
                  v256 = *(__src[1].tv_sec - 8);
                  v255 = (__src[1].tv_sec - 8);
                  v257 = v256 + 8;
                  if (v256 != -8)
                  {
                    bzero(v255, v257);
                  }

                  free(v255);
                }

                if (v113)
                {
                  SSL_SESSION_free(v113);
                }

                if (!v254)
                {
                  goto LABEL_623;
                }

LABEL_131:
                if ((*(*v96 + 112))(v96, a2))
                {
                  v97 = *this;
                  v98 = *(this + 194);
                  if (v98)
                  {
                    if (!bssl::tls1_configure_aead(v97, 1u, this + 199, v98, 0, 0))
                    {
                      goto LABEL_623;
                    }
                  }

                  else if (!bssl::tls1_configure_aead(v97, 1u, this + 199, v97[11], 0, 0))
                  {
                    goto LABEL_623;
                  }

                  if (bssl::ssl_send_finished(this, a2))
                  {
                    if (v96[11])
                    {
                      v237 = 14;
                    }

                    else
                    {
                      v237 = 20;
                    }

                    *(this + 5) = v237;
                    prev_session = 4;
                    goto LABEL_624;
                  }
                }
              }

              else
              {
                if (!LOBYTE(__src[0].tv_usec) && (__src[2].tv_usec & 1) != 0 && __src[1].tv_sec)
                {
                  v259 = *(__src[1].tv_sec - 8);
                  v258 = (__src[1].tv_sec - 8);
                  v260 = v259 + 8;
                  if (v259 != -8)
                  {
                    bzero(v258, v260);
                  }

                  free(v258);
                }

                if (v113)
                {
                  v261 = atomic_load(v113);
                  if (v261 != -1)
                  {
                    while (1)
                    {
                      if (!v261)
                      {
                        goto LABEL_936;
                      }

                      v262 = v261;
                      atomic_compare_exchange_strong(v113, &v262, v261 - 1);
                      if (v262 == v261)
                      {
                        break;
                      }

                      v261 = v262;
                      if (v262 == -1)
                      {
                        goto LABEL_623;
                      }
                    }

                    if (v261 == 1)
                    {
                      ssl_session_st::~ssl_session_st(v113);
                      v264 = *(v113 - 8);
                      v263 = (v113 - 8);
                      v265 = v264 + 8;
                      if (v264 != -8)
                      {
                        bzero(v263, v265);
                      }

                      free(v263);
                    }
                  }
                }
              }

LABEL_623:
              prev_session = 0;
              goto LABEL_624;
            }
          }

          else
          {
            gettimeofday(__src, 0);
            v115 = __src[0].tv_sec & ~(__src[0].tv_sec >> 63);
            v246 = *(v113 + 192);
            v117 = v115 >= v246;
            v118 = v115 - v246;
            if (!v117)
            {
              goto LABEL_169;
            }
          }

          *(v113 + 192) = v115;
          v247 = *(v113 + 184);
          v248.i64[0] = v247.u32[0];
          v248.i64[1] = v247.u32[1];
          *(v113 + 184) = vbic_s8(vsub_s32(v247, vdup_n_s32(v118)), vmovn_s64(vcgtq_u64(vdupq_n_s64(v118), v248)));
          v119 = v113;
          goto LABEL_400;
        }

        v206 = *(this + 194);
        v207 = *(v96[13] + 728);
        if (v207)
        {
          v207(0, __src);
          v208 = __src[0].tv_sec & ~(__src[0].tv_sec >> 63);
          v209 = v206[24];
          v117 = v208 >= v209;
          v210 = v208 - v209;
          if (!v117)
          {
LABEL_320:
            v206[23] = 0;
            v206[24] = v208;
LABEL_399:
            v113 = 0;
            v119 = *(this + 194);
            goto LABEL_400;
          }
        }

        else
        {
          gettimeofday(__src, 0);
          v208 = __src[0].tv_sec & ~(__src[0].tv_sec >> 63);
          v249 = v206[24];
          v117 = v208 >= v249;
          v210 = v208 - v249;
          if (!v117)
          {
            goto LABEL_320;
          }
        }

        v206[24] = v208;
        v250 = v206[23];
        v251.i64[0] = v250.u32[0];
        v251.i64[1] = v250.u32[1];
        v206[23] = vbic_s8(vsub_s32(v250, vdup_n_s32(v210)), vmovn_s64(vcgtq_u64(vdupq_n_s64(v210), v251)));
        goto LABEL_399;
      case 20:
        if ((*(this + 1618) & 8) != 0)
        {
LABEL_118:
          prev_session = 7;
          goto LABEL_624;
        }

        v58 = *this;
        (*(**this + 144))(*this, a2);
        v59 = *(this + 194);
        if (!v59)
        {
          goto LABEL_357;
        }

        if ((*(*(this + 1) + 269) & 0x20) == 0)
        {
          goto LABEL_351;
        }

        v60 = *(v59 + 136);
        *(v59 + 136) = 0;
        if (v60)
        {
          v61 = *v60;
          if (*v60)
          {
            v62 = 0;
            do
            {
              v63 = *(v60[1] + 8 * v62);
              if (v63)
              {
                CRYPTO_BUFFER_free(v63);
                v61 = *v60;
              }

              ++v62;
            }

            while (v62 < v61);
          }

          v219 = v60[1];
          if (v219)
          {
            v221 = *(v219 - 8);
            v220 = (v219 - 8);
            v222 = v221 + 8;
            if (v221 != -8)
            {
              bzero(v220, v222);
            }

            free(v220);
          }

          v224 = *(v60 - 1);
          v223 = v60 - 1;
          v225 = v224 + 8;
          if (v224 != -8)
          {
            bzero(v223, v225);
          }

          free(v223);
          v59 = *(this + 194);
        }

        (*(*(*(v58 + 104) + 16) + 64))(v59);
        v59 = *(this + 194);
        if (v59)
        {
LABEL_351:
          v226 = *(v58 + 48);
          *(this + 194) = 0;
          v227 = *(v226 + 464);
          *(v226 + 464) = v59;
          if (v227)
          {
            v228 = atomic_load(v227);
            if (v228 != -1)
            {
              while (1)
              {
                if (!v228)
                {
                  goto LABEL_936;
                }

                v229 = v228;
                atomic_compare_exchange_strong(&v227->ssl_version, &v229, v228 - 1);
                if (v229 == v228)
                {
                  break;
                }

                v228 = v229;
                if (v229 == -1)
                {
                  goto LABEL_384;
                }
              }

              if (v228 == 1)
              {
                ssl_session_st::~ssl_session_st(v227);
                v241 = v227[-1].tlsext_tick_lifetime_hint;
                v240 = &v227[-1].tlsext_tick_lifetime_hint;
                v242 = v241 + 8;
                if (v241 != -8)
                {
                  bzero(v240, v242);
                }

                free(v240);
              }
            }

LABEL_384:
            v59 = *(*(v58 + 48) + 464);
          }

          *(v59 + 408) &= ~4u;
          *(this + 404) |= 8u;
          *(*(v58 + 48) + 220) |= 0x10u;
          bssl::ssl_update_cache(v58, a2);
        }

        else
        {
LABEL_357:
          v230 = *(v58 + 88);
          if (v230)
          {
            v231 = atomic_load(v230);
            if (v231 != -1)
            {
              for (k = v231; k != -1; v231 = k)
              {
                atomic_compare_exchange_strong(v230, &k, v231 + 1);
                if (k == v231)
                {
                  break;
                }
              }
            }
          }

          v233 = *(v58 + 48);
          v234 = *(v233 + 464);
          *(v233 + 464) = v230;
          if (v234)
          {
            v235 = atomic_load(v234);
            if (v235 != -1)
            {
              while (1)
              {
                if (!v235)
                {
                  goto LABEL_936;
                }

                v236 = v235;
                atomic_compare_exchange_strong(&v234->ssl_version, &v236, v235 - 1);
                if (v236 == v235)
                {
                  break;
                }

                v235 = v236;
                if (v236 == -1)
                {
                  goto LABEL_390;
                }
              }

              if (v235 == 1)
              {
                ssl_session_st::~ssl_session_st(v234);
                v244 = v234[-1].tlsext_tick_lifetime_hint;
                v243 = &v234[-1].tlsext_tick_lifetime_hint;
                v245 = v244 + 8;
                if (v244 != -8)
                {
                  bzero(v243, v245);
                }

                free(v243);
              }
            }
          }

LABEL_390:
          *(this + 404) |= 8u;
          *(*(v58 + 48) + 220) |= 0x10u;
        }

        v7 = 21;
        goto LABEL_392;
      case 21:
        v506 = *(*this + 96);
        if (!v506)
        {
          v506 = *(*(*this + 104) + 384);
          if (!v506)
          {
            return 1;
          }
        }

        prev_session = 1;
        v506();
        return prev_session;
      default:
        goto LABEL_623;
    }
  }
}

uint64_t bssl::choose_params(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 8);
  v7 = *(v6 + 72);
  if (v7)
  {
    v5 |= 4u;
  }

  v72 = 8 * (v7 != 0);
  v73 = v5;
  v74 = 0;
  if (!a2 || *(a2 + 4))
  {
    v8 = *a1;
    v9 = *(v6 + 24);
    if (v9)
    {
      goto LABEL_9;
    }

LABEL_50:
    v9 = *(*(v8 + 13) + 240);
    v10 = *v9;
    v70 = a1;
    v71 = a2;
    if ((*(v8 + 130) & 0x40) == 0)
    {
LABEL_10:
      v11 = a3;
      if (!a3)
      {
        goto LABEL_188;
      }

LABEL_126:
      if (*v11)
      {
        v49 = 0;
        while (1)
        {
          v50 = *(v11[1] + 8 * v49);
          v51 = v50[5];
          if (v51 == 8 || v50[6] == 16)
          {
            v52 = 772;
            v53 = 0;
            v54 = *(*(v8 + 6) + 208);
            if (v54 <= 0xFEFB)
            {
              goto LABEL_133;
            }
          }

          else
          {
            if (v50[9] == 1)
            {
              v52 = 768;
            }

            else
            {
              v52 = 771;
            }

            v53 = 0;
            v54 = *(*(v8 + 6) + 208);
            if (v54 <= 0xFEFB)
            {
LABEL_133:
              v55 = v54;
              if ((v54 - 769) >= 4)
              {
                goto LABEL_135;
              }

              goto LABEL_134;
            }
          }

          if (v54 == 65276)
          {
            break;
          }

          if (v54 == 65277)
          {
            v55 = 771;
            goto LABEL_134;
          }

          if (v54 == 65279)
          {
            v55 = 770;
LABEL_134:
            v53 = v55;
          }

LABEL_135:
          if (v52 > v53)
          {
            goto LABEL_129;
          }

          v56 = 0;
          if (v54 > 65275)
          {
            switch(v54)
            {
              case 65276:
                v54 = 772;
                break;
              case 65277:
                v54 = 771;
                break;
              case 65279:
                v54 = 770;
                break;
              default:
                goto LABEL_139;
            }

LABEL_138:
            v56 = v54;
            goto LABEL_139;
          }

          if ((v54 - 769) < 4)
          {
            goto LABEL_138;
          }

LABEL_139:
          if (v51 == 8)
          {
            if (v56 > 0x304)
            {
              goto LABEL_129;
            }
          }

          else
          {
            if (v50[6] == 16)
            {
              v57 = 772;
            }

            else
            {
              v57 = 771;
            }

            if (v56 > v57)
            {
              goto LABEL_129;
            }
          }

          if ((v51 & v73) != 0 && (v50[6] & v72) != 0 && v10 != 0)
          {
            if (*(v10 + 32))
            {
              v59 = *v10;
              if (!*(v10 + 16) && v59 >= 2)
              {
                v32 = 0;
                while (1)
                {
                  v60 = *(v10 + 32);
                  v75 = *(*(v10 + 8) + 8 * v32);
                  v76 = v50;
                  if (!v60(&v76, &v75))
                  {
                    goto LABEL_193;
                  }

                  if (++v32 >= *v10)
                  {
                    goto LABEL_129;
                  }
                }
              }

              if (v59)
              {
                v61 = 0;
                do
                {
                  v32 = v61 + ((v59 - v61 - 1) >> 1);
                  v62 = *(v10 + 32);
                  v75 = *(*(v10 + 8) + 8 * v32);
                  v76 = v50;
                  v63 = v62(&v76, &v75);
                  if (v63 >= 1)
                  {
                    v61 = v32 + 1;
                  }

                  else if (v63 < 0)
                  {
                    v59 = v61 + ((v59 - v61 - 1) >> 1);
                  }

                  else
                  {
                    if (v59 - v61 == 1)
                    {
                      goto LABEL_128;
                    }

                    v59 = v32 + 1;
                  }
                }

                while (v61 < v59);
              }
            }

            else if (*v10)
            {
              v32 = 0;
              while (*(*(v10 + 8) + 8 * v32) != v50)
              {
                if (*v10 == ++v32)
                {
                  goto LABEL_129;
                }
              }

LABEL_128:
              if (v32 != -1)
              {
                if (v10)
                {
                  goto LABEL_193;
                }

                return 0;
              }
            }
          }

LABEL_129:
          if (++v49 >= *v11)
          {
            goto LABEL_188;
          }
        }

        v55 = 772;
        goto LABEL_134;
      }

LABEL_188:
      v26 = 184;
      v27 = 213;
      goto LABEL_189;
    }

    goto LABEL_51;
  }

  v12 = a1;
  v13 = a2;
  v14 = bssl::tls1_choose_signature_algorithm(a1, a2, &v74);
  ERR_clear_error();
  a2 = v13;
  v15 = *(v13 + 8);
  v16 = *(v15 + 4);
  if (v16 != 408)
  {
    goto LABEL_36;
  }

  v17 = *(**(v15 + 8) + 512);
  if (v17 > 947)
  {
    v18 = v12;
    switch(v17)
    {
      case 948:
        v19 = &dword_273BB951C;
        break;
      case 964:
        v19 = &dword_273BB9564;
        break;
      case 965:
        v19 = &dword_273BB95AC;
        break;
      default:
        goto LABEL_24;
    }
  }

  else
  {
    v18 = v12;
    switch(v17)
    {
      case 415:
        break;
      case 715:
        v19 = &dword_273BB948C;
        break;
      case 716:
        v19 = &dword_273BB94D4;
        break;
      default:
LABEL_24:
        if (!v7)
        {
LABEL_35:
          v26 = 243;
          v27 = 259;
LABEL_189:
          ERR_put_error(16, 0, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake_server.cc", v27);
          return 0;
        }

        v20 = 0;
        goto LABEL_45;
    }
  }

  v21 = *(v18 + 664);
  v22 = *(v18 + 672);
  v23 = &v21[v22];
  if (v22)
  {
    v24 = *(v19 + 2);
    v25 = 2 * v22;
    while (*v21 != v24)
    {
      ++v21;
      v25 -= 2;
      if (!v25)
      {
        v21 = v23;
        break;
      }
    }
  }

  if (v21 == v23)
  {
    v14 = 0;
    if (!v7)
    {
      goto LABEL_35;
    }
  }

LABEL_36:
  if (v16 == 949 || v16 == 408)
  {
    if (v14)
    {
      v20 = 4;
    }

    else
    {
      v20 = 0;
    }

LABEL_45:
    a1 = v12;
    goto LABEL_47;
  }

  a1 = v12;
  if (v16 == 6)
  {
    if (v14)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }
  }

  else
  {
    v20 = 0;
  }

LABEL_47:
  v30 = v16 == 6;
  v28 = v73;
  if (v30)
  {
    v28 = v73 + 1;
  }

  v72 |= v20;
  v73 = v28;
  v8 = *a1;
  v9 = *(*(a1 + 8) + 24);
  if (!v9)
  {
    goto LABEL_50;
  }

LABEL_9:
  v10 = *v9;
  v70 = a1;
  v71 = a2;
  if ((*(v8 + 130) & 0x40) == 0)
  {
    goto LABEL_10;
  }

LABEL_51:
  v29 = v9[1];
  if (!v29)
  {
    v11 = v10;
    v10 = a3;
    if (!v11)
    {
      goto LABEL_188;
    }

    goto LABEL_126;
  }

  if (!v10)
  {
    goto LABEL_188;
  }

  v30 = !*v10 || a3 == 0;
  if (v30)
  {
    goto LABEL_188;
  }

  v31 = 0;
  v32 = -1;
  v68 = v9[1];
  while (1)
  {
    v33 = *(*(v10 + 8) + 8 * v31);
    v34 = v33[5];
    if (v34 == 8 || v33[6] == 16)
    {
      v35 = 772;
      v36 = 0;
      v37 = *(*(v8 + 6) + 208);
      if (v37 <= 0xFEFB)
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (v33[9] == 1)
      {
        v35 = 768;
      }

      else
      {
        v35 = 771;
      }

      v36 = 0;
      v37 = *(*(v8 + 6) + 208);
      if (v37 <= 0xFEFB)
      {
LABEL_62:
        v38 = v37;
        if ((v37 - 769) >= 4)
        {
          goto LABEL_64;
        }

        goto LABEL_63;
      }
    }

    switch(v37)
    {
      case 65276:
        v38 = 772;
        goto LABEL_63;
      case 65277:
        v38 = 771;
        goto LABEL_63;
      case 65279:
        v38 = 770;
LABEL_63:
        v36 = v38;
        break;
    }

LABEL_64:
    v39 = *(v29 + v31);
    if (v35 > v36)
    {
      goto LABEL_65;
    }

    v40 = 0;
    if (v37 <= 65275)
    {
      if ((v37 - 769) >= 4)
      {
        goto LABEL_71;
      }

      goto LABEL_70;
    }

    switch(v37)
    {
      case 65276:
        v37 = 772;
        goto LABEL_70;
      case 65277:
        v37 = 771;
        goto LABEL_70;
      case 65279:
        v37 = 770;
LABEL_70:
        v40 = v37;
        break;
    }

LABEL_71:
    if (v34 == 8)
    {
      if (v40 > 0x304)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if (v33[6] == 16)
      {
        v41 = 772;
      }

      else
      {
        v41 = 771;
      }

      if (v40 > v41)
      {
        goto LABEL_65;
      }
    }

    if ((v34 & v73) == 0 || (v33[6] & v72) == 0)
    {
      goto LABEL_65;
    }

    if (*(a3 + 32))
    {
      v42 = *a3;
      if (*(a3 + 16) || v42 < 2)
      {
        if (v42)
        {
          v69 = *(v29 + v31);
          v45 = 0;
          while (1)
          {
            v43 = v45 + ((v42 - v45 - 1) >> 1);
            v46 = *(a3 + 32);
            v75 = *(*(a3 + 8) + 8 * v43);
            v76 = v33;
            v47 = v46(&v76, &v75);
            if (v47 >= 1)
            {
              v45 = v43 + 1;
            }

            else if (v47 < 0)
            {
              v42 = v45 + ((v42 - v45 - 1) >> 1);
            }

            else
            {
              if (v42 - v45 == 1)
              {
                goto LABEL_117;
              }

              v42 = v43 + 1;
            }

            if (v45 >= v42)
            {
              goto LABEL_123;
            }
          }
        }

        goto LABEL_65;
      }

      v69 = *(v29 + v31);
      v43 = 0;
      while (1)
      {
        v44 = *(a3 + 32);
        v75 = *(*(a3 + 8) + 8 * v43);
        v76 = v33;
        if (!v44(&v76, &v75))
        {
          break;
        }

        if (++v43 >= *a3)
        {
          goto LABEL_124;
        }
      }
    }

    else
    {
      if (!*a3)
      {
        goto LABEL_65;
      }

      v69 = *(v29 + v31);
      v43 = 0;
      while (*(*(a3 + 8) + 8 * v43) != v33)
      {
        if (*a3 == ++v43)
        {
          goto LABEL_124;
        }
      }
    }

LABEL_117:
    v48 = v32 >= v43 ? v43 : v32;
    v32 = v32 == -1 ? v43 : v48;
LABEL_123:
    v29 = v68;
LABEL_124:
    v39 = v69;
LABEL_65:
    if ((v39 & 1) == 0 && v32 != -1)
    {
      break;
    }

    if (++v31 >= *v10)
    {
      goto LABEL_188;
    }
  }

  v10 = a3;
  if (!a3)
  {
    return 0;
  }

LABEL_193:
  if (*v10 <= v32)
  {
    return 0;
  }

  v65 = *(v10 + 8);
  result = *(v65 + 8 * v32);
  if (result)
  {
    if (v71)
    {
      v66 = *(v65 + 8 * v32);
      v67 = bssl::ssl_credential_matches_requested_issuers(v70, v71, a3);
      result = v66;
      if (!v67)
      {
        return 0;
      }
    }
  }

  return result;
}