uint64_t integers_equal(uint64_t a1, uint64_t a2, double a3)
{
  v62.i64[1] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = (v3 + v4);
    while (!v3->i8[0])
    {
      v3 = (v3 + 1);
      if (!--v4)
      {
        v3 = v5;
        goto LABEL_7;
      }
    }

    if (v4 > 0x42)
    {
      return 0;
    }
  }

LABEL_7:
  v6 = *a2;
  v7 = 8 * *(a2 + 8);
  v8 = v7 - v4;
  if (v7 > v4)
  {
    if (v8 < 8)
    {
      v9 = 0;
      v10 = v4;
      goto LABEL_21;
    }

    if (v8 >= 0x20)
    {
      v11 = v8 & 0xFFFFFFFFFFFFFFE0;
      v12 = (&v6[2] + v4);
      v13 = 0uLL;
      v14 = v8 & 0xFFFFFFFFFFFFFFE0;
      v15 = 0uLL;
      do
      {
        v13 = vorrq_s8(v12[-1], v13);
        v15 = vorrq_s8(*v12, v15);
        v12 += 2;
        v14 -= 32;
      }

      while (v14);
      v16 = vorrq_s8(v15, v13);
      a3 = COERCE_DOUBLE(vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL)));
      v17 = *&a3 | HIDWORD(*&a3) | ((*&a3 | HIDWORD(*&a3)) >> 16);
      v9 = v17 | BYTE1(v17);
      if (v8 == v11)
      {
        goto LABEL_24;
      }

      if ((v8 & 0x18) == 0)
      {
        v10 = v4 + v11;
LABEL_21:
        v22 = v10 - v7;
        v23 = v6 + v10;
        do
        {
          v24 = *v23++;
          v9 |= v24;
        }

        while (!__CFADD__(v22++, 1));
        goto LABEL_24;
      }
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v10 = v4 + (v8 & 0xFFFFFFFFFFFFFFF8);
    *&a3 = v9;
    v18 = (v6 + v4 + v11);
    v19 = v11 - (v8 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v20 = *v18++;
      a3 = COERCE_DOUBLE(vorr_s8(v20, *&a3));
      v19 += 8;
    }

    while (v19);
    v21 = *&a3 | HIDWORD(*&a3) | ((*&a3 | HIDWORD(*&a3)) >> 16);
    v9 = v21 | BYTE1(v21);
    if (v8 != (v8 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_21;
    }

LABEL_24:
    if (v9)
    {
      ERR_clear_error();
      return 0;
    }
  }

  if (v7 >= v4)
  {
    v27 = v4;
  }

  else
  {
    v27 = 8 * *(a2 + 8);
  }

  if (!v27)
  {
    goto LABEL_49;
  }

  if (v27 < 4)
  {
    v28 = 0;
    goto LABEL_47;
  }

  if (v27 >= 0x10)
  {
    v29 = (v61 + v4);
    v28 = v27 & 0x70;
    a3 = COERCE_DOUBLE(vrev64_s8(*v6));
    v29[-2] = vrev64_s8(v6[1]);
    *&v29[-1] = a3;
    if (v28 != 16)
    {
      a3 = COERCE_DOUBLE(vrev64_s8(v6[2]));
      v29[-4] = vrev64_s8(v6[3]);
      *&v29[-3] = a3;
      if (v28 != 32)
      {
        a3 = COERCE_DOUBLE(vrev64_s8(v6[4]));
        v29[-6] = vrev64_s8(v6[5]);
        *&v29[-5] = a3;
        if (v28 != 48)
        {
          a3 = COERCE_DOUBLE(vrev64_s8(v6[6]));
          v29[-8] = vrev64_s8(v6[7]);
          *&v29[-7] = a3;
          if (v28 != 64)
          {
            a3 = COERCE_DOUBLE(vrev64_s8(v6[8]));
            v29[-10] = vrev64_s8(v6[9]);
            *&v29[-9] = a3;
            if (v28 != 80)
            {
              a3 = COERCE_DOUBLE(vrev64_s8(v6[10]));
              v29[-12] = vrev64_s8(v6[11]);
              *&v29[-11] = a3;
              if (v28 != 96)
              {
                a3 = COERCE_DOUBLE(vrev64_s8(v6[12]));
                v29[-14] = vrev64_s8(v6[13]);
                *&v29[-13] = a3;
              }
            }
          }
        }
      }
    }

    if (v27 == v28)
    {
      goto LABEL_49;
    }

    if ((v27 & 0xC) == 0)
    {
LABEL_47:
      v36 = v27 - v28;
      v37 = &v61[0].i8[~v28 + v4];
      v38 = v6 + v28;
      do
      {
        v39 = *v38++;
        *v37-- = v39;
        --v36;
      }

      while (v36);
      goto LABEL_49;
    }
  }

  else
  {
    v28 = 0;
  }

  v30 = v28;
  v28 = v27 & 0x7C;
  v31 = (v6 + v30);
  v32 = (&v61[-1].i32[3] + v4 - v30);
  v33 = v30 - v28;
  do
  {
    v34 = v31->i32[0];
    v31 = (v31 + 4);
    LODWORD(a3) = v34;
    v35 = vrev64_s16(*&vmovl_u8(*&a3));
    a3 = COERCE_DOUBLE(vuzp1_s8(v35, v35));
    *v32-- = LODWORD(a3);
    v33 += 4;
  }

  while (v33);
  if (v27 != v28)
  {
    goto LABEL_47;
  }

LABEL_49:
  if (v7 < v4)
  {
    bzero(v61, v4 - v27);
    goto LABEL_52;
  }

  if (v4)
  {
LABEL_52:
    if (v4 < 8)
    {
      v40 = 0;
      v41 = 0;
LABEL_64:
      v55 = v4 - v40;
      v56 = &v61[0].i8[v40];
      v57 = &v3->i8[v40];
      do
      {
        v59 = *v57++;
        v58 = v59;
        v60 = *v56++;
        v41 |= v60 ^ v58;
        --v55;
      }

      while (v55);
      return v41 == 0;
    }

    if (v4 >= 0x20)
    {
      v40 = v4 & 0x60;
      v42 = veorq_s8(v61[0], *v3);
      v43 = veorq_s8(v61[1], v3[1]);
      if (v40 != 32)
      {
        v42 = vorrq_s8(veorq_s8(v61[2], v3[2]), v42);
        v43 = vorrq_s8(veorq_s8(v61[3], v3[3]), v43);
        if (v40 != 64)
        {
          v42 = vorrq_s8(veorq_s8(v62, v3[4]), v42);
          v43 = vorrq_s8(veorq_s8(v63, v3[5]), v43);
        }
      }

      v44 = vorrq_s8(v43, v42);
      *v44.i8 = vorr_s8(*v44.i8, *&vextq_s8(v44, v44, 8uLL));
      v45 = v44.i64[0] | HIDWORD(v44.i64[0]) | ((v44.i64[0] | HIDWORD(v44.i64[0])) >> 16);
      v41 = v45 | BYTE1(v45);
      if (v4 == v40)
      {
        return v41 == 0;
      }

      if ((v4 & 0x18) == 0)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v41 = 0;
      v40 = 0;
    }

    v46 = v40;
    v40 = v4 & 0x78;
    v47 = v41;
    v48 = &v3->i8[v46];
    v49 = (v61 + v46);
    v50 = v46 - v40;
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
    v41 = v54 | BYTE1(v54);
    if (v4 == v40)
    {
      return v41 == 0;
    }

    goto LABEL_64;
  }

  return 1;
}

int ECDH_compute_key(void *out, size_t outlen, const EC_POINT *pub_key, EC_KEY *ecdh, void *(__cdecl *KDF)(const void *, size_t, void *, size_t *))
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = outlen;
  v5 = *(ecdh + 2);
  if (!v5)
  {
    v11 = 27;
    v12 = 101;
    v13 = 34;
    goto LABEL_13;
  }

  v9 = outlen;
  v10 = *ecdh;
  if (EC_GROUP_cmp(*ecdh, *pub_key, 0))
  {
    v11 = 15;
    v12 = 106;
    v13 = 40;
LABEL_13:
    ERR_put_error(v11, 0, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/ecdh/ecdh.cc", v13);
    return -1;
  }

  v17 = 0;
  (*(*v10 + 32))(v10, v18, pub_key + 8, v5 + 24);
  if (!ec_GFp_simple_is_on_curve(v10, v18))
  {
    ERR_put_error(15, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc", 775);
    goto LABEL_12;
  }

  if (!ec_get_x_coordinate_as_bytes(v10, __src, &v17, 0x42uLL, v18))
  {
LABEL_12:
    v11 = 27;
    v12 = 102;
    v13 = 50;
    goto LABEL_13;
  }

  if (KDF)
  {
    if (!(KDF)(__src, v17, out, &v19))
    {
      v11 = 27;
      v12 = 100;
      v13 = 56;
      goto LABEL_13;
    }

    v14 = v19;
    if (v19 >> 31)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v17 < v9)
    {
      v19 = v17;
      v9 = v17;
    }

    if (!v9)
    {
      return 0;
    }

    v16 = out;
    v14 = v9;
    memcpy(v16, __src, v9);
    if (v9 >> 31)
    {
LABEL_19:
      v11 = 27;
      v12 = 69;
      v13 = 68;
      goto LABEL_13;
    }
  }

  return v14;
}

