BOOL bssl::tls13_process_new_session_ticket(bssl *a1, uint64_t a2)
{
  if (*(*(a1 + 6) + 176))
  {
    return 1;
  }

  v16 = *(a2 + 8);
  bssl::tls13_create_session_with_ticket(a1, &v16, &v15);
  v4 = v15;
  result = v15 != 0;
  if (v15)
  {
    v5 = *(a1 + 14);
    if ((*(v5 + 292) & 1) == 0 || (v6 = *(v5 + 304)) == 0 || (v7 = v15 != 0, v8 = v6(a1, v15), result = v7, !v8))
    {
      v9 = atomic_load(v4);
      if (v9 != -1)
      {
        while (1)
        {
          if (!v9)
          {
            abort();
          }

          v10 = v9;
          atomic_compare_exchange_strong(&v4->ssl_version, &v10, v9 - 1);
          if (v10 == v9)
          {
            break;
          }

          v9 = v10;
          if (v10 == -1)
          {
            return result;
          }
        }

        if (v9 == 1)
        {
          v11 = result;
          ssl_session_st::~ssl_session_st(v4);
          tlsext_tick_lifetime_hint = v4[-1].tlsext_tick_lifetime_hint;
          p_tlsext_tick_lifetime_hint = &v4[-1].tlsext_tick_lifetime_hint;
          v14 = tlsext_tick_lifetime_hint + 8;
          if (tlsext_tick_lifetime_hint != -8)
          {
            bzero(p_tlsext_tick_lifetime_hint, v14);
          }

          free(p_tlsext_tick_lifetime_hint);
          return v11;
        }
      }
    }
  }

  return result;
}

void bssl::tls13_create_session_with_ticket(bssl *a1@<X0>, unsigned __int16 **a2@<X1>, ssl_session_st **a3@<X8>)
{
  v89[2] = *MEMORY[0x277D85DE8];
  bssl::SSL_SESSION_dup(*(*(a1 + 6) + 464), 2, &v88);
  v6 = v88;
  if (!v88)
  {
    *a3 = 0;
    return;
  }

  v7 = *(*(a1 + 13) + 728);
  if (v7)
  {
    v7(0, &v85);
    v8 = v85.tv_sec & ~(v85.tv_sec >> 63);
    v9 = *&v6->compress_meth;
    v10 = v8 >= v9;
    v11 = v8 - v9;
    if (!v10)
    {
      goto LABEL_4;
    }
  }

  else
  {
    gettimeofday(&v85, 0);
    v8 = v85.tv_sec & ~(v85.tv_sec >> 63);
    v14 = *&v6->compress_meth;
    v10 = v8 >= v14;
    v11 = v8 - v14;
    if (!v10)
    {
LABEL_4:
      v6->time = 0;
      *&v6->compress_meth = v8;
      v12 = a2[1];
      v13 = v12 - 4;
      if (v12 < 4)
      {
        goto LABEL_53;
      }

      goto LABEL_10;
    }
  }

  *&v6->compress_meth = v8;
  time = v6->time;
  v16.i64[0] = time.u32[0];
  v16.i64[1] = time.u32[1];
  v6->time = vbic_s8(vsub_s32(time, vdup_n_s32(v11)), vmovn_s64(vcgtq_u64(vdupq_n_s64(v11), v16)));
  v12 = a2[1];
  v13 = v12 - 4;
  if (v12 < 4)
  {
LABEL_53:
    bssl::ssl_send_alert(a1, 2, 50);
    v68 = 1176;
    goto LABEL_54;
  }

LABEL_10:
  v17 = *a2;
  *a2 += 2;
  a2[1] = v13;
  if (v13 < 4)
  {
    goto LABEL_53;
  }

  v18 = *v17;
  v19 = v88;
  *a2 = v17 + 4;
  a2[1] = (v12 - 8);
  *&v19[1].master_key[44] = bswap32(*(v17 + 1));
  if (v12 == 8)
  {
    goto LABEL_53;
  }

  v20 = v17 + 9;
  v21 = v12 - 9;
  *a2 = (v17 + 9);
  a2[1] = v21;
  v22 = *(v17 + 8);
  v10 = v21 >= v22;
  v23 = v21 - v22;
  if (!v10)
  {
    goto LABEL_53;
  }

  v24 = (v20 + v22);
  *a2 = (v20 + v22);
  a2[1] = v23;
  v10 = v23 >= 2;
  v25 = v23 - 2;
  if (!v10)
  {
    goto LABEL_53;
  }

  v26 = v24 + 2;
  *a2 = (v24 + 2);
  a2[1] = v25;
  v27 = *v24;
  v28 = v24[1];
  v29 = v28 | (v27 << 8);
  v10 = v25 >= v29;
  v30 = (v25 - v29);
  if (!v10)
  {
    goto LABEL_53;
  }

  v31 = &v26[v29];
  *a2 = &v26[v29];
  a2[1] = v30;
  if (!v29)
  {
    goto LABEL_53;
  }

  v78 = v27;
  v79 = v28;
  v80 = v18;
  v81 = v26;
  v82 = v28 | (v27 << 8);
  v33 = *&v19->ex_data.dummy;
  prev = v19->prev;
  p_dummy = &v19->ex_data.dummy;
  if (prev && &prev[-1].tlsext_tick_lifetime_hint + 7 >= -v33)
  {
LABEL_79:
    __break(1u);
  }

  if (v33)
  {
    v36 = *(v33 - 8);
    v35 = (v33 - 8);
    v37 = v36 + 8;
    if (v36 != -8)
    {
      bzero(v35, v37);
    }

    free(v35);
  }

  *p_dummy = 0;
  v19->prev = 0;
  v38 = malloc_type_malloc(v82 + 8, 0xB4E622C9uLL);
  if (!v38)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    *p_dummy = 0;
    goto LABEL_53;
  }

  *v38 = v82;
  v43 = v38 + 1;
  *&v19->ex_data.dummy = v38 + 1;
  v19->prev = v82;
  if (v82 < 8)
  {
    v44 = v81;
    goto LABEL_40;
  }

  v44 = v81;
  if ((v38 - (v17 + v22) - 3) < 0x20)
  {
    do
    {
LABEL_40:
      v56 = *v44++;
      *v43++ = v56;
    }

    while (v44 != v31);
    goto LABEL_41;
  }

  if (v82 < 0x20)
  {
    v45 = 0;
    goto LABEL_37;
  }

  v46 = v79 & 0x1F;
  v45 = v82 - v46;
  v47 = (v17 + v22 + 27);
  v48 = v38 + 3;
  v49 = v82 - v46;
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
  if ((v79 & 0x1F) == 0)
  {
    goto LABEL_41;
  }

  if (v46 < 8)
  {
    v44 = &v81[v45];
    v43 += v45;
    goto LABEL_40;
  }

LABEL_37:
  v51 = v82 - (v79 & 7);
  v43 += v51;
  v44 = &v81[v51];
  v52 = (v17 + v45 + v22 + 11);
  v53 = (v38 + v45 + 8);
  v54 = v45 + (v79 & 7) - v79 - (v78 << 8);
  do
  {
    v55 = *v52++;
    *v53++ = v55;
    v54 += 8;
  }

  while (v54);
  if ((v79 & 7) != 0)
  {
    goto LABEL_40;
  }

LABEL_41:
  v57 = a2[1];
  v58 = v57 - 2;
  if (v57 < 2)
  {
    goto LABEL_53;
  }

  v59 = *a2;
  v60 = *a2 + 1;
  *a2 = v60;
  a2[1] = v58;
  v61 = __rev16(*v59);
  v10 = v58 >= v61;
  v62 = (v58 - v61);
  if (!v10)
  {
    goto LABEL_53;
  }

  *a2 = (v61 + v60);
  a2[1] = v62;
  v87[0] = v60;
  v87[1] = v61;
  if (v62)
  {
    goto LABEL_53;
  }

  v63 = bswap32(v80);
  v64 = v88;
  if (LODWORD(v88->time) > v63)
  {
    LODWORD(v88->time) = v63;
  }

  if (bssl::tls13_derive_session_psk(v64, v17 + 9, v22, **a1, v39, v40, v41, v42))
  {
    LODWORD(v85.tv_sec) = 65578;
    *&v85.tv_usec = 0;
    v86 = 0;
    *&v83[3] = 1;
    v84[0] = 0;
    v84[1] = 0;
    strcpy(v83, "2>");
    v89[0] = &v85;
    v89[1] = &v83[1];
    if (bssl::ssl_parse_extensions(v87, v83, v89, 2, 1))
    {
      if (BYTE3(v85.tv_sec) == 1)
      {
        if (v86 < 4 || (v65 = *&v85.tv_usec, v66 = v86 == 4, *&v85.tv_usec += 4, v86 -= 4, v67 = bswap32(*v65), v88[1].session_id_length = v67, !v66))
        {
          bssl::ssl_send_alert(a1, 2, 50);
          v68 = 1204;
LABEL_54:
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_client.cc", v68);
          goto LABEL_55;
        }

        if (*(a1 + 19) && v67 != -1)
        {
          bssl::ssl_send_alert(a1, 2, 47);
          v68 = 1212;
          goto LABEL_54;
        }
      }

      if (v83[4] != 1)
      {
        goto LABEL_73;
      }

      LODWORD(v89[0]) = 0;
      if (bssl::ssl_parse_flags_extension_request(v84, v89, v83))
      {
        if ((v89[0] & 0x100) != 0)
        {
          v88[1].sid_ctx[12] |= 0x80u;
        }

LABEL_73:
        v75 = v88->session_id[19];
        if (v75 < 0x21 || 32 - v75 > &v88->session_id[18])
        {
          v76 = &v88->master_key[39];
          v88->session_id[19] = 32;
          SHA256(v81, v82, v76);
          v77 = v88;
          v88[1].sid_ctx[12] = v88[1].sid_ctx[12] & 0xF3 | 8;
          *a3 = v77;
          v88 = 0;
          return;
        }

        goto LABEL_79;
      }
    }

    bssl::ssl_send_alert(a1, 2, v83[0]);
    *a3 = 0;
    v69 = v88;
    v88 = 0;
    if (!v69)
    {
      return;
    }

    goto LABEL_56;
  }

LABEL_55:
  *a3 = 0;
  v69 = v88;
  v88 = 0;
  if (!v69)
  {
    return;
  }

LABEL_56:
  v70 = atomic_load(v69);
  if (v70 != -1)
  {
    while (1)
    {
      if (!v70)
      {
        abort();
      }

      v71 = v70;
      atomic_compare_exchange_strong(&v69->ssl_version, &v71, v70 - 1);
      if (v71 == v70)
      {
        break;
      }

      v70 = v71;
      if (v71 == -1)
      {
        return;
      }
    }

    if (v70 == 1)
    {
      ssl_session_st::~ssl_session_st(v69);
      tlsext_tick_lifetime_hint = v69[-1].tlsext_tick_lifetime_hint;
      p_tlsext_tick_lifetime_hint = &v69[-1].tlsext_tick_lifetime_hint;
      v74 = tlsext_tick_lifetime_hint + 8;
      if (tlsext_tick_lifetime_hint != -8)
      {
        bzero(p_tlsext_tick_lifetime_hint, v74);
      }

      free(p_tlsext_tick_lifetime_hint);
    }
  }
}

uint64_t bssl::check_ech_confirmation(uint64_t a1, BOOL *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(a4 + 32) == 32 && ((v11 = *(a4 + 24), v12 = *v11, v13 = v11[1], v15 = v11[2], v14 = v11[3], v12 == 0x11619AE574AD21CFLL) ? (v16 = v13 == 0x91B8651E028C1DBELL) : (v16 = 0), v16 ? (v17 = v15 == 0x5E8CBB7A1611A2C2) : (v17 = 0), v17 ? (v18 = v14 == 0x9C33A8C8E2099E07) : (v18 = 0), v18))
  {
    v23 = a1;
    LODWORD(v25) = 130573;
    v26 = 0;
    v27 = 0;
    v24 = &v25;
    result = bssl::ssl_parse_extensions((a4 + 64), a3, &v24, 1, 1);
    if (!result)
    {
      return result;
    }

    if ((v25 & 0x1000000) != 0)
    {
      if (v27 != 8)
      {
        ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_client.cc", 156);
        result = 0;
        v22 = 50;
LABEL_19:
        *a3 = v22;
        return result;
      }

      v20 = v26 - *a4;
      v19 = 1;
      a1 = v23;
      if (*(v23 + 1576))
      {
LABEL_16:
        result = bssl::ssl_ech_accept_confirmation(a1, &v25, 8, (a1 + 504), 0x20uLL, (a1 + 456), v19, a8, *a4, *(a4 + 8), v20);
        if (result)
        {
          *a2 = v25 == *(*a4 + v20);
          return result;
        }

        v22 = 80;
        goto LABEL_19;
      }
    }
  }

  else
  {
    v19 = 0;
    if (***a1)
    {
      v20 = 38;
    }

    else
    {
      v20 = 30;
    }

    if (*(a1 + 1576))
    {
      goto LABEL_16;
    }
  }

  *a2 = 0;
  return 1;
}

