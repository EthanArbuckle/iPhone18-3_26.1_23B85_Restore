int EVP_DigestInit_ex(EVP_MD_CTX *ctx, const EVP_MD *type, ENGINE *impl)
{
  if (ctx->digest == type)
  {
    digest = ctx->digest;
LABEL_9:
    (digest->flags)(ctx);
    return 1;
  }

  digest = type;
  final_high = HIDWORD(type->final);
  v6 = malloc_type_malloc(final_high + 8, 0xB4E622C9uLL);
  if (v6)
  {
    *v6 = final_high;
    v7 = (v6 + 1);
    engine = ctx->engine;
    if (engine)
    {
      v10 = *(engine - 1);
      v9 = engine - 8;
      v11 = v10 + 8;
      if (v10 != -8)
      {
        bzero(v9, v11);
      }

      free(v9);
    }

    ctx->digest = digest;
    ctx->engine = v7;
    goto LABEL_9;
  }

  ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  return 0;
}

const EVP_MD *EVP_sha1(void)
{
  if (pthread_once(&EVP_sha1_once, EVP_sha1_init))
  {
    abort();
  }

  return &EVP_sha1_storage;
}

double EVP_sha1_init(void)
{
  EVP_sha1_storage = 0x1400000040;
  dword_2808D43A0 = 0;
  qword_2808D43A8 = sha1_init;
  qword_2808D43B0 = sha1_update;
  qword_2808D43B8 = sha1_final;
  *&result = 0x6000000040;
  qword_2808D43C0 = 0x6000000040;
  return result;
}

const EVP_MD *EVP_sha224(void)
{
  if (pthread_once(&EVP_sha224_once, EVP_sha224_init))
  {
    abort();
  }

  return &EVP_sha224_storage;
}

double EVP_sha224_init(void)
{
  EVP_sha224_storage = 0x1C000002A3;
  dword_2808D43D0 = 0;
  qword_2808D43D8 = sha224_init;
  qword_2808D43E0 = sha224_update;
  qword_2808D43E8 = sha224_final;
  *&result = 0x7000000040;
  qword_2808D43F0 = 0x7000000040;
  return result;
}

const EVP_MD *EVP_sha256(void)
{
  if (pthread_once(&EVP_sha256_once, EVP_sha256_init))
  {
    abort();
  }

  return &EVP_sha256_storage;
}

double EVP_sha256_init(void)
{
  EVP_sha256_storage = 0x20000002A0;
  dword_2808D4400 = 0;
  qword_2808D4408 = sha256_init;
  qword_2808D4410 = sha256_update;
  qword_2808D4418 = sha256_final;
  *&result = 0x7000000040;
  qword_2808D4420 = 0x7000000040;
  return result;
}

const EVP_MD *EVP_sha384(void)
{
  if (pthread_once(&EVP_sha384_once, EVP_sha384_init))
  {
    abort();
  }

  return &EVP_sha384_storage;
}

double EVP_sha384_init(void)
{
  EVP_sha384_storage = 0x30000002A1;
  dword_2808D4430 = 0;
  qword_2808D4438 = sha384_init;
  qword_2808D4440 = sha384_update;
  qword_2808D4448 = sha384_final;
  *&result = 0xD800000080;
  qword_2808D4450 = 0xD800000080;
  return result;
}

const EVP_MD *EVP_sha512(void)
{
  if (pthread_once(&EVP_sha512_once, EVP_sha512_init))
  {
    abort();
  }

  return &EVP_sha512_storage;
}

double EVP_sha512_init(void)
{
  EVP_sha512_storage = 0x40000002A2;
  dword_2808D4460 = 0;
  qword_2808D4468 = sha512_init;
  qword_2808D4470 = sha512_update;
  qword_2808D4478 = sha512_final;
  *&result = 0xD800000080;
  qword_2808D4480 = 0xD800000080;
  return result;
}

const EVP_MD *EVP_sha512_256(void)
{
  if (pthread_once(&EVP_sha512_256_once, EVP_sha512_256_init))
  {
    abort();
  }

  return &EVP_sha512_256_storage;
}

double EVP_sha512_256_init(void)
{
  EVP_sha512_256_storage = 0x20000003C2;
  dword_2808D4490 = 0;
  qword_2808D4498 = sha512_256_init;
  qword_2808D44A0 = sha512_256_update;
  qword_2808D44A8 = sha512_256_final;
  *&result = 0xD800000080;
  qword_2808D44B0 = 0xD800000080;
  return result;
}

