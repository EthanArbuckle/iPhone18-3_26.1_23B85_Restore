uint64_t bssl::ssl_write_buffer_flush(bssl *this, ssl_st *a2)
{
  v2 = *(this + 4);
  if (!v2)
  {
    ERR_put_error(16, 0, 119, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_buffer.cc", 294);
    return 0xFFFFFFFFLL;
  }

  v4 = *(this + 6);
  v5 = *(v4 + 114);
  if (**this)
  {
    if (*(v4 + 114))
    {
      if (*v2 && (v6 = *(*v2 + 16)) != 0)
      {
        if (*(v2 + 16))
        {
          result = v6(*(this + 4), *(v4 + 104) + *(v4 + 112));
          if (result > 0)
          {
            *(v2 + 64) += result;
            v8 = *(v4 + 104);
            v9 = (v4 + 118);
            result = 1;
LABEL_26:
            if (v8 != v9)
            {
              v17 = result;
              free(v8);
              result = v17;
            }

            *(v4 + 110) = 0;
            *(v4 + 104) = 0;
            return result;
          }

LABEL_25:
          *(*(this + 6) + 196) = 3;
          v8 = *(v4 + 104);
          v9 = (v4 + 118);
          goto LABEL_26;
        }

        v15 = 114;
        v16 = 125;
      }

      else
      {
        v15 = 115;
        v16 = 121;
      }

      ERR_put_error(17, 0, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", v16);
      result = 4294967294;
      goto LABEL_25;
    }

    return 1;
  }

  if (!*(v4 + 114))
  {
LABEL_19:
    v14 = *(v4 + 104);
    if (v14 != (v4 + 118))
    {
      free(v14);
    }

    *(v4 + 110) = 0;
    *(v4 + 104) = 0;
    return 1;
  }

  v10 = *(v4 + 112);
  while (1)
  {
    v11 = *(this + 4);
    if (!v11 || !*v11 || (v12 = *(*v11 + 16)) == 0)
    {
      v18 = 115;
      v19 = 121;
      goto LABEL_32;
    }

    if (!*(v11 + 16))
    {
      break;
    }

    result = v12(*(this + 4), *(v4 + 104) + v10, v5);
    if (result <= 0)
    {
      goto LABEL_33;
    }

    *(v11 + 64) += result;
    v13 = *(v4 + 114);
    if (result > v13)
    {
      abort();
    }

    v10 = *(v4 + 112) + result;
    *(v4 + 112) = v10;
    v5 = v13 - result;
    *(v4 + 114) = v13 - result;
    *(v4 + 116) -= result;
    if (v13 == result)
    {
      goto LABEL_19;
    }
  }

  v18 = 114;
  v19 = 125;
LABEL_32:
  ERR_put_error(17, 0, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", v19);
  result = 4294967294;
LABEL_33:
  *(*(this + 6) + 196) = 3;
  return result;
}

void bssl::CERT::~CERT(bssl::CERT *this)
{
  (*(*(this + 4) + 16))();
  if (*(this + 120) && this + 87 >= -*(this + 120))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    abort();
  }

  *(this + 120) = 0;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = atomic_load(v2);
  if (v3 == -1)
  {
    goto LABEL_10;
  }

  while (1)
  {
    if (!v3)
    {
      goto LABEL_35;
    }

    v4 = v3;
    atomic_compare_exchange_strong(v2, &v4, v3 - 1);
    if (v4 == v3)
    {
      break;
    }

    v3 = v4;
    if (v4 == -1)
    {
      goto LABEL_10;
    }
  }

  if (v3 != 1)
  {
LABEL_10:
    v5 = *this;
    v6 = *(this + 1);
    if (v6)
    {
      goto LABEL_19;
    }

LABEL_11:
    if (!v5)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  ssl_credential_st::~ssl_credential_st(v2);
  v8 = *(v2 - 1);
  v7 = v2 - 2;
  v9 = v8 + 8;
  if (v8 != -8)
  {
    bzero(v7, v9);
  }

  free(v7);
  v5 = *this;
  v6 = *(this + 1);
  if (!v6)
  {
    goto LABEL_11;
  }

  do
  {
LABEL_19:
    if (!v5)
    {
      goto LABEL_34;
    }

    v10 = *v5;
    *v5 = 0;
    if (v10)
    {
      v11 = atomic_load(v10);
      if (v11 != -1)
      {
        while (1)
        {
          if (!v11)
          {
            goto LABEL_35;
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
          ssl_credential_st::~ssl_credential_st(v10);
          v14 = *(v10 - 1);
          v13 = v10 - 2;
          v15 = v14 + 8;
          if (v14 != -8)
          {
            bzero(v13, v15);
          }

          free(v13);
        }
      }
    }

LABEL_18:
    ++v5;
    --v6;
  }

  while (v6);
  v5 = *this;
  if (*this)
  {
LABEL_30:
    v17 = *(v5 - 1);
    v16 = v5 - 1;
    v18 = v17 + 8;
    if (v17 != -8)
    {
      bzero(v16, v18);
    }

    free(v16);
  }

LABEL_33:
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
}

void bssl::ssl_cert_dup(bssl *this@<X0>, bssl **a2@<X8>)
{
  v5 = malloc_type_malloc(0x88uLL, 0xB4E622C9uLL);
  if (!v5)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    *a2 = 0;
    return;
  }

  v6 = v5;
  *v5 = 128;
  v7 = *(this + 4);
  v5[1] = 0;
  v8 = (v5 + 1);
  v5[2] = 0;
  v5[3] = 0;
  v9 = malloc_type_malloc(0xE8uLL, 0xB4E622C9uLL);
  if (v9)
  {
    *(v9 + 2) = 1;
    v10 = v9 + 8;
    *v9 = 224;
    *(v9 + 5) = 0u;
    *(v9 + 6) = 0u;
    *(v9 + 7) = 0u;
    *(v9 + 8) = 0u;
    *(v9 + 9) = 0u;
    *(v9 + 10) = 0u;
    *(v9 + 11) = 0u;
    *(v9 + 48) = 0;
    *(v9 + 26) = 0;
    *(v9 + 27) = 0;
    *(v9 + 25) = 0;
    v9[224] = 0;
    *(v9 + 12) = 0u;
    *(v9 + 28) = 0u;
    *(v9 + 44) = 0u;
    *(v9 + 58) = 0u;
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v10 = 0;
  }

  v6[4] = v10;
  v6[5] = v7;
  *(v6 + 128) = 0;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 5) = 0u;
  v11 = *(this + 1);
  if (!v11)
  {
LABEL_18:
    ssl_credential_st::Dup(*(this + 3), &v63);
    v18 = v63;
    v63 = 0;
    v19 = v6[4];
    v6[4] = v18;
    if (!v19)
    {
      goto LABEL_48;
    }

    v20 = atomic_load(v19);
    if (v20 == -1)
    {
      goto LABEL_25;
    }

    while (1)
    {
      if (!v20)
      {
        goto LABEL_100;
      }

      v21 = v20;
      atomic_compare_exchange_strong(v19, &v21, v20 - 1);
      if (v21 == v20)
      {
        break;
      }

      v20 = v21;
      if (v21 == -1)
      {
        goto LABEL_25;
      }
    }

    if (v20 == 1)
    {
      ssl_credential_st::~ssl_credential_st(v19);
      v34 = *(v19 - 1);
      v33 = v19 - 2;
      v35 = v34 + 8;
      if (v34 != -8)
      {
        bzero(v33, v35);
      }

      free(v33);
      v22 = v63;
      v63 = 0;
      if (v22)
      {
LABEL_26:
        v23 = atomic_load(v22);
        if (v23 != -1)
        {
          while (1)
          {
            if (!v23)
            {
              goto LABEL_100;
            }

            v24 = v23;
            atomic_compare_exchange_strong(v22, &v24, v23 - 1);
            if (v24 == v23)
            {
              break;
            }

            v23 = v24;
            if (v24 == -1)
            {
              goto LABEL_47;
            }
          }

          if (v23 == 1)
          {
            ssl_credential_st::~ssl_credential_st(v22);
            v28 = *(v22 - 1);
            v27 = v22 - 2;
            v29 = v28 + 8;
            if (v28 != -8)
            {
              bzero(v27, v29);
            }

            free(v27);
          }
        }
      }
    }

    else
    {
LABEL_25:
      v22 = v63;
      v63 = 0;
      if (v22)
      {
        goto LABEL_26;
      }
    }

LABEL_47:
    v18 = v6[4];
LABEL_48:
    if (!v18)
    {
      goto LABEL_60;
    }

    *(v6 + 9) = *(this + 4);
    (*(v6[5] + 24))(v8, this);
    if (v8 == this)
    {
      goto LABEL_59;
    }

    v36 = *(this + 120);
    if (v36 > 0x20)
    {
      goto LABEL_100;
    }

    v37 = v6 + 12;
    if (*(v6 + 128) && v6 + 95 >= -*(v6 + 128))
    {
LABEL_99:
      __break(1u);
LABEL_100:
      abort();
    }

    *(v6 + 128) = 0;
    if (v36)
    {
      v38 = this + 88;
      if (v36 < 8 || (v6 - this + 8) < 0x20)
      {
        v39 = v6 + 12;
        v40 = this + 88;
        do
        {
LABEL_57:
          v41 = *v40++;
          *v39++ = v41;
        }

        while (v40 != &v38[v36]);
        goto LABEL_58;
      }

      if (v36 != 32)
      {
        v39 = v37 + (v36 & 0x38);
        v40 = &v38[v36 & 0x38];
        v60 = v36 & 0x38;
        v61 = (this + 88);
        do
        {
          v62 = *v61++;
          *v37++ = v62;
          v60 -= 8;
        }

        while (v60);
        if ((v36 & 0x18) == v36)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      }

      v59 = *(this + 104);
      *(v6 + 6) = *(this + 88);
      *(v6 + 7) = v59;
    }

LABEL_58:
    *(v6 + 128) = v36;
LABEL_59:
    *a2 = v8;
    return;
  }

  v12 = *this;
  v13 = *this + 8 * v11;
  while (1)
  {
    v15 = *v12;
    if (*v12)
    {
      break;
    }

    if ((bssl::Vector<std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>>::MaybeGrow(v8) & 1) == 0)
    {
      goto LABEL_60;
    }

LABEL_9:
    v14 = v6[2];
    *(v6[1] + 8 * v14) = v15;
    v6[2] = v14 + 1;
    if (++v12 == v13)
    {
      goto LABEL_18;
    }
  }

  v16 = atomic_load(v15);
  if (v16 != -1)
  {
    for (i = v16; i != -1; v16 = i)
    {
      atomic_compare_exchange_strong(v15, &i, v16 + 1);
      if (i == v16)
      {
        break;
      }
    }
  }

  if (bssl::Vector<std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>>::MaybeGrow(v8))
  {
    goto LABEL_9;
  }

  v25 = atomic_load(v15);
  if (v25 != -1)
  {
    while (1)
    {
      if (!v25)
      {
        goto LABEL_100;
      }

      v26 = v25;
      atomic_compare_exchange_strong(v15, &v26, v25 - 1);
      if (v26 == v25)
      {
        break;
      }

      v25 = v26;
      if (v26 == -1)
      {
        goto LABEL_60;
      }
    }

    if (v25 == 1)
    {
      ssl_credential_st::~ssl_credential_st(v15);
      v31 = *(v15 - 1);
      v30 = v15 - 2;
      v32 = v31 + 8;
      if (v31 != -8)
      {
        bzero(v30, v32);
      }

      free(v30);
    }
  }

LABEL_60:
  *a2 = 0;
  (*(v6[5] + 16))(v8);
  if (*(v6 + 128) && v6 + 95 >= -*(v6 + 128))
  {
    goto LABEL_99;
  }

  *(v6 + 128) = 0;
  v42 = v6[4];
  v6[4] = 0;
  if (!v42)
  {
    goto LABEL_69;
  }

  v43 = atomic_load(v42);
  if (v43 == -1)
  {
    goto LABEL_69;
  }

  while (1)
  {
    if (!v43)
    {
      goto LABEL_100;
    }

    v44 = v43;
    atomic_compare_exchange_strong(v42, &v44, v43 - 1);
    if (v44 == v43)
    {
      break;
    }

    v43 = v44;
    if (v44 == -1)
    {
      goto LABEL_69;
    }
  }

  if (v43 != 1)
  {
LABEL_69:
    v45 = v6[1];
    v46 = v6[2];
    if (v46)
    {
      goto LABEL_78;
    }

LABEL_70:
    if (!v45)
    {
      goto LABEL_92;
    }

LABEL_89:
    v57 = *(v45 - 1);
    v56 = v45 - 1;
    v58 = v57 + 8;
    if (v57 != -8)
    {
      bzero(v56, v58);
    }

    free(v56);
    goto LABEL_92;
  }

  ssl_credential_st::~ssl_credential_st(v42);
  v48 = *(v42 - 1);
  v47 = v42 - 2;
  v49 = v48 + 8;
  if (v48 != -8)
  {
    bzero(v47, v49);
  }

  free(v47);
  v45 = v6[1];
  v46 = v6[2];
  if (!v46)
  {
    goto LABEL_70;
  }

  do
  {
LABEL_78:
    if (!v45)
    {
      goto LABEL_99;
    }

    v50 = *v45;
    *v45 = 0;
    if (v50)
    {
      v51 = atomic_load(v50);
      if (v51 != -1)
      {
        while (1)
        {
          if (!v51)
          {
            goto LABEL_100;
          }

          v52 = v51;
          atomic_compare_exchange_strong(v50, &v52, v51 - 1);
          if (v52 == v51)
          {
            break;
          }

          v51 = v52;
          if (v52 == -1)
          {
            goto LABEL_77;
          }
        }

        if (v51 == 1)
        {
          ssl_credential_st::~ssl_credential_st(v50);
          v54 = *(v50 - 1);
          v53 = v50 - 2;
          v55 = v54 + 8;
          if (v54 != -8)
          {
            bzero(v53, v55);
          }

          free(v53);
        }
      }
    }

LABEL_77:
    ++v45;
    --v46;
  }

  while (v46);
  v45 = *v8;
  if (*v8)
  {
    goto LABEL_89;
  }

LABEL_92:
  free(v6);
}

uint64_t bssl::ssl_parse_cert_chain(_BYTE *a1, uint64_t *a2, unsigned int **a3, unsigned __int8 *a4, unint64_t *a5, uint64_t *a6)
{
  v12 = *a2;
  *a2 = 0;
  if (v12)
  {
    v13 = *v12;
    if (*v12)
    {
      v14 = 0;
      do
      {
        v15 = *(v12[1] + 8 * v14);
        if (v15)
        {
          CRYPTO_BUFFER_free(v15);
          v13 = *v12;
        }

        ++v14;
      }

      while (v14 < v13);
    }

    v16 = v12[1];
    if (v16)
    {
      v18 = *(v16 - 8);
      v17 = (v16 - 8);
      v19 = v18 + 8;
      if (v18 != -8)
      {
        bzero(v17, v19);
      }

      free(v17);
    }

    v21 = *(v12 - 1);
    v20 = v12 - 1;
    v22 = v21 + 8;
    if (v21 != -8)
    {
      bzero(v20, v22);
    }

    free(v20);
  }

  v23 = *a3;
  *a3 = 0;
  if (!v23)
  {
    goto LABEL_21;
  }

  v24 = atomic_load(v23);
  if (v24 == -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    if (!v24)
    {
LABEL_130:
      abort();
    }

    v25 = v24;
    atomic_compare_exchange_strong(v23, &v25, v24 - 1);
    if (v25 == v24)
    {
      break;
    }

    v24 = v25;
    if (v25 == -1)
    {
      goto LABEL_21;
    }
  }

  if (v24 == 1)
  {
    v59 = *(v23 + 2);
    if (v59)
    {
      v60 = *(v59 + 160);
      if (v60)
      {
        v60(v23);
        *(v23 + 1) = 0;
        v23[1] = 0;
      }
    }

    v62 = *(v23 - 1);
    v61 = v23 - 2;
    v63 = v62 + 8;
    if (v62 != -8)
    {
      bzero(v61, v63);
    }

    free(v61);
    v64 = a5[1];
    v27 = v64 >= 3;
    v28 = v64 - 3;
    if (!v27)
    {
LABEL_24:
      *a1 = 50;
      ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_cert.cc", 133);
      return 0;
    }
  }

  else
  {
LABEL_21:
    v26 = a5[1];
    v27 = v26 >= 3;
    v28 = v26 - 3;
    if (!v27)
    {
      goto LABEL_24;
    }
  }

  v29 = *a5;
  v30 = (*a5 + 3);
  *a5 = v30;
  a5[1] = v28;
  v31 = (*v29 << 16) | (v29[1] << 8) | v29[2];
  v27 = v28 >= v31;
  v32 = v28 - v31;
  if (!v27)
  {
    goto LABEL_24;
  }

  *a5 = &v30[v31];
  a5[1] = v32;
  if (!v31)
  {
    return 1;
  }

  result = OPENSSL_sk_new_null();
  if (!result)
  {
    *a1 = 80;
    return result;
  }

  v34 = result;
  md = a4;
  v99 = a6;
  v97 = a1;
  v35 = 0;
  do
  {
    v36 = v31 - 3;
    if (v31 < 3 || (v37 = (*v30 << 16) | (v30[1] << 8) | v30[2], v31 = v36 - v37, v36 < v37) || !v37)
    {
      *v97 = 50;
      ERR_put_error(16, 0, 127, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_cert.cc", 153);
      if (v35)
      {
LABEL_84:
        v65 = atomic_load(v35);
        if (v65 != -1)
        {
          while (1)
          {
            if (!v65)
            {
              goto LABEL_130;
            }

            v66 = v65;
            atomic_compare_exchange_strong(v35, &v66, v65 - 1);
            if (v66 == v65)
            {
              break;
            }

            v65 = v66;
            if (v66 == -1)
            {
              goto LABEL_110;
            }
          }

          if (v65 == 1)
          {
            v67 = *(v35 + 2);
            if (v67)
            {
              v68 = *(v67 + 160);
              if (v68)
              {
                v68(v35);
                *(v35 + 1) = 0;
                v35[1] = 0;
              }
            }

            v70 = *(v35 - 1);
            v69 = v35 - 2;
            v71 = v70 + 8;
            if (v70 != -8)
            {
              bzero(v69, v71);
            }

            free(v69);
          }
        }
      }

LABEL_110:
      v82 = *v34;
      if (*v34)
      {
        v83 = 0;
        do
        {
          v84 = *(*(v34 + 8) + 8 * v83);
          if (v84)
          {
            CRYPTO_BUFFER_free(v84);
            v82 = *v34;
          }

          ++v83;
        }

        while (v83 < v82);
      }

      v85 = *(v34 + 8);
      if (v85)
      {
        v87 = *(v85 - 8);
        v86 = (v85 - 8);
        v88 = v87 + 8;
        if (v87 != -8)
        {
          bzero(v86, v88);
        }

        free(v86);
      }

      v90 = *(v34 - 8);
      v89 = (v34 - 8);
      v91 = v90 + 8;
      if (v90 != -8)
      {
        bzero(v89, v91);
      }

      free(v89);
      return 0;
    }

    v38 = v30 + 3;
    if (!*v34)
    {
      *&v101 = v30 + 3;
      *(&v101 + 1) = v37;
      if (bssl::ssl_cert_skip_to_spki(&v101, v100))
      {
        v39 = EVP_parse_public_key(v100);
        if (!v35)
        {
          goto LABEL_49;
        }
      }

      else
      {
        ERR_put_error(16, 0, 272, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_cert.cc", 265);
        v39 = 0;
        if (!v35)
        {
LABEL_49:
          if (!v39)
          {
            *v97 = 50;
            goto LABEL_110;
          }

          if (md)
          {
            SHA256(v38, v37, md);
          }

          v35 = v39;
          goto LABEL_53;
        }
      }

      v40 = atomic_load(v35);
      if (v40 != -1)
      {
        while (1)
        {
          if (!v40)
          {
            goto LABEL_130;
          }

          v41 = v40;
          atomic_compare_exchange_strong(v35, &v41, v40 - 1);
          if (v41 == v40)
          {
            break;
          }

          v40 = v41;
          if (v41 == -1)
          {
            goto LABEL_49;
          }
        }

        if (v40 == 1)
        {
          v42 = *(v35 + 2);
          if (v42)
          {
            v43 = *(v42 + 160);
            if (v43)
            {
              v43(v35);
              *(v35 + 1) = 0;
              v35[1] = 0;
            }
          }

          v45 = *(v35 - 1);
          v44 = v35 - 2;
          v46 = v45 + 8;
          if (v45 != -8)
          {
            bzero(v44, v46);
          }

          free(v44);
        }
      }

      goto LABEL_49;
    }

LABEL_53:
    v47 = crypto_buffer_new(v38, v37, 0, v99);
    if (!v47)
    {
      goto LABEL_83;
    }

    v48 = v47;
    v49 = *v34;
    if (*v34 >= 0x7FFFFFFFuLL)
    {
      ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
LABEL_82:
      CRYPTO_BUFFER_free(v48);
LABEL_83:
      *v97 = 80;
      if (v35)
      {
        goto LABEL_84;
      }

      goto LABEL_110;
    }

    v50 = *(v34 + 24);
    if (v50 <= v49 + 1)
    {
      v53 = OPENSSL_realloc(*(v34 + 8), 16 * v50);
      if (!v53)
      {
        goto LABEL_82;
      }

      *(v34 + 8) = v53;
      *(v34 + 24) = 2 * v50;
      v51 = *v34;
      v54 = *v34 - v49;
      if (*v34 <= v49)
      {
        v52 = &v53[v51];
      }

      else
      {
        if (8 * v54)
        {
          memmove(&v53[v49 + 1], &v53[v49], 8 * v54);
          v51 = *v34;
          v53 = *(v34 + 8);
        }

        v52 = &v53[v49];
      }
    }

    else
    {
      v51 = *v34;
      v52 = (*(v34 + 8) + 8 * v49);
    }

    *v52 = v48;
    *(v34 + 16) = 0;
    *v34 = v51 + 1;
    if (v51 == -1)
    {
      goto LABEL_82;
    }

    v30 = &v38[v37];
  }

  while (v31);
  v55 = *a2;
  *a2 = v34;
  if (v55)
  {
    v56 = *v55;
    if (*v55)
    {
      v57 = 0;
      do
      {
        v58 = *(v55[1] + 8 * v57);
        if (v58)
        {
          CRYPTO_BUFFER_free(v58);
          v56 = *v55;
        }

        ++v57;
      }

      while (v57 < v56);
    }

    v72 = v55[1];
    if (v72)
    {
      v74 = *(v72 - 8);
      v73 = (v72 - 8);
      v75 = v74 + 8;
      if (v74 != -8)
      {
        bzero(v73, v75);
      }

      free(v73);
    }

    v77 = *(v55 - 1);
    v76 = v55 - 1;
    v78 = v77 + 8;
    if (v77 != -8)
    {
      bzero(v76, v78);
    }

    free(v76);
  }

  v79 = *a3;
  *a3 = v35;
  if (v79)
  {
    v80 = atomic_load(v79);
    if (v80 != -1)
    {
      while (1)
      {
        if (!v80)
        {
          goto LABEL_130;
        }

        v81 = v80;
        atomic_compare_exchange_strong(v79, &v81, v80 - 1);
        if (v81 == v80)
        {
          break;
        }

        v80 = v81;
        if (v81 == -1)
        {
          return 1;
        }
      }

      if (v80 == 1)
      {
        v92 = *(v79 + 2);
        if (v92)
        {
          v93 = *(v92 + 160);
          if (v93)
          {
            v93(v79);
            *(v79 + 1) = 0;
            v79[1] = 0;
          }
        }

        v95 = *(v79 - 1);
        v94 = v79 - 2;
        v96 = v95 + 8;
        if (v95 != -8)
        {
          bzero(v94, v96);
        }

        free(v94);
      }
    }
  }

  return 1;
}

uint64_t bssl::ssl_cert_extract_issuer(__int128 *a1, unint64_t *a2)
{
  v10 = *a1;
  v11 = 0;
  LODWORD(v6) = 0;
  if (!cbs_get_any_asn1_element(&v10, &v8, &v6, &v11, 0, 0, 0) || v6 != 536870928 || v9 < v11)
  {
    return 0;
  }

  v8 += v11;
  v9 -= v11;
  if (*(&v10 + 1))
  {
    return 0;
  }

  v11 = 0;
  LODWORD(v14) = 0;
  if (!cbs_get_any_asn1_element(&v8, &v6, &v14, &v11, 0, 0, 0) || v14 != 536870928 || v7 < v11)
  {
    return 0;
  }

  v6 += v11;
  v7 -= v11;
  result = CBS_get_optional_asn1(&v6, 0, 0, -1610612736);
  if (result)
  {
    v14 = 0;
    v13 = 0;
    if (cbs_get_any_asn1_element(&v6, &v11, &v13, &v14, 0, 0, 0) && v13 == 2 && v12 >= v14)
    {
      v14 = 0;
      v13 = 0;
      if (cbs_get_any_asn1_element(&v6, &v11, &v13, &v14, 0, 0, 0) && v13 == 536870928 && v12 >= v14)
      {
        v13 = 0;
        if (a2)
        {
          v4 = a2;
        }

        else
        {
          v4 = &v11;
        }

        return cbs_get_any_asn1_element(&v6, v4, &v13, &v14, 0, 0, 0) && v13 == 536870928;
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

uint64_t bssl::ssl_cert_skip_to_spki(__int128 *a1, unsigned __int8 **a2)
{
  v12 = *a1;
  v13 = 0;
  LODWORD(v16) = 0;
  if (!cbs_get_any_asn1_element(&v12, &v10, &v16, &v13, 0, 0, 0) || v16 != 536870928 || v11 < v13)
  {
    return 0;
  }

  v10 += v13;
  v11 -= v13;
  if (*(&v12 + 1))
  {
    return 0;
  }

  v16 = 0;
  v15 = 0;
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = &v13;
  }

  if (!cbs_get_any_asn1_element(&v10, v4, &v15, &v16, 0, 0, 0) || v15 != 536870928)
  {
    return 0;
  }

  v5 = &v13;
  if (a2)
  {
    v5 = a2;
  }

  v6 = v5[1];
  v7 = v6 >= v16;
  v8 = v6 - v16;
  if (!v7)
  {
    return 0;
  }

  *v4 += v16;
  v5[1] = v8;
  result = CBS_get_optional_asn1(a2, 0, 0, -1610612736);
  if (result)
  {
    v16 = 0;
    v15 = 0;
    if (cbs_get_any_asn1_element(a2, &v13, &v15, &v16, 0, 0, 0) && v15 == 2 && v14 >= v16)
    {
      v16 = 0;
      v15 = 0;
      if (cbs_get_any_asn1_element(a2, &v13, &v15, &v16, 0, 0, 0) && v15 == 536870928 && v14 >= v16)
      {
        v16 = 0;
        v15 = 0;
        if (cbs_get_any_asn1_element(a2, &v13, &v15, &v16, 0, 0, 0) && v15 == 536870928 && v14 >= v16)
        {
          v16 = 0;
          v15 = 0;
          if (cbs_get_any_asn1_element(a2, &v13, &v15, &v16, 0, 0, 0) && v15 == 536870928 && v14 >= v16)
          {
            v16 = 0;
            v15 = 0;
            any_asn1_element = cbs_get_any_asn1_element(a2, &v13, &v15, &v16, 0, 0, 0);
            result = 0;
            if (any_asn1_element)
            {
              if (v15 == 536870928)
              {
                return v14 >= v16;
              }
            }
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

uint64_t bssl::ssl_compare_public_and_private_key(bssl *this, const evp_pkey_st *a2, const evp_pkey_st *a3)
{
  ptr = a2->pkey.ptr;
  if (ptr)
  {
    v6 = *(ptr + 14);
    if (v6)
    {
      if (v6(a2))
      {
        return 1;
      }
    }
  }

  if (*(this + 1) != a2->save_type)
  {
LABEL_16:
    v11 = 115;
    v12 = 287;
LABEL_18:
    ERR_put_error(11, 0, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_cert.cc", v12);
    return 0;
  }

  v8 = *(this + 2);
  if (!v8)
  {
LABEL_17:
    v11 = 128;
    v12 = 290;
    goto LABEL_18;
  }

  v9 = *(v8 + 152);
  if (v9)
  {
    result = v9(this, a2, a3);
    if (result < 1)
    {
      goto LABEL_13;
    }

    v8 = *(this + 2);
  }

  v10 = *(v8 + 40);
  if (!v10)
  {
    goto LABEL_17;
  }

  result = v10(this, a2, a3);
LABEL_13:
  if ((result & 0x80000000) != 0)
  {
    if (result != -2)
    {
      if (result != -1)
      {
        return 0;
      }

      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (result != 1)
  {
    if (result)
    {
      return 0;
    }

    v11 = 116;
    v12 = 284;
    goto LABEL_18;
  }

  return result;
}

uint64_t bssl::ssl_cert_check_key_usage(__int128 *a1, unsigned int a2)
{
  v27 = *a1;
  v24 = 0;
  if (!bssl::ssl_cert_skip_to_spki(&v27, v26) || (v25[0] = 0, LODWORD(v22) = 0, !cbs_get_any_asn1_element(v26, &v28, &v22, v25, 0, 0, 0)) || v22 != 536870928 || v29 < v25[0] || !CBS_get_optional_asn1(v26, 0, 0, -2147483647) || !CBS_get_optional_asn1(v26, 0, 0, -2147483646) || !CBS_get_optional_asn1(v26, v25, &v24, -1610612733))
  {
    v3 = 272;
    v4 = 315;
    goto LABEL_14;
  }

  if (!v24)
  {
    return 1;
  }

  v28 = 0;
  LODWORD(v20) = 0;
  if (cbs_get_any_asn1_element(v25, &v22, &v20, &v28, 0, 0, 0) && v20 == 536870928 && v23 >= v28)
  {
    v22 += v28;
    v23 -= v28;
    if (v23)
    {
      while (1)
      {
        v28 = 0;
        LODWORD(v31) = 0;
        if (!cbs_get_any_asn1_element(&v22, &v20, &v31, &v28, 0, 0, 0) || v31 != 536870928 || v21 < v28 || (v20 += v28, v21 -= v28, v28 = 0, LODWORD(v31) = 0, !cbs_get_any_asn1_element(&v20, &v18, &v31, &v28, 0, 0, 0)) || v31 != 6 || (v6 = v19 - v28, v19 < v28))
        {
LABEL_58:
          v3 = 272;
          v4 = 337;
          goto LABEL_14;
        }

        v7 = (v18 + v28);
        v18 += v28;
        v19 -= v28;
        if (v21)
        {
          v8 = *v20;
          LODWORD(v9) = v8 & 0x1F;
          if (v9 == 31)
          {
            v10 = 0;
            v11 = v20 + 1;
            v12 = v21 - 1;
            while (v12)
            {
              if (v10 >> 57)
              {
                break;
              }

              v13 = *v11;
              if (!v10 && v13 == 128)
              {
                break;
              }

              v9 = v13 & 0x7F | (v10 << 7);
              ++v11;
              --v12;
              v10 = v9;
              if ((v13 & 0x80) == 0)
              {
                if (v9 - 31 > 0x1FFFFFE0)
                {
                  break;
                }

                goto LABEL_36;
              }
            }
          }

          else
          {
LABEL_36:
            if ((v9 | (v8 << 24) & 0xE0000000) == 1)
            {
              v31 = 0;
              v30 = 0;
              if (!cbs_get_any_asn1_element(&v20, &v28, &v30, &v31, 0, 0, 0) || v30 != 1 || v29 < v31)
              {
                goto LABEL_58;
              }
            }
          }
        }

        v28 = 0;
        LODWORD(v31) = 0;
        if (!cbs_get_any_asn1_element(&v20, &v16, &v31, &v28, 0, 0, 0))
        {
          goto LABEL_58;
        }

        if (v31 != 4)
        {
          goto LABEL_58;
        }

        if (v17 < v28)
        {
          goto LABEL_58;
        }

        v16 += v28;
        v17 -= v28;
        if (v21)
        {
          goto LABEL_58;
        }

        if (v6 == 3 && *v7 == 7509 && v7[2] == 15)
        {
          break;
        }

        result = 1;
        if (!v23)
        {
          return result;
        }
      }

      if (!CBS_get_asn1(&v16, &v28, 3) || v17)
      {
        v3 = 272;
        v4 = 351;
        goto LABEL_14;
      }

      if (!v29 || (v15 = *v28, v15 > 7) || *v28 && (v29 == 1 || (v29[v28 - 1] & ~(-1 << v15)) != 0))
      {
        v3 = 272;
        v4 = 358;
        goto LABEL_14;
      }

      if (!CBS_asn1_bitstring_has_bit(&v28, a2))
      {
        v3 = 302;
        v4 = 363;
        goto LABEL_14;
      }
    }

    return 1;
  }

  v3 = 272;
  v4 = 325;
LABEL_14:
  ERR_put_error(16, 0, v3, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_cert.cc", v4);
  return 0;
}

void bssl::SSL_parse_CA_list(uint64_t a1@<X0>, _BYTE *a2@<X1>, void *a3@<X2>, char **a4@<X8>)
{
  v8 = *(*(a1 + 104) + 736);
  v9 = OPENSSL_sk_new_null();
  if (!v9)
  {
    *a2 = 80;
    *a4 = 0;
    return;
  }

  v10 = v9;
  v41 = a1;
  v11 = a3[1];
  v12 = v11 - 2;
  if (v11 >= 2 && (v13 = *a3, v14 = (*a3 + 2), *a3 = v14, a3[1] = v12, v15 = __rev16(*v13), v16 = v12 >= v15, v17 = v12 - v15, v16))
  {
    *a3 = v14 + v15;
    a3[1] = v17;
    if (v15)
    {
      while (1)
      {
        v21 = v15 - 2;
        if (v15 < 2 || (v22 = __rev16(*v14), v15 = v21 - v22, v21 < v22))
        {
          *a2 = 50;
          ERR_put_error(16, 0, 123, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_cert.cc", 396);
          *a4 = 0;
          v18 = *v10;
          if (*v10)
          {
            goto LABEL_5;
          }

          goto LABEL_34;
        }

        v23 = v14 + 1;
        v24 = crypto_buffer_new(v14 + 1, v22, 0, v8);
        if (!v24)
        {
          break;
        }

        v25 = v24;
        v26 = a2;
        v27 = a4;
        v28 = *v10;
        if (*v10 >= 0x7FFFFFFFuLL)
        {
          ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
LABEL_32:
          CRYPTO_BUFFER_free(v25);
          a4 = v27;
          a2 = v26;
          break;
        }

        v29 = *(v10 + 3);
        if (v29 <= v28 + 1)
        {
          v32 = OPENSSL_realloc(*(v10 + 1), 16 * v29);
          if (!v32)
          {
            goto LABEL_32;
          }

          *(v10 + 1) = v32;
          *(v10 + 3) = 2 * v29;
          v30 = *v10;
          v33 = *v10 - v28;
          if (*v10 <= v28)
          {
            v31 = &v32[v30];
          }

          else
          {
            if (8 * v33)
            {
              memmove(&v32[v28 + 1], &v32[v28], 8 * v33);
              v30 = *v10;
              v32 = *(v10 + 1);
            }

            v31 = &v32[v28];
          }
        }

        else
        {
          v30 = *v10;
          v31 = (*(v10 + 1) + 8 * v28);
        }

        *v31 = v25;
        *(v10 + 4) = 0;
        *v10 = v30 + 1;
        if (v30 == -1)
        {
          goto LABEL_32;
        }

        v14 = (v23 + v22);
        a4 = v27;
        a2 = v26;
        if (!v15)
        {
          goto LABEL_25;
        }
      }

      *a2 = 80;
      *a4 = 0;
      v18 = *v10;
      if (*v10)
      {
        goto LABEL_5;
      }

      goto LABEL_34;
    }

LABEL_25:
    if ((**(*(v41 + 104) + 16))(v10))
    {
      *a4 = v10;
      return;
    }

    *a2 = 50;
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_cert.cc", 411);
    *a4 = 0;
    v18 = *v10;
    if (*v10)
    {
      goto LABEL_5;
    }
  }

  else
  {
    *a2 = 50;
    ERR_put_error(16, 0, 162, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_cert.cc", 388);
    *a4 = 0;
    v18 = *v10;
    if (*v10)
    {
LABEL_5:
      v19 = 0;
      do
      {
        v20 = *(*(v10 + 1) + 8 * v19);
        if (v20)
        {
          CRYPTO_BUFFER_free(v20);
          v18 = *v10;
        }

        ++v19;
      }

      while (v19 < v18);
    }
  }

LABEL_34:
  v34 = *(v10 + 1);
  if (v34)
  {
    v36 = *(v34 - 8);
    v35 = (v34 - 8);
    v37 = v36 + 8;
    if (v36 != -8)
    {
      bzero(v35, v37);
    }

    free(v35);
  }

  v39 = *(v10 - 1);
  v38 = v10 - 8;
  v40 = v39 + 8;
  if (v39 != -8)
  {
    bzero(v38, v40);
  }

  free(v38);
}

uint64_t bssl::marshal_CA_names(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  if (a1)
  {
    a2 = a1;
  }

  result = CBB_add_u16_length_prefixed(a3, v12);
  if (result)
  {
    if (a2 && (v6 = *a2) != 0)
    {
      v7 = 0;
      while (1)
      {
        if (*a2 <= v7)
        {
          v8 = 0;
          result = CBB_add_u16_length_prefixed(v12, v11);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          v8 = *(a2[1] + 8 * v7);
          result = CBB_add_u16_length_prefixed(v12, v11);
          if (!result)
          {
            return result;
          }
        }

        v9 = *(v8 + 8);
        v10 = *(v8 + 16);
        v13 = 0;
        result = CBB_add_space(v11, &v13, v10);
        if (!result)
        {
          break;
        }

        if (v10)
        {
          memcpy(v13, v9, v10);
        }

        if (v6 == ++v7)
        {
          return CBB_flush(a3) != 0;
        }
      }
    }

    else
    {
      return CBB_flush(a3) != 0;
    }
  }

  return result;
}

uint64_t bssl::ssl_check_leaf_certificate(void *a1, uint64_t a2)
{
  v2 = *(a1[198] + 24);
  v3 = *(a2 + 4);
  if (v3 == 6)
  {
    if ((v2 & 3) == 0)
    {
LABEL_15:
      ERR_put_error(16, 0, 241, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_cert.cc", 485);
      return 0;
    }

    return 1;
  }

  if (v3 != 949 && v3 != 408 || (v2 & 4) == 0)
  {
    goto LABEL_15;
  }

  if (v3 != 408)
  {
    return 1;
  }

  v4 = *(a2 + 8);
  v5 = *(*v4 + 512);
  if (v5 > 947)
  {
    switch(v5)
    {
      case 948:
        v6 = &dword_273BB951C;
        break;
      case 964:
        v6 = &dword_273BB9564;
        break;
      case 965:
        v6 = &dword_273BB95AC;
        break;
      default:
        goto LABEL_39;
    }
  }

  else
  {
    switch(v5)
    {
      case 415:
        break;
      case 715:
        v6 = &dword_273BB948C;
        break;
      case 716:
        v6 = &dword_273BB94D4;
        break;
      default:
        goto LABEL_39;
    }
  }

  v8 = *(v6 + 2);
  if (v8)
  {
    if (v8 != 25497 && v8 != 4588)
    {
      goto LABEL_31;
    }

    v9 = *(*(*a1 + 48) + 208);
    if (v9 - 769 < 4)
    {
      if (v9 < 0x304)
      {
        goto LABEL_39;
      }

      goto LABEL_31;
    }

    if (v9 == 65276)
    {
LABEL_31:
      v10 = a1[1];
      v11 = *(v10 + 136);
      if (v11)
      {
        v12 = *(v10 + 128);
        v13 = 2 * v11;
      }

      else
      {
        v12 = &bssl::kDefaultGroups;
        v13 = 6;
      }

      while (*v12 != v8)
      {
        ++v12;
        v13 -= 2;
        if (!v13)
        {
          goto LABEL_39;
        }
      }

      if (v4[7] != 4)
      {
        goto LABEL_39;
      }

      return 1;
    }
  }

LABEL_39:
  ERR_put_error(16, 0, 107, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_cert.cc", 497);
  return 0;
}

uint64_t bssl::cert_set_chain_and_key(uint64_t a1, unsigned int **a2, unint64_t a3, evp_pkey_st *a4, uint64_t a5)
{
  if (!a3 || !(a4 | a5))
  {
    v5 = 67;
    v6 = 84;
LABEL_4:
    ERR_put_error(16, 0, v5, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_cert.cc", v6);
    return 0;
  }

  if (a4 && a5)
  {
    v5 = 275;
    v6 = 89;
    goto LABEL_4;
  }

  ssl_credential_st::ClearCertAndKey(*(a1 + 24));
  if (!SSL_CREDENTIAL_set1_cert_chain(*(a1 + 24), a2, a3))
  {
    return 0;
  }

  (*(*(a1 + 32) + 40))(a1);
  (*(*(a1 + 32) + 32))(a1);
  v14 = *(a1 + 24);
  if (a4)
  {

    return SSL_CREDENTIAL_set1_private_key(v14, a4, v13);
  }

  else
  {

    return SSL_CREDENTIAL_set_private_key_method(v14, a5);
  }
}

void SSL_certs_clear(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return;
  }

  v2 = *(v1 + 32);
  (*(*(v2 + 32) + 8))(v2);
  v3 = *v2;
  v4 = *(v2 + 8);
  if (v4)
  {
    do
    {
      if (!v3)
      {
        __break(1u);
LABEL_26:
        abort();
      }

      v5 = *v3;
      *v3 = 0;
      if (v5)
      {
        v6 = atomic_load(v5);
        if (v6 != -1)
        {
          while (1)
          {
            if (!v6)
            {
              goto LABEL_26;
            }

            v7 = v6;
            atomic_compare_exchange_strong(v5, &v7, v6 - 1);
            if (v7 == v6)
            {
              break;
            }

            v6 = v7;
            if (v7 == -1)
            {
              goto LABEL_6;
            }
          }

          if (v6 == 1)
          {
            ssl_credential_st::~ssl_credential_st(v5);
            v9 = *(v5 - 1);
            v8 = v5 - 2;
            v10 = v9 + 8;
            if (v9 != -8)
            {
              bzero(v8, v10);
            }

            free(v8);
          }
        }
      }

LABEL_6:
      ++v3;
      --v4;
    }

    while (v4);
    v3 = *v2;
    if (!*v2)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v3)
  {
LABEL_18:
    v12 = *(v3 - 1);
    v11 = v3 - 1;
    v13 = v12 + 8;
    if (v12 != -8)
    {
      bzero(v11, v13);
    }

    free(v11);
  }

LABEL_21:
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  v14 = *(v2 + 24);

  ssl_credential_st::ClearCertAndKey(v14);
}

uint64_t bssl::Vector<std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>>::MaybeGrow(uint64_t a1)
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
      v4 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/../crypto/mem_internal.h";
      v5 = 69;
      v6 = 333;
      goto LABEL_38;
    }

    if (v1 >> 60)
    {
      v4 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/../crypto/mem_internal.h";
      v5 = 69;
      v6 = 339;
LABEL_38:
      ERR_put_error(14, 0, v5, v4, v6);
      return 0;
    }

    v7 = 2 * v1;
    v8 = 16 * v1;
    v9 = malloc_type_malloc((16 * v1) | 8, 0xB4E622C9uLL);
    if (!v9)
    {
LABEL_37:
      v4 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v5 = 65;
      v6 = 217;
      goto LABEL_38;
    }
  }

  else
  {
    v7 = 16;
    v8 = 128;
    v9 = malloc_type_malloc(0x88uLL, 0xB4E622C9uLL);
    if (!v9)
    {
      goto LABEL_37;
    }
  }

  *v9 = v8;
  v10 = (v9 + 1);
  v11 = *a1;
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = (v12 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v14 = (v9 + 1);
    v15 = *a1;
    if (v13 < 0xD)
    {
      goto LABEL_43;
    }

    if (v11 < &v9[v12 + 1])
    {
      v14 = (v9 + 1);
      v15 = *a1;
      if (v10 < &v11[v12])
      {
        goto LABEL_43;
      }
    }

    v16 = v13 + 1;
    v17 = v16 & 0x3FFFFFFFFFFFFFFCLL;
    v14 = (v10 + v17 * 8);
    v15 = &v11[v17];
    v18 = (v11 + 2);
    v19 = v9 + 3;
    v20 = v16 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v21 = *(v18 - 1);
      v22 = *v18;
      *(v18 - 1) = 0uLL;
      *v18 = 0uLL;
      *(v19 - 1) = v21;
      *v19 = v22;
      v18 += 2;
      v19 += 2;
      v20 -= 4;
    }

    while (v20);
    if (v16 != (v16 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_43:
      do
      {
        v23 = *v15;
        *v15++ = 0;
        *v14++ = v23;
      }

      while (v15 != &v11[v12]);
    }

    v24 = v12;
    do
    {
      if (!v11)
      {
        __break(1u);
LABEL_40:
        abort();
      }

      v25 = *v11;
      *v11 = 0;
      if (v25)
      {
        v26 = atomic_load(v25);
        if (v26 != -1)
        {
          while (1)
          {
            if (!v26)
            {
              goto LABEL_40;
            }

            v27 = v26;
            atomic_compare_exchange_strong(v25, &v27, v26 - 1);
            if (v27 == v26)
            {
              break;
            }

            v26 = v27;
            if (v27 == -1)
            {
              goto LABEL_18;
            }
          }

          if (v26 == 1)
          {
            ssl_credential_st::~ssl_credential_st(v25);
            v29 = *(v25 - 1);
            v28 = v25 - 2;
            v30 = v29 + 8;
            if (v29 != -8)
            {
              bzero(v28, v30);
            }

            free(v28);
          }
        }
      }

LABEL_18:
      ++v11;
      --v24;
    }

    while (v24);
    v11 = *a1;
  }

  if (v11)
  {
    v32 = *(v11 - 1);
    v31 = v11 - 1;
    v33 = v32 + 8;
    if (v32 != -8)
    {
      bzero(v31, v33);
    }

    free(v31);
  }

  *a1 = v10;
  *(a1 + 8) = v12;
  result = 1;
  *(a1 + 16) = v7;
  return result;
}

uint64_t bssl::ssl_cipher_get_evp_aead(int **a1, void *a2, uint64_t *a3, uint64_t a4, unsigned int a5)
{
  *a1 = 0;
  *a2 = 0;
  *a3 = 0;
  v5 = *(a4 + 32);
  if (v5 == 1)
  {
    v11 = *(a4 + 28);
    switch(v11)
    {
      case 4:
        if (a5 != 769)
        {
          v14 = &aead_aes_256_cbc_sha1_tls;
          goto LABEL_33;
        }

        v13 = &aead_aes_256_cbc_sha1_tls_implicit_iv;
        break;
      case 2:
        if (a5 != 769)
        {
          v14 = &aead_aes_128_cbc_sha1_tls;
          goto LABEL_33;
        }

        v13 = &aead_aes_128_cbc_sha1_tls_implicit_iv;
        break;
      case 1:
        if (a5 == 769)
        {
          *a1 = &aead_des_ede3_cbc_sha1_tls_implicit_iv;
          v12 = 8;
LABEL_25:
          *a3 = v12;
          *a2 = 20;
          return 1;
        }

        v14 = &aead_des_ede3_cbc_sha1_tls;
LABEL_33:
        *a1 = v14;
        *a2 = 20;
        return 1;
      default:
        return 0;
    }

    *a1 = v13;
    v12 = 16;
    goto LABEL_25;
  }

  if (v5 == 2)
  {
    if (*(a4 + 28) == 2)
    {
      *a1 = &aead_aes_128_cbc_sha256_tls;
      *a2 = 32;
      return 1;
    }

    return 0;
  }

  if (v5 != 4)
  {
    return 0;
  }

  v6 = *(a4 + 28);
  if (v6 == 32)
  {
    *a1 = &aead_chacha20_poly1305;
    *a3 = 12;
    if (a5 >= 0x304)
    {
      *a3 = byte_2882A4F19;
      return 1;
    }

    return 1;
  }

  if (v6 == 16)
  {
    v7 = a1;
    v8 = a3;
    if (a5 <= 0x303)
    {
      v9 = EVP_aead_aes_256_gcm_tls12();
      goto LABEL_21;
    }

    v15 = EVP_aead_aes_256_gcm_tls13();
    goto LABEL_35;
  }

  if (v6 != 8)
  {
    return 0;
  }

  v7 = a1;
  v8 = a3;
  if (a5 <= 0x303)
  {
    v9 = EVP_aead_aes_128_gcm_tls12();
LABEL_21:
    *v7 = v9;
    *v8 = 4;
    return 1;
  }

  v15 = EVP_aead_aes_128_gcm_tls13();
LABEL_35:
  *v7 = v15;
  *v8 = *(v15 + 1);
  return 1;
}

const EVP_MD *bssl::ssl_get_handshake_digest(bssl *this, uint64_t a2, const ssl_cipher_st *a3)
{
  v3 = *(a2 + 36);
  if (v3 == 4)
  {
    return EVP_sha384();
  }

  if (v3 == 2)
  {
    return EVP_sha256();
  }

  if (v3 != 1)
  {
    return 0;
  }

  if (this >= 0x303)
  {
    return EVP_sha256();
  }

  return &evp_md_md5_sha1;
}

uint64_t bssl::ssl_create_cipher_list(BUF_MEM ***a1, int a2, uint64_t a3, int a4)
{
  v4 = 0;
  v152 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return v4;
  }

  v5 = a3;
  if (!a3)
  {
    return v4;
  }

  v7 = a2;
  v87 = &v89;
  v88 = 0;
  v8 = v101;
  v86 = 0;
  v91 = &v93;
  v92 = &v85;
  v90 = 0;
  v95 = &v97;
  v96 = &v89;
  v94 = 0;
  v99 = v101;
  v100 = &v93;
  v98 = 0;
  v102 = v104;
  v103 = &v97;
  v101[4] = 0;
  v105 = v107;
  v106 = v101;
  v104[4] = 0;
  v108 = v110;
  v109 = v104;
  v107[4] = 0;
  v111 = v113;
  v112 = v107;
  v110[4] = 0;
  v114 = v116;
  v115 = v110;
  v113[4] = 0;
  v117 = v119;
  v118 = v113;
  v116[4] = 0;
  v120 = v122;
  v121 = v116;
  v119[4] = 0;
  v123 = v125;
  v124 = v119;
  v122[4] = 0;
  v126 = v128;
  v127 = v122;
  v125[4] = 0;
  v129 = v131;
  v130 = v125;
  v128[4] = 0;
  v132 = v134;
  v133 = v128;
  v131[4] = 0;
  v135 = v137;
  v136 = v131;
  v134[4] = 0;
  v138 = v140;
  v139 = v134;
  v137[4] = 0;
  v141 = v143;
  v142 = v137;
  v140[4] = 0;
  v144 = v146;
  v145 = v140;
  v143[4] = 0;
  v147 = v149;
  v148 = v143;
  v146[4] = 0;
  v150 = 0;
  v151 = v146;
  v149[4] = 0;
  v81 = v149;
  v82 = &v85;
  if (a2)
  {
    v84 = 50380843;
    v85 = bsearch(__key, bssl::kCiphers, 0x18uLL, 0x28uLL, ssl_cipher_id_cmp_void);
    v84 = 50380847;
    v89 = bsearch(__key, bssl::kCiphers, 0x18uLL, 0x28uLL, ssl_cipher_id_cmp_void);
    v84 = 50380844;
    v93 = bsearch(__key, bssl::kCiphers, 0x18uLL, 0x28uLL, ssl_cipher_id_cmp_void);
    v84 = 50380848;
    v97 = bsearch(__key, bssl::kCiphers, 0x18uLL, 0x28uLL, ssl_cipher_id_cmp_void);
    v10 = 4;
  }

  else
  {
    v10 = 0;
    v8 = &v85;
  }

  v84 = 50384041;
  *v8 = bsearch(__key, bssl::kCiphers, 0x18uLL, 0x28uLL, ssl_cipher_id_cmp_void);
  v84 = 50384040;
  v11 = &v85 + 4 * v10;
  v11[4] = bsearch(__key, bssl::kCiphers, 0x18uLL, 0x28uLL, ssl_cipher_id_cmp_void);
  v84 = 50384044;
  v12 = v10 | 3;
  v11[8] = bsearch(__key, bssl::kCiphers, 0x18uLL, 0x28uLL, ssl_cipher_id_cmp_void);
  if ((v7 & 1) == 0)
  {
    v84 = 50380843;
    *(&v85 + 4 * v12) = bsearch(__key, bssl::kCiphers, 0x18uLL, 0x28uLL, ssl_cipher_id_cmp_void);
    v84 = 50380847;
    v13 = &v85 + 4 * v10;
    v13[16] = bsearch(__key, bssl::kCiphers, 0x18uLL, 0x28uLL, ssl_cipher_id_cmp_void);
    v84 = 50380844;
    v13[20] = bsearch(__key, bssl::kCiphers, 0x18uLL, 0x28uLL, ssl_cipher_id_cmp_void);
    v84 = 50380848;
    v12 = v10 + 7;
    v13[24] = bsearch(__key, bssl::kCiphers, 0x18uLL, 0x28uLL, ssl_cipher_id_cmp_void);
  }

  v84 = 50380809;
  v14 = &v85 + 4 * v12;
  *v14 = bsearch(__key, bssl::kCiphers, 0x18uLL, 0x28uLL, ssl_cipher_id_cmp_void);
  v84 = 50380819;
  v14[4] = bsearch(__key, bssl::kCiphers, 0x18uLL, 0x28uLL, ssl_cipher_id_cmp_void);
  v84 = 50380853;
  v14[8] = bsearch(__key, bssl::kCiphers, 0x18uLL, 0x28uLL, ssl_cipher_id_cmp_void);
  v84 = 50380810;
  v14[12] = bsearch(__key, bssl::kCiphers, 0x18uLL, 0x28uLL, ssl_cipher_id_cmp_void);
  v84 = 50380820;
  v14[16] = bsearch(__key, bssl::kCiphers, 0x18uLL, 0x28uLL, ssl_cipher_id_cmp_void);
  v84 = 50380854;
  v14[20] = bsearch(__key, bssl::kCiphers, 0x18uLL, 0x28uLL, ssl_cipher_id_cmp_void);
  v84 = 50380839;
  v14[24] = bsearch(__key, bssl::kCiphers, 0x18uLL, 0x28uLL, ssl_cipher_id_cmp_void);
  v84 = 50331804;
  v14[28] = bsearch(__key, bssl::kCiphers, 0x18uLL, 0x28uLL, ssl_cipher_id_cmp_void);
  v84 = 50331805;
  v14[32] = bsearch(__key, bssl::kCiphers, 0x18uLL, 0x28uLL, ssl_cipher_id_cmp_void);
  v84 = 50331695;
  v14[36] = bsearch(__key, bssl::kCiphers, 0x18uLL, 0x28uLL, ssl_cipher_id_cmp_void);
  v84 = 50331788;
  v14[40] = bsearch(__key, bssl::kCiphers, 0x18uLL, 0x28uLL, ssl_cipher_id_cmp_void);
  v84 = 50331701;
  v14[44] = bsearch(__key, bssl::kCiphers, 0x18uLL, 0x28uLL, ssl_cipher_id_cmp_void);
  v84 = 50331789;
  v14[48] = bsearch(__key, bssl::kCiphers, 0x18uLL, 0x28uLL, ssl_cipher_id_cmp_void);
  v84 = 50331658;
  v14[52] = bsearch(__key, bssl::kCiphers, 0x18uLL, 0x28uLL, ssl_cipher_id_cmp_void);
  if (strncmp(v5, "DEFAULT", 7uLL))
  {
    if (!*v5)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (!bssl::ssl_cipher_process_rulestr("ALL", &v82, &v81, a4))
  {
    return 0;
  }

  v15 = *(v5 + 7);
  v5 += 7;
  if (v15 == 58)
  {
    ++v5;
  }

  if (*v5)
  {
LABEL_10:
    if (!bssl::ssl_cipher_process_rulestr(v5, &v82, &v81, a4))
    {
      return 0;
    }
  }

LABEL_16:
  v16 = OPENSSL_sk_new_null();
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  v18 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (!v18)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v4 = 0;
    goto LABEL_99;
  }

  v19 = v18;
  *v18 = 24;
  v20 = (v18 + 1);
  v21 = v82;
  if (!v82)
  {
    v22 = 0;
LABEL_39:
    if (v22 - 24 > v20 + v22 - 1)
    {
      goto LABEL_40;
    }

LABEL_107:
    __break(1u);
  }

  v22 = 0;
  while (*(v21 + 8) != 1)
  {
LABEL_20:
    v21 = v21[2];
    if (!v21)
    {
      if (v22 >= 0x19)
      {
LABEL_108:
        abort();
      }

      if (v22 == 24)
      {
LABEL_40:
        v30 = malloc_type_malloc(0x18uLL, 0xB4E622C9uLL);
        v31 = v30;
        if (!v30)
        {
          ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
          goto LABEL_96;
        }

        *v30 = 16;
        v30[1] = 0;
        v32 = (v30 + 1);
        v30[2] = 0;
        if (*v17 == v22)
        {
          if (!v22)
          {
            v34 = 0;
            *v32 = v17;
            goto LABEL_80;
          }

          v33 = malloc_type_malloc(v22 + 8, 0xB4E622C9uLL);
          if (v33)
          {
            *v33 = v22;
            v34 = v33 + 8;
            if (v22 < 8)
            {
              v36 = v33 + 8;
              v37 = v20;
              v35 = a1;
            }

            else
            {
              v35 = a1;
              if ((v33 - v19) < 0x20)
              {
                v36 = v33 + 8;
                v37 = v20;
              }

              else
              {
                v36 = v34 + (v22 & 0xFFFFFFFFFFFFFFF8);
                v37 = (v20 + (v22 & 0xFFFFFFFFFFFFFFF8));
                v38 = v22 & 0xFFFFFFFFFFFFFFF8;
                v39 = v33 + 8;
                v40 = v20;
                do
                {
                  v41 = *v40++;
                  *v39++ = v41;
                  v38 -= 8;
                }

                while (v38);
                if (v22 == (v22 & 0x18))
                {
                  goto LABEL_72;
                }
              }
            }

            do
            {
              v54 = *v37++;
              *v36++ = v54;
            }

            while (v37 != (v20 + v22));
LABEL_72:
            v55 = *v32;
            *v32 = v17;
            if (!v55)
            {
LABEL_81:
              *(v31 + 16) = v34;
              v63 = *v35;
              *v35 = v32;
              if (v63)
              {
                v64 = v63[1];
                if (v64)
                {
                  v66 = *&v64[-1].max;
                  p_max = &v64[-1].max;
                  v67 = v66 + 8;
                  if (v66 != -8)
                  {
                    bzero(p_max, v67);
                  }

                  free(p_max);
                }

                v68 = *v63;
                *v63 = 0;
                if (v68)
                {
                  ASN1_STRING_free(v68);
                }

                v70 = *(v63 - 1);
                v69 = v63 - 1;
                v71 = v70 + 8;
                if (v70 != -8)
                {
                  bzero(v69, v71);
                }

                free(v69);
                v32 = *a1;
              }

              if (*v32 && *&(*v32)->length)
              {
                v17 = 0;
                v31 = 1;
                goto LABEL_96;
              }

              ERR_put_error(16, 0, 177, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_cipher.cc", 1135);
LABEL_95:
              v17 = 0;
              v31 = 0;
LABEL_96:
              if (v22)
              {
                goto LABEL_97;
              }

              goto LABEL_98;
            }

            data = v55->data;
            if (data)
            {
              v58 = *(data - 1);
              v57 = data - 8;
              v59 = v58 + 8;
              if (v58 != -8)
              {
                bzero(v57, v59);
              }

              free(v57);
            }

            v61 = *&v55[-1].max;
            v60 = &v55[-1].max;
            v62 = v61 + 8;
            if (v61 != -8)
            {
              bzero(v60, v62);
            }

            free(v60);
LABEL_80:
            v35 = a1;
            goto LABEL_81;
          }

          ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
          v42 = *(v17 + 1);
          if (!v42)
          {
LABEL_55:
            v47 = *(v17 - 1);
            v46 = v17 - 8;
            v48 = v47 + 8;
            if (v47 != -8)
            {
              bzero(v46, v48);
            }

            free(v46);
            v49 = *(v31 + 16);
            if (v49)
            {
              v51 = *(v49 - 8);
              v50 = (v49 - 8);
              v52 = v51 + 8;
              if (v51 != -8)
              {
                bzero(v50, v52);
              }

              free(v50);
            }

            v53 = *v32;
            *v32 = 0;
            if (v53)
            {
              ASN1_STRING_free(v53);
            }

            free(v31);
            goto LABEL_95;
          }
        }

        else
        {
          ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_cipher.cc", 603);
          v42 = *(v17 + 1);
          if (!v42)
          {
            goto LABEL_55;
          }
        }

        v44 = *(v42 - 8);
        v43 = (v42 - 8);
        v45 = v44 + 8;
        if (v44 != -8)
        {
          bzero(v43, v45);
        }

        free(v43);
        goto LABEL_55;
      }

      goto LABEL_39;
    }
  }

  v23 = *v17;
  if (*v17 < 0x7FFFFFFFuLL)
  {
    v24 = *v21;
    v25 = *(v17 + 3);
    if (v25 <= v23 + 1)
    {
      v28 = OPENSSL_realloc(*(v17 + 1), 16 * v25);
      if (!v28)
      {
        goto LABEL_65;
      }

      *(v17 + 1) = v28;
      *(v17 + 3) = 2 * v25;
      v26 = *v17;
      v29 = *v17 - v23;
      if (*v17 <= v23)
      {
        v27 = &v28[v26];
      }

      else
      {
        if (8 * v29)
        {
          memmove(&v28[v23 + 1], &v28[v23], 8 * v29);
          v26 = *v17;
          v28 = *(v17 + 1);
        }

        v27 = &v28[v23];
      }
    }

    else
    {
      v26 = *v17;
      v27 = (*(v17 + 1) + 8 * v23);
    }

    *v27 = v24;
    *(v17 + 4) = 0;
    *v17 = v26 + 1;
    if (v26 == -1)
    {
      goto LABEL_65;
    }

    if (v22 >= 0x18)
    {
      goto LABEL_108;
    }

    *(v20 + v22++) = *(v21 + 9);
    goto LABEL_20;
  }

  ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
LABEL_65:
  v31 = 0;
  v22 = 24;
LABEL_97:
  if (v22 - 1 >= -v20)
  {
    goto LABEL_107;
  }

LABEL_98:
  free(v19);
  v4 = v31;
  if (v17)
  {
LABEL_99:
    v72 = *(v17 + 1);
    v73 = v4;
    if (v72)
    {
      v75 = *(v72 - 8);
      v74 = (v72 - 8);
      v76 = v75 + 8;
      if (v75 != -8)
      {
        bzero(v74, v76);
      }

      free(v74);
    }

    v78 = *(v17 - 1);
    v77 = v17 - 8;
    v79 = v78 + 8;
    if (v78 != -8)
    {
      bzero(v77, v79);
    }

    free(v77);
    return v73;
  }

  return v4;
}

uint64_t bssl::ssl_cipher_process_rulestr(char *__s2, uint64_t **a2, uint64_t **a3, int a4)
{
  v4 = *__s2;
  if (!*__s2)
  {
    return 1;
  }

  v5 = a3;
  v6 = __s2;
  v7 = 0;
  LOBYTE(v8) = 0;
  while (1)
  {
    if (v8)
    {
      if (v4 == 124)
      {
        ++v6;
        v8 = 1;
        goto LABEL_4;
      }

      if (v4 != 93)
      {
        v10 = 0;
        v8 = 1;
        if ((v4 - 58) > 0xFFFFFFF5)
        {
          v11 = 1;
          v12 = 0;
          v13 = v4;
          if (v4 == 58)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v11 = 1;
          v12 = 0;
          if ((v4 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5)
          {
            v53 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_cipher.cc";
            v54 = 16;
            v55 = 224;
            v56 = 849;
            goto LABEL_156;
          }

          v13 = v4;
          if (v4 == 58)
          {
LABEL_37:
            if (v13 == 58)
            {
              goto LABEL_3;
            }

            goto LABEL_38;
          }
        }

        goto LABEL_33;
      }

      if (*v5)
      {
        *(*v5 + 9) = 0;
      }

      v9 = *++v6;
      v4 = v9;
      if (!v9)
      {
        return 1;
      }
    }

    v10 = 0;
    v11 = 1;
    if (v4 <= 0x2Cu)
    {
      if (v4 == 33)
      {
        v10 = 0;
        v11 = 2;
      }

      else
      {
        if (v4 != 43)
        {
          goto LABEL_30;
        }

        v10 = 0;
        v11 = 4;
      }
    }

    else
    {
      switch(v4)
      {
        case '-':
          v11 = 3;
          break;
        case '@':
          v11 = 5;
          v10 = 1;
          break;
        case '[':
          ++v6;
          v7 = 1;
          v8 = 1;
          goto LABEL_4;
        default:
LABEL_30:
          v8 = 0;
          v12 = 0;
          v13 = v4;
          if (v4 == 58)
          {
            goto LABEL_37;
          }

          goto LABEL_33;
      }
    }

    if (v7)
    {
      v53 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_cipher.cc";
      v54 = 16;
      v55 = 168;
      v56 = 879;
      goto LABEL_156;
    }

    v8 = 0;
    ++v6;
    v12 = 1;
    v13 = v4;
    if (v4 == 58)
    {
      goto LABEL_37;
    }

LABEL_33:
    if (a4)
    {
      goto LABEL_37;
    }

    if (v4 <= 0x3Bu && ((1 << v4) & 0x800100100000000) != 0)
    {
LABEL_3:
      ++v6;
      goto LABEL_4;
    }

LABEL_38:
    v67 = 0;
    v68.i64[0] = -1;
    v68.i64[1] = -1;
    v69 = 0;
    v70 = v12;
    v61 = v8;
    v62 = v7;
    if (v10)
    {
      break;
    }

    v64 = v12;
    v65 = 0;
    v58 = v11;
    v24 = 0;
    v25 = 0;
    v26.i64[0] = -1;
    v26.i64[1] = -1;
    v63 = v26;
    v27 = 1;
    while (2)
    {
      for (i = 0; ; ++i)
      {
        v29 = v6[i];
        if ((v29 & 0xFFFFFFDF) - 65 >= 0x1A && (v29 - 48) >= 0xA)
        {
          v31 = v6[i];
          v32 = (1 << (v29 - 45)) & 0x4000000000003;
          if ((v31 - 45) > 0x32 || v32 == 0)
          {
            break;
          }
        }
      }

      if (!i)
      {
        goto LABEL_155;
      }

      if (v31 != 43 && (v27 & 1) != 0)
      {
        v34 = &dword_279E9FFF8;
        v35 = 24;
        while (1)
        {
          v36 = *(v34 - 2);
          if (!strncmp(v36, v6, i) && !v36[i])
          {
            break;
          }

          v37 = *(v34 - 1);
          if (!strncmp(v37, v6, i) && !v37[i])
          {
            break;
          }

          v34 += 10;
          if (!--v35)
          {
            goto LABEL_100;
          }
        }

        v25 = *v34;
      }

LABEL_100:
      if (v25)
      {
        goto LABEL_110;
      }

      v38 = &word_279EA03C0;
      v39 = 29;
      do
      {
        v40 = *(v38 - 3);
        if (!strncmp(v40, v6, i) && !v40[i])
        {
          v63 = vandq_s8(*(v38 - 1), v63);
          v68 = v63;
          v64 |= *(v38 + 2);
          v70 = v64;
          if (v24)
          {
            if (v24 != *v38)
            {
              goto LABEL_109;
            }
          }

          else
          {
            v24 = *v38;
          }

          v69 = v24;
          if (v31 == 43)
          {
            goto LABEL_111;
          }

          goto LABEL_114;
        }

        v38 += 16;
        --v39;
      }

      while (v39);
      if (a4)
      {
        v53 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_cipher.cc";
        v54 = 16;
        v55 = 158;
        v56 = 957;
        goto LABEL_156;
      }

LABEL_109:
      v65 = 1;
LABEL_110:
      if (v31 == 43)
      {
LABEL_111:
        v27 = 0;
        v6 += i + 1;
        continue;
      }

      break;
    }

LABEL_114:
    v6 += i;
    v5 = a3;
    if (v65)
    {
      goto LABEL_148;
    }

    v8 = v61;
    bssl::ssl_cipher_apply_rule(v25, &v67, v58, -1, v61, a2, a3);
    v7 = v62;
LABEL_4:
    v4 = *v6;
    if (!*v6)
    {
      if (v8)
      {
        v53 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_cipher.cc";
        v54 = 16;
        v55 = 158;
        v56 = 993;
        goto LABEL_156;
      }

      return 1;
    }
  }

  for (j = 0; ; ++j)
  {
    v15 = v6[j];
    if ((v15 & 0xFFFFFFDF) - 65 >= 0x1A && (v15 - 48) >= 0xA)
    {
      v17 = v6[j] - 45;
      v18 = v17 > 0x32;
      v19 = (1 << v17) & 0x4000000000003;
      if (v18 || v19 == 0)
      {
        break;
      }
    }
  }

  if (j != 8)
  {
    if (j)
    {
LABEL_157:
      v53 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_cipher.cc";
      v54 = 16;
      v55 = 158;
      v56 = 974;
      goto LABEL_156;
    }

LABEL_155:
    v53 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_cipher.cc";
    v54 = 16;
    v55 = 158;
    v56 = 908;
    goto LABEL_156;
  }

  if (strncmp(v6, "STRENGTH", 8uLL))
  {
    goto LABEL_157;
  }

  v21 = *a2;
  if (!*a2)
  {
    v43 = 0;
    v42 = 4;
    v41 = 1;
    v44 = malloc_type_malloc(0xCuLL, 0xB4E622C9uLL);
    if (!v44)
    {
      goto LABEL_159;
    }

LABEL_119:
    v45 = v44;
    *v44 = v42;
    v46 = v44 + 1;
    bzero(v44 + 1, v42);
    for (k = *a2; k; k = k[2])
    {
      if (*(k + 8) == 1)
      {
        if (*k)
        {
          v48 = 0;
          v49 = *(*k + 28);
          if (v49 <= 0x20)
          {
            if (((1 << v49) & 0x100010010) != 0)
            {
              v48 = 128;
              if (v41 <= 0x100)
              {
                goto LABEL_160;
              }
            }

            else if (((1 << v49) & 0x104) != 0)
            {
              v48 = 64;
              if (v41 <= 0x80)
              {
                goto LABEL_160;
              }
            }

            else if (v49 == 1)
            {
              v48 = 56;
              if (v41 <= 0x70)
              {
LABEL_160:
                abort();
              }
            }
          }
        }

        else
        {
          v48 = 0;
        }

        ++LODWORD(v46[v48]);
      }
    }

    v6 += 8;
    v5 = a3;
    do
    {
      if (v45[v43 + 2] >= 1)
      {
        bssl::ssl_cipher_apply_rule(0, 0, 4, v43, 0, a2, a3);
      }

      --v43;
    }

    while (v43 + 1 > 0);
    free(v45);
    v50 = *v6;
    if (*v6)
    {
      v7 = v62;
      if (a4)
      {
        do
        {
          if (v50 == 58)
          {
            break;
          }

          v51 = *++v6;
          v50 = v51;
        }

        while (v51);
      }

      else
      {
        do
        {
          if (v50 <= 0x3B && ((1 << v50) & 0xC00100100000000) != 0)
          {
            break;
          }

          v52 = *++v6;
          v50 = v52;
        }

        while (v52);
      }

      goto LABEL_4;
    }

LABEL_148:
    v8 = v61;
    v7 = v62;
    goto LABEL_4;
  }

  v22 = 0;
  while (2)
  {
    if (*(v21 + 8) != 1)
    {
      goto LABEL_56;
    }

    if (!*v21)
    {
      v22 &= ~(v22 >> 31);
      goto LABEL_56;
    }

    v23 = *(*v21 + 28);
    if (v23 > 0x20)
    {
      goto LABEL_69;
    }

    if (((1 << v23) & 0x100010010) == 0)
    {
      if (((1 << v23) & 0x104) != 0)
      {
        if (v22 < 128)
        {
          goto LABEL_70;
        }

        goto LABEL_56;
      }

      if (v23 == 1)
      {
        if (v22 >= 112)
        {
          goto LABEL_56;
        }

        goto LABEL_70;
      }

LABEL_69:
      if (v22 < 0)
      {
        goto LABEL_70;
      }

      goto LABEL_56;
    }

    if (v22 >= 256)
    {
      goto LABEL_56;
    }

    if (v23 > 0x20)
    {
      goto LABEL_77;
    }

LABEL_70:
    if (((1 << v23) & 0x100010010) != 0)
    {
      v22 = 256;
      goto LABEL_56;
    }

    if (((1 << v23) & 0x104) != 0)
    {
      v22 = 128;
      goto LABEL_56;
    }

    if (v23 == 1)
    {
      v22 = 112;
    }

    else
    {
LABEL_77:
      v22 = 0;
    }

LABEL_56:
    v21 = v21[2];
    if (v21)
    {
      continue;
    }

    break;
  }

  v41 = (v22 + 1);
  v42 = 4 * v41;
  v43 = v22;
  v44 = malloc_type_malloc(4 * v41 + 8, 0xB4E622C9uLL);
  if (v44)
  {
    goto LABEL_119;
  }

LABEL_159:
  v53 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
  v54 = 14;
  v55 = 65;
  v56 = 217;
LABEL_156:
  ERR_put_error(v54, 0, v55, v53, v56);
  return 0;
}

uint64_t ssl_cipher_id_cmp_void(_DWORD *a1, _DWORD *a2)
{
  v2 = a1[4];
  v3 = a2[4];
  v4 = v2 > v3;
  if (v2 >= v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

uint64_t bssl::ssl_cipher_apply_rule(uint64_t result, uint64_t a2, int a3, int a4, char a5, uint64_t **a6, uint64_t **a7)
{
  if (!result && a4 == -1 && !*(a2 + 24) && (!*(a2 + 8) || !*(a2 + 12) || !*(a2 + 16) || !*(a2 + 20)))
  {
    return result;
  }

  v7 = *a6;
  v8 = *a7;
  if (a3 == 3)
  {
    v9 = *a7;
  }

  else
  {
    v9 = *a6;
  }

  if (a3 == 3)
  {
    v10 = *a6;
  }

  else
  {
    v10 = *a7;
  }

  if (v10)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    while (result)
    {
      v13 = v9;
      if (a3 == 3)
      {
        while (1)
        {
          v9 = v13[3];
          if (*(*v13 + 16) == result)
          {
            break;
          }

          if (v13 != v10)
          {
            v13 = v13[3];
            if (v9)
            {
              continue;
            }
          }

          goto LABEL_15;
        }

LABEL_46:
        v17 = v13 + 3;
        v18 = v13 + 2;
      }

      else
      {
        while (1)
        {
          v9 = v13[2];
          if (*(*v13 + 16) == result)
          {
            break;
          }

          if (v13 != v10)
          {
            v13 = v13[2];
            if (v9)
            {
              continue;
            }
          }

          goto LABEL_15;
        }

        v18 = v13 + 2;
        v17 = v13 + 3;
      }

LABEL_48:
      switch(a3)
      {
        case 4:
          if (*(v13 + 8) == 1)
          {
            if (v8 != v13)
            {
              v21 = *v18;
              if (v7 == v13)
              {
                v7 = *v18;
              }

              v22 = *v17;
              if (*v17)
              {
                v22[2] = v21;
              }

              if (v21)
              {
                *(v21 + 24) = v22;
              }

              v8[2] = v13;
              *v17 = v8;
              v8 = v13;
              *v18 = 0;
            }

            *(v13 + 9) = 0;
          }

          break;
        case 1:
          if ((v13[1] & 1) == 0)
          {
            if (v8 != v13)
            {
              v19 = *v18;
              if (v7 == v13)
              {
                v7 = *v18;
              }

              v20 = *v17;
              if (*v17)
              {
                v20[2] = v19;
              }

              if (v19)
              {
                *(v19 + 24) = v20;
              }

              v8[2] = v13;
              *v17 = v8;
              v8 = v13;
              *v18 = 0;
            }

            *(v13 + 8) = 1;
            *(v13 + 9) = a5;
          }

          break;
        case 3:
          if (*(v13 + 8) == 1)
          {
            if (v7 != v13)
            {
              v23 = *v17;
              if (v8 == v13)
              {
                v8 = *v17;
              }

              v24 = *v18;
              if (*v18)
              {
                *(v24 + 24) = v23;
              }

              if (v23)
              {
                *(v23 + 16) = v24;
              }

              v7[3] = v13;
              *v18 = v7;
              v7 = v13;
              *v17 = 0;
            }

            *(v13 + 4) = 0;
          }

          break;
        case 2:
          v35 = *v18;
          v36 = *v17;
          v12 = *v18;
          if (v7 != v13)
          {
            v36[2] = v35;
            v12 = v7;
          }

          if (v8 == v13)
          {
            v8 = v36;
          }

          *(v13 + 8) = 0;
          if (v35)
          {
            *(v35 + 24) = v36;
          }

          if (v36)
          {
            v36[2] = v35;
          }

          *v18 = 0;
          *v17 = 0;
          goto LABEL_121;
      }

      v12 = v7;
LABEL_121:
      if (v13 != v10)
      {
        v7 = v12;
        if (v9)
        {
          continue;
        }
      }

      goto LABEL_16;
    }

    if ((a4 & 0x80000000) == 0)
    {
      v13 = v9;
      while (1)
      {
        if (a3 == 3)
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        v15 = *v13;
        if (!*v13)
        {
          goto LABEL_42;
        }

        v16 = *(v15 + 28);
        if (v16 > 0x20)
        {
          break;
        }

        if (((1 << v16) & 0x100010010) != 0)
        {
          LODWORD(v15) = 256;
        }

        else if (((1 << v16) & 0x104) != 0)
        {
          LODWORD(v15) = 128;
        }

        else
        {
          if (v16 != 1)
          {
            break;
          }

          LODWORD(v15) = 112;
        }

LABEL_42:
        v9 = v13[v14];
        if (v15 == a4)
        {
          goto LABEL_46;
        }

        if (v13 != v10)
        {
          v13 = v9;
          if (v9)
          {
            continue;
          }
        }

        goto LABEL_15;
      }

      LODWORD(v15) = 0;
      goto LABEL_42;
    }

    v13 = v9;
    while (1)
    {
      if (a3 == 3)
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }

      v9 = v13[v25];
      v26 = *v13;
      v27 = *(*v13 + 20);
      if ((v27 & *(a2 + 8)) == 0)
      {
        goto LABEL_107;
      }

      v28 = v26[6];
      if ((v28 & *(a2 + 12)) == 0)
      {
        goto LABEL_107;
      }

      v29 = v26[7];
      if ((v29 & *(a2 + 16)) == 0 || (v26[8] & *(a2 + 20)) == 0)
      {
        goto LABEL_107;
      }

      v30 = *(a2 + 24);
      if (*(a2 + 24))
      {
        if (v27 == 8 || v28 == 16)
        {
          if (v30 != 772)
          {
            goto LABEL_107;
          }
        }

        else
        {
          if (v26[9] == 1)
          {
            v32 = 768;
          }

          else
          {
            v32 = 771;
          }

          if (v32 != v30)
          {
            goto LABEL_107;
          }
        }
      }

      v17 = v13 + 3;
      v18 = v13 + 2;
      if (*(a2 + 26))
      {
        goto LABEL_48;
      }

      v33 = v26[4];
      if (v29 != 1 && v33 != 50380839)
      {
        goto LABEL_48;
      }

LABEL_107:
      if (v13 != v10)
      {
        v13 = v9;
        if (v9)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_15:
  v12 = v7;
LABEL_16:
  *a6 = v12;
  *a7 = v8;
  return result;
}

uint64_t bssl::ssl_get_full_credential_list(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 32);
  result = (*(v3[4] + 112))();
  if (result)
  {
    v5 = v3[1];
    v6 = v3[3];
    v7 = *(v6 + 4);
    if (v7 < 2)
    {
      v11 = *(v6 + 48);
      if (!v11 || !*v11 || !**(v11 + 8) || !*(v6 + 8) || !*(v6 + 16) && !*(v6 + 24) || v7 == 1 && !*(v6 + 56))
      {
        v8 = 0;
        v10 = *a2;
        v9 = a2[1];
        if (!v9)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }
    }

    else if (v7 - 2 >= 2)
    {
      goto LABEL_40;
    }

    v8 = 1;
    v10 = *a2;
    v9 = a2[1];
    if (!v9)
    {
LABEL_18:
      v13 = v5 + v8;
      if (v10)
      {
        v15 = *(v10 - 8);
        v14 = (v10 - 8);
        v16 = v15 + 8;
        if (v15 != -8)
        {
          bzero(v14, v16);
        }

        free(v14);
      }

      *a2 = 0;
      a2[1] = 0;
      if (v13)
      {
        if (v13 >> 61)
        {
          ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/../crypto/mem_internal.h", 213);
          return 0;
        }

        if (v13 == 0x1FFFFFFFFFFFFFFFLL || (v19 = malloc_type_malloc(8 * v13 + 8, 0xB4E622C9uLL)) == 0)
        {
          ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
          result = 0;
          *a2 = 0;
          return result;
        }

        *v19 = 8 * v13;
        v17 = v19 + 1;
        *a2 = v17;
        a2[1] = v13;
        v18 = v3[1];
        if (v18)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v17 = 0;
        v18 = v3[1];
        if (v18)
        {
LABEL_31:
          v20 = 0;
          while (v13 != v20)
          {
            v17[v20] = *(*v3 + 8 * v20);
            if (v18 == ++v20)
            {
              goto LABEL_34;
            }
          }

          goto LABEL_40;
        }
      }

LABEL_34:
      if (v8)
      {
        if (v13 <= v5)
        {
          goto LABEL_40;
        }

        v17[v5] = v3[3];
      }

      return 1;
    }

LABEL_15:
    v12 = v10 - 8;
    while (1)
    {
      v12 += 8;
      if (!v12)
      {
        break;
      }

      if (!--v9)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_40:
    abort();
  }

  return result;
}

uint64_t bssl::ssl_credential_matches_requested_issuers(bssl *this, bssl::SSL_HANDSHAKE *a2, const ssl_credential_st *a3)
{
  if (*(a2 + 216) != 1)
  {
    return 1;
  }

  v5 = *(this + 183);
  if (v5 && (v6 = *v5) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = *(v5[1] + 8 * v7);
      if (ssl_credential_st::ChainContainsIssuer(a2, *(v8 + 8), *(v8 + 16)))
      {
        return 1;
      }

      if (v6 == ++v7)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v9 = *(a2 + 25);
    if (v9 && *(this + 1488) == 1 && (v10 = *(this + 185)) != 0)
    {
      v11 = *(this + 184);
      while (1)
      {
        v14 = *v11;
        v12 = v11 + 1;
        v13 = v14;
        v15 = v10 - 1 >= v14;
        v10 = v10 - 1 - v14;
        if (!v15 || !v13)
        {
          break;
        }

        if (v9 == v13 && !memcmp(v12, *(a2 + 24), v9))
        {
          *(this + 404) |= 0x4000000u;
          return 1;
        }

        v11 = &v12[v13];
        if (!v10)
        {
          goto LABEL_20;
        }
      }

      v17 = 68;
      v18 = 90;
    }

    else
    {
LABEL_20:
      v17 = 323;
      v18 = 100;
    }

    ERR_put_error(16, 0, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_credential.cc", v18);
    return 0;
  }
}

uint64_t ssl_credential_st::ChainContainsIssuer(uint64_t a1, int8x16_t *a2, unint64_t a3)
{
  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (v4)
  {
    if (v5 >= 2)
    {
      abort();
    }
  }

  else
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = a3;
      if (a3)
      {
        v10 = 0;
        v11 = a3 & 0xFFFFFFFFFFFFFFE0;
        v12 = a3 & 0xFFFFFFFFFFFFFFF8;
        v13 = a2 + 1;
        while (1)
        {
          if (v10 >= *v7)
          {
            return 0;
          }

          v14 = *(v7[1] + 8 * v10);
          v16 = *(v14 + 8);
          v15 = *(v14 + 16);
          *&v45 = v16;
          *(&v45 + 1) = v15;
          if (bssl::ssl_cert_extract_issuer(&v45, &v46))
          {
            if (v47 == v8)
            {
              break;
            }
          }

LABEL_9:
          ++v10;
          v7 = *(a1 + 48);
          if (!v7)
          {
            return 0;
          }
        }

        if (v8 < 8)
        {
          v17 = 0;
          v18 = 0;
          goto LABEL_24;
        }

        if (v8 >= 0x20)
        {
          v20 = v46 + 1;
          v21 = 0uLL;
          v22 = v8 & 0xFFFFFFFFFFFFFFE0;
          v23 = v13;
          v24 = 0uLL;
          do
          {
            v21 = vorrq_s8(veorq_s8(v23[-1], v20[-1]), v21);
            v24 = vorrq_s8(veorq_s8(*v23, *v20), v24);
            v20 += 2;
            v23 += 2;
            v22 -= 32;
          }

          while (v22);
          v25 = vorrq_s8(v24, v21);
          *v25.i8 = vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL));
          v26 = v25.i64[0] | HIDWORD(v25.i64[0]) | ((v25.i64[0] | HIDWORD(v25.i64[0])) >> 16);
          v18 = v26 | BYTE1(v26);
          if (v8 == v11)
          {
            goto LABEL_8;
          }

          v17 = v8 & 0xFFFFFFFFFFFFFFE0;
          v19 = v8 & 0xFFFFFFFFFFFFFFE0;
          if ((v8 & 0x18) == 0)
          {
LABEL_24:
            v35 = v8 - v17;
            v36 = &a2->i8[v17];
            v37 = &v46->i8[v17];
            do
            {
              v39 = *v37++;
              v38 = v39;
              v40 = *v36++;
              v18 |= v40 ^ v38;
              --v35;
            }

            while (v35);
            goto LABEL_8;
          }
        }

        else
        {
          v18 = 0;
          v19 = 0;
        }

        v27 = v18;
        v28 = &v46->i8[v19];
        v29 = &a2->i8[v19];
        v30 = v19 - (v8 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v31 = *v28++;
          v32 = v31;
          v33 = *v29++;
          v27 = vorr_s8(veor_s8(v33, v32), v27);
          v30 += 8;
        }

        while (v30);
        v34 = *&v27 | HIDWORD(*&v27) | ((*&v27 | HIDWORD(*&v27)) >> 16);
        v18 = v34 | BYTE1(v34);
        v17 = v8 & 0xFFFFFFFFFFFFFFF8;
        if (v8 != v12)
        {
          goto LABEL_24;
        }

LABEL_8:
        if (!v18)
        {
          return 1;
        }

        goto LABEL_9;
      }

      while (v8 < *v7)
      {
        v41 = *(v7[1] + 8 * v8);
        v43 = *(v41 + 8);
        v42 = *(v41 + 16);
        *&v45 = v43;
        *(&v45 + 1) = v42;
        if (bssl::ssl_cert_extract_issuer(&v45, &v46) && !v47)
        {
          return 1;
        }

        ++v8;
        v7 = *(a1 + 48);
        if (!v7)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

void ssl_credential_st::~ssl_credential_st(CRYPTO_EX_DATA *this)
{
  CRYPTO_free_ex_data(&g_ex_data_class, this, this + 13);
  sk = this[12].sk;
  v2 = *&this[12].dummy;
  if (v2 && v2 - 1 >= -sk)
  {
    goto LABEL_97;
  }

  if (sk)
  {
    comp = sk[-1].comp;
    p_comp = &sk[-1].comp;
    v6 = comp + 8;
    if (comp != -8)
    {
      bzero(p_comp, v6);
    }

    free(p_comp);
  }

  this[12].sk = 0;
  *&this[12].dummy = 0;
  v8 = *&this[10].dummy;
  v7 = this[11].sk;
  if (v7)
  {
    if (&v7[-1].comp + 7 >= -v8)
    {
      goto LABEL_97;
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

  *&this[10].dummy = 0;
  this[11].sk = 0;
  v13 = *&this[9].dummy;
  v12 = this[10].sk;
  if (v12)
  {
    if (&v12[-1].comp + 7 >= -v13)
    {
      goto LABEL_97;
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

  *&this[9].dummy = 0;
  this[10].sk = 0;
  v18 = *&this[8].dummy;
  v17 = this[9].sk;
  if (v17)
  {
    if (&v17[-1].comp + 7 >= -v18)
    {
      goto LABEL_97;
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

  *&this[8].dummy = 0;
  this[9].sk = 0;
  v23 = *&this[7].dummy;
  v22 = this[8].sk;
  if (v22)
  {
    if (&v22[-1].comp + 7 >= -v23)
    {
      goto LABEL_97;
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

  *&this[7].dummy = 0;
  this[8].sk = 0;
  v28 = *&this[6].dummy;
  v27 = this[7].sk;
  if (v27)
  {
    if (&v27[-1].comp + 7 >= -v28)
    {
      goto LABEL_97;
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

  *&this[6].dummy = 0;
  this[7].sk = 0;
  v33 = *&this[5].dummy;
  v32 = this[6].sk;
  if (v32)
  {
    if (&v32[-1].comp + 7 >= -v33)
    {
      goto LABEL_97;
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

  *&this[5].dummy = 0;
  this[6].sk = 0;
  v37 = this[5].sk;
  this[5].sk = 0;
  if (v37)
  {
    CRYPTO_BUFFER_free(v37);
  }

  v38 = *&this[4].dummy;
  *&this[4].dummy = 0;
  if (v38)
  {
    CRYPTO_BUFFER_free(v38);
  }

  v39 = *&this[3].dummy;
  *&this[3].dummy = 0;
  if (v39)
  {
    CRYPTO_BUFFER_free(v39);
  }

  v40 = this[3].sk;
  this[3].sk = 0;
  if (v40)
  {
    v41 = *&v40->num;
    if (*&v40->num)
    {
      v42 = 0;
      do
      {
        v43 = v40->data[v42];
        if (v43)
        {
          CRYPTO_BUFFER_free(v43);
          v41 = *&v40->num;
        }

        ++v42;
      }

      while (v42 < v41);
    }

    data = v40->data;
    if (data)
    {
      v46 = *(data - 1);
      v45 = data - 1;
      v47 = v46 + 8;
      if (v46 != -8)
      {
        bzero(v45, v47);
      }

      free(v45);
    }

    v49 = v40[-1].comp;
    v48 = &v40[-1].comp;
    v50 = v49 + 8;
    if (v49 != -8)
    {
      bzero(v48, v50);
    }

    free(v48);
  }

  v52 = this[2].sk;
  v51 = *&this[2].dummy;
  if (v51)
  {
    v53 = &v52[-1].comp + 6;
    while (1)
    {
      v53 += 2;
      if (!v53)
      {
        break;
      }

      if (!--v51)
      {
        goto LABEL_66;
      }
    }

LABEL_97:
    __break(1u);
LABEL_98:
    abort();
  }

LABEL_66:
  if (v52)
  {
    v55 = v52[-1].comp;
    v54 = &v52[-1].comp;
    v56 = v55 + 8;
    if (v55 != -8)
    {
      bzero(v54, v56);
    }

    free(v54);
  }

  this[2].sk = 0;
  *&this[2].dummy = 0;
  v57 = this[1].sk;
  this[1].sk = 0;
  if (!v57)
  {
    goto LABEL_77;
  }

  v58 = atomic_load(v57);
  if (v58 == -1)
  {
    goto LABEL_77;
  }

  while (1)
  {
    if (!v58)
    {
      goto LABEL_98;
    }

    v59 = v58;
    atomic_compare_exchange_strong(&v57->num, &v59, v58 - 1);
    if (v59 == v58)
    {
      break;
    }

    v58 = v59;
    if (v59 == -1)
    {
      goto LABEL_77;
    }
  }

  if (v58 == 1)
  {
    v68 = *&v57->sorted;
    if (v68)
    {
      v69 = *(v68 + 160);
      if (v69)
      {
        v69(v57);
        v57->data = 0;
        *(&v57->num + 1) = 0;
      }
    }

    v71 = v57[-1].comp;
    v70 = &v57[-1].comp;
    v72 = v71 + 8;
    if (v71 != -8)
    {
      bzero(v70, v72);
    }

    free(v70);
    v60 = *&this->dummy;
    *&this->dummy = 0;
    if (!v60)
    {
      return;
    }
  }

  else
  {
LABEL_77:
    v60 = *&this->dummy;
    *&this->dummy = 0;
    if (!v60)
    {
      return;
    }
  }

  v61 = atomic_load(v60);
  if (v61 != -1)
  {
    while (1)
    {
      if (!v61)
      {
        goto LABEL_98;
      }

      v62 = v61;
      atomic_compare_exchange_strong(v60, &v62, v61 - 1);
      if (v62 == v61)
      {
        break;
      }

      v61 = v62;
      if (v62 == -1)
      {
        return;
      }
    }

    if (v61 == 1)
    {
      v63 = *(v60 + 16);
      if (v63)
      {
        v64 = *(v63 + 160);
        if (v64)
        {
          v64(v60);
          *(v60 + 8) = 0;
          *(v60 + 4) = 0;
        }
      }

      v66 = *(v60 - 8);
      v65 = (v60 - 8);
      v67 = v66 + 8;
      if (v66 != -8)
      {
        bzero(v65, v67);
      }

      free(v65);
    }
  }
}

void ssl_credential_st::Dup(ssl_credential_st *this@<X0>, unsigned int **a2@<X8>)
{
  v4 = malloc_type_malloc(0xE8uLL, 0xB4E622C9uLL);
  if (!v4)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    *a2 = 0;
    return;
  }

  v6 = v4;
  *v4 = 224;
  *(v4 + 2) = 1;
  v7 = (v4 + 8);
  *(v4 + 3) = *(this + 1);
  *(v4 + 1) = 0u;
  v8 = (v4 + 16);
  *(v4 + 5) = 0u;
  v9 = (v4 + 80);
  *(v4 + 58) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 48) = 0;
  *(v4 + 10) = 0u;
  *(v4 + 11) = 0u;
  *(v4 + 8) = 0u;
  *(v4 + 9) = 0u;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  v4[224] = 0;
  *(v4 + 26) = 0;
  *(v4 + 27) = 0;
  *(v4 + 25) = 0;
  v10 = *(this + 1);
  if (v10)
  {
    v5 = atomic_load(v10);
    if (v5 != -1)
    {
      v11 = v5;
      do
      {
        atomic_compare_exchange_strong(v10, &v11, v5 + 1);
        if (v11 == v5)
        {
          break;
        }

        v5 = v11;
      }

      while (v11 != -1);
    }
  }

  v12 = *v8;
  *v8 = v10;
  if (v12)
  {
    v13 = atomic_load(v12);
    if (v13 != -1)
    {
      while (1)
      {
        if (!v13)
        {
LABEL_118:
          abort();
        }

        v14 = v13;
        atomic_compare_exchange_strong(v12, &v14, v13 - 1);
        if (v14 == v13)
        {
          break;
        }

        v13 = v14;
        if (v14 == -1)
        {
          goto LABEL_21;
        }
      }

      if (v13 == 1)
      {
        v15 = *(v12 + 2);
        if (v15)
        {
          v16 = *(v15 + 160);
          if (v16)
          {
            v16(v12);
            *(v12 + 1) = 0;
            v12[1] = 0;
          }
        }

        v18 = *(v12 - 1);
        v17 = v12 - 2;
        v19 = v18 + 8;
        if (v18 != -8)
        {
          bzero(v17, v19);
        }

        free(v17);
      }
    }
  }

LABEL_21:
  v20 = *(this + 2);
  if (v20)
  {
    v21 = atomic_load(v20);
    if (v21 != -1)
    {
      for (i = v21; i != -1; v21 = i)
      {
        v5 = v21 + 1;
        atomic_compare_exchange_strong(v20, &i, v5);
        if (i == v21)
        {
          break;
        }
      }
    }
  }

  v23 = *(v6 + 3);
  *(v6 + 3) = v20;
  if (v23)
  {
    v24 = atomic_load(v23);
    if (v24 != -1)
    {
      while (1)
      {
        if (!v24)
        {
          goto LABEL_118;
        }

        v25 = v24;
        atomic_compare_exchange_strong(v23, &v25, v24 - 1);
        if (v25 == v24)
        {
          break;
        }

        v24 = v25;
        if (v25 == -1)
        {
          goto LABEL_39;
        }
      }

      if (v24 == 1)
      {
        v26 = *(v23 + 16);
        if (v26)
        {
          v27 = *(v26 + 160);
          if (v27)
          {
            v27(v23);
            *(v23 + 8) = 0;
            *(v23 + 4) = 0;
          }
        }

        v29 = *(v23 - 8);
        v28 = (v23 - 8);
        v30 = v29 + 8;
        if (v29 != -8)
        {
          bzero(v28, v30);
        }

        free(v28);
      }
    }
  }

LABEL_39:
  v32 = v6 + 40;
  v31 = *(v6 + 5);
  v33 = *(this + 4);
  *(v6 + 4) = *(this + 3);
  v34 = *(this + 5);
  v35 = *(v6 + 6);
  if (v35)
  {
    v36 = v31 - 2;
    while (1)
    {
      v36 += 2;
      if (!v36)
      {
        break;
      }

      v35 = (v35 - 1);
      if (!v35)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_69:
    v42 = (v33 + 2 * v5);
    v35 += v5;
    goto LABEL_70;
  }

LABEL_43:
  if (v31)
  {
    v38 = *(v31 - 8);
    v37 = (v31 - 8);
    v39 = v38 + 8;
    if (v38 != -8)
    {
      bzero(v37, v39);
    }

    free(v37);
  }

  *v32 = 0;
  *(v6 + 6) = 0;
  if (v34)
  {
    if ((v34 & 0x8000000000000000) != 0)
    {
      ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/../crypto/mem_internal.h", 213);
      *a2 = 0;
      v43 = atomic_load(v7);
      if (v43 != -1)
      {
        goto LABEL_109;
      }

      return;
    }

    if (v34 > 0x7FFFFFFFFFFFFFFBLL || (v40 = malloc_type_malloc(2 * v34 + 8, 0xB4E622C9uLL)) == 0)
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      *v32 = 0;
      *a2 = 0;
      v43 = atomic_load(v7);
      if (v43 != -1)
      {
        goto LABEL_109;
      }

      return;
    }

    *v40 = 2 * v34;
    v35 = v40 + 1;
    *(v6 + 5) = v40 + 1;
    *(v6 + 6) = v34;
    v41 = (v34 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    if (v41 < 3)
    {
      v42 = v33;
      goto LABEL_70;
    }

    v42 = v33;
    if (v40 - v33 + 8 < 0x20)
    {
      do
      {
LABEL_70:
        v54 = *v42++;
        *v35++ = v54;
      }

      while (v42 != (v33 + 2 * v34));
      goto LABEL_71;
    }

    v44 = v41 + 1;
    if (v41 >= 0xF)
    {
      v5 = v44 & 0xFFFFFFFFFFFFFFF0;
      v45 = (v33 + 16);
      v46 = v40 + 3;
      v47 = v44 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v48 = *v45;
        *(v46 - 1) = *(v45 - 1);
        *v46 = v48;
        v45 += 2;
        v46 += 2;
        v47 -= 16;
      }

      while (v47);
      if (v44 == v5)
      {
        goto LABEL_71;
      }

      if ((v44 & 0xC) == 0)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v5 = 0;
    }

    v49 = 2 * (v44 & 0xFFFFFFFFFFFFFFFCLL);
    v35 = (v35 + v49);
    v42 = (v33 + v49);
    v50 = (v33 + 2 * v5);
    v51 = (v40 + 2 * v5 + 8);
    v52 = v5 - (v44 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v53 = *v50++;
      *v51++ = v53;
      v52 += 4;
    }

    while (v52);
    if (v44 == (v44 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

LABEL_71:
  v55 = *(this + 6);
  if (!v55)
  {
    goto LABEL_86;
  }

  v56 = OPENSSL_sk_deep_copy(v55, sk_CRYPTO_BUFFER_call_copy_func, buffer_up_ref, sk_CRYPTO_BUFFER_call_free_func, CRYPTO_BUFFER_free);
  v57 = *(v6 + 7);
  *(v6 + 7) = v56;
  if (v57)
  {
    v58 = *v57;
    if (*v57)
    {
      v59 = 0;
      do
      {
        v60 = *(v57[1] + 8 * v59);
        if (v60)
        {
          CRYPTO_BUFFER_free(v60);
          v58 = *v57;
        }

        ++v59;
      }

      while (v59 < v58);
    }

    v61 = v57[1];
    if (v61)
    {
      v63 = *(v61 - 8);
      v62 = (v61 - 8);
      v64 = v63 + 8;
      if (v63 != -8)
      {
        bzero(v62, v64);
      }

      free(v62);
    }

    v66 = *(v57 - 1);
    v65 = v57 - 1;
    v67 = v66 + 8;
    if (v66 != -8)
    {
      bzero(v65, v67);
    }

    free(v65);
    v56 = *(v6 + 7);
  }

  if (!v56)
  {
    *a2 = 0;
    v43 = atomic_load(v7);
    if (v43 != -1)
    {
      while (1)
      {
LABEL_109:
        if (!v43)
        {
          goto LABEL_118;
        }

        v80 = v43;
        atomic_compare_exchange_strong(v7, &v80, v43 - 1);
        if (v80 == v43)
        {
          break;
        }

        v43 = v80;
        if (v80 == -1)
        {
          return;
        }
      }

      if (v43 == 1)
      {
        ssl_credential_st::~ssl_credential_st(v7);

        free(v6);
      }
    }
  }

  else
  {
LABEL_86:
    v68 = *(this + 7);
    if (v68)
    {
      v69 = atomic_load((v68 + 24));
      if (v69 != -1)
      {
        for (j = v69; j != -1; v69 = j)
        {
          atomic_compare_exchange_strong((v68 + 24), &j, v69 + 1);
          if (j == v69)
          {
            break;
          }
        }
      }
    }

    v71 = *(v6 + 8);
    *(v6 + 8) = v68;
    if (v71)
    {
      CRYPTO_BUFFER_free(v71);
    }

    v72 = *(this + 9);
    if (v72)
    {
      v73 = atomic_load(v72 + 6);
      if (v73 != -1)
      {
        for (k = v73; k != -1; v73 = k)
        {
          atomic_compare_exchange_strong(v72 + 6, &k, v73 + 1);
          if (k == v73)
          {
            break;
          }
        }
      }
    }

    v75 = *v9;
    *v9 = v72;
    if (v75)
    {
      CRYPTO_BUFFER_free(v75);
    }

    v76 = *(this + 10);
    if (v76)
    {
      v77 = atomic_load((v76 + 24));
      if (v77 != -1)
      {
        for (m = v77; m != -1; v77 = m)
        {
          atomic_compare_exchange_strong((v76 + 24), &m, v77 + 1);
          if (m == v77)
          {
            break;
          }
        }
      }
    }

    v79 = *(v6 + 11);
    *(v6 + 11) = v76;
    if (v79)
    {
      CRYPTO_BUFFER_free(v79);
    }

    *(v6 + 36) = *(this + 32);
    *a2 = v7;
  }
}

uint64_t buffer_up_ref(uint64_t result)
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

void ssl_credential_st::ClearCertAndKey(ssl_credential_st *this)
{
  v1 = *(this + 1);
  *(this + 1) = 0;
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = atomic_load(v1);
  if (v2 == -1)
  {
    goto LABEL_8;
  }

  while (1)
  {
    if (!v2)
    {
LABEL_43:
      abort();
    }

    v3 = v2;
    atomic_compare_exchange_strong(v1, &v3, v2 - 1);
    if (v3 == v2)
    {
      break;
    }

    v2 = v3;
    if (v3 == -1)
    {
      goto LABEL_8;
    }
  }

  if (v2 == 1)
  {
    v14 = *(v1 + 16);
    if (v14)
    {
      v15 = *(v14 + 160);
      if (v15)
      {
        v16 = this;
        v15(v1);
        this = v16;
        *(v1 + 8) = 0;
        *(v1 + 4) = 0;
      }
    }

    v17 = this;
    v19 = *(v1 - 8);
    v18 = (v1 - 8);
    v20 = v19 + 8;
    if (v19 != -8)
    {
      bzero(v18, v20);
    }

    free(v18);
    this = v17;
    v4 = *(v17 + 2);
    *(v17 + 2) = 0;
    if (!v4)
    {
      goto LABEL_27;
    }
  }

  else
  {
LABEL_8:
    v4 = *(this + 2);
    *(this + 2) = 0;
    if (!v4)
    {
      goto LABEL_27;
    }
  }

  v5 = atomic_load(v4);
  if (v5 != -1)
  {
    while (1)
    {
      if (!v5)
      {
        goto LABEL_43;
      }

      v6 = v5;
      atomic_compare_exchange_strong(v4, &v6, v5 - 1);
      if (v6 == v5)
      {
        break;
      }

      v5 = v6;
      if (v6 == -1)
      {
        goto LABEL_27;
      }
    }

    if (v5 == 1)
    {
      v7 = *(v4 + 16);
      if (v7)
      {
        v8 = *(v7 + 160);
        if (v8)
        {
          v9 = this;
          v8(v4);
          this = v9;
          *(v4 + 8) = 0;
          *(v4 + 4) = 0;
        }
      }

      v10 = this;
      v12 = *(v4 - 8);
      v11 = (v4 - 8);
      v13 = v12 + 8;
      if (v12 != -8)
      {
        bzero(v11, v13);
      }

      free(v11);
      this = v10;
    }
  }

LABEL_27:
  *(this + 3) = 0;
  v21 = *(this + 6);
  *(this + 6) = 0;
  if (v21)
  {
    v22 = *v21;
    if (*v21)
    {
      v23 = 0;
      do
      {
        v24 = *(v21[1] + 8 * v23);
        if (v24)
        {
          CRYPTO_BUFFER_free(v24);
          v22 = *v21;
        }

        ++v23;
      }

      while (v23 < v22);
    }

    v25 = v21[1];
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

    v30 = *(v21 - 1);
    v29 = v21 - 1;
    v31 = v30 + 8;
    if (v30 != -8)
    {
      bzero(v29, v31);
    }

    free(v29);
  }
}

uint64_t ssl_credential_st::SetLeafCert(uint64_t a1, uint64_t *a2, int a3)
{
  v3 = *(a1 + 4);
  if (v3 >= 2)
  {
    if (v3 - 2 >= 2)
    {
LABEL_86:
      abort();
    }

    v4 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_credential.cc";
    v5 = 66;
    v6 = 208;
    goto LABEL_21;
  }

  v10 = *(*a2 + 16);
  *&v55 = *(*a2 + 8);
  *(&v55 + 1) = v10;
  v57 = v55;
  if ((bssl::ssl_cert_skip_to_spki(&v57, v56) & 1) == 0)
  {
    v4 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_cert.cc";
    v5 = 272;
    v6 = 265;
LABEL_21:
    ERR_put_error(16, 0, v5, v4, v6);
    return 0;
  }

  result = EVP_parse_public_key(v56);
  if (!result)
  {
    return result;
  }

  v13 = result;
  v14 = *(result + 4);
  if (v14 != 6 && v14 != 949)
  {
    if (v14 == 408)
    {
      if (bssl::ssl_cert_check_key_usage(&v55, 0))
      {
        goto LABEL_10;
      }

      v19 = 230;
    }

    else
    {
      v19 = 222;
    }

    ERR_put_error(16, 0, 228, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_credential.cc", v19);
    goto LABEL_26;
  }

LABEL_10:
  if (v3 == 1)
  {
    goto LABEL_16;
  }

  v15 = *(a1 + 16);
  if (!v15 || (bssl::ssl_compare_public_and_private_key(v13, v15, v12) & 1) != 0)
  {
    goto LABEL_16;
  }

  if (!a3)
  {
LABEL_26:
    result = 0;
    v20 = atomic_load(v13);
    if (v20 != -1)
    {
      goto LABEL_61;
    }

    return result;
  }

  ERR_clear_error();
  v16 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v16)
  {
    EVP_PKEY_free(v16);
  }

LABEL_16:
  result = *(a1 + 48);
  if (result)
  {
    goto LABEL_52;
  }

  result = OPENSSL_sk_new_null();
  if (result)
  {
    v17 = *result;
    if (*result >= 0x7FFFFFFFuLL)
    {
      v18 = result;
      ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
      result = v18;
LABEL_37:
      OPENSSL_sk_pop_free_ex(result, bssl::internal::DeleterImpl<stack_st_CRYPTO_BUFFER,void>::Free(stack_st_CRYPTO_BUFFER*)::{lambda(void (*)(void *),void *)#1}::__invoke, 0);
      result = 0;
      goto LABEL_38;
    }

    v21 = *(result + 24);
    if (v21 <= v17 + 1)
    {
      v24 = result;
      v25 = OPENSSL_realloc(*(result + 8), 16 * v21);
      result = v24;
      if (!v25)
      {
        goto LABEL_37;
      }

      v24[1] = v25;
      v24[3] = 2 * v21;
      v22 = *v24;
      v26 = *v24 - v17;
      if (*v24 <= v17)
      {
        v23 = &v25[v22];
      }

      else
      {
        if (8 * v26)
        {
          memmove(&v25[v17 + 1], &v25[v17], 8 * v26);
          result = v24;
          v22 = *v24;
          v25 = v24[1];
        }

        v23 = &v25[v17];
      }
    }

    else
    {
      v22 = *result;
      v23 = (*(result + 8) + 8 * v17);
    }

    *v23 = 0;
    *(result + 16) = 0;
    *result = v22 + 1;
    if (v22 != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_38:
  v27 = *(a1 + 48);
  *(a1 + 48) = result;
  if (v27)
  {
    v28 = *v27;
    if (*v27)
    {
      v29 = 0;
      do
      {
        v30 = *(v27[1] + 8 * v29);
        if (v30)
        {
          CRYPTO_BUFFER_free(v30);
          v28 = *v27;
        }

        ++v29;
      }

      while (v29 < v28);
    }

    v31 = v27[1];
    if (v31)
    {
      v33 = *(v31 - 8);
      v32 = (v31 - 8);
      v34 = v33 + 8;
      if (v33 != -8)
      {
        bzero(v32, v34);
      }

      free(v32);
    }

    v36 = *(v27 - 1);
    v35 = v27 - 1;
    v37 = v36 + 8;
    if (v36 != -8)
    {
      bzero(v35, v37);
    }

    free(v35);
    result = *(a1 + 48);
  }

  if (!result)
  {
LABEL_60:
    v20 = atomic_load(v13);
    if (v20 != -1)
    {
      while (1)
      {
LABEL_61:
        if (!v20)
        {
          goto LABEL_86;
        }

        v40 = v20;
        atomic_compare_exchange_strong(v13, &v40, v20 - 1);
        if (v40 == v20)
        {
          break;
        }

        v20 = v40;
        if (v40 == -1)
        {
          return result;
        }
      }

      if (v20 == 1)
      {
        v41 = *(v13 + 16);
        v42 = result;
        if (v41)
        {
          v43 = *(v41 + 160);
          if (v43)
          {
            v43(v13);
            *(v13 + 8) = 0;
            *(v13 + 4) = 0;
          }
        }

        v45 = *(v13 - 8);
        v44 = (v13 - 8);
        v46 = v45 + 8;
        if (v45 != -8)
        {
          bzero(v44, v46);
        }

        free(v44);
        return v42;
      }
    }

    return result;
  }

LABEL_52:
  if (*result)
  {
    CRYPTO_BUFFER_free(**(result + 8));
    v38 = *(a1 + 48);
    v39 = *a2;
    *a2 = 0;
    if (!v38)
    {
      goto LABEL_58;
    }
  }

  else
  {
    CRYPTO_BUFFER_free(0);
    v38 = *(a1 + 48);
    v39 = *a2;
    *a2 = 0;
    if (!v38)
    {
      goto LABEL_58;
    }
  }

  if (*v38)
  {
    **(v38 + 8) = v39;
  }

LABEL_58:
  if (v3 == 1)
  {
    result = 1;
    goto LABEL_60;
  }

  v47 = *(a1 + 8);
  *(a1 + 8) = v13;
  if (v47)
  {
    v48 = atomic_load(v47);
    if (v48 != -1)
    {
      while (1)
      {
        if (!v48)
        {
          goto LABEL_86;
        }

        v49 = v48;
        atomic_compare_exchange_strong(v47, &v49, v48 - 1);
        if (v49 == v48)
        {
          break;
        }

        v48 = v49;
        if (v49 == -1)
        {
          return 1;
        }
      }

      if (v48 == 1)
      {
        v50 = *(v47 + 16);
        if (v50)
        {
          v51 = *(v50 + 160);
          if (v51)
          {
            v51(v47);
            *(v47 + 8) = 0;
            *(v47 + 4) = 0;
          }
        }

        v53 = *(v47 - 8);
        v52 = (v47 - 8);
        v54 = v53 + 8;
        if (v53 != -8)
        {
          bzero(v52, v54);
        }

        free(v52);
      }
    }
  }

  return 1;
}

uint64_t ssl_credential_st::AppendIntermediateCert(uint64_t a1, unsigned int **a2)
{
  v2 = *(a1 + 4);
  v3 = v2 >= 2;
  v4 = v2 - 2;
  if (!v3)
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      goto LABEL_44;
    }

    v9 = OPENSSL_sk_new_null();
    v8 = v9;
    if (!v9)
    {
LABEL_30:
      v26 = *(a1 + 48);
      *(a1 + 48) = v8;
      if (v26)
      {
        v27 = *v26;
        if (*v26)
        {
          v28 = 0;
          do
          {
            v29 = *(v26[1] + 8 * v28);
            if (v29)
            {
              CRYPTO_BUFFER_free(v29);
              v27 = *v26;
            }

            ++v28;
          }

          while (v28 < v27);
        }

        v30 = v26[1];
        if (v30)
        {
          v32 = *(v30 - 8);
          v31 = (v30 - 8);
          v33 = v32 + 8;
          if (v32 != -8)
          {
            bzero(v31, v33);
          }

          free(v31);
        }

        v35 = *(v26 - 1);
        v34 = v26 - 1;
        v36 = v35 + 8;
        if (v35 != -8)
        {
          bzero(v34, v36);
        }

        free(v34);
        v8 = *(a1 + 48);
      }

      if (!v8)
      {
        return 0;
      }

LABEL_44:
      v37 = *a2;
      *a2 = 0;
      v38 = *v8;
      if (*v8 >= 0x7FFFFFFFuLL)
      {
        ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
        goto LABEL_56;
      }

      v39 = *(v8 + 3);
      if (v39 <= v38 + 1)
      {
        v40 = OPENSSL_realloc(*(v8 + 1), 16 * v39);
        if (!v40)
        {
          goto LABEL_56;
        }

        *(v8 + 1) = v40;
        *(v8 + 3) = 2 * v39;
        v41 = *v8;
        v42 = *v8 - v38;
        if (*v8 <= v38)
        {
          v40[v41] = v37;
          *(v8 + 4) = 0;
          *v8 = v41 + 1;
          if (v41 == -1)
          {
            goto LABEL_56;
          }
        }

        else
        {
          if (8 * v42)
          {
            memmove(&v40[v38 + 1], &v40[v38], 8 * v42);
            v41 = *v8;
            v40 = *(v8 + 1);
          }

          v40[v38] = v37;
          *(v8 + 4) = 0;
          *v8 = v41 + 1;
          if (v41 == -1)
          {
            goto LABEL_56;
          }
        }
      }

      else
      {
        *(*(v8 + 1) + 8 * v38) = v37;
        *(v8 + 4) = 0;
        *v8 = v38 + 1;
        if (v38 == -1)
        {
LABEL_56:
          if (v37)
          {
            CRYPTO_BUFFER_free(v37);
          }

          return 0;
        }
      }

      return 1;
    }

    v10 = *v9;
    if (*v9 >= 0x7FFFFFFFuLL)
    {
      ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
      goto LABEL_9;
    }

    v14 = *(v9 + 3);
    if (v14 <= v10 + 1)
    {
      v17 = OPENSSL_realloc(*(v9 + 1), 16 * v14);
      if (!v17)
      {
LABEL_9:
        v11 = *v8;
        if (*v8)
        {
          v12 = 0;
          do
          {
            v13 = *(*(v8 + 1) + 8 * v12);
            if (v13)
            {
              CRYPTO_BUFFER_free(v13);
              v11 = *v8;
            }

            ++v12;
          }

          while (v12 < v11);
        }

LABEL_23:
        v19 = *(v8 + 1);
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

        v24 = *(v8 - 1);
        v23 = v8 - 8;
        v25 = v24 + 8;
        if (v24 != -8)
        {
          bzero(v23, v25);
        }

        free(v23);
        v8 = 0;
        goto LABEL_30;
      }

      *(v8 + 1) = v17;
      *(v8 + 3) = 2 * v14;
      v15 = *v8;
      v18 = *v8 - v10;
      if (*v8 <= v10)
      {
        v16 = &v17[v15];
      }

      else
      {
        if (8 * v18)
        {
          memmove(&v17[v10 + 1], &v17[v10], 8 * v18);
          v15 = *v8;
          v17 = *(v8 + 1);
        }

        v16 = &v17[v10];
      }
    }

    else
    {
      v15 = *v9;
      v16 = (*(v9 + 1) + 8 * v10);
    }

    *v16 = 0;
    *(v8 + 4) = 0;
    *v8 = v15 + 1;
    if (v15 != -1)
    {
      goto LABEL_30;
    }

    goto LABEL_23;
  }

  if (v4 >= 2)
  {
    abort();
  }

  ERR_put_error(16, 0, 66, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_credential.cc", 316);
  return 0;
}

void SSL_CREDENTIAL_free(unsigned int *a1)
{
  if (a1)
  {
    v1 = atomic_load(a1);
    if (v1 != -1)
    {
      while (1)
      {
        if (!v1)
        {
          abort();
        }

        v2 = v1;
        atomic_compare_exchange_strong(a1, &v2, v1 - 1);
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
        ssl_credential_st::~ssl_credential_st(a1);
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

uint64_t SSL_CREDENTIAL_set1_private_key(uint64_t a1, evp_pkey_st *a2, const evp_pkey_st *a3)
{
  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (v4)
  {
    if (v5 >= 2)
    {
LABEL_26:
      abort();
    }

    ERR_put_error(16, 0, 66, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_credential.cc", 348);
    return 0;
  }

  else if (*(a1 + 8) && (v7 = a1, v8 = a2, v9 = bssl::ssl_compare_public_and_private_key(*(a1 + 8), a2, a3), a2 = v8, v10 = v9, a1 = v7, !v10))
  {
    return 0;
  }

  else
  {
    if (a2)
    {
      v11 = atomic_load(a2);
      if (v11 != -1)
      {
        for (i = v11; i != -1; v11 = i)
        {
          atomic_compare_exchange_strong(&a2->type, &i, v11 + 1);
          if (i == v11)
          {
            break;
          }
        }
      }
    }

    v13 = *(a1 + 16);
    *(a1 + 16) = a2;
    if (!v13)
    {
      goto LABEL_17;
    }

    v14 = atomic_load(v13);
    if (v14 == -1)
    {
      goto LABEL_17;
    }

    while (1)
    {
      if (!v14)
      {
        goto LABEL_26;
      }

      v15 = v14;
      atomic_compare_exchange_strong(v13, &v15, v14 - 1);
      if (v15 == v14)
      {
        break;
      }

      v14 = v15;
      if (v15 == -1)
      {
        goto LABEL_17;
      }
    }

    if (v14 == 1)
    {
      v16 = *(v13 + 16);
      if (v16)
      {
        v17 = *(v16 + 160);
        if (v17)
        {
          v18 = a1;
          v17(v13);
          a1 = v18;
          *(v13 + 8) = 0;
          *(v13 + 4) = 0;
        }
      }

      v19 = a1;
      v21 = *(v13 - 8);
      v20 = (v13 - 8);
      v22 = v21 + 8;
      if (v21 != -8)
      {
        bzero(v20, v22);
      }

      free(v20);
      *(v19 + 24) = 0;
      return 1;
    }

    else
    {
LABEL_17:
      *(a1 + 24) = 0;
      return 1;
    }
  }
}

uint64_t SSL_CREDENTIAL_set_private_key_method(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = v2 >= 2;
  v4 = v2 - 2;
  if (v3)
  {
    if (v4 >= 2)
    {
LABEL_18:
      abort();
    }

    ERR_put_error(16, 0, 66, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_credential.cc", 367);
    return 0;
  }

  else
  {
    v6 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = atomic_load(v6);
    if (v7 == -1)
    {
      goto LABEL_10;
    }

    while (1)
    {
      if (!v7)
      {
        goto LABEL_18;
      }

      v8 = v7;
      atomic_compare_exchange_strong(v6, &v8, v7 - 1);
      if (v8 == v7)
      {
        break;
      }

      v7 = v8;
      if (v8 == -1)
      {
        goto LABEL_10;
      }
    }

    if (v7 == 1)
    {
      v9 = *(v6 + 16);
      if (v9)
      {
        v12 = *(v9 + 160);
        if (v12)
        {
          v12(v6);
          *(v6 + 8) = 0;
          *(v6 + 4) = 0;
        }
      }

      v14 = *(v6 - 8);
      v13 = (v6 - 8);
      v15 = v14 + 8;
      if (v14 != -8)
      {
        bzero(v13, v15);
      }

      free(v13);
      *(a1 + 24) = a2;
      return 1;
    }

    else
    {
LABEL_10:
      *(a1 + 24) = a2;
      return 1;
    }
  }
}

uint64_t SSL_CREDENTIAL_set1_cert_chain(uint64_t a1, unsigned int **a2, unint64_t a3)
{
  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (v4)
  {
    if (v5 >= 2)
    {
      abort();
    }

    goto LABEL_19;
  }

  if (!a3)
  {
LABEL_19:
    ERR_put_error(16, 0, 66, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_credential.cc", 380);
    return 0;
  }

  v9 = *a2;
  if (*a2)
  {
    v10 = atomic_load(v9 + 6);
    if (v10 != -1)
    {
      for (i = v10; i != -1; v10 = i)
      {
        atomic_compare_exchange_strong(v9 + 6, &i, v10 + 1);
        if (i == v10)
        {
          break;
        }
      }
    }
  }

  v26 = v9;
  v12 = ssl_credential_st::SetLeafCert(a1, &v26, 0);
  if (v26)
  {
    CRYPTO_BUFFER_free(v26);
  }

  if (!v12)
  {
    return 0;
  }

  for (j = *(a1 + 48); j; j = *(a1 + 48))
  {
    if (*j < 2)
    {
      break;
    }

    v14 = *j - 1;
    v15 = *(j[1] + 8 * v14);
    *j = v14;
    CRYPTO_BUFFER_free(v15);
  }

  if (a3 == 1)
  {
    return 1;
  }

  v17 = 0;
  if (a3 <= 2)
  {
    v18 = 2;
  }

  else
  {
    v18 = a3;
  }

  for (k = 1; k != v18; v17 = k >= a3)
  {
    v20 = a2[k];
    if (v20)
    {
      v21 = atomic_load(v20 + 6);
      if (v21 != -1)
      {
        for (m = v21; m != -1; v21 = m)
        {
          atomic_compare_exchange_strong(v20 + 6, &m, v21 + 1);
          if (m == v21)
          {
            break;
          }
        }
      }
    }

    v25 = v20;
    appended = ssl_credential_st::AppendIntermediateCert(a1, &v25);
    v24 = v25;
    v25 = 0;
    if (v24)
    {
      CRYPTO_BUFFER_free(v24);
    }

    if ((appended & 1) == 0)
    {
      break;
    }

    ++k;
  }

  return v17;
}

void bssl::SSLKeyShare::Create(bssl::SSLKeyShare *this@<X0>, void *a2@<X8>)
{
  v3 = 0;
  if (this > 28)
  {
    switch(this)
    {
      case 0x1D:
        v9 = malloc_type_malloc(0x30uLL, 0xB4E622C9uLL);
        if (v9)
        {
          *v9 = 40;
          v9[1] = &unk_2882A5E78;
          *a2 = v9 + 1;
          return;
        }

        break;
      case 0x11EC:
        v12 = malloc_type_malloc(0x1E90uLL, 0xB4E622C9uLL);
        if (v12)
        {
          *v12 = 7816;
          v12[1] = &unk_2882A5F18;
          *a2 = v12 + 1;
          return;
        }

        break;
      case 0x6399:
        v6 = malloc_type_malloc(0x1E90uLL, 0xB4E622C9uLL);
        if (v6)
        {
          *v6 = 7816;
          v6[1] = &unk_2882A5EC8;
          *a2 = v6 + 1;
          return;
        }

        break;
      default:
        goto LABEL_7;
    }
  }

  else
  {
    switch(this)
    {
      case 0x17:
        v7 = EC_group_p256();
        v8 = malloc_type_malloc(0x28uLL, 0xB4E622C9uLL);
        if (v8)
        {
          *v8 = 32;
          v8[1] = &unk_2882A5E28;
          v8[2] = 0;
          v8[3] = v7;
          *(v8 + 16) = 23;
          *a2 = v8 + 1;
          return;
        }

        break;
      case 0x18:
        v10 = EC_group_p384();
        v11 = malloc_type_malloc(0x28uLL, 0xB4E622C9uLL);
        if (v11)
        {
          *v11 = 32;
          v11[1] = &unk_2882A5E28;
          v11[2] = 0;
          v11[3] = v10;
          *(v11 + 16) = 24;
          *a2 = v11 + 1;
          return;
        }

        break;
      case 0x19:
        v4 = EC_group_p521();
        v5 = malloc_type_malloc(0x28uLL, 0xB4E622C9uLL);
        if (v5)
        {
          *v5 = 32;
          v3 = (v5 + 1);
          v5[1] = &unk_2882A5E28;
          v5[2] = 0;
          v5[3] = v4;
          *(v5 + 16) = 25;
          goto LABEL_7;
        }

        break;
      default:
LABEL_7:
        *a2 = v3;
        return;
    }
  }

  ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  *a2 = 0;
}

uint64_t bssl::ssl_name_to_group_id(bssl *this, const char *a2, const char *a3)
{
  result = 0;
  if (a3 <= 9)
  {
    if (a3 == 5)
    {
      if (strncmp("P-256", a2, 5uLL))
      {
        v5 = &dword_273BB948C;
        if (strncmp("P-384", a2, 5uLL))
        {
          v5 = &dword_273BB94D4;
          if (strncmp("P-521", a2, 5uLL))
          {
            return 0;
          }
        }
      }
    }

    else if (a3 == 6)
    {
      v5 = &dword_273BB951C;
      if (strncmp("X25519", a2, 6uLL) && strncmp("x25519", a2, 6uLL))
      {
        return 0;
      }
    }

    else
    {
      if (a3 != 9)
      {
        return result;
      }

      v5 = &dword_273BB948C;
      if (strncmp("secp384r1", a2, 9uLL))
      {
        v5 = &dword_273BB94D4;
        if (strncmp("secp521r1", a2, 9uLL))
        {
          return 0;
        }
      }
    }

LABEL_25:
    *this = *(v5 + 2);
    return 1;
  }

  if (a3 == 10)
  {
    if (strncmp("prime256v1", a2, 0xAuLL))
    {
      return 0;
    }

    goto LABEL_25;
  }

  if (a3 == 14)
  {
    v5 = &dword_273BB95AC;
    if (strncmp("X25519MLKEM768", a2, 0xEuLL))
    {
      return 0;
    }

    goto LABEL_25;
  }

  if (a3 == 21)
  {
    v5 = &dword_273BB9564;
    if (strncmp("X25519Kyber768Draft00", a2, 0x15uLL))
    {
      return 0;
    }

    goto LABEL_25;
  }

  return result;
}

void bssl::anonymous namespace::ECKeyShare::~ECKeyShare(bssl::_anonymous_namespace_::ECKeyShare *this)
{
  v1 = *(this + 1);
  *this = &unk_2882A5E28;
  *(this + 1) = 0;
  if (v1)
  {
    v2 = *(v1 + 5);
    if ((v2 & 2) == 0)
    {
      v3 = *v1;
      if (*v1)
      {
        v5 = *(v3 - 8);
        v4 = (v3 - 8);
        v6 = v5 + 8;
        if (v5 != -8)
        {
          bzero(v4, v6);
        }

        free(v4);
        v2 = *(v1 + 5);
      }
    }

    if (v2)
    {
      v8 = *(v1 - 1);
      v7 = v1 - 1;
      v9 = v8 + 8;
      if (v8 != -8)
      {
        bzero(v7, v9);
      }

      free(v7);
    }

    else
    {
      *v1 = 0;
    }
  }
}

{
  v1 = *(this + 1);
  *this = &unk_2882A5E28;
  *(this + 1) = 0;
  if (v1)
  {
    v2 = *(v1 + 5);
    if ((v2 & 2) == 0)
    {
      v3 = *v1;
      if (*v1)
      {
        v5 = *(v3 - 8);
        v4 = (v3 - 8);
        v6 = v5 + 8;
        if (v5 != -8)
        {
          bzero(v4, v6);
        }

        free(v4);
        v2 = *(v1 + 5);
      }
    }

    if (v2)
    {
      v8 = *(v1 - 1);
      v7 = v1 - 1;
      v9 = v8 + 8;
      if (v8 != -8)
      {
        bzero(v7, v9);
      }

      free(v7);
    }

    else
    {
      *v1 = 0;
    }
  }

  JUMPOUT(0x2743DA540);
}

uint64_t bssl::anonymous namespace::ECKeyShare::Generate(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (v4)
  {
    *v4 = 24;
    v5 = v4;
    v4[1] = 0;
    result = (v4 + 1);
    v5[2] = 0;
    v5[3] = 0x100000000;
    v7 = *(a1 + 8);
    *(a1 + 8) = result;
    if (!v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    result = 0;
    v7 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (!v7)
    {
LABEL_3:
      if (!result)
      {
        return result;
      }

      goto LABEL_17;
    }
  }

  v8 = *(v7 + 5);
  if ((v8 & 2) == 0)
  {
    v9 = *v7;
    if (*v7)
    {
      v11 = *(v9 - 8);
      v10 = (v9 - 8);
      v12 = v11 + 8;
      if (v11 != -8)
      {
        bzero(v10, v12);
      }

      free(v10);
      v8 = *(v7 + 5);
    }
  }

  if ((v8 & 1) == 0)
  {
    *v7 = 0;
    result = *(a1 + 8);
    if (!result)
    {
      return result;
    }

LABEL_17:
    result = BN_rand_range_ex(result, 1uLL, *(a1 + 16) + 256);
    if (!result)
    {
      return result;
    }

    v16 = *(a1 + 16);
    if (v16)
    {
      v17 = malloc_type_malloc(0xE8uLL, 0xB4E622C9uLL);
      if (v17)
      {
        v18 = v17;
        *v17 = 224;
        v19 = (v17 + 8);
        if (!*(v16 + 512))
        {
          v28 = atomic_load((v16 + 540));
          if (v28 != -1)
          {
            for (i = v28; i != -1; v28 = i)
            {
              atomic_compare_exchange_strong((v16 + 540), &i, v28 + 1);
              if (i == v28)
              {
                break;
              }
            }
          }
        }

        *(v17 + 1) = v16;
        *(v17 + 1) = 0u;
        *(v17 + 2) = 0u;
        *(v17 + 3) = 0u;
        *(v17 + 4) = 0u;
        *(v17 + 5) = 0u;
        *(v17 + 6) = 0u;
        *(v17 + 7) = 0u;
        *(v17 + 8) = 0u;
        *(v17 + 9) = 0u;
        *(v17 + 10) = 0u;
        *(v17 + 11) = 0u;
        *(v17 + 12) = 0u;
        *(v17 + 13) = 0u;
        *(v17 + 28) = 0;
        v23 = ec_point_mul_no_self_test(*(a1 + 16), v19, *(a1 + 8), 0, 0, 0) && (v20 = *(a1 + 16), (v21 = EC_POINT_point2oct(v20, v19, POINT_CONVERSION_UNCOMPRESSED, 0, 0, 0)) != 0) && (v22 = v21, buf = 0, CBB_add_space(a2, &buf, v21)) && EC_POINT_point2oct(v20, v19, POINT_CONVERSION_UNCOMPRESSED, buf, v22, 0) == v22;
        EC_GROUP_free(v18[1]);
        free(v18);
        return v23;
      }

      v24 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v25 = 14;
      v26 = 65;
      v27 = 217;
    }

    else
    {
      v24 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc";
      v25 = 15;
      v26 = 67;
      v27 = 407;
    }

    ERR_put_error(v25, 0, v26, v24, v27);
    return 0;
  }

  v14 = *(v7 - 1);
  v13 = v7 - 1;
  v15 = v14 + 8;
  if (v14 != -8)
  {
    bzero(v13, v15);
  }

  free(v13);
  result = *(a1 + 8);
  if (result)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t bssl::anonymous namespace::ECKeyShare::Encap(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  *a4 = 80;
  result = (*(*a1 + 24))(a1);
  if (result)
  {
    v12 = *(*a1 + 40);

    return v12(a1, a3, a4, a5, a6);
  }

  return result;
}

uint64_t bssl::anonymous namespace::ECKeyShare::Decap(uint64_t a1, void *a2, _BYTE *a3, const unsigned __int8 *a4, size_t a5)
{
  *a3 = 80;
  v10 = *(a1 + 16);
  if (!v10)
  {
    ERR_put_error(15, 0, 67, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc", 407);
    v12 = 0;
    v13 = *(a1 + 16);
    if (v13)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

  v11 = malloc_type_malloc(0xE8uLL, 0xB4E622C9uLL);
  if (!v11)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v12 = 0;
    v13 = *(a1 + 16);
    if (v13)
    {
      goto LABEL_9;
    }

LABEL_5:
    v14 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc";
    v15 = 15;
    v16 = 67;
    v17 = 407;
    goto LABEL_15;
  }

  *v11 = 224;
  v12 = (v11 + 8);
  if (!*(v10 + 512))
  {
    v43 = atomic_load((v10 + 540));
    if (v43 != -1)
    {
      for (i = v43; i != -1; v43 = i)
      {
        atomic_compare_exchange_strong((v10 + 540), &i, v43 + 1);
        if (i == v43)
        {
          break;
        }
      }
    }
  }

  *(v11 + 1) = v10;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  *(v11 + 4) = 0u;
  *(v11 + 5) = 0u;
  *(v11 + 6) = 0u;
  *(v11 + 7) = 0u;
  *(v11 + 8) = 0u;
  *(v11 + 9) = 0u;
  *(v11 + 10) = 0u;
  *(v11 + 11) = 0u;
  *(v11 + 12) = 0u;
  *(v11 + 13) = 0u;
  *(v11 + 28) = 0;
  v13 = *(a1 + 16);
  if (!v13)
  {
    goto LABEL_5;
  }

LABEL_9:
  v18 = malloc_type_malloc(0xE8uLL, 0xB4E622C9uLL);
  if (!v18)
  {
    v14 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v15 = 14;
    v16 = 65;
    v17 = 217;
LABEL_15:
    ERR_put_error(v15, 0, v16, v14, v17);
    v19 = 0;
    v20 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
    if (v20)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  *v18 = 224;
  v19 = (v18 + 8);
  if (!*(v13 + 512))
  {
    v45 = atomic_load((v13 + 540));
    if (v45 != -1)
    {
      for (j = v45; j != -1; v45 = j)
      {
        atomic_compare_exchange_strong((v13 + 540), &j, v45 + 1);
        if (j == v45)
        {
          break;
        }
      }
    }
  }

  *(v18 + 1) = v13;
  *(v18 + 1) = 0u;
  *(v18 + 2) = 0u;
  *(v18 + 3) = 0u;
  *(v18 + 4) = 0u;
  *(v18 + 5) = 0u;
  *(v18 + 6) = 0u;
  *(v18 + 7) = 0u;
  *(v18 + 8) = 0u;
  *(v18 + 9) = 0u;
  *(v18 + 10) = 0u;
  *(v18 + 11) = 0u;
  *(v18 + 12) = 0u;
  *(v18 + 13) = 0u;
  *(v18 + 28) = 0;
  v20 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (v20)
  {
LABEL_16:
    *v20 = 24;
    v20[1] = 0;
    v21 = (v20 + 1);
    v20[2] = 0;
    v20[3] = 0x100000000;
    if (!v12)
    {
      goto LABEL_30;
    }

    goto LABEL_17;
  }

LABEL_12:
  ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  v21 = 0;
  if (!v12)
  {
LABEL_30:
    v26 = 0;
    if (!v21)
    {
      goto LABEL_40;
    }

    goto LABEL_33;
  }

LABEL_17:
  if (!v19)
  {
    goto LABEL_30;
  }

  if (!v21)
  {
    v26 = 0;
    EC_GROUP_free(*v19);
    v42 = *(v19 - 1);
    v32 = v19 - 1;
    v34 = v42 + 8;
    if (v42 == -8)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (a5 && *a4 == 4 && EC_POINT_oct2point(*(a1 + 16), v12, a4, a5, 0))
  {
    if (ec_point_mul_no_self_test(*(a1 + 16), v19, 0, v12, *(a1 + 8), 0) && EC_POINT_get_affine_coordinates_GFp(*(a1 + 16), v19, v21, 0, 0))
    {
      v22 = *(a1 + 16);
      v23 = *(v22 + 328);
      if (v23 < 1)
      {
        if (!v23)
        {
LABEL_81:
          v57 = 0;
          v58 = 0;
          v63 = 0;
          v64 = 0;
          goto LABEL_84;
        }

        v24 = *(v22 + 320);
      }

      else
      {
        v24 = *(v22 + 320);
        while (!*(v24 - 8 + 8 * v23))
        {
          v25 = __OFSUB__(v23--, 1);
          if ((v23 < 0) ^ v25 | (v23 == 0))
          {
            goto LABEL_81;
          }
        }
      }

      v47 = v23 - 1;
      v48 = *(v24 + 8 * v47);
      v49 = v48 != 0;
      v50 = HIDWORD(v48) != 0;
      if (HIDWORD(v48))
      {
        v48 >>= 32;
      }

      v51 = v48 >> 16 != 0;
      if (v48 >> 16)
      {
        v48 >>= 16;
      }

      v52 = v48 > 0xFF;
      if (v48 > 0xFF)
      {
        v48 >>= 8;
      }

      v53 = v48 > 0xF;
      if (v48 > 0xF)
      {
        v48 >>= 4;
      }

      v54 = v48 > 3;
      if (v48 > 3)
      {
        v48 >>= 2;
      }

      v55 = v49 | (v47 << 6) | (32 * v50) | (16 * v51) | (8 * v52) | (4 * v53) | (2 * v54);
      if (v48 > 1)
      {
        ++v55;
      }

      v56 = v55 + 7;
      v63 = 0;
      v64 = 0;
      if (v56 < 8)
      {
        v57 = 0;
        v58 = 0;
LABEL_84:
        result = BN_bn2bin_padded(v58, v57, v21);
        v26 = result != 0;
        if (result)
        {
          result = bssl::Array<unsigned char>::operator=(a2, &v63);
          v58 = v63;
          v57 = v64;
        }

        if (v57 && v57 - 1 >= -v58)
        {
          __break(1u);
          return result;
        }

        if (v58)
        {
          v61 = *(v58 - 1);
          v60 = v58 - 8;
          v62 = v61 + 8;
          if (v61 != -8)
          {
            bzero(v60, v62);
          }

          free(v60);
        }

        goto LABEL_33;
      }

      v57 = v56 >> 3;
      v59 = malloc_type_malloc(v57 + 8, 0xB4E622C9uLL);
      if (v59)
      {
        *v59 = v57;
        v58 = (v59 + 1);
        v63 = (v59 + 1);
        v64 = v57;
        goto LABEL_84;
      }

      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    }

    v26 = 0;
  }

  else
  {
    ERR_put_error(16, 0, 108, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_key_share.cc", 96);
    v26 = 0;
    *a3 = 47;
  }

LABEL_33:
  flags = v21->flags;
  if ((flags & 2) == 0)
  {
    d = v21->d;
    if (v21->d)
    {
      v30 = *(d - 1);
      v29 = d - 1;
      v31 = v30 + 8;
      if (v30 != -8)
      {
        bzero(v29, v31);
      }

      free(v29);
      flags = v21->flags;
    }
  }

  if (flags)
  {
    v40 = *&v21[-1].neg;
    p_neg = &v21[-1].neg;
    v41 = v40 + 8;
    if (v40 != -8)
    {
      bzero(p_neg, v41);
    }

    free(p_neg);
    if (!v19)
    {
      goto LABEL_44;
    }

LABEL_41:
    EC_GROUP_free(*v19);
    v33 = *(v19 - 1);
    v32 = v19 - 1;
    v34 = v33 + 8;
    if (v33 == -8)
    {
LABEL_43:
      free(v32);
      goto LABEL_44;
    }

LABEL_42:
    bzero(v32, v34);
    goto LABEL_43;
  }

  v21->d = 0;
LABEL_40:
  if (v19)
  {
    goto LABEL_41;
  }

LABEL_44:
  if (v12)
  {
    EC_GROUP_free(*v12);
    v36 = *(v12 - 1);
    v35 = v12 - 1;
    v37 = v36 + 8;
    if (v36 != -8)
    {
      bzero(v35, v37);
    }

    free(v35);
  }

  return v26;
}

uint64_t bssl::anonymous namespace::ECKeyShare::SerializePrivateKey(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 264);
  if (v3 < 1)
  {
    if (!v3)
    {
LABEL_22:
      v15 = 0;
      goto LABEL_23;
    }

    v4 = *(v2 + 256);
  }

  else
  {
    v4 = *(v2 + 256);
    while (!*(v4 - 8 + 8 * v3))
    {
      v5 = __OFSUB__(v3--, 1);
      if ((v3 < 0) ^ v5 | (v3 == 0))
      {
        goto LABEL_22;
      }
    }
  }

  v6 = v3 - 1;
  v7 = *(v4 + 8 * v6);
  v8 = v7 != 0;
  v9 = HIDWORD(v7) != 0;
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  v10 = v7 >> 16 != 0;
  if (v7 >> 16)
  {
    v7 >>= 16;
  }

  v11 = v7 > 0xFF;
  if (v7 > 0xFF)
  {
    v7 >>= 8;
  }

  v12 = v7 > 0xF;
  if (v7 > 0xF)
  {
    v7 >>= 4;
  }

  v13 = v7 > 3;
  if (v7 > 3)
  {
    v7 >>= 2;
  }

  v14 = v8 | (v6 << 6) | (32 * v9) | (16 * v10) | (8 * v11) | (4 * v12) | (2 * v13);
  if (v7 > 1)
  {
    ++v14;
  }

  v15 = (v14 + 7) >> 3;
LABEL_23:
  v16 = *(a1 + 8);
  v56 = 0;
  result = CBB_add_space(a2, &v56, v15);
  if (!result)
  {
    return result;
  }

  v18 = v56;
  v19 = *v16;
  v20 = 8 * *(v16 + 8);
  v21 = v20 - v15;
  if (v20 <= v15)
  {
    goto LABEL_44;
  }

  if (v21 < 8)
  {
    v22 = 0;
    v23 = v15;
    goto LABEL_38;
  }

  if (v21 >= 0x20)
  {
    v24 = v21 & 0xFFFFFFFFFFFFFFE0;
    v25 = (v19 + v15 + 16);
    v26 = 0uLL;
    v27 = v21 & 0xFFFFFFFFFFFFFFE0;
    v28 = 0uLL;
    do
    {
      v26 = vorrq_s8(v25[-1], v26);
      v28 = vorrq_s8(*v25, v28);
      v25 += 2;
      v27 -= 32;
    }

    while (v27);
    v29 = vorrq_s8(v28, v26);
    *v29.i8 = vorr_s8(*v29.i8, *&vextq_s8(v29, v29, 8uLL));
    v30 = v29.i64[0] | HIDWORD(v29.i64[0]) | ((v29.i64[0] | HIDWORD(v29.i64[0])) >> 16);
    v22 = v30 | BYTE1(v30);
    if (v21 == v24)
    {
      goto LABEL_41;
    }

    if ((v21 & 0x18) == 0)
    {
      v23 = v15 + v24;
LABEL_38:
      v36 = v23 - v20;
      v37 = &v19->i8[v23];
      do
      {
        v38 = *v37++;
        v22 |= v38;
      }

      while (!__CFADD__(v36++, 1));
      goto LABEL_41;
    }
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  v23 = v15 + (v21 & 0xFFFFFFFFFFFFFFF8);
  v31 = v22;
  v32 = &v19->i8[v15 + v24];
  v33 = v24 - (v21 & 0xFFFFFFFFFFFFFFF8);
  do
  {
    v34 = *v32++;
    v31 = vorr_s8(v34, v31);
    v33 += 8;
  }

  while (v33);
  v35 = *&v31 | HIDWORD(*&v31) | ((*&v31 | HIDWORD(*&v31)) >> 16);
  v22 = v35 | BYTE1(v35);
  if (v21 != (v21 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_38;
  }

LABEL_41:
  if (v22)
  {
    return 0;
  }

LABEL_44:
  if (v20 >= v15)
  {
    v40 = v15;
  }

  else
  {
    v40 = 8 * *(v16 + 8);
  }

  if (!v40)
  {
    goto LABEL_54;
  }

  if (v40 < 8 || v56 + v15 - v40 < &v19->i8[v40] && v19 < (v56 + v15))
  {
    v41 = 0;
    goto LABEL_52;
  }

  if (v40 >= 0x20)
  {
    v41 = v40 & 0x7FFFFFE0;
    v46 = v19 + 1;
    v47 = (v56 + v15 - 16);
    v48 = v41;
    do
    {
      v49 = vrev64q_s8(v46[-1]);
      v50 = vrev64q_s8(*v46);
      v47[-1] = vextq_s8(v50, v50, 8uLL);
      *v47 = vextq_s8(v49, v49, 8uLL);
      v46 += 2;
      v47 -= 2;
      v48 -= 32;
    }

    while (v48);
    if (v40 == v41)
    {
      goto LABEL_54;
    }

    if ((v40 & 0x18) == 0)
    {
LABEL_52:
      v42 = v40 - v41;
      v43 = &v18[v15 + ~v41];
      v44 = &v19->i8[v41];
      do
      {
        v45 = *v44++;
        *v43-- = v45;
        --v42;
      }

      while (v42);
      goto LABEL_54;
    }
  }

  else
  {
    v41 = 0;
  }

  v51 = v41;
  v41 = v40 & 0x7FFFFFF8;
  v52 = &v19->i8[v51];
  v53 = &v18[v15 - v51 - 8];
  v54 = v51 - v41;
  do
  {
    v55 = *v52++;
    *v53-- = vrev64_s8(v55);
    v54 += 8;
  }

  while (v54);
  if (v40 != v41)
  {
    goto LABEL_52;
  }

LABEL_54:
  if (v20 < v15)
  {
    bzero(v18, v15 - v40);
  }

  return 1;
}

BOOL bssl::anonymous namespace::ECKeyShare::DeserializePrivateKey(uint64_t a1, uint64_t a2)
{
  v3 = BN_bin2bn(*a2, *(a2 + 8), 0);
  v4 = *(a1 + 8);
  *(a1 + 8) = v3;
  if (v4)
  {
    v5 = *(v4 + 5);
    if ((v5 & 2) == 0)
    {
      v6 = *v4;
      if (*v4)
      {
        v8 = *(v6 - 8);
        v7 = (v6 - 8);
        v9 = v8 + 8;
        if (v8 != -8)
        {
          bzero(v7, v9);
        }

        free(v7);
        v5 = *(v4 + 5);
      }
    }

    if (v5)
    {
      v11 = *(v4 - 1);
      v10 = v4 - 1;
      v12 = v11 + 8;
      if (v11 != -8)
      {
        bzero(v10, v12);
      }

      free(v10);
    }

    else
    {
      *v4 = 0;
    }

    v3 = *(a1 + 8);
  }

  return v3 != 0;
}

void *bssl::Array<unsigned char>::operator=(void *result, void *a2)
{
  v4 = *result;
  v3 = result[1];
  if (v3 && v3 - 1 >= -v4)
  {
    __break(1u);
  }

  else
  {
    if (v4)
    {
      v5 = result;
      v7 = *(v4 - 8);
      v6 = (v4 - 8);
      v8 = v7 + 8;
      if (v7 != -8)
      {
        bzero(v6, v8);
      }

      free(v6);
      result = v5;
    }

    *result = 0;
    result[1] = 0;
    v9 = a2[1];
    *result = *a2;
    result[1] = v9;
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

BOOL bssl::anonymous namespace::X25519KeyShare::Generate(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  X25519_keypair(v8, (a1 + 8));
  v7 = 0;
  v3 = CBB_add_space(a2, &v7, 32);
  if (v3)
  {
    v4 = v7;
    v5 = v8[1];
    *v7 = v8[0];
    v4[1] = v5;
  }

  return v3 != 0;
}

uint64_t bssl::anonymous namespace::X25519KeyShare::Encap(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  *a4 = 80;
  result = (*(*a1 + 24))(a1);
  if (result)
  {
    v12 = *(*a1 + 40);

    return v12(a1, a3, a4, a5, a6);
  }

  return result;
}

void bssl::anonymous namespace::X25519KeyShare::Decap(uint64_t a1, unint64_t *a2, _BYTE *a3, unsigned int *a4, uint64_t a5)
{
  *a3 = 80;
  v10 = malloc_type_malloc(0x28uLL, 0xB4E622C9uLL);
  if (!v10)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return;
  }

  v11 = v10;
  *v10 = 32;
  v12 = (v10 + 8);
  if (a5 != 32 || !X25519((v10 + 8), (a1 + 8), a4))
  {
    *a3 = 47;
    ERR_put_error(16, 0, 108, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_key_share.cc", 172);
    if (v12 < 0xFFFFFFFFFFFFFFE1)
    {
      free(v11);
      return;
    }

    goto LABEL_14;
  }

  v14 = *a2;
  v13 = a2[1];
  if (v13 && v13 - 1 >= -v14)
  {
LABEL_14:
    __break(1u);
    return;
  }

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

  *a2 = v12;
  a2[1] = 32;
}

BOOL bssl::anonymous namespace::X25519KeyShare::SerializePrivateKey(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v3 = CBB_add_space(a2, &v7, 32);
  if (v3)
  {
    v4 = v7;
    v5 = *(a1 + 24);
    *v7 = *(a1 + 8);
    v4[1] = v5;
  }

  return v3 != 0;
}

BOOL bssl::anonymous namespace::X25519KeyShare::DeserializePrivateKey(uint64_t a1, __int128 **a2)
{
  v2 = a2[1];
  if (v2 == 32)
  {
    v3 = *a2;
    *a2 += 2;
    a2[1] = 0;
    v4 = *v3;
    *(a1 + 24) = v3[1];
    *(a1 + 8) = v4;
  }

  return v2 == 32;
}

BOOL bssl::anonymous namespace::X25519Kyber768KeyShare::Generate(uint64_t a1, uint64_t a2)
{
  v11[8] = *MEMORY[0x277D85DE8];
  X25519_keypair(v10, (a1 + 8));
  BCM_rand_bytes_with_additional_data(v11, 0x40uLL, BCM_rand_bytes::kZeroAdditionalData);
  KYBER_generate_key_external_entropy(__src, a1 + 40, v11);
  v11[0] = 0;
  if (!CBB_add_space(a2, v11, 32))
  {
    return 0;
  }

  v4 = v11[0];
  v5 = v10[1];
  *v11[0] = v10[0];
  v4[1] = v5;
  v11[0] = 0;
  v6 = CBB_add_space(a2, v11, 1184);
  v7 = v6 != 0;
  if (v6)
  {
    memcpy(v11[0], __src, 0x4A0uLL);
  }

  return v7;
}

void bssl::anonymous namespace::X25519Kyber768KeyShare::Encap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v3;
  v32 = *MEMORY[0x277D85DE8];
  v15 = malloc_type_malloc(0x48uLL, 0xB4E622C9uLL);
  if (!v15)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return;
  }

  v16 = v15;
  *v15 = 64;
  v17 = (v15 + 1);
  X25519_keypair(v31, (v14 + 8));
  if (v5 != 1216 || !X25519(v17, (v14 + 8), v7) || !vector_decode(v27, (v7 + 32), 12))
  {
    *v9 = 47;
    ERR_put_error(16, 0, 108, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_key_share.cc", 240);
    goto LABEL_15;
  }

  v28[0] = *(v7 + 1184);
  v28[1] = *(v7 + 1200);
  matrix_expand(&v30, v28);
  __src[14] = 0u;
  memset(&__src[1], 0, 200);
  *&__src[0] = 0;
  *(&__src[0] + 1) = 32;
  *(&__src[13] + 1) = 136;
  BORINGSSL_keccak_absorb(__src, (v7 + 32), 0x4A0uLL);
  BORINGSSL_keccak_squeeze(__src, v29, 0x20uLL);
  KYBER_encap(__src, v16 + 40, v27);
  __dst = 0;
  if (!CBB_add_space(v13, &__dst, 32) || (v18 = __dst, v19 = v31[1], *__dst = v31[0], v18[1] = v19, __dst = 0, !CBB_add_space(v13, &__dst, 1088)))
  {
LABEL_15:
    if (v17 < 0xFFFFFFFFFFFFFFC1)
    {
      free(v16);
      return;
    }

    goto LABEL_18;
  }

  memcpy(__dst, __src, 0x440uLL);
  v21 = *v11;
  v20 = v11[1];
  if (v20 && &v20[-1].u64[1] + 7 >= -v21)
  {
LABEL_18:
    __break(1u);
    return;
  }

  if (v21)
  {
    v23 = v21[-1].i64[1];
    v22 = &v21[-1].u64[1];
    v24 = v23 + 8;
    if (v23 != -8)
    {
      bzero(v22, v24);
    }

    free(v22);
  }

  *v11 = v17;
  v11[1] = 64;
}

void bssl::anonymous namespace::X25519Kyber768KeyShare::Decap(uint64_t a1, unint64_t *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  *a3 = 80;
  v10 = malloc_type_malloc(0x48uLL, 0xB4E622C9uLL);
  if (!v10)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return;
  }

  v11 = v10;
  *v10 = 64;
  v12 = (v10 + 8);
  if (a5 != 1120 || !X25519((v10 + 8), (a1 + 8), a4))
  {
    *a3 = 47;
    ERR_put_error(16, 0, 108, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_key_share.cc", 270);
    if (v12 < 0xFFFFFFFFFFFFFFC1)
    {
      free(v11);
      return;
    }

    goto LABEL_14;
  }

  KYBER_decap(v11 + 40, (a4 + 32), a1 + 40);
  v14 = *a2;
  v13 = a2[1];
  if (v13 && v13 - 1 >= -v14)
  {
LABEL_14:
    __break(1u);
    return;
  }

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

  *a2 = v12;
  a2[1] = 64;
}

double bssl::anonymous namespace::X25519MLKEM768KeyShare::Generate(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  BCM_rand_bytes_with_additional_data(&v8, 0x40uLL, BCM_rand_bytes::kZeroAdditionalData);
  X25519_keypair(&v8, (a1 + 8));
  __dst = 0;
  if (CBB_add_space(a2, &__dst, 1184))
  {
    memcpy(__dst, __src, 0x4A0uLL);
    __dst = 0;
    if (CBB_add_space(a2, &__dst, 32))
    {
      v5 = __dst;
      *__dst = v8;
      result = v9[0];
      v5[1] = *v9;
    }
  }

  return result;
}

void bssl::anonymous namespace::X25519MLKEM768KeyShare::Encap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v3;
  v51 = *MEMORY[0x277D85DE8];
  v15 = malloc_type_malloc(0x48uLL, 0xB4E622C9uLL);
  if (!v15)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return;
  }

  v16 = v15;
  *v15 = 64;
  v17 = v15 + 1;
  X25519_keypair(v43, (v14 + 8));
  {
    *v9 = 47;
    ERR_put_error(16, 0, 108, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_key_share.cc", 330);
    goto LABEL_16;
  }

  BCM_rand_bytes_with_additional_data(v48, 0x20uLL, BCM_rand_bytes::kZeroAdditionalData);
  v50[0] = v48[0];
  v50[1] = v48[1];
  v50[2] = v46[0];
  v50[3] = v46[1];
  v39 = 0;
  v41 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  __dst[0] = 1;
  __dst[1] = 64;
  v40 = 72;
  BORINGSSL_keccak_absorb(__dst, v50, 0x40uLL);
  BORINGSSL_keccak_squeeze(__dst, v49, 0x40uLL);
  v18 = v49[1];
  *v17 = v49[0];
  v17[1] = v18;
  __dst[0] = 0;
  if (!CBB_add_space(v13, __dst, 1088) || (memcpy(__dst[0], __src, 0x440uLL), __dst[0] = 0, !CBB_add_space(v13, __dst, 32)))
  {
LABEL_16:
    if (v17 < 0xFFFFFFFFFFFFFFC1)
    {
      free(v16);
      return;
    }

    goto LABEL_19;
  }

  v19 = __dst[0];
  v20 = v43[1];
  *__dst[0] = v43[0];
  v19[1] = v20;
  v22 = *v11;
  v21 = v11[1];
  if (v21 && v21 - 1 >= -v22)
  {
LABEL_19:
    __break(1u);
    return;
  }

  if (v22)
  {
    v24 = *(v22 - 8);
    v23 = (v22 - 8);
    v25 = v24 + 8;
    if (v24 != -8)
    {
      bzero(v23, v25);
    }

    free(v23);
  }

  *v11 = v17;
  v11[1] = 64;
}

void bssl::anonymous namespace::X25519MLKEM768KeyShare::Decap(uint64_t a1, unint64_t *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  *a3 = 80;
  v10 = malloc_type_malloc(0x48uLL, 0xB4E622C9uLL);
  if (!v10)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return;
  }

  v11 = v10;
  *v10 = 64;
  v12 = (v10 + 8);
  {
    *a3 = 47;
    ERR_put_error(16, 0, 108, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_key_share.cc", 365);
    if (v12 < 0xFFFFFFFFFFFFFFC1)
    {
      free(v11);
      return;
    }

    goto LABEL_14;
  }

  v14 = *a2;
  v13 = a2[1];
  if (v13 && v13 - 1 >= -v14)
  {
LABEL_14:
    __break(1u);
    return;
  }

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

  *a2 = v12;
  a2[1] = 64;
}

uint64_t bssl::CBBFinishArray(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8))
  {
    ERR_put_error(14, 0, 66, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bytestring/cbb.cc", 126);
LABEL_3:
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_lib.cc", 76);
    return 0;
  }

  result = CBB_flush(a1);
  if (!result)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  *(a1 + 16) = 0;
  v8 = *a2;
  v7 = a2[1];
  if (v7 && v7 - 1 >= -v8)
  {
    __break(1u);
  }

  else
  {
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

    *a2 = v5;
    a2[1] = v6;
    return 1;
  }

  return result;
}

void bssl::ssl_set_read_error(bssl *this, ssl_st *a2)
{
  *(this + 43) = 2;
  v3 = ERR_save_state();
  v4 = *(this + 23);
  *(this + 23) = v3;
  if (v4)
  {
    if (*(v4 + 8))
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = *v4 + v5;
        free(*(v7 + 8));
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        ++v6;
        v5 += 24;
      }

      while (v6 < *(v4 + 8));
    }

    free(*v4);

    free(v4);
  }
}

uint64_t bssl::ssl_open_handshake(void *a1, void *a2, _BYTE *a3)
{
  *a2 = 0;
  v3 = a1[6];
  if (*(v3 + 172) == 2)
  {
    ERR_restore_state(*(v3 + 184));
    *a3 = 0;
  }

  else
  {
    result = (*(*a1 + 48))(a1);
    if (result != 4)
    {
      return result;
    }

    v7 = a1[6];
    *(v7 + 172) = 2;
    v8 = ERR_save_state();
    v9 = *(v7 + 184);
    *(v7 + 184) = v8;
    if (v9)
    {
      if (*(v9 + 8))
      {
        v10 = 0;
        v11 = 0;
        do
        {
          v12 = *v9 + v10;
          free(*(v12 + 8));
          *v12 = 0;
          *(v12 + 8) = 0;
          *(v12 + 16) = 0;
          ++v11;
          v10 += 24;
        }

        while (v11 < *(v9 + 8));
      }

      free(*v9);
      free(v9);
    }
  }

  return 4;
}

uint64_t bssl::ssl_open_change_cipher_spec(void *a1, void *a2, _BYTE *a3)
{
  *a2 = 0;
  v3 = a1[6];
  if (*(v3 + 172) == 2)
  {
    ERR_restore_state(*(v3 + 184));
    *a3 = 0;
  }

  else
  {
    result = (*(*a1 + 56))(a1);
    if (result != 4)
    {
      return result;
    }

    v7 = a1[6];
    *(v7 + 172) = 2;
    v8 = ERR_save_state();
    v9 = *(v7 + 184);
    *(v7 + 184) = v8;
    if (v9)
    {
      if (*(v9 + 8))
      {
        v10 = 0;
        v11 = 0;
        do
        {
          v12 = *v9 + v10;
          free(*(v12 + 8));
          *v12 = 0;
          *(v12 + 8) = 0;
          *(v12 + 16) = 0;
          ++v11;
          v10 += 24;
        }

        while (v11 < *(v9 + 8));
      }

      free(*v9);
      free(v9);
    }
  }

  return 4;
}

uint64_t bssl::ssl_log_secret(uint64_t result, char *__s, unsigned __int8 *a3, uint64_t a4)
{
  if (!*(*(result + 104) + 720))
  {
    return 1;
  }

  v39 = 0;
  v40 = 0;
  if (__s)
  {
    v5 = result;
    v8 = strlen(__s);
    v9 = 2 * a4 + v8;
    v10 = v9 + 67;
    v41 = 0u;
    *v42 = 0u;
    v43 = 0u;
    if (v9 + 67 < 0xFFFFFFFFFFFFFFF8)
    {
      v12 = v8;
      v13 = malloc_type_malloc(v9 + 75, 0xB4E622C9uLL);
      if (v13)
      {
        *v13 = v10;
        result = (v13 + 1);
        v14 = BYTE8(v43) & 0xFC | 1;
      }

      else
      {
        ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
        result = 0;
        if (v10)
        {
          goto LABEL_35;
        }

        v14 = 1;
      }

      BYTE8(v41) = 0;
      *&v41 = 0;
      v42[0] = result;
      v42[1] = 0;
      *&v43 = v10;
      BYTE8(v43) = v14;
      __dst = 0;
      if (CBB_add_space(&v41, &__dst, v12))
      {
        if (v12)
        {
          memcpy(__dst, __s, v12);
        }

        __dst = 0;
        if (CBB_add_space(&v41, &__dst, 1))
        {
          *__dst = 32;
          v15 = *(v5 + 48);
          __dst = 0;
          if (CBB_add_space(&v41, &__dst, 64))
          {
            for (i = 0; i != 32; ++i)
            {
              v17 = *(v15 + 48 + i);
              if (v17 >= 0xA0)
              {
                v18 = 0;
              }

              else
              {
                v18 = -1;
              }

              v19 = ((*(v15 + 48 + i) >> 4) | 0x30) & v18 | ((*(v15 + 48 + i) >> 4) + 87) & ~v18;
              v20 = __dst;
              __dst = __dst + 1;
              *v20 = v19;
              if ((v17 & 0xF) >= 0xA)
              {
                v21 = 0;
              }

              else
              {
                v21 = -1;
              }

              v22 = __dst;
              __dst = __dst + 1;
              *v22 = v21 & (v17 & 0xF | 0x30) | ((v17 & 0xF) + 87) & ~v21;
            }

            __dst = 0;
            if (CBB_add_space(&v41, &__dst, 1))
            {
              *__dst = 32;
              __dst = 0;
              if (CBB_add_space(&v41, &__dst, 2 * a4))
              {
                for (; a4; --a4)
                {
                  v24 = *a3++;
                  v23 = v24;
                  v25 = v24 >> 4;
                  if (v24 >= 0xA0)
                  {
                    v26 = 0;
                  }

                  else
                  {
                    v26 = -1;
                  }

                  v27 = (v25 | 0x30) & v26 | (v25 + 87) & ~v26;
                  v28 = __dst;
                  __dst = __dst + 1;
                  *v28 = v27;
                  if ((v23 & 0xFu) >= 0xA)
                  {
                    v29 = 0;
                  }

                  else
                  {
                    v29 = -1;
                  }

                  v30 = __dst;
                  __dst = __dst + 1;
                  *v30 = v29 & (v23 & 0xF | 0x30) | ((v23 & 0xF) + 87) & ~v29;
                }

                __dst = 0;
                if (CBB_add_space(&v41, &__dst, 1))
                {
                  *__dst = 0;
                  v31 = bssl::CBBFinishArray(&v41, &v39);
                  result = v39;
                  if (v31)
                  {
                    v32 = v39;
                    (*(*(v5 + 104) + 720))(v5, v39);
                    result = v32;
                    v11 = 1;
LABEL_36:
                    if (!v40 || v40 - 1 < -result)
                    {
                      if (result)
                      {
                        v34 = *(result - 8);
                        v33 = (result - 8);
                        v35 = v34 + 8;
                        if (v34 != -8)
                        {
                          v36 = v33;
                          bzero(v33, v35);
                          v33 = v36;
                        }

                        free(v33);
                      }

                      if (!BYTE8(v41) && (BYTE8(v43) & 1) != 0 && v42[0])
                      {
                        v38 = v42[0] - 8;
                        v37 = *(v42[0] - 1);
                        if (v37 != -8)
                        {
                          bzero(v42[0] - 8, v37 + 8);
                        }

                        free(v38);
                      }

                      return v11;
                    }

                    goto LABEL_51;
                  }

LABEL_35:
                  v11 = 0;
                  goto LABEL_36;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    }

    result = 0;
    goto LABEL_35;
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t bssl::ssl_do_msg_callback(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 64);
  if (v5)
  {
    if (a3)
    {
      if (a3 == 256)
      {
        return (v5)(a2, 0, a3, a4, a5, result, *(result + 72));
      }

      else
      {
        v6 = *(result + 48);
        v7 = *(v6 + 280);
        if (v7 && (*(v7 + 1617) & 4) != 0 && (*(result + 164) & 1) == 0)
        {
          return v5(a2, *(*(v7 + 1560) + 4));
        }

        else
        {
          v8 = *(v6 + 208);
          if (!v8)
          {
            if (**result)
            {
              LOWORD(v8) = -259;
            }

            else
            {
              LOWORD(v8) = 771;
            }
          }

          return v5(a2, v8);
        }
      }
    }

    else
    {
      return (v5)(a2, 2, a3, a4, a5, result, *(result + 72));
    }
  }

  return result;
}

__darwin_time_t bssl::ssl_ctx_get_current_time(bssl *this, const ssl_ctx_st *a2)
{
  v2 = *(this + 91);
  if (v2)
  {
    v2(0, &v4);
  }

  else
  {
    gettimeofday(&v4, 0);
  }

  return v4.tv_sec & ~(v4.tv_sec >> 63);
}

void ssl_ctx_st::~ssl_ctx_st(ssl_ctx_st *this)
{
  SSL_CTX_flush_sessions(this, 0);
  CRYPTO_free_ex_data(&bssl::g_ex_data_class_ssl_ctx, this, &this->default_verify_callback);
  pthread_rwlock_destroy(&this->cert_store);
  comp_methods = this->comp_methods;
  if (comp_methods)
  {
    v3 = *&comp_methods->sorted;
    if (v3)
    {
      for (i = 0; i < v3; ++i)
      {
        v5 = comp_methods->data[i];
        if (v5)
        {
          do
          {
            v7 = v5 - 8;
            v6 = *(v5 - 1);
            v5 = *(v5 + 1);
            if (v6 != -8)
            {
              bzero(v7, v6 + 8);
            }

            free(v7);
          }

          while (v5);
          v3 = *&comp_methods->sorted;
        }
      }
    }

    data = comp_methods->data;
    if (data)
    {
      v10 = *(data - 1);
      v9 = data - 1;
      v11 = v10 + 8;
      if (v10 != -8)
      {
        bzero(v9, v11);
      }

      free(v9);
    }

    comp = comp_methods[-1].comp;
    p_comp = &comp_methods[-1].comp;
    v14 = comp + 8;
    if (comp != -8)
    {
      bzero(p_comp, v14);
    }

    free(p_comp);
  }

  (*&this->cipher_list_by_id[4].num)(this);
  client_CA = this[1].client_CA;
  options = this[1].options;
  if (options)
  {
    v17 = &client_CA[-1].comp + 6;
    do
    {
      v17 += 2;
      if (!v17)
      {
        goto LABEL_139;
      }
    }

    while (--options);
  }

  if (client_CA)
  {
    v19 = client_CA[-1].comp;
    v18 = &client_CA[-1].comp;
    v20 = v19 + 8;
    if (v19 != -8)
    {
      bzero(v18, v20);
    }

    free(v18);
  }

  this[1].client_CA = 0;
  this[1].options = 0;
  sk = this[1].ex_data.sk;
  this[1].ex_data.sk = 0;
  if (sk)
  {
    SSL_ECH_KEYS_free(sk);
  }

  app_verify_cookie_cb = this[1].app_verify_cookie_cb;
  this[1].app_verify_cookie_cb = 0;
  if (!app_verify_cookie_cb)
  {
    goto LABEL_35;
  }

  v23 = atomic_load(app_verify_cookie_cb);
  if (v23 == -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    if (!v23)
    {
      goto LABEL_140;
    }

    v24 = v23;
    atomic_compare_exchange_strong(app_verify_cookie_cb, &v24, v23 - 1);
    if (v24 == v23)
    {
      break;
    }

    v23 = v24;
    if (v24 == -1)
    {
      goto LABEL_35;
    }
  }

  if (v23 == 1)
  {
    v109 = *(app_verify_cookie_cb + 2);
    if (v109)
    {
      v110 = *(v109 + 160);
      if (v110)
      {
        v110(app_verify_cookie_cb);
        *(app_verify_cookie_cb + 1) = 0;
        *(app_verify_cookie_cb + 1) = 0;
      }
    }

    v112 = *(app_verify_cookie_cb - 1);
    v111 = app_verify_cookie_cb - 8;
    v113 = v112 + 8;
    if (v112 != -8)
    {
      bzero(v111, v113);
    }

    free(v111);
    client_cert_cb = this[1].client_cert_cb;
    app_gen_cookie_cb = this[1].app_gen_cookie_cb;
    if (app_gen_cookie_cb)
    {
LABEL_36:
      v27 = client_cert_cb - 2;
      do
      {
        v27 += 2;
        if (!v27)
        {
          goto LABEL_139;
        }

        app_gen_cookie_cb = (app_gen_cookie_cb - 1);
      }

      while (app_gen_cookie_cb);
    }
  }

  else
  {
LABEL_35:
    client_cert_cb = this[1].client_cert_cb;
    app_gen_cookie_cb = this[1].app_gen_cookie_cb;
    if (app_gen_cookie_cb)
    {
      goto LABEL_36;
    }
  }

  if (client_cert_cb)
  {
    v29 = *(client_cert_cb - 1);
    v28 = client_cert_cb - 8;
    v30 = v29 + 8;
    if (v29 != -8)
    {
      bzero(v28, v30);
    }

    free(v28);
  }

  this[1].client_cert_cb = 0;
  this[1].app_gen_cookie_cb = 0;
  app_verify_arg = this[1].app_verify_arg;
  default_passwd_callback = this[1].default_passwd_callback;
  if (default_passwd_callback)
  {
    v33 = (app_verify_arg - 3);
    do
    {
      v33 += 24;
      if (!v33)
      {
        goto LABEL_139;
      }

      default_passwd_callback = (default_passwd_callback - 1);
    }

    while (default_passwd_callback);
  }

  if (app_verify_arg)
  {
    v35 = *(app_verify_arg - 1);
    v34 = (app_verify_arg - 1);
    v36 = v35 + 8;
    if (v35 != -8)
    {
      bzero(v34, v36);
    }

    free(v34);
  }

  this[1].app_verify_arg = 0;
  this[1].default_passwd_callback = 0;
  this[1].default_passwd_callback_userdata = 0;
  app_verify_callback = this[1].app_verify_callback;
  this[1].app_verify_callback = 0;
  if (app_verify_callback)
  {
    v38 = *(app_verify_callback + 1);
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

    v43 = *(app_verify_callback - 1);
    v42 = app_verify_callback - 8;
    v44 = v43 + 8;
    if (v43 != -8)
    {
      bzero(v42, v44);
    }

    free(v42);
  }

  v45 = *&this[1].stats.sess_cache_full;
  v46 = *&this[1].stats.sess_cb_hit;
  if (v46 && v46 - 1 >= -v45)
  {
LABEL_139:
    __break(1u);
LABEL_140:
    abort();
  }

  if (v45)
  {
    v48 = *(v45 - 8);
    v47 = (v45 - 8);
    v49 = v48 + 8;
    if (v48 != -8)
    {
      bzero(v47, v49);
    }

    free(v47);
  }

  *&this[1].stats.sess_cache_full = 0;
  *&this[1].stats.sess_cb_hit = 0;
  v50 = *&this[1].session_cache_mode;
  *&this[1].session_cache_mode = 0;
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

  session_cache_head = this[1].session_cache_head;
  this[1].session_cache_head = 0;
  if (session_cache_head)
  {
    tlsext_tick_lifetime_hint = session_cache_head[-1].tlsext_tick_lifetime_hint;
    p_tlsext_tick_lifetime_hint = &session_cache_head[-1].tlsext_tick_lifetime_hint;
    v57 = tlsext_tick_lifetime_hint + 8;
    if (tlsext_tick_lifetime_hint != -8)
    {
      bzero(p_tlsext_tick_lifetime_hint, v57);
    }

    free(p_tlsext_tick_lifetime_hint);
  }

  session_cache_size = this[1].session_cache_size;
  this[1].session_cache_size = 0;
  if (session_cache_size)
  {
    v60 = *(session_cache_size - 8);
    v59 = (session_cache_size - 8);
    v61 = v60 + 8;
    if (v60 != -8)
    {
      bzero(v59, v61);
    }

    free(v59);
  }

  v62 = *&this->tlsext_tick_hmac_key[8];
  *&this->tlsext_tick_hmac_key[8] = 0;
  if (v62)
  {
    bssl::CERT::~CERT(v62);
    v64 = *(v62 - 1);
    v63 = v62 - 8;
    v65 = v64 + 8;
    if (v64 != -8)
    {
      bzero(v63, v65);
    }

    free(v63);
  }

  if (this->tlsext_tick_key_name[0] == 1)
  {
    tlsext_servername_callback = this->tlsext_servername_callback;
    tlsext_servername_arg = this->tlsext_servername_arg;
    if (tlsext_servername_arg && (tlsext_servername_arg - 1) >= -tlsext_servername_callback)
    {
      goto LABEL_139;
    }

    if (tlsext_servername_callback)
    {
      v69 = *(tlsext_servername_callback - 1);
      v68 = tlsext_servername_callback - 8;
      v70 = v69 + 8;
      if (v69 != -8)
      {
        bzero(v68, v70);
      }

      free(v68);
    }

    this->tlsext_servername_callback = 0;
    this->tlsext_servername_arg = 0;
  }

  client_cert_engine = this->client_cert_engine;
  this->client_cert_engine = 0;
  if (client_cert_engine)
  {
    v72 = *client_cert_engine;
    if (*client_cert_engine)
    {
      v73 = 0;
      do
      {
        v74 = *(*(client_cert_engine + 1) + 8 * v73);
        if (v74)
        {
          CRYPTO_BUFFER_free(v74);
          v72 = *client_cert_engine;
        }

        ++v73;
      }

      while (v73 < v72);
    }

    v75 = *(client_cert_engine + 1);
    if (v75)
    {
      v77 = *(v75 - 8);
      v76 = (v75 - 8);
      v78 = v77 + 8;
      if (v77 != -8)
      {
        bzero(v76, v78);
      }

      free(v76);
    }

    v80 = *(client_cert_engine - 1);
    v79 = client_cert_engine - 8;
    v81 = v80 + 8;
    if (v80 != -8)
    {
      bzero(v79, v81);
    }

    free(v79);
  }

  param = this->param;
  this->param = 0;
  if (param)
  {
    name = param->name;
    if (param->name)
    {
      v84 = 0;
      do
      {
        v85 = *(param->check_time + 8 * v84);
        if (v85)
        {
          CRYPTO_BUFFER_free(v85);
          name = param->name;
        }

        ++v84;
      }

      while (v84 < name);
    }

    check_time = param->check_time;
    if (check_time)
    {
      v88 = *(check_time - 8);
      v87 = (check_time - 8);
      v89 = v88 + 8;
      if (v88 != -8)
      {
        bzero(v87, v89);
      }

      free(v87);
    }

    policies = param[-1].policies;
    p_policies = &param[-1].policies;
    p_data = &policies->data;
    if (policies != -8)
    {
      bzero(p_policies, p_data);
    }

    free(p_policies);
  }

  sha1 = this->sha1;
  this->sha1 = 0;
  if (sha1)
  {
    v94 = *&sha1->md_size;
    if (v94)
    {
      v96 = *(v94 - 8);
      v95 = (v94 - 8);
      v97 = v96 + 8;
      if (v96 != -8)
      {
        bzero(v95, v97);
      }

      free(v95);
    }

    v98 = *&sha1->type;
    *&sha1->type = 0;
    if (v98)
    {
      v99 = *(v98 + 8);
      if (v99)
      {
        v101 = *(v99 - 8);
        v100 = (v99 - 8);
        v102 = v101 + 8;
        if (v101 != -8)
        {
          bzero(v100, v102);
        }

        free(v100);
      }

      v104 = *(v98 - 8);
      v103 = (v98 - 8);
      v105 = v104 + 8;
      if (v104 != -8)
      {
        bzero(v103, v105);
      }

      free(v103);
    }

    v107 = *&sha1[-1].ctx_size;
    p_ctx_size = &sha1[-1].ctx_size;
    v108 = v107 + 8;
    if (v107 != -8)
    {
      bzero(p_ctx_size, v108);
    }

    free(p_ctx_size);
  }
}

SSL_CTX *__cdecl SSL_CTX_new(SSL_METHOD *meth)
{
  if (!meth)
  {
    ERR_put_error(16, 0, 186, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_lib.cc", 423);
    return 0;
  }

  v2 = malloc_type_malloc(0x328uLL, 0xB4E622C9uLL);
  if (!v2)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  v3 = v2;
  *v2 = 800;
  *(v2 + 2) = 1;
  v4 = (v2 + 8);
  *(v2 + 1) = *&meth->ssl_new;
  *(v2 + 58) = 0;
  v2[236] = 2;
  *(v2 + 15) = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 34) = 20480;
  *(v2 + 280) = 0u;
  *(v2 + 37) = 0x200000000;
  *(v2 + 38) = 0x2A30000001C20;
  v2[440] = 0;
  *(v2 + 47) = 0;
  *(v2 + 344) = 0u;
  *(v2 + 360) = 0u;
  *(v2 + 312) = 0u;
  *(v2 + 328) = 0u;
  v2[424] = 0;
  *(v2 + 392) = 0u;
  *(v2 + 408) = 0u;
  *(v2 + 56) = 0x800000000;
  *(v2 + 114) = 102400;
  *(v2 + 60) = 0;
  *(v2 + 122) = 0;
  *(v2 + 29) = 0u;
  *(v2 + 31) = 0u;
  *(v2 + 32) = 0u;
  v2[528] = 0;
  *(v2 + 265) = 0x4000;
  *(v2 + 49) = 0u;
  *(v2 + 536) = 0u;
  *(v2 + 552) = 0u;
  *(v2 + 568) = 0u;
  *(v2 + 584) = 0u;
  *(v2 + 600) = 0u;
  *(v2 + 616) = 0u;
  *(v2 + 632) = 0u;
  *(v2 + 648) = 0u;
  *(v2 + 664) = 0u;
  *(v2 + 680) = 0u;
  *(v2 + 696) = 0u;
  *(v2 + 712) = 0u;
  *(v2 + 728) = 0u;
  *(v2 + 744) = 0u;
  *(v2 + 760) = 0u;
  *(v2 + 194) = 0;
  *(v2 + 400) &= 0xC000u;
  if (pthread_rwlock_init((v2 + 32), 0))
  {
LABEL_67:
    abort();
  }

  *(v3 + 48) = 0;
  v5 = malloc_type_malloc(0x88uLL, 0xB4E622C9uLL);
  if (v5)
  {
    v6 = v5;
    *v5 = 128;
    ssl_clear = meth->ssl_clear;
    v5[1] = 0;
    v8 = v5 + 1;
    v5[2] = 0;
    v5[3] = 0;
    v9 = malloc_type_malloc(0xE8uLL, 0xB4E622C9uLL);
    if (v9)
    {
      *(v9 + 2) = 1;
      v10 = v9 + 8;
      *v9 = 224;
      *(v9 + 5) = 0u;
      *(v9 + 6) = 0u;
      *(v9 + 7) = 0u;
      *(v9 + 8) = 0u;
      *(v9 + 9) = 0u;
      *(v9 + 10) = 0u;
      *(v9 + 11) = 0u;
      *(v9 + 48) = 0;
      *(v9 + 26) = 0;
      *(v9 + 27) = 0;
      *(v9 + 25) = 0;
      v9[224] = 0;
      *(v9 + 12) = 0u;
      *(v9 + 28) = 0u;
      *(v9 + 44) = 0u;
      *(v9 + 58) = 0u;
    }

    else
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      v10 = 0;
    }

    v6[4] = v10;
    v6[5] = ssl_clear;
    *(v6 + 128) = 0;
    *(v6 + 3) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 5) = 0u;
    v11 = *(v3 + 58);
    *(v3 + 58) = v8;
    if (!v11)
    {
      goto LABEL_16;
    }
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v11 = *(v3 + 58);
    *(v3 + 58) = 0;
    if (!v11)
    {
      goto LABEL_16;
    }
  }

  bssl::CERT::~CERT(v11);
  v13 = *(v11 - 1);
  v12 = v11 - 8;
  v14 = v13 + 8;
  if (v13 != -8)
  {
    bzero(v12, v14);
  }

  free(v12);
LABEL_16:
  v15 = malloc_type_malloc(0x38uLL, 0xB4E622C9uLL);
  if (v15)
  {
    v16 = v15;
    *v15 = 48;
    *(v15 + 8) = 0u;
    v17 = v15 + 8;
    *(v15 + 24) = 0u;
    *(v15 + 40) = 0u;
    *(v15 + 3) = 16;
    v18 = malloc_type_malloc(0x88uLL, 0xB4E622C9uLL);
    if (v18)
    {
      *v18 = 128;
      *(v18 + 24) = 0u;
      *(v18 + 40) = 0u;
      *(v18 + 56) = 0u;
      *(v18 + 72) = 0u;
      *(v18 + 88) = 0u;
      *(v18 + 104) = 0u;
      *(v18 + 120) = 0u;
      *(v18 + 8) = 0u;
      v16[2] = v18 + 8;
      v16[5] = ssl_session_cmp;
      v16[6] = ssl_session_hash;
      *(v3 + 33) = v17;
      v19 = OPENSSL_sk_new_null();
      v20 = *(v3 + 50);
      *(v3 + 50) = v19;
      if (!v20)
      {
        goto LABEL_35;
      }
    }

    else
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      free(v16);
      *(v3 + 33) = 0;
      v22 = OPENSSL_sk_new_null();
      v20 = *(v3 + 50);
      *(v3 + 50) = v22;
      if (!v20)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    *(v3 + 33) = 0;
    v21 = OPENSSL_sk_new_null();
    v20 = *(v3 + 50);
    *(v3 + 50) = v21;
    if (!v20)
    {
      goto LABEL_35;
    }
  }

  v23 = *v20;
  if (*v20)
  {
    v24 = 0;
    do
    {
      v25 = *(v20[1] + 8 * v24);
      if (v25)
      {
        CRYPTO_BUFFER_free(v25);
        v23 = *v20;
      }

      ++v24;
    }

    while (v24 < v23);
  }

  v26 = v20[1];
  if (v26)
  {
    v28 = *(v26 - 8);
    v27 = (v26 - 8);
    v29 = v28 + 8;
    if (v28 != -8)
    {
      bzero(v27, v29);
    }

    free(v27);
  }

  v31 = *(v20 - 1);
  v30 = v20 - 1;
  v32 = v31 + 8;
  if (v31 != -8)
  {
    bzero(v30, v32);
  }

  free(v30);
LABEL_35:
  v33 = OPENSSL_sk_new_null();
  v34 = *(v3 + 52);
  *(v3 + 52) = v33;
  if (v34)
  {
    v35 = *v34;
    if (*v34)
    {
      v36 = 0;
      do
      {
        v37 = *(v34[1] + 8 * v36);
        if (v37)
        {
          CRYPTO_BUFFER_free(v37);
          v35 = *v34;
        }

        ++v36;
      }

      while (v36 < v35);
    }

    v38 = v34[1];
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

    v43 = *(v34 - 1);
    v42 = v34 - 1;
    v44 = v43 + 8;
    if (v43 != -8)
    {
      bzero(v42, v44);
    }

    free(v42);
  }

  v45 = *(v3 + 58);
  if (!v45 || !*(v45 + 24) || !*(v3 + 33) || !*(v3 + 50) || !*(v3 + 52) || !(*(*(v3 + 3) + 120))(v4))
  {
LABEL_58:
    v46 = atomic_load(v4);
    if (v46 != -1)
    {
      while (1)
      {
        if (!v46)
        {
          goto LABEL_67;
        }

        v47 = v46;
        atomic_compare_exchange_strong(v4, &v47, v46 - 1);
        if (v47 == v46)
        {
          break;
        }

        v46 = v47;
        if (v47 == -1)
        {
          return 0;
        }
      }

      if (v46 == 1)
      {
        ssl_ctx_st::~ssl_ctx_st(v4);
        free(v3);
      }
    }

    return 0;
  }

  if (!bssl::ssl_create_cipher_list(v3 + 31, (~v3[400] & 0x1800) == 0, "ALL", 1) || !SSL_CTX_set_max_proto_version(v4, LOWORD(meth->version)) || !SSL_CTX_set_min_proto_version(v4, LOWORD(meth->version)))
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_lib.cc", 450);
    goto LABEL_58;
  }

  return v4;
}

uint64_t ssl_session_hash(const ssl_session_st *a1)
{
  p_dst = &a1->master_key[39];
  v2 = a1->session_id[19];
  if (v2 <= 3)
  {
    __dst = 0;
    if (v2)
    {
      memcpy(&__dst, p_dst, v2);
    }

    p_dst = &__dst;
  }

  return *p_dst;
}