uint64_t bssl::close_early_data(uint64_t a1, int a2)
{
  v3 = *a1;
  *(a1 + 1616) &= ~0x2000u;
  if (*(v3 + 152))
  {
    return 1;
  }

  if (!a2)
  {
    v5 = v3;
    v6 = malloc_type_malloc(0x260uLL, 0xB4E622C9uLL);
    if (!v6)
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      return 0;
    }

    *v6 = 600;
    v7 = v6 + 4;
    v6[302] = 0;
    v8 = v6;
    bzero(v6 + 4, 0x248uLL);
    *(v8 + 606) &= 0xE0u;
    v9 = *(*v5 + 160);
    v16 = v7;
    result = v9(v5, 0, &v16, 0, 0);
    v10 = result;
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      if (v11[596] && (v11 + 583) >= -v11[596])
      {
        __break(1u);
        return result;
      }

      v12 = *(v11 + 1);
      v11[596] = 0;
      if (v12)
      {
        (*(v12 + 24))(v11 + 8);
        *(v11 + 1) = 0;
      }

      v14 = *(v11 - 1);
      v13 = v11 - 8;
      v15 = v14 + 8;
      if (v14 != -8)
      {
        bzero(v13, v15);
      }

      free(v13);
    }

    return (v10 & 1) != 0;
  }

  result = bssl::tls13_set_traffic_key(v3, 2, 1u, *(a1 + 1552), (a1 + 130), *(a1 + 178));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t bssl::tls13_init_key_schedule(uint64_t a1, const unsigned __int8 *a2, size_t a3)
{
  v6 = 0;
  v7 = *(*(*a1 + 48) + 208);
  if (v7 <= 0xFEFB)
  {
    if (v7 - 769 >= 4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  switch(v7)
  {
    case 0xFEFCu:
      v7 = 772;
      goto LABEL_3;
    case 0xFEFDu:
      v7 = 771;
      goto LABEL_3;
    case 0xFEFFu:
      v7 = 770;
LABEL_3:
      v6 = v7;
      break;
  }

LABEL_4:
  result = bssl::SSLTranscript::InitHash((a1 + 408), v6, *(a1 + 1584));
  if (!result)
  {
    return result;
  }

  if (*(a1 + 80) && a1 + 31 >= -*(a1 + 80))
  {
    __break(1u);
    goto LABEL_29;
  }

  *(a1 + 80) = 0;
  v9 = *(a1 + 416);
  v10 = *(v9 + 4);
  if (!v10)
  {
    goto LABEL_10;
  }

  if (v10 > 0x30)
  {
LABEL_29:
    abort();
  }

  bzero((a1 + 32), *(v9 + 4));
LABEL_10:
  *(a1 + 80) = v10;
  if ((*(a1 + 1618) & 8) == 0)
  {
    v11 = *(a1 + 408);
    *(a1 + 408) = 0;
    if (v11)
    {
      v12 = *(v11 + 8);
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

      v17 = *(v11 - 8);
      v16 = (v11 - 8);
      v18 = v17 + 8;
      if (v17 != -8)
      {
        bzero(v16, v18);
      }

      free(v16);
      LOBYTE(v10) = *(a1 + 80);
    }
  }

  v19 = *(a1 + 416);
  md_len = 0;
  v20 = HMAC(v19, (a1 + 32), v10, a2, a3, (a1 + 32), &md_len);
  result = v20 != 0;
  if (!v20)
  {
    ERR_put_error(31, 0, 28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/hkdf/hkdf.cc.inc", 51);
    return 0;
  }

  return result;
}

uint64_t bssl::tls13_init_early_key_schedule(bssl *this, bssl::SSL_HANDSHAKE *a2, const ssl_session_st *a3)
{
  v5 = 0;
  v6 = 456;
  if (!*(this + 197))
  {
    v6 = 408;
  }

  v7 = (this + v6);
  v8 = *(a2 + 2);
  if (v8 <= 0xFEFB)
  {
    if (v8 - 769 >= 4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  switch(v8)
  {
    case 0xFEFCu:
      v8 = 772;
      goto LABEL_5;
    case 0xFEFDu:
      v8 = 771;
      goto LABEL_5;
    case 0xFEFFu:
      v8 = 770;
LABEL_5:
      v5 = v8;
      break;
  }

LABEL_6:
  result = bssl::SSLTranscript::InitHash(v7, v5, *(a2 + 25));
  if (!result)
  {
    return result;
  }

  if (*(this + 80) && this + 31 >= -*(this + 80))
  {
    __break(1u);
    goto LABEL_22;
  }

  *(this + 80) = 0;
  v10 = *(v7 + 1);
  pkey_type = v10->pkey_type;
  if (!pkey_type)
  {
    goto LABEL_12;
  }

  if (pkey_type > 0x30)
  {
LABEL_22:
    abort();
  }

  bzero(this + 32, pkey_type);
  v10 = *(v7 + 1);
LABEL_12:
  *(this + 80) = pkey_type;
  v12 = *(a2 + 58);
  md_len = 0;
  v13 = HMAC(v10, this + 32, pkey_type, a2 + 10, v12, this + 32, &md_len);
  result = v13 != 0;
  if (!v13)
  {
    ERR_put_error(31, 0, 28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/hkdf/hkdf.cc.inc", 51);
    return 0;
  }

  return result;
}

uint64_t bssl::tls13_advance_key_schedule(uint64_t a1, const unsigned __int8 *a2, size_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  size = 0;
  result = EVP_Digest(0, 0, md, &size, *(a1 + 416), 0);
  if (result)
  {
    result = bssl::hkdf_expand_label(a1 + 32, *(a1 + 80), *(a1 + 416), (a1 + 32), *(a1 + 80), "derived", 7uLL, v7, md, size, ***a1);
    if (result)
    {
      v8 = *(a1 + 416);
      v9 = *(a1 + 80);
      md_len = 0;
      v10 = HMAC(v8, (a1 + 32), v9, a2, a3, (a1 + 32), &md_len);
      result = v10 != 0;
      if (!v10)
      {
        ERR_put_error(31, 0, 28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/hkdf/hkdf.cc.inc", 51);
        return 0;
      }
    }
  }

  return result;
}

BOOL bssl::hkdf_expand_label(uint64_t a1, uint64_t a2, EVP_MD *a3, void *a4, ENGINE *a5, const void *a6, size_t a7, uint64_t a8, const void *a9, size_t a10, char a11)
{
  if (!a11)
  {
    return CRYPTO_tls13_hkdf_expand_label(a1, a2, a3, a4, a5, a6, a7, a9, a10) == 1;
  }

  v29 = 0;
  v30 = 0;
  v11 = a7 + a10 + 10;
  v32 = 0u;
  *v33 = 0u;
  v34 = 0u;
  if (v11 >= 0xFFFFFFFFFFFFFFF8)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    goto LABEL_27;
  }

  v21 = malloc_type_malloc(a7 + a10 + 18, 0xB4E622C9uLL);
  if (v21)
  {
    *v21 = v11;
    v22 = v21 + 1;
LABEL_10:
    BYTE8(v32) = 0;
    *&v32 = 0;
    v33[0] = v22;
    v33[1] = 0;
    *&v34 = v11;
    BYTE8(v34) = 1;
    v31[0] = 0;
    if (!CBB_add_space(&v32, v31, 2))
    {
      goto LABEL_27;
    }

    *(v31[0] + 1) = a2;
    *v31[0] = BYTE1(a2);
    if (!CBB_add_u8_length_prefixed(&v32, v31))
    {
      goto LABEL_27;
    }

    v35[0] = 0;
    if (!CBB_add_space(v31, v35, 6))
    {
      goto LABEL_27;
    }

    v23 = v35[0];
    *(v35[0] + 2) = 13105;
    *v23 = 1936487524;
    v35[0] = 0;
    if (!CBB_add_space(v31, v35, a7))
    {
      goto LABEL_27;
    }

    if (a7)
    {
      memcpy(v35[0], a6, a7);
    }

    if (!CBB_add_u8_length_prefixed(&v32, v31))
    {
      goto LABEL_27;
    }

    v35[0] = 0;
    if (!CBB_add_space(v31, v35, a10))
    {
      goto LABEL_27;
    }

    if (a10)
    {
      memcpy(v35[0], a9, a10);
    }

    if (!CBB_finish(&v32, &v30, &v29))
    {
      goto LABEL_27;
    }

    v24 = HKDF_expand(a1, a2, a3, a4, a5, v30, v29);
    if (v30)
    {
      v26 = v30 - 8;
      v25 = *(v30 - 1);
      if (v25 != -8)
      {
        bzero(v26, v25 + 8);
      }

      free(v26);
    }

    return v24 == 1;
  }

  ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  if (!v11)
  {
    v22 = 0;
    goto LABEL_10;
  }

LABEL_27:
  if (!BYTE8(v32) && (BYTE8(v34) & 1) != 0 && v33[0])
  {
    v28 = v33[0] - 8;
    v27 = *(v33[0] - 1);
    if (v27 != -8)
    {
      bzero(v28, v27 + 8);
    }

    free(v28);
  }

  return 0;
}

uint64_t bssl::tls13_set_traffic_key(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, __int128 *a5, unint64_t a6)
{
  v12 = 0;
  v76 = *MEMORY[0x277D85DE8];
  v13 = *(a4 + 4);
  if (v13 <= 0xFEFB)
  {
    v14 = *(a4 + 4);
    if (v13 - 769 >= 4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  switch(v13)
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
  v15 = 0;
  if (*(a4 + 4) <= 0xFEFBu)
  {
    if (v13 - 769 >= 4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  switch(v13)
  {
    case 0xFEFCu:
      v13 = 772;
      goto LABEL_6;
    case 0xFEFDu:
      v13 = 771;
      goto LABEL_6;
    case 0xFEFFu:
      v13 = 770;
LABEL_6:
      v15 = v13 > 0x302;
      break;
  }

LABEL_7:
  v16 = *(*(a4 + 200) + 36);
  if (v16 == 4)
  {
    v17 = EVP_sha384();
    if (*(a1 + 152))
    {
      goto LABEL_12;
    }

LABEL_42:
    v34 = **a1;
    v73 = 0;
    result = bssl::ssl_cipher_get_evp_aead(&v73, &v72, &v72, *(a4 + 200), v12);
    if (!result)
    {
      return result;
    }

    v37 = *v73;
    if (v37 >= 0x51)
    {
      goto LABEL_102;
    }

    v38 = *(v73 + 1);
    if (v38 >= 0x19)
    {
      goto LABEL_102;
    }

    if (!bssl::hkdf_expand_label(v75, v37, v17, a5, a6, "key", 3uLL, v36, 0, 0, v34))
    {
      return 0;
    }

    if (!bssl::hkdf_expand_label(v74, v38, v17, a5, a6, "iv", 2uLL, v39, 0, 0, v34))
    {
      return 0;
    }

    bssl::SSLAEADContext::Create(a3, *(a4 + 4), *(a4 + 200), v75, v37, 0, 0, &v71, v74, v38);
    v20 = v71;
    if (!v71)
    {
      return 0;
    }

    goto LABEL_14;
  }

  if (v16 == 2)
  {
    goto LABEL_11;
  }

  if (v16 != 1)
  {
    v17 = 0;
    if (*(a1 + 152))
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

  if (!v15)
  {
    v17 = &evp_md_md5_sha1;
    if (*(a1 + 152))
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_11:
  v17 = EVP_sha256();
  if (!*(a1 + 152))
  {
    goto LABEL_42;
  }

LABEL_12:
  v18 = *(a4 + 200);
  v19 = malloc_type_malloc(0x260uLL, 0xB4E622C9uLL);
  if (!v19)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  *v19 = 600;
  v19[1] = v18;
  v20 = v19 + 1;
  v21 = v19;
  bzero(v19 + 2, 0x240uLL);
  *(v21 + 302) = 0;
  *(v21 + 606) &= 0xE0u;
LABEL_14:
  v22 = *a1;
  if (a3)
  {
    v23 = *(v22 + 20);
    v69 = v20;
    v24 = v23(a1, a2, &v69, a5, a6);
    v25 = v69;
    v69 = 0;
    if (v25)
    {
      if (v25[596] && (v25 + 583) >= -v25[596])
      {
        goto LABEL_101;
      }

      v26 = *(v25 + 1);
      v25[596] = 0;
      if (v26)
      {
        (*(v26 + 24))(v25 + 8);
        *(v25 + 1) = 0;
      }

      v28 = *(v25 - 1);
      v27 = v25 - 8;
      v29 = v28 + 8;
      if (v28 != -8)
      {
        bzero(v27, v29);
      }

      free(v27);
    }

    if (v24)
    {
      if (a6 <= 0x30)
      {
        v30 = *(a1 + 48);
        v31 = (v30 + 288);
        if (!*(v30 + 336) || v30 + 287 < -*(v30 + 336))
        {
          *(v30 + 336) = 0;
          if (!a6)
          {
LABEL_32:
            *(v30 + 336) = a6;
            return 1;
          }

          if (a6 < 8 || (v30 - a5 + 288) < 0x20)
          {
            v32 = a5;
            goto LABEL_31;
          }

          if (a6 >= 0x20)
          {
            v51 = a6 & 0x20;
            v53 = a5 + 1;
            v54 = (v30 + 304);
            v55 = v51;
            do
            {
              v56 = *v53;
              *(v54 - 1) = *(v53 - 1);
              *v54 = v56;
              v53 += 2;
              v54 += 2;
              v55 -= 32;
            }

            while (v55);
            if (a6 == v51)
            {
              goto LABEL_32;
            }

            if ((a6 & 0x18) == 0)
            {
              v32 = a5 + v51;
              v31 += v51;
              do
              {
LABEL_31:
                v33 = *v32++;
                *v31++ = v33;
              }

              while (v32 != a5 + a6);
              goto LABEL_32;
            }
          }

          else
          {
            v51 = 0;
          }

          v31 += a6 & 0x38;
          v32 = a5 + (a6 & 0x38);
          v57 = (a5 + v51);
          v58 = (v51 + v30 + 288);
          v59 = v51 - (a6 & 0x38);
          do
          {
            v60 = *v57++;
            *v58++ = v60;
            v59 += 8;
          }

          while (v59);
          if (a6 == (a6 & 0x38))
          {
            goto LABEL_32;
          }

          goto LABEL_31;
        }

LABEL_101:
        __break(1u);
      }

LABEL_102:
      abort();
    }

    return 0;
  }

  v40 = *(v22 + 19);
  v70 = v20;
  v41 = v40(a1, a2, &v70, a5, a6);
  v42 = v70;
  v70 = 0;
  if (v42)
  {
    if (v42[596] && (v42 + 583) >= -v42[596])
    {
      goto LABEL_101;
    }

    v43 = *(v42 + 1);
    v42[596] = 0;
    if (v43)
    {
      (*(v43 + 24))(v42 + 8);
      *(v42 + 1) = 0;
    }

    v45 = *(v42 - 1);
    v44 = v42 - 8;
    v46 = v45 + 8;
    if (v45 != -8)
    {
      bzero(v44, v46);
    }

    free(v44);
  }

  if (v41)
  {
    if (a6 > 0x30)
    {
      goto LABEL_102;
    }

    v47 = *(a1 + 48);
    v48 = (v47 + 337);
    if (*(v47 + 385) && v47 + 336 >= -*(v47 + 385))
    {
      goto LABEL_101;
    }

    *(v47 + 385) = 0;
    if (!a6)
    {
LABEL_69:
      *(v47 + 385) = a6;
      return 1;
    }

    if (a6 < 8 || (v47 - a5 + 337) < 0x20)
    {
      v49 = a5;
      goto LABEL_68;
    }

    if (a6 >= 0x20)
    {
      v52 = a6 & 0x20;
      v61 = a5 + 1;
      v62 = v52;
      v63 = (v47 + 337);
      do
      {
        v64 = *v61;
        *v63 = *(v61 - 1);
        v63[1] = v64;
        v63 += 2;
        v61 += 2;
        v62 -= 32;
      }

      while (v62);
      if (a6 == v52)
      {
        goto LABEL_69;
      }

      if ((a6 & 0x18) == 0)
      {
        v49 = a5 + v52;
        v48 += v52;
        do
        {
LABEL_68:
          v50 = *v49++;
          *v48++ = v50;
        }

        while (v49 != a5 + a6);
        goto LABEL_69;
      }
    }

    else
    {
      v52 = 0;
    }

    v48 += a6 & 0x38;
    v49 = a5 + (a6 & 0x38);
    v65 = (a5 + v52);
    v66 = (v52 + v47 + 337);
    v67 = v52 - (a6 & 0x38);
    do
    {
      v68 = *v65++;
      *v66++ = v68;
      v67 += 8;
    }

    while (v67);
    if (a6 == (a6 & 0x38))
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  return 0;
}

void bssl::RecordNumberEncrypter::Create(uint64_t a1@<X0>, void *a2@<X1>, ENGINE *a3@<X2>, char **a4@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 36);
  if (v8 == 4)
  {
    v9 = EVP_sha384();
    v10 = *(a1 + 28);
    if (v10 == 32)
    {
      goto LABEL_14;
    }
  }

  else if (v8 == 2 || v8 == 1)
  {
    v9 = EVP_sha256();
    v10 = *(a1 + 28);
    if (v10 == 32)
    {
LABEL_14:
      v15 = malloc_type_malloc(0x30uLL, 0xB4E622C9uLL);
      if (v15)
      {
        *v15 = 40;
        v12 = v15 + 8;
        v15[1] = 0u;
        v15[2] = 0u;
        v13 = &unk_2882A6228;
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v9 = 0;
    v10 = *(a1 + 28);
    if (v10 == 32)
    {
      goto LABEL_14;
    }
  }

  if (v10 == 16)
  {
    v14 = malloc_type_malloc(0x108uLL, 0xB4E622C9uLL);
    if (v14)
    {
      *v14 = 256;
      v12 = v14 + 8;
      v14[1] = 0u;
      v14[2] = 0u;
      v14[3] = 0u;
      v14[4] = 0u;
      v14[5] = 0u;
      v14[6] = 0u;
      v14[7] = 0u;
      v14[8] = 0u;
      v14[9] = 0u;
      v14[10] = 0u;
      v14[11] = 0u;
      v14[12] = 0u;
      v14[13] = 0u;
      v14[14] = 0u;
      v14[15] = 0u;
      *(v14 + 32) = 0;
      v13 = &unk_2882A61F0;
      goto LABEL_16;
    }

LABEL_23:
    v22 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v23 = 14;
    v24 = 65;
    v25 = 217;
LABEL_25:
    ERR_put_error(v23, 0, v24, v22, v25);
    *a4 = 0;
    return;
  }

  if (v10 != 8)
  {
    v22 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_enc.cc";
    v23 = 16;
    v24 = 68;
    v25 = 324;
    goto LABEL_25;
  }

  v11 = malloc_type_malloc(0x108uLL, 0xB4E622C9uLL);
  if (!v11)
  {
    goto LABEL_23;
  }

  *v11 = 256;
  v12 = v11 + 8;
  v11[1] = 0u;
  v11[2] = 0u;
  v11[3] = 0u;
  v11[4] = 0u;
  v11[5] = 0u;
  v11[6] = 0u;
  v11[7] = 0u;
  v11[8] = 0u;
  v11[9] = 0u;
  v11[10] = 0u;
  v11[11] = 0u;
  v11[12] = 0u;
  v11[13] = 0u;
  v11[14] = 0u;
  v11[15] = 0u;
  *(v11 + 32) = 0;
  v13 = &unk_2882A61B8;
LABEL_16:
  *v12 = v13;
  v16 = (v13)[2](v12);
  if (v16 >= 0x21)
  {
    abort();
  }

  v18 = v16;
  if (bssl::hkdf_expand_label(v26, v16, v9, a2, a3, "sn", 2uLL, v17, 0, 0, 1) && (*(*v12 + 24))(v12, v26, v18))
  {
    *a4 = v12;
  }

  else
  {
    *a4 = 0;
    (**v12)(v12);
    v20 = *(v12 - 1);
    v19 = v12 - 8;
    v21 = v20 + 8;
    if (v20 != -8)
    {
      bzero(v19, v21);
    }

    free(v19);
  }
}

uint64_t bssl::tls13_derive_early_secret(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  v3 = *this;
  if ((*(*this + 164) & 1) != 0 || !*(this + 197))
  {
    v4 = 408;
  }

  else
  {
    v4 = 456;
  }

  result = bssl::derive_secret_with_transcript(this, this + 81, this + v4, "c e traffic", 0xBuLL);
  if (result)
  {
    v6 = *(this + 129);

    return bssl::ssl_log_secret(v3, "CLIENT_EARLY_TRAFFIC_SECRET", this + 81, v6);
  }

  return result;
}

BOOL bssl::derive_secret_with_transcript(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5)
{
  v27 = *MEMORY[0x277D85DE8];
  memset(&out, 0, sizeof(out));
  v11 = EVP_MD_CTX_copy_ex(&out, (a3 + 8));
  if (v11)
  {
    (out.digest->update)(&out, v26);
    pkey_type = out.digest->pkey_type;
    final_high = HIDWORD(out.digest->final);
    if (final_high)
    {
      bzero(out.engine, final_high);
    }

    engine = out.engine;
    if (!out.engine)
    {
LABEL_5:
      md_data = out.md_data;
      if (!out.md_data)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else
  {
    pkey_type = 0;
    engine = out.engine;
    if (!out.engine)
    {
      goto LABEL_5;
    }
  }

  v22 = *(engine - 1);
  v21 = engine - 8;
  v23 = v22 + 8;
  if (v22 != -8)
  {
    bzero(v21, v23);
  }

  free(v21);
  md_data = out.md_data;
  if (out.md_data)
  {
LABEL_6:
    (*md_data)(out.flags);
  }

LABEL_7:
  if (!v11)
  {
    return 0;
  }

  v16 = *(a3 + 8);
  v17 = v16->pkey_type;
  v18 = *(a2 + 48);
  v19 = v17 >= v18;
  v20 = v17 - v18;
  if (v20 != 0 && v19)
  {
    if (v17 >= 0x31)
    {
      abort();
    }
  }

  else if (v20)
  {
    if (v20 <= a2 + v17 - 1)
    {
      __break(1u);
    }
  }

  *(a2 + 48) = v17;
  return bssl::hkdf_expand_label(a2, v17, v16, (a1 + 32), *(a1 + 80), a4, a5, v10, v26, pkey_type, ***a1);
}

uint64_t bssl::tls13_derive_handshake_secrets(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  v4 = this + 130;
  v3 = *this;
  if (!bssl::derive_secret_with_transcript(this, this + 130, this + 408, "c hs traffic", 0xCuLL) || !bssl::ssl_log_secret(v3, "CLIENT_HANDSHAKE_TRAFFIC_SECRET", v4, *(this + 178)) || !bssl::derive_secret_with_transcript(this, this + 179, this + 408, "s hs traffic", 0xCuLL))
  {
    return 0;
  }

  v5 = *(this + 227);

  return bssl::ssl_log_secret(v3, "SERVER_HANDSHAKE_TRAFFIC_SECRET", this + 179, v5);
}

uint64_t bssl::tls13_derive_application_secrets(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  v4 = this + 228;
  v3 = *this;
  if (!bssl::derive_secret_with_transcript(this, this + 228, this + 408, "c ap traffic", 0xCuLL) || !bssl::ssl_log_secret(v3, "CLIENT_TRAFFIC_SECRET_0", v4, *(this + 276)) || !bssl::derive_secret_with_transcript(this, this + 277, this + 408, "s ap traffic", 0xCuLL) || !bssl::ssl_log_secret(v3, "SERVER_TRAFFIC_SECRET_0", this + 277, *(this + 325)) || !bssl::derive_secret_with_transcript(this, *(v3 + 48) + 386, this + 408, "exp master", 0xAuLL))
  {
    return 0;
  }

  v5 = *(v3 + 48);
  v6 = *(v5 + 434);

  return bssl::ssl_log_secret(v3, "EXPORTER_SECRET", (v5 + 386), v6);
}

uint64_t bssl::tls13_rotate_traffic_key(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 48);
  if (a2)
  {
    v11 = 288;
  }

  else
  {
    v11 = 337;
  }

  v12 = 385;
  if (a2)
  {
    v12 = 336;
  }

  v13 = *(v10 + 464);
  if (v13 || (v14 = *(v10 + 280), (v13 = v14[195]) != 0) || (v13 = v14[194]) != 0)
  {
    v15 = 0;
    v16 = *(v10 + v12);
    v17 = *(v13 + 4);
    if (v17 <= 0xFEFB)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v13 = *(*v14 + 88);
    v15 = 0;
    v16 = *(v10 + v12);
    v17 = *(v13 + 4);
    if (v17 <= 0xFEFB)
    {
LABEL_10:
      if (v17 - 769 >= 4)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  switch(v17)
  {
    case 0xFEFCu:
      v17 = 772;
      goto LABEL_11;
    case 0xFEFDu:
      v17 = 771;
      goto LABEL_11;
    case 0xFEFFu:
      v17 = 770;
LABEL_11:
      v15 = v17 > 0x302;
      break;
  }

LABEL_12:
  v18 = *(*(v13 + 200) + 36);
  switch(v18)
  {
    case 4:
      v19 = EVP_sha384();
      goto LABEL_18;
    case 2:
LABEL_16:
      v19 = EVP_sha256();
LABEL_18:
      v20 = v19;
      break;
    case 1:
      if (v15)
      {
        goto LABEL_16;
      }

      v20 = &evp_md_md5_sha1;
      break;
    default:
      v20 = 0;
      break;
  }

  result = bssl::hkdf_expand_label(v10 + v11, v16, v20, (v10 + v11), v16, "traffic upd", 0xBuLL, a8, 0, 0, **a1);
  if (result)
  {

    return bssl::tls13_set_traffic_key(a1, 3, a2, v13, (v10 + v11), v16);
  }

  return result;
}

uint64_t bssl::tls13_finished_mac(const EVP_MD_CTX *this, bssl::SSL_HANDSHAKE *a2, unsigned __int8 *a3, unint64_t *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = 130;
  if (a4)
  {
    v7 = 179;
  }

  v8 = this + v7;
  v9 = *(&this[1].flags + v7);
  memset(&out, 0, sizeof(out));
  v11 = EVP_MD_CTX_copy_ex(&out, this + 13);
  if (v11)
  {
    (out.digest->update)(&out, d);
    pkey_type = out.digest->pkey_type;
    final_high = HIDWORD(out.digest->final);
    if (final_high)
    {
      bzero(out.engine, final_high);
    }

    engine = out.engine;
    if (!out.engine)
    {
LABEL_7:
      md_data = out.md_data;
      if (!out.md_data)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    pkey_type = 0;
    engine = out.engine;
    if (!out.engine)
    {
      goto LABEL_7;
    }
  }

  v21 = *(engine - 1);
  v20 = engine - 8;
  v22 = v21 + 8;
  if (v21 != -8)
  {
    bzero(v20, v22);
  }

  free(v20);
  md_data = out.md_data;
  if (out.md_data)
  {
LABEL_8:
    (*md_data)(out.flags);
  }

LABEL_9:
  if (!v11)
  {
    return 0;
  }

  digest = this[13].digest;
  v17 = **&this->digest->type;
  v18 = digest->pkey_type;
  md_len = 0;
  result = bssl::hkdf_expand_label(&out, v18, digest, v8, v9, "finished", 8uLL, v10, 0, 0, v17);
  if (result)
  {
    result = HMAC(digest, &out, v18, d, pkey_type, a2, &md_len);
    if (result)
    {
      *a3 = md_len;
      return 1;
    }
  }

  return result;
}

unsigned __int8 *bssl::tls13_verify_data(unsigned __int8 *a1, void *a2, EVP_MD *a3, void *a4, ENGINE *a5, const unsigned __int8 *a6, size_t a7, uint64_t a8)
{
  v17 = *MEMORY[0x277D85DE8];
  pkey_type = a3->pkey_type;
  result = bssl::hkdf_expand_label(key, pkey_type, a3, a4, a5, "finished", 8uLL, a8, 0, 0, a8);
  if (result)
  {
    result = HMAC(a3, key, pkey_type, a6, a7, a1, &md_len);
    if (result)
    {
      *a2 = md_len;
      return 1;
    }
  }

  return result;
}

BOOL bssl::tls13_derive_session_psk(uint64_t a1, const void *a2, size_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = 0;
  v13 = *(a1 + 4);
  if (v13 <= 0xFEFB)
  {
    if (v13 - 769 >= 4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  switch(v13)
  {
    case 0xFEFCu:
      v13 = 772;
      goto LABEL_3;
    case 0xFEFDu:
      v13 = 771;
      goto LABEL_3;
    case 0xFEFFu:
      v13 = 770;
LABEL_3:
      v12 = v13 > 0x302;
      break;
  }

LABEL_4:
  v14 = *(*(a1 + 200) + 36);
  if (v14 == 4)
  {
    v15 = EVP_sha384();
  }

  else
  {
    if (v14 != 2)
    {
      if (v14 != 1)
      {
        v16 = 0;
        return bssl::hkdf_expand_label(a1 + 10, *(a1 + 58), v16, (a1 + 10), *(a1 + 58), "resumption", 0xAuLL, a8, a2, a3, a4);
      }

      if (!v12)
      {
        v16 = &evp_md_md5_sha1;
        return bssl::hkdf_expand_label(a1 + 10, *(a1 + 58), v16, (a1 + 10), *(a1 + 58), "resumption", 0xAuLL, a8, a2, a3, a4);
      }
    }

    v15 = EVP_sha256();
  }

  v16 = v15;
  return bssl::hkdf_expand_label(a1 + 10, *(a1 + 58), v16, (a1 + 10), *(a1 + 58), "resumption", 0xAuLL, a8, a2, a3, a4);
}

uint64_t bssl::tls13_export_keying_material(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, ENGINE *a5, const void *a6, size_t a7, uint64_t a8, const void *a9, size_t a10)
{
  v34 = *MEMORY[0x277D85DE8];
  if (!a5)
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_enc.cc", 479);
    return 0;
  }

  v11 = *(a1 + 48);
  v12 = *(v11 + 464);
  if (!v12)
  {
    v13 = *(v11 + 280);
    v12 = v13[195];
    if (!v12)
    {
      v12 = v13[194];
      if (!v12)
      {
        v12 = *(*v13 + 88);
      }
    }
  }

  v14 = 0;
  v15 = *(v12 + 4);
  if (v15 <= 0xFEFB)
  {
    if (v15 - 769 >= 4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  switch(v15)
  {
    case 0xFEFCu:
      v15 = 772;
      goto LABEL_8;
    case 0xFEFDu:
      v15 = 771;
      goto LABEL_8;
    case 0xFEFFu:
      v15 = 770;
LABEL_8:
      v14 = v15 > 0x302;
      break;
  }

LABEL_9:
  v16 = *(*(v12 + 200) + 36);
  if (v16 == 4)
  {
    v22 = EVP_sha384();
  }

  else
  {
    if (v16 != 2)
    {
      if (v16 != 1)
      {
        v24 = 0;
        goto LABEL_24;
      }

      if (!v14)
      {
        v24 = &evp_md_md5_sha1;
        goto LABEL_24;
      }
    }

    v22 = EVP_sha256();
  }

  v24 = v22;
LABEL_24:
  *size = 0;
  result = EVP_Digest(a9, a10, md, &size[1], v24, 0);
  if (result)
  {
    result = EVP_Digest(0, 0, v32, size, v24, 0);
    if (result)
    {
      v26 = size[1];
      pkey_type = v24->pkey_type;
      result = bssl::hkdf_expand_label(v31, pkey_type, v24, a4, a5, a6, a7, v25, v32, size[0], **a1);
      if (result)
      {
        return bssl::hkdf_expand_label(a2, a3, v24, v31, pkey_type, "exporter", 8uLL, v28, md, v26, **a1);
      }
    }
  }

  return result;
}

uint64_t bssl::tls13_write_psk_binder(unsigned __int8 ***a1, uint64_t a2, uint64_t a3, unint64_t a4, size_t *a5)
{
  v10 = 0;
  v22 = *MEMORY[0x277D85DE8];
  v11 = *a1;
  v12 = (*a1)[11];
  v13 = *(v12 + 2);
  if (v13 <= 0xFEFB)
  {
    if (v13 - 769 >= 4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  switch(v13)
  {
    case 0xFEFCu:
      v13 = 772;
      goto LABEL_3;
    case 0xFEFDu:
      v13 = 771;
      goto LABEL_3;
    case 0xFEFFu:
      v13 = 770;
LABEL_3:
      v10 = v13 > 0x302;
      break;
  }

LABEL_4:
  v14 = *(*(v12 + 25) + 36);
  if (v14 == 4)
  {
    v15 = EVP_sha384();
  }

  else if (v14 == 2 || v10)
  {
    v15 = EVP_sha256();
  }

  else
  {
    v15 = &evp_md_md5_sha1;
  }

  pkey_type = v15->pkey_type;
  v20 = 0;
  v17 = bssl::tls13_psk_binder(__src, &v20, *(v11 + 88), a2, a3, a4, pkey_type + 3, ***a1);
  if (v20 == pkey_type)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    if (a4 < pkey_type)
    {
      abort();
    }

    if (pkey_type)
    {
      memcpy((a3 + a4 - pkey_type), __src, pkey_type);
    }

    if (a5)
    {
      *a5 = pkey_type;
    }
  }

  else
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_enc.cc", 595);
  }

  return v18;
}

unsigned __int8 *bssl::tls13_psk_binder(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8)
{
  v16 = 0;
  v48 = *MEMORY[0x277D85DE8];
  v17 = *(a3 + 4);
  if (v17 <= 0xFEFB)
  {
    if (v17 - 769 >= 4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  switch(v17)
  {
    case 0xFEFCu:
      v17 = 772;
      goto LABEL_3;
    case 0xFEFDu:
      v17 = 771;
      goto LABEL_3;
    case 0xFEFFu:
      v17 = 770;
LABEL_3:
      v16 = v17 > 0x302;
      break;
  }

LABEL_4:
  v18 = *(*(a3 + 200) + 36);
  switch(v18)
  {
    case 4:
      v19 = EVP_sha384();
      goto LABEL_14;
    case 2:
LABEL_8:
      v19 = EVP_sha256();
LABEL_14:
      v20 = v19;
      break;
    case 1:
      if (v16)
      {
        goto LABEL_8;
      }

      v20 = &evp_md_md5_sha1;
      break;
    default:
      v20 = 0;
      break;
  }

  size = 0;
  v45 = 0u;
  v46 = 0u;
  *v43 = 0u;
  v44 = 0u;
  memset(v42, 0, sizeof(v42));
  pkey_type = v20->pkey_type;
  result = EVP_Digest(0, 0, md, &size, v20, 0);
  if (!result)
  {
    return result;
  }

  v23 = *(a3 + 58);
  md_len[0] = 0;
  if (!HMAC(v20, 0, 0, (a3 + 10), v23, v43, md_len))
  {
    v25 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/hkdf/hkdf.cc.inc";
    v26 = 31;
    v27 = 28;
    v28 = 51;
    goto LABEL_24;
  }

  result = bssl::hkdf_expand_label(v42, pkey_type, v20, v43, md_len[0], "res binder", 0xAuLL, v24, md, size, a8);
  if (!result)
  {
    return result;
  }

  if (a6 < a7)
  {
    v25 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_enc.cc";
    v26 = 16;
    v27 = 68;
    v28 = 539;
LABEL_24:
    ERR_put_error(v26, 0, v27, v25, v28);
    return 0;
  }

  if (a6 >= a6 - a7)
  {
    a6 -= a7;
  }

  memset(&out, 0, sizeof(out));
  if ((a8 & 1) == 0)
  {
    v32 = *(a4 + 8);
    if (v32 && *v32 == v20->type)
    {
      result = EVP_MD_CTX_copy_ex(&out, (a4 + 8));
      if (!result)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (!*a4)
      {
        goto LABEL_49;
      }

      result = bssl::SSLTranscript::HashBuffer(a4, &out, v20);
      if (!result)
      {
        goto LABEL_51;
      }
    }

    (out.digest->init)(&out, a5, a6);
LABEL_46:
    (out.digest->update)(&out, md_len);
    v33 = out.digest->pkey_type;
    final_high = HIDWORD(out.digest->final);
    if (final_high)
    {
      bzero(out.engine, final_high);
    }

    result = bssl::tls13_verify_data(a1, a2, v20, v42, pkey_type, md_len, v33, a8);
    goto LABEL_51;
  }

  v29 = a6 >= 0xC;
  v30 = a6 - 12;
  if (!v29)
  {
    goto LABEL_50;
  }

  v31 = *(a4 + 8);
  if (v31 && *v31 == v20->type)
  {
    result = EVP_MD_CTX_copy_ex(&out, (a4 + 8));
    if (!result)
    {
      goto LABEL_51;
    }

    goto LABEL_45;
  }

  if (!*a4)
  {
LABEL_49:
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_transcript.cc", 153);
LABEL_50:
    result = 0;
    goto LABEL_51;
  }

  result = bssl::SSLTranscript::HashBuffer(a4, &out, v20);
  if (result)
  {
LABEL_45:
    (out.digest->init)(&out, a5, 4);
    (out.digest->init)(&out, a5 + 12, v30);
    goto LABEL_46;
  }

LABEL_51:
  if (out.engine)
  {
    v35 = result;
    v37 = out.engine - 8;
    v36 = *(out.engine - 1);
    if (v36 != -8)
    {
      bzero(v37, v36 + 8);
    }

    free(v37);
    result = v35;
  }

  if (out.md_data)
  {
    v38 = result;
    (*out.md_data)(out.flags);
    return v38;
  }

  return result;
}

uint64_t bssl::tls13_verify_psk_binder(unsigned __int8 ***a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10, int8x16_t a11, int8x16_t a12, int8x16_t a13, int8x16_t a14, int8x16_t a15)
{
  v49.i64[1] = *MEMORY[0x277D85DE8];
  v47 = 0;
  if (!bssl::tls13_psk_binder(v48, &v47, a2, (a1 + 51), *(a3 + 24), *(a3 + 32), a4[1] + 2, ***a1) || (v16 = a4[1]) == 0 || (v17 = *a4, v18 = *a4 + 1, v19 = v16 - 1, *a4 = v18, a4[1] = (v16 - 1), v20 = *v17, v21 = v19 >= v20, v22 = &v19[-v20], !v21))
  {
    v23 = 68;
    v24 = 620;
LABEL_5:
    ERR_put_error(16, 0, v23, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_enc.cc", v24);
    return 0;
  }

  *a4 = v18 + v20;
  a4[1] = v22;
  if (v47 != v20)
  {
LABEL_27:
    v23 = 142;
    v24 = 631;
    goto LABEL_5;
  }

  if (v20)
  {
    if (v20 < 8)
    {
      v26 = 0;
      v27 = 0;
      goto LABEL_24;
    }

    if (v20 >= 0x20)
    {
      v26 = v20 & 0xE0;
      v28 = veorq_s8(v48[0], *(v17 + 1));
      v29 = veorq_s8(v48[1], *(v17 + 17));
      if (v26 != 32)
      {
        v28 = vorrq_s8(veorq_s8(v48[2], *(v17 + 33)), v28);
        v29 = vorrq_s8(veorq_s8(v48[3], *(v17 + 49)), v29);
        if (v26 != 64)
        {
          v28 = vorrq_s8(veorq_s8(v49, *(v17 + 65)), v28);
          v29 = vorrq_s8(veorq_s8(v50, *(v17 + 81)), v29);
          if (v26 != 96)
          {
            v28 = vorrq_s8(veorq_s8(vars0, *(v17 + 97)), v28);
            v29 = vorrq_s8(veorq_s8(a9, *(v17 + 113)), v29);
            if (v26 != 128)
            {
              v28 = vorrq_s8(veorq_s8(a10, *(v17 + 129)), v28);
              v29 = vorrq_s8(veorq_s8(a11, *(v17 + 145)), v29);
              if (v26 != 160)
              {
                v28 = vorrq_s8(veorq_s8(a12, *(v17 + 161)), v28);
                v29 = vorrq_s8(veorq_s8(a13, *(v17 + 177)), v29);
                if (v26 != 192)
                {
                  v28 = vorrq_s8(veorq_s8(a14, *(v17 + 193)), v28);
                  v29 = vorrq_s8(veorq_s8(a15, *(v17 + 209)), v29);
                }
              }
            }
          }
        }
      }

      v30 = vorrq_s8(v29, v28);
      *v30.i8 = vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL));
      v31 = v30.i64[0] | HIDWORD(v30.i64[0]) | ((v30.i64[0] | HIDWORD(v30.i64[0])) >> 16);
      v27 = v31 | BYTE1(v31);
      if (v26 == v20)
      {
        goto LABEL_26;
      }

      if ((v20 & 0x18) == 0)
      {
LABEL_24:
        v41 = v20 - v26;
        v42 = &v48[0].i8[v26];
        v43 = &v17[v26 + 1];
        do
        {
          v45 = *v43++;
          v44 = v45;
          v46 = *v42++;
          v27 |= v46 ^ v44;
          --v41;
        }

        while (v41);
        goto LABEL_26;
      }
    }

    else
    {
      v27 = 0;
      v26 = 0;
    }

    v32 = v26;
    v33 = v27;
    v26 = v20 & 0xF8;
    v34 = &v17[v32 + 1];
    v35 = (v48 + v32);
    v36 = v32 - v26;
    do
    {
      v37 = *v34++;
      v38 = v37;
      v39 = *v35++;
      v33 = vorr_s8(veor_s8(v39, v38), v33);
      v36 += 8;
    }

    while (v36);
    v40 = *&v33 | HIDWORD(*&v33) | ((*&v33 | HIDWORD(*&v33)) >> 16);
    v27 = v40 | BYTE1(v40);
    if (v26 != v20)
    {
      goto LABEL_24;
    }

LABEL_26:
    if (v27)
    {
      goto LABEL_27;
    }
  }

  return 1;
}

BOOL bssl::ssl_ech_accept_confirmation(char ***a1, uint64_t a2, uint64_t a3, const unsigned __int8 *a4, size_t a5, bssl::SSLTranscript *this, int a7, int a8, uint64_t a9, unint64_t a10, uint64_t a11)
{
  v38 = *MEMORY[0x277D85DE8];
  if (a10 < a11 + 8)
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_enc.cc", 656);
    return 0;
  }

  if (a10 >= 4)
  {
    v12 = 4;
  }

  else
  {
    v12 = a10;
  }

  if (***a1)
  {
    v13 = 12;
  }

  else
  {
    v13 = 4;
  }

  if (a10 < v13)
  {
    abort();
  }

  if (a10 - v13 >= a11 - v13)
  {
    v14 = a11 - v13;
  }

  else
  {
    v14 = a10 - v13;
  }

  memset(&out, 0, sizeof(out));
  v15 = (this + 8);
  if (*(this + 1))
  {
    v16 = a4;
    v17 = a5;
    v18 = a7;
    v31 = a1;
    v32 = a2;
    v33 = a3;
    if (!EVP_MD_CTX_copy_ex(&out, (this + 8)))
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (!*this)
    {
      ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_transcript.cc", 153);
      v11 = 0;
      engine = out.engine;
      if (!out.engine)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v16 = a4;
    v17 = a5;
    v18 = a7;
    v31 = a1;
    v32 = a2;
    v33 = a3;
    if (!bssl::SSLTranscript::HashBuffer(this, &out, 0))
    {
LABEL_16:
      v11 = 0;
      engine = out.engine;
      if (!out.engine)
      {
        goto LABEL_37;
      }

LABEL_34:
      v28 = *(engine - 1);
      v27 = engine - 8;
      v29 = v28 + 8;
      if (v28 != -8)
      {
        bzero(v27, v29);
      }

      free(v27);
      goto LABEL_37;
    }
  }

  (out.digest->init)(&out, a9, v12);
  (out.digest->init)(&out, a9 + v13, v14);
  (out.digest->init)(&out, &bssl::ssl_ech_accept_confirmation(bssl::SSL_HANDSHAKE const*,bssl::Span<unsigned char>,bssl::Span<unsigned char const>,bssl::SSLTranscript const&,BOOL,bssl::Span<unsigned char const>,unsigned long)::kZeros, 8);
  (out.digest->init)(&out, a9 + a11 + 8, a10 - (a11 + 8));
  (out.digest->update)(&out, v37);
  pkey_type = out.digest->pkey_type;
  final_high = HIDWORD(out.digest->final);
  if (final_high)
  {
    bzero(out.engine, final_high);
  }

  v22 = *v15;
  v23 = (*v15)->pkey_type;
  md_len = 0;
  if (HMAC(v22, &bssl::ssl_ech_accept_confirmation(bssl::SSL_HANDSHAKE const*,bssl::Span<unsigned char>,bssl::Span<unsigned char const>,bssl::SSLTranscript const&,BOOL,bssl::Span<unsigned char const>,unsigned long)::kZeros, v23, v16, v17, md, &md_len))
  {
    if (v18)
    {
      v25 = 27;
    }

    else
    {
      v25 = 23;
    }

    if (v18)
    {
      v26 = "hrr ech accept confirmation";
    }

    else
    {
      v26 = "ech accept confirmation";
    }

    v11 = bssl::hkdf_expand_label(v32, v33, *v15, md, md_len, v26, v25, v24, v37, pkey_type, ***v31);
    engine = out.engine;
    if (!out.engine)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  ERR_put_error(31, 0, 28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/hkdf/hkdf.cc.inc", 51);
  v11 = 0;
  engine = out.engine;
  if (out.engine)
  {
    goto LABEL_34;
  }

LABEL_37:
  if (out.md_data)
  {
    (*out.md_data)(out.flags);
  }

  return v11;
}

uint64_t bssl::anonymous namespace::AESRecordNumberEncrypter::SetKey(uint64_t a1, int8x16_t *a2, int a3)
{
  v3 = 8 * a3;
  if (8 * a3 != 128 && v3 != 256 && v3 != 192)
  {
    return 0;
  }

  if (aes_nohw_set_encrypt_key(a2, v3, (a1 + 8)))
  {
    abort();
  }

  return 1;
}

BOOL bssl::anonymous namespace::AESRecordNumberEncrypter::GenerateMask(uint64_t a1, void *a2, size_t a3, void *a4, unint64_t a5)
{
  __src[2] = *MEMORY[0x277D85DE8];
  v6 = a5 > 0xF && a3 < 0x11;
  if (v6)
  {
    aes_nohw_encrypt(a4, __src, a1 + 8);
    if (a3)
    {
      memcpy(a2, __src, a3);
    }
  }

  return v6;
}

BOOL bssl::anonymous namespace::ChaChaRecordNumberEncrypter::SetKey(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (a3 == 32)
  {
    v3 = *a2;
    *(a1 + 24) = a2[1];
    *(a1 + 8) = v3;
  }

  return a3 == 32;
}

BOOL bssl::anonymous namespace::ChaChaRecordNumberEncrypter::GenerateMask(uint64_t a1, int8x16_t *a2, size_t a3, int *a4, unint64_t a5)
{
  if (a5 >= 0x10)
  {
    v6 = a4 + 1;
    v7 = *a4;
    if (a3)
    {
      v8 = a1;
      v9 = a2;
      v10 = a3;
      bzero(a2, a3);
      a1 = v8;
      a2 = v9;
      a3 = v10;
    }

    CRYPTO_chacha_20(a2, a2, a3, (a1 + 8), v6, v7);
  }

  return a5 > 0xF;
}

uint64_t bssl::tls13_server_handshake(bssl *this, bssl::SSL_HANDSHAKE *method, BOOL *a3)
{
  v4 = (this + 1629);
  *&ses.quiet_shutdown = *MEMORY[0x277D85DE8];
  v5 = (this + 326);
  v331 = this + 1628;
  while (2)
  {
    v6 = *(this + 6);
    v7 = 1;
    switch(v6)
    {
      case 0:
        v8 = *this;
        if (!bssl::SSL_HANDSHAKE::GetClientHello(this, &ses.app_verify_arg, &ses.rsa_md5))
        {
          goto LABEL_391;
        }

        options = ses.options;
        if (*(v8 + 19))
        {
          v10 = ses.options == 0;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
          v95 = 306;
          v96 = 320;
LABEL_241:
          ERR_put_error(16, 0, v95, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_server.cc", v96);
          v97 = v8;
          session_cache_head_low = 47;
          goto LABEL_319;
        }

        if (**v8)
        {
          *&ses.stats.sess_connect_good = 0;
          *&ses.stats.sess_accept_renegotiate = 0;
          if (bssl::ssl_get_full_credential_list(this, &ses.stats.sess_connect_good))
          {
            goto LABEL_451;
          }

          goto LABEL_503;
        }

        if (ses.options > 0x20)
        {
          goto LABEL_745;
        }

        client_CA = ses.client_CA;
        if (*(this + 1661) && v331 >= -*(this + 1661))
        {
          goto LABEL_744;
        }

        *(this + 1661) = 0;
        if (!options)
        {
          goto LABEL_450;
        }

        if (options < 4 || (v4 - client_CA) < 0x10)
        {
          v132 = v4;
          v133 = client_CA;
          goto LABEL_448;
        }

        if (options >= 0x10)
        {
          v113 = options & 0x30;
          *v4 = *&client_CA->num;
          if (v113 != 16)
          {
            v4[1] = *&client_CA->sorted;
          }

          if (options == v113)
          {
LABEL_450:
            *(this + 1661) = options;
            *&ses.stats.sess_connect_good = 0;
            *&ses.stats.sess_accept_renegotiate = 0;
            if (bssl::ssl_get_full_credential_list(this, &ses.stats.sess_connect_good))
            {
LABEL_451:
              if (!*&ses.stats.sess_accept_renegotiate)
              {
                ERR_put_error(16, 0, 174, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_server.cc", 338);
                bssl::ssl_send_alert(v8, 2, 80);
                v7 = 0;
                p_type = *&ses.stats.sess_connect_good;
                goto LABEL_233;
              }

              v196 = *&ses.stats.sess_connect_good;
              v197 = *&ses.stats.sess_connect_good + 8 * *&ses.stats.sess_accept_renegotiate;
              while (1)
              {
                v200 = *v196;
                ERR_clear_error();
                v201 = *(v200 + 4);
                if (v201 == 3)
                {
                  v202 = *(this + 209);
                  if (v202)
                  {
                    if (*v202 == 32150)
                    {
                      v203 = *(v202 + 16);
                      if (v203 == *(v200 + 112) && !memcmp(*(v202 + 8), *(v200 + 104), v203))
                      {
                        v204 = *(v202 + 32);
                        if (v204 == *(v200 + 128) && !memcmp(*(v202 + 24), *(v200 + 120), v204))
                        {
                          v231 = atomic_load(v200);
                          if (v231 != -1)
                          {
                            for (i = v231; i != -1; v231 = i)
                            {
                              atomic_compare_exchange_strong(v200, &i, v231 + 1);
                              if (i == v231)
                              {
                                break;
                              }
                            }
                          }

                          v233 = *(this + 192);
                          *(this + 192) = v200;
                          if (v233)
                          {
                            SSL_CREDENTIAL_free(v233);
                          }

                          v234 = OPENSSL_malloc(0x1B8uLL);
                          if (v234)
                          {
                            *v234 = 0;
                          }

                          v236 = *(this + 213);
                          *(this + 213) = v234;
                          if (v236)
                          {
                            v238 = *(v236 - 8);
                            v237 = (v236 - 8);
                            v239 = v238 + 8;
                            if (v238 != -8)
                            {
                              bzero(v237, v239);
                            }

                            free(v237);
                            v234 = *(this + 213);
                          }

                          if (v234 && (bssl::spake2plus::Verifier::Init(v234, *(v200 + 88), *(v200 + 96), *(v200 + 104), *(v200 + 112), *(v200 + 120), *(v200 + 128), v235, *(v200 + 136), *(v200 + 144), *(v200 + 168), *(v200 + 176), 0, 0) & 1) != 0)
                          {
                            goto LABEL_487;
                          }

                          v217 = v8;
                          v218 = 80;
                          goto LABEL_502;
                        }
                      }
                    }
                  }

                  v198 = 326;
                  v199 = 302;
                  goto LABEL_454;
                }

                *&ses.sid_ctx[8] = 0;
                if (v201)
                {
                  if (v201 != 1)
                  {
                    v198 = 228;
                    v199 = 275;
LABEL_454:
                    ERR_put_error(16, 0, v198, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_server.cc", v199);
                    goto LABEL_455;
                  }

                  v205 = *(this + 82);
                  if (v205)
                  {
                    v206 = 2 * v205;
                    v207 = *(this + 81);
                    while (*v207 != *(v200 + 64))
                    {
                      ++v207;
                      v206 -= 2;
                      if (!v206)
                      {
                        goto LABEL_477;
                      }
                    }
                  }

                  else
                  {
                    v207 = *(this + 81);
                  }

                  if (v207 == (*(this + 81) + 2 * v205))
                  {
LABEL_477:
                    v198 = 253;
                    v199 = 270;
                    goto LABEL_454;
                  }
                }

                if (bssl::tls1_choose_signature_algorithm(this, v200, &ses.sid_ctx[8]) && bssl::ssl_credential_matches_requested_issuers(this, v200, v208))
                {
                  if (v200)
                  {
                    v209 = atomic_load(v200);
                    if (v209 != -1)
                    {
                      for (j = v209; j != -1; v209 = j)
                      {
                        atomic_compare_exchange_strong(v200, &j, v209 + 1);
                        if (j == v209)
                        {
                          break;
                        }
                      }
                    }
                  }

                  v211 = *(this + 192);
                  *(this + 192) = v200;
                  if (v211)
                  {
                    SSL_CREDENTIAL_free(v211);
                  }

                  *(this + 813) = *&ses.sid_ctx[8];
LABEL_487:
                  if (*(this + 192))
                  {
                    v212 = 0;
                    v213 = *(*(v8 + 6) + 208);
                    if (v213 > 0xFEFB)
                    {
                      switch(v213)
                      {
                        case 0xFEFCu:
                          v213 = 772;
                          break;
                        case 0xFEFDu:
                          v213 = 771;
                          break;
                        case 0xFEFFu:
                          v213 = 770;
                          break;
                        default:
                          goto LABEL_491;
                      }

LABEL_490:
                      v212 = v213;
                      goto LABEL_491;
                    }

                    if (v213 - 769 < 4)
                    {
                      goto LABEL_490;
                    }

LABEL_491:
                    v214 = bssl::ssl_choose_tls13_cipher(ses.cert, *&ses.read_ahead, (~*(*(v8 + 1) + 269) & 0x1800) == 0, v212, *(*(v8 + 1) + 264));
                    *(this + 198) = v214;
                    if (v214)
                    {
                      ses.sid_ctx[8] = 50;
                      if (bssl::ssl_negotiate_alpn(this, &ses.sid_ctx[8], &ses.rsa_md5))
                      {
                        v216 = bssl::ssl_protocol_version(v8, v215);
                        if (!bssl::SSLTranscript::InitHash((this + 408), v216, *(this + 198)))
                        {
                          break;
                        }

                        v7 = 1;
                        *(this + 6) = 1;
LABEL_504:
                        p_type = *&ses.stats.sess_connect_good;
                        v219 = *&ses.stats.sess_accept_renegotiate;
                        if (*&ses.stats.sess_accept_renegotiate)
                        {
                          v220 = *&ses.stats.sess_connect_good - 8;
                          while (1)
                          {
                            v220 += 8;
                            if (!v220)
                            {
                              break;
                            }

                            if (!--v219)
                            {
                              goto LABEL_233;
                            }
                          }

LABEL_744:
                          __break(1u);
LABEL_745:
                          abort();
                        }

LABEL_233:
                        if (p_type)
                        {
LABEL_234:
                          v93 = *(p_type - 1);
                          p_ssl_ctx_callback_ctrl = (p_type - 1);
                          v94 = v93 + 8;
                          if (v93 != -8)
                          {
                            goto LABEL_235;
                          }

                          goto LABEL_236;
                        }

                        goto LABEL_237;
                      }

                      v218 = ses.sid_ctx[8];
                      v217 = v8;
LABEL_502:
                      bssl::ssl_send_alert(v217, 2, v218);
                      break;
                    }

                    ERR_put_error(16, 0, 184, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_server.cc", 379);
                  }

                  v217 = v8;
                  v218 = 40;
                  goto LABEL_502;
                }

LABEL_455:
                if (++v196 == v197)
                {
                  goto LABEL_487;
                }
              }
            }

LABEL_503:
            v7 = 0;
            goto LABEL_504;
          }

          if ((options & 0xC) == 0)
          {
            v133 = (client_CA + v113);
            v132 = v4 + v113;
            goto LABEL_448;
          }
        }

        else
        {
          v113 = 0;
        }

        v132 = v4 + (options & 0x3C);
        v133 = (client_CA + (options & 0x3C));
        v178 = (&client_CA->num + v113);
        v179 = (v4 + v113);
        v180 = v113 - (options & 0x3C);
        do
        {
          v181 = *v178++;
          *v179++ = v181;
          v180 += 4;
        }

        while (v180);
        if (options == (options & 0x3C))
        {
          goto LABEL_450;
        }

LABEL_448:
        v194 = (client_CA + options);
        do
        {
          num = v133->num;
          v133 = (v133 + 1);
          *v132++ = num;
        }

        while (v133 != v194);
        goto LABEL_450;
      case 1:
        v26 = *this;
        if (!bssl::SSL_HANDSHAKE::GetClientHello(this, &ses.app_verify_arg, &ses.rsa_md5))
        {
          goto LABEL_391;
        }

        LOBYTE(ses.ex_data.sk) = 50;
        v27 = *ses.sid_ctx;
        if (!*ses.sid_ctx)
        {
          goto LABEL_88;
        }

        v28 = *(v26 + 48);
        v29 = *this;
        v30 = *&ses.verify_mode;
        v31 = *ses.sid_ctx;
        v32 = *&ses.verify_mode;
        while (2)
        {
          if (v31 < 2 || (v31 & 0xFFFFFFFFFFFFFFFELL) == 2 || (v33 = v31 - 4, v34 = __rev16(v32[1]), v33 < v34))
          {
LABEL_88:
            v37 = 0;
LABEL_89:
            if ((bssl::ssl_get_new_session(this, method) & 1) == 0)
            {
              v97 = v26;
              session_cache_head_low = 80;
              goto LABEL_319;
            }

            v38 = 0;
LABEL_91:
            if (bssl::ssl_negotiate_alps(this, &ses.ex_data, &ses.rsa_md5))
            {
              v39 = *(this + 194);
              *(v39 + 200) = *(this + 198);
              if (*(this + 213))
              {
                v330 = 0;
                if ((*(v26 + 164) & 4) == 0)
                {
                  goto LABEL_94;
                }

LABEL_359:
                if ((v37 & 1) == 0)
                {
                  v40 = v4;
                  v41 = *(v26 + 48);
                  v42 = 5;
                  goto LABEL_366;
                }

                if (v38)
                {
                  if (HIDWORD(v38[1].ssl_dispatch_alert))
                  {
                    v140 = *(this + 404);
                    if ((v140 & 0x800) == 0)
                    {
                      v40 = v4;
                      v41 = *(v26 + 48);
                      v42 = 4;
                      goto LABEL_366;
                    }

                    v41 = *(v26 + 48);
                    v40 = v4;
                    if ((v140 & 0x1000000) != 0)
                    {
                      v42 = 10;
                    }

                    else
                    {
                      v185 = *(v41 + 496);
                      if (v185 != v38[1].ssl_ctx_ctrl || memcmp(*(v41 + 488), v38[1].ssl_ctrl, v185))
                      {
                        *(v41 + 256) = 9;
                        goto LABEL_367;
                      }

                      v253 = *(this + 194);
                      if (((LOBYTE(v38[1].get_cipher) ^ *(v253 + 408)) & 0x40) != 0 || (v254 = *(v253 + 384), v254 != v38[1].put_cipher_by_char) || memcmp(*(v253 + 376), v38[1].get_cipher_by_char, v254))
                      {
                        *(v41 + 256) = 14;
                        goto LABEL_367;
                      }

                      if ((*(v41 + 252) - 61) <= 0xFFFFFF86)
                      {
                        *(v41 + 256) = 12;
                        goto LABEL_367;
                      }

                      if ((bssl::quic_ticket_compatible(v38, *(this + 1)) & 1) == 0)
                      {
                        *(v41 + 256) = 13;
                        goto LABEL_367;
                      }

                      if ((v330 & 1) == 0)
                      {
                        *(v41 + 256) = 2;
                        *(v41 + 220) |= 0x200u;
                        v41 = *(v26 + 48);
                        goto LABEL_367;
                      }

                      v42 = 8;
                    }

LABEL_366:
                    *(v41 + 256) = v42;
                  }

                  else
                  {
                    v40 = v4;
                    v41 = *(v26 + 48);
                    *(v41 + 256) = 7;
                  }
                }

                else
                {
                  v40 = v4;
                  v41 = *(v26 + 48);
                  *(v41 + 256) = 6;
                }

LABEL_367:
                v143 = *(this + 194);
                v144 = *(v41 + 488);
                v145 = *(v41 + 496);
                v147 = *(v143 + 360);
                v146 = *(v143 + 368);
                if (v146 && v146 - 1 >= -v147)
                {
                  goto LABEL_744;
                }

                if (v147)
                {
                  v149 = *(v147 - 8);
                  v148 = (v147 - 8);
                  v150 = v149 + 8;
                  if (v149 != -8)
                  {
                    bzero(v148, v150);
                  }

                  free(v148);
                }

                *(v143 + 360) = 0;
                *(v143 + 368) = 0;
                v4 = v40;
                if (v145)
                {
                  if (v145 > 0xFFFFFFFFFFFFFFF7 || (v151 = malloc_type_malloc(v145 + 8, 0xB4E622C9uLL)) == 0)
                  {
                    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
                    *(v143 + 360) = 0;
                    goto LABEL_617;
                  }

                  *v151 = v145;
                  v152 = v151 + 1;
                  *(v143 + 360) = v151 + 1;
                  *(v143 + 368) = v145;
                  if (v145 < 8)
                  {
                    v153 = v144;
                    goto LABEL_550;
                  }

                  v153 = v144;
                  if (v151 - v144 + 8 < 0x20)
                  {
                    goto LABEL_550;
                  }

                  if (v145 >= 0x20)
                  {
                    v184 = v145 & 0xFFFFFFFFFFFFFFE0;
                    v223 = (v144 + 16);
                    v224 = v151 + 3;
                    v225 = v145 & 0xFFFFFFFFFFFFFFE0;
                    do
                    {
                      v226 = *v223;
                      *(v224 - 1) = *(v223 - 1);
                      *v224 = v226;
                      v223 += 2;
                      v224 += 2;
                      v225 -= 32;
                    }

                    while (v225);
                    if (v145 != v184)
                    {
                      if ((v145 & 0x18) == 0)
                      {
                        v153 = (v144 + v184);
                        v152 += v184;
                        goto LABEL_550;
                      }

                      goto LABEL_520;
                    }
                  }

                  else
                  {
                    v184 = 0;
LABEL_520:
                    v152 += v145 & 0xFFFFFFFFFFFFFFF8;
                    v153 = (v144 + (v145 & 0xFFFFFFFFFFFFFFF8));
                    v227 = (v144 + v184);
                    v228 = (v151 + v184 + 8);
                    v229 = v184 - (v145 & 0xFFFFFFFFFFFFFFF8);
                    do
                    {
                      v230 = *v227++;
                      *v228++ = v230;
                      v229 += 8;
                    }

                    while (v229);
                    if (v145 != (v145 & 0xFFFFFFFFFFFFFFF8))
                    {
                      do
                      {
LABEL_550:
                        v255 = *v153++;
                        *v152++ = v255;
                      }

                      while (v153 != (v144 + v145));
                    }
                  }
                }

                if (*(*(v26 + 48) + 220) & 0x200) == 0 || (v256 = *(this + 194), (*(v256 + 408) & 0x40) == 0) || (bssl::Array<unsigned char>::CopyFrom(v256 + 392, v38[1].ssl_pending, v38[1].num_ciphers))
                {
                  if ((*(v26 + 164) & 4) == 0 || !*(v26 + 152))
                  {
                    goto LABEL_593;
                  }

                  v257 = *(this + 194);
                  v258 = *(this + 1);
                  v259 = *(v258 + 216);
                  v329 = *(v258 + 208);
                  v261 = *(v257 + 416);
                  v260 = *(v257 + 424);
                  if (v260 && v260 - 1 >= -v261)
                  {
                    goto LABEL_744;
                  }

                  if (v261)
                  {
                    v263 = *(v261 - 8);
                    v262 = (v261 - 8);
                    v264 = v263 + 8;
                    if (v263 != -8)
                    {
                      bzero(v262, v264);
                    }

                    free(v262);
                  }

                  *(v257 + 416) = 0;
                  *(v257 + 424) = 0;
                  if (!v259)
                  {
                    goto LABEL_593;
                  }

                  v265 = OPENSSL_malloc(v259);
                  *(v257 + 416) = v265;
                  if (!v265)
                  {
                    goto LABEL_617;
                  }

                  *(v257 + 424) = v259;
                  if (v259 < 8)
                  {
                    v266 = v329;
                  }

                  else
                  {
                    v266 = v329;
                    if (v265 - v329 >= 0x20)
                    {
                      if (v259 >= 0x20)
                      {
                        v267 = v259 & 0xFFFFFFFFFFFFFFE0;
                        v269 = (v329 + 16);
                        v270 = v265 + 2;
                        v271 = v259 & 0xFFFFFFFFFFFFFFE0;
                        do
                        {
                          v272 = *v269;
                          *(v270 - 1) = *(v269 - 1);
                          *v270 = v272;
                          v269 += 2;
                          v270 += 2;
                          v271 -= 32;
                        }

                        while (v271);
                        if (v259 == v267)
                        {
                          goto LABEL_593;
                        }

                        if ((v259 & 0x18) != 0)
                        {
                          goto LABEL_575;
                        }

                        v266 = (v329 + v267);
                        v265 = (v265 + v267);
                      }

                      else
                      {
                        v267 = 0;
LABEL_575:
                        v266 = (v329 + (v259 & 0xFFFFFFFFFFFFFFF8));
                        v273 = (v329 + v267);
                        v274 = (v265 + v267);
                        v275 = v267 - (v259 & 0xFFFFFFFFFFFFFFF8);
                        do
                        {
                          v276 = *v273++;
                          *v274++ = v276;
                          v275 += 8;
                        }

                        while (v275);
                        v265 = (v265 + (v259 & 0xFFFFFFFFFFFFFFF8));
                        if (v259 == (v259 & 0xFFFFFFFFFFFFFFF8))
                        {
LABEL_593:
                          v278 = *(*(v26 + 104) + 512);
                          if (v278 && !v278(&ses.rsa_md5))
                          {
                            ERR_put_error(16, 0, 133, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_server.cc", 658);
                            goto LABEL_617;
                          }

                          v279 = 0;
                          v280 = *(*(v26 + 48) + 208);
                          if (v280 > 0xFEFB)
                          {
                            switch(v280)
                            {
                              case 0xFEFCu:
                                v280 = 772;
                                break;
                              case 0xFEFDu:
                                v280 = 771;
                                break;
                              case 0xFEFFu:
                                v280 = 770;
                                break;
                              default:
                                goto LABEL_598;
                            }

LABEL_597:
                            v279 = v280 > 0x302;
                          }

                          else if (v280 - 769 < 4)
                          {
                            goto LABEL_597;
                          }

LABEL_598:
                          v281 = *(*(this + 198) + 36);
                          if (v281 == 4)
                          {
                            v282 = EVP_sha384();
                          }

                          else if (v281 == 2 || (v282 = &evp_md_md5_sha1, v279))
                          {
                            v282 = EVP_sha256();
                          }

                          if ((*(*(v26 + 48) + 220) & 0x20) != 0)
                          {
                            v285 = *(this + 194);
                            v284 = (v285 + 10);
                            pkey_type = *(v285 + 58);
                          }

                          else
                          {
                            pkey_type = v282->pkey_type;
                            v284 = bssl::kZeroes;
                          }

                          if (!bssl::tls13_init_key_schedule(this, v284, pkey_type) || (ses.app_verify_arg & 1) == 0 && !bssl::SSLTranscript::Update(this + 408, ses.client_cert_cb, ses.app_gen_cookie_cb))
                          {
                            goto LABEL_620;
                          }

                          v291 = *(v26 + 48);
                          if ((*(v291 + 220) & 0x200) != 0)
                          {
                            if ((bssl::tls13_derive_early_secret(this, method) & 1) == 0)
                            {
                              goto LABEL_620;
                            }
                          }

                          else if ((*(this + 1617) & 8) != 0)
                          {
                            *(v291 + 220) |= 1u;
                          }

                          if (v330)
                          {
                            (*(*v26 + 32))(v26);
                            if (!bssl::SSLTranscript::UpdateForHelloRetryRequest((this + 408)))
                            {
                              goto LABEL_620;
                            }

                            v294 = 2;
                          }

                          else
                          {
                            if (*(this + 213))
                            {
                              v295 = *(this + 192);
                              v296 = *(v295 + 184);
                              if (!v296)
                              {
LABEL_638:
                                ERR_put_error(16, 0, 325, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_server.cc", 696);
                                v142 = *this;
                                goto LABEL_618;
                              }

                              v297 = (v295 + 184);
                              v298 = v296;
                              while (1)
                              {
                                atomic_compare_exchange_strong(v297, &v298, v296 - 1);
                                if (v298 == v296)
                                {
                                  break;
                                }

                                v296 = v298;
                                if (!v298)
                                {
                                  goto LABEL_638;
                                }
                              }

                              if ((bssl::resolve_pake_secret(this, method, a3, v286, v287, v288, v289, v290) & 1) == 0)
                              {
                                goto LABEL_620;
                              }
                            }

                            else if (!bssl::resolve_ecdhe_secret(this, &ses.rsa_md5))
                            {
                              goto LABEL_620;
                            }

                            (*(*v26 + 32))(v26);
                            bssl::Array<unsigned char>::Reset(this + 75);
                            v294 = 4;
                          }

                          *(this + 6) = v294;
                          v7 = 1;
                          if (!v38)
                          {
                            goto LABEL_237;
                          }

LABEL_621:
                          v268 = atomic_load(v38);
                          if (v268 == -1)
                          {
                            goto LABEL_237;
                          }

                          while (1)
                          {
LABEL_622:
                            if (!v268)
                            {
                              goto LABEL_745;
                            }

                            v292 = v268;
                            atomic_compare_exchange_strong(&v38->version, &v292, v268 - 1);
                            if (v292 == v268)
                            {
                              break;
                            }

                            v268 = v292;
                            if (v292 == -1)
                            {
                              goto LABEL_237;
                            }
                          }

                          if (v268 == 1)
                          {
                            ssl_session_st::~ssl_session_st(v38);
                            ssl_ctx_callback_ctrl = v38[-1].ssl_ctx_callback_ctrl;
                            p_ssl_ctx_callback_ctrl = &v38[-1].ssl_ctx_callback_ctrl;
                            v94 = ssl_ctx_callback_ctrl + 8;
                            if (ssl_ctx_callback_ctrl != -8)
                            {
LABEL_235:
                              bzero(p_ssl_ctx_callback_ctrl, v94);
                            }

LABEL_236:
                            free(p_ssl_ctx_callback_ctrl);
                          }

LABEL_237:
                          if (*(this + 6) != v6)
                          {
                            goto LABEL_392;
                          }

                          goto LABEL_3;
                        }
                      }
                    }
                  }

                  do
                  {
                    v277 = *v266++;
                    *v265 = v277;
                    v265 = (v265 + 1);
                  }

                  while (v266 != (v329 + v259));
                  goto LABEL_593;
                }

                bssl::ssl_send_alert(v26, 2, 80);
                v7 = 0;
                v268 = atomic_load(v38);
                if (v268 == -1)
                {
                  goto LABEL_237;
                }

                goto LABEL_622;
              }

              v123 = *(this + 1);
              v124 = *(v123 + 136);
              if (v124)
              {
                v125 = *(v123 + 128);
                v126 = *this;
                v127 = *(this + 83);
                v128 = *(this + 84);
                if ((*(*this + 130) & 0x40) == 0)
                {
LABEL_332:
                  if (v128)
                  {
                    v129 = &v127[v128];
                    v130 = v125;
                    v131 = &v125[v124];
                    goto LABEL_345;
                  }

                  goto LABEL_379;
                }
              }

              else
              {
                v124 = 3;
                v125 = &bssl::kDefaultGroups;
                v126 = *this;
                v127 = *(this + 83);
                v128 = *(this + 84);
                if ((*(*this + 130) & 0x40) == 0)
                {
                  goto LABEL_332;
                }
              }

              if (!v128)
              {
LABEL_379:
                ERR_put_error(16, 0, 266, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_server.cc", 575);
                v142 = v26;
                sk_low = 40;
                goto LABEL_619;
              }

              v131 = &v127[v128];
              v130 = v127;
              v127 = v125;
              v129 = &v125[v124];
LABEL_345:
              while (1)
              {
                v134 = *v127;
                v135 = *v127;
                v136 = v135 == 25497 || v135 == 4588;
                v137 = v130;
                v138 = v130;
                if (!v136)
                {
                  break;
                }

                do
                {
                  if (*v137 == v134)
                  {
                    v139 = *(*(v126 + 48) + 208);
                    if (v139 - 769 >= 4)
                    {
                      if (v139 == 65276)
                      {
                        goto LABEL_357;
                      }
                    }

                    else if (v139 > 0x303)
                    {
                      goto LABEL_357;
                    }
                  }

                  ++v137;
                }

                while (v137 != v131);
LABEL_344:
                if (++v127 == v129)
                {
                  goto LABEL_379;
                }
              }

              while (*v138 != v134)
              {
                if (++v138 == v131)
                {
                  goto LABEL_344;
                }
              }

LABEL_357:
              *(v39 + 6) = v134;
              LOBYTE(ses.stats.sess_connect_good) = 0;
              if (bssl::ssl_ext_key_share_parse_clienthello(this, &ses.stats.sess_connect_good, 0, &ses.ex_data, &ses.rsa_md5))
              {
                v330 = LOBYTE(ses.stats.sess_connect_good) ^ 1;
                if ((*(v26 + 164) & 4) != 0)
                {
                  goto LABEL_359;
                }

LABEL_94:
                v40 = v4;
                v41 = *(v26 + 48);
                v42 = 1;
                goto LABEL_366;
              }
            }

            sk_low = LOBYTE(ses.ex_data.sk);
            v142 = v26;
            goto LABEL_619;
          }

          v36 = *v32;
          v35 = v32 + 2;
          if (__rev16(v36) != 41)
          {
            v32 = (v35 + v34);
            v31 = v33 - v34;
            if (!v31)
            {
              goto LABEL_88;
            }

            continue;
          }

          break;
        }

        *&ses.stats.sess_connect_good = v35;
        *&ses.stats.sess_accept_renegotiate = v34;
        while (2)
        {
          if (v27 < 2 || (v27 & 0xFFFFFFFFFFFFFFFELL) == 2 || (v114 = v27 - 4, v115 = __rev16(v30[1]), v114 < v115))
          {
LABEL_313:
            v116 = v4;
            LOBYTE(ses.ex_data.sk) = 109;
            ERR_put_error(16, 0, 164, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_server.cc", 421);
            goto LABEL_314;
          }

          if (__rev16(*v30) != 45)
          {
            v30 = (v30 + v115 + 4);
            v27 = v114 - v115;
            if (!v27)
            {
              goto LABEL_313;
            }

            continue;
          }

          break;
        }

        *v333 = 0;
        if ((bssl::ssl_ext_pre_shared_key_parse_clienthello(this, &ses.sid_ctx[8], &ses.session_cache_head, v333, &ses.ex_data, &ses.rsa_md5, &ses.stats.sess_connect_good) & 1) == 0)
        {
          v116 = v4;
          goto LABEL_314;
        }

        if ((*(this + 1616) & 0x10) == 0 || (v183 = *(this + 192)) != 0 && *(v183 + 4) == 3)
        {
          v37 = 1;
          goto LABEL_89;
        }

        v116 = v4;
        LOBYTE(v332[0]) = 0;
        ses.method = 0;
        v221 = bssl::ssl_process_ticket(this, &ses, v332, *&ses.sid_ctx[8], *&ses.sid_ctx[16], 0, 0);
        if (v221)
        {
          v222 = v221;
          if (v221 == 3)
          {
            LOBYTE(ses.ex_data.sk) = 80;
            method = ses.method;
            ses.method = 0;
            if (!method)
            {
              goto LABEL_582;
            }

LABEL_581:
            SSL_SESSION_free(method);
            goto LABEL_582;
          }

LABEL_580:
          method = ses.method;
          ses.method = 0;
          if (!method)
          {
            goto LABEL_582;
          }

          goto LABEL_581;
        }

        if (!bssl::ssl_session_is_resumable(this, ses.method))
        {
          v222 = 2;
          goto LABEL_580;
        }

        method = ses.method;
        if ((ses.method[1].get_cipher & 8) == 0 || (*v333 = (*v333 - LODWORD(ses.method[1].ssl_dispatch_alert)) / 0x3E8u, current_time = bssl::ssl_ctx_get_current_time(*(v29 + 104), ses.method), method = ses.method, v252 = current_time - ses.method->get_timeout, v252 >> 31))
        {
          ses.method = 0;
          v222 = 2;
          goto LABEL_581;
        }

        *(v28 + 252) = *v333 - v252;
        if (bssl::tls13_verify_psk_binder(this, method, &ses.app_verify_arg, &ses.session_cache_head, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251))
        {
          v38 = ses.method;
          bssl::SSL_SESSION_dup(ses.method, 0, &ses.stats.sess_connect_good);
          v299 = *&ses.stats.sess_connect_good;
          *&ses.stats.sess_connect_good = 0;
          v300 = *(this + 194);
          *(this + 194) = v299;
          if (v300)
          {
            SSL_SESSION_free(v300);
            v301 = *&ses.stats.sess_connect_good;
            *&ses.stats.sess_connect_good = 0;
            if (v301)
            {
              SSL_SESSION_free(v301);
            }

            v299 = *(this + 194);
          }

          if (v299)
          {
            *(*(v26 + 48) + 220) |= 0x20u;
            *(this + 404) |= 0x800000u;
            bssl::ssl_session_renew_timeout(v26, *(this + 194), *(*(v26 + 112) + 300));
            v37 = 1;
            goto LABEL_91;
          }

LABEL_617:
          v142 = v26;
LABEL_618:
          sk_low = 80;
LABEL_619:
          bssl::ssl_send_alert(v142, 2, sk_low);
LABEL_620:
          v7 = 0;
          if (!v38)
          {
            goto LABEL_237;
          }

          goto LABEL_621;
        }

        LOBYTE(ses.ex_data.sk) = 51;
        v222 = 3;
        method = ses.method;
        ses.method = 0;
        if (method)
        {
          goto LABEL_581;
        }

LABEL_582:
        v38 = 0;
        v37 = 1;
        if (v222 > 1)
        {
          if (v222 != 3)
          {
            v10 = v222 == 2;
            v4 = v116;
            if (v10)
            {
              goto LABEL_89;
            }

            goto LABEL_91;
          }

LABEL_314:
          bssl::ssl_send_alert(v26, 2, LOBYTE(ses.ex_data.sk));
          v7 = 0;
          v4 = v116;
          if (*(this + 6) == v6)
          {
            goto LABEL_3;
          }

          goto LABEL_392;
        }

        v10 = v222 == 1;
        v4 = v116;
        if (!v10)
        {
          goto LABEL_91;
        }

        *(this + 6) = 1;
        v7 = 11;
        if (v6 != 1)
        {
LABEL_392:
          v176 = *(*this + 96);
          if (v176 || (v176 = *(*(*this + 104) + 384)) != 0)
          {
            v176();
          }
        }

LABEL_3:
        if (v7 == 1)
        {
          continue;
        }

        return v7;
      case 2:
        if ((*(this + 1618) & 0x10) != 0)
        {
          goto LABEL_109;
        }

        v14 = *this;
        memset(&ses.rsa_md5, 0, 48);
        if (!(*(*v14 + 11))(v14, &ses.rsa_md5, &ses.app_verify_arg, 2))
        {
          goto LABEL_167;
        }

        v15 = **v14;
        *&ses.stats.sess_connect_good = 0;
        if (!CBB_add_space(&ses.app_verify_arg, &ses.stats.sess_connect_good, 2))
        {
          goto LABEL_167;
        }

        v16 = v15 ? -259 : 771;
        *(*&ses.stats.sess_connect_good + 1) = v16;
        **&ses.stats.sess_connect_good = HIBYTE(v16);
        *&ses.stats.sess_connect_good = 0;
        if (!CBB_add_space(&ses.app_verify_arg, &ses.stats.sess_connect_good, 32))
        {
          goto LABEL_167;
        }

        v17 = *&ses.stats.sess_connect_good;
        **&ses.stats.sess_connect_good = bssl::kHelloRetryRequest;
        *(v17 + 16) = *&qword_273BB9950;
        if (!CBB_add_u8_length_prefixed(&ses.app_verify_arg, &ses.stats.sess_connect_good))
        {
          goto LABEL_167;
        }

        v18 = *(this + 1661);
        *&ses.sid_ctx[8] = 0;
        if (!CBB_add_space(&ses.stats.sess_connect_good, &ses.sid_ctx[8], v18))
        {
          goto LABEL_167;
        }

        if (v18)
        {
          memcpy(*&ses.sid_ctx[8], v4, v18);
        }

        v19 = *(*(this + 198) + 16);
        *&ses.sid_ctx[8] = 0;
        if (!CBB_add_space(&ses.app_verify_arg, &ses.sid_ctx[8], 2))
        {
          goto LABEL_167;
        }

        *(*&ses.sid_ctx[8] + 1) = v19;
        **&ses.sid_ctx[8] = BYTE1(v19);
        *&ses.sid_ctx[8] = 0;
        if (!CBB_add_space(&ses.app_verify_arg, &ses.sid_ctx[8], 1))
        {
          goto LABEL_167;
        }

        **&ses.sid_ctx[8] = 0;
        if (!CBB_add_u16_length_prefixed(&ses.app_verify_arg, &ses.sid_ctx[8]) || !CBB_add_u16(&ses.sid_ctx[8], 43) || !CBB_add_u16(&ses.sid_ctx[8], 2) || !CBB_add_u16(&ses.sid_ctx[8], *(v14[6] + 104)) || !CBB_add_u16(&ses.sid_ctx[8], 51) || !CBB_add_u16(&ses.sid_ctx[8], 2) || !CBB_add_u16(&ses.sid_ctx[8], *(*(this + 194) + 6)))
        {
          goto LABEL_167;
        }

        if ((*(this + 404) & 1) == 0)
        {
          goto LABEL_67;
        }

        if (CBB_add_u16(&ses.sid_ctx[8], 65037) && CBB_add_u16(&ses.sid_ctx[8], 8) && (ses.session_cache_head = 0, CBB_add_space(&ses.sid_ctx[8], &ses.session_cache_head, 8)))
        {
          *ses.session_cache_head = 0;
LABEL_67:
          ses.session_cache_head = 0;
          ses.session_cache_tail = 0;
          if (!(*(*v14 + 12))(v14, &ses.rsa_md5, &ses.session_cache_head))
          {
            goto LABEL_647;
          }

          if ((*(this + 404) & 1) == 0)
          {
            goto LABEL_71;
          }

          if (ses.session_cache_tail <= 7)
          {
            goto LABEL_745;
          }

          if (bssl::ssl_ech_accept_confirmation(this, &ses.session_cache_tail[-1].tlsext_tick_lifetime_hint + ses.session_cache_head, 8, v14[6] + 48, 0x20uLL, (this + 408), 1, v20, ses.session_cache_head, ses.session_cache_tail, &ses.session_cache_tail[-1].tlsext_tick_lifetime_hint))
          {
LABEL_71:
            v21 = v4;
            v22 = *(*v14 + 13);
            ses.method = ses.session_cache_head;
            ses.cipher_list = ses.session_cache_tail;
            ses.session_cache_head = 0;
            ses.session_cache_tail = 0;
            if (v22(v14, &ses))
            {
              v23 = (*(*v14 + 14))(v14);
              if (ses.cipher_list && &ses.cipher_list[-1].comp + 7 >= -ses.method)
              {
                goto LABEL_744;
              }

              if (ses.method)
              {
                v25 = &ses.method[-1].ssl_ctx_callback_ctrl;
                v24 = ses.method[-1].ssl_ctx_callback_ctrl;
                if (v24 != -8)
                {
                  bzero(&ses.method[-1].ssl_ctx_callback_ctrl, v24 + 8);
                }

                free(v25);
              }

              ses.method = 0;
              ses.cipher_list = 0;
              if (v23)
              {
                *(v14[6] + 110) |= 0x1000u;
                *(this + 6) = 3;
                v7 = 4;
              }

              else
              {
                v7 = 0;
              }
            }

            else
            {
              if (ses.cipher_list && &ses.cipher_list[-1].comp + 7 >= -ses.method)
              {
                goto LABEL_744;
              }

              if (ses.method)
              {
                v303 = &ses.method[-1].ssl_ctx_callback_ctrl;
                v302 = ses.method[-1].ssl_ctx_callback_ctrl;
                if (v302 != -8)
                {
                  bzero(&ses.method[-1].ssl_ctx_callback_ctrl, v302 + 8);
                }

                free(v303);
              }

              v7 = 0;
              ses.method = 0;
              ses.cipher_list = 0;
            }

            v4 = v21;
          }

          else
          {
LABEL_647:
            v7 = 0;
          }

          if (ses.session_cache_tail && &ses.session_cache_tail[-1].tlsext_tick_lifetime_hint + 7 >= -ses.session_cache_head)
          {
            goto LABEL_744;
          }

          if (ses.session_cache_head)
          {
            p_tlsext_tick_lifetime_hint = &ses.session_cache_head[-1].tlsext_tick_lifetime_hint;
            tlsext_tick_lifetime_hint = ses.session_cache_head[-1].tlsext_tick_lifetime_hint;
            if (tlsext_tick_lifetime_hint != -8)
            {
              bzero(&ses.session_cache_head[-1].tlsext_tick_lifetime_hint, tlsext_tick_lifetime_hint + 8);
            }

            free(p_tlsext_tick_lifetime_hint);
          }
        }

        else
        {
LABEL_167:
          v7 = 0;
        }

        if (LOBYTE(ses.md5))
        {
          goto LABEL_237;
        }

        if ((ses.info_callback & 1) == 0)
        {
          goto LABEL_237;
        }

        p_type = &ses.sha1->type;
        if (!ses.sha1)
        {
          goto LABEL_237;
        }

        goto LABEL_234;
      case 3:
        v8 = *this;
        if (!(*(**this + 24))(*this, &ses.app_verify_arg))
        {
          goto LABEL_298;
        }

        if (BYTE1(ses.app_verify_arg) != 1)
        {
          goto LABEL_242;
        }

        *&ses.stats.sess_connect_good = ses.default_passwd_callback;
        *&ses.stats.sess_accept_renegotiate = ses.default_passwd_callback_userdata;
        if (!bssl::ssl_parse_client_hello_with_trailing_data(v8, &ses.stats.sess_connect_good, &ses.rsa_md5))
        {
          goto LABEL_318;
        }

        if (*&ses.stats.sess_accept_renegotiate)
        {
          v56 = 131;
          v57 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc";
          v58 = 4774;
          goto LABEL_317;
        }

        v117 = *(v8 + 6);
        if (*(v117 + 216) != 1)
        {
          goto LABEL_671;
        }

        v118 = *ses.sid_ctx;
        if (!*ses.sid_ctx)
        {
          goto LABEL_329;
        }

        v119 = *&ses.verify_mode;
        while (1)
        {
          if (v118 < 2 || (v118 & 0xFFFFFFFFFFFFFFFELL) == 2 || (v120 = v118 - 4, v121 = __rev16(*(v119 + 1)), v120 < v121))
          {
LABEL_329:
            ERR_put_error(16, 0, 164, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_server.cc", 799);
            v97 = v8;
            session_cache_head_low = 109;
            goto LABEL_319;
          }

          v122 = v119 + 4;
          if (__rev16(*v119) == 65037)
          {
            break;
          }

          v119 = &v122[v121];
          v118 = v120 - v121;
          if (!v118)
          {
            goto LABEL_329;
          }
        }

        if (!v121 || ((v186 = *v122, v121 >= 3) ? (v187 = v186 == 0) : (v187 = 0), !v187 || v121 - 3 < 2 || v121 == 5 || (v121 & 0xFFFE) == 6 || (v188 = v121 - 8, v189 = __rev16(*(v119 + 5)), v190 = v188 >= v189, v191 = v188 - v189, !v190)))
        {
          v192 = 50;
          v193 = 814;
          goto LABEL_446;
        }

        if (v191 >= 2 && (v304 = __rev16(*&v119[v189 + 12]), (v191 - 2) == v304))
        {
          if (__rev16(*(v119 + 5)) == **(this + 94) && __rev16(*(v119 + 7)) == **(this + 93))
          {
            v192 = 47;
            v193 = 823;
            if (!v189 && v119[9] == *(this + 1628))
            {
              LOBYTE(ses.stats.sess_connect_good) = 50;
              ses.sid_ctx[8] = 0;
              if (bssl::ssl_client_hello_decrypt(this, &ses.stats.sess_connect_good, &ses.sid_ctx[8], this + 75, &ses.rsa_md5, &v119[v189 + 14], v304))
              {
                if (bssl::SSL_HANDSHAKE::GetClientHello(this, &ses.app_verify_arg, &ses.rsa_md5))
                {
                  v117 = *(v8 + 6);
LABEL_671:
                  if ((*(v117 + 220) & 0x20) == 0)
                  {
                    goto LABEL_672;
                  }

                  v305 = *ses.sid_ctx;
                  if (!*ses.sid_ctx)
                  {
LABEL_685:
                    v95 = 303;
                    v96 = 858;
                    goto LABEL_241;
                  }

                  v306 = *&ses.verify_mode;
                  while (1)
                  {
                    if (v305 < 2)
                    {
                      goto LABEL_685;
                    }

                    if ((v305 & 0xFFFFFFFFFFFFFFFELL) == 2)
                    {
                      goto LABEL_685;
                    }

                    v307 = v305 - 4;
                    v308 = __rev16(v306[1]);
                    if (v307 < v308)
                    {
                      goto LABEL_685;
                    }

                    v310 = *v306;
                    v309 = v306 + 2;
                    if (__rev16(v310) == 41)
                    {
                      break;
                    }

                    v306 = (v309 + v308);
                    v305 = v307 - v308;
                    if (!v305)
                    {
                      goto LABEL_685;
                    }
                  }

                  *&ses.stats.sess_connect_good = v309;
                  *&ses.stats.sess_accept_renegotiate = v308;
                  LODWORD(ses.method) = 0;
                  v333[0] = 50;
                  if (bssl::ssl_ext_pre_shared_key_parse_clienthello(this, &ses.sid_ctx[8], &ses.session_cache_head, &ses, v333, &ses.rsa_md5, &ses.stats.sess_connect_good))
                  {
                    if (!bssl::tls13_verify_psk_binder(this, *(this + 194), &ses.app_verify_arg, &ses.session_cache_head, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321))
                    {
                      session_cache_head_low = 51;
                      goto LABEL_692;
                    }

LABEL_672:
                    if (bssl::resolve_ecdhe_secret(this, &ses.rsa_md5) && ((ses.app_verify_arg & 1) != 0 || bssl::SSLTranscript::Update(this + 408, ses.client_cert_cb, ses.app_gen_cookie_cb)))
                    {
                      if ((*(*v8 + 40))(v8))
                      {
                        bssl::ssl_send_alert(v8, 2, 10);
                        ERR_put_error(16, 0, 255, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_server.cc", 896);
                        v7 = 0;
                        if (*(this + 6) != v6)
                        {
                          goto LABEL_392;
                        }
                      }

                      else
                      {
                        (*(*v8 + 32))(v8);
                        bssl::Array<unsigned char>::Reset(this + 75);
                        *(this + 6) = 4;
                        v7 = 1;
                        if (v6 != 4)
                        {
                          goto LABEL_392;
                        }
                      }

                      goto LABEL_3;
                    }

LABEL_391:
                    v7 = 0;
                    if (*(this + 6) != v6)
                    {
                      goto LABEL_392;
                    }

                    goto LABEL_3;
                  }

                  session_cache_head_low = v333[0];
LABEL_692:
                  v97 = v8;
LABEL_319:
                  bssl::ssl_send_alert(v97, 2, session_cache_head_low);
                  v7 = 0;
                  if (*(this + 6) != v6)
                  {
                    goto LABEL_392;
                  }

                  goto LABEL_3;
                }

                ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_server.cc", 842);
              }

              else
              {
                ERR_put_error(16, 0, 138, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_server.cc", 835);
                bssl::ssl_send_alert(v8, 2, LOBYTE(ses.stats.sess_connect_good));
              }

              v7 = 0;
              if (*(this + 6) != v6)
              {
                goto LABEL_392;
              }

              goto LABEL_3;
            }
          }

          else
          {
            v192 = 47;
            v193 = 823;
          }
        }

        else
        {
          v192 = 50;
          v193 = 814;
        }

LABEL_446:
        ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_server.cc", v193);
        v97 = v8;
        session_cache_head_low = v192;
        goto LABEL_319;
      case 4:
        v51 = *this;
        v52 = *(*this + 48);
        v53 = *(this + 201);
        if (v53)
        {
          if ((*(this + 1618) & 0x10) != 0 || *(v53 + 24) != 32)
          {
            BCM_rand_bytes_with_additional_data(v52 + 16, 0x20uLL, BCM_rand_bytes::kZeroAdditionalData);
            if ((*(this + 1618) & 0x10) != 0)
            {
              v70 = *(v53 + 16);
              v68 = *(v53 + 24);
              v69 = (v53 + 16);
              if (v68 && v68 - 1 >= -v70)
              {
                goto LABEL_744;
              }

              if (v70)
              {
                v72 = *(v70 - 8);
                v71 = (v70 - 8);
                v73 = v72 + 8;
                if (v72 != -8)
                {
                  bzero(v71, v73);
                }

                free(v71);
              }

              *v69 = 0;
              *(v53 + 24) = 0;
              v74 = malloc_type_malloc(0x28uLL, 0xB4E622C9uLL);
              if (!v74)
              {
                ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
                v7 = 0;
                *v69 = 0;
                if (*(this + 6) == v6)
                {
                  goto LABEL_3;
                }

                goto LABEL_392;
              }

              *v74 = 32;
              *(v53 + 16) = v74 + 8;
              *(v53 + 24) = 32;
              v74[8] = v52[16];
              v74[9] = v52[17];
              v74[10] = v52[18];
              v74[11] = v52[19];
              v74[12] = v52[20];
              v74[13] = v52[21];
              v74[14] = v52[22];
              v74[15] = v52[23];
              v74[16] = v52[24];
              v74[17] = v52[25];
              v74[18] = v52[26];
              v74[19] = v52[27];
              v74[20] = v52[28];
              v74[21] = v52[29];
              v74[22] = v52[30];
              v74[23] = v52[31];
              v74[24] = v52[32];
              v74[25] = v52[33];
              v74[26] = v52[34];
              v74[27] = v52[35];
              v74[28] = v52[36];
              v74[29] = v52[37];
              v74[30] = v52[38];
              v74[31] = v52[39];
              v74[32] = v52[40];
              v74[33] = v52[41];
              v74[34] = v52[42];
              v74[35] = v52[43];
              v74[36] = v52[44];
              v74[37] = v52[45];
              v74[38] = v52[46];
              v74[39] = v52[47];
            }
          }

          else
          {
            v54 = *(v53 + 16);
            v55 = v54[1];
            *(v52 + 1) = *v54;
            *(v52 + 2) = v55;
          }
        }

        else
        {
          BCM_rand_bytes_with_additional_data(v52 + 16, 0x20uLL, BCM_rand_bytes::kZeroAdditionalData);
        }

        memset(&ses.ex_data, 0, 64);
        if (!(*(*v51 + 11))(v51, &ses.rsa_md5, &ses.app_verify_arg, 2))
        {
          goto LABEL_224;
        }

        v75 = **v51;
        *&ses.stats.sess_connect_good = 0;
        if (!CBB_add_space(&ses.app_verify_arg, &ses.stats.sess_connect_good, 2))
        {
          goto LABEL_224;
        }

        v76 = v75 ? -259 : 771;
        *(*&ses.stats.sess_connect_good + 1) = v76;
        **&ses.stats.sess_connect_good = HIBYTE(v76);
        v77 = v51[6];
        *&ses.stats.sess_connect_good = 0;
        if (!CBB_add_space(&ses.app_verify_arg, &ses.stats.sess_connect_good, 32))
        {
          goto LABEL_224;
        }

        v78 = *&ses.stats.sess_connect_good;
        v79 = *(v77 + 2);
        **&ses.stats.sess_connect_good = *(v77 + 1);
        *(v78 + 16) = v79;
        if (!CBB_add_u8_length_prefixed(&ses.app_verify_arg, &ses.sid_ctx[8]))
        {
          goto LABEL_224;
        }

        v80 = *(this + 1661);
        *&ses.stats.sess_connect_good = 0;
        if (!CBB_add_space(&ses.sid_ctx[8], &ses.stats.sess_connect_good, v80))
        {
          goto LABEL_224;
        }

        if (v80)
        {
          memcpy(*&ses.stats.sess_connect_good, v4, v80);
        }

        v81 = *(*(this + 198) + 16);
        *&ses.stats.sess_connect_good = 0;
        if (!CBB_add_space(&ses.app_verify_arg, &ses.stats.sess_connect_good, 2))
        {
          goto LABEL_224;
        }

        *(*&ses.stats.sess_connect_good + 1) = v81;
        **&ses.stats.sess_connect_good = BYTE1(v81);
        *&ses.stats.sess_connect_good = 0;
        if (!CBB_add_space(&ses.app_verify_arg, &ses.stats.sess_connect_good, 1))
        {
          goto LABEL_224;
        }

        **&ses.stats.sess_connect_good = 0;
        if (!CBB_add_u16_length_prefixed(&ses.app_verify_arg, &ses.stats.sess_connect_good) || !bssl::ssl_ext_pre_shared_key_add_serverhello(this, &ses.stats.sess_connect_good) || !bssl::ssl_ext_pake_add_serverhello(this, &ses.stats.sess_connect_good) || !bssl::ssl_ext_key_share_add_serverhello(this, &ses.stats.sess_connect_good) || !bssl::ssl_ext_supported_versions_add_serverhello(this, &ses.stats.sess_connect_good) || !(*(*v51 + 12))(v51, &ses.rsa_md5, &ses.ex_data))
        {
          goto LABEL_224;
        }

        if ((*(this + 404) & 1) == 0)
        {
          goto LABEL_207;
        }

        if (**v51)
        {
          v83 = 38;
        }

        else
        {
          v83 = 30;
        }

        if (!bssl::ssl_ech_accept_confirmation(this, (v52 + 40), 8, v51[6] + 48, 0x20uLL, (this + 408), 0, v82, ses.ex_data.sk, *&ses.ex_data.dummy, v83))
        {
          goto LABEL_224;
        }

        if (*&ses.ex_data.dummy < v83)
        {
          goto LABEL_745;
        }

        *(&ses.ex_data.sk->num + v83) = *(v52 + 5);
LABEL_207:
        v84 = v4;
        v85 = *(*v51 + 13);
        *&ses.get_session_cb = ses.ex_data;
        ses.ex_data.sk = 0;
        *&ses.ex_data.dummy = 0;
        v7 = v85(v51, &ses.get_session_cb);
        if (*&ses.stats.sess_connect && (*&ses.stats.sess_connect - 1) >= -ses.get_session_cb)
        {
          goto LABEL_744;
        }

        if (ses.get_session_cb)
        {
          v87 = ses.get_session_cb - 8;
          v86 = *(ses.get_session_cb - 1);
          if (v86 != -8)
          {
            bzero(ses.get_session_cb - 8, v86 + 8);
          }

          free(v87);
        }

        ses.get_session_cb = 0;
        *&ses.stats.sess_connect = 0;
        if (v7)
        {
          bssl::Array<unsigned char>::Reset(this + 79);
          v4 = v84;
          if (((*(v51[6] + 110) & 0x1000) != 0 || (*(*v51 + 14))(v51)) && bssl::tls13_derive_handshake_secrets(this, method) && bssl::tls13_set_traffic_key(v51, 2, 1u, *(this + 194), (this + 179), *(this + 227)))
          {
            if (!(*(*v51 + 11))(v51, &ses.rsa_md5, &ses.app_verify_arg, 8))
            {
              goto LABEL_738;
            }

            if (!bssl::ssl_add_serverhello_tlsext(this, &ses.app_verify_arg))
            {
              goto LABEL_738;
            }

            bssl::ssl_add_message_cbb(v51, &ses.rsa_md5);
            if (!v88)
            {
              goto LABEL_738;
            }

            if ((*(v51[6] + 110) & 0x20) != 0)
            {
              v89 = *(this + 404);
            }

            else
            {
              v89 = *(this + 404);
              if (!*(this + 213))
              {
                v89 = v89 & 0xFFFFFFDF | (32 * (*(*(this + 1) + 268) & 1));
                *(this + 404) = v89;
              }
            }

            if ((v89 & 0x20) != 0)
            {
              if (!(*(*v51 + 11))(v51, &ses.rsa_md5, &ses.app_verify_arg, 13))
              {
                goto LABEL_738;
              }

              v332[0] = 0;
              if (!CBB_add_space(&ses.app_verify_arg, v332, 1))
              {
                goto LABEL_738;
              }

              *v332[0] = 0;
              if (!CBB_add_u16_length_prefixed(&ses.app_verify_arg, &ses.session_cache_head) || !CBB_add_u16(&ses.session_cache_head, 13) || !CBB_add_u16_length_prefixed(&ses.session_cache_head, &ses) || !CBB_add_u16_length_prefixed(&ses, v333) || !bssl::tls12_add_verify_sigalgs(this, v333))
              {
                goto LABEL_738;
              }

              v324 = *(this + 1);
              v325 = v324[10];
              if ((v325 || (v325 = *(*(*v324 + 104) + 392)) != 0) && *v325 && (!CBB_add_u16(&ses.session_cache_head, 47) || !CBB_add_u16_length_prefixed(&ses.session_cache_head, v332) || !bssl::marshal_CA_names(*(*(this + 1) + 80), *(*(*this + 104) + 392), v332) || !CBB_flush(&ses.session_cache_head)))
              {
                goto LABEL_738;
              }

              bssl::ssl_add_message_cbb(v51, &ses.rsa_md5);
              if (!v326)
              {
                goto LABEL_738;
              }
            }

            if ((*(v51[6] + 110) & 0x20) != 0 || *(this + 213))
            {
              *(this + 6) = 6;
            }

            else
            {
              bssl::tls13_add_certificate(this, method);
              if (!v327)
              {
LABEL_738:
                v7 = 0;
                goto LABEL_739;
              }

              *(this + 6) = 5;
            }

            v7 = 1;
LABEL_739:
            v4 = v84;
            goto LABEL_225;
          }

LABEL_224:
          v7 = 0;
        }

        else
        {
          v4 = v84;
        }

LABEL_225:
        if (!LOBYTE(ses.md5) && (ses.info_callback & 1) != 0 && ses.sha1)
        {
          p_ctx_size = &ses.sha1[-1].ctx_size;
          v90 = *&ses.sha1[-1].ctx_size;
          if (v90 != -8)
          {
            bzero(&ses.sha1[-1].ctx_size, v90 + 8);
          }

          free(p_ctx_size);
        }

        p_type = &ses.ex_data.sk->num;
        if (*&ses.ex_data.dummy && (*&ses.ex_data.dummy - 1) >= -ses.ex_data.sk)
        {
          goto LABEL_744;
        }

        goto LABEL_233;
      case 5:
        bssl::tls13_add_certificate_verify(this, method);
        if (v43)
        {
          if (v43 != 1)
          {
            goto LABEL_391;
          }

          v7 = 9;
          *(this + 6) = 5;
          if (v6 == 5)
          {
            goto LABEL_3;
          }
        }

        else
        {
          *(this + 6) = 6;
          if (v6 == 6)
          {
            goto LABEL_3;
          }
        }

        goto LABEL_392;
      case 6:
        v44 = *(this + 404);
        if ((v44 & 0x100000) != 0)
        {
LABEL_109:
          v7 = 17;
          goto LABEL_3;
        }

        v45 = *this;
        *(this + 404) = v44 | 0x800000;
        bssl::tls13_add_finished(this, method);
        if (!v46 || !bssl::tls13_advance_key_schedule(this, bssl::kZeroes, *(*(this + 52) + 4)) || !bssl::tls13_derive_application_secrets(this, method) || !bssl::tls13_set_traffic_key(v45, 3, 1u, *(this + 194), (this + 277), *(this + 325)))
        {
          goto LABEL_391;
        }

        *(this + 6) = 7;
        if ((*(this + 1618) & 8) != 0)
        {
          v7 = 7;
        }

        else
        {
          v7 = 1;
        }

        if (v6 != 7)
        {
          goto LABEL_392;
        }

        goto LABEL_3;
      case 7:
        if ((*(*(*this + 48) + 220) & 0x200) == 0)
        {
          goto LABEL_40;
        }

        if (*(*this + 152))
        {
          goto LABEL_157;
        }

        if ((*(this + 448) & 1) != 0 && *(this + 225) > 0x303u || (v108 = *(this + 51)) != 0 && !BUF_MEM_append(v108, &bssl::do_send_half_rtt_ticket(bssl::SSL_HANDSHAKE *)::kEndOfEarlyData, 4uLL))
        {
          ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_server.cc", 1093);
          v7 = 0;
          if (*(this + 6) == v6)
          {
            goto LABEL_3;
          }

          goto LABEL_392;
        }

        v109 = *(this + 52);
        if (v109)
        {
          (*(v109 + 24))(this + 416, &bssl::do_send_half_rtt_ticket(bssl::SSL_HANDSHAKE *)::kEndOfEarlyData, 4);
        }

LABEL_157:
        ses.rsa_md5 = 0;
        v63 = *(*(this + 52) + 4);
        v64 = *(this + 374);
        v65 = v63 - v64;
        if (v63 <= v64)
        {
          if (v63 != v64 && v65 <= v5 + v63 - 1)
          {
            goto LABEL_744;
          }
        }

        else
        {
          if (v63 > 0x30)
          {
            goto LABEL_745;
          }

          bzero(v5 + v64, v65);
        }

        *(this + 374) = v63;
        if (bssl::tls13_finished_mac(this, v5, &ses.rsa_md5, 0))
        {
          v107 = *(this + 374);
          if (ses.rsa_md5 != v107)
          {
            ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_server.cc", 1105);
            goto LABEL_391;
          }

          LOWORD(ses.app_verify_arg) = 20;
          BYTE2(ses.app_verify_arg) = 0;
          BYTE3(ses.app_verify_arg) = v107;
          if (bssl::SSLTranscript::Update(this + 408, &ses.app_verify_arg, 4uLL))
          {
            if (bssl::SSLTranscript::Update(this + 408, v5, *(this + 374)) && bssl::derive_secret_with_transcript(this, *(this + 194) + 10, this + 408, "res master", 0xAuLL) && bssl::add_new_session_tickets(this, &ses.stats.sess_connect_good, a3))
            {
LABEL_40:
              *(this + 6) = 8;
              v7 = 4;
              if (v6 == 8)
              {
                goto LABEL_3;
              }

              goto LABEL_392;
            }
          }
        }

        goto LABEL_391;
      case 8:
        v49 = *this;
        if ((*(*(*this + 48) + 220) & 0x200) == 0)
        {
          goto LABEL_120;
        }

        if (!bssl::tls13_set_traffic_key(*this, 1, 0, *(this + 194), (this + 81), *(this + 129)))
        {
          goto LABEL_391;
        }

        *(this + 404) |= 0x3400u;
LABEL_120:
        if (*(v49 + 152) || **v49)
        {
          if (!bssl::tls13_set_traffic_key(v49, 2, 0, *(this + 194), (this + 130), *(this + 178)))
          {
            goto LABEL_391;
          }

          v50 = 12;
        }

        else
        {
          v50 = 14;
        }

        *(this + 6) = 9;
        if ((*(*(v49 + 48) + 220) & 0x200) != 0)
        {
          v7 = v50;
        }

        else
        {
          v7 = 1;
        }

        if (*(this + 6) != v6)
        {
          goto LABEL_392;
        }

        goto LABEL_3;
      case 9:
        v8 = *this;
        if (*(*this + 152) || (**v8 & 1) != 0)
        {
          goto LABEL_37;
        }

        if ((*(*(v8 + 6) + 220) & 0x200) == 0)
        {
          goto LABEL_261;
        }

        if (!(*(*v8 + 24))(*this, &ses.rsa_md5))
        {
          goto LABEL_298;
        }

        if (BYTE1(ses.rsa_md5) != 5)
        {
          goto LABEL_338;
        }

        if (ses.sha1)
        {
          bssl::ssl_send_alert(v8, 2, 50);
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_server.cc", 1185);
          v7 = 0;
          if (*(this + 6) == v6)
          {
            goto LABEL_3;
          }
        }

        else
        {
          (*(*v8 + 32))(v8);
LABEL_261:
          if (!bssl::tls13_set_traffic_key(v8, 2, 0, *(this + 194), (this + 130), *(this + 178)))
          {
            goto LABEL_391;
          }

LABEL_37:
          *(this + 6) = 10;
          if (v6 == 10)
          {
            goto LABEL_3;
          }
        }

        goto LABEL_392;
      case 10:
        if ((*(*(this + 194) + 408) & 0x40) == 0)
        {
          goto LABEL_33;
        }

        v8 = *this;
        if ((*(*(*this + 48) + 220) & 0x200) != 0)
        {
          goto LABEL_33;
        }

        if (!(*(*v8 + 24))(*this, &ses.rsa_md5))
        {
          goto LABEL_298;
        }

        if (BYTE1(ses.rsa_md5) != 8)
        {
          goto LABEL_338;
        }

        v11 = &ses.sha1[-1].ctx_size + 6;
        if (ses.sha1 < 2 || (v12 = __rev16(ses.md5->type), v11 < v12) || (*&ses.stats.sess_connect_good = &ses.md5->type + 2, *&ses.stats.sess_accept_renegotiate = v12, v11 != v12))
        {
          v56 = 137;
          v57 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_server.cc";
          v58 = 1218;
LABEL_317:
          ERR_put_error(16, 0, v56, v57, v58);
LABEL_318:
          v97 = v8;
          session_cache_head_low = 50;
          goto LABEL_319;
        }

        if ((*(*(this + 1) + 269) & 0x2000) != 0)
        {
          v13 = 17613;
        }

        else
        {
          v13 = 17513;
        }

        LOWORD(ses.app_verify_arg) = v13;
        WORD1(ses.app_verify_arg) = 1;
        ses.default_passwd_callback = 0;
        ses.default_passwd_callback_userdata = 0;
        LOBYTE(ses.session_cache_head) = 50;
        *&ses.sid_ctx[8] = &ses.app_verify_arg;
        if ((bssl::ssl_parse_extensions(&ses.stats.sess_connect_good, &ses.session_cache_head, &ses.sid_ctx[8], 1, 0) & 1) == 0)
        {
          session_cache_head_low = LOBYTE(ses.session_cache_head);
          goto LABEL_692;
        }

        if ((BYTE3(ses.app_verify_arg) & 1) == 0)
        {
          ERR_put_error(16, 0, 164, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_server.cc", 1236);
          session_cache_head_low = 109;
          goto LABEL_692;
        }

        if (!bssl::Array<unsigned char>::CopyFrom(*(this + 194) + 392, ses.default_passwd_callback, ses.default_passwd_callback_userdata) || (ses.rsa_md5 & 1) == 0 && (bssl::SSLTranscript::Update(this + 408, ses.extra_certs, ses.comp_methods) & 1) == 0)
        {
          session_cache_head_low = 80;
          goto LABEL_692;
        }

        (*(*v8 + 32))(v8);
LABEL_33:
        *(this + 6) = 11;
        if (v6 != 11)
        {
          goto LABEL_392;
        }

        goto LABEL_3;
      case 11:
        v8 = *this;
        if ((*(this + 1616) & 0x20) != 0)
        {
          v66 = *(*(this + 1) + 268);
          if (!(*(*v8 + 24))(*this, &ses.rsa_md5))
          {
            goto LABEL_298;
          }

          if (BYTE1(ses.rsa_md5) != 11)
          {
            goto LABEL_338;
          }

          if (!bssl::tls13_process_certificate(this, &ses.rsa_md5, (v66 & 2) == 0) || (ses.rsa_md5 & 1) == 0 && !bssl::SSLTranscript::Update(this + 408, ses.extra_certs, ses.comp_methods))
          {
            goto LABEL_391;
          }

          (*(*v8 + 32))(v8);
          *(this + 6) = 12;
          if (v6 == 12)
          {
            goto LABEL_3;
          }
        }

        else
        {
          if ((*(*(v8 + 6) + 220) & 0x20) == 0)
          {
            *(*(this + 194) + 176) = 0;
          }

LABEL_136:
          *(this + 6) = 13;
          if (v6 == 13)
          {
            goto LABEL_3;
          }
        }

        goto LABEL_392;
      case 12:
        v47 = *(*(this + 194) + 136);
        if (!v47 || !*v47)
        {
          goto LABEL_136;
        }

        v8 = *this;
        if (!(*(**this + 24))(*this, &ses.rsa_md5))
        {
          goto LABEL_298;
        }

        v48 = bssl::ssl_verify_peer_cert(this, method);
        if (v48 == 1)
        {
          goto LABEL_391;
        }

        if (v48 == 2)
        {
          v7 = 16;
          *(this + 6) = 12;
          if (v6 == 12)
          {
            goto LABEL_3;
          }

          goto LABEL_392;
        }

        if (BYTE1(ses.rsa_md5) != 15)
        {
          goto LABEL_338;
        }

        if (!bssl::tls13_process_certificate_verify(this, &ses.rsa_md5) || (ses.rsa_md5 & 1) == 0 && !bssl::SSLTranscript::Update(this + 408, ses.extra_certs, ses.comp_methods))
        {
          goto LABEL_391;
        }

        (*(*v8 + 32))(v8);
        *(this + 6) = 13;
        if (v6 == 13)
        {
          goto LABEL_3;
        }

        goto LABEL_392;
      case 13:
        if ((*(this + 1619) & 1) == 0)
        {
          *(this + 6) = 14;
          if (v6 == 14)
          {
            goto LABEL_3;
          }

          goto LABEL_392;
        }

        v8 = *this;
        if (!(*(**this + 24))(*this, &ses.rsa_md5))
        {
LABEL_298:
          v7 = 3;
          if (*(this + 6) == v6)
          {
            goto LABEL_3;
          }

          goto LABEL_392;
        }

        if (BYTE1(ses.rsa_md5) != 203)
        {
LABEL_338:
          bssl::ssl_send_alert(v8, 2, 10);
          ERR_put_error(16, 0, 223, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake.cc", 116);
          v106 = BYTE1(ses.rsa_md5);
          goto LABEL_339;
        }

        if (bssl::tls1_verify_channel_id(this, &ses.rsa_md5) && ((ses.rsa_md5 & 1) != 0 || bssl::SSLTranscript::Update(this + 408, ses.extra_certs, ses.comp_methods)))
        {
          (*(*v8 + 32))(v8);
          *(this + 6) = 14;
          if (v6 == 14)
          {
            goto LABEL_3;
          }

          goto LABEL_392;
        }

        goto LABEL_391;
      case 14:
        v8 = *this;
        if (!(*(**this + 24))(*this, &ses.app_verify_arg))
        {
          goto LABEL_298;
        }

        if (BYTE1(ses.app_verify_arg) != 20)
        {
LABEL_242:
          bssl::ssl_send_alert(v8, 2, 10);
          ERR_put_error(16, 0, 223, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/handshake.cc", 116);
          v106 = BYTE1(ses.app_verify_arg);
LABEL_339:
          ERR_add_error_dataf("got type %d, wanted type %d", v99, v100, v101, v102, v103, v104, v105, v106);
          v7 = 0;
          if (*(this + 6) != v6)
          {
            goto LABEL_392;
          }

          goto LABEL_3;
        }

        v60 = *this;
        if ((*(*(v8 + 6) + 220) & 0x200) != 0)
        {
          v61 = *(this + 374);
          p_rsa_md5 = v5;
          if (ses.default_passwd_callback_userdata != v61)
          {
LABEL_390:
            bssl::ssl_send_alert(v60, 2, 51);
            ERR_put_error(16, 0, 142, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_both.cc", 401);
            goto LABEL_391;
          }
        }

        else
        {
          *&ses.stats.sess_connect_good = 0;
          if (!bssl::tls13_finished_mac(this, &ses.rsa_md5, &ses.stats.sess_connect_good, ((*(v60 + 164) & 1) == 0)))
          {
            goto LABEL_391;
          }

          v61 = *&ses.stats.sess_connect_good;
          p_rsa_md5 = &ses.rsa_md5;
          if (ses.default_passwd_callback_userdata != *&ses.stats.sess_connect_good)
          {
            goto LABEL_390;
          }
        }

        if (!v61)
        {
          goto LABEL_395;
        }

        if (v61 < 8)
        {
          v110 = 0;
          v111 = 0;
          goto LABEL_387;
        }

        if (v61 >= 0x20)
        {
          v110 = v61 & 0xFFFFFFFFFFFFFFE0;
          v154 = (ses.default_passwd_callback + 16);
          v155 = (p_rsa_md5 + 2);
          v156 = 0uLL;
          v157 = v61 & 0xFFFFFFFFFFFFFFE0;
          v158 = 0uLL;
          do
          {
            v156 = vorrq_s8(veorq_s8(v155[-1], v154[-1]), v156);
            v158 = vorrq_s8(veorq_s8(*v155, *v154), v158);
            v154 += 2;
            v155 += 2;
            v157 -= 32;
          }

          while (v157);
          v159 = vorrq_s8(v158, v156);
          *v159.i8 = vorr_s8(*v159.i8, *&vextq_s8(v159, v159, 8uLL));
          v160 = v159.i64[0] | HIDWORD(v159.i64[0]) | ((v159.i64[0] | HIDWORD(v159.i64[0])) >> 16);
          v111 = v160 | BYTE1(v160);
          if (v61 == v110)
          {
            goto LABEL_389;
          }

          if ((v61 & 0x18) == 0)
          {
LABEL_387:
            v170 = v61 - v110;
            v171 = p_rsa_md5 + v110;
            v172 = ses.default_passwd_callback + v110;
            do
            {
              v174 = *v172++;
              v173 = v174;
              v175 = *v171++;
              v111 |= v175 ^ v173;
              --v170;
            }

            while (v170);
            goto LABEL_389;
          }
        }

        else
        {
          v111 = 0;
          v110 = 0;
        }

        v161 = v110;
        v110 = v61 & 0xFFFFFFFFFFFFFFF8;
        v162 = v111;
        v163 = (ses.default_passwd_callback + v161);
        v164 = (p_rsa_md5 + v161);
        v165 = v161 - (v61 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v166 = *v163++;
          v167 = v166;
          v168 = *v164++;
          v162 = vorr_s8(veor_s8(v168, v167), v162);
          v165 += 8;
        }

        while (v165);
        v169 = *&v162 | HIDWORD(*&v162) | ((*&v162 | HIDWORD(*&v162)) >> 16);
        v111 = v169 | BYTE1(v169);
        if (v61 != v110)
        {
          goto LABEL_387;
        }

LABEL_389:
        if (v111)
        {
          goto LABEL_390;
        }

LABEL_395:
        if (!bssl::tls13_set_traffic_key(v8, 3, 0, *(this + 194), (this + 228), *(this + 276)))
        {
          goto LABEL_391;
        }

        if ((*(*(v8 + 6) + 220) & 0x200) != 0)
        {
          v177 = 16;
        }

        else
        {
          if ((ses.app_verify_arg & 1) == 0 && !bssl::SSLTranscript::Update(this + 408, ses.client_cert_cb, ses.app_gen_cookie_cb) || !bssl::derive_secret_with_transcript(this, *(this + 194) + 10, this + 408, "res master", 0xAuLL))
          {
            goto LABEL_391;
          }

          v177 = 15;
        }

        *(this + 6) = v177;
        v182 = *(this + 192);
        if (v182 && *(v182 + 4) == 3)
        {
          atomic_fetch_add((v182 + 184), 1u);
        }

        (*(*v8 + 32))(v8);
        if (**v8)
        {
          (*(*v8 + 128))(v8);
          v7 = 4;
          if (*(this + 6) != v6)
          {
            goto LABEL_392;
          }
        }

        else
        {
LABEL_416:
          v7 = 1;
          if (*(this + 6) != v6)
          {
            goto LABEL_392;
          }
        }

        goto LABEL_3;
      case 15:
        v59 = *this;
        LOBYTE(ses.rsa_md5) = 0;
        v7 = 0;
        if (!bssl::add_new_session_tickets(this, &ses.rsa_md5, a3))
        {
          goto LABEL_237;
        }

        *(this + 6) = 16;
        if (LOBYTE(ses.rsa_md5) != 1)
        {
          goto LABEL_416;
        }

        if (**v59)
        {
          v7 = 4;
          if (*(this + 6) == v6)
          {
            goto LABEL_3;
          }
        }

        else
        {
          if (*(v59 + 152))
          {
            v7 = 4;
          }

          else
          {
            v7 = 1;
          }

          if (*(this + 6) == v6)
          {
            goto LABEL_3;
          }
        }

        goto LABEL_392;
      case 16:
        return v7;
      default:
        goto LABEL_391;
    }
  }
}

uint64_t bssl::quic_ticket_compatible(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 408) & 0x20) == 0)
  {
    return 1;
  }

  v3 = *(a1 + 424);
  if (!v3 || *(a2 + 216) != v3)
  {
    return 0;
  }

  v4 = *(a2 + 208);
  v5 = *(a1 + 416);
  if (v3 >= 8)
  {
    if (v3 >= 0x20)
    {
      v6 = v3 & 0xFFFFFFFFFFFFFFE0;
      v8 = v4 + 1;
      v9 = v5 + 1;
      v10 = 0uLL;
      v11 = v3 & 0xFFFFFFFFFFFFFFE0;
      v12 = 0uLL;
      do
      {
        v10 = vorrq_s8(veorq_s8(v9[-1], v8[-1]), v10);
        v12 = vorrq_s8(veorq_s8(*v9, *v8), v12);
        v8 += 2;
        v9 += 2;
        v11 -= 32;
      }

      while (v11);
      v13 = vorrq_s8(v12, v10);
      *v13.i8 = vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL));
      v14 = v13.i64[0] | HIDWORD(v13.i64[0]) | ((v13.i64[0] | HIDWORD(v13.i64[0])) >> 16);
      v7 = v14 | BYTE1(v14);
      if (v3 == v6)
      {
        return v7 == 0;
      }

      if ((v3 & 0x18) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    v15 = v6;
    v6 = v3 & 0xFFFFFFFFFFFFFFF8;
    v16 = v7;
    v17 = &v4->i8[v15];
    v18 = &v5->i8[v15];
    v19 = v15 - (v3 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v20 = *v17++;
      v21 = v20;
      v22 = *v18++;
      v16 = vorr_s8(veor_s8(v22, v21), v16);
      v19 += 8;
    }

    while (v19);
    v23 = *&v16 | HIDWORD(*&v16) | ((*&v16 | HIDWORD(*&v16)) >> 16);
    v7 = v23 | BYTE1(v23);
    if (v3 == v6)
    {
      return v7 == 0;
    }

    goto LABEL_17;
  }

  v6 = 0;
  v7 = 0;
LABEL_17:
  v24 = v3 - v6;
  v25 = &v5->i8[v6];
  v26 = &v4->i8[v6];
  do
  {
    v28 = *v26++;
    v27 = v28;
    v29 = *v25++;
    v7 |= v29 ^ v27;
    --v24;
  }

  while (v24);
  return v7 == 0;
}

uint64_t bssl::resolve_pake_secret(bssl *this, bssl::SSL_HANDSHAKE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = *MEMORY[0x277D85DE8];
  if (bssl::spake2plus::Verifier::ProcessProverShare(*(this + 213), v24, 65, v23, 32, v22, 32, a8, *(*(this + 209) + 40), *(*(this + 209) + 48)))
  {
    memset(v20, 0, sizeof(v20));
    v9 = malloc_type_malloc(0x69uLL, 0xB4E622C9uLL);
    if (v9)
    {
      *v9 = 97;
      BYTE8(v20[0]) = 0;
      *&v20[0] = 0;
      *&v20[1] = v9 + 1;
      *(&v20[1] + 8) = xmmword_273BB9A90;
      BYTE8(v20[2]) = 1;
      v21 = 0;
      result = CBB_add_space(v20, &v21, 65);
      if (result)
      {
        v11 = v21;
        *v21 = v24[0];
        v13 = v24[2];
        v12 = v24[3];
        v14 = v24[1];
        v11[4].i8[0] = v25;
        v11[2] = v13;
        v11[3] = v12;
        v11[1] = v14;
        v21 = 0;
        result = CBB_add_space(v20, &v21, 32);
        if (result)
        {
          v15 = v21;
          v16 = v23[1];
          *v21 = v23[0];
          v15[1] = v16;
          result = bssl::CBBFinishArray(v20, this + 210);
          if (result)
          {
            result = bssl::tls13_advance_key_schedule(this, v22, 0x20uLL);
          }
        }
      }
    }

    else
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      result = 0;
    }

    if (!BYTE8(v20[0]) && (BYTE8(v20[2]) & 1) != 0 && *&v20[1])
    {
      v17 = result;
      v19 = (*&v20[1] - 8);
      v18 = *(*&v20[1] - 8);
      if (v18 != -8)
      {
        bzero(v19, v18 + 8);
      }

      free(v19);
      return v17;
    }
  }

  else
  {
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_server.cc", 53);
    bssl::ssl_send_alert(*this, 2, 47);
    return 0;
  }

  return result;
}

uint64_t bssl::resolve_ecdhe_secret(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*(a1 + 1552) + 6);
  v26 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 50;
  if ((bssl::ssl_ext_key_share_parse_clienthello(a1, &v26, &v24, &v23, a2) & 1) == 0)
  {
    bssl::ssl_send_alert(v3, 2, v23);
    return 0;
  }

  if (!v26)
  {
    bssl::ssl_send_alert(v3, 2, 47);
    ERR_put_error(16, 0, 243, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_server.cc", 86);
    return 0;
  }

  v21 = 0;
  v22 = 0;
  v5 = *(a1 + 1608);
  if (!v5 || (*(a1 + 1618) & 0x10) != 0 || *(v5 + 32) != v4 || !*(v5 + 64))
  {
    memset(v20, 0, sizeof(v20));
    v19 = 0u;
    bssl::SSLKeyShare::Create(v4, &v18);
    v7 = v18;
    if (!v18)
    {
      bssl::ssl_send_alert(v3, 2, v23);
      if (BYTE8(v19))
      {
        goto LABEL_33;
      }

LABEL_28:
      if ((v20[3] & 1) != 0 && v20[0])
      {
        v14 = v20[0] - 8;
        v13 = *(v20[0] - 1);
        if (v13 != -8)
        {
          bzero(v14, v13 + 8);
        }

        free(v14);
      }

      goto LABEL_33;
    }

    memset(v20, 0, sizeof(v20));
    v19 = 0u;
    v8 = malloc_type_malloc(0x28uLL, 0xB4E622C9uLL);
    if (v8)
    {
      *v8 = 32;
      BYTE8(v19) = 0;
      *&v19 = 0;
      v20[0] = v8 + 1;
      *&v20[1] = xmmword_273BA9E30;
      LOBYTE(v20[3]) = 1;
      if (((*v7)[4])(v7, &v19, &v21, &v23, v24, v25) && bssl::CBBFinishArray(&v19, (a1 + 632)))
      {
        if (!v5 || (*(a1 + 1618) & 0x10) == 0 || (*(v5 + 32) = v4, bssl::Array<unsigned char>::CopyFrom(v5 + 40, *(a1 + 632), *(a1 + 640))) && bssl::Array<unsigned char>::CopyFrom(v5 + 56, v21, v22))
        {
          std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::~unique_ptr[abi:sn200100](&v18);
          CBB_cleanup(&v19);
          goto LABEL_20;
        }

        v9 = 80;
        goto LABEL_25;
      }
    }

    else
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    }

    v9 = v23;
LABEL_25:
    bssl::ssl_send_alert(v3, 2, v9);
    (**v7)(v7);
    v11 = *(v7 - 1);
    v10 = v7 - 1;
    v12 = v11 + 8;
    if (v11 != -8)
    {
      bzero(v10, v12);
    }

    free(v10);
    if (BYTE8(v19))
    {
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  if (!bssl::Array<unsigned char>::CopyFrom(a1 + 632, *(v5 + 40), *(v5 + 48)) || (bssl::Array<unsigned char>::CopyFrom(&v21, *(v5 + 56), *(v5 + 64)) & 1) == 0)
  {
    bssl::ssl_send_alert(v3, 2, 80);
LABEL_33:
    result = 0;
    goto LABEL_34;
  }

LABEL_20:
  result = bssl::tls13_advance_key_schedule(a1, v21, v22);
LABEL_34:
  if (v22 && v22 - 1 >= -v21)
  {
    __break(1u);
  }

  else if (v21)
  {
    v15 = result;
    v17 = (v21 - 8);
    v16 = *(v21 - 1);
    if (v16 != -8)
    {
      bzero(v17, v16 + 8);
    }

    free(v17);
    return v15;
  }

  return result;
}

uint64_t bssl::ssl_ext_supported_versions_add_serverhello(uint64_t a1, uint64_t *a2)
{
  v6[0] = 0;
  result = CBB_add_space(a2, v6, 2);
  if (result)
  {
    *(v6[0] + 1) = 43;
    *v6[0] = 0;
    result = CBB_add_u16_length_prefixed(a2, v6);
    if (result)
    {
      v5 = *(*(*a1 + 48) + 208);
      v7 = 0;
      result = CBB_add_space(v6, &v7, 2);
      if (result)
      {
        v7[1] = v5;
        *v7 = HIBYTE(v5);
        return CBB_flush(a2) != 0;
      }
    }
  }

  return result;
}

uint64_t bssl::add_new_session_tickets(bssl *this, bssl::SSL_HANDSHAKE *a2, BOOL *a3)
{
  if ((*(this + 1616) & 0x10) == 0 || (v5 = *this, (*(*this + 129) & 0x40) != 0) || *(this + 213))
  {
    *a2 = 0;
    return 1;
  }

  v7 = *(this + 194);
  v8 = *(*(v5 + 104) + 728);
  if (v8)
  {
    v8(0, &v52, a3);
    v9 = v52.tv_sec & ~(v52.tv_sec >> 63);
    v10 = v7[24];
    v11 = v9 >= v10;
    v12 = v9 - v10;
    if (!v11)
    {
      goto LABEL_8;
    }

LABEL_67:
    v7[24] = v9;
    v41 = v7[23];
    v42.i64[0] = v41.u32[0];
    v42.i64[1] = v41.u32[1];
    v7[23] = vbic_s8(vsub_s32(v41, vdup_n_s32(v12)), vmovn_s64(vcgtq_u64(vdupq_n_s64(v12), v42)));
    if (*(*(v5 + 112) + 228))
    {
      goto LABEL_9;
    }

LABEL_68:
    v14 = 0;
LABEL_69:
    *a2 = v14 & 1;
    return 1;
  }

  gettimeofday(&v52, 0);
  v9 = v52.tv_sec & ~(v52.tv_sec >> 63);
  v40 = v7[24];
  v11 = v9 >= v40;
  v12 = v9 - v40;
  if (v11)
  {
    goto LABEL_67;
  }

LABEL_8:
  v7[23] = 0;
  v7[24] = v9;
  if (!*(*(v5 + 112) + 228))
  {
    goto LABEL_68;
  }

LABEL_9:
  v13 = 0;
  v14 = 0;
  while (1)
  {
    bssl::SSL_SESSION_dup(*(this + 194), 2, &v56);
    if (!v56)
    {
      return 0;
    }

    BCM_rand_bytes_with_additional_data(&v56[1].master_key[44], 4uLL, BCM_rand_bytes::kZeroAdditionalData);
    v15 = v56;
    v16 = v56[1].sid_ctx[12] | 8;
    v56[1].sid_ctx[12] = v16;
    v17 = *(v5 + 164);
    if ((v17 & 4) != 0 && ((v18 = *(v5 + 152)) == 0 || *(*(v5 + 8) + 216)) && (**v5 & 1) == 0)
    {
      if (v18)
      {
        v27 = -1;
      }

      else
      {
        v27 = 14336;
      }

      v15[1].session_id_length = v27;
      v17 = *(v5 + 164);
      v19 = 1;
    }

    else
    {
      v19 = 0;
    }

    v15[1].sid_ctx[12] = (16 * v17) & 0x80 | v16 & 0x7F;
    v55 = v13;
    v53 = 0u;
    v54 = 0u;
    v52 = 0;
    if (!(*(*v5 + 88))(v5, &v52, v51, 4))
    {
      goto LABEL_43;
    }

    time = v56->time;
    v50[0] = 0;
    if (!CBB_add_space(v51, v50, 4))
    {
      goto LABEL_43;
    }

    *(v50[0] + 3) = time;
    *(v50[0] + 2) = BYTE1(time);
    *(v50[0] + 1) = BYTE2(time);
    *v50[0] = HIBYTE(time);
    v21 = *&v56[1].master_key[44];
    v50[0] = 0;
    if (!CBB_add_space(v51, v50, 4))
    {
      goto LABEL_43;
    }

    *(v50[0] + 3) = v21;
    *(v50[0] + 2) = BYTE1(v21);
    *(v50[0] + 1) = BYTE2(v21);
    *v50[0] = HIBYTE(v21);
    if (!CBB_add_u8_length_prefixed(v51, v50))
    {
      goto LABEL_43;
    }

    v45 = 0;
    if (!CBB_add_space(v50, &v45, 1))
    {
      goto LABEL_43;
    }

    *v45 = v55;
    if (!bssl::tls13_derive_session_psk(v56, &v55, 1uLL, **v5, v22, v23, v24, v25) || !CBB_add_u16_length_prefixed(v51, &v45) || !bssl::ssl_encrypt_ticket(this, &v45, v56))
    {
      goto LABEL_43;
    }

    if (v46)
    {
      v26 = *(v47 + 8) - (v48 + v49);
    }

    else
    {
      v26 = v48;
    }

    if (v26)
    {
      if (CBB_add_u16_length_prefixed(v51, v44) && (!v19 || CBB_add_u16(v44, 42) && CBB_add_u16_length_prefixed(v44, v43) && CBB_add_u32(v43, v56[1].session_id_length) && CBB_flush(v44)))
      {
        if (bssl::ssl_add_flags_extension(v44, 2 * (v56[1].sid_ctx[12] & 0x80u)))
        {
          v28 = *(this + 1667) & 0xF0 | 0xA;
          if (CBB_add_u16(v44, v28 | (v28 << 8)))
          {
            if (CBB_add_u16(v44, 0))
            {
              bssl::ssl_add_message_cbb(v5, &v52);
              v30 = v29 ^ 1;
              v14 |= v29;
              if (LOBYTE(v52.tv_usec))
              {
                goto LABEL_49;
              }

              goto LABEL_44;
            }
          }
        }
      }

LABEL_43:
      v30 = 1;
      if (LOBYTE(v52.tv_usec))
      {
        goto LABEL_49;
      }

      goto LABEL_44;
    }

    v30 = 4;
    if (LOBYTE(v52.tv_usec))
    {
      goto LABEL_49;
    }

LABEL_44:
    if ((BYTE8(v54) & 1) != 0 && v53)
    {
      v32 = *(v53 - 8);
      v31 = (v53 - 8);
      v33 = v32 + 8;
      if (v32 != -8)
      {
        bzero(v31, v33);
      }

      free(v31);
    }

LABEL_49:
    v34 = v56;
    v56 = 0;
    if (v34)
    {
      v35 = atomic_load(v34);
      if (v35 != -1)
      {
        while (1)
        {
          if (!v35)
          {
            abort();
          }

          v36 = v35;
          atomic_compare_exchange_strong(&v34->ssl_version, &v36, v35 - 1);
          if (v36 == v35)
          {
            break;
          }

          v35 = v36;
          if (v36 == -1)
          {
            goto LABEL_59;
          }
        }

        if (v35 == 1)
        {
          ssl_session_st::~ssl_session_st(v34);
          tlsext_tick_lifetime_hint = v34[-1].tlsext_tick_lifetime_hint;
          p_tlsext_tick_lifetime_hint = &v34[-1].tlsext_tick_lifetime_hint;
          v39 = tlsext_tick_lifetime_hint + 8;
          if (tlsext_tick_lifetime_hint != -8)
          {
            bzero(p_tlsext_tick_lifetime_hint, v39);
          }

          free(p_tlsext_tick_lifetime_hint);
        }
      }
    }

LABEL_59:
    if ((v30 | 4) != 4)
    {
      return 0;
    }

    if (++v13 >= *(*(v5 + 112) + 228))
    {
      goto LABEL_69;
    }
  }
}

uint64_t EVP_tls_cbc_remove_padding(uint64_t *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 + 1 > a4)
  {
    return 0;
  }

  v8 = *(a4 + a3 - 1);
  v9 = (((a4 - (a6 + 1 + v8)) ^ a4 | (a6 + 1 + v8) ^ a4) ^ ~a4) >> 63;
  v10 = 256;
  if (a4 < 0x100)
  {
    v10 = a4;
  }

  if (a4)
  {
    if (a4 < 4)
    {
      v11 = 0;
      goto LABEL_17;
    }

    v12 = vdupq_n_s64(v8);
    if (a4 >= 0x10)
    {
      v11 = v10 & 0x1F0;
      v13.i64[0] = -1;
      v13.i64[1] = -1;
      v14.i64[1] = -1;
      v14.i64[0] = (((a4 - (a6 + 1 + v8)) ^ a4 | (a6 + 1 + v8) ^ a4) ^ ~a4) >> 63;
      v15 = (a4 + a3 - 16);
      v16 = xmmword_273BB9AF0;
      v17 = xmmword_273BB9B00;
      v18 = xmmword_273BB9B10;
      v19 = xmmword_273BB9B20;
      v20 = xmmword_273BB9B30;
      v21 = vdupq_n_s64(0x10uLL);
      v22 = xmmword_273BB9B40;
      v23 = v11;
      v24.i64[0] = -1;
      v24.i64[1] = -1;
      v25 = vdupq_n_s8(v8);
      v6.i64[0] = -1;
      v6.i64[1] = -1;
      v26.i64[0] = -1;
      v26.i64[1] = -1;
      v27 = xmmword_273B92120;
      v28.i64[0] = -1;
      v28.i64[1] = -1;
      v29.i64[0] = -1;
      v29.i64[1] = -1;
      v30 = xmmword_273B92130;
      v31.i64[0] = -1;
      v31.i64[1] = -1;
      do
      {
        v32 = *v15--;
        v33 = vrev64q_s8(v32);
        v34 = veorq_s8(vextq_s8(v33, v33, 8uLL), v25);
        v35 = vmovl_high_u8(v34);
        v36 = vmovl_u8(*v34.i8);
        v37 = vmovl_u16(*v36.i8);
        v38.i64[0] = v37.u32[0];
        v38.i64[1] = v37.u32[1];
        v39 = vornq_s8(vcgtq_u64(v30, v12), v38);
        v40 = vmovl_u16(*v35.i8);
        v41 = vmovl_high_u16(v36);
        v38.i64[0] = v37.u32[2];
        v38.i64[1] = v37.u32[3];
        v42 = vornq_s8(vcgtq_u64(v27, v12), v38);
        v38.i64[0] = v41.u32[0];
        v38.i64[1] = v41.u32[1];
        v43 = vornq_s8(vcgtq_u64(v22, v12), v38);
        v38.i64[0] = v40.u32[0];
        v38.i64[1] = v40.u32[1];
        v44 = vornq_s8(vcgtq_u64(v19, v12), v38);
        v38.i64[0] = v41.u32[2];
        v38.i64[1] = v41.u32[3];
        v45 = vornq_s8(vcgtq_u64(v20, v12), v38);
        v46 = vmovl_high_u16(v35);
        v38.i64[0] = v40.u32[2];
        v38.i64[1] = v40.u32[3];
        v47 = vornq_s8(vcgtq_u64(v18, v12), v38);
        v38.i64[0] = v46.u32[0];
        v38.i64[1] = v46.u32[1];
        v48 = vornq_s8(vcgtq_u64(v17, v12), v38);
        v38.i64[0] = v46.u32[2];
        v38.i64[1] = v46.u32[3];
        v31 = vandq_s8(vornq_s8(vcgtq_u64(v16, v12), v38), v31);
        v29 = vandq_s8(v48, v29);
        v28 = vandq_s8(v47, v28);
        v6 = vandq_s8(v45, v6);
        v26 = vandq_s8(v44, v26);
        v24 = vandq_s8(v43, v24);
        v13 = vandq_s8(v42, v13);
        v14 = vandq_s8(v39, v14);
        v22 = vaddq_s64(v22, v21);
        v27 = vaddq_s64(v27, v21);
        v30 = vaddq_s64(v30, v21);
        v20 = vaddq_s64(v20, v21);
        v19 = vaddq_s64(v19, v21);
        v18 = vaddq_s64(v18, v21);
        v17 = vaddq_s64(v17, v21);
        v16 = vaddq_s64(v16, v21);
        v23 -= 16;
      }

      while (v23);
      v49 = vandq_s8(vandq_s8(vandq_s8(v14, v26), vandq_s8(v24, v29)), vandq_s8(vandq_s8(v13, v28), vandq_s8(v6, v31)));
      v9 = vand_s8(*v49.i8, *&vextq_s8(v49, v49, 8uLL));
      if (v10 == v11)
      {
        goto LABEL_21;
      }

      if ((v10 & 0xC) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v11 = 0;
    }

    v50 = v11;
    v11 = v10 & 0x1FC;
    v51 = vdupq_n_s64(v50);
    v52 = vorrq_s8(v51, xmmword_273B92120);
    v53 = vorrq_s8(v51, xmmword_273B92130);
    v54.i64[0] = -1;
    v54.i64[1] = -1;
    v55.i64[1] = -1;
    v55.i64[0] = v9;
    v56 = vdup_n_s16(v8);
    v57 = (a4 - v50 + a3 - 4);
    v58 = v50 - v11;
    v59.i64[0] = 255;
    v59.i64[1] = 255;
    v60 = vdupq_n_s64(4uLL);
    do
    {
      v61 = *v57--;
      v6.i32[0] = v61;
      v62 = vmovl_u16(veor_s8(vrev64_s16(*&vmovl_u8(*v6.i8)), v56));
      v63.i64[0] = v62.u32[2];
      v63.i64[1] = v62.u32[3];
      v64 = vandq_s8(v63, v59);
      v63.i64[0] = v62.u32[0];
      v63.i64[1] = v62.u32[1];
      v6 = vandq_s8(v63, v59);
      v54 = vandq_s8(vornq_s8(vcgtq_u64(v52, v12), v64), v54);
      v55 = vandq_s8(vornq_s8(vcgtq_u64(v53, v12), v6), v55);
      v52 = vaddq_s64(v52, v60);
      v53 = vaddq_s64(v53, v60);
      v58 += 4;
    }

    while (v58);
    v65 = vandq_s8(v55, v54);
    LOBYTE(v9) = vand_s8(*v65.i8, *&vextq_s8(v65, v65, 8uLL)).u8[0];
    if (v10 != v11)
    {
LABEL_17:
      v66 = (a3 + a4 + ~v11);
      do
      {
        v67 = *v66--;
        v68 = v67 ^ ~v8;
        if (v11 > v8)
        {
          v68 = -1;
        }

        LOBYTE(v9) = v68 & v9;
        ++v11;
      }

      while (v10 != v11);
    }
  }

LABEL_21:
  if (v9 == 255)
  {
    v69 = -1;
  }

  else
  {
    v69 = 0;
  }

  if (v9 == 255)
  {
    v70 = ~v8;
  }

  else
  {
    v70 = 0;
  }

  *a2 = v70 + a4;
  *a1 = v69;
  return 1;
}

void *EVP_tls_cbc_copy_mac(void *result, size_t __n, uint64_t a3, uint64_t a4, size_t a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = __n + 256;
  if (a5 >= __n + 256)
  {
    v10 = a5 - (__n + 256);
  }

  else
  {
    v10 = 0;
  }

  if (__n)
  {
    v11 = result;
    bzero(__src, __n);
    result = v11;
  }

  if (v10 >= a5)
  {
    v12 = 0;
    if (__n >= 2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    if (a5 >= v9)
    {
      v15 = v9;
    }

    else
    {
      v15 = a5;
    }

    do
    {
      if (v13 >= __n)
      {
        v16 = __n;
      }

      else
      {
        v16 = 0;
      }

      v17 = v13 - v16;
      v18 = (((v10 ^ (a4 - __n)) - 1) & ~(v10 ^ (a4 - __n))) >> 63;
      v14 |= v18;
      __src[v17] |= ((((v10 - a4) ^ v10 | v10 ^ a4) ^ v10) >> 63) & v14 & *(a3 + v10);
      v12 |= v18 & v17;
      ++v10;
      v13 = v17 + 1;
      --v15;
    }

    while (v15);
    if (__n >= 2)
    {
LABEL_15:
      v19 = &v28;
      v20 = __src;
      v21 = 1;
      do
      {
        v22 = 0;
        v23 = v20;
        v24 = v21;
        do
        {
          if (v24 >= __n)
          {
            v25 = __n;
          }

          else
          {
            v25 = 0;
          }

          v26 = v24 - v25;
          v19[v22] = v20[v26] & ~((v12 & 1) - 1) | v20[v22] & ((v12 & 1) - 1);
          ++v22;
          v24 = v26 + 1;
        }

        while (__n != v22);
        v21 *= 2;
        v12 >>= 1;
        v27 = v19;
        v20 = v19;
        v19 = v23;
      }

      while (v21 < __n);
      return memcpy(result, v27, __n);
    }
  }

  if (!__n)
  {
    return result;
  }

  v27 = __src;
  return memcpy(result, v27, __n);
}

uint64_t EVP_tls_cbc_digest_record(_DWORD *a1, int8x16_t *a2, void *a3, int8x16_t *a4, int8x16_t *a5, uint64_t a6, unint64_t a7, void *__src, size_t __n)
{
  v276 = *MEMORY[0x277D85DE8];
  if (*a1 == 672)
  {
    if (__n > 0x40)
    {
      return 0;
    }

    v24 = 0uLL;
    memset(v271, 0, sizeof(v271));
    __dst = 0u;
    v270 = 0u;
    v25.i64[0] = 0x3636363636363636;
    v25.i64[1] = 0x3636363636363636;
    if (__n)
    {
      memcpy(&__dst, __src, __n);
      v25.i64[0] = 0x3636363636363636;
      v25.i64[1] = 0x3636363636363636;
      v26.i64[0] = 0x3636363636363636;
      v26.i64[1] = 0x3636363636363636;
      v27 = veorq_s8(__dst, v26);
      v28 = veorq_s8(v270, v26);
      v24 = 0uLL;
      v29 = v271[0].i8[0] ^ 0x36;
    }

    else
    {
      v29 = 54;
      v27.i64[0] = 0x3636363636363636;
      v27.i64[1] = 0x3636363636363636;
      v28.i64[0] = 0x3636363636363636;
      v28.i64[1] = 0x3636363636363636;
    }

    __dst = v27;
    v270 = v28;
    v271[0].i8[0] = v29;
    *(v271 + 1) = veorq_s8(*(v271 + 1), v25);
    v134 = veor_s8(*&v271[1].i8[1], 0x3636363636363636);
    *&v271[1].i8[1] = v134;
    v134.i32[0] = *(&v271[1].i32[2] + 1);
    v135 = veor_s8(*&vmovl_u8(v134), 0x36003600360036);
    *(&v271[1].i32[2] + 1) = vuzp1_s8(v135, v135).u32[0];
    *(&v271[1].i16[6] + 1) ^= 0x3636u;
    v271[1].i8[15] ^= 0x36u;
    *&v268[72] = v24;
    *&v268[56] = v24;
    *&v268[40] = v24;
    *&v268[24] = v24;
    *&v268[88] = 0x2000000000;
    *v267 = xmmword_273BA6FA0;
    *v268 = xmmword_273BA6FB0;
    *&v268[16] = 512;
    sha256_block_data_order(v267, &__dst, 1);
    BCM_sha256_update(v267, a4, 0xDuLL);
    v136 = a7;
    if (a7 >= 0x120)
    {
      v137 = a7 - 288;
    }

    else
    {
      v137 = 0;
    }

    BCM_sha256_update(v267, a5, v137);
    v19 = 0;
    v138 = v136 - v137;
    if ((v136 - v137) >> 61)
    {
      return v19;
    }

    if (*&v268[20])
    {
      return v19;
    }

    v19 = 0;
    if (__CFADD__(*&v268[16], 8 * v138) || (*&v268[16] + 8 * v138) >> 32)
    {
      return v19;
    }

    v139 = 0;
    v140 = 0;
    v255 = &a5->i8[v137];
    v141 = (a6 - v137 + *&v268[88] + 72) >> 6;
    v258 = (v138 + *&v268[88] + 72) >> 6;
    v260 = v141 - 1;
    v142 = *&v268[16] + 8 * (a6 - v137);
    v257 = a6 - v137;
    v274 = 0u;
    v275 = 0u;
    *v272 = 0u;
    v273 = 0u;
    v264 = 0u;
    v143 = -v141;
    v144.i64[0] = -1;
    v144.i64[1] = -1;
    v249 = vdupq_n_s64(4uLL);
    v145.i64[0] = 0x8080808080808080;
    v145.i64[1] = 0x8080808080808080;
    v262 = 0u;
    while (1)
    {
      if (v140 || (v148 = *&v268[88], !*&v268[88]))
      {
        v148 = 0;
        v149 = v138 - v139;
        if (v138 <= v139)
        {
          goto LABEL_72;
        }
      }

      else
      {
        memcpy(v272, &v268[24], *&v268[88]);
        v145.i64[0] = 0x8080808080808080;
        v145.i64[1] = 0x8080808080808080;
        v144.i64[0] = -1;
        v144.i64[1] = -1;
        v149 = v138 - v139;
        if (v138 <= v139)
        {
          goto LABEL_72;
        }
      }

      if (64 - v148 >= v149)
      {
        v150 = v149;
      }

      else
      {
        v150 = 64 - v148;
      }

      if (v150)
      {
        memcpy(&v272[v148], &v255[v139], v150);
        v145.i64[0] = 0x8080808080808080;
        v145.i64[1] = 0x8080808080808080;
        v144.i64[0] = -1;
        v144.i64[1] = -1;
      }

LABEL_72:
      if (v148 <= 0x3F)
      {
        v151 = v148;
        if (v148 <= 0x3C)
        {
          v152 = 64 - v148;
          v153 = vdupq_n_s64(v139 - v148);
          v154 = vdupq_n_s64(v257);
          if (v148 > 0x30)
          {
            v155 = 0;
            v156 = v148;
            goto LABEL_83;
          }

          v157 = vaddq_s64(vdupq_n_s64(v148), v153);
          v158 = vaddq_s64(v157, xmmword_273B92120);
          v159 = vaddq_s64(v157, xmmword_273B92130);
          v160 = vaddq_s64(v157, xmmword_273BB9B30);
          v161 = vaddq_s64(v157, xmmword_273BB9B40);
          v162 = vaddq_s64(v157, xmmword_273BB9B10);
          v163 = vaddq_s64(v157, xmmword_273BB9B20);
          v164 = vaddq_s64(v157, xmmword_273BB9AF0);
          v165 = vaddq_s64(v157, xmmword_273BB9B00);
          v166 = veorq_s8(v165, v154);
          v167 = veorq_s8(v164, v154);
          v168 = veorq_s8(v163, v154);
          v169 = veorq_s8(v162, v154);
          v170 = veorq_s8(v161, v154);
          v171 = veorq_s8(v160, v154);
          v172 = veorq_s8(v159, v154);
          v173 = veorq_s8(v158, v154);
          *&v272[v148] = vorrq_s8(vandq_s8(*&v272[v148], vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v159, v154), v159), v172), v159)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v158, v154), v158), v173), v158))), vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v161, v154), v161), v170), v161)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v160, v154), v160), v171), v160)))), vuzp1q_s16(vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v163, v154), v163), v168), v163)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v162, v154), v162), v169), v162))), vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v165, v154), v165), v166), v165)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v164, v154), v164), v167), v164)))))), vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v172, v144), v172), 0x38uLL), vshrq_n_u64(vbicq_s8(vaddq_s64(v173, v144), v173), 0x38uLL)), vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v170, v144), v170), 0x38uLL), vshrq_n_u64(vbicq_s8(vaddq_s64(v171, v144), v171), 0x38uLL))), vuzp1q_s16(vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v168, v144), v168), 0x38uLL), vshrq_n_u64(vbicq_s8(vaddq_s64(v169, v144), v169), 0x38uLL)), vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v166, v144), v166), 0x38uLL), vshrq_n_u64(vbicq_s8(vaddq_s64(v167, v144), v167), 0x38uLL)))), v145));
          v155 = v152 & 0x70;
          if (v155 != 16)
          {
            v174 = vaddq_s64(v157, xmmword_273BB9BC0);
            v175 = vaddq_s64(v157, xmmword_273BB9BB0);
            v176 = vaddq_s64(v157, xmmword_273BB9BA0);
            v177 = vaddq_s64(v157, xmmword_273BB9B90);
            v178 = vaddq_s64(v157, xmmword_273BB9B80);
            v179 = vaddq_s64(v157, xmmword_273BB9B70);
            v180 = vaddq_s64(v157, xmmword_273BB9B60);
            v181 = vaddq_s64(v157, xmmword_273BB9B50);
            v182 = veorq_s8(v181, v154);
            v183 = veorq_s8(v180, v154);
            v184 = veorq_s8(v179, v154);
            v185 = veorq_s8(v178, v154);
            v187 = veorq_s8(v177, v154);
            v188 = veorq_s8(v176, v154);
            v189 = veorq_s8(v175, v154);
            v190 = veorq_s8(v174, v154);
            *&v272[v148 + 16] = vorrq_s8(vandq_s8(*&v272[v148 + 16], vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v180, v154), v180), v183), v180)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v181, v154), v181), v182), v181))), vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v178, v154), v178), v185), v178)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v179, v154), v179), v184), v179)))), vuzp1q_s16(vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v176, v154), v176), v188), v176)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v177, v154), v177), v187), v177))), vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v174, v154), v174), v190), v174)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v175, v154), v175), v189), v175)))))), vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v183, v144), v183), 0x38uLL), vshrq_n_u64(vbicq_s8(vaddq_s64(v182, v144), v182), 0x38uLL)), vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v185, v144), v185), 0x38uLL), vshrq_n_u64(vbicq_s8(vaddq_s64(v184, v144), v184), 0x38uLL))), vuzp1q_s16(vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v188, v144), v188), 0x38uLL), vshrq_n_u64(vbicq_s8(vaddq_s64(v187, v144), v187), 0x38uLL)), vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v190, v144), v190), 0x38uLL), vshrq_n_u64(vbicq_s8(vaddq_s64(v189, v144), v189), 0x38uLL)))), v145));
            if (v155 != 32)
            {
              v191 = vaddq_s64(v157, xmmword_273BB9C40);
              v192 = vaddq_s64(v157, xmmword_273BB9C30);
              v193 = vaddq_s64(v157, xmmword_273BB9C20);
              v194 = vaddq_s64(v157, xmmword_273BB9C10);
              v195 = vaddq_s64(v157, xmmword_273BB9C00);
              v196 = vaddq_s64(v157, xmmword_273BB9BF0);
              v197 = vaddq_s64(v157, xmmword_273BB9BE0);
              v198 = vaddq_s64(v157, xmmword_273BB9BD0);
              v199 = veorq_s8(v198, v154);
              v200 = veorq_s8(v197, v154);
              v201 = veorq_s8(v196, v154);
              v202 = veorq_s8(v195, v154);
              v203 = veorq_s8(v194, v154);
              v204 = veorq_s8(v193, v154);
              v205 = veorq_s8(v192, v154);
              v206 = veorq_s8(v191, v154);
              v186 = &v272[v148];
              v186[2] = vorrq_s8(vandq_s8(v186[2], vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v197, v154), v197), v200), v197)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v198, v154), v198), v199), v198))), vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v195, v154), v195), v202), v195)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v196, v154), v196), v201), v196)))), vuzp1q_s16(vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v193, v154), v193), v204), v193)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v194, v154), v194), v203), v194))), vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v191, v154), v191), v206), v191)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v192, v154), v192), v205), v192)))))), vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v200, v144), v200), 0x38uLL), vshrq_n_u64(vbicq_s8(vaddq_s64(v199, v144), v199), 0x38uLL)), vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v202, v144), v202), 0x38uLL), vshrq_n_u64(vbicq_s8(vaddq_s64(v201, v144), v201), 0x38uLL))), vuzp1q_s16(vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v204, v144), v204), 0x38uLL), vshrq_n_u64(vbicq_s8(vaddq_s64(v203, v144), v203), 0x38uLL)), vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v206, v144), v206), 0x38uLL), vshrq_n_u64(vbicq_s8(vaddq_s64(v205, v144), v205), 0x38uLL)))), v145));
              if (v155 != 48)
              {
                v207 = vaddq_s64(v157, xmmword_273BB9CC0);
                v208 = vaddq_s64(v157, xmmword_273BB9CB0);
                v209 = vaddq_s64(v157, xmmword_273BB9CA0);
                v210 = vaddq_s64(v157, xmmword_273BB9C90);
                v211 = vaddq_s64(v157, xmmword_273BB9C80);
                v212 = vaddq_s64(v157, xmmword_273BB9C70);
                v213 = vaddq_s64(v157, xmmword_273BB9C60);
                v214 = vaddq_s64(v157, xmmword_273BB9C50);
                v215 = veorq_s8(v214, v154);
                v216 = veorq_s8(v213, v154);
                v217 = veorq_s8(v212, v154);
                v218 = veorq_s8(v211, v154);
                v219 = veorq_s8(v210, v154);
                v220 = veorq_s8(v209, v154);
                v221 = veorq_s8(v208, v154);
                v222 = veorq_s8(v207, v154);
                *&v272[v148 + 48] = vorrq_s8(vandq_s8(*&v272[v148 + 48], vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v213, v154), v213), v216), v213)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v214, v154), v214), v215), v214))), vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v211, v154), v211), v218), v211)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v212, v154), v212), v217), v212)))), vuzp1q_s16(vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v209, v154), v209), v220), v209)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v210, v154), v210), v219), v210))), vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v207, v154), v207), v222), v207)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v208, v154), v208), v221), v208)))))), vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v216, v144), v216), 0x38uLL), vshrq_n_u64(vbicq_s8(vaddq_s64(v215, v144), v215), 0x38uLL)), vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v218, v144), v218), 0x38uLL), vshrq_n_u64(vbicq_s8(vaddq_s64(v217, v144), v217), 0x38uLL))), vuzp1q_s16(vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v220, v144), v220), 0x38uLL), vshrq_n_u64(vbicq_s8(vaddq_s64(v219, v144), v219), 0x38uLL)), vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v222, v144), v222), 0x38uLL), vshrq_n_u64(vbicq_s8(vaddq_s64(v221, v144), v221), 0x38uLL)))), v145));
              }
            }
          }

          if (v152 == v155)
          {
            goto LABEL_61;
          }

          if ((v152 & 0xC) != 0)
          {
            v156 = v148 + v155;
LABEL_83:
            v223 = vdupq_n_s64(v156);
            v151 = v148 + (v152 & 0x7C);
            v224 = vaddq_s64(v223, xmmword_273B92120);
            v225 = vaddq_s64(v223, xmmword_273B92130);
            v226 = v155 - (v152 & 0x7C);
            v227 = &v272[v148 + v155];
            do
            {
              v228 = vaddq_s64(v225, v153);
              v229 = vaddq_s64(v224, v153);
              v230 = veorq_s8(v229, v154);
              v231 = veorq_s8(v228, v154);
              *v228.i8 = vmovn_s32(vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v228, v154), v228), v231), v228)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v229, v154), v229), v230), v229))));
              v232 = vshrq_n_u64(vbicq_s8(vaddq_s64(v230, v144), v230), 0x38uLL);
              *v229.i8 = vmovn_s32(vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v231, v144), v231), 0x38uLL), v232));
              v232.i32[0] = *v227;
              *v227 = vuzp1_s8(vorr_s8(vand_s8(*&vmovl_u8(*v232.i8), *v228.i8), (v229.i64[0] & 0xFF80FF80FF80FF80)), *v153.i8).u32[0];
              v227 += 4;
              v224 = vaddq_s64(v224, v249);
              v225 = vaddq_s64(v225, v249);
              v226 += 4;
            }

            while (v226);
            if (v152 == (v152 & 0x7C))
            {
              goto LABEL_61;
            }
          }

          else
          {
            v151 = v148 + v155;
          }
        }

        v233 = v151 - 64;
        v234 = &v272[v151];
        v235 = v151 + v139 - v148;
        do
        {
          *v234 = *v234 & ((((v235 - v257) ^ v235 | v235 ^ v257) ^ v235) >> 63) | ((((v235 ^ v257) - 1) & ~(v235 ^ v257)) >> 56) & 0x80;
          ++v234;
          ++v235;
          v133 = __CFADD__(v233++, 1);
        }

        while (!v133);
      }