int ECDSA_sign(int type, const unsigned __int8 *dgst, int dgstlen, unsigned __int8 *sig, unsigned int *siglen, EC_KEY *eckey)
{
  v67 = *MEMORY[0x277D85DE8];
  v8 = *(eckey + 5);
  if (!v8 || (v9 = *(v8 + 32)) == 0)
  {
    *siglen = 0;
    v64 = 0;
    if (!ecdsa_sign_fixed(dgst, *&dgstlen, v66, &v64, 0x84uLL, eckey))
    {
      return 0;
    }

    v12 = ecdsa_sig_from_fixed(eckey, v66, v64);
    if (!v12)
    {
      return 0;
    }

    v13 = v12;
    v14 = *eckey;
    if (!*eckey)
    {
      v18 = 0;
      goto LABEL_45;
    }

    v15 = *(v14 + 264);
    if (v15 < 1)
    {
      if (!v15)
      {
        v18 = 0;
        v19 = 3;
        goto LABEL_38;
      }

      v16 = *(v14 + 256);
    }

    else
    {
      v16 = *(v14 + 256);
      while (!*(v16 - 8 + 8 * v15))
      {
        v17 = __OFSUB__(v15--, 1);
        if ((v15 < 0) ^ v17 | (v15 == 0))
        {
          v18 = 0;
          v19 = 3;
          goto LABEL_38;
        }
      }
    }

    v21 = v15 - 1;
    v22 = *(v16 + 8 * (v15 - 1));
    v23 = v22 != 0;
    v24 = HIDWORD(v22) != 0;
    if (HIDWORD(v22))
    {
      v22 >>= 32;
    }

    v25 = v22 >> 16 != 0;
    if (v22 >> 16)
    {
      v22 >>= 16;
    }

    v26 = v22 > 0xFF;
    if (v22 > 0xFF)
    {
      v22 >>= 8;
    }

    v27 = v22 > 0xF;
    if (v22 > 0xF)
    {
      v22 >>= 4;
    }

    v28 = v22 > 3;
    if (v22 > 3)
    {
      v22 >>= 2;
    }

    v29 = v23 | (v21 << 6) | (32 * v24) | (16 * v25) | (8 * v26) | (4 * v27) | (2 * v28);
    if (v22 > 1)
    {
      ++v29;
    }

    v30 = v29 + 7;
    v31 = v30 >> 3;
    if (v30 >= 0x3F8)
    {
      v32 = v31 + 1;
      v33 = 1;
      do
      {
        ++v33;
        v34 = v32 > 0xFF;
        v32 >>= 8;
      }

      while (v34);
      v18 = 0;
      v19 = v31 + v33 + 2;
      if (v19 < v31)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v18 = 0;
      v19 = v31 + 3;
      if (v31 + 3 < v31)
      {
        goto LABEL_45;
      }
    }

LABEL_38:
    if ((v19 & 0x8000000000000000) == 0)
    {
      v35 = 2 * v19;
      v36 = 1;
      if (v19 >= 0x40)
      {
        v37 = 2 * v19;
        do
        {
          ++v36;
          v34 = v37 > 0xFF;
          v37 >>= 8;
        }

        while (v34);
      }

      v38 = v36 + v35;
      if (v38 + 1 >= v35)
      {
        v18 = v38 + 1;
      }

      else
      {
        v18 = 0;
      }
    }

LABEL_45:
    v61 = 0u;
    v62 = sig;
    v63 = v18;
    if (CBB_add_asn1(&v61, v65, 536870928) && BN_marshal_asn1(v65, *v13) && BN_marshal_asn1(v65, v13[1]) && CBB_flush(&v61))
    {
      if (BYTE8(v61))
      {
        ERR_put_error(14, 0, 66, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bytestring/cbb.cc", 126);
      }

      else if (CBB_flush(&v61) && (BYTE8(v63) & 1) == 0)
      {
        *siglen = DWORD2(v62);
        v20 = 1;
        v39 = *v13;
        if (!*v13)
        {
          goto LABEL_64;
        }

        goto LABEL_54;
      }

      ERR_put_error(26, 0, 105, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/ecdsa/ecdsa_asn1.cc", 100);
      v20 = 0;
      v39 = *v13;
      if (!*v13)
      {
        goto LABEL_64;
      }
    }

    else
    {
      ERR_put_error(26, 0, 105, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/ecdsa/ecdsa_asn1.cc", 273);
      ERR_put_error(26, 0, 105, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/ecdsa/ecdsa_asn1.cc", 100);
      v20 = 0;
      v39 = *v13;
      if (!*v13)
      {
        goto LABEL_64;
      }
    }

LABEL_54:
    v40 = *(v39 + 20);
    if ((v40 & 2) == 0)
    {
      v41 = *v39;
      if (*v39)
      {
        v43 = *(v41 - 8);
        v42 = (v41 - 8);
        v44 = v43 + 8;
        if (v43 != -8)
        {
          bzero(v42, v44);
        }

        free(v42);
        v40 = *(v39 + 20);
      }
    }

    if (v40)
    {
      v46 = *(v39 - 8);
      v45 = (v39 - 8);
      v47 = v46 + 8;
      if (v46 != -8)
      {
        bzero(v45, v47);
      }

      free(v45);
    }

    else
    {
      *v39 = 0;
    }

LABEL_64:
    v48 = v13[1];
    if (v48)
    {
      v49 = *(v48 + 20);
      if ((v49 & 2) == 0)
      {
        v50 = *v48;
        if (*v48)
        {
          v52 = *(v50 - 8);
          v51 = (v50 - 8);
          v53 = v52 + 8;
          if (v52 != -8)
          {
            bzero(v51, v53);
          }

          free(v51);
          v49 = *(v48 + 20);
        }
      }

      if (v49)
      {
        v58 = *(v48 - 8);
        v57 = (v48 - 8);
        v59 = v58 + 8;
        if (v58 != -8)
        {
          bzero(v57, v59);
        }

        free(v57);
        v60 = *(v13 - 1);
        v54 = v13 - 1;
        v56 = v60 + 8;
        if (v60 == -8)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      }

      *v48 = 0;
    }

    v55 = *(v13 - 1);
    v54 = v13 - 1;
    v56 = v55 + 8;
    if (v55 == -8)
    {
LABEL_74:
      free(v54);
      return v20;
    }

LABEL_73:
    bzero(v54, v56);
    goto LABEL_74;
  }

  return v9(dgst, *&dgstlen, sig, siglen, eckey);
}

uint64_t **ecdsa_sig_from_fixed(const ec_key_st *a1, const unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a1;
  if (!*a1)
  {
    v7 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/ecdsa/ecdsa_asn1.cc";
    v8 = 26;
    v9 = 67;
    v10 = 35;
LABEL_34:
    ERR_put_error(v8, 0, v9, v7, v10);
    return 0;
  }

  v4 = *(v3 + 264);
  if (v4 < 1)
  {
    if (!v4)
    {
LABEL_31:
      v20 = 0;
      if (!a3)
      {
        goto LABEL_24;
      }

      goto LABEL_32;
    }

    v5 = *(v3 + 256);
  }

  else
  {
    v5 = *(v3 + 256);
    while (!*(v5 - 8 + 8 * v4))
    {
      v6 = __OFSUB__(v4--, 1);
      if ((v4 < 0) ^ v6 | (v4 == 0))
      {
        goto LABEL_31;
      }
    }
  }

  v11 = v4 - 1;
  v12 = *(v5 + 8 * v11);
  v13 = v12 != 0;
  v14 = HIDWORD(v12) != 0;
  if (HIDWORD(v12))
  {
    v12 >>= 32;
  }

  v15 = v12 >> 16 != 0;
  if (v12 >> 16)
  {
    v12 >>= 16;
  }

  v16 = v12 > 0xFF;
  if (v12 > 0xFF)
  {
    v12 >>= 8;
  }

  v17 = v12 > 0xF;
  if (v12 > 0xF)
  {
    v12 >>= 4;
  }

  v18 = v12 > 3;
  if (v12 > 3)
  {
    v12 >>= 2;
  }

  v19 = v13 | (v11 << 6) | (32 * v14) | (16 * v15) | (8 * v16) | (4 * v17) | (2 * v18);
  if (v12 > 1)
  {
    ++v19;
  }

  v20 = (v19 + 7) >> 3;
  if (a3 != 2 * v20)
  {
LABEL_32:
    v7 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/ecdsa/ecdsa_asn1.cc";
    v8 = 26;
    v9 = 100;
    v10 = 40;
    goto LABEL_34;
  }

LABEL_24:
  v22 = malloc_type_malloc(0x18uLL, 0xB4E622C9uLL);
  if (!v22)
  {
    v7 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v8 = 14;
    v9 = 65;
    v10 = 217;
    goto LABEL_34;
  }

  v23 = v22;
  *v22 = 16;
  v24 = (v22 + 1);
  v25 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (v25)
  {
    *v25 = 24;
    v25[1] = 0;
    v25[2] = 0;
    v25[3] = 0x100000000;
    *v24 = v25 + 1;
    v26 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
    if (v26)
    {
      goto LABEL_27;
    }

LABEL_36:
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v23[2] = 0;
    v30 = v23[1];
    if (!v30)
    {
      goto LABEL_81;
    }

    flags = v30->flags;
    if ((flags & 2) == 0)
    {
      d = v30->d;
      if (v30->d)
      {
        v34 = *(d - 1);
        v33 = d - 1;
        v35 = v34 + 8;
        if (v34 != -8)
        {
          bzero(v33, v35);
        }

        free(v33);
        flags = v30->flags;
      }
    }

    if (flags)
    {
      v43 = *&v30[-1].neg;
      p_neg = &v30[-1].neg;
      v44 = v43 + 8;
      if (v43 != -8)
      {
        bzero(p_neg, v44);
      }

      free(p_neg);
    }

    else
    {
      v30->d = 0;
    }

    v27 = v23[2];
    if (!v27)
    {
      goto LABEL_81;
    }

    goto LABEL_56;
  }

  ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  *v24 = 0;
  v26 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (!v26)
  {
    goto LABEL_36;
  }

LABEL_27:
  v26[1] = 0;
  v27 = (v26 + 1);
  *v26 = 24;
  v26[2] = 0;
  v26[3] = 0x100000000;
  v23[2] = (v26 + 1);
  v28 = v23[1];
  if (v28)
  {
    if (BN_bin2bn(a2, v20, v28) && BN_bin2bn(&a2[v20], v20, v23[2]))
    {
      return v24;
    }

    v36 = *v24;
    if (*v24)
    {
      v37 = *(v36 + 5);
      if ((v37 & 2) == 0)
      {
        v38 = *v36;
        if (*v36)
        {
          v40 = *(v38 - 8);
          v39 = (v38 - 8);
          v41 = v40 + 8;
          if (v40 != -8)
          {
            bzero(v39, v41);
          }

          free(v39);
          v37 = *(v36 + 5);
        }
      }

      if (v37)
      {
        v55 = *(v36 - 1);
        v54 = v36 - 1;
        v56 = v55 + 8;
        if (v55 != -8)
        {
          bzero(v54, v56);
        }

        free(v54);
      }

      else
      {
        *v36 = 0;
      }
    }

    v57 = v23[2];
    if (!v57)
    {
      goto LABEL_81;
    }

    v58 = v57->flags;
    if ((v58 & 2) == 0)
    {
      v59 = v57->d;
      if (v57->d)
      {
        v61 = *(v59 - 1);
        v60 = v59 - 1;
        v62 = v61 + 8;
        if (v61 != -8)
        {
          bzero(v60, v62);
        }

        free(v60);
        v58 = v57->flags;
      }
    }

    if ((v58 & 1) == 0)
    {
      v57->d = 0;
      goto LABEL_81;
    }

    v64 = *&v57[-1].neg;
    v63 = &v57[-1].neg;
    v65 = v64 + 8;
    if (v64 != -8)
    {
      bzero(v63, v65);
    }

    v53 = v63;
LABEL_80:
    free(v53);
    goto LABEL_81;
  }

LABEL_56:
  v45 = v27->flags;
  if ((v45 & 2) == 0)
  {
    v46 = v27->d;
    if (v27->d)
    {
      v48 = *(v46 - 1);
      v47 = v46 - 1;
      v49 = v48 + 8;
      if (v48 != -8)
      {
        bzero(v47, v49);
      }

      free(v47);
      v45 = v27->flags;
    }
  }

  if (v45)
  {
    v51 = *&v27[-1].neg;
    v50 = &v27[-1].neg;
    v52 = v51 + 8;
    if (v51 != -8)
    {
      bzero(v50, v52);
    }

    v53 = v50;
    goto LABEL_80;
  }

  v27->d = 0;
LABEL_81:
  free(v23);
  return 0;
}

int ECDSA_size(const EC_KEY *eckey)
{
  if (!eckey)
  {
    return eckey;
  }

  v1 = *eckey;
  if (!*eckey)
  {
    LODWORD(eckey) = 0;
    return eckey;
  }

  v2 = *(v1 + 264);
  if (v2 >= 1)
  {
    v3 = *(v1 + 256);
    while (!*(v3 - 8 + 8 * v2))
    {
      v4 = __OFSUB__(v2--, 1);
      if ((v2 < 0) ^ v4 | (v2 == 0))
      {
        LODWORD(eckey) = 0;
        v5 = 3;
        goto LABEL_30;
      }
    }

LABEL_12:
    v6 = v2 - 1;
    v7 = *(v3 + 8 * (v2 - 1));
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

    v15 = v14 + 7;
    v16 = v15 >> 3;
    if (v15 >= 0x3F8)
    {
      v17 = v16 + 1;
      v18 = 1;
      do
      {
        ++v18;
        v19 = v17 > 0xFF;
        v17 >>= 8;
      }

      while (v19);
      LODWORD(eckey) = 0;
      v5 = v16 + v18 + 2;
      if (v5 < v16)
      {
        return eckey;
      }
    }

    else
    {
      LODWORD(eckey) = 0;
      v5 = v16 + 3;
      if (v16 + 3 < v16)
      {
        return eckey;
      }
    }

    goto LABEL_30;
  }

  if (v2)
  {
    v3 = *(v1 + 256);
    goto LABEL_12;
  }

  LODWORD(eckey) = 0;
  v5 = 3;
LABEL_30:
  if ((v5 & 0x8000000000000000) == 0)
  {
    v20 = 2 * v5;
    v21 = 1;
    if (v5 >= 0x40)
    {
      v22 = 2 * v5;
      do
      {
        ++v21;
        v19 = v22 > 0xFF;
        v22 >>= 8;
      }

      while (v19);
    }

    v23 = v21 + v20;
    if (v23 + 1 >= v20)
    {
      LODWORD(eckey) = v23 + 1;
    }

    else
    {
      LODWORD(eckey) = 0;
    }
  }

  return eckey;
}

int ECDSA_verify(int type, const unsigned __int8 *dgst, int dgstlen, const unsigned __int8 *sig, int siglen, EC_KEY *eckey)
{
  v7 = *&siglen;
  v9 = *&dgstlen;
  v45 = *MEMORY[0x277D85DE8];
  __s2 = 0;
  v11 = ECDSA_SIG_from_bytes(sig, *&siglen);
  if (v11)
  {
    v12 = v11;
    v42 = 0;
    if (ECDSA_SIG_to_bytes(&__s2, &v42, v11) && v42 == v7 && (!v7 || !memcmp(sig, __s2, v7)))
    {
      v41 = 0;
      if (ecdsa_sig_to_fixed(eckey, v44, &v41, v12))
      {
        v13 = ecdsa_verify_fixed_no_self_test(dgst, v9, v44, v41, eckey);
        v14 = __s2;
        if (!__s2)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v13 = 0;
        v14 = __s2;
        if (!__s2)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      ERR_put_error(26, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/ecdsa/ecdsa_asn1.cc", 125);
      v13 = 0;
      v14 = __s2;
      if (!__s2)
      {
        goto LABEL_16;
      }
    }

    v16 = *(v14 - 1);
    v15 = (v14 - 1);
    v17 = v16 + 8;
    if (v16 != -8)
    {
      bzero(v15, v17);
    }

    free(v15);
LABEL_16:
    v18 = *v12;
    if (*v12)
    {
      v19 = *(v18 + 20);
      if ((v19 & 2) == 0)
      {
        v20 = *v18;
        if (*v18)
        {
          v22 = *(v20 - 8);
          v21 = (v20 - 8);
          v23 = v22 + 8;
          if (v22 != -8)
          {
            bzero(v21, v23);
          }

          free(v21);
          v19 = *(v18 + 20);
        }
      }

      if (v19)
      {
        v26 = *(v18 - 8);
        v25 = (v18 - 8);
        v27 = v26 + 8;
        if (v26 != -8)
        {
          bzero(v25, v27);
        }

        free(v25);
        v24 = v12[1];
        if (!v24)
        {
          goto LABEL_36;
        }

        goto LABEL_29;
      }

      *v18 = 0;
    }

    v24 = v12[1];
    if (!v24)
    {
      goto LABEL_36;
    }

LABEL_29:
    v28 = *(v24 + 20);
    if ((v28 & 2) == 0)
    {
      v29 = *v24;
      if (*v24)
      {
        v31 = *(v29 - 8);
        v30 = (v29 - 8);
        v32 = v31 + 8;
        if (v31 != -8)
        {
          bzero(v30, v32);
        }

        free(v30);
        v28 = *(v24 + 20);
      }
    }

    if (v28)
    {
      v38 = *(v24 - 8);
      v37 = (v24 - 8);
      v39 = v38 + 8;
      if (v38 != -8)
      {
        bzero(v37, v39);
      }

      free(v37);
      v40 = *(v12 - 1);
      v33 = v12 - 1;
      v35 = v40 + 8;
      if (v40 == -8)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    *v24 = 0;
LABEL_36:
    v34 = *(v12 - 1);
    v33 = v12 - 1;
    v35 = v34 + 8;
    if (v34 == -8)
    {
LABEL_38:
      free(v33);
      return v13;
    }

LABEL_37:
    bzero(v33, v35);
    goto LABEL_38;
  }

  return 0;
}

BIGNUM **ECDSA_SIG_from_bytes(unsigned __int8 *a1, uint64_t a2)
{
  v26 = a1;
  v27 = a2;
  v2 = ECDSA_SIG_parse(&v26);
  if (!v2)
  {
    ERR_put_error(26, 0, 100, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/ecdsa/ecdsa_asn1.cc", 261);
    return v2;
  }

  if (!v27)
  {
    return v2;
  }

  ERR_put_error(26, 0, 100, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/ecdsa/ecdsa_asn1.cc", 261);
  v3 = *v2;
  if (*v2)
  {
    flags = v3->flags;
    if ((flags & 2) == 0)
    {
      d = v3->d;
      if (v3->d)
      {
        v7 = *(d - 1);
        v6 = d - 1;
        v8 = v7 + 8;
        if (v7 != -8)
        {
          bzero(v6, v8);
        }

        free(v6);
        flags = v3->flags;
      }
    }

    if (flags)
    {
      v12 = *&v3[-1].neg;
      p_neg = &v3[-1].neg;
      v13 = v12 + 8;
      if (v12 != -8)
      {
        bzero(p_neg, v13);
      }

      free(p_neg);
      v9 = v2[1];
      if (!v9)
      {
        goto LABEL_25;
      }

      goto LABEL_18;
    }

    v3->d = 0;
  }

  v9 = v2[1];
  if (!v9)
  {
    goto LABEL_25;
  }

LABEL_18:
  v14 = v9->flags;
  if ((v14 & 2) == 0)
  {
    v15 = v9->d;
    if (v9->d)
    {
      v17 = *(v15 - 1);
      v16 = v15 - 1;
      v18 = v17 + 8;
      if (v17 != -8)
      {
        bzero(v16, v18);
      }

      free(v16);
      v14 = v9->flags;
    }
  }

  if (v14)
  {
    v23 = *&v9[-1].neg;
    v22 = &v9[-1].neg;
    v24 = v23 + 8;
    if (v23 != -8)
    {
      bzero(v22, v24);
    }

    free(v22);
    v25 = *(v2 - 1);
    v19 = v2 - 1;
    v21 = v25 + 8;
    if (v25 == -8)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v9->d = 0;
LABEL_25:
  v20 = *(v2 - 1);
  v19 = v2 - 1;
  v21 = v20 + 8;
  if (v20 != -8)
  {
LABEL_26:
    bzero(v19, v21);
  }

LABEL_27:
  free(v19);
  return 0;
}

uint64_t ECDSA_SIG_to_bytes(void **a1, void *a2, uint64_t *a3)
{
  v18 = 0;
  v17 = 0u;
  *v16 = 0u;
  v6 = malloc_type_malloc(8uLL, 0xB4E622C9uLL);
  if (v6)
  {
    *v6 = 0;
    v7 = v6 + 1;
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v7 = 0;
  }

  LOBYTE(v16[0]) = 0;
  v15 = 0;
  v17 = 0uLL;
  v16[1] = v7;
  LOBYTE(v18) = 1;
  if (!CBB_add_asn1(&v15, v19, 536870928) || !BN_marshal_asn1(v19, *a3) || !BN_marshal_asn1(v19, a3[1]) || !CBB_flush(&v15))
  {
    v8 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/ecdsa/ecdsa_asn1.cc";
    v9 = 26;
    v10 = 105;
    v11 = 273;
    goto LABEL_11;
  }

  if (LOBYTE(v16[0]))
  {
    v8 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/bytestring/cbb.cc";
    v9 = 14;
    v10 = 66;
    v11 = 126;
LABEL_11:
    ERR_put_error(v9, 0, v10, v8, v11);
    goto LABEL_12;
  }

  if (!CBB_flush(&v15))
  {
LABEL_12:
    ERR_put_error(26, 0, 105, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/ecdsa/ecdsa_asn1.cc", 285);
    if (!LOBYTE(v16[0]) && (v18 & 1) != 0 && v16[1])
    {
      v13 = v16[1] - 8;
      v12 = *(v16[1] - 1);
      if (v12 != -8)
      {
        bzero(v13, v12 + 8);
      }

      free(v13);
    }

    return 0;
  }

  if (v18)
  {
    if (!a1 || !a2)
    {
      goto LABEL_12;
    }
  }

  else if (!a1)
  {
    goto LABEL_26;
  }

  *a1 = v16[1];
LABEL_26:
  if (a2)
  {
    *a2 = v17;
  }

  return 1;
}

uint64_t ecdsa_sig_to_fixed(uint64_t *a1, char *a2, uint64_t *a3, void *a4)
{
  v4 = *a1;
  if (!*a1)
  {
    v8 = 26;
    v9 = 67;
    v10 = 56;
LABEL_60:
    ERR_put_error(v8, 0, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/ecdsa/ecdsa_asn1.cc", v10);
    return 0;
  }

  v5 = *(v4 + 264);
  if (v5 < 1)
  {
    if (!v5)
    {
LABEL_25:
      v21 = 0;
      v22 = 0;
      v23 = *a4;
      if (*(*a4 + 16))
      {
        goto LABEL_59;
      }

      goto LABEL_28;
    }

    v6 = *(v4 + 256);
  }

  else
  {
    v6 = *(v4 + 256);
    while (!*(v6 - 8 + 8 * v5))
    {
      v7 = __OFSUB__(v5--, 1);
      if ((v5 < 0) ^ v7 | (v5 == 0))
      {
        goto LABEL_25;
      }
    }
  }

  v11 = v5 - 1;
  v12 = *(v6 + 8 * v11);
  v13 = v12 != 0;
  v14 = HIDWORD(v12) != 0;
  if (HIDWORD(v12))
  {
    v12 >>= 32;
  }

  v15 = v12 >> 16 != 0;
  if (v12 >> 16)
  {
    v12 >>= 16;
  }

  v16 = v12 > 0xFF;
  if (v12 > 0xFF)
  {
    v12 >>= 8;
  }

  v17 = v12 > 0xF;
  if (v12 > 0xF)
  {
    v12 >>= 4;
  }

  v18 = v12 > 3;
  if (v12 > 3)
  {
    v12 >>= 2;
  }

  v19 = v13 | (v11 << 6) | (32 * v14) | (16 * v15) | (8 * v16) | (4 * v17) | (2 * v18);
  if (v12 > 1)
  {
    ++v19;
  }

  v20 = v19 + 7;
  if (v20 >= 0x218)
  {
    v8 = 15;
    v9 = 100;
    v10 = 61;
    goto LABEL_60;
  }

  v22 = v20 >> 3;
  v21 = 2 * v22;
  v23 = *a4;
  if (*(*a4 + 16))
  {
    goto LABEL_59;
  }

LABEL_28:
  v24 = *v23;
  v25 = 8 * *(v23 + 8);
  v26 = v25 - v22;
  if (v25 <= v22)
  {
    goto LABEL_46;
  }

  if (v26 < 8)
  {
    v27 = 0;
    v28 = v22;
    goto LABEL_42;
  }

  if (v26 >= 0x20)
  {
    v29 = v26 & 0xFFFFFFFFFFFFFFE0;
    v30 = (v24 + v22 + 16);
    v31 = 0uLL;
    v32 = v26 & 0xFFFFFFFFFFFFFFE0;
    v33 = 0uLL;
    do
    {
      v31 = vorrq_s8(v30[-1], v31);
      v33 = vorrq_s8(*v30, v33);
      v30 += 2;
      v32 -= 32;
    }

    while (v32);
    v34 = vorrq_s8(v33, v31);
    *v34.i8 = vorr_s8(*v34.i8, *&vextq_s8(v34, v34, 8uLL));
    v35 = v34.i64[0] | HIDWORD(v34.i64[0]) | ((v34.i64[0] | HIDWORD(v34.i64[0])) >> 16);
    v27 = v35 | BYTE1(v35);
    if (v26 == v29)
    {
      goto LABEL_45;
    }

    if ((v26 & 0x18) == 0)
    {
      v28 = v22 + v29;
LABEL_42:
      v41 = v28 - v25;
      v42 = &v24->i8[v28];
      do
      {
        v43 = *v42++;
        v27 |= v43;
        v44 = __CFADD__(v41++, 1);
      }

      while (!v44);
      goto LABEL_45;
    }
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v28 = v22 + (v26 & 0xFFFFFFFFFFFFFFF8);
  v36 = v27;
  v37 = &v24->i8[v22 + v29];
  v38 = v29 - (v26 & 0xFFFFFFFFFFFFFFF8);
  do
  {
    v39 = *v37++;
    v36 = vorr_s8(v39, v36);
    v38 += 8;
  }

  while (v38);
  v40 = *&v36 | HIDWORD(*&v36) | ((*&v36 | HIDWORD(*&v36)) >> 16);
  v27 = v40 | BYTE1(v40);
  if (v26 != (v26 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_42;
  }

LABEL_45:
  if (v27)
  {
    goto LABEL_59;
  }

LABEL_46:
  if (v25 >= v22)
  {
    v45 = v22;
  }

  else
  {
    v45 = v25;
  }

  v46 = &a2[v22];
  if (v45)
  {
    if (v45 < 8 || &a2[v22 - v45] < &v24->i8[v45] && v24 < v46)
    {
      v47 = 0;
      goto LABEL_54;
    }

    if (v45 >= 0x20)
    {
      v47 = v45 & 0x7FFFFFE0;
      v63 = v24 + 1;
      v64 = &a2[v22 - 16];
      v65 = v47;
      do
      {
        v66 = vrev64q_s8(v63[-1]);
        v67 = vrev64q_s8(*v63);
        v64[-1] = vextq_s8(v67, v67, 8uLL);
        *v64 = vextq_s8(v66, v66, 8uLL);
        v63 += 2;
        v64 -= 2;
        v65 -= 32;
      }

      while (v65);
      if (v45 == v47)
      {
        goto LABEL_56;
      }

      if ((v45 & 0x18) == 0)
      {
LABEL_54:
        v48 = v45 - v47;
        v49 = &a2[v22 + ~v47];
        v50 = &v24->i8[v47];
        do
        {
          v51 = *v50++;
          *v49-- = v51;
          --v48;
        }

        while (v48);
        goto LABEL_56;
      }
    }

    else
    {
      v47 = 0;
    }

    v68 = v47;
    v47 = v45 & 0x7FFFFFF8;
    v69 = &v24->i8[v68];
    v70 = &a2[v22 - v68 - 8];
    v71 = v68 - v47;
    do
    {
      v72 = *v69++;
      *v70-- = vrev64_s8(v72);
      v71 += 8;
    }

    while (v71);
    if (v45 != v47)
    {
      goto LABEL_54;
    }
  }

LABEL_56:
  if (v25 < v22)
  {
    v52 = a2;
    v53 = a3;
    v54 = a4;
    bzero(a2, v22 - v45);
    a4 = v54;
    a2 = v52;
    a3 = v53;
  }

  v55 = a4[1];
  if (*(v55 + 16))
  {
    goto LABEL_59;
  }

  v57 = *v55;
  v58 = 8 * *(v55 + 8);
  v59 = v58 - v22;
  if (v58 > v22)
  {
    if (v59 < 8)
    {
      v60 = 0;
      v61 = v22;
      goto LABEL_85;
    }

    if (v59 >= 0x20)
    {
      v62 = v59 & 0xFFFFFFFFFFFFFFE0;
      v73 = (v57 + v22 + 16);
      v74 = 0uLL;
      v75 = v59 & 0xFFFFFFFFFFFFFFE0;
      v76 = 0uLL;
      do
      {
        v74 = vorrq_s8(v73[-1], v74);
        v76 = vorrq_s8(*v73, v76);
        v73 += 2;
        v75 -= 32;
      }

      while (v75);
      v77 = vorrq_s8(v76, v74);
      *v77.i8 = vorr_s8(*v77.i8, *&vextq_s8(v77, v77, 8uLL));
      v78 = v77.i64[0] | HIDWORD(v77.i64[0]) | ((v77.i64[0] | HIDWORD(v77.i64[0])) >> 16);
      v60 = v78 | BYTE1(v78);
      if (v59 == v62)
      {
        goto LABEL_88;
      }

      if ((v59 & 0x18) == 0)
      {
        v61 = v22 + v62;
LABEL_85:
        v84 = v61 - v58;
        v85 = &v57->i8[v61];
        do
        {
          v86 = *v85++;
          v60 |= v86;
          v44 = __CFADD__(v84++, 1);
        }

        while (!v44);
        goto LABEL_88;
      }
    }

    else
    {
      v60 = 0;
      v62 = 0;
    }

    v61 = v22 + (v59 & 0xFFFFFFFFFFFFFFF8);
    v79 = v60;
    v80 = &v57->i8[v22 + v62];
    v81 = v62 - (v59 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v82 = *v80++;
      v79 = vorr_s8(v82, v79);
      v81 += 8;
    }

    while (v81);
    v83 = *&v79 | HIDWORD(*&v79) | ((*&v79 | HIDWORD(*&v79)) >> 16);
    v60 = v83 | BYTE1(v83);
    if (v59 != (v59 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_85;
    }

LABEL_88:
    if (!v60)
    {
      goto LABEL_89;
    }

LABEL_59:
    v8 = 26;
    v9 = 100;
    v10 = 67;
    goto LABEL_60;
  }

LABEL_89:
  if (v58 >= v22)
  {
    v87 = v22;
  }

  else
  {
    v87 = v58;
  }

  if (!v87)
  {
    goto LABEL_99;
  }

  if (v87 < 8 || &a2[2 * v22 - v87] < &v57->i8[v87] && v57 < &v46[v22])
  {
    v88 = 0;
    goto LABEL_97;
  }

  if (v87 >= 0x20)
  {
    v88 = v87 & 0x7FFFFFE0;
    v95 = v57 + 1;
    v96 = &a2[2 * v22 - 16];
    v97 = v88;
    do
    {
      v98 = vrev64q_s8(v95[-1]);
      v99 = vrev64q_s8(*v95);
      v96[-1] = vextq_s8(v99, v99, 8uLL);
      *v96 = vextq_s8(v98, v98, 8uLL);
      v95 += 2;
      v96 -= 2;
      v97 -= 32;
    }

    while (v97);
    if (v87 == v88)
    {
      goto LABEL_99;
    }

    if ((v87 & 0x18) == 0)
    {
LABEL_97:
      v89 = v87 - v88;
      v90 = &a2[2 * v22 + ~v88];
      v91 = &v57->i8[v88];
      do
      {
        v92 = *v91++;
        *v90-- = v92;
        --v89;
      }

      while (v89);
      goto LABEL_99;
    }
  }

  else
  {
    v88 = 0;
  }

  v100 = v88;
  v88 = v87 & 0x7FFFFFF8;
  v101 = &v57->i8[v100];
  v102 = &a2[2 * v22 - v100 - 8];
  v103 = v100 - v88;
  do
  {
    v104 = *v101++;
    *v102-- = vrev64_s8(v104);
    v103 += 8;
  }

  while (v103);
  if (v87 != v88)
  {
    goto LABEL_97;
  }

LABEL_99:
  if (v58 < v22)
  {
    v93 = v46;
    v94 = a3;
    bzero(v93, v22 - v87);
    a3 = v94;
  }

  *a3 = v21;
  return 1;
}

ECDSA_SIG *ECDSA_SIG_new(void)
{
  v0 = malloc_type_malloc(0x18uLL, 0xB4E622C9uLL);
  if (!v0)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  v1 = v0;
  *v0 = 16;
  v2 = (v0 + 1);
  v3 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (v3)
  {
    *v3 = 24;
    v3[1] = 0;
    v3[2] = 0;
    v3[3] = 0x100000000;
    v2->r = (v3 + 1);
    v4 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v2->r = 0;
    v4 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
    if (v4)
    {
LABEL_4:
      v4[1] = 0;
      v5 = v4 + 1;
      *v4 = 24;
      v4[2] = 0;
      v4[3] = 0x100000000;
      v1[2] = v4 + 1;
      if (v1[1])
      {
        return v2;
      }

      goto LABEL_20;
    }
  }

  ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  v1[2] = 0;
  v7 = v1[1];
  if (v7)
  {
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

    if (v8)
    {
      v14 = *(v7 - 1);
      v13 = v7 - 1;
      v15 = v14 + 8;
      if (v14 != -8)
      {
        bzero(v13, v15);
      }

      free(v13);
      v5 = v1[2];
      if (!v5)
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    *v7 = 0;
    v5 = v1[2];
    if (v5)
    {
LABEL_20:
      v16 = *(v5 + 5);
      if ((v16 & 2) == 0)
      {
        v17 = *v5;
        if (*v5)
        {
          v19 = *(v17 - 8);
          v18 = (v17 - 8);
          v20 = v19 + 8;
          if (v19 != -8)
          {
            bzero(v18, v20);
          }

          free(v18);
          v16 = *(v5 + 5);
        }
      }

      if (v16)
      {
        v22 = *(v5 - 1);
        v21 = v5 - 1;
        v23 = v22 + 8;
        if (v22 != -8)
        {
          bzero(v21, v23);
        }

        free(v21);
      }

      else
      {
        *v5 = 0;
      }
    }
  }

LABEL_30:
  free(v1);
  return 0;
}

int ECDSA_do_verify(const unsigned __int8 *dgst, int dgst_len, const ECDSA_SIG *sig, EC_KEY *eckey)
{
  v5 = *&dgst_len;
  v10 = *MEMORY[0x277D85DE8];
  v8 = 0;
  result = ecdsa_sig_to_fixed(eckey, v9, &v8, sig);
  if (result)
  {
    return ecdsa_verify_fixed_no_self_test(dgst, v5, v9, v8, eckey);
  }

  return result;
}

BIGNUM **ECDSA_SIG_parse(unsigned __int8 **a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0xB4E622C9uLL);
  if (!v2)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  v3 = v2;
  *v2 = 16;
  v4 = (v2 + 1);
  v5 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (v5)
  {
    *v5 = 24;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = 0x100000000;
    *v4 = (v5 + 1);
    v6 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_23:
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v3[2] = 0;
    v15 = v3[1];
    if (!v15)
    {
      goto LABEL_59;
    }

    v16 = *(v15 + 5);
    if ((v16 & 2) == 0)
    {
      v17 = *v15;
      if (*v15)
      {
        v19 = *(v17 - 8);
        v18 = (v17 - 8);
        v20 = v19 + 8;
        if (v19 != -8)
        {
          bzero(v18, v20);
        }

        free(v18);
        v16 = *(v15 + 5);
      }
    }

    if (v16)
    {
      v22 = *(v15 - 1);
      v21 = v15 - 1;
      v23 = v22 + 8;
      if (v22 != -8)
      {
        bzero(v21, v23);
      }

      free(v21);
      v7 = v3[2];
      if (!v7)
      {
        goto LABEL_59;
      }
    }

    else
    {
      *v15 = 0;
      v7 = v3[2];
      if (!v7)
      {
        goto LABEL_59;
      }
    }

LABEL_35:
    v24 = *(v7 + 5);
    if ((v24 & 2) == 0)
    {
      v25 = *v7;
      if (*v7)
      {
        v27 = *(v25 - 8);
        v26 = (v25 - 8);
        v28 = v27 + 8;
        if (v27 != -8)
        {
          bzero(v26, v28);
        }

        free(v26);
        v24 = *(v7 + 5);
      }
    }

    if (v24)
    {
      v30 = *(v7 - 1);
      v29 = v7 - 1;
      v31 = v30 + 8;
      if (v30 != -8)
      {
        bzero(v29, v31);
      }

      v32 = v29;
      goto LABEL_58;
    }

    *v7 = 0;
LABEL_59:
    free(v3);
    return 0;
  }

  ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  *v4 = 0;
  v6 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (!v6)
  {
    goto LABEL_23;
  }

LABEL_4:
  v6[1] = 0;
  v7 = v6 + 1;
  *v6 = 24;
  v6[2] = 0;
  v6[3] = 0x100000000;
  v3[2] = v6 + 1;
  if (!v3[1])
  {
    goto LABEL_35;
  }

  v48 = 0;
  v47 = 0;
  if (!cbs_get_any_asn1_element(a1, &v45, &v47, &v48, 0, 0, 0) || v47 != 536870928 || v46 < v48 || (v45 += v48, v46 -= v48, !BN_parse_asn1_unsigned(&v45, *v4)) || !BN_parse_asn1_unsigned(&v45, v3[2]) || v46)
  {
    ERR_put_error(26, 0, 100, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/ecdsa/ecdsa_asn1.cc", 249);
    v8 = *v4;
    if (v8)
    {
      flags = v8->flags;
      if ((flags & 2) == 0)
      {
        d = v8->d;
        if (v8->d)
        {
          v12 = *(d - 1);
          v11 = d - 1;
          v13 = v12 + 8;
          if (v12 != -8)
          {
            bzero(v11, v13);
          }

          free(v11);
          flags = v8->flags;
        }
      }

      if (flags)
      {
        v34 = *&v8[-1].neg;
        p_neg = &v8[-1].neg;
        v35 = v34 + 8;
        if (v34 != -8)
        {
          bzero(p_neg, v35);
        }

        free(p_neg);
        v14 = v3[2];
        if (!v14)
        {
          goto LABEL_59;
        }

LABEL_48:
        v36 = *(v14 + 5);
        if ((v36 & 2) == 0)
        {
          v37 = *v14;
          if (*v14)
          {
            v39 = *(v37 - 8);
            v38 = (v37 - 8);
            v40 = v39 + 8;
            if (v39 != -8)
            {
              bzero(v38, v40);
            }

            free(v38);
            v36 = *(v14 + 5);
          }
        }

        if ((v36 & 1) == 0)
        {
          *v14 = 0;
          goto LABEL_59;
        }

        v42 = *(v14 - 1);
        v41 = v14 - 1;
        v43 = v42 + 8;
        if (v42 != -8)
        {
          bzero(v41, v43);
        }

        v32 = v41;
LABEL_58:
        free(v32);
        goto LABEL_59;
      }

      v8->d = 0;
    }

    v14 = v3[2];
    if (!v14)
    {
      goto LABEL_59;
    }

    goto LABEL_48;
  }

  return v4;
}

uint64_t bssl::is_valid_client_hello_inner(_BYTE **a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  if (bssl::ssl_parse_client_hello_with_trailing_data(a1, &v30, &v27))
  {
    if (v31)
    {
      ERR_put_error(16, 0, 131, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 4774);
    }

    else
    {
      v8 = v29;
      if (v29)
      {
        v9 = v28;
        v10 = v29;
        v11 = v28;
        do
        {
          if (v10 < 2)
          {
            break;
          }

          if ((v10 & 0xFFFFFFFFFFFFFFFELL) == 2)
          {
            break;
          }

          v12 = v10 - 4;
          v13 = __rev16(*(v11 + 1));
          if (v12 < v13)
          {
            break;
          }

          v15 = *v11;
          v14 = v11 + 4;
          if (__rev16(v15) == 65037)
          {
            if (v13 == 1 && *v14 == 1)
            {
              while (v8 >= 2)
              {
                if ((v8 & 0xFFFFFFFFFFFFFFFELL) == 2)
                {
                  break;
                }

                v16 = v8 - 4;
                v17 = __rev16(*(v9 + 1));
                if (v16 < v17)
                {
                  break;
                }

                v18 = v9 + 4;
                if (__rev16(*v9) == 43)
                {
                  if (v17 && ((v19 = v17 - 1, v20 = *v18, v19 >= v20) ? (v21 = v20 == 0) : (v21 = 1), !v21 ? (v22 = v19 == v20) : (v22 = 0), v22))
                  {
                    v23 = (v9 + 5);
                    result = 1;
                    while (v19 > 1)
                    {
                      v24 = __rev16(*v23);
                      if (v24 - 768 < 4 || v24 == 65279 || v24 == 65277)
                      {
                        *a2 = 47;
                        v5 = 314;
                        v6 = 128;
                        goto LABEL_5;
                      }

                      ++v23;
                      v19 -= 2;
                      if (!v19)
                      {
                        return result;
                      }
                    }

                    *a2 = 50;
                    v5 = 137;
                    v6 = 121;
                  }

                  else
                  {
                    *a2 = 50;
                    v5 = 137;
                    v6 = 114;
                  }

                  goto LABEL_5;
                }

                v9 = &v18[v17];
                v8 = v16 - v17;
                if (!v8)
                {
                  goto LABEL_4;
                }
              }
            }

            break;
          }

          v11 = &v14[v13];
          v10 = v12 - v13;
        }

        while (v10);
      }
    }
  }

LABEL_4:
  *a2 = 47;
  v5 = 314;
  v6 = 104;
LABEL_5:
  ERR_put_error(16, 0, v5, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/encrypted_client_hello.cc", v6);
  return 0;
}

uint64_t bssl::ssl_client_hello_decrypt(uint64_t a1, char *a2, _BYTE *a3, void *a4, void *a5, char *a6, _BYTE **a7)
{
  v8 = a6;
  v10 = a3;
  *a3 = 0;
  v14 = a5[1];
  v13 = a5[2];
  v15 = v14;
  if (v13)
  {
    if (v13 > 0xFFFFFFFFFFFFFFF7 || (v17 = malloc_type_malloc(v13 + 8, 0xB4E622C9uLL)) == 0)
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      v20 = 0;
      *a2 = 80;
      return v20;
    }

    v81 = a4;
    *v17 = v13;
    v18 = (v17 + 1);
    if (v13 < 8)
    {
      v19 = v17 + 1;
      goto LABEL_21;
    }

    v19 = v17 + 1;
    if (v17 - v14 + 8 >= 0x20)
    {
      if (v13 < 0x20)
      {
        v23 = 0;
        goto LABEL_16;
      }

      v23 = v13 & 0xFFFFFFFFFFFFFFE0;
      v24 = (v14 + 16);
      v25 = v17 + 3;
      v26 = v13 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v27 = *v24;
        *(v25 - 1) = *(v24 - 1);
        *v25 = v27;
        v24 += 2;
        v25 += 2;
        v26 -= 32;
      }

      while (v26);
      if (v13 == v23)
      {
        goto LABEL_22;
      }

      if ((v13 & 0x18) != 0)
      {
LABEL_16:
        v19 = (v18 + (v13 & 0xFFFFFFFFFFFFFFF8));
        v15 = (v14 + (v13 & 0xFFFFFFFFFFFFFFF8));
        v28 = (v14 + v23);
        v29 = (v17 + v23 + 8);
        v30 = v23 - (v13 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v31 = *v28++;
          *v29++ = v31;
          v30 += 8;
        }

        while (v30);
        if (v13 != (v13 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_21;
        }

LABEL_22:
        v15 = a5[1];
        v21 = (v8 - v15);
        v22 = v13 - (v8 - v15);
        if (v13 < v8 - v15)
        {
          goto LABEL_156;
        }

        goto LABEL_23;
      }

      v15 = (v14 + v23);
      v19 = (v18 + v23);
    }

    do
    {
LABEL_21:
      v32 = *v15++;
      *v19++ = v32;
    }

    while (v15 != (v14 + v13));
    goto LABEL_22;
  }

  v81 = a4;
  v18 = 0;
  v21 = &a6[-v14];
  v22 = v14 - a6;
  if (a6 != v14)
  {
    goto LABEL_156;
  }

LABEL_23:
  if (v22 >= a7)
  {
    v33 = a7;
  }

  else
  {
    v33 = v22;
  }

  if (v33)
  {
    bzero(&v21[v18], v33);
  }

  if (a7)
  {
    if (a7 > 0xFFFFFFFFFFFFFFF7 || (v34 = malloc_type_malloc((a7 + 1), 0xB4E622C9uLL)) == 0)
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      v20 = 0;
      *a2 = 80;
      goto LABEL_51;
    }

    *v34 = a7;
    v15 = (v34 + 1);
  }

  else
  {
    v15 = 0;
  }

  v94[0] = 0;
  if (!EVP_HPKE_CTX_open(a1 + 736, v15, v94, a7, v8, a7))
  {
    *a2 = 51;
    *v10 = 1;
    ERR_put_error(16, 0, 138, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/encrypted_client_hello.cc", 325);
    v20 = 0;
    v10 = a7;
    goto LABEL_45;
  }

  v10 = v94[0];
  if (v94[0] > a7)
  {
LABEL_156:
    abort();
  }

  if (v94[0] != a7 && v94[0] - a7 <= &v15[v94[0] - 1])
  {
    goto LABEL_117;
  }

  a7 = *a1;
  v92 = v15;
  v93 = v94[0];
  if (!bssl::ssl_parse_client_hello_with_trailing_data(a7, &v92, v94))
  {
    goto LABEL_43;
  }

  v35 = (v92 + 1);
  v36 = v93 - 1;
  while (v36 != -1)
  {
    v92 = v35;
    v93 = v36;
    v37 = *(v35++ - 1);
    --v36;
    if (v37)
    {
      ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/encrypted_client_hello.cc", 149);
      *a2 = 47;
LABEL_43:
      v20 = 0;
      goto LABEL_45;
    }
  }

  if (v107)
  {
    v44 = v99 == 0;
  }

  else
  {
    v44 = 0;
  }

  if (v44)
  {
    v45 = a5[7];
    v98 = a5[6];
    v99 = v45;
    *v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    if (!(*(*a7 + 11))(a7, &v89, &v84, 1))
    {
      goto LABEL_97;
    }

    v46 = v95;
    __dst = 0;
    if (!CBB_add_space(&v84, &__dst, 2))
    {
      goto LABEL_97;
    }

    *(__dst + 1) = v46;
    *__dst = HIBYTE(v46);
    v47 = v96;
    v8 = v97;
    __dst = 0;
    if (!CBB_add_space(&v84, &__dst, v97))
    {
      goto LABEL_97;
    }

    if (v8)
    {
      memcpy(__dst, v47, v8);
    }

    if (!CBB_add_u8_length_prefixed(&v84, v108))
    {
      goto LABEL_97;
    }

    v48 = v98;
    v8 = v99;
    __dst = 0;
    if (!CBB_add_space(v108, &__dst, v99))
    {
      goto LABEL_97;
    }

    if (v8)
    {
      memcpy(__dst, v48, v8);
    }

    if (**v94[0])
    {
      if (!CBB_add_u8_length_prefixed(&v84, v108))
      {
        goto LABEL_97;
      }

      v49 = v100;
      v8 = v101;
      __dst = 0;
      if (!CBB_add_space(v108, &__dst, v101))
      {
        goto LABEL_97;
      }

      if (v8)
      {
        memcpy(__dst, v49, v8);
      }
    }

    if (CBB_add_u16_length_prefixed(&v84, v108))
    {
      v50 = v102;
      v8 = v103;
      __dst = 0;
      if (CBB_add_space(v108, &__dst, v103))
      {
        if (v8)
        {
          memcpy(__dst, v50, v8);
        }

        if (CBB_add_u8_length_prefixed(&v84, v108))
        {
          v51 = v104;
          v8 = v105;
          __dst = 0;
          if (CBB_add_space(v108, &__dst, v105))
          {
            if (v8)
            {
              memcpy(__dst, v51, v8);
            }

            if (CBB_flush(&v84) && CBB_add_u16_length_prefixed(&v84, v108))
            {
              v8 = v107;
              __src = v106;
              if ((bssl::ssl_client_hello_get_extension(v94, &__dst, 64768) & 1) == 0)
              {
                goto LABEL_118;
              }

              v52 = v83;
              v78 = __dst;
              v74 = (__dst - __src + v83);
              v75 = v8 - v74;
              v76 = v8;
              if (v8 >= v74)
              {
                if (v8 >= __dst - __src - 4)
                {
                  v8 = (__dst - __src - 4);
                }

                v109[0] = 0;
                if (!CBB_add_space(v108, v109, v8))
                {
                  v54 = 68;
                  v55 = 194;
                  goto LABEL_98;
                }

                if (v8)
                {
                  memcpy(v109[0], __src, v8);
                }

                if (!v52 || (v53 = *v78, v79 = (v78 + 1), v73 = v52 - 1, v52 - 1 < v53) || (__dst = v79 + v53, v83 = v52 - 1 - v53, !v53) || v73 != v53)
                {
                  v54 = 137;
                  v55 = 202;
                  goto LABEL_98;
                }

                v68 = a5[14];
                v77 = a5[15];
                do
                {
                  if (v73 <= 1)
                  {
                    v54 = 137;
                    v55 = 212;
                    goto LABEL_98;
                  }

                  v69 = *v79++;
                  v70 = bswap32(v69) >> 16;
                  if (v70 == 65037)
                  {
                    *a2 = 47;
                    v54 = 320;
                    v55 = 218;
                    goto LABEL_98;
                  }

                  v73 -= 2;
                  do
                  {
                    if (v77 == 1)
                    {
                      goto LABEL_154;
                    }

                    if (!v77)
                    {
                      *a2 = 47;
                      v54 = 320;
                      v55 = 228;
                      goto LABEL_98;
                    }

                    if ((v77 & 0xFFFFFFFFFFFFFFFELL) == 2 || (v71 = __rev16(v68[1]), v77 - 4 < v71))
                    {
LABEL_154:
                      v54 = 137;
                      v55 = 233;
                      goto LABEL_98;
                    }

                    v77 = v77 - 4 - v71;
                    v72 = bswap32(*v68) >> 16;
                    v8 = (v68 + 2);
                    v68 = (v68 + v71 + 4);
                  }

                  while (v72 != v70);
                  if (!CBB_add_u16(v108, v70) || !CBB_add_u16(v108, v71) || (v109[0] = 0, !CBB_add_space(v108, v109, v71)))
                  {
                    v54 = 137;
                    v55 = 242;
                    goto LABEL_98;
                  }

                  if (v71)
                  {
                    memcpy(v109[0], v8, v71);
                  }
                }

                while (v73);
                v109[0] = 0;
                if (CBB_add_space(v108, v109, v75))
                {
                  if (v76 == v74)
                  {
                    goto LABEL_122;
                  }

                  v62 = v109[0];
                  v64 = v75;
                  v63 = &v74[__src];
                  goto LABEL_121;
                }

                v54 = 68;
                v55 = 249;
                goto LABEL_98;
              }

              goto LABEL_156;
            }
          }
        }
      }
    }

LABEL_97:
    v54 = 68;
    v55 = 171;
    goto LABEL_98;
  }

  ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/encrypted_client_hello.cc", 159);
  v20 = 0;
LABEL_45:
  while (1)
  {
    if (!v10 || (v10 - 1) < -v15)
    {
      if (v15)
      {
        v38 = *(v15 - 1);
        v15 -= 8;
        v39 = v38 + 8;
        if (v38 != -8)
        {
          bzero(v15, v39);
        }

        free(v15);
      }

LABEL_51:
      if (!v13 || v13 - 1 < -v18)
      {
        break;
      }
    }

LABEL_117:
    __break(1u);
LABEL_118:
    v109[0] = 0;
    if (!CBB_add_space(v108, v109, v8))
    {
      v54 = 68;
      v55 = 183;
LABEL_98:
      ERR_put_error(16, 0, v54, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/encrypted_client_hello.cc", v55);
LABEL_99:
      v20 = 0;
      if (BYTE8(v89))
      {
        goto LABEL_105;
      }

      goto LABEL_100;
    }

    if (v8)
    {
      v62 = v109[0];
      v63 = __src;
      v64 = v8;
LABEL_121:
      memcpy(v62, v63, v64);
    }

LABEL_122:
    if (!CBB_flush(&v84))
    {
      v54 = 68;
      v55 = 254;
      goto LABEL_98;
    }

    v65 = v86;
    if (v85)
    {
      v66 = v87 + v88;
      v65 = v66 + *v86;
      v67 = v86[1] - v66;
    }

    else
    {
      v67 = v87;
    }

    if (!bssl::is_valid_client_hello_inner(a7, a2, v65, v67))
    {
      goto LABEL_99;
    }

    if (((*(*a7 + 12))(a7, &v89, v81) & 1) == 0)
    {
      v54 = 68;
      v55 = 264;
      goto LABEL_98;
    }

    v20 = 1;
    if (BYTE8(v89))
    {
      goto LABEL_105;
    }

LABEL_100:
    if (BYTE8(v91))
    {
      a2 = v90[0];
      if (v90[0])
      {
        a2 = v90[0] - 8;
        v56 = *(v90[0] - 1);
        if (v56 != -8)
        {
          bzero(v90[0] - 8, v56 + 8);
        }

        free(a2);
      }
    }

LABEL_105:
    if (v20)
    {
      v57 = *a1;
      v58 = *(*a1 + 64);
      if (v58)
      {
        v59 = v57[6];
        v60 = *(v59 + 35);
        if (v60 && (*(v60 + 1617) & 4) != 0 && (*(v57 + 164) & 1) == 0)
        {
          LOWORD(v61) = *(*(v60 + 1560) + 4);
        }

        else
        {
          v61 = *(v59 + 104);
          if (!v61)
          {
            if (**v57)
            {
              LOWORD(v61) = -259;
            }

            else
            {
              LOWORD(v61) = 771;
            }
          }
        }

        v58(0, v61, 257, *v81, v81[1], v57, v57[9]);
      }

      v20 = 1;
    }
  }

  if (v18)
  {
    v41 = *(v18 - 8);
    v40 = (v18 - 8);
    v42 = v41 + 8;
    if (v41 != -8)
    {
      bzero(v40, v42);
    }

    free(v40);
  }

  return v20;
}

BOOL bssl::ssl_is_valid_ech_public_name(unsigned __int8 *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  while (2)
  {
    v4 = 0;
    v5 = a1;
    v6 = a2;
    while (a1[v4] != 46)
    {
      if (a2 == ++v4)
      {
        goto LABEL_6;
      }
    }

    v7 = v4;
    if (v4 == a2)
    {
LABEL_6:
      a1 = 0;
      a2 = 0;
      v3 = v5;
      v2 = v6;
      if (v6 - 64 < 0xFFFFFFFFFFFFFFC1)
      {
        return 0;
      }
    }

    else
    {
      v8 = v4 + 1;
      if (a2 < v7 + 1)
      {
        abort();
      }

      if (a2 < v7)
      {
        v7 = a2;
      }

      a2 -= v8;
      if (v6 == v8)
      {
        return 0;
      }

      a1 += v8;
      v6 = v7;
      if (v7 - 64 < 0xFFFFFFFFFFFFFFC1)
      {
        return 0;
      }
    }

    if (*v5 != 45 && v5[v6 - 1] != 45)
    {
      do
      {
        v9 = *v5;
        if (v9 != 45 && (v9 - 48) >= 0xA && (v9 & 0xFFFFFFDF) - 65 >= 0x1A)
        {
          return 0;
        }

        ++v5;
        --v6;
      }

      while (v6);
      if (a2)
      {
        continue;
      }

      if (v2 >= 2)
      {
        if (*v3 != 48 || (v3[1] | 0x20) != 0x78)
        {
LABEL_32:
          v14 = v2 - 1;
          do
          {
            v15 = *v3++;
            result = (v15 - 58) < 0xFFFFFFF6;
          }

          while ((v15 - 58) >= 0xFFFFFFF6 && v14-- != 0);
          return result;
        }

        v13 = v2 - 2;
        if (v2 == 2)
        {
          return 0;
        }

        for (i = v3 + 2; ; ++i)
        {
          v18 = *i;
          v19 = v18 - 58;
          v20 = (v18 & 0xFFFFFFDF) - 71;
          if (v19 <= 0xFFFFFFF5 && v20 <= 0xFFFFFFF9)
          {
            break;
          }

          result = 0;
          if (!--v13)
          {
            return result;
          }
        }
      }

      if (!v2)
      {
        return 1;
      }

      goto LABEL_32;
    }

    return 0;
  }
}

uint64_t bssl::parse_ech_config(unsigned __int16 **a1, void *a2, _BYTE *a3, char a4)
{
  v4 = a1[1];
  v5 = (v4 - 1);
  if (v4 < 2 || (v6 = *a1, ++*a1, a1[1] = v5, v5 < 2) || (v7 = *v6, *a1 = v6 + 2, a1[1] = v4 - 2, v8 = __rev16(v6[1]), v9 = (v4 - v8 - 4), (v4 - 2) < v8))
  {
    v10 = 422;
LABEL_5:
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/encrypted_client_hello.cc", v10);
    return 0;
  }

  *a1 = (v6 + v8 + 4);
  a1[1] = v9;
  if (__rev16(v7) != 65037)
  {
    *a3 = 0;
    return 1;
  }

  v13 = *a2;
  v12 = a2[1];
  if (v12 && v12 - 1 >= -v13)
  {
    __break(1u);
LABEL_79:
    *v4 = 0;
    return 1;
  }

  if (v13)
  {
    v14 = a2;
    v15 = a4;
    v16 = a3;
    v18 = *(v13 - 8);
    v17 = (v13 - 8);
    v19 = v18 + 8;
    if (v18 != -8)
    {
      bzero(v17, v19);
    }

    free(v17);
    a3 = v16;
    a4 = v15;
    a2 = v14;
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4 == v9)
  {
    goto LABEL_14;
  }

  v20 = a2;
  v21 = v4 - v9;
  if ((v4 - v9) <= 0xFFFFFFFFFFFFFFF7)
  {
    v4 = a3;
    v22 = a4;
    v23 = malloc_type_malloc(v21 + 8, 0xB4E622C9uLL);
    if (v23)
    {
      *v23 = v21;
      v24 = v23 + 1;
      *v20 = v23 + 1;
      v20[1] = v21;
      if (v21 < 8)
      {
        v25 = v6;
        goto LABEL_34;
      }

      v25 = v6;
      if ((v23 - v6 + 8) >= 0x20)
      {
        if (v21 < 0x20)
        {
          v26 = 0;
          goto LABEL_29;
        }

        v26 = v21 & 0xFFFFFFFFFFFFFFE0;
        v27 = (v6 + 8);
        v28 = v23 + 3;
        v29 = v21 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v30 = *v27;
          *(v28 - 1) = *(v27 - 1);
          *v28 = v30;
          v27 += 2;
          v28 += 2;
          v29 -= 32;
        }

        while (v29);
        if (v21 == v26)
        {
          goto LABEL_35;
        }

        if ((v21 & 0x18) != 0)
        {
LABEL_29:
          v24 += v21 & 0xFFFFFFFFFFFFFFF8;
          v25 = v6 + (v21 & 0xFFFFFFFFFFFFFFF8);
          v31 = (v6 + v26);
          v32 = (v23 + v26 + 8);
          v33 = v26 - (v21 & 0xFFFFFFFFFFFFFFF8);
          do
          {
            v34 = *v31++;
            *v32++ = v34;
            v33 += 8;
          }

          while (v33);
          if (v21 == (v21 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        v25 = v6 + v26;
        v24 += v26;
      }

      do
      {
LABEL_34:
        v35 = *v25++;
        *v24++ = v35;
      }

      while (v25 != v6 + v21);
LABEL_35:
      v36 = v20[1];
      v37 = v36 - 4;
      if (v36 < 4 || (v38 = *v20, v39 = __rev16(*(*v20 + 2)), v39 - 1 >= v37) || (*(v20 + 67) = *(v38 + 4), v39 < 3) || (*(v20 + 32) = bswap32(*(v38 + 5)) >> 16, v39 - 3 < 2) || (v40 = v39 - 5, v41 = __rev16(*(v38 + 7)), v43 = v40 >= v41, v42 = v40 - v41, !v43) || (v41 ? (v43 = v42 >= 2) : (v43 = 0), !v43 || ((v44 = v38 + 9, v45 = v44 + v41, v46 = v42 - 2, v47 = *(v44 + v41 + 1), v48 = v47 | (*(v44 + v41) << 8), v49 = v47 & 3, v46 >= v48) ? (v50 = v46 == v48) : (v50 = 1), !v50 ? (v51 = v48 == 0) : (v51 = 1), !v51 ? (v52 = v49 == 0) : (v52 = 0), !v52 || (v53 = v45 + 2, v54 = (v45 + 2 + v48), *(v20 + 66) = *v54, !(v46 + ~v48)) || (v55 = v46 + ~v48 - 1, v56 = v54[1], v43 = v55 >= v56, v57 = v55 - v56, !v43) || (v54[1] ? (v58 = v57 >= 2) : (v58 = 0), !v58 || (v59 = v54 + 2, v60 = &v54[v56 + 2], v62 = *v60, v61 = (v60 + 1), v63 = v57 - 2, v57 - 2 != __rev16(v62))))))
      {
LABEL_14:
        v10 = 453;
        goto LABEL_5;
      }

      v70 = v41;
      v71 = v48;
      v69 = v44;
      if (bssl::ssl_is_valid_ech_public_name(v59, v56))
      {
        v20[2] = v69;
        v20[3] = v70;
        v20[4] = v59;
        v20[5] = v56;
        v20[6] = v53;
        v20[7] = v71;
        if (v63)
        {
          v64 = 0;
          while (v63 >= 2)
          {
            if ((v63 & 0xFFFFFFFFFFFFFFFELL) == 2)
            {
              break;
            }

            v65 = __rev16(*(v61 + 1));
            v43 = v63 - 4 >= v65;
            v63 = v63 - 4 - v65;
            if (!v43)
            {
              break;
            }

            v66 = *v61;
            v61 += v65 + 4;
            if (v66 < 0)
            {
              v67 = 1;
            }

            else
            {
              v67 = v22;
            }

            v64 |= v67;
            if (!v63)
            {
              v68 = v64 ^ 1;
              goto LABEL_82;
            }
          }

          v10 = 477;
          goto LABEL_5;
        }

        v68 = 1;
LABEL_82:
        *v4 = v68 & 1;
        return 1;
      }

      goto LABEL_79;
    }
  }

  ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  result = 0;
  *v20 = 0;
  return result;
}

uint64_t bssl::ECHServerConfig::SetupContext(uint64_t a1, void *a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  __dst[4] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 56);
  if (v6)
  {
    for (i = *(a1 + 48); ; i += 2)
    {
      if (v6 < 4)
      {
        return 0;
      }

      v8 = __rev16(i[1]);
      if (a3 == bswap32(*i) >> 16 && v8 == a4)
      {
        break;
      }

      v6 -= 4;
      if (!v6)
      {
        return 0;
      }
    }

    v11 = *(a1 + 8);
    v12 = v11 + 8;
    v31 = 0u;
    *v32 = 0u;
    v33 = 0u;
    if ((v11 + 8) < 0xFFFFFFFFFFFFFFF8)
    {
      v18 = malloc_type_malloc(v11 + 16, 0xB4E622C9uLL);
      if (v18)
      {
        *v18 = v12;
        v19 = v18 + 1;
      }

      else
      {
        ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
        result = 0;
        if (v12)
        {
          goto LABEL_35;
        }

        v19 = 0;
      }

      BYTE8(v31) = 0;
      *&v31 = 0;
      v32[0] = v19;
      v32[1] = 0;
      *&v33 = v12;
      BYTE8(v33) = 1;
      __dst[0] = 0;
      result = CBB_add_space(&v31, __dst, 8);
      if (!result || (*__dst[0] = 0x68636520736C74, v20 = *a1, v21 = *(a1 + 8), __dst[0] = 0, result = CBB_add_space(&v31, __dst, v21), !result))
      {
LABEL_35:
        if (!BYTE8(v31) && (BYTE8(v33) & 1) != 0 && v32[0])
        {
          v28 = result;
          v30 = v32[0] - 8;
          v29 = *(v32[0] - 1);
          if (v29 != -8)
          {
            bzero(v30, v29 + 8);
          }

          free(v30);
          return v28;
        }

        return result;
      }

      if (v21)
      {
        memcpy(__dst[0], v20, v21);
      }

      v22 = &EVP_hpke_aes_128_gcm::kAEAD;
      if (EVP_hpke_aes_128_gcm::kAEAD != a4)
      {
        v22 = &EVP_hpke_aes_256_gcm::kAEAD;
        if (EVP_hpke_aes_256_gcm::kAEAD != a4)
        {
          if (EVP_hpke_chacha20_poly1305::kAEAD == a4)
          {
            v22 = &EVP_hpke_chacha20_poly1305::kAEAD;
          }

          else
          {
            v22 = 0;
          }
        }
      }

      v23 = v32[0];
      if (BYTE8(v31))
      {
        v24 = v32[1] + v33;
        v23 = &v24[*v32[0]];
        v25 = (*(v32[0] + 1) - v24);
      }

      else
      {
        v25 = v32[1];
      }

      bzero(a2, 0x2C0uLL);
      v26 = *(a1 + 72);
      a2[1] = v22;
      a2[2] = &EVP_hpke_hkdf_sha256::kKDF;
      *a2 = v26;
      v34 = 0;
      if ((*(v26 + 64))(a1 + 72, __dst, &v34, a5, a6) && hpke_key_schedule(a2, 0, __dst, v34, v23, v25))
      {
        result = 1;
        goto LABEL_35;
      }

      v27 = a2[3];
      if (v27)
      {
        (*(v27 + 24))(a2 + 3);
        result = 0;
        a2[3] = 0;
        goto LABEL_35;
      }
    }

    else
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    }

    result = 0;
    goto LABEL_35;
  }

  return 0;
}

void bssl::ssl_select_ech_config(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if (*(a1 + 30) >= 0x304u)
  {
    v5 = *(a1 + 8);
    v6 = *(v5 + 256);
    if (v6 >= 2)
    {
      v7 = *(v5 + 248);
      v8 = v6 - 2;
      v9 = __rev16(*v7);
      if (v8 >= v9)
      {
        v61 = v7 + 1;
        v62 = v9;
        if (v9 && v8 == v9)
        {
          v47 = (a1 + 1576);
          v11 = EVP_hpke_aes_128_gcm::kAEAD;
          v12 = EVP_hpke_aes_256_gcm::kAEAD;
          v13 = EVP_hpke_chacha20_poly1305::kAEAD;
          while (1)
          {
            v60 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0;
            v14 = 0;
            v15 = 0;
            if (!bssl::parse_ech_config(&v61, &v56, &v55, 0))
            {
              goto LABEL_66;
            }

            v14 = 1;
            if (v55 == 1 && v60 == 32)
            {
              v16 = *(&v59 + 1);
              if (*(&v59 + 1))
              {
                break;
              }
            }

            v15 = v4;
            v25 = *(&v56 + 1);
            v26 = v56;
            if (!*(&v56 + 1))
            {
              goto LABEL_68;
            }

LABEL_67:
            if (v25 - 1 >= -v26)
            {
              __break(1u);
              return;
            }

LABEL_68:
            if (v26)
            {
              v36 = *(v26 - 8);
              v35 = (v26 - 8);
              v37 = v36 + 8;
              if (v36 != -8)
              {
                bzero(v35, v37);
              }

              free(v35);
            }

            if (v14)
            {
              v4 = v15;
              if (v62)
              {
                continue;
              }
            }

            return;
          }

          v17 = v59;
          if ((~*(*(*a1 + 8) + 269) & 0x1800) != 0)
          {
            v18 = 0;
            do
            {
              if (v16 < 2 || (v16 & 0xFFFFFFFFFFFFFFFELL) == 2)
              {
                goto LABEL_65;
              }

              v27 = __rev16(*v17);
              v28 = __rev16(v17[1]);
              if (v13 == v28)
              {
                v29 = &EVP_hpke_chacha20_poly1305::kAEAD;
              }

              else
              {
                v29 = 0;
              }

              if (v12 == v28)
              {
                v29 = &EVP_hpke_aes_256_gcm::kAEAD;
              }

              if (v11 == v28)
              {
                v29 = &EVP_hpke_aes_128_gcm::kAEAD;
              }

              if ((v28 == 3 || v18 == 0) && v29 != 0 && v27 == 1)
              {
                v18 = v29;
              }

              v17 += 2;
              v16 -= 4;
            }

            while (v16);
LABEL_62:
            if (!v18)
            {
              goto LABEL_65;
            }

            v33 = *(&v56 + 1);
            v34 = *(&v56 + 1) + 8;
            v52 = 0u;
            *v53 = 0u;
            v54 = 0u;
            if ((*(&v56 + 1) + 8) >= 0xFFFFFFFFFFFFFFF8)
            {
              ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
              goto LABEL_89;
            }

            v38 = malloc_type_malloc(*(&v56 + 1) + 16, 0xB4E622C9uLL);
            if (v38)
            {
              *v38 = v34;
              v39 = v38 + 1;
              goto LABEL_77;
            }

            ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
            if (v34)
            {
              goto LABEL_89;
            }

            v39 = 0;
            BYTE8(v52) = 0;
            *&v52 = 0;
            v53[0] = v39;
            v53[1] = 0;
            *&v54 = v34;
            BYTE8(v54) = BYTE8(v54) & 0xFC | 1;
            v63[0] = 0;
            if (!CBB_add_space(&v52, v63, 8))
            {
              goto LABEL_89;
            }

            *v63[0] = 0x68636520736C74;
            v40 = v56;
            v63[0] = 0;
            if (!CBB_add_space(&v52, v63, v33))
            {
              goto LABEL_89;
            }

LABEL_77:
            if (v33)
            {
              memcpy(v63[0], v40, v33);
            }

            v41 = v53[0];
            if (BYTE8(v52))
            {
              v42 = v53[1] + v54;
              v43 = &v42[*v53[0]];
              v44 = (*(v53[0] + 1) - v42);
              v41 = v43;
            }

            else
            {
              v44 = v53[1];
            }

            if (EVP_HPKE_CTX_setup_sender(a1 + 736, a2, a4, a3, &EVP_hpke_x25519_hkdf_sha256::kKEM, &EVP_hpke_hkdf_sha256::kKDF, v18, v57, *(&v57 + 1), v41, v44) && bssl::SSLTranscript::Init((a1 + 456)))
            {
              v63[0] = bssl::New<bssl::ECHConfig,bssl::ECHConfig>(&v56);
              std::unique_ptr<bssl::ECHConfig,bssl::internal::Deleter>::operator=[abi:sn200100](v47, v63);
              std::unique_ptr<bssl::ECHConfig,bssl::internal::Deleter>::~unique_ptr[abi:sn200100](v63);
              v15 = *v47 != 0;
            }

            else
            {
LABEL_89:
              v15 = 0;
            }

            if (!BYTE8(v52) && (BYTE8(v54) & 1) != 0 && v53[0])
            {
              v46 = v53[0] - 8;
              v45 = *(v53[0] - 1);
              if (v45 != -8)
              {
                bzero(v46, v45 + 8);
              }

              free(v46);
            }

            v14 = 0;
            v25 = *(&v56 + 1);
            v26 = v56;
            if (*(&v56 + 1))
            {
              goto LABEL_67;
            }

            goto LABEL_68;
          }

          v18 = 0;
          while (v16 >= 2 && (v16 & 0xFFFFFFFFFFFFFFFELL) != 2)
          {
            v19 = __rev16(*v17);
            v20 = __rev16(v17[1]);
            if (v13 == v20)
            {
              v21 = &EVP_hpke_chacha20_poly1305::kAEAD;
            }

            else
            {
              v21 = 0;
            }

            if (v12 == v20)
            {
              v21 = &EVP_hpke_aes_256_gcm::kAEAD;
            }

            if (v11 == v20)
            {
              v22 = &EVP_hpke_aes_128_gcm::kAEAD;
            }

            else
            {
              v22 = v21;
            }

            if (v18)
            {
              v23 = v18;
            }

            else
            {
              v23 = v22;
            }

            if (v22)
            {
              v24 = v19 == 1;
            }

            else
            {
              v24 = 0;
            }

            if (v24)
            {
              v18 = v23;
            }

            v17 += 2;
            v16 -= 4;
            if (!v16)
            {
              goto LABEL_62;
            }
          }

LABEL_65:
          v14 = 1;
          v15 = v4;
LABEL_66:
          v25 = *(&v56 + 1);
          v26 = v56;
          if (!*(&v56 + 1))
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        }
      }
    }
  }
}

void **std::unique_ptr<bssl::ECHConfig,bssl::internal::Deleter>::operator=[abi:sn200100](void **result, void *a2)
{
  v2 = result;
  v3 = *a2;
  *a2 = 0;
  v4 = *result;
  *result = v3;
  if (!v4)
  {
    return v2;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || v5 - 1 < -v6)
  {
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

    *v4 = 0;
    v4[1] = 0;
    v11 = *(v4 - 1);
    v10 = v4 - 1;
    v12 = v11 + 8;
    if (v11 != -8)
    {
      bzero(v10, v12);
    }

    free(v10);
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t bssl::ssl_encrypt_client_hello(uint64_t a1, const void *a2, size_t a3)
{
  v3 = a1;
  v4 = &v63;
  v69 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  if (!*(a1 + 1576))
  {
    if (*(a1 + 30) < 0x304u || (*(*(a1 + 8) + 269) & 1) == 0)
    {
      return 1;
    }

    v10 = *(v5[1] + 269) & 0x1800;
    v11 = *(a1 + 1668);
    X25519_keypair(v68, v67);
    *&v65 = 0;
    v12 = BCM_rand_bytes_with_additional_data(&v65, 8uLL, BCM_rand_bytes::kZeroAdditionalData);
    v13 = v65;
    v14 = &off_2882A5740;
    if (v10 != 6144)
    {
      v14 = &off_2882A5760;
    }

    v15 = *((*v14)(v12) + 2);
    *&v49 = 0;
    v65 = 0u;
    memset(v66, 0, sizeof(v66));
    v16 = malloc_type_malloc(0x108uLL, 0xB4E622C9uLL);
    if (v16)
    {
      *v16 = 256;
      BYTE8(v65) = 0;
      *&v65 = 0;
      v66[0] = v16 + 1;
      *&v66[1] = xmmword_273BB1820;
      LOBYTE(v66[3]) = 1;
      *&v63 = 0;
      if (CBB_add_space(&v65, &v63, 2))
      {
        *(v63 + 1) = 1;
        *v63 = 0;
        *&v63 = 0;
        if (CBB_add_space(&v65, &v63, 2))
        {
          v17 = EVP_hpke_aes_128_gcm::kAEAD;
          if (v10 != 6144)
          {
            v17 = EVP_hpke_chacha20_poly1305::kAEAD;
          }

          *(v63 + 1) = v17;
          *v63 = HIBYTE(v17);
          *&v63 = 0;
          if (CBB_add_space(&v65, &v63, 1))
          {
            *v63 = v11;
            if (CBB_add_u16_length_prefixed(&v65, &v63))
            {
              v58 = 0;
              if (CBB_add_space(&v63, &v58, 32))
              {
                v18 = v58;
                *v58 = v68[0];
                v18[1] = v68[1];
                if (CBB_add_u16_length_prefixed(&v65, &v58))
                {
                  v19 = v15 + 32 * (v13 & 3);
                  if (CBB_add_space(&v58, &v49, v19 + 128))
                  {
                    BCM_rand_bytes_with_additional_data(v49, v19 + 128, BCM_rand_bytes::kZeroAdditionalData);
                    v3 = bssl::CBBFinishArray(&v65, (v3 + 568));
                    if (!BYTE8(v65))
                    {
                      goto LABEL_41;
                    }

                    return v3;
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
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    }

    v3 = 0;
    if (!BYTE8(v65))
    {
      goto LABEL_41;
    }

    return v3;
  }

  memset(v66, 0, sizeof(v66));
  v65 = 0u;
  v63 = 0u;
  memset(v64, 0, sizeof(v64));
  v57 = 0;
  v55 = 0;
  v56 = 0;
  if (!(*(*v5 + 88))(v5, &v65, &v58, 1))
  {
    goto LABEL_26;
  }

  memset(v64, 0, sizeof(v64));
  v63 = 0u;
  v8 = malloc_type_malloc(0x108uLL, 0xB4E622C9uLL);
  if (!v8)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
LABEL_26:
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/encrypted_client_hello.cc", 800);
    goto LABEL_27;
  }

  *v8 = 256;
  BYTE8(v63) = 0;
  *&v63 = 0;
  v64[0] = v8 + 1;
  *&v64[1] = xmmword_273BB1820;
  LOBYTE(v64[3]) = v64[3] & 0xFC | 1;
  if (!bssl::ssl_write_client_hello_without_extensions(v3, &v58, 1, 0) || !bssl::ssl_write_client_hello_without_extensions(v3, &v63, 1, 1))
  {
    goto LABEL_26;
  }

  v9 = v59 ? *(v60 + 8) - (v61 + v62) : v61;
  if (!bssl::ssl_add_clienthello_tlsext(v3, &v58, &v63, &v57, 1, v9) || ((*(*v5 + 96))(v5, &v65, &v55) & 1) == 0)
  {
    goto LABEL_26;
  }

  if (v57 != 1)
  {
    goto LABEL_62;
  }

  *&v68[0] = 0;
  if (!bssl::tls13_write_psk_binder(v3, v3 + 456, v55, v56, v68))
  {
LABEL_27:
    v3 = 0;
    goto LABEL_28;
  }

  if (BYTE8(v63))
  {
    v28 = v64[1] + LOBYTE(v64[2]);
    v29 = (*(v64[0] + 1) - v28);
    v30 = *&v68[0];
    if (v29 < *&v68[0])
    {
      goto LABEL_113;
    }

    v31 = &v28[*v64[0]];
  }

  else
  {
    v29 = v64[1];
    v30 = *&v68[0];
    if (v64[1] < *&v68[0])
    {
      goto LABEL_113;
    }

    v31 = v64[0];
  }

  if (v56 < v30)
  {
LABEL_113:
    abort();
  }

  if (v30)
  {
    memcpy(&v29[v31 - v30], (v55 + v56 - v30), v30);
  }

LABEL_62:
  bssl::ssl_do_msg_callback(v5, 1, 257, v55, v56);
  if (!bssl::SSLTranscript::Update(v3 + 456, v55, v56))
  {
    goto LABEL_27;
  }

  v4 = *(*(v3 + 1576) + 66);
  v32 = v5[18];
  if (v32)
  {
    v33 = strlen(v32);
    v34 = v4 - v33;
    if (v4 < v33)
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = v4 + 9;
  }

  if (BYTE8(v63))
  {
    v35 = *(v64[0] + 1) - (v64[1] + LOBYTE(v64[2]));
  }

  else
  {
    LOBYTE(v35) = v64[1];
  }

  v53 = 0;
  v54 = 0;
  if (!CBB_add_zeros(&v63, ((-v35 - v34) & 0x1F) + v34))
  {
    goto LABEL_27;
  }

  if ((bssl::CBBFinishArray(&v63, &v53) & 1) == 0)
  {
    v3 = 0;
    v20 = v53;
    v5 = v54;
    if (!v54)
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

  v36 = *(v3 + 752);
  v37 = *(v3 + 744);
  v5 = v54;
  v4 = v5 + *((*(v37 + 8))() + 2);
  v52 = v4;
  if (!CBB_init(&v65, 0x100uLL))
  {
    goto LABEL_90;
  }

  if (!CBB_add_u16(&v65, *v36))
  {
    goto LABEL_90;
  }

  if (!CBB_add_u16(&v65, *v37))
  {
    goto LABEL_90;
  }

  v38 = *(*(v3 + 1576) + 67);
  *&v68[0] = 0;
  if (!CBB_add_space(&v65, v68, 1))
  {
    goto LABEL_90;
  }

  **&v68[0] = v38;
  if (!CBB_add_u16_length_prefixed(&v65, v68))
  {
    goto LABEL_90;
  }

  v67[0] = 0;
  if (!CBB_add_space(v68, v67, a3))
  {
    goto LABEL_90;
  }

  if (a3)
  {
    memcpy(v67[0], a2, a3);
  }

  if (!CBB_add_u16_length_prefixed(&v65, v67) || !CBB_add_zeros(v67, v4) || (v20 = v3 + 568, !bssl::CBBFinishArray(&v65, (v3 + 568))))
  {
LABEL_90:
    v3 = 0;
    v20 = v53;
    if (!v5)
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  if (!CBB_init(&v49, 0x100uLL) || !bssl::ssl_write_client_hello_without_extensions(v3, &v49, 2, 0))
  {
    goto LABEL_102;
  }

  if (!BYTE8(v49))
  {
    goto LABEL_97;
  }

  for (i = *(v50 + 8) - (*(&v50 + 1) + v51); (bssl::ssl_add_clienthello_tlsext(v3, &v49, 0, &v57, 2, i) & 1) == 0; i = *(&v50 + 1))
  {
LABEL_102:
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/encrypted_client_hello.cc", 878);
    v3 = 0;
    CBB_cleanup(&v49);
    v20 = v53;
    if (!v5)
    {
      goto LABEL_92;
    }

LABEL_91:
    if (v5 - 1 < -v20)
    {
      goto LABEL_92;
    }

LABEL_96:
    __break(1u);
LABEL_97:
    ;
  }

  v43 = *(v3 + 576);
  if (v43 < v4)
  {
    goto LABEL_113;
  }

  v44 = (*v20 + v43 - v4);
  v45 = v50;
  if (BYTE8(v49))
  {
    v46 = *(&v50 + 1) + v51;
    v45 = v46 + *v50;
    v47 = *(v50 + 8) - v46;
  }

  else
  {
    v47 = *(&v50 + 1);
  }

  if (EVP_HPKE_CTX_seal(v3 + 736, v44, &v52, v4, v53, v5, v45, v47))
  {
    v48 = v52 == v4;
  }

  else
  {
    v48 = 0;
  }

  v3 = v48;
  CBB_cleanup(&v49);
  v20 = v53;
  if (v5)
  {
    goto LABEL_91;
  }

LABEL_92:
  if (v20)
  {
    v41 = *(v20 - 8);
    v40 = (v20 - 8);
    v42 = v41 + 8;
    if (v41 != -8)
    {
      bzero(v40, v42);
    }

    free(v40);
  }

LABEL_28:
  v20 = v55;
  if (v56 && v56 - 1 >= -v55)
  {
    goto LABEL_96;
  }

  if (v55)
  {
    v22 = (v55 - 8);
    v21 = *(v55 - 8);
    if (v21 != -8)
    {
      bzero(v22, v21 + 8);
    }

    free(v22);
  }

  if (!BYTE8(v63) && (v64[3] & 1) != 0 && v64[0])
  {
    v24 = v64[0] - 8;
    v23 = *(v64[0] - 1);
    if (v23 != -8)
    {
      bzero(v24, v23 + 8);
    }

    free(v24);
  }

  if (!BYTE8(v65))
  {
LABEL_41:
    if ((v66[3] & 1) != 0 && v66[0])
    {
      v26 = v66[0] - 8;
      v25 = *(v66[0] - 1);
      if (v25 != -8)
      {
        bzero(v26, v25 + 8);
      }

      free(v26);
    }
  }

  return v3;
}

void SSL_ECH_KEYS_free(unsigned int *a1)
{
  if (a1)
  {
    v2 = atomic_load(a1);
    if (v2 != -1)
    {
      while (1)
      {
        if (!v2)
        {
          goto LABEL_34;
        }

        v3 = v2;
        atomic_compare_exchange_strong(a1, &v3, v2 - 1);
        if (v3 == v2)
        {
          break;
        }

        v2 = v3;
        if (v3 == -1)
        {
          return;
        }
      }

      if (v2 == 1)
      {
        v4 = *(a1 + 1);
        v6 = *(a1 + 2);
        v5 = (a1 + 2);
        if (v6)
        {
          while (v4)
          {
            v7 = *v4;
            *v4 = 0;
            if (v7)
            {
              v9 = *v7;
              v8 = v7[1];
              if (v8 && v8 - 1 >= -v9)
              {
                break;
              }

              if (v9)
              {
                v11 = *(v9 - 8);
                v10 = (v9 - 8);
                v12 = v11 + 8;
                if (v11 != -8)
                {
                  bzero(v10, v12);
                }

                free(v10);
              }

              *v7 = 0;
              v7[1] = 0;
              v14 = *(v7 - 1);
              v13 = v7 - 1;
              v15 = v14 + 8;
              if (v14 != -8)
              {
                bzero(v13, v15);
              }

              free(v13);
            }

            ++v4;
            if (!--v6)
            {
              v4 = *v5;
              goto LABEL_24;
            }
          }

          __break(1u);
LABEL_34:
          abort();
        }

LABEL_24:
        if (v4)
        {
          v17 = *(v4 - 1);
          v16 = v4 - 1;
          v18 = v17 + 8;
          if (v17 != -8)
          {
            bzero(v16, v18);
          }

          free(v16);
        }

        *v5 = 0;
        *(a1 + 2) = 0;
        *(a1 + 3) = 0;
        v20 = *(a1 - 1);
        v19 = a1 - 2;
        v21 = v20 + 8;
        if (v20 != -8)
        {
          bzero(v19, v21);
        }

        free(v19);
      }
    }
  }
}

void **std::unique_ptr<bssl::ECHConfig,bssl::internal::Deleter>::~unique_ptr[abi:sn200100](void **result)
{
  v1 = result;
  v2 = *result;
  *result = 0;
  if (!v2)
  {
    return v1;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || v3 - 1 < -v4)
  {
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

    *v2 = 0;
    v2[1] = 0;
    v9 = *(v2 - 1);
    v8 = v2 - 1;
    v10 = v9 + 8;
    if (v9 != -8)
    {
      bzero(v8, v10);
    }

    free(v8);
    return v1;
  }

  __break(1u);
  return result;
}

char *bssl::New<bssl::ECHConfig,bssl::ECHConfig>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x50uLL, 0xB4E622C9uLL);
  if (v2)
  {
    *v2 = 72;
    *(v2 + 1) = 0;
    *(v2 + 2) = 0;
    v3 = *(a1 + 8);
    *(v2 + 1) = *a1;
    *(v2 + 2) = v3;
    *a1 = 0;
    *(a1 + 8) = 0;
    v4 = *(a1 + 16);
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    *(v2 + 18) = *(a1 + 64);
    *(v2 + 56) = v6;
    *(v2 + 40) = v5;
    *(v2 + 24) = v4;
    return v2 + 8;
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }
}

unint64_t ERR_get_error(void)
{
  thread_local = CRYPTO_get_thread_local(0);
  if (!thread_local)
  {
    v6 = malloc_type_malloc(0x190uLL, 0x10D00400F8CE868uLL);
    if (!v6)
    {
      return 0;
    }

    thread_local = v6;
    v6[23] = 0u;
    v6[24] = 0u;
    v6[21] = 0u;
    v6[22] = 0u;
    v6[19] = 0u;
    v6[20] = 0u;
    v6[17] = 0u;
    v6[18] = 0u;
    v6[15] = 0u;
    v6[16] = 0u;
    v6[13] = 0u;
    v6[14] = 0u;
    v6[11] = 0u;
    v6[12] = 0u;
    v6[9] = 0u;
    v6[10] = 0u;
    v6[7] = 0u;
    v6[8] = 0u;
    v6[5] = 0u;
    v6[6] = 0u;
    v6[3] = 0u;
    v6[4] = 0u;
    v6[1] = 0u;
    v6[2] = 0u;
    *v6 = 0u;
    if (!CRYPTO_set_thread_local(0, v6, err_state_free))
    {
      return 0;
    }
  }

  v1 = *(thread_local + 97);
  if (v1 == *(thread_local + 96))
  {
    return 0;
  }

  v2 = (v1 + 1) & 0xF;
  v3 = &thread_local[3 * ((v1 + 1) & 0xF)];
  v4 = *(v3 + 4);
  free(v3[1]);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  *(thread_local + 97) = v2;
  return v4;
}

unint64_t ERR_get_error_line(const char **file, int *line)
{
  thread_local = CRYPTO_get_thread_local(0);
  if (!thread_local)
  {
    v11 = malloc_type_malloc(0x190uLL, 0x10D00400F8CE868uLL);
    if (!v11)
    {
      return 0;
    }

    thread_local = v11;
    v11[23] = 0u;
    v11[24] = 0u;
    v11[21] = 0u;
    v11[22] = 0u;
    v11[19] = 0u;
    v11[20] = 0u;
    v11[17] = 0u;
    v11[18] = 0u;
    v11[15] = 0u;
    v11[16] = 0u;
    v11[13] = 0u;
    v11[14] = 0u;
    v11[11] = 0u;
    v11[12] = 0u;
    v11[9] = 0u;
    v11[10] = 0u;
    v11[7] = 0u;
    v11[8] = 0u;
    v11[5] = 0u;
    v11[6] = 0u;
    v11[3] = 0u;
    v11[4] = 0u;
    v11[1] = 0u;
    v11[2] = 0u;
    *v11 = 0u;
    if (!CRYPTO_set_thread_local(0, v11, err_state_free))
    {
      return 0;
    }
  }

  v5 = *(thread_local + 97);
  if (v5 == *(thread_local + 96))
  {
    return 0;
  }

  v6 = (v5 + 1) & 0xF;
  v7 = &thread_local[3 * ((v5 + 1) & 0xF)];
  v8 = *(v7 + 4);
  if (file && line)
  {
    v9 = *v7;
    if (*v7)
    {
      v10 = *(v7 + 10);
    }

    else
    {
      v10 = 0;
      v9 = "NA";
    }

    *file = v9;
    *line = v10;
  }

  free(v7[1]);
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 0;
  *(thread_local + 97) = v6;
  return v8;
}

unint64_t ERR_peek_error(void)
{
  thread_local = CRYPTO_get_thread_local(0);
  if (!thread_local)
  {
    result = malloc_type_malloc(0x190uLL, 0x10D00400F8CE868uLL);
    if (!result)
    {
      return result;
    }

    *(result + 368) = 0u;
    *(result + 384) = 0u;
    *(result + 336) = 0u;
    *(result + 352) = 0u;
    *(result + 304) = 0u;
    *(result + 320) = 0u;
    *(result + 272) = 0u;
    *(result + 288) = 0u;
    *(result + 240) = 0u;
    *(result + 256) = 0u;
    *(result + 208) = 0u;
    *(result + 224) = 0u;
    *(result + 176) = 0u;
    *(result + 192) = 0u;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    v3 = result;
    v4 = CRYPTO_set_thread_local(0, result, err_state_free);
    thread_local = v3;
    if (!v4)
    {
      return 0;
    }
  }

  v1 = *(thread_local + 97);
  if (v1 == *(thread_local + 96))
  {
    return 0;
  }

  else
  {
    return LODWORD(thread_local[3 * ((v1 + 1) & 0xF) + 2]);
  }
}

unint64_t ERR_peek_last_error(void)
{
  thread_local = CRYPTO_get_thread_local(0);
  if (!thread_local)
  {
    result = malloc_type_malloc(0x190uLL, 0x10D00400F8CE868uLL);
    if (!result)
    {
      return result;
    }

    *(result + 368) = 0u;
    *(result + 384) = 0u;
    *(result + 336) = 0u;
    *(result + 352) = 0u;
    *(result + 304) = 0u;
    *(result + 320) = 0u;
    *(result + 272) = 0u;
    *(result + 288) = 0u;
    *(result + 240) = 0u;
    *(result + 256) = 0u;
    *(result + 208) = 0u;
    *(result + 224) = 0u;
    *(result + 176) = 0u;
    *(result + 192) = 0u;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    v3 = result;
    v4 = CRYPTO_set_thread_local(0, result, err_state_free);
    thread_local = v3;
    if (!v4)
    {
      return 0;
    }
  }

  v1 = *(thread_local + 96);
  if (*(thread_local + 97) == v1)
  {
    return 0;
  }

  else
  {
    return LODWORD(thread_local[3 * v1 + 2]);
  }
}

void ERR_clear_error(void)
{
  thread_local = CRYPTO_get_thread_local(0);
  if (thread_local || (v1 = malloc_type_malloc(0x190uLL, 0x10D00400F8CE868uLL)) != 0 && (thread_local = v1, v1[23] = 0u, v1[24] = 0u, v1[21] = 0u, v1[22] = 0u, v1[19] = 0u, v1[20] = 0u, v1[17] = 0u, v1[18] = 0u, v1[15] = 0u, v1[16] = 0u, v1[13] = 0u, v1[14] = 0u, v1[11] = 0u, v1[12] = 0u, v1[9] = 0u, v1[10] = 0u, v1[7] = 0u, v1[8] = 0u, v1[5] = 0u, v1[6] = 0u, v1[3] = 0u, v1[4] = 0u, v1[1] = 0u, v1[2] = 0u, *v1 = 0u, CRYPTO_set_thread_local(0, v1, err_state_free)))
  {
    free(thread_local[1]);
    *thread_local = 0;
    thread_local[1] = 0;
    thread_local[2] = 0;
    free(thread_local[4]);
    thread_local[3] = 0;
    thread_local[4] = 0;
    thread_local[5] = 0;
    free(thread_local[7]);
    thread_local[6] = 0;
    thread_local[7] = 0;
    thread_local[8] = 0;
    free(thread_local[10]);
    thread_local[9] = 0;
    thread_local[10] = 0;
    thread_local[11] = 0;
    free(thread_local[13]);
    thread_local[12] = 0;
    thread_local[13] = 0;
    thread_local[14] = 0;
    free(thread_local[16]);
    thread_local[15] = 0;
    thread_local[16] = 0;
    thread_local[17] = 0;
    free(thread_local[19]);
    thread_local[18] = 0;
    thread_local[19] = 0;
    thread_local[20] = 0;
    free(thread_local[22]);
    thread_local[21] = 0;
    thread_local[22] = 0;
    thread_local[23] = 0;
    free(thread_local[25]);
    thread_local[24] = 0;
    thread_local[25] = 0;
    thread_local[26] = 0;
    free(thread_local[28]);
    thread_local[27] = 0;
    thread_local[28] = 0;
    thread_local[29] = 0;
    free(thread_local[31]);
    thread_local[30] = 0;
    thread_local[31] = 0;
    thread_local[32] = 0;
    free(thread_local[34]);
    thread_local[33] = 0;
    thread_local[34] = 0;
    thread_local[35] = 0;
    free(thread_local[37]);
    thread_local[36] = 0;
    thread_local[37] = 0;
    thread_local[38] = 0;
    free(thread_local[40]);
    thread_local[39] = 0;
    thread_local[40] = 0;
    thread_local[41] = 0;
    free(thread_local[43]);
    thread_local[42] = 0;
    thread_local[43] = 0;
    thread_local[44] = 0;
    free(thread_local[46]);
    thread_local[45] = 0;
    thread_local[46] = 0;
    thread_local[47] = 0;
    free(thread_local[49]);
    thread_local[48] = 0;
    thread_local[49] = 0;
  }
}

char *err_reason_error_string(unsigned int a1, int a2)
{
  v5 = HIBYTE(a1);
  v6 = a1 & 0xFFF;
  if (v5 == 2)
  {
    v7 = 0;
    if (!a2 && v6 <= 0x7E)
    {

      return strerror(v6);
    }

    return v7;
  }

  if (v6 > 0x22)
  {
    if (v6 > 0x63)
    {
      v7 = 0;
      if (!(a1 >> 30) && v6 <= 0x7FF)
      {
        v17 = v2;
        v18 = v3;
        v16 = (v6 << 15) | (v5 << 26);
        v13 = bsearch(&v16, &kOpenSSLReasonValues, 0x2FFuLL, 4uLL, err_string_cmp);
        if (v13)
        {
          return &kOpenSSLReasonStringData[*v13 & 0x7FFF];
        }

        else
        {
          return 0;
        }
      }

      return v7;
    }

    if (v6 <= 66)
    {
      v14 = "MALLOC_FAILURE";
      if (a2)
      {
        v15 = "SHOULD_NOT_HAVE_BEEN_CALLED";
      }

      else
      {
        v14 = "malloc failure";
        v15 = "function should not have been called";
      }

      if (v6 != 66)
      {
        v15 = 0;
      }

      if (v6 == 65)
      {
        return v14;
      }

      else
      {
        return v15;
      }
    }

    else
    {
      v10 = "PASSED_NULL_PARAMETER";
      if (!a2)
      {
        v10 = "passed a null parameter";
      }

      v11 = "INTERNAL_ERROR";
      if (!a2)
      {
        v11 = "internal error";
      }

      v12 = "OVERFLOW";
      if (!a2)
      {
        v12 = "overflow";
      }

      if (v6 != 69)
      {
        v12 = 0;
      }

      if (v6 != 68)
      {
        v11 = v12;
      }

      if (v6 == 67)
      {
        return v10;
      }

      else
      {
        return v11;
      }
    }
  }

  else
  {
    v9 = &(&kLibraryNames)[3 * v6];
    if (a2)
    {
      v9 += 2;
    }

    return *v9;
  }
}

void ERR_error_string_n(unint64_t e, char *buf, size_t len)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!len)
  {
    return;
  }

  v5 = e;
  v6 = BYTE3(e);
  if (BYTE3(e) >= 0x23u)
  {
    v7 = err_reason_error_string(e, 0);
LABEL_6:
    v8 = __str;
    snprintf(__str, 0x20uLL, "lib(%u)", v6);
    goto LABEL_7;
  }

  v8 = (&kLibraryNames)[3 * v6];
  v7 = err_reason_error_string(e, 0);
  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (!v7)
  {
    v7 = v17;
    snprintf(v17, 0x20uLL, "reason(%u)", v5 & 0xFFF);
  }

  v9 = snprintf(buf, len, "error:%08x:%s:OPENSSL_internal:%s", v5, v8, v7);
  if (len >= 5 && (v9 & 0x80000000) == 0 && v9 >= len)
  {
    v10 = &buf[len];
    v11 = &buf[len - 5];
    v12 = strchr(buf, 58);
    v13 = 4;
    if (!v12 || v12 > v11 || (v14 = strchr(v12 + 1, 58), v11 = v10 - 4, v13 = 3, !v14) || v14 > v11 || (v15 = strchr(v14 + 1, 58), v11 = v10 - 3, v13 = 2, !v15) || v15 > v11 || (v16 = strchr(v15 + 1, 58), v11 = v10 - 2, v13 = 1, !v16) || v16 > v11)
    {
      memset(v11, 58, v13);
    }
  }
}

void ERR_put_error(int lib, int func, int reason, const char *file, int line)
{
  v5 = line;
  thread_local = CRYPTO_get_thread_local(0);
  if (thread_local || (v13 = malloc_type_malloc(0x190uLL, 0x10D00400F8CE868uLL)) != 0 && (thread_local = v13, v13[23] = 0u, v13[24] = 0u, v13[21] = 0u, v13[22] = 0u, v13[19] = 0u, v13[20] = 0u, v13[17] = 0u, v13[18] = 0u, v13[15] = 0u, v13[16] = 0u, v13[13] = 0u, v13[14] = 0u, v13[11] = 0u, v13[12] = 0u, v13[9] = 0u, v13[10] = 0u, v13[7] = 0u, v13[8] = 0u, v13[5] = 0u, v13[6] = 0u, v13[3] = 0u, v13[4] = 0u, v13[1] = 0u, v13[2] = 0u, *v13 = 0u, CRYPTO_set_thread_local(0, v13, err_state_free)))
  {
    if (lib == 2 && !reason)
    {
      reason = *__error();
    }

    v10 = *(thread_local + 96);
    v11 = (v10 + 1) & 0xF;
    *(thread_local + 96) = v11;
    if (v11 == *(thread_local + 97))
    {
      *(thread_local + 97) = (v10 + 2) & 0xF;
    }

    v12 = &thread_local[3 * ((v10 + 1) & 0xF)];
    free(v12[1]);
    v12[1] = 0;
    v12[2] = 0;
    *v12 = file;
    *(v12 + 10) = v5;
    *(v12 + 4) = reason & 0xFFF | (lib << 24);
  }
}

void ERR_add_error_data(int num, ...)
{
  va_start(va, num);
  va_copy(v22, va);
  va_copy(v23, va);
  v2 = num;
  v3 = 0;
  if (!num)
  {
    goto LABEL_9;
  }

  v4 = num;
  do
  {
    v5 = va_arg(v22, const char *);
    if (v5)
    {
      v6 = strlen(v5);
      if (__CFADD__(v3, v6))
      {
        return;
      }

      v3 += v6;
    }

    --v4;
  }

  while (v4);
  if (v3 != -1)
  {
LABEL_9:
    v7 = malloc_type_malloc(v3 + 1, 0x100004077774924uLL);
    if (v7)
    {
      v8 = v7;
      *v7 = 0;
      if (num)
      {
        v9 = 0;
        do
        {
          v10 = v23;
          v23 += 8;
          v11 = *v10;
          if (*v10)
          {
            v12 = v3;
            v13 = v3 - 1;
            v14 = v7;
            while (*v14)
            {
              ++v14;
              --v13;
              --v12;
              if (v13 == -2)
              {
                goto LABEL_13;
              }
            }

            if (v13 != -1)
            {
              do
              {
                v15 = *v11;
                if (!*v11)
                {
                  break;
                }

                ++v11;
                *v14++ = v15;
                --v12;
              }

              while (v12);
            }

            *v14 = 0;
          }

LABEL_13:
          ++v9;
        }

        while (v9 != v2);
      }

      thread_local = CRYPTO_get_thread_local(0);
      if ((thread_local || (v19 = malloc_type_malloc(0x190uLL, 0x10D00400F8CE868uLL)) != 0 && (v19[23] = 0u, v19[24] = 0u, v19[21] = 0u, v19[22] = 0u, v19[19] = 0u, v19[20] = 0u, v19[17] = 0u, v19[18] = 0u, v19[15] = 0u, v19[16] = 0u, v19[13] = 0u, v19[14] = 0u, v19[11] = 0u, v19[12] = 0u, v19[9] = 0u, v19[10] = 0u, v19[7] = 0u, v19[8] = 0u, v19[5] = 0u, v19[6] = 0u, v19[3] = 0u, v19[4] = 0u, v19[1] = 0u, v19[2] = 0u, *v19 = 0u, v20 = v19, v21 = CRYPTO_set_thread_local(0, v19, err_state_free), thread_local = v20, v21)) && (v17 = *(thread_local + 96), v17 != *(thread_local + 97)))
      {
        v18 = &thread_local[3 * v17];
        free(v18[1]);
        v18[1] = v8;
      }

      else
      {
        free(v8);
      }
    }
  }
}

void ERR_add_error_dataf(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v16 = 0;
  if (OPENSSL_vasprintf_internal(&v16, a1, &a9, 1) != -1)
  {
    v9 = v16;
    thread_local = CRYPTO_get_thread_local(0);
    if ((thread_local || (v13 = malloc_type_malloc(0x190uLL, 0x10D00400F8CE868uLL)) != 0 && (v13[23] = 0u, v13[24] = 0u, v13[21] = 0u, v13[22] = 0u, v13[19] = 0u, v13[20] = 0u, v13[17] = 0u, v13[18] = 0u, v13[15] = 0u, v13[16] = 0u, v13[13] = 0u, v13[14] = 0u, v13[11] = 0u, v13[12] = 0u, v13[9] = 0u, v13[10] = 0u, v13[7] = 0u, v13[8] = 0u, v13[5] = 0u, v13[6] = 0u, v13[3] = 0u, v13[4] = 0u, v13[1] = 0u, v13[2] = 0u, *v13 = 0u, v14 = v13, v15 = CRYPTO_set_thread_local(0, v13, err_state_free), thread_local = v14, v15)) && (v11 = *(thread_local + 96), v11 != *(thread_local + 97)))
    {
      v12 = &thread_local[3 * v11];
      free(v12[1]);
      v12[1] = v9;
    }

    else
    {
      free(v9);
    }
  }
}

void *ERR_save_state()
{
  thread_local = CRYPTO_get_thread_local(0);
  if (!thread_local)
  {
    v7 = malloc_type_malloc(0x190uLL, 0x10D00400F8CE868uLL);
    if (!v7)
    {
      return 0;
    }

    thread_local = v7;
    v7[23] = 0u;
    v7[24] = 0u;
    v7[21] = 0u;
    v7[22] = 0u;
    v7[19] = 0u;
    v7[20] = 0u;
    v7[17] = 0u;
    v7[18] = 0u;
    v7[15] = 0u;
    v7[16] = 0u;
    v7[13] = 0u;
    v7[14] = 0u;
    v7[11] = 0u;
    v7[12] = 0u;
    v7[9] = 0u;
    v7[10] = 0u;
    v7[7] = 0u;
    v7[8] = 0u;
    v7[5] = 0u;
    v7[6] = 0u;
    v7[3] = 0u;
    v7[4] = 0u;
    v7[1] = 0u;
    v7[2] = 0u;
    *v7 = 0u;
    if (!CRYPTO_set_thread_local(0, v7, err_state_free))
    {
      return 0;
    }
  }

  if (*(thread_local + 96) == *(thread_local + 97))
  {
    return 0;
  }

  v1 = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
  if (!v1)
  {
    return v1;
  }

  v2 = *(thread_local + 96);
  v3 = *(thread_local + 97);
  if (v2 >= v3)
  {
    v4 = *(thread_local + 96);
  }

  else
  {
    v4 = v2 + 16;
  }

  v5 = v4 - v3;
  v6 = malloc_type_malloc(24 * v5, 0x10500400B811B97uLL);
  *v1 = v6;
  if (!v6)
  {
    free(v1);
    return 0;
  }

  if (v4 == v3)
  {
    v1[1] = v5;
  }

  else
  {
    bzero(v6, 24 * (v4 - v3));
    v9 = 0;
    v1[1] = v5;
    if (v5 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v4 - v3;
    }

    v11 = 24 * v10;
    v12 = 1;
    do
    {
      v13 = *v1 + v9;
      v14 = &thread_local[3 * ((v12 + *(thread_local + 97)) & 0xF)];
      free(*(v13 + 8));
      *v13 = 0;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      v15 = v14[1];
      *v13 = *v14;
      if (v15)
      {
        v16 = strlen(v15);
        v17 = malloc_type_malloc(v16 + 1, 0x100004077774924uLL);
        v18 = v17;
        if (v17)
        {
          memcpy(v17, v15, v16 + 1);
        }

        *(v13 + 8) = v18;
      }

      *(v13 + 16) = *(v14 + 4);
      *(v13 + 20) = *(v14 + 10);
      v9 += 24;
      ++v12;
    }

    while (v11 != v9);
  }

  return v1;
}

void ERR_restore_state(void *a1)
{
  if (a1 && (v2 = a1[1]) != 0)
  {
    if (v2 >= 0x10)
    {
      abort();
    }

    thread_local = CRYPTO_get_thread_local(0);
    if (thread_local || (v14 = malloc_type_malloc(0x190uLL, 0x10D00400F8CE868uLL)) != 0 && (thread_local = v14, v14[23] = 0u, v14[24] = 0u, v14[21] = 0u, v14[22] = 0u, v14[19] = 0u, v14[20] = 0u, v14[17] = 0u, v14[18] = 0u, v14[15] = 0u, v14[16] = 0u, v14[13] = 0u, v14[14] = 0u, v14[11] = 0u, v14[12] = 0u, v14[9] = 0u, v14[10] = 0u, v14[7] = 0u, v14[8] = 0u, v14[5] = 0u, v14[6] = 0u, v14[3] = 0u, v14[4] = 0u, v14[1] = 0u, v14[2] = 0u, *v14 = 0u, CRYPTO_set_thread_local(0, v14, err_state_free)))
    {
      if (a1[1])
      {
        v4 = 0;
        v5 = 0;
        do
        {
          v7 = &thread_local[v4];
          v8 = *a1 + v4 * 8;
          free(thread_local[v4 + 1]);
          *v7 = 0;
          v7[1] = 0;
          v7[2] = 0;
          v9 = *(v8 + 8);
          *v7 = *v8;
          if (v9)
          {
            v10 = strlen(v9);
            v11 = malloc_type_malloc(v10 + 1, 0x100004077774924uLL);
            v12 = v11;
            if (v11)
            {
              memcpy(v11, v9, v10 + 1);
            }

            v7[1] = v12;
          }

          *(v7 + 4) = *(v8 + 16);
          *(v7 + 10) = *(v8 + 20);
          ++v5;
          v6 = a1[1];
          v4 += 3;
        }

        while (v5 < v6);
        v13 = v6 - 1;
      }

      else
      {
        v13 = -1;
      }

      *(thread_local + 96) = v13;
      *(thread_local + 97) = 15;
    }
  }

  else
  {

    ERR_clear_error();
  }
}

void err_state_free(void **a1)
{
  if (a1)
  {
    free(a1[1]);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    free(a1[4]);
    a1[3] = 0;
    a1[4] = 0;
    a1[5] = 0;
    free(a1[7]);
    a1[6] = 0;
    a1[7] = 0;
    a1[8] = 0;
    free(a1[10]);
    a1[9] = 0;
    a1[10] = 0;
    a1[11] = 0;
    free(a1[13]);
    a1[12] = 0;
    a1[13] = 0;
    a1[14] = 0;
    free(a1[16]);
    a1[15] = 0;
    a1[16] = 0;
    a1[17] = 0;
    free(a1[19]);
    a1[18] = 0;
    a1[19] = 0;
    a1[20] = 0;
    free(a1[22]);
    a1[21] = 0;
    a1[22] = 0;
    a1[23] = 0;
    free(a1[25]);
    a1[24] = 0;
    a1[25] = 0;
    a1[26] = 0;
    free(a1[28]);
    a1[27] = 0;
    a1[28] = 0;
    a1[29] = 0;
    free(a1[31]);
    a1[30] = 0;
    a1[31] = 0;
    a1[32] = 0;
    free(a1[34]);
    a1[33] = 0;
    a1[34] = 0;
    a1[35] = 0;
    free(a1[37]);
    a1[36] = 0;
    a1[37] = 0;
    a1[38] = 0;
    free(a1[40]);
    a1[39] = 0;
    a1[40] = 0;
    a1[41] = 0;
    free(a1[43]);
    a1[42] = 0;
    a1[43] = 0;
    a1[44] = 0;
    free(a1[46]);
    a1[45] = 0;
    a1[46] = 0;
    a1[47] = 0;
    free(a1[49]);

    free(a1);
  }
}

uint64_t err_string_cmp(_DWORD *a1, _DWORD *a2)
{
  v2 = *a1 >> 15;
  v3 = v2 >= *a2 >> 15;
  v4 = v2 > *a2 >> 15;
  if (v3)
  {
    return v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void EVP_PKEY_free(EVP_PKEY *pkey)
{
  if (pkey)
  {
    v1 = atomic_load(pkey);
    if (v1 != -1)
    {
      while (1)
      {
        if (!v1)
        {
          abort();
        }

        v2 = v1;
        atomic_compare_exchange_strong(&pkey->type, &v2, v1 - 1);
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
        ptr = pkey->pkey.ptr;
        if (ptr)
        {
          v4 = *(ptr + 20);
          if (v4)
          {
            v5 = pkey;
            v4();
            pkey = v5;
            *&v5->references = 0;
            v5->save_type = 0;
          }
        }

        attributes = pkey[-1].attributes;
        p_attributes = &pkey[-1].attributes;
        p_data = &attributes->data;
        if (attributes != -8)
        {
          v9 = p_attributes;
          bzero(p_attributes, p_data);
          p_attributes = v9;
        }

        free(p_attributes);
      }
    }
  }
}

unsigned int *EVP_parse_public_key(unsigned __int8 **a1)
{
  v16 = 0;
  LODWORD(v14) = 0;
  if (!cbs_get_any_asn1_element(a1, &v18, &v14, &v16, 0, 0, 0) || v14 != 536870928 || v19 < v16 || (v18 += v16, v19 -= v16, v14 = 0, LODWORD(v21) = 0, !cbs_get_any_asn1_element(&v18, &v16, &v21, &v14, 0, 0, 0)) || v21 != 536870928 || v17 < v14 || (v16 += v14, v17 -= v14, v21 = 0, v20 = 0, !cbs_get_any_asn1_element(&v18, &v14, &v20, &v21, 0, 0, 0)) || v20 != 3 || v15 < v21 || (v14 += v21, v15 -= v21, v19))
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/evp_asn1.cc", 64);
    return 0;
  }

  v2 = parse_key_type(&v16);
  if (!v2)
  {
    ERR_put_error(6, 0, 128, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/evp_asn1.cc", 69);
    return 0;
  }

  if (!v15 || (v3 = v14, ++v14, --v15, *v3))
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/evp_asn1.cc", 76);
    return 0;
  }

  v4 = v2;
  v5 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (!v5)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  v6 = v5;
  *v5 = 24;
  v5[2] = 1;
  v7 = v5 + 2;
  v6[5] = 0;
  *(v6 + 3) = 0;
  *(v6 + 3) = v4;
  v6[3] = *v4;
  v8 = *(v4 + 3);
  if (v8)
  {
    v9 = v7;
    if (v8(v7, &v16))
    {
      return v9;
    }
  }

  else
  {
    v9 = v7;
    ERR_put_error(6, 0, 128, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/evp_asn1.cc", 89);
  }

  v10 = atomic_load(v9);
  if (v10 == -1)
  {
    return 0;
  }

  while (1)
  {
    if (!v10)
    {
      abort();
    }

    v11 = v10;
    atomic_compare_exchange_strong(v9, &v11, v10 - 1);
    if (v11 == v10)
    {
      break;
    }

    v10 = v11;
    if (v11 == -1)
    {
      return 0;
    }
  }

  if (v10 != 1)
  {
    return 0;
  }

  v12 = *(v6 + 3);
  if (v12)
  {
    v13 = *(v12 + 160);
    if (v13)
    {
      v13(v9);
    }
  }

  free(v6);
  return 0;
}

int *parse_key_type(unsigned __int8 **a1)
{
  v8 = 0;
  v7 = 0;
  if (!cbs_get_any_asn1_element(a1, &v5, &v7, &v8, 0, 0, 0))
  {
    return 0;
  }

  if (v7 != 6)
  {
    return 0;
  }

  v1 = v6 - v8;
  if (v6 < v8)
  {
    return 0;
  }

  v3 = (v5 + v8);
  v5 += v8;
  v6 -= v8;
  if (v1 == byte_2882A5B4D)
  {
    result = &rsa_asn1_meth;
    if (!byte_2882A5B4D)
    {
      return result;
    }

    v4 = &rsa_asn1_meth;
    if (!memcmp(v3, &qword_2882A5B44, v1))
    {
      return v4;
    }
  }

  if (v1 == byte_2882A590D)
  {
    result = &ec_asn1_meth;
    if (!byte_2882A590D)
    {
      return result;
    }

    v4 = &ec_asn1_meth;
    if (!memcmp(v3, &dword_2882A5904, v1))
    {
      return v4;
    }
  }

  if (v1 == byte_2882A57ED)
  {
    result = &dsa_asn1_meth;
    if (!byte_2882A57ED)
    {
      return result;
    }

    v4 = &dsa_asn1_meth;
    if (!memcmp(v3, &dword_2882A57E4, v1))
    {
      return v4;
    }
  }

  if (v1 == byte_2882A5A2D)
  {
    result = &ed25519_asn1_meth;
    if (!byte_2882A5A2D)
    {
      return result;
    }

    v4 = &ed25519_asn1_meth;
    if (!memcmp(v3, &word_2882A5A24, v1))
    {
      return v4;
    }
  }

  if (v1 != byte_2882A5C6D)
  {
    return 0;
  }

  result = &x25519_asn1_meth;
  if (byte_2882A5C6D)
  {
    v4 = &x25519_asn1_meth;
    if (!memcmp(v3, &word_2882A5C64, v1))
    {
      return v4;
    }

    return 0;
  }

  return result;
}

uint64_t EVP_marshal_public_key(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 && (v4 = *(v3 + 32)) != 0)
  {

    return v4();
  }

  else
  {
    ERR_put_error(6, 0, 128, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/evp_asn1.cc", 101);
    return 0;
  }
}

unsigned int *EVP_parse_private_key(unsigned __int8 **a1)
{
  v16 = 0;
  LODWORD(v14) = 0;
  if (!cbs_get_any_asn1_element(a1, &v18, &v14, &v16, 0, 0, 0) || v14 != 536870928 || v19 < v16 || (v13 = 0, v18 += v16, v19 -= v16, !CBS_get_asn1_uint64_with_tag(&v18, &v13, 2)) || v13 || (v14 = 0, LODWORD(v21) = 0, !cbs_get_any_asn1_element(&v18, &v16, &v21, &v14, 0, 0, 0)) || v21 != 536870928 || v17 < v14 || (v16 += v14, v17 -= v14, v21 = 0, v20 = 0, !cbs_get_any_asn1_element(&v18, &v14, &v20, &v21, 0, 0, 0)) || v20 != 4 || v15 < v21)
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/evp_asn1.cc", 117);
    return 0;
  }

  v14 += v21;
  v15 -= v21;
  v2 = parse_key_type(&v16);
  if (!v2)
  {
    ERR_put_error(6, 0, 128, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/evp_asn1.cc", 122);
    return 0;
  }

  v3 = v2;
  v4 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (!v4)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  v5 = v4;
  *v4 = 24;
  v4[2] = 1;
  v6 = v4 + 2;
  v5[5] = 0;
  *(v5 + 3) = 0;
  *(v5 + 3) = v3;
  v5[3] = *v3;
  v7 = *(v3 + 6);
  if (v7)
  {
    v8 = v6;
    if (v7())
    {
      return v8;
    }
  }

  else
  {
    v8 = v6;
    ERR_put_error(6, 0, 128, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/evp_asn1.cc", 137);
  }

  v9 = atomic_load(v8);
  if (v9 == -1)
  {
    return 0;
  }

  while (1)
  {
    if (!v9)
    {
      abort();
    }

    v10 = v9;
    atomic_compare_exchange_strong(v8, &v10, v9 - 1);
    if (v10 == v9)
    {
      break;
    }

    v9 = v10;
    if (v10 == -1)
    {
      return 0;
    }
  }

  if (v9 != 1)
  {
    return 0;
  }

  v11 = *(v5 + 3);
  if (v11)
  {
    v12 = *(v11 + 160);
    if (v12)
    {
      v12(v8);
    }
  }

  free(v5);
  return 0;
}

EVP_PKEY *__cdecl d2i_PrivateKey(int type, EVP_PKEY **a, const unsigned __int8 **pp, uint64_t length)
{
  if (length < 0)
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/evp_asn1.cc", 196);
    return 0;
  }

  v43 = *pp;
  v44 = length;
  v8 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (!v8)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
LABEL_36:
    ERR_clear_error();
    v43 = *pp;
    v44 = length;
    v26 = EVP_parse_private_key(&v43);
    v10 = v26;
    if (!v26)
    {
      return v10;
    }

    if (v26[1] == type)
    {
      goto LABEL_38;
    }

    ERR_put_error(6, 0, 103, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/evp_asn1.cc", 213);
    v30 = atomic_load(v10);
    if (v30 != -1)
    {
      while (1)
      {
        if (!v30)
        {
          goto LABEL_67;
        }

        v31 = v30;
        atomic_compare_exchange_strong(v10, &v31, v30 - 1);
        if (v31 == v30)
        {
          break;
        }

        v30 = v31;
        if (v31 == -1)
        {
          return 0;
        }
      }

      if (v30 == 1)
      {
        v32 = *(v10 + 2);
        if (v32)
        {
          v33 = *(v32 + 160);
          if (v33)
          {
            v33(v10);
            *(v10 + 1) = 0;
            v10[1] = 0;
          }
        }

        v35 = *(v10 - 1);
        v34 = v10 - 2;
        v36 = v35 + 8;
        if (v35 != -8)
        {
          bzero(v34, v36);
        }

        free(v34);
      }
    }

    return 0;
  }

  v9 = v8;
  *v8 = 24;
  *(v8 + 2) = 1;
  v10 = (v8 + 8);
  *(v8 + 20) = 0;
  *(v8 + 12) = 0;
  *(v8 + 7) = 0;
  if (type == 6)
  {
    v11 = RSA_parse_private_key(&v43);
    if (v11)
    {
      v19 = v9[3];
      if (v19)
      {
        v20 = *(v19 + 160);
        if (v20)
        {
          v21 = v11;
          v20(v10);
          v11 = v21;
        }
      }

      v15 = &rsa_asn1_meth;
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  if (type == 116)
  {
    v11 = DSA_parse_private_key(&v43);
    if (v11)
    {
      v16 = v9[3];
      if (v16)
      {
        v17 = *(v16 + 160);
        if (v17)
        {
          v18 = v11;
          v17(v10);
          v11 = v18;
        }
      }

      v15 = &dsa_asn1_meth;
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  if (type != 408)
  {
    ERR_put_error(6, 0, 127, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/evp_asn1.cc", 188);
LABEL_26:
    v22 = atomic_load(v10);
    if (v22 != -1)
    {
      while (1)
      {
        if (!v22)
        {
LABEL_67:
          abort();
        }

        v23 = v22;
        atomic_compare_exchange_strong(v10, &v23, v22 - 1);
        if (v23 == v22)
        {
          break;
        }

        v22 = v23;
        if (v23 == -1)
        {
          goto LABEL_36;
        }
      }

      if (v22 == 1)
      {
        v24 = v9[3];
        if (v24)
        {
          v25 = *(v24 + 160);
          if (v25)
          {
            v25(v10);
          }
        }

        free(v9);
      }
    }

    goto LABEL_36;
  }

  v11 = EC_KEY_parse_private_key(&v43, 0);
  if (!v11)
  {
    goto LABEL_26;
  }

  v12 = v9[3];
  if (v12)
  {
    v13 = *(v12 + 160);
    if (v13)
    {
      v14 = v11;
      v13(v10);
      v11 = v14;
    }
  }

  v15 = &ec_asn1_meth;
LABEL_24:
  v9[2] = v11;
  v9[3] = v15;
  *(v9 + 3) = *v15;
LABEL_38:
  if (a)
  {
    v27 = *a;
    if (*a)
    {
      v28 = atomic_load(v27);
      if (v28 != -1)
      {
        while (1)
        {
          if (!v28)
          {
            goto LABEL_67;
          }

          v29 = v28;
          atomic_compare_exchange_strong(&v27->type, &v29, v28 - 1);
          if (v29 == v28)
          {
            break;
          }

          v28 = v29;
          if (v29 == -1)
          {
            goto LABEL_64;
          }
        }

        if (v28 == 1)
        {
          ptr = v27->pkey.ptr;
          if (ptr)
          {
            v38 = *(ptr + 20);
            if (v38)
            {
              v38(v27);
              *&v27->references = 0;
              v27->save_type = 0;
            }
          }

          attributes = v27[-1].attributes;
          p_attributes = &v27[-1].attributes;
          p_data = &attributes->data;
          if (attributes != -8)
          {
            bzero(p_attributes, p_data);
          }

          free(p_attributes);
        }
      }
    }

LABEL_64:
    *a = v10;
  }

  *pp = v43;
  return v10;
}

int i2d_PUBKEY(EVP_PKEY *a, unsigned __int8 **pp)
{
  if (a)
  {
    v2 = a;
    memset(v14, 0, sizeof(v14));
    v4 = malloc_type_malloc(0x88uLL, 0xB4E622C9uLL);
    if (v4)
    {
      *v4 = 128;
      BYTE8(v14[0]) = 0;
      *&v14[0] = 0;
      *&v14[1] = v4 + 1;
      *(&v14[1] + 8) = xmmword_273BB6040;
      BYTE8(v14[2]) = 1;
      ptr = v2->pkey.ptr;
      if (ptr)
      {
        v6 = *(ptr + 4);
        if (v6)
        {
          if (v6(v14, v2))
          {
            LODWORD(a) = CBB_finish_i2d(v14, pp);
            return a;
          }

          if (BYTE8(v14[0]))
          {
LABEL_15:
            LODWORD(a) = -1;
            return a;
          }

LABEL_10:
          if ((BYTE8(v14[2]) & 1) != 0 && *&v14[1])
          {
            v12 = (*&v14[1] - 8);
            v11 = *(*&v14[1] - 8);
            if (v11 != -8)
            {
              bzero(v12, v11 + 8);
            }

            free(v12);
          }

          goto LABEL_15;
        }
      }

      v7 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/evp_asn1.cc";
      v8 = 6;
      v9 = 128;
      v10 = 101;
    }

    else
    {
      v7 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v8 = 14;
      v9 = 65;
      v10 = 217;
    }

    ERR_put_error(v8, 0, v9, v7, v10);
    goto LABEL_10;
  }

  return a;
}

char *evp_pkey_ctx_new(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x38uLL, 0xB4E622C9uLL);
  if (v6)
  {
    *v6 = 48;
    *(v6 + 1) = a3;
    v7 = v6 + 8;
    *(v6 + 24) = 0u;
    v8 = (v6 + 24);
    *(v6 + 40) = 0u;
    *(v6 + 2) = a2;
    if (a1)
    {
      v9 = atomic_load(a1);
      if (v9 != -1)
      {
        for (i = v9; i != -1; v9 = i)
        {
          atomic_compare_exchange_strong(a1, &i, v9 + 1);
          if (i == v9)
          {
            break;
          }
        }
      }

      v11 = *v8;
      *v8 = a1;
      if (v11)
      {
        v12 = atomic_load(v11);
        if (v12 != -1)
        {
          while (1)
          {
            if (!v12)
            {
LABEL_52:
              abort();
            }

            v13 = v12;
            atomic_compare_exchange_strong(v11, &v13, v12 - 1);
            if (v13 == v12)
            {
              break;
            }

            v12 = v13;
            if (v13 == -1)
            {
              goto LABEL_21;
            }
          }

          if (v12 == 1)
          {
            v14 = *(v11 + 2);
            if (v14)
            {
              v15 = *(v14 + 160);
              if (v15)
              {
                v16 = v6;
                v15(v11);
                v6 = v16;
                *(v11 + 1) = 0;
                v11[1] = 0;
              }
            }

            v17 = v6;
            v19 = *(v11 - 1);
            v18 = v11 - 2;
            v20 = v19 + 8;
            if (v19 != -8)
            {
              bzero(v18, v20);
            }

            free(v18);
            v6 = v17;
          }
        }
      }
    }

LABEL_21:
    v21 = *(a3 + 8);
    if (!v21)
    {
      return v7;
    }

    v22 = v6;
    if (v21(v7) > 0)
    {
      return v7;
    }

    v24 = v22;
    v22[1] = 0;
    v25 = v22[4];
    v22[4] = 0;
    if (v25)
    {
      v26 = atomic_load(v25);
      if (v26 != -1)
      {
        while (1)
        {
          if (!v26)
          {
            goto LABEL_52;
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
            goto LABEL_37;
          }
        }

        if (v26 == 1)
        {
          v28 = *(v25 + 16);
          if (v28)
          {
            v29 = *(v28 + 160);
            if (v29)
            {
              v29(v25);
              *(v25 + 8) = 0;
              *(v25 + 4) = 0;
            }
          }

          v31 = *(v25 - 8);
          v30 = (v25 - 8);
          v32 = v31 + 8;
          if (v31 != -8)
          {
            bzero(v30, v32);
          }

          free(v30);
          v24 = v22;
        }
      }
    }

LABEL_37:
    v33 = *v8;
    *v8 = 0;
    if (v33)
    {
      v34 = atomic_load(v33);
      if (v34 != -1)
      {
        while (1)
        {
          if (!v34)
          {
            goto LABEL_52;
          }

          v35 = v34;
          atomic_compare_exchange_strong(v33, &v35, v34 - 1);
          if (v35 == v34)
          {
            break;
          }

          v34 = v35;
          if (v35 == -1)
          {
            goto LABEL_50;
          }
        }

        if (v34 == 1)
        {
          v36 = *(v33 + 2);
          if (v36)
          {
            v37 = *(v36 + 160);
            if (v37)
            {
              v37(v33);
              *(v33 + 1) = 0;
              v33[1] = 0;
            }
          }

          v39 = *(v33 - 1);
          v38 = v33 - 2;
          v40 = v39 + 8;
          if (v39 != -8)
          {
            bzero(v38, v40);
          }

          free(v38);
          v24 = v22;
        }
      }
    }

LABEL_50:
    free(v24);
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  }

  return 0;
}

void EVP_PKEY_CTX_free(void *a1)
{
  if (!a1)
  {
    return;
  }

  if (*a1)
  {
    v2 = *(*a1 + 24);
    if (v2)
    {
      v2(a1);
    }
  }

  v3 = a1[3];
  a1[3] = 0;
  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = atomic_load(v3);
  if (v4 == -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    if (!v4)
    {
LABEL_37:
      abort();
    }

    v5 = v4;
    atomic_compare_exchange_strong(v3, &v5, v4 - 1);
    if (v5 == v4)
    {
      break;
    }

    v4 = v5;
    if (v5 == -1)
    {
      goto LABEL_13;
    }
  }

  if (v4 == 1)
  {
    v14 = *(v3 + 16);
    if (v14)
    {
      v15 = *(v14 + 160);
      if (v15)
      {
        v15(v3);
        *(v3 + 8) = 0;
        *(v3 + 4) = 0;
      }
    }

    v17 = *(v3 - 8);
    v16 = (v3 - 8);
    v18 = v17 + 8;
    if (v17 != -8)
    {
      bzero(v16, v18);
    }

    free(v16);
    v6 = a1[2];
    a1[2] = 0;
    if (v6)
    {
LABEL_14:
      v7 = atomic_load(v6);
      if (v7 != -1)
      {
        while (1)
        {
          if (!v7)
          {
            goto LABEL_37;
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
            goto LABEL_32;
          }
        }

        if (v7 == 1)
        {
          v9 = *(v6 + 16);
          if (v9)
          {
            v10 = *(v9 + 160);
            if (v10)
            {
              v10(v6);
              *(v6 + 8) = 0;
              *(v6 + 4) = 0;
            }
          }

          v12 = *(v6 - 8);
          v11 = (v6 - 8);
          v13 = v12 + 8;
          if (v12 != -8)
          {
            bzero(v11, v13);
          }

          free(v11);
        }
      }
    }
  }

  else
  {
LABEL_13:
    v6 = a1[2];
    a1[2] = 0;
    if (v6)
    {
      goto LABEL_14;
    }
  }

LABEL_32:
  v20 = *(a1 - 1);
  v19 = (a1 - 1);
  v21 = v20 + 8;
  if (v20 != -8)
  {
    bzero(v19, v21);
  }

  free(v19);
}

char *EVP_PKEY_CTX_dup(uint64_t a1)
{
  if (*a1 && *(*a1 + 16))
  {
    v2 = malloc_type_malloc(0x38uLL, 0xB4E622C9uLL);
    if (v2)
    {
      v3 = v2;
      *v2 = 48;
      *(v2 + 8) = 0u;
      v4 = v2 + 8;
      *(v2 + 24) = 0u;
      *(v2 + 40) = 0u;
      *(v2 + 8) = *a1;
      *(v2 + 10) = *(a1 + 32);
      v5 = *(a1 + 16);
      if (v5)
      {
        v6 = atomic_load(v5);
        if (v6 != -1)
        {
          for (i = v6; i != -1; v6 = i)
          {
            atomic_compare_exchange_strong(v5, &i, v6 + 1);
            if (i == v6)
            {
              break;
            }
          }
        }

        v9 = (v2 + 24);
        v8 = *(v2 + 3);
        *(v2 + 3) = v5;
        if (v8)
        {
          v10 = atomic_load(v8);
          if (v10 != -1)
          {
            while (1)
            {
              if (!v10)
              {
LABEL_75:
                abort();
              }

              v11 = v10;
              atomic_compare_exchange_strong(v8, &v11, v10 - 1);
              if (v11 == v10)
              {
                break;
              }

              v10 = v11;
              if (v11 == -1)
              {
                goto LABEL_24;
              }
            }

            if (v10 == 1)
            {
              v12 = *(v8 + 16);
              if (v12)
              {
                v13 = *(v12 + 160);
                if (v13)
                {
                  v13(v8);
                  *(v8 + 8) = 0;
                  *(v8 + 4) = 0;
                }
              }

              v15 = *(v8 - 8);
              v14 = (v8 - 8);
              v16 = v15 + 8;
              if (v15 != -8)
              {
                bzero(v14, v16);
              }

              free(v14);
            }
          }
        }
      }

      else
      {
        v9 = (v2 + 24);
      }

LABEL_24:
      v17 = *(a1 + 24);
      if (v17)
      {
        v18 = atomic_load(v17);
        if (v18 != -1)
        {
          for (j = v18; j != -1; v18 = j)
          {
            atomic_compare_exchange_strong(v17, &j, v18 + 1);
            if (j == v18)
            {
              break;
            }
          }
        }
      }

      v20 = v3[4];
      v3[4] = v17;
      if (v20)
      {
        v21 = atomic_load(v20);
        if (v21 != -1)
        {
          while (1)
          {
            if (!v21)
            {
              goto LABEL_75;
            }

            v22 = v21;
            atomic_compare_exchange_strong(v20, &v22, v21 - 1);
            if (v22 == v21)
            {
              break;
            }

            v21 = v22;
            if (v22 == -1)
            {
              goto LABEL_42;
            }
          }

          if (v21 == 1)
          {
            v23 = *(v20 + 16);
            if (v23)
            {
              v24 = *(v23 + 160);
              if (v24)
              {
                v24(v20);
                *(v20 + 8) = 0;
                *(v20 + 4) = 0;
              }
            }

            v26 = *(v20 - 8);
            v25 = (v20 - 8);
            v27 = v26 + 8;
            if (v26 != -8)
            {
              bzero(v25, v27);
            }

            free(v25);
          }
        }
      }

LABEL_42:
      if ((*(*a1 + 16))(v4, a1) > 0)
      {
        return v4;
      }

      *v4 = 0;
      ERR_put_error(6, 0, 6, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/evp_ctx.cc", 115);
      if (*v4)
      {
        v29 = *(*v4 + 24);
        if (v29)
        {
          v29(v4);
        }
      }

      v30 = v3[4];
      v3[4] = 0;
      if (v30)
      {
        v31 = atomic_load(v30);
        if (v31 != -1)
        {
          while (1)
          {
            if (!v31)
            {
              goto LABEL_75;
            }

            v32 = v31;
            atomic_compare_exchange_strong(v30, &v32, v31 - 1);
            if (v32 == v31)
            {
              break;
            }

            v31 = v32;
            if (v32 == -1)
            {
              goto LABEL_60;
            }
          }

          if (v31 == 1)
          {
            v33 = *(v30 + 16);
            if (v33)
            {
              v34 = *(v33 + 160);
              if (v34)
              {
                v34(v30);
                *(v30 + 8) = 0;
                *(v30 + 4) = 0;
              }
            }

            v36 = *(v30 - 8);
            v35 = (v30 - 8);
            v37 = v36 + 8;
            if (v36 != -8)
            {
              bzero(v35, v37);
            }

            free(v35);
          }
        }
      }

LABEL_60:
      v38 = *v9;
      *v9 = 0;
      if (v38)
      {
        v39 = atomic_load(v38);
        if (v39 != -1)
        {
          while (1)
          {
            if (!v39)
            {
              goto LABEL_75;
            }

            v40 = v39;
            atomic_compare_exchange_strong(v38, &v40, v39 - 1);
            if (v40 == v39)
            {
              break;
            }

            v39 = v40;
            if (v40 == -1)
            {
              goto LABEL_73;
            }
          }

          if (v39 == 1)
          {
            v41 = *(v38 + 16);
            if (v41)
            {
              v42 = *(v41 + 160);
              if (v42)
              {
                v42(v38);
                *(v38 + 8) = 0;
                *(v38 + 4) = 0;
              }
            }

            v44 = *(v38 - 8);
            v43 = (v38 - 8);
            v45 = v44 + 8;
            if (v44 != -8)
            {
              bzero(v43, v45);
            }

            free(v43);
          }
        }
      }

LABEL_73:
      free(v3);
    }

    else
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    }
  }

  return 0;
}

uint64_t EVP_PKEY_CTX_ctrl(uint64_t *a1, int a2, int a3)
{
  if (a1 && (v3 = *a1) != 0 && (v4 = *(v3 + 112)) != 0)
  {
    if (a2 == -1 || *v3 == a2)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        if ((v5 & a3) != 0)
        {

          return v4();
        }

        else
        {
          ERR_put_error(6, 0, 114, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/evp_ctx.cc", 141);
          return 0;
        }
      }

      else
      {
        ERR_put_error(6, 0, 123, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/evp_ctx.cc", 136);
        return 0;
      }
    }

    else
    {
      ERR_put_error(6, 0, 125, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/evp_ctx.cc", 131);
      return 0;
    }
  }

  else
  {
    ERR_put_error(6, 0, 101, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/evp_ctx.cc", 127);
    return 0;
  }
}

int CRYPTO_set_ex_data(CRYPTO_EX_DATA *ad, int idx, void *val)
{
  if (idx < 0)
  {
    abort();
  }

  sk = ad->sk;
  if (sk || (v6 = idx, sk = OPENSSL_sk_new_null(), idx = v6, (ad->sk = sk) != 0))
  {
    v7 = idx;
    if (*&sk->num > idx)
    {
      goto LABEL_5;
    }

    v8 = idx - *&sk->num + 1;
    do
    {
      v9 = ad->sk;
      v10 = *&ad->sk->num;
      if (v10 >= 0x7FFFFFFF)
      {
        ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/stack/stack.cc", 139);
LABEL_23:
        LODWORD(sk) = 0;
        return sk;
      }

      comp = v9->comp;
      if (comp > v10 + 1)
      {
        v9->data[v10] = 0;
        v9->sorted = 0;
        *&v9->num = v10 + 1;
      }

      else
      {
        sk = OPENSSL_realloc(v9->data, 16 * comp);
        if (!sk)
        {
          return sk;
        }

        v9->data = sk;
        v9->comp = (2 * comp);
        v12 = *&v9->num;
        v13 = *&v9->num - v10;
        if (*&v9->num <= v10)
        {
          *(&sk->num + v12) = 0;
          v9->sorted = 0;
          *&v9->num = v12 + 1;
          if (v12 == -1)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (8 * v13)
          {
            memmove(&sk->data + v10, sk + 8 * v10, 8 * v13);
            v12 = *&v9->num;
            sk = v9->data;
          }

          *(&sk->num + v10) = 0;
          v9->sorted = 0;
          *&v9->num = v12 + 1;
          if (v12 == -1)
          {
            goto LABEL_23;
          }
        }
      }

      --v8;
    }

    while (v8);
    sk = ad->sk;
    if (ad->sk)
    {
LABEL_5:
      if (*&sk->num > v7)
      {
        sk->data[v7] = val;
      }
    }

    LODWORD(sk) = 1;
  }

  return sk;
}

void CRYPTO_free_ex_data(int class_index, void *obj, CRYPTO_EX_DATA *ad)
{
  if (ad->sk)
  {
    v4 = *&class_index;
    v5 = atomic_load((*&class_index + 216));
    if (v5)
    {
      v7 = 0;
      v8 = *&class_index + 200;
      do
      {
        v10 = *v8;
        v11 = *(*v8 + 16);
        if (v11)
        {
          v9 = 0;
          v12 = v7 + *(v4 + 220);
          sk = ad->sk;
          if (ad->sk && (v12 & 0x80000000) == 0)
          {
            if (*&sk->num > v12)
            {
              v9 = sk->data[v12];
            }

            else
            {
              v9 = 0;
            }
          }

          v11(obj, v9, ad);
          v10 = *v8;
        }

        v8 = v10 + 24;
        ++v7;
      }

      while (v5 != v7);
    }

    v14 = ad->sk;
    if (ad->sk)
    {
      data = v14->data;
      if (data)
      {
        v17 = *(data - 1);
        v16 = data - 1;
        v18 = v17 + 8;
        if (v17 != -8)
        {
          bzero(v16, v18);
        }

        free(v16);
      }

      comp = v14[-1].comp;
      p_comp = &v14[-1].comp;
      v21 = comp + 8;
      if (comp != -8)
      {
        bzero(p_comp, v21);
      }

      free(p_comp);
    }

    ad->sk = 0;
  }
}

uint64_t bssl::ssl_parse_client_hello_with_trailing_data(_BYTE **a1, uint64_t *a2, uint64_t a3)
{
  *(a3 + 120) = 0;
  *(a3 + 104) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 8) = 0u;
  *a3 = a1;
  v3 = a2[1];
  v4 = v3 - 2;
  if (v3 < 2 || (v5 = *a2, v6 = *a2 + 2, *a2 = v6, a2[1] = v4, *(a3 + 24) = bswap32(*v5) >> 16, v4 < 0x20) || (*a2 = (v5 + 17), a2[1] = v3 - 34, v3 == 34) || (v7 = v5 + 35, *a2 = v5 + 35, a2[1] = v3 - 35, v8 = *(v5 + 34), v9 = v3 - 35 - v8, v3 - 35 < v8) || (v10 = &v7[v8], *a2 = &v7[v8], a2[1] = v9, v8 >= 0x21))
  {
    ERR_put_error(16, 0, 131, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 122);
    return 0;
  }

  *(a3 + 32) = v6;
  *(a3 + 40) = 32;
  *(a3 + 48) = v7;
  *(a3 + 56) = v8;
  if (**a1)
  {
    if (v3 - 35 == v8 || (v12 = (v10 + 1), v13 = v9 - 1, *a2 = (v10 + 1), a2[1] = v9 - 1, v14 = *v10, v15 = v13 >= v14, v16 = v13 - v14, !v15))
    {
      ERR_put_error(16, 0, 131, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 134);
      return 0;
    }

    *a2 = &v12[v14];
    a2[1] = v16;
    *(a3 + 64) = v12;
    *(a3 + 72) = v14;
  }

  else
  {
    *(a3 + 64) = 0;
    *(a3 + 72) = 0;
    v16 = a2[1];
  }

  v17 = v16 - 2;
  if (v16 < 2 || (v18 = *a2, v19 = *a2 + 2, *a2 = v19, a2[1] = v17, v20 = v18[1], v21 = v20 | (*v18 << 8), v22 = (v17 - v21), v17 < v21) || (v23 = (v19 + v21), *a2 = v19 + v21, a2[1] = v22, v21 < 2) || (v20 & 1) != 0 || v17 == v21 || (v24 = v23 + 1, v25 = v22 - 1, *a2 = (v23 + 1), a2[1] = v22 - 1, v26 = *v23, v27 = v22 - v26 - 1, v22 - 1 < v26) || (v28 = &v24[v26], *a2 = &v24[v26], a2[1] = v27, !v26))
  {
    ERR_put_error(16, 0, 131, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 149);
    return 0;
  }

  else
  {
    *(a3 + 80) = v19;
    *(a3 + 88) = v21;
    *(a3 + 96) = v24;
    *(a3 + 104) = v26;
    if (v25 == v26)
    {
      *(a3 + 112) = 0;
      *(a3 + 120) = 0;
      *(a3 + 8) = v5;
      *(a3 + 16) = v3;
      return 1;
    }

    else if (v27 != 1 && (v29 = v27 - 2, *a2 = (v28 + 2), a2[1] = v29, v30 = __rev16(*v28), v15 = v29 >= v30, v31 = (v29 - v30), v15) && (*a2 = v30 + (v28 + 2), a2[1] = v31, v39[0] = (v28 + 2), v39[1] = v30, v34 = v5, v36 = (v28 + 2), v37 = v3, v33 = v30, (bssl::tls1_check_duplicate_extensions(v39) & 1) != 0))
    {
      *(a3 + 112) = v36;
      *(a3 + 120) = v33;
      v32 = v37 - a2[1];
      *(a3 + 8) = v34;
      *(a3 + 16) = v32;
      return 1;
    }

    else
    {
      ERR_put_error(16, 0, 131, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 168);
      return 0;
    }
  }
}

uint64_t bssl::tls1_check_duplicate_extensions(unsigned __int16 **a1)
{
  v1 = 0;
  v2 = *a1;
  v3 = a1[1];
  v4 = 8;
  if (!v3)
  {
LABEL_7:
    if (!v1)
    {
      return 1;
    }

    if ((v1 & 0x8000000000000000) != 0)
    {
      v19 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/../crypto/mem_internal.h";
      v20 = 69;
      v21 = 213;
    }

    else
    {
      if (v1 <= 0x7FFFFFFFFFFFFFFBLL)
      {
        v9 = malloc_type_malloc(v4, 0xB4E622C9uLL);
        if (v9)
        {
          v10 = 0;
          v11 = v1 - 2;
          *v9 = v4 - 8;
          v12 = *a1;
          v13 = a1[1];
          do
          {
            if (v13 < 2 || (*(v9 + v10 + 4) = bswap32(*v12) >> 16, (v13 & 0xFFFFFFFFFFFFFFFELL) == 2) || (v14 = v13 - 4, v15 = __rev16(v12[1]), v7 = v14 >= v15, v13 = v14 - v15, !v7))
            {
              v17 = 0;
              goto LABEL_25;
            }

            v12 = (v12 + v15 + 4);
            ++v10;
          }

          while (v1 != v10);
          v16 = v9;
          std::__sort<std::__less<unsigned short,unsigned short> &,unsigned short *>();
          if (v1 == 1)
          {
            v17 = 1;
            v9 = v16;
          }

          else
          {
            v9 = v16;
            v22 = v16 + 5;
            do
            {
              v23 = *(v22 - 1);
              v24 = *v22;
              v7 = v11-- != 0;
              v25 = v7;
              v17 = v23 != v24;
              if (v23 == v24)
              {
                break;
              }

              ++v22;
            }

            while ((v25 & 1) != 0);
          }

LABEL_25:
          free(v9);
          return v17;
        }
      }

      v19 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v20 = 65;
      v21 = 217;
    }

    ERR_put_error(14, 0, v20, v19, v21);
    return 0;
  }

  while (v3 != 1)
  {
    if ((v3 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      break;
    }

    v5 = v3 - 4;
    v6 = __rev16(v2[1]);
    v7 = v5 >= v6;
    v3 = v5 - v6;
    if (!v7)
    {
      break;
    }

    v2 = (v2 + v6 + 4);
    ++v1;
    v4 += 2;
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  return 0;
}

uint64_t bssl::ssl_client_hello_get_extension(uint64_t a1, unsigned __int16 **a2, int a3)
{
  v3 = *(a1 + 120);
  if (v3)
  {
    v4 = *(a1 + 112);
    do
    {
      if (v3 < 2)
      {
        break;
      }

      if ((v3 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        break;
      }

      v5 = v3 - 4;
      v6 = __rev16(v4[1]);
      if (v5 < v6)
      {
        break;
      }

      v8 = *v4;
      v7 = v4 + 2;
      if (__rev16(v8) == a3)
      {
        *a2 = v7;
        a2[1] = v6;
        return 1;
      }

      v4 = (v7 + v6);
      v3 = v5 - v6;
    }

    while (v3);
  }

  return 0;
}

BOOL bssl::tls1_check_group_id(void *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 == 25497 || a2 == 4588)
  {
    v2 = *(*(*a1 + 48) + 208);
    if (v2 - 769 >= 4)
    {
      if (v2 != 65276)
      {
        return 0;
      }
    }

    else if (v2 < 0x304)
    {
      return 0;
    }
  }

  v4 = a1[1];
  v5 = *(v4 + 136);
  if (v5)
  {
    v6 = *(v4 + 128);
  }

  else
  {
    v6 = &bssl::kDefaultGroups;
    v5 = 3;
  }

  v7 = 2 * v5 - 2;
  do
  {
    v8 = *v6++;
    result = v8 == a2;
    v9 = v8 == a2 || v7 == 0;
    v7 -= 2;
  }

  while (!v9);
  return result;
}

BOOL bssl::tls12_add_verify_sigalgs(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 232);
  if (v4)
  {
    v5 = *(v3 + 224);
  }

  else
  {
    v5 = &bssl::kVerifySignatureAlgorithms;
    v4 = 9;
  }

  v6 = 2 * v4;
  do
  {
    v7 = *v5;
    v10 = 0;
    v8 = CBB_add_space(a2, &v10, 2);
    if (!v8)
    {
      break;
    }

    v10[1] = v7;
    *v10 = HIBYTE(v7);
    ++v5;
    v6 -= 2;
  }

  while (v6);
  return v8 != 0;
}

uint64_t bssl::tls12_check_peer_sigalg(uint64_t a1, _BYTE *a2, evp_pkey_st *a3, ssl_st *a4)
{
  v5 = *(a1 + 8);
  v6 = *(v5 + 232);
  if (v6)
  {
    v7 = *(v5 + 224);
    v8 = 2 * v6;
  }

  else
  {
    v7 = &bssl::kVerifySignatureAlgorithms;
    v8 = 18;
  }

  v9 = v8;
  v10 = v7;
  while (*v10 != a3)
  {
    ++v10;
    v9 -= 2;
    if (!v9)
    {
      v10 = &v7[v8 / 2];
      break;
    }
  }

  if (v10 - v7 == v8 || (v11 = 1, bssl::ssl_pkey_supports_algorithm(*a1, a4, a3, 1), (v12 & 1) == 0))
  {
    ERR_put_error(16, 0, 245, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 343);
    v11 = 0;
    *a2 = 47;
  }

  return v11;
}

uint64_t bssl::ssl_add_flags_extension(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = a2;
  v7[0] = 0;
  result = CBB_add_space(a1, v7, 2);
  if (result)
  {
    *(v7[0] + 1) = 62;
    *v7[0] = 0;
    result = CBB_add_u16_length_prefixed(a1, v7);
    if (result)
    {
      result = CBB_add_u8_length_prefixed(v7, v6);
      if (result)
      {
        while (1)
        {
          v8 = 0;
          result = CBB_add_space(v6, &v8, 1);
          if (!result)
          {
            break;
          }

          *v8 = v2;
          v5 = v2 >= 0x100;
          v2 >>= 8;
          if (!v5)
          {
            return CBB_flush(a1) != 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ssl_parse_flags_extension_request(unsigned __int8 **a1, _DWORD *a2, _BYTE *a3)
{
  v4 = a1[1];
  if (v4 && ((v5 = *a1 + 1, v6 = **a1, v7 = (v4 - 1), (v4 - 1) >= v6) ? (v8 = v6 == 0) : (v8 = 1), !v8 ? (v9 = v7 == v6) : (v9 = 0), v9))
  {
    if (v4[*a1 - 1])
    {
      __dst = 0;
      if (v7 >= 4)
      {
        v11 = 4;
      }

      else
      {
        v11 = (v4 - 1);
      }

      memcpy(&__dst, v5, v11);
      *a2 = __dst;
      return 1;
    }

    else
    {
      ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 390);
      result = 0;
      *a3 = 47;
    }
  }

  else
  {
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 383);
    result = 0;
    *a3 = 50;
  }

  return result;
}

uint64_t bssl::ssl_is_alpn_protocol_allowed(void *a1, void *__s2, size_t __n)
{
  v3 = a1[1];
  v4 = *(v3 + 160);
  if (v4)
  {
    if ((*(*(*a1 + 104) + 792) & 0x80) != 0)
    {
      return 1;
    }

    v7 = *(v3 + 152);
    do
    {
      v10 = *v7;
      v8 = v7 + 1;
      v9 = v10;
      v11 = v4 - 1 >= v10;
      v4 = v4 - 1 - v10;
      if (!v11)
      {
        break;
      }

      if (__n == v9 && !memcmp(v8, __s2, __n))
      {
        return 1;
      }

      v7 = &v8[v9];
    }

    while (v4);
  }

  return 0;
}

uint64_t bssl::ssl_negotiate_alpn(_DWORD *a1, _BYTE *a2, uint64_t a3)
{
  v4 = *a1;
  if (*(*(*a1 + 104) + 624) && (v5 = *(a3 + 120)) != 0)
  {
    v6 = *(a3 + 112);
    while (1)
    {
      if (v5 < 2)
      {
        goto LABEL_9;
      }

      if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        goto LABEL_9;
      }

      v7 = v5 - 4;
      v8 = __rev16(v6[1]);
      if (v7 < v8)
      {
        goto LABEL_9;
      }

      if (__rev16(*v6) == 16)
      {
        break;
      }

      v6 = (v6 + v8 + 4);
      v5 = v7 - v8;
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    a1[404] &= ~0x8000u;
    v10 = v8 - 2;
    if (v8 < 2 || ((v11 = __rev16(v6[2]), v10 >= v11) ? (v12 = v10 == v11) : (v12 = 0), v12 ? (v13 = v11 == 0) : (v13 = 1), v13))
    {
LABEL_21:
      ERR_put_error(16, 0, 190, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 1493);
      result = 0;
      *a2 = 50;
      return result;
    }

    v14 = v6 + 3;
    v15 = v10;
    do
    {
      v16 = v15 - 1;
      v17 = *v14;
      if (*v14)
      {
        v18 = v16 >= v17;
      }

      else
      {
        v18 = 0;
      }

      if (!v18)
      {
        goto LABEL_21;
      }

      v14 += v17 + 1;
      v15 = v16 - v17;
    }

    while (v15);
    v23 = 0;
    v22 = 0;
    v19 = (*(v4[13] + 624))(v4, &v23, &v22);
    if ((v19 & 0xFFFFFFFD) == 1)
    {
      v20 = 2;
    }

    else
    {
      v20 = v19;
    }

    if (v4[19])
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    result = 1;
    if (v21 > 1)
    {
      if (v21 != 2)
      {
        if (v21 == 3)
        {
          return result;
        }

        goto LABEL_40;
      }

      *a2 = 120;
      ERR_put_error(16, 0, 307, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 1528);
      return 0;
    }

    else
    {
      if (v21)
      {
        if (v21 == 1)
        {
          return result;
        }

LABEL_40:
        *a2 = 80;
        ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 1533);
        return 0;
      }

      if (v22)
      {
        if (bssl::Array<unsigned char>::CopyFrom(v4[6] + 488, v23, v22))
        {
          return 1;
        }
      }

      else
      {
        ERR_put_error(16, 0, 259, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 1514);
      }

      result = 0;
      *a2 = 80;
    }
  }

  else
  {
LABEL_9:
    if (!v4[19])
    {
      return 1;
    }

    ERR_put_error(16, 0, 307, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 1478);
    result = 0;
    *a2 = 120;
  }

  return result;
}

uint64_t bssl::Array<unsigned char>::CopyFrom(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v7 = *result;
  v6 = *(result + 8);
  if (v6 && v6 - 1 >= -v7)
  {
    __break(1u);
  }

  else
  {
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

    *v5 = 0;
    v5[1] = 0;
    if (!a3)
    {
      return 1;
    }

    if (a3 <= 0xFFFFFFFFFFFFFFF7)
    {
      v11 = malloc_type_malloc(a3 + 8, 0xB4E622C9uLL);
      if (v11)
      {
        *v11 = a3;
        v12 = v11 + 1;
        *v5 = v11 + 1;
        v5[1] = a3;
        if (a3 < 8 || v11 - a2 + 8 < 0x20)
        {
          v13 = a2;
          goto LABEL_13;
        }

        if (a3 >= 0x20)
        {
          v15 = a3 & 0xFFFFFFFFFFFFFFE0;
          v16 = (a2 + 16);
          v17 = v11 + 3;
          v18 = a3 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v19 = *v16;
            *(v17 - 1) = *(v16 - 1);
            *v17 = v19;
            v16 += 2;
            v17 += 2;
            v18 -= 32;
          }

          while (v18);
          if (a3 == v15)
          {
            return 1;
          }

          if ((a3 & 0x18) == 0)
          {
            v13 = (a2 + v15);
            v12 += v15;
            do
            {
LABEL_13:
              v14 = *v13++;
              *v12++ = v14;
            }

            while (v13 != (a2 + a3));
            return 1;
          }
        }

        else
        {
          v15 = 0;
        }

        v12 += a3 & 0xFFFFFFFFFFFFFFF8;
        v13 = (a2 + (a3 & 0xFFFFFFFFFFFFFFF8));
        v20 = (a2 + v15);
        v21 = (v11 + v15 + 8);
        v22 = v15 - (a3 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v23 = *v20++;
          *v21++ = v23;
          v22 += 8;
        }

        while (v22);
        if (a3 == (a3 & 0xFFFFFFFFFFFFFFF8))
        {
          return 1;
        }

        goto LABEL_13;
      }
    }

    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    result = 0;
    *v5 = 0;
  }

  return result;
}

uint64_t bssl::ssl_ext_pre_shared_key_parse_serverhello(uint64_t a1, _BYTE *a2, unsigned __int16 **a3)
{
  v4 = a3[1];
  if (v4 < 2 || (v5 = *a3, v6 = v4 - 2, ++*a3, (a3[1] = v6) != 0))
  {
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 1944);
    result = 0;
    *a2 = 50;
  }

  else if (__rev16(*v5))
  {
    ERR_put_error(16, 0, 195, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 1951);
    result = 0;
    *a2 = 115;
  }

  else
  {
    return 1;
  }

  return result;
}

uint64_t bssl::ssl_ext_pre_shared_key_parse_clienthello(uint64_t a1, unsigned __int16 **a2, void *a3, _DWORD *a4, _BYTE *a5, uint64_t a6, unint64_t *a7)
{
  v8 = *a7;
  v9 = a7[1];
  if (*a7 + v9 != *(a6 + 112) + *(a6 + 120))
  {
    v10 = 267;
    v11 = 1967;
LABEL_3:
    ERR_put_error(16, 0, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", v11);
    result = 0;
    *a5 = 47;
    return result;
  }

  v13 = v9 >= 2;
  v14 = v9 - 2;
  if (v13 && (*a7 = (v8 + 1), a7[1] = v14, v15 = __rev16(*v8), v13 = v14 >= v15, v16 = v14 - v15, v13) && (*a7 = v8 + v15 + 2, a7[1] = v16, v17 = v15 - 2, v15 >= 2) && (v18 = __rev16(v8[1]), v13 = v17 >= v18, v19 = v17 - v18, v13) && (v20 = v8 + 2, *a2 = v20, a2[1] = v18, v21 = v19 - 4, v19 >= 4) && (v22 = v20 + v18, *a4 = bswap32(*(v20 + v18)), v23 = a7[1], v24 = v23 - 2, v23 >= 2) && (v25 = *a7, v26 = (*a7 + 2), *a7 = v26, a7[1] = v24, v27 = __rev16(*v25), v24 >= v27) && (*a7 = &v26[v27], a7[1] = v24 - v27, v27) && v24 == v27)
  {
    *a3 = v26;
    a3[1] = v27;
    v29 = 1;
    if (!v21)
    {
      goto LABEL_27;
    }

    do
    {
      v13 = v21 >= 2;
      v30 = v21 - 2;
      if (!v13 || (v31 = __rev16(*(v22 + 2)), v13 = v30 >= v31, v32 = v30 - v31, !v13) || v32 <= 3)
      {
        v28 = 1994;
        goto LABEL_15;
      }

      v22 += v31 + 6;
      ++v29;
      v21 = v32 - 4;
    }

    while (v21);
    do
    {
LABEL_27:
      v33 = v27 - 1;
      v34 = *v26;
      v13 = v33 >= v34;
      v27 = v33 - v34;
      if (!v13)
      {
        v28 = 2008;
        goto LABEL_15;
      }

      v26 += v34 + 1;
      --v29;
    }

    while (v27);
    if (v29)
    {
      v10 = 271;
      v11 = 2017;
      goto LABEL_3;
    }

    return 1;
  }

  else
  {
    v28 = 1980;
LABEL_15:
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", v28);
    result = 0;
    *a5 = 50;
  }

  return result;
}

uint64_t bssl::ssl_ext_pre_shared_key_add_serverhello(uint64_t a1, uint64_t *a2)
{
  if ((*(*(*a1 + 48) + 220) & 0x20) == 0)
  {
    return 1;
  }

  v7[3] = v2;
  v7[4] = v3;
  v6[0] = 0;
  result = CBB_add_space(a2, v6, 2);
  if (result)
  {
    *(v6[0] + 1) = 41;
    *v6[0] = 0;
    result = CBB_add_u16_length_prefixed(a2, v6);
    if (result)
    {
      v7[0] = 0;
      result = CBB_add_space(v6, v7, 2);
      if (result)
      {
        *(v7[0] + 1) = 0;
        *v7[0] = 0;
        return CBB_flush(a2) != 0;
      }
    }
  }

  return result;
}

void bssl::ssl_setup_key_shares(bssl *this, unint64_t a2)
{
  v4 = *this;
  v5 = *(this + 49);
  *(this + 49) = 0;
  if (v5)
  {
    (**v5)(v5);
    v7 = *(v5 - 1);
    v6 = v5 - 1;
    v8 = v7 + 8;
    if (v7 != -8)
    {
      bzero(v6, v8);
    }

    free(v6);
  }

  v9 = *(this + 50);
  *(this + 50) = 0;
  if (v9)
  {
    (**v9)(v9);
    v11 = *(v9 - 1);
    v10 = v9 - 1;
    v12 = v11 + 8;
    if (v11 != -8)
    {
      bzero(v10, v12);
    }

    free(v10);
  }

  v13 = *(this + 77);
  v14 = *(this + 78);
  if (v14 && v14 - 1 >= -v13)
  {
    __break(1u);
    return;
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

  *(this + 77) = 0;
  *(this + 78) = 0;
  if (*(this + 15) >= 0x304u && !*(this + 212))
  {
    memset(v41, 0, sizeof(v41));
    v18 = malloc_type_malloc(0x48uLL, 0xB4E622C9uLL);
    if (v18)
    {
      *v18 = 64;
      BYTE8(v41[0]) = 0;
      *&v41[0] = 0;
      *&v41[1] = v18 + 1;
      *(&v41[1] + 8) = xmmword_273B8F050;
      BYTE8(v41[2]) = 1;
      if (a2)
      {
LABEL_20:
        v19 = 0;
LABEL_21:
        bssl::SSLKeyShare::Create(a2, v40);
        v20 = v40[0];
        v21 = *(this + 49);
        *(this + 49) = v40[0];
        if (v21)
        {
          (**v21)(v21);
          v23 = *(v21 - 1);
          v22 = v21 - 1;
          v24 = v23 + 8;
          if (v23 != -8)
          {
            bzero(v22, v24);
          }

          free(v22);
          v20 = *(this + 49);
        }

        if (v20)
        {
          v40[0] = 0;
          if (CBB_add_space(v41, v40, 2))
          {
            *(v40[0] + 1) = a2;
            *v40[0] = BYTE1(a2);
            if (CBB_add_u16_length_prefixed(v41, v40))
            {
              if ((*(**(this + 49) + 24))(*(this + 49), v40))
              {
                if (!v19 || (bssl::SSLKeyShare::Create(v19, &v39), std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::operator=[abi:sn200100](this + 50, &v39), std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::~unique_ptr[abi:sn200100](&v39), *(this + 50)) && CBB_add_u16(v41, v19) && CBB_add_u16_length_prefixed(v41, v40) && (*(**(this + 50) + 24))(*(this + 50), v40))
                {
                  bssl::CBBFinishArray(v41, this + 77);
                }
              }
            }
          }
        }

        goto LABEL_36;
      }

      if ((*(*(v4 + 104) + 792) & 0x20) == 0)
      {
        v27 = *(this + 1);
        v28 = *(v27 + 136);
        if (v28)
        {
          goto LABEL_44;
        }

        goto LABEL_50;
      }

      v30 = *(this + 1663);
      v40[0] = 0;
      if (CBB_add_space(v41, v40, 2))
      {
        *(v40[0] + 1) = v30 & 0xF0 | 0xA;
        *v40[0] = v30 & 0xF0 | 0xA;
        if (CBB_add_u16(v41, 1))
        {
          v40[0] = 0;
          if (CBB_add_space(v41, v40, 1))
          {
            *v40[0] = 0;
            v27 = *(this + 1);
            v28 = *(v27 + 136);
            if (v28)
            {
LABEL_44:
              v29 = *(v27 + 128);
              a2 = *v29;
              if (v28 == 1)
              {
                goto LABEL_20;
              }

LABEL_51:
              v32 = a2 == 25497 || a2 == 4588;
              v33 = (v29 + 1);
              v34 = 2;
              do
              {
                v36 = *v33++;
                v35 = v36;
                v38 = v36 == 25497 || v35 == 4588;
                if (v32 != v38)
                {
                  v19 = v35;
                }

                else
                {
                  v19 = 0;
                }

                if (v34 >= v28)
                {
                  break;
                }

                ++v34;
              }

              while (!v19);
              goto LABEL_21;
            }

LABEL_50:
            v29 = &bssl::kDefaultGroups;
            a2 = 29;
            v28 = 3;
            goto LABEL_51;
          }
        }
      }
    }

    else
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    }

LABEL_36:
    if (!BYTE8(v41[0]) && (BYTE8(v41[2]) & 1) != 0 && *&v41[1])
    {
      v26 = (*&v41[1] - 8);
      v25 = *(*&v41[1] - 8);
      if (v25 != -8)
      {
        bzero(v26, v25 + 8);
      }

      free(v26);
    }
  }
}

void bssl::Array<unsigned char>::Reset(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 && v2 - 1 >= -v3)
  {
    __break(1u);
  }

  else
  {
    if (v3)
    {
      v5 = *(v3 - 8);
      v4 = (v3 - 8);
      v6 = v5 + 8;
      if (v5 != -8)
      {
        bzero(v4, v6);
      }

      free(v4);
    }

    *a1 = 0;
    a1[1] = 0;
  }
}

void (****std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::operator=[abi:sn200100](void (****result)(void), void *a2))(void)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *result;
  *result = v2;
  if (v3)
  {
    v4 = result;
    (**v3)(v3);
    v6 = *(v3 - 1);
    v5 = v3 - 1;
    v7 = v6 + 8;
    if (v6 != -8)
    {
      bzero(v5, v7);
    }

    free(v5);
    return v4;
  }

  return result;
}

uint64_t bssl::ssl_ext_key_share_parse_serverhello(void *a1, uint64_t a2, char *a3, unsigned __int16 **a4)
{
  v5 = a1[49];
  if (!v5)
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 2298);
    goto LABEL_22;
  }

  v6 = a4[1];
  v7 = v6 - 2;
  if (v6 < 2 || (v8 = *a4, ++*a4, a4[1] = v7, v7 < 2) || (v9 = *v8, v10 = v8 + 2, v11 = v6 - 4, *a4 = v8 + 2, a4[1] = (v6 - 4), v12 = __rev16(v8[1]), v11 < v12) || (*a4 = (v10 + v12), a4[1] = (v11 - v12), v11 != v12))
  {
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 2308);
    result = 0;
    v27 = 50;
LABEL_23:
    *a3 = v27;
    return result;
  }

  v15 = bswap32(v9) >> 16;
  if ((*(*v5 + 16))(v5) != v15)
  {
    v16 = a1[50];
    if (!v16 || (*(*v16 + 16))(v16) != v15)
    {
      *a3 = 47;
      ERR_put_error(16, 0, 243, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 2317);
      return 0;
    }

    v5 = a1[50];
  }

  if (((*(*v5 + 40))(v5, a2, a3, v10, v11) & 1) == 0)
  {
LABEL_22:
    result = 0;
    v27 = 80;
    goto LABEL_23;
  }

  v17 = a1;
  *(a1[194] + 6) = v15;
  v18 = a1[49];
  a1[49] = 0;
  if (v18)
  {
    (**v18)(v18);
    v20 = *(v18 - 1);
    v19 = v18 - 1;
    v21 = v20 + 8;
    if (v20 != -8)
    {
      bzero(v19, v21);
    }

    free(v19);
    v17 = a1;
  }

  v22 = v17[50];
  v17[50] = 0;
  if (v22)
  {
    (**v22)(v22);
    v24 = *(v22 - 1);
    v23 = v22 - 1;
    v25 = v24 + 8;
    if (v24 != -8)
    {
      bzero(v23, v25);
    }

    free(v23);
  }

  return 1;
}

uint64_t bssl::ssl_ext_key_share_parse_clienthello(uint64_t a1, BOOL *a2, unsigned __int16 **a3, _BYTE *a4, uint64_t a5)
{
  v6 = *(a5 + 120);
  if (v6)
  {
    v7 = *(a5 + 112);
    do
    {
      if (v6 < 2)
      {
        break;
      }

      if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        break;
      }

      v8 = v6 - 4;
      v9 = __rev16(v7[1]);
      if (v8 < v9)
      {
        break;
      }

      if (__rev16(*v7) == 51)
      {
        v11 = v9 - 2;
        if (v9 >= 2 && v11 == __rev16(v7[2]))
        {
          if (v9 == 2)
          {
            v15 = 0;
            v12 = 0;
LABEL_26:
            if (a3)
            {
              *a3 = v12;
              a3[1] = v15;
            }

            *a2 = v15 != 0;
            return 1;
          }

          else
          {
            v12 = 0;
            v13 = 0;
            v14 = v7 + 3;
            while (v11 >= 2)
            {
              if ((v11 & 0xFFFFFFFFFFFFFFFELL) == 2)
              {
                break;
              }

              v16 = v11 - 4;
              v17 = __rev16(v14[1]);
              v18 = v16 >= v17;
              v11 = v16 - v17;
              if (!v18 || !v17)
              {
                break;
              }

              v20 = *v14;
              v19 = v14 + 2;
              if (__rev16(v20) == *(*(a1 + 1552) + 6))
              {
                v15 = v17;
                v12 = v19;
                if (v13)
                {
                  ERR_put_error(16, 0, 264, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 2371);
                  result = 0;
                  *a4 = 47;
                  return result;
                }
              }

              else
              {
                v15 = v13;
              }

              v14 = (v19 + v17);
              v13 = v15;
              if (!v11)
              {
                goto LABEL_26;
              }
            }

            ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 2365);
            return 0;
          }
        }

        else
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 2351);
          return 0;
        }
      }

      v7 = (v7 + v9 + 4);
      v6 = v8 - v9;
    }

    while (v6);
  }

  ERR_put_error(16, 0, 258, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 2343);
  result = 0;
  *a4 = 109;
  return result;
}

uint64_t bssl::ssl_ext_pake_add_serverhello(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 1688))
  {
    return 1;
  }

  v9[0] = 0;
  result = CBB_add_space(a2, v9, 2);
  if (result)
  {
    *(v9[0] + 1) = 59;
    *v9[0] = -118;
    result = CBB_add_u16_length_prefixed(a2, v9);
    if (result)
    {
      v8[0] = 0;
      result = CBB_add_space(v9, v8, 2);
      if (result)
      {
        *(v8[0] + 1) = -106;
        *v8[0] = 125;
        result = CBB_add_u16_length_prefixed(v9, v8);
        if (result)
        {
          v5 = a1;
          v6 = *(a1 + 1680);
          v7 = *(v5 + 1688);
          v10 = 0;
          result = CBB_add_space(v8, &v10, v7);
          if (result)
          {
            if (v7)
            {
              memcpy(v10, v6, v7);
            }

            return CBB_flush(a2) != 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ssl_ext_key_share_add_serverhello(void *a1, uint64_t *a2)
{
  if (a1[213])
  {
    return 1;
  }

  v13[5] = v2;
  v13[6] = v3;
  v12[0] = 0;
  result = CBB_add_space(a2, v12, 2);
  if (result)
  {
    *(v12[0] + 1) = 51;
    *v12[0] = 0;
    result = CBB_add_u16_length_prefixed(a2, v12);
    if (result)
    {
      v7 = *(a1[194] + 6);
      v11[0] = 0;
      result = CBB_add_space(v12, v11, 2);
      if (result)
      {
        *(v11[0] + 1) = v7;
        *v11[0] = HIBYTE(v7);
        result = CBB_add_u16_length_prefixed(v12, v11);
        if (result)
        {
          v8 = a1;
          v9 = a1[79];
          v10 = v8[80];
          v13[0] = 0;
          result = CBB_add_space(v11, v13, v10);
          if (result)
          {
            if (v10)
            {
              memcpy(v13[0], v9, v10);
            }

            return CBB_flush(a2) != 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ssl_setup_pake_shares(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = *(this + 210);
  v4 = *(this + 211);
  if (v4 && v4 - 1 >= -v3)
  {
    __break(1u);
  }

  v5 = (this + 1680);
  if (v3)
  {
    v7 = *(v3 - 8);
    v6 = (v3 - 8);
    v8 = v7 + 8;
    if (v7 != -8)
    {
      bzero(v6, v8);
    }

    free(v6);
  }

  *v5 = 0;
  *(this + 211) = 0;
  if (*(this + 15) < 0x304u)
  {
    return 1;
  }

  v9 = *(*(this + 1) + 32);
  v10 = *(v9 + 8);
  if (!v10)
  {
    return 1;
  }

  v11 = 0;
  v12 = *v9;
  while (*(v12[v11] + 4) != 2)
  {
    if (v10 == ++v11)
    {
      return 1;
    }
  }

  if (v10 != 1)
  {
    ERR_put_error(16, 0, 327, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 3102);
    return 0;
  }

  v14 = *v12;
  v15 = malloc_type_malloc(0x230uLL, 0xB4E622C9uLL);
  if (v15)
  {
    *v15 = 552;
    v15[2] = 0;
    result = (v15 + 2);
    v17 = *(this + 212);
    *(this + 212) = result;
    if (!v17)
    {
      goto LABEL_23;
    }

LABEL_20:
    v19 = *(v17 - 8);
    v18 = (v17 - 8);
    v20 = v19 + 8;
    if (v19 != -8)
    {
      bzero(v18, v20);
    }

    free(v18);
    result = *(this + 212);
    goto LABEL_23;
  }

  ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  result = 0;
  v17 = *(this + 212);
  *(this + 212) = 0;
  if (v17)
  {
    goto LABEL_20;
  }

LABEL_23:
  if (result)
  {
    result = bssl::spake2plus::Prover::Init(result, *(v14 + 88), *(v14 + 96), *(v14 + 104), *(v14 + 112), *(v14 + 120), *(v14 + 128), v16, *(v14 + 136), *(v14 + 144), *(v14 + 152), *(v14 + 160), 0, 0);
    if (result)
    {
      result = bssl::spake2plus::Prover::GenerateShare(*(this + 212), v39, 65);
      if (result)
      {
        v21 = atomic_load(v14);
        if (v21 != -1)
        {
          for (i = v21; i != -1; v21 = i)
          {
            atomic_compare_exchange_strong(v14, &i, v21 + 1);
            if (i == v21)
            {
              break;
            }
          }
        }

        v23 = *(this + 192);
        *(this + 192) = v14;
        if (v23)
        {
          SSL_CREDENTIAL_free(v23);
        }

        memset(v37, 0, sizeof(v37));
        if (!CBB_init(v37, 0x40uLL))
        {
          goto LABEL_46;
        }

        if (!CBB_add_u16_length_prefixed(v37, v35))
        {
          goto LABEL_46;
        }

        v24 = *(v14 + 104);
        v25 = *(v14 + 112);
        __dst[0] = 0;
        if (!CBB_add_space(v35, __dst, v25))
        {
          goto LABEL_46;
        }

        if (v25)
        {
          memcpy(__dst[0], v24, v25);
        }

        if (!CBB_add_u16_length_prefixed(v37, v34))
        {
          goto LABEL_46;
        }

        v26 = *(v14 + 120);
        v27 = *(v14 + 128);
        __dst[0] = 0;
        if (!CBB_add_space(v34, __dst, v27))
        {
          goto LABEL_46;
        }

        if (v27)
        {
          memcpy(__dst[0], v26, v27);
        }

        if (CBB_add_u16_length_prefixed(v37, __dst) && CBB_add_u16(__dst, 32150) && CBB_add_u16_length_prefixed(__dst, v33) && (v38 = 0, CBB_add_space(v33, &v38, 65)))
        {
          v28 = v38;
          *v38 = v39[0];
          v30 = v39[2];
          v29 = v39[3];
          v31 = v39[1];
          *(v28 + 64) = v40;
          v28[2] = v30;
          v28[3] = v29;
          v28[1] = v31;
          v32 = bssl::CBBFinishArray(v37, v5);
        }

        else
        {
LABEL_46:
          v32 = 0;
        }

        CBB_cleanup(v37);
        return v32;
      }
    }
  }

  return result;
}

void bssl::ssl_ext_pake_parse_serverhello(uint64_t a1, uint64_t *a2, char *a3, unsigned __int16 **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = *MEMORY[0x277D85DE8];
  *a3 = 50;
  if (!*(a1 + 1696))
  {
    v18 = 68;
    v19 = 3166;
LABEL_11:
    ERR_put_error(16, 0, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", v19);
    v20 = 80;
LABEL_12:
    *a3 = v20;
    return;
  }

  v9 = a4[1];
  v10 = v9 - 2;
  if (v9 < 2 || (v11 = *a4, ++*a4, a4[1] = v10, v10 < 2) || (v12 = *v11, v13 = (v11 + 2), v14 = v9 - 4, *a4 = v11 + 2, a4[1] = v14, v15 = __rev16(v11[1]), v14 < v15) || ((v16 = __rev16(v12), *a4 = (v13->u16 + v15), a4[1] = (v14 - v15), v14 == v15) ? (v17 = v16 == 32150) : (v17 = 0), !v17))
  {
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 3177);
    return;
  }

  if (v14 != 97)
  {
    v25 = 3184;
LABEL_26:
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", v25);
    v20 = 47;
    goto LABEL_12;
  }

  if (!atomic_load((*(a1 + 1536) + 184)))
  {
    v18 = 325;
    v19 = 3193;
    goto LABEL_11;
  }

  if ((bssl::spake2plus::Prover::ComputeConfirmation(*(a1 + 1696), v35, 32, v34, 32, v13, 65, a8, (v11 + 69), 32) & 1) == 0)
  {
    v26 = *(a1 + 1536);
    v27 = *(v26 + 184);
    if (v27)
    {
      v28 = (v26 + 184);
      v29 = v27;
      do
      {
        atomic_compare_exchange_strong(v28, &v29, v27 - 1);
        if (v29 == v27)
        {
          break;
        }

        v27 = v29;
      }

      while (v29);
    }

    v25 = 3206;
    goto LABEL_26;
  }

  v32 = 0;
  v33 = 0;
  if (bssl::Array<unsigned char>::CopyFrom(&v32, v34, 0x20uLL))
  {
    bssl::Array<unsigned char>::Reset(a2);
    v24 = v33;
    *a2 = v32;
    a2[1] = v24;
  }

  else
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 3213);
    *a3 = 80;
    if (v33 && v33 - 1 >= -v32)
    {
      __break(1u);
    }

    else if (v32)
    {
      v31 = (v32 - 8);
      v30 = *(v32 - 8);
      if (v30 != -8)
      {
        bzero((v32 - 8), v30 + 8);
      }

      free(v31);
    }
  }
}

uint64_t bssl::ssl_get_local_application_settings(uint64_t a1, void *a2, void *__s1, size_t __n)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 176);
  if (!v5)
  {
    return 0;
  }

  v9 = (*(v4 + 168) + 16);
  v10 = 32 * v5;
  while (__n != *(v9 - 1) || memcmp(__s1, *(v9 - 2), __n))
  {
    v9 += 4;
    v10 -= 32;
    if (!v10)
    {
      return 0;
    }
  }

  v11 = v9[1];
  *a2 = *v9;
  a2[1] = v11;
  return 1;
}

uint64_t bssl::ssl_negotiate_alps(void *a1, char *a2, uint64_t a3)
{
  v3 = *(*a1 + 48);
  v4 = *(v3 + 496);
  if (!v4)
  {
    return 1;
  }

  v8 = a1[1];
  if ((*(v8 + 269) & 0x2000) != 0)
  {
    v9 = 17613;
  }

  else
  {
    v9 = 17513;
  }

  v10 = *(v3 + 208);
  if (v10 - 769 >= 4)
  {
    if (v10 != 65276)
    {
      return 1;
    }
  }

  else if (v10 < 0x304)
  {
    return 1;
  }

  v11 = *(v8 + 176);
  if (v11)
  {
    v12 = *(v3 + 488);
    v13 = (*(v8 + 168) + 16);
    v14 = 32 * v11;
    while (v4 != *(v13 - 1) || memcmp(v12, *(v13 - 2), v4))
    {
      v13 += 4;
      v14 -= 32;
      if (!v14)
      {
        return 1;
      }
    }

    v15 = *(a3 + 120);
    if (v15)
    {
      v16 = *v13;
      v17 = v13[1];
      v18 = *(a3 + 112);
      result = 1;
      while (1)
      {
        if (v15 < 2)
        {
          return 1;
        }

        if ((v15 & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          return 1;
        }

        v20 = v15 - 4;
        v21 = __rev16(v18[1]);
        if (v20 < v21)
        {
          return 1;
        }

        if (bswap32(*v18) >> 16 == v9)
        {
          break;
        }

        v18 = (v18 + v21 + 4);
        v15 = v20 - v21;
        if (!v15)
        {
          return result;
        }
      }

      v22 = v21 - 2;
      if (v21 >= 2)
      {
        v24 = __rev16(v18[2]);
        v23 = 3473;
        if (v22 >= v24 && v22 == v24 && v24)
        {
          v25 = 0;
          v26 = (v18 + 3);
          do
          {
            v29 = *v26;
            v27 = v26 + 1;
            v28 = v29;
            v30 = v22 - 1 >= v29;
            v22 = v22 - 1 - v29;
            if (!v30 || !v28)
            {
              v23 = 3482;
              goto LABEL_35;
            }

            if (v4 == v28)
            {
              v25 |= memcmp(v27, v12, v4) == 0;
            }

            v26 = &v27[v28];
          }

          while (v22);
          if ((v25 & 1) == 0)
          {
            return 1;
          }

          *(a1[194] + 408) |= 0x40u;
          if (bssl::Array<unsigned char>::CopyFrom(a1[194] + 376, v16, v17))
          {
            return 1;
          }

          v31 = 80;
LABEL_36:
          result = 0;
          *a2 = v31;
          return result;
        }
      }

      else
      {
        v23 = 3473;
      }

LABEL_35:
      ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", v23);
      v31 = 50;
      goto LABEL_36;
    }
  }

  return 1;
}

uint64_t bssl::ssl_setup_extension_permutation(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  v78 = *MEMORY[0x277D85DE8];
  if ((*(*(this + 1) + 269) & 0x400) == 0)
  {
    return 1;
  }

  BCM_rand_bytes_with_additional_data(&v51, 0x6CuLL, BCM_rand_bytes::kZeroAdditionalData);
  result = malloc_type_malloc(0x24uLL, 0xB4E622C9uLL);
  v2 = result != 0;
  if (!result)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return v2;
  }

  *(result + 8) = xmmword_273BB6050;
  v5 = result + 8;
  *(result + 24) = 0x1716151413121110;
  *(result + 32) = 454695192;
  v6 = v77 % 0x1C;
  *(result + 35) = *(result + 8 + v77 % 0x1C);
  *(result + 8 + v6) = 27;
  v7 = v76 % 0x1B;
  v8 = *(result + 34);
  *(result + 34) = *(result + 8 + v76 % 0x1B);
  *(result + 8 + v7) = v8;
  v9 = v75 % 0x1A;
  v10 = *(result + 33);
  *(result + 33) = *(result + 8 + v75 % 0x1A);
  *(result + 8 + v9) = v10;
  v11 = v74 % 0x19;
  v12 = *(result + 32);
  *(result + 32) = *(result + 8 + v74 % 0x19);
  *(result + 8 + v11) = v12;
  v13 = v73 % 0x18;
  v14 = *(result + 31);
  *(result + 31) = *(result + 8 + v73 % 0x18);
  *(result + 8 + v13) = v14;
  v15 = v72 % 0x17;
  v16 = *(result + 30);
  *(result + 30) = *(result + 8 + v72 % 0x17);
  *(result + 8 + v15) = v16;
  v17 = v71 % 0x16;
  v18 = *(result + 29);
  *(result + 29) = *(result + 8 + v71 % 0x16);
  *(result + 8 + v17) = v18;
  v19 = v70 % 0x15;
  v20 = *(result + 28);
  *(result + 28) = *(result + 8 + v70 % 0x15);
  *(result + 8 + v19) = v20;
  v21 = v69 % 0x14;
  v22 = *(result + 27);
  *(result + 27) = *(result + 8 + v69 % 0x14);
  *(result + 8 + v21) = v22;
  v23 = v68 % 0x13;
  v24 = *(result + 26);
  *(result + 26) = *(result + 8 + v68 % 0x13);
  *(result + 8 + v23) = v24;
  v25 = v67 % 0x12;
  v26 = *(result + 25);
  *(result + 25) = *(result + 8 + v67 % 0x12);
  *(result + 8 + v25) = v26;
  v27 = v66 % 0x11;
  v28 = *(result + 24);
  *(result + 24) = *(result + 8 + v66 % 0x11);
  *(result + 8 + v27) = v28;
  v29 = v65 & 0xF;
  v30 = *(result + 23);
  *(result + 23) = *(result + 8 + v29);
  *(v5 + v29) = v30;
  LODWORD(v29) = v64 % 0xF;
  v31 = *(result + 22);
  *(result + 22) = *(result + 8 + v64 % 0xF);
  *(result + 8 + v29) = v31;
  LODWORD(v29) = v63 % 0xE;
  v32 = *(result + 21);
  *(result + 21) = *(result + 8 + v63 % 0xE);
  *(result + 8 + v29) = v32;
  v33 = v62 % 0xD;
  LOBYTE(v29) = *(result + 20);
  *(result + 20) = *(result + 8 + v62 % 0xD);
  *(result + 8 + v33) = v29;
  v34 = v61 % 0xC;
  LOBYTE(v29) = *(result + 19);
  *(result + 19) = *(result + 8 + v61 % 0xC);
  *(result + 8 + v34) = v29;
  v35 = v60 % 0xB;
  LOBYTE(v29) = *(result + 18);
  *(result + 18) = *(result + 8 + v60 % 0xB);
  *(result + 8 + v35) = v29;
  v36 = v59 % 0xA;
  v37 = *(result + 17);
  *(result + 17) = *(result + 8 + v59 % 0xA);
  *(result + 8 + v36) = v37;
  v38 = v58 % 9;
  v39 = *(result + 16);
  *(result + 16) = *(result + 8 + v58 % 9);
  *(result + 8 + v38) = v39;
  v40 = v57 & 7;
  LOBYTE(v23) = *(result + 15);
  *(result + 15) = *(result + 8 + v40);
  *(v5 + v40) = v23;
  v41 = v56 % 7;
  LOBYTE(v40) = *(result + 14);
  *(result + 14) = *(result + 8 + v56 % 7);
  *(result + 8 + v41) = v40;
  v42 = v55 % 6;
  LOBYTE(v40) = *(result + 13);
  *(result + 13) = *(result + 8 + v55 % 6);
  *(result + 8 + v42) = v40;
  v43 = v54 % 5;
  LOBYTE(v19) = *(result + 12);
  *(result + 12) = *(result + 8 + v54 % 5);
  *(result + 8 + v43) = v19;
  *result = 28;
  v44 = v53 & 3;
  LOBYTE(v43) = *(result + 11);
  *(result + 11) = *(result + 8 + v44);
  *(v5 + v44) = v43;
  LODWORD(v44) = v52 % 3;
  LOBYTE(v43) = *(result + 10);
  *(result + 10) = *(result + 8 + v52 % 3);
  *(result + 8 + v44) = v43;
  v45 = v51 & 1;
  LOBYTE(v11) = *(result + 9);
  *(result + 9) = *(result + 8 + v45);
  *(v5 + v45) = v11;
  v46 = *(this + 89);
  v47 = *(this + 90);
  if (!v47 || v47 - 1 < -v46)
  {
    if (v46)
    {
      v49 = *(v46 - 8);
      v48 = (v46 - 8);
      v50 = v49 + 8;
      if (v49 != -8)
      {
        bzero(v48, v50);
      }

      free(v48);
    }

    *(this + 89) = v5;
    *(this + 90) = 28;
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t bssl::ssl_add_clienthello_tlsext(uint64_t a1, uint64_t *a2, uint64_t *a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  *a4 = 0;
  v9 = *a1;
  if (a5 != 1)
  {
    if (!CBB_add_u16_length_prefixed(a2, &v109))
    {
      v35 = 3890;
      goto LABEL_83;
    }

    v99 = a2;
    *(a1 + 376) = 0;
    if ((*(*(v9 + 104) + 792) & 0x20) != 0)
    {
      v36 = *(a1 + 1664);
      *&v107 = 0;
      if (!CBB_add_space(&v109, &v107, 2))
      {
        goto LABEL_82;
      }

      *(v107 + 1) = v36 & 0xF0 | 0xA;
      *v107 = v36 & 0xF0 | 0xA;
      if (!CBB_add_u16_length_prefixed(&v109, v111))
      {
        goto LABEL_82;
      }

      *&v107 = 0;
      if (!CBB_add_space(v111, &v107, 0))
      {
        goto LABEL_82;
      }

      result = CBB_flush(&v109);
      if (!result)
      {
        return result;
      }
    }

    v28 = 0;
    while (1)
    {
      v29 = *(a1 + 720);
      v30 = v28;
      if (v29)
      {
        if (v29 <= v28)
        {
LABEL_175:
          abort();
        }

        v30 = *(*(a1 + 712) + v28);
      }

      if (BYTE8(v109))
      {
        v31 = *(*&v110[0] + 8) - (*(&v110[0] + 1) + LOBYTE(v110[1]));
      }

      else
      {
        v31 = *(&v110[0] + 1);
      }

      v32 = (&bssl::kExtensions + 40 * v30);
      if (!v32[1](a1, &v109, &v109, a5))
      {
        ERR_put_error(16, 0, 147, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 3913);
        ERR_add_error_dataf("extension %u", v44, v45, v46, v47, v48, v49, v50, *v32);
        return 0;
      }

      if (BYTE8(v109))
      {
        v34 = *(*&v110[0] + 8) - (*(&v110[0] + 1) + LOBYTE(v110[1])) - v31;
        if (!v34)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v34 = *(&v110[0] + 1) - v31;
        if (*(&v110[0] + 1) == v31)
        {
          goto LABEL_33;
        }
      }

      *(a1 + 376) |= 1 << v30;
LABEL_33:
      if (++v28 == 28)
      {
        v51 = v34 == 4;
        if ((*(*(v9 + 104) + 792) & 0x20) == 0)
        {
          v52 = a4;
          goto LABEL_71;
        }

        v55 = *(a1 + 1665);
        v56 = *(a1 + 1664);
        *&v107 = 0;
        v52 = a4;
        if (CBB_add_space(&v109, &v107, 2))
        {
          v57 = (v55 & 0xF0) == (v56 & 0xF0) ? (v55 & 0xF0 | 0xA | ((v55 & 0xF0 | 0xA) << 8)) ^ 0x1010 : v55 & 0xF0 | 0xA | ((v55 & 0xF0 | 0xA) << 8);
          *(v107 + 1) = v57;
          *v107 = HIBYTE(v57);
          if (CBB_add_u16_length_prefixed(&v109, v111))
          {
            *&v107 = 0;
            if (CBB_add_space(v111, &v107, 1))
            {
              *v107 = 0;
              v58 = CBB_flush(&v109);
              v51 = 0;
              result = 0;
              if (!v58)
              {
                return result;
              }

LABEL_71:
              if (*(a1 + 30) < 0x304u)
              {
LABEL_72:
                v53 = 0;
                v54 = v99;
                if ((**v9 & 1) == 0)
                {
                  goto LABEL_105;
                }

LABEL_147:
                if (bssl::ext_pre_shared_key_add_clienthello(a1, &v109, v52, a5))
                {
                  if (BYTE8(v109))
                  {
                    v92 = *(*&v110[0] + 8) - (*(&v110[0] + 1) + LOBYTE(v110[1]));
                  }

                  else
                  {
                    v92 = *(&v110[0] + 1);
                  }

                  if (!v92)
                  {
                    v93 = *v54;
                    if (*v54)
                    {
                      v94 = v54 + 2;
                      if (*(v54 + 8))
                      {
                        v94 = *v94;
                      }

                      v94[1] = *(v93 + 24);
                      *(v93 + 16) = 0;
                      *v54 = 0;
                    }
                  }

                  return CBB_flush(v54) != 0;
                }

                v35 = 3987;
LABEL_83:
                ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", v35);
                return 0;
              }

              v61 = *a1;
              v62 = *(*a1 + 88);
              if (v62)
              {
                type = bssl::ssl_session_get_type(v62, v33);
                v53 = 0;
                if (a5 != 2 && type == 3)
                {
                  v65 = *(v61 + 88);
                  if ((*(*(v61 + 48) + 220) & 0x1000) != 0 && *(*(v65 + 25) + 36) != *(*(a1 + 1584) + 36))
                  {
                    goto LABEL_72;
                  }

                  v53 = bssl::ssl_session_get_digest(v65, v64)->pkey_type + *(*(v61 + 88) + 240) + 15;
                  v54 = v99;
                  if (**v9)
                  {
                    goto LABEL_147;
                  }

LABEL_105:
                  if (*(v9 + 152) || (*(*(v9 + 48) + 220) & 0x1000) != 0)
                  {
                    goto LABEL_147;
                  }

                  if (BYTE8(v109))
                  {
                    v76 = *(*&v110[0] + 8) - (*(&v110[0] + 1) + LOBYTE(v110[1]));
                  }

                  else
                  {
                    v76 = *(&v110[0] + 1);
                  }

                  v86 = a6 + v53 + v76;
                  v87 = v86 + 6;
                  v88 = v53 == 0;
                  v89 = v86 + 11;
                  v90 = v51 & v88;
                  if (v51 && v88)
                  {
                    v91 = v89;
                  }

                  else
                  {
                    v91 = v87;
                  }

                  if ((v91 & 0xFFFFFFFFFFFFFF00) == 0x100)
                  {
                    if (v87 <= 0x1FB)
                    {
                      v90 = 508 - v87;
                      goto LABEL_143;
                    }

                    v90 = 1;
                  }

                  else
                  {
LABEL_143:
                    if (!v90)
                    {
                      goto LABEL_147;
                    }
                  }

                  result = bssl::add_padding_extension(&v109, v90);
                  if (!result)
                  {
                    return result;
                  }

                  goto LABEL_147;
                }
              }

              else
              {
                v53 = 0;
              }

              v54 = v99;
              if (**v9)
              {
                goto LABEL_147;
              }

              goto LABEL_105;
            }
          }
        }

LABEL_82:
        v35 = 3761;
        goto LABEL_83;
      }
    }
  }

  memset(v110, 0, sizeof(v110));
  v109 = 0u;
  memset(v108, 0, sizeof(v108));
  v107 = 0u;
  if (!CBB_add_u16_length_prefixed(a2, &v102) || !CBB_add_u16_length_prefixed(a3, v101))
  {
    goto LABEL_53;
  }

  memset(v110, 0, sizeof(v110));
  v109 = 0u;
  v11 = malloc_type_malloc(0x48uLL, 0xB4E622C9uLL);
  if (!v11 || (*v11 = 64, BYTE8(v109) = 0, *&v109 = 0, *&v110[0] = v11 + 1, *(v110 + 8) = xmmword_273B8F050, BYTE8(v110[1]) = BYTE8(v110[1]) & 0xFC | 1, v107 = 0u, memset(v108, 0, sizeof(v108)), (v12 = malloc_type_malloc(0x48uLL, 0xB4E622C9uLL)) == 0))
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
LABEL_53:
    v37 = 3782;
LABEL_54:
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", v37);
    goto LABEL_55;
  }

  *v12 = 64;
  BYTE8(v107) = 0;
  *&v107 = 0;
  v108[0] = v12 + 1;
  *&v108[1] = xmmword_273B8F050;
  LOBYTE(v108[3]) = v108[3] & 0xFC | 1;
  *(a1 + 380) = 0;
  if ((*(*(v9 + 104) + 792) & 0x20) != 0)
  {
    v59 = *(a1 + 1664);
    v100[0] = 0;
    if (!CBB_add_space(&v109, v100, 2) || (v60 = v59 & 0xF0 | 0xA, *(v100[0] + 1) = v60 & 0xFE, *v100[0] = v60, !CBB_add_u16_length_prefixed(&v109, v111)) || (v100[0] = 0, !CBB_add_space(v111, v100, 0)))
    {
LABEL_118:
      v37 = 3761;
      goto LABEL_54;
    }

    result = CBB_flush(&v109);
    if (!result)
    {
      goto LABEL_56;
    }

    result = CBB_add_u16(&v107, 257 * (v60 & 0xFEu));
    if (!result)
    {
      goto LABEL_56;
    }
  }

  v13 = a4;
  for (i = 0; i != 28; ++i)
  {
    v15 = *(a1 + 720);
    v16 = i;
    if (v15)
    {
      if (v15 <= i)
      {
        goto LABEL_175;
      }

      v16 = *(*(a1 + 712) + i);
    }

    if (v103)
    {
      v17 = v104[1] - (v105 + v106);
      v18 = v9;
      if (BYTE8(v109))
      {
        goto LABEL_14;
      }
    }

    else
    {
      v17 = v105;
      v18 = v9;
      if (BYTE8(v109))
      {
LABEL_14:
        v19 = *(*&v110[0] + 8) - (*(&v110[0] + 1) + LOBYTE(v110[1]));
        goto LABEL_17;
      }
    }

    v19 = *(&v110[0] + 1);
LABEL_17:
    v20 = (&bssl::kExtensions + 40 * v16);
    if ((v20[1](a1, &v102, &v109, 1) & 1) == 0)
    {
      ERR_put_error(16, 0, 147, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/extensions.cc", 3806);
      ERR_add_error_dataf("extension %u", v66, v67, v68, v69, v70, v71, v72, *v20);
      goto LABEL_55;
    }

    if (v103)
    {
      v21 = v104[1] - (v105 + v106);
      if (BYTE8(v109))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v21 = v105;
      if (BYTE8(v109))
      {
LABEL_20:
        v22 = *(*&v110[0] + 8) - (*(&v110[0] + 1) + LOBYTE(v110[1]));
        if (v21 == v17)
        {
          goto LABEL_24;
        }

        goto LABEL_25;
      }
    }

    v22 = *(&v110[0] + 1);
    if (v21 == v17)
    {
LABEL_24:
      if (v22 == v19)
      {
        goto LABEL_26;
      }
    }

LABEL_25:
    *(a1 + 380) |= 1 << v16;
LABEL_26:
    v23 = v22 == v19;
    v9 = v18;
    if (!v23)
    {
      v24 = *v20;
      v111[0] = 0;
      result = CBB_add_space(&v107, v111, 2);
      if (!result)
      {
        goto LABEL_56;
      }

      *(v111[0] + 1) = v24;
      *v111[0] = HIBYTE(v24);
    }
  }

  if ((*(*(v9 + 104) + 792) & 0x20) != 0)
  {
    v77 = *(a1 + 1665) & 0xF0;
    if (v77 == (*(a1 + 1664) & 0xF0))
    {
      v78 = (v77 | 0xA | ((v77 | 0xA) << 8)) ^ 0x1010;
    }

    else
    {
      v78 = v77 | 0xA | ((v77 | 0xA) << 8);
    }

    if (CBB_add_u16(&v109, v78))
    {
      if (CBB_add_u16_length_prefixed(&v109, v111))
      {
        v100[0] = 0;
        if (CBB_add_space(v111, v100, 1))
        {
          *v100[0] = 0;
          result = CBB_flush(&v109);
          if (result)
          {
            result = CBB_add_u16(&v107, v78);
            if (result)
            {
              goto LABEL_101;
            }
          }

          goto LABEL_56;
        }
      }
    }

    goto LABEL_118;
  }

LABEL_101:
  v73 = v104;
  if (v103)
  {
    v74 = v105 + v106;
    v73 = (v74 + *v104);
    v75 = v104[1] - v74;
  }

  else
  {
    v75 = v105;
  }

  v111[0] = 0;
  result = CBB_add_space(v101, v111, v75);
  if (result)
  {
    if (v75)
    {
      memcpy(v111[0], v73, v75);
    }

    if (BYTE8(v109))
    {
      v79 = *(*&v110[0] + 8);
      v80 = *(&v110[0] + 1) + LOBYTE(v110[1]);
      v81 = v79 - v80;
      if (v79 == v80)
      {
        goto LABEL_163;
      }

      v82 = (**&v110[0] + v80);
LABEL_128:
      v112[0] = 0;
      if (CBB_add_space(&v102, v112, v81))
      {
        if (v81)
        {
          memcpy(v112[0], v82, v81);
        }

        if (CBB_add_u16(v101, 64768) && CBB_add_u16_length_prefixed(v101, v111) && CBB_add_u8_length_prefixed(v111, v100))
        {
          v83 = v108[0];
          if (BYTE8(v107))
          {
            v84 = v108[1] + LOBYTE(v108[2]);
            v83 = &v84[*v108[0]];
            v85 = (*(v108[0] + 1) - v84);
          }

          else
          {
            v85 = v108[1];
          }

          v112[0] = 0;
          if (CBB_add_space(v100, v112, v85))
          {
            if (v85)
            {
              memcpy(v112[0], v83, v85);
            }

            if (CBB_flush(v101))
            {
              goto LABEL_163;
            }
          }
        }
      }

LABEL_55:
      result = 0;
    }

    else
    {
      v81 = *(&v110[0] + 1);
      if (*(&v110[0] + 1))
      {
        v82 = *&v110[0];
        goto LABEL_128;
      }

LABEL_163:
      if (v103)
      {
        v95 = v104[1] - (v105 + v106);
      }

      else
      {
        v95 = v105;
      }

      result = bssl::ext_pre_shared_key_add_clienthello(a1, &v102, v13, 1);
      if (result)
      {
        v96 = v104;
        if (v103)
        {
          v97 = v105 + v106;
          v96 = (v97 + *v104);
          v98 = v104[1] - v97;
        }

        else
        {
          v98 = v105;
        }

        v111[0] = 0;
        result = CBB_add_space(v101, v111, v98 - v95);
        if (result)
        {
          if (v98 != v95)
          {
            memcpy(v111[0], v96 + v95, v98 - v95);
          }

          result = CBB_flush(a2);
          if (result)
          {
            result = CBB_flush(a3) != 0;
          }
        }
      }
    }
  }

LABEL_56:
  if (!BYTE8(v107) && (v108[3] & 1) != 0 && v108[0])
  {
    v38 = result;
    v40 = v108[0] - 8;
    v39 = *(v108[0] - 1);
    if (v39 != -8)
    {
      bzero(v108[0] - 8, v39 + 8);
    }

    free(v40);
    result = v38;
  }

  if (!BYTE8(v109) && (BYTE8(v110[1]) & 1) != 0 && *&v110[0])
  {
    v41 = result;
    v43 = (*&v110[0] - 8);
    v42 = *(*&v110[0] - 8);
    if (v42 != -8)
    {
      bzero(v43, v42 + 8);
    }

    free(v43);
    return v41;
  }

  return result;
}