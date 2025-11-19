int OBJ_obj2txt(char *buf, int buf_len, const ASN1_OBJECT *a, int no_name)
{
  v5 = buf;
  if (!a || !a->length)
  {
    if (buf_len < 1)
    {
      return 0;
    }

    LODWORD(v12) = 0;
    *buf = 0;
    return v12;
  }

  if (no_name)
  {
    goto LABEL_25;
  }

  v6 = a;
  v7 = OBJ_obj2nid(a);
  a = v6;
  if (!v7)
  {
    goto LABEL_25;
  }

  if (v7 > 0x3C5)
  {
    if (pthread_rwlock_rdlock(&global_added_lock) || pthread_rwlock_unlock(&global_added_lock) || (ERR_put_error(8, 0, 100, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/obj/obj.cc", 323), pthread_rwlock_rdlock(&global_added_lock)) || pthread_rwlock_unlock(&global_added_lock))
    {
      abort();
    }

    goto LABEL_24;
  }

  v8 = &kObjects[5 * v7 - 5];
  if (!*(v8 + 4))
  {
    ERR_put_error(8, 0, 100, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/obj/obj.cc", 323);
LABEL_24:
    ERR_put_error(8, 0, 100, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/obj/obj.cc", 323);
    a = v6;
    goto LABEL_25;
  }

  v9 = v8[1];
  if (v9 || (v9 = *v8) != 0)
  {
    if (buf_len < 2)
    {
      v11 = 0;
      if (buf_len != 1)
      {
LABEL_47:
        v12 = strlen(v9) + v11;
        if (v12 >> 31)
        {
          ERR_put_error(8, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/obj/obj.cc", 384);
          return -1;
        }

        return v12;
      }
    }

    else
    {
      v10 = 0;
      v11 = buf_len - 1;
      while (v9[v10])
      {
        v5[v10] = v9[v10];
        if (v11 == ++v10)
        {
          v9 += v10;
          v5 += v10;
          goto LABEL_46;
        }
      }

      v9 += v10;
      v5 += v10;
      v11 = v10;
    }

LABEL_46:
    *v5 = 0;
    goto LABEL_47;
  }

LABEL_25:
  length = a->length;
  v24[0] = a->data;
  v24[1] = length;
  v15 = CBS_asn1_oid_to_text(v24);
  if (!v15)
  {
    if (buf_len >= 1)
    {
      *v5 = 0;
    }

    return -1;
  }

  v16 = v15;
  if (buf_len < 2)
  {
    v18 = 0;
    if (buf_len != 1)
    {
      v19 = strlen(v15);
      if (!(v19 >> 31))
      {
        goto LABEL_40;
      }

LABEL_36:
      ERR_put_error(8, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/obj/obj.cc", 384);
      LODWORD(v19) = -1;
      v21 = *(v16 - 1);
      v20 = (v16 - 8);
      v22 = v21 + 8;
      if (v21 == -8)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v17 = 0;
    v18 = buf_len - 1;
    while (v15[v17])
    {
      v5[v17] = v15[v17];
      if (v18 == ++v17)
      {
        v15 += v17;
        v5 += v17;
        goto LABEL_39;
      }
    }

    v15 += v17;
    v5 += v17;
    v18 = v17;
  }

LABEL_39:
  *v5 = 0;
  v19 = strlen(v15) + v18;
  if (v19 >> 31)
  {
    goto LABEL_36;
  }

LABEL_40:
  v23 = *(v16 - 1);
  v20 = (v16 - 8);
  v22 = v23 + 8;
  if (v23 != -8)
  {
LABEL_41:
    bzero(v20, v22);
  }

LABEL_42:
  free(v20);
  return v19;
}

uint64_t PKCS5_pbe2_encrypt_init(uint64_t *a1, evp_cipher_ctx_st *a2, const evp_cipher_st *a3, unsigned int a4, char *a5, unint64_t a6, const void *a7, size_t a8)
{
  v39 = *MEMORY[0x277D85DE8];
  nid = a3->nid;
  if (!a3->nid)
  {
    ERR_put_error(19, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pkcs8/p5_pbev2.cc", 135);
    return 0;
  }

  BCM_rand_bytes_with_additional_data(iv, a3->iv_len, BCM_rand_bytes::kZeroAdditionalData);
  result = CBB_add_asn1(a1, &v34, 536870928);
  if (!result)
  {
    return result;
  }

  v18 = &v34;
  if (!CBB_add_asn1(&v34, v37, 6) || (v33[0] = 0, !CBB_add_space(v37, v33, 9)) || (v19 = v33[0], *(v33[0] + 8) = 13, *v19 = 0x5010DF78648862ALL, !CBB_flush(&v34)))
  {
    result = 0;
    v22 = v35;
    v23 = v36;
LABEL_31:
    v24 = (v23 + 24);
    if (v22)
    {
      v25 = v24;
    }

    else
    {
      v25 = v18 + 5;
    }

    *v25 |= 2u;
    return result;
  }

  result = CBB_add_asn1(&v34, v33, 536870928);
  if (!result)
  {
    return result;
  }

  result = CBB_add_asn1(v33, &v30, 536870928);
  if (!result)
  {
    return result;
  }

  v18 = &v30;
  if (!CBB_add_asn1(&v30, v37, 6) || (v27 = 0, !CBB_add_space(v37, &v27, 9)) || (v20 = v27, *(v27 + 8) = 12, *v20 = 0x5010DF78648862ALL, !CBB_flush(&v30)))
  {
    result = 0;
    v22 = v31;
    v23 = v32;
    goto LABEL_31;
  }

  result = CBB_add_asn1(&v30, &v27, 536870928);
  if (!result)
  {
    return result;
  }

  v18 = &v27;
  if (!CBB_add_asn1(&v27, v37, 4))
  {
    goto LABEL_36;
  }

  __dst[0] = 0;
  if (!CBB_add_space(v37, __dst, a8))
  {
    goto LABEL_36;
  }

  if (a8)
  {
    memcpy(__dst[0], a7, a8);
  }

  if (!CBB_flush(&v27))
  {
LABEL_36:
    result = 0;
    v22 = v28;
    v23 = v29;
    goto LABEL_31;
  }

  result = CBB_add_asn1_uint64_with_tag(&v27, a4, 2);
  if (result)
  {
    if (nid != 37 || (result = CBB_add_asn1_uint64_with_tag(&v27, a3->key_len, 2), result))
    {
      result = CBB_add_asn1(&v27, v37, 536870928);
      if (result)
      {
        result = CBB_add_asn1_element(v37, 6, &kHMACWithSHA256, 8uLL);
        if (result)
        {
          result = CBB_add_asn1_element(v37, 5, 0, 0);
          if (result)
          {
            result = CBB_add_asn1(v33, __dst, 536870928);
            if (result)
            {
              result = add_cipher_oid(__dst, nid);
              if (result)
              {
                result = CBB_add_asn1_octet_string(__dst, iv, a3->iv_len);
                if (result)
                {
                  result = CBB_flush(a1);
                  if (result)
                  {
                    v21 = EVP_sha256();
                    return pkcs5_pbe2_cipher_init(a2, a3, v21, a4, a5, a6, a7, a8, iv, a3->iv_len, 1);
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

uint64_t add_cipher_oid(uint64_t a1, int a2)
{
  if (a2 > 418)
  {
    switch(a2)
    {
      case 419:
        v3 = &unk_2882A5798;
        v4 = byte_2882A57A1;
        if (!CBB_add_asn1(a1, v7, 6))
        {
          goto LABEL_21;
        }

        goto LABEL_16;
      case 423:
        v3 = &unk_2882A57B0;
        v4 = byte_2882A57B9;
        if (!CBB_add_asn1(a1, v7, 6))
        {
          goto LABEL_21;
        }

        goto LABEL_16;
      case 427:
        v3 = &unk_2882A57C8;
        v4 = byte_2882A57D1;
        if (!CBB_add_asn1(a1, v7, 6))
        {
          goto LABEL_21;
        }

LABEL_16:
        v8 = 0;
        if (CBB_add_space(v7, &v8, v4))
        {
          if (v4)
          {
            memcpy(v8, v3, v4);
          }

          if (CBB_flush(a1))
          {
            return 1;
          }
        }

        goto LABEL_21;
    }

    goto LABEL_24;
  }

  if (a2 != 37)
  {
    if (a2 == 44)
    {
      v3 = &unk_2882A5780;
      v4 = byte_2882A5789;
      if (!CBB_add_asn1(a1, v7, 6))
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }

LABEL_24:
    ERR_put_error(19, 0, 127, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pkcs8/p5_pbev2.cc", 98);
    return 0;
  }

  v3 = &kCipherOIDs;
  v4 = byte_2882A5771;
  if (CBB_add_asn1(a1, v7, 6))
  {
    goto LABEL_16;
  }

LABEL_21:
  v6 = a1 + 16;
  if (*(a1 + 8))
  {
    v6 = *v6;
  }

  result = 0;
  *(v6 + 24) |= 2u;
  *a1 = 0;
  return result;
}

BOOL pkcs5_pbe2_cipher_init(evp_cipher_ctx_st *a1, const evp_cipher_st *a2, env_md_st *md, unsigned int a4, char *key, unint64_t len, const unsigned __int8 *a7, uint64_t a8, unsigned __int8 *iv, unint64_t a10, int enc)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2->iv_len == a10)
  {
    result = PKCS5_PBKDF2_HMAC(key, len, a7, a8, a4, md, a2->key_len, keya);
    if (result)
    {
      return EVP_CipherInit_ex(a1, a2, 0, keya, iv, enc) != 0;
    }
  }

  else
  {
    ERR_put_error(19, 0, 107, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pkcs8/p5_pbev2.cc", 117);
    return 0;
  }

  return result;
}

BOOL PKCS5_pbe2_decrypt_init(uint64_t a1, evp_cipher_ctx_st *a2, char *a3, unint64_t a4, uint64_t a5)
{
  v41 = 0;
  LODWORD(v39) = 0;
  if (!cbs_get_any_asn1_element(a5, &v43, &v39, &v41, 0, 0, 0) || v39 != 536870928 || v44 < v41 || (v43 += v41, v44 -= v41, *(a5 + 8)) || (v39 = 0, LODWORD(v37) = 0, !cbs_get_any_asn1_element(&v43, &v41, &v37, &v39, 0, 0, 0)) || v37 != 536870928 || v42 < v39 || (v41 += v39, v42 -= v39, v39 = 0, LODWORD(v35) = 0, !cbs_get_any_asn1_element(&v43, &v37, &v35, &v39, 0, 0, 0)) || v35 != 536870928 || v38 < v39 || (v37 += v39, v38 -= v39, v44) || (v35 = 0, LODWORD(v33) = 0, !cbs_get_any_asn1_element(&v41, &v39, &v33, &v35, 0, 0, 0)) || v33 != 6 || (v12 = v40 - v35, v40 < v35) || (v13 = v39 + v35, v39 += v35, v40 -= v35, v33 = 0, LODWORD(v32[0]) = 0, !cbs_get_any_asn1_element(&v37, &v35, v32, &v33, 0, 0, 0)) || LODWORD(v32[0]) != 6 || (v14 = v36 - v33, v36 < v33))
  {
    v9 = 104;
    v10 = 189;
LABEL_6:
    ERR_put_error(19, 0, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pkcs8/p5_pbev2.cc", v10);
    return 0;
  }

  v15 = (v35 + v33);
  v35 += v33;
  v36 -= v33;
  if (v12 != 9 || *v13 != 0x5010DF78648862ALL || *(v13 + 8) != 12)
  {
    v9 = 128;
    v10 = 195;
    goto LABEL_6;
  }

  v16 = cbs_to_cipher(v15, v14);
  if (!v16)
  {
    v9 = 127;
    v10 = 202;
    goto LABEL_6;
  }

  v17 = v16;
  v31 = 0;
  if (!CBS_get_asn1(&v41, &v33, 536870928) || v42 || !CBS_get_asn1(&v33, v32, 4) || !CBS_get_asn1_uint64_with_tag(&v33, &v31, 2))
  {
    v9 = 104;
    v10 = 213;
    goto LABEL_6;
  }

  v18 = v31;
  if (v31 - 100000001 < 0xFFFFFFFFFA0A1F00)
  {
    v9 = 129;
    v10 = 218;
    goto LABEL_6;
  }

  if (CBS_peek_asn1_tag(&v33, 2))
  {
    iv = 0;
    if (!CBS_get_asn1_uint64_with_tag(&v33, &iv, 2))
    {
      v9 = 104;
      v10 = 227;
      goto LABEL_6;
    }

    if (iv != v17->key_len)
    {
      v9 = 125;
      v10 = 232;
      goto LABEL_6;
    }
  }

  v19 = EVP_sha1();
  if (!v34)
  {
    v25 = v19;
    goto LABEL_58;
  }

  if (!CBS_get_asn1(&v33, &iv, 536870928) || !CBS_get_asn1(&iv, v28, 6) || v34)
  {
    v9 = 104;
    v10 = 243;
    goto LABEL_6;
  }

  if (v28[1] != 8)
  {
    goto LABEL_71;
  }

  v20 = *(v28[0] + 7);
  v21 = *v28[0] == -2042067414 && *(v28[0] + 4) == 247;
  v22 = v21;
  if (*(v28[0] + 5) != 13 || *(v28[0] + 6) != 2)
  {
    v22 = 0;
  }

  if (v22 != 1 || v20 != 7)
  {
    v21 = v20 == 9;
    v26 = v22 ^ 1;
    if (!v21)
    {
      v26 = 1;
    }

    if ((v26 & 1) == 0)
    {
      v24 = EVP_sha256();
      goto LABEL_67;
    }

LABEL_71:
    v9 = 130;
    v10 = 254;
    goto LABEL_6;
  }

  v24 = EVP_sha1();
LABEL_67:
  v25 = v24;
  if (!CBS_get_asn1(&iv, v27, 5) || v27[1] || v30)
  {
    v9 = 104;
    v10 = 263;
    goto LABEL_6;
  }

LABEL_58:
  if (!CBS_get_asn1(&v37, &iv, 4) || v38)
  {
    v9 = 130;
    v10 = 275;
    goto LABEL_6;
  }

  return pkcs5_pbe2_cipher_init(a2, v17, v25, v18, a3, a4, v32[0], v32[1], iv, v30, 0);
}

const EVP_CIPHER *cbs_to_cipher(uint64_t *a1, uint64_t a2)
{
  if (a2 == 9)
  {
    v9 = *(a1 + 8);
    v10 = *a1;
    if (*a1 == 0x104036501488660 && v9 == 2)
    {
      return off_2882A57A8();
    }

    else
    {
      if (v10 != 0x104036501488660 || v9 != 22)
      {
        if (v10 == 0x104036501488660 && v9 == 42)
        {
          return off_2882A57D8();
        }

        return 0;
      }

      return off_2882A57C0();
    }
  }

  else
  {
    if (a2 != 8)
    {
      return 0;
    }

    v2 = *(a1 + 7);
    v4 = *a1 == -2042067414 && *(a1 + 4) == 247;
    if (*(a1 + 5) != 13 || *(a1 + 6) != 3)
    {
      v4 = 0;
    }

    if (!v4 || v2 != 2)
    {
      if (v2 == 7 && v4)
      {
        return off_2882A5790();
      }

      return 0;
    }

    return off_2882A5778();
  }
}

uint64_t dsa_pub_decode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8))
  {
    v6 = DSA_parse_parameters(a2);
    if (!v6)
    {
      ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_dsa_asn1.cc", 40);
      return 0;
    }

    v7 = v6;
    if (*(a2 + 8))
    {
      v8 = 40;
LABEL_12:
      ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_dsa_asn1.cc", v8);
LABEL_15:
      DSA_free(v7);
      return 0;
    }
  }

  else
  {
    v9 = malloc_type_malloc(0x118uLL, 0xB4E622C9uLL);
    if (!v9)
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      return 0;
    }

    v10 = v9;
    *v9 = 272;
    *(v9 + 8) = 0u;
    v7 = (v9 + 8);
    *(v9 + 24) = 0u;
    *(v9 + 40) = 0u;
    *(v9 + 56) = 0u;
    *(v9 + 72) = 0u;
    *(v9 + 88) = 0u;
    *(v9 + 104) = 0u;
    *(v9 + 120) = 0u;
    *(v9 + 136) = 0u;
    *(v9 + 152) = 0u;
    *(v9 + 168) = 0u;
    *(v9 + 184) = 0u;
    *(v9 + 200) = 0u;
    *(v9 + 216) = 0u;
    *(v9 + 232) = 0u;
    *(v9 + 248) = 0u;
    *(v9 + 264) = 0u;
    *(v9 + 66) = 1;
    if (pthread_rwlock_init((v9 + 48), 0))
    {
      abort();
    }

    *(v10 + 34) = 0;
  }

  v11 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (!v11)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v7->p = 0;
    goto LABEL_15;
  }

  *v11 = 24;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0x100000000;
  *(v11 + 1) = 0;
  v7->p = (v11 + 8);
  if (!BN_parse_asn1_unsigned(a3, (v11 + 8)) || *(a3 + 8))
  {
    v8 = 51;
    goto LABEL_12;
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = *(v13 + 160);
    if (v14)
    {
      v14(a1);
    }
  }

  *(a1 + 4) = 116;
  *(a1 + 8) = v7;
  *(a1 + 16) = &dsa_asn1_meth;
  return 1;
}

uint64_t dsa_pub_encode(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (*v3 && v3[1])
  {
    v4 = v3[2] != 0;
    if (!CBB_add_asn1(a1, v12, 536870928))
    {
      goto LABEL_21;
    }
  }

  else
  {
    v4 = 0;
    if (!CBB_add_asn1(a1, v12, 536870928))
    {
      goto LABEL_21;
    }
  }

  if (CBB_add_asn1(v12, &v8, 536870928))
  {
    if (CBB_add_asn1(&v8, v13, 6) && (v14 = 0, CBB_add_space(v13, &v14, 7)) && (v5 = v14, *v14 = dword_2882A57E4, *(v5 + 3) = *(&dword_2882A57E4 + 3), CBB_flush(&v8)))
    {
      if (!v4 || DSA_marshal_parameters(&v8, v3))
      {
        if (CBB_add_asn1(v12, v13, 3))
        {
          v14 = 0;
          if (CBB_add_space(v13, &v14, 1))
          {
            *v14 = 0;
            if (BN_marshal_asn1(v13, v3[3]))
            {
              if (CBB_flush(a1))
              {
                return 1;
              }
            }
          }
        }
      }
    }

    else
    {
      if (v9)
      {
        v7 = (v10 + 24);
      }

      else
      {
        v7 = &v11;
      }

      *v7 |= 2u;
      v8 = 0;
    }
  }

LABEL_21:
  ERR_put_error(6, 0, 105, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_dsa_asn1.cc", 74);
  return 0;
}

BOOL dsa_pub_cmp(const evp_pkey_st *a1, const evp_pkey_st *a2)
{
  v2 = *&a1->references;
  v3 = *(*&a2->references + 24);
  v4 = *(v2 + 24);
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = v4 != 0;
    if (v3)
    {
      v6 = -1;
    }

    return v6 == 0;
  }

  else
  {
    neg = v3->neg;
    if (neg == v4->neg)
    {
      v9 = BN_ucmp(v3, v4);
      if (neg)
      {
        v10 = -v9;
      }

      else
      {
        v10 = v9;
      }

      return v10 == 0;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t dsa_priv_decode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = DSA_parse_parameters(a2);
  if (v6 && !*(a2 + 8))
  {
    v9 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
    if (!v9)
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      v7 = 0;
      v6->q = 0;
      goto LABEL_12;
    }

    *v9 = 24;
    *(v9 + 2) = 0;
    *(v9 + 3) = 0x100000000;
    *(v9 + 1) = 0;
    v6->q = (v9 + 8);
    if (BN_parse_asn1_unsigned(a3, (v9 + 8)) && !*(a3 + 8))
    {
      if (dsa_check_key(v6))
      {
        v11 = malloc_type_malloc(0x48uLL, 0xB4E622C9uLL);
        if (v11)
        {
          *v11 = 64;
          *(v11 + 8) = 0u;
          v12 = (v11 + 8);
          *(v11 + 24) = 0u;
          *(v11 + 40) = 0u;
          *(v11 + 56) = 0u;
        }

        else
        {
          ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
          v12 = 0;
        }

        v13 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
        if (v13)
        {
          *v13 = 24;
          v14 = v13;
          v13[1] = 0;
          v15 = (v13 + 1);
          v14[2] = 0;
          v14[3] = 0x100000000;
          v6->p = v15;
          if (!v12)
          {
            goto LABEL_10;
          }

          if (BN_mod_exp_mont_consttime(v15, *&v6->write_params, v6->q, *&v6->pad, v12, 0))
          {
            v16 = *(a1 + 16);
            if (v16)
            {
              v17 = *(v16 + 160);
              if (v17)
              {
                v17(a1);
              }
            }

            *(a1 + 4) = 116;
            *(a1 + 8) = v6;
            *(a1 + 16) = &dsa_asn1_meth;
            v7 = 1;
            v6 = 0;
          }

          else
          {
            v7 = 0;
          }
        }

        else
        {
          ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
          v7 = 0;
          v6->p = 0;
          if (!v12)
          {
            goto LABEL_12;
          }
        }

        BN_CTX_free(v12);
        if (!v6)
        {
          return v7;
        }

        goto LABEL_12;
      }

      v10 = 104;
    }

    else
    {
      v10 = 96;
    }

    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_dsa_asn1.cc", v10);
LABEL_10:
    v7 = 0;
    goto LABEL_12;
  }

  ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_dsa_asn1.cc", 87);
  v7 = 0;
  if (!v6)
  {
    return v7;
  }

LABEL_12:
  DSA_free(v6);
  return v7;
}

uint64_t dsa_priv_encode(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 && v2[4])
  {
    if (CBB_add_asn1(a1, v13, 536870928) && CBB_add_asn1_uint64_with_tag(v13, 0, 2) && CBB_add_asn1(v13, &v9, 536870928))
    {
      if (CBB_add_asn1(&v9, v14, 6) && (v15 = 0, CBB_add_space(v14, &v15, 7)) && (v4 = v15, *v15 = dword_2882A57E4, *(v4 + 3) = *(&dword_2882A57E4 + 3), CBB_flush(&v9)))
      {
        if (DSA_marshal_parameters(&v9, v2) && CBB_add_asn1(v13, v14, 4) && BN_marshal_asn1(v14, v2[4]) && CBB_flush(a1))
        {
          return 1;
        }
      }

      else
      {
        if (v10)
        {
          v8 = (v11 + 24);
        }

        else
        {
          v8 = &v12;
        }

        *v8 |= 2u;
        v9 = 0;
      }
    }

    v6 = 105;
    v7 = 138;
  }

  else
  {
    v6 = 118;
    v7 = 124;
  }

  ERR_put_error(6, 0, v6, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_dsa_asn1.cc", v7);
  return 0;
}

uint64_t dsa_bits(const evp_pkey_st *a1)
{
  v1 = **&a1->references;
  v2 = *(v1 + 2);
  if (v2 < 1)
  {
    if (!v2)
    {
      return 0;
    }

    v3 = *v1;
  }

  else
  {
    v3 = *v1;
    while (!*(v3 - 8 + 8 * v2))
    {
      v4 = __OFSUB__(v2--, 1);
      if ((v2 < 0) ^ v4 | (v2 == 0))
      {
        return 0;
      }
    }
  }

  v5 = v2 - 1;
  v6 = *(v3 + 8 * v5);
  v7 = v6 != 0;
  v8 = HIDWORD(v6) != 0;
  if (HIDWORD(v6))
  {
    v6 >>= 32;
  }

  v9 = v6 >> 16 != 0;
  if (v6 >> 16)
  {
    v6 >>= 16;
  }

  v10 = v6 > 0xFF;
  if (v6 > 0xFF)
  {
    v6 >>= 8;
  }

  v11 = v6 > 0xF;
  if (v6 > 0xF)
  {
    v6 >>= 4;
  }

  v12 = v6 > 3;
  if (v6 > 3)
  {
    v6 >>= 2;
  }

  v13 = v7 | (v5 << 6) | (32 * v8) | (16 * v9) | (8 * v10) | (4 * v11) | (2 * v12);
  if (v6 <= 1)
  {
    return v13;
  }

  else
  {
    return v13 + 1;
  }
}

uint64_t dsa_copy_parameters(evp_pkey_st *a1, const evp_pkey_st *a2)
{
  v2 = *&a1->references;
  v3 = *&a2->references;
  result = BN_dup(*v3);
  if (!result)
  {
    return result;
  }

  v5 = *v2;
  if (*v2)
  {
    v6 = *(v5 + 20);
    if ((v6 & 2) == 0)
    {
      v7 = *v5;
      if (*v5)
      {
        v8 = result;
        v10 = *(v7 - 8);
        v9 = (v7 - 8);
        v11 = v10 + 8;
        if (v10 != -8)
        {
          bzero(v9, v11);
        }

        free(v9);
        v6 = *(v5 + 20);
        result = v8;
      }
    }

    if (v6)
    {
      v12 = result;
      v14 = *(v5 - 8);
      v13 = (v5 - 8);
      v15 = v14 + 8;
      if (v14 != -8)
      {
        bzero(v13, v15);
      }

      free(v13);
      *v2 = v12;
      result = BN_dup(v3[1]);
      if (!result)
      {
        return result;
      }

      goto LABEL_15;
    }

    *v5 = 0;
  }

  *v2 = result;
  result = BN_dup(v3[1]);
  if (!result)
  {
    return result;
  }

LABEL_15:
  v16 = v2[1];
  if (!v16)
  {
    goto LABEL_23;
  }

  v17 = *(v16 + 20);
  if ((v17 & 2) == 0)
  {
    v18 = *v16;
    if (*v16)
    {
      v19 = result;
      v21 = *(v18 - 8);
      v20 = (v18 - 8);
      v22 = v21 + 8;
      if (v21 != -8)
      {
        bzero(v20, v22);
      }

      free(v20);
      v17 = *(v16 + 20);
      result = v19;
    }
  }

  if ((v17 & 1) == 0)
  {
    *v16 = 0;
LABEL_23:
    v2[1] = result;
    result = BN_dup(v3[2]);
    if (!result)
    {
      return result;
    }

    goto LABEL_28;
  }

  v23 = result;
  v25 = *(v16 - 8);
  v24 = (v16 - 8);
  v26 = v25 + 8;
  if (v25 != -8)
  {
    bzero(v24, v26);
  }

  free(v24);
  v2[1] = v23;
  result = BN_dup(v3[2]);
  if (result)
  {
LABEL_28:
    v27 = v2[2];
    if (v27)
    {
      v28 = *(v27 + 20);
      if ((v28 & 2) == 0)
      {
        v29 = *v27;
        if (*v27)
        {
          v30 = result;
          v32 = *(v29 - 8);
          v31 = (v29 - 8);
          v33 = v32 + 8;
          if (v32 != -8)
          {
            bzero(v31, v33);
          }

          free(v31);
          v28 = *(v27 + 20);
          result = v30;
        }
      }

      if (v28)
      {
        v34 = result;
        v36 = *(v27 - 8);
        v35 = (v27 - 8);
        v37 = v36 + 8;
        if (v36 != -8)
        {
          bzero(v35, v37);
        }

        free(v35);
        result = v34;
      }

      else
      {
        *v27 = 0;
      }
    }

    v2[2] = result;
    return 1;
  }

  return result;
}

BOOL dsa_cmp_parameters(const evp_pkey_st *a1, const evp_pkey_st *a2)
{
  v2 = *&a1->references;
  v3 = *&a2->references;
  v4 = *v2;
  v5 = *v3;
  if (*v2)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (v4 | v5)
    {
      return 0;
    }
  }

  else
  {
    neg = v4->neg;
    if (neg != v5->neg)
    {
      return 0;
    }

    v8 = BN_ucmp(v4, v5);
    if (neg ? -v8 : v8)
    {
      return 0;
    }
  }

  v10 = *(v2 + 8);
  v11 = *(v3 + 8);
  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (!(v10 | v11))
    {
      goto LABEL_26;
    }

    return 0;
  }

  v13 = v10->neg;
  if (v13 != v11->neg)
  {
    return 0;
  }

  v14 = BN_ucmp(v10, v11);
  if (v13 ? -v14 : v14)
  {
    return 0;
  }

LABEL_26:
  v17 = *(v2 + 16);
  v18 = *(v3 + 16);
  if (v17)
  {
    v19 = v18 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    v20 = v18 != 0;
    if (v17)
    {
      v20 = -1;
    }

    return v20 == 0;
  }

  else
  {
    v21 = v17->neg;
    if (v21 == v18->neg)
    {
      v22 = BN_ucmp(v17, v18);
      if (v21)
      {
        v23 = -v22;
      }

      else
      {
        v23 = v22;
      }

      return v23 == 0;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t pkey_ec_init(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0xB4E622C9uLL);
  if (v2)
  {
    *v2 = 16;
    v2[2] = 0;
    v2[1] = 0;
    *(a1 + 40) = v2 + 1;
    return 1;
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }
}

uint64_t pkey_ec_copy(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x18uLL, 0xB4E622C9uLL);
  if (v4)
  {
    *v4 = 16;
    v4[2] = 0;
    v4[1] = 0;
    v5 = v4 + 1;
    *(a1 + 40) = v5;
    *v5 = **(a2 + 40);
    return 1;
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }
}

void pkey_ec_cleanup(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    v4 = v3 + 8;
    if (v3 != -8)
    {
      bzero(v2, v4);
    }

    free(v2);
  }
}

uint64_t pkey_ec_keygen(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 40) + 8);
  if (v3)
  {
    v4 = malloc_type_malloc(0x40uLL, 0xB4E622C9uLL);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_12:
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v5 = 0;
LABEL_13:
    EC_KEY_free(v5);
    return 0;
  }

  v9 = *(a1 + 16);
  if (!v9)
  {
    ERR_put_error(6, 0, 124, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_ec.cc", 171);
    return 0;
  }

  v3 = **(v9 + 8);
  v4 = malloc_type_malloc(0x40uLL, 0xB4E622C9uLL);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_3:
  *v4 = 56;
  *(v4 + 8) = 0u;
  v5 = (v4 + 8);
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 7) = 0;
  *(v4 + 36) = 0x100000004;
  if (!v3)
  {
    goto LABEL_13;
  }

  if (!*(v3 + 512))
  {
    v10 = atomic_load((v3 + 540));
    if (v10 != -1)
    {
      for (i = v10; i != -1; v10 = i)
      {
        atomic_compare_exchange_strong((v3 + 540), &i, v10 + 1);
        if (i == v10)
        {
          break;
        }
      }
    }
  }

  *v5 = v3;
  if (!EC_KEY_generate_key((v4 + 8)))
  {
    goto LABEL_13;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *(v6 + 160);
    if (v7)
    {
      v7(a2);
    }
  }

  *(a2 + 4) = ec_asn1_meth;
  *(a2 + 8) = v5;
  *(a2 + 16) = &ec_asn1_meth;
  return 1;
}

uint64_t pkey_ec_sign(uint64_t a1, unsigned __int8 *a2, unint64_t *a3, const unsigned __int8 *a4, int a5)
{
  v6 = *(a1 + 16);
  v7 = *(v6 + 8);
  if (!a2)
  {
    *a3 = ECDSA_size(*(v6 + 8));
    return 1;
  }

  v11 = *a3;
  if (v11 < ECDSA_size(*(v6 + 8)))
  {
    ERR_put_error(6, 0, 100, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_ec.cc", 80);
    return 0;
  }

  siglen = 0;
  result = ECDSA_sign(0, a4, a5, a2, &siglen, v7);
  if (result)
  {
    *a3 = siglen;
    return 1;
  }

  return result;
}

uint64_t pkey_ec_derive(uint64_t a1, void *out, size_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3 || (v4 = *(a1 + 24)) == 0)
  {
    ERR_put_error(6, 0, 117, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_ec.cc", 100);
    return 0;
  }

  v5 = *(v3 + 8);
  if (out)
  {
    v7 = ECDH_compute_key(out, *a3, *(*(v4 + 8) + 8), v5, 0);
    if ((v7 & 0x80000000) != 0)
    {
      return 0;
    }

    else
    {
      *a3 = v7;
      return 1;
    }
  }

  else
  {
    v9 = *v5;
    v10 = *(*v5 + 328);
    if (v10 < 1)
    {
      if (!v10)
      {
LABEL_29:
        *a3 = 0;
        return 1;
      }

      v11 = *(v9 + 320);
    }

    else
    {
      v11 = *(v9 + 320);
      while (!*(v11 - 8 + 8 * v10))
      {
        v12 = __OFSUB__(v10--, 1);
        if ((v10 < 0) ^ v12 | (v10 == 0))
        {
          goto LABEL_29;
        }
      }
    }

    v13 = v10 - 1;
    v14 = *(v11 + 8 * v13);
    v15 = v14 != 0;
    v16 = HIDWORD(v14) != 0;
    if (HIDWORD(v14))
    {
      v14 >>= 32;
    }

    v17 = v14 >> 16 != 0;
    if (v14 >> 16)
    {
      v14 >>= 16;
    }

    v18 = v14 > 0xFF;
    if (v14 > 0xFF)
    {
      v14 >>= 8;
    }

    v19 = v14 > 0xF;
    if (v14 > 0xF)
    {
      v14 >>= 4;
    }

    v20 = v14 > 3;
    if (v14 > 3)
    {
      v14 >>= 2;
    }

    v21 = v15 | (v13 << 6) | (32 * v16) | (16 * v17) | (8 * v18) | (4 * v19) | (2 * v20);
    if (v14 > 1)
    {
      ++v21;
    }

    *a3 = (v21 + 7) >> 3;
    return 1;
  }
}

uint64_t pkey_ec_paramgen(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (!*(v2 + 8))
  {
    ERR_put_error(6, 0, 124, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_ec.cc", 188);
    return 0;
  }

  v4 = malloc_type_malloc(0x40uLL, 0xB4E622C9uLL);
  if (!v4)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v6 = 0;
    goto LABEL_11;
  }

  *v4 = 56;
  v5 = v4;
  *(v4 + 8) = 0u;
  v6 = (v4 + 8);
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 7) = 0;
  *(v5 + 36) = 0x100000004;
  v7 = *(v2 + 8);
  if (!v7)
  {
LABEL_11:
    EC_KEY_free(v6);
    return 0;
  }

  if (!*(v7 + 512))
  {
    v12 = atomic_load((v7 + 540));
    if (v12 != -1)
    {
      for (i = v12; i != -1; v12 = i)
      {
        atomic_compare_exchange_strong((v7 + 540), &i, v12 + 1);
        if (i == v12)
        {
          break;
        }
      }
    }
  }

  *v6 = v7;
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = *(v8 + 160);
    if (v9)
    {
      v10 = v6;
      v9(a2);
      v6 = v10;
    }
  }

  *(a2 + 4) = ec_asn1_meth;
  *(a2 + 8) = v6;
  *(a2 + 16) = &ec_asn1_meth;
  return 1;
}

uint64_t pkey_ec_ctrl(uint64_t a1, int a2, int nid, void *a4)
{
  v4 = *(a1 + 40);
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      return 1;
    }

    if (a2 != 4109)
    {
LABEL_10:
      ERR_put_error(6, 0, 101, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_ec.cc", 161);
      return 0;
    }

    result = EC_GROUP_new_by_curve_name(nid);
    if (result)
    {
      v4[1] = result;
      return 1;
    }
  }

  else
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        *a4 = *v4;
        return 1;
      }

      goto LABEL_10;
    }

    if ((*a4 - 672) < 4 || *a4 == 64)
    {
      *v4 = a4;
      return 1;
    }

    ERR_put_error(6, 0, 111, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_ec.cc", 136);
    return 0;
  }

  return result;
}

uint64_t eckey_pub_decode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = EC_KEY_parse_curve_name(a2);
  if (v6 && !*(a2 + 8))
  {
    v8 = v6;
    v9 = malloc_type_malloc(0x40uLL, 0xB4E622C9uLL);
    if (v9)
    {
      *v9 = 56;
      *(v9 + 8) = 0u;
      v10 = (v9 + 8);
      *(v9 + 24) = 0u;
      *(v9 + 40) = 0u;
      *(v9 + 7) = 0;
      *(v9 + 36) = 0x100000004;
      if (!*(v8 + 128))
      {
        v13 = atomic_load(v8 + 135);
        if (v13 != -1)
        {
          for (i = v13; i != -1; v13 = i)
          {
            atomic_compare_exchange_strong(v8 + 135, &i, v13 + 1);
            if (i == v13)
            {
              break;
            }
          }
        }
      }

      *v10 = v8;
      if (EC_KEY_oct2key((v9 + 8), *a3, *(a3 + 8), 0))
      {
        v11 = *(a1 + 16);
        if (v11)
        {
          v12 = *(v11 + 160);
          if (v12)
          {
            v12(a1);
          }
        }

        *(a1 + 4) = 408;
        *(a1 + 8) = v10;
        *(a1 + 16) = &ec_asn1_meth;
        return 1;
      }

      else
      {
        EC_KEY_free(v10);
        return 0;
      }
    }

    else
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      return 0;
    }
  }

  else
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_ec_asn1.cc", 57);
    return 0;
  }
}

uint64_t eckey_pub_encode(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *v3;
  v5 = v3[1];
  if (CBB_add_asn1(a1, v15, 536870928) && CBB_add_asn1(v15, &v11, 536870928))
  {
    if (CBB_add_asn1(&v11, v16, 6) && (v17 = 0, CBB_add_space(v16, &v17, 7)) && (v6 = v17, *v17 = dword_2882A5904, *(v6 + 3) = *(&dword_2882A5904 + 3), CBB_flush(&v11)))
    {
      if (EC_KEY_marshal_curve_name(&v11, v4))
      {
        if (CBB_add_asn1(v15, v16, 3))
        {
          v17 = 0;
          if (CBB_add_space(v16, &v17, 1))
          {
            *v17 = 0;
            v7 = EC_POINT_point2oct(v4, v5, POINT_CONVERSION_UNCOMPRESSED, 0, 0, 0);
            if (v7)
            {
              v8 = v7;
              v17 = 0;
              if (CBB_add_space(v16, &v17, v7))
              {
                if (EC_POINT_point2oct(v4, v5, POINT_CONVERSION_UNCOMPRESSED, v17, v8, 0) == v8 && CBB_flush(a1))
                {
                  return 1;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      if (v12)
      {
        v10 = (v13 + 24);
      }

      else
      {
        v10 = &v14;
      }

      *v10 |= 2u;
      v11 = 0;
    }
  }

  ERR_put_error(6, 0, 105, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_ec_asn1.cc", 44);
  return 0;
}

uint64_t eckey_pub_cmp(const evp_pkey_st *a1, const evp_pkey_st *a2, BN_CTX *a3)
{
  v3 = *&a2->references;
  v4 = *(*&a1->references + 8);
  v5 = *v3;
  v6 = *(v3 + 8);
  if (EC_GROUP_cmp(*v3, *v4, a3) || EC_GROUP_cmp(v5, *v6, v7))
  {
    ERR_put_error(15, 0, 106, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc", 493);
    return 4294967294;
  }

  else
  {
    v9 = ec_GFp_simple_points_equal(v5, (v4 + 8), (v6 + 8));
    if (v9)
    {
      v10 = -2;
    }

    else
    {
      v10 = 0;
    }

    if (v9 == 1)
    {
      return 1;
    }

    else
    {
      return v10;
    }
  }
}

uint64_t eckey_priv_decode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = EC_KEY_parse_parameters(a2);
  if (v6 && !*(a2 + 8))
  {
    v8 = EC_KEY_parse_private_key(a3, v6);
    if (v8 && !*(a3 + 8))
    {
      v9 = *(a1 + 16);
      if (v9)
      {
        v10 = *(v9 + 160);
        if (v10)
        {
          v10(a1);
        }
      }

      *(a1 + 4) = 408;
      *(a1 + 8) = v8;
      *(a1 + 16) = &ec_asn1_meth;
      return 1;
    }

    else
    {
      ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_ec_asn1.cc", 98);
      EC_KEY_free(v8);
      return 0;
    }
  }

  else
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_ec_asn1.cc", 92);
    return 0;
  }
}

uint64_t eckey_priv_encode(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(v3 + 24);
  if (CBB_add_asn1(a1, v12, 536870928) && CBB_add_asn1_uint64_with_tag(v12, 0, 2) && CBB_add_asn1(v12, &v8, 536870928))
  {
    if (CBB_add_asn1(&v8, v13, 6) && (v14 = 0, CBB_add_space(v13, &v14, 7)) && (v5 = v14, *v14 = dword_2882A5904, *(v5 + 3) = *(&dword_2882A5904 + 3), CBB_flush(&v8)))
    {
      if (EC_KEY_marshal_curve_name(&v8, *v3) && CBB_add_asn1(v12, v13, 4) && EC_KEY_marshal_private_key(v13, v3, v4 | 1u) && CBB_flush(a1))
      {
        return 1;
      }
    }

    else
    {
      if (v9)
      {
        v7 = (v10 + 24);
      }

      else
      {
        v7 = &v11;
      }

      *v7 |= 2u;
      v8 = 0;
    }
  }

  ERR_put_error(6, 0, 105, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_ec_asn1.cc", 127);
  return 0;
}

uint64_t eckey_set1_tls_encodedpoint(evp_pkey_st *a1, const unsigned __int8 *a2, size_t a3)
{
  v4 = *&a1->references;
  if (v4)
  {

    return EC_KEY_oct2key(v4, a2, a3, 0);
  }

  else
  {
    ERR_put_error(6, 0, 120, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_ec_asn1.cc", 138);
    return 0;
  }
}

size_t eckey_get1_tls_encodedpoint(const evp_pkey_st *a1, unsigned __int8 **a2)
{
  v2 = *&a1->references;
  if (v2)
  {
    v4 = v2[1];
    if (v4 && (v5 = *v2) != 0)
    {

      return EC_POINT_point2buf(v5, v4, 4, a2);
    }

    else
    {
      ERR_put_error(15, 0, 114, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec_key.cc.inc", 351);
      return 0;
    }
  }

  else
  {
    ERR_put_error(6, 0, 120, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_ec_asn1.cc", 149);
    return 0;
  }
}

uint64_t eckey_opaque(const evp_pkey_st *a1)
{
  v1 = *(*&a1->references + 40);
  if (v1)
  {
    return *(v1 + 40) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t ec_bits(const evp_pkey_st *a1)
{
  v1 = **&a1->references;
  if (!v1)
  {
    ERR_clear_error();
    return 0;
  }

  v2 = *(v1 + 264);
  if (v2 < 1)
  {
    if (!v2)
    {
      return 0;
    }

    v3 = *(v1 + 256);
  }

  else
  {
    v3 = *(v1 + 256);
    while (!*(v3 - 8 + 8 * v2))
    {
      v4 = __OFSUB__(v2--, 1);
      if ((v2 < 0) ^ v4 | (v2 == 0))
      {
        return 0;
      }
    }
  }

  v6 = v2 - 1;
  v7 = *(v3 + 8 * v6);
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
  if (v7 <= 1)
  {
    return v14;
  }

  else
  {
    return v14 + 1;
  }
}

uint64_t ec_copy_parameters(evp_pkey_st *a1, const evp_pkey_st *a2, BN_CTX *a3)
{
  v3 = *&a2->references;
  if (!v3)
  {
    ERR_put_error(6, 0, 120, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_ec_asn1.cc", 179);
    return 0;
  }

  v4 = *v3;
  if (!*v3)
  {
    ERR_put_error(6, 0, 118, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_ec_asn1.cc", 184);
    return 0;
  }

  v5 = *&a1->references;
  if (v5)
  {
    if (*v5)
    {
      if (EC_GROUP_cmp(*v5, v4, a3))
      {
        ERR_put_error(15, 0, 130, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec_key.cc.inc", 165);
        return 0;
      }

      return 1;
    }

LABEL_11:
    if (!*(v4 + 512))
    {
      v9 = atomic_load((v4 + 540));
      if (v9 != -1)
      {
        for (i = v9; i != -1; v9 = i)
        {
          atomic_compare_exchange_strong((v4 + 540), &i, v9 + 1);
          if (i == v9)
          {
            break;
          }
        }
      }
    }

    *v5 = v4;
    return 1;
  }

  v8 = malloc_type_malloc(0x40uLL, 0xB4E622C9uLL);
  if (v8)
  {
    *v8 = 56;
    *(v8 + 8) = 0u;
    v5 = (v8 + 8);
    *(v8 + 24) = 0u;
    *(v8 + 40) = 0u;
    *(v8 + 7) = 0;
    *(v8 + 36) = 0x100000004;
    *&a1->references = v8 + 8;
    goto LABEL_11;
  }

  ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  result = 0;
  *&a1->references = 0;
  return result;
}

uint64_t ec_cmp_parameters(const evp_pkey_st *a1, const evp_pkey_st *a2)
{
  v2 = *&a1->references;
  v3 = *&a2->references;
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 4294967294;
  }

  v6 = *v3;
  if (*v2)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 4294967294;
  }

  else
  {
    return EC_GROUP_cmp(*v2, v6, 0) ^ 1u;
  }
}

uint64_t pkey_ed25519_keygen(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = malloc_type_malloc(0x49uLL, 0xB4E622C9uLL);
  if (v3)
  {
    v4 = v3;
    *v3 = 65;
    v5 = (v3 + 1);
    v6 = *(a2 + 16);
    if (v6)
    {
      v7 = *(v6 + 160);
      if (v7)
      {
        v7(a2);
        *(a2 + 8) = 0;
      }
    }

    *(a2 + 16) = &ed25519_asn1_meth;
    *(a2 + 4) = ed25519_asn1_meth;
    ED25519_keypair(v13, v5);
    *(v4 + 72) = 1;
    v8 = *(a2 + 8);
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

    *(a2 + 8) = v5;
    return 1;
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }
}

uint64_t pkey_ed25519_sign_message(uint64_t a1, int8x16_t *a2, void *a3, const unsigned __int8 *a4, size_t a5)
{
  v5 = *(*(a1 + 16) + 8);
  if (!v5[4].i8[0])
  {
    v6 = 130;
    v7 = 51;
    goto LABEL_6;
  }

  if (!a2)
  {
    *a3 = 64;
    return 1;
  }

  if (*a3 <= 0x3FuLL)
  {
    v6 = 100;
    v7 = 61;
LABEL_6:
    ERR_put_error(6, 0, v6, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_ed25519.cc", v7);
    return 0;
  }

  result = ED25519_sign(a2, a4, a5, v5);
  if (result)
  {
    *a3 = 64;
    return 1;
  }

  return result;
}

uint64_t pkey_ed25519_verify_message(uint64_t a1, uint64_t a2, uint64_t a3, const unsigned __int8 *a4, size_t a5)
{
  if (a3 == 64 && ED25519_verify(a4, a5, a2, (*(*(a1 + 16) + 8) + 32)))
  {
    return 1;
  }

  ERR_put_error(6, 0, 131, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_ed25519.cc", 80);
  return 0;
}

uint64_t ed25519_pub_decode(uint64_t a1, uint64_t a2, __int128 **a3)
{
  if (*(a2 + 8))
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_ed25519_asn1.cc", 121);
    return 0;
  }

  else if (a3[1] == 32)
  {
    v5 = *a3;
    v6 = malloc_type_malloc(0x49uLL, 0xB4E622C9uLL);
    if (v6)
    {
      *v6 = 65;
      v7 = v6 + 8;
      v8 = *v5;
      *(v6 + 56) = v5[1];
      *(v6 + 40) = v8;
      v6[72] = 0;
      v9 = a1;
      v10 = *(a1 + 8);
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
        v9 = a1;
      }

      *(v9 + 8) = v7;
      return 1;
    }

    else
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      return 0;
    }
  }

  else
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_ed25519_asn1.cc", 56);
    return 0;
  }
}

uint64_t ed25519_pub_encode(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (CBB_add_asn1(a1, v13, 536870928) && CBB_add_asn1(v13, &v9, 536870928))
  {
    if (CBB_add_asn1(&v9, v14, 6) && (v15 = 0, CBB_add_space(v14, &v15, 3)) && (v4 = v15, *v15 = word_2882A5A24, v4[2] = byte_2882A5A26, CBB_flush(&v9)))
    {
      if (CBB_add_asn1(v13, v14, 3))
      {
        v15 = 0;
        if (CBB_add_space(v14, &v15, 1))
        {
          *v15 = 0;
          v15 = 0;
          if (CBB_add_space(v14, &v15, 32))
          {
            v5 = v15;
            v6 = *(v3 + 48);
            *v15 = *(v3 + 32);
            *(v5 + 1) = v6;
            if (CBB_flush(a1))
            {
              return 1;
            }
          }
        }
      }
    }

    else
    {
      if (v10)
      {
        v8 = (v11 + 24);
      }

      else
      {
        v8 = &v12;
      }

      *v8 |= 2u;
      v9 = 0;
    }
  }

  ERR_put_error(6, 0, 105, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_ed25519_asn1.cc", 142);
  return 0;
}

BOOL ed25519_pub_cmp(const evp_pkey_st *a1, const evp_pkey_st *a2)
{
  v2 = *&a1->references;
  v3 = *&a2->references;
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
  v23[4] = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) || (v23[0] = 0, v22 = 0, !cbs_get_any_asn1_element(a3, &v20, &v22, v23, 0, 0, 0)) || v22 != 4 || (v10 = v21 - v23[0], v21 < v23[0]) || (v11 = (v20 + v23[0]), v20 += v23[0], v21 -= v23[0], *(a3 + 8)))
  {
    v3 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_ed25519_asn1.cc";
    v4 = 6;
    v5 = 102;
    v6 = 164;
LABEL_3:
    ERR_put_error(v4, 0, v5, v3, v6);
    return 0;
  }

  if (v10 != 32)
  {
    v3 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_ed25519_asn1.cc";
    v4 = 6;
    v5 = 102;
    v6 = 33;
    goto LABEL_3;
  }

  v12 = malloc_type_malloc(0x49uLL, 0xB4E622C9uLL);
  if (!v12)
  {
    v3 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v4 = 14;
    v5 = 65;
    v6 = 217;
    goto LABEL_3;
  }

  *v12 = 65;
  v13 = v12 + 8;
  v14 = v12;
  ED25519_keypair_from_seed(v23, (v12 + 8), v11);
  v14[72] = 1;
  v15 = a1;
  v16 = *(a1 + 8);
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
    v15 = a1;
  }

  *(v15 + 8) = v13;
  return 1;
}

uint64_t ed25519_priv_encode(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(v2 + 64))
  {
    if (CBB_add_asn1(a1, v16, 536870928) && CBB_add_asn1_uint64_with_tag(v16, 0, 2) && CBB_add_asn1(v16, &v12, 536870928))
    {
      if (CBB_add_asn1(&v12, v17, 6) && (v11[0] = 0, CBB_add_space(v17, v11, 3)) && (v4 = v11[0], *v11[0] = word_2882A5A24, *(v4 + 2) = byte_2882A5A26, CBB_flush(&v12)))
      {
        if (CBB_add_asn1(v16, v17, 4))
        {
          if (CBB_add_asn1(v17, v11, 4))
          {
            v18 = 0;
            if (CBB_add_space(v11, &v18, 32))
            {
              v5 = v18;
              v6 = *(v2 + 16);
              *v18 = *v2;
              v5[1] = v6;
              if (CBB_flush(a1))
              {
                return 1;
              }
            }
          }
        }
      }

      else
      {
        if (v13)
        {
          v10 = (v14 + 24);
        }

        else
        {
          v10 = &v15;
        }

        *v10 |= 2u;
        v12 = 0;
      }
    }

    v8 = 105;
    v9 = 191;
  }

  else
  {
    v8 = 130;
    v9 = 174;
  }

  ERR_put_error(6, 0, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_ed25519_asn1.cc", v9);
  return 0;
}

uint64_t ed25519_set_priv_raw(evp_pkey_st *a1, unsigned __int8 *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a3 != 32)
  {
    v13 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_ed25519_asn1.cc";
    v14 = 6;
    v15 = 102;
    v16 = 33;
LABEL_10:
    ERR_put_error(v14, 0, v15, v13, v16);
    return 0;
  }

  v5 = malloc_type_malloc(0x49uLL, 0xB4E622C9uLL);
  if (!v5)
  {
    v13 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v14 = 14;
    v15 = 65;
    v16 = 217;
    goto LABEL_10;
  }

  *v5 = 65;
  v6 = v5 + 8;
  v7 = v5;
  ED25519_keypair_from_seed(v17, (v5 + 8), a2);
  v7[72] = 1;
  v8 = *&a1->references;
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

  *&a1->references = v6;
  return 1;
}

uint64_t ed25519_set_pub_raw(evp_pkey_st *a1, const unsigned __int8 *a2, uint64_t a3)
{
  if (a3 == 32)
  {
    v5 = malloc_type_malloc(0x49uLL, 0xB4E622C9uLL);
    if (v5)
    {
      *v5 = 65;
      v6 = v5 + 8;
      v7 = *a2;
      *(v5 + 56) = *(a2 + 1);
      *(v5 + 40) = v7;
      v5[72] = 0;
      v8 = *&a1->references;
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

      *&a1->references = v6;
      return 1;
    }

    else
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      return 0;
    }
  }

  else
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_ed25519_asn1.cc", 56);
    return 0;
  }
}

uint64_t ed25519_get_priv_raw(const evp_pkey_st *a1, unsigned __int8 *a2, unint64_t *a3)
{
  v3 = *&a1->references;
  if (*(v3 + 64))
  {
    if (a2)
    {
      if (*a3 <= 0x1F)
      {
        ERR_put_error(6, 0, 100, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_ed25519_asn1.cc", 88);
        return 0;
      }

      v5 = *(v3 + 16);
      *a2 = *v3;
      *(a2 + 1) = v5;
    }

    *a3 = 32;
    return 1;
  }

  else
  {
    ERR_put_error(6, 0, 130, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_ed25519_asn1.cc", 78);
    return 0;
  }
}

uint64_t ed25519_get_pub_raw(const evp_pkey_st *a1, unsigned __int8 *a2, unint64_t *a3)
{
  if (a2)
  {
    if (*a3 <= 0x1F)
    {
      ERR_put_error(6, 0, 100, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_ed25519_asn1.cc", 107);
      return 0;
    }

    v4 = *&a1->references;
    v5 = *(v4 + 48);
    *a2 = *(v4 + 32);
    *(a2 + 1) = v5;
  }

  *a3 = 32;
  return 1;
}

void ed25519_free(evp_pkey_st *a1)
{
  v2 = *&a1->references;
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

  *&a1->references = 0;
}

uint64_t pkey_rsa_init(uint64_t a1)
{
  v2 = malloc_type_malloc(0x50uLL, 0xB4E622C9uLL);
  if (v2)
  {
    *v2 = 72;
    *(v2 + 12) = 0u;
    *(v2 + 44) = 0u;
    *(v2 + 28) = 0u;
    *(v2 + 60) = 0u;
    *(v2 + 2) = 2048;
    *(v2 + 19) = 0;
    *(v2 + 6) = 1;
    *(v2 + 12) = -2;
    *(a1 + 40) = v2 + 8;
    return 1;
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }
}

uint64_t pkey_rsa_copy(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x50uLL, 0xB4E622C9uLL);
  if (!v4)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  v5 = v4;
  *v4 = 72;
  *(v4 + 12) = 0u;
  *(v4 + 44) = 0u;
  *(v4 + 28) = 0u;
  *(v4 + 60) = 0u;
  *(v4 + 19) = 0;
  *(v4 + 2) = 2048;
  *(v4 + 6) = 1;
  *(v4 + 12) = -2;
  *(a1 + 40) = v4 + 8;
  v6 = *(a2 + 40);
  *(v4 + 2) = *v6;
  v7 = *(v6 + 8);
  if (!v7 || (result = BN_dup(v7), (*(v5 + 2) = result) != 0))
  {
    *(v5 + 6) = *(v6 + 16);
    *(v5 + 2) = *(v6 + 24);
    *(v5 + 12) = *(v6 + 40);
    v9 = *(v6 + 56);
    if (v9)
    {
      v10 = *(v5 + 8);
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
        v9 = *(v6 + 56);
      }

      v14 = *(v6 + 64);
      if (v14)
      {
        if (v14 <= 0xFFFFFFFFFFFFFFF7)
        {
          v15 = malloc_type_malloc(v14 + 8, 0xB4E622C9uLL);
          if (v15)
          {
            *v15 = v14;
            v16 = v15 + 1;
            memcpy(v15 + 1, v9, v14);
            v17 = *(v6 + 64);
            *(v5 + 8) = v16;
            *(v5 + 9) = v17;
            return 1;
          }
        }

        ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      }

      result = 0;
      *(v5 + 8) = 0;
      return result;
    }

    return 1;
  }

  return result;
}

void pkey_rsa_cleanup(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    return;
  }

  v2 = v1[1];
  if (!v2)
  {
LABEL_10:
    v8 = v1[6];
    if (!v8)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

  v3 = *(v2 + 5);
  if ((v3 & 2) == 0)
  {
    v4 = *v2;
    if (*v2)
    {
      v6 = *(v4 - 8);
      v5 = (v4 - 8);
      v7 = v6 + 8;
      if (v6 != -8)
      {
        bzero(v5, v7);
      }

      free(v5);
      v3 = *(v2 + 5);
    }
  }

  if ((v3 & 1) == 0)
  {
    *v2 = 0;
    goto LABEL_10;
  }

  v14 = *(v2 - 1);
  v13 = v2 - 1;
  v15 = v14 + 8;
  if (v14 != -8)
  {
    bzero(v13, v15);
  }

  free(v13);
  v8 = v1[6];
  if (!v8)
  {
LABEL_11:
    v9 = v1[7];
    if (!v9)
    {
      goto LABEL_12;
    }

LABEL_24:
    v20 = *(v9 - 8);
    v19 = (v9 - 8);
    v21 = v20 + 8;
    if (v20 != -8)
    {
      bzero(v19, v21);
    }

    free(v19);
    v22 = *(v1 - 1);
    v10 = v1 - 1;
    v12 = v22 + 8;
    if (v22 == -8)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_21:
  v17 = *(v8 - 8);
  v16 = (v8 - 8);
  v18 = v17 + 8;
  if (v17 != -8)
  {
    bzero(v16, v18);
  }

  free(v16);
  v9 = v1[7];
  if (v9)
  {
    goto LABEL_24;
  }

LABEL_12:
  v11 = *(v1 - 1);
  v10 = v1 - 1;
  v12 = v11 + 8;
  if (v11 != -8)
  {
LABEL_13:
    bzero(v10, v12);
  }

LABEL_14:

  free(v10);
}

rsa_st *pkey_rsa_keygen(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (*(v3 + 8))
  {
    goto LABEL_2;
  }

  v8 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (!v8)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    result = 0;
    *(v3 + 8) = 0;
    return result;
  }

  *v8 = 24;
  v8[2] = 0;
  v8[3] = 0x100000000;
  v8[1] = 0;
  v9 = (v8 + 1);
  *(v3 + 8) = v9;
  result = BN_set_word(v9, 0x10001uLL);
  if (result)
  {
LABEL_2:
    result = RSA_new_method(0);
    if (result)
    {
      v5 = result;
      if (RSA_generate_key_ex_maybe_fips(result, *v3, *(v3 + 8), 0, 0))
      {
        v6 = *(a2 + 16);
        if (v6)
        {
          v7 = *(v6 + 160);
          if (v7)
          {
            v7(a2);
          }
        }

        *(a2 + 4) = rsa_asn1_meth;
        *(a2 + 8) = v5;
        *(a2 + 16) = &rsa_asn1_meth;
        return 1;
      }

      else
      {
        RSA_free(v5);
        return 0;
      }
    }
  }

  return result;
}

uint64_t pkey_rsa_sign(uint64_t a1, char *a2, unint64_t *a3, const void *a4, size_t a5)
{
  v9 = *(a1 + 40);
  v10 = *(a1 + 16);
  v12 = *(v10 + 8);
  v11 = *(v10 + 16);
  if (v11)
  {
    v11 = *(v11 + 120);
    if (v11)
    {
      v11 = (v11)();
    }
  }

  if (!a2)
  {
    goto LABEL_14;
  }

  v13 = *a3;
  if (*a3 < v11)
  {
    ERR_put_error(6, 0, 100, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_rsa.cc", 143);
    return 0;
  }

  v15 = *(v9 + 24);
  if (v15)
  {
    v19 = 0;
    v16 = *(v9 + 16);
    if (v16 == 6)
    {
      return RSA_sign_pss_mgf1(v12, a3, a2, v13, a4, a5, v15, *(v9 + 32), *(v9 + 40));
    }

    if (v16 != 1)
    {
      return 0;
    }

    result = rsa_sign_no_self_test(v15->type, a4, a5, a2, &v19, v12);
    if (result)
    {
      v11 = v19;
LABEL_14:
      *a3 = v11;
      return 1;
    }
  }

  else
  {
    v17 = *(v9 + 16);
    v18 = *(*v12 + 40);
    if (v18)
    {

      return v18(v12, a3, a2);
    }

    else
    {

      return rsa_default_sign_raw(v12, a3, a2, v13, a4, a5, v17);
    }
  }

  return result;
}

uint64_t pkey_rsa_verify(uint64_t a1, const unsigned __int8 *a2, const unsigned __int8 *a3, int8x16_t *a4, size_t a5)
{
  v9 = *(a1 + 40);
  v10 = *(a1 + 16);
  v11 = *(v10 + 8);
  v12 = *(v9 + 24);
  if (!v12)
  {
    v56 = 0;
    v16 = *(v10 + 16);
    if (v16 && (v17 = *(v16 + 120)) != 0)
    {
      v18 = a1;
      v19 = v17(v10);
      a1 = v18;
      v20 = v19;
      v21 = *(v9 + 48);
      if (v21)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v20 = 0;
      v21 = *(v9 + 48);
      if (v21)
      {
        goto LABEL_23;
      }
    }

    v22 = *(a1 + 16);
    if (v22 && (v23 = *(v22 + 16)) != 0)
    {
      v24 = v20;
      v25 = *(v23 + 120);
      if (v25)
      {
        v26 = v25();
        if (v26 > 0xFFFFFFF7)
        {
          goto LABEL_31;
        }

        v27 = v26;
        v28 = malloc_type_malloc(v26 + 8, 0xB4E622C9uLL);
        if (!v28)
        {
          goto LABEL_31;
        }

        goto LABEL_22;
      }

      v27 = 0;
      v28 = malloc_type_malloc(8uLL, 0xB4E622C9uLL);
      if (!v28)
      {
LABEL_31:
        ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
        result = 0;
        *(v9 + 48) = 0;
        return result;
      }
    }

    else
    {
      v24 = v20;
      v27 = 0;
      v28 = malloc_type_malloc(8uLL, 0xB4E622C9uLL);
      if (!v28)
      {
        goto LABEL_31;
      }
    }

LABEL_22:
    *v28 = v27;
    v21 = (v28 + 1);
    *(v9 + 48) = v28 + 1;
    v20 = v24;
LABEL_23:
    result = rsa_verify_raw_no_self_test(v11, &v56, v21, v20, a2, a3, *(v9 + 16));
    if (!result)
    {
      return result;
    }

    if (v56 != a5)
    {
      goto LABEL_42;
    }

    if (!a5)
    {
      return 1;
    }

    v31 = *(v9 + 48);
    if (a5 < 8)
    {
      v32 = 0;
      v33 = 0;
      goto LABEL_39;
    }

    if (a5 >= 0x20)
    {
      v32 = a5 & 0xFFFFFFFFFFFFFFE0;
      v34 = a4 + 1;
      v35 = v31 + 1;
      v36 = 0uLL;
      v37 = a5 & 0xFFFFFFFFFFFFFFE0;
      v38 = 0uLL;
      do
      {
        v36 = vorrq_s8(veorq_s8(v35[-1], v34[-1]), v36);
        v38 = vorrq_s8(veorq_s8(*v35, *v34), v38);
        v34 += 2;
        v35 += 2;
        v37 -= 32;
      }

      while (v37);
      v39 = vorrq_s8(v38, v36);
      *v39.i8 = vorr_s8(*v39.i8, *&vextq_s8(v39, v39, 8uLL));
      v40 = v39.i64[0] | HIDWORD(v39.i64[0]) | ((v39.i64[0] | HIDWORD(v39.i64[0])) >> 16);
      v33 = v40 | BYTE1(v40);
      if (v32 == a5)
      {
        goto LABEL_41;
      }

      if ((a5 & 0x18) == 0)
      {
LABEL_39:
        v50 = a5 - v32;
        v51 = &v31->i8[v32];
        v52 = &a4->i8[v32];
        do
        {
          v54 = *v52++;
          v53 = v54;
          v55 = *v51++;
          v33 |= v55 ^ v53;
          --v50;
        }

        while (v50);
        goto LABEL_41;
      }
    }

    else
    {
      v33 = 0;
      v32 = 0;
    }

    v41 = v32;
    v32 = a5 & 0xFFFFFFFFFFFFFFF8;
    v42 = v33;
    v43 = &a4->i8[v41];
    v44 = &v31->i8[v41];
    v45 = v41 - (a5 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v46 = *v43++;
      v47 = v46;
      v48 = *v44++;
      v42 = vorr_s8(veor_s8(v48, v47), v42);
      v45 += 8;
    }

    while (v45);
    v49 = *&v42 | HIDWORD(*&v42) | ((*&v42 | HIDWORD(*&v42)) >> 16);
    v33 = v49 | BYTE1(v49);
    if (v32 != a5)
    {
      goto LABEL_39;
    }

LABEL_41:
    if (v33)
    {
LABEL_42:
      ERR_put_error(4, 0, 105, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_rsa.cc", 196);
      return 0;
    }

    return 1;
  }

  v13 = *(v9 + 16);
  if (v13 != 6)
  {
    if (v13 == 1)
    {
      type = v12->type;

      return rsa_verify_no_self_test(type, a4, a5, a2, a3, v11);
    }

    return 0;
  }

  v29 = *(v9 + 32);
  v30 = *(v9 + 40);

  return RSA_verify_pss_mgf1(v11, a4, a5, v12, v29, v30, a2, a3);
}

uint64_t pkey_rsa_verify_recover(uint64_t a1, void *a2, const unsigned __int8 **a3, const unsigned __int8 *a4, const unsigned __int8 *a5)
{
  v10 = *(a1 + 40);
  v11 = *(a1 + 16);
  v13 = *(v11 + 8);
  v12 = *(v11 + 16);
  if (v12 && (v14 = *(v12 + 120)) != 0)
  {
    v15 = v14();
    if (!a2)
    {
LABEL_4:
      *a3 = v15;
      return 1;
    }
  }

  else
  {
    v15 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }
  }

  v17 = *a3;
  if (*a3 < v15)
  {
    ERR_put_error(6, 0, 100, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_rsa.cc", 216);
    return 0;
  }

  v18 = *(v10 + 24);
  v19 = *(v10 + 16);
  if (v18)
  {
    if (v19 != 1)
    {
      return 0;
    }

    v20 = *(v18 + 4);
    v59 = 0;
    v60 = 0;
    v58 = 0;
    if (*(v10 + 48))
    {
LABEL_23:
      result = RSA_add_pkcs1_prefix(&v60, &v59, &v58, *v18, &pkey_rsa_verify_recover(evp_pkey_ctx_st *,unsigned char *,unsigned long *,unsigned char const*,unsigned long)::kDummyHash, v20);
      if (!result)
      {
        return result;
      }

      v57 = 0;
      if (!rsa_verify_raw_no_self_test(v13, &v57, *(v10 + 48), v15, a4, a5, 1) || v57 != v59)
      {
LABEL_43:
        v54 = 1;
        if (!v58)
        {
          goto LABEL_50;
        }

        goto LABEL_46;
      }

      v27 = &v57[-v20];
      if (v57 == v20)
      {
LABEL_45:
        v54 = 0;
        if (!v58)
        {
          goto LABEL_50;
        }

LABEL_46:
        if (v60)
        {
          v56 = v60 - 8;
          v55 = *(v60 - 1);
          if (v55 != -8)
          {
            bzero(v56, v55 + 8);
          }

          free(v56);
        }

LABEL_50:
        if ((v54 & 1) == 0)
        {
          if (v20)
          {
            memcpy(a2, &v57[*(v10 + 48) - v20], v20);
          }

          *a3 = v20;
          return 1;
        }

        return 0;
      }

      v28 = *(v10 + 48);
      if (v27 < 8)
      {
        v29 = 0;
        v30 = 0;
        goto LABEL_39;
      }

      if (v27 >= 0x20)
      {
        v29 = v27 & 0xFFFFFFFFFFFFFFE0;
        v31 = v28 + 1;
        v32 = (v60 + 16);
        v33 = 0uLL;
        v34 = v27 & 0xFFFFFFFFFFFFFFE0;
        v35 = 0uLL;
        do
        {
          v33 = vorrq_s8(veorq_s8(v32[-1], v31[-1]), v33);
          v35 = vorrq_s8(veorq_s8(*v32, *v31), v35);
          v31 += 2;
          v32 += 2;
          v34 -= 32;
        }

        while (v34);
        v36 = vorrq_s8(v35, v33);
        *v36.i8 = vorr_s8(*v36.i8, *&vextq_s8(v36, v36, 8uLL));
        v37 = v36.i64[0] | HIDWORD(v36.i64[0]) | ((v36.i64[0] | HIDWORD(v36.i64[0])) >> 16);
        v30 = v37 | BYTE1(v37);
        if (v27 == v29)
        {
          goto LABEL_42;
        }

        if ((v27 & 0x18) == 0)
        {
LABEL_39:
          v47 = v29 + v20 - v57;
          v48 = v60 + v29;
          v49 = &v28->i8[v29];
          do
          {
            v51 = *v49++;
            v50 = v51;
            v52 = *v48++;
            v30 |= v52 ^ v50;
          }

          while (!__CFADD__(v47++, 1));
          goto LABEL_42;
        }
      }

      else
      {
        v30 = 0;
        v29 = 0;
      }

      v38 = v29;
      v29 = v27 & 0xFFFFFFFFFFFFFFF8;
      v39 = v30;
      v40 = &v28->i8[v38];
      v41 = (v60 + v38);
      v42 = v38 - (v27 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v43 = *v40++;
        v44 = v43;
        v45 = *v41++;
        v39 = vorr_s8(veor_s8(v45, v44), v39);
        v42 += 8;
      }

      while (v42);
      v46 = *&v39 | HIDWORD(*&v39) | ((*&v39 | HIDWORD(*&v39)) >> 16);
      v30 = v46 | BYTE1(v46);
      if (v27 != v29)
      {
        goto LABEL_39;
      }

LABEL_42:
      if (v30)
      {
        goto LABEL_43;
      }

      goto LABEL_45;
    }

    v21 = *(a1 + 16);
    if (v21 && (v22 = *(v21 + 16)) != 0 && (v23 = *(v22 + 120)) != 0)
    {
      v24 = v23();
      if (v24 > 0xFFFFFFF7)
      {
        goto LABEL_29;
      }

      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = malloc_type_malloc(v25 + 8, 0xB4E622C9uLL);
    if (v26)
    {
      *v26 = v25;
      *(v10 + 48) = v26 + 1;
      v18 = *(v10 + 24);
      goto LABEL_23;
    }

LABEL_29:
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    result = 0;
    *(v10 + 48) = 0;
    return result;
  }

  return rsa_verify_raw_no_self_test(v13, a3, a2, v17, a4, a5, v19);
}

uint64_t pkey_rsa_encrypt(uint64_t a1, char *a2, unint64_t *a3, const void *a4, size_t a5)
{
  v10 = *(a1 + 40);
  v11 = *(a1 + 16);
  v13 = *(v11 + 8);
  v12 = *(v11 + 16);
  if (v12 && (v14 = *(v12 + 120)) != 0)
  {
    v15 = v14();
    if (!a2)
    {
LABEL_4:
      *a3 = v15;
      return 1;
    }
  }

  else
  {
    v15 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }
  }

  v17 = *a3;
  if (*a3 < v15)
  {
    ERR_put_error(6, 0, 100, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_rsa.cc", 280);
    return 0;
  }

  v18 = *(v10 + 16);
  if (v18 != 4)
  {
    v25 = v13;
    v26 = a3;
    v27 = a2;
    v28 = a4;
    v29 = a5;
    goto LABEL_22;
  }

  v19 = *(v10 + 48);
  if (!v19)
  {
    v20 = *(a1 + 16);
    if (v20 && (v21 = *(v20 + 16)) != 0 && (v22 = *(v21 + 120)) != 0)
    {
      v23 = v22();
      if (v23 > 0xFFFFFFF7)
      {
        goto LABEL_25;
      }

      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v30 = malloc_type_malloc(v24 + 8, 0xB4E622C9uLL);
    if (v30)
    {
      *v30 = v24;
      v19 = v30 + 1;
      *(v10 + 48) = v19;
      goto LABEL_20;
    }

LABEL_25:
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    result = 0;
    *(v10 + 48) = 0;
    return result;
  }

LABEL_20:
  result = RSA_padding_add_PKCS1_OAEP_mgf1(v19, v15, a4, a5, *(v10 + 56), *(v10 + 64), *(v10 + 24), *(v10 + 32));
  if (!result)
  {
    return result;
  }

  v17 = *a3;
  v28 = *(v10 + 48);
  v25 = v13;
  v26 = a3;
  v27 = a2;
  v29 = v15;
  v18 = 3;
LABEL_22:

  return RSA_encrypt(v25, v26, v27, v17, v28, v29, v18);
}

uint64_t pkey_rsa_decrypt(uint64_t a1, void *a2, unint64_t *a3, const unsigned __int8 *a4, unint64_t a5)
{
  v10 = *(a1 + 40);
  v11 = *(a1 + 16);
  v13 = *(v11 + 8);
  v12 = *(v11 + 16);
  if (v12 && (v14 = *(v12 + 120)) != 0)
  {
    v15 = v14();
    if (!a2)
    {
LABEL_4:
      *a3 = v15;
      return 1;
    }
  }

  else
  {
    v15 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }
  }

  if (*a3 < v15)
  {
    ERR_put_error(6, 0, 100, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_rsa.cc", 311);
    return 0;
  }

  v17 = *(v10 + 16);
  if (v17 == 4)
  {
    v25 = 0;
    v18 = *(v10 + 48);
    if (v18)
    {
      goto LABEL_21;
    }

    v19 = *(a1 + 16);
    if (v19 && (v20 = *(v19 + 16)) != 0 && (v21 = *(v20 + 120)) != 0)
    {
      v22 = v21();
      if (v22 > 0xFFFFFFF7)
      {
        goto LABEL_23;
      }

      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = malloc_type_malloc(v23 + 8, 0xB4E622C9uLL);
    if (v24)
    {
      *v24 = v23;
      v18 = (v24 + 1);
      *(v10 + 48) = v24 + 1;
LABEL_21:
      result = RSA_decrypt(v13, &v25, v18, v15, a4, a5, 3);
      if (result)
      {
        return RSA_padding_check_PKCS1_OAEP_mgf1(a2, a3, v15, *(v10 + 48), v25, *(v10 + 56), *(v10 + 64), *(v10 + 24), *(v10 + 32)) != 0;
      }

      return result;
    }

LABEL_23:
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    result = 0;
    *(v10 + 48) = 0;
    return result;
  }

  return RSA_decrypt(v13, a3, a2, v15, a4, a5, v17);
}

uint64_t pkey_rsa_ctrl(uint64_t a1, int a2, int a3, void *a4)
{
  v4 = *(a1 + 40);
  if (a2 > 4101)
  {
    if (a2 <= 4104)
    {
      if ((a2 - 4103) >= 2)
      {
        if (a2 != 4102)
        {
          goto LABEL_49;
        }

        if (!a4)
        {
          return 0;
        }

        v11 = *(v4 + 8);
        if (v11)
        {
          v12 = *(v11 + 5);
          if ((v12 & 2) == 0)
          {
            v13 = *v11;
            if (*v11)
            {
              v14 = a4;
              v16 = *(v13 - 8);
              v15 = (v13 - 8);
              v17 = v16 + 8;
              if (v16 != -8)
              {
                bzero(v15, v17);
              }

              free(v15);
              v12 = *(v11 + 5);
              a4 = v14;
            }
          }

          if ((v12 & 1) == 0)
          {
            *v11 = 0;
            *(v4 + 8) = a4;
            return 1;
          }

          v24 = a4;
          v26 = *(v11 - 1);
          v25 = v11 - 1;
          v27 = v26 + 8;
          if (v26 != -8)
          {
            bzero(v25, v27);
          }

          free(v25);
          a4 = v24;
        }

        *(v4 + 8) = a4;
        return 1;
      }

      if (*(v4 + 16) != 4)
      {
        v6 = 115;
        v7 = 414;
        goto LABEL_67;
      }

      if (a2 != 4104)
      {
        goto LABEL_48;
      }
    }

    else
    {
      if ((a2 - 4105) >= 2)
      {
        if (a2 != 4107)
        {
          if (a2 == 4108)
          {
            if (*(v4 + 16) == 4)
            {
              v8 = *(v4 + 64);
              *a4 = *(v4 + 56);
              a4[1] = v8;
              return 1;
            }

            v6 = 115;
            v7 = 468;
            goto LABEL_67;
          }

          goto LABEL_49;
        }

        if (*(v4 + 16) != 4)
        {
          v6 = 115;
          v7 = 455;
          goto LABEL_67;
        }

        v18 = *(v4 + 56);
        if (v18)
        {
          v19 = a4;
          v21 = *(v18 - 8);
          v20 = (v18 - 8);
          v22 = v21 + 8;
          if (v21 != -8)
          {
            bzero(v20, v22);
          }

          free(v20);
          a4 = v19;
        }

        v23 = a4[1];
        *(v4 + 56) = *a4;
        *(v4 + 64) = v23;
        return 1;
      }

      if ((*(v4 + 16) | 2) != 6)
      {
        v6 = 113;
        v7 = 439;
        goto LABEL_67;
      }

      if (a2 != 4106)
      {
        *(v4 + 32) = a4;
        return 1;
      }

      v10 = *(v4 + 32);
      if (v10)
      {
LABEL_31:
        *a4 = v10;
        return 1;
      }
    }

LABEL_30:
    v10 = *(v4 + 24);
    goto LABEL_31;
  }

  if (a2 <= 4097)
  {
    if (a2 != 1)
    {
      if (a2 != 2)
      {
        if (a2 == 4097)
        {
          if (a3 > 6 || ((1 << a3) & 0x5A) == 0)
          {
            goto LABEL_11;
          }

          v5 = *(v4 + 24);
          if (a3 == 3 && v5)
          {
            ERR_put_error(6, 0, 115, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_rsa.cc", 337);
LABEL_11:
            v6 = 109;
            v7 = 365;
LABEL_67:
            ERR_put_error(6, 0, v6, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_rsa.cc", v7);
            return 0;
          }

          if (a3 == 4)
          {
            if ((*(a1 + 32) & 0xC0) == 0)
            {
              goto LABEL_11;
            }
          }

          else
          {
            if (a3 != 6)
            {
LABEL_79:
              *(v4 + 16) = a3;
              return 1;
            }

            if ((*(a1 + 32) & 0x18) == 0)
            {
              goto LABEL_11;
            }
          }

          if (!v5)
          {
            v28 = a3;
            v29 = EVP_sha1();
            a3 = v28;
            *(v4 + 24) = v29;
          }

          goto LABEL_79;
        }

LABEL_49:
        v6 = 101;
        v7 = 475;
        goto LABEL_67;
      }

      goto LABEL_30;
    }

    if (a4 && *(v4 + 16) == 3)
    {
      v6 = 115;
      v7 = 337;
      goto LABEL_67;
    }

LABEL_48:
    *(v4 + 24) = a4;
    return 1;
  }

  if ((a2 - 4099) < 2)
  {
    if (*(v4 + 16) != 6)
    {
      v6 = 116;
      v7 = 382;
      goto LABEL_67;
    }

    if (a2 == 4100)
    {
      *a4 = *(v4 + 40);
      return 1;
    }

    if (a3 < -2)
    {
      return 0;
    }

    *(v4 + 40) = a3;
    return 1;
  }

  else
  {
    if (a2 == 4098)
    {
      *a4 = *(v4 + 16);
      return 1;
    }

    if (a2 != 4101)
    {
      goto LABEL_49;
    }

    if (a3 <= 255)
    {
      v6 = 112;
      v7 = 397;
      goto LABEL_67;
    }

    *v4 = a3;
    return 1;
  }
}

uint64_t rsa_pub_decode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v12 = 0;
  if (cbs_get_any_asn1_element(a2, &v10, &v12, &v13, 0, 0, 0) && v12 == 5 && v11 >= v13 && (v10 += v13, (v11 -= v13) == 0) && !*(a2 + 8))
  {
    v7 = RSA_parse_public_key(a3);
    if (v7 && !*(a3 + 8))
    {
      v8 = *(a1 + 16);
      if (v8)
      {
        v9 = *(v8 + 160);
        if (v9)
        {
          v9(a1);
        }
      }

      *(a1 + 4) = 6;
      *(a1 + 8) = v7;
      *(a1 + 16) = &rsa_asn1_meth;
      return 1;
    }

    else
    {
      ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_rsa_asn1.cc", 61);
      RSA_free(v7);
      return 0;
    }
  }

  else
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_rsa_asn1.cc", 55);
    return 0;
  }
}

uint64_t rsa_pub_encode(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (CBB_add_asn1(a1, v12, 536870928) && CBB_add_asn1(v12, &v8, 536870928))
  {
    if (CBB_add_asn1(&v8, v13, 6) && (v7[0] = 0, CBB_add_space(v13, v7, 9)) && (v4 = v7[0], *v7[0] = qword_2882A5B44, *(v4 + 8) = byte_2882A5B4C, CBB_flush(&v8)))
    {
      if (CBB_add_asn1(&v8, v13, 5))
      {
        if (CBB_add_asn1(v12, v7, 3))
        {
          v14 = 0;
          if (CBB_add_space(v7, &v14, 1))
          {
            *v14 = 0;
            if (RSA_marshal_public_key(v7, v3))
            {
              if (CBB_flush(a1))
              {
                return 1;
              }
            }
          }
        }
      }
    }

    else
    {
      if (v9)
      {
        v6 = (v10 + 24);
      }

      else
      {
        v6 = &v11;
      }

      *v6 |= 2u;
      v8 = 0;
    }
  }

  ERR_put_error(6, 0, 105, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_rsa_asn1.cc", 41);
  return 0;
}

BOOL rsa_pub_cmp(const evp_pkey_st *a1, const evp_pkey_st *a2)
{
  v2 = *&a1->references;
  v3 = *&a2->references;
  v4 = *(v3 + 8);
  v5 = *(v2 + 8);
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (v4 | v5)
    {
      return 0;
    }
  }

  else
  {
    neg = v4->neg;
    if (neg != v5->neg)
    {
      return 0;
    }

    v8 = BN_ucmp(v4, v5);
    if (neg ? -v8 : v8)
    {
      return 0;
    }
  }

  v11 = *(v3 + 16);
  v12 = *(v2 + 16);
  if (v11)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = v12 != 0;
    if (v11)
    {
      v14 = -1;
    }

    return v14 == 0;
  }

  else
  {
    v15 = v11->neg;
    if (v15 == v12->neg)
    {
      v16 = BN_ucmp(v11, v12);
      if (v15)
      {
        v17 = -v16;
      }

      else
      {
        v17 = v16;
      }

      return v17 == 0;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t rsa_priv_decode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v12 = 0;
  if (cbs_get_any_asn1_element(a2, &v10, &v12, &v13, 0, 0, 0) && v12 == 5 && v11 >= v13 && (v10 += v13, (v11 -= v13) == 0) && !*(a2 + 8))
  {
    v7 = RSA_parse_private_key(a3);
    if (v7 && !*(a3 + 8))
    {
      v8 = *(a1 + 16);
      if (v8)
      {
        v9 = *(v8 + 160);
        if (v9)
        {
          v9(a1);
        }
      }

      *(a1 + 4) = 6;
      *(a1 + 8) = v7;
      *(a1 + 16) = &rsa_asn1_meth;
      return 1;
    }

    else
    {
      ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_rsa_asn1.cc", 107);
      RSA_free(v7);
      return 0;
    }
  }

  else
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_rsa_asn1.cc", 101);
    return 0;
  }
}

uint64_t rsa_priv_encode(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (CBB_add_asn1(a1, v12, 536870928) && CBB_add_asn1_uint64_with_tag(v12, 0, 2) && CBB_add_asn1(v12, &v8, 536870928))
  {
    if (CBB_add_asn1(&v8, v13, 6) && (v7[0] = 0, CBB_add_space(v13, v7, 9)) && (v4 = v7[0], *v7[0] = qword_2882A5B44, *(v4 + 8) = byte_2882A5B4C, CBB_flush(&v8)))
    {
      if (CBB_add_asn1(&v8, v13, 5) && CBB_add_asn1(v12, v7, 4) && RSA_marshal_private_key(v7, v3) && CBB_flush(a1))
      {
        return 1;
      }
    }

    else
    {
      if (v9)
      {
        v6 = (v10 + 24);
      }

      else
      {
        v6 = &v11;
      }

      *v6 |= 2u;
      v8 = 0;
    }
  }

  ERR_put_error(6, 0, 105, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_rsa_asn1.cc", 89);
  return 0;
}

uint64_t rsa_opaque(const evp_pkey_st *a1)
{
  v1 = **&a1->references;
  if (v1)
  {
    return *(v1 + 64) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t int_rsa_size(const evp_pkey_st *a1)
{
  v1 = *(*&a1->references + 8);
  v2 = *(v1 + 2);
  if (v2 < 1)
  {
    if (!v2)
    {
      return 0;
    }

    v3 = *v1;
  }

  else
  {
    v3 = *v1;
    while (!*(v3 - 8 + 8 * v2))
    {
      v4 = __OFSUB__(v2--, 1);
      if ((v2 < 0) ^ v4 | (v2 == 0))
      {
        return 0;
      }
    }
  }

  v5 = v2 - 1;
  v6 = *(v3 + 8 * v5);
  v7 = v6 != 0;
  v8 = HIDWORD(v6) != 0;
  if (HIDWORD(v6))
  {
    v6 >>= 32;
  }

  v9 = v6 >> 16 != 0;
  if (v6 >> 16)
  {
    v6 >>= 16;
  }

  v10 = v6 > 0xFF;
  if (v6 > 0xFF)
  {
    v6 >>= 8;
  }

  v11 = v6 > 0xF;
  if (v6 > 0xF)
  {
    v6 >>= 4;
  }

  v12 = v6 > 3;
  if (v6 > 3)
  {
    v6 >>= 2;
  }

  v13 = v7 | (v5 << 6) | (32 * v8) | (16 * v9) | (8 * v10) | (4 * v11) | (2 * v12);
  if (v6 > 1)
  {
    ++v13;
  }

  return (v13 + 7) >> 3;
}

uint64_t rsa_bits(const evp_pkey_st *a1)
{
  v1 = *(*&a1->references + 8);
  v2 = *(v1 + 2);
  if (v2 < 1)
  {
    if (!v2)
    {
      return 0;
    }

    v3 = *v1;
  }

  else
  {
    v3 = *v1;
    while (!*(v3 - 8 + 8 * v2))
    {
      v4 = __OFSUB__(v2--, 1);
      if ((v2 < 0) ^ v4 | (v2 == 0))
      {
        return 0;
      }
    }
  }

  v5 = v2 - 1;
  v6 = *(v3 + 8 * v5);
  v7 = v6 != 0;
  v8 = HIDWORD(v6) != 0;
  if (HIDWORD(v6))
  {
    v6 >>= 32;
  }

  v9 = v6 >> 16 != 0;
  if (v6 >> 16)
  {
    v6 >>= 16;
  }

  v10 = v6 > 0xFF;
  if (v6 > 0xFF)
  {
    v6 >>= 8;
  }

  v11 = v6 > 0xF;
  if (v6 > 0xF)
  {
    v6 >>= 4;
  }

  v12 = v6 > 3;
  if (v6 > 3)
  {
    v6 >>= 2;
  }

  v13 = v7 | (v5 << 6) | (32 * v8) | (16 * v9) | (8 * v10) | (4 * v11) | (2 * v12);
  if (v6 <= 1)
  {
    return v13;
  }

  else
  {
    return v13 + 1;
  }
}

uint64_t pkey_x25519_keygen(uint64_t a1, uint64_t a2)
{
  v3 = malloc_type_malloc(0x49uLL, 0xB4E622C9uLL);
  if (v3)
  {
    v4 = v3;
    *v3 = 65;
    v5 = v3 + 8;
    v6 = *(a2 + 16);
    if (v6)
    {
      v7 = *(v6 + 160);
      if (v7)
      {
        v7(a2);
        *(a2 + 8) = 0;
      }
    }

    *(a2 + 16) = &x25519_asn1_meth;
    *(a2 + 4) = x25519_asn1_meth;
    X25519_keypair(v5, v4 + 40);
    v4[72] = 1;
    v8 = *(a2 + 8);
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

    *(a2 + 8) = v5;
    return 1;
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }
}

uint64_t pkey_x25519_derive(uint64_t a1, int8x16_t *a2, void *a3)
{
  v3 = *(a1 + 16);
  if (!v3 || (v4 = *(a1 + 24)) == 0)
  {
    ERR_put_error(6, 0, 117, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_x25519.cc", 47);
    return 0;
  }

  v5 = *(v3 + 8);
  v6 = *(v4 + 8);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    ERR_put_error(6, 0, 117, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_x25519.cc", 56);
    return 0;
  }

  if (*(v5 + 64))
  {
    if (!a2)
    {
      goto LABEL_16;
    }

    if (*a3 <= 0x1FuLL)
    {
      ERR_put_error(6, 0, 100, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_x25519.cc", 67);
      return 0;
    }

    v9 = a3;
    v10 = X25519(a2, (v5 + 32), v6);
    a3 = v9;
    if (!v10)
    {
      ERR_put_error(6, 0, 134, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_x25519.cc", 71);
      return 0;
    }

    else
    {
LABEL_16:
      *a3 = 32;
      return 1;
    }
  }

  else
  {
    ERR_put_error(6, 0, 130, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_x25519.cc", 61);
    return 0;
  }
}

uint64_t pkey_x25519_ctrl(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    return 1;
  }

  ERR_put_error(6, 0, 101, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_x25519.cc", 88);
  return 0;
}

uint64_t x25519_pub_decode(uint64_t a1, uint64_t a2, __int128 **a3)
{
  if (*(a2 + 8))
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_x25519_asn1.cc", 135);
    return 0;
  }

  else if (a3[1] == 32)
  {
    v5 = *a3;
    v6 = malloc_type_malloc(0x49uLL, 0xB4E622C9uLL);
    if (v6)
    {
      *v6 = 65;
      v7 = v6 + 8;
      v8 = *v5;
      *(v6 + 24) = v5[1];
      *(v6 + 8) = v8;
      v6[72] = 0;
      v9 = a1;
      v10 = *(a1 + 8);
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
        v9 = a1;
      }

      *(v9 + 8) = v7;
      return 1;
    }

    else
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      return 0;
    }
  }

  else
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_x25519_asn1.cc", 54);
    return 0;
  }
}

uint64_t x25519_pub_encode(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (CBB_add_asn1(a1, v13, 536870928) && CBB_add_asn1(v13, &v9, 536870928))
  {
    if (CBB_add_asn1(&v9, v14, 6) && (v15 = 0, CBB_add_space(v14, &v15, 3)) && (v4 = v15, *v15 = word_2882A5C64, v4[2] = byte_2882A5C66, CBB_flush(&v9)))
    {
      if (CBB_add_asn1(v13, v14, 3))
      {
        v15 = 0;
        if (CBB_add_space(v14, &v15, 1))
        {
          *v15 = 0;
          v15 = 0;
          if (CBB_add_space(v14, &v15, 32))
          {
            v5 = v15;
            v6 = v3[1];
            *v15 = *v3;
            *(v5 + 1) = v6;
            if (CBB_flush(a1))
            {
              return 1;
            }
          }
        }
      }
    }

    else
    {
      if (v10)
      {
        v8 = (v11 + 24);
      }

      else
      {
        v8 = &v12;
      }

      *v8 |= 2u;
      v9 = 0;
    }
  }

  ERR_put_error(6, 0, 105, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_x25519_asn1.cc", 155);
  return 0;
}

BOOL x25519_pub_cmp(const evp_pkey_st *a1, const evp_pkey_st *a2)
{
  v2 = *&a1->references;
  v3 = *&a2->references;
  v4 = *v2;
  v5 = v2[1];
  v6 = *v3;
  v7 = v3[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v3[2];
  v10 = v3[3];
  return v4 == v6 && v5 == v7 && v9 == v11 && v8 == v10;
}

uint64_t x25519_priv_decode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) || (v30[0] = 0, LODWORD(v27[0]) = 0, !cbs_get_any_asn1_element(a3, &v22, v27, v30, 0, 0, 0)) || LODWORD(v27[0]) != 4 || (v10 = v23 - v30[0], v23 < v30[0]) || (v11 = (v22 + v30[0]), v22 += v30[0], v23 -= v30[0], *(a3 + 8)))
  {
    v3 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_x25519_asn1.cc";
    v4 = 6;
    v5 = 102;
    v6 = 176;
LABEL_3:
    ERR_put_error(v4, 0, v5, v3, v6);
    return 0;
  }

  if (v10 != 32)
  {
    v3 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_x25519_asn1.cc";
    v4 = 6;
    v5 = 102;
    v6 = 33;
    goto LABEL_3;
  }

  v12 = malloc_type_malloc(0x49uLL, 0xB4E622C9uLL);
  if (!v12)
  {
    v3 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v4 = 14;
    v5 = 65;
    v6 = 217;
    goto LABEL_3;
  }

  *v12 = 65;
  v13 = v12 + 8;
  v14 = *v11;
  *(v12 + 56) = v11[1];
  *(v12 + 40) = v14;
  v15 = v11[1];
  v37 = *v11;
  v38 = v15;
  LOBYTE(v37) = v37 & 0xF8;
  HIBYTE(v38) = HIBYTE(v15) & 0x3F | 0x40;
  v16 = v12;
  x25519_ge_scalarmult_base(v30, &v37);
  *v27 = vaddq_s64(v31, v34);
  v28 = vaddq_s64(v32, v35);
  v29 = v33 + v36;
  v25[0] = vaddq_s64(vsubq_s64(v34, v31), xmmword_273BA9E40);
  v25[1] = vaddq_s64(vsubq_s64(v35, v32), vdupq_n_s64(0xFFFFFFFFFFFFEuLL));
  v26 = v36 - v33 + 0xFFFFFFFFFFFFELL;
  fe_loose_invert(v24, v25);
  fe_mul_impl(v24, v27, v24);
  fe_tobytes(v13, v24);
  v16[72] = 1;
  v17 = a1;
  v18 = *(a1 + 8);
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
    v17 = a1;
  }

  *(v17 + 8) = v13;
  return 1;
}

uint64_t x25519_priv_encode(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(v2 + 64))
  {
    if (CBB_add_asn1(a1, v16, 536870928) && CBB_add_asn1_uint64_with_tag(v16, 0, 2) && CBB_add_asn1(v16, &v12, 536870928))
    {
      if (CBB_add_asn1(&v12, v17, 6) && (v11[0] = 0, CBB_add_space(v17, v11, 3)) && (v4 = v11[0], *v11[0] = word_2882A5C64, *(v4 + 2) = byte_2882A5C66, CBB_flush(&v12)))
      {
        if (CBB_add_asn1(v16, v17, 4))
        {
          if (CBB_add_asn1(v17, v11, 4))
          {
            v18 = 0;
            if (CBB_add_space(v11, &v18, 32))
            {
              v5 = v18;
              v6 = *(v2 + 48);
              *v18 = *(v2 + 32);
              v5[1] = v6;
              if (CBB_flush(a1))
              {
                return 1;
              }
            }
          }
        }
      }

      else
      {
        if (v13)
        {
          v10 = (v14 + 24);
        }

        else
        {
          v10 = &v15;
        }

        *v10 |= 2u;
        v12 = 0;
      }
    }

    v8 = 105;
    v9 = 203;
  }

  else
  {
    v8 = 130;
    v9 = 186;
  }

  ERR_put_error(6, 0, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_x25519_asn1.cc", v9);
  return 0;
}

uint64_t x25519_set_priv_raw(evp_pkey_st *a1, const unsigned __int8 *a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  if (a3 != 32)
  {
    v15 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_x25519_asn1.cc";
    v16 = 6;
    v17 = 102;
    v18 = 33;
LABEL_10:
    ERR_put_error(v16, 0, v17, v15, v18);
    return 0;
  }

  v5 = malloc_type_malloc(0x49uLL, 0xB4E622C9uLL);
  if (!v5)
  {
    v15 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v16 = 14;
    v17 = 65;
    v18 = 217;
    goto LABEL_10;
  }

  *v5 = 65;
  v6 = v5 + 8;
  v7 = *a2;
  *(v5 + 56) = *(a2 + 1);
  *(v5 + 40) = v7;
  v8 = *(a2 + 1);
  v32 = *a2;
  v33 = v8;
  LOBYTE(v32) = v32 & 0xF8;
  HIBYTE(v33) = HIBYTE(v8) & 0x3F | 0x40;
  v9 = v5;
  x25519_ge_scalarmult_base(v25, &v32);
  *v22 = vaddq_s64(v26, v29);
  v23 = vaddq_s64(v27, v30);
  v24 = v28 + v31;
  v20[0] = vaddq_s64(vsubq_s64(v29, v26), xmmword_273BA9E40);
  v20[1] = vaddq_s64(vsubq_s64(v30, v27), vdupq_n_s64(0xFFFFFFFFFFFFEuLL));
  v21 = v31 - v28 + 0xFFFFFFFFFFFFELL;
  fe_loose_invert(v19, v20);
  fe_mul_impl(v19, v22, v19);
  fe_tobytes(v6, v19);
  v9[72] = 1;
  v10 = *&a1->references;
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

  *&a1->references = v6;
  return 1;
}

uint64_t x25519_set_pub_raw(evp_pkey_st *a1, const unsigned __int8 *a2, uint64_t a3)
{
  if (a3 == 32)
  {
    v5 = malloc_type_malloc(0x49uLL, 0xB4E622C9uLL);
    if (v5)
    {
      *v5 = 65;
      v6 = v5 + 8;
      v7 = *a2;
      *(v5 + 24) = *(a2 + 1);
      *(v5 + 8) = v7;
      v5[72] = 0;
      v8 = *&a1->references;
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

      *&a1->references = v6;
      return 1;
    }

    else
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      return 0;
    }
  }

  else
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_x25519_asn1.cc", 54);
    return 0;
  }
}

uint64_t x25519_get_priv_raw(const evp_pkey_st *a1, unsigned __int8 *a2, unint64_t *a3)
{
  v3 = *&a1->references;
  if (*(v3 + 64))
  {
    if (a2)
    {
      if (*a3 <= 0x1F)
      {
        ERR_put_error(6, 0, 100, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_x25519_asn1.cc", 86);
        return 0;
      }

      v5 = *(v3 + 48);
      *a2 = *(v3 + 32);
      *(a2 + 1) = v5;
    }

    *a3 = 32;
    return 1;
  }

  else
  {
    ERR_put_error(6, 0, 130, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_x25519_asn1.cc", 76);
    return 0;
  }
}

uint64_t x25519_get_pub_raw(const evp_pkey_st *a1, unsigned __int8 *a2, unint64_t *a3)
{
  if (a2)
  {
    if (*a3 <= 0x1F)
    {
      ERR_put_error(6, 0, 100, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_x25519_asn1.cc", 104);
      return 0;
    }

    v4 = *&a1->references;
    v5 = v4[1];
    *a2 = *v4;
    *(a2 + 1) = v5;
  }

  *a3 = 32;
  return 1;
}

uint64_t x25519_set1_tls_encodedpoint(evp_pkey_st *a1, const unsigned __int8 *a2, uint64_t a3)
{
  if (a3 == 32)
  {
    v5 = malloc_type_malloc(0x49uLL, 0xB4E622C9uLL);
    if (v5)
    {
      *v5 = 65;
      v6 = v5 + 8;
      v7 = *a2;
      *(v5 + 24) = *(a2 + 1);
      *(v5 + 8) = v7;
      v5[72] = 0;
      v8 = *&a1->references;
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

      *&a1->references = v6;
      return 1;
    }

    else
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      return 0;
    }
  }

  else
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_x25519_asn1.cc", 54);
    return 0;
  }
}

uint64_t x25519_get1_tls_encodedpoint(const evp_pkey_st *a1, unsigned __int8 **a2)
{
  v2 = *&a1->references;
  if (v2)
  {
    v4 = malloc_type_malloc(0x28uLL, 0xB4E622C9uLL);
    if (v4)
    {
      *v4 = 32;
      v5 = (v4 + 8);
      v6 = *v2;
      *(v4 + 24) = v2[1];
      *(v4 + 8) = v6;
    }

    else
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      v5 = 0;
    }

    *a2 = v5;
    return 32 * (v5 != 0);
  }

  else
  {
    ERR_put_error(6, 0, 120, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/p_x25519_asn1.cc", 122);
    return 0;
  }
}

void x25519_free(evp_pkey_st *a1)
{
  v2 = *&a1->references;
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

  *&a1->references = 0;
}

BOOL PKCS5_PBKDF2_HMAC(void *key, int len, uint64_t a3, uint64_t a4, unsigned int a5, EVP_MD *md, size_t a7, int8x16_t *a8)
{
  v65 = *MEMORY[0x277D85DE8];
  memset(&ctx, 0, 104);
  HMAC_Init_ex(&ctx, key, len, md, 0);
  if (!v12)
  {
LABEL_64:
    v45 = 0;
    goto LABEL_65;
  }

  v62 = a5;
  if (a7)
  {
    pkey_type = md->pkey_type;
    if (a5 >= 2)
    {
      v14 = 1;
      while (1)
      {
        if (pkey_type >= a7)
        {
          v15 = a7;
        }

        else
        {
          v15 = pkey_type;
        }

        v59 = v14;
        v63 = bswap32(v14);
        HMAC_Init_ex(&ctx, 0, 0, 0, 0);
        if (!v16)
        {
          goto LABEL_64;
        }

        (ctx.md_ctx.digest->init)(&ctx.md_ctx, a3, a4);
        (ctx.md_ctx.digest->init)(&ctx.md_ctx, &v63, 4);
        (ctx.md_ctx.digest->update)(&ctx.md_ctx, &ctx.key[68]);
        v17 = ctx.md_ctx.digest->pkey_type;
        final_high = HIDWORD(ctx.md_ctx.digest->final);
        if (final_high)
        {
          bzero(ctx.md_ctx.engine, final_high);
        }

        EVP_MD_CTX_copy_ex(&ctx.md_ctx, &ctx.o_ctx);
        (ctx.md_ctx.digest->init)(&ctx.md_ctx, &ctx.key[68], v17);
        (ctx.md_ctx.digest->update)(&ctx.md_ctx, &ctx.key[4]);
        v19 = HIDWORD(ctx.md_ctx.digest->final);
        if (v19)
        {
          bzero(ctx.md_ctx.engine, v19);
        }

        v20 = v62 - 1;
        if (pkey_type)
        {
          break;
        }

        do
        {
          HMAC_Init_ex(&ctx, 0, 0, 0, 0);
          if (!v41)
          {
            goto LABEL_64;
          }

          (ctx.md_ctx.digest->init)(&ctx.md_ctx, &ctx.key[4], 0);
          (ctx.md_ctx.digest->update)(&ctx.md_ctx, &ctx.key[68]);
          v42 = ctx.md_ctx.digest->pkey_type;
          v43 = HIDWORD(ctx.md_ctx.digest->final);
          if (v43)
          {
            bzero(ctx.md_ctx.engine, v43);
          }

          EVP_MD_CTX_copy_ex(&ctx.md_ctx, &ctx.o_ctx);
          (ctx.md_ctx.digest->init)(&ctx.md_ctx, &ctx.key[68], v42);
          (ctx.md_ctx.digest->update)(&ctx.md_ctx, &ctx.key[4]);
          v44 = HIDWORD(ctx.md_ctx.digest->final);
          if (v44)
          {
            bzero(ctx.md_ctx.engine, v44);
          }

          --v20;
        }

        while (v20);
LABEL_44:
        a8 = (a8 + v15);
        v14 = v59 + 1;
        a7 -= v15;
        if (!a7)
        {
          goto LABEL_45;
        }
      }

      memcpy(a8, &ctx.key[4], v15);
      if (v15 <= 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = v15;
      }

      v22 = 1;
      while (1)
      {
        HMAC_Init_ex(&ctx, 0, 0, 0, 0);
        if (!v23)
        {
          goto LABEL_64;
        }

        (ctx.md_ctx.digest->init)(&ctx.md_ctx, &ctx.key[4], pkey_type);
        (ctx.md_ctx.digest->update)(&ctx.md_ctx, &ctx.key[68]);
        v24 = ctx.md_ctx.digest->pkey_type;
        v25 = HIDWORD(ctx.md_ctx.digest->final);
        if (v25)
        {
          bzero(ctx.md_ctx.engine, v25);
        }

        EVP_MD_CTX_copy_ex(&ctx.md_ctx, &ctx.o_ctx);
        (ctx.md_ctx.digest->init)(&ctx.md_ctx, &ctx.key[68], v24);
        (ctx.md_ctx.digest->update)(&ctx.md_ctx, &ctx.key[4]);
        v26 = HIDWORD(ctx.md_ctx.digest->final);
        if (v26)
        {
          bzero(ctx.md_ctx.engine, v26);
        }

        if (v15 >= 8)
        {
          if (v15 < 0x20)
          {
            v28 = 0;
LABEL_32:
            v33 = &ctx.key[v28 + 4];
            v34 = &a8->i8[v28];
            v35 = v28 - (v21 & 0xFFFFFFFFFFFFFFF8);
            do
            {
              v36 = *v33;
              v33 += 8;
              *v34 = veor_s8(*v34, v36);
              ++v34;
              v35 += 8;
            }

            while (v35);
            v27 = v21 & 0xFFFFFFF8;
            if (v15 == v27)
            {
              goto LABEL_18;
            }

            goto LABEL_35;
          }

          v29 = v21 & 0xFFFFFFE0;
          v31 = &ctx.key[20];
          v30 = a8 + 1;
          do
          {
            v32 = veorq_s8(*v30, *v31);
            v30[-1] = veorq_s8(v30[-1], v31[-1]);
            *v30 = v32;
            v31 += 2;
            v30 += 2;
            v29 -= 32;
          }

          while (v29);
          if (v15 == (v21 & 0xFFFFFFE0))
          {
            goto LABEL_18;
          }

          v28 = v21 & 0xFFFFFFE0;
          v27 = v28;
          if ((v21 & 0x18) != 0)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v27 = 0;
        }

LABEL_35:
        v37 = v21 - v27;
        v38 = &a8->i8[v27];
        v39 = &ctx.key[v27 + 4];
        do
        {
          v40 = *v39++;
          *v38++ ^= v40;
          --v37;
        }

        while (v37);
LABEL_18:
        if (++v22 == v62)
        {
          goto LABEL_44;
        }
      }
    }

    if (pkey_type)
    {
      v46 = 1;
      while (1)
      {
        v47 = pkey_type >= a7 ? a7 : pkey_type;
        v63 = bswap32(v46);
        HMAC_Init_ex(&ctx, 0, 0, 0, 0);
        if (!v48)
        {
          break;
        }

        (ctx.md_ctx.digest->init)(&ctx.md_ctx, a3, a4);
        (ctx.md_ctx.digest->init)(&ctx.md_ctx, &v63, 4);
        (ctx.md_ctx.digest->update)(&ctx.md_ctx, &ctx.key[68]);
        v49 = ctx.md_ctx.digest->pkey_type;
        v50 = HIDWORD(ctx.md_ctx.digest->final);
        if (v50)
        {
          bzero(ctx.md_ctx.engine, v50);
        }

        EVP_MD_CTX_copy_ex(&ctx.md_ctx, &ctx.o_ctx);
        (ctx.md_ctx.digest->init)(&ctx.md_ctx, &ctx.key[68], v49);
        (ctx.md_ctx.digest->update)(&ctx.md_ctx, &ctx.key[4]);
        v51 = HIDWORD(ctx.md_ctx.digest->final);
        if (v51)
        {
          bzero(ctx.md_ctx.engine, v51);
        }

        memcpy(a8, &ctx.key[4], v47);
        a8 = (a8 + v47);
        ++v46;
        a7 -= v47;
        if (!a7)
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
      v63 = 0x1000000;
      HMAC_Init_ex(&ctx, 0, 0, 0, 0);
      if (v52)
      {
        v53 = 2;
        do
        {
          (ctx.md_ctx.digest->init)(&ctx.md_ctx, a3, a4);
          (ctx.md_ctx.digest->init)(&ctx.md_ctx, &v63, 4);
          (ctx.md_ctx.digest->update)(&ctx.md_ctx, &ctx.key[68]);
          v55 = ctx.md_ctx.digest->pkey_type;
          v56 = HIDWORD(ctx.md_ctx.digest->final);
          if (v56)
          {
            bzero(ctx.md_ctx.engine, v56);
          }

          EVP_MD_CTX_copy_ex(&ctx.md_ctx, &ctx.o_ctx);
          (ctx.md_ctx.digest->init)(&ctx.md_ctx, &ctx.key[68], v55);
          (ctx.md_ctx.digest->update)(&ctx.md_ctx, &ctx.key[4]);
          v57 = HIDWORD(ctx.md_ctx.digest->final);
          if (v57)
          {
            bzero(ctx.md_ctx.engine, v57);
          }

          v63 = bswap32(v53);
          HMAC_Init_ex(&ctx, 0, 0, 0, 0);
          ++v53;
        }

        while (v54);
      }
    }

    goto LABEL_64;
  }

LABEL_45:
  v45 = v62 != 0;
LABEL_65:
  HMAC_CTX_cleanup(&ctx);
  return v45;
}

int PEM_bytes_read_bio(unsigned __int8 **pdata, uint64_t *plen, char **pnm, const char *name, BIO *bp, pem_password_cb *cb, void *u)
{
  v45 = *MEMORY[0x277D85DE8];
  header = 0;
  namea = 0;
  len = 0;
  data = 0;
  if (PEM_read_bio(bp, &namea, &header, &data, &len))
  {
    while (1)
    {
      v9 = namea;
      if (!strcmp(namea, name))
      {
        break;
      }

      if (!strcmp(name, "ANY PRIVATE KEY"))
      {
        if (!strcmp(v9, "ENCRYPTED PRIVATE KEY") || !strcmp(v9, "PRIVATE KEY") || !strcmp(v9, "RSA PRIVATE KEY") || !strcmp(v9, "EC PRIVATE KEY") || !strcmp(v9, "DSA PRIVATE KEY"))
        {
          break;
        }
      }

      else
      {
        v10 = strcmp(v9, "X509 CERTIFICATE");
        if (!v10 && !strcmp(name, "CERTIFICATE"))
        {
          break;
        }

        if (!strcmp(v9, "NEW CERTIFICATE REQUEST") && !strcmp(name, "CERTIFICATE REQUEST"))
        {
          break;
        }

        v11 = strcmp(v9, "CERTIFICATE");
        if (!v11 && !strcmp(name, "TRUSTED CERTIFICATE"))
        {
          break;
        }

        if (!v10 && !strcmp(name, "TRUSTED CERTIFICATE") || !v11 && !strcmp(name, "PKCS7") || !strcmp(v9, "PKCS #7 SIGNED DATA") && !strcmp(name, "PKCS7"))
        {
          break;
        }
      }

      if (v9)
      {
        v13 = *(v9 - 1);
        v12 = v9 - 8;
        v14 = v13 + 8;
        if (v13 != -8)
        {
          bzero(v12, v14);
        }

        free(v12);
      }

      if (header)
      {
        v16 = header - 8;
        v15 = *(header - 1);
        if (v15 != -8)
        {
          bzero(v16, v15 + 8);
        }

        free(v16);
      }

      if (data)
      {
        v18 = data - 8;
        v17 = *(data - 1);
        if (v17 != -8)
        {
          bzero(v18, v17 + 8);
        }

        free(v18);
      }

      if (!PEM_read_bio(bp, &namea, &header, &data, &len))
      {
        goto LABEL_44;
      }
    }

    v19 = header;
    if (PEM_get_EVP_CIPHER_INFO(header, &cipher) && (v20 = data, PEM_do_header(&cipher, data, &len, cb, u)))
    {
      *pdata = v20;
      *plen = len;
      if (pnm)
      {
        *pnm = v9;
        if (v19)
        {
          v22 = *(v19 - 1);
          v21 = v19 - 8;
          v23 = v22 + 8;
          if (v22 != -8)
          {
            bzero(v21, v23);
          }

          free(v21);
        }

        return 1;
      }

      v24 = 1;
      v25 = 1;
      if (!v9)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v24 = 0;
      v25 = 0;
      if (!v9)
      {
LABEL_51:
        if (v19)
        {
          v30 = *(v19 - 1);
          v29 = v19 - 8;
          v31 = v30 + 8;
          if (v30 != -8)
          {
            bzero(v29, v31);
          }

          free(v29);
        }

        if ((v25 & 1) == 0 && data)
        {
          v33 = data - 8;
          v32 = *(data - 1);
          if (v32 != -8)
          {
            bzero(v33, v32 + 8);
          }

          free(v33);
        }

        return v24;
      }
    }

    v27 = *(v9 - 1);
    v26 = v9 - 8;
    v28 = v27 + 8;
    if (v27 != -8)
    {
      bzero(v26, v28);
    }

    free(v26);
    goto LABEL_51;
  }

LABEL_44:
  if ((ERR_peek_error() & 0xFF000FFF) == 0x900006E)
  {
    ERR_add_error_data(2, "Expecting: ", name);
  }

  return 0;
}

int PEM_read_bio(BIO *bp, char **name, char **header, unsigned __int8 **data, uint64_t *len)
{
  *&ctx.enc_data[48] = *MEMORY[0x277D85DE8];
  outl = 0;
  v10 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (v10)
  {
    *v10 = 24;
    v10[1] = 0;
    v11 = v10 + 1;
    v10[2] = 0;
    v10[3] = 0;
    v12 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_28:
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v13 = 0;
    v14 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
    if (v14)
    {
      goto LABEL_4;
    }

LABEL_29:
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v15 = 0;
    v16 = v13 == 0;
    goto LABEL_30;
  }

  ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  v11 = 0;
  v12 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (!v12)
  {
    goto LABEL_28;
  }

LABEL_3:
  *v12 = 24;
  v12[1] = 0;
  v13 = v12 + 1;
  v12[2] = 0;
  v12[3] = 0;
  v14 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (!v14)
  {
    goto LABEL_29;
  }

LABEL_4:
  v111 = len;
  *v14 = 24;
  v14[1] = 0;
  v15 = v14 + 1;
  v14[2] = 0;
  v14[3] = 0;
  v16 = v13 == 0;
  if (!v11 || !v13)
  {
LABEL_30:
    if (v11)
    {
      v28 = v11[1];
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

      v33 = *(v11 - 1);
      v32 = v11 - 1;
      v34 = v33 + 8;
      if (v33 != -8)
      {
        bzero(v32, v34);
      }

      free(v32);
    }

    if (!v16)
    {
      v35 = v13[1];
      if (v35)
      {
        v37 = *(v35 - 8);
        v36 = (v35 - 8);
        v38 = v37 + 8;
        if (v37 != -8)
        {
          bzero(v36, v38);
        }

        free(v36);
      }

      v40 = *(v13 - 1);
      v39 = v13 - 1;
      v41 = v40 + 8;
      if (v40 != -8)
      {
        bzero(v39, v41);
      }

      free(v39);
    }

    if (v14)
    {
      goto LABEL_67;
    }

    return 0;
  }

  v108 = name;
  v109 = header;
  v110 = data;
  v114[243] = 0;
  if (!bp || (method = bp->method) == 0)
  {
LABEL_48:
    v42 = 115;
    v43 = 102;
LABEL_49:
    ERR_put_error(17, 0, v42, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", v43);
LABEL_50:
    v24 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pem/pem_lib.cc";
    v25 = 9;
    v26 = 110;
    v27 = 576;
    goto LABEL_51;
  }

  while (1)
  {
    bgets = method->bgets;
    if (!bgets)
    {
      goto LABEL_48;
    }

    if (!LODWORD(bp->cb_arg))
    {
      v42 = 114;
      v43 = 106;
      goto LABEL_49;
    }

    v19 = (bgets)(bp, __src, 254);
    if (v19 < 1)
    {
      goto LABEL_50;
    }

    bp->next_bio = (bp->next_bio + v19);
    while (__src[v19] <= 32)
    {
      v20 = v19-- <= 0;
      if (v20)
      {
        v19 = -1;
        break;
      }
    }

    __src[v19 + 1] = 10;
    __src[v19 + 2] = 0;
    v21 = *__src == 0x4745422D2D2D2D2DLL && *&__src[3] == 0x204E494745422D2DLL;
    if (v21)
    {
      v22 = strlen(v114) << 32;
      if (!strncmp(&__src[(v22 + 0x500000000) >> 32], "-----\n", 6uLL))
      {
        break;
      }
    }

    method = bp->method;
    if (!bp->method)
    {
      goto LABEL_48;
    }
  }

  v23 = (v22 + 0x900000000) >> 32;
  if (v11[2] < v23)
  {
    if (v23 >= 0xFFFFFFFFFFFFFFFDLL)
    {
LABEL_26:
      v24 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/buf/buf.cc";
      v25 = 7;
      v26 = 69;
      v27 = 44;
      goto LABEL_51;
    }

    if (v23 >= 0xBFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_185;
    }

    v66 = OPENSSL_realloc(v11[1], (2 * (((v23 + 3) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL);
    if (!v66)
    {
      goto LABEL_52;
    }

    v11[1] = v66;
    v11[2] = (2 * (((v23 + 3) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL;
  }

  if (v23 > *v11)
  {
    bzero((v11[1] + *v11), v23 - *v11);
  }

  *v11 = v23;
  if (v22 == 0xFFFFFFF700000000)
  {
    goto LABEL_52;
  }

  v67 = v11[1];
  v21 = v22 == 0x600000000;
  v68 = (v22 - 0x600000000) >> 32;
  if (!v21)
  {
    memcpy(v67, v114, v68);
    v67 = v11[1];
  }

  *(v67 + v68) = 0;
  if (v13[2] <= 0xFF)
  {
    v69 = OPENSSL_realloc(v13[1], 0x158uLL);
    if (!v69)
    {
      goto LABEL_52;
    }

    v13[1] = v69;
    v13[2] = 344;
  }

  if (*v13 <= 0xFF)
  {
    bzero((v13[1] + *v13), 256 - *v13);
  }

  *v13 = 256;
  *v13[1] = 0;
  v70 = bp->method;
  if (bp->method)
  {
    v71 = 0;
    while (1)
    {
      v72 = v70->bgets;
      if (!v72)
      {
        LODWORD(v75) = v71;
        goto LABEL_114;
      }

      if (!LODWORD(bp->cb_arg))
      {
        ERR_put_error(17, 0, 114, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 106);
        v80 = 1;
        goto LABEL_115;
      }

      v73 = (v72)(bp, __src, 254);
      if (v73 < 1)
      {
        goto LABEL_112;
      }

      bp->next_bio = (bp->next_bio + v73);
      while (__src[v73] <= 32)
      {
        v20 = v73-- <= 0;
        if (v20)
        {
          v73 = -1;
          break;
        }
      }

      __src[v73 + 1] = 10;
      v74 = (v73 + 2);
      __src[v74] = 0;
      if (__src[0] == 10)
      {
LABEL_112:
        v80 = 1;
        goto LABEL_115;
      }

      v107 = v71;
      v75 = v74 + v71;
      v76 = (v75 + 9);
      if (v13[2] < v76)
      {
        v77 = 4 * (((v76 + 3) * 0x5555555555555556uLL) >> 64);
        v78 = OPENSSL_realloc(v13[1], v77);
        if (!v78)
        {
          goto LABEL_52;
        }

        v13[1] = v78;
        v13[2] = v77;
      }

      if (v76 > *v13)
      {
        bzero((v13[1] + *v13), v76 - *v13);
      }

      *v13 = v76;
      if (*__src == 0x444E452D2D2D2D2DLL && __src[8] == 32)
      {
        break;
      }

      memcpy((v13[1] + v107), __src, v74);
      *(v13[1] + v75) = 0;
      v70 = bp->method;
      v71 = v75;
      if (!bp->method)
      {
        goto LABEL_114;
      }
    }

    v80 = 0;
    v71 = v107;
  }

  else
  {
    LODWORD(v75) = 0;
LABEL_114:
    ERR_put_error(17, 0, 115, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", 102);
    v80 = 1;
    v71 = v75;
  }

LABEL_115:
  outl = 0;
  if (v14[3] <= 0x3FFuLL)
  {
    v81 = OPENSSL_realloc(v14[2], 0x558uLL);
    if (!v81)
    {
      goto LABEL_52;
    }

    v14[2] = v81;
    v14[3] = 1368;
  }

  if (*v15 <= 0x3FF)
  {
    bzero((v14[2] + *v15), 1024 - *v15);
  }

  v14[1] = 1024;
  *v14[2] = 0;
  if (!v80)
  {
    outl = v71;
    v91 = v14 + 1;
    v15 = v13;
LABEL_163:
    v94 = *__src == 0x444E452D2D2D2D2DLL && __src[8] == 32;
    if (v94 && (v95 = strlen(v11[1]), !strncmp(v11[1], &__src[9], v95)) && !strncmp(&__src[((v95 << 32) + 0x900000000) >> 32], "-----\n", 6uLL))
    {
      memset(&ctx, 0, 56);
      if (EVP_DecodeUpdate(&ctx, v15[1], &outl, v15[1], v71) < 0)
      {
        v96 = 100;
        v97 = 699;
      }

      else
      {
        if (!ctx.enc_data[45] && !ctx.num)
        {
          if (!outl)
          {
            v13 = v91;
            goto LABEL_52;
          }

          *v111 = outl;
          v99 = *(v11 - 1);
          v98 = v11 - 1;
          *v108 = v98[2];
          *v109 = v91[1];
          *v110 = v15[1];
          v100 = v99 + 8;
          if (v99 != -8)
          {
            bzero(v98, v100);
          }

          free(v98);
          v102 = *(v91 - 1);
          v101 = v91 - 1;
          v103 = v102 + 8;
          if (v102 != -8)
          {
            bzero(v101, v103);
          }

          free(v101);
          v105 = *(v15 - 1);
          v104 = v15 - 1;
          v106 = v105 + 8;
          if (v105 != -8)
          {
            bzero(v104, v106);
          }

          free(v104);
          return 1;
        }

        v96 = 100;
        v97 = 704;
      }
    }

    else
    {
      v96 = 102;
      v97 = 691;
    }

    ERR_put_error(9, 0, v96, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pem/pem_lib.cc", v97);
    v13 = v91;
    goto LABEL_52;
  }

  v71 = 0;
  while (2)
  {
    if (!bp->method || (v82 = bp->method->bgets) == 0)
    {
      outl = v71;
      v92 = 115;
      v93 = 102;
LABEL_161:
      ERR_put_error(17, 0, v92, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", v93);
      goto LABEL_162;
    }

    if (!LODWORD(bp->cb_arg))
    {
      outl = v71;
      v92 = 114;
      v93 = 106;
      goto LABEL_161;
    }

    v83 = (v82)(bp, __src, 254);
    if (v83 < 1)
    {
      goto LABEL_157;
    }

    bp->next_bio = (bp->next_bio + v83);
    while (__src[v83] <= 32)
    {
      v20 = v83-- <= 0;
      if (v20)
      {
        v83 = -1;
        break;
      }
    }

    __src[v83 + 1] = 10;
    v84 = (v83 + 2);
    __src[v84] = 0;
    v85 = *__src == 0x444E452D2D2D2D2DLL && __src[8] == 32;
    v86 = !v85;
    if (v83 > 63 || !v86)
    {
LABEL_157:
      outl = v71;
LABEL_162:
      v91 = v13;
      goto LABEL_163;
    }

    v87 = v71 + v83 + 11;
    if (v14[3] >= v87)
    {
      goto LABEL_144;
    }

    if (v87 >= 0xFFFFFFFD)
    {
      outl = v71;
      goto LABEL_26;
    }

    if ((v87 & 0x80000000) == 0)
    {
      v88 = (2 * (((v87 + 3) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL;
      v89 = OPENSSL_realloc(v14[2], v88);
      if (!v89)
      {
        goto LABEL_159;
      }

      v14[2] = v89;
      v14[3] = v88;
LABEL_144:
      if (v87 > *v15)
      {
        bzero((v14[2] + *v15), v87 - *v15);
      }

      *v15 = v87;
      if (!v87)
      {
LABEL_159:
        outl = v71;
        goto LABEL_52;
      }

      memcpy((v14[2] + v71), __src, v84);
      *(v14[2] + v71 + v84) = 0;
      v71 += v84;
      if (v84 != 65)
      {
        outl = v71;
        __src[0] = 0;
        v90 = BIO_gets(bp, __src, 254);
        if (v90 >= 1)
        {
          while (__src[v90] <= 32)
          {
            v20 = v90-- <= 0;
            if (v20)
            {
              v90 = -1;
              break;
            }
          }

          __src[v90 + 1] = 10;
          __src[v90 + 2] = 0;
        }

        goto LABEL_162;
      }

      continue;
    }

    break;
  }

  outl = v71;
LABEL_185:
  v24 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/buf/buf.cc";
  v25 = 7;
  v26 = 69;
  v27 = 50;
LABEL_51:
  ERR_put_error(v25, 0, v26, v24, v27);
LABEL_52:
  v44 = v11[1];
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

  v49 = *(v11 - 1);
  v48 = v11 - 1;
  v50 = v49 + 8;
  if (v49 != -8)
  {
    bzero(v48, v50);
  }

  free(v48);
  if (v13)
  {
    v51 = v13[1];
    if (v51)
    {
      v53 = *(v51 - 8);
      v52 = (v51 - 8);
      v54 = v53 + 8;
      if (v53 != -8)
      {
        bzero(v52, v54);
      }

      free(v52);
    }

    v56 = *(v13 - 1);
    v55 = v13 - 1;
    v57 = v56 + 8;
    if (v56 != -8)
    {
      bzero(v55, v57);
    }

    free(v55);
  }

  if (v15)
  {
LABEL_67:
    v58 = v15[1];
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

    v63 = *(v15 - 1);
    v62 = v15 - 1;
    v64 = v63 + 8;
    if (v63 != -8)
    {
      bzero(v62, v64);
    }

    free(v62);
  }

  return 0;
}

int PEM_get_EVP_CIPHER_INFO(char *header, EVP_CIPHER_INFO *cipher)
{
  *cipher->iv = 0;
  iv = cipher->iv;
  cipher->cipher = 0;
  *&cipher->iv[8] = 0;
  if (!header)
  {
    return 1;
  }

  if (!*header || *header == 10)
  {
    return 1;
  }

  if (strncmp(header, "Proc-Type: ", 0xBuLL))
  {
    v7 = 109;
    v8 = 391;
LABEL_15:
    ERR_put_error(9, 0, v7, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pem/pem_lib.cc", v8);
    return 0;
  }

  if (header[11] != 52 || header[12] != 44)
  {
    v7 = 115;
    v8 = 396;
    goto LABEL_15;
  }

  if (strncmp(header + 13, "ENCRYPTED", 9uLL))
  {
    v7 = 108;
    v8 = 401;
    goto LABEL_15;
  }

  v9 = header + 24;
  v10 = v9;
  v11 = *(v9 - 11);
  if (!*(v9 - 11))
  {
LABEL_19:
    v7 = 112;
    v8 = 408;
    goto LABEL_15;
  }

  while (v11 != 10)
  {
    ++v10;
    v11 = *(++v9 - 11);
    if (!*(v9 - 11))
    {
      goto LABEL_19;
    }
  }

  result = strncmp(v9 - 10, "DEK-Info: ", 0xAuLL);
  if (result)
  {
    v7 = 107;
    v8 = 413;
    goto LABEL_15;
  }

  v12 = -1;
  do
  {
    do
    {
      v20 = v9;
      v14 = *v9++;
      v13 = v14;
      ++v12;
    }

    while (v14 == 45);
    v15 = v13 - 91;
    v16 = v13 - 58;
  }

  while (v15 > 0xE5u || v16 > 0xFFFFFFF5);
  if (v12 < 0)
  {
    __break(1u);
  }

  else
  {
    v18 = cipher_by_name(v10, v12);
    cipher->cipher = v18;
    v20 = v9;
    if (!v18)
    {
      v7 = 114;
      v8 = 429;
      goto LABEL_15;
    }

    iv_len = v18->iv_len;
    if (iv_len <= 7)
    {
      v7 = 114;
      v8 = 436;
      goto LABEL_15;
    }

    return load_iv(&v20, iv, iv_len);
  }

  return result;
}

int PEM_do_header(EVP_CIPHER_INFO *cipher, unsigned __int8 *data, uint64_t *len, pem_password_cb *callback, void *u)
{
  *&ctx.final[16] = *MEMORY[0x277D85DE8];
  outl = 0;
  memset(&ctx, 0, 152);
  if (!cipher->cipher)
  {
LABEL_11:
    v12 = 1;
    v13 = ctx.cipher;
    if (!ctx.cipher)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v8 = *len;
  if (callback)
  {
    v9 = (callback)(dataa, 1024, 0, u);
  }

  else
  {
    v9 = (PEM_def_callback)(dataa, 1024, 0, u);
  }

  if (v9 < 0)
  {
    ERR_put_error(9, 0, 104, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pem/pem_lib.cc", 356);
LABEL_14:
    v12 = 0;
    v13 = ctx.cipher;
    if (!ctx.cipher)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (!EVP_BytesToKey(cipher->cipher, &evp_md_md5, cipher->iv, dataa, v9, 1, &key, 0))
  {
    goto LABEL_14;
  }

  v18 = v8;
  if (EVP_CipherInit_ex(&ctx, cipher->cipher, len, &key, cipher->iv, 0) && EVP_DecryptUpdate(&ctx, data, &outl, data, v8))
  {
    v10 = outl;
    v11 = EVP_DecryptFinal_ex(&ctx, &data[outl], &v18);
    bzero(dataa, 0x400uLL);
    v23 = 0u;
    v24 = 0u;
    key = 0u;
    v22 = 0u;
    if (v11)
    {
      *len = v18 + v10;
      goto LABEL_11;
    }
  }

  else
  {
    bzero(dataa, 0x400uLL);
    v23 = 0u;
    v24 = 0u;
    key = 0u;
    v22 = 0u;
  }

  ERR_put_error(9, 0, 101, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pem/pem_lib.cc", 376);
  v12 = 0;
  v13 = ctx.cipher;
  if (!ctx.cipher)
  {
    goto LABEL_20;
  }

LABEL_18:
  cleanup = v13->cleanup;
  if (cleanup)
  {
    (cleanup)(&ctx, data, len, callback, u);
  }

LABEL_20:
  if (*&ctx.encrypt)
  {
    v16 = (*&ctx.encrypt - 8);
    v15 = *(*&ctx.encrypt - 8);
    if (v15 != -8)
    {
      bzero(v16, v15 + 8);
    }

    free(v16);
  }

  return v12;
}

int PEM_ASN1_write_bio(i2d_of_void *i2d, const char *name, BIO *bp, char *x, const EVP_CIPHER *enc, unsigned __int8 *kstr, int klen, pem_password_cb *cb, void *u)
{
  v127 = *MEMORY[0x277D85DE8];
  memset(ctx, 0, 152);
  v116 = 0;
  *outl = 0;
  if (enc)
  {
    v17 = OBJ_nid2obj(enc->nid);
    if (!v17 || (sn = v17->sn) == 0 || (v19 = strlen(v17->sn), !cipher_by_name(sn, v19)) || enc->iv_len <= 7u)
    {
      v20 = 113;
      v21 = 255;
LABEL_26:
      ERR_put_error(9, 0, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pem/pem_lib.cc", v21);
      v32 = 0;
      v25 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    sn = 0;
  }

  v22 = (i2d)(x, 0);
  if (v22 < 0)
  {
    v20 = 12;
    v21 = 261;
    goto LABEL_26;
  }

  __s = name;
  v23 = (v22 + 20);
  v24 = malloc_type_malloc(v23 + 8, 0xB4E622C9uLL);
  v25 = v24;
  if (!v24)
  {
    v40 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v41 = 14;
    v42 = 65;
    v43 = 217;
    goto LABEL_40;
  }

  *v24 = v23;
  v25 = v24 + 8;
  v116 = v24 + 8;
  v26 = (i2d)(x, &v116);
  outl[1] = v26;
  if (enc)
  {
    iv_len = enc->iv_len;
    if (kstr)
    {
      goto LABEL_17;
    }

    if (cb)
    {
      v28 = cb;
    }

    else
    {
      v28 = PEM_def_callback;
    }

    kstr = v124;
    v29 = (v28)(v124, 1024, 1, u);
    if ((v29 & 0x80000000) == 0)
    {
      klen = v29;
LABEL_17:
      BCM_rand_bytes_with_additional_data(salt, iv_len, BCM_rand_bytes::kZeroAdditionalData);
      if (!EVP_BytesToKey(enc, &evp_md_md5, salt, kstr, klen, 1, key, 0))
      {
        goto LABEL_103;
      }

      if (kstr == v124)
      {
        bzero(&v124[14], 0x3F2uLL);
      }

      strcpy(v124, "Proc-Type: 4,");
      v30 = -1024;
      while (v124[v30 + 1024])
      {
        v31 = __CFADD__(v30++, 1);
        if (v31)
        {
          goto LABEL_61;
        }
      }

      v50 = &v124[v30 + 1024];
      if (v30 != -1)
      {
        v51 = &ctx[v30 + 1];
        *v50 = 69;
        if (v30 != -2)
        {
          v50 = &ctx[v30 + 2];
          *v51 = 78;
          if (v30 == -3)
          {
            goto LABEL_60;
          }

          v51 = &ctx[v30 + 3];
          *v50 = 67;
          if (v30 != -4)
          {
            v50 = &ctx[v30 + 4];
            *v51 = 82;
            if (v30 == -5)
            {
              goto LABEL_60;
            }

            v51 = &ctx[v30 + 5];
            *v50 = 89;
            if (v30 != -6)
            {
              v50 = &ctx[v30 + 6];
              *v51 = 80;
              if (v30 == -7)
              {
                goto LABEL_60;
              }

              v51 = &ctx[v30 + 7];
              *v50 = 84;
              if (v30 != -8)
              {
                v50 = &ctx[v30 + 8];
                *v51 = 69;
                if (v30 != -9)
                {
                  *v50 = 68;
                  v50 = &ctx[v30 + 9];
                }

                goto LABEL_60;
              }
            }
          }
        }

        v50 = v51;
      }

LABEL_60:
      *v50 = 0;
LABEL_61:
      v52 = 0;
      while (v124[v52])
      {
        if (++v52 == 1024)
        {
          goto LABEL_68;
        }
      }

      v53 = &v124[v52];
      if (v52 != 1023)
      {
        *v53++ = 10;
      }

      *v53 = 0;
LABEL_68:
      v54 = -1024;
      while (v124[v54 + 1024])
      {
        v31 = __CFADD__(v54++, 1);
        if (v31)
        {
          goto LABEL_78;
        }
      }

      v55 = &v124[v54 + 1024];
      if (v54 != -1)
      {
        v56 = &ctx[v54 + 1];
        *v55 = 68;
        if (v54 != -2)
        {
          v55 = &ctx[v54 + 2];
          *v56 = 69;
          if (v54 == -3)
          {
            goto LABEL_77;
          }

          v56 = &ctx[v54 + 3];
          *v55 = 75;
          if (v54 != -4)
          {
            v55 = &ctx[v54 + 4];
            *v56 = 45;
            if (v54 == -5)
            {
              goto LABEL_77;
            }

            v56 = &ctx[v54 + 5];
            *v55 = 73;
            if (v54 != -6)
            {
              v55 = &ctx[v54 + 6];
              *v56 = 110;
              if (v54 == -7)
              {
                goto LABEL_77;
              }

              v56 = &ctx[v54 + 7];
              *v55 = 102;
              if (v54 != -8)
              {
                v55 = &ctx[v54 + 8];
                *v56 = 111;
                if (v54 == -9)
                {
                  goto LABEL_77;
                }

                v56 = &ctx[v54 + 9];
                *v55 = 58;
                if (v54 != -10)
                {
                  v55 = &ctx[v54 + 10];
                  *v56 = 32;
                  goto LABEL_77;
                }
              }
            }
          }
        }

        v55 = v56;
      }

LABEL_77:
      *v55 = 0;
LABEL_78:
      v57 = 0;
      while (v124[v57])
      {
        if (++v57 == 1024)
        {
          goto LABEL_87;
        }
      }

      v58 = &v124[v57];
      if (v57 != 1023)
      {
        v59 = 1023 - v57;
        do
        {
          v60 = *sn;
          if (!*sn)
          {
            break;
          }

          ++sn;
          *v58++ = v60;
          --v59;
        }

        while (v59);
      }

      *v58 = 0;
LABEL_87:
      v61 = 0;
      while (v124[v61])
      {
        if (++v61 == 1024)
        {
          goto LABEL_94;
        }
      }

      v62 = &v124[v61];
      if (v61 != 1023)
      {
        *v62++ = 44;
      }

      *v62 = 0;
LABEL_94:
      v63 = strlen(v124);
      v65 = 2 * iv_len;
      if (1024 - v63 >= 2 * iv_len + 2)
      {
        if (iv_len)
        {
          v66 = &v124[v63 + 1];
          v67 = salt;
          do
          {
            v68 = *v67++;
            *(v66 - 1) = PEM_dek_info(char *,char const*,unsigned long,char *)::map[v68 >> 4];
            *v66 = PEM_dek_info(char *,char const*,unsigned long,char *)::map[v68 & 0xF];
            v66 += 2;
            --iv_len;
          }

          while (iv_len);
        }

        *&v124[v63 + v65] = 10;
      }

      if (EVP_CipherInit_ex(ctx, enc, v64, key, salt, 1) && EVP_EncryptUpdate(ctx, v25, outl, v25, v26) && EVP_EncryptFinal_ex(ctx, &v25[outl[0]], &outl[1]))
      {
        v26 = outl[1] + outl[0];
        outl[1] += outl[0];
        goto LABEL_42;
      }

LABEL_103:
      v32 = 0;
      goto LABEL_27;
    }

    v40 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pem/pem_lib.cc";
    v41 = 9;
    v42 = 111;
    v43 = 283;
LABEL_40:
    ERR_put_error(v41, 0, v42, v40, v43);
    v32 = 0;
    goto LABEL_27;
  }

  v124[0] = 0;
LABEL_42:
  v126 = 0;
  memset(&ctx[160], 0, 48);
  v44 = strlen(__s);
  if (!bp)
  {
    goto LABEL_147;
  }

  if (!bp->method)
  {
    goto LABEL_147;
  }

  bwrite = bp->method->bwrite;
  if (!bwrite)
  {
    goto LABEL_147;
  }

  if (!LODWORD(bp->cb_arg))
  {
    goto LABEL_151;
  }

  v46 = v44;
  v47 = (bwrite)(bp, "-----BEGIN ", 11);
  if (v47 < 1)
  {
    goto LABEL_149;
  }

  bp->prev_bio = (bp->prev_bio + v47);
  if (v47 != 11)
  {
    goto LABEL_149;
  }

  if (!bp->method || (v48 = bp->method->bwrite) == 0)
  {
    v69 = 115;
    v70 = 121;
LABEL_120:
    ERR_put_error(17, 0, v69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", v70);
    v49 = -2;
    goto LABEL_121;
  }

  if (!LODWORD(bp->cb_arg))
  {
    v69 = 114;
    v70 = 125;
    goto LABEL_120;
  }

  if (v46 < 1)
  {
    if (v46)
    {
      goto LABEL_149;
    }

    goto LABEL_122;
  }

  v49 = (v48)(bp, __s);
  if (v49 >= 1)
  {
    bp->prev_bio = (bp->prev_bio + v49);
    if (v49 != v46)
    {
      goto LABEL_149;
    }

    goto LABEL_122;
  }

LABEL_121:
  if (v49 != v46)
  {
LABEL_149:
    ERR_put_error(9, 0, 7, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pem/pem_lib.cc", 534);
    v89 = 0;
    goto LABEL_150;
  }

LABEL_122:
  if (!bp->method)
  {
    goto LABEL_147;
  }

  v71 = bp->method->bwrite;
  if (!v71)
  {
    goto LABEL_147;
  }

  if (!LODWORD(bp->cb_arg))
  {
LABEL_151:
    v85 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc";
    v86 = 17;
    v87 = 114;
    v88 = 125;
    goto LABEL_148;
  }

  v72 = (v71)(bp, "-----\n", 6);
  if (v72 < 1)
  {
    goto LABEL_149;
  }

  bp->prev_bio = (bp->prev_bio + v72);
  if (v72 != 6)
  {
    goto LABEL_149;
  }

  v73 = strlen(v124);
  if (v73 < 1)
  {
    goto LABEL_144;
  }

  if (!bp->method || (v74 = bp->method->bwrite) == 0)
  {
    v76 = 115;
    v77 = 121;
LABEL_137:
    ERR_put_error(17, 0, v76, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", v77);
    v75 = -2;
    goto LABEL_138;
  }

  if (!LODWORD(bp->cb_arg))
  {
    v76 = 114;
    v77 = 125;
    goto LABEL_137;
  }

  v75 = (v74)(bp, v124, v73);
  if (v75 >= 1)
  {
    bp->prev_bio = (bp->prev_bio + v75);
  }

LABEL_138:
  if (v75 != v73)
  {
    goto LABEL_149;
  }

  if (!bp->method || (v78 = bp->method->bwrite) == 0)
  {
LABEL_147:
    v85 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc";
    v86 = 17;
    v87 = 115;
    v88 = 121;
LABEL_148:
    ERR_put_error(v86, 0, v87, v85, v88);
    goto LABEL_149;
  }

  if (!LODWORD(bp->cb_arg))
  {
    goto LABEL_151;
  }

  v79 = (v78)(bp, "\n", 1);
  if (v79 < 1)
  {
    goto LABEL_149;
  }

  bp->prev_bio = (bp->prev_bio + v79);
  if (v79 != 1)
  {
    goto LABEL_149;
  }

LABEL_144:
  v111 = malloc_type_malloc(0x2008uLL, 0xB4E622C9uLL);
  if (!v111)
  {
    v85 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v86 = 14;
    v87 = 65;
    v88 = 217;
    goto LABEL_148;
  }

  v80 = v26;
  *v111 = 0x2000;
  v113 = v111 + 8;
  if (v26 < 1)
  {
    v84 = 0;
    goto LABEL_192;
  }

  LODWORD(v81) = 0;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  do
  {
    v93 = 5120;
    if (v80 < 0x1400)
    {
      v93 = v80;
    }

    v94 = &v25[v83];
    v91 = v82;
    v95 = 48 - v82;
    if (v93 < v95)
    {
      v90 = v93;
      memcpy(&ctx[v82 + 164], &v25[v83], v93);
      LODWORD(v91) = 0;
      *&ctx[160] += v90;
      LODWORD(v81) = *&ctx[160];
      v82 = *&ctx[160];
      goto LABEL_153;
    }

    v114 = v93;
    if (v82)
    {
      v81 = v93 - v95;
      if (v82 != 48)
      {
        memcpy(&ctx[v82 + 164], &v25[v83], v95);
      }

      v94 += v95;
      v96 = EVP_EncodeBlock(v113, &ctx[164], 48);
      v97 = 0;
      *&ctx[160] = 0;
      *&v113[v96] = 10;
      v98 = &v113[v96 + 1];
      v91 = v96 + 1;
    }

    else
    {
      v97 = v81;
      v81 = v93;
      v98 = v111 + 8;
    }

    if (v81 >= 0x30)
    {
      v112 = v97;
      while (1)
      {
        v99 = EVP_EncodeBlock(v98, v94, 48);
        v100 = &v98[v99];
        *v100 = 10;
        v98 = v100 + 1;
        if (-2 - v99 < v91)
        {
          break;
        }

        v81 -= 48;
        v94 += 48;
        v91 += v99 + 1;
        if (v81 <= 0x2F)
        {
          goto LABEL_166;
        }
      }

      v82 = 0;
      LODWORD(v91) = 0;
      LODWORD(v81) = v112;
      v90 = v114;
      goto LABEL_153;
    }

LABEL_166:
    if (v81)
    {
      memcpy(&ctx[164], v94, v81);
    }

    *&ctx[160] = v81;
    if (v91 >> 31)
    {
      LODWORD(v91) = 0;
LABEL_183:
      v82 = v81;
      v90 = v114;
      goto LABEL_153;
    }

    if (!v91)
    {
      goto LABEL_183;
    }

    if (!bp->method || (v101 = bp->method->bwrite) == 0)
    {
      v103 = 115;
      v104 = 121;
LABEL_179:
      ERR_put_error(17, 0, v103, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", v104);
      v102 = -2;
      goto LABEL_180;
    }

    if (!LODWORD(bp->cb_arg))
    {
      v103 = 114;
      v104 = 125;
      goto LABEL_179;
    }

    if (v91 < 1)
    {
      goto LABEL_204;
    }

    v102 = (v101)(bp, v113, v91);
    if (v102 >= 1)
    {
      bp->prev_bio = (bp->prev_bio + v102);
      v82 = v81;
      v90 = v114;
      if (v102 != v91)
      {
        goto LABEL_204;
      }

      goto LABEL_153;
    }

LABEL_180:
    v82 = v81;
    v90 = v114;
    if (v102 != v91)
    {
      goto LABEL_204;
    }

LABEL_153:
    v84 += v91;
    v83 += v90;
    v92 = v80 <= v90;
    v80 -= v90;
  }

  while (!v92);
  if (!v81)
  {
LABEL_192:
    v106 = 0;
    goto LABEL_193;
  }

  v105 = EVP_EncodeBlock(v113, &ctx[164], v81);
  v106 = v105 + 1;
  *&v113[v105] = 10;
  if (v105 + 1 >= 1 && BIO_write(bp, v113, v106) != v106)
  {
LABEL_204:
    ERR_put_error(9, 0, 7, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pem/pem_lib.cc", 534);
    v89 = 0;
    goto LABEL_205;
  }

LABEL_193:
  if (!bp->method || (v107 = bp->method->bwrite) == 0)
  {
    v109 = 115;
    v110 = 121;
LABEL_203:
    ERR_put_error(17, 0, v109, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bio/bio.cc", v110);
    goto LABEL_204;
  }

  if (!LODWORD(bp->cb_arg))
  {
    v109 = 114;
    v110 = 125;
    goto LABEL_203;
  }

  v108 = (v107)(bp, "-----END ", 9);
  if (v108 < 1)
  {
    goto LABEL_204;
  }

  bp->prev_bio = (bp->prev_bio + v108);
  if (v108 != 9)
  {
    goto LABEL_204;
  }

  if (BIO_write(bp, __s, v46) != v46)
  {
    goto LABEL_204;
  }

  if (BIO_write(bp, "-----\n", 6) != 6)
  {
    goto LABEL_204;
  }

  v89 = v106 + v84;
  if (!(v106 + v84))
  {
    goto LABEL_204;
  }

LABEL_205:
  free(v111);
LABEL_150:
  outl[1] = v89;
  v32 = v89 > 0;
LABEL_27:
  v122 = 0u;
  v123 = 0u;
  *key = 0u;
  v121 = 0u;
  *salt = 0;
  v119 = 0;
  bzero(v124, 0x400uLL);
  if (v25)
  {
    v34 = *(v25 - 1);
    v33 = v25 - 8;
    v35 = v34 + 8;
    if (v34 != -8)
    {
      bzero(v33, v35);
    }

    free(v33);
  }

  if (*ctx)
  {
    v36 = *(*ctx + 40);
    if (v36)
    {
      v36(ctx);
    }
  }

  if (*&ctx[16])
  {
    v38 = (*&ctx[16] - 8);
    v37 = *(*&ctx[16] - 8);
    if (v37 != -8)
    {
      bzero((*&ctx[16] - 8), v37 + 8);
    }

    free(v38);
  }

  return v32;
}

const EVP_CIPHER *cipher_by_name(uint64_t a1, uint64_t a2)
{
  if (a2 != 12)
  {
    if (a2 == 11)
    {
      if (*a1 == 0x2D3832312D534541 && *(a1 + 3) == 0x4342432D3832312DLL)
      {
        return EVP_aes_128_cbc();
      }

      if (*a1 == 0x2D3239312D534541 && *(a1 + 3) == 0x4342432D3239312DLL)
      {
        return EVP_aes_192_cbc();
      }

      if (*a1 == 0x2D3635322D534541 && *(a1 + 3) == 0x4342432D3635322DLL)
      {
        return EVP_aes_256_cbc();
      }
    }

    else if (a2 == 7)
    {
      if (*a1 ^ 0x2D534544 | *(a1 + 3) ^ 0x4342432D)
      {
        return 0;
      }

      else
      {
        return &evp_des_cbc;
      }
    }

    return 0;
  }

  if (*a1 ^ 0x334544452D534544 | *(a1 + 8) ^ 0x4342432DLL)
  {
    return 0;
  }

  else
  {
    return &evp_des_ede3_cbc;
  }
}

int PEM_def_callback(char *buf, int num, int w, void *key)
{
  v4 = buf;
  LODWORD(buf) = -1;
  if ((num & 0x80000000) == 0 && v4 && key)
  {
    buf = strlen(key);
    if (buf >= num)
    {
      LODWORD(buf) = -1;
    }

    else
    {
      if (num >= 2)
      {
        v7 = num - 1;
        v8 = key;
        do
        {
          v9 = *v8;
          if (!*v8)
          {
            break;
          }

          ++v8;
          *v4++ = v9;
          --v7;
        }

        while (v7);
      }

      *v4 = 0;
    }
  }

  return buf;
}

uint64_t load_iv(const char **a1, unsigned __int8 *a2, size_t a3)
{
  v4 = *a1;
  if (!a3)
  {
LABEL_13:
    *a1 = v4;
    return 1;
  }

  bzero(a2, a3);
  v7 = 0;
  v8 = 2 * a3;
  if (2 * a3 <= 1)
  {
    v8 = 1;
  }

  while (1)
  {
    v10 = v4[v7];
    if ((v10 - 58) <= 0xFFFFFFF5)
    {
      break;
    }

    v9 = -48;
LABEL_6:
    a2[v7 >> 1] |= (v9 + v10) << (~(4 * v7) & 4);
    if (v8 == ++v7)
    {
      v4 += v7;
      goto LABEL_13;
    }
  }

  if ((v10 - 97) < 6)
  {
    v9 = -87;
    goto LABEL_6;
  }

  if ((v10 - 65) < 6)
  {
    v9 = -55;
    goto LABEL_6;
  }

  ERR_put_error(9, 0, 103, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pem/pem_lib.cc", 458);
  return 0;
}

uint64_t do_pk8pkey(bio_st *a1, evp_pkey_st *pkey, int a3, int a4, const evp_cipher_st *a5, char *a6, int a7, int (*a8)(char *, int, int, void *), void *a9)
{
  v27 = *MEMORY[0x277D85DE8];
  v16 = EVP_PKEY2PKCS8(pkey);
  if (!v16)
  {
    ERR_put_error(9, 0, 106, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pem/pem_pk8.cc", 69);
    return 0;
  }

  v17 = v16;
  if (a4 == -1 && !a5)
  {
    if (a3)
    {
      v18 = i2d_PKCS8_PRIV_KEY_INFO_bio(a1, v16);
    }

    else
    {
      v18 = PEM_ASN1_write_bio(pem_write_bio_PKCS8_PRIV_KEY_INFO_i2d, "PRIVATE KEY", a1, v16, 0, 0, 0, 0, 0);
    }

    v23 = v18;
    *pass = v17;
    ASN1_item_ex_free(pass, &PKCS8_PRIV_KEY_INFO_it);
    return v23;
  }

  if (!a6)
  {
    if (a8)
    {
      v22 = a8(pass, 1024, 1, a9);
    }

    else
    {
      v22 = (PEM_def_callback)(pass, 1024, 1, a9);
    }

    if ((v22 & 0x80000000) == 0)
    {
      a7 = v22;
      v20 = PKCS8_encrypt(a4, a5, pass, v22, 0, 0, 0, v17);
      if (!a7)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    ERR_put_error(9, 0, 111, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pem/pem_pk8.cc", 79);
    pval = v17;
    ASN1_item_ex_free(&pval, &PKCS8_PRIV_KEY_INFO_it);
    return 0;
  }

  v20 = PKCS8_encrypt(a4, a5, a6, a7, 0, 0, 0, v16);
  if (pass == a6 && a7)
  {
LABEL_11:
    bzero(pass, a7);
  }

LABEL_12:
  pval = v17;
  ASN1_item_ex_free(&pval, &PKCS8_PRIV_KEY_INFO_it);
  if (a3)
  {
    v21 = i2d_PKCS8_bio(a1, v20);
  }

  else
  {
    v21 = PEM_ASN1_write_bio(pem_write_bio_PKCS8_i2d, "ENCRYPTED PRIVATE KEY", a1, v20, 0, 0, 0, 0, 0);
  }

  v24 = v21;
  pval = v20;
  ASN1_item_ex_free(&pval, &X509_PUBKEY_it.sname);
  return v24;
}

EVP_PKEY *__cdecl PEM_read_bio_PrivateKey(BIO *bp, EVP_PKEY **x, pem_password_cb *cb, void *u)
{
  pval[128] = *MEMORY[0x277D85DE8];
  pnm = 0;
  plen = 0;
  pdata = 0;
  if (!PEM_bytes_read_bio(&pdata, &plen, &pnm, "ANY PRIVATE KEY", bp, cb, u))
  {
    return 0;
  }

  pp = pdata;
  v7 = pnm;
  if (!strcmp(pnm, "PRIVATE KEY"))
  {
    pval[0] = 0;
    if (asn1_item_ex_d2i(pval, &pp, plen, &PKCS8_PRIV_KEY_INFO_it, 0xFFFFFFFFLL, 0, 0, 0, 0) <= 0)
    {
      ASN1_item_ex_free(pval, &PKCS8_PRIV_KEY_INFO_it);
      v9 = pval[0];
      if (!pval[0])
      {
        goto LABEL_53;
      }
    }

    else
    {
      v9 = pval[0];
      if (!pval[0])
      {
        goto LABEL_53;
      }
    }

    v8 = EVP_PKCS82PKEY(v9);
    if (x)
    {
      v11 = *x;
      if (*x)
      {
        v12 = atomic_load(v11);
        if (v12 != -1)
        {
          while (1)
          {
            if (!v12)
            {
              abort();
            }

            v13 = v12;
            atomic_compare_exchange_strong(&v11->type, &v13, v12 - 1);
            if (v13 == v12)
            {
              break;
            }

            v12 = v13;
            if (v13 == -1)
            {
              goto LABEL_51;
            }
          }

          if (v12 == 1)
          {
            ptr = v11->pkey.ptr;
            if (ptr)
            {
              v18 = *(ptr + 20);
              if (v18)
              {
                v18(v11);
                *&v11->references = 0;
                v11->save_type = 0;
              }
            }

            attributes = v11[-1].attributes;
            p_attributes = &v11[-1].attributes;
            p_data = &attributes->data;
            if (attributes != -8)
            {
              bzero(p_attributes, p_data);
            }

            free(p_attributes);
          }
        }
      }

LABEL_51:
      *x = v8;
    }

    pval[0] = v9;
    ASN1_item_ex_free(pval, &PKCS8_PRIV_KEY_INFO_it);
    if (v8)
    {
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  if (!strcmp(v7, "ENCRYPTED PRIVATE KEY"))
  {
    v31 = 0;
    if (asn1_item_ex_d2i(&v31, &pp, plen, &X509_PUBKEY_it.sname, 0xFFFFFFFFLL, 0, 0, 0, 0) <= 0)
    {
      ASN1_item_ex_free(&v31, &X509_PUBKEY_it.sname);
      v10 = v31;
      if (!v31)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v10 = v31;
      if (!v31)
      {
        goto LABEL_53;
      }
    }

    if (cb)
    {
      v14 = (cb)(pval, 1024, 0, u);
    }

    else
    {
      v14 = (PEM_def_callback)(pval, 1024, 0, u);
    }

    if (v14 < 0)
    {
      ERR_put_error(9, 0, 104, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pem/pem_pkey.cc", 72);
      v31 = v10;
      ASN1_item_ex_free(&v31, &X509_PUBKEY_it.sname);
LABEL_54:
      v8 = 0;
      goto LABEL_55;
    }

    v15 = v14;
    v16 = PKCS8_decrypt(v10, pval, v14);
    v31 = v10;
    ASN1_item_ex_free(&v31, &X509_PUBKEY_it.sname);
    if (v15)
    {
      bzero(pval, v15);
    }

    if (v16)
    {
      v8 = EVP_PKCS82PKEY(v16);
      if (x)
      {
        if (*x)
        {
          EVP_PKEY_free(*x);
        }

        *x = v8;
      }

      v31 = v16;
      ASN1_item_ex_free(&v31, &PKCS8_PRIV_KEY_INFO_it);
      if (v8)
      {
        goto LABEL_55;
      }
    }

LABEL_53:
    ERR_put_error(9, 0, 12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pem/pem_pkey.cc", 102);
    goto LABEL_54;
  }

  if (!strcmp(v7, "RSA PRIVATE KEY"))
  {
    v8 = d2i_PrivateKey(6, x, &pp, plen);
    if (!v8)
    {
      goto LABEL_53;
    }
  }

  else
  {
    if (strcmp(v7, "EC PRIVATE KEY"))
    {
      if (!strcmp(v7, "DSA PRIVATE KEY"))
      {
        v8 = d2i_PrivateKey(116, x, &pp, plen);
        if (v8)
        {
          goto LABEL_55;
        }
      }

      goto LABEL_53;
    }

    v8 = d2i_PrivateKey(408, x, &pp, plen);
    if (!v8)
    {
      goto LABEL_53;
    }
  }

LABEL_55:
  if (pnm)
  {
    v23 = pnm - 8;
    v22 = *(pnm - 1);
    if (v22 != -8)
    {
      bzero(v23, v22 + 8);
    }

    free(v23);
  }

  if (pdata)
  {
    v25 = pdata - 8;
    v24 = *(pdata - 1);
    if (v24 != -8)
    {
      bzero(v25, v24 + 8);
    }

    free(v25);
  }

  return v8;
}

uint64_t pkcs12_key_gen(char *a1, uint64_t a2, void *a3, unint64_t a4, int __c, unsigned int a6, size_t a7, char *a8, unsigned int *a9)
{
  v125 = *MEMORY[0x277D85DE8];
  if (!a6)
  {
    ERR_put_error(19, 0, 129, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pkcs8/pkcs8.cc", 68);
    return 0;
  }

  v9 = a1;
  *v118 = 0u;
  v119 = 0u;
  if (!a1)
  {
    v13 = 0;
    goto LABEL_7;
  }

  v10 = a2;
  v123 = 0uLL;
  v124 = 0uLL;
  v11 = 2 * a2;
  __b = 0uLL;
  if ((2 * a2) >= 0xFFFFFFFFFFFFFFF8)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    goto LABEL_77;
  }

  v109 = __c;
  v112 = a4;
  __dst = a3;
  v32 = a6;
  v33 = a7;
  v34 = a8;
  v35 = malloc_type_malloc(v11 + 8, 0xB4E622C9uLL);
  if (v35)
  {
    *v35 = v11;
    BYTE8(__b) = 0;
    *&__b = 0;
    v123 = (v35 + 1);
    *&v124 = v11;
    BYTE8(v124) = BYTE8(v124) & 0xFC | 1;
    if (v10)
    {
      goto LABEL_25;
    }
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    if (v11)
    {
      goto LABEL_77;
    }

    BYTE8(__b) = 0;
    *&__b = 0;
    v123 = 0uLL;
    *&v124 = 0;
    for (BYTE8(v124) = 1; v10; *v120[0] = BYTE1(v37))
    {
LABEL_25:
      v36 = v9 + 1;
      v37 = *v9;
      if (*v9 < 0)
      {
        if ((v37 & 0xE0) == 0xC0)
        {
          v38 = 0;
          v39 = 128;
          v40 = 31;
          v41 = 1;
        }

        else if ((v37 & 0xF0) == 0xE0)
        {
          v38 = 1;
          v39 = 2048;
          v40 = 15;
          v41 = 2;
        }

        else
        {
          if ((v37 & 0xF8) != 0xF0)
          {
            goto LABEL_64;
          }

          v38 = 0;
          v39 = 0x10000;
          v40 = 7;
          v41 = 3;
        }

        if (v10 == 1)
        {
          goto LABEL_64;
        }

        v42 = *v36;
        if ((*v36 & 0xC0) != 0x80)
        {
          goto LABEL_64;
        }

        v43 = v40 & v37;
        v44 = v43 << 6;
        v45 = (v43 << 6) | v42 & 0x3F;
        if ((v37 & 0xE0) == 0xC0)
        {
          v37 = (v43 << 6) | v42 & 0x3F;
        }

        else
        {
          if (v10 == 2)
          {
            goto LABEL_64;
          }

          v46 = v9[2];
          if ((v46 & 0xC0) != 0x80)
          {
            goto LABEL_64;
          }

          v44 = v45 << 6;
          v43 = (v45 << 6) | v46 & 0x3F;
          if (v38)
          {
            v37 = (v45 << 6) | v46 & 0x3F;
            LOWORD(v43) = v45;
          }

          else
          {
            if (v10 == 3)
            {
              goto LABEL_64;
            }

            v47 = v9[3];
            if ((v47 & 0xC0) != 0x80)
            {
              goto LABEL_64;
            }

            v44 = v43 << 6;
            v37 = (v43 << 6) | v47 & 0x3F;
          }
        }

        if ((v43 & 0x7FE0) == 0x360 || ((v48 = HIWORD(v44), v37 - 65008 <= 0xFFFFFFDF) ? (v49 = v48 > 0x10) : (v49 = 1), !v49 ? (v50 = (v37 & 0xFFFE) == 65534) : (v50 = 1), !v50 ? (v51 = v48 == 0) : (v51 = 0), v51 ? (v52 = v37 >= v39) : (v52 = 0), !v52 || (v10 = v10 - 1 - v41, v9 = &v36[v41], (v37 & 0xF800) == 0xD800)))
        {
LABEL_64:
          ERR_put_error(19, 0, 131, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pkcs8/pkcs8.cc", 48);
          goto LABEL_71;
        }
      }

      else
      {
        ++v9;
        --v10;
      }

      if (v37 - 64976 < 0x20)
      {
        goto LABEL_64;
      }

      v120[0] = 0;
      if (!CBB_add_space(&__b, v120, 2))
      {
        goto LABEL_64;
      }

      *(v120[0] + 1) = v37;
    }
  }

  v120[0] = 0;
  if (!CBB_add_space(&__b, v120, 2))
  {
LABEL_71:
    if (!BYTE8(__b) && (BYTE8(v124) & 1) != 0 && v123)
    {
      v55 = (v123 - 8);
      v54 = *(v123 - 8);
      if (v54 != -8)
      {
        bzero((v123 - 8), v54 + 8);
      }

      free(v55);
    }

LABEL_77:
    v12 = 0;
    v29 = v118[1];
    if (!v118[1])
    {
      goto LABEL_20;
    }

    goto LABEL_78;
  }

  *(v120[0] + 1) = 0;
  *v120[0] = 0;
  if (BYTE8(__b))
  {
    ERR_put_error(14, 0, 66, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bytestring/cbb.cc", 126);
  }

  else if (CBB_flush(&__b))
  {
    v53 = 0;
    v13 = *(&v123 + 1);
    v9 = v123;
    *&v123 = 0;
    goto LABEL_89;
  }

  v9 = 0;
  v13 = 0;
  v53 = 1;
LABEL_89:
  a8 = v34;
  a7 = v33;
  a6 = v32;
  a4 = v112;
  a3 = __dst;
  __c = v109;
  if (!BYTE8(__b) && (BYTE8(v124) & 1) != 0 && v123)
  {
    v63 = *(v123 - 8);
    v62 = (v123 - 8);
    v64 = v63 + 8;
    if (v63 != -8)
    {
      bzero(v62, v64);
    }

    free(v62);
    a8 = v34;
    a7 = v33;
    a6 = v32;
    a4 = v112;
    a3 = __dst;
    __c = v109;
  }

  if (v53)
  {
    goto LABEL_14;
  }

LABEL_7:
  v14 = a9[10];
  if (v14)
  {
    v15 = a3;
    v16 = a8;
    v17 = a7;
    v18 = a6;
    v19 = a4;
    memset(&__b, __c, a9[10]);
    a3 = v15;
    a4 = v19;
    a6 = v18;
    a7 = v17;
    a8 = v16;
  }

  v20 = a4 + v14 - 1;
  if (v20 < a4 || (v21 = v14 - 1 + v13, __CFADD__(v14 - 1, v13)))
  {
    v22 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pkcs8/pkcs8.cc";
    v23 = 19;
    v24 = 69;
    v25 = 106;
LABEL_13:
    ERR_put_error(v23, 0, v24, v22, v25);
LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  v59 = v20 / v14 * v14;
  v60 = v21 / v14 * v14;
  v61 = v60 + v59;
  if (__CFADD__(v60, v59))
  {
    v22 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pkcs8/pkcs8.cc";
    v23 = 19;
    v24 = 69;
    v25 = 113;
    goto LABEL_13;
  }

  if (v61 >= 0xFFFFFFFFFFFFFFF8)
  {
    v22 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v23 = 14;
    v24 = 65;
    v25 = 217;
    goto LABEL_13;
  }

  v113 = a4;
  __dsta = a3;
  v106 = a6;
  v110 = a7;
  v65 = a8;
  v66 = malloc_type_malloc(v61 + 8, 0xB4E622C9uLL);
  if (v66)
  {
    *v66 = v61;
    v67 = v66 + 1;
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    if (v61)
    {
      goto LABEL_14;
    }

    v67 = 0;
  }

  v68 = v110;
  v69 = v106;
  if (v20 != v20 % v14)
  {
    v70 = 0;
    do
    {
      *(v67 + v70) = __dsta[v70 % v113];
      ++v70;
    }

    while (v70 < v59);
  }

  if (v21 != v21 % v14)
  {
    v71 = 0;
    do
    {
      *(v67 + v59 + v71) = v9[v71 % v13];
      ++v71;
    }

    while (v71 < v60);
  }

  if (!v110)
  {
    v12 = 1;
    goto LABEL_156;
  }

  if (v106 <= 2)
  {
    v69 = 2;
  }

  if (v14 <= 1)
  {
    v72 = 1;
  }

  else
  {
    v72 = v14;
  }

  v105 = v72 & 0xFFFFFFFE;
  v114 = v69 - 1;
  v107 = v60 + v59;
  v108 = v67;
  while (1)
  {
    v111 = v68;
    __dstb = v65;
    v73 = v118[0];
    if (v118[0] != a9)
    {
      v74 = a9[11];
      v75 = malloc_type_malloc(v74 + 8, 0xB4E622C9uLL);
      if (!v75)
      {
LABEL_151:
        ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
        v12 = 0;
        goto LABEL_152;
      }

      *v75 = v74;
      v76 = v75 + 1;
      if (v118[1])
      {
        v78 = v118[1] - 8;
        v77 = *(v118[1] - 1);
        if (v77 != -8)
        {
          bzero(v118[1] - 8, v77 + 8);
        }

        free(v78);
      }

      v118[0] = a9;
      v118[1] = v76;
      v73 = a9;
    }

    (*(v73 + 2))(v118);
    (*(v118[0] + 3))(v118, &__b, v14);
    (*(v118[0] + 3))(v118, v108, v107);
    (*(v118[0] + 4))(v118, __src);
    v79 = *(v118[0] + 1);
    v80 = *(v118[0] + 11);
    if (v80)
    {
      bzero(v118[1], v80);
    }

    v81 = v114;
    if (v106 != 1)
    {
      do
      {
        v87 = v118[0];
        if (v118[0] != a9)
        {
          v88 = a9[11];
          v89 = malloc_type_malloc(v88 + 8, 0xB4E622C9uLL);
          if (!v89)
          {
            goto LABEL_151;
          }

          *v89 = v88;
          v90 = v89 + 1;
          if (v118[1])
          {
            v92 = v118[1] - 8;
            v91 = *(v118[1] - 1);
            if (v91 != -8)
            {
              bzero(v118[1] - 8, v91 + 8);
            }

            free(v92);
          }

          v118[0] = a9;
          v118[1] = v90;
          v87 = a9;
        }

        (*(v87 + 2))(v118);
        (*(v118[0] + 3))(v118, __src, v79);
        (*(v118[0] + 4))(v118, __src);
        v79 = *(v118[0] + 1);
        v93 = *(v118[0] + 11);
        if (v93)
        {
          bzero(v118[1], v93);
        }

        --v81;
      }

      while (v81);
    }

    v82 = v111;
    if (v111 >= v79)
    {
      v83 = v79;
    }

    else
    {
      v83 = v111;
    }

    if (v79)
    {
      memcpy(__dstb, __src, v83);
      v82 = v111;
    }

    v68 = v82 - v83;
    if (!v68)
    {
      break;
    }

    v84 = 0;
    if (v14 < 2)
    {
      v85 = v14 - 1;
      v86 = v107;
      do
      {
LABEL_144:
        *(v120 + v84) = __src[v84 % v79];
        ++v84;
      }

      while (v72 != v84);
      goto LABEL_145;
    }

    v85 = v14 - 1;
    v86 = v107;
    do
    {
      v94 = __src[(v84 + 1) % v79];
      v95 = v120 + v84;
      *v95 = __src[v84 % v79];
      v95[1] = v94;
      v84 += 2;
    }

    while (v105 != v84);
    v84 = v72 & 0xFFFFFFFE;
    if (v105 != v14)
    {
      goto LABEL_144;
    }

LABEL_145:
    if (v86)
    {
      v96 = 0;
      v97 = v108;
      do
      {
        v98 = 1;
        v99 = v85;
        do
        {
          v100 = v98 + *(v97 + v99) + *(v120 + v99);
          *(v97 + v99) = v100;
          v98 = v100 >> 8;
          --v99;
        }

        while (v99 < v14);
        v96 += v14;
        v97 = (v97 + v14);
      }

      while (v96 < v86);
    }

    v65 = &__dstb[v83];
  }

  v12 = 1;
LABEL_152:
  v67 = v108;
LABEL_156:
  if (v67)
  {
    v102 = *(v67 - 1);
    v101 = v67 - 1;
    v103 = v102 + 8;
    if (v102 != -8)
    {
      v104 = v101;
      bzero(v101, v103);
      v101 = v104;
    }

    free(v101);
  }

LABEL_15:
  if (v9)
  {
    v27 = *(v9 - 1);
    v26 = (v9 - 8);
    v28 = v27 + 8;
    if (v27 != -8)
    {
      bzero(v26, v28);
    }

    free(v26);
  }

  v29 = v118[1];
  if (!v118[1])
  {
LABEL_20:
    v30 = *(&v119 + 1);
    if (*(&v119 + 1))
    {
      goto LABEL_21;
    }

    return v12;
  }

LABEL_78:
  v57 = *(v29 - 1);
  v56 = (v29 - 1);
  v58 = v57 + 8;
  if (v57 != -8)
  {
    bzero(v56, v58);
  }

  free(v56);
  v30 = *(&v119 + 1);
  if (*(&v119 + 1))
  {
LABEL_21:
    (*v30)(v119);
  }

  return v12;
}

uint64_t pkcs12_pbe_encrypt_init(uint64_t *a1, evp_cipher_ctx_st *a2, int a3, const evp_cipher_st *a4, unsigned int a5, char *a6, unint64_t a7, void *a8, size_t a9)
{
  if (a3 > 145)
  {
    if (a3 == 146)
    {
      v9 = a2;
      v10 = a5;
      v11 = a6;
      v12 = a7;
      v13 = a8;
      v14 = &unk_2882A5D58;
      v15 = a1;
      result = CBB_add_asn1(a1, &v27, 536870928);
      if (!result)
      {
        return result;
      }

      goto LABEL_15;
    }

    if (a3 == 149)
    {
      v9 = a2;
      v10 = a5;
      v11 = a6;
      v12 = a7;
      v13 = a8;
      v14 = &kBuiltinPBE;
      v15 = a1;
      result = CBB_add_asn1(a1, &v27, 536870928);
      if (!result)
      {
        return result;
      }

      goto LABEL_15;
    }

LABEL_10:
    ERR_put_error(19, 0, 119, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pkcs8/pkcs8.cc", 300);
    return 0;
  }

  if (a3 == -1)
  {

    return PKCS5_pbe2_encrypt_init(a1, a2, a4, a5, a6, a7, a8, a9);
  }

  if (a3 != 144)
  {
    goto LABEL_10;
  }

  v9 = a2;
  v10 = a5;
  v11 = a6;
  v12 = a7;
  v13 = a8;
  v14 = &unk_2882A5D30;
  v15 = a1;
  result = CBB_add_asn1(a1, &v27, 536870928);
  if (!result)
  {
    return result;
  }

LABEL_15:
  v17 = v14[14];
  if (!CBB_add_asn1(&v27, v31, 6))
  {
    goto LABEL_29;
  }

  __dst = 0;
  if (!CBB_add_space(v31, &__dst, v17))
  {
    goto LABEL_29;
  }

  if (v17)
  {
    memcpy(__dst, v14 + 4, v17);
  }

  if (CBB_flush(&v27))
  {
    result = CBB_add_asn1(&v27, &__dst, 536870928);
    if (!result)
    {
      return result;
    }

    if (CBB_add_asn1(&__dst, v31, 4))
    {
      v32 = 0;
      if (CBB_add_space(v31, &v32, a9))
      {
        if (a9)
        {
          memcpy(v32, v13, a9);
        }

        if (CBB_flush(&__dst))
        {
          result = CBB_add_asn1_uint64_with_tag(&__dst, v10, 2);
          if (result)
          {
            result = CBB_flush(v15);
            if (result)
            {
              return pkcs12_pbe_cipher_init(v14, v9, v10, v11, v12, v13, a9, 1);
            }
          }

          return result;
        }
      }
    }

    result = 0;
    v18 = v24;
    v19 = v25;
    v20 = &v26;
  }

  else
  {
LABEL_29:
    result = 0;
    v18 = v28;
    v19 = v29;
    v20 = &v30;
  }

  v21 = (v19 + 24);
  if (v18)
  {
    v22 = v21;
  }

  else
  {
    v22 = v20;
  }

  *v22 |= 2u;
  return result;
}

uint64_t pkcs12_pbe_cipher_init(uint64_t a1, EVP_CIPHER_CTX *a2, unsigned int a3, char *a4, uint64_t a5, void *a6, unint64_t a7, int a8)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = (*(a1 + 16))();
  v17 = (*(a1 + 24))();
  if (pkcs12_key_gen(a4, a5, a6, a7, 1, a3, v16->key_len, key, v17) && pkcs12_key_gen(a4, a5, a6, a7, 2, a3, v16->iv_len, iv, v17))
  {
    return EVP_CipherInit_ex(a2, v16, 0, key, iv, a8);
  }

  ERR_put_error(19, 0, 110, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pkcs8/pkcs8.cc", 201);
  return 0;
}

uint64_t pkcs8_pbe_decrypt(unsigned __int8 **a1, void *a2, unsigned __int8 **a3, char *a4, unint64_t a5, const unsigned __int8 *a6, unint64_t a7)
{
  *&ctx.final[16] = *MEMORY[0x277D85DE8];
  memset(&ctx, 0, 152);
  v36 = 0;
  v35 = 0;
  if (!cbs_get_any_asn1_element(a3, &v33, &v35, &v36, 0, 0, 0) || v35 != 6 || (v14 = v34 - v36, v34 < v36))
  {
    ERR_put_error(19, 0, 104, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pkcs8/pkcs8.cc", 332);
    v15 = 0;
    cipher = ctx.cipher;
    if (!ctx.cipher)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v21 = v33 + v36;
  v33 += v36;
  v34 -= v36;
  if (v14 == 9)
  {
    if (*v21 == 0x5010DF78648862ALL && *(v21 + 8) == 13)
    {
      v27 = &unk_2882A5D80;
      goto LABEL_33;
    }

    goto LABEL_46;
  }

  if (v14 != 10)
  {
    goto LABEL_46;
  }

  v22 = *(v21 + 9);
  v24 = *v21 == 0xC010DF78648862ALL && *(v21 + 8) == 1;
  if (v24 && v22 == 6)
  {
    v27 = &kBuiltinPBE;
    goto LABEL_33;
  }

  if (v22 == 1 && v24)
  {
    v27 = &unk_2882A5D30;
    goto LABEL_33;
  }

  if (v22 != 3)
  {
    LOBYTE(v24) = 0;
  }

  if (!v24)
  {
LABEL_46:
    ERR_put_error(19, 0, 119, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pkcs8/pkcs8.cc", 343);
    v15 = 0;
    cipher = ctx.cipher;
    if (!ctx.cipher)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v27 = &unk_2882A5D58;
LABEL_33:
  if (v27[4](v27, &ctx, a4, a5, a3))
  {
    if (a7 <= 0xFFFFFFFFFFFFFFF7)
    {
      v28 = malloc_type_malloc(a7 + 8, 0xB4E622C9uLL);
      if (v28)
      {
        v29 = v28;
        *v28 = a7;
        v30 = v28 + 8;
        if (a7 >> 31)
        {
          ERR_put_error(19, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pkcs8/pkcs8.cc", 358);
        }

        else
        {
          *outl = 0;
          if (EVP_DecryptUpdate(&ctx, v30, &outl[1], a6, a7))
          {
            v31 = outl[1];
            if (EVP_DecryptFinal_ex(&ctx, &v30[outl[1]], outl))
            {
              *a1 = v30;
              *a2 = outl[0] + v31;
              v15 = 1;
              cipher = ctx.cipher;
              if (!ctx.cipher)
              {
                goto LABEL_7;
              }

              goto LABEL_5;
            }
          }
        }

        free(v29);
        v15 = 0;
        cipher = ctx.cipher;
        if (!ctx.cipher)
        {
          goto LABEL_7;
        }

        goto LABEL_5;
      }
    }

    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v15 = 0;
    cipher = ctx.cipher;
    if (!ctx.cipher)
    {
      goto LABEL_7;
    }
  }

  else
  {
    ERR_put_error(19, 0, 109, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pkcs8/pkcs8.cc", 348);
    v15 = 0;
    cipher = ctx.cipher;
    if (!ctx.cipher)
    {
      goto LABEL_7;
    }
  }

LABEL_5:
  cleanup = cipher->cleanup;
  if (cleanup)
  {
    (cleanup)(&ctx);
  }

LABEL_7:
  if (*&ctx.encrypt)
  {
    v19 = (*&ctx.encrypt - 8);
    v18 = *(*&ctx.encrypt - 8);
    if (v18 != -8)
    {
      bzero(v19, v18 + 8);
    }

    free(v19);
  }

  return v15;
}

unsigned int *PKCS8_parse_encrypted_private_key(unsigned __int8 **a1, char *a2, unint64_t a3)
{
  v18 = 0;
  LODWORD(v16) = 0;
  if (cbs_get_any_asn1_element(a1, &v20, &v16, &v18, 0, 0, 0) && v16 == 536870928 && v21 >= v18 && (v20 += v18, v21 -= v18, v16 = 0, LODWORD(v13[0]) = 0, cbs_get_any_asn1_element(&v20, &v18, v13, &v16, 0, 0, 0)) && LODWORD(v13[0]) == 536870928 && v19 >= v16 && (v18 += v16, v19 -= v16, v13[0] = 0, LODWORD(v15) = 0, cbs_get_any_asn1_element(&v20, &v16, &v15, v13, 0, 0, 0)) && v15 == 4 && (v6 = v17 - v13[0], v17 >= v13[0]) && (v7 = &v13[0][v16], v16 += v13[0], v17 -= v13[0], !v21))
  {
    v14 = 0;
    v15 = 0;
    if (pkcs8_pbe_decrypt(&v15, &v14, &v18, a2, a3, v7, v6))
    {
      v8 = v15;
      v13[0] = v15;
      v13[1] = v14;
      result = EVP_parse_private_key(v13);
      if (v8)
      {
        v9 = result;
        v11 = *(v8 - 1);
        v10 = v8 - 8;
        v12 = v11 + 8;
        if (v11 != -8)
        {
          bzero(v10, v12);
        }

        free(v10);
        return v9;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    ERR_put_error(19, 0, 104, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pkcs8/pkcs8.cc", 386);
    return 0;
  }

  return result;
}

BOOL PKCS8_marshal_encrypted_private_key(uint64_t *a1, int a2, const evp_cipher_st *a3, char *a4, unint64_t a5, void *a6, unint64_t a7, int a8, uint64_t a9)
{
  v9 = a7;
  *&ctx.final[24] = *MEMORY[0x277D85DE8];
  v15 = 0uLL;
  memset(&ctx, 0, 152);
  if (a6)
  {
    v16 = a6;
    v17 = 0;
  }

  else
  {
    if (!a7)
    {
      v9 = 16;
    }

    if (v9 > 0xFFFFFFFFFFFFFFF7 || (v26 = a8, (v27 = malloc_type_malloc(v9 + 8, 0xB4E622C9uLL)) == 0))
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      v30 = 0;
      cipher = ctx.cipher;
      if (!ctx.cipher)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    }

    *v27 = v9;
    v16 = v27 + 8;
    BCM_rand_bytes_with_additional_data(v27 + 8, v9, BCM_rand_bytes::kZeroAdditionalData);
    v17 = v16;
    a8 = v26;
    v15 = 0uLL;
  }

  *v65 = v15;
  *&v65[16] = v15;
  if (a8 >= 1)
  {
    v18 = a8;
  }

  else
  {
    v18 = 2048;
  }

  v64 = v15;
  v19 = malloc_type_malloc(0x88uLL, 0xB4E622C9uLL);
  if (!v19)
  {
    v22 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v23 = 14;
    v24 = 65;
    v25 = 217;
    goto LABEL_19;
  }

  *v19 = 128;
  BYTE8(v64) = 0;
  *&v64 = 0;
  *v65 = v19 + 1;
  *&v65[8] = xmmword_273BB6040;
  v65[24] = 1;
  v20 = *(a9 + 16);
  if (!v20 || (v21 = *(v20 + 56)) == 0)
  {
    v22 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/evp_asn1.cc";
    v23 = 6;
    v24 = 128;
    v25 = 149;
    goto LABEL_19;
  }

  if (!v21(&v64))
  {
    goto LABEL_20;
  }

  if (BYTE8(v64))
  {
    v22 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bytestring/cbb.cc";
    v23 = 14;
    v24 = 66;
    v25 = 126;
LABEL_19:
    ERR_put_error(v23, 0, v24, v22, v25);
    goto LABEL_20;
  }

  if (!CBB_flush(&v64))
  {
LABEL_20:
    if (!BYTE8(v64) && (v65[24] & 1) != 0 && *v65)
    {
      v29 = (*v65 - 8);
      v28 = *(*v65 - 8);
      if (v28 != -8)
      {
        bzero((*v65 - 8), v28 + 8);
      }

      free(v29);
    }

    v30 = 0;
    goto LABEL_27;
  }

  v39 = *&v65[8];
  in = *v65;
  *v65 = 0;
  if (!CBB_add_asn1(a1, v63, 536870928) || !pkcs12_pbe_encrypt_init(v63, &ctx, a2, a3, v18, a4, a5, v16, v9))
  {
    goto LABEL_64;
  }

  block_size = ctx.cipher->block_size;
  v41 = v39 + block_size;
  if (__CFADD__(v39, block_size))
  {
    ERR_put_error(19, 0, 118, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pkcs8/pkcs8.cc", 452);
LABEL_64:
    v30 = 0;
    v44 = in;
    goto LABEL_65;
  }

  v42 = v39;
  *outl = 0;
  out = 0;
  if (!CBB_add_asn1(v63, &v58, 4))
  {
    goto LABEL_64;
  }

  v44 = in;
  if (!CBB_reserve(&v58, &out, v41) || !EVP_CipherUpdate(&ctx, out, &outl[1], in, v42))
  {
LABEL_62:
    v30 = 0;
    if (!in)
    {
      goto LABEL_27;
    }

    goto LABEL_66;
  }

  v45 = outl[1];
  v30 = 0;
  if (EVP_CipherFinal_ex(&ctx, &out[outl[1]], outl))
  {
    v46 = outl[0] + v45;
    v47 = &v61;
    if (v59)
    {
      v47 = (v60 + 8);
    }

    v48 = __CFADD__(*v47, v46);
    v49 = *v47 + v46;
    v50 = v48;
    if (!v58 && !v50)
    {
      if (v59)
      {
        v51 = (v60 + 16);
      }

      else
      {
        v51 = &v62;
      }

      if (v49 <= *v51)
      {
        *v47 = v49;
        v30 = CBB_flush(a1) != 0;
        if (!in)
        {
          goto LABEL_27;
        }

        goto LABEL_66;
      }

      goto LABEL_62;
    }
  }

LABEL_65:
  if (!v44)
  {
    goto LABEL_27;
  }

LABEL_66:
  v53 = *(v44 - 1);
  v52 = v44 - 8;
  v54 = v53 + 8;
  if (v53 != -8)
  {
    bzero(v52, v54);
  }

  free(v52);
LABEL_27:
  if (v17)
  {
    v32 = *(v17 - 1);
    v31 = (v17 - 1);
    v33 = v32 + 8;
    if (v32 != -8)
    {
      bzero(v31, v33);
    }

    free(v31);
  }

  cipher = ctx.cipher;
  if (ctx.cipher)
  {
LABEL_34:
    cleanup = cipher->cleanup;
    if (cleanup)
    {
      (cleanup)(&ctx);
    }
  }

LABEL_36:
  if (*&ctx.encrypt)
  {
    v37 = (*&ctx.encrypt - 8);
    v36 = *(*&ctx.encrypt - 8);
    if (v36 != -8)
    {
      bzero((*&ctx.encrypt - 8), v36 + 8);
    }

    free(v37);
  }

  return v30;
}

uint64_t pkcs12_pbe_decrypt_init(uint64_t a1, EVP_CIPHER_CTX *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v14 = 0;
  LODWORD(v19) = 0;
  if (!cbs_get_any_asn1_element(a5, &v16, &v19, &v14, 0, 0, 0) || v19 != 536870928 || v17 < v14 || (v16 += v14, v17 -= v14, v19 = 0, v18 = 0, !cbs_get_any_asn1_element(&v16, &v14, &v18, &v19, 0, 0, 0)) || v18 != 4 || v15 < v19 || (v13 = 0, v14 += v19, v15 -= v19, !CBS_get_asn1_uint64_with_tag(&v16, &v13, 2)) || v17 || *(a5 + 8))
  {
    v10 = 104;
    v11 = 220;
LABEL_5:
    ERR_put_error(19, 0, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pkcs8/pkcs8.cc", v11);
    return 0;
  }

  if (v13 - 100000001 < 0xFFFFFFFFFA0A1F00)
  {
    v10 = 129;
    v11 = 225;
    goto LABEL_5;
  }

  return pkcs12_pbe_cipher_init(a1, a2, v13, a3, a4, v14, v15, 0);
}

EVP_PKEY *__cdecl EVP_PKCS82PKEY(PKCS8_PRIV_KEY_INFO *p8)
{
  out = 0;
  v1 = ASN1_item_i2d(p8, &out, &PKCS8_PRIV_KEY_INFO_it);
  if ((v1 & 0x80000000) != 0)
  {
    return 0;
  }

  v13 = out;
  v14 = v1;
  v2 = EVP_parse_private_key(&v13);
  if (!v2 || v14)
  {
    ERR_put_error(19, 0, 104, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pkcs8/pkcs8_x509.cc", 74);
    if (v2)
    {
      v3 = atomic_load(v2);
      if (v3 != -1)
      {
        while (1)
        {
          if (!v3)
          {
            abort();
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
            goto LABEL_19;
          }
        }

        if (v3 == 1)
        {
          v6 = *(v2 + 2);
          if (v6)
          {
            v7 = *(v6 + 160);
            if (v7)
            {
              v7(v2);
              *(v2 + 1) = 0;
              v2[1] = 0;
            }
          }

          v9 = *(v2 - 1);
          v8 = v2 - 2;
          v10 = v9 + 8;
          if (v9 != -8)
          {
            bzero(v8, v10);
          }

          free(v8);
        }
      }

LABEL_19:
      v2 = 0;
    }
  }

  if (!out)
  {
    return v2;
  }

  v12 = out - 8;
  v11 = *(out - 1);
  if (v11 != -8)
  {
    bzero(v12, v11 + 8);
  }

  free(v12);
  return v2;
}

PKCS8_PRIV_KEY_INFO *__cdecl EVP_PKEY2PKCS8(EVP_PKEY *pkey)
{
  v26 = 0;
  *v24 = 0u;
  v25 = 0u;
  v2 = malloc_type_malloc(8uLL, 0xB4E622C9uLL);
  if (v2)
  {
    *v2 = 0;
    v3 = v2 + 1;
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v3 = 0;
  }

  LOBYTE(v24[0]) = 0;
  v23 = 0;
  v25 = 0uLL;
  v24[1] = v3;
  LOBYTE(v26) = 1;
  ptr = pkey->pkey.ptr;
  if (!ptr || (v5 = *(ptr + 7)) == 0)
  {
    v6 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/evp_asn1.cc";
    v7 = 6;
    v8 = 128;
    v9 = 149;
    goto LABEL_10;
  }

  if (!v5(&v23, pkey))
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  if (LOBYTE(v24[0]))
  {
    v6 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bytestring/cbb.cc";
    v7 = 14;
    v8 = 66;
    v9 = 126;
LABEL_10:
    ERR_put_error(v7, 0, v8, v6, v9);
    goto LABEL_11;
  }

  if (!CBB_flush(&v23))
  {
    goto LABEL_11;
  }

  v10 = v24[1];
  v17 = v25;
  v24[1] = 0;
  if ((v25 & 0x8000000000000000) != 0)
  {
LABEL_12:
    if (!LOBYTE(v24[0]) && (v26 & 1) != 0 && v24[1])
    {
      v12 = v24[1] - 8;
      v11 = *(v24[1] - 1);
      if (v11 != -8)
      {
        bzero(v12, v11 + 8);
      }

      free(v12);
    }

    ERR_put_error(19, 0, 105, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pkcs8/pkcs8_x509.cc", 91);
    if (!v10)
    {
      return 0;
    }

    v14 = *(v10 - 1);
    v13 = v10 - 8;
    v15 = v14 + 8;
    if (v14 != -8)
    {
      bzero(v13, v15);
    }

    free(v13);
    return 0;
  }

  v22 = v10;
  pval = 0;
  if (asn1_item_ex_d2i(&pval, &v22, v25, &PKCS8_PRIV_KEY_INFO_it, 0xFFFFFFFFLL, 0, 0, 0, 0) <= 0)
  {
    ASN1_item_ex_free(&pval, &PKCS8_PRIV_KEY_INFO_it);
  }

  result = pval;
  if (pval)
  {
    if (v22 == &v10[v17])
    {
      goto LABEL_33;
    }
  }

  else
  {
    pval = 0;
  }

  ASN1_item_ex_free(&pval, &PKCS8_PRIV_KEY_INFO_it);
  ERR_put_error(19, 0, 104, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pkcs8/pkcs8_x509.cc", 100);
  result = 0;
LABEL_33:
  if (v10)
  {
    v18 = result;
    v20 = *(v10 - 1);
    v19 = v10 - 8;
    v21 = v20 + 8;
    if (v20 != -8)
    {
      bzero(v19, v21);
    }

    free(v19);
    return v18;
  }

  return result;
}

PKCS8_PRIV_KEY_INFO *__cdecl PKCS8_decrypt(X509_SIG *p8, const char *pass, int passlen)
{
  if (pass && passlen == -1)
  {
    v5 = strlen(pass);
    out = 0;
    v6 = ASN1_item_i2d(p8, &out, &X509_PUBKEY_it.sname);
    if ((v6 & 0x80000000) != 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v5 = passlen;
    out = 0;
    v6 = ASN1_item_i2d(p8, &out, &X509_PUBKEY_it.sname);
    if ((v6 & 0x80000000) != 0)
    {
LABEL_4:
      v7 = 0;
      v8 = 0;
      v9 = out;
      if (!out)
      {
        goto LABEL_5;
      }

LABEL_13:
      v12 = *(v9 - 1);
      v11 = v9 - 8;
      v13 = v12 + 8;
      if (v12 != -8)
      {
        bzero(v11, v13);
      }

      free(v11);
      if (!v8)
      {
        return v7;
      }

      goto LABEL_16;
    }
  }

  v22 = out;
  v23 = v6;
  v10 = PKCS8_parse_encrypted_private_key(&v22, pass, v5);
  v8 = v10;
  if (v10 && !v23)
  {
    v7 = EVP_PKEY2PKCS8(v10);
    v9 = out;
    if (out)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = 0;
    v9 = out;
    if (out)
    {
      goto LABEL_13;
    }
  }

LABEL_5:
  if (!v8)
  {
    return v7;
  }

LABEL_16:
  v14 = atomic_load(v8);
  if (v14 == -1)
  {
    return v7;
  }

  while (1)
  {
    if (!v14)
    {
      abort();
    }

    v15 = v14;
    atomic_compare_exchange_strong(&v8->type, &v15, v14 - 1);
    if (v15 == v14)
    {
      break;
    }

    v14 = v15;
    if (v15 == -1)
    {
      return v7;
    }
  }

  if (v14 != 1)
  {
    return v7;
  }

  ptr = v8->pkey.ptr;
  if (ptr)
  {
    v18 = *(ptr + 20);
    if (v18)
    {
      v18(v8);
      *&v8->references = 0;
      v8->save_type = 0;
    }
  }

  attributes = v8[-1].attributes;
  p_attributes = &v8[-1].attributes;
  p_data = &attributes->data;
  if (attributes != -8)
  {
    bzero(p_attributes, p_data);
  }

  free(p_attributes);
  return v7;
}

X509_SIG *__cdecl PKCS8_encrypt(int pbe_nid, const EVP_CIPHER *cipher, const char *pass, int passlen, unsigned __int8 *salt, int saltlen, int iter, PKCS8_PRIV_KEY_INFO *p8)
{
  v10 = *&saltlen;
  if (pass && passlen == -1)
  {
    v15 = strlen(pass);
  }

  else
  {
    v15 = passlen;
  }

  out = 0;
  v16 = ASN1_item_i2d(p8, &out, &PKCS8_PRIV_KEY_INFO_it);
  if ((v16 & 0x80000000) != 0)
  {
    return 0;
  }

  *&v49[0] = out;
  *(&v49[0] + 1) = v16;
  v17 = EVP_parse_private_key(v49);
  if (!v17 || *(&v49[0] + 1))
  {
    ERR_put_error(19, 0, 104, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pkcs8/pkcs8_x509.cc", 74);
    if (v17)
    {
      v24 = atomic_load(v17);
      if (v24 != -1)
      {
        while (1)
        {
          if (!v24)
          {
LABEL_69:
            abort();
          }

          v25 = v24;
          atomic_compare_exchange_strong(v17, &v25, v24 - 1);
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
          v28 = *(v17 + 2);
          if (v28)
          {
            v29 = *(v28 + 160);
            if (v29)
            {
              v29(v17);
              *(v17 + 1) = 0;
              v17[1] = 0;
            }
          }

          v31 = *(v17 - 1);
          v30 = v17 - 2;
          v32 = v31 + 8;
          if (v31 != -8)
          {
            bzero(v30, v32);
          }

          free(v30);
        }
      }
    }

LABEL_35:
    if (out)
    {
      v34 = out - 8;
      v33 = *(out - 1);
      if (v33 != -8)
      {
        bzero(v34, v33 + 8);
      }

      free(v34);
    }

    return 0;
  }

  if (out)
  {
    v19 = out - 8;
    v18 = *(out - 1);
    if (v18 != -8)
    {
      bzero(v19, v18 + 8);
    }

    free(v19);
  }

  v50 = 0;
  memset(v49, 0, sizeof(v49));
  v20 = malloc_type_malloc(0x88uLL, 0xB4E622C9uLL);
  if (!v20)
  {
    v21 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v22 = 65;
    v23 = 217;
    goto LABEL_23;
  }

  *v20 = 128;
  BYTE8(v49[0]) = 0;
  *&v49[0] = 0;
  *&v49[1] = v20 + 1;
  *(&v49[1] + 8) = xmmword_273BB6040;
  BYTE8(v49[2]) = BYTE8(v49[2]) & 0xFC | 1;
  if (!PKCS8_marshal_encrypted_private_key(v49, pbe_nid, cipher, pass, v15, salt, v10, iter, v17))
  {
    goto LABEL_24;
  }

  if (BYTE8(v49[0]))
  {
    v21 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bytestring/cbb.cc";
    v22 = 66;
    v23 = 126;
LABEL_23:
    ERR_put_error(14, 0, v22, v21, v23);
    goto LABEL_24;
  }

  if (!CBB_flush(v49))
  {
LABEL_24:
    if (BYTE8(v49[0]) || (BYTE8(v49[2]) & 1) == 0)
    {
      result = 0;
      v27 = atomic_load(v17);
      if (v27 != -1)
      {
        goto LABEL_58;
      }

      return result;
    }

    if (*&v49[1])
    {
      v36 = (*&v49[1] - 8);
      v35 = *(*&v49[1] - 8);
      if (v35 != -8)
      {
        bzero(v36, v35 + 8);
      }

      v37 = 0;
      goto LABEL_54;
    }

    result = 0;
    goto LABEL_57;
  }

  v38 = v49[1];
  *&v49[1] = 0;
  v50 = v38;
  out = 0;
  if (asn1_item_ex_d2i(&out, &v50, *(&v49[1] + 1), &X509_PUBKEY_it.sname, 0xFFFFFFFFLL, 0, 0, 0, 0) < 1)
  {
    ASN1_item_ex_free(&out, &X509_PUBKEY_it.sname);
  }

  result = out;
  if (!out || v50 != (v38 + *(&v38 + 1)))
  {
    v39 = out;
    ERR_put_error(19, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/pkcs8/pkcs8_x509.cc", 180);
    out = v39;
    ASN1_item_ex_free(&out, &X509_PUBKEY_it.sname);
    result = 0;
  }

  if (v38)
  {
    v37 = result;
    v40 = *(v38 - 8);
    v36 = (v38 - 8);
    v41 = v40 + 8;
    if (v40 != -8)
    {
      bzero(v36, v41);
    }

LABEL_54:
    free(v36);
    result = v37;
    v27 = atomic_load(v17);
    if (v27 != -1)
    {
      goto LABEL_58;
    }

    return result;
  }

LABEL_57:
  v27 = atomic_load(v17);
  if (v27 != -1)
  {
    while (1)
    {
LABEL_58:
      if (!v27)
      {
        goto LABEL_69;
      }

      v42 = v27;
      atomic_compare_exchange_strong(v17, &v42, v27 - 1);
      if (v42 == v27)
      {
        break;
      }

      v27 = v42;
      if (v42 == -1)
      {
        return result;
      }
    }

    if (v27 == 1)
    {
      v43 = *(v17 + 2);
      v44 = result;
      if (v43)
      {
        v45 = *(v43 + 160);
        if (v45)
        {
          v45(v17);
          *(v17 + 1) = 0;
          v17[1] = 0;
        }
      }

      v47 = *(v17 - 1);
      v46 = v17 - 2;
      v48 = v47 + 8;
      if (v47 != -8)
      {
        bzero(v46, v48);
      }

      free(v46);
      return v44;
    }
  }

  return result;
}

int X509_policy_check(X509_POLICY_TREE **ptree, int *pexplicit_policy, STACK *certs, STACK *policy_oids, unsigned int flags)
{
  v391[2] = *MEMORY[0x277D85DE8];
  *&policy_oids->num = 0;
  if (!ptree)
  {
    return 0;
  }

  v5 = *ptree;
  v6 = (*ptree - 2);
  if (*ptree < 2)
  {
    return 0;
  }

  v8 = ptree;
  v11 = certs;
  v12 = OPENSSL_sk_new_null();
  if (!v12)
  {
    return 17;
  }

  v13 = v12;
  *(&v377 + 1) = v8;
  v378 = policy_oids;
  v14 = 0;
  if ((v11 & 0x100) != 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = v5 + 1;
  }

  if ((v11 & 0x200) != 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = v5 + 1;
  }

  v383 = v15;
  v384 = v16;
  if ((v11 & 0x400) != 0)
  {
    v17 = 0;
  }

  else
  {
    v17 = v5 + 1;
  }

  v381 = v17;
  v367 = pexplicit_policy;
  *&v377 = v5;
  while (2)
  {
    v386 = v6;
    if (*v8 > v6)
    {
      v18 = *(v8[1] + v6);
    }

    else
    {
      v18 = 0;
    }

    if (!x509v3_cache_extensions(v18))
    {
      v299 = 0;
      v7 = 17;
      goto LABEL_539;
    }

    v19 = *(v18 + 48);
    if (!v14)
    {
      v20 = malloc_type_malloc(0x18uLL, 0xB4E622C9uLL);
      if (!v20)
      {
        ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
        v7 = 17;
        goto LABEL_572;
      }

      v21 = v20;
      *v20 = 16;
      v20[1] = 0;
      v14 = (v20 + 1);
      v20[2] = 0;
      v22 = malloc_type_malloc(0x30uLL, 0xB4E622C9uLL);
      if (!v22)
      {
        ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
LABEL_496:
        v21[1] = 0;
        if (*v21 != -8)
        {
          bzero(v21, *v21 + 8);
        }

        free(v21);
        v7 = 17;
        goto LABEL_572;
      }

      v23 = v22;
      *v22 = 40;
      *(v22 + 8) = 0u;
      v24 = v22 + 8;
      *(v22 + 24) = 0u;
      *(v22 + 5) = 0;
      v25 = malloc_type_malloc(0x28uLL, 0xB4E622C9uLL);
      if (!v25)
      {
        ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
        free(v23);
        goto LABEL_496;
      }

      *v25 = 32;
      *(v25 + 24) = 0u;
      *(v25 + 8) = 0u;
      v23[2] = v25 + 8;
      v23[4] = 4;
      v23[5] = x509_policy_node_cmp;
      v21[1] = v24;
      *(v21 + 4) = 1;
    }

    v379 = v19;
    v26 = (v19 >> 5) & 1;
    if (!v6)
    {
      v26 = 0;
    }

    if (v384)
    {
      v27 = 1;
    }

    else
    {
      v27 = v26;
    }

    v28 = *(*v18 + 72);
    if (v28 && *v28)
    {
      v29 = 0;
      v30 = 0;
      do
      {
        v31 = *(v28[1] + 8 * v29);
        if (OBJ_obj2nid(v31->object) == 89)
        {
          if (v30)
          {
            goto LABEL_538;
          }
        }

        else
        {
          v31 = v30;
        }

        ++v29;
        v30 = v31;
      }

      while (v29 < *v28);
      if (v31)
      {
        v32 = X509V3_EXT_d2i(v31);
        if (!v32)
        {
          goto LABEL_538;
        }

        v33 = v32;
        if (!*v32)
        {
          ERR_put_error(11, 0, 144, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/policy.cc", 250);
          goto LABEL_536;
        }

        if (v32[4] != policyinfo_cmp)
        {
          *(v32 + 4) = 0;
        }

        v32[4] = policyinfo_cmp;
        OPENSSL_sk_sort(v32, sk_POLICYINFO_call_cmp_func);
        if (*v33)
        {
          v34 = OBJ_obj2nid(***(v33 + 8));
          v35 = v34 == 746;
          if (*v33 >= 2uLL)
          {
            v368 = v18;
            v372 = v14;
            v36 = 0;
            v37 = v34 == 746;
            v38 = *(v33 + 8);
            do
            {
              v40 = *(v38 + 8 * v36 + 8);
              v41 = OBJ_obj2nid(*v40);
              v42 = *v33;
              v38 = *(v33 + 8);
              v43 = **(v38 + 8 * v36);
              v44 = *(v43 + 20);
              if (v44 == (*v40)->length && (!v44 || !memcmp(*(v43 + 24), (*v40)->data, v44)))
              {
                ERR_put_error(11, 0, 144, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/policy.cc", 265);
                v18 = v368;
                v14 = v372;
                goto LABEL_536;
              }

              if (v41 == 746)
              {
                v37 = 1;
              }

              v39 = v36 + 2;
              ++v36;
            }

            while (v39 < v42);
            v35 = v37;
            v18 = v368;
            v14 = v372;
          }

          v65 = (v14 + 8);
          v64 = *(v14 + 2);
          if (v27 & v35)
          {
LABEL_94:
            if (v64)
            {
              v69 = OPENSSL_sk_new_null();
              if (!v69)
              {
                goto LABEL_536;
              }

              v70 = v69;
              v369 = v18;
              if (*v33)
              {
                v71 = 0;
                v373 = v14;
                do
                {
                  v74 = *(*(v33 + 8) + 8 * v71);
                  if (OBJ_obj2nid(*v74) == 746)
                  {
                    goto LABEL_102;
                  }

                  pval = *v74;
                  v75 = *v14;
                  if (*v14)
                  {
                    if (v75[4])
                    {
                      v76 = *v75;
                      if (*(v75 + 4))
                      {
                        v77 = 0;
                      }

                      else
                      {
                        v77 = v76 >= 2;
                      }

                      if (v77)
                      {
                        v79 = 0;
                        while (1)
                        {
                          v82 = v75[4];
                          v388 = *(v75[1] + 8 * v79);
                          p_pval = &pval;
                          if (!v82(&p_pval, &v388))
                          {
                            goto LABEL_141;
                          }

                          if (++v79 >= *v75)
                          {
                            goto LABEL_127;
                          }
                        }
                      }

                      if (v76)
                      {
                        v78 = 0;
                        do
                        {
                          v79 = v78 + ((v76 - v78 - 1) >> 1);
                          v80 = v75[4];
                          v388 = *(v75[1] + 8 * v79);
                          p_pval = &pval;
                          v81 = v80(&p_pval, &v388);
                          if (v81 >= 1)
                          {
                            v78 = v79 + 1;
                          }

                          else if (v81 < 0)
                          {
                            v76 = v78 + ((v76 - v78 - 1) >> 1);
                          }

                          else
                          {
                            if (v76 - v78 == 1)
                            {
                              goto LABEL_141;
                            }

                            v76 = v79 + 1;
                          }
                        }

                        while (v78 < v76);
                      }
                    }

                    else if (*v75)
                    {
                      v79 = 0;
                      while (*(v75[1] + 8 * v79) != &pval)
                      {
                        if (*v75 == ++v79)
                        {
                          goto LABEL_127;
                        }
                      }

LABEL_141:
                      v14 = v373;
                      v92 = *v373;
                      if (*v373 && *v92 > v79 && *(v92[1] + 8 * v79))
                      {
                        goto LABEL_102;
                      }

                      goto LABEL_128;
                    }
                  }

LABEL_127:
                  v14 = v373;
LABEL_128:
                  v83 = *v74;
                  v84 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
                  if (!v84)
                  {
                    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
                    goto LABEL_524;
                  }

                  v85 = v84;
                  *v84 = 24;
                  v84[1] = 0;
                  v86 = (v84 + 1);
                  v84[2] = 0;
                  v84[3] = 0;
                  v84[1] = OBJ_dup(v83);
                  v87 = OPENSSL_sk_new_null();
                  v85[2] = v87;
                  if (*v86)
                  {
                    v88 = v87 == 0;
                  }

                  else
                  {
                    v88 = 1;
                  }

                  if (v88)
                  {
                    ASN1_OBJECT_free(*v86);
                    v270 = v85[2];
                    if (v270)
                    {
                      v271 = *v270;
                      if (*v270)
                      {
                        v272 = 0;
                        do
                        {
                          v273 = *(v270[1] + 8 * v272);
                          if (v273)
                          {
                            ASN1_OBJECT_free(v273);
                            v271 = *v270;
                          }

                          ++v272;
                        }

                        while (v272 < v271);
                      }

LABEL_514:
                      v277 = v270[1];
                      if (v277)
                      {
                        v279 = *(v277 - 8);
                        v278 = (v277 - 8);
                        v280 = v279 + 8;
                        if (v279 != -8)
                        {
                          bzero(v278, v280);
                        }

                        free(v278);
                      }

                      v282 = *(v270 - 1);
                      v281 = v270 - 1;
                      v283 = v282 + 8;
                      if (v282 != -8)
                      {
                        bzero(v281, v283);
                      }

                      free(v281);
                    }

LABEL_521:
                    if (*v85 != -8)
                    {
                      bzero(v85, *v85 + 8);
                    }

                    free(v85);
LABEL_524:
                    v284 = *v70;
                    v18 = v369;
                    if (*v70)
                    {
                      v285 = 0;
                      do
                      {
                        v286 = *(*(v70 + 1) + 8 * v285);
                        if (v286)
                        {
                          x509_policy_node_free(v286);
                          v284 = *v70;
                        }

                        ++v285;
                      }

                      while (v285 < v284);
                    }

                    v287 = *(v70 + 1);
                    if (v287)
                    {
                      v289 = *(v287 - 8);
                      v288 = (v287 - 8);
                      v290 = v289 + 8;
                      if (v289 != -8)
                      {
                        bzero(v288, v290);
                      }

                      free(v288);
                    }

                    v292 = *(v70 - 1);
                    v291 = v70 - 8;
                    v293 = v292 + 8;
                    if (v292 != -8)
                    {
                      bzero(v291, v293);
                    }

                    free(v291);
LABEL_536:
                    pval = v33;
                    v294 = &CERTIFICATEPOLICIES_it;
                    goto LABEL_537;
                  }

                  v89 = *v70;
                  if (*v70 >= 0x7FFFFFFFuLL)
                  {
                    ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
LABEL_508:
                    ASN1_OBJECT_free(v85[1]);
                    v270 = v85[2];
                    if (v270)
                    {
                      v274 = *v270;
                      if (*v270)
                      {
                        v275 = 0;
                        do
                        {
                          v276 = *(v270[1] + 8 * v275);
                          if (v276)
                          {
                            ASN1_OBJECT_free(v276);
                            v274 = *v270;
                          }

                          ++v275;
                        }

                        while (v275 < v274);
                      }

                      goto LABEL_514;
                    }

                    goto LABEL_521;
                  }

                  v90 = *(v70 + 3);
                  if (v90 > v89 + 1)
                  {
                    v72 = *(v70 + 1);
                    v73 = *v70;
                    goto LABEL_99;
                  }

                  v72 = OPENSSL_realloc(*(v70 + 1), 16 * v90);
                  if (!v72)
                  {
                    goto LABEL_508;
                  }

                  *(v70 + 1) = v72;
                  *(v70 + 3) = 2 * v90;
                  v73 = *v70;
                  v91 = *v70 - v89;
                  if (*v70 > v89)
                  {
                    if (8 * v91)
                    {
                      memmove(&v72[v89 + 1], &v72[v89], 8 * v91);
                      v73 = *v70;
                      v72 = *(v70 + 1);
                    }

LABEL_99:
                    v72[v89] = v86;
                    *(v70 + 4) = 0;
                    *v70 = v73 + 1;
                    if (v73 == -1)
                    {
                      goto LABEL_508;
                    }

                    goto LABEL_102;
                  }

                  v72[v73] = v86;
                  *(v70 + 4) = 0;
                  *v70 = v73 + 1;
                  if (v73 == -1)
                  {
                    goto LABEL_508;
                  }

LABEL_102:
                  ++v71;
                }

                while (v71 < *v33);
              }

              v93 = *v70;
              v18 = v369;
              if (*v70)
              {
                v94 = 0;
                while (1)
                {
                  v95 = v93 <= v94 ? 0 : *(*(v70 + 1) + 8 * v94);
                  v96 = *v14;
                  v97 = **v14;
                  if (v97 >= 0x7FFFFFFF)
                  {
                    break;
                  }

                  v98 = v96[3];
                  if (v98 <= v97 + 1)
                  {
                    v101 = OPENSSL_realloc(v96[1], 16 * v98);
                    if (!v101)
                    {
                      goto LABEL_524;
                    }

                    v96[1] = v101;
                    v96[3] = 2 * v98;
                    v99 = *v96;
                    v102 = *v96 - v97;
                    if (*v96 <= v97)
                    {
                      v100 = &v101[v99];
                    }

                    else
                    {
                      if (8 * v102)
                      {
                        memmove(&v101[v97 + 1], &v101[v97], 8 * v102);
                        v99 = *v96;
                        v101 = v96[1];
                      }

                      v100 = &v101[v97];
                    }
                  }

                  else
                  {
                    v99 = **v14;
                    v100 = (v96[1] + 8 * v97);
                  }

                  *v100 = v95;
                  *(v96 + 4) = 0;
                  *v96 = v99 + 1;
                  if (v99 == -1)
                  {
                    goto LABEL_524;
                  }

                  v93 = *v70;
                  if (*v70 > v94)
                  {
                    *(*(v70 + 1) + 8 * v94) = 0;
                  }

                  ++v94;
                  v18 = v369;
                  if (v94 >= v93)
                  {
                    goto LABEL_163;
                  }
                }

                ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
                goto LABEL_524;
              }

LABEL_163:
              OPENSSL_sk_sort(*v14, sk_X509_POLICY_NODE_call_cmp_func);
              v103 = *v70;
              if (*v70)
              {
                v104 = 0;
                do
                {
                  v105 = *(*(v70 + 1) + 8 * v104);
                  if (v105)
                  {
                    x509_policy_node_free(v105);
                    v103 = *v70;
                  }

                  ++v104;
                }

                while (v104 < v103);
              }

              v106 = *(v70 + 1);
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

              v111 = *(v70 - 1);
              v110 = v70 - 8;
              v112 = v111 + 8;
              if (v111 != -8)
              {
                bzero(v110, v112);
              }

              free(v110);
            }

            pval = v33;
            ASN1_item_ex_free(&pval, &CERTIFICATEPOLICIES_it);
            if (v383)
            {
              goto LABEL_176;
            }

            goto LABEL_78;
          }
        }

        else
        {
          v65 = (v14 + 8);
          v64 = *(v14 + 2);
        }

        v66 = *v14;
        if (*v14)
        {
          if (*v66)
          {
            v67 = 0;
            v68 = 0;
            do
            {
              if (!delete_if_not_in_policies(*(v66[1] + 8 * v67), v33))
              {
                *(v66[1] + 8 * v68++) = *(v66[1] + 8 * v67);
              }

              ++v67;
            }

            while (v67 < *v66);
          }

          else
          {
            v68 = 0;
          }

          *v66 = v68;
        }

        *v65 = 0;
        goto LABEL_94;
      }
    }

    *(v14 + 2) = 0;
    v45 = *v14;
    if (*v14)
    {
      v46 = 0;
      while (1)
      {
        v47 = *v45;
        if (v46 >= *v45)
        {
          break;
        }

        v48 = *(*(v45 + 8) + 8 * v46);
        if (v48)
        {
          ASN1_OBJECT_free(*v48);
          v49 = *(v48 + 8);
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
                  ASN1_OBJECT_free(v52);
                  v50 = *v49;
                }

                ++v51;
              }

              while (v51 < v50);
            }

            v53 = v49[1];
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

            v58 = *(v49 - 1);
            v57 = v49 - 1;
            v59 = v58 + 8;
            if (v58 != -8)
            {
              bzero(v57, v59);
            }

            free(v57);
          }

          v61 = *(v48 - 8);
          v60 = (v48 - 8);
          v62 = v61 + 8;
          if (v61 != -8)
          {
            bzero(v60, v62);
          }

          free(v60);
          v45 = *v14;
        }

        ++v46;
        if (!v45)
        {
          goto LABEL_77;
        }
      }

      if (v47)
      {
        if (8 * v47)
        {
          bzero(*(v45 + 8), 8 * v47);
        }

        *v45 = 0;
        *(v45 + 16) = 0;
      }
    }

LABEL_77:
    if (v383)
    {
      goto LABEL_176;
    }

LABEL_78:
    if (!*(v14 + 2))
    {
      v63 = *v14;
      if (!*v14)
      {
        v299 = 0;
        v7 = 43;
        goto LABEL_561;
      }

      if (!*v63)
      {
        v299 = 0;
        v7 = 43;
        goto LABEL_554;
      }
    }

LABEL_176:
    v113 = *v13;
    if (*v13 >= 0x7FFFFFFFuLL)
    {
      ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
LABEL_489:
      v299 = 0;
      v7 = 17;
      goto LABEL_540;
    }

    v114 = *(v13 + 3);
    if (v114 <= v113 + 1)
    {
      v117 = OPENSSL_realloc(*(v13 + 1), 16 * v114);
      if (!v117)
      {
        goto LABEL_489;
      }

      *(v13 + 1) = v117;
      *(v13 + 3) = 2 * v114;
      v115 = *v13;
      v118 = *v13 - v113;
      if (*v13 <= v113)
      {
        v116 = &v117[v115];
      }

      else
      {
        if (8 * v118)
        {
          memmove(&v117[v113 + 1], &v117[v113], 8 * v118);
          v115 = *v13;
          v117 = *(v13 + 1);
        }

        v116 = &v117[v113];
      }
    }

    else
    {
      v115 = *v13;
      v116 = (*(v13 + 1) + 8 * v113);
    }

    *v116 = v14;
    *(v13 + 4) = 0;
    *v13 = v115 + 1;
    if (v115 == -1)
    {
      goto LABEL_489;
    }

    if (!v386)
    {
      v123 = 0;
      goto LABEL_393;
    }

    v119 = *(*v18 + 72);
    if (v119 && *v119)
    {
      v120 = 0;
      v121 = 0;
      do
      {
        v122 = *(v119[1] + 8 * v120);
        if (OBJ_obj2nid(v122->object) == 747)
        {
          if (v121)
          {
            goto LABEL_486;
          }
        }

        else
        {
          v122 = v121;
        }

        ++v120;
        v121 = v122;
      }

      while (v120 < *v119);
      if (v122)
      {
        v124 = X509V3_EXT_d2i(v122);
        if (!v124)
        {
          break;
        }

        v125 = v124;
        if (!*v124)
        {
          ERR_put_error(11, 0, 144, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/policy.cc", 379);
LABEL_205:
          v123 = 0;
          v128 = 0;
          goto LABEL_367;
        }

        v126 = 0;
        while (v126 < *v125)
        {
          v127 = *(*(v125 + 8) + 8 * v126);
          if (OBJ_obj2nid(*v127) != 746)
          {
            ++v126;
            if (OBJ_obj2nid(v127[1]) != 746)
            {
              continue;
            }
          }

          goto LABEL_205;
        }

        if (*(v125 + 32) != compare_issuer_policy)
        {
          *(v125 + 16) = 0;
        }

        *(v125 + 32) = compare_issuer_policy;
        OPENSSL_sk_sort(v125, sk_POLICY_MAPPING_call_cmp_func);
        if (v381)
        {
          v128 = OPENSSL_sk_new_null();
          if (!v128)
          {
            goto LABEL_366;
          }

          if (*v125)
          {
            v129 = 0;
            v130 = 0;
            v370 = v18;
            v374 = v14;
            while (2)
            {
              v133 = *(*(v125 + 8) + 8 * v129);
              v134 = *v133;
              if (v130)
              {
                length = v134->length;
                if (length == v130->length && (!length || !memcmp(v134->data, v130->data, length)))
                {
                  goto LABEL_261;
                }
              }

              pval = v134;
              v136 = *v14;
              if (!*v14)
              {
LABEL_247:
                v130 = v134;
                goto LABEL_248;
              }

              if (*(v136 + 32))
              {
                v137 = *v136;
                if (*(v136 + 16))
                {
                  v138 = 0;
                }

                else
                {
                  v138 = v137 >= 2;
                }

                if (!v138)
                {
                  if (v137)
                  {
                    v139 = 0;
                    while (1)
                    {
                      v140 = v139 + ((v137 - v139 - 1) >> 1);
                      v141 = *(v136 + 32);
                      v388 = *(*(v136 + 8) + 8 * v140);
                      p_pval = &pval;
                      v142 = v141(&p_pval, &v388);
                      if (v142 >= 1)
                      {
                        v139 = v140 + 1;
                      }

                      else if (v142 < 0)
                      {
                        v137 = v139 + ((v137 - v139 - 1) >> 1);
                      }

                      else
                      {
                        if (v137 - v139 == 1)
                        {
                          goto LABEL_243;
                        }

                        v137 = v140 + 1;
                      }

                      if (v139 >= v137)
                      {
                        goto LABEL_247;
                      }
                    }
                  }

                  goto LABEL_247;
                }

                v140 = 0;
                while (1)
                {
                  v143 = *(v136 + 32);
                  v388 = *(*(v136 + 8) + 8 * v140);
                  p_pval = &pval;
                  if (!v143(&p_pval, &v388))
                  {
                    break;
                  }

                  if (++v140 >= *v136)
                  {
                    goto LABEL_247;
                  }
                }
              }

              else
              {
                if (!*v136)
                {
                  goto LABEL_247;
                }

                v140 = 0;
                while (*(*(v136 + 8) + 8 * v140) != &pval)
                {
                  if (*v136 == ++v140)
                  {
                    goto LABEL_247;
                  }
                }
              }

LABEL_243:
              v144 = *v374;
              if (!*v374 || *v144 <= v140)
              {
                goto LABEL_247;
              }

              v145 = *(v144[1] + 8 * v140);
              v130 = v134;
              if (v145)
              {
                goto LABEL_259;
              }

LABEL_248:
              v14 = v374;
              if (*(v374 + 2))
              {
                v146 = *v133;
                v147 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
                if (!v147)
                {
                  ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
                  goto LABEL_484;
                }

                v148 = v147;
                *v147 = 24;
                v147[1] = 0;
                v145 = (v147 + 1);
                v147[2] = 0;
                v147[3] = 0;
                v147[1] = OBJ_dup(v146);
                v149 = OPENSSL_sk_new_null();
                v148[2] = v149;
                v150 = *v145;
                if (!*v145 || !v149)
                {
                  goto LABEL_483;
                }

                v151 = *v128;
                if (*v128 >= 0x7FFFFFFFuLL)
                {
                  ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
LABEL_482:
                  v150 = v148[1];
LABEL_483:
                  ASN1_OBJECT_free(v150);
                  OPENSSL_sk_pop_free_ex(v148[2], sk_ASN1_OBJECT_call_free_func, ASN1_OBJECT_free);
                  free(v148);
LABEL_484:
                  v123 = 0;
                  v18 = v370;
                  goto LABEL_367;
                }

                v152 = *(v128 + 3);
                if (v152 > v151 + 1)
                {
                  v131 = *(v128 + 1);
                  v132 = *v128;
LABEL_213:
                  v131[v151] = v145;
                  *(v128 + 4) = 0;
                  *v128 = v132 + 1;
                  if (v132 == -1)
                  {
                    goto LABEL_482;
                  }
                }

                else
                {
                  v131 = OPENSSL_realloc(*(v128 + 1), 16 * v152);
                  if (!v131)
                  {
                    goto LABEL_482;
                  }

                  *(v128 + 1) = v131;
                  *(v128 + 3) = 2 * v152;
                  v132 = *v128;
                  v153 = *v128 - v151;
                  if (*v128 > v151)
                  {
                    if (8 * v153)
                    {
                      memmove(&v131[v151 + 1], &v131[v151], 8 * v153);
                      v132 = *v128;
                      v131 = *(v128 + 1);
                    }

                    goto LABEL_213;
                  }

                  v131[v132] = v145;
                  *(v128 + 4) = 0;
                  *v128 = v132 + 1;
                  if (v132 == -1)
                  {
                    goto LABEL_482;
                  }
                }

LABEL_259:
                *(v145 + 4) = 1;
                v14 = v374;
              }

              v18 = v370;
LABEL_261:
              if (++v129 >= *v125)
              {
                break;
              }

              continue;
            }
          }

          if (!x509_policy_level_add_nodes(v14, v128))
          {
            goto LABEL_366;
          }

          goto LABEL_267;
        }

        OPENSSL_sk_delete_if (*v14, sk_X509_POLICY_NODE_call_delete_if_func, delete_if_mapped, v125);
        OPENSSL_sk_pop_free_ex(v125, sk_POLICY_MAPPING_call_free_func, POLICY_MAPPING_free);
      }
    }

    v154 = OPENSSL_sk_new_null();
    if (!v154)
    {
      break;
    }

    v125 = v154;
    v128 = 0;
LABEL_267:
    v155 = *v14;
    if (*v14)
    {
      v156 = 0;
      do
      {
        while (1)
        {
          if (v156 >= *v155)
          {
            goto LABEL_290;
          }

          v159 = *(v155[1] + 8 * v156);
          if (!*(v159 + 16))
          {
            break;
          }

          ++v156;
          if (!v155)
          {
            goto LABEL_290;
          }
        }

        pval = 0;
        if (!ASN1_item_ex_new(&pval, &POLICY_MAPPING_it))
        {
          goto LABEL_366;
        }

        v123 = pval;
        if (!pval)
        {
          goto LABEL_367;
        }

        *v123 = OBJ_dup(*v159);
        v160 = OBJ_dup(*v159);
        *(v123 + 1) = v160;
        if (*v123)
        {
          v161 = v160 == 0;
        }

        else
        {
          v161 = 1;
        }

        if (v161)
        {
          goto LABEL_420;
        }

        v162 = *v125;
        if (*v125 >= 0x7FFFFFFFuLL)
        {
          ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
LABEL_420:
          pval = v123;
          ASN1_item_ex_free(&pval, &POLICY_MAPPING_it);
          v123 = 0;
          goto LABEL_367;
        }

        v163 = *(v125 + 24);
        if (v163 > v162 + 1)
        {
          v157 = *(v125 + 8);
          v158 = *v125;
        }

        else
        {
          v157 = OPENSSL_realloc(*(v125 + 8), 16 * v163);
          if (!v157)
          {
            goto LABEL_420;
          }

          *(v125 + 8) = v157;
          *(v125 + 24) = 2 * v163;
          v158 = *v125;
          v164 = *v125 - v162;
          if (*v125 <= v162)
          {
            v157[v158] = v123;
            *(v125 + 16) = 0;
            *v125 = v158 + 1;
            if (v158 == -1)
            {
              goto LABEL_420;
            }

            goto LABEL_289;
          }

          if (8 * v164)
          {
            memmove(&v157[v162 + 1], &v157[v162], 8 * v164);
            v158 = *v125;
            v157 = *(v125 + 8);
          }
        }

        v157[v162] = v123;
        *(v125 + 16) = 0;
        *v125 = v158 + 1;
        if (v158 == -1)
        {
          goto LABEL_420;
        }

LABEL_289:
        v155 = *v14;
        ++v156;
      }

      while (*v14);
    }

LABEL_290:
    if (*(v125 + 32) != compare_subject_policy)
    {
      *(v125 + 16) = 0;
    }

    *(v125 + 32) = compare_subject_policy;
    OPENSSL_sk_sort(v125, sk_POLICY_MAPPING_call_cmp_func);
    v165 = malloc_type_malloc(0x18uLL, 0xB4E622C9uLL);
    if (!v165)
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
LABEL_366:
      v123 = 0;
      goto LABEL_367;
    }

    v166 = v165;
    *v165 = 16;
    v165[1] = 0;
    v123 = (v165 + 1);
    v165[2] = 0;
    v167 = malloc_type_malloc(0x30uLL, 0xB4E622C9uLL);
    if (!v167)
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
LABEL_365:
      free(v166);
      goto LABEL_366;
    }

    v168 = v167;
    v375 = v14;
    *v167 = 40;
    *(v167 + 8) = 0u;
    v169 = (v167 + 8);
    *(v167 + 24) = 0u;
    *(v167 + 5) = 0;
    v170 = malloc_type_malloc(0x28uLL, 0xB4E622C9uLL);
    if (!v170)
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      free(v168);
      goto LABEL_365;
    }

    *v170 = 32;
    *(v170 + 24) = 0u;
    *(v170 + 8) = 0u;
    v168[2] = v170 + 8;
    v168[4] = 4;
    v168[5] = x509_policy_node_cmp;
    v166[1] = v169;
    *(v166 + 4) = *(v375 + 2);
    v171 = *v125;
    if (!*v125)
    {
LABEL_423:
      OPENSSL_sk_sort(v169, sk_X509_POLICY_NODE_call_cmp_func);
      goto LABEL_367;
    }

    v364 = v166;
    v366 = v123;
    v172 = 0;
    v173 = 0;
    v174 = v375;
    v371 = v18;
    while (1)
    {
      if (v171 <= v172)
      {
        v175 = 0;
        if (*(v174 + 2))
        {
          goto LABEL_301;
        }
      }

      else
      {
        v175 = *(*(v125 + 8) + 8 * v172);
        if (*(v174 + 2))
        {
          goto LABEL_301;
        }
      }

      v365 = v175;
      pval = *v175;
      v178 = *v174;
      if (!*v174)
      {
        goto LABEL_346;
      }

      if (*(v178 + 32))
      {
        break;
      }

      if (*v178)
      {
        v182 = 0;
        while (*(*(v178 + 8) + 8 * v182) != &pval)
        {
          if (*v178 == ++v182)
          {
            goto LABEL_346;
          }
        }

        goto LABEL_358;
      }

LABEL_346:
      v174 = v375;
LABEL_347:
      v18 = v371;
      ++v172;
      v171 = *v125;
      if (v172 >= *v125)
      {
        v123 = v366;
        v169 = *v366;
        goto LABEL_423;
      }
    }

    v179 = *v178;
    if (*(v178 + 16))
    {
      v180 = 0;
    }

    else
    {
      v180 = v179 >= 2;
    }

    if (!v180)
    {
      if (v179)
      {
        v181 = 0;
        while (1)
        {
          v182 = v181 + ((v179 - v181 - 1) >> 1);
          v183 = *(v178 + 32);
          v388 = *(*(v178 + 8) + 8 * v182);
          p_pval = &pval;
          v184 = v183(&p_pval, &v388);
          if (v184 >= 1)
          {
            v181 = v182 + 1;
          }

          else if (v184 < 0)
          {
            v179 = v181 + ((v179 - v181 - 1) >> 1);
          }

          else
          {
            if (v179 - v181 == 1)
            {
              goto LABEL_358;
            }

            v179 = v182 + 1;
          }

          if (v181 >= v179)
          {
            goto LABEL_346;
          }
        }
      }

      goto LABEL_346;
    }

    v182 = 0;
    while (1)
    {
      v204 = *(v178 + 32);
      v388 = *(*(v178 + 8) + 8 * v182);
      p_pval = &pval;
      if (!v204(&p_pval, &v388))
      {
        break;
      }

      if (++v182 >= *v178)
      {
        goto LABEL_346;
      }
    }

LABEL_358:
    v205 = *v375;
    if (!*v375 || *v205 <= v182)
    {
      goto LABEL_346;
    }

    v174 = v375;
    v175 = v365;
    if (!*(v205[1] + 8 * v182))
    {
      goto LABEL_347;
    }

LABEL_301:
    if (v173)
    {
      v176 = *(v175 + 8);
      v177 = (*v173)->length;
      if (v177 == v176->length && (!v177 || !memcmp((*v173)->data, v176->data, v177)))
      {
        goto LABEL_335;
      }
    }

    else
    {
      v176 = *(v175 + 8);
    }

    v185 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
    if (!v185)
    {
      v267 = 65;
      v268 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v269 = 217;
      goto LABEL_475;
    }

    v186 = v185;
    *v185 = 24;
    v185[1] = 0;
    v173 = (v185 + 1);
    v185[2] = 0;
    v185[3] = 0;
    v185[1] = OBJ_dup(v176);
    v187 = OPENSSL_sk_new_null();
    v186[2] = v187;
    v188 = *v173;
    if (!*v173 || !v187)
    {
      goto LABEL_478;
    }

    v189 = *v366;
    v190 = **v366;
    if (v190 < 0x7FFFFFFF)
    {
      v191 = v189[3];
      if (v191 <= v190 + 1)
      {
        v194 = OPENSSL_realloc(v189[1], 16 * v191);
        if (!v194)
        {
          goto LABEL_477;
        }

        v189[1] = v194;
        v189[3] = 2 * v191;
        v192 = *v189;
        v195 = *v189 - v190;
        if (*v189 <= v190)
        {
          v193 = &v194[v192];
        }

        else
        {
          if (8 * v195)
          {
            memmove(&v194[v190 + 1], &v194[v190], 8 * v195);
            v192 = *v189;
            v194 = v189[1];
          }

          v193 = &v194[v190];
        }
      }

      else
      {
        v192 = **v366;
        v193 = (v189[1] + 8 * v190);
      }

      *v193 = v173;
      *(v189 + 4) = 0;
      *v189 = v192 + 1;
      if (v192 == -1)
      {
        goto LABEL_477;
      }

LABEL_335:
      v196 = v173[1];
      sn = v196->sn;
      if (v196->sn < 0x7FFFFFFF)
      {
        v198 = *v175;
        data = v196->data;
        if (data <= (sn + 1))
        {
          ln = OPENSSL_realloc(v196->ln, 16 * data);
          if (!ln)
          {
            goto LABEL_479;
          }

          v196->ln = ln;
          v196->data = (2 * data);
          v200 = v196->sn;
          v203 = (v196->sn - sn);
          if (v196->sn <= sn)
          {
            v201 = &ln[8 * v200];
          }

          else
          {
            if (8 * v203)
            {
              memmove(&ln[8 * sn + 8], &ln[8 * sn], 8 * v203);
              v200 = v196->sn;
              ln = v196->ln;
            }

            v201 = &ln[8 * sn];
          }
        }

        else
        {
          v200 = v196->sn;
          v201 = &v196->ln[8 * sn];
        }

        *v201 = v198;
        v196->nid = 0;
        v196->sn = v200 + 1;
        if (v200 == -1)
        {
          goto LABEL_479;
        }

        *v175 = 0;
        goto LABEL_346;
      }

      v267 = 69;
      v268 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc";
      v269 = 139;
LABEL_475:
      ERR_put_error(14, 0, v267, v268, v269);
      goto LABEL_479;
    }

    ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
LABEL_477:
    v188 = *v173;
LABEL_478:
    ASN1_OBJECT_free(v188);
    OPENSSL_sk_pop_free_ex(v186[2], sk_ASN1_OBJECT_call_free_func, ASN1_OBJECT_free);
    free(v186);
LABEL_479:
    OPENSSL_sk_pop_free_ex(v364[1], sk_X509_POLICY_NODE_call_free_func, x509_policy_node_free);
    free(v364);
    v123 = 0;
    v18 = v371;
LABEL_367:
    v206 = *v125;
    if (*v125)
    {
      v207 = 0;
      do
      {
        if (*(*(v125 + 8) + 8 * v207))
        {
          pval = *(*(v125 + 8) + 8 * v207);
          ASN1_item_ex_free(&pval, &POLICY_MAPPING_it);
          v206 = *v125;
        }

        ++v207;
      }

      while (v207 < v206);
    }

    v208 = *(v125 + 8);
    if (v208)
    {
      v210 = *(v208 - 8);
      v209 = (v208 - 8);
      v211 = v210 + 8;
      if (v210 != -8)
      {
        bzero(v209, v211);
      }

      free(v209);
    }

    v213 = *(v125 - 8);
    v212 = (v125 - 8);
    v214 = v213 + 8;
    if (v213 != -8)
    {
      bzero(v212, v214);
    }

    free(v212);
    if (v128)
    {
      v215 = *v128;
      if (*v128)
      {
        v216 = 0;
        do
        {
          v217 = *(*(v128 + 1) + 8 * v216);
          if (v217)
          {
            x509_policy_node_free(v217);
            v215 = *v128;
          }

          ++v216;
        }

        while (v216 < v215);
      }

      v218 = *(v128 + 1);
      if (v218)
      {
        v220 = *(v218 - 8);
        v219 = (v218 - 8);
        v221 = v220 + 8;
        if (v220 != -8)
        {
          bzero(v219, v221);
        }

        free(v219);
      }

      v223 = *(v128 - 1);
      v222 = v128 - 8;
      v224 = v223 + 8;
      if (v223 != -8)
      {
        bzero(v222, v224);
      }

      free(v222);
    }

    if (v123)
    {
      if ((v379 & 0x20) == 0)
      {
LABEL_393:
        if (v383)
        {
          v225 = v383 - 1;
        }

        else
        {
          v225 = 0;
        }

        v226 = v381 - 1;
        if (!v381)
        {
          v226 = 0;
        }

        v381 = v226;
        v383 = v225;
        v227 = v384 - 1;
        if (!v384)
        {
          v227 = 0;
        }

        v384 = v227;
      }

      v14 = v123;
      v228 = *(*v18 + 72);
      if (v228 && *v228)
      {
        v229 = 0;
        v230 = 0;
        do
        {
          v231 = *(v228[1] + 8 * v229);
          if (OBJ_obj2nid(v231->object) == 401)
          {
            if (v230)
            {
              goto LABEL_538;
            }
          }

          else
          {
            v231 = v230;
          }

          ++v229;
          v230 = v231;
        }

        while (v229 < *v228);
        if (v231)
        {
          v232 = X509V3_EXT_d2i(v231);
          if (!v232)
          {
            goto LABEL_538;
          }

          v233 = v232;
          v234 = *v232;
          if (!*v232)
          {
            v237 = v232[1];
            if (v237)
            {
              goto LABEL_429;
            }

            v334 = 559;
            goto LABEL_600;
          }

          v235 = *(v234 + 1);
          if ((v235 & 0x100) != 0)
          {
            goto LABEL_552;
          }

          if (v235 == 2)
          {
            pval = 0;
            v236 = *v234;
            if (v236 < 9)
            {
              if (v236)
              {
                memcpy(v391 - v236, v234[1], v236);
                v238 = pval;
              }

              else
              {
                v238 = 0;
              }

              v239 = bswap64(v238);
              v240 = v383;
              if (v239 < v383)
              {
                v240 = v239;
              }

              v383 = v240;
            }

            else
            {
              ERR_put_error(12, 0, 196, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_int.cc", 293);
            }
          }

          else
          {
            ERR_put_error(12, 0, 195, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_int.cc", 288);
          }

          ERR_clear_error();
          v237 = *(v233 + 1);
          if (v237)
          {
LABEL_429:
            v241 = *(v237 + 1);
            if ((v241 & 0x100) == 0)
            {
              if (v241 == 2)
              {
                pval = 0;
                v242 = *v237;
                if (v242 < 9)
                {
                  if (v242)
                  {
                    memcpy(v391 - v242, v237[1], v242);
                    v243 = pval;
                  }

                  else
                  {
                    v243 = 0;
                  }

                  v244 = bswap64(v243);
                  v245 = v381;
                  if (v244 < v381)
                  {
                    v245 = v244;
                  }

                  v381 = v245;
                }

                else
                {
                  ERR_put_error(12, 0, 196, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_int.cc", 293);
                }
              }

              else
              {
                ERR_put_error(12, 0, 195, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_int.cc", 288);
              }

              ERR_clear_error();
              goto LABEL_441;
            }

LABEL_552:
            v334 = 528;
LABEL_600:
            ERR_put_error(11, 0, 144, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/policy.cc", v334);
            pval = v233;
            v294 = &POLICY_CONSTRAINTS_it;
LABEL_537:
            ASN1_item_ex_free(&pval, v294);
LABEL_538:
            v299 = 0;
            *&v378->num = v18;
            v7 = 42;
            goto LABEL_539;
          }

LABEL_441:
          pval = v233;
          ASN1_item_ex_free(&pval, &POLICY_CONSTRAINTS_it);
        }
      }

      v246 = *(*v18 + 72);
      if (!v246 || !*v246)
      {
        goto LABEL_456;
      }

      v247 = 0;
      v248 = 0;
      do
      {
        v249 = *(v246[1] + 8 * v247);
        if (OBJ_obj2nid(v249->object) == 748)
        {
          if (v248)
          {
            goto LABEL_538;
          }
        }

        else
        {
          v249 = v248;
        }

        ++v247;
        v248 = v249;
      }

      while (v247 < *v246);
      if (v249)
      {
        v250 = X509V3_EXT_d2i(v249);
        if (!v250)
        {
          goto LABEL_538;
        }

        v251 = v250;
        v252 = *(&v250->length + 1);
        if ((v252 & 0x100) != 0)
        {
          ERR_put_error(11, 0, 144, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/x509/policy.cc", 528);
          ASN1_STRING_free(v251);
          goto LABEL_538;
        }

        if (v252 == 2)
        {
          pval = 0;
          v253 = v250->length;
          v254 = *(&v377 + 1);
          v255 = v377;
          v256 = v386;
          if (v253 < 9)
          {
            if (v253)
            {
              memcpy(v391 - v253, v250->data, v253);
              v257 = pval;
            }

            else
            {
              v257 = 0;
            }

            v258 = bswap64(v257);
            v259 = v384;
            if (v258 < v384)
            {
              v259 = v258;
            }

            v384 = v259;
          }

          else
          {
            ERR_put_error(12, 0, 196, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_int.cc", 293);
          }
        }

        else
        {
          ERR_put_error(12, 0, 195, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_int.cc", 288);
          v254 = *(&v377 + 1);
          v255 = v377;
          v256 = v386;
        }

        ERR_clear_error();
        v260 = v251->data;
        if (v260)
        {
          v262 = *(v260 - 1);
          v261 = v260 - 8;
          v263 = v262 + 8;
          if (v262 != -8)
          {
            bzero(v261, v263);
          }

          free(v261);
        }

        v265 = *&v251[-1].max;
        p_max = &v251[-1].max;
        v266 = v265 + 8;
        if (v265 != -8)
        {
          bzero(p_max, v266);
        }

        free(p_max);
        v8 = v254;
        v6 = (v256 - 1);
        if (v6 >= v255)
        {
LABEL_491:
          if (v383)
          {
            v299 = 0;
            v7 = 0;
            goto LABEL_539;
          }

          if (v367)
          {
            v298 = OPENSSL_sk_dup(v367);
            v299 = v298;
            if (!v298)
            {
              v7 = 17;
              goto LABEL_539;
            }

            if (*(v298 + 4) != asn1_object_cmp)
            {
              *(v298 + 4) = 0;
            }

            *(v298 + 4) = asn1_object_cmp;
            OPENSSL_sk_sort(v298, sk_ASN1_OBJECT_call_cmp_func);
          }

          else
          {
            v299 = 0;
          }

          v328 = *v13;
          v329 = *v13 - 1;
          if (*v13)
          {
            v330 = *(*(v13 + 1) + 8 * v329);
          }

          else
          {
            v330 = 0;
          }

          if (!*(v330 + 8) && (!*v330 || !**v330))
          {
            v7 = 43;
            goto LABEL_539;
          }

          if (!v299)
          {
            goto LABEL_603;
          }

          v331 = 0;
          v332 = *v299;
          while (v331 < *v299)
          {
            v333 = OBJ_obj2nid(*(*(v299 + 1) + 8 * v331++));
            if (v333 == 746)
            {
              goto LABEL_603;
            }
          }

          if (!v332 || *(v330 + 8))
          {
LABEL_603:
            v7 = 0;
            goto LABEL_539;
          }

          v376 = v14;
          v335 = *v330;
          if (*v330)
          {
            v336 = *v335;
            if (*v335)
            {
              v337 = v335[1];
              if (v336 == 1)
              {
                v338 = 0;
                goto LABEL_611;
              }

              v338 = v336 & 0xFFFFFFFFFFFFFFFELL;
              v339 = (v337 + 8);
              v340 = v336 & 0xFFFFFFFFFFFFFFFELL;
              do
              {
                v341 = *v339;
                *(*(v339 - 1) + 20) = 1;
                *(v341 + 20) = 1;
                v339 += 2;
                v340 -= 2;
              }

              while (v340);
              if (v336 != v338)
              {
LABEL_611:
                v342 = (v337 + 8 * v338);
                v343 = v336 - v338;
                do
                {
                  v344 = *v342++;
                  *(v344 + 20) = 1;
                  --v343;
                }

                while (v343);
              }
            }
          }

          v380 = v328;
          if (v328)
          {
            v345 = v329;
            while (1)
            {
              if (*v13 <= v345)
              {
                v346 = 0;
              }

              else
              {
                v346 = *(*(v13 + 1) + 8 * v345);
              }

              v382 = v345 - 1;
              v347 = *v346;
              if (v345)
              {
                if (v347)
                {
                  v348 = 0;
                  do
                  {
                    if (v348 >= *v347)
                    {
                      break;
                    }

                    v387 = *(v347[1] + 8 * v348);
                    if (*(v387 + 20))
                    {
                      v349 = *(v387 + 8);
                      if (v349 && *v349)
                      {
                        if (*v13 <= v382)
                        {
                          v385 = 0;
                        }

                        else
                        {
                          v385 = *(*(v13 + 1) + 8 * v382);
                        }

                        v350 = 0;
                        while (1)
                        {
                          if (v350 >= *v349)
                          {
                            goto LABEL_623;
                          }

                          pval = *(v349[1] + 8 * v350);
                          v351 = *v385;
                          if (*v385)
                          {
                            if (v351[4])
                            {
                              v352 = *v351;
                              if (*(v351 + 4))
                              {
                                v353 = 0;
                              }

                              else
                              {
                                v353 = v352 >= 2;
                              }

                              if (!v353)
                              {
                                if (v352)
                                {
                                  v354 = 0;
                                  while (1)
                                  {
                                    v355 = v354 + ((v352 - v354 - 1) >> 1);
                                    v356 = v351[4];
                                    v388 = *(v351[1] + 8 * v355);
                                    p_pval = &pval;
                                    v357 = v356(&p_pval, &v388);
                                    if (v357 >= 1)
                                    {
                                      v354 = v355 + 1;
                                    }

                                    else if (v357 < 0)
                                    {
                                      v352 = v354 + ((v352 - v354 - 1) >> 1);
                                    }

                                    else
                                    {
                                      if (v352 - v354 == 1)
                                      {
                                        goto LABEL_658;
                                      }

                                      v352 = v355 + 1;
                                    }

                                    if (v354 >= v352)
                                    {
                                      goto LABEL_632;
                                    }
                                  }
                                }

                                goto LABEL_632;
                              }

                              v355 = 0;
                              while (1)
                              {
                                v358 = v351[4];
                                v388 = *(v351[1] + 8 * v355);
                                p_pval = &pval;
                                if (!v358(&p_pval, &v388))
                                {
                                  goto LABEL_658;
                                }

                                if (++v355 >= *v351)
                                {
                                  goto LABEL_632;
                                }
                              }
                            }

                            if (*v351)
                            {
                              v355 = 0;
                              while (*(v351[1] + 8 * v355) != &pval)
                              {
                                if (*v351 == ++v355)
                                {
                                  goto LABEL_632;
                                }
                              }

LABEL_658:
                              v359 = *v385;
                              if (*v385)
                              {
                                if (*v359 > v355)
                                {
                                  v360 = *(v359[1] + 8 * v355);
                                  if (v360)
                                  {
                                    *(v360 + 20) = 1;
                                  }
                                }
                              }
                            }
                          }

LABEL_632:
                          ++v350;
                          v349 = *(v387 + 8);
                          if (!v349)
                          {
                            goto LABEL_623;
                          }
                        }
                      }

                      if (OPENSSL_sk_find(v299, 0, *v387, sk_ASN1_OBJECT_call_cmp_func))
                      {
                        goto LABEL_671;
                      }
                    }

LABEL_623:
                    ++v348;
                    v347 = *v346;
                  }

                  while (*v346);
                }
              }

              else if (v347)
              {
                v361 = 0;
                do
                {
                  if (v361 >= *v347)
                  {
                    break;
                  }

                  v362 = *(v347[1] + 8 * v361);
                  if (*(v362 + 20))
                  {
                    v363 = *(v362 + 8);
                    if (!v363 || !*v363)
                    {
                      if (OPENSSL_sk_find(v299, 0, *v362, sk_ASN1_OBJECT_call_cmp_func))
                      {
LABEL_671:
                        v7 = 0;
                        v14 = v376;
                        goto LABEL_539;
                      }

                      v347 = *v346;
                    }
                  }

                  ++v361;
                }

                while (v347);
              }

              v7 = 43;
              v345 = v382;
              if (v382 >= v380)
              {
                goto LABEL_673;
              }
            }
          }

          v7 = 43;
LABEL_673:
          v14 = v376;
LABEL_539:
          if (v14)
          {
LABEL_540:
            v63 = *v14;
            if (*v14)
            {
              v295 = *v63;
              if (*v63)
              {
                v296 = 0;
                do
                {
                  v297 = *(v63[1] + 8 * v296);
                  if (v297)
                  {
                    x509_policy_node_free(v297);
                    v295 = *v63;
                  }

                  ++v296;
                }

                while (v296 < v295);
              }

LABEL_554:
              v300 = v63[1];
              if (v300)
              {
                v302 = *(v300 - 8);
                v301 = (v300 - 8);
                v303 = v302 + 8;
                if (v302 != -8)
                {
                  bzero(v301, v303);
                }

                free(v301);
              }

              v305 = *(v63 - 1);
              v304 = v63 - 1;
              v306 = v305 + 8;
              if (v305 != -8)
              {
                bzero(v304, v306);
              }

              free(v304);
            }

LABEL_561:
            v308 = *(v14 - 1);
            v307 = (v14 - 8);
            v309 = v308 + 8;
            if (v308 != -8)
            {
              bzero(v307, v309);
            }

            free(v307);
          }

          if (v299)
          {
            v310 = *(v299 + 1);
            if (v310)
            {
              v312 = *(v310 - 8);
              v311 = (v310 - 8);
              v313 = v312 + 8;
              if (v312 != -8)
              {
                bzero(v311, v313);
              }

              free(v311);
            }

            v315 = *(v299 - 1);
            v314 = v299 - 8;
            v316 = v315 + 8;
            if (v315 != -8)
            {
              bzero(v314, v316);
            }

            free(v314);
          }

          goto LABEL_572;
        }
      }

      else
      {
LABEL_456:
        v8 = *(&v377 + 1);
        v6 = (v386 - 1);
        if (v386 - 1 >= v377)
        {
          goto LABEL_491;
        }
      }

      continue;
    }

    break;
  }

LABEL_486:
  *&v378->num = v18;
  v7 = 42;
LABEL_572:
  v317 = *v13;
  if (*v13)
  {
    v318 = 0;
    do
    {
      v319 = *(*(v13 + 1) + 8 * v318);
      if (v319)
      {
        x509_policy_level_free(v319);
        v317 = *v13;
      }

      ++v318;
    }

    while (v318 < v317);
  }

  v320 = *(v13 + 1);
  if (v320)
  {
    v322 = *(v320 - 8);
    v321 = (v320 - 8);
    v323 = v322 + 8;
    if (v322 != -8)
    {
      bzero(v321, v323);
    }

    free(v321);
  }

  v325 = *(v13 - 1);
  v324 = v13 - 8;
  v326 = v325 + 8;
  if (v325 != -8)
  {
    bzero(v324, v326);
  }

  free(v324);
  return v7;
}