LABEL_61:
      v146 = (((v140 ^ v260) - 1) & v143) >> 63;
      BYTE12(v275) |= v146 & HIBYTE(v142);
      BYTE13(v275) |= v146 & BYTE2(v142);
      BYTE14(v275) |= v146 & BYTE1(v142);
      HIBYTE(v275) |= v146 & v142;
      sha256_block_data_order(v267, v272, 1);
      v145.i64[0] = 0x8080808080808080;
      v145.i64[1] = 0x8080808080808080;
      v144.i64[0] = -1;
      v144.i64[1] = -1;
      v147 = vdupq_n_s32(v146);
      v262 = vorrq_s8(vandq_s8(*v268, v147), v262);
      v264 = vorrq_s8(vandq_s8(*v267, v147), v264);
      v139 = v139 - v148 + 64;
      if (++v140 == v258)
      {
        v265 = vrev32q_s8(v264);
        v266 = vrev32q_s8(v262);
        memset(&v268[16], 0, 72);
        *v267 = xmmword_273BA6FA0;
        *v268 = xmmword_273BA6FB0;
        v237.i64[0] = 0x6A6A6A6A6A6A6A6ALL;
        v237.i64[1] = 0x6A6A6A6A6A6A6A6ALL;
        __dst = veorq_s8(__dst, v237);
        v270 = veorq_s8(v270, v237);
        v271[0] = veorq_s8(v271[0], v237);
        v271[1] = veorq_s8(v271[1], v237);
        *&v268[16] = vadd_s32(0, 512);
        *&v268[88] = 0x2000000000;
        sha256_block_data_order(v267, &__dst, 1);
        BCM_sha256_update(v267, &v265, 0x20uLL);
        v240 = *&v268[92];
        if (*&v268[92] <= 0x20u)
        {
          v241 = *&v268[88];
          v268[*&v268[88] + 24] = 0x80;
          v242 = v241 + 1;
          if (v241 < 0x38)
          {
            if (v241 != 55)
            {
              goto LABEL_107;
            }
          }

          else
          {
            if (v241 != 63)
            {
              bzero(&v268[v242 + 24], 63 - v241);
            }

            sha256_block_data_order(v267, &v268[24], 1);
            v242 = 0;
LABEL_107:
            bzero(&v268[v242 + 24], 56 - v242);
          }

          *&v268[80] = vrev64_s32(vrev32_s8(*&v268[16]));
          sha256_block_data_order(v267, &v268[24], 1);
          memset(&v268[24], 0, 68);
          v243 = a2;
          if (v240 >= 4)
          {
            if (v240 == 32)
            {
              v244 = vrev32q_s8(*v268);
              *a2 = vrev32q_s8(*v267);
              a2[1] = v244;
            }

            else
            {
              v245 = v240 >> 2;
              v246 = v267;
              do
              {
                v247 = *v246++;
                v243->i32[0] = bswap32(v247);
                v243 = (v243 + 4);
                --v245;
              }

              while (v245);
            }
          }
        }

        *a3 = 32;
        return 1;
      }
    }
  }

  if (*a1 != 64)
  {
    v19 = 0;
    *a3 = 0;
    return v19;
  }

  if (__n > 0x40)
  {
    return 0;
  }

  v13 = 0uLL;
  memset(v271, 0, sizeof(v271));
  __dst = 0u;
  v270 = 0u;
  v14.i64[0] = 0x3636363636363636;
  v14.i64[1] = 0x3636363636363636;
  if (__n)
  {
    memcpy(&__dst, __src, __n);
    v14.i64[0] = 0x3636363636363636;
    v14.i64[1] = 0x3636363636363636;
    v15.i64[0] = 0x3636363636363636;
    v15.i64[1] = 0x3636363636363636;
    v16 = veorq_s8(__dst, v15);
    v17 = veorq_s8(v270, v15);
    v13 = 0uLL;
    v18 = v271[0].i8[0] ^ 0x36;
  }

  else
  {
    v18 = 54;
    v16.i64[0] = 0x3636363636363636;
    v16.i64[1] = 0x3636363636363636;
    v17.i64[0] = 0x3636363636363636;
    v17.i64[1] = 0x3636363636363636;
  }

  __dst = v16;
  v270 = v17;
  v271[0].i8[0] = v18;
  *(v271 + 1) = veorq_s8(*(v271 + 1), v14);
  v30 = veor_s8(*&v271[1].i8[1], 0x3636363636363636);
  *&v271[1].i8[1] = v30;
  v30.i32[0] = *(&v271[1].i32[2] + 1);
  v31 = veor_s8(*&vmovl_u8(v30), 0x36003600360036);
  *(&v271[1].i32[2] + 1) = vuzp1_s8(v31, v31).u32[0];
  *(&v271[1].i16[6] + 1) ^= 0x3636u;
  v271[1].i8[15] ^= 0x36u;
  *&v268[76] = 0;
  *&v268[60] = v13;
  *&v268[44] = v13;
  *&v268[28] = v13;
  *&v268[12] = v13;
  *v267 = xmmword_273BA7120;
  *&v268[8] = 0;
  *v268 = 0x200C3D2E1F0;
  sha1_block_data_order(v267, &__dst, 1);
  BCM_sha1_update(v267, a4->i8, 0xDuLL);
  v32 = a7;
  if (a7 >= 0x114)
  {
    v33 = a7 - 276;
  }

  else
  {
    v33 = 0;
  }

  BCM_sha1_update(v267, a5->i8, v33);
  v19 = 0;
  v34 = v32 - v33;
  if ((v32 - v33) >> 61)
  {
    return v19;
  }

  if (*&v268[8])
  {
    return v19;
  }

  v19 = 0;
  if (__CFADD__(*&v268[4], 8 * v34) || (*&v268[4] + 8 * v34) >> 32)
  {
    return v19;
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  v254 = &a5->i8[v33];
  v38 = a6 - v33;
  v39 = (a6 - v33 + *&v268[76] + 72) >> 6;
  v259 = (v34 + *&v268[76] + 72) >> 6;
  v261 = v39 - 1;
  v40 = *&v268[4] + 8 * (a6 - v33);
  v256 = v38;
  v274 = 0u;
  v275 = 0u;
  *v272 = 0u;
  v273 = 0u;
  v263 = 0u;
  v41 = -v39;
  v42.i64[0] = -1;
  v42.i64[1] = -1;
  v248 = vdupq_n_s64(4uLL);
  v43.i64[0] = 0x8080808080808080;
  v43.i64[1] = 0x8080808080808080;
  do
  {
    if (v37 || (v45 = *&v268[76], !*&v268[76]))
    {
      v45 = 0;
      v46 = v34 - v36;
      if (v34 <= v36)
      {
        goto LABEL_32;
      }
    }

    else
    {
      memcpy(v272, &v268[12], *&v268[76]);
      v43.i64[0] = 0x8080808080808080;
      v43.i64[1] = 0x8080808080808080;
      v42.i64[0] = -1;
      v42.i64[1] = -1;
      v46 = v34 - v36;
      if (v34 <= v36)
      {
        goto LABEL_32;
      }
    }

    if (64 - v45 >= v46)
    {
      v47 = v46;
    }

    else
    {
      v47 = 64 - v45;
    }

    if (v47)
    {
      memcpy(&v272[v45], &v254[v36], v47);
      v43.i64[0] = 0x8080808080808080;
      v43.i64[1] = 0x8080808080808080;
      v42.i64[0] = -1;
      v42.i64[1] = -1;
    }

LABEL_32:
    if (v45 > 0x3F)
    {
      goto LABEL_21;
    }

    v48 = v45;
    if (v45 > 0x3C)
    {
      goto LABEL_48;
    }

    v49 = 64 - v45;
    v50 = vdupq_n_s64(v36 - v45);
    v51 = vdupq_n_s64(v256);
    if (v45 <= 0x30)
    {
      v54 = vaddq_s64(vdupq_n_s64(v45), v50);
      v55 = vaddq_s64(v54, xmmword_273B92120);
      v56 = vaddq_s64(v54, xmmword_273B92130);
      v57 = vaddq_s64(v54, xmmword_273BB9B30);
      v58 = vaddq_s64(v54, xmmword_273BB9B40);
      v59 = vaddq_s64(v54, xmmword_273BB9B10);
      v60 = vaddq_s64(v54, xmmword_273BB9B20);
      v61 = vaddq_s64(v54, xmmword_273BB9AF0);
      v62 = vaddq_s64(v54, xmmword_273BB9B00);
      v63 = veorq_s8(v62, v51);
      v64 = veorq_s8(v61, v51);
      v65 = veorq_s8(v60, v51);
      v66 = veorq_s8(v59, v51);
      v67 = veorq_s8(v58, v51);
      v68 = veorq_s8(v57, v51);
      v69 = veorq_s8(v56, v51);
      v70 = veorq_s8(v55, v51);
      *&v272[v45] = vorrq_s8(vandq_s8(*&v272[v45], vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v56, v51), v56), v69), v56)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v55, v51), v55), v70), v55))), vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v58, v51), v58), v67), v58)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v57, v51), v57), v68), v57)))), vuzp1q_s16(vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v60, v51), v60), v65), v60)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v59, v51), v59), v66), v59))), vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v62, v51), v62), v63), v62)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v61, v51), v61), v64), v61)))))), vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v69, v42), v69), 0x38uLL), vshrq_n_u64(vbicq_s8(vaddq_s64(v70, v42), v70), 0x38uLL)), vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v67, v42), v67), 0x38uLL), vshrq_n_u64(vbicq_s8(vaddq_s64(v68, v42), v68), 0x38uLL))), vuzp1q_s16(vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v65, v42), v65), 0x38uLL), vshrq_n_u64(vbicq_s8(vaddq_s64(v66, v42), v66), 0x38uLL)), vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v63, v42), v63), 0x38uLL), vshrq_n_u64(vbicq_s8(vaddq_s64(v64, v42), v64), 0x38uLL)))), v43));
      v52 = v49 & 0x70;
      if (v52 != 16)
      {
        v71 = vaddq_s64(v54, xmmword_273BB9BC0);
        v72 = vaddq_s64(v54, xmmword_273BB9BB0);
        v73 = vaddq_s64(v54, xmmword_273BB9BA0);
        v74 = vaddq_s64(v54, xmmword_273BB9B90);
        v75 = vaddq_s64(v54, xmmword_273BB9B80);
        v76 = vaddq_s64(v54, xmmword_273BB9B70);
        v77 = vaddq_s64(v54, xmmword_273BB9B60);
        v78 = vaddq_s64(v54, xmmword_273BB9B50);
        v79 = veorq_s8(v78, v51);
        v80 = veorq_s8(v77, v51);
        v81 = veorq_s8(v76, v51);
        v82 = veorq_s8(v75, v51);
        v84 = veorq_s8(v74, v51);
        v85 = veorq_s8(v73, v51);
        v86 = veorq_s8(v72, v51);
        v87 = veorq_s8(v71, v51);
        *&v272[v45 + 16] = vorrq_s8(vandq_s8(*&v272[v45 + 16], vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v77, v51), v77), v80), v77)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v78, v51), v78), v79), v78))), vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v75, v51), v75), v82), v75)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v76, v51), v76), v81), v76)))), vuzp1q_s16(vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v73, v51), v73), v85), v73)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v74, v51), v74), v84), v74))), vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v71, v51), v71), v87), v71)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v72, v51), v72), v86), v72)))))), vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v80, v42), v80), 0x38uLL), vshrq_n_u64(vbicq_s8(vaddq_s64(v79, v42), v79), 0x38uLL)), vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v82, v42), v82), 0x38uLL), vshrq_n_u64(vbicq_s8(vaddq_s64(v81, v42), v81), 0x38uLL))), vuzp1q_s16(vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v85, v42), v85), 0x38uLL), vshrq_n_u64(vbicq_s8(vaddq_s64(v84, v42), v84), 0x38uLL)), vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v87, v42), v87), 0x38uLL), vshrq_n_u64(vbicq_s8(vaddq_s64(v86, v42), v86), 0x38uLL)))), v43));
        if (v52 != 32)
        {
          v88 = vaddq_s64(v54, xmmword_273BB9C40);
          v89 = vaddq_s64(v54, xmmword_273BB9C30);
          v90 = vaddq_s64(v54, xmmword_273BB9C20);
          v91 = vaddq_s64(v54, xmmword_273BB9C10);
          v92 = vaddq_s64(v54, xmmword_273BB9C00);
          v93 = vaddq_s64(v54, xmmword_273BB9BF0);
          v94 = vaddq_s64(v54, xmmword_273BB9BE0);
          v95 = vaddq_s64(v54, xmmword_273BB9BD0);
          v96 = veorq_s8(v95, v51);
          v97 = veorq_s8(v94, v51);
          v98 = veorq_s8(v93, v51);
          v99 = veorq_s8(v92, v51);
          v100 = veorq_s8(v91, v51);
          v101 = veorq_s8(v90, v51);
          v102 = veorq_s8(v89, v51);
          v103 = veorq_s8(v88, v51);
          v83 = &v272[v45];
          v83[2] = vorrq_s8(vandq_s8(v83[2], vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v94, v51), v94), v97), v94)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v95, v51), v95), v96), v95))), vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v92, v51), v92), v99), v92)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v93, v51), v93), v98), v93)))), vuzp1q_s16(vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v90, v51), v90), v101), v90)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v91, v51), v91), v100), v91))), vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v88, v51), v88), v103), v88)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v89, v51), v89), v102), v89)))))), vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v97, v42), v97), 0x38uLL), vshrq_n_u64(vbicq_s8(vaddq_s64(v96, v42), v96), 0x38uLL)), vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v99, v42), v99), 0x38uLL), vshrq_n_u64(vbicq_s8(vaddq_s64(v98, v42), v98), 0x38uLL))), vuzp1q_s16(vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v101, v42), v101), 0x38uLL), vshrq_n_u64(vbicq_s8(vaddq_s64(v100, v42), v100), 0x38uLL)), vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v103, v42), v103), 0x38uLL), vshrq_n_u64(vbicq_s8(vaddq_s64(v102, v42), v102), 0x38uLL)))), v43));
          if (v52 != 48)
          {
            v104 = vaddq_s64(v54, xmmword_273BB9CC0);
            v105 = vaddq_s64(v54, xmmword_273BB9CB0);
            v106 = vaddq_s64(v54, xmmword_273BB9CA0);
            v107 = vaddq_s64(v54, xmmword_273BB9C90);
            v108 = vaddq_s64(v54, xmmword_273BB9C80);
            v109 = vaddq_s64(v54, xmmword_273BB9C70);
            v110 = vaddq_s64(v54, xmmword_273BB9C60);
            v111 = vaddq_s64(v54, xmmword_273BB9C50);
            v112 = veorq_s8(v111, v51);
            v113 = veorq_s8(v110, v51);
            v114 = veorq_s8(v109, v51);
            v115 = veorq_s8(v108, v51);
            v116 = veorq_s8(v107, v51);
            v117 = veorq_s8(v106, v51);
            v118 = veorq_s8(v105, v51);
            v119 = veorq_s8(v104, v51);
            *&v272[v45 + 48] = vorrq_s8(vandq_s8(*&v272[v45 + 48], vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v110, v51), v110), v113), v110)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v111, v51), v111), v112), v111))), vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v108, v51), v108), v115), v108)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v109, v51), v109), v114), v109)))), vuzp1q_s16(vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v106, v51), v106), v117), v106)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v107, v51), v107), v116), v107))), vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v104, v51), v104), v119), v104)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v105, v51), v105), v118), v105)))))), vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v113, v42), v113), 0x38uLL), vshrq_n_u64(vbicq_s8(vaddq_s64(v112, v42), v112), 0x38uLL)), vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v115, v42), v115), 0x38uLL), vshrq_n_u64(vbicq_s8(vaddq_s64(v114, v42), v114), 0x38uLL))), vuzp1q_s16(vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v117, v42), v117), 0x38uLL), vshrq_n_u64(vbicq_s8(vaddq_s64(v116, v42), v116), 0x38uLL)), vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v119, v42), v119), 0x38uLL), vshrq_n_u64(vbicq_s8(vaddq_s64(v118, v42), v118), 0x38uLL)))), v43));
          }
        }
      }

      if (v49 == v52)
      {
        goto LABEL_21;
      }

      if ((v49 & 0xC) == 0)
      {
        v48 = v45 + v52;
LABEL_48:
        v130 = v48 - 64;
        v131 = &v272[v48];
        v132 = v48 + v36 - v45;
        do
        {
          *v131 = *v131 & ((((v132 - v256) ^ v132 | v132 ^ v256) ^ v132) >> 63) | ((((v132 ^ v256) - 1) & ~(v132 ^ v256)) >> 56) & 0x80;
          ++v131;
          ++v132;
          v133 = __CFADD__(v130++, 1);
        }

        while (!v133);
        goto LABEL_21;
      }

      v53 = v45 + v52;
    }

    else
    {
      v52 = 0;
      v53 = v45;
    }

    v120 = vdupq_n_s64(v53);
    v48 = v45 + (v49 & 0x7C);
    v121 = vaddq_s64(v120, xmmword_273B92120);
    v122 = vaddq_s64(v120, xmmword_273B92130);
    v123 = v52 - (v49 & 0x7C);
    v124 = &v272[v45 + v52];
    do
    {
      v125 = vaddq_s64(v122, v50);
      v126 = vaddq_s64(v121, v50);
      v127 = veorq_s8(v126, v51);
      v128 = veorq_s8(v125, v51);
      *v125.i8 = vmovn_s32(vuzp1q_s32(vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v125, v51), v125), v128), v125)), vcltzq_s64(veorq_s8(vorrq_s8(veorq_s8(vsubq_s64(v126, v51), v126), v127), v126))));
      v129 = vshrq_n_u64(vbicq_s8(vaddq_s64(v127, v42), v127), 0x38uLL);
      *v126.i8 = vmovn_s32(vuzp1q_s32(vshrq_n_u64(vbicq_s8(vaddq_s64(v128, v42), v128), 0x38uLL), v129));
      v129.i32[0] = *v124;
      *v124 = vuzp1_s8(vorr_s8(vand_s8(*&vmovl_u8(*v129.i8), *v125.i8), (v126.i64[0] & 0xFF80FF80FF80FF80)), *v50.i8).u32[0];
      v124 += 4;
      v121 = vaddq_s64(v121, v248);
      v122 = vaddq_s64(v122, v248);
      v123 += 4;
    }

    while (v123);
    if (v49 != (v49 & 0x7C))
    {
      goto LABEL_48;
    }

