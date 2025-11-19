BOOL bssl::add_padding_extension(uint64_t *a1, size_t a2)
{
  v5[0] = 0;
  if (CBB_add_space(a1, v5, 2) && (*(v5[0] + 1) = 21, *v5[0] = 0, CBB_add_u16_length_prefixed(a1, v5)) && (v6 = 0, CBB_add_space(v5, &v6, a2)))
  {
    if (a2)
    {
      bzero(v6, a2);
    }

    return CBB_flush(a1) != 0;
  }

  else
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 3761);
    return 0;
  }
}

uint64_t bssl::ext_pre_shared_key_add_clienthello(uint64_t a1, uint64_t *a2, _BYTE *a3, int a4)
{
  v4 = *a1;
  *a3 = 0;
  if (*(a1 + 30) < 0x304u)
  {
    return 1;
  }

  v5 = v4[11];
  if (!v5 || (*(v5 + 408) & 4) != 0)
  {
    return 1;
  }

  v6 = *(v5 + 4);
  if (v6 - 769 >= 4)
  {
    if (v6 == 65276)
    {
      goto LABEL_6;
    }

    return 1;
  }

  if (v6 < 0x304)
  {
    return 1;
  }

LABEL_6:
  result = 1;
  if (a4 == 2 || !*(v5 + 240) || (*(v4[6] + 220) & 0x1000) != 0 && *(*(v5 + 200) + 36) != *(*(a1 + 1584) + 36))
  {
    return result;
  }

  v11 = *(v4[13] + 728);
  if (v11)
  {
    v11(0, &v29);
  }

  else
  {
    gettimeofday(&v29, 0);
  }

  v12 = v29.tv_sec & ~(v29.tv_sec >> 63);
  v13 = 0;
  v14 = v4[11];
  v15 = *(v14 + 4);
  if (v15 <= 0xFEFB)
  {
    if (v15 - 769 >= 4)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  switch(v15)
  {
    case 0xFEFCu:
      v15 = 772;
      goto LABEL_18;
    case 0xFEFDu:
      v15 = 771;
      goto LABEL_18;
    case 0xFEFFu:
      v15 = 770;
LABEL_18:
      v13 = v15 > 0x302;
      break;
  }

LABEL_19:
  v16 = *(v14 + 192);
  v17 = *(v14 + 352);
  v18 = *(*(v14 + 200) + 36);
  if (v18 == 4)
  {
    v19 = EVP_sha384();
  }

  else if (v18 == 2 || v13)
  {
    v19 = EVP_sha256();
  }

  else
  {
    v19 = &evp_md_md5_sha1;
  }

  pkey_type = v19->pkey_type;
  v29.tv_sec = 0;
  result = CBB_add_space(a2, &v29, 2);
  if (result)
  {
    *(v29.tv_sec + 1) = 41;
    *v29.tv_sec = 0;
    result = CBB_add_u16_length_prefixed(a2, &v29);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(&v29, v28);
      if (result)
      {
        result = CBB_add_u16_length_prefixed(v28, v27);
        if (result)
        {
          v21 = v4[11];
          v22 = *(v21 + 232);
          v23 = *(v21 + 240);
          __dst[0] = 0;
          result = CBB_add_space(v27, __dst, v23);
          if (result)
          {
            v24 = v17 + 1000 * (v12 - v16);
            if (v23)
            {
              memcpy(__dst[0], v22, v23);
            }

            result = CBB_add_u32(v28, v24);
            if (result)
            {
              result = CBB_add_u16_length_prefixed(&v29, __dst);
              if (result)
              {
                result = CBB_add_u8_length_prefixed(__dst, v25);
                if (result)
                {
                  result = CBB_add_zeros(v25, pkey_type);
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

BOOL bssl::ssl_add_serverhello_tlsext(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (!CBB_add_u16_length_prefixed(a2, v18))
  {
LABEL_7:
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 4030);
    return 0;
  }

  v5 = 0;
  v6 = &off_2882A5290;
  do
  {
    if (((*(a1 + 94) >> v5) & 1) != 0 && !(*v6)(a1, v18))
    {
      ERR_put_error(16, 0, 147, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 4015);
      ERR_add_error_dataf("extension %u", v7, v8, v9, v10, v11, v12, v13, *(v6 - 16));
      goto LABEL_7;
    }

    ++v5;
    v6 += 5;
  }

  while (v5 != 28);
  v15 = *(*(v4 + 48) + 208);
  if (v15 - 769 >= 4)
  {
    if (v15 == 65276)
    {
      return CBB_flush(a2) != 0;
    }
  }

  else if (v15 > 0x303)
  {
    return CBB_flush(a2) != 0;
  }

  if (v18[8])
  {
    if (*(v19 + 8) == v20 + v21)
    {
LABEL_16:
      v16 = *a2;
      if (*a2)
      {
        v17 = (a2 + 16);
        if (*(a2 + 8))
        {
          v17 = *v17;
        }

        v17[1] = *(v16 + 24);
        *(v16 + 16) = 0;
        *a2 = 0;
      }
    }
  }

  else if (!v20)
  {
    goto LABEL_16;
  }

  return CBB_flush(a2) != 0;
}

uint64_t bssl::ssl_parse_clienthello_tlsext(uint64_t a1, void *a2)
{
  v4 = *a1;
  *(a1 + 376) = 0;
  v5 = a2[15];
  if (v5)
  {
    v6 = a2[14];
    while (v5 >= 2)
    {
      if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        break;
      }

      v7 = __rev16(v6[1]);
      v8 = v5 - 4 >= v7;
      v5 = v5 - 4 - v7;
      if (!v8)
      {
        break;
      }

      v9 = __rev16(*v6);
      v10 = v6 + 2;
      *v41 = v6 + 2;
      v42 = v7;
      v40 = 0;
      v11 = bssl::tls_extension_find(&v40, v9);
      if (v11)
      {
        *(a1 + 376) |= 1 << v40;
        v39 = 50;
        if ((v11[3](a1, &v39, v41) & 1) == 0)
        {
          v12 = v39;
          ERR_put_error(16, 0, 149, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 4062);
          ERR_add_error_dataf("extension %u", v13, v14, v15, v16, v17, v18, v19, v9);
          v20 = v12;
          goto LABEL_27;
        }
      }

      v6 = (v10 + v7);
      if (!v5)
      {
        goto LABEL_11;
      }
    }

    v20 = 50;
LABEL_27:
    bssl::ssl_send_alert(v4, 2, v20);
    return 0;
  }

LABEL_11:
  for (i = 0; i != 28; ++i)
  {
    v22 = *(a1 + 376);
    if (((1 << i) & v22) == 0)
    {
      v23 = (&bssl::kExtensions + 40 * i);
      v24 = *v23;
      if (v24 == 65281)
      {
        v25 = a2[11];
        if (v25)
        {
          v26 = a2[10];
          while (v25 >= 2)
          {
            if (__rev16(*v26) == 255)
            {
              *v41 = &bssl::ssl_scan_clienthello_tlsext(bssl::SSL_HANDSHAKE *,ssl_early_callback_ctx const*,int *)::kFakeRenegotiateExtension;
              v42 = 1;
              *(a1 + 376) = (1 << i) | v22;
              LOBYTE(v40) = 50;
              if (v23[3](a1, &v40, v41))
              {
                goto LABEL_15;
              }

              goto LABEL_25;
            }

            ++v26;
            v25 -= 2;
            if (!v25)
            {
              break;
            }
          }
        }
      }

      LOBYTE(v40) = 50;
      if ((v23[3](a1, &v40, 0) & 1) == 0)
      {
LABEL_25:
        ERR_put_error(16, 0, 164, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 4090);
        ERR_add_error_dataf("extension %u", v27, v28, v29, v30, v31, v32, v33, v24);
        v20 = v40;
        goto LABEL_27;
      }
    }

LABEL_15:
    ;
  }

  v35 = *a1;
  v41[0] = 112;
  v36 = *(v35 + 13);
  v37 = *(v36 + 528);
  if (!v37)
  {
    v36 = *(v35 + 14);
    v37 = *(v36 + 528);
    if (!v37)
    {
      goto LABEL_33;
    }
  }

  v38 = v37(v35, v41, *(v36 + 536));
  if (v38 == 2)
  {
    bssl::ssl_send_alert(v35, 2, v41[0]);
    ERR_put_error(16, 0, 132, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 4110);
    return 0;
  }

  if (v38 != 3)
  {
    *(a1 + 1616) = *(a1 + 1616) & 0xFFFFFEFF | ((*(*(v35 + 6) + 504) != 0) << 8);
    return 1;
  }

  else
  {
LABEL_33:
    *(a1 + 1616) &= ~0x100u;
    return 1;
  }
}

uint64_t bssl::ssl_parse_serverhello_tlsext(uint64_t a1, __int128 *a2)
{
  v3 = *a1;
  v74 = *a2;
  if (!bssl::tls1_check_duplicate_extensions(&v74))
  {
    goto LABEL_4;
  }

  v4 = *(&v74 + 1);
  if (!*(&v74 + 1))
  {
    v9 = 0;
LABEL_9:
    v10 = 0;
    v11 = off_2882A5280;
    do
    {
      if (((v9 >> v10) & 1) == 0)
      {
        LOBYTE(v73[0]) = 50;
        if (((*v11)(a1, v73, 0) & 1) == 0)
        {
          ERR_put_error(16, 0, 164, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 4176);
          ERR_add_error_dataf("extension %u", v12, v13, v14, v15, v16, v17, v18, *(v11 - 8));
          v5 = LOBYTE(v73[0]);
          goto LABEL_5;
        }
      }

      ++v10;
      v11 += 5;
    }

    while (v10 != 28);
    v26 = *(a1 + 1552);
    if (!v26 || (*(v26 + 408) & 0x40) == 0)
    {
      return 1;
    }

    v27 = *a1;
    v28 = *(*a1 + 48);
    v29 = *(v28 + 496);
    if (v29)
    {
      v30 = *(a1 + 8);
      v31 = *(v30 + 176);
      if (v31)
      {
        v32 = *(v28 + 488);
        v33 = (*(v30 + 168) + 16);
        v34 = 32 * v31;
        while (1)
        {
          if (v29 == *(v33 - 1))
          {
            result = memcmp(v32, *(v33 - 2), v29);
            if (!result)
            {
              break;
            }
          }

          v33 += 4;
          v34 -= 32;
          if (!v34)
          {
            goto LABEL_45;
          }
        }

        v36 = *v33;
        v35 = v33[1];
        v38 = *(v26 + 376);
        v37 = *(v26 + 384);
        if (v37 && v37 - 1 >= -v38)
        {
          __break(1u);
          return result;
        }

        if (v38)
        {
          v40 = *(v38 - 8);
          v39 = (v38 - 8);
          v41 = v40 + 8;
          if (v40 != -8)
          {
            bzero(v39, v41);
          }

          free(v39);
        }

        *(v26 + 376) = 0;
        *(v26 + 384) = 0;
        if (!v35)
        {
          return 1;
        }

        v42 = OPENSSL_malloc(v35);
        *(v26 + 376) = v42;
        if (!v42)
        {
          v6 = v27;
          v5 = 80;
          goto LABEL_6;
        }

        *(v26 + 384) = v35;
        if (v35 < 8)
        {
          v43 = v36;
        }

        else
        {
          v43 = v36;
          if (v42 - v36 >= 0x20)
          {
            if (v35 < 0x20)
            {
              v44 = 0;
LABEL_58:
              v43 = (v36 + (v35 & 0xFFFFFFFFFFFFFFF8));
              v66 = (v36 + v44);
              v67 = (v42 + v44);
              v68 = v44 - (v35 & 0xFFFFFFFFFFFFFFF8);
              do
              {
                v69 = *v66++;
                *v67++ = v69;
                v68 += 8;
              }

              while (v68);
              v42 = (v42 + (v35 & 0xFFFFFFFFFFFFFFF8));
              if (v35 != (v35 & 0xFFFFFFFFFFFFFFF8))
              {
                goto LABEL_63;
              }

              return 1;
            }

            v44 = v35 & 0xFFFFFFFFFFFFFFE0;
            v62 = (v36 + 16);
            v63 = v42 + 2;
            v64 = v35 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v65 = *v62;
              *(v63 - 1) = *(v62 - 1);
              *v63 = v65;
              v62 += 2;
              v63 += 2;
              v64 -= 32;
            }

            while (v64);
            if (v35 == v44)
            {
              return 1;
            }

            if ((v35 & 0x18) != 0)
            {
              goto LABEL_58;
            }

            v43 = (v36 + v44);
            v42 = (v42 + v44);
          }
        }

        do
        {
LABEL_63:
          v70 = *v43++;
          *v42 = v70;
          v42 = (v42 + 1);
          v7 = 1;
        }

        while (v43 != (v36 + v35));
        return v7;
      }

LABEL_45:
      v45 = 259;
      v46 = 4229;
    }

    else
    {
      v45 = 308;
      v46 = 4220;
    }

    ERR_put_error(16, 0, v45, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", v46);
    v6 = v27;
    v5 = 47;
    goto LABEL_6;
  }

  if (*(&v74 + 1) == 1)
  {
LABEL_4:
    v5 = 50;
    goto LABEL_5;
  }

  v9 = 0;
  v19 = v74;
  while (1)
  {
    if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      goto LABEL_4;
    }

    v20 = __rev16(v19[1]);
    v21 = v4 - 4 >= v20;
    v4 = v4 - 4 - v20;
    if (!v21)
    {
      goto LABEL_4;
    }

    v22 = __rev16(*v19);
    v23 = v19 + 2;
    v73[0] = v19 + 2;
    v73[1] = v20;
    v72 = 0;
    v24 = bssl::tls_extension_find(&v72, v22);
    if (!v24)
    {
      v47 = 4142;
LABEL_48:
      ERR_put_error(16, 0, 222, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", v47);
      ERR_add_error_dataf("extension %u", v48, v49, v50, v51, v52, v53, v54, v22);
      v5 = 110;
      goto LABEL_5;
    }

    v25 = 1 << v72;
    if (((1 << v72) & *(a1 + 376)) == 0)
    {
      v47 = 4153;
      goto LABEL_48;
    }

    v71 = 50;
    if ((v24[2](a1, &v71, v73) & 1) == 0)
    {
      break;
    }

    v9 |= v25;
    if (!v4)
    {
      goto LABEL_9;
    }

    v19 = (v23 + v20);
    if (v4 == 1)
    {
      goto LABEL_4;
    }
  }

  ERR_put_error(16, 0, 149, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 4163);
  ERR_add_error_dataf("extension %u", v55, v56, v57, v58, v59, v60, v61, v22);
  v5 = v71;
LABEL_5:
  v6 = v3;
LABEL_6:
  bssl::ssl_send_alert(v6, 2, v5);
  return 0;
}

uint64_t bssl::ssl_process_ticket(uint64_t a1, ssl_ctx_st *a2, _BYTE *a3, const unsigned __int8 *a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v120 = *MEMORY[0x277D85DE8];
  v12 = *a1;
  *a3 = 0;
  method = a2->method;
  a2->method = 0;
  v14 = v12;
  if (method)
  {
    v15 = atomic_load(method);
    if (v15 != -1)
    {
      while (1)
      {
        if (!v15)
        {
          goto LABEL_194;
        }

        v16 = v15;
        atomic_compare_exchange_strong(&method->ssl_version, &v16, v15 - 1);
        if (v16 == v15)
        {
          break;
        }

        v15 = v16;
        if (v16 == -1)
        {
          goto LABEL_11;
        }
      }

      if (v15 == 1)
      {
        v17 = a7;
        ssl_session_st::~ssl_session_st(method);
        tlsext_tick_lifetime_hint = method[-1].tlsext_tick_lifetime_hint;
        p_tlsext_tick_lifetime_hint = &method[-1].tlsext_tick_lifetime_hint;
        v20 = tlsext_tick_lifetime_hint + 8;
        if (tlsext_tick_lifetime_hint != -8)
        {
          bzero(p_tlsext_tick_lifetime_hint, v20);
        }

        free(p_tlsext_tick_lifetime_hint);
        a7 = v17;
      }
    }

LABEL_11:
    v14 = *a1;
  }

  v21 = 2;
  if ((*(v14 + 129) & 0x40) == 0 && a7 <= 0x20)
  {
    v22 = *(v12[6] + 208);
    if (v22 > 0xFEFB)
    {
      if (v22 == 65276)
      {
        v22 = 772;
LABEL_16:
        v23 = v22 > 0x303;
        v115 = 0;
        v116 = 0;
        v24 = *(a1 + 1608);
        v25 = v24 != 0;
        if (v22 >= 0x304 && v24 != 0)
        {
          if ((*(a1 + 1618) & 0x10) == 0)
          {
            v27 = *(v24 + 136);
            if (v27)
            {
              if (v27 > 0xFFFFFFFFFFFFFFF7 || (v28 = *(v24 + 128), (v29 = malloc_type_malloc(v27 + 8, 0xB4E622C9uLL)) == 0))
              {
                ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
                v115 = 0;
                v21 = 3;
LABEL_152:
                v23 = 1;
                goto LABEL_153;
              }

              *v29 = v27;
              v30 = v29 + 1;
              v115 = (v29 + 1);
              v116 = v27;
              if (v27 < 8)
              {
                v31 = v28;
                goto LABEL_150;
              }

              v31 = v28;
              if (v29 - v28 + 8 >= 0x20)
              {
                if (v27 < 0x20)
                {
                  v64 = 0;
                  goto LABEL_129;
                }

                v64 = v27 & 0xFFFFFFFFFFFFFFE0;
                v79 = (v28 + 16);
                v80 = v29 + 3;
                v81 = v27 & 0xFFFFFFFFFFFFFFE0;
                do
                {
                  v82 = *v79;
                  *(v80 - 1) = *(v79 - 1);
                  *v80 = v82;
                  v79 += 2;
                  v80 += 2;
                  v81 -= 32;
                }

                while (v81);
                if (v27 == v64)
                {
                  goto LABEL_151;
                }

                if ((v27 & 0x18) != 0)
                {
LABEL_129:
                  v30 += v27 & 0xFFFFFFFFFFFFFFF8;
                  v31 = (v28 + (v27 & 0xFFFFFFFFFFFFFFF8));
                  v83 = (v28 + v64);
                  v84 = (v29 + v64 + 8);
                  v85 = v64 - (v27 & 0xFFFFFFFFFFFFFFF8);
                  do
                  {
                    v86 = *v83++;
                    *v84++ = v86;
                    v85 += 8;
                  }

                  while (v85);
                  if (v27 == (v27 & 0xFFFFFFFFFFFFFFF8))
                  {
                    goto LABEL_151;
                  }

                  goto LABEL_150;
                }

                v31 = (v28 + v64);
                v30 += v64;
              }

              do
              {
LABEL_150:
                v91 = *v31++;
                *v30++ = v91;
              }

              while (v31 != (v28 + v27));
LABEL_151:
              v21 = 0;
              goto LABEL_152;
            }

            v23 = 1;
            if ((*(v24 + 144) & 1) == 0)
            {
LABEL_66:
              v25 = 1;
              v38 = v12[14];
              if (!*(v38 + 744))
              {
LABEL_67:
                if (a5 < 0x20)
                {
                  v21 = 2;
LABEL_69:
                  if (!v25)
                  {
                    goto LABEL_186;
                  }

                  goto LABEL_153;
                }

                if (*(v38 + 560))
                {
                  v119 = 0;
                  v118 = 0u;
                  memset(&ctx.key[4], 0, 128);
                  memset(&ctx, 0, 104);
                  v49 = (*(v14[14] + 560))();
                  if (v49 < 0)
                  {
                    v58 = 3;
                  }

                  else
                  {
                    if (v49)
                    {
                      if (v49 == 2)
                      {
                        *a3 = 1;
                      }

                      v113 = bssl::decrypt_ticket_with_cipher_ctx(&v115, &ctx.key[4], &ctx, a4, a5);
LABEL_97:
                      v59 = a4;
                      HMAC_CTX_cleanup(&ctx);
                      if (*&ctx.key[4])
                      {
                        v60 = *(*&ctx.key[4] + 40);
                        if (v60)
                        {
                          v60(&ctx.key[4]);
                        }
                      }

                      if (*&ctx.key[20])
                      {
                        v62 = (*&ctx.key[20] - 8);
                        v61 = *(*&ctx.key[20] - 8);
                        if (v61 != -8)
                        {
                          bzero(v62, v61 + 8);
                        }

                        free(v62);
                      }

                      v21 = v113;
                      a4 = v59;
                      if (!v25)
                      {
                        goto LABEL_154;
                      }

                      goto LABEL_153;
                    }

                    v58 = 2;
                  }

                  v113 = v58;
                  goto LABEL_97;
                }

                v50 = v14[14];
                if (!bssl::ssl_ctx_rotate_ticket_encryption_key(v50, a2))
                {
                  v21 = 3;
                  if (!v25)
                  {
                    goto LABEL_186;
                  }

                  goto LABEL_153;
                }

                v111 = EVP_aes_128_cbc();
                v119 = 0;
                v118 = 0u;
                memset(&ctx.key[4], 0, 128);
                memset(&ctx, 0, 104);
                if (pthread_rwlock_rdlock((v50 + 24)))
                {
                  goto LABEL_194;
                }

                v51 = a4 + 16;
                v52 = a4;
                v53 = *(v50 + 544);
                v114 = v52;
                v54 = v51 - v52;
                if (!v53 || v54 != 16 || (*v114 == *v53 ? (v55 = *(v114 + 1) == *(v53 + 8)) : (v55 = 0), !v55))
                {
                  v53 = *(v50 + 552);
                  v56 = 2;
                  if (!v53 || v54 != 16)
                  {
                    goto LABEL_134;
                  }

                  if (*v114 != *v53 || *(v114 + 1) != *(v53 + 8))
                  {
                    v56 = 2;
                    goto LABEL_134;
                  }
                }

                v110 = v51;
                v65 = EVP_sha256();
                HMAC_Init_ex(&ctx, (v53 + 16), 16, v65, 0);
                if (v67)
                {
                  v68 = EVP_CipherInit_ex(&ctx.key[4], v111, v66, (v53 + 32), v110, 0);
                  if (pthread_rwlock_unlock((v50 + 24)))
                  {
                    goto LABEL_194;
                  }

                  if (v68)
                  {
                    v69 = bssl::decrypt_ticket_with_cipher_ctx(&v115, &ctx.key[4], &ctx, v114, a5);
                    HMAC_CTX_cleanup(&ctx);
                    v70 = *&ctx.key[4];
                    if (!*&ctx.key[4])
                    {
                      goto LABEL_138;
                    }
                  }

                  else
                  {
                    v69 = 3;
                    HMAC_CTX_cleanup(&ctx);
                    v70 = *&ctx.key[4];
                    if (!*&ctx.key[4])
                    {
                      goto LABEL_138;
                    }
                  }

                  goto LABEL_136;
                }

                v56 = 3;
LABEL_134:
                v69 = v56;
                if (pthread_rwlock_unlock((v50 + 24)))
                {
                  goto LABEL_194;
                }

                HMAC_CTX_cleanup(&ctx);
                v70 = *&ctx.key[4];
                if (!*&ctx.key[4])
                {
LABEL_138:
                  if (*&ctx.key[20])
                  {
                    v89 = (*&ctx.key[20] - 8);
                    v88 = *(*&ctx.key[20] - 8);
                    if (v88 != -8)
                    {
                      bzero(v89, v88 + 8);
                    }

                    free(v89);
                  }

                  v21 = v69;
                  a4 = v114;
                  if (!v25)
                  {
                    goto LABEL_154;
                  }

                  goto LABEL_153;
                }

LABEL_136:
                v87 = *(v70 + 40);
                if (v87)
                {
                  v87(&ctx.key[4]);
                }

                goto LABEL_138;
              }

LABEL_40:
              if (a5)
              {
                if (a5 > 0xFFFFFFFFFFFFFFF7 || (v39 = malloc_type_malloc(a5 + 8, 0xB4E622C9uLL)) == 0)
                {
                  ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
                  v21 = 3;
                  if (!v25)
                  {
                    goto LABEL_154;
                  }

                  goto LABEL_153;
                }

                *v39 = a5;
                v40 = (v39 + 1);
                v14 = *a1;
              }

              else
              {
                v40 = 0;
              }

              *&ctx.key[4] = 0;
              v41 = (*(*(v14[14] + 744) + 16))();
              if (v41)
              {
                v21 = v41;
                if (a5 && a5 - 1 >= -v40)
                {
                  goto LABEL_193;
                }

                if (!v40)
                {
                  goto LABEL_69;
                }

                v112 = a5;
                v42 = v24;
                v43 = v23;
                v44 = a4;
                v45 = v41;
                v47 = *(v40 - 8);
                v46 = (v40 - 8);
                v48 = v47 + 8;
                if (v47 != -8)
                {
                  bzero(v46, v48);
                }

                free(v46);
                v21 = v45;
                a4 = v44;
                v23 = v43;
                v24 = v42;
                a5 = v112;
                if (!v25)
                {
                  goto LABEL_186;
                }
              }

              else
              {
                if (*&ctx.key[4] > a5)
                {
                  goto LABEL_194;
                }

                if (*&ctx.key[4] != a5 && *&ctx.key[4] - a5 <= v40 + *&ctx.key[4] - 1)
                {
                  goto LABEL_193;
                }

                v21 = 0;
                v115 = v40;
                v116 = *&ctx.key[4];
                if (!v25)
                {
                  goto LABEL_154;
                }
              }

LABEL_153:
              if ((*(a1 + 1618) & 0x10) == 0)
              {
LABEL_154:
                if (v21)
                {
                  goto LABEL_186;
                }

                v92 = v115;
                v93 = v116;
                goto LABEL_156;
              }

              if (v21)
              {
                if (v21 != 2)
                {
                  goto LABEL_186;
                }

                if (v23)
                {
                  *(v24 + 144) = 1;
                  v21 = 2;
                  v101 = v115;
                  v100 = v116;
                  if (v116)
                  {
                    goto LABEL_187;
                  }
                }

                else
                {
                  *(v24 + 241) = 1;
                  v21 = 2;
                  v101 = v115;
                  v100 = v116;
                  if (v116)
                  {
                    goto LABEL_187;
                  }
                }

                goto LABEL_188;
              }

              v92 = v115;
              v93 = v116;
              if (v23)
              {
                if ((bssl::Array<unsigned char>::CopyFrom(v24 + 128, v115, v116) & 1) == 0)
                {
LABEL_179:
                  v21 = 3;
                  v101 = v115;
                  v100 = v116;
                  if (v116)
                  {
                    goto LABEL_187;
                  }

                  goto LABEL_188;
                }
              }

              else
              {
                if (!bssl::Array<unsigned char>::CopyFrom(v24 + 224, v115, v116))
                {
                  goto LABEL_179;
                }

                *(v24 + 240) = *a3;
              }

LABEL_156:
              v94 = SSL_SESSION_from_bytes(v92, v93, v12[13]);
              if (v94)
              {
                v95 = v94->session_id[19];
                if (v95 < 0x21 || 32 - v95 > &v94->session_id[18])
                {
                  v94->session_id[19] = 32;
                  v96 = v94;
                  SHA256(a4, a5, &v94->master_key[39]);
                  v97 = a2->method;
                  a2->method = v96;
                  if (v97)
                  {
                    v98 = atomic_load(v97);
                    if (v98 != -1)
                    {
                      while (1)
                      {
                        if (!v98)
                        {
                          goto LABEL_194;
                        }

                        v99 = v98;
                        atomic_compare_exchange_strong(&v97->ssl_version, &v99, v98 - 1);
                        if (v99 == v98)
                        {
                          break;
                        }

                        v98 = v99;
                        if (v99 == -1)
                        {
                          goto LABEL_185;
                        }
                      }

                      if (v98 == 1)
                      {
                        ssl_session_st::~ssl_session_st(v97);
                        v103 = v97[-1].tlsext_tick_lifetime_hint;
                        v102 = &v97[-1].tlsext_tick_lifetime_hint;
                        v104 = v103 + 8;
                        if (v103 != -8)
                        {
                          bzero(v102, v104);
                        }

                        free(v102);
                      }
                    }
                  }

LABEL_185:
                  v21 = 0;
LABEL_186:
                  v101 = v115;
                  v100 = v116;
                  if (!v116)
                  {
                    goto LABEL_188;
                  }

LABEL_187:
                  if (v100 - 1 < -v101)
                  {
                    goto LABEL_188;
                  }
                }

LABEL_193:
                __break(1u);
LABEL_194:
                abort();
              }

              ERR_clear_error();
              v21 = 2;
              v101 = v115;
              v100 = v116;
              if (v116)
              {
                goto LABEL_187;
              }

LABEL_188:
              if (v101)
              {
                v105 = v21;
                v107 = *(v101 - 8);
                v106 = (v101 - 8);
                v108 = v107 + 8;
                if (v107 != -8)
                {
                  bzero(v106, v108);
                }

                free(v106);
                return v105;
              }

              return v21;
            }

LABEL_64:
            v21 = 2;
            goto LABEL_153;
          }

          v25 = 1;
          v23 = 1;
LABEL_39:
          v38 = v12[14];
          if (!*(v38 + 744))
          {
            goto LABEL_67;
          }

          goto LABEL_40;
        }

LABEL_28:
        if (v23 || !v25)
        {
          goto LABEL_39;
        }

        if ((*(a1 + 1618) & 0x10) != 0)
        {
          goto LABEL_66;
        }

        v33 = *(v24 + 232);
        if (!v33)
        {
          if ((*(v24 + 241) & 1) == 0)
          {
            goto LABEL_66;
          }

          goto LABEL_64;
        }

        v34 = *(v24 + 224);
        v116 = 0;
        if (v33 > 0xFFFFFFFFFFFFFFF7 || (v35 = malloc_type_malloc(v33 + 8, 0xB4E622C9uLL)) == 0)
        {
          ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
          v115 = 0;
          v21 = 3;
          goto LABEL_153;
        }

        *v35 = v33;
        v36 = v35 + 1;
        v115 = (v35 + 1);
        v116 = v33;
        if (v33 < 8)
        {
          v37 = v34;
          goto LABEL_147;
        }

        v37 = v34;
        if (v35 - v34 + 8 >= 0x20)
        {
          if (v33 < 0x20)
          {
            v63 = 0;
            goto LABEL_121;
          }

          v63 = v33 & 0xFFFFFFFFFFFFFFE0;
          v71 = (v34 + 16);
          v72 = v35 + 3;
          v73 = v33 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v74 = *v71;
            *(v72 - 1) = *(v71 - 1);
            *v72 = v74;
            v71 += 2;
            v72 += 2;
            v73 -= 32;
          }

          while (v73);
          if (v33 == v63)
          {
            goto LABEL_148;
          }

          if ((v33 & 0x18) != 0)
          {
LABEL_121:
            v36 += v33 & 0xFFFFFFFFFFFFFFF8;
            v37 = (v34 + (v33 & 0xFFFFFFFFFFFFFFF8));
            v75 = (v34 + v63);
            v76 = (v35 + v63 + 8);
            v77 = v63 - (v33 & 0xFFFFFFFFFFFFFFF8);
            do
            {
              v78 = *v75++;
              *v76++ = v78;
              v77 += 8;
            }

            while (v77);
            if (v33 == (v33 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_148;
            }

            goto LABEL_147;
          }

          v37 = (v34 + v63);
          v36 += v63;
        }

        do
        {
LABEL_147:
          v90 = *v37++;
          *v36++ = v90;
        }

        while (v37 != (v34 + v33));
LABEL_148:
        v21 = 0;
        *a3 = *(v24 + 240);
        goto LABEL_153;
      }
    }

    else if (v22 - 769 < 4)
    {
      goto LABEL_16;
    }

    v23 = 0;
    v115 = 0;
    v116 = 0;
    v24 = *(a1 + 1608);
    v25 = v24 != 0;
    goto LABEL_28;
  }

  return v21;
}

uint64_t bssl::tls1_parse_peer_sigalgs(unint64_t *a1, uint64_t a2)
{
  v2 = *(*(*a1 + 48) + 208);
  if (v2 - 769 >= 4)
  {
    if (v2 - 65276 >= 2)
    {
      return 1;
    }
  }

  else if (v2 < 0x303)
  {
    return 1;
  }

  if (*(a2 + 8))
  {
    return bssl::parse_u16_array(a2, a1 + 81);
  }

  else
  {
    return 0;
  }
}

uint64_t bssl::parse_u16_array(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 2544);
    return 0;
  }

  else
  {
    v3 = v2 >> 1;
    if (v2)
    {
      if (v2 <= 0xFFFFFFFFFFFFFFF7 && (v4 = *result, v5 = a2, (result = malloc_type_malloc(v2 + 8, 0xB4E622C9uLL)) != 0))
      {
        a2 = v5;
        *result = v2;
        v6 = result + 8;
        if (v3 <= 1)
        {
          v7 = 1;
        }

        else
        {
          v7 = v2 >> 1;
        }

        v8 = v7 - 1;
        if (v3 >= v7 - 1)
        {
          v9 = v7 - 1;
        }

        else
        {
          v9 = v2 >> 1;
        }

        if (v9 < 0x20)
        {
          goto LABEL_27;
        }

        if (v3 < v8)
        {
          v8 = v2 >> 1;
        }

        v10 = v8;
        if (v6 >= &v4[v10 + 1] || v4 >= result + v10 * 2 + 10)
        {
          v12 = v9 + 1;
          v13 = v12 & 0x1F;
          if ((v12 & 0x1F) == 0)
          {
            v13 = 32;
          }

          v14 = v12 - v13;
          v15 = (result + 40);
          v16 = (v4 + 16);
          v17 = v14;
          do
          {
            v18 = v16 - 32;
            v36 = vld2q_s8(v18);
            v37 = vld2q_s8(v16);
            __asm
            {
              SHLL2           V4.8H, V0.16B, #8
              SHLL2           V6.8H, V2.16B, #8
            }

            v15[-2] = vorrq_s8(vshll_n_s8(*v36.val[0].i8, 8uLL), vmovl_u8(*v36.val[1].i8));
            v15[-1] = vorrq_s8(_Q4, vmovl_high_u8(v36.val[1]));
            *v15 = vorrq_s8(vshll_n_s8(*v37.val[0].i8, 8uLL), vmovl_u8(*v37.val[1].i8));
            v15[1] = vorrq_s8(_Q6, vmovl_high_u8(v37.val[1]));
            v15 += 4;
            v16 += 64;
            v17 -= 32;
          }

          while (v17);
          v4 += v14;
        }

        else
        {
LABEL_27:
          v14 = 0;
        }

        v24 = v3 - v14;
        v25 = 2 * v14 + 8;
        v26 = v7 - v14;
        while (v24)
        {
          v27 = *v4++;
          *(result + v25) = bswap32(v27) >> 16;
          --v24;
          v25 += 2;
          if (!--v26)
          {
            goto LABEL_31;
          }
        }

        v35 = result;
        ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 2554);
        free(v35);
        return 0;
      }

      else
      {
        ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
        return 0;
      }
    }

    else
    {
      v6 = 0;
LABEL_31:
      v29 = *a2;
      v28 = a2[1];
      if (v28)
      {
        v30 = v29 - 2;
        while (1)
        {
          v30 += 2;
          if (!v30)
          {
            break;
          }

          if (!--v28)
          {
            goto LABEL_35;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_35:
        if (v29)
        {
          v31 = a2;
          v33 = *(v29 - 8);
          v32 = (v29 - 8);
          v34 = v33 + 8;
          if (v33 != -8)
          {
            bzero(v32, v34);
          }

          free(v32);
          a2 = v31;
        }

        *a2 = v6;
        a2[1] = v3;
        return 1;
      }
    }
  }

  return result;
}

uint64_t bssl::tls1_choose_signature_algorithm(bssl **a1, uint64_t a2, __int16 *a3)
{
  v3 = *(a2 + 4);
  if (v3 >= 2)
  {
    if (v3 - 2 >= 2)
    {
      abort();
    }

    v4 = 228;
    v5 = 4529;
    goto LABEL_36;
  }

  v7 = *a1;
  v8 = *(*(*a1 + 6) + 208);
  if (v8 - 769 < 4)
  {
    if (v8 <= 0x302)
    {
LABEL_21:
      v21 = *(*(a2 + 8) + 4);
      if (v21 == 6)
      {
        v22 = -255;
      }

      else
      {
        if (v21 != 408)
        {
          v4 = 253;
          v5 = 4538;
LABEL_36:
          ERR_put_error(16, 0, v4, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", v5);
          return 0;
        }

        v22 = 515;
      }

      *a3 = v22;
      return 1;
    }

LABEL_10:
    if (v3 == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  if (v8 != 65277)
  {
    if (v8 != 65276)
    {
      goto LABEL_21;
    }

    v8 = 772;
    goto LABEL_10;
  }

  v8 = 771;
  if (v3 == 1)
  {
LABEL_11:
    v9 = a1[85];
    v10 = a1[86];
    v11 = *(a2 + 40);
    if (v11)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_25:
  v10 = a1[82];
  if (v8 == 771 && v10 == 0)
  {
    v10 = 2;
    v9 = &bssl::tls1_choose_signature_algorithm(bssl::SSL_HANDSHAKE *,ssl_credential_st const*,unsigned short *)::kTLS12Default;
  }

  else
  {
    v9 = a1[81];
  }

  v11 = *(a2 + 40);
  if (v11)
  {
LABEL_12:
    v12 = *(a2 + 32);
    if (v10)
    {
      goto LABEL_13;
    }

LABEL_30:
    v23 = 2 * v11;
    do
    {
      v24 = *v12++;
      bssl::ssl_pkey_supports_algorithm(v7, *(a2 + 8), v24, 0);
      v23 -= 2;
    }

    while (v23);
LABEL_32:
    v4 = 253;
    v5 = 4574;
    goto LABEL_36;
  }

LABEL_29:
  v12 = &bssl::kSignSignatureAlgorithms;
  v11 = 12;
  if (!v10)
  {
    goto LABEL_30;
  }

LABEL_13:
  v14 = &v12[v11];
  v15 = 2 * v10;
  v16 = v9 + 2 * v10;
  while (1)
  {
    v17 = *v12;
    bssl::ssl_pkey_supports_algorithm(v7, *(a2 + 8), *v12, 0);
    if (v18)
    {
      v19 = v15;
      v20 = v9;
      while (*v20 != v17)
      {
        v20 += 2;
        v19 -= 2;
        if (!v19)
        {
          v20 = v16;
          break;
        }
      }

      if (v20 - v9 != v15)
      {
        break;
      }
    }

    if (++v12 == v14)
    {
      goto LABEL_32;
    }
  }

  *a3 = v17;
  return 1;
}

BIGNUM *bssl::tls1_verify_channel_id(const EVP_MD_CTX *a1, uint64_t a2)
{
  v49 = *MEMORY[0x277D85DE8];
  digest = a1->digest;
  v3 = *(a2 + 16);
  if (v3 < 2 || (v3 & 0xFFFFFFFFFFFFFFFELL) == 2 || (v4 = *(a2 + 8), v5 = v3 - 4, v6 = __rev16(v4[1]), v5 < v6) || v5 != 128 || ((v7 = __rev16(*v4), v6 == 128) ? (v8 = v7 == 30032) : (v8 = 0), !v8))
  {
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 4589);
    bssl::ssl_send_alert(digest, 2, 50);
    return 0;
  }

  v10 = EC_group_p256();
  v11 = ECDSA_SIG_new();
  v12 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (v12)
  {
    *v12 = 24;
    v12[1] = 0;
    v13 = (v12 + 1);
    v12[2] = 0;
    v12[3] = 0x100000000;
    v14 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
    if (v14)
    {
      goto LABEL_12;
    }

LABEL_17:
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v15 = 0;
    if (!v11)
    {
      goto LABEL_32;
    }

    goto LABEL_18;
  }

  ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  v13 = 0;
  v14 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (!v14)
  {
    goto LABEL_17;
  }

LABEL_12:
  *v14 = 24;
  v14[1] = 0;
  v15 = (v14 + 1);
  v14[2] = 0;
  v14[3] = 0x100000000;
  if (!v11)
  {
LABEL_32:
    result = 0;
    if (!v15)
    {
      goto LABEL_43;
    }

    goto LABEL_33;
  }

LABEL_18:
  if (!v13)
  {
    goto LABEL_32;
  }

  if (!v15)
  {
    result = 0;
    flags = v13->flags;
    if ((flags & 2) != 0)
    {
      goto LABEL_51;
    }

    goto LABEL_47;
  }

  result = BN_bin2bn(v4 + 4, 32, v13);
  if (result)
  {
    result = BN_bin2bn(v4 + 36, 32, v15);
    if (result)
    {
      result = BN_bin2bn(v4 + 68, 32, v11->r);
      if (result)
      {
        result = BN_bin2bn(v4 + 100, 32, v11->s);
        if (result)
        {
          v17 = EC_KEY_new();
          v18 = EC_POINT_new(v10);
          v19 = v18;
          if (!v17)
          {
            if (v18)
            {
              EC_POINT_free(v18);
            }

            result = 0;
            goto LABEL_33;
          }

          if (!v18)
          {
            v25 = 0;
LABEL_66:
            EC_KEY_free(v17);
            result = v25;
            goto LABEL_33;
          }

          if (EC_POINT_set_affine_coordinates_GFp(v10, v18, v13, v15, 0))
          {
            if (EC_KEY_set_group(v17, v10))
            {
              if (EC_KEY_set_public_key(v17, v19))
              {
                *dgst_len = 0;
                if (bssl::tls1_channel_id_hash(a1, dgst, dgst_len, v20))
                {
                  if (ECDSA_do_verify(dgst, dgst_len[0], v11, v17))
                  {
                    copy = digest->copy;
                    v22 = *(v4 + 2);
                    v23 = *(v4 + 10);
                    v24 = *(v4 + 26);
                    *(copy + 34) = *(v4 + 18);
                    *(copy + 35) = v24;
                    *(copy + 32) = v22;
                    *(copy + 33) = v23;
                    *(digest->copy + 110) |= 0x80u;
                    v25 = 1;
LABEL_65:
                    EC_POINT_free(v19);
                    goto LABEL_66;
                  }

                  ERR_put_error(16, 0, 129, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 4631);
                  bssl::ssl_send_alert(digest, 2, 51);
                }
              }
            }
          }

          v25 = 0;
          goto LABEL_65;
        }
      }
    }
  }

LABEL_33:
  v26 = v15->flags;
  if ((v26 & 2) == 0)
  {
    d = v15->d;
    if (v15->d)
    {
      v28 = result;
      v30 = *(d - 1);
      v29 = d - 1;
      v31 = v30 + 8;
      if (v30 != -8)
      {
        bzero(v29, v31);
      }

      free(v29);
      v26 = v15->flags;
      result = v28;
    }
  }

  if (v26)
  {
    v32 = result;
    v34 = *&v15[-1].neg;
    p_neg = &v15[-1].neg;
    v35 = v34 + 8;
    if (v34 != -8)
    {
      bzero(p_neg, v35);
    }

    free(p_neg);
    result = v32;
  }

  else
  {
    v15->d = 0;
  }

LABEL_43:
  if (v13)
  {
    flags = v13->flags;
    if ((flags & 2) != 0)
    {
LABEL_51:
      if (flags)
      {
        v42 = result;
        v44 = *&v13[-1].neg;
        v43 = &v13[-1].neg;
        v45 = v44 + 8;
        if (v44 != -8)
        {
          bzero(v43, v45);
        }

        free(v43);
        result = v42;
      }

      else
      {
        v13->d = 0;
      }

      goto LABEL_56;
    }

LABEL_47:
    v37 = v13->d;
    if (v13->d)
    {
      v38 = result;
      v40 = *(v37 - 1);
      v39 = v37 - 1;
      v41 = v40 + 8;
      if (v40 != -8)
      {
        bzero(v39, v41);
      }

      free(v39);
      flags = v13->flags;
      result = v38;
    }

    goto LABEL_51;
  }

LABEL_56:
  if (v11)
  {
    v46 = result;
    BN_BLINDING_free(v11);
    return v46;
  }

  return result;
}

uint64_t bssl::tls1_channel_id_hash(const EVP_MD_CTX *this, int8x16_t *a2, unsigned __int8 *a3, unint64_t *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  digest = this->digest;
  v7 = *(this->digest->copy + 104);
  if (v7 - 769 >= 4)
  {
    if (v7 == 65276)
    {
      goto LABEL_3;
    }

LABEL_12:
    memset(v33, 0, sizeof(v33));
    *v31 = xmmword_273BA6FA0;
    v32 = xmmword_273BA6FB0;
    v34 = 32;
    BCM_sha256_update(v31, "TLS Channel ID signature", 0x19uLL);
    if (*&digest->required_pkey_type[2])
    {
      BCM_sha256_update(v31, "Resumption", 0xBuLL);
      v12 = *&digest->required_pkey_type[2];
      if (!*(v12 + 344))
      {
        ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 4704);
        return 0;
      }

      BCM_sha256_update(v31, (v12 + 296), *(v12 + 344));
    }

    memset(&v29, 0, sizeof(v29));
    v13 = EVP_MD_CTX_copy_ex(&v29, this + 13);
    cert_verify_signature_input = v13 != 0;
    if (v13)
    {
      (v29.digest->update)(&v29, __src);
      pkey_type = v29.digest->pkey_type;
      final_high = HIDWORD(v29.digest->final);
      if (final_high)
      {
        bzero(v29.engine, final_high);
      }

      engine = v29.engine;
      if (!v29.engine)
      {
LABEL_19:
        md_data = v29.md_data;
        if (!v29.md_data)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    else
    {
      pkey_type = 0;
      engine = v29.engine;
      if (!v29.engine)
      {
        goto LABEL_19;
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
    md_data = v29.md_data;
    if (!v29.md_data)
    {
LABEL_21:
      if (!v13)
      {
        return cert_verify_signature_input;
      }

      BCM_sha256_update(v31, __src, pkey_type);
      v18 = v34;
      if (v34 > 0x20)
      {
LABEL_40:
        *a3 = 32;
        return cert_verify_signature_input;
      }

      v19 = *&v33[72];
      v33[*&v33[72] + 8] = 0x80;
      v20 = v19 + 1;
      if (v19 < 0x38)
      {
        if (v19 == 55)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v19 != 63)
        {
          bzero(&v33[v20 + 8], 63 - v19);
        }

        sha256_block_data_order(v31, &v33[8], 1);
        v20 = 0;
      }

      bzero(&v33[v20 + 8], 56 - v20);
LABEL_35:
      *&v33[64] = vrev64_s32(vrev32_s8(*v33));
      sha256_block_data_order(v31, &v33[8], 1);
      memset(&v33[8], 0, 68);
      if (v18 >= 4)
      {
        if (v18 == 32)
        {
          v24 = vrev32q_s8(v32);
          *a2 = vrev32q_s8(*v31);
          a2[1] = v24;
        }

        else
        {
          v25 = v18 >> 2;
          v26 = v31;
          do
          {
            v27 = *v26++;
            a2->i32[0] = bswap32(v27);
            a2 = (a2 + 4);
            --v25;
          }

          while (v25);
        }
      }

      goto LABEL_40;
    }

LABEL_20:
    (*md_data)(v29.flags);
    goto LABEL_21;
  }

  if (v7 < 0x304)
  {
    goto LABEL_12;
  }

LABEL_3:
  memset(v31, 0, sizeof(v31));
  cert_verify_signature_input = bssl::tls13_get_cert_verify_signature_input(this, v31, 2u);
  if (cert_verify_signature_input)
  {
    SHA256(*v31, *&v31[2], a2);
    *a3 = 32;
  }

  if (*&v31[2] && (*&v31[2] - 1) >= -*v31)
  {
    __break(1u);
  }

  if (*v31)
  {
    v10 = (*v31 - 8);
    v9 = *(*v31 - 8);
    if (v9 != -8)
    {
      bzero(v10, v9 + 8);
    }

    free(v10);
  }

  return cert_verify_signature_input;
}

uint64_t bssl::tls1_write_channel_id(const EVP_MD_CTX *a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v43 = 0;
  result = bssl::tls1_channel_id_hash(a1, v45, &v43, a4);
  if (!result)
  {
    return result;
  }

  v7 = *(a1->engine + 18);
  if (*(v7 + 4) != 408)
  {
    ERR_put_error(6, 0, 106, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_ec_asn1.cc", 274);
    goto LABEL_19;
  }

  v8 = *(v7 + 8);
  if (!v8)
  {
LABEL_19:
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 4650);
    return 0;
  }

  v9 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (v9)
  {
    *v9 = 24;
    v9[1] = 0;
    v10 = (v9 + 1);
    v9[2] = 0;
    v9[3] = 0x100000000;
    v11 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_23:
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v12 = 0;
    if (v10)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

  ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  v10 = 0;
  v11 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (!v11)
  {
    goto LABEL_23;
  }

LABEL_6:
  *v11 = 24;
  v11[1] = 0;
  v12 = (v11 + 1);
  v11[2] = 0;
  v11[3] = 0x100000000;
  if (!v10)
  {
LABEL_24:
    if (v12)
    {
      flags = v12->flags;
      if ((flags & 2) == 0)
      {
        d = v12->d;
        if (v12->d)
        {
          v18 = *(d - 1);
          v17 = d - 1;
          v19 = v18 + 8;
          if (v18 != -8)
          {
            bzero(v17, v19);
          }

          free(v17);
          flags = v12->flags;
        }
      }

      if ((flags & 1) == 0)
      {
        result = 0;
        v12->d = 0;
        return result;
      }

      v21 = *&v12[-1].neg;
      p_neg = &v12[-1].neg;
      v22 = v21 + 8;
      if (v21 != -8)
      {
        bzero(p_neg, v22);
      }

      free(p_neg);
    }

    return 0;
  }

LABEL_7:
  if (v12)
  {
    result = EC_POINT_get_affine_coordinates_GFp(*v8, v8[1], v10, v12, 0);
    if (result)
    {
      v44 = 0;
      result = ecdsa_sign_fixed(v45, v43, v46, &v44, 0x84uLL, v8);
      if (result)
      {
        result = ecdsa_sig_from_fixed(v8, v46, v44);
        if (result)
        {
          v13 = result;
          *v46 = 0;
          v14 = CBB_add_space(a2, v46, 2) && (*(*v46 + 1) = 80, **v46 = 117, CBB_add_u16_length_prefixed(a2, v46)) && BN_bn2cbb_padded(v46, 0x20uLL, v10) && BN_bn2cbb_padded(v46, 0x20uLL, v12) && BN_bn2cbb_padded(v46, 0x20uLL, *v13) && BN_bn2cbb_padded(v46, 0x20uLL, v13[1]) && CBB_flush(a2) != 0;
          BN_BLINDING_free(v13);
          result = v14;
        }
      }
    }

    v23 = v12->flags;
    if ((v23 & 2) == 0)
    {
      v24 = v12->d;
      if (v12->d)
      {
        v25 = result;
        v27 = *(v24 - 1);
        v26 = v24 - 1;
        v28 = v27 + 8;
        if (v27 != -8)
        {
          bzero(v26, v28);
        }

        free(v26);
        v23 = v12->flags;
        result = v25;
      }
    }

    if (v23)
    {
      v29 = result;
      v31 = *&v12[-1].neg;
      v30 = &v12[-1].neg;
      v32 = v31 + 8;
      if (v31 != -8)
      {
        bzero(v30, v32);
      }

      free(v30);
      result = v29;
    }

    else
    {
      v12->d = 0;
    }
  }

  else
  {
    result = 0;
  }

  v33 = v10->flags;
  if ((v33 & 2) == 0)
  {
    v34 = v10->d;
    if (v10->d)
    {
      v35 = result;
      v37 = *(v34 - 1);
      v36 = v34 - 1;
      v38 = v37 + 8;
      if (v37 != -8)
      {
        bzero(v36, v38);
      }

      free(v36);
      v33 = v10->flags;
      result = v35;
    }
  }

  if (v33)
  {
    v39 = result;
    v41 = *&v10[-1].neg;
    v40 = &v10[-1].neg;
    v42 = v41 + 8;
    if (v41 != -8)
    {
      bzero(v40, v42);
    }

    free(v40);
    return v39;
  }

  else
  {
    v10->d = 0;
  }

  return result;
}

const EVP_MD_CTX *bssl::tls1_record_handshake_hashes_for_channel_id(const EVP_MD_CTX *result)
{
  if (*&result->digest->required_pkey_type[2])
  {
    return 0;
  }

  flags = result[48].flags;
  v2 = flags + 296;
  pkey_type = result[13].digest->pkey_type;
  v4 = *(flags + 344);
  v6 = pkey_type - v4;
  v5 = pkey_type == v4;
  if (pkey_type <= v4)
  {
    v7 = result;
    if (!v5 && v6 <= v2 + pkey_type - 1)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v7 = result;
    if (pkey_type >= 0x31)
    {
      abort();
    }
  }

  *(flags + 344) = pkey_type;
  memset(&v13, 0, sizeof(v13));
  v8 = EVP_MD_CTX_copy_ex(&v13, v7 + 13);
  v9 = v8 != 0;
  if (v8)
  {
    (v13.digest->update)(&v13, v2);
    final_high = HIDWORD(v13.digest->final);
    if (final_high)
    {
      bzero(v13.engine, final_high);
    }
  }

  if (v13.engine)
  {
    v12 = v13.engine - 8;
    v11 = *(v13.engine - 1);
    if (v11 != -8)
    {
      bzero(v12, v11 + 8);
    }

    free(v12);
  }

  if (v13.md_data)
  {
    (*v13.md_data)(v13.flags);
  }

  return v9;
}

void (****std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::~unique_ptr[abi:sn200100](void (****result)(void)))(void)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    (**v1)(v1);
    v4 = *(v1 - 1);
    v3 = v1 - 1;
    v5 = v4 + 8;
    if (v4 != -8)
    {
      bzero(v3, v5);
    }

    free(v3);
    return v2;
  }

  return result;
}

uint64_t bssl::ext_sni_add_clienthello(void *a1, uint64_t *a2, uint64_t a3, int a4)
{
  if (a4 == 2)
  {
    v5 = a1[197];
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);
    v11[0] = 0;
    result = CBB_add_space(a2, v11, 2);
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  v6 = *(*a1 + 144);
  if (!v6)
  {
    return 1;
  }

  v7 = strlen(*(*a1 + 144));
  v11[0] = 0;
  result = CBB_add_space(a2, v11, 2);
  if (result)
  {
LABEL_6:
    *(v11[0] + 1) = 0;
    *v11[0] = 0;
    result = CBB_add_u16_length_prefixed(a2, v11);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v11, v10);
      if (result)
      {
        v9[0] = 0;
        result = CBB_add_space(v10, v9, 1);
        if (result)
        {
          *v9[0] = 0;
          result = CBB_add_u16_length_prefixed(v10, v9);
          if (result)
          {
            v12 = 0;
            result = CBB_add_space(v9, &v12, v7);
            if (result)
            {
              if (v7)
              {
                memcpy(v12, v6, v7);
              }

              return CBB_flush(a2) != 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_sni_add_serverhello(_BYTE *a1, uint64_t a2)
{
  if ((*(*(*a1 + 48) + 220) & 0x20) != 0)
  {
    return 1;
  }

  if ((a1[1617] & 1) == 0)
  {
    return 1;
  }

  v5 = 0;
  result = CBB_add_space(a2, &v5, 2);
  if (result)
  {
    v5[1] = 0;
    *v5 = 0;
    v5 = 0;
    v4 = CBB_add_space(a2, &v5, 2);
    result = v4 != 0;
    if (v4)
    {
      v5[1] = 0;
      *v5 = 0;
    }
  }

  return result;
}

uint64_t bssl::ext_ech_add_clienthello(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  if (a4 == 1)
  {
    v11[0] = 0;
    result = CBB_add_space(a2, v11, 2);
    if (result)
    {
      *(v11[0] + 1) = 13;
      *v11[0] = -2;
      v11[0] = 0;
      result = CBB_add_space(a2, v11, 2);
      if (result)
      {
        *(v11[0] + 1) = 1;
        *v11[0] = 0;
        v11[0] = 0;
        v6 = CBB_add_space(a2, v11, 1);
        result = v6 != 0;
        if (v6)
        {
          *v11[0] = 1;
        }
      }
    }
  }

  else if (*(a1 + 576))
  {
    v11[0] = 0;
    result = CBB_add_space(a2, v11, 2);
    if (result)
    {
      *(v11[0] + 1) = 13;
      *v11[0] = -2;
      result = CBB_add_u16_length_prefixed(a2, v11);
      if (result)
      {
        v12 = 0;
        result = CBB_add_space(v11, &v12, 1);
        if (result)
        {
          *v12 = 0;
          v8 = a1;
          v9 = *(a1 + 568);
          v10 = *(v8 + 576);
          v12 = 0;
          result = CBB_add_space(v11, &v12, v10);
          if (result)
          {
            if (v10)
            {
              memcpy(v12, v9, v10);
            }

            return CBB_flush(a2) != 0;
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

uint64_t bssl::ext_ech_parse_serverhello(void *a1, char *a2, uint64_t *a3)
{
  if (!a3)
  {
    return 1;
  }

  v6 = *a1;
  v7 = *(*a1 + 48);
  v8 = *(v7 + 208);
  if (v8 - 769 >= 4)
  {
    if (v8 != 65276)
    {
LABEL_8:
      *a2 = 110;
      ERR_put_error(16, 0, 222, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 606);
      return 0;
    }
  }

  else if (v8 < 0x304)
  {
    goto LABEL_8;
  }

  if (*(v7 + 216) == 1)
  {
    goto LABEL_8;
  }

  v10 = a3[1];
  v11 = v10 >= 2;
  v12 = v10 - 2;
  if (v11)
  {
    v13 = __rev16(**a3);
    if (v12 >= v13)
    {
      v42 = (*a3 + 2);
      v43 = v13;
      if (v13 && v12 == v13)
      {
        do
        {
          v41 = 0;
          memset(v40, 0, sizeof(v40));
          v17 = bssl::parse_ech_config(&v42, v40, &v39, 0);
          v18 = *&v40[0];
          if (*(&v40[0] + 1))
          {
            v19 = *(&v40[0] + 1) - 1;
            if ((*(&v40[0] + 1) - 1) >= -*&v40[0])
            {
              goto LABEL_50;
            }
          }

          if (*&v40[0])
          {
            v21 = (*&v40[0] - 8);
            v20 = *(*&v40[0] - 8);
            if (v20 != -8)
            {
              bzero((*&v40[0] - 8), v20 + 8);
            }

            free(v21);
          }

          if ((v17 & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        while (v43);
        if (*(*(v6 + 48) + 216) != 2)
        {
          return 1;
        }

        v17 = *a3;
        v18 = a3[1];
        v22 = a1[73];
        v23 = a1[74];
        if (v23 && (v19 = v23 - 1, v19 >= -v22))
        {
LABEL_50:
          __break(1u);
        }

        else
        {
          v24 = a1 + 73;
          if (v22)
          {
            v26 = *(v22 - 8);
            v25 = (v22 - 8);
            v27 = v26 + 8;
            if (v26 != -8)
            {
              bzero(v25, v27);
            }

            free(v25);
          }

          *v24 = 0;
          a1[74] = 0;
          if (!v18)
          {
            return 1;
          }

          if (v18 > 0xFFFFFFFFFFFFFFF7 || (v28 = malloc_type_malloc(v18 + 8, 0xB4E622C9uLL)) == 0)
          {
            ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
            result = 0;
            *v24 = 0;
            v15 = 80;
            goto LABEL_17;
          }

          *v28 = v18;
          v19 = (v28 + 1);
          a1[73] = v28 + 1;
          a1[74] = v18;
          if (v18 < 8)
          {
            v29 = v17;
            goto LABEL_52;
          }

          v29 = v17;
          if (v28 - v17 + 8 < 0x20)
          {
LABEL_52:
            result = 1;
            do
            {
              v38 = *v29++;
              *v19++ = v38;
            }

            while (v29 != (v17 + v18));
            return result;
          }

          if (v18 < 0x20)
          {
            v16 = 0;
LABEL_46:
            v19 += v18 & 0xFFFFFFFFFFFFFFF8;
            v29 = (v17 + (v18 & 0xFFFFFFFFFFFFFFF8));
            v34 = (v17 + v16);
            v35 = (v28 + v16 + 8);
            v36 = v16 - (v18 & 0xFFFFFFFFFFFFFFF8);
            do
            {
              v37 = *v34++;
              *v35++ = v37;
              v36 += 8;
            }

            while (v36);
            if (v18 != (v18 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_52;
            }

            return 1;
          }

          v16 = v18 & 0xFFFFFFFFFFFFFFE0;
          v30 = (v17 + 16);
          v31 = v28 + 3;
          v32 = v18 & 0xFFFFFFFFFFFFFFE0;
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
          if (v18 == v16)
          {
            return 1;
          }

          if ((v18 & 0x18) != 0)
          {
            goto LABEL_46;
          }
        }

        v29 = (v17 + v16);
        v19 += v16;
        goto LABEL_52;
      }
    }
  }

LABEL_16:
  result = 0;
  v15 = 50;
LABEL_17:
  *a2 = v15;
  return result;
}

uint64_t bssl::ext_ech_parse_clienthello(uint64_t a1, uint64_t a2, unsigned __int8 **a3)
{
  if (a3)
  {
    v3 = a3[1];
    if (!v3)
    {
      return 0;
    }

    v4 = *a3;
    v5 = v3 - 1;
    ++*a3;
    a3[1] = v5;
    v6 = *v4;
    if (v6)
    {
      if (v6 != 1 || v5 != 0)
      {
        return 0;
      }

      *(a1 + 1616) |= 1u;
    }
  }

  return 1;
}

uint64_t bssl::ext_ech_add_serverhello(void *a1, uint64_t *a2)
{
  v3 = *(*a1 + 48);
  v4 = *(v3 + 208);
  if (v4 - 769 >= 4)
  {
    if (v4 != 65276)
    {
      return 1;
    }
  }

  else if (v4 < 0x304)
  {
    return 1;
  }

  if (*(v3 + 216) == 1 || !a1[196])
  {
    return 1;
  }

  v15[0] = 0;
  result = CBB_add_space(a2, v15, 2);
  if (result)
  {
    *(v15[0] + 1) = 13;
    *v15[0] = -2;
    result = CBB_add_u16_length_prefixed(a2, v15);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v15, v14);
      if (result)
      {
        v7 = a1[196];
        v8 = *(v7 + 16);
        if (v8)
        {
          v9 = *(v7 + 8);
          for (i = 8 * v8; i; i -= 8)
          {
            v11 = *v9;
            if (*(*v9 + 184) == 1)
            {
              v12 = *v11;
              v13 = *(v11 + 8);
              v16 = 0;
              result = CBB_add_space(v14, &v16, v13);
              if (!result)
              {
                return result;
              }

              if (v13)
              {
                memcpy(v16, v12, v13);
              }
            }

            ++v9;
          }
        }

        return CBB_flush(a2) != 0;
      }
    }
  }

  return result;
}

uint64_t bssl::ext_ems_add_clienthello(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = 1;
  if (a4 != 1 && *(a1 + 28) <= 0x303u)
  {
    v10[3] = v4;
    v10[4] = v5;
    v10[0] = 0;
    result = CBB_add_space(a2, v10, 2);
    if (result)
    {
      *(v10[0] + 1) = 23;
      *v10[0] = 0;
      v10[0] = 0;
      v9 = CBB_add_space(a2, v10, 2);
      result = v9 != 0;
      if (v9)
      {
        *(v10[0] + 1) = 0;
        *v10[0] = 0;
      }
    }
  }

  return result;
}

uint64_t bssl::ext_ems_parse_serverhello(uint64_t *a1, _BYTE *a2, uint64_t a3)
{
  v3 = *a1;
  if (a3)
  {
    v4 = *(*(v3 + 48) + 208);
    if (v4 - 769 >= 4)
    {
      if (v4 == 65276)
      {
        return 0;
      }
    }

    else if (v4 > 0x303)
    {
      return 0;
    }

    if (*(a3 + 8))
    {
      return 0;
    }

    *(a1 + 404) |= 0x20000u;
  }

  v6 = *(*(v3 + 48) + 464);
  if (!v6 || ((*(a1 + 404) >> 17) & 1) == (*(v6 + 408) & 1))
  {
    return 1;
  }

  ERR_put_error(16, 0, 263, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 870);
  result = 0;
  *a2 = 47;
  return result;
}

uint64_t bssl::ext_ems_parse_clienthello(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = *(*(*a1 + 48) + 208);
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
        goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v4 - 769 < 4)
  {
LABEL_3:
    v3 = v4 > 0x303;
  }

LABEL_4:
  if (a3 && !v3)
  {
    if (*(a3 + 8))
    {
      return 0;
    }

    a1[404] |= 0x20000u;
  }

  return 1;
}

uint64_t bssl::ext_ems_add_serverhello(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 1618) & 2) == 0)
  {
    return 1;
  }

  v7[3] = v2;
  v7[4] = v3;
  v7[0] = 0;
  result = CBB_add_space(a2, v7, 2);
  if (result)
  {
    *(v7[0] + 1) = 23;
    *v7[0] = 0;
    v7[0] = 0;
    v6 = CBB_add_space(a2, v7, 2);
    result = v6 != 0;
    if (v6)
    {
      *(v7[0] + 1) = 0;
      *v7[0] = 0;
    }
  }

  return result;
}

uint64_t bssl::ext_ri_add_clienthello(uint64_t *a1, uint64_t *a2, uint64_t a3, int a4)
{
  result = 1;
  if (a4 != 1 && *(a1 + 14) <= 0x303u)
  {
    v14[5] = v4;
    v14[6] = v5;
    v9 = *a1;
    v13[0] = 0;
    result = CBB_add_space(a2, v13, 2);
    if (result)
    {
      *(v13[0] + 1) = 1;
      *v13[0] = -1;
      result = CBB_add_u16_length_prefixed(a2, v13);
      if (result)
      {
        result = CBB_add_u8_length_prefixed(v13, v12);
        if (result)
        {
          v10 = *(v9 + 48);
          v11 = *(v10 + 447);
          v14[0] = 0;
          result = CBB_add_space(v12, v14, v11);
          if (result)
          {
            if (v11)
            {
              memcpy(v14[0], (v10 + 435), v11);
            }

            return CBB_flush(a2) != 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_ri_parse_serverhello(uint64_t a1, _BYTE *a2, uint64_t *a3)
{
  v3 = *(*a1 + 48);
  if (a3)
  {
    v4 = *(v3 + 208);
    if (v4 - 769 >= 4)
    {
      if (v4 == 65276)
      {
        goto LABEL_4;
      }
    }

    else if (v4 >= 0x304)
    {
LABEL_4:
      result = 0;
      *a2 = 47;
      return result;
    }
  }

  v6 = *(v3 + 220);
  if ((v6 & 0x10) != 0 && (a3 != 0) == ((v6 & 0x40) == 0))
  {
    *a2 = 40;
    ERR_put_error(16, 0, 202, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 718);
    return 0;
  }

  if (!a3)
  {
    return 1;
  }

  v7 = a3[1];
  if (!v7 || (v8 = *a3, v9 = *a3 + 1, *a3 = v9, a3[1] = (v7 - 1), v10 = *v8, (v7 - 1) < v10) || (*a3 = v9 + v10, a3[1] = &v7[-v10 - 1], v7 - 1 != v10))
  {
    ERR_put_error(16, 0, 201, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 743);
    result = 0;
    *a2 = 47;
    return result;
  }

  v11 = *(v3 + 447);
  if (v10 < v11 || (v12 = &v7[-v11 - 1], v12 != *(v3 + 460)))
  {
    v16 = a2;
    v17 = 755;
LABEL_20:
    ERR_put_error(16, 0, 202, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", v17);
    result = 0;
    *v16 = 40;
    return result;
  }

  if (*(v3 + 447))
  {
    if (v11 < 8)
    {
      v13 = 0;
      v14 = 0;
      goto LABEL_35;
    }

    if (v11 >= 0x20)
    {
      v13 = v11 & 0xE0;
      v18 = veorq_s8(*(v3 + 435), *(v8 + 1));
      v19 = veorq_s8(*(v3 + 451), *(v8 + 17));
      if (v13 != 32)
      {
        v18 = vorrq_s8(veorq_s8(*(v3 + 467), *(v8 + 33)), v18);
        v19 = vorrq_s8(veorq_s8(*(v3 + 483), *(v8 + 49)), v19);
        if (v13 != 64)
        {
          v18 = vorrq_s8(veorq_s8(*(v3 + 499), *(v8 + 65)), v18);
          v19 = vorrq_s8(veorq_s8(*(v3 + 515), *(v8 + 81)), v19);
          if (v13 != 96)
          {
            v18 = vorrq_s8(veorq_s8(*(v3 + 531), *(v8 + 97)), v18);
            v19 = vorrq_s8(veorq_s8(*(v3 + 547), *(v8 + 113)), v19);
            if (v13 != 128)
            {
              v18 = vorrq_s8(veorq_s8(*(v3 + 563), *(v8 + 129)), v18);
              v19 = vorrq_s8(veorq_s8(*(v3 + 579), *(v8 + 145)), v19);
              if (v13 != 160)
              {
                v18 = vorrq_s8(veorq_s8(*(v3 + 595), *(v8 + 161)), v18);
                v19 = vorrq_s8(veorq_s8(*(v3 + 611), *(v8 + 177)), v19);
                if (v13 != 192)
                {
                  v18 = vorrq_s8(veorq_s8(*(v3 + 627), *(v8 + 193)), v18);
                  v19 = vorrq_s8(veorq_s8(*(v3 + 643), *(v8 + 209)), v19);
                }
              }
            }
          }
        }
      }

      v20 = vorrq_s8(v19, v18);
      *v20.i8 = vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
      v21 = v20.i64[0] | HIDWORD(v20.i64[0]) | ((v20.i64[0] | HIDWORD(v20.i64[0])) >> 16);
      v14 = v21 | BYTE1(v21);
      if (v13 == v11)
      {
        goto LABEL_37;
      }

      if ((v11 & 0x18) == 0)
      {
LABEL_35:
        v31 = v11 - v13;
        v32 = (v13 + v3 + 435);
        v33 = &v8[v13 + 1];
        do
        {
          v35 = *v33++;
          v34 = v35;
          v36 = *v32++;
          v14 |= v36 ^ v34;
          --v31;
        }

        while (v31);
        goto LABEL_37;
      }
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }

    v22 = v13;
    v23 = v14;
    v13 = v11 & 0xF8;
    v24 = &v8[v22 + 1];
    v25 = (v22 + v3 + 435);
    v26 = v22 - v13;
    do
    {
      v27 = *v24++;
      v28 = v27;
      v29 = *v25++;
      v23 = vorr_s8(veor_s8(v29, v28), v23);
      v26 += 8;
    }

    while (v26);
    v30 = *&v23 | HIDWORD(*&v23) | ((*&v23 | HIDWORD(*&v23)) >> 16);
    v14 = v30 | BYTE1(v30);
    if (v13 != v11)
    {
      goto LABEL_35;
    }

LABEL_37:
    if (v14)
    {
LABEL_54:
      v16 = a2;
      v17 = 769;
      goto LABEL_20;
    }
  }

  if (*(v3 + 460))
  {
    if (v12 < 8)
    {
      v37 = 0;
      v38 = 0;
      goto LABEL_50;
    }

    if (v12 >= 0x20)
    {
      v37 = v12 & 0xFFFFFFFFFFFFFFE0;
      v39 = &v8[v11 + 17];
      v40 = (v3 + 464);
      v41 = 0uLL;
      v42 = v12 & 0xFFFFFFFFFFFFFFE0;
      v43 = 0uLL;
      do
      {
        v41 = vorrq_s8(veorq_s8(v40[-1], v39[-1]), v41);
        v43 = vorrq_s8(veorq_s8(*v40, *v39), v43);
        v39 += 2;
        v40 += 2;
        v42 -= 32;
      }

      while (v42);
      v44 = vorrq_s8(v43, v41);
      *v44.i8 = vorr_s8(*v44.i8, *&vextq_s8(v44, v44, 8uLL));
      v45 = v44.i64[0] | HIDWORD(v44.i64[0]) | ((v44.i64[0] | HIDWORD(v44.i64[0])) >> 16);
      v38 = v45 | BYTE1(v45);
      if (v12 == v37)
      {
        goto LABEL_53;
      }

      if ((v12 & 0x18) == 0)
      {
LABEL_50:
        v55 = v37 + v11 + 1;
        v56 = v55 - v7;
        v57 = (v37 + v3 + 448);
        v58 = &v8[v55];
        do
        {
          v60 = *v58++;
          v59 = v60;
          v61 = *v57++;
          v38 |= v61 ^ v59;
        }

        while (!__CFADD__(v56++, 1));
        goto LABEL_53;
      }
    }

    else
    {
      v38 = 0;
      v37 = 0;
    }

    v46 = v37;
    v37 = v12 & 0xFFFFFFFFFFFFFFF8;
    v47 = v38;
    v48 = &v8[v46 + 1 + v11];
    v49 = (v46 + v3 + 448);
    v50 = v46 - (v12 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v51 = *v48++;
      v52 = v51;
      v53 = *v49++;
      v47 = vorr_s8(veor_s8(v53, v52), v47);
      v50 += 8;
    }

    while (v50);
    v54 = *&v47 | HIDWORD(*&v47) | ((*&v47 | HIDWORD(*&v47)) >> 16);
    v38 = v54 | BYTE1(v54);
    if (v12 != v37)
    {
      goto LABEL_50;
    }

LABEL_53:
    if (v38)
    {
      goto LABEL_54;
    }
  }

  *(v3 + 220) |= 0x40u;
  return 1;
}

uint64_t bssl::ext_ri_parse_clienthello(uint64_t a1, _BYTE *a2, uint64_t *a3)
{
  v3 = 0;
  v4 = *(*a1 + 48);
  v5 = *(v4 + 208);
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
        goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v5 - 769 < 4)
  {
LABEL_3:
    v3 = v5 > 0x303;
  }

LABEL_4:
  result = 1;
  if (a3 && !v3)
  {
    v7 = a3[1];
    if (v7 && (v8 = *a3, v9 = *a3 + 1, v10 = v7 - 1, *a3 = v9, a3[1] = (v7 - 1), v11 = *v8, v10 >= v11) && (*a3 = v9 + v11, a3[1] = &v10[-v11], v10 == v11))
    {
      if (v11)
      {
        ERR_put_error(16, 0, 202, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 803);
        result = 0;
        *a2 = 40;
      }

      else
      {
        *(v4 + 220) |= 0x40u;
      }
    }

    else
    {
      ERR_put_error(16, 0, 201, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 796);
      return 0;
    }
  }

  return result;
}

uint64_t bssl::ext_ri_add_serverhello(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*a1 + 48) + 208);
  if (v3 - 769 >= 4)
  {
    if (v3 == 65276)
    {
      return 1;
    }
  }

  else if (v3 > 0x303)
  {
    return 1;
  }

  v6 = 0;
  result = CBB_add_space(a2, &v6, 2);
  if (result)
  {
    v6[1] = 1;
    *v6 = -1;
    v6 = 0;
    result = CBB_add_space(a2, &v6, 2);
    if (result)
    {
      v6[1] = 1;
      *v6 = 0;
      v6 = 0;
      v5 = CBB_add_space(a2, &v6, 1);
      result = v5 != 0;
      if (v5)
      {
        *v6 = 0;
      }
    }
  }

  return result;
}

uint64_t bssl::ext_supported_groups_add_clienthello(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  if (a1[212])
  {
    return 1;
  }

  v18[9] = v3;
  v18[10] = v4;
  v8 = *a1;
  v17[0] = 0;
  result = CBB_add_space(a3, v17, 2);
  if (result)
  {
    *(v17[0] + 1) = 10;
    *v17[0] = 0;
    result = CBB_add_u16_length_prefixed(a3, v17);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v17, v16);
      if (result)
      {
        if ((*(*(v8 + 104) + 792) & 0x20) != 0)
        {
          v9 = *(a1 + 1663);
          v18[0] = 0;
          result = CBB_add_space(v16, v18, 2);
          if (!result)
          {
            return result;
          }

          *(v18[0] + 1) = v9 & 0xF0 | 0xA;
          *v18[0] = v9 & 0xF0 | 0xA;
        }

        v10 = a1[1];
        v11 = *(v10 + 136);
        if (v11)
        {
          v12 = *(v10 + 128);
        }

        else
        {
          v12 = &bssl::kDefaultGroups;
          v11 = 3;
        }

        v13 = 2 * v11;
        do
        {
          v14 = *v12;
          v15 = v14 == 25497 || v14 == 4588;
          if (!v15 || *(a1 + 15) >= 0x304u)
          {
            v18[0] = 0;
            result = CBB_add_space(v16, v18, 2);
            if (!result)
            {
              return result;
            }

            *(v18[0] + 1) = v14;
            *v18[0] = BYTE1(v14);
          }

          ++v12;
          v13 -= 2;
        }

        while (v13);
        return CBB_flush(a3) != 0;
      }
    }
  }

  return result;
}

uint64_t bssl::ext_supported_groups_parse_clienthello(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!a3)
  {
    return 1;
  }

  v5 = a3[1];
  v6 = v5 >= 2;
  v7 = v5 - 2;
  if (!v6)
  {
    return 0;
  }

  v13[2] = v3;
  v13[3] = v4;
  v9 = *a3;
  v10 = *a3 + 2;
  *a3 = v10;
  a3[1] = v7;
  v11 = __rev16(*v9);
  if (v7 < v11)
  {
    return 0;
  }

  *a3 = v10 + v11;
  a3[1] = v7 - v11;
  v13[0] = v10;
  v13[1] = v11;
  if (v11)
  {
    v12 = v7 == v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    return bssl::parse_u16_array(v13, (a1 + 664));
  }

  else
  {
    return 0;
  }
}

uint64_t bssl::ext_ec_point_add_clienthello(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  result = 1;
  if (a4 != 1 && *(a1 + 28) <= 0x303u)
  {
    v11[3] = v4;
    v11[4] = v5;
    v10[0] = 0;
    result = CBB_add_space(a2, v10, 2);
    if (result)
    {
      *(v10[0] + 1) = 11;
      *v10[0] = 0;
      result = CBB_add_u16_length_prefixed(a2, v10);
      if (result)
      {
        result = CBB_add_u8_length_prefixed(v10, v9);
        if (result)
        {
          v11[0] = 0;
          result = CBB_add_space(v9, v11, 1);
          if (result)
          {
            *v11[0] = 0;
            return CBB_flush(a2) != 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_ec_point_parse_serverhello(uint64_t a1, _BYTE *a2, unsigned __int8 **a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = *(*(*a1 + 48) + 208);
  if (v3 - 769 >= 4)
  {
    if (v3 == 65276)
    {
      return 0;
    }
  }

  else if (v3 > 0x303)
  {
    return 0;
  }

  v4 = a3[1];
  if (!v4)
  {
    return 0;
  }

  v5 = *a3;
  v6 = (*a3 + 1);
  v7 = (v4 - 1);
  *a3 = v6;
  a3[1] = v7;
  v8 = *v5;
  if (v7 < v8)
  {
    return 0;
  }

  *a3 = &v6[v8];
  a3[1] = (v7 - v8);
  if (v7 != v8)
  {
    return 0;
  }

  if (v8)
  {
    v9 = a2;
    v10 = memchr(v6, 0, v7);
    a2 = v9;
    if (v10)
    {
      return 1;
    }
  }

  result = 0;
  *a2 = 47;
  return result;
}

uint64_t bssl::ext_ec_point_parse_clienthello(uint64_t a1, _BYTE *a2, unsigned __int8 **a3)
{
  v3 = 0;
  v4 = *(*(*a1 + 48) + 208);
  if (v4 > 0xFEFB)
  {
    switch(v4)
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
        goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = *(*(*a1 + 48) + 208);
  if (v4 - 769 < 4)
  {
LABEL_3:
    v3 = v5 > 0x303;
  }

LABEL_4:
  result = 1;
  if (a3 && !v3)
  {
    if (v4 - 769 >= 4)
    {
      if (v4 == 65276)
      {
        return 0;
      }
    }

    else if (v4 > 0x303)
    {
      return 0;
    }

    v7 = a3[1];
    if (!v7)
    {
      return 0;
    }

    v8 = *a3;
    v9 = (*a3 + 1);
    v10 = (v7 - 1);
    *a3 = v9;
    a3[1] = v10;
    v11 = *v8;
    if (v10 < v11)
    {
      return 0;
    }

    *a3 = &v9[v11];
    a3[1] = (v10 - v11);
    if (v10 != v11)
    {
      return 0;
    }

    if (v11 && (v12 = a2, v13 = memchr(v9, 0, v10), a2 = v12, v13))
    {
      return 1;
    }

    else
    {
      result = 0;
      *a2 = 47;
    }
  }

  return result;
}

uint64_t bssl::ext_ec_point_add_serverhello(void *a1, uint64_t *a2)
{
  v3 = *(*(*a1 + 48) + 208);
  if (v3 - 769 >= 4)
  {
    if (v3 == 65276)
    {
      return 1;
    }
  }

  else if (v3 > 0x303)
  {
    return 1;
  }

  if (!(*(a1[198] + 20) & 2 | *(a1[198] + 24) & 4))
  {
    return 1;
  }

  v6[0] = 0;
  result = CBB_add_space(a2, v6, 2);
  if (result)
  {
    *(v6[0] + 1) = 11;
    *v6[0] = 0;
    result = CBB_add_u16_length_prefixed(a2, v6);
    if (result)
    {
      result = CBB_add_u8_length_prefixed(v6, v5);
      if (result)
      {
        v7 = 0;
        result = CBB_add_space(v5, &v7, 1);
        if (result)
        {
          *v7 = 0;
          return CBB_flush(a2) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_ticket_add_clienthello(uint64_t *a1, uint64_t *a2, uint64_t a3, int a4)
{
  result = 1;
  if (a4 == 1)
  {
    return result;
  }

  if (*(a1 + 14) > 0x303u)
  {
    return result;
  }

  v8 = *a1;
  if ((*(v8 + 129) & 0x40) != 0)
  {
    return result;
  }

  v15[5] = v4;
  v15[6] = v5;
  if ((*(*(v8 + 48) + 220) & 0x10) != 0)
  {
    goto LABEL_14;
  }

  v10 = *(v8 + 88);
  if (!v10 || (*(v10 + 408) & 4) != 0)
  {
    goto LABEL_14;
  }

  v11 = *(v10 + 4);
  if (v11 > 0xFEFB)
  {
    if (v11 != 65276)
    {
      goto LABEL_12;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  if (v11 - 769 < 4 && v11 > 0x303)
  {
    goto LABEL_14;
  }

LABEL_12:
  v12 = *(v10 + 240);
  if (!v12)
  {
LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  v13 = *(v10 + 232);
LABEL_16:
  v14[0] = 0;
  result = CBB_add_space(a2, v14, 2);
  if (result)
  {
    *(v14[0] + 1) = 35;
    *v14[0] = 0;
    result = CBB_add_u16_length_prefixed(a2, v14);
    if (result)
    {
      v15[0] = 0;
      result = CBB_add_space(v14, v15, v12);
      if (result)
      {
        if (v12)
        {
          memcpy(v15[0], v13, v12);
        }

        return CBB_flush(a2) != 0;
      }
    }
  }

  return result;
}

uint64_t bssl::ext_ticket_parse_serverhello(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = *(*(*a1 + 48) + 208);
  if (v3 - 769 >= 4)
  {
    if (v3 == 65276)
    {
      return 0;
    }
  }

  else if (v3 > 0x303)
  {
    return 0;
  }

  if (*(a3 + 8))
  {
    return 0;
  }

  a1[404] |= 0x10000u;
  return 1;
}

uint64_t bssl::ext_ticket_add_serverhello(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 1618) & 1) == 0)
  {
    return 1;
  }

  v7[3] = v2;
  v7[4] = v3;
  v7[0] = 0;
  result = CBB_add_space(a2, v7, 2);
  if (result)
  {
    *(v7[0] + 1) = 35;
    *v7[0] = 0;
    v7[0] = 0;
    v6 = CBB_add_space(a2, v7, 2);
    result = v6 != 0;
    if (v6)
    {
      *(v7[0] + 1) = 0;
      *v7[0] = 0;
    }
  }

  return result;
}

uint64_t bssl::ext_alpn_add_clienthello(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  if (!*(a1[1] + 160))
  {
    if (*(v3 + 152))
    {
      ERR_put_error(16, 0, 307, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 1349);
      return 0;
    }

    return 1;
  }

  if ((*(*(v3 + 48) + 220) & 0x10) != 0)
  {
    return 1;
  }

  v11[0] = 0;
  result = CBB_add_space(a3, v11, 2);
  if (result)
  {
    *(v11[0] + 1) = 16;
    *v11[0] = 0;
    result = CBB_add_u16_length_prefixed(a3, v11);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v11, v10);
      if (result)
      {
        v7 = a1[1];
        v8 = *(v7 + 152);
        v9 = *(v7 + 160);
        v12 = 0;
        result = CBB_add_space(v10, &v12, v9);
        if (result)
        {
          if (v9)
          {
            memcpy(v12, v8, v9);
          }

          return CBB_flush(a3) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_alpn_parse_serverhello(uint64_t a1, char *a2, uint64_t *a3)
{
  v3 = *a1;
  if (!a3)
  {
    if (v3[19])
    {
      ERR_put_error(16, 0, 307, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 1378);
      result = 0;
      *a2 = 120;
      return result;
    }

    return 1;
  }

  if ((*(a1 + 1617) & 0x80) != 0)
  {
    *a2 = 47;
    ERR_put_error(16, 0, 170, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 1391);
    return 0;
  }

  v4 = a3[1];
  v5 = v4 - 2;
  if (v4 < 2)
  {
    return 0;
  }

  v6 = *a3;
  v7 = *a3 + 2;
  *a3 = v7;
  a3[1] = v5;
  v8 = __rev16(*v6);
  v9 = v5 >= v8;
  v10 = (v5 - v8);
  if (!v9)
  {
    return 0;
  }

  *a3 = v7 + v8;
  a3[1] = v10;
  if (v10 || v8 == 0)
  {
    return 0;
  }

  v12 = v4 - 3;
  v13 = *(v6 + 2);
  if (v4 - 3 < v13)
  {
    return 0;
  }

  if (!*(v6 + 2) || v12 != v13)
  {
    return 0;
  }

  v15 = *(a1 + 8);
  v16 = *(v15 + 160);
  if (!v16)
  {
    goto LABEL_30;
  }

  if ((*(v3[13] + 792) & 0x80) != 0)
  {
LABEL_28:
    if ((bssl::Array<unsigned char>::CopyFrom(v3[6] + 488, v6 + 3, v12) & 1) == 0)
    {
      v24 = 80;
      goto LABEL_32;
    }

    return 1;
  }

  v18 = *(v15 + 152);
  do
  {
    v23 = *v18;
    v21 = v18 + 1;
    v22 = v23;
    v9 = v16 - 1 >= v23;
    v16 = v16 - 1 - v23;
    if (!v9)
    {
      break;
    }

    if (v13 == v22 && !memcmp(v21, v6 + 3, v12))
    {
      goto LABEL_28;
    }

    v18 = &v21[v22];
  }

  while (v16);
LABEL_30:
  ERR_put_error(16, 0, 259, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 1408);
  v24 = 47;
LABEL_32:
  result = 0;
  *a2 = v24;
  return result;
}

uint64_t bssl::ext_alpn_add_serverhello(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (!*(*(*a1 + 48) + 496))
  {
    return 1;
  }

  v10[0] = 0;
  result = CBB_add_space(a2, v10, 2);
  if (result)
  {
    *(v10[0] + 1) = 16;
    *v10[0] = 0;
    result = CBB_add_u16_length_prefixed(a2, v10);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v10, v9);
      if (result)
      {
        result = CBB_add_u8_length_prefixed(v9, v8);
        if (result)
        {
          v5 = *(v2 + 48);
          v6 = *(v5 + 488);
          v7 = *(v5 + 496);
          v11 = 0;
          result = CBB_add_space(v8, &v11, v7);
          if (result)
          {
            if (v7)
            {
              memcpy(v11, v6, v7);
            }

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
  if ((*(*(a1 + 8) + 269) & 4) == 0)
  {
    return 1;
  }

  v8[3] = v3;
  v8[4] = v4;
  v7[0] = 0;
  result = CBB_add_space(a3, v7, 2);
  if (result)
  {
    *(v7[0] + 1) = 5;
    *v7[0] = 0;
    result = CBB_add_u16_length_prefixed(a3, v7);
    if (result)
    {
      v8[0] = 0;
      result = CBB_add_space(v7, v8, 1);
      if (result)
      {
        *v8[0] = 1;
        v8[0] = 0;
        result = CBB_add_space(v7, v8, 2);
        if (result)
        {
          *(v8[0] + 1) = 0;
          *v8[0] = 0;
          v8[0] = 0;
          result = CBB_add_space(v7, v8, 2);
          if (result)
          {
            *(v8[0] + 1) = 0;
            *v8[0] = 0;
            return CBB_flush(a3) != 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_ocsp_parse_serverhello(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = *(*(*a1 + 48) + 208);
  if (v3 - 769 >= 4)
  {
    if (v3 == 65276)
    {
      return 0;
    }
  }

  else if (v3 > 0x303)
  {
    return 0;
  }

  if (*(a3 + 8) || (*(*(a1 + 1584) + 24) & 7) == 0)
  {
    return 0;
  }

  *(a1 + 1616) |= 0x40u;
  return 1;
}

uint64_t bssl::ext_ocsp_parse_clienthello(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = a3[1];
  if (v3)
  {
    v4 = (*a3)++;
    a3[1] = v3 - 1;
    *(a1 + 1616) = *(a1 + 1616) & 0xFFFFFF7F | ((*v4 == 1) << 7);
    return 1;
  }

  return 0;
}

uint64_t bssl::ext_ocsp_add_serverhello(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 48);
  v3 = *(v2 + 208);
  if (v3 - 769 >= 4)
  {
    if (v3 == 65276)
    {
      return 1;
    }
  }

  else if (v3 > 0x303)
  {
    return 1;
  }

  v5 = *(a1 + 1616);
  if ((v5 & 0x80) == 0 || (*(v2 + 220) & 0x20) != 0 || (*(*(a1 + 1584) + 24) & 7) == 0 || !*(*(a1 + 1536) + 80))
  {
    return 1;
  }

  *(a1 + 1616) = v5 | 0x40;
  v8 = 0;
  result = CBB_add_space(a2, &v8, 2);
  if (result)
  {
    v8[1] = 5;
    *v8 = 0;
    v8 = 0;
    v7 = CBB_add_space(a2, &v8, 2);
    result = v7 != 0;
    if (v7)
    {
      v8[1] = 0;
      *v8 = 0;
    }
  }

  return result;
}

uint64_t bssl::ext_sigalgs_add_clienthello(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 30) < 0x303u)
  {
    return 1;
  }

  if (*(a1 + 1696))
  {
    return 1;
  }

  v15[5] = v3;
  v15[6] = v4;
  v14[0] = 0;
  result = CBB_add_space(a3, v14, 2);
  if (result)
  {
    *(v14[0] + 1) = 13;
    *v14[0] = 0;
    result = CBB_add_u16_length_prefixed(a3, v14);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v14, v13);
      if (result)
      {
        v8 = *(a1 + 8);
        v9 = *(v8 + 232);
        if (v9)
        {
          v10 = *(v8 + 224);
        }

        else
        {
          v10 = &bssl::kVerifySignatureAlgorithms;
          v9 = 9;
        }

        v11 = 2 * v9;
        while (1)
        {
          v12 = *v10;
          v15[0] = 0;
          result = CBB_add_space(v13, v15, 2);
          if (!result)
          {
            break;
          }

          *(v15[0] + 1) = v12;
          *v15[0] = HIBYTE(v12);
          ++v10;
          v11 -= 2;
          if (!v11)
          {
            return CBB_flush(a3) != 0;
          }
        }
      }
    }
  }

  return result;
}

BOOL bssl::forbid_parse_serverhello(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (a3)
  {
    *a2 = 110;
    ERR_put_error(16, 0, 222, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 485);
  }

  return a3 == 0;
}

uint64_t bssl::ext_sigalgs_parse_clienthello(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v4 = result;
  v5 = *(result + 648);
  v6 = *(result + 656);
  if (!v6)
  {
LABEL_5:
    v8 = (result + 648);
    if (v5)
    {
      v10 = *(v5 - 8);
      v9 = (v5 - 8);
      v11 = v10 + 8;
      if (v10 != -8)
      {
        bzero(v9, v11);
      }

      free(v9);
    }

    *v8 = 0;
    v4[82] = 0;
    if (!a3)
    {
      return 1;
    }

    v12 = a3[1];
    v13 = v12 >= 2;
    v14 = v12 - 2;
    if (v13)
    {
      v15 = *a3;
      v16 = *a3 + 2;
      *a3 = v16;
      a3[1] = v14;
      v17 = __rev16(*v15);
      if (v14 >= v17)
      {
        *a3 = v16 + v17;
        a3[1] = v14 - v17;
        v19[0] = v16;
        v19[1] = v17;
        if (v14 == v17)
        {
          v18 = *(*(*v4 + 48) + 208);
          if (v18 - 769 >= 4)
          {
            if (v18 - 65276 >= 2)
            {
              return 1;
            }
          }

          else if (v18 < 0x303)
          {
            return 1;
          }

          if (v14)
          {
            return bssl::parse_u16_array(v19, v4 + 81);
          }
        }
      }
    }

    return 0;
  }

  v7 = v5 - 2;
  while (1)
  {
    v7 += 2;
    if (!v7)
    {
      break;
    }

    if (!--v6)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t bssl::ext_npn_add_clienthello(unsigned __int16 *a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *a1;
  if (!*(*(*a1 + 104) + 608) || (*(*(v4 + 48) + 220) & 0x10) != 0)
  {
    return 1;
  }

  if (**v4)
  {
    return 1;
  }

  result = 1;
  if (a4 != 1 && a1[14] <= 0x303u)
  {
    v9 = 0;
    result = CBB_add_space(a2, &v9, 2);
    if (result)
    {
      v9[1] = 116;
      *v9 = 51;
      v9 = 0;
      v8 = CBB_add_space(a2, &v9, 2);
      result = v8 != 0;
      if (v8)
      {
        v9[1] = 0;
        *v9 = 0;
      }
    }
  }

  return result;
}

uint64_t bssl::ext_npn_parse_serverhello(uint64_t *a1, _BYTE *a2, unsigned __int8 **a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = *a1;
  v4 = *(*a1 + 48);
  v5 = *(v4 + 208);
  if (v5 - 769 >= 4)
  {
    if (v5 == 65276)
    {
      return 0;
    }
  }

  else if (v5 > 0x303)
  {
    return 0;
  }

  if (*(v4 + 496))
  {
    *a2 = 47;
    ERR_put_error(16, 0, 170, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 1162);
    return 0;
  }

  v7 = *a3;
  if (a3[1])
  {
    v8 = *a3;
    v9 = a3[1];
    do
    {
      v10 = v8 + 1;
      v11 = (v9 - 1);
      *a3 = v8 + 1;
      a3[1] = v11;
      v12 = *v8;
      v13 = v11 >= v12;
      v9 = (v11 - v12);
      if (!v13)
      {
        return 0;
      }

      v8 = &v10[v12];
      *a3 = &v10[v12];
      a3[1] = v9;
      if (!v12)
      {
        return 0;
      }
    }

    while (v9);
  }

  v42 = 0;
  v41 = 0;
  result = (*(*(v3 + 104) + 608))(v3, &v42, &v41, v7);
  if (result)
  {
    goto LABEL_16;
  }

  v16 = *(v3 + 48);
  v17 = v42;
  v18 = v41;
  v20 = *(v16 + 472);
  v19 = *(v16 + 480);
  if (!v19 || v19 - 1 < -v20)
  {
    v21 = a1;
    if (v20)
    {
      v23 = *(v20 - 8);
      v22 = (v20 - 8);
      v24 = v23 + 8;
      if (v23 != -8)
      {
        bzero(v22, v24);
      }

      free(v22);
      v21 = a1;
    }

    *(v16 + 472) = 0;
    *(v16 + 480) = 0;
    if (!v18)
    {
      goto LABEL_46;
    }

    v25 = OPENSSL_malloc(v18);
    *(v16 + 472) = v25;
    if (!v25)
    {
LABEL_16:
      result = 0;
      *a2 = 80;
      return result;
    }

    *(v16 + 480) = v18;
    if (v18 < 8)
    {
      v27 = v25;
      v28 = v17;
      v21 = a1;
    }

    else
    {
      v21 = a1;
      if ((v25 - v17) < 0x20)
      {
        v27 = v25;
        v28 = v17;
      }

      else
      {
        if (v18 < 0x20)
        {
          v26 = 0;
          goto LABEL_40;
        }

        v26 = v18 & 0xE0;
        v29 = *(v17 + 1);
        *v25 = *v17;
        v25[1] = v29;
        if (v26 != 32)
        {
          v30 = *(v17 + 3);
          v25[2] = *(v17 + 2);
          v25[3] = v30;
          if (v26 != 64)
          {
            v31 = *(v17 + 5);
            v25[4] = *(v17 + 4);
            v25[5] = v31;
            if (v26 != 96)
            {
              v32 = *(v17 + 7);
              v25[6] = *(v17 + 6);
              v25[7] = v32;
              if (v26 != 128)
              {
                v33 = *(v17 + 9);
                v25[8] = *(v17 + 8);
                v25[9] = v33;
                if (v26 != 160)
                {
                  v34 = *(v17 + 11);
                  v25[10] = *(v17 + 10);
                  v25[11] = v34;
                  if (v26 != 192)
                  {
                    v35 = *(v17 + 13);
                    v25[12] = *(v17 + 12);
                    v25[13] = v35;
                  }
                }
              }
            }
          }
        }

        if (v26 == v18)
        {
          goto LABEL_46;
        }

        if ((v18 & 0x18) != 0)
        {
LABEL_40:
          v27 = v25 + (v18 & 0xF8);
          v28 = &v17[v18 & 0xF8];
          v36 = &v17[v26];
          v37 = (v25 + v26);
          v38 = v26 - (v18 & 0xF8);
          do
          {
            v39 = *v36++;
            *v37++ = v39;
            v38 += 8;
          }

          while (v38);
          if ((v18 & 0xF8) == v18)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }

        v28 = &v17[v26];
        v27 = v25 + v26;
      }
    }

    do
    {
LABEL_45:
      v40 = *v28++;
      *v27++ = v40;
    }

    while (v28 != &v17[v18]);
LABEL_46:
    *(v21 + 404) |= 0x8000u;
    return 1;
  }

  __break(1u);
  return result;
}

uint64_t bssl::ext_npn_parse_clienthello(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(v5 + 208);
  if (v6 > 0xFEFB)
  {
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
        goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v6 - 769 < 4)
  {
LABEL_3:
    v3 = v6 > 0x303;
  }

LABEL_4:
  if (a3 && !v3)
  {
    if (*(a3 + 8))
    {
      return 0;
    }

    if ((*(v5 + 220) & 0x10) == 0 && *(*(v4 + 104) + 592) && (**v4 & 1) == 0)
    {
      a1[404] |= 0x8000u;
    }
  }

  return 1;
}

uint64_t bssl::ext_npn_add_serverhello(uint64_t *a1, uint64_t *a2)
{
  if ((*(a1 + 1617) & 0x80) == 0)
  {
    return 1;
  }

  v13[5] = v2;
  v13[6] = v3;
  v7 = *a1;
  v12 = 0;
  v11 = 0;
  if ((*(*(v7 + 104) + 592))())
  {
    *(a1 + 404) &= ~0x8000u;
    return 1;
  }

  else
  {
    v10[0] = 0;
    result = CBB_add_space(a2, v10, 2);
    if (result)
    {
      *(v10[0] + 1) = 116;
      *v10[0] = 51;
      result = CBB_add_u16_length_prefixed(a2, v10);
      if (result)
      {
        v8 = v12;
        v9 = v11;
        v13[0] = 0;
        result = CBB_add_space(v10, v13, v11);
        if (result)
        {
          if (v9)
          {
            memcpy(v13[0], v8, v9);
          }

          return CBB_flush(a2) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_sct_add_clienthello(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*(a1 + 8) + 269) & 2) == 0)
  {
    return 1;
  }

  v6 = 0;
  result = CBB_add_space(a3, &v6, 2);
  if (result)
  {
    v6[1] = 18;
    *v6 = 0;
    v6 = 0;
    v5 = CBB_add_space(a3, &v6, 2);
    result = v5 != 0;
    if (v5)
    {
      v6[1] = 0;
      *v6 = 0;
    }
  }

  return result;
}

uint64_t bssl::ext_sct_parse_serverhello(void *a1, char *a2, const void **a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = *(*a1 + 48);
  v4 = *(v3 + 208);
  if (v4 - 769 >= 4)
  {
    if (v4 == 65276)
    {
      goto LABEL_14;
    }

LABEL_7:
    v6 = a3[1];
    v7 = v6 - 2;
    if (v6 >= 2)
    {
      v8 = __rev16(**a3);
      if (v7 >= v8 && v7 == v8 && v8 != 0)
      {
        v11 = (*a3 + 2);
        while (1)
        {
          v12 = v7 >= 2;
          v13 = v7 - 2;
          if (!v12)
          {
            break;
          }

          v14 = __rev16(*v11);
          if (v14 - 1 >= v13)
          {
            break;
          }

          v11 = (v11 + v14 + 2);
          v7 = v13 - v14;
          if (!v7)
          {
            if ((*(v3 + 220) & 0x20) != 0)
            {
              return 1;
            }

            v15 = a2;
            v17 = a1[194];
            v18 = crypto_buffer_new(*a3, a3[1], 0, *(*(*a1 + 104) + 736));
            v19 = *(v17 + 248);
            *(v17 + 248) = v18;
            if (v19)
            {
              CRYPTO_BUFFER_free(v19);
            }

            if (*(a1[194] + 248))
            {
              return 1;
            }

            v10 = 80;
            a2 = v15;
            goto LABEL_15;
          }
        }
      }
    }

    goto LABEL_14;
  }

  if (v4 <= 0x303)
  {
    goto LABEL_7;
  }

LABEL_14:
  v10 = 50;
LABEL_15:
  result = 0;
  *a2 = v10;
  return result;
}

uint64_t bssl::ext_sct_parse_clienthello(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (*(a3 + 8))
    {
      return 0;
    }

    *(a1 + 1616) |= 4u;
  }

  return 1;
}

uint64_t bssl::ext_sct_add_serverhello(void *a1, uint64_t *a2)
{
  v4 = *(*a1 + 48);
  v5 = *(v4 + 208);
  if (v5 - 769 >= 4)
  {
    if (v5 == 65276)
    {
      return 1;
    }
  }

  else if (v5 > 0x303)
  {
    return 1;
  }

  if ((*(v4 + 220) & 0x20) != 0 || (*(a1[198] + 24) & 7) == 0 || !*(a1[192] + 72))
  {
    return 1;
  }

  v13[5] = v2;
  v13[6] = v3;
  v12[0] = 0;
  result = CBB_add_space(a2, v12, 2);
  if (result)
  {
    *(v12[0] + 1) = 18;
    *v12[0] = 0;
    result = CBB_add_u16_length_prefixed(a2, v12);
    if (result)
    {
      v9 = *(a1[192] + 72);
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      v13[0] = 0;
      result = CBB_add_space(v12, v13, v11);
      if (result)
      {
        if (v11)
        {
          memcpy(v13[0], v10, v11);
        }

        return CBB_flush(a2) != 0;
      }
    }
  }

  return result;
}

uint64_t bssl::ext_channel_id_add_clienthello(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!*(*(a1 + 8) + 144))
  {
    return 1;
  }

  result = 1;
  if (a4 != 2 && (***a1 & 1) == 0)
  {
    v8 = 0;
    result = CBB_add_space(a2, &v8, 2);
    if (result)
    {
      v8[1] = 80;
      *v8 = 117;
      v8 = 0;
      v7 = CBB_add_space(a2, &v8, 2);
      result = v7 != 0;
      if (v7)
      {
        v8[1] = 0;
        *v8 = 0;
      }
    }
  }

  return result;
}

uint64_t bssl::ext_channel_id_parse_serverhello(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (*(a3 + 8))
    {
      return 0;
    }

    *(a1 + 1616) |= 0x1000000u;
  }

  return 1;
}

uint64_t bssl::ext_channel_id_parse_clienthello(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3 || (*(*(a1 + 8) + 269) & 8) == 0 || (***a1 & 1) != 0)
  {
    return 1;
  }

  if (*(a3 + 8))
  {
    return 0;
  }

  *(a1 + 1616) |= 0x1000000u;
  return 1;
}

uint64_t bssl::ext_channel_id_add_serverhello(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 1619) & 1) == 0)
  {
    return 1;
  }

  v7[3] = v2;
  v7[4] = v3;
  v7[0] = 0;
  result = CBB_add_space(a2, v7, 2);
  if (result)
  {
    *(v7[0] + 1) = 80;
    *v7[0] = 117;
    v7[0] = 0;
    v6 = CBB_add_space(a2, v7, 2);
    result = v6 != 0;
    if (v6)
    {
      *(v7[0] + 1) = 0;
      *v7[0] = 0;
    }
  }

  return result;
}

uint64_t bssl::ext_srtp_add_clienthello(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    return 1;
  }

  v5 = *(v4 + 240);
  if (!v5)
  {
    v5 = *(*(v3 + 104) + 656);
    if (!v5)
    {
      return 1;
    }
  }

  if (!*v5 || !**v3)
  {
    return 1;
  }

  v12[0] = 0;
  result = CBB_add_space(a3, v12, 2);
  if (result)
  {
    *(v12[0] + 1) = 14;
    *v12[0] = 0;
    result = CBB_add_u16_length_prefixed(a3, v12);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v12, v11);
      if (result)
      {
        v8 = *v5;
        if (*v5)
        {
          v9 = 0;
          while (1)
          {
            v10 = *(*(v5[1] + 8 * v9) + 8);
            v13 = 0;
            result = CBB_add_space(v11, &v13, 2);
            if (!result)
            {
              break;
            }

            v13[1] = v10;
            *v13 = BYTE1(v10);
            if (v8 == ++v9)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
LABEL_14:
          v13 = 0;
          result = CBB_add_space(v12, &v13, 1);
          if (result)
          {
            *v13 = 0;
            return CBB_flush(a3) != 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_srtp_parse_serverhello(void *a1, _BYTE *a2, uint64_t *a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = a3[1];
  v4 = v3 - 2;
  if (v3 < 2 || (v5 = *a1, v6 = *a3, v7 = *a3 + 2, *a3 = v7, a3[1] = v4, v8 = __rev16(*v6), v9 = (v4 - v8), v4 < v8) || (v10 = (v7 + v8), *a3 = v10, a3[1] = v9, v8 < 2) || (v8 == 2 ? (v11 = v4 == 2) : (v11 = 1), v11 || (v12 = v6[1], v13 = (v9 - 1), *a3 = (v10 + 1), a3[1] = v13, v14 = *v10, v15 = v13 >= v14, v16 = (v13 - v14), !v15) || (*a3 = &v10[v14 + 1], (a3[1] = v16) != 0)))
  {
    ERR_put_error(16, 0, 116, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 1694);
    return 0;
  }

  if (v14)
  {
    v17 = a2;
    v18 = 115;
    v19 = 1700;
LABEL_25:
    ERR_put_error(16, 0, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", v19);
    result = 0;
    *v17 = 47;
    return result;
  }

  if (!v5 || (v21 = v5[1]) == 0 || (v22 = *(v21 + 240)) == 0 && (v22 = *(v5[13] + 656)) == 0 || (v23 = *v22) == 0)
  {
LABEL_24:
    v17 = a2;
    v18 = 116;
    v19 = 1713;
    goto LABEL_25;
  }

  v24 = 0;
  v25 = __rev16(v12);
  v26 = v22[1];
  while (1)
  {
    v27 = *(v26 + 8 * v24);
    if (*(v27 + 8) == v25)
    {
      break;
    }

    if (v23 == ++v24)
    {
      goto LABEL_24;
    }
  }

  *(v5[6] + 592) = v27;
  return 1;
}

uint64_t bssl::ext_srtp_parse_clienthello(void *a1, uint64_t a2, uint64_t *a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = *a1;
  if (!***a1)
  {
    return 1;
  }

  v4 = a3[1];
  v5 = v4 - 2;
  if (v4 < 2 || (v6 = *a3, v7 = *a3 + 2, *a3 = v7, a3[1] = v5, v8 = __rev16(*v6), v9 = (v5 - v8), v5 < v8) || ((v10 = (v7 + v8), *a3 = v7 + v8, a3[1] = v9, v8 >= 2) ? (v11 = v5 == v8) : (v11 = 1), v11 || (v12 = v9 - 1, *a3 = (v10 + 1), a3[1] = v9 - 1, v13 = *v10, v12 < v13) || (*a3 = &v10[v13 + 1], a3[1] = v12 - v13, v12 != v13)))
  {
    ERR_put_error(16, 0, 116, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 1731);
    return 0;
  }

  else
  {
    v14 = v3[1];
    if (v14 && ((v15 = *(v14 + 30)) != 0 || (v15 = *(v3[13] + 82)) != 0) && (v16 = *v15) != 0)
    {
      v17 = 0;
      while (2)
      {
        if (v16 <= v17)
        {
          v18 = 0;
        }

        else
        {
          v18 = *(v15[1] + 8 * v17);
        }

        v19 = v8;
        v20 = v7;
        do
        {
          if (v19 < 2)
          {
            return 0;
          }

          if (*(v18 + 8) == __rev16(*v20))
          {
            v21 = 0;
            *(v3[6] + 74) = v18;
            LODWORD(v18) = 1;
            return (v21 | v18) & 1;
          }

          ++v20;
          v19 -= 2;
        }

        while (v19);
        ++v17;
        v21 = 1;
        if (v17 != v16)
        {
          continue;
        }

        break;
      }

      return (v21 | v18) & 1;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t bssl::ext_srtp_add_serverhello(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (!*(*(*a1 + 48) + 592))
  {
    return 1;
  }

  v7[0] = 0;
  result = CBB_add_space(a2, v7, 2);
  if (result)
  {
    *(v7[0] + 1) = 14;
    *v7[0] = 0;
    result = CBB_add_u16_length_prefixed(a2, v7);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v7, v6);
      if (result)
      {
        v5 = *(*(*(v2 + 48) + 592) + 8);
        v8 = 0;
        result = CBB_add_space(v6, &v8, 2);
        if (result)
        {
          v8[1] = v5;
          *v8 = BYTE1(v5);
          v8 = 0;
          result = CBB_add_space(v7, &v8, 1);
          if (result)
          {
            *v8 = 0;
            return CBB_flush(a2) != 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_key_share_add_clienthello(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 30) < 0x304u)
  {
    return 1;
  }

  if (*(a1 + 1696))
  {
    return 1;
  }

  v13[5] = v3;
  v13[6] = v4;
  v12[0] = 0;
  result = CBB_add_space(a3, v12, 2);
  if (result)
  {
    *(v12[0] + 1) = 51;
    *v12[0] = 0;
    result = CBB_add_u16_length_prefixed(a3, v12);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v12, v11);
      if (result)
      {
        v8 = a1;
        v9 = *(a1 + 616);
        v10 = *(v8 + 624);
        v13[0] = 0;
        result = CBB_add_space(v11, v13, v10);
        if (result)
        {
          if (v10)
          {
            memcpy(v13[0], v9, v10);
          }

          return CBB_flush(a3) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_psk_key_exchange_modes_add_clienthello(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 30) < 0x304u)
  {
    return 1;
  }

  if (*(a1 + 1696))
  {
    return 1;
  }

  v9[3] = v3;
  v9[4] = v4;
  v8[0] = 0;
  result = CBB_add_space(a3, v8, 2);
  if (result)
  {
    *(v8[0] + 1) = 45;
    *v8[0] = 0;
    result = CBB_add_u16_length_prefixed(a3, v8);
    if (result)
    {
      result = CBB_add_u8_length_prefixed(v8, v7);
      if (result)
      {
        v9[0] = 0;
        result = CBB_add_space(v7, v9, 1);
        if (result)
        {
          *v9[0] = 1;
          return CBB_flush(a3) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_psk_key_exchange_modes_parse_clienthello(uint64_t a1, _BYTE *a2, unsigned __int8 **a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = a3[1];
  if (v3 && (v4 = *a3, v5 = (*a3 + 1), v6 = (v3 - 1), *a3 = v5, a3[1] = v3 - 1, v7 = *v4, v6 >= v7) && ((*a3 = &v5[v7], a3[1] = (v6 - v7), v7) ? (v8 = v6 == v7) : (v8 = 0), v8))
  {
    v11 = memchr(v5, 1, v7);
    result = 1;
    *(a1 + 1616) = *(a1 + 1616) & 0xFFFFFFEF | (16 * (v11 != 0));
  }

  else
  {
    result = 0;
    *a2 = 50;
  }

  return result;
}

uint64_t bssl::ext_early_data_add_clienthello(_BYTE *a1, uint64_t a2, uint64_t *a3)
{
  if ((*(*(*a1 + 48) + 220) & 0x1000) != 0)
  {
    return 1;
  }

  if ((a1[1617] & 8) == 0)
  {
    return 1;
  }

  v5 = 0;
  result = CBB_add_space(a3, &v5, 2);
  if (result)
  {
    v5[1] = 42;
    *v5 = 0;
    v5 = 0;
    result = CBB_add_space(a3, &v5, 2);
    if (result)
    {
      v5[1] = 0;
      *v5 = 0;
      return CBB_flush(a3) != 0;
    }
  }

  return result;
}

uint64_t bssl::ext_early_data_parse_serverhello(uint64_t *a1, _BYTE *a2, uint64_t a3)
{
  v3 = *a1;
  if (a3)
  {
    if (*(a3 + 8))
    {
      result = 0;
      *a2 = 50;
      return result;
    }

    v8 = *(v3 + 48);
    v9 = *(v8 + 220);
    if ((v9 & 0x20) == 0)
    {
      *a2 = 110;
      ERR_put_error(16, 0, 222, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 2154);
      return 0;
    }

    *(v8 + 256) = 2;
    *(v8 + 220) = v9 | 0x200;
    return 1;
  }

  if ((*(a1 + 1617) & 8) == 0)
  {
    return 1;
  }

  v5 = *(v3 + 48);
  v6 = *(v5 + 220);
  if ((v6 & 0x1000) != 0)
  {
    return 1;
  }

  if ((v6 & 0x20) != 0)
  {
    v7 = 4;
  }

  else
  {
    v7 = 6;
  }

  *(v5 + 256) = v7;
  return 1;
}

uint64_t bssl::ext_early_data_parse_clienthello(_DWORD *a1, _BYTE *a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = *(*(*a1 + 48) + 208);
  if (v3 - 769 >= 4)
  {
    if (v3 != 65276)
    {
      return 1;
    }
  }

  else if (v3 < 0x304)
  {
    return 1;
  }

  if (*(a3 + 8))
  {
    result = 0;
    *a2 = 50;
  }

  else
  {
    a1[404] |= 0x800u;
    return 1;
  }

  return result;
}

uint64_t bssl::ext_early_data_add_serverhello(uint64_t a1, uint64_t *a2)
{
  if ((*(*(*a1 + 48) + 220) & 0x200) == 0)
  {
    return 1;
  }

  v4 = 0;
  result = CBB_add_space(a2, &v4, 2);
  if (result)
  {
    v4[1] = 42;
    *v4 = 0;
    v4 = 0;
    result = CBB_add_space(a2, &v4, 2);
    if (result)
    {
      v4[1] = 0;
      *v4 = 0;
      return CBB_flush(a2) != 0;
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

  v15[5] = v4;
  v15[6] = v5;
  v8 = *a1;
  if (*(a1 + 28) <= 0x303u)
  {
    a3 = a2;
  }

  v14[0] = 0;
  result = CBB_add_space(a3, v14, 2);
  if (result)
  {
    *(v14[0] + 1) = 43;
    *v14[0] = 0;
    result = CBB_add_u16_length_prefixed(a3, v14);
    if (result)
    {
      result = CBB_add_u8_length_prefixed(v14, v13);
      if (result)
      {
        if ((*(*(v8 + 104) + 792) & 0x20) != 0)
        {
          v11 = *(a1 + 1666);
          v15[0] = 0;
          result = CBB_add_space(v13, v15, 2);
          if (!result)
          {
            return result;
          }

          *(v15[0] + 1) = v11 & 0xF0 | 0xA;
          *v15[0] = v11 & 0xF0 | 0xA;
        }

        if (a4 == 1)
        {
          v12 = 772;
        }

        else
        {
          v12 = 0;
        }

        result = bssl::ssl_add_supported_versions(a1, v13, v12);
        if (result)
        {
          return CBB_flush(a3) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_cookie_add_clienthello(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*(a1 + 544))
  {
    return 1;
  }

  v9[0] = 0;
  result = CBB_add_space(a3, v9, 2);
  if (result)
  {
    *(v9[0] + 1) = 44;
    *v9[0] = 0;
    result = CBB_add_u16_length_prefixed(a3, v9);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v9, v8);
      if (result)
      {
        v6 = *(a1 + 536);
        v7 = *(a1 + 544);
        v10 = 0;
        result = CBB_add_space(v8, &v10, v7);
        if (result)
        {
          if (v7)
          {
            memcpy(v10, v6, v7);
          }

          return CBB_flush(a3) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_quic_transport_params_parse_serverhello(uint64_t result, _BYTE *a2, uint64_t *a3)
{
  v3 = *result;
  if (!a3)
  {
    if ((*(*(result + 8) + 269) & 0x200) == 0 && *(v3 + 152))
    {
      result = 0;
      *a2 = 109;
      return result;
    }

    return 1;
  }

  v4 = *(v3 + 48);
  v5 = *a3;
  v6 = a3[1];
  v7 = *(v4 + 576);
  v8 = *(v4 + 584);
  if (!v8 || v8 - 1 < -v7)
  {
    v9 = (v4 + 576);
    if (v7)
    {
      v11 = *(v7 - 8);
      v10 = (v7 - 8);
      v12 = v11 + 8;
      if (v11 != -8)
      {
        bzero(v10, v12);
      }

      free(v10);
    }

    *v9 = 0;
    *(v4 + 584) = 0;
    if (!v6)
    {
      return 1;
    }

    if (v6 > 0xFFFFFFFFFFFFFFF7 || (v13 = malloc_type_malloc(v6 + 8, 0xB4E622C9uLL)) == 0)
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      result = 0;
      *v9 = 0;
      return result;
    }

    *v13 = v6;
    v14 = v13 + 1;
    *(v4 + 576) = v13 + 1;
    *(v4 + 584) = v6;
    if (v6 < 8)
    {
      v15 = v5;
      goto LABEL_29;
    }

    v15 = v5;
    if (v13 - v5 + 8 >= 0x20)
    {
      if (v6 < 0x20)
      {
        v16 = 0;
        goto LABEL_24;
      }

      v16 = v6 & 0xFFFFFFFFFFFFFFE0;
      v17 = (v5 + 16);
      v18 = v13 + 3;
      v19 = v6 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v20 = *v17;
        *(v18 - 1) = *(v17 - 1);
        *v18 = v20;
        v17 += 2;
        v18 += 2;
        v19 -= 32;
      }

      while (v19);
      if (v6 == v16)
      {
        return 1;
      }

      if ((v6 & 0x18) != 0)
      {
LABEL_24:
        v14 += v6 & 0xFFFFFFFFFFFFFFF8;
        v15 = (v5 + (v6 & 0xFFFFFFFFFFFFFFF8));
        v21 = (v5 + v16);
        v22 = (v13 + v16 + 8);
        v23 = v16 - (v6 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v24 = *v21++;
          *v22++ = v24;
          v23 += 8;
        }

        while (v23);
        if (v6 == (v6 & 0xFFFFFFFFFFFFFFF8))
        {
          return 1;
        }

        goto LABEL_29;
      }

      v15 = (v5 + v16);
      v14 += v16;
    }

    do
    {
LABEL_29:
      v25 = *v15++;
      *v14++ = v25;
    }

    while (v15 != (v5 + v6));
    return 1;
  }

  __break(1u);
  return result;
}

uint64_t bssl::ext_quic_transport_params_parse_serverhello_legacy(uint64_t result, _BYTE *a2, uint64_t *a3)
{
  v3 = *result;
  if (!a3)
  {
    if ((*(*(result + 8) + 269) & 0x200) != 0 && *(v3 + 152))
    {
      result = 0;
      *a2 = 109;
      return result;
    }

    return 1;
  }

  v4 = *(v3 + 48);
  v5 = *a3;
  v6 = a3[1];
  v7 = *(v4 + 576);
  v8 = *(v4 + 584);
  if (!v8 || v8 - 1 < -v7)
  {
    v9 = (v4 + 576);
    if (v7)
    {
      v11 = *(v7 - 8);
      v10 = (v7 - 8);
      v12 = v11 + 8;
      if (v11 != -8)
      {
        bzero(v10, v12);
      }

      free(v10);
    }

    *v9 = 0;
    *(v4 + 584) = 0;
    if (!v6)
    {
      return 1;
    }

    if (v6 > 0xFFFFFFFFFFFFFFF7 || (v13 = malloc_type_malloc(v6 + 8, 0xB4E622C9uLL)) == 0)
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      result = 0;
      *v9 = 0;
      return result;
    }

    *v13 = v6;
    v14 = v13 + 1;
    *(v4 + 576) = v13 + 1;
    *(v4 + 584) = v6;
    if (v6 < 8)
    {
      v15 = v5;
      goto LABEL_29;
    }

    v15 = v5;
    if (v13 - v5 + 8 >= 0x20)
    {
      if (v6 < 0x20)
      {
        v16 = 0;
        goto LABEL_24;
      }

      v16 = v6 & 0xFFFFFFFFFFFFFFE0;
      v17 = (v5 + 16);
      v18 = v13 + 3;
      v19 = v6 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v20 = *v17;
        *(v18 - 1) = *(v17 - 1);
        *v18 = v20;
        v17 += 2;
        v18 += 2;
        v19 -= 32;
      }

      while (v19);
      if (v6 == v16)
      {
        return 1;
      }

      if ((v6 & 0x18) != 0)
      {
LABEL_24:
        v14 += v6 & 0xFFFFFFFFFFFFFFF8;
        v15 = (v5 + (v6 & 0xFFFFFFFFFFFFFFF8));
        v21 = (v5 + v16);
        v22 = (v13 + v16 + 8);
        v23 = v16 - (v6 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v24 = *v21++;
          *v22++ = v24;
          v23 += 8;
        }

        while (v23);
        if (v6 == (v6 & 0xFFFFFFFFFFFFFFF8))
        {
          return 1;
        }

        goto LABEL_29;
      }

      v15 = (v5 + v16);
      v14 += v16;
    }

    do
    {
LABEL_29:
      v25 = *v15++;
      *v14++ = v25;
    }

    while (v15 != (v5 + v6));
    return 1;
  }

  __break(1u);
  return result;
}

uint64_t bssl::cert_compression_add_clienthello(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(*a1 + 104);
  v4 = *(v3 + 672);
  if (!v4)
  {
    return 1;
  }

  v6 = *(v3 + 664);
  v7 = v6 + 24 * v4;
  v8 = 1;
  while (2)
  {
    for (v6 += 24; !*(v6 - 16); v6 += 24)
    {
      if (v6 == v7)
      {
        if (v8)
        {
          return 1;
        }

        return CBB_flush(a3) != 0;
      }
    }

    if ((v8 & 1) == 0 || (v14 = 0, result = CBB_add_space(a3, &v14, 2), result) && (v14[1] = 27, *v14 = 0, result = CBB_add_u16_length_prefixed(a3, v13), result) && (result = CBB_add_u8_length_prefixed(v13, v12), result))
    {
      v11 = *(v6 - 8);
      v14 = 0;
      result = CBB_add_space(v12, &v14, 2);
      if (result)
      {
        v8 = 0;
        v14[1] = v11;
        *v14 = HIBYTE(v11);
        if (v6 != v7)
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

uint64_t bssl::cert_compression_parse_clienthello(uint64_t a1, uint64_t a2, unsigned __int8 **a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = a3[1];
  if (!v3)
  {
    return 0;
  }

  v4 = *(*a1 + 104);
  v5 = *(v4 + 672);
  v6 = *a3;
  v7 = *a3 + 1;
  v8 = v3 - 1;
  *a3 = v7;
  a3[1] = v3 - 1;
  v9 = *v6;
  if ((v3 - 1) < v9)
  {
    return 0;
  }

  *a3 = &v7[v9];
  a3[1] = &v3[-v9 - 1];
  if (v3 - 1 != v9)
  {
    return 0;
  }

  if (!v9 || (v8 & 1) != 0)
  {
    return 0;
  }

  v13 = malloc_type_malloc((v3 + 7), 0xB4E622C9uLL);
  if (!v13)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  v14 = v8 >> 1;
  *v13 = v8;
  if (v5)
  {
    v15 = 0;
    v16 = v8;
    v17 = v5;
    while (v15 != v14)
    {
      v18 = 0;
      v19 = 0;
      v20 = *v7;
      v7 += 2;
      v16 -= 2;
      v21 = __rev16(v20);
      *(v13 + v15 + 4) = v21;
      while (1)
      {
        if (*(v4 + 672) == v19)
        {
          goto LABEL_48;
        }

        v22 = (*(v4 + 664) + v18);
        v23 = *(v22 + 8);
        v24 = *v22;
        if (v23 == v21 && v24 != 0)
        {
          break;
        }

        ++v19;
        v18 += 24;
        if (v5 == v19)
        {
          goto LABEL_16;
        }
      }

      if (v19 < v17)
      {
        v17 = v19;
      }

LABEL_16:
      ++v15;
      if (!v16)
      {
        goto LABEL_32;
      }
    }

LABEL_45:
    v35 = 0;
    goto LABEL_46;
  }

  v26 = v13 + 1;
  v27 = v8 >> 1;
  v28 = v8;
  do
  {
    if (!v27)
    {
      goto LABEL_45;
    }

    v29 = *v7;
    v7 += 2;
    *v26++ = bswap32(v29) >> 16;
    --v27;
    v28 -= 2;
  }

  while (v28);
  v17 = 0;
LABEL_32:
  v30 = v13;
  std::__sort<std::__less<unsigned short,unsigned short> &,unsigned short *>();
  v13 = v30;
  if (v9 >= 3)
  {
    if (v14 <= 2)
    {
      v32 = 2;
    }

    else
    {
      v32 = v14;
    }

    v33 = v30 + 5;
    v34 = v32 - 1;
    while (v14)
    {
      if (*(v33 - 1) == *v33)
      {
        goto LABEL_45;
      }

      ++v33;
      --v14;
      if (!--v34)
      {
        goto LABEL_40;
      }
    }

LABEL_48:
    abort();
  }

LABEL_40:
  if (v17 < v5)
  {
    if (bssl::ssl_protocol_version(*a1, v31) < 0x304)
    {
      v35 = 1;
      v13 = v30;
      goto LABEL_46;
    }

    *(a1 + 1616) |= 0x200000u;
    if (*(v4 + 672) <= v17)
    {
      goto LABEL_48;
    }

    v13 = v30;
    *(a1 + 728) = *(*(v4 + 664) + 24 * v17 + 16);
  }

  v35 = 1;
LABEL_46:
  free(v13);
  return v35;
}

uint64_t bssl::ext_delegated_credential_parse_clienthello(unint64_t *a1, uint64_t a2, uint64_t *a3)
{
  if (!a3)
  {
    return 1;
  }

  v5 = *(*(*a1 + 48) + 208);
  if (v5 - 769 >= 4)
  {
    if (v5 != 65276)
    {
      return 1;
    }
  }

  else if (v5 < 0x304)
  {
    return 1;
  }

  v14[2] = v3;
  v14[3] = v4;
  v7 = a3[1];
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (v8 && (v10 = *a3, v11 = *a3 + 2, *a3 = v11, a3[1] = v9, v12 = __rev16(*v10), v9 >= v12) && ((*a3 = v11 + v12, a3[1] = v9 - v12, v14[0] = v11, (v14[1] = v12) != 0) ? (v13 = v9 == v12) : (v13 = 0), v13))
  {
    return bssl::parse_u16_array(v14, a1 + 85);
  }

  else
  {
    return 0;
  }
}

uint64_t bssl::ext_alps_parse_serverhello(uint64_t result, _BYTE *a2, uint64_t *a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = *(*(*result + 48) + 208);
  if (v3 - 769 >= 4)
  {
    if (v3 != 65276)
    {
      goto LABEL_4;
    }
  }

  else if (v3 <= 0x303)
  {
LABEL_4:
    *a2 = 110;
    ERR_put_error(16, 0, 222, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 3379);
    return 0;
  }

  v4 = *(result + 1552);
  v5 = *a3;
  v6 = a3[1];
  v8 = *(v4 + 392);
  v7 = *(v4 + 400);
  if (!v7 || v7 - 1 < -v8)
  {
    if (v8)
    {
      v9 = a2;
      v10 = result;
      v12 = *(v8 - 8);
      v11 = (v8 - 8);
      v13 = v12 + 8;
      if (v12 != -8)
      {
        bzero(v11, v13);
      }

      free(v11);
      result = v10;
      a2 = v9;
    }

    *(v4 + 392) = 0;
    *(v4 + 400) = 0;
    if (!v6)
    {
      goto LABEL_31;
    }

    v14 = a2;
    if (v6 > 0xFFFFFFFFFFFFFFF7 || (v15 = result, (v16 = malloc_type_malloc(v6 + 8, 0xB4E622C9uLL)) == 0))
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      result = 0;
      *(v4 + 392) = 0;
      *v14 = 80;
      return result;
    }

    result = v15;
    *v16 = v6;
    v17 = v16 + 1;
    *(v4 + 392) = v16 + 1;
    *(v4 + 400) = v6;
    if (v6 < 8)
    {
      v18 = v5;
      goto LABEL_30;
    }

    v18 = v5;
    if (v16 - v5 + 8 >= 0x20)
    {
      if (v6 < 0x20)
      {
        v19 = 0;
        goto LABEL_25;
      }

      v19 = v6 & 0xFFFFFFFFFFFFFFE0;
      v20 = (v5 + 16);
      v21 = v16 + 3;
      v22 = v6 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v23 = *v20;
        *(v21 - 1) = *(v20 - 1);
        *v21 = v23;
        v20 += 2;
        v21 += 2;
        v22 -= 32;
      }

      while (v22);
      if (v6 == v19)
      {
        goto LABEL_31;
      }

      if ((v6 & 0x18) != 0)
      {
LABEL_25:
        v17 += v6 & 0xFFFFFFFFFFFFFFF8;
        v18 = (v5 + (v6 & 0xFFFFFFFFFFFFFFF8));
        v24 = (v5 + v19);
        v25 = (v16 + v19 + 8);
        v26 = v19 - (v6 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v27 = *v24++;
          *v25++ = v27;
          v26 += 8;
        }

        while (v26);
        if (v6 == (v6 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      v18 = (v5 + v19);
      v17 += v19;
    }

    do
    {
LABEL_30:
      v28 = *v18++;
      *v17++ = v28;
    }

    while (v18 != (v5 + v6));
LABEL_31:
    *(*(result + 1552) + 408) |= 0x40u;
    return 1;
  }

  __break(1u);
  return result;
}

uint64_t bssl::ext_alps_parse_serverhello_old(uint64_t result, _BYTE *a2, uint64_t *a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = *(*(*result + 48) + 208);
  if (v3 - 769 >= 4)
  {
    if (v3 != 65276)
    {
      goto LABEL_4;
    }
  }

  else if (v3 <= 0x303)
  {
LABEL_4:
    *a2 = 110;
    ERR_put_error(16, 0, 222, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 3379);
    return 0;
  }

  v4 = *(result + 1552);
  v5 = *a3;
  v6 = a3[1];
  v8 = *(v4 + 392);
  v7 = *(v4 + 400);
  if (!v7 || v7 - 1 < -v8)
  {
    if (v8)
    {
      v9 = a2;
      v10 = result;
      v12 = *(v8 - 8);
      v11 = (v8 - 8);
      v13 = v12 + 8;
      if (v12 != -8)
      {
        bzero(v11, v13);
      }

      free(v11);
      result = v10;
      a2 = v9;
    }

    *(v4 + 392) = 0;
    *(v4 + 400) = 0;
    if (!v6)
    {
      goto LABEL_31;
    }

    v14 = a2;
    if (v6 > 0xFFFFFFFFFFFFFFF7 || (v15 = result, (v16 = malloc_type_malloc(v6 + 8, 0xB4E622C9uLL)) == 0))
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      result = 0;
      *(v4 + 392) = 0;
      *v14 = 80;
      return result;
    }

    result = v15;
    *v16 = v6;
    v17 = v16 + 1;
    *(v4 + 392) = v16 + 1;
    *(v4 + 400) = v6;
    if (v6 < 8)
    {
      v18 = v5;
      goto LABEL_30;
    }

    v18 = v5;
    if (v16 - v5 + 8 >= 0x20)
    {
      if (v6 < 0x20)
      {
        v19 = 0;
        goto LABEL_25;
      }

      v19 = v6 & 0xFFFFFFFFFFFFFFE0;
      v20 = (v5 + 16);
      v21 = v16 + 3;
      v22 = v6 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v23 = *v20;
        *(v21 - 1) = *(v20 - 1);
        *v21 = v23;
        v20 += 2;
        v21 += 2;
        v22 -= 32;
      }

      while (v22);
      if (v6 == v19)
      {
        goto LABEL_31;
      }

      if ((v6 & 0x18) != 0)
      {
LABEL_25:
        v17 += v6 & 0xFFFFFFFFFFFFFFF8;
        v18 = (v5 + (v6 & 0xFFFFFFFFFFFFFFF8));
        v24 = (v5 + v19);
        v25 = (v16 + v19 + 8);
        v26 = v19 - (v6 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v27 = *v24++;
          *v25++ = v27;
          v26 += 8;
        }

        while (v26);
        if (v6 == (v6 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      v18 = (v5 + v19);
      v17 += v19;
    }

    do
    {
LABEL_30:
      v28 = *v18++;
      *v17++ = v28;
    }

    while (v18 != (v5 + v6));
LABEL_31:
    *(*(result + 1552) + 408) |= 0x40u;
    return 1;
  }

  __break(1u);
  return result;
}

uint64_t bssl::ext_certificate_authorities_add_clienthello(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1[1];
  v5 = v4[12];
  if (!v5)
  {
    v5 = *(*(*v4 + 104) + 408);
    if (!v5)
    {
      return 1;
    }
  }

  if (!*v5)
  {
    return 1;
  }

  v9 = 0;
  if (!CBB_add_space(a3, &v9, 2))
  {
    return 0;
  }

  v9[1] = 47;
  *v9 = 0;
  if (!CBB_add_u16_length_prefixed(a3, v8) || (bssl::marshal_CA_names(*(a1[1] + 96), *(*(*a1 + 104) + 408), v8) & 1) == 0)
  {
    return 0;
  }

  result = CBB_flush(a3);
  if (result)
  {
    return 1;
  }

  return result;
}

BOOL bssl::ext_certificate_authorities_parse_clienthello(uint64_t *a1, _BYTE *a2, void *a3)
{
  if (!a3)
  {
    return 1;
  }

  if (!a3[1])
  {
    return 0;
  }

  bssl::SSL_parse_CA_list(*a1, a2, a3, &v28);
  v4 = v28;
  v28 = 0;
  v5 = a1[183];
  a1[183] = v4;
  if (v5)
  {
    v6 = *v5;
    if (*v5)
    {
      v7 = 0;
      do
      {
        v8 = *(v5[1] + 8 * v7);
        if (v8)
        {
          CRYPTO_BUFFER_free(v8);
          v6 = *v5;
        }

        ++v7;
      }

      while (v7 < v6);
    }

    v10 = v5[1];
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

    v15 = *(v5 - 1);
    v14 = v5 - 1;
    v16 = v15 + 8;
    if (v15 != -8)
    {
      bzero(v14, v16);
    }

    free(v14);
    v17 = v28;
    v28 = 0;
    if (v17)
    {
      v18 = *v17;
      if (*v17)
      {
        v19 = 0;
        do
        {
          v20 = *(v17[1] + 8 * v19);
          if (v20)
          {
            CRYPTO_BUFFER_free(v20);
            v18 = *v17;
          }

          ++v19;
        }

        while (v19 < v18);
      }

      v21 = v17[1];
      if (v21)
      {
        v23 = *(v21 - 8);
        v22 = (v21 - 8);
        v24 = v23 + 8;
        if (v23 != -8)
        {
          bzero(v22, v24);
        }

        free(v22);
      }

      v26 = *(v17 - 1);
      v25 = v17 - 1;
      v27 = v26 + 8;
      if (v26 != -8)
      {
        bzero(v25, v27);
      }

      free(v25);
    }
  }

  return a1[183] != 0;
}

uint64_t bssl::ext_pake_add_clienthello(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*(a1 + 1688))
  {
    return 1;
  }

  v8[0] = 0;
  result = CBB_add_space(a3, v8, 2);
  if (result)
  {
    *(v8[0] + 1) = 59;
    *v8[0] = -118;
    result = CBB_add_u16_length_prefixed(a3, v8);
    if (result)
    {
      v6 = *(a1 + 1680);
      v7 = *(a1 + 1688);
      v9 = 0;
      result = CBB_add_space(v8, &v9, v7);
      if (result)
      {
        if (v7)
        {
          memcpy(v9, v6, v7);
        }

        return CBB_flush(a3) != 0;
      }
    }
  }

  return result;
}

void bssl::ext_pake_parse_clienthello(uint64_t a1, _BYTE *a2, uint64_t *a3)
{
  if (a3)
  {
    *a2 = 50;
    v3 = a3[1];
    v4 = v3 >= 2;
    v5 = v3 - 2;
    if (v4 && (v6 = *a3, v7 = *a3 + 2, *a3 = v7, a3[1] = v5, v8 = *v6, v9 = v6[1], v10 = v9 | (v8 << 8), v4 = v5 >= v10, v11 = v5 - v10, v4) && (v12 = (v7 + v10), *a3 = v7 + v10, a3[1] = v11, v4 = v11 >= 2, v13 = v11 - 2, v4) && (v14 = v12 + 2, *a3 = (v12 + 2), a3[1] = v13, v15 = *v12, v16 = v12[1], v17 = v16 | (v15 << 8), v4 = v13 >= v17, v18 = v13 - v17, v4) && (v19 = &v14[v17], *a3 = &v14[v17], a3[1] = v18, v20 = v18 - 2, v18 >= 2) && (v21 = (v19 + 2), *a3 = (v19 + 2), a3[1] = v20, v22 = __rev16(*v19), v20 >= v22) && (*a3 = v21 + v22, a3[1] = v20 - v22, v20 == v22))
    {
      if (v20)
      {
        v23 = 0;
        v24 = 0;
        v25 = v8 << 8;
        v26 = (a1 + 1672);
        v87 = &v6[v9 + v25];
        v84 = v9 & 0x1F;
        v86 = v10 - v84;
        v81 = v10 - (v9 & 7);
        v82 = v9 & 7;
        v83 = v16 & 0x1F;
        v85 = v17 - v83;
        v78 = v17 - (v16 & 7);
        v79 = v16 & 7;
        v80 = v82 - v9 - v25;
        v27 = &v6[v25 + v9];
        v75 = (v27 + 20);
        v77 = v27 + 4;
        v76 = v79 - v16 - (v15 << 8);
        v91 = (a1 + 1672);
        do
        {
          if (v20 < 2 || (v20 & 0xFFFFFFFFFFFFFFFELL) == 2 || (v32 = __rev16(v21[1]), v4 = v20 - 4 >= v32, v20 = v20 - 4 - v32, !v4))
          {
            v28 = 137;
            v29 = 3255;
            goto LABEL_16;
          }

          v30 = __rev16(*v21);
          if (v24 && v23 >= v30)
          {
            v28 = 137;
            v29 = 3261;
            goto LABEL_16;
          }

          v31 = v21 + 2;
          if (v30 != 32150)
          {
            goto LABEL_20;
          }

          v92 = v31;
          v88 = v24;
          v89 = v20;
          v33 = malloc_type_malloc(0x40uLL, 0xB4E622C9uLL);
          if (v33)
          {
            *v33 = 56;
            *(v33 + 8) = 0u;
            v34 = v33 + 8;
            *(v33 + 24) = 0u;
            *(v33 + 40) = 0u;
            *(v33 + 7) = 0;
          }

          else
          {
            ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
            v34 = 0;
          }

          v93 = 0;
          v35 = *v26;
          *v26 = v34;
          if (v35)
          {
            bssl::internal::Deleter::operator()<bssl::SSLPAKEShare>(v26, v35);
            v36 = v93;
            v93 = 0;
            if (v36)
            {
              bssl::internal::Deleter::operator()<bssl::SSLPAKEShare>(&v93, v36);
            }

            v34 = *v26;
          }

          if (!v34)
          {
            goto LABEL_84;
          }

          v90 = v32;
          v39 = v34[1];
          v37 = v34[2];
          v38 = v34 + 1;
          if (v37 && v37 - 1 >= -v39)
          {
LABEL_85:
            __break(1u);
            return;
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

          *v38 = 0;
          v34[2] = 0;
          if (v10)
          {
            v43 = malloc_type_malloc(v10 + 8, 0xB4E622C9uLL);
            if (!v43)
            {
              goto LABEL_83;
            }

            *v43 = v10;
            v44 = v43 + 1;
            v34[1] = v43 + 1;
            v34[2] = v10;
            if (v10 < 8)
            {
              v45 = v7;
              goto LABEL_57;
            }

            v45 = v7;
            if ((v43 - v6 + 6) < 0x20)
            {
              goto LABEL_57;
            }

            if (v10 >= 0x20)
            {
              v47 = v43 + 3;
              v48 = v10 - v84;
              v49 = (v6 + 18);
              do
              {
                v50 = *v49;
                *(v47 - 1) = *(v49 - 1);
                *v47 = v50;
                v49 += 2;
                v47 += 2;
                v48 -= 32;
              }

              while (v48);
              if (!v84)
              {
                goto LABEL_58;
              }

              v46 = v10 - v84;
              if (v84 < 8)
              {
                v44 += v86;
                v45 = (v7 + v86);
                do
                {
LABEL_57:
                  v55 = *v45++;
                  *v44++ = v55;
                }

                while (v45 != v12);
                goto LABEL_58;
              }
            }

            else
            {
              v46 = 0;
            }

            v44 += v81;
            v51 = &v6[v46 + 2];
            v52 = (v43 + v46 + 8);
            v53 = v80 + v46;
            do
            {
              v54 = *v51;
              v51 += 8;
              *v52++ = v54;
              v53 += 8;
            }

            while (v53);
            v45 = (v7 + v81);
            if (v82)
            {
              goto LABEL_57;
            }
          }

LABEL_58:
          v56 = *v91;
          v38 = *v91 + 3;
          v57 = *v38;
          v58 = (*v91)[4];
          if (v58 && v58 - 1 >= -v57)
          {
            goto LABEL_85;
          }

          if (v57)
          {
            v60 = *(v57 - 8);
            v59 = (v57 - 8);
            v61 = v60 + 8;
            if (v60 != -8)
            {
              bzero(v59, v61);
            }

            free(v59);
          }

          *v38 = 0;
          v38[1] = 0;
          v32 = v90;
          if (!v17)
          {
            goto LABEL_18;
          }

          v62 = malloc_type_malloc(v17 + 8, 0xB4E622C9uLL);
          if (!v62)
          {
LABEL_83:
            ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
            *v38 = 0;
LABEL_84:
            v28 = 68;
            v29 = 3279;
            goto LABEL_16;
          }

          *v62 = v17;
          v63 = v62 + 1;
          *(v56 + 24) = v62 + 1;
          *(v56 + 32) = v17;
          if (v17 >= 8)
          {
            v64 = v12 + 2;
            if ((v62 - v87 + 4) >= 0x20)
            {
              if (v17 < 0x20)
              {
                v65 = 0;
LABEL_76:
                v63 += v78;
                v70 = &v77[v65];
                v71 = (v62 + v65 + 8);
                v72 = v76 + v65;
                do
                {
                  v73 = *v70;
                  v70 += 8;
                  *v71++ = v73;
                  v72 += 8;
                }

                while (v72);
                v64 = &v14[v78];
                if (!v79)
                {
                  goto LABEL_18;
                }

                goto LABEL_79;
              }

              v66 = v62 + 3;
              v67 = v75;
              v68 = v17 - v83;
              do
              {
                v69 = *v67;
                *(v66 - 1) = *(v67 - 1);
                *v66 = v69;
                v67 += 2;
                v66 += 2;
                v68 -= 32;
              }

              while (v68);
              if (!v83)
              {
                goto LABEL_18;
              }

              v65 = v17 - v83;
              if (v83 >= 8)
              {
                goto LABEL_76;
              }

              v63 += v85;
              v64 = &v14[v85];
            }
          }

          else
          {
            v64 = v12 + 2;
          }

          do
          {
LABEL_79:
            v74 = *v64++;
            *v63++ = v74;
          }

          while (v64 != v19);
LABEL_18:
          v26 = v91;
          if ((bssl::Array<unsigned char>::CopyFrom((*v91 + 5), v92, v90) & 1) == 0)
          {
            goto LABEL_84;
          }

          **v91 = 32150;
          v24 = v88;
          v20 = v89;
          v30 = 32150;
          v31 = v92;
LABEL_20:
          v21 = (v31 + v32);
          ++v24;
          v23 = v30;
        }

        while (v20);
      }
    }

    else
    {
      v28 = 137;
      v29 = 3245;
LABEL_16:
      ERR_put_error(16, 0, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", v29);
    }
  }
}

uint64_t bssl::ext_trust_anchors_add_clienthello(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(*(a1 + 8) + 120) != 1)
  {
    return 1;
  }

  v10[0] = 0;
  result = CBB_add_space(a3, v10, 2);
  if (result)
  {
    *(v10[0] + 1) = 52;
    *v10[0] = -54;
    result = CBB_add_u16_length_prefixed(a3, v10);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v10, v9);
      if (result)
      {
        v6 = *(a1 + 8);
        if (*(v6 + 120))
        {
          v7 = *(v6 + 104);
          v8 = *(v6 + 112);
          v11 = 0;
          result = CBB_add_space(v9, &v11, v8);
          if (result)
          {
            if (v8)
            {
              memcpy(v11, v7, v8);
            }

            return CBB_flush(a3) != 0;
          }
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_trust_anchors_parse_serverhello(uint64_t result, _BYTE *a2, unint64_t *a3)
{
  if (a3)
  {
    v3 = *(*(*result + 48) + 208);
    if (v3 - 769 >= 4)
    {
      if (v3 != 65276)
      {
        goto LABEL_4;
      }
    }

    else if (v3 <= 0x303)
    {
LABEL_4:
      ERR_put_error(16, 0, 222, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 2732);
      result = 0;
      *a2 = 110;
      return result;
    }

    v5 = a3[1];
    v6 = v5 - 2;
    if (v5 < 2 || (v7 = *a3, v8 = (*a3 + 2), *a3 = v8, a3[1] = v6, v9 = *v7, v10 = v7[1], v11 = v10 | (v9 << 8), v19 = v6 >= v11, v12 = v6 - v11, !v19) || (v13 = &v8[v11], *a3 = &v8[v11], a3[1] = v12, !v11))
    {
LABEL_28:
      *a2 = 50;
      ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 2743);
      return 0;
    }

    v14 = v9 << 8;
    v15 = v8;
    v16 = v11;
    do
    {
      v17 = v16 - 1;
      v18 = *v15;
      if (*v15)
      {
        v19 = v17 >= v18;
      }

      else
      {
        v19 = 0;
      }

      if (!v19)
      {
        goto LABEL_28;
      }

      v15 += v18 + 1;
      v16 = v17 - v18;
    }

    while (v16);
    v21 = *(result + 1496);
    v22 = *(result + 1504);
    if (v22 && v22 - 1 >= -v21)
    {
      __break(1u);
      return result;
    }

    v23 = result;
    v24 = (result + 1496);
    if (v21)
    {
      v26 = *(v21 - 8);
      v25 = (v21 - 8);
      v27 = v26 + 8;
      if (v26 != -8)
      {
        bzero(v25, v27);
      }

      free(v25);
    }

    *v24 = 0;
    v24[1] = 0;
    v28 = malloc_type_malloc(v11 + 8, 0xB4E622C9uLL);
    if (!v28)
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      result = 0;
      *v24 = 0;
      *a2 = 80;
      return result;
    }

    *v28 = v11;
    v29 = v28 + 1;
    *(v23 + 1496) = v28 + 1;
    *(v23 + 1504) = v11;
    if (v11 < 8 || (v28 - v7 + 6) < 0x20)
    {
      goto LABEL_38;
    }

    if (v11 < 0x20)
    {
      v30 = 0;
LABEL_35:
      v35 = v11 - (v10 & 7);
      v29 += v35;
      v8 += v35;
      v36 = &v7[v30 + 2];
      v37 = (v28 + v30 + 8);
      v38 = v30 + (v10 & 7) - v10 - v14;
      do
      {
        v39 = *v36;
        v36 += 8;
        *v37++ = v39;
        v38 += 8;
      }

      while (v38);
      if ((v10 & 7) != 0)
      {
        goto LABEL_38;
      }

      return 1;
    }

    v30 = v11 - (v10 & 0x1F);
    v31 = (v7 + 18);
    v32 = v28 + 3;
    v33 = v30;
    do
    {
      v34 = *v31;
      *(v32 - 1) = *(v31 - 1);
      *v32 = v34;
      v31 += 2;
      v32 += 2;
      v33 -= 32;
    }

    while (v33);
    if ((v10 & 0x1F) != 0)
    {
      if ((v10 & 0x1Fu) >= 8uLL)
      {
        goto LABEL_35;
      }

      v8 += v30;
      v29 += v30;
LABEL_38:
      result = 1;
      do
      {
        v40 = *v8++;
        *v29++ = v40;
      }

      while (v8 != v13);
      return result;
    }
  }

  return 1;
}

uint64_t bssl::ext_trust_anchors_parse_clienthello(uint64_t result, _BYTE *a2, unint64_t *a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = *(*(*result + 48) + 208);
  if (v3 - 769 >= 4)
  {
    if (v3 != 65276)
    {
      return 1;
    }
  }

  else if (v3 < 0x304)
  {
    return 1;
  }

  v4 = a3[1];
  v17 = v4 >= 2;
  v5 = v4 - 2;
  if (!v17 || (v6 = *a3, v7 = (*a3 + 2), *a3 = v7, a3[1] = v5, v8 = *v6, v9 = v6[1], v10 = v9 | (v8 << 8), v17 = v5 >= v10, v11 = v5 - v10, !v17))
  {
LABEL_9:
    *a2 = 50;
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 2670);
    return 0;
  }

  v12 = &v7[v10];
  *a3 = &v7[v10];
  a3[1] = v11;
  if (v10)
  {
    v13 = v7;
    v14 = v9 | (v8 << 8);
    do
    {
      v15 = v14 - 1;
      v16 = *v13;
      v17 = *v13 && v15 >= v16;
      if (!v17)
      {
        goto LABEL_9;
      }

      v13 += v16 + 1;
      v14 = v15 - v16;
    }

    while (v14);
  }

  if (*(result + 1488) == 1)
  {
    v18 = *(result + 1472);
    v19 = *(result + 1480);
    if (v19 && v19 - 1 >= -v18)
    {
      __break(1u);
      return result;
    }

    if (v18)
    {
      v20 = result;
      v21 = a2;
      v23 = *(v18 - 8);
      v22 = (v18 - 8);
      v24 = v23 + 8;
      if (v23 != -8)
      {
        bzero(v22, v24);
      }

      free(v22);
      a2 = v21;
      result = v20;
    }
  }

  *(result + 1488) = 1;
  v25 = (result + 1472);
  *(result + 1472) = 0;
  *(result + 1480) = 0;
  if (!v10)
  {
    return 1;
  }

  v26 = result;
  v27 = a2;
  v28 = malloc_type_malloc(v10 + 8, 0xB4E622C9uLL);
  if (!v28)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    result = 0;
    *v25 = 0;
    *v27 = 80;
    return result;
  }

  *v28 = v10;
  v29 = v28 + 1;
  *(v26 + 1472) = v28 + 1;
  *(v26 + 1480) = v10;
  if (v10 >= 8 && (v28 - v6 + 6) >= 0x20)
  {
    if (v10 < 0x20)
    {
      v30 = 0;
      goto LABEL_37;
    }

    v30 = v10 - (v9 & 0x1F);
    v31 = (v6 + 18);
    v32 = v28 + 3;
    v33 = v30;
    do
    {
      v34 = *v31;
      *(v32 - 1) = *(v31 - 1);
      *v32 = v34;
      v31 += 2;
      v32 += 2;
      v33 -= 32;
    }

    while (v33);
    if ((v9 & 0x1F) == 0)
    {
      return 1;
    }

    if ((v9 & 0x1Fu) >= 8uLL)
    {
LABEL_37:
      v35 = v10 - (v9 & 7);
      v29 += v35;
      v7 += v35;
      v36 = &v6[v30 + 2];
      v37 = (v28 + v30 + 8);
      v38 = v30 + (v9 & 7) - v9 - (v8 << 8);
      do
      {
        v39 = *v36;
        v36 += 8;
        *v37++ = v39;
        v38 += 8;
      }

      while (v38);
      if ((v9 & 7) == 0)
      {
        return 1;
      }

      goto LABEL_40;
    }

    v7 += v30;
    v29 += v30;
  }

LABEL_40:
  result = 1;
  do
  {
    v40 = *v7++;
    *v29++ = v40;
  }

  while (v7 != v12);
  return result;
}

uint64_t bssl::ext_trust_anchors_add_serverhello(bssl **a1, uint64_t a2)
{
  v4 = *(*(*a1 + 6) + 208);
  if (v4 - 769 >= 4)
  {
    if (v4 != 65276)
    {
      return 1;
    }
  }

  else if (v4 < 0x304)
  {
    return 1;
  }

  if (*(a2 + 8))
  {
    v5 = *(*(a2 + 16) + 8) - (*(a2 + 24) + *(a2 + 32));
    v34[0] = 0;
    result = CBB_add_space(a2, v34, 2);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *(a2 + 24);
    v34[0] = 0;
    result = CBB_add_space(a2, v34, 2);
    if (!result)
    {
      return result;
    }
  }

  *(v34[0] + 1) = 52;
  *v34[0] = -54;
  result = CBB_add_u16_length_prefixed(a2, v34);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(v34, &v29);
    if (result)
    {
      v7 = *(a1[1] + 4);
      v8 = v7[1];
      if (v8)
      {
        v9 = *v7;
        v10 = &(*v7)[v8];
        do
        {
          v13 = *v9;
          if (!*(*v9 + 200))
          {
            goto LABEL_16;
          }

          v14 = *(v13 + 4);
          if (v14)
          {
            if (v14 != 1)
            {
              v11 = 228;
              v12 = 275;
LABEL_14:
              ERR_put_error(16, 0, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/tls13_server.cc", v12);
LABEL_15:
              ERR_clear_error();
              goto LABEL_16;
            }

            v15 = a1[82];
            if (v15)
            {
              v16 = 2 * v15;
              v17 = a1[81];
              while (*v17 != *(v13 + 64))
              {
                v17 = (v17 + 2);
                v16 -= 2;
                if (!v16)
                {
                  goto LABEL_34;
                }
              }
            }

            else
            {
              v17 = a1[81];
            }

            if (v17 == (a1[81] + 2 * v15))
            {
LABEL_34:
              v11 = 253;
              v12 = 270;
              goto LABEL_14;
            }
          }

          if (!bssl::tls1_choose_signature_algorithm(a1, v13, &v27))
          {
            goto LABEL_15;
          }

          if (!CBB_add_u8_length_prefixed(&v29, v28))
          {
            return 0;
          }

          v18 = *(*v9 + 192);
          v19 = *(*v9 + 200);
          v35 = 0;
          if (!CBB_add_space(v28, &v35, v19))
          {
            return 0;
          }

          if (v19)
          {
            memcpy(v35, v18, v19);
          }

          result = CBB_flush(&v29);
          if (!result)
          {
            return result;
          }

LABEL_16:
          ++v9;
        }

        while (v9 != v10);
      }

      if (v30)
      {
        v20 = *(v31 + 8) - (v32 + v33);
        v21 = CBB_flush(a2);
        result = v21 != 0;
        if (!v21)
        {
          return result;
        }
      }

      else
      {
        v20 = v32;
        v22 = CBB_flush(a2);
        result = v22 != 0;
        if (!v22)
        {
          return result;
        }
      }

      if (!v20)
      {
        if (*(a2 + 8))
        {
          if (*a2)
          {
            goto LABEL_51;
          }

          v23 = *(a2 + 16);
          v24 = *(v23 + 8);
          v25 = *(a2 + 24) + *(a2 + 32);
          v26 = v24 - (v25 + v5);
          if (v24 - v25 < v26)
          {
            goto LABEL_51;
          }
        }

        else
        {
          v24 = *(a2 + 24);
          v26 = v24 - v5;
          if (*a2 || v24 < v5)
          {
LABEL_51:
            abort();
          }

          v23 = a2 + 16;
        }

        *(v23 + 8) = v24 - v26;
        return 1;
      }
    }
  }

  return result;
}

uint64_t bssl::ext_quic_transport_params_add_clienthello_impl(void *a1, uint64_t *a2, int a3)
{
  v3 = a1[1];
  v4 = *(*a1 + 152);
  if (!*(v3 + 200))
  {
    if (!v4)
    {
      return 1;
    }

LABEL_15:
    ERR_put_error(16, 0, 305, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 2765);
    return 0;
  }

  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = *(v3 + 269) & 0x200;
  if (a3 != v5 >> 9)
  {
    return 1;
  }

  v13[0] = 0;
  result = CBB_add_space(a2, v13, 2);
  if (result)
  {
    v9 = v5 ? -91 : 57;
    *(v13[0] + 1) = v9;
    *v13[0] = HIBYTE(v9);
    result = CBB_add_u16_length_prefixed(a2, v13);
    if (result)
    {
      v10 = a1[1];
      v11 = *(v10 + 192);
      v12 = *(v10 + 200);
      v14 = 0;
      result = CBB_add_space(v13, &v14, v12);
      if (result)
      {
        if (v12)
        {
          memcpy(v14, v11, v12);
        }

        return CBB_flush(a2) != 0;
      }
    }
  }

  return result;
}

uint64_t bssl::ext_quic_transport_params_parse_clienthello_impl(uint64_t result, char *a2, uint64_t *a3, int a4)
{
  v4 = *(*result + 152);
  if (!a3)
  {
    v17 = *(result + 8);
    if (v4)
    {
      if (((((*(v17 + 269) & 0x200) == 0) ^ a4) & 1) == 0)
      {
        return 1;
      }

      v18 = 109;
    }

    else
    {
      if (!*(v17 + 200))
      {
        return 1;
      }

      v19 = a2;
      ERR_put_error(16, 0, 305, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 2851);
      a2 = v19;
      v18 = 80;
    }

LABEL_22:
    result = 0;
    *a2 = v18;
    return result;
  }

  if (!v4)
  {
    if (a4)
    {
      return 1;
    }

    v18 = 110;
    goto LABEL_22;
  }

  if (((*(*(result + 8) + 269) & 0x200) == 0) == a4)
  {
    return 1;
  }

  v5 = *(*result + 48);
  v6 = *a3;
  v7 = a3[1];
  v8 = *(v5 + 576);
  v9 = *(v5 + 584);
  if (!v9 || v9 - 1 < -v8)
  {
    v10 = (v5 + 576);
    if (v8)
    {
      v12 = *(v8 - 8);
      v11 = (v8 - 8);
      v13 = v12 + 8;
      if (v12 != -8)
      {
        bzero(v11, v13);
      }

      free(v11);
    }

    *v10 = 0;
    *(v5 + 584) = 0;
    if (!v7)
    {
      return 1;
    }

    if (v7 > 0xFFFFFFFFFFFFFFF7 || (v14 = malloc_type_malloc(v7 + 8, 0xB4E622C9uLL)) == 0)
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      result = 0;
      *v10 = 0;
      return result;
    }

    *v14 = v7;
    v15 = v14 + 1;
    *(v5 + 576) = v14 + 1;
    *(v5 + 584) = v7;
    if (v7 < 8)
    {
      v16 = v6;
      goto LABEL_36;
    }

    v16 = v6;
    if (v14 - v6 + 8 >= 0x20)
    {
      if (v7 < 0x20)
      {
        v20 = 0;
        goto LABEL_31;
      }

      v20 = v7 & 0xFFFFFFFFFFFFFFE0;
      v21 = (v6 + 16);
      v22 = v14 + 3;
      v23 = v7 & 0xFFFFFFFFFFFFFFE0;
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
      if (v7 == v20)
      {
        return 1;
      }

      if ((v7 & 0x18) != 0)
      {
LABEL_31:
        v15 += v7 & 0xFFFFFFFFFFFFFFF8;
        v16 = (v6 + (v7 & 0xFFFFFFFFFFFFFFF8));
        v25 = (v6 + v20);
        v26 = (v14 + v20 + 8);
        v27 = v20 - (v7 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v28 = *v25++;
          *v26++ = v28;
          v27 += 8;
        }

        while (v27);
        if (v7 == (v7 & 0xFFFFFFFFFFFFFFF8))
        {
          return 1;
        }

        goto LABEL_36;
      }

      v16 = (v6 + v20);
      v15 += v20;
    }

    do
    {
LABEL_36:
      v29 = *v16++;
      *v15++ = v29;
    }

    while (v16 != (v6 + v7));
    return 1;
  }

  __break(1u);
  return result;
}

uint64_t bssl::ext_quic_transport_params_add_serverhello_impl(void *a1, uint64_t *a2, int a3)
{
  if (!*(*a1 + 152) && (a3 & 1) != 0)
  {
    return 1;
  }

  v4 = a1[1];
  if (*(v4 + 200))
  {
    v5 = *(v4 + 269) & 0x200;
    if (a3 == v5 >> 9)
    {
      v12[0] = 0;
      result = CBB_add_space(a2, v12, 2);
      if (result)
      {
        v8 = v5 ? -91 : 57;
        *(v12[0] + 1) = v8;
        *v12[0] = HIBYTE(v8);
        result = CBB_add_u16_length_prefixed(a2, v12);
        if (result)
        {
          v9 = a1[1];
          v10 = *(v9 + 192);
          v11 = *(v9 + 200);
          v13 = 0;
          result = CBB_add_space(v12, &v13, v11);
          if (result)
          {
            if (v11)
            {
              memcpy(v13, v10, v11);
            }

            return CBB_flush(a2) != 0;
          }
        }
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    ERR_put_error(16, 0, 305, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 2904);
    return 0;
  }

  return result;
}

uint64_t bssl::ext_alps_add_clienthello_impl(uint64_t a1, uint64_t *a2, int a3)
{
  if (*(a1 + 30) < 0x304u)
  {
    return 1;
  }

  v20[7] = v3;
  v20[8] = v4;
  v6 = *(a1 + 8);
  if (!*(v6 + 160))
  {
    return 1;
  }

  if (!*(v6 + 176))
  {
    return 1;
  }

  if ((*(*(*a1 + 48) + 220) & 0x10) != 0)
  {
    return 1;
  }

  v7 = *(v6 + 269) & 0x2000;
  if (a3 != v7 >> 13)
  {
    return 1;
  }

  v19[0] = 0;
  result = CBB_add_space(a2, v19, 2);
  if (result)
  {
    v10 = v7 ? -51 : 105;
    *(v19[0] + 1) = v10;
    *v19[0] = 68;
    result = CBB_add_u16_length_prefixed(a2, v19);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v19, v18);
      if (result)
      {
        v11 = *(a1 + 8);
        v12 = *(v11 + 176);
        if (v12)
        {
          v13 = *(v11 + 168);
          v14 = v13 + 32 * v12;
          while (1)
          {
            result = CBB_add_u8_length_prefixed(v18, v17);
            if (!result)
            {
              break;
            }

            v15 = *v13;
            v16 = *(v13 + 8);
            v20[0] = 0;
            result = CBB_add_space(v17, v20, v16);
            if (!result)
            {
              break;
            }

            if (v16)
            {
              memcpy(v20[0], v15, v16);
            }

            v13 += 32;
            if (v13 == v14)
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

uint64_t bssl::ext_alps_add_serverhello_impl(void *a1, uint64_t *a2, int a3)
{
  v3 = a1[194];
  if (!v3)
  {
    return 1;
  }

  if ((*(v3 + 408) & 0x40) == 0)
  {
    return 1;
  }

  if ((*(*(*a1 + 48) + 220) & 0x200) != 0)
  {
    return 1;
  }

  v5 = *(a1[1] + 269) & 0x2000;
  if (a3 != v5 >> 13)
  {
    return 1;
  }

  v12[0] = 0;
  result = CBB_add_space(a2, v12, 2);
  if (result)
  {
    v8 = v5 ? -51 : 105;
    *(v12[0] + 1) = v8;
    *v12[0] = 68;
    result = CBB_add_u16_length_prefixed(a2, v12);
    if (result)
    {
      v9 = a1[194];
      v10 = *(v9 + 376);
      v11 = *(v9 + 384);
      v13 = 0;
      result = CBB_add_space(v12, &v13, v11);
      if (result)
      {
        if (v11)
        {
          memcpy(v13, v10, v11);
        }

        return CBB_flush(a2) != 0;
      }
    }
  }

  return result;
}

void bssl::internal::Deleter::operator()<bssl::SSLPAKEShare>(int a1, void *a2)
{
  if (a2)
  {
    v4 = a2[5];
    v3 = a2[6];
    v5 = a2 + 5;
    if (v3 && v3 - 1 >= -v4)
    {
      goto LABEL_26;
    }

    if (v4)
    {
      v7 = *(v4 - 8);
      v6 = (v4 - 8);
      v8 = v7 + 8;
      if (v7 != -8)
      {
        bzero(v6, v8);
      }

      free(v6);
    }

    *v5 = 0;
    v5[1] = 0;
    v10 = a2[3];
    v9 = a2[4];
    if (v9)
    {
      if (v9 - 1 >= -v10)
      {
        goto LABEL_26;
      }
    }

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

    a2[3] = 0;
    a2[4] = 0;
    v15 = a2[1];
    v14 = a2[2];
    if (v14 && v14 - 1 >= -v15)
    {
LABEL_26:
      __break(1u);
    }

    else
    {
      if (v15)
      {
        v17 = *(v15 - 8);
        v16 = (v15 - 8);
        v18 = v17 + 8;
        if (v17 != -8)
        {
          bzero(v16, v18);
        }

        free(v16);
      }

      a2[1] = 0;
      a2[2] = 0;
      v20 = *(a2 - 1);
      v19 = (a2 - 1);
      v21 = v20 + 8;
      if (v20 != -8)
      {
        bzero(v19, v21);
      }

      free(v19);
    }
  }
}

void *bssl::tls_extension_find(bssl *this, unsigned int *a2)
{
  v2 = 0;
  if (a2 > 13171)
  {
    if (a2 <= 35386)
    {
      if (a2 > 17612)
      {
        if (a2 == 17613)
        {
          v3 = &unk_2882A5608;
          LODWORD(a2) = 23;
        }

        else
        {
          if (a2 != 30032)
          {
            return v2;
          }

          v3 = &unk_2882A5450;
          LODWORD(a2) = 12;
        }
      }

      else if (a2 == 13172)
      {
        v3 = &unk_2882A5400;
        LODWORD(a2) = 10;
      }

      else
      {
        if (a2 != 17513)
        {
          return v2;
        }

        v3 = &unk_2882A5630;
        LODWORD(a2) = 24;
      }
    }

    else if (a2 <= 65036)
    {
      if (a2 == 35387)
      {
        v3 = &unk_2882A5680;
        LODWORD(a2) = 26;
      }

      else
      {
        if (a2 != 51764)
        {
          return v2;
        }

        v3 = &unk_2882A56A8;
        LODWORD(a2) = 27;
      }
    }

    else
    {
      switch(a2)
      {
        case 0xFFA5:
          v3 = &unk_2882A5590;
          LODWORD(a2) = 20;
          break;
        case 0xFF01:
          v3 = &unk_2882A52E8;
          LODWORD(a2) = 3;
          break;
        case 0xFE0D:
          v3 = &unk_2882A5298;
          LODWORD(a2) = 1;
          break;
        default:
          return v2;
      }
    }

LABEL_42:
    *this = a2;
    return v3;
  }

  v3 = &bssl::kExtensions;
  switch(a2)
  {
    case 0:
      goto LABEL_42;
    case 5:
      v3 = &unk_2882A53B0;
      LODWORD(a2) = 8;
      goto LABEL_42;
    case 10:
      v3 = &unk_2882A5310;
      LODWORD(a2) = 4;
      goto LABEL_42;
    case 11:
      v3 = &unk_2882A5338;
      LODWORD(a2) = 5;
      goto LABEL_42;
    case 13:
      v3 = &unk_2882A53D8;
      LODWORD(a2) = 9;
      goto LABEL_42;
    case 14:
      v3 = &unk_2882A5478;
      LODWORD(a2) = 13;
      goto LABEL_42;
    case 16:
      v3 = &unk_2882A5388;
      LODWORD(a2) = 7;
      goto LABEL_42;
    case 18:
      v3 = &unk_2882A5428;
      LODWORD(a2) = 11;
      goto LABEL_42;
    case 23:
      v3 = &unk_2882A52C0;
      LODWORD(a2) = 2;
      goto LABEL_42;
    case 27:
      v3 = &unk_2882A55B8;
      LODWORD(a2) = 21;
      goto LABEL_42;
    case 34:
      v3 = &unk_2882A55E0;
      LODWORD(a2) = 22;
      goto LABEL_42;
    case 35:
      v3 = &unk_2882A5360;
      LODWORD(a2) = 6;
      goto LABEL_42;
    case 42:
      v3 = &unk_2882A54F0;
      LODWORD(a2) = 16;
      goto LABEL_42;
    case 43:
      v3 = &unk_2882A5518;
      LODWORD(a2) = 17;
      goto LABEL_42;
    case 44:
      v3 = &unk_2882A5540;
      LODWORD(a2) = 18;
      goto LABEL_42;
    case 45:
      v3 = &unk_2882A54C8;
      LODWORD(a2) = 15;
      goto LABEL_42;
    case 47:
      v3 = &unk_2882A5658;
      LODWORD(a2) = 25;
      goto LABEL_42;
    case 51:
      v3 = &unk_2882A54A0;
      LODWORD(a2) = 14;
      goto LABEL_42;
    case 57:
      v3 = &unk_2882A5568;
      LODWORD(a2) = 19;
      goto LABEL_42;
    default:
      return v2;
  }

  return v2;
}

uint64_t bssl::decrypt_ticket_with_cipher_ctx(uint64_t *a1, EVP_CIPHER_CTX *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v62 = *MEMORY[0x277D85DE8];
  cipher = a2->cipher;
  if ((HIDWORD(a2->cipher->flags) & 0x3F) != 6)
  {
    goto LABEL_9;
  }

  outl[0] = 0;
  v11 = *&cipher->ctx_size;
  if (!v11)
  {
    v14 = 104;
    v15 = 582;
LABEL_8:
    ERR_put_error(30, 0, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/cipher/cipher.cc.inc", v15);
    goto LABEL_9;
  }

  v12 = v11(a2, 25, 0, outl);
  if (v12 == -1)
  {
    v14 = 105;
    v15 = 588;
    goto LABEL_8;
  }

  if (v12 == 1)
  {
    iv_len = outl[0];
    goto LABEL_10;
  }

LABEL_9:
  iv_len = a2->cipher->iv_len;
LABEL_10:
  v16 = iv_len;
  v17 = *(*a3 + 4);
  if (a5 < iv_len + v17 + 17)
  {
    return 2;
  }

  v18 = a5 - v17;
  (*(*(a3 + 8) + 24))(a3 + 8, a4, a5 - v17);
  (*(*(a3 + 8) + 32))(a3 + 8, outl);
  v19 = *(*(a3 + 8) + 4);
  v20 = *(*(a3 + 8) + 44);
  if (v20)
  {
    bzero(*(a3 + 16), v20);
  }

  EVP_MD_CTX_copy_ex((a3 + 8), (a3 + 72));
  (*(*(a3 + 8) + 24))(a3 + 8, outl, v19);
  (*(*(a3 + 8) + 32))(a3 + 8, v59);
  v21 = *(*(a3 + 8) + 44);
  if (v21)
  {
    bzero(*(a3 + 16), v21);
  }

  if (v17)
  {
    if (v17 < 8)
    {
      v22 = 0;
      v23 = 0;
      goto LABEL_27;
    }

    if (v17 >= 0x20)
    {
      v22 = v17 & 0xFFFFFFE0;
      v24 = &v60;
      v25 = (v18 + a4 + 16);
      v26 = 0uLL;
      v27 = v22;
      v28 = 0uLL;
      do
      {
        v26 = vorrq_s8(veorq_s8(v25[-1], v24[-1]), v26);
        v28 = vorrq_s8(veorq_s8(*v25, *v24), v28);
        v24 += 2;
        v25 += 2;
        v27 -= 32;
      }

      while (v27);
      v29 = vorrq_s8(v28, v26);
      *v29.i8 = vorr_s8(*v29.i8, *&vextq_s8(v29, v29, 8uLL));
      v30 = v29.i64[0] | HIDWORD(v29.i64[0]) | ((v29.i64[0] | HIDWORD(v29.i64[0])) >> 16);
      v23 = v30 | BYTE1(v30);
      if (v22 == v17)
      {
        goto LABEL_30;
      }

      if ((v17 & 0x18) == 0)
      {
LABEL_27:
        v40 = v22 - v17;
        v41 = &v59[v22];
        do
        {
          v42 = *v41++;
          v23 |= *(a4 + a5 + v40) ^ v42;
        }

        while (!__CFADD__(v40++, 1));
        goto LABEL_30;
      }
    }

    else
    {
      v23 = 0;
      v22 = 0;
    }

    v31 = v22;
    v22 = v17 & 0xFFFFFFF8;
    v32 = v23;
    v33 = &v59[v31];
    v34 = (a4 + a5 + v31 - v17);
    v35 = v31 - v22;
    do
    {
      v36 = *v33++;
      v37 = v36;
      v38 = *v34++;
      v32 = vorr_s8(veor_s8(v38, v37), v32);
      v35 += 8;
    }

    while (v35);
    v39 = *&v32 | HIDWORD(*&v32) | ((*&v32 | HIDWORD(*&v32)) >> 16);
    v23 = v39 | BYTE1(v39);
    if (v22 != v17)
    {
      goto LABEL_27;
    }

LABEL_30:
    if (v23)
    {
      return 2;
    }
  }

  v44 = v16 + 16;
  v45 = v18 - (v16 + 16);
  if (v18 < v16 + 16)
  {
    goto LABEL_59;
  }

  if (v45 > 0x7FFFFFFE)
  {
    return 2;
  }

  if (v18 == v44)
  {
    v46 = 0;
  }

  else
  {
    v47 = malloc_type_malloc(v45 + 8, 0xB4E622C9uLL);
    if (!v47)
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      return 3;
    }

    *v47 = v45;
    v46 = (v47 + 1);
  }

  outl[0] = 0;
  v58 = 0;
  if (!EVP_DecryptUpdate(a2, v46, outl, (a4 + v44), v18 - (v16 + 16)) || !EVP_DecryptFinal_ex(a2, (v46 + outl[0]), &v58))
  {
    ERR_clear_error();
    if (v18 != v44 && v45 - 1 >= -v46)
    {
      goto LABEL_58;
    }

    if (v46)
    {
      v56 = *(v46 - 8);
      v55 = (v46 - 8);
      v57 = v56 + 8;
      if (v56 != -8)
      {
        bzero(v55, v57);
      }

      free(v55);
    }

    return 2;
  }

  v48 = v58 + outl[0];
  if (v48 > v45)
  {
    goto LABEL_59;
  }

  if (v48 != v45 && v48 - v45 <= v46 + v48 - 1 || (v50 = *a1, (v49 = a1[1]) != 0) && v49 - 1 >= -v50)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    abort();
  }

  if (v50)
  {
    v52 = *(v50 - 8);
    v51 = (v50 - 8);
    v53 = v52 + 8;
    if (v52 != -8)
    {
      bzero(v51, v53);
    }

    free(v51);
  }

  result = 0;
  *a1 = v46;
  a1[1] = v48;
  return result;
}

uint64_t CRYPTO_get_fork_generation()
{
  if (pthread_once(&g_pthread_fork_detection_once, init_pthread_fork_detection))
  {
    abort();
  }

  return g_atfork_fork_generation;
}

uint64_t init_pthread_fork_detection(void)
{
  result = pthread_atfork(0, 0, we_are_forked);
  if (result)
  {
    abort();
  }

  g_atfork_fork_generation = 1;
  return result;
}

void we_are_forked(void)
{
  if ((g_atfork_fork_generation + 1) > 1)
  {
    v0 = g_atfork_fork_generation + 1;
  }

  else
  {
    v0 = 1;
  }

  g_atfork_fork_generation = v0;
}

void bssl::SSL_HANDSHAKE::~SSL_HANDSHAKE(bssl::SSL_HANDSHAKE *this)
{
  (*(*(*(*this + 104) + 16) + 80))();
  v2 = *(this + 213);
  *(this + 213) = 0;
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

  v6 = *(this + 212);
  *(this + 212) = 0;
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

  v10 = *(this + 210);
  v11 = *(this + 211);
  if (v11 && v11 - 1 >= -v10)
  {
    goto LABEL_341;
  }

  if (v10)
  {
    v13 = *(v10 - 8);
    v12 = (v10 - 8);
    v14 = v13 + 8;
    if (v13 != -8)
    {
      bzero(v12, v14);
    }

    free(v12);
  }

  *(this + 210) = 0;
  *(this + 211) = 0;
  v15 = *(this + 209);
  *(this + 209) = 0;
  if (v15)
  {
    bssl::internal::Deleter::operator()<bssl::SSLPAKEShare>(this + 1672, v15);
  }

  if (*(this + 1661) && this + 1628 >= -*(this + 1661))
  {
    goto LABEL_341;
  }

  *(this + 1661) = 0;
  v16 = *(this + 201);
  *(this + 201) = 0;
  if (v16)
  {
    v18 = v16[28];
    v17 = v16[29];
    if (v17 && v17 - 1 >= -v18)
    {
      goto LABEL_341;
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

    v16[28] = 0;
    v16[29] = 0;
    v23 = v16[26];
    v22 = v16[27];
    if (v22)
    {
      if (v22 - 1 >= -v23)
      {
        goto LABEL_341;
      }
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

    v16[26] = 0;
    v16[27] = 0;
    v28 = v16[24];
    v27 = v16[25];
    if (v27)
    {
      if (v27 - 1 >= -v28)
      {
        goto LABEL_341;
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

    v16[24] = 0;
    v16[25] = 0;
    v33 = v16[21];
    v32 = v16[22];
    if (v32)
    {
      if (v32 - 1 >= -v33)
      {
        goto LABEL_341;
      }
    }

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

    v16[21] = 0;
    v16[22] = 0;
    v38 = v16[19];
    v37 = v16[20];
    if (v37)
    {
      if (v37 - 1 >= -v38)
      {
        goto LABEL_341;
      }
    }

    if (v38)
    {
      v40 = *(v38 - 8);
      v39 = (v38 - 8);
      v41 = v40 + 8;
      if (v40 != -8)
      {
        bzero(v39, v41);
      }

      free(v39);
    }

    v16[19] = 0;
    v16[20] = 0;
    v43 = v16[16];
    v42 = v16[17];
    if (v42)
    {
      if (v42 - 1 >= -v43)
      {
        goto LABEL_341;
      }
    }

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

    v16[16] = 0;
    v16[17] = 0;
    v48 = v16[14];
    v47 = v16[15];
    if (v47)
    {
      if (v47 - 1 >= -v48)
      {
        goto LABEL_341;
      }
    }

    if (v48)
    {
      v50 = *(v48 - 8);
      v49 = (v48 - 8);
      v51 = v50 + 8;
      if (v50 != -8)
      {
        bzero(v49, v51);
      }

      free(v49);
    }

    v16[14] = 0;
    v16[15] = 0;
    v53 = v16[12];
    v52 = v16[13];
    if (v52)
    {
      if (v52 - 1 >= -v53)
      {
        goto LABEL_341;
      }
    }

    if (v53)
    {
      v55 = *(v53 - 8);
      v54 = (v53 - 8);
      v56 = v55 + 8;
      if (v55 != -8)
      {
        bzero(v54, v56);
      }

      free(v54);
    }

    v16[12] = 0;
    v16[13] = 0;
    v58 = v16[10];
    v57 = v16[11];
    if (v57)
    {
      if (v57 - 1 >= -v58)
      {
        goto LABEL_341;
      }
    }

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

    v16[10] = 0;
    v16[11] = 0;
    v63 = v16[7];
    v62 = v16[8];
    if (v62)
    {
      if (v62 - 1 >= -v63)
      {
        goto LABEL_341;
      }
    }

    if (v63)
    {
      v65 = *(v63 - 8);
      v64 = (v63 - 8);
      v66 = v65 + 8;
      if (v65 != -8)
      {
        bzero(v64, v66);
      }

      free(v64);
    }

    v16[7] = 0;
    v16[8] = 0;
    v68 = v16[5];
    v67 = v16[6];
    if (v67)
    {
      if (v67 - 1 >= -v68)
      {
        goto LABEL_341;
      }
    }

    if (v68)
    {
      v70 = *(v68 - 8);
      v69 = (v68 - 8);
      v71 = v70 + 8;
      if (v70 != -8)
      {
        bzero(v69, v71);
      }

      free(v69);
    }

    v16[5] = 0;
    v16[6] = 0;
    v73 = v16[2];
    v72 = v16[3];
    if (v72)
    {
      if (v72 - 1 >= -v73)
      {
        goto LABEL_341;
      }
    }

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

    v16[2] = 0;
    v16[3] = 0;
    v78 = *v16;
    v77 = v16[1];
    if (v77)
    {
      if (v77 - 1 >= -v78)
      {
        goto LABEL_341;
      }
    }

    if (v78)
    {
      v80 = *(v78 - 8);
      v79 = (v78 - 8);
      v81 = v80 + 8;
      if (v80 != -8)
      {
        bzero(v79, v81);
      }

      free(v79);
    }

    *v16 = 0;
    v16[1] = 0;
    v83 = *(v16 - 1);
    v82 = v16 - 1;
    v84 = v83 + 8;
    if (v83 != -8)
    {
      bzero(v82, v84);
    }

    free(v82);
  }

  v85 = *(this + 199);
  v86 = *(this + 200);
  if (v86 && v86 - 1 >= -v85)
  {
    goto LABEL_341;
  }

  if (v85)
  {
    v88 = *(v85 - 8);
    v87 = (v85 - 8);
    v89 = v88 + 8;
    if (v88 != -8)
    {
      bzero(v87, v89);
    }

    free(v87);
  }

  *(this + 199) = 0;
  *(this + 200) = 0;
  v90 = *(this + 197);
  *(this + 197) = 0;
  if (v90)
  {
    v92 = *v90;
    v91 = v90[1];
    if (v91 && v91 - 1 >= -v92)
    {
      goto LABEL_341;
    }

    if (v92)
    {
      v94 = *(v92 - 8);
      v93 = (v92 - 8);
      v95 = v94 + 8;
      if (v94 != -8)
      {
        bzero(v93, v95);
      }

      free(v93);
    }

    *v90 = 0;
    v90[1] = 0;
    v97 = *(v90 - 1);
    v96 = v90 - 1;
    v98 = v97 + 8;
    if (v97 != -8)
    {
      bzero(v96, v98);
    }

    free(v96);
  }

  v99 = *(this + 196);
  *(this + 196) = 0;
  if (v99)
  {
    SSL_ECH_KEYS_free(v99);
  }

  v100 = *(this + 195);
  *(this + 195) = 0;
  if (!v100)
  {
    goto LABEL_126;
  }

  v101 = atomic_load(v100);
  if (v101 == -1)
  {
    goto LABEL_126;
  }

  while (1)
  {
    if (!v101)
    {
      goto LABEL_342;
    }

    v102 = v101;
    atomic_compare_exchange_strong(&v100->ssl_version, &v102, v101 - 1);
    if (v102 == v101)
    {
      break;
    }

    v101 = v102;
    if (v102 == -1)
    {
      goto LABEL_126;
    }
  }

  if (v101 == 1)
  {
    ssl_session_st::~ssl_session_st(v100);
    tlsext_tick_lifetime_hint = v100[-1].tlsext_tick_lifetime_hint;
    p_tlsext_tick_lifetime_hint = &v100[-1].tlsext_tick_lifetime_hint;
    v111 = tlsext_tick_lifetime_hint + 8;
    if (tlsext_tick_lifetime_hint != -8)
    {
      bzero(p_tlsext_tick_lifetime_hint, v111);
    }

    free(p_tlsext_tick_lifetime_hint);
    v103 = *(this + 194);
    *(this + 194) = 0;
    if (!v103)
    {
      goto LABEL_139;
    }
  }

  else
  {
LABEL_126:
    v103 = *(this + 194);
    *(this + 194) = 0;
    if (!v103)
    {
      goto LABEL_139;
    }
  }

  v104 = atomic_load(v103);
  if (v104 != -1)
  {
    while (1)
    {
      if (!v104)
      {
        goto LABEL_342;
      }

      v105 = v104;
      atomic_compare_exchange_strong(&v103->ssl_version, &v105, v104 - 1);
      if (v105 == v104)
      {
        break;
      }

      v104 = v105;
      if (v105 == -1)
      {
        goto LABEL_139;
      }
    }

    if (v104 == 1)
    {
      ssl_session_st::~ssl_session_st(v103);
      v107 = v103[-1].tlsext_tick_lifetime_hint;
      v106 = &v103[-1].tlsext_tick_lifetime_hint;
      v108 = v107 + 8;
      if (v107 != -8)
      {
        bzero(v106, v108);
      }

      free(v106);
    }
  }

LABEL_139:
  v112 = *(this + 193);
  *(this + 193) = 0;
  if (!v112)
  {
    goto LABEL_146;
  }

  v113 = atomic_load(v112);
  if (v113 == -1)
  {
    goto LABEL_146;
  }

  while (1)
  {
    if (!v113)
    {
      goto LABEL_342;
    }

    v114 = v113;
    atomic_compare_exchange_strong(v112, &v114, v113 - 1);
    if (v114 == v113)
    {
      break;
    }

    v113 = v114;
    if (v114 == -1)
    {
      goto LABEL_146;
    }
  }

  if (v113 == 1)
  {
    v121 = *(v112 + 16);
    if (v121)
    {
      v122 = *(v121 + 160);
      if (v122)
      {
        v122(v112);
        *(v112 + 8) = 0;
        *(v112 + 4) = 0;
      }
    }

    v124 = *(v112 - 8);
    v123 = (v112 - 8);
    v125 = v124 + 8;
    if (v124 != -8)
    {
      bzero(v123, v125);
    }

    free(v123);
    v115 = *(this + 192);
    *(this + 192) = 0;
    if (!v115)
    {
      goto LABEL_162;
    }
  }

  else
  {
LABEL_146:
    v115 = *(this + 192);
    *(this + 192) = 0;
    if (!v115)
    {
      goto LABEL_162;
    }
  }

  v116 = atomic_load(v115);
  if (v116 != -1)
  {
    while (1)
    {
      if (!v116)
      {
        goto LABEL_342;
      }

      v117 = v116;
      atomic_compare_exchange_strong(v115, &v117, v116 - 1);
      if (v117 == v116)
      {
        break;
      }

      v116 = v117;
      if (v117 == -1)
      {
        goto LABEL_162;
      }
    }

    if (v116 == 1)
    {
      ssl_credential_st::~ssl_credential_st(v115);
      v119 = *(v115 - 1);
      v118 = v115 - 2;
      v120 = v119 + 8;
      if (v119 != -8)
      {
        bzero(v118, v120);
      }

      free(v118);
    }
  }

LABEL_162:
  v126 = *(this + 190);
  v127 = *(this + 191);
  if (v127 && v127 - 1 >= -v126)
  {
    goto LABEL_341;
  }

  if (v126)
  {
    v129 = *(v126 - 8);
    v128 = (v126 - 8);
    v130 = v129 + 8;
    if (v129 != -8)
    {
      bzero(v128, v130);
    }

    free(v128);
  }

  *(this + 190) = 0;
  *(this + 191) = 0;
  v131 = *(this + 187);
  v132 = *(this + 188);
  if (v132)
  {
    if (v132 - 1 >= -v131)
    {
      goto LABEL_341;
    }
  }

  if (v131)
  {
    v134 = *(v131 - 8);
    v133 = (v131 - 8);
    v135 = v134 + 8;
    if (v134 != -8)
    {
      bzero(v133, v135);
    }

    free(v133);
  }

  *(this + 187) = 0;
  *(this + 188) = 0;
  if (*(this + 1488) == 1)
  {
    v136 = *(this + 184);
    v137 = *(this + 185);
    if (v137 && v137 - 1 >= -v136)
    {
      goto LABEL_341;
    }

    if (v136)
    {
      v139 = *(v136 - 8);
      v138 = (v136 - 8);
      v140 = v139 + 8;
      if (v139 != -8)
      {
        bzero(v138, v140);
      }

      free(v138);
    }

    *(this + 184) = 0;
    *(this + 185) = 0;
  }

  v141 = *(this + 183);
  *(this + 183) = 0;
  if (v141)
  {
    v142 = *v141;
    if (*v141)
    {
      v143 = 0;
      do
      {
        v144 = *(v141[1] + 8 * v143);
        if (v144)
        {
          CRYPTO_BUFFER_free(v144);
          v142 = *v141;
        }

        ++v143;
      }

      while (v143 < v142);
    }

    v145 = v141[1];
    if (v145)
    {
      v147 = *(v145 - 8);
      v146 = (v145 - 8);
      v148 = v147 + 8;
      if (v147 != -8)
      {
        bzero(v146, v148);
      }

      free(v146);
    }

    v150 = *(v141 - 1);
    v149 = v141 - 1;
    v151 = v150 + 8;
    if (v150 != -8)
    {
      bzero(v149, v151);
    }

    free(v149);
  }

  v152 = *(this + 182);
  *(this + 182) = 0;
  if (v152)
  {
    v154 = *(v152 - 8);
    v153 = (v152 - 8);
    v155 = v154 + 8;
    if (v154 != -8)
    {
      bzero(v153, v155);
    }

    free(v153);
  }

  v156 = *(this + 180);
  v157 = *(this + 181);
  if (v157 && v157 - 1 >= -v156)
  {
    goto LABEL_341;
  }

  if (v156)
  {
    v159 = *(v156 - 8);
    v158 = (v156 - 8);
    v160 = v159 + 8;
    if (v159 != -8)
    {
      bzero(v158, v160);
    }

    free(v158);
  }

  *(this + 180) = 0;
  *(this + 181) = 0;
  v161 = *(this + 95);
  if (v161)
  {
    (*(v161 + 24))(this + 760);
    *(this + 95) = 0;
  }

  v162 = *(this + 89);
  v163 = *(this + 90);
  if (v163)
  {
    if (v163 - 1 >= -v162)
    {
      goto LABEL_341;
    }
  }

  if (v162)
  {
    v165 = *(v162 - 8);
    v164 = (v162 - 8);
    v166 = v165 + 8;
    if (v165 != -8)
    {
      bzero(v164, v166);
    }

    free(v164);
  }

  *(this + 89) = 0;
  *(this + 90) = 0;
  v167 = *(this + 87);
  v168 = *(this + 88);
  if (v168)
  {
    if (v168 - 1 >= -v167)
    {
      goto LABEL_341;
    }
  }

  if (v167)
  {
    v170 = *(v167 - 8);
    v169 = (v167 - 8);
    v171 = v170 + 8;
    if (v170 != -8)
    {
      bzero(v169, v171);
    }

    free(v169);
  }

  *(this + 87) = 0;
  *(this + 88) = 0;
  v172 = *(this + 85);
  v173 = *(this + 86);
  if (v173)
  {
    v174 = v172 - 2;
    do
    {
      v174 += 2;
      if (!v174)
      {
        goto LABEL_341;
      }
    }

    while (--v173);
  }

  if (v172)
  {
    v176 = *(v172 - 8);
    v175 = (v172 - 8);
    v177 = v176 + 8;
    if (v176 != -8)
    {
      bzero(v175, v177);
    }

    free(v175);
  }

  *(this + 85) = 0;
  *(this + 86) = 0;
  v178 = *(this + 83);
  v179 = *(this + 84);
  if (v179)
  {
    v180 = v178 - 2;
    do
    {
      v180 += 2;
      if (!v180)
      {
        goto LABEL_341;
      }
    }

    while (--v179);
  }

  if (v178)
  {
    v182 = *(v178 - 8);
    v181 = (v178 - 8);
    v183 = v182 + 8;
    if (v182 != -8)
    {
      bzero(v181, v183);
    }

    free(v181);
  }

  *(this + 83) = 0;
  *(this + 84) = 0;
  v184 = *(this + 81);
  v185 = *(this + 82);
  if (v185)
  {
    v186 = v184 - 2;
    do
    {
      v186 += 2;
      if (!v186)
      {
        goto LABEL_341;
      }
    }

    while (--v185);
  }

  if (v184)
  {
    v188 = *(v184 - 8);
    v187 = (v184 - 8);
    v189 = v188 + 8;
    if (v188 != -8)
    {
      bzero(v187, v189);
    }

    free(v187);
  }

  *(this + 81) = 0;
  *(this + 82) = 0;
  v190 = *(this + 79);
  v191 = *(this + 80);
  if (v191)
  {
    if (v191 - 1 >= -v190)
    {
      goto LABEL_341;
    }
  }

  if (v190)
  {
    v193 = *(v190 - 8);
    v192 = (v190 - 8);
    v194 = v193 + 8;
    if (v193 != -8)
    {
      bzero(v192, v194);
    }

    free(v192);
  }

  *(this + 79) = 0;
  *(this + 80) = 0;
  v195 = *(this + 77);
  v196 = *(this + 78);
  if (v196)
  {
    if (v196 - 1 >= -v195)
    {
      goto LABEL_341;
    }
  }

  if (v195)
  {
    v198 = *(v195 - 8);
    v197 = (v195 - 8);
    v199 = v198 + 8;
    if (v198 != -8)
    {
      bzero(v197, v199);
    }

    free(v197);
  }

  *(this + 77) = 0;
  *(this + 78) = 0;
  v200 = *(this + 75);
  v201 = *(this + 76);
  if (v201)
  {
    if (v201 - 1 >= -v200)
    {
      goto LABEL_341;
    }
  }

  if (v200)
  {
    v203 = *(v200 - 8);
    v202 = (v200 - 8);
    v204 = v203 + 8;
    if (v203 != -8)
    {
      bzero(v202, v204);
    }

    free(v202);
  }

  *(this + 75) = 0;
  *(this + 76) = 0;
  v205 = *(this + 73);
  v206 = *(this + 74);
  if (v206)
  {
    if (v206 - 1 >= -v205)
    {
      goto LABEL_341;
    }
  }

  if (v205)
  {
    v208 = *(v205 - 8);
    v207 = (v205 - 8);
    v209 = v208 + 8;
    if (v208 != -8)
    {
      bzero(v207, v209);
    }

    free(v207);
  }

  *(this + 73) = 0;
  *(this + 74) = 0;
  v210 = *(this + 71);
  v211 = *(this + 72);
  if (v211)
  {
    if (v211 - 1 >= -v210)
    {
      goto LABEL_341;
    }
  }

  if (v210)
  {
    v213 = *(v210 - 8);
    v212 = (v210 - 8);
    v214 = v213 + 8;
    if (v213 != -8)
    {
      bzero(v212, v214);
    }

    free(v212);
  }

  *(this + 71) = 0;
  *(this + 72) = 0;
  v215 = *(this + 69);
  v216 = *(this + 70);
  if (v216)
  {
    if (v216 - 1 >= -v215)
    {
      goto LABEL_341;
    }
  }

  if (v215)
  {
    v218 = *(v215 - 8);
    v217 = (v215 - 8);
    v219 = v218 + 8;
    if (v218 != -8)
    {
      bzero(v217, v219);
    }

    free(v217);
  }

  *(this + 69) = 0;
  *(this + 70) = 0;
  v220 = *(this + 67);
  v221 = *(this + 68);
  if (v221)
  {
    if (v221 - 1 >= -v220)
    {
      goto LABEL_341;
    }
  }

  if (v220)
  {
    v223 = *(v220 - 8);
    v222 = (v220 - 8);
    v224 = v223 + 8;
    if (v223 != -8)
    {
      bzero(v222, v224);
    }

    free(v222);
  }

  *(this + 67) = 0;
  *(this + 68) = 0;
  v225 = *(this + 59);
  if (v225)
  {
    v227 = *(v225 - 8);
    v226 = (v225 - 8);
    v228 = v227 + 8;
    if (v227 != -8)
    {
      bzero(v226, v228);
    }

    free(v226);
  }

  v229 = *(this + 61);
  if (v229)
  {
    (*v229)(*(this + 60));
  }

  *(this + 29) = 0u;
  *(this + 30) = 0u;
  v230 = *(this + 57);
  *(this + 57) = 0;
  if (v230)
  {
    v231 = *(v230 + 8);
    if (v231)
    {
      v233 = *(v231 - 8);
      v232 = (v231 - 8);
      v234 = v233 + 8;
      if (v233 != -8)
      {
        bzero(v232, v234);
      }

      free(v232);
    }

    v236 = *(v230 - 8);
    v235 = (v230 - 8);
    v237 = v236 + 8;
    if (v236 != -8)
    {
      bzero(v235, v237);
    }

    free(v235);
  }

  v238 = *(this + 53);
  if (v238)
  {
    v240 = *(v238 - 8);
    v239 = (v238 - 8);
    v241 = v240 + 8;
    if (v240 != -8)
    {
      bzero(v239, v241);
    }

    free(v239);
  }

  v242 = *(this + 55);
  if (v242)
  {
    (*v242)(*(this + 54));
  }

  *(this + 26) = 0u;
  *(this + 27) = 0u;
  v243 = *(this + 51);
  *(this + 51) = 0;
  if (v243)
  {
    v244 = *(v243 + 8);
    if (v244)
    {
      v246 = *(v244 - 8);
      v245 = (v244 - 8);
      v247 = v246 + 8;
      if (v246 != -8)
      {
        bzero(v245, v247);
      }

      free(v245);
    }

    v249 = *(v243 - 8);
    v248 = (v243 - 8);
    v250 = v249 + 8;
    if (v249 != -8)
    {
      bzero(v248, v250);
    }

    free(v248);
  }

  v251 = *(this + 50);
  *(this + 50) = 0;
  if (v251)
  {
    (**v251)(v251);
    v253 = *(v251 - 1);
    v252 = v251 - 1;
    v254 = v253 + 8;
    if (v253 != -8)
    {
      bzero(v252, v254);
    }

    free(v252);
  }

  v255 = *(this + 49);
  *(this + 49) = 0;
  if (v255)
  {
    (**v255)(v255);
    v257 = *(v255 - 1);
    v256 = v255 - 1;
    v258 = v257 + 8;
    if (v257 != -8)
    {
      bzero(v256, v258);
    }

    free(v256);
  }

  v259 = *(this + 48);
  *(this + 48) = 0;
  if (v259)
  {
    if (*(v259 + 8))
    {
      v260 = 0;
      v261 = 0;
      do
      {
        v262 = *v259 + v260;
        free(*(v262 + 8));
        *v262 = 0;
        *(v262 + 8) = 0;
        *(v262 + 16) = 0;
        ++v261;
        v260 += 24;
      }

      while (v261 < *(v259 + 8));
    }

    free(*v259);
    free(v259);
  }

  if (*(this + 374) && this + 325 >= -*(this + 374) || (*(this + 374) = 0, *(this + 325)) && this + 276 >= -*(this + 325) || (*(this + 325) = 0, *(this + 276)) && this + 227 >= -*(this + 276) || (*(this + 276) = 0, *(this + 227)) && this + 178 >= -*(this + 227) || (*(this + 227) = 0, *(this + 178)) && this + 129 >= -*(this + 178) || (*(this + 178) = 0, *(this + 129)) && this + 80 >= -*(this + 129) || (*(this + 129) = 0, *(this + 80)) && this + 31 >= -*(this + 80))
  {
LABEL_341:
    __break(1u);
LABEL_342:
    abort();
  }

  *(this + 80) = 0;
}