uint64_t do_sigver_init(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a1[2])
  {
    goto LABEL_2;
  }

  if (!a5 || (v17 = *(a5 + 16)) == 0)
  {
    ERR_put_error(6, 0, 67, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/evp_ctx.cc", 65);
LABEL_37:
    result = 0;
    a1[2] = 0;
    return result;
  }

  v18 = *(v17 + 16);
  if (!v18)
  {
    ERR_put_error(6, 0, 128, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/evp_ctx.cc", 71);
    ERR_add_error_dataf("algorithm %d", v30, v31, v32, v33, v34, v35, v36, **(a5 + 16));
    goto LABEL_37;
  }

  result = evp_pkey_ctx_new(a5, a4, v18);
  a1[2] = result;
  if (!result)
  {
    return result;
  }

LABEL_2:
  if (pthread_once(&md_pctx_ops_once, md_pctx_ops_init))
  {
    abort();
  }

  a1[3] = &md_pctx_ops_storage;
  v10 = a1[2];
  if (a6 == 1)
  {
    if (!v10 || (v11 = *v10) == 0 || !v11[7] && !v11[8])
    {
      v13 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/evp_ctx.cc";
      v14 = 6;
      v15 = 125;
      v16 = 175;
      goto LABEL_40;
    }

    *(v10 + 32) = 16;
    if (!a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!v10 || (v11 = *v10) == 0 || !v11[5] && !v11[6])
    {
      v13 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/evp_ctx.cc";
      v14 = 6;
      v15 = 125;
      v16 = 151;
      goto LABEL_40;
    }

    *(v10 + 32) = 8;
    if (!a3)
    {
LABEL_9:
      v12 = 7;
      if (!a6)
      {
        v12 = 5;
      }

      if (v11[v12])
      {
        v13 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/digestsign/digestsign.cc.inc";
        v14 = 6;
        v15 = 119;
        v16 = 68;
LABEL_40:
        ERR_put_error(v14, 0, v15, v13, v16);
        return 0;
      }

      goto LABEL_45;
    }
  }

  v20 = v11[14];
  if (!v20)
  {
    v13 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/evp_ctx.cc";
    v14 = 6;
    v15 = 101;
    v16 = 127;
    goto LABEL_40;
  }

  result = v20();
  if (result)
  {
    v21 = 56;
    if (!a6)
    {
      v21 = 40;
    }

    if (*(*a1[2] + v21))
    {
      if (*a1 == a3)
      {
        a3 = *a1;
      }

      else
      {
        v22 = *(a3 + 44);
        v23 = malloc_type_malloc(v22 + 8, 0xB4E622C9uLL);
        if (!v23)
        {
          v13 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
          v14 = 14;
          v15 = 65;
          v16 = 217;
          goto LABEL_40;
        }

        *v23 = v22;
        v24 = v23 + 1;
        v25 = a1[1];
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

        *a1 = a3;
        a1[1] = v24;
      }

      (*(a3 + 16))(a1);
    }

LABEL_45:
    if (a2)
    {
      *a2 = a1[2];
    }

    return 1;
  }

  return result;
}

uint64_t EVP_DigestSignFinal(EVP_MD_CTX *in, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  flags = in->flags;
  v4 = *(*flags + 40);
  if (!v4)
  {
    v10 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/digestsign/digestsign.cc.inc";
    v11 = 125;
    v12 = 113;
LABEL_25:
    ERR_put_error(6, 0, v11, v10, v12);
    return 0;
  }

  if (a2)
  {
    memset(&v17, 0, sizeof(v17));
    if (EVP_MD_CTX_copy_ex(&v17, in))
    {
      (v17.digest->update)(&v17, v18);
      final_high = HIDWORD(v17.digest->final);
      if (final_high)
      {
        bzero(v17.engine, final_high);
      }

      v6 = in->flags;
      if (v6)
      {
        if (*v6)
        {
          v7 = *(*v6 + 40);
          if (v7)
          {
            if (v6[8] == 8)
            {
              v8 = v7() != 0;
              engine = v17.engine;
              if (!v17.engine)
              {
                goto LABEL_22;
              }
            }

            else
            {
              ERR_put_error(6, 0, 126, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/evp_ctx.cc", 166);
              v8 = 0;
              engine = v17.engine;
              if (!v17.engine)
              {
LABEL_22:
                if (v17.md_data)
                {
                  (*v17.md_data)(v17.flags);
                }

                return v8;
              }
            }

LABEL_19:
            v15 = *(engine - 1);
            v14 = engine - 8;
            v16 = v15 + 8;
            if (v15 != -8)
            {
              bzero(v14, v16);
            }

            free(v14);
            goto LABEL_22;
          }
        }
      }

      ERR_put_error(6, 0, 125, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/evp_ctx.cc", 162);
    }

    v8 = 0;
    engine = v17.engine;
    if (!v17.engine)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (flags[8] != 8)
  {
    v10 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/evp_ctx.cc";
    v11 = 126;
    v12 = 166;
    goto LABEL_25;
  }

  return v4();
}

BOOL EVP_DigestVerifyFinal(EVP_MD_CTX *in)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!*(*in->flags + 56))
  {
    ERR_put_error(6, 0, 125, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/digestsign/digestsign.cc.inc", 145);
    return 0;
  }

  memset(&v11, 0, sizeof(v11));
  if (!EVP_MD_CTX_copy_ex(&v11, in))
  {
LABEL_13:
    v5 = 0;
    engine = v11.engine;
    if (!v11.engine)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  (v11.digest->update)(&v11, v12);
  final_high = HIDWORD(v11.digest->final);
  if (final_high)
  {
    bzero(v11.engine, final_high);
  }

  flags = in->flags;
  if (!flags || !*flags || (v4 = *(*flags + 56)) == 0)
  {
    ERR_put_error(6, 0, 125, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/evp_ctx.cc", 185);
    goto LABEL_13;
  }

  if (flags[8] == 16)
  {
    v5 = v4() != 0;
    engine = v11.engine;
    if (!v11.engine)
    {
      goto LABEL_17;
    }

LABEL_14:
    v8 = *(engine - 1);
    v7 = engine - 8;
    v9 = v8 + 8;
    if (v8 != -8)
    {
      bzero(v7, v9);
    }

    free(v7);
    goto LABEL_17;
  }

  ERR_put_error(6, 0, 126, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/evp_ctx.cc", 189);
  v5 = 0;
  engine = v11.engine;
  if (v11.engine)
  {
    goto LABEL_14;
  }

LABEL_17:
  if (v11.md_data)
  {
    (*v11.md_data)(v11.flags);
  }

  return v5;
}

uint64_t EVP_DigestSign(EVP_MD_CTX *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  flags = a1->flags;
  v7 = *(*flags + 40);
  if (!v7)
  {
    v7 = *(*flags + 48);
    if (!v7)
    {
      ERR_put_error(6, 0, 125, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/digestsign/digestsign.cc.inc", 187);
      return 0;
    }

    return v7();
  }

  if (!a2)
  {
    if (flags[8] != 8)
    {
      ERR_put_error(6, 0, 126, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/evp/evp_ctx.cc", 166);
      return 0;
    }

    return v7();
  }

  (a1->digest->init)(a1, a4, a5);

  return EVP_DigestSignFinal(a1, a2);
}

uint64_t *EC_group_p224()
{
  if (pthread_once(&stru_28100B478, EC_group_p224_init))
  {
    abort();
  }

  return &qword_2808D4720;
}

double EC_group_p224_init(void)
{
  unk_2808D4920 = 0x4812B000002C9;
  unk_2808D4918 = "NIST P-224";
  byte_2808D4928 = 33;
  byte_2808D492D = 5;
  v0 = dword_2808D4874;
  if ((dword_2808D4874 & 2) == 0 && qword_2808D4860)
  {
    v2 = (qword_2808D4860 - 8);
    v1 = *(qword_2808D4860 - 8);
    if (v1 != -8)
    {
      bzero(v2, v1 + 8);
    }

    free(v2);
    v0 = dword_2808D4874;
  }

  qword_2808D4860 = &kP224Field;
  *&dword_2808D4868 = 0x400000004;
  dword_2808D4870 = 0;
  dword_2808D4874 = v0 | 2;
  v3 = dword_2808D485C;
  if ((dword_2808D485C & 2) == 0 && qword_2808D4848)
  {
    v5 = (qword_2808D4848 - 8);
    v4 = *(qword_2808D4848 - 8);
    if (v4 != -8)
    {
      bzero(v5, v4 + 8);
    }

    free(v5);
    v3 = dword_2808D485C;
  }

  qword_2808D4848 = &kP224FieldRR;
  unk_2808D4850 = 0x400000004;
  dword_2808D4858 = 0;
  dword_2808D485C = v3 | 2;
  unk_2808D4878 = -1;
  v6 = dword_2808D4834;
  if ((dword_2808D4834 & 2) == 0 && qword_2808D4820)
  {
    v8 = (qword_2808D4820 - 8);
    v7 = *(qword_2808D4820 - 8);
    if (v7 != -8)
    {
      bzero(v8, v7 + 8);
    }

    free(v8);
    v6 = dword_2808D4834;
  }

  qword_2808D4820 = &kP224Order;
  *algn_2808D4828 = 0x400000004;
  dword_2808D4830 = 0;
  dword_2808D4834 = v6 | 2;
  v9 = dword_2808D481C;
  if ((dword_2808D481C & 2) == 0 && qword_2808D4808)
  {
    v11 = (qword_2808D4808 - 8);
    v10 = *(qword_2808D4808 - 8);
    if (v10 != -8)
    {
      bzero(v11, v10 + 8);
    }

    free(v11);
    v9 = dword_2808D481C;
  }

  qword_2808D4808 = &kP224OrderRR;
  qword_2808D4810 = 0x400000004;
  dword_2808D4818 = 0;
  dword_2808D481C = v9 | 2;
  qword_2808D4838 = 0xD6E242706A1FC2EBLL;
  if (pthread_once(&EC_GFp_nistp224_method_once, EC_GFp_nistp224_method_init))
  {
    abort();
  }

  xmmword_2808D4730 = kP224GX;
  unk_2808D4740 = unk_273BA7DC8;
  unk_2808D4778 = kP224GY;
  unk_2808D4788 = unk_273BA7DE8;
  qword_2808D47C0[0].i64[0] = 1;
  xmmword_2808D48D0 = kP224B;
  unk_2808D48E0 = unk_273BA7E08;
  qword_2808D4720 = &qword_2808D45E0;
  unk_2808D4728 = &qword_2808D4720;
  dword_2808D4930 = 1;
  ec_felem_neg(&qword_2808D4720, xmmword_2808D4888, qword_2808D47C0);
  bn_mod_sub_words(xmmword_2808D4888, xmmword_2808D4888, qword_2808D47C0, qword_2808D4860, v13, dword_2808D4868);
  bn_mod_sub_words(xmmword_2808D4888, xmmword_2808D4888, qword_2808D47C0, qword_2808D4860, v13, dword_2808D4868);
  *&result = 0x100000001;
  qword_2808D4934 = 0x100000001;
  return result;
}

uint64_t *EC_group_p256()
{
  if (pthread_once(&stru_28100B488, EC_group_p256_init))
  {
    abort();
  }

  return &qword_2808D4940;
}

double EC_group_p256_init(void)
{
  dword_2808D4B40 = 415;
  *&algn_2808D4B10[40] = "NIST P-256";
  qword_2808D4B44 = 0x701033DCE48862ALL;
  byte_2808D4B4D = 8;
  v0 = dword_2808D4A94;
  if ((dword_2808D4A94 & 2) == 0 && qword_2808D4A80)
  {
    v2 = (qword_2808D4A80 - 8);
    v1 = *(qword_2808D4A80 - 8);
    if (v1 != -8)
    {
      bzero(v2, v1 + 8);
    }

    free(v2);
    v0 = dword_2808D4A94;
  }

  qword_2808D4A80 = &kP256Field;
  *&dword_2808D4A88 = 0x400000004;
  dword_2808D4A90 = 0;
  dword_2808D4A94 = v0 | 2;
  v3 = dword_2808D4A7C;
  if ((dword_2808D4A7C & 2) == 0 && qword_2808D4A68)
  {
    v5 = (qword_2808D4A68 - 8);
    v4 = *(qword_2808D4A68 - 8);
    if (v4 != -8)
    {
      bzero(v5, v4 + 8);
    }

    free(v5);
    v3 = dword_2808D4A7C;
  }

  qword_2808D4A68 = &kP256FieldRR;
  unk_2808D4A70 = 0x400000004;
  dword_2808D4A78 = 0;
  dword_2808D4A7C = v3 | 2;
  unk_2808D4A98 = 1;
  v6 = dword_2808D4A54;
  if ((dword_2808D4A54 & 2) == 0 && qword_2808D4A40)
  {
    v8 = (qword_2808D4A40 - 8);
    v7 = *(qword_2808D4A40 - 8);
    if (v7 != -8)
    {
      bzero(v8, v7 + 8);
    }

    free(v8);
    v6 = dword_2808D4A54;
  }

  qword_2808D4A40 = &kP256Order;
  *algn_2808D4A48 = 0x400000004;
  dword_2808D4A50 = 0;
  dword_2808D4A54 = v6 | 2;
  v9 = dword_2808D4A3C;
  if ((dword_2808D4A3C & 2) == 0 && qword_2808D4A28)
  {
    v11 = (qword_2808D4A28 - 8);
    v10 = *(qword_2808D4A28 - 8);
    if (v10 != -8)
    {
      bzero(v11, v10 + 8);
    }

    free(v11);
    v9 = dword_2808D4A3C;
  }

  qword_2808D4A28 = &kP256OrderRR;
  qword_2808D4A30 = 0x400000004;
  dword_2808D4A38 = 0;
  dword_2808D4A3C = v9 | 2;
  qword_2808D4A58 = 0xCCD1C8AAEE00BC4FLL;
  if (pthread_once(&EC_GFp_nistp256_method_once, EC_GFp_nistp256_method_init))
  {
    abort();
  }

  xmmword_2808D4950 = kP256MontGX;
  unk_2808D4960 = unk_273BA7EA8;
  unk_2808D4998 = kP256MontGY;
  unk_2808D49A8 = unk_273BA7EC8;
  xmmword_2808D49E0 = kP256FieldR[0];
  unk_2808D49F0 = unk_273BA7EE8;
  xmmword_2808D4B00 = unk_273BA7F08;
  qword_2808D4940 = &qword_2808D4680;
  qword_2808D4948 = &qword_2808D4940;
  xmmword_2808D4AF0 = kP256MontB;
  dword_2808D4B50 = 1;
  ec_felem_neg(&qword_2808D4940, xmmword_2808D4AA8, &xmmword_2808D49E0);
  bn_mod_sub_words(xmmword_2808D4AA8, xmmword_2808D4AA8, &xmmword_2808D49E0, qword_2808D4A80, v13, dword_2808D4A88);
  bn_mod_sub_words(xmmword_2808D4AA8, xmmword_2808D4AA8, &xmmword_2808D49E0, qword_2808D4A80, v13, dword_2808D4A88);
  *&result = 0x100000001;
  qword_2808D4B54 = 0x100000001;
  return result;
}

uint64_t *EC_group_p384()
{
  if (pthread_once(&stru_28100B498, EC_group_p384_init))
  {
    abort();
  }

  return &qword_2808D4B60;
}

double EC_group_p384_init(void)
{
  unk_2808D4D60 = 0x4812B000002CBLL;
  unk_2808D4D58 = "NIST P-384";
  byte_2808D4D68 = 34;
  byte_2808D4D6D = 5;
  v0 = dword_2808D4CB4;
  if ((dword_2808D4CB4 & 2) == 0 && qword_2808D4CA0)
  {
    v2 = (qword_2808D4CA0 - 8);
    v1 = *(qword_2808D4CA0 - 8);
    if (v1 != -8)
    {
      bzero(v2, v1 + 8);
    }

    free(v2);
    v0 = dword_2808D4CB4;
  }

  qword_2808D4CA0 = &kP384Field;
  *&dword_2808D4CA8 = 0x600000006;
  dword_2808D4CB0 = 0;
  dword_2808D4CB4 = v0 | 2;
  v3 = dword_2808D4C9C;
  if ((dword_2808D4C9C & 2) == 0 && qword_2808D4C88)
  {
    v5 = (qword_2808D4C88 - 8);
    v4 = *(qword_2808D4C88 - 8);
    if (v4 != -8)
    {
      bzero(v5, v4 + 8);
    }

    free(v5);
    v3 = dword_2808D4C9C;
  }

  qword_2808D4C88 = &kP384FieldRR;
  unk_2808D4C90 = 0x600000006;
  dword_2808D4C98 = 0;
  dword_2808D4C9C = v3 | 2;
  unk_2808D4CB8 = 0x100000001;
  v6 = dword_2808D4C74;
  if ((dword_2808D4C74 & 2) == 0 && qword_2808D4C60)
  {
    v8 = (qword_2808D4C60 - 8);
    v7 = *(qword_2808D4C60 - 8);
    if (v7 != -8)
    {
      bzero(v8, v7 + 8);
    }

    free(v8);
    v6 = dword_2808D4C74;
  }

  qword_2808D4C60 = &kP384Order;
  *algn_2808D4C68 = 0x600000006;
  dword_2808D4C70 = 0;
  dword_2808D4C74 = v6 | 2;
  v9 = dword_2808D4C5C;
  if ((dword_2808D4C5C & 2) == 0 && qword_2808D4C48)
  {
    v11 = (qword_2808D4C48 - 8);
    v10 = *(qword_2808D4C48 - 8);
    if (v10 != -8)
    {
      bzero(v11, v10 + 8);
    }

    free(v11);
    v9 = dword_2808D4C5C;
  }

  qword_2808D4C48 = &kP384OrderRR;
  qword_2808D4C50 = 0x600000006;
  dword_2808D4C58 = 0;
  dword_2808D4C5C = v9 | 2;
  qword_2808D4C78 = 0x6ED46089E88FDC45;
  if (pthread_once(&EC_GFp_mont_method_once, EC_GFp_mont_method_init))
  {
    abort();
  }

  xmmword_2808D4B70 = kP384MontGX;
  xmmword_2808D4B80 = unk_273BA7FE8;
  xmmword_2808D4B90 = xmmword_273BA7FF8;
  *&algn_2808D4BA0[24] = kP384MontGY;
  *&algn_2808D4BA0[40] = unk_273BA8018;
  *&algn_2808D4BA0[56] = xmmword_273BA8028;
  xmmword_2808D4C20 = unk_273BA8058;
  xmmword_2808D4C10 = xmmword_273BA8048;
  xmmword_2808D4C00 = kP384FieldR;
  xmmword_2808D4D30 = unk_273BA8088;
  xmmword_2808D4D20 = xmmword_273BA8078;
  qword_2808D4B60 = &qword_2808D4540;
  qword_2808D4B68 = &qword_2808D4B60;
  xmmword_2808D4D10 = kP384MontB;
  dword_2808D4D70 = 1;
  ec_felem_neg(&qword_2808D4B60, xmmword_2808D4CC8, &xmmword_2808D4C00);
  bn_mod_sub_words(xmmword_2808D4CC8, xmmword_2808D4CC8, &xmmword_2808D4C00, qword_2808D4CA0, v13, dword_2808D4CA8);
  bn_mod_sub_words(xmmword_2808D4CC8, xmmword_2808D4CC8, &xmmword_2808D4C00, qword_2808D4CA0, v13, dword_2808D4CA8);
  *&result = 0x100000001;
  qword_2808D4D74 = 0x100000001;
  return result;
}

uint64_t *EC_group_p521()
{
  if (pthread_once(&stru_28100B4A8, EC_group_p521_init))
  {
    abort();
  }

  return &qword_2808D4D80;
}

double EC_group_p521_init(void)
{
  unk_2808D4F80 = 0x4812B000002CCLL;
  unk_2808D4F78 = "NIST P-521";
  byte_2808D4F88 = 35;
  byte_2808D4F8D = 5;
  v0 = dword_2808D4ED4;
  if ((dword_2808D4ED4 & 2) == 0 && qword_2808D4EC0)
  {
    v2 = (qword_2808D4EC0 - 8);
    v1 = *(qword_2808D4EC0 - 8);
    if (v1 != -8)
    {
      bzero(v2, v1 + 8);
    }

    free(v2);
    v0 = dword_2808D4ED4;
  }

  qword_2808D4EC0 = &kP521Field;
  *&dword_2808D4EC8 = 0x900000009;
  dword_2808D4ED0 = 0;
  dword_2808D4ED4 = v0 | 2;
  v3 = dword_2808D4EBC;
  if ((dword_2808D4EBC & 2) == 0 && qword_2808D4EA8)
  {
    v5 = (qword_2808D4EA8 - 8);
    v4 = *(qword_2808D4EA8 - 8);
    if (v4 != -8)
    {
      bzero(v5, v4 + 8);
    }

    free(v5);
    v3 = dword_2808D4EBC;
  }

  qword_2808D4EA8 = &kP521FieldRR;
  unk_2808D4EB0 = 0x900000009;
  dword_2808D4EB8 = 0;
  dword_2808D4EBC = v3 | 2;
  unk_2808D4ED8 = 1;
  v6 = dword_2808D4E94;
  if ((dword_2808D4E94 & 2) == 0 && qword_2808D4E80)
  {
    v8 = (qword_2808D4E80 - 8);
    v7 = *(qword_2808D4E80 - 8);
    if (v7 != -8)
    {
      bzero(v8, v7 + 8);
    }

    free(v8);
    v6 = dword_2808D4E94;
  }

  qword_2808D4E80 = &kP521Order;
  *algn_2808D4E88 = 0x900000009;
  dword_2808D4E90 = 0;
  dword_2808D4E94 = v6 | 2;
  v9 = dword_2808D4E7C;
  if ((dword_2808D4E7C & 2) == 0 && qword_2808D4E68)
  {
    v11 = (qword_2808D4E68 - 8);
    v10 = *(qword_2808D4E68 - 8);
    if (v10 != -8)
    {
      bzero(v11, v10 + 8);
    }

    free(v11);
    v9 = dword_2808D4E7C;
  }

  qword_2808D4E68 = &kP521OrderRR;
  qword_2808D4E70 = 0x900000009;
  dword_2808D4E78 = 0;
  dword_2808D4E7C = v9 | 2;
  qword_2808D4E98 = 0x1D2F5CCD79A995C7;
  if (pthread_once(&EC_GFp_mont_method_once, EC_GFp_mont_method_init))
  {
    abort();
  }

  xmmword_2808D4D90 = kP521MontGX;
  xmmword_2808D4DA0 = unk_273BA81C8;
  xmmword_2808D4DB0 = xmmword_273BA81D8;
  xmmword_2808D4DC0 = unk_273BA81E8;
  unk_2808D4DD8 = kP521MontGY;
  unk_2808D4DE8 = unk_273BA8210;
  unk_2808D4DF8 = xmmword_273BA8220;
  unk_2808D4E08 = unk_273BA8230;
  xmmword_2808D4E50 = unk_273BA82C0;
  xmmword_2808D4E40 = xmmword_273BA82B0;
  xmmword_2808D4E30 = unk_273BA82A0;
  xmmword_2808D4E20 = kP521FieldR;
  xmmword_2808D4F30 = kP521MontB;
  xmmword_2808D4F40 = unk_273BA8258;
  xmmword_2808D4F50 = xmmword_273BA8268;
  qword_2808D4D80 = &qword_2808D4540;
  qword_2808D4D88 = &qword_2808D4D80;
  qword_2808D4DD0 = 116;
  qword_2808D4E18 = 480;
  qword_2808D4E60 = 0;
  qword_2808D4F70 = 77;
  xmmword_2808D4F60 = unk_273BA8278;
  dword_2808D4F90 = 1;
  ec_felem_neg(&qword_2808D4D80, xmmword_2808D4EE8, &xmmword_2808D4E20);
  bn_mod_sub_words(xmmword_2808D4EE8, xmmword_2808D4EE8, &xmmword_2808D4E20, qword_2808D4EC0, v13, dword_2808D4EC8);
  bn_mod_sub_words(xmmword_2808D4EE8, xmmword_2808D4EE8, &xmmword_2808D4E20, qword_2808D4EC0, v13, dword_2808D4EC8);
  *&result = 0x100000001;
  qword_2808D4F94 = 0x100000001;
  return result;
}

EC_GROUP *__cdecl EC_GROUP_new_by_curve_name(int nid)
{
  if (nid > 714)
  {
    if (nid == 715)
    {
      if (pthread_once(&stru_28100B498, EC_group_p384_init))
      {
        goto LABEL_15;
      }

      return &qword_2808D4B60;
    }

    else
    {
      if (nid != 716)
      {
LABEL_10:
        ERR_put_error(15, 0, 123, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc", 280);
        return 0;
      }

      if (pthread_once(&stru_28100B4A8, EC_group_p521_init))
      {
        goto LABEL_15;
      }

      return &qword_2808D4D80;
    }
  }

  else
  {
    if (nid != 415)
    {
      if (nid == 713)
      {
        if (!pthread_once(&stru_28100B478, EC_group_p224_init))
        {
          return &qword_2808D4720;
        }

LABEL_15:
        abort();
      }

      goto LABEL_10;
    }

    if (pthread_once(&stru_28100B488, EC_group_p256_init))
    {
      goto LABEL_15;
    }

    return &qword_2808D4940;
  }
}

void EC_GROUP_free(EC_GROUP *a1)
{
  if (a1)
  {
    if (!*(a1 + 128))
    {
      v1 = atomic_load(a1 + 135);
      if (v1 != -1)
      {
        while (1)
        {
          if (!v1)
          {
            abort();
          }

          v2 = v1;
          atomic_compare_exchange_strong(a1 + 135, &v2, v1 - 1);
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
          v3 = *(a1 + 63);
          v4 = a1;
          if ((v3 & 2) == 0)
          {
            v5 = *(a1 + 29);
            if (v5)
            {
              v7 = *(v5 - 8);
              v6 = (v5 - 8);
              v8 = v7 + 8;
              if (v7 != -8)
              {
                bzero(v6, v8);
              }

              free(v6);
              a1 = v4;
              v3 = *(v4 + 63);
            }
          }

          if (v3)
          {
            v10 = *(a1 + 28);
            v9 = a1 + 224;
            v11 = v10 + 8;
            if (v10 != -8)
            {
              v12 = v9;
              bzero(v9, v11);
              v9 = v12;
            }

            free(v9);
            a1 = v4;
          }

          else
          {
            *(a1 + 29) = 0;
          }

          v13 = *(a1 + 69);
          if ((v13 & 2) == 0)
          {
            v14 = *(a1 + 32);
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
              a1 = v4;
              v13 = *(v4 + 69);
            }
          }

          if (v13)
          {
            v19 = *(a1 + 31);
            v18 = a1 + 248;
            v20 = v19 + 8;
            if (v19 != -8)
            {
              v21 = v18;
              bzero(v18, v20);
              v18 = v21;
            }

            free(v18);
            a1 = v4;
          }

          else
          {
            *(a1 + 32) = 0;
          }

          v22 = *(a1 + 79);
          if ((v22 & 2) == 0)
          {
            v23 = *(a1 + 37);
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
              a1 = v4;
              v22 = *(v4 + 79);
            }
          }

          if (v22)
          {
            v27 = *(a1 + 36);
            if (v27 != -8)
            {
              bzero(v4 + 288, v27 + 8);
            }

            free(v4 + 288);
            a1 = v4;
          }

          else
          {
            *(a1 + 37) = 0;
          }

          v28 = *(a1 + 85);
          if ((v28 & 2) == 0)
          {
            v29 = *(a1 + 40);
            if (v29)
            {
              v31 = *(v29 - 8);
              v30 = (v29 - 8);
              v32 = v31 + 8;
              if (v31 != -8)
              {
                bzero(v30, v32);
              }

              free(v30);
              a1 = v4;
              v28 = *(v4 + 85);
            }
          }

          if (v28)
          {
            v33 = *(a1 + 39);
            if (v33 != -8)
            {
              bzero(v4 + 312, v33 + 8);
            }

            free(v4 + 312);
            a1 = v4;
          }

          else
          {
            *(a1 + 40) = 0;
          }

          v35 = *(a1 - 1);
          v34 = a1 - 8;
          v36 = v35 + 8;
          if (v35 != -8)
          {
            v37 = v34;
            bzero(v34, v36);
            v34 = v37;
          }

          free(v34);
        }
      }
    }
  }
}

int EC_GROUP_cmp(const EC_GROUP *a1, const EC_GROUP *a2, BN_CTX *a3)
{
  if (a1 == a2)
  {
    return 0;
  }

  v3 = *(a1 + 128);
  if (v3 != *(a2 + 128))
  {
    return 1;
  }

  if (v3)
  {
    return 0;
  }

  if (*a1 != *a2 || !*(a1 + 133) || !*(a2 + 133))
  {
    return 1;
  }

  if (BN_cmp((a1 + 256), (a2 + 256)) || BN_cmp((a1 + 320), (a2 + 320)))
  {
    return 1;
  }

  v7 = *(a1 + 82);
  if (v7)
  {
    v8 = 8 * v7;
    if ((8 * v7) < 0x20)
    {
      v9 = 0;
      v10 = 0;
      v11 = a2;
      goto LABEL_19;
    }

    v12 = (a1 + 360);
    v11 = a2;
    v13 = (a2 + 360);
    v10 = v8 & 0xFFFFFFFFFFFFFFE0;
    v14 = 0uLL;
    v15 = v8 & 0xFFFFFFFFFFFFFFE0;
    v16 = 0uLL;
    do
    {
      v17 = *v12;
      v18 = v12[1];
      v12 += 2;
      v19 = *v13;
      v20 = v13[1];
      v13 += 2;
      v14 = vorrq_s8(veorq_s8(v19, v17), v14);
      v16 = vorrq_s8(veorq_s8(v20, v18), v16);
      v15 -= 32;
    }

    while (v15);
    v21 = vorrq_s8(v16, v14);
    *v21.i8 = vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL));
    v22 = v21.i64[0] | HIDWORD(v21.i64[0]) | ((v21.i64[0] | HIDWORD(v21.i64[0])) >> 16);
    v9 = v22 | BYTE1(v22);
    v23 = v8 - v10;
    if (v8 != v10)
    {
      if ((v7 & 3) != 0)
      {
LABEL_19:
        v24 = v9;
        v25 = (a1 + v10 + 360);
        v26 = (v11 + v10 + 360);
        v27 = v10 - v8;
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
        v9 = v31 | BYTE1(v31);
        goto LABEL_22;
      }

      v50 = v10 + 360;
      v51 = a2 + v10 + 360;
      v52 = a1 + v50;
      do
      {
        v54 = *v52++;
        v53 = v54;
        v55 = *v51++;
        v9 |= v55 ^ v53;
        --v23;
      }

      while (v23);
    }

LABEL_22:
    if (v9)
    {
      return 1;
    }

    if (v8 < 0x20)
    {
      v32 = 0;
      v33 = 0;
      goto LABEL_29;
    }

    v33 = v8 & 0xFFFFFFFFFFFFFFE0;
    v34 = (a1 + 448);
    v35 = (v11 + 448);
    v36 = 0uLL;
    v37 = v8 & 0xFFFFFFFFFFFFFFE0;
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
    v32 = v40 | BYTE1(v40);
    v41 = v8 - v33;
    if (v8 != v33)
    {
      if ((v7 & 3) != 0)
      {
LABEL_29:
        v42 = v32;
        v43 = (a1 + v33 + 432);
        v44 = (v11 + v33 + 432);
        v45 = v33 - v8;
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
        v32 = v49 | BYTE1(v49);
        goto LABEL_32;
      }

      v56 = v11 + v33 + 432;
      v57 = a1 + v33 + 432;
      do
      {
        v59 = *v57++;
        v58 = v59;
        v60 = *v56++;
        v32 |= v60 ^ v58;
        --v41;
      }

      while (v41);
    }

LABEL_32:
    if (!v32)
    {
      return ec_GFp_simple_points_equal(a1, a1 + 1, a2 + 1) ^ 1;
    }

    return 1;
  }

  return ec_GFp_simple_points_equal(a1, a1 + 1, a2 + 1) ^ 1;
}

uint64_t ec_GFp_simple_points_equal(uint64_t a1, int8x16_t *a2, int8x16_t *a3)
{
  v7 = *(*a1 + 88);
  v6 = *(*a1 + 96);
  v6(a1, v53, a3 + 9);
  v7(a1, v56, a2, v53);
  v6(a1, v54, a2 + 9);
  v7(a1, v55, a3, v54);
  bn_mod_sub_words(v56, v56, v55, *(a1 + 320), v58, *(a1 + 328));
  v8 = *(a1 + 328);
  if (v8 < 1)
  {
    v11 = -1;
    goto LABEL_11;
  }

  if (v8 > 3)
  {
    v9 = v8 & 0x7FFFFFFC;
    v12 = v57;
    v13 = 0uLL;
    v14 = v9;
    v15 = 0uLL;
    do
    {
      v13 = vorrq_s8(v12[-1], v13);
      v15 = vorrq_s8(*v12, v15);
      v12 += 2;
      v14 -= 4;
    }

    while (v14);
    v16 = vorrq_s8(v15, v13);
    v10 = vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
    if (v9 == v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v17 = v8 - v9;
  v18 = &v56[v9];
  do
  {
    v19 = *v18++;
    *&v10 |= v19;
    --v17;
  }

  while (v17);
LABEL_10:
  v11 = *&v10 == 0;
LABEL_11:
  v7(a1, v53, v53, a3[9].i8);
  v7(a1, v56, &a2[4].i64[1], v53);
  v7(a1, v54, v54, a2[9].i8);
  v7(a1, v55, &a3[4].i64[1], v54);
  bn_mod_sub_words(v56, v56, v55, *(a1 + 320), v58, *(a1 + 328));
  v20 = *(a1 + 328);
  if (v20 < 1)
  {
    return 1;
  }

  if (v20 < 4)
  {
    v21 = 0;
    v22 = 0;
LABEL_18:
    v29 = v20 - v21;
    v30 = &v56[v21];
    do
    {
      v31 = *v30++;
      *&v22 |= v31;
      --v29;
    }

    while (v29);
    goto LABEL_20;
  }

  v21 = v20 & 0x7FFFFFFC;
  v24 = v57;
  v25 = 0uLL;
  v26 = v21;
  v27 = 0uLL;
  do
  {
    v25 = vorrq_s8(v24[-1], v25);
    v27 = vorrq_s8(*v24, v27);
    v24 += 2;
    v26 -= 4;
  }

  while (v26);
  v28 = vorrq_s8(v27, v25);
  v22 = vorr_s8(*v28.i8, *&vextq_s8(v28, v28, 8uLL));
  if (v21 != v20)
  {
    goto LABEL_18;
  }

LABEL_20:
  if (v20 == 1)
  {
    v32 = 0;
    v33 = 0;
LABEL_25:
    v38 = v20 - v32;
    v39 = &a2[9].i64[v32];
    do
    {
      v40 = *v39++;
      v33 |= v40;
      --v38;
    }

    while (v38);
    goto LABEL_27;
  }

  v34 = 0;
  v35 = 0;
  v32 = v20 & 0x7FFFFFFE;
  v36 = &a2[9].i64[1];
  v37 = v32;
  do
  {
    v34 |= *(v36 - 1);
    v35 |= *v36;
    v36 += 2;
    v37 -= 2;
  }

  while (v37);
  v33 = v35 | v34;
  if (v32 != v20)
  {
    goto LABEL_25;
  }

LABEL_27:
  if (v20 < 4)
  {
    v41 = 0;
    v42 = 0;
LABEL_32:
    v48 = v20 - v41;
    v49 = &a3[9].i64[v41];
    do
    {
      v50 = *v49++;
      *&v42 |= v50;
      --v48;
    }

    while (v48);
    goto LABEL_34;
  }

  v41 = v20 & 0x7FFFFFFC;
  v43 = a3 + 10;
  v44 = 0uLL;
  v45 = v41;
  v46 = 0uLL;
  do
  {
    v44 = vorrq_s8(v43[-1], v44);
    v46 = vorrq_s8(*v43, v46);
    v43 += 2;
    v45 -= 4;
  }

  while (v45);
  v47 = vorrq_s8(v46, v44);
  v42 = vorr_s8(*v47.i8, *&vextq_s8(v47, v47, 8uLL));
  if (v41 != v20)
  {
    goto LABEL_32;
  }

LABEL_34:
  if (v22)
  {
    v51 = 0;
  }

  else
  {
    v51 = v11;
  }

  v52 = v51 & (*&v42 != 0);
  if (!v33)
  {
    v52 = ~(*&v42 != 0);
  }

  return v52 & 1;
}

uint64_t ec_GFp_simple_group_get_curve(uint64_t a1, BIGNUM *a, BIGNUM *a3, BIGNUM *a4)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a || (result = BN_copy(a, (a1 + 320))) != 0)
  {
    if (!a3 || (*len = 0, (*(*a1 + 104))(a1, s, len, a1 + 360), (result = BN_bin2bn(s, len[0], a3)) != 0))
    {
      if (!a4)
      {
        return 1;
      }

      *len = 0;
      (*(*a1 + 104))(a1, s, len, a1 + 432);
      result = BN_bin2bn(s, len[0], a4);
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

EC_POINT *__cdecl EC_POINT_new(const EC_GROUP *a1)
{
  if (a1)
  {
    v2 = malloc_type_malloc(0xE8uLL, 0xB4E622C9uLL);
    if (v2)
    {
      v3 = v2;
      *v2 = 224;
      result = (v2 + 8);
      if (!*(a1 + 128))
      {
        v5 = atomic_load(a1 + 135);
        if (v5 != -1)
        {
          for (i = v5; i != -1; v5 = i)
          {
            atomic_compare_exchange_strong(a1 + 135, &i, v5 + 1);
            if (i == v5)
            {
              break;
            }
          }
        }
      }

      *(v3 + 1) = a1;
      *(v3 + 1) = 0u;
      *(v3 + 2) = 0u;
      *(v3 + 3) = 0u;
      *(v3 + 4) = 0u;
      *(v3 + 5) = 0u;
      *(v3 + 6) = 0u;
      *(v3 + 7) = 0u;
      *(v3 + 8) = 0u;
      *(v3 + 9) = 0u;
      *(v3 + 10) = 0u;
      *(v3 + 11) = 0u;
      *(v3 + 12) = 0u;
      *(v3 + 13) = 0u;
      *(v3 + 28) = 0;
    }

    else
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      return 0;
    }
  }

  else
  {
    ERR_put_error(15, 0, 67, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc", 407);
    return 0;
  }

  return result;
}

void EC_POINT_free(EC_POINT *a1)
{
  if (a1)
  {
    EC_GROUP_free(*a1);
    v3 = *(a1 - 1);
    v2 = a1 - 8;
    v4 = v3 + 8;
    if (v3 != -8)
    {
      bzero(v2, v4);
    }

    free(v2);
  }
}

EC_POINT *__cdecl EC_POINT_dup(EC_POINT *result, const EC_GROUP *a2)
{
  if (!result)
  {
    return result;
  }

  if (!a2)
  {
    v8 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc";
    v9 = 15;
    v10 = 67;
    v11 = 407;
LABEL_9:
    ERR_put_error(v9, a2, v10, v8, v11);
    return 0;
  }

  v2 = result;
  v3 = a2;
  v4 = malloc_type_malloc(0xE8uLL, 0xB4E622C9uLL);
  if (!v4)
  {
    v8 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v9 = 14;
    LODWORD(a2) = 0;
    v10 = 65;
    v11 = 217;
    goto LABEL_9;
  }

  v6 = v4;
  *v4 = 224;
  v7 = (v4 + 8);
  if (!*(v3 + 128))
  {
    v12 = atomic_load(v3 + 135);
    if (v12 != -1)
    {
      for (i = v12; i != -1; v12 = i)
      {
        atomic_compare_exchange_strong(v3 + 135, &i, v12 + 1);
        if (i == v12)
        {
          break;
        }
      }
    }
  }

  *(v4 + 1) = 0u;
  *(v4 + 1) = v3;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 5) = 0u;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 8) = 0u;
  *(v4 + 9) = 0u;
  *(v4 + 10) = 0u;
  *(v4 + 11) = 0u;
  *(v4 + 12) = 0u;
  *(v4 + 13) = 0u;
  *(v4 + 28) = 0;
  if (EC_GROUP_cmp(v3, *v2, v5))
  {
    ERR_put_error(15, 0, 106, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc", 439);
    EC_GROUP_free(*(v6 + 1));
    free(v6);
    return 0;
  }

  result = v7;
  if (v7 != v2)
  {
    *(v6 + 1) = *(v2 + 8);
    v14 = *(v2 + 24);
    v15 = *(v2 + 40);
    v16 = *(v2 + 56);
    *(v6 + 10) = *(v2 + 9);
    *(v6 + 3) = v15;
    *(v6 + 4) = v16;
    *(v6 + 2) = v14;
    v18 = *(v2 + 7);
    v17 = *(v2 + 8);
    v19 = *(v2 + 18);
    *(v6 + 104) = *(v2 + 6);
    *(v6 + 19) = v19;
    *(v6 + 136) = v17;
    *(v6 + 120) = v18;
    *(v6 + 88) = *(v2 + 5);
    v20 = *(v2 + 184);
    v21 = *(v2 + 200);
    v22 = *(v2 + 168);
    *(v6 + 28) = *(v2 + 27);
    *(v6 + 12) = v20;
    *(v6 + 13) = v21;
    *(v6 + 11) = v22;
    *(v6 + 10) = *(v2 + 152);
  }

  return result;
}

BOOL ec_GFp_simple_is_on_curve(uint64_t a1, int8x16_t *a2)
{
  v5 = *(*a1 + 88);
  v4 = *(*a1 + 96);
  v4(a1, v33, a2);
  v4(a1, &v31, a2 + 9);
  v4(a1, v30, &v31);
  v5(a1, v29, v30, v31.i64);
  if (*(a1 + 528))
  {
    bn_mod_add_words(&v31, v30, v30, *(a1 + 320), v34, *(a1 + 328));
    bn_mod_add_words(&v31, v31.i64, v30, *(a1 + 320), v34, *(a1 + 328));
    bn_mod_sub_words(v33, v33, &v31, *(a1 + 320), v34, *(a1 + 328));
  }

  else
  {
    v5(a1, v31.i64, v30, (a1 + 360));
    bn_mod_add_words(v33, v33, v31.i64, *(a1 + 320), v34, *(a1 + 328));
  }

  v5(a1, v33, v33, a2->i64);
  v5(a1, v31.i64, (a1 + 432), v29);
  bn_mod_add_words(v33, v33, v31.i64, *(a1 + 320), v34, *(a1 + 328));
  v4(a1, &v31, (a2 + 72));
  bn_mod_sub_words(&v31, &v31, v33, *(a1 + 320), v34, *(a1 + 328));
  v6 = *(a1 + 328);
  if (v6 < 1)
  {
    return 1;
  }

  if (v6 < 4)
  {
    v7 = 0;
    v8 = 0;
LABEL_11:
    v15 = v6 - v7;
    v16 = &v31.i64[v7];
    do
    {
      v17 = *v16++;
      *&v8 |= v17;
      --v15;
    }

    while (v15);
    goto LABEL_13;
  }

  v7 = v6 & 0x7FFFFFFC;
  v10 = &v32;
  v11 = 0uLL;
  v12 = v7;
  v13 = 0uLL;
  do
  {
    v11 = vorrq_s8(v10[-1], v11);
    v13 = vorrq_s8(*v10, v13);
    v10 += 2;
    v12 -= 4;
  }

  while (v12);
  v14 = vorrq_s8(v13, v11);
  v8 = vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL));
  if (v7 != v6)
  {
    goto LABEL_11;
  }

LABEL_13:
  if (v6 <= 3)
  {
    v18 = 0;
    v19 = 0;
LABEL_18:
    v25 = v6 - v18;
    v26 = &a2[9].i64[v18];
    do
    {
      v27 = *v26++;
      *&v19 |= v27;
      --v25;
    }

    while (v25);
    goto LABEL_20;
  }

  v18 = v6 & 0x7FFFFFFC;
  v20 = a2 + 10;
  v21 = 0uLL;
  v22 = v18;
  v23 = 0uLL;
  do
  {
    v21 = vorrq_s8(v20[-1], v21);
    v23 = vorrq_s8(*v20, v23);
    v20 += 2;
    v22 -= 4;
  }

  while (v22);
  v24 = vorrq_s8(v23, v21);
  v19 = vorr_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
  if (v18 != v6)
  {
    goto LABEL_18;
  }

LABEL_20:
  if (v19)
  {
    return *&v8 == 0;
  }

  else
  {
    return 1;
  }
}

int EC_POINT_get_affine_coordinates_GFp(const EC_GROUP *a1, const EC_POINT *a2, BIGNUM *x, BIGNUM *y, BN_CTX *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!**a1)
  {
    v9 = 66;
    v10 = 505;
    goto LABEL_5;
  }

  if (EC_GROUP_cmp(a1, *a2, x))
  {
    v9 = 106;
    v10 = 509;
LABEL_5:
    ERR_put_error(15, 0, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc", v10);
    LODWORD(v11) = 0;
    return v11;
  }

  if (x)
  {
    v12 = v16;
  }

  else
  {
    v12 = 0;
  }

  if (y)
  {
    v13 = v15;
  }

  else
  {
    v13 = 0;
  }

  LODWORD(v11) = (**a1)(a1, a2 + 8, v12, v13);
  if (v11)
  {
    if (!x || (v17 = 0, (*(*a1 + 104))(a1, s, &v17, v16), (v11 = BN_bin2bn(s, v17, x)) != 0))
    {
      if (!y || (v17 = 0, (*(*a1 + 104))(a1, s, &v17, v15), (v11 = BN_bin2bn(s, v17, y)) != 0))
      {
        LODWORD(v11) = 1;
      }
    }
  }

  return v11;
}

uint64_t ec_point_set_affine_coordinates(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v8 = *(*a1 + 88);
  v9 = *(*a1 + 96);
  v9(a1, v47, a4);
  v9(a1, v45, a3);
  bn_mod_add_words(v45, v45, (a1 + 360), *(a1 + 320), v49, *(a1 + 328));
  v8(a1, v45, v45, a3);
  bn_mod_add_words(v45, v45, (a1 + 432), *(a1 + 320), v49, *(a1 + 328));
  v10 = *(a1 + 328);
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = 8 * v10;
  if ((8 * v10) < 0x20)
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_8;
  }

  v13 = v11 & 0xFFFFFFFFFFFFFFE0;
  v14 = &v48;
  v15 = &v46;
  v16 = 0uLL;
  v17 = v11 & 0xFFFFFFFFFFFFFFE0;
  v18 = 0uLL;
  do
  {
    v16 = vorrq_s8(veorq_s8(v15[-1], v14[-1]), v16);
    v18 = vorrq_s8(veorq_s8(*v15, *v14), v18);
    v14 += 2;
    v15 += 2;
    v17 -= 32;
  }

  while (v17);
  v19 = vorrq_s8(v18, v16);
  *v19.i8 = vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
  v20 = v19.i64[0] | HIDWORD(v19.i64[0]) | ((v19.i64[0] | HIDWORD(v19.i64[0])) >> 16);
  v12 = v20 | BYTE1(v20);
  v21 = v11 - v13;
  if (v11 != v13)
  {
    if ((v10 & 3) != 0)
    {
LABEL_8:
      v22 = v12;
      v23 = &v47[v13];
      v24 = (v45 + v13);
      v25 = v13 - v11;
      do
      {
        v26 = *v23++;
        v27 = v26;
        v28 = *v24++;
        v22 = vorr_s8(veor_s8(v28, v27), v22);
        v25 += 8;
      }

      while (v25);
      v29 = *&v22 | HIDWORD(*&v22) | ((*&v22 | HIDWORD(*&v22)) >> 16);
      v12 = v29 | BYTE1(v29);
      goto LABEL_11;
    }

    v40 = v45 + v13;
    v41 = &v47[v13];
    do
    {
      v43 = *v41++;
      v42 = v43;
      v44 = *v40++;
      v12 |= v44 ^ v42;
      --v21;
    }

    while (v21);
  }

LABEL_11:
  if (!v12)
  {
LABEL_14:
    *a2 = *a3;
    v34 = *(a3 + 16);
    v35 = *(a3 + 32);
    v36 = *(a3 + 48);
    *(a2 + 64) = *(a3 + 64);
    *(a2 + 32) = v35;
    *(a2 + 48) = v36;
    *(a2 + 16) = v34;
    result = 1;
    goto LABEL_15;
  }

  ERR_put_error(15, 0, 120, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc", 565);
  if (*(a1 + 532))
  {
    result = 0;
    *a2 = *(a1 + 16);
    v31 = *(a1 + 32);
    v32 = *(a1 + 48);
    v33 = *(a1 + 64);
    *(a2 + 64) = *(a1 + 80);
    *(a2 + 32) = v32;
    *(a2 + 48) = v33;
    *(a2 + 16) = v31;
    v4 = a1 + 88;
LABEL_15:
    *(a2 + 72) = *v4;
    v37 = *(v4 + 16);
    v38 = *(v4 + 32);
    v39 = *(v4 + 48);
    *(a2 + 136) = *(v4 + 64);
    *(a2 + 120) = v39;
    *(a2 + 104) = v38;
    *(a2 + 88) = v37;
    return result;
  }

  return 0;
}

int EC_POINT_set_affine_coordinates_GFp(const EC_GROUP *a1, EC_POINT *a2, const BIGNUM *x, const BIGNUM *y, BN_CTX *a5)
{
  if (EC_GROUP_cmp(a1, *a2, x))
  {
    v9 = 106;
    v10 = 586;
LABEL_10:
    ERR_put_error(15, 0, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc", v10);
    return 0;
  }

  if (!x || !y)
  {
    v9 = 67;
    v10 = 591;
    goto LABEL_10;
  }

  if (ec_bignum_to_felem(a1, v37, x) && ec_bignum_to_felem(a1, v36, y) && ec_point_set_affine_coordinates(a1, v29, v37, v36))
  {
    v11 = v29[0];
    *(a2 + 24) = v29[1];
    v12 = v29[3];
    *(a2 + 40) = v29[2];
    *(a2 + 56) = v12;
    *(a2 + 9) = v30;
    *(a2 + 8) = v11;
    v13 = v31;
    *(a2 + 18) = v35;
    v14 = v34;
    *(a2 + 7) = v33;
    *(a2 + 8) = v14;
    v15 = v32;
    *(a2 + 5) = v13;
    *(a2 + 6) = v15;
    *(a2 + 152) = *(a1 + 10);
    v16 = *(a1 + 11);
    v17 = *(a1 + 12);
    v18 = *(a1 + 13);
    *(a2 + 27) = *(a1 + 28);
    *(a2 + 200) = v18;
    *(a2 + 184) = v17;
    *(a2 + 168) = v16;
    return 1;
  }

  else
  {
    result = 0;
    if (*(a1 + 133))
    {
      *(a2 + 8) = *(a1 + 1);
      v20 = *(a1 + 2);
      v21 = *(a1 + 3);
      v22 = *(a1 + 4);
      *(a2 + 9) = *(a1 + 10);
      *(a2 + 56) = v22;
      *(a2 + 40) = v21;
      *(a2 + 24) = v20;
      v23 = *(a1 + 120);
      v24 = *(a1 + 136);
      v25 = *(a1 + 104);
      *(a2 + 18) = *(a1 + 19);
      *(a2 + 7) = v23;
      *(a2 + 8) = v24;
      *(a2 + 6) = v25;
      *(a2 + 5) = *(a1 + 88);
      v27 = *(a1 + 12);
      v26 = *(a1 + 13);
      v28 = *(a1 + 11);
      *(a2 + 27) = *(a1 + 28);
      *(a2 + 168) = v28;
      *(a2 + 200) = v26;
      *(a2 + 184) = v27;
      *(a2 + 152) = *(a1 + 10);
    }

    else
    {
      *(a2 + 27) = 0;
      *(a2 + 200) = 0u;
      *(a2 + 184) = 0u;
      *(a2 + 168) = 0u;
      *(a2 + 152) = 0u;
      *(a2 + 136) = 0u;
      *(a2 + 120) = 0u;
      *(a2 + 104) = 0u;
      *(a2 + 88) = 0u;
      *(a2 + 72) = 0u;
      *(a2 + 56) = 0u;
      *(a2 + 40) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 8) = 0u;
    }
  }

  return result;
}

uint64_t ec_bignum_to_felem(uint64_t a1, uint64_t a2, BIGNUM *a)
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 328);
  if (v3 >= 1)
  {
    v4 = *(a1 + 320);
    while (!*(v4 - 8 + 8 * v3))
    {
      v5 = __OFSUB__(v3--, 1);
      if ((v3 < 0) ^ v5 | (v3 == 0))
      {
        goto LABEL_23;
      }
    }

LABEL_9:
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
    if (a->neg)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if (v3)
  {
    v4 = *(a1 + 320);
    goto LABEL_9;
  }

LABEL_23:
  v15 = 0;
  if (a->neg)
  {
    goto LABEL_26;
  }

LABEL_24:
  if (*(a1 + 336) || (BN_ucmp(a, (a1 + 320)) & 0x80000000) == 0)
  {
    goto LABEL_26;
  }

  v20 = a2;
  v21 = a1;
  d = a->d;
  v23 = 8 * a->top;
  v24 = v23 - v15;
  if (v23 > v15)
  {
    if (v24 < 8)
    {
      v25 = 0;
      v26 = v15;
      goto LABEL_41;
    }

    if (v24 >= 0x20)
    {
      v27 = v24 & 0xFFFFFFFFFFFFFFE0;
      v28 = (d + v15 + 16);
      v29 = 0uLL;
      v30 = v24 & 0xFFFFFFFFFFFFFFE0;
      v31 = 0uLL;
      do
      {
        v29 = vorrq_s8(v28[-1], v29);
        v31 = vorrq_s8(*v28, v31);
        v28 += 2;
        v30 -= 32;
      }

      while (v30);
      v32 = vorrq_s8(v31, v29);
      *v32.i8 = vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
      v33 = v32.i64[0] | HIDWORD(v32.i64[0]) | ((v32.i64[0] | HIDWORD(v32.i64[0])) >> 16);
      v25 = v33 | BYTE1(v33);
      if (v24 == v27)
      {
        goto LABEL_44;
      }

      if ((v24 & 0x18) == 0)
      {
        v26 = v15 + v27;
LABEL_41:
        v39 = v26 - v23;
        v40 = d + v26;
        do
        {
          v41 = *v40++;
          v25 |= v41;
        }

        while (!__CFADD__(v39++, 1));
        goto LABEL_44;
      }
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    v26 = v15 + (v24 & 0xFFFFFFFFFFFFFFF8);
    v34 = v25;
    v35 = (d + v15 + v27);
    v36 = v27 - (v24 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v37 = *v35++;
      v34 = vorr_s8(v37, v34);
      v36 += 8;
    }

    while (v36);
    v38 = *&v34 | HIDWORD(*&v34) | ((*&v34 | HIDWORD(*&v34)) >> 16);
    v25 = v38 | BYTE1(v38);
    if (v24 != (v24 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_41;
    }

LABEL_44:
    if (!v25)
    {
      goto LABEL_45;
    }

LABEL_26:
    ERR_put_error(15, 0, 101, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/felem.cc.inc", 37);
    return 0;
  }

LABEL_45:
  if (v23 >= v15)
  {
    v43 = v15;
  }

  else
  {
    v43 = 8 * a->top;
  }

  if (!v43)
  {
    goto LABEL_55;
  }

  if (v43 < 8 || &v59[v15 - v43] < d + v43 && d < &v59[v15])
  {
    v44 = 0;
    goto LABEL_53;
  }

  if (v43 >= 0x20)
  {
    v44 = v43 & 0x7FFFFFE0;
    v49 = (d + 2);
    v50 = &v59[v15 - 16];
    v51 = v44;
    do
    {
      v52 = vrev64q_s8(v49[-1]);
      v53 = vrev64q_s8(*v49);
      v50[-1] = vextq_s8(v53, v53, 8uLL);
      *v50 = vextq_s8(v52, v52, 8uLL);
      v49 += 2;
      v50 -= 2;
      v51 -= 32;
    }

    while (v51);
    if (v43 == v44)
    {
      goto LABEL_55;
    }

    if ((v43 & 0x18) == 0)
    {
LABEL_53:
      v45 = v43 - v44;
      v46 = &v59[~v44 + v15];
      v47 = d + v44;
      do
      {
        v48 = *v47++;
        *v46-- = v48;
        --v45;
      }

      while (v45);
      goto LABEL_55;
    }
  }

  else
  {
    v44 = 0;
  }

  v54 = v44;
  v44 = v43 & 0x7FFFFFF8;
  v55 = (d + v54);
  v56 = &v59[v15 - v54 - 8];
  v57 = v54 - v44;
  do
  {
    v58 = *v55++;
    *v56-- = vrev64_s8(v58);
    v57 += 8;
  }

  while (v57);
  if (v43 != v44)
  {
    goto LABEL_53;
  }

LABEL_55:
  if (v23 < v15)
  {
    bzero(v59, v15 - v43);
    v21 = a1;
    v20 = a2;
  }

  return (*(*v21 + 112))(v21, v20, v59, v15);
}

uint64_t ec_point_mul_no_self_test(const EC_GROUP *a1, uint64_t a2, BN_CTX *a3, const EC_GROUP **a4, char **a5, uint64_t a6)
{
  if ((a4 == 0) != (a5 == 0) || !(a3 | a5))
  {
    v13 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc";
    v14 = 15;
    v15 = 67;
    v16 = 672;
    goto LABEL_6;
  }

  if (EC_GROUP_cmp(a1, *a2, a3) || a4 && EC_GROUP_cmp(a1, *a4, v12))
  {
    v13 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc";
    v14 = 15;
    v15 = 106;
    v16 = 678;
LABEL_6:
    ERR_put_error(v14, 0, v15, v13, v16);
    return 0;
  }

  if (a6)
  {
    v18 = a6;
    v19 = 0;
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  v20 = malloc_type_malloc(0x48uLL, 0xB4E622C9uLL);
  if (!v20)
  {
    v13 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v14 = 14;
    v15 = 65;
    v16 = 217;
    goto LABEL_6;
  }

  *v20 = 64;
  *(v20 + 8) = 0u;
  v19 = (v20 + 8);
  *(v20 + 24) = 0u;
  *(v20 + 40) = 0u;
  *(v20 + 56) = 0u;
  v18 = (v20 + 8);
  if (!a3)
  {
LABEL_12:
    if (!a5)
    {
      goto LABEL_30;
    }

    goto LABEL_19;
  }

LABEL_16:
  v21 = v18;
  if (!arbitrary_bignum_to_scalar(a1, v30[0].i8, a3, v18))
  {
    goto LABEL_27;
  }

  (*(*a1 + 40))(a1, a2 + 8, v30);
  if (!ec_GFp_simple_is_on_curve(a1, (a2 + 8)))
  {
    v22 = 796;
    goto LABEL_26;
  }

  v18 = v21;
  if (!a5)
  {
    goto LABEL_30;
  }

LABEL_19:
  if (!arbitrary_bignum_to_scalar(a1, v32, a5, v18))
  {
    goto LABEL_27;
  }

  (*(*a1 + 32))(a1, v30, a4 + 1, v32);
  if (ec_GFp_simple_is_on_curve(a1, v30))
  {
    if (a3)
    {
      (*(*a1 + 16))(a1, a2 + 8, a2 + 8, v30);
    }

    else
    {
      v23 = v30[11];
      *(a2 + 168) = v30[10];
      *(a2 + 184) = v23;
      *(a2 + 200) = v30[12];
      v24 = v30[7];
      *(a2 + 104) = v30[6];
      *(a2 + 120) = v24;
      v25 = v30[9];
      *(a2 + 136) = v30[8];
      *(a2 + 152) = v25;
      v26 = v30[3];
      *(a2 + 40) = v30[2];
      *(a2 + 56) = v26;
      v27 = v30[5];
      *(a2 + 72) = v30[4];
      *(a2 + 88) = v27;
      v28 = v30[1];
      *(a2 + 8) = v30[0];
      *(a2 + 216) = v31;
      *(a2 + 24) = v28;
    }

LABEL_30:
    result = 1;
    if (v19)
    {
      goto LABEL_31;
    }

    return result;
  }

  v22 = 775;
LABEL_26:
  ERR_put_error(15, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc", v22);
LABEL_27:
  result = 0;
  if (v19)
  {
LABEL_31:
    v29 = result;
    BN_CTX_free(v19);
    return v29;
  }

  return result;
}

uint64_t arbitrary_bignum_to_scalar(uint64_t a1, char *a2, char **a3, uint64_t a4)
{
  if (ec_bignum_to_scalar(a1, a2, a3))
  {
    return 1;
  }

  ERR_clear_error();
  if ((*(a4 + 56) & 1) == 0)
  {
    v9 = *(a4 + 48);
    if (!bssl::Vector<unsigned long>::MaybeGrow((a4 + 24)))
    {
      *(a4 + 56) = 257;
      ERR_clear_error();
      result = BN_CTX_get(a4);
      if (!result)
      {
        goto LABEL_22;
      }

      goto LABEL_8;
    }

    *(*(a4 + 24) + 8 * (*(a4 + 32))++) = v9;
  }

  result = BN_CTX_get(a4);
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_8:
  v10 = result;
  result = BN_div(0, result, a3, (a1 + 256), a4);
  if (!result)
  {
    goto LABEL_22;
  }

  if (*(v10 + 16))
  {
    result = bn_usub_consttime(v10, (a1 + 256), v10);
    if (!result)
    {
      goto LABEL_22;
    }

    v11 = *(v10 + 8);
    if (v11 < 1)
    {
      if (!v11)
      {
LABEL_19:
        *(v10 + 16) = 0;
      }
    }

    else
    {
      while (!*(*v10 - 8 + 8 * v11))
      {
        v12 = __OFSUB__(v11--, 1);
        if ((v11 < 0) ^ v12 | (v11 == 0))
        {
          *(v10 + 8) = 0;
          goto LABEL_19;
        }
      }

      *(v10 + 8) = v11;
    }
  }

  result = ec_bignum_to_scalar(a1, a2, v10);
LABEL_22:
  if ((*(a4 + 56) & 1) == 0)
  {
    v13 = *(a4 + 32);
    if (!v13)
    {
      abort();
    }

    *(a4 + 48) = *(*(a4 + 24) + 8 * v13 - 8);
    *(a4 + 32) = v13 - 1;
  }

  return result;
}

uint64_t ec_point_mul_scalar_base(uint64_t a1, int8x16_t *a2, uint64_t a3)
{
  if (a3)
  {
    (*(*a1 + 40))(a1);
    if (ec_GFp_simple_is_on_curve(a1, a2))
    {
      return 1;
    }

    else
    {
      ERR_put_error(15, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc", 796);
      return 0;
    }
  }

  else
  {
    ERR_put_error(15, 0, 67, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc", 785);
    return 0;
  }
}

uint64_t ec_point_mul_scalar(uint64_t a1, int8x16_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3 && a4)
  {
    (*(*a1 + 32))(a1);
    if (ec_GFp_simple_is_on_curve(a1, a2))
    {
      return 1;
    }

    else
    {
      ERR_put_error(15, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc", 775);
      return 0;
    }
  }

  else
  {
    ERR_put_error(15, 0, 67, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc", 766);
    return 0;
  }
}

uint64_t ec_get_x_coordinate_as_scalar(uint64_t a1, int8x16_t *a2, uint64_t a3)
{
  v70 = *MEMORY[0x277D85DE8];
  v65 = 0;
  result = ec_get_x_coordinate_as_bytes(a1, v69, &v65, 0x42uLL, a3);
  if (result)
  {
    v6 = 0uLL;
    v68 = 0u;
    memset(v67, 0, sizeof(v67));
    v66 = 0u;
    v7 = *(a1 + 264);
    v8 = v7 + 1;
    v9 = v65;
    if (v65 > 8 * (v7 + 1))
    {
      abort();
    }

    v10 = v65 - 8;
    if (v65 < 8)
    {
      v11 = &v66;
      v14 = v65;
      if (!v65)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = &v66;
      if (v10 <= 0x17)
      {
        goto LABEL_48;
      }

      v12 = (v10 >> 3) + 1;
      v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
      v14 = v65 - v13;
      v11 = (&v67[-1] + v13);
      v15 = v67;
      v16 = &v69[v65 - 16];
      v17 = (v7 + 1);
      v18.i64[0] = -1;
      v18.i64[1] = -1;
      v19 = v12 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v20 = vrev64q_s8(vextq_s8(v16[-1], v16[-1], 8uLL));
        v15[-1] = vrev64q_s8(vextq_s8(*v16, *v16, 8uLL));
        *v15 = v20;
        v17 = vaddq_s64(v17, v18);
        v6 = vaddq_s64(v6, v18);
        v15 += 2;
        v16 -= 2;
        v19 -= 4;
      }

      while (v19);
      v8 = vaddvq_s64(vpaddq_s64(v17, v6));
      v9 = v14;
      if (v12 != (v12 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_48:
        do
        {
          v14 = v9 - 8;
          *v11++ = bswap64(*(v69 + v9 + 4));
          --v8;
          v9 = v14;
        }

        while (v14 > 7);
      }

      if (!v14)
      {
LABEL_10:
        v21 = 8 * v8;
        if (8 * v8)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }

    v23 = 0;
    v24 = v69;
    do
    {
      v25 = *v24++;
      v23 = v25 | (v23 << 8);
      --v14;
    }

    while (v14);
    *v11++ = v23;
    v21 = 8 * (v8 - 1);
    if (v21)
    {
LABEL_11:
      bzero(v11, v21);
      v22 = *(a1 + 264);
      if (!v22)
      {
        return 1;
      }

      goto LABEL_18;
    }

LABEL_17:
    v22 = v7;
    if (!v7)
    {
      return 1;
    }

LABEL_18:
    v26 = v22;
    v27 = *(&v67[-1] + v22);
    v28 = *(a1 + 256);
    if (v26 >= 4)
    {
      v29 = 0;
      v30 = &v66;
      v31 = v26;
      v32 = a2;
      do
      {
        v33 = v30[1];
        v34 = *v30 - *v28;
        v35 = v34 >= v29;
        v36 = v34 - v29;
        v37 = !v35 || *v30 < *v28;
        *v32 = v36;
        v38 = v28[1];
        v35 = __CFSUB__(v33, v38, !v37);
        v32[1] = v33 - (v38 + v37);
        v39 = v28[2];
        v40 = v30[2];
        v41 = v30[3];
        v42 = v35;
        v35 = __CFSUB__(v40, v39, v35);
        v32[2] = v40 - (v39 + !v42);
        v43 = v28[3];
        v44 = v41 - (v43 + !v35);
        v29 = !__CFSUB__(v41, v43, v35);
        v32[3] = v44;
        v30 += 4;
        v28 += 4;
        v32 += 4;
        v31 -= 4;
      }

      while (v31 >= 4);
      if (!v31)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v29 = 0;
      v30 = &v66;
      v31 = v26;
      v32 = a2;
    }

    do
    {
      v46 = *v30++;
      v45 = v46;
      v47 = *v28++;
      v35 = v45 >= v47;
      v48 = v45 - v47;
      v49 = !v35;
      v35 = v48 >= v29;
      v50 = v48 - v29;
      if (v35)
      {
        v29 = v49;
      }

      else
      {
        v29 = 1;
      }

      *v32++ = v50;
      --v31;
    }

    while (v31);
LABEL_36:
    v51 = v27 - v29;
    v52 = ~v51;
    if (v26 >= 4)
    {
      v53 = v26 & 0xFFFFFFFFFFFFFFFCLL;
      v54 = vdupq_n_s64(v51);
      v55 = vdupq_n_s64(v52);
      v56 = v67;
      v57 = a2 + 1;
      v58 = v26 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v59 = vorrq_s8(vandq_s8(*v57, v55), vandq_s8(*v56, v54));
        v57[-1] = vorrq_s8(vandq_s8(v57[-1], v55), vandq_s8(v56[-1], v54));
        *v57 = v59;
        v56 += 2;
        v57 += 2;
        v58 -= 4;
      }

      while (v58);
      if (v53 == v26)
      {
        return 1;
      }
    }

    else
    {
      v53 = 0;
    }

    v60 = v26 - v53;
    v61 = 8 * v53;
    v62 = a2 + v53;
    v63 = (&v67[-1] + v61);
    do
    {
      v64 = *v63++;
      *v62 = *v62 & v52 | v64 & v51;
      ++v62;
      --v60;
    }

    while (v60);
    return 1;
  }

  return result;
}

uint64_t ec_get_x_coordinate_as_bytes(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 328);
  if (v8 < 1)
  {
    if (!v8)
    {
LABEL_24:
      v20 = 0;
      goto LABEL_25;
    }

    v9 = *(a1 + 320);
  }

  else
  {
    v9 = *(a1 + 320);
    while (!*(v9 - 8 + 8 * v8))
    {
      v10 = __OFSUB__(v8--, 1);
      if ((v8 < 0) ^ v10 | (v8 == 0))
      {
        goto LABEL_24;
      }
    }
  }

  v11 = v8 - 1;
  v12 = *(v9 + 8 * v11);
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
  if (v20 > a4)
  {
    ERR_put_error(15, 0, 100, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc", 924);
    return 0;
  }

LABEL_25:
  result = (**a1)(a1, a5, v22, 0);
  if (result)
  {
    (*(*a1 + 104))(a1, a2, a3, v22);
    *a3 = v20;
    return 1;
  }

  return result;
}

EC_KEY *EC_KEY_new(void)
{
  v0 = malloc_type_malloc(0x40uLL, 0xB4E622C9uLL);
  if (v0)
  {
    *v0 = 56;
    *(v0 + 8) = 0u;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 7) = 0;
    *(v0 + 36) = 0x100000004;
    return (v0 + 8);
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }
}

EC_KEY *__cdecl EC_KEY_new_by_curve_name(int nid)
{
  v2 = malloc_type_malloc(0x40uLL, 0xB4E622C9uLL);
  if (!v2)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  *v2 = 56;
  *(v2 + 8) = 0u;
  v3 = (v2 + 8);
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 7) = 0;
  *(v2 + 36) = 0x100000004;
  if (nid > 714)
  {
    if (nid == 715)
    {
      if (pthread_once(&stru_28100B498, EC_group_p384_init))
      {
        goto LABEL_17;
      }

      *v3 = &qword_2808D4B60;
      return v3;
    }

    else
    {
      if (nid != 716)
      {
LABEL_12:
        ERR_put_error(15, 0, 123, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc", 280);
        *v3 = 0;
        EC_KEY_free(v3);
        return 0;
      }

      if (pthread_once(&stru_28100B4A8, EC_group_p521_init))
      {
        goto LABEL_17;
      }

      *v3 = &qword_2808D4D80;
      return v3;
    }
  }

  else
  {
    if (nid != 415)
    {
      if (nid == 713)
      {
        if (!pthread_once(&stru_28100B478, EC_group_p224_init))
        {
          *v3 = &qword_2808D4720;
          return v3;
        }

LABEL_17:
        abort();
      }

      goto LABEL_12;
    }

    if (pthread_once(&stru_28100B488, EC_group_p256_init))
    {
      goto LABEL_17;
    }

    *v3 = &qword_2808D4940;
    return v3;
  }
}

void EC_KEY_free(EC_KEY *a1)
{
  if (a1)
  {
    v1 = atomic_load(a1 + 8);
    if (v1 != -1)
    {
      while (1)
      {
        if (!v1)
        {
          abort();
        }

        v2 = v1;
        atomic_compare_exchange_strong(a1 + 8, &v2, v1 - 1);
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
        v3 = *(a1 + 5);
        v4 = a1;
        if (v3)
        {
          v5 = *(v3 + 24);
          if (v5)
          {
            v5(a1);
            a1 = v4;
          }
        }

        CRYPTO_free_ex_data(&g_ec_ex_data_class, v4, a1 + 3);
        EC_GROUP_free(*v4);
        v6 = v4;
        v7 = *(v4 + 1);
        if (v7)
        {
          EC_GROUP_free(*v7);
          v9 = *(v7 - 1);
          v8 = v7 - 1;
          v10 = v9 + 8;
          if (v9 != -8)
          {
            bzero(v8, v10);
          }

          free(v8);
          v6 = v4;
        }

        v11 = *(v6 + 2);
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
          v6 = v4;
        }

        v16 = *(v6 - 1);
        v15 = v6 - 8;
        v17 = v16 + 8;
        if (v16 != -8)
        {
          v18 = v15;
          bzero(v15, v17);
          v15 = v18;
        }

        free(v15);
      }
    }
  }
}

int EC_KEY_set_group(EC_KEY *a1, const EC_GROUP *a2)
{
  if (*a1)
  {
    if (EC_GROUP_cmp(*a1, a2, v2))
    {
      ERR_put_error(15, 0, 130, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec_key.cc.inc", 165);
      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (a2)
    {
      if (!*(a2 + 128))
      {
        v4 = atomic_load(a2 + 135);
        if (v4 != -1)
        {
          for (i = v4; i != -1; v4 = i)
          {
            atomic_compare_exchange_strong(a2 + 135, &i, v4 + 1);
            if (i == v4)
            {
              break;
            }
          }
        }
      }
    }

    *a1 = a2;
    return a2 != 0;
  }
}

int EC_KEY_set_public_key(EC_KEY *a1, const EC_POINT *a2)
{
  v4 = *a1;
  if (v4)
  {
    if (a2)
    {
      if (EC_GROUP_cmp(v4, *a2, v2))
      {
        ERR_put_error(15, 0, 130, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec_key.cc.inc", 218);
        return 0;
      }

      v14 = *(a1 + 1);
      if (v14)
      {
        EC_GROUP_free(*v14);
        v16 = *(v14 - 1);
        v15 = v14 - 1;
        v17 = v16 + 8;
        if (v16 != -8)
        {
          bzero(v15, v17);
        }

        free(v15);
      }

      v13 = EC_POINT_dup(a2, *a1);
      v7 = (a1 + 8);
    }

    else
    {
      v9 = *(a1 + 1);
      v7 = (a1 + 8);
      v8 = v9;
      if (v9)
      {
        EC_GROUP_free(*v8);
        v11 = *(v8 - 1);
        v10 = v8 - 1;
        v12 = v11 + 8;
        if (v11 != -8)
        {
          bzero(v10, v12);
        }

        free(v10);
      }

      v13 = 0;
    }

    *v7 = v13;
    return v13 != 0;
  }

  else
  {
    ERR_put_error(15, 0, 114, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec_key.cc.inc", 213);
    return 0;
  }
}

int EC_KEY_set_private_key(EC_KEY *a1, const BIGNUM *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    v12 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec_key.cc.inc";
    v13 = 15;
    v14 = 114;
    v15 = 185;
LABEL_9:
    ERR_put_error(v13, 0, v14, v12, v15);
    return 0;
  }

  v5 = malloc_type_malloc(0x68uLL, 0xB4E622C9uLL);
  if (!v5)
  {
    v12 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v13 = 14;
    v14 = 65;
    v15 = 217;
    goto LABEL_9;
  }

  v6 = v5;
  *(v5 + 2) = 0u;
  *(v5 + 1) = v5 + 32;
  v7 = v5 + 8;
  *v5 = 96;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 5) = 0u;
  *(v5 + 12) = 0;
  *(v5 + 1) = 0u;
  v8 = *(v2 + 264);
  *(v5 + 4) = v8;
  *(v5 + 5) = v8;
  *(v5 + 7) = 2;
  if (!ec_bignum_to_scalar(*a1, v5 + 32, a2))
  {
    goto LABEL_22;
  }

  v9 = *(*a1 + 264);
  if (v9 < 1)
  {
    goto LABEL_22;
  }

  if (v9 <= 3)
  {
    v10 = 0;
    v11 = 0;
LABEL_19:
    v26 = v9 - v10;
    v27 = &v6[2].i64[v10];
    do
    {
      v28 = *v27++;
      *&v11 |= v28;
      --v26;
    }

    while (v26);
    goto LABEL_21;
  }

  v10 = v9 & 0x7FFFFFFC;
  v21 = v6 + 3;
  v22 = 0uLL;
  v23 = v10;
  v24 = 0uLL;
  do
  {
    v22 = vorrq_s8(v21[-1], v22);
    v24 = vorrq_s8(*v21, v24);
    v21 += 2;
    v23 -= 4;
  }

  while (v23);
  v25 = vorrq_s8(v24, v22);
  v11 = vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL));
  if (v10 != v9)
  {
    goto LABEL_19;
  }

LABEL_21:
  if (!*&v11)
  {
LABEL_22:
    ERR_put_error(15, 0, 113, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec_key.cc.inc", 198);
    free(v6);
    return 0;
  }

  v17 = *(a1 + 2);
  if (v17)
  {
    v19 = *(v17 - 8);
    v18 = (v17 - 8);
    v20 = v19 + 8;
    if (v19 != -8)
    {
      bzero(v18, v20);
    }

    free(v18);
  }

  *(a1 + 2) = v7;
  return 1;
}

uint64_t ec_bignum_to_scalar(uint64_t a1, char *__dst, char **a3)
{
  if (*(a3 + 4))
  {
    v3 = 109;
    v4 = 265;
LABEL_3:
    ERR_put_error(3, 0, v3, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/bn/bn.cc.inc", v4);
LABEL_4:
    ERR_put_error(15, 0, 133, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/scalar.cc.inc", 32);
    return 0;
  }

  v6 = *(a1 + 264);
  v7 = *(a3 + 2);
  if (v7 > v6)
  {
    v8 = *a3;
    v9 = v7 - v6;
    if ((v7 - v6) >= 4)
    {
      v11 = (v9 & 0xFFFFFFFFFFFFFFFCLL) + v6;
      v12 = &v8[8 * v6 + 16];
      v13 = 0uLL;
      v14 = v9 & 0xFFFFFFFFFFFFFFFCLL;
      v15 = 0uLL;
      do
      {
        v13 = vorrq_s8(v12[-1], v13);
        v15 = vorrq_s8(*v12, v15);
        v12 += 2;
        v14 -= 4;
      }

      while (v14);
      v16 = vorrq_s8(v15, v13);
      v10 = vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
      if (v9 == (v9 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_13:
        v7 = *(a1 + 264);
        if (v10)
        {
          v3 = 102;
          v4 = 272;
          goto LABEL_3;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 264);
    }

    v17 = v7 - v11;
    v18 = &v8[8 * v11];
    do
    {
      v19 = *v18;
      v18 += 8;
      *&v10 |= v19;
      --v17;
    }

    while (v17);
    goto LABEL_13;
  }

LABEL_15:
  if (v6)
  {
    v20 = a1;
    v21 = __dst;
    v22 = a3;
    bzero(__dst, 8 * v6);
    a3 = v22;
    a1 = v20;
    __dst = v21;
  }

  if (v7)
  {
    v23 = 8 * v7;
    v24 = a1;
    v25 = __dst;
    memcpy(__dst, *a3, v23);
    a1 = v24;
    __dst = v25;
  }

  v26 = *(a1 + 264);
  if (v26)
  {
    v27 = 0;
    v28 = *(a1 + 256);
    do
    {
      v30 = *__dst;
      __dst += 8;
      v29 = v30;
      v31 = *v28++;
      v32 = (((v31 ^ v29) - 1) & ~(v31 ^ v29)) >> 63;
      v27 = v32 & v27 | ((((v29 - v31) ^ v29 | v31 ^ v29) ^ v29) >> 63) & ~v32;
      --v26;
    }

    while (v26);
    v26 = (v27 >> 31) & 1;
  }

  if (!v26)
  {
    goto LABEL_4;
  }

  return 1;
}

int EC_KEY_check_key(const EC_KEY *a1)
{
  if (!a1 || (v3 = *a1) == 0 || (v4 = *(a1 + 1)) == 0)
  {
    v8 = 67;
    v9 = 243;
    goto LABEL_10;
  }

  if (EC_GROUP_cmp(*a1, *v4, v1))
  {
    ERR_put_error(15, 0, 106, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc", 474);
    goto LABEL_6;
  }

  v11 = *(v3 + 82);
  if (v11 < 1)
  {
LABEL_25:
    v8 = 119;
    v9 = 248;
    goto LABEL_10;
  }

  if (v11 < 4)
  {
    v12 = 0;
    v13 = 0;
LABEL_22:
    v21 = v11 - v12;
    v22 = &v4[v12 + 19];
    do
    {
      v23 = *v22++;
      *&v13 |= v23;
      --v21;
    }

    while (v21);
    goto LABEL_24;
  }

  v12 = v11 & 0x7FFFFFFC;
  v16 = (v4 + 21);
  v17 = 0uLL;
  v18 = v12;
  v19 = 0uLL;
  do
  {
    v17 = vorrq_s8(v16[-1], v17);
    v19 = vorrq_s8(*v16, v19);
    v16 += 2;
    v18 -= 4;
  }

  while (v18);
  v20 = vorrq_s8(v19, v17);
  v13 = vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
  if (v12 != v11)
  {
    goto LABEL_22;
  }

LABEL_24:
  if (!*&v13)
  {
    goto LABEL_25;
  }

LABEL_6:
  v6 = *a1;
  v7 = *(a1 + 1);
  if (EC_GROUP_cmp(*a1, *v7, v5))
  {
    ERR_put_error(15, 0, 106, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc", 483);
LABEL_8:
    v8 = 120;
    v9 = 254;
LABEL_10:
    ERR_put_error(15, 0, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec_key.cc.inc", v9);
    return 0;
  }

  if (!ec_GFp_simple_is_on_curve(v6, (v7 + 8)))
  {
    goto LABEL_8;
  }

  v14 = *(a1 + 2);
  if (v14)
  {
    v15 = *a1;
    (*(**a1 + 40))(*a1, v24, v14 + 24);
    if (!ec_GFp_simple_is_on_curve(v15, v24))
    {
      ERR_put_error(15, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc", 796);
      v8 = 15;
      v9 = 266;
      goto LABEL_10;
    }

    if (!ec_GFp_simple_points_equal(*a1, v24, (*(a1 + 1) + 8)))
    {
      v8 = 113;
      v9 = 273;
      goto LABEL_10;
    }
  }

  return 1;
}

uint64_t ecdsa_sign_fixed(unsigned __int8 *a1, size_t a2, char *a3, unint64_t *a4, unint64_t a5, uint64_t *a6)
{
  v52 = *MEMORY[0x277D85DE8];
  v11 = a6[5];
  if (v11 && *(v11 + 32))
  {
    v12 = 103;
    v13 = 218;
LABEL_13:
    ERR_put_error(26, 0, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ecdsa/ecdsa.cc.inc", v13);
    return 0;
  }

  v14 = *a6;
  if (!*a6 || (v15 = a6[2]) == 0)
  {
    v12 = 67;
    v13 = 224;
    goto LABEL_13;
  }

  v16 = (v15 + 24);
  v46 = xmmword_273BA6F40;
  v47[0] = xmmword_273BA6F50;
  v47[1] = xmmword_273BA6F60;
  v47[2] = xmmword_273BA6F70;
  v48 = 0uLL;
  v51 = 0x4000000000;
  v17 = *(v14 + 264);
  v41 = v17;
  if (v17)
  {
    v18 = 8 * v17;
    v48.i64[0] = v17 << 6;
    v48.i64[1] = (8 * v17) >> 61;
    v19 = v16;
    if ((8 * v17) >= 0x80)
    {
      sha512_block_data_order(&v46, v16, v18 >> 7);
      if ((v18 & 0x78) == 0)
      {
        LODWORD(v18) = v51;
        if (!a2)
        {
          goto LABEL_32;
        }

        goto LABEL_19;
      }

      v19 = &v16[v18 - (v18 & 0x78)];
      v18 &= 0x78u;
    }

    memcpy(v49, v19, v18);
    LODWORD(v51) = v18;
    if (!a2)
    {
      goto LABEL_32;
    }

LABEL_19:
    v40 = v16;
    *&v48 += __PAIR128__(a2 >> 61, 8 * a2);
    v21 = a2;
    v22 = a1;
    if (v18)
    {
      v23 = 128 - v18;
      v21 = a2 - v23;
      if (a2 < v23)
      {
        memcpy(&v49[v18], a1, a2);
        LODWORD(v18) = v51 + a2;
        goto LABEL_29;
      }

      if (v18 != 128)
      {
        memcpy(&v49[v18], a1, v23);
      }

      LODWORD(v51) = 0;
      v22 = &a1[v23];
      sha512_block_data_order(&v46, v49, 1);
    }

    if (v21 >= 0x80)
    {
      sha512_block_data_order(&v46, v22, v21 >> 7);
      v24 = &v22[v21];
      v21 &= 0x7Fu;
      v22 = &v24[-v21];
    }

    if (!v21)
    {
      LODWORD(v18) = v51;
      goto LABEL_31;
    }

    memcpy(v49, v22, v21);
    LODWORD(v18) = v21;
LABEL_29:
    LODWORD(v51) = v18;
LABEL_31:
    v16 = v40;
    goto LABEL_32;
  }

  LODWORD(v18) = 0;
  if (a2)
  {
    goto LABEL_19;
  }

LABEL_32:
  v25 = HIDWORD(v51);
  v49[v18] = 0x80;
  v26 = v18 + 1;
  if (v18 < 0x70)
  {
    if (v18 == 111)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if (v18 != 127)
    {
      bzero(&v49[v26], 127 - v18);
    }

    sha512_block_data_order(&v46, v49, 1);
    v26 = 0;
  }

  bzero(&v49[v26], 112 - v26);
LABEL_38:
  v27 = vrev64q_s8(v48);
  v50 = vextq_s8(v27, v27, 8uLL);
  sha512_block_data_order(&v46, v49, 1);
  if (v25 < 8)
  {
    goto LABEL_46;
  }

  v28 = v25 >> 3;
  if (v25 < 0x20)
  {
    v29 = 0;
    v30 = &v44;
LABEL_44:
    v35 = v28 - v29;
    v36 = &v47[-1] + v29;
    do
    {
      v37 = *v36++;
      v30->i64[0] = bswap64(v37);
      v30 = (v30 + 8);
      --v35;
    }

    while (v35);
    goto LABEL_46;
  }

  v29 = (v25 >> 3) & 0x1FFFFFFC;
  v30 = (&v44 + 8 * v29);
  v31 = &v45;
  v32 = v47;
  v33 = v29;
  do
  {
    v34 = vrev64q_s8(*v32);
    v31[-1] = vrev64q_s8(v32[-1]);
    *v31 = v34;
    v31 += 2;
    v32 += 2;
    v33 -= 4;
  }

  while (v33);
  if (v29 != v28)
  {
    goto LABEL_44;
  }

LABEL_46:
  if (!bn_rand_range_words(v43, 1uLL, *(v14 + 256), v41, &v44))
  {
    return 0;
  }

  v38 = 33;
  while (1)
  {
    v42 = 0;
    result = ecdsa_sign_impl(v14, &v42, a3, a4, a5, v16, v43, a1, a2);
    if (result || !v42)
    {
      break;
    }

    if (!--v38)
    {
      v39 = result;
      ERR_put_error(26, 0, 106, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ecdsa/ecdsa.cc.inc", 270);
      return v39;
    }

    if (!bn_rand_range_words(v43, 1uLL, *(v14 + 256), *(v14 + 264), &v44))
    {
      return 0;
    }
  }

  return result;
}

uint64_t EC_KEY_oct2key(EC_KEY *a1, const unsigned __int8 *a2, size_t a3, BN_CTX *a4)
{
  v4 = *a1;
  if (!*a1)
  {
    v13 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec_key.cc.inc";
    v14 = 15;
    v15 = 114;
    v16 = 338;
LABEL_8:
    ERR_put_error(v14, 0, v15, v13, v16);
    return 0;
  }

  v9 = malloc_type_malloc(0xE8uLL, 0xB4E622C9uLL);
  if (!v9)
  {
    v13 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v14 = 14;
    v15 = 65;
    v16 = 217;
    goto LABEL_8;
  }

  v10 = v9;
  *v9 = 224;
  v11 = (v9 + 8);
  if (!*(v4 + 128))
  {
    v18 = atomic_load(v4 + 135);
    if (v18 != -1)
    {
      for (i = v18; i != -1; v18 = i)
      {
        atomic_compare_exchange_strong(v4 + 135, &i, v18 + 1);
        if (i == v18)
        {
          break;
        }
      }
    }
  }

  *(v9 + 1) = v4;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 5) = 0u;
  *(v9 + 6) = 0u;
  *(v9 + 7) = 0u;
  *(v9 + 8) = 0u;
  *(v9 + 9) = 0u;
  *(v9 + 10) = 0u;
  *(v9 + 11) = 0u;
  *(v9 + 12) = 0u;
  *(v9 + 13) = 0u;
  *(v9 + 28) = 0;
  if (EC_POINT_oct2point(*a1, v11, a2, a3, a4))
  {
    v12 = EC_KEY_set_public_key(a1, v11);
  }

  else
  {
    v12 = 0;
  }

  EC_GROUP_free(v10[1]);
  free(v10);
  return v12;
}

int EC_POINT_oct2point(const EC_GROUP *a1, EC_POINT *a2, const unsigned __int8 *buf, size_t len, BN_CTX *a5)
{
  if (EC_GROUP_cmp(a1, *a2, buf))
  {
    v10 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/oct.cc.inc";
    v11 = 15;
    v12 = 106;
    v13 = 148;
LABEL_3:
    ERR_put_error(v11, 0, v12, v10, v13);
    LODWORD(v14) = 0;
    return v14;
  }

  if (!len)
  {
    v10 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/oct.cc.inc";
    v11 = 15;
    v12 = 100;
    v13 = 88;
    goto LABEL_3;
  }

  v15 = *buf;
  if (v15 == 4)
  {
    if (ec_point_from_uncompressed(a1, v53, buf, len))
    {
      v16 = v53[0];
      *(a2 + 24) = v53[1];
      v17 = v53[3];
      *(a2 + 40) = v53[2];
      *(a2 + 56) = v17;
      *(a2 + 9) = v54;
      *(a2 + 8) = v16;
      v18 = v55;
      *(a2 + 18) = v59;
      v19 = v58;
      *(a2 + 7) = v57;
      *(a2 + 8) = v19;
      v20 = v56;
      *(a2 + 5) = v18;
      *(a2 + 6) = v20;
      *(a2 + 152) = *(a1 + 10);
      v21 = *(a1 + 11);
      v22 = *(a1 + 12);
      v23 = *(a1 + 13);
      *(a2 + 27) = *(a1 + 28);
      *(a2 + 200) = v23;
      *(a2 + 184) = v22;
      *(a2 + 168) = v21;
      LODWORD(v14) = 1;
    }

    else
    {
      LODWORD(v14) = 0;
      if (*(a1 + 133))
      {
        *(a2 + 8) = *(a1 + 1);
        v27 = *(a1 + 2);
        v28 = *(a1 + 3);
        v29 = *(a1 + 4);
        *(a2 + 9) = *(a1 + 10);
        *(a2 + 56) = v29;
        *(a2 + 40) = v28;
        *(a2 + 24) = v27;
        v30 = *(a1 + 120);
        v31 = *(a1 + 136);
        v32 = *(a1 + 104);
        *(a2 + 18) = *(a1 + 19);
        *(a2 + 7) = v30;
        *(a2 + 8) = v31;
        *(a2 + 6) = v32;
        *(a2 + 5) = *(a1 + 88);
        v34 = *(a1 + 12);
        v33 = *(a1 + 13);
        v35 = *(a1 + 11);
        *(a2 + 27) = *(a1 + 28);
        *(a2 + 168) = v35;
        *(a2 + 200) = v33;
        *(a2 + 184) = v34;
        *(a2 + 152) = *(a1 + 10);
      }

      else
      {
        *(a2 + 27) = 0;
        *(a2 + 200) = 0u;
        *(a2 + 184) = 0u;
        *(a2 + 168) = 0u;
        *(a2 + 152) = 0u;
        *(a2 + 136) = 0u;
        *(a2 + 120) = 0u;
        *(a2 + 104) = 0u;
        *(a2 + 88) = 0u;
        *(a2 + 72) = 0u;
        *(a2 + 56) = 0u;
        *(a2 + 40) = 0u;
        *(a2 + 24) = 0u;
        *(a2 + 8) = 0u;
      }
    }

    return v14;
  }

  v24 = *(a1 + 82);
  if (v24 >= 1)
  {
    v25 = *(a1 + 40);
    while (!*(v25 - 8 + 8 * v24))
    {
      v26 = __OFSUB__(v24--, 1);
      if ((v24 < 0) ^ v26 | (v24 == 0))
      {
        goto LABEL_34;
      }
    }

LABEL_20:
    v36 = v24 - 1;
    v37 = *(v25 + 8 * v36);
    v38 = v37 != 0;
    v39 = HIDWORD(v37) != 0;
    if (HIDWORD(v37))
    {
      v37 >>= 32;
    }

    v40 = v37 >> 16 != 0;
    if (v37 >> 16)
    {
      v37 >>= 16;
    }

    v41 = v37 > 0xFF;
    if (v37 > 0xFF)
    {
      v37 >>= 8;
    }

    v42 = v37 > 0xF;
    if (v37 > 0xF)
    {
      v37 >>= 4;
    }

    v43 = v37 > 3;
    if (v37 > 3)
    {
      v37 >>= 2;
    }

    v44 = v38 | (v36 << 6) | (32 * v39) | (16 * v40) | (8 * v41) | (4 * v42) | (2 * v43);
    if (v37 > 1)
    {
      ++v44;
    }

    v45 = (v44 + 7) >> 3;
    if ((v15 & 0xFE) != 2)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

  if (v24)
  {
    v25 = *(a1 + 40);
    goto LABEL_20;
  }

LABEL_34:
  v45 = 0;
  if ((v15 & 0xFE) != 2)
  {
LABEL_39:
    v10 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/oct.cc.inc";
    v11 = 15;
    v12 = 109;
    v13 = 110;
    goto LABEL_3;
  }

LABEL_35:
  if (v45 + 1 != len)
  {
    goto LABEL_39;
  }

  if (!a5)
  {
    v47 = malloc_type_malloc(0x48uLL, 0xB4E622C9uLL);
    if (!v47)
    {
      v10 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v11 = 14;
      v12 = 65;
      v13 = 217;
      goto LABEL_3;
    }

    *v47 = 64;
    *(v47 + 8) = 0u;
    v46 = (v47 + 8);
    *(v47 + 24) = 0u;
    *(v47 + 40) = 0u;
    *(v47 + 56) = 0u;
    a5 = (v47 + 8);
    if (v47[64])
    {
      goto LABEL_46;
    }

    goto LABEL_42;
  }

  v46 = 0;
  if ((*(a5 + 56) & 1) == 0)
  {
LABEL_42:
    v48 = *(a5 + 6);
    if (bssl::Vector<unsigned long>::MaybeGrow(a5 + 3))
    {
      *(*(a5 + 3) + 8 * (*(a5 + 4))++) = v48;
    }

    else
    {
      *(a5 + 28) = 257;
      ERR_clear_error();
    }
  }

LABEL_46:
  v14 = BN_CTX_get(a5);
  if (v14)
  {
    v49 = v14;
    v14 = BN_bin2bn(buf + 1, v45, v14);
    if (v14)
    {
      if (BN_ucmp(v49, (a1 + 320)) < 0)
      {
        LODWORD(v14) = EC_POINT_set_compressed_coordinates_GFp(a1, a2, v49, v15 & 1, a5);
      }

      else
      {
        ERR_put_error(15, 0, 109, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/oct.cc.inc", 134);
        LODWORD(v14) = 0;
      }
    }
  }

  if ((*(a5 + 56) & 1) == 0)
  {
    v50 = *(a5 + 4);
    if (!v50)
    {
      abort();
    }

    *(a5 + 6) = *(*(a5 + 3) + 8 * v50 - 8);
    *(a5 + 4) = v50 - 1;
  }

  if (v46)
  {
    v51 = v14;
    BN_CTX_free(v46);
    LODWORD(v14) = v51;
  }

  return v14;
}

size_t EC_POINT_point2buf(uint64_t a1, const EC_GROUP **a2, BN_CTX *a3, void *a4)
{
  v5 = a3;
  *a4 = 0;
  if (EC_GROUP_cmp(a1, *a2, a3))
  {
    v8 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/oct.cc.inc";
    v9 = 15;
    v10 = 106;
    v11 = 158;
LABEL_18:
    ERR_put_error(v9, 0, v10, v8, v11);
    return 0;
  }

  v12 = *(a1 + 328);
  if (v12 < 1)
  {
LABEL_17:
    v8 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/oct.cc.inc";
    v9 = 15;
    v10 = 119;
    v11 = 165;
    goto LABEL_18;
  }

  if (v12 < 4)
  {
    v13 = 0;
    v14 = 0;
LABEL_9:
    v20 = v12 - v13;
    v21 = &a2[v13 + 19];
    do
    {
      v22 = *v21++;
      *&v14 |= v22;
      --v20;
    }

    while (v20);
    goto LABEL_11;
  }

  v13 = v12 & 0x7FFFFFFC;
  v15 = (a2 + 21);
  v16 = 0uLL;
  v17 = v13;
  v18 = 0uLL;
  do
  {
    v16 = vorrq_s8(v15[-1], v16);
    v18 = vorrq_s8(*v15, v18);
    v15 += 2;
    v17 -= 4;
  }

  while (v17);
  v19 = vorrq_s8(v18, v16);
  v14 = vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
  if (v13 != v12)
  {
    goto LABEL_9;
  }

LABEL_11:
  if (!*&v14)
  {
    goto LABEL_17;
  }

  result = ec_point_byte_len(a1, v5);
  if (result)
  {
    v24 = result;
    v25 = malloc_type_malloc(result + 8, 0xB4E622C9uLL);
    if (!v25)
    {
      v8 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v9 = 14;
      v10 = 65;
      v11 = 217;
      goto LABEL_18;
    }

    v27 = v25;
    *v25 = v24;
    v28 = (v25 + 8);
    result = EC_POINT_point2oct(a1, a2, v5, v25 + 8, v24, v26);
    if (!result)
    {
      free(v27);
      return 0;
    }

    *a4 = v28;
  }

  return result;
}

void ec_scalar_to_bytes(uint64_t a1, char *a2, unint64_t *a3, int8x16_t *a4)
{
  v5 = *(a1 + 264);
  v6 = v5;
  if (v5 < 1)
  {
    if (!v5)
    {
LABEL_26:
      v18 = 0;
      v19 = 8 * v6;
      v20 = 0;
      goto LABEL_37;
    }

    v7 = *(a1 + 256);
  }

  else
  {
    v7 = *(a1 + 256);
    while (!*(v7 - 8 + 8 * v5))
    {
      v8 = __OFSUB__(v5--, 1);
      if ((v5 < 0) ^ v8 | (v5 == 0))
      {
        goto LABEL_26;
      }
    }
  }

  v9 = v5 - 1;
  v10 = *(v7 + 8 * v9);
  v11 = v10 != 0;
  v12 = HIDWORD(v10) != 0;
  if (HIDWORD(v10))
  {
    v10 >>= 32;
  }

  v13 = v10 >> 16 != 0;
  if (v10 >> 16)
  {
    v10 >>= 16;
  }

  v14 = v10 > 0xFF;
  if (v10 > 0xFF)
  {
    v10 >>= 8;
  }

  v15 = v10 > 0xF;
  if (v10 > 0xF)
  {
    v10 >>= 4;
  }

  v16 = v10 > 3;
  if (v10 > 3)
  {
    v10 >>= 2;
  }

  v17 = v11 | (v9 << 6) | (32 * v12) | (16 * v13) | (8 * v14) | (4 * v15) | (2 * v16);
  if (v10 > 1)
  {
    ++v17;
  }

  v18 = (v17 + 7) >> 3;
  v19 = 8 * v6;
  if (8 * v6 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = 8 * v6;
  }

  if (v20)
  {
    if (v20 < 8 || (&a2[v18 - v20] < &a4->i8[v20] ? (v21 = &a2[v18] > a4) : (v21 = 0), v21))
    {
      v22 = 0;
      goto LABEL_35;
    }

    if (v20 >= 0x20)
    {
      v22 = v20 & 0x7FFFFFE0;
      v27 = a4 + 1;
      v28 = &a2[v18 - 16];
      v29 = v22;
      do
      {
        v30 = vrev64q_s8(v27[-1]);
        v31 = vrev64q_s8(*v27);
        v28[-1] = vextq_s8(v31, v31, 8uLL);
        *v28 = vextq_s8(v30, v30, 8uLL);
        v27 += 2;
        v28 -= 2;
        v29 -= 32;
      }

      while (v29);
      if (v20 == v22)
      {
        goto LABEL_37;
      }

      if ((v20 & 0x18) == 0)
      {
LABEL_35:
        v23 = v20 - v22;
        v24 = &a2[~v22 + v18];
        v25 = &a4->i8[v22];
        do
        {
          v26 = *v25++;
          *v24-- = v26;
          --v23;
        }

        while (v23);
        goto LABEL_37;
      }
    }

    else
    {
      v22 = 0;
    }

    v32 = v22;
    v22 = v20 & 0x7FFFFFF8;
    v33 = &a4->i8[v32];
    v34 = &a2[v18 - v32 - 8];
    v35 = v32 - v22;
    do
    {
      v36 = *v33++;
      *v34-- = vrev64_s8(v36);
      v35 += 8;
    }

    while (v35);
    if (v20 == v22)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

LABEL_37:
  if (v19 < v18)
  {
    bzero(a2, v18 - v20);
  }

  *a3 = v18;
}

int EC_KEY_generate_key(EC_KEY *a1)
{
  if (!a1 || (v1 = *a1) == 0)
  {
    v5 = 67;
    v6 = 422;
LABEL_26:
    ERR_put_error(15, 0, v5, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec_key.cc.inc", v6);
    return 0;
  }

  v2 = *(v1 + 264);
  if (v2 < 1)
  {
    if (!v2)
    {
LABEL_25:
      v5 = 112;
      v6 = 428;
      goto LABEL_26;
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
        goto LABEL_25;
      }
    }
  }

  v7 = v2 - 1;
  v8 = *(v3 + 8 * v7);
  v9 = v8 != 0;
  v10 = HIDWORD(v8) != 0;
  if (HIDWORD(v8))
  {
    v8 >>= 32;
  }

  v11 = v8 >> 16 != 0;
  if (v8 >> 16)
  {
    v8 >>= 16;
  }

  v12 = v8 > 0xFF;
  if (v8 > 0xFF)
  {
    v8 >>= 8;
  }

  v13 = v8 > 0xF;
  if (v8 > 0xF)
  {
    v8 >>= 4;
  }

  v14 = v8 > 3;
  if (v8 > 3)
  {
    v8 >>= 2;
  }

  v15 = v9 | (v7 << 6) | (32 * v10) | (16 * v11) | (8 * v12) | (4 * v13) | (2 * v14);
  if (v8 > 1)
  {
    ++v15;
  }

  if (v15 <= 159)
  {
    goto LABEL_25;
  }

  v18 = malloc_type_malloc(0x68uLL, 0xB4E622C9uLL);
  v19 = v18;
  if (v18)
  {
    *v18 = 96;
    v18[2] = 0u;
    *(v18 + 1) = v18 + 2;
    v20 = v18 + 8;
    v18[3] = 0u;
    v18[4] = 0u;
    v18[5] = 0u;
    *(v18 + 12) = 0;
    v18[1] = 0u;
    v21 = *(v1 + 264);
    *(v18 + 4) = v21;
    *(v18 + 5) = v21;
    *(v18 + 7) = 2;
    v22 = *a1;
    if (*a1)
    {
      goto LABEL_30;
    }

LABEL_45:
    ERR_put_error(15, 0, 67, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc", 407);
    goto LABEL_54;
  }

  ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  v20 = 0;
  v22 = *a1;
  if (!*a1)
  {
    goto LABEL_45;
  }

LABEL_30:
  v23 = malloc_type_malloc(0xE8uLL, 0xB4E622C9uLL);
  if (!v23)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    goto LABEL_54;
  }

  v24 = v23;
  *v23 = 224;
  v25 = v23 + 8;
  if (!*(v22 + 512))
  {
    v36 = atomic_load((v22 + 540));
    if (v36 != -1)
    {
      for (i = v36; i != -1; v36 = i)
      {
        atomic_compare_exchange_strong((v22 + 540), &i, v36 + 1);
        if (i == v36)
        {
          break;
        }
      }
    }
  }

  *(v23 + 1) = 0u;
  *(v23 + 1) = v22;
  *(v23 + 2) = 0u;
  *(v23 + 3) = 0u;
  *(v23 + 4) = 0u;
  *(v23 + 5) = 0u;
  *(v23 + 6) = 0u;
  *(v23 + 7) = 0u;
  *(v23 + 8) = 0u;
  *(v23 + 9) = 0u;
  *(v23 + 10) = 0u;
  *(v23 + 11) = 0u;
  *(v23 + 12) = 0u;
  *(v23 + 13) = 0u;
  *(v23 + 28) = 0;
  if (!v19 || !bn_rand_range_words(v20 + 24, 1uLL, *(*a1 + 256), *(*a1 + 264), EC_KEY_generate_key::kDefaultAdditionalData))
  {
LABEL_53:
    EC_GROUP_free(*(v24 + 1));
    free(v24);
LABEL_54:
    if (v19)
    {
      v39 = *(v20 - 1);
      v38 = v20 - 8;
      v40 = v39 + 8;
      if (v39 != -8)
      {
        bzero(v38, v40);
      }

      free(v38);
    }

    return 0;
  }

  v26 = *a1;
  (*(**a1 + 40))(*a1, v24 + 16, v20 + 24);
  if (!ec_GFp_simple_is_on_curve(v26, v24 + 1))
  {
    ERR_put_error(15, 0, 68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc", 796);
    goto LABEL_53;
  }

  v27 = a1;
  v28 = *(a1 + 2);
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
    v27 = a1;
  }

  *(v27 + 2) = v20;
  v32 = *(v27 + 1);
  if (v32)
  {
    EC_GROUP_free(*v32);
    v34 = *(v32 - 1);
    v33 = v32 - 1;
    v35 = v34 + 8;
    if (v34 != -8)
    {
      bzero(v33, v35);
    }

    free(v33);
    v27 = a1;
  }

  *(v27 + 1) = v25;
  return 1;
}

void ec_GFp_simple_felem_to_bytes(uint64_t a1, char *a2, unint64_t *a3, int8x16_t *a4)
{
  v5 = *(a1 + 328);
  v6 = v5;
  if (v5 < 1)
  {
    if (!v5)
    {
LABEL_26:
      v18 = 0;
      v19 = 8 * v6;
      v20 = 0;
      goto LABEL_37;
    }

    v7 = *(a1 + 320);
  }

  else
  {
    v7 = *(a1 + 320);
    while (!*(v7 - 8 + 8 * v5))
    {
      v8 = __OFSUB__(v5--, 1);
      if ((v5 < 0) ^ v8 | (v5 == 0))
      {
        goto LABEL_26;
      }
    }
  }

  v9 = v5 - 1;
  v10 = *(v7 + 8 * v9);
  v11 = v10 != 0;
  v12 = HIDWORD(v10) != 0;
  if (HIDWORD(v10))
  {
    v10 >>= 32;
  }

  v13 = v10 >> 16 != 0;
  if (v10 >> 16)
  {
    v10 >>= 16;
  }

  v14 = v10 > 0xFF;
  if (v10 > 0xFF)
  {
    v10 >>= 8;
  }

  v15 = v10 > 0xF;
  if (v10 > 0xF)
  {
    v10 >>= 4;
  }

  v16 = v10 > 3;
  if (v10 > 3)
  {
    v10 >>= 2;
  }

  v17 = v11 | (v9 << 6) | (32 * v12) | (16 * v13) | (8 * v14) | (4 * v15) | (2 * v16);
  if (v10 > 1)
  {
    ++v17;
  }

  v18 = (v17 + 7) >> 3;
  v19 = 8 * v6;
  if (8 * v6 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = 8 * v6;
  }

  if (v20)
  {
    if (v20 < 8 || (&a2[v18 - v20] < &a4->i8[v20] ? (v21 = &a2[v18] > a4) : (v21 = 0), v21))
    {
      v22 = 0;
      goto LABEL_35;
    }

    if (v20 >= 0x20)
    {
      v22 = v20 & 0x7FFFFFE0;
      v27 = a4 + 1;
      v28 = &a2[v18 - 16];
      v29 = v22;
      do
      {
        v30 = vrev64q_s8(v27[-1]);
        v31 = vrev64q_s8(*v27);
        v28[-1] = vextq_s8(v31, v31, 8uLL);
        *v28 = vextq_s8(v30, v30, 8uLL);
        v27 += 2;
        v28 -= 2;
        v29 -= 32;
      }

      while (v29);
      if (v20 == v22)
      {
        goto LABEL_37;
      }

      if ((v20 & 0x18) == 0)
      {
LABEL_35:
        v23 = v20 - v22;
        v24 = &a2[~v22 + v18];
        v25 = &a4->i8[v22];
        do
        {
          v26 = *v25++;
          *v24-- = v26;
          --v23;
        }

        while (v23);
        goto LABEL_37;
      }
    }

    else
    {
      v22 = 0;
    }

    v32 = v22;
    v22 = v20 & 0x7FFFFFF8;
    v33 = &a4->i8[v32];
    v34 = &a2[v18 - v32 - 8];
    v35 = v32 - v22;
    do
    {
      v36 = *v33++;
      *v34-- = vrev64_s8(v36);
      v35 += 8;
    }

    while (v35);
    if (v20 == v22)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

LABEL_37:
  if (v19 < v18)
  {
    bzero(a2, v18 - v20);
  }

  *a3 = v18;
}

uint64_t ec_GFp_mont_felem_from_bytes(uint64_t a1, int8x16_t *a2, unsigned __int8 *a3, unint64_t a4)
{
  result = ec_GFp_simple_felem_from_bytes(a1, a2, a3, a4);
  if (result)
  {
    bn_mod_mul_montgomery_small(a2, a2, *(a1 + 296), *(a1 + 328), a1 + 296);
    return 1;
  }

  return result;
}

uint64_t ec_GFp_simple_felem_from_bytes(uint64_t a1, int8x16_t *a2, unsigned __int8 *a3, unint64_t a4)
{
  v4 = *(a1 + 328);
  if (v4 < 1)
  {
    if (!v4)
    {
LABEL_31:
      if (!a4)
      {
        goto LABEL_22;
      }

LABEL_32:
      v24 = 267;
LABEL_45:
      ERR_put_error(15, 0, 128, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/simple.cc.inc", v24);
      return 0;
    }

    v5 = *(a1 + 320);
    v6 = *(a1 + 328);
  }

  else
  {
    v5 = *(a1 + 320);
    v6 = *(a1 + 328);
    while (!*(v5 - 8 + 8 * v6))
    {
      v7 = __OFSUB__(v6--, 1);
      if ((v6 < 0) ^ v7 | (v6 == 0))
      {
        goto LABEL_31;
      }
    }
  }

  v8 = v6 - 1;
  v9 = *(v5 + 8 * v8);
  v10 = v9 != 0;
  v11 = HIDWORD(v9) != 0;
  if (HIDWORD(v9))
  {
    v9 >>= 32;
  }

  v12 = v9 >> 16 != 0;
  if (v9 >> 16)
  {
    v9 >>= 16;
  }

  v13 = v9 > 0xFF;
  if (v9 > 0xFF)
  {
    v9 >>= 8;
  }

  v14 = v9 > 0xF;
  if (v9 > 0xF)
  {
    v9 >>= 4;
  }

  v15 = v9 > 3;
  if (v9 > 3)
  {
    v9 >>= 2;
  }

  v16 = v9 > 1;
  v17 = v10 | (v8 << 6) | (32 * v11) | (16 * v12) | (8 * v13) | (4 * v14) | (2 * v15);
  if (v16)
  {
    ++v17;
  }

  if ((v17 + 7) >> 3 != a4)
  {
    goto LABEL_32;
  }

LABEL_22:
  v18 = v4;
  if (a4 > 8 * v4)
  {
    abort();
  }

  v19 = a4 - 8;
  if (a4 < 8)
  {
    v22 = v4;
    v21 = a2;
    v20 = a4;
    goto LABEL_34;
  }

  if (v19 <= 0x47 || &a3[a4] > a2 && &a3[a4 & 7] < &a2->u8[a4 & 0xFFFFFFFFFFFFFFF8])
  {
    v20 = a4;
    v21 = a2;
    v22 = v4;
LABEL_28:
    v23 = v20;
    do
    {
      v20 = v23 - 8;
      *v21++ = bswap64(*&a3[v23 - 8]);
      --v22;
      v23 = v20;
    }

    while (v20 > 7);
    goto LABEL_34;
  }

  v36 = (v19 >> 3) + 1;
  v37 = v36 & 0x3FFFFFFFFFFFFFFCLL;
  v20 = a4 - v37 * 8;
  v21 = &a2->i64[v37];
  v38 = a2 + 1;
  v39 = &a3[a4 - 16];
  v40 = 0uLL;
  v41 = v4;
  v42.i64[0] = -1;
  v42.i64[1] = -1;
  v43 = v36 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v44 = vrev64q_s8(vextq_s8(v39[-1], v39[-1], 8uLL));
    v38[-1] = vrev64q_s8(vextq_s8(*v39, *v39, 8uLL));
    *v38 = v44;
    v41 = vaddq_s64(v41, v42);
    v40 = vaddq_s64(v40, v42);
    v38 += 2;
    v39 -= 2;
    v43 -= 4;
  }

  while (v43);
  v22 = vaddvq_s64(vpaddq_s64(v41, v40));
  if (v36 != (v36 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_28;
  }

LABEL_34:
  if (v20)
  {
    v25 = 0;
    do
    {
      v26 = *a3++;
      v25 = v26 | (v25 << 8);
      --v20;
    }

    while (v20);
    *v21++ = v25;
    --v22;
  }

  if (8 * v22)
  {
    v27 = a1;
    v28 = a2;
    bzero(v21, 8 * v22);
    a1 = v27;
    a2 = v28;
    v4 = *(v27 + 328);
    v18 = v4;
  }

  if (!v4)
  {
    goto LABEL_44;
  }

  v29 = 0;
  v30 = *(a1 + 320);
  do
  {
    v32 = a2->i64[0];
    a2 = (a2 + 8);
    v31 = v32;
    v33 = *v30++;
    v34 = (((v33 ^ v31) - 1) & ~(v33 ^ v31)) >> 63;
    v29 = v34 & v29 | ((((v31 - v33) ^ v31 | v33 ^ v31) ^ v31) >> 63) & ~v34;
    --v18;
  }

  while (v18);
  if ((v29 & 0x80000000) == 0)
  {
LABEL_44:
    v24 = 274;
    goto LABEL_45;
  }

  return 1;
}

void ec_GFp_mont_felem_reduce(uint64_t a1, int8x16_t *a2, void *a3, unint64_t a4)
{
  bn_from_montgomery_small(a2, *(a1 + 328), a3, a4, a1 + 296);
  bn_mod_mul_montgomery_small(a2, a2, *(a1 + 296), *(a1 + 328), a1 + 296);
  v6 = *(a1 + 328);
  v7 = *(a1 + 296);

  bn_mod_mul_montgomery_small(a2, a2, v7, v6, a1 + 296);
}

uint64_t ec_GFp_mont_add(uint64_t a1, unint64_t a2, unint64_t *a3, unint64_t *a4)
{
  if (a3 != a4)
  {
    v8 = *(a1 + 328);
    v9 = v8;
    if (v8 <= 0)
    {
      v13 = 0;
      v14 = 0;
      v15 = a4 + 18;
      goto LABEL_27;
    }

    if (v8 >= 4)
    {
      v10 = v8 & 0x7FFFFFFC;
      v16 = (a3 + 20);
      v17 = 0uLL;
      v18 = v10;
      v19 = 0uLL;
      do
      {
        v17 = vorrq_s8(v16[-1], v17);
        v19 = vorrq_s8(*v16, v19);
        v16 += 2;
        v18 -= 4;
      }

      while (v18);
      v20 = vorrq_s8(v19, v17);
      v11 = vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
      if (v10 == v8)
      {
LABEL_14:
        v15 = a4 + 18;
        if (v8 > 3)
        {
          v24 = v8 & 0x7FFFFFFC;
          v26 = (a4 + 20);
          v27 = 0uLL;
          v28 = v24;
          v29 = 0uLL;
          do
          {
            v27 = vorrq_s8(v26[-1], v27);
            v29 = vorrq_s8(*v26, v29);
            v26 += 2;
            v28 -= 4;
          }

          while (v28);
          v30 = vorrq_s8(v29, v27);
          v25 = vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL));
          if (v24 == v8)
          {
LABEL_21:
            if (v11)
            {
              v13 = -1;
            }

            else
            {
              v13 = 0;
            }

            if (v25)
            {
              v14 = -1;
            }

            else
            {
              v14 = 0;
            }

LABEL_27:
            bn_mod_mul_montgomery_small(v160, a3 + 18, a3 + 18, v9, a1 + 296);
            bn_mod_mul_montgomery_small(v159, v15, v15, *(a1 + 328), a1 + 296);
            bn_mod_mul_montgomery_small(v158, a3, v159, *(a1 + 328), a1 + 296);
            bn_mod_add_words(v157, a3 + 18, v15, *(a1 + 320), v167, *(a1 + 328));
            bn_mod_mul_montgomery_small(v157, v157, v157, *(a1 + 328), a1 + 296);
            bn_mod_sub_words(v157, v157, v160, *(a1 + 320), v167, *(a1 + 328));
            bn_mod_sub_words(v157, v157, v159, *(a1 + 320), v167, *(a1 + 328));
            bn_mod_mul_montgomery_small(v156, v15, v159, *(a1 + 328), a1 + 296);
            bn_mod_mul_montgomery_small(v156, v156, a3 + 9, *(a1 + 328), a1 + 296);
            bn_mod_mul_montgomery_small(v155, a4, v160, *(a1 + 328), a1 + 296);
            bn_mod_sub_words(v153, v155, v158, *(a1 + 320), v167, *(a1 + 328));
            v34 = *(a1 + 328);
            v35 = v34;
            if (v34 < 1)
            {
              v38 = 0;
              goto LABEL_39;
            }

            if (v34 > 3)
            {
              v36 = v34 & 0x7FFFFFFC;
              v39 = &v154;
              v40 = 0uLL;
              v41 = v36;
              v42 = 0uLL;
              do
              {
                v40 = vorrq_s8(v39[-1], v40);
                v42 = vorrq_s8(*v39, v42);
                v39 += 2;
                v41 -= 4;
              }

              while (v41);
              v43 = vorrq_s8(v42, v40);
              v37 = vorr_s8(*v43.i8, *&vextq_s8(v43, v43, 8uLL));
              if (v36 == v34)
              {
                goto LABEL_36;
              }
            }

            else
            {
              v36 = 0;
              v37 = 0;
            }

            v44 = v34 - v36;
            v45 = &v153[v36];
            do
            {
              v46 = *v45++;
              *&v37 |= v46;
              --v44;
            }

            while (v44);
LABEL_36:
            if (v37)
            {
              v38 = -1;
            }

            else
            {
              v38 = 0;
            }

LABEL_39:
            bn_mod_mul_montgomery_small(&v161, v153, v157, v35, a1 + 296);
            bn_mod_mul_montgomery_small(v152, a3 + 18, v160, *(a1 + 328), a1 + 296);
            bn_mod_mul_montgomery_small(v151, a4 + 9, v152, *(a1 + 328), a1 + 296);
            bn_mod_sub_words(v149, v151, v156, *(a1 + 320), v167, *(a1 + 328));
            bn_mod_add_words(v149, v149, v149, *(a1 + 320), v167, *(a1 + 328));
            v47 = *(a1 + 328);
            if (v47 < 1)
            {
              if ((v13 & ~v38 & v14) != 0)
              {
                return ec_GFp_mont_dbl(a1, a2, a3);
              }

LABEL_43:
              bn_mod_add_words(v148, v153, v153, *(a1 + 320), v167, v47);
              bn_mod_mul_montgomery_small(v148, v148, v148, *(a1 + 328), a1 + 296);
              bn_mod_mul_montgomery_small(v147, v153, v148, *(a1 + 328), a1 + 296);
              bn_mod_mul_montgomery_small(v146, v158, v148, *(a1 + 328), a1 + 296);
              bn_mod_mul_montgomery_small(&v165, v149, v149, *(a1 + 328), a1 + 296);
              bn_mod_sub_words(&v165, &v165, v147, *(a1 + 320), v167, *(a1 + 328));
              bn_mod_sub_words(&v165, &v165, v146, *(a1 + 320), v167, *(a1 + 328));
              bn_mod_sub_words(&v165, &v165, v146, *(a1 + 320), v167, *(a1 + 328));
              bn_mod_sub_words(&v163, v146, &v165, *(a1 + 320), v167, *(a1 + 328));
              bn_mod_mul_montgomery_small(&v163, &v163, v149, *(a1 + 328), a1 + 296);
              bn_mod_mul_montgomery_small(v145, v156, v147, *(a1 + 328), a1 + 296);
              bn_mod_sub_words(&v163, &v163, v145, *(a1 + 320), v167, *(a1 + 328));
              result = bn_mod_sub_words(&v163, &v163, v145, *(a1 + 320), v167, *(a1 + 328));
              v50 = *(a1 + 328);
              if (!v50)
              {
                return result;
              }

              v51 = ~v13;
              v52 = vdupq_n_s64(v13);
              v53 = vdupq_n_s64(~v13);
              if (v50 >= 4)
              {
                v54 = v50 & 0xFFFFFFFFFFFFFFFCLL;
                v64 = v166;
                v65 = (a4 + 2);
                v66 = v50 & 0xFFFFFFFFFFFFFFFCLL;
                do
                {
                  v67 = vorrq_s8(vandq_s8(*v65, v53), vandq_s8(*v64, v52));
                  v64[-1] = vorrq_s8(vandq_s8(v65[-1], v53), vandq_s8(v64[-1], v52));
                  *v64 = v67;
                  v64 += 2;
                  v65 += 2;
                  v66 -= 4;
                }

                while (v66);
                if (v54 == v50)
                {
LABEL_61:
                  v73 = 0;
                  v74 = ~v14;
                  v75 = a2 - a3;
                  if (v50 < 4)
                  {
                    goto LABEL_66;
                  }

                  if (v75 < 0x20)
                  {
                    goto LABEL_66;
                  }

                  v73 = v50 & 0xFFFFFFFFFFFFFFFCLL;
                  v76 = vdupq_n_s64(v14);
                  v77 = vdupq_n_s64(v74);
                  v78 = v166;
                  v79 = (a3 + 2);
                  v80 = (a2 + 16);
                  v81 = v50 & 0xFFFFFFFFFFFFFFFCLL;
                  do
                  {
                    v82 = vorrq_s8(vandq_s8(*v79, v77), vandq_s8(*v78, v76));
                    v80[-1] = vorrq_s8(vandq_s8(v79[-1], v77), vandq_s8(v78[-1], v76));
                    *v80 = v82;
                    v78 += 2;
                    v79 += 2;
                    v80 += 2;
                    v81 -= 4;
                  }

                  while (v81);
                  if (v73 != v50)
                  {
LABEL_66:
                    v83 = v50 - v73;
                    v84 = v73;
                    v85 = (a2 + 8 * v73);
                    v86 = &a3[v84];
                    v87 = &v165.i64[v84];
                    do
                    {
                      v89 = *v87++;
                      v88 = v89;
                      v90 = *v86++;
                      *v85++ = v90 & v74 | v88 & v14;
                      --v83;
                    }

                    while (v83);
                  }

                  if (v50 >= 4)
                  {
                    v91 = v50 & 0xFFFFFFFFFFFFFFFCLL;
                    v92 = v164;
                    v93 = (a4 + 11);
                    v94 = v50 & 0xFFFFFFFFFFFFFFFCLL;
                    do
                    {
                      v95 = vorrq_s8(vandq_s8(*v93, v53), vandq_s8(*v92, v52));
                      v92[-1] = vorrq_s8(vandq_s8(v93[-1], v53), vandq_s8(v92[-1], v52));
                      *v92 = v95;
                      v92 += 2;
                      v93 += 2;
                      v94 -= 4;
                    }

                    while (v94);
                    if (v91 == v50)
                    {
LABEL_75:
                      v101 = 0;
                      if (v50 < 4)
                      {
                        goto LABEL_80;
                      }

                      if (v75 < 0x20)
                      {
                        goto LABEL_80;
                      }

                      v101 = v50 & 0xFFFFFFFFFFFFFFFCLL;
                      v102 = vdupq_n_s64(v14);
                      v103 = vdupq_n_s64(v74);
                      v104 = v164;
                      v105 = (a3 + 11);
                      v106 = (a2 + 88);
                      v107 = v50 & 0xFFFFFFFFFFFFFFFCLL;
                      do
                      {
                        v108 = vorrq_s8(vandq_s8(*v105, v103), vandq_s8(*v104, v102));
                        v106[-1] = vorrq_s8(vandq_s8(v105[-1], v103), vandq_s8(v104[-1], v102));
                        *v106 = v108;
                        v104 += 2;
                        v105 += 2;
                        v106 += 2;
                        v107 -= 4;
                      }

                      while (v107);
                      if (v101 != v50)
                      {
LABEL_80:
                        v109 = v50 - v101;
                        v110 = v101;
                        v111 = 8 * v101 + 72;
                        v112 = (a2 + v111);
                        v113 = (a3 + v111);
                        v114 = &v163.i64[v110];
                        do
                        {
                          v116 = *v114++;
                          v115 = v116;
                          v117 = *v113++;
                          *v112++ = v117 & v74 | v115 & v14;
                          --v109;
                        }

                        while (v109);
                      }

                      if (v50 >= 4)
                      {
                        v118 = v50 & 0xFFFFFFFFFFFFFFFCLL;
                        v119 = v162;
                        v120 = (a4 + 20);
                        v121 = v50 & 0xFFFFFFFFFFFFFFFCLL;
                        do
                        {
                          v122 = vorrq_s8(vandq_s8(*v120, v53), vandq_s8(*v119, v52));
                          v119[-1] = vorrq_s8(vandq_s8(v120[-1], v53), vandq_s8(v119[-1], v52));
                          *v119 = v122;
                          v119 += 2;
                          v120 += 2;
                          v121 -= 4;
                        }

                        while (v121);
                        if (v118 == v50)
                        {
LABEL_89:
                          v128 = 0;
                          if (v50 < 4)
                          {
                            goto LABEL_94;
                          }

                          if (v75 < 0x20)
                          {
                            goto LABEL_94;
                          }

                          v128 = v50 & 0xFFFFFFFFFFFFFFFCLL;
                          v129 = vdupq_n_s64(v14);
                          v130 = vdupq_n_s64(v74);
                          v131 = v162;
                          v132 = (a3 + 20);
                          v133 = (a2 + 160);
                          v134 = v50 & 0xFFFFFFFFFFFFFFFCLL;
                          do
                          {
                            v135 = vorrq_s8(vandq_s8(*v132, v130), vandq_s8(*v131, v129));
                            v133[-1] = vorrq_s8(vandq_s8(v132[-1], v130), vandq_s8(v131[-1], v129));
                            *v133 = v135;
                            v131 += 2;
                            v132 += 2;
                            v133 += 2;
                            v134 -= 4;
                          }

                          while (v134);
                          if (v128 != v50)
                          {
LABEL_94:
                            v136 = v50 - v128;
                            v137 = v128;
                            v138 = 8 * v128 + 144;
                            v139 = (a2 + v138);
                            v140 = (a3 + v138);
                            v141 = &v161.i64[v137];
                            do
                            {
                              v143 = *v141++;
                              v142 = v143;
                              v144 = *v140++;
                              *v139++ = v144 & v74 | v142 & v14;
                              --v136;
                            }

                            while (v136);
                          }

                          return result;
                        }
                      }

                      else
                      {
                        v118 = 0;
                      }

                      v123 = v50 - v118;
                      v124 = v118;
                      v125 = &a4[v118 + 18];
                      v126 = &v161.u64[v124];
                      do
                      {
                        v127 = *v125++;
                        *v126 = v127 & v51 | *v126 & v13;
                        ++v126;
                        --v123;
                      }

                      while (v123);
                      goto LABEL_89;
                    }
                  }

                  else
                  {
                    v91 = 0;
                  }

                  v96 = v50 - v91;
                  v97 = v91;
                  v98 = &a4[v91 + 9];
                  v99 = &v163.u64[v97];
                  do
                  {
                    v100 = *v98++;
                    *v99 = v100 & v51 | *v99 & v13;
                    ++v99;
                    --v96;
                  }

                  while (v96);
                  goto LABEL_75;
                }
              }

              else
              {
                v54 = 0;
              }

              v68 = v50 - v54;
              v69 = v54;
              v70 = &a4[v54];
              v71 = &v165.u64[v69];
              do
              {
                v72 = *v70++;
                *v71 = v72 & v51 | *v71 & v13;
                ++v71;
                --v68;
              }

              while (v68);
              goto LABEL_61;
            }

            if (v47 > 3)
            {
              v48 = v47 & 0x7FFFFFFC;
              v55 = &v150;
              v56 = 0uLL;
              v57 = v48;
              v58 = 0uLL;
              do
              {
                v56 = vorrq_s8(v55[-1], v56);
                v58 = vorrq_s8(*v55, v58);
                v55 += 2;
                v57 -= 4;
              }

              while (v57);
              v59 = vorrq_s8(v58, v56);
              v49 = vorr_s8(*v59.i8, *&vextq_s8(v59, v59, 8uLL));
              if (v48 == v47)
              {
                goto LABEL_51;
              }
            }

            else
            {
              v48 = 0;
              v49 = 0;
            }

            v60 = v47 - v48;
            v61 = &v149[v48];
            do
            {
              v62 = *v61++;
              *&v49 |= v62;
              --v60;
            }

            while (v60);
LABEL_51:
            if (v49)
            {
              v63 = -1;
            }

            else
            {
              v63 = 0;
            }

            if ((v13 & ~(v63 | v38) & v14) != 0)
            {
              return ec_GFp_mont_dbl(a1, a2, a3);
            }

            goto LABEL_43;
          }
        }

        else
        {
          v24 = 0;
          v25 = 0;
        }

        v31 = v8 - v24;
        v32 = &a4[v24 + 18];
        do
        {
          v33 = *v32++;
          *&v25 |= v33;
          --v31;
        }

        while (v31);
        goto LABEL_21;
      }
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    v21 = v8 - v10;
    v22 = &a3[v10 + 18];
    do
    {
      v23 = *v22++;
      *&v11 |= v23;
      --v21;
    }

    while (v21);
    goto LABEL_14;
  }

  return ec_GFp_mont_dbl(a1, a2, a3);
}

unint64_t ec_GFp_mont_dbl(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  if (*(a1 + 528))
  {
    bn_mod_mul_montgomery_small(v19, a3 + 18, a3 + 18, *(a1 + 328), a1 + 296);
    bn_mod_mul_montgomery_small(v18, a3 + 9, a3 + 9, *(a1 + 328), a1 + 296);
    bn_mod_mul_montgomery_small(v17, a3, v18, *(a1 + 328), a1 + 296);
    bn_mod_sub_words(v16, a3, v19, *(a1 + 320), v20, *(a1 + 328));
    bn_mod_add_words(v15, a3, v19[0].i64, *(a1 + 320), v20, *(a1 + 328));
    bn_mod_add_words(v14, v15[0].i64, v15[0].i64, *(a1 + 320), v20, *(a1 + 328));
    bn_mod_add_words(v15, v15[0].i64, v14[0].i64, *(a1 + 320), v20, *(a1 + 328));
    bn_mod_mul_montgomery_small(v13, v16, v15, *(a1 + 328), a1 + 296);
    bn_mod_mul_montgomery_small(a2, v13, v13, *(a1 + 328), a1 + 296);
    bn_mod_add_words(v12, v17[0].i64, v17[0].i64, *(a1 + 320), v20, *(a1 + 328));
    bn_mod_add_words(v12, v12, v12, *(a1 + 320), v20, *(a1 + 328));
    bn_mod_add_words(v14, v12, v12, *(a1 + 320), v20, *(a1 + 328));
    bn_mod_sub_words(a2, a2, v14, *(a1 + 320), v20, *(a1 + 328));
    bn_mod_add_words(v19, v18[0].i64, v19[0].i64, *(a1 + 320), v20, *(a1 + 328));
    bn_mod_add_words(v16, a3 + 9, a3 + 18, *(a1 + 320), v20, *(a1 + 328));
    bn_mod_mul_montgomery_small((a2 + 144), v16, v16, *(a1 + 328), a1 + 296);
    bn_mod_sub_words(a2 + 144, (a2 + 144), v19, *(a1 + 320), v20, *(a1 + 328));
    bn_mod_sub_words(a2 + 72, v12, a2, *(a1 + 320), v20, *(a1 + 328));
    bn_mod_add_words(v18, v18[0].i64, v18[0].i64, *(a1 + 320), v20, *(a1 + 328));
    bn_mod_mul_montgomery_small(v18, v18, v18, *(a1 + 328), a1 + 296);
    bn_mod_mul_montgomery_small((a2 + 72), v13, (a2 + 72), *(a1 + 328), a1 + 296);
    bn_mod_add_words(v18, v18[0].i64, v18[0].i64, *(a1 + 320), v20, *(a1 + 328));
    v6 = *(a1 + 320);
    v7 = *(a1 + 328);
    v8 = a2 + 72;
    v9 = (a2 + 72);
    v10 = v18;
  }

  else
  {
    bn_mod_mul_montgomery_small(v19, a3, a3, *(a1 + 328), a1 + 296);
    bn_mod_mul_montgomery_small(v18, a3 + 9, a3 + 9, *(a1 + 328), a1 + 296);
    bn_mod_mul_montgomery_small(v17, v18, v18, *(a1 + 328), a1 + 296);
    bn_mod_mul_montgomery_small(v16, a3 + 18, a3 + 18, *(a1 + 328), a1 + 296);
    bn_mod_add_words(v15, a3, v18[0].i64, *(a1 + 320), v20, *(a1 + 328));
    bn_mod_mul_montgomery_small(v15, v15, v15, *(a1 + 328), a1 + 296);
    bn_mod_sub_words(v15, v15, v19, *(a1 + 320), v20, *(a1 + 328));
    bn_mod_sub_words(v15, v15, v17, *(a1 + 320), v20, *(a1 + 328));
    bn_mod_add_words(v15, v15[0].i64, v15[0].i64, *(a1 + 320), v20, *(a1 + 328));
    bn_mod_mul_montgomery_small(v14, v16, v16, *(a1 + 328), a1 + 296);
    bn_mod_mul_montgomery_small(v14, (a1 + 360), v14, *(a1 + 328), a1 + 296);
    bn_mod_add_words(v14, v14[0].i64, v19[0].i64, *(a1 + 320), v20, *(a1 + 328));
    bn_mod_add_words(v14, v14[0].i64, v19[0].i64, *(a1 + 320), v20, *(a1 + 328));
    bn_mod_add_words(v14, v14[0].i64, v19[0].i64, *(a1 + 320), v20, *(a1 + 328));
    bn_mod_mul_montgomery_small(a2, v14, v14, *(a1 + 328), a1 + 296);
    bn_mod_sub_words(a2, a2, v15, *(a1 + 320), v20, *(a1 + 328));
    bn_mod_sub_words(a2, a2, v15, *(a1 + 320), v20, *(a1 + 328));
    bn_mod_add_words(a2 + 144, a3 + 9, a3 + 18, *(a1 + 320), v20, *(a1 + 328));
    bn_mod_mul_montgomery_small((a2 + 144), (a2 + 144), (a2 + 144), *(a1 + 328), a1 + 296);
    bn_mod_sub_words(a2 + 144, (a2 + 144), v18, *(a1 + 320), v20, *(a1 + 328));
    bn_mod_sub_words(a2 + 144, (a2 + 144), v16, *(a1 + 320), v20, *(a1 + 328));
    bn_mod_add_words(v17, v17[0].i64, v17[0].i64, *(a1 + 320), v20, *(a1 + 328));
    bn_mod_add_words(v17, v17[0].i64, v17[0].i64, *(a1 + 320), v20, *(a1 + 328));
    bn_mod_add_words(v17, v17[0].i64, v17[0].i64, *(a1 + 320), v20, *(a1 + 328));
    bn_mod_sub_words(a2 + 72, v15, a2, *(a1 + 320), v20, *(a1 + 328));
    bn_mod_mul_montgomery_small((a2 + 72), (a2 + 72), v14, *(a1 + 328), a1 + 296);
    v6 = *(a1 + 320);
    v7 = *(a1 + 328);
    v8 = a2 + 72;
    v9 = (a2 + 72);
    v10 = v17;
  }

  return bn_mod_sub_words(v8, v9, v10, v6, v20, v7);
}

void EC_GFp_mont_method_init(void)
{
  qword_2808D4540 = ec_GFp_mont_point_get_affine_coordinates;
  qword_2808D4548 = ec_GFp_mont_jacobian_to_affine_batch;
  qword_2808D4550 = ec_GFp_mont_add;
  qword_2808D4558 = ec_GFp_mont_dbl;
  qword_2808D4560 = ec_GFp_mont_mul;
  qword_2808D4568 = ec_GFp_mont_mul_base;
  qword_2808D4570 = ec_GFp_mont_mul_batch;
  qword_2808D4580 = ec_GFp_mont_mul_public_batch;
  qword_2808D4588 = ec_GFp_mont_init_precomp;
  qword_2808D4590 = ec_GFp_mont_mul_precomp;
  qword_2808D4598 = ec_GFp_mont_felem_mul;
  qword_2808D45A0 = ec_GFp_mont_felem_sqr;
  qword_2808D45A8 = ec_GFp_mont_felem_to_bytes;
  qword_2808D45B0 = ec_GFp_mont_felem_from_bytes;
  qword_2808D45B8 = ec_GFp_mont_felem_reduce;
  qword_2808D45C0 = ec_GFp_mont_felem_exp;
  qword_2808D45C8 = ec_simple_scalar_inv0_montgomery;
  qword_2808D45D0 = ec_simple_scalar_to_montgomery_inv_vartime;
  qword_2808D45D8 = ec_GFp_mont_cmp_x_coordinate;
}

uint64_t ec_felem_neg(uint64_t result, int8x16_t *a2, int8x16_t *a3)
{
  v3 = *(result + 328);
  if (v3 >= 1)
  {
    if (v3 > 3)
    {
      v4 = v3 & 0x7FFFFFFC;
      v7 = a3 + 1;
      v8 = 0uLL;
      v9 = v4;
      v10 = 0uLL;
      do
      {
        v8 = vorrq_s8(v7[-1], v8);
        v10 = vorrq_s8(*v7, v10);
        v7 += 2;
        v9 -= 4;
      }

      while (v9);
      v11 = vorrq_s8(v10, v8);
      v5 = vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL));
      if (v4 == v3)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    v12 = v3 - v4;
    v13 = &a3->i64[v4];
    do
    {
      v14 = *v13++;
      *&v5 |= v14;
      --v12;
    }

    while (v12);
LABEL_11:
    if (v5)
    {
      v6 = -1;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_14;
  }

  v6 = 0;
  if (!v3)
  {
    return result;
  }

LABEL_14:
  v15 = *(result + 320);
  if (v3 < 4)
  {
    v16 = 0;
    v17 = *(result + 328);
    v18 = a2;
    do
    {
LABEL_25:
      v34 = *v15++;
      v33 = v34;
      v35 = a3->i64[0];
      a3 = (a3 + 8);
      v20 = v33 >= v35;
      v36 = v33 - v35;
      v37 = !v20;
      v20 = v36 >= v16;
      v38 = v36 - v16;
      if (v20)
      {
        v16 = v37;
      }

      else
      {
        v16 = 1;
      }

      *v18++ = v38;
      --v17;
    }

    while (v17);
    goto LABEL_32;
  }

  v16 = 0;
  v17 = *(result + 328);
  v18 = a2;
  do
  {
    v19 = *v15 - a3->i64[0];
    v20 = v19 >= v16;
    v21 = v19 - v16;
    v22 = !v20 || *v15 < a3->i64[0];
    v20 = !v22;
    *v18 = v21;
    v23 = v15[1];
    v24 = a3->i64[1];
    v25 = v20;
    v20 = __CFSUB__(v23, v24, v20);
    v18[1] = v23 - (v24 + !v25);
    v26 = v15[2];
    v27 = a3[1].i64[0];
    v28 = v20;
    v20 = __CFSUB__(v26, v27, v20);
    v18[2] = v26 - (v27 + !v28);
    v29 = v15[3];
    v30 = a3[1].i64[1];
    v32 = v20;
    v20 = __CFSUB__(v29, v30, v20);
    v31 = v29 - (v30 + !v32);
    v16 = !v20;
    v18[3] = v31;
    v15 += 4;
    a3 += 2;
    v18 += 4;
    v17 -= 4;
  }

  while (v17 >= 4);
  if (v17)
  {
    goto LABEL_25;
  }

LABEL_32:
  if (v3 < 1)
  {
    return result;
  }

  if (v3 <= 3)
  {
    v39 = 0;
LABEL_38:
    v44 = v3 - v39;
    v45 = &a2->i64[v39];
    do
    {
      *v45++ &= v6;
      --v44;
    }

    while (v44);
    return result;
  }

  v39 = v3 & 0x7FFFFFFC;
  v40 = vdupq_n_s64(v6);
  v41 = a2 + 1;
  v42 = v39;
  do
  {
    v43 = vandq_s8(*v41, v40);
    v41[-1] = vandq_s8(v41[-1], v40);
    *v41 = v43;
    v41 += 2;
    v42 -= 4;
  }

  while (v42);
  if (v39 != v3)
  {
    goto LABEL_38;
  }

  return result;
}

uint64_t ec_point_byte_len(uint64_t a1, int a2)
{
  if (a2 != 2 && a2 != 4)
  {
    ERR_put_error(15, 0, 111, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/oct.cc.inc", 27);
    return 0;
  }

  v2 = *(a1 + 328);
  if (v2 < 1)
  {
    if (!v2)
    {
      return 1;
    }

    v3 = *(a1 + 320);
  }

  else
  {
    v3 = *(a1 + 320);
    while (!*(v3 - 8 + 8 * v2))
    {
      v4 = __OFSUB__(v2--, 1);
      if ((v2 < 0) ^ v4 | (v2 == 0))
      {
        return 1;
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
  if (v7 > 1)
  {
    ++v14;
  }

  v15 = (v14 + 7) >> 3;
  if (a2 == 4)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return v15 + v16 + 1;
}

uint64_t ec_point_from_uncompressed(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v4 = *(a1 + 328);
  if (v4 >= 1)
  {
    v5 = *(a1 + 320);
    while (!*(v5 - 8 + 8 * v4))
    {
      v6 = __OFSUB__(v4--, 1);
      if ((v4 < 0) ^ v6 | (v4 == 0))
      {
        goto LABEL_23;
      }
    }

LABEL_9:
    v7 = v4 - 1;
    v8 = *(v5 + 8 * v7);
    v9 = v8 != 0;
    v10 = HIDWORD(v8) != 0;
    if (HIDWORD(v8))
    {
      v8 >>= 32;
    }

    v11 = v8 >> 16 != 0;
    if (v8 >> 16)
    {
      v8 >>= 16;
    }

    v12 = v8 > 0xFF;
    if (v8 > 0xFF)
    {
      v8 >>= 8;
    }

    v13 = v8 > 0xF;
    if (v8 > 0xF)
    {
      v8 >>= 4;
    }

    v14 = v8 > 3;
    if (v8 > 3)
    {
      v8 >>= 2;
    }

    v15 = v9 | (v7 << 6) | (32 * v10) | (16 * v11) | (8 * v12) | (4 * v13) | (2 * v14);
    if (v8 > 1)
    {
      ++v15;
    }

    v16 = (v15 + 7) >> 3;
    if (((2 * v16) | 1) != a4)
    {
      goto LABEL_29;
    }

    goto LABEL_24;
  }

  if (v4)
  {
    v5 = *(a1 + 320);
    goto LABEL_9;
  }

LABEL_23:
  v16 = 0;
  if (a4 != 1)
  {
LABEL_29:
    ERR_put_error(15, 0, 109, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/oct.cc.inc", 70);
    return 0;
  }

LABEL_24:
  if (*a3 != 4)
  {
    goto LABEL_29;
  }

  v18 = a3 + 1;
  result = (*(*a1 + 112))(a1, v22, a3 + 1, v16);
  if (result)
  {
    result = (*(*a1 + 112))(a1, v21, &v18[v16], v16);
    if (result)
    {
      return ec_point_set_affine_coordinates(a1, a2, v22, v21);
    }
  }

  return result;
}

size_t EC_POINT_point2oct(const EC_GROUP *a1, const EC_POINT *a2, point_conversion_form_t form, unsigned __int8 *buf, size_t len, BN_CTX *a6)
{
  v32 = *MEMORY[0x277D85DE8];
  if (EC_GROUP_cmp(a1, *a2, *&form))
  {
    v11 = 106;
    v12 = 158;
LABEL_3:
    ERR_put_error(15, 0, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/oct.cc.inc", v12);
    return 0;
  }

  if (!buf)
  {
    v15 = *(a1 + 82);
    if (v15 < 1)
    {
      goto LABEL_23;
    }

    if (v15 >= 4)
    {
      v16 = v15 & 0x7FFFFFFC;
      v20 = (a2 + 168);
      v21 = 0uLL;
      v22 = v16;
      v23 = 0uLL;
      do
      {
        v21 = vorrq_s8(v20[-1], v21);
        v23 = vorrq_s8(*v20, v23);
        v20 += 2;
        v22 -= 4;
      }

      while (v22);
      v24 = vorrq_s8(v23, v21);
      v17 = vorr_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
      if (v16 == v15)
      {
LABEL_19:
        if (v17)
        {

          return ec_point_byte_len(a1, form);
        }

LABEL_23:
        v11 = 119;
        v12 = 165;
        goto LABEL_3;
      }
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    v25 = v15 - v16;
    v26 = (a2 + 8 * v16 + 152);
    do
    {
      v27 = *v26++;
      *&v17 |= v27;
      --v25;
    }

    while (v25);
    goto LABEL_19;
  }

  if (!(**a1)(a1, a2 + 8, v28, v29))
  {
    return 0;
  }

  v14 = ec_point_byte_len(a1, form);
  if (v14 > len)
  {
    v11 = 100;
    v12 = 45;
    goto LABEL_3;
  }

  v18 = v14;
  v30 = 0;
  (*(*a1 + 104))(a1, buf + 1, &v30, v28);
  if (form == POINT_CONVERSION_UNCOMPRESSED)
  {
    (*(*a1 + 104))(a1, &buf[v30 + 1], &v30, v29);
    v19 = 4;
  }

  else
  {
    (*(*a1 + 104))(a1, v31, &v30, v29);
    v19 = (v31[v30 - 1] & 1) + form;
  }

  *buf = v19;
  return v18;
}

int EC_POINT_set_compressed_coordinates_GFp(const EC_GROUP *a1, EC_POINT *a2, const BIGNUM *x, int y_bit, BN_CTX *a5)
{
  v43 = *MEMORY[0x277D85DE8];
  if (EC_GROUP_cmp(a1, *a2, x))
  {
    v10 = 106;
    v11 = 202;
LABEL_7:
    ERR_put_error(15, 0, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/oct.cc.inc", v11);
    LODWORD(v12) = 0;
    return v12;
  }

  if (x->neg || *(a1 + 84) || (BN_ucmp(x, (a1 + 320)) & 0x80000000) == 0)
  {
    v10 = 107;
    v11 = 208;
    goto LABEL_7;
  }

  ERR_clear_error();
  v13 = y_bit != 0;
  if ((*(a5 + 56) & 1) == 0)
  {
    v14 = *(a5 + 6);
    if (bssl::Vector<unsigned long>::MaybeGrow(a5 + 3))
    {
      *(*(a5 + 3) + 8 * (*(a5 + 4))++) = v14;
    }

    else
    {
      *(a5 + 28) = 257;
      ERR_clear_error();
    }
  }

  v15 = BN_CTX_get(a5);
  v16 = BN_CTX_get(a5);
  v17 = BN_CTX_get(a5);
  v18 = BN_CTX_get(a5);
  v12 = BN_CTX_get(a5);
  if (v12)
  {
    v19 = v12;
    if (!v17 || (*len = 0, (*(*a1 + 104))(a1, s, len, a1 + 360), (v12 = BN_bin2bn(s, len[0], v17)) != 0))
    {
      if (!v18 || (*len = 0, (*(*a1 + 104))(a1, s, len, a1 + 432), (v12 = BN_bin2bn(s, len[0], v18)) != 0))
      {
        LODWORD(v12) = BN_mod_sqr(v16, x, (a1 + 320), a5);
        if (v12)
        {
          LODWORD(v12) = BN_mod_mul(v15, v16, x, (a1 + 320), a5);
          if (v12)
          {
            if (*(a1 + 132))
            {
              LODWORD(v12) = bn_mod_add_consttime(v16, x, x, a1 + 320, a5);
              if (!v12)
              {
                goto LABEL_55;
              }

              LODWORD(v12) = bn_mod_add_consttime(v16, v16, x, a1 + 320, a5);
              if (!v12)
              {
                goto LABEL_55;
              }

              LODWORD(v12) = bn_mod_sub_consttime(v15, v15, v16, a1 + 320, a5);
              if (!v12)
              {
                goto LABEL_55;
              }

LABEL_27:
              LODWORD(v12) = bn_mod_add_consttime(v15, v15, v18, a1 + 320, a5);
              if (!v12)
              {
                goto LABEL_55;
              }

              if (!BN_mod_sqrt(v19, v15, (a1 + 320), a5))
              {
                if ((ERR_peek_last_error() & 0xFF000FFF) == 0x300006E)
                {
                  ERR_clear_error();
                  v24 = 107;
                  v25 = 269;
                }

                else
                {
                  v24 = 3;
                  v25 = 271;
                }

                goto LABEL_54;
              }

              v21 = v19;
              top = v19->top;
              if (top < 1)
              {
                v23 = 0;
              }

              else
              {
                v23 = *v19->d & 1;
              }

              if (v23 == v13)
              {
                if (top >= 1)
                {
LABEL_36:
                  v26 = *v21->d & 1;
LABEL_50:
                  if (v26 == v13)
                  {
                    LODWORD(v12) = EC_POINT_set_affine_coordinates_GFp(a1, a2, x, v19, v20);
                    goto LABEL_55;
                  }

                  v24 = 68;
                  v25 = 286;
                  goto LABEL_54;
                }

LABEL_49:
                v26 = 0;
                goto LABEL_50;
              }

              if (!top)
              {
LABEL_53:
                v24 = 108;
                v25 = 278;
LABEL_54:
                ERR_put_error(15, 0, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/oct.cc.inc", v25);
                LODWORD(v12) = 0;
                goto LABEL_55;
              }

              v27 = top;
              d = v19->d;
              if (top >= 4)
              {
                v29 = top & 0xFFFFFFFFFFFFFFFCLL;
                v31 = d + 1;
                v32 = 0uLL;
                v33 = v27 & 0xFFFFFFFFFFFFFFFCLL;
                v34 = 0uLL;
                do
                {
                  v32 = vorrq_s8(v31[-1], v32);
                  v34 = vorrq_s8(*v31, v34);
                  v31 += 2;
                  v33 -= 4;
                }

                while (v33);
                v35 = vorrq_s8(v34, v32);
                v30 = vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
                if (v29 == v27)
                {
LABEL_46:
                  if (v30)
                  {
                    LODWORD(v12) = BN_usub(v19, (a1 + 320), v19);
                    if (!v12)
                    {
                      goto LABEL_55;
                    }

                    v21 = v19;
                    if (v19->top >= 1)
                    {
                      goto LABEL_36;
                    }

                    goto LABEL_49;
                  }

                  goto LABEL_53;
                }
              }

              else
              {
                v29 = 0;
                v30 = 0;
              }

              v36 = v27 - v29;
              v37 = &d->i64[v29];
              do
              {
                v38 = *v37++;
                *&v30 |= v38;
                --v36;
              }

              while (v36);
              goto LABEL_46;
            }

            LODWORD(v12) = BN_mod_mul(v16, v17, x, (a1 + 320), a5);
            if (v12)
            {
              LODWORD(v12) = bn_mod_add_consttime(v15, v15, v16, a1 + 320, a5);
              if (v12)
              {
                goto LABEL_27;
              }
            }
          }
        }
      }
    }
  }

LABEL_55:
  if ((*(a5 + 56) & 1) == 0)
  {
    v39 = *(a5 + 4);
    if (!v39)
    {
      abort();
    }

    *(a5 + 6) = *(*(a5 + 3) + 8 * v39 - 8);
    *(a5 + 4) = v39 - 1;
  }

  return v12;
}

void EC_GFp_nistp224_method_init(void)
{
  qword_2808D45E0 = ec_GFp_nistp224_point_get_affine_coordinates;
  qword_2808D45F0 = ec_GFp_nistp224_add;
  qword_2808D45F8 = ec_GFp_nistp224_dbl;
  qword_2808D4600 = ec_GFp_nistp224_point_mul;
  qword_2808D4608 = ec_GFp_nistp224_point_mul_base;
  qword_2808D4618 = ec_GFp_nistp224_point_mul_public;
  qword_2808D4638 = ec_GFp_nistp224_felem_mul;
  qword_2808D4640 = ec_GFp_nistp224_felem_sqr;
  qword_2808D4648 = ec_GFp_simple_felem_to_bytes;
  qword_2808D4650 = ec_GFp_simple_felem_from_bytes;
  qword_2808D4668 = ec_simple_scalar_inv0_montgomery;
  qword_2808D4670 = ec_simple_scalar_to_montgomery_inv_vartime;
  qword_2808D4678 = ec_GFp_simple_cmp_x_coordinate;
}

void EC_GFp_nistp256_method_init(void)
{
  qword_2808D4680 = ec_GFp_nistp256_point_get_affine_coordinates;
  qword_2808D4690 = ec_GFp_nistp256_add;
  qword_2808D4698 = ec_GFp_nistp256_dbl;
  qword_2808D46A0 = ec_GFp_nistp256_point_mul;
  qword_2808D46A8 = ec_GFp_nistp256_point_mul_base;
  qword_2808D46B8 = ec_GFp_nistp256_point_mul_public;
  qword_2808D46D8 = ec_GFp_mont_felem_mul;
  qword_2808D46E0 = ec_GFp_mont_felem_sqr;
  qword_2808D46E8 = ec_GFp_mont_felem_to_bytes;
  qword_2808D46F0 = ec_GFp_mont_felem_from_bytes;
  qword_2808D46F8 = ec_GFp_mont_felem_reduce;
  qword_2808D4700 = ec_GFp_mont_felem_exp;
  qword_2808D4708 = ec_simple_scalar_inv0_montgomery;
  qword_2808D4710 = ec_simple_scalar_to_montgomery_inv_vartime;
  qword_2808D4718 = ec_GFp_nistp256_cmp_x_coordinate;
}

uint64_t ec_scalar_from_bytes(uint64_t a1, int8x16_t *a2, unsigned __int8 *a3, unint64_t a4)
{
  v4 = *(a1 + 264);
  if (v4 < 1)
  {
    if (!v4)
    {
LABEL_31:
      if (!a4)
      {
        goto LABEL_22;
      }

LABEL_32:
      v24 = 74;
LABEL_45:
      ERR_put_error(15, 0, 133, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/scalar.cc.inc", v24);
      return 0;
    }

    v5 = *(a1 + 256);
    v6 = *(a1 + 264);
  }

  else
  {
    v5 = *(a1 + 256);
    v6 = *(a1 + 264);
    while (!*(v5 - 8 + 8 * v6))
    {
      v7 = __OFSUB__(v6--, 1);
      if ((v6 < 0) ^ v7 | (v6 == 0))
      {
        goto LABEL_31;
      }
    }
  }

  v8 = v6 - 1;
  v9 = *(v5 + 8 * v8);
  v10 = v9 != 0;
  v11 = HIDWORD(v9) != 0;
  if (HIDWORD(v9))
  {
    v9 >>= 32;
  }

  v12 = v9 >> 16 != 0;
  if (v9 >> 16)
  {
    v9 >>= 16;
  }

  v13 = v9 > 0xFF;
  if (v9 > 0xFF)
  {
    v9 >>= 8;
  }

  v14 = v9 > 0xF;
  if (v9 > 0xF)
  {
    v9 >>= 4;
  }

  v15 = v9 > 3;
  if (v9 > 3)
  {
    v9 >>= 2;
  }

  v16 = v9 > 1;
  v17 = v10 | (v8 << 6) | (32 * v11) | (16 * v12) | (8 * v13) | (4 * v14) | (2 * v15);
  if (v16)
  {
    ++v17;
  }

  if ((v17 + 7) >> 3 != a4)
  {
    goto LABEL_32;
  }

LABEL_22:
  v18 = v4;
  if (a4 > 8 * v4)
  {
    abort();
  }

  v19 = a4 - 8;
  if (a4 < 8)
  {
    v22 = v4;
    v21 = a2;
    v20 = a4;
    goto LABEL_34;
  }

  if (v19 <= 0x47 || &a3[a4] > a2 && &a3[a4 & 7] < &a2->u8[a4 & 0xFFFFFFFFFFFFFFF8])
  {
    v20 = a4;
    v21 = a2;
    v22 = v4;
LABEL_28:
    v23 = v20;
    do
    {
      v20 = v23 - 8;
      *v21++ = bswap64(*&a3[v23 - 8]);
      --v22;
      v23 = v20;
    }

    while (v20 > 7);
    goto LABEL_34;
  }

  v36 = (v19 >> 3) + 1;
  v37 = v36 & 0x3FFFFFFFFFFFFFFCLL;
  v20 = a4 - v37 * 8;
  v21 = &a2->i64[v37];
  v38 = a2 + 1;
  v39 = &a3[a4 - 16];
  v40 = 0uLL;
  v41 = v4;
  v42.i64[0] = -1;
  v42.i64[1] = -1;
  v43 = v36 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v44 = vrev64q_s8(vextq_s8(v39[-1], v39[-1], 8uLL));
    v38[-1] = vrev64q_s8(vextq_s8(*v39, *v39, 8uLL));
    *v38 = v44;
    v41 = vaddq_s64(v41, v42);
    v40 = vaddq_s64(v40, v42);
    v38 += 2;
    v39 -= 2;
    v43 -= 4;
  }

  while (v43);
  v22 = vaddvq_s64(vpaddq_s64(v41, v40));
  if (v36 != (v36 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_28;
  }

LABEL_34:
  if (v20)
  {
    v25 = 0;
    do
    {
      v26 = *a3++;
      v25 = v26 | (v25 << 8);
      --v20;
    }

    while (v20);
    *v21++ = v25;
    --v22;
  }

  if (8 * v22)
  {
    v27 = a1;
    v28 = a2;
    bzero(v21, 8 * v22);
    a1 = v27;
    a2 = v28;
    v4 = *(v27 + 264);
    v18 = v4;
  }

  if (!v4)
  {
    goto LABEL_44;
  }

  v29 = 0;
  v30 = *(a1 + 256);
  do
  {
    v32 = a2->i64[0];
    a2 = (a2 + 8);
    v31 = v32;
    v33 = *v30++;
    v34 = (((v33 ^ v31) - 1) & ~(v33 ^ v31)) >> 63;
    v29 = v34 & v29 | ((((v31 - v33) ^ v31 | v33 ^ v31) ^ v31) >> 63) & ~v34;
    --v18;
  }

  while (v18);
  if ((v29 & 0x80000000) == 0)
  {
LABEL_44:
    v24 = 81;
    goto LABEL_45;
  }

  return 1;
}

void ec_simple_scalar_inv0_montgomery(uint64_t a1, int8x16_t *a2, const void *a3)
{
  v12[8] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 264);
  if (v3 >= 0xA)
  {
    abort();
  }

  if (v3)
  {
    memcpy(&v11, *(a1 + 256), 8 * v3);
    if (v11 < 2)
    {
      v11 |= 0xFFFFFFFFFFFFFFFELL;
      if (v3 != 1)
      {
        v7 = v3 - 2;
        v8 = v12;
        do
        {
          v9 = v7;
          if ((*v8++)-- != 0)
          {
            break;
          }

          --v7;
        }

        while (v9);
      }
    }

    else
    {
      v11 -= 2;
    }
  }

  else
  {
    v11 = -1;
  }

  bn_mod_exp_mont_small(a2, a3, v3, &v11, v3, a1 + 232);
}

uint64_t ec_simple_scalar_to_montgomery_inv_vartime(unsigned int *a1, void *a2, int8x16_t *a3)
{
  v3 = a1[66];
  if (v3 < 1)
  {
    return 0;
  }

  if (v3 >= 4)
  {
    v4 = v3 & 0x7FFFFFFC;
    v7 = a3 + 1;
    v8 = 0uLL;
    v9 = v4;
    v10 = 0uLL;
    do
    {
      v8 = vorrq_s8(v7[-1], v8);
      v10 = vorrq_s8(*v7, v10);
      v7 += 2;
      v9 -= 4;
    }

    while (v9);
    v11 = vorrq_s8(v10, v8);
    v5 = vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL));
    if (v4 == v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v12 = v3 - v4;
  v13 = &a3->i64[v4];
  do
  {
    v14 = *v13++;
    *&v5 |= v14;
    --v12;
  }

  while (v12);
LABEL_10:
  if (!*&v5)
  {
    return 0;
  }

  (*(*a1 + 136))();
  bn_from_montgomery_small(a2, a1[66], a2, a1[66], (a1 + 58));
  return 1;
}

uint64_t ec_GFp_simple_cmp_x_coordinate(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = *(a1 + 328);
  if (v5 < 1)
  {
    return 0;
  }

  v21 = v3;
  v22 = v4;
  if (v5 < 4)
  {
    v6 = 0;
    v7 = 0;
LABEL_8:
    v14 = v5 - v6;
    v15 = (a2 + 8 * v6 + 144);
    do
    {
      v16 = *v15++;
      *&v7 |= v16;
      --v14;
    }

    while (v14);
    goto LABEL_10;
  }

  v6 = v5 & 0x7FFFFFFC;
  v9 = (a2 + 160);
  v10 = 0uLL;
  v11 = v6;
  v12 = 0uLL;
  do
  {
    v10 = vorrq_s8(v9[-1], v10);
    v12 = vorrq_s8(*v9, v12);
    v9 += 2;
    v11 -= 4;
  }

  while (v11);
  v13 = vorrq_s8(v12, v10);
  v7 = vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL));
  if (v6 != v5)
  {
    goto LABEL_8;
  }

LABEL_10:
  if (!*&v7)
  {
    return 0;
  }

  result = ec_get_x_coordinate_as_scalar(a1, __s1, a2);
  if (result)
  {
    v19 = *(a1 + 264);
    return !v19 || memcmp(__s1, a3, 8 * v19) == 0;
  }

  return result;
}

double ec_GFp_mont_mul(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v95 = v4;
  v6 = v5;
  v7 = v3;
  v123 = *MEMORY[0x277D85DE8];
  memset(v109, 0, sizeof(v109));
  memset(v108, 0, sizeof(v108));
  v107 = 0u;
  v9 = *(v8 + 64);
  v10 = *(v8 + 32);
  v111[3] = *(v8 + 48);
  v11 = *(v8 + 16);
  v111[0] = *v8;
  v110 = 0;
  v112 = v9;
  v111[2] = v10;
  v111[1] = v11;
  v12 = *(v8 + 72);
  v13 = *(v8 + 136);
  v14 = *(v8 + 120);
  v115 = *(v8 + 104);
  v116 = v14;
  v15 = *(v8 + 88);
  v16 = *(v8 + 192);
  v120 = *(v8 + 176);
  v121 = v16;
  v17 = *(v8 + 160);
  v18 = *(v8 + 208);
  v118 = *(v8 + 144);
  v119 = v17;
  v117 = v13;
  v122 = v18;
  v19 = 2;
  v20 = v111;
  v113 = v12;
  v114 = v15;
  do
  {
    while ((v19 & 1) == 0)
    {
      ec_GFp_mont_dbl(v7, (v20 + 27), &v108[-1] + 27 * (v19++ >> 1));
      v20 += 27;
      if (v19 == 32)
      {
        goto LABEL_5;
      }
    }

    ec_GFp_mont_add(v7, (v20 + 27), v111, v20);
    ++v19;
    v20 += 27;
  }

  while (v19 != 32);
LABEL_5:
  v21 = *(v7 + 264);
  if (v21 < 1)
  {
    if (!v21)
    {
LABEL_78:
      *(v6 + 208) = 0;
      result = 0.0;
      *(v6 + 176) = 0u;
      *(v6 + 192) = 0u;
      *(v6 + 144) = 0u;
      *(v6 + 160) = 0u;
      *(v6 + 112) = 0u;
      *(v6 + 128) = 0u;
      *(v6 + 80) = 0u;
      *(v6 + 96) = 0u;
      *(v6 + 48) = 0u;
      *(v6 + 64) = 0u;
      *(v6 + 16) = 0u;
      *(v6 + 32) = 0u;
      *v6 = 0u;
      return result;
    }

    v22 = *(v7 + 256);
  }

  else
  {
    v22 = *(v7 + 256);
    while (!*(v22 - 8 + 8 * v21))
    {
      v23 = __OFSUB__(v21--, 1);
      if ((v21 < 0) ^ v23 | (v21 == 0))
      {
        goto LABEL_78;
      }
    }
  }

  v24 = v21 - 1;
  v25 = *(v22 + 8 * v24);
  v26 = v25 != 0;
  v27 = HIDWORD(v25) != 0;
  if (HIDWORD(v25))
  {
    v25 >>= 32;
  }

  v28 = v25 >> 16 != 0;
  if (v25 >> 16)
  {
    v25 >>= 16;
  }

  v29 = v25 > 0xFF;
  if (v25 > 0xFF)
  {
    v25 >>= 8;
  }

  v30 = v25 > 0xF;
  if (v25 > 0xF)
  {
    v25 >>= 4;
  }

  v31 = v25 > 3;
  if (v25 > 3)
  {
    v25 >>= 2;
  }

  v32 = v26 | (v24 << 6) | (32 * v27) | (16 * v28) | (8 * v29) | (4 * v30) | (2 * v31);
  if (v25 <= 1)
  {
    v33 = v32;
  }

  else
  {
    v33 = v32 + 1;
  }

  if (!v33)
  {
    goto LABEL_78;
  }

  v96 = 0;
  v34 = v33 - 1;
  v35 = v33;
  while ((v96 & 1) == 0)
  {
    v37 = v34;
    if (-858993459 * v34 >= 0x33333334)
    {
      do
      {
        if (--v34 >= v33)
        {
          goto LABEL_78;
        }
      }

      while (5 * (v34 / 5) != v34);
LABEL_36:
      v35 = v34 + 1;
      v37 = v34;
    }

LABEL_37:
    v38 = *(v7 + 264);
    if ((v35 + 3) >> 6 >= v38)
    {
      v40 = 0;
      v39 = v95;
      v41 = v35 + 2;
      v42 = v41 >> 6;
      if (v41 >> 6 >= v38)
      {
LABEL_39:
        v43 = 0;
        v44 = v35 + 1;
        v45 = v44 >> 6;
        if (v44 >> 6 >= v38)
        {
          goto LABEL_40;
        }

        goto LABEL_45;
      }
    }

    else
    {
      v39 = v95;
      v40 = 16 * ((*(v95 + 8 * ((v35 + 3) >> 6)) >> (v35 + 3)) & 1);
      v41 = v35 + 2;
      v42 = v41 >> 6;
      if (v41 >> 6 >= v38)
      {
        goto LABEL_39;
      }
    }

    v43 = 8 * ((*(v39 + 8 * v42) >> v41) & 1);
    v44 = v35 + 1;
    v45 = v44 >> 6;
    if (v44 >> 6 >= v38)
    {
LABEL_40:
      v46 = 0;
      v47 = v35;
      v48 = v35 >> 6;
      if (v48 >= v38)
      {
        goto LABEL_41;
      }

      goto LABEL_46;
    }

LABEL_45:
    v46 = 4 * ((*(v39 + 8 * v45) >> v44) & 1);
    v47 = v35;
    v48 = v35 >> 6;
    if (v48 >= v38)
    {
LABEL_41:
      v49 = 0;
      v50 = v37;
      v51 = v37 >> 6;
      if (v51 >= v38)
      {
        goto LABEL_42;
      }

      goto LABEL_47;
    }

LABEL_46:
    v49 = 2 * ((*(v39 + 8 * v48) >> v47) & 1);
    v50 = v37;
    v51 = v37 >> 6;
    if (v51 >= v38)
    {
LABEL_42:
      v52 = 0;
      goto LABEL_48;
    }

LABEL_47:
    v52 = (*(v39 + 8 * v51) >> v50) & 1;
LABEL_48:
    v106 = 0;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    memset(v101, 0, sizeof(v101));
    v98 = 0u;
    v99 = 0u;
    v97 = 0u;
    v53 = *(v7 + 328);
    if (v53)
    {
      v54 = 0;
      v55 = v43 | v40 | v46 | v49 | v52;
      v56 = v53 & 0xFFFFFFFFFFFFFFFCLL;
      v57 = &v107;
      v58 = v109;
      v59 = (&v108[4] + 8);
      v60 = v108;
      while (1)
      {
        v61 = ((v54 ^ v55) - 1) >> 63;
        v62 = ~v61;
        v63 = vdupq_n_s64(v61);
        v64 = vdupq_n_s64(~v61);
        if (v53 < 4)
        {
          break;
        }

        v66 = v53 & 0xFFFFFFFFFFFFFFFCLL;
        v67 = &v98;
        v68 = v60;
        do
        {
          v69 = vorrq_s8(vandq_s8(*v67, v64), vandq_s8(*v68, v63));
          v67[-1] = vorrq_s8(vandq_s8(v67[-1], v64), vandq_s8(v68[-1], v63));
          *v67 = v69;
          v68 += 2;
          v67 += 2;
          v66 -= 4;
        }

        while (v66);
        v65 = v53 & 0xFFFFFFFFFFFFFFFCLL;
        if (v56 != v53)
        {
          goto LABEL_56;
        }

LABEL_58:
        if (v53 < 4)
        {
          v75 = 0;
LABEL_63:
          v80 = v53 - v75;
          v81 = 8 * v75 + 72;
          do
          {
            *(&v97 + v81) = *(&v97 + v81) & v62 | *(v57 + v81) & v61;
            v81 += 8;
            --v80;
          }

          while (v80);
          goto LABEL_65;
        }

        v76 = v53 & 0xFFFFFFFFFFFFFFFCLL;
        v77 = (&v101[1] + 8);
        v78 = v59;
        do
        {
          v79 = vorrq_s8(vandq_s8(*v77, v64), vandq_s8(*v78, v63));
          v77[-1] = vorrq_s8(vandq_s8(v77[-1], v64), vandq_s8(v78[-1], v63));
          *v77 = v79;
          v78 += 2;
          v77 += 2;
          v76 -= 4;
        }

        while (v76);
        v75 = v53 & 0xFFFFFFFFFFFFFFFCLL;
        if (v56 != v53)
        {
          goto LABEL_63;
        }

LABEL_65:
        if (v53 >= 4)
        {
          v83 = v53 & 0xFFFFFFFFFFFFFFFCLL;
          v84 = &v103;
          v85 = v58;
          do
          {
            v86 = vorrq_s8(vandq_s8(*v84, v64), vandq_s8(*v85, v63));
            v84[-1] = vorrq_s8(vandq_s8(v84[-1], v64), vandq_s8(v85[-1], v63));
            *v84 = v86;
            v85 += 2;
            v84 += 2;
            v83 -= 4;
          }

          while (v83);
          v82 = v53 & 0xFFFFFFFFFFFFFFFCLL;
          if (v56 == v53)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v82 = 0;
        }

        v87 = v53 - v82;
        v88 = 8 * v82 + 144;
        do
        {
          *(&v97 + v88) = *(&v97 + v88) & v62 | *(v57 + v88) & v61;
          v88 += 8;
          --v87;
        }

        while (v87);
LABEL_50:
        ++v54;
        v60 = (v60 + 216);
        v57 = (v57 + 216);
        v59 = (v59 + 216);
        v58 = (v58 + 216);
        if (v54 == 32)
        {
          goto LABEL_73;
        }
      }

      v65 = 0;
LABEL_56:
      v70 = v53 - v65;
      v71 = 8 * v65;
      v72 = &v97 + v65;
      v73 = (v57 + v71);
      do
      {
        v74 = *v73++;
        *v72 = *v72 & v62 | v74 & v61;
        ++v72;
        --v70;
      }

      while (v70);
      goto LABEL_58;
    }

LABEL_73:
    if (v96)
    {
      v89 = v37;
      ec_GFp_mont_add(v7, v6, v6, &v97);
      v90 = v89;
      v34 = v89 - 1;
      v96 = 1;
      v35 = v90;
      if (v34 >= v33)
      {
        return result;
      }
    }

    else
    {
      v91 = v100;
      *(v6 + 32) = v99;
      *(v6 + 48) = v91;
      *(v6 + 64) = *&v101[0];
      v92 = v98;
      *v6 = v97;
      *(v6 + 16) = v92;
      *(v6 + 88) = *(&v101[1] + 8);
      *(v6 + 104) = *(&v101[2] + 8);
      *(v6 + 120) = *(&v101[3] + 8);
      *(v6 + 136) = *(&v101[4] + 1);
      *(v6 + 72) = *(v101 + 8);
      *(v6 + 208) = v106;
      v93 = v105;
      *(v6 + 176) = v104;
      *(v6 + 192) = v93;
      result = *&v102;
      v94 = v103;
      *(v6 + 144) = v102;
      *(v6 + 160) = v94;
      v34 = v37 - 1;
      v96 = 1;
      v35 = v37;
      if (v37 - 1 >= v33)
      {
        return result;
      }
    }
  }

  ec_GFp_mont_dbl(v7, v6, v6);
  v37 = v34;
  if (-858993459 * v34 < 0x33333334)
  {
    goto LABEL_37;
  }

  while (--v34 < v33)
  {
    ec_GFp_mont_dbl(v7, v6, v6);
    if (5 * (v34 / 5) == v34)
    {
      goto LABEL_36;
    }
  }

  return result;
}

double ec_GFp_mont_mul_batch(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v35 = v5;
  v36 = v4;
  v7 = v6;
  v37 = v8;
  v10 = v9;
  v12 = v11;
  v13 = v3;
  v52[459] = *MEMORY[0x277D85DE8];
  ec_GFp_mont_batch_precomp(v3, v50, v14);
  ec_GFp_mont_batch_precomp(v13, v51, v10);
  if (v7)
  {
    ec_GFp_mont_batch_precomp(v13, v52, v7);
  }

  v15 = *(v13 + 264);
  if (v15 >= 1)
  {
    v16 = *(v13 + 256);
    while (!*(v16 - 8 + 8 * v15))
    {
      v17 = __OFSUB__(v15--, 1);
      if ((v15 < 0) ^ v17 | (v15 == 0))
      {
        goto LABEL_24;
      }
    }

    goto LABEL_11;
  }

  if (v15)
  {
    v16 = *(v13 + 256);
LABEL_11:
    v18 = v15 - 1;
    v19 = *(v16 + 8 * v18);
    v20 = v19 != 0;
    v21 = HIDWORD(v19) != 0;
    if (HIDWORD(v19))
    {
      v19 >>= 32;
    }

    v22 = v19 >> 16 != 0;
    if (v19 >> 16)
    {
      v19 >>= 16;
    }

    v23 = v19 > 0xFF;
    if (v19 > 0xFF)
    {
      v19 >>= 8;
    }

    v24 = v19 > 0xF;
    if (v19 > 0xF)
    {
      v19 >>= 4;
    }

    v25 = v19 > 3;
    if (v19 > 3)
    {
      v19 >>= 2;
    }

    v26 = v20 | (v18 << 6) | (32 * v21) | (16 * v22) | (8 * v23) | (4 * v24) | (2 * v25);
    if (v19 <= 1)
    {
      v27 = v26;
    }

    else
    {
      v27 = v26 + 1;
    }

    goto LABEL_25;
  }

LABEL_24:
  v27 = 0;
LABEL_25:
  v28 = 0;
  v29 = v27;
  do
  {
    while ((v28 & 1) != 0)
    {
      ec_GFp_mont_dbl(v13, v12, v12);
      if (-858993459 * v29 < 0x33333334)
      {
        ec_GFp_mont_batch_get_window(v13, v38, v50, v36, v29);
        ec_GFp_mont_add(v13, v12, v12, v38);
        goto LABEL_34;
      }

LABEL_27:
      --v29;
      v28 = 1;
      if (v29 > v27)
      {
        return result;
      }
    }

    if (-858993459 * v29 <= 0x33333333)
    {
      ec_GFp_mont_batch_get_window(v13, v38, v50, v36, v29);
      v31 = v38[3];
      *(v12 + 32) = v38[2];
      *(v12 + 48) = v31;
      *(v12 + 64) = v39;
      v32 = v38[1];
      *v12 = v38[0];
      *(v12 + 16) = v32;
      *(v12 + 88) = v41;
      *(v12 + 104) = v42;
      *(v12 + 120) = v43;
      *(v12 + 136) = v44;
      *(v12 + 72) = v40;
      *(v12 + 208) = v49;
      v33 = v48;
      *(v12 + 176) = v47;
      *(v12 + 192) = v33;
      v34 = v46;
      *(v12 + 144) = v45;
      *(v12 + 160) = v34;
LABEL_34:
      ec_GFp_mont_batch_get_window(v13, v38, v51, v37, v29);
      ec_GFp_mont_add(v13, v12, v12, v38);
      if (v7)
      {
        ec_GFp_mont_batch_get_window(v13, v38, v52, v35, v29);
        ec_GFp_mont_add(v13, v12, v12, v38);
      }

      goto LABEL_27;
    }

    v28 = 0;
    --v29;
  }

  while (v29 <= v27);
  *(v12 + 208) = 0;
  result = 0.0;
  *(v12 + 176) = 0u;
  *(v12 + 192) = 0u;
  *(v12 + 144) = 0u;
  *(v12 + 160) = 0u;
  *(v12 + 112) = 0u;
  *(v12 + 128) = 0u;
  *(v12 + 80) = 0u;
  *(v12 + 96) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *v12 = 0u;
  return result;
}

unint64_t ec_GFp_mont_batch_precomp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 208) = 0;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v5 = (a2 + 216);
  *(a2 + 216) = *a3;
  v6 = *(a3 + 16);
  v7 = *(a3 + 32);
  v8 = *(a3 + 48);
  *(a2 + 280) = *(a3 + 64);
  *(a2 + 264) = v8;
  *(a2 + 248) = v7;
  *(a2 + 232) = v6;
  v9 = *(a3 + 104);
  v10 = *(a3 + 120);
  v11 = *(a3 + 88);
  *(a2 + 352) = *(a3 + 136);
  *(a2 + 320) = v9;
  *(a2 + 336) = v10;
  *(a2 + 304) = v11;
  *(a2 + 288) = *(a3 + 72);
  v13 = *(a3 + 176);
  v12 = *(a3 + 192);
  v14 = *(a3 + 160);
  *(a2 + 424) = *(a3 + 208);
  *(a2 + 392) = v13;
  *(a2 + 408) = v12;
  *(a2 + 376) = v14;
  *(a2 + 360) = *(a3 + 144);
  ec_GFp_mont_dbl(a1, a2 + 432, (a2 + 216));
  ec_GFp_mont_add(a1, a2 + 648, v5, (a2 + 432));
  ec_GFp_mont_dbl(a1, a2 + 864, (a2 + 432));
  ec_GFp_mont_add(a1, a2 + 1080, v5, (a2 + 864));
  ec_GFp_mont_dbl(a1, a2 + 1296, (a2 + 648));
  ec_GFp_mont_add(a1, a2 + 1512, v5, (a2 + 1296));
  ec_GFp_mont_dbl(a1, a2 + 1728, (a2 + 864));
  ec_GFp_mont_add(a1, a2 + 1944, v5, (a2 + 1728));
  ec_GFp_mont_dbl(a1, a2 + 2160, (a2 + 1080));
  ec_GFp_mont_add(a1, a2 + 2376, v5, (a2 + 2160));
  ec_GFp_mont_dbl(a1, a2 + 2592, (a2 + 1296));
  ec_GFp_mont_add(a1, a2 + 2808, v5, (a2 + 2592));
  ec_GFp_mont_dbl(a1, a2 + 3024, (a2 + 1512));
  ec_GFp_mont_add(a1, a2 + 3240, v5, (a2 + 3024));

  return ec_GFp_mont_dbl(a1, a2 + 3456, (a2 + 1728));
}

uint64_t ec_GFp_mont_batch_get_window(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  v7 = *(a1 + 264);
  if ((a5 + 4) >> 6 >= v7)
  {
    v8 = 0;
    v9 = a5 + 3;
    v10 = v9 >> 6;
    if (v9 >> 6 >= v7)
    {
LABEL_3:
      v11 = a5 + 2;
      v12 = v11 >> 6;
      if (v11 >> 6 >= v7)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v8 = 32 * ((*(a4 + 8 * ((a5 + 4) >> 6)) >> (a5 + 4)) & 1);
    v9 = a5 + 3;
    v10 = v9 >> 6;
    if (v9 >> 6 >= v7)
    {
      goto LABEL_3;
    }
  }

  v8 |= 16 * ((*(a4 + 8 * v10) >> v9) & 1);
  v11 = a5 + 2;
  v12 = v11 >> 6;
  if (v11 >> 6 >= v7)
  {
LABEL_4:
    v13 = a5 + 1;
    v14 = v13 >> 6;
    if (v13 >> 6 >= v7)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v8 |= 8 * ((*(a4 + 8 * v12) >> v11) & 1);
  v13 = a5 + 1;
  v14 = v13 >> 6;
  if (v13 >> 6 >= v7)
  {
LABEL_5:
    v15 = a5;
    v16 = a5 >> 6;
    if (v16 >= v7)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  v8 |= 4 * ((*(a4 + 8 * v14) >> v13) & 1);
  v15 = a5;
  v16 = a5 >> 6;
  if (v16 >= v7)
  {
LABEL_6:
    if (!a5)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

LABEL_12:
  v8 |= 2 * ((*(a4 + 8 * v16) >> v15) & 1);
  if (!a5)
  {
    goto LABEL_17;
  }

LABEL_13:
  if ((a5 - 1) >> 6 >= v7)
  {
    LODWORD(v17) = 0;
  }

  else
  {
    v17 = (*(a4 + 8 * ((a5 - 1) >> 6)) >> (a5 - 1)) & 1;
  }

  v8 |= v17;
LABEL_17:
  v18 = v8;
  v19 = v8 >> 5;
  v20 = -v19;
  *(a2 + 208) = 0;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 144) = 0u;
  v21 = *(a1 + 328);
  if (v21)
  {
    v22 = 0;
    v23 = (v19 - 1) & v18 | (v18 ^ 0x3F) & v20;
    v24 = v23 - (v23 >> 1);
    v25 = a2 + 8 * v21;
    v26 = a3 + 8 * v21;
    v27 = v26 + 3600;
    v28 = v26 + 3528;
    v29 = v26 + 3456 > a2;
    v30 = a2 + 72 < v28;
    v31 = a2 + 144 < v27;
    v32 = v25 > a3;
    v33 = v25 > a3 && v29;
    v34 = v21 & 0xFFFFFFFFFFFFFFFCLL;
    v35 = v25 > a3 && v30;
    if (!v32)
    {
      v31 = 0;
    }

    v36 = (a3 + 16);
    v37 = (a3 + 88);
    v38 = (a3 + 160);
    while (1)
    {
      v39 = (((v22 ^ v24) - 1) & ~v24) >> 63;
      v40 = ~v39;
      v41 = vdupq_n_s64(v39);
      v42 = vdupq_n_s64(~v39);
      if (v21 < 4 || v33)
      {
        break;
      }

      v44 = v21 & 0xFFFFFFFFFFFFFFFCLL;
      v45 = (a2 + 16);
      v46 = v36;
      do
      {
        v47 = vorrq_s8(vandq_s8(*v45, v42), vandq_s8(*v46, v41));
        v45[-1] = vorrq_s8(vandq_s8(v45[-1], v42), vandq_s8(v46[-1], v41));
        *v45 = v47;
        v46 += 2;
        v45 += 2;
        v44 -= 4;
      }

      while (v44);
      v43 = v21 & 0xFFFFFFFFFFFFFFFCLL;
      if (v34 != v21)
      {
        goto LABEL_33;
      }

LABEL_35:
      if (v21 < 4 || v35)
      {
        v53 = 0;
LABEL_40:
        v58 = v21 - v53;
        v59 = 8 * v53 + 72;
        do
        {
          *(a2 + v59) = *(a2 + v59) & v40 | *(a3 + v59) & v39;
          v59 += 8;
          --v58;
        }

        while (v58);
        goto LABEL_42;
      }

      v54 = v21 & 0xFFFFFFFFFFFFFFFCLL;
      v55 = (a2 + 88);
      v56 = v37;
      do
      {
        v57 = vorrq_s8(vandq_s8(*v55, v42), vandq_s8(*v56, v41));
        v55[-1] = vorrq_s8(vandq_s8(v55[-1], v42), vandq_s8(v56[-1], v41));
        *v55 = v57;
        v56 += 2;
        v55 += 2;
        v54 -= 4;
      }

      while (v54);
      v53 = v21 & 0xFFFFFFFFFFFFFFFCLL;
      if (v34 != v21)
      {
        goto LABEL_40;
      }

LABEL_42:
      if (v21 < 4 || v31)
      {
        v60 = 0;
      }

      else
      {
        v61 = v21 & 0xFFFFFFFFFFFFFFFCLL;
        v62 = (a2 + 160);
        v63 = v38;
        do
        {
          v64 = vorrq_s8(vandq_s8(*v62, v42), vandq_s8(*v63, v41));
          v62[-1] = vorrq_s8(vandq_s8(v62[-1], v42), vandq_s8(v63[-1], v41));
          *v62 = v64;
          v63 += 2;
          v62 += 2;
          v61 -= 4;
        }

        while (v61);
        v60 = v21 & 0xFFFFFFFFFFFFFFFCLL;
        if (v34 == v21)
        {
          goto LABEL_27;
        }
      }

      v65 = v21 - v60;
      v66 = 8 * v60 + 144;
      do
      {
        *(a2 + v66) = *(a2 + v66) & v40 | *(a3 + v66) & v39;
        v66 += 8;
        --v65;
      }

      while (v65);
LABEL_27:
      ++v22;
      v36 = (v36 + 216);
      a3 += 216;
      v37 = (v37 + 216);
      v38 = (v38 + 216);
      if (v22 == 17)
      {
        goto LABEL_50;
      }
    }

    v43 = 0;
LABEL_33:
    v48 = v21 - v43;
    v49 = 8 * v43;
    v50 = (a2 + 8 * v43);
    v51 = (a3 + v49);
    do
    {
      v52 = *v51++;
      *v50 = *v50 & v40 | v52 & v39;
      ++v50;
      --v48;
    }

    while (v48);
    goto LABEL_35;
  }

LABEL_50:
  result = ec_felem_neg(a1, &v83, (a2 + 72));
  v68 = *(a1 + 328);
  if (v68)
  {
    v69 = 0;
    v70 = -(v20 & 1);
    v71 = (v20 & 1) - 1;
    if (v68 < 4)
    {
      goto LABEL_55;
    }

    v69 = v68 & 0xFFFFFFFFFFFFFFFCLL;
    v72 = vdupq_n_s64(v70);
    v73 = vdupq_n_s64(v71);
    v74 = &v84;
    v75 = (a2 + 88);
    v76 = v68 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v77 = vorrq_s8(vandq_s8(*v75, v73), vandq_s8(*v74, v72));
      v75[-1] = vorrq_s8(vandq_s8(v75[-1], v73), vandq_s8(v74[-1], v72));
      *v75 = v77;
      v74 += 2;
      v75 += 2;
      v76 -= 4;
    }

    while (v76);
    if (v69 != v68)
    {
LABEL_55:
      v78 = v68 - v69;
      v79 = v69;
      v80 = (8 * v69 + a2 + 72);
      v81 = &v83.i64[v79];
      do
      {
        v82 = *v81++;
        *v80 = *v80 & v71 | v82 & v70;
        ++v80;
        --v78;
      }

      while (v78);
    }
  }

  return result;
}

uint64_t ec_GFp_mont_init_precomp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v6 = v5;
  v7 = v3;
  v83[27] = *MEMORY[0x277D85DE8];
  v8 = *(v3 + 328);
  if (v8 < 1)
  {
    if (!v8)
    {
LABEL_31:
      v32 = v4[11];
      v50 = v4[10];
      v51 = v32;
      v52 = v4[12];
      v53 = *(v4 + 26);
      v33 = v4[7];
      v46 = v4[6];
      v47 = v33;
      v34 = v4[9];
      v48 = v4[8];
      v49 = v34;
      v35 = v4[3];
      v42 = v4[2];
      v43 = v35;
      v36 = v4[5];
      v44 = v4[4];
      v45 = v36;
      v37 = v4[1];
      v40 = *v4;
      v41 = v37;
      goto LABEL_32;
    }

    v9 = *(v3 + 320);
  }

  else
  {
    v9 = *(v3 + 320);
    while (!*(v9 - 8 + 8 * v8))
    {
      v10 = __OFSUB__(v8--, 1);
      if ((v8 < 0) ^ v10 | (v8 == 0))
      {
        goto LABEL_31;
      }
    }
  }

  v11 = v8 - 1;
  v12 = *(v9 + 8 * v11);
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

  v19 = v4[11];
  v50 = v4[10];
  v51 = v19;
  v52 = v4[12];
  v53 = *(v4 + 26);
  v20 = v4[7];
  v46 = v4[6];
  v47 = v20;
  v21 = v4[9];
  v48 = v4[8];
  v49 = v21;
  v22 = v13 | (v11 << 6) | (32 * v14) | (16 * v15) | (8 * v16) | (4 * v17) | (2 * v18);
  v23 = v4[3];
  if (v12 > 1)
  {
    ++v22;
  }

  v24 = v22 + 4;
  v42 = v4[2];
  v43 = v23;
  v25 = v4[5];
  v44 = v4[4];
  v45 = v25;
  v26 = v4[1];
  v40 = *v4;
  v41 = v26;
  if (v24 >= 0xA)
  {
    v27 = v24 / 5;
    ec_GFp_mont_dbl(v3, v54, &v40);
    v28 = v27 - 1;
    v29 = v27 - 1;
    do
    {
      ec_GFp_mont_dbl(v7, v54, v54);
      --v29;
    }

    while (v29);
    ec_GFp_mont_add(v7, v55, v54, &v40);
    ec_GFp_mont_dbl(v7, v56, v54);
    v30 = v28;
    do
    {
      ec_GFp_mont_dbl(v7, v56, v56);
      --v30;
    }

    while (v30);
    ec_GFp_mont_add(v7, v57, v56, &v40);
    ec_GFp_mont_add(v7, v58, v56, v54);
    ec_GFp_mont_add(v7, v59, v56, v55);
    ec_GFp_mont_dbl(v7, v60, v56);
    v31 = v28;
    do
    {
      ec_GFp_mont_dbl(v7, v60, v60);
      --v31;
    }

    while (v31);
    ec_GFp_mont_add(v7, v61, v60, &v40);
    ec_GFp_mont_add(v7, v62, v60, v54);
    ec_GFp_mont_add(v7, v63, v60, v55);
    ec_GFp_mont_add(v7, v64, v60, v56);
    ec_GFp_mont_add(v7, v65, v60, v57);
    ec_GFp_mont_add(v7, v66, v60, v58);
    ec_GFp_mont_add(v7, v67, v60, v59);
    ec_GFp_mont_dbl(v7, v68, v60);
    do
    {
      ec_GFp_mont_dbl(v7, v68, v68);
      --v28;
    }

    while (v28);
    ec_GFp_mont_add(v7, v69, v68, &v40);
    ec_GFp_mont_add(v7, v70, v68, v54);
    ec_GFp_mont_add(v7, v71, v68, v55);
    ec_GFp_mont_add(v7, v72, v68, v56);
    ec_GFp_mont_add(v7, v73, v68, v57);
    ec_GFp_mont_add(v7, v74, v68, v58);
    ec_GFp_mont_add(v7, v75, v68, v59);
    goto LABEL_33;
  }

LABEL_32:
  ec_GFp_mont_dbl(v3, v54, &v40);
  ec_GFp_mont_add(v7, v55, v54, &v40);
  ec_GFp_mont_dbl(v7, v56, v54);
  ec_GFp_mont_add(v7, v57, v56, &v40);
  ec_GFp_mont_add(v7, v58, v56, v54);
  ec_GFp_mont_add(v7, v59, v56, v55);
  ec_GFp_mont_dbl(v7, v60, v56);
  ec_GFp_mont_add(v7, v61, v60, &v40);
  ec_GFp_mont_add(v7, v62, v60, v54);
  ec_GFp_mont_add(v7, v63, v60, v55);
  ec_GFp_mont_add(v7, v64, v60, v56);
  ec_GFp_mont_add(v7, v65, v60, v57);
  ec_GFp_mont_add(v7, v66, v60, v58);
  ec_GFp_mont_add(v7, v67, v60, v59);
  ec_GFp_mont_dbl(v7, v68, v60);
  ec_GFp_mont_add(v7, v69, v68, &v40);
  ec_GFp_mont_add(v7, v70, v68, v54);
  ec_GFp_mont_add(v7, v71, v68, v55);
  ec_GFp_mont_add(v7, v72, v68, v56);
  ec_GFp_mont_add(v7, v73, v68, v57);
  ec_GFp_mont_add(v7, v74, v68, v58);
  ec_GFp_mont_add(v7, v75, v68, v59);
LABEL_33:
  ec_GFp_mont_add(v7, &v76, v68, v60);
  ec_GFp_mont_add(v7, &v77, v68, v61);
  ec_GFp_mont_add(v7, &v78, v68, v62);
  ec_GFp_mont_add(v7, &v79, v68, v63);
  ec_GFp_mont_add(v7, &v80, v68, v64);
  ec_GFp_mont_add(v7, &v81, v68, v65);
  ec_GFp_mont_add(v7, &v82, v68, v66);
  ec_GFp_mont_add(v7, v83, v68, v67);
  v38 = *(*v7 + 8);
  if (v38)
  {
    return v38(v7, v6, &v40, 31);
  }

  ERR_put_error(15, 0, 66, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/ec.cc.inc", 544);
  return 0;
}

int8x16_t *ec_GFp_mont_mul_precomp(int8x16_t *result, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v15 = result;
  v16 = result[20].i32[2];
  if (v16 < 1)
  {
    if (!v16)
    {
LABEL_22:
      *(a2 + 208) = 0;
      *(a2 + 176) = 0u;
      *(a2 + 192) = 0u;
      *(a2 + 144) = 0u;
      *(a2 + 160) = 0u;
      *(a2 + 112) = 0u;
      *(a2 + 128) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      return result;
    }

    v17 = result[20].i64[0];
  }

  else
  {
    v17 = result[20].i64[0];
    while (!*(v17 - 8 + 8 * v16))
    {
      v18 = __OFSUB__(v16--, 1);
      if ((v16 < 0) ^ v18 | (v16 == 0))
      {
        goto LABEL_22;
      }
    }
  }

  v19 = v16 - 1;
  v20 = *(v17 + 8 * v19);
  v21 = v20 != 0;
  v22 = HIDWORD(v20) != 0;
  if (HIDWORD(v20))
  {
    v20 >>= 32;
  }

  v23 = v20 >> 16 != 0;
  if (v20 >> 16)
  {
    v20 >>= 16;
  }

  v24 = v20 > 0xFF;
  if (v20 > 0xFF)
  {
    v20 >>= 8;
  }

  v25 = v20 > 0xF;
  if (v20 > 0xF)
  {
    v20 >>= 4;
  }

  v26 = v20 > 3;
  if (v20 > 3)
  {
    v20 >>= 2;
  }

  v27 = v21 | (v19 << 6) | (32 * v22) | (16 * v23) | (8 * v24) | (4 * v25) | (2 * v26);
  if (v20 > 1)
  {
    ++v27;
  }

  v28 = v27 + 4;
  if (v28 < 5)
  {
    goto LABEL_22;
  }

  v35 = v28 - 5;
  v29 = v28 / 5;
  result = ec_GFp_mont_get_comb_window(result, v36, a3, a4, v28 / 5 - 1);
  v30 = v36[3];
  *(a2 + 32) = v36[2];
  *(a2 + 48) = v30;
  *(a2 + 64) = v37;
  v31 = v36[1];
  *a2 = v36[0];
  *(a2 + 16) = v31;
  *(a2 + 88) = v39;
  *(a2 + 104) = v40;
  *(a2 + 120) = v41;
  *(a2 + 136) = v42;
  *(a2 + 72) = v38;
  *(a2 + 208) = v47;
  v32 = v46;
  *(a2 + 176) = v45;
  *(a2 + 192) = v32;
  v33 = v44;
  *(a2 + 144) = v43;
  *(a2 + 160) = v33;
  if (a5)
  {
    ec_GFp_mont_get_comb_window(v15, v36, a5, a6, v29 - 1);
    result = ec_GFp_mont_add(v15, a2, a2, v36);
  }

  if (a7)
  {
    ec_GFp_mont_get_comb_window(v15, v36, a7, a8, v29 - 1);
    result = ec_GFp_mont_add(v15, a2, a2, v36);
  }

  if (v35 >= 5)
  {
    v34 = v29 - 2;
    if (a5)
    {
      if (a7)
      {
        do
        {
          ec_GFp_mont_dbl(v15, a2, a2);
          ec_GFp_mont_get_comb_window(v15, v36, a3, a4, v34);
          ec_GFp_mont_add(v15, a2, a2, v36);
          ec_GFp_mont_get_comb_window(v15, v36, a5, a6, v34);
          ec_GFp_mont_add(v15, a2, a2, v36);
          ec_GFp_mont_get_comb_window(v15, v36, a7, a8, v34);
          result = ec_GFp_mont_add(v15, a2, a2, v36);
          --v34;
        }

        while (v34 < v29);
      }

      else
      {
        do
        {
          ec_GFp_mont_dbl(v15, a2, a2);
          ec_GFp_mont_get_comb_window(v15, v36, a3, a4, v34);
          ec_GFp_mont_add(v15, a2, a2, v36);
          ec_GFp_mont_get_comb_window(v15, v36, a5, a6, v34);
          result = ec_GFp_mont_add(v15, a2, a2, v36);
          --v34;
        }

        while (v34 < v29);
      }
    }

    else if (a7)
    {
      do
      {
        ec_GFp_mont_dbl(v15, a2, a2);
        ec_GFp_mont_get_comb_window(v15, v36, a3, a4, v34);
        ec_GFp_mont_add(v15, a2, a2, v36);
        ec_GFp_mont_get_comb_window(v15, v36, a7, a8, v34);
        result = ec_GFp_mont_add(v15, a2, a2, v36);
        --v34;
      }

      while (v34 < v29);
    }

    else
    {
      do
      {
        ec_GFp_mont_dbl(v15, a2, a2);
        ec_GFp_mont_get_comb_window(v15, v36, a3, a4, v34);
        result = ec_GFp_mont_add(v15, a2, a2, v36);
        --v34;
      }

      while (v34 < v29);
    }
  }

  return result;
}

int8x16_t *ec_GFp_mont_get_comb_window(int8x16_t *result, unint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = result[16].i32[2];
  v6 = result[20].i32[2];
  if (v6 < 1)
  {
    if (!v6)
    {
LABEL_27:
      v18 = 0;
      v19 = a5;
      v20 = a5 >> 6;
      if (v20 < v5)
      {
        goto LABEL_22;
      }

      goto LABEL_28;
    }

    v7 = result[20].i64[0];
  }

  else
  {
    v7 = result[20].i64[0];
    while (!*(v7 - 8 + 8 * v6))
    {
      v8 = __OFSUB__(v6--, 1);
      if ((v6 < 0) ^ v8 | (v6 == 0))
      {
        goto LABEL_27;
      }
    }
  }

  v9 = v6 - 1;
  v10 = *(v7 + 8 * v9);
  v11 = v10 != 0;
  v12 = HIDWORD(v10) != 0;
  if (HIDWORD(v10))
  {
    v10 >>= 32;
  }

  v13 = v10 >> 16 != 0;
  if (v10 >> 16)
  {
    v10 >>= 16;
  }

  v14 = v10 > 0xFF;
  if (v10 > 0xFF)
  {
    v10 >>= 8;
  }

  v15 = v10 > 0xF;
  if (v10 > 0xF)
  {
    v10 >>= 4;
  }

  v16 = v10 > 3;
  if (v10 > 3)
  {
    v10 >>= 2;
  }

  v17 = v11 | (v9 << 6) | (32 * v12) | (16 * v13) | (8 * v14) | (4 * v15) | (2 * v16);
  if (v10 > 1)
  {
    ++v17;
  }

  v18 = (v17 + 4) / 5uLL;
  v19 = a5;
  v20 = a5 >> 6;
  if (v20 < v5)
  {
LABEL_22:
    v21 = (*(a4 + 8 * v20) >> v19) & 1;
    v22 = v18 + v19;
    v23 = (v18 + v19) >> 6;
    if (v23 >= v5)
    {
      goto LABEL_23;
    }

    goto LABEL_29;
  }

LABEL_28:
  LODWORD(v21) = 0;
  v22 = v18 + v19;
  v23 = (v18 + v19) >> 6;
  if (v23 >= v5)
  {
LABEL_23:
    v24 = 0;
    v25 = v19 + 2 * v18;
    v26 = v25 >> 6;
    if (v25 >> 6 >= v5)
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

LABEL_29:
  v24 = 2 * ((*(a4 + 8 * v23) >> v22) & 1);
  v25 = v19 + 2 * v18;
  v26 = v25 >> 6;
  if (v25 >> 6 >= v5)
  {
LABEL_24:
    v27 = 0;
    v28 = 3 * v18 + v19;
    v29 = v28 >> 6;
    if (v28 >> 6 >= v5)
    {
      goto LABEL_25;
    }

LABEL_31:
    v30 = 8 * ((*(a4 + 8 * v29) >> v28) & 1);
    v31 = v19 + 4 * v18;
    v32 = v31 >> 6;
    if (v31 >> 6 >= v5)
    {
      goto LABEL_26;
    }

LABEL_32:
    v33 = 16 * ((*(a4 + 8 * v32) >> v31) & 1);
    goto LABEL_33;
  }

LABEL_30:
  v27 = 4 * ((*(a4 + 8 * v26) >> v25) & 1);
  v28 = 3 * v18 + v19;
  v29 = v28 >> 6;
  if (v28 >> 6 < v5)
  {
    goto LABEL_31;
  }

LABEL_25:
  v30 = 0;
  v31 = v19 + 4 * v18;
  v32 = v31 >> 6;
  if (v31 >> 6 < v5)
  {
    goto LABEL_32;
  }

LABEL_26:
  v33 = 0;
LABEL_33:
  *(a2 + 208) = 0;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v34 = result[20].i32[2];
  if (!v34)
  {
    return result;
  }

  v35 = 0;
  v36 = v24 | v21 | v27 | v30 | v33;
  v37 = v34;
  v38 = a2 + 8 * v34;
  v39 = a3 + 8 * v34;
  v40 = v39 + 4392;
  v41 = v39 + 4320 > a2;
  v42 = a2 + 72 < v40;
  v43 = v38 > a3;
  v44 = v38 > a3 && v41;
  v45 = v34 & 0xFFFFFFFFFFFFFFFCLL;
  v46 = v43 && v42;
  v47 = (a3 + 16);
  v48 = (a3 + 88);
  do
  {
    v49 = ((v36 ^ ++v35) - 1) >> 63;
    v50 = ~v49;
    v51 = vdupq_n_s64(v49);
    v52 = vdupq_n_s64(~v49);
    if (v34 < 4 || v44)
    {
      v53 = 0;
LABEL_47:
      v58 = v34 - v53;
      v59 = 8 * v53;
      v60 = (a2 + 8 * v53);
      v61 = (a3 + v59);
      do
      {
        v62 = *v61++;
        *v60 = *v60 & v50 | v62 & v49;
        ++v60;
        --v58;
      }

      while (v58);
      goto LABEL_49;
    }

    v54 = v34 & 0xFFFFFFFFFFFFFFFCLL;
    v55 = (a2 + 16);
    v56 = v47;
    do
    {
      v57 = vorrq_s8(vandq_s8(*v55, v52), vandq_s8(*v56, v51));
      v55[-1] = vorrq_s8(vandq_s8(v55[-1], v52), vandq_s8(v56[-1], v51));
      *v55 = v57;
      v56 += 2;
      v55 += 2;
      v54 -= 4;
    }

    while (v54);
    v53 = v34 & 0xFFFFFFFFFFFFFFFCLL;
    if (v45 != v34)
    {
      goto LABEL_47;
    }

LABEL_49:
    if (v34 < 4 || v46)
    {
      v63 = 0;
LABEL_54:
      v68 = v34 - v63;
      v69 = 8 * v63 + 72;
      do
      {
        *(a2 + v69) = *(a2 + v69) & v50 | *(a3 + v69) & v49;
        v69 += 8;
        --v68;
      }

      while (v68);
      goto LABEL_41;
    }

    v64 = v34 & 0xFFFFFFFFFFFFFFFCLL;
    v65 = (a2 + 88);
    v66 = v48;
    do
    {
      v67 = vorrq_s8(vandq_s8(*v65, v52), vandq_s8(*v66, v51));
      v65[-1] = vorrq_s8(vandq_s8(v65[-1], v52), vandq_s8(v66[-1], v51));
      *v65 = v67;
      v66 += 2;
      v65 += 2;
      v64 -= 4;
    }

    while (v64);
    v63 = v34 & 0xFFFFFFFFFFFFFFFCLL;
    if (v45 != v34)
    {
      goto LABEL_54;
    }

LABEL_41:
    v47 += 9;
    a3 += 144;
    v48 += 9;
  }

  while (v35 != 31);
  v70 = (v36 - 1) >> 63;
  v71 = ~v70;
  if (v34 < 6 || a2 + 144 < &result[10].u64[v37] && &result[10] < a2 + v37 * 8 + 144)
  {
    v72 = 0;
    goto LABEL_61;
  }

  v78 = vdupq_n_s64(v70);
  v72 = v34 & 0xFFFFFFFFFFFFFFFCLL;
  v79 = vdupq_n_s64(v71);
  v80 = (a2 + 160);
  v81 = result + 11;
  v82 = v34 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v83 = vorrq_s8(vandq_s8(*v81, v79), vandq_s8(*v80, v78));
    v80[-1] = vorrq_s8(vandq_s8(v81[-1], v79), vandq_s8(v80[-1], v78));
    *v80 = v83;
    v80 += 2;
    v81 += 2;
    v82 -= 4;
  }

  while (v82);
  if (v72 != v34)
  {
LABEL_61:
    v73 = v34 - v72;
    v74 = 8 * v72;
    v75 = &result[10].i64[v72];
    v76 = (v74 + a2 + 144);
    do
    {
      v77 = *v75++;
      *v76 = v77 & v71 | *v76 & v70;
      ++v76;
      --v73;
    }

    while (v73);
  }

  return result;
}

uint64_t ec_GFp_mont_mul_public_batch(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v165 = v6;
  v167 = v4;
  v168 = v7;
  v9 = v8;
  v10 = v3;
  *&v205[1587] = *MEMORY[0x277D85DE8];
  v11 = *(v3 + 264);
  if (v11 < 1)
  {
    if (!v11)
    {
LABEL_112:
      v23 = 0;
      if (v5 < 4)
      {
        goto LABEL_22;
      }

LABEL_113:
      if (v5 < 0x7BE2F6CE27AEB4)
      {
        v153 = v5;
        v154 = 529 * v5;
        v155 = malloc_type_malloc(529 * v5 + 8, 0xB4E622C9uLL);
        if (v155)
        {
          v156 = v155;
          *v155 = v154;
          v157 = v155 + 1;
          bzero(v155 + 1, v154);
          if (v153 < 0x25ED097B425ED1)
          {
            v160 = v153;
            v161 = malloc_type_malloc((1728 * v153) | 8, 0xB4E622C9uLL);
            if (v161)
            {
              *v161 = 1728 * v153;
              v162 = v161 + 1;
              bzero(v161 + 1, 1728 * v153);
              v163 = v157;
              v164 = v162;
              v24 = v157;
              v169 = v162;
              v5 = v160;
              v25 = v23 + 1;
              if (v167)
              {
                goto LABEL_23;
              }

              goto LABEL_36;
            }

            v158 = 65;
            v159 = 217;
          }

          else
          {
            v158 = 69;
            v159 = 231;
          }

          ERR_put_error(14, 0, v158, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", v159);
          free(v156);
          return 0;
        }

        v146 = 65;
        v147 = 217;
      }

      else
      {
        v146 = 69;
        v147 = 231;
      }

      ERR_put_error(14, 0, v146, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", v147);
      return 0;
    }

    v12 = *(v3 + 256);
  }

  else
  {
    v12 = *(v3 + 256);
    while (!*(v12 - 8 + 8 * v11))
    {
      v13 = __OFSUB__(v11--, 1);
      if ((v11 < 0) ^ v13 | (v11 == 0))
      {
        goto LABEL_112;
      }
    }
  }

  v14 = v11 - 1;
  v15 = *(v12 + 8 * v14);
  v16 = v15 != 0;
  v17 = HIDWORD(v15) != 0;
  if (HIDWORD(v15))
  {
    v15 >>= 32;
  }

  v18 = v15 >> 16 != 0;
  if (v15 >> 16)
  {
    v15 >>= 16;
  }

  v19 = v15 > 0xFF;
  if (v15 > 0xFF)
  {
    v15 >>= 8;
  }

  v20 = v15 > 0xF;
  if (v15 > 0xF)
  {
    v15 >>= 4;
  }

  v21 = v15 > 3;
  if (v15 > 3)
  {
    v15 >>= 2;
  }

  v22 = v16 | (v14 << 6) | (32 * v17) | (16 * v18) | (8 * v19) | (4 * v20) | (2 * v21);
  if (v15 > 1)
  {
    ++v22;
  }

  v23 = v22;
  if (v5 >= 4)
  {
    goto LABEL_113;
  }

LABEL_22:
  v163 = 0;
  v164 = 0;
  v169 = &v204;
  v24 = v205;
  v25 = v23 + 1;
  if (v4)
  {
LABEL_23:
    v26 = v5;
    if (v23 != -1)
    {
      v27 = 0;
      v28 = *v167 & 0x1F;
      v29 = *(v10 + 264);
      do
      {
        while (1)
        {
          v30 = v28 - 32;
          v31 = v27 + 5;
          if (v27 + 5 >= v23)
          {
            v30 = v28 & 0xF;
          }

          if ((v28 & 0x10) == 0)
          {
            v30 = v28;
          }

          if (v28)
          {
            v28 -= v30;
          }

          else
          {
            LOBYTE(v30) = 0;
          }

          v203[v27 + 231] = v30;
          if (v31 >> 6 >= v29)
          {
            break;
          }

          v28 = 16 * ((*&v167[2 * (v31 >> 6)] >> v31) & 1) + (v28 >> 1);
          if (v25 == ++v27)
          {
            goto LABEL_35;
          }
        }

        v28 >>= 1;
        ++v27;
      }

      while (v25 != v27);
    }

LABEL_35:
    v32 = *(v10 + 64);
    v185[2] = *(v10 + 48);
    v185[3] = v32;
    v33 = *(v10 + 80);
    v34 = *(v10 + 32);
    v185[0] = *(v10 + 16);
    v185[1] = v34;
    v188 = *(v10 + 104);
    v189 = *(v10 + 120);
    v190 = *(v10 + 136);
    v35 = *(v10 + 152);
    v186 = v33;
    v191 = v35;
    v187 = *(v10 + 88);
    v196 = *(v10 + 224);
    v36 = *(v10 + 208);
    v194 = *(v10 + 192);
    v195 = v36;
    v37 = *(v10 + 176);
    v192 = *(v10 + 160);
    v193 = v37;
    ec_GFp_mont_dbl(v10, &v170, (v10 + 16));
    ec_GFp_mont_add(v10, v197, v185, &v170);
    ec_GFp_mont_add(v10, v198, v197, &v170);
    ec_GFp_mont_add(v10, v199, v198, &v170);
    ec_GFp_mont_add(v10, v200, v199, &v170);
    ec_GFp_mont_add(v10, v201, v200, &v170);
    ec_GFp_mont_add(v10, v202, v201, &v170);
    ec_GFp_mont_add(v10, v203, v202, &v170);
    v5 = v26;
  }

LABEL_36:
  v166 = v5;
  if (v5)
  {
    v38 = 0;
    v39 = v24;
    do
    {
      if (v23 != -1)
      {
        v51 = 0;
        v52 = (v165 + 72 * v38);
        v53 = *v52 & 0x1F;
        do
        {
          while (1)
          {
            v54 = v53 - 32;
            v55 = v51 + 5;
            if (v51 + 5 >= v23)
            {
              v54 = v53 & 0xF;
            }

            if ((v53 & 0x10) == 0)
            {
              v54 = v53;
            }

            if (v53)
            {
              v53 -= v54;
            }

            else
            {
              LOBYTE(v54) = 0;
            }

            v39[v51] = v54;
            if (v55 >> 6 >= *(v10 + 264))
            {
              break;
            }

            v53 = 16 * ((*&v52[2 * (v55 >> 6)] >> v55) & 1) + (v53 >> 1);
            if (v25 == ++v51)
            {
              goto LABEL_38;
            }
          }

          v53 >>= 1;
          ++v51;
        }

        while (v25 != v51);
      }

LABEL_38:
      v40 = &v169[1728 * v38];
      v41 = v168 + 216 * v38;
      *v40 = *v41;
      v42 = *(v41 + 16);
      v43 = *(v41 + 32);
      v44 = *(v41 + 48);
      *(v40 + 8) = *(v41 + 64);
      *(v40 + 2) = v43;
      *(v40 + 3) = v44;
      *(v40 + 1) = v42;
      v45 = *(v41 + 104);
      v46 = *(v41 + 120);
      v47 = *(v41 + 136);
      *(v40 + 88) = *(v41 + 88);
      *(v40 + 17) = v47;
      *(v40 + 120) = v46;
      *(v40 + 104) = v45;
      *(v40 + 72) = *(v41 + 72);
      v49 = *(v41 + 176);
      v48 = *(v41 + 192);
      v50 = *(v41 + 160);
      *(v40 + 26) = *(v41 + 208);
      *(v40 + 11) = v49;
      *(v40 + 12) = v48;
      *(v40 + 10) = v50;
      *(v40 + 9) = *(v41 + 144);
      ec_GFp_mont_dbl(v10, &v170, v41);
      ec_GFp_mont_add(v10, (v40 + 216), v40, &v170);
      ec_GFp_mont_add(v10, (v40 + 432), v40 + 27, &v170);
      ec_GFp_mont_add(v10, (v40 + 648), v40 + 54, &v170);
      ec_GFp_mont_add(v10, (v40 + 864), v40 + 81, &v170);
      ec_GFp_mont_add(v10, (v40 + 1080), v40 + 108, &v170);
      ec_GFp_mont_add(v10, (v40 + 1296), v40 + 135, &v170);
      ec_GFp_mont_add(v10, (v40 + 1512), v40 + 162, &v170);
      ++v38;
      v39 += 529;
    }

    while (v38 != v166);
  }

  if (v23 == -1)
  {
    goto LABEL_116;
  }

  v56 = 1;
  do
  {
    if (!v56)
    {
      ec_GFp_mont_dbl(v10, v9, v9);
      if (!v167)
      {
        goto LABEL_63;
      }

LABEL_59:
      v57 = v203[v23 + 231];
      if (!v203[v23 + 231])
      {
        goto LABEL_63;
      }

      if ((v57 & 0x80000000) == 0)
      {
        v58 = v185 + 216 * (v57 >> 1);
        v59 = *(v58 + 3);
        v172 = *(v58 + 2);
        v173 = v59;
        v174 = *(v58 + 8);
        v60 = *(v58 + 1);
        v170 = *v58;
        v171 = v60;
        v61 = *(v58 + 88);
        v62 = *(v58 + 120);
        v177 = *(v58 + 104);
        v178 = v62;
        v179 = *(v58 + 17);
        v175 = *(v58 + 72);
        v176 = v61;
        v184 = *(v58 + 26);
        v63 = *(v58 + 12);
        v182 = *(v58 + 11);
        v183 = v63;
        v64 = *(v58 + 10);
        v180 = *(v58 + 9);
        v181 = v64;
        if (v56)
        {
          goto LABEL_110;
        }

        goto LABEL_62;
      }

      v133 = v185 + 216 * (-v57 >> 1);
      v134 = *(v133 + 3);
      v172 = *(v133 + 2);
      v173 = v134;
      v174 = *(v133 + 8);
      v135 = *(v133 + 1);
      v170 = *v133;
      v171 = v135;
      v136 = *(v133 + 88);
      v137 = *(v133 + 120);
      v177 = *(v133 + 104);
      v178 = v137;
      v179 = *(v133 + 17);
      v175 = *(v133 + 72);
      v176 = v136;
      v184 = *(v133 + 26);
      v138 = *(v133 + 12);
      v182 = *(v133 + 11);
      v183 = v138;
      v139 = *(v133 + 10);
      v180 = *(v133 + 9);
      v181 = v139;
      ec_felem_neg(v10, &v175, &v175);
      if (!v56)
      {
LABEL_62:
        ec_GFp_mont_add(v10, v9, v9, &v170);
        goto LABEL_63;
      }

LABEL_110:
      v56 = 0;
      v140 = v173;
      *(v9 + 32) = v172;
      *(v9 + 48) = v140;
      v141 = v171;
      *v9 = v170;
      *(v9 + 16) = v141;
      v142 = v175;
      *(v9 + 88) = v176;
      v143 = v178;
      *(v9 + 104) = v177;
      *(v9 + 64) = v174;
      *(v9 + 136) = v179;
      *(v9 + 208) = v184;
      *(v9 + 120) = v143;
      *(v9 + 72) = v142;
      v144 = v183;
      *(v9 + 176) = v182;
      *(v9 + 192) = v144;
      v145 = v181;
      *(v9 + 144) = v180;
      *(v9 + 160) = v145;
      if (!v166)
      {
        goto LABEL_54;
      }

LABEL_64:
      v65 = 0;
      while (1)
      {
        v66 = v24[529 * v65 + v23];
        if (v24[529 * v65 + v23])
        {
          break;
        }

LABEL_66:
        if (++v65 == v166)
        {
          goto LABEL_54;
        }
      }

      v67 = &v169[1728 * v65];
      if ((v66 & 0x80000000) == 0)
      {
        v68 = &v67[216 * (v66 >> 1)];
        v170 = *v68;
        v69 = *(v68 + 1);
        v70 = *(v68 + 2);
        v71 = *(v68 + 3);
        v174 = *(v68 + 8);
        v172 = v70;
        v173 = v71;
        v171 = v69;
        v72 = *(v68 + 104);
        v73 = *(v68 + 120);
        v74 = *(v68 + 88);
        v179 = *(v68 + 17);
        v177 = v72;
        v178 = v73;
        v176 = v74;
        v175 = *(v68 + 72);
        v76 = *(v68 + 11);
        v75 = *(v68 + 12);
        v77 = *(v68 + 10);
        v184 = *(v68 + 26);
        v182 = v76;
        v183 = v75;
        v181 = v77;
        v180 = *(v68 + 9);
        goto LABEL_70;
      }

      v84 = &v67[216 * (-v66 >> 1)];
      v170 = *v84;
      v85 = *(v84 + 1);
      v86 = *(v84 + 2);
      v87 = *(v84 + 3);
      v174 = *(v84 + 8);
      v172 = v86;
      v173 = v87;
      v171 = v85;
      v88 = *(v84 + 104);
      v89 = *(v84 + 120);
      v90 = *(v84 + 88);
      v179 = *(v84 + 17);
      v177 = v88;
      v178 = v89;
      v176 = v90;
      v175 = *(v84 + 72);
      v92 = *(v84 + 11);
      v91 = *(v84 + 12);
      v93 = *(v84 + 10);
      v184 = *(v84 + 26);
      v182 = v92;
      v183 = v91;
      v181 = v93;
      v180 = *(v84 + 9);
      v94 = *(v10 + 328);
      if (v94 < 1)
      {
        v97 = 0;
        if (!v94)
        {
          goto LABEL_70;
        }

LABEL_85:
        v106 = *(v10 + 320);
        if (v94 >= 4)
        {
          v107 = 0;
          v108 = *(v10 + 328);
          v109 = &v175;
          do
          {
            v110 = v109->i64[1];
            v111 = *v106 - v109->i64[0];
            v112 = v111 >= v107;
            v113 = v111 - v107;
            v114 = !v112 || *v106 < v109->i64[0];
            v109->i64[0] = v113;
            v115 = v106[1];
            v112 = __CFSUB__(v115, v110, !v114);
            v109->i64[1] = v115 - (v110 + v114);
            v116 = v106[2];
            v117 = v109[1].i64[0];
            v118 = v109[1].i64[1];
            v119 = v112;
            v112 = __CFSUB__(v116, v117, v112);
            v109[1].i64[0] = v116 - (v117 + !v119);
            v120 = v106[3];
            v121 = v120 - (v118 + !v112);
            v107 = !__CFSUB__(v120, v118, v112);
            v109[1].i64[1] = v121;
            v106 += 4;
            v109 += 2;
            v108 -= 4;
          }

          while (v108 >= 4);
          if (!v108)
          {
LABEL_100:
            if (v94 >= 1)
            {
              if (v94 >= 4)
              {
                v126 = v94 & 0x7FFFFFFC;
                v127 = vdupq_n_s64(v97);
                v128 = v126;
                v129 = &v176;
                do
                {
                  v130 = vandq_s8(*v129, v127);
                  v129[-1] = vandq_s8(v129[-1], v127);
                  *v129 = v130;
                  v129 += 2;
                  v128 -= 4;
                }

                while (v128);
                if (v126 == v94)
                {
                  goto LABEL_70;
                }
              }

              else
              {
                v126 = 0;
              }

              v131 = v94 - v126;
              v132 = &v175.i64[v126];
              do
              {
                *v132++ &= v97;
                --v131;
              }

              while (v131);
            }

LABEL_70:
            if (v56)
            {
              v56 = 0;
              v78 = v173;
              *(v9 + 32) = v172;
              *(v9 + 48) = v78;
              v79 = v171;
              *v9 = v170;
              *(v9 + 16) = v79;
              v80 = v175;
              *(v9 + 88) = v176;
              v81 = v178;
              *(v9 + 104) = v177;
              *(v9 + 64) = v174;
              *(v9 + 136) = v179;
              *(v9 + 208) = v184;
              *(v9 + 120) = v81;
              *(v9 + 72) = v80;
              v82 = v183;
              *(v9 + 176) = v182;
              *(v9 + 192) = v82;
              v83 = v181;
              *(v9 + 144) = v180;
              *(v9 + 160) = v83;
            }

            else
            {
              ec_GFp_mont_add(v10, v9, v9, &v170);
            }

            goto LABEL_66;
          }
        }

        else
        {
          v107 = 0;
          v108 = *(v10 + 328);
          v109 = &v175;
        }

        do
        {
          v122 = *v106++;
          v123 = v122 - v109->i64[0];
          v124 = v122 < v109->i64[0];
          v112 = v123 >= v107;
          v125 = v123 - v107;
          v107 = !v112 || v124;
          v109->i64[0] = v125;
          v109 = (v109 + 8);
          --v108;
        }

        while (v108);
        goto LABEL_100;
      }

      if (v94 > 3)
      {
        v95 = v94 & 0x7FFFFFFC;
        v98 = 0uLL;
        v99 = v95;
        v100 = &v176;
        v101 = 0uLL;
        do
        {
          v98 = vorrq_s8(v100[-1], v98);
          v101 = vorrq_s8(*v100, v101);
          v100 += 2;
          v99 -= 4;
        }

        while (v99);
        v102 = vorrq_s8(v101, v98);
        v96 = vorr_s8(*v102.i8, *&vextq_s8(v102, v102, 8uLL));
        if (v95 == v94)
        {
          goto LABEL_82;
        }
      }

      else
      {
        v95 = 0;
        v96 = 0;
      }

      v103 = v94 - v95;
      v104 = &v175.i64[v95];
      do
      {
        v105 = *v104++;
        *&v96 |= v105;
        --v103;
      }

      while (v103);
LABEL_82:
      if (v96)
      {
        v97 = -1;
      }

      else
      {
        v97 = 0;
      }

      goto LABEL_85;
    }

    if (v167)
    {
      goto LABEL_59;
    }

LABEL_63:
    if (v166)
    {
      goto LABEL_64;
    }

LABEL_54:
    --v23;
  }

  while (v23 < v25);
  if (v56)
  {
LABEL_116:
    *(v9 + 208) = 0;
    *(v9 + 176) = 0u;
    *(v9 + 192) = 0u;
    *(v9 + 144) = 0u;
    *(v9 + 160) = 0u;
    *(v9 + 112) = 0u;
    *(v9 + 128) = 0u;
    *(v9 + 80) = 0u;
    *(v9 + 96) = 0u;
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *v9 = 0u;
  }

  if (v163)
  {
    v148 = *(v163 - 1);
    if (v148 != -8)
    {
      bzero(v163 - 8, v148 + 8);
    }

    free(v163 - 8);
  }

  if (v164)
  {
    v150 = *(v164 - 1);
    v149 = v164 - 8;
    v151 = v150 + 8;
    if (v150 != -8)
    {
      bzero(v149, v151);
    }

    free(v149);
  }

  return 1;
}

uint64_t BCM_sha224_final(_DWORD *a1, int32x2_t *a2)
{
  v4 = a2[13].u32[0];
  v5 = &a2[5];
  a2[5].i8[v4] = 0x80;
  v6 = v4 + 1;
  if (v4 >= 0x38)
  {
    if (v4 != 63)
    {
      bzero(v5 + v6, 63 - v4);
    }

    sha256_block_data_order(a2, v5, 1);
    v6 = 0;
    goto LABEL_6;
  }

  if (v4 != 55)
  {
LABEL_6:
    bzero(v5 + v6, 56 - v6);
  }

  a2[12] = vrev64_s32(vrev32_s8(a2[4]));
  sha256_block_data_order(a2, v5, 1);
  v5[16] = 0;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *a1 = bswap32(a2->i32[0]);
  a1[1] = bswap32(a2->u32[1]);
  a1[2] = bswap32(a2[1].u32[0]);
  a1[3] = bswap32(a2[1].u32[1]);
  a1[4] = bswap32(a2[2].u32[0]);
  a1[5] = bswap32(a2[2].u32[1]);
  a1[6] = bswap32(a2[3].u32[0]);
  return 0;
}

uint64_t BCM_sha256_update(unsigned int *a1, int8x16_t *__src, size_t __n)
{
  if (!__n)
  {
    return 0;
  }

  v3 = __n;
  v5 = *(a1 + 4) + 8 * __n;
  *(a1 + 4) = v5;
  v6 = a1[26];
  if (v6)
  {
    v7 = a1 + 10;
    if (__n <= 0x3F && v6 + __n < 0x40)
    {
      memcpy(v7 + v6, __src, __n);
      a1[26] += v3;
      return 0;
    }

    v9 = __src;
    v10 = 64 - v6;
    if (v6 != 64)
    {
      memcpy(v7 + v6, __src, 64 - v6);
    }

    sha256_block_data_order(a1, (a1 + 10), 1);
    v11 = v3 >= v10;
    v3 -= v10;
    if (!v11)
    {
      abort();
    }

    __src = (v9 + v10);
    a1[26] = 0;
    *(a1 + 18) = 0u;
    *(a1 + 22) = 0u;
    *v7 = 0u;
    *(a1 + 14) = 0u;
  }

  if (v3 >= 0x40)
  {
    v12 = __src;
    sha256_block_data_order(a1, __src, v3 >> 6);
    __src = (v12 + (v3 & 0xFFFFFFFFFFFFFFC0));
    v3 &= 0x3Fu;
  }

  if (!v3)
  {
    return 0;
  }

  a1[26] = v3;
  memcpy(a1 + 10, __src, v3);
  return 0;
}

uint64_t ecdsa_verify_fixed_no_self_test(unsigned __int8 *a1, unint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t *a5)
{
  if (!a3 || ((v5 = *a5, v6 = a5[1], *a5) ? (v7 = v6 == 0) : (v7 = 1), v7))
  {
    v11 = 101;
    v12 = 65;
LABEL_54:
    ERR_put_error(26, 0, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ecdsa/ecdsa.cc.inc", v12);
    return 0;
  }

  v8 = *(v5 + 264);
  if (v8 >= 1)
  {
    v9 = *(v5 + 256);
    while (!*(v9 - 8 + 8 * v8))
    {
      v10 = __OFSUB__(v8--, 1);
      if ((v8 < 0) ^ v10 | (v8 == 0))
      {
        goto LABEL_29;
      }
    }

LABEL_15:
    v13 = v8 - 1;
    v14 = *(v9 + 8 * v13);
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

    v22 = (v21 + 7) >> 3;
    if (a4 != 2 * v22)
    {
      goto LABEL_53;
    }

    goto LABEL_30;
  }

  if (v8)
  {
    v9 = *(v5 + 256);
    goto LABEL_15;
  }

LABEL_29:
  v22 = 0;
  if (a4)
  {
LABEL_53:
    v11 = 100;
    v12 = 76;
    goto LABEL_54;
  }

LABEL_30:
  if (!ec_scalar_from_bytes(*a5, &v57, a3, v22))
  {
    goto LABEL_53;
  }

  v26 = *(v5 + 264);
  if (v26 < 1)
  {
    goto LABEL_53;
  }

  if (v26 < 4)
  {
    v27 = 0;
    v28 = 0;
LABEL_37:
    v34 = v26 - v27;
    v35 = &v57.i64[v27];
    do
    {
      v36 = *v35++;
      *&v28 |= v36;
      --v34;
    }

    while (v34);
    goto LABEL_39;
  }

  v27 = v26 & 0x7FFFFFFC;
  v29 = &v58;
  v30 = 0uLL;
  v31 = v27;
  v32 = 0uLL;
  do
  {
    v30 = vorrq_s8(v29[-1], v30);
    v32 = vorrq_s8(*v29, v32);
    v29 += 2;
    v31 -= 4;
  }

  while (v31);
  v33 = vorrq_s8(v32, v30);
  v28 = vorr_s8(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
  if (v27 != v26)
  {
    goto LABEL_37;
  }

LABEL_39:
  if (!*&v28)
  {
    goto LABEL_53;
  }

  if (!ec_scalar_from_bytes(v5, &v55, &a3[v22], v22))
  {
    goto LABEL_53;
  }

  v37 = *(v5 + 264);
  if (v37 < 1)
  {
    goto LABEL_53;
  }

  if (v37 < 4)
  {
    v38 = 0;
    v39 = 0;
LABEL_47:
    v45 = v37 - v38;
    v46 = &v55.i64[v38];
    do
    {
      v47 = *v46++;
      *&v39 |= v47;
      --v45;
    }

    while (v45);
    goto LABEL_49;
  }

  v38 = v37 & 0x7FFFFFFC;
  v40 = &v56;
  v41 = 0uLL;
  v42 = v38;
  v43 = 0uLL;
  do
  {
    v41 = vorrq_s8(v40[-1], v41);
    v43 = vorrq_s8(*v40, v43);
    v40 += 2;
    v42 -= 4;
  }

  while (v42);
  v44 = vorrq_s8(v43, v41);
  v39 = vorr_s8(*v44.i8, *&vextq_s8(v44, v44, 8uLL));
  if (v38 != v37)
  {
    goto LABEL_47;
  }

LABEL_49:
  if (!*&v39)
  {
    goto LABEL_53;
  }

  if (!(*(*v5 + 144))(v5, v52, &v55))
  {
    v11 = 68;
    v12 = 82;
    goto LABEL_54;
  }

  digest_to_scalar(v5, v51, a1, a2);
  bn_mod_mul_montgomery_small(v54, v51, v52, *(v5 + 264), v5 + 232);
  bn_mod_mul_montgomery_small(v53, &v57, v52, *(v5 + 264), v5 + 232);
  v48 = *(*v5 + 56);
  if (v48)
  {
    v48(v5, v50, v54, v6 + 8, v53);
  }

  else if (!(*(*v5 + 64))(v5, v50, v54, v6 + 8, v53, 1))
  {
    v11 = 15;
    v12 = 97;
    goto LABEL_54;
  }

  if (!(*(*v5 + 152))(v5, v50, &v57))
  {
    v11 = 100;
    v12 = 102;
    goto LABEL_54;
  }

  return 1;
}