LABEL_21:
    v44 = (((v37 ^ v261) - 1) & v41) >> 63;
    BYTE12(v275) |= v44 & HIBYTE(v40);
    BYTE13(v275) |= v44 & BYTE2(v40);
    BYTE14(v275) |= v44 & BYTE1(v40);
    HIBYTE(v275) |= v44 & v40;
    sha1_block_data_order(v267, v272, 1);
    v43.i64[0] = 0x8080808080808080;
    v43.i64[1] = 0x8080808080808080;
    v42.i64[0] = -1;
    v42.i64[1] = -1;
    v263 = vorrq_s8(vandq_s8(*v267, vdupq_n_s32(v44)), v263);
    v35 |= *v268 & v44;
    v36 = v36 - v45 + 64;
    ++v37;
  }

  while (v37 != v259);
  v265 = vrev32q_s8(v263);
  memset(&v268[4], 0, 76);
  *v267 = xmmword_273BA7120;
  v236.i64[0] = 0x6A6A6A6A6A6A6A6ALL;
  v236.i64[1] = 0x6A6A6A6A6A6A6A6ALL;
  __dst = veorq_s8(__dst, v236);
  v270 = veorq_s8(v270, v236);
  v266.i32[0] = bswap32(v35);
  *v268 = -1009589776;
  v271[0] = veorq_s8(v271[0], v236);
  v271[1] = veorq_s8(v271[1], v236);
  *&v268[4] = vadd_s32(0, 512);
  sha1_block_data_order(v267, &__dst, 1);
  BCM_sha1_update(v267, v265.i8, 0x14uLL);
  v238 = *&v268[76];
  v268[*&v268[76] + 12] = 0x80;
  v239 = v238 + 1;
  if (v238 < 0x38)
  {
    if (v238 != 55)
    {
      goto LABEL_99;
    }
  }

  else
  {
    if (v238 != 63)
    {
      bzero(&v268[v239 + 12], 63 - v238);
    }

    sha1_block_data_order(v267, &v268[12], 1);
    v239 = 0;
LABEL_99:
    bzero(&v268[v239 + 12], 56 - v239);
  }

  *&v268[68] = vrev64_s32(vrev32_s8(*&v268[4]));
  v19 = 1;
  sha1_block_data_order(v267, &v268[12], 1);
  *a2 = vrev32q_s8(*v267);
  a2[1].i32[0] = bswap32(*v268);
  *a3 = 20;
  return v19;
}

void bssl::tls_on_handshake_complete(bssl *this, ssl_st *a2)
{
  v2 = *(this + 6);
  v3 = *(v2 + 224);
  if (v3 && !*v3)
  {
    *(v2 + 224) = 0;
    v4 = v3[1];
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

    v9 = *(v3 - 1);
    v8 = v3 - 1;
    v10 = v9 + 8;
    if (v9 != -8)
    {
      bzero(v8, v10);
    }

    free(v8);
  }
}

uint64_t bssl::tls_set_read_state(uint64_t result, uint64_t a2, void **a3)
{
  v3 = result;
  v4 = *(result + 48);
  v5 = *(v4 + 224);
  if ((*(v4 + 220) & 8) == 0)
  {
    if (!v5 || !*v5)
    {
      goto LABEL_13;
    }

LABEL_11:
    ERR_put_error(16, 0, 255, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls_method.cc", 48);
    bssl::ssl_send_alert(v3, 2, 10);
    return 0;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v5;
  v7 = *v5 - 4;
  if (*v5 < 4)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v8 = (*(v5[1] + 1) << 16) | (*(v5[1] + 2) << 8) | *(v5[1] + 3);
  if (v7 < v8 || v6 > (v8 + 4))
  {
    goto LABEL_11;
  }

LABEL_13:
  v9 = *(result + 152);
  if (v9)
  {
    v10 = *(v4 + 280);
    if (!v10 || (*(v10 + 1618) & 0x10) == 0)
    {
      v11 = a2;
      v12 = a3;
      result = (*v9)(result, a2, **a3);
      LODWORD(a2) = v11;
      a3 = v12;
      if (!result)
      {
        return result;
      }
    }

    if (a2 == 1)
    {
      return 1;
    }

    v4 = *(v3 + 6);
    *(v4 + 200) = a2;
  }

  *v4 = 0;
  v13 = *a3;
  *a3 = 0;
  v14 = *(v4 + 264);
  *(v4 + 264) = v13;
  if (!v14)
  {
    return 1;
  }

  if (!*(v14 + 596) || v14 + 583 < -*(v14 + 596))
  {
    v15 = *(v14 + 8);
    *(v14 + 596) = 0;
    if (v15)
    {
      (*(v15 + 24))(v14 + 8);
      *(v14 + 8) = 0;
    }

    v17 = *(v14 - 8);
    v16 = (v14 - 8);
    v18 = v17 + 8;
    if (v17 != -8)
    {
      bzero(v16, v18);
    }

    free(v16);
    return 1;
  }

  __break(1u);
  return result;
}

uint64_t bssl::tls_set_write_state(bssl *a1, ssl_st *a2, void **a3, uint64_t a4, uint64_t a5)
{
  result = bssl::tls_flush_pending_hs_data(a1, a2);
  if (result)
  {
    v11 = *(a1 + 19);
    v12 = *(a1 + 6);
    if (!v11)
    {
      goto LABEL_8;
    }

    v13 = *(v12 + 280);
    if (v13 && (*(v13 + 1618) & 0x10) != 0 || (result = (*(v11 + 8))(a1, a2, **a3, a4, a5), result))
    {
      if (a2 == 1)
      {
        return 1;
      }

      v12 = *(a1 + 6);
      *(v12 + 204) = a2;
LABEL_8:
      *(v12 + 8) = 0;
      v14 = *a3;
      *a3 = 0;
      v15 = *(v12 + 272);
      *(v12 + 272) = v14;
      if (v15)
      {
        if (*(v15 + 596) && v15 + 583 >= -*(v15 + 596))
        {
          __break(1u);
          return result;
        }

        v16 = *(v15 + 8);
        *(v15 + 596) = 0;
        if (v16)
        {
          (*(v16 + 24))(v15 + 8);
          *(v15 + 8) = 0;
        }

        v18 = *(v15 - 8);
        v17 = (v15 - 8);
        v19 = v18 + 8;
        if (v18 != -8)
        {
          bzero(v17, v19);
        }

        free(v17);
      }

      return 1;
    }
  }

  return result;
}

uint64_t bssl::tls_open_record(bssl *a1, _BYTE *a2, uint64_t a3, uint64_t *a4, ssl_st *a5, unsigned __int8 *a6, unint64_t a7)
{
  *a4 = 0;
  if (*(*(a1 + 6) + 172) == 1)
  {
    return 3;
  }

  if (!bssl::tls_can_accept_handshake_data(a1, a5, a3))
  {
    return 4;
  }

  if (a7 <= 2 || a7 - 3 <= 1)
  {
    v16 = 5;
LABEL_7:
    *a4 = v16;
    return 2;
  }

  v17 = a6;
  v18 = *a6;
  v19 = a6[1];
  v20 = a6[2] | (v19 << 8);
  v21 = *(a1 + 6);
  if (!**(v21 + 264))
  {
    v27 = a3;
    if (v19 == 3)
    {
      goto LABEL_21;
    }

LABEL_25:
    ERR_put_error(16, 0, 247, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls_record.cc", 127);
    v31 = 70;
    goto LABEL_26;
  }

  v22 = *(v21 + 208);
  v23 = v22 - 769;
  if (v22 <= 0x303)
  {
    v24 = *(v21 + 208);
  }

  else
  {
    v24 = 771;
  }

  if (v22 == 65276)
  {
    v25 = 771;
  }

  else
  {
    v25 = *(v21 + 208);
  }

  if (*(v21 + 208))
  {
    v26 = v25;
  }

  else
  {
    v26 = 769;
  }

  if (v23 < 4)
  {
    v26 = v24;
  }

  v27 = a3;
  if (v20 != v26)
  {
    goto LABEL_25;
  }

LABEL_21:
  v28 = __rev16(*(a6 + 3));
  if (v28 >= 0x4141)
  {
    v29 = 146;
    v30 = 134;
LABEL_23:
    ERR_put_error(16, 0, v29, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls_record.cc", v30);
    v31 = 22;
LABEL_26:
    LOBYTE(a5->version) = v31;
    return 4;
  }

  v32 = v28 - (a7 - 5);
  if (v28 > a7 - 5)
  {
    v16 = v28 + 5;
    goto LABEL_7;
  }

  v33 = *(a1 + 8);
  if (v33)
  {
    v63 = *a6;
    v33(0, 0, 256, a6, 5, a1, *(a1 + 9));
    v32 = v28 - (a7 - 5);
    v18 = v63;
    v17 = a6;
    v27 = a3;
    v21 = *(a1 + 6);
  }

  v34 = (v32 + a7);
  *a4 = v34;
  if (!*(v21 + 208) || (v35 = *(v21 + 280)) == 0 || (v36 = *(v35 + 1616), (v36 & 0x4000) != 0) || (v64 = v18, v62 = v36, v37 = bssl::ssl_protocol_version(a1, v27), v18 = v64, v17 = a6, v27 = a3, v37 < 0x304) || (v62 & 8) != 0 || v64 != 20 || v28 != 1 || a6[5] != 1)
  {
    if ((*(v21 + 220) & 1) != 0 && !**(v21 + 264) && v18 == 23)
    {
      v41 = v21;
      v42 = a5;
      v43 = v34;
LABEL_62:

      return bssl::skip_early_data(v41, v42, v43);
    }

    v44 = *v21;
    if (*v21 == -1)
    {
      ERR_put_error(16, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls_record.cc", 176);
      v31 = 80;
      goto LABEL_26;
    }

    v45 = *(v21 + 264);
    *&v61 = a6 + 5;
    *(&v61 + 1) = v28;
    v46 = v18;
    v47 = bssl::SSLAEADContext::Open(v45, v27, v18, v20, v44, v17, 5, v15, v61);
    v49 = *(a1 + 6);
    v50 = *(v49 + 220);
    if (!v47)
    {
      if ((v50 & 1) == 0 || !**(v49 + 264))
      {
        ERR_put_error(16, 0, 139, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls_record.cc", 190);
        v31 = 20;
        goto LABEL_26;
      }

      ERR_clear_error();
      v43 = *a4;
      v41 = *(a1 + 6);
      v42 = a5;
      goto LABEL_62;
    }

    *(v49 + 220) = v50 & 0xFFFE;
    v51 = *(a1 + 6);
    ++*v51;
    if (**(v51 + 264))
    {
      v52 = bssl::ssl_protocol_version(a1, v48);
      v53 = 0x4000;
      if (v52 > 0x303)
      {
        v53 = 16385;
      }

      v54 = *(a3 + 8);
      if (v54 <= v53)
      {
        if (v52 >= 0x304)
        {
          if (v46 == 23)
          {
            v55 = v54 - 1;
            while (v55 != -1)
            {
              v46 = *(*a3 + v55);
              *(a3 + 8) = v55--;
              if (v46)
              {
                v51 = *(a1 + 6);
                v54 = v55 + 1;
                goto LABEL_68;
              }
            }

            ERR_put_error(16, 0, 139, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls_record.cc", 222);
            v31 = 51;
          }

          else
          {
            ERR_put_error(16, 0, 251, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls_record.cc", 215);
            v31 = 50;
          }

          goto LABEL_26;
        }

LABEL_68:
        v56 = a2;
        if (v54)
        {
          *(v51 + 212) = 0;
          v57 = a1;
          v58 = v46;
        }

        else
        {
          v59 = ++*(v51 + 212);
          v57 = a1;
          v58 = v46;
          if (v59 >= 0x21)
          {
            v39 = 219;
            v40 = 235;
            goto LABEL_79;
          }
        }

        if (v58 != 22)
        {
          if (v58 == 21)
          {
            v60 = *a3;

            return bssl::ssl_process_alert(v57, a5, v60, v54);
          }

          if (bssl::tls_has_unprocessed_handshake_data(v57, v48))
          {
            v39 = 225;
            v40 = 252;
            goto LABEL_79;
          }

          v51 = *(a1 + 6);
          v56 = a2;
          LOBYTE(v58) = v46;
        }

        result = 0;
        *(v51 + 213) = 0;
        *v56 = v58;
        return result;
      }
    }

    else
    {
      v54 = *(a3 + 8);
      if (v54 <= 0x4000)
      {
        goto LABEL_68;
      }
    }

    v29 = 136;
    v30 = 207;
    goto LABEL_23;
  }

  v38 = ++*(v21 + 212);
  if (v38 >= 0x21)
  {
    v39 = 219;
    v40 = 159;
LABEL_79:
    ERR_put_error(16, 0, v39, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls_record.cc", v40);
    v31 = 10;
    goto LABEL_26;
  }

  return 1;
}

uint64_t bssl::skip_early_data(bssl *this, ssl_st *a2, unsigned __int8 *a3)
{
  v4 = *(this + 105) + a3;
  *(this + 105) = v4;
  if (a3 > v4)
  {
    *(this + 105) = 16385;
LABEL_4:
    ERR_put_error(16, 0, 270, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls_record.cc", 70);
    LOBYTE(a2->version) = 10;
    return 4;
  }

  if (v4 > 0x4000u)
  {
    goto LABEL_4;
  }

  return 1;
}

uint64_t bssl::ssl_process_alert(uint64_t a1, _BYTE *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a4 != 2)
  {
    *a2 = 50;
    v11 = 102;
    v12 = 445;
LABEL_32:
    ERR_put_error(16, 0, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls_record.cc", v12);
    return 4;
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    v8 = *(a1 + 48);
    v9 = *(v8 + 280);
    if (v9 && (*(v9 + 1617) & 4) != 0 && (*(a1 + 164) & 1) == 0)
    {
      LOWORD(v10) = *(*(v9 + 1560) + 4);
    }

    else
    {
      v10 = *(v8 + 208);
      if (!v10)
      {
        if (**a1)
        {
          LOWORD(v10) = -259;
        }

        else
        {
          LOWORD(v10) = 771;
        }
      }
    }

    v7(0, v10, 21, a3, 2, a1, *(a1 + 72));
  }

  v13 = *a3;
  v14 = a3[1];
  v15 = *(a1 + 96);
  if (v15 || (v15 = *(*(a1 + 104) + 384)) != 0)
  {
    v15(a1, 16388, v14 | (v13 << 8));
  }

  if (v13 == 2)
  {
    ERR_put_error(16, 0, v14 + 1000, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls_record.cc", 486);
    ERR_add_error_dataf("SSL alert number %d", v19, v20, v21, v22, v23, v24, v25, v14);
    *a2 = 0;
    return 4;
  }

  if (v13 != 1)
  {
    *a2 = 47;
    v11 = 227;
    v12 = 493;
    goto LABEL_32;
  }

  v16 = *(a1 + 48);
  if (!v14)
  {
    *(v16 + 172) = 1;
    return 3;
  }

  v17 = *(v16 + 208);
  if (*(v16 + 208))
  {
    v18 = *(v16 + 280);
    if (!v18 || (*(v18 + 1617) & 0x40) == 0)
    {
      if (v17 - 769 < 4)
      {
LABEL_25:
        if (v14 != 90 && v17 >= 0x304)
        {
          *a2 = 50;
          v11 = 102;
          v12 = 472;
          goto LABEL_32;
        }

        goto LABEL_30;
      }

      if (v17 == 65276)
      {
        v17 = 772;
        goto LABEL_25;
      }
    }
  }

LABEL_30:
  v27 = ++*(v16 + 213);
  if (v27 >= 5)
  {
    *a2 = 10;
    v11 = 220;
    v12 = 479;
    goto LABEL_32;
  }

  return 1;
}

BOOL bssl::tls_seal_record(bssl *this, ssl_st *a2, unsigned __int8 *a3, unint64_t *a4, unsigned __int8 *a5, char *a6, const unsigned __int8 *a7, int a8)
{
  if (a4 + a2 > a6 && &a7[a6] > a2)
  {
    v16 = 189;
    v17 = 410;
LABEL_57:
    ERR_put_error(16, 0, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls_record.cc", v17);
    return 0;
  }

  v10 = a5 == 23 && a7 > 1;
  v11 = *(this + 6);
  v12 = *(v11 + 272);
  if (!v10)
  {
    goto LABEL_24;
  }

  v14 = *v12;
  if (!*v12)
  {
    goto LABEL_24;
  }

  v15 = *(v11 + 208);
  if ((v15 - 769) >= 4)
  {
    if ((v15 - 65276) > 3 || v15 == 65278)
    {
      goto LABEL_22;
    }

LABEL_24:
    if (*(v12 + 598))
    {
      v19 = *(v12 + 597) + 5;
      v14 = *v12;
      if (*v12)
      {
LABEL_26:
        v15 = *(v11 + 208);
        goto LABEL_27;
      }
    }

    else
    {
      v19 = 5;
      v14 = *v12;
      if (*v12)
      {
        goto LABEL_26;
      }
    }

    v23 = 0;
    v24 = &a7[v19];
    if (__CFADD__(v19, a7))
    {
      goto LABEL_56;
    }

    goto LABEL_54;
  }

  if (v15 > 0x301)
  {
    goto LABEL_24;
  }

LABEL_22:
  if ((*(this + 133) & 1) == 0 || *(v14 + 32) == 4)
  {
    goto LABEL_24;
  }

  v46 = *(v14 + 28);
  if (v46 == 1)
  {
    v19 = 33;
  }

  else if (v46 == 4 || v46 == 2)
  {
    v19 = 41;
  }

  else
  {
    v19 = 9;
  }

LABEL_27:
  v20 = 0;
  if (v15 <= 65275)
  {
    v21 = v15;
    if ((v15 - 769) >= 4)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  switch(v15)
  {
    case 65276:
      v21 = 772;
      goto LABEL_29;
    case 65277:
      v21 = 771;
      goto LABEL_29;
    case 65279:
      v21 = 770;
LABEL_29:
      v20 = v21 > 0x303;
      break;
  }

LABEL_30:
  v22 = a7;
  if (!v10)
  {
    goto LABEL_49;
  }

  if ((v15 - 769) < 4)
  {
    v22 = a7;
    if (v15 > 0x301)
    {
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  v25 = (v15 - 65276) > 3 || v15 == 65278;
  v22 = a7;
  if (v25)
  {
LABEL_47:
    v22 = a7;
    if (*(this + 133))
    {
      v22 = &a7[-(*(v14 + 32) != 4)];
    }
  }

LABEL_49:
  v26 = *(v12[1] + 64);
  if (v26)
  {
    v27 = a2;
    v28 = a3;
    v29 = a6;
    v30 = a7;
    v31 = a5;
    v32 = a4;
    v23 = v26(v12 + 1, v22, v20);
    a4 = v32;
    a5 = v31;
    a7 = v30;
    a6 = v29;
    a2 = v27;
    a3 = v28;
    v24 = &v30[v19];
    if (__CFADD__(v19, v30))
    {
      goto LABEL_56;
    }
  }

  else
  {
    v23 = v20 + *(v12 + 576);
    v24 = &a7[v19];
    if (__CFADD__(v19, a7))
    {
LABEL_56:
      v16 = 200;
      v17 = 421;
      goto LABEL_57;
    }
  }

LABEL_54:
  v33 = &v24[v23];
  if (__CFADD__(v23, v24))
  {
    goto LABEL_56;
  }

  if (v33 > a4)
  {
    v16 = 121;
    v17 = 425;
    goto LABEL_57;
  }

  v35 = a3;
  v36 = a2 + v19;
  v37 = this;
  if (!v10 || (v38 = **(*(this + 6) + 272)) == 0 || (v39 = a2, v40 = a6, v41 = a7, v42 = a5, v43 = v36, v44 = bssl::ssl_protocol_version(this, a2), v36 = v43, a5 = v42, a7 = v41, a6 = v40, a2 = v39, v45 = v44, v37 = this, v45 > 0x301) || (*(this + 133) & 1) == 0 || *(v38 + 32) == 4)
  {
    if (!bssl::do_seal_record(v37, a2, v36, &a7[v36], a5, a6, a7, a8))
    {
      return 0;
    }

LABEL_68:
    *v35 = v33;
    return 1;
  }

  result = bssl::do_seal_record(this, v39, &v39->type + 1, &v39->type + 2, 0x17, v40, 1, a8);
  if (result)
  {
    v52 = 0;
    if ((bssl::SSLAEADContext::SuffixLen(*(*(this + 6) + 272), &v52, 1, 0) & 1) == 0)
    {
      return 0;
    }

    v49 = v52;
    result = bssl::do_seal_record(this, &v50, v43 + 1, &v41[v43], 0x17, v40 + 1, v41 - 1, v48);
    if (result)
    {
      *(&v39->type + v49 + 2) = v50;
      *v43 = v51;
      goto LABEL_68;
    }
  }

  return result;
}

uint64_t SSL_max_seal_overhead(uint64_t a1)
{
  if (**a1)
  {
    return bssl::dtls_max_seal_overhead(a1, *(*(a1 + 56) + 150));
  }

  v2 = *(a1 + 48);
  v3 = *(v2 + 272);
  if (*(v3 + 598))
  {
    v4 = *(v3 + 597);
    v5 = *v3;
    if (*v3)
    {
      goto LABEL_5;
    }

    return v4 + 5;
  }

  v4 = 0;
  v5 = *v3;
  if (!*v3)
  {
    return v4 + 5;
  }

LABEL_5:
  v6 = v4 + *(v3[1] + 2);
  v7 = v6 + 5;
  v8 = *(v2 + 208);
  if (v8 - 769 >= 4)
  {
    if (v8 != 65276)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v8 >= 0x304)
  {
LABEL_7:
    v7 = v6 + 6;
  }

LABEL_8:
  if (v8 - 769 >= 4)
  {
    v9 = v8 - 65276;
    if (v9 <= 3 && v9 != 2)
    {
      return v7;
    }
  }

  else if (v8 > 0x301)
  {
    return v7;
  }

  if ((*(a1 + 133) & 1) == 0)
  {
    return v7;
  }

  return v7 << (*(v5 + 32) != 4);
}

BOOL bssl::do_seal_record(bssl *this, ssl_st *a2, char *a3, char *a4, unsigned __int8 *a5, char *a6, const unsigned __int8 *a7, int a8)
{
  __len = a6;
  v10 = a5;
  HIBYTE(v37) = a5;
  v13 = *(this + 6);
  v14 = *(v13 + 272);
  if (!*v14)
  {
    v19 = 0;
    __src = 0;
    v22 = 0;
    if (*(v14 + 598))
    {
      goto LABEL_18;
    }

    goto LABEL_7;
  }

  v15 = *(v13 + 208);
  *&v37 = a6;
  v16 = a3;
  if (v15 - 769 >= 4)
  {
    if (v15 == 65276)
    {
LABEL_4:
      v17 = a4;
      __src = &v37 + 15;
      v10 = 23;
      v19 = 1;
      v20 = v14 + 8;
      v21 = *(*(v14 + 8) + 64);
      if (!v21)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if (v15 >= 0x304)
  {
    goto LABEL_4;
  }

  v17 = a4;
  v19 = 0;
  __src = 0;
  v20 = v14 + 8;
  v21 = *(*(v14 + 8) + 64);
  if (!v21)
  {
    goto LABEL_12;
  }

LABEL_11:
  v21(v20, a7, v19);
  if (!*v14)
  {
    v22 = v19;
    a4 = v17;
    a3 = v16;
    __len = v37;
    if (*(v14 + 598))
    {
      goto LABEL_18;
    }

    goto LABEL_7;
  }

LABEL_12:
  v24 = *(*v20 + 64);
  if (v24)
  {
    v22 = v24(v20, a7, v19);
    a4 = v17;
    a3 = v16;
    __len = v37;
    if (*(v14 + 598))
    {
      goto LABEL_18;
    }

LABEL_7:
    v23 = &a7[v22];
    if (&a7[v22] < a7)
    {
      goto LABEL_37;
    }

    goto LABEL_19;
  }

  v22 = v19 + *(v14 + 576);
  a4 = v17;
  a3 = v16;
  __len = v37;
  if ((*(v14 + 598) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_18:
  v23 = &a7[v22 + *(v14 + 597)];
  if (v23 < a7)
  {
LABEL_37:
    ERR_put_error(16, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_aead_ctx.cc", 156);
    v34 = 200;
    v35 = 278;
LABEL_39:
    ERR_put_error(16, 0, v34, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls_record.cc", v35);
    return 0;
  }

LABEL_19:
  if (v23 >= 0xFFFF)
  {
    goto LABEL_37;
  }

  LOBYTE(a2->version) = v10;
  v25 = *(*(this + 6) + 208);
  v26 = v25 - 769;
  if (v25 <= 0x303)
  {
    v27 = *(*(this + 6) + 208);
  }

  else
  {
    v27 = 771;
  }

  if (v25 == 65276)
  {
    v28 = 771;
  }

  else
  {
    v28 = *(*(this + 6) + 208);
  }

  if (*(*(this + 6) + 208))
  {
    v29 = v28;
  }

  else
  {
    v29 = 769;
  }

  if (v26 >= 4)
  {
    v30 = v29;
  }

  else
  {
    v30 = v27;
  }

  BYTE1(a2->version) = HIBYTE(v30);
  BYTE2(a2->version) = v30;
  HIBYTE(a2->version) = BYTE1(v23);
  LOBYTE(a2->type) = v23;
  v31 = *(*(this + 6) + 8);
  if (v31 == -1)
  {
    v34 = 69;
    v35 = 301;
    goto LABEL_39;
  }

  *&v36 = a2;
  *(&v36 + 1) = 5;
  result = bssl::SSLAEADContext::SealScatter(v14, &a2->type + 1, a3, a4, v10, v30, v31, a8, v36, __len, a7, __src, v19, v37);
  if (result)
  {
    ++*(*(this + 6) + 8);
    v33 = *(this + 8);
    if (v33)
    {
      v33(1, 0, 256, a2, 5, this, *(this + 9));
    }

    return 1;
  }

  return result;
}

uint64_t CBS_get_utf8(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = (*a1)++;
  a1[1] = v2 - 1;
  v4 = *v3;
  if ((*v3 & 0x80000000) == 0)
  {
LABEL_3:
    *a2 = v4;
    return 1;
  }

  if ((v4 & 0xE0) == 0xC0)
  {
    v6 = 0;
    v7 = 128;
    v8 = 31;
    if (v2 == 1)
    {
      return 0;
    }
  }

  else if ((v4 & 0xF0) == 0xE0)
  {
    v6 = 1;
    v7 = 2048;
    v8 = 15;
    if (v2 == 1)
    {
      return 0;
    }
  }

  else
  {
    if ((v4 & 0xF8) != 0xF0)
    {
      return 0;
    }

    v6 = 0;
    v7 = 0x10000;
    v8 = 7;
    if (v2 == 1)
    {
      return 0;
    }
  }

  *a1 = v3 + 2;
  a1[1] = v2 - 2;
  v9 = v3[1];
  if ((v9 & 0xC0) != 0x80)
  {
    return 0;
  }

  v10 = v8 & v4;
  v11 = v10 << 6;
  v12 = (v10 << 6) | v9 & 0x3F;
  if ((v4 & 0xE0) == 0xC0)
  {
    v4 = (v10 << 6) | v9 & 0x3F;
  }

  else
  {
    if (v2 == 2)
    {
      return 0;
    }

    *a1 = v3 + 3;
    a1[1] = v2 - 3;
    v16 = v3[2];
    if ((v16 & 0xC0) != 0x80)
    {
      return 0;
    }

    v11 = v12 << 6;
    v10 = (v12 << 6) | v16 & 0x3F;
    if (v6)
    {
      v4 = (v12 << 6) | v16 & 0x3F;
      LOWORD(v10) = v12;
    }

    else
    {
      if (v2 == 3)
      {
        return 0;
      }

      *a1 = v3 + 4;
      a1[1] = v2 - 4;
      v17 = v3[3];
      if ((v17 & 0xC0) != 0x80)
      {
        return 0;
      }

      v11 = v10 << 6;
      v4 = (v10 << 6) | v17 & 0x3F;
    }
  }

  result = 0;
  if ((v10 & 0x7FE0) != 0x360)
  {
    v13 = v4 - 64976 < 0x20 || HIWORD(v11) > 0x10u;
    v14 = v13 || (v4 & 0xFFFE) == 65534;
    if (!v14 && v4 >= v7)
    {
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t CBS_get_latin1(void *a1, _DWORD *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = (*a1)++;
  a1[1] = v2 - 1;
  *a2 = *v3;
  return 1;
}

uint64_t CBS_get_ucs2_be(unsigned __int8 **a1, int *a2)
{
  v2 = a1[1];
  v3 = v2 - 2;
  if (v2 < 2)
  {
    return 0;
  }

  result = 0;
  v6 = *a1;
  *a1 += 2;
  a1[1] = v3;
  v7 = *v6;
  if ((v7 & 0xF8) != 0xD8)
  {
    v8 = v6[1] | (v7 << 8);
    if ((v8 - 64976) >= 0x20 && (v8 & 0xFFFE) != 65534)
    {
      *a2 = v8;
      return 1;
    }
  }

  return result;
}

uint64_t CBS_get_utf32_be(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  v9 = v2 >= 4;
  v3 = v2 - 4;
  if (!v9)
  {
    return 0;
  }

  v5 = *a1;
  *a1 += 4;
  *(a1 + 8) = v3;
  v6 = (*v5 << 16) | (v5[1] << 8);
  v7 = v6 | v5[2];
  v8 = v5[3] | (v7 << 8);
  *a2 = v8;
  v9 = v6 >> 8 >= 0x11 || (v8 - 65008) >= 0xFFFFFFE0;
  v10 = !v9;
  if ((~v8 & 0xFFFE) == 0)
  {
    v10 = 0;
  }

  if ((v7 & 0x1FF8) == 0xD8)
  {
    return 0;
  }

  else
  {
    return v10;
  }
}

uint64_t CBB_add_utf8(uint64_t a1, unsigned int a2)
{
  result = 0;
  if (HIWORD(a2) <= 0x10u)
  {
    v10[5] = v2;
    v10[6] = v3;
    if ((a2 & 0x1FF800) != 0xD800 && (a2 & 0xFFFE) != 0xFFFE && a2 - 64976 >= 0x20)
    {
      if (a2 <= 0x7F)
      {
        v10[0] = 0;
        result = CBB_add_space(a1, v10, 1);
        if (!result)
        {
          return result;
        }

        *v10[0] = a2;
        return 1;
      }

      if (a2 > 0x7FF)
      {
        if (HIWORD(a2))
        {
          v10[0] = 0;
          v9 = a1;
          result = CBB_add_space(a1, v10, 1);
          if (result)
          {
            *v10[0] = (a2 >> 18) | 0xF0;
            v10[0] = 0;
            result = CBB_add_space(v9, v10, 1);
            if (result)
            {
              *v10[0] = (a2 >> 12) & 0x3F | 0x80;
              v10[0] = 0;
              result = CBB_add_space(v9, v10, 1);
              if (result)
              {
                *v10[0] = (a2 >> 6) & 0x3F | 0x80;
                v10[0] = 0;
                result = CBB_add_space(v9, v10, 1);
                if (result)
                {
                  goto LABEL_11;
                }
              }
            }
          }
        }

        else
        {
          v10[0] = 0;
          v8 = a1;
          result = CBB_add_space(a1, v10, 1);
          if (result)
          {
            *v10[0] = (a2 >> 12) | 0xE0;
            v10[0] = 0;
            result = CBB_add_space(v8, v10, 1);
            if (result)
            {
              *v10[0] = (a2 >> 6) & 0x3F | 0x80;
              v10[0] = 0;
              result = CBB_add_space(v8, v10, 1);
              if (result)
              {
                *v10[0] = a2 & 0x3F | 0x80;
                return 1;
              }
            }
          }
        }
      }

      else
      {
        v10[0] = 0;
        v7 = a1;
        result = CBB_add_space(a1, v10, 1);
        if (result)
        {
          *v10[0] = (a2 >> 6) | 0xC0;
          v10[0] = 0;
          result = CBB_add_space(v7, v10, 1);
          if (result)
          {
LABEL_11:
            *v10[0] = a2 & 0x3F | 0x80;
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t CBB_add_latin1(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFF)
  {
    return 0;
  }

  v6[3] = v2;
  v6[4] = v3;
  v4 = a2;
  v6[0] = 0;
  result = CBB_add_space(a1, v6, 1);
  if (result)
  {
    *v6[0] = v4;
    return 1;
  }

  return result;
}

uint64_t CBB_add_ucs2_be(uint64_t a1, unsigned int a2)
{
  if (HIWORD(a2))
  {
    return 0;
  }

  result = 0;
  if ((a2 & 0xF800) != 0xD800 && a2 - 64976 >= 0x20 && (a2 & 0xFFFE) != 0xFFFE)
  {
    v7[3] = v2;
    v7[4] = v3;
    v6 = a2;
    v7[0] = 0;
    result = CBB_add_space(a1, v7, 2);
    if (result)
    {
      *(v7[0] + 1) = v6;
      *v7[0] = HIBYTE(v6);
      return 1;
    }
  }

  return result;
}

uint64_t CBB_add_utf32_be(uint64_t a1, unsigned int a2)
{
  result = 0;
  if ((a2 & 0x1FF800) != 0xD800)
  {
    v8[3] = v2;
    v8[4] = v3;
    v6 = a2;
    if (a2 - 64976 >= 0x20)
    {
      v7 = HIWORD(a2);
      if (HIWORD(a2) <= 0x10u && (a2 & 0xFFFE) != 0xFFFE)
      {
        v8[0] = 0;
        result = CBB_add_space(a1, v8, 4);
        if (result)
        {
          *(v8[0] + 3) = v6;
          *(v8[0] + 2) = HIBYTE(v6);
          *(v8[0] + 1) = v7;
          *v8[0] = 0;
          return 1;
        }
      }
    }
  }

  return result;
}

STACK *i2v_AUTHORITY_KEYID(STACK *a1, int **a2, STACK *a3)
{
  extlist = a3;
  if (*a2)
  {
    v5 = x509v3_bytes_to_hex(*(*a2 + 1), **a2);
    if (!v5)
    {
      goto LABEL_15;
    }

    v6 = v5;
    v7 = strlen(v5);
    v8 = x509V3_add_len_value("keyid", v6, v7, 0, &extlist);
    v10 = *(v6 - 1);
    v9 = v6 - 8;
    v11 = v10 + 8;
    if (v10 != -8)
    {
      bzero(v9, v11);
    }

    free(v9);
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  v12 = a2[1];
  if (v12)
  {
    a1 = i2v_GENERAL_NAMES(0, v12, extlist);
    if (!a1)
    {
      goto LABEL_15;
    }

    extlist = a1;
  }

  v13 = a2[2];
  if (!v13)
  {
    return extlist;
  }

  v14 = i2s_ASN1_INTEGER(a1, v13);
  if (v14)
  {
    v15 = v14;
    v16 = strlen(v14);
    v17 = x509V3_add_len_value("serial", v15, v16, 0, &extlist);
    v19 = *(v15 - 1);
    v18 = v15 - 8;
    v20 = v19 + 8;
    if (v19 != -8)
    {
      bzero(v18, v20);
    }

    free(v18);
    if (v17)
    {
      return extlist;
    }
  }

LABEL_15:
  if (a3)
  {
    return 0;
  }

  v22 = extlist;
  if (!extlist)
  {
    return 0;
  }

  v23 = *&extlist->num;
  if (*&extlist->num)
  {
    v24 = 0;
    do
    {
      v25 = v22->data[v24];
      if (v25)
      {
        X509V3_conf_free(v25);
        v23 = *&v22->num;
      }

      ++v24;
    }

    while (v24 < v23);
  }

  data = v22->data;
  if (data)
  {
    v28 = *(data - 1);
    v27 = data - 1;
    v29 = v28 + 8;
    if (v28 != -8)
    {
      bzero(v27, v29);
    }

    free(v27);
  }

  comp = v22[-1].comp;
  p_comp = &v22[-1].comp;
  v32 = comp + 8;
  if (comp != -8)
  {
    bzero(p_comp, v32);
  }

  free(p_comp);
  return 0;
}

ASN1_VALUE *v2i_AUTHORITY_KEYID(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3)
  {
    v3 = *a3;
    if (*a3)
    {
      v4 = 0;
      v51 = 0;
      v5 = 0;
      v6 = a3[1];
      while (1)
      {
        v8 = *(v6 + 8 * v5);
        v9 = *(v8 + 8);
        if (!strcmp(v9, "keyid"))
        {
          v11 = *(v8 + 16);
          if (v11)
          {
            if (!strcmp(v11, "always"))
            {
              v4 = 2;
            }

            else
            {
              v4 = 1;
            }
          }

          else
          {
            v4 = 1;
          }
        }

        else
        {
          if (strcmp(v9, "issuer"))
          {
            ERR_put_error(20, 0, 159, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_akey.cc", 119);
            ERR_add_error_data(2, "name=", *(v8 + 8));
            return 0;
          }

          v10 = *(v8 + 16);
          if (v10)
          {
            if (!strcmp(v10, "always"))
            {
              v7 = 2;
            }

            else
            {
              v7 = 1;
            }
          }

          else
          {
            v7 = 1;
          }

          v51 = v7;
        }

        if (v3 == ++v5)
        {
          goto LABEL_19;
        }
      }
    }
  }

  v4 = 0;
  v51 = 0;
LABEL_19:
  if (!a2)
  {
    goto LABEL_40;
  }

  v12 = *(a2 + 8);
  if (v12)
  {
    if (v4)
    {
      v13 = *(*v12 + 72);
      v14 = OBJ_nid2obj(82);
      if (v13)
      {
        v15 = v14 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        goto LABEL_46;
      }

      v16 = *v13;
      if (v16 < 1)
      {
        goto LABEL_46;
      }

      v17 = v14;
      v18 = *(v13 + 1);
      length = v14->length;
      if (length)
      {
        v20 = 0;
        v21 = length;
        while (1)
        {
          v22 = **(v18 + 8 * v20);
          if (*(v22 + 20) == v21 && !memcmp(*(v22 + 24), v17->data, v21))
          {
            break;
          }

          if (v16 == ++v20)
          {
            goto LABEL_46;
          }
        }
      }

      else
      {
        v20 = 0;
        while (*(**(v18 + 8 * v20) + 20))
        {
          if (v16 == ++v20)
          {
            goto LABEL_46;
          }
        }
      }

      v23 = *(*v12 + 72);
      if (v23 && *v23 > v20 && (v24 = *(v23[1] + 8 * v20)) != 0)
      {
        v25 = X509V3_EXT_d2i(v24);
      }

      else
      {
LABEL_46:
        v25 = 0;
      }

      if (v4 == 2 && !v25)
      {
        ERR_put_error(20, 0, 155, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_akey.cc", 142);
        return 0;
      }
    }

    else
    {
      v25 = 0;
    }

    v27 = v51 != 0;
    if (v25)
    {
      v27 = 0;
    }

    if (v51 != 2 && !v27)
    {
      pval = 0;
      if (ASN1_item_ex_new(&pval, &AUTHORITY_KEYID_it))
      {
        v28 = 0;
        v29 = 0;
        result = pval;
        if (pval)
        {
          goto LABEL_56;
        }
      }

      pval = 0;
      ASN1_item_ex_free(&pval, &X509_NAME_ENTRY_it.sname);
LABEL_80:
      if (v25)
      {
        v43 = v25[1];
        if (v43)
        {
          v45 = *(v43 - 8);
          v44 = (v43 - 8);
          v46 = v45 + 8;
          if (v45 != -8)
          {
            bzero(v44, v46);
          }

          free(v44);
        }

        v48 = *(v25 - 1);
        v47 = (v25 - 1);
        v49 = v48 + 8;
        if (v48 != -8)
        {
          bzero(v47, v49);
        }

        free(v47);
      }

      return 0;
    }

    v30 = ASN1_item_dup(&X509_NAME_ENTRY_it.sname, *(*v12 + 24));
    v31 = ASN1_STRING_dup(*(*v12 + 8));
    v28 = v31;
    if (v30)
    {
      v32 = v31 == 0;
    }

    else
    {
      v32 = 1;
    }

    if (v32)
    {
      ERR_put_error(20, 0, 154, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_akey.cc", 151);
      pval = v30;
      ASN1_item_ex_free(&pval, &X509_NAME_ENTRY_it.sname);
      if (!v28)
      {
        goto LABEL_80;
      }
    }

    else
    {
      pval = 0;
      if (ASN1_item_ex_new(&pval, &AUTHORITY_KEYID_it))
      {
        if (pval)
        {
          v33 = pval;
          v34 = OPENSSL_sk_new_null();
          if (v34)
          {
            v29 = v34;
            pval = 0;
            if (ASN1_item_ex_new(&pval, &GENERAL_NAME_it))
            {
              v35 = pval;
              if (pval)
              {
                if (OPENSSL_sk_push(v29, pval))
                {
                  *v35 = 4;
                  *(v35 + 1) = v30;
                  result = v33;
LABEL_56:
                  *(result + 1) = v29;
                  *(result + 2) = v28;
                  *result = v25;
                  return result;
                }
              }
            }
          }
        }
      }

      pval = v30;
      ASN1_item_ex_free(&pval, &X509_NAME_ENTRY_it.sname);
    }

    data = v28->data;
    if (data)
    {
      v38 = *(data - 1);
      v37 = data - 8;
      v39 = v38 + 8;
      if (v38 != -8)
      {
        bzero(v37, v39);
      }

      free(v37);
    }

    flags = v28[-1].flags;
    p_flags = &v28[-1].flags;
    v42 = flags + 8;
    if (flags != -8)
    {
      bzero(p_flags, v42);
    }

    free(p_flags);
    goto LABEL_80;
  }

  if (*a2 != 1)
  {
LABEL_40:
    ERR_put_error(20, 0, 140, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_akey.cc", 129);
    return 0;
  }

  pval = 0;
  if (ASN1_item_ex_new(&pval, &AUTHORITY_KEYID_it))
  {
    return pval;
  }

  else
  {
    return 0;
  }
}

char *v2i_subject_alt(uint64_t a1, X509V3_CTX *a2, void *a3)
{
  v5 = OPENSSL_sk_new_null();
  if (!v5 || !a3 || !*a3)
  {
    return v5;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a3[1] + 8 * v6);
    name = v7->name;
    if (!strncmp(name, "email", 5uLL))
    {
      v17 = name[5];
      if (v17 == 46 || v17 == 0)
      {
        value = v7->value;
        if (value && !strcmp(v7->value, "copy"))
        {
          v22 = a2;
          v23 = v5;
          v24 = 0;
        }

        else
        {
          v21 = v17 != 46 && v17 != 0 || value == 0;
          if (v21 || strcmp(value, "move"))
          {
            goto LABEL_6;
          }

          v22 = a2;
          v23 = v5;
          v24 = 1;
        }

        if (!copy_email(v22, v23, v24))
        {
          goto LABEL_40;
        }

        goto LABEL_33;
      }
    }

LABEL_6:
    v10 = v2i_GENERAL_NAME_ex(0, v9, a2, v7, 0);
    if (!v10)
    {
      goto LABEL_39;
    }

    v11 = *v5;
    if (*v5 >= 0x7FFFFFFFuLL)
    {
      break;
    }

    v12 = *(v5 + 3);
    if (v12 <= v11 + 1)
    {
      v15 = OPENSSL_realloc(*(v5 + 1), 16 * v12);
      if (!v15)
      {
        goto LABEL_39;
      }

      *(v5 + 1) = v15;
      *(v5 + 3) = 2 * v12;
      v13 = *v5;
      v16 = *v5 - v11;
      if (*v5 <= v11)
      {
        v14 = &v15[v13];
      }

      else
      {
        if (8 * v16)
        {
          memmove(&v15[v11 + 1], &v15[v11], 8 * v16);
          v13 = *v5;
          v15 = *(v5 + 1);
        }

        v14 = &v15[v11];
      }
    }

    else
    {
      v13 = *v5;
      v14 = (*(v5 + 1) + 8 * v11);
    }

    *v14 = v10;
    *(v5 + 4) = 0;
    *v5 = v13 + 1;
    if (v13 == -1)
    {
      goto LABEL_39;
    }

LABEL_33:
    if (++v6 >= *a3)
    {
      return v5;
    }
  }

  ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
LABEL_39:
  pval = v10;
  ASN1_item_ex_free(&pval, &GENERAL_NAME_it);
LABEL_40:
  v25 = *v5;
  if (*v5)
  {
    v26 = 0;
    do
    {
      if (*(*(v5 + 1) + 8 * v26))
      {
        pval = *(*(v5 + 1) + 8 * v26);
        ASN1_item_ex_free(&pval, &GENERAL_NAME_it);
        v25 = *v5;
      }

      ++v26;
    }

    while (v26 < v25);
  }

  v27 = *(v5 + 1);
  if (v27)
  {
    v29 = *(v27 - 8);
    v28 = (v27 - 8);
    v30 = v29 + 8;
    if (v29 != -8)
    {
      bzero(v28, v30);
    }

    free(v28);
  }

  v32 = *(v5 - 1);
  v31 = v5 - 8;
  v33 = v32 + 8;
  if (v32 != -8)
  {
    bzero(v31, v33);
  }

  free(v31);
  return 0;
}

char *v2i_issuer_alt(uint64_t a1, X509V3_CTX *a2, unint64_t *a3)
{
  v5 = OPENSSL_sk_new_null();
  if (!v5)
  {
    return v5;
  }

  if (!a2)
  {
    if (!a3)
    {
      return v5;
    }

    v44 = 0;
    while (1)
    {
      while (1)
      {
        if (v44 >= *a3)
        {
          return v5;
        }

        v47 = *(a3[1] + 8 * v44);
        name = v47->name;
        if (!strncmp(name, "issuer", 6uLL))
        {
          v53 = name[6];
          if (v53 == 46 || v53 == 0)
          {
            value = v47->value;
            if (value)
            {
              if (!strcmp(value, "copy"))
              {
LABEL_95:
                ERR_put_error(20, 0, 141, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_alt.cc", 304);
                v56 = *v5;
                if (!*v5)
                {
                  goto LABEL_100;
                }

                goto LABEL_91;
              }
            }
          }
        }

        v10 = v2i_GENERAL_NAME_ex(0, v49, 0, v47, 0);
        if (!v10)
        {
          goto LABEL_90;
        }

        v50 = *v5;
        if (*v5 > 0x7FFFFFFEuLL)
        {
LABEL_89:
          ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
LABEL_90:
          pval = v10;
          ASN1_item_ex_free(&pval, &GENERAL_NAME_it);
          v56 = *v5;
          if (!*v5)
          {
            goto LABEL_100;
          }

LABEL_91:
          v57 = 0;
          do
          {
            if (*(*(v5 + 1) + 8 * v57))
            {
              pval = *(*(v5 + 1) + 8 * v57);
              ASN1_item_ex_free(&pval, &GENERAL_NAME_it);
              v56 = *v5;
            }

            ++v57;
          }

          while (v57 < v56);
          goto LABEL_100;
        }

        v51 = *(v5 + 3);
        if (v51 <= v50 + 1)
        {
          break;
        }

        v45 = *(v5 + 1);
        v46 = *v5;
LABEL_69:
        v45[v50] = v10;
        *(v5 + 4) = 0;
        ++v44;
        *v5 = v46 + 1;
        if (v46 == -1)
        {
          goto LABEL_90;
        }
      }

      v45 = OPENSSL_realloc(*(v5 + 1), 16 * v51);
      if (!v45)
      {
        goto LABEL_90;
      }

      *(v5 + 1) = v45;
      *(v5 + 3) = 2 * v51;
      v46 = *v5;
      v52 = *v5 - v50;
      if (*v5 > v50)
      {
        if (8 * v52)
        {
          memmove(&v45[v50 + 1], &v45[v50], 8 * v52);
          v46 = *v5;
          v45 = *(v5 + 1);
        }

        goto LABEL_69;
      }

      v45[v46] = v10;
      *(v5 + 4) = 0;
      ++v44;
      *v5 = v46 + 1;
      if (v46 == -1)
      {
        goto LABEL_90;
      }
    }
  }

  if (!a3 || !*a3)
  {
    return v5;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a3[1] + 8 * v6);
    v8 = v7->name;
    if (!strncmp(v8, "issuer", 6uLL))
    {
      v17 = v8[6];
      if (v17 == 46 || v17 == 0)
      {
        v19 = v7->value;
        if (v19)
        {
          if (!strcmp(v19, "copy"))
          {
            break;
          }
        }
      }
    }

    v10 = v2i_GENERAL_NAME_ex(0, v9, a2, v7, 0);
    if (!v10)
    {
      goto LABEL_90;
    }

    v11 = *v5;
    if (*v5 > 0x7FFFFFFEuLL)
    {
      goto LABEL_89;
    }

    v12 = *(v5 + 3);
    if (v12 <= v11 + 1)
    {
      v15 = OPENSSL_realloc(*(v5 + 1), 16 * v12);
      if (!v15)
      {
        goto LABEL_90;
      }

      *(v5 + 1) = v15;
      *(v5 + 3) = 2 * v12;
      v13 = *v5;
      v16 = *v5 - v11;
      if (*v5 <= v11)
      {
        v14 = &v15[v13];
      }

      else
      {
        if (8 * v16)
        {
          memmove(&v15[v11 + 1], &v15[v11], 8 * v16);
          v13 = *v5;
          v15 = *(v5 + 1);
        }

        v14 = &v15[v11];
      }
    }

    else
    {
      v13 = *v5;
      v14 = (*(v5 + 1) + 8 * v11);
    }

    *v14 = v10;
    *(v5 + 4) = 0;
    *v5 = v13 + 1;
    if (v13 == -1)
    {
      goto LABEL_90;
    }

LABEL_34:
    if (++v6 >= *a3)
    {
      return v5;
    }
  }

  if (a2->flags == 1)
  {
    goto LABEL_34;
  }

  issuer_cert = a2->issuer_cert;
  if (!issuer_cert)
  {
    goto LABEL_95;
  }

  extensions = issuer_cert->cert_info->extensions;
  v22 = OBJ_nid2obj(85);
  if (!extensions || v22 == 0)
  {
    goto LABEL_34;
  }

  num = extensions->num;
  if (num < 1)
  {
    goto LABEL_34;
  }

  v25 = v22;
  data = extensions->data;
  length = v22->length;
  if (length)
  {
    v28 = 0;
    v29 = length;
    while (1)
    {
      v30 = *data[v28];
      if (*(v30 + 20) == v29 && !memcmp(*(v30 + 24), v25->data, v29))
      {
        break;
      }

      if (num == ++v28)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v28 = 0;
    while (*(*data[v28] + 20))
    {
      if (num == ++v28)
      {
        goto LABEL_34;
      }
    }
  }

  v31 = a2->issuer_cert->cert_info->extensions;
  if (!v31 || *&v31->num <= v28 || (v32 = v31->data[v28]) == 0 || (v33 = X509V3_EXT_d2i(v32)) == 0)
  {
    ERR_put_error(20, 0, 136, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/v3_alt.cc", 317);
    v34 = 0;
    goto LABEL_99;
  }

  v34 = v33;
  v35 = *v33;
  if (!*v33)
  {
LABEL_65:
    pval = v34;
    ASN1_item_ex_free(&pval, &GENERAL_NAMES_it);
    goto LABEL_34;
  }

  v36 = 0;
  while (1)
  {
    v37 = v35 <= v36 ? 0 : *(*(v34 + 1) + 8 * v36);
    v38 = *v5;
    if (*v5 >= 0x7FFFFFFFuLL)
    {
      break;
    }

    v39 = *(v5 + 3);
    if (v39 <= v38 + 1)
    {
      v42 = OPENSSL_realloc(*(v5 + 1), 16 * v39);
      if (!v42)
      {
        goto LABEL_99;
      }

      *(v5 + 1) = v42;
      *(v5 + 3) = 2 * v39;
      v40 = *v5;
      v43 = *v5 - v38;
      if (*v5 <= v38)
      {
        v41 = &v42[v40];
      }

      else
      {
        if (8 * v43)
        {
          memmove(&v42[v38 + 1], &v42[v38], 8 * v43);
          v40 = *v5;
          v42 = *(v5 + 1);
        }

        v41 = &v42[v38];
      }
    }

    else
    {
      v40 = *v5;
      v41 = (*(v5 + 1) + 8 * v38);
    }

    *v41 = v37;
    *(v5 + 4) = 0;
    *v5 = v40 + 1;
    if (v40 == -1)
    {
      goto LABEL_99;
    }

    v35 = *v34;
    if (*v34 > v36)
    {
      *(*(v34 + 1) + 8 * v36) = 0;
    }

    if (++v36 >= v35)
    {
      goto LABEL_65;
    }
  }

  ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
LABEL_99:
  pval = v34;
  ASN1_item_ex_free(&pval, &GENERAL_NAMES_it);
  v56 = *v5;
  if (*v5)
  {
    goto LABEL_91;
  }

LABEL_100:
  v58 = *(v5 + 1);
  if (v58)
  {
    v60 = *(v58 - 8);
    v59 = (v58 - 8);
    v61 = v60 + 8;
    if (v60 != -8)
    {
      bzero(v59, v61);
    }

    free(v59);
  }

  v63 = *(v5 - 1);
  v62 = v5 - 8;
  v64 = v63 + 8;
  if (v63 != -8)
  {
    bzero(v62, v64);
  }

  free(v62);
  return 0;
}